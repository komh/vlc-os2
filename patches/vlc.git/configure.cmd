extproc sh

d=$(dirname "$0" | tr '\\' /)

n=extras/package/os2/configure.sh
test -f "$d/$n." || { echo "\`$d/$n' not found !!!"; exit 1; }

opts="
    --enable-debug
    LIVE555_PREFIX=/usr/local/lib/live
    --disable-skins2
#

"$d/$n" $opts "$@" 2>&1 | tee "$n.log"
