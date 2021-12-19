-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Sat May  8 18:08:16 2021
-- Host        : DESKTOP-QSJNSC0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               g:/Xilinx/Projects/Desktop/AXI_4_Lite_Slave/AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ip/Zynq_Design_SSD_Controller_0_0/Zynq_Design_SSD_Controller_0_0_sim_netlist.vhdl
-- Design      : Zynq_Design_SSD_Controller_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_SSD_Controller_0_0_SSD_Controller is
  port (
    SSD_VEC : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    ASCII_To_Display : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_Design_SSD_Controller_0_0_SSD_Controller : entity is "SSD_Controller";
end Zynq_Design_SSD_Controller_0_0_SSD_Controller;

architecture STRUCTURE of Zynq_Design_SSD_Controller_0_0_SSD_Controller is
  signal A_i_2_n_0 : STD_LOGIC;
  signal B_i_1_n_0 : STD_LOGIC;
  signal B_i_2_n_0 : STD_LOGIC;
  signal C_i_1_n_0 : STD_LOGIC;
  signal C_i_2_n_0 : STD_LOGIC;
  signal DCIN0 : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal DCIN1 : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal D_i_1_n_0 : STD_LOGIC;
  signal D_i_2_n_0 : STD_LOGIC;
  signal E_i_1_n_0 : STD_LOGIC;
  signal E_i_2_n_0 : STD_LOGIC;
  signal F_i_1_n_0 : STD_LOGIC;
  signal F_i_2_n_0 : STD_LOGIC;
  signal FiveZeroHzCNT : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \FiveZeroHzCNT0_carry__0_n_0\ : STD_LOGIC;
  signal \FiveZeroHzCNT0_carry__0_n_1\ : STD_LOGIC;
  signal \FiveZeroHzCNT0_carry__0_n_2\ : STD_LOGIC;
  signal \FiveZeroHzCNT0_carry__0_n_3\ : STD_LOGIC;
  signal \FiveZeroHzCNT0_carry__1_n_0\ : STD_LOGIC;
  signal \FiveZeroHzCNT0_carry__1_n_1\ : STD_LOGIC;
  signal \FiveZeroHzCNT0_carry__1_n_2\ : STD_LOGIC;
  signal \FiveZeroHzCNT0_carry__1_n_3\ : STD_LOGIC;
  signal \FiveZeroHzCNT0_carry__2_n_0\ : STD_LOGIC;
  signal \FiveZeroHzCNT0_carry__2_n_1\ : STD_LOGIC;
  signal \FiveZeroHzCNT0_carry__2_n_2\ : STD_LOGIC;
  signal \FiveZeroHzCNT0_carry__2_n_3\ : STD_LOGIC;
  signal \FiveZeroHzCNT0_carry__3_n_0\ : STD_LOGIC;
  signal \FiveZeroHzCNT0_carry__3_n_1\ : STD_LOGIC;
  signal \FiveZeroHzCNT0_carry__3_n_2\ : STD_LOGIC;
  signal \FiveZeroHzCNT0_carry__3_n_3\ : STD_LOGIC;
  signal \FiveZeroHzCNT0_carry__4_n_0\ : STD_LOGIC;
  signal \FiveZeroHzCNT0_carry__4_n_1\ : STD_LOGIC;
  signal \FiveZeroHzCNT0_carry__4_n_2\ : STD_LOGIC;
  signal \FiveZeroHzCNT0_carry__4_n_3\ : STD_LOGIC;
  signal \FiveZeroHzCNT0_carry__5_n_0\ : STD_LOGIC;
  signal \FiveZeroHzCNT0_carry__5_n_1\ : STD_LOGIC;
  signal \FiveZeroHzCNT0_carry__5_n_2\ : STD_LOGIC;
  signal \FiveZeroHzCNT0_carry__5_n_3\ : STD_LOGIC;
  signal \FiveZeroHzCNT0_carry__6_n_2\ : STD_LOGIC;
  signal \FiveZeroHzCNT0_carry__6_n_3\ : STD_LOGIC;
  signal FiveZeroHzCNT0_carry_n_0 : STD_LOGIC;
  signal FiveZeroHzCNT0_carry_n_1 : STD_LOGIC;
  signal FiveZeroHzCNT0_carry_n_2 : STD_LOGIC;
  signal FiveZeroHzCNT0_carry_n_3 : STD_LOGIC;
  signal \FiveZeroHzCNT[0]_i_2_n_0\ : STD_LOGIC;
  signal \FiveZeroHzCNT[0]_i_3_n_0\ : STD_LOGIC;
  signal \FiveZeroHzCNT[0]_i_4_n_0\ : STD_LOGIC;
  signal \FiveZeroHzCNT[0]_i_5_n_0\ : STD_LOGIC;
  signal \FiveZeroHzCNT[0]_i_6_n_0\ : STD_LOGIC;
  signal \FiveZeroHzCNT[0]_i_7_n_0\ : STD_LOGIC;
  signal \FiveZeroHzCNT[0]_i_8_n_0\ : STD_LOGIC;
  signal \FiveZeroHzCNT[0]_i_9_n_0\ : STD_LOGIC;
  signal \FiveZeroHzCNT[31]_i_1_n_0\ : STD_LOGIC;
  signal \FiveZeroHzCNT_reg_n_0_[0]\ : STD_LOGIC;
  signal \FiveZeroHzCNT_reg_n_0_[10]\ : STD_LOGIC;
  signal \FiveZeroHzCNT_reg_n_0_[11]\ : STD_LOGIC;
  signal \FiveZeroHzCNT_reg_n_0_[12]\ : STD_LOGIC;
  signal \FiveZeroHzCNT_reg_n_0_[13]\ : STD_LOGIC;
  signal \FiveZeroHzCNT_reg_n_0_[14]\ : STD_LOGIC;
  signal \FiveZeroHzCNT_reg_n_0_[15]\ : STD_LOGIC;
  signal \FiveZeroHzCNT_reg_n_0_[16]\ : STD_LOGIC;
  signal \FiveZeroHzCNT_reg_n_0_[17]\ : STD_LOGIC;
  signal \FiveZeroHzCNT_reg_n_0_[18]\ : STD_LOGIC;
  signal \FiveZeroHzCNT_reg_n_0_[19]\ : STD_LOGIC;
  signal \FiveZeroHzCNT_reg_n_0_[1]\ : STD_LOGIC;
  signal \FiveZeroHzCNT_reg_n_0_[20]\ : STD_LOGIC;
  signal \FiveZeroHzCNT_reg_n_0_[21]\ : STD_LOGIC;
  signal \FiveZeroHzCNT_reg_n_0_[22]\ : STD_LOGIC;
  signal \FiveZeroHzCNT_reg_n_0_[23]\ : STD_LOGIC;
  signal \FiveZeroHzCNT_reg_n_0_[24]\ : STD_LOGIC;
  signal \FiveZeroHzCNT_reg_n_0_[25]\ : STD_LOGIC;
  signal \FiveZeroHzCNT_reg_n_0_[26]\ : STD_LOGIC;
  signal \FiveZeroHzCNT_reg_n_0_[27]\ : STD_LOGIC;
  signal \FiveZeroHzCNT_reg_n_0_[28]\ : STD_LOGIC;
  signal \FiveZeroHzCNT_reg_n_0_[29]\ : STD_LOGIC;
  signal \FiveZeroHzCNT_reg_n_0_[2]\ : STD_LOGIC;
  signal \FiveZeroHzCNT_reg_n_0_[30]\ : STD_LOGIC;
  signal \FiveZeroHzCNT_reg_n_0_[31]\ : STD_LOGIC;
  signal \FiveZeroHzCNT_reg_n_0_[3]\ : STD_LOGIC;
  signal \FiveZeroHzCNT_reg_n_0_[4]\ : STD_LOGIC;
  signal \FiveZeroHzCNT_reg_n_0_[5]\ : STD_LOGIC;
  signal \FiveZeroHzCNT_reg_n_0_[6]\ : STD_LOGIC;
  signal \FiveZeroHzCNT_reg_n_0_[7]\ : STD_LOGIC;
  signal \FiveZeroHzCNT_reg_n_0_[8]\ : STD_LOGIC;
  signal \FiveZeroHzCNT_reg_n_0_[9]\ : STD_LOGIC;
  signal FiveZeroHzOut : STD_LOGIC;
  signal G_i_1_n_0 : STD_LOGIC;
  signal G_i_2_n_0 : STD_LOGIC;
  signal SEG0inOne : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \SEG0inOne[2]_i_2_n_0\ : STD_LOGIC;
  signal \SEG0inOne[3]_i_1_n_0\ : STD_LOGIC;
  signal \SEG0inOne[3]_i_2_n_0\ : STD_LOGIC;
  signal \SEG0inOne[3]_i_3_n_0\ : STD_LOGIC;
  signal \SEG0inOne[3]_i_4_n_0\ : STD_LOGIC;
  signal SEG1inOne : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \SEG1inOne[0]_i_1_n_0\ : STD_LOGIC;
  signal \SEG1inOne[3]_i_1_n_0\ : STD_LOGIC;
  signal \^ssd_vec\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal p_0_in : STD_LOGIC;
  signal p_0_out : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_FiveZeroHzCNT0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_FiveZeroHzCNT0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of A_i_2 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of C_i_2 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of D_i_2 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of E_i_2 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of F_i_2 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of G_i_2 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \SEG0inOne[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \SEG0inOne[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \SEG0inOne[3]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \SEG0inOne[3]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \SEG1inOne[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \SEG1inOne[3]_i_1\ : label is "soft_lutpair1";
begin
  SSD_VEC(7 downto 0) <= \^ssd_vec\(7 downto 0);
A_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"545BFFFF545B0000"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => \^ssd_vec\(7),
      I5 => A_i_2_n_0,
      O => p_0_out
    );
A_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"545B"
    )
        port map (
      I0 => sel0(7),
      I1 => sel0(4),
      I2 => sel0(5),
      I3 => sel0(6),
      O => A_i_2_n_0
    );
A_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => FiveZeroHzOut,
      CE => '1',
      D => p_0_out,
      Q => \^ssd_vec\(0),
      R => '0'
    );
B_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"451FFFFF451F0000"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => \^ssd_vec\(7),
      I5 => B_i_2_n_0,
      O => B_i_1_n_0
    );
