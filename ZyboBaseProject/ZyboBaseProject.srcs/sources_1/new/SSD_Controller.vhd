----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/08/2021 05:45:18 PM
-- Design Name: 
-- Module Name: SSD_Controller - Behavioral
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

entity SSD_Controller is
    Port (  s_axi_aclk              :           in STD_LOGIC;
            s_axi_aresetn           :           in STD_LOGIC;
            
            ASCII_To_Display        :           in STD_LOGIC_VECTOR (7 downto 0);
            Commutation_Period      :           in STD_LOGIC_VECTOR (7 downto 0);
            
            SSD_VEC                 :           out STD_LOGIC_VECTOR (7 downto 0) := x"00"
         );
end SSD_Controller;

architecture Behavioral of SSD_Controller is

    signal A : std_logic := '0';
    signal B : std_logic := '0';
    signal C : std_logic := '0';
    signal D : std_logic := '0';
    signal E : std_logic := '0';
    signal F : std_logic := '0';
    signal G : std_logic := '0';
    
    signal CAT_STATE : std_logic := '0';
    
    signal FiveZeroHzOut   : STD_LOGIC := '0';
    signal FiveZeroHzCNT   : unsigned (31 downto 0) := (others=>'0');
    
    signal DCCLKOut        : STD_LOGIC := '0';
    signal DCCLK           : unsigned (31 downto 0) := (others=>'0');
    
    signal DCIN0           : unsigned (7 downto 0) := (others=>'0');
    signal DCIN1           : unsigned (7 downto 0) := (others=>'0');
    
    signal DDIN0           : unsigned (3 downto 0) := (others=>'0');
    signal DDIN1           : unsigned (3 downto 0) := (others=>'0');
    
    signal SEG0inOne       : unsigned (3 downto 0) := (others=>'0');
    signal SEG1inOne       : unsigned (3 downto 0) := (others=>'0');
    
    signal SEG0Val         : unsigned (3 downto 0) := (others=>'0');
    signal SEG1Val         : unsigned (3 downto 0) := (others=>'0');
    
