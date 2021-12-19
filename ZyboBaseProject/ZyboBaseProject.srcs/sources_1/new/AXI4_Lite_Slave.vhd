----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/20/2021 01:43:37 PM
-- Design Name: 
-- Module Name: AXI4_Lite_Slave - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity AXI4_Lite_Slave is
    Port (
        s_axi_aclk      :   in  std_logic;
        s_axi_aresentn  :   in  std_logic;
        
        s_axi_araddr    :   in  std_logic_vector (31 downto 0);
        s_axi_arvalid   :   in  std_logic;
        s_axi_awaddr    :   in  std_logic_vector (31 downto 0);
        s_axi_awvalid   :   in  std_logic;
        s_axi_bready    :   in  std_logic;
        s_axi_rready    :   in  std_logic;
        s_axi_wdata     :   in  std_logic_vector (31 downto 0);
        s_axi_wstrb     :   in  std_logic_vector (3 downto 0);
        s_axi_wvalid    :   in  std_logic;
        
        s_axi_arready   :   out std_logic := '0';
        s_axi_awready   :   out std_logic := '0';
        s_axi_bresp     :   out std_logic_vector (1 downto 0) := "00";
        s_axi_bvalid    :   out std_logic := '0';
        s_axi_rdata     :   out std_logic_vector (31 downto 0) := x"00000000";
        s_axi_rresp     :   out std_logic_vector (1 downto 0) := "00";
        s_axi_rvalid    :   out std_logic := '0';
        s_axi_wready    :   out std_logic := '0';
        
        ------------------------------------------------------------------------
        
        lbus_out_data       :   out std_logic_vector (31 downto 0) := x"00000000";
        lbus_out_address    :   out std_logic_vector (31 downto 0) := x"00000000";
        lbus_out_strobe     :   out std_logic := '0';
        
        lbus_in_data        :   in std_logic_vector (31 downto 0);
        lbus_in_complete    :   in std_logic;
        lbus_in_addr_OOR    :   in std_logic
        
    );
end AXI4_Lite_Slave;

architecture Behavioral of AXI4_Lite_Slave is

signal MainState : integer := 0;
signal WriteDataBuffer : std_logic_vector (31 downto 0) := x"00000000";

signal TimeoutCounter : integer := 0;

signal ReadAddressBuffer : std_logic_vector (31 downto 0) := x"00000000";