B_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"415F"
    )
        port map (
      I0 => sel0(7),
      I1 => sel0(4),
      I2 => sel0(5),
      I3 => sel0(6),
      O => B_i_2_n_0
    );
B_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => FiveZeroHzOut,
      CE => '1',
      D => B_i_1_n_0,
      Q => \^ssd_vec\(1),
      R => '0'
    );
CAT_STATE_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^ssd_vec\(7),
      O => p_0_in
    );
CAT_STATE_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => FiveZeroHzOut,
      CE => '1',
      D => p_0_in,
      Q => \^ssd_vec\(7),
      R => '0'
    );
C_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5753FFFF57530000"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => sel0(0),
      I4 => \^ssd_vec\(7),
      I5 => C_i_2_n_0,
      O => C_i_1_n_0
    );
C_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5753"
    )
        port map (
      I0 => sel0(7),
      I1 => sel0(5),
      I2 => sel0(6),
      I3 => sel0(4),
      O => C_i_2_n_0
    );
C_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => FiveZeroHzOut,
      CE => '1',
      D => C_i_1_n_0,
      Q => \^ssd_vec\(2),
      R => '0'
    );
D_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1453FFFF14530000"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => \^ssd_vec\(7),
      I5 => D_i_2_n_0,
      O => D_i_1_n_0
    );
