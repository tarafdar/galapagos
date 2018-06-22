#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/tarafdar/workDir/galapagos/userIP/NFR/solution1/.autopilot/db/a.g.bc ${1+"$@"}