begin

    MAIN : process(s_axi_aclk) is
    begin
    
        if rising_edge(s_axi_aclk) then
            if s_axi_aresentn = '1' then -- Normal Operation
                case MainState is
                    when 0 => -- IDLE State Write or Read Determination
                        if s_axi_awvalid = '1' then                            
                            MainState <= 1;
                        elsif s_axi_arvalid = '1' then
                            MainState <= 50;
                        end if;
                    when 1 => -- Write Pathway Begin / Accept Address
                        lbus_out_address <= s_axi_awaddr;
                        s_axi_awready <= '1'; -- Assert Address Data Capture Complete Flag
                        MainState <= 2;
                    when 2 => -- Write Pathway Continued / Get and Mask Data
                        if s_axi_wvalid = '1' then
                            for ii in 0 to 7 loop
                                WriteDataBuffer(ii) <= s_axi_wdata(ii) AND s_axi_wstrb(0);
                            end loop;
                            for ii in 8 to 15 loop
                                WriteDataBuffer(ii) <= s_axi_wdata(ii) AND s_axi_wstrb(1);
                            end loop;
                            for ii in 16 to 23 loop
                                WriteDataBuffer(ii) <= s_axi_wdata(ii) AND s_axi_wstrb(2);
                            end loop;                            
                            for ii in 24 to 31 loop
                                WriteDataBuffer(ii) <= s_axi_wdata(ii) AND s_axi_wstrb(3);
                            end loop;                        
                            MainState <= 3;
                        end if;
                    when 3 => -- Write Pathway Continued / Send Data
                        lbus_out_data <= WriteDataBuffer;
                        s_axi_wready  <= '1'; -- Assert Data Capture Complete Flag
                        MainState <= 4;
                    when 4 => -- Strobe On
                        lbus_out_strobe <= '1';
                        MainState <= 5;
                    when 5 => -- Strobe Off
                        lbus_out_strobe <= '0';
                        MainState <= 6;
                    when 6 => -- wait for response from register space
                        TimeoutCounter <= TimeoutCounter + 1; -- start counting untill timeout
                        
                        if TimeoutCounter >= 31 then -- wait up to 32 clocks until failing
                            MainState <= 20;
                            TimeoutCounter <= 0;
                        else
                            if lbus_in_complete = '1' then
                                MainState <= 7;
                                TimeoutCounter <= 0;
                            end if;
                        end if;
                    when 7 => -- write success
                        if s_axi_bready = '1' then
                            s_axi_bresp <= "00";
                            s_axi_bvalid <= '1';
                            MainState <= 100;
                        end if;
                    when 20 => -- write failure
                        if s_axi_bready = '1' then
                            s_axi_bresp <= "10";
                            s_axi_bvalid <= '1';
                            MainState <= 100;
                        end if;
                    when 50 => -- Read Pathway Begin / Capture Address and Assert ARREADY
                        ReadAddressBuffer <= s_axi_araddr;
                        s_axi_arready <= '1';
                        MainState <= 51;
                    when 51 => -- Setup Buffered Address on LBUS_ADDR
                        lbus_out_address <= ReadAddressBuffer;
                        MainState <= 52;
                    when 52 =>
                        TimeoutCounter <= TimeoutCounter + 1; -- start counting untill timeout
                        
                        if TimeoutCounter >= 31 then -- wait up to 32 clocks until failing
                            MainState <= 70;
                            TimeoutCounter <= 0;
                        else
                            if lbus_in_addr_OOR = '0' then
                                MainState <= 53;
                                TimeoutCounter <= 0;
                            end if;
                        end if;
                    when 53 => -- put up data and signal RREADY
                        if s_axi_rready = '1' then -- Wait for Master to be ready to accept data, then set up data and proceed.
                            
                            if lbus_in_addr_OOR = '1' then 
                                s_axi_rresp <= "10"; -- If address is out of range or OOR, then assert slave error
                            else
                                s_axi_rresp <= "00"; -- Else, no error.
                            end if;
                            
                            s_axi_rdata <= lbus_in_data; -- place data on bus
                            MainState <= 54;
                        end if;
                    when 54 => -- Signal that data is good to be sampled by master
                        s_axi_rvalid <= '1';
                        MainState <= 55;
                    when 55 => -- deassert signal after master has sampled and asserted ready
                        if s_axi_rready = '1' then
                            s_axi_rvalid <= '0';
                            MainState <= 150;
                        end if;
                    when 70 => -- Failed Read State
                    when 100 => -- WRITE END STATE
                        s_axi_arready <= '0';
                        s_axi_awready <= '0';-- Deassert Ready
                        s_axi_bresp <= "00";
                        s_axi_bvalid <= '0';
                        s_axi_wready  <= '0';-- Deassert Ready
                        s_axi_bvalid <= '0';
                        lbus_out_data <= x"00000000";
                        lbus_out_address <= x"00000000";
                        lbus_out_strobe  <= '0';
                        TimeoutCounter <= 0;
                        MainState <= 0;
                    when 150 => -- READ END STATE
                        s_axi_arready <= '0';
                        s_axi_rdata <= x"00000000"; 
                        s_axi_rvalid <= '0';
                        s_axi_rresp <= "00";
                        lbus_out_address <= x"00000000";
                        TimeoutCounter <= 0;
                        MainState <= 0;
                    when others =>
                        MainState <= 0;
                end case;
            else -- Reset Condition
            
            end if;
        end if;
    
    end process;

end Behavioral;