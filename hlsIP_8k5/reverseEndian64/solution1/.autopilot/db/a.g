#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/tarafdar/thesis/gitStuff/hlsIP_8k5/reverseEndian64/solution1/.autopilot/db/a.g.bc ${1+"$@"}