D_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1453"
    )
        port map (
      I0 => sel0(7),
      I1 => sel0(4),
      I2 => sel0(5),
      I3 => sel0(6),
      O => D_i_2_n_0
    );
D_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => FiveZeroHzOut,
      CE => '1',
      D => D_i_1_n_0,
      Q => \^ssd_vec\(3),
      R => '0'
    );
E_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0053FFFF00530000"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => \^ssd_vec\(7),
      I5 => E_i_2_n_0,
      O => E_i_1_n_0
    );
E_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0053"
    )
        port map (
      I0 => sel0(7),
      I1 => sel0(6),
      I2 => sel0(5),
      I3 => sel0(4),
      O => E_i_2_n_0
    );
E_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => FiveZeroHzOut,
      CE => '1',
      D => E_i_1_n_0,
      Q => \^ssd_vec\(4),
      R => '0'
    );
F_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"105BFFFF105B0000"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => \^ssd_vec\(7),
      I5 => F_i_2_n_0,
      O => F_i_1_n_0
    );
F_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"105B"
    )
        port map (
      I0 => sel0(7),
      I1 => sel0(4),
      I2 => sel0(6),
      I3 => sel0(5),
      O => F_i_2_n_0
    );
F_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => FiveZeroHzOut,
      CE => '1',
      D => F_i_1_n_0,
      Q => \^ssd_vec\(5),
      R => '0'
    );
FiveZeroHzCNT0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => FiveZeroHzCNT0_carry_n_0,
      CO(2) => FiveZeroHzCNT0_carry_n_1,
      CO(1) => FiveZeroHzCNT0_carry_n_2,
      CO(0) => FiveZeroHzCNT0_carry_n_3,
      CYINIT => \FiveZeroHzCNT_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3) => \FiveZeroHzCNT_reg_n_0_[4]\,
      S(2) => \FiveZeroHzCNT_reg_n_0_[3]\,
      S(1) => \FiveZeroHzCNT_reg_n_0_[2]\,
      S(0) => \FiveZeroHzCNT_reg_n_0_[1]\
    );
\FiveZeroHzCNT0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => FiveZeroHzCNT0_carry_n_0,
      CO(3) => \FiveZeroHzCNT0_carry__0_n_0\,
      CO(2) => \FiveZeroHzCNT0_carry__0_n_1\,
      CO(1) => \FiveZeroHzCNT0_carry__0_n_2\,
      CO(0) => \FiveZeroHzCNT0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3) => \FiveZeroHzCNT_reg_n_0_[8]\,
      S(2) => \FiveZeroHzCNT_reg_n_0_[7]\,
      S(1) => \FiveZeroHzCNT_reg_n_0_[6]\,
      S(0) => \FiveZeroHzCNT_reg_n_0_[5]\
    );
