-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Fri Apr 30 17:22:07 2021
-- Host        : DESKTOP-QSJNSC0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               G:/Xilinx/Projects/Desktop/AXI_4_Lite_Slave/AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ip/Zynq_Design_AXI4_Lite_Slave_0_0/Zynq_Design_AXI4_Lite_Slave_0_0_sim_netlist.vhdl
-- Design      : Zynq_Design_AXI4_Lite_Slave_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_AXI4_Lite_Slave_0_0_AXI4_Lite_Slave is
  port (
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    lbus_out_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    lbus_out_address : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    lbus_out_strobe : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    lbus_in_complete : in STD_LOGIC;
    lbus_in_addr_OOR : in STD_LOGIC;
    s_axi_aresentn : in STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    lbus_in_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_Design_AXI4_Lite_Slave_0_0_AXI4_Lite_Slave : entity is "AXI4_Lite_Slave";
end Zynq_Design_AXI4_Lite_Slave_0_0_AXI4_Lite_Slave;

architecture STRUCTURE of Zynq_Design_AXI4_Lite_Slave_0_0_AXI4_Lite_Slave is
  signal \FSM_sequential_MainState[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_MainState[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_MainState[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_MainState[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_MainState[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_MainState[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_MainState[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_MainState[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_MainState[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_MainState[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_MainState[4]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_MainState[4]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_MainState[4]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_MainState[4]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_MainState[4]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_MainState[4]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_MainState[4]_i_9_n_0\ : STD_LOGIC;
  signal \MainState1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \MainState1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \MainState1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \MainState1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \MainState1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \MainState1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \MainState1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \MainState1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \MainState1_carry__0_n_0\ : STD_LOGIC;
  signal \MainState1_carry__0_n_1\ : STD_LOGIC;
  signal \MainState1_carry__0_n_2\ : STD_LOGIC;
  signal \MainState1_carry__0_n_3\ : STD_LOGIC;
  signal \MainState1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \MainState1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \MainState1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \MainState1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \MainState1_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \MainState1_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \MainState1_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \MainState1_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \MainState1_carry__1_n_0\ : STD_LOGIC;
  signal \MainState1_carry__1_n_1\ : STD_LOGIC;
  signal \MainState1_carry__1_n_2\ : STD_LOGIC;
  signal \MainState1_carry__1_n_3\ : STD_LOGIC;
  signal \MainState1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \MainState1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \MainState1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \MainState1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \MainState1_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \MainState1_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \MainState1_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \MainState1_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \MainState1_carry__2_n_0\ : STD_LOGIC;
  signal \MainState1_carry__2_n_1\ : STD_LOGIC;
  signal \MainState1_carry__2_n_2\ : STD_LOGIC;
  signal \MainState1_carry__2_n_3\ : STD_LOGIC;
  signal MainState1_carry_i_1_n_0 : STD_LOGIC;
  signal MainState1_carry_i_2_n_0 : STD_LOGIC;
  signal MainState1_carry_i_3_n_0 : STD_LOGIC;
  signal MainState1_carry_i_4_n_0 : STD_LOGIC;
  signal MainState1_carry_i_5_n_0 : STD_LOGIC;
  signal MainState1_carry_n_0 : STD_LOGIC;
  signal MainState1_carry_n_1 : STD_LOGIC;
  signal MainState1_carry_n_2 : STD_LOGIC;
  signal MainState1_carry_n_3 : STD_LOGIC;
  signal \MainState__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal ReadAddressBuffer : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \ReadAddressBuffer[31]_i_1_n_0\ : STD_LOGIC;
  signal TimeoutCounter : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \TimeoutCounter0_carry__0_n_0\ : STD_LOGIC;
  signal \TimeoutCounter0_carry__0_n_1\ : STD_LOGIC;
  signal \TimeoutCounter0_carry__0_n_2\ : STD_LOGIC;
  signal \TimeoutCounter0_carry__0_n_3\ : STD_LOGIC;
  signal \TimeoutCounter0_carry__1_n_0\ : STD_LOGIC;
  signal \TimeoutCounter0_carry__1_n_1\ : STD_LOGIC;
  signal \TimeoutCounter0_carry__1_n_2\ : STD_LOGIC;
  signal \TimeoutCounter0_carry__1_n_3\ : STD_LOGIC;
  signal \TimeoutCounter0_carry__2_n_0\ : STD_LOGIC;
  signal \TimeoutCounter0_carry__2_n_1\ : STD_LOGIC;
  signal \TimeoutCounter0_carry__2_n_2\ : STD_LOGIC;
  signal \TimeoutCounter0_carry__2_n_3\ : STD_LOGIC;
  signal \TimeoutCounter0_carry__3_n_0\ : STD_LOGIC;
  signal \TimeoutCounter0_carry__3_n_1\ : STD_LOGIC;
  signal \TimeoutCounter0_carry__3_n_2\ : STD_LOGIC;
  signal \TimeoutCounter0_carry__3_n_3\ : STD_LOGIC;
  signal \TimeoutCounter0_carry__4_n_0\ : STD_LOGIC;
  signal \TimeoutCounter0_carry__4_n_1\ : STD_LOGIC;
  signal \TimeoutCounter0_carry__4_n_2\ : STD_LOGIC;
  signal \TimeoutCounter0_carry__4_n_3\ : STD_LOGIC;
  signal \TimeoutCounter0_carry__5_n_0\ : STD_LOGIC;
  signal \TimeoutCounter0_carry__5_n_1\ : STD_LOGIC;
  signal \TimeoutCounter0_carry__5_n_2\ : STD_LOGIC;
  signal \TimeoutCounter0_carry__5_n_3\ : STD_LOGIC;
  signal \TimeoutCounter0_carry__6_n_2\ : STD_LOGIC;
  signal \TimeoutCounter0_carry__6_n_3\ : STD_LOGIC;
  signal TimeoutCounter0_carry_n_0 : STD_LOGIC;
  signal TimeoutCounter0_carry_n_1 : STD_LOGIC;
  signal TimeoutCounter0_carry_n_2 : STD_LOGIC;
  signal TimeoutCounter0_carry_n_3 : STD_LOGIC;
  signal \TimeoutCounter[0]_i_1_n_0\ : STD_LOGIC;
  signal \TimeoutCounter[31]_i_1_n_0\ : STD_LOGIC;
  signal \TimeoutCounter[31]_i_2_n_0\ : STD_LOGIC;
  signal \TimeoutCounter[31]_i_3_n_0\ : STD_LOGIC;
  signal \TimeoutCounter[31]_i_4_n_0\ : STD_LOGIC;
  signal WriteDataBuffer : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \WriteDataBuffer[15]_i_1_n_0\ : STD_LOGIC;
  signal \WriteDataBuffer[23]_i_1_n_0\ : STD_LOGIC;
  signal \WriteDataBuffer[31]_i_1_n_0\ : STD_LOGIC;
  signal \WriteDataBuffer[31]_i_2_n_0\ : STD_LOGIC;
  signal \WriteDataBuffer[31]_i_3_n_0\ : STD_LOGIC;
  signal \WriteDataBuffer[7]_i_1_n_0\ : STD_LOGIC;
  signal \lbus_out_address[0]_i_1_n_0\ : STD_LOGIC;
  signal \lbus_out_address[10]_i_1_n_0\ : STD_LOGIC;
  signal \lbus_out_address[11]_i_1_n_0\ : STD_LOGIC;
  signal \lbus_out_address[12]_i_1_n_0\ : STD_LOGIC;
  signal \lbus_out_address[13]_i_1_n_0\ : STD_LOGIC;
  signal \lbus_out_address[14]_i_1_n_0\ : STD_LOGIC;
  signal \lbus_out_address[15]_i_1_n_0\ : STD_LOGIC;
  signal \lbus_out_address[16]_i_1_n_0\ : STD_LOGIC;
  signal \lbus_out_address[17]_i_1_n_0\ : STD_LOGIC;
  signal \lbus_out_address[18]_i_1_n_0\ : STD_LOGIC;
  signal \lbus_out_address[19]_i_1_n_0\ : STD_LOGIC;
  signal \lbus_out_address[1]_i_1_n_0\ : STD_LOGIC;
  signal \lbus_out_address[20]_i_1_n_0\ : STD_LOGIC;
  signal \lbus_out_address[21]_i_1_n_0\ : STD_LOGIC;
  signal \lbus_out_address[22]_i_1_n_0\ : STD_LOGIC;
  signal \lbus_out_address[23]_i_1_n_0\ : STD_LOGIC;
  signal \lbus_out_address[24]_i_1_n_0\ : STD_LOGIC;
  signal \lbus_out_address[25]_i_1_n_0\ : STD_LOGIC;
  signal \lbus_out_address[26]_i_1_n_0\ : STD_LOGIC;
  signal \lbus_out_address[27]_i_1_n_0\ : STD_LOGIC;
  signal \lbus_out_address[28]_i_1_n_0\ : STD_LOGIC;
  signal \lbus_out_address[29]_i_1_n_0\ : STD_LOGIC;
  signal \lbus_out_address[2]_i_1_n_0\ : STD_LOGIC;
  signal \lbus_out_address[30]_i_1_n_0\ : STD_LOGIC;
  signal \lbus_out_address[31]_i_1_n_0\ : STD_LOGIC;
  signal \lbus_out_address[31]_i_2_n_0\ : STD_LOGIC;
  signal \lbus_out_address[3]_i_1_n_0\ : STD_LOGIC;
  signal \lbus_out_address[4]_i_1_n_0\ : STD_LOGIC;
  signal \lbus_out_address[5]_i_1_n_0\ : STD_LOGIC;
  signal \lbus_out_address[6]_i_1_n_0\ : STD_LOGIC;
  signal \lbus_out_address[7]_i_1_n_0\ : STD_LOGIC;
  signal \lbus_out_address[8]_i_1_n_0\ : STD_LOGIC;
  signal \lbus_out_address[9]_i_1_n_0\ : STD_LOGIC;
  signal \lbus_out_data[31]_i_1_n_0\ : STD_LOGIC;
  signal \^lbus_out_strobe\ : STD_LOGIC;
  signal lbus_out_strobe0_out : STD_LOGIC;
  signal lbus_out_strobe_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \^s_axi_arready\ : STD_LOGIC;
  signal s_axi_arready_i_1_n_0 : STD_LOGIC;
  signal s_axi_arready_i_2_n_0 : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal s_axi_awready_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \s_axi_bresp[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_bresp[1]_i_2_n_0\ : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal s_axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal s_axi_bvalid_i_2_n_0 : STD_LOGIC;
  signal \s_axi_rdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[31]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[31]_i_3_n_0\ : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal s_axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal s_axi_rvalid_i_2_n_0 : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal s_axi_wready1_out : STD_LOGIC;
  signal s_axi_wready_i_1_n_0 : STD_LOGIC;
  signal NLW_MainState1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_MainState1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_MainState1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_MainState1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_TimeoutCounter0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_TimeoutCounter0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_MainState[0]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_sequential_MainState[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_sequential_MainState[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_sequential_MainState[4]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_sequential_MainState[4]_i_6\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_sequential_MainState[4]_i_9\ : label is "soft_lutpair4";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_MainState_reg[0]\ : label is "iSTATE:01110,iSTATE0:10001,iSTATE1:01100,iSTATE2:01001,iSTATE3:00011,iSTATE4:00010,iSTATE5:00001,iSTATE6:00000,iSTATE7:01101,iSTATE8:01000,iSTATE9:00110,iSTATE10:01011,iSTATE11:00111,iSTATE12:01010,iSTATE13:00101,iSTATE14:00100,iSTATE15:10000,iSTATE16:01111";
  attribute FSM_ENCODED_STATES of \FSM_sequential_MainState_reg[1]\ : label is "iSTATE:01110,iSTATE0:10001,iSTATE1:01100,iSTATE2:01001,iSTATE3:00011,iSTATE4:00010,iSTATE5:00001,iSTATE6:00000,iSTATE7:01101,iSTATE8:01000,iSTATE9:00110,iSTATE10:01011,iSTATE11:00111,iSTATE12:01010,iSTATE13:00101,iSTATE14:00100,iSTATE15:10000,iSTATE16:01111";
  attribute FSM_ENCODED_STATES of \FSM_sequential_MainState_reg[2]\ : label is "iSTATE:01110,iSTATE0:10001,iSTATE1:01100,iSTATE2:01001,iSTATE3:00011,iSTATE4:00010,iSTATE5:00001,iSTATE6:00000,iSTATE7:01101,iSTATE8:01000,iSTATE9:00110,iSTATE10:01011,iSTATE11:00111,iSTATE12:01010,iSTATE13:00101,iSTATE14:00100,iSTATE15:10000,iSTATE16:01111";
  attribute FSM_ENCODED_STATES of \FSM_sequential_MainState_reg[3]\ : label is "iSTATE:01110,iSTATE0:10001,iSTATE1:01100,iSTATE2:01001,iSTATE3:00011,iSTATE4:00010,iSTATE5:00001,iSTATE6:00000,iSTATE7:01101,iSTATE8:01000,iSTATE9:00110,iSTATE10:01011,iSTATE11:00111,iSTATE12:01010,iSTATE13:00101,iSTATE14:00100,iSTATE15:10000,iSTATE16:01111";
  attribute FSM_ENCODED_STATES of \FSM_sequential_MainState_reg[4]\ : label is "iSTATE:01110,iSTATE0:10001,iSTATE1:01100,iSTATE2:01001,iSTATE3:00011,iSTATE4:00010,iSTATE5:00001,iSTATE6:00000,iSTATE7:01101,iSTATE8:01000,iSTATE9:00110,iSTATE10:01011,iSTATE11:00111,iSTATE12:01010,iSTATE13:00101,iSTATE14:00100,iSTATE15:10000,iSTATE16:01111";
  attribute SOFT_HLUTNM of \TimeoutCounter[31]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \TimeoutCounter[31]_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \WriteDataBuffer[31]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \lbus_out_address[10]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \lbus_out_address[8]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of s_axi_arready_i_2 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \s_axi_bresp[1]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of s_axi_bvalid_i_2 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \s_axi_rdata[31]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of s_axi_rvalid_i_2 : label is "soft_lutpair5";
begin
  lbus_out_strobe <= \^lbus_out_strobe\;
  s_axi_arready <= \^s_axi_arready\;
  s_axi_awready <= \^s_axi_awready\;
  s_axi_bresp(0) <= \^s_axi_bresp\(0);
  s_axi_bvalid <= \^s_axi_bvalid\;
  s_axi_rvalid <= \^s_axi_rvalid\;
  s_axi_wready <= \^s_axi_wready\;
\FSM_sequential_MainState[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF05000400"
    )
        port map (
      I0 => \MainState__0\(0),
      I1 => s_axi_awvalid,
      I2 => \MainState__0\(3),
      I3 => \FSM_sequential_MainState[0]_i_2_n_0\,
      I4 => \MainState__0\(4),
      I5 => \FSM_sequential_MainState[0]_i_3_n_0\,
      O => \FSM_sequential_MainState[0]_i_1_n_0\
    );
\FSM_sequential_MainState[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \MainState__0\(2),
      I1 => \MainState__0\(1),
      O => \FSM_sequential_MainState[0]_i_2_n_0\
    );
\FSM_sequential_MainState[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0322320303030300"
    )
        port map (
      I0 => \MainState1_carry__2_n_0\,
      I1 => \MainState__0\(4),
      I2 => \MainState__0\(0),
      I3 => \MainState__0\(1),
      I4 => \MainState__0\(3),
      I5 => \MainState__0\(2),
      O => \FSM_sequential_MainState[0]_i_3_n_0\
    );
\FSM_sequential_MainState[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \MainState__0\(4),
      I1 => \FSM_sequential_MainState[1]_i_2_n_0\,
      O => \FSM_sequential_MainState[1]_i_1_n_0\
    );
\FSM_sequential_MainState[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFBBFF4400FC"
    )
        port map (
      I0 => \MainState1_carry__2_n_0\,
      I1 => \MainState__0\(2),
      I2 => s_axi_awvalid,
      I3 => \MainState__0\(0),
      I4 => \MainState__0\(1),
      I5 => \MainState__0\(3),
      O => \FSM_sequential_MainState[1]_i_2_n_0\
    );
\FSM_sequential_MainState[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055AAA8AA"
    )
        port map (
      I0 => \MainState__0\(2),
      I1 => \MainState1_carry__2_n_0\,
      I2 => \MainState__0\(3),
      I3 => \MainState__0\(1),
      I4 => \MainState__0\(0),
      I5 => \MainState__0\(4),
      O => \FSM_sequential_MainState[2]_i_1_n_0\
    );
\FSM_sequential_MainState[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F04"
    )
        port map (
      I0 => \MainState__0\(0),
      I1 => \MainState__0\(3),
      I2 => \MainState__0\(4),
      I3 => \FSM_sequential_MainState[3]_i_2_n_0\,
      O => \FSM_sequential_MainState[3]_i_1_n_0\
    );
\FSM_sequential_MainState[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FF0033000000505"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => \MainState1_carry__2_n_0\,
      I2 => \MainState__0\(2),
      I3 => \MainState__0\(3),
      I4 => \MainState__0\(0),
      I5 => \MainState__0\(1),
      O => \FSM_sequential_MainState[3]_i_2_n_0\
    );
\FSM_sequential_MainState[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => s_axi_aresentn,
      I1 => \FSM_sequential_MainState[4]_i_3_n_0\,
      I2 => \FSM_sequential_MainState[4]_i_4_n_0\,
      I3 => \FSM_sequential_MainState[4]_i_5_n_0\,
      I4 => \FSM_sequential_MainState[4]_i_6_n_0\,
      O => \FSM_sequential_MainState[4]_i_1_n_0\
    );
\FSM_sequential_MainState[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20200004"
    )
        port map (
      I0 => \MainState__0\(2),
      I1 => \MainState__0\(4),
      I2 => \MainState__0\(3),
      I3 => \MainState__0\(1),
      I4 => \MainState__0\(0),
      O => \FSM_sequential_MainState[4]_i_2_n_0\
    );
\FSM_sequential_MainState[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEFEEEEEEEFEEE"
    )
        port map (
      I0 => \FSM_sequential_MainState[4]_i_7_n_0\,
      I1 => \FSM_sequential_MainState[4]_i_8_n_0\,
      I2 => \FSM_sequential_MainState[4]_i_9_n_0\,
      I3 => \MainState__0\(2),
      I4 => lbus_in_addr_OOR,
      I5 => \MainState1_carry__2_n_0\,
      O => \FSM_sequential_MainState[4]_i_3_n_0\
    );
\FSM_sequential_MainState[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000CEF000000"
    )
        port map (
      I0 => \MainState__0\(0),
      I1 => s_axi_rready,
      I2 => \MainState__0\(2),
      I3 => \MainState__0\(1),
      I4 => \MainState__0\(3),
      I5 => \MainState__0\(4),
      O => \FSM_sequential_MainState[4]_i_4_n_0\
    );
\FSM_sequential_MainState[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA800A800000000"
    )
        port map (
      I0 => \WriteDataBuffer[31]_i_3_n_0\,
      I1 => lbus_in_complete,
      I2 => \MainState1_carry__2_n_0\,
      I3 => \MainState__0\(0),
      I4 => s_axi_bready,
      I5 => \MainState__0\(2),
      O => \FSM_sequential_MainState[4]_i_5_n_0\
    );
\FSM_sequential_MainState[4]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11101010"
    )
        port map (
      I0 => \MainState__0\(4),
      I1 => \MainState__0\(2),
      I2 => \MainState__0\(0),
      I3 => s_axi_wvalid,
      I4 => \MainState__0\(1),
      O => \FSM_sequential_MainState[4]_i_6_n_0\
    );
\FSM_sequential_MainState[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000F220022"
    )
        port map (
      I0 => \MainState__0\(0),
      I1 => \MainState__0\(1),
      I2 => \MainState__0\(4),
      I3 => \MainState__0\(3),
      I4 => s_axi_bready,
      I5 => \MainState__0\(2),
      O => \FSM_sequential_MainState[4]_i_7_n_0\
    );
\FSM_sequential_MainState[4]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101010101010100"
    )
        port map (
      I0 => \MainState__0\(1),
      I1 => \MainState__0\(3),
      I2 => \MainState__0\(4),
      I3 => \MainState__0\(2),
      I4 => s_axi_awvalid,
      I5 => s_axi_arvalid,
      O => \FSM_sequential_MainState[4]_i_8_n_0\
    );
\FSM_sequential_MainState[4]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \MainState__0\(0),
      I1 => \MainState__0\(4),
      I2 => \MainState__0\(1),
      O => \FSM_sequential_MainState[4]_i_9_n_0\
    );
\FSM_sequential_MainState_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \FSM_sequential_MainState[4]_i_1_n_0\,
      D => \FSM_sequential_MainState[0]_i_1_n_0\,
      Q => \MainState__0\(0),
      R => '0'
    );
\FSM_sequential_MainState_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \FSM_sequential_MainState[4]_i_1_n_0\,
      D => \FSM_sequential_MainState[1]_i_1_n_0\,
      Q => \MainState__0\(1),
      R => '0'
    );
\FSM_sequential_MainState_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \FSM_sequential_MainState[4]_i_1_n_0\,
      D => \FSM_sequential_MainState[2]_i_1_n_0\,
      Q => \MainState__0\(2),
      R => '0'
    );
\FSM_sequential_MainState_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \FSM_sequential_MainState[4]_i_1_n_0\,
      D => \FSM_sequential_MainState[3]_i_1_n_0\,
      Q => \MainState__0\(3),
      R => '0'
    );
\FSM_sequential_MainState_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \FSM_sequential_MainState[4]_i_1_n_0\,
      D => \FSM_sequential_MainState[4]_i_2_n_0\,
      Q => \MainState__0\(4),
      R => '0'
    );
MainState1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => MainState1_carry_n_0,
      CO(2) => MainState1_carry_n_1,
      CO(1) => MainState1_carry_n_2,
      CO(0) => MainState1_carry_n_3,
      CYINIT => '1',
      DI(3) => MainState1_carry_i_1_n_0,
      DI(2) => TimeoutCounter(5),
      DI(1 downto 0) => B"00",
      O(3 downto 0) => NLW_MainState1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => MainState1_carry_i_2_n_0,
      S(2) => MainState1_carry_i_3_n_0,
      S(1) => MainState1_carry_i_4_n_0,
      S(0) => MainState1_carry_i_5_n_0
    );
\MainState1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => MainState1_carry_n_0,
      CO(3) => \MainState1_carry__0_n_0\,
      CO(2) => \MainState1_carry__0_n_1\,
      CO(1) => \MainState1_carry__0_n_2\,
      CO(0) => \MainState1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \MainState1_carry__0_i_1_n_0\,
      DI(2) => \MainState1_carry__0_i_2_n_0\,
      DI(1) => \MainState1_carry__0_i_3_n_0\,
      DI(0) => \MainState1_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_MainState1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \MainState1_carry__0_i_5_n_0\,
      S(2) => \MainState1_carry__0_i_6_n_0\,
      S(1) => \MainState1_carry__0_i_7_n_0\,
      S(0) => \MainState1_carry__0_i_8_n_0\
    );
\MainState1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => TimeoutCounter(14),
      I1 => TimeoutCounter(15),
      O => \MainState1_carry__0_i_1_n_0\
    );
\MainState1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => TimeoutCounter(12),
      I1 => TimeoutCounter(13),
      O => \MainState1_carry__0_i_2_n_0\
    );
\MainState1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => TimeoutCounter(10),
      I1 => TimeoutCounter(11),
      O => \MainState1_carry__0_i_3_n_0\
    );
\MainState1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => TimeoutCounter(8),
      I1 => TimeoutCounter(9),
      O => \MainState1_carry__0_i_4_n_0\
    );
