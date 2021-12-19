--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
--Date        : Tue Jul 14 22:51:44 2020
--Host        : DESKTOP-QSJNSC0 running 64-bit major release  (build 9200)
--Command     : generate_target TOP_BD.bd
--Design      : TOP_BD
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TOP_BD is
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
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of TOP_BD : entity is "TOP_BD,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=TOP_BD,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=6,numReposBlks=6,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=4,numPkgbdBlks=0,bdsource=USER,da_board_cnt=2,da_clkrst_cnt=1,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of TOP_BD : entity is "TOP_BD.hwdef";
end TOP_BD;

architecture STRUCTURE of TOP_BD is
  component TOP_BD_fifo_generator_0_0 is
  port (
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    full : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    empty : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC
  );
  end component TOP_BD_fifo_generator_0_0;
  component TOP_BD_fifo_generator_0_1 is
  port (
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    full : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    empty : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC
  );
  end component TOP_BD_fifo_generator_0_1;
  component TOP_BD_Debouncer_0_0 is
  port (
    CLK100MHz : in STD_LOGIC;
    Reset_In : in STD_LOGIC;
    Reset_Out : out STD_LOGIC
  );
  end component TOP_BD_Debouncer_0_0;
  component TOP_BD_Reset_Controller_0_0 is
  port (
    CLK100MHz : in STD_LOGIC;
    Reset_In : in STD_LOGIC;
    Reset_1 : out STD_LOGIC;
    Reset_2 : out STD_LOGIC;
    Reset_3 : out STD_LOGIC
  );
  end component TOP_BD_Reset_Controller_0_0;
  component TOP_BD_UART_0_0 is
  port (
    CLK100MHz : in STD_LOGIC;
    Tx : out STD_LOGIC;
    Rx : in STD_LOGIC_VECTOR ( 0 to 0 );
    A_RESET : in STD_LOGIC;
    Tx_FIFO_CLK : out STD_LOGIC;
    FIFO_RD : out STD_LOGIC;
    FIFO_IN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    FIFO_AE : in STD_LOGIC;
    FIFO_EM : in STD_LOGIC;
    Rx_FIFO_CLK : out STD_LOGIC;
    FIFO_WT : out STD_LOGIC;
    FIFO_OT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    FIFO_AF : in STD_LOGIC;
    FIFO_FU : in STD_LOGIC
  );
  end component TOP_BD_UART_0_0;
  component TOP_BD_UART_Debug_0_0 is
  port (
    CLK100MHz : in STD_LOGIC;
    Enable : in STD_LOGIC;
    Tx_In : in STD_LOGIC;
    Tx_Out : out STD_LOGIC
  );
  end component TOP_BD_UART_Debug_0_0;
  signal Debouncer_0_Reset_Out : STD_LOGIC;
  signal Net : STD_LOGIC;
  signal Receive_Buffer_almost_empty : STD_LOGIC;
  signal Receive_Buffer_almost_full : STD_LOGIC;
  signal Receive_Buffer_dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Receive_Buffer_empty : STD_LOGIC;
  signal Receive_Buffer_full : STD_LOGIC;
  signal Receive_CLK_1 : STD_LOGIC;
  signal Receive_RD_EN_1 : STD_LOGIC;
  signal Reset_Controller_0_Reset_1 : STD_LOGIC;
  signal Reset_Controller_0_Reset_2 : STD_LOGIC;
  signal Rx_1 : STD_LOGIC;
  signal Transmit_Buffer_almost_full : STD_LOGIC;
  signal Transmit_Buffer_empty : STD_LOGIC;
  signal Transmit_Buffer_full : STD_LOGIC;
  signal Transmit_CLK_1 : STD_LOGIC;
  signal Transmit_IN_1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Transmit_WR_EN_1 : STD_LOGIC;
  signal UART_0_FIFO_OT : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal UART_0_FIFO_WT : STD_LOGIC;
  signal UART_0_Rx_FIFO_CLK : STD_LOGIC;
  signal UART_0_Tx : STD_LOGIC;
  signal UART_0_Tx_FIFO_CLK : STD_LOGIC;
  signal UART_Debug_0_Tx_Out : STD_LOGIC;
  signal UART_Debug_Enable_1 : STD_LOGIC;
  signal fifo_generator_0_almost_empty : STD_LOGIC;
  signal fifo_generator_0_dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal reset_1 : STD_LOGIC;
  signal sys_clock_1 : STD_LOGIC;
  signal NLW_Receive_Buffer_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_Receive_Buffer_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_Reset_Controller_0_Reset_3_UNCONNECTED : STD_LOGIC;
  signal NLW_Transmit_Buffer_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_Transmit_Buffer_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of CLK100MHz : signal is "xilinx.com:signal:clock:1.0 CLK.CLK100MHZ CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of CLK100MHz : signal is "XIL_INTERFACENAME CLK.CLK100MHZ, ASSOCIATED_RESET Reset_0, CLK_DOMAIN TOP_BD_sys_clock, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of Reset_0 : signal is "xilinx.com:signal:reset:1.0 RST.RESET_0 RST";
  attribute X_INTERFACE_PARAMETER of Reset_0 : signal is "XIL_INTERFACENAME RST.RESET_0, INSERT_VIP 0, POLARITY ACTIVE_LOW";
