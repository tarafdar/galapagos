#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/tarafdar/thesis/gitStuff/hlsIP_8k5/fireWall64_2/solution1/.autopilot/db/a.g.bc ${1+"$@"}