\MainState1_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => TimeoutCounter(15),
      I1 => TimeoutCounter(14),
      O => \MainState1_carry__0_i_5_n_0\
    );
\MainState1_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => TimeoutCounter(13),
      I1 => TimeoutCounter(12),
      O => \MainState1_carry__0_i_6_n_0\
    );
\MainState1_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => TimeoutCounter(11),
      I1 => TimeoutCounter(10),
      O => \MainState1_carry__0_i_7_n_0\
    );
\MainState1_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => TimeoutCounter(9),
      I1 => TimeoutCounter(8),
      O => \MainState1_carry__0_i_8_n_0\
    );
\MainState1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \MainState1_carry__0_n_0\,
      CO(3) => \MainState1_carry__1_n_0\,
      CO(2) => \MainState1_carry__1_n_1\,
      CO(1) => \MainState1_carry__1_n_2\,
      CO(0) => \MainState1_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \MainState1_carry__1_i_1_n_0\,
      DI(2) => \MainState1_carry__1_i_2_n_0\,
      DI(1) => \MainState1_carry__1_i_3_n_0\,
      DI(0) => \MainState1_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_MainState1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \MainState1_carry__1_i_5_n_0\,
      S(2) => \MainState1_carry__1_i_6_n_0\,
      S(1) => \MainState1_carry__1_i_7_n_0\,
      S(0) => \MainState1_carry__1_i_8_n_0\
    );
