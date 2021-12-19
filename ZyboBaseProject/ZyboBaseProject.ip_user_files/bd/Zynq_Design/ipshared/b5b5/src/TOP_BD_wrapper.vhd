--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
--Date        : Tue Jul 14 22:51:44 2020
--Host        : DESKTOP-QSJNSC0 running 64-bit major release  (build 9200)
--Command     : generate_target TOP_BD_wrapper.bd
--Design      : TOP_BD_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TOP_BD_wrapper is
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
end TOP_BD_wrapper;

architecture STRUCTURE of TOP_BD_wrapper is
  component TOP_BD is
  port (
    Reset_0 : in STD_LOGIC;
    CLK100MHz : in STD_LOGIC;
    Tx : out STD_LOGIC;
    Rx : in STD_LOGIC;
    Receive_CLK : in STD_LOGIC;
    Receive_AE : out STD_LOGIC;
    Receive_EM : out STD_LOGIC;
    Receive_OUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Receive_RD_EN : in STD_LOGIC;
    Transmit_CLK : in STD_LOGIC;
    Transmit_WR_EN : in STD_LOGIC;
    Transmit_AF : out STD_LOGIC;
    Transmit_FU : out STD_LOGIC;
    Transmit_IN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    UART_Debug_Enable : in STD_LOGIC
  );
  end component TOP_BD;
begin
TOP_BD_i: component TOP_BD
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
