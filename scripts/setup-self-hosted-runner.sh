#!/usr/bin/env bash
# Install slot 1 (fresh host), or add slot 2 while the primary service is stopped.
# Ubuntu 24.04/26.04 x86-64 with systemd.
# Read a short-lived repository registration token from stdin, never a PAT.
set +x
set -euo pipefail
umask 022

slot=${1:-1}
[[ $# -le 1 && ($slot == 1 || $slot == 2) ]] || {
    printf 'Usage: %s [1|2]\n' "$0" >&2
    exit 1
}
readonly slot
if [[ $slot == 1 ]]; then
    account=fastfft-runner
    runner_name=mini-ryzen-fastfft
    runner_labels=fastfft
else
    account=fastfft-runner-2
    runner_name=mini-ryzen-fastfft-2
    runner_labels=fastfft-light
fi
readonly account runner_name runner_labels
readonly runner_home=/var/lib/$account
readonly runner_dir=$runner_home/runner
readonly service=$account.service
readonly version=2.337.0
readonly sha256=70920811a4f8ad4328818682bca5c6469c1c942fab52448868071d0063816613
script_dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)
readonly script_dir

fail() { printf 'Error: %s\n' "$*" >&2; exit 1; }
[[ $EUID == 0 ]] || fail 'Run via sudo; see docs/self-hosted-runner.md.'
[[ $(uname -m) == x86_64 && -d /run/systemd/system ]] || fail 'Requires x86-64 and systemd.'
# shellcheck disable=SC1091
source /etc/os-release
[[ $ID == ubuntu && ($VERSION_ID == 24.04 || $VERSION_ID == 26.04) ]] || fail 'Supports Ubuntu 24.04 or 26.04.'
if getent passwd "$account" >/dev/null || getent group "$account" >/dev/null; then
    fail 'Account/group already exists. Do not overwrite an existing runner; inspect it first.'
fi
for path in "$runner_home" "/etc/systemd/system/$service"; do
    [[ ! -e $path && ! -L $path ]] || fail "Already exists: $path (fresh installation only)."
done
if [[ $slot == 1 ]]; then
    for path in /usr/local/lib/fastfft-runner /etc/systemd/system/fastfft-ci.slice \
        /etc/systemd/journald@fastfft-runner.conf; do
        [[ ! -e $path && ! -L $path ]] || fail "Already exists: $path (fresh installation only)."
    done