\MainState1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => TimeoutCounter(22),
      I1 => TimeoutCounter(23),
      O => \MainState1_carry__1_i_1_n_0\
    );
\MainState1_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => TimeoutCounter(20),
      I1 => TimeoutCounter(21),
      O => \MainState1_carry__1_i_2_n_0\
    );
\MainState1_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => TimeoutCounter(18),
      I1 => TimeoutCounter(19),
      O => \MainState1_carry__1_i_3_n_0\
    );
\MainState1_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => TimeoutCounter(16),
      I1 => TimeoutCounter(17),
      O => \MainState1_carry__1_i_4_n_0\
    );
\MainState1_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => TimeoutCounter(23),
      I1 => TimeoutCounter(22),
      O => \MainState1_carry__1_i_5_n_0\
    );
\MainState1_carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => TimeoutCounter(21),
      I1 => TimeoutCounter(20),
      O => \MainState1_carry__1_i_6_n_0\
    );
\MainState1_carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => TimeoutCounter(19),
      I1 => TimeoutCounter(18),
      O => \MainState1_carry__1_i_7_n_0\
    );
\MainState1_carry__1_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => TimeoutCounter(17),
      I1 => TimeoutCounter(16),
      O => \MainState1_carry__1_i_8_n_0\
    );
\MainState1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \MainState1_carry__1_n_0\,
      CO(3) => \MainState1_carry__2_n_0\,
      CO(2) => \MainState1_carry__2_n_1\,
      CO(1) => \MainState1_carry__2_n_2\,
      CO(0) => \MainState1_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \MainState1_carry__2_i_1_n_0\,
      DI(2) => \MainState1_carry__2_i_2_n_0\,
      DI(1) => \MainState1_carry__2_i_3_n_0\,
      DI(0) => \MainState1_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_MainState1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \MainState1_carry__2_i_5_n_0\,
      S(2) => \MainState1_carry__2_i_6_n_0\,
      S(1) => \MainState1_carry__2_i_7_n_0\,
      S(0) => \MainState1_carry__2_i_8_n_0\
    );
\MainState1_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => TimeoutCounter(30),
      I1 => TimeoutCounter(31),
      O => \MainState1_carry__2_i_1_n_0\
    );
\MainState1_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => TimeoutCounter(28),
      I1 => TimeoutCounter(29),
      O => \MainState1_carry__2_i_2_n_0\
    );
\MainState1_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => TimeoutCounter(26),
      I1 => TimeoutCounter(27),
      O => \MainState1_carry__2_i_3_n_0\
    );
\MainState1_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => TimeoutCounter(24),
      I1 => TimeoutCounter(25),
      O => \MainState1_carry__2_i_4_n_0\
    );
\MainState1_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => TimeoutCounter(31),
      I1 => TimeoutCounter(30),
      O => \MainState1_carry__2_i_5_n_0\
    );
\MainState1_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => TimeoutCounter(29),
      I1 => TimeoutCounter(28),
      O => \MainState1_carry__2_i_6_n_0\
    );
\MainState1_carry__2_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => TimeoutCounter(27),
      I1 => TimeoutCounter(26),
      O => \MainState1_carry__2_i_7_n_0\
    );
\MainState1_carry__2_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => TimeoutCounter(25),
      I1 => TimeoutCounter(24),
      O => \MainState1_carry__2_i_8_n_0\
    );
MainState1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => TimeoutCounter(6),
      I1 => TimeoutCounter(7),
      O => MainState1_carry_i_1_n_0
    );
MainState1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => TimeoutCounter(7),
      I1 => TimeoutCounter(6),
      O => MainState1_carry_i_2_n_0
    );
MainState1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => TimeoutCounter(4),
      I1 => TimeoutCounter(5),
      O => MainState1_carry_i_3_n_0
    );
MainState1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => TimeoutCounter(2),
      I1 => TimeoutCounter(3),
      O => MainState1_carry_i_4_n_0
    );
MainState1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => TimeoutCounter(0),
      I1 => TimeoutCounter(1),
      O => MainState1_carry_i_5_n_0
    );
\ReadAddressBuffer[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400000"
    )
        port map (
      I0 => \MainState__0\(4),
      I1 => \MainState__0\(3),
      I2 => s_axi_aresentn,
      I3 => \MainState__0\(2),
      I4 => \MainState__0\(1),
      I5 => \MainState__0\(0),
      O => \ReadAddressBuffer[31]_i_1_n_0\
    );
\ReadAddressBuffer_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ReadAddressBuffer[31]_i_1_n_0\,
      D => s_axi_araddr(0),
      Q => ReadAddressBuffer(0),
      R => '0'
    );
\ReadAddressBuffer_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ReadAddressBuffer[31]_i_1_n_0\,
      D => s_axi_araddr(10),
      Q => ReadAddressBuffer(10),
      R => '0'
    );
\ReadAddressBuffer_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ReadAddressBuffer[31]_i_1_n_0\,
      D => s_axi_araddr(11),
      Q => ReadAddressBuffer(11),
      R => '0'
    );
\ReadAddressBuffer_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ReadAddressBuffer[31]_i_1_n_0\,
      D => s_axi_araddr(12),
      Q => ReadAddressBuffer(12),
      R => '0'
    );
\ReadAddressBuffer_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ReadAddressBuffer[31]_i_1_n_0\,
      D => s_axi_araddr(13),
      Q => ReadAddressBuffer(13),
      R => '0'
    );
\ReadAddressBuffer_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ReadAddressBuffer[31]_i_1_n_0\,
      D => s_axi_araddr(14),
      Q => ReadAddressBuffer(14),
      R => '0'
    );
\ReadAddressBuffer_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ReadAddressBuffer[31]_i_1_n_0\,
      D => s_axi_araddr(15),
      Q => ReadAddressBuffer(15),
      R => '0'
    );
\ReadAddressBuffer_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ReadAddressBuffer[31]_i_1_n_0\,
      D => s_axi_araddr(16),
      Q => ReadAddressBuffer(16),
      R => '0'
    );
\ReadAddressBuffer_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ReadAddressBuffer[31]_i_1_n_0\,
      D => s_axi_araddr(17),
      Q => ReadAddressBuffer(17),
      R => '0'
    );
\ReadAddressBuffer_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ReadAddressBuffer[31]_i_1_n_0\,
      D => s_axi_araddr(18),
      Q => ReadAddressBuffer(18),
      R => '0'
    );
\ReadAddressBuffer_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ReadAddressBuffer[31]_i_1_n_0\,
      D => s_axi_araddr(19),
      Q => ReadAddressBuffer(19),
      R => '0'
    );
\ReadAddressBuffer_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ReadAddressBuffer[31]_i_1_n_0\,
      D => s_axi_araddr(1),
      Q => ReadAddressBuffer(1),
      R => '0'
    );
\ReadAddressBuffer_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ReadAddressBuffer[31]_i_1_n_0\,
      D => s_axi_araddr(20),
      Q => ReadAddressBuffer(20),
      R => '0'
    );
\ReadAddressBuffer_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ReadAddressBuffer[31]_i_1_n_0\,
      D => s_axi_araddr(21),
      Q => ReadAddressBuffer(21),
      R => '0'
    );
\ReadAddressBuffer_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ReadAddressBuffer[31]_i_1_n_0\,
      D => s_axi_araddr(22),
      Q => ReadAddressBuffer(22),
      R => '0'
    );
\ReadAddressBuffer_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ReadAddressBuffer[31]_i_1_n_0\,
      D => s_axi_araddr(23),
      Q => ReadAddressBuffer(23),
      R => '0'
    );
\ReadAddressBuffer_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ReadAddressBuffer[31]_i_1_n_0\,
      D => s_axi_araddr(24),
      Q => ReadAddressBuffer(24),
      R => '0'
    );
\ReadAddressBuffer_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ReadAddressBuffer[31]_i_1_n_0\,
      D => s_axi_araddr(25),
      Q => ReadAddressBuffer(25),
      R => '0'
    );
\ReadAddressBuffer_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ReadAddressBuffer[31]_i_1_n_0\,
      D => s_axi_araddr(26),
      Q => ReadAddressBuffer(26),
      R => '0'
    );
\ReadAddressBuffer_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ReadAddressBuffer[31]_i_1_n_0\,
      D => s_axi_araddr(27),
      Q => ReadAddressBuffer(27),
      R => '0'
    );
\ReadAddressBuffer_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ReadAddressBuffer[31]_i_1_n_0\,
      D => s_axi_araddr(28),
      Q => ReadAddressBuffer(28),
      R => '0'
    );
\ReadAddressBuffer_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ReadAddressBuffer[31]_i_1_n_0\,
      D => s_axi_araddr(29),
      Q => ReadAddressBuffer(29),
      R => '0'
    );
\ReadAddressBuffer_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ReadAddressBuffer[31]_i_1_n_0\,
      D => s_axi_araddr(2),
      Q => ReadAddressBuffer(2),
      R => '0'
    );
\ReadAddressBuffer_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ReadAddressBuffer[31]_i_1_n_0\,
      D => s_axi_araddr(30),
      Q => ReadAddressBuffer(30),
      R => '0'
    );
