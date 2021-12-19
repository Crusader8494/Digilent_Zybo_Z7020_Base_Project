// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sat May 22 22:01:10 2021
// Host        : DESKTOP-QSJNSC0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               G:/Xilinx/Projects/Desktop/AXI_4_Lite_Slave/AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ip/Zynq_Design_Local_Bus_Register_B_0_0/Zynq_Design_Local_Bus_Register_B_0_0_stub.v
// Design      : Zynq_Design_Local_Bus_Register_B_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "Local_Bus_Register_Block,Vivado 2019.1" *)
module Zynq_Design_Local_Bus_Register_B_0_0(s_axi_aclk, s_axi_aresentn, lbus_in_data, 
  lbus_in_address, lbus_in_write_strobe, lbus_out_data, lbus_out_complete, 
  lbus_out_addr_OOR, RW_reg_1, RW_reg_2, RW_reg_3, RW_reg_4, RW_reg_5, RW_reg_6, RW_reg_7, 
  RW_reg_8, RW_reg_9, RW_reg_10, RW_reg_11, RW_reg_12, RW_reg_13, RW_reg_14, RW_reg_15, RW_reg_16, 
  RW_reg_17, RW_reg_18, RW_reg_19, RW_reg_20, RW_reg_21, RW_reg_22, RW_reg_23, RW_reg_24, 
  RW_reg_25, RW_reg_26, RW_reg_27, RW_reg_28, RW_reg_29, RW_reg_30, RW_reg_31, RW_reg_32, RO_reg_1, 
  RO_reg_2, RO_reg_3, RO_reg_4, RO_reg_5, RO_reg_6, RO_reg_7, RO_reg_8, RO_reg_9, RO_reg_10, 
  RO_reg_11, RO_reg_12, RO_reg_13, RO_reg_14, RO_reg_15, RO_reg_16, RO_reg_17, RO_reg_18, 
  RO_reg_19, RO_reg_20, RO_reg_21, RO_reg_22, RO_reg_23, RO_reg_24, RO_reg_25, RO_reg_26, 
  RO_reg_27, RO_reg_28, RO_reg_29, RO_reg_30, RO_reg_31, RO_reg_32)
/* synthesis syn_black_box black_box_pad_pin="s_axi_aclk,s_axi_aresentn,lbus_in_data[31:0],lbus_in_address[31:0],lbus_in_write_strobe,lbus_out_data[31:0],lbus_out_complete,lbus_out_addr_OOR,RW_reg_1[31:0],RW_reg_2[31:0],RW_reg_3[31:0],RW_reg_4[31:0],RW_reg_5[31:0],RW_reg_6[31:0],RW_reg_7[31:0],RW_reg_8[31:0],RW_reg_9[31:0],RW_reg_10[31:0],RW_reg_11[31:0],RW_reg_12[31:0],RW_reg_13[31:0],RW_reg_14[31:0],RW_reg_15[31:0],RW_reg_16[31:0],RW_reg_17[31:0],RW_reg_18[31:0],RW_reg_19[31:0],RW_reg_20[31:0],RW_reg_21[31:0],RW_reg_22[31:0],RW_reg_23[31:0],RW_reg_24[31:0],RW_reg_25[31:0],RW_reg_26[31:0],RW_reg_27[31:0],RW_reg_28[31:0],RW_reg_29[31:0],RW_reg_30[31:0],RW_reg_31[31:0],RW_reg_32[31:0],RO_reg_1[31:0],RO_reg_2[31:0],RO_reg_3[31:0],RO_reg_4[31:0],RO_reg_5[31:0],RO_reg_6[31:0],RO_reg_7[31:0],RO_reg_8[31:0],RO_reg_9[31:0],RO_reg_10[31:0],RO_reg_11[31:0],RO_reg_12[31:0],RO_reg_13[31:0],RO_reg_14[31:0],RO_reg_15[31:0],RO_reg_16[31:0],RO_reg_17[31:0],RO_reg_18[31:0],RO_reg_19[31:0],RO_reg_20[31:0],RO_reg_21[31:0],RO_reg_22[31:0],RO_reg_23[31:0],RO_reg_24[31:0],RO_reg_25[31:0],RO_reg_26[31:0],RO_reg_27[31:0],RO_reg_28[31:0],RO_reg_29[31:0],RO_reg_30[31:0],RO_reg_31[31:0],RO_reg_32[31:0]" */;
  input s_axi_aclk;
  input s_axi_aresentn;
  input [31:0]lbus_in_data;
  input [31:0]lbus_in_address;
  input lbus_in_write_strobe;
  output [31:0]lbus_out_data;
  output lbus_out_complete;
  output lbus_out_addr_OOR;
  output [31:0]RW_reg_1;
  output [31:0]RW_reg_2;
  output [31:0]RW_reg_3;
  output [31:0]RW_reg_4;
  output [31:0]RW_reg_5;
  output [31:0]RW_reg_6;
  output [31:0]RW_reg_7;
  output [31:0]RW_reg_8;
  output [31:0]RW_reg_9;
  output [31:0]RW_reg_10;
  output [31:0]RW_reg_11;
  output [31:0]RW_reg_12;
  output [31:0]RW_reg_13;
  output [31:0]RW_reg_14;
  output [31:0]RW_reg_15;
  output [31:0]RW_reg_16;
  output [31:0]RW_reg_17;
  output [31:0]RW_reg_18;
  output [31:0]RW_reg_19;
  output [31:0]RW_reg_20;
  output [31:0]RW_reg_21;
  output [31:0]RW_reg_22;
  output [31:0]RW_reg_23;
  output [31:0]RW_reg_24;
  output [31:0]RW_reg_25;
  output [31:0]RW_reg_26;
  output [31:0]RW_reg_27;
  output [31:0]RW_reg_28;
  output [31:0]RW_reg_29;
  output [31:0]RW_reg_30;
  output [31:0]RW_reg_31;
  output [31:0]RW_reg_32;
  input [31:0]RO_reg_1;
  input [31:0]RO_reg_2;
  input [31:0]RO_reg_3;
  input [31:0]RO_reg_4;
  input [31:0]RO_reg_5;
  input [31:0]RO_reg_6;
  input [31:0]RO_reg_7;
  input [31:0]RO_reg_8;
  input [31:0]RO_reg_9;
  input [31:0]RO_reg_10;
  input [31:0]RO_reg_11;
  input [31:0]RO_reg_12;
  input [31:0]RO_reg_13;
  input [31:0]RO_reg_14;
  input [31:0]RO_reg_15;
  input [31:0]RO_reg_16;
  input [31:0]RO_reg_17;
  input [31:0]RO_reg_18;
  input [31:0]RO_reg_19;
  input [31:0]RO_reg_20;
  input [31:0]RO_reg_21;
  input [31:0]RO_reg_22;
  input [31:0]RO_reg_23;
  input [31:0]RO_reg_24;
  input [31:0]RO_reg_25;
  input [31:0]RO_reg_26;
  input [31:0]RO_reg_27;
  input [31:0]RO_reg_28;
  input [31:0]RO_reg_29;
  input [31:0]RO_reg_30;
  input [31:0]RO_reg_31;
  input [31:0]RO_reg_32;
endmodule
