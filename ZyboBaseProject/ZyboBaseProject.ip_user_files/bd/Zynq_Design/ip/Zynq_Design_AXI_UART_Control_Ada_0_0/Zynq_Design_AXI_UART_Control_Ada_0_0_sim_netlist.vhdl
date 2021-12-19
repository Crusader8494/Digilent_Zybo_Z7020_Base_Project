-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Sat May  1 14:50:08 2021
-- Host        : DESKTOP-QSJNSC0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               g:/Xilinx/Projects/Desktop/AXI_4_Lite_Slave/AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ip/Zynq_Design_AXI_UART_Control_Ada_0_0/Zynq_Design_AXI_UART_Control_Ada_0_0_sim_netlist.vhdl
-- Design      : Zynq_Design_AXI_UART_Control_Ada_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_AXI_UART_Control_Ada_0_0_AXI_UART_Control_Adapter is
  port (
    Transmit_WE_Out : out STD_LOGIC;
    Transmit_WE_In : in STD_LOGIC;
    CLK100MHz : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Zynq_Design_AXI_UART_Control_Ada_0_0_AXI_UART_Control_Adapter : entity is "AXI_UART_Control_Adapter";
end Zynq_Design_AXI_UART_Control_Ada_0_0_AXI_UART_Control_Adapter;

architecture STRUCTURE of Zynq_Design_AXI_UART_Control_Ada_0_0_AXI_UART_Control_Adapter is
  signal \^transmit_we_out\ : STD_LOGIC;
  signal Transmit_WE_Out0 : STD_LOGIC;
  signal Transmit_WE_Out_i_1_n_0 : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of FSM_sequential_state_reg : label is "iSTATE:0,iSTATE0:1";
begin
  Transmit_WE_Out <= \^transmit_we_out\;
FSM_sequential_state_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK100MHz,
      CE => '1',
      D => Transmit_WE_In,
      Q => Transmit_WE_Out0,
      R => '0'
    );
Transmit_WE_Out_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \^transmit_we_out\,
      I1 => Transmit_WE_In,
      I2 => Transmit_WE_Out0,
      O => Transmit_WE_Out_i_1_n_0
    );
Transmit_WE_Out_reg: unisim.vcomponents.FDRE
     port map (
      C => CLK100MHz,
      CE => '1',
      D => Transmit_WE_Out_i_1_n_0,
      Q => \^transmit_we_out\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_AXI_UART_Control_Ada_0_0 is
  port (
    CLK100MHz : in STD_LOGIC;
    RESET : in STD_LOGIC;
    Transmit_WE_In : in STD_LOGIC;
    Transmit_WE_Out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Zynq_Design_AXI_UART_Control_Ada_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Zynq_Design_AXI_UART_Control_Ada_0_0 : entity is "Zynq_Design_AXI_UART_Control_Ada_0_0,AXI_UART_Control_Adapter,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Zynq_Design_AXI_UART_Control_Ada_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Zynq_Design_AXI_UART_Control_Ada_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of Zynq_Design_AXI_UART_Control_Ada_0_0 : entity is "AXI_UART_Control_Adapter,Vivado 2019.1";
end Zynq_Design_AXI_UART_Control_Ada_0_0;

architecture STRUCTURE of Zynq_Design_AXI_UART_Control_Ada_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of RESET : signal is "xilinx.com:signal:reset:1.0 RESET RST";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of RESET : signal is "XIL_INTERFACENAME RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.Zynq_Design_AXI_UART_Control_Ada_0_0_AXI_UART_Control_Adapter
     port map (
      CLK100MHz => CLK100MHz,
      Transmit_WE_In => Transmit_WE_In,
      Transmit_WE_Out => Transmit_WE_Out
    );
end STRUCTURE;