else
    getent passwd fastfft-runner >/dev/null || fail 'Install primary slot 1 first.'
    primary_home=/var/lib/fastfft-runner
    [[ -d $primary_home && ! -L $primary_home && -f $primary_home/runner/.runner ]] \
        || fail 'Primary runner is not configured.'
    [[ $(stat -c %u "$primary_home") == "$(id -u fastfft-runner)" ]] \
        || fail 'Unexpected owner of primary runner storage.'
    [[ $(systemctl show fastfft-runner.service --property=ActiveState --value) == inactive ]] \
        || fail 'Wait for CI to be idle, then stop fastfft-runner before adding slot 2.'
    if pgrep -u fastfft-runner -x Runner.Worker >/dev/null; then
        fail 'A primary runner job is still running. Do not install during an active job.'
    fi
    for path in /usr/local/lib/fastfft-runner /etc/systemd/system/fastfft-runner.service \
        /etc/systemd/journald@fastfft-runner.conf; do
        [[ -e $path && ! -L $path && $(stat -c %u "$path") == 0 ]] \
            || fail "Expected root-owned primary runner policy: $path"
        policy_mode=$(stat -c %a "$path")
        (( (8#$policy_mode & 0022) == 0 )) || fail "Runner policy is writable by others: $path"
    done
    if [[ -e /etc/systemd/system/fastfft-ci.slice || -L /etc/systemd/system/fastfft-ci.slice ]]; then
        [[ -f /etc/systemd/system/fastfft-ci.slice && ! -L /etc/systemd/system/fastfft-ci.slice && \
           $(stat -c %u /etc/systemd/system/fastfft-ci.slice) == 0 ]] \
            || fail 'Unexpected existing shared slice policy.'
    fi
    [[ ! -e /etc/systemd/system/fastfft-runner.service.before-parallel && \
       ! -L /etc/systemd/system/fastfft-runner.service.before-parallel ]] \
        || fail 'A previous parallel migration backup exists; inspect the partial installation.'
fi
[[ ! -t 0 ]] || fail 'Pipe a repository registration token into this script; do not paste a PAT.'
IFS= read -r registration_token || fail 'Could not read registration token.'
[[ -n $registration_token ]] || fail 'Empty registration token.'
free_kib=$(df -Pk /var/lib | awk 'NR == 2 {print $4}')
(( free_kib >= 16 * 1024 * 1024 )) || fail 'Need at least 16 GiB free before installation.'

staging=$(mktemp -d /tmp/fastfft-runner-install.XXXXXX)
trap 'unset registration_token; rm -rf -- "$staging"' EXIT
# Only public downloads go here. The new account may read, but not modify them.
chmod 755 "$staging"
apt-get update
apt-get install -y --no-install-recommends \
    ca-certificates curl git build-essential pkg-config libssl-dev libicu-dev \
    liblttng-ust1t64 libkrb5-3 zlib1g jq unzip xz-utils python3
# Root must not import Python modules from a caller- or runner-writable cwd.
# Parse before creating the account or executing any downloaded code, as well.
toolchain=$(/usr/bin/python3 -I -c 'import sys, tomllib; print(tomllib.load(open(sys.argv[1], "rb"))["toolchain"]["channel"])' \
    "$script_dir/../rust-toolchain.toml")
curl --proto '=https' --tlsv1.2 --fail --show-error --location --retry 3 \
    "https://github.com/actions/runner/releases/download/v${version}/actions-runner-linux-x64-${version}.tar.gz" \
    --output "$staging/runner.tar.gz"
printf '%s  %s\n' "$sha256" "$staging/runner.tar.gz" | sha256sum --check --strict
curl --proto '=https' --tlsv1.2 --fail --show-error --location --retry 3 \
    https://sh.rustup.rs --output "$staging/rustup-init.sh"

useradd --system --user-group --create-home --home-dir "$runner_home" \
    --shell /usr/sbin/nologin "$account"
chmod 700 "$runner_home"
install -d -o "$account" -g "$account" -m 700 "$runner_dir" "$runner_home/tmp"
cd "$runner_home"

as_runner() {
    runuser -u "$account" -- env -i \
        HOME="$runner_home" USER="$account" LOGNAME="$account" LANG=C.UTF-8 \
        CARGO_HOME="$runner_home/.cargo" RUSTUP_HOME="$runner_home/.rustup" \
        TMPDIR="$runner_home/tmp" \
        PATH="$runner_home/.cargo/bin:/usr/local/bin:/usr/bin:/bin" "$@"
}

# No downloaded script, runner binary, or CI tool is executed as root.
as_runner tar -xzf "$staging/runner.tar.gz" -C "$runner_dir"
as_runner sh "$staging/rustup-init.sh" -y --profile minimal --default-toolchain none --no-modify-path
as_runner rustup toolchain install "$toolchain" --profile minimal \
    --component rustfmt --component clippy --component rust-src
as_runner cp "$runner_dir/bin/runsvc.sh" "$runner_dir/runsvc.sh"
as_runner chmod 755 "$runner_dir/runsvc.sh"

# Keep policy/hooks root-owned, outside both the checkout and runner home.
if [[ $slot == 2 ]]; then
    [[ $(systemctl show fastfft-runner.service --property=ActiveState --value) == inactive ]] \
        || fail 'Primary service was restarted during installation; inspect the partial secondary state.'
fi
install -d -m 755 /usr/local/lib/fastfft-runner
install -m 644 "$script_dir/runner/cleanup.py" /usr/local/lib/fastfft-runner/cleanup.py
install -m 755 "$script_dir/runner/job-started.sh" "$script_dir/runner/job-completed.sh" /usr/local/lib/fastfft-runner/
if [[ $slot == 2 ]]; then
    # Keep the original service for rollback; never modify its registration.
    install -m 644 /etc/systemd/system/fastfft-runner.service \
        /etc/systemd/system/fastfft-runner.service.before-parallel
fi
install -m 644 "$script_dir/runner/fastfft-runner.service" /etc/systemd/system/fastfft-runner.service
if [[ $slot == 2 ]]; then
    install -m 644 "$script_dir/runner/fastfft-runner-2.service" /etc/systemd/system/fastfft-runner-2.service
fi
install -m 644 "$script_dir/runner/fastfft-ci.slice" /etc/systemd/system/fastfft-ci.slice
install -m 644 "$script_dir/runner/journald.conf" /etc/systemd/journald@fastfft-runner.conf

# Pass the temporary token through stdin, not command arguments, files, or the
# service environment. The runner consumes/masks ACTIONS_RUNNER_INPUT_TOKEN.
# The quoted script expands positional arguments in the unprivileged shell.
# shellcheck disable=SC2016
printf '%s\n' "$registration_token" | as_runner bash -c '
    IFS= read -r ACTIONS_RUNNER_INPUT_TOKEN
    export ACTIONS_RUNNER_INPUT_TOKEN
    cd "$1"
    exec ./config.sh --unattended --url https://github.com/inhesrom/fastfft-history \
        --name "$2" --labels "$3" --work _work
' bash "$runner_dir" "$runner_name" "$runner_labels"
unset registration_token
systemctl daemon-reload
systemctl enable --now fastfft-runner.service
if [[ $slot == 2 ]]; then
    systemctl enable --now fastfft-runner-2.service
fi
systemctl --no-pager status "$service"
printf '\nRunner installed. Verify it is online in GitHub before publishing the workflow change.\n'
