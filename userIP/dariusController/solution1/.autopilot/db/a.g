#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/tarafdar/workDir/galapagos/userIP/dariusController/solution1/.autopilot/db/a.g.bc ${1+"$@"}
