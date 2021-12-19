--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
--Date        : Sat May 15 15:53:43 2021
--Host        : DESKTOP-QSJNSC0 running 64-bit major release  (build 9200)
--Command     : generate_target Zynq_Design.bd
--Design      : Zynq_Design
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity LED_imp_1HIOZQI is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    LED : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end LED_imp_1HIOZQI;

architecture STRUCTURE of LED_imp_1HIOZQI is
  component Zynq_Design_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component Zynq_Design_xlslice_0_0;
  signal Local_Bus_Register_B_0_RW_reg_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  LED(3 downto 0) <= xlslice_0_Dout(3 downto 0);
  Local_Bus_Register_B_0_RW_reg_1(31 downto 0) <= Din(31 downto 0);
xlslice_0: component Zynq_Design_xlslice_0_0
     port map (
      Din(31 downto 0) => Local_Bus_Register_B_0_RW_reg_1(31 downto 0),
      Dout(3 downto 0) => xlslice_0_Dout(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MEMS_Microphone_imp_5MCUJ0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Din1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    FCLK_CLK0 : in STD_LOGIC;
    Microphone_CS : out STD_LOGIC;
    Microphone_MISO : in STD_LOGIC;
    Microphone_SCK : out STD_LOGIC;
    PERIOD : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 14 downto 0 );
    s_axi_aresentn : in STD_LOGIC
  );
end MEMS_Microphone_imp_5MCUJ0;

architecture STRUCTURE of MEMS_Microphone_imp_5MCUJ0 is
  component Zynq_Design_fifo_generator_0_0 is
  port (
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 11 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 11 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC
  );
  end component Zynq_Design_fifo_generator_0_0;
  component Zynq_Design_xlslice_0_5 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component Zynq_Design_xlslice_0_5;
  component Zynq_Design_xlconcat_0_1 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  end component Zynq_Design_xlconcat_0_1;
  component Zynq_Design_xlslice_0_6 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component Zynq_Design_xlslice_0_6;
  component Zynq_Design_xlslice_1_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component Zynq_Design_xlslice_1_1;
  component Zynq_Design_FIFO_Interface_0_0 is
  port (
    CLK : in STD_LOGIC;
    RESET : in STD_LOGIC;
    SAMPLE : in STD_LOGIC_VECTOR ( 11 downto 0 );
    SAMPLE_VALID : in STD_LOGIC;
    FIFO_FU : in STD_LOGIC;
    SAMPLE_OUT : out STD_LOGIC_VECTOR ( 11 downto 0 );
    SAMPLE_WE : out STD_LOGIC
  );
  end component Zynq_Design_FIFO_Interface_0_0;
  component Zynq_Design_Microphone_Controlle_0_0 is
  port (
    CLK : in STD_LOGIC;
    RESET : in STD_LOGIC;
    ENABLE : in STD_LOGIC;
    PERIOD : in STD_LOGIC_VECTOR ( 31 downto 0 );
    FIFO_FULL : in STD_LOGIC;
    START_SM : out STD_LOGIC
  );
  end component Zynq_Design_Microphone_Controlle_0_0;
  component Zynq_Design_Microphone_Driver_0_0 is
  port (
    CLK : in STD_LOGIC;
    RESET : in STD_LOGIC;
    ENABLE : in STD_LOGIC;
    MISO : in STD_LOGIC;
    CS : out STD_LOGIC;
    SCK : out STD_LOGIC;
    SAMPLE_OUT : out STD_LOGIC_VECTOR ( 11 downto 0 );
    SAMPLE_VALID : out STD_LOGIC
  );
  end component Zynq_Design_Microphone_Driver_0_0;
  signal Din1_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Din_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal FCLK_CLK0_1 : STD_LOGIC;
  signal FIFO_Interface_0_SAMPLE_OUT : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal FIFO_Interface_0_SAMPLE_WE : STD_LOGIC;
  signal Microphone_Controlle_0_START_SM : STD_LOGIC;
  signal Microphone_Driver_0_CS : STD_LOGIC;
  signal Microphone_Driver_0_SAMPLE_OUT : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal Microphone_Driver_0_SAMPLE_VALID : STD_LOGIC;
  signal Microphone_Driver_0_SCK : STD_LOGIC;
  signal Microphone_MISO_1 : STD_LOGIC;
  signal RATE_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal fifo_generator_0_dout : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal fifo_generator_0_empty : STD_LOGIC;
  signal fifo_generator_0_full : STD_LOGIC;
  signal s_axi_aresentn_1 : STD_LOGIC;
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_1_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_2_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_fifo_generator_0_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_generator_0_wr_rst_busy_UNCONNECTED : STD_LOGIC;
begin
  Din1_1(31 downto 0) <= Din1(31 downto 0);
  Din_1(31 downto 0) <= Din(31 downto 0);
  FCLK_CLK0_1 <= FCLK_CLK0;
  Microphone_CS <= Microphone_Driver_0_CS;
  Microphone_MISO_1 <= Microphone_MISO;
  Microphone_SCK <= Microphone_Driver_0_SCK;
  RATE_1(31 downto 0) <= PERIOD(31 downto 0);
  dout(14 downto 0) <= xlconcat_0_dout(14 downto 0);
  s_axi_aresentn_1 <= s_axi_aresentn;
FIFO_Interface_0: component Zynq_Design_FIFO_Interface_0_0
     port map (
      CLK => FCLK_CLK0_1,
      FIFO_FU => fifo_generator_0_full,
      RESET => s_axi_aresentn_1,
      SAMPLE(11 downto 0) => Microphone_Driver_0_SAMPLE_OUT(11 downto 0),
      SAMPLE_OUT(11 downto 0) => FIFO_Interface_0_SAMPLE_OUT(11 downto 0),
      SAMPLE_VALID => Microphone_Driver_0_SAMPLE_VALID,
      SAMPLE_WE => FIFO_Interface_0_SAMPLE_WE
    );
Microphone_Controlle_0: component Zynq_Design_Microphone_Controlle_0_0
     port map (
      CLK => FCLK_CLK0_1,
      ENABLE => xlslice_1_Dout(0),
      FIFO_FULL => fifo_generator_0_full,
      PERIOD(31 downto 0) => RATE_1(31 downto 0),
      RESET => s_axi_aresentn_1,
      START_SM => Microphone_Controlle_0_START_SM
    );
Microphone_Driver_0: component Zynq_Design_Microphone_Driver_0_0
     port map (
      CLK => FCLK_CLK0_1,
      CS => Microphone_Driver_0_CS,
      ENABLE => Microphone_Controlle_0_START_SM,
      MISO => Microphone_MISO_1,
      RESET => s_axi_aresentn_1,
      SAMPLE_OUT(11 downto 0) => Microphone_Driver_0_SAMPLE_OUT(11 downto 0),
      SAMPLE_VALID => Microphone_Driver_0_SAMPLE_VALID,
      SCK => Microphone_Driver_0_SCK
    );
fifo_generator_0: component Zynq_Design_fifo_generator_0_0
     port map (
      din(11 downto 0) => FIFO_Interface_0_SAMPLE_OUT(11 downto 0),
      dout(11 downto 0) => fifo_generator_0_dout(11 downto 0),
      empty => fifo_generator_0_empty,
      full => fifo_generator_0_full,
      rd_clk => FCLK_CLK0_1,
      rd_en => xlslice_0_Dout(0),
      rd_rst_busy => NLW_fifo_generator_0_rd_rst_busy_UNCONNECTED,
      rst => xlslice_2_Dout(0),
      wr_clk => FCLK_CLK0_1,
      wr_en => FIFO_Interface_0_SAMPLE_WE,
      wr_rst_busy => NLW_fifo_generator_0_wr_rst_busy_UNCONNECTED
    );
xlconcat_0: component Zynq_Design_xlconcat_0_1
     port map (
      In0(11 downto 0) => fifo_generator_0_dout(11 downto 0),
      In1(0) => fifo_generator_0_full,
      In2(0) => fifo_generator_0_empty,
      In3(0) => '0',
      dout(14 downto 0) => xlconcat_0_dout(14 downto 0)
    );
xlslice_0: component Zynq_Design_xlslice_0_5
     port map (
      Din(31 downto 0) => Din1_1(31 downto 0),
      Dout(0) => xlslice_0_Dout(0)
    );
xlslice_1: component Zynq_Design_xlslice_0_6
     port map (
      Din(31 downto 0) => Din_1(31 downto 0),
      Dout(0) => xlslice_1_Dout(0)
    );
