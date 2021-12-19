-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Fri Apr 30 22:21:33 2021
-- Host        : DESKTOP-QSJNSC0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               g:/Xilinx/Projects/Desktop/AXI_4_Lite_Slave/AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ip/Zynq_Design_UART_V1_9_0_0/Zynq_Design_UART_V1_9_0_0_stub.vhdl
-- Design      : Zynq_Design_UART_V1_9_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Zynq_Design_UART_V1_9_0_0 is
  Port ( 
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

end Zynq_Design_UART_V1_9_0_0;

architecture stub of Zynq_Design_UART_V1_9_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK100MHz,Receive_AE,Receive_CLK,Receive_EM,Receive_OUT[7:0],Receive_RD_EN,Reset_0,Rx,Transmit_AF,Transmit_CLK,Transmit_FU,Transmit_IN[7:0],Transmit_WR_EN,Tx,UART_Debug_Enable";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "TOP_BD_wrapper,Vivado 2019.1";
begin
end;