\ReadAddressBuffer_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ReadAddressBuffer[31]_i_1_n_0\,
      D => s_axi_araddr(31),
      Q => ReadAddressBuffer(31),
      R => '0'
    );
\ReadAddressBuffer_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ReadAddressBuffer[31]_i_1_n_0\,
      D => s_axi_araddr(3),
      Q => ReadAddressBuffer(3),
      R => '0'
    );
\ReadAddressBuffer_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ReadAddressBuffer[31]_i_1_n_0\,
      D => s_axi_araddr(4),
      Q => ReadAddressBuffer(4),
      R => '0'
    );
\ReadAddressBuffer_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ReadAddressBuffer[31]_i_1_n_0\,
      D => s_axi_araddr(5),
      Q => ReadAddressBuffer(5),
      R => '0'
    );
\ReadAddressBuffer_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ReadAddressBuffer[31]_i_1_n_0\,
      D => s_axi_araddr(6),
      Q => ReadAddressBuffer(6),
      R => '0'
    );
\ReadAddressBuffer_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ReadAddressBuffer[31]_i_1_n_0\,
      D => s_axi_araddr(7),
      Q => ReadAddressBuffer(7),
      R => '0'
    );
\ReadAddressBuffer_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ReadAddressBuffer[31]_i_1_n_0\,
      D => s_axi_araddr(8),
      Q => ReadAddressBuffer(8),
      R => '0'
    );
\ReadAddressBuffer_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \ReadAddressBuffer[31]_i_1_n_0\,
      D => s_axi_araddr(9),
      Q => ReadAddressBuffer(9),
      R => '0'
    );
TimeoutCounter0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => TimeoutCounter0_carry_n_0,
      CO(2) => TimeoutCounter0_carry_n_1,
      CO(1) => TimeoutCounter0_carry_n_2,
      CO(0) => TimeoutCounter0_carry_n_3,
      CYINIT => TimeoutCounter(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_0_in(4 downto 1),
      S(3 downto 0) => TimeoutCounter(4 downto 1)
    );
\TimeoutCounter0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => TimeoutCounter0_carry_n_0,
      CO(3) => \TimeoutCounter0_carry__0_n_0\,
      CO(2) => \TimeoutCounter0_carry__0_n_1\,
      CO(1) => \TimeoutCounter0_carry__0_n_2\,
      CO(0) => \TimeoutCounter0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_0_in(8 downto 5),
      S(3 downto 0) => TimeoutCounter(8 downto 5)
    );
\TimeoutCounter0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \TimeoutCounter0_carry__0_n_0\,
      CO(3) => \TimeoutCounter0_carry__1_n_0\,
      CO(2) => \TimeoutCounter0_carry__1_n_1\,
      CO(1) => \TimeoutCounter0_carry__1_n_2\,
      CO(0) => \TimeoutCounter0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_0_in(12 downto 9),
      S(3 downto 0) => TimeoutCounter(12 downto 9)
    );
\TimeoutCounter0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \TimeoutCounter0_carry__1_n_0\,
      CO(3) => \TimeoutCounter0_carry__2_n_0\,
      CO(2) => \TimeoutCounter0_carry__2_n_1\,
      CO(1) => \TimeoutCounter0_carry__2_n_2\,
      CO(0) => \TimeoutCounter0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_0_in(16 downto 13),
      S(3 downto 0) => TimeoutCounter(16 downto 13)
    );
\TimeoutCounter0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \TimeoutCounter0_carry__2_n_0\,
      CO(3) => \TimeoutCounter0_carry__3_n_0\,
      CO(2) => \TimeoutCounter0_carry__3_n_1\,
      CO(1) => \TimeoutCounter0_carry__3_n_2\,
      CO(0) => \TimeoutCounter0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_0_in(20 downto 17),
      S(3 downto 0) => TimeoutCounter(20 downto 17)
    );
\TimeoutCounter0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \TimeoutCounter0_carry__3_n_0\,
      CO(3) => \TimeoutCounter0_carry__4_n_0\,
      CO(2) => \TimeoutCounter0_carry__4_n_1\,
      CO(1) => \TimeoutCounter0_carry__4_n_2\,
      CO(0) => \TimeoutCounter0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_0_in(24 downto 21),
      S(3 downto 0) => TimeoutCounter(24 downto 21)
    );
\TimeoutCounter0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \TimeoutCounter0_carry__4_n_0\,
      CO(3) => \TimeoutCounter0_carry__5_n_0\,
      CO(2) => \TimeoutCounter0_carry__5_n_1\,
      CO(1) => \TimeoutCounter0_carry__5_n_2\,
      CO(0) => \TimeoutCounter0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_0_in(28 downto 25),
      S(3 downto 0) => TimeoutCounter(28 downto 25)
    );
\TimeoutCounter0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \TimeoutCounter0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_TimeoutCounter0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \TimeoutCounter0_carry__6_n_2\,
      CO(0) => \TimeoutCounter0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_TimeoutCounter0_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => p_0_in(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => TimeoutCounter(31 downto 29)
    );
\TimeoutCounter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000005100010"
    )
        port map (
      I0 => \MainState1_carry__2_n_0\,
      I1 => lbus_in_complete,
      I2 => \TimeoutCounter[31]_i_3_n_0\,
      I3 => \TimeoutCounter[31]_i_4_n_0\,
      I4 => lbus_in_addr_OOR,
      I5 => TimeoutCounter(0),
      O => \TimeoutCounter[0]_i_1_n_0\
    );
\TimeoutCounter[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA88A8AAAAAAA8AA"
    )
        port map (
      I0 => \TimeoutCounter[31]_i_2_n_0\,
      I1 => \MainState1_carry__2_n_0\,
      I2 => lbus_in_complete,
      I3 => \TimeoutCounter[31]_i_3_n_0\,
      I4 => \TimeoutCounter[31]_i_4_n_0\,
      I5 => lbus_in_addr_OOR,
      O => \TimeoutCounter[31]_i_1_n_0\
    );
\TimeoutCounter[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0012060000000000"
    )
        port map (
      I0 => \MainState__0\(3),
      I1 => \MainState__0\(4),
      I2 => \MainState__0\(1),
      I3 => \MainState__0\(0),
      I4 => \MainState__0\(2),
      I5 => s_axi_aresentn,
      O => \TimeoutCounter[31]_i_2_n_0\
    );
\TimeoutCounter[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \MainState__0\(4),
      I1 => \MainState__0\(3),
      O => \TimeoutCounter[31]_i_3_n_0\
    );
\TimeoutCounter[31]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \MainState__0\(3),
      I1 => \MainState__0\(2),
      I2 => \MainState__0\(4),
      O => \TimeoutCounter[31]_i_4_n_0\
    );
\TimeoutCounter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \TimeoutCounter[31]_i_2_n_0\,
      D => \TimeoutCounter[0]_i_1_n_0\,
      Q => TimeoutCounter(0),
      R => '0'
    );
\TimeoutCounter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \TimeoutCounter[31]_i_2_n_0\,
      D => p_0_in(10),
      Q => TimeoutCounter(10),
      R => \TimeoutCounter[31]_i_1_n_0\
    );
\TimeoutCounter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \TimeoutCounter[31]_i_2_n_0\,
      D => p_0_in(11),
      Q => TimeoutCounter(11),
      R => \TimeoutCounter[31]_i_1_n_0\
    );
\TimeoutCounter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \TimeoutCounter[31]_i_2_n_0\,
      D => p_0_in(12),
      Q => TimeoutCounter(12),
      R => \TimeoutCounter[31]_i_1_n_0\
    );
\TimeoutCounter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \TimeoutCounter[31]_i_2_n_0\,
      D => p_0_in(13),
      Q => TimeoutCounter(13),
      R => \TimeoutCounter[31]_i_1_n_0\
    );
\TimeoutCounter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \TimeoutCounter[31]_i_2_n_0\,
      D => p_0_in(14),
      Q => TimeoutCounter(14),
      R => \TimeoutCounter[31]_i_1_n_0\
    );
\TimeoutCounter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \TimeoutCounter[31]_i_2_n_0\,
      D => p_0_in(15),
      Q => TimeoutCounter(15),
      R => \TimeoutCounter[31]_i_1_n_0\
    );
\TimeoutCounter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \TimeoutCounter[31]_i_2_n_0\,
      D => p_0_in(16),
      Q => TimeoutCounter(16),
      R => \TimeoutCounter[31]_i_1_n_0\
    );
\TimeoutCounter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \TimeoutCounter[31]_i_2_n_0\,
      D => p_0_in(17),
      Q => TimeoutCounter(17),
      R => \TimeoutCounter[31]_i_1_n_0\
    );
\TimeoutCounter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \TimeoutCounter[31]_i_2_n_0\,
      D => p_0_in(18),
      Q => TimeoutCounter(18),
      R => \TimeoutCounter[31]_i_1_n_0\
    );
\TimeoutCounter_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \TimeoutCounter[31]_i_2_n_0\,
      D => p_0_in(19),
      Q => TimeoutCounter(19),
      R => \TimeoutCounter[31]_i_1_n_0\
    );
\TimeoutCounter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \TimeoutCounter[31]_i_2_n_0\,
      D => p_0_in(1),
      Q => TimeoutCounter(1),
      R => \TimeoutCounter[31]_i_1_n_0\
    );
\TimeoutCounter_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \TimeoutCounter[31]_i_2_n_0\,
      D => p_0_in(20),
      Q => TimeoutCounter(20),
      R => \TimeoutCounter[31]_i_1_n_0\
    );
\TimeoutCounter_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \TimeoutCounter[31]_i_2_n_0\,
      D => p_0_in(21),
      Q => TimeoutCounter(21),
      R => \TimeoutCounter[31]_i_1_n_0\
    );
\TimeoutCounter_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \TimeoutCounter[31]_i_2_n_0\,
      D => p_0_in(22),
      Q => TimeoutCounter(22),
      R => \TimeoutCounter[31]_i_1_n_0\
    );
\TimeoutCounter_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \TimeoutCounter[31]_i_2_n_0\,
      D => p_0_in(23),
      Q => TimeoutCounter(23),
      R => \TimeoutCounter[31]_i_1_n_0\
    );
\TimeoutCounter_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \TimeoutCounter[31]_i_2_n_0\,
      D => p_0_in(24),
      Q => TimeoutCounter(24),
      R => \TimeoutCounter[31]_i_1_n_0\
    );
\TimeoutCounter_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \TimeoutCounter[31]_i_2_n_0\,
      D => p_0_in(25),
      Q => TimeoutCounter(25),
      R => \TimeoutCounter[31]_i_1_n_0\
    );
\TimeoutCounter_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \TimeoutCounter[31]_i_2_n_0\,
      D => p_0_in(26),
      Q => TimeoutCounter(26),
      R => \TimeoutCounter[31]_i_1_n_0\
    );
\TimeoutCounter_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \TimeoutCounter[31]_i_2_n_0\,
      D => p_0_in(27),
      Q => TimeoutCounter(27),
      R => \TimeoutCounter[31]_i_1_n_0\
    );
\TimeoutCounter_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \TimeoutCounter[31]_i_2_n_0\,
      D => p_0_in(28),
      Q => TimeoutCounter(28),
      R => \TimeoutCounter[31]_i_1_n_0\
    );
\TimeoutCounter_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \TimeoutCounter[31]_i_2_n_0\,
      D => p_0_in(29),
      Q => TimeoutCounter(29),
      R => \TimeoutCounter[31]_i_1_n_0\
    );
