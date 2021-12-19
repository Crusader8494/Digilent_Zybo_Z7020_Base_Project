----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/01/2021 02:29:53 PM
-- Design Name: 
-- Module Name: AXI_UART_Control_Adapter - Behavioral
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

entity AXI_UART_Control_Adapter is
    Port ( CLK100MHz : in STD_LOGIC;
           RESET : in STD_LOGIC;
           Transmit_WE_In : in STD_LOGIC;
           Transmit_WE_Out : out STD_LOGIC);
end AXI_UART_Control_Adapter;

architecture Behavioral of AXI_UART_Control_Adapter is

    signal state : integer := 0;

begin
    Main : process(CLK100MHz) is
    begin
        if rising_edge(CLK100MHz) then
            case state is
                when 0 =>
                    if Transmit_WE_In = '1' then
                        Transmit_WE_Out <= '1';
                        state <= 1;
                    end if;
                when 1 =>
                    Transmit_WE_Out <= '0';
                    if Transmit_WE_In = '0' then
                        state <= 0;
                    end if;
                when others =>
                    state <= 0;
            end case;
        end if;
    end process;
end Behavioral;
