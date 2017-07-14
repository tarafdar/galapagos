module SmartCamCtl_wrapper(
	input	aclk,  
    input	aresetn,

    input			lup_req_valid,    
    output			lup_req_ready,  //should be 96, also wrong in SmartCam
    input[97:0]  	lup_req_din,   

    output			lup_rsp_valid,   
    input			lup_rsp_ready,    
    output[15:0]	lup_rsp_dout,

    input			upd_req_valid,    
    output			upd_req_ready,    
    input [112:0]	upd_req_din,

    output			upd_rsp_valid,    
    input			upd_rsp_ready,    
    output [15:0]	upd_rsp_dout    //(1 + 1 + 14 + 96) - 1 = 111 
);




SmartCamCtl SmartCamCtl_inst
(
.clk(aclk),
.rst(~aresetn),
.led0(),
.led1(),
.cam_ready(),

.lup_req_valid(lup_req_valid),
.lup_req_ready(lup_req_ready),
.lup_req_din(lup_req_din),

.lup_rsp_valid(lup_rsp_valid),
.lup_rsp_ready(lup_rsp_ready),
.lup_rsp_dout(lup_rsp_dout),

.upd_req_valid(upd_req_valid),
.upd_req_ready(upd_req_ready),
.upd_req_din(upd_req_din),

.upd_rsp_valid(upd_rsp_valid),
.upd_rsp_ready(upd_rsp_ready),
.upd_rsp_dout(upd_rsp_dout),

.debug()
);	

endmodule


// wire        upd_req_TVALID;
// wire        upd_req_TREADY;
// wire[111:0] upd_req_TDATA; //(1 + 1 + 14 + 96) - 1 = 111
// wire        upd_rsp_TVALID;
// wire        upd_rsp_TREADY;
// wire[15:0]  upd_rsp_TDATA;

// wire        lup_req_TVALID;
// wire        lup_req_TREADY;
// wire[97:0]  lup_req_TDATA; //should be 96, also wrong in SmartCam
// wire        lup_rsp_TVALID;
// wire        lup_rsp_TREADY;
// wire[15:0]  lup_rsp_TDATA;