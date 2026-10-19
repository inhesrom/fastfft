# fastfft self-hosted CI on mini-ryzen

> **Private archive only.** These runners serve the private
> `inhesrom/fastfft-history` repository. Never register them on the public
> `inhesrom/fastfft` repository: a fork pull request can edit the workflow and
> remove the `github.event.repository.private` guard, which would run untrusted
> code on this machine.

## Scope and trust

The private `inhesrom/fastfft-history` repository uses two repo-scoped Linux x86-64
runners on mini-ryzen. Each listener executes one job at a time, allowing one
heavy test build and one lighter check to run concurrently:

| Slot | Registration | Account / storage | Custom label | Jobs |
| --- | --- | --- | --- | --- |
| Primary | `mini-ryzen-fastfft` | `fastfft-runner`, `/var/lib/fastfft-runner` | `fastfft` | workspace tests, ISA tiers, SDE |
| Secondary | `mini-ryzen-fastfft-2` | `fastfft-runner-2`, `/var/lib/fastfft-runner-2` | `fastfft-light` | fmt, Clippy, MSRV, WASM, Miri, codegen, docs, deny |

Both also carry the standard `self-hosted`, `linux`, `x64` labels. The secondary
deliberately does not carry `fastfft`: that prevents overlapping large builds,
including jobs queued by older workflows. Publish the new workflow only after
the secondary runner is online. Feature branches run CI on `pull_request`;
`push` triggers CI only on `master`, avoiding duplicate feature-branch runs.

All x86 CI jobs run here; `aarch64` still uses `ubuntu-24.04-arm`.
**Hosted-runner billing must be restored
or a separate ARM runner added before the entire workflow can be green.**
Rerunning an old workflow run uses its old runner selection; the new workflow
must be published before jobs route here.

Only trusted repository writers should be able to trigger this runner. The
workflow guards local jobs against public-repo and fork-PR execution, gives
`GITHUB_TOKEN` read-only contents permission, and does not persist checkout
credentials. These are defense in depth, not protection against a writer who
can change the workflow. Do not use `pull_request_target` to check out fork code.
Remove/disable this runner before making the repo public or accepting untrusted
contributors. A dedicated account is **not** isolation equivalent to a VM:
trusted actions still have network access and access to runner credentials.

The services run as separate non-login accounts, with no sudo/Docker
group membership and no personal GitHub/SSH credentials. `ProtectHome` hides
personal home directories; `ProtectSystem` permits persistent writes only under
the respective account's storage directory. Each has its own checkout, Cargo
cache, Rustup toolchains, temporary files and credentials. Policy files are
root-owned and shared. CI checks out its own copy; it does not use any developer
worktree. CI uploads logs and the existing Rust
build caches to GitHub. It does not publish benchmark results.

`RestrictSUIDSGID` is intentionally not enabled: on this host its seccomp filter
returns `ENOSYS` for `openat2`, breaking GNU tar 1.35 when extracting nested
GitHub Action archives. `NoNewPrivileges` and the empty capability bounding set
remain enabled; setuid execution cannot elevate the service's privileges.

SDE jobs use `scripts/runner/setup_sde.py`, not the upstream setup action (which
invokes `sudo chmod -R 777`). The local installer downloads the same Linux x86-64
SDE 10.13.1 archive, verifies its pinned SHA-256 before extraction, rejects unsafe
archive paths/links, and exports `SDE_PATH` for the following test step. It runs
unprivileged without changing the service's security settings. The download is
removed after extraction, failures remove the partial installation, and the
extracted tool lives only in `RUNNER_TEMP`, which the runner clears after the job
or our startup cleanup clears after a crash. No sudo update or persistent SDE
cache is needed. Both AVX-512 matrix variants continue to use `sde64 -spr`.

## Install (administrator step)

Supported: Ubuntu 24.04/26.04 x86-64, systemd, at least 16 GiB initially free.
The bootstrap is fresh-install-only for each slot: it refuses an existing
account, state directory or slot service. Slot 1 installs a fresh host; slot 2
adds the secondary runner to an existing, stopped primary. Slot 2 preserves the
primary registration and saves its original service as
`/etc/systemd/system/fastfft-runner.service.before-parallel` before updating its
resource limits. It refuses an active primary service or worker process.

Review `scripts/setup-self-hosted-runner.sh` and `scripts/runner/`, then run from
this branch's worktree in an interactive shell with authenticated `gh`:

```bash
cd /path/to/fastfft-worktree
sudo -v && gh api --method POST \
  repos/inhesrom/fastfft-history/actions/runners/registration-token --jq .token \
  | sudo bash scripts/setup-self-hosted-runner.sh
```