\FiveZeroHzCNT0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \FiveZeroHzCNT0_carry__0_n_0\,
      CO(3) => \FiveZeroHzCNT0_carry__1_n_0\,
      CO(2) => \FiveZeroHzCNT0_carry__1_n_1\,
      CO(1) => \FiveZeroHzCNT0_carry__1_n_2\,
      CO(0) => \FiveZeroHzCNT0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3) => \FiveZeroHzCNT_reg_n_0_[12]\,
      S(2) => \FiveZeroHzCNT_reg_n_0_[11]\,
      S(1) => \FiveZeroHzCNT_reg_n_0_[10]\,
      S(0) => \FiveZeroHzCNT_reg_n_0_[9]\
    );
\FiveZeroHzCNT0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \FiveZeroHzCNT0_carry__1_n_0\,
      CO(3) => \FiveZeroHzCNT0_carry__2_n_0\,
      CO(2) => \FiveZeroHzCNT0_carry__2_n_1\,
      CO(1) => \FiveZeroHzCNT0_carry__2_n_2\,
      CO(0) => \FiveZeroHzCNT0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3) => \FiveZeroHzCNT_reg_n_0_[16]\,
      S(2) => \FiveZeroHzCNT_reg_n_0_[15]\,
      S(1) => \FiveZeroHzCNT_reg_n_0_[14]\,
      S(0) => \FiveZeroHzCNT_reg_n_0_[13]\
    );
\FiveZeroHzCNT0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \FiveZeroHzCNT0_carry__2_n_0\,
      CO(3) => \FiveZeroHzCNT0_carry__3_n_0\,
      CO(2) => \FiveZeroHzCNT0_carry__3_n_1\,
      CO(1) => \FiveZeroHzCNT0_carry__3_n_2\,
      CO(0) => \FiveZeroHzCNT0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(20 downto 17),
      S(3) => \FiveZeroHzCNT_reg_n_0_[20]\,
      S(2) => \FiveZeroHzCNT_reg_n_0_[19]\,
      S(1) => \FiveZeroHzCNT_reg_n_0_[18]\,
      S(0) => \FiveZeroHzCNT_reg_n_0_[17]\
    );
\FiveZeroHzCNT0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \FiveZeroHzCNT0_carry__3_n_0\,
      CO(3) => \FiveZeroHzCNT0_carry__4_n_0\,
      CO(2) => \FiveZeroHzCNT0_carry__4_n_1\,
      CO(1) => \FiveZeroHzCNT0_carry__4_n_2\,
      CO(0) => \FiveZeroHzCNT0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(24 downto 21),
      S(3) => \FiveZeroHzCNT_reg_n_0_[24]\,
      S(2) => \FiveZeroHzCNT_reg_n_0_[23]\,
      S(1) => \FiveZeroHzCNT_reg_n_0_[22]\,
      S(0) => \FiveZeroHzCNT_reg_n_0_[21]\
    );
\FiveZeroHzCNT0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \FiveZeroHzCNT0_carry__4_n_0\,
      CO(3) => \FiveZeroHzCNT0_carry__5_n_0\,
      CO(2) => \FiveZeroHzCNT0_carry__5_n_1\,
      CO(1) => \FiveZeroHzCNT0_carry__5_n_2\,
      CO(0) => \FiveZeroHzCNT0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(28 downto 25),
      S(3) => \FiveZeroHzCNT_reg_n_0_[28]\,
      S(2) => \FiveZeroHzCNT_reg_n_0_[27]\,
      S(1) => \FiveZeroHzCNT_reg_n_0_[26]\,
      S(0) => \FiveZeroHzCNT_reg_n_0_[25]\
    );
\FiveZeroHzCNT0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \FiveZeroHzCNT0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_FiveZeroHzCNT0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \FiveZeroHzCNT0_carry__6_n_2\,
      CO(0) => \FiveZeroHzCNT0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_FiveZeroHzCNT0_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(31 downto 29),
      S(3) => '0',
      S(2) => \FiveZeroHzCNT_reg_n_0_[31]\,
      S(1) => \FiveZeroHzCNT_reg_n_0_[30]\,
      S(0) => \FiveZeroHzCNT_reg_n_0_[29]\
    );
\FiveZeroHzCNT[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => \FiveZeroHzCNT[0]_i_2_n_0\,
      I1 => \FiveZeroHzCNT[0]_i_3_n_0\,
      I2 => \FiveZeroHzCNT[0]_i_4_n_0\,
      I3 => \FiveZeroHzCNT_reg_n_0_[0]\,
      O => FiveZeroHzCNT(0)
    );
