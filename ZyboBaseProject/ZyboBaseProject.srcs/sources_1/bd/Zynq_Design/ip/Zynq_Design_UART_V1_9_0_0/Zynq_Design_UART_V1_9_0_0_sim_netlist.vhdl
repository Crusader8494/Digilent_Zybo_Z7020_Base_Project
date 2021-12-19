-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Fri Apr 30 22:21:33 2021
-- Host        : DESKTOP-QSJNSC0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               g:/Xilinx/Projects/Desktop/AXI_4_Lite_Slave/AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ip/Zynq_Design_UART_V1_9_0_0/Zynq_Design_UART_V1_9_0_0_sim_netlist.vhdl
-- Design      : Zynq_Design_UART_V1_9_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_UART_V1_9_0_0_Debouncer is
  port (
    Reset_Out : out STD_LOGIC;
    CLK100MHz : in STD_LOGIC;
    Reset_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_Design_UART_V1_9_0_0_Debouncer : entity is "Debouncer";
end Zynq_Design_UART_V1_9_0_0_Debouncer;

architecture STRUCTURE of Zynq_Design_UART_V1_9_0_0_Debouncer is
  signal Line_In_Cnt : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \Line_In_Cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \Line_In_Cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \Line_In_Cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \Line_In_Cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal Line_In_Cnt_0 : STD_LOGIC;
  signal \^reset_out\ : STD_LOGIC;
  signal Reset_Out_i_1_n_0 : STD_LOGIC;
begin
  Reset_Out <= \^reset_out\;
\Line_In_Cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Reset_0,
      I1 => Line_In_Cnt(0),
      O => \Line_In_Cnt[0]_i_1_n_0\
    );
\Line_In_Cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => Line_In_Cnt(1),
      I1 => Line_In_Cnt(0),
      I2 => Reset_0,
      O => \Line_In_Cnt[1]_i_1_n_0\
    );
\Line_In_Cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6A00"
    )
        port map (
      I0 => Line_In_Cnt(2),
      I1 => Line_In_Cnt(1),
      I2 => Line_In_Cnt(0),
      I3 => Reset_0,
      O => \Line_In_Cnt[2]_i_1_n_0\
    );
\Line_In_Cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => Reset_0,
      I1 => Line_In_Cnt(0),
      I2 => Line_In_Cnt(1),
      I3 => Line_In_Cnt(3),
      I4 => Line_In_Cnt(2),
      O => Line_In_Cnt_0
    );
\Line_In_Cnt[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAA0000"
    )
        port map (
      I0 => Line_In_Cnt(3),
      I1 => Line_In_Cnt(2),
      I2 => Line_In_Cnt(0),
      I3 => Line_In_Cnt(1),
      I4 => Reset_0,
      O => \Line_In_Cnt[3]_i_2_n_0\
    );
\Line_In_Cnt_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => CLK100MHz,
      CE => '1',
      D => \Line_In_Cnt[0]_i_1_n_0\,
      Q => Line_In_Cnt(0),
      S => Line_In_Cnt_0
    );
\Line_In_Cnt_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => CLK100MHz,
      CE => '1',
      D => \Line_In_Cnt[1]_i_1_n_0\,
      Q => Line_In_Cnt(1),
      S => Line_In_Cnt_0
    );
\Line_In_Cnt_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => CLK100MHz,
      CE => '1',
      D => \Line_In_Cnt[2]_i_1_n_0\,
      Q => Line_In_Cnt(2),
      S => Line_In_Cnt_0
    );
\Line_In_Cnt_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => CLK100MHz,
      CE => '1',
      D => \Line_In_Cnt[3]_i_2_n_0\,
      Q => Line_In_Cnt(3),
      S => Line_In_Cnt_0
    );
Reset_Out_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => Reset_0,
      I1 => \^reset_out\,
      O => Reset_Out_i_1_n_0
    );
Reset_Out_reg: unisim.vcomponents.FDSE
     port map (
      C => CLK100MHz,
      CE => '1',
      D => Reset_Out_i_1_n_0,
      Q => \^reset_out\,
      S => Line_In_Cnt_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_UART_V1_9_0_0_Reset_Controller is
  port (
    rst : out STD_LOGIC;
    CLK100MHz : in STD_LOGIC;
    Reset_Out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_Design_UART_V1_9_0_0_Reset_Controller : entity is "Reset_Controller";
end Zynq_Design_UART_V1_9_0_0_Reset_Controller;

architecture STRUCTURE of Zynq_Design_UART_V1_9_0_0_Reset_Controller is
  signal \FSM_sequential_Reset_State[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_Reset_State[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_Reset_State[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_Reset_State[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_Reset_State[2]_i_3_n_0\ : STD_LOGIC;
  signal Reset_1_i_1_n_0 : STD_LOGIC;
  signal Reset_Cnt : STD_LOGIC;
  signal \Reset_Cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \Reset_Cnt[10]_i_1_n_0\ : STD_LOGIC;
  signal \Reset_Cnt[11]_i_1_n_0\ : STD_LOGIC;
  signal \Reset_Cnt[12]_i_1_n_0\ : STD_LOGIC;
  signal \Reset_Cnt[13]_i_1_n_0\ : STD_LOGIC;
  signal \Reset_Cnt[14]_i_1_n_0\ : STD_LOGIC;
  signal \Reset_Cnt[15]_i_1_n_0\ : STD_LOGIC;
  signal \Reset_Cnt[15]_i_2_n_0\ : STD_LOGIC;
  signal \Reset_Cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \Reset_Cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \Reset_Cnt[30]_i_10_n_0\ : STD_LOGIC;
  signal \Reset_Cnt[30]_i_11_n_0\ : STD_LOGIC;
  signal \Reset_Cnt[30]_i_12_n_0\ : STD_LOGIC;
  signal \Reset_Cnt[30]_i_13_n_0\ : STD_LOGIC;
  signal \Reset_Cnt[30]_i_14_n_0\ : STD_LOGIC;
  signal \Reset_Cnt[30]_i_15_n_0\ : STD_LOGIC;
  signal \Reset_Cnt[30]_i_1_n_0\ : STD_LOGIC;
  signal \Reset_Cnt[30]_i_4_n_0\ : STD_LOGIC;
  signal \Reset_Cnt[30]_i_5_n_0\ : STD_LOGIC;
  signal \Reset_Cnt[30]_i_6_n_0\ : STD_LOGIC;
  signal \Reset_Cnt[30]_i_7_n_0\ : STD_LOGIC;
  signal \Reset_Cnt[30]_i_8_n_0\ : STD_LOGIC;
  signal \Reset_Cnt[30]_i_9_n_0\ : STD_LOGIC;
  signal \Reset_Cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \Reset_Cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \Reset_Cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \Reset_Cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \Reset_Cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \Reset_Cnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \Reset_Cnt[9]_i_1_n_0\ : STD_LOGIC;
  signal \Reset_Cnt_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \Reset_Cnt_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \Reset_Cnt_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \Reset_Cnt_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \Reset_Cnt_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \Reset_Cnt_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \Reset_Cnt_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \Reset_Cnt_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \Reset_Cnt_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \Reset_Cnt_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \Reset_Cnt_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \Reset_Cnt_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \Reset_Cnt_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \Reset_Cnt_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \Reset_Cnt_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \Reset_Cnt_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \Reset_Cnt_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \Reset_Cnt_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \Reset_Cnt_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \Reset_Cnt_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \Reset_Cnt_reg[30]_i_3_n_3\ : STD_LOGIC;
  signal \Reset_Cnt_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \Reset_Cnt_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \Reset_Cnt_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \Reset_Cnt_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \Reset_Cnt_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \Reset_Cnt_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \Reset_Cnt_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \Reset_Cnt_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \Reset_Cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \Reset_Cnt_reg_n_0_[10]\ : STD_LOGIC;
  signal \Reset_Cnt_reg_n_0_[11]\ : STD_LOGIC;
  signal \Reset_Cnt_reg_n_0_[12]\ : STD_LOGIC;
  signal \Reset_Cnt_reg_n_0_[13]\ : STD_LOGIC;
  signal \Reset_Cnt_reg_n_0_[14]\ : STD_LOGIC;
  signal \Reset_Cnt_reg_n_0_[15]\ : STD_LOGIC;
  signal \Reset_Cnt_reg_n_0_[16]\ : STD_LOGIC;
  signal \Reset_Cnt_reg_n_0_[17]\ : STD_LOGIC;
  signal \Reset_Cnt_reg_n_0_[18]\ : STD_LOGIC;
  signal \Reset_Cnt_reg_n_0_[19]\ : STD_LOGIC;
  signal \Reset_Cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \Reset_Cnt_reg_n_0_[20]\ : STD_LOGIC;
  signal \Reset_Cnt_reg_n_0_[21]\ : STD_LOGIC;
  signal \Reset_Cnt_reg_n_0_[22]\ : STD_LOGIC;
  signal \Reset_Cnt_reg_n_0_[23]\ : STD_LOGIC;
  signal \Reset_Cnt_reg_n_0_[24]\ : STD_LOGIC;
  signal \Reset_Cnt_reg_n_0_[25]\ : STD_LOGIC;
  signal \Reset_Cnt_reg_n_0_[26]\ : STD_LOGIC;
  signal \Reset_Cnt_reg_n_0_[27]\ : STD_LOGIC;
  signal \Reset_Cnt_reg_n_0_[28]\ : STD_LOGIC;
  signal \Reset_Cnt_reg_n_0_[29]\ : STD_LOGIC;
  signal \Reset_Cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \Reset_Cnt_reg_n_0_[30]\ : STD_LOGIC;
  signal \Reset_Cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \Reset_Cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \Reset_Cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \Reset_Cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \Reset_Cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \Reset_Cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal \Reset_Cnt_reg_n_0_[9]\ : STD_LOGIC;
  signal \Reset_State__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal data0 : STD_LOGIC_VECTOR ( 30 downto 1 );
  signal \^rst\ : STD_LOGIC;
  signal \NLW_Reset_Cnt_reg[30]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_Reset_Cnt_reg[30]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_Reset_State_reg[0]\ : label is "idle_state:000,reset_1_state:001,reset_2_state:010,reset_3_state:011,wait_state:100,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_Reset_State_reg[1]\ : label is "idle_state:000,reset_1_state:001,reset_2_state:010,reset_3_state:011,wait_state:100,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_Reset_State_reg[2]\ : label is "idle_state:000,reset_1_state:001,reset_2_state:010,reset_3_state:011,wait_state:100,";
begin
  rst <= \^rst\;
\FSM_sequential_Reset_State[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"34"
    )
        port map (
      I0 => \Reset_State__0\(2),
      I1 => \FSM_sequential_Reset_State[2]_i_2_n_0\,
      I2 => \Reset_State__0\(0),
      O => \FSM_sequential_Reset_State[0]_i_1_n_0\
    );
\FSM_sequential_Reset_State[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F20"
    )
        port map (
      I0 => \Reset_State__0\(0),
      I1 => \Reset_State__0\(2),
      I2 => \FSM_sequential_Reset_State[2]_i_2_n_0\,
      I3 => \Reset_State__0\(1),
      O => \FSM_sequential_Reset_State[1]_i_1_n_0\
    );
\FSM_sequential_Reset_State[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F80"
    )
        port map (
      I0 => \Reset_State__0\(1),
      I1 => \Reset_State__0\(0),
      I2 => \FSM_sequential_Reset_State[2]_i_2_n_0\,
      I3 => \Reset_State__0\(2),
      O => \FSM_sequential_Reset_State[2]_i_1_n_0\
    );
\FSM_sequential_Reset_State[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000003300550C33"
    )
        port map (
      I0 => \Reset_Cnt[30]_i_5_n_0\,
      I1 => Reset_Out,
      I2 => \Reset_Cnt[30]_i_4_n_0\,
      I3 => \Reset_State__0\(2),
      I4 => \FSM_sequential_Reset_State[2]_i_3_n_0\,
      I5 => \Reset_Cnt[30]_i_6_n_0\,
      O => \FSM_sequential_Reset_State[2]_i_2_n_0\
    );
\FSM_sequential_Reset_State[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \Reset_State__0\(0),
      I1 => \Reset_State__0\(1),
      O => \FSM_sequential_Reset_State[2]_i_3_n_0\
    );
\FSM_sequential_Reset_State_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => \FSM_sequential_Reset_State[0]_i_1_n_0\,
      Q => \Reset_State__0\(0),
      R => '0'
    );
\FSM_sequential_Reset_State_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => \FSM_sequential_Reset_State[1]_i_1_n_0\,
      Q => \Reset_State__0\(1),
      R => '0'
    );
\FSM_sequential_Reset_State_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => \FSM_sequential_Reset_State[2]_i_1_n_0\,
      Q => \Reset_State__0\(2),
      R => '0'
    );
Reset_1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD01"
    )
        port map (
      I0 => \Reset_State__0\(0),
      I1 => \Reset_State__0\(1),
      I2 => \Reset_State__0\(2),
      I3 => \^rst\,
      O => Reset_1_i_1_n_0
    );
Reset_1_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK100MHz,
      CE => '1',
      D => Reset_1_i_1_n_0,
      Q => \^rst\,
      R => '0'
    );
\Reset_Cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000E0E0EF0"
    )
        port map (
      I0 => \Reset_Cnt[30]_i_5_n_0\,
      I1 => \Reset_Cnt[30]_i_6_n_0\,
      I2 => \Reset_State__0\(2),
      I3 => \Reset_State__0\(1),
      I4 => \Reset_State__0\(0),
      I5 => \Reset_Cnt_reg_n_0_[0]\,
      O => \Reset_Cnt[0]_i_1_n_0\
    );
\Reset_Cnt[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E0E0EF000000000"
    )
        port map (
      I0 => \Reset_Cnt[30]_i_5_n_0\,
      I1 => \Reset_Cnt[30]_i_6_n_0\,
      I2 => \Reset_State__0\(2),
      I3 => \Reset_State__0\(1),
      I4 => \Reset_State__0\(0),
      I5 => data0(10),
      O => \Reset_Cnt[10]_i_1_n_0\
    );
\Reset_Cnt[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E0E0EF000000000"
    )
        port map (
      I0 => \Reset_Cnt[30]_i_5_n_0\,
      I1 => \Reset_Cnt[30]_i_6_n_0\,
      I2 => \Reset_State__0\(2),
      I3 => \Reset_State__0\(1),
      I4 => \Reset_State__0\(0),
      I5 => data0(11),
      O => \Reset_Cnt[11]_i_1_n_0\
    );
\Reset_Cnt[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E0E0EF000000000"
    )
        port map (
      I0 => \Reset_Cnt[30]_i_5_n_0\,
      I1 => \Reset_Cnt[30]_i_6_n_0\,
      I2 => \Reset_State__0\(2),
      I3 => \Reset_State__0\(1),
      I4 => \Reset_State__0\(0),
      I5 => data0(12),
      O => \Reset_Cnt[12]_i_1_n_0\
    );
\Reset_Cnt[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E0E0EF000000000"
    )
        port map (
      I0 => \Reset_Cnt[30]_i_5_n_0\,
      I1 => \Reset_Cnt[30]_i_6_n_0\,
      I2 => \Reset_State__0\(2),
      I3 => \Reset_State__0\(1),
      I4 => \Reset_State__0\(0),
      I5 => data0(13),
      O => \Reset_Cnt[13]_i_1_n_0\
    );
\Reset_Cnt[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E0E0EF000000000"
    )
        port map (
      I0 => \Reset_Cnt[30]_i_5_n_0\,
      I1 => \Reset_Cnt[30]_i_6_n_0\,
      I2 => \Reset_State__0\(2),
      I3 => \Reset_State__0\(1),
      I4 => \Reset_State__0\(0),
      I5 => data0(14),
      O => \Reset_Cnt[14]_i_1_n_0\
    );
\Reset_Cnt[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => \Reset_Cnt[30]_i_4_n_0\,
      I1 => \Reset_State__0\(2),
      I2 => \Reset_State__0\(1),
      I3 => \Reset_State__0\(0),
      I4 => \Reset_Cnt[30]_i_6_n_0\,
      O => \Reset_Cnt[15]_i_1_n_0\
    );
\Reset_Cnt[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E0E0EF000000000"
    )
        port map (
      I0 => \Reset_Cnt[30]_i_5_n_0\,
      I1 => \Reset_Cnt[30]_i_6_n_0\,
      I2 => \Reset_State__0\(2),
      I3 => \Reset_State__0\(1),
      I4 => \Reset_State__0\(0),
      I5 => data0(15),
      O => \Reset_Cnt[15]_i_2_n_0\
    );
\Reset_Cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E0E0EF000000000"
    )
        port map (
      I0 => \Reset_Cnt[30]_i_5_n_0\,
      I1 => \Reset_Cnt[30]_i_6_n_0\,
      I2 => \Reset_State__0\(2),
      I3 => \Reset_State__0\(1),
      I4 => \Reset_State__0\(0),
      I5 => data0(1),
      O => \Reset_Cnt[1]_i_1_n_0\
    );
\Reset_Cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E0E0EF000000000"
    )
        port map (
      I0 => \Reset_Cnt[30]_i_5_n_0\,
      I1 => \Reset_Cnt[30]_i_6_n_0\,
      I2 => \Reset_State__0\(2),
      I3 => \Reset_State__0\(1),
      I4 => \Reset_State__0\(0),
      I5 => data0(2),
      O => \Reset_Cnt[2]_i_1_n_0\
    );
\Reset_Cnt[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00030003010301FF"
    )
        port map (
      I0 => \Reset_Cnt[30]_i_4_n_0\,
      I1 => \Reset_State__0\(1),
      I2 => \Reset_State__0\(0),
      I3 => \Reset_State__0\(2),
      I4 => \Reset_Cnt[30]_i_5_n_0\,
      I5 => \Reset_Cnt[30]_i_6_n_0\,
      O => \Reset_Cnt[30]_i_1_n_0\
    );
\Reset_Cnt[30]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \Reset_Cnt_reg_n_0_[5]\,
      I1 => \Reset_Cnt_reg_n_0_[4]\,
      I2 => \Reset_Cnt_reg_n_0_[7]\,
      I3 => \Reset_Cnt_reg_n_0_[6]\,
      O => \Reset_Cnt[30]_i_10_n_0\
    );
\Reset_Cnt[30]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => \Reset_Cnt_reg_n_0_[2]\,
      I1 => \Reset_Cnt_reg_n_0_[1]\,
      I2 => \Reset_Cnt_reg_n_0_[3]\,
      I3 => \Reset_Cnt_reg_n_0_[16]\,
      O => \Reset_Cnt[30]_i_11_n_0\
    );
\Reset_Cnt[30]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \Reset_Cnt_reg_n_0_[26]\,
      I1 => \Reset_Cnt_reg_n_0_[25]\,
      I2 => \Reset_Cnt_reg_n_0_[28]\,
      I3 => \Reset_Cnt_reg_n_0_[27]\,
      O => \Reset_Cnt[30]_i_12_n_0\
    );
\Reset_Cnt[30]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \Reset_Cnt_reg_n_0_[30]\,
      I1 => \Reset_Cnt_reg_n_0_[29]\,
      I2 => \Reset_Cnt_reg_n_0_[0]\,
      O => \Reset_Cnt[30]_i_13_n_0\
    );
\Reset_Cnt[30]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \Reset_Cnt_reg_n_0_[22]\,
      I1 => \Reset_Cnt_reg_n_0_[21]\,
      I2 => \Reset_Cnt_reg_n_0_[24]\,
      I3 => \Reset_Cnt_reg_n_0_[23]\,
      O => \Reset_Cnt[30]_i_14_n_0\
    );
\Reset_Cnt[30]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \Reset_Cnt_reg_n_0_[18]\,
      I1 => \Reset_Cnt_reg_n_0_[17]\,
      I2 => \Reset_Cnt_reg_n_0_[20]\,
      I3 => \Reset_Cnt_reg_n_0_[19]\,
      O => \Reset_Cnt[30]_i_15_n_0\
    );
\Reset_Cnt[30]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \Reset_State__0\(1),
      I1 => \Reset_State__0\(0),
      I2 => \Reset_State__0\(2),
      O => Reset_Cnt
    );
\Reset_Cnt[30]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBFFFFFFF"
    )
        port map (
      I0 => \Reset_Cnt[30]_i_7_n_0\,
      I1 => \Reset_Cnt_reg_n_0_[9]\,
      I2 => \Reset_Cnt_reg_n_0_[8]\,
      I3 => \Reset_Cnt_reg_n_0_[11]\,
      I4 => \Reset_Cnt_reg_n_0_[10]\,
      I5 => \Reset_Cnt[30]_i_8_n_0\,
      O => \Reset_Cnt[30]_i_4_n_0\
    );
\Reset_Cnt[30]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \Reset_Cnt[30]_i_9_n_0\,
      I1 => \Reset_Cnt_reg_n_0_[9]\,
      I2 => \Reset_Cnt_reg_n_0_[8]\,
      I3 => \Reset_Cnt_reg_n_0_[11]\,
      I4 => \Reset_Cnt_reg_n_0_[10]\,
      I5 => \Reset_Cnt[30]_i_10_n_0\,
      O => \Reset_Cnt[30]_i_5_n_0\
    );
\Reset_Cnt[30]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \Reset_Cnt[30]_i_11_n_0\,
      I1 => \Reset_Cnt[30]_i_12_n_0\,
      I2 => \Reset_Cnt[30]_i_13_n_0\,
      I3 => \Reset_Cnt[30]_i_14_n_0\,
      I4 => \Reset_Cnt[30]_i_15_n_0\,
      O => \Reset_Cnt[30]_i_6_n_0\
    );
\Reset_Cnt[30]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \Reset_Cnt_reg_n_0_[13]\,
      I1 => \Reset_Cnt_reg_n_0_[12]\,
      I2 => \Reset_Cnt_reg_n_0_[15]\,
      I3 => \Reset_Cnt_reg_n_0_[14]\,
      O => \Reset_Cnt[30]_i_7_n_0\
    );
\Reset_Cnt[30]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \Reset_Cnt_reg_n_0_[5]\,
      I1 => \Reset_Cnt_reg_n_0_[4]\,
      I2 => \Reset_Cnt_reg_n_0_[7]\,
      I3 => \Reset_Cnt_reg_n_0_[6]\,
      O => \Reset_Cnt[30]_i_8_n_0\
    );
\Reset_Cnt[30]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \Reset_Cnt_reg_n_0_[13]\,
      I1 => \Reset_Cnt_reg_n_0_[12]\,
      I2 => \Reset_Cnt_reg_n_0_[15]\,
      I3 => \Reset_Cnt_reg_n_0_[14]\,
      O => \Reset_Cnt[30]_i_9_n_0\
    );
\Reset_Cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E0E0EF000000000"
    )
        port map (
      I0 => \Reset_Cnt[30]_i_5_n_0\,
      I1 => \Reset_Cnt[30]_i_6_n_0\,
      I2 => \Reset_State__0\(2),
      I3 => \Reset_State__0\(1),
      I4 => \Reset_State__0\(0),
      I5 => data0(3),
      O => \Reset_Cnt[3]_i_1_n_0\
    );
\Reset_Cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E0E0EF000000000"
    )
        port map (
      I0 => \Reset_Cnt[30]_i_5_n_0\,
      I1 => \Reset_Cnt[30]_i_6_n_0\,
      I2 => \Reset_State__0\(2),
      I3 => \Reset_State__0\(1),
      I4 => \Reset_State__0\(0),
      I5 => data0(4),
      O => \Reset_Cnt[4]_i_1_n_0\
    );
\Reset_Cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E0E0EF000000000"
    )
        port map (
      I0 => \Reset_Cnt[30]_i_5_n_0\,
      I1 => \Reset_Cnt[30]_i_6_n_0\,
      I2 => \Reset_State__0\(2),
      I3 => \Reset_State__0\(1),
      I4 => \Reset_State__0\(0),
      I5 => data0(5),
      O => \Reset_Cnt[5]_i_1_n_0\
    );
\Reset_Cnt[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E0E0EF000000000"
    )
        port map (
      I0 => \Reset_Cnt[30]_i_5_n_0\,
      I1 => \Reset_Cnt[30]_i_6_n_0\,
      I2 => \Reset_State__0\(2),
      I3 => \Reset_State__0\(1),
      I4 => \Reset_State__0\(0),
      I5 => data0(6),
      O => \Reset_Cnt[6]_i_1_n_0\
    );
\Reset_Cnt[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E0E0EF000000000"
    )
        port map (
      I0 => \Reset_Cnt[30]_i_5_n_0\,
      I1 => \Reset_Cnt[30]_i_6_n_0\,
      I2 => \Reset_State__0\(2),
      I3 => \Reset_State__0\(1),
      I4 => \Reset_State__0\(0),
      I5 => data0(7),
      O => \Reset_Cnt[7]_i_1_n_0\
    );
\Reset_Cnt[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E0E0EF000000000"
    )
        port map (
      I0 => \Reset_Cnt[30]_i_5_n_0\,
      I1 => \Reset_Cnt[30]_i_6_n_0\,
      I2 => \Reset_State__0\(2),
      I3 => \Reset_State__0\(1),
      I4 => \Reset_State__0\(0),
      I5 => data0(8),
      O => \Reset_Cnt[8]_i_1_n_0\
    );
\Reset_Cnt[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E0E0EF000000000"
    )
        port map (
      I0 => \Reset_Cnt[30]_i_5_n_0\,
      I1 => \Reset_Cnt[30]_i_6_n_0\,
      I2 => \Reset_State__0\(2),
      I3 => \Reset_State__0\(1),
      I4 => \Reset_State__0\(0),
      I5 => data0(9),
      O => \Reset_Cnt[9]_i_1_n_0\
    );
\Reset_Cnt_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => Reset_Cnt,
      D => \Reset_Cnt[0]_i_1_n_0\,
      Q => \Reset_Cnt_reg_n_0_[0]\,
      S => \Reset_Cnt[15]_i_1_n_0\
    );
\Reset_Cnt_reg[10]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => Reset_Cnt,
      D => \Reset_Cnt[10]_i_1_n_0\,
      Q => \Reset_Cnt_reg_n_0_[10]\,
      S => \Reset_Cnt[15]_i_1_n_0\
    );
\Reset_Cnt_reg[11]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => Reset_Cnt,
      D => \Reset_Cnt[11]_i_1_n_0\,
      Q => \Reset_Cnt_reg_n_0_[11]\,
      S => \Reset_Cnt[15]_i_1_n_0\
    );
\Reset_Cnt_reg[12]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => Reset_Cnt,
      D => \Reset_Cnt[12]_i_1_n_0\,
      Q => \Reset_Cnt_reg_n_0_[12]\,
      S => \Reset_Cnt[15]_i_1_n_0\
    );
\Reset_Cnt_reg[13]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => Reset_Cnt,
      D => \Reset_Cnt[13]_i_1_n_0\,
      Q => \Reset_Cnt_reg_n_0_[13]\,
      S => \Reset_Cnt[15]_i_1_n_0\
    );
\Reset_Cnt_reg[14]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => Reset_Cnt,
      D => \Reset_Cnt[14]_i_1_n_0\,
      Q => \Reset_Cnt_reg_n_0_[14]\,
      S => \Reset_Cnt[15]_i_1_n_0\
    );
\Reset_Cnt_reg[15]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => Reset_Cnt,
      D => \Reset_Cnt[15]_i_2_n_0\,
      Q => \Reset_Cnt_reg_n_0_[15]\,
      S => \Reset_Cnt[15]_i_1_n_0\
    );
\Reset_Cnt_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => Reset_Cnt,
      D => data0(16),
      Q => \Reset_Cnt_reg_n_0_[16]\,
      R => \Reset_Cnt[30]_i_1_n_0\
    );
\Reset_Cnt_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Reset_Cnt_reg[16]_i_2_n_0\,
      CO(3) => \Reset_Cnt_reg[16]_i_1_n_0\,
      CO(2) => \Reset_Cnt_reg[16]_i_1_n_1\,
      CO(1) => \Reset_Cnt_reg[16]_i_1_n_2\,
      CO(0) => \Reset_Cnt_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3) => \Reset_Cnt_reg_n_0_[16]\,
      S(2) => \Reset_Cnt_reg_n_0_[15]\,
      S(1) => \Reset_Cnt_reg_n_0_[14]\,
      S(0) => \Reset_Cnt_reg_n_0_[13]\
    );
\Reset_Cnt_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Reset_Cnt_reg[8]_i_2_n_0\,
      CO(3) => \Reset_Cnt_reg[16]_i_2_n_0\,
      CO(2) => \Reset_Cnt_reg[16]_i_2_n_1\,
      CO(1) => \Reset_Cnt_reg[16]_i_2_n_2\,
      CO(0) => \Reset_Cnt_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3) => \Reset_Cnt_reg_n_0_[12]\,
      S(2) => \Reset_Cnt_reg_n_0_[11]\,
      S(1) => \Reset_Cnt_reg_n_0_[10]\,
      S(0) => \Reset_Cnt_reg_n_0_[9]\
    );
\Reset_Cnt_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => Reset_Cnt,
      D => data0(17),
      Q => \Reset_Cnt_reg_n_0_[17]\,
      R => \Reset_Cnt[30]_i_1_n_0\
    );
\Reset_Cnt_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => Reset_Cnt,
      D => data0(18),
      Q => \Reset_Cnt_reg_n_0_[18]\,
      R => \Reset_Cnt[30]_i_1_n_0\
    );
\Reset_Cnt_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => Reset_Cnt,
      D => data0(19),
      Q => \Reset_Cnt_reg_n_0_[19]\,
      R => \Reset_Cnt[30]_i_1_n_0\
    );
\Reset_Cnt_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => Reset_Cnt,
      D => \Reset_Cnt[1]_i_1_n_0\,
      Q => \Reset_Cnt_reg_n_0_[1]\,
      S => \Reset_Cnt[15]_i_1_n_0\
    );
\Reset_Cnt_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => Reset_Cnt,
      D => data0(20),
      Q => \Reset_Cnt_reg_n_0_[20]\,
      R => \Reset_Cnt[30]_i_1_n_0\
    );
\Reset_Cnt_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Reset_Cnt_reg[16]_i_1_n_0\,
      CO(3) => \Reset_Cnt_reg[20]_i_1_n_0\,
      CO(2) => \Reset_Cnt_reg[20]_i_1_n_1\,
      CO(1) => \Reset_Cnt_reg[20]_i_1_n_2\,
      CO(0) => \Reset_Cnt_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(20 downto 17),
      S(3) => \Reset_Cnt_reg_n_0_[20]\,
      S(2) => \Reset_Cnt_reg_n_0_[19]\,
      S(1) => \Reset_Cnt_reg_n_0_[18]\,
      S(0) => \Reset_Cnt_reg_n_0_[17]\
    );
\Reset_Cnt_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => Reset_Cnt,
      D => data0(21),
      Q => \Reset_Cnt_reg_n_0_[21]\,
      R => \Reset_Cnt[30]_i_1_n_0\
    );
\Reset_Cnt_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => Reset_Cnt,
      D => data0(22),
      Q => \Reset_Cnt_reg_n_0_[22]\,
      R => \Reset_Cnt[30]_i_1_n_0\
    );
\Reset_Cnt_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => Reset_Cnt,
      D => data0(23),
      Q => \Reset_Cnt_reg_n_0_[23]\,
      R => \Reset_Cnt[30]_i_1_n_0\
    );
\Reset_Cnt_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => Reset_Cnt,
      D => data0(24),
      Q => \Reset_Cnt_reg_n_0_[24]\,
      R => \Reset_Cnt[30]_i_1_n_0\
    );
\Reset_Cnt_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Reset_Cnt_reg[20]_i_1_n_0\,
      CO(3) => \Reset_Cnt_reg[24]_i_1_n_0\,
      CO(2) => \Reset_Cnt_reg[24]_i_1_n_1\,
      CO(1) => \Reset_Cnt_reg[24]_i_1_n_2\,
      CO(0) => \Reset_Cnt_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(24 downto 21),
      S(3) => \Reset_Cnt_reg_n_0_[24]\,
      S(2) => \Reset_Cnt_reg_n_0_[23]\,
      S(1) => \Reset_Cnt_reg_n_0_[22]\,
      S(0) => \Reset_Cnt_reg_n_0_[21]\
    );
\Reset_Cnt_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => Reset_Cnt,
      D => data0(25),
      Q => \Reset_Cnt_reg_n_0_[25]\,
      R => \Reset_Cnt[30]_i_1_n_0\
    );
\Reset_Cnt_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => Reset_Cnt,
      D => data0(26),
      Q => \Reset_Cnt_reg_n_0_[26]\,
      R => \Reset_Cnt[30]_i_1_n_0\
    );
\Reset_Cnt_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => Reset_Cnt,
      D => data0(27),
      Q => \Reset_Cnt_reg_n_0_[27]\,
      R => \Reset_Cnt[30]_i_1_n_0\
    );
\Reset_Cnt_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => Reset_Cnt,
      D => data0(28),
      Q => \Reset_Cnt_reg_n_0_[28]\,
      R => \Reset_Cnt[30]_i_1_n_0\
    );
\Reset_Cnt_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Reset_Cnt_reg[24]_i_1_n_0\,
      CO(3) => \Reset_Cnt_reg[28]_i_1_n_0\,
      CO(2) => \Reset_Cnt_reg[28]_i_1_n_1\,
      CO(1) => \Reset_Cnt_reg[28]_i_1_n_2\,
      CO(0) => \Reset_Cnt_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(28 downto 25),
      S(3) => \Reset_Cnt_reg_n_0_[28]\,
      S(2) => \Reset_Cnt_reg_n_0_[27]\,
      S(1) => \Reset_Cnt_reg_n_0_[26]\,
      S(0) => \Reset_Cnt_reg_n_0_[25]\
    );
\Reset_Cnt_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => Reset_Cnt,
      D => data0(29),
      Q => \Reset_Cnt_reg_n_0_[29]\,
      R => \Reset_Cnt[30]_i_1_n_0\
    );
\Reset_Cnt_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => Reset_Cnt,
      D => \Reset_Cnt[2]_i_1_n_0\,
      Q => \Reset_Cnt_reg_n_0_[2]\,
      S => \Reset_Cnt[15]_i_1_n_0\
    );
\Reset_Cnt_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => Reset_Cnt,
      D => data0(30),
      Q => \Reset_Cnt_reg_n_0_[30]\,
      R => \Reset_Cnt[30]_i_1_n_0\
    );
\Reset_Cnt_reg[30]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \Reset_Cnt_reg[28]_i_1_n_0\,
      CO(3 downto 1) => \NLW_Reset_Cnt_reg[30]_i_3_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \Reset_Cnt_reg[30]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_Reset_Cnt_reg[30]_i_3_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => data0(30 downto 29),
      S(3 downto 2) => B"00",
      S(1) => \Reset_Cnt_reg_n_0_[30]\,
      S(0) => \Reset_Cnt_reg_n_0_[29]\
    );
\Reset_Cnt_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => Reset_Cnt,
      D => \Reset_Cnt[3]_i_1_n_0\,
      Q => \Reset_Cnt_reg_n_0_[3]\,
      S => \Reset_Cnt[15]_i_1_n_0\
    );
\Reset_Cnt_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => Reset_Cnt,
      D => \Reset_Cnt[4]_i_1_n_0\,
      Q => \Reset_Cnt_reg_n_0_[4]\,
      S => \Reset_Cnt[15]_i_1_n_0\
    );
\Reset_Cnt_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Reset_Cnt_reg[4]_i_2_n_0\,
      CO(2) => \Reset_Cnt_reg[4]_i_2_n_1\,
      CO(1) => \Reset_Cnt_reg[4]_i_2_n_2\,
      CO(0) => \Reset_Cnt_reg[4]_i_2_n_3\,
      CYINIT => \Reset_Cnt_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3) => \Reset_Cnt_reg_n_0_[4]\,
      S(2) => \Reset_Cnt_reg_n_0_[3]\,
      S(1) => \Reset_Cnt_reg_n_0_[2]\,
      S(0) => \Reset_Cnt_reg_n_0_[1]\
    );
\Reset_Cnt_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => Reset_Cnt,
      D => \Reset_Cnt[5]_i_1_n_0\,
      Q => \Reset_Cnt_reg_n_0_[5]\,
      S => \Reset_Cnt[15]_i_1_n_0\
    );
\Reset_Cnt_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => Reset_Cnt,
      D => \Reset_Cnt[6]_i_1_n_0\,
      Q => \Reset_Cnt_reg_n_0_[6]\,
      S => \Reset_Cnt[15]_i_1_n_0\
    );
\Reset_Cnt_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => Reset_Cnt,
      D => \Reset_Cnt[7]_i_1_n_0\,
      Q => \Reset_Cnt_reg_n_0_[7]\,
      S => \Reset_Cnt[15]_i_1_n_0\
    );
\Reset_Cnt_reg[8]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => Reset_Cnt,
      D => \Reset_Cnt[8]_i_1_n_0\,
      Q => \Reset_Cnt_reg_n_0_[8]\,
      S => \Reset_Cnt[15]_i_1_n_0\
    );
\Reset_Cnt_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Reset_Cnt_reg[4]_i_2_n_0\,
      CO(3) => \Reset_Cnt_reg[8]_i_2_n_0\,
      CO(2) => \Reset_Cnt_reg[8]_i_2_n_1\,
      CO(1) => \Reset_Cnt_reg[8]_i_2_n_2\,
      CO(0) => \Reset_Cnt_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3) => \Reset_Cnt_reg_n_0_[8]\,
      S(2) => \Reset_Cnt_reg_n_0_[7]\,
      S(1) => \Reset_Cnt_reg_n_0_[6]\,
      S(0) => \Reset_Cnt_reg_n_0_[5]\
    );
\Reset_Cnt_reg[9]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => Reset_Cnt,
      D => \Reset_Cnt[9]_i_1_n_0\,
      Q => \Reset_Cnt_reg_n_0_[9]\,
      S => \Reset_Cnt[15]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_UART_V1_9_0_0_UART is
  port (
    CLK9600_D_reg_0 : out STD_LOGIC;
    UART_0_Tx : out STD_LOGIC;
    CLK9600_8_D_reg_0 : out STD_LOGIC;
    rd_en : out STD_LOGIC;
    wr_en : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK100MHz : in STD_LOGIC;
    almost_full : in STD_LOGIC;
    full : in STD_LOGIC;
    empty : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Rx : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_Design_UART_V1_9_0_0_UART : entity is "UART";
end Zynq_Design_UART_V1_9_0_0_UART;

architecture STRUCTURE of Zynq_Design_UART_V1_9_0_0_UART is
  signal CLK9600 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \CLK96000_carry__0_n_0\ : STD_LOGIC;
  signal \CLK96000_carry__0_n_1\ : STD_LOGIC;
  signal \CLK96000_carry__0_n_2\ : STD_LOGIC;
  signal \CLK96000_carry__0_n_3\ : STD_LOGIC;
  signal \CLK96000_carry__0_n_4\ : STD_LOGIC;
  signal \CLK96000_carry__0_n_5\ : STD_LOGIC;
  signal \CLK96000_carry__0_n_6\ : STD_LOGIC;
  signal \CLK96000_carry__0_n_7\ : STD_LOGIC;
  signal \CLK96000_carry__1_n_0\ : STD_LOGIC;
  signal \CLK96000_carry__1_n_1\ : STD_LOGIC;
  signal \CLK96000_carry__1_n_2\ : STD_LOGIC;
  signal \CLK96000_carry__1_n_3\ : STD_LOGIC;
  signal \CLK96000_carry__1_n_4\ : STD_LOGIC;
  signal \CLK96000_carry__1_n_5\ : STD_LOGIC;
  signal \CLK96000_carry__1_n_6\ : STD_LOGIC;
  signal \CLK96000_carry__1_n_7\ : STD_LOGIC;
  signal \CLK96000_carry__2_n_2\ : STD_LOGIC;
  signal \CLK96000_carry__2_n_3\ : STD_LOGIC;
  signal \CLK96000_carry__2_n_5\ : STD_LOGIC;
  signal \CLK96000_carry__2_n_6\ : STD_LOGIC;
  signal \CLK96000_carry__2_n_7\ : STD_LOGIC;
  signal CLK96000_carry_n_0 : STD_LOGIC;
  signal CLK96000_carry_n_1 : STD_LOGIC;
  signal CLK96000_carry_n_2 : STD_LOGIC;
  signal CLK96000_carry_n_3 : STD_LOGIC;
  signal CLK96000_carry_n_4 : STD_LOGIC;
  signal CLK96000_carry_n_5 : STD_LOGIC;
  signal CLK96000_carry_n_6 : STD_LOGIC;
  signal CLK96000_carry_n_7 : STD_LOGIC;
  signal \CLK9600[0]_i_1_n_0\ : STD_LOGIC;
  signal \CLK9600[15]_i_1_n_0\ : STD_LOGIC;
  signal \CLK9600[15]_i_2_n_0\ : STD_LOGIC;
  signal \CLK9600[15]_i_3_n_0\ : STD_LOGIC;
  signal CLK9600_8 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \CLK9600_80_carry__0_n_0\ : STD_LOGIC;
  signal \CLK9600_80_carry__0_n_1\ : STD_LOGIC;
  signal \CLK9600_80_carry__0_n_2\ : STD_LOGIC;
  signal \CLK9600_80_carry__0_n_3\ : STD_LOGIC;
  signal \CLK9600_80_carry__0_n_4\ : STD_LOGIC;
  signal \CLK9600_80_carry__0_n_5\ : STD_LOGIC;
  signal \CLK9600_80_carry__0_n_6\ : STD_LOGIC;
  signal \CLK9600_80_carry__0_n_7\ : STD_LOGIC;
  signal \CLK9600_80_carry__1_n_0\ : STD_LOGIC;
  signal \CLK9600_80_carry__1_n_1\ : STD_LOGIC;
  signal \CLK9600_80_carry__1_n_2\ : STD_LOGIC;
  signal \CLK9600_80_carry__1_n_3\ : STD_LOGIC;
  signal \CLK9600_80_carry__1_n_4\ : STD_LOGIC;
  signal \CLK9600_80_carry__1_n_5\ : STD_LOGIC;
  signal \CLK9600_80_carry__1_n_6\ : STD_LOGIC;
  signal \CLK9600_80_carry__1_n_7\ : STD_LOGIC;
  signal \CLK9600_80_carry__2_n_2\ : STD_LOGIC;
  signal \CLK9600_80_carry__2_n_3\ : STD_LOGIC;
  signal \CLK9600_80_carry__2_n_5\ : STD_LOGIC;
  signal \CLK9600_80_carry__2_n_6\ : STD_LOGIC;
  signal \CLK9600_80_carry__2_n_7\ : STD_LOGIC;
  signal CLK9600_80_carry_n_0 : STD_LOGIC;
  signal CLK9600_80_carry_n_1 : STD_LOGIC;
  signal CLK9600_80_carry_n_2 : STD_LOGIC;
  signal CLK9600_80_carry_n_3 : STD_LOGIC;
  signal CLK9600_80_carry_n_4 : STD_LOGIC;
  signal CLK9600_80_carry_n_5 : STD_LOGIC;
  signal CLK9600_80_carry_n_6 : STD_LOGIC;
  signal CLK9600_80_carry_n_7 : STD_LOGIC;
  signal \CLK9600_8[0]_i_1_n_0\ : STD_LOGIC;
  signal \CLK9600_8[15]_i_1_n_0\ : STD_LOGIC;
  signal \CLK9600_8[15]_i_2_n_0\ : STD_LOGIC;
  signal \CLK9600_8[15]_i_3_n_0\ : STD_LOGIC;
  signal \CLK9600_8[15]_i_4_n_0\ : STD_LOGIC;
  signal CLK9600_8_D_i_1_n_0 : STD_LOGIC;
  signal CLK9600_8_D_i_2_n_0 : STD_LOGIC;
  signal \^clk9600_8_d_reg_0\ : STD_LOGIC;
  signal CLK9600_D_i_1_n_0 : STD_LOGIC;
  signal CLK9600_D_i_2_n_0 : STD_LOGIC;
  signal CLK9600_D_i_3_n_0 : STD_LOGIC;
  signal \^clk9600_d_reg_0\ : STD_LOGIC;
  signal FIFO_OT0 : STD_LOGIC;
  signal \FIFO_OT[7]_i_2_n_0\ : STD_LOGIC;
  signal FIFO_RD_i_1_n_0 : STD_LOGIC;
  signal FIFO_WT_i_1_n_0 : STD_LOGIC;
  signal \FSM_sequential_Receive_State[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_Receive_State[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_Receive_State[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_Receive_State[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_Receive_State[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_Rx_FIFO_State[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_Rx_FIFO_State[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_Rx_FIFO_State[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_Transmit_State[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_Transmit_State[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_Transmit_State[2]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_Transmit_State[2]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_sequential_Transmit_State[2]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_sequential_Transmit_State[2]_i_13_n_0\ : STD_LOGIC;
  signal \FSM_sequential_Transmit_State[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_Transmit_State[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_Transmit_State[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_Transmit_State[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_Transmit_State[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_Transmit_State[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_Transmit_State[2]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_Transmit_State[2]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_Transmit_State[2]_i_9_n_0\ : STD_LOGIC;
  signal RX_BIT_0 : STD_LOGIC;
  signal \RX_BIT_0[0]_i_1_n_0\ : STD_LOGIC;
  signal \RX_BIT_0_reg_n_0_[0]\ : STD_LOGIC;
  signal RX_BIT_1 : STD_LOGIC;
  signal \RX_BIT_1_reg_n_0_[0]\ : STD_LOGIC;
  signal RX_BIT_2 : STD_LOGIC;
  signal \RX_BIT_2_reg_n_0_[0]\ : STD_LOGIC;
  signal RX_BIT_3 : STD_LOGIC;
  signal \RX_BIT_3_reg_n_0_[0]\ : STD_LOGIC;
  signal RX_BIT_4 : STD_LOGIC;
  signal \RX_BIT_4_reg_n_0_[0]\ : STD_LOGIC;
  signal RX_BIT_5 : STD_LOGIC;
  signal \RX_BIT_5_reg_n_0_[0]\ : STD_LOGIC;
  signal RX_BIT_6 : STD_LOGIC;
  signal \RX_BIT_6_reg_n_0_[0]\ : STD_LOGIC;
  signal RX_BIT_7 : STD_LOGIC;
  signal \RX_BIT_7_reg_n_0_[0]\ : STD_LOGIC;
  signal RX_MSG : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal RX_MSG_0 : STD_LOGIC;
  signal RX_SBR_0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \RX_SBR_0[3]_i_1_n_0\ : STD_LOGIC;
  signal \RX_SBR_0[3]_i_3_n_0\ : STD_LOGIC;
  signal \RX_SBR_0[3]_i_4_n_0\ : STD_LOGIC;
  signal \RX_SBR_0[3]_i_5_n_0\ : STD_LOGIC;
  signal \RX_SBR_0_reg_n_0_[0]\ : STD_LOGIC;
  signal \RX_SBR_0_reg_n_0_[1]\ : STD_LOGIC;
  signal \RX_SBR_0_reg_n_0_[2]\ : STD_LOGIC;
  signal \RX_SBR_0_reg_n_0_[3]\ : STD_LOGIC;
  signal RX_SBR_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \RX_SBR_1[3]_i_1_n_0\ : STD_LOGIC;
  signal \RX_SBR_1[3]_i_3_n_0\ : STD_LOGIC;
  signal \RX_SBR_1_reg_n_0_[0]\ : STD_LOGIC;
  signal \RX_SBR_1_reg_n_0_[1]\ : STD_LOGIC;
  signal \RX_SBR_1_reg_n_0_[2]\ : STD_LOGIC;
  signal \RX_SBR_1_reg_n_0_[3]\ : STD_LOGIC;
  signal RX_SBR_2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \RX_SBR_2[3]_i_1_n_0\ : STD_LOGIC;
  signal \RX_SBR_2_reg_n_0_[0]\ : STD_LOGIC;
  signal \RX_SBR_2_reg_n_0_[1]\ : STD_LOGIC;
  signal \RX_SBR_2_reg_n_0_[2]\ : STD_LOGIC;
  signal \RX_SBR_2_reg_n_0_[3]\ : STD_LOGIC;
  signal RX_SBR_3 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \RX_SBR_3[3]_i_1_n_0\ : STD_LOGIC;
  signal \RX_SBR_3_reg_n_0_[0]\ : STD_LOGIC;
  signal \RX_SBR_3_reg_n_0_[1]\ : STD_LOGIC;
  signal \RX_SBR_3_reg_n_0_[2]\ : STD_LOGIC;
  signal \RX_SBR_3_reg_n_0_[3]\ : STD_LOGIC;
  signal RX_SBR_4 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \RX_SBR_4[3]_i_1_n_0\ : STD_LOGIC;
  signal \RX_SBR_4_reg_n_0_[0]\ : STD_LOGIC;
  signal \RX_SBR_4_reg_n_0_[1]\ : STD_LOGIC;
  signal \RX_SBR_4_reg_n_0_[2]\ : STD_LOGIC;
  signal \RX_SBR_4_reg_n_0_[3]\ : STD_LOGIC;
  signal RX_SBR_5 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \RX_SBR_5[3]_i_1_n_0\ : STD_LOGIC;
  signal \RX_SBR_5_reg_n_0_[0]\ : STD_LOGIC;
  signal \RX_SBR_5_reg_n_0_[1]\ : STD_LOGIC;
  signal \RX_SBR_5_reg_n_0_[2]\ : STD_LOGIC;
  signal \RX_SBR_5_reg_n_0_[3]\ : STD_LOGIC;
  signal RX_SBR_6 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \RX_SBR_6[3]_i_1_n_0\ : STD_LOGIC;
  signal \RX_SBR_6_reg_n_0_[0]\ : STD_LOGIC;
  signal \RX_SBR_6_reg_n_0_[1]\ : STD_LOGIC;
  signal \RX_SBR_6_reg_n_0_[2]\ : STD_LOGIC;
  signal \RX_SBR_6_reg_n_0_[3]\ : STD_LOGIC;
  signal RX_SBR_7 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \RX_SBR_7[3]_i_1_n_0\ : STD_LOGIC;
  signal \RX_SBR_7_reg_n_0_[0]\ : STD_LOGIC;
  signal \RX_SBR_7_reg_n_0_[1]\ : STD_LOGIC;
  signal \RX_SBR_7_reg_n_0_[2]\ : STD_LOGIC;
  signal \RX_SBR_7_reg_n_0_[3]\ : STD_LOGIC;
  signal Receive_State : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \Rx_FIFO_State__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Rx_RCV_Cnt : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \Rx_RCV_Cnt[1]_i_2_n_0\ : STD_LOGIC;
  signal \Rx_RCV_Cnt[1]_i_3_n_0\ : STD_LOGIC;
  signal \Rx_RCV_Cnt[2]_i_2_n_0\ : STD_LOGIC;
  signal \Rx_RCV_Cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \Rx_RCV_Cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \Rx_RCV_Cnt[7]_i_3_n_0\ : STD_LOGIC;
  signal \Rx_RCV_Cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \Rx_RCV_Cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \Rx_RCV_Cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \Rx_RCV_Cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \Rx_RCV_Cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \Rx_RCV_Cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \Rx_RCV_Cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \Rx_RCV_Cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \Transmit_State__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Tx_FIFO_State : STD_LOGIC;
  signal \Tx_FIFO_State[0]_i_1_n_0\ : STD_LOGIC;
  signal \Tx_FIFO_State[1]_i_1_n_0\ : STD_LOGIC;
  signal \Tx_FIFO_State[2]_i_1_n_0\ : STD_LOGIC;
  signal \Tx_FIFO_State_reg_n_0_[0]\ : STD_LOGIC;
  signal \Tx_FIFO_State_reg_n_0_[1]\ : STD_LOGIC;
  signal \Tx_FIFO_State_reg_n_0_[2]\ : STD_LOGIC;
  signal Tx_Word_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \Tx_Word_1[7]_i_1_n_0\ : STD_LOGIC;
  signal Tx_Word_Cnt : STD_LOGIC;
  signal \Tx_Word_Cnt0_carry__0_n_0\ : STD_LOGIC;
  signal \Tx_Word_Cnt0_carry__0_n_1\ : STD_LOGIC;
  signal \Tx_Word_Cnt0_carry__0_n_2\ : STD_LOGIC;
  signal \Tx_Word_Cnt0_carry__0_n_3\ : STD_LOGIC;
  signal \Tx_Word_Cnt0_carry__1_n_0\ : STD_LOGIC;
  signal \Tx_Word_Cnt0_carry__1_n_1\ : STD_LOGIC;
  signal \Tx_Word_Cnt0_carry__1_n_2\ : STD_LOGIC;
  signal \Tx_Word_Cnt0_carry__1_n_3\ : STD_LOGIC;
  signal \Tx_Word_Cnt0_carry__2_n_0\ : STD_LOGIC;
  signal \Tx_Word_Cnt0_carry__2_n_1\ : STD_LOGIC;
  signal \Tx_Word_Cnt0_carry__2_n_2\ : STD_LOGIC;
  signal \Tx_Word_Cnt0_carry__2_n_3\ : STD_LOGIC;
  signal \Tx_Word_Cnt0_carry__3_n_0\ : STD_LOGIC;
  signal \Tx_Word_Cnt0_carry__3_n_1\ : STD_LOGIC;
  signal \Tx_Word_Cnt0_carry__3_n_2\ : STD_LOGIC;
  signal \Tx_Word_Cnt0_carry__3_n_3\ : STD_LOGIC;
  signal \Tx_Word_Cnt0_carry__4_n_0\ : STD_LOGIC;
  signal \Tx_Word_Cnt0_carry__4_n_1\ : STD_LOGIC;
  signal \Tx_Word_Cnt0_carry__4_n_2\ : STD_LOGIC;
  signal \Tx_Word_Cnt0_carry__4_n_3\ : STD_LOGIC;
  signal \Tx_Word_Cnt0_carry__5_n_0\ : STD_LOGIC;
  signal \Tx_Word_Cnt0_carry__5_n_1\ : STD_LOGIC;
  signal \Tx_Word_Cnt0_carry__5_n_2\ : STD_LOGIC;
  signal \Tx_Word_Cnt0_carry__5_n_3\ : STD_LOGIC;
  signal \Tx_Word_Cnt0_carry__6_n_3\ : STD_LOGIC;
  signal Tx_Word_Cnt0_carry_n_0 : STD_LOGIC;
  signal Tx_Word_Cnt0_carry_n_1 : STD_LOGIC;
  signal Tx_Word_Cnt0_carry_n_2 : STD_LOGIC;
  signal Tx_Word_Cnt0_carry_n_3 : STD_LOGIC;
  signal \Tx_Word_Cnt[30]_i_1_n_0\ : STD_LOGIC;
  signal \Tx_Word_Cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \Tx_Word_Cnt_reg_n_0_[10]\ : STD_LOGIC;
  signal \Tx_Word_Cnt_reg_n_0_[11]\ : STD_LOGIC;
  signal \Tx_Word_Cnt_reg_n_0_[12]\ : STD_LOGIC;
  signal \Tx_Word_Cnt_reg_n_0_[13]\ : STD_LOGIC;
  signal \Tx_Word_Cnt_reg_n_0_[14]\ : STD_LOGIC;
  signal \Tx_Word_Cnt_reg_n_0_[15]\ : STD_LOGIC;
  signal \Tx_Word_Cnt_reg_n_0_[16]\ : STD_LOGIC;
  signal \Tx_Word_Cnt_reg_n_0_[17]\ : STD_LOGIC;
  signal \Tx_Word_Cnt_reg_n_0_[18]\ : STD_LOGIC;
  signal \Tx_Word_Cnt_reg_n_0_[19]\ : STD_LOGIC;
  signal \Tx_Word_Cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \Tx_Word_Cnt_reg_n_0_[20]\ : STD_LOGIC;
  signal \Tx_Word_Cnt_reg_n_0_[21]\ : STD_LOGIC;
  signal \Tx_Word_Cnt_reg_n_0_[22]\ : STD_LOGIC;
  signal \Tx_Word_Cnt_reg_n_0_[23]\ : STD_LOGIC;
  signal \Tx_Word_Cnt_reg_n_0_[24]\ : STD_LOGIC;
  signal \Tx_Word_Cnt_reg_n_0_[25]\ : STD_LOGIC;
  signal \Tx_Word_Cnt_reg_n_0_[26]\ : STD_LOGIC;
  signal \Tx_Word_Cnt_reg_n_0_[27]\ : STD_LOGIC;
  signal \Tx_Word_Cnt_reg_n_0_[28]\ : STD_LOGIC;
  signal \Tx_Word_Cnt_reg_n_0_[29]\ : STD_LOGIC;
  signal \Tx_Word_Cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \Tx_Word_Cnt_reg_n_0_[30]\ : STD_LOGIC;
  signal \Tx_Word_Cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \Tx_Word_Cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \Tx_Word_Cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \Tx_Word_Cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \Tx_Word_Cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \Tx_Word_Cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal \Tx_Word_Cnt_reg_n_0_[9]\ : STD_LOGIC;
  signal Tx_i_1_n_0 : STD_LOGIC;
  signal Tx_i_2_n_0 : STD_LOGIC;
  signal Tx_i_3_n_0 : STD_LOGIC;
  signal in4 : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \^rd_en\ : STD_LOGIC;
  signal \^wr_en\ : STD_LOGIC;
  signal \NLW_CLK96000_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_CLK96000_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_CLK9600_80_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_CLK9600_80_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_Tx_Word_Cnt0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_Tx_Word_Cnt0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of FIFO_RD_i_1 : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of FIFO_WT_i_1 : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \FSM_sequential_Receive_State[0]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \FSM_sequential_Receive_State[1]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \FSM_sequential_Receive_State[2]_i_1\ : label is "soft_lutpair43";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_Receive_State_reg[0]\ : label is "reset:000,idle:001,receive:010,eval:011,push:100,wa1t:101,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_Receive_State_reg[1]\ : label is "reset:000,idle:001,receive:010,eval:011,push:100,wa1t:101,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_Receive_State_reg[2]\ : label is "reset:000,idle:001,receive:010,eval:011,push:100,wa1t:101,";
  attribute SOFT_HLUTNM of \FSM_sequential_Rx_FIFO_State[1]_i_2\ : label is "soft_lutpair34";
  attribute FSM_ENCODED_STATES of \FSM_sequential_Rx_FIFO_State_reg[0]\ : label is "write:01,write_en:10,wa1t:11,idle:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_Rx_FIFO_State_reg[1]\ : label is "write:01,write_en:10,wa1t:11,idle:00";
  attribute SOFT_HLUTNM of \FSM_sequential_Transmit_State[1]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \FSM_sequential_Transmit_State[2]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \FSM_sequential_Transmit_State[2]_i_12\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \FSM_sequential_Transmit_State[2]_i_6\ : label is "soft_lutpair42";
  attribute FSM_ENCODED_STATES of \FSM_sequential_Transmit_State_reg[0]\ : label is "start:010,msg:011,stop:100,idle:001,off:000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_Transmit_State_reg[1]\ : label is "start:010,msg:011,stop:100,idle:001,off:000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_Transmit_State_reg[2]\ : label is "start:010,msg:011,stop:100,idle:001,off:000";
  attribute SOFT_HLUTNM of \RX_SBR_0[0]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \RX_SBR_0[1]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \RX_SBR_0[3]_i_3\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \RX_SBR_0[3]_i_4\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \RX_SBR_0[3]_i_5\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \RX_SBR_1[0]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \RX_SBR_1[1]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \RX_SBR_1[3]_i_3\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \RX_SBR_2[0]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \RX_SBR_2[1]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \RX_SBR_3[0]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \RX_SBR_3[1]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \RX_SBR_4[0]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \RX_SBR_4[1]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \RX_SBR_5[0]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \RX_SBR_5[1]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \RX_SBR_6[0]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \RX_SBR_6[1]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \RX_SBR_7[0]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \RX_SBR_7[1]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \Rx_RCV_Cnt[0]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \Rx_RCV_Cnt[1]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \Rx_RCV_Cnt[1]_i_2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \Rx_RCV_Cnt[2]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \Rx_RCV_Cnt[5]_i_2\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \Rx_RCV_Cnt[6]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \Rx_RCV_Cnt[7]_i_2\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \Tx_Word_Cnt[0]_i_1\ : label is "soft_lutpair45";
begin
  CLK9600_8_D_reg_0 <= \^clk9600_8_d_reg_0\;
  CLK9600_D_reg_0 <= \^clk9600_d_reg_0\;
  rd_en <= \^rd_en\;
  wr_en <= \^wr_en\;
CLK96000_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => CLK96000_carry_n_0,
      CO(2) => CLK96000_carry_n_1,
      CO(1) => CLK96000_carry_n_2,
      CO(0) => CLK96000_carry_n_3,
      CYINIT => CLK9600(0),
      DI(3 downto 0) => B"0000",
      O(3) => CLK96000_carry_n_4,
      O(2) => CLK96000_carry_n_5,
      O(1) => CLK96000_carry_n_6,
      O(0) => CLK96000_carry_n_7,
      S(3 downto 0) => CLK9600(4 downto 1)
    );
\CLK96000_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => CLK96000_carry_n_0,
      CO(3) => \CLK96000_carry__0_n_0\,
      CO(2) => \CLK96000_carry__0_n_1\,
      CO(1) => \CLK96000_carry__0_n_2\,
      CO(0) => \CLK96000_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \CLK96000_carry__0_n_4\,
      O(2) => \CLK96000_carry__0_n_5\,
      O(1) => \CLK96000_carry__0_n_6\,
      O(0) => \CLK96000_carry__0_n_7\,
      S(3 downto 0) => CLK9600(8 downto 5)
    );
\CLK96000_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \CLK96000_carry__0_n_0\,
      CO(3) => \CLK96000_carry__1_n_0\,
      CO(2) => \CLK96000_carry__1_n_1\,
      CO(1) => \CLK96000_carry__1_n_2\,
      CO(0) => \CLK96000_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \CLK96000_carry__1_n_4\,
      O(2) => \CLK96000_carry__1_n_5\,
      O(1) => \CLK96000_carry__1_n_6\,
      O(0) => \CLK96000_carry__1_n_7\,
      S(3 downto 0) => CLK9600(12 downto 9)
    );
\CLK96000_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \CLK96000_carry__1_n_0\,
      CO(3 downto 2) => \NLW_CLK96000_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \CLK96000_carry__2_n_2\,
      CO(0) => \CLK96000_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_CLK96000_carry__2_O_UNCONNECTED\(3),
      O(2) => \CLK96000_carry__2_n_5\,
      O(1) => \CLK96000_carry__2_n_6\,
      O(0) => \CLK96000_carry__2_n_7\,
      S(3) => '0',
      S(2 downto 0) => CLK9600(15 downto 13)
    );
\CLK9600[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => CLK9600(0),
      O => \CLK9600[0]_i_1_n_0\
    );
\CLK9600[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \CLK9600[15]_i_2_n_0\,
      I1 => CLK9600(3),
      I2 => CLK9600(1),
      I3 => CLK9600(6),
      I4 => CLK9600(4),
      I5 => \CLK9600[15]_i_3_n_0\,
      O => \CLK9600[15]_i_1_n_0\
    );
\CLK9600[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => CLK9600(14),
      I1 => CLK9600(15),
      I2 => CLK9600(12),
      I3 => CLK9600(13),
      I4 => CLK9600(11),
      I5 => CLK9600(10),
      O => \CLK9600[15]_i_2_n_0\
    );
\CLK9600[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFFFFFFFFFF"
    )
        port map (
      I0 => CLK9600(0),
      I1 => CLK9600(7),
      I2 => CLK9600(9),
      I3 => CLK9600(2),
      I4 => CLK9600(5),
      I5 => CLK9600(8),
      O => \CLK9600[15]_i_3_n_0\
    );
CLK9600_80_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => CLK9600_80_carry_n_0,
      CO(2) => CLK9600_80_carry_n_1,
      CO(1) => CLK9600_80_carry_n_2,
      CO(0) => CLK9600_80_carry_n_3,
      CYINIT => CLK9600_8(0),
      DI(3 downto 0) => B"0000",
      O(3) => CLK9600_80_carry_n_4,
      O(2) => CLK9600_80_carry_n_5,
      O(1) => CLK9600_80_carry_n_6,
      O(0) => CLK9600_80_carry_n_7,
      S(3 downto 0) => CLK9600_8(4 downto 1)
    );
\CLK9600_80_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => CLK9600_80_carry_n_0,
      CO(3) => \CLK9600_80_carry__0_n_0\,
      CO(2) => \CLK9600_80_carry__0_n_1\,
      CO(1) => \CLK9600_80_carry__0_n_2\,
      CO(0) => \CLK9600_80_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \CLK9600_80_carry__0_n_4\,
      O(2) => \CLK9600_80_carry__0_n_5\,
      O(1) => \CLK9600_80_carry__0_n_6\,
      O(0) => \CLK9600_80_carry__0_n_7\,
      S(3 downto 0) => CLK9600_8(8 downto 5)
    );
\CLK9600_80_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \CLK9600_80_carry__0_n_0\,
      CO(3) => \CLK9600_80_carry__1_n_0\,
      CO(2) => \CLK9600_80_carry__1_n_1\,
      CO(1) => \CLK9600_80_carry__1_n_2\,
      CO(0) => \CLK9600_80_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \CLK9600_80_carry__1_n_4\,
      O(2) => \CLK9600_80_carry__1_n_5\,
      O(1) => \CLK9600_80_carry__1_n_6\,
      O(0) => \CLK9600_80_carry__1_n_7\,
      S(3 downto 0) => CLK9600_8(12 downto 9)
    );
\CLK9600_80_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \CLK9600_80_carry__1_n_0\,
      CO(3 downto 2) => \NLW_CLK9600_80_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \CLK9600_80_carry__2_n_2\,
      CO(0) => \CLK9600_80_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_CLK9600_80_carry__2_O_UNCONNECTED\(3),
      O(2) => \CLK9600_80_carry__2_n_5\,
      O(1) => \CLK9600_80_carry__2_n_6\,
      O(0) => \CLK9600_80_carry__2_n_7\,
      S(3) => '0',
      S(2 downto 0) => CLK9600_8(15 downto 13)
    );
\CLK9600_8[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => CLK9600_8(0),
      O => \CLK9600_8[0]_i_1_n_0\
    );
\CLK9600_8[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => CLK9600_8(5),
      I1 => CLK9600_8(3),
      I2 => CLK9600_8(0),
      I3 => \CLK9600_8[15]_i_2_n_0\,
      I4 => \CLK9600_8[15]_i_3_n_0\,
      O => \CLK9600_8[15]_i_1_n_0\
    );
\CLK9600_8[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => CLK9600_8(2),
      I1 => CLK9600_8(1),
      I2 => CLK9600_8(6),
      I3 => CLK9600_8(4),
      O => \CLK9600_8[15]_i_2_n_0\
    );
\CLK9600_8[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \CLK9600_8[15]_i_4_n_0\,
      I1 => CLK9600_8(12),
      I2 => CLK9600_8(13),
      I3 => CLK9600_8(10),
      I4 => CLK9600_8(11),
      O => \CLK9600_8[15]_i_3_n_0\
    );
\CLK9600_8[15]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => CLK9600_8(7),
      I1 => CLK9600_8(14),
      I2 => CLK9600_8(15),
      I3 => CLK9600_8(9),
      I4 => CLK9600_8(8),
      O => \CLK9600_8[15]_i_4_n_0\
    );
CLK9600_8_D_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \CLK9600_8[15]_i_3_n_0\,
      I1 => CLK9600_8(6),
      I2 => CLK9600_8_D_i_2_n_0,
      O => CLK9600_8_D_i_1_n_0
    );
CLK9600_8_D_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0A0A0A000000000"
    )
        port map (
      I0 => CLK9600_8(3),
      I1 => CLK9600_8(2),
      I2 => CLK9600_8(5),
      I3 => CLK9600_8(1),
      I4 => CLK9600_8(0),
      I5 => CLK9600_8(4),
      O => CLK9600_8_D_i_2_n_0
    );
CLK9600_8_D_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => CLK9600_8_D_i_1_n_0,
      Q => \^clk9600_8_d_reg_0\,
      R => '0'
    );
\CLK9600_8_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => \CLK9600_8[0]_i_1_n_0\,
      Q => CLK9600_8(0),
      R => \CLK9600_8[15]_i_1_n_0\
    );
\CLK9600_8_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => \CLK9600_80_carry__1_n_6\,
      Q => CLK9600_8(10),
      R => \CLK9600_8[15]_i_1_n_0\
    );
\CLK9600_8_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => \CLK9600_80_carry__1_n_5\,
      Q => CLK9600_8(11),
      R => \CLK9600_8[15]_i_1_n_0\
    );
\CLK9600_8_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => \CLK9600_80_carry__1_n_4\,
      Q => CLK9600_8(12),
      R => \CLK9600_8[15]_i_1_n_0\
    );
\CLK9600_8_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => \CLK9600_80_carry__2_n_7\,
      Q => CLK9600_8(13),
      R => \CLK9600_8[15]_i_1_n_0\
    );
\CLK9600_8_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => \CLK9600_80_carry__2_n_6\,
      Q => CLK9600_8(14),
      R => \CLK9600_8[15]_i_1_n_0\
    );
\CLK9600_8_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => \CLK9600_80_carry__2_n_5\,
      Q => CLK9600_8(15),
      R => \CLK9600_8[15]_i_1_n_0\
    );
\CLK9600_8_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => CLK9600_80_carry_n_7,
      Q => CLK9600_8(1),
      R => \CLK9600_8[15]_i_1_n_0\
    );
\CLK9600_8_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => CLK9600_80_carry_n_6,
      Q => CLK9600_8(2),
      R => \CLK9600_8[15]_i_1_n_0\
    );
\CLK9600_8_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => CLK9600_80_carry_n_5,
      Q => CLK9600_8(3),
      R => \CLK9600_8[15]_i_1_n_0\
    );
\CLK9600_8_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => CLK9600_80_carry_n_4,
      Q => CLK9600_8(4),
      R => \CLK9600_8[15]_i_1_n_0\
    );
\CLK9600_8_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => \CLK9600_80_carry__0_n_7\,
      Q => CLK9600_8(5),
      R => \CLK9600_8[15]_i_1_n_0\
    );
\CLK9600_8_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => \CLK9600_80_carry__0_n_6\,
      Q => CLK9600_8(6),
      R => \CLK9600_8[15]_i_1_n_0\
    );
\CLK9600_8_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => \CLK9600_80_carry__0_n_5\,
      Q => CLK9600_8(7),
      R => \CLK9600_8[15]_i_1_n_0\
    );
\CLK9600_8_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => \CLK9600_80_carry__0_n_4\,
      Q => CLK9600_8(8),
      R => \CLK9600_8[15]_i_1_n_0\
    );
\CLK9600_8_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => \CLK9600_80_carry__1_n_7\,
      Q => CLK9600_8(9),
      R => \CLK9600_8[15]_i_1_n_0\
    );
CLK9600_D_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF80"
    )
        port map (
      I0 => CLK9600(4),
      I1 => CLK9600(7),
      I2 => CLK9600_D_i_2_n_0,
      I3 => CLK9600_D_i_3_n_0,
      I4 => \CLK9600[15]_i_2_n_0\,
      I5 => CLK9600(9),
      O => CLK9600_D_i_1_n_0
    );
CLK9600_D_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8000000000000"
    )
        port map (
      I0 => CLK9600(1),
      I1 => CLK9600(0),
      I2 => CLK9600(3),
      I3 => CLK9600(2),
      I4 => CLK9600(5),
      I5 => CLK9600(8),
      O => CLK9600_D_i_2_n_0
    );
CLK9600_D_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => CLK9600(8),
      I1 => CLK9600(6),
      I2 => CLK9600(7),
      O => CLK9600_D_i_3_n_0
    );
CLK9600_D_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => CLK9600_D_i_1_n_0,
      Q => \^clk9600_d_reg_0\,
      R => '0'
    );
\CLK9600_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => \CLK9600[0]_i_1_n_0\,
      Q => CLK9600(0),
      R => \CLK9600[15]_i_1_n_0\
    );
\CLK9600_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => \CLK96000_carry__1_n_6\,
      Q => CLK9600(10),
      R => \CLK9600[15]_i_1_n_0\
    );
\CLK9600_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => \CLK96000_carry__1_n_5\,
      Q => CLK9600(11),
      R => \CLK9600[15]_i_1_n_0\
    );
\CLK9600_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => \CLK96000_carry__1_n_4\,
      Q => CLK9600(12),
      R => \CLK9600[15]_i_1_n_0\
    );
\CLK9600_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => \CLK96000_carry__2_n_7\,
      Q => CLK9600(13),
      R => \CLK9600[15]_i_1_n_0\
    );
\CLK9600_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => \CLK96000_carry__2_n_6\,
      Q => CLK9600(14),
      R => \CLK9600[15]_i_1_n_0\
    );
\CLK9600_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => \CLK96000_carry__2_n_5\,
      Q => CLK9600(15),
      R => \CLK9600[15]_i_1_n_0\
    );
\CLK9600_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => CLK96000_carry_n_7,
      Q => CLK9600(1),
      R => \CLK9600[15]_i_1_n_0\
    );
\CLK9600_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => CLK96000_carry_n_6,
      Q => CLK9600(2),
      R => \CLK9600[15]_i_1_n_0\
    );
\CLK9600_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => CLK96000_carry_n_5,
      Q => CLK9600(3),
      R => \CLK9600[15]_i_1_n_0\
    );
\CLK9600_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => CLK96000_carry_n_4,
      Q => CLK9600(4),
      R => \CLK9600[15]_i_1_n_0\
    );
\CLK9600_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => \CLK96000_carry__0_n_7\,
      Q => CLK9600(5),
      R => \CLK9600[15]_i_1_n_0\
    );
\CLK9600_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => \CLK96000_carry__0_n_6\,
      Q => CLK9600(6),
      R => \CLK9600[15]_i_1_n_0\
    );
\CLK9600_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => \CLK96000_carry__0_n_5\,
      Q => CLK9600(7),
      R => \CLK9600[15]_i_1_n_0\
    );
\CLK9600_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => \CLK96000_carry__0_n_4\,
      Q => CLK9600(8),
      R => \CLK9600[15]_i_1_n_0\
    );
\CLK9600_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => \CLK96000_carry__1_n_7\,
      Q => CLK9600(9),
      R => \CLK9600[15]_i_1_n_0\
    );
\FIFO_OT[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Rx_FIFO_State__0\(0),
      I1 => \Rx_FIFO_State__0\(1),
      O => FIFO_OT0
    );
\FIFO_OT[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \Rx_FIFO_State__0\(1),
      I1 => \Rx_FIFO_State__0\(0),
      I2 => almost_full,
      I3 => full,
      O => \FIFO_OT[7]_i_2_n_0\
    );
\FIFO_OT_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => \FIFO_OT[7]_i_2_n_0\,
      D => RX_MSG(0),
      Q => Q(0),
      R => FIFO_OT0
    );
\FIFO_OT_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => \FIFO_OT[7]_i_2_n_0\,
      D => RX_MSG(1),
      Q => Q(1),
      R => FIFO_OT0
    );
\FIFO_OT_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => \FIFO_OT[7]_i_2_n_0\,
      D => RX_MSG(2),
      Q => Q(2),
      R => FIFO_OT0
    );
\FIFO_OT_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => \FIFO_OT[7]_i_2_n_0\,
      D => RX_MSG(3),
      Q => Q(3),
      R => FIFO_OT0
    );
\FIFO_OT_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => \FIFO_OT[7]_i_2_n_0\,
      D => RX_MSG(4),
      Q => Q(4),
      R => FIFO_OT0
    );
\FIFO_OT_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => \FIFO_OT[7]_i_2_n_0\,
      D => RX_MSG(5),
      Q => Q(5),
      R => FIFO_OT0
    );
\FIFO_OT_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => \FIFO_OT[7]_i_2_n_0\,
      D => RX_MSG(6),
      Q => Q(6),
      R => FIFO_OT0
    );
\FIFO_OT_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => \FIFO_OT[7]_i_2_n_0\,
      D => RX_MSG(7),
      Q => Q(7),
      R => FIFO_OT0
    );
FIFO_RD_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DE02"
    )
        port map (
      I0 => \Tx_FIFO_State_reg_n_0_[0]\,
      I1 => \Tx_FIFO_State_reg_n_0_[2]\,
      I2 => \Tx_FIFO_State_reg_n_0_[1]\,
      I3 => \^rd_en\,
      O => FIFO_RD_i_1_n_0
    );
FIFO_RD_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_d_reg_0\,
      CE => '1',
      D => FIFO_RD_i_1_n_0,
      Q => \^rd_en\,
      R => '0'
    );
FIFO_WT_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55AA0100"
    )
        port map (
      I0 => \Rx_FIFO_State__0\(0),
      I1 => almost_full,
      I2 => full,
      I3 => \Rx_FIFO_State__0\(1),
      I4 => \^wr_en\,
      O => FIFO_WT_i_1_n_0
    );
FIFO_WT_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => '1',
      D => FIFO_WT_i_1_n_0,
      Q => \^wr_en\,
      R => '0'
    );
\FSM_sequential_Receive_State[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"500F0E1F"
    )
        port map (
      I0 => \FSM_sequential_Receive_State[2]_i_2_n_0\,
      I1 => \Rx_RCV_Cnt_reg_n_0_[7]\,
      I2 => Receive_State(0),
      I3 => Receive_State(1),
      I4 => Receive_State(2),
      O => \FSM_sequential_Receive_State[0]_i_1_n_0\
    );
\FSM_sequential_Receive_State[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55000FE0"
    )
        port map (
      I0 => \FSM_sequential_Receive_State[2]_i_2_n_0\,
      I1 => \Rx_RCV_Cnt_reg_n_0_[7]\,
      I2 => Receive_State(0),
      I3 => Receive_State(1),
      I4 => Receive_State(2),
      O => \FSM_sequential_Receive_State[1]_i_1_n_0\
    );
\FSM_sequential_Receive_State[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"53C0"
    )
        port map (
      I0 => \FSM_sequential_Receive_State[2]_i_2_n_0\,
      I1 => Receive_State(0),
      I2 => Receive_State(1),
      I3 => Receive_State(2),
      O => \FSM_sequential_Receive_State[2]_i_1_n_0\
    );
\FSM_sequential_Receive_State[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFF0FE00"
    )
        port map (
      I0 => \Rx_RCV_Cnt_reg_n_0_[1]\,
      I1 => \Rx_RCV_Cnt_reg_n_0_[0]\,
      I2 => \FSM_sequential_Receive_State[2]_i_3_n_0\,
      I3 => \Rx_RCV_Cnt_reg_n_0_[6]\,
      I4 => Receive_State(0),
      I5 => Receive_State(2),
      O => \FSM_sequential_Receive_State[2]_i_2_n_0\
    );
\FSM_sequential_Receive_State[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \Rx_RCV_Cnt_reg_n_0_[3]\,
      I1 => \Rx_RCV_Cnt_reg_n_0_[4]\,
      I2 => \Rx_RCV_Cnt_reg_n_0_[5]\,
      I3 => \Rx_RCV_Cnt_reg_n_0_[2]\,
      O => \FSM_sequential_Receive_State[2]_i_3_n_0\
    );
\FSM_sequential_Receive_State_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => '1',
      D => \FSM_sequential_Receive_State[0]_i_1_n_0\,
      Q => Receive_State(0),
      R => '0'
    );
\FSM_sequential_Receive_State_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => '1',
      D => \FSM_sequential_Receive_State[1]_i_1_n_0\,
      Q => Receive_State(1),
      R => '0'
    );
\FSM_sequential_Receive_State_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => '1',
      D => \FSM_sequential_Receive_State[2]_i_1_n_0\,
      Q => Receive_State(2),
      R => '0'
    );
\FSM_sequential_Rx_FIFO_State[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAA00C0"
    )
        port map (
      I0 => \FSM_sequential_Rx_FIFO_State[1]_i_2_n_0\,
      I1 => Receive_State(0),
      I2 => Receive_State(2),
      I3 => Receive_State(1),
      I4 => \Rx_FIFO_State__0\(1),
      I5 => \Rx_FIFO_State__0\(0),
      O => \FSM_sequential_Rx_FIFO_State[0]_i_1_n_0\
    );
\FSM_sequential_Rx_FIFO_State[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \FSM_sequential_Rx_FIFO_State[1]_i_2_n_0\,
      I1 => \Rx_FIFO_State__0\(1),
      I2 => \Rx_FIFO_State__0\(0),
      O => \FSM_sequential_Rx_FIFO_State[1]_i_1_n_0\
    );
\FSM_sequential_Rx_FIFO_State[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => full,
      I1 => almost_full,
      O => \FSM_sequential_Rx_FIFO_State[1]_i_2_n_0\
    );
\FSM_sequential_Rx_FIFO_State_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => '1',
      D => \FSM_sequential_Rx_FIFO_State[0]_i_1_n_0\,
      Q => \Rx_FIFO_State__0\(0),
      R => '0'
    );
\FSM_sequential_Rx_FIFO_State_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => '1',
      D => \FSM_sequential_Rx_FIFO_State[1]_i_1_n_0\,
      Q => \Rx_FIFO_State__0\(1),
      R => '0'
    );
\FSM_sequential_Transmit_State[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020FFFF00F20000"
    )
        port map (
      I0 => \Tx_FIFO_State_reg_n_0_[1]\,
      I1 => \FSM_sequential_Transmit_State[2]_i_2_n_0\,
      I2 => \Transmit_State__0\(1),
      I3 => \Transmit_State__0\(2),
      I4 => \FSM_sequential_Transmit_State[2]_i_3_n_0\,
      I5 => \Transmit_State__0\(0),
      O => \FSM_sequential_Transmit_State[0]_i_1_n_0\
    );
\FSM_sequential_Transmit_State[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F20"
    )
        port map (
      I0 => \Transmit_State__0\(0),
      I1 => \Transmit_State__0\(2),
      I2 => \FSM_sequential_Transmit_State[2]_i_3_n_0\,
      I3 => \Transmit_State__0\(1),
      O => \FSM_sequential_Transmit_State[1]_i_1_n_0\
    );
\FSM_sequential_Transmit_State[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F80"
    )
        port map (
      I0 => \Transmit_State__0\(1),
      I1 => \FSM_sequential_Transmit_State[2]_i_2_n_0\,
      I2 => \FSM_sequential_Transmit_State[2]_i_3_n_0\,
      I3 => \Transmit_State__0\(2),
      O => \FSM_sequential_Transmit_State[2]_i_1_n_0\
    );
\FSM_sequential_Transmit_State[2]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \Tx_Word_Cnt_reg_n_0_[24]\,
      I1 => \Tx_Word_Cnt_reg_n_0_[21]\,
      I2 => \Tx_Word_Cnt_reg_n_0_[29]\,
      I3 => \Tx_Word_Cnt_reg_n_0_[23]\,
      O => \FSM_sequential_Transmit_State[2]_i_10_n_0\
    );
\FSM_sequential_Transmit_State[2]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \Tx_Word_Cnt_reg_n_0_[28]\,
      I1 => \Tx_Word_Cnt_reg_n_0_[12]\,
      I2 => \Tx_Word_Cnt_reg_n_0_[26]\,
      I3 => \Tx_Word_Cnt_reg_n_0_[8]\,
      O => \FSM_sequential_Transmit_State[2]_i_11_n_0\
    );
\FSM_sequential_Transmit_State[2]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \Tx_Word_Cnt_reg_n_0_[0]\,
      I1 => \Tx_Word_Cnt_reg_n_0_[19]\,
      I2 => \Tx_Word_Cnt_reg_n_0_[2]\,
      I3 => \Tx_Word_Cnt_reg_n_0_[20]\,
      O => \FSM_sequential_Transmit_State[2]_i_12_n_0\
    );
\FSM_sequential_Transmit_State[2]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \Tx_Word_Cnt_reg_n_0_[18]\,
      I1 => \Tx_Word_Cnt_reg_n_0_[17]\,
      I2 => \Tx_Word_Cnt_reg_n_0_[1]\,
      I3 => \Tx_Word_Cnt_reg_n_0_[4]\,
      O => \FSM_sequential_Transmit_State[2]_i_13_n_0\
    );
\FSM_sequential_Transmit_State[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \FSM_sequential_Transmit_State[2]_i_4_n_0\,
      I1 => \Transmit_State__0\(0),
      I2 => \FSM_sequential_Transmit_State[2]_i_5_n_0\,
      O => \FSM_sequential_Transmit_State[2]_i_2_n_0\
    );
\FSM_sequential_Transmit_State[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F000FFFFF2FF0"
    )
        port map (
      I0 => \FSM_sequential_Transmit_State[2]_i_4_n_0\,
      I1 => \FSM_sequential_Transmit_State[2]_i_5_n_0\,
      I2 => \Transmit_State__0\(0),
      I3 => \Transmit_State__0\(1),
      I4 => \FSM_sequential_Transmit_State[2]_i_6_n_0\,
      I5 => \Transmit_State__0\(2),
      O => \FSM_sequential_Transmit_State[2]_i_3_n_0\
    );
\FSM_sequential_Transmit_State[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => \FSM_sequential_Transmit_State[2]_i_7_n_0\,
      I1 => \FSM_sequential_Transmit_State[2]_i_8_n_0\,
      I2 => \FSM_sequential_Transmit_State[2]_i_9_n_0\,
      I3 => \FSM_sequential_Transmit_State[2]_i_10_n_0\,
      I4 => \FSM_sequential_Transmit_State[2]_i_11_n_0\,
      O => \FSM_sequential_Transmit_State[2]_i_4_n_0\
    );
\FSM_sequential_Transmit_State[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \Tx_Word_Cnt_reg_n_0_[3]\,
      I1 => \Tx_Word_Cnt_reg_n_0_[16]\,
      I2 => \Tx_Word_Cnt_reg_n_0_[5]\,
      I3 => \FSM_sequential_Transmit_State[2]_i_12_n_0\,
      I4 => \FSM_sequential_Transmit_State[2]_i_13_n_0\,
      O => \FSM_sequential_Transmit_State[2]_i_5_n_0\
    );
\FSM_sequential_Transmit_State[2]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Tx_FIFO_State_reg_n_0_[2]\,
      I1 => \Tx_FIFO_State_reg_n_0_[0]\,
      O => \FSM_sequential_Transmit_State[2]_i_6_n_0\
    );
\FSM_sequential_Transmit_State[2]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \Tx_Word_Cnt_reg_n_0_[14]\,
      I1 => \Tx_Word_Cnt_reg_n_0_[9]\,
      I2 => \Tx_Word_Cnt_reg_n_0_[25]\,
      I3 => \Tx_Word_Cnt_reg_n_0_[7]\,
      O => \FSM_sequential_Transmit_State[2]_i_7_n_0\
    );
\FSM_sequential_Transmit_State[2]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \Tx_Word_Cnt_reg_n_0_[13]\,
      I1 => \Tx_Word_Cnt_reg_n_0_[22]\,
      I2 => \Tx_Word_Cnt_reg_n_0_[27]\,
      I3 => \Tx_Word_Cnt_reg_n_0_[11]\,
      O => \FSM_sequential_Transmit_State[2]_i_8_n_0\
    );
\FSM_sequential_Transmit_State[2]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \Tx_Word_Cnt_reg_n_0_[30]\,
      I1 => \Tx_Word_Cnt_reg_n_0_[10]\,
      I2 => \Tx_Word_Cnt_reg_n_0_[15]\,
      I3 => \Tx_Word_Cnt_reg_n_0_[6]\,
      O => \FSM_sequential_Transmit_State[2]_i_9_n_0\
    );
\FSM_sequential_Transmit_State_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_d_reg_0\,
      CE => '1',
      D => \FSM_sequential_Transmit_State[0]_i_1_n_0\,
      Q => \Transmit_State__0\(0),
      R => '0'
    );
\FSM_sequential_Transmit_State_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_d_reg_0\,
      CE => '1',
      D => \FSM_sequential_Transmit_State[1]_i_1_n_0\,
      Q => \Transmit_State__0\(1),
      R => '0'
    );
\FSM_sequential_Transmit_State_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_d_reg_0\,
      CE => '1',
      D => \FSM_sequential_Transmit_State[2]_i_1_n_0\,
      Q => \Transmit_State__0\(2),
      R => '0'
    );
\RX_BIT_0[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => Receive_State(2),
      I1 => Receive_State(0),
      I2 => Receive_State(1),
      O => \RX_BIT_0[0]_i_1_n_0\
    );
\RX_BIT_0[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE00000"
    )
        port map (
      I0 => \RX_SBR_0_reg_n_0_[1]\,
      I1 => \RX_SBR_0_reg_n_0_[0]\,
      I2 => \RX_SBR_0_reg_n_0_[2]\,
      I3 => \RX_SBR_0_reg_n_0_[3]\,
      I4 => Receive_State(1),
      O => RX_BIT_0
    );
\RX_BIT_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => \RX_BIT_0[0]_i_1_n_0\,
      D => RX_BIT_0,
      Q => \RX_BIT_0_reg_n_0_[0]\,
      R => '0'
    );
\RX_BIT_1[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE00000"
    )
        port map (
      I0 => \RX_SBR_1_reg_n_0_[1]\,
      I1 => \RX_SBR_1_reg_n_0_[0]\,
      I2 => \RX_SBR_1_reg_n_0_[2]\,
      I3 => \RX_SBR_1_reg_n_0_[3]\,
      I4 => Receive_State(1),
      O => RX_BIT_1
    );
\RX_BIT_1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => \RX_BIT_0[0]_i_1_n_0\,
      D => RX_BIT_1,
      Q => \RX_BIT_1_reg_n_0_[0]\,
      R => '0'
    );
\RX_BIT_2[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE00000"
    )
        port map (
      I0 => \RX_SBR_2_reg_n_0_[1]\,
      I1 => \RX_SBR_2_reg_n_0_[0]\,
      I2 => \RX_SBR_2_reg_n_0_[2]\,
      I3 => \RX_SBR_2_reg_n_0_[3]\,
      I4 => Receive_State(1),
      O => RX_BIT_2
    );
\RX_BIT_2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => \RX_BIT_0[0]_i_1_n_0\,
      D => RX_BIT_2,
      Q => \RX_BIT_2_reg_n_0_[0]\,
      R => '0'
    );
\RX_BIT_3[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE00000"
    )
        port map (
      I0 => \RX_SBR_3_reg_n_0_[1]\,
      I1 => \RX_SBR_3_reg_n_0_[0]\,
      I2 => \RX_SBR_3_reg_n_0_[2]\,
      I3 => \RX_SBR_3_reg_n_0_[3]\,
      I4 => Receive_State(1),
      O => RX_BIT_3
    );
\RX_BIT_3_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => \RX_BIT_0[0]_i_1_n_0\,
      D => RX_BIT_3,
      Q => \RX_BIT_3_reg_n_0_[0]\,
      R => '0'
    );
\RX_BIT_4[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE00000"
    )
        port map (
      I0 => \RX_SBR_4_reg_n_0_[1]\,
      I1 => \RX_SBR_4_reg_n_0_[0]\,
      I2 => \RX_SBR_4_reg_n_0_[2]\,
      I3 => \RX_SBR_4_reg_n_0_[3]\,
      I4 => Receive_State(1),
      O => RX_BIT_4
    );
\RX_BIT_4_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => \RX_BIT_0[0]_i_1_n_0\,
      D => RX_BIT_4,
      Q => \RX_BIT_4_reg_n_0_[0]\,
      R => '0'
    );
\RX_BIT_5[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE00000"
    )
        port map (
      I0 => \RX_SBR_5_reg_n_0_[1]\,
      I1 => \RX_SBR_5_reg_n_0_[0]\,
      I2 => \RX_SBR_5_reg_n_0_[2]\,
      I3 => \RX_SBR_5_reg_n_0_[3]\,
      I4 => Receive_State(1),
      O => RX_BIT_5
    );
\RX_BIT_5_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => \RX_BIT_0[0]_i_1_n_0\,
      D => RX_BIT_5,
      Q => \RX_BIT_5_reg_n_0_[0]\,
      R => '0'
    );
\RX_BIT_6[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE00000"
    )
        port map (
      I0 => \RX_SBR_6_reg_n_0_[1]\,
      I1 => \RX_SBR_6_reg_n_0_[0]\,
      I2 => \RX_SBR_6_reg_n_0_[2]\,
      I3 => \RX_SBR_6_reg_n_0_[3]\,
      I4 => Receive_State(1),
      O => RX_BIT_6
    );
\RX_BIT_6_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => \RX_BIT_0[0]_i_1_n_0\,
      D => RX_BIT_6,
      Q => \RX_BIT_6_reg_n_0_[0]\,
      R => '0'
    );
\RX_BIT_7[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE00000"
    )
        port map (
      I0 => \RX_SBR_7_reg_n_0_[1]\,
      I1 => \RX_SBR_7_reg_n_0_[0]\,
      I2 => \RX_SBR_7_reg_n_0_[2]\,
      I3 => \RX_SBR_7_reg_n_0_[3]\,
      I4 => Receive_State(1),
      O => RX_BIT_7
    );
\RX_BIT_7_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => \RX_BIT_0[0]_i_1_n_0\,
      D => RX_BIT_7,
      Q => \RX_BIT_7_reg_n_0_[0]\,
      R => '0'
    );
\RX_MSG[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => Receive_State(1),
      I1 => Receive_State(0),
      I2 => Receive_State(2),
      O => RX_MSG_0
    );
\RX_MSG_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => RX_MSG_0,
      D => \RX_BIT_0_reg_n_0_[0]\,
      Q => RX_MSG(0),
      R => '0'
    );
\RX_MSG_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => RX_MSG_0,
      D => \RX_BIT_1_reg_n_0_[0]\,
      Q => RX_MSG(1),
      R => '0'
    );
\RX_MSG_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => RX_MSG_0,
      D => \RX_BIT_2_reg_n_0_[0]\,
      Q => RX_MSG(2),
      R => '0'
    );
\RX_MSG_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => RX_MSG_0,
      D => \RX_BIT_3_reg_n_0_[0]\,
      Q => RX_MSG(3),
      R => '0'
    );
\RX_MSG_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => RX_MSG_0,
      D => \RX_BIT_4_reg_n_0_[0]\,
      Q => RX_MSG(4),
      R => '0'
    );
\RX_MSG_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => RX_MSG_0,
      D => \RX_BIT_5_reg_n_0_[0]\,
      Q => RX_MSG(5),
      R => '0'
    );
\RX_MSG_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => RX_MSG_0,
      D => \RX_BIT_6_reg_n_0_[0]\,
      Q => RX_MSG(6),
      R => '0'
    );
\RX_MSG_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => RX_MSG_0,
      D => \RX_BIT_7_reg_n_0_[0]\,
      Q => RX_MSG(7),
      R => '0'
    );
\RX_SBR_0[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1020"
    )
        port map (
      I0 => \RX_SBR_0_reg_n_0_[0]\,
      I1 => Receive_State(2),
      I2 => Receive_State(1),
      I3 => Rx,
      O => RX_SBR_0(0)
    );
\RX_SBR_0[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04080C00"
    )
        port map (
      I0 => Rx,
      I1 => Receive_State(1),
      I2 => Receive_State(2),
      I3 => \RX_SBR_0_reg_n_0_[1]\,
      I4 => \RX_SBR_0_reg_n_0_[0]\,
      O => RX_SBR_0(1)
    );
\RX_SBR_0[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006AAA0000"
    )
        port map (
      I0 => \RX_SBR_0_reg_n_0_[2]\,
      I1 => \RX_SBR_0_reg_n_0_[0]\,
      I2 => \RX_SBR_0_reg_n_0_[1]\,
      I3 => Rx,
      I4 => Receive_State(1),
      I5 => Receive_State(2),
      O => RX_SBR_0(2)
    );
\RX_SBR_0[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0100"
    )
        port map (
      I0 => \Rx_RCV_Cnt_reg_n_0_[5]\,
      I1 => \Rx_RCV_Cnt_reg_n_0_[4]\,
      I2 => \Rx_RCV_Cnt_reg_n_0_[3]\,
      I3 => \RX_SBR_0[3]_i_3_n_0\,
      I4 => \RX_SBR_0[3]_i_4_n_0\,
      O => \RX_SBR_0[3]_i_1_n_0\
    );
\RX_SBR_0[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F008000FF000000"
    )
        port map (
      I0 => Rx,
      I1 => \RX_SBR_0_reg_n_0_[1]\,
      I2 => \RX_SBR_0_reg_n_0_[0]\,
      I3 => \RX_SBR_0[3]_i_5_n_0\,
      I4 => \RX_SBR_0_reg_n_0_[3]\,
      I5 => \RX_SBR_0_reg_n_0_[2]\,
      O => RX_SBR_0(3)
    );
\RX_SBR_0[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \Rx_RCV_Cnt_reg_n_0_[7]\,
      I1 => Receive_State(2),
      I2 => \Rx_RCV_Cnt_reg_n_0_[6]\,
      I3 => Receive_State(0),
      O => \RX_SBR_0[3]_i_3_n_0\
    );
\RX_SBR_0[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => Receive_State(1),
      I1 => Receive_State(0),
      I2 => Receive_State(2),
      O => \RX_SBR_0[3]_i_4_n_0\
    );
\RX_SBR_0[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Receive_State(1),
      I1 => Receive_State(2),
      O => \RX_SBR_0[3]_i_5_n_0\
    );
\RX_SBR_0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => \RX_SBR_0[3]_i_1_n_0\,
      D => RX_SBR_0(0),
      Q => \RX_SBR_0_reg_n_0_[0]\,
      R => '0'
    );
\RX_SBR_0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => \RX_SBR_0[3]_i_1_n_0\,
      D => RX_SBR_0(1),
      Q => \RX_SBR_0_reg_n_0_[1]\,
      R => '0'
    );
\RX_SBR_0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => \RX_SBR_0[3]_i_1_n_0\,
      D => RX_SBR_0(2),
      Q => \RX_SBR_0_reg_n_0_[2]\,
      R => '0'
    );
\RX_SBR_0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => \RX_SBR_0[3]_i_1_n_0\,
      D => RX_SBR_0(3),
      Q => \RX_SBR_0_reg_n_0_[3]\,
      R => '0'
    );
\RX_SBR_1[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1020"
    )
        port map (
      I0 => \RX_SBR_1_reg_n_0_[0]\,
      I1 => Receive_State(2),
      I2 => Receive_State(1),
      I3 => Rx,
      O => RX_SBR_1(0)
    );
\RX_SBR_1[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04080C00"
    )
        port map (
      I0 => Rx,
      I1 => Receive_State(1),
      I2 => Receive_State(2),
      I3 => \RX_SBR_1_reg_n_0_[1]\,
      I4 => \RX_SBR_1_reg_n_0_[0]\,
      O => RX_SBR_1(1)
    );
\RX_SBR_1[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006AAA0000"
    )
        port map (
      I0 => \RX_SBR_1_reg_n_0_[2]\,
      I1 => \RX_SBR_1_reg_n_0_[0]\,
      I2 => \RX_SBR_1_reg_n_0_[1]\,
      I3 => Rx,
      I4 => Receive_State(1),
      I5 => Receive_State(2),
      O => RX_SBR_1(2)
    );
\RX_SBR_1[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10101010101010FF"
    )
        port map (
      I0 => \Rx_RCV_Cnt_reg_n_0_[4]\,
      I1 => \Rx_RCV_Cnt_reg_n_0_[5]\,
      I2 => \RX_SBR_1[3]_i_3_n_0\,
      I3 => Receive_State(2),
      I4 => Receive_State(0),
      I5 => Receive_State(1),
      O => \RX_SBR_1[3]_i_1_n_0\
    );
\RX_SBR_1[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F008000FF000000"
    )
        port map (
      I0 => Rx,
      I1 => \RX_SBR_1_reg_n_0_[1]\,
      I2 => \RX_SBR_1_reg_n_0_[0]\,
      I3 => \RX_SBR_0[3]_i_5_n_0\,
      I4 => \RX_SBR_1_reg_n_0_[3]\,
      I5 => \RX_SBR_1_reg_n_0_[2]\,
      O => RX_SBR_1(3)
    );
\RX_SBR_1[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => Receive_State(0),
      I1 => \Rx_RCV_Cnt_reg_n_0_[6]\,
      I2 => Receive_State(2),
      I3 => \Rx_RCV_Cnt_reg_n_0_[7]\,
      I4 => \Rx_RCV_Cnt_reg_n_0_[3]\,
      O => \RX_SBR_1[3]_i_3_n_0\
    );
\RX_SBR_1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => \RX_SBR_1[3]_i_1_n_0\,
      D => RX_SBR_1(0),
      Q => \RX_SBR_1_reg_n_0_[0]\,
      R => '0'
    );
\RX_SBR_1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => \RX_SBR_1[3]_i_1_n_0\,
      D => RX_SBR_1(1),
      Q => \RX_SBR_1_reg_n_0_[1]\,
      R => '0'
    );
\RX_SBR_1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => \RX_SBR_1[3]_i_1_n_0\,
      D => RX_SBR_1(2),
      Q => \RX_SBR_1_reg_n_0_[2]\,
      R => '0'
    );
\RX_SBR_1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => \RX_SBR_1[3]_i_1_n_0\,
      D => RX_SBR_1(3),
      Q => \RX_SBR_1_reg_n_0_[3]\,
      R => '0'
    );
\RX_SBR_2[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1020"
    )
        port map (
      I0 => \RX_SBR_2_reg_n_0_[0]\,
      I1 => Receive_State(2),
      I2 => Receive_State(1),
      I3 => Rx,
      O => RX_SBR_2(0)
    );
\RX_SBR_2[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04080C00"
    )
        port map (
      I0 => Rx,
      I1 => Receive_State(1),
      I2 => Receive_State(2),
      I3 => \RX_SBR_2_reg_n_0_[1]\,
      I4 => \RX_SBR_2_reg_n_0_[0]\,
      O => RX_SBR_2(1)
    );
\RX_SBR_2[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006AAA0000"
    )
        port map (
      I0 => \RX_SBR_2_reg_n_0_[2]\,
      I1 => \RX_SBR_2_reg_n_0_[0]\,
      I2 => \RX_SBR_2_reg_n_0_[1]\,
      I3 => Rx,
      I4 => Receive_State(1),
      I5 => Receive_State(2),
      O => RX_SBR_2(2)
    );
\RX_SBR_2[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0020"
    )
        port map (
      I0 => \RX_SBR_0[3]_i_3_n_0\,
      I1 => \Rx_RCV_Cnt_reg_n_0_[5]\,
      I2 => \Rx_RCV_Cnt_reg_n_0_[4]\,
      I3 => \Rx_RCV_Cnt_reg_n_0_[3]\,
      I4 => \RX_SBR_0[3]_i_4_n_0\,
      O => \RX_SBR_2[3]_i_1_n_0\
    );
\RX_SBR_2[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F008000FF000000"
    )
        port map (
      I0 => Rx,
      I1 => \RX_SBR_2_reg_n_0_[1]\,
      I2 => \RX_SBR_2_reg_n_0_[0]\,
      I3 => \RX_SBR_0[3]_i_5_n_0\,
      I4 => \RX_SBR_2_reg_n_0_[3]\,
      I5 => \RX_SBR_2_reg_n_0_[2]\,
      O => RX_SBR_2(3)
    );
\RX_SBR_2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => \RX_SBR_2[3]_i_1_n_0\,
      D => RX_SBR_2(0),
      Q => \RX_SBR_2_reg_n_0_[0]\,
      R => '0'
    );
\RX_SBR_2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => \RX_SBR_2[3]_i_1_n_0\,
      D => RX_SBR_2(1),
      Q => \RX_SBR_2_reg_n_0_[1]\,
      R => '0'
    );
\RX_SBR_2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => \RX_SBR_2[3]_i_1_n_0\,
      D => RX_SBR_2(2),
      Q => \RX_SBR_2_reg_n_0_[2]\,
      R => '0'
    );
\RX_SBR_2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => \RX_SBR_2[3]_i_1_n_0\,
      D => RX_SBR_2(3),
      Q => \RX_SBR_2_reg_n_0_[3]\,
      R => '0'
    );
\RX_SBR_3[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1020"
    )
        port map (
      I0 => \RX_SBR_3_reg_n_0_[0]\,
      I1 => Receive_State(2),
      I2 => Receive_State(1),
      I3 => Rx,
      O => RX_SBR_3(0)
    );
\RX_SBR_3[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04080C00"
    )
        port map (
      I0 => Rx,
      I1 => Receive_State(1),
      I2 => Receive_State(2),
      I3 => \RX_SBR_3_reg_n_0_[1]\,
      I4 => \RX_SBR_3_reg_n_0_[0]\,
      O => RX_SBR_3(1)
    );
\RX_SBR_3[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006AAA0000"
    )
        port map (
      I0 => \RX_SBR_3_reg_n_0_[2]\,
      I1 => \RX_SBR_3_reg_n_0_[0]\,
      I2 => \RX_SBR_3_reg_n_0_[1]\,
      I3 => Rx,
      I4 => Receive_State(1),
      I5 => Receive_State(2),
      O => RX_SBR_3(2)
    );
\RX_SBR_3[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08080808080808FF"
    )
        port map (
      I0 => \RX_SBR_1[3]_i_3_n_0\,
      I1 => \Rx_RCV_Cnt_reg_n_0_[4]\,
      I2 => \Rx_RCV_Cnt_reg_n_0_[5]\,
      I3 => Receive_State(2),
      I4 => Receive_State(0),
      I5 => Receive_State(1),
      O => \RX_SBR_3[3]_i_1_n_0\
    );
\RX_SBR_3[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F008000FF000000"
    )
        port map (
      I0 => Rx,
      I1 => \RX_SBR_3_reg_n_0_[1]\,
      I2 => \RX_SBR_3_reg_n_0_[0]\,
      I3 => \RX_SBR_0[3]_i_5_n_0\,
      I4 => \RX_SBR_3_reg_n_0_[3]\,
      I5 => \RX_SBR_3_reg_n_0_[2]\,
      O => RX_SBR_3(3)
    );
\RX_SBR_3_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => \RX_SBR_3[3]_i_1_n_0\,
      D => RX_SBR_3(0),
      Q => \RX_SBR_3_reg_n_0_[0]\,
      R => '0'
    );
\RX_SBR_3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => \RX_SBR_3[3]_i_1_n_0\,
      D => RX_SBR_3(1),
      Q => \RX_SBR_3_reg_n_0_[1]\,
      R => '0'
    );
\RX_SBR_3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => \RX_SBR_3[3]_i_1_n_0\,
      D => RX_SBR_3(2),
      Q => \RX_SBR_3_reg_n_0_[2]\,
      R => '0'
    );
\RX_SBR_3_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => \RX_SBR_3[3]_i_1_n_0\,
      D => RX_SBR_3(3),
      Q => \RX_SBR_3_reg_n_0_[3]\,
      R => '0'
    );
\RX_SBR_4[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1020"
    )
        port map (
      I0 => \RX_SBR_4_reg_n_0_[0]\,
      I1 => Receive_State(2),
      I2 => Receive_State(1),
      I3 => Rx,
      O => RX_SBR_4(0)
    );
\RX_SBR_4[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04080C00"
    )
        port map (
      I0 => Rx,
      I1 => Receive_State(1),
      I2 => Receive_State(2),
      I3 => \RX_SBR_4_reg_n_0_[1]\,
      I4 => \RX_SBR_4_reg_n_0_[0]\,
      O => RX_SBR_4(1)
    );
\RX_SBR_4[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006AAA0000"
    )
        port map (
      I0 => \RX_SBR_4_reg_n_0_[2]\,
      I1 => \RX_SBR_4_reg_n_0_[0]\,
      I2 => \RX_SBR_4_reg_n_0_[1]\,
      I3 => Rx,
      I4 => Receive_State(1),
      I5 => Receive_State(2),
      O => RX_SBR_4(2)
    );
\RX_SBR_4[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0020"
    )
        port map (
      I0 => \RX_SBR_0[3]_i_3_n_0\,
      I1 => \Rx_RCV_Cnt_reg_n_0_[4]\,
      I2 => \Rx_RCV_Cnt_reg_n_0_[5]\,
      I3 => \Rx_RCV_Cnt_reg_n_0_[3]\,
      I4 => \RX_SBR_0[3]_i_4_n_0\,
      O => \RX_SBR_4[3]_i_1_n_0\
    );
\RX_SBR_4[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F008000FF000000"
    )
        port map (
      I0 => Rx,
      I1 => \RX_SBR_4_reg_n_0_[1]\,
      I2 => \RX_SBR_4_reg_n_0_[0]\,
      I3 => \RX_SBR_0[3]_i_5_n_0\,
      I4 => \RX_SBR_4_reg_n_0_[3]\,
      I5 => \RX_SBR_4_reg_n_0_[2]\,
      O => RX_SBR_4(3)
    );
\RX_SBR_4_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => \RX_SBR_4[3]_i_1_n_0\,
      D => RX_SBR_4(0),
      Q => \RX_SBR_4_reg_n_0_[0]\,
      R => '0'
    );
\RX_SBR_4_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => \RX_SBR_4[3]_i_1_n_0\,
      D => RX_SBR_4(1),
      Q => \RX_SBR_4_reg_n_0_[1]\,
      R => '0'
    );
\RX_SBR_4_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => \RX_SBR_4[3]_i_1_n_0\,
      D => RX_SBR_4(2),
      Q => \RX_SBR_4_reg_n_0_[2]\,
      R => '0'
    );
\RX_SBR_4_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => \RX_SBR_4[3]_i_1_n_0\,
      D => RX_SBR_4(3),
      Q => \RX_SBR_4_reg_n_0_[3]\,
      R => '0'
    );
\RX_SBR_5[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1020"
    )
        port map (
      I0 => \RX_SBR_5_reg_n_0_[0]\,
      I1 => Receive_State(2),
      I2 => Receive_State(1),
      I3 => Rx,
      O => RX_SBR_5(0)
    );
\RX_SBR_5[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04080C00"
    )
        port map (
      I0 => Rx,
      I1 => Receive_State(1),
      I2 => Receive_State(2),
      I3 => \RX_SBR_5_reg_n_0_[1]\,
      I4 => \RX_SBR_5_reg_n_0_[0]\,
      O => RX_SBR_5(1)
    );
\RX_SBR_5[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006AAA0000"
    )
        port map (
      I0 => \RX_SBR_5_reg_n_0_[2]\,
      I1 => \RX_SBR_5_reg_n_0_[0]\,
      I2 => \RX_SBR_5_reg_n_0_[1]\,
      I3 => Rx,
      I4 => Receive_State(1),
      I5 => Receive_State(2),
      O => RX_SBR_5(2)
    );
\RX_SBR_5[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08080808080808FF"
    )
        port map (
      I0 => \RX_SBR_1[3]_i_3_n_0\,
      I1 => \Rx_RCV_Cnt_reg_n_0_[5]\,
      I2 => \Rx_RCV_Cnt_reg_n_0_[4]\,
      I3 => Receive_State(2),
      I4 => Receive_State(0),
      I5 => Receive_State(1),
      O => \RX_SBR_5[3]_i_1_n_0\
    );
\RX_SBR_5[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F008000FF000000"
    )
        port map (
      I0 => Rx,
      I1 => \RX_SBR_5_reg_n_0_[1]\,
      I2 => \RX_SBR_5_reg_n_0_[0]\,
      I3 => \RX_SBR_0[3]_i_5_n_0\,
      I4 => \RX_SBR_5_reg_n_0_[3]\,
      I5 => \RX_SBR_5_reg_n_0_[2]\,
      O => RX_SBR_5(3)
    );
\RX_SBR_5_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => \RX_SBR_5[3]_i_1_n_0\,
      D => RX_SBR_5(0),
      Q => \RX_SBR_5_reg_n_0_[0]\,
      R => '0'
    );
\RX_SBR_5_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => \RX_SBR_5[3]_i_1_n_0\,
      D => RX_SBR_5(1),
      Q => \RX_SBR_5_reg_n_0_[1]\,
      R => '0'
    );
\RX_SBR_5_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => \RX_SBR_5[3]_i_1_n_0\,
      D => RX_SBR_5(2),
      Q => \RX_SBR_5_reg_n_0_[2]\,
      R => '0'
    );
\RX_SBR_5_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => \RX_SBR_5[3]_i_1_n_0\,
      D => RX_SBR_5(3),
      Q => \RX_SBR_5_reg_n_0_[3]\,
      R => '0'
    );
\RX_SBR_6[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1020"
    )
        port map (
      I0 => \RX_SBR_6_reg_n_0_[0]\,
      I1 => Receive_State(2),
      I2 => Receive_State(1),
      I3 => Rx,
      O => RX_SBR_6(0)
    );
\RX_SBR_6[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04080C00"
    )
        port map (
      I0 => Rx,
      I1 => Receive_State(1),
      I2 => Receive_State(2),
      I3 => \RX_SBR_6_reg_n_0_[1]\,
      I4 => \RX_SBR_6_reg_n_0_[0]\,
      O => RX_SBR_6(1)
    );
\RX_SBR_6[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006AAA0000"
    )
        port map (
      I0 => \RX_SBR_6_reg_n_0_[2]\,
      I1 => \RX_SBR_6_reg_n_0_[0]\,
      I2 => \RX_SBR_6_reg_n_0_[1]\,
      I3 => Rx,
      I4 => Receive_State(1),
      I5 => Receive_State(2),
      O => RX_SBR_6(2)
    );
\RX_SBR_6[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0080"
    )
        port map (
      I0 => \RX_SBR_0[3]_i_3_n_0\,
      I1 => \Rx_RCV_Cnt_reg_n_0_[5]\,
      I2 => \Rx_RCV_Cnt_reg_n_0_[4]\,
      I3 => \Rx_RCV_Cnt_reg_n_0_[3]\,
      I4 => \RX_SBR_0[3]_i_4_n_0\,
      O => \RX_SBR_6[3]_i_1_n_0\
    );
\RX_SBR_6[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F008000FF000000"
    )
        port map (
      I0 => Rx,
      I1 => \RX_SBR_6_reg_n_0_[1]\,
      I2 => \RX_SBR_6_reg_n_0_[0]\,
      I3 => \RX_SBR_0[3]_i_5_n_0\,
      I4 => \RX_SBR_6_reg_n_0_[3]\,
      I5 => \RX_SBR_6_reg_n_0_[2]\,
      O => RX_SBR_6(3)
    );
\RX_SBR_6_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => \RX_SBR_6[3]_i_1_n_0\,
      D => RX_SBR_6(0),
      Q => \RX_SBR_6_reg_n_0_[0]\,
      R => '0'
    );
\RX_SBR_6_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => \RX_SBR_6[3]_i_1_n_0\,
      D => RX_SBR_6(1),
      Q => \RX_SBR_6_reg_n_0_[1]\,
      R => '0'
    );
\RX_SBR_6_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => \RX_SBR_6[3]_i_1_n_0\,
      D => RX_SBR_6(2),
      Q => \RX_SBR_6_reg_n_0_[2]\,
      R => '0'
    );
\RX_SBR_6_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => \RX_SBR_6[3]_i_1_n_0\,
      D => RX_SBR_6(3),
      Q => \RX_SBR_6_reg_n_0_[3]\,
      R => '0'
    );
\RX_SBR_7[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1020"
    )
        port map (
      I0 => \RX_SBR_7_reg_n_0_[0]\,
      I1 => Receive_State(2),
      I2 => Receive_State(1),
      I3 => Rx,
      O => RX_SBR_7(0)
    );
\RX_SBR_7[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04080C00"
    )
        port map (
      I0 => Rx,
      I1 => Receive_State(1),
      I2 => Receive_State(2),
      I3 => \RX_SBR_7_reg_n_0_[1]\,
      I4 => \RX_SBR_7_reg_n_0_[0]\,
      O => RX_SBR_7(1)
    );
\RX_SBR_7[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006AAA0000"
    )
        port map (
      I0 => \RX_SBR_7_reg_n_0_[2]\,
      I1 => \RX_SBR_7_reg_n_0_[0]\,
      I2 => \RX_SBR_7_reg_n_0_[1]\,
      I3 => Rx,
      I4 => Receive_State(1),
      I5 => Receive_State(2),
      O => RX_SBR_7(2)
    );
\RX_SBR_7[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80808080808080FF"
    )
        port map (
      I0 => \RX_SBR_1[3]_i_3_n_0\,
      I1 => \Rx_RCV_Cnt_reg_n_0_[4]\,
      I2 => \Rx_RCV_Cnt_reg_n_0_[5]\,
      I3 => Receive_State(2),
      I4 => Receive_State(0),
      I5 => Receive_State(1),
      O => \RX_SBR_7[3]_i_1_n_0\
    );
\RX_SBR_7[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F008000FF000000"
    )
        port map (
      I0 => Rx,
      I1 => \RX_SBR_7_reg_n_0_[1]\,
      I2 => \RX_SBR_7_reg_n_0_[0]\,
      I3 => \RX_SBR_0[3]_i_5_n_0\,
      I4 => \RX_SBR_7_reg_n_0_[3]\,
      I5 => \RX_SBR_7_reg_n_0_[2]\,
      O => RX_SBR_7(3)
    );
\RX_SBR_7_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => \RX_SBR_7[3]_i_1_n_0\,
      D => RX_SBR_7(0),
      Q => \RX_SBR_7_reg_n_0_[0]\,
      R => '0'
    );
\RX_SBR_7_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => \RX_SBR_7[3]_i_1_n_0\,
      D => RX_SBR_7(1),
      Q => \RX_SBR_7_reg_n_0_[1]\,
      R => '0'
    );
\RX_SBR_7_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => \RX_SBR_7[3]_i_1_n_0\,
      D => RX_SBR_7(2),
      Q => \RX_SBR_7_reg_n_0_[2]\,
      R => '0'
    );
\RX_SBR_7_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => \RX_SBR_7[3]_i_1_n_0\,
      D => RX_SBR_7(3),
      Q => \RX_SBR_7_reg_n_0_[3]\,
      R => '0'
    );
\Rx_RCV_Cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \Rx_RCV_Cnt[1]_i_2_n_0\,
      I1 => \Rx_RCV_Cnt_reg_n_0_[0]\,
      O => Rx_RCV_Cnt(0)
    );
\Rx_RCV_Cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \Rx_RCV_Cnt[1]_i_2_n_0\,
      I1 => \Rx_RCV_Cnt_reg_n_0_[0]\,
      I2 => \Rx_RCV_Cnt_reg_n_0_[1]\,
      O => Rx_RCV_Cnt(1)
    );
\Rx_RCV_Cnt[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF2020"
    )
        port map (
      I0 => Receive_State(0),
      I1 => Rx,
      I2 => \Rx_RCV_Cnt[1]_i_3_n_0\,
      I3 => Receive_State(2),
      I4 => Receive_State(1),
      O => \Rx_RCV_Cnt[1]_i_2_n_0\
    );
\Rx_RCV_Cnt[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \Rx_RCV_Cnt_reg_n_0_[4]\,
      I1 => \Rx_RCV_Cnt_reg_n_0_[5]\,
      I2 => \Rx_RCV_Cnt_reg_n_0_[2]\,
      I3 => \Rx_RCV_Cnt_reg_n_0_[3]\,
      I4 => \Rx_RCV_Cnt_reg_n_0_[7]\,
      I5 => \Rx_RCV_Cnt_reg_n_0_[6]\,
      O => \Rx_RCV_Cnt[1]_i_3_n_0\
    );
\Rx_RCV_Cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8884888"
    )
        port map (
      I0 => \Rx_RCV_Cnt_reg_n_0_[2]\,
      I1 => Receive_State(1),
      I2 => \Rx_RCV_Cnt_reg_n_0_[0]\,
      I3 => \Rx_RCV_Cnt_reg_n_0_[1]\,
      I4 => \Rx_RCV_Cnt[2]_i_2_n_0\,
      O => Rx_RCV_Cnt(2)
    );
\Rx_RCV_Cnt[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \Rx_RCV_Cnt_reg_n_0_[6]\,
      I1 => \Rx_RCV_Cnt_reg_n_0_[7]\,
      I2 => Receive_State(1),
      I3 => Receive_State(0),
      I4 => Rx,
      I5 => \FSM_sequential_Receive_State[2]_i_3_n_0\,
      O => \Rx_RCV_Cnt[2]_i_2_n_0\
    );
\Rx_RCV_Cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F008000"
    )
        port map (
      I0 => \Rx_RCV_Cnt_reg_n_0_[1]\,
      I1 => \Rx_RCV_Cnt_reg_n_0_[0]\,
      I2 => \Rx_RCV_Cnt_reg_n_0_[2]\,
      I3 => Receive_State(1),
      I4 => \Rx_RCV_Cnt_reg_n_0_[3]\,
      O => Rx_RCV_Cnt(3)
    );
\Rx_RCV_Cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF000080000000"
    )
        port map (
      I0 => \Rx_RCV_Cnt_reg_n_0_[2]\,
      I1 => \Rx_RCV_Cnt_reg_n_0_[0]\,
      I2 => \Rx_RCV_Cnt_reg_n_0_[1]\,
      I3 => \Rx_RCV_Cnt_reg_n_0_[3]\,
      I4 => \RX_SBR_0[3]_i_5_n_0\,
      I5 => \Rx_RCV_Cnt_reg_n_0_[4]\,
      O => Rx_RCV_Cnt(4)
    );
\Rx_RCV_Cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFF000020000000"
    )
        port map (
      I0 => \Rx_RCV_Cnt_reg_n_0_[3]\,
      I1 => \Rx_RCV_Cnt[5]_i_2_n_0\,
      I2 => \Rx_RCV_Cnt_reg_n_0_[2]\,
      I3 => \Rx_RCV_Cnt_reg_n_0_[4]\,
      I4 => \RX_SBR_0[3]_i_5_n_0\,
      I5 => \Rx_RCV_Cnt_reg_n_0_[5]\,
      O => Rx_RCV_Cnt(5)
    );
\Rx_RCV_Cnt[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \Rx_RCV_Cnt_reg_n_0_[0]\,
      I1 => \Rx_RCV_Cnt_reg_n_0_[1]\,
      O => \Rx_RCV_Cnt[5]_i_2_n_0\
    );
\Rx_RCV_Cnt[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"84"
    )
        port map (
      I0 => \Rx_RCV_Cnt[7]_i_3_n_0\,
      I1 => Receive_State(1),
      I2 => \Rx_RCV_Cnt_reg_n_0_[6]\,
      O => Rx_RCV_Cnt(6)
    );
\Rx_RCV_Cnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"13"
    )
        port map (
      I0 => Receive_State(0),
      I1 => Receive_State(2),
      I2 => Receive_State(1),
      O => \Rx_RCV_Cnt[7]_i_1_n_0\
    );
\Rx_RCV_Cnt[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B040"
    )
        port map (
      I0 => \Rx_RCV_Cnt[7]_i_3_n_0\,
      I1 => \Rx_RCV_Cnt_reg_n_0_[6]\,
      I2 => Receive_State(1),
      I3 => \Rx_RCV_Cnt_reg_n_0_[7]\,
      O => Rx_RCV_Cnt(7)
    );
\Rx_RCV_Cnt[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \Rx_RCV_Cnt_reg_n_0_[4]\,
      I1 => \Rx_RCV_Cnt_reg_n_0_[2]\,
      I2 => \Rx_RCV_Cnt_reg_n_0_[0]\,
      I3 => \Rx_RCV_Cnt_reg_n_0_[1]\,
      I4 => \Rx_RCV_Cnt_reg_n_0_[3]\,
      I5 => \Rx_RCV_Cnt_reg_n_0_[5]\,
      O => \Rx_RCV_Cnt[7]_i_3_n_0\
    );
\Rx_RCV_Cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => \Rx_RCV_Cnt[7]_i_1_n_0\,
      D => Rx_RCV_Cnt(0),
      Q => \Rx_RCV_Cnt_reg_n_0_[0]\,
      R => '0'
    );
\Rx_RCV_Cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => \Rx_RCV_Cnt[7]_i_1_n_0\,
      D => Rx_RCV_Cnt(1),
      Q => \Rx_RCV_Cnt_reg_n_0_[1]\,
      R => '0'
    );
\Rx_RCV_Cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => \Rx_RCV_Cnt[7]_i_1_n_0\,
      D => Rx_RCV_Cnt(2),
      Q => \Rx_RCV_Cnt_reg_n_0_[2]\,
      R => '0'
    );
\Rx_RCV_Cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => \Rx_RCV_Cnt[7]_i_1_n_0\,
      D => Rx_RCV_Cnt(3),
      Q => \Rx_RCV_Cnt_reg_n_0_[3]\,
      R => '0'
    );
\Rx_RCV_Cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => \Rx_RCV_Cnt[7]_i_1_n_0\,
      D => Rx_RCV_Cnt(4),
      Q => \Rx_RCV_Cnt_reg_n_0_[4]\,
      R => '0'
    );
\Rx_RCV_Cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => \Rx_RCV_Cnt[7]_i_1_n_0\,
      D => Rx_RCV_Cnt(5),
      Q => \Rx_RCV_Cnt_reg_n_0_[5]\,
      R => '0'
    );
\Rx_RCV_Cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => \Rx_RCV_Cnt[7]_i_1_n_0\,
      D => Rx_RCV_Cnt(6),
      Q => \Rx_RCV_Cnt_reg_n_0_[6]\,
      R => '0'
    );
\Rx_RCV_Cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_8_d_reg_0\,
      CE => \Rx_RCV_Cnt[7]_i_1_n_0\,
      D => Rx_RCV_Cnt(7),
      Q => \Rx_RCV_Cnt_reg_n_0_[7]\,
      R => '0'
    );
\Tx_FIFO_State[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0003FFFF00010000"
    )
        port map (
      I0 => empty,
      I1 => \Tx_FIFO_State_reg_n_0_[1]\,
      I2 => \Tx_FIFO_State_reg_n_0_[2]\,
      I3 => \Transmit_State__0\(2),
      I4 => Tx_FIFO_State,
      I5 => \Tx_FIFO_State_reg_n_0_[0]\,
      O => \Tx_FIFO_State[0]_i_1_n_0\
    );
\Tx_FIFO_State[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1F1F1F1F1F101F1F"
    )
        port map (
      I0 => \Transmit_State__0\(1),
      I1 => \Transmit_State__0\(0),
      I2 => \Transmit_State__0\(2),
      I3 => \Tx_FIFO_State_reg_n_0_[0]\,
      I4 => \Tx_FIFO_State_reg_n_0_[2]\,
      I5 => \Tx_FIFO_State_reg_n_0_[1]\,
      O => Tx_FIFO_State
    );
\Tx_FIFO_State[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0E0EFE000000F00"
    )
        port map (
      I0 => \Transmit_State__0\(1),
      I1 => \Transmit_State__0\(0),
      I2 => \Transmit_State__0\(2),
      I3 => \Tx_FIFO_State_reg_n_0_[0]\,
      I4 => \Tx_FIFO_State_reg_n_0_[2]\,
      I5 => \Tx_FIFO_State_reg_n_0_[1]\,
      O => \Tx_FIFO_State[1]_i_1_n_0\
    );
\Tx_FIFO_State[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0E0000FE0EF0000"
    )
        port map (
      I0 => \Transmit_State__0\(1),
      I1 => \Transmit_State__0\(0),
      I2 => \Transmit_State__0\(2),
      I3 => \Tx_FIFO_State_reg_n_0_[0]\,
      I4 => \Tx_FIFO_State_reg_n_0_[2]\,
      I5 => \Tx_FIFO_State_reg_n_0_[1]\,
      O => \Tx_FIFO_State[2]_i_1_n_0\
    );
\Tx_FIFO_State_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_d_reg_0\,
      CE => '1',
      D => \Tx_FIFO_State[0]_i_1_n_0\,
      Q => \Tx_FIFO_State_reg_n_0_[0]\,
      R => '0'
    );
\Tx_FIFO_State_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_d_reg_0\,
      CE => '1',
      D => \Tx_FIFO_State[1]_i_1_n_0\,
      Q => \Tx_FIFO_State_reg_n_0_[1]\,
      R => '0'
    );
\Tx_FIFO_State_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_d_reg_0\,
      CE => '1',
      D => \Tx_FIFO_State[2]_i_1_n_0\,
      Q => \Tx_FIFO_State_reg_n_0_[2]\,
      R => '0'
    );
\Tx_Word_1[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \Tx_FIFO_State_reg_n_0_[1]\,
      I1 => \Tx_FIFO_State_reg_n_0_[0]\,
      I2 => \Tx_FIFO_State_reg_n_0_[2]\,
      O => \Tx_Word_1[7]_i_1_n_0\
    );
\Tx_Word_1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk9600_d_reg_0\,
      CE => \Tx_Word_1[7]_i_1_n_0\,
      D => D(0),
      Q => Tx_Word_1(0),
      R => '0'
    );
\Tx_Word_1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk9600_d_reg_0\,
      CE => \Tx_Word_1[7]_i_1_n_0\,
      D => D(1),
      Q => Tx_Word_1(1),
      R => '0'
    );
\Tx_Word_1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk9600_d_reg_0\,
      CE => \Tx_Word_1[7]_i_1_n_0\,
      D => D(2),
      Q => Tx_Word_1(2),
      R => '0'
    );
\Tx_Word_1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk9600_d_reg_0\,
      CE => \Tx_Word_1[7]_i_1_n_0\,
      D => D(3),
      Q => Tx_Word_1(3),
      R => '0'
    );
\Tx_Word_1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk9600_d_reg_0\,
      CE => \Tx_Word_1[7]_i_1_n_0\,
      D => D(4),
      Q => Tx_Word_1(4),
      R => '0'
    );
\Tx_Word_1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk9600_d_reg_0\,
      CE => \Tx_Word_1[7]_i_1_n_0\,
      D => D(5),
      Q => Tx_Word_1(5),
      R => '0'
    );
\Tx_Word_1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk9600_d_reg_0\,
      CE => \Tx_Word_1[7]_i_1_n_0\,
      D => D(6),
      Q => Tx_Word_1(6),
      R => '0'
    );
\Tx_Word_1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk9600_d_reg_0\,
      CE => \Tx_Word_1[7]_i_1_n_0\,
      D => D(7),
      Q => Tx_Word_1(7),
      R => '0'
    );
Tx_Word_Cnt0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => Tx_Word_Cnt0_carry_n_0,
      CO(2) => Tx_Word_Cnt0_carry_n_1,
      CO(1) => Tx_Word_Cnt0_carry_n_2,
      CO(0) => Tx_Word_Cnt0_carry_n_3,
      CYINIT => \Tx_Word_Cnt_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in4(4 downto 1),
      S(3) => \Tx_Word_Cnt_reg_n_0_[4]\,
      S(2) => \Tx_Word_Cnt_reg_n_0_[3]\,
      S(1) => \Tx_Word_Cnt_reg_n_0_[2]\,
      S(0) => \Tx_Word_Cnt_reg_n_0_[1]\
    );
\Tx_Word_Cnt0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => Tx_Word_Cnt0_carry_n_0,
      CO(3) => \Tx_Word_Cnt0_carry__0_n_0\,
      CO(2) => \Tx_Word_Cnt0_carry__0_n_1\,
      CO(1) => \Tx_Word_Cnt0_carry__0_n_2\,
      CO(0) => \Tx_Word_Cnt0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in4(8 downto 5),
      S(3) => \Tx_Word_Cnt_reg_n_0_[8]\,
      S(2) => \Tx_Word_Cnt_reg_n_0_[7]\,
      S(1) => \Tx_Word_Cnt_reg_n_0_[6]\,
      S(0) => \Tx_Word_Cnt_reg_n_0_[5]\
    );
\Tx_Word_Cnt0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Tx_Word_Cnt0_carry__0_n_0\,
      CO(3) => \Tx_Word_Cnt0_carry__1_n_0\,
      CO(2) => \Tx_Word_Cnt0_carry__1_n_1\,
      CO(1) => \Tx_Word_Cnt0_carry__1_n_2\,
      CO(0) => \Tx_Word_Cnt0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in4(12 downto 9),
      S(3) => \Tx_Word_Cnt_reg_n_0_[12]\,
      S(2) => \Tx_Word_Cnt_reg_n_0_[11]\,
      S(1) => \Tx_Word_Cnt_reg_n_0_[10]\,
      S(0) => \Tx_Word_Cnt_reg_n_0_[9]\
    );
\Tx_Word_Cnt0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Tx_Word_Cnt0_carry__1_n_0\,
      CO(3) => \Tx_Word_Cnt0_carry__2_n_0\,
      CO(2) => \Tx_Word_Cnt0_carry__2_n_1\,
      CO(1) => \Tx_Word_Cnt0_carry__2_n_2\,
      CO(0) => \Tx_Word_Cnt0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in4(16 downto 13),
      S(3) => \Tx_Word_Cnt_reg_n_0_[16]\,
      S(2) => \Tx_Word_Cnt_reg_n_0_[15]\,
      S(1) => \Tx_Word_Cnt_reg_n_0_[14]\,
      S(0) => \Tx_Word_Cnt_reg_n_0_[13]\
    );
\Tx_Word_Cnt0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \Tx_Word_Cnt0_carry__2_n_0\,
      CO(3) => \Tx_Word_Cnt0_carry__3_n_0\,
      CO(2) => \Tx_Word_Cnt0_carry__3_n_1\,
      CO(1) => \Tx_Word_Cnt0_carry__3_n_2\,
      CO(0) => \Tx_Word_Cnt0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in4(20 downto 17),
      S(3) => \Tx_Word_Cnt_reg_n_0_[20]\,
      S(2) => \Tx_Word_Cnt_reg_n_0_[19]\,
      S(1) => \Tx_Word_Cnt_reg_n_0_[18]\,
      S(0) => \Tx_Word_Cnt_reg_n_0_[17]\
    );
\Tx_Word_Cnt0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \Tx_Word_Cnt0_carry__3_n_0\,
      CO(3) => \Tx_Word_Cnt0_carry__4_n_0\,
      CO(2) => \Tx_Word_Cnt0_carry__4_n_1\,
      CO(1) => \Tx_Word_Cnt0_carry__4_n_2\,
      CO(0) => \Tx_Word_Cnt0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in4(24 downto 21),
      S(3) => \Tx_Word_Cnt_reg_n_0_[24]\,
      S(2) => \Tx_Word_Cnt_reg_n_0_[23]\,
      S(1) => \Tx_Word_Cnt_reg_n_0_[22]\,
      S(0) => \Tx_Word_Cnt_reg_n_0_[21]\
    );
\Tx_Word_Cnt0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \Tx_Word_Cnt0_carry__4_n_0\,
      CO(3) => \Tx_Word_Cnt0_carry__5_n_0\,
      CO(2) => \Tx_Word_Cnt0_carry__5_n_1\,
      CO(1) => \Tx_Word_Cnt0_carry__5_n_2\,
      CO(0) => \Tx_Word_Cnt0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in4(28 downto 25),
      S(3) => \Tx_Word_Cnt_reg_n_0_[28]\,
      S(2) => \Tx_Word_Cnt_reg_n_0_[27]\,
      S(1) => \Tx_Word_Cnt_reg_n_0_[26]\,
      S(0) => \Tx_Word_Cnt_reg_n_0_[25]\
    );
\Tx_Word_Cnt0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \Tx_Word_Cnt0_carry__5_n_0\,
      CO(3 downto 1) => \NLW_Tx_Word_Cnt0_carry__6_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \Tx_Word_Cnt0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_Tx_Word_Cnt0_carry__6_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => in4(30 downto 29),
      S(3 downto 2) => B"00",
      S(1) => \Tx_Word_Cnt_reg_n_0_[30]\,
      S(0) => \Tx_Word_Cnt_reg_n_0_[29]\
    );
\Tx_Word_Cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Tx_Word_Cnt_reg_n_0_[0]\,
      O => in4(0)
    );
\Tx_Word_Cnt[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \Transmit_State__0\(0),
      I1 => \FSM_sequential_Transmit_State[2]_i_2_n_0\,
      I2 => \Transmit_State__0\(1),
      I3 => \Transmit_State__0\(2),
      O => \Tx_Word_Cnt[30]_i_1_n_0\
    );
\Tx_Word_Cnt[30]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \Transmit_State__0\(2),
      I1 => \Transmit_State__0\(1),
      I2 => \FSM_sequential_Transmit_State[2]_i_2_n_0\,
      O => Tx_Word_Cnt
    );
\Tx_Word_Cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_d_reg_0\,
      CE => Tx_Word_Cnt,
      D => in4(0),
      Q => \Tx_Word_Cnt_reg_n_0_[0]\,
      R => \Tx_Word_Cnt[30]_i_1_n_0\
    );
\Tx_Word_Cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_d_reg_0\,
      CE => Tx_Word_Cnt,
      D => in4(10),
      Q => \Tx_Word_Cnt_reg_n_0_[10]\,
      R => \Tx_Word_Cnt[30]_i_1_n_0\
    );
\Tx_Word_Cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_d_reg_0\,
      CE => Tx_Word_Cnt,
      D => in4(11),
      Q => \Tx_Word_Cnt_reg_n_0_[11]\,
      R => \Tx_Word_Cnt[30]_i_1_n_0\
    );
\Tx_Word_Cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_d_reg_0\,
      CE => Tx_Word_Cnt,
      D => in4(12),
      Q => \Tx_Word_Cnt_reg_n_0_[12]\,
      R => \Tx_Word_Cnt[30]_i_1_n_0\
    );
\Tx_Word_Cnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_d_reg_0\,
      CE => Tx_Word_Cnt,
      D => in4(13),
      Q => \Tx_Word_Cnt_reg_n_0_[13]\,
      R => \Tx_Word_Cnt[30]_i_1_n_0\
    );
\Tx_Word_Cnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_d_reg_0\,
      CE => Tx_Word_Cnt,
      D => in4(14),
      Q => \Tx_Word_Cnt_reg_n_0_[14]\,
      R => \Tx_Word_Cnt[30]_i_1_n_0\
    );
\Tx_Word_Cnt_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_d_reg_0\,
      CE => Tx_Word_Cnt,
      D => in4(15),
      Q => \Tx_Word_Cnt_reg_n_0_[15]\,
      R => \Tx_Word_Cnt[30]_i_1_n_0\
    );
\Tx_Word_Cnt_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_d_reg_0\,
      CE => Tx_Word_Cnt,
      D => in4(16),
      Q => \Tx_Word_Cnt_reg_n_0_[16]\,
      R => \Tx_Word_Cnt[30]_i_1_n_0\
    );
\Tx_Word_Cnt_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_d_reg_0\,
      CE => Tx_Word_Cnt,
      D => in4(17),
      Q => \Tx_Word_Cnt_reg_n_0_[17]\,
      R => \Tx_Word_Cnt[30]_i_1_n_0\
    );
\Tx_Word_Cnt_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_d_reg_0\,
      CE => Tx_Word_Cnt,
      D => in4(18),
      Q => \Tx_Word_Cnt_reg_n_0_[18]\,
      R => \Tx_Word_Cnt[30]_i_1_n_0\
    );
\Tx_Word_Cnt_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_d_reg_0\,
      CE => Tx_Word_Cnt,
      D => in4(19),
      Q => \Tx_Word_Cnt_reg_n_0_[19]\,
      R => \Tx_Word_Cnt[30]_i_1_n_0\
    );
\Tx_Word_Cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_d_reg_0\,
      CE => Tx_Word_Cnt,
      D => in4(1),
      Q => \Tx_Word_Cnt_reg_n_0_[1]\,
      R => \Tx_Word_Cnt[30]_i_1_n_0\
    );
\Tx_Word_Cnt_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_d_reg_0\,
      CE => Tx_Word_Cnt,
      D => in4(20),
      Q => \Tx_Word_Cnt_reg_n_0_[20]\,
      R => \Tx_Word_Cnt[30]_i_1_n_0\
    );
\Tx_Word_Cnt_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_d_reg_0\,
      CE => Tx_Word_Cnt,
      D => in4(21),
      Q => \Tx_Word_Cnt_reg_n_0_[21]\,
      R => \Tx_Word_Cnt[30]_i_1_n_0\
    );
\Tx_Word_Cnt_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_d_reg_0\,
      CE => Tx_Word_Cnt,
      D => in4(22),
      Q => \Tx_Word_Cnt_reg_n_0_[22]\,
      R => \Tx_Word_Cnt[30]_i_1_n_0\
    );
\Tx_Word_Cnt_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_d_reg_0\,
      CE => Tx_Word_Cnt,
      D => in4(23),
      Q => \Tx_Word_Cnt_reg_n_0_[23]\,
      R => \Tx_Word_Cnt[30]_i_1_n_0\
    );
\Tx_Word_Cnt_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_d_reg_0\,
      CE => Tx_Word_Cnt,
      D => in4(24),
      Q => \Tx_Word_Cnt_reg_n_0_[24]\,
      R => \Tx_Word_Cnt[30]_i_1_n_0\
    );
\Tx_Word_Cnt_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_d_reg_0\,
      CE => Tx_Word_Cnt,
      D => in4(25),
      Q => \Tx_Word_Cnt_reg_n_0_[25]\,
      R => \Tx_Word_Cnt[30]_i_1_n_0\
    );
\Tx_Word_Cnt_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_d_reg_0\,
      CE => Tx_Word_Cnt,
      D => in4(26),
      Q => \Tx_Word_Cnt_reg_n_0_[26]\,
      R => \Tx_Word_Cnt[30]_i_1_n_0\
    );
\Tx_Word_Cnt_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_d_reg_0\,
      CE => Tx_Word_Cnt,
      D => in4(27),
      Q => \Tx_Word_Cnt_reg_n_0_[27]\,
      R => \Tx_Word_Cnt[30]_i_1_n_0\
    );
\Tx_Word_Cnt_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_d_reg_0\,
      CE => Tx_Word_Cnt,
      D => in4(28),
      Q => \Tx_Word_Cnt_reg_n_0_[28]\,
      R => \Tx_Word_Cnt[30]_i_1_n_0\
    );
\Tx_Word_Cnt_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_d_reg_0\,
      CE => Tx_Word_Cnt,
      D => in4(29),
      Q => \Tx_Word_Cnt_reg_n_0_[29]\,
      R => \Tx_Word_Cnt[30]_i_1_n_0\
    );
\Tx_Word_Cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_d_reg_0\,
      CE => Tx_Word_Cnt,
      D => in4(2),
      Q => \Tx_Word_Cnt_reg_n_0_[2]\,
      R => \Tx_Word_Cnt[30]_i_1_n_0\
    );
\Tx_Word_Cnt_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_d_reg_0\,
      CE => Tx_Word_Cnt,
      D => in4(30),
      Q => \Tx_Word_Cnt_reg_n_0_[30]\,
      R => \Tx_Word_Cnt[30]_i_1_n_0\
    );
\Tx_Word_Cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_d_reg_0\,
      CE => Tx_Word_Cnt,
      D => in4(3),
      Q => \Tx_Word_Cnt_reg_n_0_[3]\,
      R => \Tx_Word_Cnt[30]_i_1_n_0\
    );
\Tx_Word_Cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_d_reg_0\,
      CE => Tx_Word_Cnt,
      D => in4(4),
      Q => \Tx_Word_Cnt_reg_n_0_[4]\,
      R => \Tx_Word_Cnt[30]_i_1_n_0\
    );
\Tx_Word_Cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_d_reg_0\,
      CE => Tx_Word_Cnt,
      D => in4(5),
      Q => \Tx_Word_Cnt_reg_n_0_[5]\,
      R => \Tx_Word_Cnt[30]_i_1_n_0\
    );
\Tx_Word_Cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_d_reg_0\,
      CE => Tx_Word_Cnt,
      D => in4(6),
      Q => \Tx_Word_Cnt_reg_n_0_[6]\,
      R => \Tx_Word_Cnt[30]_i_1_n_0\
    );
\Tx_Word_Cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_d_reg_0\,
      CE => Tx_Word_Cnt,
      D => in4(7),
      Q => \Tx_Word_Cnt_reg_n_0_[7]\,
      R => \Tx_Word_Cnt[30]_i_1_n_0\
    );
\Tx_Word_Cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_d_reg_0\,
      CE => Tx_Word_Cnt,
      D => in4(8),
      Q => \Tx_Word_Cnt_reg_n_0_[8]\,
      R => \Tx_Word_Cnt[30]_i_1_n_0\
    );
\Tx_Word_Cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk9600_d_reg_0\,
      CE => Tx_Word_Cnt,
      D => in4(9),
      Q => \Tx_Word_Cnt_reg_n_0_[9]\,
      R => \Tx_Word_Cnt[30]_i_1_n_0\
    );
Tx_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4440004077777777"
    )
        port map (
      I0 => \Transmit_State__0\(2),
      I1 => \Transmit_State__0\(0),
      I2 => Tx_i_2_n_0,
      I3 => \Tx_Word_Cnt_reg_n_0_[2]\,
      I4 => Tx_i_3_n_0,
      I5 => \Transmit_State__0\(1),
      O => Tx_i_1_n_0
    );
Tx_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Tx_Word_1(3),
      I1 => Tx_Word_1(2),
      I2 => \Tx_Word_Cnt_reg_n_0_[1]\,
      I3 => Tx_Word_1(1),
      I4 => \Tx_Word_Cnt_reg_n_0_[0]\,
      I5 => Tx_Word_1(0),
      O => Tx_i_2_n_0
    );
Tx_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Tx_Word_1(7),
      I1 => Tx_Word_1(6),
      I2 => \Tx_Word_Cnt_reg_n_0_[1]\,
      I3 => Tx_Word_1(5),
      I4 => \Tx_Word_Cnt_reg_n_0_[0]\,
      I5 => Tx_Word_1(4),
      O => Tx_i_3_n_0
    );
Tx_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => \^clk9600_d_reg_0\,
      CE => '1',
      D => Tx_i_1_n_0,
      Q => UART_0_Tx,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_UART_V1_9_0_0_UART_Debug is
  port (
    Tx : out STD_LOGIC;
    CLK100MHz : in STD_LOGIC;
    UART_Debug_Enable : in STD_LOGIC;
    UART_0_Tx : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_Design_UART_V1_9_0_0_UART_Debug : entity is "UART_Debug";
end Zynq_Design_UART_V1_9_0_0_UART_Debug;

architecture STRUCTURE of Zynq_Design_UART_V1_9_0_0_UART_Debug is
  signal \CLK115200[0]_i_3_n_0\ : STD_LOGIC;
  signal \CLK115200[0]_i_4_n_0\ : STD_LOGIC;
  signal \CLK115200[0]_i_5_n_0\ : STD_LOGIC;
  signal \CLK115200[0]_i_6_n_0\ : STD_LOGIC;
  signal CLK115200_D : STD_LOGIC;
  signal CLK115200_D_i_1_n_0 : STD_LOGIC;
  signal CLK115200_D_i_2_n_0 : STD_LOGIC;
  signal CLK115200_D_i_3_n_0 : STD_LOGIC;
  signal CLK115200_D_i_4_n_0 : STD_LOGIC;
  signal CLK115200_D_i_5_n_0 : STD_LOGIC;
  signal CLK115200_D_i_6_n_0 : STD_LOGIC;
  signal CLK115200_reg : STD_LOGIC_VECTOR ( 30 downto 1 );
  signal \CLK115200_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \CLK115200_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \CLK115200_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \CLK115200_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \CLK115200_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \CLK115200_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \CLK115200_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \CLK115200_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \CLK115200_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \CLK115200_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \CLK115200_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \CLK115200_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \CLK115200_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \CLK115200_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \CLK115200_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \CLK115200_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \CLK115200_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \CLK115200_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \CLK115200_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \CLK115200_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \CLK115200_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \CLK115200_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \CLK115200_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \CLK115200_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \CLK115200_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \CLK115200_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \CLK115200_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \CLK115200_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \CLK115200_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \CLK115200_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \CLK115200_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \CLK115200_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \CLK115200_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \CLK115200_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \CLK115200_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \CLK115200_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \CLK115200_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \CLK115200_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \CLK115200_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \CLK115200_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \CLK115200_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \CLK115200_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \CLK115200_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \CLK115200_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \CLK115200_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \CLK115200_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \CLK115200_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \CLK115200_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \CLK115200_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \CLK115200_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \CLK115200_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \CLK115200_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \CLK115200_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \CLK115200_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \CLK115200_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \CLK115200_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \CLK115200_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \CLK115200_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \CLK115200_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \CLK115200_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \CLK115200_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \CLK115200_reg_n_0_[0]\ : STD_LOGIC;
  signal Itteration : STD_LOGIC;
  signal \Itteration[0]_i_2_n_0\ : STD_LOGIC;
  signal \Itteration[0]_i_3_n_0\ : STD_LOGIC;
  signal \Itteration[0]_i_4_n_0\ : STD_LOGIC;
  signal \Itteration[2]_i_1_n_0\ : STD_LOGIC;
  signal Itteration_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \Itteration_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \Itteration_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \Itteration_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \Itteration_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \Itteration_reg__0\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal State : STD_LOGIC_VECTOR ( 10 downto 1 );
  signal Test_Char : STD_LOGIC;
  signal \Test_Char[2]_i_1_n_0\ : STD_LOGIC;
  signal \Test_Char[3]_i_1_n_0\ : STD_LOGIC;
  signal \Test_Char[4]_i_1_n_0\ : STD_LOGIC;
  signal \Test_Char[5]_i_1_n_0\ : STD_LOGIC;
  signal \Test_Char[6]_i_1_n_0\ : STD_LOGIC;
  signal Tx_Internal : STD_LOGIC;
  signal Tx_Internal_i_1_n_0 : STD_LOGIC;
  signal Tx_Internal_i_2_n_0 : STD_LOGIC;
  signal Tx_Internal_i_3_n_0 : STD_LOGIC;
  signal Tx_Internal_i_5_n_0 : STD_LOGIC;
  signal Tx_Internal_i_6_n_0 : STD_LOGIC;
  signal Tx_Internal_reg_n_0 : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal p_6_in : STD_LOGIC;
  signal \NLW_CLK115200_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_CLK115200_reg[28]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_Itteration_reg[0]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_Itteration_reg[0]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_State_reg[0]\ : label is "iSTATE:010000000000,iSTATE0:000000000010,iSTATE1:000000000001,iSTATE2:001000000000,iSTATE3:000010000000,iSTATE4:000100000000,iSTATE5:000001000000,iSTATE6:000000100000,iSTATE7:000000001000,iSTATE8:000000010000,iSTATE9:000000000100,iSTATE10:100000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_State_reg[10]\ : label is "iSTATE:010000000000,iSTATE0:000000000010,iSTATE1:000000000001,iSTATE2:001000000000,iSTATE3:000010000000,iSTATE4:000100000000,iSTATE5:000001000000,iSTATE6:000000100000,iSTATE7:000000001000,iSTATE8:000000010000,iSTATE9:000000000100,iSTATE10:100000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_State_reg[11]\ : label is "iSTATE:010000000000,iSTATE0:000000000010,iSTATE1:000000000001,iSTATE2:001000000000,iSTATE3:000010000000,iSTATE4:000100000000,iSTATE5:000001000000,iSTATE6:000000100000,iSTATE7:000000001000,iSTATE8:000000010000,iSTATE9:000000000100,iSTATE10:100000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_State_reg[1]\ : label is "iSTATE:010000000000,iSTATE0:000000000010,iSTATE1:000000000001,iSTATE2:001000000000,iSTATE3:000010000000,iSTATE4:000100000000,iSTATE5:000001000000,iSTATE6:000000100000,iSTATE7:000000001000,iSTATE8:000000010000,iSTATE9:000000000100,iSTATE10:100000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_State_reg[2]\ : label is "iSTATE:010000000000,iSTATE0:000000000010,iSTATE1:000000000001,iSTATE2:001000000000,iSTATE3:000010000000,iSTATE4:000100000000,iSTATE5:000001000000,iSTATE6:000000100000,iSTATE7:000000001000,iSTATE8:000000010000,iSTATE9:000000000100,iSTATE10:100000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_State_reg[3]\ : label is "iSTATE:010000000000,iSTATE0:000000000010,iSTATE1:000000000001,iSTATE2:001000000000,iSTATE3:000010000000,iSTATE4:000100000000,iSTATE5:000001000000,iSTATE6:000000100000,iSTATE7:000000001000,iSTATE8:000000010000,iSTATE9:000000000100,iSTATE10:100000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_State_reg[4]\ : label is "iSTATE:010000000000,iSTATE0:000000000010,iSTATE1:000000000001,iSTATE2:001000000000,iSTATE3:000010000000,iSTATE4:000100000000,iSTATE5:000001000000,iSTATE6:000000100000,iSTATE7:000000001000,iSTATE8:000000010000,iSTATE9:000000000100,iSTATE10:100000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_State_reg[5]\ : label is "iSTATE:010000000000,iSTATE0:000000000010,iSTATE1:000000000001,iSTATE2:001000000000,iSTATE3:000010000000,iSTATE4:000100000000,iSTATE5:000001000000,iSTATE6:000000100000,iSTATE7:000000001000,iSTATE8:000000010000,iSTATE9:000000000100,iSTATE10:100000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_State_reg[6]\ : label is "iSTATE:010000000000,iSTATE0:000000000010,iSTATE1:000000000001,iSTATE2:001000000000,iSTATE3:000010000000,iSTATE4:000100000000,iSTATE5:000001000000,iSTATE6:000000100000,iSTATE7:000000001000,iSTATE8:000000010000,iSTATE9:000000000100,iSTATE10:100000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_State_reg[7]\ : label is "iSTATE:010000000000,iSTATE0:000000000010,iSTATE1:000000000001,iSTATE2:001000000000,iSTATE3:000010000000,iSTATE4:000100000000,iSTATE5:000001000000,iSTATE6:000000100000,iSTATE7:000000001000,iSTATE8:000000010000,iSTATE9:000000000100,iSTATE10:100000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_State_reg[8]\ : label is "iSTATE:010000000000,iSTATE0:000000000010,iSTATE1:000000000001,iSTATE2:001000000000,iSTATE3:000010000000,iSTATE4:000100000000,iSTATE5:000001000000,iSTATE6:000000100000,iSTATE7:000000001000,iSTATE8:000000010000,iSTATE9:000000000100,iSTATE10:100000000000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_State_reg[9]\ : label is "iSTATE:010000000000,iSTATE0:000000000010,iSTATE1:000000000001,iSTATE2:001000000000,iSTATE3:000010000000,iSTATE4:000100000000,iSTATE5:000001000000,iSTATE6:000000100000,iSTATE7:000000001000,iSTATE8:000000010000,iSTATE9:000000000100,iSTATE10:100000000000";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Test_Char[2]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \Test_Char[4]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \Test_Char[5]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \Test_Char[6]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of Tx_Internal_i_4 : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of Tx_Internal_i_5 : label is "soft_lutpair47";
begin
\CLK115200[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF80"
    )
        port map (
      I0 => CLK115200_reg(9),
      I1 => CLK115200_reg(8),
      I2 => \CLK115200[0]_i_3_n_0\,
      I3 => \CLK115200[0]_i_4_n_0\,
      I4 => CLK115200_D_i_4_n_0,
      I5 => \CLK115200[0]_i_5_n_0\,
      O => clear
    );
\CLK115200[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEAEAEAEAEAEAAA"
    )
        port map (
      I0 => CLK115200_reg(7),
      I1 => CLK115200_reg(6),
      I2 => CLK115200_reg(5),
      I3 => CLK115200_reg(4),
      I4 => CLK115200_reg(3),
      I5 => CLK115200_reg(2),
      O => \CLK115200[0]_i_3_n_0\
    );
\CLK115200[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => CLK115200_D_i_5_n_0,
      I1 => CLK115200_reg(29),
      I2 => CLK115200_reg(28),
      I3 => CLK115200_reg(30),
      O => \CLK115200[0]_i_4_n_0\
    );
\CLK115200[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => CLK115200_reg(10),
      I1 => CLK115200_reg(11),
      I2 => CLK115200_reg(13),
      I3 => CLK115200_reg(12),
      I4 => CLK115200_reg(15),
      I5 => CLK115200_reg(14),
      O => \CLK115200[0]_i_5_n_0\
    );
\CLK115200[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \CLK115200_reg_n_0_[0]\,
      O => \CLK115200[0]_i_6_n_0\
    );
CLK115200_D_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF80"
    )
        port map (
      I0 => CLK115200_reg(7),
      I1 => CLK115200_reg(8),
      I2 => CLK115200_D_i_2_n_0,
      I3 => CLK115200_D_i_3_n_0,
      I4 => CLK115200_D_i_4_n_0,
      O => CLK115200_D_i_1_n_0
    );
CLK115200_D_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEAEAEAEAEAEAAA"
    )
        port map (
      I0 => CLK115200_reg(6),
      I1 => CLK115200_reg(4),
      I2 => CLK115200_reg(5),
      I3 => CLK115200_reg(1),
      I4 => CLK115200_reg(3),
      I5 => CLK115200_reg(2),
      O => CLK115200_D_i_2_n_0
    );
CLK115200_D_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \CLK115200[0]_i_5_n_0\,
      I1 => CLK115200_reg(28),
      I2 => CLK115200_reg(29),
      I3 => CLK115200_reg(30),
      I4 => CLK115200_reg(9),
      I5 => CLK115200_D_i_5_n_0,
      O => CLK115200_D_i_3_n_0
    );
CLK115200_D_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => CLK115200_reg(18),
      I1 => CLK115200_reg(17),
      I2 => CLK115200_reg(23),
      I3 => CLK115200_reg(20),
      I4 => CLK115200_D_i_6_n_0,
      O => CLK115200_D_i_4_n_0
    );
CLK115200_D_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => CLK115200_reg(25),
      I1 => CLK115200_reg(26),
      I2 => CLK115200_reg(24),
      I3 => CLK115200_reg(27),
      O => CLK115200_D_i_5_n_0
    );
CLK115200_D_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => CLK115200_reg(21),
      I1 => CLK115200_reg(22),
      I2 => CLK115200_reg(16),
      I3 => CLK115200_reg(19),
      O => CLK115200_D_i_6_n_0
    );
CLK115200_D_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => CLK115200_D_i_1_n_0,
      Q => CLK115200_D,
      R => '0'
    );
\CLK115200_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => \CLK115200_reg[0]_i_2_n_7\,
      Q => \CLK115200_reg_n_0_[0]\,
      R => clear
    );
\CLK115200_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \CLK115200_reg[0]_i_2_n_0\,
      CO(2) => \CLK115200_reg[0]_i_2_n_1\,
      CO(1) => \CLK115200_reg[0]_i_2_n_2\,
      CO(0) => \CLK115200_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \CLK115200_reg[0]_i_2_n_4\,
      O(2) => \CLK115200_reg[0]_i_2_n_5\,
      O(1) => \CLK115200_reg[0]_i_2_n_6\,
      O(0) => \CLK115200_reg[0]_i_2_n_7\,
      S(3 downto 1) => CLK115200_reg(3 downto 1),
      S(0) => \CLK115200[0]_i_6_n_0\
    );
\CLK115200_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => \CLK115200_reg[8]_i_1_n_5\,
      Q => CLK115200_reg(10),
      R => clear
    );
\CLK115200_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => \CLK115200_reg[8]_i_1_n_4\,
      Q => CLK115200_reg(11),
      R => clear
    );
\CLK115200_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => \CLK115200_reg[12]_i_1_n_7\,
      Q => CLK115200_reg(12),
      R => clear
    );
\CLK115200_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \CLK115200_reg[8]_i_1_n_0\,
      CO(3) => \CLK115200_reg[12]_i_1_n_0\,
      CO(2) => \CLK115200_reg[12]_i_1_n_1\,
      CO(1) => \CLK115200_reg[12]_i_1_n_2\,
      CO(0) => \CLK115200_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \CLK115200_reg[12]_i_1_n_4\,
      O(2) => \CLK115200_reg[12]_i_1_n_5\,
      O(1) => \CLK115200_reg[12]_i_1_n_6\,
      O(0) => \CLK115200_reg[12]_i_1_n_7\,
      S(3 downto 0) => CLK115200_reg(15 downto 12)
    );
\CLK115200_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => \CLK115200_reg[12]_i_1_n_6\,
      Q => CLK115200_reg(13),
      R => clear
    );
\CLK115200_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => \CLK115200_reg[12]_i_1_n_5\,
      Q => CLK115200_reg(14),
      R => clear
    );
\CLK115200_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => \CLK115200_reg[12]_i_1_n_4\,
      Q => CLK115200_reg(15),
      R => clear
    );
\CLK115200_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => \CLK115200_reg[16]_i_1_n_7\,
      Q => CLK115200_reg(16),
      R => clear
    );
\CLK115200_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \CLK115200_reg[12]_i_1_n_0\,
      CO(3) => \CLK115200_reg[16]_i_1_n_0\,
      CO(2) => \CLK115200_reg[16]_i_1_n_1\,
      CO(1) => \CLK115200_reg[16]_i_1_n_2\,
      CO(0) => \CLK115200_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \CLK115200_reg[16]_i_1_n_4\,
      O(2) => \CLK115200_reg[16]_i_1_n_5\,
      O(1) => \CLK115200_reg[16]_i_1_n_6\,
      O(0) => \CLK115200_reg[16]_i_1_n_7\,
      S(3 downto 0) => CLK115200_reg(19 downto 16)
    );
\CLK115200_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => \CLK115200_reg[16]_i_1_n_6\,
      Q => CLK115200_reg(17),
      R => clear
    );
\CLK115200_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => \CLK115200_reg[16]_i_1_n_5\,
      Q => CLK115200_reg(18),
      R => clear
    );
\CLK115200_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => \CLK115200_reg[16]_i_1_n_4\,
      Q => CLK115200_reg(19),
      R => clear
    );
\CLK115200_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => \CLK115200_reg[0]_i_2_n_6\,
      Q => CLK115200_reg(1),
      R => clear
    );
\CLK115200_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => \CLK115200_reg[20]_i_1_n_7\,
      Q => CLK115200_reg(20),
      R => clear
    );
\CLK115200_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \CLK115200_reg[16]_i_1_n_0\,
      CO(3) => \CLK115200_reg[20]_i_1_n_0\,
      CO(2) => \CLK115200_reg[20]_i_1_n_1\,
      CO(1) => \CLK115200_reg[20]_i_1_n_2\,
      CO(0) => \CLK115200_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \CLK115200_reg[20]_i_1_n_4\,
      O(2) => \CLK115200_reg[20]_i_1_n_5\,
      O(1) => \CLK115200_reg[20]_i_1_n_6\,
      O(0) => \CLK115200_reg[20]_i_1_n_7\,
      S(3 downto 0) => CLK115200_reg(23 downto 20)
    );
\CLK115200_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => \CLK115200_reg[20]_i_1_n_6\,
      Q => CLK115200_reg(21),
      R => clear
    );
\CLK115200_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => \CLK115200_reg[20]_i_1_n_5\,
      Q => CLK115200_reg(22),
      R => clear
    );
\CLK115200_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => \CLK115200_reg[20]_i_1_n_4\,
      Q => CLK115200_reg(23),
      R => clear
    );
\CLK115200_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => \CLK115200_reg[24]_i_1_n_7\,
      Q => CLK115200_reg(24),
      R => clear
    );
\CLK115200_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \CLK115200_reg[20]_i_1_n_0\,
      CO(3) => \CLK115200_reg[24]_i_1_n_0\,
      CO(2) => \CLK115200_reg[24]_i_1_n_1\,
      CO(1) => \CLK115200_reg[24]_i_1_n_2\,
      CO(0) => \CLK115200_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \CLK115200_reg[24]_i_1_n_4\,
      O(2) => \CLK115200_reg[24]_i_1_n_5\,
      O(1) => \CLK115200_reg[24]_i_1_n_6\,
      O(0) => \CLK115200_reg[24]_i_1_n_7\,
      S(3 downto 0) => CLK115200_reg(27 downto 24)
    );
\CLK115200_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => \CLK115200_reg[24]_i_1_n_6\,
      Q => CLK115200_reg(25),
      R => clear
    );
\CLK115200_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => \CLK115200_reg[24]_i_1_n_5\,
      Q => CLK115200_reg(26),
      R => clear
    );
\CLK115200_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => \CLK115200_reg[24]_i_1_n_4\,
      Q => CLK115200_reg(27),
      R => clear
    );
\CLK115200_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => \CLK115200_reg[28]_i_1_n_7\,
      Q => CLK115200_reg(28),
      R => clear
    );
\CLK115200_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \CLK115200_reg[24]_i_1_n_0\,
      CO(3 downto 2) => \NLW_CLK115200_reg[28]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \CLK115200_reg[28]_i_1_n_2\,
      CO(0) => \CLK115200_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_CLK115200_reg[28]_i_1_O_UNCONNECTED\(3),
      O(2) => \CLK115200_reg[28]_i_1_n_5\,
      O(1) => \CLK115200_reg[28]_i_1_n_6\,
      O(0) => \CLK115200_reg[28]_i_1_n_7\,
      S(3) => '0',
      S(2 downto 0) => CLK115200_reg(30 downto 28)
    );
\CLK115200_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => \CLK115200_reg[28]_i_1_n_6\,
      Q => CLK115200_reg(29),
      R => clear
    );
\CLK115200_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => \CLK115200_reg[0]_i_2_n_5\,
      Q => CLK115200_reg(2),
      R => clear
    );
\CLK115200_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => \CLK115200_reg[28]_i_1_n_5\,
      Q => CLK115200_reg(30),
      R => clear
    );
\CLK115200_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => \CLK115200_reg[0]_i_2_n_4\,
      Q => CLK115200_reg(3),
      R => clear
    );
\CLK115200_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => \CLK115200_reg[4]_i_1_n_7\,
      Q => CLK115200_reg(4),
      R => clear
    );
\CLK115200_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \CLK115200_reg[0]_i_2_n_0\,
      CO(3) => \CLK115200_reg[4]_i_1_n_0\,
      CO(2) => \CLK115200_reg[4]_i_1_n_1\,
      CO(1) => \CLK115200_reg[4]_i_1_n_2\,
      CO(0) => \CLK115200_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \CLK115200_reg[4]_i_1_n_4\,
      O(2) => \CLK115200_reg[4]_i_1_n_5\,
      O(1) => \CLK115200_reg[4]_i_1_n_6\,
      O(0) => \CLK115200_reg[4]_i_1_n_7\,
      S(3 downto 0) => CLK115200_reg(7 downto 4)
    );
\CLK115200_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => \CLK115200_reg[4]_i_1_n_6\,
      Q => CLK115200_reg(5),
      R => clear
    );
\CLK115200_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => \CLK115200_reg[4]_i_1_n_5\,
      Q => CLK115200_reg(6),
      R => clear
    );
\CLK115200_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => \CLK115200_reg[4]_i_1_n_4\,
      Q => CLK115200_reg(7),
      R => clear
    );
\CLK115200_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => \CLK115200_reg[8]_i_1_n_7\,
      Q => CLK115200_reg(8),
      R => clear
    );
\CLK115200_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \CLK115200_reg[4]_i_1_n_0\,
      CO(3) => \CLK115200_reg[8]_i_1_n_0\,
      CO(2) => \CLK115200_reg[8]_i_1_n_1\,
      CO(1) => \CLK115200_reg[8]_i_1_n_2\,
      CO(0) => \CLK115200_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \CLK115200_reg[8]_i_1_n_4\,
      O(2) => \CLK115200_reg[8]_i_1_n_5\,
      O(1) => \CLK115200_reg[8]_i_1_n_6\,
      O(0) => \CLK115200_reg[8]_i_1_n_7\,
      S(3 downto 0) => CLK115200_reg(11 downto 8)
    );
\CLK115200_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => \CLK115200_reg[8]_i_1_n_6\,
      Q => CLK115200_reg(9),
      R => clear
    );
\FSM_onehot_State_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK115200_D,
      CE => '1',
      D => Itteration,
      Q => Test_Char,
      R => '0'
    );
\FSM_onehot_State_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK115200_D,
      CE => '1',
      D => State(9),
      Q => State(10),
      R => '0'
    );
\FSM_onehot_State_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK115200_D,
      CE => '1',
      D => State(10),
      Q => Itteration,
      R => '0'
    );
\FSM_onehot_State_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK115200_D,
      CE => '1',
      D => Test_Char,
      Q => State(1),
      R => '0'
    );
\FSM_onehot_State_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK115200_D,
      CE => '1',
      D => State(1),
      Q => State(2),
      R => '0'
    );
\FSM_onehot_State_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK115200_D,
      CE => '1',
      D => State(2),
      Q => State(3),
      R => '0'
    );
\FSM_onehot_State_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK115200_D,
      CE => '1',
      D => State(3),
      Q => State(4),
      R => '0'
    );
\FSM_onehot_State_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK115200_D,
      CE => '1',
      D => State(4),
      Q => State(5),
      R => '0'
    );
\FSM_onehot_State_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK115200_D,
      CE => '1',
      D => State(5),
      Q => State(6),
      R => '0'
    );
\FSM_onehot_State_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK115200_D,
      CE => '1',
      D => State(6),
      Q => State(7),
      R => '0'
    );
\FSM_onehot_State_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK115200_D,
      CE => '1',
      D => State(7),
      Q => State(8),
      R => '0'
    );
\FSM_onehot_State_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK115200_D,
      CE => '1',
      D => State(8),
      Q => State(9),
      R => '0'
    );
\Itteration[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => Itteration_reg(1),
      I1 => Itteration_reg(0),
      I2 => \Itteration_reg__0\(2),
      O => \Itteration[0]_i_2_n_0\
    );
\Itteration[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => Itteration_reg(0),
      I1 => Itteration_reg(1),
      I2 => \Itteration_reg__0\(2),
      O => \Itteration[0]_i_3_n_0\
    );
\Itteration[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Itteration_reg__0\(2),
      I1 => Itteration_reg(0),
      O => \Itteration[0]_i_4_n_0\
    );
\Itteration[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \Itteration_reg[0]_i_1_n_1\,
      I1 => Itteration,
      I2 => \Itteration_reg__0\(2),
      O => \Itteration[2]_i_1_n_0\
    );
\Itteration_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK115200_D,
      CE => Itteration,
      D => \Itteration_reg[0]_i_1_n_7\,
      Q => Itteration_reg(0),
      R => '0'
    );
\Itteration_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_Itteration_reg[0]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \Itteration_reg[0]_i_1_n_1\,
      CO(1) => \NLW_Itteration_reg[0]_i_1_CO_UNCONNECTED\(1),
      CO(0) => \Itteration_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \Itteration[0]_i_2_n_0\,
      O(3 downto 2) => \NLW_Itteration_reg[0]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \Itteration_reg[0]_i_1_n_6\,
      O(0) => \Itteration_reg[0]_i_1_n_7\,
      S(3 downto 2) => B"01",
      S(1) => \Itteration[0]_i_3_n_0\,
      S(0) => \Itteration[0]_i_4_n_0\
    );
\Itteration_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK115200_D,
      CE => Itteration,
      D => \Itteration_reg[0]_i_1_n_6\,
      Q => Itteration_reg(1),
      R => '0'
    );
\Itteration_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK115200_D,
      CE => '1',
      D => \Itteration[2]_i_1_n_0\,
      Q => \Itteration_reg__0\(2),
      R => '0'
    );
\Test_Char[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => Itteration_reg(1),
      I1 => Itteration_reg(0),
      I2 => \Itteration_reg__0\(2),
      O => \Test_Char[2]_i_1_n_0\
    );
\Test_Char[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Itteration_reg(1),
      I1 => \Itteration_reg__0\(2),
      O => \Test_Char[3]_i_1_n_0\
    );
\Test_Char[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => Itteration_reg(1),
      I1 => Itteration_reg(0),
      I2 => \Itteration_reg__0\(2),
      O => \Test_Char[4]_i_1_n_0\
    );
\Test_Char[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Itteration_reg(0),
      I1 => Itteration_reg(1),
      I2 => \Itteration_reg__0\(2),
      O => \Test_Char[5]_i_1_n_0\
    );
\Test_Char[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \Itteration_reg__0\(2),
      I1 => Itteration_reg(1),
      I2 => Itteration_reg(0),
      O => \Test_Char[6]_i_1_n_0\
    );
\Test_Char_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK115200_D,
      CE => Test_Char,
      D => '1',
      Q => p_6_in,
      R => '0'
    );
\Test_Char_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK115200_D,
      CE => Test_Char,
      D => \Test_Char[2]_i_1_n_0\,
      Q => p_5_in,
      R => '0'
    );
\Test_Char_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK115200_D,
      CE => Test_Char,
      D => \Test_Char[3]_i_1_n_0\,
      Q => p_4_in,
      R => '0'
    );
\Test_Char_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK115200_D,
      CE => Test_Char,
      D => \Test_Char[4]_i_1_n_0\,
      Q => p_3_in,
      R => '0'
    );
\Test_Char_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK115200_D,
      CE => Test_Char,
      D => \Test_Char[5]_i_1_n_0\,
      Q => p_2_in,
      R => '0'
    );
\Test_Char_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK115200_D,
      CE => Test_Char,
      D => \Test_Char[6]_i_1_n_0\,
      Q => p_1_in,
      R => '0'
    );
Tx_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Tx_Internal_reg_n_0,
      I1 => UART_Debug_Enable,
      I2 => UART_0_Tx,
      O => Tx
    );
Tx_Internal_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFE0000"
    )
        port map (
      I0 => Tx_Internal_i_2_n_0,
      I1 => Tx_Internal_i_3_n_0,
      I2 => State(10),
      I3 => Test_Char,
      I4 => Tx_Internal,
      I5 => Tx_Internal_reg_n_0,
      O => Tx_Internal_i_1_n_0
    );
Tx_Internal_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => p_1_in,
      I1 => State(8),
      I2 => p_2_in,
      I3 => State(7),
      I4 => State(6),
      I5 => p_3_in,
      O => Tx_Internal_i_2_n_0
    );
Tx_Internal_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => p_4_in,
      I1 => State(5),
      I2 => p_6_in,
      I3 => State(3),
      I4 => p_5_in,
      I5 => Tx_Internal_i_5_n_0,
      O => Tx_Internal_i_3_n_0
    );
Tx_Internal_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => State(1),
      I1 => State(3),
      I2 => State(4),
      I3 => State(2),
      I4 => Tx_Internal_i_6_n_0,
      O => Tx_Internal
    );
Tx_Internal_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => State(2),
      I1 => State(4),
      O => Tx_Internal_i_5_n_0
    );
Tx_Internal_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => State(9),
      I1 => State(10),
      I2 => State(7),
      I3 => State(8),
      I4 => State(6),
      I5 => State(5),
      O => Tx_Internal_i_6_n_0
    );
Tx_Internal_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK115200_D,
      CE => '1',
      D => Tx_Internal_i_1_n_0,
      Q => Tx_Internal_reg_n_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_UART_V1_9_0_0_xpm_cdc_gray is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of Zynq_Design_UART_V1_9_0_0_xpm_cdc_gray : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of Zynq_Design_UART_V1_9_0_0_xpm_cdc_gray : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_Design_UART_V1_9_0_0_xpm_cdc_gray : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of Zynq_Design_UART_V1_9_0_0_xpm_cdc_gray : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of Zynq_Design_UART_V1_9_0_0_xpm_cdc_gray : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of Zynq_Design_UART_V1_9_0_0_xpm_cdc_gray : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of Zynq_Design_UART_V1_9_0_0_xpm_cdc_gray : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of Zynq_Design_UART_V1_9_0_0_xpm_cdc_gray : entity is 9;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of Zynq_Design_UART_V1_9_0_0_xpm_cdc_gray : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of Zynq_Design_UART_V1_9_0_0_xpm_cdc_gray : entity is "GRAY";
end Zynq_Design_UART_V1_9_0_0_xpm_cdc_gray;

architecture STRUCTURE of Zynq_Design_UART_V1_9_0_0_xpm_cdc_gray is
  signal async_path : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal binval : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal gray_enc : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][8]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \src_gray_ff[4]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \src_gray_ff[5]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \src_gray_ff[6]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \src_gray_ff[7]_i_1\ : label is "soft_lutpair21";
begin
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(5),
      Q => \dest_graysync_ff[0]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(6),
      Q => \dest_graysync_ff[0]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(7),
      Q => \dest_graysync_ff[0]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(8),
      Q => \dest_graysync_ff[0]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(5),
      Q => \dest_graysync_ff[1]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(6),
      Q => \dest_graysync_ff[1]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(7),
      Q => \dest_graysync_ff[1]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(8),
      Q => \dest_graysync_ff[1]\(8),
      R => '0'
    );
\dest_out_bin_ff[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(0),
      I1 => \dest_graysync_ff[1]\(2),
      I2 => binval(3),
      I3 => \dest_graysync_ff[1]\(1),
      O => binval(0)
    );
\dest_out_bin_ff[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(1),
      I1 => binval(3),
      I2 => \dest_graysync_ff[1]\(2),
      O => binval(1)
    );
\dest_out_bin_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => binval(3),
      O => binval(2)
    );
\dest_out_bin_ff[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(5),
      I2 => \dest_graysync_ff[1]\(7),
      I3 => \dest_graysync_ff[1]\(8),
      I4 => \dest_graysync_ff[1]\(6),
      I5 => \dest_graysync_ff[1]\(4),
      O => binval(3)
    );
\dest_out_bin_ff[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(4),
      I1 => \dest_graysync_ff[1]\(6),
      I2 => \dest_graysync_ff[1]\(8),
      I3 => \dest_graysync_ff[1]\(7),
      I4 => \dest_graysync_ff[1]\(5),
      O => binval(4)
    );
\dest_out_bin_ff[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(5),
      I1 => \dest_graysync_ff[1]\(7),
      I2 => \dest_graysync_ff[1]\(8),
      I3 => \dest_graysync_ff[1]\(6),
      O => binval(5)
    );
\dest_out_bin_ff[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(6),
      I1 => \dest_graysync_ff[1]\(8),
      I2 => \dest_graysync_ff[1]\(7),
      O => binval(6)
    );
\dest_out_bin_ff[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(7),
      I1 => \dest_graysync_ff[1]\(8),
      O => binval(7)
    );
\dest_out_bin_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(0),
      Q => dest_out_bin(0),
      R => '0'
    );
\dest_out_bin_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(1),
      Q => dest_out_bin(1),
      R => '0'
    );
\dest_out_bin_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(2),
      Q => dest_out_bin(2),
      R => '0'
    );
\dest_out_bin_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(3),
      Q => dest_out_bin(3),
      R => '0'
    );
\dest_out_bin_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(4),
      Q => dest_out_bin(4),
      R => '0'
    );
\dest_out_bin_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(5),
      Q => dest_out_bin(5),
      R => '0'
    );
\dest_out_bin_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(6),
      Q => dest_out_bin(6),
      R => '0'
    );
\dest_out_bin_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(7),
      Q => dest_out_bin(7),
      R => '0'
    );
\dest_out_bin_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(8),
      Q => dest_out_bin(8),
      R => '0'
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(3),
      O => gray_enc(3)
    );
\src_gray_ff[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(5),
      I1 => src_in_bin(4),
      O => gray_enc(4)
    );
\src_gray_ff[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(6),
      I1 => src_in_bin(5),
      O => gray_enc(5)
    );
\src_gray_ff[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(7),
      I1 => src_in_bin(6),
      O => gray_enc(6)
    );
\src_gray_ff[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(8),
      I1 => src_in_bin(7),
      O => gray_enc(7)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(4),
      Q => async_path(4),
      R => '0'
    );
\src_gray_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(5),
      Q => async_path(5),
      R => '0'
    );
\src_gray_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(6),
      Q => async_path(6),
      R => '0'
    );
\src_gray_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(7),
      Q => async_path(7),
      R => '0'
    );
\src_gray_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(8),
      Q => async_path(8),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Zynq_Design_UART_V1_9_0_0_xpm_cdc_gray__4\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_gray__4\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_gray__4\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_gray__4\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_gray__4\ : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_gray__4\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_gray__4\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_gray__4\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_gray__4\ : entity is 9;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_gray__4\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_gray__4\ : entity is "GRAY";
end \Zynq_Design_UART_V1_9_0_0_xpm_cdc_gray__4\;

architecture STRUCTURE of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_gray__4\ is
  signal async_path : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal binval : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal gray_enc : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][8]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \src_gray_ff[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \src_gray_ff[5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \src_gray_ff[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \src_gray_ff[7]_i_1\ : label is "soft_lutpair3";
begin
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(5),
      Q => \dest_graysync_ff[0]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(6),
      Q => \dest_graysync_ff[0]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(7),
      Q => \dest_graysync_ff[0]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(8),
      Q => \dest_graysync_ff[0]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(5),
      Q => \dest_graysync_ff[1]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(6),
      Q => \dest_graysync_ff[1]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(7),
      Q => \dest_graysync_ff[1]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(8),
      Q => \dest_graysync_ff[1]\(8),
      R => '0'
    );
\dest_out_bin_ff[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(0),
      I1 => \dest_graysync_ff[1]\(2),
      I2 => binval(3),
      I3 => \dest_graysync_ff[1]\(1),
      O => binval(0)
    );
\dest_out_bin_ff[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(1),
      I1 => binval(3),
      I2 => \dest_graysync_ff[1]\(2),
      O => binval(1)
    );
\dest_out_bin_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => binval(3),
      O => binval(2)
    );
\dest_out_bin_ff[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(5),
      I2 => \dest_graysync_ff[1]\(7),
      I3 => \dest_graysync_ff[1]\(8),
      I4 => \dest_graysync_ff[1]\(6),
      I5 => \dest_graysync_ff[1]\(4),
      O => binval(3)
    );
\dest_out_bin_ff[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(4),
      I1 => \dest_graysync_ff[1]\(6),
      I2 => \dest_graysync_ff[1]\(8),
      I3 => \dest_graysync_ff[1]\(7),
      I4 => \dest_graysync_ff[1]\(5),
      O => binval(4)
    );
\dest_out_bin_ff[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(5),
      I1 => \dest_graysync_ff[1]\(7),
      I2 => \dest_graysync_ff[1]\(8),
      I3 => \dest_graysync_ff[1]\(6),
      O => binval(5)
    );
\dest_out_bin_ff[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(6),
      I1 => \dest_graysync_ff[1]\(8),
      I2 => \dest_graysync_ff[1]\(7),
      O => binval(6)
    );
\dest_out_bin_ff[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(7),
      I1 => \dest_graysync_ff[1]\(8),
      O => binval(7)
    );
\dest_out_bin_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(0),
      Q => dest_out_bin(0),
      R => '0'
    );
\dest_out_bin_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(1),
      Q => dest_out_bin(1),
      R => '0'
    );
\dest_out_bin_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(2),
      Q => dest_out_bin(2),
      R => '0'
    );
\dest_out_bin_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(3),
      Q => dest_out_bin(3),
      R => '0'
    );
\dest_out_bin_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(4),
      Q => dest_out_bin(4),
      R => '0'
    );
\dest_out_bin_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(5),
      Q => dest_out_bin(5),
      R => '0'
    );
\dest_out_bin_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(6),
      Q => dest_out_bin(6),
      R => '0'
    );
\dest_out_bin_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(7),
      Q => dest_out_bin(7),
      R => '0'
    );
\dest_out_bin_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(8),
      Q => dest_out_bin(8),
      R => '0'
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(3),
      O => gray_enc(3)
    );
\src_gray_ff[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(5),
      I1 => src_in_bin(4),
      O => gray_enc(4)
    );
\src_gray_ff[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(6),
      I1 => src_in_bin(5),
      O => gray_enc(5)
    );
\src_gray_ff[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(7),
      I1 => src_in_bin(6),
      O => gray_enc(6)
    );
\src_gray_ff[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(8),
      I1 => src_in_bin(7),
      O => gray_enc(7)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(4),
      Q => async_path(4),
      R => '0'
    );
\src_gray_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(5),
      Q => async_path(5),
      R => '0'
    );
\src_gray_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(6),
      Q => async_path(6),
      R => '0'
    );
\src_gray_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(7),
      Q => async_path(7),
      R => '0'
    );
\src_gray_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(8),
      Q => async_path(8),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Zynq_Design_UART_V1_9_0_0_xpm_cdc_gray__5\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_gray__5\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_gray__5\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_gray__5\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_gray__5\ : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_gray__5\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_gray__5\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_gray__5\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_gray__5\ : entity is 9;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_gray__5\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_gray__5\ : entity is "GRAY";
end \Zynq_Design_UART_V1_9_0_0_xpm_cdc_gray__5\;

architecture STRUCTURE of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_gray__5\ is
  signal async_path : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal binval : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal gray_enc : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][8]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \src_gray_ff[4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \src_gray_ff[5]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \src_gray_ff[6]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \src_gray_ff[7]_i_1\ : label is "soft_lutpair7";
begin
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(5),
      Q => \dest_graysync_ff[0]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(6),
      Q => \dest_graysync_ff[0]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(7),
      Q => \dest_graysync_ff[0]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(8),
      Q => \dest_graysync_ff[0]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(5),
      Q => \dest_graysync_ff[1]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(6),
      Q => \dest_graysync_ff[1]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(7),
      Q => \dest_graysync_ff[1]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(8),
      Q => \dest_graysync_ff[1]\(8),
      R => '0'
    );
\dest_out_bin_ff[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(0),
      I1 => \dest_graysync_ff[1]\(2),
      I2 => binval(3),
      I3 => \dest_graysync_ff[1]\(1),
      O => binval(0)
    );
\dest_out_bin_ff[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(1),
      I1 => binval(3),
      I2 => \dest_graysync_ff[1]\(2),
      O => binval(1)
    );
\dest_out_bin_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => binval(3),
      O => binval(2)
    );
\dest_out_bin_ff[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(5),
      I2 => \dest_graysync_ff[1]\(7),
      I3 => \dest_graysync_ff[1]\(8),
      I4 => \dest_graysync_ff[1]\(6),
      I5 => \dest_graysync_ff[1]\(4),
      O => binval(3)
    );
\dest_out_bin_ff[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(4),
      I1 => \dest_graysync_ff[1]\(6),
      I2 => \dest_graysync_ff[1]\(8),
      I3 => \dest_graysync_ff[1]\(7),
      I4 => \dest_graysync_ff[1]\(5),
      O => binval(4)
    );
\dest_out_bin_ff[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(5),
      I1 => \dest_graysync_ff[1]\(7),
      I2 => \dest_graysync_ff[1]\(8),
      I3 => \dest_graysync_ff[1]\(6),
      O => binval(5)
    );
\dest_out_bin_ff[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(6),
      I1 => \dest_graysync_ff[1]\(8),
      I2 => \dest_graysync_ff[1]\(7),
      O => binval(6)
    );
\dest_out_bin_ff[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(7),
      I1 => \dest_graysync_ff[1]\(8),
      O => binval(7)
    );
\dest_out_bin_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(0),
      Q => dest_out_bin(0),
      R => '0'
    );
\dest_out_bin_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(1),
      Q => dest_out_bin(1),
      R => '0'
    );
\dest_out_bin_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(2),
      Q => dest_out_bin(2),
      R => '0'
    );
\dest_out_bin_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(3),
      Q => dest_out_bin(3),
      R => '0'
    );
\dest_out_bin_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(4),
      Q => dest_out_bin(4),
      R => '0'
    );
\dest_out_bin_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(5),
      Q => dest_out_bin(5),
      R => '0'
    );
\dest_out_bin_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(6),
      Q => dest_out_bin(6),
      R => '0'
    );
\dest_out_bin_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(7),
      Q => dest_out_bin(7),
      R => '0'
    );
\dest_out_bin_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(8),
      Q => dest_out_bin(8),
      R => '0'
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(3),
      O => gray_enc(3)
    );
\src_gray_ff[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(5),
      I1 => src_in_bin(4),
      O => gray_enc(4)
    );
\src_gray_ff[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(6),
      I1 => src_in_bin(5),
      O => gray_enc(5)
    );
\src_gray_ff[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(7),
      I1 => src_in_bin(6),
      O => gray_enc(6)
    );
\src_gray_ff[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(8),
      I1 => src_in_bin(7),
      O => gray_enc(7)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(4),
      Q => async_path(4),
      R => '0'
    );
\src_gray_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(5),
      Q => async_path(5),
      R => '0'
    );
\src_gray_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(6),
      Q => async_path(6),
      R => '0'
    );
\src_gray_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(7),
      Q => async_path(7),
      R => '0'
    );
\src_gray_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(8),
      Q => async_path(8),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Zynq_Design_UART_V1_9_0_0_xpm_cdc_gray__6\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 8 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_gray__6\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_gray__6\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_gray__6\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_gray__6\ : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_gray__6\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_gray__6\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_gray__6\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_gray__6\ : entity is 9;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_gray__6\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_gray__6\ : entity is "GRAY";
end \Zynq_Design_UART_V1_9_0_0_xpm_cdc_gray__6\;

architecture STRUCTURE of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_gray__6\ is
  signal async_path : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal binval : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal gray_enc : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][8]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \src_gray_ff[4]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \src_gray_ff[5]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \src_gray_ff[6]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \src_gray_ff[7]_i_1\ : label is "soft_lutpair17";
begin
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(5),
      Q => \dest_graysync_ff[0]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(6),
      Q => \dest_graysync_ff[0]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(7),
      Q => \dest_graysync_ff[0]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(8),
      Q => \dest_graysync_ff[0]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(5),
      Q => \dest_graysync_ff[1]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(6),
      Q => \dest_graysync_ff[1]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(7),
      Q => \dest_graysync_ff[1]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(8),
      Q => \dest_graysync_ff[1]\(8),
      R => '0'
    );
\dest_out_bin_ff[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(0),
      I1 => \dest_graysync_ff[1]\(2),
      I2 => binval(3),
      I3 => \dest_graysync_ff[1]\(1),
      O => binval(0)
    );
\dest_out_bin_ff[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(1),
      I1 => binval(3),
      I2 => \dest_graysync_ff[1]\(2),
      O => binval(1)
    );
\dest_out_bin_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => binval(3),
      O => binval(2)
    );
\dest_out_bin_ff[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => \dest_graysync_ff[1]\(5),
      I2 => \dest_graysync_ff[1]\(7),
      I3 => \dest_graysync_ff[1]\(8),
      I4 => \dest_graysync_ff[1]\(6),
      I5 => \dest_graysync_ff[1]\(4),
      O => binval(3)
    );
\dest_out_bin_ff[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(4),
      I1 => \dest_graysync_ff[1]\(6),
      I2 => \dest_graysync_ff[1]\(8),
      I3 => \dest_graysync_ff[1]\(7),
      I4 => \dest_graysync_ff[1]\(5),
      O => binval(4)
    );
\dest_out_bin_ff[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(5),
      I1 => \dest_graysync_ff[1]\(7),
      I2 => \dest_graysync_ff[1]\(8),
      I3 => \dest_graysync_ff[1]\(6),
      O => binval(5)
    );
\dest_out_bin_ff[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(6),
      I1 => \dest_graysync_ff[1]\(8),
      I2 => \dest_graysync_ff[1]\(7),
      O => binval(6)
    );
\dest_out_bin_ff[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(7),
      I1 => \dest_graysync_ff[1]\(8),
      O => binval(7)
    );
\dest_out_bin_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(0),
      Q => dest_out_bin(0),
      R => '0'
    );
\dest_out_bin_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(1),
      Q => dest_out_bin(1),
      R => '0'
    );
\dest_out_bin_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(2),
      Q => dest_out_bin(2),
      R => '0'
    );
\dest_out_bin_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(3),
      Q => dest_out_bin(3),
      R => '0'
    );
\dest_out_bin_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(4),
      Q => dest_out_bin(4),
      R => '0'
    );
\dest_out_bin_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(5),
      Q => dest_out_bin(5),
      R => '0'
    );
\dest_out_bin_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(6),
      Q => dest_out_bin(6),
      R => '0'
    );
\dest_out_bin_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(7),
      Q => dest_out_bin(7),
      R => '0'
    );
\dest_out_bin_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(8),
      Q => dest_out_bin(8),
      R => '0'
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(3),
      O => gray_enc(3)
    );
\src_gray_ff[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(5),
      I1 => src_in_bin(4),
      O => gray_enc(4)
    );
\src_gray_ff[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(6),
      I1 => src_in_bin(5),
      O => gray_enc(5)
    );
\src_gray_ff[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(7),
      I1 => src_in_bin(6),
      O => gray_enc(6)
    );
\src_gray_ff[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(8),
      I1 => src_in_bin(7),
      O => gray_enc(7)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(4),
      Q => async_path(4),
      R => '0'
    );
\src_gray_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(5),
      Q => async_path(5),
      R => '0'
    );
\src_gray_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(6),
      Q => async_path(6),
      R => '0'
    );
\src_gray_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(7),
      Q => async_path(7),
      R => '0'
    );
\src_gray_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(8),
      Q => async_path(8),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_UART_V1_9_0_0_xpm_cdc_single is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of Zynq_Design_UART_V1_9_0_0_xpm_cdc_single : entity is 5;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of Zynq_Design_UART_V1_9_0_0_xpm_cdc_single : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_Design_UART_V1_9_0_0_xpm_cdc_single : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of Zynq_Design_UART_V1_9_0_0_xpm_cdc_single : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of Zynq_Design_UART_V1_9_0_0_xpm_cdc_single : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of Zynq_Design_UART_V1_9_0_0_xpm_cdc_single : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of Zynq_Design_UART_V1_9_0_0_xpm_cdc_single : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of Zynq_Design_UART_V1_9_0_0_xpm_cdc_single : entity is "SINGLE";
end Zynq_Design_UART_V1_9_0_0_xpm_cdc_single;

architecture STRUCTURE of Zynq_Design_UART_V1_9_0_0_xpm_cdc_single is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[4]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[4]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[4]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(4);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
\syncstages_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(3),
      Q => syncstages_ff(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Zynq_Design_UART_V1_9_0_0_xpm_cdc_single__4\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_single__4\ : entity is 5;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_single__4\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_single__4\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_single__4\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_single__4\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_single__4\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_single__4\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_single__4\ : entity is "SINGLE";
end \Zynq_Design_UART_V1_9_0_0_xpm_cdc_single__4\;

architecture STRUCTURE of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_single__4\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[4]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[4]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[4]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(4);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
\syncstages_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(3),
      Q => syncstages_ff(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Zynq_Design_UART_V1_9_0_0_xpm_cdc_single__5\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_single__5\ : entity is 5;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_single__5\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_single__5\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_single__5\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_single__5\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_single__5\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_single__5\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_single__5\ : entity is "SINGLE";
end \Zynq_Design_UART_V1_9_0_0_xpm_cdc_single__5\;

architecture STRUCTURE of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_single__5\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[4]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[4]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[4]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(4);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
\syncstages_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(3),
      Q => syncstages_ff(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Zynq_Design_UART_V1_9_0_0_xpm_cdc_single__6\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_single__6\ : entity is 5;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_single__6\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_single__6\ : entity is "xpm_cdc_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_single__6\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_single__6\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_single__6\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_single__6\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_single__6\ : entity is "SINGLE";
end \Zynq_Design_UART_V1_9_0_0_xpm_cdc_single__6\;

architecture STRUCTURE of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_single__6\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[4]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[4]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[4]\ : label is "SINGLE";
begin
  dest_out <= syncstages_ff(4);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => src_in,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
\syncstages_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(3),
      Q => syncstages_ff(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_UART_V1_9_0_0_xpm_cdc_sync_rst is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of Zynq_Design_UART_V1_9_0_0_xpm_cdc_sync_rst : entity is "1'b1";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of Zynq_Design_UART_V1_9_0_0_xpm_cdc_sync_rst : entity is 5;
  attribute INIT : string;
  attribute INIT of Zynq_Design_UART_V1_9_0_0_xpm_cdc_sync_rst : entity is "1";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of Zynq_Design_UART_V1_9_0_0_xpm_cdc_sync_rst : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_Design_UART_V1_9_0_0_xpm_cdc_sync_rst : entity is "xpm_cdc_sync_rst";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of Zynq_Design_UART_V1_9_0_0_xpm_cdc_sync_rst : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of Zynq_Design_UART_V1_9_0_0_xpm_cdc_sync_rst : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of Zynq_Design_UART_V1_9_0_0_xpm_cdc_sync_rst : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of Zynq_Design_UART_V1_9_0_0_xpm_cdc_sync_rst : entity is "SYNC_RST";
end Zynq_Design_UART_V1_9_0_0_xpm_cdc_sync_rst;

architecture STRUCTURE of Zynq_Design_UART_V1_9_0_0_xpm_cdc_sync_rst is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[4]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[4]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[4]\ : label is "SYNC_RST";
begin
  dest_rst <= syncstages_ff(4);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => src_rst,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
\syncstages_ff_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(3),
      Q => syncstages_ff(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Zynq_Design_UART_V1_9_0_0_xpm_cdc_sync_rst__4\ is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_sync_rst__4\ : entity is "1'b1";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_sync_rst__4\ : entity is 5;
  attribute INIT : string;
  attribute INIT of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_sync_rst__4\ : entity is "1";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_sync_rst__4\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_sync_rst__4\ : entity is "xpm_cdc_sync_rst";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_sync_rst__4\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_sync_rst__4\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_sync_rst__4\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_sync_rst__4\ : entity is "SYNC_RST";
end \Zynq_Design_UART_V1_9_0_0_xpm_cdc_sync_rst__4\;

architecture STRUCTURE of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_sync_rst__4\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[4]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[4]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[4]\ : label is "SYNC_RST";
begin
  dest_rst <= syncstages_ff(4);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => src_rst,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
\syncstages_ff_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(3),
      Q => syncstages_ff(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Zynq_Design_UART_V1_9_0_0_xpm_cdc_sync_rst__5\ is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_sync_rst__5\ : entity is "1'b1";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_sync_rst__5\ : entity is 5;
  attribute INIT : string;
  attribute INIT of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_sync_rst__5\ : entity is "1";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_sync_rst__5\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_sync_rst__5\ : entity is "xpm_cdc_sync_rst";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_sync_rst__5\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_sync_rst__5\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_sync_rst__5\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_sync_rst__5\ : entity is "SYNC_RST";
end \Zynq_Design_UART_V1_9_0_0_xpm_cdc_sync_rst__5\;

architecture STRUCTURE of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_sync_rst__5\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[4]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[4]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[4]\ : label is "SYNC_RST";
begin
  dest_rst <= syncstages_ff(4);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => src_rst,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
\syncstages_ff_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(3),
      Q => syncstages_ff(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Zynq_Design_UART_V1_9_0_0_xpm_cdc_sync_rst__6\ is
  port (
    src_rst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_rst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_sync_rst__6\ : entity is "1'b1";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_sync_rst__6\ : entity is 5;
  attribute INIT : string;
  attribute INIT of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_sync_rst__6\ : entity is "1";
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_sync_rst__6\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_sync_rst__6\ : entity is "xpm_cdc_sync_rst";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_sync_rst__6\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_sync_rst__6\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_sync_rst__6\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_sync_rst__6\ : entity is "SYNC_RST";
end \Zynq_Design_UART_V1_9_0_0_xpm_cdc_sync_rst__6\;

architecture STRUCTURE of \Zynq_Design_UART_V1_9_0_0_xpm_cdc_sync_rst__6\ is
  signal syncstages_ff : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of syncstages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of syncstages_ff : signal is "true";
  attribute xpm_cdc of syncstages_ff : signal is "SYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3]\ : label is "SYNC_RST";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[4]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[4]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[4]\ : label is "SYNC_RST";
begin
  dest_rst <= syncstages_ff(4);
\syncstages_ff_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => src_rst,
      Q => syncstages_ff(0),
      R => '0'
    );
\syncstages_ff_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(0),
      Q => syncstages_ff(1),
      R => '0'
    );
\syncstages_ff_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(1),
      Q => syncstages_ff(2),
      R => '0'
    );
\syncstages_ff_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(2),
      Q => syncstages_ff(3),
      R => '0'
    );
\syncstages_ff_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => syncstages_ff(3),
      Q => syncstages_ff(4),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_UART_V1_9_0_0_blk_mem_gen_prim_wrapper is
  port (
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rd_clk : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    ram_rstram_b : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    ENA_dly_D : in STD_LOGIC;
    FULL_FB : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    ENB_dly_D : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_en : in STD_LOGIC;
    \out\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_Design_UART_V1_9_0_0_blk_mem_gen_prim_wrapper : entity is "blk_mem_gen_prim_wrapper";
end Zynq_Design_UART_V1_9_0_0_blk_mem_gen_prim_wrapper;

architecture STRUCTURE of Zynq_Design_UART_V1_9_0_0_blk_mem_gen_prim_wrapper is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_1\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_10\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_11\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_12\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_13\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_16\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_17\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_18\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_19\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_2\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_20\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_21\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_24\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_25\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_26\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_27\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_28\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_29\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_3\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_32\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_33\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_34\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_35\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_4\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_5\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_8\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_9\ : STD_LOGIC;
  signal ENA_I : STD_LOGIC;
  signal ENB_I : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_MODE => "SDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(13 downto 5) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(8 downto 0),
      ADDRARDADDR(4 downto 0) => B"00000",
      ADDRBWRADDR(13 downto 5) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1\(8 downto 0),
      ADDRBWRADDR(4 downto 0) => B"00000",
      CLKARDCLK => rd_clk,
      CLKBWRCLK => wr_clk,
      DIADI(15 downto 10) => B"000000",
      DIADI(9 downto 8) => din(3 downto 2),
      DIADI(7 downto 2) => B"000000",
      DIADI(1 downto 0) => din(1 downto 0),
      DIBDI(15 downto 10) => B"000000",
      DIBDI(9 downto 8) => din(7 downto 6),
      DIBDI(7 downto 2) => B"000000",
      DIBDI(1 downto 0) => din(5 downto 4),
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_0\,
      DOADO(14) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_1\,
      DOADO(13) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_2\,
      DOADO(12) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_3\,
      DOADO(11) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_4\,
      DOADO(10) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_5\,
      DOADO(9 downto 8) => dout(3 downto 2),
      DOADO(7) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_8\,
      DOADO(6) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_9\,
      DOADO(5) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_10\,
      DOADO(4) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_11\,
      DOADO(3) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_12\,
      DOADO(2) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_13\,
      DOADO(1 downto 0) => dout(1 downto 0),
      DOBDO(15) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_16\,
      DOBDO(14) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_17\,
      DOBDO(13) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_18\,
      DOBDO(12) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_19\,
      DOBDO(11) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_20\,
      DOBDO(10) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_21\,
      DOBDO(9 downto 8) => dout(7 downto 6),
      DOBDO(7) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_24\,
      DOBDO(6) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_25\,
      DOBDO(5) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_26\,
      DOBDO(4) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_27\,
      DOBDO(3) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_28\,
      DOBDO(2) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_29\,
      DOBDO(1 downto 0) => dout(5 downto 4),
      DOPADOP(1) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_32\,
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_33\,
      DOPBDOP(1) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_34\,
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_35\,
      ENARDEN => ENB_I,
      ENBWREN => ENA_I,
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => ram_rstram_b,
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3) => E(0),
      WEBWE(2) => E(0),
      WEBWE(1) => E(0),
      WEBWE(0) => E(0)
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEFE"
    )
        port map (
      I0 => ENB_dly_D,
      I1 => SS(0),
      I2 => rd_en,
      I3 => \out\,
      O => ENB_I
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => ENA_dly_D,
      I1 => FULL_FB,
      I2 => wr_en,
      O => ENA_I
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_UART_V1_9_0_0_blk_mem_gen_prim_wrapper_13 is
  port (
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rd_clk : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    ram_rstram_b : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    ENA_dly_D : in STD_LOGIC;
    FULL_FB : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    ENB_dly_D : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_en : in STD_LOGIC;
    \out\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_Design_UART_V1_9_0_0_blk_mem_gen_prim_wrapper_13 : entity is "blk_mem_gen_prim_wrapper";
end Zynq_Design_UART_V1_9_0_0_blk_mem_gen_prim_wrapper_13;

architecture STRUCTURE of Zynq_Design_UART_V1_9_0_0_blk_mem_gen_prim_wrapper_13 is
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_0\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_1\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_10\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_11\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_12\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_13\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_16\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_17\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_18\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_19\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_2\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_20\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_21\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_24\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_25\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_26\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_27\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_28\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_29\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_3\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_32\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_33\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_34\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_35\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_4\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_5\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_8\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_9\ : STD_LOGIC;
  signal ENA_I : STD_LOGIC;
  signal ENB_I : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_MODE => "SDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(13 downto 5) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(8 downto 0),
      ADDRARDADDR(4 downto 0) => B"00000",
      ADDRBWRADDR(13 downto 5) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1\(8 downto 0),
      ADDRBWRADDR(4 downto 0) => B"00000",
      CLKARDCLK => rd_clk,
      CLKBWRCLK => wr_clk,
      DIADI(15 downto 10) => B"000000",
      DIADI(9 downto 8) => din(3 downto 2),
      DIADI(7 downto 2) => B"000000",
      DIADI(1 downto 0) => din(1 downto 0),
      DIBDI(15 downto 10) => B"000000",
      DIBDI(9 downto 8) => din(7 downto 6),
      DIBDI(7 downto 2) => B"000000",
      DIBDI(1 downto 0) => din(5 downto 4),
      DIPADIP(1 downto 0) => B"00",
      DIPBDIP(1 downto 0) => B"00",
      DOADO(15) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_0\,
      DOADO(14) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_1\,
      DOADO(13) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_2\,
      DOADO(12) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_3\,
      DOADO(11) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_4\,
      DOADO(10) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_5\,
      DOADO(9 downto 8) => dout(3 downto 2),
      DOADO(7) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_8\,
      DOADO(6) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_9\,
      DOADO(5) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_10\,
      DOADO(4) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_11\,
      DOADO(3) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_12\,
      DOADO(2) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_13\,
      DOADO(1 downto 0) => dout(1 downto 0),
      DOBDO(15) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_16\,
      DOBDO(14) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_17\,
      DOBDO(13) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_18\,
      DOBDO(12) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_19\,
      DOBDO(11) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_20\,
      DOBDO(10) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_21\,
      DOBDO(9 downto 8) => dout(7 downto 6),
      DOBDO(7) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_24\,
      DOBDO(6) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_25\,
      DOBDO(5) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_26\,
      DOBDO(4) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_27\,
      DOBDO(3) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_28\,
      DOBDO(2) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_29\,
      DOBDO(1 downto 0) => dout(5 downto 4),
      DOPADOP(1) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_32\,
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_33\,
      DOPBDOP(1) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_34\,
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_n_35\,
      ENARDEN => ENB_I,
      ENBWREN => ENA_I,
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => ram_rstram_b,
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3) => E(0),
      WEBWE(2) => E(0),
      WEBWE(1) => E(0),
      WEBWE(0) => E(0)
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEFE"
    )
        port map (
      I0 => ENB_dly_D,
      I1 => SS(0),
      I2 => rd_en,
      I3 => \out\,
      O => ENB_I
    );
\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => ENA_dly_D,
      I1 => FULL_FB,
      I2 => wr_en,
      O => ENA_I
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_UART_V1_9_0_0_compare is
  port (
    comp1 : out STD_LOGIC;
    \gmux.gm[4].gms.ms_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    v1_reg : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_Design_UART_V1_9_0_0_compare : entity is "compare";
end Zynq_Design_UART_V1_9_0_0_compare;

architecture STRUCTURE of Zynq_Design_UART_V1_9_0_0_compare is
  signal carrynet_0 : STD_LOGIC;
  signal carrynet_1 : STD_LOGIC;
  signal carrynet_2 : STD_LOGIC;
  signal carrynet_3 : STD_LOGIC;
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \gmux.gm[0].gm1.m1_CARRY4\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \gmux.gm[4].gms.ms_CARRY4\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \gmux.gm[4].gms.ms_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \gmux.gm[4].gms.ms_CARRY4\ : label is "PRIMITIVE";
begin
\gmux.gm[0].gm1.m1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carrynet_3,
      CO(2) => carrynet_2,
      CO(1) => carrynet_1,
      CO(0) => carrynet_0,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \gmux.gm[4].gms.ms_0\(3 downto 0)
    );
\gmux.gm[4].gms.ms_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carrynet_3,
      CO(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => comp1,
      CYINIT => '0',
      DI(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\(3 downto 1),
      DI(0) => '0',
      O(3 downto 0) => \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => v1_reg(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_UART_V1_9_0_0_compare_0 is
  port (
    comp2 : out STD_LOGIC;
    ram_full_fb_i_reg : out STD_LOGIC;
    \gmux.gm[4].gms.ms_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    v1_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    comp1 : in STD_LOGIC;
    ram_full_fb_i_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_Design_UART_V1_9_0_0_compare_0 : entity is "compare";
end Zynq_Design_UART_V1_9_0_0_compare_0;

architecture STRUCTURE of Zynq_Design_UART_V1_9_0_0_compare_0 is
  signal carrynet_0 : STD_LOGIC;
  signal carrynet_1 : STD_LOGIC;
  signal carrynet_2 : STD_LOGIC;
  signal carrynet_3 : STD_LOGIC;
  signal \^comp2\ : STD_LOGIC;
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \gmux.gm[0].gm1.m1_CARRY4\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \gmux.gm[4].gms.ms_CARRY4\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \gmux.gm[4].gms.ms_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \gmux.gm[4].gms.ms_CARRY4\ : label is "PRIMITIVE";
begin
  comp2 <= \^comp2\;
\gmux.gm[0].gm1.m1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carrynet_3,
      CO(2) => carrynet_2,
      CO(1) => carrynet_1,
      CO(0) => carrynet_0,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \gmux.gm[4].gms.ms_0\(3 downto 0)
    );
\gmux.gm[4].gms.ms_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carrynet_3,
      CO(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \^comp2\,
      CYINIT => '0',
      DI(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\(3 downto 1),
      DI(0) => '0',
      O(3 downto 0) => \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => v1_reg_0(0)
    );
ram_full_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FF20"
    )
        port map (
      I0 => \^comp2\,
      I1 => \out\,
      I2 => wr_en,
      I3 => comp1,
      I4 => ram_full_fb_i_reg_0,
      O => ram_full_fb_i_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_UART_V1_9_0_0_compare_1 is
  port (
    comp3 : out STD_LOGIC;
    \gmux.gm[4].gms.ms_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    v1_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_Design_UART_V1_9_0_0_compare_1 : entity is "compare";
end Zynq_Design_UART_V1_9_0_0_compare_1;

architecture STRUCTURE of Zynq_Design_UART_V1_9_0_0_compare_1 is
  signal carrynet_0 : STD_LOGIC;
  signal carrynet_1 : STD_LOGIC;
  signal carrynet_2 : STD_LOGIC;
  signal carrynet_3 : STD_LOGIC;
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \gmux.gm[0].gm1.m1_CARRY4\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \gmux.gm[4].gms.ms_CARRY4\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \gmux.gm[4].gms.ms_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \gmux.gm[4].gms.ms_CARRY4\ : label is "PRIMITIVE";
begin
\gmux.gm[0].gm1.m1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carrynet_3,
      CO(2) => carrynet_2,
      CO(1) => carrynet_1,
      CO(0) => carrynet_0,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \gmux.gm[4].gms.ms_0\(3 downto 0)
    );
\gmux.gm[4].gms.ms_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carrynet_3,
      CO(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => comp3,
      CYINIT => '0',
      DI(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\(3 downto 1),
      DI(0) => '0',
      O(3 downto 0) => \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => v1_reg_1(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_UART_V1_9_0_0_compare_16 is
  port (
    comp1 : out STD_LOGIC;
    \gmux.gm[4].gms.ms_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    v1_reg : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_Design_UART_V1_9_0_0_compare_16 : entity is "compare";
end Zynq_Design_UART_V1_9_0_0_compare_16;

architecture STRUCTURE of Zynq_Design_UART_V1_9_0_0_compare_16 is
  signal carrynet_0 : STD_LOGIC;
  signal carrynet_1 : STD_LOGIC;
  signal carrynet_2 : STD_LOGIC;
  signal carrynet_3 : STD_LOGIC;
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \gmux.gm[0].gm1.m1_CARRY4\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \gmux.gm[4].gms.ms_CARRY4\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \gmux.gm[4].gms.ms_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \gmux.gm[4].gms.ms_CARRY4\ : label is "PRIMITIVE";
begin
\gmux.gm[0].gm1.m1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carrynet_3,
      CO(2) => carrynet_2,
      CO(1) => carrynet_1,
      CO(0) => carrynet_0,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \gmux.gm[4].gms.ms_0\(3 downto 0)
    );
\gmux.gm[4].gms.ms_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carrynet_3,
      CO(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => comp1,
      CYINIT => '0',
      DI(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\(3 downto 1),
      DI(0) => '0',
      O(3 downto 0) => \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => v1_reg(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_UART_V1_9_0_0_compare_17 is
  port (
    comp2 : out STD_LOGIC;
    ram_full_fb_i_reg : out STD_LOGIC;
    \gmux.gm[4].gms.ms_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    v1_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    comp1 : in STD_LOGIC;
    ram_full_fb_i_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_Design_UART_V1_9_0_0_compare_17 : entity is "compare";
end Zynq_Design_UART_V1_9_0_0_compare_17;

architecture STRUCTURE of Zynq_Design_UART_V1_9_0_0_compare_17 is
  signal carrynet_0 : STD_LOGIC;
  signal carrynet_1 : STD_LOGIC;
  signal carrynet_2 : STD_LOGIC;
  signal carrynet_3 : STD_LOGIC;
  signal \^comp2\ : STD_LOGIC;
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \gmux.gm[0].gm1.m1_CARRY4\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \gmux.gm[4].gms.ms_CARRY4\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \gmux.gm[4].gms.ms_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \gmux.gm[4].gms.ms_CARRY4\ : label is "PRIMITIVE";
begin
  comp2 <= \^comp2\;
\gmux.gm[0].gm1.m1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carrynet_3,
      CO(2) => carrynet_2,
      CO(1) => carrynet_1,
      CO(0) => carrynet_0,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \gmux.gm[4].gms.ms_0\(3 downto 0)
    );
\gmux.gm[4].gms.ms_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carrynet_3,
      CO(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \^comp2\,
      CYINIT => '0',
      DI(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\(3 downto 1),
      DI(0) => '0',
      O(3 downto 0) => \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => v1_reg_0(0)
    );
ram_full_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FF20"
    )
        port map (
      I0 => \^comp2\,
      I1 => \out\,
      I2 => wr_en,
      I3 => comp1,
      I4 => ram_full_fb_i_reg_0,
      O => ram_full_fb_i_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_UART_V1_9_0_0_compare_18 is
  port (
    comp3 : out STD_LOGIC;
    \gmux.gm[4].gms.ms_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    v1_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_Design_UART_V1_9_0_0_compare_18 : entity is "compare";
end Zynq_Design_UART_V1_9_0_0_compare_18;

architecture STRUCTURE of Zynq_Design_UART_V1_9_0_0_compare_18 is
  signal carrynet_0 : STD_LOGIC;
  signal carrynet_1 : STD_LOGIC;
  signal carrynet_2 : STD_LOGIC;
  signal carrynet_3 : STD_LOGIC;
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \gmux.gm[0].gm1.m1_CARRY4\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \gmux.gm[4].gms.ms_CARRY4\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \gmux.gm[4].gms.ms_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \gmux.gm[4].gms.ms_CARRY4\ : label is "PRIMITIVE";
begin
\gmux.gm[0].gm1.m1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carrynet_3,
      CO(2) => carrynet_2,
      CO(1) => carrynet_1,
      CO(0) => carrynet_0,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \gmux.gm[4].gms.ms_0\(3 downto 0)
    );
\gmux.gm[4].gms.ms_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carrynet_3,
      CO(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => comp3,
      CYINIT => '0',
      DI(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\(3 downto 1),
      DI(0) => '0',
      O(3 downto 0) => \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => v1_reg_1(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_UART_V1_9_0_0_compare_2 is
  port (
    \ram_empty_fb_i0__1\ : out STD_LOGIC;
    v1_reg : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_empty_fb_i_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_en : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    comp1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_Design_UART_V1_9_0_0_compare_2 : entity is "compare";
end Zynq_Design_UART_V1_9_0_0_compare_2;

architecture STRUCTURE of Zynq_Design_UART_V1_9_0_0_compare_2 is
  signal carrynet_0 : STD_LOGIC;
  signal carrynet_1 : STD_LOGIC;
  signal carrynet_2 : STD_LOGIC;
  signal carrynet_3 : STD_LOGIC;
  signal comp0 : STD_LOGIC;
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \gmux.gm[0].gm1.m1_CARRY4\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \gmux.gm[4].gms.ms_CARRY4\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \gmux.gm[4].gms.ms_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \gmux.gm[4].gms.ms_CARRY4\ : label is "PRIMITIVE";
begin
\gmux.gm[0].gm1.m1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carrynet_3,
      CO(2) => carrynet_2,
      CO(1) => carrynet_1,
      CO(0) => carrynet_0,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => v1_reg(3 downto 0)
    );
\gmux.gm[4].gms.ms_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carrynet_3,
      CO(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => comp0,
      CYINIT => '0',
      DI(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\(3 downto 1),
      DI(0) => '0',
      O(3 downto 0) => \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => ram_empty_fb_i_reg(0)
    );
ram_empty_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEAA"
    )
        port map (
      I0 => comp0,
      I1 => rd_en,
      I2 => \out\,
      I3 => comp1,
      O => \ram_empty_fb_i0__1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_UART_V1_9_0_0_compare_21 is
  port (
    \ram_empty_fb_i0__1\ : out STD_LOGIC;
    v1_reg : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_empty_fb_i_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_en : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    comp1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_Design_UART_V1_9_0_0_compare_21 : entity is "compare";
end Zynq_Design_UART_V1_9_0_0_compare_21;

architecture STRUCTURE of Zynq_Design_UART_V1_9_0_0_compare_21 is
  signal carrynet_0 : STD_LOGIC;
  signal carrynet_1 : STD_LOGIC;
  signal carrynet_2 : STD_LOGIC;
  signal carrynet_3 : STD_LOGIC;
  signal comp0 : STD_LOGIC;
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \gmux.gm[0].gm1.m1_CARRY4\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \gmux.gm[4].gms.ms_CARRY4\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \gmux.gm[4].gms.ms_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \gmux.gm[4].gms.ms_CARRY4\ : label is "PRIMITIVE";
begin
\gmux.gm[0].gm1.m1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carrynet_3,
      CO(2) => carrynet_2,
      CO(1) => carrynet_1,
      CO(0) => carrynet_0,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => v1_reg(3 downto 0)
    );
\gmux.gm[4].gms.ms_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carrynet_3,
      CO(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => comp0,
      CYINIT => '0',
      DI(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\(3 downto 1),
      DI(0) => '0',
      O(3 downto 0) => \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => ram_empty_fb_i_reg(0)
    );
ram_empty_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEAA"
    )
        port map (
      I0 => comp0,
      I1 => rd_en,
      I2 => \out\,
      I3 => comp1,
      O => \ram_empty_fb_i0__1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_UART_V1_9_0_0_compare_22 is
  port (
    comp1 : out STD_LOGIC;
    \gae.ram_almost_empty_i_reg\ : out STD_LOGIC;
    v1_reg_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gae.ram_almost_empty_i_reg_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    almost_empty : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    comp2 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_Design_UART_V1_9_0_0_compare_22 : entity is "compare";
end Zynq_Design_UART_V1_9_0_0_compare_22;

architecture STRUCTURE of Zynq_Design_UART_V1_9_0_0_compare_22 is
  signal carrynet_0 : STD_LOGIC;
  signal carrynet_1 : STD_LOGIC;
  signal carrynet_2 : STD_LOGIC;
  signal carrynet_3 : STD_LOGIC;
  signal \^comp1\ : STD_LOGIC;
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \gmux.gm[0].gm1.m1_CARRY4\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \gmux.gm[4].gms.ms_CARRY4\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \gmux.gm[4].gms.ms_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \gmux.gm[4].gms.ms_CARRY4\ : label is "PRIMITIVE";
begin
  comp1 <= \^comp1\;
\gae.ram_almost_empty_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8B8B8"
    )
        port map (
      I0 => almost_empty,
      I1 => \out\,
      I2 => \^comp1\,
      I3 => rd_en,
      I4 => comp2,
      O => \gae.ram_almost_empty_i_reg\
    );
\gmux.gm[0].gm1.m1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carrynet_3,
      CO(2) => carrynet_2,
      CO(1) => carrynet_1,
      CO(0) => carrynet_0,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => v1_reg_0(3 downto 0)
    );
\gmux.gm[4].gms.ms_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carrynet_3,
      CO(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \^comp1\,
      CYINIT => '0',
      DI(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\(3 downto 1),
      DI(0) => '0',
      O(3 downto 0) => \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => \gae.ram_almost_empty_i_reg_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_UART_V1_9_0_0_compare_23 is
  port (
    comp2 : out STD_LOGIC;
    v1_reg_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gae.ram_almost_empty_i_reg\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_Design_UART_V1_9_0_0_compare_23 : entity is "compare";
end Zynq_Design_UART_V1_9_0_0_compare_23;

architecture STRUCTURE of Zynq_Design_UART_V1_9_0_0_compare_23 is
  signal carrynet_0 : STD_LOGIC;
  signal carrynet_1 : STD_LOGIC;
  signal carrynet_2 : STD_LOGIC;
  signal carrynet_3 : STD_LOGIC;
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \gmux.gm[0].gm1.m1_CARRY4\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \gmux.gm[4].gms.ms_CARRY4\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \gmux.gm[4].gms.ms_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \gmux.gm[4].gms.ms_CARRY4\ : label is "PRIMITIVE";
begin
\gmux.gm[0].gm1.m1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carrynet_3,
      CO(2) => carrynet_2,
      CO(1) => carrynet_1,
      CO(0) => carrynet_0,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => v1_reg_1(3 downto 0)
    );
\gmux.gm[4].gms.ms_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carrynet_3,
      CO(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => comp2,
      CYINIT => '0',
      DI(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\(3 downto 1),
      DI(0) => '0',
      O(3 downto 0) => \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => \gae.ram_almost_empty_i_reg\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_UART_V1_9_0_0_compare_3 is
  port (
    comp1 : out STD_LOGIC;
    \gae.ram_almost_empty_i_reg\ : out STD_LOGIC;
    v1_reg_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gae.ram_almost_empty_i_reg_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    almost_empty : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    comp2 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_Design_UART_V1_9_0_0_compare_3 : entity is "compare";
end Zynq_Design_UART_V1_9_0_0_compare_3;

architecture STRUCTURE of Zynq_Design_UART_V1_9_0_0_compare_3 is
  signal carrynet_0 : STD_LOGIC;
  signal carrynet_1 : STD_LOGIC;
  signal carrynet_2 : STD_LOGIC;
  signal carrynet_3 : STD_LOGIC;
  signal \^comp1\ : STD_LOGIC;
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \gmux.gm[0].gm1.m1_CARRY4\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \gmux.gm[4].gms.ms_CARRY4\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \gmux.gm[4].gms.ms_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \gmux.gm[4].gms.ms_CARRY4\ : label is "PRIMITIVE";
begin
  comp1 <= \^comp1\;
\gae.ram_almost_empty_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8B8B8"
    )
        port map (
      I0 => almost_empty,
      I1 => \out\,
      I2 => \^comp1\,
      I3 => rd_en,
      I4 => comp2,
      O => \gae.ram_almost_empty_i_reg\
    );
\gmux.gm[0].gm1.m1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carrynet_3,
      CO(2) => carrynet_2,
      CO(1) => carrynet_1,
      CO(0) => carrynet_0,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => v1_reg_0(3 downto 0)
    );
\gmux.gm[4].gms.ms_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carrynet_3,
      CO(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \^comp1\,
      CYINIT => '0',
      DI(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\(3 downto 1),
      DI(0) => '0',
      O(3 downto 0) => \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => \gae.ram_almost_empty_i_reg_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_UART_V1_9_0_0_compare_4 is
  port (
    comp2 : out STD_LOGIC;
    v1_reg_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gae.ram_almost_empty_i_reg\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_Design_UART_V1_9_0_0_compare_4 : entity is "compare";
end Zynq_Design_UART_V1_9_0_0_compare_4;

architecture STRUCTURE of Zynq_Design_UART_V1_9_0_0_compare_4 is
  signal carrynet_0 : STD_LOGIC;
  signal carrynet_1 : STD_LOGIC;
  signal carrynet_2 : STD_LOGIC;
  signal carrynet_3 : STD_LOGIC;
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \gmux.gm[0].gm1.m1_CARRY4\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \gmux.gm[4].gms.ms_CARRY4\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \gmux.gm[4].gms.ms_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \gmux.gm[4].gms.ms_CARRY4\ : label is "PRIMITIVE";
begin
\gmux.gm[0].gm1.m1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carrynet_3,
      CO(2) => carrynet_2,
      CO(1) => carrynet_1,
      CO(0) => carrynet_0,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => v1_reg_1(3 downto 0)
    );
\gmux.gm[4].gms.ms_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carrynet_3,
      CO(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => comp2,
      CYINIT => '0',
      DI(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\(3 downto 1),
      DI(0) => '0',
      O(3 downto 0) => \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => \gae.ram_almost_empty_i_reg\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_UART_V1_9_0_0_rd_bin_cntr is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    v1_reg : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gc1.count_d2_reg[8]_0\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    v1_reg_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    v1_reg_1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gc1.count_d1_reg[8]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    WR_PNTR_RD : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_Design_UART_V1_9_0_0_rd_bin_cntr : entity is "rd_bin_cntr";
end Zynq_Design_UART_V1_9_0_0_rd_bin_cntr;

architecture STRUCTURE of Zynq_Design_UART_V1_9_0_0_rd_bin_cntr is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gc1.count[8]_i_2_n_0\ : STD_LOGIC;
  signal \^gc1.count_d1_reg[8]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^gc1.count_d2_reg[8]_0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rd_pntr_plus2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gc1.count[0]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \gc1.count[2]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \gc1.count[3]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \gc1.count[4]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \gc1.count[7]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \gc1.count[8]_i_1\ : label is "soft_lutpair23";
begin
  Q(0) <= \^q\(0);
  \gc1.count_d1_reg[8]_0\(0) <= \^gc1.count_d1_reg[8]_0\(0);
  \gc1.count_d2_reg[8]_0\(8 downto 0) <= \^gc1.count_d2_reg[8]_0\(8 downto 0);
\gc1.count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rd_pntr_plus2(0),
      O => \plusOp__0\(0)
    );
\gc1.count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_pntr_plus2(0),
      I1 => rd_pntr_plus2(1),
      O => \plusOp__0\(1)
    );
\gc1.count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => rd_pntr_plus2(0),
      I1 => rd_pntr_plus2(1),
      I2 => rd_pntr_plus2(2),
      O => \plusOp__0\(2)
    );
\gc1.count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => rd_pntr_plus2(1),
      I1 => rd_pntr_plus2(0),
      I2 => rd_pntr_plus2(2),
      I3 => rd_pntr_plus2(3),
      O => \plusOp__0\(3)
    );
\gc1.count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => rd_pntr_plus2(2),
      I1 => rd_pntr_plus2(0),
      I2 => rd_pntr_plus2(1),
      I3 => rd_pntr_plus2(3),
      I4 => rd_pntr_plus2(4),
      O => \plusOp__0\(4)
    );
\gc1.count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => rd_pntr_plus2(3),
      I1 => rd_pntr_plus2(1),
      I2 => rd_pntr_plus2(0),
      I3 => rd_pntr_plus2(2),
      I4 => rd_pntr_plus2(4),
      I5 => rd_pntr_plus2(5),
      O => \plusOp__0\(5)
    );
\gc1.count[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gc1.count[8]_i_2_n_0\,
      I1 => rd_pntr_plus2(6),
      O => \plusOp__0\(6)
    );
\gc1.count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \gc1.count[8]_i_2_n_0\,
      I1 => rd_pntr_plus2(6),
      I2 => rd_pntr_plus2(7),
      O => \plusOp__0\(7)
    );
\gc1.count[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => rd_pntr_plus2(6),
      I1 => \gc1.count[8]_i_2_n_0\,
      I2 => rd_pntr_plus2(7),
      I3 => \^q\(0),
      O => \plusOp__0\(8)
    );
\gc1.count[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => rd_pntr_plus2(5),
      I1 => rd_pntr_plus2(3),
      I2 => rd_pntr_plus2(1),
      I3 => rd_pntr_plus2(0),
      I4 => rd_pntr_plus2(2),
      I5 => rd_pntr_plus2(4),
      O => \gc1.count[8]_i_2_n_0\
    );
\gc1.count_d1_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => rd_pntr_plus2(0),
      Q => rd_pntr_plus1(0),
      S => SS(0)
    );
\gc1.count_d1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => rd_pntr_plus2(1),
      Q => rd_pntr_plus1(1),
      R => SS(0)
    );
\gc1.count_d1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => rd_pntr_plus2(2),
      Q => rd_pntr_plus1(2),
      R => SS(0)
    );
\gc1.count_d1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => rd_pntr_plus2(3),
      Q => rd_pntr_plus1(3),
      R => SS(0)
    );
\gc1.count_d1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => rd_pntr_plus2(4),
      Q => rd_pntr_plus1(4),
      R => SS(0)
    );
\gc1.count_d1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => rd_pntr_plus2(5),
      Q => rd_pntr_plus1(5),
      R => SS(0)
    );
\gc1.count_d1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => rd_pntr_plus2(6),
      Q => rd_pntr_plus1(6),
      R => SS(0)
    );
\gc1.count_d1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => rd_pntr_plus2(7),
      Q => rd_pntr_plus1(7),
      R => SS(0)
    );
\gc1.count_d1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \^q\(0),
      Q => \^gc1.count_d1_reg[8]_0\(0),
      R => SS(0)
    );
\gc1.count_d2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => rd_pntr_plus1(0),
      Q => \^gc1.count_d2_reg[8]_0\(0),
      R => SS(0)
    );
\gc1.count_d2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => rd_pntr_plus1(1),
      Q => \^gc1.count_d2_reg[8]_0\(1),
      R => SS(0)
    );
\gc1.count_d2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => rd_pntr_plus1(2),
      Q => \^gc1.count_d2_reg[8]_0\(2),
      R => SS(0)
    );
\gc1.count_d2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => rd_pntr_plus1(3),
      Q => \^gc1.count_d2_reg[8]_0\(3),
      R => SS(0)
    );
\gc1.count_d2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => rd_pntr_plus1(4),
      Q => \^gc1.count_d2_reg[8]_0\(4),
      R => SS(0)
    );
\gc1.count_d2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => rd_pntr_plus1(5),
      Q => \^gc1.count_d2_reg[8]_0\(5),
      R => SS(0)
    );
\gc1.count_d2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => rd_pntr_plus1(6),
      Q => \^gc1.count_d2_reg[8]_0\(6),
      R => SS(0)
    );
\gc1.count_d2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => rd_pntr_plus1(7),
      Q => \^gc1.count_d2_reg[8]_0\(7),
      R => SS(0)
    );
\gc1.count_d2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \^gc1.count_d1_reg[8]_0\(0),
      Q => \^gc1.count_d2_reg[8]_0\(8),
      R => SS(0)
    );
\gc1.count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \plusOp__0\(0),
      Q => rd_pntr_plus2(0),
      R => SS(0)
    );
\gc1.count_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \plusOp__0\(1),
      Q => rd_pntr_plus2(1),
      S => SS(0)
    );
\gc1.count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \plusOp__0\(2),
      Q => rd_pntr_plus2(2),
      R => SS(0)
    );
\gc1.count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \plusOp__0\(3),
      Q => rd_pntr_plus2(3),
      R => SS(0)
    );
\gc1.count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \plusOp__0\(4),
      Q => rd_pntr_plus2(4),
      R => SS(0)
    );
\gc1.count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \plusOp__0\(5),
      Q => rd_pntr_plus2(5),
      R => SS(0)
    );
\gc1.count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \plusOp__0\(6),
      Q => rd_pntr_plus2(6),
      R => SS(0)
    );
\gc1.count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \plusOp__0\(7),
      Q => rd_pntr_plus2(7),
      R => SS(0)
    );
\gc1.count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \plusOp__0\(8),
      Q => \^q\(0),
      R => SS(0)
    );
\gmux.gm[0].gm1.m1_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gc1.count_d2_reg[8]_0\(0),
      I1 => WR_PNTR_RD(0),
      I2 => \^gc1.count_d2_reg[8]_0\(1),
      I3 => WR_PNTR_RD(1),
      O => v1_reg(0)
    );
\gmux.gm[0].gm1.m1_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rd_pntr_plus1(0),
      I1 => WR_PNTR_RD(0),
      I2 => rd_pntr_plus1(1),
      I3 => WR_PNTR_RD(1),
      O => v1_reg_0(0)
    );
\gmux.gm[0].gm1.m1_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rd_pntr_plus2(0),
      I1 => WR_PNTR_RD(0),
      I2 => rd_pntr_plus2(1),
      I3 => WR_PNTR_RD(1),
      O => v1_reg_1(0)
    );
\gmux.gm[1].gms.ms_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gc1.count_d2_reg[8]_0\(2),
      I1 => WR_PNTR_RD(2),
      I2 => \^gc1.count_d2_reg[8]_0\(3),
      I3 => WR_PNTR_RD(3),
      O => v1_reg(1)
    );
\gmux.gm[1].gms.ms_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rd_pntr_plus1(2),
      I1 => WR_PNTR_RD(2),
      I2 => rd_pntr_plus1(3),
      I3 => WR_PNTR_RD(3),
      O => v1_reg_0(1)
    );
\gmux.gm[1].gms.ms_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rd_pntr_plus2(2),
      I1 => WR_PNTR_RD(2),
      I2 => rd_pntr_plus2(3),
      I3 => WR_PNTR_RD(3),
      O => v1_reg_1(1)
    );
\gmux.gm[2].gms.ms_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gc1.count_d2_reg[8]_0\(4),
      I1 => WR_PNTR_RD(4),
      I2 => \^gc1.count_d2_reg[8]_0\(5),
      I3 => WR_PNTR_RD(5),
      O => v1_reg(2)
    );
\gmux.gm[2].gms.ms_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rd_pntr_plus1(4),
      I1 => WR_PNTR_RD(4),
      I2 => rd_pntr_plus1(5),
      I3 => WR_PNTR_RD(5),
      O => v1_reg_0(2)
    );
\gmux.gm[2].gms.ms_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rd_pntr_plus2(4),
      I1 => WR_PNTR_RD(4),
      I2 => rd_pntr_plus2(5),
      I3 => WR_PNTR_RD(5),
      O => v1_reg_1(2)
    );
\gmux.gm[3].gms.ms_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gc1.count_d2_reg[8]_0\(6),
      I1 => WR_PNTR_RD(6),
      I2 => \^gc1.count_d2_reg[8]_0\(7),
      I3 => WR_PNTR_RD(7),
      O => v1_reg(3)
    );
\gmux.gm[3].gms.ms_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rd_pntr_plus1(6),
      I1 => WR_PNTR_RD(6),
      I2 => rd_pntr_plus1(7),
      I3 => WR_PNTR_RD(7),
      O => v1_reg_0(3)
    );
\gmux.gm[3].gms.ms_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rd_pntr_plus2(6),
      I1 => WR_PNTR_RD(6),
      I2 => rd_pntr_plus2(7),
      I3 => WR_PNTR_RD(7),
      O => v1_reg_1(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_UART_V1_9_0_0_rd_bin_cntr_20 is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    v1_reg : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gc1.count_d2_reg[8]_0\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    v1_reg_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    v1_reg_1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gc1.count_d1_reg[8]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    WR_PNTR_RD : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_Design_UART_V1_9_0_0_rd_bin_cntr_20 : entity is "rd_bin_cntr";
end Zynq_Design_UART_V1_9_0_0_rd_bin_cntr_20;

architecture STRUCTURE of Zynq_Design_UART_V1_9_0_0_rd_bin_cntr_20 is
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gc1.count[8]_i_2_n_0\ : STD_LOGIC;
  signal \^gc1.count_d1_reg[8]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^gc1.count_d2_reg[8]_0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rd_pntr_plus2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gc1.count[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \gc1.count[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \gc1.count[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \gc1.count[4]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \gc1.count[7]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \gc1.count[8]_i_1\ : label is "soft_lutpair9";
begin
  Q(0) <= \^q\(0);
  \gc1.count_d1_reg[8]_0\(0) <= \^gc1.count_d1_reg[8]_0\(0);
  \gc1.count_d2_reg[8]_0\(8 downto 0) <= \^gc1.count_d2_reg[8]_0\(8 downto 0);
\gc1.count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rd_pntr_plus2(0),
      O => \plusOp__0\(0)
    );
\gc1.count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_pntr_plus2(0),
      I1 => rd_pntr_plus2(1),
      O => \plusOp__0\(1)
    );
\gc1.count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => rd_pntr_plus2(0),
      I1 => rd_pntr_plus2(1),
      I2 => rd_pntr_plus2(2),
      O => \plusOp__0\(2)
    );
\gc1.count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => rd_pntr_plus2(1),
      I1 => rd_pntr_plus2(0),
      I2 => rd_pntr_plus2(2),
      I3 => rd_pntr_plus2(3),
      O => \plusOp__0\(3)
    );
\gc1.count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => rd_pntr_plus2(2),
      I1 => rd_pntr_plus2(0),
      I2 => rd_pntr_plus2(1),
      I3 => rd_pntr_plus2(3),
      I4 => rd_pntr_plus2(4),
      O => \plusOp__0\(4)
    );
\gc1.count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => rd_pntr_plus2(3),
      I1 => rd_pntr_plus2(1),
      I2 => rd_pntr_plus2(0),
      I3 => rd_pntr_plus2(2),
      I4 => rd_pntr_plus2(4),
      I5 => rd_pntr_plus2(5),
      O => \plusOp__0\(5)
    );
\gc1.count[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gc1.count[8]_i_2_n_0\,
      I1 => rd_pntr_plus2(6),
      O => \plusOp__0\(6)
    );
\gc1.count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \gc1.count[8]_i_2_n_0\,
      I1 => rd_pntr_plus2(6),
      I2 => rd_pntr_plus2(7),
      O => \plusOp__0\(7)
    );
\gc1.count[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => rd_pntr_plus2(6),
      I1 => \gc1.count[8]_i_2_n_0\,
      I2 => rd_pntr_plus2(7),
      I3 => \^q\(0),
      O => \plusOp__0\(8)
    );
\gc1.count[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => rd_pntr_plus2(5),
      I1 => rd_pntr_plus2(3),
      I2 => rd_pntr_plus2(1),
      I3 => rd_pntr_plus2(0),
      I4 => rd_pntr_plus2(2),
      I5 => rd_pntr_plus2(4),
      O => \gc1.count[8]_i_2_n_0\
    );
\gc1.count_d1_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => rd_pntr_plus2(0),
      Q => rd_pntr_plus1(0),
      S => SS(0)
    );
\gc1.count_d1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => rd_pntr_plus2(1),
      Q => rd_pntr_plus1(1),
      R => SS(0)
    );
\gc1.count_d1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => rd_pntr_plus2(2),
      Q => rd_pntr_plus1(2),
      R => SS(0)
    );
\gc1.count_d1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => rd_pntr_plus2(3),
      Q => rd_pntr_plus1(3),
      R => SS(0)
    );
\gc1.count_d1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => rd_pntr_plus2(4),
      Q => rd_pntr_plus1(4),
      R => SS(0)
    );
\gc1.count_d1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => rd_pntr_plus2(5),
      Q => rd_pntr_plus1(5),
      R => SS(0)
    );
\gc1.count_d1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => rd_pntr_plus2(6),
      Q => rd_pntr_plus1(6),
      R => SS(0)
    );
\gc1.count_d1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => rd_pntr_plus2(7),
      Q => rd_pntr_plus1(7),
      R => SS(0)
    );
\gc1.count_d1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \^q\(0),
      Q => \^gc1.count_d1_reg[8]_0\(0),
      R => SS(0)
    );
\gc1.count_d2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => rd_pntr_plus1(0),
      Q => \^gc1.count_d2_reg[8]_0\(0),
      R => SS(0)
    );
\gc1.count_d2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => rd_pntr_plus1(1),
      Q => \^gc1.count_d2_reg[8]_0\(1),
      R => SS(0)
    );
\gc1.count_d2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => rd_pntr_plus1(2),
      Q => \^gc1.count_d2_reg[8]_0\(2),
      R => SS(0)
    );
\gc1.count_d2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => rd_pntr_plus1(3),
      Q => \^gc1.count_d2_reg[8]_0\(3),
      R => SS(0)
    );
\gc1.count_d2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => rd_pntr_plus1(4),
      Q => \^gc1.count_d2_reg[8]_0\(4),
      R => SS(0)
    );
\gc1.count_d2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => rd_pntr_plus1(5),
      Q => \^gc1.count_d2_reg[8]_0\(5),
      R => SS(0)
    );
\gc1.count_d2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => rd_pntr_plus1(6),
      Q => \^gc1.count_d2_reg[8]_0\(6),
      R => SS(0)
    );
\gc1.count_d2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => rd_pntr_plus1(7),
      Q => \^gc1.count_d2_reg[8]_0\(7),
      R => SS(0)
    );
\gc1.count_d2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \^gc1.count_d1_reg[8]_0\(0),
      Q => \^gc1.count_d2_reg[8]_0\(8),
      R => SS(0)
    );
\gc1.count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \plusOp__0\(0),
      Q => rd_pntr_plus2(0),
      R => SS(0)
    );
\gc1.count_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \plusOp__0\(1),
      Q => rd_pntr_plus2(1),
      S => SS(0)
    );
\gc1.count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \plusOp__0\(2),
      Q => rd_pntr_plus2(2),
      R => SS(0)
    );
\gc1.count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \plusOp__0\(3),
      Q => rd_pntr_plus2(3),
      R => SS(0)
    );
\gc1.count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \plusOp__0\(4),
      Q => rd_pntr_plus2(4),
      R => SS(0)
    );
\gc1.count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \plusOp__0\(5),
      Q => rd_pntr_plus2(5),
      R => SS(0)
    );
\gc1.count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \plusOp__0\(6),
      Q => rd_pntr_plus2(6),
      R => SS(0)
    );
\gc1.count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \plusOp__0\(7),
      Q => rd_pntr_plus2(7),
      R => SS(0)
    );
\gc1.count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => \plusOp__0\(8),
      Q => \^q\(0),
      R => SS(0)
    );
\gmux.gm[0].gm1.m1_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gc1.count_d2_reg[8]_0\(0),
      I1 => WR_PNTR_RD(0),
      I2 => \^gc1.count_d2_reg[8]_0\(1),
      I3 => WR_PNTR_RD(1),
      O => v1_reg(0)
    );
\gmux.gm[0].gm1.m1_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rd_pntr_plus1(0),
      I1 => WR_PNTR_RD(0),
      I2 => rd_pntr_plus1(1),
      I3 => WR_PNTR_RD(1),
      O => v1_reg_0(0)
    );
\gmux.gm[0].gm1.m1_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rd_pntr_plus2(0),
      I1 => WR_PNTR_RD(0),
      I2 => rd_pntr_plus2(1),
      I3 => WR_PNTR_RD(1),
      O => v1_reg_1(0)
    );
\gmux.gm[1].gms.ms_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gc1.count_d2_reg[8]_0\(2),
      I1 => WR_PNTR_RD(2),
      I2 => \^gc1.count_d2_reg[8]_0\(3),
      I3 => WR_PNTR_RD(3),
      O => v1_reg(1)
    );
\gmux.gm[1].gms.ms_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rd_pntr_plus1(2),
      I1 => WR_PNTR_RD(2),
      I2 => rd_pntr_plus1(3),
      I3 => WR_PNTR_RD(3),
      O => v1_reg_0(1)
    );
\gmux.gm[1].gms.ms_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rd_pntr_plus2(2),
      I1 => WR_PNTR_RD(2),
      I2 => rd_pntr_plus2(3),
      I3 => WR_PNTR_RD(3),
      O => v1_reg_1(1)
    );
\gmux.gm[2].gms.ms_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gc1.count_d2_reg[8]_0\(4),
      I1 => WR_PNTR_RD(4),
      I2 => \^gc1.count_d2_reg[8]_0\(5),
      I3 => WR_PNTR_RD(5),
      O => v1_reg(2)
    );
\gmux.gm[2].gms.ms_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rd_pntr_plus1(4),
      I1 => WR_PNTR_RD(4),
      I2 => rd_pntr_plus1(5),
      I3 => WR_PNTR_RD(5),
      O => v1_reg_0(2)
    );
\gmux.gm[2].gms.ms_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rd_pntr_plus2(4),
      I1 => WR_PNTR_RD(4),
      I2 => rd_pntr_plus2(5),
      I3 => WR_PNTR_RD(5),
      O => v1_reg_1(2)
    );
\gmux.gm[3].gms.ms_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^gc1.count_d2_reg[8]_0\(6),
      I1 => WR_PNTR_RD(6),
      I2 => \^gc1.count_d2_reg[8]_0\(7),
      I3 => WR_PNTR_RD(7),
      O => v1_reg(3)
    );
\gmux.gm[3].gms.ms_i_1__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rd_pntr_plus1(6),
      I1 => WR_PNTR_RD(6),
      I2 => rd_pntr_plus1(7),
      I3 => WR_PNTR_RD(7),
      O => v1_reg_0(3)
    );
\gmux.gm[3].gms.ms_i_1__4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rd_pntr_plus2(6),
      I1 => WR_PNTR_RD(6),
      I2 => rd_pntr_plus2(7),
      I3 => WR_PNTR_RD(7),
      O => v1_reg_1(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_UART_V1_9_0_0_wr_bin_cntr is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    v1_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    v1_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    v1_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gic0.gc1.count_d1_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \gic0.gc1.count_d2_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \gic0.gc1.count_d3_reg[8]_0\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    RD_PNTR_WR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gic0.gc1.count_d3_reg[0]_0\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_Design_UART_V1_9_0_0_wr_bin_cntr : entity is "wr_bin_cntr";
end Zynq_Design_UART_V1_9_0_0_wr_bin_cntr;

architecture STRUCTURE of Zynq_Design_UART_V1_9_0_0_wr_bin_cntr is
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \gic0.gc1.count[8]_i_2_n_0\ : STD_LOGIC;
  signal \^gic0.gc1.count_d1_reg[7]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^gic0.gc1.count_d2_reg[7]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_14_out : STD_LOGIC_VECTOR ( 8 to 8 );
  signal plusOp : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal wr_pntr_plus2 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal wr_pntr_plus3 : STD_LOGIC_VECTOR ( 8 to 8 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gic0.gc1.count[0]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \gic0.gc1.count[1]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \gic0.gc1.count[3]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \gic0.gc1.count[4]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \gic0.gc1.count[7]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \gic0.gc1.count[8]_i_1\ : label is "soft_lutpair26";
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
  \gic0.gc1.count_d1_reg[7]_0\(7 downto 0) <= \^gic0.gc1.count_d1_reg[7]_0\(7 downto 0);
  \gic0.gc1.count_d2_reg[7]_0\(7 downto 0) <= \^gic0.gc1.count_d2_reg[7]_0\(7 downto 0);
\gic0.gc1.count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => plusOp(0)
    );
\gic0.gc1.count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => plusOp(1)
    );
\gic0.gc1.count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => plusOp(2)
    );
\gic0.gc1.count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => plusOp(3)
    );
\gic0.gc1.count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => plusOp(4)
    );
\gic0.gc1.count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(4),
      I5 => \^q\(5),
      O => plusOp(5)
    );
\gic0.gc1.count[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gic0.gc1.count[8]_i_2_n_0\,
      I1 => \^q\(6),
      O => plusOp(6)
    );
\gic0.gc1.count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \gic0.gc1.count[8]_i_2_n_0\,
      I1 => \^q\(6),
      I2 => \^q\(7),
      O => plusOp(7)
    );
\gic0.gc1.count[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gic0.gc1.count[8]_i_2_n_0\,
      I2 => \^q\(7),
      I3 => wr_pntr_plus3(8),
      O => plusOp(8)
    );
\gic0.gc1.count[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(2),
      I5 => \^q\(4),
      O => \gic0.gc1.count[8]_i_2_n_0\
    );
\gic0.gc1.count_d1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^q\(0),
      Q => \^gic0.gc1.count_d1_reg[7]_0\(0),
      R => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_d1_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^q\(1),
      Q => \^gic0.gc1.count_d1_reg[7]_0\(1),
      S => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_d1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^q\(2),
      Q => \^gic0.gc1.count_d1_reg[7]_0\(2),
      R => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_d1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^q\(3),
      Q => \^gic0.gc1.count_d1_reg[7]_0\(3),
      R => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_d1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^q\(4),
      Q => \^gic0.gc1.count_d1_reg[7]_0\(4),
      R => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_d1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^q\(5),
      Q => \^gic0.gc1.count_d1_reg[7]_0\(5),
      R => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_d1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^q\(6),
      Q => \^gic0.gc1.count_d1_reg[7]_0\(6),
      R => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_d1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^q\(7),
      Q => \^gic0.gc1.count_d1_reg[7]_0\(7),
      R => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_d1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => wr_pntr_plus3(8),
      Q => wr_pntr_plus2(8),
      R => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_d2_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^gic0.gc1.count_d1_reg[7]_0\(0),
      Q => \^gic0.gc1.count_d2_reg[7]_0\(0),
      S => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_d2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^gic0.gc1.count_d1_reg[7]_0\(1),
      Q => \^gic0.gc1.count_d2_reg[7]_0\(1),
      R => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_d2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^gic0.gc1.count_d1_reg[7]_0\(2),
      Q => \^gic0.gc1.count_d2_reg[7]_0\(2),
      R => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_d2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^gic0.gc1.count_d1_reg[7]_0\(3),
      Q => \^gic0.gc1.count_d2_reg[7]_0\(3),
      R => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_d2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^gic0.gc1.count_d1_reg[7]_0\(4),
      Q => \^gic0.gc1.count_d2_reg[7]_0\(4),
      R => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_d2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^gic0.gc1.count_d1_reg[7]_0\(5),
      Q => \^gic0.gc1.count_d2_reg[7]_0\(5),
      R => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_d2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^gic0.gc1.count_d1_reg[7]_0\(6),
      Q => \^gic0.gc1.count_d2_reg[7]_0\(6),
      R => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_d2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^gic0.gc1.count_d1_reg[7]_0\(7),
      Q => \^gic0.gc1.count_d2_reg[7]_0\(7),
      R => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_d2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => wr_pntr_plus2(8),
      Q => p_14_out(8),
      R => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_d3_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^gic0.gc1.count_d2_reg[7]_0\(0),
      Q => \gic0.gc1.count_d3_reg[8]_0\(0),
      R => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_d3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^gic0.gc1.count_d2_reg[7]_0\(1),
      Q => \gic0.gc1.count_d3_reg[8]_0\(1),
      R => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_d3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^gic0.gc1.count_d2_reg[7]_0\(2),
      Q => \gic0.gc1.count_d3_reg[8]_0\(2),
      R => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_d3_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^gic0.gc1.count_d2_reg[7]_0\(3),
      Q => \gic0.gc1.count_d3_reg[8]_0\(3),
      R => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_d3_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^gic0.gc1.count_d2_reg[7]_0\(4),
      Q => \gic0.gc1.count_d3_reg[8]_0\(4),
      R => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_d3_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^gic0.gc1.count_d2_reg[7]_0\(5),
      Q => \gic0.gc1.count_d3_reg[8]_0\(5),
      R => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_d3_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^gic0.gc1.count_d2_reg[7]_0\(6),
      Q => \gic0.gc1.count_d3_reg[8]_0\(6),
      R => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_d3_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^gic0.gc1.count_d2_reg[7]_0\(7),
      Q => \gic0.gc1.count_d3_reg[8]_0\(7),
      R => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_d3_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => p_14_out(8),
      Q => \gic0.gc1.count_d3_reg[8]_0\(8),
      R => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => plusOp(0),
      Q => \^q\(0),
      S => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => plusOp(1),
      Q => \^q\(1),
      S => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => plusOp(2),
      Q => \^q\(2),
      R => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => plusOp(3),
      Q => \^q\(3),
      R => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => plusOp(4),
      Q => \^q\(4),
      R => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => plusOp(5),
      Q => \^q\(5),
      R => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => plusOp(6),
      Q => \^q\(6),
      R => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => plusOp(7),
      Q => \^q\(7),
      R => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => plusOp(8),
      Q => wr_pntr_plus3(8),
      R => \gic0.gc1.count_d3_reg[0]_0\
    );
\gmux.gm[4].gms.ms_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_14_out(8),
      I1 => RD_PNTR_WR(0),
      O => v1_reg(0)
    );
\gmux.gm[4].gms.ms_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => wr_pntr_plus2(8),
      I1 => RD_PNTR_WR(0),
      O => v1_reg_0(0)
    );
\gmux.gm[4].gms.ms_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => wr_pntr_plus3(8),
      I1 => RD_PNTR_WR(0),
      O => v1_reg_1(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_UART_V1_9_0_0_wr_bin_cntr_15 is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    v1_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    v1_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    v1_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gic0.gc1.count_d1_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \gic0.gc1.count_d2_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \gic0.gc1.count_d3_reg[8]_0\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    RD_PNTR_WR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gic0.gc1.count_d3_reg[0]_0\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_Design_UART_V1_9_0_0_wr_bin_cntr_15 : entity is "wr_bin_cntr";
end Zynq_Design_UART_V1_9_0_0_wr_bin_cntr_15;

architecture STRUCTURE of Zynq_Design_UART_V1_9_0_0_wr_bin_cntr_15 is
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \gic0.gc1.count[8]_i_2_n_0\ : STD_LOGIC;
  signal \^gic0.gc1.count_d1_reg[7]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^gic0.gc1.count_d2_reg[7]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_14_out : STD_LOGIC_VECTOR ( 8 to 8 );
  signal plusOp : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal wr_pntr_plus2 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal wr_pntr_plus3 : STD_LOGIC_VECTOR ( 8 to 8 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gic0.gc1.count[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \gic0.gc1.count[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \gic0.gc1.count[3]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \gic0.gc1.count[4]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \gic0.gc1.count[7]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \gic0.gc1.count[8]_i_1\ : label is "soft_lutpair12";
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
  \gic0.gc1.count_d1_reg[7]_0\(7 downto 0) <= \^gic0.gc1.count_d1_reg[7]_0\(7 downto 0);
  \gic0.gc1.count_d2_reg[7]_0\(7 downto 0) <= \^gic0.gc1.count_d2_reg[7]_0\(7 downto 0);
\gic0.gc1.count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => plusOp(0)
    );
\gic0.gc1.count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => plusOp(1)
    );
\gic0.gc1.count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => plusOp(2)
    );
\gic0.gc1.count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => plusOp(3)
    );
\gic0.gc1.count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => plusOp(4)
    );
\gic0.gc1.count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(4),
      I5 => \^q\(5),
      O => plusOp(5)
    );
\gic0.gc1.count[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gic0.gc1.count[8]_i_2_n_0\,
      I1 => \^q\(6),
      O => plusOp(6)
    );
\gic0.gc1.count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \gic0.gc1.count[8]_i_2_n_0\,
      I1 => \^q\(6),
      I2 => \^q\(7),
      O => plusOp(7)
    );
\gic0.gc1.count[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(6),
      I1 => \gic0.gc1.count[8]_i_2_n_0\,
      I2 => \^q\(7),
      I3 => wr_pntr_plus3(8),
      O => plusOp(8)
    );
\gic0.gc1.count[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(2),
      I5 => \^q\(4),
      O => \gic0.gc1.count[8]_i_2_n_0\
    );
\gic0.gc1.count_d1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^q\(0),
      Q => \^gic0.gc1.count_d1_reg[7]_0\(0),
      R => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_d1_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^q\(1),
      Q => \^gic0.gc1.count_d1_reg[7]_0\(1),
      S => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_d1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^q\(2),
      Q => \^gic0.gc1.count_d1_reg[7]_0\(2),
      R => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_d1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^q\(3),
      Q => \^gic0.gc1.count_d1_reg[7]_0\(3),
      R => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_d1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^q\(4),
      Q => \^gic0.gc1.count_d1_reg[7]_0\(4),
      R => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_d1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^q\(5),
      Q => \^gic0.gc1.count_d1_reg[7]_0\(5),
      R => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_d1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^q\(6),
      Q => \^gic0.gc1.count_d1_reg[7]_0\(6),
      R => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_d1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^q\(7),
      Q => \^gic0.gc1.count_d1_reg[7]_0\(7),
      R => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_d1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => wr_pntr_plus3(8),
      Q => wr_pntr_plus2(8),
      R => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_d2_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^gic0.gc1.count_d1_reg[7]_0\(0),
      Q => \^gic0.gc1.count_d2_reg[7]_0\(0),
      S => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_d2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^gic0.gc1.count_d1_reg[7]_0\(1),
      Q => \^gic0.gc1.count_d2_reg[7]_0\(1),
      R => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_d2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^gic0.gc1.count_d1_reg[7]_0\(2),
      Q => \^gic0.gc1.count_d2_reg[7]_0\(2),
      R => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_d2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^gic0.gc1.count_d1_reg[7]_0\(3),
      Q => \^gic0.gc1.count_d2_reg[7]_0\(3),
      R => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_d2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^gic0.gc1.count_d1_reg[7]_0\(4),
      Q => \^gic0.gc1.count_d2_reg[7]_0\(4),
      R => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_d2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^gic0.gc1.count_d1_reg[7]_0\(5),
      Q => \^gic0.gc1.count_d2_reg[7]_0\(5),
      R => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_d2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^gic0.gc1.count_d1_reg[7]_0\(6),
      Q => \^gic0.gc1.count_d2_reg[7]_0\(6),
      R => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_d2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^gic0.gc1.count_d1_reg[7]_0\(7),
      Q => \^gic0.gc1.count_d2_reg[7]_0\(7),
      R => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_d2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => wr_pntr_plus2(8),
      Q => p_14_out(8),
      R => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_d3_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^gic0.gc1.count_d2_reg[7]_0\(0),
      Q => \gic0.gc1.count_d3_reg[8]_0\(0),
      R => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_d3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^gic0.gc1.count_d2_reg[7]_0\(1),
      Q => \gic0.gc1.count_d3_reg[8]_0\(1),
      R => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_d3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^gic0.gc1.count_d2_reg[7]_0\(2),
      Q => \gic0.gc1.count_d3_reg[8]_0\(2),
      R => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_d3_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^gic0.gc1.count_d2_reg[7]_0\(3),
      Q => \gic0.gc1.count_d3_reg[8]_0\(3),
      R => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_d3_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^gic0.gc1.count_d2_reg[7]_0\(4),
      Q => \gic0.gc1.count_d3_reg[8]_0\(4),
      R => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_d3_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^gic0.gc1.count_d2_reg[7]_0\(5),
      Q => \gic0.gc1.count_d3_reg[8]_0\(5),
      R => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_d3_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^gic0.gc1.count_d2_reg[7]_0\(6),
      Q => \gic0.gc1.count_d3_reg[8]_0\(6),
      R => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_d3_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^gic0.gc1.count_d2_reg[7]_0\(7),
      Q => \gic0.gc1.count_d3_reg[8]_0\(7),
      R => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_d3_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => p_14_out(8),
      Q => \gic0.gc1.count_d3_reg[8]_0\(8),
      R => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => plusOp(0),
      Q => \^q\(0),
      S => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => plusOp(1),
      Q => \^q\(1),
      S => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => plusOp(2),
      Q => \^q\(2),
      R => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => plusOp(3),
      Q => \^q\(3),
      R => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => plusOp(4),
      Q => \^q\(4),
      R => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => plusOp(5),
      Q => \^q\(5),
      R => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => plusOp(6),
      Q => \^q\(6),
      R => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => plusOp(7),
      Q => \^q\(7),
      R => \gic0.gc1.count_d3_reg[0]_0\
    );
\gic0.gc1.count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => plusOp(8),
      Q => wr_pntr_plus3(8),
      R => \gic0.gc1.count_d3_reg[0]_0\
    );
\gmux.gm[4].gms.ms_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_14_out(8),
      I1 => RD_PNTR_WR(0),
      O => v1_reg(0)
    );
\gmux.gm[4].gms.ms_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => wr_pntr_plus2(8),
      I1 => RD_PNTR_WR(0),
      O => v1_reg_0(0)
    );
\gmux.gm[4].gms.ms_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => wr_pntr_plus3(8),
      I1 => RD_PNTR_WR(0),
      O => v1_reg_1(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_UART_V1_9_0_0_TOP_BD_Debouncer_0_0 is
  port (
    Reset_Out : out STD_LOGIC;
    CLK100MHz : in STD_LOGIC;
    Reset_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_Design_UART_V1_9_0_0_TOP_BD_Debouncer_0_0 : entity is "TOP_BD_Debouncer_0_0";
end Zynq_Design_UART_V1_9_0_0_TOP_BD_Debouncer_0_0;

architecture STRUCTURE of Zynq_Design_UART_V1_9_0_0_TOP_BD_Debouncer_0_0 is
begin
U0: entity work.Zynq_Design_UART_V1_9_0_0_Debouncer
     port map (
      CLK100MHz => CLK100MHz,
      Reset_0 => Reset_0,
      Reset_Out => Reset_Out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_UART_V1_9_0_0_TOP_BD_Reset_Controller_0_0 is
  port (
    rst : out STD_LOGIC;
    CLK100MHz : in STD_LOGIC;
    Reset_Out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_Design_UART_V1_9_0_0_TOP_BD_Reset_Controller_0_0 : entity is "TOP_BD_Reset_Controller_0_0";
end Zynq_Design_UART_V1_9_0_0_TOP_BD_Reset_Controller_0_0;

architecture STRUCTURE of Zynq_Design_UART_V1_9_0_0_TOP_BD_Reset_Controller_0_0 is
begin
U0: entity work.Zynq_Design_UART_V1_9_0_0_Reset_Controller
     port map (
      CLK100MHz => CLK100MHz,
      Reset_Out => Reset_Out,
      rst => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_UART_V1_9_0_0_TOP_BD_UART_0_0 is
  port (
    UART_0_Tx_FIFO_CLK : out STD_LOGIC;
    UART_0_Tx : out STD_LOGIC;
    CLK : out STD_LOGIC;
    rd_en : out STD_LOGIC;
    wr_en : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK100MHz : in STD_LOGIC;
    almost_full : in STD_LOGIC;
    full : in STD_LOGIC;
    empty : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Rx : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_Design_UART_V1_9_0_0_TOP_BD_UART_0_0 : entity is "TOP_BD_UART_0_0";
end Zynq_Design_UART_V1_9_0_0_TOP_BD_UART_0_0;

architecture STRUCTURE of Zynq_Design_UART_V1_9_0_0_TOP_BD_UART_0_0 is
begin
U0: entity work.Zynq_Design_UART_V1_9_0_0_UART
     port map (
      CLK100MHz => CLK100MHz,
      CLK9600_8_D_reg_0 => CLK,
      CLK9600_D_reg_0 => UART_0_Tx_FIFO_CLK,
      D(7 downto 0) => D(7 downto 0),
      Q(7 downto 0) => Q(7 downto 0),
      Rx => Rx,
      UART_0_Tx => UART_0_Tx,
      almost_full => almost_full,
      empty => empty,
      full => full,
      rd_en => rd_en,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_UART_V1_9_0_0_TOP_BD_UART_Debug_0_0 is
  port (
    Tx : out STD_LOGIC;
    CLK100MHz : in STD_LOGIC;
    UART_Debug_Enable : in STD_LOGIC;
    UART_0_Tx : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_Design_UART_V1_9_0_0_TOP_BD_UART_Debug_0_0 : entity is "TOP_BD_UART_Debug_0_0";
end Zynq_Design_UART_V1_9_0_0_TOP_BD_UART_Debug_0_0;

architecture STRUCTURE of Zynq_Design_UART_V1_9_0_0_TOP_BD_UART_Debug_0_0 is
begin
U0: entity work.Zynq_Design_UART_V1_9_0_0_UART_Debug
     port map (
      CLK100MHz => CLK100MHz,
      Tx => Tx,
      UART_0_Tx => UART_0_Tx,
      UART_Debug_Enable => UART_Debug_Enable
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_UART_V1_9_0_0_blk_mem_gen_prim_width is
  port (
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    POR_B : out STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    ram_rstram_b : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    FULL_FB : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    \out\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_Design_UART_V1_9_0_0_blk_mem_gen_prim_width : entity is "blk_mem_gen_prim_width";
end Zynq_Design_UART_V1_9_0_0_blk_mem_gen_prim_width;

architecture STRUCTURE of Zynq_Design_UART_V1_9_0_0_blk_mem_gen_prim_width is
  signal ENA_dly_D : STD_LOGIC;
  signal ENB_dly : STD_LOGIC;
  signal ENB_dly_D : STD_LOGIC;
  signal \^por_b\ : STD_LOGIC;
  signal RSTA_SHFT_REG : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal RSTB_SHFT_REG : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_n_0\ : STD_LOGIC;
  signal \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0\ : STD_LOGIC;
  signal \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3_n_0\ : STD_LOGIC;
  signal p_1_out : STD_LOGIC;
  signal p_3_out : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2\ : label is "U0/\TOP_BD_i/Transmit_Buffer /U0/\inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop ";
  attribute srl_name : string;
  attribute srl_name of \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2\ : label is "U0/\TOP_BD_i/Transmit_Buffer /U0/\inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2 ";
  attribute srl_bus_name of \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3\ : label is "U0/\TOP_BD_i/Transmit_Buffer /U0/\inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/SAFETY_CKT_GEN.RSTA_SHFT_REG_reg ";
  attribute srl_name of \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3\ : label is "U0/\TOP_BD_i/Transmit_Buffer /U0/\inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3 ";
  attribute srl_bus_name of \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3\ : label is "U0/\TOP_BD_i/Transmit_Buffer /U0/\inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/SAFETY_CKT_GEN.RSTB_SHFT_REG_reg ";
  attribute srl_name of \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3\ : label is "U0/\TOP_BD_i/Transmit_Buffer /U0/\inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3 ";
begin
  POR_B <= \^por_b\;
\SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_D_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_n_0\,
      Q => ENA_dly_D,
      R => '0'
    );
\SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => wr_clk,
      D => p_3_out,
      Q => \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_n_0\
    );
\SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => RSTA_SHFT_REG(0),
      I1 => RSTA_SHFT_REG(4),
      O => p_3_out
    );
\SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_D_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => ENB_dly,
      Q => ENB_dly_D,
      R => '0'
    );
\SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \^por_b\,
      Q => ENB_dly,
      S => SS(0)
    );
\SAFETY_CKT_GEN.POR_B_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => RSTB_SHFT_REG(0),
      I1 => RSTB_SHFT_REG(4),
      O => p_1_out
    );
\SAFETY_CKT_GEN.POR_B_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => p_1_out,
      Q => \^por_b\,
      R => '0'
    );
\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => '1',
      Q => RSTA_SHFT_REG(0),
      R => '0'
    );
\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => wr_clk,
      D => RSTA_SHFT_REG(0),
      Q => \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0\
    );
\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0\,
      Q => RSTA_SHFT_REG(4),
      R => '0'
    );
\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => '1',
      Q => RSTB_SHFT_REG(0),
      R => '0'
    );
\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => rd_clk,
      D => RSTB_SHFT_REG(0),
      Q => \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3_n_0\
    );
\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3_n_0\,
      Q => RSTB_SHFT_REG(4),
      R => '0'
    );
\prim_noinit.ram\: entity work.Zynq_Design_UART_V1_9_0_0_blk_mem_gen_prim_wrapper
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(8 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(8 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1\(8 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(8 downto 0),
      E(0) => E(0),
      ENA_dly_D => ENA_dly_D,
      ENB_dly_D => ENB_dly_D,
      FULL_FB => FULL_FB,
      SS(0) => SS(0),
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      \out\ => \out\,
      ram_rstram_b => ram_rstram_b,
      rd_clk => rd_clk,
      rd_en => rd_en,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_UART_V1_9_0_0_blk_mem_gen_prim_width_12 is
  port (
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    POR_B : out STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    ram_rstram_b : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    FULL_FB : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    \out\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_Design_UART_V1_9_0_0_blk_mem_gen_prim_width_12 : entity is "blk_mem_gen_prim_width";
end Zynq_Design_UART_V1_9_0_0_blk_mem_gen_prim_width_12;

architecture STRUCTURE of Zynq_Design_UART_V1_9_0_0_blk_mem_gen_prim_width_12 is
  signal ENA_dly_D : STD_LOGIC;
  signal ENB_dly : STD_LOGIC;
  signal ENB_dly_D : STD_LOGIC;
  signal \^por_b\ : STD_LOGIC;
  signal RSTA_SHFT_REG : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal RSTB_SHFT_REG : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_n_0\ : STD_LOGIC;
  signal \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0\ : STD_LOGIC;
  signal \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3_n_0\ : STD_LOGIC;
  signal p_1_out : STD_LOGIC;
  signal p_3_out : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2\ : label is "U0/\TOP_BD_i/Receive_Buffer /U0/\inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop ";
  attribute srl_name : string;
  attribute srl_name of \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2\ : label is "U0/\TOP_BD_i/Receive_Buffer /U0/\inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2 ";
  attribute srl_bus_name of \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3\ : label is "U0/\TOP_BD_i/Receive_Buffer /U0/\inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/SAFETY_CKT_GEN.RSTA_SHFT_REG_reg ";
  attribute srl_name of \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3\ : label is "U0/\TOP_BD_i/Receive_Buffer /U0/\inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3 ";
  attribute srl_bus_name of \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3\ : label is "U0/\TOP_BD_i/Receive_Buffer /U0/\inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/SAFETY_CKT_GEN.RSTB_SHFT_REG_reg ";
  attribute srl_name of \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3\ : label is "U0/\TOP_BD_i/Receive_Buffer /U0/\inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3 ";
begin
  POR_B <= \^por_b\;
\SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_D_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_n_0\,
      Q => ENA_dly_D,
      R => '0'
    );
\SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '1',
      A1 => '0',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => wr_clk,
      D => p_3_out,
      Q => \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_n_0\
    );
\SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg_srl2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => RSTA_SHFT_REG(0),
      I1 => RSTA_SHFT_REG(4),
      O => p_3_out
    );
\SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_D_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => ENB_dly,
      Q => ENB_dly_D,
      R => '0'
    );
\SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \^por_b\,
      Q => ENB_dly,
      S => SS(0)
    );
\SAFETY_CKT_GEN.POR_B_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => RSTB_SHFT_REG(0),
      I1 => RSTB_SHFT_REG(4),
      O => p_1_out
    );
\SAFETY_CKT_GEN.POR_B_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => p_1_out,
      Q => \^por_b\,
      R => '0'
    );
\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => '1',
      Q => RSTA_SHFT_REG(0),
      R => '0'
    );
\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => wr_clk,
      D => RSTA_SHFT_REG(0),
      Q => \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0\
    );
\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0\,
      Q => RSTA_SHFT_REG(4),
      R => '0'
    );
\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => '1',
      Q => RSTB_SHFT_REG(0),
      R => '0'
    );
\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
        port map (
      A0 => '0',
      A1 => '1',
      A2 => '0',
      A3 => '0',
      CE => '1',
      CLK => rd_clk,
      D => RSTB_SHFT_REG(0),
      Q => \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3_n_0\
    );
\SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \SAFETY_CKT_GEN.RSTB_SHFT_REG_reg[3]_srl3_n_0\,
      Q => RSTB_SHFT_REG(4),
      R => '0'
    );
\prim_noinit.ram\: entity work.Zynq_Design_UART_V1_9_0_0_blk_mem_gen_prim_wrapper_13
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(8 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(8 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_1\(8 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(8 downto 0),
      E(0) => E(0),
      ENA_dly_D => ENA_dly_D,
      ENB_dly_D => ENB_dly_D,
      FULL_FB => FULL_FB,
      SS(0) => SS(0),
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      \out\ => \out\,
      ram_rstram_b => ram_rstram_b,
      rd_clk => rd_clk,
      rd_en => rd_en,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_UART_V1_9_0_0_clk_x_pntrs is
  port (
    v1_reg : out STD_LOGIC_VECTOR ( 3 downto 0 );
    RD_PNTR_WR : out STD_LOGIC_VECTOR ( 0 to 0 );
    v1_reg_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    v1_reg_1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    v1_reg_2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    WR_PNTR_RD : out STD_LOGIC_VECTOR ( 7 downto 0 );
    v1_reg_3 : out STD_LOGIC_VECTOR ( 0 to 0 );
    v1_reg_4 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gmux.gm[3].gms.ms\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gmux.gm[3].gms.ms_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \src_gray_ff_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \gmux.gm[4].gms.ms\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gmux.gm[4].gms.ms_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC;
    \src_gray_ff_reg[8]_0\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_Design_UART_V1_9_0_0_clk_x_pntrs : entity is "clk_x_pntrs";
end Zynq_Design_UART_V1_9_0_0_clk_x_pntrs;

architecture STRUCTURE of Zynq_Design_UART_V1_9_0_0_clk_x_pntrs is
  signal p_24_out : STD_LOGIC_VECTOR ( 8 to 8 );
  signal p_25_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of rd_pntr_cdc_inst : label is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of rd_pntr_cdc_inst : label is 0;
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of rd_pntr_cdc_inst : label is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of rd_pntr_cdc_inst : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of rd_pntr_cdc_inst : label is 0;
  attribute VERSION : integer;
  attribute VERSION of rd_pntr_cdc_inst : label is 0;
  attribute WIDTH : integer;
  attribute WIDTH of rd_pntr_cdc_inst : label is 9;
  attribute XPM_CDC : string;
  attribute XPM_CDC of rd_pntr_cdc_inst : label is "GRAY";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of rd_pntr_cdc_inst : label is "TRUE";
  attribute DEST_SYNC_FF of wr_pntr_cdc_inst : label is 2;
  attribute INIT_SYNC_FF of wr_pntr_cdc_inst : label is 0;
  attribute REG_OUTPUT of wr_pntr_cdc_inst : label is 1;
  attribute SIM_ASSERT_CHK of wr_pntr_cdc_inst : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of wr_pntr_cdc_inst : label is 0;
  attribute VERSION of wr_pntr_cdc_inst : label is 0;
  attribute WIDTH of wr_pntr_cdc_inst : label is 9;
  attribute XPM_CDC of wr_pntr_cdc_inst : label is "GRAY";
  attribute XPM_MODULE of wr_pntr_cdc_inst : label is "TRUE";
begin
\gmux.gm[0].gm1.m1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_25_out(0),
      I1 => Q(0),
      I2 => p_25_out(1),
      I3 => Q(1),
      O => v1_reg(0)
    );
\gmux.gm[0].gm1.m1_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_25_out(0),
      I1 => \gmux.gm[3].gms.ms\(0),
      I2 => p_25_out(1),
      I3 => \gmux.gm[3].gms.ms\(1),
      O => v1_reg_0(0)
    );
\gmux.gm[0].gm1.m1_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_25_out(0),
      I1 => \gmux.gm[3].gms.ms_0\(0),
      I2 => p_25_out(1),
      I3 => \gmux.gm[3].gms.ms_0\(1),
      O => v1_reg_1(0)
    );
\gmux.gm[1].gms.ms_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_25_out(2),
      I1 => Q(2),
      I2 => p_25_out(3),
      I3 => Q(3),
      O => v1_reg(1)
    );
\gmux.gm[1].gms.ms_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_25_out(2),
      I1 => \gmux.gm[3].gms.ms\(2),
      I2 => p_25_out(3),
      I3 => \gmux.gm[3].gms.ms\(3),
      O => v1_reg_0(1)
    );
\gmux.gm[1].gms.ms_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_25_out(2),
      I1 => \gmux.gm[3].gms.ms_0\(2),
      I2 => p_25_out(3),
      I3 => \gmux.gm[3].gms.ms_0\(3),
      O => v1_reg_1(1)
    );
\gmux.gm[2].gms.ms_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_25_out(4),
      I1 => Q(4),
      I2 => p_25_out(5),
      I3 => Q(5),
      O => v1_reg(2)
    );
\gmux.gm[2].gms.ms_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_25_out(4),
      I1 => \gmux.gm[3].gms.ms\(4),
      I2 => p_25_out(5),
      I3 => \gmux.gm[3].gms.ms\(5),
      O => v1_reg_0(2)
    );
\gmux.gm[2].gms.ms_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_25_out(4),
      I1 => \gmux.gm[3].gms.ms_0\(4),
      I2 => p_25_out(5),
      I3 => \gmux.gm[3].gms.ms_0\(5),
      O => v1_reg_1(2)
    );
\gmux.gm[3].gms.ms_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_25_out(6),
      I1 => Q(6),
      I2 => p_25_out(7),
      I3 => Q(7),
      O => v1_reg(3)
    );
\gmux.gm[3].gms.ms_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_25_out(6),
      I1 => \gmux.gm[3].gms.ms\(6),
      I2 => p_25_out(7),
      I3 => \gmux.gm[3].gms.ms\(7),
      O => v1_reg_0(3)
    );
\gmux.gm[3].gms.ms_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_25_out(6),
      I1 => \gmux.gm[3].gms.ms_0\(6),
      I2 => p_25_out(7),
      I3 => \gmux.gm[3].gms.ms_0\(7),
      O => v1_reg_1(3)
    );
\gmux.gm[4].gms.ms_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_24_out(8),
      I1 => \src_gray_ff_reg[8]\(8),
      O => v1_reg_2(0)
    );
\gmux.gm[4].gms.ms_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_24_out(8),
      I1 => \gmux.gm[4].gms.ms\(0),
      O => v1_reg_3(0)
    );
\gmux.gm[4].gms.ms_i_1__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_24_out(8),
      I1 => \gmux.gm[4].gms.ms_0\(0),
      O => v1_reg_4(0)
    );
rd_pntr_cdc_inst: entity work.Zynq_Design_UART_V1_9_0_0_xpm_cdc_gray
     port map (
      dest_clk => wr_clk,
      dest_out_bin(8) => RD_PNTR_WR(0),
      dest_out_bin(7 downto 0) => p_25_out(7 downto 0),
      src_clk => rd_clk,
      src_in_bin(8 downto 0) => \src_gray_ff_reg[8]\(8 downto 0)
    );
wr_pntr_cdc_inst: entity work.\Zynq_Design_UART_V1_9_0_0_xpm_cdc_gray__6\
     port map (
      dest_clk => rd_clk,
      dest_out_bin(8) => p_24_out(8),
      dest_out_bin(7 downto 0) => WR_PNTR_RD(7 downto 0),
      src_clk => wr_clk,
      src_in_bin(8 downto 0) => \src_gray_ff_reg[8]_0\(8 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Zynq_Design_UART_V1_9_0_0_clk_x_pntrs__xdcDup__1\ is
  port (
    v1_reg : out STD_LOGIC_VECTOR ( 3 downto 0 );
    RD_PNTR_WR : out STD_LOGIC_VECTOR ( 0 to 0 );
    v1_reg_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    v1_reg_1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    v1_reg_2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    WR_PNTR_RD : out STD_LOGIC_VECTOR ( 7 downto 0 );
    v1_reg_3 : out STD_LOGIC_VECTOR ( 0 to 0 );
    v1_reg_4 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gmux.gm[3].gms.ms\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gmux.gm[3].gms.ms_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \src_gray_ff_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \gmux.gm[4].gms.ms\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gmux.gm[4].gms.ms_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC;
    \src_gray_ff_reg[8]_0\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Zynq_Design_UART_V1_9_0_0_clk_x_pntrs__xdcDup__1\ : entity is "clk_x_pntrs";
end \Zynq_Design_UART_V1_9_0_0_clk_x_pntrs__xdcDup__1\;

architecture STRUCTURE of \Zynq_Design_UART_V1_9_0_0_clk_x_pntrs__xdcDup__1\ is
  signal p_24_out : STD_LOGIC_VECTOR ( 8 to 8 );
  signal p_25_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of rd_pntr_cdc_inst : label is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of rd_pntr_cdc_inst : label is 0;
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of rd_pntr_cdc_inst : label is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of rd_pntr_cdc_inst : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of rd_pntr_cdc_inst : label is 0;
  attribute VERSION : integer;
  attribute VERSION of rd_pntr_cdc_inst : label is 0;
  attribute WIDTH : integer;
  attribute WIDTH of rd_pntr_cdc_inst : label is 9;
  attribute XPM_CDC : string;
  attribute XPM_CDC of rd_pntr_cdc_inst : label is "GRAY";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of rd_pntr_cdc_inst : label is "TRUE";
  attribute DEST_SYNC_FF of wr_pntr_cdc_inst : label is 2;
  attribute INIT_SYNC_FF of wr_pntr_cdc_inst : label is 0;
  attribute REG_OUTPUT of wr_pntr_cdc_inst : label is 1;
  attribute SIM_ASSERT_CHK of wr_pntr_cdc_inst : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of wr_pntr_cdc_inst : label is 0;
  attribute VERSION of wr_pntr_cdc_inst : label is 0;
  attribute WIDTH of wr_pntr_cdc_inst : label is 9;
  attribute XPM_CDC of wr_pntr_cdc_inst : label is "GRAY";
  attribute XPM_MODULE of wr_pntr_cdc_inst : label is "TRUE";
begin
\gmux.gm[0].gm1.m1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_25_out(0),
      I1 => Q(0),
      I2 => p_25_out(1),
      I3 => Q(1),
      O => v1_reg(0)
    );
\gmux.gm[0].gm1.m1_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_25_out(0),
      I1 => \gmux.gm[3].gms.ms\(0),
      I2 => p_25_out(1),
      I3 => \gmux.gm[3].gms.ms\(1),
      O => v1_reg_0(0)
    );
\gmux.gm[0].gm1.m1_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_25_out(0),
      I1 => \gmux.gm[3].gms.ms_0\(0),
      I2 => p_25_out(1),
      I3 => \gmux.gm[3].gms.ms_0\(1),
      O => v1_reg_1(0)
    );
\gmux.gm[1].gms.ms_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_25_out(2),
      I1 => Q(2),
      I2 => p_25_out(3),
      I3 => Q(3),
      O => v1_reg(1)
    );
\gmux.gm[1].gms.ms_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_25_out(2),
      I1 => \gmux.gm[3].gms.ms\(2),
      I2 => p_25_out(3),
      I3 => \gmux.gm[3].gms.ms\(3),
      O => v1_reg_0(1)
    );
\gmux.gm[1].gms.ms_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_25_out(2),
      I1 => \gmux.gm[3].gms.ms_0\(2),
      I2 => p_25_out(3),
      I3 => \gmux.gm[3].gms.ms_0\(3),
      O => v1_reg_1(1)
    );
\gmux.gm[2].gms.ms_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_25_out(4),
      I1 => Q(4),
      I2 => p_25_out(5),
      I3 => Q(5),
      O => v1_reg(2)
    );
\gmux.gm[2].gms.ms_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_25_out(4),
      I1 => \gmux.gm[3].gms.ms\(4),
      I2 => p_25_out(5),
      I3 => \gmux.gm[3].gms.ms\(5),
      O => v1_reg_0(2)
    );
\gmux.gm[2].gms.ms_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_25_out(4),
      I1 => \gmux.gm[3].gms.ms_0\(4),
      I2 => p_25_out(5),
      I3 => \gmux.gm[3].gms.ms_0\(5),
      O => v1_reg_1(2)
    );
\gmux.gm[3].gms.ms_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_25_out(6),
      I1 => Q(6),
      I2 => p_25_out(7),
      I3 => Q(7),
      O => v1_reg(3)
    );
\gmux.gm[3].gms.ms_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_25_out(6),
      I1 => \gmux.gm[3].gms.ms\(6),
      I2 => p_25_out(7),
      I3 => \gmux.gm[3].gms.ms\(7),
      O => v1_reg_0(3)
    );
\gmux.gm[3].gms.ms_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => p_25_out(6),
      I1 => \gmux.gm[3].gms.ms_0\(6),
      I2 => p_25_out(7),
      I3 => \gmux.gm[3].gms.ms_0\(7),
      O => v1_reg_1(3)
    );
\gmux.gm[4].gms.ms_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_24_out(8),
      I1 => \src_gray_ff_reg[8]\(8),
      O => v1_reg_2(0)
    );
\gmux.gm[4].gms.ms_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_24_out(8),
      I1 => \gmux.gm[4].gms.ms\(0),
      O => v1_reg_3(0)
    );
\gmux.gm[4].gms.ms_i_1__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_24_out(8),
      I1 => \gmux.gm[4].gms.ms_0\(0),
      O => v1_reg_4(0)
    );
rd_pntr_cdc_inst: entity work.\Zynq_Design_UART_V1_9_0_0_xpm_cdc_gray__5\
     port map (
      dest_clk => wr_clk,
      dest_out_bin(8) => RD_PNTR_WR(0),
      dest_out_bin(7 downto 0) => p_25_out(7 downto 0),
      src_clk => rd_clk,
      src_in_bin(8 downto 0) => \src_gray_ff_reg[8]\(8 downto 0)
    );
wr_pntr_cdc_inst: entity work.\Zynq_Design_UART_V1_9_0_0_xpm_cdc_gray__4\
     port map (
      dest_clk => rd_clk,
      dest_out_bin(8) => p_24_out(8),
      dest_out_bin(7 downto 0) => WR_PNTR_RD(7 downto 0),
      src_clk => wr_clk,
      src_in_bin(8 downto 0) => \src_gray_ff_reg[8]_0\(8 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_UART_V1_9_0_0_rd_status_flags_as is
  port (
    empty : out STD_LOGIC;
    \out\ : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    v1_reg : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_empty_fb_i_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    v1_reg_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gae.ram_almost_empty_i_reg_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    v1_reg_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gae.ram_almost_empty_i_reg_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_clk : in STD_LOGIC;
    rd_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_Design_UART_V1_9_0_0_rd_status_flags_as : entity is "rd_status_flags_as";
end Zynq_Design_UART_V1_9_0_0_rd_status_flags_as;

architecture STRUCTURE of Zynq_Design_UART_V1_9_0_0_rd_status_flags_as is
  signal \^almost_empty\ : STD_LOGIC;
  signal c1_n_1 : STD_LOGIC;
  signal comp1 : STD_LOGIC;
  signal comp2 : STD_LOGIC;
  signal ram_empty_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_empty_fb_i : signal is std.standard.true;
  signal \ram_empty_fb_i0__1\ : STD_LOGIC;
  signal ram_empty_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_empty_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_empty_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_empty_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_empty_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_empty_i_reg : label is std.standard.true;
  attribute KEEP of ram_empty_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_empty_i_reg : label is "no";
begin
  almost_empty <= \^almost_empty\;
  empty <= ram_empty_i;
  \out\ <= ram_empty_fb_i;
c0: entity work.Zynq_Design_UART_V1_9_0_0_compare_2
     port map (
      comp1 => comp1,
      \out\ => ram_empty_fb_i,
      \ram_empty_fb_i0__1\ => \ram_empty_fb_i0__1\,
      ram_empty_fb_i_reg(0) => ram_empty_fb_i_reg_0(0),
      rd_en => rd_en,
      v1_reg(3 downto 0) => v1_reg(3 downto 0)
    );
c1: entity work.Zynq_Design_UART_V1_9_0_0_compare_3
     port map (
      almost_empty => \^almost_empty\,
      comp1 => comp1,
      comp2 => comp2,
      \gae.ram_almost_empty_i_reg\ => c1_n_1,
      \gae.ram_almost_empty_i_reg_0\(0) => \gae.ram_almost_empty_i_reg_0\(0),
      \out\ => ram_empty_fb_i,
      rd_en => rd_en,
      v1_reg_0(3 downto 0) => v1_reg_0(3 downto 0)
    );
\gae.c2\: entity work.Zynq_Design_UART_V1_9_0_0_compare_4
     port map (
      comp2 => comp2,
      \gae.ram_almost_empty_i_reg\(0) => \gae.ram_almost_empty_i_reg_1\(0),
      v1_reg_1(3 downto 0) => v1_reg_1(3 downto 0)
    );
\gae.ram_almost_empty_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => c1_n_1,
      Q => \^almost_empty\,
      S => SS(0)
    );
\gc1.count_d1[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rd_en,
      I1 => ram_empty_fb_i,
      O => E(0)
    );
ram_empty_fb_i_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \ram_empty_fb_i0__1\,
      Q => ram_empty_fb_i,
      S => SS(0)
    );
ram_empty_i_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \ram_empty_fb_i0__1\,
      Q => ram_empty_i,
      S => SS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_UART_V1_9_0_0_rd_status_flags_as_19 is
  port (
    empty : out STD_LOGIC;
    \out\ : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    v1_reg : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_empty_fb_i_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    v1_reg_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gae.ram_almost_empty_i_reg_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    v1_reg_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gae.ram_almost_empty_i_reg_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_clk : in STD_LOGIC;
    rd_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_Design_UART_V1_9_0_0_rd_status_flags_as_19 : entity is "rd_status_flags_as";
end Zynq_Design_UART_V1_9_0_0_rd_status_flags_as_19;

architecture STRUCTURE of Zynq_Design_UART_V1_9_0_0_rd_status_flags_as_19 is
  signal \^almost_empty\ : STD_LOGIC;
  signal c1_n_1 : STD_LOGIC;
  signal comp1 : STD_LOGIC;
  signal comp2 : STD_LOGIC;
  signal ram_empty_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_empty_fb_i : signal is std.standard.true;
  signal \ram_empty_fb_i0__1\ : STD_LOGIC;
  signal ram_empty_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_empty_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_empty_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_empty_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_empty_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_empty_i_reg : label is std.standard.true;
  attribute KEEP of ram_empty_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_empty_i_reg : label is "no";
begin
  almost_empty <= \^almost_empty\;
  empty <= ram_empty_i;
  \out\ <= ram_empty_fb_i;
c0: entity work.Zynq_Design_UART_V1_9_0_0_compare_21
     port map (
      comp1 => comp1,
      \out\ => ram_empty_fb_i,
      \ram_empty_fb_i0__1\ => \ram_empty_fb_i0__1\,
      ram_empty_fb_i_reg(0) => ram_empty_fb_i_reg_0(0),
      rd_en => rd_en,
      v1_reg(3 downto 0) => v1_reg(3 downto 0)
    );
c1: entity work.Zynq_Design_UART_V1_9_0_0_compare_22
     port map (
      almost_empty => \^almost_empty\,
      comp1 => comp1,
      comp2 => comp2,
      \gae.ram_almost_empty_i_reg\ => c1_n_1,
      \gae.ram_almost_empty_i_reg_0\(0) => \gae.ram_almost_empty_i_reg_0\(0),
      \out\ => ram_empty_fb_i,
      rd_en => rd_en,
      v1_reg_0(3 downto 0) => v1_reg_0(3 downto 0)
    );
\gae.c2\: entity work.Zynq_Design_UART_V1_9_0_0_compare_23
     port map (
      comp2 => comp2,
      \gae.ram_almost_empty_i_reg\(0) => \gae.ram_almost_empty_i_reg_1\(0),
      v1_reg_1(3 downto 0) => v1_reg_1(3 downto 0)
    );
\gae.ram_almost_empty_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => c1_n_1,
      Q => \^almost_empty\,
      S => SS(0)
    );
\gc1.count_d1[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rd_en,
      I1 => ram_empty_fb_i,
      O => E(0)
    );
ram_empty_fb_i_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \ram_empty_fb_i0__1\,
      Q => ram_empty_fb_i,
      S => SS(0)
    );
ram_empty_i_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \ram_empty_fb_i0__1\,
      Q => ram_empty_i,
      S => SS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_UART_V1_9_0_0_reset_blk_ramfifo is
  port (
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg_0\ : out STD_LOGIC;
    SS : out STD_LOGIC_VECTOR ( 0 to 0 );
    wr_rst_busy : out STD_LOGIC;
    \out\ : out STD_LOGIC;
    ram_rstram_b : out STD_LOGIC;
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    POR_B : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_Design_UART_V1_9_0_0_reset_blk_ramfifo : entity is "reset_blk_ramfifo";
end Zynq_Design_UART_V1_9_0_0_reset_blk_ramfifo;

architecture STRUCTURE of Zynq_Design_UART_V1_9_0_0_reset_blk_ramfifo is
  signal \^ss\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal arst_sync_rd_rst : STD_LOGIC;
  signal dest_out : STD_LOGIC;
  signal dest_rst : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1_n_0\ : STD_LOGIC;
  signal \^ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.wr_rst_busy_i_i_1_n_0\ : STD_LOGIC;
  signal rd_rst_wr_ext : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rst_d1 : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_d1 : signal is "true";
  attribute msgon : string;
  attribute msgon of rst_d1 : signal is "true";
  signal rst_d2 : STD_LOGIC;
  attribute async_reg of rst_d2 : signal is "true";
  attribute msgon of rst_d2 : signal is "true";
  signal rst_d3 : STD_LOGIC;
  attribute async_reg of rst_d3 : signal is "true";
  attribute msgon of rst_d3 : signal is "true";
  signal sckt_rd_rst_wr : STD_LOGIC;
  signal wr_rst_busy_i : STD_LOGIC;
  signal wr_rst_rd_ext : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "true";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 5;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 0;
  attribute VERSION : integer;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is "SINGLE";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is "TRUE";
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 5;
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 0;
  attribute SIM_ASSERT_CHK of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 0;
  attribute SRC_INPUT_REG of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 0;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 0;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is "SINGLE";
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is "TRUE";
  attribute DEF_VAL : string;
  attribute DEF_VAL of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_sync_rst_inst_wrst\ : label is "1'b1";
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_sync_rst_inst_wrst\ : label is 5;
  attribute INIT : string;
  attribute INIT of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_sync_rst_inst_wrst\ : label is "1";
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_sync_rst_inst_wrst\ : label is 0;
  attribute SIM_ASSERT_CHK of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_sync_rst_inst_wrst\ : label is 0;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_sync_rst_inst_wrst\ : label is 0;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_sync_rst_inst_wrst\ : label is "SYNC_RST";
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_sync_rst_inst_wrst\ : label is "TRUE";
  attribute DEF_VAL of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is "1'b1";
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is 5;
  attribute INIT of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is "1";
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is 0;
  attribute SIM_ASSERT_CHK of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is 0;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is 0;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is "SYNC_RST";
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is "TRUE";
begin
  SS(0) <= \^ss\(0);
  \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg_0\ <= \^ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg_0\;
  \out\ <= rst_d3;
  wr_rst_busy <= wr_rst_busy_i;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^ss\(0),
      I1 => POR_B,
      O => ram_rstram_b
    );
\grstd1.grst_full.grst_f.rst_d1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => wr_rst_busy_i,
      Q => rst_d1,
      R => '0'
    );
\grstd1.grst_full.grst_f.rst_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rst_d1,
      Q => rst_d2,
      R => '0'
    );
\grstd1.grst_full.grst_f.rst_d3_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rst_d2,
      Q => rst_d3,
      S => \^ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg_0\
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.rd_rst_wr_ext_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => sckt_rd_rst_wr,
      Q => rd_rst_wr_ext(0),
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.rd_rst_wr_ext_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rd_rst_wr_ext(0),
      Q => rd_rst_wr_ext(1),
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.rd_rst_wr_ext_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rd_rst_wr_ext(1),
      Q => rd_rst_wr_ext(2),
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.rd_rst_wr_ext_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rd_rst_wr_ext(2),
      Q => rd_rst_wr_ext(3),
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => wr_rst_rd_ext(1),
      I1 => \^ss\(0),
      I2 => arst_sync_rd_rst,
      O => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1_n_0\
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1_n_0\,
      Q => \^ss\(0),
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF8A"
    )
        port map (
      I0 => \^ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg_0\,
      I1 => rd_rst_wr_ext(0),
      I2 => rd_rst_wr_ext(1),
      I3 => dest_rst,
      O => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1_n_0\
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1_n_0\,
      Q => \^ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg_0\,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.wr_rst_busy_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFD0F0D0D0"
    )
        port map (
      I0 => rd_rst_wr_ext(3),
      I1 => rd_rst_wr_ext(2),
      I2 => wr_rst_busy_i,
      I3 => rd_rst_wr_ext(0),
      I4 => rd_rst_wr_ext(1),
      I5 => dest_rst,
      O => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.wr_rst_busy_i_i_1_n_0\
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.wr_rst_busy_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.wr_rst_busy_i_i_1_n_0\,
      Q => wr_rst_busy_i,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.wr_rst_rd_ext_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => dest_out,
      Q => wr_rst_rd_ext(0),
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.wr_rst_rd_ext_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => wr_rst_rd_ext(0),
      Q => wr_rst_rd_ext(1),
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\: entity work.Zynq_Design_UART_V1_9_0_0_xpm_cdc_single
     port map (
      dest_clk => wr_clk,
      dest_out => sckt_rd_rst_wr,
      src_clk => rd_clk,
      src_in => \^ss\(0)
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\: entity work.\Zynq_Design_UART_V1_9_0_0_xpm_cdc_single__6\
     port map (
      dest_clk => rd_clk,
      dest_out => dest_out,
      src_clk => wr_clk,
      src_in => \^ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg_0\
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_sync_rst_inst_wrst\: entity work.Zynq_Design_UART_V1_9_0_0_xpm_cdc_sync_rst
     port map (
      dest_clk => rd_clk,
      dest_rst => arst_sync_rd_rst,
      src_rst => rst
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\: entity work.\Zynq_Design_UART_V1_9_0_0_xpm_cdc_sync_rst__6\
     port map (
      dest_clk => wr_clk,
      dest_rst => dest_rst,
      src_rst => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Zynq_Design_UART_V1_9_0_0_reset_blk_ramfifo__xdcDup__1\ is
  port (
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg_0\ : out STD_LOGIC;
    SS : out STD_LOGIC_VECTOR ( 0 to 0 );
    wr_rst_busy : out STD_LOGIC;
    \out\ : out STD_LOGIC;
    ram_rstram_b : out STD_LOGIC;
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    POR_B : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Zynq_Design_UART_V1_9_0_0_reset_blk_ramfifo__xdcDup__1\ : entity is "reset_blk_ramfifo";
end \Zynq_Design_UART_V1_9_0_0_reset_blk_ramfifo__xdcDup__1\;

architecture STRUCTURE of \Zynq_Design_UART_V1_9_0_0_reset_blk_ramfifo__xdcDup__1\ is
  signal \^ss\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal arst_sync_rd_rst : STD_LOGIC;
  signal dest_out : STD_LOGIC;
  signal dest_rst : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1_n_0\ : STD_LOGIC;
  signal \^ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.wr_rst_busy_i_i_1_n_0\ : STD_LOGIC;
  signal rd_rst_wr_ext : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rst_d1 : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_d1 : signal is "true";
  attribute msgon : string;
  attribute msgon of rst_d1 : signal is "true";
  signal rst_d2 : STD_LOGIC;
  attribute async_reg of rst_d2 : signal is "true";
  attribute msgon of rst_d2 : signal is "true";
  signal rst_d3 : STD_LOGIC;
  attribute async_reg of rst_d3 : signal is "true";
  attribute msgon of rst_d3 : signal is "true";
  signal sckt_rd_rst_wr : STD_LOGIC;
  signal wr_rst_busy_i : STD_LOGIC;
  signal wr_rst_rd_ext : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "true";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 5;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 0;
  attribute VERSION : integer;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is 0;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is "SINGLE";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\ : label is "TRUE";
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 5;
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 0;
  attribute SIM_ASSERT_CHK of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 0;
  attribute SRC_INPUT_REG of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 0;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is 0;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is "SINGLE";
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\ : label is "TRUE";
  attribute DEF_VAL : string;
  attribute DEF_VAL of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_sync_rst_inst_wrst\ : label is "1'b1";
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_sync_rst_inst_wrst\ : label is 5;
  attribute INIT : string;
  attribute INIT of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_sync_rst_inst_wrst\ : label is "1";
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_sync_rst_inst_wrst\ : label is 0;
  attribute SIM_ASSERT_CHK of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_sync_rst_inst_wrst\ : label is 0;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_sync_rst_inst_wrst\ : label is 0;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_sync_rst_inst_wrst\ : label is "SYNC_RST";
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_sync_rst_inst_wrst\ : label is "TRUE";
  attribute DEF_VAL of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is "1'b1";
  attribute DEST_SYNC_FF of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is 5;
  attribute INIT of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is "1";
  attribute INIT_SYNC_FF of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is 0;
  attribute SIM_ASSERT_CHK of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is 0;
  attribute VERSION of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is 0;
  attribute XPM_CDC of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is "SYNC_RST";
  attribute XPM_MODULE of \ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\ : label is "TRUE";
begin
  SS(0) <= \^ss\(0);
  \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg_0\ <= \^ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg_0\;
  \out\ <= rst_d3;
  wr_rst_busy <= wr_rst_busy_i;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^ss\(0),
      I1 => POR_B,
      O => ram_rstram_b
    );
\grstd1.grst_full.grst_f.rst_d1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => wr_rst_busy_i,
      Q => rst_d1,
      R => '0'
    );
\grstd1.grst_full.grst_f.rst_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rst_d1,
      Q => rst_d2,
      R => '0'
    );
\grstd1.grst_full.grst_f.rst_d3_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rst_d2,
      Q => rst_d3,
      S => \^ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg_0\
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.rd_rst_wr_ext_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => sckt_rd_rst_wr,
      Q => rd_rst_wr_ext(0),
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.rd_rst_wr_ext_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rd_rst_wr_ext(0),
      Q => rd_rst_wr_ext(1),
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.rd_rst_wr_ext_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rd_rst_wr_ext(1),
      Q => rd_rst_wr_ext(2),
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.rd_rst_wr_ext_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => rd_rst_wr_ext(2),
      Q => rd_rst_wr_ext(3),
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => wr_rst_rd_ext(1),
      I1 => \^ss\(0),
      I2 => arst_sync_rd_rst,
      O => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1_n_0\
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_i_1_n_0\,
      Q => \^ss\(0),
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF8A"
    )
        port map (
      I0 => \^ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg_0\,
      I1 => rd_rst_wr_ext(0),
      I2 => rd_rst_wr_ext(1),
      I3 => dest_rst,
      O => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1_n_0\
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_i_1_n_0\,
      Q => \^ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg_0\,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.wr_rst_busy_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFD0F0D0D0"
    )
        port map (
      I0 => rd_rst_wr_ext(3),
      I1 => rd_rst_wr_ext(2),
      I2 => wr_rst_busy_i,
      I3 => rd_rst_wr_ext(0),
      I4 => rd_rst_wr_ext(1),
      I5 => dest_rst,
      O => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.wr_rst_busy_i_i_1_n_0\
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.wr_rst_busy_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.wr_rst_busy_i_i_1_n_0\,
      Q => wr_rst_busy_i,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.wr_rst_rd_ext_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => dest_out,
      Q => wr_rst_rd_ext(0),
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.wr_rst_rd_ext_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => wr_rst_rd_ext(0),
      Q => wr_rst_rd_ext(1),
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_rrst_wr\: entity work.\Zynq_Design_UART_V1_9_0_0_xpm_cdc_single__5\
     port map (
      dest_clk => wr_clk,
      dest_out => sckt_rd_rst_wr,
      src_clk => rd_clk,
      src_in => \^ss\(0)
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_single_inst_wrst_rd\: entity work.\Zynq_Design_UART_V1_9_0_0_xpm_cdc_single__4\
     port map (
      dest_clk => rd_clk,
      dest_out => dest_out,
      src_clk => wr_clk,
      src_in => \^ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg_0\
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.xpm_cdc_sync_rst_inst_wrst\: entity work.\Zynq_Design_UART_V1_9_0_0_xpm_cdc_sync_rst__5\
     port map (
      dest_clk => rd_clk,
      dest_rst => arst_sync_rd_rst,
      src_rst => rst
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.xpm_cdc_sync_rst_inst_wrst\: entity work.\Zynq_Design_UART_V1_9_0_0_xpm_cdc_sync_rst__4\
     port map (
      dest_clk => wr_clk,
      dest_rst => dest_rst,
      src_rst => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_UART_V1_9_0_0_wr_status_flags_as is
  port (
    full : out STD_LOGIC;
    \out\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    almost_full : out STD_LOGIC;
    \gmux.gm[4].gms.ms\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    v1_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gmux.gm[4].gms.ms_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    v1_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gmux.gm[4].gms.ms_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    v1_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    ram_full_fb_i_reg_0 : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    ram_full_fb_i_reg_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_Design_UART_V1_9_0_0_wr_status_flags_as : entity is "wr_status_flags_as";
end Zynq_Design_UART_V1_9_0_0_wr_status_flags_as;

architecture STRUCTURE of Zynq_Design_UART_V1_9_0_0_wr_status_flags_as is
  signal \^almost_full\ : STD_LOGIC;
  signal c2_n_1 : STD_LOGIC;
  signal comp1 : STD_LOGIC;
  signal comp2 : STD_LOGIC;
  signal comp3 : STD_LOGIC;
  signal \gaf.ram_almost_full_i_i_1_n_0\ : STD_LOGIC;
  signal ram_full_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_full_fb_i : signal is std.standard.true;
  signal ram_full_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_full_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_full_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_full_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_full_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_full_i_reg : label is std.standard.true;
  attribute KEEP of ram_full_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_full_i_reg : label is "no";
begin
  almost_full <= \^almost_full\;
  full <= ram_full_i;
  \out\ <= ram_full_fb_i;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wr_en,
      I1 => ram_full_fb_i,
      O => E(0)
    );
c1: entity work.Zynq_Design_UART_V1_9_0_0_compare
     port map (
      comp1 => comp1,
      \gmux.gm[4].gms.ms_0\(3 downto 0) => \gmux.gm[4].gms.ms\(3 downto 0),
      v1_reg(0) => v1_reg(0)
    );
c2: entity work.Zynq_Design_UART_V1_9_0_0_compare_0
     port map (
      comp1 => comp1,
      comp2 => comp2,
      \gmux.gm[4].gms.ms_0\(3 downto 0) => \gmux.gm[4].gms.ms_0\(3 downto 0),
      \out\ => ram_full_fb_i,
      ram_full_fb_i_reg => c2_n_1,
      ram_full_fb_i_reg_0 => ram_full_fb_i_reg_1,
      v1_reg_0(0) => v1_reg_0(0),
      wr_en => wr_en
    );
\gaf.c3\: entity work.Zynq_Design_UART_V1_9_0_0_compare_1
     port map (
      comp3 => comp3,
      \gmux.gm[4].gms.ms_0\(3 downto 0) => \gmux.gm[4].gms.ms_1\(3 downto 0),
      v1_reg_1(0) => v1_reg_1(0)
    );
\gaf.ram_almost_full_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF00F8000000F8"
    )
        port map (
      I0 => comp3,
      I1 => wr_en,
      I2 => comp2,
      I3 => ram_full_fb_i_reg_1,
      I4 => ram_full_fb_i,
      I5 => \^almost_full\,
      O => \gaf.ram_almost_full_i_i_1_n_0\
    );
\gaf.ram_almost_full_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gaf.ram_almost_full_i_i_1_n_0\,
      Q => \^almost_full\,
      S => ram_full_fb_i_reg_0
    );
ram_full_fb_i_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => c2_n_1,
      Q => ram_full_fb_i,
      S => ram_full_fb_i_reg_0
    );
ram_full_i_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => c2_n_1,
      Q => ram_full_i,
      S => ram_full_fb_i_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_UART_V1_9_0_0_wr_status_flags_as_14 is
  port (
    full : out STD_LOGIC;
    \out\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    almost_full : out STD_LOGIC;
    \gmux.gm[4].gms.ms\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    v1_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gmux.gm[4].gms.ms_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    v1_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gmux.gm[4].gms.ms_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    v1_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    ram_full_fb_i_reg_0 : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    ram_full_fb_i_reg_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_Design_UART_V1_9_0_0_wr_status_flags_as_14 : entity is "wr_status_flags_as";
end Zynq_Design_UART_V1_9_0_0_wr_status_flags_as_14;

architecture STRUCTURE of Zynq_Design_UART_V1_9_0_0_wr_status_flags_as_14 is
  signal \^almost_full\ : STD_LOGIC;
  signal c2_n_1 : STD_LOGIC;
  signal comp1 : STD_LOGIC;
  signal comp2 : STD_LOGIC;
  signal comp3 : STD_LOGIC;
  signal \gaf.ram_almost_full_i_i_1_n_0\ : STD_LOGIC;
  signal ram_full_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_full_fb_i : signal is std.standard.true;
  signal ram_full_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_full_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_full_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_full_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_full_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_full_i_reg : label is std.standard.true;
  attribute KEEP of ram_full_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_full_i_reg : label is "no";
begin
  almost_full <= \^almost_full\;
  full <= ram_full_i;
  \out\ <= ram_full_fb_i;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wr_en,
      I1 => ram_full_fb_i,
      O => E(0)
    );
c1: entity work.Zynq_Design_UART_V1_9_0_0_compare_16
     port map (
      comp1 => comp1,
      \gmux.gm[4].gms.ms_0\(3 downto 0) => \gmux.gm[4].gms.ms\(3 downto 0),
      v1_reg(0) => v1_reg(0)
    );
c2: entity work.Zynq_Design_UART_V1_9_0_0_compare_17
     port map (
      comp1 => comp1,
      comp2 => comp2,
      \gmux.gm[4].gms.ms_0\(3 downto 0) => \gmux.gm[4].gms.ms_0\(3 downto 0),
      \out\ => ram_full_fb_i,
      ram_full_fb_i_reg => c2_n_1,
      ram_full_fb_i_reg_0 => ram_full_fb_i_reg_1,
      v1_reg_0(0) => v1_reg_0(0),
      wr_en => wr_en
    );
\gaf.c3\: entity work.Zynq_Design_UART_V1_9_0_0_compare_18
     port map (
      comp3 => comp3,
      \gmux.gm[4].gms.ms_0\(3 downto 0) => \gmux.gm[4].gms.ms_1\(3 downto 0),
      v1_reg_1(0) => v1_reg_1(0)
    );
\gaf.ram_almost_full_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF00F8000000F8"
    )
        port map (
      I0 => comp3,
      I1 => wr_en,
      I2 => comp2,
      I3 => ram_full_fb_i_reg_1,
      I4 => ram_full_fb_i,
      I5 => \^almost_full\,
      O => \gaf.ram_almost_full_i_i_1_n_0\
    );
\gaf.ram_almost_full_i_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => \gaf.ram_almost_full_i_i_1_n_0\,
      Q => \^almost_full\,
      S => ram_full_fb_i_reg_0
    );
ram_full_fb_i_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => c2_n_1,
      Q => ram_full_fb_i,
      S => ram_full_fb_i_reg_0
    );
ram_full_i_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => c2_n_1,
      Q => ram_full_i,
      S => ram_full_fb_i_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_UART_V1_9_0_0_blk_mem_gen_generic_cstr is
  port (
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    POR_B : out STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    ram_rstram_b : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    FULL_FB : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    \out\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_Design_UART_V1_9_0_0_blk_mem_gen_generic_cstr : entity is "blk_mem_gen_generic_cstr";
end Zynq_Design_UART_V1_9_0_0_blk_mem_gen_generic_cstr;

architecture STRUCTURE of Zynq_Design_UART_V1_9_0_0_blk_mem_gen_generic_cstr is
begin
\ramloop[0].ram.r\: entity work.Zynq_Design_UART_V1_9_0_0_blk_mem_gen_prim_width
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(8 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(8 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(8 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(8 downto 0),
      E(0) => E(0),
      FULL_FB => FULL_FB,
      POR_B => POR_B,
      SS(0) => SS(0),
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      \out\ => \out\,
      ram_rstram_b => ram_rstram_b,
      rd_clk => rd_clk,
      rd_en => rd_en,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_UART_V1_9_0_0_blk_mem_gen_generic_cstr_11 is
  port (
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    POR_B : out STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    ram_rstram_b : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    FULL_FB : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    \out\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_Design_UART_V1_9_0_0_blk_mem_gen_generic_cstr_11 : entity is "blk_mem_gen_generic_cstr";
end Zynq_Design_UART_V1_9_0_0_blk_mem_gen_generic_cstr_11;

architecture STRUCTURE of Zynq_Design_UART_V1_9_0_0_blk_mem_gen_generic_cstr_11 is
begin
\ramloop[0].ram.r\: entity work.Zynq_Design_UART_V1_9_0_0_blk_mem_gen_prim_width_12
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(8 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(8 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(8 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(8 downto 0),
      E(0) => E(0),
      FULL_FB => FULL_FB,
      POR_B => POR_B,
      SS(0) => SS(0),
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      \out\ => \out\,
      ram_rstram_b => ram_rstram_b,
      rd_clk => rd_clk,
      rd_en => rd_en,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_UART_V1_9_0_0_rd_logic is
  port (
    empty : out STD_LOGIC;
    \out\ : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gc1.count_d2_reg[8]\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \gc1.count_d1_reg[8]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_fb_i_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gae.ram_almost_empty_i_reg\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gae.ram_almost_empty_i_reg_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    WR_PNTR_RD : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_Design_UART_V1_9_0_0_rd_logic : entity is "rd_logic";
end Zynq_Design_UART_V1_9_0_0_rd_logic;

architecture STRUCTURE of Zynq_Design_UART_V1_9_0_0_rd_logic is
  signal \c0/v1_reg\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \c1/v1_reg\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \gae.c2/v1_reg\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_8_out : STD_LOGIC;
begin
\gras.rsts\: entity work.Zynq_Design_UART_V1_9_0_0_rd_status_flags_as
     port map (
      E(0) => p_8_out,
      SS(0) => SS(0),
      almost_empty => almost_empty,
      empty => empty,
      \gae.ram_almost_empty_i_reg_0\(0) => \gae.ram_almost_empty_i_reg\(0),
      \gae.ram_almost_empty_i_reg_1\(0) => \gae.ram_almost_empty_i_reg_0\(0),
      \out\ => \out\,
      ram_empty_fb_i_reg_0(0) => ram_empty_fb_i_reg(0),
      rd_clk => rd_clk,
      rd_en => rd_en,
      v1_reg(3 downto 0) => \c0/v1_reg\(3 downto 0),
      v1_reg_0(3 downto 0) => \c1/v1_reg\(3 downto 0),
      v1_reg_1(3 downto 0) => \gae.c2/v1_reg\(3 downto 0)
    );
rpntr: entity work.Zynq_Design_UART_V1_9_0_0_rd_bin_cntr
     port map (
      E(0) => p_8_out,
      Q(0) => Q(0),
      SS(0) => SS(0),
      WR_PNTR_RD(7 downto 0) => WR_PNTR_RD(7 downto 0),
      \gc1.count_d1_reg[8]_0\(0) => \gc1.count_d1_reg[8]\(0),
      \gc1.count_d2_reg[8]_0\(8 downto 0) => \gc1.count_d2_reg[8]\(8 downto 0),
      rd_clk => rd_clk,
      v1_reg(3 downto 0) => \c0/v1_reg\(3 downto 0),
      v1_reg_0(3 downto 0) => \c1/v1_reg\(3 downto 0),
      v1_reg_1(3 downto 0) => \gae.c2/v1_reg\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_UART_V1_9_0_0_rd_logic_5 is
  port (
    empty : out STD_LOGIC;
    \out\ : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gc1.count_d2_reg[8]\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \gc1.count_d1_reg[8]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_fb_i_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gae.ram_almost_empty_i_reg\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gae.ram_almost_empty_i_reg_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_clk : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    WR_PNTR_RD : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_Design_UART_V1_9_0_0_rd_logic_5 : entity is "rd_logic";
end Zynq_Design_UART_V1_9_0_0_rd_logic_5;

architecture STRUCTURE of Zynq_Design_UART_V1_9_0_0_rd_logic_5 is
  signal \c0/v1_reg\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \c1/v1_reg\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \gae.c2/v1_reg\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_8_out : STD_LOGIC;
begin
\gras.rsts\: entity work.Zynq_Design_UART_V1_9_0_0_rd_status_flags_as_19
     port map (
      E(0) => p_8_out,
      SS(0) => SS(0),
      almost_empty => almost_empty,
      empty => empty,
      \gae.ram_almost_empty_i_reg_0\(0) => \gae.ram_almost_empty_i_reg\(0),
      \gae.ram_almost_empty_i_reg_1\(0) => \gae.ram_almost_empty_i_reg_0\(0),
      \out\ => \out\,
      ram_empty_fb_i_reg_0(0) => ram_empty_fb_i_reg(0),
      rd_clk => rd_clk,
      rd_en => rd_en,
      v1_reg(3 downto 0) => \c0/v1_reg\(3 downto 0),
      v1_reg_0(3 downto 0) => \c1/v1_reg\(3 downto 0),
      v1_reg_1(3 downto 0) => \gae.c2/v1_reg\(3 downto 0)
    );
rpntr: entity work.Zynq_Design_UART_V1_9_0_0_rd_bin_cntr_20
     port map (
      E(0) => p_8_out,
      Q(0) => Q(0),
      SS(0) => SS(0),
      WR_PNTR_RD(7 downto 0) => WR_PNTR_RD(7 downto 0),
      \gc1.count_d1_reg[8]_0\(0) => \gc1.count_d1_reg[8]\(0),
      \gc1.count_d2_reg[8]_0\(8 downto 0) => \gc1.count_d2_reg[8]\(8 downto 0),
      rd_clk => rd_clk,
      v1_reg(3 downto 0) => \c0/v1_reg\(3 downto 0),
      v1_reg_0(3 downto 0) => \c1/v1_reg\(3 downto 0),
      v1_reg_1(3 downto 0) => \gae.c2/v1_reg\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_UART_V1_9_0_0_wr_logic is
  port (
    full : out STD_LOGIC;
    FULL_FB : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \gic0.gc1.count_d2_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \gic0.gc1.count_d1_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    almost_full : out STD_LOGIC;
    \gic0.gc1.count_d3_reg[8]\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \gmux.gm[4].gms.ms\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gmux.gm[4].gms.ms_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gmux.gm[4].gms.ms_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gic0.gc1.count_d3_reg[0]\ : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    RD_PNTR_WR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_Design_UART_V1_9_0_0_wr_logic : entity is "wr_logic";
end Zynq_Design_UART_V1_9_0_0_wr_logic;

architecture STRUCTURE of Zynq_Design_UART_V1_9_0_0_wr_logic is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \c1/v1_reg\ : STD_LOGIC_VECTOR ( 4 to 4 );
  signal \c2/v1_reg\ : STD_LOGIC_VECTOR ( 4 to 4 );
  signal \gaf.c3/v1_reg\ : STD_LOGIC_VECTOR ( 4 to 4 );
begin
  E(0) <= \^e\(0);
\gwas.wsts\: entity work.Zynq_Design_UART_V1_9_0_0_wr_status_flags_as
     port map (
      E(0) => \^e\(0),
      almost_full => almost_full,
      full => full,
      \gmux.gm[4].gms.ms\(3 downto 0) => \gmux.gm[4].gms.ms\(3 downto 0),
      \gmux.gm[4].gms.ms_0\(3 downto 0) => \gmux.gm[4].gms.ms_0\(3 downto 0),
      \gmux.gm[4].gms.ms_1\(3 downto 0) => \gmux.gm[4].gms.ms_1\(3 downto 0),
      \out\ => FULL_FB,
      ram_full_fb_i_reg_0 => \gic0.gc1.count_d3_reg[0]\,
      ram_full_fb_i_reg_1 => \out\,
      v1_reg(0) => \c1/v1_reg\(4),
      v1_reg_0(0) => \c2/v1_reg\(4),
      v1_reg_1(0) => \gaf.c3/v1_reg\(4),
      wr_clk => wr_clk,
      wr_en => wr_en
    );
wpntr: entity work.Zynq_Design_UART_V1_9_0_0_wr_bin_cntr
     port map (
      E(0) => \^e\(0),
      Q(7 downto 0) => Q(7 downto 0),
      RD_PNTR_WR(0) => RD_PNTR_WR(0),
      \gic0.gc1.count_d1_reg[7]_0\(7 downto 0) => \gic0.gc1.count_d1_reg[7]\(7 downto 0),
      \gic0.gc1.count_d2_reg[7]_0\(7 downto 0) => \gic0.gc1.count_d2_reg[7]\(7 downto 0),
      \gic0.gc1.count_d3_reg[0]_0\ => \gic0.gc1.count_d3_reg[0]\,
      \gic0.gc1.count_d3_reg[8]_0\(8 downto 0) => \gic0.gc1.count_d3_reg[8]\(8 downto 0),
      v1_reg(0) => \c1/v1_reg\(4),
      v1_reg_0(0) => \c2/v1_reg\(4),
      v1_reg_1(0) => \gaf.c3/v1_reg\(4),
      wr_clk => wr_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_UART_V1_9_0_0_wr_logic_6 is
  port (
    full : out STD_LOGIC;
    FULL_FB : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \gic0.gc1.count_d2_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \gic0.gc1.count_d1_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    almost_full : out STD_LOGIC;
    \gic0.gc1.count_d3_reg[8]\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \gmux.gm[4].gms.ms\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gmux.gm[4].gms.ms_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gmux.gm[4].gms.ms_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gic0.gc1.count_d3_reg[0]\ : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    RD_PNTR_WR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_Design_UART_V1_9_0_0_wr_logic_6 : entity is "wr_logic";
end Zynq_Design_UART_V1_9_0_0_wr_logic_6;

architecture STRUCTURE of Zynq_Design_UART_V1_9_0_0_wr_logic_6 is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \c1/v1_reg\ : STD_LOGIC_VECTOR ( 4 to 4 );
  signal \c2/v1_reg\ : STD_LOGIC_VECTOR ( 4 to 4 );
  signal \gaf.c3/v1_reg\ : STD_LOGIC_VECTOR ( 4 to 4 );
begin
  E(0) <= \^e\(0);
\gwas.wsts\: entity work.Zynq_Design_UART_V1_9_0_0_wr_status_flags_as_14
     port map (
      E(0) => \^e\(0),
      almost_full => almost_full,
      full => full,
      \gmux.gm[4].gms.ms\(3 downto 0) => \gmux.gm[4].gms.ms\(3 downto 0),
      \gmux.gm[4].gms.ms_0\(3 downto 0) => \gmux.gm[4].gms.ms_0\(3 downto 0),
      \gmux.gm[4].gms.ms_1\(3 downto 0) => \gmux.gm[4].gms.ms_1\(3 downto 0),
      \out\ => FULL_FB,
      ram_full_fb_i_reg_0 => \gic0.gc1.count_d3_reg[0]\,
      ram_full_fb_i_reg_1 => \out\,
      v1_reg(0) => \c1/v1_reg\(4),
      v1_reg_0(0) => \c2/v1_reg\(4),
      v1_reg_1(0) => \gaf.c3/v1_reg\(4),
      wr_clk => wr_clk,
      wr_en => wr_en
    );
wpntr: entity work.Zynq_Design_UART_V1_9_0_0_wr_bin_cntr_15
     port map (
      E(0) => \^e\(0),
      Q(7 downto 0) => Q(7 downto 0),
      RD_PNTR_WR(0) => RD_PNTR_WR(0),
      \gic0.gc1.count_d1_reg[7]_0\(7 downto 0) => \gic0.gc1.count_d1_reg[7]\(7 downto 0),
      \gic0.gc1.count_d2_reg[7]_0\(7 downto 0) => \gic0.gc1.count_d2_reg[7]\(7 downto 0),
      \gic0.gc1.count_d3_reg[0]_0\ => \gic0.gc1.count_d3_reg[0]\,
      \gic0.gc1.count_d3_reg[8]_0\(8 downto 0) => \gic0.gc1.count_d3_reg[8]\(8 downto 0),
      v1_reg(0) => \c1/v1_reg\(4),
      v1_reg_0(0) => \c2/v1_reg\(4),
      v1_reg_1(0) => \gaf.c3/v1_reg\(4),
      wr_clk => wr_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_UART_V1_9_0_0_blk_mem_gen_top is
  port (
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    POR_B : out STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    ram_rstram_b : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    FULL_FB : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    \out\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_Design_UART_V1_9_0_0_blk_mem_gen_top : entity is "blk_mem_gen_top";
end Zynq_Design_UART_V1_9_0_0_blk_mem_gen_top;

architecture STRUCTURE of Zynq_Design_UART_V1_9_0_0_blk_mem_gen_top is
begin
\valid.cstr\: entity work.Zynq_Design_UART_V1_9_0_0_blk_mem_gen_generic_cstr
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(8 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(8 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(8 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(8 downto 0),
      E(0) => E(0),
      FULL_FB => FULL_FB,
      POR_B => POR_B,
      SS(0) => SS(0),
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      \out\ => \out\,
      ram_rstram_b => ram_rstram_b,
      rd_clk => rd_clk,
      rd_en => rd_en,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_UART_V1_9_0_0_blk_mem_gen_top_10 is
  port (
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    POR_B : out STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    ram_rstram_b : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    FULL_FB : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    \out\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_Design_UART_V1_9_0_0_blk_mem_gen_top_10 : entity is "blk_mem_gen_top";
end Zynq_Design_UART_V1_9_0_0_blk_mem_gen_top_10;

architecture STRUCTURE of Zynq_Design_UART_V1_9_0_0_blk_mem_gen_top_10 is
begin
\valid.cstr\: entity work.Zynq_Design_UART_V1_9_0_0_blk_mem_gen_generic_cstr_11
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(8 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(8 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(8 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(8 downto 0),
      E(0) => E(0),
      FULL_FB => FULL_FB,
      POR_B => POR_B,
      SS(0) => SS(0),
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      \out\ => \out\,
      ram_rstram_b => ram_rstram_b,
      rd_clk => rd_clk,
      rd_en => rd_en,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_UART_V1_9_0_0_blk_mem_gen_v8_4_3_synth is
  port (
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    POR_B : out STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    ram_rstram_b : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    FULL_FB : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    \out\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_Design_UART_V1_9_0_0_blk_mem_gen_v8_4_3_synth : entity is "blk_mem_gen_v8_4_3_synth";
end Zynq_Design_UART_V1_9_0_0_blk_mem_gen_v8_4_3_synth;

architecture STRUCTURE of Zynq_Design_UART_V1_9_0_0_blk_mem_gen_v8_4_3_synth is
begin
\gnbram.gnativebmg.native_blk_mem_gen\: entity work.Zynq_Design_UART_V1_9_0_0_blk_mem_gen_top
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(8 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(8 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(8 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(8 downto 0),
      E(0) => E(0),
      FULL_FB => FULL_FB,
      POR_B => POR_B,
      SS(0) => SS(0),
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      \out\ => \out\,
      ram_rstram_b => ram_rstram_b,
      rd_clk => rd_clk,
      rd_en => rd_en,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_UART_V1_9_0_0_blk_mem_gen_v8_4_3_synth_9 is
  port (
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    POR_B : out STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    ram_rstram_b : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    FULL_FB : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    \out\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_Design_UART_V1_9_0_0_blk_mem_gen_v8_4_3_synth_9 : entity is "blk_mem_gen_v8_4_3_synth";
end Zynq_Design_UART_V1_9_0_0_blk_mem_gen_v8_4_3_synth_9;

architecture STRUCTURE of Zynq_Design_UART_V1_9_0_0_blk_mem_gen_v8_4_3_synth_9 is
begin
\gnbram.gnativebmg.native_blk_mem_gen\: entity work.Zynq_Design_UART_V1_9_0_0_blk_mem_gen_top_10
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(8 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(8 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(8 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(8 downto 0),
      E(0) => E(0),
      FULL_FB => FULL_FB,
      POR_B => POR_B,
      SS(0) => SS(0),
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      \out\ => \out\,
      ram_rstram_b => ram_rstram_b,
      rd_clk => rd_clk,
      rd_en => rd_en,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_UART_V1_9_0_0_blk_mem_gen_v8_4_3 is
  port (
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    POR_B : out STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    ram_rstram_b : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    FULL_FB : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    \out\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_Design_UART_V1_9_0_0_blk_mem_gen_v8_4_3 : entity is "blk_mem_gen_v8_4_3";
end Zynq_Design_UART_V1_9_0_0_blk_mem_gen_v8_4_3;

architecture STRUCTURE of Zynq_Design_UART_V1_9_0_0_blk_mem_gen_v8_4_3 is
begin
inst_blk_mem_gen: entity work.Zynq_Design_UART_V1_9_0_0_blk_mem_gen_v8_4_3_synth
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(8 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(8 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(8 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(8 downto 0),
      E(0) => E(0),
      FULL_FB => FULL_FB,
      POR_B => POR_B,
      SS(0) => SS(0),
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      \out\ => \out\,
      ram_rstram_b => ram_rstram_b,
      rd_clk => rd_clk,
      rd_en => rd_en,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_UART_V1_9_0_0_blk_mem_gen_v8_4_3_8 is
  port (
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    POR_B : out STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    ram_rstram_b : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    FULL_FB : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    \out\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_Design_UART_V1_9_0_0_blk_mem_gen_v8_4_3_8 : entity is "blk_mem_gen_v8_4_3";
end Zynq_Design_UART_V1_9_0_0_blk_mem_gen_v8_4_3_8;

architecture STRUCTURE of Zynq_Design_UART_V1_9_0_0_blk_mem_gen_v8_4_3_8 is
begin
inst_blk_mem_gen: entity work.Zynq_Design_UART_V1_9_0_0_blk_mem_gen_v8_4_3_synth_9
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(8 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(8 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(8 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(8 downto 0),
      E(0) => E(0),
      FULL_FB => FULL_FB,
      POR_B => POR_B,
      SS(0) => SS(0),
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      \out\ => \out\,
      ram_rstram_b => ram_rstram_b,
      rd_clk => rd_clk,
      rd_en => rd_en,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_UART_V1_9_0_0_memory is
  port (
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    POR_B : out STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    ram_rstram_b : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    FULL_FB : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    \out\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_Design_UART_V1_9_0_0_memory : entity is "memory";
end Zynq_Design_UART_V1_9_0_0_memory;

architecture STRUCTURE of Zynq_Design_UART_V1_9_0_0_memory is
begin
\gbm.gbmg.gbmga.ngecc.bmg\: entity work.Zynq_Design_UART_V1_9_0_0_blk_mem_gen_v8_4_3
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(8 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(8 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(8 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(8 downto 0),
      E(0) => E(0),
      FULL_FB => FULL_FB,
      POR_B => POR_B,
      SS(0) => SS(0),
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      \out\ => \out\,
      ram_rstram_b => ram_rstram_b,
      rd_clk => rd_clk,
      rd_en => rd_en,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_UART_V1_9_0_0_memory_7 is
  port (
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    POR_B : out STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    ram_rstram_b : in STD_LOGIC;
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    FULL_FB : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    \out\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_Design_UART_V1_9_0_0_memory_7 : entity is "memory";
end Zynq_Design_UART_V1_9_0_0_memory_7;

architecture STRUCTURE of Zynq_Design_UART_V1_9_0_0_memory_7 is
begin
\gbm.gbmg.gbmga.ngecc.bmg\: entity work.Zynq_Design_UART_V1_9_0_0_blk_mem_gen_v8_4_3_8
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(8 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(8 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(8 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(8 downto 0),
      E(0) => E(0),
      FULL_FB => FULL_FB,
      POR_B => POR_B,
      SS(0) => SS(0),
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      \out\ => \out\,
      ram_rstram_b => ram_rstram_b,
      rd_clk => rd_clk,
      rd_en => rd_en,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_UART_V1_9_0_0_fifo_generator_ramfifo is
  port (
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    empty : out STD_LOGIC;
    full : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_Design_UART_V1_9_0_0_fifo_generator_ramfifo : entity is "fifo_generator_ramfifo";
end Zynq_Design_UART_V1_9_0_0_fifo_generator_ramfifo;

architecture STRUCTURE of Zynq_Design_UART_V1_9_0_0_fifo_generator_ramfifo is
  signal \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/POR_B\ : STD_LOGIC;
  signal \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ram_rstram_b\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_1\ : STD_LOGIC;
  signal \gras.rsts/c0/v1_reg\ : STD_LOGIC_VECTOR ( 4 to 4 );
  signal \gras.rsts/c1/v1_reg\ : STD_LOGIC_VECTOR ( 4 to 4 );
  signal \gras.rsts/gae.c2/v1_reg\ : STD_LOGIC_VECTOR ( 4 to 4 );
  signal \gwas.wsts/c1/v1_reg\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \gwas.wsts/c2/v1_reg\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \gwas.wsts/gaf.c3/v1_reg\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_13_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_14_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_20_out : STD_LOGIC;
  signal p_24_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_25_out : STD_LOGIC_VECTOR ( 8 to 8 );
  signal p_2_out : STD_LOGIC;
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal rd_pntr_plus2 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal rst_full_gen_i : STD_LOGIC;
  signal rstblk_n_0 : STD_LOGIC;
  signal wr_pntr_plus2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal wr_pntr_plus3 : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
  \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ <= \^ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\;
\gntv_or_sync_fifo.gcx.clkx\: entity work.Zynq_Design_UART_V1_9_0_0_clk_x_pntrs
     port map (
      Q(7 downto 0) => p_14_out(7 downto 0),
      RD_PNTR_WR(0) => p_25_out(8),
      WR_PNTR_RD(7 downto 0) => p_24_out(7 downto 0),
      \gmux.gm[3].gms.ms\(7 downto 0) => wr_pntr_plus2(7 downto 0),
      \gmux.gm[3].gms.ms_0\(7 downto 0) => wr_pntr_plus3(7 downto 0),
      \gmux.gm[4].gms.ms\(0) => rd_pntr_plus1(8),
      \gmux.gm[4].gms.ms_0\(0) => rd_pntr_plus2(8),
      rd_clk => rd_clk,
      \src_gray_ff_reg[8]\(8 downto 0) => p_0_out(8 downto 0),
      \src_gray_ff_reg[8]_0\(8 downto 0) => p_13_out(8 downto 0),
      v1_reg(3 downto 0) => \gwas.wsts/c1/v1_reg\(3 downto 0),
      v1_reg_0(3 downto 0) => \gwas.wsts/c2/v1_reg\(3 downto 0),
      v1_reg_1(3 downto 0) => \gwas.wsts/gaf.c3/v1_reg\(3 downto 0),
      v1_reg_2(0) => \gras.rsts/c0/v1_reg\(4),
      v1_reg_3(0) => \gras.rsts/c1/v1_reg\(4),
      v1_reg_4(0) => \gras.rsts/gae.c2/v1_reg\(4),
      wr_clk => wr_clk
    );
\gntv_or_sync_fifo.gl0.rd\: entity work.Zynq_Design_UART_V1_9_0_0_rd_logic
     port map (
      Q(0) => rd_pntr_plus2(8),
      SS(0) => \^ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      WR_PNTR_RD(7 downto 0) => p_24_out(7 downto 0),
      almost_empty => almost_empty,
      empty => empty,
      \gae.ram_almost_empty_i_reg\(0) => \gras.rsts/c1/v1_reg\(4),
      \gae.ram_almost_empty_i_reg_0\(0) => \gras.rsts/gae.c2/v1_reg\(4),
      \gc1.count_d1_reg[8]\(0) => rd_pntr_plus1(8),
      \gc1.count_d2_reg[8]\(8 downto 0) => p_0_out(8 downto 0),
      \out\ => p_2_out,
      ram_empty_fb_i_reg(0) => \gras.rsts/c0/v1_reg\(4),
      rd_clk => rd_clk,
      rd_en => rd_en
    );
\gntv_or_sync_fifo.gl0.wr\: entity work.Zynq_Design_UART_V1_9_0_0_wr_logic
     port map (
      E(0) => p_20_out,
      FULL_FB => \gntv_or_sync_fifo.gl0.wr_n_1\,
      Q(7 downto 0) => wr_pntr_plus3(7 downto 0),
      RD_PNTR_WR(0) => p_25_out(8),
      almost_full => almost_full,
      full => full,
      \gic0.gc1.count_d1_reg[7]\(7 downto 0) => wr_pntr_plus2(7 downto 0),
      \gic0.gc1.count_d2_reg[7]\(7 downto 0) => p_14_out(7 downto 0),
      \gic0.gc1.count_d3_reg[0]\ => rstblk_n_0,
      \gic0.gc1.count_d3_reg[8]\(8 downto 0) => p_13_out(8 downto 0),
      \gmux.gm[4].gms.ms\(3 downto 0) => \gwas.wsts/c1/v1_reg\(3 downto 0),
      \gmux.gm[4].gms.ms_0\(3 downto 0) => \gwas.wsts/c2/v1_reg\(3 downto 0),
      \gmux.gm[4].gms.ms_1\(3 downto 0) => \gwas.wsts/gaf.c3/v1_reg\(3 downto 0),
      \out\ => rst_full_gen_i,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
\gntv_or_sync_fifo.mem\: entity work.Zynq_Design_UART_V1_9_0_0_memory
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(8 downto 0) => p_0_out(8 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(8 downto 0) => p_13_out(8 downto 0),
      E(0) => p_20_out,
      FULL_FB => \gntv_or_sync_fifo.gl0.wr_n_1\,
      POR_B => \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/POR_B\,
      SS(0) => \^ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      \out\ => p_2_out,
      ram_rstram_b => \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ram_rstram_b\,
      rd_clk => rd_clk,
      rd_en => rd_en,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
rstblk: entity work.Zynq_Design_UART_V1_9_0_0_reset_blk_ramfifo
     port map (
      POR_B => \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/POR_B\,
      SS(0) => \^ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg_0\ => rstblk_n_0,
      \out\ => rst_full_gen_i,
      ram_rstram_b => \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ram_rstram_b\,
      rd_clk => rd_clk,
      rst => rst,
      wr_clk => wr_clk,
      wr_rst_busy => wr_rst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Zynq_Design_UART_V1_9_0_0_fifo_generator_ramfifo__xdcDup__1\ is
  port (
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    empty : out STD_LOGIC;
    full : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Zynq_Design_UART_V1_9_0_0_fifo_generator_ramfifo__xdcDup__1\ : entity is "fifo_generator_ramfifo";
end \Zynq_Design_UART_V1_9_0_0_fifo_generator_ramfifo__xdcDup__1\;

architecture STRUCTURE of \Zynq_Design_UART_V1_9_0_0_fifo_generator_ramfifo__xdcDup__1\ is
  signal \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/POR_B\ : STD_LOGIC;
  signal \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ram_rstram_b\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_1\ : STD_LOGIC;
  signal \gras.rsts/c0/v1_reg\ : STD_LOGIC_VECTOR ( 4 to 4 );
  signal \gras.rsts/c1/v1_reg\ : STD_LOGIC_VECTOR ( 4 to 4 );
  signal \gras.rsts/gae.c2/v1_reg\ : STD_LOGIC_VECTOR ( 4 to 4 );
  signal \gwas.wsts/c1/v1_reg\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \gwas.wsts/c2/v1_reg\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \gwas.wsts/gaf.c3/v1_reg\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_13_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_14_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_20_out : STD_LOGIC;
  signal p_24_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_25_out : STD_LOGIC_VECTOR ( 8 to 8 );
  signal p_2_out : STD_LOGIC;
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal rd_pntr_plus2 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal rst_full_gen_i : STD_LOGIC;
  signal rstblk_n_0 : STD_LOGIC;
  signal wr_pntr_plus2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal wr_pntr_plus3 : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
  \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ <= \^ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\;
\gntv_or_sync_fifo.gcx.clkx\: entity work.\Zynq_Design_UART_V1_9_0_0_clk_x_pntrs__xdcDup__1\
     port map (
      Q(7 downto 0) => p_14_out(7 downto 0),
      RD_PNTR_WR(0) => p_25_out(8),
      WR_PNTR_RD(7 downto 0) => p_24_out(7 downto 0),
      \gmux.gm[3].gms.ms\(7 downto 0) => wr_pntr_plus2(7 downto 0),
      \gmux.gm[3].gms.ms_0\(7 downto 0) => wr_pntr_plus3(7 downto 0),
      \gmux.gm[4].gms.ms\(0) => rd_pntr_plus1(8),
      \gmux.gm[4].gms.ms_0\(0) => rd_pntr_plus2(8),
      rd_clk => rd_clk,
      \src_gray_ff_reg[8]\(8 downto 0) => p_0_out(8 downto 0),
      \src_gray_ff_reg[8]_0\(8 downto 0) => p_13_out(8 downto 0),
      v1_reg(3 downto 0) => \gwas.wsts/c1/v1_reg\(3 downto 0),
      v1_reg_0(3 downto 0) => \gwas.wsts/c2/v1_reg\(3 downto 0),
      v1_reg_1(3 downto 0) => \gwas.wsts/gaf.c3/v1_reg\(3 downto 0),
      v1_reg_2(0) => \gras.rsts/c0/v1_reg\(4),
      v1_reg_3(0) => \gras.rsts/c1/v1_reg\(4),
      v1_reg_4(0) => \gras.rsts/gae.c2/v1_reg\(4),
      wr_clk => wr_clk
    );
\gntv_or_sync_fifo.gl0.rd\: entity work.Zynq_Design_UART_V1_9_0_0_rd_logic_5
     port map (
      Q(0) => rd_pntr_plus2(8),
      SS(0) => \^ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      WR_PNTR_RD(7 downto 0) => p_24_out(7 downto 0),
      almost_empty => almost_empty,
      empty => empty,
      \gae.ram_almost_empty_i_reg\(0) => \gras.rsts/c1/v1_reg\(4),
      \gae.ram_almost_empty_i_reg_0\(0) => \gras.rsts/gae.c2/v1_reg\(4),
      \gc1.count_d1_reg[8]\(0) => rd_pntr_plus1(8),
      \gc1.count_d2_reg[8]\(8 downto 0) => p_0_out(8 downto 0),
      \out\ => p_2_out,
      ram_empty_fb_i_reg(0) => \gras.rsts/c0/v1_reg\(4),
      rd_clk => rd_clk,
      rd_en => rd_en
    );
\gntv_or_sync_fifo.gl0.wr\: entity work.Zynq_Design_UART_V1_9_0_0_wr_logic_6
     port map (
      E(0) => p_20_out,
      FULL_FB => \gntv_or_sync_fifo.gl0.wr_n_1\,
      Q(7 downto 0) => wr_pntr_plus3(7 downto 0),
      RD_PNTR_WR(0) => p_25_out(8),
      almost_full => almost_full,
      full => full,
      \gic0.gc1.count_d1_reg[7]\(7 downto 0) => wr_pntr_plus2(7 downto 0),
      \gic0.gc1.count_d2_reg[7]\(7 downto 0) => p_14_out(7 downto 0),
      \gic0.gc1.count_d3_reg[0]\ => rstblk_n_0,
      \gic0.gc1.count_d3_reg[8]\(8 downto 0) => p_13_out(8 downto 0),
      \gmux.gm[4].gms.ms\(3 downto 0) => \gwas.wsts/c1/v1_reg\(3 downto 0),
      \gmux.gm[4].gms.ms_0\(3 downto 0) => \gwas.wsts/c2/v1_reg\(3 downto 0),
      \gmux.gm[4].gms.ms_1\(3 downto 0) => \gwas.wsts/gaf.c3/v1_reg\(3 downto 0),
      \out\ => rst_full_gen_i,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
\gntv_or_sync_fifo.mem\: entity work.Zynq_Design_UART_V1_9_0_0_memory_7
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(8 downto 0) => p_0_out(8 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_0\(8 downto 0) => p_13_out(8 downto 0),
      E(0) => p_20_out,
      FULL_FB => \gntv_or_sync_fifo.gl0.wr_n_1\,
      POR_B => \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/POR_B\,
      SS(0) => \^ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      \out\ => p_2_out,
      ram_rstram_b => \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ram_rstram_b\,
      rd_clk => rd_clk,
      rd_en => rd_en,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
rstblk: entity work.\Zynq_Design_UART_V1_9_0_0_reset_blk_ramfifo__xdcDup__1\
     port map (
      POR_B => \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/POR_B\,
      SS(0) => \^ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_ic_reg_0\ => rstblk_n_0,
      \out\ => rst_full_gen_i,
      ram_rstram_b => \gbm.gbmg.gbmga.ngecc.bmg/inst_blk_mem_gen/gnbram.gnativebmg.native_blk_mem_gen/valid.cstr/ramloop[0].ram.r/ram_rstram_b\,
      rd_clk => rd_clk,
      rst => rst,
      wr_clk => wr_clk,
      wr_rst_busy => wr_rst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_UART_V1_9_0_0_fifo_generator_top is
  port (
    SS : out STD_LOGIC_VECTOR ( 0 to 0 );
    wr_rst_busy : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    empty : out STD_LOGIC;
    full : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_Design_UART_V1_9_0_0_fifo_generator_top : entity is "fifo_generator_top";
end Zynq_Design_UART_V1_9_0_0_fifo_generator_top;

architecture STRUCTURE of Zynq_Design_UART_V1_9_0_0_fifo_generator_top is
begin
\grf.rf\: entity work.Zynq_Design_UART_V1_9_0_0_fifo_generator_ramfifo
     port map (
      almost_empty => almost_empty,
      almost_full => almost_full,
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      empty => empty,
      full => full,
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ => SS(0),
      rd_clk => rd_clk,
      rd_en => rd_en,
      rst => rst,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wr_rst_busy => wr_rst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Zynq_Design_UART_V1_9_0_0_fifo_generator_top__xdcDup__1\ is
  port (
    SS : out STD_LOGIC_VECTOR ( 0 to 0 );
    wr_rst_busy : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    empty : out STD_LOGIC;
    full : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Zynq_Design_UART_V1_9_0_0_fifo_generator_top__xdcDup__1\ : entity is "fifo_generator_top";
end \Zynq_Design_UART_V1_9_0_0_fifo_generator_top__xdcDup__1\;

architecture STRUCTURE of \Zynq_Design_UART_V1_9_0_0_fifo_generator_top__xdcDup__1\ is
begin
\grf.rf\: entity work.\Zynq_Design_UART_V1_9_0_0_fifo_generator_ramfifo__xdcDup__1\
     port map (
      almost_empty => almost_empty,
      almost_full => almost_full,
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      empty => empty,
      full => full,
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ => SS(0),
      rd_clk => rd_clk,
      rd_en => rd_en,
      rst => rst,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wr_rst_busy => wr_rst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4_synth is
  port (
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    empty : out STD_LOGIC;
    full : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4_synth : entity is "fifo_generator_v13_2_4_synth";
end Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4_synth;

architecture STRUCTURE of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4_synth is
begin
\gconvfifo.rf\: entity work.Zynq_Design_UART_V1_9_0_0_fifo_generator_top
     port map (
      SS(0) => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      almost_empty => almost_empty,
      almost_full => almost_full,
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      empty => empty,
      full => full,
      rd_clk => rd_clk,
      rd_en => rd_en,
      rst => rst,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wr_rst_busy => wr_rst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4_synth__xdcDup__1\ is
  port (
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    empty : out STD_LOGIC;
    full : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4_synth__xdcDup__1\ : entity is "fifo_generator_v13_2_4_synth";
end \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4_synth__xdcDup__1\;

architecture STRUCTURE of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4_synth__xdcDup__1\ is
begin
\gconvfifo.rf\: entity work.\Zynq_Design_UART_V1_9_0_0_fifo_generator_top__xdcDup__1\
     port map (
      SS(0) => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\,
      almost_empty => almost_empty,
      almost_full => almost_full,
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      empty => empty,
      full => full,
      rd_clk => rd_clk,
      rd_en => rd_en,
      rst => rst,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wr_rst_busy => wr_rst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 is
  port (
    backup : in STD_LOGIC;
    backup_marker : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    srst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_rst : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    prog_empty_thresh : in STD_LOGIC_VECTOR ( 8 downto 0 );
    prog_empty_thresh_assert : in STD_LOGIC_VECTOR ( 8 downto 0 );
    prog_empty_thresh_negate : in STD_LOGIC_VECTOR ( 8 downto 0 );
    prog_full_thresh : in STD_LOGIC_VECTOR ( 8 downto 0 );
    prog_full_thresh_assert : in STD_LOGIC_VECTOR ( 8 downto 0 );
    prog_full_thresh_negate : in STD_LOGIC_VECTOR ( 8 downto 0 );
    int_clk : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    sleep : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    full : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    overflow : out STD_LOGIC;
    empty : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    valid : out STD_LOGIC;
    underflow : out STD_LOGIC;
    data_count : out STD_LOGIC_VECTOR ( 8 downto 0 );
    rd_data_count : out STD_LOGIC_VECTOR ( 8 downto 0 );
    wr_data_count : out STD_LOGIC_VECTOR ( 8 downto 0 );
    prog_full : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    m_aclk : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    m_aclk_en : in STD_LOGIC;
    s_aclk_en : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_buser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_ruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_injectsbiterr : in STD_LOGIC;
    axi_aw_injectdbiterr : in STD_LOGIC;
    axi_aw_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_sbiterr : out STD_LOGIC;
    axi_aw_dbiterr : out STD_LOGIC;
    axi_aw_overflow : out STD_LOGIC;
    axi_aw_underflow : out STD_LOGIC;
    axi_aw_prog_full : out STD_LOGIC;
    axi_aw_prog_empty : out STD_LOGIC;
    axi_w_injectsbiterr : in STD_LOGIC;
    axi_w_injectdbiterr : in STD_LOGIC;
    axi_w_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_w_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_w_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_sbiterr : out STD_LOGIC;
    axi_w_dbiterr : out STD_LOGIC;
    axi_w_overflow : out STD_LOGIC;
    axi_w_underflow : out STD_LOGIC;
    axi_w_prog_full : out STD_LOGIC;
    axi_w_prog_empty : out STD_LOGIC;
    axi_b_injectsbiterr : in STD_LOGIC;
    axi_b_injectdbiterr : in STD_LOGIC;
    axi_b_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_b_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_b_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_sbiterr : out STD_LOGIC;
    axi_b_dbiterr : out STD_LOGIC;
    axi_b_overflow : out STD_LOGIC;
    axi_b_underflow : out STD_LOGIC;
    axi_b_prog_full : out STD_LOGIC;
    axi_b_prog_empty : out STD_LOGIC;
    axi_ar_injectsbiterr : in STD_LOGIC;
    axi_ar_injectdbiterr : in STD_LOGIC;
    axi_ar_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_ar_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_ar_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_sbiterr : out STD_LOGIC;
    axi_ar_dbiterr : out STD_LOGIC;
    axi_ar_overflow : out STD_LOGIC;
    axi_ar_underflow : out STD_LOGIC;
    axi_ar_prog_full : out STD_LOGIC;
    axi_ar_prog_empty : out STD_LOGIC;
    axi_r_injectsbiterr : in STD_LOGIC;
    axi_r_injectdbiterr : in STD_LOGIC;
    axi_r_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_r_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_r_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_sbiterr : out STD_LOGIC;
    axi_r_dbiterr : out STD_LOGIC;
    axi_r_overflow : out STD_LOGIC;
    axi_r_underflow : out STD_LOGIC;
    axi_r_prog_full : out STD_LOGIC;
    axi_r_prog_empty : out STD_LOGIC;
    axis_injectsbiterr : in STD_LOGIC;
    axis_injectdbiterr : in STD_LOGIC;
    axis_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axis_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axis_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_sbiterr : out STD_LOGIC;
    axis_dbiterr : out STD_LOGIC;
    axis_overflow : out STD_LOGIC;
    axis_underflow : out STD_LOGIC;
    axis_prog_full : out STD_LOGIC;
    axis_prog_empty : out STD_LOGIC
  );
  attribute C_ADD_NGC_CONSTRAINT : integer;
  attribute C_ADD_NGC_CONSTRAINT of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_APPLICATION_TYPE_AXIS : integer;
  attribute C_APPLICATION_TYPE_AXIS of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_APPLICATION_TYPE_RACH : integer;
  attribute C_APPLICATION_TYPE_RACH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_APPLICATION_TYPE_RDCH : integer;
  attribute C_APPLICATION_TYPE_RDCH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_APPLICATION_TYPE_WACH : integer;
  attribute C_APPLICATION_TYPE_WACH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_APPLICATION_TYPE_WDCH : integer;
  attribute C_APPLICATION_TYPE_WDCH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_APPLICATION_TYPE_WRCH : integer;
  attribute C_APPLICATION_TYPE_WRCH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 8;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 1;
  attribute C_AXIS_TKEEP_WIDTH : integer;
  attribute C_AXIS_TKEEP_WIDTH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 1;
  attribute C_AXIS_TSTRB_WIDTH : integer;
  attribute C_AXIS_TSTRB_WIDTH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 1;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 4;
  attribute C_AXIS_TYPE : integer;
  attribute C_AXIS_TYPE of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 1;
  attribute C_AXI_LEN_WIDTH : integer;
  attribute C_AXI_LEN_WIDTH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 8;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 1;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 1;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_COUNT_TYPE : integer;
  attribute C_COUNT_TYPE of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 9;
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is "BlankString";
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 8;
  attribute C_DIN_WIDTH_AXIS : integer;
  attribute C_DIN_WIDTH_AXIS of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 1;
  attribute C_DIN_WIDTH_RACH : integer;
  attribute C_DIN_WIDTH_RACH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 32;
  attribute C_DIN_WIDTH_RDCH : integer;
  attribute C_DIN_WIDTH_RDCH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 64;
  attribute C_DIN_WIDTH_WACH : integer;
  attribute C_DIN_WIDTH_WACH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 1;
  attribute C_DIN_WIDTH_WDCH : integer;
  attribute C_DIN_WIDTH_WDCH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 64;
  attribute C_DIN_WIDTH_WRCH : integer;
  attribute C_DIN_WIDTH_WRCH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 2;
  attribute C_DOUT_RST_VAL : string;
  attribute C_DOUT_RST_VAL of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is "0";
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 8;
  attribute C_ENABLE_RLOCS : integer;
  attribute C_ENABLE_RLOCS of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_ENABLE_RST_SYNC : integer;
  attribute C_ENABLE_RST_SYNC of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 1;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 1;
  attribute C_ERROR_INJECTION_TYPE : integer;
  attribute C_ERROR_INJECTION_TYPE of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_AXIS : integer;
  attribute C_ERROR_INJECTION_TYPE_AXIS of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_RACH : integer;
  attribute C_ERROR_INJECTION_TYPE_RACH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_RDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_RDCH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WACH : integer;
  attribute C_ERROR_INJECTION_TYPE_WACH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WDCH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WRCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WRCH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is "zynq";
  attribute C_FULL_FLAGS_RST_VAL : integer;
  attribute C_FULL_FLAGS_RST_VAL of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 1;
  attribute C_HAS_ALMOST_EMPTY : integer;
  attribute C_HAS_ALMOST_EMPTY of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 1;
  attribute C_HAS_ALMOST_FULL : integer;
  attribute C_HAS_ALMOST_FULL of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 1;
  attribute C_HAS_AXIS_TDATA : integer;
  attribute C_HAS_AXIS_TDATA of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 1;
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_AXIS_TLAST : integer;
  attribute C_HAS_AXIS_TLAST of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_AXIS_TREADY : integer;
  attribute C_HAS_AXIS_TREADY of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 1;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 1;
  attribute C_HAS_AXI_ARUSER : integer;
  attribute C_HAS_AXI_ARUSER of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_AXI_AWUSER : integer;
  attribute C_HAS_AXI_AWUSER of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_AXI_BUSER : integer;
  attribute C_HAS_AXI_BUSER of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_AXI_RD_CHANNEL : integer;
  attribute C_HAS_AXI_RD_CHANNEL of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 1;
  attribute C_HAS_AXI_RUSER : integer;
  attribute C_HAS_AXI_RUSER of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_AXI_WR_CHANNEL : integer;
  attribute C_HAS_AXI_WR_CHANNEL of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 1;
  attribute C_HAS_AXI_WUSER : integer;
  attribute C_HAS_AXI_WUSER of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_BACKUP : integer;
  attribute C_HAS_BACKUP of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_DATA_COUNT : integer;
  attribute C_HAS_DATA_COUNT of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_DATA_COUNTS_AXIS : integer;
  attribute C_HAS_DATA_COUNTS_AXIS of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_DATA_COUNTS_RACH : integer;
  attribute C_HAS_DATA_COUNTS_RACH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_DATA_COUNTS_RDCH : integer;
  attribute C_HAS_DATA_COUNTS_RDCH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_DATA_COUNTS_WACH : integer;
  attribute C_HAS_DATA_COUNTS_WACH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_DATA_COUNTS_WDCH : integer;
  attribute C_HAS_DATA_COUNTS_WDCH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_DATA_COUNTS_WRCH : integer;
  attribute C_HAS_DATA_COUNTS_WRCH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_INT_CLK : integer;
  attribute C_HAS_INT_CLK of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_MASTER_CE : integer;
  attribute C_HAS_MASTER_CE of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_MEMINIT_FILE : integer;
  attribute C_HAS_MEMINIT_FILE of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_PROG_FLAGS_AXIS : integer;
  attribute C_HAS_PROG_FLAGS_AXIS of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_PROG_FLAGS_RACH : integer;
  attribute C_HAS_PROG_FLAGS_RACH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_PROG_FLAGS_RDCH : integer;
  attribute C_HAS_PROG_FLAGS_RDCH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_PROG_FLAGS_WACH : integer;
  attribute C_HAS_PROG_FLAGS_WACH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_PROG_FLAGS_WDCH : integer;
  attribute C_HAS_PROG_FLAGS_WDCH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_PROG_FLAGS_WRCH : integer;
  attribute C_HAS_PROG_FLAGS_WRCH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_RD_DATA_COUNT : integer;
  attribute C_HAS_RD_DATA_COUNT of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_RD_RST : integer;
  attribute C_HAS_RD_RST of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_RST : integer;
  attribute C_HAS_RST of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 1;
  attribute C_HAS_SLAVE_CE : integer;
  attribute C_HAS_SLAVE_CE of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_SRST : integer;
  attribute C_HAS_SRST of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_VALID : integer;
  attribute C_HAS_VALID of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_WR_ACK : integer;
  attribute C_HAS_WR_ACK of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_WR_DATA_COUNT : integer;
  attribute C_HAS_WR_DATA_COUNT of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_HAS_WR_RST : integer;
  attribute C_HAS_WR_RST of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_IMPLEMENTATION_TYPE : integer;
  attribute C_IMPLEMENTATION_TYPE of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 2;
  attribute C_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute C_IMPLEMENTATION_TYPE_AXIS of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_RACH : integer;
  attribute C_IMPLEMENTATION_TYPE_RACH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_RDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_RDCH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WACH : integer;
  attribute C_IMPLEMENTATION_TYPE_WACH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WDCH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WRCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WRCH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 1;
  attribute C_INIT_WR_PNTR_VAL : integer;
  attribute C_INIT_WR_PNTR_VAL of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 1;
  attribute C_MIF_FILE_NAME : string;
  attribute C_MIF_FILE_NAME of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is "BlankString";
  attribute C_MSGON_VAL : integer;
  attribute C_MSGON_VAL of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 1;
  attribute C_OPTIMIZATION_MODE : integer;
  attribute C_OPTIMIZATION_MODE of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_OVERFLOW_LOW : integer;
  attribute C_OVERFLOW_LOW of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_POWER_SAVING_MODE : integer;
  attribute C_POWER_SAVING_MODE of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_PRELOAD_LATENCY : integer;
  attribute C_PRELOAD_LATENCY of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 1;
  attribute C_PRELOAD_REGS : integer;
  attribute C_PRELOAD_REGS of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_PRIM_FIFO_TYPE : string;
  attribute C_PRIM_FIFO_TYPE of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_AXIS : string;
  attribute C_PRIM_FIFO_TYPE_AXIS of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is "1kx18";
  attribute C_PRIM_FIFO_TYPE_RACH : string;
  attribute C_PRIM_FIFO_TYPE_RACH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_RDCH : string;
  attribute C_PRIM_FIFO_TYPE_RDCH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WACH : string;
  attribute C_PRIM_FIFO_TYPE_WACH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_WDCH : string;
  attribute C_PRIM_FIFO_TYPE_WDCH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WRCH : string;
  attribute C_PRIM_FIFO_TYPE_WRCH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is "512x36";
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 2;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 3;
  attribute C_PROG_EMPTY_TYPE : integer;
  attribute C_PROG_EMPTY_TYPE of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_AXIS : integer;
  attribute C_PROG_EMPTY_TYPE_AXIS of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_RACH : integer;
  attribute C_PROG_EMPTY_TYPE_RACH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_RDCH : integer;
  attribute C_PROG_EMPTY_TYPE_RDCH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WACH : integer;
  attribute C_PROG_EMPTY_TYPE_WACH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WDCH : integer;
  attribute C_PROG_EMPTY_TYPE_WDCH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WRCH : integer;
  attribute C_PROG_EMPTY_TYPE_WRCH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 509;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 1023;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 508;
  attribute C_PROG_FULL_TYPE : integer;
  attribute C_PROG_FULL_TYPE of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_PROG_FULL_TYPE_AXIS : integer;
  attribute C_PROG_FULL_TYPE_AXIS of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_PROG_FULL_TYPE_RACH : integer;
  attribute C_PROG_FULL_TYPE_RACH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_PROG_FULL_TYPE_RDCH : integer;
  attribute C_PROG_FULL_TYPE_RDCH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_PROG_FULL_TYPE_WACH : integer;
  attribute C_PROG_FULL_TYPE_WACH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_PROG_FULL_TYPE_WDCH : integer;
  attribute C_PROG_FULL_TYPE_WDCH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_PROG_FULL_TYPE_WRCH : integer;
  attribute C_PROG_FULL_TYPE_WRCH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_RACH_TYPE : integer;
  attribute C_RACH_TYPE of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_RDCH_TYPE : integer;
  attribute C_RDCH_TYPE of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 9;
  attribute C_RD_DEPTH : integer;
  attribute C_RD_DEPTH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 512;
  attribute C_RD_FREQ : integer;
  attribute C_RD_FREQ of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 1;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 9;
  attribute C_REG_SLICE_MODE_AXIS : integer;
  attribute C_REG_SLICE_MODE_AXIS of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_REG_SLICE_MODE_RACH : integer;
  attribute C_REG_SLICE_MODE_RACH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_REG_SLICE_MODE_RDCH : integer;
  attribute C_REG_SLICE_MODE_RDCH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_REG_SLICE_MODE_WACH : integer;
  attribute C_REG_SLICE_MODE_WACH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_REG_SLICE_MODE_WDCH : integer;
  attribute C_REG_SLICE_MODE_WDCH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_REG_SLICE_MODE_WRCH : integer;
  attribute C_REG_SLICE_MODE_WRCH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 2;
  attribute C_UNDERFLOW_LOW : integer;
  attribute C_UNDERFLOW_LOW of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_USE_COMMON_OVERFLOW : integer;
  attribute C_USE_COMMON_OVERFLOW of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_USE_COMMON_UNDERFLOW : integer;
  attribute C_USE_COMMON_UNDERFLOW of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_USE_DEFAULT_SETTINGS : integer;
  attribute C_USE_DEFAULT_SETTINGS of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_USE_DOUT_RST : integer;
  attribute C_USE_DOUT_RST of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 1;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_USE_ECC_AXIS : integer;
  attribute C_USE_ECC_AXIS of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_USE_ECC_RACH : integer;
  attribute C_USE_ECC_RACH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_USE_ECC_RDCH : integer;
  attribute C_USE_ECC_RDCH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_USE_ECC_WACH : integer;
  attribute C_USE_ECC_WACH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_USE_ECC_WDCH : integer;
  attribute C_USE_ECC_WDCH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_USE_ECC_WRCH : integer;
  attribute C_USE_ECC_WRCH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_USE_EMBEDDED_REG : integer;
  attribute C_USE_EMBEDDED_REG of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_USE_FIFO16_FLAGS : integer;
  attribute C_USE_FIFO16_FLAGS of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_USE_FWFT_DATA_COUNT : integer;
  attribute C_USE_FWFT_DATA_COUNT of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_USE_PIPELINE_REG : integer;
  attribute C_USE_PIPELINE_REG of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_VALID_LOW : integer;
  attribute C_VALID_LOW of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_WACH_TYPE : integer;
  attribute C_WACH_TYPE of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_WDCH_TYPE : integer;
  attribute C_WDCH_TYPE of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_WRCH_TYPE : integer;
  attribute C_WRCH_TYPE of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_WR_ACK_LOW : integer;
  attribute C_WR_ACK_LOW of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 0;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 9;
  attribute C_WR_DEPTH : integer;
  attribute C_WR_DEPTH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 512;
  attribute C_WR_DEPTH_AXIS : integer;
  attribute C_WR_DEPTH_AXIS of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 1024;
  attribute C_WR_DEPTH_RACH : integer;
  attribute C_WR_DEPTH_RACH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 16;
  attribute C_WR_DEPTH_RDCH : integer;
  attribute C_WR_DEPTH_RDCH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 1024;
  attribute C_WR_DEPTH_WACH : integer;
  attribute C_WR_DEPTH_WACH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 16;
  attribute C_WR_DEPTH_WDCH : integer;
  attribute C_WR_DEPTH_WDCH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 1024;
  attribute C_WR_DEPTH_WRCH : integer;
  attribute C_WR_DEPTH_WRCH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 16;
  attribute C_WR_FREQ : integer;
  attribute C_WR_FREQ of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 1;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 9;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 10;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 4;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 10;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 4;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 10;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 4;
  attribute C_WR_RESPONSE_LATENCY : integer;
  attribute C_WR_RESPONSE_LATENCY of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 : entity is "fifo_generator_v13_2_4";
end Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4;

architecture STRUCTURE of Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
begin
  axi_ar_data_count(4) <= \<const0>\;
  axi_ar_data_count(3) <= \<const0>\;
  axi_ar_data_count(2) <= \<const0>\;
  axi_ar_data_count(1) <= \<const0>\;
  axi_ar_data_count(0) <= \<const0>\;
  axi_ar_dbiterr <= \<const0>\;
  axi_ar_overflow <= \<const0>\;
  axi_ar_prog_empty <= \<const1>\;
  axi_ar_prog_full <= \<const0>\;
  axi_ar_rd_data_count(4) <= \<const0>\;
  axi_ar_rd_data_count(3) <= \<const0>\;
  axi_ar_rd_data_count(2) <= \<const0>\;
  axi_ar_rd_data_count(1) <= \<const0>\;
  axi_ar_rd_data_count(0) <= \<const0>\;
  axi_ar_sbiterr <= \<const0>\;
  axi_ar_underflow <= \<const0>\;
  axi_ar_wr_data_count(4) <= \<const0>\;
  axi_ar_wr_data_count(3) <= \<const0>\;
  axi_ar_wr_data_count(2) <= \<const0>\;
  axi_ar_wr_data_count(1) <= \<const0>\;
  axi_ar_wr_data_count(0) <= \<const0>\;
  axi_aw_data_count(4) <= \<const0>\;
  axi_aw_data_count(3) <= \<const0>\;
  axi_aw_data_count(2) <= \<const0>\;
  axi_aw_data_count(1) <= \<const0>\;
  axi_aw_data_count(0) <= \<const0>\;
  axi_aw_dbiterr <= \<const0>\;
  axi_aw_overflow <= \<const0>\;
  axi_aw_prog_empty <= \<const1>\;
  axi_aw_prog_full <= \<const0>\;
  axi_aw_rd_data_count(4) <= \<const0>\;
  axi_aw_rd_data_count(3) <= \<const0>\;
  axi_aw_rd_data_count(2) <= \<const0>\;
  axi_aw_rd_data_count(1) <= \<const0>\;
  axi_aw_rd_data_count(0) <= \<const0>\;
  axi_aw_sbiterr <= \<const0>\;
  axi_aw_underflow <= \<const0>\;
  axi_aw_wr_data_count(4) <= \<const0>\;
  axi_aw_wr_data_count(3) <= \<const0>\;
  axi_aw_wr_data_count(2) <= \<const0>\;
  axi_aw_wr_data_count(1) <= \<const0>\;
  axi_aw_wr_data_count(0) <= \<const0>\;
  axi_b_data_count(4) <= \<const0>\;
  axi_b_data_count(3) <= \<const0>\;
  axi_b_data_count(2) <= \<const0>\;
  axi_b_data_count(1) <= \<const0>\;
  axi_b_data_count(0) <= \<const0>\;
  axi_b_dbiterr <= \<const0>\;
  axi_b_overflow <= \<const0>\;
  axi_b_prog_empty <= \<const1>\;
  axi_b_prog_full <= \<const0>\;
  axi_b_rd_data_count(4) <= \<const0>\;
  axi_b_rd_data_count(3) <= \<const0>\;
  axi_b_rd_data_count(2) <= \<const0>\;
  axi_b_rd_data_count(1) <= \<const0>\;
  axi_b_rd_data_count(0) <= \<const0>\;
  axi_b_sbiterr <= \<const0>\;
  axi_b_underflow <= \<const0>\;
  axi_b_wr_data_count(4) <= \<const0>\;
  axi_b_wr_data_count(3) <= \<const0>\;
  axi_b_wr_data_count(2) <= \<const0>\;
  axi_b_wr_data_count(1) <= \<const0>\;
  axi_b_wr_data_count(0) <= \<const0>\;
  axi_r_data_count(10) <= \<const0>\;
  axi_r_data_count(9) <= \<const0>\;
  axi_r_data_count(8) <= \<const0>\;
  axi_r_data_count(7) <= \<const0>\;
  axi_r_data_count(6) <= \<const0>\;
  axi_r_data_count(5) <= \<const0>\;
  axi_r_data_count(4) <= \<const0>\;
  axi_r_data_count(3) <= \<const0>\;
  axi_r_data_count(2) <= \<const0>\;
  axi_r_data_count(1) <= \<const0>\;
  axi_r_data_count(0) <= \<const0>\;
  axi_r_dbiterr <= \<const0>\;
  axi_r_overflow <= \<const0>\;
  axi_r_prog_empty <= \<const1>\;
  axi_r_prog_full <= \<const0>\;
  axi_r_rd_data_count(10) <= \<const0>\;
  axi_r_rd_data_count(9) <= \<const0>\;
  axi_r_rd_data_count(8) <= \<const0>\;
  axi_r_rd_data_count(7) <= \<const0>\;
  axi_r_rd_data_count(6) <= \<const0>\;
  axi_r_rd_data_count(5) <= \<const0>\;
  axi_r_rd_data_count(4) <= \<const0>\;
  axi_r_rd_data_count(3) <= \<const0>\;
  axi_r_rd_data_count(2) <= \<const0>\;
  axi_r_rd_data_count(1) <= \<const0>\;
  axi_r_rd_data_count(0) <= \<const0>\;
  axi_r_sbiterr <= \<const0>\;
  axi_r_underflow <= \<const0>\;
  axi_r_wr_data_count(10) <= \<const0>\;
  axi_r_wr_data_count(9) <= \<const0>\;
  axi_r_wr_data_count(8) <= \<const0>\;
  axi_r_wr_data_count(7) <= \<const0>\;
  axi_r_wr_data_count(6) <= \<const0>\;
  axi_r_wr_data_count(5) <= \<const0>\;
  axi_r_wr_data_count(4) <= \<const0>\;
  axi_r_wr_data_count(3) <= \<const0>\;
  axi_r_wr_data_count(2) <= \<const0>\;
  axi_r_wr_data_count(1) <= \<const0>\;
  axi_r_wr_data_count(0) <= \<const0>\;
  axi_w_data_count(10) <= \<const0>\;
  axi_w_data_count(9) <= \<const0>\;
  axi_w_data_count(8) <= \<const0>\;
  axi_w_data_count(7) <= \<const0>\;
  axi_w_data_count(6) <= \<const0>\;
  axi_w_data_count(5) <= \<const0>\;
  axi_w_data_count(4) <= \<const0>\;
  axi_w_data_count(3) <= \<const0>\;
  axi_w_data_count(2) <= \<const0>\;
  axi_w_data_count(1) <= \<const0>\;
  axi_w_data_count(0) <= \<const0>\;
  axi_w_dbiterr <= \<const0>\;
  axi_w_overflow <= \<const0>\;
  axi_w_prog_empty <= \<const1>\;
  axi_w_prog_full <= \<const0>\;
  axi_w_rd_data_count(10) <= \<const0>\;
  axi_w_rd_data_count(9) <= \<const0>\;
  axi_w_rd_data_count(8) <= \<const0>\;
  axi_w_rd_data_count(7) <= \<const0>\;
  axi_w_rd_data_count(6) <= \<const0>\;
  axi_w_rd_data_count(5) <= \<const0>\;
  axi_w_rd_data_count(4) <= \<const0>\;
  axi_w_rd_data_count(3) <= \<const0>\;
  axi_w_rd_data_count(2) <= \<const0>\;
  axi_w_rd_data_count(1) <= \<const0>\;
  axi_w_rd_data_count(0) <= \<const0>\;
  axi_w_sbiterr <= \<const0>\;
  axi_w_underflow <= \<const0>\;
  axi_w_wr_data_count(10) <= \<const0>\;
  axi_w_wr_data_count(9) <= \<const0>\;
  axi_w_wr_data_count(8) <= \<const0>\;
  axi_w_wr_data_count(7) <= \<const0>\;
  axi_w_wr_data_count(6) <= \<const0>\;
  axi_w_wr_data_count(5) <= \<const0>\;
  axi_w_wr_data_count(4) <= \<const0>\;
  axi_w_wr_data_count(3) <= \<const0>\;
  axi_w_wr_data_count(2) <= \<const0>\;
  axi_w_wr_data_count(1) <= \<const0>\;
  axi_w_wr_data_count(0) <= \<const0>\;
  axis_data_count(10) <= \<const0>\;
  axis_data_count(9) <= \<const0>\;
  axis_data_count(8) <= \<const0>\;
  axis_data_count(7) <= \<const0>\;
  axis_data_count(6) <= \<const0>\;
  axis_data_count(5) <= \<const0>\;
  axis_data_count(4) <= \<const0>\;
  axis_data_count(3) <= \<const0>\;
  axis_data_count(2) <= \<const0>\;
  axis_data_count(1) <= \<const0>\;
  axis_data_count(0) <= \<const0>\;
  axis_dbiterr <= \<const0>\;
  axis_overflow <= \<const0>\;
  axis_prog_empty <= \<const1>\;
  axis_prog_full <= \<const0>\;
  axis_rd_data_count(10) <= \<const0>\;
  axis_rd_data_count(9) <= \<const0>\;
  axis_rd_data_count(8) <= \<const0>\;
  axis_rd_data_count(7) <= \<const0>\;
  axis_rd_data_count(6) <= \<const0>\;
  axis_rd_data_count(5) <= \<const0>\;
  axis_rd_data_count(4) <= \<const0>\;
  axis_rd_data_count(3) <= \<const0>\;
  axis_rd_data_count(2) <= \<const0>\;
  axis_rd_data_count(1) <= \<const0>\;
  axis_rd_data_count(0) <= \<const0>\;
  axis_sbiterr <= \<const0>\;
  axis_underflow <= \<const0>\;
  axis_wr_data_count(10) <= \<const0>\;
  axis_wr_data_count(9) <= \<const0>\;
  axis_wr_data_count(8) <= \<const0>\;
  axis_wr_data_count(7) <= \<const0>\;
  axis_wr_data_count(6) <= \<const0>\;
  axis_wr_data_count(5) <= \<const0>\;
  axis_wr_data_count(4) <= \<const0>\;
  axis_wr_data_count(3) <= \<const0>\;
  axis_wr_data_count(2) <= \<const0>\;
  axis_wr_data_count(1) <= \<const0>\;
  axis_wr_data_count(0) <= \<const0>\;
  data_count(8) <= \<const0>\;
  data_count(7) <= \<const0>\;
  data_count(6) <= \<const0>\;
  data_count(5) <= \<const0>\;
  data_count(4) <= \<const0>\;
  data_count(3) <= \<const0>\;
  data_count(2) <= \<const0>\;
  data_count(1) <= \<const0>\;
  data_count(0) <= \<const0>\;
  dbiterr <= \<const0>\;
  m_axi_araddr(31) <= \<const0>\;
  m_axi_araddr(30) <= \<const0>\;
  m_axi_araddr(29) <= \<const0>\;
  m_axi_araddr(28) <= \<const0>\;
  m_axi_araddr(27) <= \<const0>\;
  m_axi_araddr(26) <= \<const0>\;
  m_axi_araddr(25) <= \<const0>\;
  m_axi_araddr(24) <= \<const0>\;
  m_axi_araddr(23) <= \<const0>\;
  m_axi_araddr(22) <= \<const0>\;
  m_axi_araddr(21) <= \<const0>\;
  m_axi_araddr(20) <= \<const0>\;
  m_axi_araddr(19) <= \<const0>\;
  m_axi_araddr(18) <= \<const0>\;
  m_axi_araddr(17) <= \<const0>\;
  m_axi_araddr(16) <= \<const0>\;
  m_axi_araddr(15) <= \<const0>\;
  m_axi_araddr(14) <= \<const0>\;
  m_axi_araddr(13) <= \<const0>\;
  m_axi_araddr(12) <= \<const0>\;
  m_axi_araddr(11) <= \<const0>\;
  m_axi_araddr(10) <= \<const0>\;
  m_axi_araddr(9) <= \<const0>\;
  m_axi_araddr(8) <= \<const0>\;
  m_axi_araddr(7) <= \<const0>\;
  m_axi_araddr(6) <= \<const0>\;
  m_axi_araddr(5) <= \<const0>\;
  m_axi_araddr(4) <= \<const0>\;
  m_axi_araddr(3) <= \<const0>\;
  m_axi_araddr(2) <= \<const0>\;
  m_axi_araddr(1) <= \<const0>\;
  m_axi_araddr(0) <= \<const0>\;
  m_axi_arburst(1) <= \<const0>\;
  m_axi_arburst(0) <= \<const0>\;
  m_axi_arcache(3) <= \<const0>\;
  m_axi_arcache(2) <= \<const0>\;
  m_axi_arcache(1) <= \<const0>\;
  m_axi_arcache(0) <= \<const0>\;
  m_axi_arid(0) <= \<const0>\;
  m_axi_arlen(7) <= \<const0>\;
  m_axi_arlen(6) <= \<const0>\;
  m_axi_arlen(5) <= \<const0>\;
  m_axi_arlen(4) <= \<const0>\;
  m_axi_arlen(3) <= \<const0>\;
  m_axi_arlen(2) <= \<const0>\;
  m_axi_arlen(1) <= \<const0>\;
  m_axi_arlen(0) <= \<const0>\;
  m_axi_arlock(0) <= \<const0>\;
  m_axi_arprot(2) <= \<const0>\;
  m_axi_arprot(1) <= \<const0>\;
  m_axi_arprot(0) <= \<const0>\;
  m_axi_arqos(3) <= \<const0>\;
  m_axi_arqos(2) <= \<const0>\;
  m_axi_arqos(1) <= \<const0>\;
  m_axi_arqos(0) <= \<const0>\;
  m_axi_arregion(3) <= \<const0>\;
  m_axi_arregion(2) <= \<const0>\;
  m_axi_arregion(1) <= \<const0>\;
  m_axi_arregion(0) <= \<const0>\;
  m_axi_arsize(2) <= \<const0>\;
  m_axi_arsize(1) <= \<const0>\;
  m_axi_arsize(0) <= \<const0>\;
  m_axi_aruser(0) <= \<const0>\;
  m_axi_arvalid <= \<const0>\;
  m_axi_awaddr(31) <= \<const0>\;
  m_axi_awaddr(30) <= \<const0>\;
  m_axi_awaddr(29) <= \<const0>\;
  m_axi_awaddr(28) <= \<const0>\;
  m_axi_awaddr(27) <= \<const0>\;
  m_axi_awaddr(26) <= \<const0>\;
  m_axi_awaddr(25) <= \<const0>\;
  m_axi_awaddr(24) <= \<const0>\;
  m_axi_awaddr(23) <= \<const0>\;
  m_axi_awaddr(22) <= \<const0>\;
  m_axi_awaddr(21) <= \<const0>\;
  m_axi_awaddr(20) <= \<const0>\;
  m_axi_awaddr(19) <= \<const0>\;
  m_axi_awaddr(18) <= \<const0>\;
  m_axi_awaddr(17) <= \<const0>\;
  m_axi_awaddr(16) <= \<const0>\;
  m_axi_awaddr(15) <= \<const0>\;
  m_axi_awaddr(14) <= \<const0>\;
  m_axi_awaddr(13) <= \<const0>\;
  m_axi_awaddr(12) <= \<const0>\;
  m_axi_awaddr(11) <= \<const0>\;
  m_axi_awaddr(10) <= \<const0>\;
  m_axi_awaddr(9) <= \<const0>\;
  m_axi_awaddr(8) <= \<const0>\;
  m_axi_awaddr(7) <= \<const0>\;
  m_axi_awaddr(6) <= \<const0>\;
  m_axi_awaddr(5) <= \<const0>\;
  m_axi_awaddr(4) <= \<const0>\;
  m_axi_awaddr(3) <= \<const0>\;
  m_axi_awaddr(2) <= \<const0>\;
  m_axi_awaddr(1) <= \<const0>\;
  m_axi_awaddr(0) <= \<const0>\;
  m_axi_awburst(1) <= \<const0>\;
  m_axi_awburst(0) <= \<const0>\;
  m_axi_awcache(3) <= \<const0>\;
  m_axi_awcache(2) <= \<const0>\;
  m_axi_awcache(1) <= \<const0>\;
  m_axi_awcache(0) <= \<const0>\;
  m_axi_awid(0) <= \<const0>\;
  m_axi_awlen(7) <= \<const0>\;
  m_axi_awlen(6) <= \<const0>\;
  m_axi_awlen(5) <= \<const0>\;
  m_axi_awlen(4) <= \<const0>\;
  m_axi_awlen(3) <= \<const0>\;
  m_axi_awlen(2) <= \<const0>\;
  m_axi_awlen(1) <= \<const0>\;
  m_axi_awlen(0) <= \<const0>\;
  m_axi_awlock(0) <= \<const0>\;
  m_axi_awprot(2) <= \<const0>\;
  m_axi_awprot(1) <= \<const0>\;
  m_axi_awprot(0) <= \<const0>\;
  m_axi_awqos(3) <= \<const0>\;
  m_axi_awqos(2) <= \<const0>\;
  m_axi_awqos(1) <= \<const0>\;
  m_axi_awqos(0) <= \<const0>\;
  m_axi_awregion(3) <= \<const0>\;
  m_axi_awregion(2) <= \<const0>\;
  m_axi_awregion(1) <= \<const0>\;
  m_axi_awregion(0) <= \<const0>\;
  m_axi_awsize(2) <= \<const0>\;
  m_axi_awsize(1) <= \<const0>\;
  m_axi_awsize(0) <= \<const0>\;
  m_axi_awuser(0) <= \<const0>\;
  m_axi_awvalid <= \<const0>\;
  m_axi_bready <= \<const0>\;
  m_axi_rready <= \<const0>\;
  m_axi_wdata(63) <= \<const0>\;
  m_axi_wdata(62) <= \<const0>\;
  m_axi_wdata(61) <= \<const0>\;
  m_axi_wdata(60) <= \<const0>\;
  m_axi_wdata(59) <= \<const0>\;
  m_axi_wdata(58) <= \<const0>\;
  m_axi_wdata(57) <= \<const0>\;
  m_axi_wdata(56) <= \<const0>\;
  m_axi_wdata(55) <= \<const0>\;
  m_axi_wdata(54) <= \<const0>\;
  m_axi_wdata(53) <= \<const0>\;
  m_axi_wdata(52) <= \<const0>\;
  m_axi_wdata(51) <= \<const0>\;
  m_axi_wdata(50) <= \<const0>\;
  m_axi_wdata(49) <= \<const0>\;
  m_axi_wdata(48) <= \<const0>\;
  m_axi_wdata(47) <= \<const0>\;
  m_axi_wdata(46) <= \<const0>\;
  m_axi_wdata(45) <= \<const0>\;
  m_axi_wdata(44) <= \<const0>\;
  m_axi_wdata(43) <= \<const0>\;
  m_axi_wdata(42) <= \<const0>\;
  m_axi_wdata(41) <= \<const0>\;
  m_axi_wdata(40) <= \<const0>\;
  m_axi_wdata(39) <= \<const0>\;
  m_axi_wdata(38) <= \<const0>\;
  m_axi_wdata(37) <= \<const0>\;
  m_axi_wdata(36) <= \<const0>\;
  m_axi_wdata(35) <= \<const0>\;
  m_axi_wdata(34) <= \<const0>\;
  m_axi_wdata(33) <= \<const0>\;
  m_axi_wdata(32) <= \<const0>\;
  m_axi_wdata(31) <= \<const0>\;
  m_axi_wdata(30) <= \<const0>\;
  m_axi_wdata(29) <= \<const0>\;
  m_axi_wdata(28) <= \<const0>\;
  m_axi_wdata(27) <= \<const0>\;
  m_axi_wdata(26) <= \<const0>\;
  m_axi_wdata(25) <= \<const0>\;
  m_axi_wdata(24) <= \<const0>\;
  m_axi_wdata(23) <= \<const0>\;
  m_axi_wdata(22) <= \<const0>\;
  m_axi_wdata(21) <= \<const0>\;
  m_axi_wdata(20) <= \<const0>\;
  m_axi_wdata(19) <= \<const0>\;
  m_axi_wdata(18) <= \<const0>\;
  m_axi_wdata(17) <= \<const0>\;
  m_axi_wdata(16) <= \<const0>\;
  m_axi_wdata(15) <= \<const0>\;
  m_axi_wdata(14) <= \<const0>\;
  m_axi_wdata(13) <= \<const0>\;
  m_axi_wdata(12) <= \<const0>\;
  m_axi_wdata(11) <= \<const0>\;
  m_axi_wdata(10) <= \<const0>\;
  m_axi_wdata(9) <= \<const0>\;
  m_axi_wdata(8) <= \<const0>\;
  m_axi_wdata(7) <= \<const0>\;
  m_axi_wdata(6) <= \<const0>\;
  m_axi_wdata(5) <= \<const0>\;
  m_axi_wdata(4) <= \<const0>\;
  m_axi_wdata(3) <= \<const0>\;
  m_axi_wdata(2) <= \<const0>\;
  m_axi_wdata(1) <= \<const0>\;
  m_axi_wdata(0) <= \<const0>\;
  m_axi_wid(0) <= \<const0>\;
  m_axi_wlast <= \<const0>\;
  m_axi_wstrb(7) <= \<const0>\;
  m_axi_wstrb(6) <= \<const0>\;
  m_axi_wstrb(5) <= \<const0>\;
  m_axi_wstrb(4) <= \<const0>\;
  m_axi_wstrb(3) <= \<const0>\;
  m_axi_wstrb(2) <= \<const0>\;
  m_axi_wstrb(1) <= \<const0>\;
  m_axi_wstrb(0) <= \<const0>\;
  m_axi_wuser(0) <= \<const0>\;
  m_axi_wvalid <= \<const0>\;
  m_axis_tdata(7) <= \<const0>\;
  m_axis_tdata(6) <= \<const0>\;
  m_axis_tdata(5) <= \<const0>\;
  m_axis_tdata(4) <= \<const0>\;
  m_axis_tdata(3) <= \<const0>\;
  m_axis_tdata(2) <= \<const0>\;
  m_axis_tdata(1) <= \<const0>\;
  m_axis_tdata(0) <= \<const0>\;
  m_axis_tdest(0) <= \<const0>\;
  m_axis_tid(0) <= \<const0>\;
  m_axis_tkeep(0) <= \<const0>\;
  m_axis_tlast <= \<const0>\;
  m_axis_tstrb(0) <= \<const0>\;
  m_axis_tuser(3) <= \<const0>\;
  m_axis_tuser(2) <= \<const0>\;
  m_axis_tuser(1) <= \<const0>\;
  m_axis_tuser(0) <= \<const0>\;
  m_axis_tvalid <= \<const0>\;
  overflow <= \<const0>\;
  prog_empty <= \<const0>\;
  prog_full <= \<const0>\;
  rd_data_count(8) <= \<const0>\;
  rd_data_count(7) <= \<const0>\;
  rd_data_count(6) <= \<const0>\;
  rd_data_count(5) <= \<const0>\;
  rd_data_count(4) <= \<const0>\;
  rd_data_count(3) <= \<const0>\;
  rd_data_count(2) <= \<const0>\;
  rd_data_count(1) <= \<const0>\;
  rd_data_count(0) <= \<const0>\;
  s_axi_arready <= \<const0>\;
  s_axi_awready <= \<const0>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_buser(0) <= \<const0>\;
  s_axi_bvalid <= \<const0>\;
  s_axi_rdata(63) <= \<const0>\;
  s_axi_rdata(62) <= \<const0>\;
  s_axi_rdata(61) <= \<const0>\;
  s_axi_rdata(60) <= \<const0>\;
  s_axi_rdata(59) <= \<const0>\;
  s_axi_rdata(58) <= \<const0>\;
  s_axi_rdata(57) <= \<const0>\;
  s_axi_rdata(56) <= \<const0>\;
  s_axi_rdata(55) <= \<const0>\;
  s_axi_rdata(54) <= \<const0>\;
  s_axi_rdata(53) <= \<const0>\;
  s_axi_rdata(52) <= \<const0>\;
  s_axi_rdata(51) <= \<const0>\;
  s_axi_rdata(50) <= \<const0>\;
  s_axi_rdata(49) <= \<const0>\;
  s_axi_rdata(48) <= \<const0>\;
  s_axi_rdata(47) <= \<const0>\;
  s_axi_rdata(46) <= \<const0>\;
  s_axi_rdata(45) <= \<const0>\;
  s_axi_rdata(44) <= \<const0>\;
  s_axi_rdata(43) <= \<const0>\;
  s_axi_rdata(42) <= \<const0>\;
  s_axi_rdata(41) <= \<const0>\;
  s_axi_rdata(40) <= \<const0>\;
  s_axi_rdata(39) <= \<const0>\;
  s_axi_rdata(38) <= \<const0>\;
  s_axi_rdata(37) <= \<const0>\;
  s_axi_rdata(36) <= \<const0>\;
  s_axi_rdata(35) <= \<const0>\;
  s_axi_rdata(34) <= \<const0>\;
  s_axi_rdata(33) <= \<const0>\;
  s_axi_rdata(32) <= \<const0>\;
  s_axi_rdata(31) <= \<const0>\;
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_rlast <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_ruser(0) <= \<const0>\;
  s_axi_rvalid <= \<const0>\;
  s_axi_wready <= \<const0>\;
  s_axis_tready <= \<const0>\;
  sbiterr <= \<const0>\;
  underflow <= \<const0>\;
  valid <= \<const0>\;
  wr_ack <= \<const0>\;
  wr_data_count(8) <= \<const0>\;
  wr_data_count(7) <= \<const0>\;
  wr_data_count(6) <= \<const0>\;
  wr_data_count(5) <= \<const0>\;
  wr_data_count(4) <= \<const0>\;
  wr_data_count(3) <= \<const0>\;
  wr_data_count(2) <= \<const0>\;
  wr_data_count(1) <= \<const0>\;
  wr_data_count(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst_fifo_gen: entity work.Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4_synth
     port map (
      almost_empty => almost_empty,
      almost_full => almost_full,
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      empty => empty,
      full => full,
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ => rd_rst_busy,
      rd_clk => rd_clk,
      rd_en => rd_en,
      rst => rst,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wr_rst_busy => wr_rst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ is
  port (
    backup : in STD_LOGIC;
    backup_marker : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    srst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_rst : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    prog_empty_thresh : in STD_LOGIC_VECTOR ( 8 downto 0 );
    prog_empty_thresh_assert : in STD_LOGIC_VECTOR ( 8 downto 0 );
    prog_empty_thresh_negate : in STD_LOGIC_VECTOR ( 8 downto 0 );
    prog_full_thresh : in STD_LOGIC_VECTOR ( 8 downto 0 );
    prog_full_thresh_assert : in STD_LOGIC_VECTOR ( 8 downto 0 );
    prog_full_thresh_negate : in STD_LOGIC_VECTOR ( 8 downto 0 );
    int_clk : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    sleep : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    full : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    overflow : out STD_LOGIC;
    empty : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    valid : out STD_LOGIC;
    underflow : out STD_LOGIC;
    data_count : out STD_LOGIC_VECTOR ( 8 downto 0 );
    rd_data_count : out STD_LOGIC_VECTOR ( 8 downto 0 );
    wr_data_count : out STD_LOGIC_VECTOR ( 8 downto 0 );
    prog_full : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    m_aclk : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    m_aclk_en : in STD_LOGIC;
    s_aclk_en : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_buser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_ruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_injectsbiterr : in STD_LOGIC;
    axi_aw_injectdbiterr : in STD_LOGIC;
    axi_aw_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_sbiterr : out STD_LOGIC;
    axi_aw_dbiterr : out STD_LOGIC;
    axi_aw_overflow : out STD_LOGIC;
    axi_aw_underflow : out STD_LOGIC;
    axi_aw_prog_full : out STD_LOGIC;
    axi_aw_prog_empty : out STD_LOGIC;
    axi_w_injectsbiterr : in STD_LOGIC;
    axi_w_injectdbiterr : in STD_LOGIC;
    axi_w_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_w_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_w_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_sbiterr : out STD_LOGIC;
    axi_w_dbiterr : out STD_LOGIC;
    axi_w_overflow : out STD_LOGIC;
    axi_w_underflow : out STD_LOGIC;
    axi_w_prog_full : out STD_LOGIC;
    axi_w_prog_empty : out STD_LOGIC;
    axi_b_injectsbiterr : in STD_LOGIC;
    axi_b_injectdbiterr : in STD_LOGIC;
    axi_b_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_b_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_b_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_sbiterr : out STD_LOGIC;
    axi_b_dbiterr : out STD_LOGIC;
    axi_b_overflow : out STD_LOGIC;
    axi_b_underflow : out STD_LOGIC;
    axi_b_prog_full : out STD_LOGIC;
    axi_b_prog_empty : out STD_LOGIC;
    axi_ar_injectsbiterr : in STD_LOGIC;
    axi_ar_injectdbiterr : in STD_LOGIC;
    axi_ar_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_ar_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_ar_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_sbiterr : out STD_LOGIC;
    axi_ar_dbiterr : out STD_LOGIC;
    axi_ar_overflow : out STD_LOGIC;
    axi_ar_underflow : out STD_LOGIC;
    axi_ar_prog_full : out STD_LOGIC;
    axi_ar_prog_empty : out STD_LOGIC;
    axi_r_injectsbiterr : in STD_LOGIC;
    axi_r_injectdbiterr : in STD_LOGIC;
    axi_r_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_r_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_r_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_sbiterr : out STD_LOGIC;
    axi_r_dbiterr : out STD_LOGIC;
    axi_r_overflow : out STD_LOGIC;
    axi_r_underflow : out STD_LOGIC;
    axi_r_prog_full : out STD_LOGIC;
    axi_r_prog_empty : out STD_LOGIC;
    axis_injectsbiterr : in STD_LOGIC;
    axis_injectdbiterr : in STD_LOGIC;
    axis_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axis_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axis_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_sbiterr : out STD_LOGIC;
    axis_dbiterr : out STD_LOGIC;
    axis_overflow : out STD_LOGIC;
    axis_underflow : out STD_LOGIC;
    axis_prog_full : out STD_LOGIC;
    axis_prog_empty : out STD_LOGIC
  );
  attribute C_ADD_NGC_CONSTRAINT : integer;
  attribute C_ADD_NGC_CONSTRAINT of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_APPLICATION_TYPE_AXIS : integer;
  attribute C_APPLICATION_TYPE_AXIS of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_APPLICATION_TYPE_RACH : integer;
  attribute C_APPLICATION_TYPE_RACH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_APPLICATION_TYPE_RDCH : integer;
  attribute C_APPLICATION_TYPE_RDCH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_APPLICATION_TYPE_WACH : integer;
  attribute C_APPLICATION_TYPE_WACH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_APPLICATION_TYPE_WDCH : integer;
  attribute C_APPLICATION_TYPE_WDCH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_APPLICATION_TYPE_WRCH : integer;
  attribute C_APPLICATION_TYPE_WRCH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 8;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 1;
  attribute C_AXIS_TKEEP_WIDTH : integer;
  attribute C_AXIS_TKEEP_WIDTH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 1;
  attribute C_AXIS_TSTRB_WIDTH : integer;
  attribute C_AXIS_TSTRB_WIDTH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 1;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 4;
  attribute C_AXIS_TYPE : integer;
  attribute C_AXIS_TYPE of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 1;
  attribute C_AXI_LEN_WIDTH : integer;
  attribute C_AXI_LEN_WIDTH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 8;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 1;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 1;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_COUNT_TYPE : integer;
  attribute C_COUNT_TYPE of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 9;
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is "BlankString";
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 8;
  attribute C_DIN_WIDTH_AXIS : integer;
  attribute C_DIN_WIDTH_AXIS of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 1;
  attribute C_DIN_WIDTH_RACH : integer;
  attribute C_DIN_WIDTH_RACH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 32;
  attribute C_DIN_WIDTH_RDCH : integer;
  attribute C_DIN_WIDTH_RDCH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 64;
  attribute C_DIN_WIDTH_WACH : integer;
  attribute C_DIN_WIDTH_WACH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 1;
  attribute C_DIN_WIDTH_WDCH : integer;
  attribute C_DIN_WIDTH_WDCH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 64;
  attribute C_DIN_WIDTH_WRCH : integer;
  attribute C_DIN_WIDTH_WRCH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 2;
  attribute C_DOUT_RST_VAL : string;
  attribute C_DOUT_RST_VAL of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is "0";
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 8;
  attribute C_ENABLE_RLOCS : integer;
  attribute C_ENABLE_RLOCS of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_ENABLE_RST_SYNC : integer;
  attribute C_ENABLE_RST_SYNC of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 1;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 1;
  attribute C_ERROR_INJECTION_TYPE : integer;
  attribute C_ERROR_INJECTION_TYPE of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_AXIS : integer;
  attribute C_ERROR_INJECTION_TYPE_AXIS of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_RACH : integer;
  attribute C_ERROR_INJECTION_TYPE_RACH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_RDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_RDCH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WACH : integer;
  attribute C_ERROR_INJECTION_TYPE_WACH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WDCH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WRCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WRCH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is "zynq";
  attribute C_FULL_FLAGS_RST_VAL : integer;
  attribute C_FULL_FLAGS_RST_VAL of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 1;
  attribute C_HAS_ALMOST_EMPTY : integer;
  attribute C_HAS_ALMOST_EMPTY of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 1;
  attribute C_HAS_ALMOST_FULL : integer;
  attribute C_HAS_ALMOST_FULL of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 1;
  attribute C_HAS_AXIS_TDATA : integer;
  attribute C_HAS_AXIS_TDATA of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 1;
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_HAS_AXIS_TLAST : integer;
  attribute C_HAS_AXIS_TLAST of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_HAS_AXIS_TREADY : integer;
  attribute C_HAS_AXIS_TREADY of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 1;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 1;
  attribute C_HAS_AXI_ARUSER : integer;
  attribute C_HAS_AXI_ARUSER of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_HAS_AXI_AWUSER : integer;
  attribute C_HAS_AXI_AWUSER of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_HAS_AXI_BUSER : integer;
  attribute C_HAS_AXI_BUSER of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_HAS_AXI_RD_CHANNEL : integer;
  attribute C_HAS_AXI_RD_CHANNEL of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 1;
  attribute C_HAS_AXI_RUSER : integer;
  attribute C_HAS_AXI_RUSER of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_HAS_AXI_WR_CHANNEL : integer;
  attribute C_HAS_AXI_WR_CHANNEL of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 1;
  attribute C_HAS_AXI_WUSER : integer;
  attribute C_HAS_AXI_WUSER of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_HAS_BACKUP : integer;
  attribute C_HAS_BACKUP of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_HAS_DATA_COUNT : integer;
  attribute C_HAS_DATA_COUNT of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_HAS_DATA_COUNTS_AXIS : integer;
  attribute C_HAS_DATA_COUNTS_AXIS of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_HAS_DATA_COUNTS_RACH : integer;
  attribute C_HAS_DATA_COUNTS_RACH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_HAS_DATA_COUNTS_RDCH : integer;
  attribute C_HAS_DATA_COUNTS_RDCH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_HAS_DATA_COUNTS_WACH : integer;
  attribute C_HAS_DATA_COUNTS_WACH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_HAS_DATA_COUNTS_WDCH : integer;
  attribute C_HAS_DATA_COUNTS_WDCH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_HAS_DATA_COUNTS_WRCH : integer;
  attribute C_HAS_DATA_COUNTS_WRCH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_HAS_INT_CLK : integer;
  attribute C_HAS_INT_CLK of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_HAS_MASTER_CE : integer;
  attribute C_HAS_MASTER_CE of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_HAS_MEMINIT_FILE : integer;
  attribute C_HAS_MEMINIT_FILE of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_HAS_PROG_FLAGS_AXIS : integer;
  attribute C_HAS_PROG_FLAGS_AXIS of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_HAS_PROG_FLAGS_RACH : integer;
  attribute C_HAS_PROG_FLAGS_RACH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_HAS_PROG_FLAGS_RDCH : integer;
  attribute C_HAS_PROG_FLAGS_RDCH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_HAS_PROG_FLAGS_WACH : integer;
  attribute C_HAS_PROG_FLAGS_WACH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_HAS_PROG_FLAGS_WDCH : integer;
  attribute C_HAS_PROG_FLAGS_WDCH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_HAS_PROG_FLAGS_WRCH : integer;
  attribute C_HAS_PROG_FLAGS_WRCH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_HAS_RD_DATA_COUNT : integer;
  attribute C_HAS_RD_DATA_COUNT of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_HAS_RD_RST : integer;
  attribute C_HAS_RD_RST of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_HAS_RST : integer;
  attribute C_HAS_RST of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 1;
  attribute C_HAS_SLAVE_CE : integer;
  attribute C_HAS_SLAVE_CE of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_HAS_SRST : integer;
  attribute C_HAS_SRST of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_HAS_VALID : integer;
  attribute C_HAS_VALID of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_HAS_WR_ACK : integer;
  attribute C_HAS_WR_ACK of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_HAS_WR_DATA_COUNT : integer;
  attribute C_HAS_WR_DATA_COUNT of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_HAS_WR_RST : integer;
  attribute C_HAS_WR_RST of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_IMPLEMENTATION_TYPE : integer;
  attribute C_IMPLEMENTATION_TYPE of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 2;
  attribute C_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute C_IMPLEMENTATION_TYPE_AXIS of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_RACH : integer;
  attribute C_IMPLEMENTATION_TYPE_RACH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_RDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_RDCH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WACH : integer;
  attribute C_IMPLEMENTATION_TYPE_WACH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WDCH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WRCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WRCH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 1;
  attribute C_INIT_WR_PNTR_VAL : integer;
  attribute C_INIT_WR_PNTR_VAL of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 1;
  attribute C_MIF_FILE_NAME : string;
  attribute C_MIF_FILE_NAME of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is "BlankString";
  attribute C_MSGON_VAL : integer;
  attribute C_MSGON_VAL of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 1;
  attribute C_OPTIMIZATION_MODE : integer;
  attribute C_OPTIMIZATION_MODE of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_OVERFLOW_LOW : integer;
  attribute C_OVERFLOW_LOW of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_POWER_SAVING_MODE : integer;
  attribute C_POWER_SAVING_MODE of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_PRELOAD_LATENCY : integer;
  attribute C_PRELOAD_LATENCY of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 1;
  attribute C_PRELOAD_REGS : integer;
  attribute C_PRELOAD_REGS of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_PRIM_FIFO_TYPE : string;
  attribute C_PRIM_FIFO_TYPE of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_AXIS : string;
  attribute C_PRIM_FIFO_TYPE_AXIS of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is "1kx18";
  attribute C_PRIM_FIFO_TYPE_RACH : string;
  attribute C_PRIM_FIFO_TYPE_RACH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_RDCH : string;
  attribute C_PRIM_FIFO_TYPE_RDCH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WACH : string;
  attribute C_PRIM_FIFO_TYPE_WACH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_WDCH : string;
  attribute C_PRIM_FIFO_TYPE_WDCH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WRCH : string;
  attribute C_PRIM_FIFO_TYPE_WRCH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is "512x36";
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 2;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 3;
  attribute C_PROG_EMPTY_TYPE : integer;
  attribute C_PROG_EMPTY_TYPE of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_PROG_EMPTY_TYPE_AXIS : integer;
  attribute C_PROG_EMPTY_TYPE_AXIS of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_PROG_EMPTY_TYPE_RACH : integer;
  attribute C_PROG_EMPTY_TYPE_RACH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_PROG_EMPTY_TYPE_RDCH : integer;
  attribute C_PROG_EMPTY_TYPE_RDCH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WACH : integer;
  attribute C_PROG_EMPTY_TYPE_WACH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WDCH : integer;
  attribute C_PROG_EMPTY_TYPE_WDCH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WRCH : integer;
  attribute C_PROG_EMPTY_TYPE_WRCH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 509;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 1023;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 508;
  attribute C_PROG_FULL_TYPE : integer;
  attribute C_PROG_FULL_TYPE of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_PROG_FULL_TYPE_AXIS : integer;
  attribute C_PROG_FULL_TYPE_AXIS of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_PROG_FULL_TYPE_RACH : integer;
  attribute C_PROG_FULL_TYPE_RACH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_PROG_FULL_TYPE_RDCH : integer;
  attribute C_PROG_FULL_TYPE_RDCH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_PROG_FULL_TYPE_WACH : integer;
  attribute C_PROG_FULL_TYPE_WACH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_PROG_FULL_TYPE_WDCH : integer;
  attribute C_PROG_FULL_TYPE_WDCH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_PROG_FULL_TYPE_WRCH : integer;
  attribute C_PROG_FULL_TYPE_WRCH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_RACH_TYPE : integer;
  attribute C_RACH_TYPE of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_RDCH_TYPE : integer;
  attribute C_RDCH_TYPE of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 9;
  attribute C_RD_DEPTH : integer;
  attribute C_RD_DEPTH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 512;
  attribute C_RD_FREQ : integer;
  attribute C_RD_FREQ of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 1;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 9;
  attribute C_REG_SLICE_MODE_AXIS : integer;
  attribute C_REG_SLICE_MODE_AXIS of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_REG_SLICE_MODE_RACH : integer;
  attribute C_REG_SLICE_MODE_RACH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_REG_SLICE_MODE_RDCH : integer;
  attribute C_REG_SLICE_MODE_RDCH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_REG_SLICE_MODE_WACH : integer;
  attribute C_REG_SLICE_MODE_WACH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_REG_SLICE_MODE_WDCH : integer;
  attribute C_REG_SLICE_MODE_WDCH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_REG_SLICE_MODE_WRCH : integer;
  attribute C_REG_SLICE_MODE_WRCH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 2;
  attribute C_UNDERFLOW_LOW : integer;
  attribute C_UNDERFLOW_LOW of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_USE_COMMON_OVERFLOW : integer;
  attribute C_USE_COMMON_OVERFLOW of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_USE_COMMON_UNDERFLOW : integer;
  attribute C_USE_COMMON_UNDERFLOW of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_USE_DEFAULT_SETTINGS : integer;
  attribute C_USE_DEFAULT_SETTINGS of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_USE_DOUT_RST : integer;
  attribute C_USE_DOUT_RST of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 1;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_USE_ECC_AXIS : integer;
  attribute C_USE_ECC_AXIS of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_USE_ECC_RACH : integer;
  attribute C_USE_ECC_RACH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_USE_ECC_RDCH : integer;
  attribute C_USE_ECC_RDCH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_USE_ECC_WACH : integer;
  attribute C_USE_ECC_WACH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_USE_ECC_WDCH : integer;
  attribute C_USE_ECC_WDCH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_USE_ECC_WRCH : integer;
  attribute C_USE_ECC_WRCH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_USE_EMBEDDED_REG : integer;
  attribute C_USE_EMBEDDED_REG of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_USE_FIFO16_FLAGS : integer;
  attribute C_USE_FIFO16_FLAGS of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_USE_FWFT_DATA_COUNT : integer;
  attribute C_USE_FWFT_DATA_COUNT of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_USE_PIPELINE_REG : integer;
  attribute C_USE_PIPELINE_REG of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_VALID_LOW : integer;
  attribute C_VALID_LOW of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_WACH_TYPE : integer;
  attribute C_WACH_TYPE of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_WDCH_TYPE : integer;
  attribute C_WDCH_TYPE of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_WRCH_TYPE : integer;
  attribute C_WRCH_TYPE of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_WR_ACK_LOW : integer;
  attribute C_WR_ACK_LOW of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 0;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 9;
  attribute C_WR_DEPTH : integer;
  attribute C_WR_DEPTH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 512;
  attribute C_WR_DEPTH_AXIS : integer;
  attribute C_WR_DEPTH_AXIS of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 1024;
  attribute C_WR_DEPTH_RACH : integer;
  attribute C_WR_DEPTH_RACH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 16;
  attribute C_WR_DEPTH_RDCH : integer;
  attribute C_WR_DEPTH_RDCH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 1024;
  attribute C_WR_DEPTH_WACH : integer;
  attribute C_WR_DEPTH_WACH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 16;
  attribute C_WR_DEPTH_WDCH : integer;
  attribute C_WR_DEPTH_WDCH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 1024;
  attribute C_WR_DEPTH_WRCH : integer;
  attribute C_WR_DEPTH_WRCH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 16;
  attribute C_WR_FREQ : integer;
  attribute C_WR_FREQ of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 1;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 9;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 10;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 4;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 10;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 4;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 10;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 4;
  attribute C_WR_RESPONSE_LATENCY : integer;
  attribute C_WR_RESPONSE_LATENCY of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ : entity is "fifo_generator_v13_2_4";
end \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\;

architecture STRUCTURE of \Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\ is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
begin
  axi_ar_data_count(4) <= \<const0>\;
  axi_ar_data_count(3) <= \<const0>\;
  axi_ar_data_count(2) <= \<const0>\;
  axi_ar_data_count(1) <= \<const0>\;
  axi_ar_data_count(0) <= \<const0>\;
  axi_ar_dbiterr <= \<const0>\;
  axi_ar_overflow <= \<const0>\;
  axi_ar_prog_empty <= \<const1>\;
  axi_ar_prog_full <= \<const0>\;
  axi_ar_rd_data_count(4) <= \<const0>\;
  axi_ar_rd_data_count(3) <= \<const0>\;
  axi_ar_rd_data_count(2) <= \<const0>\;
  axi_ar_rd_data_count(1) <= \<const0>\;
  axi_ar_rd_data_count(0) <= \<const0>\;
  axi_ar_sbiterr <= \<const0>\;
  axi_ar_underflow <= \<const0>\;
  axi_ar_wr_data_count(4) <= \<const0>\;
  axi_ar_wr_data_count(3) <= \<const0>\;
  axi_ar_wr_data_count(2) <= \<const0>\;
  axi_ar_wr_data_count(1) <= \<const0>\;
  axi_ar_wr_data_count(0) <= \<const0>\;
  axi_aw_data_count(4) <= \<const0>\;
  axi_aw_data_count(3) <= \<const0>\;
  axi_aw_data_count(2) <= \<const0>\;
  axi_aw_data_count(1) <= \<const0>\;
  axi_aw_data_count(0) <= \<const0>\;
  axi_aw_dbiterr <= \<const0>\;
  axi_aw_overflow <= \<const0>\;
  axi_aw_prog_empty <= \<const1>\;
  axi_aw_prog_full <= \<const0>\;
  axi_aw_rd_data_count(4) <= \<const0>\;
  axi_aw_rd_data_count(3) <= \<const0>\;
  axi_aw_rd_data_count(2) <= \<const0>\;
  axi_aw_rd_data_count(1) <= \<const0>\;
  axi_aw_rd_data_count(0) <= \<const0>\;
  axi_aw_sbiterr <= \<const0>\;
  axi_aw_underflow <= \<const0>\;
  axi_aw_wr_data_count(4) <= \<const0>\;
  axi_aw_wr_data_count(3) <= \<const0>\;
  axi_aw_wr_data_count(2) <= \<const0>\;
  axi_aw_wr_data_count(1) <= \<const0>\;
  axi_aw_wr_data_count(0) <= \<const0>\;
  axi_b_data_count(4) <= \<const0>\;
  axi_b_data_count(3) <= \<const0>\;
  axi_b_data_count(2) <= \<const0>\;
  axi_b_data_count(1) <= \<const0>\;
  axi_b_data_count(0) <= \<const0>\;
  axi_b_dbiterr <= \<const0>\;
  axi_b_overflow <= \<const0>\;
  axi_b_prog_empty <= \<const1>\;
  axi_b_prog_full <= \<const0>\;
  axi_b_rd_data_count(4) <= \<const0>\;
  axi_b_rd_data_count(3) <= \<const0>\;
  axi_b_rd_data_count(2) <= \<const0>\;
  axi_b_rd_data_count(1) <= \<const0>\;
  axi_b_rd_data_count(0) <= \<const0>\;
  axi_b_sbiterr <= \<const0>\;
  axi_b_underflow <= \<const0>\;
  axi_b_wr_data_count(4) <= \<const0>\;
  axi_b_wr_data_count(3) <= \<const0>\;
  axi_b_wr_data_count(2) <= \<const0>\;
  axi_b_wr_data_count(1) <= \<const0>\;
  axi_b_wr_data_count(0) <= \<const0>\;
  axi_r_data_count(10) <= \<const0>\;
  axi_r_data_count(9) <= \<const0>\;
  axi_r_data_count(8) <= \<const0>\;
  axi_r_data_count(7) <= \<const0>\;
  axi_r_data_count(6) <= \<const0>\;
  axi_r_data_count(5) <= \<const0>\;
  axi_r_data_count(4) <= \<const0>\;
  axi_r_data_count(3) <= \<const0>\;
  axi_r_data_count(2) <= \<const0>\;
  axi_r_data_count(1) <= \<const0>\;
  axi_r_data_count(0) <= \<const0>\;
  axi_r_dbiterr <= \<const0>\;
  axi_r_overflow <= \<const0>\;
  axi_r_prog_empty <= \<const1>\;
  axi_r_prog_full <= \<const0>\;
  axi_r_rd_data_count(10) <= \<const0>\;
  axi_r_rd_data_count(9) <= \<const0>\;
  axi_r_rd_data_count(8) <= \<const0>\;
  axi_r_rd_data_count(7) <= \<const0>\;
  axi_r_rd_data_count(6) <= \<const0>\;
  axi_r_rd_data_count(5) <= \<const0>\;
  axi_r_rd_data_count(4) <= \<const0>\;
  axi_r_rd_data_count(3) <= \<const0>\;
  axi_r_rd_data_count(2) <= \<const0>\;
  axi_r_rd_data_count(1) <= \<const0>\;
  axi_r_rd_data_count(0) <= \<const0>\;
  axi_r_sbiterr <= \<const0>\;
  axi_r_underflow <= \<const0>\;
  axi_r_wr_data_count(10) <= \<const0>\;
  axi_r_wr_data_count(9) <= \<const0>\;
  axi_r_wr_data_count(8) <= \<const0>\;
  axi_r_wr_data_count(7) <= \<const0>\;
  axi_r_wr_data_count(6) <= \<const0>\;
  axi_r_wr_data_count(5) <= \<const0>\;
  axi_r_wr_data_count(4) <= \<const0>\;
  axi_r_wr_data_count(3) <= \<const0>\;
  axi_r_wr_data_count(2) <= \<const0>\;
  axi_r_wr_data_count(1) <= \<const0>\;
  axi_r_wr_data_count(0) <= \<const0>\;
  axi_w_data_count(10) <= \<const0>\;
  axi_w_data_count(9) <= \<const0>\;
  axi_w_data_count(8) <= \<const0>\;
  axi_w_data_count(7) <= \<const0>\;
  axi_w_data_count(6) <= \<const0>\;
  axi_w_data_count(5) <= \<const0>\;
  axi_w_data_count(4) <= \<const0>\;
  axi_w_data_count(3) <= \<const0>\;
  axi_w_data_count(2) <= \<const0>\;
  axi_w_data_count(1) <= \<const0>\;
  axi_w_data_count(0) <= \<const0>\;
  axi_w_dbiterr <= \<const0>\;
  axi_w_overflow <= \<const0>\;
  axi_w_prog_empty <= \<const1>\;
  axi_w_prog_full <= \<const0>\;
  axi_w_rd_data_count(10) <= \<const0>\;
  axi_w_rd_data_count(9) <= \<const0>\;
  axi_w_rd_data_count(8) <= \<const0>\;
  axi_w_rd_data_count(7) <= \<const0>\;
  axi_w_rd_data_count(6) <= \<const0>\;
  axi_w_rd_data_count(5) <= \<const0>\;
  axi_w_rd_data_count(4) <= \<const0>\;
  axi_w_rd_data_count(3) <= \<const0>\;
  axi_w_rd_data_count(2) <= \<const0>\;
  axi_w_rd_data_count(1) <= \<const0>\;
  axi_w_rd_data_count(0) <= \<const0>\;
  axi_w_sbiterr <= \<const0>\;
  axi_w_underflow <= \<const0>\;
  axi_w_wr_data_count(10) <= \<const0>\;
  axi_w_wr_data_count(9) <= \<const0>\;
  axi_w_wr_data_count(8) <= \<const0>\;
  axi_w_wr_data_count(7) <= \<const0>\;
  axi_w_wr_data_count(6) <= \<const0>\;
  axi_w_wr_data_count(5) <= \<const0>\;
  axi_w_wr_data_count(4) <= \<const0>\;
  axi_w_wr_data_count(3) <= \<const0>\;
  axi_w_wr_data_count(2) <= \<const0>\;
  axi_w_wr_data_count(1) <= \<const0>\;
  axi_w_wr_data_count(0) <= \<const0>\;
  axis_data_count(10) <= \<const0>\;
  axis_data_count(9) <= \<const0>\;
  axis_data_count(8) <= \<const0>\;
  axis_data_count(7) <= \<const0>\;
  axis_data_count(6) <= \<const0>\;
  axis_data_count(5) <= \<const0>\;
  axis_data_count(4) <= \<const0>\;
  axis_data_count(3) <= \<const0>\;
  axis_data_count(2) <= \<const0>\;
  axis_data_count(1) <= \<const0>\;
  axis_data_count(0) <= \<const0>\;
  axis_dbiterr <= \<const0>\;
  axis_overflow <= \<const0>\;
  axis_prog_empty <= \<const1>\;
  axis_prog_full <= \<const0>\;
  axis_rd_data_count(10) <= \<const0>\;
  axis_rd_data_count(9) <= \<const0>\;
  axis_rd_data_count(8) <= \<const0>\;
  axis_rd_data_count(7) <= \<const0>\;
  axis_rd_data_count(6) <= \<const0>\;
  axis_rd_data_count(5) <= \<const0>\;
  axis_rd_data_count(4) <= \<const0>\;
  axis_rd_data_count(3) <= \<const0>\;
  axis_rd_data_count(2) <= \<const0>\;
  axis_rd_data_count(1) <= \<const0>\;
  axis_rd_data_count(0) <= \<const0>\;
  axis_sbiterr <= \<const0>\;
  axis_underflow <= \<const0>\;
  axis_wr_data_count(10) <= \<const0>\;
  axis_wr_data_count(9) <= \<const0>\;
  axis_wr_data_count(8) <= \<const0>\;
  axis_wr_data_count(7) <= \<const0>\;
  axis_wr_data_count(6) <= \<const0>\;
  axis_wr_data_count(5) <= \<const0>\;
  axis_wr_data_count(4) <= \<const0>\;
  axis_wr_data_count(3) <= \<const0>\;
  axis_wr_data_count(2) <= \<const0>\;
  axis_wr_data_count(1) <= \<const0>\;
  axis_wr_data_count(0) <= \<const0>\;
  data_count(8) <= \<const0>\;
  data_count(7) <= \<const0>\;
  data_count(6) <= \<const0>\;
  data_count(5) <= \<const0>\;
  data_count(4) <= \<const0>\;
  data_count(3) <= \<const0>\;
  data_count(2) <= \<const0>\;
  data_count(1) <= \<const0>\;
  data_count(0) <= \<const0>\;
  dbiterr <= \<const0>\;
  m_axi_araddr(31) <= \<const0>\;
  m_axi_araddr(30) <= \<const0>\;
  m_axi_araddr(29) <= \<const0>\;
  m_axi_araddr(28) <= \<const0>\;
  m_axi_araddr(27) <= \<const0>\;
  m_axi_araddr(26) <= \<const0>\;
  m_axi_araddr(25) <= \<const0>\;
  m_axi_araddr(24) <= \<const0>\;
  m_axi_araddr(23) <= \<const0>\;
  m_axi_araddr(22) <= \<const0>\;
  m_axi_araddr(21) <= \<const0>\;
  m_axi_araddr(20) <= \<const0>\;
  m_axi_araddr(19) <= \<const0>\;
  m_axi_araddr(18) <= \<const0>\;
  m_axi_araddr(17) <= \<const0>\;
  m_axi_araddr(16) <= \<const0>\;
  m_axi_araddr(15) <= \<const0>\;
  m_axi_araddr(14) <= \<const0>\;
  m_axi_araddr(13) <= \<const0>\;
  m_axi_araddr(12) <= \<const0>\;
  m_axi_araddr(11) <= \<const0>\;
  m_axi_araddr(10) <= \<const0>\;
  m_axi_araddr(9) <= \<const0>\;
  m_axi_araddr(8) <= \<const0>\;
  m_axi_araddr(7) <= \<const0>\;
  m_axi_araddr(6) <= \<const0>\;
  m_axi_araddr(5) <= \<const0>\;
  m_axi_araddr(4) <= \<const0>\;
  m_axi_araddr(3) <= \<const0>\;
  m_axi_araddr(2) <= \<const0>\;
  m_axi_araddr(1) <= \<const0>\;
  m_axi_araddr(0) <= \<const0>\;
  m_axi_arburst(1) <= \<const0>\;
  m_axi_arburst(0) <= \<const0>\;
  m_axi_arcache(3) <= \<const0>\;
  m_axi_arcache(2) <= \<const0>\;
  m_axi_arcache(1) <= \<const0>\;
  m_axi_arcache(0) <= \<const0>\;
  m_axi_arid(0) <= \<const0>\;
  m_axi_arlen(7) <= \<const0>\;
  m_axi_arlen(6) <= \<const0>\;
  m_axi_arlen(5) <= \<const0>\;
  m_axi_arlen(4) <= \<const0>\;
  m_axi_arlen(3) <= \<const0>\;
  m_axi_arlen(2) <= \<const0>\;
  m_axi_arlen(1) <= \<const0>\;
  m_axi_arlen(0) <= \<const0>\;
  m_axi_arlock(0) <= \<const0>\;
  m_axi_arprot(2) <= \<const0>\;
  m_axi_arprot(1) <= \<const0>\;
  m_axi_arprot(0) <= \<const0>\;
  m_axi_arqos(3) <= \<const0>\;
  m_axi_arqos(2) <= \<const0>\;
  m_axi_arqos(1) <= \<const0>\;
  m_axi_arqos(0) <= \<const0>\;
  m_axi_arregion(3) <= \<const0>\;
  m_axi_arregion(2) <= \<const0>\;
  m_axi_arregion(1) <= \<const0>\;
  m_axi_arregion(0) <= \<const0>\;
  m_axi_arsize(2) <= \<const0>\;
  m_axi_arsize(1) <= \<const0>\;
  m_axi_arsize(0) <= \<const0>\;
  m_axi_aruser(0) <= \<const0>\;
  m_axi_arvalid <= \<const0>\;
  m_axi_awaddr(31) <= \<const0>\;
  m_axi_awaddr(30) <= \<const0>\;
  m_axi_awaddr(29) <= \<const0>\;
  m_axi_awaddr(28) <= \<const0>\;
  m_axi_awaddr(27) <= \<const0>\;
  m_axi_awaddr(26) <= \<const0>\;
  m_axi_awaddr(25) <= \<const0>\;
  m_axi_awaddr(24) <= \<const0>\;
  m_axi_awaddr(23) <= \<const0>\;
  m_axi_awaddr(22) <= \<const0>\;
  m_axi_awaddr(21) <= \<const0>\;
  m_axi_awaddr(20) <= \<const0>\;
  m_axi_awaddr(19) <= \<const0>\;
  m_axi_awaddr(18) <= \<const0>\;
  m_axi_awaddr(17) <= \<const0>\;
  m_axi_awaddr(16) <= \<const0>\;
  m_axi_awaddr(15) <= \<const0>\;
  m_axi_awaddr(14) <= \<const0>\;
  m_axi_awaddr(13) <= \<const0>\;
  m_axi_awaddr(12) <= \<const0>\;
  m_axi_awaddr(11) <= \<const0>\;
  m_axi_awaddr(10) <= \<const0>\;
  m_axi_awaddr(9) <= \<const0>\;
  m_axi_awaddr(8) <= \<const0>\;
  m_axi_awaddr(7) <= \<const0>\;
  m_axi_awaddr(6) <= \<const0>\;
  m_axi_awaddr(5) <= \<const0>\;
  m_axi_awaddr(4) <= \<const0>\;
  m_axi_awaddr(3) <= \<const0>\;
  m_axi_awaddr(2) <= \<const0>\;
  m_axi_awaddr(1) <= \<const0>\;
  m_axi_awaddr(0) <= \<const0>\;
  m_axi_awburst(1) <= \<const0>\;
  m_axi_awburst(0) <= \<const0>\;
  m_axi_awcache(3) <= \<const0>\;
  m_axi_awcache(2) <= \<const0>\;
  m_axi_awcache(1) <= \<const0>\;
  m_axi_awcache(0) <= \<const0>\;
  m_axi_awid(0) <= \<const0>\;
  m_axi_awlen(7) <= \<const0>\;
  m_axi_awlen(6) <= \<const0>\;
  m_axi_awlen(5) <= \<const0>\;
  m_axi_awlen(4) <= \<const0>\;
  m_axi_awlen(3) <= \<const0>\;
  m_axi_awlen(2) <= \<const0>\;
  m_axi_awlen(1) <= \<const0>\;
  m_axi_awlen(0) <= \<const0>\;
  m_axi_awlock(0) <= \<const0>\;
  m_axi_awprot(2) <= \<const0>\;
  m_axi_awprot(1) <= \<const0>\;
  m_axi_awprot(0) <= \<const0>\;
  m_axi_awqos(3) <= \<const0>\;
  m_axi_awqos(2) <= \<const0>\;
  m_axi_awqos(1) <= \<const0>\;
  m_axi_awqos(0) <= \<const0>\;
  m_axi_awregion(3) <= \<const0>\;
  m_axi_awregion(2) <= \<const0>\;
  m_axi_awregion(1) <= \<const0>\;
  m_axi_awregion(0) <= \<const0>\;
  m_axi_awsize(2) <= \<const0>\;
  m_axi_awsize(1) <= \<const0>\;
  m_axi_awsize(0) <= \<const0>\;
  m_axi_awuser(0) <= \<const0>\;
  m_axi_awvalid <= \<const0>\;
  m_axi_bready <= \<const0>\;
  m_axi_rready <= \<const0>\;
  m_axi_wdata(63) <= \<const0>\;
  m_axi_wdata(62) <= \<const0>\;
  m_axi_wdata(61) <= \<const0>\;
  m_axi_wdata(60) <= \<const0>\;
  m_axi_wdata(59) <= \<const0>\;
  m_axi_wdata(58) <= \<const0>\;
  m_axi_wdata(57) <= \<const0>\;
  m_axi_wdata(56) <= \<const0>\;
  m_axi_wdata(55) <= \<const0>\;
  m_axi_wdata(54) <= \<const0>\;
  m_axi_wdata(53) <= \<const0>\;
  m_axi_wdata(52) <= \<const0>\;
  m_axi_wdata(51) <= \<const0>\;
  m_axi_wdata(50) <= \<const0>\;
  m_axi_wdata(49) <= \<const0>\;
  m_axi_wdata(48) <= \<const0>\;
  m_axi_wdata(47) <= \<const0>\;
  m_axi_wdata(46) <= \<const0>\;
  m_axi_wdata(45) <= \<const0>\;
  m_axi_wdata(44) <= \<const0>\;
  m_axi_wdata(43) <= \<const0>\;
  m_axi_wdata(42) <= \<const0>\;
  m_axi_wdata(41) <= \<const0>\;
  m_axi_wdata(40) <= \<const0>\;
  m_axi_wdata(39) <= \<const0>\;
  m_axi_wdata(38) <= \<const0>\;
  m_axi_wdata(37) <= \<const0>\;
  m_axi_wdata(36) <= \<const0>\;
  m_axi_wdata(35) <= \<const0>\;
  m_axi_wdata(34) <= \<const0>\;
  m_axi_wdata(33) <= \<const0>\;
  m_axi_wdata(32) <= \<const0>\;
  m_axi_wdata(31) <= \<const0>\;
  m_axi_wdata(30) <= \<const0>\;
  m_axi_wdata(29) <= \<const0>\;
  m_axi_wdata(28) <= \<const0>\;
  m_axi_wdata(27) <= \<const0>\;
  m_axi_wdata(26) <= \<const0>\;
  m_axi_wdata(25) <= \<const0>\;
  m_axi_wdata(24) <= \<const0>\;
  m_axi_wdata(23) <= \<const0>\;
  m_axi_wdata(22) <= \<const0>\;
  m_axi_wdata(21) <= \<const0>\;
  m_axi_wdata(20) <= \<const0>\;
  m_axi_wdata(19) <= \<const0>\;
  m_axi_wdata(18) <= \<const0>\;
  m_axi_wdata(17) <= \<const0>\;
  m_axi_wdata(16) <= \<const0>\;
  m_axi_wdata(15) <= \<const0>\;
  m_axi_wdata(14) <= \<const0>\;
  m_axi_wdata(13) <= \<const0>\;
  m_axi_wdata(12) <= \<const0>\;
  m_axi_wdata(11) <= \<const0>\;
  m_axi_wdata(10) <= \<const0>\;
  m_axi_wdata(9) <= \<const0>\;
  m_axi_wdata(8) <= \<const0>\;
  m_axi_wdata(7) <= \<const0>\;
  m_axi_wdata(6) <= \<const0>\;
  m_axi_wdata(5) <= \<const0>\;
  m_axi_wdata(4) <= \<const0>\;
  m_axi_wdata(3) <= \<const0>\;
  m_axi_wdata(2) <= \<const0>\;
  m_axi_wdata(1) <= \<const0>\;
  m_axi_wdata(0) <= \<const0>\;
  m_axi_wid(0) <= \<const0>\;
  m_axi_wlast <= \<const0>\;
  m_axi_wstrb(7) <= \<const0>\;
  m_axi_wstrb(6) <= \<const0>\;
  m_axi_wstrb(5) <= \<const0>\;
  m_axi_wstrb(4) <= \<const0>\;
  m_axi_wstrb(3) <= \<const0>\;
  m_axi_wstrb(2) <= \<const0>\;
  m_axi_wstrb(1) <= \<const0>\;
  m_axi_wstrb(0) <= \<const0>\;
  m_axi_wuser(0) <= \<const0>\;
  m_axi_wvalid <= \<const0>\;
  m_axis_tdata(7) <= \<const0>\;
  m_axis_tdata(6) <= \<const0>\;
  m_axis_tdata(5) <= \<const0>\;
  m_axis_tdata(4) <= \<const0>\;
  m_axis_tdata(3) <= \<const0>\;
  m_axis_tdata(2) <= \<const0>\;
  m_axis_tdata(1) <= \<const0>\;
  m_axis_tdata(0) <= \<const0>\;
  m_axis_tdest(0) <= \<const0>\;
  m_axis_tid(0) <= \<const0>\;
  m_axis_tkeep(0) <= \<const0>\;
  m_axis_tlast <= \<const0>\;
  m_axis_tstrb(0) <= \<const0>\;
  m_axis_tuser(3) <= \<const0>\;
  m_axis_tuser(2) <= \<const0>\;
  m_axis_tuser(1) <= \<const0>\;
  m_axis_tuser(0) <= \<const0>\;
  m_axis_tvalid <= \<const0>\;
  overflow <= \<const0>\;
  prog_empty <= \<const0>\;
  prog_full <= \<const0>\;
  rd_data_count(8) <= \<const0>\;
  rd_data_count(7) <= \<const0>\;
  rd_data_count(6) <= \<const0>\;
  rd_data_count(5) <= \<const0>\;
  rd_data_count(4) <= \<const0>\;
  rd_data_count(3) <= \<const0>\;
  rd_data_count(2) <= \<const0>\;
  rd_data_count(1) <= \<const0>\;
  rd_data_count(0) <= \<const0>\;
  s_axi_arready <= \<const0>\;
  s_axi_awready <= \<const0>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_buser(0) <= \<const0>\;
  s_axi_bvalid <= \<const0>\;
  s_axi_rdata(63) <= \<const0>\;
  s_axi_rdata(62) <= \<const0>\;
  s_axi_rdata(61) <= \<const0>\;
  s_axi_rdata(60) <= \<const0>\;
  s_axi_rdata(59) <= \<const0>\;
  s_axi_rdata(58) <= \<const0>\;
  s_axi_rdata(57) <= \<const0>\;
  s_axi_rdata(56) <= \<const0>\;
  s_axi_rdata(55) <= \<const0>\;
  s_axi_rdata(54) <= \<const0>\;
  s_axi_rdata(53) <= \<const0>\;
  s_axi_rdata(52) <= \<const0>\;
  s_axi_rdata(51) <= \<const0>\;
  s_axi_rdata(50) <= \<const0>\;
  s_axi_rdata(49) <= \<const0>\;
  s_axi_rdata(48) <= \<const0>\;
  s_axi_rdata(47) <= \<const0>\;
  s_axi_rdata(46) <= \<const0>\;
  s_axi_rdata(45) <= \<const0>\;
  s_axi_rdata(44) <= \<const0>\;
  s_axi_rdata(43) <= \<const0>\;
  s_axi_rdata(42) <= \<const0>\;
  s_axi_rdata(41) <= \<const0>\;
  s_axi_rdata(40) <= \<const0>\;
  s_axi_rdata(39) <= \<const0>\;
  s_axi_rdata(38) <= \<const0>\;
  s_axi_rdata(37) <= \<const0>\;
  s_axi_rdata(36) <= \<const0>\;
  s_axi_rdata(35) <= \<const0>\;
  s_axi_rdata(34) <= \<const0>\;
  s_axi_rdata(33) <= \<const0>\;
  s_axi_rdata(32) <= \<const0>\;
  s_axi_rdata(31) <= \<const0>\;
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_rlast <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_ruser(0) <= \<const0>\;
  s_axi_rvalid <= \<const0>\;
  s_axi_wready <= \<const0>\;
  s_axis_tready <= \<const0>\;
  sbiterr <= \<const0>\;
  underflow <= \<const0>\;
  valid <= \<const0>\;
  wr_ack <= \<const0>\;
  wr_data_count(8) <= \<const0>\;
  wr_data_count(7) <= \<const0>\;
  wr_data_count(6) <= \<const0>\;
  wr_data_count(5) <= \<const0>\;
  wr_data_count(4) <= \<const0>\;
  wr_data_count(3) <= \<const0>\;
  wr_data_count(2) <= \<const0>\;
  wr_data_count(1) <= \<const0>\;
  wr_data_count(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst_fifo_gen: entity work.\Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4_synth__xdcDup__1\
     port map (
      almost_empty => almost_empty,
      almost_full => almost_full,
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      empty => empty,
      full => full,
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_rd_rst_ic_reg\ => rd_rst_busy,
      rd_clk => rd_clk,
      rd_en => rd_en,
      rst => rst,
      wr_clk => wr_clk,
      wr_en => wr_en,
      wr_rst_busy => wr_rst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_UART_V1_9_0_0_TOP_BD_fifo_generator_0_0 is
  port (
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    full : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    empty : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Zynq_Design_UART_V1_9_0_0_TOP_BD_fifo_generator_0_0 : entity is "TOP_BD_fifo_generator_0_0,fifo_generator_v13_2_4,{}";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_Design_UART_V1_9_0_0_TOP_BD_fifo_generator_0_0 : entity is "TOP_BD_fifo_generator_0_0";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Zynq_Design_UART_V1_9_0_0_TOP_BD_fifo_generator_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of Zynq_Design_UART_V1_9_0_0_TOP_BD_fifo_generator_0_0 : entity is "fifo_generator_v13_2_4,Vivado 2019.1";
end Zynq_Design_UART_V1_9_0_0_TOP_BD_fifo_generator_0_0;

architecture STRUCTURE of Zynq_Design_UART_V1_9_0_0_TOP_BD_fifo_generator_0_0 is
  signal NLW_U0_axi_ar_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_wr_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_ar_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_ar_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_r_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_r_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_r_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_U0_m_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_m_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_m_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_m_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_U0_m_axi_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute C_ADD_NGC_CONSTRAINT : integer;
  attribute C_ADD_NGC_CONSTRAINT of U0 : label is 0;
  attribute C_APPLICATION_TYPE_AXIS : integer;
  attribute C_APPLICATION_TYPE_AXIS of U0 : label is 0;
  attribute C_APPLICATION_TYPE_RACH : integer;
  attribute C_APPLICATION_TYPE_RACH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_RDCH : integer;
  attribute C_APPLICATION_TYPE_RDCH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WACH : integer;
  attribute C_APPLICATION_TYPE_WACH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WDCH : integer;
  attribute C_APPLICATION_TYPE_WDCH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WRCH : integer;
  attribute C_APPLICATION_TYPE_WRCH of U0 : label is 0;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of U0 : label is 8;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of U0 : label is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of U0 : label is 1;
  attribute C_AXIS_TKEEP_WIDTH : integer;
  attribute C_AXIS_TKEEP_WIDTH of U0 : label is 1;
  attribute C_AXIS_TSTRB_WIDTH : integer;
  attribute C_AXIS_TSTRB_WIDTH of U0 : label is 1;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of U0 : label is 4;
  attribute C_AXIS_TYPE : integer;
  attribute C_AXIS_TYPE of U0 : label is 0;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of U0 : label is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of U0 : label is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 1;
  attribute C_AXI_LEN_WIDTH : integer;
  attribute C_AXI_LEN_WIDTH of U0 : label is 8;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of U0 : label is 1;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of U0 : label is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of U0 : label is 0;
  attribute C_COUNT_TYPE : integer;
  attribute C_COUNT_TYPE of U0 : label is 0;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of U0 : label is 9;
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of U0 : label is "BlankString";
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of U0 : label is 8;
  attribute C_DIN_WIDTH_AXIS : integer;
  attribute C_DIN_WIDTH_AXIS of U0 : label is 1;
  attribute C_DIN_WIDTH_RACH : integer;
  attribute C_DIN_WIDTH_RACH of U0 : label is 32;
  attribute C_DIN_WIDTH_RDCH : integer;
  attribute C_DIN_WIDTH_RDCH of U0 : label is 64;
  attribute C_DIN_WIDTH_WACH : integer;
  attribute C_DIN_WIDTH_WACH of U0 : label is 1;
  attribute C_DIN_WIDTH_WDCH : integer;
  attribute C_DIN_WIDTH_WDCH of U0 : label is 64;
  attribute C_DIN_WIDTH_WRCH : integer;
  attribute C_DIN_WIDTH_WRCH of U0 : label is 2;
  attribute C_DOUT_RST_VAL : string;
  attribute C_DOUT_RST_VAL of U0 : label is "0";
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of U0 : label is 8;
  attribute C_ENABLE_RLOCS : integer;
  attribute C_ENABLE_RLOCS of U0 : label is 0;
  attribute C_ENABLE_RST_SYNC : integer;
  attribute C_ENABLE_RST_SYNC of U0 : label is 1;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of U0 : label is 1;
  attribute C_ERROR_INJECTION_TYPE : integer;
  attribute C_ERROR_INJECTION_TYPE of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_AXIS : integer;
  attribute C_ERROR_INJECTION_TYPE_AXIS of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RACH : integer;
  attribute C_ERROR_INJECTION_TYPE_RACH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_RDCH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WACH : integer;
  attribute C_ERROR_INJECTION_TYPE_WACH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WDCH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WRCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WRCH of U0 : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "zynq";
  attribute C_FULL_FLAGS_RST_VAL : integer;
  attribute C_FULL_FLAGS_RST_VAL of U0 : label is 1;
  attribute C_HAS_ALMOST_EMPTY : integer;
  attribute C_HAS_ALMOST_EMPTY of U0 : label is 1;
  attribute C_HAS_ALMOST_FULL : integer;
  attribute C_HAS_ALMOST_FULL of U0 : label is 1;
  attribute C_HAS_AXIS_TDATA : integer;
  attribute C_HAS_AXIS_TDATA of U0 : label is 1;
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of U0 : label is 0;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of U0 : label is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of U0 : label is 0;
  attribute C_HAS_AXIS_TLAST : integer;
  attribute C_HAS_AXIS_TLAST of U0 : label is 0;
  attribute C_HAS_AXIS_TREADY : integer;
  attribute C_HAS_AXIS_TREADY of U0 : label is 1;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of U0 : label is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of U0 : label is 1;
  attribute C_HAS_AXI_ARUSER : integer;
  attribute C_HAS_AXI_ARUSER of U0 : label is 0;
  attribute C_HAS_AXI_AWUSER : integer;
  attribute C_HAS_AXI_AWUSER of U0 : label is 0;
  attribute C_HAS_AXI_BUSER : integer;
  attribute C_HAS_AXI_BUSER of U0 : label is 0;
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 0;
  attribute C_HAS_AXI_RD_CHANNEL : integer;
  attribute C_HAS_AXI_RD_CHANNEL of U0 : label is 1;
  attribute C_HAS_AXI_RUSER : integer;
  attribute C_HAS_AXI_RUSER of U0 : label is 0;
  attribute C_HAS_AXI_WR_CHANNEL : integer;
  attribute C_HAS_AXI_WR_CHANNEL of U0 : label is 1;
  attribute C_HAS_AXI_WUSER : integer;
  attribute C_HAS_AXI_WUSER of U0 : label is 0;
  attribute C_HAS_BACKUP : integer;
  attribute C_HAS_BACKUP of U0 : label is 0;
  attribute C_HAS_DATA_COUNT : integer;
  attribute C_HAS_DATA_COUNT of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_AXIS : integer;
  attribute C_HAS_DATA_COUNTS_AXIS of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_RACH : integer;
  attribute C_HAS_DATA_COUNTS_RACH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_RDCH : integer;
  attribute C_HAS_DATA_COUNTS_RDCH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WACH : integer;
  attribute C_HAS_DATA_COUNTS_WACH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WDCH : integer;
  attribute C_HAS_DATA_COUNTS_WDCH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WRCH : integer;
  attribute C_HAS_DATA_COUNTS_WRCH of U0 : label is 0;
  attribute C_HAS_INT_CLK : integer;
  attribute C_HAS_INT_CLK of U0 : label is 0;
  attribute C_HAS_MASTER_CE : integer;
  attribute C_HAS_MASTER_CE of U0 : label is 0;
  attribute C_HAS_MEMINIT_FILE : integer;
  attribute C_HAS_MEMINIT_FILE of U0 : label is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_AXIS : integer;
  attribute C_HAS_PROG_FLAGS_AXIS of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_RACH : integer;
  attribute C_HAS_PROG_FLAGS_RACH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_RDCH : integer;
  attribute C_HAS_PROG_FLAGS_RDCH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WACH : integer;
  attribute C_HAS_PROG_FLAGS_WACH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WDCH : integer;
  attribute C_HAS_PROG_FLAGS_WDCH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WRCH : integer;
  attribute C_HAS_PROG_FLAGS_WRCH of U0 : label is 0;
  attribute C_HAS_RD_DATA_COUNT : integer;
  attribute C_HAS_RD_DATA_COUNT of U0 : label is 0;
  attribute C_HAS_RD_RST : integer;
  attribute C_HAS_RD_RST of U0 : label is 0;
  attribute C_HAS_RST : integer;
  attribute C_HAS_RST of U0 : label is 1;
  attribute C_HAS_SLAVE_CE : integer;
  attribute C_HAS_SLAVE_CE of U0 : label is 0;
  attribute C_HAS_SRST : integer;
  attribute C_HAS_SRST of U0 : label is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of U0 : label is 0;
  attribute C_HAS_VALID : integer;
  attribute C_HAS_VALID of U0 : label is 0;
  attribute C_HAS_WR_ACK : integer;
  attribute C_HAS_WR_ACK of U0 : label is 0;
  attribute C_HAS_WR_DATA_COUNT : integer;
  attribute C_HAS_WR_DATA_COUNT of U0 : label is 0;
  attribute C_HAS_WR_RST : integer;
  attribute C_HAS_WR_RST of U0 : label is 0;
  attribute C_IMPLEMENTATION_TYPE : integer;
  attribute C_IMPLEMENTATION_TYPE of U0 : label is 2;
  attribute C_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute C_IMPLEMENTATION_TYPE_AXIS of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_RACH : integer;
  attribute C_IMPLEMENTATION_TYPE_RACH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_RDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_RDCH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WACH : integer;
  attribute C_IMPLEMENTATION_TYPE_WACH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WDCH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WRCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WRCH of U0 : label is 1;
  attribute C_INIT_WR_PNTR_VAL : integer;
  attribute C_INIT_WR_PNTR_VAL of U0 : label is 0;
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 0;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of U0 : label is 1;
  attribute C_MIF_FILE_NAME : string;
  attribute C_MIF_FILE_NAME of U0 : label is "BlankString";
  attribute C_MSGON_VAL : integer;
  attribute C_MSGON_VAL of U0 : label is 1;
  attribute C_OPTIMIZATION_MODE : integer;
  attribute C_OPTIMIZATION_MODE of U0 : label is 0;
  attribute C_OVERFLOW_LOW : integer;
  attribute C_OVERFLOW_LOW of U0 : label is 0;
  attribute C_POWER_SAVING_MODE : integer;
  attribute C_POWER_SAVING_MODE of U0 : label is 0;
  attribute C_PRELOAD_LATENCY : integer;
  attribute C_PRELOAD_LATENCY of U0 : label is 1;
  attribute C_PRELOAD_REGS : integer;
  attribute C_PRELOAD_REGS of U0 : label is 0;
  attribute C_PRIM_FIFO_TYPE : string;
  attribute C_PRIM_FIFO_TYPE of U0 : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_AXIS : string;
  attribute C_PRIM_FIFO_TYPE_AXIS of U0 : label is "1kx18";
  attribute C_PRIM_FIFO_TYPE_RACH : string;
  attribute C_PRIM_FIFO_TYPE_RACH of U0 : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_RDCH : string;
  attribute C_PRIM_FIFO_TYPE_RDCH of U0 : label is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WACH : string;
  attribute C_PRIM_FIFO_TYPE_WACH of U0 : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WDCH : string;
  attribute C_PRIM_FIFO_TYPE_WDCH of U0 : label is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WRCH : string;
  attribute C_PRIM_FIFO_TYPE_WRCH of U0 : label is "512x36";
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL of U0 : label is 2;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL of U0 : label is 3;
  attribute C_PROG_EMPTY_TYPE : integer;
  attribute C_PROG_EMPTY_TYPE of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_AXIS : integer;
  attribute C_PROG_EMPTY_TYPE_AXIS of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_RACH : integer;
  attribute C_PROG_EMPTY_TYPE_RACH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_RDCH : integer;
  attribute C_PROG_EMPTY_TYPE_RDCH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WACH : integer;
  attribute C_PROG_EMPTY_TYPE_WACH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WDCH : integer;
  attribute C_PROG_EMPTY_TYPE_WDCH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WRCH : integer;
  attribute C_PROG_EMPTY_TYPE_WRCH of U0 : label is 0;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL of U0 : label is 509;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL of U0 : label is 508;
  attribute C_PROG_FULL_TYPE : integer;
  attribute C_PROG_FULL_TYPE of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_AXIS : integer;
  attribute C_PROG_FULL_TYPE_AXIS of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_RACH : integer;
  attribute C_PROG_FULL_TYPE_RACH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_RDCH : integer;
  attribute C_PROG_FULL_TYPE_RDCH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WACH : integer;
  attribute C_PROG_FULL_TYPE_WACH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WDCH : integer;
  attribute C_PROG_FULL_TYPE_WDCH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WRCH : integer;
  attribute C_PROG_FULL_TYPE_WRCH of U0 : label is 0;
  attribute C_RACH_TYPE : integer;
  attribute C_RACH_TYPE of U0 : label is 0;
  attribute C_RDCH_TYPE : integer;
  attribute C_RDCH_TYPE of U0 : label is 0;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of U0 : label is 9;
  attribute C_RD_DEPTH : integer;
  attribute C_RD_DEPTH of U0 : label is 512;
  attribute C_RD_FREQ : integer;
  attribute C_RD_FREQ of U0 : label is 1;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of U0 : label is 9;
  attribute C_REG_SLICE_MODE_AXIS : integer;
  attribute C_REG_SLICE_MODE_AXIS of U0 : label is 0;
  attribute C_REG_SLICE_MODE_RACH : integer;
  attribute C_REG_SLICE_MODE_RACH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_RDCH : integer;
  attribute C_REG_SLICE_MODE_RDCH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WACH : integer;
  attribute C_REG_SLICE_MODE_WACH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WDCH : integer;
  attribute C_REG_SLICE_MODE_WDCH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WRCH : integer;
  attribute C_REG_SLICE_MODE_WRCH of U0 : label is 0;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of U0 : label is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of U0 : label is 2;
  attribute C_UNDERFLOW_LOW : integer;
  attribute C_UNDERFLOW_LOW of U0 : label is 0;
  attribute C_USE_COMMON_OVERFLOW : integer;
  attribute C_USE_COMMON_OVERFLOW of U0 : label is 0;
  attribute C_USE_COMMON_UNDERFLOW : integer;
  attribute C_USE_COMMON_UNDERFLOW of U0 : label is 0;
  attribute C_USE_DEFAULT_SETTINGS : integer;
  attribute C_USE_DEFAULT_SETTINGS of U0 : label is 0;
  attribute C_USE_DOUT_RST : integer;
  attribute C_USE_DOUT_RST of U0 : label is 1;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_ECC_AXIS : integer;
  attribute C_USE_ECC_AXIS of U0 : label is 0;
  attribute C_USE_ECC_RACH : integer;
  attribute C_USE_ECC_RACH of U0 : label is 0;
  attribute C_USE_ECC_RDCH : integer;
  attribute C_USE_ECC_RDCH of U0 : label is 0;
  attribute C_USE_ECC_WACH : integer;
  attribute C_USE_ECC_WACH of U0 : label is 0;
  attribute C_USE_ECC_WDCH : integer;
  attribute C_USE_ECC_WDCH of U0 : label is 0;
  attribute C_USE_ECC_WRCH : integer;
  attribute C_USE_ECC_WRCH of U0 : label is 0;
  attribute C_USE_EMBEDDED_REG : integer;
  attribute C_USE_EMBEDDED_REG of U0 : label is 0;
  attribute C_USE_FIFO16_FLAGS : integer;
  attribute C_USE_FIFO16_FLAGS of U0 : label is 0;
  attribute C_USE_FWFT_DATA_COUNT : integer;
  attribute C_USE_FWFT_DATA_COUNT of U0 : label is 0;
  attribute C_USE_PIPELINE_REG : integer;
  attribute C_USE_PIPELINE_REG of U0 : label is 0;
  attribute C_VALID_LOW : integer;
  attribute C_VALID_LOW of U0 : label is 0;
  attribute C_WACH_TYPE : integer;
  attribute C_WACH_TYPE of U0 : label is 0;
  attribute C_WDCH_TYPE : integer;
  attribute C_WDCH_TYPE of U0 : label is 0;
  attribute C_WRCH_TYPE : integer;
  attribute C_WRCH_TYPE of U0 : label is 0;
  attribute C_WR_ACK_LOW : integer;
  attribute C_WR_ACK_LOW of U0 : label is 0;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of U0 : label is 9;
  attribute C_WR_DEPTH : integer;
  attribute C_WR_DEPTH of U0 : label is 512;
  attribute C_WR_DEPTH_AXIS : integer;
  attribute C_WR_DEPTH_AXIS of U0 : label is 1024;
  attribute C_WR_DEPTH_RACH : integer;
  attribute C_WR_DEPTH_RACH of U0 : label is 16;
  attribute C_WR_DEPTH_RDCH : integer;
  attribute C_WR_DEPTH_RDCH of U0 : label is 1024;
  attribute C_WR_DEPTH_WACH : integer;
  attribute C_WR_DEPTH_WACH of U0 : label is 16;
  attribute C_WR_DEPTH_WDCH : integer;
  attribute C_WR_DEPTH_WDCH of U0 : label is 1024;
  attribute C_WR_DEPTH_WRCH : integer;
  attribute C_WR_DEPTH_WRCH of U0 : label is 16;
  attribute C_WR_FREQ : integer;
  attribute C_WR_FREQ of U0 : label is 1;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of U0 : label is 9;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of U0 : label is 4;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of U0 : label is 4;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of U0 : label is 4;
  attribute C_WR_RESPONSE_LATENCY : integer;
  attribute C_WR_RESPONSE_LATENCY of U0 : label is 1;
  attribute x_interface_info : string;
  attribute x_interface_info of almost_empty : signal is "xilinx.com:interface:fifo_read:1.0 FIFO_READ ALMOST_EMPTY";
  attribute x_interface_info of almost_full : signal is "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE ALMOST_FULL";
  attribute x_interface_info of empty : signal is "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY";
  attribute x_interface_info of full : signal is "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL";
  attribute x_interface_info of rd_clk : signal is "xilinx.com:signal:clock:1.0 read_clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of rd_clk : signal is "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of rd_en : signal is "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN";
  attribute x_interface_info of wr_clk : signal is "xilinx.com:signal:clock:1.0 write_clk CLK";
  attribute x_interface_parameter of wr_clk : signal is "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of wr_en : signal is "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN";
  attribute x_interface_info of din : signal is "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA";
  attribute x_interface_info of dout : signal is "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA";
begin
U0: entity work.Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4
     port map (
      almost_empty => almost_empty,
      almost_full => almost_full,
      axi_ar_data_count(4 downto 0) => NLW_U0_axi_ar_data_count_UNCONNECTED(4 downto 0),
      axi_ar_dbiterr => NLW_U0_axi_ar_dbiterr_UNCONNECTED,
      axi_ar_injectdbiterr => '0',
      axi_ar_injectsbiterr => '0',
      axi_ar_overflow => NLW_U0_axi_ar_overflow_UNCONNECTED,
      axi_ar_prog_empty => NLW_U0_axi_ar_prog_empty_UNCONNECTED,
      axi_ar_prog_empty_thresh(3 downto 0) => B"0000",
      axi_ar_prog_full => NLW_U0_axi_ar_prog_full_UNCONNECTED,
      axi_ar_prog_full_thresh(3 downto 0) => B"0000",
      axi_ar_rd_data_count(4 downto 0) => NLW_U0_axi_ar_rd_data_count_UNCONNECTED(4 downto 0),
      axi_ar_sbiterr => NLW_U0_axi_ar_sbiterr_UNCONNECTED,
      axi_ar_underflow => NLW_U0_axi_ar_underflow_UNCONNECTED,
      axi_ar_wr_data_count(4 downto 0) => NLW_U0_axi_ar_wr_data_count_UNCONNECTED(4 downto 0),
      axi_aw_data_count(4 downto 0) => NLW_U0_axi_aw_data_count_UNCONNECTED(4 downto 0),
      axi_aw_dbiterr => NLW_U0_axi_aw_dbiterr_UNCONNECTED,
      axi_aw_injectdbiterr => '0',
      axi_aw_injectsbiterr => '0',
      axi_aw_overflow => NLW_U0_axi_aw_overflow_UNCONNECTED,
      axi_aw_prog_empty => NLW_U0_axi_aw_prog_empty_UNCONNECTED,
      axi_aw_prog_empty_thresh(3 downto 0) => B"0000",
      axi_aw_prog_full => NLW_U0_axi_aw_prog_full_UNCONNECTED,
      axi_aw_prog_full_thresh(3 downto 0) => B"0000",
      axi_aw_rd_data_count(4 downto 0) => NLW_U0_axi_aw_rd_data_count_UNCONNECTED(4 downto 0),
      axi_aw_sbiterr => NLW_U0_axi_aw_sbiterr_UNCONNECTED,
      axi_aw_underflow => NLW_U0_axi_aw_underflow_UNCONNECTED,
      axi_aw_wr_data_count(4 downto 0) => NLW_U0_axi_aw_wr_data_count_UNCONNECTED(4 downto 0),
      axi_b_data_count(4 downto 0) => NLW_U0_axi_b_data_count_UNCONNECTED(4 downto 0),
      axi_b_dbiterr => NLW_U0_axi_b_dbiterr_UNCONNECTED,
      axi_b_injectdbiterr => '0',
      axi_b_injectsbiterr => '0',
      axi_b_overflow => NLW_U0_axi_b_overflow_UNCONNECTED,
      axi_b_prog_empty => NLW_U0_axi_b_prog_empty_UNCONNECTED,
      axi_b_prog_empty_thresh(3 downto 0) => B"0000",
      axi_b_prog_full => NLW_U0_axi_b_prog_full_UNCONNECTED,
      axi_b_prog_full_thresh(3 downto 0) => B"0000",
      axi_b_rd_data_count(4 downto 0) => NLW_U0_axi_b_rd_data_count_UNCONNECTED(4 downto 0),
      axi_b_sbiterr => NLW_U0_axi_b_sbiterr_UNCONNECTED,
      axi_b_underflow => NLW_U0_axi_b_underflow_UNCONNECTED,
      axi_b_wr_data_count(4 downto 0) => NLW_U0_axi_b_wr_data_count_UNCONNECTED(4 downto 0),
      axi_r_data_count(10 downto 0) => NLW_U0_axi_r_data_count_UNCONNECTED(10 downto 0),
      axi_r_dbiterr => NLW_U0_axi_r_dbiterr_UNCONNECTED,
      axi_r_injectdbiterr => '0',
      axi_r_injectsbiterr => '0',
      axi_r_overflow => NLW_U0_axi_r_overflow_UNCONNECTED,
      axi_r_prog_empty => NLW_U0_axi_r_prog_empty_UNCONNECTED,
      axi_r_prog_empty_thresh(9 downto 0) => B"0000000000",
      axi_r_prog_full => NLW_U0_axi_r_prog_full_UNCONNECTED,
      axi_r_prog_full_thresh(9 downto 0) => B"0000000000",
      axi_r_rd_data_count(10 downto 0) => NLW_U0_axi_r_rd_data_count_UNCONNECTED(10 downto 0),
      axi_r_sbiterr => NLW_U0_axi_r_sbiterr_UNCONNECTED,
      axi_r_underflow => NLW_U0_axi_r_underflow_UNCONNECTED,
      axi_r_wr_data_count(10 downto 0) => NLW_U0_axi_r_wr_data_count_UNCONNECTED(10 downto 0),
      axi_w_data_count(10 downto 0) => NLW_U0_axi_w_data_count_UNCONNECTED(10 downto 0),
      axi_w_dbiterr => NLW_U0_axi_w_dbiterr_UNCONNECTED,
      axi_w_injectdbiterr => '0',
      axi_w_injectsbiterr => '0',
      axi_w_overflow => NLW_U0_axi_w_overflow_UNCONNECTED,
      axi_w_prog_empty => NLW_U0_axi_w_prog_empty_UNCONNECTED,
      axi_w_prog_empty_thresh(9 downto 0) => B"0000000000",
      axi_w_prog_full => NLW_U0_axi_w_prog_full_UNCONNECTED,
      axi_w_prog_full_thresh(9 downto 0) => B"0000000000",
      axi_w_rd_data_count(10 downto 0) => NLW_U0_axi_w_rd_data_count_UNCONNECTED(10 downto 0),
      axi_w_sbiterr => NLW_U0_axi_w_sbiterr_UNCONNECTED,
      axi_w_underflow => NLW_U0_axi_w_underflow_UNCONNECTED,
      axi_w_wr_data_count(10 downto 0) => NLW_U0_axi_w_wr_data_count_UNCONNECTED(10 downto 0),
      axis_data_count(10 downto 0) => NLW_U0_axis_data_count_UNCONNECTED(10 downto 0),
      axis_dbiterr => NLW_U0_axis_dbiterr_UNCONNECTED,
      axis_injectdbiterr => '0',
      axis_injectsbiterr => '0',
      axis_overflow => NLW_U0_axis_overflow_UNCONNECTED,
      axis_prog_empty => NLW_U0_axis_prog_empty_UNCONNECTED,
      axis_prog_empty_thresh(9 downto 0) => B"0000000000",
      axis_prog_full => NLW_U0_axis_prog_full_UNCONNECTED,
      axis_prog_full_thresh(9 downto 0) => B"0000000000",
      axis_rd_data_count(10 downto 0) => NLW_U0_axis_rd_data_count_UNCONNECTED(10 downto 0),
      axis_sbiterr => NLW_U0_axis_sbiterr_UNCONNECTED,
      axis_underflow => NLW_U0_axis_underflow_UNCONNECTED,
      axis_wr_data_count(10 downto 0) => NLW_U0_axis_wr_data_count_UNCONNECTED(10 downto 0),
      backup => '0',
      backup_marker => '0',
      clk => '0',
      data_count(8 downto 0) => NLW_U0_data_count_UNCONNECTED(8 downto 0),
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      empty => empty,
      full => full,
      injectdbiterr => '0',
      injectsbiterr => '0',
      int_clk => '0',
      m_aclk => '0',
      m_aclk_en => '0',
      m_axi_araddr(31 downto 0) => NLW_U0_m_axi_araddr_UNCONNECTED(31 downto 0),
      m_axi_arburst(1 downto 0) => NLW_U0_m_axi_arburst_UNCONNECTED(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_U0_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_arid(0) => NLW_U0_m_axi_arid_UNCONNECTED(0),
      m_axi_arlen(7 downto 0) => NLW_U0_m_axi_arlen_UNCONNECTED(7 downto 0),
      m_axi_arlock(0) => NLW_U0_m_axi_arlock_UNCONNECTED(0),
      m_axi_arprot(2 downto 0) => NLW_U0_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_U0_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => '0',
      m_axi_arregion(3 downto 0) => NLW_U0_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => NLW_U0_m_axi_arsize_UNCONNECTED(2 downto 0),
      m_axi_aruser(0) => NLW_U0_m_axi_aruser_UNCONNECTED(0),
      m_axi_arvalid => NLW_U0_m_axi_arvalid_UNCONNECTED,
      m_axi_awaddr(31 downto 0) => NLW_U0_m_axi_awaddr_UNCONNECTED(31 downto 0),
      m_axi_awburst(1 downto 0) => NLW_U0_m_axi_awburst_UNCONNECTED(1 downto 0),
      m_axi_awcache(3 downto 0) => NLW_U0_m_axi_awcache_UNCONNECTED(3 downto 0),
      m_axi_awid(0) => NLW_U0_m_axi_awid_UNCONNECTED(0),
      m_axi_awlen(7 downto 0) => NLW_U0_m_axi_awlen_UNCONNECTED(7 downto 0),
      m_axi_awlock(0) => NLW_U0_m_axi_awlock_UNCONNECTED(0),
      m_axi_awprot(2 downto 0) => NLW_U0_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_U0_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => '0',
      m_axi_awregion(3 downto 0) => NLW_U0_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => NLW_U0_m_axi_awsize_UNCONNECTED(2 downto 0),
      m_axi_awuser(0) => NLW_U0_m_axi_awuser_UNCONNECTED(0),
      m_axi_awvalid => NLW_U0_m_axi_awvalid_UNCONNECTED,
      m_axi_bid(0) => '0',
      m_axi_bready => NLW_U0_m_axi_bready_UNCONNECTED,
      m_axi_bresp(1 downto 0) => B"00",
      m_axi_buser(0) => '0',
      m_axi_bvalid => '0',
      m_axi_rdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      m_axi_rid(0) => '0',
      m_axi_rlast => '0',
      m_axi_rready => NLW_U0_m_axi_rready_UNCONNECTED,
      m_axi_rresp(1 downto 0) => B"00",
      m_axi_ruser(0) => '0',
      m_axi_rvalid => '0',
      m_axi_wdata(63 downto 0) => NLW_U0_m_axi_wdata_UNCONNECTED(63 downto 0),
      m_axi_wid(0) => NLW_U0_m_axi_wid_UNCONNECTED(0),
      m_axi_wlast => NLW_U0_m_axi_wlast_UNCONNECTED,
      m_axi_wready => '0',
      m_axi_wstrb(7 downto 0) => NLW_U0_m_axi_wstrb_UNCONNECTED(7 downto 0),
      m_axi_wuser(0) => NLW_U0_m_axi_wuser_UNCONNECTED(0),
      m_axi_wvalid => NLW_U0_m_axi_wvalid_UNCONNECTED,
      m_axis_tdata(7 downto 0) => NLW_U0_m_axis_tdata_UNCONNECTED(7 downto 0),
      m_axis_tdest(0) => NLW_U0_m_axis_tdest_UNCONNECTED(0),
      m_axis_tid(0) => NLW_U0_m_axis_tid_UNCONNECTED(0),
      m_axis_tkeep(0) => NLW_U0_m_axis_tkeep_UNCONNECTED(0),
      m_axis_tlast => NLW_U0_m_axis_tlast_UNCONNECTED,
      m_axis_tready => '0',
      m_axis_tstrb(0) => NLW_U0_m_axis_tstrb_UNCONNECTED(0),
      m_axis_tuser(3 downto 0) => NLW_U0_m_axis_tuser_UNCONNECTED(3 downto 0),
      m_axis_tvalid => NLW_U0_m_axis_tvalid_UNCONNECTED,
      overflow => NLW_U0_overflow_UNCONNECTED,
      prog_empty => NLW_U0_prog_empty_UNCONNECTED,
      prog_empty_thresh(8 downto 0) => B"000000000",
      prog_empty_thresh_assert(8 downto 0) => B"000000000",
      prog_empty_thresh_negate(8 downto 0) => B"000000000",
      prog_full => NLW_U0_prog_full_UNCONNECTED,
      prog_full_thresh(8 downto 0) => B"000000000",
      prog_full_thresh_assert(8 downto 0) => B"000000000",
      prog_full_thresh_negate(8 downto 0) => B"000000000",
      rd_clk => rd_clk,
      rd_data_count(8 downto 0) => NLW_U0_rd_data_count_UNCONNECTED(8 downto 0),
      rd_en => rd_en,
      rd_rst => '0',
      rd_rst_busy => rd_rst_busy,
      rst => rst,
      s_aclk => '0',
      s_aclk_en => '0',
      s_aresetn => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arcache(3 downto 0) => B"0000",
      s_axi_arid(0) => '0',
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arlock(0) => '0',
      s_axi_arprot(2 downto 0) => B"000",
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_aruser(0) => '0',
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awcache(3 downto 0) => B"0000",
      s_axi_awid(0) => '0',
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awlock(0) => '0',
      s_axi_awprot(2 downto 0) => B"000",
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awuser(0) => '0',
      s_axi_awvalid => '0',
      s_axi_bid(0) => NLW_U0_s_axi_bid_UNCONNECTED(0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_buser(0) => NLW_U0_s_axi_buser_UNCONNECTED(0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_rdata(63 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(63 downto 0),
      s_axi_rid(0) => NLW_U0_s_axi_rid_UNCONNECTED(0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_ruser(0) => NLW_U0_s_axi_ruser_UNCONNECTED(0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_wdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      s_axi_wid(0) => '0',
      s_axi_wlast => '0',
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(7 downto 0) => B"00000000",
      s_axi_wuser(0) => '0',
      s_axi_wvalid => '0',
      s_axis_tdata(7 downto 0) => B"00000000",
      s_axis_tdest(0) => '0',
      s_axis_tid(0) => '0',
      s_axis_tkeep(0) => '0',
      s_axis_tlast => '0',
      s_axis_tready => NLW_U0_s_axis_tready_UNCONNECTED,
      s_axis_tstrb(0) => '0',
      s_axis_tuser(3 downto 0) => B"0000",
      s_axis_tvalid => '0',
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      sleep => '0',
      srst => '0',
      underflow => NLW_U0_underflow_UNCONNECTED,
      valid => NLW_U0_valid_UNCONNECTED,
      wr_ack => NLW_U0_wr_ack_UNCONNECTED,
      wr_clk => wr_clk,
      wr_data_count(8 downto 0) => NLW_U0_wr_data_count_UNCONNECTED(8 downto 0),
      wr_en => wr_en,
      wr_rst => '0',
      wr_rst_busy => wr_rst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_UART_V1_9_0_0_TOP_BD_fifo_generator_0_1 is
  port (
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    full : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    empty : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Zynq_Design_UART_V1_9_0_0_TOP_BD_fifo_generator_0_1 : entity is "TOP_BD_fifo_generator_0_1,fifo_generator_v13_2_4,{}";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_Design_UART_V1_9_0_0_TOP_BD_fifo_generator_0_1 : entity is "TOP_BD_fifo_generator_0_1";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Zynq_Design_UART_V1_9_0_0_TOP_BD_fifo_generator_0_1 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of Zynq_Design_UART_V1_9_0_0_TOP_BD_fifo_generator_0_1 : entity is "fifo_generator_v13_2_4,Vivado 2019.1";
end Zynq_Design_UART_V1_9_0_0_TOP_BD_fifo_generator_0_1;

architecture STRUCTURE of Zynq_Design_UART_V1_9_0_0_TOP_BD_fifo_generator_0_1 is
  signal NLW_U0_axi_ar_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_wr_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_ar_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_ar_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_r_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_r_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_r_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_U0_m_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_m_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_m_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_m_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_U0_m_axi_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute C_ADD_NGC_CONSTRAINT : integer;
  attribute C_ADD_NGC_CONSTRAINT of U0 : label is 0;
  attribute C_APPLICATION_TYPE_AXIS : integer;
  attribute C_APPLICATION_TYPE_AXIS of U0 : label is 0;
  attribute C_APPLICATION_TYPE_RACH : integer;
  attribute C_APPLICATION_TYPE_RACH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_RDCH : integer;
  attribute C_APPLICATION_TYPE_RDCH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WACH : integer;
  attribute C_APPLICATION_TYPE_WACH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WDCH : integer;
  attribute C_APPLICATION_TYPE_WDCH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WRCH : integer;
  attribute C_APPLICATION_TYPE_WRCH of U0 : label is 0;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of U0 : label is 8;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of U0 : label is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of U0 : label is 1;
  attribute C_AXIS_TKEEP_WIDTH : integer;
  attribute C_AXIS_TKEEP_WIDTH of U0 : label is 1;
  attribute C_AXIS_TSTRB_WIDTH : integer;
  attribute C_AXIS_TSTRB_WIDTH of U0 : label is 1;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of U0 : label is 4;
  attribute C_AXIS_TYPE : integer;
  attribute C_AXIS_TYPE of U0 : label is 0;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of U0 : label is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of U0 : label is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 1;
  attribute C_AXI_LEN_WIDTH : integer;
  attribute C_AXI_LEN_WIDTH of U0 : label is 8;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of U0 : label is 1;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of U0 : label is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of U0 : label is 0;
  attribute C_COUNT_TYPE : integer;
  attribute C_COUNT_TYPE of U0 : label is 0;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of U0 : label is 9;
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of U0 : label is "BlankString";
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of U0 : label is 8;
  attribute C_DIN_WIDTH_AXIS : integer;
  attribute C_DIN_WIDTH_AXIS of U0 : label is 1;
  attribute C_DIN_WIDTH_RACH : integer;
  attribute C_DIN_WIDTH_RACH of U0 : label is 32;
  attribute C_DIN_WIDTH_RDCH : integer;
  attribute C_DIN_WIDTH_RDCH of U0 : label is 64;
  attribute C_DIN_WIDTH_WACH : integer;
  attribute C_DIN_WIDTH_WACH of U0 : label is 1;
  attribute C_DIN_WIDTH_WDCH : integer;
  attribute C_DIN_WIDTH_WDCH of U0 : label is 64;
  attribute C_DIN_WIDTH_WRCH : integer;
  attribute C_DIN_WIDTH_WRCH of U0 : label is 2;
  attribute C_DOUT_RST_VAL : string;
  attribute C_DOUT_RST_VAL of U0 : label is "0";
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of U0 : label is 8;
  attribute C_ENABLE_RLOCS : integer;
  attribute C_ENABLE_RLOCS of U0 : label is 0;
  attribute C_ENABLE_RST_SYNC : integer;
  attribute C_ENABLE_RST_SYNC of U0 : label is 1;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of U0 : label is 1;
  attribute C_ERROR_INJECTION_TYPE : integer;
  attribute C_ERROR_INJECTION_TYPE of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_AXIS : integer;
  attribute C_ERROR_INJECTION_TYPE_AXIS of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RACH : integer;
  attribute C_ERROR_INJECTION_TYPE_RACH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_RDCH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WACH : integer;
  attribute C_ERROR_INJECTION_TYPE_WACH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WDCH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WRCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WRCH of U0 : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "zynq";
  attribute C_FULL_FLAGS_RST_VAL : integer;
  attribute C_FULL_FLAGS_RST_VAL of U0 : label is 1;
  attribute C_HAS_ALMOST_EMPTY : integer;
  attribute C_HAS_ALMOST_EMPTY of U0 : label is 1;
  attribute C_HAS_ALMOST_FULL : integer;
  attribute C_HAS_ALMOST_FULL of U0 : label is 1;
  attribute C_HAS_AXIS_TDATA : integer;
  attribute C_HAS_AXIS_TDATA of U0 : label is 1;
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of U0 : label is 0;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of U0 : label is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of U0 : label is 0;
  attribute C_HAS_AXIS_TLAST : integer;
  attribute C_HAS_AXIS_TLAST of U0 : label is 0;
  attribute C_HAS_AXIS_TREADY : integer;
  attribute C_HAS_AXIS_TREADY of U0 : label is 1;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of U0 : label is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of U0 : label is 1;
  attribute C_HAS_AXI_ARUSER : integer;
  attribute C_HAS_AXI_ARUSER of U0 : label is 0;
  attribute C_HAS_AXI_AWUSER : integer;
  attribute C_HAS_AXI_AWUSER of U0 : label is 0;
  attribute C_HAS_AXI_BUSER : integer;
  attribute C_HAS_AXI_BUSER of U0 : label is 0;
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 0;
  attribute C_HAS_AXI_RD_CHANNEL : integer;
  attribute C_HAS_AXI_RD_CHANNEL of U0 : label is 1;
  attribute C_HAS_AXI_RUSER : integer;
  attribute C_HAS_AXI_RUSER of U0 : label is 0;
  attribute C_HAS_AXI_WR_CHANNEL : integer;
  attribute C_HAS_AXI_WR_CHANNEL of U0 : label is 1;
  attribute C_HAS_AXI_WUSER : integer;
  attribute C_HAS_AXI_WUSER of U0 : label is 0;
  attribute C_HAS_BACKUP : integer;
  attribute C_HAS_BACKUP of U0 : label is 0;
  attribute C_HAS_DATA_COUNT : integer;
  attribute C_HAS_DATA_COUNT of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_AXIS : integer;
  attribute C_HAS_DATA_COUNTS_AXIS of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_RACH : integer;
  attribute C_HAS_DATA_COUNTS_RACH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_RDCH : integer;
  attribute C_HAS_DATA_COUNTS_RDCH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WACH : integer;
  attribute C_HAS_DATA_COUNTS_WACH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WDCH : integer;
  attribute C_HAS_DATA_COUNTS_WDCH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WRCH : integer;
  attribute C_HAS_DATA_COUNTS_WRCH of U0 : label is 0;
  attribute C_HAS_INT_CLK : integer;
  attribute C_HAS_INT_CLK of U0 : label is 0;
  attribute C_HAS_MASTER_CE : integer;
  attribute C_HAS_MASTER_CE of U0 : label is 0;
  attribute C_HAS_MEMINIT_FILE : integer;
  attribute C_HAS_MEMINIT_FILE of U0 : label is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_AXIS : integer;
  attribute C_HAS_PROG_FLAGS_AXIS of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_RACH : integer;
  attribute C_HAS_PROG_FLAGS_RACH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_RDCH : integer;
  attribute C_HAS_PROG_FLAGS_RDCH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WACH : integer;
  attribute C_HAS_PROG_FLAGS_WACH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WDCH : integer;
  attribute C_HAS_PROG_FLAGS_WDCH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WRCH : integer;
  attribute C_HAS_PROG_FLAGS_WRCH of U0 : label is 0;
  attribute C_HAS_RD_DATA_COUNT : integer;
  attribute C_HAS_RD_DATA_COUNT of U0 : label is 0;
  attribute C_HAS_RD_RST : integer;
  attribute C_HAS_RD_RST of U0 : label is 0;
  attribute C_HAS_RST : integer;
  attribute C_HAS_RST of U0 : label is 1;
  attribute C_HAS_SLAVE_CE : integer;
  attribute C_HAS_SLAVE_CE of U0 : label is 0;
  attribute C_HAS_SRST : integer;
  attribute C_HAS_SRST of U0 : label is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of U0 : label is 0;
  attribute C_HAS_VALID : integer;
  attribute C_HAS_VALID of U0 : label is 0;
  attribute C_HAS_WR_ACK : integer;
  attribute C_HAS_WR_ACK of U0 : label is 0;
  attribute C_HAS_WR_DATA_COUNT : integer;
  attribute C_HAS_WR_DATA_COUNT of U0 : label is 0;
  attribute C_HAS_WR_RST : integer;
  attribute C_HAS_WR_RST of U0 : label is 0;
  attribute C_IMPLEMENTATION_TYPE : integer;
  attribute C_IMPLEMENTATION_TYPE of U0 : label is 2;
  attribute C_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute C_IMPLEMENTATION_TYPE_AXIS of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_RACH : integer;
  attribute C_IMPLEMENTATION_TYPE_RACH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_RDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_RDCH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WACH : integer;
  attribute C_IMPLEMENTATION_TYPE_WACH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WDCH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WRCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WRCH of U0 : label is 1;
  attribute C_INIT_WR_PNTR_VAL : integer;
  attribute C_INIT_WR_PNTR_VAL of U0 : label is 0;
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 0;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of U0 : label is 1;
  attribute C_MIF_FILE_NAME : string;
  attribute C_MIF_FILE_NAME of U0 : label is "BlankString";
  attribute C_MSGON_VAL : integer;
  attribute C_MSGON_VAL of U0 : label is 1;
  attribute C_OPTIMIZATION_MODE : integer;
  attribute C_OPTIMIZATION_MODE of U0 : label is 0;
  attribute C_OVERFLOW_LOW : integer;
  attribute C_OVERFLOW_LOW of U0 : label is 0;
  attribute C_POWER_SAVING_MODE : integer;
  attribute C_POWER_SAVING_MODE of U0 : label is 0;
  attribute C_PRELOAD_LATENCY : integer;
  attribute C_PRELOAD_LATENCY of U0 : label is 1;
  attribute C_PRELOAD_REGS : integer;
  attribute C_PRELOAD_REGS of U0 : label is 0;
  attribute C_PRIM_FIFO_TYPE : string;
  attribute C_PRIM_FIFO_TYPE of U0 : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_AXIS : string;
  attribute C_PRIM_FIFO_TYPE_AXIS of U0 : label is "1kx18";
  attribute C_PRIM_FIFO_TYPE_RACH : string;
  attribute C_PRIM_FIFO_TYPE_RACH of U0 : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_RDCH : string;
  attribute C_PRIM_FIFO_TYPE_RDCH of U0 : label is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WACH : string;
  attribute C_PRIM_FIFO_TYPE_WACH of U0 : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WDCH : string;
  attribute C_PRIM_FIFO_TYPE_WDCH of U0 : label is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WRCH : string;
  attribute C_PRIM_FIFO_TYPE_WRCH of U0 : label is "512x36";
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL of U0 : label is 2;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL of U0 : label is 3;
  attribute C_PROG_EMPTY_TYPE : integer;
  attribute C_PROG_EMPTY_TYPE of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_AXIS : integer;
  attribute C_PROG_EMPTY_TYPE_AXIS of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_RACH : integer;
  attribute C_PROG_EMPTY_TYPE_RACH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_RDCH : integer;
  attribute C_PROG_EMPTY_TYPE_RDCH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WACH : integer;
  attribute C_PROG_EMPTY_TYPE_WACH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WDCH : integer;
  attribute C_PROG_EMPTY_TYPE_WDCH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WRCH : integer;
  attribute C_PROG_EMPTY_TYPE_WRCH of U0 : label is 0;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL of U0 : label is 509;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL of U0 : label is 508;
  attribute C_PROG_FULL_TYPE : integer;
  attribute C_PROG_FULL_TYPE of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_AXIS : integer;
  attribute C_PROG_FULL_TYPE_AXIS of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_RACH : integer;
  attribute C_PROG_FULL_TYPE_RACH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_RDCH : integer;
  attribute C_PROG_FULL_TYPE_RDCH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WACH : integer;
  attribute C_PROG_FULL_TYPE_WACH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WDCH : integer;
  attribute C_PROG_FULL_TYPE_WDCH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WRCH : integer;
  attribute C_PROG_FULL_TYPE_WRCH of U0 : label is 0;
  attribute C_RACH_TYPE : integer;
  attribute C_RACH_TYPE of U0 : label is 0;
  attribute C_RDCH_TYPE : integer;
  attribute C_RDCH_TYPE of U0 : label is 0;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of U0 : label is 9;
  attribute C_RD_DEPTH : integer;
  attribute C_RD_DEPTH of U0 : label is 512;
  attribute C_RD_FREQ : integer;
  attribute C_RD_FREQ of U0 : label is 1;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of U0 : label is 9;
  attribute C_REG_SLICE_MODE_AXIS : integer;
  attribute C_REG_SLICE_MODE_AXIS of U0 : label is 0;
  attribute C_REG_SLICE_MODE_RACH : integer;
  attribute C_REG_SLICE_MODE_RACH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_RDCH : integer;
  attribute C_REG_SLICE_MODE_RDCH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WACH : integer;
  attribute C_REG_SLICE_MODE_WACH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WDCH : integer;
  attribute C_REG_SLICE_MODE_WDCH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WRCH : integer;
  attribute C_REG_SLICE_MODE_WRCH of U0 : label is 0;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of U0 : label is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of U0 : label is 2;
  attribute C_UNDERFLOW_LOW : integer;
  attribute C_UNDERFLOW_LOW of U0 : label is 0;
  attribute C_USE_COMMON_OVERFLOW : integer;
  attribute C_USE_COMMON_OVERFLOW of U0 : label is 0;
  attribute C_USE_COMMON_UNDERFLOW : integer;
  attribute C_USE_COMMON_UNDERFLOW of U0 : label is 0;
  attribute C_USE_DEFAULT_SETTINGS : integer;
  attribute C_USE_DEFAULT_SETTINGS of U0 : label is 0;
  attribute C_USE_DOUT_RST : integer;
  attribute C_USE_DOUT_RST of U0 : label is 1;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_ECC_AXIS : integer;
  attribute C_USE_ECC_AXIS of U0 : label is 0;
  attribute C_USE_ECC_RACH : integer;
  attribute C_USE_ECC_RACH of U0 : label is 0;
  attribute C_USE_ECC_RDCH : integer;
  attribute C_USE_ECC_RDCH of U0 : label is 0;
  attribute C_USE_ECC_WACH : integer;
  attribute C_USE_ECC_WACH of U0 : label is 0;
  attribute C_USE_ECC_WDCH : integer;
  attribute C_USE_ECC_WDCH of U0 : label is 0;
  attribute C_USE_ECC_WRCH : integer;
  attribute C_USE_ECC_WRCH of U0 : label is 0;
  attribute C_USE_EMBEDDED_REG : integer;
  attribute C_USE_EMBEDDED_REG of U0 : label is 0;
  attribute C_USE_FIFO16_FLAGS : integer;
  attribute C_USE_FIFO16_FLAGS of U0 : label is 0;
  attribute C_USE_FWFT_DATA_COUNT : integer;
  attribute C_USE_FWFT_DATA_COUNT of U0 : label is 0;
  attribute C_USE_PIPELINE_REG : integer;
  attribute C_USE_PIPELINE_REG of U0 : label is 0;
  attribute C_VALID_LOW : integer;
  attribute C_VALID_LOW of U0 : label is 0;
  attribute C_WACH_TYPE : integer;
  attribute C_WACH_TYPE of U0 : label is 0;
  attribute C_WDCH_TYPE : integer;
  attribute C_WDCH_TYPE of U0 : label is 0;
  attribute C_WRCH_TYPE : integer;
  attribute C_WRCH_TYPE of U0 : label is 0;
  attribute C_WR_ACK_LOW : integer;
  attribute C_WR_ACK_LOW of U0 : label is 0;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of U0 : label is 9;
  attribute C_WR_DEPTH : integer;
  attribute C_WR_DEPTH of U0 : label is 512;
  attribute C_WR_DEPTH_AXIS : integer;
  attribute C_WR_DEPTH_AXIS of U0 : label is 1024;
  attribute C_WR_DEPTH_RACH : integer;
  attribute C_WR_DEPTH_RACH of U0 : label is 16;
  attribute C_WR_DEPTH_RDCH : integer;
  attribute C_WR_DEPTH_RDCH of U0 : label is 1024;
  attribute C_WR_DEPTH_WACH : integer;
  attribute C_WR_DEPTH_WACH of U0 : label is 16;
  attribute C_WR_DEPTH_WDCH : integer;
  attribute C_WR_DEPTH_WDCH of U0 : label is 1024;
  attribute C_WR_DEPTH_WRCH : integer;
  attribute C_WR_DEPTH_WRCH of U0 : label is 16;
  attribute C_WR_FREQ : integer;
  attribute C_WR_FREQ of U0 : label is 1;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of U0 : label is 9;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of U0 : label is 4;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of U0 : label is 4;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of U0 : label is 4;
  attribute C_WR_RESPONSE_LATENCY : integer;
  attribute C_WR_RESPONSE_LATENCY of U0 : label is 1;
  attribute x_interface_info : string;
  attribute x_interface_info of almost_empty : signal is "xilinx.com:interface:fifo_read:1.0 FIFO_READ ALMOST_EMPTY";
  attribute x_interface_info of almost_full : signal is "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE ALMOST_FULL";
  attribute x_interface_info of empty : signal is "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY";
  attribute x_interface_info of full : signal is "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL";
  attribute x_interface_info of rd_clk : signal is "xilinx.com:signal:clock:1.0 read_clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of rd_clk : signal is "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of rd_en : signal is "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN";
  attribute x_interface_info of wr_clk : signal is "xilinx.com:signal:clock:1.0 write_clk CLK";
  attribute x_interface_parameter of wr_clk : signal is "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of wr_en : signal is "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN";
  attribute x_interface_info of din : signal is "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA";
  attribute x_interface_info of dout : signal is "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA";
begin
U0: entity work.\Zynq_Design_UART_V1_9_0_0_fifo_generator_v13_2_4__xdcDup__1\
     port map (
      almost_empty => almost_empty,
      almost_full => almost_full,
      axi_ar_data_count(4 downto 0) => NLW_U0_axi_ar_data_count_UNCONNECTED(4 downto 0),
      axi_ar_dbiterr => NLW_U0_axi_ar_dbiterr_UNCONNECTED,
      axi_ar_injectdbiterr => '0',
      axi_ar_injectsbiterr => '0',
      axi_ar_overflow => NLW_U0_axi_ar_overflow_UNCONNECTED,
      axi_ar_prog_empty => NLW_U0_axi_ar_prog_empty_UNCONNECTED,
      axi_ar_prog_empty_thresh(3 downto 0) => B"0000",
      axi_ar_prog_full => NLW_U0_axi_ar_prog_full_UNCONNECTED,
      axi_ar_prog_full_thresh(3 downto 0) => B"0000",
      axi_ar_rd_data_count(4 downto 0) => NLW_U0_axi_ar_rd_data_count_UNCONNECTED(4 downto 0),
      axi_ar_sbiterr => NLW_U0_axi_ar_sbiterr_UNCONNECTED,
      axi_ar_underflow => NLW_U0_axi_ar_underflow_UNCONNECTED,
      axi_ar_wr_data_count(4 downto 0) => NLW_U0_axi_ar_wr_data_count_UNCONNECTED(4 downto 0),
      axi_aw_data_count(4 downto 0) => NLW_U0_axi_aw_data_count_UNCONNECTED(4 downto 0),
      axi_aw_dbiterr => NLW_U0_axi_aw_dbiterr_UNCONNECTED,
      axi_aw_injectdbiterr => '0',
      axi_aw_injectsbiterr => '0',
      axi_aw_overflow => NLW_U0_axi_aw_overflow_UNCONNECTED,
      axi_aw_prog_empty => NLW_U0_axi_aw_prog_empty_UNCONNECTED,
      axi_aw_prog_empty_thresh(3 downto 0) => B"0000",
      axi_aw_prog_full => NLW_U0_axi_aw_prog_full_UNCONNECTED,
      axi_aw_prog_full_thresh(3 downto 0) => B"0000",
      axi_aw_rd_data_count(4 downto 0) => NLW_U0_axi_aw_rd_data_count_UNCONNECTED(4 downto 0),
      axi_aw_sbiterr => NLW_U0_axi_aw_sbiterr_UNCONNECTED,
      axi_aw_underflow => NLW_U0_axi_aw_underflow_UNCONNECTED,
      axi_aw_wr_data_count(4 downto 0) => NLW_U0_axi_aw_wr_data_count_UNCONNECTED(4 downto 0),
      axi_b_data_count(4 downto 0) => NLW_U0_axi_b_data_count_UNCONNECTED(4 downto 0),
      axi_b_dbiterr => NLW_U0_axi_b_dbiterr_UNCONNECTED,
      axi_b_injectdbiterr => '0',
      axi_b_injectsbiterr => '0',
      axi_b_overflow => NLW_U0_axi_b_overflow_UNCONNECTED,
      axi_b_prog_empty => NLW_U0_axi_b_prog_empty_UNCONNECTED,
      axi_b_prog_empty_thresh(3 downto 0) => B"0000",
      axi_b_prog_full => NLW_U0_axi_b_prog_full_UNCONNECTED,
      axi_b_prog_full_thresh(3 downto 0) => B"0000",
      axi_b_rd_data_count(4 downto 0) => NLW_U0_axi_b_rd_data_count_UNCONNECTED(4 downto 0),
      axi_b_sbiterr => NLW_U0_axi_b_sbiterr_UNCONNECTED,
      axi_b_underflow => NLW_U0_axi_b_underflow_UNCONNECTED,
      axi_b_wr_data_count(4 downto 0) => NLW_U0_axi_b_wr_data_count_UNCONNECTED(4 downto 0),
      axi_r_data_count(10 downto 0) => NLW_U0_axi_r_data_count_UNCONNECTED(10 downto 0),
      axi_r_dbiterr => NLW_U0_axi_r_dbiterr_UNCONNECTED,
      axi_r_injectdbiterr => '0',
      axi_r_injectsbiterr => '0',
      axi_r_overflow => NLW_U0_axi_r_overflow_UNCONNECTED,
      axi_r_prog_empty => NLW_U0_axi_r_prog_empty_UNCONNECTED,
      axi_r_prog_empty_thresh(9 downto 0) => B"0000000000",
      axi_r_prog_full => NLW_U0_axi_r_prog_full_UNCONNECTED,
      axi_r_prog_full_thresh(9 downto 0) => B"0000000000",
      axi_r_rd_data_count(10 downto 0) => NLW_U0_axi_r_rd_data_count_UNCONNECTED(10 downto 0),
      axi_r_sbiterr => NLW_U0_axi_r_sbiterr_UNCONNECTED,
      axi_r_underflow => NLW_U0_axi_r_underflow_UNCONNECTED,
      axi_r_wr_data_count(10 downto 0) => NLW_U0_axi_r_wr_data_count_UNCONNECTED(10 downto 0),
      axi_w_data_count(10 downto 0) => NLW_U0_axi_w_data_count_UNCONNECTED(10 downto 0),
      axi_w_dbiterr => NLW_U0_axi_w_dbiterr_UNCONNECTED,
      axi_w_injectdbiterr => '0',
      axi_w_injectsbiterr => '0',
      axi_w_overflow => NLW_U0_axi_w_overflow_UNCONNECTED,
      axi_w_prog_empty => NLW_U0_axi_w_prog_empty_UNCONNECTED,
      axi_w_prog_empty_thresh(9 downto 0) => B"0000000000",
      axi_w_prog_full => NLW_U0_axi_w_prog_full_UNCONNECTED,
      axi_w_prog_full_thresh(9 downto 0) => B"0000000000",
      axi_w_rd_data_count(10 downto 0) => NLW_U0_axi_w_rd_data_count_UNCONNECTED(10 downto 0),
      axi_w_sbiterr => NLW_U0_axi_w_sbiterr_UNCONNECTED,
      axi_w_underflow => NLW_U0_axi_w_underflow_UNCONNECTED,
      axi_w_wr_data_count(10 downto 0) => NLW_U0_axi_w_wr_data_count_UNCONNECTED(10 downto 0),
      axis_data_count(10 downto 0) => NLW_U0_axis_data_count_UNCONNECTED(10 downto 0),
      axis_dbiterr => NLW_U0_axis_dbiterr_UNCONNECTED,
      axis_injectdbiterr => '0',
      axis_injectsbiterr => '0',
      axis_overflow => NLW_U0_axis_overflow_UNCONNECTED,
      axis_prog_empty => NLW_U0_axis_prog_empty_UNCONNECTED,
      axis_prog_empty_thresh(9 downto 0) => B"0000000000",
      axis_prog_full => NLW_U0_axis_prog_full_UNCONNECTED,
      axis_prog_full_thresh(9 downto 0) => B"0000000000",
      axis_rd_data_count(10 downto 0) => NLW_U0_axis_rd_data_count_UNCONNECTED(10 downto 0),
      axis_sbiterr => NLW_U0_axis_sbiterr_UNCONNECTED,
      axis_underflow => NLW_U0_axis_underflow_UNCONNECTED,
      axis_wr_data_count(10 downto 0) => NLW_U0_axis_wr_data_count_UNCONNECTED(10 downto 0),
      backup => '0',
      backup_marker => '0',
      clk => '0',
      data_count(8 downto 0) => NLW_U0_data_count_UNCONNECTED(8 downto 0),
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      empty => empty,
      full => full,
      injectdbiterr => '0',
      injectsbiterr => '0',
      int_clk => '0',
      m_aclk => '0',
      m_aclk_en => '0',
      m_axi_araddr(31 downto 0) => NLW_U0_m_axi_araddr_UNCONNECTED(31 downto 0),
      m_axi_arburst(1 downto 0) => NLW_U0_m_axi_arburst_UNCONNECTED(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_U0_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_arid(0) => NLW_U0_m_axi_arid_UNCONNECTED(0),
      m_axi_arlen(7 downto 0) => NLW_U0_m_axi_arlen_UNCONNECTED(7 downto 0),
      m_axi_arlock(0) => NLW_U0_m_axi_arlock_UNCONNECTED(0),
      m_axi_arprot(2 downto 0) => NLW_U0_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_U0_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => '0',
      m_axi_arregion(3 downto 0) => NLW_U0_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => NLW_U0_m_axi_arsize_UNCONNECTED(2 downto 0),
      m_axi_aruser(0) => NLW_U0_m_axi_aruser_UNCONNECTED(0),
      m_axi_arvalid => NLW_U0_m_axi_arvalid_UNCONNECTED,
      m_axi_awaddr(31 downto 0) => NLW_U0_m_axi_awaddr_UNCONNECTED(31 downto 0),
      m_axi_awburst(1 downto 0) => NLW_U0_m_axi_awburst_UNCONNECTED(1 downto 0),
      m_axi_awcache(3 downto 0) => NLW_U0_m_axi_awcache_UNCONNECTED(3 downto 0),
      m_axi_awid(0) => NLW_U0_m_axi_awid_UNCONNECTED(0),
      m_axi_awlen(7 downto 0) => NLW_U0_m_axi_awlen_UNCONNECTED(7 downto 0),
      m_axi_awlock(0) => NLW_U0_m_axi_awlock_UNCONNECTED(0),
      m_axi_awprot(2 downto 0) => NLW_U0_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_U0_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => '0',
      m_axi_awregion(3 downto 0) => NLW_U0_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => NLW_U0_m_axi_awsize_UNCONNECTED(2 downto 0),
      m_axi_awuser(0) => NLW_U0_m_axi_awuser_UNCONNECTED(0),
      m_axi_awvalid => NLW_U0_m_axi_awvalid_UNCONNECTED,
      m_axi_bid(0) => '0',
      m_axi_bready => NLW_U0_m_axi_bready_UNCONNECTED,
      m_axi_bresp(1 downto 0) => B"00",
      m_axi_buser(0) => '0',
      m_axi_bvalid => '0',
      m_axi_rdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      m_axi_rid(0) => '0',
      m_axi_rlast => '0',
      m_axi_rready => NLW_U0_m_axi_rready_UNCONNECTED,
      m_axi_rresp(1 downto 0) => B"00",
      m_axi_ruser(0) => '0',
      m_axi_rvalid => '0',
      m_axi_wdata(63 downto 0) => NLW_U0_m_axi_wdata_UNCONNECTED(63 downto 0),
      m_axi_wid(0) => NLW_U0_m_axi_wid_UNCONNECTED(0),
      m_axi_wlast => NLW_U0_m_axi_wlast_UNCONNECTED,
      m_axi_wready => '0',
      m_axi_wstrb(7 downto 0) => NLW_U0_m_axi_wstrb_UNCONNECTED(7 downto 0),
      m_axi_wuser(0) => NLW_U0_m_axi_wuser_UNCONNECTED(0),
      m_axi_wvalid => NLW_U0_m_axi_wvalid_UNCONNECTED,
      m_axis_tdata(7 downto 0) => NLW_U0_m_axis_tdata_UNCONNECTED(7 downto 0),
      m_axis_tdest(0) => NLW_U0_m_axis_tdest_UNCONNECTED(0),
      m_axis_tid(0) => NLW_U0_m_axis_tid_UNCONNECTED(0),
      m_axis_tkeep(0) => NLW_U0_m_axis_tkeep_UNCONNECTED(0),
      m_axis_tlast => NLW_U0_m_axis_tlast_UNCONNECTED,
      m_axis_tready => '0',
      m_axis_tstrb(0) => NLW_U0_m_axis_tstrb_UNCONNECTED(0),
      m_axis_tuser(3 downto 0) => NLW_U0_m_axis_tuser_UNCONNECTED(3 downto 0),
      m_axis_tvalid => NLW_U0_m_axis_tvalid_UNCONNECTED,
      overflow => NLW_U0_overflow_UNCONNECTED,
      prog_empty => NLW_U0_prog_empty_UNCONNECTED,
      prog_empty_thresh(8 downto 0) => B"000000000",
      prog_empty_thresh_assert(8 downto 0) => B"000000000",
      prog_empty_thresh_negate(8 downto 0) => B"000000000",
      prog_full => NLW_U0_prog_full_UNCONNECTED,
      prog_full_thresh(8 downto 0) => B"000000000",
      prog_full_thresh_assert(8 downto 0) => B"000000000",
      prog_full_thresh_negate(8 downto 0) => B"000000000",
      rd_clk => rd_clk,
      rd_data_count(8 downto 0) => NLW_U0_rd_data_count_UNCONNECTED(8 downto 0),
      rd_en => rd_en,
      rd_rst => '0',
      rd_rst_busy => rd_rst_busy,
      rst => rst,
      s_aclk => '0',
      s_aclk_en => '0',
      s_aresetn => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arcache(3 downto 0) => B"0000",
      s_axi_arid(0) => '0',
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arlock(0) => '0',
      s_axi_arprot(2 downto 0) => B"000",
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_aruser(0) => '0',
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awcache(3 downto 0) => B"0000",
      s_axi_awid(0) => '0',
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awlock(0) => '0',
      s_axi_awprot(2 downto 0) => B"000",
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awuser(0) => '0',
      s_axi_awvalid => '0',
      s_axi_bid(0) => NLW_U0_s_axi_bid_UNCONNECTED(0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_buser(0) => NLW_U0_s_axi_buser_UNCONNECTED(0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_rdata(63 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(63 downto 0),
      s_axi_rid(0) => NLW_U0_s_axi_rid_UNCONNECTED(0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_ruser(0) => NLW_U0_s_axi_ruser_UNCONNECTED(0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_wdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      s_axi_wid(0) => '0',
      s_axi_wlast => '0',
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(7 downto 0) => B"00000000",
      s_axi_wuser(0) => '0',
      s_axi_wvalid => '0',
      s_axis_tdata(7 downto 0) => B"00000000",
      s_axis_tdest(0) => '0',
      s_axis_tid(0) => '0',
      s_axis_tkeep(0) => '0',
      s_axis_tlast => '0',
      s_axis_tready => NLW_U0_s_axis_tready_UNCONNECTED,
      s_axis_tstrb(0) => '0',
      s_axis_tuser(3 downto 0) => B"0000",
      s_axis_tvalid => '0',
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      sleep => '0',
      srst => '0',
      underflow => NLW_U0_underflow_UNCONNECTED,
      valid => NLW_U0_valid_UNCONNECTED,
      wr_ack => NLW_U0_wr_ack_UNCONNECTED,
      wr_clk => wr_clk,
      wr_data_count(8 downto 0) => NLW_U0_wr_data_count_UNCONNECTED(8 downto 0),
      wr_en => wr_en,
      wr_rst => '0',
      wr_rst_busy => wr_rst_busy
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_UART_V1_9_0_0_TOP_BD is
  port (
    Receive_OUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Receive_EM : out STD_LOGIC;
    Receive_AE : out STD_LOGIC;
    Transmit_FU : out STD_LOGIC;
    Transmit_AF : out STD_LOGIC;
    Tx : out STD_LOGIC;
    Reset_0 : in STD_LOGIC;
    Receive_CLK : in STD_LOGIC;
    Receive_RD_EN : in STD_LOGIC;
    CLK100MHz : in STD_LOGIC;
    Transmit_CLK : in STD_LOGIC;
    Transmit_IN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Transmit_WR_EN : in STD_LOGIC;
    Rx : in STD_LOGIC;
    UART_Debug_Enable : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_Design_UART_V1_9_0_0_TOP_BD : entity is "TOP_BD";
end Zynq_Design_UART_V1_9_0_0_TOP_BD;

architecture STRUCTURE of Zynq_Design_UART_V1_9_0_0_TOP_BD is
  signal FIFO_IN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Net : STD_LOGIC;
  signal Receive_Buffer_almost_full : STD_LOGIC;
  signal Receive_Buffer_full : STD_LOGIC;
  signal Reset_Controller_0_Reset_1 : STD_LOGIC;
  signal Reset_Out : STD_LOGIC;
  signal Transmit_Buffer_empty : STD_LOGIC;
  signal UART_0_FIFO_OT : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal UART_0_FIFO_WT : STD_LOGIC;
  signal UART_0_Rx_FIFO_CLK : STD_LOGIC;
  signal UART_0_Tx : STD_LOGIC;
  signal UART_0_Tx_FIFO_CLK : STD_LOGIC;
  signal fifo_generator_0_almost_empty : STD_LOGIC;
  signal NLW_Receive_Buffer_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_Receive_Buffer_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_Transmit_Buffer_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_Transmit_Buffer_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Receive_Buffer : label is "TOP_BD_fifo_generator_0_1,fifo_generator_v13_2_4,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Receive_Buffer : label is "yes";
  attribute x_core_info : string;
  attribute x_core_info of Receive_Buffer : label is "fifo_generator_v13_2_4,Vivado 2019.1";
  attribute CHECK_LICENSE_TYPE of Transmit_Buffer : label is "TOP_BD_fifo_generator_0_0,fifo_generator_v13_2_4,{}";
  attribute downgradeipidentifiedwarnings of Transmit_Buffer : label is "yes";
  attribute x_core_info of Transmit_Buffer : label is "fifo_generator_v13_2_4,Vivado 2019.1";
begin
Debouncer_0: entity work.Zynq_Design_UART_V1_9_0_0_TOP_BD_Debouncer_0_0
     port map (
      CLK100MHz => CLK100MHz,
      Reset_0 => Reset_0,
      Reset_Out => Reset_Out
    );
Receive_Buffer: entity work.Zynq_Design_UART_V1_9_0_0_TOP_BD_fifo_generator_0_1
     port map (
      almost_empty => Receive_AE,
      almost_full => Receive_Buffer_almost_full,
      din(7 downto 0) => UART_0_FIFO_OT(7 downto 0),
      dout(7 downto 0) => Receive_OUT(7 downto 0),
      empty => Receive_EM,
      full => Receive_Buffer_full,
      rd_clk => Receive_CLK,
      rd_en => Receive_RD_EN,
      rd_rst_busy => NLW_Receive_Buffer_rd_rst_busy_UNCONNECTED,
      rst => Reset_Controller_0_Reset_1,
      wr_clk => UART_0_Rx_FIFO_CLK,
      wr_en => UART_0_FIFO_WT,
      wr_rst_busy => NLW_Receive_Buffer_wr_rst_busy_UNCONNECTED
    );
Reset_Controller_0: entity work.Zynq_Design_UART_V1_9_0_0_TOP_BD_Reset_Controller_0_0
     port map (
      CLK100MHz => CLK100MHz,
      Reset_Out => Reset_Out,
      rst => Reset_Controller_0_Reset_1
    );
Transmit_Buffer: entity work.Zynq_Design_UART_V1_9_0_0_TOP_BD_fifo_generator_0_0
     port map (
      almost_empty => fifo_generator_0_almost_empty,
      almost_full => Transmit_AF,
      din(7 downto 0) => Transmit_IN(7 downto 0),
      dout(7 downto 0) => FIFO_IN(7 downto 0),
      empty => Transmit_Buffer_empty,
      full => Transmit_FU,
      rd_clk => UART_0_Tx_FIFO_CLK,
      rd_en => Net,
      rd_rst_busy => NLW_Transmit_Buffer_rd_rst_busy_UNCONNECTED,
      rst => Reset_Controller_0_Reset_1,
      wr_clk => Transmit_CLK,
      wr_en => Transmit_WR_EN,
      wr_rst_busy => NLW_Transmit_Buffer_wr_rst_busy_UNCONNECTED
    );
UART_0: entity work.Zynq_Design_UART_V1_9_0_0_TOP_BD_UART_0_0
     port map (
      CLK => UART_0_Rx_FIFO_CLK,
      CLK100MHz => CLK100MHz,
      D(7 downto 0) => FIFO_IN(7 downto 0),
      Q(7 downto 0) => UART_0_FIFO_OT(7 downto 0),
      Rx => Rx,
      UART_0_Tx => UART_0_Tx,
      UART_0_Tx_FIFO_CLK => UART_0_Tx_FIFO_CLK,
      almost_full => Receive_Buffer_almost_full,
      empty => Transmit_Buffer_empty,
      full => Receive_Buffer_full,
      rd_en => Net,
      wr_en => UART_0_FIFO_WT
    );
UART_Debug_0: entity work.Zynq_Design_UART_V1_9_0_0_TOP_BD_UART_Debug_0_0
     port map (
      CLK100MHz => CLK100MHz,
      Tx => Tx,
      UART_0_Tx => UART_0_Tx,
      UART_Debug_Enable => UART_Debug_Enable
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_UART_V1_9_0_0_TOP_BD_wrapper is
  port (
    CLK100MHz : in STD_LOGIC;
    Receive_AE : out STD_LOGIC;
    Receive_CLK : in STD_LOGIC;
    Receive_EM : out STD_LOGIC;
    Receive_OUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Receive_RD_EN : in STD_LOGIC;
    Reset_0 : in STD_LOGIC;
    Rx : in STD_LOGIC;
    Transmit_AF : out STD_LOGIC;
    Transmit_CLK : in STD_LOGIC;
    Transmit_FU : out STD_LOGIC;
    Transmit_IN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Transmit_WR_EN : in STD_LOGIC;
    Tx : out STD_LOGIC;
    UART_Debug_Enable : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_Design_UART_V1_9_0_0_TOP_BD_wrapper : entity is "TOP_BD_wrapper";
end Zynq_Design_UART_V1_9_0_0_TOP_BD_wrapper;

architecture STRUCTURE of Zynq_Design_UART_V1_9_0_0_TOP_BD_wrapper is
  attribute x_interface_info : string;
  attribute x_interface_info of CLK100MHz : signal is "xilinx.com:signal:clock:1.0 CLK.CLK100MHZ CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of CLK100MHz : signal is "XIL_INTERFACENAME CLK.CLK100MHZ, ASSOCIATED_RESET Reset_0, CLK_DOMAIN TOP_BD_sys_clock, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000";
  attribute x_interface_info of Reset_0 : signal is "xilinx.com:signal:reset:1.0 RST.RESET_0 RST";
  attribute x_interface_parameter of Reset_0 : signal is "XIL_INTERFACENAME RST.RESET_0, INSERT_VIP 0, POLARITY ACTIVE_LOW";
begin
TOP_BD_i: entity work.Zynq_Design_UART_V1_9_0_0_TOP_BD
     port map (
      CLK100MHz => CLK100MHz,
      Receive_AE => Receive_AE,
      Receive_CLK => Receive_CLK,
      Receive_EM => Receive_EM,
      Receive_OUT(7 downto 0) => Receive_OUT(7 downto 0),
      Receive_RD_EN => Receive_RD_EN,
      Reset_0 => Reset_0,
      Rx => Rx,
      Transmit_AF => Transmit_AF,
      Transmit_CLK => Transmit_CLK,
      Transmit_FU => Transmit_FU,
      Transmit_IN(7 downto 0) => Transmit_IN(7 downto 0),
      Transmit_WR_EN => Transmit_WR_EN,
      Tx => Tx,
      UART_Debug_Enable => UART_Debug_Enable
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_UART_V1_9_0_0 is
  port (
    CLK100MHz : in STD_LOGIC;
    Receive_AE : out STD_LOGIC;
    Receive_CLK : in STD_LOGIC;
    Receive_EM : out STD_LOGIC;
    Receive_OUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Receive_RD_EN : in STD_LOGIC;
    Reset_0 : in STD_LOGIC;
    Rx : in STD_LOGIC;
    Transmit_AF : out STD_LOGIC;
    Transmit_CLK : in STD_LOGIC;
    Transmit_FU : out STD_LOGIC;
    Transmit_IN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Transmit_WR_EN : in STD_LOGIC;
    Tx : out STD_LOGIC;
    UART_Debug_Enable : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Zynq_Design_UART_V1_9_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Zynq_Design_UART_V1_9_0_0 : entity is "Zynq_Design_UART_V1_9_0_0,TOP_BD_wrapper,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Zynq_Design_UART_V1_9_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Zynq_Design_UART_V1_9_0_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of Zynq_Design_UART_V1_9_0_0 : entity is "TOP_BD_wrapper,Vivado 2019.1";
end Zynq_Design_UART_V1_9_0_0;

architecture STRUCTURE of Zynq_Design_UART_V1_9_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of Receive_CLK : signal is "xilinx.com:signal:clock:1.0 Receive_CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of Receive_CLK : signal is "XIL_INTERFACENAME Receive_CLK, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN Zynq_Design_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of Reset_0 : signal is "xilinx.com:signal:reset:1.0 Reset_0 RST";
  attribute x_interface_parameter of Reset_0 : signal is "XIL_INTERFACENAME Reset_0, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of Transmit_CLK : signal is "xilinx.com:signal:clock:1.0 Transmit_CLK CLK";
  attribute x_interface_parameter of Transmit_CLK : signal is "XIL_INTERFACENAME Transmit_CLK, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN Zynq_Design_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
begin
U0: entity work.Zynq_Design_UART_V1_9_0_0_TOP_BD_wrapper
     port map (
      CLK100MHz => CLK100MHz,
      Receive_AE => Receive_AE,
      Receive_CLK => Receive_CLK,
      Receive_EM => Receive_EM,
      Receive_OUT(7 downto 0) => Receive_OUT(7 downto 0),
      Receive_RD_EN => Receive_RD_EN,
      Reset_0 => Reset_0,
      Rx => Rx,
      Transmit_AF => Transmit_AF,
      Transmit_CLK => Transmit_CLK,
      Transmit_FU => Transmit_FU,
      Transmit_IN(7 downto 0) => Transmit_IN(7 downto 0),
      Transmit_WR_EN => Transmit_WR_EN,
      Tx => Tx,
      UART_Debug_Enable => UART_Debug_Enable
    );
end STRUCTURE;
