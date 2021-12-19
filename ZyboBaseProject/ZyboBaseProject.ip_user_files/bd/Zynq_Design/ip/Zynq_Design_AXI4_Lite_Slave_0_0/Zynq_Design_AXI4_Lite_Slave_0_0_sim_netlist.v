// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Fri Apr 30 17:22:07 2021
// Host        : DESKTOP-QSJNSC0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               G:/Xilinx/Projects/Desktop/AXI_4_Lite_Slave/AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ip/Zynq_Design_AXI4_Lite_Slave_0_0/Zynq_Design_AXI4_Lite_Slave_0_0_sim_netlist.v
// Design      : Zynq_Design_AXI4_Lite_Slave_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Zynq_Design_AXI4_Lite_Slave_0_0,AXI4_Lite_Slave,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "AXI4_Lite_Slave,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module Zynq_Design_AXI4_Lite_Slave_0_0
   (s_axi_aclk,
    s_axi_aresentn,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_bready,
    s_axi_rready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_arready,
    s_axi_awready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_wready,
    lbus_out_data,
    lbus_out_address,
    lbus_out_strobe,
    lbus_in_data,
    lbus_in_complete,
    lbus_in_addr_OOR);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 s_axi_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_BUSIF s_axi, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN Zynq_Design_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s_axi_aclk;
  input s_axi_aresentn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN Zynq_Design_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [31:0]s_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *) input [31:0]s_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *) input s_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) input s_axi_rready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *) input [31:0]s_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *) input [3:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *) input s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) output s_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) output s_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *) output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) output [31:0]s_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *) output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) output s_axi_wready;
  output [31:0]lbus_out_data;
  output [31:0]lbus_out_address;
  output lbus_out_strobe;
  input [31:0]lbus_in_data;
  input lbus_in_complete;
  input lbus_in_addr_OOR;

  wire \<const0> ;
  wire lbus_in_addr_OOR;
  wire lbus_in_complete;
  wire [31:0]lbus_in_data;
  wire [31:0]lbus_out_address;
  wire [31:0]lbus_out_data;
  wire lbus_out_strobe;
  wire s_axi_aclk;
  wire [31:0]s_axi_araddr;
  wire s_axi_aresentn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:1]\^s_axi_bresp ;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire [1:1]\^s_axi_rresp ;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign s_axi_bresp[1] = \^s_axi_bresp [1];
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \^s_axi_rresp [1];
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  Zynq_Design_AXI4_Lite_Slave_0_0_AXI4_Lite_Slave U0
       (.lbus_in_addr_OOR(lbus_in_addr_OOR),
        .lbus_in_complete(lbus_in_complete),
        .lbus_in_data(lbus_in_data),
        .lbus_out_address(lbus_out_address),
        .lbus_out_data(lbus_out_data),
        .lbus_out_strobe(lbus_out_strobe),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresentn(s_axi_aresentn),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(\^s_axi_bresp ),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(\^s_axi_rresp ),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "AXI4_Lite_Slave" *) 
