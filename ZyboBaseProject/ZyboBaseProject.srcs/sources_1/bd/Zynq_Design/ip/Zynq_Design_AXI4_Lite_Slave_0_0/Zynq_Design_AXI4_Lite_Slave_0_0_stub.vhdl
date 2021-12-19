-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Fri Apr 30 17:22:07 2021
-- Host        : DESKTOP-QSJNSC0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               G:/Xilinx/Projects/Desktop/AXI_4_Lite_Slave/AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ip/Zynq_Design_AXI4_Lite_Slave_0_0/Zynq_Design_AXI4_Lite_Slave_0_0_stub.vhdl
-- Design      : Zynq_Design_AXI4_Lite_Slave_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Zynq_Design_AXI4_Lite_Slave_0_0 is
  Port ( 
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresentn : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    lbus_out_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    lbus_out_address : out STD_LOGIC_VECTOR ( 31 downto 0 );
    lbus_out_strobe : out STD_LOGIC;
    lbus_in_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    lbus_in_complete : in STD_LOGIC;
    lbus_in_addr_OOR : in STD_LOGIC
  );

end Zynq_Design_AXI4_Lite_Slave_0_0;

architecture stub of Zynq_Design_AXI4_Lite_Slave_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_aclk,s_axi_aresentn,s_axi_araddr[31:0],s_axi_arvalid,s_axi_awaddr[31:0],s_axi_awvalid,s_axi_bready,s_axi_rready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid,s_axi_arready,s_axi_awready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_wready,lbus_out_data[31:0],lbus_out_address[31:0],lbus_out_strobe,lbus_in_data[31:0],lbus_in_complete,lbus_in_addr_OOR";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "AXI4_Lite_Slave,Vivado 2019.1";
begin
end;
