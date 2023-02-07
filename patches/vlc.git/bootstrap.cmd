extproc sh

d=$(dirname "$0" | tr '\\' /)

n=bootstrap
test -f "$d/$n." || { echo "\`$d/$n' not found !!!"; exit 1; }

opts=""
"$d/$n" $opts "$@" 2>&1 | tee "$n.log"