The short-lived registration token is piped to the installer. It is not stored
in the repo, placed on the command line, or passed to the persistent service.
Do not substitute a personal access token. Do not use `sudo -S`, which would
consume the token as a password. Do not run this under shell tracing (`set -x`).

The installer installs apt prerequisites, verifies the pinned runner archive's
SHA-256, creates the dedicated account, installs Rust as that account, registers
the runner, installs the root-owned service/hooks, and enables startup on boot.
Downloaded code is never executed as root. Temporary bootstrap downloads are
removed on success or failure. Runner auto-updates remain enabled. If installation
fails after account creation, inspect the partially installed state instead of
blindly rerunning or deleting it; registration may already have succeeded.

Verify registration and service health:

```bash
gh api repos/inhesrom/fastfft-history/actions/runners \
  --jq '.runners[] | {name, status, busy, labels: [.labels[].name]}'
sudo systemctl status fastfft-runner
sudo journalctl --namespace=fastfft-runner -u fastfft-runner -n 50 --no-pager
```

For an existing single-runner installation, use the following command from the
worktree containing these changes. First check that the primary is idle:

```bash
gh api repos/inhesrom/fastfft-history/actions/runners \
  --jq '.runners[] | {name, status, busy}'
```

After the active job finishes, stop the primary and install slot 2:

```bash
sudo -v && sudo systemctl stop fastfft-runner.service && \
gh api --method POST \
  repos/inhesrom/fastfft-history/actions/runners/registration-token --jq .token \
  | sudo bash scripts/setup-self-hosted-runner.sh 2
```

Stopping an active service cancels its running job; use an idle maintenance
window. The installer starts both services with the shared slice in place.
If installation fails, inspect the partial secondary state; do not rerun the
fresh installer blindly. The primary can be restarted independently with
`sudo systemctl start fastfft-runner.service`.

Verify both runners are online and check the installed limits:

```bash
gh api repos/inhesrom/fastfft-history/actions/runners \
  --jq '.runners[] | {name, status, busy, labels: [.labels[].name]}'
systemctl show fastfft-ci.slice -p MemoryMax -p MemorySwapMax -p CPUQuotaPerSecUSec
systemctl show fastfft-runner.service fastfft-runner-2.service \
  -p Slice -p CPUQuotaPerSecUSec -p MemoryMax
```

Then publish the workflow branch and inspect a new CI run. Expect ARM to remain
billing-blocked until that separate issue is resolved. Installation and
end-to-end CI cannot be verified until this administrator step is performed.

## Storage policy

Cleanup is **limited to the invoking runner account's storage**, never `/home`, any
developer checkout, the system Cargo cache, or unrelated temporary files.

- **After each job**, a runner hook removes checkout contents (including `target`
  and `.git`), downloaded Actions and tool caches, Cargo registry/git caches,
  generic user caches, Rustup download/temp files, and abandoned `cargo-install*`
  build directories. Hooks run after post-actions, so existing GitHub cache saves
  finish first. The working directory itself and runner credentials remain.
- **Before each job**, stale checkout/build and Cargo files are removed again.
  Already-downloaded Actions are preserved: GitHub downloads them before invoking
  the start hook. The runner itself manages `_work/_temp` during job finalization.
- **Before service startup**, all old `_work`, dedicated `tmp`, and unfinished
  diagnostic upload pages/blocks are removed. This recovers from a killed runner
  or reboot. No timer deletes files underneath a running build.
- Keep at most **three installed Rust toolchains**, newest installation first
  (normally the repo pin, MSRV, nightly/Miri). Rustup can reinstall an evicted pin.
  Installed Cargo binaries, including cargo-deny, remain between jobs.
  Every Rust cache step explicitly sets `cache-bin: false`: the action's default
  post-step removes pre-existing regular files from `cargo/bin`, including the
  Rustup/cargo/rustc command shims. The `v1-rust-no-bin` cache prefix also avoids
  restoring older archives that included binaries.
- Diagnostic `.log` files are pruned to **seven days / roughly 100 MiB**. The newest
  listener and worker logs are protected while open; the runner rotates its logs.
  A separate journal namespace is capped at **64 MiB persistent / 16 MiB runtime**,
  with seven-day retention, without changing the machine's other journal limits.
- Cleanup has a **five-minute timeout**, refuses root execution and symlinked
  cleanup roots, and unlinks child symlinks without following them.
- The effective UID selects one of two fixed cleanup roots; `$HOME` and other
  environment variables cannot select a different account's directory. Neither
  account can read or modify the other's mode-700 storage. Concurrent hooks do
  not prune the other slot's caches, toolchains, checkout or logs.