\TimeoutCounter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \TimeoutCounter[31]_i_2_n_0\,
      D => p_0_in(2),
      Q => TimeoutCounter(2),
      R => \TimeoutCounter[31]_i_1_n_0\
    );
\TimeoutCounter_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \TimeoutCounter[31]_i_2_n_0\,
      D => p_0_in(30),
      Q => TimeoutCounter(30),
      R => \TimeoutCounter[31]_i_1_n_0\
    );
\TimeoutCounter_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \TimeoutCounter[31]_i_2_n_0\,
      D => p_0_in(31),
      Q => TimeoutCounter(31),
      R => \TimeoutCounter[31]_i_1_n_0\
    );
\TimeoutCounter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \TimeoutCounter[31]_i_2_n_0\,
      D => p_0_in(3),
      Q => TimeoutCounter(3),
      R => \TimeoutCounter[31]_i_1_n_0\
    );
\TimeoutCounter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \TimeoutCounter[31]_i_2_n_0\,
      D => p_0_in(4),
      Q => TimeoutCounter(4),
      R => \TimeoutCounter[31]_i_1_n_0\
    );
\TimeoutCounter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \TimeoutCounter[31]_i_2_n_0\,
      D => p_0_in(5),
      Q => TimeoutCounter(5),
      R => \TimeoutCounter[31]_i_1_n_0\
    );
\TimeoutCounter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \TimeoutCounter[31]_i_2_n_0\,
      D => p_0_in(6),
      Q => TimeoutCounter(6),
      R => \TimeoutCounter[31]_i_1_n_0\
    );
\TimeoutCounter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \TimeoutCounter[31]_i_2_n_0\,
      D => p_0_in(7),
      Q => TimeoutCounter(7),
      R => \TimeoutCounter[31]_i_1_n_0\
    );
\TimeoutCounter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \TimeoutCounter[31]_i_2_n_0\,
      D => p_0_in(8),
      Q => TimeoutCounter(8),
      R => \TimeoutCounter[31]_i_1_n_0\
    );
\TimeoutCounter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \TimeoutCounter[31]_i_2_n_0\,
      D => p_0_in(9),
      Q => TimeoutCounter(9),
      R => \TimeoutCounter[31]_i_1_n_0\
    );
\WriteDataBuffer[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \WriteDataBuffer[31]_i_2_n_0\,
      I1 => s_axi_wstrb(1),
      O => \WriteDataBuffer[15]_i_1_n_0\
    );
\WriteDataBuffer[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \WriteDataBuffer[31]_i_2_n_0\,
      I1 => s_axi_wstrb(2),
      O => \WriteDataBuffer[23]_i_1_n_0\
    );
\WriteDataBuffer[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \WriteDataBuffer[31]_i_2_n_0\,
      I1 => s_axi_wstrb(3),
      O => \WriteDataBuffer[31]_i_1_n_0\
    );
\WriteDataBuffer[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => \MainState__0\(0),
      I1 => \MainState__0\(1),
      I2 => \WriteDataBuffer[31]_i_3_n_0\,
      I3 => s_axi_wvalid,
      I4 => s_axi_aresentn,
      I5 => \MainState__0\(2),
      O => \WriteDataBuffer[31]_i_2_n_0\
    );
\WriteDataBuffer[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \MainState__0\(3),
      I1 => \MainState__0\(4),
      O => \WriteDataBuffer[31]_i_3_n_0\
    );
\WriteDataBuffer[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \WriteDataBuffer[31]_i_2_n_0\,
      I1 => s_axi_wstrb(0),
      O => \WriteDataBuffer[7]_i_1_n_0\
    );
\WriteDataBuffer_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \WriteDataBuffer[31]_i_2_n_0\,
      D => s_axi_wdata(0),
      Q => WriteDataBuffer(0),
      R => \WriteDataBuffer[7]_i_1_n_0\
    );
\WriteDataBuffer_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \WriteDataBuffer[31]_i_2_n_0\,
      D => s_axi_wdata(10),
      Q => WriteDataBuffer(10),
      R => \WriteDataBuffer[15]_i_1_n_0\
    );
\WriteDataBuffer_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \WriteDataBuffer[31]_i_2_n_0\,
      D => s_axi_wdata(11),
      Q => WriteDataBuffer(11),
      R => \WriteDataBuffer[15]_i_1_n_0\
    );
\WriteDataBuffer_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \WriteDataBuffer[31]_i_2_n_0\,
      D => s_axi_wdata(12),
      Q => WriteDataBuffer(12),
      R => \WriteDataBuffer[15]_i_1_n_0\
    );
\WriteDataBuffer_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \WriteDataBuffer[31]_i_2_n_0\,
      D => s_axi_wdata(13),
      Q => WriteDataBuffer(13),
      R => \WriteDataBuffer[15]_i_1_n_0\
    );
\WriteDataBuffer_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \WriteDataBuffer[31]_i_2_n_0\,
      D => s_axi_wdata(14),
      Q => WriteDataBuffer(14),
      R => \WriteDataBuffer[15]_i_1_n_0\
    );
\WriteDataBuffer_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \WriteDataBuffer[31]_i_2_n_0\,
      D => s_axi_wdata(15),
      Q => WriteDataBuffer(15),
      R => \WriteDataBuffer[15]_i_1_n_0\
    );
\WriteDataBuffer_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \WriteDataBuffer[31]_i_2_n_0\,
      D => s_axi_wdata(16),
      Q => WriteDataBuffer(16),
      R => \WriteDataBuffer[23]_i_1_n_0\
    );
\WriteDataBuffer_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \WriteDataBuffer[31]_i_2_n_0\,
      D => s_axi_wdata(17),
      Q => WriteDataBuffer(17),
      R => \WriteDataBuffer[23]_i_1_n_0\
    );
\WriteDataBuffer_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \WriteDataBuffer[31]_i_2_n_0\,
      D => s_axi_wdata(18),
      Q => WriteDataBuffer(18),
      R => \WriteDataBuffer[23]_i_1_n_0\
    );
\WriteDataBuffer_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \WriteDataBuffer[31]_i_2_n_0\,
      D => s_axi_wdata(19),
      Q => WriteDataBuffer(19),
      R => \WriteDataBuffer[23]_i_1_n_0\
    );
\WriteDataBuffer_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \WriteDataBuffer[31]_i_2_n_0\,
      D => s_axi_wdata(1),
      Q => WriteDataBuffer(1),
      R => \WriteDataBuffer[7]_i_1_n_0\
    );
\WriteDataBuffer_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \WriteDataBuffer[31]_i_2_n_0\,
      D => s_axi_wdata(20),
      Q => WriteDataBuffer(20),
      R => \WriteDataBuffer[23]_i_1_n_0\
    );
\WriteDataBuffer_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \WriteDataBuffer[31]_i_2_n_0\,
      D => s_axi_wdata(21),
      Q => WriteDataBuffer(21),
      R => \WriteDataBuffer[23]_i_1_n_0\
    );
\WriteDataBuffer_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \WriteDataBuffer[31]_i_2_n_0\,
      D => s_axi_wdata(22),
      Q => WriteDataBuffer(22),
      R => \WriteDataBuffer[23]_i_1_n_0\
    );
\WriteDataBuffer_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \WriteDataBuffer[31]_i_2_n_0\,
      D => s_axi_wdata(23),
      Q => WriteDataBuffer(23),
      R => \WriteDataBuffer[23]_i_1_n_0\
    );
\WriteDataBuffer_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \WriteDataBuffer[31]_i_2_n_0\,
      D => s_axi_wdata(24),
      Q => WriteDataBuffer(24),
      R => \WriteDataBuffer[31]_i_1_n_0\
    );
\WriteDataBuffer_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \WriteDataBuffer[31]_i_2_n_0\,
      D => s_axi_wdata(25),
      Q => WriteDataBuffer(25),
      R => \WriteDataBuffer[31]_i_1_n_0\
    );
\WriteDataBuffer_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \WriteDataBuffer[31]_i_2_n_0\,
      D => s_axi_wdata(26),
      Q => WriteDataBuffer(26),
      R => \WriteDataBuffer[31]_i_1_n_0\
    );
\WriteDataBuffer_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \WriteDataBuffer[31]_i_2_n_0\,
      D => s_axi_wdata(27),
      Q => WriteDataBuffer(27),
      R => \WriteDataBuffer[31]_i_1_n_0\
    );
\WriteDataBuffer_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \WriteDataBuffer[31]_i_2_n_0\,
      D => s_axi_wdata(28),
      Q => WriteDataBuffer(28),
      R => \WriteDataBuffer[31]_i_1_n_0\
    );
\WriteDataBuffer_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \WriteDataBuffer[31]_i_2_n_0\,
      D => s_axi_wdata(29),
      Q => WriteDataBuffer(29),
      R => \WriteDataBuffer[31]_i_1_n_0\
    );
\WriteDataBuffer_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \WriteDataBuffer[31]_i_2_n_0\,
      D => s_axi_wdata(2),
      Q => WriteDataBuffer(2),
      R => \WriteDataBuffer[7]_i_1_n_0\
    );
\WriteDataBuffer_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \WriteDataBuffer[31]_i_2_n_0\,
      D => s_axi_wdata(30),
      Q => WriteDataBuffer(30),
      R => \WriteDataBuffer[31]_i_1_n_0\
    );
\WriteDataBuffer_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \WriteDataBuffer[31]_i_2_n_0\,
      D => s_axi_wdata(31),
      Q => WriteDataBuffer(31),
      R => \WriteDataBuffer[31]_i_1_n_0\
    );
\WriteDataBuffer_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \WriteDataBuffer[31]_i_2_n_0\,
      D => s_axi_wdata(3),
      Q => WriteDataBuffer(3),
      R => \WriteDataBuffer[7]_i_1_n_0\
    );
\WriteDataBuffer_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \WriteDataBuffer[31]_i_2_n_0\,
      D => s_axi_wdata(4),
      Q => WriteDataBuffer(4),
      R => \WriteDataBuffer[7]_i_1_n_0\
    );
\WriteDataBuffer_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \WriteDataBuffer[31]_i_2_n_0\,
      D => s_axi_wdata(5),
      Q => WriteDataBuffer(5),
      R => \WriteDataBuffer[7]_i_1_n_0\
    );
\WriteDataBuffer_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \WriteDataBuffer[31]_i_2_n_0\,
      D => s_axi_wdata(6),
      Q => WriteDataBuffer(6),
      R => \WriteDataBuffer[7]_i_1_n_0\
    );
\WriteDataBuffer_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \WriteDataBuffer[31]_i_2_n_0\,
      D => s_axi_wdata(7),
      Q => WriteDataBuffer(7),
      R => \WriteDataBuffer[7]_i_1_n_0\
    );
\WriteDataBuffer_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \WriteDataBuffer[31]_i_2_n_0\,
      D => s_axi_wdata(8),
      Q => WriteDataBuffer(8),
      R => \WriteDataBuffer[15]_i_1_n_0\
    );
\WriteDataBuffer_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \WriteDataBuffer[31]_i_2_n_0\,
      D => s_axi_wdata(9),
      Q => WriteDataBuffer(9),
      R => \WriteDataBuffer[15]_i_1_n_0\
    );
\lbus_out_address[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C0C"
    )
        port map (
      I0 => ReadAddressBuffer(0),
      I1 => s_axi_awaddr(0),
      I2 => \MainState__0\(4),
      I3 => \MainState__0\(1),
      I4 => \MainState__0\(3),
      O => \lbus_out_address[0]_i_1_n_0\
    );