module Zynq_Design_AXI4_Lite_Slave_0_0_AXI4_Lite_Slave
   (s_axi_rdata,
    lbus_out_data,
    lbus_out_address,
    s_axi_rresp,
    s_axi_arready,
    s_axi_awready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_rvalid,
    lbus_out_strobe,
    s_axi_wready,
    lbus_in_complete,
    lbus_in_addr_OOR,
    s_axi_aresentn,
    s_axi_wstrb,
    s_axi_aclk,
    lbus_in_data,
    s_axi_wdata,
    s_axi_araddr,
    s_axi_bready,
    s_axi_rready,
    s_axi_awvalid,
    s_axi_awaddr,
    s_axi_wvalid,
    s_axi_arvalid);
  output [31:0]s_axi_rdata;
  output [31:0]lbus_out_data;
  output [31:0]lbus_out_address;
  output [0:0]s_axi_rresp;
  output s_axi_arready;
  output s_axi_awready;
  output [0:0]s_axi_bresp;
  output s_axi_bvalid;
  output s_axi_rvalid;
  output lbus_out_strobe;
  output s_axi_wready;
  input lbus_in_complete;
  input lbus_in_addr_OOR;
  input s_axi_aresentn;
  input [3:0]s_axi_wstrb;
  input s_axi_aclk;
  input [31:0]lbus_in_data;
  input [31:0]s_axi_wdata;
  input [31:0]s_axi_araddr;
  input s_axi_bready;
  input s_axi_rready;
  input s_axi_awvalid;
  input [31:0]s_axi_awaddr;
  input s_axi_wvalid;
  input s_axi_arvalid;

  wire \FSM_sequential_MainState[0]_i_1_n_0 ;
  wire \FSM_sequential_MainState[0]_i_2_n_0 ;
  wire \FSM_sequential_MainState[0]_i_3_n_0 ;
  wire \FSM_sequential_MainState[1]_i_1_n_0 ;
  wire \FSM_sequential_MainState[1]_i_2_n_0 ;
  wire \FSM_sequential_MainState[2]_i_1_n_0 ;
  wire \FSM_sequential_MainState[3]_i_1_n_0 ;
  wire \FSM_sequential_MainState[3]_i_2_n_0 ;
  wire \FSM_sequential_MainState[4]_i_1_n_0 ;
  wire \FSM_sequential_MainState[4]_i_2_n_0 ;
  wire \FSM_sequential_MainState[4]_i_3_n_0 ;
  wire \FSM_sequential_MainState[4]_i_4_n_0 ;
  wire \FSM_sequential_MainState[4]_i_5_n_0 ;
  wire \FSM_sequential_MainState[4]_i_6_n_0 ;
  wire \FSM_sequential_MainState[4]_i_7_n_0 ;
  wire \FSM_sequential_MainState[4]_i_8_n_0 ;
  wire \FSM_sequential_MainState[4]_i_9_n_0 ;
  wire MainState1_carry__0_i_1_n_0;
  wire MainState1_carry__0_i_2_n_0;
  wire MainState1_carry__0_i_3_n_0;
  wire MainState1_carry__0_i_4_n_0;
  wire MainState1_carry__0_i_5_n_0;
  wire MainState1_carry__0_i_6_n_0;
  wire MainState1_carry__0_i_7_n_0;
  wire MainState1_carry__0_i_8_n_0;
  wire MainState1_carry__0_n_0;
  wire MainState1_carry__0_n_1;
  wire MainState1_carry__0_n_2;
  wire MainState1_carry__0_n_3;
  wire MainState1_carry__1_i_1_n_0;
  wire MainState1_carry__1_i_2_n_0;
  wire MainState1_carry__1_i_3_n_0;
  wire MainState1_carry__1_i_4_n_0;
  wire MainState1_carry__1_i_5_n_0;
  wire MainState1_carry__1_i_6_n_0;
  wire MainState1_carry__1_i_7_n_0;
  wire MainState1_carry__1_i_8_n_0;
  wire MainState1_carry__1_n_0;
  wire MainState1_carry__1_n_1;
  wire MainState1_carry__1_n_2;
  wire MainState1_carry__1_n_3;
  wire MainState1_carry__2_i_1_n_0;
  wire MainState1_carry__2_i_2_n_0;
  wire MainState1_carry__2_i_3_n_0;
  wire MainState1_carry__2_i_4_n_0;
  wire MainState1_carry__2_i_5_n_0;
  wire MainState1_carry__2_i_6_n_0;
  wire MainState1_carry__2_i_7_n_0;
  wire MainState1_carry__2_i_8_n_0;
  wire MainState1_carry__2_n_0;
  wire MainState1_carry__2_n_1;
  wire MainState1_carry__2_n_2;
  wire MainState1_carry__2_n_3;
  wire MainState1_carry_i_1_n_0;
  wire MainState1_carry_i_2_n_0;
  wire MainState1_carry_i_3_n_0;
  wire MainState1_carry_i_4_n_0;
  wire MainState1_carry_i_5_n_0;
  wire MainState1_carry_n_0;
  wire MainState1_carry_n_1;
  wire MainState1_carry_n_2;
  wire MainState1_carry_n_3;
  wire [4:0]MainState__0;
  wire [31:0]ReadAddressBuffer;
  wire \ReadAddressBuffer[31]_i_1_n_0 ;
  wire [31:0]TimeoutCounter;
  wire TimeoutCounter0_carry__0_n_0;
  wire TimeoutCounter0_carry__0_n_1;
  wire TimeoutCounter0_carry__0_n_2;
  wire TimeoutCounter0_carry__0_n_3;
  wire TimeoutCounter0_carry__1_n_0;
  wire TimeoutCounter0_carry__1_n_1;
  wire TimeoutCounter0_carry__1_n_2;
  wire TimeoutCounter0_carry__1_n_3;
  wire TimeoutCounter0_carry__2_n_0;
  wire TimeoutCounter0_carry__2_n_1;
  wire TimeoutCounter0_carry__2_n_2;
  wire TimeoutCounter0_carry__2_n_3;
  wire TimeoutCounter0_carry__3_n_0;
  wire TimeoutCounter0_carry__3_n_1;
  wire TimeoutCounter0_carry__3_n_2;
  wire TimeoutCounter0_carry__3_n_3;
  wire TimeoutCounter0_carry__4_n_0;
  wire TimeoutCounter0_carry__4_n_1;
  wire TimeoutCounter0_carry__4_n_2;
  wire TimeoutCounter0_carry__4_n_3;
  wire TimeoutCounter0_carry__5_n_0;
  wire TimeoutCounter0_carry__5_n_1;
  wire TimeoutCounter0_carry__5_n_2;
  wire TimeoutCounter0_carry__5_n_3;
  wire TimeoutCounter0_carry__6_n_2;
  wire TimeoutCounter0_carry__6_n_3;
  wire TimeoutCounter0_carry_n_0;
  wire TimeoutCounter0_carry_n_1;
  wire TimeoutCounter0_carry_n_2;
  wire TimeoutCounter0_carry_n_3;
  wire \TimeoutCounter[0]_i_1_n_0 ;
  wire \TimeoutCounter[31]_i_1_n_0 ;
  wire \TimeoutCounter[31]_i_2_n_0 ;
  wire \TimeoutCounter[31]_i_3_n_0 ;
  wire \TimeoutCounter[31]_i_4_n_0 ;
  wire [31:0]WriteDataBuffer;
  wire \WriteDataBuffer[15]_i_1_n_0 ;
  wire \WriteDataBuffer[23]_i_1_n_0 ;
  wire \WriteDataBuffer[31]_i_1_n_0 ;
  wire \WriteDataBuffer[31]_i_2_n_0 ;
  wire \WriteDataBuffer[31]_i_3_n_0 ;
  wire \WriteDataBuffer[7]_i_1_n_0 ;
  wire lbus_in_addr_OOR;
  wire lbus_in_complete;
  wire [31:0]lbus_in_data;
  wire [31:0]lbus_out_address;
  wire \lbus_out_address[0]_i_1_n_0 ;
  wire \lbus_out_address[10]_i_1_n_0 ;
  wire \lbus_out_address[11]_i_1_n_0 ;
  wire \lbus_out_address[12]_i_1_n_0 ;
  wire \lbus_out_address[13]_i_1_n_0 ;
  wire \lbus_out_address[14]_i_1_n_0 ;
  wire \lbus_out_address[15]_i_1_n_0 ;
  wire \lbus_out_address[16]_i_1_n_0 ;
  wire \lbus_out_address[17]_i_1_n_0 ;
  wire \lbus_out_address[18]_i_1_n_0 ;
  wire \lbus_out_address[19]_i_1_n_0 ;
  wire \lbus_out_address[1]_i_1_n_0 ;
  wire \lbus_out_address[20]_i_1_n_0 ;
  wire \lbus_out_address[21]_i_1_n_0 ;
  wire \lbus_out_address[22]_i_1_n_0 ;
  wire \lbus_out_address[23]_i_1_n_0 ;
  wire \lbus_out_address[24]_i_1_n_0 ;
  wire \lbus_out_address[25]_i_1_n_0 ;
  wire \lbus_out_address[26]_i_1_n_0 ;
  wire \lbus_out_address[27]_i_1_n_0 ;
  wire \lbus_out_address[28]_i_1_n_0 ;
  wire \lbus_out_address[29]_i_1_n_0 ;
  wire \lbus_out_address[2]_i_1_n_0 ;
  wire \lbus_out_address[30]_i_1_n_0 ;
  wire \lbus_out_address[31]_i_1_n_0 ;
  wire \lbus_out_address[31]_i_2_n_0 ;
  wire \lbus_out_address[3]_i_1_n_0 ;
  wire \lbus_out_address[4]_i_1_n_0 ;
  wire \lbus_out_address[5]_i_1_n_0 ;
  wire \lbus_out_address[6]_i_1_n_0 ;
  wire \lbus_out_address[7]_i_1_n_0 ;
  wire \lbus_out_address[8]_i_1_n_0 ;
  wire \lbus_out_address[9]_i_1_n_0 ;
  wire [31:0]lbus_out_data;
  wire \lbus_out_data[31]_i_1_n_0 ;
  wire lbus_out_strobe;
  wire lbus_out_strobe0_out;
  wire lbus_out_strobe_i_1_n_0;
  wire [31:1]p_0_in;
  wire s_axi_aclk;
  wire [31:0]s_axi_araddr;
  wire s_axi_aresentn;
  wire s_axi_arready;
  wire s_axi_arready_i_1_n_0;
  wire s_axi_arready_i_2_n_0;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awready_i_1_n_0;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire \s_axi_bresp[1]_i_1_n_0 ;
  wire \s_axi_bresp[1]_i_2_n_0 ;
  wire s_axi_bvalid;
  wire s_axi_bvalid_i_1_n_0;
  wire s_axi_bvalid_i_2_n_0;
  wire [31:0]s_axi_rdata;
  wire \s_axi_rdata[31]_i_1_n_0 ;
  wire \s_axi_rdata[31]_i_2_n_0 ;
  wire \s_axi_rdata[31]_i_3_n_0 ;
  wire s_axi_rready;
  wire [0:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire s_axi_rvalid_i_1_n_0;
  wire s_axi_rvalid_i_2_n_0;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wready1_out;
  wire s_axi_wready_i_1_n_0;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [3:0]NLW_MainState1_carry_O_UNCONNECTED;
  wire [3:0]NLW_MainState1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_MainState1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_MainState1_carry__2_O_UNCONNECTED;
  wire [3:2]NLW_TimeoutCounter0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_TimeoutCounter0_carry__6_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFFFFFF05000400)) 
    \FSM_sequential_MainState[0]_i_1 
       (.I0(MainState__0[0]),
        .I1(s_axi_awvalid),
        .I2(MainState__0[3]),
        .I3(\FSM_sequential_MainState[0]_i_2_n_0 ),
        .I4(MainState__0[4]),
        .I5(\FSM_sequential_MainState[0]_i_3_n_0 ),
        .O(\FSM_sequential_MainState[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_MainState[0]_i_2 
       (.I0(MainState__0[2]),
        .I1(MainState__0[1]),
        .O(\FSM_sequential_MainState[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0322320303030300)) 
    \FSM_sequential_MainState[0]_i_3 
       (.I0(MainState1_carry__2_n_0),
        .I1(MainState__0[4]),
        .I2(MainState__0[0]),
        .I3(MainState__0[1]),
        .I4(MainState__0[3]),
        .I5(MainState__0[2]),
        .O(\FSM_sequential_MainState[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_MainState[1]_i_1 
       (.I0(MainState__0[4]),
        .I1(\FSM_sequential_MainState[1]_i_2_n_0 ),
        .O(\FSM_sequential_MainState[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FFBBFF4400FC)) 
    \FSM_sequential_MainState[1]_i_2 
       (.I0(MainState1_carry__2_n_0),
        .I1(MainState__0[2]),
        .I2(s_axi_awvalid),
        .I3(MainState__0[0]),
        .I4(MainState__0[1]),
        .I5(MainState__0[3]),
        .O(\FSM_sequential_MainState[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000055AAA8AA)) 
    \FSM_sequential_MainState[2]_i_1 
       (.I0(MainState__0[2]),
        .I1(MainState1_carry__2_n_0),
        .I2(MainState__0[3]),
        .I3(MainState__0[1]),
        .I4(MainState__0[0]),
        .I5(MainState__0[4]),
        .O(\FSM_sequential_MainState[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0F04)) 
    \FSM_sequential_MainState[3]_i_1 
       (.I0(MainState__0[0]),
        .I1(MainState__0[3]),
        .I2(MainState__0[4]),
        .I3(\FSM_sequential_MainState[3]_i_2_n_0 ),
        .O(\FSM_sequential_MainState[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0FF0033000000505)) 
    \FSM_sequential_MainState[3]_i_2 
       (.I0(s_axi_awvalid),
        .I1(MainState1_carry__2_n_0),
        .I2(MainState__0[2]),
        .I3(MainState__0[3]),
        .I4(MainState__0[0]),
        .I5(MainState__0[1]),
        .O(\FSM_sequential_MainState[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    \FSM_sequential_MainState[4]_i_1 
       (.I0(s_axi_aresentn),
        .I1(\FSM_sequential_MainState[4]_i_3_n_0 ),
        .I2(\FSM_sequential_MainState[4]_i_4_n_0 ),
        .I3(\FSM_sequential_MainState[4]_i_5_n_0 ),
        .I4(\FSM_sequential_MainState[4]_i_6_n_0 ),
        .O(\FSM_sequential_MainState[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h20200004)) 
    \FSM_sequential_MainState[4]_i_2 
       (.I0(MainState__0[2]),
        .I1(MainState__0[4]),
        .I2(MainState__0[3]),
        .I3(MainState__0[1]),
        .I4(MainState__0[0]),
        .O(\FSM_sequential_MainState[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEFEEEEEEEFEEE)) 
    \FSM_sequential_MainState[4]_i_3 
       (.I0(\FSM_sequential_MainState[4]_i_7_n_0 ),
        .I1(\FSM_sequential_MainState[4]_i_8_n_0 ),
        .I2(\FSM_sequential_MainState[4]_i_9_n_0 ),
        .I3(MainState__0[2]),
        .I4(lbus_in_addr_OOR),
        .I5(MainState1_carry__2_n_0),
        .O(\FSM_sequential_MainState[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000CEF000000)) 
    \FSM_sequential_MainState[4]_i_4 
       (.I0(MainState__0[0]),
        .I1(s_axi_rready),
        .I2(MainState__0[2]),
        .I3(MainState__0[1]),
        .I4(MainState__0[3]),
        .I5(MainState__0[4]),
        .O(\FSM_sequential_MainState[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAA800A800000000)) 
    \FSM_sequential_MainState[4]_i_5 
       (.I0(\WriteDataBuffer[31]_i_3_n_0 ),
        .I1(lbus_in_complete),
        .I2(MainState1_carry__2_n_0),
        .I3(MainState__0[0]),
        .I4(s_axi_bready),
        .I5(MainState__0[2]),
        .O(\FSM_sequential_MainState[4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h11101010)) 
    \FSM_sequential_MainState[4]_i_6 
       (.I0(MainState__0[4]),
        .I1(MainState__0[2]),
        .I2(MainState__0[0]),
        .I3(s_axi_wvalid),
        .I4(MainState__0[1]),
        .O(\FSM_sequential_MainState[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000000000F220022)) 
    \FSM_sequential_MainState[4]_i_7 
       (.I0(MainState__0[0]),
        .I1(MainState__0[1]),
        .I2(MainState__0[4]),
        .I3(MainState__0[3]),
        .I4(s_axi_bready),
        .I5(MainState__0[2]),
        .O(\FSM_sequential_MainState[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0101010101010100)) 
    \FSM_sequential_MainState[4]_i_8 
       (.I0(MainState__0[1]),
        .I1(MainState__0[3]),
        .I2(MainState__0[4]),
        .I3(MainState__0[2]),
        .I4(s_axi_awvalid),
        .I5(s_axi_arvalid),
        .O(\FSM_sequential_MainState[4]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \FSM_sequential_MainState[4]_i_9 
       (.I0(MainState__0[0]),
        .I1(MainState__0[4]),
        .I2(MainState__0[1]),
        .O(\FSM_sequential_MainState[4]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:01110,iSTATE0:10001,iSTATE1:01100,iSTATE2:01001,iSTATE3:00011,iSTATE4:00010,iSTATE5:00001,iSTATE6:00000,iSTATE7:01101,iSTATE8:01000,iSTATE9:00110,iSTATE10:01011,iSTATE11:00111,iSTATE12:01010,iSTATE13:00101,iSTATE14:00100,iSTATE15:10000,iSTATE16:01111" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_MainState_reg[0] 
       (.C(s_axi_aclk),
        .CE(\FSM_sequential_MainState[4]_i_1_n_0 ),
        .D(\FSM_sequential_MainState[0]_i_1_n_0 ),
        .Q(MainState__0[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:01110,iSTATE0:10001,iSTATE1:01100,iSTATE2:01001,iSTATE3:00011,iSTATE4:00010,iSTATE5:00001,iSTATE6:00000,iSTATE7:01101,iSTATE8:01000,iSTATE9:00110,iSTATE10:01011,iSTATE11:00111,iSTATE12:01010,iSTATE13:00101,iSTATE14:00100,iSTATE15:10000,iSTATE16:01111" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_MainState_reg[1] 
       (.C(s_axi_aclk),
        .CE(\FSM_sequential_MainState[4]_i_1_n_0 ),
        .D(\FSM_sequential_MainState[1]_i_1_n_0 ),
        .Q(MainState__0[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:01110,iSTATE0:10001,iSTATE1:01100,iSTATE2:01001,iSTATE3:00011,iSTATE4:00010,iSTATE5:00001,iSTATE6:00000,iSTATE7:01101,iSTATE8:01000,iSTATE9:00110,iSTATE10:01011,iSTATE11:00111,iSTATE12:01010,iSTATE13:00101,iSTATE14:00100,iSTATE15:10000,iSTATE16:01111" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_MainState_reg[2] 
       (.C(s_axi_aclk),
        .CE(\FSM_sequential_MainState[4]_i_1_n_0 ),
        .D(\FSM_sequential_MainState[2]_i_1_n_0 ),
        .Q(MainState__0[2]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:01110,iSTATE0:10001,iSTATE1:01100,iSTATE2:01001,iSTATE3:00011,iSTATE4:00010,iSTATE5:00001,iSTATE6:00000,iSTATE7:01101,iSTATE8:01000,iSTATE9:00110,iSTATE10:01011,iSTATE11:00111,iSTATE12:01010,iSTATE13:00101,iSTATE14:00100,iSTATE15:10000,iSTATE16:01111" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_MainState_reg[3] 
       (.C(s_axi_aclk),
        .CE(\FSM_sequential_MainState[4]_i_1_n_0 ),
        .D(\FSM_sequential_MainState[3]_i_1_n_0 ),
        .Q(MainState__0[3]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:01110,iSTATE0:10001,iSTATE1:01100,iSTATE2:01001,iSTATE3:00011,iSTATE4:00010,iSTATE5:00001,iSTATE6:00000,iSTATE7:01101,iSTATE8:01000,iSTATE9:00110,iSTATE10:01011,iSTATE11:00111,iSTATE12:01010,iSTATE13:00101,iSTATE14:00100,iSTATE15:10000,iSTATE16:01111" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_MainState_reg[4] 
       (.C(s_axi_aclk),
        .CE(\FSM_sequential_MainState[4]_i_1_n_0 ),
        .D(\FSM_sequential_MainState[4]_i_2_n_0 ),
        .Q(MainState__0[4]),
        .R(1'b0));
  CARRY4 MainState1_carry
       (.CI(1'b0),
        .CO({MainState1_carry_n_0,MainState1_carry_n_1,MainState1_carry_n_2,MainState1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({MainState1_carry_i_1_n_0,TimeoutCounter[5],1'b0,1'b0}),
        .O(NLW_MainState1_carry_O_UNCONNECTED[3:0]),
        .S({MainState1_carry_i_2_n_0,MainState1_carry_i_3_n_0,MainState1_carry_i_4_n_0,MainState1_carry_i_5_n_0}));
  CARRY4 MainState1_carry__0
       (.CI(MainState1_carry_n_0),
        .CO({MainState1_carry__0_n_0,MainState1_carry__0_n_1,MainState1_carry__0_n_2,MainState1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({MainState1_carry__0_i_1_n_0,MainState1_carry__0_i_2_n_0,MainState1_carry__0_i_3_n_0,MainState1_carry__0_i_4_n_0}),
        .O(NLW_MainState1_carry__0_O_UNCONNECTED[3:0]),
        .S({MainState1_carry__0_i_5_n_0,MainState1_carry__0_i_6_n_0,MainState1_carry__0_i_7_n_0,MainState1_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    MainState1_carry__0_i_1
       (.I0(TimeoutCounter[14]),
        .I1(TimeoutCounter[15]),
        .O(MainState1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    MainState1_carry__0_i_2
       (.I0(TimeoutCounter[12]),
        .I1(TimeoutCounter[13]),
        .O(MainState1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    MainState1_carry__0_i_3
       (.I0(TimeoutCounter[10]),
        .I1(TimeoutCounter[11]),
        .O(MainState1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    MainState1_carry__0_i_4
       (.I0(TimeoutCounter[8]),
        .I1(TimeoutCounter[9]),
        .O(MainState1_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    MainState1_carry__0_i_5
       (.I0(TimeoutCounter[15]),
        .I1(TimeoutCounter[14]),
        .O(MainState1_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    MainState1_carry__0_i_6
       (.I0(TimeoutCounter[13]),
        .I1(TimeoutCounter[12]),
        .O(MainState1_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    MainState1_carry__0_i_7
       (.I0(TimeoutCounter[11]),
        .I1(TimeoutCounter[10]),
        .O(MainState1_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    MainState1_carry__0_i_8
       (.I0(TimeoutCounter[9]),
        .I1(TimeoutCounter[8]),
        .O(MainState1_carry__0_i_8_n_0));
  CARRY4 MainState1_carry__1
       (.CI(MainState1_carry__0_n_0),
        .CO({MainState1_carry__1_n_0,MainState1_carry__1_n_1,MainState1_carry__1_n_2,MainState1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({MainState1_carry__1_i_1_n_0,MainState1_carry__1_i_2_n_0,MainState1_carry__1_i_3_n_0,MainState1_carry__1_i_4_n_0}),
        .O(NLW_MainState1_carry__1_O_UNCONNECTED[3:0]),
        .S({MainState1_carry__1_i_5_n_0,MainState1_carry__1_i_6_n_0,MainState1_carry__1_i_7_n_0,MainState1_carry__1_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    MainState1_carry__1_i_1
       (.I0(TimeoutCounter[22]),
        .I1(TimeoutCounter[23]),
        .O(MainState1_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    MainState1_carry__1_i_2
       (.I0(TimeoutCounter[20]),
        .I1(TimeoutCounter[21]),
        .O(MainState1_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    MainState1_carry__1_i_3
       (.I0(TimeoutCounter[18]),
        .I1(TimeoutCounter[19]),
        .O(MainState1_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    MainState1_carry__1_i_4
       (.I0(TimeoutCounter[16]),
        .I1(TimeoutCounter[17]),
        .O(MainState1_carry__1_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    MainState1_carry__1_i_5
       (.I0(TimeoutCounter[23]),
        .I1(TimeoutCounter[22]),
        .O(MainState1_carry__1_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    MainState1_carry__1_i_6
       (.I0(TimeoutCounter[21]),
        .I1(TimeoutCounter[20]),
        .O(MainState1_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    MainState1_carry__1_i_7
       (.I0(TimeoutCounter[19]),
        .I1(TimeoutCounter[18]),
        .O(MainState1_carry__1_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    MainState1_carry__1_i_8
       (.I0(TimeoutCounter[17]),
        .I1(TimeoutCounter[16]),
        .O(MainState1_carry__1_i_8_n_0));
  CARRY4 MainState1_carry__2
       (.CI(MainState1_carry__1_n_0),
        .CO({MainState1_carry__2_n_0,MainState1_carry__2_n_1,MainState1_carry__2_n_2,MainState1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({MainState1_carry__2_i_1_n_0,MainState1_carry__2_i_2_n_0,MainState1_carry__2_i_3_n_0,MainState1_carry__2_i_4_n_0}),
        .O(NLW_MainState1_carry__2_O_UNCONNECTED[3:0]),
        .S({MainState1_carry__2_i_5_n_0,MainState1_carry__2_i_6_n_0,MainState1_carry__2_i_7_n_0,MainState1_carry__2_i_8_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    MainState1_carry__2_i_1
       (.I0(TimeoutCounter[30]),
        .I1(TimeoutCounter[31]),
        .O(MainState1_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    MainState1_carry__2_i_2
       (.I0(TimeoutCounter[28]),
        .I1(TimeoutCounter[29]),
        .O(MainState1_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    MainState1_carry__2_i_3
       (.I0(TimeoutCounter[26]),
        .I1(TimeoutCounter[27]),
        .O(MainState1_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    MainState1_carry__2_i_4
       (.I0(TimeoutCounter[24]),
        .I1(TimeoutCounter[25]),
        .O(MainState1_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    MainState1_carry__2_i_5
       (.I0(TimeoutCounter[31]),
        .I1(TimeoutCounter[30]),
        .O(MainState1_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    MainState1_carry__2_i_6
       (.I0(TimeoutCounter[29]),
        .I1(TimeoutCounter[28]),
        .O(MainState1_carry__2_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    MainState1_carry__2_i_7
       (.I0(TimeoutCounter[27]),
        .I1(TimeoutCounter[26]),
        .O(MainState1_carry__2_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    MainState1_carry__2_i_8
       (.I0(TimeoutCounter[25]),
        .I1(TimeoutCounter[24]),
        .O(MainState1_carry__2_i_8_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    MainState1_carry_i_1
       (.I0(TimeoutCounter[6]),
        .I1(TimeoutCounter[7]),
        .O(MainState1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    MainState1_carry_i_2
       (.I0(TimeoutCounter[7]),
        .I1(TimeoutCounter[6]),
        .O(MainState1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    MainState1_carry_i_3
       (.I0(TimeoutCounter[4]),
        .I1(TimeoutCounter[5]),
        .O(MainState1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    MainState1_carry_i_4
       (.I0(TimeoutCounter[2]),
        .I1(TimeoutCounter[3]),
        .O(MainState1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    MainState1_carry_i_5
       (.I0(TimeoutCounter[0]),
        .I1(TimeoutCounter[1]),
        .O(MainState1_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    \ReadAddressBuffer[31]_i_1 
       (.I0(MainState__0[4]),
        .I1(MainState__0[3]),
        .I2(s_axi_aresentn),
        .I3(MainState__0[2]),
        .I4(MainState__0[1]),
        .I5(MainState__0[0]),
        .O(\ReadAddressBuffer[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ReadAddressBuffer_reg[0] 
       (.C(s_axi_aclk),
        .CE(\ReadAddressBuffer[31]_i_1_n_0 ),
        .D(s_axi_araddr[0]),
        .Q(ReadAddressBuffer[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ReadAddressBuffer_reg[10] 
       (.C(s_axi_aclk),
        .CE(\ReadAddressBuffer[31]_i_1_n_0 ),
        .D(s_axi_araddr[10]),
        .Q(ReadAddressBuffer[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ReadAddressBuffer_reg[11] 
       (.C(s_axi_aclk),
        .CE(\ReadAddressBuffer[31]_i_1_n_0 ),
        .D(s_axi_araddr[11]),
        .Q(ReadAddressBuffer[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ReadAddressBuffer_reg[12] 
       (.C(s_axi_aclk),
        .CE(\ReadAddressBuffer[31]_i_1_n_0 ),
        .D(s_axi_araddr[12]),
        .Q(ReadAddressBuffer[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ReadAddressBuffer_reg[13] 
       (.C(s_axi_aclk),
        .CE(\ReadAddressBuffer[31]_i_1_n_0 ),
        .D(s_axi_araddr[13]),
        .Q(ReadAddressBuffer[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ReadAddressBuffer_reg[14] 
       (.C(s_axi_aclk),
        .CE(\ReadAddressBuffer[31]_i_1_n_0 ),
        .D(s_axi_araddr[14]),
        .Q(ReadAddressBuffer[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ReadAddressBuffer_reg[15] 
       (.C(s_axi_aclk),
        .CE(\ReadAddressBuffer[31]_i_1_n_0 ),
        .D(s_axi_araddr[15]),
        .Q(ReadAddressBuffer[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ReadAddressBuffer_reg[16] 
       (.C(s_axi_aclk),
        .CE(\ReadAddressBuffer[31]_i_1_n_0 ),
        .D(s_axi_araddr[16]),
        .Q(ReadAddressBuffer[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ReadAddressBuffer_reg[17] 
       (.C(s_axi_aclk),
        .CE(\ReadAddressBuffer[31]_i_1_n_0 ),
        .D(s_axi_araddr[17]),
        .Q(ReadAddressBuffer[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ReadAddressBuffer_reg[18] 
       (.C(s_axi_aclk),
        .CE(\ReadAddressBuffer[31]_i_1_n_0 ),
        .D(s_axi_araddr[18]),
        .Q(ReadAddressBuffer[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ReadAddressBuffer_reg[19] 
       (.C(s_axi_aclk),
        .CE(\ReadAddressBuffer[31]_i_1_n_0 ),
        .D(s_axi_araddr[19]),
        .Q(ReadAddressBuffer[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ReadAddressBuffer_reg[1] 
       (.C(s_axi_aclk),
        .CE(\ReadAddressBuffer[31]_i_1_n_0 ),
        .D(s_axi_araddr[1]),
        .Q(ReadAddressBuffer[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ReadAddressBuffer_reg[20] 
       (.C(s_axi_aclk),
        .CE(\ReadAddressBuffer[31]_i_1_n_0 ),
        .D(s_axi_araddr[20]),
        .Q(ReadAddressBuffer[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ReadAddressBuffer_reg[21] 
       (.C(s_axi_aclk),
        .CE(\ReadAddressBuffer[31]_i_1_n_0 ),
        .D(s_axi_araddr[21]),
        .Q(ReadAddressBuffer[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ReadAddressBuffer_reg[22] 
       (.C(s_axi_aclk),
        .CE(\ReadAddressBuffer[31]_i_1_n_0 ),
        .D(s_axi_araddr[22]),
        .Q(ReadAddressBuffer[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ReadAddressBuffer_reg[23] 
       (.C(s_axi_aclk),
        .CE(\ReadAddressBuffer[31]_i_1_n_0 ),
        .D(s_axi_araddr[23]),
        .Q(ReadAddressBuffer[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ReadAddressBuffer_reg[24] 
       (.C(s_axi_aclk),
        .CE(\ReadAddressBuffer[31]_i_1_n_0 ),
        .D(s_axi_araddr[24]),
        .Q(ReadAddressBuffer[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ReadAddressBuffer_reg[25] 
       (.C(s_axi_aclk),
        .CE(\ReadAddressBuffer[31]_i_1_n_0 ),
        .D(s_axi_araddr[25]),
        .Q(ReadAddressBuffer[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ReadAddressBuffer_reg[26] 
       (.C(s_axi_aclk),
        .CE(\ReadAddressBuffer[31]_i_1_n_0 ),
        .D(s_axi_araddr[26]),
        .Q(ReadAddressBuffer[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ReadAddressBuffer_reg[27] 
       (.C(s_axi_aclk),
        .CE(\ReadAddressBuffer[31]_i_1_n_0 ),
        .D(s_axi_araddr[27]),
        .Q(ReadAddressBuffer[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ReadAddressBuffer_reg[28] 
       (.C(s_axi_aclk),
        .CE(\ReadAddressBuffer[31]_i_1_n_0 ),
        .D(s_axi_araddr[28]),
        .Q(ReadAddressBuffer[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ReadAddressBuffer_reg[29] 
       (.C(s_axi_aclk),
        .CE(\ReadAddressBuffer[31]_i_1_n_0 ),
        .D(s_axi_araddr[29]),
        .Q(ReadAddressBuffer[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ReadAddressBuffer_reg[2] 
       (.C(s_axi_aclk),
        .CE(\ReadAddressBuffer[31]_i_1_n_0 ),
        .D(s_axi_araddr[2]),
        .Q(ReadAddressBuffer[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ReadAddressBuffer_reg[30] 
       (.C(s_axi_aclk),
        .CE(\ReadAddressBuffer[31]_i_1_n_0 ),
        .D(s_axi_araddr[30]),
        .Q(ReadAddressBuffer[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ReadAddressBuffer_reg[31] 
       (.C(s_axi_aclk),
        .CE(\ReadAddressBuffer[31]_i_1_n_0 ),
        .D(s_axi_araddr[31]),
        .Q(ReadAddressBuffer[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ReadAddressBuffer_reg[3] 
       (.C(s_axi_aclk),
        .CE(\ReadAddressBuffer[31]_i_1_n_0 ),
        .D(s_axi_araddr[3]),
        .Q(ReadAddressBuffer[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ReadAddressBuffer_reg[4] 
       (.C(s_axi_aclk),
        .CE(\ReadAddressBuffer[31]_i_1_n_0 ),
        .D(s_axi_araddr[4]),
        .Q(ReadAddressBuffer[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ReadAddressBuffer_reg[5] 
       (.C(s_axi_aclk),
        .CE(\ReadAddressBuffer[31]_i_1_n_0 ),
        .D(s_axi_araddr[5]),
        .Q(ReadAddressBuffer[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ReadAddressBuffer_reg[6] 
       (.C(s_axi_aclk),
        .CE(\ReadAddressBuffer[31]_i_1_n_0 ),
        .D(s_axi_araddr[6]),
        .Q(ReadAddressBuffer[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ReadAddressBuffer_reg[7] 
       (.C(s_axi_aclk),
        .CE(\ReadAddressBuffer[31]_i_1_n_0 ),
        .D(s_axi_araddr[7]),
        .Q(ReadAddressBuffer[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ReadAddressBuffer_reg[8] 
       (.C(s_axi_aclk),
        .CE(\ReadAddressBuffer[31]_i_1_n_0 ),
        .D(s_axi_araddr[8]),
        .Q(ReadAddressBuffer[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ReadAddressBuffer_reg[9] 
       (.C(s_axi_aclk),
        .CE(\ReadAddressBuffer[31]_i_1_n_0 ),
        .D(s_axi_araddr[9]),
        .Q(ReadAddressBuffer[9]),
        .R(1'b0));
  CARRY4 TimeoutCounter0_carry
       (.CI(1'b0),
        .CO({TimeoutCounter0_carry_n_0,TimeoutCounter0_carry_n_1,TimeoutCounter0_carry_n_2,TimeoutCounter0_carry_n_3}),
        .CYINIT(TimeoutCounter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[4:1]),
        .S(TimeoutCounter[4:1]));
  CARRY4 TimeoutCounter0_carry__0
       (.CI(TimeoutCounter0_carry_n_0),
        .CO({TimeoutCounter0_carry__0_n_0,TimeoutCounter0_carry__0_n_1,TimeoutCounter0_carry__0_n_2,TimeoutCounter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[8:5]),
        .S(TimeoutCounter[8:5]));
  CARRY4 TimeoutCounter0_carry__1
       (.CI(TimeoutCounter0_carry__0_n_0),
        .CO({TimeoutCounter0_carry__1_n_0,TimeoutCounter0_carry__1_n_1,TimeoutCounter0_carry__1_n_2,TimeoutCounter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[12:9]),
        .S(TimeoutCounter[12:9]));
  CARRY4 TimeoutCounter0_carry__2
       (.CI(TimeoutCounter0_carry__1_n_0),
        .CO({TimeoutCounter0_carry__2_n_0,TimeoutCounter0_carry__2_n_1,TimeoutCounter0_carry__2_n_2,TimeoutCounter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[16:13]),
        .S(TimeoutCounter[16:13]));
  CARRY4 TimeoutCounter0_carry__3
       (.CI(TimeoutCounter0_carry__2_n_0),
        .CO({TimeoutCounter0_carry__3_n_0,TimeoutCounter0_carry__3_n_1,TimeoutCounter0_carry__3_n_2,TimeoutCounter0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[20:17]),
        .S(TimeoutCounter[20:17]));
  CARRY4 TimeoutCounter0_carry__4
       (.CI(TimeoutCounter0_carry__3_n_0),
        .CO({TimeoutCounter0_carry__4_n_0,TimeoutCounter0_carry__4_n_1,TimeoutCounter0_carry__4_n_2,TimeoutCounter0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[24:21]),
        .S(TimeoutCounter[24:21]));
  CARRY4 TimeoutCounter0_carry__5
       (.CI(TimeoutCounter0_carry__4_n_0),
        .CO({TimeoutCounter0_carry__5_n_0,TimeoutCounter0_carry__5_n_1,TimeoutCounter0_carry__5_n_2,TimeoutCounter0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[28:25]),
        .S(TimeoutCounter[28:25]));
  CARRY4 TimeoutCounter0_carry__6
       (.CI(TimeoutCounter0_carry__5_n_0),
        .CO({NLW_TimeoutCounter0_carry__6_CO_UNCONNECTED[3:2],TimeoutCounter0_carry__6_n_2,TimeoutCounter0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_TimeoutCounter0_carry__6_O_UNCONNECTED[3],p_0_in[31:29]}),
        .S({1'b0,TimeoutCounter[31:29]}));
  LUT6 #(
    .INIT(64'h0000000005100010)) 
    \TimeoutCounter[0]_i_1 
       (.I0(MainState1_carry__2_n_0),
        .I1(lbus_in_complete),
        .I2(\TimeoutCounter[31]_i_3_n_0 ),
        .I3(\TimeoutCounter[31]_i_4_n_0 ),
        .I4(lbus_in_addr_OOR),
        .I5(TimeoutCounter[0]),
        .O(\TimeoutCounter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA88A8AAAAAAA8AA)) 
    \TimeoutCounter[31]_i_1 
       (.I0(\TimeoutCounter[31]_i_2_n_0 ),
        .I1(MainState1_carry__2_n_0),
        .I2(lbus_in_complete),
        .I3(\TimeoutCounter[31]_i_3_n_0 ),
        .I4(\TimeoutCounter[31]_i_4_n_0 ),
        .I5(lbus_in_addr_OOR),
        .O(\TimeoutCounter[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0012060000000000)) 
    \TimeoutCounter[31]_i_2 
       (.I0(MainState__0[3]),
        .I1(MainState__0[4]),
        .I2(MainState__0[1]),
        .I3(MainState__0[0]),
        .I4(MainState__0[2]),
        .I5(s_axi_aresentn),
        .O(\TimeoutCounter[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \TimeoutCounter[31]_i_3 
       (.I0(MainState__0[4]),
        .I1(MainState__0[3]),
        .O(\TimeoutCounter[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \TimeoutCounter[31]_i_4 
       (.I0(MainState__0[3]),
        .I1(MainState__0[2]),
        .I2(MainState__0[4]),
        .O(\TimeoutCounter[31]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \TimeoutCounter_reg[0] 
       (.C(s_axi_aclk),
        .CE(\TimeoutCounter[31]_i_2_n_0 ),
        .D(\TimeoutCounter[0]_i_1_n_0 ),
        .Q(TimeoutCounter[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \TimeoutCounter_reg[10] 
       (.C(s_axi_aclk),
        .CE(\TimeoutCounter[31]_i_2_n_0 ),
        .D(p_0_in[10]),
        .Q(TimeoutCounter[10]),
        .R(\TimeoutCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \TimeoutCounter_reg[11] 
       (.C(s_axi_aclk),
        .CE(\TimeoutCounter[31]_i_2_n_0 ),
        .D(p_0_in[11]),
        .Q(TimeoutCounter[11]),
        .R(\TimeoutCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \TimeoutCounter_reg[12] 
       (.C(s_axi_aclk),
        .CE(\TimeoutCounter[31]_i_2_n_0 ),
        .D(p_0_in[12]),
        .Q(TimeoutCounter[12]),
        .R(\TimeoutCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \TimeoutCounter_reg[13] 
       (.C(s_axi_aclk),
        .CE(\TimeoutCounter[31]_i_2_n_0 ),
        .D(p_0_in[13]),
        .Q(TimeoutCounter[13]),
        .R(\TimeoutCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \TimeoutCounter_reg[14] 
       (.C(s_axi_aclk),
        .CE(\TimeoutCounter[31]_i_2_n_0 ),
        .D(p_0_in[14]),
        .Q(TimeoutCounter[14]),
        .R(\TimeoutCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \TimeoutCounter_reg[15] 
       (.C(s_axi_aclk),
        .CE(\TimeoutCounter[31]_i_2_n_0 ),
        .D(p_0_in[15]),
        .Q(TimeoutCounter[15]),
        .R(\TimeoutCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \TimeoutCounter_reg[16] 
       (.C(s_axi_aclk),
        .CE(\TimeoutCounter[31]_i_2_n_0 ),
        .D(p_0_in[16]),
        .Q(TimeoutCounter[16]),
        .R(\TimeoutCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \TimeoutCounter_reg[17] 
       (.C(s_axi_aclk),
        .CE(\TimeoutCounter[31]_i_2_n_0 ),
        .D(p_0_in[17]),
        .Q(TimeoutCounter[17]),
        .R(\TimeoutCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \TimeoutCounter_reg[18] 
       (.C(s_axi_aclk),
        .CE(\TimeoutCounter[31]_i_2_n_0 ),
        .D(p_0_in[18]),
        .Q(TimeoutCounter[18]),
        .R(\TimeoutCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \TimeoutCounter_reg[19] 
       (.C(s_axi_aclk),
        .CE(\TimeoutCounter[31]_i_2_n_0 ),
        .D(p_0_in[19]),
        .Q(TimeoutCounter[19]),
        .R(\TimeoutCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \TimeoutCounter_reg[1] 
       (.C(s_axi_aclk),
        .CE(\TimeoutCounter[31]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(TimeoutCounter[1]),
        .R(\TimeoutCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \TimeoutCounter_reg[20] 
       (.C(s_axi_aclk),
        .CE(\TimeoutCounter[31]_i_2_n_0 ),
        .D(p_0_in[20]),
        .Q(TimeoutCounter[20]),
        .R(\TimeoutCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \TimeoutCounter_reg[21] 
       (.C(s_axi_aclk),
        .CE(\TimeoutCounter[31]_i_2_n_0 ),
        .D(p_0_in[21]),
        .Q(TimeoutCounter[21]),
        .R(\TimeoutCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \TimeoutCounter_reg[22] 
       (.C(s_axi_aclk),
        .CE(\TimeoutCounter[31]_i_2_n_0 ),
        .D(p_0_in[22]),
        .Q(TimeoutCounter[22]),
        .R(\TimeoutCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \TimeoutCounter_reg[23] 
       (.C(s_axi_aclk),
        .CE(\TimeoutCounter[31]_i_2_n_0 ),
        .D(p_0_in[23]),
        .Q(TimeoutCounter[23]),
        .R(\TimeoutCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \TimeoutCounter_reg[24] 
       (.C(s_axi_aclk),
        .CE(\TimeoutCounter[31]_i_2_n_0 ),
        .D(p_0_in[24]),
        .Q(TimeoutCounter[24]),
        .R(\TimeoutCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \TimeoutCounter_reg[25] 
       (.C(s_axi_aclk),
        .CE(\TimeoutCounter[31]_i_2_n_0 ),
        .D(p_0_in[25]),
        .Q(TimeoutCounter[25]),
        .R(\TimeoutCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \TimeoutCounter_reg[26] 
       (.C(s_axi_aclk),
        .CE(\TimeoutCounter[31]_i_2_n_0 ),
        .D(p_0_in[26]),
        .Q(TimeoutCounter[26]),
        .R(\TimeoutCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \TimeoutCounter_reg[27] 
       (.C(s_axi_aclk),
        .CE(\TimeoutCounter[31]_i_2_n_0 ),
        .D(p_0_in[27]),
        .Q(TimeoutCounter[27]),
        .R(\TimeoutCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \TimeoutCounter_reg[28] 
       (.C(s_axi_aclk),
        .CE(\TimeoutCounter[31]_i_2_n_0 ),
        .D(p_0_in[28]),
        .Q(TimeoutCounter[28]),
        .R(\TimeoutCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \TimeoutCounter_reg[29] 
       (.C(s_axi_aclk),
        .CE(\TimeoutCounter[31]_i_2_n_0 ),
        .D(p_0_in[29]),
        .Q(TimeoutCounter[29]),
        .R(\TimeoutCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \TimeoutCounter_reg[2] 
       (.C(s_axi_aclk),
        .CE(\TimeoutCounter[31]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(TimeoutCounter[2]),
        .R(\TimeoutCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \TimeoutCounter_reg[30] 
       (.C(s_axi_aclk),
        .CE(\TimeoutCounter[31]_i_2_n_0 ),
        .D(p_0_in[30]),
        .Q(TimeoutCounter[30]),
        .R(\TimeoutCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \TimeoutCounter_reg[31] 
       (.C(s_axi_aclk),
        .CE(\TimeoutCounter[31]_i_2_n_0 ),
        .D(p_0_in[31]),
        .Q(TimeoutCounter[31]),
        .R(\TimeoutCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \TimeoutCounter_reg[3] 
       (.C(s_axi_aclk),
        .CE(\TimeoutCounter[31]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(TimeoutCounter[3]),
        .R(\TimeoutCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \TimeoutCounter_reg[4] 
       (.C(s_axi_aclk),
        .CE(\TimeoutCounter[31]_i_2_n_0 ),
        .D(p_0_in[4]),
        .Q(TimeoutCounter[4]),
        .R(\TimeoutCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \TimeoutCounter_reg[5] 
       (.C(s_axi_aclk),
        .CE(\TimeoutCounter[31]_i_2_n_0 ),
        .D(p_0_in[5]),
        .Q(TimeoutCounter[5]),
        .R(\TimeoutCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \TimeoutCounter_reg[6] 
       (.C(s_axi_aclk),
        .CE(\TimeoutCounter[31]_i_2_n_0 ),
        .D(p_0_in[6]),
        .Q(TimeoutCounter[6]),
        .R(\TimeoutCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \TimeoutCounter_reg[7] 
       (.C(s_axi_aclk),
        .CE(\TimeoutCounter[31]_i_2_n_0 ),
        .D(p_0_in[7]),
        .Q(TimeoutCounter[7]),
        .R(\TimeoutCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \TimeoutCounter_reg[8] 
       (.C(s_axi_aclk),
        .CE(\TimeoutCounter[31]_i_2_n_0 ),
        .D(p_0_in[8]),
        .Q(TimeoutCounter[8]),
        .R(\TimeoutCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \TimeoutCounter_reg[9] 
       (.C(s_axi_aclk),
        .CE(\TimeoutCounter[31]_i_2_n_0 ),
        .D(p_0_in[9]),
        .Q(TimeoutCounter[9]),
        .R(\TimeoutCounter[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \WriteDataBuffer[15]_i_1 
       (.I0(\WriteDataBuffer[31]_i_2_n_0 ),
        .I1(s_axi_wstrb[1]),
        .O(\WriteDataBuffer[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \WriteDataBuffer[23]_i_1 
       (.I0(\WriteDataBuffer[31]_i_2_n_0 ),
        .I1(s_axi_wstrb[2]),
        .O(\WriteDataBuffer[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \WriteDataBuffer[31]_i_1 
       (.I0(\WriteDataBuffer[31]_i_2_n_0 ),
        .I1(s_axi_wstrb[3]),
        .O(\WriteDataBuffer[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \WriteDataBuffer[31]_i_2 
       (.I0(MainState__0[0]),
        .I1(MainState__0[1]),
        .I2(\WriteDataBuffer[31]_i_3_n_0 ),
        .I3(s_axi_wvalid),
        .I4(s_axi_aresentn),
        .I5(MainState__0[2]),
        .O(\WriteDataBuffer[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \WriteDataBuffer[31]_i_3 
       (.I0(MainState__0[3]),
        .I1(MainState__0[4]),
        .O(\WriteDataBuffer[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \WriteDataBuffer[7]_i_1 
       (.I0(\WriteDataBuffer[31]_i_2_n_0 ),
        .I1(s_axi_wstrb[0]),
        .O(\WriteDataBuffer[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \WriteDataBuffer_reg[0] 
       (.C(s_axi_aclk),
        .CE(\WriteDataBuffer[31]_i_2_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(WriteDataBuffer[0]),
        .R(\WriteDataBuffer[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \WriteDataBuffer_reg[10] 
       (.C(s_axi_aclk),
        .CE(\WriteDataBuffer[31]_i_2_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(WriteDataBuffer[10]),
        .R(\WriteDataBuffer[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \WriteDataBuffer_reg[11] 
       (.C(s_axi_aclk),
        .CE(\WriteDataBuffer[31]_i_2_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(WriteDataBuffer[11]),
        .R(\WriteDataBuffer[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \WriteDataBuffer_reg[12] 
       (.C(s_axi_aclk),
        .CE(\WriteDataBuffer[31]_i_2_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(WriteDataBuffer[12]),
        .R(\WriteDataBuffer[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \WriteDataBuffer_reg[13] 
       (.C(s_axi_aclk),
        .CE(\WriteDataBuffer[31]_i_2_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(WriteDataBuffer[13]),
        .R(\WriteDataBuffer[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \WriteDataBuffer_reg[14] 
       (.C(s_axi_aclk),
        .CE(\WriteDataBuffer[31]_i_2_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(WriteDataBuffer[14]),
        .R(\WriteDataBuffer[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \WriteDataBuffer_reg[15] 
       (.C(s_axi_aclk),
        .CE(\WriteDataBuffer[31]_i_2_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(WriteDataBuffer[15]),
        .R(\WriteDataBuffer[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \WriteDataBuffer_reg[16] 
       (.C(s_axi_aclk),
        .CE(\WriteDataBuffer[31]_i_2_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(WriteDataBuffer[16]),
        .R(\WriteDataBuffer[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \WriteDataBuffer_reg[17] 
       (.C(s_axi_aclk),
        .CE(\WriteDataBuffer[31]_i_2_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(WriteDataBuffer[17]),
        .R(\WriteDataBuffer[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \WriteDataBuffer_reg[18] 
       (.C(s_axi_aclk),
        .CE(\WriteDataBuffer[31]_i_2_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(WriteDataBuffer[18]),
        .R(\WriteDataBuffer[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \WriteDataBuffer_reg[19] 
       (.C(s_axi_aclk),
        .CE(\WriteDataBuffer[31]_i_2_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(WriteDataBuffer[19]),
        .R(\WriteDataBuffer[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \WriteDataBuffer_reg[1] 
       (.C(s_axi_aclk),
        .CE(\WriteDataBuffer[31]_i_2_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(WriteDataBuffer[1]),
        .R(\WriteDataBuffer[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \WriteDataBuffer_reg[20] 
       (.C(s_axi_aclk),
        .CE(\WriteDataBuffer[31]_i_2_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(WriteDataBuffer[20]),
        .R(\WriteDataBuffer[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \WriteDataBuffer_reg[21] 
       (.C(s_axi_aclk),
        .CE(\WriteDataBuffer[31]_i_2_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(WriteDataBuffer[21]),
        .R(\WriteDataBuffer[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \WriteDataBuffer_reg[22] 
       (.C(s_axi_aclk),
        .CE(\WriteDataBuffer[31]_i_2_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(WriteDataBuffer[22]),
        .R(\WriteDataBuffer[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \WriteDataBuffer_reg[23] 
       (.C(s_axi_aclk),
        .CE(\WriteDataBuffer[31]_i_2_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(WriteDataBuffer[23]),
        .R(\WriteDataBuffer[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \WriteDataBuffer_reg[24] 
       (.C(s_axi_aclk),
        .CE(\WriteDataBuffer[31]_i_2_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(WriteDataBuffer[24]),
        .R(\WriteDataBuffer[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \WriteDataBuffer_reg[25] 
       (.C(s_axi_aclk),
        .CE(\WriteDataBuffer[31]_i_2_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(WriteDataBuffer[25]),
        .R(\WriteDataBuffer[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \WriteDataBuffer_reg[26] 
       (.C(s_axi_aclk),
        .CE(\WriteDataBuffer[31]_i_2_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(WriteDataBuffer[26]),
        .R(\WriteDataBuffer[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \WriteDataBuffer_reg[27] 
       (.C(s_axi_aclk),
        .CE(\WriteDataBuffer[31]_i_2_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(WriteDataBuffer[27]),
        .R(\WriteDataBuffer[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \WriteDataBuffer_reg[28] 
       (.C(s_axi_aclk),
        .CE(\WriteDataBuffer[31]_i_2_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(WriteDataBuffer[28]),
        .R(\WriteDataBuffer[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \WriteDataBuffer_reg[29] 
       (.C(s_axi_aclk),
        .CE(\WriteDataBuffer[31]_i_2_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(WriteDataBuffer[29]),
        .R(\WriteDataBuffer[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \WriteDataBuffer_reg[2] 
       (.C(s_axi_aclk),
        .CE(\WriteDataBuffer[31]_i_2_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(WriteDataBuffer[2]),
        .R(\WriteDataBuffer[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \WriteDataBuffer_reg[30] 
       (.C(s_axi_aclk),
        .CE(\WriteDataBuffer[31]_i_2_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(WriteDataBuffer[30]),
        .R(\WriteDataBuffer[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \WriteDataBuffer_reg[31] 
       (.C(s_axi_aclk),
        .CE(\WriteDataBuffer[31]_i_2_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(WriteDataBuffer[31]),
        .R(\WriteDataBuffer[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \WriteDataBuffer_reg[3] 
       (.C(s_axi_aclk),
        .CE(\WriteDataBuffer[31]_i_2_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(WriteDataBuffer[3]),
        .R(\WriteDataBuffer[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \WriteDataBuffer_reg[4] 
       (.C(s_axi_aclk),
        .CE(\WriteDataBuffer[31]_i_2_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(WriteDataBuffer[4]),
        .R(\WriteDataBuffer[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \WriteDataBuffer_reg[5] 
       (.C(s_axi_aclk),
        .CE(\WriteDataBuffer[31]_i_2_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(WriteDataBuffer[5]),
        .R(\WriteDataBuffer[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \WriteDataBuffer_reg[6] 
       (.C(s_axi_aclk),
        .CE(\WriteDataBuffer[31]_i_2_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(WriteDataBuffer[6]),
        .R(\WriteDataBuffer[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \WriteDataBuffer_reg[7] 
       (.C(s_axi_aclk),
        .CE(\WriteDataBuffer[31]_i_2_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(WriteDataBuffer[7]),
        .R(\WriteDataBuffer[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \WriteDataBuffer_reg[8] 
       (.C(s_axi_aclk),
        .CE(\WriteDataBuffer[31]_i_2_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(WriteDataBuffer[8]),
        .R(\WriteDataBuffer[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \WriteDataBuffer_reg[9] 
       (.C(s_axi_aclk),
        .CE(\WriteDataBuffer[31]_i_2_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(WriteDataBuffer[9]),
        .R(\WriteDataBuffer[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0A000C0C)) 
    \lbus_out_address[0]_i_1 
       (.I0(ReadAddressBuffer[0]),
        .I1(s_axi_awaddr[0]),
        .I2(MainState__0[4]),
        .I3(MainState__0[1]),
        .I4(MainState__0[3]),
        .O(\lbus_out_address[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0A000C0C)) 
    \lbus_out_address[10]_i_1 
       (.I0(ReadAddressBuffer[10]),
        .I1(s_axi_awaddr[10]),
        .I2(MainState__0[4]),
        .I3(MainState__0[1]),
        .I4(MainState__0[3]),
        .O(\lbus_out_address[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0A000C0C)) 
    \lbus_out_address[11]_i_1 
       (.I0(ReadAddressBuffer[11]),
        .I1(s_axi_awaddr[11]),
        .I2(MainState__0[4]),
        .I3(MainState__0[1]),
        .I4(MainState__0[3]),
        .O(\lbus_out_address[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0A000C0C)) 
    \lbus_out_address[12]_i_1 
       (.I0(ReadAddressBuffer[12]),
        .I1(s_axi_awaddr[12]),
        .I2(MainState__0[4]),
        .I3(MainState__0[1]),
        .I4(MainState__0[3]),
        .O(\lbus_out_address[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0A000C0C)) 
    \lbus_out_address[13]_i_1 
       (.I0(ReadAddressBuffer[13]),
        .I1(s_axi_awaddr[13]),
        .I2(MainState__0[4]),
        .I3(MainState__0[1]),
        .I4(MainState__0[3]),
        .O(\lbus_out_address[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0A000C0C)) 
    \lbus_out_address[14]_i_1 
       (.I0(ReadAddressBuffer[14]),
        .I1(s_axi_awaddr[14]),
        .I2(MainState__0[4]),
        .I3(MainState__0[1]),
        .I4(MainState__0[3]),
        .O(\lbus_out_address[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0A000C0C)) 
    \lbus_out_address[15]_i_1 
       (.I0(ReadAddressBuffer[15]),
        .I1(s_axi_awaddr[15]),
        .I2(MainState__0[4]),
        .I3(MainState__0[1]),
        .I4(MainState__0[3]),
        .O(\lbus_out_address[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0A000C0C)) 
    \lbus_out_address[16]_i_1 
       (.I0(ReadAddressBuffer[16]),
        .I1(s_axi_awaddr[16]),
        .I2(MainState__0[4]),
        .I3(MainState__0[1]),
        .I4(MainState__0[3]),
        .O(\lbus_out_address[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0A000C0C)) 
    \lbus_out_address[17]_i_1 
       (.I0(ReadAddressBuffer[17]),
        .I1(s_axi_awaddr[17]),
        .I2(MainState__0[4]),
        .I3(MainState__0[1]),
        .I4(MainState__0[3]),
        .O(\lbus_out_address[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0A000C0C)) 
    \lbus_out_address[18]_i_1 
       (.I0(ReadAddressBuffer[18]),
        .I1(s_axi_awaddr[18]),
        .I2(MainState__0[4]),
        .I3(MainState__0[1]),
        .I4(MainState__0[3]),
        .O(\lbus_out_address[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0A000C0C)) 
    \lbus_out_address[19]_i_1 
       (.I0(ReadAddressBuffer[19]),
        .I1(s_axi_awaddr[19]),
        .I2(MainState__0[4]),
        .I3(MainState__0[1]),
        .I4(MainState__0[3]),
        .O(\lbus_out_address[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0A000C0C)) 
    \lbus_out_address[1]_i_1 
       (.I0(ReadAddressBuffer[1]),
        .I1(s_axi_awaddr[1]),
        .I2(MainState__0[4]),
        .I3(MainState__0[1]),
        .I4(MainState__0[3]),
        .O(\lbus_out_address[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0A000C0C)) 
    \lbus_out_address[20]_i_1 
       (.I0(ReadAddressBuffer[20]),
        .I1(s_axi_awaddr[20]),
        .I2(MainState__0[4]),
        .I3(MainState__0[1]),
        .I4(MainState__0[3]),
        .O(\lbus_out_address[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0A000C0C)) 
    \lbus_out_address[21]_i_1 
       (.I0(ReadAddressBuffer[21]),
        .I1(s_axi_awaddr[21]),
        .I2(MainState__0[4]),
        .I3(MainState__0[1]),
        .I4(MainState__0[3]),
        .O(\lbus_out_address[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0A000C0C)) 
    \lbus_out_address[22]_i_1 
       (.I0(ReadAddressBuffer[22]),
        .I1(s_axi_awaddr[22]),
        .I2(MainState__0[4]),
        .I3(MainState__0[1]),
        .I4(MainState__0[3]),
        .O(\lbus_out_address[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0A000C0C)) 
    \lbus_out_address[23]_i_1 
       (.I0(ReadAddressBuffer[23]),
        .I1(s_axi_awaddr[23]),
        .I2(MainState__0[4]),
        .I3(MainState__0[1]),
        .I4(MainState__0[3]),
        .O(\lbus_out_address[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0A000C0C)) 
    \lbus_out_address[24]_i_1 
       (.I0(ReadAddressBuffer[24]),
        .I1(s_axi_awaddr[24]),
        .I2(MainState__0[4]),
        .I3(MainState__0[1]),
        .I4(MainState__0[3]),
        .O(\lbus_out_address[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0A000C0C)) 
    \lbus_out_address[25]_i_1 
       (.I0(ReadAddressBuffer[25]),
        .I1(s_axi_awaddr[25]),
        .I2(MainState__0[4]),
        .I3(MainState__0[1]),
        .I4(MainState__0[3]),
        .O(\lbus_out_address[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0A000C0C)) 
    \lbus_out_address[26]_i_1 
       (.I0(ReadAddressBuffer[26]),
        .I1(s_axi_awaddr[26]),
        .I2(MainState__0[4]),
        .I3(MainState__0[1]),
        .I4(MainState__0[3]),
        .O(\lbus_out_address[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0A000C0C)) 
    \lbus_out_address[27]_i_1 
       (.I0(ReadAddressBuffer[27]),
        .I1(s_axi_awaddr[27]),
        .I2(MainState__0[4]),
        .I3(MainState__0[1]),
        .I4(MainState__0[3]),
        .O(\lbus_out_address[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0A000C0C)) 
    \lbus_out_address[28]_i_1 
       (.I0(ReadAddressBuffer[28]),
        .I1(s_axi_awaddr[28]),
        .I2(MainState__0[4]),
        .I3(MainState__0[1]),
        .I4(MainState__0[3]),
        .O(\lbus_out_address[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0A000C0C)) 
    \lbus_out_address[29]_i_1 
       (.I0(ReadAddressBuffer[29]),
        .I1(s_axi_awaddr[29]),
        .I2(MainState__0[4]),
        .I3(MainState__0[1]),
        .I4(MainState__0[3]),
        .O(\lbus_out_address[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0A000C0C)) 
    \lbus_out_address[2]_i_1 
       (.I0(ReadAddressBuffer[2]),
        .I1(s_axi_awaddr[2]),
        .I2(MainState__0[4]),
        .I3(MainState__0[1]),
        .I4(MainState__0[3]),
        .O(\lbus_out_address[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0A000C0C)) 
    \lbus_out_address[30]_i_1 
       (.I0(ReadAddressBuffer[30]),
        .I1(s_axi_awaddr[30]),
        .I2(MainState__0[4]),
        .I3(MainState__0[1]),
        .I4(MainState__0[3]),
        .O(\lbus_out_address[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000470000000000)) 
    \lbus_out_address[31]_i_1 
       (.I0(MainState__0[4]),
        .I1(MainState__0[3]),
        .I2(MainState__0[1]),
        .I3(MainState__0[0]),
        .I4(MainState__0[2]),
        .I5(s_axi_aresentn),
        .O(\lbus_out_address[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0A000C0C)) 
    \lbus_out_address[31]_i_2 
       (.I0(ReadAddressBuffer[31]),
        .I1(s_axi_awaddr[31]),
        .I2(MainState__0[4]),
        .I3(MainState__0[1]),
        .I4(MainState__0[3]),
        .O(\lbus_out_address[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h0A000C0C)) 
    \lbus_out_address[3]_i_1 
       (.I0(ReadAddressBuffer[3]),
        .I1(s_axi_awaddr[3]),
        .I2(MainState__0[4]),
        .I3(MainState__0[1]),
        .I4(MainState__0[3]),
        .O(\lbus_out_address[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0A000C0C)) 
    \lbus_out_address[4]_i_1 
       (.I0(ReadAddressBuffer[4]),
        .I1(s_axi_awaddr[4]),
        .I2(MainState__0[4]),
        .I3(MainState__0[1]),
        .I4(MainState__0[3]),
        .O(\lbus_out_address[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0A000C0C)) 
    \lbus_out_address[5]_i_1 
       (.I0(ReadAddressBuffer[5]),
        .I1(s_axi_awaddr[5]),
        .I2(MainState__0[4]),
        .I3(MainState__0[1]),
        .I4(MainState__0[3]),
        .O(\lbus_out_address[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0A000C0C)) 
    \lbus_out_address[6]_i_1 
       (.I0(ReadAddressBuffer[6]),
        .I1(s_axi_awaddr[6]),
        .I2(MainState__0[4]),
        .I3(MainState__0[1]),
        .I4(MainState__0[3]),
        .O(\lbus_out_address[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0A000C0C)) 
    \lbus_out_address[7]_i_1 
       (.I0(ReadAddressBuffer[7]),
        .I1(s_axi_awaddr[7]),
        .I2(MainState__0[4]),
        .I3(MainState__0[1]),
        .I4(MainState__0[3]),
        .O(\lbus_out_address[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0A000C0C)) 
    \lbus_out_address[8]_i_1 
       (.I0(ReadAddressBuffer[8]),
        .I1(s_axi_awaddr[8]),
        .I2(MainState__0[4]),
        .I3(MainState__0[1]),
        .I4(MainState__0[3]),
        .O(\lbus_out_address[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0A000C0C)) 
    \lbus_out_address[9]_i_1 
       (.I0(ReadAddressBuffer[9]),
        .I1(s_axi_awaddr[9]),
        .I2(MainState__0[4]),
        .I3(MainState__0[1]),
        .I4(MainState__0[3]),
        .O(\lbus_out_address[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lbus_out_address_reg[0] 
       (.C(s_axi_aclk),
        .CE(\lbus_out_address[31]_i_1_n_0 ),
        .D(\lbus_out_address[0]_i_1_n_0 ),
        .Q(lbus_out_address[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lbus_out_address_reg[10] 
       (.C(s_axi_aclk),
        .CE(\lbus_out_address[31]_i_1_n_0 ),
        .D(\lbus_out_address[10]_i_1_n_0 ),
        .Q(lbus_out_address[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lbus_out_address_reg[11] 
       (.C(s_axi_aclk),
        .CE(\lbus_out_address[31]_i_1_n_0 ),
        .D(\lbus_out_address[11]_i_1_n_0 ),
        .Q(lbus_out_address[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lbus_out_address_reg[12] 
       (.C(s_axi_aclk),
        .CE(\lbus_out_address[31]_i_1_n_0 ),
        .D(\lbus_out_address[12]_i_1_n_0 ),
        .Q(lbus_out_address[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lbus_out_address_reg[13] 
       (.C(s_axi_aclk),
        .CE(\lbus_out_address[31]_i_1_n_0 ),
        .D(\lbus_out_address[13]_i_1_n_0 ),
        .Q(lbus_out_address[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lbus_out_address_reg[14] 
       (.C(s_axi_aclk),
        .CE(\lbus_out_address[31]_i_1_n_0 ),
        .D(\lbus_out_address[14]_i_1_n_0 ),
        .Q(lbus_out_address[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lbus_out_address_reg[15] 
       (.C(s_axi_aclk),
        .CE(\lbus_out_address[31]_i_1_n_0 ),
        .D(\lbus_out_address[15]_i_1_n_0 ),
        .Q(lbus_out_address[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lbus_out_address_reg[16] 
       (.C(s_axi_aclk),
        .CE(\lbus_out_address[31]_i_1_n_0 ),
        .D(\lbus_out_address[16]_i_1_n_0 ),
        .Q(lbus_out_address[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lbus_out_address_reg[17] 
       (.C(s_axi_aclk),
        .CE(\lbus_out_address[31]_i_1_n_0 ),
        .D(\lbus_out_address[17]_i_1_n_0 ),
        .Q(lbus_out_address[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lbus_out_address_reg[18] 
       (.C(s_axi_aclk),
        .CE(\lbus_out_address[31]_i_1_n_0 ),
        .D(\lbus_out_address[18]_i_1_n_0 ),
        .Q(lbus_out_address[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lbus_out_address_reg[19] 
       (.C(s_axi_aclk),
        .CE(\lbus_out_address[31]_i_1_n_0 ),
        .D(\lbus_out_address[19]_i_1_n_0 ),
        .Q(lbus_out_address[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lbus_out_address_reg[1] 
       (.C(s_axi_aclk),
        .CE(\lbus_out_address[31]_i_1_n_0 ),
        .D(\lbus_out_address[1]_i_1_n_0 ),
        .Q(lbus_out_address[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lbus_out_address_reg[20] 
       (.C(s_axi_aclk),
        .CE(\lbus_out_address[31]_i_1_n_0 ),
        .D(\lbus_out_address[20]_i_1_n_0 ),
        .Q(lbus_out_address[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lbus_out_address_reg[21] 
       (.C(s_axi_aclk),
        .CE(\lbus_out_address[31]_i_1_n_0 ),
        .D(\lbus_out_address[21]_i_1_n_0 ),
        .Q(lbus_out_address[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lbus_out_address_reg[22] 
       (.C(s_axi_aclk),
        .CE(\lbus_out_address[31]_i_1_n_0 ),
        .D(\lbus_out_address[22]_i_1_n_0 ),
        .Q(lbus_out_address[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lbus_out_address_reg[23] 
       (.C(s_axi_aclk),
        .CE(\lbus_out_address[31]_i_1_n_0 ),
        .D(\lbus_out_address[23]_i_1_n_0 ),
        .Q(lbus_out_address[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lbus_out_address_reg[24] 
       (.C(s_axi_aclk),
        .CE(\lbus_out_address[31]_i_1_n_0 ),
        .D(\lbus_out_address[24]_i_1_n_0 ),
        .Q(lbus_out_address[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lbus_out_address_reg[25] 
       (.C(s_axi_aclk),
        .CE(\lbus_out_address[31]_i_1_n_0 ),
        .D(\lbus_out_address[25]_i_1_n_0 ),
        .Q(lbus_out_address[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lbus_out_address_reg[26] 
       (.C(s_axi_aclk),
        .CE(\lbus_out_address[31]_i_1_n_0 ),
        .D(\lbus_out_address[26]_i_1_n_0 ),
        .Q(lbus_out_address[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lbus_out_address_reg[27] 
       (.C(s_axi_aclk),
        .CE(\lbus_out_address[31]_i_1_n_0 ),
        .D(\lbus_out_address[27]_i_1_n_0 ),
        .Q(lbus_out_address[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lbus_out_address_reg[28] 
       (.C(s_axi_aclk),
        .CE(\lbus_out_address[31]_i_1_n_0 ),
        .D(\lbus_out_address[28]_i_1_n_0 ),
        .Q(lbus_out_address[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lbus_out_address_reg[29] 
       (.C(s_axi_aclk),
        .CE(\lbus_out_address[31]_i_1_n_0 ),
        .D(\lbus_out_address[29]_i_1_n_0 ),
        .Q(lbus_out_address[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lbus_out_address_reg[2] 
       (.C(s_axi_aclk),
        .CE(\lbus_out_address[31]_i_1_n_0 ),
        .D(\lbus_out_address[2]_i_1_n_0 ),
        .Q(lbus_out_address[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lbus_out_address_reg[30] 
       (.C(s_axi_aclk),
        .CE(\lbus_out_address[31]_i_1_n_0 ),
        .D(\lbus_out_address[30]_i_1_n_0 ),
        .Q(lbus_out_address[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lbus_out_address_reg[31] 
       (.C(s_axi_aclk),
        .CE(\lbus_out_address[31]_i_1_n_0 ),
        .D(\lbus_out_address[31]_i_2_n_0 ),
        .Q(lbus_out_address[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lbus_out_address_reg[3] 
       (.C(s_axi_aclk),
        .CE(\lbus_out_address[31]_i_1_n_0 ),
        .D(\lbus_out_address[3]_i_1_n_0 ),
        .Q(lbus_out_address[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lbus_out_address_reg[4] 
       (.C(s_axi_aclk),
        .CE(\lbus_out_address[31]_i_1_n_0 ),
        .D(\lbus_out_address[4]_i_1_n_0 ),
        .Q(lbus_out_address[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lbus_out_address_reg[5] 
       (.C(s_axi_aclk),
        .CE(\lbus_out_address[31]_i_1_n_0 ),
        .D(\lbus_out_address[5]_i_1_n_0 ),
        .Q(lbus_out_address[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lbus_out_address_reg[6] 
       (.C(s_axi_aclk),
        .CE(\lbus_out_address[31]_i_1_n_0 ),
        .D(\lbus_out_address[6]_i_1_n_0 ),
        .Q(lbus_out_address[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lbus_out_address_reg[7] 
       (.C(s_axi_aclk),
        .CE(\lbus_out_address[31]_i_1_n_0 ),
        .D(\lbus_out_address[7]_i_1_n_0 ),
        .Q(lbus_out_address[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lbus_out_address_reg[8] 
       (.C(s_axi_aclk),
        .CE(\lbus_out_address[31]_i_1_n_0 ),
        .D(\lbus_out_address[8]_i_1_n_0 ),
        .Q(lbus_out_address[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lbus_out_address_reg[9] 
       (.C(s_axi_aclk),
        .CE(\lbus_out_address[31]_i_1_n_0 ),
        .D(\lbus_out_address[9]_i_1_n_0 ),
        .Q(lbus_out_address[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \lbus_out_data[31]_i_1 
       (.I0(s_axi_aresentn),
        .I1(MainState__0[2]),
        .I2(MainState__0[0]),
        .I3(MainState__0[1]),
        .I4(MainState__0[4]),
        .I5(MainState__0[3]),
        .O(\lbus_out_data[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000006000000000)) 
    \lbus_out_data[31]_i_2 
       (.I0(MainState__0[1]),
        .I1(MainState__0[3]),
        .I2(MainState__0[0]),
        .I3(MainState__0[4]),
        .I4(MainState__0[2]),
        .I5(s_axi_aresentn),
        .O(s_axi_wready1_out));
  FDRE #(
    .INIT(1'b0)) 
    \lbus_out_data_reg[0] 
       (.C(s_axi_aclk),
        .CE(s_axi_wready1_out),
        .D(WriteDataBuffer[0]),
        .Q(lbus_out_data[0]),
        .R(\lbus_out_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lbus_out_data_reg[10] 
       (.C(s_axi_aclk),
        .CE(s_axi_wready1_out),
        .D(WriteDataBuffer[10]),
        .Q(lbus_out_data[10]),
        .R(\lbus_out_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lbus_out_data_reg[11] 
       (.C(s_axi_aclk),
        .CE(s_axi_wready1_out),
        .D(WriteDataBuffer[11]),
        .Q(lbus_out_data[11]),
        .R(\lbus_out_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lbus_out_data_reg[12] 
       (.C(s_axi_aclk),
        .CE(s_axi_wready1_out),
        .D(WriteDataBuffer[12]),
        .Q(lbus_out_data[12]),
        .R(\lbus_out_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lbus_out_data_reg[13] 
       (.C(s_axi_aclk),
        .CE(s_axi_wready1_out),
        .D(WriteDataBuffer[13]),
        .Q(lbus_out_data[13]),
        .R(\lbus_out_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lbus_out_data_reg[14] 
       (.C(s_axi_aclk),
        .CE(s_axi_wready1_out),
        .D(WriteDataBuffer[14]),
        .Q(lbus_out_data[14]),
        .R(\lbus_out_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lbus_out_data_reg[15] 
       (.C(s_axi_aclk),
        .CE(s_axi_wready1_out),
        .D(WriteDataBuffer[15]),
        .Q(lbus_out_data[15]),
        .R(\lbus_out_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lbus_out_data_reg[16] 
       (.C(s_axi_aclk),
        .CE(s_axi_wready1_out),
        .D(WriteDataBuffer[16]),
        .Q(lbus_out_data[16]),
        .R(\lbus_out_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lbus_out_data_reg[17] 
       (.C(s_axi_aclk),
        .CE(s_axi_wready1_out),
        .D(WriteDataBuffer[17]),
        .Q(lbus_out_data[17]),
        .R(\lbus_out_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lbus_out_data_reg[18] 
       (.C(s_axi_aclk),
        .CE(s_axi_wready1_out),
        .D(WriteDataBuffer[18]),
        .Q(lbus_out_data[18]),
        .R(\lbus_out_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lbus_out_data_reg[19] 
       (.C(s_axi_aclk),
        .CE(s_axi_wready1_out),
        .D(WriteDataBuffer[19]),
        .Q(lbus_out_data[19]),
        .R(\lbus_out_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lbus_out_data_reg[1] 
       (.C(s_axi_aclk),
        .CE(s_axi_wready1_out),
        .D(WriteDataBuffer[1]),
        .Q(lbus_out_data[1]),
        .R(\lbus_out_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lbus_out_data_reg[20] 
       (.C(s_axi_aclk),
        .CE(s_axi_wready1_out),
        .D(WriteDataBuffer[20]),
        .Q(lbus_out_data[20]),
        .R(\lbus_out_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lbus_out_data_reg[21] 
       (.C(s_axi_aclk),
        .CE(s_axi_wready1_out),
        .D(WriteDataBuffer[21]),
        .Q(lbus_out_data[21]),
        .R(\lbus_out_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lbus_out_data_reg[22] 
       (.C(s_axi_aclk),
        .CE(s_axi_wready1_out),
        .D(WriteDataBuffer[22]),
        .Q(lbus_out_data[22]),
        .R(\lbus_out_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lbus_out_data_reg[23] 
       (.C(s_axi_aclk),
        .CE(s_axi_wready1_out),
        .D(WriteDataBuffer[23]),
        .Q(lbus_out_data[23]),
        .R(\lbus_out_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lbus_out_data_reg[24] 
       (.C(s_axi_aclk),
        .CE(s_axi_wready1_out),
        .D(WriteDataBuffer[24]),
        .Q(lbus_out_data[24]),
        .R(\lbus_out_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lbus_out_data_reg[25] 
       (.C(s_axi_aclk),
        .CE(s_axi_wready1_out),
        .D(WriteDataBuffer[25]),
        .Q(lbus_out_data[25]),
        .R(\lbus_out_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lbus_out_data_reg[26] 
       (.C(s_axi_aclk),
        .CE(s_axi_wready1_out),
        .D(WriteDataBuffer[26]),
        .Q(lbus_out_data[26]),
        .R(\lbus_out_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lbus_out_data_reg[27] 
       (.C(s_axi_aclk),
        .CE(s_axi_wready1_out),
        .D(WriteDataBuffer[27]),
        .Q(lbus_out_data[27]),
        .R(\lbus_out_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lbus_out_data_reg[28] 
       (.C(s_axi_aclk),
        .CE(s_axi_wready1_out),
        .D(WriteDataBuffer[28]),
        .Q(lbus_out_data[28]),
        .R(\lbus_out_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lbus_out_data_reg[29] 
       (.C(s_axi_aclk),
        .CE(s_axi_wready1_out),
        .D(WriteDataBuffer[29]),
        .Q(lbus_out_data[29]),
        .R(\lbus_out_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lbus_out_data_reg[2] 
       (.C(s_axi_aclk),
        .CE(s_axi_wready1_out),
        .D(WriteDataBuffer[2]),
        .Q(lbus_out_data[2]),
        .R(\lbus_out_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lbus_out_data_reg[30] 
       (.C(s_axi_aclk),
        .CE(s_axi_wready1_out),
        .D(WriteDataBuffer[30]),
        .Q(lbus_out_data[30]),
        .R(\lbus_out_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lbus_out_data_reg[31] 
       (.C(s_axi_aclk),
        .CE(s_axi_wready1_out),
        .D(WriteDataBuffer[31]),
        .Q(lbus_out_data[31]),
        .R(\lbus_out_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lbus_out_data_reg[3] 
       (.C(s_axi_aclk),
        .CE(s_axi_wready1_out),
        .D(WriteDataBuffer[3]),
        .Q(lbus_out_data[3]),
        .R(\lbus_out_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lbus_out_data_reg[4] 
       (.C(s_axi_aclk),
        .CE(s_axi_wready1_out),
        .D(WriteDataBuffer[4]),
        .Q(lbus_out_data[4]),
        .R(\lbus_out_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lbus_out_data_reg[5] 
       (.C(s_axi_aclk),
        .CE(s_axi_wready1_out),
        .D(WriteDataBuffer[5]),
        .Q(lbus_out_data[5]),
        .R(\lbus_out_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lbus_out_data_reg[6] 
       (.C(s_axi_aclk),
        .CE(s_axi_wready1_out),
        .D(WriteDataBuffer[6]),
        .Q(lbus_out_data[6]),
        .R(\lbus_out_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lbus_out_data_reg[7] 
       (.C(s_axi_aclk),
        .CE(s_axi_wready1_out),
        .D(WriteDataBuffer[7]),
        .Q(lbus_out_data[7]),
        .R(\lbus_out_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lbus_out_data_reg[8] 
       (.C(s_axi_aclk),
        .CE(s_axi_wready1_out),
        .D(WriteDataBuffer[8]),
        .Q(lbus_out_data[8]),
        .R(\lbus_out_data[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lbus_out_data_reg[9] 
       (.C(s_axi_aclk),
        .CE(s_axi_wready1_out),
        .D(WriteDataBuffer[9]),
        .Q(lbus_out_data[9]),
        .R(\lbus_out_data[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1F10)) 
    lbus_out_strobe_i_1
       (.I0(MainState__0[0]),
        .I1(MainState__0[4]),
        .I2(lbus_out_strobe0_out),
        .I3(lbus_out_strobe),
        .O(lbus_out_strobe_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000003080000)) 
    lbus_out_strobe_i_2
       (.I0(MainState__0[0]),
        .I1(MainState__0[3]),
        .I2(MainState__0[4]),
        .I3(MainState__0[2]),
        .I4(s_axi_aresentn),
        .I5(MainState__0[1]),
        .O(lbus_out_strobe0_out));
  FDRE #(
    .INIT(1'b0)) 
    lbus_out_strobe_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(lbus_out_strobe_i_1_n_0),
        .Q(lbus_out_strobe),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF9FFFFFF00200000)) 
    s_axi_arready_i_1
       (.I0(MainState__0[3]),
        .I1(MainState__0[4]),
        .I2(MainState__0[1]),
        .I3(MainState__0[0]),
        .I4(s_axi_arready_i_2_n_0),
        .I5(s_axi_arready),
        .O(s_axi_arready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_arready_i_2
       (.I0(s_axi_aresentn),
        .I1(MainState__0[2]),
        .O(s_axi_arready_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_arready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_arready_i_1_n_0),
        .Q(s_axi_arready),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFF7F00000040)) 
    s_axi_awready_i_1
       (.I0(MainState__0[3]),
        .I1(s_axi_arready_i_2_n_0),
        .I2(MainState__0[0]),
        .I3(MainState__0[1]),
        .I4(MainState__0[4]),
        .I5(s_axi_awready),
        .O(s_axi_awready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_awready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_awready_i_1_n_0),
        .Q(s_axi_awready),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFBFFFFF00200000)) 
    \s_axi_bresp[1]_i_1 
       (.I0(MainState__0[2]),
        .I1(MainState__0[3]),
        .I2(s_axi_aresentn),
        .I3(MainState__0[4]),
        .I4(\s_axi_bresp[1]_i_2_n_0 ),
        .I5(s_axi_bresp),
        .O(\s_axi_bresp[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8032)) 
    \s_axi_bresp[1]_i_2 
       (.I0(MainState__0[0]),
        .I1(MainState__0[1]),
        .I2(s_axi_bready),
        .I3(MainState__0[2]),
        .O(\s_axi_bresp[1]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_bresp_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\s_axi_bresp[1]_i_1_n_0 ),
        .Q(s_axi_bresp),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h4404FFFF44040000)) 
    s_axi_bvalid_i_1
       (.I0(MainState__0[4]),
        .I1(s_axi_bready),
        .I2(MainState__0[0]),
        .I3(MainState__0[1]),
        .I4(s_axi_bvalid_i_2_n_0),
        .I5(s_axi_bvalid),
        .O(s_axi_bvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00600000)) 
    s_axi_bvalid_i_2
       (.I0(MainState__0[2]),
        .I1(MainState__0[3]),
        .I2(s_axi_aresentn),
        .I3(MainState__0[4]),
        .I4(\s_axi_bresp[1]_i_2_n_0 ),
        .O(s_axi_bvalid_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_bvalid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_bvalid_i_1_n_0),
        .Q(s_axi_bvalid),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00200000)) 
    \s_axi_rdata[31]_i_1 
       (.I0(\s_axi_rdata[31]_i_3_n_0 ),
        .I1(MainState__0[2]),
        .I2(s_axi_aresentn),
        .I3(MainState__0[3]),
        .I4(MainState__0[4]),
        .O(\s_axi_rdata[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000C0080000000)) 
    \s_axi_rdata[31]_i_2 
       (.I0(s_axi_rready),
        .I1(\s_axi_rdata[31]_i_3_n_0 ),
        .I2(MainState__0[2]),
        .I3(s_axi_aresentn),
        .I4(MainState__0[3]),
        .I5(MainState__0[4]),
        .O(\s_axi_rdata[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h42)) 
    \s_axi_rdata[31]_i_3 
       (.I0(MainState__0[0]),
        .I1(MainState__0[1]),
        .I2(MainState__0[2]),
        .O(\s_axi_rdata[31]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_reg[0] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(lbus_in_data[0]),
        .Q(s_axi_rdata[0]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_reg[10] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(lbus_in_data[10]),
        .Q(s_axi_rdata[10]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_reg[11] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(lbus_in_data[11]),
        .Q(s_axi_rdata[11]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_reg[12] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(lbus_in_data[12]),
        .Q(s_axi_rdata[12]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_reg[13] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(lbus_in_data[13]),
        .Q(s_axi_rdata[13]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_reg[14] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(lbus_in_data[14]),
        .Q(s_axi_rdata[14]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_reg[15] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(lbus_in_data[15]),
        .Q(s_axi_rdata[15]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_reg[16] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(lbus_in_data[16]),
        .Q(s_axi_rdata[16]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_reg[17] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(lbus_in_data[17]),
        .Q(s_axi_rdata[17]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_reg[18] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(lbus_in_data[18]),
        .Q(s_axi_rdata[18]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_reg[19] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(lbus_in_data[19]),
        .Q(s_axi_rdata[19]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_reg[1] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(lbus_in_data[1]),
        .Q(s_axi_rdata[1]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_reg[20] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(lbus_in_data[20]),
        .Q(s_axi_rdata[20]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_reg[21] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(lbus_in_data[21]),
        .Q(s_axi_rdata[21]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_reg[22] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(lbus_in_data[22]),
        .Q(s_axi_rdata[22]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_reg[23] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(lbus_in_data[23]),
        .Q(s_axi_rdata[23]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_reg[24] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(lbus_in_data[24]),
        .Q(s_axi_rdata[24]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_reg[25] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(lbus_in_data[25]),
        .Q(s_axi_rdata[25]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_reg[26] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(lbus_in_data[26]),
        .Q(s_axi_rdata[26]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_reg[27] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(lbus_in_data[27]),
        .Q(s_axi_rdata[27]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_reg[28] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(lbus_in_data[28]),
        .Q(s_axi_rdata[28]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_reg[29] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(lbus_in_data[29]),
        .Q(s_axi_rdata[29]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_reg[2] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(lbus_in_data[2]),
        .Q(s_axi_rdata[2]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_reg[30] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(lbus_in_data[30]),
        .Q(s_axi_rdata[30]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_reg[31] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(lbus_in_data[31]),
        .Q(s_axi_rdata[31]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_reg[3] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(lbus_in_data[3]),
        .Q(s_axi_rdata[3]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_reg[4] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(lbus_in_data[4]),
        .Q(s_axi_rdata[4]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_reg[5] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(lbus_in_data[5]),
        .Q(s_axi_rdata[5]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_reg[6] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(lbus_in_data[6]),
        .Q(s_axi_rdata[6]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_reg[7] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(lbus_in_data[7]),
        .Q(s_axi_rdata[7]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_reg[8] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(lbus_in_data[8]),
        .Q(s_axi_rdata[8]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rdata_reg[9] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(lbus_in_data[9]),
        .Q(s_axi_rdata[9]),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_axi_rresp_reg[1] 
       (.C(s_axi_aclk),
        .CE(\s_axi_rdata[31]_i_2_n_0 ),
        .D(lbus_in_addr_OOR),
        .Q(s_axi_rresp),
        .R(\s_axi_rdata[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFDFFFFF00008000)) 
    s_axi_rvalid_i_1
       (.I0(s_axi_rvalid_i_2_n_0),
        .I1(MainState__0[2]),
        .I2(s_axi_aresentn),
        .I3(MainState__0[3]),
        .I4(MainState__0[4]),
        .I5(s_axi_rvalid),
        .O(s_axi_rvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hC302)) 
    s_axi_rvalid_i_2
       (.I0(s_axi_rready),
        .I1(MainState__0[1]),
        .I2(MainState__0[2]),
        .I3(MainState__0[0]),
        .O(s_axi_rvalid_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_rvalid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_rvalid_i_1_n_0),
        .Q(s_axi_rvalid),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h1F10)) 
    s_axi_wready_i_1
       (.I0(MainState__0[3]),
        .I1(MainState__0[4]),
        .I2(s_axi_wready1_out),
        .I3(s_axi_wready),
        .O(s_axi_wready_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_axi_wready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_wready_i_1_n_0),
        .Q(s_axi_wready),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
