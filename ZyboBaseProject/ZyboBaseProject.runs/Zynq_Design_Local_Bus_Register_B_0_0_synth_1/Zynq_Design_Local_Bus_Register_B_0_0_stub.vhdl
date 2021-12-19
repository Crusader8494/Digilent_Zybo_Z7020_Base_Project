-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Sat May 22 22:01:09 2021
-- Host        : DESKTOP-QSJNSC0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Zynq_Design_Local_Bus_Register_B_0_0_stub.vhdl
-- Design      : Zynq_Design_Local_Bus_Register_B_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresentn : in STD_LOGIC;
    lbus_in_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    lbus_in_address : in STD_LOGIC_VECTOR ( 31 downto 0 );
    lbus_in_write_strobe : in STD_LOGIC;
    lbus_out_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    lbus_out_complete : out STD_LOGIC;
    lbus_out_addr_OOR : out STD_LOGIC;
    RW_reg_1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    RW_reg_2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    RW_reg_3 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    RW_reg_4 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    RW_reg_5 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    RW_reg_6 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    RW_reg_7 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    RW_reg_8 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    RW_reg_9 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    RW_reg_10 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    RW_reg_11 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    RW_reg_12 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    RW_reg_13 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    RW_reg_14 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    RW_reg_15 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    RW_reg_16 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    RW_reg_17 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    RW_reg_18 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    RW_reg_19 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    RW_reg_20 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    RW_reg_21 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    RW_reg_22 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    RW_reg_23 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    RW_reg_24 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    RW_reg_25 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    RW_reg_26 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    RW_reg_27 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    RW_reg_28 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    RW_reg_29 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    RW_reg_30 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    RW_reg_31 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    RW_reg_32 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    RO_reg_1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RO_reg_2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RO_reg_3 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RO_reg_4 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RO_reg_5 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RO_reg_6 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RO_reg_7 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RO_reg_8 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RO_reg_9 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RO_reg_10 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RO_reg_11 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RO_reg_12 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RO_reg_13 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RO_reg_14 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RO_reg_15 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RO_reg_16 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RO_reg_17 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RO_reg_18 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RO_reg_19 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RO_reg_20 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RO_reg_21 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RO_reg_22 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RO_reg_23 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RO_reg_24 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RO_reg_25 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RO_reg_26 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RO_reg_27 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RO_reg_28 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RO_reg_29 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RO_reg_30 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RO_reg_31 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    RO_reg_32 : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_aclk,s_axi_aresentn,lbus_in_data[31:0],lbus_in_address[31:0],lbus_in_write_strobe,lbus_out_data[31:0],lbus_out_complete,lbus_out_addr_OOR,RW_reg_1[31:0],RW_reg_2[31:0],RW_reg_3[31:0],RW_reg_4[31:0],RW_reg_5[31:0],RW_reg_6[31:0],RW_reg_7[31:0],RW_reg_8[31:0],RW_reg_9[31:0],RW_reg_10[31:0],RW_reg_11[31:0],RW_reg_12[31:0],RW_reg_13[31:0],RW_reg_14[31:0],RW_reg_15[31:0],RW_reg_16[31:0],RW_reg_17[31:0],RW_reg_18[31:0],RW_reg_19[31:0],RW_reg_20[31:0],RW_reg_21[31:0],RW_reg_22[31:0],RW_reg_23[31:0],RW_reg_24[31:0],RW_reg_25[31:0],RW_reg_26[31:0],RW_reg_27[31:0],RW_reg_28[31:0],RW_reg_29[31:0],RW_reg_30[31:0],RW_reg_31[31:0],RW_reg_32[31:0],RO_reg_1[31:0],RO_reg_2[31:0],RO_reg_3[31:0],RO_reg_4[31:0],RO_reg_5[31:0],RO_reg_6[31:0],RO_reg_7[31:0],RO_reg_8[31:0],RO_reg_9[31:0],RO_reg_10[31:0],RO_reg_11[31:0],RO_reg_12[31:0],RO_reg_13[31:0],RO_reg_14[31:0],RO_reg_15[31:0],RO_reg_16[31:0],RO_reg_17[31:0],RO_reg_18[31:0],RO_reg_19[31:0],RO_reg_20[31:0],RO_reg_21[31:0],RO_reg_22[31:0],RO_reg_23[31:0],RO_reg_24[31:0],RO_reg_25[31:0],RO_reg_26[31:0],RO_reg_27[31:0],RO_reg_28[31:0],RO_reg_29[31:0],RO_reg_30[31:0],RO_reg_31[31:0],RO_reg_32[31:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "Local_Bus_Register_Block,Vivado 2019.1";
begin
end;