\lbus_out_address[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C0C"
    )
        port map (
      I0 => ReadAddressBuffer(10),
      I1 => s_axi_awaddr(10),
      I2 => \MainState__0\(4),
      I3 => \MainState__0\(1),
      I4 => \MainState__0\(3),
      O => \lbus_out_address[10]_i_1_n_0\
    );
\lbus_out_address[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C0C"
    )
        port map (
      I0 => ReadAddressBuffer(11),
      I1 => s_axi_awaddr(11),
      I2 => \MainState__0\(4),
      I3 => \MainState__0\(1),
      I4 => \MainState__0\(3),
      O => \lbus_out_address[11]_i_1_n_0\
    );
\lbus_out_address[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C0C"
    )
        port map (
      I0 => ReadAddressBuffer(12),
      I1 => s_axi_awaddr(12),
      I2 => \MainState__0\(4),
      I3 => \MainState__0\(1),
      I4 => \MainState__0\(3),
      O => \lbus_out_address[12]_i_1_n_0\
    );
\lbus_out_address[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C0C"
    )
        port map (
      I0 => ReadAddressBuffer(13),
      I1 => s_axi_awaddr(13),
      I2 => \MainState__0\(4),
      I3 => \MainState__0\(1),
      I4 => \MainState__0\(3),
      O => \lbus_out_address[13]_i_1_n_0\
    );
\lbus_out_address[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C0C"
    )
        port map (
      I0 => ReadAddressBuffer(14),
      I1 => s_axi_awaddr(14),
      I2 => \MainState__0\(4),
      I3 => \MainState__0\(1),
      I4 => \MainState__0\(3),
      O => \lbus_out_address[14]_i_1_n_0\
    );
\lbus_out_address[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C0C"
    )
        port map (
      I0 => ReadAddressBuffer(15),
      I1 => s_axi_awaddr(15),
      I2 => \MainState__0\(4),
      I3 => \MainState__0\(1),
      I4 => \MainState__0\(3),
      O => \lbus_out_address[15]_i_1_n_0\
    );
\lbus_out_address[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C0C"
    )
        port map (
      I0 => ReadAddressBuffer(16),
      I1 => s_axi_awaddr(16),
      I2 => \MainState__0\(4),
      I3 => \MainState__0\(1),
      I4 => \MainState__0\(3),
      O => \lbus_out_address[16]_i_1_n_0\
    );
\lbus_out_address[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C0C"
    )
        port map (
      I0 => ReadAddressBuffer(17),
      I1 => s_axi_awaddr(17),
      I2 => \MainState__0\(4),
      I3 => \MainState__0\(1),
      I4 => \MainState__0\(3),
      O => \lbus_out_address[17]_i_1_n_0\
    );
\lbus_out_address[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C0C"
    )
        port map (
      I0 => ReadAddressBuffer(18),
      I1 => s_axi_awaddr(18),
      I2 => \MainState__0\(4),
      I3 => \MainState__0\(1),
      I4 => \MainState__0\(3),
      O => \lbus_out_address[18]_i_1_n_0\
    );
\lbus_out_address[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C0C"
    )
        port map (
      I0 => ReadAddressBuffer(19),
      I1 => s_axi_awaddr(19),
      I2 => \MainState__0\(4),
      I3 => \MainState__0\(1),
      I4 => \MainState__0\(3),
      O => \lbus_out_address[19]_i_1_n_0\
    );
\lbus_out_address[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C0C"
    )
        port map (
      I0 => ReadAddressBuffer(1),
      I1 => s_axi_awaddr(1),
      I2 => \MainState__0\(4),
      I3 => \MainState__0\(1),
      I4 => \MainState__0\(3),
      O => \lbus_out_address[1]_i_1_n_0\
    );
\lbus_out_address[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C0C"
    )
        port map (
      I0 => ReadAddressBuffer(20),
      I1 => s_axi_awaddr(20),
      I2 => \MainState__0\(4),
      I3 => \MainState__0\(1),
      I4 => \MainState__0\(3),
      O => \lbus_out_address[20]_i_1_n_0\
    );
\lbus_out_address[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C0C"
    )
        port map (
      I0 => ReadAddressBuffer(21),
      I1 => s_axi_awaddr(21),
      I2 => \MainState__0\(4),
      I3 => \MainState__0\(1),
      I4 => \MainState__0\(3),
      O => \lbus_out_address[21]_i_1_n_0\
    );
\lbus_out_address[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C0C"
    )
        port map (
      I0 => ReadAddressBuffer(22),
      I1 => s_axi_awaddr(22),
      I2 => \MainState__0\(4),
      I3 => \MainState__0\(1),
      I4 => \MainState__0\(3),
      O => \lbus_out_address[22]_i_1_n_0\
    );
\lbus_out_address[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C0C"
    )
        port map (
      I0 => ReadAddressBuffer(23),
      I1 => s_axi_awaddr(23),
      I2 => \MainState__0\(4),
      I3 => \MainState__0\(1),
      I4 => \MainState__0\(3),
      O => \lbus_out_address[23]_i_1_n_0\
    );
\lbus_out_address[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C0C"
    )
        port map (
      I0 => ReadAddressBuffer(24),
      I1 => s_axi_awaddr(24),
      I2 => \MainState__0\(4),
      I3 => \MainState__0\(1),
      I4 => \MainState__0\(3),
      O => \lbus_out_address[24]_i_1_n_0\
    );
\lbus_out_address[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C0C"
    )
        port map (
      I0 => ReadAddressBuffer(25),
      I1 => s_axi_awaddr(25),
      I2 => \MainState__0\(4),
      I3 => \MainState__0\(1),
      I4 => \MainState__0\(3),
      O => \lbus_out_address[25]_i_1_n_0\
    );
\lbus_out_address[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C0C"
    )
        port map (
      I0 => ReadAddressBuffer(26),
      I1 => s_axi_awaddr(26),
      I2 => \MainState__0\(4),
      I3 => \MainState__0\(1),
      I4 => \MainState__0\(3),
      O => \lbus_out_address[26]_i_1_n_0\
    );
\lbus_out_address[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C0C"
    )
        port map (
      I0 => ReadAddressBuffer(27),
      I1 => s_axi_awaddr(27),
      I2 => \MainState__0\(4),
      I3 => \MainState__0\(1),
      I4 => \MainState__0\(3),
      O => \lbus_out_address[27]_i_1_n_0\
    );
\lbus_out_address[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C0C"
    )
        port map (
      I0 => ReadAddressBuffer(28),
      I1 => s_axi_awaddr(28),
      I2 => \MainState__0\(4),
      I3 => \MainState__0\(1),
      I4 => \MainState__0\(3),
      O => \lbus_out_address[28]_i_1_n_0\
    );
\lbus_out_address[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C0C"
    )
        port map (
      I0 => ReadAddressBuffer(29),
      I1 => s_axi_awaddr(29),
      I2 => \MainState__0\(4),
      I3 => \MainState__0\(1),
      I4 => \MainState__0\(3),
      O => \lbus_out_address[29]_i_1_n_0\
    );
\lbus_out_address[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C0C"
    )
        port map (
      I0 => ReadAddressBuffer(2),
      I1 => s_axi_awaddr(2),
      I2 => \MainState__0\(4),
      I3 => \MainState__0\(1),
      I4 => \MainState__0\(3),
      O => \lbus_out_address[2]_i_1_n_0\
    );
\lbus_out_address[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C0C"
    )
        port map (
      I0 => ReadAddressBuffer(30),
      I1 => s_axi_awaddr(30),
      I2 => \MainState__0\(4),
      I3 => \MainState__0\(1),
      I4 => \MainState__0\(3),
      O => \lbus_out_address[30]_i_1_n_0\
    );
\lbus_out_address[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000470000000000"
    )
        port map (
      I0 => \MainState__0\(4),
      I1 => \MainState__0\(3),
      I2 => \MainState__0\(1),
      I3 => \MainState__0\(0),
      I4 => \MainState__0\(2),
      I5 => s_axi_aresentn,
      O => \lbus_out_address[31]_i_1_n_0\
    );
\lbus_out_address[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C0C"
    )
        port map (
      I0 => ReadAddressBuffer(31),
      I1 => s_axi_awaddr(31),
      I2 => \MainState__0\(4),
      I3 => \MainState__0\(1),
      I4 => \MainState__0\(3),
      O => \lbus_out_address[31]_i_2_n_0\
    );
\lbus_out_address[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C0C"
    )
        port map (
      I0 => ReadAddressBuffer(3),
      I1 => s_axi_awaddr(3),
      I2 => \MainState__0\(4),
      I3 => \MainState__0\(1),
      I4 => \MainState__0\(3),
      O => \lbus_out_address[3]_i_1_n_0\
    );
\lbus_out_address[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C0C"
    )
        port map (
      I0 => ReadAddressBuffer(4),
      I1 => s_axi_awaddr(4),
      I2 => \MainState__0\(4),
      I3 => \MainState__0\(1),
      I4 => \MainState__0\(3),
      O => \lbus_out_address[4]_i_1_n_0\
    );
\lbus_out_address[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C0C"
    )
        port map (
      I0 => ReadAddressBuffer(5),
      I1 => s_axi_awaddr(5),
      I2 => \MainState__0\(4),
      I3 => \MainState__0\(1),
      I4 => \MainState__0\(3),
      O => \lbus_out_address[5]_i_1_n_0\
    );
\lbus_out_address[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C0C"
    )
        port map (
      I0 => ReadAddressBuffer(6),
      I1 => s_axi_awaddr(6),
      I2 => \MainState__0\(4),
      I3 => \MainState__0\(1),
      I4 => \MainState__0\(3),
      O => \lbus_out_address[6]_i_1_n_0\
    );
\lbus_out_address[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C0C"
    )
        port map (
      I0 => ReadAddressBuffer(7),
      I1 => s_axi_awaddr(7),
      I2 => \MainState__0\(4),
      I3 => \MainState__0\(1),
      I4 => \MainState__0\(3),
      O => \lbus_out_address[7]_i_1_n_0\
    );
\lbus_out_address[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C0C"
    )
        port map (
      I0 => ReadAddressBuffer(8),
      I1 => s_axi_awaddr(8),
      I2 => \MainState__0\(4),
      I3 => \MainState__0\(1),
      I4 => \MainState__0\(3),
      O => \lbus_out_address[8]_i_1_n_0\
    );
\lbus_out_address[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A000C0C"
    )
        port map (
      I0 => ReadAddressBuffer(9),
      I1 => s_axi_awaddr(9),
      I2 => \MainState__0\(4),
      I3 => \MainState__0\(1),
      I4 => \MainState__0\(3),
      O => \lbus_out_address[9]_i_1_n_0\
    );
\lbus_out_address_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \lbus_out_address[31]_i_1_n_0\,
      D => \lbus_out_address[0]_i_1_n_0\,
      Q => lbus_out_address(0),
      R => '0'
    );
\lbus_out_address_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \lbus_out_address[31]_i_1_n_0\,
      D => \lbus_out_address[10]_i_1_n_0\,
      Q => lbus_out_address(10),
      R => '0'
    );
\lbus_out_address_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \lbus_out_address[31]_i_1_n_0\,
      D => \lbus_out_address[11]_i_1_n_0\,
      Q => lbus_out_address(11),
      R => '0'
    );
\lbus_out_address_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \lbus_out_address[31]_i_1_n_0\,
      D => \lbus_out_address[12]_i_1_n_0\,
      Q => lbus_out_address(12),
      R => '0'
    );
