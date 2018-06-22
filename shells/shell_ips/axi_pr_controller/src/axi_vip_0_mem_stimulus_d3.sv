/***************************************************************************************************
* Description:
* Considering different user cases, Slave VIP has two agents: slv_agent and slv_mem_agent.
* slv_agent doesn't have memory model and user can build their own memory model and fill in write
* transaction and/or read transaction responses in their own way.slv_mem_agent has memory model
* which user can use it directly.
* This file contains example on how Slave VIP with memory model responds and memory model usage of
* backdoor access(read/write)
* For Slave VIP with memory model to work correctly,the following four things must be done
*    1. import two packages.(this information also shows at the xgui of the VIP)
*         import axi_vip_pkg::* 
*         import <component_name>_pkg::*;
*    2. delcare <component_name>_slv_mem_t agent
*    3. new agent (passing instance IF correctly)
*    4. start_slave
* As for ready generation, if user enviroment doesn't do anything, it will randomly generate ready
* siganl,if user wants to create his own ready signal, please refer task user_gen_wready 
***************************************************************************************************/


import axi_vip_pkg::*;
import axi_vip_slv_mem_0_pkg::*;

module axi_vip_0_mem_stimulus_d3(
  );
 
 /*************************************************************************************************
  * Declare <component_name>_slv_mem_t for slave mem agent
  * <component_name> can be easily found in vivado bd design: click on the instance, 
  * then click     axi_ready_gen                           wready_gen;
    wready_gen = agent.wr_driver.create_ready("wready");
    //wready_gen.set_ready_policy(XIL_AXI_READY_GEN_OSC);
    wready_gen.set_ready_policy(XIL_AXI_READY_GEN_NO_BACKPRESSURE);
    //wready_gen.set_low_time(1);
    //wready_gen.set_high_time(2);
    agent.wr_driver.send_wready(wready_gen);CONFIG under Properties window and Component_Name will be shown
  * more details please refer PG267 for more details
  *************************************************************************************************/
  axi_vip_slv_mem_0_slv_mem_t                          agent;
  
  /************************************************************************************************
  * Declare payload, address, data and strobe for back door memory write/read
  * xil_axi_ulong                                           mem_wr_addr;
  * xil_axi_ulong                                           mem_rd_addr;
  * bit[DATA_WIDTH-1:0]                                     mem_wr_data;
  * bit[(DATA_WIDTH/8)-1:0]                                 mem_wr_strb;
  * bit[DATA_WIDTH-1:0]                                     mem_rd_data;
  * bit[DATA_WIDTH-1:0]                                     mem_fill_payload;
  ***********************************************************************************************/

  xil_axi_ulong                                           mem_wr_addr;
  xil_axi_ulong                                           mem_rd_addr;
  bit[64-1:0]                              mem_wr_data;
  bit[(64/8)-1:0]                          mem_wr_strb;
  bit[64-1:0]                              mem_rd_data;
  bit[64-1:0]                              mem_fill_payload;
 
    integer bitFile;
  integer code;
  integer data;
  int i;
 