begin
  Receive_AE <= Receive_Buffer_almost_empty;
  Receive_CLK_1 <= Receive_CLK;
  Receive_EM <= Receive_Buffer_empty;
  Receive_OUT(7 downto 0) <= Receive_Buffer_dout(7 downto 0);
  Receive_RD_EN_1 <= Receive_RD_EN;
  Rx_1 <= Rx;
  Transmit_AF <= Transmit_Buffer_almost_full;
  Transmit_CLK_1 <= Transmit_CLK;
  Transmit_FU <= Transmit_Buffer_full;
  Transmit_IN_1(7 downto 0) <= Transmit_IN(7 downto 0);
  Transmit_WR_EN_1 <= Transmit_WR_EN;
  Tx <= UART_Debug_0_Tx_Out;
  UART_Debug_Enable_1 <= UART_Debug_Enable;
  reset_1 <= Reset_0;
  sys_clock_1 <= CLK100MHz;
Debouncer_0: component TOP_BD_Debouncer_0_0
     port map (
      CLK100MHz => sys_clock_1,
      Reset_In => reset_1,
      Reset_Out => Debouncer_0_Reset_Out
    );
Receive_Buffer: component TOP_BD_fifo_generator_0_1
     port map (
      almost_empty => Receive_Buffer_almost_empty,
      almost_full => Receive_Buffer_almost_full,
      din(7 downto 0) => UART_0_FIFO_OT(7 downto 0),
      dout(7 downto 0) => Receive_Buffer_dout(7 downto 0),
      empty => Receive_Buffer_empty,
      full => Receive_Buffer_full,
      rd_clk => Receive_CLK_1,
      rd_en => Receive_RD_EN_1,
      rd_rst_busy => NLW_Receive_Buffer_rd_rst_busy_UNCONNECTED,
      rst => Reset_Controller_0_Reset_1,
      wr_clk => UART_0_Rx_FIFO_CLK,
      wr_en => UART_0_FIFO_WT,
      wr_rst_busy => NLW_Receive_Buffer_wr_rst_busy_UNCONNECTED
    );
Reset_Controller_0: component TOP_BD_Reset_Controller_0_0
     port map (
      CLK100MHz => sys_clock_1,
      Reset_1 => Reset_Controller_0_Reset_1,
      Reset_2 => Reset_Controller_0_Reset_2,
      Reset_3 => NLW_Reset_Controller_0_Reset_3_UNCONNECTED,
      Reset_In => Debouncer_0_Reset_Out
    );
Transmit_Buffer: component TOP_BD_fifo_generator_0_0
     port map (
      almost_empty => fifo_generator_0_almost_empty,
      almost_full => Transmit_Buffer_almost_full,
      din(7 downto 0) => Transmit_IN_1(7 downto 0),
      dout(7 downto 0) => fifo_generator_0_dout(7 downto 0),
      empty => Transmit_Buffer_empty,
      full => Transmit_Buffer_full,
      rd_clk => UART_0_Tx_FIFO_CLK,
      rd_en => Net,
      rd_rst_busy => NLW_Transmit_Buffer_rd_rst_busy_UNCONNECTED,
      rst => Reset_Controller_0_Reset_1,
      wr_clk => Transmit_CLK_1,
      wr_en => Transmit_WR_EN_1,
      wr_rst_busy => NLW_Transmit_Buffer_wr_rst_busy_UNCONNECTED
    );
UART_0: component TOP_BD_UART_0_0
     port map (
      A_RESET => Reset_Controller_0_Reset_2,
      CLK100MHz => sys_clock_1,
      FIFO_AE => fifo_generator_0_almost_empty,
      FIFO_AF => Receive_Buffer_almost_full,
      FIFO_EM => Transmit_Buffer_empty,
      FIFO_FU => Receive_Buffer_full,
      FIFO_IN(7 downto 0) => fifo_generator_0_dout(7 downto 0),
      FIFO_OT(7 downto 0) => UART_0_FIFO_OT(7 downto 0),
      FIFO_RD => Net,
      FIFO_WT => UART_0_FIFO_WT,
      Rx(0) => Rx_1,
      Rx_FIFO_CLK => UART_0_Rx_FIFO_CLK,
      Tx => UART_0_Tx,
      Tx_FIFO_CLK => UART_0_Tx_FIFO_CLK
    );
UART_Debug_0: component TOP_BD_UART_Debug_0_0
     port map (
      CLK100MHz => sys_clock_1,
      Enable => UART_Debug_Enable_1,
      Tx_In => UART_0_Tx,
      Tx_Out => UART_Debug_0_Tx_Out
    );
end STRUCTURE;
