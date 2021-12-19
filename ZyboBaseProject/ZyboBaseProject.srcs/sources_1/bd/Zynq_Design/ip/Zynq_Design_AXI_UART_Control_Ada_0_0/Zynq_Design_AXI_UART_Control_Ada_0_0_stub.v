// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sat May  1 14:50:08 2021
// Host        : DESKTOP-QSJNSC0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               g:/Xilinx/Projects/Desktop/AXI_4_Lite_Slave/AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ip/Zynq_Design_AXI_UART_Control_Ada_0_0/Zynq_Design_AXI_UART_Control_Ada_0_0_stub.v
// Design      : Zynq_Design_AXI_UART_Control_Ada_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "AXI_UART_Control_Adapter,Vivado 2019.1" *)
module Zynq_Design_AXI_UART_Control_Ada_0_0(CLK100MHz, RESET, Transmit_WE_In, 
  Transmit_WE_Out)
/* synthesis syn_black_box black_box_pad_pin="CLK100MHz,RESET,Transmit_WE_In,Transmit_WE_Out" */;
  input CLK100MHz;
  input RESET;
  input Transmit_WE_In;
  output Transmit_WE_Out;
endmodule