\lbus_out_address_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \lbus_out_address[31]_i_1_n_0\,
      D => \lbus_out_address[13]_i_1_n_0\,
      Q => lbus_out_address(13),
      R => '0'
    );
\lbus_out_address_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \lbus_out_address[31]_i_1_n_0\,
      D => \lbus_out_address[14]_i_1_n_0\,
      Q => lbus_out_address(14),
      R => '0'
    );
\lbus_out_address_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \lbus_out_address[31]_i_1_n_0\,
      D => \lbus_out_address[15]_i_1_n_0\,
      Q => lbus_out_address(15),
      R => '0'
    );
\lbus_out_address_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \lbus_out_address[31]_i_1_n_0\,
      D => \lbus_out_address[16]_i_1_n_0\,
      Q => lbus_out_address(16),
      R => '0'
    );
\lbus_out_address_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \lbus_out_address[31]_i_1_n_0\,
      D => \lbus_out_address[17]_i_1_n_0\,
      Q => lbus_out_address(17),
      R => '0'
    );
\lbus_out_address_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \lbus_out_address[31]_i_1_n_0\,
      D => \lbus_out_address[18]_i_1_n_0\,
      Q => lbus_out_address(18),
      R => '0'
    );
\lbus_out_address_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \lbus_out_address[31]_i_1_n_0\,
      D => \lbus_out_address[19]_i_1_n_0\,
      Q => lbus_out_address(19),
      R => '0'
    );
\lbus_out_address_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \lbus_out_address[31]_i_1_n_0\,
      D => \lbus_out_address[1]_i_1_n_0\,
      Q => lbus_out_address(1),
      R => '0'
    );
\lbus_out_address_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \lbus_out_address[31]_i_1_n_0\,
      D => \lbus_out_address[20]_i_1_n_0\,
      Q => lbus_out_address(20),
      R => '0'
    );
\lbus_out_address_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \lbus_out_address[31]_i_1_n_0\,
      D => \lbus_out_address[21]_i_1_n_0\,
      Q => lbus_out_address(21),
      R => '0'
    );
\lbus_out_address_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \lbus_out_address[31]_i_1_n_0\,
      D => \lbus_out_address[22]_i_1_n_0\,
      Q => lbus_out_address(22),
      R => '0'
    );
\lbus_out_address_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \lbus_out_address[31]_i_1_n_0\,
      D => \lbus_out_address[23]_i_1_n_0\,
      Q => lbus_out_address(23),
      R => '0'
    );
\lbus_out_address_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \lbus_out_address[31]_i_1_n_0\,
      D => \lbus_out_address[24]_i_1_n_0\,
      Q => lbus_out_address(24),
      R => '0'
    );
\lbus_out_address_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \lbus_out_address[31]_i_1_n_0\,
      D => \lbus_out_address[25]_i_1_n_0\,
      Q => lbus_out_address(25),
      R => '0'
    );
\lbus_out_address_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \lbus_out_address[31]_i_1_n_0\,
      D => \lbus_out_address[26]_i_1_n_0\,
      Q => lbus_out_address(26),
      R => '0'
    );
\lbus_out_address_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \lbus_out_address[31]_i_1_n_0\,
      D => \lbus_out_address[27]_i_1_n_0\,
      Q => lbus_out_address(27),
      R => '0'
    );
\lbus_out_address_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \lbus_out_address[31]_i_1_n_0\,
      D => \lbus_out_address[28]_i_1_n_0\,
      Q => lbus_out_address(28),
      R => '0'
    );
\lbus_out_address_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \lbus_out_address[31]_i_1_n_0\,
      D => \lbus_out_address[29]_i_1_n_0\,
      Q => lbus_out_address(29),
      R => '0'
    );
\lbus_out_address_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \lbus_out_address[31]_i_1_n_0\,
      D => \lbus_out_address[2]_i_1_n_0\,
      Q => lbus_out_address(2),
      R => '0'
    );
\lbus_out_address_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \lbus_out_address[31]_i_1_n_0\,
      D => \lbus_out_address[30]_i_1_n_0\,
      Q => lbus_out_address(30),
      R => '0'
    );
\lbus_out_address_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \lbus_out_address[31]_i_1_n_0\,
      D => \lbus_out_address[31]_i_2_n_0\,
      Q => lbus_out_address(31),
      R => '0'
    );
\lbus_out_address_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \lbus_out_address[31]_i_1_n_0\,
      D => \lbus_out_address[3]_i_1_n_0\,
      Q => lbus_out_address(3),
      R => '0'
    );
\lbus_out_address_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \lbus_out_address[31]_i_1_n_0\,
      D => \lbus_out_address[4]_i_1_n_0\,
      Q => lbus_out_address(4),
      R => '0'
    );
\lbus_out_address_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \lbus_out_address[31]_i_1_n_0\,
      D => \lbus_out_address[5]_i_1_n_0\,
      Q => lbus_out_address(5),
      R => '0'
    );
\lbus_out_address_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \lbus_out_address[31]_i_1_n_0\,
      D => \lbus_out_address[6]_i_1_n_0\,
      Q => lbus_out_address(6),
      R => '0'
    );
\lbus_out_address_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \lbus_out_address[31]_i_1_n_0\,
      D => \lbus_out_address[7]_i_1_n_0\,
      Q => lbus_out_address(7),
      R => '0'
    );
\lbus_out_address_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \lbus_out_address[31]_i_1_n_0\,
      D => \lbus_out_address[8]_i_1_n_0\,
      Q => lbus_out_address(8),
      R => '0'
    );
\lbus_out_address_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \lbus_out_address[31]_i_1_n_0\,
      D => \lbus_out_address[9]_i_1_n_0\,
      Q => lbus_out_address(9),
      R => '0'
    );
\lbus_out_data[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => s_axi_aresentn,
      I1 => \MainState__0\(2),
      I2 => \MainState__0\(0),
      I3 => \MainState__0\(1),
      I4 => \MainState__0\(4),
      I5 => \MainState__0\(3),
      O => \lbus_out_data[31]_i_1_n_0\
    );
\lbus_out_data[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000006000000000"
    )
        port map (
      I0 => \MainState__0\(1),
      I1 => \MainState__0\(3),
      I2 => \MainState__0\(0),
      I3 => \MainState__0\(4),
      I4 => \MainState__0\(2),
      I5 => s_axi_aresentn,
      O => s_axi_wready1_out
    );
\lbus_out_data_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_wready1_out,
      D => WriteDataBuffer(0),
      Q => lbus_out_data(0),
      R => \lbus_out_data[31]_i_1_n_0\
    );
\lbus_out_data_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_wready1_out,
      D => WriteDataBuffer(10),
      Q => lbus_out_data(10),
      R => \lbus_out_data[31]_i_1_n_0\
    );
\lbus_out_data_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_wready1_out,
      D => WriteDataBuffer(11),
      Q => lbus_out_data(11),
      R => \lbus_out_data[31]_i_1_n_0\
    );
\lbus_out_data_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_wready1_out,
      D => WriteDataBuffer(12),
      Q => lbus_out_data(12),
      R => \lbus_out_data[31]_i_1_n_0\
    );
\lbus_out_data_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_wready1_out,
      D => WriteDataBuffer(13),
      Q => lbus_out_data(13),
      R => \lbus_out_data[31]_i_1_n_0\
    );
\lbus_out_data_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_wready1_out,
      D => WriteDataBuffer(14),
      Q => lbus_out_data(14),
      R => \lbus_out_data[31]_i_1_n_0\
    );
\lbus_out_data_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_wready1_out,
      D => WriteDataBuffer(15),
      Q => lbus_out_data(15),
      R => \lbus_out_data[31]_i_1_n_0\
    );
\lbus_out_data_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_wready1_out,
      D => WriteDataBuffer(16),
      Q => lbus_out_data(16),
      R => \lbus_out_data[31]_i_1_n_0\
    );
\lbus_out_data_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_wready1_out,
      D => WriteDataBuffer(17),
      Q => lbus_out_data(17),
      R => \lbus_out_data[31]_i_1_n_0\
    );
\lbus_out_data_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_wready1_out,
      D => WriteDataBuffer(18),
      Q => lbus_out_data(18),
      R => \lbus_out_data[31]_i_1_n_0\
    );
\lbus_out_data_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_wready1_out,
      D => WriteDataBuffer(19),
      Q => lbus_out_data(19),
      R => \lbus_out_data[31]_i_1_n_0\
    );
\lbus_out_data_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_wready1_out,
      D => WriteDataBuffer(1),
      Q => lbus_out_data(1),
      R => \lbus_out_data[31]_i_1_n_0\
    );
\lbus_out_data_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_wready1_out,
      D => WriteDataBuffer(20),
      Q => lbus_out_data(20),
      R => \lbus_out_data[31]_i_1_n_0\
    );
\lbus_out_data_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_wready1_out,
      D => WriteDataBuffer(21),
      Q => lbus_out_data(21),
      R => \lbus_out_data[31]_i_1_n_0\
    );
\lbus_out_data_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_wready1_out,
      D => WriteDataBuffer(22),
      Q => lbus_out_data(22),
      R => \lbus_out_data[31]_i_1_n_0\
    );
\lbus_out_data_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_wready1_out,
      D => WriteDataBuffer(23),
      Q => lbus_out_data(23),
      R => \lbus_out_data[31]_i_1_n_0\
    );
\lbus_out_data_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_wready1_out,
      D => WriteDataBuffer(24),
      Q => lbus_out_data(24),
      R => \lbus_out_data[31]_i_1_n_0\
    );
\lbus_out_data_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_wready1_out,
      D => WriteDataBuffer(25),
      Q => lbus_out_data(25),
      R => \lbus_out_data[31]_i_1_n_0\
    );
\lbus_out_data_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_wready1_out,
      D => WriteDataBuffer(26),
      Q => lbus_out_data(26),
      R => \lbus_out_data[31]_i_1_n_0\
    );
\lbus_out_data_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_wready1_out,
      D => WriteDataBuffer(27),
      Q => lbus_out_data(27),
      R => \lbus_out_data[31]_i_1_n_0\
    );
\lbus_out_data_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_wready1_out,
      D => WriteDataBuffer(28),
      Q => lbus_out_data(28),
      R => \lbus_out_data[31]_i_1_n_0\
    );
\lbus_out_data_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_wready1_out,
      D => WriteDataBuffer(29),
      Q => lbus_out_data(29),
      R => \lbus_out_data[31]_i_1_n_0\
    );
\lbus_out_data_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_wready1_out,
      D => WriteDataBuffer(2),
      Q => lbus_out_data(2),
      R => \lbus_out_data[31]_i_1_n_0\
    );
\lbus_out_data_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_wready1_out,
      D => WriteDataBuffer(30),
      Q => lbus_out_data(30),
      R => \lbus_out_data[31]_i_1_n_0\
    );
\lbus_out_data_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_wready1_out,
      D => WriteDataBuffer(31),
      Q => lbus_out_data(31),
      R => \lbus_out_data[31]_i_1_n_0\
    );
\lbus_out_data_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_wready1_out,
      D => WriteDataBuffer(3),
      Q => lbus_out_data(3),
      R => \lbus_out_data[31]_i_1_n_0\
    );
\lbus_out_data_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_wready1_out,
      D => WriteDataBuffer(4),
      Q => lbus_out_data(4),
      R => \lbus_out_data[31]_i_1_n_0\
    );
\lbus_out_data_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_wready1_out,
      D => WriteDataBuffer(5),
      Q => lbus_out_data(5),
      R => \lbus_out_data[31]_i_1_n_0\
    );
