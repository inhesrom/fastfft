#!/usr/bin/env bash
# Prepare, check and restore a Linux machine for fastfft arena benchmarks.
#
#   scripts/bench-env.sh setup   [--no-boost] [--core N]
#   scripts/bench-env.sh check   [--core N]
#   scripts/bench-env.sh restore
#
# `setup` needs root for sysfs writes (it uses sudo). `check` must pass before
# an official arena run; otherwise run the arena with --allow-dirty-env and the
# results are marked unofficial. `restore` undoes what `setup` changed.
set -euo pipefail

CORE=2
NO_BOOST=0
CMD=${1:-}
shift || true
while [[ $# -gt 0 ]]; do
  case "$1" in
    --core) CORE=$2; shift 2 ;;
    --no-boost) NO_BOOST=1; shift ;;
    *) echo "unknown option $1" >&2; exit 2 ;;
  esac
done

STATE_DIR=${XDG_STATE_HOME:-$HOME/.local/state}
STATE=$STATE_DIR/fastfft-bench-env.saved
CPUFREQ=/sys/devices/system/cpu/cpu$CORE/cpufreq
BOOST=/sys/devices/system/cpu/cpufreq/boost

read_or() { cat "$1" 2>/dev/null || echo "$2"; }

ac_state() {
  local seen=0
  for d in /sys/class/power_supply/*; do
    [[ -e "$d/type" ]] || continue
    if [[ $(cat "$d/type") == Mains ]]; then
      seen=1
      [[ $(read_or "$d/online" 0) == 1 ]] && { echo on; return; }
    fi
  done
  [[ $seen == 1 ]] && echo battery || echo unknown
}

sibling() { read_or /sys/devices/system/cpu/cpu$CORE/topology/thread_siblings_list "?"; }

# Busy fraction of one CPU over one second, from /proc/stat.
cpu_busy() {
  local c=$1 a b
  a=($(grep "^cpu$c " /proc/stat))
  sleep 1
  b=($(grep "^cpu$c " /proc/stat))
  local idle=$(( (b[4]+b[5]) - (a[4]+a[5]) ))
  local total=0 i
  for i in 1 2 3 4 5 6 7 8; do total=$(( total + b[i] - a[i] )); done
  (( total > 0 )) || { echo 0; return; }
  echo $(( 100 * (total - idle) / total ))
}

sysfs_write() { # path value
  if [[ -w "$1" ]]; then echo "$2" > "$1"; else echo "$2" | sudo tee "$1" > /dev/null; fi
}

case "$CMD" in
  setup)
    [[ $(ac_state) == battery ]] && { echo "error: on battery power; plug in AC" >&2; exit 1; }
    mkdir -p "$STATE_DIR"
    {
      echo "boost=$(read_or $BOOST '')"
      for g in /sys/devices/system/cpu/cpu[0-9]*/cpufreq/scaling_governor; do echo "gov $g $(cat "$g")"; done
      for e in /sys/devices/system/cpu/cpu[0-9]*/cpufreq/energy_performance_preference; do
        [[ -e $e ]] && echo "epp $e $(cat "$e")"
      done
      command -v powerprofilesctl > /dev/null && echo "ppd=$(powerprofilesctl get)"
    } > "$STATE"
    for g in /sys/devices/system/cpu/cpu[0-9]*/cpufreq/scaling_governor; do sysfs_write "$g" performance; done
    for e in /sys/devices/system/cpu/cpu[0-9]*/cpufreq/energy_performance_preference; do
      [[ -e $e ]] && sysfs_write "$e" performance || true
    done
    command -v powerprofilesctl > /dev/null && powerprofilesctl set performance || true
    if [[ $NO_BOOST == 1 && -e $BOOST ]]; then sysfs_write $BOOST 0; fi
    echo "bench-env: governor=performance epp=performance boost=$(read_or $BOOST n/a) (saved state in $STATE)"
    echo "bench-env: pin benchmarks to cpu$CORE; keep its SMT siblings ($(sibling)) idle"
    ;;
  check)
    ok=1
    gov=$(read_or $CPUFREQ/scaling_governor unknown)
    epp=$(read_or $CPUFREQ/energy_performance_preference n/a)
    ac=$(ac_state)
    load=$(cut -d' ' -f1 /proc/loadavg)
    echo "cpu$CORE: governor=$gov epp=$epp driver=$(read_or $CPUFREQ/scaling_driver ?) boost=$(read_or $BOOST n/a) siblings=$(sibling)"
    echo "power: $ac   load(1m): $load   smt: $(read_or /sys/devices/system/cpu/smt/active ?)"
    [[ $gov == performance ]] || { echo "FAIL: governor is $gov (want performance)"; ok=0; }
    [[ $epp == performance || $epp == n/a ]] || { echo "FAIL: energy_performance_preference is $epp"; ok=0; }
    [[ $ac != battery ]] || { echo "FAIL: on battery"; ok=0; }
    awk "BEGIN{exit !($load > 2.0)}" && { echo "FAIL: load average $load > 2.0"; ok=0; }
    for s in $(sibling | tr ',' ' '); do
      [[ $s == "$CORE" ]] && continue
      [[ $s =~ ^[0-9]+$ ]] || continue
      busy=$(cpu_busy "$s")
      (( busy <= 5 )) || { echo "FAIL: SMT sibling cpu$s is ${busy}% busy"; ok=0; }
    done
    busy=$(cpu_busy "$CORE")
    (( busy <= 5 )) || { echo "FAIL: cpu$CORE is ${busy}% busy"; ok=0; }
    if [[ $ok == 1 ]]; then echo "bench-env: OK"; else echo "bench-env: NOT READY"; exit 1; fi
    ;;
  restore)
    [[ -f $STATE ]] || { echo "nothing to restore ($STATE missing)"; exit 0; }
    while read -r kind path val; do
      case "$kind" in
        gov|epp) [[ -e $path ]] && sysfs_write "$path" "$val" || true ;;
      esac
    done < <(grep -E '^(gov|epp) ' "$STATE")
    b=$(grep '^boost=' "$STATE" | cut -d= -f2)
    [[ -n $b && -e $BOOST ]] && sysfs_write $BOOST "$b"
    p=$(grep '^ppd=' "$STATE" | cut -d= -f2 || true)
    [[ -n ${p:-} ]] && command -v powerprofilesctl > /dev/null && powerprofilesctl set "$p" || true
    rm -f "$STATE"
    echo "bench-env: restored"
    ;;
  *)
    sed -n '2,10p' "$0"
    exit 2
    ;;
esac
