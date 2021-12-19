----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/15/2021 04:58:00 PM
-- Design Name: 
-- Module Name: FIFO_READ_INTERFACE - Behavioral
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

entity FIFO_READ_INTERFACE is
    Port ( CLK : in STD_LOGIC;
           RESET : in STD_LOGIC;
           SAMPLE_IN : in STD_LOGIC_VECTOR (11 downto 0);
           READ_IN : in STD_LOGIC;
           SAMPLE_OUT : out STD_LOGIC_VECTOR (11 downto 0);
           READ_OUT : out STD_LOGIC);
end FIFO_READ_INTERFACE;

architecture Behavioral of FIFO_READ_INTERFACE is

    signal state : STD_LOGIC := '0';
    
begin

    Main : process(CLK) is   
    begin
        if rising_edge(CLK) then
            if RESET = '1' then
                case state is
                    when '0'  =>
                        if READ_IN = '1' then
                            SAMPLE_OUT <= SAMPLE_IN;
                            READ_OUT <= '1';
                            state <= '1';
                        end if;
                    when '1'  =>
                        READ_OUT <= '0';
                        if READ_IN = '0' then
                            state <= '0';
                        end if;
                    when others =>
                        state <= '0';
                end case;
            else -- RESET
                state <= '0';
                SAMPLE_OUT <= x"000";
                READ_OUT <= '0';
            end if;
        end if;
    end process;

end Behavioral;