\FiveZeroHzCNT[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FiveZeroHzCNT[0]_i_5_n_0\,
      I1 => \FiveZeroHzCNT[0]_i_6_n_0\,
      I2 => \FiveZeroHzCNT_reg_n_0_[31]\,
      I3 => \FiveZeroHzCNT_reg_n_0_[30]\,
      I4 => \FiveZeroHzCNT_reg_n_0_[1]\,
      I5 => \FiveZeroHzCNT[0]_i_7_n_0\,
      O => \FiveZeroHzCNT[0]_i_2_n_0\
    );
\FiveZeroHzCNT[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFB"
    )
        port map (
      I0 => \FiveZeroHzCNT_reg_n_0_[4]\,
      I1 => \FiveZeroHzCNT_reg_n_0_[5]\,
      I2 => \FiveZeroHzCNT_reg_n_0_[2]\,
      I3 => \FiveZeroHzCNT_reg_n_0_[3]\,
      I4 => \FiveZeroHzCNT[0]_i_8_n_0\,
      O => \FiveZeroHzCNT[0]_i_3_n_0\
    );
\FiveZeroHzCNT[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \FiveZeroHzCNT_reg_n_0_[12]\,
      I1 => \FiveZeroHzCNT_reg_n_0_[13]\,
      I2 => \FiveZeroHzCNT_reg_n_0_[10]\,
      I3 => \FiveZeroHzCNT_reg_n_0_[11]\,
      I4 => \FiveZeroHzCNT[0]_i_9_n_0\,
      O => \FiveZeroHzCNT[0]_i_4_n_0\
    );
\FiveZeroHzCNT[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FiveZeroHzCNT_reg_n_0_[23]\,
      I1 => \FiveZeroHzCNT_reg_n_0_[22]\,
      I2 => \FiveZeroHzCNT_reg_n_0_[25]\,
      I3 => \FiveZeroHzCNT_reg_n_0_[24]\,
      O => \FiveZeroHzCNT[0]_i_5_n_0\
    );
\FiveZeroHzCNT[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => \FiveZeroHzCNT_reg_n_0_[19]\,
      I1 => \FiveZeroHzCNT_reg_n_0_[18]\,
      I2 => \FiveZeroHzCNT_reg_n_0_[21]\,
      I3 => \FiveZeroHzCNT_reg_n_0_[20]\,
      O => \FiveZeroHzCNT[0]_i_6_n_0\
    );
\FiveZeroHzCNT[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FiveZeroHzCNT_reg_n_0_[27]\,
      I1 => \FiveZeroHzCNT_reg_n_0_[26]\,
      I2 => \FiveZeroHzCNT_reg_n_0_[29]\,
      I3 => \FiveZeroHzCNT_reg_n_0_[28]\,
      O => \FiveZeroHzCNT[0]_i_7_n_0\
    );
\FiveZeroHzCNT[0]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \FiveZeroHzCNT_reg_n_0_[7]\,
      I1 => \FiveZeroHzCNT_reg_n_0_[6]\,
      I2 => \FiveZeroHzCNT_reg_n_0_[8]\,
      I3 => \FiveZeroHzCNT_reg_n_0_[9]\,
      O => \FiveZeroHzCNT[0]_i_8_n_0\
    );
\FiveZeroHzCNT[0]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \FiveZeroHzCNT_reg_n_0_[14]\,
      I1 => \FiveZeroHzCNT_reg_n_0_[15]\,
      I2 => \FiveZeroHzCNT_reg_n_0_[17]\,
      I3 => \FiveZeroHzCNT_reg_n_0_[16]\,
      O => \FiveZeroHzCNT[0]_i_9_n_0\
    );
\FiveZeroHzCNT[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \FiveZeroHzCNT[0]_i_2_n_0\,
      I1 => \FiveZeroHzCNT[0]_i_3_n_0\,
      I2 => \FiveZeroHzCNT[0]_i_4_n_0\,
      I3 => \FiveZeroHzCNT_reg_n_0_[0]\,
      O => \FiveZeroHzCNT[31]_i_1_n_0\
    );
\FiveZeroHzCNT_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => FiveZeroHzCNT(0),
      Q => \FiveZeroHzCNT_reg_n_0_[0]\,
      R => '0'
    );
\FiveZeroHzCNT_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => data0(10),
      Q => \FiveZeroHzCNT_reg_n_0_[10]\,
      R => \FiveZeroHzCNT[31]_i_1_n_0\
    );
\FiveZeroHzCNT_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => data0(11),
      Q => \FiveZeroHzCNT_reg_n_0_[11]\,
      R => \FiveZeroHzCNT[31]_i_1_n_0\
    );
\FiveZeroHzCNT_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => data0(12),
      Q => \FiveZeroHzCNT_reg_n_0_[12]\,
      R => \FiveZeroHzCNT[31]_i_1_n_0\
    );
\FiveZeroHzCNT_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => data0(13),
      Q => \FiveZeroHzCNT_reg_n_0_[13]\,
      R => \FiveZeroHzCNT[31]_i_1_n_0\
    );