\lbus_out_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_wready1_out,
      D => WriteDataBuffer(6),
      Q => lbus_out_data(6),
      R => \lbus_out_data[31]_i_1_n_0\
    );
\lbus_out_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_wready1_out,
      D => WriteDataBuffer(7),
      Q => lbus_out_data(7),
      R => \lbus_out_data[31]_i_1_n_0\
    );
\lbus_out_data_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_wready1_out,
      D => WriteDataBuffer(8),
      Q => lbus_out_data(8),
      R => \lbus_out_data[31]_i_1_n_0\
    );
\lbus_out_data_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_wready1_out,
      D => WriteDataBuffer(9),
      Q => lbus_out_data(9),
      R => \lbus_out_data[31]_i_1_n_0\
    );
lbus_out_strobe_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F10"
    )
        port map (
      I0 => \MainState__0\(0),
      I1 => \MainState__0\(4),
      I2 => lbus_out_strobe0_out,
      I3 => \^lbus_out_strobe\,
      O => lbus_out_strobe_i_1_n_0
    );
lbus_out_strobe_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000003080000"
    )
        port map (
      I0 => \MainState__0\(0),
      I1 => \MainState__0\(3),
      I2 => \MainState__0\(4),
      I3 => \MainState__0\(2),
      I4 => s_axi_aresentn,
      I5 => \MainState__0\(1),
      O => lbus_out_strobe0_out
    );
lbus_out_strobe_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => lbus_out_strobe_i_1_n_0,
      Q => \^lbus_out_strobe\,
      R => '0'
    );
s_axi_arready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F9FFFFFF00200000"
    )
        port map (
      I0 => \MainState__0\(3),
      I1 => \MainState__0\(4),
      I2 => \MainState__0\(1),
      I3 => \MainState__0\(0),
      I4 => s_axi_arready_i_2_n_0,
      I5 => \^s_axi_arready\,
      O => s_axi_arready_i_1_n_0
    );
s_axi_arready_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_aresentn,
      I1 => \MainState__0\(2),
      O => s_axi_arready_i_2_n_0
    );
s_axi_arready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_arready_i_1_n_0,
      Q => \^s_axi_arready\,
      R => '0'
    );
s_axi_awready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF7F00000040"
    )
        port map (
      I0 => \MainState__0\(3),
      I1 => s_axi_arready_i_2_n_0,
      I2 => \MainState__0\(0),
      I3 => \MainState__0\(1),
      I4 => \MainState__0\(4),
      I5 => \^s_axi_awready\,
      O => s_axi_awready_i_1_n_0
    );
s_axi_awready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_awready_i_1_n_0,
      Q => \^s_axi_awready\,
      R => '0'
    );
\s_axi_bresp[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00200000"
    )
        port map (
      I0 => \MainState__0\(2),
      I1 => \MainState__0\(3),
      I2 => s_axi_aresentn,
      I3 => \MainState__0\(4),
      I4 => \s_axi_bresp[1]_i_2_n_0\,
      I5 => \^s_axi_bresp\(0),
      O => \s_axi_bresp[1]_i_1_n_0\
    );
\s_axi_bresp[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8032"
    )
        port map (
      I0 => \MainState__0\(0),
      I1 => \MainState__0\(1),
      I2 => s_axi_bready,
      I3 => \MainState__0\(2),
      O => \s_axi_bresp[1]_i_2_n_0\
    );
\s_axi_bresp_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \s_axi_bresp[1]_i_1_n_0\,
      Q => \^s_axi_bresp\(0),
      R => '0'
    );
s_axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4404FFFF44040000"
    )
        port map (
      I0 => \MainState__0\(4),
      I1 => s_axi_bready,
      I2 => \MainState__0\(0),
      I3 => \MainState__0\(1),
      I4 => s_axi_bvalid_i_2_n_0,
      I5 => \^s_axi_bvalid\,
      O => s_axi_bvalid_i_1_n_0
    );
s_axi_bvalid_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00600000"
    )
        port map (
      I0 => \MainState__0\(2),
      I1 => \MainState__0\(3),
      I2 => s_axi_aresentn,
      I3 => \MainState__0\(4),
      I4 => \s_axi_bresp[1]_i_2_n_0\,
      O => s_axi_bvalid_i_2_n_0
    );
s_axi_bvalid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_bvalid_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => '0'
    );
\s_axi_rdata[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => \s_axi_rdata[31]_i_3_n_0\,
      I1 => \MainState__0\(2),
      I2 => s_axi_aresentn,
      I3 => \MainState__0\(3),
      I4 => \MainState__0\(4),
      O => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000C0080000000"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \s_axi_rdata[31]_i_3_n_0\,
      I2 => \MainState__0\(2),
      I3 => s_axi_aresentn,
      I4 => \MainState__0\(3),
      I5 => \MainState__0\(4),
      O => \s_axi_rdata[31]_i_2_n_0\
    );
\s_axi_rdata[31]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"42"
    )
        port map (
      I0 => \MainState__0\(0),
      I1 => \MainState__0\(1),
      I2 => \MainState__0\(2),
      O => \s_axi_rdata[31]_i_3_n_0\
    );
\s_axi_rdata_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => lbus_in_data(0),
      Q => s_axi_rdata(0),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => lbus_in_data(10),
      Q => s_axi_rdata(10),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => lbus_in_data(11),
      Q => s_axi_rdata(11),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => lbus_in_data(12),
      Q => s_axi_rdata(12),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => lbus_in_data(13),
      Q => s_axi_rdata(13),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => lbus_in_data(14),
      Q => s_axi_rdata(14),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => lbus_in_data(15),
      Q => s_axi_rdata(15),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => lbus_in_data(16),
      Q => s_axi_rdata(16),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => lbus_in_data(17),
      Q => s_axi_rdata(17),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => lbus_in_data(18),
      Q => s_axi_rdata(18),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => lbus_in_data(19),
      Q => s_axi_rdata(19),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => lbus_in_data(1),
      Q => s_axi_rdata(1),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => lbus_in_data(20),
      Q => s_axi_rdata(20),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => lbus_in_data(21),
      Q => s_axi_rdata(21),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => lbus_in_data(22),
      Q => s_axi_rdata(22),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => lbus_in_data(23),
      Q => s_axi_rdata(23),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => lbus_in_data(24),
      Q => s_axi_rdata(24),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => lbus_in_data(25),
      Q => s_axi_rdata(25),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => lbus_in_data(26),
      Q => s_axi_rdata(26),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => lbus_in_data(27),
      Q => s_axi_rdata(27),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => lbus_in_data(28),
      Q => s_axi_rdata(28),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => lbus_in_data(29),
      Q => s_axi_rdata(29),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => lbus_in_data(2),
      Q => s_axi_rdata(2),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => lbus_in_data(30),
      Q => s_axi_rdata(30),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => lbus_in_data(31),
      Q => s_axi_rdata(31),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => lbus_in_data(3),
      Q => s_axi_rdata(3),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => lbus_in_data(4),
      Q => s_axi_rdata(4),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => lbus_in_data(5),
      Q => s_axi_rdata(5),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => lbus_in_data(6),
      Q => s_axi_rdata(6),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => lbus_in_data(7),
      Q => s_axi_rdata(7),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => lbus_in_data(8),
      Q => s_axi_rdata(8),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rdata_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => lbus_in_data(9),
      Q => s_axi_rdata(9),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
\s_axi_rresp_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata[31]_i_2_n_0\,
      D => lbus_in_addr_OOR,
      Q => s_axi_rresp(0),
      R => \s_axi_rdata[31]_i_1_n_0\
    );
s_axi_rvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDFFFFF00008000"
    )
        port map (
      I0 => s_axi_rvalid_i_2_n_0,
      I1 => \MainState__0\(2),
      I2 => s_axi_aresentn,
      I3 => \MainState__0\(3),
      I4 => \MainState__0\(4),
      I5 => \^s_axi_rvalid\,
      O => s_axi_rvalid_i_1_n_0
    );
s_axi_rvalid_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C302"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \MainState__0\(1),
      I2 => \MainState__0\(2),
      I3 => \MainState__0\(0),
      O => s_axi_rvalid_i_2_n_0
    );
s_axi_rvalid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_rvalid_i_1_n_0,
      Q => \^s_axi_rvalid\,
      R => '0'
    );
s_axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F10"
    )
        port map (
      I0 => \MainState__0\(3),
      I1 => \MainState__0\(4),
      I2 => s_axi_wready1_out,
      I3 => \^s_axi_wready\,
      O => s_axi_wready_i_1_n_0
    );
s_axi_wready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_wready_i_1_n_0,
      Q => \^s_axi_wready\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_AXI4_Lite_Slave_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresentn : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    lbus_out_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    lbus_out_address : out STD_LOGIC_VECTOR ( 31 downto 0 );
    lbus_out_strobe : out STD_LOGIC;
    lbus_in_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    lbus_in_complete : in STD_LOGIC;
    lbus_in_addr_OOR : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Zynq_Design_AXI4_Lite_Slave_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Zynq_Design_AXI4_Lite_Slave_0_0 : entity is "Zynq_Design_AXI4_Lite_Slave_0_0,AXI4_Lite_Slave,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Zynq_Design_AXI4_Lite_Slave_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Zynq_Design_AXI4_Lite_Slave_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of Zynq_Design_AXI4_Lite_Slave_0_0 : entity is "AXI4_Lite_Slave,Vivado 2019.1";
end Zynq_Design_AXI4_Lite_Slave_0_0;

architecture STRUCTURE of Zynq_Design_AXI4_Lite_Slave_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  attribute x_interface_info : string;
  attribute x_interface_info of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 s_axi_aclk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of s_axi_aclk : signal is "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_BUSIF s_axi, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN Zynq_Design_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi ARREADY";
  attribute x_interface_info of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi ARVALID";
  attribute x_interface_info of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  attribute x_interface_info of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi AWVALID";
  attribute x_interface_info of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi BREADY";
  attribute x_interface_info of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  attribute x_interface_info of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi RREADY";
  attribute x_interface_info of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi RVALID";
  attribute x_interface_info of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi WREADY";
  attribute x_interface_info of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi WVALID";
  attribute x_interface_info of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi ARADDR";
  attribute x_interface_parameter of s_axi_araddr : signal is "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN Zynq_Design_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi AWADDR";
  attribute x_interface_info of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi BRESP";
  attribute x_interface_info of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute x_interface_info of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi RRESP";
  attribute x_interface_info of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi WDATA";
  attribute x_interface_info of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi WSTRB";
begin
  s_axi_bresp(1) <= \^s_axi_bresp\(1);
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rresp(1) <= \^s_axi_rresp\(1);
  s_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.Zynq_Design_AXI4_Lite_Slave_0_0_AXI4_Lite_Slave
     port map (
      lbus_in_addr_OOR => lbus_in_addr_OOR,
      lbus_in_complete => lbus_in_complete,
      lbus_in_data(31 downto 0) => lbus_in_data(31 downto 0),
      lbus_out_address(31 downto 0) => lbus_out_address(31 downto 0),
      lbus_out_data(31 downto 0) => lbus_out_data(31 downto 0),
      lbus_out_strobe => lbus_out_strobe,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(31 downto 0) => s_axi_araddr(31 downto 0),
      s_axi_aresentn => s_axi_aresentn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(31 downto 0) => s_axi_awaddr(31 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => \^s_axi_bresp\(1),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(0) => \^s_axi_rresp\(1),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
