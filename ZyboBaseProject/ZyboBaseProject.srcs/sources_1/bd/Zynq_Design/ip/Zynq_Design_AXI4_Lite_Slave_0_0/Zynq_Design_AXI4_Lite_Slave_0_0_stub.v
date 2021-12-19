// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Fri Apr 30 17:22:07 2021
// Host        : DESKTOP-QSJNSC0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               G:/Xilinx/Projects/Desktop/AXI_4_Lite_Slave/AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ip/Zynq_Design_AXI4_Lite_Slave_0_0/Zynq_Design_AXI4_Lite_Slave_0_0_stub.v
// Design      : Zynq_Design_AXI4_Lite_Slave_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "AXI4_Lite_Slave,Vivado 2019.1" *)
module Zynq_Design_AXI4_Lite_Slave_0_0(s_axi_aclk, s_axi_aresentn, s_axi_araddr, 
  s_axi_arvalid, s_axi_awaddr, s_axi_awvalid, s_axi_bready, s_axi_rready, s_axi_wdata, 
  s_axi_wstrb, s_axi_wvalid, s_axi_arready, s_axi_awready, s_axi_bresp, s_axi_bvalid, 
  s_axi_rdata, s_axi_rresp, s_axi_rvalid, s_axi_wready, lbus_out_data, lbus_out_address, 
  lbus_out_strobe, lbus_in_data, lbus_in_complete, lbus_in_addr_OOR)
/* synthesis syn_black_box black_box_pad_pin="s_axi_aclk,s_axi_aresentn,s_axi_araddr[31:0],s_axi_arvalid,s_axi_awaddr[31:0],s_axi_awvalid,s_axi_bready,s_axi_rready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid,s_axi_arready,s_axi_awready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_wready,lbus_out_data[31:0],lbus_out_address[31:0],lbus_out_strobe,lbus_in_data[31:0],lbus_in_complete,lbus_in_addr_OOR" */;
  input s_axi_aclk;
  input s_axi_aresentn;
  input [31:0]s_axi_araddr;
  input s_axi_arvalid;
  input [31:0]s_axi_awaddr;
  input s_axi_awvalid;
  input s_axi_bready;
  input s_axi_rready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_arready;
  output s_axi_awready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  output s_axi_wready;
  output [31:0]lbus_out_data;
  output [31:0]lbus_out_address;
  output lbus_out_strobe;
  input [31:0]lbus_in_data;
  input lbus_in_complete;
  input lbus_in_addr_OOR;
endmodule
