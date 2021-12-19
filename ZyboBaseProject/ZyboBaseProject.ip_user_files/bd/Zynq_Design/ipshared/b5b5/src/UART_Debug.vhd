----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/14/2020 09:29:27 PM
-- Design Name: 
-- Module Name: UART_Debug - Behavioral
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

entity UART_Debug is
    Port ( CLK100MHz : in STD_LOGIC;
           Enable : in STD_LOGIC;
           Tx_In : in STD_LOGIC;
           Tx_Out : out STD_LOGIC);
end UART_Debug;

architecture Behavioral of UART_Debug is

    signal Tx_Internal : STD_LOGIC := '0';
    signal CLK115200 : natural := 0;
    signal CLK115200_D : STD_LOGIC := '0';
    
    signal State : natural := 0;
    signal Itteration : natural := 0;
    
    constant Test_Char1 : STD_LOGIC_VECTOR (7 downto 0) := "01000010";
    constant Test_Char2 : STD_LOGIC_VECTOR (7 downto 0) := "01010111";
    constant Test_Char3 : STD_LOGIC_VECTOR (7 downto 0) := "01001111";
    constant Test_Char4 : STD_LOGIC_VECTOR (7 downto 0) := "00101111";
    signal   Test_Char  : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
begin

    with Enable select
        Tx_Out <= Tx_In when '0',
                  Tx_Internal when '1',
                  Tx_In when others;
                  
    Main : process(CLK100MHz) is
    begin
        if rising_edge(CLK100MHz) then
        
            if CLK115200 >= 868 then
                CLK115200 <= 0;
            else
                CLK115200 <= CLK115200 + 1;
            end if;
        
            if CLK115200 > 433 then
                CLK115200_D <= '1';
            elsif CLK115200 <= 432 then
                CLK115200_D <= '0';
            else
                CLK115200_D <= '0';
            end if;
              
        end if;
    end process;
    
    Debug_Out : process(CLK115200_D) is
    begin
        if rising_edge(CLK115200_D) then
        
            case State is
                when 0 =>
                    if Itteration = 0 then
                        Test_Char <= Test_Char1;
                    elsif Itteration = 1 then
                        Test_Char <= Test_Char2;
                    elsif Itteration = 2 then
                        Test_Char <= Test_Char3;
                    elsif Itteration = 3 then
                        Test_Char <= Test_Char4;
                    else
                        Test_Char <= Test_Char1;
                    end if;
                    
                    State <= 1;
                when 1 => -- Start Bit
                    Tx_Internal <= '0';
                    State <= 2;
                when 2 => -- 7 MSB
                    Tx_Internal <= Test_Char(0);
                    State <= 3;
                when 3 => -- 6
                    Tx_Internal <= Test_Char(1);
                    State <= 4;
                when 4 => -- 5
                    Tx_Internal <= Test_Char(2);
                    State <= 5;
                when 5 => -- 4
                    Tx_Internal <= Test_Char(3);
                    State <= 6;
                when 6 => -- 3
                    Tx_Internal <= Test_Char(4);
                    State <= 7;
                when 7 => -- 2
                    Tx_Internal <= Test_Char(5);
                    State <= 8;
                when 8 => -- 1
                    Tx_Internal <= Test_Char(6);
                    State <= 9;
                when 9 => -- 0
                    Tx_Internal <= Test_Char(7);
                    State <= 10;
                when 10 => -- Stop
                    Tx_Internal <= '1';
                    State <= 11;
                when 11 => -- 5
                    State <= 0;
                    
                    if Itteration >= 3 then
                        Itteration <= 0;
                    else
                        Itteration <= Itteration + 1;
                    end if;
                when others =>
                    State <= 0;
            end case;
        
        end if;
    end process;

end Behavioral;
