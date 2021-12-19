// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Fri Apr 30 22:21:33 2021
// Host        : DESKTOP-QSJNSC0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               g:/Xilinx/Projects/Desktop/AXI_4_Lite_Slave/AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ip/Zynq_Design_UART_V1_9_0_0/Zynq_Design_UART_V1_9_0_0_stub.v
// Design      : Zynq_Design_UART_V1_9_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "TOP_BD_wrapper,Vivado 2019.1" *)
module Zynq_Design_UART_V1_9_0_0(CLK100MHz, Receive_AE, Receive_CLK, Receive_EM, 
  Receive_OUT, Receive_RD_EN, Reset_0, Rx, Transmit_AF, Transmit_CLK, Transmit_FU, Transmit_IN, 
  Transmit_WR_EN, Tx, UART_Debug_Enable)
/* synthesis syn_black_box black_box_pad_pin="CLK100MHz,Receive_AE,Receive_CLK,Receive_EM,Receive_OUT[7:0],Receive_RD_EN,Reset_0,Rx,Transmit_AF,Transmit_CLK,Transmit_FU,Transmit_IN[7:0],Transmit_WR_EN,Tx,UART_Debug_Enable" */;
  input CLK100MHz;
  output Receive_AE;
  input Receive_CLK;
  output Receive_EM;
  output [7:0]Receive_OUT;
  input Receive_RD_EN;
  input Reset_0;
  input Rx;
  output Transmit_AF;
  input Transmit_CLK;
  output Transmit_FU;
  input [7:0]Transmit_IN;
  input Transmit_WR_EN;
  output Tx;
  input UART_Debug_Enable;
endmodule