begin

    SSD_VEC(0) <= A;
    SSD_VEC(1) <= B;
    SSD_VEC(2) <= C;
    SSD_VEC(3) <= D;
    SSD_VEC(4) <= E;
    SSD_VEC(5) <= F;
    SSD_VEC(6) <= G;
    SSD_VEC(7) <= CAT_STATE;

    CLKWZRD : process(s_axi_aclk) is
    begin
        if rising_edge(s_axi_aclk) then
            if FiveZeroHzCNT = "000000000000011110100000100100000" then -- 100Hz per segment
                FiveZeroHzCNT <= (others=>'0');
                FiveZeroHzOut <= '1';
            else
                FiveZeroHzCNT <= FiveZeroHzCNT + "1";
                FiveZeroHzOut <= '0';
            end if;
            
            if DCCLK = "000000000000000000111101000010010" then -- 3.2kHz
                DCCLK <= (others=>'0');
                DCCLKOut <= '1';
            else
                DCCLK <= DCCLK + "1";
                DCCLKOut <= '0';
            end if;
        end if;
    end process;
    
    DisplayConverter    : process(DCCLKOut) is
    begin
        
        if ASCII_To_Display <= "01100011" and ASCII_To_Display >= "00000000" then
            DCIN0 <= unsigned(ASCII_To_Display) mod 10; 
            DCIN1 <= unsigned(ASCII_To_Display) / 10;
        elsif ASCII_To_Display > "01100011" then
            DCIN0 <= "00001001";
            DCIN1 <= "00001001";
        elsif ASCII_To_Display < "00000000" then
            DCIN0 <= "00000000";
            DCIN1 <= "00000000";
        else
            DCIN0 <= "00000000";
            DCIN1 <= "00000000";
        end if;
        
        DDIN0 <= DCIN0(3 downto 0);
        DDIN1 <= DCIN1(3 downto 0);
        
    end process;

    DisplayDriver : process(FiveZeroHzOut) is
    begin
        if rising_edge(FiveZeroHzOut) then

            SEG0inOne <= DDIN0;
            SEG0Val <= SEG0inOne;

            SEG1inOne <= DDIN1;
            SEG1Val <= SEG1inOne;
            
            
            
            if CAT_STATE = '0' then
                
                case SEG1Val is
                    when "0000" =>
                        A <= '1';
                        B <= '1';
                        C <= '1';
                        D <= '1';
                        E <= '1';
                        F <= '1';
                        G <= '0';
                    when "0001" =>
                        A <= '0';
                        B <= '1';
                        C <= '1';
                        D <= '0';
                        E <= '0';
                        F <= '0';
                        G <= '0';
                    when "0010" =>
                        A <= '1';
                        B <= '1';
                        C <= '0';
                        D <= '1';
                        E <= '1';
                        F <= '0';
                        G <= '1';
                    when "0011" =>
                        A <= '1';
                        B <= '1';
                        C <= '1';
                        D <= '1';
                        E <= '0';
                        F <= '0';
                        G <= '1';
                    when "0100" =>
                        A <= '0';
                        B <= '1';
                        C <= '1';
                        D <= '0';
                        E <= '0';
                        F <= '1';
                        G <= '1';
                    when "0101" =>
                        A <= '1';
                        B <= '0';
                        C <= '1';
                        D <= '1';
                        E <= '0';
                        F <= '1';
                        G <= '1';
                    when "0110" =>
                        A <= '1';
                        B <= '0';
                        C <= '1';
                        D <= '1';
                        E <= '1';
                        F <= '1';
                        G <= '1';
                    when "0111" =>
                        A <= '1';
                        B <= '1';
                        C <= '1';
                        D <= '0';
                        E <= '0';
                        F <= '0';
                        G <= '0';
                    when "1000" =>
                        A <= '1';
                        B <= '1';
                        C <= '1';
                        D <= '1';
                        E <= '1';
                        F <= '1';
                        G <= '1';
                    when "1001" =>
                        A <= '1';
                        B <= '1';
                        C <= '1';
                        D <= '0';
                        E <= '0';
                        F <= '1';
                        G <= '1';
                    when others =>
                        A <= '0';
                        B <= '0';
                        C <= '0';
                        D <= '0';
                        E <= '0';
                        F <= '0';
                        G <= '1';
                end case;
                
                CAT_STATE <= '1';
            end if;
            
            if CAT_STATE = '1' then
            
               case SEG0Val is
                    when "0000" =>
                        A <= '1';
                        B <= '1';
                        C <= '1';
                        D <= '1';
                        E <= '1';
                        F <= '1';
                        G <= '0';
                    when "0001" =>
                        A <= '0';
                        B <= '1';
                        C <= '1';
                        D <= '0';
                        E <= '0';
                        F <= '0';
                        G <= '0';
                    when "0010" =>
                        A <= '1';
                        B <= '1';
                        C <= '0';
                        D <= '1';
                        E <= '1';
                        F <= '0';
                        G <= '1';
                    when "0011" =>
                        A <= '1';
                        B <= '1';
                        C <= '1';
                        D <= '1';
                        E <= '0';
                        F <= '0';
                        G <= '1';
                    when "0100" =>
                        A <= '0';
                        B <= '1';
                        C <= '1';
                        D <= '0';
                        E <= '0';
                        F <= '1';
                        G <= '1';
                    when "0101" =>
                        A <= '1';
                        B <= '0';
                        C <= '1';
                        D <= '1';
                        E <= '0';
                        F <= '1';
                        G <= '1';
                    when "0110" =>
                        A <= '1';
                        B <= '0';
                        C <= '1';
                        D <= '1';
                        E <= '1';
                        F <= '1';
                        G <= '1';
                    when "0111" =>
                        A <= '1';
                        B <= '1';
                        C <= '1';
                        D <= '0';
                        E <= '0';
                        F <= '0';
                        G <= '0';
                    when "1000" =>
                        A <= '1';
                        B <= '1';
                        C <= '1';
                        D <= '1';
                        E <= '1';
                        F <= '1';
                        G <= '1';
                    when "1001" =>
                        A <= '1';
                        B <= '1';
                        C <= '1';
                        D <= '0';
                        E <= '0';
                        F <= '1';
                        G <= '1';
                    when others =>
                        A <= '0';
                        B <= '0';
                        C <= '0';
                        D <= '0';
                        E <= '0';
                        F <= '0';
                        G <= '1';
                end case;
                
                CAT_STATE <= '0';
            end if;
        end if;
    end process;

end Behavioral;