- Startup and job admission fail when fewer than **8 GiB are free**. This is an
  admission guard, **not a hard disk quota**: a single unexpectedly large job can
  still exhaust free space. For a strict cap, use a separate quota-limited disk
  or VM. Existing GitHub-hosted cache storage/retention is unchanged.

After checkout, each job runs `scripts/runner/ensure-rust.sh` before cache restore
or Rust commands. Healthy installations are left untouched; missing command
shims are repaired with the official Rustup installer as the job's unprivileged
account, without changing existing toolchains or shell profiles. The Cargo bin
directory is added to subsequent steps' PATH. This repairs the earlier cache
cleanup failure without another administrator installation. Temporary bootstrap
downloads are removed on exit.

This favors bounded local storage over warm local builds; GitHub Rust caches can
still accelerate jobs. Inspect usage without touching personal builds:

```bash
df -h /var/lib/fastfft-runner
sudo du -sh /var/lib/fastfft-runner{,-2}/{runner,.cargo,.rustup,tmp}
```

Do not invoke cleanup manually while a job is active. To reclaim interrupted
state, wait for `busy: false`, then restart the service so its startup hook runs.
Keep the worktree until its branch is reviewed/merged; remove that worktree and
branch afterward as normal, not from a CI cleanup hook.

## Resource limits and maintenance

Each service allows four CPUs' worth of scheduling (`CPUQuota=400%`). This is a
quota, not CPU affinity: the scheduler can move work among CPUs. Both belong to
`fastfft-ci.slice`, capped at eight CPUs and **8 GiB RAM combined**, with no swap
allocation. The primary has an 8 GiB limit; the secondary has a 2 GiB limit.
Each memory high threshold matches its hard limit to avoid reclaim stalls
while builds still fit within the budget. The shared 8 GiB ceiling
still applies when the primary borrows idle capacity. The secondary's ceiling
keeps a lighter check from consuming the entire pool.

These limits cover runner processes, compilers, tests and their charged page
cache. Linux can kill a process if the hard limit is exceeded; route
unexpectedly large checks to the heavy slot
and investigate rather than raising the shared limit. Both use reduced CPU/I/O
priority, one Cargo compiler process per job and four test threads. These are
safeguards, not performance-test conditions.
Stop CI before collecting benchmark numbers.

```bash
# Wait for the GitHub runner to be idle before planned maintenance.
sudo systemctl stop fastfft-runner fastfft-runner-2
sudo systemctl start fastfft-runner fastfft-runner-2
```

After editing service/hooks, copy reviewed policy files into their installed
root-owned locations while both services are stopped, then `systemctl daemon-reload`
and start them. Do not rerun the fresh installer. To update the units from this
worktree (after confirming both runners are idle):

```bash
sudo systemctl stop fastfft-runner fastfft-runner-2 &&
sudo install -o root -g root -m 644 scripts/runner/fastfft-runner.service /etc/systemd/system/fastfft-runner.service &&
sudo install -o root -g root -m 644 scripts/runner/fastfft-runner-2.service /etc/systemd/system/fastfft-runner-2.service &&
sudo install -o root -g root -m 644 scripts/runner/fastfft-ci.slice /etc/systemd/system/fastfft-ci.slice &&
sudo systemctl daemon-reload &&
sudo systemctl start fastfft-runner fastfft-runner-2
```

Test cleanup and sandbox changes locally:

```bash
python3 -B -m unittest discover -s scripts/runner -v
```

The sandbox integration tests perform real nested tar extraction under the
unit's syscall settings and launch two temporary services to verify their real
cgroup quotas and shared memory ceiling. They need a systemd user manager and
skip under the non-login CI accounts. Run them on the developer host when changing the units;
passing unit-file syntax validation alone does not establish compatibility.

To roll back the second slot, wait for both runners to be idle, stop/disable
`fastfft-runner-2`, remove that registration in GitHub, and restore the old
workflow routing before deleting its storage. To restore the original primary
service, stop it and copy `fastfft-runner.service.before-parallel` back to
`fastfft-runner.service`, then reload systemd and restart it. Preserve shared
hooks: the updated cleanup remains compatible with the original primary account.

For decommissioning: disable/stop both services, remove their registrations through
repository **Settings → Actions → Runners**, then deliberately remove its
service/policy files and dedicated account/state after preserving any needed
logs. Never recursively clean `/var/lib` or developer directories. Do not delete
the only online runner until workflows have been moved to another runner.

References: [GitHub runner setup](https://docs.github.com/en/actions/how-tos/manage-runners/self-hosted-runners/add-runners),
[systemd service](https://docs.github.com/en/actions/how-tos/manage-runners/self-hosted-runners/configure-the-application),
[job hooks](https://docs.github.com/en/actions/how-tos/manage-runners/self-hosted-runners/run-scripts).
