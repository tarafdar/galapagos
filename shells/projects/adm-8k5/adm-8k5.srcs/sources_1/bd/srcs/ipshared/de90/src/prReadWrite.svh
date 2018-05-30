`ifndef PR_SVH
`define PR_SVH
package prPkg;
    typedef struct packed {
        enum logic {CTRL_WRITE=0, CTRL_READ} rdwrb;
        logic [3:0] rsvd;
        logic [26:0] size;
    } icapControl_t;
    typedef struct packed {
        logic [7:0]  cmdOpcode;
        logic [39:0] cmdAddress;
        logic [31:0] cmdSize;
    } cmd_t;
    typedef struct packed {
        //logic [3:0] dmxCache;
        //logic [3:0] dmXuser;
        logic [3:0] dmRsvd;
        logic [3:0] dmTag;
        logic [39:0] dmSaddr;
        logic dmDrr;
        logic dmEof;
        logic [5:0] dmDsa;
        logic dmType;
        logic [22:0] dmBtt;
    } dmCmd_t;

    typedef struct packed {
        //logic dmEop;
        //logic [22:0] dmBrc;
        logic dmOkay;
        logic dmSlverr;
        logic dmDecerr;
        logic dmInterr;
        logic [3:0] dmTag;
    } dmStatus_t;
endpackage: prPkg
`endif
