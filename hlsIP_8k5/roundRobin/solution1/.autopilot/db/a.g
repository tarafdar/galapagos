#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/tarafdar/thesis/gitStuff/hlsIP_8k5/roundRobin/solution1/.autopilot/db/a.g.bc ${1+"$@"}
