----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/09/2021 08:10:31 PM
-- Design Name: 
-- Module Name: Microphone_Controller_Timer - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Microphone_Controller_Timer is
    Port ( CLK              :   in STD_LOGIC;
           RESET            :   in STD_LOGIC;
           
           ENABLE           :   in STD_LOGIC;
           PERIOD           :   in STD_LOGIC_VECTOR(31 downto 0);
           FIFO_FULL        :   in STD_LOGIC;
           
           START_SM         :   out STD_LOGIC := '0'
           
          );
end Microphone_Controller_Timer;

architecture Behavioral of Microphone_Controller_Timer is

    signal counter : unsigned (31 downto 0) := x"00000000";
    
begin

    Main : process(CLK) is
    begin
        if rising_edge(CLK) then
            if RESET = '1' then
                if ENABLE = '1' then
                    if std_logic_vector(counter) = PERIOD then                        
                        START_SM <= '1';
                        counter <= x"00000000";
                    else
                        START_SM <= '0';
                        counter <= counter + "1";
                    end if;
                end if;
            else -- RESET
                START_SM <= '0';
                counter <= x"00000000";
            end if;
        end if;
    end process;
end Behavioral;