\FiveZeroHzCNT_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => data0(14),
      Q => \FiveZeroHzCNT_reg_n_0_[14]\,
      R => \FiveZeroHzCNT[31]_i_1_n_0\
    );
\FiveZeroHzCNT_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => data0(15),
      Q => \FiveZeroHzCNT_reg_n_0_[15]\,
      R => \FiveZeroHzCNT[31]_i_1_n_0\
    );
\FiveZeroHzCNT_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => data0(16),
      Q => \FiveZeroHzCNT_reg_n_0_[16]\,
      R => \FiveZeroHzCNT[31]_i_1_n_0\
    );
\FiveZeroHzCNT_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => data0(17),
      Q => \FiveZeroHzCNT_reg_n_0_[17]\,
      R => \FiveZeroHzCNT[31]_i_1_n_0\
    );
\FiveZeroHzCNT_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => data0(18),
      Q => \FiveZeroHzCNT_reg_n_0_[18]\,
      R => \FiveZeroHzCNT[31]_i_1_n_0\
    );
\FiveZeroHzCNT_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => data0(19),
      Q => \FiveZeroHzCNT_reg_n_0_[19]\,
      R => \FiveZeroHzCNT[31]_i_1_n_0\
    );
\FiveZeroHzCNT_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => data0(1),
      Q => \FiveZeroHzCNT_reg_n_0_[1]\,
      R => \FiveZeroHzCNT[31]_i_1_n_0\
    );
\FiveZeroHzCNT_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => data0(20),
      Q => \FiveZeroHzCNT_reg_n_0_[20]\,
      R => \FiveZeroHzCNT[31]_i_1_n_0\
    );
\FiveZeroHzCNT_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => data0(21),
      Q => \FiveZeroHzCNT_reg_n_0_[21]\,
      R => \FiveZeroHzCNT[31]_i_1_n_0\
    );
\FiveZeroHzCNT_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => data0(22),
      Q => \FiveZeroHzCNT_reg_n_0_[22]\,
      R => \FiveZeroHzCNT[31]_i_1_n_0\
    );
\FiveZeroHzCNT_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => data0(23),
      Q => \FiveZeroHzCNT_reg_n_0_[23]\,
      R => \FiveZeroHzCNT[31]_i_1_n_0\
    );
\FiveZeroHzCNT_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => data0(24),
      Q => \FiveZeroHzCNT_reg_n_0_[24]\,
      R => \FiveZeroHzCNT[31]_i_1_n_0\
    );
\FiveZeroHzCNT_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => data0(25),
      Q => \FiveZeroHzCNT_reg_n_0_[25]\,
      R => \FiveZeroHzCNT[31]_i_1_n_0\
    );
\FiveZeroHzCNT_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => data0(26),
      Q => \FiveZeroHzCNT_reg_n_0_[26]\,
      R => \FiveZeroHzCNT[31]_i_1_n_0\
    );
\FiveZeroHzCNT_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => data0(27),
      Q => \FiveZeroHzCNT_reg_n_0_[27]\,
      R => \FiveZeroHzCNT[31]_i_1_n_0\
    );
\FiveZeroHzCNT_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => data0(28),
      Q => \FiveZeroHzCNT_reg_n_0_[28]\,
      R => \FiveZeroHzCNT[31]_i_1_n_0\
    );
\FiveZeroHzCNT_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => data0(29),
      Q => \FiveZeroHzCNT_reg_n_0_[29]\,
      R => \FiveZeroHzCNT[31]_i_1_n_0\
    );
\FiveZeroHzCNT_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => data0(2),
      Q => \FiveZeroHzCNT_reg_n_0_[2]\,
      R => \FiveZeroHzCNT[31]_i_1_n_0\
    );
\FiveZeroHzCNT_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => data0(30),
      Q => \FiveZeroHzCNT_reg_n_0_[30]\,
      R => \FiveZeroHzCNT[31]_i_1_n_0\
    );
\FiveZeroHzCNT_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => data0(31),
      Q => \FiveZeroHzCNT_reg_n_0_[31]\,
      R => \FiveZeroHzCNT[31]_i_1_n_0\
    );
\FiveZeroHzCNT_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => data0(3),
      Q => \FiveZeroHzCNT_reg_n_0_[3]\,
      R => \FiveZeroHzCNT[31]_i_1_n_0\
    );
\FiveZeroHzCNT_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => data0(4),
      Q => \FiveZeroHzCNT_reg_n_0_[4]\,
      R => \FiveZeroHzCNT[31]_i_1_n_0\
    );
\FiveZeroHzCNT_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => data0(5),
      Q => \FiveZeroHzCNT_reg_n_0_[5]\,
      R => \FiveZeroHzCNT[31]_i_1_n_0\
    );
