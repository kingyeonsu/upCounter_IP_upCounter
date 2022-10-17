//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
//Date        : Mon Oct 17 11:39:27 2022
//Host        : LAPTOP-F74GHAFM running 64-bit major release  (build 9200)
//Command     : generate_target upCounter_design.bd
//Design      : upCounter_design
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "upCounter_design,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=upCounter_design,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "upCounter_design.hwdef" *) 
module upCounter_design
   (i_clk,
    i_reset,
    i_value,
    o_fndData,
    o_fndDigit);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.I_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.I_CLK, ASSOCIATED_RESET i_reset, CLK_DOMAIN upCounter_design_i_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input i_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.I_RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.I_RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input i_reset;
  input [13:0]i_value;
  output [7:0]o_fndData;
  output [3:0]o_fndDigit;

  wire [7:0]FNDController_0_o_fndData;
  wire [3:0]FNDController_0_o_fndDigit;
  wire i_clk_0_1;
  wire i_reset_0_1;
  wire [13:0]i_value_0_1;

  assign i_clk_0_1 = i_clk;
  assign i_reset_0_1 = i_reset;
  assign i_value_0_1 = i_value[13:0];
  assign o_fndData[7:0] = FNDController_0_o_fndData;
  assign o_fndDigit[3:0] = FNDController_0_o_fndDigit;
  upCounter_design_FNDController_0_0 FNDController_0
       (.i_clk(i_clk_0_1),
        .i_reset(i_reset_0_1),
        .i_value(i_value_0_1),
        .o_fndData(FNDController_0_o_fndData),
        .o_fndDigit(FNDController_0_o_fndDigit));
endmodule
