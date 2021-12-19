-- (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:user:UART_V1_9:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Zynq_Design_UART_V1_9_0_0 IS
  PORT (
    CLK100MHz : IN STD_LOGIC;
    Receive_AE : OUT STD_LOGIC;
    Receive_CLK : IN STD_LOGIC;
    Receive_EM : OUT STD_LOGIC;
    Receive_OUT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    Receive_RD_EN : IN STD_LOGIC;
    Reset_0 : IN STD_LOGIC;
    Rx : IN STD_LOGIC;
    Transmit_AF : OUT STD_LOGIC;
    Transmit_CLK : IN STD_LOGIC;
    Transmit_FU : OUT STD_LOGIC;
    Transmit_IN : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    Transmit_WR_EN : IN STD_LOGIC;
    Tx : OUT STD_LOGIC;
    UART_Debug_Enable : IN STD_LOGIC
  );
END Zynq_Design_UART_V1_9_0_0;

ARCHITECTURE Zynq_Design_UART_V1_9_0_0_arch OF Zynq_Design_UART_V1_9_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF Zynq_Design_UART_V1_9_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT TOP_BD_wrapper IS
    PORT (
      CLK100MHz : IN STD_LOGIC;
      Receive_AE : OUT STD_LOGIC;
      Receive_CLK : IN STD_LOGIC;
      Receive_EM : OUT STD_LOGIC;
      Receive_OUT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      Receive_RD_EN : IN STD_LOGIC;
      Reset_0 : IN STD_LOGIC;
      Rx : IN STD_LOGIC;
      Transmit_AF : OUT STD_LOGIC;
      Transmit_CLK : IN STD_LOGIC;
      Transmit_FU : OUT STD_LOGIC;
      Transmit_IN : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      Transmit_WR_EN : IN STD_LOGIC;
      Tx : OUT STD_LOGIC;
      UART_Debug_Enable : IN STD_LOGIC
    );
  END COMPONENT TOP_BD_wrapper;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF Zynq_Design_UART_V1_9_0_0_arch: ARCHITECTURE IS "package_project";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF Transmit_CLK: SIGNAL IS "XIL_INTERFACENAME Transmit_CLK, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN Zynq_Design_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF Transmit_CLK: SIGNAL IS "xilinx.com:signal:clock:1.0 Transmit_CLK CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF Reset_0: SIGNAL IS "XIL_INTERFACENAME Reset_0, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF Reset_0: SIGNAL IS "xilinx.com:signal:reset:1.0 Reset_0 RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF Receive_CLK: SIGNAL IS "XIL_INTERFACENAME Receive_CLK, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN Zynq_Design_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF Receive_CLK: SIGNAL IS "xilinx.com:signal:clock:1.0 Receive_CLK CLK";
BEGIN
  U0 : TOP_BD_wrapper
    PORT MAP (
      CLK100MHz => CLK100MHz,
      Receive_AE => Receive_AE,
      Receive_CLK => Receive_CLK,
      Receive_EM => Receive_EM,
      Receive_OUT => Receive_OUT,
      Receive_RD_EN => Receive_RD_EN,
      Reset_0 => Reset_0,
      Rx => Rx,
      Transmit_AF => Transmit_AF,
      Transmit_CLK => Transmit_CLK,
      Transmit_FU => Transmit_FU,
      Transmit_IN => Transmit_IN,
      Transmit_WR_EN => Transmit_WR_EN,
      Tx => Tx,
      UART_Debug_Enable => UART_Debug_Enable
    );
END Zynq_Design_UART_V1_9_0_0_arch;