\FiveZeroHzCNT_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => data0(6),
      Q => \FiveZeroHzCNT_reg_n_0_[6]\,
      R => \FiveZeroHzCNT[31]_i_1_n_0\
    );
\FiveZeroHzCNT_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => data0(7),
      Q => \FiveZeroHzCNT_reg_n_0_[7]\,
      R => \FiveZeroHzCNT[31]_i_1_n_0\
    );
\FiveZeroHzCNT_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => data0(8),
      Q => \FiveZeroHzCNT_reg_n_0_[8]\,
      R => \FiveZeroHzCNT[31]_i_1_n_0\
    );
\FiveZeroHzCNT_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => data0(9),
      Q => \FiveZeroHzCNT_reg_n_0_[9]\,
      R => \FiveZeroHzCNT[31]_i_1_n_0\
    );
FiveZeroHzOut_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FiveZeroHzCNT[31]_i_1_n_0\,
      Q => FiveZeroHzOut,
      R => '0'
    );
G_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF6EFFFFFF6E0000"
    )
        port map (
      I0 => sel0(1),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => sel0(3),
      I4 => \^ssd_vec\(7),
      I5 => G_i_2_n_0,
      O => G_i_1_n_0
    );
G_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF6E"
    )
        port map (
      I0 => sel0(6),
      I1 => sel0(5),
      I2 => sel0(4),
      I3 => sel0(7),
      O => G_i_2_n_0
    );
G_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => FiveZeroHzOut,
      CE => '1',
      D => G_i_1_n_0,
      Q => \^ssd_vec\(6),
      R => '0'
    );
\SEG0Val_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => FiveZeroHzOut,
      CE => '1',
      D => SEG0inOne(0),
      Q => sel0(0),
      R => '0'
    );
\SEG0Val_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => FiveZeroHzOut,
      CE => '1',
      D => SEG0inOne(1),
      Q => sel0(1),
      R => '0'
    );
\SEG0Val_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => FiveZeroHzOut,
      CE => '1',
      D => SEG0inOne(2),
      Q => sel0(2),
      R => '0'
    );
\SEG0Val_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => FiveZeroHzOut,
      CE => '1',
      D => SEG0inOne(3),
      Q => sel0(3),
      R => '0'
    );
\SEG0inOne[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \SEG1inOne[0]_i_1_n_0\,
      I1 => \SEG0inOne[3]_i_1_n_0\,
      I2 => ASCII_To_Display(1),
      O => DCIN0(1)
    );
\SEG0inOne[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002DD2"
    )
        port map (
      I0 => \SEG1inOne[0]_i_1_n_0\,
      I1 => ASCII_To_Display(1),
      I2 => \SEG0inOne[2]_i_2_n_0\,
      I3 => ASCII_To_Display(2),
      I4 => \SEG0inOne[3]_i_1_n_0\,
      O => DCIN0(2)
    );
\SEG0inOne[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3B63C6DC2342C49C"
    )
        port map (
      I0 => ASCII_To_Display(3),
      I1 => ASCII_To_Display(6),
      I2 => ASCII_To_Display(5),
      I3 => ASCII_To_Display(7),
      I4 => ASCII_To_Display(4),
      I5 => ASCII_To_Display(2),
      O => \SEG0inOne[2]_i_2_n_0\
    );
\SEG0inOne[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFE000000"
    )
        port map (
      I0 => ASCII_To_Display(4),
      I1 => ASCII_To_Display(3),
      I2 => ASCII_To_Display(2),
      I3 => ASCII_To_Display(5),
      I4 => ASCII_To_Display(6),
      I5 => ASCII_To_Display(7),
      O => \SEG0inOne[3]_i_1_n_0\
    );
\SEG0inOne[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40083A5B3A5B8004"
    )
        port map (
      I0 => \SEG0inOne[3]_i_3_n_0\,
      I1 => ASCII_To_Display(1),
      I2 => \SEG0inOne[2]_i_2_n_0\,
      I3 => ASCII_To_Display(2),
      I4 => \SEG0inOne[3]_i_4_n_0\,
      I5 => ASCII_To_Display(3),
      O => \SEG0inOne[3]_i_2_n_0\
    );
\SEG0inOne[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"56959969"
    )
        port map (
      I0 => ASCII_To_Display(3),
      I1 => ASCII_To_Display(4),
      I2 => ASCII_To_Display(7),
      I3 => ASCII_To_Display(5),
      I4 => ASCII_To_Display(6),
      O => \SEG0inOne[3]_i_3_n_0\
    );
\SEG0inOne[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6B5A294A"
    )
        port map (
      I0 => ASCII_To_Display(7),
      I1 => ASCII_To_Display(4),
      I2 => ASCII_To_Display(5),
      I3 => ASCII_To_Display(6),
      I4 => ASCII_To_Display(3),
      O => \SEG0inOne[3]_i_4_n_0\
    );
