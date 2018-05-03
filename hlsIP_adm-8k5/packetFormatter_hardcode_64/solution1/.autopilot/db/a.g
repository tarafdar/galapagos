#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /nfs/ug/thesis/thesis0/pc/Quinn/galapagos/hlsIP_adm-8k5/packetFormatter_hardcode_64/solution1/.autopilot/db/a.g.bc ${1+"$@"}
