// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sat May  8 18:08:16 2021
// Host        : DESKTOP-QSJNSC0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               g:/Xilinx/Projects/Desktop/AXI_4_Lite_Slave/AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ip/Zynq_Design_SSD_Controller_0_0/Zynq_Design_SSD_Controller_0_0_sim_netlist.v
// Design      : Zynq_Design_SSD_Controller_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Zynq_Design_SSD_Controller_0_0,SSD_Controller,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "SSD_Controller,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module Zynq_Design_SSD_Controller_0_0
   (s_axi_aclk,
    s_axi_aresetn,
    ASCII_To_Display,
    Commutation_Period,
    SSD_VEC);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 s_axi_aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN Zynq_Design_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 s_axi_aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  input [7:0]ASCII_To_Display;
  input [7:0]Commutation_Period;
  output [7:0]SSD_VEC;

  wire [7:0]ASCII_To_Display;
  wire [7:0]SSD_VEC;
  wire s_axi_aclk;

  Zynq_Design_SSD_Controller_0_0_SSD_Controller U0
       (.ASCII_To_Display(ASCII_To_Display),
        .SSD_VEC(SSD_VEC),
        .s_axi_aclk(s_axi_aclk));
endmodule

(* ORIG_REF_NAME = "SSD_Controller" *) 
module Zynq_Design_SSD_Controller_0_0_SSD_Controller
   (SSD_VEC,
    s_axi_aclk,
    ASCII_To_Display);
  output [7:0]SSD_VEC;
  input s_axi_aclk;
  input [7:0]ASCII_To_Display;

  wire [7:0]ASCII_To_Display;
  wire A_i_2_n_0;
  wire B_i_1_n_0;
  wire B_i_2_n_0;
  wire C_i_1_n_0;
  wire C_i_2_n_0;
  wire [2:1]DCIN0;
  wire [2:1]DCIN1;
  wire D_i_1_n_0;
  wire D_i_2_n_0;
  wire E_i_1_n_0;
  wire E_i_2_n_0;
  wire F_i_1_n_0;
  wire F_i_2_n_0;
  wire [0:0]FiveZeroHzCNT;
  wire FiveZeroHzCNT0_carry__0_n_0;
  wire FiveZeroHzCNT0_carry__0_n_1;
  wire FiveZeroHzCNT0_carry__0_n_2;
  wire FiveZeroHzCNT0_carry__0_n_3;
  wire FiveZeroHzCNT0_carry__1_n_0;
  wire FiveZeroHzCNT0_carry__1_n_1;
  wire FiveZeroHzCNT0_carry__1_n_2;
  wire FiveZeroHzCNT0_carry__1_n_3;
  wire FiveZeroHzCNT0_carry__2_n_0;
  wire FiveZeroHzCNT0_carry__2_n_1;
  wire FiveZeroHzCNT0_carry__2_n_2;
  wire FiveZeroHzCNT0_carry__2_n_3;
  wire FiveZeroHzCNT0_carry__3_n_0;
  wire FiveZeroHzCNT0_carry__3_n_1;
  wire FiveZeroHzCNT0_carry__3_n_2;
  wire FiveZeroHzCNT0_carry__3_n_3;
  wire FiveZeroHzCNT0_carry__4_n_0;
  wire FiveZeroHzCNT0_carry__4_n_1;
  wire FiveZeroHzCNT0_carry__4_n_2;
  wire FiveZeroHzCNT0_carry__4_n_3;
  wire FiveZeroHzCNT0_carry__5_n_0;
  wire FiveZeroHzCNT0_carry__5_n_1;
  wire FiveZeroHzCNT0_carry__5_n_2;
  wire FiveZeroHzCNT0_carry__5_n_3;
  wire FiveZeroHzCNT0_carry__6_n_2;
  wire FiveZeroHzCNT0_carry__6_n_3;
  wire FiveZeroHzCNT0_carry_n_0;
  wire FiveZeroHzCNT0_carry_n_1;
  wire FiveZeroHzCNT0_carry_n_2;
  wire FiveZeroHzCNT0_carry_n_3;
  wire \FiveZeroHzCNT[0]_i_2_n_0 ;
  wire \FiveZeroHzCNT[0]_i_3_n_0 ;
  wire \FiveZeroHzCNT[0]_i_4_n_0 ;
  wire \FiveZeroHzCNT[0]_i_5_n_0 ;
  wire \FiveZeroHzCNT[0]_i_6_n_0 ;
  wire \FiveZeroHzCNT[0]_i_7_n_0 ;
  wire \FiveZeroHzCNT[0]_i_8_n_0 ;
  wire \FiveZeroHzCNT[0]_i_9_n_0 ;
  wire \FiveZeroHzCNT[31]_i_1_n_0 ;
  wire \FiveZeroHzCNT_reg_n_0_[0] ;
  wire \FiveZeroHzCNT_reg_n_0_[10] ;
  wire \FiveZeroHzCNT_reg_n_0_[11] ;
  wire \FiveZeroHzCNT_reg_n_0_[12] ;
  wire \FiveZeroHzCNT_reg_n_0_[13] ;
  wire \FiveZeroHzCNT_reg_n_0_[14] ;
  wire \FiveZeroHzCNT_reg_n_0_[15] ;
  wire \FiveZeroHzCNT_reg_n_0_[16] ;
  wire \FiveZeroHzCNT_reg_n_0_[17] ;
  wire \FiveZeroHzCNT_reg_n_0_[18] ;
  wire \FiveZeroHzCNT_reg_n_0_[19] ;
  wire \FiveZeroHzCNT_reg_n_0_[1] ;
  wire \FiveZeroHzCNT_reg_n_0_[20] ;
  wire \FiveZeroHzCNT_reg_n_0_[21] ;
  wire \FiveZeroHzCNT_reg_n_0_[22] ;
  wire \FiveZeroHzCNT_reg_n_0_[23] ;
  wire \FiveZeroHzCNT_reg_n_0_[24] ;
  wire \FiveZeroHzCNT_reg_n_0_[25] ;
  wire \FiveZeroHzCNT_reg_n_0_[26] ;
  wire \FiveZeroHzCNT_reg_n_0_[27] ;
  wire \FiveZeroHzCNT_reg_n_0_[28] ;
  wire \FiveZeroHzCNT_reg_n_0_[29] ;
  wire \FiveZeroHzCNT_reg_n_0_[2] ;
  wire \FiveZeroHzCNT_reg_n_0_[30] ;
  wire \FiveZeroHzCNT_reg_n_0_[31] ;
  wire \FiveZeroHzCNT_reg_n_0_[3] ;
  wire \FiveZeroHzCNT_reg_n_0_[4] ;
  wire \FiveZeroHzCNT_reg_n_0_[5] ;
  wire \FiveZeroHzCNT_reg_n_0_[6] ;
  wire \FiveZeroHzCNT_reg_n_0_[7] ;
  wire \FiveZeroHzCNT_reg_n_0_[8] ;
  wire \FiveZeroHzCNT_reg_n_0_[9] ;
  wire FiveZeroHzOut;
  wire G_i_1_n_0;
  wire G_i_2_n_0;
  wire [3:0]SEG0inOne;
  wire \SEG0inOne[2]_i_2_n_0 ;
  wire \SEG0inOne[3]_i_1_n_0 ;
  wire \SEG0inOne[3]_i_2_n_0 ;
  wire \SEG0inOne[3]_i_3_n_0 ;
  wire \SEG0inOne[3]_i_4_n_0 ;
  wire [3:0]SEG1inOne;
  wire \SEG1inOne[0]_i_1_n_0 ;
  wire \SEG1inOne[3]_i_1_n_0 ;
  wire [7:0]SSD_VEC;
  wire [31:1]data0;
  wire p_0_in;
  wire p_0_out;
  wire s_axi_aclk;
  wire [7:0]sel0;
  wire [3:2]NLW_FiveZeroHzCNT0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_FiveZeroHzCNT0_carry__6_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h545BFFFF545B0000)) 
    A_i_1
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(SSD_VEC[7]),
        .I5(A_i_2_n_0),
        .O(p_0_out));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h545B)) 
    A_i_2
       (.I0(sel0[7]),
        .I1(sel0[4]),
        .I2(sel0[5]),
        .I3(sel0[6]),
        .O(A_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    A_reg
       (.C(FiveZeroHzOut),
        .CE(1'b1),
        .D(p_0_out),
        .Q(SSD_VEC[0]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h451FFFFF451F0000)) 
    B_i_1
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(SSD_VEC[7]),
        .I5(B_i_2_n_0),
        .O(B_i_1_n_0));
  LUT4 #(
    .INIT(16'h415F)) 
    B_i_2
       (.I0(sel0[7]),
        .I1(sel0[4]),
        .I2(sel0[5]),
        .I3(sel0[6]),
        .O(B_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    B_reg
       (.C(FiveZeroHzOut),
        .CE(1'b1),
        .D(B_i_1_n_0),
        .Q(SSD_VEC[1]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    CAT_STATE_i_1
       (.I0(SSD_VEC[7]),
        .O(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    CAT_STATE_reg
       (.C(FiveZeroHzOut),
        .CE(1'b1),
        .D(p_0_in),
        .Q(SSD_VEC[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h5753FFFF57530000)) 
    C_i_1
       (.I0(sel0[3]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .I4(SSD_VEC[7]),
        .I5(C_i_2_n_0),
        .O(C_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h5753)) 
    C_i_2
       (.I0(sel0[7]),
        .I1(sel0[5]),
        .I2(sel0[6]),
        .I3(sel0[4]),
        .O(C_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    C_reg
       (.C(FiveZeroHzOut),
        .CE(1'b1),
        .D(C_i_1_n_0),
        .Q(SSD_VEC[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h1453FFFF14530000)) 
    D_i_1
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .I4(SSD_VEC[7]),
        .I5(D_i_2_n_0),
        .O(D_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h1453)) 
    D_i_2
       (.I0(sel0[7]),
        .I1(sel0[4]),
        .I2(sel0[5]),
        .I3(sel0[6]),
        .O(D_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    D_reg
       (.C(FiveZeroHzOut),
        .CE(1'b1),
        .D(D_i_1_n_0),
        .Q(SSD_VEC[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0053FFFF00530000)) 
    E_i_1
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(SSD_VEC[7]),
        .I5(E_i_2_n_0),
        .O(E_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0053)) 
    E_i_2
       (.I0(sel0[7]),
        .I1(sel0[6]),
        .I2(sel0[5]),
        .I3(sel0[4]),
        .O(E_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    E_reg
       (.C(FiveZeroHzOut),
        .CE(1'b1),
        .D(E_i_1_n_0),
        .Q(SSD_VEC[4]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h105BFFFF105B0000)) 
    F_i_1
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(SSD_VEC[7]),
        .I5(F_i_2_n_0),
        .O(F_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h105B)) 
    F_i_2
       (.I0(sel0[7]),
        .I1(sel0[4]),
        .I2(sel0[6]),
        .I3(sel0[5]),
        .O(F_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    F_reg
       (.C(FiveZeroHzOut),
        .CE(1'b1),
        .D(F_i_1_n_0),
        .Q(SSD_VEC[5]),
        .R(1'b0));
  CARRY4 FiveZeroHzCNT0_carry
       (.CI(1'b0),
        .CO({FiveZeroHzCNT0_carry_n_0,FiveZeroHzCNT0_carry_n_1,FiveZeroHzCNT0_carry_n_2,FiveZeroHzCNT0_carry_n_3}),
        .CYINIT(\FiveZeroHzCNT_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\FiveZeroHzCNT_reg_n_0_[4] ,\FiveZeroHzCNT_reg_n_0_[3] ,\FiveZeroHzCNT_reg_n_0_[2] ,\FiveZeroHzCNT_reg_n_0_[1] }));
  CARRY4 FiveZeroHzCNT0_carry__0
       (.CI(FiveZeroHzCNT0_carry_n_0),
        .CO({FiveZeroHzCNT0_carry__0_n_0,FiveZeroHzCNT0_carry__0_n_1,FiveZeroHzCNT0_carry__0_n_2,FiveZeroHzCNT0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\FiveZeroHzCNT_reg_n_0_[8] ,\FiveZeroHzCNT_reg_n_0_[7] ,\FiveZeroHzCNT_reg_n_0_[6] ,\FiveZeroHzCNT_reg_n_0_[5] }));
  CARRY4 FiveZeroHzCNT0_carry__1
       (.CI(FiveZeroHzCNT0_carry__0_n_0),
        .CO({FiveZeroHzCNT0_carry__1_n_0,FiveZeroHzCNT0_carry__1_n_1,FiveZeroHzCNT0_carry__1_n_2,FiveZeroHzCNT0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({\FiveZeroHzCNT_reg_n_0_[12] ,\FiveZeroHzCNT_reg_n_0_[11] ,\FiveZeroHzCNT_reg_n_0_[10] ,\FiveZeroHzCNT_reg_n_0_[9] }));
  CARRY4 FiveZeroHzCNT0_carry__2
       (.CI(FiveZeroHzCNT0_carry__1_n_0),
        .CO({FiveZeroHzCNT0_carry__2_n_0,FiveZeroHzCNT0_carry__2_n_1,FiveZeroHzCNT0_carry__2_n_2,FiveZeroHzCNT0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S({\FiveZeroHzCNT_reg_n_0_[16] ,\FiveZeroHzCNT_reg_n_0_[15] ,\FiveZeroHzCNT_reg_n_0_[14] ,\FiveZeroHzCNT_reg_n_0_[13] }));
  CARRY4 FiveZeroHzCNT0_carry__3
       (.CI(FiveZeroHzCNT0_carry__2_n_0),
        .CO({FiveZeroHzCNT0_carry__3_n_0,FiveZeroHzCNT0_carry__3_n_1,FiveZeroHzCNT0_carry__3_n_2,FiveZeroHzCNT0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S({\FiveZeroHzCNT_reg_n_0_[20] ,\FiveZeroHzCNT_reg_n_0_[19] ,\FiveZeroHzCNT_reg_n_0_[18] ,\FiveZeroHzCNT_reg_n_0_[17] }));
  CARRY4 FiveZeroHzCNT0_carry__4
       (.CI(FiveZeroHzCNT0_carry__3_n_0),
        .CO({FiveZeroHzCNT0_carry__4_n_0,FiveZeroHzCNT0_carry__4_n_1,FiveZeroHzCNT0_carry__4_n_2,FiveZeroHzCNT0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S({\FiveZeroHzCNT_reg_n_0_[24] ,\FiveZeroHzCNT_reg_n_0_[23] ,\FiveZeroHzCNT_reg_n_0_[22] ,\FiveZeroHzCNT_reg_n_0_[21] }));
  CARRY4 FiveZeroHzCNT0_carry__5
       (.CI(FiveZeroHzCNT0_carry__4_n_0),
        .CO({FiveZeroHzCNT0_carry__5_n_0,FiveZeroHzCNT0_carry__5_n_1,FiveZeroHzCNT0_carry__5_n_2,FiveZeroHzCNT0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S({\FiveZeroHzCNT_reg_n_0_[28] ,\FiveZeroHzCNT_reg_n_0_[27] ,\FiveZeroHzCNT_reg_n_0_[26] ,\FiveZeroHzCNT_reg_n_0_[25] }));
  CARRY4 FiveZeroHzCNT0_carry__6
       (.CI(FiveZeroHzCNT0_carry__5_n_0),
        .CO({NLW_FiveZeroHzCNT0_carry__6_CO_UNCONNECTED[3:2],FiveZeroHzCNT0_carry__6_n_2,FiveZeroHzCNT0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_FiveZeroHzCNT0_carry__6_O_UNCONNECTED[3],data0[31:29]}),
        .S({1'b0,\FiveZeroHzCNT_reg_n_0_[31] ,\FiveZeroHzCNT_reg_n_0_[30] ,\FiveZeroHzCNT_reg_n_0_[29] }));
  LUT4 #(
    .INIT(16'h00FE)) 
    \FiveZeroHzCNT[0]_i_1 
       (.I0(\FiveZeroHzCNT[0]_i_2_n_0 ),
        .I1(\FiveZeroHzCNT[0]_i_3_n_0 ),
        .I2(\FiveZeroHzCNT[0]_i_4_n_0 ),
        .I3(\FiveZeroHzCNT_reg_n_0_[0] ),
        .O(FiveZeroHzCNT));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FiveZeroHzCNT[0]_i_2 
       (.I0(\FiveZeroHzCNT[0]_i_5_n_0 ),
        .I1(\FiveZeroHzCNT[0]_i_6_n_0 ),
        .I2(\FiveZeroHzCNT_reg_n_0_[31] ),
        .I3(\FiveZeroHzCNT_reg_n_0_[30] ),
        .I4(\FiveZeroHzCNT_reg_n_0_[1] ),
        .I5(\FiveZeroHzCNT[0]_i_7_n_0 ),
        .O(\FiveZeroHzCNT[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \FiveZeroHzCNT[0]_i_3 
       (.I0(\FiveZeroHzCNT_reg_n_0_[4] ),
        .I1(\FiveZeroHzCNT_reg_n_0_[5] ),
        .I2(\FiveZeroHzCNT_reg_n_0_[2] ),
        .I3(\FiveZeroHzCNT_reg_n_0_[3] ),
        .I4(\FiveZeroHzCNT[0]_i_8_n_0 ),
        .O(\FiveZeroHzCNT[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FiveZeroHzCNT[0]_i_4 
       (.I0(\FiveZeroHzCNT_reg_n_0_[12] ),
        .I1(\FiveZeroHzCNT_reg_n_0_[13] ),
        .I2(\FiveZeroHzCNT_reg_n_0_[10] ),
        .I3(\FiveZeroHzCNT_reg_n_0_[11] ),
        .I4(\FiveZeroHzCNT[0]_i_9_n_0 ),
        .O(\FiveZeroHzCNT[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FiveZeroHzCNT[0]_i_5 
       (.I0(\FiveZeroHzCNT_reg_n_0_[23] ),
        .I1(\FiveZeroHzCNT_reg_n_0_[22] ),
        .I2(\FiveZeroHzCNT_reg_n_0_[25] ),
        .I3(\FiveZeroHzCNT_reg_n_0_[24] ),
        .O(\FiveZeroHzCNT[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \FiveZeroHzCNT[0]_i_6 
       (.I0(\FiveZeroHzCNT_reg_n_0_[19] ),
        .I1(\FiveZeroHzCNT_reg_n_0_[18] ),
        .I2(\FiveZeroHzCNT_reg_n_0_[21] ),
        .I3(\FiveZeroHzCNT_reg_n_0_[20] ),
        .O(\FiveZeroHzCNT[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FiveZeroHzCNT[0]_i_7 
       (.I0(\FiveZeroHzCNT_reg_n_0_[27] ),
        .I1(\FiveZeroHzCNT_reg_n_0_[26] ),
        .I2(\FiveZeroHzCNT_reg_n_0_[29] ),
        .I3(\FiveZeroHzCNT_reg_n_0_[28] ),
        .O(\FiveZeroHzCNT[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \FiveZeroHzCNT[0]_i_8 
       (.I0(\FiveZeroHzCNT_reg_n_0_[7] ),
        .I1(\FiveZeroHzCNT_reg_n_0_[6] ),
        .I2(\FiveZeroHzCNT_reg_n_0_[8] ),
        .I3(\FiveZeroHzCNT_reg_n_0_[9] ),
        .O(\FiveZeroHzCNT[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \FiveZeroHzCNT[0]_i_9 
       (.I0(\FiveZeroHzCNT_reg_n_0_[14] ),
        .I1(\FiveZeroHzCNT_reg_n_0_[15] ),
        .I2(\FiveZeroHzCNT_reg_n_0_[17] ),
        .I3(\FiveZeroHzCNT_reg_n_0_[16] ),
        .O(\FiveZeroHzCNT[0]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \FiveZeroHzCNT[31]_i_1 
       (.I0(\FiveZeroHzCNT[0]_i_2_n_0 ),
        .I1(\FiveZeroHzCNT[0]_i_3_n_0 ),
        .I2(\FiveZeroHzCNT[0]_i_4_n_0 ),
        .I3(\FiveZeroHzCNT_reg_n_0_[0] ),
        .O(\FiveZeroHzCNT[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FiveZeroHzCNT_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(FiveZeroHzCNT),
        .Q(\FiveZeroHzCNT_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FiveZeroHzCNT_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(data0[10]),
        .Q(\FiveZeroHzCNT_reg_n_0_[10] ),
        .R(\FiveZeroHzCNT[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FiveZeroHzCNT_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(data0[11]),
        .Q(\FiveZeroHzCNT_reg_n_0_[11] ),
        .R(\FiveZeroHzCNT[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FiveZeroHzCNT_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(data0[12]),
        .Q(\FiveZeroHzCNT_reg_n_0_[12] ),
        .R(\FiveZeroHzCNT[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FiveZeroHzCNT_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(data0[13]),
        .Q(\FiveZeroHzCNT_reg_n_0_[13] ),
        .R(\FiveZeroHzCNT[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FiveZeroHzCNT_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(data0[14]),
        .Q(\FiveZeroHzCNT_reg_n_0_[14] ),
        .R(\FiveZeroHzCNT[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FiveZeroHzCNT_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(data0[15]),
        .Q(\FiveZeroHzCNT_reg_n_0_[15] ),
        .R(\FiveZeroHzCNT[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FiveZeroHzCNT_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(data0[16]),
        .Q(\FiveZeroHzCNT_reg_n_0_[16] ),
        .R(\FiveZeroHzCNT[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FiveZeroHzCNT_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(data0[17]),
        .Q(\FiveZeroHzCNT_reg_n_0_[17] ),
        .R(\FiveZeroHzCNT[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FiveZeroHzCNT_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(data0[18]),
        .Q(\FiveZeroHzCNT_reg_n_0_[18] ),
        .R(\FiveZeroHzCNT[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FiveZeroHzCNT_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(data0[19]),
        .Q(\FiveZeroHzCNT_reg_n_0_[19] ),
        .R(\FiveZeroHzCNT[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FiveZeroHzCNT_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(data0[1]),
        .Q(\FiveZeroHzCNT_reg_n_0_[1] ),
        .R(\FiveZeroHzCNT[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FiveZeroHzCNT_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(data0[20]),
        .Q(\FiveZeroHzCNT_reg_n_0_[20] ),
        .R(\FiveZeroHzCNT[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FiveZeroHzCNT_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(data0[21]),
        .Q(\FiveZeroHzCNT_reg_n_0_[21] ),
        .R(\FiveZeroHzCNT[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FiveZeroHzCNT_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(data0[22]),
        .Q(\FiveZeroHzCNT_reg_n_0_[22] ),
        .R(\FiveZeroHzCNT[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FiveZeroHzCNT_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(data0[23]),
        .Q(\FiveZeroHzCNT_reg_n_0_[23] ),
        .R(\FiveZeroHzCNT[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FiveZeroHzCNT_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(data0[24]),
        .Q(\FiveZeroHzCNT_reg_n_0_[24] ),
        .R(\FiveZeroHzCNT[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FiveZeroHzCNT_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(data0[25]),
        .Q(\FiveZeroHzCNT_reg_n_0_[25] ),
        .R(\FiveZeroHzCNT[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FiveZeroHzCNT_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(data0[26]),
        .Q(\FiveZeroHzCNT_reg_n_0_[26] ),
        .R(\FiveZeroHzCNT[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FiveZeroHzCNT_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(data0[27]),
        .Q(\FiveZeroHzCNT_reg_n_0_[27] ),
        .R(\FiveZeroHzCNT[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FiveZeroHzCNT_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(data0[28]),
        .Q(\FiveZeroHzCNT_reg_n_0_[28] ),
        .R(\FiveZeroHzCNT[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FiveZeroHzCNT_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(data0[29]),
        .Q(\FiveZeroHzCNT_reg_n_0_[29] ),
        .R(\FiveZeroHzCNT[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FiveZeroHzCNT_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(data0[2]),
        .Q(\FiveZeroHzCNT_reg_n_0_[2] ),
        .R(\FiveZeroHzCNT[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FiveZeroHzCNT_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(data0[30]),
        .Q(\FiveZeroHzCNT_reg_n_0_[30] ),
        .R(\FiveZeroHzCNT[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FiveZeroHzCNT_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(data0[31]),
        .Q(\FiveZeroHzCNT_reg_n_0_[31] ),
        .R(\FiveZeroHzCNT[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FiveZeroHzCNT_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(data0[3]),
        .Q(\FiveZeroHzCNT_reg_n_0_[3] ),
        .R(\FiveZeroHzCNT[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FiveZeroHzCNT_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(data0[4]),
        .Q(\FiveZeroHzCNT_reg_n_0_[4] ),
        .R(\FiveZeroHzCNT[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FiveZeroHzCNT_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(data0[5]),
        .Q(\FiveZeroHzCNT_reg_n_0_[5] ),
        .R(\FiveZeroHzCNT[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FiveZeroHzCNT_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(data0[6]),
        .Q(\FiveZeroHzCNT_reg_n_0_[6] ),
        .R(\FiveZeroHzCNT[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FiveZeroHzCNT_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(data0[7]),
        .Q(\FiveZeroHzCNT_reg_n_0_[7] ),
        .R(\FiveZeroHzCNT[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FiveZeroHzCNT_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(data0[8]),
        .Q(\FiveZeroHzCNT_reg_n_0_[8] ),
        .R(\FiveZeroHzCNT[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \FiveZeroHzCNT_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(data0[9]),
        .Q(\FiveZeroHzCNT_reg_n_0_[9] ),
        .R(\FiveZeroHzCNT[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    FiveZeroHzOut_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FiveZeroHzCNT[31]_i_1_n_0 ),
        .Q(FiveZeroHzOut),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFF6EFFFFFF6E0000)) 
    G_i_1
       (.I0(sel0[1]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[3]),
        .I4(SSD_VEC[7]),
        .I5(G_i_2_n_0),
        .O(G_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFF6E)) 
    G_i_2
       (.I0(sel0[6]),
        .I1(sel0[5]),
        .I2(sel0[4]),
        .I3(sel0[7]),
        .O(G_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    G_reg
       (.C(FiveZeroHzOut),
        .CE(1'b1),
        .D(G_i_1_n_0),
        .Q(SSD_VEC[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SEG0Val_reg[0] 
       (.C(FiveZeroHzOut),
        .CE(1'b1),
        .D(SEG0inOne[0]),
        .Q(sel0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SEG0Val_reg[1] 
       (.C(FiveZeroHzOut),
        .CE(1'b1),
        .D(SEG0inOne[1]),
        .Q(sel0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SEG0Val_reg[2] 
       (.C(FiveZeroHzOut),
        .CE(1'b1),
        .D(SEG0inOne[2]),
        .Q(sel0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SEG0Val_reg[3] 
       (.C(FiveZeroHzOut),
        .CE(1'b1),
        .D(SEG0inOne[3]),
        .Q(sel0[3]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h12)) 
    \SEG0inOne[1]_i_1 
       (.I0(\SEG1inOne[0]_i_1_n_0 ),
        .I1(\SEG0inOne[3]_i_1_n_0 ),
        .I2(ASCII_To_Display[1]),
        .O(DCIN0[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00002DD2)) 
    \SEG0inOne[2]_i_1 
       (.I0(\SEG1inOne[0]_i_1_n_0 ),
        .I1(ASCII_To_Display[1]),
        .I2(\SEG0inOne[2]_i_2_n_0 ),
        .I3(ASCII_To_Display[2]),
        .I4(\SEG0inOne[3]_i_1_n_0 ),
        .O(DCIN0[2]));
  LUT6 #(
    .INIT(64'h3B63C6DC2342C49C)) 
    \SEG0inOne[2]_i_2 
       (.I0(ASCII_To_Display[3]),
        .I1(ASCII_To_Display[6]),
        .I2(ASCII_To_Display[5]),
        .I3(ASCII_To_Display[7]),
        .I4(ASCII_To_Display[4]),
        .I5(ASCII_To_Display[2]),
        .O(\SEG0inOne[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFE000000)) 
    \SEG0inOne[3]_i_1 
       (.I0(ASCII_To_Display[4]),
        .I1(ASCII_To_Display[3]),
        .I2(ASCII_To_Display[2]),
        .I3(ASCII_To_Display[5]),
        .I4(ASCII_To_Display[6]),
        .I5(ASCII_To_Display[7]),
        .O(\SEG0inOne[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h40083A5B3A5B8004)) 
    \SEG0inOne[3]_i_2 
       (.I0(\SEG0inOne[3]_i_3_n_0 ),
        .I1(ASCII_To_Display[1]),
        .I2(\SEG0inOne[2]_i_2_n_0 ),
        .I3(ASCII_To_Display[2]),
        .I4(\SEG0inOne[3]_i_4_n_0 ),
        .I5(ASCII_To_Display[3]),
        .O(\SEG0inOne[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h56959969)) 
    \SEG0inOne[3]_i_3 
       (.I0(ASCII_To_Display[3]),
        .I1(ASCII_To_Display[4]),
        .I2(ASCII_To_Display[7]),
        .I3(ASCII_To_Display[5]),
        .I4(ASCII_To_Display[6]),
        .O(\SEG0inOne[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6B5A294A)) 
    \SEG0inOne[3]_i_4 
       (.I0(ASCII_To_Display[7]),
        .I1(ASCII_To_Display[4]),
        .I2(ASCII_To_Display[5]),
        .I3(ASCII_To_Display[6]),
        .I4(ASCII_To_Display[3]),
        .O(\SEG0inOne[3]_i_4_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \SEG0inOne_reg[0] 
       (.C(FiveZeroHzOut),
        .CE(1'b1),
        .D(ASCII_To_Display[0]),
        .Q(SEG0inOne[0]),
        .S(\SEG0inOne[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SEG0inOne_reg[1] 
       (.C(FiveZeroHzOut),
        .CE(1'b1),
        .D(DCIN0[1]),
        .Q(SEG0inOne[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SEG0inOne_reg[2] 
       (.C(FiveZeroHzOut),
        .CE(1'b1),
        .D(DCIN0[2]),
        .Q(SEG0inOne[2]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \SEG0inOne_reg[3] 
       (.C(FiveZeroHzOut),
        .CE(1'b1),
        .D(\SEG0inOne[3]_i_2_n_0 ),
        .Q(SEG0inOne[3]),
        .S(\SEG0inOne[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SEG1Val_reg[0] 
       (.C(FiveZeroHzOut),
        .CE(1'b1),
        .D(SEG1inOne[0]),
        .Q(sel0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SEG1Val_reg[1] 
       (.C(FiveZeroHzOut),
        .CE(1'b1),
        .D(SEG1inOne[1]),
        .Q(sel0[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SEG1Val_reg[2] 
       (.C(FiveZeroHzOut),
        .CE(1'b1),
        .D(SEG1inOne[2]),
        .Q(sel0[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SEG1Val_reg[3] 
       (.C(FiveZeroHzOut),
        .CE(1'b1),
        .D(SEG1inOne[3]),
        .Q(sel0[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h79EF086719EF0861)) 
    \SEG1inOne[0]_i_1 
       (.I0(\SEG0inOne[3]_i_4_n_0 ),
        .I1(ASCII_To_Display[3]),
        .I2(ASCII_To_Display[2]),
        .I3(\SEG0inOne[3]_i_3_n_0 ),
        .I4(\SEG0inOne[2]_i_2_n_0 ),
        .I5(ASCII_To_Display[1]),
        .O(\SEG1inOne[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1101010004041414)) 
    \SEG1inOne[1]_i_1 
       (.I0(ASCII_To_Display[7]),
        .I1(ASCII_To_Display[6]),
        .I2(ASCII_To_Display[5]),
        .I3(ASCII_To_Display[2]),
        .I4(ASCII_To_Display[3]),
        .I5(ASCII_To_Display[4]),
        .O(DCIN1[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h10101404)) 
    \SEG1inOne[2]_i_1 
       (.I0(ASCII_To_Display[7]),
        .I1(ASCII_To_Display[6]),
        .I2(ASCII_To_Display[5]),
        .I3(ASCII_To_Display[3]),
        .I4(ASCII_To_Display[4]),
        .O(DCIN1[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \SEG1inOne[3]_i_1 
       (.I0(ASCII_To_Display[6]),
        .I1(ASCII_To_Display[5]),
        .I2(ASCII_To_Display[4]),
        .O(\SEG1inOne[3]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \SEG1inOne_reg[0] 
       (.C(FiveZeroHzOut),
        .CE(1'b1),
        .D(\SEG1inOne[0]_i_1_n_0 ),
        .Q(SEG1inOne[0]),
        .S(\SEG0inOne[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SEG1inOne_reg[1] 
       (.C(FiveZeroHzOut),
        .CE(1'b1),
        .D(DCIN1[1]),
        .Q(SEG1inOne[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SEG1inOne_reg[2] 
       (.C(FiveZeroHzOut),
        .CE(1'b1),
        .D(DCIN1[2]),
        .Q(SEG1inOne[2]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \SEG1inOne_reg[3] 
       (.C(FiveZeroHzOut),
        .CE(1'b1),
        .D(\SEG1inOne[3]_i_1_n_0 ),
        .Q(SEG1inOne[3]),
        .S(\SEG0inOne[3]_i_1_n_0 ));
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