\SEG0inOne_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => FiveZeroHzOut,
      CE => '1',
      D => ASCII_To_Display(0),
      Q => SEG0inOne(0),
      S => \SEG0inOne[3]_i_1_n_0\
    );
\SEG0inOne_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => FiveZeroHzOut,
      CE => '1',
      D => DCIN0(1),
      Q => SEG0inOne(1),
      R => '0'
    );
\SEG0inOne_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => FiveZeroHzOut,
      CE => '1',
      D => DCIN0(2),
      Q => SEG0inOne(2),
      R => '0'
    );
\SEG0inOne_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => FiveZeroHzOut,
      CE => '1',
      D => \SEG0inOne[3]_i_2_n_0\,
      Q => SEG0inOne(3),
      S => \SEG0inOne[3]_i_1_n_0\
    );
\SEG1Val_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => FiveZeroHzOut,
      CE => '1',
      D => SEG1inOne(0),
      Q => sel0(4),
      R => '0'
    );
\SEG1Val_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => FiveZeroHzOut,
      CE => '1',
      D => SEG1inOne(1),
      Q => sel0(5),
      R => '0'
    );
\SEG1Val_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => FiveZeroHzOut,
      CE => '1',
      D => SEG1inOne(2),
      Q => sel0(6),
      R => '0'
    );
\SEG1Val_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => FiveZeroHzOut,
      CE => '1',
      D => SEG1inOne(3),
      Q => sel0(7),
      R => '0'
    );
\SEG1inOne[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"79EF086719EF0861"
    )
        port map (
      I0 => \SEG0inOne[3]_i_4_n_0\,
      I1 => ASCII_To_Display(3),
      I2 => ASCII_To_Display(2),
      I3 => \SEG0inOne[3]_i_3_n_0\,
      I4 => \SEG0inOne[2]_i_2_n_0\,
      I5 => ASCII_To_Display(1),
      O => \SEG1inOne[0]_i_1_n_0\
    );
\SEG1inOne[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1101010004041414"
    )
        port map (
      I0 => ASCII_To_Display(7),
      I1 => ASCII_To_Display(6),
      I2 => ASCII_To_Display(5),
      I3 => ASCII_To_Display(2),
      I4 => ASCII_To_Display(3),
      I5 => ASCII_To_Display(4),
      O => DCIN1(1)
    );
\SEG1inOne[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10101404"
    )
        port map (
      I0 => ASCII_To_Display(7),
      I1 => ASCII_To_Display(6),
      I2 => ASCII_To_Display(5),
      I3 => ASCII_To_Display(3),
      I4 => ASCII_To_Display(4),
      O => DCIN1(2)
    );
\SEG1inOne[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => ASCII_To_Display(6),
      I1 => ASCII_To_Display(5),
      I2 => ASCII_To_Display(4),
      O => \SEG1inOne[3]_i_1_n_0\
    );
\SEG1inOne_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => FiveZeroHzOut,
      CE => '1',
      D => \SEG1inOne[0]_i_1_n_0\,
      Q => SEG1inOne(0),
      S => \SEG0inOne[3]_i_1_n_0\
    );
\SEG1inOne_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => FiveZeroHzOut,
      CE => '1',
      D => DCIN1(1),
      Q => SEG1inOne(1),
      R => '0'
    );
\SEG1inOne_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => FiveZeroHzOut,
      CE => '1',
      D => DCIN1(2),
      Q => SEG1inOne(2),
      R => '0'
    );
\SEG1inOne_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => FiveZeroHzOut,
      CE => '1',
      D => \SEG1inOne[3]_i_1_n_0\,
      Q => SEG1inOne(3),
      S => \SEG0inOne[3]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_SSD_Controller_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    ASCII_To_Display : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Commutation_Period : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SSD_VEC : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Zynq_Design_SSD_Controller_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Zynq_Design_SSD_Controller_0_0 : entity is "Zynq_Design_SSD_Controller_0_0,SSD_Controller,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Zynq_Design_SSD_Controller_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Zynq_Design_SSD_Controller_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of Zynq_Design_SSD_Controller_0_0 : entity is "SSD_Controller,Vivado 2019.1";
end Zynq_Design_SSD_Controller_0_0;

architecture STRUCTURE of Zynq_Design_SSD_Controller_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 s_axi_aclk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of s_axi_aclk : signal is "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN Zynq_Design_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 s_axi_aresetn RST";
  attribute x_interface_parameter of s_axi_aresetn : signal is "XIL_INTERFACENAME s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.Zynq_Design_SSD_Controller_0_0_SSD_Controller
     port map (
      ASCII_To_Display(7 downto 0) => ASCII_To_Display(7 downto 0),
      SSD_VEC(7 downto 0) => SSD_VEC(7 downto 0),
      s_axi_aclk => s_axi_aclk
    );
end STRUCTURE;
