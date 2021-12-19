-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Sat May  1 14:50:08 2021
-- Host        : DESKTOP-QSJNSC0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               g:/Xilinx/Projects/Desktop/AXI_4_Lite_Slave/AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ip/Zynq_Design_AXI_UART_Control_Ada_0_0/Zynq_Design_AXI_UART_Control_Ada_0_0_stub.vhdl
-- Design      : Zynq_Design_AXI_UART_Control_Ada_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Zynq_Design_AXI_UART_Control_Ada_0_0 is
  Port ( 
    CLK100MHz : in STD_LOGIC;
    RESET : in STD_LOGIC;
    Transmit_WE_In : in STD_LOGIC;
    Transmit_WE_Out : out STD_LOGIC
  );

end Zynq_Design_AXI_UART_Control_Ada_0_0;

architecture stub of Zynq_Design_AXI_UART_Control_Ada_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK100MHz,RESET,Transmit_WE_In,Transmit_WE_Out";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "AXI_UART_Control_Adapter,Vivado 2019.1";
begin
end;