xlslice_2: component Zynq_Design_xlslice_1_1
     port map (
      Din(31 downto 0) => Din_1(31 downto 0),
      Dout(0) => xlslice_2_Dout(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PS_imp_1JHYKHF is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FCLK_CLK0 : out STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    M_AXI_GP0_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_arid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_arready : in STD_LOGIC;
    M_AXI_GP0_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_arvalid : out STD_LOGIC;
    M_AXI_GP0_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_awid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_awready : in STD_LOGIC;
    M_AXI_GP0_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_awvalid : out STD_LOGIC;
    M_AXI_GP0_bid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_bready : out STD_LOGIC;
    M_AXI_GP0_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_bvalid : in STD_LOGIC;
    M_AXI_GP0_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_rid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_rlast : in STD_LOGIC;
    M_AXI_GP0_rready : out STD_LOGIC;
    M_AXI_GP0_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_rvalid : in STD_LOGIC;
    M_AXI_GP0_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_wid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_wlast : out STD_LOGIC;
    M_AXI_GP0_wready : in STD_LOGIC;
    M_AXI_GP0_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_wvalid : out STD_LOGIC;
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    reset_rtl : in STD_LOGIC
  );
end PS_imp_1JHYKHF;

architecture STRUCTURE of PS_imp_1JHYKHF is
  component Zynq_Design_rst_ps7_0_50M_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component Zynq_Design_rst_ps7_0_50M_0;
  component Zynq_Design_processing_system7_0_0 is
  port (
    USB0_PORT_INDCTL : out STD_LOGIC_VECTOR ( 1 downto 0 );
    USB0_VBUS_PWRSELECT : out STD_LOGIC;
    USB0_VBUS_PWRFAULT : in STD_LOGIC;
    M_AXI_GP0_ARVALID : out STD_LOGIC;
    M_AXI_GP0_AWVALID : out STD_LOGIC;
    M_AXI_GP0_BREADY : out STD_LOGIC;
    M_AXI_GP0_RREADY : out STD_LOGIC;
    M_AXI_GP0_WLAST : out STD_LOGIC;
    M_AXI_GP0_WVALID : out STD_LOGIC;
    M_AXI_GP0_ARID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_AWID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_WID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ACLK : in STD_LOGIC;
    M_AXI_GP0_ARREADY : in STD_LOGIC;
    M_AXI_GP0_AWREADY : in STD_LOGIC;
    M_AXI_GP0_BVALID : in STD_LOGIC;
    M_AXI_GP0_RLAST : in STD_LOGIC;
    M_AXI_GP0_RVALID : in STD_LOGIC;
    M_AXI_GP0_WREADY : in STD_LOGIC;
    M_AXI_GP0_BID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_RID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    FCLK_CLK0 : out STD_LOGIC;
    FCLK_RESET0_N : out STD_LOGIC;
    MIO : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    DDR_CAS_n : inout STD_LOGIC;
    DDR_CKE : inout STD_LOGIC;
    DDR_Clk_n : inout STD_LOGIC;
    DDR_Clk : inout STD_LOGIC;
    DDR_CS_n : inout STD_LOGIC;
    DDR_DRSTB : inout STD_LOGIC;
    DDR_ODT : inout STD_LOGIC;
    DDR_RAS_n : inout STD_LOGIC;
    DDR_WEB : inout STD_LOGIC;
    DDR_BankAddr : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_Addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_VRN : inout STD_LOGIC;
    DDR_VRP : inout STD_LOGIC;
    DDR_DM : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQ : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_DQS_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQS : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    PS_SRSTB : inout STD_LOGIC;
    PS_CLK : inout STD_LOGIC;
    PS_PORB : inout STD_LOGIC
  );
  end component Zynq_Design_processing_system7_0_0;
  signal Conn1_ADDR : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal Conn1_BA : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn1_CAS_N : STD_LOGIC;
  signal Conn1_CKE : STD_LOGIC;
  signal Conn1_CK_N : STD_LOGIC;
  signal Conn1_CK_P : STD_LOGIC;
  signal Conn1_CS_N : STD_LOGIC;
  signal Conn1_DM : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_DQ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_DQS_N : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_DQS_P : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_ODT : STD_LOGIC;
  signal Conn1_RAS_N : STD_LOGIC;
  signal Conn1_RESET_N : STD_LOGIC;
  signal Conn1_WE_N : STD_LOGIC;
  signal Conn2_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn2_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn2_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal Conn2_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn2_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn2_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn2_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn2_ARREADY : STD_LOGIC;
  signal Conn2_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn2_ARVALID : STD_LOGIC;
  signal Conn2_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn2_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn2_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal Conn2_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn2_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn2_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn2_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn2_AWREADY : STD_LOGIC;
  signal Conn2_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn2_AWVALID : STD_LOGIC;
  signal Conn2_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal Conn2_BREADY : STD_LOGIC;
  signal Conn2_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn2_BVALID : STD_LOGIC;
  signal Conn2_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal Conn2_RLAST : STD_LOGIC;
  signal Conn2_RREADY : STD_LOGIC;
  signal Conn2_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn2_RVALID : STD_LOGIC;
  signal Conn2_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn2_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal Conn2_WLAST : STD_LOGIC;
  signal Conn2_WREADY : STD_LOGIC;
  signal Conn2_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn2_WVALID : STD_LOGIC;
  signal Conn3_DDR_VRN : STD_LOGIC;
  signal Conn3_DDR_VRP : STD_LOGIC;
  signal Conn3_MIO : STD_LOGIC_VECTOR ( 53 downto 0 );
  signal Conn3_PS_CLK : STD_LOGIC;
  signal Conn3_PS_PORB : STD_LOGIC;
  signal Conn3_PS_SRSTB : STD_LOGIC;
  signal processing_system7_0_FCLK_RESET0_N : STD_LOGIC;
  signal reset_rtl_1 : STD_LOGIC;
  signal rst_ps7_0_50M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal slowest_sync_clk_1 : STD_LOGIC;
  signal NLW_processing_system7_0_USB0_VBUS_PWRSELECT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_USB0_PORT_INDCTL_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rst_ps7_0_50M_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_ps7_0_50M_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_ps7_0_50M_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_ps7_0_50M_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  Conn2_ARREADY <= M_AXI_GP0_arready;
  Conn2_AWREADY <= M_AXI_GP0_awready;
  Conn2_BID(11 downto 0) <= M_AXI_GP0_bid(11 downto 0);
  Conn2_BRESP(1 downto 0) <= M_AXI_GP0_bresp(1 downto 0);
  Conn2_BVALID <= M_AXI_GP0_bvalid;
  Conn2_RDATA(31 downto 0) <= M_AXI_GP0_rdata(31 downto 0);
  Conn2_RID(11 downto 0) <= M_AXI_GP0_rid(11 downto 0);
  Conn2_RLAST <= M_AXI_GP0_rlast;
  Conn2_RRESP(1 downto 0) <= M_AXI_GP0_rresp(1 downto 0);
  Conn2_RVALID <= M_AXI_GP0_rvalid;
  Conn2_WREADY <= M_AXI_GP0_wready;
  FCLK_CLK0 <= slowest_sync_clk_1;
  M_AXI_GP0_araddr(31 downto 0) <= Conn2_ARADDR(31 downto 0);
  M_AXI_GP0_arburst(1 downto 0) <= Conn2_ARBURST(1 downto 0);
  M_AXI_GP0_arcache(3 downto 0) <= Conn2_ARCACHE(3 downto 0);
  M_AXI_GP0_arid(11 downto 0) <= Conn2_ARID(11 downto 0);
  M_AXI_GP0_arlen(3 downto 0) <= Conn2_ARLEN(3 downto 0);
  M_AXI_GP0_arlock(1 downto 0) <= Conn2_ARLOCK(1 downto 0);
  M_AXI_GP0_arprot(2 downto 0) <= Conn2_ARPROT(2 downto 0);
  M_AXI_GP0_arqos(3 downto 0) <= Conn2_ARQOS(3 downto 0);
  M_AXI_GP0_arsize(2 downto 0) <= Conn2_ARSIZE(2 downto 0);
  M_AXI_GP0_arvalid <= Conn2_ARVALID;
  M_AXI_GP0_awaddr(31 downto 0) <= Conn2_AWADDR(31 downto 0);
  M_AXI_GP0_awburst(1 downto 0) <= Conn2_AWBURST(1 downto 0);
  M_AXI_GP0_awcache(3 downto 0) <= Conn2_AWCACHE(3 downto 0);
  M_AXI_GP0_awid(11 downto 0) <= Conn2_AWID(11 downto 0);
  M_AXI_GP0_awlen(3 downto 0) <= Conn2_AWLEN(3 downto 0);
  M_AXI_GP0_awlock(1 downto 0) <= Conn2_AWLOCK(1 downto 0);
  M_AXI_GP0_awprot(2 downto 0) <= Conn2_AWPROT(2 downto 0);
  M_AXI_GP0_awqos(3 downto 0) <= Conn2_AWQOS(3 downto 0);
  M_AXI_GP0_awsize(2 downto 0) <= Conn2_AWSIZE(2 downto 0);
  M_AXI_GP0_awvalid <= Conn2_AWVALID;
  M_AXI_GP0_bready <= Conn2_BREADY;
  M_AXI_GP0_rready <= Conn2_RREADY;
  M_AXI_GP0_wdata(31 downto 0) <= Conn2_WDATA(31 downto 0);
  M_AXI_GP0_wid(11 downto 0) <= Conn2_WID(11 downto 0);
  M_AXI_GP0_wlast <= Conn2_WLAST;
  M_AXI_GP0_wstrb(3 downto 0) <= Conn2_WSTRB(3 downto 0);
  M_AXI_GP0_wvalid <= Conn2_WVALID;
  peripheral_aresetn(0) <= rst_ps7_0_50M_peripheral_aresetn(0);
  reset_rtl_1 <= reset_rtl;
processing_system7_0: component Zynq_Design_processing_system7_0_0
     port map (
      DDR_Addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_BankAddr(2 downto 0) => DDR_ba(2 downto 0),
      DDR_CAS_n => DDR_cas_n,
      DDR_CKE => DDR_cke,
      DDR_CS_n => DDR_cs_n,
      DDR_Clk => DDR_ck_p,
      DDR_Clk_n => DDR_ck_n,
      DDR_DM(3 downto 0) => DDR_dm(3 downto 0),
      DDR_DQ(31 downto 0) => DDR_dq(31 downto 0),
      DDR_DQS(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_DQS_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_DRSTB => DDR_reset_n,
      DDR_ODT => DDR_odt,
      DDR_RAS_n => DDR_ras_n,
      DDR_VRN => FIXED_IO_ddr_vrn,
      DDR_VRP => FIXED_IO_ddr_vrp,
      DDR_WEB => DDR_we_n,
      FCLK_CLK0 => slowest_sync_clk_1,
      FCLK_RESET0_N => processing_system7_0_FCLK_RESET0_N,
      MIO(53 downto 0) => FIXED_IO_mio(53 downto 0),
      M_AXI_GP0_ACLK => slowest_sync_clk_1,
      M_AXI_GP0_ARADDR(31 downto 0) => Conn2_ARADDR(31 downto 0),
      M_AXI_GP0_ARBURST(1 downto 0) => Conn2_ARBURST(1 downto 0),
      M_AXI_GP0_ARCACHE(3 downto 0) => Conn2_ARCACHE(3 downto 0),
      M_AXI_GP0_ARID(11 downto 0) => Conn2_ARID(11 downto 0),
      M_AXI_GP0_ARLEN(3 downto 0) => Conn2_ARLEN(3 downto 0),
      M_AXI_GP0_ARLOCK(1 downto 0) => Conn2_ARLOCK(1 downto 0),
      M_AXI_GP0_ARPROT(2 downto 0) => Conn2_ARPROT(2 downto 0),
      M_AXI_GP0_ARQOS(3 downto 0) => Conn2_ARQOS(3 downto 0),
      M_AXI_GP0_ARREADY => Conn2_ARREADY,
      M_AXI_GP0_ARSIZE(2 downto 0) => Conn2_ARSIZE(2 downto 0),
      M_AXI_GP0_ARVALID => Conn2_ARVALID,
      M_AXI_GP0_AWADDR(31 downto 0) => Conn2_AWADDR(31 downto 0),
      M_AXI_GP0_AWBURST(1 downto 0) => Conn2_AWBURST(1 downto 0),
      M_AXI_GP0_AWCACHE(3 downto 0) => Conn2_AWCACHE(3 downto 0),
      M_AXI_GP0_AWID(11 downto 0) => Conn2_AWID(11 downto 0),
      M_AXI_GP0_AWLEN(3 downto 0) => Conn2_AWLEN(3 downto 0),
      M_AXI_GP0_AWLOCK(1 downto 0) => Conn2_AWLOCK(1 downto 0),
      M_AXI_GP0_AWPROT(2 downto 0) => Conn2_AWPROT(2 downto 0),
      M_AXI_GP0_AWQOS(3 downto 0) => Conn2_AWQOS(3 downto 0),
      M_AXI_GP0_AWREADY => Conn2_AWREADY,
      M_AXI_GP0_AWSIZE(2 downto 0) => Conn2_AWSIZE(2 downto 0),
      M_AXI_GP0_AWVALID => Conn2_AWVALID,
      M_AXI_GP0_BID(11 downto 0) => Conn2_BID(11 downto 0),
      M_AXI_GP0_BREADY => Conn2_BREADY,
      M_AXI_GP0_BRESP(1 downto 0) => Conn2_BRESP(1 downto 0),
      M_AXI_GP0_BVALID => Conn2_BVALID,
      M_AXI_GP0_RDATA(31 downto 0) => Conn2_RDATA(31 downto 0),
      M_AXI_GP0_RID(11 downto 0) => Conn2_RID(11 downto 0),
      M_AXI_GP0_RLAST => Conn2_RLAST,
      M_AXI_GP0_RREADY => Conn2_RREADY,
      M_AXI_GP0_RRESP(1 downto 0) => Conn2_RRESP(1 downto 0),
      M_AXI_GP0_RVALID => Conn2_RVALID,
      M_AXI_GP0_WDATA(31 downto 0) => Conn2_WDATA(31 downto 0),
      M_AXI_GP0_WID(11 downto 0) => Conn2_WID(11 downto 0),
      M_AXI_GP0_WLAST => Conn2_WLAST,
      M_AXI_GP0_WREADY => Conn2_WREADY,
      M_AXI_GP0_WSTRB(3 downto 0) => Conn2_WSTRB(3 downto 0),
      M_AXI_GP0_WVALID => Conn2_WVALID,
      PS_CLK => FIXED_IO_ps_clk,
      PS_PORB => FIXED_IO_ps_porb,
      PS_SRSTB => FIXED_IO_ps_srstb,
      USB0_PORT_INDCTL(1 downto 0) => NLW_processing_system7_0_USB0_PORT_INDCTL_UNCONNECTED(1 downto 0),
      USB0_VBUS_PWRFAULT => '0',
      USB0_VBUS_PWRSELECT => NLW_processing_system7_0_USB0_VBUS_PWRSELECT_UNCONNECTED
    );
rst_ps7_0_50M: component Zynq_Design_rst_ps7_0_50M_0
     port map (
      aux_reset_in => reset_rtl_1,
      bus_struct_reset(0) => NLW_rst_ps7_0_50M_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => processing_system7_0_FCLK_RESET0_N,
      interconnect_aresetn(0) => NLW_rst_ps7_0_50M_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_ps7_0_50M_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => rst_ps7_0_50M_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_rst_ps7_0_50M_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => slowest_sync_clk_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SSD_Controller_imp_7PZX22 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    FCLK_CLK0 : in STD_LOGIC;
    SSD_VEC : out STD_LOGIC_VECTOR ( 7 downto 0 );
    peripheral_aresetn : in STD_LOGIC
  );
end SSD_Controller_imp_7PZX22;

architecture STRUCTURE of SSD_Controller_imp_7PZX22 is
  component Zynq_Design_xlslice_0_3 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component Zynq_Design_xlslice_0_3;
  component Zynq_Design_xlslice_0_4 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component Zynq_Design_xlslice_0_4;
  component Zynq_Design_SSD_Controller_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    ASCII_To_Display : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Commutation_Period : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SSD_VEC : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component Zynq_Design_SSD_Controller_0_0;
  signal Din_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal FCLK_CLK0_1 : STD_LOGIC;
  signal SSD_Controller_0_SSD_VEC : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal peripheral_aresetn_1 : STD_LOGIC;
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xlslice_1_Dout : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
  Din_1(31 downto 0) <= Din(31 downto 0);
  FCLK_CLK0_1 <= FCLK_CLK0;
  SSD_VEC(7 downto 0) <= SSD_Controller_0_SSD_VEC(7 downto 0);
  peripheral_aresetn_1 <= peripheral_aresetn;
SSD_Controller_0: component Zynq_Design_SSD_Controller_0_0
     port map (
      ASCII_To_Display(7 downto 0) => xlslice_0_Dout(7 downto 0),
      Commutation_Period(7 downto 0) => xlslice_1_Dout(7 downto 0),
      SSD_VEC(7 downto 0) => SSD_Controller_0_SSD_VEC(7 downto 0),
      s_axi_aclk => FCLK_CLK0_1,
      s_axi_aresetn => peripheral_aresetn_1
    );
xlslice_0: component Zynq_Design_xlslice_0_3
     port map (
      Din(31 downto 0) => Din_1(31 downto 0),
      Dout(7 downto 0) => xlslice_0_Dout(7 downto 0)
    );
xlslice_1: component Zynq_Design_xlslice_0_4
     port map (
      Din(31 downto 0) => Din_1(31 downto 0),
      Dout(7 downto 0) => xlslice_1_Dout(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity UART_imp_2MWFNC is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Tx_UART : out STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresentn : in STD_LOGIC
  );
end UART_imp_2MWFNC;

architecture STRUCTURE of UART_imp_2MWFNC is
  component Zynq_Design_UART_V1_9_0_0 is
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
  end component Zynq_Design_UART_V1_9_0_0;
  component Zynq_Design_xlslice_0_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component Zynq_Design_xlslice_0_1;
  component Zynq_Design_xlslice_0_2 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component Zynq_Design_xlslice_0_2;
  component Zynq_Design_xlslice_1_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component Zynq_Design_xlslice_1_0;
  component Zynq_Design_xlslice_2_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component Zynq_Design_xlslice_2_0;
  component Zynq_Design_AXI_UART_Control_Ada_0_0 is
  port (
    CLK100MHz : in STD_LOGIC;
    RESET : in STD_LOGIC;
    Transmit_WE_In : in STD_LOGIC;
    Transmit_WE_Out : out STD_LOGIC
  );
  end component Zynq_Design_AXI_UART_Control_Ada_0_0;
  component Zynq_Design_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component Zynq_Design_xlconcat_0_0;
  signal AXI_UART_Control_Ada_0_Transmit_WE_Out : STD_LOGIC;
  signal Din_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal UART_V1_9_0_Transmit_AF : STD_LOGIC;
  signal UART_V1_9_0_Transmit_FU : STD_LOGIC;
  signal UART_V1_9_0_Tx : STD_LOGIC;
  signal s_axi_aclk_1 : STD_LOGIC;
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xlslice_1_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_2_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_3_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_UART_V1_9_0_Receive_AE_UNCONNECTED : STD_LOGIC;
  signal NLW_UART_V1_9_0_Receive_EM_UNCONNECTED : STD_LOGIC;
  signal NLW_UART_V1_9_0_Receive_OUT_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
  Din_1(31 downto 0) <= Din(31 downto 0);
  Tx_UART <= UART_V1_9_0_Tx;
  dout(1 downto 0) <= xlconcat_0_dout(1 downto 0);
  s_axi_aclk_1 <= s_axi_aclk;
AXI_UART_Control_Ada_0: component Zynq_Design_AXI_UART_Control_Ada_0_0
     port map (
      CLK100MHz => s_axi_aclk_1,
      RESET => xlslice_3_Dout(0),
      Transmit_WE_In => xlslice_1_Dout(0),
      Transmit_WE_Out => AXI_UART_Control_Ada_0_Transmit_WE_Out
    );
UART_V1_9_0: component Zynq_Design_UART_V1_9_0_0
     port map (
      CLK100MHz => s_axi_aclk_1,
      Receive_AE => NLW_UART_V1_9_0_Receive_AE_UNCONNECTED,
      Receive_CLK => s_axi_aclk_1,
      Receive_EM => NLW_UART_V1_9_0_Receive_EM_UNCONNECTED,
      Receive_OUT(7 downto 0) => NLW_UART_V1_9_0_Receive_OUT_UNCONNECTED(7 downto 0),
      Receive_RD_EN => '0',
      Reset_0 => xlslice_3_Dout(0),
      Rx => '0',
      Transmit_AF => UART_V1_9_0_Transmit_AF,
      Transmit_CLK => s_axi_aclk_1,
      Transmit_FU => UART_V1_9_0_Transmit_FU,
      Transmit_IN(7 downto 0) => xlslice_0_Dout(7 downto 0),
      Transmit_WR_EN => AXI_UART_Control_Ada_0_Transmit_WE_Out,
      Tx => UART_V1_9_0_Tx,
      UART_Debug_Enable => xlslice_2_Dout(0)
    );
xlconcat_0: component Zynq_Design_xlconcat_0_0
     port map (
      In0(0) => UART_V1_9_0_Transmit_AF,
      In1(0) => UART_V1_9_0_Transmit_FU,
      dout(1 downto 0) => xlconcat_0_dout(1 downto 0)
    );
xlslice_0: component Zynq_Design_xlslice_0_1
     port map (
      Din(31 downto 0) => Din_1(31 downto 0),
      Dout(7 downto 0) => xlslice_0_Dout(7 downto 0)
    );
xlslice_1: component Zynq_Design_xlslice_0_2
     port map (
      Din(31 downto 0) => Din_1(31 downto 0),
      Dout(0) => xlslice_1_Dout(0)
    );
xlslice_2: component Zynq_Design_xlslice_1_0
     port map (
      Din(31 downto 0) => Din_1(31 downto 0),
      Dout(0) => xlslice_2_Dout(0)
    );
xlslice_3: component Zynq_Design_xlslice_2_0
     port map (
      Din(31 downto 0) => Din_1(31 downto 0),
      Dout(0) => xlslice_3_Dout(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity debugger_imp_1QXV2S6 is
  port (
    FCLK_CLK0 : in STD_LOGIC;
    M00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : in STD_LOGIC
  );
end debugger_imp_1QXV2S6;

architecture STRUCTURE of debugger_imp_1QXV2S6 is
  component Zynq_Design_system_ila_0_0 is
  port (
    clk : in STD_LOGIC;
    SLOT_0_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_0_AXI_awvalid : in STD_LOGIC;
    SLOT_0_AXI_awready : in STD_LOGIC;
    SLOT_0_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_0_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_wvalid : in STD_LOGIC;
    SLOT_0_AXI_wready : in STD_LOGIC;
    SLOT_0_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_bvalid : in STD_LOGIC;
    SLOT_0_AXI_bready : in STD_LOGIC;
    SLOT_0_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_0_AXI_arvalid : in STD_LOGIC;
    SLOT_0_AXI_arready : in STD_LOGIC;
    SLOT_0_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_0_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_rvalid : in STD_LOGIC;
    SLOT_0_AXI_rready : in STD_LOGIC;
    resetn : in STD_LOGIC;
    SLOT_0_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component Zynq_Design_system_ila_0_0;
  signal Conn1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute CONN_BUS_INFO : string;
  attribute CONN_BUS_INFO of Conn1_ARADDR : signal is "Conn1 xilinx.com:interface:aximm:1.0 None ARADDR";
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of Conn1_ARADDR : signal is std.standard.true;
  signal Conn1_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute CONN_BUS_INFO of Conn1_ARREADY : signal is "Conn1 xilinx.com:interface:aximm:1.0 None ARREADY";
  attribute DONT_TOUCH of Conn1_ARREADY : signal is std.standard.true;
  signal Conn1_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute CONN_BUS_INFO of Conn1_ARVALID : signal is "Conn1 xilinx.com:interface:aximm:1.0 None ARVALID";
  attribute DONT_TOUCH of Conn1_ARVALID : signal is std.standard.true;
  signal Conn1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute CONN_BUS_INFO of Conn1_AWADDR : signal is "Conn1 xilinx.com:interface:aximm:1.0 None AWADDR";
  attribute DONT_TOUCH of Conn1_AWADDR : signal is std.standard.true;
  signal Conn1_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute CONN_BUS_INFO of Conn1_AWREADY : signal is "Conn1 xilinx.com:interface:aximm:1.0 None AWREADY";
  attribute DONT_TOUCH of Conn1_AWREADY : signal is std.standard.true;
  signal Conn1_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute CONN_BUS_INFO of Conn1_AWVALID : signal is "Conn1 xilinx.com:interface:aximm:1.0 None AWVALID";
  attribute DONT_TOUCH of Conn1_AWVALID : signal is std.standard.true;
  signal Conn1_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute CONN_BUS_INFO of Conn1_BREADY : signal is "Conn1 xilinx.com:interface:aximm:1.0 None BREADY";
  attribute DONT_TOUCH of Conn1_BREADY : signal is std.standard.true;
  signal Conn1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute CONN_BUS_INFO of Conn1_BRESP : signal is "Conn1 xilinx.com:interface:aximm:1.0 None BRESP";
  attribute DONT_TOUCH of Conn1_BRESP : signal is std.standard.true;
  signal Conn1_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute CONN_BUS_INFO of Conn1_BVALID : signal is "Conn1 xilinx.com:interface:aximm:1.0 None BVALID";
  attribute DONT_TOUCH of Conn1_BVALID : signal is std.standard.true;
  signal Conn1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute CONN_BUS_INFO of Conn1_RDATA : signal is "Conn1 xilinx.com:interface:aximm:1.0 None RDATA";
  attribute DONT_TOUCH of Conn1_RDATA : signal is std.standard.true;
  signal Conn1_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute CONN_BUS_INFO of Conn1_RREADY : signal is "Conn1 xilinx.com:interface:aximm:1.0 None RREADY";
  attribute DONT_TOUCH of Conn1_RREADY : signal is std.standard.true;
  signal Conn1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute CONN_BUS_INFO of Conn1_RRESP : signal is "Conn1 xilinx.com:interface:aximm:1.0 None RRESP";
  attribute DONT_TOUCH of Conn1_RRESP : signal is std.standard.true;
  signal Conn1_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute CONN_BUS_INFO of Conn1_RVALID : signal is "Conn1 xilinx.com:interface:aximm:1.0 None RVALID";
  attribute DONT_TOUCH of Conn1_RVALID : signal is std.standard.true;
  signal Conn1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute CONN_BUS_INFO of Conn1_WDATA : signal is "Conn1 xilinx.com:interface:aximm:1.0 None WDATA";
  attribute DONT_TOUCH of Conn1_WDATA : signal is std.standard.true;
  signal Conn1_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute CONN_BUS_INFO of Conn1_WREADY : signal is "Conn1 xilinx.com:interface:aximm:1.0 None WREADY";
  attribute DONT_TOUCH of Conn1_WREADY : signal is std.standard.true;
  signal Conn1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute CONN_BUS_INFO of Conn1_WSTRB : signal is "Conn1 xilinx.com:interface:aximm:1.0 None WSTRB";
  attribute DONT_TOUCH of Conn1_WSTRB : signal is std.standard.true;
  signal Conn1_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute CONN_BUS_INFO of Conn1_WVALID : signal is "Conn1 xilinx.com:interface:aximm:1.0 None WVALID";
  attribute DONT_TOUCH of Conn1_WVALID : signal is std.standard.true;
  signal FCLK_CLK0_1 : STD_LOGIC;
  signal peripheral_aresetn_1 : STD_LOGIC;
begin
  Conn1_ARADDR(31 downto 0) <= M00_AXI_araddr(31 downto 0);
  Conn1_ARREADY(0) <= M00_AXI_arready(0);
  Conn1_ARVALID(0) <= M00_AXI_arvalid(0);
  Conn1_AWADDR(31 downto 0) <= M00_AXI_awaddr(31 downto 0);
  Conn1_AWREADY(0) <= M00_AXI_awready(0);
  Conn1_AWVALID(0) <= M00_AXI_awvalid(0);
  Conn1_BREADY(0) <= M00_AXI_bready(0);
  Conn1_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  Conn1_BVALID(0) <= M00_AXI_bvalid(0);
  Conn1_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  Conn1_RREADY(0) <= M00_AXI_rready(0);
  Conn1_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  Conn1_RVALID(0) <= M00_AXI_rvalid(0);
  Conn1_WDATA(31 downto 0) <= M00_AXI_wdata(31 downto 0);
  Conn1_WREADY(0) <= M00_AXI_wready(0);
  Conn1_WSTRB(3 downto 0) <= M00_AXI_wstrb(3 downto 0);
  Conn1_WVALID(0) <= M00_AXI_wvalid(0);
  FCLK_CLK0_1 <= FCLK_CLK0;
  peripheral_aresetn_1 <= peripheral_aresetn;
system_ila_0: component Zynq_Design_system_ila_0_0
     port map (
      SLOT_0_AXI_araddr(31 downto 0) => Conn1_ARADDR(31 downto 0),
      SLOT_0_AXI_arprot(2 downto 0) => B"000",
      SLOT_0_AXI_arready => Conn1_ARREADY(0),
      SLOT_0_AXI_arvalid => Conn1_ARVALID(0),
      SLOT_0_AXI_awaddr(31 downto 0) => Conn1_AWADDR(31 downto 0),
      SLOT_0_AXI_awprot(2 downto 0) => B"000",
      SLOT_0_AXI_awready => Conn1_AWREADY(0),
      SLOT_0_AXI_awvalid => Conn1_AWVALID(0),
      SLOT_0_AXI_bready => Conn1_BREADY(0),
      SLOT_0_AXI_bresp(1 downto 0) => Conn1_BRESP(1 downto 0),
      SLOT_0_AXI_bvalid => Conn1_BVALID(0),
      SLOT_0_AXI_rdata(31 downto 0) => Conn1_RDATA(31 downto 0),
      SLOT_0_AXI_rready => Conn1_RREADY(0),
      SLOT_0_AXI_rresp(1 downto 0) => Conn1_RRESP(1 downto 0),
      SLOT_0_AXI_rvalid => Conn1_RVALID(0),
      SLOT_0_AXI_wdata(31 downto 0) => Conn1_WDATA(31 downto 0),
      SLOT_0_AXI_wready => Conn1_WREADY(0),
      SLOT_0_AXI_wstrb(3 downto 0) => Conn1_WSTRB(3 downto 0),
      SLOT_0_AXI_wvalid => Conn1_WVALID(0),
      clk => FCLK_CLK0_1,
      resetn => peripheral_aresetn_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m00_couplers_imp_1GHGV4D is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end m00_couplers_imp_1GHGV4D;

architecture STRUCTURE of m00_couplers_imp_1GHGV4D is
  signal m00_couplers_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_m00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_m00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_m00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  M_AXI_araddr(31 downto 0) <= m00_couplers_to_m00_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= m00_couplers_to_m00_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid(0) <= m00_couplers_to_m00_couplers_ARVALID(0);
  M_AXI_awaddr(31 downto 0) <= m00_couplers_to_m00_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= m00_couplers_to_m00_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid(0) <= m00_couplers_to_m00_couplers_AWVALID(0);
  M_AXI_bready(0) <= m00_couplers_to_m00_couplers_BREADY(0);
  M_AXI_rready(0) <= m00_couplers_to_m00_couplers_RREADY(0);
  M_AXI_wdata(31 downto 0) <= m00_couplers_to_m00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= m00_couplers_to_m00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid(0) <= m00_couplers_to_m00_couplers_WVALID(0);
  S_AXI_arready(0) <= m00_couplers_to_m00_couplers_ARREADY(0);
  S_AXI_awready(0) <= m00_couplers_to_m00_couplers_AWREADY(0);
  S_AXI_bresp(1 downto 0) <= m00_couplers_to_m00_couplers_BRESP(1 downto 0);
  S_AXI_bvalid(0) <= m00_couplers_to_m00_couplers_BVALID(0);
  S_AXI_rdata(31 downto 0) <= m00_couplers_to_m00_couplers_RDATA(31 downto 0);
  S_AXI_rresp(1 downto 0) <= m00_couplers_to_m00_couplers_RRESP(1 downto 0);
  S_AXI_rvalid(0) <= m00_couplers_to_m00_couplers_RVALID(0);
  S_AXI_wready(0) <= m00_couplers_to_m00_couplers_WREADY(0);
  m00_couplers_to_m00_couplers_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  m00_couplers_to_m00_couplers_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  m00_couplers_to_m00_couplers_ARREADY(0) <= M_AXI_arready(0);
  m00_couplers_to_m00_couplers_ARVALID(0) <= S_AXI_arvalid(0);
  m00_couplers_to_m00_couplers_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  m00_couplers_to_m00_couplers_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  m00_couplers_to_m00_couplers_AWREADY(0) <= M_AXI_awready(0);
  m00_couplers_to_m00_couplers_AWVALID(0) <= S_AXI_awvalid(0);
  m00_couplers_to_m00_couplers_BREADY(0) <= S_AXI_bready(0);
  m00_couplers_to_m00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  m00_couplers_to_m00_couplers_BVALID(0) <= M_AXI_bvalid(0);
  m00_couplers_to_m00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  m00_couplers_to_m00_couplers_RREADY(0) <= S_AXI_rready(0);
  m00_couplers_to_m00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  m00_couplers_to_m00_couplers_RVALID(0) <= M_AXI_rvalid(0);
  m00_couplers_to_m00_couplers_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  m00_couplers_to_m00_couplers_WREADY(0) <= M_AXI_wready(0);
  m00_couplers_to_m00_couplers_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  m00_couplers_to_m00_couplers_WVALID(0) <= S_AXI_wvalid(0);
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity m01_couplers_imp_9P48IB is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC;
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC;
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC;
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC;
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC;
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC;
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC;
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC;
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC
  );
end m01_couplers_imp_9P48IB;

architecture STRUCTURE of m01_couplers_imp_9P48IB is
  signal m01_couplers_to_m01_couplers_ARADDR : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARPROT : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_ARVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWADDR : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWPROT : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_AWVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_BREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_BRESP : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_BVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RDATA : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RRESP : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_RVALID : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WDATA : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WREADY : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WSTRB : STD_LOGIC;
  signal m01_couplers_to_m01_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr <= m01_couplers_to_m01_couplers_ARADDR;
  M_AXI_arprot <= m01_couplers_to_m01_couplers_ARPROT;
  M_AXI_arvalid <= m01_couplers_to_m01_couplers_ARVALID;
  M_AXI_awaddr <= m01_couplers_to_m01_couplers_AWADDR;
  M_AXI_awprot <= m01_couplers_to_m01_couplers_AWPROT;
  M_AXI_awvalid <= m01_couplers_to_m01_couplers_AWVALID;
  M_AXI_bready <= m01_couplers_to_m01_couplers_BREADY;
  M_AXI_rready <= m01_couplers_to_m01_couplers_RREADY;
  M_AXI_wdata <= m01_couplers_to_m01_couplers_WDATA;
  M_AXI_wstrb <= m01_couplers_to_m01_couplers_WSTRB;
  M_AXI_wvalid <= m01_couplers_to_m01_couplers_WVALID;
  S_AXI_arready <= m01_couplers_to_m01_couplers_ARREADY;
  S_AXI_awready <= m01_couplers_to_m01_couplers_AWREADY;
  S_AXI_bresp <= m01_couplers_to_m01_couplers_BRESP;
  S_AXI_bvalid <= m01_couplers_to_m01_couplers_BVALID;
  S_AXI_rdata <= m01_couplers_to_m01_couplers_RDATA;
  S_AXI_rresp <= m01_couplers_to_m01_couplers_RRESP;
  S_AXI_rvalid <= m01_couplers_to_m01_couplers_RVALID;
  S_AXI_wready <= m01_couplers_to_m01_couplers_WREADY;
  m01_couplers_to_m01_couplers_ARADDR <= S_AXI_araddr;
  m01_couplers_to_m01_couplers_ARPROT <= S_AXI_arprot;
  m01_couplers_to_m01_couplers_ARREADY <= M_AXI_arready;
  m01_couplers_to_m01_couplers_ARVALID <= S_AXI_arvalid;
  m01_couplers_to_m01_couplers_AWADDR <= S_AXI_awaddr;
  m01_couplers_to_m01_couplers_AWPROT <= S_AXI_awprot;
  m01_couplers_to_m01_couplers_AWREADY <= M_AXI_awready;
  m01_couplers_to_m01_couplers_AWVALID <= S_AXI_awvalid;
  m01_couplers_to_m01_couplers_BREADY <= S_AXI_bready;
  m01_couplers_to_m01_couplers_BRESP <= M_AXI_bresp;
  m01_couplers_to_m01_couplers_BVALID <= M_AXI_bvalid;
  m01_couplers_to_m01_couplers_RDATA <= M_AXI_rdata;
  m01_couplers_to_m01_couplers_RREADY <= S_AXI_rready;
  m01_couplers_to_m01_couplers_RRESP <= M_AXI_rresp;
  m01_couplers_to_m01_couplers_RVALID <= M_AXI_rvalid;
  m01_couplers_to_m01_couplers_WDATA <= S_AXI_wdata;
  m01_couplers_to_m01_couplers_WREADY <= M_AXI_wready;
  m01_couplers_to_m01_couplers_WSTRB <= S_AXI_wstrb;
  m01_couplers_to_m01_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_MIOAL9 is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC;
    M_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC;
    S_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_MIOAL9;

architecture STRUCTURE of s00_couplers_imp_MIOAL9 is
  component Zynq_Design_auto_pc_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  end component Zynq_Design_auto_pc_0;
  signal S_ACLK_1 : STD_LOGIC;
  signal S_ARESETN_1 : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_ARREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_ARVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal auto_pc_to_s00_couplers_AWREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_AWVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_BVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_RREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal auto_pc_to_s00_couplers_RVALID : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal auto_pc_to_s00_couplers_WREADY : STD_LOGIC;
  signal auto_pc_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal auto_pc_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_ARREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_ARVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_AWREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_auto_pc_AWVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_BREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_BVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_RLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_auto_pc_RVALID : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_auto_pc_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal s00_couplers_to_auto_pc_WLAST : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WREADY : STD_LOGIC;
  signal s00_couplers_to_auto_pc_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_auto_pc_WVALID : STD_LOGIC;
begin
  M_AXI_araddr(31 downto 0) <= auto_pc_to_s00_couplers_ARADDR(31 downto 0);
  M_AXI_arprot(2 downto 0) <= auto_pc_to_s00_couplers_ARPROT(2 downto 0);
  M_AXI_arvalid <= auto_pc_to_s00_couplers_ARVALID;
  M_AXI_awaddr(31 downto 0) <= auto_pc_to_s00_couplers_AWADDR(31 downto 0);
  M_AXI_awprot(2 downto 0) <= auto_pc_to_s00_couplers_AWPROT(2 downto 0);
  M_AXI_awvalid <= auto_pc_to_s00_couplers_AWVALID;
  M_AXI_bready <= auto_pc_to_s00_couplers_BREADY;
  M_AXI_rready <= auto_pc_to_s00_couplers_RREADY;
  M_AXI_wdata(31 downto 0) <= auto_pc_to_s00_couplers_WDATA(31 downto 0);
  M_AXI_wstrb(3 downto 0) <= auto_pc_to_s00_couplers_WSTRB(3 downto 0);
  M_AXI_wvalid <= auto_pc_to_s00_couplers_WVALID;
  S_ACLK_1 <= S_ACLK;
  S_ARESETN_1 <= S_ARESETN;
  S_AXI_arready <= s00_couplers_to_auto_pc_ARREADY;
  S_AXI_awready <= s00_couplers_to_auto_pc_AWREADY;
  S_AXI_bid(11 downto 0) <= s00_couplers_to_auto_pc_BID(11 downto 0);
  S_AXI_bresp(1 downto 0) <= s00_couplers_to_auto_pc_BRESP(1 downto 0);
  S_AXI_bvalid <= s00_couplers_to_auto_pc_BVALID;
  S_AXI_rdata(31 downto 0) <= s00_couplers_to_auto_pc_RDATA(31 downto 0);
  S_AXI_rid(11 downto 0) <= s00_couplers_to_auto_pc_RID(11 downto 0);
  S_AXI_rlast <= s00_couplers_to_auto_pc_RLAST;
  S_AXI_rresp(1 downto 0) <= s00_couplers_to_auto_pc_RRESP(1 downto 0);
  S_AXI_rvalid <= s00_couplers_to_auto_pc_RVALID;
  S_AXI_wready <= s00_couplers_to_auto_pc_WREADY;
  auto_pc_to_s00_couplers_ARREADY <= M_AXI_arready;
  auto_pc_to_s00_couplers_AWREADY <= M_AXI_awready;
  auto_pc_to_s00_couplers_BRESP(1 downto 0) <= M_AXI_bresp(1 downto 0);
  auto_pc_to_s00_couplers_BVALID <= M_AXI_bvalid;
  auto_pc_to_s00_couplers_RDATA(31 downto 0) <= M_AXI_rdata(31 downto 0);
  auto_pc_to_s00_couplers_RRESP(1 downto 0) <= M_AXI_rresp(1 downto 0);
  auto_pc_to_s00_couplers_RVALID <= M_AXI_rvalid;
  auto_pc_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_auto_pc_ARADDR(31 downto 0) <= S_AXI_araddr(31 downto 0);
  s00_couplers_to_auto_pc_ARBURST(1 downto 0) <= S_AXI_arburst(1 downto 0);
  s00_couplers_to_auto_pc_ARCACHE(3 downto 0) <= S_AXI_arcache(3 downto 0);
  s00_couplers_to_auto_pc_ARID(11 downto 0) <= S_AXI_arid(11 downto 0);
  s00_couplers_to_auto_pc_ARLEN(3 downto 0) <= S_AXI_arlen(3 downto 0);
  s00_couplers_to_auto_pc_ARLOCK(1 downto 0) <= S_AXI_arlock(1 downto 0);
  s00_couplers_to_auto_pc_ARPROT(2 downto 0) <= S_AXI_arprot(2 downto 0);
  s00_couplers_to_auto_pc_ARQOS(3 downto 0) <= S_AXI_arqos(3 downto 0);
  s00_couplers_to_auto_pc_ARSIZE(2 downto 0) <= S_AXI_arsize(2 downto 0);
  s00_couplers_to_auto_pc_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_auto_pc_AWADDR(31 downto 0) <= S_AXI_awaddr(31 downto 0);
  s00_couplers_to_auto_pc_AWBURST(1 downto 0) <= S_AXI_awburst(1 downto 0);
  s00_couplers_to_auto_pc_AWCACHE(3 downto 0) <= S_AXI_awcache(3 downto 0);
  s00_couplers_to_auto_pc_AWID(11 downto 0) <= S_AXI_awid(11 downto 0);
  s00_couplers_to_auto_pc_AWLEN(3 downto 0) <= S_AXI_awlen(3 downto 0);
  s00_couplers_to_auto_pc_AWLOCK(1 downto 0) <= S_AXI_awlock(1 downto 0);
  s00_couplers_to_auto_pc_AWPROT(2 downto 0) <= S_AXI_awprot(2 downto 0);
  s00_couplers_to_auto_pc_AWQOS(3 downto 0) <= S_AXI_awqos(3 downto 0);
  s00_couplers_to_auto_pc_AWSIZE(2 downto 0) <= S_AXI_awsize(2 downto 0);
  s00_couplers_to_auto_pc_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_auto_pc_BREADY <= S_AXI_bready;
  s00_couplers_to_auto_pc_RREADY <= S_AXI_rready;
  s00_couplers_to_auto_pc_WDATA(31 downto 0) <= S_AXI_wdata(31 downto 0);
  s00_couplers_to_auto_pc_WID(11 downto 0) <= S_AXI_wid(11 downto 0);
  s00_couplers_to_auto_pc_WLAST <= S_AXI_wlast;
  s00_couplers_to_auto_pc_WSTRB(3 downto 0) <= S_AXI_wstrb(3 downto 0);
  s00_couplers_to_auto_pc_WVALID <= S_AXI_wvalid;
auto_pc: component Zynq_Design_auto_pc_0
     port map (
      aclk => S_ACLK_1,
      aresetn => S_ARESETN_1,
      m_axi_araddr(31 downto 0) => auto_pc_to_s00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(2 downto 0) => auto_pc_to_s00_couplers_ARPROT(2 downto 0),
      m_axi_arready => auto_pc_to_s00_couplers_ARREADY,
      m_axi_arvalid => auto_pc_to_s00_couplers_ARVALID,
      m_axi_awaddr(31 downto 0) => auto_pc_to_s00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(2 downto 0) => auto_pc_to_s00_couplers_AWPROT(2 downto 0),
      m_axi_awready => auto_pc_to_s00_couplers_AWREADY,
      m_axi_awvalid => auto_pc_to_s00_couplers_AWVALID,
      m_axi_bready => auto_pc_to_s00_couplers_BREADY,
      m_axi_bresp(1 downto 0) => auto_pc_to_s00_couplers_BRESP(1 downto 0),
      m_axi_bvalid => auto_pc_to_s00_couplers_BVALID,
      m_axi_rdata(31 downto 0) => auto_pc_to_s00_couplers_RDATA(31 downto 0),
      m_axi_rready => auto_pc_to_s00_couplers_RREADY,
      m_axi_rresp(1 downto 0) => auto_pc_to_s00_couplers_RRESP(1 downto 0),
      m_axi_rvalid => auto_pc_to_s00_couplers_RVALID,
      m_axi_wdata(31 downto 0) => auto_pc_to_s00_couplers_WDATA(31 downto 0),
      m_axi_wready => auto_pc_to_s00_couplers_WREADY,
      m_axi_wstrb(3 downto 0) => auto_pc_to_s00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid => auto_pc_to_s00_couplers_WVALID,
      s_axi_araddr(31 downto 0) => s00_couplers_to_auto_pc_ARADDR(31 downto 0),
      s_axi_arburst(1 downto 0) => s00_couplers_to_auto_pc_ARBURST(1 downto 0),
      s_axi_arcache(3 downto 0) => s00_couplers_to_auto_pc_ARCACHE(3 downto 0),
      s_axi_arid(11 downto 0) => s00_couplers_to_auto_pc_ARID(11 downto 0),
      s_axi_arlen(3 downto 0) => s00_couplers_to_auto_pc_ARLEN(3 downto 0),
      s_axi_arlock(1 downto 0) => s00_couplers_to_auto_pc_ARLOCK(1 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_auto_pc_ARPROT(2 downto 0),
      s_axi_arqos(3 downto 0) => s00_couplers_to_auto_pc_ARQOS(3 downto 0),
      s_axi_arready => s00_couplers_to_auto_pc_ARREADY,
      s_axi_arsize(2 downto 0) => s00_couplers_to_auto_pc_ARSIZE(2 downto 0),
      s_axi_arvalid => s00_couplers_to_auto_pc_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_auto_pc_AWADDR(31 downto 0),
      s_axi_awburst(1 downto 0) => s00_couplers_to_auto_pc_AWBURST(1 downto 0),
      s_axi_awcache(3 downto 0) => s00_couplers_to_auto_pc_AWCACHE(3 downto 0),
      s_axi_awid(11 downto 0) => s00_couplers_to_auto_pc_AWID(11 downto 0),
      s_axi_awlen(3 downto 0) => s00_couplers_to_auto_pc_AWLEN(3 downto 0),
      s_axi_awlock(1 downto 0) => s00_couplers_to_auto_pc_AWLOCK(1 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_auto_pc_AWPROT(2 downto 0),
      s_axi_awqos(3 downto 0) => s00_couplers_to_auto_pc_AWQOS(3 downto 0),
      s_axi_awready => s00_couplers_to_auto_pc_AWREADY,
      s_axi_awsize(2 downto 0) => s00_couplers_to_auto_pc_AWSIZE(2 downto 0),
      s_axi_awvalid => s00_couplers_to_auto_pc_AWVALID,
      s_axi_bid(11 downto 0) => s00_couplers_to_auto_pc_BID(11 downto 0),
      s_axi_bready => s00_couplers_to_auto_pc_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_auto_pc_BRESP(1 downto 0),
      s_axi_bvalid => s00_couplers_to_auto_pc_BVALID,
      s_axi_rdata(31 downto 0) => s00_couplers_to_auto_pc_RDATA(31 downto 0),
      s_axi_rid(11 downto 0) => s00_couplers_to_auto_pc_RID(11 downto 0),
      s_axi_rlast => s00_couplers_to_auto_pc_RLAST,
      s_axi_rready => s00_couplers_to_auto_pc_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_auto_pc_RRESP(1 downto 0),
      s_axi_rvalid => s00_couplers_to_auto_pc_RVALID,
      s_axi_wdata(31 downto 0) => s00_couplers_to_auto_pc_WDATA(31 downto 0),
      s_axi_wid(11 downto 0) => s00_couplers_to_auto_pc_WID(11 downto 0),
      s_axi_wlast => s00_couplers_to_auto_pc_WLAST,
      s_axi_wready => s00_couplers_to_auto_pc_WREADY,
      s_axi_wstrb(3 downto 0) => s00_couplers_to_auto_pc_WSTRB(3 downto 0),
      s_axi_wvalid => s00_couplers_to_auto_pc_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity PL_imp_1ENBX6M is
  port (
    LED : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Microphone_CS : out STD_LOGIC;
    Microphone_MISO : in STD_LOGIC;
    Microphone_SCK : out STD_LOGIC;
    SSD_VEC : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Tx_UART : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_aresentn : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end PL_imp_1ENBX6M;

architecture STRUCTURE of PL_imp_1ENBX6M is
  component Zynq_Design_AXI4_Lite_Slave_0_0 is
  port (
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
  end component Zynq_Design_AXI4_Lite_Slave_0_0;
  component Zynq_Design_Local_Bus_Register_B_0_0 is
  port (
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
    RO_reg_16 : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component Zynq_Design_Local_Bus_Register_B_0_0;
  signal AXI4_Lite_Slave_0_lbus_out_address : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal AXI4_Lite_Slave_0_lbus_out_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal AXI4_Lite_Slave_0_lbus_out_strobe : STD_LOGIC;
  signal Conn1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_ARREADY : STD_LOGIC;
  signal Conn1_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_AWREADY : STD_LOGIC;
  signal Conn1_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_BVALID : STD_LOGIC;
  signal Conn1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Conn1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Conn1_RVALID : STD_LOGIC;
  signal Conn1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_WREADY : STD_LOGIC;
  signal Conn1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal Local_Bus_Register_B_0_RW_reg_1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Local_Bus_Register_B_0_RW_reg_10 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Local_Bus_Register_B_0_RW_reg_11 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Local_Bus_Register_B_0_RW_reg_16 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Local_Bus_Register_B_0_RW_reg_5 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Local_Bus_Register_B_0_RW_reg_9 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Local_Bus_Register_B_0_lbus_out_addr_OOR : STD_LOGIC;
  signal Local_Bus_Register_B_0_lbus_out_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Local_Bus_Register_B_0_lbus_out_op_success : STD_LOGIC;
  signal MEMS_Microphone_Microphone_CS : STD_LOGIC;
  signal MEMS_Microphone_Microphone_SCK : STD_LOGIC;
  signal MEMS_Microphone_dout : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal Microphone_MISO_1 : STD_LOGIC;
  signal SSD_Controller_SSD_VEC : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal UART_Tx_UART : STD_LOGIC;
  signal UART_dout : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s_axi_aclk_1 : STD_LOGIC;
  signal s_axi_aresentn_1 : STD_LOGIC;
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_Local_Bus_Register_B_0_RW_reg_12_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Local_Bus_Register_B_0_RW_reg_13_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Local_Bus_Register_B_0_RW_reg_14_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Local_Bus_Register_B_0_RW_reg_15_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Local_Bus_Register_B_0_RW_reg_2_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Local_Bus_Register_B_0_RW_reg_3_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Local_Bus_Register_B_0_RW_reg_4_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Local_Bus_Register_B_0_RW_reg_6_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Local_Bus_Register_B_0_RW_reg_7_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_Local_Bus_Register_B_0_RW_reg_8_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  Conn1_ARADDR(31 downto 0) <= s_axi_araddr(31 downto 0);
  Conn1_ARVALID(0) <= s_axi_arvalid(0);
  Conn1_AWADDR(31 downto 0) <= s_axi_awaddr(31 downto 0);
  Conn1_AWVALID(0) <= s_axi_awvalid(0);
  Conn1_BREADY(0) <= s_axi_bready(0);
  Conn1_RREADY(0) <= s_axi_rready(0);
  Conn1_WDATA(31 downto 0) <= s_axi_wdata(31 downto 0);
  Conn1_WSTRB(3 downto 0) <= s_axi_wstrb(3 downto 0);
  Conn1_WVALID(0) <= s_axi_wvalid(0);
  LED(3 downto 0) <= xlslice_0_Dout(3 downto 0);
  Microphone_CS <= MEMS_Microphone_Microphone_CS;
  Microphone_MISO_1 <= Microphone_MISO;
  Microphone_SCK <= MEMS_Microphone_Microphone_SCK;
  SSD_VEC(7 downto 0) <= SSD_Controller_SSD_VEC(7 downto 0);
  Tx_UART <= UART_Tx_UART;
  s_axi_aclk_1 <= s_axi_aclk;
  s_axi_aresentn_1 <= s_axi_aresentn;
  s_axi_arready(0) <= Conn1_ARREADY;
  s_axi_awready(0) <= Conn1_AWREADY;
  s_axi_bresp(1 downto 0) <= Conn1_BRESP(1 downto 0);
  s_axi_bvalid(0) <= Conn1_BVALID;
  s_axi_rdata(31 downto 0) <= Conn1_RDATA(31 downto 0);
  s_axi_rresp(1 downto 0) <= Conn1_RRESP(1 downto 0);
  s_axi_rvalid(0) <= Conn1_RVALID;
  s_axi_wready(0) <= Conn1_WREADY;
AXI4_Lite_Slave_0: component Zynq_Design_AXI4_Lite_Slave_0_0
     port map (
      lbus_in_addr_OOR => Local_Bus_Register_B_0_lbus_out_addr_OOR,
      lbus_in_complete => Local_Bus_Register_B_0_lbus_out_op_success,
      lbus_in_data(31 downto 0) => Local_Bus_Register_B_0_lbus_out_data(31 downto 0),
      lbus_out_address(31 downto 0) => AXI4_Lite_Slave_0_lbus_out_address(31 downto 0),
      lbus_out_data(31 downto 0) => AXI4_Lite_Slave_0_lbus_out_data(31 downto 0),
      lbus_out_strobe => AXI4_Lite_Slave_0_lbus_out_strobe,
      s_axi_aclk => s_axi_aclk_1,
      s_axi_araddr(31 downto 0) => Conn1_ARADDR(31 downto 0),
      s_axi_aresentn => s_axi_aresentn_1,
      s_axi_arready => Conn1_ARREADY,
      s_axi_arvalid => Conn1_ARVALID(0),
      s_axi_awaddr(31 downto 0) => Conn1_AWADDR(31 downto 0),
      s_axi_awready => Conn1_AWREADY,
      s_axi_awvalid => Conn1_AWVALID(0),
      s_axi_bready => Conn1_BREADY(0),
      s_axi_bresp(1 downto 0) => Conn1_BRESP(1 downto 0),
      s_axi_bvalid => Conn1_BVALID,
      s_axi_rdata(31 downto 0) => Conn1_RDATA(31 downto 0),
      s_axi_rready => Conn1_RREADY(0),
      s_axi_rresp(1 downto 0) => Conn1_RRESP(1 downto 0),
      s_axi_rvalid => Conn1_RVALID,
      s_axi_wdata(31 downto 0) => Conn1_WDATA(31 downto 0),
      s_axi_wready => Conn1_WREADY,
      s_axi_wstrb(3 downto 0) => Conn1_WSTRB(3 downto 0),
      s_axi_wvalid => Conn1_WVALID(0)
    );
led_RnM: entity work.LED_imp_1HIOZQI
     port map (
      Din(31 downto 0) => Local_Bus_Register_B_0_RW_reg_1(31 downto 0),
      LED(3 downto 0) => xlslice_0_Dout(3 downto 0)
    );
Local_Bus_Register_B_0: component Zynq_Design_Local_Bus_Register_B_0_0
     port map (
      RO_reg_1(31 downto 0) => B"00000000000000000000000000000000",
      RO_reg_10(31 downto 0) => B"00000000000000000000000000000000",
      RO_reg_11(31 downto 0) => B"00000000000000000000000000000000",
      RO_reg_12(31 downto 0) => B"00000000000000000000000000000000",
      RO_reg_13(31 downto 0) => B"00000000000000000000000000000000",
      RO_reg_14(31 downto 0) => B"00000000000000000000000000000000",
      RO_reg_15(31 downto 0) => B"00000000000000000000000000000000",
      RO_reg_16(31 downto 2) => B"000000000000000000000000000000",
      RO_reg_16(1 downto 0) => UART_dout(1 downto 0),
      RO_reg_2(31 downto 0) => B"00000000000000000000000000000000",
      RO_reg_3(31 downto 0) => B"00000000000000000000000000000000",
      RO_reg_4(31 downto 0) => B"00000000000000000000000000000000",
      RO_reg_5(31 downto 0) => B"00000000000000000000000000000000",
      RO_reg_6(31 downto 0) => B"00000000000000000000000000000000",
      RO_reg_7(31 downto 0) => B"00000000000000000000000000000000",
      RO_reg_8(31 downto 0) => B"00000000000000000000000000000000",
      RO_reg_9(31 downto 15) => B"00000000000000000",
      RO_reg_9(14 downto 0) => MEMS_Microphone_dout(14 downto 0),
      RW_reg_1(31 downto 0) => Local_Bus_Register_B_0_RW_reg_1(31 downto 0),
      RW_reg_10(31 downto 0) => Local_Bus_Register_B_0_RW_reg_10(31 downto 0),
      RW_reg_11(31 downto 0) => Local_Bus_Register_B_0_RW_reg_11(31 downto 0),
      RW_reg_12(31 downto 0) => NLW_Local_Bus_Register_B_0_RW_reg_12_UNCONNECTED(31 downto 0),
      RW_reg_13(31 downto 0) => NLW_Local_Bus_Register_B_0_RW_reg_13_UNCONNECTED(31 downto 0),
      RW_reg_14(31 downto 0) => NLW_Local_Bus_Register_B_0_RW_reg_14_UNCONNECTED(31 downto 0),
      RW_reg_15(31 downto 0) => NLW_Local_Bus_Register_B_0_RW_reg_15_UNCONNECTED(31 downto 0),
      RW_reg_16(31 downto 0) => Local_Bus_Register_B_0_RW_reg_16(31 downto 0),
      RW_reg_2(31 downto 0) => NLW_Local_Bus_Register_B_0_RW_reg_2_UNCONNECTED(31 downto 0),
      RW_reg_3(31 downto 0) => NLW_Local_Bus_Register_B_0_RW_reg_3_UNCONNECTED(31 downto 0),
      RW_reg_4(31 downto 0) => NLW_Local_Bus_Register_B_0_RW_reg_4_UNCONNECTED(31 downto 0),
      RW_reg_5(31 downto 0) => Local_Bus_Register_B_0_RW_reg_5(31 downto 0),
      RW_reg_6(31 downto 0) => NLW_Local_Bus_Register_B_0_RW_reg_6_UNCONNECTED(31 downto 0),
      RW_reg_7(31 downto 0) => NLW_Local_Bus_Register_B_0_RW_reg_7_UNCONNECTED(31 downto 0),
      RW_reg_8(31 downto 0) => NLW_Local_Bus_Register_B_0_RW_reg_8_UNCONNECTED(31 downto 0),
      RW_reg_9(31 downto 0) => Local_Bus_Register_B_0_RW_reg_9(31 downto 0),
      lbus_in_address(31 downto 0) => AXI4_Lite_Slave_0_lbus_out_address(31 downto 0),
      lbus_in_data(31 downto 0) => AXI4_Lite_Slave_0_lbus_out_data(31 downto 0),
      lbus_in_write_strobe => AXI4_Lite_Slave_0_lbus_out_strobe,
      lbus_out_addr_OOR => Local_Bus_Register_B_0_lbus_out_addr_OOR,
      lbus_out_complete => Local_Bus_Register_B_0_lbus_out_op_success,
      lbus_out_data(31 downto 0) => Local_Bus_Register_B_0_lbus_out_data(31 downto 0),
      s_axi_aclk => s_axi_aclk_1,
      s_axi_aresentn => s_axi_aresentn_1
    );
MEMS_Microphone: entity work.MEMS_Microphone_imp_5MCUJ0
     port map (
      Din(31 downto 0) => Local_Bus_Register_B_0_RW_reg_9(31 downto 0),
      Din1(31 downto 0) => Local_Bus_Register_B_0_RW_reg_11(31 downto 0),
      FCLK_CLK0 => s_axi_aclk_1,
      Microphone_CS => MEMS_Microphone_Microphone_CS,
      Microphone_MISO => Microphone_MISO_1,
      Microphone_SCK => MEMS_Microphone_Microphone_SCK,
      PERIOD(31 downto 0) => Local_Bus_Register_B_0_RW_reg_10(31 downto 0),
      dout(14 downto 0) => MEMS_Microphone_dout(14 downto 0),
      s_axi_aresentn => s_axi_aresentn_1
    );
SSD_Controller: entity work.SSD_Controller_imp_7PZX22
     port map (
      Din(31 downto 0) => Local_Bus_Register_B_0_RW_reg_5(31 downto 0),
      FCLK_CLK0 => s_axi_aclk_1,
      SSD_VEC(7 downto 0) => SSD_Controller_SSD_VEC(7 downto 0),
      peripheral_aresetn => s_axi_aresentn_1
    );
UART: entity work.UART_imp_2MWFNC
     port map (
      Din(31 downto 0) => Local_Bus_Register_B_0_RW_reg_16(31 downto 0),
      Tx_UART => UART_Tx_UART,
      dout(1 downto 0) => UART_dout(1 downto 0),
      s_axi_aclk => s_axi_aclk_1,
      s_axi_aresentn => s_axi_aresentn_1
    );
debugger: entity work.debugger_imp_1QXV2S6
     port map (
      FCLK_CLK0 => s_axi_aclk_1,
      M00_AXI_araddr(31 downto 0) => Conn1_ARADDR(31 downto 0),
      M00_AXI_arready(0) => Conn1_ARREADY,
      M00_AXI_arvalid(0) => Conn1_ARVALID(0),
      M00_AXI_awaddr(31 downto 0) => Conn1_AWADDR(31 downto 0),
      M00_AXI_awready(0) => Conn1_AWREADY,
      M00_AXI_awvalid(0) => Conn1_AWVALID(0),
      M00_AXI_bready(0) => Conn1_BREADY(0),
      M00_AXI_bresp(1 downto 0) => Conn1_BRESP(1 downto 0),
      M00_AXI_bvalid(0) => Conn1_BVALID,
      M00_AXI_rdata(31 downto 0) => Conn1_RDATA(31 downto 0),
      M00_AXI_rready(0) => Conn1_RREADY(0),
      M00_AXI_rresp(1 downto 0) => Conn1_RRESP(1 downto 0),
      M00_AXI_rvalid(0) => Conn1_RVALID,
      M00_AXI_wdata(31 downto 0) => Conn1_WDATA(31 downto 0),
      M00_AXI_wready(0) => Conn1_WREADY,
      M00_AXI_wstrb(3 downto 0) => Conn1_WSTRB(3 downto 0),
      M00_AXI_wvalid(0) => Conn1_WVALID(0),
      peripheral_aresetn => s_axi_aresentn_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design_ps7_0_axi_periph_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_ACLK : in STD_LOGIC;
    M01_ARESETN : in STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC
  );
end Zynq_Design_ps7_0_axi_periph_0;

architecture STRUCTURE of Zynq_Design_ps7_0_axi_periph_0 is
  component Zynq_Design_xbar_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component Zynq_Design_xbar_0;
  signal m00_couplers_to_ps7_0_axi_periph_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps7_0_axi_periph_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps7_0_axi_periph_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps7_0_axi_periph_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps7_0_axi_periph_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps7_0_axi_periph_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m00_couplers_to_ps7_0_axi_periph_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal m00_couplers_to_ps7_0_axi_periph_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_ps7_0_axi_periph_ARADDR : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_ps7_0_axi_periph_ARVALID : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_AWADDR : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_ps7_0_axi_periph_AWVALID : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_BREADY : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_ps7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_RREADY : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m01_couplers_to_ps7_0_axi_periph_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_ps7_0_axi_periph_WDATA : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m01_couplers_to_ps7_0_axi_periph_WSTRB : STD_LOGIC;
  signal m01_couplers_to_ps7_0_axi_periph_WVALID : STD_LOGIC;
  signal ps7_0_axi_periph_ACLK_net : STD_LOGIC;
  signal ps7_0_axi_periph_ARESETN_net : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_ARVALID : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_AWVALID : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_BREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_BVALID : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_RLAST : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_RREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_RVALID : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_WLAST : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_WREADY : STD_LOGIC;
  signal ps7_0_axi_periph_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps7_0_axi_periph_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_ARVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal s00_couplers_to_xbar_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_AWVALID : STD_LOGIC;
  signal s00_couplers_to_xbar_BREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_RREADY : STD_LOGIC;
  signal s00_couplers_to_xbar_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_xbar_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_xbar_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s00_couplers_to_xbar_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s00_couplers_to_xbar_WVALID : STD_LOGIC;
  signal xbar_to_m00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xbar_to_m00_couplers_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xbar_to_m00_couplers_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xbar_to_m00_couplers_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xbar_to_m00_couplers_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xbar_to_m01_couplers_ARADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_ARPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_ARREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_ARVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_AWADDR : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_AWPROT : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal xbar_to_m01_couplers_AWREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_AWVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_BRESP : STD_LOGIC;
  signal xbar_to_m01_couplers_BVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_RDATA : STD_LOGIC;
  signal xbar_to_m01_couplers_RREADY : STD_LOGIC_VECTOR ( 1 to 1 );
  signal xbar_to_m01_couplers_RRESP : STD_LOGIC;
  signal xbar_to_m01_couplers_RVALID : STD_LOGIC;
  signal xbar_to_m01_couplers_WDATA : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal xbar_to_m01_couplers_WREADY : STD_LOGIC;
  signal xbar_to_m01_couplers_WSTRB : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal xbar_to_m01_couplers_WVALID : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_m01_couplers_M_AXI_arprot_UNCONNECTED : STD_LOGIC;
  signal NLW_m01_couplers_M_AXI_awprot_UNCONNECTED : STD_LOGIC;
begin
  M00_AXI_araddr(31 downto 0) <= m00_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0);
  M00_AXI_arprot(2 downto 0) <= m00_couplers_to_ps7_0_axi_periph_ARPROT(2 downto 0);
  M00_AXI_arvalid(0) <= m00_couplers_to_ps7_0_axi_periph_ARVALID(0);
  M00_AXI_awaddr(31 downto 0) <= m00_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0);
  M00_AXI_awprot(2 downto 0) <= m00_couplers_to_ps7_0_axi_periph_AWPROT(2 downto 0);
  M00_AXI_awvalid(0) <= m00_couplers_to_ps7_0_axi_periph_AWVALID(0);
  M00_AXI_bready(0) <= m00_couplers_to_ps7_0_axi_periph_BREADY(0);
  M00_AXI_rready(0) <= m00_couplers_to_ps7_0_axi_periph_RREADY(0);
  M00_AXI_wdata(31 downto 0) <= m00_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0);
  M00_AXI_wstrb(3 downto 0) <= m00_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0);
  M00_AXI_wvalid(0) <= m00_couplers_to_ps7_0_axi_periph_WVALID(0);
  M01_AXI_araddr(31) <= m01_couplers_to_ps7_0_axi_periph_ARADDR;
  M01_AXI_araddr(30) <= m01_couplers_to_ps7_0_axi_periph_ARADDR;
  M01_AXI_araddr(29) <= m01_couplers_to_ps7_0_axi_periph_ARADDR;
  M01_AXI_araddr(28) <= m01_couplers_to_ps7_0_axi_periph_ARADDR;
  M01_AXI_araddr(27) <= m01_couplers_to_ps7_0_axi_periph_ARADDR;
  M01_AXI_araddr(26) <= m01_couplers_to_ps7_0_axi_periph_ARADDR;
  M01_AXI_araddr(25) <= m01_couplers_to_ps7_0_axi_periph_ARADDR;
  M01_AXI_araddr(24) <= m01_couplers_to_ps7_0_axi_periph_ARADDR;
  M01_AXI_araddr(23) <= m01_couplers_to_ps7_0_axi_periph_ARADDR;
  M01_AXI_araddr(22) <= m01_couplers_to_ps7_0_axi_periph_ARADDR;
  M01_AXI_araddr(21) <= m01_couplers_to_ps7_0_axi_periph_ARADDR;
  M01_AXI_araddr(20) <= m01_couplers_to_ps7_0_axi_periph_ARADDR;
  M01_AXI_araddr(19) <= m01_couplers_to_ps7_0_axi_periph_ARADDR;
  M01_AXI_araddr(18) <= m01_couplers_to_ps7_0_axi_periph_ARADDR;
  M01_AXI_araddr(17) <= m01_couplers_to_ps7_0_axi_periph_ARADDR;
  M01_AXI_araddr(16) <= m01_couplers_to_ps7_0_axi_periph_ARADDR;
  M01_AXI_araddr(15) <= m01_couplers_to_ps7_0_axi_periph_ARADDR;
  M01_AXI_araddr(14) <= m01_couplers_to_ps7_0_axi_periph_ARADDR;
  M01_AXI_araddr(13) <= m01_couplers_to_ps7_0_axi_periph_ARADDR;
  M01_AXI_araddr(12) <= m01_couplers_to_ps7_0_axi_periph_ARADDR;
  M01_AXI_araddr(11) <= m01_couplers_to_ps7_0_axi_periph_ARADDR;
  M01_AXI_araddr(10) <= m01_couplers_to_ps7_0_axi_periph_ARADDR;
  M01_AXI_araddr(9) <= m01_couplers_to_ps7_0_axi_periph_ARADDR;
  M01_AXI_araddr(8) <= m01_couplers_to_ps7_0_axi_periph_ARADDR;
  M01_AXI_araddr(7) <= m01_couplers_to_ps7_0_axi_periph_ARADDR;
  M01_AXI_araddr(6) <= m01_couplers_to_ps7_0_axi_periph_ARADDR;
  M01_AXI_araddr(5) <= m01_couplers_to_ps7_0_axi_periph_ARADDR;
  M01_AXI_araddr(4) <= m01_couplers_to_ps7_0_axi_periph_ARADDR;
  M01_AXI_araddr(3) <= m01_couplers_to_ps7_0_axi_periph_ARADDR;
  M01_AXI_araddr(2) <= m01_couplers_to_ps7_0_axi_periph_ARADDR;
  M01_AXI_araddr(1) <= m01_couplers_to_ps7_0_axi_periph_ARADDR;
  M01_AXI_araddr(0) <= m01_couplers_to_ps7_0_axi_periph_ARADDR;
  M01_AXI_arvalid(0) <= m01_couplers_to_ps7_0_axi_periph_ARVALID;
  M01_AXI_awaddr(31) <= m01_couplers_to_ps7_0_axi_periph_AWADDR;
  M01_AXI_awaddr(30) <= m01_couplers_to_ps7_0_axi_periph_AWADDR;
  M01_AXI_awaddr(29) <= m01_couplers_to_ps7_0_axi_periph_AWADDR;
  M01_AXI_awaddr(28) <= m01_couplers_to_ps7_0_axi_periph_AWADDR;
  M01_AXI_awaddr(27) <= m01_couplers_to_ps7_0_axi_periph_AWADDR;
  M01_AXI_awaddr(26) <= m01_couplers_to_ps7_0_axi_periph_AWADDR;
  M01_AXI_awaddr(25) <= m01_couplers_to_ps7_0_axi_periph_AWADDR;
  M01_AXI_awaddr(24) <= m01_couplers_to_ps7_0_axi_periph_AWADDR;
  M01_AXI_awaddr(23) <= m01_couplers_to_ps7_0_axi_periph_AWADDR;
  M01_AXI_awaddr(22) <= m01_couplers_to_ps7_0_axi_periph_AWADDR;
  M01_AXI_awaddr(21) <= m01_couplers_to_ps7_0_axi_periph_AWADDR;
  M01_AXI_awaddr(20) <= m01_couplers_to_ps7_0_axi_periph_AWADDR;
  M01_AXI_awaddr(19) <= m01_couplers_to_ps7_0_axi_periph_AWADDR;
  M01_AXI_awaddr(18) <= m01_couplers_to_ps7_0_axi_periph_AWADDR;
  M01_AXI_awaddr(17) <= m01_couplers_to_ps7_0_axi_periph_AWADDR;
  M01_AXI_awaddr(16) <= m01_couplers_to_ps7_0_axi_periph_AWADDR;
  M01_AXI_awaddr(15) <= m01_couplers_to_ps7_0_axi_periph_AWADDR;
  M01_AXI_awaddr(14) <= m01_couplers_to_ps7_0_axi_periph_AWADDR;
  M01_AXI_awaddr(13) <= m01_couplers_to_ps7_0_axi_periph_AWADDR;
  M01_AXI_awaddr(12) <= m01_couplers_to_ps7_0_axi_periph_AWADDR;
  M01_AXI_awaddr(11) <= m01_couplers_to_ps7_0_axi_periph_AWADDR;
  M01_AXI_awaddr(10) <= m01_couplers_to_ps7_0_axi_periph_AWADDR;
  M01_AXI_awaddr(9) <= m01_couplers_to_ps7_0_axi_periph_AWADDR;
  M01_AXI_awaddr(8) <= m01_couplers_to_ps7_0_axi_periph_AWADDR;
  M01_AXI_awaddr(7) <= m01_couplers_to_ps7_0_axi_periph_AWADDR;
  M01_AXI_awaddr(6) <= m01_couplers_to_ps7_0_axi_periph_AWADDR;
  M01_AXI_awaddr(5) <= m01_couplers_to_ps7_0_axi_periph_AWADDR;
  M01_AXI_awaddr(4) <= m01_couplers_to_ps7_0_axi_periph_AWADDR;
  M01_AXI_awaddr(3) <= m01_couplers_to_ps7_0_axi_periph_AWADDR;
  M01_AXI_awaddr(2) <= m01_couplers_to_ps7_0_axi_periph_AWADDR;
  M01_AXI_awaddr(1) <= m01_couplers_to_ps7_0_axi_periph_AWADDR;
  M01_AXI_awaddr(0) <= m01_couplers_to_ps7_0_axi_periph_AWADDR;
  M01_AXI_awvalid(0) <= m01_couplers_to_ps7_0_axi_periph_AWVALID;
  M01_AXI_bready(0) <= m01_couplers_to_ps7_0_axi_periph_BREADY;
  M01_AXI_rready(0) <= m01_couplers_to_ps7_0_axi_periph_RREADY;
  M01_AXI_wdata(31) <= m01_couplers_to_ps7_0_axi_periph_WDATA;
  M01_AXI_wdata(30) <= m01_couplers_to_ps7_0_axi_periph_WDATA;
  M01_AXI_wdata(29) <= m01_couplers_to_ps7_0_axi_periph_WDATA;
  M01_AXI_wdata(28) <= m01_couplers_to_ps7_0_axi_periph_WDATA;
  M01_AXI_wdata(27) <= m01_couplers_to_ps7_0_axi_periph_WDATA;
  M01_AXI_wdata(26) <= m01_couplers_to_ps7_0_axi_periph_WDATA;
  M01_AXI_wdata(25) <= m01_couplers_to_ps7_0_axi_periph_WDATA;
  M01_AXI_wdata(24) <= m01_couplers_to_ps7_0_axi_periph_WDATA;
  M01_AXI_wdata(23) <= m01_couplers_to_ps7_0_axi_periph_WDATA;
  M01_AXI_wdata(22) <= m01_couplers_to_ps7_0_axi_periph_WDATA;
  M01_AXI_wdata(21) <= m01_couplers_to_ps7_0_axi_periph_WDATA;
  M01_AXI_wdata(20) <= m01_couplers_to_ps7_0_axi_periph_WDATA;
  M01_AXI_wdata(19) <= m01_couplers_to_ps7_0_axi_periph_WDATA;
  M01_AXI_wdata(18) <= m01_couplers_to_ps7_0_axi_periph_WDATA;
  M01_AXI_wdata(17) <= m01_couplers_to_ps7_0_axi_periph_WDATA;
  M01_AXI_wdata(16) <= m01_couplers_to_ps7_0_axi_periph_WDATA;
  M01_AXI_wdata(15) <= m01_couplers_to_ps7_0_axi_periph_WDATA;
  M01_AXI_wdata(14) <= m01_couplers_to_ps7_0_axi_periph_WDATA;
  M01_AXI_wdata(13) <= m01_couplers_to_ps7_0_axi_periph_WDATA;
  M01_AXI_wdata(12) <= m01_couplers_to_ps7_0_axi_periph_WDATA;
  M01_AXI_wdata(11) <= m01_couplers_to_ps7_0_axi_periph_WDATA;
  M01_AXI_wdata(10) <= m01_couplers_to_ps7_0_axi_periph_WDATA;
  M01_AXI_wdata(9) <= m01_couplers_to_ps7_0_axi_periph_WDATA;
  M01_AXI_wdata(8) <= m01_couplers_to_ps7_0_axi_periph_WDATA;
  M01_AXI_wdata(7) <= m01_couplers_to_ps7_0_axi_periph_WDATA;
  M01_AXI_wdata(6) <= m01_couplers_to_ps7_0_axi_periph_WDATA;
  M01_AXI_wdata(5) <= m01_couplers_to_ps7_0_axi_periph_WDATA;
  M01_AXI_wdata(4) <= m01_couplers_to_ps7_0_axi_periph_WDATA;
  M01_AXI_wdata(3) <= m01_couplers_to_ps7_0_axi_periph_WDATA;
  M01_AXI_wdata(2) <= m01_couplers_to_ps7_0_axi_periph_WDATA;
  M01_AXI_wdata(1) <= m01_couplers_to_ps7_0_axi_periph_WDATA;
  M01_AXI_wdata(0) <= m01_couplers_to_ps7_0_axi_periph_WDATA;
  M01_AXI_wstrb(3) <= m01_couplers_to_ps7_0_axi_periph_WSTRB;
  M01_AXI_wstrb(2) <= m01_couplers_to_ps7_0_axi_periph_WSTRB;
  M01_AXI_wstrb(1) <= m01_couplers_to_ps7_0_axi_periph_WSTRB;
  M01_AXI_wstrb(0) <= m01_couplers_to_ps7_0_axi_periph_WSTRB;
  M01_AXI_wvalid(0) <= m01_couplers_to_ps7_0_axi_periph_WVALID;
  S00_AXI_arready <= ps7_0_axi_periph_to_s00_couplers_ARREADY;
  S00_AXI_awready <= ps7_0_axi_periph_to_s00_couplers_AWREADY;
  S00_AXI_bid(11 downto 0) <= ps7_0_axi_periph_to_s00_couplers_BID(11 downto 0);
  S00_AXI_bresp(1 downto 0) <= ps7_0_axi_periph_to_s00_couplers_BRESP(1 downto 0);
  S00_AXI_bvalid <= ps7_0_axi_periph_to_s00_couplers_BVALID;
  S00_AXI_rdata(31 downto 0) <= ps7_0_axi_periph_to_s00_couplers_RDATA(31 downto 0);
  S00_AXI_rid(11 downto 0) <= ps7_0_axi_periph_to_s00_couplers_RID(11 downto 0);
  S00_AXI_rlast <= ps7_0_axi_periph_to_s00_couplers_RLAST;
  S00_AXI_rresp(1 downto 0) <= ps7_0_axi_periph_to_s00_couplers_RRESP(1 downto 0);
  S00_AXI_rvalid <= ps7_0_axi_periph_to_s00_couplers_RVALID;
  S00_AXI_wready <= ps7_0_axi_periph_to_s00_couplers_WREADY;
  m00_couplers_to_ps7_0_axi_periph_ARREADY(0) <= M00_AXI_arready(0);
  m00_couplers_to_ps7_0_axi_periph_AWREADY(0) <= M00_AXI_awready(0);
  m00_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  m00_couplers_to_ps7_0_axi_periph_BVALID(0) <= M00_AXI_bvalid(0);
  m00_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  m00_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  m00_couplers_to_ps7_0_axi_periph_RVALID(0) <= M00_AXI_rvalid(0);
  m00_couplers_to_ps7_0_axi_periph_WREADY(0) <= M00_AXI_wready(0);
  m01_couplers_to_ps7_0_axi_periph_ARREADY(0) <= M01_AXI_arready(0);
  m01_couplers_to_ps7_0_axi_periph_AWREADY(0) <= M01_AXI_awready(0);
  m01_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0) <= M01_AXI_bresp(1 downto 0);
  m01_couplers_to_ps7_0_axi_periph_BVALID(0) <= M01_AXI_bvalid(0);
  m01_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0) <= M01_AXI_rdata(31 downto 0);
  m01_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0) <= M01_AXI_rresp(1 downto 0);
  m01_couplers_to_ps7_0_axi_periph_RVALID(0) <= M01_AXI_rvalid(0);
  m01_couplers_to_ps7_0_axi_periph_WREADY(0) <= M01_AXI_wready(0);
  ps7_0_axi_periph_ACLK_net <= ACLK;
  ps7_0_axi_periph_ARESETN_net <= ARESETN;
  ps7_0_axi_periph_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARID(11 downto 0) <= S00_AXI_arid(11 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARLEN(3 downto 0) <= S00_AXI_arlen(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARLOCK(1 downto 0) <= S00_AXI_arlock(1 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARQOS(3 downto 0) <= S00_AXI_arqos(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  ps7_0_axi_periph_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  ps7_0_axi_periph_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWID(11 downto 0) <= S00_AXI_awid(11 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWLEN(3 downto 0) <= S00_AXI_awlen(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWLOCK(1 downto 0) <= S00_AXI_awlock(1 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWQOS(3 downto 0) <= S00_AXI_awqos(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  ps7_0_axi_periph_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  ps7_0_axi_periph_to_s00_couplers_BREADY <= S00_AXI_bready;
  ps7_0_axi_periph_to_s00_couplers_RREADY <= S00_AXI_rready;
  ps7_0_axi_periph_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  ps7_0_axi_periph_to_s00_couplers_WID(11 downto 0) <= S00_AXI_wid(11 downto 0);
  ps7_0_axi_periph_to_s00_couplers_WLAST <= S00_AXI_wlast;
  ps7_0_axi_periph_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  ps7_0_axi_periph_to_s00_couplers_WVALID <= S00_AXI_wvalid;
m00_couplers: entity work.m00_couplers_imp_1GHGV4D
     port map (
      M_ACLK => ps7_0_axi_periph_ACLK_net,
      M_ARESETN => ps7_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => m00_couplers_to_ps7_0_axi_periph_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => m00_couplers_to_ps7_0_axi_periph_ARPROT(2 downto 0),
      M_AXI_arready(0) => m00_couplers_to_ps7_0_axi_periph_ARREADY(0),
      M_AXI_arvalid(0) => m00_couplers_to_ps7_0_axi_periph_ARVALID(0),
      M_AXI_awaddr(31 downto 0) => m00_couplers_to_ps7_0_axi_periph_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => m00_couplers_to_ps7_0_axi_periph_AWPROT(2 downto 0),
      M_AXI_awready(0) => m00_couplers_to_ps7_0_axi_periph_AWREADY(0),
      M_AXI_awvalid(0) => m00_couplers_to_ps7_0_axi_periph_AWVALID(0),
      M_AXI_bready(0) => m00_couplers_to_ps7_0_axi_periph_BREADY(0),
      M_AXI_bresp(1 downto 0) => m00_couplers_to_ps7_0_axi_periph_BRESP(1 downto 0),
      M_AXI_bvalid(0) => m00_couplers_to_ps7_0_axi_periph_BVALID(0),
      M_AXI_rdata(31 downto 0) => m00_couplers_to_ps7_0_axi_periph_RDATA(31 downto 0),
      M_AXI_rready(0) => m00_couplers_to_ps7_0_axi_periph_RREADY(0),
      M_AXI_rresp(1 downto 0) => m00_couplers_to_ps7_0_axi_periph_RRESP(1 downto 0),
      M_AXI_rvalid(0) => m00_couplers_to_ps7_0_axi_periph_RVALID(0),
      M_AXI_wdata(31 downto 0) => m00_couplers_to_ps7_0_axi_periph_WDATA(31 downto 0),
      M_AXI_wready(0) => m00_couplers_to_ps7_0_axi_periph_WREADY(0),
      M_AXI_wstrb(3 downto 0) => m00_couplers_to_ps7_0_axi_periph_WSTRB(3 downto 0),
      M_AXI_wvalid(0) => m00_couplers_to_ps7_0_axi_periph_WVALID(0),
      S_ACLK => ps7_0_axi_periph_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      S_AXI_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      S_AXI_arready(0) => xbar_to_m00_couplers_ARREADY(0),
      S_AXI_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      S_AXI_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      S_AXI_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      S_AXI_awready(0) => xbar_to_m00_couplers_AWREADY(0),
      S_AXI_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      S_AXI_bready(0) => xbar_to_m00_couplers_BREADY(0),
      S_AXI_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid(0) => xbar_to_m00_couplers_BVALID(0),
      S_AXI_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      S_AXI_rready(0) => xbar_to_m00_couplers_RREADY(0),
      S_AXI_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid(0) => xbar_to_m00_couplers_RVALID(0),
      S_AXI_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      S_AXI_wready(0) => xbar_to_m00_couplers_WREADY(0),
      S_AXI_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid(0) => xbar_to_m00_couplers_WVALID(0)
    );
m01_couplers: entity work.m01_couplers_imp_9P48IB
     port map (
      M_ACLK => ps7_0_axi_periph_ACLK_net,
      M_ARESETN => ps7_0_axi_periph_ARESETN_net,
      M_AXI_araddr => m01_couplers_to_ps7_0_axi_periph_ARADDR,
      M_AXI_arprot => NLW_m01_couplers_M_AXI_arprot_UNCONNECTED,
      M_AXI_arready => m01_couplers_to_ps7_0_axi_periph_ARREADY(0),
      M_AXI_arvalid => m01_couplers_to_ps7_0_axi_periph_ARVALID,
      M_AXI_awaddr => m01_couplers_to_ps7_0_axi_periph_AWADDR,
      M_AXI_awprot => NLW_m01_couplers_M_AXI_awprot_UNCONNECTED,
      M_AXI_awready => m01_couplers_to_ps7_0_axi_periph_AWREADY(0),
      M_AXI_awvalid => m01_couplers_to_ps7_0_axi_periph_AWVALID,
      M_AXI_bready => m01_couplers_to_ps7_0_axi_periph_BREADY,
      M_AXI_bresp => m01_couplers_to_ps7_0_axi_periph_BRESP(0),
      M_AXI_bvalid => m01_couplers_to_ps7_0_axi_periph_BVALID(0),
      M_AXI_rdata => m01_couplers_to_ps7_0_axi_periph_RDATA(0),
      M_AXI_rready => m01_couplers_to_ps7_0_axi_periph_RREADY,
      M_AXI_rresp => m01_couplers_to_ps7_0_axi_periph_RRESP(0),
      M_AXI_rvalid => m01_couplers_to_ps7_0_axi_periph_RVALID(0),
      M_AXI_wdata => m01_couplers_to_ps7_0_axi_periph_WDATA,
      M_AXI_wready => m01_couplers_to_ps7_0_axi_periph_WREADY(0),
      M_AXI_wstrb => m01_couplers_to_ps7_0_axi_periph_WSTRB,
      M_AXI_wvalid => m01_couplers_to_ps7_0_axi_periph_WVALID,
      S_ACLK => ps7_0_axi_periph_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_ARESETN_net,
      S_AXI_araddr => xbar_to_m01_couplers_ARADDR(32),
      S_AXI_arprot => xbar_to_m01_couplers_ARPROT(3),
      S_AXI_arready => xbar_to_m01_couplers_ARREADY,
      S_AXI_arvalid => xbar_to_m01_couplers_ARVALID(1),
      S_AXI_awaddr => xbar_to_m01_couplers_AWADDR(32),
      S_AXI_awprot => xbar_to_m01_couplers_AWPROT(3),
      S_AXI_awready => xbar_to_m01_couplers_AWREADY,
      S_AXI_awvalid => xbar_to_m01_couplers_AWVALID(1),
      S_AXI_bready => xbar_to_m01_couplers_BREADY(1),
      S_AXI_bresp => xbar_to_m01_couplers_BRESP,
      S_AXI_bvalid => xbar_to_m01_couplers_BVALID,
      S_AXI_rdata => xbar_to_m01_couplers_RDATA,
      S_AXI_rready => xbar_to_m01_couplers_RREADY(1),
      S_AXI_rresp => xbar_to_m01_couplers_RRESP,
      S_AXI_rvalid => xbar_to_m01_couplers_RVALID,
      S_AXI_wdata => xbar_to_m01_couplers_WDATA(32),
      S_AXI_wready => xbar_to_m01_couplers_WREADY,
      S_AXI_wstrb => xbar_to_m01_couplers_WSTRB(4),
      S_AXI_wvalid => xbar_to_m01_couplers_WVALID(1)
    );
s00_couplers: entity work.s00_couplers_imp_MIOAL9
     port map (
      M_ACLK => ps7_0_axi_periph_ACLK_net,
      M_ARESETN => ps7_0_axi_periph_ARESETN_net,
      M_AXI_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      M_AXI_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      M_AXI_arready => s00_couplers_to_xbar_ARREADY(0),
      M_AXI_arvalid => s00_couplers_to_xbar_ARVALID,
      M_AXI_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      M_AXI_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      M_AXI_awready => s00_couplers_to_xbar_AWREADY(0),
      M_AXI_awvalid => s00_couplers_to_xbar_AWVALID,
      M_AXI_bready => s00_couplers_to_xbar_BREADY,
      M_AXI_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      M_AXI_bvalid => s00_couplers_to_xbar_BVALID(0),
      M_AXI_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      M_AXI_rready => s00_couplers_to_xbar_RREADY,
      M_AXI_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      M_AXI_rvalid => s00_couplers_to_xbar_RVALID(0),
      M_AXI_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      M_AXI_wready => s00_couplers_to_xbar_WREADY(0),
      M_AXI_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      M_AXI_wvalid => s00_couplers_to_xbar_WVALID,
      S_ACLK => ps7_0_axi_periph_ACLK_net,
      S_ARESETN => ps7_0_axi_periph_ARESETN_net,
      S_AXI_araddr(31 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARADDR(31 downto 0),
      S_AXI_arburst(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARBURST(1 downto 0),
      S_AXI_arcache(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARCACHE(3 downto 0),
      S_AXI_arid(11 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARID(11 downto 0),
      S_AXI_arlen(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARLEN(3 downto 0),
      S_AXI_arlock(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARLOCK(1 downto 0),
      S_AXI_arprot(2 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARPROT(2 downto 0),
      S_AXI_arqos(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARQOS(3 downto 0),
      S_AXI_arready => ps7_0_axi_periph_to_s00_couplers_ARREADY,
      S_AXI_arsize(2 downto 0) => ps7_0_axi_periph_to_s00_couplers_ARSIZE(2 downto 0),
      S_AXI_arvalid => ps7_0_axi_periph_to_s00_couplers_ARVALID,
      S_AXI_awaddr(31 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWADDR(31 downto 0),
      S_AXI_awburst(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWBURST(1 downto 0),
      S_AXI_awcache(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWCACHE(3 downto 0),
      S_AXI_awid(11 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWID(11 downto 0),
      S_AXI_awlen(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWLEN(3 downto 0),
      S_AXI_awlock(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWLOCK(1 downto 0),
      S_AXI_awprot(2 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWPROT(2 downto 0),
      S_AXI_awqos(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWQOS(3 downto 0),
      S_AXI_awready => ps7_0_axi_periph_to_s00_couplers_AWREADY,
      S_AXI_awsize(2 downto 0) => ps7_0_axi_periph_to_s00_couplers_AWSIZE(2 downto 0),
      S_AXI_awvalid => ps7_0_axi_periph_to_s00_couplers_AWVALID,
      S_AXI_bid(11 downto 0) => ps7_0_axi_periph_to_s00_couplers_BID(11 downto 0),
      S_AXI_bready => ps7_0_axi_periph_to_s00_couplers_BREADY,
      S_AXI_bresp(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_BRESP(1 downto 0),
      S_AXI_bvalid => ps7_0_axi_periph_to_s00_couplers_BVALID,
      S_AXI_rdata(31 downto 0) => ps7_0_axi_periph_to_s00_couplers_RDATA(31 downto 0),
      S_AXI_rid(11 downto 0) => ps7_0_axi_periph_to_s00_couplers_RID(11 downto 0),
      S_AXI_rlast => ps7_0_axi_periph_to_s00_couplers_RLAST,
      S_AXI_rready => ps7_0_axi_periph_to_s00_couplers_RREADY,
      S_AXI_rresp(1 downto 0) => ps7_0_axi_periph_to_s00_couplers_RRESP(1 downto 0),
      S_AXI_rvalid => ps7_0_axi_periph_to_s00_couplers_RVALID,
      S_AXI_wdata(31 downto 0) => ps7_0_axi_periph_to_s00_couplers_WDATA(31 downto 0),
      S_AXI_wid(11 downto 0) => ps7_0_axi_periph_to_s00_couplers_WID(11 downto 0),
      S_AXI_wlast => ps7_0_axi_periph_to_s00_couplers_WLAST,
      S_AXI_wready => ps7_0_axi_periph_to_s00_couplers_WREADY,
      S_AXI_wstrb(3 downto 0) => ps7_0_axi_periph_to_s00_couplers_WSTRB(3 downto 0),
      S_AXI_wvalid => ps7_0_axi_periph_to_s00_couplers_WVALID
    );
xbar: component Zynq_Design_xbar_0
     port map (
      aclk => ps7_0_axi_periph_ACLK_net,
      aresetn => ps7_0_axi_periph_ARESETN_net,
      m_axi_araddr(63 downto 32) => xbar_to_m01_couplers_ARADDR(63 downto 32),
      m_axi_araddr(31 downto 0) => xbar_to_m00_couplers_ARADDR(31 downto 0),
      m_axi_arprot(5 downto 3) => xbar_to_m01_couplers_ARPROT(5 downto 3),
      m_axi_arprot(2 downto 0) => xbar_to_m00_couplers_ARPROT(2 downto 0),
      m_axi_arready(1) => xbar_to_m01_couplers_ARREADY,
      m_axi_arready(0) => xbar_to_m00_couplers_ARREADY(0),
      m_axi_arvalid(1) => xbar_to_m01_couplers_ARVALID(1),
      m_axi_arvalid(0) => xbar_to_m00_couplers_ARVALID(0),
      m_axi_awaddr(63 downto 32) => xbar_to_m01_couplers_AWADDR(63 downto 32),
      m_axi_awaddr(31 downto 0) => xbar_to_m00_couplers_AWADDR(31 downto 0),
      m_axi_awprot(5 downto 3) => xbar_to_m01_couplers_AWPROT(5 downto 3),
      m_axi_awprot(2 downto 0) => xbar_to_m00_couplers_AWPROT(2 downto 0),
      m_axi_awready(1) => xbar_to_m01_couplers_AWREADY,
      m_axi_awready(0) => xbar_to_m00_couplers_AWREADY(0),
      m_axi_awvalid(1) => xbar_to_m01_couplers_AWVALID(1),
      m_axi_awvalid(0) => xbar_to_m00_couplers_AWVALID(0),
      m_axi_bready(1) => xbar_to_m01_couplers_BREADY(1),
      m_axi_bready(0) => xbar_to_m00_couplers_BREADY(0),
      m_axi_bresp(3) => xbar_to_m01_couplers_BRESP,
      m_axi_bresp(2) => xbar_to_m01_couplers_BRESP,
      m_axi_bresp(1 downto 0) => xbar_to_m00_couplers_BRESP(1 downto 0),
      m_axi_bvalid(1) => xbar_to_m01_couplers_BVALID,
      m_axi_bvalid(0) => xbar_to_m00_couplers_BVALID(0),
      m_axi_rdata(63) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(62) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(61) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(60) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(59) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(58) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(57) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(56) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(55) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(54) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(53) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(52) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(51) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(50) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(49) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(48) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(47) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(46) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(45) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(44) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(43) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(42) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(41) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(40) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(39) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(38) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(37) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(36) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(35) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(34) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(33) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(32) => xbar_to_m01_couplers_RDATA,
      m_axi_rdata(31 downto 0) => xbar_to_m00_couplers_RDATA(31 downto 0),
      m_axi_rready(1) => xbar_to_m01_couplers_RREADY(1),
      m_axi_rready(0) => xbar_to_m00_couplers_RREADY(0),
      m_axi_rresp(3) => xbar_to_m01_couplers_RRESP,
      m_axi_rresp(2) => xbar_to_m01_couplers_RRESP,
      m_axi_rresp(1 downto 0) => xbar_to_m00_couplers_RRESP(1 downto 0),
      m_axi_rvalid(1) => xbar_to_m01_couplers_RVALID,
      m_axi_rvalid(0) => xbar_to_m00_couplers_RVALID(0),
      m_axi_wdata(63 downto 32) => xbar_to_m01_couplers_WDATA(63 downto 32),
      m_axi_wdata(31 downto 0) => xbar_to_m00_couplers_WDATA(31 downto 0),
      m_axi_wready(1) => xbar_to_m01_couplers_WREADY,
      m_axi_wready(0) => xbar_to_m00_couplers_WREADY(0),
      m_axi_wstrb(7 downto 4) => xbar_to_m01_couplers_WSTRB(7 downto 4),
      m_axi_wstrb(3 downto 0) => xbar_to_m00_couplers_WSTRB(3 downto 0),
      m_axi_wvalid(1) => xbar_to_m01_couplers_WVALID(1),
      m_axi_wvalid(0) => xbar_to_m00_couplers_WVALID(0),
      s_axi_araddr(31 downto 0) => s00_couplers_to_xbar_ARADDR(31 downto 0),
      s_axi_arprot(2 downto 0) => s00_couplers_to_xbar_ARPROT(2 downto 0),
      s_axi_arready(0) => s00_couplers_to_xbar_ARREADY(0),
      s_axi_arvalid(0) => s00_couplers_to_xbar_ARVALID,
      s_axi_awaddr(31 downto 0) => s00_couplers_to_xbar_AWADDR(31 downto 0),
      s_axi_awprot(2 downto 0) => s00_couplers_to_xbar_AWPROT(2 downto 0),
      s_axi_awready(0) => s00_couplers_to_xbar_AWREADY(0),
      s_axi_awvalid(0) => s00_couplers_to_xbar_AWVALID,
      s_axi_bready(0) => s00_couplers_to_xbar_BREADY,
      s_axi_bresp(1 downto 0) => s00_couplers_to_xbar_BRESP(1 downto 0),
      s_axi_bvalid(0) => s00_couplers_to_xbar_BVALID(0),
      s_axi_rdata(31 downto 0) => s00_couplers_to_xbar_RDATA(31 downto 0),
      s_axi_rready(0) => s00_couplers_to_xbar_RREADY,
      s_axi_rresp(1 downto 0) => s00_couplers_to_xbar_RRESP(1 downto 0),
      s_axi_rvalid(0) => s00_couplers_to_xbar_RVALID(0),
      s_axi_wdata(31 downto 0) => s00_couplers_to_xbar_WDATA(31 downto 0),
      s_axi_wready(0) => s00_couplers_to_xbar_WREADY(0),
      s_axi_wstrb(3 downto 0) => s00_couplers_to_xbar_WSTRB(3 downto 0),
      s_axi_wvalid(0) => s00_couplers_to_xbar_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TOP_imp_OPTK1T is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    LED : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Microphone_CS : out STD_LOGIC;
    Microphone_MISO : in STD_LOGIC;
    Microphone_SCK : out STD_LOGIC;
    SSD_VEC : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Tx_UART : out STD_LOGIC;
    reset_rtl : in STD_LOGIC
  );
end TOP_imp_OPTK1T;

architecture STRUCTURE of TOP_imp_OPTK1T is
  signal Conn1_ADDR : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal Conn1_BA : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Conn1_CAS_N : STD_LOGIC;
  signal Conn1_CKE : STD_LOGIC;
  signal Conn1_CK_N : STD_LOGIC;
  signal Conn1_CK_P : STD_LOGIC;
  signal Conn1_CS_N : STD_LOGIC;
  signal Conn1_DM : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_DQ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Conn1_DQS_N : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_DQS_P : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Conn1_ODT : STD_LOGIC;
  signal Conn1_RAS_N : STD_LOGIC;
  signal Conn1_RESET_N : STD_LOGIC;
  signal Conn1_WE_N : STD_LOGIC;
  signal Conn2_DDR_VRN : STD_LOGIC;
  signal Conn2_DDR_VRP : STD_LOGIC;
  signal Conn2_MIO : STD_LOGIC_VECTOR ( 53 downto 0 );
  signal Conn2_PS_CLK : STD_LOGIC;
  signal Conn2_PS_PORB : STD_LOGIC;
  signal Conn2_PS_SRSTB : STD_LOGIC;
  signal Microphone_MISO_1 : STD_LOGIC;
  signal PL_LED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal PL_Microphone_CS : STD_LOGIC;
  signal PL_Microphone_SCK : STD_LOGIC;
  signal PL_SSD_VEC : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal PL_Tx_UART : STD_LOGIC;
  signal PS_FCLK_CLK0 : STD_LOGIC;
  signal PS_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S00_AXI_1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_1_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal S00_AXI_1_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_1_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_ARREADY : STD_LOGIC;
  signal S00_AXI_1_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_1_ARVALID : STD_LOGIC;
  signal S00_AXI_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_1_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal S00_AXI_1_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_1_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_AWREADY : STD_LOGIC;
  signal S00_AXI_1_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal S00_AXI_1_AWVALID : STD_LOGIC;
  signal S00_AXI_1_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal S00_AXI_1_BREADY : STD_LOGIC;
  signal S00_AXI_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_BVALID : STD_LOGIC;
  signal S00_AXI_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_1_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal S00_AXI_1_RLAST : STD_LOGIC;
  signal S00_AXI_1_RREADY : STD_LOGIC;
  signal S00_AXI_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal S00_AXI_1_RVALID : STD_LOGIC;
  signal S00_AXI_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S00_AXI_1_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal S00_AXI_1_WLAST : STD_LOGIC;
  signal S00_AXI_1_WREADY : STD_LOGIC;
  signal S00_AXI_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S00_AXI_1_WVALID : STD_LOGIC;
  signal reset_rtl_1 : STD_LOGIC;
  signal s_axi_1_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_axi_1_ARREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_1_ARVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_1_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_axi_1_AWREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_1_AWVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_1_BREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_1_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s_axi_1_BVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_1_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_axi_1_RREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_1_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s_axi_1_RVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_1_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s_axi_1_WREADY : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_axi_1_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal s_axi_1_WVALID : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_ps7_0_axi_periph_M00_AXI_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_ps7_0_axi_periph_M00_AXI_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_ps7_0_axi_periph_M01_AXI_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_ps7_0_axi_periph_M01_AXI_arvalid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_ps7_0_axi_periph_M01_AXI_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_ps7_0_axi_periph_M01_AXI_awvalid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_ps7_0_axi_periph_M01_AXI_bready_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_ps7_0_axi_periph_M01_AXI_rready_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_ps7_0_axi_periph_M01_AXI_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_ps7_0_axi_periph_M01_AXI_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ps7_0_axi_periph_M01_AXI_wvalid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  LED(3 downto 0) <= PL_LED(3 downto 0);
  Microphone_CS <= PL_Microphone_CS;
  Microphone_MISO_1 <= Microphone_MISO;
  Microphone_SCK <= PL_Microphone_SCK;
  SSD_VEC(7 downto 0) <= PL_SSD_VEC(7 downto 0);
  Tx_UART <= PL_Tx_UART;
  reset_rtl_1 <= reset_rtl;
PL: entity work.PL_imp_1ENBX6M
     port map (
      LED(3 downto 0) => PL_LED(3 downto 0),
      Microphone_CS => PL_Microphone_CS,
      Microphone_MISO => Microphone_MISO_1,
      Microphone_SCK => PL_Microphone_SCK,
      SSD_VEC(7 downto 0) => PL_SSD_VEC(7 downto 0),
      Tx_UART => PL_Tx_UART,
      s_axi_aclk => PS_FCLK_CLK0,
      s_axi_araddr(31 downto 0) => s_axi_1_ARADDR(31 downto 0),
      s_axi_aresentn => PS_peripheral_aresetn(0),
      s_axi_arready(0) => s_axi_1_ARREADY(0),
      s_axi_arvalid(0) => s_axi_1_ARVALID(0),
      s_axi_awaddr(31 downto 0) => s_axi_1_AWADDR(31 downto 0),
      s_axi_awready(0) => s_axi_1_AWREADY(0),
      s_axi_awvalid(0) => s_axi_1_AWVALID(0),
      s_axi_bready(0) => s_axi_1_BREADY(0),
      s_axi_bresp(1 downto 0) => s_axi_1_BRESP(1 downto 0),
      s_axi_bvalid(0) => s_axi_1_BVALID(0),
      s_axi_rdata(31 downto 0) => s_axi_1_RDATA(31 downto 0),
      s_axi_rready(0) => s_axi_1_RREADY(0),
      s_axi_rresp(1 downto 0) => s_axi_1_RRESP(1 downto 0),
      s_axi_rvalid(0) => s_axi_1_RVALID(0),
      s_axi_wdata(31 downto 0) => s_axi_1_WDATA(31 downto 0),
      s_axi_wready(0) => s_axi_1_WREADY(0),
      s_axi_wstrb(3 downto 0) => s_axi_1_WSTRB(3 downto 0),
      s_axi_wvalid(0) => s_axi_1_WVALID(0)
    );
PS: entity work.PS_imp_1JHYKHF
     port map (
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      FCLK_CLK0 => PS_FCLK_CLK0,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      M_AXI_GP0_araddr(31 downto 0) => S00_AXI_1_ARADDR(31 downto 0),
      M_AXI_GP0_arburst(1 downto 0) => S00_AXI_1_ARBURST(1 downto 0),
      M_AXI_GP0_arcache(3 downto 0) => S00_AXI_1_ARCACHE(3 downto 0),
      M_AXI_GP0_arid(11 downto 0) => S00_AXI_1_ARID(11 downto 0),
      M_AXI_GP0_arlen(3 downto 0) => S00_AXI_1_ARLEN(3 downto 0),
      M_AXI_GP0_arlock(1 downto 0) => S00_AXI_1_ARLOCK(1 downto 0),
      M_AXI_GP0_arprot(2 downto 0) => S00_AXI_1_ARPROT(2 downto 0),
      M_AXI_GP0_arqos(3 downto 0) => S00_AXI_1_ARQOS(3 downto 0),
      M_AXI_GP0_arready => S00_AXI_1_ARREADY,
      M_AXI_GP0_arsize(2 downto 0) => S00_AXI_1_ARSIZE(2 downto 0),
      M_AXI_GP0_arvalid => S00_AXI_1_ARVALID,
      M_AXI_GP0_awaddr(31 downto 0) => S00_AXI_1_AWADDR(31 downto 0),
      M_AXI_GP0_awburst(1 downto 0) => S00_AXI_1_AWBURST(1 downto 0),
      M_AXI_GP0_awcache(3 downto 0) => S00_AXI_1_AWCACHE(3 downto 0),
      M_AXI_GP0_awid(11 downto 0) => S00_AXI_1_AWID(11 downto 0),
      M_AXI_GP0_awlen(3 downto 0) => S00_AXI_1_AWLEN(3 downto 0),
      M_AXI_GP0_awlock(1 downto 0) => S00_AXI_1_AWLOCK(1 downto 0),
      M_AXI_GP0_awprot(2 downto 0) => S00_AXI_1_AWPROT(2 downto 0),
      M_AXI_GP0_awqos(3 downto 0) => S00_AXI_1_AWQOS(3 downto 0),
      M_AXI_GP0_awready => S00_AXI_1_AWREADY,
      M_AXI_GP0_awsize(2 downto 0) => S00_AXI_1_AWSIZE(2 downto 0),
      M_AXI_GP0_awvalid => S00_AXI_1_AWVALID,
      M_AXI_GP0_bid(11 downto 0) => S00_AXI_1_BID(11 downto 0),
      M_AXI_GP0_bready => S00_AXI_1_BREADY,
      M_AXI_GP0_bresp(1 downto 0) => S00_AXI_1_BRESP(1 downto 0),
      M_AXI_GP0_bvalid => S00_AXI_1_BVALID,
      M_AXI_GP0_rdata(31 downto 0) => S00_AXI_1_RDATA(31 downto 0),
      M_AXI_GP0_rid(11 downto 0) => S00_AXI_1_RID(11 downto 0),
      M_AXI_GP0_rlast => S00_AXI_1_RLAST,
      M_AXI_GP0_rready => S00_AXI_1_RREADY,
      M_AXI_GP0_rresp(1 downto 0) => S00_AXI_1_RRESP(1 downto 0),
      M_AXI_GP0_rvalid => S00_AXI_1_RVALID,
      M_AXI_GP0_wdata(31 downto 0) => S00_AXI_1_WDATA(31 downto 0),
      M_AXI_GP0_wid(11 downto 0) => S00_AXI_1_WID(11 downto 0),
      M_AXI_GP0_wlast => S00_AXI_1_WLAST,
      M_AXI_GP0_wready => S00_AXI_1_WREADY,
      M_AXI_GP0_wstrb(3 downto 0) => S00_AXI_1_WSTRB(3 downto 0),
      M_AXI_GP0_wvalid => S00_AXI_1_WVALID,
      peripheral_aresetn(0) => PS_peripheral_aresetn(0),
      reset_rtl => reset_rtl_1
    );
ps7_0_axi_periph: entity work.Zynq_Design_ps7_0_axi_periph_0
     port map (
      ACLK => PS_FCLK_CLK0,
      ARESETN => PS_peripheral_aresetn(0),
      M00_ACLK => PS_FCLK_CLK0,
      M00_ARESETN => PS_peripheral_aresetn(0),
      M00_AXI_araddr(31 downto 0) => s_axi_1_ARADDR(31 downto 0),
      M00_AXI_arprot(2 downto 0) => NLW_ps7_0_axi_periph_M00_AXI_arprot_UNCONNECTED(2 downto 0),
      M00_AXI_arready(0) => s_axi_1_ARREADY(0),
      M00_AXI_arvalid(0) => s_axi_1_ARVALID(0),
      M00_AXI_awaddr(31 downto 0) => s_axi_1_AWADDR(31 downto 0),
      M00_AXI_awprot(2 downto 0) => NLW_ps7_0_axi_periph_M00_AXI_awprot_UNCONNECTED(2 downto 0),
      M00_AXI_awready(0) => s_axi_1_AWREADY(0),
      M00_AXI_awvalid(0) => s_axi_1_AWVALID(0),
      M00_AXI_bready(0) => s_axi_1_BREADY(0),
      M00_AXI_bresp(1 downto 0) => s_axi_1_BRESP(1 downto 0),
      M00_AXI_bvalid(0) => s_axi_1_BVALID(0),
      M00_AXI_rdata(31 downto 0) => s_axi_1_RDATA(31 downto 0),
      M00_AXI_rready(0) => s_axi_1_RREADY(0),
      M00_AXI_rresp(1 downto 0) => s_axi_1_RRESP(1 downto 0),
      M00_AXI_rvalid(0) => s_axi_1_RVALID(0),
      M00_AXI_wdata(31 downto 0) => s_axi_1_WDATA(31 downto 0),
      M00_AXI_wready(0) => s_axi_1_WREADY(0),
      M00_AXI_wstrb(3 downto 0) => s_axi_1_WSTRB(3 downto 0),
      M00_AXI_wvalid(0) => s_axi_1_WVALID(0),
      M01_ACLK => PS_FCLK_CLK0,
      M01_ARESETN => PS_peripheral_aresetn(0),
      M01_AXI_araddr(31 downto 0) => NLW_ps7_0_axi_periph_M01_AXI_araddr_UNCONNECTED(31 downto 0),
      M01_AXI_arready(0) => '0',
      M01_AXI_arvalid(0) => NLW_ps7_0_axi_periph_M01_AXI_arvalid_UNCONNECTED(0),
      M01_AXI_awaddr(31 downto 0) => NLW_ps7_0_axi_periph_M01_AXI_awaddr_UNCONNECTED(31 downto 0),
      M01_AXI_awready(0) => '0',
      M01_AXI_awvalid(0) => NLW_ps7_0_axi_periph_M01_AXI_awvalid_UNCONNECTED(0),
      M01_AXI_bready(0) => NLW_ps7_0_axi_periph_M01_AXI_bready_UNCONNECTED(0),
      M01_AXI_bresp(1 downto 0) => B"00",
      M01_AXI_bvalid(0) => '0',
      M01_AXI_rdata(31 downto 0) => B"00000000000000000000000000000000",
      M01_AXI_rready(0) => NLW_ps7_0_axi_periph_M01_AXI_rready_UNCONNECTED(0),
      M01_AXI_rresp(1 downto 0) => B"00",
      M01_AXI_rvalid(0) => '0',
      M01_AXI_wdata(31 downto 0) => NLW_ps7_0_axi_periph_M01_AXI_wdata_UNCONNECTED(31 downto 0),
      M01_AXI_wready(0) => '0',
      M01_AXI_wstrb(3 downto 0) => NLW_ps7_0_axi_periph_M01_AXI_wstrb_UNCONNECTED(3 downto 0),
      M01_AXI_wvalid(0) => NLW_ps7_0_axi_periph_M01_AXI_wvalid_UNCONNECTED(0),
      S00_ACLK => PS_FCLK_CLK0,
      S00_ARESETN => PS_peripheral_aresetn(0),
      S00_AXI_araddr(31 downto 0) => S00_AXI_1_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => S00_AXI_1_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => S00_AXI_1_ARCACHE(3 downto 0),
      S00_AXI_arid(11 downto 0) => S00_AXI_1_ARID(11 downto 0),
      S00_AXI_arlen(3 downto 0) => S00_AXI_1_ARLEN(3 downto 0),
      S00_AXI_arlock(1 downto 0) => S00_AXI_1_ARLOCK(1 downto 0),
      S00_AXI_arprot(2 downto 0) => S00_AXI_1_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => S00_AXI_1_ARQOS(3 downto 0),
      S00_AXI_arready => S00_AXI_1_ARREADY,
      S00_AXI_arsize(2 downto 0) => S00_AXI_1_ARSIZE(2 downto 0),
      S00_AXI_arvalid => S00_AXI_1_ARVALID,
      S00_AXI_awaddr(31 downto 0) => S00_AXI_1_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => S00_AXI_1_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => S00_AXI_1_AWCACHE(3 downto 0),
      S00_AXI_awid(11 downto 0) => S00_AXI_1_AWID(11 downto 0),
      S00_AXI_awlen(3 downto 0) => S00_AXI_1_AWLEN(3 downto 0),
      S00_AXI_awlock(1 downto 0) => S00_AXI_1_AWLOCK(1 downto 0),
      S00_AXI_awprot(2 downto 0) => S00_AXI_1_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => S00_AXI_1_AWQOS(3 downto 0),
      S00_AXI_awready => S00_AXI_1_AWREADY,
      S00_AXI_awsize(2 downto 0) => S00_AXI_1_AWSIZE(2 downto 0),
      S00_AXI_awvalid => S00_AXI_1_AWVALID,
      S00_AXI_bid(11 downto 0) => S00_AXI_1_BID(11 downto 0),
      S00_AXI_bready => S00_AXI_1_BREADY,
      S00_AXI_bresp(1 downto 0) => S00_AXI_1_BRESP(1 downto 0),
      S00_AXI_bvalid => S00_AXI_1_BVALID,
      S00_AXI_rdata(31 downto 0) => S00_AXI_1_RDATA(31 downto 0),
      S00_AXI_rid(11 downto 0) => S00_AXI_1_RID(11 downto 0),
      S00_AXI_rlast => S00_AXI_1_RLAST,
      S00_AXI_rready => S00_AXI_1_RREADY,
      S00_AXI_rresp(1 downto 0) => S00_AXI_1_RRESP(1 downto 0),
      S00_AXI_rvalid => S00_AXI_1_RVALID,
      S00_AXI_wdata(31 downto 0) => S00_AXI_1_WDATA(31 downto 0),
      S00_AXI_wid(11 downto 0) => S00_AXI_1_WID(11 downto 0),
      S00_AXI_wlast => S00_AXI_1_WLAST,
      S00_AXI_wready => S00_AXI_1_WREADY,
      S00_AXI_wstrb(3 downto 0) => S00_AXI_1_WSTRB(3 downto 0),
      S00_AXI_wvalid => S00_AXI_1_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Zynq_Design is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    LED : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Microphone_CS : out STD_LOGIC;
    Microphone_MISO : in STD_LOGIC;
    Microphone_SCK : out STD_LOGIC;
    SSD_VEC : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Tx_UART : out STD_LOGIC;
    reset_rtl : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of Zynq_Design : entity is "Zynq_Design,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Zynq_Design,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=38,numReposBlks=26,numNonXlnxBlks=0,numHierBlks=12,maxHierDepth=3,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=7,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=7,da_board_cnt=4,da_clkrst_cnt=6,da_ps7_cnt=1,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of Zynq_Design : entity is "Zynq_Design.hwdef";
end Zynq_Design;

architecture STRUCTURE of Zynq_Design is
  signal Microphone_MISO_1 : STD_LOGIC;
  signal TOP_DDR_ADDR : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal TOP_DDR_BA : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal TOP_DDR_CAS_N : STD_LOGIC;
  signal TOP_DDR_CKE : STD_LOGIC;
  signal TOP_DDR_CK_N : STD_LOGIC;
  signal TOP_DDR_CK_P : STD_LOGIC;
  signal TOP_DDR_CS_N : STD_LOGIC;
  signal TOP_DDR_DM : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal TOP_DDR_DQ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal TOP_DDR_DQS_N : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal TOP_DDR_DQS_P : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal TOP_DDR_ODT : STD_LOGIC;
  signal TOP_DDR_RAS_N : STD_LOGIC;
  signal TOP_DDR_RESET_N : STD_LOGIC;
  signal TOP_DDR_WE_N : STD_LOGIC;
  signal TOP_FIXED_IO_DDR_VRN : STD_LOGIC;
  signal TOP_FIXED_IO_DDR_VRP : STD_LOGIC;
  signal TOP_FIXED_IO_MIO : STD_LOGIC_VECTOR ( 53 downto 0 );
  signal TOP_FIXED_IO_PS_CLK : STD_LOGIC;
  signal TOP_FIXED_IO_PS_PORB : STD_LOGIC;
  signal TOP_FIXED_IO_PS_SRSTB : STD_LOGIC;
  signal TOP_LED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal TOP_Microphone_CS : STD_LOGIC;
  signal TOP_Microphone_SCK : STD_LOGIC;
  signal TOP_SSD_VEC : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TOP_Tx_UART : STD_LOGIC;
  signal reset_rtl_1 : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of DDR_cas_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CAS_N";
  attribute X_INTERFACE_INFO of DDR_ck_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CK_N";
  attribute X_INTERFACE_INFO of DDR_ck_p : signal is "xilinx.com:interface:ddrx:1.0 DDR CK_P";
  attribute X_INTERFACE_INFO of DDR_cke : signal is "xilinx.com:interface:ddrx:1.0 DDR CKE";
  attribute X_INTERFACE_INFO of DDR_cs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR CS_N";
  attribute X_INTERFACE_INFO of DDR_odt : signal is "xilinx.com:interface:ddrx:1.0 DDR ODT";
  attribute X_INTERFACE_INFO of DDR_ras_n : signal is "xilinx.com:interface:ddrx:1.0 DDR RAS_N";
  attribute X_INTERFACE_INFO of DDR_reset_n : signal is "xilinx.com:interface:ddrx:1.0 DDR RESET_N";
  attribute X_INTERFACE_INFO of DDR_we_n : signal is "xilinx.com:interface:ddrx:1.0 DDR WE_N";
  attribute X_INTERFACE_INFO of FIXED_IO_ddr_vrn : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of FIXED_IO_ddr_vrn : signal is "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false";
  attribute X_INTERFACE_INFO of FIXED_IO_ddr_vrp : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_clk : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_porb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB";
  attribute X_INTERFACE_INFO of FIXED_IO_ps_srstb : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB";
  attribute X_INTERFACE_INFO of reset_rtl : signal is "xilinx.com:signal:reset:1.0 RST.RESET_RTL RST";
  attribute X_INTERFACE_PARAMETER of reset_rtl : signal is "XIL_INTERFACENAME RST.RESET_RTL, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of DDR_addr : signal is "xilinx.com:interface:ddrx:1.0 DDR ADDR";
  attribute X_INTERFACE_PARAMETER of DDR_addr : signal is "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250";
  attribute X_INTERFACE_INFO of DDR_ba : signal is "xilinx.com:interface:ddrx:1.0 DDR BA";
  attribute X_INTERFACE_INFO of DDR_dm : signal is "xilinx.com:interface:ddrx:1.0 DDR DM";
  attribute X_INTERFACE_INFO of DDR_dq : signal is "xilinx.com:interface:ddrx:1.0 DDR DQ";
  attribute X_INTERFACE_INFO of DDR_dqs_n : signal is "xilinx.com:interface:ddrx:1.0 DDR DQS_N";
  attribute X_INTERFACE_INFO of DDR_dqs_p : signal is "xilinx.com:interface:ddrx:1.0 DDR DQS_P";
  attribute X_INTERFACE_INFO of FIXED_IO_mio : signal is "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO";
begin
  LED(3 downto 0) <= TOP_LED(3 downto 0);
  Microphone_CS <= TOP_Microphone_CS;
  Microphone_MISO_1 <= Microphone_MISO;
  Microphone_SCK <= TOP_Microphone_SCK;
  SSD_VEC(7 downto 0) <= TOP_SSD_VEC(7 downto 0);
  Tx_UART <= TOP_Tx_UART;
  reset_rtl_1 <= reset_rtl;
TOP: entity work.TOP_imp_OPTK1T
     port map (
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      LED(3 downto 0) => TOP_LED(3 downto 0),
      Microphone_CS => TOP_Microphone_CS,
      Microphone_MISO => Microphone_MISO_1,
      Microphone_SCK => TOP_Microphone_SCK,
      SSD_VEC(7 downto 0) => TOP_SSD_VEC(7 downto 0),
      Tx_UART => TOP_Tx_UART,
      reset_rtl => reset_rtl_1
    );
end STRUCTURE;
