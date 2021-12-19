----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/09/2021 09:42:07 PM
-- Design Name: 
-- Module Name: FIFO_Interface - Behavioral
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

entity FIFO_Interface is
    Port ( CLK         : in    STD_LOGIC;
           RESET            : in    STD_LOGIC;
           
           SAMPLE           : in    STD_LOGIC_VECTOR(11 downto 0);
           SAMPLE_VALID     : in    STD_LOGIC;
           FIFO_FU          : in    STD_LOGIC;
           
           SAMPLE_OUT       : out   STD_LOGIC_VECTOR(11 downto 0) := x"000";
           SAMPLE_WE        : out   STD_LOGIC := '0'
    );
end FIFO_Interface;

architecture Behavioral of FIFO_Interface is

    signal FIFO_Writer_State : unsigned (3 downto 0) := x"0";
    signal FIFO_Sample : STD_LOGIC_VECTOR (11 downto 0) := x"000";

begin
    FIFO_Writer : process (CLK) is
    begin
        if rising_edge(CLK) then
            if RESET = '1' then
                case FIFO_Writer_State is
                    when x"0" =>
                        if SAMPLE_VALID = '1' then
                            FIFO_Sample <= SAMPLE;
                            FIFO_Writer_State <= x"1";
                        end if;
                    when x"1" =>
                        if SAMPLE_VALID = '0' then
                            SAMPLE_OUT <= FIFO_Sample;
                            FIFO_Writer_State <= x"2";
                        end if;
                    when x"2" =>
                        if FIFO_FU = '0' then
                            SAMPLE_WE <= '1';
                            FIFO_Writer_State <= x"3";
                        else
                            FIFO_Writer_State <= x"0";
                        end if;
                    when x"3" =>
                        SAMPLE_WE <= '0';
                        if SAMPLE_VALID = '0' then
                            FIFO_Writer_State <= x"0";
                        end if;
                    when others =>
                        if SAMPLE_VALID = '0' then
                            FIFO_Writer_State <= x"0";
                        end if;
                end case;
            else -- RESET
                FIFO_Writer_State <= x"0";
                SAMPLE_OUT <= x"000";
                SAMPLE_WE <= '0';
            end if;
        end if;
    end process;
end Behavioral;
