// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Fri Apr 30 22:21:33 2021
// Host        : DESKTOP-QSJNSC0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               g:/Xilinx/Projects/Desktop/AXI_4_Lite_Slave/AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ip/Zynq_Design_UART_V1_9_0_0/Zynq_Design_UART_V1_9_0_0_sim_netlist.v
// Design      : Zynq_Design_UART_V1_9_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Zynq_Design_UART_V1_9_0_0,TOP_BD_wrapper,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "TOP_BD_wrapper,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module Zynq_Design_UART_V1_9_0_0
   (CLK100MHz,
    Receive_AE,
    Receive_CLK,
    Receive_EM,
    Receive_OUT,
    Receive_RD_EN,
    Reset_0,
    Rx,
    Transmit_AF,
    Transmit_CLK,
    Transmit_FU,
    Transmit_IN,
    Transmit_WR_EN,
    Tx,
    UART_Debug_Enable);
  input CLK100MHz;
  output Receive_AE;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 Receive_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME Receive_CLK, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN Zynq_Design_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input Receive_CLK;
  output Receive_EM;
  output [7:0]Receive_OUT;
  input Receive_RD_EN;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 Reset_0 RST" *) (* x_interface_parameter = "XIL_INTERFACENAME Reset_0, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input Reset_0;
  input Rx;
  output Transmit_AF;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 Transmit_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME Transmit_CLK, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN Zynq_Design_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input Transmit_CLK;
  output Transmit_FU;
  input [7:0]Transmit_IN;
  input Transmit_WR_EN;
  output Tx;
  input UART_Debug_Enable;

  wire CLK100MHz;
  wire Receive_AE;
  wire Receive_CLK;
  wire Receive_EM;
  wire [7:0]Receive_OUT;
  wire Receive_RD_EN;
  wire Reset_0;
  wire Rx;
  wire Transmit_AF;
  wire Transmit_CLK;
  wire Transmit_FU;
  wire [7:0]Transmit_IN;
  wire Transmit_WR_EN;
  wire Tx;
  wire UART_Debug_Enable;

  Zynq_Design_UART_V1_9_0_0_TOP_BD_wrapper U0
       (.CLK100MHz(CLK100MHz),
        .Receive_AE(Receive_AE),
        .Receive_CLK(Receive_CLK),
        .Receive_EM(Receive_EM),
        .Receive_OUT(Receive_OUT),
        .Receive_RD_EN(Receive_RD_EN),
        .Reset_0(Reset_0),
        .Rx(Rx),
        .Transmit_AF(Transmit_AF),
        .Transmit_CLK(Transmit_CLK),
        .Transmit_FU(Transmit_FU),
        .Transmit_IN(Transmit_IN),
        .Transmit_WR_EN(Transmit_WR_EN),
        .Tx(Tx),
        .UART_Debug_Enable(UART_Debug_Enable));
endmodule

(* ORIG_REF_NAME = "Debouncer" *) 
module Zynq_Design_UART_V1_9_0_0_Debouncer
   (Reset_Out,
    CLK100MHz,
    Reset_0);
  output Reset_Out;
  input CLK100MHz;
  input Reset_0;

  wire CLK100MHz;
  wire [3:0]Line_In_Cnt;
  wire \Line_In_Cnt[0]_i_1_n_0 ;
  wire \Line_In_Cnt[1]_i_1_n_0 ;
  wire \Line_In_Cnt[2]_i_1_n_0 ;
  wire \Line_In_Cnt[3]_i_2_n_0 ;
  wire Line_In_Cnt_0;
  wire Reset_0;
  wire Reset_Out;
  wire Reset_Out_i_1_n_0;

  LUT2 #(
    .INIT(4'h2)) 
    \Line_In_Cnt[0]_i_1 
       (.I0(Reset_0),
        .I1(Line_In_Cnt[0]),
        .O(\Line_In_Cnt[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h60)) 
    \Line_In_Cnt[1]_i_1 
       (.I0(Line_In_Cnt[1]),
        .I1(Line_In_Cnt[0]),
        .I2(Reset_0),
        .O(\Line_In_Cnt[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6A00)) 
    \Line_In_Cnt[2]_i_1 
       (.I0(Line_In_Cnt[2]),
        .I1(Line_In_Cnt[1]),
        .I2(Line_In_Cnt[0]),
        .I3(Reset_0),
        .O(\Line_In_Cnt[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \Line_In_Cnt[3]_i_1 
       (.I0(Reset_0),
        .I1(Line_In_Cnt[0]),
        .I2(Line_In_Cnt[1]),
        .I3(Line_In_Cnt[3]),
        .I4(Line_In_Cnt[2]),
        .O(Line_In_Cnt_0));
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \Line_In_Cnt[3]_i_2 
       (.I0(Line_In_Cnt[3]),
        .I1(Line_In_Cnt[2]),
        .I2(Line_In_Cnt[0]),
        .I3(Line_In_Cnt[1]),
        .I4(Reset_0),
        .O(\Line_In_Cnt[3]_i_2_n_0 ));
  FDSE \Line_In_Cnt_reg[0] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(\Line_In_Cnt[0]_i_1_n_0 ),
        .Q(Line_In_Cnt[0]),
        .S(Line_In_Cnt_0));
  FDSE \Line_In_Cnt_reg[1] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(\Line_In_Cnt[1]_i_1_n_0 ),
        .Q(Line_In_Cnt[1]),
        .S(Line_In_Cnt_0));
  FDSE \Line_In_Cnt_reg[2] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(\Line_In_Cnt[2]_i_1_n_0 ),
        .Q(Line_In_Cnt[2]),
        .S(Line_In_Cnt_0));
  FDSE \Line_In_Cnt_reg[3] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(\Line_In_Cnt[3]_i_2_n_0 ),
        .Q(Line_In_Cnt[3]),
        .S(Line_In_Cnt_0));
  LUT2 #(
    .INIT(4'h8)) 
    Reset_Out_i_1
       (.I0(Reset_0),
        .I1(Reset_Out),
        .O(Reset_Out_i_1_n_0));
  FDSE Reset_Out_reg
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(Reset_Out_i_1_n_0),
        .Q(Reset_Out),
        .S(Line_In_Cnt_0));
endmodule

(* ORIG_REF_NAME = "Reset_Controller" *) 
module Zynq_Design_UART_V1_9_0_0_Reset_Controller
   (rst,
    CLK100MHz,
    Reset_Out);
  output rst;
  input CLK100MHz;
  input Reset_Out;

  wire CLK100MHz;
  wire \FSM_sequential_Reset_State[0]_i_1_n_0 ;
  wire \FSM_sequential_Reset_State[1]_i_1_n_0 ;
  wire \FSM_sequential_Reset_State[2]_i_1_n_0 ;
  wire \FSM_sequential_Reset_State[2]_i_2_n_0 ;
  wire \FSM_sequential_Reset_State[2]_i_3_n_0 ;
  wire Reset_1_i_1_n_0;
  wire Reset_Cnt;
  wire \Reset_Cnt[0]_i_1_n_0 ;
  wire \Reset_Cnt[10]_i_1_n_0 ;
  wire \Reset_Cnt[11]_i_1_n_0 ;
  wire \Reset_Cnt[12]_i_1_n_0 ;
  wire \Reset_Cnt[13]_i_1_n_0 ;
  wire \Reset_Cnt[14]_i_1_n_0 ;
  wire \Reset_Cnt[15]_i_1_n_0 ;
  wire \Reset_Cnt[15]_i_2_n_0 ;
  wire \Reset_Cnt[1]_i_1_n_0 ;
  wire \Reset_Cnt[2]_i_1_n_0 ;
  wire \Reset_Cnt[30]_i_10_n_0 ;
  wire \Reset_Cnt[30]_i_11_n_0 ;
  wire \Reset_Cnt[30]_i_12_n_0 ;
  wire \Reset_Cnt[30]_i_13_n_0 ;
  wire \Reset_Cnt[30]_i_14_n_0 ;
  wire \Reset_Cnt[30]_i_15_n_0 ;
  wire \Reset_Cnt[30]_i_1_n_0 ;
  wire \Reset_Cnt[30]_i_4_n_0 ;
  wire \Reset_Cnt[30]_i_5_n_0 ;
  wire \Reset_Cnt[30]_i_6_n_0 ;
  wire \Reset_Cnt[30]_i_7_n_0 ;
  wire \Reset_Cnt[30]_i_8_n_0 ;
  wire \Reset_Cnt[30]_i_9_n_0 ;
  wire \Reset_Cnt[3]_i_1_n_0 ;
  wire \Reset_Cnt[4]_i_1_n_0 ;
  wire \Reset_Cnt[5]_i_1_n_0 ;
  wire \Reset_Cnt[6]_i_1_n_0 ;
  wire \Reset_Cnt[7]_i_1_n_0 ;
  wire \Reset_Cnt[8]_i_1_n_0 ;
  wire \Reset_Cnt[9]_i_1_n_0 ;
  wire \Reset_Cnt_reg[16]_i_1_n_0 ;
  wire \Reset_Cnt_reg[16]_i_1_n_1 ;
  wire \Reset_Cnt_reg[16]_i_1_n_2 ;
  wire \Reset_Cnt_reg[16]_i_1_n_3 ;
  wire \Reset_Cnt_reg[16]_i_2_n_0 ;
  wire \Reset_Cnt_reg[16]_i_2_n_1 ;
  wire \Reset_Cnt_reg[16]_i_2_n_2 ;
  wire \Reset_Cnt_reg[16]_i_2_n_3 ;
  wire \Reset_Cnt_reg[20]_i_1_n_0 ;
  wire \Reset_Cnt_reg[20]_i_1_n_1 ;
  wire \Reset_Cnt_reg[20]_i_1_n_2 ;
  wire \Reset_Cnt_reg[20]_i_1_n_3 ;
  wire \Reset_Cnt_reg[24]_i_1_n_0 ;
  wire \Reset_Cnt_reg[24]_i_1_n_1 ;
  wire \Reset_Cnt_reg[24]_i_1_n_2 ;
  wire \Reset_Cnt_reg[24]_i_1_n_3 ;
  wire \Reset_Cnt_reg[28]_i_1_n_0 ;
  wire \Reset_Cnt_reg[28]_i_1_n_1 ;
  wire \Reset_Cnt_reg[28]_i_1_n_2 ;
  wire \Reset_Cnt_reg[28]_i_1_n_3 ;
  wire \Reset_Cnt_reg[30]_i_3_n_3 ;
  wire \Reset_Cnt_reg[4]_i_2_n_0 ;
  wire \Reset_Cnt_reg[4]_i_2_n_1 ;
  wire \Reset_Cnt_reg[4]_i_2_n_2 ;
  wire \Reset_Cnt_reg[4]_i_2_n_3 ;
  wire \Reset_Cnt_reg[8]_i_2_n_0 ;
  wire \Reset_Cnt_reg[8]_i_2_n_1 ;
  wire \Reset_Cnt_reg[8]_i_2_n_2 ;
  wire \Reset_Cnt_reg[8]_i_2_n_3 ;
  wire \Reset_Cnt_reg_n_0_[0] ;
  wire \Reset_Cnt_reg_n_0_[10] ;
  wire \Reset_Cnt_reg_n_0_[11] ;
  wire \Reset_Cnt_reg_n_0_[12] ;
  wire \Reset_Cnt_reg_n_0_[13] ;
  wire \Reset_Cnt_reg_n_0_[14] ;
  wire \Reset_Cnt_reg_n_0_[15] ;
  wire \Reset_Cnt_reg_n_0_[16] ;
  wire \Reset_Cnt_reg_n_0_[17] ;
  wire \Reset_Cnt_reg_n_0_[18] ;
  wire \Reset_Cnt_reg_n_0_[19] ;
  wire \Reset_Cnt_reg_n_0_[1] ;
  wire \Reset_Cnt_reg_n_0_[20] ;
  wire \Reset_Cnt_reg_n_0_[21] ;
  wire \Reset_Cnt_reg_n_0_[22] ;
  wire \Reset_Cnt_reg_n_0_[23] ;
  wire \Reset_Cnt_reg_n_0_[24] ;
  wire \Reset_Cnt_reg_n_0_[25] ;
  wire \Reset_Cnt_reg_n_0_[26] ;
  wire \Reset_Cnt_reg_n_0_[27] ;
  wire \Reset_Cnt_reg_n_0_[28] ;
  wire \Reset_Cnt_reg_n_0_[29] ;
  wire \Reset_Cnt_reg_n_0_[2] ;
  wire \Reset_Cnt_reg_n_0_[30] ;
  wire \Reset_Cnt_reg_n_0_[3] ;
  wire \Reset_Cnt_reg_n_0_[4] ;
  wire \Reset_Cnt_reg_n_0_[5] ;
  wire \Reset_Cnt_reg_n_0_[6] ;
  wire \Reset_Cnt_reg_n_0_[7] ;
  wire \Reset_Cnt_reg_n_0_[8] ;
  wire \Reset_Cnt_reg_n_0_[9] ;
  wire Reset_Out;
  wire [2:0]Reset_State__0;
  wire [30:1]data0;
  wire rst;
  wire [3:1]\NLW_Reset_Cnt_reg[30]_i_3_CO_UNCONNECTED ;
  wire [3:2]\NLW_Reset_Cnt_reg[30]_i_3_O_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h34)) 
    \FSM_sequential_Reset_State[0]_i_1 
       (.I0(Reset_State__0[2]),
        .I1(\FSM_sequential_Reset_State[2]_i_2_n_0 ),
        .I2(Reset_State__0[0]),
        .O(\FSM_sequential_Reset_State[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1F20)) 
    \FSM_sequential_Reset_State[1]_i_1 
       (.I0(Reset_State__0[0]),
        .I1(Reset_State__0[2]),
        .I2(\FSM_sequential_Reset_State[2]_i_2_n_0 ),
        .I3(Reset_State__0[1]),
        .O(\FSM_sequential_Reset_State[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0F80)) 
    \FSM_sequential_Reset_State[2]_i_1 
       (.I0(Reset_State__0[1]),
        .I1(Reset_State__0[0]),
        .I2(\FSM_sequential_Reset_State[2]_i_2_n_0 ),
        .I3(Reset_State__0[2]),
        .O(\FSM_sequential_Reset_State[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000003300550C33)) 
    \FSM_sequential_Reset_State[2]_i_2 
       (.I0(\Reset_Cnt[30]_i_5_n_0 ),
        .I1(Reset_Out),
        .I2(\Reset_Cnt[30]_i_4_n_0 ),
        .I3(Reset_State__0[2]),
        .I4(\FSM_sequential_Reset_State[2]_i_3_n_0 ),
        .I5(\Reset_Cnt[30]_i_6_n_0 ),
        .O(\FSM_sequential_Reset_State[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_Reset_State[2]_i_3 
       (.I0(Reset_State__0[0]),
        .I1(Reset_State__0[1]),
        .O(\FSM_sequential_Reset_State[2]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "idle_state:000,reset_1_state:001,reset_2_state:010,reset_3_state:011,wait_state:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_Reset_State_reg[0] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(\FSM_sequential_Reset_State[0]_i_1_n_0 ),
        .Q(Reset_State__0[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "idle_state:000,reset_1_state:001,reset_2_state:010,reset_3_state:011,wait_state:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_Reset_State_reg[1] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(\FSM_sequential_Reset_State[1]_i_1_n_0 ),
        .Q(Reset_State__0[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "idle_state:000,reset_1_state:001,reset_2_state:010,reset_3_state:011,wait_state:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_Reset_State_reg[2] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(\FSM_sequential_Reset_State[2]_i_1_n_0 ),
        .Q(Reset_State__0[2]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFD01)) 
    Reset_1_i_1
       (.I0(Reset_State__0[0]),
        .I1(Reset_State__0[1]),
        .I2(Reset_State__0[2]),
        .I3(rst),
        .O(Reset_1_i_1_n_0));
  FDRE Reset_1_reg
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(Reset_1_i_1_n_0),
        .Q(rst),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h000000000E0E0EF0)) 
    \Reset_Cnt[0]_i_1 
       (.I0(\Reset_Cnt[30]_i_5_n_0 ),
        .I1(\Reset_Cnt[30]_i_6_n_0 ),
        .I2(Reset_State__0[2]),
        .I3(Reset_State__0[1]),
        .I4(Reset_State__0[0]),
        .I5(\Reset_Cnt_reg_n_0_[0] ),
        .O(\Reset_Cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0E0E0EF000000000)) 
    \Reset_Cnt[10]_i_1 
       (.I0(\Reset_Cnt[30]_i_5_n_0 ),
        .I1(\Reset_Cnt[30]_i_6_n_0 ),
        .I2(Reset_State__0[2]),
        .I3(Reset_State__0[1]),
        .I4(Reset_State__0[0]),
        .I5(data0[10]),
        .O(\Reset_Cnt[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0E0E0EF000000000)) 
    \Reset_Cnt[11]_i_1 
       (.I0(\Reset_Cnt[30]_i_5_n_0 ),
        .I1(\Reset_Cnt[30]_i_6_n_0 ),
        .I2(Reset_State__0[2]),
        .I3(Reset_State__0[1]),
        .I4(Reset_State__0[0]),
        .I5(data0[11]),
        .O(\Reset_Cnt[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0E0E0EF000000000)) 
    \Reset_Cnt[12]_i_1 
       (.I0(\Reset_Cnt[30]_i_5_n_0 ),
        .I1(\Reset_Cnt[30]_i_6_n_0 ),
        .I2(Reset_State__0[2]),
        .I3(Reset_State__0[1]),
        .I4(Reset_State__0[0]),
        .I5(data0[12]),
        .O(\Reset_Cnt[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0E0E0EF000000000)) 
    \Reset_Cnt[13]_i_1 
       (.I0(\Reset_Cnt[30]_i_5_n_0 ),
        .I1(\Reset_Cnt[30]_i_6_n_0 ),
        .I2(Reset_State__0[2]),
        .I3(Reset_State__0[1]),
        .I4(Reset_State__0[0]),
        .I5(data0[13]),
        .O(\Reset_Cnt[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0E0E0EF000000000)) 
    \Reset_Cnt[14]_i_1 
       (.I0(\Reset_Cnt[30]_i_5_n_0 ),
        .I1(\Reset_Cnt[30]_i_6_n_0 ),
        .I2(Reset_State__0[2]),
        .I3(Reset_State__0[1]),
        .I4(Reset_State__0[0]),
        .I5(data0[14]),
        .O(\Reset_Cnt[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \Reset_Cnt[15]_i_1 
       (.I0(\Reset_Cnt[30]_i_4_n_0 ),
        .I1(Reset_State__0[2]),
        .I2(Reset_State__0[1]),
        .I3(Reset_State__0[0]),
        .I4(\Reset_Cnt[30]_i_6_n_0 ),
        .O(\Reset_Cnt[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0E0E0EF000000000)) 
    \Reset_Cnt[15]_i_2 
       (.I0(\Reset_Cnt[30]_i_5_n_0 ),
        .I1(\Reset_Cnt[30]_i_6_n_0 ),
        .I2(Reset_State__0[2]),
        .I3(Reset_State__0[1]),
        .I4(Reset_State__0[0]),
        .I5(data0[15]),
        .O(\Reset_Cnt[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0E0E0EF000000000)) 
    \Reset_Cnt[1]_i_1 
       (.I0(\Reset_Cnt[30]_i_5_n_0 ),
        .I1(\Reset_Cnt[30]_i_6_n_0 ),
        .I2(Reset_State__0[2]),
        .I3(Reset_State__0[1]),
        .I4(Reset_State__0[0]),
        .I5(data0[1]),
        .O(\Reset_Cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0E0E0EF000000000)) 
    \Reset_Cnt[2]_i_1 
       (.I0(\Reset_Cnt[30]_i_5_n_0 ),
        .I1(\Reset_Cnt[30]_i_6_n_0 ),
        .I2(Reset_State__0[2]),
        .I3(Reset_State__0[1]),
        .I4(Reset_State__0[0]),
        .I5(data0[2]),
        .O(\Reset_Cnt[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00030003010301FF)) 
    \Reset_Cnt[30]_i_1 
       (.I0(\Reset_Cnt[30]_i_4_n_0 ),
        .I1(Reset_State__0[1]),
        .I2(Reset_State__0[0]),
        .I3(Reset_State__0[2]),
        .I4(\Reset_Cnt[30]_i_5_n_0 ),
        .I5(\Reset_Cnt[30]_i_6_n_0 ),
        .O(\Reset_Cnt[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \Reset_Cnt[30]_i_10 
       (.I0(\Reset_Cnt_reg_n_0_[5] ),
        .I1(\Reset_Cnt_reg_n_0_[4] ),
        .I2(\Reset_Cnt_reg_n_0_[7] ),
        .I3(\Reset_Cnt_reg_n_0_[6] ),
        .O(\Reset_Cnt[30]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \Reset_Cnt[30]_i_11 
       (.I0(\Reset_Cnt_reg_n_0_[2] ),
        .I1(\Reset_Cnt_reg_n_0_[1] ),
        .I2(\Reset_Cnt_reg_n_0_[3] ),
        .I3(\Reset_Cnt_reg_n_0_[16] ),
        .O(\Reset_Cnt[30]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \Reset_Cnt[30]_i_12 
       (.I0(\Reset_Cnt_reg_n_0_[26] ),
        .I1(\Reset_Cnt_reg_n_0_[25] ),
        .I2(\Reset_Cnt_reg_n_0_[28] ),
        .I3(\Reset_Cnt_reg_n_0_[27] ),
        .O(\Reset_Cnt[30]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \Reset_Cnt[30]_i_13 
       (.I0(\Reset_Cnt_reg_n_0_[30] ),
        .I1(\Reset_Cnt_reg_n_0_[29] ),
        .I2(\Reset_Cnt_reg_n_0_[0] ),
        .O(\Reset_Cnt[30]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \Reset_Cnt[30]_i_14 
       (.I0(\Reset_Cnt_reg_n_0_[22] ),
        .I1(\Reset_Cnt_reg_n_0_[21] ),
        .I2(\Reset_Cnt_reg_n_0_[24] ),
        .I3(\Reset_Cnt_reg_n_0_[23] ),
        .O(\Reset_Cnt[30]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \Reset_Cnt[30]_i_15 
       (.I0(\Reset_Cnt_reg_n_0_[18] ),
        .I1(\Reset_Cnt_reg_n_0_[17] ),
        .I2(\Reset_Cnt_reg_n_0_[20] ),
        .I3(\Reset_Cnt_reg_n_0_[19] ),
        .O(\Reset_Cnt[30]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h1F)) 
    \Reset_Cnt[30]_i_2 
       (.I0(Reset_State__0[1]),
        .I1(Reset_State__0[0]),
        .I2(Reset_State__0[2]),
        .O(Reset_Cnt));
  LUT6 #(
    .INIT(64'hFFFFFFFFBFFFFFFF)) 
    \Reset_Cnt[30]_i_4 
       (.I0(\Reset_Cnt[30]_i_7_n_0 ),
        .I1(\Reset_Cnt_reg_n_0_[9] ),
        .I2(\Reset_Cnt_reg_n_0_[8] ),
        .I3(\Reset_Cnt_reg_n_0_[11] ),
        .I4(\Reset_Cnt_reg_n_0_[10] ),
        .I5(\Reset_Cnt[30]_i_8_n_0 ),
        .O(\Reset_Cnt[30]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \Reset_Cnt[30]_i_5 
       (.I0(\Reset_Cnt[30]_i_9_n_0 ),
        .I1(\Reset_Cnt_reg_n_0_[9] ),
        .I2(\Reset_Cnt_reg_n_0_[8] ),
        .I3(\Reset_Cnt_reg_n_0_[11] ),
        .I4(\Reset_Cnt_reg_n_0_[10] ),
        .I5(\Reset_Cnt[30]_i_10_n_0 ),
        .O(\Reset_Cnt[30]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \Reset_Cnt[30]_i_6 
       (.I0(\Reset_Cnt[30]_i_11_n_0 ),
        .I1(\Reset_Cnt[30]_i_12_n_0 ),
        .I2(\Reset_Cnt[30]_i_13_n_0 ),
        .I3(\Reset_Cnt[30]_i_14_n_0 ),
        .I4(\Reset_Cnt[30]_i_15_n_0 ),
        .O(\Reset_Cnt[30]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \Reset_Cnt[30]_i_7 
       (.I0(\Reset_Cnt_reg_n_0_[13] ),
        .I1(\Reset_Cnt_reg_n_0_[12] ),
        .I2(\Reset_Cnt_reg_n_0_[15] ),
        .I3(\Reset_Cnt_reg_n_0_[14] ),
        .O(\Reset_Cnt[30]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \Reset_Cnt[30]_i_8 
       (.I0(\Reset_Cnt_reg_n_0_[5] ),
        .I1(\Reset_Cnt_reg_n_0_[4] ),
        .I2(\Reset_Cnt_reg_n_0_[7] ),
        .I3(\Reset_Cnt_reg_n_0_[6] ),
        .O(\Reset_Cnt[30]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \Reset_Cnt[30]_i_9 
       (.I0(\Reset_Cnt_reg_n_0_[13] ),
        .I1(\Reset_Cnt_reg_n_0_[12] ),
        .I2(\Reset_Cnt_reg_n_0_[15] ),
        .I3(\Reset_Cnt_reg_n_0_[14] ),
        .O(\Reset_Cnt[30]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0E0E0EF000000000)) 
    \Reset_Cnt[3]_i_1 
       (.I0(\Reset_Cnt[30]_i_5_n_0 ),
        .I1(\Reset_Cnt[30]_i_6_n_0 ),
        .I2(Reset_State__0[2]),
        .I3(Reset_State__0[1]),
        .I4(Reset_State__0[0]),
        .I5(data0[3]),
        .O(\Reset_Cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0E0E0EF000000000)) 
    \Reset_Cnt[4]_i_1 
       (.I0(\Reset_Cnt[30]_i_5_n_0 ),
        .I1(\Reset_Cnt[30]_i_6_n_0 ),
        .I2(Reset_State__0[2]),
        .I3(Reset_State__0[1]),
        .I4(Reset_State__0[0]),
        .I5(data0[4]),
        .O(\Reset_Cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0E0E0EF000000000)) 
    \Reset_Cnt[5]_i_1 
       (.I0(\Reset_Cnt[30]_i_5_n_0 ),
        .I1(\Reset_Cnt[30]_i_6_n_0 ),
        .I2(Reset_State__0[2]),
        .I3(Reset_State__0[1]),
        .I4(Reset_State__0[0]),
        .I5(data0[5]),
        .O(\Reset_Cnt[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0E0E0EF000000000)) 
    \Reset_Cnt[6]_i_1 
       (.I0(\Reset_Cnt[30]_i_5_n_0 ),
        .I1(\Reset_Cnt[30]_i_6_n_0 ),
        .I2(Reset_State__0[2]),
        .I3(Reset_State__0[1]),
        .I4(Reset_State__0[0]),
        .I5(data0[6]),
        .O(\Reset_Cnt[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0E0E0EF000000000)) 
    \Reset_Cnt[7]_i_1 
       (.I0(\Reset_Cnt[30]_i_5_n_0 ),
        .I1(\Reset_Cnt[30]_i_6_n_0 ),
        .I2(Reset_State__0[2]),
        .I3(Reset_State__0[1]),
        .I4(Reset_State__0[0]),
        .I5(data0[7]),
        .O(\Reset_Cnt[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0E0E0EF000000000)) 
    \Reset_Cnt[8]_i_1 
       (.I0(\Reset_Cnt[30]_i_5_n_0 ),
        .I1(\Reset_Cnt[30]_i_6_n_0 ),
        .I2(Reset_State__0[2]),
        .I3(Reset_State__0[1]),
        .I4(Reset_State__0[0]),
        .I5(data0[8]),
        .O(\Reset_Cnt[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0E0E0EF000000000)) 
    \Reset_Cnt[9]_i_1 
       (.I0(\Reset_Cnt[30]_i_5_n_0 ),
        .I1(\Reset_Cnt[30]_i_6_n_0 ),
        .I2(Reset_State__0[2]),
        .I3(Reset_State__0[1]),
        .I4(Reset_State__0[0]),
        .I5(data0[9]),
        .O(\Reset_Cnt[9]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \Reset_Cnt_reg[0] 
       (.C(CLK100MHz),
        .CE(Reset_Cnt),
        .D(\Reset_Cnt[0]_i_1_n_0 ),
        .Q(\Reset_Cnt_reg_n_0_[0] ),
        .S(\Reset_Cnt[15]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \Reset_Cnt_reg[10] 
       (.C(CLK100MHz),
        .CE(Reset_Cnt),
        .D(\Reset_Cnt[10]_i_1_n_0 ),
        .Q(\Reset_Cnt_reg_n_0_[10] ),
        .S(\Reset_Cnt[15]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \Reset_Cnt_reg[11] 
       (.C(CLK100MHz),
        .CE(Reset_Cnt),
        .D(\Reset_Cnt[11]_i_1_n_0 ),
        .Q(\Reset_Cnt_reg_n_0_[11] ),
        .S(\Reset_Cnt[15]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \Reset_Cnt_reg[12] 
       (.C(CLK100MHz),
        .CE(Reset_Cnt),
        .D(\Reset_Cnt[12]_i_1_n_0 ),
        .Q(\Reset_Cnt_reg_n_0_[12] ),
        .S(\Reset_Cnt[15]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \Reset_Cnt_reg[13] 
       (.C(CLK100MHz),
        .CE(Reset_Cnt),
        .D(\Reset_Cnt[13]_i_1_n_0 ),
        .Q(\Reset_Cnt_reg_n_0_[13] ),
        .S(\Reset_Cnt[15]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \Reset_Cnt_reg[14] 
       (.C(CLK100MHz),
        .CE(Reset_Cnt),
        .D(\Reset_Cnt[14]_i_1_n_0 ),
        .Q(\Reset_Cnt_reg_n_0_[14] ),
        .S(\Reset_Cnt[15]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \Reset_Cnt_reg[15] 
       (.C(CLK100MHz),
        .CE(Reset_Cnt),
        .D(\Reset_Cnt[15]_i_2_n_0 ),
        .Q(\Reset_Cnt_reg_n_0_[15] ),
        .S(\Reset_Cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Reset_Cnt_reg[16] 
       (.C(CLK100MHz),
        .CE(Reset_Cnt),
        .D(data0[16]),
        .Q(\Reset_Cnt_reg_n_0_[16] ),
        .R(\Reset_Cnt[30]_i_1_n_0 ));
  CARRY4 \Reset_Cnt_reg[16]_i_1 
       (.CI(\Reset_Cnt_reg[16]_i_2_n_0 ),
        .CO({\Reset_Cnt_reg[16]_i_1_n_0 ,\Reset_Cnt_reg[16]_i_1_n_1 ,\Reset_Cnt_reg[16]_i_1_n_2 ,\Reset_Cnt_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S({\Reset_Cnt_reg_n_0_[16] ,\Reset_Cnt_reg_n_0_[15] ,\Reset_Cnt_reg_n_0_[14] ,\Reset_Cnt_reg_n_0_[13] }));
  CARRY4 \Reset_Cnt_reg[16]_i_2 
       (.CI(\Reset_Cnt_reg[8]_i_2_n_0 ),
        .CO({\Reset_Cnt_reg[16]_i_2_n_0 ,\Reset_Cnt_reg[16]_i_2_n_1 ,\Reset_Cnt_reg[16]_i_2_n_2 ,\Reset_Cnt_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({\Reset_Cnt_reg_n_0_[12] ,\Reset_Cnt_reg_n_0_[11] ,\Reset_Cnt_reg_n_0_[10] ,\Reset_Cnt_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \Reset_Cnt_reg[17] 
       (.C(CLK100MHz),
        .CE(Reset_Cnt),
        .D(data0[17]),
        .Q(\Reset_Cnt_reg_n_0_[17] ),
        .R(\Reset_Cnt[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Reset_Cnt_reg[18] 
       (.C(CLK100MHz),
        .CE(Reset_Cnt),
        .D(data0[18]),
        .Q(\Reset_Cnt_reg_n_0_[18] ),
        .R(\Reset_Cnt[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Reset_Cnt_reg[19] 
       (.C(CLK100MHz),
        .CE(Reset_Cnt),
        .D(data0[19]),
        .Q(\Reset_Cnt_reg_n_0_[19] ),
        .R(\Reset_Cnt[30]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \Reset_Cnt_reg[1] 
       (.C(CLK100MHz),
        .CE(Reset_Cnt),
        .D(\Reset_Cnt[1]_i_1_n_0 ),
        .Q(\Reset_Cnt_reg_n_0_[1] ),
        .S(\Reset_Cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Reset_Cnt_reg[20] 
       (.C(CLK100MHz),
        .CE(Reset_Cnt),
        .D(data0[20]),
        .Q(\Reset_Cnt_reg_n_0_[20] ),
        .R(\Reset_Cnt[30]_i_1_n_0 ));
  CARRY4 \Reset_Cnt_reg[20]_i_1 
       (.CI(\Reset_Cnt_reg[16]_i_1_n_0 ),
        .CO({\Reset_Cnt_reg[20]_i_1_n_0 ,\Reset_Cnt_reg[20]_i_1_n_1 ,\Reset_Cnt_reg[20]_i_1_n_2 ,\Reset_Cnt_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S({\Reset_Cnt_reg_n_0_[20] ,\Reset_Cnt_reg_n_0_[19] ,\Reset_Cnt_reg_n_0_[18] ,\Reset_Cnt_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \Reset_Cnt_reg[21] 
       (.C(CLK100MHz),
        .CE(Reset_Cnt),
        .D(data0[21]),
        .Q(\Reset_Cnt_reg_n_0_[21] ),
        .R(\Reset_Cnt[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Reset_Cnt_reg[22] 
       (.C(CLK100MHz),
        .CE(Reset_Cnt),
        .D(data0[22]),
        .Q(\Reset_Cnt_reg_n_0_[22] ),
        .R(\Reset_Cnt[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Reset_Cnt_reg[23] 
       (.C(CLK100MHz),
        .CE(Reset_Cnt),
        .D(data0[23]),
        .Q(\Reset_Cnt_reg_n_0_[23] ),
        .R(\Reset_Cnt[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Reset_Cnt_reg[24] 
       (.C(CLK100MHz),
        .CE(Reset_Cnt),
        .D(data0[24]),
        .Q(\Reset_Cnt_reg_n_0_[24] ),
        .R(\Reset_Cnt[30]_i_1_n_0 ));
  CARRY4 \Reset_Cnt_reg[24]_i_1 
       (.CI(\Reset_Cnt_reg[20]_i_1_n_0 ),
        .CO({\Reset_Cnt_reg[24]_i_1_n_0 ,\Reset_Cnt_reg[24]_i_1_n_1 ,\Reset_Cnt_reg[24]_i_1_n_2 ,\Reset_Cnt_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S({\Reset_Cnt_reg_n_0_[24] ,\Reset_Cnt_reg_n_0_[23] ,\Reset_Cnt_reg_n_0_[22] ,\Reset_Cnt_reg_n_0_[21] }));
  FDRE #(
    .INIT(1'b0)) 
    \Reset_Cnt_reg[25] 
       (.C(CLK100MHz),
        .CE(Reset_Cnt),
        .D(data0[25]),
        .Q(\Reset_Cnt_reg_n_0_[25] ),
        .R(\Reset_Cnt[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Reset_Cnt_reg[26] 
       (.C(CLK100MHz),
        .CE(Reset_Cnt),
        .D(data0[26]),
        .Q(\Reset_Cnt_reg_n_0_[26] ),
        .R(\Reset_Cnt[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Reset_Cnt_reg[27] 
       (.C(CLK100MHz),
        .CE(Reset_Cnt),
        .D(data0[27]),
        .Q(\Reset_Cnt_reg_n_0_[27] ),
        .R(\Reset_Cnt[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Reset_Cnt_reg[28] 
       (.C(CLK100MHz),
        .CE(Reset_Cnt),
        .D(data0[28]),
        .Q(\Reset_Cnt_reg_n_0_[28] ),
        .R(\Reset_Cnt[30]_i_1_n_0 ));
  CARRY4 \Reset_Cnt_reg[28]_i_1 
       (.CI(\Reset_Cnt_reg[24]_i_1_n_0 ),
        .CO({\Reset_Cnt_reg[28]_i_1_n_0 ,\Reset_Cnt_reg[28]_i_1_n_1 ,\Reset_Cnt_reg[28]_i_1_n_2 ,\Reset_Cnt_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S({\Reset_Cnt_reg_n_0_[28] ,\Reset_Cnt_reg_n_0_[27] ,\Reset_Cnt_reg_n_0_[26] ,\Reset_Cnt_reg_n_0_[25] }));
  FDRE #(
    .INIT(1'b0)) 
    \Reset_Cnt_reg[29] 
       (.C(CLK100MHz),
        .CE(Reset_Cnt),
        .D(data0[29]),
        .Q(\Reset_Cnt_reg_n_0_[29] ),
        .R(\Reset_Cnt[30]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \Reset_Cnt_reg[2] 
       (.C(CLK100MHz),
        .CE(Reset_Cnt),
        .D(\Reset_Cnt[2]_i_1_n_0 ),
        .Q(\Reset_Cnt_reg_n_0_[2] ),
        .S(\Reset_Cnt[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Reset_Cnt_reg[30] 
       (.C(CLK100MHz),
        .CE(Reset_Cnt),
        .D(data0[30]),
        .Q(\Reset_Cnt_reg_n_0_[30] ),
        .R(\Reset_Cnt[30]_i_1_n_0 ));
  CARRY4 \Reset_Cnt_reg[30]_i_3 
       (.CI(\Reset_Cnt_reg[28]_i_1_n_0 ),
        .CO({\NLW_Reset_Cnt_reg[30]_i_3_CO_UNCONNECTED [3:1],\Reset_Cnt_reg[30]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_Reset_Cnt_reg[30]_i_3_O_UNCONNECTED [3:2],data0[30:29]}),
        .S({1'b0,1'b0,\Reset_Cnt_reg_n_0_[30] ,\Reset_Cnt_reg_n_0_[29] }));
  FDSE #(
    .INIT(1'b0)) 
    \Reset_Cnt_reg[3] 
       (.C(CLK100MHz),
        .CE(Reset_Cnt),
        .D(\Reset_Cnt[3]_i_1_n_0 ),
        .Q(\Reset_Cnt_reg_n_0_[3] ),
        .S(\Reset_Cnt[15]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \Reset_Cnt_reg[4] 
       (.C(CLK100MHz),
        .CE(Reset_Cnt),
        .D(\Reset_Cnt[4]_i_1_n_0 ),
        .Q(\Reset_Cnt_reg_n_0_[4] ),
        .S(\Reset_Cnt[15]_i_1_n_0 ));
  CARRY4 \Reset_Cnt_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\Reset_Cnt_reg[4]_i_2_n_0 ,\Reset_Cnt_reg[4]_i_2_n_1 ,\Reset_Cnt_reg[4]_i_2_n_2 ,\Reset_Cnt_reg[4]_i_2_n_3 }),
        .CYINIT(\Reset_Cnt_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\Reset_Cnt_reg_n_0_[4] ,\Reset_Cnt_reg_n_0_[3] ,\Reset_Cnt_reg_n_0_[2] ,\Reset_Cnt_reg_n_0_[1] }));
  FDSE #(
    .INIT(1'b0)) 
    \Reset_Cnt_reg[5] 
       (.C(CLK100MHz),
        .CE(Reset_Cnt),
        .D(\Reset_Cnt[5]_i_1_n_0 ),
        .Q(\Reset_Cnt_reg_n_0_[5] ),
        .S(\Reset_Cnt[15]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \Reset_Cnt_reg[6] 
       (.C(CLK100MHz),
        .CE(Reset_Cnt),
        .D(\Reset_Cnt[6]_i_1_n_0 ),
        .Q(\Reset_Cnt_reg_n_0_[6] ),
        .S(\Reset_Cnt[15]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \Reset_Cnt_reg[7] 
       (.C(CLK100MHz),
        .CE(Reset_Cnt),
        .D(\Reset_Cnt[7]_i_1_n_0 ),
        .Q(\Reset_Cnt_reg_n_0_[7] ),
        .S(\Reset_Cnt[15]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \Reset_Cnt_reg[8] 
       (.C(CLK100MHz),
        .CE(Reset_Cnt),
        .D(\Reset_Cnt[8]_i_1_n_0 ),
        .Q(\Reset_Cnt_reg_n_0_[8] ),
        .S(\Reset_Cnt[15]_i_1_n_0 ));
  CARRY4 \Reset_Cnt_reg[8]_i_2 
       (.CI(\Reset_Cnt_reg[4]_i_2_n_0 ),
        .CO({\Reset_Cnt_reg[8]_i_2_n_0 ,\Reset_Cnt_reg[8]_i_2_n_1 ,\Reset_Cnt_reg[8]_i_2_n_2 ,\Reset_Cnt_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\Reset_Cnt_reg_n_0_[8] ,\Reset_Cnt_reg_n_0_[7] ,\Reset_Cnt_reg_n_0_[6] ,\Reset_Cnt_reg_n_0_[5] }));
  FDSE #(
    .INIT(1'b0)) 
    \Reset_Cnt_reg[9] 
       (.C(CLK100MHz),
        .CE(Reset_Cnt),
        .D(\Reset_Cnt[9]_i_1_n_0 ),
        .Q(\Reset_Cnt_reg_n_0_[9] ),
        .S(\Reset_Cnt[15]_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "TOP_BD" *) 
module Zynq_Design_UART_V1_9_0_0_TOP_BD
   (Receive_OUT,
    Receive_EM,
    Receive_AE,
    Transmit_FU,
    Transmit_AF,
    Tx,
    Reset_0,
    Receive_CLK,
    Receive_RD_EN,
    CLK100MHz,
    Transmit_CLK,
    Transmit_IN,
    Transmit_WR_EN,
    Rx,
    UART_Debug_Enable);
  output [7:0]Receive_OUT;
  output Receive_EM;
  output Receive_AE;
  output Transmit_FU;
  output Transmit_AF;
  output Tx;
  input Reset_0;
  input Receive_CLK;
  input Receive_RD_EN;
  input CLK100MHz;
  input Transmit_CLK;
  input [7:0]Transmit_IN;
  input Transmit_WR_EN;
  input Rx;
  input UART_Debug_Enable;

  wire CLK100MHz;
  wire [7:0]FIFO_IN;
  wire Net;
  wire Receive_AE;
  wire Receive_Buffer_almost_full;
  wire Receive_Buffer_full;
  wire Receive_CLK;
  wire Receive_EM;
  wire [7:0]Receive_OUT;
  wire Receive_RD_EN;
  wire Reset_0;
  wire Reset_Controller_0_Reset_1;
  wire Reset_Out;
  wire Rx;
  wire Transmit_AF;
  wire Transmit_Buffer_empty;
  wire Transmit_CLK;
  wire Transmit_FU;
  wire [7:0]Transmit_IN;
  wire Transmit_WR_EN;
  wire Tx;
  wire [7:0]UART_0_FIFO_OT;
  wire UART_0_FIFO_WT;
  wire UART_0_Rx_FIFO_CLK;
  wire UART_0_Tx;
  wire UART_0_Tx_FIFO_CLK;
  wire UART_Debug_Enable;
  wire fifo_generator_0_almost_empty;
  wire NLW_Receive_Buffer_rd_rst_busy_UNCONNECTED;
  wire NLW_Receive_Buffer_wr_rst_busy_UNCONNECTED;
  wire NLW_Transmit_Buffer_rd_rst_busy_UNCONNECTED;
  wire NLW_Transmit_Buffer_wr_rst_busy_UNCONNECTED;

  Zynq_Design_UART_V1_9_0_0_TOP_BD_Debouncer_0_0 Debouncer_0
       (.CLK100MHz(CLK100MHz),
        .Reset_0(Reset_0),
        .Reset_Out(Reset_Out));
  (* CHECK_LICENSE_TYPE = "TOP_BD_fifo_generator_0_1,fifo_generator_v13_2_4,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fifo_generator_v13_2_4,Vivado 2019.1" *) 
  Zynq_Design_UART_V1_9_0_0_TOP_BD_fifo_generator_0_1 Receive_Buffer
       (.almost_empty(Receive_AE),
        .almost_full(Receive_Buffer_almost_full),
        .din(UART_0_FIFO_OT),
        .dout(Receive_OUT),
        .empty(Receive_EM),
        .full(Receive_Buffer_full),
        .rd_clk(Receive_CLK),
        .rd_en(Receive_RD_EN),
        .rd_rst_busy(NLW_Receive_Buffer_rd_rst_busy_UNCONNECTED),
        .rst(Reset_Controller_0_Reset_1),
        .wr_clk(UART_0_Rx_FIFO_CLK),
        .wr_en(UART_0_FIFO_WT),
        .wr_rst_busy(NLW_Receive_Buffer_wr_rst_busy_UNCONNECTED));
  Zynq_Design_UART_V1_9_0_0_TOP_BD_Reset_Controller_0_0 Reset_Controller_0
       (.CLK100MHz(CLK100MHz),
        .Reset_Out(Reset_Out),
        .rst(Reset_Controller_0_Reset_1));
  (* CHECK_LICENSE_TYPE = "TOP_BD_fifo_generator_0_0,fifo_generator_v13_2_4,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fifo_generator_v13_2_4,Vivado 2019.1" *) 
  Zynq_Design_UART_V1_9_0_0_TOP_BD_fifo_generator_0_0 Transmit_Buffer
       (.almost_empty(fifo_generator_0_almost_empty),
        .almost_full(Transmit_AF),
        .din(Transmit_IN),
        .dout(FIFO_IN),
        .empty(Transmit_Buffer_empty),
        .full(Transmit_FU),
        .rd_clk(UART_0_Tx_FIFO_CLK),
        .rd_en(Net),
        .rd_rst_busy(NLW_Transmit_Buffer_rd_rst_busy_UNCONNECTED),
        .rst(Reset_Controller_0_Reset_1),
        .wr_clk(Transmit_CLK),
        .wr_en(Transmit_WR_EN),
        .wr_rst_busy(NLW_Transmit_Buffer_wr_rst_busy_UNCONNECTED));
  Zynq_Design_UART_V1_9_0_0_TOP_BD_UART_0_0 UART_0
       (.CLK(UART_0_Rx_FIFO_CLK),
        .CLK100MHz(CLK100MHz),
        .D(FIFO_IN),
        .Q(UART_0_FIFO_OT),
        .Rx(Rx),
        .UART_0_Tx(UART_0_Tx),
        .UART_0_Tx_FIFO_CLK(UART_0_Tx_FIFO_CLK),
        .almost_full(Receive_Buffer_almost_full),
        .empty(Transmit_Buffer_empty),
        .full(Receive_Buffer_full),
        .rd_en(Net),
        .wr_en(UART_0_FIFO_WT));
  Zynq_Design_UART_V1_9_0_0_TOP_BD_UART_Debug_0_0 UART_Debug_0
       (.CLK100MHz(CLK100MHz),
        .Tx(Tx),
        .UART_0_Tx(UART_0_Tx),
        .UART_Debug_Enable(UART_Debug_Enable));
endmodule

(* ORIG_REF_NAME = "TOP_BD_Debouncer_0_0" *) 
module Zynq_Design_UART_V1_9_0_0_TOP_BD_Debouncer_0_0
   (Reset_Out,
    CLK100MHz,
    Reset_0);
  output Reset_Out;
  input CLK100MHz;
  input Reset_0;

  wire CLK100MHz;
  wire Reset_0;
  wire Reset_Out;

  Zynq_Design_UART_V1_9_0_0_Debouncer U0
       (.CLK100MHz(CLK100MHz),
        .Reset_0(Reset_0),
        .Reset_Out(Reset_Out));
endmodule

(* ORIG_REF_NAME = "TOP_BD_Reset_Controller_0_0" *) 
module Zynq_Design_UART_V1_9_0_0_TOP_BD_Reset_Controller_0_0
   (rst,
    CLK100MHz,
    Reset_Out);
  output rst;
  input CLK100MHz;
  input Reset_Out;

  wire CLK100MHz;
  wire Reset_Out;
  wire rst;

  Zynq_Design_UART_V1_9_0_0_Reset_Controller U0
       (.CLK100MHz(CLK100MHz),
        .Reset_Out(Reset_Out),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "TOP_BD_UART_0_0" *) 
module Zynq_Design_UART_V1_9_0_0_TOP_BD_UART_0_0
   (UART_0_Tx_FIFO_CLK,
    UART_0_Tx,
    CLK,
    rd_en,
    wr_en,
    Q,
    CLK100MHz,
    almost_full,
    full,
    empty,
    D,
    Rx);
  output UART_0_Tx_FIFO_CLK;
  output UART_0_Tx;
  output CLK;
  output rd_en;
  output wr_en;
  output [7:0]Q;
  input CLK100MHz;
  input almost_full;
  input full;
  input empty;
  input [7:0]D;
  input Rx;

  wire CLK;
  wire CLK100MHz;
  wire [7:0]D;
  wire [7:0]Q;
  wire Rx;
  wire UART_0_Tx;
  wire UART_0_Tx_FIFO_CLK;
  wire almost_full;
  wire empty;
  wire full;
  wire rd_en;
  wire wr_en;

  Zynq_Design_UART_V1_9_0_0_UART U0
       (.CLK100MHz(CLK100MHz),
        .CLK9600_8_D_reg_0(CLK),
        .CLK9600_D_reg_0(UART_0_Tx_FIFO_CLK),
        .D(D),
        .Q(Q),
        .Rx(Rx),
        .UART_0_Tx(UART_0_Tx),
        .almost_full(almost_full),
        .empty(empty),
        .full(full),
        .rd_en(rd_en),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "TOP_BD_UART_Debug_0_0" *) 
module Zynq_Design_UART_V1_9_0_0_TOP_BD_UART_Debug_0_0
   (Tx,
    CLK100MHz,
    UART_Debug_Enable,
    UART_0_Tx);
  output Tx;
  input CLK100MHz;
  input UART_Debug_Enable;
  input UART_0_Tx;

  wire CLK100MHz;
  wire Tx;
  wire UART_0_Tx;
  wire UART_Debug_Enable;

  Zynq_Design_UART_V1_9_0_0_UART_Debug U0
       (.CLK100MHz(CLK100MHz),
        .Tx(Tx),
        .UART_0_Tx(UART_0_Tx),
        .UART_Debug_Enable(UART_Debug_Enable));
endmodule

(* CHECK_LICENSE_TYPE = "TOP_BD_fifo_generator_0_0,fifo_generator_v13_2_4,{}" *) (* ORIG_REF_NAME = "TOP_BD_fifo_generator_0_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "fifo_generator_v13_2_4,Vivado 2019.1" *) 
module Zynq_Design_UART_V1_9_0_0_TOP_BD_fifo_generator_0_0
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    almost_full,
    empty,
    almost_empty,
    wr_rst_busy,
    rd_rst_busy);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE ALMOST_FULL" *) output almost_full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ ALMOST_EMPTY" *) output almost_empty;
  output wr_rst_busy;
  output rd_rst_busy;

  wire almost_empty;
  wire almost_full;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rd_rst_busy;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [8:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [8:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [8:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "9" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "1" *) 
  (* C_HAS_ALMOST_FULL = "1" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "509" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "508" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "9" *) 
  (* C_RD_DEPTH = "512" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "9" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "9" *) 
  (* C_WR_DEPTH = "512" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "9" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 U0
       (.almost_empty(almost_empty),
        .almost_full(almost_full),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[8:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[8:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(rd_rst_busy),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[8:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* CHECK_LICENSE_TYPE = "TOP_BD_fifo_generator_0_1,fifo_generator_v13_2_4,{}" *) (* ORIG_REF_NAME = "TOP_BD_fifo_generator_0_1" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "fifo_generator_v13_2_4,Vivado 2019.1" *) 
module Zynq_Design_UART_V1_9_0_0_TOP_BD_fifo_generator_0_1
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    almost_full,
    empty,
    almost_empty,
    wr_rst_busy,
    rd_rst_busy);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE ALMOST_FULL" *) output almost_full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ ALMOST_EMPTY" *) output almost_empty;
  output wr_rst_busy;
  output rd_rst_busy;

  wire almost_empty;
  wire almost_full;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rd_rst_busy;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [8:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [8:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [8:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "9" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "1" *) 
  (* C_HAS_ALMOST_FULL = "1" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "509" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "508" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "9" *) 
  (* C_RD_DEPTH = "512" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "9" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "9" *) 
  (* C_WR_DEPTH = "512" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "9" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1 U0
       (.almost_empty(almost_empty),
        .almost_full(almost_full),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[8:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[8:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(rd_rst_busy),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[8:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* ORIG_REF_NAME = "TOP_BD_wrapper" *) 
module Zynq_Design_UART_V1_9_0_0_TOP_BD_wrapper
   (CLK100MHz,
    Receive_AE,
    Receive_CLK,
    Receive_EM,
    Receive_OUT,
    Receive_RD_EN,
    Reset_0,
    Rx,
    Transmit_AF,
    Transmit_CLK,
    Transmit_FU,
    Transmit_IN,
    Transmit_WR_EN,
    Tx,
    UART_Debug_Enable);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK.CLK100MHZ CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK.CLK100MHZ, ASSOCIATED_RESET Reset_0, CLK_DOMAIN TOP_BD_sys_clock, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input CLK100MHz;
  output Receive_AE;
  input Receive_CLK;
  output Receive_EM;
  output [7:0]Receive_OUT;
  input Receive_RD_EN;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RST.RESET_0 RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RST.RESET_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input Reset_0;
  input Rx;
  output Transmit_AF;
  input Transmit_CLK;
  output Transmit_FU;
  input [7:0]Transmit_IN;
  input Transmit_WR_EN;
  output Tx;
  input UART_Debug_Enable;

  wire CLK100MHz;
  wire Receive_AE;
  wire Receive_CLK;
  wire Receive_EM;
  wire [7:0]Receive_OUT;
  wire Receive_RD_EN;
  wire Reset_0;
  wire Rx;
  wire Transmit_AF;
  wire Transmit_CLK;
  wire Transmit_FU;
  wire [7:0]Transmit_IN;
  wire Transmit_WR_EN;
  wire Tx;
  wire UART_Debug_Enable;

  Zynq_Design_UART_V1_9_0_0_TOP_BD TOP_BD_i
       (.CLK100MHz(CLK100MHz),
        .Receive_AE(Receive_AE),
        .Receive_CLK(Receive_CLK),
        .Receive_EM(Receive_EM),
        .Receive_OUT(Receive_OUT),
        .Receive_RD_EN(Receive_RD_EN),
        .Reset_0(Reset_0),
        .Rx(Rx),
        .Transmit_AF(Transmit_AF),
        .Transmit_CLK(Transmit_CLK),
        .Transmit_FU(Transmit_FU),
        .Transmit_IN(Transmit_IN),
        .Transmit_WR_EN(Transmit_WR_EN),
        .Tx(Tx),
        .UART_Debug_Enable(UART_Debug_Enable));
endmodule

(* ORIG_REF_NAME = "UART" *) 
module Zynq_Design_UART_V1_9_0_0_UART
   (CLK9600_D_reg_0,
    UART_0_Tx,
    CLK9600_8_D_reg_0,
    rd_en,
    wr_en,
    Q,
    CLK100MHz,
    almost_full,
    full,
    empty,
    D,
    Rx);
  output CLK9600_D_reg_0;
  output UART_0_Tx;
  output CLK9600_8_D_reg_0;
  output rd_en;
  output wr_en;
  output [7:0]Q;
  input CLK100MHz;
  input almost_full;
  input full;
  input empty;
  input [7:0]D;
  input Rx;

  wire CLK100MHz;
  wire [15:0]CLK9600;
  wire CLK96000_carry__0_n_0;
  wire CLK96000_carry__0_n_1;
  wire CLK96000_carry__0_n_2;
  wire CLK96000_carry__0_n_3;
  wire CLK96000_carry__0_n_4;
  wire CLK96000_carry__0_n_5;
  wire CLK96000_carry__0_n_6;
  wire CLK96000_carry__0_n_7;
  wire CLK96000_carry__1_n_0;
  wire CLK96000_carry__1_n_1;
  wire CLK96000_carry__1_n_2;
  wire CLK96000_carry__1_n_3;
  wire CLK96000_carry__1_n_4;
  wire CLK96000_carry__1_n_5;
  wire CLK96000_carry__1_n_6;
  wire CLK96000_carry__1_n_7;
  wire CLK96000_carry__2_n_2;
  wire CLK96000_carry__2_n_3;
  wire CLK96000_carry__2_n_5;
  wire CLK96000_carry__2_n_6;
  wire CLK96000_carry__2_n_7;
  wire CLK96000_carry_n_0;
  wire CLK96000_carry_n_1;
  wire CLK96000_carry_n_2;
  wire CLK96000_carry_n_3;
  wire CLK96000_carry_n_4;
  wire CLK96000_carry_n_5;
  wire CLK96000_carry_n_6;
  wire CLK96000_carry_n_7;
  wire \CLK9600[0]_i_1_n_0 ;
  wire \CLK9600[15]_i_1_n_0 ;
  wire \CLK9600[15]_i_2_n_0 ;
  wire \CLK9600[15]_i_3_n_0 ;
  wire [15:0]CLK9600_8;
  wire CLK9600_80_carry__0_n_0;
  wire CLK9600_80_carry__0_n_1;
  wire CLK9600_80_carry__0_n_2;
  wire CLK9600_80_carry__0_n_3;
  wire CLK9600_80_carry__0_n_4;
  wire CLK9600_80_carry__0_n_5;
  wire CLK9600_80_carry__0_n_6;
  wire CLK9600_80_carry__0_n_7;
  wire CLK9600_80_carry__1_n_0;
  wire CLK9600_80_carry__1_n_1;
  wire CLK9600_80_carry__1_n_2;
  wire CLK9600_80_carry__1_n_3;
  wire CLK9600_80_carry__1_n_4;
  wire CLK9600_80_carry__1_n_5;
  wire CLK9600_80_carry__1_n_6;
  wire CLK9600_80_carry__1_n_7;
  wire CLK9600_80_carry__2_n_2;
  wire CLK9600_80_carry__2_n_3;
  wire CLK9600_80_carry__2_n_5;
  wire CLK9600_80_carry__2_n_6;
  wire CLK9600_80_carry__2_n_7;
  wire CLK9600_80_carry_n_0;
  wire CLK9600_80_carry_n_1;
  wire CLK9600_80_carry_n_2;
  wire CLK9600_80_carry_n_3;
  wire CLK9600_80_carry_n_4;
  wire CLK9600_80_carry_n_5;
  wire CLK9600_80_carry_n_6;
  wire CLK9600_80_carry_n_7;
  wire \CLK9600_8[0]_i_1_n_0 ;
  wire \CLK9600_8[15]_i_1_n_0 ;
  wire \CLK9600_8[15]_i_2_n_0 ;
  wire \CLK9600_8[15]_i_3_n_0 ;
  wire \CLK9600_8[15]_i_4_n_0 ;
  wire CLK9600_8_D_i_1_n_0;
  wire CLK9600_8_D_i_2_n_0;
  wire CLK9600_8_D_reg_0;
  wire CLK9600_D_i_1_n_0;
  wire CLK9600_D_i_2_n_0;
  wire CLK9600_D_i_3_n_0;
  wire CLK9600_D_reg_0;
  wire [7:0]D;
  wire FIFO_OT0;
  wire \FIFO_OT[7]_i_2_n_0 ;
  wire FIFO_RD_i_1_n_0;
  wire FIFO_WT_i_1_n_0;
  wire \FSM_sequential_Receive_State[0]_i_1_n_0 ;
  wire \FSM_sequential_Receive_State[1]_i_1_n_0 ;
  wire \FSM_sequential_Receive_State[2]_i_1_n_0 ;
  wire \FSM_sequential_Receive_State[2]_i_2_n_0 ;
  wire \FSM_sequential_Receive_State[2]_i_3_n_0 ;
  wire \FSM_sequential_Rx_FIFO_State[0]_i_1_n_0 ;
  wire \FSM_sequential_Rx_FIFO_State[1]_i_1_n_0 ;
  wire \FSM_sequential_Rx_FIFO_State[1]_i_2_n_0 ;
  wire \FSM_sequential_Transmit_State[0]_i_1_n_0 ;
  wire \FSM_sequential_Transmit_State[1]_i_1_n_0 ;
  wire \FSM_sequential_Transmit_State[2]_i_10_n_0 ;
  wire \FSM_sequential_Transmit_State[2]_i_11_n_0 ;
  wire \FSM_sequential_Transmit_State[2]_i_12_n_0 ;
  wire \FSM_sequential_Transmit_State[2]_i_13_n_0 ;
  wire \FSM_sequential_Transmit_State[2]_i_1_n_0 ;
  wire \FSM_sequential_Transmit_State[2]_i_2_n_0 ;
  wire \FSM_sequential_Transmit_State[2]_i_3_n_0 ;
  wire \FSM_sequential_Transmit_State[2]_i_4_n_0 ;
  wire \FSM_sequential_Transmit_State[2]_i_5_n_0 ;
  wire \FSM_sequential_Transmit_State[2]_i_6_n_0 ;
  wire \FSM_sequential_Transmit_State[2]_i_7_n_0 ;
  wire \FSM_sequential_Transmit_State[2]_i_8_n_0 ;
  wire \FSM_sequential_Transmit_State[2]_i_9_n_0 ;
  wire [7:0]Q;
  wire RX_BIT_0;
  wire \RX_BIT_0[0]_i_1_n_0 ;
  wire \RX_BIT_0_reg_n_0_[0] ;
  wire RX_BIT_1;
  wire \RX_BIT_1_reg_n_0_[0] ;
  wire RX_BIT_2;
  wire \RX_BIT_2_reg_n_0_[0] ;
  wire RX_BIT_3;
  wire \RX_BIT_3_reg_n_0_[0] ;
  wire RX_BIT_4;
  wire \RX_BIT_4_reg_n_0_[0] ;
  wire RX_BIT_5;
  wire \RX_BIT_5_reg_n_0_[0] ;
  wire RX_BIT_6;
  wire \RX_BIT_6_reg_n_0_[0] ;
  wire RX_BIT_7;
  wire \RX_BIT_7_reg_n_0_[0] ;
  wire [7:0]RX_MSG;
  wire RX_MSG_0;
  wire [3:0]RX_SBR_0;
  wire \RX_SBR_0[3]_i_1_n_0 ;
  wire \RX_SBR_0[3]_i_3_n_0 ;
  wire \RX_SBR_0[3]_i_4_n_0 ;
  wire \RX_SBR_0[3]_i_5_n_0 ;
  wire \RX_SBR_0_reg_n_0_[0] ;
  wire \RX_SBR_0_reg_n_0_[1] ;
  wire \RX_SBR_0_reg_n_0_[2] ;
  wire \RX_SBR_0_reg_n_0_[3] ;
  wire [3:0]RX_SBR_1;
  wire \RX_SBR_1[3]_i_1_n_0 ;
  wire \RX_SBR_1[3]_i_3_n_0 ;
  wire \RX_SBR_1_reg_n_0_[0] ;
  wire \RX_SBR_1_reg_n_0_[1] ;
  wire \RX_SBR_1_reg_n_0_[2] ;
  wire \RX_SBR_1_reg_n_0_[3] ;
  wire [3:0]RX_SBR_2;
  wire \RX_SBR_2[3]_i_1_n_0 ;
  wire \RX_SBR_2_reg_n_0_[0] ;
  wire \RX_SBR_2_reg_n_0_[1] ;
  wire \RX_SBR_2_reg_n_0_[2] ;
  wire \RX_SBR_2_reg_n_0_[3] ;
  wire [3:0]RX_SBR_3;
  wire \RX_SBR_3[3]_i_1_n_0 ;
  wire \RX_SBR_3_reg_n_0_[0] ;
  wire \RX_SBR_3_reg_n_0_[1] ;
  wire \RX_SBR_3_reg_n_0_[2] ;
  wire \RX_SBR_3_reg_n_0_[3] ;
  wire [3:0]RX_SBR_4;
  wire \RX_SBR_4[3]_i_1_n_0 ;
  wire \RX_SBR_4_reg_n_0_[0] ;
  wire \RX_SBR_4_reg_n_0_[1] ;
  wire \RX_SBR_4_reg_n_0_[2] ;
  wire \RX_SBR_4_reg_n_0_[3] ;
  wire [3:0]RX_SBR_5;
  wire \RX_SBR_5[3]_i_1_n_0 ;
  wire \RX_SBR_5_reg_n_0_[0] ;
  wire \RX_SBR_5_reg_n_0_[1] ;
  wire \RX_SBR_5_reg_n_0_[2] ;
  wire \RX_SBR_5_reg_n_0_[3] ;
  wire [3:0]RX_SBR_6;
  wire \RX_SBR_6[3]_i_1_n_0 ;
  wire \RX_SBR_6_reg_n_0_[0] ;
  wire \RX_SBR_6_reg_n_0_[1] ;
  wire \RX_SBR_6_reg_n_0_[2] ;
  wire \RX_SBR_6_reg_n_0_[3] ;
  wire [3:0]RX_SBR_7;
  wire \RX_SBR_7[3]_i_1_n_0 ;
  wire \RX_SBR_7_reg_n_0_[0] ;
  wire \RX_SBR_7_reg_n_0_[1] ;
  wire \RX_SBR_7_reg_n_0_[2] ;
  wire \RX_SBR_7_reg_n_0_[3] ;
  wire [2:0]Receive_State;
  wire Rx;
  wire [1:0]Rx_FIFO_State__0;
  wire [7:0]Rx_RCV_Cnt;
  wire \Rx_RCV_Cnt[1]_i_2_n_0 ;
  wire \Rx_RCV_Cnt[1]_i_3_n_0 ;
  wire \Rx_RCV_Cnt[2]_i_2_n_0 ;
  wire \Rx_RCV_Cnt[5]_i_2_n_0 ;
  wire \Rx_RCV_Cnt[7]_i_1_n_0 ;
  wire \Rx_RCV_Cnt[7]_i_3_n_0 ;
  wire \Rx_RCV_Cnt_reg_n_0_[0] ;
  wire \Rx_RCV_Cnt_reg_n_0_[1] ;
  wire \Rx_RCV_Cnt_reg_n_0_[2] ;
  wire \Rx_RCV_Cnt_reg_n_0_[3] ;
  wire \Rx_RCV_Cnt_reg_n_0_[4] ;
  wire \Rx_RCV_Cnt_reg_n_0_[5] ;
  wire \Rx_RCV_Cnt_reg_n_0_[6] ;
  wire \Rx_RCV_Cnt_reg_n_0_[7] ;
  wire [2:0]Transmit_State__0;
  wire Tx_FIFO_State;
  wire \Tx_FIFO_State[0]_i_1_n_0 ;
  wire \Tx_FIFO_State[1]_i_1_n_0 ;
  wire \Tx_FIFO_State[2]_i_1_n_0 ;
  wire \Tx_FIFO_State_reg_n_0_[0] ;
  wire \Tx_FIFO_State_reg_n_0_[1] ;
  wire \Tx_FIFO_State_reg_n_0_[2] ;
  wire [7:0]Tx_Word_1;
  wire \Tx_Word_1[7]_i_1_n_0 ;
  wire Tx_Word_Cnt;
  wire Tx_Word_Cnt0_carry__0_n_0;
  wire Tx_Word_Cnt0_carry__0_n_1;
  wire Tx_Word_Cnt0_carry__0_n_2;
  wire Tx_Word_Cnt0_carry__0_n_3;
  wire Tx_Word_Cnt0_carry__1_n_0;
  wire Tx_Word_Cnt0_carry__1_n_1;
  wire Tx_Word_Cnt0_carry__1_n_2;
  wire Tx_Word_Cnt0_carry__1_n_3;
  wire Tx_Word_Cnt0_carry__2_n_0;
  wire Tx_Word_Cnt0_carry__2_n_1;
  wire Tx_Word_Cnt0_carry__2_n_2;
  wire Tx_Word_Cnt0_carry__2_n_3;
  wire Tx_Word_Cnt0_carry__3_n_0;
  wire Tx_Word_Cnt0_carry__3_n_1;
  wire Tx_Word_Cnt0_carry__3_n_2;
  wire Tx_Word_Cnt0_carry__3_n_3;
  wire Tx_Word_Cnt0_carry__4_n_0;
  wire Tx_Word_Cnt0_carry__4_n_1;
  wire Tx_Word_Cnt0_carry__4_n_2;
  wire Tx_Word_Cnt0_carry__4_n_3;
  wire Tx_Word_Cnt0_carry__5_n_0;
  wire Tx_Word_Cnt0_carry__5_n_1;
  wire Tx_Word_Cnt0_carry__5_n_2;
  wire Tx_Word_Cnt0_carry__5_n_3;
  wire Tx_Word_Cnt0_carry__6_n_3;
  wire Tx_Word_Cnt0_carry_n_0;
  wire Tx_Word_Cnt0_carry_n_1;
  wire Tx_Word_Cnt0_carry_n_2;
  wire Tx_Word_Cnt0_carry_n_3;
  wire \Tx_Word_Cnt[30]_i_1_n_0 ;
  wire \Tx_Word_Cnt_reg_n_0_[0] ;
  wire \Tx_Word_Cnt_reg_n_0_[10] ;
  wire \Tx_Word_Cnt_reg_n_0_[11] ;
  wire \Tx_Word_Cnt_reg_n_0_[12] ;
  wire \Tx_Word_Cnt_reg_n_0_[13] ;
  wire \Tx_Word_Cnt_reg_n_0_[14] ;
  wire \Tx_Word_Cnt_reg_n_0_[15] ;
  wire \Tx_Word_Cnt_reg_n_0_[16] ;
  wire \Tx_Word_Cnt_reg_n_0_[17] ;
  wire \Tx_Word_Cnt_reg_n_0_[18] ;
  wire \Tx_Word_Cnt_reg_n_0_[19] ;
  wire \Tx_Word_Cnt_reg_n_0_[1] ;
  wire \Tx_Word_Cnt_reg_n_0_[20] ;
  wire \Tx_Word_Cnt_reg_n_0_[21] ;
  wire \Tx_Word_Cnt_reg_n_0_[22] ;
  wire \Tx_Word_Cnt_reg_n_0_[23] ;
  wire \Tx_Word_Cnt_reg_n_0_[24] ;
  wire \Tx_Word_Cnt_reg_n_0_[25] ;
  wire \Tx_Word_Cnt_reg_n_0_[26] ;
  wire \Tx_Word_Cnt_reg_n_0_[27] ;
  wire \Tx_Word_Cnt_reg_n_0_[28] ;
  wire \Tx_Word_Cnt_reg_n_0_[29] ;
  wire \Tx_Word_Cnt_reg_n_0_[2] ;
  wire \Tx_Word_Cnt_reg_n_0_[30] ;
  wire \Tx_Word_Cnt_reg_n_0_[3] ;
  wire \Tx_Word_Cnt_reg_n_0_[4] ;
  wire \Tx_Word_Cnt_reg_n_0_[5] ;
  wire \Tx_Word_Cnt_reg_n_0_[6] ;
  wire \Tx_Word_Cnt_reg_n_0_[7] ;
  wire \Tx_Word_Cnt_reg_n_0_[8] ;
  wire \Tx_Word_Cnt_reg_n_0_[9] ;
  wire Tx_i_1_n_0;
  wire Tx_i_2_n_0;
  wire Tx_i_3_n_0;
  wire UART_0_Tx;
  wire almost_full;
  wire empty;
  wire full;
  wire [30:0]in4;
  wire rd_en;
  wire wr_en;
  wire [3:2]NLW_CLK96000_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_CLK96000_carry__2_O_UNCONNECTED;
  wire [3:2]NLW_CLK9600_80_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_CLK9600_80_carry__2_O_UNCONNECTED;
  wire [3:1]NLW_Tx_Word_Cnt0_carry__6_CO_UNCONNECTED;
  wire [3:2]NLW_Tx_Word_Cnt0_carry__6_O_UNCONNECTED;

  CARRY4 CLK96000_carry
       (.CI(1'b0),
        .CO({CLK96000_carry_n_0,CLK96000_carry_n_1,CLK96000_carry_n_2,CLK96000_carry_n_3}),
        .CYINIT(CLK9600[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({CLK96000_carry_n_4,CLK96000_carry_n_5,CLK96000_carry_n_6,CLK96000_carry_n_7}),
        .S(CLK9600[4:1]));
  CARRY4 CLK96000_carry__0
       (.CI(CLK96000_carry_n_0),
        .CO({CLK96000_carry__0_n_0,CLK96000_carry__0_n_1,CLK96000_carry__0_n_2,CLK96000_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({CLK96000_carry__0_n_4,CLK96000_carry__0_n_5,CLK96000_carry__0_n_6,CLK96000_carry__0_n_7}),
        .S(CLK9600[8:5]));
  CARRY4 CLK96000_carry__1
       (.CI(CLK96000_carry__0_n_0),
        .CO({CLK96000_carry__1_n_0,CLK96000_carry__1_n_1,CLK96000_carry__1_n_2,CLK96000_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({CLK96000_carry__1_n_4,CLK96000_carry__1_n_5,CLK96000_carry__1_n_6,CLK96000_carry__1_n_7}),
        .S(CLK9600[12:9]));
  CARRY4 CLK96000_carry__2
       (.CI(CLK96000_carry__1_n_0),
        .CO({NLW_CLK96000_carry__2_CO_UNCONNECTED[3:2],CLK96000_carry__2_n_2,CLK96000_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_CLK96000_carry__2_O_UNCONNECTED[3],CLK96000_carry__2_n_5,CLK96000_carry__2_n_6,CLK96000_carry__2_n_7}),
        .S({1'b0,CLK9600[15:13]}));
  LUT1 #(
    .INIT(2'h1)) 
    \CLK9600[0]_i_1 
       (.I0(CLK9600[0]),
        .O(\CLK9600[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \CLK9600[15]_i_1 
       (.I0(\CLK9600[15]_i_2_n_0 ),
        .I1(CLK9600[3]),
        .I2(CLK9600[1]),
        .I3(CLK9600[6]),
        .I4(CLK9600[4]),
        .I5(\CLK9600[15]_i_3_n_0 ),
        .O(\CLK9600[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \CLK9600[15]_i_2 
       (.I0(CLK9600[14]),
        .I1(CLK9600[15]),
        .I2(CLK9600[12]),
        .I3(CLK9600[13]),
        .I4(CLK9600[11]),
        .I5(CLK9600[10]),
        .O(\CLK9600[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
    \CLK9600[15]_i_3 
       (.I0(CLK9600[0]),
        .I1(CLK9600[7]),
        .I2(CLK9600[9]),
        .I3(CLK9600[2]),
        .I4(CLK9600[5]),
        .I5(CLK9600[8]),
        .O(\CLK9600[15]_i_3_n_0 ));
  CARRY4 CLK9600_80_carry
       (.CI(1'b0),
        .CO({CLK9600_80_carry_n_0,CLK9600_80_carry_n_1,CLK9600_80_carry_n_2,CLK9600_80_carry_n_3}),
        .CYINIT(CLK9600_8[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({CLK9600_80_carry_n_4,CLK9600_80_carry_n_5,CLK9600_80_carry_n_6,CLK9600_80_carry_n_7}),
        .S(CLK9600_8[4:1]));
  CARRY4 CLK9600_80_carry__0
       (.CI(CLK9600_80_carry_n_0),
        .CO({CLK9600_80_carry__0_n_0,CLK9600_80_carry__0_n_1,CLK9600_80_carry__0_n_2,CLK9600_80_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({CLK9600_80_carry__0_n_4,CLK9600_80_carry__0_n_5,CLK9600_80_carry__0_n_6,CLK9600_80_carry__0_n_7}),
        .S(CLK9600_8[8:5]));
  CARRY4 CLK9600_80_carry__1
       (.CI(CLK9600_80_carry__0_n_0),
        .CO({CLK9600_80_carry__1_n_0,CLK9600_80_carry__1_n_1,CLK9600_80_carry__1_n_2,CLK9600_80_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({CLK9600_80_carry__1_n_4,CLK9600_80_carry__1_n_5,CLK9600_80_carry__1_n_6,CLK9600_80_carry__1_n_7}),
        .S(CLK9600_8[12:9]));
  CARRY4 CLK9600_80_carry__2
       (.CI(CLK9600_80_carry__1_n_0),
        .CO({NLW_CLK9600_80_carry__2_CO_UNCONNECTED[3:2],CLK9600_80_carry__2_n_2,CLK9600_80_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_CLK9600_80_carry__2_O_UNCONNECTED[3],CLK9600_80_carry__2_n_5,CLK9600_80_carry__2_n_6,CLK9600_80_carry__2_n_7}),
        .S({1'b0,CLK9600_8[15:13]}));
  LUT1 #(
    .INIT(2'h1)) 
    \CLK9600_8[0]_i_1 
       (.I0(CLK9600_8[0]),
        .O(\CLK9600_8[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000008)) 
    \CLK9600_8[15]_i_1 
       (.I0(CLK9600_8[5]),
        .I1(CLK9600_8[3]),
        .I2(CLK9600_8[0]),
        .I3(\CLK9600_8[15]_i_2_n_0 ),
        .I4(\CLK9600_8[15]_i_3_n_0 ),
        .O(\CLK9600_8[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \CLK9600_8[15]_i_2 
       (.I0(CLK9600_8[2]),
        .I1(CLK9600_8[1]),
        .I2(CLK9600_8[6]),
        .I3(CLK9600_8[4]),
        .O(\CLK9600_8[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \CLK9600_8[15]_i_3 
       (.I0(\CLK9600_8[15]_i_4_n_0 ),
        .I1(CLK9600_8[12]),
        .I2(CLK9600_8[13]),
        .I3(CLK9600_8[10]),
        .I4(CLK9600_8[11]),
        .O(\CLK9600_8[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \CLK9600_8[15]_i_4 
       (.I0(CLK9600_8[7]),
        .I1(CLK9600_8[14]),
        .I2(CLK9600_8[15]),
        .I3(CLK9600_8[9]),
        .I4(CLK9600_8[8]),
        .O(\CLK9600_8[15]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    CLK9600_8_D_i_1
       (.I0(\CLK9600_8[15]_i_3_n_0 ),
        .I1(CLK9600_8[6]),
        .I2(CLK9600_8_D_i_2_n_0),
        .O(CLK9600_8_D_i_1_n_0));
  LUT6 #(
    .INIT(64'hE0A0A0A000000000)) 
    CLK9600_8_D_i_2
       (.I0(CLK9600_8[3]),
        .I1(CLK9600_8[2]),
        .I2(CLK9600_8[5]),
        .I3(CLK9600_8[1]),
        .I4(CLK9600_8[0]),
        .I5(CLK9600_8[4]),
        .O(CLK9600_8_D_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    CLK9600_8_D_reg
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(CLK9600_8_D_i_1_n_0),
        .Q(CLK9600_8_D_reg_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CLK9600_8_reg[0] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(\CLK9600_8[0]_i_1_n_0 ),
        .Q(CLK9600_8[0]),
        .R(\CLK9600_8[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CLK9600_8_reg[10] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(CLK9600_80_carry__1_n_6),
        .Q(CLK9600_8[10]),
        .R(\CLK9600_8[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CLK9600_8_reg[11] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(CLK9600_80_carry__1_n_5),
        .Q(CLK9600_8[11]),
        .R(\CLK9600_8[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CLK9600_8_reg[12] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(CLK9600_80_carry__1_n_4),
        .Q(CLK9600_8[12]),
        .R(\CLK9600_8[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CLK9600_8_reg[13] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(CLK9600_80_carry__2_n_7),
        .Q(CLK9600_8[13]),
        .R(\CLK9600_8[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CLK9600_8_reg[14] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(CLK9600_80_carry__2_n_6),
        .Q(CLK9600_8[14]),
        .R(\CLK9600_8[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CLK9600_8_reg[15] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(CLK9600_80_carry__2_n_5),
        .Q(CLK9600_8[15]),
        .R(\CLK9600_8[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CLK9600_8_reg[1] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(CLK9600_80_carry_n_7),
        .Q(CLK9600_8[1]),
        .R(\CLK9600_8[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CLK9600_8_reg[2] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(CLK9600_80_carry_n_6),
        .Q(CLK9600_8[2]),
        .R(\CLK9600_8[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CLK9600_8_reg[3] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(CLK9600_80_carry_n_5),
        .Q(CLK9600_8[3]),
        .R(\CLK9600_8[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CLK9600_8_reg[4] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(CLK9600_80_carry_n_4),
        .Q(CLK9600_8[4]),
        .R(\CLK9600_8[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CLK9600_8_reg[5] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(CLK9600_80_carry__0_n_7),
        .Q(CLK9600_8[5]),
        .R(\CLK9600_8[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CLK9600_8_reg[6] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(CLK9600_80_carry__0_n_6),
        .Q(CLK9600_8[6]),
        .R(\CLK9600_8[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CLK9600_8_reg[7] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(CLK9600_80_carry__0_n_5),
        .Q(CLK9600_8[7]),
        .R(\CLK9600_8[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CLK9600_8_reg[8] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(CLK9600_80_carry__0_n_4),
        .Q(CLK9600_8[8]),
        .R(\CLK9600_8[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CLK9600_8_reg[9] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(CLK9600_80_carry__1_n_7),
        .Q(CLK9600_8[9]),
        .R(\CLK9600_8[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF80)) 
    CLK9600_D_i_1
       (.I0(CLK9600[4]),
        .I1(CLK9600[7]),
        .I2(CLK9600_D_i_2_n_0),
        .I3(CLK9600_D_i_3_n_0),
        .I4(\CLK9600[15]_i_2_n_0 ),
        .I5(CLK9600[9]),
        .O(CLK9600_D_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFF8000000000000)) 
    CLK9600_D_i_2
       (.I0(CLK9600[1]),
        .I1(CLK9600[0]),
        .I2(CLK9600[3]),
        .I3(CLK9600[2]),
        .I4(CLK9600[5]),
        .I5(CLK9600[8]),
        .O(CLK9600_D_i_2_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    CLK9600_D_i_3
       (.I0(CLK9600[8]),
        .I1(CLK9600[6]),
        .I2(CLK9600[7]),
        .O(CLK9600_D_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    CLK9600_D_reg
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(CLK9600_D_i_1_n_0),
        .Q(CLK9600_D_reg_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CLK9600_reg[0] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(\CLK9600[0]_i_1_n_0 ),
        .Q(CLK9600[0]),
        .R(\CLK9600[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CLK9600_reg[10] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(CLK96000_carry__1_n_6),
        .Q(CLK9600[10]),
        .R(\CLK9600[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CLK9600_reg[11] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(CLK96000_carry__1_n_5),
        .Q(CLK9600[11]),
        .R(\CLK9600[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CLK9600_reg[12] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(CLK96000_carry__1_n_4),
        .Q(CLK9600[12]),
        .R(\CLK9600[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CLK9600_reg[13] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(CLK96000_carry__2_n_7),
        .Q(CLK9600[13]),
        .R(\CLK9600[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CLK9600_reg[14] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(CLK96000_carry__2_n_6),
        .Q(CLK9600[14]),
        .R(\CLK9600[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CLK9600_reg[15] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(CLK96000_carry__2_n_5),
        .Q(CLK9600[15]),
        .R(\CLK9600[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CLK9600_reg[1] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(CLK96000_carry_n_7),
        .Q(CLK9600[1]),
        .R(\CLK9600[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CLK9600_reg[2] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(CLK96000_carry_n_6),
        .Q(CLK9600[2]),
        .R(\CLK9600[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CLK9600_reg[3] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(CLK96000_carry_n_5),
        .Q(CLK9600[3]),
        .R(\CLK9600[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CLK9600_reg[4] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(CLK96000_carry_n_4),
        .Q(CLK9600[4]),
        .R(\CLK9600[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CLK9600_reg[5] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(CLK96000_carry__0_n_7),
        .Q(CLK9600[5]),
        .R(\CLK9600[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CLK9600_reg[6] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(CLK96000_carry__0_n_6),
        .Q(CLK9600[6]),
        .R(\CLK9600[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CLK9600_reg[7] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(CLK96000_carry__0_n_5),
        .Q(CLK9600[7]),
        .R(\CLK9600[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CLK9600_reg[8] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(CLK96000_carry__0_n_4),
        .Q(CLK9600[8]),
        .R(\CLK9600[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CLK9600_reg[9] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(CLK96000_carry__1_n_7),
        .Q(CLK9600[9]),
        .R(\CLK9600[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \FIFO_OT[7]_i_1 
       (.I0(Rx_FIFO_State__0[0]),
        .I1(Rx_FIFO_State__0[1]),
        .O(FIFO_OT0));
  LUT4 #(
    .INIT(16'h0004)) 
    \FIFO_OT[7]_i_2 
       (.I0(Rx_FIFO_State__0[1]),
        .I1(Rx_FIFO_State__0[0]),
        .I2(almost_full),
        .I3(full),
        .O(\FIFO_OT[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_OT_reg[0] 
       (.C(CLK9600_8_D_reg_0),
        .CE(\FIFO_OT[7]_i_2_n_0 ),
        .D(RX_MSG[0]),
        .Q(Q[0]),
        .R(FIFO_OT0));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_OT_reg[1] 
       (.C(CLK9600_8_D_reg_0),
        .CE(\FIFO_OT[7]_i_2_n_0 ),
        .D(RX_MSG[1]),
        .Q(Q[1]),
        .R(FIFO_OT0));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_OT_reg[2] 
       (.C(CLK9600_8_D_reg_0),
        .CE(\FIFO_OT[7]_i_2_n_0 ),
        .D(RX_MSG[2]),
        .Q(Q[2]),
        .R(FIFO_OT0));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_OT_reg[3] 
       (.C(CLK9600_8_D_reg_0),
        .CE(\FIFO_OT[7]_i_2_n_0 ),
        .D(RX_MSG[3]),
        .Q(Q[3]),
        .R(FIFO_OT0));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_OT_reg[4] 
       (.C(CLK9600_8_D_reg_0),
        .CE(\FIFO_OT[7]_i_2_n_0 ),
        .D(RX_MSG[4]),
        .Q(Q[4]),
        .R(FIFO_OT0));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_OT_reg[5] 
       (.C(CLK9600_8_D_reg_0),
        .CE(\FIFO_OT[7]_i_2_n_0 ),
        .D(RX_MSG[5]),
        .Q(Q[5]),
        .R(FIFO_OT0));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_OT_reg[6] 
       (.C(CLK9600_8_D_reg_0),
        .CE(\FIFO_OT[7]_i_2_n_0 ),
        .D(RX_MSG[6]),
        .Q(Q[6]),
        .R(FIFO_OT0));
  FDRE #(
    .INIT(1'b0)) 
    \FIFO_OT_reg[7] 
       (.C(CLK9600_8_D_reg_0),
        .CE(\FIFO_OT[7]_i_2_n_0 ),
        .D(RX_MSG[7]),
        .Q(Q[7]),
        .R(FIFO_OT0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hDE02)) 
    FIFO_RD_i_1
       (.I0(\Tx_FIFO_State_reg_n_0_[0] ),
        .I1(\Tx_FIFO_State_reg_n_0_[2] ),
        .I2(\Tx_FIFO_State_reg_n_0_[1] ),
        .I3(rd_en),
        .O(FIFO_RD_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    FIFO_RD_reg
       (.C(CLK9600_D_reg_0),
        .CE(1'b1),
        .D(FIFO_RD_i_1_n_0),
        .Q(rd_en),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h55AA0100)) 
    FIFO_WT_i_1
       (.I0(Rx_FIFO_State__0[0]),
        .I1(almost_full),
        .I2(full),
        .I3(Rx_FIFO_State__0[1]),
        .I4(wr_en),
        .O(FIFO_WT_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    FIFO_WT_reg
       (.C(CLK9600_8_D_reg_0),
        .CE(1'b1),
        .D(FIFO_WT_i_1_n_0),
        .Q(wr_en),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h500F0E1F)) 
    \FSM_sequential_Receive_State[0]_i_1 
       (.I0(\FSM_sequential_Receive_State[2]_i_2_n_0 ),
        .I1(\Rx_RCV_Cnt_reg_n_0_[7] ),
        .I2(Receive_State[0]),
        .I3(Receive_State[1]),
        .I4(Receive_State[2]),
        .O(\FSM_sequential_Receive_State[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h55000FE0)) 
    \FSM_sequential_Receive_State[1]_i_1 
       (.I0(\FSM_sequential_Receive_State[2]_i_2_n_0 ),
        .I1(\Rx_RCV_Cnt_reg_n_0_[7] ),
        .I2(Receive_State[0]),
        .I3(Receive_State[1]),
        .I4(Receive_State[2]),
        .O(\FSM_sequential_Receive_State[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h53C0)) 
    \FSM_sequential_Receive_State[2]_i_1 
       (.I0(\FSM_sequential_Receive_State[2]_i_2_n_0 ),
        .I1(Receive_State[0]),
        .I2(Receive_State[1]),
        .I3(Receive_State[2]),
        .O(\FSM_sequential_Receive_State[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFF0FE00)) 
    \FSM_sequential_Receive_State[2]_i_2 
       (.I0(\Rx_RCV_Cnt_reg_n_0_[1] ),
        .I1(\Rx_RCV_Cnt_reg_n_0_[0] ),
        .I2(\FSM_sequential_Receive_State[2]_i_3_n_0 ),
        .I3(\Rx_RCV_Cnt_reg_n_0_[6] ),
        .I4(Receive_State[0]),
        .I5(Receive_State[2]),
        .O(\FSM_sequential_Receive_State[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_Receive_State[2]_i_3 
       (.I0(\Rx_RCV_Cnt_reg_n_0_[3] ),
        .I1(\Rx_RCV_Cnt_reg_n_0_[4] ),
        .I2(\Rx_RCV_Cnt_reg_n_0_[5] ),
        .I3(\Rx_RCV_Cnt_reg_n_0_[2] ),
        .O(\FSM_sequential_Receive_State[2]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "reset:000,idle:001,receive:010,eval:011,push:100,wa1t:101," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_Receive_State_reg[0] 
       (.C(CLK9600_8_D_reg_0),
        .CE(1'b1),
        .D(\FSM_sequential_Receive_State[0]_i_1_n_0 ),
        .Q(Receive_State[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "reset:000,idle:001,receive:010,eval:011,push:100,wa1t:101," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_Receive_State_reg[1] 
       (.C(CLK9600_8_D_reg_0),
        .CE(1'b1),
        .D(\FSM_sequential_Receive_State[1]_i_1_n_0 ),
        .Q(Receive_State[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "reset:000,idle:001,receive:010,eval:011,push:100,wa1t:101," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_Receive_State_reg[2] 
       (.C(CLK9600_8_D_reg_0),
        .CE(1'b1),
        .D(\FSM_sequential_Receive_State[2]_i_1_n_0 ),
        .Q(Receive_State[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000AAAA00C0)) 
    \FSM_sequential_Rx_FIFO_State[0]_i_1 
       (.I0(\FSM_sequential_Rx_FIFO_State[1]_i_2_n_0 ),
        .I1(Receive_State[0]),
        .I2(Receive_State[2]),
        .I3(Receive_State[1]),
        .I4(Rx_FIFO_State__0[1]),
        .I5(Rx_FIFO_State__0[0]),
        .O(\FSM_sequential_Rx_FIFO_State[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \FSM_sequential_Rx_FIFO_State[1]_i_1 
       (.I0(\FSM_sequential_Rx_FIFO_State[1]_i_2_n_0 ),
        .I1(Rx_FIFO_State__0[1]),
        .I2(Rx_FIFO_State__0[0]),
        .O(\FSM_sequential_Rx_FIFO_State[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_Rx_FIFO_State[1]_i_2 
       (.I0(full),
        .I1(almost_full),
        .O(\FSM_sequential_Rx_FIFO_State[1]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "write:01,write_en:10,wa1t:11,idle:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_Rx_FIFO_State_reg[0] 
       (.C(CLK9600_8_D_reg_0),
        .CE(1'b1),
        .D(\FSM_sequential_Rx_FIFO_State[0]_i_1_n_0 ),
        .Q(Rx_FIFO_State__0[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "write:01,write_en:10,wa1t:11,idle:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_Rx_FIFO_State_reg[1] 
       (.C(CLK9600_8_D_reg_0),
        .CE(1'b1),
        .D(\FSM_sequential_Rx_FIFO_State[1]_i_1_n_0 ),
        .Q(Rx_FIFO_State__0[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0020FFFF00F20000)) 
    \FSM_sequential_Transmit_State[0]_i_1 
       (.I0(\Tx_FIFO_State_reg_n_0_[1] ),
        .I1(\FSM_sequential_Transmit_State[2]_i_2_n_0 ),
        .I2(Transmit_State__0[1]),
        .I3(Transmit_State__0[2]),
        .I4(\FSM_sequential_Transmit_State[2]_i_3_n_0 ),
        .I5(Transmit_State__0[0]),
        .O(\FSM_sequential_Transmit_State[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h1F20)) 
    \FSM_sequential_Transmit_State[1]_i_1 
       (.I0(Transmit_State__0[0]),
        .I1(Transmit_State__0[2]),
        .I2(\FSM_sequential_Transmit_State[2]_i_3_n_0 ),
        .I3(Transmit_State__0[1]),
        .O(\FSM_sequential_Transmit_State[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h0F80)) 
    \FSM_sequential_Transmit_State[2]_i_1 
       (.I0(Transmit_State__0[1]),
        .I1(\FSM_sequential_Transmit_State[2]_i_2_n_0 ),
        .I2(\FSM_sequential_Transmit_State[2]_i_3_n_0 ),
        .I3(Transmit_State__0[2]),
        .O(\FSM_sequential_Transmit_State[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_Transmit_State[2]_i_10 
       (.I0(\Tx_Word_Cnt_reg_n_0_[24] ),
        .I1(\Tx_Word_Cnt_reg_n_0_[21] ),
        .I2(\Tx_Word_Cnt_reg_n_0_[29] ),
        .I3(\Tx_Word_Cnt_reg_n_0_[23] ),
        .O(\FSM_sequential_Transmit_State[2]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_Transmit_State[2]_i_11 
       (.I0(\Tx_Word_Cnt_reg_n_0_[28] ),
        .I1(\Tx_Word_Cnt_reg_n_0_[12] ),
        .I2(\Tx_Word_Cnt_reg_n_0_[26] ),
        .I3(\Tx_Word_Cnt_reg_n_0_[8] ),
        .O(\FSM_sequential_Transmit_State[2]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \FSM_sequential_Transmit_State[2]_i_12 
       (.I0(\Tx_Word_Cnt_reg_n_0_[0] ),
        .I1(\Tx_Word_Cnt_reg_n_0_[19] ),
        .I2(\Tx_Word_Cnt_reg_n_0_[2] ),
        .I3(\Tx_Word_Cnt_reg_n_0_[20] ),
        .O(\FSM_sequential_Transmit_State[2]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \FSM_sequential_Transmit_State[2]_i_13 
       (.I0(\Tx_Word_Cnt_reg_n_0_[18] ),
        .I1(\Tx_Word_Cnt_reg_n_0_[17] ),
        .I2(\Tx_Word_Cnt_reg_n_0_[1] ),
        .I3(\Tx_Word_Cnt_reg_n_0_[4] ),
        .O(\FSM_sequential_Transmit_State[2]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \FSM_sequential_Transmit_State[2]_i_2 
       (.I0(\FSM_sequential_Transmit_State[2]_i_4_n_0 ),
        .I1(Transmit_State__0[0]),
        .I2(\FSM_sequential_Transmit_State[2]_i_5_n_0 ),
        .O(\FSM_sequential_Transmit_State[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000F000FFFFF2FF0)) 
    \FSM_sequential_Transmit_State[2]_i_3 
       (.I0(\FSM_sequential_Transmit_State[2]_i_4_n_0 ),
        .I1(\FSM_sequential_Transmit_State[2]_i_5_n_0 ),
        .I2(Transmit_State__0[0]),
        .I3(Transmit_State__0[1]),
        .I4(\FSM_sequential_Transmit_State[2]_i_6_n_0 ),
        .I5(Transmit_State__0[2]),
        .O(\FSM_sequential_Transmit_State[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \FSM_sequential_Transmit_State[2]_i_4 
       (.I0(\FSM_sequential_Transmit_State[2]_i_7_n_0 ),
        .I1(\FSM_sequential_Transmit_State[2]_i_8_n_0 ),
        .I2(\FSM_sequential_Transmit_State[2]_i_9_n_0 ),
        .I3(\FSM_sequential_Transmit_State[2]_i_10_n_0 ),
        .I4(\FSM_sequential_Transmit_State[2]_i_11_n_0 ),
        .O(\FSM_sequential_Transmit_State[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_sequential_Transmit_State[2]_i_5 
       (.I0(\Tx_Word_Cnt_reg_n_0_[3] ),
        .I1(\Tx_Word_Cnt_reg_n_0_[16] ),
        .I2(\Tx_Word_Cnt_reg_n_0_[5] ),
        .I3(\FSM_sequential_Transmit_State[2]_i_12_n_0 ),
        .I4(\FSM_sequential_Transmit_State[2]_i_13_n_0 ),
        .O(\FSM_sequential_Transmit_State[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_Transmit_State[2]_i_6 
       (.I0(\Tx_FIFO_State_reg_n_0_[2] ),
        .I1(\Tx_FIFO_State_reg_n_0_[0] ),
        .O(\FSM_sequential_Transmit_State[2]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_Transmit_State[2]_i_7 
       (.I0(\Tx_Word_Cnt_reg_n_0_[14] ),
        .I1(\Tx_Word_Cnt_reg_n_0_[9] ),
        .I2(\Tx_Word_Cnt_reg_n_0_[25] ),
        .I3(\Tx_Word_Cnt_reg_n_0_[7] ),
        .O(\FSM_sequential_Transmit_State[2]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_sequential_Transmit_State[2]_i_8 
       (.I0(\Tx_Word_Cnt_reg_n_0_[13] ),
        .I1(\Tx_Word_Cnt_reg_n_0_[22] ),
        .I2(\Tx_Word_Cnt_reg_n_0_[27] ),
        .I3(\Tx_Word_Cnt_reg_n_0_[11] ),
        .O(\FSM_sequential_Transmit_State[2]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_Transmit_State[2]_i_9 
       (.I0(\Tx_Word_Cnt_reg_n_0_[30] ),
        .I1(\Tx_Word_Cnt_reg_n_0_[10] ),
        .I2(\Tx_Word_Cnt_reg_n_0_[15] ),
        .I3(\Tx_Word_Cnt_reg_n_0_[6] ),
        .O(\FSM_sequential_Transmit_State[2]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "start:010,msg:011,stop:100,idle:001,off:000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_Transmit_State_reg[0] 
       (.C(CLK9600_D_reg_0),
        .CE(1'b1),
        .D(\FSM_sequential_Transmit_State[0]_i_1_n_0 ),
        .Q(Transmit_State__0[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "start:010,msg:011,stop:100,idle:001,off:000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_Transmit_State_reg[1] 
       (.C(CLK9600_D_reg_0),
        .CE(1'b1),
        .D(\FSM_sequential_Transmit_State[1]_i_1_n_0 ),
        .Q(Transmit_State__0[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "start:010,msg:011,stop:100,idle:001,off:000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_Transmit_State_reg[2] 
       (.C(CLK9600_D_reg_0),
        .CE(1'b1),
        .D(\FSM_sequential_Transmit_State[2]_i_1_n_0 ),
        .Q(Transmit_State__0[2]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h41)) 
    \RX_BIT_0[0]_i_1 
       (.I0(Receive_State[2]),
        .I1(Receive_State[0]),
        .I2(Receive_State[1]),
        .O(\RX_BIT_0[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFE00000)) 
    \RX_BIT_0[0]_i_2 
       (.I0(\RX_SBR_0_reg_n_0_[1] ),
        .I1(\RX_SBR_0_reg_n_0_[0] ),
        .I2(\RX_SBR_0_reg_n_0_[2] ),
        .I3(\RX_SBR_0_reg_n_0_[3] ),
        .I4(Receive_State[1]),
        .O(RX_BIT_0));
  FDRE #(
    .INIT(1'b0)) 
    \RX_BIT_0_reg[0] 
       (.C(CLK9600_8_D_reg_0),
        .CE(\RX_BIT_0[0]_i_1_n_0 ),
        .D(RX_BIT_0),
        .Q(\RX_BIT_0_reg_n_0_[0] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFE00000)) 
    \RX_BIT_1[0]_i_1 
       (.I0(\RX_SBR_1_reg_n_0_[1] ),
        .I1(\RX_SBR_1_reg_n_0_[0] ),
        .I2(\RX_SBR_1_reg_n_0_[2] ),
        .I3(\RX_SBR_1_reg_n_0_[3] ),
        .I4(Receive_State[1]),
        .O(RX_BIT_1));
  FDRE #(
    .INIT(1'b0)) 
    \RX_BIT_1_reg[0] 
       (.C(CLK9600_8_D_reg_0),
        .CE(\RX_BIT_0[0]_i_1_n_0 ),
        .D(RX_BIT_1),
        .Q(\RX_BIT_1_reg_n_0_[0] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFE00000)) 
    \RX_BIT_2[0]_i_1 
       (.I0(\RX_SBR_2_reg_n_0_[1] ),
        .I1(\RX_SBR_2_reg_n_0_[0] ),
        .I2(\RX_SBR_2_reg_n_0_[2] ),
        .I3(\RX_SBR_2_reg_n_0_[3] ),
        .I4(Receive_State[1]),
        .O(RX_BIT_2));
  FDRE #(
    .INIT(1'b0)) 
    \RX_BIT_2_reg[0] 
       (.C(CLK9600_8_D_reg_0),
        .CE(\RX_BIT_0[0]_i_1_n_0 ),
        .D(RX_BIT_2),
        .Q(\RX_BIT_2_reg_n_0_[0] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFE00000)) 
    \RX_BIT_3[0]_i_1 
       (.I0(\RX_SBR_3_reg_n_0_[1] ),
        .I1(\RX_SBR_3_reg_n_0_[0] ),
        .I2(\RX_SBR_3_reg_n_0_[2] ),
        .I3(\RX_SBR_3_reg_n_0_[3] ),
        .I4(Receive_State[1]),
        .O(RX_BIT_3));
  FDRE #(
    .INIT(1'b0)) 
    \RX_BIT_3_reg[0] 
       (.C(CLK9600_8_D_reg_0),
        .CE(\RX_BIT_0[0]_i_1_n_0 ),
        .D(RX_BIT_3),
        .Q(\RX_BIT_3_reg_n_0_[0] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFE00000)) 
    \RX_BIT_4[0]_i_1 
       (.I0(\RX_SBR_4_reg_n_0_[1] ),
        .I1(\RX_SBR_4_reg_n_0_[0] ),
        .I2(\RX_SBR_4_reg_n_0_[2] ),
        .I3(\RX_SBR_4_reg_n_0_[3] ),
        .I4(Receive_State[1]),
        .O(RX_BIT_4));
  FDRE #(
    .INIT(1'b0)) 
    \RX_BIT_4_reg[0] 
       (.C(CLK9600_8_D_reg_0),
        .CE(\RX_BIT_0[0]_i_1_n_0 ),
        .D(RX_BIT_4),
        .Q(\RX_BIT_4_reg_n_0_[0] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFE00000)) 
    \RX_BIT_5[0]_i_1 
       (.I0(\RX_SBR_5_reg_n_0_[1] ),
        .I1(\RX_SBR_5_reg_n_0_[0] ),
        .I2(\RX_SBR_5_reg_n_0_[2] ),
        .I3(\RX_SBR_5_reg_n_0_[3] ),
        .I4(Receive_State[1]),
        .O(RX_BIT_5));
  FDRE #(
    .INIT(1'b0)) 
    \RX_BIT_5_reg[0] 
       (.C(CLK9600_8_D_reg_0),
        .CE(\RX_BIT_0[0]_i_1_n_0 ),
        .D(RX_BIT_5),
        .Q(\RX_BIT_5_reg_n_0_[0] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFE00000)) 
    \RX_BIT_6[0]_i_1 
       (.I0(\RX_SBR_6_reg_n_0_[1] ),
        .I1(\RX_SBR_6_reg_n_0_[0] ),
        .I2(\RX_SBR_6_reg_n_0_[2] ),
        .I3(\RX_SBR_6_reg_n_0_[3] ),
        .I4(Receive_State[1]),
        .O(RX_BIT_6));
  FDRE #(
    .INIT(1'b0)) 
    \RX_BIT_6_reg[0] 
       (.C(CLK9600_8_D_reg_0),
        .CE(\RX_BIT_0[0]_i_1_n_0 ),
        .D(RX_BIT_6),
        .Q(\RX_BIT_6_reg_n_0_[0] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFE00000)) 
    \RX_BIT_7[0]_i_1 
       (.I0(\RX_SBR_7_reg_n_0_[1] ),
        .I1(\RX_SBR_7_reg_n_0_[0] ),
        .I2(\RX_SBR_7_reg_n_0_[2] ),
        .I3(\RX_SBR_7_reg_n_0_[3] ),
        .I4(Receive_State[1]),
        .O(RX_BIT_7));
  FDRE #(
    .INIT(1'b0)) 
    \RX_BIT_7_reg[0] 
       (.C(CLK9600_8_D_reg_0),
        .CE(\RX_BIT_0[0]_i_1_n_0 ),
        .D(RX_BIT_7),
        .Q(\RX_BIT_7_reg_n_0_[0] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h10)) 
    \RX_MSG[7]_i_1 
       (.I0(Receive_State[1]),
        .I1(Receive_State[0]),
        .I2(Receive_State[2]),
        .O(RX_MSG_0));
  FDRE #(
    .INIT(1'b0)) 
    \RX_MSG_reg[0] 
       (.C(CLK9600_8_D_reg_0),
        .CE(RX_MSG_0),
        .D(\RX_BIT_0_reg_n_0_[0] ),
        .Q(RX_MSG[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RX_MSG_reg[1] 
       (.C(CLK9600_8_D_reg_0),
        .CE(RX_MSG_0),
        .D(\RX_BIT_1_reg_n_0_[0] ),
        .Q(RX_MSG[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RX_MSG_reg[2] 
       (.C(CLK9600_8_D_reg_0),
        .CE(RX_MSG_0),
        .D(\RX_BIT_2_reg_n_0_[0] ),
        .Q(RX_MSG[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RX_MSG_reg[3] 
       (.C(CLK9600_8_D_reg_0),
        .CE(RX_MSG_0),
        .D(\RX_BIT_3_reg_n_0_[0] ),
        .Q(RX_MSG[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RX_MSG_reg[4] 
       (.C(CLK9600_8_D_reg_0),
        .CE(RX_MSG_0),
        .D(\RX_BIT_4_reg_n_0_[0] ),
        .Q(RX_MSG[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RX_MSG_reg[5] 
       (.C(CLK9600_8_D_reg_0),
        .CE(RX_MSG_0),
        .D(\RX_BIT_5_reg_n_0_[0] ),
        .Q(RX_MSG[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RX_MSG_reg[6] 
       (.C(CLK9600_8_D_reg_0),
        .CE(RX_MSG_0),
        .D(\RX_BIT_6_reg_n_0_[0] ),
        .Q(RX_MSG[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RX_MSG_reg[7] 
       (.C(CLK9600_8_D_reg_0),
        .CE(RX_MSG_0),
        .D(\RX_BIT_7_reg_n_0_[0] ),
        .Q(RX_MSG[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h1020)) 
    \RX_SBR_0[0]_i_1 
       (.I0(\RX_SBR_0_reg_n_0_[0] ),
        .I1(Receive_State[2]),
        .I2(Receive_State[1]),
        .I3(Rx),
        .O(RX_SBR_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h04080C00)) 
    \RX_SBR_0[1]_i_1 
       (.I0(Rx),
        .I1(Receive_State[1]),
        .I2(Receive_State[2]),
        .I3(\RX_SBR_0_reg_n_0_[1] ),
        .I4(\RX_SBR_0_reg_n_0_[0] ),
        .O(RX_SBR_0[1]));
  LUT6 #(
    .INIT(64'h000000006AAA0000)) 
    \RX_SBR_0[2]_i_1 
       (.I0(\RX_SBR_0_reg_n_0_[2] ),
        .I1(\RX_SBR_0_reg_n_0_[0] ),
        .I2(\RX_SBR_0_reg_n_0_[1] ),
        .I3(Rx),
        .I4(Receive_State[1]),
        .I5(Receive_State[2]),
        .O(RX_SBR_0[2]));
  LUT5 #(
    .INIT(32'hFFFF0100)) 
    \RX_SBR_0[3]_i_1 
       (.I0(\Rx_RCV_Cnt_reg_n_0_[5] ),
        .I1(\Rx_RCV_Cnt_reg_n_0_[4] ),
        .I2(\Rx_RCV_Cnt_reg_n_0_[3] ),
        .I3(\RX_SBR_0[3]_i_3_n_0 ),
        .I4(\RX_SBR_0[3]_i_4_n_0 ),
        .O(\RX_SBR_0[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7F008000FF000000)) 
    \RX_SBR_0[3]_i_2 
       (.I0(Rx),
        .I1(\RX_SBR_0_reg_n_0_[1] ),
        .I2(\RX_SBR_0_reg_n_0_[0] ),
        .I3(\RX_SBR_0[3]_i_5_n_0 ),
        .I4(\RX_SBR_0_reg_n_0_[3] ),
        .I5(\RX_SBR_0_reg_n_0_[2] ),
        .O(RX_SBR_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \RX_SBR_0[3]_i_3 
       (.I0(\Rx_RCV_Cnt_reg_n_0_[7] ),
        .I1(Receive_State[2]),
        .I2(\Rx_RCV_Cnt_reg_n_0_[6] ),
        .I3(Receive_State[0]),
        .O(\RX_SBR_0[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \RX_SBR_0[3]_i_4 
       (.I0(Receive_State[1]),
        .I1(Receive_State[0]),
        .I2(Receive_State[2]),
        .O(\RX_SBR_0[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \RX_SBR_0[3]_i_5 
       (.I0(Receive_State[1]),
        .I1(Receive_State[2]),
        .O(\RX_SBR_0[3]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \RX_SBR_0_reg[0] 
       (.C(CLK9600_8_D_reg_0),
        .CE(\RX_SBR_0[3]_i_1_n_0 ),
        .D(RX_SBR_0[0]),
        .Q(\RX_SBR_0_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RX_SBR_0_reg[1] 
       (.C(CLK9600_8_D_reg_0),
        .CE(\RX_SBR_0[3]_i_1_n_0 ),
        .D(RX_SBR_0[1]),
        .Q(\RX_SBR_0_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RX_SBR_0_reg[2] 
       (.C(CLK9600_8_D_reg_0),
        .CE(\RX_SBR_0[3]_i_1_n_0 ),
        .D(RX_SBR_0[2]),
        .Q(\RX_SBR_0_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RX_SBR_0_reg[3] 
       (.C(CLK9600_8_D_reg_0),
        .CE(\RX_SBR_0[3]_i_1_n_0 ),
        .D(RX_SBR_0[3]),
        .Q(\RX_SBR_0_reg_n_0_[3] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h1020)) 
    \RX_SBR_1[0]_i_1 
       (.I0(\RX_SBR_1_reg_n_0_[0] ),
        .I1(Receive_State[2]),
        .I2(Receive_State[1]),
        .I3(Rx),
        .O(RX_SBR_1[0]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h04080C00)) 
    \RX_SBR_1[1]_i_1 
       (.I0(Rx),
        .I1(Receive_State[1]),
        .I2(Receive_State[2]),
        .I3(\RX_SBR_1_reg_n_0_[1] ),
        .I4(\RX_SBR_1_reg_n_0_[0] ),
        .O(RX_SBR_1[1]));
  LUT6 #(
    .INIT(64'h000000006AAA0000)) 
    \RX_SBR_1[2]_i_1 
       (.I0(\RX_SBR_1_reg_n_0_[2] ),
        .I1(\RX_SBR_1_reg_n_0_[0] ),
        .I2(\RX_SBR_1_reg_n_0_[1] ),
        .I3(Rx),
        .I4(Receive_State[1]),
        .I5(Receive_State[2]),
        .O(RX_SBR_1[2]));
  LUT6 #(
    .INIT(64'h10101010101010FF)) 
    \RX_SBR_1[3]_i_1 
       (.I0(\Rx_RCV_Cnt_reg_n_0_[4] ),
        .I1(\Rx_RCV_Cnt_reg_n_0_[5] ),
        .I2(\RX_SBR_1[3]_i_3_n_0 ),
        .I3(Receive_State[2]),
        .I4(Receive_State[0]),
        .I5(Receive_State[1]),
        .O(\RX_SBR_1[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7F008000FF000000)) 
    \RX_SBR_1[3]_i_2 
       (.I0(Rx),
        .I1(\RX_SBR_1_reg_n_0_[1] ),
        .I2(\RX_SBR_1_reg_n_0_[0] ),
        .I3(\RX_SBR_0[3]_i_5_n_0 ),
        .I4(\RX_SBR_1_reg_n_0_[3] ),
        .I5(\RX_SBR_1_reg_n_0_[2] ),
        .O(RX_SBR_1[3]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \RX_SBR_1[3]_i_3 
       (.I0(Receive_State[0]),
        .I1(\Rx_RCV_Cnt_reg_n_0_[6] ),
        .I2(Receive_State[2]),
        .I3(\Rx_RCV_Cnt_reg_n_0_[7] ),
        .I4(\Rx_RCV_Cnt_reg_n_0_[3] ),
        .O(\RX_SBR_1[3]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \RX_SBR_1_reg[0] 
       (.C(CLK9600_8_D_reg_0),
        .CE(\RX_SBR_1[3]_i_1_n_0 ),
        .D(RX_SBR_1[0]),
        .Q(\RX_SBR_1_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RX_SBR_1_reg[1] 
       (.C(CLK9600_8_D_reg_0),
        .CE(\RX_SBR_1[3]_i_1_n_0 ),
        .D(RX_SBR_1[1]),
        .Q(\RX_SBR_1_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RX_SBR_1_reg[2] 
       (.C(CLK9600_8_D_reg_0),
        .CE(\RX_SBR_1[3]_i_1_n_0 ),
        .D(RX_SBR_1[2]),
        .Q(\RX_SBR_1_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RX_SBR_1_reg[3] 
       (.C(CLK9600_8_D_reg_0),
        .CE(\RX_SBR_1[3]_i_1_n_0 ),
        .D(RX_SBR_1[3]),
        .Q(\RX_SBR_1_reg_n_0_[3] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h1020)) 
    \RX_SBR_2[0]_i_1 
       (.I0(\RX_SBR_2_reg_n_0_[0] ),
        .I1(Receive_State[2]),
        .I2(Receive_State[1]),
        .I3(Rx),
        .O(RX_SBR_2[0]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h04080C00)) 
    \RX_SBR_2[1]_i_1 
       (.I0(Rx),
        .I1(Receive_State[1]),
        .I2(Receive_State[2]),
        .I3(\RX_SBR_2_reg_n_0_[1] ),
        .I4(\RX_SBR_2_reg_n_0_[0] ),
        .O(RX_SBR_2[1]));
  LUT6 #(
    .INIT(64'h000000006AAA0000)) 
    \RX_SBR_2[2]_i_1 
       (.I0(\RX_SBR_2_reg_n_0_[2] ),
        .I1(\RX_SBR_2_reg_n_0_[0] ),
        .I2(\RX_SBR_2_reg_n_0_[1] ),
        .I3(Rx),
        .I4(Receive_State[1]),
        .I5(Receive_State[2]),
        .O(RX_SBR_2[2]));
  LUT5 #(
    .INIT(32'hFFFF0020)) 
    \RX_SBR_2[3]_i_1 
       (.I0(\RX_SBR_0[3]_i_3_n_0 ),
        .I1(\Rx_RCV_Cnt_reg_n_0_[5] ),
        .I2(\Rx_RCV_Cnt_reg_n_0_[4] ),
        .I3(\Rx_RCV_Cnt_reg_n_0_[3] ),
        .I4(\RX_SBR_0[3]_i_4_n_0 ),
        .O(\RX_SBR_2[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7F008000FF000000)) 
    \RX_SBR_2[3]_i_2 
       (.I0(Rx),
        .I1(\RX_SBR_2_reg_n_0_[1] ),
        .I2(\RX_SBR_2_reg_n_0_[0] ),
        .I3(\RX_SBR_0[3]_i_5_n_0 ),
        .I4(\RX_SBR_2_reg_n_0_[3] ),
        .I5(\RX_SBR_2_reg_n_0_[2] ),
        .O(RX_SBR_2[3]));
  FDRE #(
    .INIT(1'b0)) 
    \RX_SBR_2_reg[0] 
       (.C(CLK9600_8_D_reg_0),
        .CE(\RX_SBR_2[3]_i_1_n_0 ),
        .D(RX_SBR_2[0]),
        .Q(\RX_SBR_2_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RX_SBR_2_reg[1] 
       (.C(CLK9600_8_D_reg_0),
        .CE(\RX_SBR_2[3]_i_1_n_0 ),
        .D(RX_SBR_2[1]),
        .Q(\RX_SBR_2_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RX_SBR_2_reg[2] 
       (.C(CLK9600_8_D_reg_0),
        .CE(\RX_SBR_2[3]_i_1_n_0 ),
        .D(RX_SBR_2[2]),
        .Q(\RX_SBR_2_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RX_SBR_2_reg[3] 
       (.C(CLK9600_8_D_reg_0),
        .CE(\RX_SBR_2[3]_i_1_n_0 ),
        .D(RX_SBR_2[3]),
        .Q(\RX_SBR_2_reg_n_0_[3] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h1020)) 
    \RX_SBR_3[0]_i_1 
       (.I0(\RX_SBR_3_reg_n_0_[0] ),
        .I1(Receive_State[2]),
        .I2(Receive_State[1]),
        .I3(Rx),
        .O(RX_SBR_3[0]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h04080C00)) 
    \RX_SBR_3[1]_i_1 
       (.I0(Rx),
        .I1(Receive_State[1]),
        .I2(Receive_State[2]),
        .I3(\RX_SBR_3_reg_n_0_[1] ),
        .I4(\RX_SBR_3_reg_n_0_[0] ),
        .O(RX_SBR_3[1]));
  LUT6 #(
    .INIT(64'h000000006AAA0000)) 
    \RX_SBR_3[2]_i_1 
       (.I0(\RX_SBR_3_reg_n_0_[2] ),
        .I1(\RX_SBR_3_reg_n_0_[0] ),
        .I2(\RX_SBR_3_reg_n_0_[1] ),
        .I3(Rx),
        .I4(Receive_State[1]),
        .I5(Receive_State[2]),
        .O(RX_SBR_3[2]));
  LUT6 #(
    .INIT(64'h08080808080808FF)) 
    \RX_SBR_3[3]_i_1 
       (.I0(\RX_SBR_1[3]_i_3_n_0 ),
        .I1(\Rx_RCV_Cnt_reg_n_0_[4] ),
        .I2(\Rx_RCV_Cnt_reg_n_0_[5] ),
        .I3(Receive_State[2]),
        .I4(Receive_State[0]),
        .I5(Receive_State[1]),
        .O(\RX_SBR_3[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7F008000FF000000)) 
    \RX_SBR_3[3]_i_2 
       (.I0(Rx),
        .I1(\RX_SBR_3_reg_n_0_[1] ),
        .I2(\RX_SBR_3_reg_n_0_[0] ),
        .I3(\RX_SBR_0[3]_i_5_n_0 ),
        .I4(\RX_SBR_3_reg_n_0_[3] ),
        .I5(\RX_SBR_3_reg_n_0_[2] ),
        .O(RX_SBR_3[3]));
  FDRE #(
    .INIT(1'b0)) 
    \RX_SBR_3_reg[0] 
       (.C(CLK9600_8_D_reg_0),
        .CE(\RX_SBR_3[3]_i_1_n_0 ),
        .D(RX_SBR_3[0]),
        .Q(\RX_SBR_3_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RX_SBR_3_reg[1] 
       (.C(CLK9600_8_D_reg_0),
        .CE(\RX_SBR_3[3]_i_1_n_0 ),
        .D(RX_SBR_3[1]),
        .Q(\RX_SBR_3_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RX_SBR_3_reg[2] 
       (.C(CLK9600_8_D_reg_0),
        .CE(\RX_SBR_3[3]_i_1_n_0 ),
        .D(RX_SBR_3[2]),
        .Q(\RX_SBR_3_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RX_SBR_3_reg[3] 
       (.C(CLK9600_8_D_reg_0),
        .CE(\RX_SBR_3[3]_i_1_n_0 ),
        .D(RX_SBR_3[3]),
        .Q(\RX_SBR_3_reg_n_0_[3] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h1020)) 
    \RX_SBR_4[0]_i_1 
       (.I0(\RX_SBR_4_reg_n_0_[0] ),
        .I1(Receive_State[2]),
        .I2(Receive_State[1]),
        .I3(Rx),
        .O(RX_SBR_4[0]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h04080C00)) 
    \RX_SBR_4[1]_i_1 
       (.I0(Rx),
        .I1(Receive_State[1]),
        .I2(Receive_State[2]),
        .I3(\RX_SBR_4_reg_n_0_[1] ),
        .I4(\RX_SBR_4_reg_n_0_[0] ),
        .O(RX_SBR_4[1]));
  LUT6 #(
    .INIT(64'h000000006AAA0000)) 
    \RX_SBR_4[2]_i_1 
       (.I0(\RX_SBR_4_reg_n_0_[2] ),
        .I1(\RX_SBR_4_reg_n_0_[0] ),
        .I2(\RX_SBR_4_reg_n_0_[1] ),
        .I3(Rx),
        .I4(Receive_State[1]),
        .I5(Receive_State[2]),
        .O(RX_SBR_4[2]));
  LUT5 #(
    .INIT(32'hFFFF0020)) 
    \RX_SBR_4[3]_i_1 
       (.I0(\RX_SBR_0[3]_i_3_n_0 ),
        .I1(\Rx_RCV_Cnt_reg_n_0_[4] ),
        .I2(\Rx_RCV_Cnt_reg_n_0_[5] ),
        .I3(\Rx_RCV_Cnt_reg_n_0_[3] ),
        .I4(\RX_SBR_0[3]_i_4_n_0 ),
        .O(\RX_SBR_4[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7F008000FF000000)) 
    \RX_SBR_4[3]_i_2 
       (.I0(Rx),
        .I1(\RX_SBR_4_reg_n_0_[1] ),
        .I2(\RX_SBR_4_reg_n_0_[0] ),
        .I3(\RX_SBR_0[3]_i_5_n_0 ),
        .I4(\RX_SBR_4_reg_n_0_[3] ),
        .I5(\RX_SBR_4_reg_n_0_[2] ),
        .O(RX_SBR_4[3]));
  FDRE #(
    .INIT(1'b0)) 
    \RX_SBR_4_reg[0] 
       (.C(CLK9600_8_D_reg_0),
        .CE(\RX_SBR_4[3]_i_1_n_0 ),
        .D(RX_SBR_4[0]),
        .Q(\RX_SBR_4_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RX_SBR_4_reg[1] 
       (.C(CLK9600_8_D_reg_0),
        .CE(\RX_SBR_4[3]_i_1_n_0 ),
        .D(RX_SBR_4[1]),
        .Q(\RX_SBR_4_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RX_SBR_4_reg[2] 
       (.C(CLK9600_8_D_reg_0),
        .CE(\RX_SBR_4[3]_i_1_n_0 ),
        .D(RX_SBR_4[2]),
        .Q(\RX_SBR_4_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RX_SBR_4_reg[3] 
       (.C(CLK9600_8_D_reg_0),
        .CE(\RX_SBR_4[3]_i_1_n_0 ),
        .D(RX_SBR_4[3]),
        .Q(\RX_SBR_4_reg_n_0_[3] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h1020)) 
    \RX_SBR_5[0]_i_1 
       (.I0(\RX_SBR_5_reg_n_0_[0] ),
        .I1(Receive_State[2]),
        .I2(Receive_State[1]),
        .I3(Rx),
        .O(RX_SBR_5[0]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h04080C00)) 
    \RX_SBR_5[1]_i_1 
       (.I0(Rx),
        .I1(Receive_State[1]),
        .I2(Receive_State[2]),
        .I3(\RX_SBR_5_reg_n_0_[1] ),
        .I4(\RX_SBR_5_reg_n_0_[0] ),
        .O(RX_SBR_5[1]));
  LUT6 #(
    .INIT(64'h000000006AAA0000)) 
    \RX_SBR_5[2]_i_1 
       (.I0(\RX_SBR_5_reg_n_0_[2] ),
        .I1(\RX_SBR_5_reg_n_0_[0] ),
        .I2(\RX_SBR_5_reg_n_0_[1] ),
        .I3(Rx),
        .I4(Receive_State[1]),
        .I5(Receive_State[2]),
        .O(RX_SBR_5[2]));
  LUT6 #(
    .INIT(64'h08080808080808FF)) 
    \RX_SBR_5[3]_i_1 
       (.I0(\RX_SBR_1[3]_i_3_n_0 ),
        .I1(\Rx_RCV_Cnt_reg_n_0_[5] ),
        .I2(\Rx_RCV_Cnt_reg_n_0_[4] ),
        .I3(Receive_State[2]),
        .I4(Receive_State[0]),
        .I5(Receive_State[1]),
        .O(\RX_SBR_5[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7F008000FF000000)) 
    \RX_SBR_5[3]_i_2 
       (.I0(Rx),
        .I1(\RX_SBR_5_reg_n_0_[1] ),
        .I2(\RX_SBR_5_reg_n_0_[0] ),
        .I3(\RX_SBR_0[3]_i_5_n_0 ),
        .I4(\RX_SBR_5_reg_n_0_[3] ),
        .I5(\RX_SBR_5_reg_n_0_[2] ),
        .O(RX_SBR_5[3]));
  FDRE #(
    .INIT(1'b0)) 
    \RX_SBR_5_reg[0] 
       (.C(CLK9600_8_D_reg_0),
        .CE(\RX_SBR_5[3]_i_1_n_0 ),
        .D(RX_SBR_5[0]),
        .Q(\RX_SBR_5_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RX_SBR_5_reg[1] 
       (.C(CLK9600_8_D_reg_0),
        .CE(\RX_SBR_5[3]_i_1_n_0 ),
        .D(RX_SBR_5[1]),
        .Q(\RX_SBR_5_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RX_SBR_5_reg[2] 
       (.C(CLK9600_8_D_reg_0),
        .CE(\RX_SBR_5[3]_i_1_n_0 ),
        .D(RX_SBR_5[2]),
        .Q(\RX_SBR_5_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RX_SBR_5_reg[3] 
       (.C(CLK9600_8_D_reg_0),
        .CE(\RX_SBR_5[3]_i_1_n_0 ),
        .D(RX_SBR_5[3]),
        .Q(\RX_SBR_5_reg_n_0_[3] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h1020)) 
    \RX_SBR_6[0]_i_1 
       (.I0(\RX_SBR_6_reg_n_0_[0] ),
        .I1(Receive_State[2]),
        .I2(Receive_State[1]),
        .I3(Rx),
        .O(RX_SBR_6[0]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h04080C00)) 
    \RX_SBR_6[1]_i_1 
       (.I0(Rx),
        .I1(Receive_State[1]),
        .I2(Receive_State[2]),
        .I3(\RX_SBR_6_reg_n_0_[1] ),
        .I4(\RX_SBR_6_reg_n_0_[0] ),
        .O(RX_SBR_6[1]));
  LUT6 #(
    .INIT(64'h000000006AAA0000)) 
    \RX_SBR_6[2]_i_1 
       (.I0(\RX_SBR_6_reg_n_0_[2] ),
        .I1(\RX_SBR_6_reg_n_0_[0] ),
        .I2(\RX_SBR_6_reg_n_0_[1] ),
        .I3(Rx),
        .I4(Receive_State[1]),
        .I5(Receive_State[2]),
        .O(RX_SBR_6[2]));
  LUT5 #(
    .INIT(32'hFFFF0080)) 
    \RX_SBR_6[3]_i_1 
       (.I0(\RX_SBR_0[3]_i_3_n_0 ),
        .I1(\Rx_RCV_Cnt_reg_n_0_[5] ),
        .I2(\Rx_RCV_Cnt_reg_n_0_[4] ),
        .I3(\Rx_RCV_Cnt_reg_n_0_[3] ),
        .I4(\RX_SBR_0[3]_i_4_n_0 ),
        .O(\RX_SBR_6[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7F008000FF000000)) 
    \RX_SBR_6[3]_i_2 
       (.I0(Rx),
        .I1(\RX_SBR_6_reg_n_0_[1] ),
        .I2(\RX_SBR_6_reg_n_0_[0] ),
        .I3(\RX_SBR_0[3]_i_5_n_0 ),
        .I4(\RX_SBR_6_reg_n_0_[3] ),
        .I5(\RX_SBR_6_reg_n_0_[2] ),
        .O(RX_SBR_6[3]));
  FDRE #(
    .INIT(1'b0)) 
    \RX_SBR_6_reg[0] 
       (.C(CLK9600_8_D_reg_0),
        .CE(\RX_SBR_6[3]_i_1_n_0 ),
        .D(RX_SBR_6[0]),
        .Q(\RX_SBR_6_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RX_SBR_6_reg[1] 
       (.C(CLK9600_8_D_reg_0),
        .CE(\RX_SBR_6[3]_i_1_n_0 ),
        .D(RX_SBR_6[1]),
        .Q(\RX_SBR_6_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RX_SBR_6_reg[2] 
       (.C(CLK9600_8_D_reg_0),
        .CE(\RX_SBR_6[3]_i_1_n_0 ),
        .D(RX_SBR_6[2]),
        .Q(\RX_SBR_6_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RX_SBR_6_reg[3] 
       (.C(CLK9600_8_D_reg_0),
        .CE(\RX_SBR_6[3]_i_1_n_0 ),
        .D(RX_SBR_6[3]),
        .Q(\RX_SBR_6_reg_n_0_[3] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h1020)) 
    \RX_SBR_7[0]_i_1 
       (.I0(\RX_SBR_7_reg_n_0_[0] ),
        .I1(Receive_State[2]),
        .I2(Receive_State[1]),
        .I3(Rx),
        .O(RX_SBR_7[0]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h04080C00)) 
    \RX_SBR_7[1]_i_1 
       (.I0(Rx),
        .I1(Receive_State[1]),
        .I2(Receive_State[2]),
        .I3(\RX_SBR_7_reg_n_0_[1] ),
        .I4(\RX_SBR_7_reg_n_0_[0] ),
        .O(RX_SBR_7[1]));
  LUT6 #(
    .INIT(64'h000000006AAA0000)) 
    \RX_SBR_7[2]_i_1 
       (.I0(\RX_SBR_7_reg_n_0_[2] ),
        .I1(\RX_SBR_7_reg_n_0_[0] ),
        .I2(\RX_SBR_7_reg_n_0_[1] ),
        .I3(Rx),
        .I4(Receive_State[1]),
        .I5(Receive_State[2]),
        .O(RX_SBR_7[2]));
  LUT6 #(
    .INIT(64'h80808080808080FF)) 
    \RX_SBR_7[3]_i_1 
       (.I0(\RX_SBR_1[3]_i_3_n_0 ),
        .I1(\Rx_RCV_Cnt_reg_n_0_[4] ),
        .I2(\Rx_RCV_Cnt_reg_n_0_[5] ),
        .I3(Receive_State[2]),
        .I4(Receive_State[0]),
        .I5(Receive_State[1]),
        .O(\RX_SBR_7[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7F008000FF000000)) 
    \RX_SBR_7[3]_i_2 
       (.I0(Rx),
        .I1(\RX_SBR_7_reg_n_0_[1] ),
        .I2(\RX_SBR_7_reg_n_0_[0] ),
        .I3(\RX_SBR_0[3]_i_5_n_0 ),
        .I4(\RX_SBR_7_reg_n_0_[3] ),
        .I5(\RX_SBR_7_reg_n_0_[2] ),
        .O(RX_SBR_7[3]));
  FDRE #(
    .INIT(1'b0)) 
    \RX_SBR_7_reg[0] 
       (.C(CLK9600_8_D_reg_0),
        .CE(\RX_SBR_7[3]_i_1_n_0 ),
        .D(RX_SBR_7[0]),
        .Q(\RX_SBR_7_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RX_SBR_7_reg[1] 
       (.C(CLK9600_8_D_reg_0),
        .CE(\RX_SBR_7[3]_i_1_n_0 ),
        .D(RX_SBR_7[1]),
        .Q(\RX_SBR_7_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RX_SBR_7_reg[2] 
       (.C(CLK9600_8_D_reg_0),
        .CE(\RX_SBR_7[3]_i_1_n_0 ),
        .D(RX_SBR_7[2]),
        .Q(\RX_SBR_7_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \RX_SBR_7_reg[3] 
       (.C(CLK9600_8_D_reg_0),
        .CE(\RX_SBR_7[3]_i_1_n_0 ),
        .D(RX_SBR_7[3]),
        .Q(\RX_SBR_7_reg_n_0_[3] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Rx_RCV_Cnt[0]_i_1 
       (.I0(\Rx_RCV_Cnt[1]_i_2_n_0 ),
        .I1(\Rx_RCV_Cnt_reg_n_0_[0] ),
        .O(Rx_RCV_Cnt[0]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \Rx_RCV_Cnt[1]_i_1 
       (.I0(\Rx_RCV_Cnt[1]_i_2_n_0 ),
        .I1(\Rx_RCV_Cnt_reg_n_0_[0] ),
        .I2(\Rx_RCV_Cnt_reg_n_0_[1] ),
        .O(Rx_RCV_Cnt[1]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h00FF2020)) 
    \Rx_RCV_Cnt[1]_i_2 
       (.I0(Receive_State[0]),
        .I1(Rx),
        .I2(\Rx_RCV_Cnt[1]_i_3_n_0 ),
        .I3(Receive_State[2]),
        .I4(Receive_State[1]),
        .O(\Rx_RCV_Cnt[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \Rx_RCV_Cnt[1]_i_3 
       (.I0(\Rx_RCV_Cnt_reg_n_0_[4] ),
        .I1(\Rx_RCV_Cnt_reg_n_0_[5] ),
        .I2(\Rx_RCV_Cnt_reg_n_0_[2] ),
        .I3(\Rx_RCV_Cnt_reg_n_0_[3] ),
        .I4(\Rx_RCV_Cnt_reg_n_0_[7] ),
        .I5(\Rx_RCV_Cnt_reg_n_0_[6] ),
        .O(\Rx_RCV_Cnt[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'hF8884888)) 
    \Rx_RCV_Cnt[2]_i_1 
       (.I0(\Rx_RCV_Cnt_reg_n_0_[2] ),
        .I1(Receive_State[1]),
        .I2(\Rx_RCV_Cnt_reg_n_0_[0] ),
        .I3(\Rx_RCV_Cnt_reg_n_0_[1] ),
        .I4(\Rx_RCV_Cnt[2]_i_2_n_0 ),
        .O(Rx_RCV_Cnt[2]));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \Rx_RCV_Cnt[2]_i_2 
       (.I0(\Rx_RCV_Cnt_reg_n_0_[6] ),
        .I1(\Rx_RCV_Cnt_reg_n_0_[7] ),
        .I2(Receive_State[1]),
        .I3(Receive_State[0]),
        .I4(Rx),
        .I5(\FSM_sequential_Receive_State[2]_i_3_n_0 ),
        .O(\Rx_RCV_Cnt[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h7F008000)) 
    \Rx_RCV_Cnt[3]_i_1 
       (.I0(\Rx_RCV_Cnt_reg_n_0_[1] ),
        .I1(\Rx_RCV_Cnt_reg_n_0_[0] ),
        .I2(\Rx_RCV_Cnt_reg_n_0_[2] ),
        .I3(Receive_State[1]),
        .I4(\Rx_RCV_Cnt_reg_n_0_[3] ),
        .O(Rx_RCV_Cnt[3]));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \Rx_RCV_Cnt[4]_i_1 
       (.I0(\Rx_RCV_Cnt_reg_n_0_[2] ),
        .I1(\Rx_RCV_Cnt_reg_n_0_[0] ),
        .I2(\Rx_RCV_Cnt_reg_n_0_[1] ),
        .I3(\Rx_RCV_Cnt_reg_n_0_[3] ),
        .I4(\RX_SBR_0[3]_i_5_n_0 ),
        .I5(\Rx_RCV_Cnt_reg_n_0_[4] ),
        .O(Rx_RCV_Cnt[4]));
  LUT6 #(
    .INIT(64'hDFFF000020000000)) 
    \Rx_RCV_Cnt[5]_i_1 
       (.I0(\Rx_RCV_Cnt_reg_n_0_[3] ),
        .I1(\Rx_RCV_Cnt[5]_i_2_n_0 ),
        .I2(\Rx_RCV_Cnt_reg_n_0_[2] ),
        .I3(\Rx_RCV_Cnt_reg_n_0_[4] ),
        .I4(\RX_SBR_0[3]_i_5_n_0 ),
        .I5(\Rx_RCV_Cnt_reg_n_0_[5] ),
        .O(Rx_RCV_Cnt[5]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Rx_RCV_Cnt[5]_i_2 
       (.I0(\Rx_RCV_Cnt_reg_n_0_[0] ),
        .I1(\Rx_RCV_Cnt_reg_n_0_[1] ),
        .O(\Rx_RCV_Cnt[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h84)) 
    \Rx_RCV_Cnt[6]_i_1 
       (.I0(\Rx_RCV_Cnt[7]_i_3_n_0 ),
        .I1(Receive_State[1]),
        .I2(\Rx_RCV_Cnt_reg_n_0_[6] ),
        .O(Rx_RCV_Cnt[6]));
  LUT3 #(
    .INIT(8'h13)) 
    \Rx_RCV_Cnt[7]_i_1 
       (.I0(Receive_State[0]),
        .I1(Receive_State[2]),
        .I2(Receive_State[1]),
        .O(\Rx_RCV_Cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'hB040)) 
    \Rx_RCV_Cnt[7]_i_2 
       (.I0(\Rx_RCV_Cnt[7]_i_3_n_0 ),
        .I1(\Rx_RCV_Cnt_reg_n_0_[6] ),
        .I2(Receive_State[1]),
        .I3(\Rx_RCV_Cnt_reg_n_0_[7] ),
        .O(Rx_RCV_Cnt[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \Rx_RCV_Cnt[7]_i_3 
       (.I0(\Rx_RCV_Cnt_reg_n_0_[4] ),
        .I1(\Rx_RCV_Cnt_reg_n_0_[2] ),
        .I2(\Rx_RCV_Cnt_reg_n_0_[0] ),
        .I3(\Rx_RCV_Cnt_reg_n_0_[1] ),
        .I4(\Rx_RCV_Cnt_reg_n_0_[3] ),
        .I5(\Rx_RCV_Cnt_reg_n_0_[5] ),
        .O(\Rx_RCV_Cnt[7]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Rx_RCV_Cnt_reg[0] 
       (.C(CLK9600_8_D_reg_0),
        .CE(\Rx_RCV_Cnt[7]_i_1_n_0 ),
        .D(Rx_RCV_Cnt[0]),
        .Q(\Rx_RCV_Cnt_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Rx_RCV_Cnt_reg[1] 
       (.C(CLK9600_8_D_reg_0),
        .CE(\Rx_RCV_Cnt[7]_i_1_n_0 ),
        .D(Rx_RCV_Cnt[1]),
        .Q(\Rx_RCV_Cnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Rx_RCV_Cnt_reg[2] 
       (.C(CLK9600_8_D_reg_0),
        .CE(\Rx_RCV_Cnt[7]_i_1_n_0 ),
        .D(Rx_RCV_Cnt[2]),
        .Q(\Rx_RCV_Cnt_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Rx_RCV_Cnt_reg[3] 
       (.C(CLK9600_8_D_reg_0),
        .CE(\Rx_RCV_Cnt[7]_i_1_n_0 ),
        .D(Rx_RCV_Cnt[3]),
        .Q(\Rx_RCV_Cnt_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Rx_RCV_Cnt_reg[4] 
       (.C(CLK9600_8_D_reg_0),
        .CE(\Rx_RCV_Cnt[7]_i_1_n_0 ),
        .D(Rx_RCV_Cnt[4]),
        .Q(\Rx_RCV_Cnt_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Rx_RCV_Cnt_reg[5] 
       (.C(CLK9600_8_D_reg_0),
        .CE(\Rx_RCV_Cnt[7]_i_1_n_0 ),
        .D(Rx_RCV_Cnt[5]),
        .Q(\Rx_RCV_Cnt_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Rx_RCV_Cnt_reg[6] 
       (.C(CLK9600_8_D_reg_0),
        .CE(\Rx_RCV_Cnt[7]_i_1_n_0 ),
        .D(Rx_RCV_Cnt[6]),
        .Q(\Rx_RCV_Cnt_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Rx_RCV_Cnt_reg[7] 
       (.C(CLK9600_8_D_reg_0),
        .CE(\Rx_RCV_Cnt[7]_i_1_n_0 ),
        .D(Rx_RCV_Cnt[7]),
        .Q(\Rx_RCV_Cnt_reg_n_0_[7] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0003FFFF00010000)) 
    \Tx_FIFO_State[0]_i_1 
       (.I0(empty),
        .I1(\Tx_FIFO_State_reg_n_0_[1] ),
        .I2(\Tx_FIFO_State_reg_n_0_[2] ),
        .I3(Transmit_State__0[2]),
        .I4(Tx_FIFO_State),
        .I5(\Tx_FIFO_State_reg_n_0_[0] ),
        .O(\Tx_FIFO_State[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1F1F1F1F1F101F1F)) 
    \Tx_FIFO_State[0]_i_2 
       (.I0(Transmit_State__0[1]),
        .I1(Transmit_State__0[0]),
        .I2(Transmit_State__0[2]),
        .I3(\Tx_FIFO_State_reg_n_0_[0] ),
        .I4(\Tx_FIFO_State_reg_n_0_[2] ),
        .I5(\Tx_FIFO_State_reg_n_0_[1] ),
        .O(Tx_FIFO_State));
  LUT6 #(
    .INIT(64'hE0E0EFE000000F00)) 
    \Tx_FIFO_State[1]_i_1 
       (.I0(Transmit_State__0[1]),
        .I1(Transmit_State__0[0]),
        .I2(Transmit_State__0[2]),
        .I3(\Tx_FIFO_State_reg_n_0_[0] ),
        .I4(\Tx_FIFO_State_reg_n_0_[2] ),
        .I5(\Tx_FIFO_State_reg_n_0_[1] ),
        .O(\Tx_FIFO_State[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE0E0000FE0EF0000)) 
    \Tx_FIFO_State[2]_i_1 
       (.I0(Transmit_State__0[1]),
        .I1(Transmit_State__0[0]),
        .I2(Transmit_State__0[2]),
        .I3(\Tx_FIFO_State_reg_n_0_[0] ),
        .I4(\Tx_FIFO_State_reg_n_0_[2] ),
        .I5(\Tx_FIFO_State_reg_n_0_[1] ),
        .O(\Tx_FIFO_State[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Tx_FIFO_State_reg[0] 
       (.C(CLK9600_D_reg_0),
        .CE(1'b1),
        .D(\Tx_FIFO_State[0]_i_1_n_0 ),
        .Q(\Tx_FIFO_State_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Tx_FIFO_State_reg[1] 
       (.C(CLK9600_D_reg_0),
        .CE(1'b1),
        .D(\Tx_FIFO_State[1]_i_1_n_0 ),
        .Q(\Tx_FIFO_State_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Tx_FIFO_State_reg[2] 
       (.C(CLK9600_D_reg_0),
        .CE(1'b1),
        .D(\Tx_FIFO_State[2]_i_1_n_0 ),
        .Q(\Tx_FIFO_State_reg_n_0_[2] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h02)) 
    \Tx_Word_1[7]_i_1 
       (.I0(\Tx_FIFO_State_reg_n_0_[1] ),
        .I1(\Tx_FIFO_State_reg_n_0_[0] ),
        .I2(\Tx_FIFO_State_reg_n_0_[2] ),
        .O(\Tx_Word_1[7]_i_1_n_0 ));
  FDRE \Tx_Word_1_reg[0] 
       (.C(CLK9600_D_reg_0),
        .CE(\Tx_Word_1[7]_i_1_n_0 ),
        .D(D[0]),
        .Q(Tx_Word_1[0]),
        .R(1'b0));
  FDRE \Tx_Word_1_reg[1] 
       (.C(CLK9600_D_reg_0),
        .CE(\Tx_Word_1[7]_i_1_n_0 ),
        .D(D[1]),
        .Q(Tx_Word_1[1]),
        .R(1'b0));
  FDRE \Tx_Word_1_reg[2] 
       (.C(CLK9600_D_reg_0),
        .CE(\Tx_Word_1[7]_i_1_n_0 ),
        .D(D[2]),
        .Q(Tx_Word_1[2]),
        .R(1'b0));
  FDRE \Tx_Word_1_reg[3] 
       (.C(CLK9600_D_reg_0),
        .CE(\Tx_Word_1[7]_i_1_n_0 ),
        .D(D[3]),
        .Q(Tx_Word_1[3]),
        .R(1'b0));
  FDRE \Tx_Word_1_reg[4] 
       (.C(CLK9600_D_reg_0),
        .CE(\Tx_Word_1[7]_i_1_n_0 ),
        .D(D[4]),
        .Q(Tx_Word_1[4]),
        .R(1'b0));
  FDRE \Tx_Word_1_reg[5] 
       (.C(CLK9600_D_reg_0),
        .CE(\Tx_Word_1[7]_i_1_n_0 ),
        .D(D[5]),
        .Q(Tx_Word_1[5]),
        .R(1'b0));
  FDRE \Tx_Word_1_reg[6] 
       (.C(CLK9600_D_reg_0),
        .CE(\Tx_Word_1[7]_i_1_n_0 ),
        .D(D[6]),
        .Q(Tx_Word_1[6]),
        .R(1'b0));
  FDRE \Tx_Word_1_reg[7] 
       (.C(CLK9600_D_reg_0),
        .CE(\Tx_Word_1[7]_i_1_n_0 ),
        .D(D[7]),
        .Q(Tx_Word_1[7]),
        .R(1'b0));
  CARRY4 Tx_Word_Cnt0_carry
       (.CI(1'b0),
        .CO({Tx_Word_Cnt0_carry_n_0,Tx_Word_Cnt0_carry_n_1,Tx_Word_Cnt0_carry_n_2,Tx_Word_Cnt0_carry_n_3}),
        .CYINIT(\Tx_Word_Cnt_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in4[4:1]),
        .S({\Tx_Word_Cnt_reg_n_0_[4] ,\Tx_Word_Cnt_reg_n_0_[3] ,\Tx_Word_Cnt_reg_n_0_[2] ,\Tx_Word_Cnt_reg_n_0_[1] }));
  CARRY4 Tx_Word_Cnt0_carry__0
       (.CI(Tx_Word_Cnt0_carry_n_0),
        .CO({Tx_Word_Cnt0_carry__0_n_0,Tx_Word_Cnt0_carry__0_n_1,Tx_Word_Cnt0_carry__0_n_2,Tx_Word_Cnt0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in4[8:5]),
        .S({\Tx_Word_Cnt_reg_n_0_[8] ,\Tx_Word_Cnt_reg_n_0_[7] ,\Tx_Word_Cnt_reg_n_0_[6] ,\Tx_Word_Cnt_reg_n_0_[5] }));
  CARRY4 Tx_Word_Cnt0_carry__1
       (.CI(Tx_Word_Cnt0_carry__0_n_0),
        .CO({Tx_Word_Cnt0_carry__1_n_0,Tx_Word_Cnt0_carry__1_n_1,Tx_Word_Cnt0_carry__1_n_2,Tx_Word_Cnt0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in4[12:9]),
        .S({\Tx_Word_Cnt_reg_n_0_[12] ,\Tx_Word_Cnt_reg_n_0_[11] ,\Tx_Word_Cnt_reg_n_0_[10] ,\Tx_Word_Cnt_reg_n_0_[9] }));
  CARRY4 Tx_Word_Cnt0_carry__2
       (.CI(Tx_Word_Cnt0_carry__1_n_0),
        .CO({Tx_Word_Cnt0_carry__2_n_0,Tx_Word_Cnt0_carry__2_n_1,Tx_Word_Cnt0_carry__2_n_2,Tx_Word_Cnt0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in4[16:13]),
        .S({\Tx_Word_Cnt_reg_n_0_[16] ,\Tx_Word_Cnt_reg_n_0_[15] ,\Tx_Word_Cnt_reg_n_0_[14] ,\Tx_Word_Cnt_reg_n_0_[13] }));
  CARRY4 Tx_Word_Cnt0_carry__3
       (.CI(Tx_Word_Cnt0_carry__2_n_0),
        .CO({Tx_Word_Cnt0_carry__3_n_0,Tx_Word_Cnt0_carry__3_n_1,Tx_Word_Cnt0_carry__3_n_2,Tx_Word_Cnt0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in4[20:17]),
        .S({\Tx_Word_Cnt_reg_n_0_[20] ,\Tx_Word_Cnt_reg_n_0_[19] ,\Tx_Word_Cnt_reg_n_0_[18] ,\Tx_Word_Cnt_reg_n_0_[17] }));
  CARRY4 Tx_Word_Cnt0_carry__4
       (.CI(Tx_Word_Cnt0_carry__3_n_0),
        .CO({Tx_Word_Cnt0_carry__4_n_0,Tx_Word_Cnt0_carry__4_n_1,Tx_Word_Cnt0_carry__4_n_2,Tx_Word_Cnt0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in4[24:21]),
        .S({\Tx_Word_Cnt_reg_n_0_[24] ,\Tx_Word_Cnt_reg_n_0_[23] ,\Tx_Word_Cnt_reg_n_0_[22] ,\Tx_Word_Cnt_reg_n_0_[21] }));
  CARRY4 Tx_Word_Cnt0_carry__5
       (.CI(Tx_Word_Cnt0_carry__4_n_0),
        .CO({Tx_Word_Cnt0_carry__5_n_0,Tx_Word_Cnt0_carry__5_n_1,Tx_Word_Cnt0_carry__5_n_2,Tx_Word_Cnt0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in4[28:25]),
        .S({\Tx_Word_Cnt_reg_n_0_[28] ,\Tx_Word_Cnt_reg_n_0_[27] ,\Tx_Word_Cnt_reg_n_0_[26] ,\Tx_Word_Cnt_reg_n_0_[25] }));
  CARRY4 Tx_Word_Cnt0_carry__6
       (.CI(Tx_Word_Cnt0_carry__5_n_0),
        .CO({NLW_Tx_Word_Cnt0_carry__6_CO_UNCONNECTED[3:1],Tx_Word_Cnt0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_Tx_Word_Cnt0_carry__6_O_UNCONNECTED[3:2],in4[30:29]}),
        .S({1'b0,1'b0,\Tx_Word_Cnt_reg_n_0_[30] ,\Tx_Word_Cnt_reg_n_0_[29] }));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \Tx_Word_Cnt[0]_i_1 
       (.I0(\Tx_Word_Cnt_reg_n_0_[0] ),
        .O(in4[0]));
  LUT4 #(
    .INIT(16'h0010)) 
    \Tx_Word_Cnt[30]_i_1 
       (.I0(Transmit_State__0[0]),
        .I1(\FSM_sequential_Transmit_State[2]_i_2_n_0 ),
        .I2(Transmit_State__0[1]),
        .I3(Transmit_State__0[2]),
        .O(\Tx_Word_Cnt[30]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \Tx_Word_Cnt[30]_i_2 
       (.I0(Transmit_State__0[2]),
        .I1(Transmit_State__0[1]),
        .I2(\FSM_sequential_Transmit_State[2]_i_2_n_0 ),
        .O(Tx_Word_Cnt));
  FDRE #(
    .INIT(1'b0)) 
    \Tx_Word_Cnt_reg[0] 
       (.C(CLK9600_D_reg_0),
        .CE(Tx_Word_Cnt),
        .D(in4[0]),
        .Q(\Tx_Word_Cnt_reg_n_0_[0] ),
        .R(\Tx_Word_Cnt[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Tx_Word_Cnt_reg[10] 
       (.C(CLK9600_D_reg_0),
        .CE(Tx_Word_Cnt),
        .D(in4[10]),
        .Q(\Tx_Word_Cnt_reg_n_0_[10] ),
        .R(\Tx_Word_Cnt[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Tx_Word_Cnt_reg[11] 
       (.C(CLK9600_D_reg_0),
        .CE(Tx_Word_Cnt),
        .D(in4[11]),
        .Q(\Tx_Word_Cnt_reg_n_0_[11] ),
        .R(\Tx_Word_Cnt[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Tx_Word_Cnt_reg[12] 
       (.C(CLK9600_D_reg_0),
        .CE(Tx_Word_Cnt),
        .D(in4[12]),
        .Q(\Tx_Word_Cnt_reg_n_0_[12] ),
        .R(\Tx_Word_Cnt[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Tx_Word_Cnt_reg[13] 
       (.C(CLK9600_D_reg_0),
        .CE(Tx_Word_Cnt),
        .D(in4[13]),
        .Q(\Tx_Word_Cnt_reg_n_0_[13] ),
        .R(\Tx_Word_Cnt[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Tx_Word_Cnt_reg[14] 
       (.C(CLK9600_D_reg_0),
        .CE(Tx_Word_Cnt),
        .D(in4[14]),
        .Q(\Tx_Word_Cnt_reg_n_0_[14] ),
        .R(\Tx_Word_Cnt[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Tx_Word_Cnt_reg[15] 
       (.C(CLK9600_D_reg_0),
        .CE(Tx_Word_Cnt),
        .D(in4[15]),
        .Q(\Tx_Word_Cnt_reg_n_0_[15] ),
        .R(\Tx_Word_Cnt[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Tx_Word_Cnt_reg[16] 
       (.C(CLK9600_D_reg_0),
        .CE(Tx_Word_Cnt),
        .D(in4[16]),
        .Q(\Tx_Word_Cnt_reg_n_0_[16] ),
        .R(\Tx_Word_Cnt[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Tx_Word_Cnt_reg[17] 
       (.C(CLK9600_D_reg_0),
        .CE(Tx_Word_Cnt),
        .D(in4[17]),
        .Q(\Tx_Word_Cnt_reg_n_0_[17] ),
        .R(\Tx_Word_Cnt[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Tx_Word_Cnt_reg[18] 
       (.C(CLK9600_D_reg_0),
        .CE(Tx_Word_Cnt),
        .D(in4[18]),
        .Q(\Tx_Word_Cnt_reg_n_0_[18] ),
        .R(\Tx_Word_Cnt[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Tx_Word_Cnt_reg[19] 
       (.C(CLK9600_D_reg_0),
        .CE(Tx_Word_Cnt),
        .D(in4[19]),
        .Q(\Tx_Word_Cnt_reg_n_0_[19] ),
        .R(\Tx_Word_Cnt[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Tx_Word_Cnt_reg[1] 
       (.C(CLK9600_D_reg_0),
        .CE(Tx_Word_Cnt),
        .D(in4[1]),
        .Q(\Tx_Word_Cnt_reg_n_0_[1] ),
        .R(\Tx_Word_Cnt[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Tx_Word_Cnt_reg[20] 
       (.C(CLK9600_D_reg_0),
        .CE(Tx_Word_Cnt),
        .D(in4[20]),
        .Q(\Tx_Word_Cnt_reg_n_0_[20] ),
        .R(\Tx_Word_Cnt[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Tx_Word_Cnt_reg[21] 
       (.C(CLK9600_D_reg_0),
        .CE(Tx_Word_Cnt),
        .D(in4[21]),
        .Q(\Tx_Word_Cnt_reg_n_0_[21] ),
        .R(\Tx_Word_Cnt[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Tx_Word_Cnt_reg[22] 
       (.C(CLK9600_D_reg_0),
        .CE(Tx_Word_Cnt),
        .D(in4[22]),
        .Q(\Tx_Word_Cnt_reg_n_0_[22] ),
        .R(\Tx_Word_Cnt[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Tx_Word_Cnt_reg[23] 
       (.C(CLK9600_D_reg_0),
        .CE(Tx_Word_Cnt),
        .D(in4[23]),
        .Q(\Tx_Word_Cnt_reg_n_0_[23] ),
        .R(\Tx_Word_Cnt[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Tx_Word_Cnt_reg[24] 
       (.C(CLK9600_D_reg_0),
        .CE(Tx_Word_Cnt),
        .D(in4[24]),
        .Q(\Tx_Word_Cnt_reg_n_0_[24] ),
        .R(\Tx_Word_Cnt[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Tx_Word_Cnt_reg[25] 
       (.C(CLK9600_D_reg_0),
        .CE(Tx_Word_Cnt),
        .D(in4[25]),
        .Q(\Tx_Word_Cnt_reg_n_0_[25] ),
        .R(\Tx_Word_Cnt[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Tx_Word_Cnt_reg[26] 
       (.C(CLK9600_D_reg_0),
        .CE(Tx_Word_Cnt),
        .D(in4[26]),
        .Q(\Tx_Word_Cnt_reg_n_0_[26] ),
        .R(\Tx_Word_Cnt[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Tx_Word_Cnt_reg[27] 
       (.C(CLK9600_D_reg_0),
        .CE(Tx_Word_Cnt),
        .D(in4[27]),
        .Q(\Tx_Word_Cnt_reg_n_0_[27] ),
        .R(\Tx_Word_Cnt[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Tx_Word_Cnt_reg[28] 
       (.C(CLK9600_D_reg_0),
        .CE(Tx_Word_Cnt),
        .D(in4[28]),
        .Q(\Tx_Word_Cnt_reg_n_0_[28] ),
        .R(\Tx_Word_Cnt[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Tx_Word_Cnt_reg[29] 
       (.C(CLK9600_D_reg_0),
        .CE(Tx_Word_Cnt),
        .D(in4[29]),
        .Q(\Tx_Word_Cnt_reg_n_0_[29] ),
        .R(\Tx_Word_Cnt[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Tx_Word_Cnt_reg[2] 
       (.C(CLK9600_D_reg_0),
        .CE(Tx_Word_Cnt),
        .D(in4[2]),
        .Q(\Tx_Word_Cnt_reg_n_0_[2] ),
        .R(\Tx_Word_Cnt[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Tx_Word_Cnt_reg[30] 
       (.C(CLK9600_D_reg_0),
        .CE(Tx_Word_Cnt),
        .D(in4[30]),
        .Q(\Tx_Word_Cnt_reg_n_0_[30] ),
        .R(\Tx_Word_Cnt[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Tx_Word_Cnt_reg[3] 
       (.C(CLK9600_D_reg_0),
        .CE(Tx_Word_Cnt),
        .D(in4[3]),
        .Q(\Tx_Word_Cnt_reg_n_0_[3] ),
        .R(\Tx_Word_Cnt[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Tx_Word_Cnt_reg[4] 
       (.C(CLK9600_D_reg_0),
        .CE(Tx_Word_Cnt),
        .D(in4[4]),
        .Q(\Tx_Word_Cnt_reg_n_0_[4] ),
        .R(\Tx_Word_Cnt[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Tx_Word_Cnt_reg[5] 
       (.C(CLK9600_D_reg_0),
        .CE(Tx_Word_Cnt),
        .D(in4[5]),
        .Q(\Tx_Word_Cnt_reg_n_0_[5] ),
        .R(\Tx_Word_Cnt[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Tx_Word_Cnt_reg[6] 
       (.C(CLK9600_D_reg_0),
        .CE(Tx_Word_Cnt),
        .D(in4[6]),
        .Q(\Tx_Word_Cnt_reg_n_0_[6] ),
        .R(\Tx_Word_Cnt[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Tx_Word_Cnt_reg[7] 
       (.C(CLK9600_D_reg_0),
        .CE(Tx_Word_Cnt),
        .D(in4[7]),
        .Q(\Tx_Word_Cnt_reg_n_0_[7] ),
        .R(\Tx_Word_Cnt[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Tx_Word_Cnt_reg[8] 
       (.C(CLK9600_D_reg_0),
        .CE(Tx_Word_Cnt),
        .D(in4[8]),
        .Q(\Tx_Word_Cnt_reg_n_0_[8] ),
        .R(\Tx_Word_Cnt[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Tx_Word_Cnt_reg[9] 
       (.C(CLK9600_D_reg_0),
        .CE(Tx_Word_Cnt),
        .D(in4[9]),
        .Q(\Tx_Word_Cnt_reg_n_0_[9] ),
        .R(\Tx_Word_Cnt[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4440004077777777)) 
    Tx_i_1
       (.I0(Transmit_State__0[2]),
        .I1(Transmit_State__0[0]),
        .I2(Tx_i_2_n_0),
        .I3(\Tx_Word_Cnt_reg_n_0_[2] ),
        .I4(Tx_i_3_n_0),
        .I5(Transmit_State__0[1]),
        .O(Tx_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    Tx_i_2
       (.I0(Tx_Word_1[3]),
        .I1(Tx_Word_1[2]),
        .I2(\Tx_Word_Cnt_reg_n_0_[1] ),
        .I3(Tx_Word_1[1]),
        .I4(\Tx_Word_Cnt_reg_n_0_[0] ),
        .I5(Tx_Word_1[0]),
        .O(Tx_i_2_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    Tx_i_3
       (.I0(Tx_Word_1[7]),
        .I1(Tx_Word_1[6]),
        .I2(\Tx_Word_Cnt_reg_n_0_[1] ),
        .I3(Tx_Word_1[5]),
        .I4(\Tx_Word_Cnt_reg_n_0_[0] ),
        .I5(Tx_Word_1[4]),
        .O(Tx_i_3_n_0));
  FDRE #(
    .INIT(1'b1)) 
    Tx_reg
       (.C(CLK9600_D_reg_0),
        .CE(1'b1),
        .D(Tx_i_1_n_0),
        .Q(UART_0_Tx),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "UART_Debug" *) 
module Zynq_Design_UART_V1_9_0_0_UART_Debug
   (Tx,
    CLK100MHz,
    UART_Debug_Enable,
    UART_0_Tx);
  output Tx;
  input CLK100MHz;
  input UART_Debug_Enable;
  input UART_0_Tx;

  wire CLK100MHz;
  wire \CLK115200[0]_i_3_n_0 ;
  wire \CLK115200[0]_i_4_n_0 ;
  wire \CLK115200[0]_i_5_n_0 ;
  wire \CLK115200[0]_i_6_n_0 ;
  wire CLK115200_D;
  wire CLK115200_D_i_1_n_0;
  wire CLK115200_D_i_2_n_0;
  wire CLK115200_D_i_3_n_0;
  wire CLK115200_D_i_4_n_0;
  wire CLK115200_D_i_5_n_0;
  wire CLK115200_D_i_6_n_0;
  wire [30:1]CLK115200_reg;
  wire \CLK115200_reg[0]_i_2_n_0 ;
  wire \CLK115200_reg[0]_i_2_n_1 ;
  wire \CLK115200_reg[0]_i_2_n_2 ;
  wire \CLK115200_reg[0]_i_2_n_3 ;
  wire \CLK115200_reg[0]_i_2_n_4 ;
  wire \CLK115200_reg[0]_i_2_n_5 ;
  wire \CLK115200_reg[0]_i_2_n_6 ;
  wire \CLK115200_reg[0]_i_2_n_7 ;
  wire \CLK115200_reg[12]_i_1_n_0 ;
  wire \CLK115200_reg[12]_i_1_n_1 ;
  wire \CLK115200_reg[12]_i_1_n_2 ;
  wire \CLK115200_reg[12]_i_1_n_3 ;
  wire \CLK115200_reg[12]_i_1_n_4 ;
  wire \CLK115200_reg[12]_i_1_n_5 ;
  wire \CLK115200_reg[12]_i_1_n_6 ;
  wire \CLK115200_reg[12]_i_1_n_7 ;
  wire \CLK115200_reg[16]_i_1_n_0 ;
  wire \CLK115200_reg[16]_i_1_n_1 ;
  wire \CLK115200_reg[16]_i_1_n_2 ;
  wire \CLK115200_reg[16]_i_1_n_3 ;
  wire \CLK115200_reg[16]_i_1_n_4 ;
  wire \CLK115200_reg[16]_i_1_n_5 ;
  wire \CLK115200_reg[16]_i_1_n_6 ;
  wire \CLK115200_reg[16]_i_1_n_7 ;
  wire \CLK115200_reg[20]_i_1_n_0 ;
  wire \CLK115200_reg[20]_i_1_n_1 ;
  wire \CLK115200_reg[20]_i_1_n_2 ;
  wire \CLK115200_reg[20]_i_1_n_3 ;
  wire \CLK115200_reg[20]_i_1_n_4 ;
  wire \CLK115200_reg[20]_i_1_n_5 ;
  wire \CLK115200_reg[20]_i_1_n_6 ;
  wire \CLK115200_reg[20]_i_1_n_7 ;
  wire \CLK115200_reg[24]_i_1_n_0 ;
  wire \CLK115200_reg[24]_i_1_n_1 ;
  wire \CLK115200_reg[24]_i_1_n_2 ;
  wire \CLK115200_reg[24]_i_1_n_3 ;
  wire \CLK115200_reg[24]_i_1_n_4 ;
  wire \CLK115200_reg[24]_i_1_n_5 ;
  wire \CLK115200_reg[24]_i_1_n_6 ;
  wire \CLK115200_reg[24]_i_1_n_7 ;
  wire \CLK115200_reg[28]_i_1_n_2 ;
  wire \CLK115200_reg[28]_i_1_n_3 ;
  wire \CLK115200_reg[28]_i_1_n_5 ;
  wire \CLK115200_reg[28]_i_1_n_6 ;
  wire \CLK115200_reg[28]_i_1_n_7 ;
  wire \CLK115200_reg[4]_i_1_n_0 ;
  wire \CLK115200_reg[4]_i_1_n_1 ;
  wire \CLK115200_reg[4]_i_1_n_2 ;
  wire \CLK115200_reg[4]_i_1_n_3 ;
  wire \CLK115200_reg[4]_i_1_n_4 ;
  wire \CLK115200_reg[4]_i_1_n_5 ;
  wire \CLK115200_reg[4]_i_1_n_6 ;
  wire \CLK115200_reg[4]_i_1_n_7 ;
  wire \CLK115200_reg[8]_i_1_n_0 ;
  wire \CLK115200_reg[8]_i_1_n_1 ;
  wire \CLK115200_reg[8]_i_1_n_2 ;
  wire \CLK115200_reg[8]_i_1_n_3 ;
  wire \CLK115200_reg[8]_i_1_n_4 ;
  wire \CLK115200_reg[8]_i_1_n_5 ;
  wire \CLK115200_reg[8]_i_1_n_6 ;
  wire \CLK115200_reg[8]_i_1_n_7 ;
  wire \CLK115200_reg_n_0_[0] ;
  wire Itteration;
  wire \Itteration[0]_i_2_n_0 ;
  wire \Itteration[0]_i_3_n_0 ;
  wire \Itteration[0]_i_4_n_0 ;
  wire \Itteration[2]_i_1_n_0 ;
  wire [1:0]Itteration_reg;
  wire \Itteration_reg[0]_i_1_n_1 ;
  wire \Itteration_reg[0]_i_1_n_3 ;
  wire \Itteration_reg[0]_i_1_n_6 ;
  wire \Itteration_reg[0]_i_1_n_7 ;
  wire [2:2]Itteration_reg__0;
  wire [10:1]State;
  wire Test_Char;
  wire \Test_Char[2]_i_1_n_0 ;
  wire \Test_Char[3]_i_1_n_0 ;
  wire \Test_Char[4]_i_1_n_0 ;
  wire \Test_Char[5]_i_1_n_0 ;
  wire \Test_Char[6]_i_1_n_0 ;
  wire Tx;
  wire Tx_Internal;
  wire Tx_Internal_i_1_n_0;
  wire Tx_Internal_i_2_n_0;
  wire Tx_Internal_i_3_n_0;
  wire Tx_Internal_i_5_n_0;
  wire Tx_Internal_i_6_n_0;
  wire Tx_Internal_reg_n_0;
  wire UART_0_Tx;
  wire UART_Debug_Enable;
  wire clear;
  wire p_1_in;
  wire p_2_in;
  wire p_3_in;
  wire p_4_in;
  wire p_5_in;
  wire p_6_in;
  wire [3:2]\NLW_CLK115200_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_CLK115200_reg[28]_i_1_O_UNCONNECTED ;
  wire [3:1]\NLW_Itteration_reg[0]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_Itteration_reg[0]_i_1_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF80)) 
    \CLK115200[0]_i_1 
       (.I0(CLK115200_reg[9]),
        .I1(CLK115200_reg[8]),
        .I2(\CLK115200[0]_i_3_n_0 ),
        .I3(\CLK115200[0]_i_4_n_0 ),
        .I4(CLK115200_D_i_4_n_0),
        .I5(\CLK115200[0]_i_5_n_0 ),
        .O(clear));
  LUT6 #(
    .INIT(64'hEAEAEAEAEAEAEAAA)) 
    \CLK115200[0]_i_3 
       (.I0(CLK115200_reg[7]),
        .I1(CLK115200_reg[6]),
        .I2(CLK115200_reg[5]),
        .I3(CLK115200_reg[4]),
        .I4(CLK115200_reg[3]),
        .I5(CLK115200_reg[2]),
        .O(\CLK115200[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \CLK115200[0]_i_4 
       (.I0(CLK115200_D_i_5_n_0),
        .I1(CLK115200_reg[29]),
        .I2(CLK115200_reg[28]),
        .I3(CLK115200_reg[30]),
        .O(\CLK115200[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \CLK115200[0]_i_5 
       (.I0(CLK115200_reg[10]),
        .I1(CLK115200_reg[11]),
        .I2(CLK115200_reg[13]),
        .I3(CLK115200_reg[12]),
        .I4(CLK115200_reg[15]),
        .I5(CLK115200_reg[14]),
        .O(\CLK115200[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \CLK115200[0]_i_6 
       (.I0(\CLK115200_reg_n_0_[0] ),
        .O(\CLK115200[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF80)) 
    CLK115200_D_i_1
       (.I0(CLK115200_reg[7]),
        .I1(CLK115200_reg[8]),
        .I2(CLK115200_D_i_2_n_0),
        .I3(CLK115200_D_i_3_n_0),
        .I4(CLK115200_D_i_4_n_0),
        .O(CLK115200_D_i_1_n_0));
  LUT6 #(
    .INIT(64'hEAEAEAEAEAEAEAAA)) 
    CLK115200_D_i_2
       (.I0(CLK115200_reg[6]),
        .I1(CLK115200_reg[4]),
        .I2(CLK115200_reg[5]),
        .I3(CLK115200_reg[1]),
        .I4(CLK115200_reg[3]),
        .I5(CLK115200_reg[2]),
        .O(CLK115200_D_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    CLK115200_D_i_3
       (.I0(\CLK115200[0]_i_5_n_0 ),
        .I1(CLK115200_reg[28]),
        .I2(CLK115200_reg[29]),
        .I3(CLK115200_reg[30]),
        .I4(CLK115200_reg[9]),
        .I5(CLK115200_D_i_5_n_0),
        .O(CLK115200_D_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    CLK115200_D_i_4
       (.I0(CLK115200_reg[18]),
        .I1(CLK115200_reg[17]),
        .I2(CLK115200_reg[23]),
        .I3(CLK115200_reg[20]),
        .I4(CLK115200_D_i_6_n_0),
        .O(CLK115200_D_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    CLK115200_D_i_5
       (.I0(CLK115200_reg[25]),
        .I1(CLK115200_reg[26]),
        .I2(CLK115200_reg[24]),
        .I3(CLK115200_reg[27]),
        .O(CLK115200_D_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    CLK115200_D_i_6
       (.I0(CLK115200_reg[21]),
        .I1(CLK115200_reg[22]),
        .I2(CLK115200_reg[16]),
        .I3(CLK115200_reg[19]),
        .O(CLK115200_D_i_6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    CLK115200_D_reg
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(CLK115200_D_i_1_n_0),
        .Q(CLK115200_D),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CLK115200_reg[0] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(\CLK115200_reg[0]_i_2_n_7 ),
        .Q(\CLK115200_reg_n_0_[0] ),
        .R(clear));
  CARRY4 \CLK115200_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\CLK115200_reg[0]_i_2_n_0 ,\CLK115200_reg[0]_i_2_n_1 ,\CLK115200_reg[0]_i_2_n_2 ,\CLK115200_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\CLK115200_reg[0]_i_2_n_4 ,\CLK115200_reg[0]_i_2_n_5 ,\CLK115200_reg[0]_i_2_n_6 ,\CLK115200_reg[0]_i_2_n_7 }),
        .S({CLK115200_reg[3:1],\CLK115200[0]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \CLK115200_reg[10] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(\CLK115200_reg[8]_i_1_n_5 ),
        .Q(CLK115200_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \CLK115200_reg[11] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(\CLK115200_reg[8]_i_1_n_4 ),
        .Q(CLK115200_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \CLK115200_reg[12] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(\CLK115200_reg[12]_i_1_n_7 ),
        .Q(CLK115200_reg[12]),
        .R(clear));
  CARRY4 \CLK115200_reg[12]_i_1 
       (.CI(\CLK115200_reg[8]_i_1_n_0 ),
        .CO({\CLK115200_reg[12]_i_1_n_0 ,\CLK115200_reg[12]_i_1_n_1 ,\CLK115200_reg[12]_i_1_n_2 ,\CLK115200_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\CLK115200_reg[12]_i_1_n_4 ,\CLK115200_reg[12]_i_1_n_5 ,\CLK115200_reg[12]_i_1_n_6 ,\CLK115200_reg[12]_i_1_n_7 }),
        .S(CLK115200_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \CLK115200_reg[13] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(\CLK115200_reg[12]_i_1_n_6 ),
        .Q(CLK115200_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \CLK115200_reg[14] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(\CLK115200_reg[12]_i_1_n_5 ),
        .Q(CLK115200_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \CLK115200_reg[15] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(\CLK115200_reg[12]_i_1_n_4 ),
        .Q(CLK115200_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \CLK115200_reg[16] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(\CLK115200_reg[16]_i_1_n_7 ),
        .Q(CLK115200_reg[16]),
        .R(clear));
  CARRY4 \CLK115200_reg[16]_i_1 
       (.CI(\CLK115200_reg[12]_i_1_n_0 ),
        .CO({\CLK115200_reg[16]_i_1_n_0 ,\CLK115200_reg[16]_i_1_n_1 ,\CLK115200_reg[16]_i_1_n_2 ,\CLK115200_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\CLK115200_reg[16]_i_1_n_4 ,\CLK115200_reg[16]_i_1_n_5 ,\CLK115200_reg[16]_i_1_n_6 ,\CLK115200_reg[16]_i_1_n_7 }),
        .S(CLK115200_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \CLK115200_reg[17] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(\CLK115200_reg[16]_i_1_n_6 ),
        .Q(CLK115200_reg[17]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \CLK115200_reg[18] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(\CLK115200_reg[16]_i_1_n_5 ),
        .Q(CLK115200_reg[18]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \CLK115200_reg[19] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(\CLK115200_reg[16]_i_1_n_4 ),
        .Q(CLK115200_reg[19]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \CLK115200_reg[1] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(\CLK115200_reg[0]_i_2_n_6 ),
        .Q(CLK115200_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \CLK115200_reg[20] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(\CLK115200_reg[20]_i_1_n_7 ),
        .Q(CLK115200_reg[20]),
        .R(clear));
  CARRY4 \CLK115200_reg[20]_i_1 
       (.CI(\CLK115200_reg[16]_i_1_n_0 ),
        .CO({\CLK115200_reg[20]_i_1_n_0 ,\CLK115200_reg[20]_i_1_n_1 ,\CLK115200_reg[20]_i_1_n_2 ,\CLK115200_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\CLK115200_reg[20]_i_1_n_4 ,\CLK115200_reg[20]_i_1_n_5 ,\CLK115200_reg[20]_i_1_n_6 ,\CLK115200_reg[20]_i_1_n_7 }),
        .S(CLK115200_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \CLK115200_reg[21] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(\CLK115200_reg[20]_i_1_n_6 ),
        .Q(CLK115200_reg[21]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \CLK115200_reg[22] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(\CLK115200_reg[20]_i_1_n_5 ),
        .Q(CLK115200_reg[22]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \CLK115200_reg[23] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(\CLK115200_reg[20]_i_1_n_4 ),
        .Q(CLK115200_reg[23]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \CLK115200_reg[24] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(\CLK115200_reg[24]_i_1_n_7 ),
        .Q(CLK115200_reg[24]),
        .R(clear));
  CARRY4 \CLK115200_reg[24]_i_1 
       (.CI(\CLK115200_reg[20]_i_1_n_0 ),
        .CO({\CLK115200_reg[24]_i_1_n_0 ,\CLK115200_reg[24]_i_1_n_1 ,\CLK115200_reg[24]_i_1_n_2 ,\CLK115200_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\CLK115200_reg[24]_i_1_n_4 ,\CLK115200_reg[24]_i_1_n_5 ,\CLK115200_reg[24]_i_1_n_6 ,\CLK115200_reg[24]_i_1_n_7 }),
        .S(CLK115200_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \CLK115200_reg[25] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(\CLK115200_reg[24]_i_1_n_6 ),
        .Q(CLK115200_reg[25]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \CLK115200_reg[26] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(\CLK115200_reg[24]_i_1_n_5 ),
        .Q(CLK115200_reg[26]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \CLK115200_reg[27] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(\CLK115200_reg[24]_i_1_n_4 ),
        .Q(CLK115200_reg[27]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \CLK115200_reg[28] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(\CLK115200_reg[28]_i_1_n_7 ),
        .Q(CLK115200_reg[28]),
        .R(clear));
  CARRY4 \CLK115200_reg[28]_i_1 
       (.CI(\CLK115200_reg[24]_i_1_n_0 ),
        .CO({\NLW_CLK115200_reg[28]_i_1_CO_UNCONNECTED [3:2],\CLK115200_reg[28]_i_1_n_2 ,\CLK115200_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_CLK115200_reg[28]_i_1_O_UNCONNECTED [3],\CLK115200_reg[28]_i_1_n_5 ,\CLK115200_reg[28]_i_1_n_6 ,\CLK115200_reg[28]_i_1_n_7 }),
        .S({1'b0,CLK115200_reg[30:28]}));
  FDRE #(
    .INIT(1'b0)) 
    \CLK115200_reg[29] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(\CLK115200_reg[28]_i_1_n_6 ),
        .Q(CLK115200_reg[29]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \CLK115200_reg[2] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(\CLK115200_reg[0]_i_2_n_5 ),
        .Q(CLK115200_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \CLK115200_reg[30] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(\CLK115200_reg[28]_i_1_n_5 ),
        .Q(CLK115200_reg[30]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \CLK115200_reg[3] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(\CLK115200_reg[0]_i_2_n_4 ),
        .Q(CLK115200_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \CLK115200_reg[4] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(\CLK115200_reg[4]_i_1_n_7 ),
        .Q(CLK115200_reg[4]),
        .R(clear));
  CARRY4 \CLK115200_reg[4]_i_1 
       (.CI(\CLK115200_reg[0]_i_2_n_0 ),
        .CO({\CLK115200_reg[4]_i_1_n_0 ,\CLK115200_reg[4]_i_1_n_1 ,\CLK115200_reg[4]_i_1_n_2 ,\CLK115200_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\CLK115200_reg[4]_i_1_n_4 ,\CLK115200_reg[4]_i_1_n_5 ,\CLK115200_reg[4]_i_1_n_6 ,\CLK115200_reg[4]_i_1_n_7 }),
        .S(CLK115200_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \CLK115200_reg[5] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(\CLK115200_reg[4]_i_1_n_6 ),
        .Q(CLK115200_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \CLK115200_reg[6] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(\CLK115200_reg[4]_i_1_n_5 ),
        .Q(CLK115200_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \CLK115200_reg[7] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(\CLK115200_reg[4]_i_1_n_4 ),
        .Q(CLK115200_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \CLK115200_reg[8] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(\CLK115200_reg[8]_i_1_n_7 ),
        .Q(CLK115200_reg[8]),
        .R(clear));
  CARRY4 \CLK115200_reg[8]_i_1 
       (.CI(\CLK115200_reg[4]_i_1_n_0 ),
        .CO({\CLK115200_reg[8]_i_1_n_0 ,\CLK115200_reg[8]_i_1_n_1 ,\CLK115200_reg[8]_i_1_n_2 ,\CLK115200_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\CLK115200_reg[8]_i_1_n_4 ,\CLK115200_reg[8]_i_1_n_5 ,\CLK115200_reg[8]_i_1_n_6 ,\CLK115200_reg[8]_i_1_n_7 }),
        .S(CLK115200_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \CLK115200_reg[9] 
       (.C(CLK100MHz),
        .CE(1'b1),
        .D(\CLK115200_reg[8]_i_1_n_6 ),
        .Q(CLK115200_reg[9]),
        .R(clear));
  (* FSM_ENCODED_STATES = "iSTATE:010000000000,iSTATE0:000000000010,iSTATE1:000000000001,iSTATE2:001000000000,iSTATE3:000010000000,iSTATE4:000100000000,iSTATE5:000001000000,iSTATE6:000000100000,iSTATE7:000000001000,iSTATE8:000000010000,iSTATE9:000000000100,iSTATE10:100000000000" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_onehot_State_reg[0] 
       (.C(CLK115200_D),
        .CE(1'b1),
        .D(Itteration),
        .Q(Test_Char),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:010000000000,iSTATE0:000000000010,iSTATE1:000000000001,iSTATE2:001000000000,iSTATE3:000010000000,iSTATE4:000100000000,iSTATE5:000001000000,iSTATE6:000000100000,iSTATE7:000000001000,iSTATE8:000000010000,iSTATE9:000000000100,iSTATE10:100000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_State_reg[10] 
       (.C(CLK115200_D),
        .CE(1'b1),
        .D(State[9]),
        .Q(State[10]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:010000000000,iSTATE0:000000000010,iSTATE1:000000000001,iSTATE2:001000000000,iSTATE3:000010000000,iSTATE4:000100000000,iSTATE5:000001000000,iSTATE6:000000100000,iSTATE7:000000001000,iSTATE8:000000010000,iSTATE9:000000000100,iSTATE10:100000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_State_reg[11] 
       (.C(CLK115200_D),
        .CE(1'b1),
        .D(State[10]),
        .Q(Itteration),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:010000000000,iSTATE0:000000000010,iSTATE1:000000000001,iSTATE2:001000000000,iSTATE3:000010000000,iSTATE4:000100000000,iSTATE5:000001000000,iSTATE6:000000100000,iSTATE7:000000001000,iSTATE8:000000010000,iSTATE9:000000000100,iSTATE10:100000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_State_reg[1] 
       (.C(CLK115200_D),
        .CE(1'b1),
        .D(Test_Char),
        .Q(State[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:010000000000,iSTATE0:000000000010,iSTATE1:000000000001,iSTATE2:001000000000,iSTATE3:000010000000,iSTATE4:000100000000,iSTATE5:000001000000,iSTATE6:000000100000,iSTATE7:000000001000,iSTATE8:000000010000,iSTATE9:000000000100,iSTATE10:100000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_State_reg[2] 
       (.C(CLK115200_D),
        .CE(1'b1),
        .D(State[1]),
        .Q(State[2]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:010000000000,iSTATE0:000000000010,iSTATE1:000000000001,iSTATE2:001000000000,iSTATE3:000010000000,iSTATE4:000100000000,iSTATE5:000001000000,iSTATE6:000000100000,iSTATE7:000000001000,iSTATE8:000000010000,iSTATE9:000000000100,iSTATE10:100000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_State_reg[3] 
       (.C(CLK115200_D),
        .CE(1'b1),
        .D(State[2]),
        .Q(State[3]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:010000000000,iSTATE0:000000000010,iSTATE1:000000000001,iSTATE2:001000000000,iSTATE3:000010000000,iSTATE4:000100000000,iSTATE5:000001000000,iSTATE6:000000100000,iSTATE7:000000001000,iSTATE8:000000010000,iSTATE9:000000000100,iSTATE10:100000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_State_reg[4] 
       (.C(CLK115200_D),
        .CE(1'b1),
        .D(State[3]),
        .Q(State[4]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:010000000000,iSTATE0:000000000010,iSTATE1:000000000001,iSTATE2:001000000000,iSTATE3:000010000000,iSTATE4:000100000000,iSTATE5:000001000000,iSTATE6:000000100000,iSTATE7:000000001000,iSTATE8:000000010000,iSTATE9:000000000100,iSTATE10:100000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_State_reg[5] 
       (.C(CLK115200_D),
        .CE(1'b1),
        .D(State[4]),
        .Q(State[5]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:010000000000,iSTATE0:000000000010,iSTATE1:000000000001,iSTATE2:001000000000,iSTATE3:000010000000,iSTATE4:000100000000,iSTATE5:000001000000,iSTATE6:000000100000,iSTATE7:000000001000,iSTATE8:000000010000,iSTATE9:000000000100,iSTATE10:100000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_State_reg[6] 
       (.C(CLK115200_D),
        .CE(1'b1),
        .D(State[5]),
        .Q(State[6]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:010000000000,iSTATE0:000000000010,iSTATE1:000000000001,iSTATE2:001000000000,iSTATE3:000010000000,iSTATE4:000100000000,iSTATE5:000001000000,iSTATE6:000000100000,iSTATE7:000000001000,iSTATE8:000000010000,iSTATE9:000000000100,iSTATE10:100000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_State_reg[7] 
       (.C(CLK115200_D),
        .CE(1'b1),
        .D(State[6]),
        .Q(State[7]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:010000000000,iSTATE0:000000000010,iSTATE1:000000000001,iSTATE2:001000000000,iSTATE3:000010000000,iSTATE4:000100000000,iSTATE5:000001000000,iSTATE6:000000100000,iSTATE7:000000001000,iSTATE8:000000010000,iSTATE9:000000000100,iSTATE10:100000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_State_reg[8] 
       (.C(CLK115200_D),
        .CE(1'b1),
        .D(State[7]),
        .Q(State[8]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "iSTATE:010000000000,iSTATE0:000000000010,iSTATE1:000000000001,iSTATE2:001000000000,iSTATE3:000010000000,iSTATE4:000100000000,iSTATE5:000001000000,iSTATE6:000000100000,iSTATE7:000000001000,iSTATE8:000000010000,iSTATE9:000000000100,iSTATE10:100000000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_State_reg[9] 
       (.C(CLK115200_D),
        .CE(1'b1),
        .D(State[8]),
        .Q(State[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    \Itteration[0]_i_2 
       (.I0(Itteration_reg[1]),
        .I1(Itteration_reg[0]),
        .I2(Itteration_reg__0),
        .O(\Itteration[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \Itteration[0]_i_3 
       (.I0(Itteration_reg[0]),
        .I1(Itteration_reg[1]),
        .I2(Itteration_reg__0),
        .O(\Itteration[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \Itteration[0]_i_4 
       (.I0(Itteration_reg__0),
        .I1(Itteration_reg[0]),
        .O(\Itteration[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \Itteration[2]_i_1 
       (.I0(\Itteration_reg[0]_i_1_n_1 ),
        .I1(Itteration),
        .I2(Itteration_reg__0),
        .O(\Itteration[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Itteration_reg[0] 
       (.C(CLK115200_D),
        .CE(Itteration),
        .D(\Itteration_reg[0]_i_1_n_7 ),
        .Q(Itteration_reg[0]),
        .R(1'b0));
  CARRY4 \Itteration_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\NLW_Itteration_reg[0]_i_1_CO_UNCONNECTED [3],\Itteration_reg[0]_i_1_n_1 ,\NLW_Itteration_reg[0]_i_1_CO_UNCONNECTED [1],\Itteration_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\Itteration[0]_i_2_n_0 }),
        .O({\NLW_Itteration_reg[0]_i_1_O_UNCONNECTED [3:2],\Itteration_reg[0]_i_1_n_6 ,\Itteration_reg[0]_i_1_n_7 }),
        .S({1'b0,1'b1,\Itteration[0]_i_3_n_0 ,\Itteration[0]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \Itteration_reg[1] 
       (.C(CLK115200_D),
        .CE(Itteration),
        .D(\Itteration_reg[0]_i_1_n_6 ),
        .Q(Itteration_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Itteration_reg[2] 
       (.C(CLK115200_D),
        .CE(1'b1),
        .D(\Itteration[2]_i_1_n_0 ),
        .Q(Itteration_reg__0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \Test_Char[2]_i_1 
       (.I0(Itteration_reg[1]),
        .I1(Itteration_reg[0]),
        .I2(Itteration_reg__0),
        .O(\Test_Char[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \Test_Char[3]_i_1 
       (.I0(Itteration_reg[1]),
        .I1(Itteration_reg__0),
        .O(\Test_Char[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \Test_Char[4]_i_1 
       (.I0(Itteration_reg[1]),
        .I1(Itteration_reg[0]),
        .I2(Itteration_reg__0),
        .O(\Test_Char[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \Test_Char[5]_i_1 
       (.I0(Itteration_reg[0]),
        .I1(Itteration_reg[1]),
        .I2(Itteration_reg__0),
        .O(\Test_Char[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hBF)) 
    \Test_Char[6]_i_1 
       (.I0(Itteration_reg__0),
        .I1(Itteration_reg[1]),
        .I2(Itteration_reg[0]),
        .O(\Test_Char[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Test_Char_reg[1] 
       (.C(CLK115200_D),
        .CE(Test_Char),
        .D(1'b1),
        .Q(p_6_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Test_Char_reg[2] 
       (.C(CLK115200_D),
        .CE(Test_Char),
        .D(\Test_Char[2]_i_1_n_0 ),
        .Q(p_5_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Test_Char_reg[3] 
       (.C(CLK115200_D),
        .CE(Test_Char),
        .D(\Test_Char[3]_i_1_n_0 ),
        .Q(p_4_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Test_Char_reg[4] 
       (.C(CLK115200_D),
        .CE(Test_Char),
        .D(\Test_Char[4]_i_1_n_0 ),
        .Q(p_3_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Test_Char_reg[5] 
       (.C(CLK115200_D),
        .CE(Test_Char),
        .D(\Test_Char[5]_i_1_n_0 ),
        .Q(p_2_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Test_Char_reg[6] 
       (.C(CLK115200_D),
        .CE(Test_Char),
        .D(\Test_Char[6]_i_1_n_0 ),
        .Q(p_1_in),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    Tx_INST_0
       (.I0(Tx_Internal_reg_n_0),
        .I1(UART_Debug_Enable),
        .I2(UART_0_Tx),
        .O(Tx));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFE0000)) 
    Tx_Internal_i_1
       (.I0(Tx_Internal_i_2_n_0),
        .I1(Tx_Internal_i_3_n_0),
        .I2(State[10]),
        .I3(Test_Char),
        .I4(Tx_Internal),
        .I5(Tx_Internal_reg_n_0),
        .O(Tx_Internal_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    Tx_Internal_i_2
       (.I0(p_1_in),
        .I1(State[8]),
        .I2(p_2_in),
        .I3(State[7]),
        .I4(State[6]),
        .I5(p_3_in),
        .O(Tx_Internal_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    Tx_Internal_i_3
       (.I0(p_4_in),
        .I1(State[5]),
        .I2(p_6_in),
        .I3(State[3]),
        .I4(p_5_in),
        .I5(Tx_Internal_i_5_n_0),
        .O(Tx_Internal_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    Tx_Internal_i_4
       (.I0(State[1]),
        .I1(State[3]),
        .I2(State[4]),
        .I3(State[2]),
        .I4(Tx_Internal_i_6_n_0),
        .O(Tx_Internal));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'hE)) 
    Tx_Internal_i_5
       (.I0(State[2]),
        .I1(State[4]),
        .O(Tx_Internal_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    Tx_Internal_i_6
       (.I0(State[9]),
        .I1(State[10]),
        .I2(State[7]),
        .I3(State[8]),
        .I4(State[6]),
        .I5(State[5]),
        .O(Tx_Internal_i_6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    Tx_Internal_reg
       (.C(CLK115200_D),
        .CE(1'b1),
        .D(Tx_Internal_i_1_n_0),
        .Q(Tx_Internal_reg_n_0),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "9" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "GRAY" *) 
module Zynq_Design_UART_V1_9_0_0_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [8:0]src_in_bin;
  input dest_clk;
  output [8:0]dest_out_bin;

  wire [8:0]async_path;
  wire [7:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [8:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [8:0]\dest_graysync_ff[1] ;
  wire [8:0]dest_out_bin;
  wire [7:0]gray_enc;
  wire src_clk;
  wire [8:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(binval[3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(binval[3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(binval[3]),
        .O(binval[2]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [8]),
        .I4(\dest_graysync_ff[1] [6]),
        .I5(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [7]),
        .I4(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[8]),
        .Q(async_path[8]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "9" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "GRAY" *) 
module Zynq_Design_UART_V1_9_0_0_xpm_cdc_gray__4
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [8:0]src_in_bin;
  input dest_clk;
  output [8:0]dest_out_bin;

  wire [8:0]async_path;
  wire [7:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [8:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [8:0]\dest_graysync_ff[1] ;
  wire [8:0]dest_out_bin;
  wire [7:0]gray_enc;
  wire src_clk;
  wire [8:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(binval[3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(binval[3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(binval[3]),
        .O(binval[2]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [8]),
        .I4(\dest_graysync_ff[1] [6]),
        .I5(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [7]),
        .I4(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[8]),
        .Q(async_path[8]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "9" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "GRAY" *) 
module Zynq_Design_UART_V1_9_0_0_xpm_cdc_gray__5
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [8:0]src_in_bin;
  input dest_clk;
  output [8:0]dest_out_bin;

  wire [8:0]async_path;
  wire [7:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [8:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [8:0]\dest_graysync_ff[1] ;
  wire [8:0]dest_out_bin;
  wire [7:0]gray_enc;
  wire src_clk;
  wire [8:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(binval[3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(binval[3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(binval[3]),
        .O(binval[2]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [8]),
        .I4(\dest_graysync_ff[1] [6]),
        .I5(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [7]),
        .I4(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[8]),
        .Q(async_path[8]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "9" *) (* XPM_MODULE = "TRUE" *) 
(* xpm_cdc = "GRAY" *) 
module Zynq_Design_UART_V1_9_0_0_xpm_cdc_gray__6
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [8:0]src_in_bin;
  input dest_clk;
  output [8:0]dest_out_bin;

  wire [8:0]async_path;
  wire [7:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [8:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [8:0]\dest_graysync_ff[1] ;
  wire [8:0]dest_out_bin;
  wire [7:0]gray_enc;
  wire src_clk;
  wire [8:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(binval[3]),
        .I3(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(binval[3]),
        .I2(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(binval[3]),
        .O(binval[2]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [8]),
        .I4(\dest_graysync_ff[1] [6]),
        .I5(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [7]),
        .I4(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[8]),
        .Q(async_path[8]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SINGLE" *) 
module Zynq_Design_UART_V1_9_0_0_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SINGLE" *) 
module Zynq_Design_UART_V1_9_0_0_xpm_cdc_single__4
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SINGLE" *) 
module Zynq_Design_UART_V1_9_0_0_xpm_cdc_single__5
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SINGLE" *) 
module Zynq_Design_UART_V1_9_0_0_xpm_cdc_single__6
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SYNC_RST" *) 
module Zynq_Design_UART_V1_9_0_0_xpm_cdc_sync_rst
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SYNC_RST" *) 
module Zynq_Design_UART_V1_9_0_0_xpm_cdc_sync_rst__4
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SYNC_RST" *) 
module Zynq_Design_UART_V1_9_0_0_xpm_cdc_sync_rst__5
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* xpm_cdc = "SYNC_RST" *) 
module Zynq_Design_UART_V1_9_0_0_xpm_cdc_sync_rst__6
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module Zynq_Design_UART_V1_9_0_0_blk_mem_gen_generic_cstr
   (dout,
    POR_B,
    wr_clk,
    rd_clk,
    ram_rstram_b,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ,
    din,
    E,
    SS,
    FULL_FB,
    wr_en,
    rd_en,
    out);
  output [7:0]dout;
  output POR_B;
  input wr_clk;
  input rd_clk;
  input ram_rstram_b;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ;
  input [7:0]din;
  input [0:0]E;
  input [0:0]SS;
  input FULL_FB;
  input wr_en;
  input rd_en;
  input out;

  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ;
  wire [0:0]E;
  wire FULL_FB;
  wire POR_B;
  wire [0:0]SS;
  wire [7:0]din;
  wire [7:0]dout;
  wire out;
  wire ram_rstram_b;
  wire rd_clk;
  wire rd_en;
  wire wr_clk;
  wire wr_en;

  Zynq_Design_UART_V1_9_0_0_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ),
        .E(E),
        .FULL_FB(FULL_FB),
        .POR_B(POR_B),
        .SS(SS),
        .din(din),
        .dout(dout),
        .out(out),
        .ram_rstram_b(ram_rstram_b),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module Zynq_Design_UART_V1_9_0_0_blk_mem_gen_generic_cstr_11
   (dout,
    POR_B,
    wr_clk,
    rd_clk,
    ram_rstram_b,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ,
    din,
    E,
    SS,
    FULL_FB,
    wr_en,
    rd_en,
    out);
  output [7:0]dout;
  output POR_B;
  input wr_clk;
  input rd_clk;
  input ram_rstram_b;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ;
  input [7:0]din;
  input [0:0]E;
  input [0:0]SS;
  input FULL_FB;
  input wr_en;
  input rd_en;
  input out;

  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ;
  wire [0:0]E;
  wire FULL_FB;
  wire POR_B;
  wire [0:0]SS;
  wire [7:0]din;
  wire [7:0]dout;
  wire out;
  wire ram_rstram_b;
  wire rd_clk;
  wire rd_en;
  wire wr_clk;
  wire wr_en;

  Zynq_Design_UART_V1_9_0_0_blk_mem_gen_prim_width_12 \ramloop[0].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ),
        .E(E),
        .FULL_FB(FULL_FB),
        .POR_B(POR_B),
        .SS(SS),
        .din(din),
        .dout(dout),
        .out(out),
        .ram_rstram_b(ram_rstram_b),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Zynq_Design_UART_V1_9_0_0_blk_mem_gen_prim_width
   (dout,
    POR_B,
    wr_clk,
    rd_clk,
    ram_rstram_b,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ,
    din,
    E,
    SS,
    FULL_FB,
    wr_en,
    rd_en,
    out);
  output [7:0]dout;
  output POR_B;
  input wr_clk;
  input rd_clk;
  input ram_rstram_b;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ;
  input [7:0]din;
  input [0:0]E;
  input [0:0]SS;
  input FULL_FB;
  input wr_en;
  input rd_en;
  input out;

  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ;
  wire [0:0]E;
  wire ENA_dly_D;
  wire ENB_dly;
  wire ENB_dly_D;
  wire FULL_FB;
  wire POR_B;
  wire [4:0]RSTA_SHFT_REG;
  wire [4:0]RSTB_SHFT_REG;
  wire \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_n_0 ;
  wire \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0 ;
  wire \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3_n_0 ;
  wire [0:0]SS;
  wire [7:0]din;
  wire [7:0]dout;
  wire out;
  wire p_1_out;
  wire p_3_out;
  wire ram_rstram_b;
  wire rd_clk;
  wire rd_en;
  wire wr_clk;
  wire wr_en;

  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_D_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_n_0 ),
        .Q(ENA_dly_D),
        .R(1'b0));
  (* srl_bus_name = "U0/\TOP_BD_i/Transmit_Buffer /U0/\inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop " *) 
  (* srl_name = "U0/\TOP_BD_i/Transmit_Buffer /U0/\inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(wr_clk),
        .D(p_3_out),
        .Q(\SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_i_1 
       (.I0(RSTA_SHFT_REG[0]),
        .I1(RSTA_SHFT_REG[4]),
        .O(p_3_out));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_D_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(ENB_dly),
        .Q(ENB_dly_D),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(POR_B),
        .Q(ENB_dly),
        .S(SS));
  LUT2 #(
    .INIT(4'h6)) 
    \SAFETY_CKT_GEN.POR_B_i_1 
       (.I0(RSTB_SHFT_REG[0]),
        .I1(RSTB_SHFT_REG[4]),
        .O(p_1_out));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.POR_B_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(p_1_out),
        .Q(POR_B),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b1),
        .Q(RSTA_SHFT_REG[0]),
        .R(1'b0));
  (* srl_bus_name = "U0/\TOP_BD_i/Transmit_Buffer /U0/\inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/SAFETY_CKT_GEN.RSTA_SHFT_REG_reg " *) 
  (* srl_name = "U0/\TOP_BD_i/Transmit_Buffer /U0/\inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(wr_clk),
        .D(RSTA_SHFT_REG[0]),
        .Q(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0 ),
        .Q(RSTA_SHFT_REG[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(1'b1),
        .Q(RSTB_SHFT_REG[0]),
        .R(1'b0));
  (* srl_bus_name = "U0/\TOP_BD_i/Transmit_Buffer /U0/\inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/SAFETY_CKT_GEN.RSTB_SHFT_REG_reg " *) 
  (* srl_name = "U0/\TOP_BD_i/Transmit_Buffer /U0/\inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(rd_clk),
        .D(RSTB_SHFT_REG[0]),
        .Q(\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3_n_0 ),
        .Q(RSTB_SHFT_REG[4]),
        .R(1'b0));
  Zynq_Design_UART_V1_9_0_0_blk_mem_gen_prim_wrapper \prim_noinit.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ),
        .E(E),
        .ENA_dly_D(ENA_dly_D),
        .ENB_dly_D(ENB_dly_D),
        .FULL_FB(FULL_FB),
        .SS(SS),
        .din(din),
        .dout(dout),
        .out(out),
        .ram_rstram_b(ram_rstram_b),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module Zynq_Design_UART_V1_9_0_0_blk_mem_gen_prim_width_12
   (dout,
    POR_B,
    wr_clk,
    rd_clk,
    ram_rstram_b,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ,
    din,
    E,
    SS,
    FULL_FB,
    wr_en,
    rd_en,
    out);
  output [7:0]dout;
  output POR_B;
  input wr_clk;
  input rd_clk;
  input ram_rstram_b;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ;
  input [7:0]din;
  input [0:0]E;
  input [0:0]SS;
  input FULL_FB;
  input wr_en;
  input rd_en;
  input out;

  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ;
  wire [0:0]E;
  wire ENA_dly_D;
  wire ENB_dly;
  wire ENB_dly_D;
  wire FULL_FB;
  wire POR_B;
  wire [4:0]RSTA_SHFT_REG;
  wire [4:0]RSTB_SHFT_REG;
  wire \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_n_0 ;
  wire \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0 ;
  wire \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3_n_0 ;
  wire [0:0]SS;
  wire [7:0]din;
  wire [7:0]dout;
  wire out;
  wire p_1_out;
  wire p_3_out;
  wire ram_rstram_b;
  wire rd_clk;
  wire rd_en;
  wire wr_clk;
  wire wr_en;

  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_D_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_n_0 ),
        .Q(ENA_dly_D),
        .R(1'b0));
  (* srl_bus_name = "U0/\TOP_BD_i/Receive_Buffer /U0/\inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop " *) 
  (* srl_name = "U0/\TOP_BD_i/Receive_Buffer /U0/\inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(wr_clk),
        .D(p_3_out),
        .Q(\SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_i_1 
       (.I0(RSTA_SHFT_REG[0]),
        .I1(RSTA_SHFT_REG[4]),
        .O(p_3_out));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_D_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(ENB_dly),
        .Q(ENB_dly_D),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(POR_B),
        .Q(ENB_dly),
        .S(SS));
  LUT2 #(
    .INIT(4'h6)) 
    \SAFETY_CKT_GEN.POR_B_i_1 
       (.I0(RSTB_SHFT_REG[0]),
        .I1(RSTB_SHFT_REG[4]),
        .O(p_1_out));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.POR_B_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(p_1_out),
        .Q(POR_B),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b1),
        .Q(RSTA_SHFT_REG[0]),
        .R(1'b0));
  (* srl_bus_name = "U0/\TOP_BD_i/Receive_Buffer /U0/\inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/SAFETY_CKT_GEN.RSTA_SHFT_REG_reg " *) 
  (* srl_name = "U0/\TOP_BD_i/Receive_Buffer /U0/\inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(wr_clk),
        .D(RSTA_SHFT_REG[0]),
        .Q(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0 ),
        .Q(RSTA_SHFT_REG[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(1'b1),
        .Q(RSTB_SHFT_REG[0]),
        .R(1'b0));
  (* srl_bus_name = "U0/\TOP_BD_i/Receive_Buffer /U0/\inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/SAFETY_CKT_GEN.RSTB_SHFT_REG_reg " *) 
  (* srl_name = "U0/\TOP_BD_i/Receive_Buffer /U0/\inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(rd_clk),
        .D(RSTB_SHFT_REG[0]),
        .Q(\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[4] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3_n_0 ),
        .Q(RSTB_SHFT_REG[4]),
        .R(1'b0));
  Zynq_Design_UART_V1_9_0_0_blk_mem_gen_prim_wrapper_13 \prim_noinit.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ),
        .E(E),
        .ENA_dly_D(ENA_dly_D),
        .ENB_dly_D(ENB_dly_D),
        .FULL_FB(FULL_FB),
        .SS(SS),
        .din(din),
        .dout(dout),
        .out(out),
        .ram_rstram_b(ram_rstram_b),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module Zynq_Design_UART_V1_9_0_0_blk_mem_gen_prim_wrapper
   (dout,
    rd_clk,
    wr_clk,
    ram_rstram_b,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 ,
    din,
    E,
    ENA_dly_D,
    FULL_FB,
    wr_en,
    ENB_dly_D,
    SS,
    rd_en,
    out);
  output [7:0]dout;
  input rd_clk;
  input wr_clk;
  input ram_rstram_b;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 ;
  input [7:0]din;
  input [0:0]E;
  input ENA_dly_D;
  input FULL_FB;
  input wr_en;
  input ENB_dly_D;
  input [0:0]SS;
  input rd_en;
  input out;

  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ;
  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_10 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_11 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_12 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_13 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_16 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_17 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_18 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_19 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_2 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_20 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_21 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_24 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_25 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_26 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_27 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_28 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_29 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_3 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_32 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_33 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_34 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_35 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_4 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_5 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_8 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_9 ;
  wire [0:0]E;
  wire ENA_I;
  wire ENA_dly_D;
  wire ENB_I;
  wire ENB_dly_D;
  wire FULL_FB;
  wire [0:0]SS;
  wire [7:0]din;
  wire [7:0]dout;
  wire out;
  wire ram_rstram_b;
  wire rd_clk;
  wire rd_en;
  wire wr_clk;
  wire wr_en;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(36)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram 
       (.ADDRARDADDR({\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 ,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(rd_clk),
        .CLKBWRCLK(wr_clk),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din[3:2],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din[1:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din[7:6],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din[5:4]}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_1 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_2 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_3 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_4 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_5 ,dout[3:2],\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_8 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_9 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_10 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_11 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_12 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_13 ,dout[1:0]}),
        .DOBDO({\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_16 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_17 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_18 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_19 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_20 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_21 ,dout[7:6],\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_24 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_25 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_26 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_27 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_28 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_29 ,dout[5:4]}),
        .DOPADOP({\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_32 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_33 }),
        .DOPBDOP({\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_34 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_35 }),
        .ENARDEN(ENB_I),
        .ENBWREN(ENA_I),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(ram_rstram_b),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({E,E,E,E}));
  LUT4 #(
    .INIT(16'hEEFE)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_1 
       (.I0(ENB_dly_D),
        .I1(SS),
        .I2(rd_en),
        .I3(out),
        .O(ENB_I));
  LUT3 #(
    .INIT(8'hBA)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2 
       (.I0(ENA_dly_D),
        .I1(FULL_FB),
        .I2(wr_en),
        .O(ENA_I));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module Zynq_Design_UART_V1_9_0_0_blk_mem_gen_prim_wrapper_13
   (dout,
    rd_clk,
    wr_clk,
    ram_rstram_b,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 ,
    din,
    E,
    ENA_dly_D,
    FULL_FB,
    wr_en,
    ENB_dly_D,
    SS,
    rd_en,
    out);
  output [7:0]dout;
  input rd_clk;
  input wr_clk;
  input ram_rstram_b;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 ;
  input [7:0]din;
  input [0:0]E;
  input ENA_dly_D;
  input FULL_FB;
  input wr_en;
  input ENB_dly_D;
  input [0:0]SS;
  input rd_en;
  input out;

  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ;
  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_10 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_11 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_12 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_13 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_16 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_17 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_18 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_19 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_2 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_20 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_21 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_24 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_25 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_26 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_27 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_28 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_29 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_3 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_32 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_33 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_34 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_35 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_4 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_5 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_8 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_9 ;
  wire [0:0]E;
  wire ENA_I;
  wire ENA_dly_D;
  wire ENB_I;
  wire ENB_dly_D;
  wire FULL_FB;
  wire [0:0]SS;
  wire [7:0]din;
  wire [7:0]dout;
  wire out;
  wire ram_rstram_b;
  wire rd_clk;
  wire rd_en;
  wire wr_clk;
  wire wr_en;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(36)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram 
       (.ADDRARDADDR({\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1 ,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(rd_clk),
        .CLKBWRCLK(wr_clk),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din[3:2],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din[1:0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din[7:6],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din[5:4]}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_1 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_2 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_3 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_4 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_5 ,dout[3:2],\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_8 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_9 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_10 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_11 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_12 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_13 ,dout[1:0]}),
        .DOBDO({\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_16 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_17 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_18 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_19 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_20 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_21 ,dout[7:6],\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_24 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_25 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_26 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_27 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_28 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_29 ,dout[5:4]}),
        .DOPADOP({\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_32 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_33 }),
        .DOPBDOP({\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_34 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_35 }),
        .ENARDEN(ENB_I),
        .ENBWREN(ENA_I),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(ram_rstram_b),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({E,E,E,E}));
  LUT4 #(
    .INIT(16'hEEFE)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_1 
       (.I0(ENB_dly_D),
        .I1(SS),
        .I2(rd_en),
        .I3(out),
        .O(ENB_I));
  LUT3 #(
    .INIT(8'hBA)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2 
       (.I0(ENA_dly_D),
        .I1(FULL_FB),
        .I2(wr_en),
        .O(ENA_I));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module Zynq_Design_UART_V1_9_0_0_blk_mem_gen_top
   (dout,
    POR_B,
    wr_clk,
    rd_clk,
    ram_rstram_b,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ,
    din,
    E,
    SS,
    FULL_FB,
    wr_en,
    rd_en,
    out);
  output [7:0]dout;
  output POR_B;
  input wr_clk;
  input rd_clk;
  input ram_rstram_b;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ;
  input [7:0]din;
  input [0:0]E;
  input [0:0]SS;
  input FULL_FB;
  input wr_en;
  input rd_en;
  input out;

  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ;
  wire [0:0]E;
  wire FULL_FB;
  wire POR_B;
  wire [0:0]SS;
  wire [7:0]din;
  wire [7:0]dout;
  wire out;
  wire ram_rstram_b;
  wire rd_clk;
  wire rd_en;
  wire wr_clk;
  wire wr_en;

  Zynq_Design_UART_V1_9_0_0_blk_mem_gen_generic_cstr \valid.cstr 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ),
        .E(E),
        .FULL_FB(FULL_FB),
        .POR_B(POR_B),
        .SS(SS),
        .din(din),
        .dout(dout),
        .out(out),
        .ram_rstram_b(ram_rstram_b),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module Zynq_Design_UART_V1_9_0_0_blk_mem_gen_top_10
   (dout,
    POR_B,
    wr_clk,
    rd_clk,
    ram_rstram_b,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ,
    din,
    E,
    SS,
    FULL_FB,
    wr_en,
    rd_en,
    out);
  output [7:0]dout;
  output POR_B;
  input wr_clk;
  input rd_clk;
  input ram_rstram_b;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ;
  input [7:0]din;
  input [0:0]E;
  input [0:0]SS;
  input FULL_FB;
  input wr_en;
  input rd_en;
  input out;

  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ;
  wire [0:0]E;
  wire FULL_FB;
  wire POR_B;
  wire [0:0]SS;
  wire [7:0]din;
  wire [7:0]dout;
  wire out;
  wire ram_rstram_b;
  wire rd_clk;
  wire rd_en;
  wire wr_clk;
  wire wr_en;

  Zynq_Design_UART_V1_9_0_0_blk_mem_gen_generic_cstr_11 \valid.cstr 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ),
        .E(E),
        .FULL_FB(FULL_FB),
        .POR_B(POR_B),
        .SS(SS),
        .din(din),
        .dout(dout),
        .out(out),
        .ram_rstram_b(ram_rstram_b),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_3" *) 
module Zynq_Design_UART_V1_9_0_0_blk_mem_gen_v8_4_3
   (dout,
    POR_B,
    wr_clk,
    rd_clk,
    ram_rstram_b,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ,
    din,
    E,
    SS,
    FULL_FB,
    wr_en,
    rd_en,
    out);
  output [7:0]dout;
  output POR_B;
  input wr_clk;
  input rd_clk;
  input ram_rstram_b;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ;
  input [7:0]din;
  input [0:0]E;
  input [0:0]SS;
  input FULL_FB;
  input wr_en;
  input rd_en;
  input out;

  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ;
  wire [0:0]E;
  wire FULL_FB;
  wire POR_B;
  wire [0:0]SS;
  wire [7:0]din;
  wire [7:0]dout;
  wire out;
  wire ram_rstram_b;
  wire rd_clk;
  wire rd_en;
  wire wr_clk;
  wire wr_en;

  Zynq_Design_UART_V1_9_0_0_blk_mem_gen_v8_4_3_synth inst_blk_mem_gen
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ),
        .E(E),
        .FULL_FB(FULL_FB),
        .POR_B(POR_B),
        .SS(SS),
        .din(din),
        .dout(dout),
        .out(out),
        .ram_rstram_b(ram_rstram_b),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_3" *) 
module Zynq_Design_UART_V1_9_0_0_blk_mem_gen_v8_4_3_8
   (dout,
    POR_B,
    wr_clk,
    rd_clk,
    ram_rstram_b,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ,
    din,
    E,
    SS,
    FULL_FB,
    wr_en,
    rd_en,
    out);
  output [7:0]dout;
  output POR_B;
  input wr_clk;
  input rd_clk;
  input ram_rstram_b;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ;
  input [7:0]din;
  input [0:0]E;
  input [0:0]SS;
  input FULL_FB;
  input wr_en;
  input rd_en;
  input out;

  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ;
  wire [0:0]E;
  wire FULL_FB;
  wire POR_B;
  wire [0:0]SS;
  wire [7:0]din;
  wire [7:0]dout;
  wire out;
  wire ram_rstram_b;
  wire rd_clk;
  wire rd_en;
  wire wr_clk;
  wire wr_en;

  Zynq_Design_UART_V1_9_0_0_blk_mem_gen_v8_4_3_synth_9 inst_blk_mem_gen
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ),
        .E(E),
        .FULL_FB(FULL_FB),
        .POR_B(POR_B),
        .SS(SS),
        .din(din),
        .dout(dout),
        .out(out),
        .ram_rstram_b(ram_rstram_b),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_3_synth" *) 
module Zynq_Design_UART_V1_9_0_0_blk_mem_gen_v8_4_3_synth
   (dout,
    POR_B,
    wr_clk,
    rd_clk,
    ram_rstram_b,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ,
    din,
    E,
    SS,
    FULL_FB,
    wr_en,
    rd_en,
    out);
  output [7:0]dout;
  output POR_B;
  input wr_clk;
  input rd_clk;
  input ram_rstram_b;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ;
  input [7:0]din;
  input [0:0]E;
  input [0:0]SS;
  input FULL_FB;
  input wr_en;
  input rd_en;
  input out;

  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ;
  wire [0:0]E;
  wire FULL_FB;
  wire POR_B;
  wire [0:0]SS;
  wire [7:0]din;
  wire [7:0]dout;
  wire out;
  wire ram_rstram_b;
  wire rd_clk;
  wire rd_en;
  wire wr_clk;
  wire wr_en;

  Zynq_Design_UART_V1_9_0_0_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ),
        .E(E),
        .FULL_FB(FULL_FB),
        .POR_B(POR_B),
        .SS(SS),
        .din(din),
        .dout(dout),
        .out(out),
        .ram_rstram_b(ram_rstram_b),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_3_synth" *) 
module Zynq_Design_UART_V1_9_0_0_blk_mem_gen_v8_4_3_synth_9
   (dout,
    POR_B,
    wr_clk,
    rd_clk,
    ram_rstram_b,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ,
    din,
    E,
    SS,
    FULL_FB,
    wr_en,
    rd_en,
    out);
  output [7:0]dout;
  output POR_B;
  input wr_clk;
  input rd_clk;
  input ram_rstram_b;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ;
  input [7:0]din;
  input [0:0]E;
  input [0:0]SS;
  input FULL_FB;
  input wr_en;
  input rd_en;
  input out;

  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ;
  wire [0:0]E;
  wire FULL_FB;
  wire POR_B;
  wire [0:0]SS;
  wire [7:0]din;
  wire [7:0]dout;
  wire out;
  wire ram_rstram_b;
  wire rd_clk;
  wire rd_en;
  wire wr_clk;
  wire wr_en;

  Zynq_Design_UART_V1_9_0_0_blk_mem_gen_top_10 \gnbram.gnativebmg.native_blk_mem_gen 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ),
        .E(E),
        .FULL_FB(FULL_FB),
        .POR_B(POR_B),
        .SS(SS),
        .din(din),
        .dout(dout),
        .out(out),
        .ram_rstram_b(ram_rstram_b),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "clk_x_pntrs" *) 
module Zynq_Design_UART_V1_9_0_0_clk_x_pntrs
   (v1_reg,
    RD_PNTR_WR,
    v1_reg_0,
    v1_reg_1,
    v1_reg_2,
    WR_PNTR_RD,
    v1_reg_3,
    v1_reg_4,
    Q,
    \gmux.gm[3].gms.ms ,
    \gmux.gm[3].gms.ms_0 ,
    \src_gray_ff_reg[8] ,
    \gmux.gm[4].gms.ms ,
    \gmux.gm[4].gms.ms_0 ,
    wr_clk,
    \src_gray_ff_reg[8]_0 ,
    rd_clk);
  output [3:0]v1_reg;
  output [0:0]RD_PNTR_WR;
  output [3:0]v1_reg_0;
  output [3:0]v1_reg_1;
  output [0:0]v1_reg_2;
  output [7:0]WR_PNTR_RD;
  output [0:0]v1_reg_3;
  output [0:0]v1_reg_4;
  input [7:0]Q;
  input [7:0]\gmux.gm[3].gms.ms ;
  input [7:0]\gmux.gm[3].gms.ms_0 ;
  input [8:0]\src_gray_ff_reg[8] ;
  input [0:0]\gmux.gm[4].gms.ms ;
  input [0:0]\gmux.gm[4].gms.ms_0 ;
  input wr_clk;
  input [8:0]\src_gray_ff_reg[8]_0 ;
  input rd_clk;

  wire [7:0]Q;
  wire [0:0]RD_PNTR_WR;
  wire [7:0]WR_PNTR_RD;
  wire [7:0]\gmux.gm[3].gms.ms ;
  wire [7:0]\gmux.gm[3].gms.ms_0 ;
  wire [0:0]\gmux.gm[4].gms.ms ;
  wire [0:0]\gmux.gm[4].gms.ms_0 ;
  wire [8:8]p_24_out;
  wire [7:0]p_25_out;
  wire rd_clk;
  wire [8:0]\src_gray_ff_reg[8] ;
  wire [8:0]\src_gray_ff_reg[8]_0 ;
  wire [3:0]v1_reg;
  wire [3:0]v1_reg_0;
  wire [3:0]v1_reg_1;
  wire [0:0]v1_reg_2;
  wire [0:0]v1_reg_3;
  wire [0:0]v1_reg_4;
  wire wr_clk;

  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1 
       (.I0(p_25_out[0]),
        .I1(Q[0]),
        .I2(p_25_out[1]),
        .I3(Q[1]),
        .O(v1_reg[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1__0 
       (.I0(p_25_out[0]),
        .I1(\gmux.gm[3].gms.ms [0]),
        .I2(p_25_out[1]),
        .I3(\gmux.gm[3].gms.ms [1]),
        .O(v1_reg_0[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1__1 
       (.I0(p_25_out[0]),
        .I1(\gmux.gm[3].gms.ms_0 [0]),
        .I2(p_25_out[1]),
        .I3(\gmux.gm[3].gms.ms_0 [1]),
        .O(v1_reg_1[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1 
       (.I0(p_25_out[2]),
        .I1(Q[2]),
        .I2(p_25_out[3]),
        .I3(Q[3]),
        .O(v1_reg[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1__0 
       (.I0(p_25_out[2]),
        .I1(\gmux.gm[3].gms.ms [2]),
        .I2(p_25_out[3]),
        .I3(\gmux.gm[3].gms.ms [3]),
        .O(v1_reg_0[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1__1 
       (.I0(p_25_out[2]),
        .I1(\gmux.gm[3].gms.ms_0 [2]),
        .I2(p_25_out[3]),
        .I3(\gmux.gm[3].gms.ms_0 [3]),
        .O(v1_reg_1[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1 
       (.I0(p_25_out[4]),
        .I1(Q[4]),
        .I2(p_25_out[5]),
        .I3(Q[5]),
        .O(v1_reg[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1__0 
       (.I0(p_25_out[4]),
        .I1(\gmux.gm[3].gms.ms [4]),
        .I2(p_25_out[5]),
        .I3(\gmux.gm[3].gms.ms [5]),
        .O(v1_reg_0[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1__1 
       (.I0(p_25_out[4]),
        .I1(\gmux.gm[3].gms.ms_0 [4]),
        .I2(p_25_out[5]),
        .I3(\gmux.gm[3].gms.ms_0 [5]),
        .O(v1_reg_1[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1 
       (.I0(p_25_out[6]),
        .I1(Q[6]),
        .I2(p_25_out[7]),
        .I3(Q[7]),
        .O(v1_reg[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1__0 
       (.I0(p_25_out[6]),
        .I1(\gmux.gm[3].gms.ms [6]),
        .I2(p_25_out[7]),
        .I3(\gmux.gm[3].gms.ms [7]),
        .O(v1_reg_0[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1__1 
       (.I0(p_25_out[6]),
        .I1(\gmux.gm[3].gms.ms_0 [6]),
        .I2(p_25_out[7]),
        .I3(\gmux.gm[3].gms.ms_0 [7]),
        .O(v1_reg_1[3]));
  LUT2 #(
    .INIT(4'h9)) 
    \gmux.gm[4].gms.ms_i_1__2 
       (.I0(p_24_out),
        .I1(\src_gray_ff_reg[8] [8]),
        .O(v1_reg_2));
  LUT2 #(
    .INIT(4'h9)) 
    \gmux.gm[4].gms.ms_i_1__3 
       (.I0(p_24_out),
        .I1(\gmux.gm[4].gms.ms ),
        .O(v1_reg_3));
  LUT2 #(
    .INIT(4'h9)) 
    \gmux.gm[4].gms.ms_i_1__4 
       (.I0(p_24_out),
        .I1(\gmux.gm[4].gms.ms_0 ),
        .O(v1_reg_4));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* REG_OUTPUT = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "9" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  Zynq_Design_UART_V1_9_0_0_xpm_cdc_gray rd_pntr_cdc_inst
       (.dest_clk(wr_clk),
        .dest_out_bin({RD_PNTR_WR,p_25_out}),
        .src_clk(rd_clk),
        .src_in_bin(\src_gray_ff_reg[8] ));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* REG_OUTPUT = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "9" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  Zynq_Design_UART_V1_9_0_0_xpm_cdc_gray__6 wr_pntr_cdc_inst
       (.dest_clk(rd_clk),
        .dest_out_bin({p_24_out,WR_PNTR_RD}),
        .src_clk(wr_clk),
        .src_in_bin(\src_gray_ff_reg[8]_0 ));
endmodule

(* ORIG_REF_NAME = "clk_x_pntrs" *) 
module Zynq_Design_UART_V1_9_0_0_clk_x_pntrs__xdcDup__1
   (v1_reg,
    RD_PNTR_WR,
    v1_reg_0,
    v1_reg_1,
    v1_reg_2,
    WR_PNTR_RD,
    v1_reg_3,
    v1_reg_4,
    Q,
    \gmux.gm[3].gms.ms ,
    \gmux.gm[3].gms.ms_0 ,
    \src_gray_ff_reg[8] ,
    \gmux.gm[4].gms.ms ,
    \gmux.gm[4].gms.ms_0 ,
    wr_clk,
    \src_gray_ff_reg[8]_0 ,
    rd_clk);
  output [3:0]v1_reg;
  output [0:0]RD_PNTR_WR;
  output [3:0]v1_reg_0;
  output [3:0]v1_reg_1;
  output [0:0]v1_reg_2;
  output [7:0]WR_PNTR_RD;
  output [0:0]v1_reg_3;
  output [0:0]v1_reg_4;
  input [7:0]Q;
  input [7:0]\gmux.gm[3].gms.ms ;
  input [7:0]\gmux.gm[3].gms.ms_0 ;
  input [8:0]\src_gray_ff_reg[8] ;
  input [0:0]\gmux.gm[4].gms.ms ;
  input [0:0]\gmux.gm[4].gms.ms_0 ;
  input wr_clk;
  input [8:0]\src_gray_ff_reg[8]_0 ;
  input rd_clk;

  wire [7:0]Q;
  wire [0:0]RD_PNTR_WR;
  wire [7:0]WR_PNTR_RD;
  wire [7:0]\gmux.gm[3].gms.ms ;
  wire [7:0]\gmux.gm[3].gms.ms_0 ;
  wire [0:0]\gmux.gm[4].gms.ms ;
  wire [0:0]\gmux.gm[4].gms.ms_0 ;
  wire [8:8]p_24_out;
  wire [7:0]p_25_out;
  wire rd_clk;
  wire [8:0]\src_gray_ff_reg[8] ;
  wire [8:0]\src_gray_ff_reg[8]_0 ;
  wire [3:0]v1_reg;
  wire [3:0]v1_reg_0;
  wire [3:0]v1_reg_1;
  wire [0:0]v1_reg_2;
  wire [0:0]v1_reg_3;
  wire [0:0]v1_reg_4;
  wire wr_clk;

  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1 
       (.I0(p_25_out[0]),
        .I1(Q[0]),
        .I2(p_25_out[1]),
        .I3(Q[1]),
        .O(v1_reg[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1__0 
       (.I0(p_25_out[0]),
        .I1(\gmux.gm[3].gms.ms [0]),
        .I2(p_25_out[1]),
        .I3(\gmux.gm[3].gms.ms [1]),
        .O(v1_reg_0[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1__1 
       (.I0(p_25_out[0]),
        .I1(\gmux.gm[3].gms.ms_0 [0]),
        .I2(p_25_out[1]),
        .I3(\gmux.gm[3].gms.ms_0 [1]),
        .O(v1_reg_1[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1 
       (.I0(p_25_out[2]),
        .I1(Q[2]),
        .I2(p_25_out[3]),
        .I3(Q[3]),
        .O(v1_reg[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1__0 
       (.I0(p_25_out[2]),
        .I1(\gmux.gm[3].gms.ms [2]),
        .I2(p_25_out[3]),
        .I3(\gmux.gm[3].gms.ms [3]),
        .O(v1_reg_0[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1__1 
       (.I0(p_25_out[2]),
        .I1(\gmux.gm[3].gms.ms_0 [2]),
        .I2(p_25_out[3]),
        .I3(\gmux.gm[3].gms.ms_0 [3]),
        .O(v1_reg_1[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1 
       (.I0(p_25_out[4]),
        .I1(Q[4]),
        .I2(p_25_out[5]),
        .I3(Q[5]),
        .O(v1_reg[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1__0 
       (.I0(p_25_out[4]),
        .I1(\gmux.gm[3].gms.ms [4]),
        .I2(p_25_out[5]),
        .I3(\gmux.gm[3].gms.ms [5]),
        .O(v1_reg_0[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1__1 
       (.I0(p_25_out[4]),
        .I1(\gmux.gm[3].gms.ms_0 [4]),
        .I2(p_25_out[5]),
        .I3(\gmux.gm[3].gms.ms_0 [5]),
        .O(v1_reg_1[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1 
       (.I0(p_25_out[6]),
        .I1(Q[6]),
        .I2(p_25_out[7]),
        .I3(Q[7]),
        .O(v1_reg[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1__0 
       (.I0(p_25_out[6]),
        .I1(\gmux.gm[3].gms.ms [6]),
        .I2(p_25_out[7]),
        .I3(\gmux.gm[3].gms.ms [7]),
        .O(v1_reg_0[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1__1 
       (.I0(p_25_out[6]),
        .I1(\gmux.gm[3].gms.ms_0 [6]),
        .I2(p_25_out[7]),
        .I3(\gmux.gm[3].gms.ms_0 [7]),
        .O(v1_reg_1[3]));
  LUT2 #(
    .INIT(4'h9)) 
    \gmux.gm[4].gms.ms_i_1__2 
       (.I0(p_24_out),
        .I1(\src_gray_ff_reg[8] [8]),
        .O(v1_reg_2));
  LUT2 #(
    .INIT(4'h9)) 
    \gmux.gm[4].gms.ms_i_1__3 
       (.I0(p_24_out),
        .I1(\gmux.gm[4].gms.ms ),
        .O(v1_reg_3));
  LUT2 #(
    .INIT(4'h9)) 
    \gmux.gm[4].gms.ms_i_1__4 
       (.I0(p_24_out),
        .I1(\gmux.gm[4].gms.ms_0 ),
        .O(v1_reg_4));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* REG_OUTPUT = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "9" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  Zynq_Design_UART_V1_9_0_0_xpm_cdc_gray__5 rd_pntr_cdc_inst
       (.dest_clk(wr_clk),
        .dest_out_bin({RD_PNTR_WR,p_25_out}),
        .src_clk(rd_clk),
        .src_in_bin(\src_gray_ff_reg[8] ));
  (* DEST_SYNC_FF = "2" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* REG_OUTPUT = "1" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* WIDTH = "9" *) 
  (* XPM_CDC = "GRAY" *) 
  (* XPM_MODULE = "TRUE" *) 
  Zynq_Design_UART_V1_9_0_0_xpm_cdc_gray__4 wr_pntr_cdc_inst
       (.dest_clk(rd_clk),
        .dest_out_bin({p_24_out,WR_PNTR_RD}),
        .src_clk(wr_clk),
        .src_in_bin(\src_gray_ff_reg[8]_0 ));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module Zynq_Design_UART_V1_9_0_0_compare
   (comp1,
    \gmux.gm[4].gms.ms_0 ,
    v1_reg);
  output comp1;
  input [3:0]\gmux.gm[4].gms.ms_0 ;
  input [0:0]v1_reg;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire comp1;
  wire [3:0]\gmux.gm[4].gms.ms_0 ;
  wire [0:0]v1_reg;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(\gmux.gm[4].gms.ms_0 ));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp1}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],v1_reg}));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module Zynq_Design_UART_V1_9_0_0_compare_0
   (comp2,
    ram_full_fb_i_reg,
    \gmux.gm[4].gms.ms_0 ,
    v1_reg_0,
    out,
    wr_en,
    comp1,
    ram_full_fb_i_reg_0);
  output comp2;
  output ram_full_fb_i_reg;
  input [3:0]\gmux.gm[4].gms.ms_0 ;
  input [0:0]v1_reg_0;
  input out;
  input wr_en;
  input comp1;
  input ram_full_fb_i_reg_0;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire comp1;
  wire comp2;
  wire [3:0]\gmux.gm[4].gms.ms_0 ;
  wire out;
  wire ram_full_fb_i_reg;
  wire ram_full_fb_i_reg_0;
  wire [0:0]v1_reg_0;
  wire wr_en;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(\gmux.gm[4].gms.ms_0 ));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp2}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],v1_reg_0}));
  LUT5 #(
    .INIT(32'h0000FF20)) 
    ram_full_i_i_1
       (.I0(comp2),
        .I1(out),
        .I2(wr_en),
        .I3(comp1),
        .I4(ram_full_fb_i_reg_0),
        .O(ram_full_fb_i_reg));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module Zynq_Design_UART_V1_9_0_0_compare_1
   (comp3,
    \gmux.gm[4].gms.ms_0 ,
    v1_reg_1);
  output comp3;
  input [3:0]\gmux.gm[4].gms.ms_0 ;
  input [0:0]v1_reg_1;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire comp3;
  wire [3:0]\gmux.gm[4].gms.ms_0 ;
  wire [0:0]v1_reg_1;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(\gmux.gm[4].gms.ms_0 ));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp3}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],v1_reg_1}));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module Zynq_Design_UART_V1_9_0_0_compare_16
   (comp1,
    \gmux.gm[4].gms.ms_0 ,
    v1_reg);
  output comp1;
  input [3:0]\gmux.gm[4].gms.ms_0 ;
  input [0:0]v1_reg;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire comp1;
  wire [3:0]\gmux.gm[4].gms.ms_0 ;
  wire [0:0]v1_reg;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(\gmux.gm[4].gms.ms_0 ));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp1}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],v1_reg}));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module Zynq_Design_UART_V1_9_0_0_compare_17
   (comp2,
    ram_full_fb_i_reg,
    \gmux.gm[4].gms.ms_0 ,
    v1_reg_0,
    out,
    wr_en,
    comp1,
    ram_full_fb_i_reg_0);
  output comp2;
  output ram_full_fb_i_reg;
  input [3:0]\gmux.gm[4].gms.ms_0 ;
  input [0:0]v1_reg_0;
  input out;
  input wr_en;
  input comp1;
  input ram_full_fb_i_reg_0;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire comp1;
  wire comp2;
  wire [3:0]\gmux.gm[4].gms.ms_0 ;
  wire out;
  wire ram_full_fb_i_reg;
  wire ram_full_fb_i_reg_0;
  wire [0:0]v1_reg_0;
  wire wr_en;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(\gmux.gm[4].gms.ms_0 ));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp2}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],v1_reg_0}));
  LUT5 #(
    .INIT(32'h0000FF20)) 
    ram_full_i_i_1
       (.I0(comp2),
        .I1(out),
        .I2(wr_en),
        .I3(comp1),
        .I4(ram_full_fb_i_reg_0),
        .O(ram_full_fb_i_reg));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module Zynq_Design_UART_V1_9_0_0_compare_18
   (comp3,
    \gmux.gm[4].gms.ms_0 ,
    v1_reg_1);
  output comp3;
  input [3:0]\gmux.gm[4].gms.ms_0 ;
  input [0:0]v1_reg_1;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire comp3;
  wire [3:0]\gmux.gm[4].gms.ms_0 ;
  wire [0:0]v1_reg_1;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(\gmux.gm[4].gms.ms_0 ));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp3}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],v1_reg_1}));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module Zynq_Design_UART_V1_9_0_0_compare_2
   (ram_empty_fb_i0__1,
    v1_reg,
    ram_empty_fb_i_reg,
    rd_en,
    out,
    comp1);
  output ram_empty_fb_i0__1;
  input [3:0]v1_reg;
  input [0:0]ram_empty_fb_i_reg;
  input rd_en;
  input out;
  input comp1;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire comp0;
  wire comp1;
  wire out;
  wire ram_empty_fb_i0__1;
  wire [0:0]ram_empty_fb_i_reg;
  wire rd_en;
  wire [3:0]v1_reg;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp0}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],ram_empty_fb_i_reg}));
  LUT4 #(
    .INIT(16'hAEAA)) 
    ram_empty_i_i_1
       (.I0(comp0),
        .I1(rd_en),
        .I2(out),
        .I3(comp1),
        .O(ram_empty_fb_i0__1));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module Zynq_Design_UART_V1_9_0_0_compare_21
   (ram_empty_fb_i0__1,
    v1_reg,
    ram_empty_fb_i_reg,
    rd_en,
    out,
    comp1);
  output ram_empty_fb_i0__1;
  input [3:0]v1_reg;
  input [0:0]ram_empty_fb_i_reg;
  input rd_en;
  input out;
  input comp1;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire comp0;
  wire comp1;
  wire out;
  wire ram_empty_fb_i0__1;
  wire [0:0]ram_empty_fb_i_reg;
  wire rd_en;
  wire [3:0]v1_reg;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp0}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],ram_empty_fb_i_reg}));
  LUT4 #(
    .INIT(16'hAEAA)) 
    ram_empty_i_i_1
       (.I0(comp0),
        .I1(rd_en),
        .I2(out),
        .I3(comp1),
        .O(ram_empty_fb_i0__1));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module Zynq_Design_UART_V1_9_0_0_compare_22
   (comp1,
    \gae.ram_almost_empty_i_reg ,
    v1_reg_0,
    \gae.ram_almost_empty_i_reg_0 ,
    almost_empty,
    out,
    rd_en,
    comp2);
  output comp1;
  output \gae.ram_almost_empty_i_reg ;
  input [3:0]v1_reg_0;
  input [0:0]\gae.ram_almost_empty_i_reg_0 ;
  input almost_empty;
  input out;
  input rd_en;
  input comp2;

  wire almost_empty;
  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire comp1;
  wire comp2;
  wire \gae.ram_almost_empty_i_reg ;
  wire [0:0]\gae.ram_almost_empty_i_reg_0 ;
  wire out;
  wire rd_en;
  wire [3:0]v1_reg_0;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hBBB8B8B8)) 
    \gae.ram_almost_empty_i_i_1 
       (.I0(almost_empty),
        .I1(out),
        .I2(comp1),
        .I3(rd_en),
        .I4(comp2),
        .O(\gae.ram_almost_empty_i_reg ));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg_0));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp1}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],\gae.ram_almost_empty_i_reg_0 }));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module Zynq_Design_UART_V1_9_0_0_compare_23
   (comp2,
    v1_reg_1,
    \gae.ram_almost_empty_i_reg );
  output comp2;
  input [3:0]v1_reg_1;
  input [0:0]\gae.ram_almost_empty_i_reg ;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire comp2;
  wire [0:0]\gae.ram_almost_empty_i_reg ;
  wire [3:0]v1_reg_1;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg_1));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp2}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],\gae.ram_almost_empty_i_reg }));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module Zynq_Design_UART_V1_9_0_0_compare_3
   (comp1,
    \gae.ram_almost_empty_i_reg ,
    v1_reg_0,
    \gae.ram_almost_empty_i_reg_0 ,
    almost_empty,
    out,
    rd_en,
    comp2);
  output comp1;
  output \gae.ram_almost_empty_i_reg ;
  input [3:0]v1_reg_0;
  input [0:0]\gae.ram_almost_empty_i_reg_0 ;
  input almost_empty;
  input out;
  input rd_en;
  input comp2;

  wire almost_empty;
  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire comp1;
  wire comp2;
  wire \gae.ram_almost_empty_i_reg ;
  wire [0:0]\gae.ram_almost_empty_i_reg_0 ;
  wire out;
  wire rd_en;
  wire [3:0]v1_reg_0;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hBBB8B8B8)) 
    \gae.ram_almost_empty_i_i_1 
       (.I0(almost_empty),
        .I1(out),
        .I2(comp1),
        .I3(rd_en),
        .I4(comp2),
        .O(\gae.ram_almost_empty_i_reg ));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg_0));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp1}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],\gae.ram_almost_empty_i_reg_0 }));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module Zynq_Design_UART_V1_9_0_0_compare_4
   (comp2,
    v1_reg_1,
    \gae.ram_almost_empty_i_reg );
  output comp2;
  input [3:0]v1_reg_1;
  input [0:0]\gae.ram_almost_empty_i_reg ;

  wire carrynet_0;
  wire carrynet_1;
  wire carrynet_2;
  wire carrynet_3;
  wire comp2;
  wire [0:0]\gae.ram_almost_empty_i_reg ;
  wire [3:0]v1_reg_1;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(1'b0),
        .CO({carrynet_3,carrynet_2,carrynet_1,carrynet_0}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg_1));
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(carrynet_3),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp2}),
        .CYINIT(1'b0),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],1'b0}),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],\gae.ram_almost_empty_i_reg }));
endmodule

(* ORIG_REF_NAME = "fifo_generator_ramfifo" *) 
module Zynq_Design_UART_V1_9_0_0_fifo_generator_ramfifo
   (\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ,
    wr_rst_busy,
    dout,
    empty,
    full,
    almost_full,
    almost_empty,
    wr_clk,
    rd_clk,
    rst,
    din,
    wr_en,
    rd_en);
  output \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;
  output wr_rst_busy;
  output [7:0]dout;
  output empty;
  output full;
  output almost_full;
  output almost_empty;
  input wr_clk;
  input rd_clk;
  input rst;
  input [7:0]din;
  input wr_en;
  input rd_en;

  wire almost_empty;
  wire almost_full;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/POR_B ;
  wire \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ram_rstram_b ;
  wire \gntv_or_sync_fifo.gl0.wr_n_1 ;
  wire [4:4]\gras.rsts/c0/v1_reg ;
  wire [4:4]\gras.rsts/c1/v1_reg ;
  wire [4:4]\gras.rsts/gae.c2/v1_reg ;
  wire [3:0]\gwas.wsts/c1/v1_reg ;
  wire [3:0]\gwas.wsts/c2/v1_reg ;
  wire [3:0]\gwas.wsts/gaf.c3/v1_reg ;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;
  wire [8:0]p_0_out;
  wire [8:0]p_13_out;
  wire [7:0]p_14_out;
  wire p_20_out;
  wire [7:0]p_24_out;
  wire [8:8]p_25_out;
  wire p_2_out;
  wire rd_clk;
  wire rd_en;
  wire [8:8]rd_pntr_plus1;
  wire [8:8]rd_pntr_plus2;
  wire rst;
  wire rst_full_gen_i;
  wire rstblk_n_0;
  wire wr_clk;
  wire wr_en;
  wire [7:0]wr_pntr_plus2;
  wire [7:0]wr_pntr_plus3;
  wire wr_rst_busy;

  Zynq_Design_UART_V1_9_0_0_clk_x_pntrs \gntv_or_sync_fifo.gcx.clkx 
       (.Q(p_14_out),
        .RD_PNTR_WR(p_25_out),
        .WR_PNTR_RD(p_24_out),
        .\gmux.gm[3].gms.ms (wr_pntr_plus2),
        .\gmux.gm[3].gms.ms_0 (wr_pntr_plus3),
        .\gmux.gm[4].gms.ms (rd_pntr_plus1),
        .\gmux.gm[4].gms.ms_0 (rd_pntr_plus2),
        .rd_clk(rd_clk),
        .\src_gray_ff_reg[8] (p_0_out),
        .\src_gray_ff_reg[8]_0 (p_13_out),
        .v1_reg(\gwas.wsts/c1/v1_reg ),
        .v1_reg_0(\gwas.wsts/c2/v1_reg ),
        .v1_reg_1(\gwas.wsts/gaf.c3/v1_reg ),
        .v1_reg_2(\gras.rsts/c0/v1_reg ),
        .v1_reg_3(\gras.rsts/c1/v1_reg ),
        .v1_reg_4(\gras.rsts/gae.c2/v1_reg ),
        .wr_clk(wr_clk));
  Zynq_Design_UART_V1_9_0_0_rd_logic \gntv_or_sync_fifo.gl0.rd 
       (.Q(rd_pntr_plus2),
        .SS(\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .WR_PNTR_RD(p_24_out),
        .almost_empty(almost_empty),
        .empty(empty),
        .\gae.ram_almost_empty_i_reg (\gras.rsts/c1/v1_reg ),
        .\gae.ram_almost_empty_i_reg_0 (\gras.rsts/gae.c2/v1_reg ),
        .\gc1.count_d1_reg[8] (rd_pntr_plus1),
        .\gc1.count_d2_reg[8] (p_0_out),
        .out(p_2_out),
        .ram_empty_fb_i_reg(\gras.rsts/c0/v1_reg ),
        .rd_clk(rd_clk),
        .rd_en(rd_en));
  Zynq_Design_UART_V1_9_0_0_wr_logic \gntv_or_sync_fifo.gl0.wr 
       (.E(p_20_out),
        .FULL_FB(\gntv_or_sync_fifo.gl0.wr_n_1 ),
        .Q(wr_pntr_plus3),
        .RD_PNTR_WR(p_25_out),
        .almost_full(almost_full),
        .full(full),
        .\gic0.gc1.count_d1_reg[7] (wr_pntr_plus2),
        .\gic0.gc1.count_d2_reg[7] (p_14_out),
        .\gic0.gc1.count_d3_reg[0] (rstblk_n_0),
        .\gic0.gc1.count_d3_reg[8] (p_13_out),
        .\gmux.gm[4].gms.ms (\gwas.wsts/c1/v1_reg ),
        .\gmux.gm[4].gms.ms_0 (\gwas.wsts/c2/v1_reg ),
        .\gmux.gm[4].gms.ms_1 (\gwas.wsts/gaf.c3/v1_reg ),
        .out(rst_full_gen_i),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  Zynq_Design_UART_V1_9_0_0_memory \gntv_or_sync_fifo.mem 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram (p_0_out),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 (p_13_out),
        .E(p_20_out),
        .FULL_FB(\gntv_or_sync_fifo.gl0.wr_n_1 ),
        .POR_B(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/POR_B ),
        .SS(\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .din(din),
        .dout(dout),
        .out(p_2_out),
        .ram_rstram_b(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ram_rstram_b ),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  Zynq_Design_UART_V1_9_0_0_reset_blk_ramfifo rstblk
       (.POR_B(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/POR_B ),
        .SS(\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg_0 (rstblk_n_0),
        .out(rst_full_gen_i),
        .ram_rstram_b(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ram_rstram_b ),
        .rd_clk(rd_clk),
        .rst(rst),
        .wr_clk(wr_clk),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* ORIG_REF_NAME = "fifo_generator_ramfifo" *) 
module Zynq_Design_UART_V1_9_0_0_fifo_generator_ramfifo__xdcDup__1
   (\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ,
    wr_rst_busy,
    dout,
    empty,
    full,
    almost_full,
    almost_empty,
    wr_clk,
    rd_clk,
    rst,
    din,
    wr_en,
    rd_en);
  output \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;
  output wr_rst_busy;
  output [7:0]dout;
  output empty;
  output full;
  output almost_full;
  output almost_empty;
  input wr_clk;
  input rd_clk;
  input rst;
  input [7:0]din;
  input wr_en;
  input rd_en;

  wire almost_empty;
  wire almost_full;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/POR_B ;
  wire \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ram_rstram_b ;
  wire \gntv_or_sync_fifo.gl0.wr_n_1 ;
  wire [4:4]\gras.rsts/c0/v1_reg ;
  wire [4:4]\gras.rsts/c1/v1_reg ;
  wire [4:4]\gras.rsts/gae.c2/v1_reg ;
  wire [3:0]\gwas.wsts/c1/v1_reg ;
  wire [3:0]\gwas.wsts/c2/v1_reg ;
  wire [3:0]\gwas.wsts/gaf.c3/v1_reg ;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;
  wire [8:0]p_0_out;
  wire [8:0]p_13_out;
  wire [7:0]p_14_out;
  wire p_20_out;
  wire [7:0]p_24_out;
  wire [8:8]p_25_out;
  wire p_2_out;
  wire rd_clk;
  wire rd_en;
  wire [8:8]rd_pntr_plus1;
  wire [8:8]rd_pntr_plus2;
  wire rst;
  wire rst_full_gen_i;
  wire rstblk_n_0;
  wire wr_clk;
  wire wr_en;
  wire [7:0]wr_pntr_plus2;
  wire [7:0]wr_pntr_plus3;
  wire wr_rst_busy;

  Zynq_Design_UART_V1_9_0_0_clk_x_pntrs__xdcDup__1 \gntv_or_sync_fifo.gcx.clkx 
       (.Q(p_14_out),
        .RD_PNTR_WR(p_25_out),
        .WR_PNTR_RD(p_24_out),
        .\gmux.gm[3].gms.ms (wr_pntr_plus2),
        .\gmux.gm[3].gms.ms_0 (wr_pntr_plus3),
        .\gmux.gm[4].gms.ms (rd_pntr_plus1),
        .\gmux.gm[4].gms.ms_0 (rd_pntr_plus2),
        .rd_clk(rd_clk),
        .\src_gray_ff_reg[8] (p_0_out),
        .\src_gray_ff_reg[8]_0 (p_13_out),
        .v1_reg(\gwas.wsts/c1/v1_reg ),
        .v1_reg_0(\gwas.wsts/c2/v1_reg ),
        .v1_reg_1(\gwas.wsts/gaf.c3/v1_reg ),
        .v1_reg_2(\gras.rsts/c0/v1_reg ),
        .v1_reg_3(\gras.rsts/c1/v1_reg ),
        .v1_reg_4(\gras.rsts/gae.c2/v1_reg ),
        .wr_clk(wr_clk));
  Zynq_Design_UART_V1_9_0_0_rd_logic_5 \gntv_or_sync_fifo.gl0.rd 
       (.Q(rd_pntr_plus2),
        .SS(\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .WR_PNTR_RD(p_24_out),
        .almost_empty(almost_empty),
        .empty(empty),
        .\gae.ram_almost_empty_i_reg (\gras.rsts/c1/v1_reg ),
        .\gae.ram_almost_empty_i_reg_0 (\gras.rsts/gae.c2/v1_reg ),
        .\gc1.count_d1_reg[8] (rd_pntr_plus1),
        .\gc1.count_d2_reg[8] (p_0_out),
        .out(p_2_out),
        .ram_empty_fb_i_reg(\gras.rsts/c0/v1_reg ),
        .rd_clk(rd_clk),
        .rd_en(rd_en));
  Zynq_Design_UART_V1_9_0_0_wr_logic_6 \gntv_or_sync_fifo.gl0.wr 
       (.E(p_20_out),
        .FULL_FB(\gntv_or_sync_fifo.gl0.wr_n_1 ),
        .Q(wr_pntr_plus3),
        .RD_PNTR_WR(p_25_out),
        .almost_full(almost_full),
        .full(full),
        .\gic0.gc1.count_d1_reg[7] (wr_pntr_plus2),
        .\gic0.gc1.count_d2_reg[7] (p_14_out),
        .\gic0.gc1.count_d3_reg[0] (rstblk_n_0),
        .\gic0.gc1.count_d3_reg[8] (p_13_out),
        .\gmux.gm[4].gms.ms (\gwas.wsts/c1/v1_reg ),
        .\gmux.gm[4].gms.ms_0 (\gwas.wsts/c2/v1_reg ),
        .\gmux.gm[4].gms.ms_1 (\gwas.wsts/gaf.c3/v1_reg ),
        .out(rst_full_gen_i),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  Zynq_Design_UART_V1_9_0_0_memory_7 \gntv_or_sync_fifo.mem 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram (p_0_out),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 (p_13_out),
        .E(p_20_out),
        .FULL_FB(\gntv_or_sync_fifo.gl0.wr_n_1 ),
        .POR_B(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/POR_B ),
        .SS(\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .din(din),
        .dout(dout),
        .out(p_2_out),
        .ram_rstram_b(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ram_rstram_b ),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  Zynq_Design_UART_V1_9_0_0_reset_blk_ramfifo__xdcDup__1 rstblk
       (.POR_B(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/POR_B ),
        .SS(\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg_0 (rstblk_n_0),
        .out(rst_full_gen_i),
        .ram_rstram_b(\gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ram_rstram_b ),
        .rd_clk(rd_clk),
        .rst(rst),
        .wr_clk(wr_clk),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* ORIG_REF_NAME = "fifo_generator_top" *) 
module Zynq_Design_UART_V1_9_0_0_fifo_generator_top
   (SS,
    wr_rst_busy,
    dout,
    empty,
    full,
    almost_full,
    almost_empty,
    wr_clk,
    rd_clk,
    rst,
    din,
    wr_en,
    rd_en);
  output [0:0]SS;
  output wr_rst_busy;
  output [7:0]dout;
  output empty;
  output full;
  output almost_full;
  output almost_empty;
  input wr_clk;
  input rd_clk;
  input rst;
  input [7:0]din;
  input wr_en;
  input rd_en;

  wire [0:0]SS;
  wire almost_empty;
  wire almost_full;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;

  Zynq_Design_UART_V1_9_0_0_fifo_generator_ramfifo \grf.rf 
       (.almost_empty(almost_empty),
        .almost_full(almost_full),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg (SS),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .rst(rst),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* ORIG_REF_NAME = "fifo_generator_top" *) 
module Zynq_Design_UART_V1_9_0_0_fifo_generator_top__xdcDup__1
   (SS,
    wr_rst_busy,
    dout,
    empty,
    full,
    almost_full,
    almost_empty,
    wr_clk,
    rd_clk,
    rst,
    din,
    wr_en,
    rd_en);
  output [0:0]SS;
  output wr_rst_busy;
  output [7:0]dout;
  output empty;
  output full;
  output almost_full;
  output almost_empty;
  input wr_clk;
  input rd_clk;
  input rst;
  input [7:0]din;
  input wr_en;
  input rd_en;

  wire [0:0]SS;
  wire almost_empty;
  wire almost_full;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;

  Zynq_Design_UART_V1_9_0_0_fifo_generator_ramfifo__xdcDup__1 \grf.rf 
       (.almost_empty(almost_empty),
        .almost_full(almost_full),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg (SS),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .rst(rst),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* C_ADD_NGC_CONSTRAINT = "0" *) (* C_APPLICATION_TYPE_AXIS = "0" *) (* C_APPLICATION_TYPE_RACH = "0" *) 
(* C_APPLICATION_TYPE_RDCH = "0" *) (* C_APPLICATION_TYPE_WACH = "0" *) (* C_APPLICATION_TYPE_WDCH = "0" *) 
(* C_APPLICATION_TYPE_WRCH = "0" *) (* C_AXIS_TDATA_WIDTH = "8" *) (* C_AXIS_TDEST_WIDTH = "1" *) 
(* C_AXIS_TID_WIDTH = "1" *) (* C_AXIS_TKEEP_WIDTH = "1" *) (* C_AXIS_TSTRB_WIDTH = "1" *) 
(* C_AXIS_TUSER_WIDTH = "4" *) (* C_AXIS_TYPE = "0" *) (* C_AXI_ADDR_WIDTH = "32" *) 
(* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) (* C_AXI_BUSER_WIDTH = "1" *) 
(* C_AXI_DATA_WIDTH = "64" *) (* C_AXI_ID_WIDTH = "1" *) (* C_AXI_LEN_WIDTH = "8" *) 
(* C_AXI_LOCK_WIDTH = "1" *) (* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_TYPE = "1" *) 
(* C_AXI_WUSER_WIDTH = "1" *) (* C_COMMON_CLOCK = "0" *) (* C_COUNT_TYPE = "0" *) 
(* C_DATA_COUNT_WIDTH = "9" *) (* C_DEFAULT_VALUE = "BlankString" *) (* C_DIN_WIDTH = "8" *) 
(* C_DIN_WIDTH_AXIS = "1" *) (* C_DIN_WIDTH_RACH = "32" *) (* C_DIN_WIDTH_RDCH = "64" *) 
(* C_DIN_WIDTH_WACH = "1" *) (* C_DIN_WIDTH_WDCH = "64" *) (* C_DIN_WIDTH_WRCH = "2" *) 
(* C_DOUT_RST_VAL = "0" *) (* C_DOUT_WIDTH = "8" *) (* C_ENABLE_RLOCS = "0" *) 
(* C_ENABLE_RST_SYNC = "1" *) (* C_EN_SAFETY_CKT = "1" *) (* C_ERROR_INJECTION_TYPE = "0" *) 
(* C_ERROR_INJECTION_TYPE_AXIS = "0" *) (* C_ERROR_INJECTION_TYPE_RACH = "0" *) (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
(* C_ERROR_INJECTION_TYPE_WACH = "0" *) (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
(* C_FAMILY = "zynq" *) (* C_FULL_FLAGS_RST_VAL = "1" *) (* C_HAS_ALMOST_EMPTY = "1" *) 
(* C_HAS_ALMOST_FULL = "1" *) (* C_HAS_AXIS_TDATA = "1" *) (* C_HAS_AXIS_TDEST = "0" *) 
(* C_HAS_AXIS_TID = "0" *) (* C_HAS_AXIS_TKEEP = "0" *) (* C_HAS_AXIS_TLAST = "0" *) 
(* C_HAS_AXIS_TREADY = "1" *) (* C_HAS_AXIS_TSTRB = "0" *) (* C_HAS_AXIS_TUSER = "1" *) 
(* C_HAS_AXI_ARUSER = "0" *) (* C_HAS_AXI_AWUSER = "0" *) (* C_HAS_AXI_BUSER = "0" *) 
(* C_HAS_AXI_ID = "0" *) (* C_HAS_AXI_RD_CHANNEL = "1" *) (* C_HAS_AXI_RUSER = "0" *) 
(* C_HAS_AXI_WR_CHANNEL = "1" *) (* C_HAS_AXI_WUSER = "0" *) (* C_HAS_BACKUP = "0" *) 
(* C_HAS_DATA_COUNT = "0" *) (* C_HAS_DATA_COUNTS_AXIS = "0" *) (* C_HAS_DATA_COUNTS_RACH = "0" *) 
(* C_HAS_DATA_COUNTS_RDCH = "0" *) (* C_HAS_DATA_COUNTS_WACH = "0" *) (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
(* C_HAS_DATA_COUNTS_WRCH = "0" *) (* C_HAS_INT_CLK = "0" *) (* C_HAS_MASTER_CE = "0" *) 
(* C_HAS_MEMINIT_FILE = "0" *) (* C_HAS_OVERFLOW = "0" *) (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
(* C_HAS_PROG_FLAGS_RACH = "0" *) (* C_HAS_PROG_FLAGS_RDCH = "0" *) (* C_HAS_PROG_FLAGS_WACH = "0" *) 
(* C_HAS_PROG_FLAGS_WDCH = "0" *) (* C_HAS_PROG_FLAGS_WRCH = "0" *) (* C_HAS_RD_DATA_COUNT = "0" *) 
(* C_HAS_RD_RST = "0" *) (* C_HAS_RST = "1" *) (* C_HAS_SLAVE_CE = "0" *) 
(* C_HAS_SRST = "0" *) (* C_HAS_UNDERFLOW = "0" *) (* C_HAS_VALID = "0" *) 
(* C_HAS_WR_ACK = "0" *) (* C_HAS_WR_DATA_COUNT = "0" *) (* C_HAS_WR_RST = "0" *) 
(* C_IMPLEMENTATION_TYPE = "2" *) (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
(* C_IMPLEMENTATION_TYPE_RDCH = "1" *) (* C_IMPLEMENTATION_TYPE_WACH = "1" *) (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
(* C_IMPLEMENTATION_TYPE_WRCH = "1" *) (* C_INIT_WR_PNTR_VAL = "0" *) (* C_INTERFACE_TYPE = "0" *) 
(* C_MEMORY_TYPE = "1" *) (* C_MIF_FILE_NAME = "BlankString" *) (* C_MSGON_VAL = "1" *) 
(* C_OPTIMIZATION_MODE = "0" *) (* C_OVERFLOW_LOW = "0" *) (* C_POWER_SAVING_MODE = "0" *) 
(* C_PRELOAD_LATENCY = "1" *) (* C_PRELOAD_REGS = "0" *) (* C_PRIM_FIFO_TYPE = "512x36" *) 
(* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
(* C_PRIM_FIFO_TYPE_WACH = "512x36" *) (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) (* C_PROG_EMPTY_TYPE = "0" *) 
(* C_PROG_EMPTY_TYPE_AXIS = "0" *) (* C_PROG_EMPTY_TYPE_RACH = "0" *) (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
(* C_PROG_EMPTY_TYPE_WACH = "0" *) (* C_PROG_EMPTY_TYPE_WDCH = "0" *) (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL = "509" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) (* C_PROG_FULL_THRESH_NEGATE_VAL = "508" *) (* C_PROG_FULL_TYPE = "0" *) 
(* C_PROG_FULL_TYPE_AXIS = "0" *) (* C_PROG_FULL_TYPE_RACH = "0" *) (* C_PROG_FULL_TYPE_RDCH = "0" *) 
(* C_PROG_FULL_TYPE_WACH = "0" *) (* C_PROG_FULL_TYPE_WDCH = "0" *) (* C_PROG_FULL_TYPE_WRCH = "0" *) 
(* C_RACH_TYPE = "0" *) (* C_RDCH_TYPE = "0" *) (* C_RD_DATA_COUNT_WIDTH = "9" *) 
(* C_RD_DEPTH = "512" *) (* C_RD_FREQ = "1" *) (* C_RD_PNTR_WIDTH = "9" *) 
(* C_REG_SLICE_MODE_AXIS = "0" *) (* C_REG_SLICE_MODE_RACH = "0" *) (* C_REG_SLICE_MODE_RDCH = "0" *) 
(* C_REG_SLICE_MODE_WACH = "0" *) (* C_REG_SLICE_MODE_WDCH = "0" *) (* C_REG_SLICE_MODE_WRCH = "0" *) 
(* C_SELECT_XPM = "0" *) (* C_SYNCHRONIZER_STAGE = "2" *) (* C_UNDERFLOW_LOW = "0" *) 
(* C_USE_COMMON_OVERFLOW = "0" *) (* C_USE_COMMON_UNDERFLOW = "0" *) (* C_USE_DEFAULT_SETTINGS = "0" *) 
(* C_USE_DOUT_RST = "1" *) (* C_USE_ECC = "0" *) (* C_USE_ECC_AXIS = "0" *) 
(* C_USE_ECC_RACH = "0" *) (* C_USE_ECC_RDCH = "0" *) (* C_USE_ECC_WACH = "0" *) 
(* C_USE_ECC_WDCH = "0" *) (* C_USE_ECC_WRCH = "0" *) (* C_USE_EMBEDDED_REG = "0" *) 
(* C_USE_FIFO16_FLAGS = "0" *) (* C_USE_FWFT_DATA_COUNT = "0" *) (* C_USE_PIPELINE_REG = "0" *) 
(* C_VALID_LOW = "0" *) (* C_WACH_TYPE = "0" *) (* C_WDCH_TYPE = "0" *) 
(* C_WRCH_TYPE = "0" *) (* C_WR_ACK_LOW = "0" *) (* C_WR_DATA_COUNT_WIDTH = "9" *) 
(* C_WR_DEPTH = "512" *) (* C_WR_DEPTH_AXIS = "1024" *) (* C_WR_DEPTH_RACH = "16" *) 
(* C_WR_DEPTH_RDCH = "1024" *) (* C_WR_DEPTH_WACH = "16" *) (* C_WR_DEPTH_WDCH = "1024" *) 
(* C_WR_DEPTH_WRCH = "16" *) (* C_WR_FREQ = "1" *) (* C_WR_PNTR_WIDTH = "9" *) 
(* C_WR_PNTR_WIDTH_AXIS = "10" *) (* C_WR_PNTR_WIDTH_RACH = "4" *) (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
(* C_WR_PNTR_WIDTH_WACH = "4" *) (* C_WR_PNTR_WIDTH_WDCH = "10" *) (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
(* C_WR_RESPONSE_LATENCY = "1" *) (* ORIG_REF_NAME = "fifo_generator_v13_2_4" *) 
module Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4
   (backup,
    backup_marker,
    clk,
    rst,
    srst,
    wr_clk,
    wr_rst,
    rd_clk,
    rd_rst,
    din,
    wr_en,
    rd_en,
    prog_empty_thresh,
    prog_empty_thresh_assert,
    prog_empty_thresh_negate,
    prog_full_thresh,
    prog_full_thresh_assert,
    prog_full_thresh_negate,
    int_clk,
    injectdbiterr,
    injectsbiterr,
    sleep,
    dout,
    full,
    almost_full,
    wr_ack,
    overflow,
    empty,
    almost_empty,
    valid,
    underflow,
    data_count,
    rd_data_count,
    wr_data_count,
    prog_full,
    prog_empty,
    sbiterr,
    dbiterr,
    wr_rst_busy,
    rd_rst_busy,
    m_aclk,
    s_aclk,
    s_aresetn,
    m_aclk_en,
    s_aclk_en,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awregion,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awregion,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arregion,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arregion,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    axi_aw_injectsbiterr,
    axi_aw_injectdbiterr,
    axi_aw_prog_full_thresh,
    axi_aw_prog_empty_thresh,
    axi_aw_data_count,
    axi_aw_wr_data_count,
    axi_aw_rd_data_count,
    axi_aw_sbiterr,
    axi_aw_dbiterr,
    axi_aw_overflow,
    axi_aw_underflow,
    axi_aw_prog_full,
    axi_aw_prog_empty,
    axi_w_injectsbiterr,
    axi_w_injectdbiterr,
    axi_w_prog_full_thresh,
    axi_w_prog_empty_thresh,
    axi_w_data_count,
    axi_w_wr_data_count,
    axi_w_rd_data_count,
    axi_w_sbiterr,
    axi_w_dbiterr,
    axi_w_overflow,
    axi_w_underflow,
    axi_w_prog_full,
    axi_w_prog_empty,
    axi_b_injectsbiterr,
    axi_b_injectdbiterr,
    axi_b_prog_full_thresh,
    axi_b_prog_empty_thresh,
    axi_b_data_count,
    axi_b_wr_data_count,
    axi_b_rd_data_count,
    axi_b_sbiterr,
    axi_b_dbiterr,
    axi_b_overflow,
    axi_b_underflow,
    axi_b_prog_full,
    axi_b_prog_empty,
    axi_ar_injectsbiterr,
    axi_ar_injectdbiterr,
    axi_ar_prog_full_thresh,
    axi_ar_prog_empty_thresh,
    axi_ar_data_count,
    axi_ar_wr_data_count,
    axi_ar_rd_data_count,
    axi_ar_sbiterr,
    axi_ar_dbiterr,
    axi_ar_overflow,
    axi_ar_underflow,
    axi_ar_prog_full,
    axi_ar_prog_empty,
    axi_r_injectsbiterr,
    axi_r_injectdbiterr,
    axi_r_prog_full_thresh,
    axi_r_prog_empty_thresh,
    axi_r_data_count,
    axi_r_wr_data_count,
    axi_r_rd_data_count,
    axi_r_sbiterr,
    axi_r_dbiterr,
    axi_r_overflow,
    axi_r_underflow,
    axi_r_prog_full,
    axi_r_prog_empty,
    axis_injectsbiterr,
    axis_injectdbiterr,
    axis_prog_full_thresh,
    axis_prog_empty_thresh,
    axis_data_count,
    axis_wr_data_count,
    axis_rd_data_count,
    axis_sbiterr,
    axis_dbiterr,
    axis_overflow,
    axis_underflow,
    axis_prog_full,
    axis_prog_empty);
  input backup;
  input backup_marker;
  input clk;
  input rst;
  input srst;
  input wr_clk;
  input wr_rst;
  input rd_clk;
  input rd_rst;
  input [7:0]din;
  input wr_en;
  input rd_en;
  input [8:0]prog_empty_thresh;
  input [8:0]prog_empty_thresh_assert;
  input [8:0]prog_empty_thresh_negate;
  input [8:0]prog_full_thresh;
  input [8:0]prog_full_thresh_assert;
  input [8:0]prog_full_thresh_negate;
  input int_clk;
  input injectdbiterr;
  input injectsbiterr;
  input sleep;
  output [7:0]dout;
  output full;
  output almost_full;
  output wr_ack;
  output overflow;
  output empty;
  output almost_empty;
  output valid;
  output underflow;
  output [8:0]data_count;
  output [8:0]rd_data_count;
  output [8:0]wr_data_count;
  output prog_full;
  output prog_empty;
  output sbiterr;
  output dbiterr;
  output wr_rst_busy;
  output rd_rst_busy;
  input m_aclk;
  input s_aclk;
  input s_aresetn;
  input m_aclk_en;
  input s_aclk_en;
  input [0:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input [3:0]s_axi_awregion;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [0:0]s_axi_wid;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  output [0:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output [3:0]m_axi_awregion;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [0:0]m_axi_wid;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  input [0:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input [3:0]s_axi_arregion;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [0:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output [3:0]m_axi_arregion;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [0:0]m_axi_rid;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;
  input s_axis_tvalid;
  output s_axis_tready;
  input [7:0]s_axis_tdata;
  input [0:0]s_axis_tstrb;
  input [0:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [3:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [7:0]m_axis_tdata;
  output [0:0]m_axis_tstrb;
  output [0:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [3:0]m_axis_tuser;
  input axi_aw_injectsbiterr;
  input axi_aw_injectdbiterr;
  input [3:0]axi_aw_prog_full_thresh;
  input [3:0]axi_aw_prog_empty_thresh;
  output [4:0]axi_aw_data_count;
  output [4:0]axi_aw_wr_data_count;
  output [4:0]axi_aw_rd_data_count;
  output axi_aw_sbiterr;
  output axi_aw_dbiterr;
  output axi_aw_overflow;
  output axi_aw_underflow;
  output axi_aw_prog_full;
  output axi_aw_prog_empty;
  input axi_w_injectsbiterr;
  input axi_w_injectdbiterr;
  input [9:0]axi_w_prog_full_thresh;
  input [9:0]axi_w_prog_empty_thresh;
  output [10:0]axi_w_data_count;
  output [10:0]axi_w_wr_data_count;
  output [10:0]axi_w_rd_data_count;
  output axi_w_sbiterr;
  output axi_w_dbiterr;
  output axi_w_overflow;
  output axi_w_underflow;
  output axi_w_prog_full;
  output axi_w_prog_empty;
  input axi_b_injectsbiterr;
  input axi_b_injectdbiterr;
  input [3:0]axi_b_prog_full_thresh;
  input [3:0]axi_b_prog_empty_thresh;
  output [4:0]axi_b_data_count;
  output [4:0]axi_b_wr_data_count;
  output [4:0]axi_b_rd_data_count;
  output axi_b_sbiterr;
  output axi_b_dbiterr;
  output axi_b_overflow;
  output axi_b_underflow;
  output axi_b_prog_full;
  output axi_b_prog_empty;
  input axi_ar_injectsbiterr;
  input axi_ar_injectdbiterr;
  input [3:0]axi_ar_prog_full_thresh;
  input [3:0]axi_ar_prog_empty_thresh;
  output [4:0]axi_ar_data_count;
  output [4:0]axi_ar_wr_data_count;
  output [4:0]axi_ar_rd_data_count;
  output axi_ar_sbiterr;
  output axi_ar_dbiterr;
  output axi_ar_overflow;
  output axi_ar_underflow;
  output axi_ar_prog_full;
  output axi_ar_prog_empty;
  input axi_r_injectsbiterr;
  input axi_r_injectdbiterr;
  input [9:0]axi_r_prog_full_thresh;
  input [9:0]axi_r_prog_empty_thresh;
  output [10:0]axi_r_data_count;
  output [10:0]axi_r_wr_data_count;
  output [10:0]axi_r_rd_data_count;
  output axi_r_sbiterr;
  output axi_r_dbiterr;
  output axi_r_overflow;
  output axi_r_underflow;
  output axi_r_prog_full;
  output axi_r_prog_empty;
  input axis_injectsbiterr;
  input axis_injectdbiterr;
  input [9:0]axis_prog_full_thresh;
  input [9:0]axis_prog_empty_thresh;
  output [10:0]axis_data_count;
  output [10:0]axis_wr_data_count;
  output [10:0]axis_rd_data_count;
  output axis_sbiterr;
  output axis_dbiterr;
  output axis_overflow;
  output axis_underflow;
  output axis_prog_full;
  output axis_prog_empty;

  wire \<const0> ;
  wire \<const1> ;
  wire almost_empty;
  wire almost_full;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rd_rst_busy;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;

  assign axi_ar_data_count[4] = \<const0> ;
  assign axi_ar_data_count[3] = \<const0> ;
  assign axi_ar_data_count[2] = \<const0> ;
  assign axi_ar_data_count[1] = \<const0> ;
  assign axi_ar_data_count[0] = \<const0> ;
  assign axi_ar_dbiterr = \<const0> ;
  assign axi_ar_overflow = \<const0> ;
  assign axi_ar_prog_empty = \<const1> ;
  assign axi_ar_prog_full = \<const0> ;
  assign axi_ar_rd_data_count[4] = \<const0> ;
  assign axi_ar_rd_data_count[3] = \<const0> ;
  assign axi_ar_rd_data_count[2] = \<const0> ;
  assign axi_ar_rd_data_count[1] = \<const0> ;
  assign axi_ar_rd_data_count[0] = \<const0> ;
  assign axi_ar_sbiterr = \<const0> ;
  assign axi_ar_underflow = \<const0> ;
  assign axi_ar_wr_data_count[4] = \<const0> ;
  assign axi_ar_wr_data_count[3] = \<const0> ;
  assign axi_ar_wr_data_count[2] = \<const0> ;
  assign axi_ar_wr_data_count[1] = \<const0> ;
  assign axi_ar_wr_data_count[0] = \<const0> ;
  assign axi_aw_data_count[4] = \<const0> ;
  assign axi_aw_data_count[3] = \<const0> ;
  assign axi_aw_data_count[2] = \<const0> ;
  assign axi_aw_data_count[1] = \<const0> ;
  assign axi_aw_data_count[0] = \<const0> ;
  assign axi_aw_dbiterr = \<const0> ;
  assign axi_aw_overflow = \<const0> ;
  assign axi_aw_prog_empty = \<const1> ;
  assign axi_aw_prog_full = \<const0> ;
  assign axi_aw_rd_data_count[4] = \<const0> ;
  assign axi_aw_rd_data_count[3] = \<const0> ;
  assign axi_aw_rd_data_count[2] = \<const0> ;
  assign axi_aw_rd_data_count[1] = \<const0> ;
  assign axi_aw_rd_data_count[0] = \<const0> ;
  assign axi_aw_sbiterr = \<const0> ;
  assign axi_aw_underflow = \<const0> ;
  assign axi_aw_wr_data_count[4] = \<const0> ;
  assign axi_aw_wr_data_count[3] = \<const0> ;
  assign axi_aw_wr_data_count[2] = \<const0> ;
  assign axi_aw_wr_data_count[1] = \<const0> ;
  assign axi_aw_wr_data_count[0] = \<const0> ;
  assign axi_b_data_count[4] = \<const0> ;
  assign axi_b_data_count[3] = \<const0> ;
  assign axi_b_data_count[2] = \<const0> ;
  assign axi_b_data_count[1] = \<const0> ;
  assign axi_b_data_count[0] = \<const0> ;
  assign axi_b_dbiterr = \<const0> ;
  assign axi_b_overflow = \<const0> ;
  assign axi_b_prog_empty = \<const1> ;
  assign axi_b_prog_full = \<const0> ;
  assign axi_b_rd_data_count[4] = \<const0> ;
  assign axi_b_rd_data_count[3] = \<const0> ;
  assign axi_b_rd_data_count[2] = \<const0> ;
  assign axi_b_rd_data_count[1] = \<const0> ;
  assign axi_b_rd_data_count[0] = \<const0> ;
  assign axi_b_sbiterr = \<const0> ;
  assign axi_b_underflow = \<const0> ;
  assign axi_b_wr_data_count[4] = \<const0> ;
  assign axi_b_wr_data_count[3] = \<const0> ;
  assign axi_b_wr_data_count[2] = \<const0> ;
  assign axi_b_wr_data_count[1] = \<const0> ;
  assign axi_b_wr_data_count[0] = \<const0> ;
  assign axi_r_data_count[10] = \<const0> ;
  assign axi_r_data_count[9] = \<const0> ;
  assign axi_r_data_count[8] = \<const0> ;
  assign axi_r_data_count[7] = \<const0> ;
  assign axi_r_data_count[6] = \<const0> ;
  assign axi_r_data_count[5] = \<const0> ;
  assign axi_r_data_count[4] = \<const0> ;
  assign axi_r_data_count[3] = \<const0> ;
  assign axi_r_data_count[2] = \<const0> ;
  assign axi_r_data_count[1] = \<const0> ;
  assign axi_r_data_count[0] = \<const0> ;
  assign axi_r_dbiterr = \<const0> ;
  assign axi_r_overflow = \<const0> ;
  assign axi_r_prog_empty = \<const1> ;
  assign axi_r_prog_full = \<const0> ;
  assign axi_r_rd_data_count[10] = \<const0> ;
  assign axi_r_rd_data_count[9] = \<const0> ;
  assign axi_r_rd_data_count[8] = \<const0> ;
  assign axi_r_rd_data_count[7] = \<const0> ;
  assign axi_r_rd_data_count[6] = \<const0> ;
  assign axi_r_rd_data_count[5] = \<const0> ;
  assign axi_r_rd_data_count[4] = \<const0> ;
  assign axi_r_rd_data_count[3] = \<const0> ;
  assign axi_r_rd_data_count[2] = \<const0> ;
  assign axi_r_rd_data_count[1] = \<const0> ;
  assign axi_r_rd_data_count[0] = \<const0> ;
  assign axi_r_sbiterr = \<const0> ;
  assign axi_r_underflow = \<const0> ;
  assign axi_r_wr_data_count[10] = \<const0> ;
  assign axi_r_wr_data_count[9] = \<const0> ;
  assign axi_r_wr_data_count[8] = \<const0> ;
  assign axi_r_wr_data_count[7] = \<const0> ;
  assign axi_r_wr_data_count[6] = \<const0> ;
  assign axi_r_wr_data_count[5] = \<const0> ;
  assign axi_r_wr_data_count[4] = \<const0> ;
  assign axi_r_wr_data_count[3] = \<const0> ;
  assign axi_r_wr_data_count[2] = \<const0> ;
  assign axi_r_wr_data_count[1] = \<const0> ;
  assign axi_r_wr_data_count[0] = \<const0> ;
  assign axi_w_data_count[10] = \<const0> ;
  assign axi_w_data_count[9] = \<const0> ;
  assign axi_w_data_count[8] = \<const0> ;
  assign axi_w_data_count[7] = \<const0> ;
  assign axi_w_data_count[6] = \<const0> ;
  assign axi_w_data_count[5] = \<const0> ;
  assign axi_w_data_count[4] = \<const0> ;
  assign axi_w_data_count[3] = \<const0> ;
  assign axi_w_data_count[2] = \<const0> ;
  assign axi_w_data_count[1] = \<const0> ;
  assign axi_w_data_count[0] = \<const0> ;
  assign axi_w_dbiterr = \<const0> ;
  assign axi_w_overflow = \<const0> ;
  assign axi_w_prog_empty = \<const1> ;
  assign axi_w_prog_full = \<const0> ;
  assign axi_w_rd_data_count[10] = \<const0> ;
  assign axi_w_rd_data_count[9] = \<const0> ;
  assign axi_w_rd_data_count[8] = \<const0> ;
  assign axi_w_rd_data_count[7] = \<const0> ;
  assign axi_w_rd_data_count[6] = \<const0> ;
  assign axi_w_rd_data_count[5] = \<const0> ;
  assign axi_w_rd_data_count[4] = \<const0> ;
  assign axi_w_rd_data_count[3] = \<const0> ;
  assign axi_w_rd_data_count[2] = \<const0> ;
  assign axi_w_rd_data_count[1] = \<const0> ;
  assign axi_w_rd_data_count[0] = \<const0> ;
  assign axi_w_sbiterr = \<const0> ;
  assign axi_w_underflow = \<const0> ;
  assign axi_w_wr_data_count[10] = \<const0> ;
  assign axi_w_wr_data_count[9] = \<const0> ;
  assign axi_w_wr_data_count[8] = \<const0> ;
  assign axi_w_wr_data_count[7] = \<const0> ;
  assign axi_w_wr_data_count[6] = \<const0> ;
  assign axi_w_wr_data_count[5] = \<const0> ;
  assign axi_w_wr_data_count[4] = \<const0> ;
  assign axi_w_wr_data_count[3] = \<const0> ;
  assign axi_w_wr_data_count[2] = \<const0> ;
  assign axi_w_wr_data_count[1] = \<const0> ;
  assign axi_w_wr_data_count[0] = \<const0> ;
  assign axis_data_count[10] = \<const0> ;
  assign axis_data_count[9] = \<const0> ;
  assign axis_data_count[8] = \<const0> ;
  assign axis_data_count[7] = \<const0> ;
  assign axis_data_count[6] = \<const0> ;
  assign axis_data_count[5] = \<const0> ;
  assign axis_data_count[4] = \<const0> ;
  assign axis_data_count[3] = \<const0> ;
  assign axis_data_count[2] = \<const0> ;
  assign axis_data_count[1] = \<const0> ;
  assign axis_data_count[0] = \<const0> ;
  assign axis_dbiterr = \<const0> ;
  assign axis_overflow = \<const0> ;
  assign axis_prog_empty = \<const1> ;
  assign axis_prog_full = \<const0> ;
  assign axis_rd_data_count[10] = \<const0> ;
  assign axis_rd_data_count[9] = \<const0> ;
  assign axis_rd_data_count[8] = \<const0> ;
  assign axis_rd_data_count[7] = \<const0> ;
  assign axis_rd_data_count[6] = \<const0> ;
  assign axis_rd_data_count[5] = \<const0> ;
  assign axis_rd_data_count[4] = \<const0> ;
  assign axis_rd_data_count[3] = \<const0> ;
  assign axis_rd_data_count[2] = \<const0> ;
  assign axis_rd_data_count[1] = \<const0> ;
  assign axis_rd_data_count[0] = \<const0> ;
  assign axis_sbiterr = \<const0> ;
  assign axis_underflow = \<const0> ;
  assign axis_wr_data_count[10] = \<const0> ;
  assign axis_wr_data_count[9] = \<const0> ;
  assign axis_wr_data_count[8] = \<const0> ;
  assign axis_wr_data_count[7] = \<const0> ;
  assign axis_wr_data_count[6] = \<const0> ;
  assign axis_wr_data_count[5] = \<const0> ;
  assign axis_wr_data_count[4] = \<const0> ;
  assign axis_wr_data_count[3] = \<const0> ;
  assign axis_wr_data_count[2] = \<const0> ;
  assign axis_wr_data_count[1] = \<const0> ;
  assign axis_wr_data_count[0] = \<const0> ;
  assign data_count[8] = \<const0> ;
  assign data_count[7] = \<const0> ;
  assign data_count[6] = \<const0> ;
  assign data_count[5] = \<const0> ;
  assign data_count[4] = \<const0> ;
  assign data_count[3] = \<const0> ;
  assign data_count[2] = \<const0> ;
  assign data_count[1] = \<const0> ;
  assign data_count[0] = \<const0> ;
  assign dbiterr = \<const0> ;
  assign m_axi_araddr[31] = \<const0> ;
  assign m_axi_araddr[30] = \<const0> ;
  assign m_axi_araddr[29] = \<const0> ;
  assign m_axi_araddr[28] = \<const0> ;
  assign m_axi_araddr[27] = \<const0> ;
  assign m_axi_araddr[26] = \<const0> ;
  assign m_axi_araddr[25] = \<const0> ;
  assign m_axi_araddr[24] = \<const0> ;
  assign m_axi_araddr[23] = \<const0> ;
  assign m_axi_araddr[22] = \<const0> ;
  assign m_axi_araddr[21] = \<const0> ;
  assign m_axi_araddr[20] = \<const0> ;
  assign m_axi_araddr[19] = \<const0> ;
  assign m_axi_araddr[18] = \<const0> ;
  assign m_axi_araddr[17] = \<const0> ;
  assign m_axi_araddr[16] = \<const0> ;
  assign m_axi_araddr[15] = \<const0> ;
  assign m_axi_araddr[14] = \<const0> ;
  assign m_axi_araddr[13] = \<const0> ;
  assign m_axi_araddr[12] = \<const0> ;
  assign m_axi_araddr[11] = \<const0> ;
  assign m_axi_araddr[10] = \<const0> ;
  assign m_axi_araddr[9] = \<const0> ;
  assign m_axi_araddr[8] = \<const0> ;
  assign m_axi_araddr[7] = \<const0> ;
  assign m_axi_araddr[6] = \<const0> ;
  assign m_axi_araddr[5] = \<const0> ;
  assign m_axi_araddr[4] = \<const0> ;
  assign m_axi_araddr[3] = \<const0> ;
  assign m_axi_araddr[2] = \<const0> ;
  assign m_axi_araddr[1] = \<const0> ;
  assign m_axi_araddr[0] = \<const0> ;
  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const0> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const0> ;
  assign m_axi_arcache[0] = \<const0> ;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arlock[0] = \<const0> ;
  assign m_axi_arprot[2] = \<const0> ;
  assign m_axi_arprot[1] = \<const0> ;
  assign m_axi_arprot[0] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_arvalid = \<const0> ;
  assign m_axi_awaddr[31] = \<const0> ;
  assign m_axi_awaddr[30] = \<const0> ;
  assign m_axi_awaddr[29] = \<const0> ;
  assign m_axi_awaddr[28] = \<const0> ;
  assign m_axi_awaddr[27] = \<const0> ;
  assign m_axi_awaddr[26] = \<const0> ;
  assign m_axi_awaddr[25] = \<const0> ;
  assign m_axi_awaddr[24] = \<const0> ;
  assign m_axi_awaddr[23] = \<const0> ;
  assign m_axi_awaddr[22] = \<const0> ;
  assign m_axi_awaddr[21] = \<const0> ;
  assign m_axi_awaddr[20] = \<const0> ;
  assign m_axi_awaddr[19] = \<const0> ;
  assign m_axi_awaddr[18] = \<const0> ;
  assign m_axi_awaddr[17] = \<const0> ;
  assign m_axi_awaddr[16] = \<const0> ;
  assign m_axi_awaddr[15] = \<const0> ;
  assign m_axi_awaddr[14] = \<const0> ;
  assign m_axi_awaddr[13] = \<const0> ;
  assign m_axi_awaddr[12] = \<const0> ;
  assign m_axi_awaddr[11] = \<const0> ;
  assign m_axi_awaddr[10] = \<const0> ;
  assign m_axi_awaddr[9] = \<const0> ;
  assign m_axi_awaddr[8] = \<const0> ;
  assign m_axi_awaddr[7] = \<const0> ;
  assign m_axi_awaddr[6] = \<const0> ;
  assign m_axi_awaddr[5] = \<const0> ;
  assign m_axi_awaddr[4] = \<const0> ;
  assign m_axi_awaddr[3] = \<const0> ;
  assign m_axi_awaddr[2] = \<const0> ;
  assign m_axi_awaddr[1] = \<const0> ;
  assign m_axi_awaddr[0] = \<const0> ;
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \<const0> ;
  assign m_axi_awcache[3] = \<const0> ;
  assign m_axi_awcache[2] = \<const0> ;
  assign m_axi_awcache[1] = \<const0> ;
  assign m_axi_awcache[0] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlen[7] = \<const0> ;
  assign m_axi_awlen[6] = \<const0> ;
  assign m_axi_awlen[5] = \<const0> ;
  assign m_axi_awlen[4] = \<const0> ;
  assign m_axi_awlen[3] = \<const0> ;
  assign m_axi_awlen[2] = \<const0> ;
  assign m_axi_awlen[1] = \<const0> ;
  assign m_axi_awlen[0] = \<const0> ;
  assign m_axi_awlock[0] = \<const0> ;
  assign m_axi_awprot[2] = \<const0> ;
  assign m_axi_awprot[1] = \<const0> ;
  assign m_axi_awprot[0] = \<const0> ;
  assign m_axi_awqos[3] = \<const0> ;
  assign m_axi_awqos[2] = \<const0> ;
  assign m_axi_awqos[1] = \<const0> ;
  assign m_axi_awqos[0] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \<const0> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_awvalid = \<const0> ;
  assign m_axi_bready = \<const0> ;
  assign m_axi_rready = \<const0> ;
  assign m_axi_wdata[63] = \<const0> ;
  assign m_axi_wdata[62] = \<const0> ;
  assign m_axi_wdata[61] = \<const0> ;
  assign m_axi_wdata[60] = \<const0> ;
  assign m_axi_wdata[59] = \<const0> ;
  assign m_axi_wdata[58] = \<const0> ;
  assign m_axi_wdata[57] = \<const0> ;
  assign m_axi_wdata[56] = \<const0> ;
  assign m_axi_wdata[55] = \<const0> ;
  assign m_axi_wdata[54] = \<const0> ;
  assign m_axi_wdata[53] = \<const0> ;
  assign m_axi_wdata[52] = \<const0> ;
  assign m_axi_wdata[51] = \<const0> ;
  assign m_axi_wdata[50] = \<const0> ;
  assign m_axi_wdata[49] = \<const0> ;
  assign m_axi_wdata[48] = \<const0> ;
  assign m_axi_wdata[47] = \<const0> ;
  assign m_axi_wdata[46] = \<const0> ;
  assign m_axi_wdata[45] = \<const0> ;
  assign m_axi_wdata[44] = \<const0> ;
  assign m_axi_wdata[43] = \<const0> ;
  assign m_axi_wdata[42] = \<const0> ;
  assign m_axi_wdata[41] = \<const0> ;
  assign m_axi_wdata[40] = \<const0> ;
  assign m_axi_wdata[39] = \<const0> ;
  assign m_axi_wdata[38] = \<const0> ;
  assign m_axi_wdata[37] = \<const0> ;
  assign m_axi_wdata[36] = \<const0> ;
  assign m_axi_wdata[35] = \<const0> ;
  assign m_axi_wdata[34] = \<const0> ;
  assign m_axi_wdata[33] = \<const0> ;
  assign m_axi_wdata[32] = \<const0> ;
  assign m_axi_wdata[31] = \<const0> ;
  assign m_axi_wdata[30] = \<const0> ;
  assign m_axi_wdata[29] = \<const0> ;
  assign m_axi_wdata[28] = \<const0> ;
  assign m_axi_wdata[27] = \<const0> ;
  assign m_axi_wdata[26] = \<const0> ;
  assign m_axi_wdata[25] = \<const0> ;
  assign m_axi_wdata[24] = \<const0> ;
  assign m_axi_wdata[23] = \<const0> ;
  assign m_axi_wdata[22] = \<const0> ;
  assign m_axi_wdata[21] = \<const0> ;
  assign m_axi_wdata[20] = \<const0> ;
  assign m_axi_wdata[19] = \<const0> ;
  assign m_axi_wdata[18] = \<const0> ;
  assign m_axi_wdata[17] = \<const0> ;
  assign m_axi_wdata[16] = \<const0> ;
  assign m_axi_wdata[15] = \<const0> ;
  assign m_axi_wdata[14] = \<const0> ;
  assign m_axi_wdata[13] = \<const0> ;
  assign m_axi_wdata[12] = \<const0> ;
  assign m_axi_wdata[11] = \<const0> ;
  assign m_axi_wdata[10] = \<const0> ;
  assign m_axi_wdata[9] = \<const0> ;
  assign m_axi_wdata[8] = \<const0> ;
  assign m_axi_wdata[7] = \<const0> ;
  assign m_axi_wdata[6] = \<const0> ;
  assign m_axi_wdata[5] = \<const0> ;
  assign m_axi_wdata[4] = \<const0> ;
  assign m_axi_wdata[3] = \<const0> ;
  assign m_axi_wdata[2] = \<const0> ;
  assign m_axi_wdata[1] = \<const0> ;
  assign m_axi_wdata[0] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast = \<const0> ;
  assign m_axi_wstrb[7] = \<const0> ;
  assign m_axi_wstrb[6] = \<const0> ;
  assign m_axi_wstrb[5] = \<const0> ;
  assign m_axi_wstrb[4] = \<const0> ;
  assign m_axi_wstrb[3] = \<const0> ;
  assign m_axi_wstrb[2] = \<const0> ;
  assign m_axi_wstrb[1] = \<const0> ;
  assign m_axi_wstrb[0] = \<const0> ;
  assign m_axi_wuser[0] = \<const0> ;
  assign m_axi_wvalid = \<const0> ;
  assign m_axis_tdata[7] = \<const0> ;
  assign m_axis_tdata[6] = \<const0> ;
  assign m_axis_tdata[5] = \<const0> ;
  assign m_axis_tdata[4] = \<const0> ;
  assign m_axis_tdata[3] = \<const0> ;
  assign m_axis_tdata[2] = \<const0> ;
  assign m_axis_tdata[1] = \<const0> ;
  assign m_axis_tdata[0] = \<const0> ;
  assign m_axis_tdest[0] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tkeep[0] = \<const0> ;
  assign m_axis_tlast = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign m_axis_tuser[3] = \<const0> ;
  assign m_axis_tuser[2] = \<const0> ;
  assign m_axis_tuser[1] = \<const0> ;
  assign m_axis_tuser[0] = \<const0> ;
  assign m_axis_tvalid = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[8] = \<const0> ;
  assign rd_data_count[7] = \<const0> ;
  assign rd_data_count[6] = \<const0> ;
  assign rd_data_count[5] = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_rdata[63] = \<const0> ;
  assign s_axi_rdata[62] = \<const0> ;
  assign s_axi_rdata[61] = \<const0> ;
  assign s_axi_rdata[60] = \<const0> ;
  assign s_axi_rdata[59] = \<const0> ;
  assign s_axi_rdata[58] = \<const0> ;
  assign s_axi_rdata[57] = \<const0> ;
  assign s_axi_rdata[56] = \<const0> ;
  assign s_axi_rdata[55] = \<const0> ;
  assign s_axi_rdata[54] = \<const0> ;
  assign s_axi_rdata[53] = \<const0> ;
  assign s_axi_rdata[52] = \<const0> ;
  assign s_axi_rdata[51] = \<const0> ;
  assign s_axi_rdata[50] = \<const0> ;
  assign s_axi_rdata[49] = \<const0> ;
  assign s_axi_rdata[48] = \<const0> ;
  assign s_axi_rdata[47] = \<const0> ;
  assign s_axi_rdata[46] = \<const0> ;
  assign s_axi_rdata[45] = \<const0> ;
  assign s_axi_rdata[44] = \<const0> ;
  assign s_axi_rdata[43] = \<const0> ;
  assign s_axi_rdata[42] = \<const0> ;
  assign s_axi_rdata[41] = \<const0> ;
  assign s_axi_rdata[40] = \<const0> ;
  assign s_axi_rdata[39] = \<const0> ;
  assign s_axi_rdata[38] = \<const0> ;
  assign s_axi_rdata[37] = \<const0> ;
  assign s_axi_rdata[36] = \<const0> ;
  assign s_axi_rdata[35] = \<const0> ;
  assign s_axi_rdata[34] = \<const0> ;
  assign s_axi_rdata[33] = \<const0> ;
  assign s_axi_rdata[32] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign s_axis_tready = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign valid = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[8] = \<const0> ;
  assign wr_data_count[7] = \<const0> ;
  assign wr_data_count[6] = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4_synth inst_fifo_gen
       (.almost_empty(almost_empty),
        .almost_full(almost_full),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg (rd_rst_busy),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .rst(rst),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* C_ADD_NGC_CONSTRAINT = "0" *) (* C_APPLICATION_TYPE_AXIS = "0" *) (* C_APPLICATION_TYPE_RACH = "0" *) 
(* C_APPLICATION_TYPE_RDCH = "0" *) (* C_APPLICATION_TYPE_WACH = "0" *) (* C_APPLICATION_TYPE_WDCH = "0" *) 
(* C_APPLICATION_TYPE_WRCH = "0" *) (* C_AXIS_TDATA_WIDTH = "8" *) (* C_AXIS_TDEST_WIDTH = "1" *) 
(* C_AXIS_TID_WIDTH = "1" *) (* C_AXIS_TKEEP_WIDTH = "1" *) (* C_AXIS_TSTRB_WIDTH = "1" *) 
(* C_AXIS_TUSER_WIDTH = "4" *) (* C_AXIS_TYPE = "0" *) (* C_AXI_ADDR_WIDTH = "32" *) 
(* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) (* C_AXI_BUSER_WIDTH = "1" *) 
(* C_AXI_DATA_WIDTH = "64" *) (* C_AXI_ID_WIDTH = "1" *) (* C_AXI_LEN_WIDTH = "8" *) 
(* C_AXI_LOCK_WIDTH = "1" *) (* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_TYPE = "1" *) 
(* C_AXI_WUSER_WIDTH = "1" *) (* C_COMMON_CLOCK = "0" *) (* C_COUNT_TYPE = "0" *) 
(* C_DATA_COUNT_WIDTH = "9" *) (* C_DEFAULT_VALUE = "BlankString" *) (* C_DIN_WIDTH = "8" *) 
(* C_DIN_WIDTH_AXIS = "1" *) (* C_DIN_WIDTH_RACH = "32" *) (* C_DIN_WIDTH_RDCH = "64" *) 
(* C_DIN_WIDTH_WACH = "1" *) (* C_DIN_WIDTH_WDCH = "64" *) (* C_DIN_WIDTH_WRCH = "2" *) 
(* C_DOUT_RST_VAL = "0" *) (* C_DOUT_WIDTH = "8" *) (* C_ENABLE_RLOCS = "0" *) 
(* C_ENABLE_RST_SYNC = "1" *) (* C_EN_SAFETY_CKT = "1" *) (* C_ERROR_INJECTION_TYPE = "0" *) 
(* C_ERROR_INJECTION_TYPE_AXIS = "0" *) (* C_ERROR_INJECTION_TYPE_RACH = "0" *) (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
(* C_ERROR_INJECTION_TYPE_WACH = "0" *) (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
(* C_FAMILY = "zynq" *) (* C_FULL_FLAGS_RST_VAL = "1" *) (* C_HAS_ALMOST_EMPTY = "1" *) 
(* C_HAS_ALMOST_FULL = "1" *) (* C_HAS_AXIS_TDATA = "1" *) (* C_HAS_AXIS_TDEST = "0" *) 
(* C_HAS_AXIS_TID = "0" *) (* C_HAS_AXIS_TKEEP = "0" *) (* C_HAS_AXIS_TLAST = "0" *) 
(* C_HAS_AXIS_TREADY = "1" *) (* C_HAS_AXIS_TSTRB = "0" *) (* C_HAS_AXIS_TUSER = "1" *) 
(* C_HAS_AXI_ARUSER = "0" *) (* C_HAS_AXI_AWUSER = "0" *) (* C_HAS_AXI_BUSER = "0" *) 
(* C_HAS_AXI_ID = "0" *) (* C_HAS_AXI_RD_CHANNEL = "1" *) (* C_HAS_AXI_RUSER = "0" *) 
(* C_HAS_AXI_WR_CHANNEL = "1" *) (* C_HAS_AXI_WUSER = "0" *) (* C_HAS_BACKUP = "0" *) 
(* C_HAS_DATA_COUNT = "0" *) (* C_HAS_DATA_COUNTS_AXIS = "0" *) (* C_HAS_DATA_COUNTS_RACH = "0" *) 
(* C_HAS_DATA_COUNTS_RDCH = "0" *) (* C_HAS_DATA_COUNTS_WACH = "0" *) (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
(* C_HAS_DATA_COUNTS_WRCH = "0" *) (* C_HAS_INT_CLK = "0" *) (* C_HAS_MASTER_CE = "0" *) 
(* C_HAS_MEMINIT_FILE = "0" *) (* C_HAS_OVERFLOW = "0" *) (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
(* C_HAS_PROG_FLAGS_RACH = "0" *) (* C_HAS_PROG_FLAGS_RDCH = "0" *) (* C_HAS_PROG_FLAGS_WACH = "0" *) 
(* C_HAS_PROG_FLAGS_WDCH = "0" *) (* C_HAS_PROG_FLAGS_WRCH = "0" *) (* C_HAS_RD_DATA_COUNT = "0" *) 
(* C_HAS_RD_RST = "0" *) (* C_HAS_RST = "1" *) (* C_HAS_SLAVE_CE = "0" *) 
(* C_HAS_SRST = "0" *) (* C_HAS_UNDERFLOW = "0" *) (* C_HAS_VALID = "0" *) 
(* C_HAS_WR_ACK = "0" *) (* C_HAS_WR_DATA_COUNT = "0" *) (* C_HAS_WR_RST = "0" *) 
(* C_IMPLEMENTATION_TYPE = "2" *) (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
(* C_IMPLEMENTATION_TYPE_RDCH = "1" *) (* C_IMPLEMENTATION_TYPE_WACH = "1" *) (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
(* C_IMPLEMENTATION_TYPE_WRCH = "1" *) (* C_INIT_WR_PNTR_VAL = "0" *) (* C_INTERFACE_TYPE = "0" *) 
(* C_MEMORY_TYPE = "1" *) (* C_MIF_FILE_NAME = "BlankString" *) (* C_MSGON_VAL = "1" *) 
(* C_OPTIMIZATION_MODE = "0" *) (* C_OVERFLOW_LOW = "0" *) (* C_POWER_SAVING_MODE = "0" *) 
(* C_PRELOAD_LATENCY = "1" *) (* C_PRELOAD_REGS = "0" *) (* C_PRIM_FIFO_TYPE = "512x36" *) 
(* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
(* C_PRIM_FIFO_TYPE_WACH = "512x36" *) (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) (* C_PROG_EMPTY_TYPE = "0" *) 
(* C_PROG_EMPTY_TYPE_AXIS = "0" *) (* C_PROG_EMPTY_TYPE_RACH = "0" *) (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
(* C_PROG_EMPTY_TYPE_WACH = "0" *) (* C_PROG_EMPTY_TYPE_WDCH = "0" *) (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL = "509" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) (* C_PROG_FULL_THRESH_NEGATE_VAL = "508" *) (* C_PROG_FULL_TYPE = "0" *) 
(* C_PROG_FULL_TYPE_AXIS = "0" *) (* C_PROG_FULL_TYPE_RACH = "0" *) (* C_PROG_FULL_TYPE_RDCH = "0" *) 
(* C_PROG_FULL_TYPE_WACH = "0" *) (* C_PROG_FULL_TYPE_WDCH = "0" *) (* C_PROG_FULL_TYPE_WRCH = "0" *) 
(* C_RACH_TYPE = "0" *) (* C_RDCH_TYPE = "0" *) (* C_RD_DATA_COUNT_WIDTH = "9" *) 
(* C_RD_DEPTH = "512" *) (* C_RD_FREQ = "1" *) (* C_RD_PNTR_WIDTH = "9" *) 
(* C_REG_SLICE_MODE_AXIS = "0" *) (* C_REG_SLICE_MODE_RACH = "0" *) (* C_REG_SLICE_MODE_RDCH = "0" *) 
(* C_REG_SLICE_MODE_WACH = "0" *) (* C_REG_SLICE_MODE_WDCH = "0" *) (* C_REG_SLICE_MODE_WRCH = "0" *) 
(* C_SELECT_XPM = "0" *) (* C_SYNCHRONIZER_STAGE = "2" *) (* C_UNDERFLOW_LOW = "0" *) 
(* C_USE_COMMON_OVERFLOW = "0" *) (* C_USE_COMMON_UNDERFLOW = "0" *) (* C_USE_DEFAULT_SETTINGS = "0" *) 
(* C_USE_DOUT_RST = "1" *) (* C_USE_ECC = "0" *) (* C_USE_ECC_AXIS = "0" *) 
(* C_USE_ECC_RACH = "0" *) (* C_USE_ECC_RDCH = "0" *) (* C_USE_ECC_WACH = "0" *) 
(* C_USE_ECC_WDCH = "0" *) (* C_USE_ECC_WRCH = "0" *) (* C_USE_EMBEDDED_REG = "0" *) 
(* C_USE_FIFO16_FLAGS = "0" *) (* C_USE_FWFT_DATA_COUNT = "0" *) (* C_USE_PIPELINE_REG = "0" *) 
(* C_VALID_LOW = "0" *) (* C_WACH_TYPE = "0" *) (* C_WDCH_TYPE = "0" *) 
(* C_WRCH_TYPE = "0" *) (* C_WR_ACK_LOW = "0" *) (* C_WR_DATA_COUNT_WIDTH = "9" *) 
(* C_WR_DEPTH = "512" *) (* C_WR_DEPTH_AXIS = "1024" *) (* C_WR_DEPTH_RACH = "16" *) 
(* C_WR_DEPTH_RDCH = "1024" *) (* C_WR_DEPTH_WACH = "16" *) (* C_WR_DEPTH_WDCH = "1024" *) 
(* C_WR_DEPTH_WRCH = "16" *) (* C_WR_FREQ = "1" *) (* C_WR_PNTR_WIDTH = "9" *) 
(* C_WR_PNTR_WIDTH_AXIS = "10" *) (* C_WR_PNTR_WIDTH_RACH = "4" *) (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
(* C_WR_PNTR_WIDTH_WACH = "4" *) (* C_WR_PNTR_WIDTH_WDCH = "10" *) (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
(* C_WR_RESPONSE_LATENCY = "1" *) (* ORIG_REF_NAME = "fifo_generator_v13_2_4" *) 
module Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1
   (backup,
    backup_marker,
    clk,
    rst,
    srst,
    wr_clk,
    wr_rst,
    rd_clk,
    rd_rst,
    din,
    wr_en,
    rd_en,
    prog_empty_thresh,
    prog_empty_thresh_assert,
    prog_empty_thresh_negate,
    prog_full_thresh,
    prog_full_thresh_assert,
    prog_full_thresh_negate,
    int_clk,
    injectdbiterr,
    injectsbiterr,
    sleep,
    dout,
    full,
    almost_full,
    wr_ack,
    overflow,
    empty,
    almost_empty,
    valid,
    underflow,
    data_count,
    rd_data_count,
    wr_data_count,
    prog_full,
    prog_empty,
    sbiterr,
    dbiterr,
    wr_rst_busy,
    rd_rst_busy,
    m_aclk,
    s_aclk,
    s_aresetn,
    m_aclk_en,
    s_aclk_en,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awregion,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awregion,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arregion,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arregion,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    axi_aw_injectsbiterr,
    axi_aw_injectdbiterr,
    axi_aw_prog_full_thresh,
    axi_aw_prog_empty_thresh,
    axi_aw_data_count,
    axi_aw_wr_data_count,
    axi_aw_rd_data_count,
    axi_aw_sbiterr,
    axi_aw_dbiterr,
    axi_aw_overflow,
    axi_aw_underflow,
    axi_aw_prog_full,
    axi_aw_prog_empty,
    axi_w_injectsbiterr,
    axi_w_injectdbiterr,
    axi_w_prog_full_thresh,
    axi_w_prog_empty_thresh,
    axi_w_data_count,
    axi_w_wr_data_count,
    axi_w_rd_data_count,
    axi_w_sbiterr,
    axi_w_dbiterr,
    axi_w_overflow,
    axi_w_underflow,
    axi_w_prog_full,
    axi_w_prog_empty,
    axi_b_injectsbiterr,
    axi_b_injectdbiterr,
    axi_b_prog_full_thresh,
    axi_b_prog_empty_thresh,
    axi_b_data_count,
    axi_b_wr_data_count,
    axi_b_rd_data_count,
    axi_b_sbiterr,
    axi_b_dbiterr,
    axi_b_overflow,
    axi_b_underflow,
    axi_b_prog_full,
    axi_b_prog_empty,
    axi_ar_injectsbiterr,
    axi_ar_injectdbiterr,
    axi_ar_prog_full_thresh,
    axi_ar_prog_empty_thresh,
    axi_ar_data_count,
    axi_ar_wr_data_count,
    axi_ar_rd_data_count,
    axi_ar_sbiterr,
    axi_ar_dbiterr,
    axi_ar_overflow,
    axi_ar_underflow,
    axi_ar_prog_full,
    axi_ar_prog_empty,
    axi_r_injectsbiterr,
    axi_r_injectdbiterr,
    axi_r_prog_full_thresh,
    axi_r_prog_empty_thresh,
    axi_r_data_count,
    axi_r_wr_data_count,
    axi_r_rd_data_count,
    axi_r_sbiterr,
    axi_r_dbiterr,
    axi_r_overflow,
    axi_r_underflow,
    axi_r_prog_full,
    axi_r_prog_empty,
    axis_injectsbiterr,
    axis_injectdbiterr,
    axis_prog_full_thresh,
    axis_prog_empty_thresh,
    axis_data_count,
    axis_wr_data_count,
    axis_rd_data_count,
    axis_sbiterr,
    axis_dbiterr,
    axis_overflow,
    axis_underflow,
    axis_prog_full,
    axis_prog_empty);
  input backup;
  input backup_marker;
  input clk;
  input rst;
  input srst;
  input wr_clk;
  input wr_rst;
  input rd_clk;
  input rd_rst;
  input [7:0]din;
  input wr_en;
  input rd_en;
  input [8:0]prog_empty_thresh;
  input [8:0]prog_empty_thresh_assert;
  input [8:0]prog_empty_thresh_negate;
  input [8:0]prog_full_thresh;
  input [8:0]prog_full_thresh_assert;
  input [8:0]prog_full_thresh_negate;
  input int_clk;
  input injectdbiterr;
  input injectsbiterr;
  input sleep;
  output [7:0]dout;
  output full;
  output almost_full;
  output wr_ack;
  output overflow;
  output empty;
  output almost_empty;
  output valid;
  output underflow;
  output [8:0]data_count;
  output [8:0]rd_data_count;
  output [8:0]wr_data_count;
  output prog_full;
  output prog_empty;
  output sbiterr;
  output dbiterr;
  output wr_rst_busy;
  output rd_rst_busy;
  input m_aclk;
  input s_aclk;
  input s_aresetn;
  input m_aclk_en;
  input s_aclk_en;
  input [0:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input [3:0]s_axi_awregion;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [0:0]s_axi_wid;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  output [0:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output [3:0]m_axi_awregion;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [0:0]m_axi_wid;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  input [0:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input [3:0]s_axi_arregion;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [0:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output [3:0]m_axi_arregion;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [0:0]m_axi_rid;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;
  input s_axis_tvalid;
  output s_axis_tready;
  input [7:0]s_axis_tdata;
  input [0:0]s_axis_tstrb;
  input [0:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [3:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [7:0]m_axis_tdata;
  output [0:0]m_axis_tstrb;
  output [0:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [3:0]m_axis_tuser;
  input axi_aw_injectsbiterr;
  input axi_aw_injectdbiterr;
  input [3:0]axi_aw_prog_full_thresh;
  input [3:0]axi_aw_prog_empty_thresh;
  output [4:0]axi_aw_data_count;
  output [4:0]axi_aw_wr_data_count;
  output [4:0]axi_aw_rd_data_count;
  output axi_aw_sbiterr;
  output axi_aw_dbiterr;
  output axi_aw_overflow;
  output axi_aw_underflow;
  output axi_aw_prog_full;
  output axi_aw_prog_empty;
  input axi_w_injectsbiterr;
  input axi_w_injectdbiterr;
  input [9:0]axi_w_prog_full_thresh;
  input [9:0]axi_w_prog_empty_thresh;
  output [10:0]axi_w_data_count;
  output [10:0]axi_w_wr_data_count;
  output [10:0]axi_w_rd_data_count;
  output axi_w_sbiterr;
  output axi_w_dbiterr;
  output axi_w_overflow;
  output axi_w_underflow;
  output axi_w_prog_full;
  output axi_w_prog_empty;
  input axi_b_injectsbiterr;
  input axi_b_injectdbiterr;
  input [3:0]axi_b_prog_full_thresh;
  input [3:0]axi_b_prog_empty_thresh;
  output [4:0]axi_b_data_count;
  output [4:0]axi_b_wr_data_count;
  output [4:0]axi_b_rd_data_count;
  output axi_b_sbiterr;
  output axi_b_dbiterr;
  output axi_b_overflow;
  output axi_b_underflow;
  output axi_b_prog_full;
  output axi_b_prog_empty;
  input axi_ar_injectsbiterr;
  input axi_ar_injectdbiterr;
  input [3:0]axi_ar_prog_full_thresh;
  input [3:0]axi_ar_prog_empty_thresh;
  output [4:0]axi_ar_data_count;
  output [4:0]axi_ar_wr_data_count;
  output [4:0]axi_ar_rd_data_count;
  output axi_ar_sbiterr;
  output axi_ar_dbiterr;
  output axi_ar_overflow;
  output axi_ar_underflow;
  output axi_ar_prog_full;
  output axi_ar_prog_empty;
  input axi_r_injectsbiterr;
  input axi_r_injectdbiterr;
  input [9:0]axi_r_prog_full_thresh;
  input [9:0]axi_r_prog_empty_thresh;
  output [10:0]axi_r_data_count;
  output [10:0]axi_r_wr_data_count;
  output [10:0]axi_r_rd_data_count;
  output axi_r_sbiterr;
  output axi_r_dbiterr;
  output axi_r_overflow;
  output axi_r_underflow;
  output axi_r_prog_full;
  output axi_r_prog_empty;
  input axis_injectsbiterr;
  input axis_injectdbiterr;
  input [9:0]axis_prog_full_thresh;
  input [9:0]axis_prog_empty_thresh;
  output [10:0]axis_data_count;
  output [10:0]axis_wr_data_count;
  output [10:0]axis_rd_data_count;
  output axis_sbiterr;
  output axis_dbiterr;
  output axis_overflow;
  output axis_underflow;
  output axis_prog_full;
  output axis_prog_empty;

  wire \<const0> ;
  wire \<const1> ;
  wire almost_empty;
  wire almost_full;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rd_rst_busy;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;

  assign axi_ar_data_count[4] = \<const0> ;
  assign axi_ar_data_count[3] = \<const0> ;
  assign axi_ar_data_count[2] = \<const0> ;
  assign axi_ar_data_count[1] = \<const0> ;
  assign axi_ar_data_count[0] = \<const0> ;
  assign axi_ar_dbiterr = \<const0> ;
  assign axi_ar_overflow = \<const0> ;
  assign axi_ar_prog_empty = \<const1> ;
  assign axi_ar_prog_full = \<const0> ;
  assign axi_ar_rd_data_count[4] = \<const0> ;
  assign axi_ar_rd_data_count[3] = \<const0> ;
  assign axi_ar_rd_data_count[2] = \<const0> ;
  assign axi_ar_rd_data_count[1] = \<const0> ;
  assign axi_ar_rd_data_count[0] = \<const0> ;
  assign axi_ar_sbiterr = \<const0> ;
  assign axi_ar_underflow = \<const0> ;
  assign axi_ar_wr_data_count[4] = \<const0> ;
  assign axi_ar_wr_data_count[3] = \<const0> ;
  assign axi_ar_wr_data_count[2] = \<const0> ;
  assign axi_ar_wr_data_count[1] = \<const0> ;
  assign axi_ar_wr_data_count[0] = \<const0> ;
  assign axi_aw_data_count[4] = \<const0> ;
  assign axi_aw_data_count[3] = \<const0> ;
  assign axi_aw_data_count[2] = \<const0> ;
  assign axi_aw_data_count[1] = \<const0> ;
  assign axi_aw_data_count[0] = \<const0> ;
  assign axi_aw_dbiterr = \<const0> ;
  assign axi_aw_overflow = \<const0> ;
  assign axi_aw_prog_empty = \<const1> ;
  assign axi_aw_prog_full = \<const0> ;
  assign axi_aw_rd_data_count[4] = \<const0> ;
  assign axi_aw_rd_data_count[3] = \<const0> ;
  assign axi_aw_rd_data_count[2] = \<const0> ;
  assign axi_aw_rd_data_count[1] = \<const0> ;
  assign axi_aw_rd_data_count[0] = \<const0> ;
  assign axi_aw_sbiterr = \<const0> ;
  assign axi_aw_underflow = \<const0> ;
  assign axi_aw_wr_data_count[4] = \<const0> ;
  assign axi_aw_wr_data_count[3] = \<const0> ;
  assign axi_aw_wr_data_count[2] = \<const0> ;
  assign axi_aw_wr_data_count[1] = \<const0> ;
  assign axi_aw_wr_data_count[0] = \<const0> ;
  assign axi_b_data_count[4] = \<const0> ;
  assign axi_b_data_count[3] = \<const0> ;
  assign axi_b_data_count[2] = \<const0> ;
  assign axi_b_data_count[1] = \<const0> ;
  assign axi_b_data_count[0] = \<const0> ;
  assign axi_b_dbiterr = \<const0> ;
  assign axi_b_overflow = \<const0> ;
  assign axi_b_prog_empty = \<const1> ;
  assign axi_b_prog_full = \<const0> ;
  assign axi_b_rd_data_count[4] = \<const0> ;
  assign axi_b_rd_data_count[3] = \<const0> ;
  assign axi_b_rd_data_count[2] = \<const0> ;
  assign axi_b_rd_data_count[1] = \<const0> ;
  assign axi_b_rd_data_count[0] = \<const0> ;
  assign axi_b_sbiterr = \<const0> ;
  assign axi_b_underflow = \<const0> ;
  assign axi_b_wr_data_count[4] = \<const0> ;
  assign axi_b_wr_data_count[3] = \<const0> ;
  assign axi_b_wr_data_count[2] = \<const0> ;
  assign axi_b_wr_data_count[1] = \<const0> ;
  assign axi_b_wr_data_count[0] = \<const0> ;
  assign axi_r_data_count[10] = \<const0> ;
  assign axi_r_data_count[9] = \<const0> ;
  assign axi_r_data_count[8] = \<const0> ;
  assign axi_r_data_count[7] = \<const0> ;
  assign axi_r_data_count[6] = \<const0> ;
  assign axi_r_data_count[5] = \<const0> ;
  assign axi_r_data_count[4] = \<const0> ;
  assign axi_r_data_count[3] = \<const0> ;
  assign axi_r_data_count[2] = \<const0> ;
  assign axi_r_data_count[1] = \<const0> ;
  assign axi_r_data_count[0] = \<const0> ;
  assign axi_r_dbiterr = \<const0> ;
  assign axi_r_overflow = \<const0> ;
  assign axi_r_prog_empty = \<const1> ;
  assign axi_r_prog_full = \<const0> ;
  assign axi_r_rd_data_count[10] = \<const0> ;
  assign axi_r_rd_data_count[9] = \<const0> ;
  assign axi_r_rd_data_count[8] = \<const0> ;
  assign axi_r_rd_data_count[7] = \<const0> ;
  assign axi_r_rd_data_count[6] = \<const0> ;
  assign axi_r_rd_data_count[5] = \<const0> ;
  assign axi_r_rd_data_count[4] = \<const0> ;
  assign axi_r_rd_data_count[3] = \<const0> ;
  assign axi_r_rd_data_count[2] = \<const0> ;
  assign axi_r_rd_data_count[1] = \<const0> ;
  assign axi_r_rd_data_count[0] = \<const0> ;
  assign axi_r_sbiterr = \<const0> ;
  assign axi_r_underflow = \<const0> ;
  assign axi_r_wr_data_count[10] = \<const0> ;
  assign axi_r_wr_data_count[9] = \<const0> ;
  assign axi_r_wr_data_count[8] = \<const0> ;
  assign axi_r_wr_data_count[7] = \<const0> ;
  assign axi_r_wr_data_count[6] = \<const0> ;
  assign axi_r_wr_data_count[5] = \<const0> ;
  assign axi_r_wr_data_count[4] = \<const0> ;
  assign axi_r_wr_data_count[3] = \<const0> ;
  assign axi_r_wr_data_count[2] = \<const0> ;
  assign axi_r_wr_data_count[1] = \<const0> ;
  assign axi_r_wr_data_count[0] = \<const0> ;
  assign axi_w_data_count[10] = \<const0> ;
  assign axi_w_data_count[9] = \<const0> ;
  assign axi_w_data_count[8] = \<const0> ;
  assign axi_w_data_count[7] = \<const0> ;
  assign axi_w_data_count[6] = \<const0> ;
  assign axi_w_data_count[5] = \<const0> ;
  assign axi_w_data_count[4] = \<const0> ;
  assign axi_w_data_count[3] = \<const0> ;
  assign axi_w_data_count[2] = \<const0> ;
  assign axi_w_data_count[1] = \<const0> ;
  assign axi_w_data_count[0] = \<const0> ;
  assign axi_w_dbiterr = \<const0> ;
  assign axi_w_overflow = \<const0> ;
  assign axi_w_prog_empty = \<const1> ;
  assign axi_w_prog_full = \<const0> ;
  assign axi_w_rd_data_count[10] = \<const0> ;
  assign axi_w_rd_data_count[9] = \<const0> ;
  assign axi_w_rd_data_count[8] = \<const0> ;
  assign axi_w_rd_data_count[7] = \<const0> ;
  assign axi_w_rd_data_count[6] = \<const0> ;
  assign axi_w_rd_data_count[5] = \<const0> ;
  assign axi_w_rd_data_count[4] = \<const0> ;
  assign axi_w_rd_data_count[3] = \<const0> ;
  assign axi_w_rd_data_count[2] = \<const0> ;
  assign axi_w_rd_data_count[1] = \<const0> ;
  assign axi_w_rd_data_count[0] = \<const0> ;
  assign axi_w_sbiterr = \<const0> ;
  assign axi_w_underflow = \<const0> ;
  assign axi_w_wr_data_count[10] = \<const0> ;
  assign axi_w_wr_data_count[9] = \<const0> ;
  assign axi_w_wr_data_count[8] = \<const0> ;
  assign axi_w_wr_data_count[7] = \<const0> ;
  assign axi_w_wr_data_count[6] = \<const0> ;
  assign axi_w_wr_data_count[5] = \<const0> ;
  assign axi_w_wr_data_count[4] = \<const0> ;
  assign axi_w_wr_data_count[3] = \<const0> ;
  assign axi_w_wr_data_count[2] = \<const0> ;
  assign axi_w_wr_data_count[1] = \<const0> ;
  assign axi_w_wr_data_count[0] = \<const0> ;
  assign axis_data_count[10] = \<const0> ;
  assign axis_data_count[9] = \<const0> ;
  assign axis_data_count[8] = \<const0> ;
  assign axis_data_count[7] = \<const0> ;
  assign axis_data_count[6] = \<const0> ;
  assign axis_data_count[5] = \<const0> ;
  assign axis_data_count[4] = \<const0> ;
  assign axis_data_count[3] = \<const0> ;
  assign axis_data_count[2] = \<const0> ;
  assign axis_data_count[1] = \<const0> ;
  assign axis_data_count[0] = \<const0> ;
  assign axis_dbiterr = \<const0> ;
  assign axis_overflow = \<const0> ;
  assign axis_prog_empty = \<const1> ;
  assign axis_prog_full = \<const0> ;
  assign axis_rd_data_count[10] = \<const0> ;
  assign axis_rd_data_count[9] = \<const0> ;
  assign axis_rd_data_count[8] = \<const0> ;
  assign axis_rd_data_count[7] = \<const0> ;
  assign axis_rd_data_count[6] = \<const0> ;
  assign axis_rd_data_count[5] = \<const0> ;
  assign axis_rd_data_count[4] = \<const0> ;
  assign axis_rd_data_count[3] = \<const0> ;
  assign axis_rd_data_count[2] = \<const0> ;
  assign axis_rd_data_count[1] = \<const0> ;
  assign axis_rd_data_count[0] = \<const0> ;
  assign axis_sbiterr = \<const0> ;
  assign axis_underflow = \<const0> ;
  assign axis_wr_data_count[10] = \<const0> ;
  assign axis_wr_data_count[9] = \<const0> ;
  assign axis_wr_data_count[8] = \<const0> ;
  assign axis_wr_data_count[7] = \<const0> ;
  assign axis_wr_data_count[6] = \<const0> ;
  assign axis_wr_data_count[5] = \<const0> ;
  assign axis_wr_data_count[4] = \<const0> ;
  assign axis_wr_data_count[3] = \<const0> ;
  assign axis_wr_data_count[2] = \<const0> ;
  assign axis_wr_data_count[1] = \<const0> ;
  assign axis_wr_data_count[0] = \<const0> ;
  assign data_count[8] = \<const0> ;
  assign data_count[7] = \<const0> ;
  assign data_count[6] = \<const0> ;
  assign data_count[5] = \<const0> ;
  assign data_count[4] = \<const0> ;
  assign data_count[3] = \<const0> ;
  assign data_count[2] = \<const0> ;
  assign data_count[1] = \<const0> ;
  assign data_count[0] = \<const0> ;
  assign dbiterr = \<const0> ;
  assign m_axi_araddr[31] = \<const0> ;
  assign m_axi_araddr[30] = \<const0> ;
  assign m_axi_araddr[29] = \<const0> ;
  assign m_axi_araddr[28] = \<const0> ;
  assign m_axi_araddr[27] = \<const0> ;
  assign m_axi_araddr[26] = \<const0> ;
  assign m_axi_araddr[25] = \<const0> ;
  assign m_axi_araddr[24] = \<const0> ;
  assign m_axi_araddr[23] = \<const0> ;
  assign m_axi_araddr[22] = \<const0> ;
  assign m_axi_araddr[21] = \<const0> ;
  assign m_axi_araddr[20] = \<const0> ;
  assign m_axi_araddr[19] = \<const0> ;
  assign m_axi_araddr[18] = \<const0> ;
  assign m_axi_araddr[17] = \<const0> ;
  assign m_axi_araddr[16] = \<const0> ;
  assign m_axi_araddr[15] = \<const0> ;
  assign m_axi_araddr[14] = \<const0> ;
  assign m_axi_araddr[13] = \<const0> ;
  assign m_axi_araddr[12] = \<const0> ;
  assign m_axi_araddr[11] = \<const0> ;
  assign m_axi_araddr[10] = \<const0> ;
  assign m_axi_araddr[9] = \<const0> ;
  assign m_axi_araddr[8] = \<const0> ;
  assign m_axi_araddr[7] = \<const0> ;
  assign m_axi_araddr[6] = \<const0> ;
  assign m_axi_araddr[5] = \<const0> ;
  assign m_axi_araddr[4] = \<const0> ;
  assign m_axi_araddr[3] = \<const0> ;
  assign m_axi_araddr[2] = \<const0> ;
  assign m_axi_araddr[1] = \<const0> ;
  assign m_axi_araddr[0] = \<const0> ;
  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const0> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const0> ;
  assign m_axi_arcache[0] = \<const0> ;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arlock[0] = \<const0> ;
  assign m_axi_arprot[2] = \<const0> ;
  assign m_axi_arprot[1] = \<const0> ;
  assign m_axi_arprot[0] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_arvalid = \<const0> ;
  assign m_axi_awaddr[31] = \<const0> ;
  assign m_axi_awaddr[30] = \<const0> ;
  assign m_axi_awaddr[29] = \<const0> ;
  assign m_axi_awaddr[28] = \<const0> ;
  assign m_axi_awaddr[27] = \<const0> ;
  assign m_axi_awaddr[26] = \<const0> ;
  assign m_axi_awaddr[25] = \<const0> ;
  assign m_axi_awaddr[24] = \<const0> ;
  assign m_axi_awaddr[23] = \<const0> ;
  assign m_axi_awaddr[22] = \<const0> ;
  assign m_axi_awaddr[21] = \<const0> ;
  assign m_axi_awaddr[20] = \<const0> ;
  assign m_axi_awaddr[19] = \<const0> ;
  assign m_axi_awaddr[18] = \<const0> ;
  assign m_axi_awaddr[17] = \<const0> ;
  assign m_axi_awaddr[16] = \<const0> ;
  assign m_axi_awaddr[15] = \<const0> ;
  assign m_axi_awaddr[14] = \<const0> ;
  assign m_axi_awaddr[13] = \<const0> ;
  assign m_axi_awaddr[12] = \<const0> ;
  assign m_axi_awaddr[11] = \<const0> ;
  assign m_axi_awaddr[10] = \<const0> ;
  assign m_axi_awaddr[9] = \<const0> ;
  assign m_axi_awaddr[8] = \<const0> ;
  assign m_axi_awaddr[7] = \<const0> ;
  assign m_axi_awaddr[6] = \<const0> ;
  assign m_axi_awaddr[5] = \<const0> ;
  assign m_axi_awaddr[4] = \<const0> ;
  assign m_axi_awaddr[3] = \<const0> ;
  assign m_axi_awaddr[2] = \<const0> ;
  assign m_axi_awaddr[1] = \<const0> ;
  assign m_axi_awaddr[0] = \<const0> ;
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \<const0> ;
  assign m_axi_awcache[3] = \<const0> ;
  assign m_axi_awcache[2] = \<const0> ;
  assign m_axi_awcache[1] = \<const0> ;
  assign m_axi_awcache[0] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlen[7] = \<const0> ;
  assign m_axi_awlen[6] = \<const0> ;
  assign m_axi_awlen[5] = \<const0> ;
  assign m_axi_awlen[4] = \<const0> ;
  assign m_axi_awlen[3] = \<const0> ;
  assign m_axi_awlen[2] = \<const0> ;
  assign m_axi_awlen[1] = \<const0> ;
  assign m_axi_awlen[0] = \<const0> ;
  assign m_axi_awlock[0] = \<const0> ;
  assign m_axi_awprot[2] = \<const0> ;
  assign m_axi_awprot[1] = \<const0> ;
  assign m_axi_awprot[0] = \<const0> ;
  assign m_axi_awqos[3] = \<const0> ;
  assign m_axi_awqos[2] = \<const0> ;
  assign m_axi_awqos[1] = \<const0> ;
  assign m_axi_awqos[0] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \<const0> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_awvalid = \<const0> ;
  assign m_axi_bready = \<const0> ;
  assign m_axi_rready = \<const0> ;
  assign m_axi_wdata[63] = \<const0> ;
  assign m_axi_wdata[62] = \<const0> ;
  assign m_axi_wdata[61] = \<const0> ;
  assign m_axi_wdata[60] = \<const0> ;
  assign m_axi_wdata[59] = \<const0> ;
  assign m_axi_wdata[58] = \<const0> ;
  assign m_axi_wdata[57] = \<const0> ;
  assign m_axi_wdata[56] = \<const0> ;
  assign m_axi_wdata[55] = \<const0> ;
  assign m_axi_wdata[54] = \<const0> ;
  assign m_axi_wdata[53] = \<const0> ;
  assign m_axi_wdata[52] = \<const0> ;
  assign m_axi_wdata[51] = \<const0> ;
  assign m_axi_wdata[50] = \<const0> ;
  assign m_axi_wdata[49] = \<const0> ;
  assign m_axi_wdata[48] = \<const0> ;
  assign m_axi_wdata[47] = \<const0> ;
  assign m_axi_wdata[46] = \<const0> ;
  assign m_axi_wdata[45] = \<const0> ;
  assign m_axi_wdata[44] = \<const0> ;
  assign m_axi_wdata[43] = \<const0> ;
  assign m_axi_wdata[42] = \<const0> ;
  assign m_axi_wdata[41] = \<const0> ;
  assign m_axi_wdata[40] = \<const0> ;
  assign m_axi_wdata[39] = \<const0> ;
  assign m_axi_wdata[38] = \<const0> ;
  assign m_axi_wdata[37] = \<const0> ;
  assign m_axi_wdata[36] = \<const0> ;
  assign m_axi_wdata[35] = \<const0> ;
  assign m_axi_wdata[34] = \<const0> ;
  assign m_axi_wdata[33] = \<const0> ;
  assign m_axi_wdata[32] = \<const0> ;
  assign m_axi_wdata[31] = \<const0> ;
  assign m_axi_wdata[30] = \<const0> ;
  assign m_axi_wdata[29] = \<const0> ;
  assign m_axi_wdata[28] = \<const0> ;
  assign m_axi_wdata[27] = \<const0> ;
  assign m_axi_wdata[26] = \<const0> ;
  assign m_axi_wdata[25] = \<const0> ;
  assign m_axi_wdata[24] = \<const0> ;
  assign m_axi_wdata[23] = \<const0> ;
  assign m_axi_wdata[22] = \<const0> ;
  assign m_axi_wdata[21] = \<const0> ;
  assign m_axi_wdata[20] = \<const0> ;
  assign m_axi_wdata[19] = \<const0> ;
  assign m_axi_wdata[18] = \<const0> ;
  assign m_axi_wdata[17] = \<const0> ;
  assign m_axi_wdata[16] = \<const0> ;
  assign m_axi_wdata[15] = \<const0> ;
  assign m_axi_wdata[14] = \<const0> ;
  assign m_axi_wdata[13] = \<const0> ;
  assign m_axi_wdata[12] = \<const0> ;
  assign m_axi_wdata[11] = \<const0> ;
  assign m_axi_wdata[10] = \<const0> ;
  assign m_axi_wdata[9] = \<const0> ;
  assign m_axi_wdata[8] = \<const0> ;
  assign m_axi_wdata[7] = \<const0> ;
  assign m_axi_wdata[6] = \<const0> ;
  assign m_axi_wdata[5] = \<const0> ;
  assign m_axi_wdata[4] = \<const0> ;
  assign m_axi_wdata[3] = \<const0> ;
  assign m_axi_wdata[2] = \<const0> ;
  assign m_axi_wdata[1] = \<const0> ;
  assign m_axi_wdata[0] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast = \<const0> ;
  assign m_axi_wstrb[7] = \<const0> ;
  assign m_axi_wstrb[6] = \<const0> ;
  assign m_axi_wstrb[5] = \<const0> ;
  assign m_axi_wstrb[4] = \<const0> ;
  assign m_axi_wstrb[3] = \<const0> ;
  assign m_axi_wstrb[2] = \<const0> ;
  assign m_axi_wstrb[1] = \<const0> ;
  assign m_axi_wstrb[0] = \<const0> ;
  assign m_axi_wuser[0] = \<const0> ;
  assign m_axi_wvalid = \<const0> ;
  assign m_axis_tdata[7] = \<const0> ;
  assign m_axis_tdata[6] = \<const0> ;
  assign m_axis_tdata[5] = \<const0> ;
  assign m_axis_tdata[4] = \<const0> ;
  assign m_axis_tdata[3] = \<const0> ;
  assign m_axis_tdata[2] = \<const0> ;
  assign m_axis_tdata[1] = \<const0> ;
  assign m_axis_tdata[0] = \<const0> ;
  assign m_axis_tdest[0] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tkeep[0] = \<const0> ;
  assign m_axis_tlast = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign m_axis_tuser[3] = \<const0> ;
  assign m_axis_tuser[2] = \<const0> ;
  assign m_axis_tuser[1] = \<const0> ;
  assign m_axis_tuser[0] = \<const0> ;
  assign m_axis_tvalid = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[8] = \<const0> ;
  assign rd_data_count[7] = \<const0> ;
  assign rd_data_count[6] = \<const0> ;
  assign rd_data_count[5] = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_rdata[63] = \<const0> ;
  assign s_axi_rdata[62] = \<const0> ;
  assign s_axi_rdata[61] = \<const0> ;
  assign s_axi_rdata[60] = \<const0> ;
  assign s_axi_rdata[59] = \<const0> ;
  assign s_axi_rdata[58] = \<const0> ;
  assign s_axi_rdata[57] = \<const0> ;
  assign s_axi_rdata[56] = \<const0> ;
  assign s_axi_rdata[55] = \<const0> ;
  assign s_axi_rdata[54] = \<const0> ;
  assign s_axi_rdata[53] = \<const0> ;
  assign s_axi_rdata[52] = \<const0> ;
  assign s_axi_rdata[51] = \<const0> ;
  assign s_axi_rdata[50] = \<const0> ;
  assign s_axi_rdata[49] = \<const0> ;
  assign s_axi_rdata[48] = \<const0> ;
  assign s_axi_rdata[47] = \<const0> ;
  assign s_axi_rdata[46] = \<const0> ;
  assign s_axi_rdata[45] = \<const0> ;
  assign s_axi_rdata[44] = \<const0> ;
  assign s_axi_rdata[43] = \<const0> ;
  assign s_axi_rdata[42] = \<const0> ;
  assign s_axi_rdata[41] = \<const0> ;
  assign s_axi_rdata[40] = \<const0> ;
  assign s_axi_rdata[39] = \<const0> ;
  assign s_axi_rdata[38] = \<const0> ;
  assign s_axi_rdata[37] = \<const0> ;
  assign s_axi_rdata[36] = \<const0> ;
  assign s_axi_rdata[35] = \<const0> ;
  assign s_axi_rdata[34] = \<const0> ;
  assign s_axi_rdata[33] = \<const0> ;
  assign s_axi_rdata[32] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign s_axis_tready = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign valid = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[8] = \<const0> ;
  assign wr_data_count[7] = \<const0> ;
  assign wr_data_count[6] = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4_synth__xdcDup__1 inst_fifo_gen
       (.almost_empty(almost_empty),
        .almost_full(almost_full),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg (rd_rst_busy),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .rst(rst),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v13_2_4_synth" *) 
module Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4_synth
   (\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ,
    wr_rst_busy,
    dout,
    empty,
    full,
    almost_full,
    almost_empty,
    wr_clk,
    rd_clk,
    rst,
    din,
    wr_en,
    rd_en);
  output \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;
  output wr_rst_busy;
  output [7:0]dout;
  output empty;
  output full;
  output almost_full;
  output almost_empty;
  input wr_clk;
  input rd_clk;
  input rst;
  input [7:0]din;
  input wr_en;
  input rd_en;

  wire almost_empty;
  wire almost_full;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;

  Zynq_Design_UART_V1_9_0_0_fifo_generator_top \gconvfifo.rf 
       (.SS(\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .almost_empty(almost_empty),
        .almost_full(almost_full),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .rst(rst),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v13_2_4_synth" *) 
module Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4_synth__xdcDup__1
   (\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ,
    wr_rst_busy,
    dout,
    empty,
    full,
    almost_full,
    almost_empty,
    wr_clk,
    rd_clk,
    rst,
    din,
    wr_en,
    rd_en);
  output \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;
  output wr_rst_busy;
  output [7:0]dout;
  output empty;
  output full;
  output almost_full;
  output almost_empty;
  input wr_clk;
  input rd_clk;
  input rst;
  input [7:0]din;
  input wr_en;
  input rd_en;

  wire almost_empty;
  wire almost_full;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;

  Zynq_Design_UART_V1_9_0_0_fifo_generator_top__xdcDup__1 \gconvfifo.rf 
       (.SS(\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg ),
        .almost_empty(almost_empty),
        .almost_full(almost_full),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .rst(rst),
        .wr_clk(wr_clk),
        .wr_en(wr_en),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* ORIG_REF_NAME = "memory" *) 
module Zynq_Design_UART_V1_9_0_0_memory
   (dout,
    POR_B,
    wr_clk,
    rd_clk,
    ram_rstram_b,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ,
    din,
    E,
    SS,
    FULL_FB,
    wr_en,
    rd_en,
    out);
  output [7:0]dout;
  output POR_B;
  input wr_clk;
  input rd_clk;
  input ram_rstram_b;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ;
  input [7:0]din;
  input [0:0]E;
  input [0:0]SS;
  input FULL_FB;
  input wr_en;
  input rd_en;
  input out;

  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ;
  wire [0:0]E;
  wire FULL_FB;
  wire POR_B;
  wire [0:0]SS;
  wire [7:0]din;
  wire [7:0]dout;
  wire out;
  wire ram_rstram_b;
  wire rd_clk;
  wire rd_en;
  wire wr_clk;
  wire wr_en;

  Zynq_Design_UART_V1_9_0_0_blk_mem_gen_v8_4_3 \gbm.gbmg.gbmga.ngecc.bmg 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ),
        .E(E),
        .FULL_FB(FULL_FB),
        .POR_B(POR_B),
        .SS(SS),
        .din(din),
        .dout(dout),
        .out(out),
        .ram_rstram_b(ram_rstram_b),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "memory" *) 
module Zynq_Design_UART_V1_9_0_0_memory_7
   (dout,
    POR_B,
    wr_clk,
    rd_clk,
    ram_rstram_b,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ,
    din,
    E,
    SS,
    FULL_FB,
    wr_en,
    rd_en,
    out);
  output [7:0]dout;
  output POR_B;
  input wr_clk;
  input rd_clk;
  input ram_rstram_b;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  input [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ;
  input [7:0]din;
  input [0:0]E;
  input [0:0]SS;
  input FULL_FB;
  input wr_en;
  input rd_en;
  input out;

  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  wire [8:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ;
  wire [0:0]E;
  wire FULL_FB;
  wire POR_B;
  wire [0:0]SS;
  wire [7:0]din;
  wire [7:0]dout;
  wire out;
  wire ram_rstram_b;
  wire rd_clk;
  wire rd_en;
  wire wr_clk;
  wire wr_en;

  Zynq_Design_UART_V1_9_0_0_blk_mem_gen_v8_4_3_8 \gbm.gbmg.gbmga.ngecc.bmg 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0 ),
        .E(E),
        .FULL_FB(FULL_FB),
        .POR_B(POR_B),
        .SS(SS),
        .din(din),
        .dout(dout),
        .out(out),
        .ram_rstram_b(ram_rstram_b),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "rd_bin_cntr" *) 
module Zynq_Design_UART_V1_9_0_0_rd_bin_cntr
   (Q,
    v1_reg,
    \gc1.count_d2_reg[8]_0 ,
    v1_reg_0,
    v1_reg_1,
    \gc1.count_d1_reg[8]_0 ,
    WR_PNTR_RD,
    SS,
    E,
    rd_clk);
  output [0:0]Q;
  output [3:0]v1_reg;
  output [8:0]\gc1.count_d2_reg[8]_0 ;
  output [3:0]v1_reg_0;
  output [3:0]v1_reg_1;
  output [0:0]\gc1.count_d1_reg[8]_0 ;
  input [7:0]WR_PNTR_RD;
  input [0:0]SS;
  input [0:0]E;
  input rd_clk;

  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SS;
  wire [7:0]WR_PNTR_RD;
  wire \gc1.count[8]_i_2_n_0 ;
  wire [0:0]\gc1.count_d1_reg[8]_0 ;
  wire [8:0]\gc1.count_d2_reg[8]_0 ;
  wire [8:0]plusOp__0;
  wire rd_clk;
  wire [7:0]rd_pntr_plus1;
  wire [7:0]rd_pntr_plus2;
  wire [3:0]v1_reg;
  wire [3:0]v1_reg_0;
  wire [3:0]v1_reg_1;

  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gc1.count[0]_i_1 
       (.I0(rd_pntr_plus2[0]),
        .O(plusOp__0[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \gc1.count[1]_i_1 
       (.I0(rd_pntr_plus2[0]),
        .I1(rd_pntr_plus2[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gc1.count[2]_i_1 
       (.I0(rd_pntr_plus2[0]),
        .I1(rd_pntr_plus2[1]),
        .I2(rd_pntr_plus2[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gc1.count[3]_i_1 
       (.I0(rd_pntr_plus2[1]),
        .I1(rd_pntr_plus2[0]),
        .I2(rd_pntr_plus2[2]),
        .I3(rd_pntr_plus2[3]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gc1.count[4]_i_1 
       (.I0(rd_pntr_plus2[2]),
        .I1(rd_pntr_plus2[0]),
        .I2(rd_pntr_plus2[1]),
        .I3(rd_pntr_plus2[3]),
        .I4(rd_pntr_plus2[4]),
        .O(plusOp__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \gc1.count[5]_i_1 
       (.I0(rd_pntr_plus2[3]),
        .I1(rd_pntr_plus2[1]),
        .I2(rd_pntr_plus2[0]),
        .I3(rd_pntr_plus2[2]),
        .I4(rd_pntr_plus2[4]),
        .I5(rd_pntr_plus2[5]),
        .O(plusOp__0[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \gc1.count[6]_i_1 
       (.I0(\gc1.count[8]_i_2_n_0 ),
        .I1(rd_pntr_plus2[6]),
        .O(plusOp__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gc1.count[7]_i_1 
       (.I0(\gc1.count[8]_i_2_n_0 ),
        .I1(rd_pntr_plus2[6]),
        .I2(rd_pntr_plus2[7]),
        .O(plusOp__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gc1.count[8]_i_1 
       (.I0(rd_pntr_plus2[6]),
        .I1(\gc1.count[8]_i_2_n_0 ),
        .I2(rd_pntr_plus2[7]),
        .I3(Q),
        .O(plusOp__0[8]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \gc1.count[8]_i_2 
       (.I0(rd_pntr_plus2[5]),
        .I1(rd_pntr_plus2[3]),
        .I2(rd_pntr_plus2[1]),
        .I3(rd_pntr_plus2[0]),
        .I4(rd_pntr_plus2[2]),
        .I5(rd_pntr_plus2[4]),
        .O(\gc1.count[8]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \gc1.count_d1_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(rd_pntr_plus2[0]),
        .Q(rd_pntr_plus1[0]),
        .S(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d1_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .D(rd_pntr_plus2[1]),
        .Q(rd_pntr_plus1[1]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d1_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .D(rd_pntr_plus2[2]),
        .Q(rd_pntr_plus1[2]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d1_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .D(rd_pntr_plus2[3]),
        .Q(rd_pntr_plus1[3]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d1_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .D(rd_pntr_plus2[4]),
        .Q(rd_pntr_plus1[4]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d1_reg[5] 
       (.C(rd_clk),
        .CE(E),
        .D(rd_pntr_plus2[5]),
        .Q(rd_pntr_plus1[5]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d1_reg[6] 
       (.C(rd_clk),
        .CE(E),
        .D(rd_pntr_plus2[6]),
        .Q(rd_pntr_plus1[6]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d1_reg[7] 
       (.C(rd_clk),
        .CE(E),
        .D(rd_pntr_plus2[7]),
        .Q(rd_pntr_plus1[7]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d1_reg[8] 
       (.C(rd_clk),
        .CE(E),
        .D(Q),
        .Q(\gc1.count_d1_reg[8]_0 ),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(rd_pntr_plus1[0]),
        .Q(\gc1.count_d2_reg[8]_0 [0]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .D(rd_pntr_plus1[1]),
        .Q(\gc1.count_d2_reg[8]_0 [1]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .D(rd_pntr_plus1[2]),
        .Q(\gc1.count_d2_reg[8]_0 [2]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .D(rd_pntr_plus1[3]),
        .Q(\gc1.count_d2_reg[8]_0 [3]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .D(rd_pntr_plus1[4]),
        .Q(\gc1.count_d2_reg[8]_0 [4]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[5] 
       (.C(rd_clk),
        .CE(E),
        .D(rd_pntr_plus1[5]),
        .Q(\gc1.count_d2_reg[8]_0 [5]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[6] 
       (.C(rd_clk),
        .CE(E),
        .D(rd_pntr_plus1[6]),
        .Q(\gc1.count_d2_reg[8]_0 [6]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[7] 
       (.C(rd_clk),
        .CE(E),
        .D(rd_pntr_plus1[7]),
        .Q(\gc1.count_d2_reg[8]_0 [7]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[8] 
       (.C(rd_clk),
        .CE(E),
        .D(\gc1.count_d1_reg[8]_0 ),
        .Q(\gc1.count_d2_reg[8]_0 [8]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(plusOp__0[0]),
        .Q(rd_pntr_plus2[0]),
        .R(SS));
  FDSE #(
    .INIT(1'b1)) 
    \gc1.count_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .D(plusOp__0[1]),
        .Q(rd_pntr_plus2[1]),
        .S(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .D(plusOp__0[2]),
        .Q(rd_pntr_plus2[2]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .D(plusOp__0[3]),
        .Q(rd_pntr_plus2[3]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .D(plusOp__0[4]),
        .Q(rd_pntr_plus2[4]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_reg[5] 
       (.C(rd_clk),
        .CE(E),
        .D(plusOp__0[5]),
        .Q(rd_pntr_plus2[5]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_reg[6] 
       (.C(rd_clk),
        .CE(E),
        .D(plusOp__0[6]),
        .Q(rd_pntr_plus2[6]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_reg[7] 
       (.C(rd_clk),
        .CE(E),
        .D(plusOp__0[7]),
        .Q(rd_pntr_plus2[7]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_reg[8] 
       (.C(rd_clk),
        .CE(E),
        .D(plusOp__0[8]),
        .Q(Q),
        .R(SS));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1__2 
       (.I0(\gc1.count_d2_reg[8]_0 [0]),
        .I1(WR_PNTR_RD[0]),
        .I2(\gc1.count_d2_reg[8]_0 [1]),
        .I3(WR_PNTR_RD[1]),
        .O(v1_reg[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1__3 
       (.I0(rd_pntr_plus1[0]),
        .I1(WR_PNTR_RD[0]),
        .I2(rd_pntr_plus1[1]),
        .I3(WR_PNTR_RD[1]),
        .O(v1_reg_0[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1__4 
       (.I0(rd_pntr_plus2[0]),
        .I1(WR_PNTR_RD[0]),
        .I2(rd_pntr_plus2[1]),
        .I3(WR_PNTR_RD[1]),
        .O(v1_reg_1[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1__2 
       (.I0(\gc1.count_d2_reg[8]_0 [2]),
        .I1(WR_PNTR_RD[2]),
        .I2(\gc1.count_d2_reg[8]_0 [3]),
        .I3(WR_PNTR_RD[3]),
        .O(v1_reg[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1__3 
       (.I0(rd_pntr_plus1[2]),
        .I1(WR_PNTR_RD[2]),
        .I2(rd_pntr_plus1[3]),
        .I3(WR_PNTR_RD[3]),
        .O(v1_reg_0[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1__4 
       (.I0(rd_pntr_plus2[2]),
        .I1(WR_PNTR_RD[2]),
        .I2(rd_pntr_plus2[3]),
        .I3(WR_PNTR_RD[3]),
        .O(v1_reg_1[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1__2 
       (.I0(\gc1.count_d2_reg[8]_0 [4]),
        .I1(WR_PNTR_RD[4]),
        .I2(\gc1.count_d2_reg[8]_0 [5]),
        .I3(WR_PNTR_RD[5]),
        .O(v1_reg[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1__3 
       (.I0(rd_pntr_plus1[4]),
        .I1(WR_PNTR_RD[4]),
        .I2(rd_pntr_plus1[5]),
        .I3(WR_PNTR_RD[5]),
        .O(v1_reg_0[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1__4 
       (.I0(rd_pntr_plus2[4]),
        .I1(WR_PNTR_RD[4]),
        .I2(rd_pntr_plus2[5]),
        .I3(WR_PNTR_RD[5]),
        .O(v1_reg_1[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1__2 
       (.I0(\gc1.count_d2_reg[8]_0 [6]),
        .I1(WR_PNTR_RD[6]),
        .I2(\gc1.count_d2_reg[8]_0 [7]),
        .I3(WR_PNTR_RD[7]),
        .O(v1_reg[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1__3 
       (.I0(rd_pntr_plus1[6]),
        .I1(WR_PNTR_RD[6]),
        .I2(rd_pntr_plus1[7]),
        .I3(WR_PNTR_RD[7]),
        .O(v1_reg_0[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1__4 
       (.I0(rd_pntr_plus2[6]),
        .I1(WR_PNTR_RD[6]),
        .I2(rd_pntr_plus2[7]),
        .I3(WR_PNTR_RD[7]),
        .O(v1_reg_1[3]));
endmodule

(* ORIG_REF_NAME = "rd_bin_cntr" *) 
module Zynq_Design_UART_V1_9_0_0_rd_bin_cntr_20
   (Q,
    v1_reg,
    \gc1.count_d2_reg[8]_0 ,
    v1_reg_0,
    v1_reg_1,
    \gc1.count_d1_reg[8]_0 ,
    WR_PNTR_RD,
    SS,
    E,
    rd_clk);
  output [0:0]Q;
  output [3:0]v1_reg;
  output [8:0]\gc1.count_d2_reg[8]_0 ;
  output [3:0]v1_reg_0;
  output [3:0]v1_reg_1;
  output [0:0]\gc1.count_d1_reg[8]_0 ;
  input [7:0]WR_PNTR_RD;
  input [0:0]SS;
  input [0:0]E;
  input rd_clk;

  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SS;
  wire [7:0]WR_PNTR_RD;
  wire \gc1.count[8]_i_2_n_0 ;
  wire [0:0]\gc1.count_d1_reg[8]_0 ;
  wire [8:0]\gc1.count_d2_reg[8]_0 ;
  wire [8:0]plusOp__0;
  wire rd_clk;
  wire [7:0]rd_pntr_plus1;
  wire [7:0]rd_pntr_plus2;
  wire [3:0]v1_reg;
  wire [3:0]v1_reg_0;
  wire [3:0]v1_reg_1;

  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gc1.count[0]_i_1 
       (.I0(rd_pntr_plus2[0]),
        .O(plusOp__0[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \gc1.count[1]_i_1 
       (.I0(rd_pntr_plus2[0]),
        .I1(rd_pntr_plus2[1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gc1.count[2]_i_1 
       (.I0(rd_pntr_plus2[0]),
        .I1(rd_pntr_plus2[1]),
        .I2(rd_pntr_plus2[2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gc1.count[3]_i_1 
       (.I0(rd_pntr_plus2[1]),
        .I1(rd_pntr_plus2[0]),
        .I2(rd_pntr_plus2[2]),
        .I3(rd_pntr_plus2[3]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gc1.count[4]_i_1 
       (.I0(rd_pntr_plus2[2]),
        .I1(rd_pntr_plus2[0]),
        .I2(rd_pntr_plus2[1]),
        .I3(rd_pntr_plus2[3]),
        .I4(rd_pntr_plus2[4]),
        .O(plusOp__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \gc1.count[5]_i_1 
       (.I0(rd_pntr_plus2[3]),
        .I1(rd_pntr_plus2[1]),
        .I2(rd_pntr_plus2[0]),
        .I3(rd_pntr_plus2[2]),
        .I4(rd_pntr_plus2[4]),
        .I5(rd_pntr_plus2[5]),
        .O(plusOp__0[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \gc1.count[6]_i_1 
       (.I0(\gc1.count[8]_i_2_n_0 ),
        .I1(rd_pntr_plus2[6]),
        .O(plusOp__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gc1.count[7]_i_1 
       (.I0(\gc1.count[8]_i_2_n_0 ),
        .I1(rd_pntr_plus2[6]),
        .I2(rd_pntr_plus2[7]),
        .O(plusOp__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gc1.count[8]_i_1 
       (.I0(rd_pntr_plus2[6]),
        .I1(\gc1.count[8]_i_2_n_0 ),
        .I2(rd_pntr_plus2[7]),
        .I3(Q),
        .O(plusOp__0[8]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \gc1.count[8]_i_2 
       (.I0(rd_pntr_plus2[5]),
        .I1(rd_pntr_plus2[3]),
        .I2(rd_pntr_plus2[1]),
        .I3(rd_pntr_plus2[0]),
        .I4(rd_pntr_plus2[2]),
        .I5(rd_pntr_plus2[4]),
        .O(\gc1.count[8]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \gc1.count_d1_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(rd_pntr_plus2[0]),
        .Q(rd_pntr_plus1[0]),
        .S(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d1_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .D(rd_pntr_plus2[1]),
        .Q(rd_pntr_plus1[1]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d1_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .D(rd_pntr_plus2[2]),
        .Q(rd_pntr_plus1[2]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d1_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .D(rd_pntr_plus2[3]),
        .Q(rd_pntr_plus1[3]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d1_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .D(rd_pntr_plus2[4]),
        .Q(rd_pntr_plus1[4]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d1_reg[5] 
       (.C(rd_clk),
        .CE(E),
        .D(rd_pntr_plus2[5]),
        .Q(rd_pntr_plus1[5]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d1_reg[6] 
       (.C(rd_clk),
        .CE(E),
        .D(rd_pntr_plus2[6]),
        .Q(rd_pntr_plus1[6]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d1_reg[7] 
       (.C(rd_clk),
        .CE(E),
        .D(rd_pntr_plus2[7]),
        .Q(rd_pntr_plus1[7]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d1_reg[8] 
       (.C(rd_clk),
        .CE(E),
        .D(Q),
        .Q(\gc1.count_d1_reg[8]_0 ),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(rd_pntr_plus1[0]),
        .Q(\gc1.count_d2_reg[8]_0 [0]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .D(rd_pntr_plus1[1]),
        .Q(\gc1.count_d2_reg[8]_0 [1]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .D(rd_pntr_plus1[2]),
        .Q(\gc1.count_d2_reg[8]_0 [2]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .D(rd_pntr_plus1[3]),
        .Q(\gc1.count_d2_reg[8]_0 [3]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .D(rd_pntr_plus1[4]),
        .Q(\gc1.count_d2_reg[8]_0 [4]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[5] 
       (.C(rd_clk),
        .CE(E),
        .D(rd_pntr_plus1[5]),
        .Q(\gc1.count_d2_reg[8]_0 [5]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[6] 
       (.C(rd_clk),
        .CE(E),
        .D(rd_pntr_plus1[6]),
        .Q(\gc1.count_d2_reg[8]_0 [6]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[7] 
       (.C(rd_clk),
        .CE(E),
        .D(rd_pntr_plus1[7]),
        .Q(\gc1.count_d2_reg[8]_0 [7]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_d2_reg[8] 
       (.C(rd_clk),
        .CE(E),
        .D(\gc1.count_d1_reg[8]_0 ),
        .Q(\gc1.count_d2_reg[8]_0 [8]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_reg[0] 
       (.C(rd_clk),
        .CE(E),
        .D(plusOp__0[0]),
        .Q(rd_pntr_plus2[0]),
        .R(SS));
  FDSE #(
    .INIT(1'b1)) 
    \gc1.count_reg[1] 
       (.C(rd_clk),
        .CE(E),
        .D(plusOp__0[1]),
        .Q(rd_pntr_plus2[1]),
        .S(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_reg[2] 
       (.C(rd_clk),
        .CE(E),
        .D(plusOp__0[2]),
        .Q(rd_pntr_plus2[2]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_reg[3] 
       (.C(rd_clk),
        .CE(E),
        .D(plusOp__0[3]),
        .Q(rd_pntr_plus2[3]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_reg[4] 
       (.C(rd_clk),
        .CE(E),
        .D(plusOp__0[4]),
        .Q(rd_pntr_plus2[4]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_reg[5] 
       (.C(rd_clk),
        .CE(E),
        .D(plusOp__0[5]),
        .Q(rd_pntr_plus2[5]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_reg[6] 
       (.C(rd_clk),
        .CE(E),
        .D(plusOp__0[6]),
        .Q(rd_pntr_plus2[6]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_reg[7] 
       (.C(rd_clk),
        .CE(E),
        .D(plusOp__0[7]),
        .Q(rd_pntr_plus2[7]),
        .R(SS));
  FDRE #(
    .INIT(1'b0)) 
    \gc1.count_reg[8] 
       (.C(rd_clk),
        .CE(E),
        .D(plusOp__0[8]),
        .Q(Q),
        .R(SS));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1__2 
       (.I0(\gc1.count_d2_reg[8]_0 [0]),
        .I1(WR_PNTR_RD[0]),
        .I2(\gc1.count_d2_reg[8]_0 [1]),
        .I3(WR_PNTR_RD[1]),
        .O(v1_reg[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1__3 
       (.I0(rd_pntr_plus1[0]),
        .I1(WR_PNTR_RD[0]),
        .I2(rd_pntr_plus1[1]),
        .I3(WR_PNTR_RD[1]),
        .O(v1_reg_0[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[0].gm1.m1_i_1__4 
       (.I0(rd_pntr_plus2[0]),
        .I1(WR_PNTR_RD[0]),
        .I2(rd_pntr_plus2[1]),
        .I3(WR_PNTR_RD[1]),
        .O(v1_reg_1[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1__2 
       (.I0(\gc1.count_d2_reg[8]_0 [2]),
        .I1(WR_PNTR_RD[2]),
        .I2(\gc1.count_d2_reg[8]_0 [3]),
        .I3(WR_PNTR_RD[3]),
        .O(v1_reg[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1__3 
       (.I0(rd_pntr_plus1[2]),
        .I1(WR_PNTR_RD[2]),
        .I2(rd_pntr_plus1[3]),
        .I3(WR_PNTR_RD[3]),
        .O(v1_reg_0[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[1].gms.ms_i_1__4 
       (.I0(rd_pntr_plus2[2]),
        .I1(WR_PNTR_RD[2]),
        .I2(rd_pntr_plus2[3]),
        .I3(WR_PNTR_RD[3]),
        .O(v1_reg_1[1]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1__2 
       (.I0(\gc1.count_d2_reg[8]_0 [4]),
        .I1(WR_PNTR_RD[4]),
        .I2(\gc1.count_d2_reg[8]_0 [5]),
        .I3(WR_PNTR_RD[5]),
        .O(v1_reg[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1__3 
       (.I0(rd_pntr_plus1[4]),
        .I1(WR_PNTR_RD[4]),
        .I2(rd_pntr_plus1[5]),
        .I3(WR_PNTR_RD[5]),
        .O(v1_reg_0[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[2].gms.ms_i_1__4 
       (.I0(rd_pntr_plus2[4]),
        .I1(WR_PNTR_RD[4]),
        .I2(rd_pntr_plus2[5]),
        .I3(WR_PNTR_RD[5]),
        .O(v1_reg_1[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1__2 
       (.I0(\gc1.count_d2_reg[8]_0 [6]),
        .I1(WR_PNTR_RD[6]),
        .I2(\gc1.count_d2_reg[8]_0 [7]),
        .I3(WR_PNTR_RD[7]),
        .O(v1_reg[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1__3 
       (.I0(rd_pntr_plus1[6]),
        .I1(WR_PNTR_RD[6]),
        .I2(rd_pntr_plus1[7]),
        .I3(WR_PNTR_RD[7]),
        .O(v1_reg_0[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    \gmux.gm[3].gms.ms_i_1__4 
       (.I0(rd_pntr_plus2[6]),
        .I1(WR_PNTR_RD[6]),
        .I2(rd_pntr_plus2[7]),
        .I3(WR_PNTR_RD[7]),
        .O(v1_reg_1[3]));
endmodule

(* ORIG_REF_NAME = "rd_logic" *) 
module Zynq_Design_UART_V1_9_0_0_rd_logic
   (empty,
    out,
    almost_empty,
    Q,
    \gc1.count_d2_reg[8] ,
    \gc1.count_d1_reg[8] ,
    ram_empty_fb_i_reg,
    \gae.ram_almost_empty_i_reg ,
    \gae.ram_almost_empty_i_reg_0 ,
    SS,
    rd_clk,
    rd_en,
    WR_PNTR_RD);
  output empty;
  output out;
  output almost_empty;
  output [0:0]Q;
  output [8:0]\gc1.count_d2_reg[8] ;
  output [0:0]\gc1.count_d1_reg[8] ;
  input [0:0]ram_empty_fb_i_reg;
  input [0:0]\gae.ram_almost_empty_i_reg ;
  input [0:0]\gae.ram_almost_empty_i_reg_0 ;
  input [0:0]SS;
  input rd_clk;
  input rd_en;
  input [7:0]WR_PNTR_RD;

  wire [0:0]Q;
  wire [0:0]SS;
  wire [7:0]WR_PNTR_RD;
  wire almost_empty;
  wire [3:0]\c0/v1_reg ;
  wire [3:0]\c1/v1_reg ;
  wire empty;
  wire [3:0]\gae.c2/v1_reg ;
  wire [0:0]\gae.ram_almost_empty_i_reg ;
  wire [0:0]\gae.ram_almost_empty_i_reg_0 ;
  wire [0:0]\gc1.count_d1_reg[8] ;
  wire [8:0]\gc1.count_d2_reg[8] ;
  wire out;
  wire p_8_out;
  wire [0:0]ram_empty_fb_i_reg;
  wire rd_clk;
  wire rd_en;

  Zynq_Design_UART_V1_9_0_0_rd_status_flags_as \gras.rsts 
       (.E(p_8_out),
        .SS(SS),
        .almost_empty(almost_empty),
        .empty(empty),
        .\gae.ram_almost_empty_i_reg_0 (\gae.ram_almost_empty_i_reg ),
        .\gae.ram_almost_empty_i_reg_1 (\gae.ram_almost_empty_i_reg_0 ),
        .out(out),
        .ram_empty_fb_i_reg_0(ram_empty_fb_i_reg),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .v1_reg(\c0/v1_reg ),
        .v1_reg_0(\c1/v1_reg ),
        .v1_reg_1(\gae.c2/v1_reg ));
  Zynq_Design_UART_V1_9_0_0_rd_bin_cntr rpntr
       (.E(p_8_out),
        .Q(Q),
        .SS(SS),
        .WR_PNTR_RD(WR_PNTR_RD),
        .\gc1.count_d1_reg[8]_0 (\gc1.count_d1_reg[8] ),
        .\gc1.count_d2_reg[8]_0 (\gc1.count_d2_reg[8] ),
        .rd_clk(rd_clk),
        .v1_reg(\c0/v1_reg ),
        .v1_reg_0(\c1/v1_reg ),
        .v1_reg_1(\gae.c2/v1_reg ));
endmodule

(* ORIG_REF_NAME = "rd_logic" *) 
module Zynq_Design_UART_V1_9_0_0_rd_logic_5
   (empty,
    out,
    almost_empty,
    Q,
    \gc1.count_d2_reg[8] ,
    \gc1.count_d1_reg[8] ,
    ram_empty_fb_i_reg,
    \gae.ram_almost_empty_i_reg ,
    \gae.ram_almost_empty_i_reg_0 ,
    SS,
    rd_clk,
    rd_en,
    WR_PNTR_RD);
  output empty;
  output out;
  output almost_empty;
  output [0:0]Q;
  output [8:0]\gc1.count_d2_reg[8] ;
  output [0:0]\gc1.count_d1_reg[8] ;
  input [0:0]ram_empty_fb_i_reg;
  input [0:0]\gae.ram_almost_empty_i_reg ;
  input [0:0]\gae.ram_almost_empty_i_reg_0 ;
  input [0:0]SS;
  input rd_clk;
  input rd_en;
  input [7:0]WR_PNTR_RD;

  wire [0:0]Q;
  wire [0:0]SS;
  wire [7:0]WR_PNTR_RD;
  wire almost_empty;
  wire [3:0]\c0/v1_reg ;
  wire [3:0]\c1/v1_reg ;
  wire empty;
  wire [3:0]\gae.c2/v1_reg ;
  wire [0:0]\gae.ram_almost_empty_i_reg ;
  wire [0:0]\gae.ram_almost_empty_i_reg_0 ;
  wire [0:0]\gc1.count_d1_reg[8] ;
  wire [8:0]\gc1.count_d2_reg[8] ;
  wire out;
  wire p_8_out;
  wire [0:0]ram_empty_fb_i_reg;
  wire rd_clk;
  wire rd_en;

  Zynq_Design_UART_V1_9_0_0_rd_status_flags_as_19 \gras.rsts 
       (.E(p_8_out),
        .SS(SS),
        .almost_empty(almost_empty),
        .empty(empty),
        .\gae.ram_almost_empty_i_reg_0 (\gae.ram_almost_empty_i_reg ),
        .\gae.ram_almost_empty_i_reg_1 (\gae.ram_almost_empty_i_reg_0 ),
        .out(out),
        .ram_empty_fb_i_reg_0(ram_empty_fb_i_reg),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .v1_reg(\c0/v1_reg ),
        .v1_reg_0(\c1/v1_reg ),
        .v1_reg_1(\gae.c2/v1_reg ));
  Zynq_Design_UART_V1_9_0_0_rd_bin_cntr_20 rpntr
       (.E(p_8_out),
        .Q(Q),
        .SS(SS),
        .WR_PNTR_RD(WR_PNTR_RD),
        .\gc1.count_d1_reg[8]_0 (\gc1.count_d1_reg[8] ),
        .\gc1.count_d2_reg[8]_0 (\gc1.count_d2_reg[8] ),
        .rd_clk(rd_clk),
        .v1_reg(\c0/v1_reg ),
        .v1_reg_0(\c1/v1_reg ),
        .v1_reg_1(\gae.c2/v1_reg ));
endmodule

(* ORIG_REF_NAME = "rd_status_flags_as" *) 
module Zynq_Design_UART_V1_9_0_0_rd_status_flags_as
   (empty,
    out,
    almost_empty,
    E,
    v1_reg,
    ram_empty_fb_i_reg_0,
    v1_reg_0,
    \gae.ram_almost_empty_i_reg_0 ,
    v1_reg_1,
    \gae.ram_almost_empty_i_reg_1 ,
    SS,
    rd_clk,
    rd_en);
  output empty;
  output out;
  output almost_empty;
  output [0:0]E;
  input [3:0]v1_reg;
  input [0:0]ram_empty_fb_i_reg_0;
  input [3:0]v1_reg_0;
  input [0:0]\gae.ram_almost_empty_i_reg_0 ;
  input [3:0]v1_reg_1;
  input [0:0]\gae.ram_almost_empty_i_reg_1 ;
  input [0:0]SS;
  input rd_clk;
  input rd_en;

  wire [0:0]E;
  wire [0:0]SS;
  wire almost_empty;
  wire c1_n_1;
  wire comp1;
  wire comp2;
  wire [0:0]\gae.ram_almost_empty_i_reg_0 ;
  wire [0:0]\gae.ram_almost_empty_i_reg_1 ;
  (* DONT_TOUCH *) wire ram_empty_fb_i;
  wire ram_empty_fb_i0__1;
  wire [0:0]ram_empty_fb_i_reg_0;
  (* DONT_TOUCH *) wire ram_empty_i;
  wire rd_clk;
  wire rd_en;
  wire [3:0]v1_reg;
  wire [3:0]v1_reg_0;
  wire [3:0]v1_reg_1;

  assign empty = ram_empty_i;
  assign out = ram_empty_fb_i;
  Zynq_Design_UART_V1_9_0_0_compare_2 c0
       (.comp1(comp1),
        .out(ram_empty_fb_i),
        .ram_empty_fb_i0__1(ram_empty_fb_i0__1),
        .ram_empty_fb_i_reg(ram_empty_fb_i_reg_0),
        .rd_en(rd_en),
        .v1_reg(v1_reg));
  Zynq_Design_UART_V1_9_0_0_compare_3 c1
       (.almost_empty(almost_empty),
        .comp1(comp1),
        .comp2(comp2),
        .\gae.ram_almost_empty_i_reg (c1_n_1),
        .\gae.ram_almost_empty_i_reg_0 (\gae.ram_almost_empty_i_reg_0 ),
        .out(ram_empty_fb_i),
        .rd_en(rd_en),
        .v1_reg_0(v1_reg_0));
  Zynq_Design_UART_V1_9_0_0_compare_4 \gae.c2 
       (.comp2(comp2),
        .\gae.ram_almost_empty_i_reg (\gae.ram_almost_empty_i_reg_1 ),
        .v1_reg_1(v1_reg_1));
  FDSE #(
    .INIT(1'b1)) 
    \gae.ram_almost_empty_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(c1_n_1),
        .Q(almost_empty),
        .S(SS));
  LUT2 #(
    .INIT(4'h2)) 
    \gc1.count_d1[8]_i_1 
       (.I0(rd_en),
        .I1(ram_empty_fb_i),
        .O(E));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE #(
    .INIT(1'b1)) 
    ram_empty_fb_i_reg
       (.C(rd_clk),
        .CE(1'b1),
        .D(ram_empty_fb_i0__1),
        .Q(ram_empty_fb_i),
        .S(SS));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE #(
    .INIT(1'b1)) 
    ram_empty_i_reg
       (.C(rd_clk),
        .CE(1'b1),
        .D(ram_empty_fb_i0__1),
        .Q(ram_empty_i),
        .S(SS));
endmodule

(* ORIG_REF_NAME = "rd_status_flags_as" *) 
module Zynq_Design_UART_V1_9_0_0_rd_status_flags_as_19
   (empty,
    out,
    almost_empty,
    E,
    v1_reg,
    ram_empty_fb_i_reg_0,
    v1_reg_0,
    \gae.ram_almost_empty_i_reg_0 ,
    v1_reg_1,
    \gae.ram_almost_empty_i_reg_1 ,
    SS,
    rd_clk,
    rd_en);
  output empty;
  output out;
  output almost_empty;
  output [0:0]E;
  input [3:0]v1_reg;
  input [0:0]ram_empty_fb_i_reg_0;
  input [3:0]v1_reg_0;
  input [0:0]\gae.ram_almost_empty_i_reg_0 ;
  input [3:0]v1_reg_1;
  input [0:0]\gae.ram_almost_empty_i_reg_1 ;
  input [0:0]SS;
  input rd_clk;
  input rd_en;

  wire [0:0]E;
  wire [0:0]SS;
  wire almost_empty;
  wire c1_n_1;
  wire comp1;
  wire comp2;
  wire [0:0]\gae.ram_almost_empty_i_reg_0 ;
  wire [0:0]\gae.ram_almost_empty_i_reg_1 ;
  (* DONT_TOUCH *) wire ram_empty_fb_i;
  wire ram_empty_fb_i0__1;
  wire [0:0]ram_empty_fb_i_reg_0;
  (* DONT_TOUCH *) wire ram_empty_i;
  wire rd_clk;
  wire rd_en;
  wire [3:0]v1_reg;
  wire [3:0]v1_reg_0;
  wire [3:0]v1_reg_1;

  assign empty = ram_empty_i;
  assign out = ram_empty_fb_i;
  Zynq_Design_UART_V1_9_0_0_compare_21 c0
       (.comp1(comp1),
        .out(ram_empty_fb_i),
        .ram_empty_fb_i0__1(ram_empty_fb_i0__1),
        .ram_empty_fb_i_reg(ram_empty_fb_i_reg_0),
        .rd_en(rd_en),
        .v1_reg(v1_reg));
  Zynq_Design_UART_V1_9_0_0_compare_22 c1
       (.almost_empty(almost_empty),
        .comp1(comp1),
        .comp2(comp2),
        .\gae.ram_almost_empty_i_reg (c1_n_1),
        .\gae.ram_almost_empty_i_reg_0 (\gae.ram_almost_empty_i_reg_0 ),
        .out(ram_empty_fb_i),
        .rd_en(rd_en),
        .v1_reg_0(v1_reg_0));
  Zynq_Design_UART_V1_9_0_0_compare_23 \gae.c2 
       (.comp2(comp2),
        .\gae.ram_almost_empty_i_reg (\gae.ram_almost_empty_i_reg_1 ),
        .v1_reg_1(v1_reg_1));
  FDSE #(
    .INIT(1'b1)) 
    \gae.ram_almost_empty_i_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(c1_n_1),
        .Q(almost_empty),
        .S(SS));
  LUT2 #(
    .INIT(4'h2)) 
    \gc1.count_d1[8]_i_1 
       (.I0(rd_en),
        .I1(ram_empty_fb_i),
        .O(E));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE #(
    .INIT(1'b1)) 
    ram_empty_fb_i_reg
       (.C(rd_clk),
        .CE(1'b1),
        .D(ram_empty_fb_i0__1),
        .Q(ram_empty_fb_i),
        .S(SS));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE #(
    .INIT(1'b1)) 
    ram_empty_i_reg
       (.C(rd_clk),
        .CE(1'b1),
        .D(ram_empty_fb_i0__1),
        .Q(ram_empty_i),
        .S(SS));
endmodule

(* ORIG_REF_NAME = "reset_blk_ramfifo" *) 
module Zynq_Design_UART_V1_9_0_0_reset_blk_ramfifo
   (\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg_0 ,
    SS,
    wr_rst_busy,
    out,
    ram_rstram_b,
    rst,
    wr_clk,
    rd_clk,
    POR_B);
  output \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg_0 ;
  output [0:0]SS;
  output wr_rst_busy;
  output out;
  output ram_rstram_b;
  input rst;
  input wr_clk;
  input rd_clk;
  input POR_B;

  wire POR_B;
  wire [0:0]SS;
  wire arst_sync_rd_rst;
  wire dest_out;
  wire dest_rst;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1_n_0 ;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1_n_0 ;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg_0 ;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.wr_rst_busy_i_i_1_n_0 ;
  wire ram_rstram_b;
  wire rd_clk;
  wire [3:0]rd_rst_wr_ext;
  wire rst;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d2;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d3;
  wire sckt_rd_rst_wr;
  wire wr_clk;
  wire wr_rst_busy_i;
  wire [1:0]wr_rst_rd_ext;

  assign out = rst_d3;
  assign wr_rst_busy = wr_rst_busy_i;
  LUT2 #(
    .INIT(4'hE)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_3 
       (.I0(SS),
        .I1(POR_B),
        .O(ram_rstram_b));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d1_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(wr_rst_busy_i),
        .Q(rst_d1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d2_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rst_d1),
        .Q(rst_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDSE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d3_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rst_d2),
        .Q(rst_d3),
        .S(\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.rd_rst_wr_ext_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(sckt_rd_rst_wr),
        .Q(rd_rst_wr_ext[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.rd_rst_wr_ext_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rd_rst_wr_ext[0]),
        .Q(rd_rst_wr_ext[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.rd_rst_wr_ext_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rd_rst_wr_ext[1]),
        .Q(rd_rst_wr_ext[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.rd_rst_wr_ext_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rd_rst_wr_ext[2]),
        .Q(rd_rst_wr_ext[3]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hF4)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1 
       (.I0(wr_rst_rd_ext[1]),
        .I1(SS),
        .I2(arst_sync_rd_rst),
        .O(\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1_n_0 ),
        .Q(SS),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFF8A)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1 
       (.I0(\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg_0 ),
        .I1(rd_rst_wr_ext[0]),
        .I2(rd_rst_wr_ext[1]),
        .I3(dest_rst),
        .O(\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1_n_0 ),
        .Q(\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFD0F0D0D0)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.wr_rst_busy_i_i_1 
       (.I0(rd_rst_wr_ext[3]),
        .I1(rd_rst_wr_ext[2]),
        .I2(wr_rst_busy_i),
        .I3(rd_rst_wr_ext[0]),
        .I4(rd_rst_wr_ext[1]),
        .I5(dest_rst),
        .O(\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.wr_rst_busy_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.wr_rst_busy_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.wr_rst_busy_i_i_1_n_0 ),
        .Q(wr_rst_busy_i),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.wr_rst_rd_ext_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(dest_out),
        .Q(wr_rst_rd_ext[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.wr_rst_rd_ext_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(wr_rst_rd_ext[0]),
        .Q(wr_rst_rd_ext[1]),
        .R(1'b0));
  (* DEST_SYNC_FF = "5" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  Zynq_Design_UART_V1_9_0_0_xpm_cdc_single \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr 
       (.dest_clk(wr_clk),
        .dest_out(sckt_rd_rst_wr),
        .src_clk(rd_clk),
        .src_in(SS));
  (* DEST_SYNC_FF = "5" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  Zynq_Design_UART_V1_9_0_0_xpm_cdc_single__6 \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd 
       (.dest_clk(rd_clk),
        .dest_out(dest_out),
        .src_clk(wr_clk),
        .src_in(\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg_0 ));
  (* DEF_VAL = "1'b1" *) 
  (* DEST_SYNC_FF = "5" *) 
  (* INIT = "1" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  Zynq_Design_UART_V1_9_0_0_xpm_cdc_sync_rst \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_sync_rst_inst_wrst 
       (.dest_clk(rd_clk),
        .dest_rst(arst_sync_rd_rst),
        .src_rst(rst));
  (* DEF_VAL = "1'b1" *) 
  (* DEST_SYNC_FF = "5" *) 
  (* INIT = "1" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  Zynq_Design_UART_V1_9_0_0_xpm_cdc_sync_rst__6 \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst 
       (.dest_clk(wr_clk),
        .dest_rst(dest_rst),
        .src_rst(rst));
endmodule

(* ORIG_REF_NAME = "reset_blk_ramfifo" *) 
module Zynq_Design_UART_V1_9_0_0_reset_blk_ramfifo__xdcDup__1
   (\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg_0 ,
    SS,
    wr_rst_busy,
    out,
    ram_rstram_b,
    rst,
    wr_clk,
    rd_clk,
    POR_B);
  output \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg_0 ;
  output [0:0]SS;
  output wr_rst_busy;
  output out;
  output ram_rstram_b;
  input rst;
  input wr_clk;
  input rd_clk;
  input POR_B;

  wire POR_B;
  wire [0:0]SS;
  wire arst_sync_rd_rst;
  wire dest_out;
  wire dest_rst;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1_n_0 ;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1_n_0 ;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg_0 ;
  wire \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.wr_rst_busy_i_i_1_n_0 ;
  wire ram_rstram_b;
  wire rd_clk;
  wire [3:0]rd_rst_wr_ext;
  wire rst;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d1;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d2;
  (* async_reg = "true" *) (* msgon = "true" *) wire rst_d3;
  wire sckt_rd_rst_wr;
  wire wr_clk;
  wire wr_rst_busy_i;
  wire [1:0]wr_rst_rd_ext;

  assign out = rst_d3;
  assign wr_rst_busy = wr_rst_busy_i;
  LUT2 #(
    .INIT(4'hE)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_3 
       (.I0(SS),
        .I1(POR_B),
        .O(ram_rstram_b));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d1_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(wr_rst_busy_i),
        .Q(rst_d1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDRE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d2_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rst_d1),
        .Q(rst_d2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* msgon = "true" *) 
  FDSE #(
    .INIT(1'b1)) 
    \grstd1.grst_full.grst_f.rst_d3_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rst_d2),
        .Q(rst_d3),
        .S(\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.rd_rst_wr_ext_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(sckt_rd_rst_wr),
        .Q(rd_rst_wr_ext[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.rd_rst_wr_ext_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rd_rst_wr_ext[0]),
        .Q(rd_rst_wr_ext[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.rd_rst_wr_ext_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rd_rst_wr_ext[1]),
        .Q(rd_rst_wr_ext[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.rd_rst_wr_ext_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(rd_rst_wr_ext[2]),
        .Q(rd_rst_wr_ext[3]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hF4)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1 
       (.I0(wr_rst_rd_ext[1]),
        .I1(SS),
        .I2(arst_sync_rd_rst),
        .O(\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg 
       (.C(rd_clk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1_n_0 ),
        .Q(SS),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFF8A)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1 
       (.I0(\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg_0 ),
        .I1(rd_rst_wr_ext[0]),
        .I2(rd_rst_wr_ext[1]),
        .I3(dest_rst),
        .O(\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1_n_0 ),
        .Q(\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFD0F0D0D0)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.wr_rst_busy_i_i_1 
       (.I0(rd_rst_wr_ext[3]),
        .I1(rd_rst_wr_ext[2]),
        .I2(wr_rst_busy_i),
        .I3(rd_rst_wr_ext[0]),
        .I4(rd_rst_wr_ext[1]),
        .I5(dest_rst),
        .O(\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.wr_rst_busy_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.wr_rst_busy_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.wr_rst_busy_i_i_1_n_0 ),
        .Q(wr_rst_busy_i),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.wr_rst_rd_ext_reg[0] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(dest_out),
        .Q(wr_rst_rd_ext[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.wr_rst_rd_ext_reg[1] 
       (.C(rd_clk),
        .CE(1'b1),
        .D(wr_rst_rd_ext[0]),
        .Q(wr_rst_rd_ext[1]),
        .R(1'b0));
  (* DEST_SYNC_FF = "5" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  Zynq_Design_UART_V1_9_0_0_xpm_cdc_single__5 \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr 
       (.dest_clk(wr_clk),
        .dest_out(sckt_rd_rst_wr),
        .src_clk(rd_clk),
        .src_in(SS));
  (* DEST_SYNC_FF = "5" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* SRC_INPUT_REG = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SINGLE" *) 
  (* XPM_MODULE = "TRUE" *) 
  Zynq_Design_UART_V1_9_0_0_xpm_cdc_single__4 \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd 
       (.dest_clk(rd_clk),
        .dest_out(dest_out),
        .src_clk(wr_clk),
        .src_in(\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg_0 ));
  (* DEF_VAL = "1'b1" *) 
  (* DEST_SYNC_FF = "5" *) 
  (* INIT = "1" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  Zynq_Design_UART_V1_9_0_0_xpm_cdc_sync_rst__5 \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_sync_rst_inst_wrst 
       (.dest_clk(rd_clk),
        .dest_rst(arst_sync_rd_rst),
        .src_rst(rst));
  (* DEF_VAL = "1'b1" *) 
  (* DEST_SYNC_FF = "5" *) 
  (* INIT = "1" *) 
  (* INIT_SYNC_FF = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* VERSION = "0" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  (* XPM_MODULE = "TRUE" *) 
  Zynq_Design_UART_V1_9_0_0_xpm_cdc_sync_rst__4 \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst 
       (.dest_clk(wr_clk),
        .dest_rst(dest_rst),
        .src_rst(rst));
endmodule

(* ORIG_REF_NAME = "wr_bin_cntr" *) 
module Zynq_Design_UART_V1_9_0_0_wr_bin_cntr
   (Q,
    v1_reg,
    v1_reg_0,
    v1_reg_1,
    \gic0.gc1.count_d1_reg[7]_0 ,
    \gic0.gc1.count_d2_reg[7]_0 ,
    \gic0.gc1.count_d3_reg[8]_0 ,
    RD_PNTR_WR,
    \gic0.gc1.count_d3_reg[0]_0 ,
    E,
    wr_clk);
  output [7:0]Q;
  output [0:0]v1_reg;
  output [0:0]v1_reg_0;
  output [0:0]v1_reg_1;
  output [7:0]\gic0.gc1.count_d1_reg[7]_0 ;
  output [7:0]\gic0.gc1.count_d2_reg[7]_0 ;
  output [8:0]\gic0.gc1.count_d3_reg[8]_0 ;
  input [0:0]RD_PNTR_WR;
  input \gic0.gc1.count_d3_reg[0]_0 ;
  input [0:0]E;
  input wr_clk;

  wire [0:0]E;
  wire [7:0]Q;
  wire [0:0]RD_PNTR_WR;
  wire \gic0.gc1.count[8]_i_2_n_0 ;
  wire [7:0]\gic0.gc1.count_d1_reg[7]_0 ;
  wire [7:0]\gic0.gc1.count_d2_reg[7]_0 ;
  wire \gic0.gc1.count_d3_reg[0]_0 ;
  wire [8:0]\gic0.gc1.count_d3_reg[8]_0 ;
  wire [8:8]p_14_out;
  wire [8:0]plusOp;
  wire [0:0]v1_reg;
  wire [0:0]v1_reg_0;
  wire [0:0]v1_reg_1;
  wire wr_clk;
  wire [8:8]wr_pntr_plus2;
  wire [8:8]wr_pntr_plus3;

  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gic0.gc1.count[0]_i_1 
       (.I0(Q[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gic0.gc1.count[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp[1]));
  LUT3 #(
    .INIT(8'h78)) 
    \gic0.gc1.count[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gic0.gc1.count[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gic0.gc1.count[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \gic0.gc1.count[5]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(plusOp[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \gic0.gc1.count[6]_i_1 
       (.I0(\gic0.gc1.count[8]_i_2_n_0 ),
        .I1(Q[6]),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gic0.gc1.count[7]_i_1 
       (.I0(\gic0.gc1.count[8]_i_2_n_0 ),
        .I1(Q[6]),
        .I2(Q[7]),
        .O(plusOp[7]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gic0.gc1.count[8]_i_1 
       (.I0(Q[6]),
        .I1(\gic0.gc1.count[8]_i_2_n_0 ),
        .I2(Q[7]),
        .I3(wr_pntr_plus3),
        .O(plusOp[8]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \gic0.gc1.count[8]_i_2 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\gic0.gc1.count[8]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d1_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(Q[0]),
        .Q(\gic0.gc1.count_d1_reg[7]_0 [0]),
        .R(\gic0.gc1.count_d3_reg[0]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \gic0.gc1.count_d1_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(Q[1]),
        .Q(\gic0.gc1.count_d1_reg[7]_0 [1]),
        .S(\gic0.gc1.count_d3_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d1_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(Q[2]),
        .Q(\gic0.gc1.count_d1_reg[7]_0 [2]),
        .R(\gic0.gc1.count_d3_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d1_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(Q[3]),
        .Q(\gic0.gc1.count_d1_reg[7]_0 [3]),
        .R(\gic0.gc1.count_d3_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d1_reg[4] 
       (.C(wr_clk),
        .CE(E),
        .D(Q[4]),
        .Q(\gic0.gc1.count_d1_reg[7]_0 [4]),
        .R(\gic0.gc1.count_d3_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d1_reg[5] 
       (.C(wr_clk),
        .CE(E),
        .D(Q[5]),
        .Q(\gic0.gc1.count_d1_reg[7]_0 [5]),
        .R(\gic0.gc1.count_d3_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d1_reg[6] 
       (.C(wr_clk),
        .CE(E),
        .D(Q[6]),
        .Q(\gic0.gc1.count_d1_reg[7]_0 [6]),
        .R(\gic0.gc1.count_d3_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d1_reg[7] 
       (.C(wr_clk),
        .CE(E),
        .D(Q[7]),
        .Q(\gic0.gc1.count_d1_reg[7]_0 [7]),
        .R(\gic0.gc1.count_d3_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d1_reg[8] 
       (.C(wr_clk),
        .CE(E),
        .D(wr_pntr_plus3),
        .Q(wr_pntr_plus2),
        .R(\gic0.gc1.count_d3_reg[0]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \gic0.gc1.count_d2_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(\gic0.gc1.count_d1_reg[7]_0 [0]),
        .Q(\gic0.gc1.count_d2_reg[7]_0 [0]),
        .S(\gic0.gc1.count_d3_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d2_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(\gic0.gc1.count_d1_reg[7]_0 [1]),
        .Q(\gic0.gc1.count_d2_reg[7]_0 [1]),
        .R(\gic0.gc1.count_d3_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d2_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(\gic0.gc1.count_d1_reg[7]_0 [2]),
        .Q(\gic0.gc1.count_d2_reg[7]_0 [2]),
        .R(\gic0.gc1.count_d3_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d2_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(\gic0.gc1.count_d1_reg[7]_0 [3]),
        .Q(\gic0.gc1.count_d2_reg[7]_0 [3]),
        .R(\gic0.gc1.count_d3_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d2_reg[4] 
       (.C(wr_clk),
        .CE(E),
        .D(\gic0.gc1.count_d1_reg[7]_0 [4]),
        .Q(\gic0.gc1.count_d2_reg[7]_0 [4]),
        .R(\gic0.gc1.count_d3_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d2_reg[5] 
       (.C(wr_clk),
        .CE(E),
        .D(\gic0.gc1.count_d1_reg[7]_0 [5]),
        .Q(\gic0.gc1.count_d2_reg[7]_0 [5]),
        .R(\gic0.gc1.count_d3_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d2_reg[6] 
       (.C(wr_clk),
        .CE(E),
        .D(\gic0.gc1.count_d1_reg[7]_0 [6]),
        .Q(\gic0.gc1.count_d2_reg[7]_0 [6]),
        .R(\gic0.gc1.count_d3_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d2_reg[7] 
       (.C(wr_clk),
        .CE(E),
        .D(\gic0.gc1.count_d1_reg[7]_0 [7]),
        .Q(\gic0.gc1.count_d2_reg[7]_0 [7]),
        .R(\gic0.gc1.count_d3_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d2_reg[8] 
       (.C(wr_clk),
        .CE(E),
        .D(wr_pntr_plus2),
        .Q(p_14_out),
        .R(\gic0.gc1.count_d3_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d3_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(\gic0.gc1.count_d2_reg[7]_0 [0]),
        .Q(\gic0.gc1.count_d3_reg[8]_0 [0]),
        .R(\gic0.gc1.count_d3_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d3_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(\gic0.gc1.count_d2_reg[7]_0 [1]),
        .Q(\gic0.gc1.count_d3_reg[8]_0 [1]),
        .R(\gic0.gc1.count_d3_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d3_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(\gic0.gc1.count_d2_reg[7]_0 [2]),
        .Q(\gic0.gc1.count_d3_reg[8]_0 [2]),
        .R(\gic0.gc1.count_d3_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d3_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(\gic0.gc1.count_d2_reg[7]_0 [3]),
        .Q(\gic0.gc1.count_d3_reg[8]_0 [3]),
        .R(\gic0.gc1.count_d3_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d3_reg[4] 
       (.C(wr_clk),
        .CE(E),
        .D(\gic0.gc1.count_d2_reg[7]_0 [4]),
        .Q(\gic0.gc1.count_d3_reg[8]_0 [4]),
        .R(\gic0.gc1.count_d3_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d3_reg[5] 
       (.C(wr_clk),
        .CE(E),
        .D(\gic0.gc1.count_d2_reg[7]_0 [5]),
        .Q(\gic0.gc1.count_d3_reg[8]_0 [5]),
        .R(\gic0.gc1.count_d3_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d3_reg[6] 
       (.C(wr_clk),
        .CE(E),
        .D(\gic0.gc1.count_d2_reg[7]_0 [6]),
        .Q(\gic0.gc1.count_d3_reg[8]_0 [6]),
        .R(\gic0.gc1.count_d3_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d3_reg[7] 
       (.C(wr_clk),
        .CE(E),
        .D(\gic0.gc1.count_d2_reg[7]_0 [7]),
        .Q(\gic0.gc1.count_d3_reg[8]_0 [7]),
        .R(\gic0.gc1.count_d3_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d3_reg[8] 
       (.C(wr_clk),
        .CE(E),
        .D(p_14_out),
        .Q(\gic0.gc1.count_d3_reg[8]_0 [8]),
        .R(\gic0.gc1.count_d3_reg[0]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \gic0.gc1.count_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(plusOp[0]),
        .Q(Q[0]),
        .S(\gic0.gc1.count_d3_reg[0]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \gic0.gc1.count_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(plusOp[1]),
        .Q(Q[1]),
        .S(\gic0.gc1.count_d3_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(plusOp[2]),
        .Q(Q[2]),
        .R(\gic0.gc1.count_d3_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(plusOp[3]),
        .Q(Q[3]),
        .R(\gic0.gc1.count_d3_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_reg[4] 
       (.C(wr_clk),
        .CE(E),
        .D(plusOp[4]),
        .Q(Q[4]),
        .R(\gic0.gc1.count_d3_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_reg[5] 
       (.C(wr_clk),
        .CE(E),
        .D(plusOp[5]),
        .Q(Q[5]),
        .R(\gic0.gc1.count_d3_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_reg[6] 
       (.C(wr_clk),
        .CE(E),
        .D(plusOp[6]),
        .Q(Q[6]),
        .R(\gic0.gc1.count_d3_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_reg[7] 
       (.C(wr_clk),
        .CE(E),
        .D(plusOp[7]),
        .Q(Q[7]),
        .R(\gic0.gc1.count_d3_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_reg[8] 
       (.C(wr_clk),
        .CE(E),
        .D(plusOp[8]),
        .Q(wr_pntr_plus3),
        .R(\gic0.gc1.count_d3_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gmux.gm[4].gms.ms_i_1 
       (.I0(p_14_out),
        .I1(RD_PNTR_WR),
        .O(v1_reg));
  LUT2 #(
    .INIT(4'h9)) 
    \gmux.gm[4].gms.ms_i_1__0 
       (.I0(wr_pntr_plus2),
        .I1(RD_PNTR_WR),
        .O(v1_reg_0));
  LUT2 #(
    .INIT(4'h9)) 
    \gmux.gm[4].gms.ms_i_1__1 
       (.I0(wr_pntr_plus3),
        .I1(RD_PNTR_WR),
        .O(v1_reg_1));
endmodule

(* ORIG_REF_NAME = "wr_bin_cntr" *) 
module Zynq_Design_UART_V1_9_0_0_wr_bin_cntr_15
   (Q,
    v1_reg,
    v1_reg_0,
    v1_reg_1,
    \gic0.gc1.count_d1_reg[7]_0 ,
    \gic0.gc1.count_d2_reg[7]_0 ,
    \gic0.gc1.count_d3_reg[8]_0 ,
    RD_PNTR_WR,
    \gic0.gc1.count_d3_reg[0]_0 ,
    E,
    wr_clk);
  output [7:0]Q;
  output [0:0]v1_reg;
  output [0:0]v1_reg_0;
  output [0:0]v1_reg_1;
  output [7:0]\gic0.gc1.count_d1_reg[7]_0 ;
  output [7:0]\gic0.gc1.count_d2_reg[7]_0 ;
  output [8:0]\gic0.gc1.count_d3_reg[8]_0 ;
  input [0:0]RD_PNTR_WR;
  input \gic0.gc1.count_d3_reg[0]_0 ;
  input [0:0]E;
  input wr_clk;

  wire [0:0]E;
  wire [7:0]Q;
  wire [0:0]RD_PNTR_WR;
  wire \gic0.gc1.count[8]_i_2_n_0 ;
  wire [7:0]\gic0.gc1.count_d1_reg[7]_0 ;
  wire [7:0]\gic0.gc1.count_d2_reg[7]_0 ;
  wire \gic0.gc1.count_d3_reg[0]_0 ;
  wire [8:0]\gic0.gc1.count_d3_reg[8]_0 ;
  wire [8:8]p_14_out;
  wire [8:0]plusOp;
  wire [0:0]v1_reg;
  wire [0:0]v1_reg_0;
  wire [0:0]v1_reg_1;
  wire wr_clk;
  wire [8:8]wr_pntr_plus2;
  wire [8:8]wr_pntr_plus3;

  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gic0.gc1.count[0]_i_1 
       (.I0(Q[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gic0.gc1.count[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp[1]));
  LUT3 #(
    .INIT(8'h78)) 
    \gic0.gc1.count[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gic0.gc1.count[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \gic0.gc1.count[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \gic0.gc1.count[5]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(plusOp[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \gic0.gc1.count[6]_i_1 
       (.I0(\gic0.gc1.count[8]_i_2_n_0 ),
        .I1(Q[6]),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gic0.gc1.count[7]_i_1 
       (.I0(\gic0.gc1.count[8]_i_2_n_0 ),
        .I1(Q[6]),
        .I2(Q[7]),
        .O(plusOp[7]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \gic0.gc1.count[8]_i_1 
       (.I0(Q[6]),
        .I1(\gic0.gc1.count[8]_i_2_n_0 ),
        .I2(Q[7]),
        .I3(wr_pntr_plus3),
        .O(plusOp[8]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \gic0.gc1.count[8]_i_2 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\gic0.gc1.count[8]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d1_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(Q[0]),
        .Q(\gic0.gc1.count_d1_reg[7]_0 [0]),
        .R(\gic0.gc1.count_d3_reg[0]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \gic0.gc1.count_d1_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(Q[1]),
        .Q(\gic0.gc1.count_d1_reg[7]_0 [1]),
        .S(\gic0.gc1.count_d3_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d1_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(Q[2]),
        .Q(\gic0.gc1.count_d1_reg[7]_0 [2]),
        .R(\gic0.gc1.count_d3_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d1_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(Q[3]),
        .Q(\gic0.gc1.count_d1_reg[7]_0 [3]),
        .R(\gic0.gc1.count_d3_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d1_reg[4] 
       (.C(wr_clk),
        .CE(E),
        .D(Q[4]),
        .Q(\gic0.gc1.count_d1_reg[7]_0 [4]),
        .R(\gic0.gc1.count_d3_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d1_reg[5] 
       (.C(wr_clk),
        .CE(E),
        .D(Q[5]),
        .Q(\gic0.gc1.count_d1_reg[7]_0 [5]),
        .R(\gic0.gc1.count_d3_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d1_reg[6] 
       (.C(wr_clk),
        .CE(E),
        .D(Q[6]),
        .Q(\gic0.gc1.count_d1_reg[7]_0 [6]),
        .R(\gic0.gc1.count_d3_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d1_reg[7] 
       (.C(wr_clk),
        .CE(E),
        .D(Q[7]),
        .Q(\gic0.gc1.count_d1_reg[7]_0 [7]),
        .R(\gic0.gc1.count_d3_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d1_reg[8] 
       (.C(wr_clk),
        .CE(E),
        .D(wr_pntr_plus3),
        .Q(wr_pntr_plus2),
        .R(\gic0.gc1.count_d3_reg[0]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \gic0.gc1.count_d2_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(\gic0.gc1.count_d1_reg[7]_0 [0]),
        .Q(\gic0.gc1.count_d2_reg[7]_0 [0]),
        .S(\gic0.gc1.count_d3_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d2_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(\gic0.gc1.count_d1_reg[7]_0 [1]),
        .Q(\gic0.gc1.count_d2_reg[7]_0 [1]),
        .R(\gic0.gc1.count_d3_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d2_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(\gic0.gc1.count_d1_reg[7]_0 [2]),
        .Q(\gic0.gc1.count_d2_reg[7]_0 [2]),
        .R(\gic0.gc1.count_d3_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d2_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(\gic0.gc1.count_d1_reg[7]_0 [3]),
        .Q(\gic0.gc1.count_d2_reg[7]_0 [3]),
        .R(\gic0.gc1.count_d3_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d2_reg[4] 
       (.C(wr_clk),
        .CE(E),
        .D(\gic0.gc1.count_d1_reg[7]_0 [4]),
        .Q(\gic0.gc1.count_d2_reg[7]_0 [4]),
        .R(\gic0.gc1.count_d3_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d2_reg[5] 
       (.C(wr_clk),
        .CE(E),
        .D(\gic0.gc1.count_d1_reg[7]_0 [5]),
        .Q(\gic0.gc1.count_d2_reg[7]_0 [5]),
        .R(\gic0.gc1.count_d3_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d2_reg[6] 
       (.C(wr_clk),
        .CE(E),
        .D(\gic0.gc1.count_d1_reg[7]_0 [6]),
        .Q(\gic0.gc1.count_d2_reg[7]_0 [6]),
        .R(\gic0.gc1.count_d3_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d2_reg[7] 
       (.C(wr_clk),
        .CE(E),
        .D(\gic0.gc1.count_d1_reg[7]_0 [7]),
        .Q(\gic0.gc1.count_d2_reg[7]_0 [7]),
        .R(\gic0.gc1.count_d3_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d2_reg[8] 
       (.C(wr_clk),
        .CE(E),
        .D(wr_pntr_plus2),
        .Q(p_14_out),
        .R(\gic0.gc1.count_d3_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d3_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(\gic0.gc1.count_d2_reg[7]_0 [0]),
        .Q(\gic0.gc1.count_d3_reg[8]_0 [0]),
        .R(\gic0.gc1.count_d3_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d3_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(\gic0.gc1.count_d2_reg[7]_0 [1]),
        .Q(\gic0.gc1.count_d3_reg[8]_0 [1]),
        .R(\gic0.gc1.count_d3_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d3_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(\gic0.gc1.count_d2_reg[7]_0 [2]),
        .Q(\gic0.gc1.count_d3_reg[8]_0 [2]),
        .R(\gic0.gc1.count_d3_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d3_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(\gic0.gc1.count_d2_reg[7]_0 [3]),
        .Q(\gic0.gc1.count_d3_reg[8]_0 [3]),
        .R(\gic0.gc1.count_d3_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d3_reg[4] 
       (.C(wr_clk),
        .CE(E),
        .D(\gic0.gc1.count_d2_reg[7]_0 [4]),
        .Q(\gic0.gc1.count_d3_reg[8]_0 [4]),
        .R(\gic0.gc1.count_d3_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d3_reg[5] 
       (.C(wr_clk),
        .CE(E),
        .D(\gic0.gc1.count_d2_reg[7]_0 [5]),
        .Q(\gic0.gc1.count_d3_reg[8]_0 [5]),
        .R(\gic0.gc1.count_d3_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d3_reg[6] 
       (.C(wr_clk),
        .CE(E),
        .D(\gic0.gc1.count_d2_reg[7]_0 [6]),
        .Q(\gic0.gc1.count_d3_reg[8]_0 [6]),
        .R(\gic0.gc1.count_d3_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d3_reg[7] 
       (.C(wr_clk),
        .CE(E),
        .D(\gic0.gc1.count_d2_reg[7]_0 [7]),
        .Q(\gic0.gc1.count_d3_reg[8]_0 [7]),
        .R(\gic0.gc1.count_d3_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_d3_reg[8] 
       (.C(wr_clk),
        .CE(E),
        .D(p_14_out),
        .Q(\gic0.gc1.count_d3_reg[8]_0 [8]),
        .R(\gic0.gc1.count_d3_reg[0]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \gic0.gc1.count_reg[0] 
       (.C(wr_clk),
        .CE(E),
        .D(plusOp[0]),
        .Q(Q[0]),
        .S(\gic0.gc1.count_d3_reg[0]_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \gic0.gc1.count_reg[1] 
       (.C(wr_clk),
        .CE(E),
        .D(plusOp[1]),
        .Q(Q[1]),
        .S(\gic0.gc1.count_d3_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_reg[2] 
       (.C(wr_clk),
        .CE(E),
        .D(plusOp[2]),
        .Q(Q[2]),
        .R(\gic0.gc1.count_d3_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_reg[3] 
       (.C(wr_clk),
        .CE(E),
        .D(plusOp[3]),
        .Q(Q[3]),
        .R(\gic0.gc1.count_d3_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_reg[4] 
       (.C(wr_clk),
        .CE(E),
        .D(plusOp[4]),
        .Q(Q[4]),
        .R(\gic0.gc1.count_d3_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_reg[5] 
       (.C(wr_clk),
        .CE(E),
        .D(plusOp[5]),
        .Q(Q[5]),
        .R(\gic0.gc1.count_d3_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_reg[6] 
       (.C(wr_clk),
        .CE(E),
        .D(plusOp[6]),
        .Q(Q[6]),
        .R(\gic0.gc1.count_d3_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_reg[7] 
       (.C(wr_clk),
        .CE(E),
        .D(plusOp[7]),
        .Q(Q[7]),
        .R(\gic0.gc1.count_d3_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gic0.gc1.count_reg[8] 
       (.C(wr_clk),
        .CE(E),
        .D(plusOp[8]),
        .Q(wr_pntr_plus3),
        .R(\gic0.gc1.count_d3_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \gmux.gm[4].gms.ms_i_1 
       (.I0(p_14_out),
        .I1(RD_PNTR_WR),
        .O(v1_reg));
  LUT2 #(
    .INIT(4'h9)) 
    \gmux.gm[4].gms.ms_i_1__0 
       (.I0(wr_pntr_plus2),
        .I1(RD_PNTR_WR),
        .O(v1_reg_0));
  LUT2 #(
    .INIT(4'h9)) 
    \gmux.gm[4].gms.ms_i_1__1 
       (.I0(wr_pntr_plus3),
        .I1(RD_PNTR_WR),
        .O(v1_reg_1));
endmodule

(* ORIG_REF_NAME = "wr_logic" *) 
module Zynq_Design_UART_V1_9_0_0_wr_logic
   (full,
    FULL_FB,
    E,
    Q,
    \gic0.gc1.count_d2_reg[7] ,
    \gic0.gc1.count_d1_reg[7] ,
    almost_full,
    \gic0.gc1.count_d3_reg[8] ,
    \gmux.gm[4].gms.ms ,
    \gmux.gm[4].gms.ms_0 ,
    \gmux.gm[4].gms.ms_1 ,
    \gic0.gc1.count_d3_reg[0] ,
    wr_clk,
    wr_en,
    out,
    RD_PNTR_WR);
  output full;
  output FULL_FB;
  output [0:0]E;
  output [7:0]Q;
  output [7:0]\gic0.gc1.count_d2_reg[7] ;
  output [7:0]\gic0.gc1.count_d1_reg[7] ;
  output almost_full;
  output [8:0]\gic0.gc1.count_d3_reg[8] ;
  input [3:0]\gmux.gm[4].gms.ms ;
  input [3:0]\gmux.gm[4].gms.ms_0 ;
  input [3:0]\gmux.gm[4].gms.ms_1 ;
  input \gic0.gc1.count_d3_reg[0] ;
  input wr_clk;
  input wr_en;
  input out;
  input [0:0]RD_PNTR_WR;

  wire [0:0]E;
  wire FULL_FB;
  wire [7:0]Q;
  wire [0:0]RD_PNTR_WR;
  wire almost_full;
  wire [4:4]\c1/v1_reg ;
  wire [4:4]\c2/v1_reg ;
  wire full;
  wire [4:4]\gaf.c3/v1_reg ;
  wire [7:0]\gic0.gc1.count_d1_reg[7] ;
  wire [7:0]\gic0.gc1.count_d2_reg[7] ;
  wire \gic0.gc1.count_d3_reg[0] ;
  wire [8:0]\gic0.gc1.count_d3_reg[8] ;
  wire [3:0]\gmux.gm[4].gms.ms ;
  wire [3:0]\gmux.gm[4].gms.ms_0 ;
  wire [3:0]\gmux.gm[4].gms.ms_1 ;
  wire out;
  wire wr_clk;
  wire wr_en;

  Zynq_Design_UART_V1_9_0_0_wr_status_flags_as \gwas.wsts 
       (.E(E),
        .almost_full(almost_full),
        .full(full),
        .\gmux.gm[4].gms.ms (\gmux.gm[4].gms.ms ),
        .\gmux.gm[4].gms.ms_0 (\gmux.gm[4].gms.ms_0 ),
        .\gmux.gm[4].gms.ms_1 (\gmux.gm[4].gms.ms_1 ),
        .out(FULL_FB),
        .ram_full_fb_i_reg_0(\gic0.gc1.count_d3_reg[0] ),
        .ram_full_fb_i_reg_1(out),
        .v1_reg(\c1/v1_reg ),
        .v1_reg_0(\c2/v1_reg ),
        .v1_reg_1(\gaf.c3/v1_reg ),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  Zynq_Design_UART_V1_9_0_0_wr_bin_cntr wpntr
       (.E(E),
        .Q(Q),
        .RD_PNTR_WR(RD_PNTR_WR),
        .\gic0.gc1.count_d1_reg[7]_0 (\gic0.gc1.count_d1_reg[7] ),
        .\gic0.gc1.count_d2_reg[7]_0 (\gic0.gc1.count_d2_reg[7] ),
        .\gic0.gc1.count_d3_reg[0]_0 (\gic0.gc1.count_d3_reg[0] ),
        .\gic0.gc1.count_d3_reg[8]_0 (\gic0.gc1.count_d3_reg[8] ),
        .v1_reg(\c1/v1_reg ),
        .v1_reg_0(\c2/v1_reg ),
        .v1_reg_1(\gaf.c3/v1_reg ),
        .wr_clk(wr_clk));
endmodule

(* ORIG_REF_NAME = "wr_logic" *) 
module Zynq_Design_UART_V1_9_0_0_wr_logic_6
   (full,
    FULL_FB,
    E,
    Q,
    \gic0.gc1.count_d2_reg[7] ,
    \gic0.gc1.count_d1_reg[7] ,
    almost_full,
    \gic0.gc1.count_d3_reg[8] ,
    \gmux.gm[4].gms.ms ,
    \gmux.gm[4].gms.ms_0 ,
    \gmux.gm[4].gms.ms_1 ,
    \gic0.gc1.count_d3_reg[0] ,
    wr_clk,
    wr_en,
    out,
    RD_PNTR_WR);
  output full;
  output FULL_FB;
  output [0:0]E;
  output [7:0]Q;
  output [7:0]\gic0.gc1.count_d2_reg[7] ;
  output [7:0]\gic0.gc1.count_d1_reg[7] ;
  output almost_full;
  output [8:0]\gic0.gc1.count_d3_reg[8] ;
  input [3:0]\gmux.gm[4].gms.ms ;
  input [3:0]\gmux.gm[4].gms.ms_0 ;
  input [3:0]\gmux.gm[4].gms.ms_1 ;
  input \gic0.gc1.count_d3_reg[0] ;
  input wr_clk;
  input wr_en;
  input out;
  input [0:0]RD_PNTR_WR;

  wire [0:0]E;
  wire FULL_FB;
  wire [7:0]Q;
  wire [0:0]RD_PNTR_WR;
  wire almost_full;
  wire [4:4]\c1/v1_reg ;
  wire [4:4]\c2/v1_reg ;
  wire full;
  wire [4:4]\gaf.c3/v1_reg ;
  wire [7:0]\gic0.gc1.count_d1_reg[7] ;
  wire [7:0]\gic0.gc1.count_d2_reg[7] ;
  wire \gic0.gc1.count_d3_reg[0] ;
  wire [8:0]\gic0.gc1.count_d3_reg[8] ;
  wire [3:0]\gmux.gm[4].gms.ms ;
  wire [3:0]\gmux.gm[4].gms.ms_0 ;
  wire [3:0]\gmux.gm[4].gms.ms_1 ;
  wire out;
  wire wr_clk;
  wire wr_en;

  Zynq_Design_UART_V1_9_0_0_wr_status_flags_as_14 \gwas.wsts 
       (.E(E),
        .almost_full(almost_full),
        .full(full),
        .\gmux.gm[4].gms.ms (\gmux.gm[4].gms.ms ),
        .\gmux.gm[4].gms.ms_0 (\gmux.gm[4].gms.ms_0 ),
        .\gmux.gm[4].gms.ms_1 (\gmux.gm[4].gms.ms_1 ),
        .out(FULL_FB),
        .ram_full_fb_i_reg_0(\gic0.gc1.count_d3_reg[0] ),
        .ram_full_fb_i_reg_1(out),
        .v1_reg(\c1/v1_reg ),
        .v1_reg_0(\c2/v1_reg ),
        .v1_reg_1(\gaf.c3/v1_reg ),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  Zynq_Design_UART_V1_9_0_0_wr_bin_cntr_15 wpntr
       (.E(E),
        .Q(Q),
        .RD_PNTR_WR(RD_PNTR_WR),
        .\gic0.gc1.count_d1_reg[7]_0 (\gic0.gc1.count_d1_reg[7] ),
        .\gic0.gc1.count_d2_reg[7]_0 (\gic0.gc1.count_d2_reg[7] ),
        .\gic0.gc1.count_d3_reg[0]_0 (\gic0.gc1.count_d3_reg[0] ),
        .\gic0.gc1.count_d3_reg[8]_0 (\gic0.gc1.count_d3_reg[8] ),
        .v1_reg(\c1/v1_reg ),
        .v1_reg_0(\c2/v1_reg ),
        .v1_reg_1(\gaf.c3/v1_reg ),
        .wr_clk(wr_clk));
endmodule

(* ORIG_REF_NAME = "wr_status_flags_as" *) 
module Zynq_Design_UART_V1_9_0_0_wr_status_flags_as
   (full,
    out,
    E,
    almost_full,
    \gmux.gm[4].gms.ms ,
    v1_reg,
    \gmux.gm[4].gms.ms_0 ,
    v1_reg_0,
    \gmux.gm[4].gms.ms_1 ,
    v1_reg_1,
    ram_full_fb_i_reg_0,
    wr_clk,
    wr_en,
    ram_full_fb_i_reg_1);
  output full;
  output out;
  output [0:0]E;
  output almost_full;
  input [3:0]\gmux.gm[4].gms.ms ;
  input [0:0]v1_reg;
  input [3:0]\gmux.gm[4].gms.ms_0 ;
  input [0:0]v1_reg_0;
  input [3:0]\gmux.gm[4].gms.ms_1 ;
  input [0:0]v1_reg_1;
  input ram_full_fb_i_reg_0;
  input wr_clk;
  input wr_en;
  input ram_full_fb_i_reg_1;

  wire [0:0]E;
  wire almost_full;
  wire c2_n_1;
  wire comp1;
  wire comp2;
  wire comp3;
  wire \gaf.ram_almost_full_i_i_1_n_0 ;
  wire [3:0]\gmux.gm[4].gms.ms ;
  wire [3:0]\gmux.gm[4].gms.ms_0 ;
  wire [3:0]\gmux.gm[4].gms.ms_1 ;
  (* DONT_TOUCH *) wire ram_full_fb_i;
  wire ram_full_fb_i_reg_0;
  wire ram_full_fb_i_reg_1;
  (* DONT_TOUCH *) wire ram_full_i;
  wire [0:0]v1_reg;
  wire [0:0]v1_reg_0;
  wire [0:0]v1_reg_1;
  wire wr_clk;
  wire wr_en;

  assign full = ram_full_i;
  assign out = ram_full_fb_i;
  LUT2 #(
    .INIT(4'h2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_4 
       (.I0(wr_en),
        .I1(ram_full_fb_i),
        .O(E));
  Zynq_Design_UART_V1_9_0_0_compare c1
       (.comp1(comp1),
        .\gmux.gm[4].gms.ms_0 (\gmux.gm[4].gms.ms ),
        .v1_reg(v1_reg));
  Zynq_Design_UART_V1_9_0_0_compare_0 c2
       (.comp1(comp1),
        .comp2(comp2),
        .\gmux.gm[4].gms.ms_0 (\gmux.gm[4].gms.ms_0 ),
        .out(ram_full_fb_i),
        .ram_full_fb_i_reg(c2_n_1),
        .ram_full_fb_i_reg_0(ram_full_fb_i_reg_1),
        .v1_reg_0(v1_reg_0),
        .wr_en(wr_en));
  Zynq_Design_UART_V1_9_0_0_compare_1 \gaf.c3 
       (.comp3(comp3),
        .\gmux.gm[4].gms.ms_0 (\gmux.gm[4].gms.ms_1 ),
        .v1_reg_1(v1_reg_1));
  LUT6 #(
    .INIT(64'h00FF00F8000000F8)) 
    \gaf.ram_almost_full_i_i_1 
       (.I0(comp3),
        .I1(wr_en),
        .I2(comp2),
        .I3(ram_full_fb_i_reg_1),
        .I4(ram_full_fb_i),
        .I5(almost_full),
        .O(\gaf.ram_almost_full_i_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \gaf.ram_almost_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gaf.ram_almost_full_i_i_1_n_0 ),
        .Q(almost_full),
        .S(ram_full_fb_i_reg_0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE #(
    .INIT(1'b0)) 
    ram_full_fb_i_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(c2_n_1),
        .Q(ram_full_fb_i),
        .S(ram_full_fb_i_reg_0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE #(
    .INIT(1'b0)) 
    ram_full_i_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(c2_n_1),
        .Q(ram_full_i),
        .S(ram_full_fb_i_reg_0));
endmodule

(* ORIG_REF_NAME = "wr_status_flags_as" *) 
module Zynq_Design_UART_V1_9_0_0_wr_status_flags_as_14
   (full,
    out,
    E,
    almost_full,
    \gmux.gm[4].gms.ms ,
    v1_reg,
    \gmux.gm[4].gms.ms_0 ,
    v1_reg_0,
    \gmux.gm[4].gms.ms_1 ,
    v1_reg_1,
    ram_full_fb_i_reg_0,
    wr_clk,
    wr_en,
    ram_full_fb_i_reg_1);
  output full;
  output out;
  output [0:0]E;
  output almost_full;
  input [3:0]\gmux.gm[4].gms.ms ;
  input [0:0]v1_reg;
  input [3:0]\gmux.gm[4].gms.ms_0 ;
  input [0:0]v1_reg_0;
  input [3:0]\gmux.gm[4].gms.ms_1 ;
  input [0:0]v1_reg_1;
  input ram_full_fb_i_reg_0;
  input wr_clk;
  input wr_en;
  input ram_full_fb_i_reg_1;

  wire [0:0]E;
  wire almost_full;
  wire c2_n_1;
  wire comp1;
  wire comp2;
  wire comp3;
  wire \gaf.ram_almost_full_i_i_1_n_0 ;
  wire [3:0]\gmux.gm[4].gms.ms ;
  wire [3:0]\gmux.gm[4].gms.ms_0 ;
  wire [3:0]\gmux.gm[4].gms.ms_1 ;
  (* DONT_TOUCH *) wire ram_full_fb_i;
  wire ram_full_fb_i_reg_0;
  wire ram_full_fb_i_reg_1;
  (* DONT_TOUCH *) wire ram_full_i;
  wire [0:0]v1_reg;
  wire [0:0]v1_reg_0;
  wire [0:0]v1_reg_1;
  wire wr_clk;
  wire wr_en;

  assign full = ram_full_i;
  assign out = ram_full_fb_i;
  LUT2 #(
    .INIT(4'h2)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_4 
       (.I0(wr_en),
        .I1(ram_full_fb_i),
        .O(E));
  Zynq_Design_UART_V1_9_0_0_compare_16 c1
       (.comp1(comp1),
        .\gmux.gm[4].gms.ms_0 (\gmux.gm[4].gms.ms ),
        .v1_reg(v1_reg));
  Zynq_Design_UART_V1_9_0_0_compare_17 c2
       (.comp1(comp1),
        .comp2(comp2),
        .\gmux.gm[4].gms.ms_0 (\gmux.gm[4].gms.ms_0 ),
        .out(ram_full_fb_i),
        .ram_full_fb_i_reg(c2_n_1),
        .ram_full_fb_i_reg_0(ram_full_fb_i_reg_1),
        .v1_reg_0(v1_reg_0),
        .wr_en(wr_en));
  Zynq_Design_UART_V1_9_0_0_compare_18 \gaf.c3 
       (.comp3(comp3),
        .\gmux.gm[4].gms.ms_0 (\gmux.gm[4].gms.ms_1 ),
        .v1_reg_1(v1_reg_1));
  LUT6 #(
    .INIT(64'h00FF00F8000000F8)) 
    \gaf.ram_almost_full_i_i_1 
       (.I0(comp3),
        .I1(wr_en),
        .I2(comp2),
        .I3(ram_full_fb_i_reg_1),
        .I4(ram_full_fb_i),
        .I5(almost_full),
        .O(\gaf.ram_almost_full_i_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \gaf.ram_almost_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gaf.ram_almost_full_i_i_1_n_0 ),
        .Q(almost_full),
        .S(ram_full_fb_i_reg_0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE #(
    .INIT(1'b0)) 
    ram_full_fb_i_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(c2_n_1),
        .Q(ram_full_fb_i),
        .S(ram_full_fb_i_reg_0));
  (* DONT_TOUCH *) 
  (* KEEP = "yes" *) 
  (* equivalent_register_removal = "no" *) 
  FDSE #(
    .INIT(1'b0)) 
    ram_full_i_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(c2_n_1),
        .Q(ram_full_i),
        .S(ram_full_fb_i_reg_0));
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