localparam MEMSIZE_BYTES = 16384;
  initial begin
  bitFile = $fopen("/home/madanie1/ssd/Documents/2017.4/sidewinder/pr_migration_assemble/readback_cmds_nocapture.le.bin", "rb");
  if(bitFile == 0)
      $finish;


  /************************************************************************************************
    * Before agent is newed, user has to run simulation with an empty testbench to find the 
    * hierarchy path of the AXI VIP's instance.Message like
    * "Xilinx AXI VIP Found at Path: my_ip_exdes_tb.DUT.ex_design.axi_vip_mst.inst" will be printed 
    * out. Pass this path to the new function. 
  ***********************************************************************************************/
    agent = new("slave vip mem agent",DUT.axi_vip_mem_inst.inst.IF);
  
    /***********************************************************************************************
    * set tag for agents for easy debug,if not set here, it will be hard to tell which driver is filing 
    * if multiple agents are called in one testbench
    ***********************************************************************************************/
    agent.set_agent_tag("My Slave VIP");

    /***********************************************************************************************
    * set verbosity of agent - default is no print out 
    * verbosity level which specifies how much debug information to produce
    *    0       - No information will be printed out.
    *   400      - All information will be printed out
    ***********************************************************************************************/

    agent.set_verbosity(0);  
    agent.start_slave();    // agent starts to run

    /***********************************************************************************************
    * Backdoor memory tasks
    * 1.fill fixed default value to memory 
    *    user can choose task set_mem_default_value_fixed or set_mem_default_value_rand
    *    in this testcase the former is being used
    * 2. do a backdoor memory write
    * 3. do a backdoor memory read
    ***********************************************************************************************/
    mem_fill_payload = 1;
    set_mem_default_value_fixed(mem_fill_payload); // Call task to do fill in memory with default fixed value

    //for(int i = 0; i < MEMSIZE_BYTES; i+=4) begin
        //mem_wr_data = 'hDEAD0000 + i;
        //mem_wr_addr= 'h80000000 + i;
        //mem_wr_strb = 'b1111;
        //backdoor_mem_write(mem_wr_addr, mem_wr_data, mem_wr_strb); //Call task to do back doore memory wirte
    //end

      code = $fread(data, bitFile);
    for(int i = 0; code != 0; i+=8) begin
        mem_wr_data[31:0] = data;
        code = $fread(data, bitFile);
        mem_wr_data[63:32] = data;
        mem_wr_addr= 'h80000000 + i;
        mem_wr_strb = 'b11111111;
        backdoor_mem_write(mem_wr_addr, mem_wr_data, mem_wr_strb); //Call task to do back doore memory wirte
        code = $fread(data, bitFile);
    end
      $fclose(bitFile);
    for(int i = 0; i < MEMSIZE_BYTES; i+=8) begin
        mem_wr_data = {32'hBA5E0000 + i, 32'hBA5E0000 + i-4};
        mem_wr_addr= 'h81000000 + i;
        mem_wr_strb = 'b11111111;
        backdoor_mem_write(mem_wr_addr, mem_wr_data, mem_wr_strb); //Call task to do back doore memory wirte
    end
    for(int i = 0; i < MEMSIZE_BYTES; i+=8) begin
        mem_wr_data = {32'hBEEF0000 + i, 32'hBEEF0000 + i-4};
        mem_wr_addr= 'h82000000 + i;
        mem_wr_strb = 'b1111;
        backdoor_mem_write(mem_wr_addr, mem_wr_data, mem_wr_strb); //Call task to do back doore memory wirte
    end
    mem_rd_addr =0;
    backdoor_mem_read(mem_rd_addr, mem_rd_data);   // Call task to do back door memory read
    user_gen_wready();     // Call task to generate wready 
  end

  /*************************************************************************************************
  * Task user_gen_wready shows how slave VIP agent generates one customerized wready signal. 
  * declare axi_ready_gen  wready_gen
  * call create_ready from agent's write driver to create a new class of axi_ready_gen 
  * set the poicy of ready generation in this example, it select XIL_AXI_READY_GEN_OSC 
  * set low time 
  * set high time
  * agent's write driver send_wready out
  * ready generation policy are listed below:
  *  XIL_AXI_READY_GEN_NO_BACKPRESSURE     - Ready stays asserted and will not change. The driver
                                             will still check for policy changes.
  *   XIL_AXI_READY_GEN_SINGLE             - Ready stays 0 for low_time clock cycles and then
                                             dirves 1 until one ready/valid handshake occurs,
                                             the policy repeats until the channel is given
                                             different policy.
  *   XIL_AXI_READY_GEN_EVENTS             - Ready stays 0 for low_time clock cycles and then
                                             dirves 1 until event_count ready/valid handshakes
                                             occur,the policy repeats until the channel is given
                                             different policy.
  *   XIL_AXI_READY_GEN_OSC                - Ready stays 0 for low_time and then goes to 1 and      
                                             stays 1 for high_time,the policy repeats until the
                                             channel is given different policy.
  *   XIL_AXI_READY_GEN_RANDOM             - This policy generate random ready policy and uses
                                             min/max pair of low_time, high_time and event_count to
                                             generate low_time, high_time and event_count.
  *   XIL_AXI_READY_GEN_AFTER_VALID_SINGLE - This policy is active when VALID is detected to be
                                             asserted, Ready stays 0 for low_time clock cycles and
                                             then dirves 1 until one ready/valid handshake occurs,
                                             the policy repeats until the channel is given
                                             different policy.
  *   XIL_AXI_READY_GEN_AFTER_VALID_EVENTS - This policy is active when VALID is detected to be
                                             asserted, Ready stays 0 for low_time clock cycles and
                                             then dirves 1 until event_count ready/valid handshake
                                             occurs,the policy repeats until the channel is given
                                             different policy.
  *   XIL_AXI_READY_GEN_AFTER_VALID_OSC    - This policy is active when VALID is detected to be
                                             asserted, Ready stays 0 for low_time and then goes to
                                             1 and  stays 1 for high_time,the policy repeats until
                                             the channel is given different policy.
  *************************************************************************************************/
  task user_gen_wready();
    axi_ready_gen                           wready_gen;
  wready_gen = agent.wr_driver.create_ready("wready");
  //wready_gen.set_ready_policy(XIL_AXI_READY_GEN_OSC);
  wready_gen.set_ready_policy(XIL_AXI_READY_GEN_NO_BACKPRESSURE);
  //wready_gen.set_low_time(1);
  //wready_gen.set_high_time(2);
  agent.wr_driver.send_wready(wready_gen);
  endtask

   
  /*************************************************************************************************
  *  Task set_mem_default_value_fixed is to first fill in memory with policy
  *   XIL_AXI_MEMORY_FILL_FIXED, then it will fill in default memory value with
  *   input bit[DATA_WIDTH-1:0] fill_payload
  *   Note: user has to make sure that fill_payload is DATA_WIDTH wide bit to match
  *   memory model width. 
  *************************************************************************************************/
  task set_mem_default_value_fixed(input bit [64-1:0] fill_payload);
    agent.mem_model.set_memory_fill_policy(XIL_AXI_MEMORY_FILL_FIXED);
    agent.mem_model.set_default_memory_value(fill_payload);
  endtask

  /*************************************************************************************************
  * Task set_mem_default_value_rand is to fill in memory with policy
  * XIL_AXI_MEMORY_FILL_RADNOM, default memory value will be randomized generated
  * when the address is being accessed 
  *************************************************************************************************/
  task set_mem_default_value_rand();
    agent.mem_model.set_memory_fill_policy(XIL_AXI_MEMORY_FILL_RANDOM);
  endtask

  /*************************************************************************************************
  * Task backdoor_mem_write shows how to write to some address of memory with data and strobe 
  * information.
  * User has to make sure that the inputs to this task has to follow below rules to match
  * memory width, also user has to make sure that strobe bits can not be asserted on if lower 
  * than the address offset.
  * Address offset calculation is: address offset = address &((1 << (log2(DATA_WIDTH/8)) -1))
  *  input xil_axi_ulong                         addr, 
  *  input bit [DATA_WIDTH-1:0]                  wr_data
  *  input bit [(DATA_WIDTH/8)-1:0]              wr_strb 
  *************************************************************************************************/
  task backdoor_mem_write(
    input xil_axi_ulong                         addr, 
    input bit [64-1:0]           wr_data,
    input bit [(64/8)-1:0]       wr_strb ={(64/8){1'b1}}
  );
    agent.mem_model.backdoor_memory_write(addr, wr_data, wr_strb);

  endtask

  /*************************************************************************************************
  * Task backdoor_mem_read shows how user can do backdoor read data from memory model
  * it has one input which is backdoor memory read address and one output which is read out data
  * User has to note to declare memory read address and data like below
  * input xil_axi_ulong mem_rd_addr,
  * output bit [DATA_WIDTH-1:0] mem_rd_data 
  *************************************************************************************************/
  task backdoor_mem_read(
    input xil_axi_ulong mem_rd_addr,
    output bit [64-1:0] mem_rd_data
   );
    mem_rd_data= agent.mem_model.backdoor_memory_read(mem_rd_addr);

  endtask
endmodule
