-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Sat May  1 14:50:08 2021
-- Host        : DESKTOP-QSJNSC0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Zynq_Design_AXI_UART_Control_Ada_0_0_stub.vhdl
-- Design      : Zynq_Design_AXI_UART_Control_Ada_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    CLK100MHz : in STD_LOGIC;
    RESET : in STD_LOGIC;
    Transmit_WE_In : in STD_LOGIC;
    Transmit_WE_Out : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK100MHz,RESET,Transmit_WE_In,Transmit_WE_Out";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "AXI_UART_Control_Adapter,Vivado 2019.1";
begin
end;
