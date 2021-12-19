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

-- IP VLNV: xilinx.com:module_ref:Local_Bus_Register_Block:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Zynq_Design_Local_Bus_Register_B_0_0 IS
  PORT (
    s_axi_aclk : IN STD_LOGIC;
    s_axi_aresentn : IN STD_LOGIC;
    lbus_in_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    lbus_in_address : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    lbus_in_write_strobe : IN STD_LOGIC;
    lbus_out_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    lbus_out_complete : OUT STD_LOGIC;
    lbus_out_addr_OOR : OUT STD_LOGIC;
    RW_reg_1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    RW_reg_2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    RW_reg_3 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    RW_reg_4 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    RW_reg_5 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    RW_reg_6 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    RW_reg_7 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    RW_reg_8 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    RW_reg_9 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    RW_reg_10 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    RW_reg_11 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    RW_reg_12 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    RW_reg_13 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    RW_reg_14 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    RW_reg_15 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    RW_reg_16 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    RO_reg_1 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    RO_reg_2 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    RO_reg_3 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    RO_reg_4 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    RO_reg_5 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    RO_reg_6 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    RO_reg_7 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    RO_reg_8 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    RO_reg_9 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    RO_reg_10 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    RO_reg_11 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    RO_reg_12 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    RO_reg_13 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    RO_reg_14 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    RO_reg_15 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    RO_reg_16 : IN STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END Zynq_Design_Local_Bus_Register_B_0_0;

ARCHITECTURE Zynq_Design_Local_Bus_Register_B_0_0_arch OF Zynq_Design_Local_Bus_Register_B_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF Zynq_Design_Local_Bus_Register_B_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT Local_Bus_Register_Block IS
    GENERIC (
      g_NumOfRWReg : INTEGER;
      g_NumOfROReg : INTEGER
    );
    PORT (
      s_axi_aclk : IN STD_LOGIC;
      s_axi_aresentn : IN STD_LOGIC;
      lbus_in_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      lbus_in_address : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      lbus_in_write_strobe : IN STD_LOGIC;
      lbus_out_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      lbus_out_complete : OUT STD_LOGIC;
      lbus_out_addr_OOR : OUT STD_LOGIC;
      RW_reg_1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      RW_reg_2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      RW_reg_3 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      RW_reg_4 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      RW_reg_5 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      RW_reg_6 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      RW_reg_7 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      RW_reg_8 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      RW_reg_9 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      RW_reg_10 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      RW_reg_11 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      RW_reg_12 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      RW_reg_13 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      RW_reg_14 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      RW_reg_15 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      RW_reg_16 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      RO_reg_1 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      RO_reg_2 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      RO_reg_3 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      RO_reg_4 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      RO_reg_5 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      RO_reg_6 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      RO_reg_7 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      RO_reg_8 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      RO_reg_9 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      RO_reg_10 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      RO_reg_11 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      RO_reg_12 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      RO_reg_13 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      RO_reg_14 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      RO_reg_15 : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      RO_reg_16 : IN STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
  END COMPONENT Local_Bus_Register_Block;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF Zynq_Design_Local_Bus_Register_B_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_aclk: SIGNAL IS "XIL_INTERFACENAME s_axi_aclk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN Zynq_Design_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 s_axi_aclk CLK";
BEGIN
  U0 : Local_Bus_Register_Block
    GENERIC MAP (
      g_NumOfRWReg => 16,
      g_NumOfROReg => 4
    )
    PORT MAP (
      s_axi_aclk => s_axi_aclk,
      s_axi_aresentn => s_axi_aresentn,
      lbus_in_data => lbus_in_data,
      lbus_in_address => lbus_in_address,
      lbus_in_write_strobe => lbus_in_write_strobe,
      lbus_out_data => lbus_out_data,
      lbus_out_complete => lbus_out_complete,
      lbus_out_addr_OOR => lbus_out_addr_OOR,
      RW_reg_1 => RW_reg_1,
      RW_reg_2 => RW_reg_2,
      RW_reg_3 => RW_reg_3,
      RW_reg_4 => RW_reg_4,
      RW_reg_5 => RW_reg_5,
      RW_reg_6 => RW_reg_6,
      RW_reg_7 => RW_reg_7,
      RW_reg_8 => RW_reg_8,
      RW_reg_9 => RW_reg_9,
      RW_reg_10 => RW_reg_10,
      RW_reg_11 => RW_reg_11,
      RW_reg_12 => RW_reg_12,
      RW_reg_13 => RW_reg_13,
      RW_reg_14 => RW_reg_14,
      RW_reg_15 => RW_reg_15,
      RW_reg_16 => RW_reg_16,
      RO_reg_1 => RO_reg_1,
      RO_reg_2 => RO_reg_2,
      RO_reg_3 => RO_reg_3,
      RO_reg_4 => RO_reg_4,
      RO_reg_5 => RO_reg_5,
      RO_reg_6 => RO_reg_6,
      RO_reg_7 => RO_reg_7,
      RO_reg_8 => RO_reg_8,
      RO_reg_9 => RO_reg_9,
      RO_reg_10 => RO_reg_10,
      RO_reg_11 => RO_reg_11,
      RO_reg_12 => RO_reg_12,
      RO_reg_13 => RO_reg_13,
      RO_reg_14 => RO_reg_14,
      RO_reg_15 => RO_reg_15,
      RO_reg_16 => RO_reg_16
    );
END Zynq_Design_Local_Bus_Register_B_0_0_arch;
