// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sat May  1 14:50:08 2021
// Host        : DESKTOP-QSJNSC0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               g:/Xilinx/Projects/Desktop/AXI_4_Lite_Slave/AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ip/Zynq_Design_AXI_UART_Control_Ada_0_0/Zynq_Design_AXI_UART_Control_Ada_0_0_sim_netlist.v
// Design      : Zynq_Design_AXI_UART_Control_Ada_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Zynq_Design_AXI_UART_Control_Ada_0_0,AXI_UART_Control_Adapter,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "AXI_UART_Control_Adapter,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module Zynq_Design_AXI_UART_Control_Ada_0_0
   (CLK100MHz,
    RESET,
    Transmit_WE_In,
    Transmit_WE_Out);
  input CLK100MHz;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RESET RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input RESET;
  input Transmit_WE_In;
  output Transmit_WE_Out;

  wire CLK100MHz;
  wire Transmit_WE_In;
  wire Transmit_WE_Out;

  Zynq_Design_AXI_UART_Control_Ada_0_0_AXI_UART_Control_Adapter U0
       (.CLK100MHz(CLK100MHz),
        .Transmit_WE_In(Transmit_WE_In),
        .Transmit_WE_Out(Transmit_WE_Out));
endmodule

(* ORIG_REF_NAME = "AXI_UART_Control_Adapter" *) 
module Zynq_Design_AXI_UART_Control_Ada_0_0_AXI_UART_Control_Adapter
   (Transmit_WE_Out,
    Transmit_WE_In,
    CLK100MHz);
  output Transmit_WE_Out;
  input Transmit_WE_In;
  input CLK100MHz;

  wire CLK100MHz;
  wire Transmit_WE_In;
  wire Transmit_WE_Out;
  wire Transmit_WE_Out0;
  wire Transmit_WE_Out_i_1_n_0;

  (* FSM_ENCODED_STATES = "iSTATE:0,iSTATE0:1" *) 
  FDRE #(
    .INIT(1'b0)) 
    FSM_sequential_state_reg
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(Transmit_WE_In),
        .Q(Transmit_WE_Out0),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h0E)) 
    Transmit_WE_Out_i_1
       (.I0(Transmit_WE_Out),
        .I1(Transmit_WE_In),
        .I2(Transmit_WE_Out0),
        .O(Transmit_WE_Out_i_1_n_0));
  FDRE Transmit_WE_Out_reg
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(Transmit_WE_Out_i_1_n_0),
        .Q(Transmit_WE_Out),
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
