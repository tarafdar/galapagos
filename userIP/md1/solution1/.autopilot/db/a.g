#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/tarafdar/workDir/galapagos/userIP/md1/solution1/.autopilot/db/a.g.bc ${1+"$@"}
