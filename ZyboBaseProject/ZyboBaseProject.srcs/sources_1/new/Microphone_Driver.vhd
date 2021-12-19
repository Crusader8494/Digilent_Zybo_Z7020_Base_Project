----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/10/2019 08:49:33 PM
-- Design Name: 
-- Module Name: TOP - Behavioral
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

entity Microphone_Driver is
  Port ( CLK       : in    STD_LOGIC;
         RESET          : in    STD_LOGIC;
         
         ENABLE         : in    STD_LOGIC;
         MISO           : in    STD_LOGIC;
         CS             : out   STD_LOGIC;
         SCK            : out   STD_LOGIC;
         
         SAMPLE_OUT     : out   STD_LOGIC_VECTOR(11 downto 0);
         SAMPLE_VALID   : out STD_LOGIC := '0'
         );
         
         
end Microphone_Driver;

architecture Behavioral of Microphone_Driver is
    
    type STATE is (
        IDLE,
        CS_LOW,
        SCK_LOW,
        CAPTURE,
        SCK_HIGH,
        FLIP_SIGN,
        COMPLETE
    );
    
    signal CAPTURE_STATE : STATE := IDLE;
    signal MISO_Signal : STD_LOGIC_VECTOR (11 downto 0) := x"000";
    signal Capture_Count : unsigned (4 downto 0) := "00000";
    signal SCK_Internal : STD_LOGIC := '0';
    signal SCK_LOW_COUNTER : unsigned (3 downto 0) := "0000";
    
    
begin

    SCK <= SCK_Internal;
    
    ADCState : process(CLK) is
    begin
        if rising_edge(CLK) then
            if RESET = '1' then
                case CAPTURE_STATE is
                    when IDLE   =>
                        CS <= '1';
                        SCK_Internal <= '1';
                        
                        SAMPLE_VALID <= '0';
                        
                        if ENABLE = '1' then
                            CAPTURE_STATE <= CS_LOW;
                        end if;
                    when CS_LOW     => -- 1st Clock
                        CS <= '0';
                        CAPTURE_STATE <= SCK_LOW;
                    when SCK_LOW    => -- 2nd and 3rd Clock
                        SCK_Internal <= '0'; -- Go low -- 7 ns setup time on adc side
                        
                        if SCK_LOW_COUNTER = "0001" then -- Delay 1 clock to be sure
                            SCK_LOW_COUNTER <= "0000";
                            CAPTURE_STATE <= CAPTURE;
                        else
                            SCK_LOW_COUNTER <= SCK_LOW_COUNTER + "0001";
                        end if;
                    when CAPTURE    => -- 4th Clock
                            MISO_Signal <= MISO_Signal(10 downto 0) & MISO; -- SHIFT IN DATA
                            Capture_Count <= Capture_Count + "00001";
                            CAPTURE_STATE <= SCK_HIGH;
                    when SCK_HIGH   => -- 5th Clock should be achieving 20MHz bit rate
                        SCK_Internal <= '1';
                        
                        if Capture_Count >= "10000" then
                            CAPTURE_STATE <= FLIP_SIGN;
                        else
                            CAPTURE_STATE <= SCK_LOW;
                        end if;
                    when FLIP_SIGN  =>
                        MISO_Signal <= not(MISO_Signal(11)) & MISO_Signal(10 downto 0);
                        CAPTURE_STATE <= COMPLETE;
                    when COMPLETE   =>
                        SCK_Internal <= '1';
                        CS <= '1';
                        
                        Capture_Count <= "00000";
                        
                        SAMPLE_OUT <= MISO_Signal;
                        SAMPLE_VALID <= '1';
                    
                        if ENABLE = '0' then
                            CAPTURE_STATE <= IDLE;
                        else
                            null;
                        end if;
                    when others     =>
                        CAPTURE_STATE <= IDLE;
                end case;
            else -- RESET
                CAPTURE_STATE <= IDLE;
                CS <= '1';
                SCK_Internal <= '1';
                SAMPLE_OUT <= x"000";
                SAMPLE_VALID <= '0';
                Capture_Count <= "00000";
                MISO_Signal <= x"000";
            end if;
        end if;
    end process;
end Behavioral;