#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/tarafdar/workDir/galapagos/userIP/application_bridge/solution1/.autopilot/db/a.g.bc ${1+"$@"}
