#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /nfs/ug/thesis/thesis0/pc/Graham/galapagos_wip/hlsIP_adm-8k5/conv_proj/solution1/.autopilot/db/a.g.bc ${1+"$@"}
