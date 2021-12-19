----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/21/2021 08:51:31 PM
-- Design Name: 
-- Module Name: Local_Bus_Register_Block - Behavioral
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

entity Local_Bus_Register_Block is
  generic (
    g_NumOfRWReg      : natural := 16;        -- 0 = no debug, 1 = print debug
    g_NumOfROReg      : natural := 4
    );
    Port ( 
           s_axi_aclk           :   in  std_logic;
           s_axi_aresentn       :   in  std_logic;
            
           lbus_in_data         : in STD_LOGIC_VECTOR (31 downto 0);
           lbus_in_address      : in STD_LOGIC_VECTOR (31 downto 0);
           lbus_in_write_strobe : in STD_LOGIC;
           
           lbus_out_data        : out STD_LOGIC_VECTOR (31 downto 0);
           lbus_out_complete    : out STD_LOGIC := '0';
           lbus_out_addr_OOR    : out STD_LOGIC := '0';
               

            
            ------------------------------------------------------------------------
            
            --ReadWrite Registers
            RW_reg_1            :   out std_logic_vector (31 downto 0) := x"00000000";
            RW_reg_2            :   out std_logic_vector (31 downto 0) := x"00000000";
            RW_reg_3            :   out std_logic_vector (31 downto 0) := x"00000000";
            RW_reg_4            :   out std_logic_vector (31 downto 0) := x"00000000";
            RW_reg_5            :   out std_logic_vector (31 downto 0) := x"00000000";
            RW_reg_6            :   out std_logic_vector (31 downto 0) := x"00000000";
            RW_reg_7            :   out std_logic_vector (31 downto 0) := x"00000000";
            RW_reg_8            :   out std_logic_vector (31 downto 0) := x"00000000";
            RW_reg_9            :   out std_logic_vector (31 downto 0) := x"00000000";
            RW_reg_10           :   out std_logic_vector (31 downto 0) := x"00000000";
            RW_reg_11           :   out std_logic_vector (31 downto 0) := x"00000000";
            RW_reg_12           :   out std_logic_vector (31 downto 0) := x"00000000";
            RW_reg_13           :   out std_logic_vector (31 downto 0) := x"00000000";
            RW_reg_14           :   out std_logic_vector (31 downto 0) := x"00000000";
            RW_reg_15           :   out std_logic_vector (31 downto 0) := x"00000000";
            RW_reg_16           :   out std_logic_vector (31 downto 0) := x"00000000";
            RW_reg_17           :   out std_logic_vector (31 downto 0) := x"00000000";
            RW_reg_18           :   out std_logic_vector (31 downto 0) := x"00000000";
            RW_reg_19           :   out std_logic_vector (31 downto 0) := x"00000000";
            RW_reg_20           :   out std_logic_vector (31 downto 0) := x"00000000";
            RW_reg_21           :   out std_logic_vector (31 downto 0) := x"00000000";
            RW_reg_22           :   out std_logic_vector (31 downto 0) := x"00000000";
            RW_reg_23           :   out std_logic_vector (31 downto 0) := x"00000000";
            RW_reg_24           :   out std_logic_vector (31 downto 0) := x"00000000";
            RW_reg_25           :   out std_logic_vector (31 downto 0) := x"00000000";
            RW_reg_26           :   out std_logic_vector (31 downto 0) := x"00000000";
            RW_reg_27           :   out std_logic_vector (31 downto 0) := x"00000000";
            RW_reg_28           :   out std_logic_vector (31 downto 0) := x"00000000";
            RW_reg_29           :   out std_logic_vector (31 downto 0) := x"00000000";
            RW_reg_30           :   out std_logic_vector (31 downto 0) := x"00000000";
            RW_reg_31           :   out std_logic_vector (31 downto 0) := x"00000000";
            RW_reg_32           :   out std_logic_vector (31 downto 0) := x"00000000";
            
           ------------------------------------------------------------------------
            
            --Read Only Registers
            RO_reg_1            :   in std_logic_vector (31 downto 0);
            RO_reg_2            :   in std_logic_vector (31 downto 0);
            RO_reg_3            :   in std_logic_vector (31 downto 0);
            RO_reg_4            :   in std_logic_vector (31 downto 0);
            RO_reg_5            :   in std_logic_vector (31 downto 0);
            RO_reg_6            :   in std_logic_vector (31 downto 0);
            RO_reg_7            :   in std_logic_vector (31 downto 0);
            RO_reg_8            :   in std_logic_vector (31 downto 0);
            RO_reg_9            :   in std_logic_vector (31 downto 0);
            RO_reg_10           :   in std_logic_vector (31 downto 0);
            RO_reg_11           :   in std_logic_vector (31 downto 0);
            RO_reg_12           :   in std_logic_vector (31 downto 0);
            RO_reg_13           :   in std_logic_vector (31 downto 0);
            RO_reg_14           :   in std_logic_vector (31 downto 0);
            RO_reg_15           :   in std_logic_vector (31 downto 0);
            RO_reg_16           :   in std_logic_vector (31 downto 0);
            RO_reg_17           :   in std_logic_vector (31 downto 0);
            RO_reg_18           :   in std_logic_vector (31 downto 0);
            RO_reg_19           :   in std_logic_vector (31 downto 0);
            RO_reg_20           :   in std_logic_vector (31 downto 0);
            RO_reg_21           :   in std_logic_vector (31 downto 0);
            RO_reg_22           :   in std_logic_vector (31 downto 0);
            RO_reg_23           :   in std_logic_vector (31 downto 0);
            RO_reg_24           :   in std_logic_vector (31 downto 0);
            RO_reg_25           :   in std_logic_vector (31 downto 0);
            RO_reg_26           :   in std_logic_vector (31 downto 0);
            RO_reg_27           :   in std_logic_vector (31 downto 0);
            RO_reg_28           :   in std_logic_vector (31 downto 0);
            RO_reg_29           :   in std_logic_vector (31 downto 0);
            RO_reg_30           :   in std_logic_vector (31 downto 0);
            RO_reg_31           :   in std_logic_vector (31 downto 0);
            RO_reg_32           :   in std_logic_vector (31 downto 0)
           );
end Local_Bus_Register_Block;

architecture Behavioral of Local_Bus_Register_Block is
    
    type t_MemoryRW is array (0 to 31) of std_logic_vector(31 downto 0);
    signal RWMem : t_MemoryRW;
    
    type t_MemoryRO is array (0 to 31) of std_logic_vector(31 downto 0);
    signal ROMem : t_MemoryRO;
    
--    type t_MemoryRO is array (0 to 3) of std_logic_vector(31 downto 0);
--    signal ROMem : t_MemoryRO;
    
    signal MainState : integer := 0;

begin

    RW_reg_1  <= RWMem(0);
    RW_reg_2  <= RWMem(1);
    RW_reg_3  <= RWMem(2);
    RW_reg_4  <= RWMem(3);
    RW_reg_5  <= RWMem(4);
    RW_reg_6  <= RWMem(5);
    RW_reg_7  <= RWMem(6);
    RW_reg_8  <= RWMem(7);
    RW_reg_9  <= RWMem(8);
    RW_reg_10 <= RWMem(9);
    RW_reg_11 <= RWMem(10);
    RW_reg_12 <= RWMem(11);
    RW_reg_13 <= RWMem(12);
    RW_reg_14 <= RWMem(13);
    RW_reg_15 <= RWMem(14);
    RW_reg_16 <= RWMem(15);
    RW_reg_17 <= RWMem(16);
    RW_reg_18 <= RWMem(17);
    RW_reg_19 <= RWMem(18);
    RW_reg_20 <= RWMem(19);
    RW_reg_21 <= RWMem(20);
    RW_reg_22 <= RWMem(21);
    RW_reg_23 <= RWMem(22);
    RW_reg_24 <= RWMem(23);
    RW_reg_25 <= RWMem(24);
    RW_reg_26 <= RWMem(25);
    RW_reg_27 <= RWMem(26);
    RW_reg_28 <= RWMem(27);
    RW_reg_29 <= RWMem(28);
    RW_reg_30 <= RWMem(29);
    RW_reg_31 <= RWMem(30);
    RW_reg_32 <= RWMem(31);
    
    ROMem(0)  <= RO_reg_1;
    ROMem(1)  <= RO_reg_2;
    ROMem(2)  <= RO_reg_3;
    ROMem(3)  <= RO_reg_4;
    ROMem(4)  <= RO_reg_5;
    ROMem(5)  <= RO_reg_6;
    ROMem(6)  <= RO_reg_7;
    ROMem(7)  <= RO_reg_8;
    ROMem(8)  <= RO_reg_9;
    ROMem(9)  <= RO_reg_10;
    ROMem(10) <= RO_reg_11;
    ROMem(11) <= RO_reg_12;
    ROMem(12) <= RO_reg_13;
    ROMem(13) <= RO_reg_14;
    ROMem(14) <= RO_reg_15;
    ROMem(15) <= RO_reg_16;
    ROMem(16) <= RO_reg_17;
    ROMem(17) <= RO_reg_18;
    ROMem(18) <= RO_reg_19;
    ROMem(19) <= RO_reg_20;
    ROMem(20) <= RO_reg_21;
    ROMem(21) <= RO_reg_22;
    ROMem(22) <= RO_reg_23;
    ROMem(23) <= RO_reg_24;
    ROMem(24) <= RO_reg_25;
    ROMem(25) <= RO_reg_26;
    ROMem(26) <= RO_reg_27;
    ROMem(27) <= RO_reg_28;
    ROMem(28) <= RO_reg_29;
    ROMem(29) <= RO_reg_30;
    ROMem(30) <= RO_reg_31;
    ROMem(31) <= RO_reg_32;
    
    with lbus_in_address select -- Used to output register data to output bus for readback from AXI Slave
        lbus_out_data   <= RWMem(0)  when x"43C00000",
                           RWMem(1)  when x"43C00004",
                           RWMem(2)  when x"43C00008",
                           RWMem(3)  when x"43C0000C",
                           RWMem(4)  when x"43C00010",
                           RWMem(5)  when x"43C00014",
                           RWMem(6)  when x"43C00018",
                           RWMem(7)  when x"43C0001C",
                           RWMem(8)  when x"43C00020",
                           RWMem(9)  when x"43C00024",
                           RWMem(10) when x"43C00028",
                           RWMem(11) when x"43C0002C",
                           RWMem(12) when x"43C00030",
                           RWMem(13) when x"43C00034",
                           RWMem(14) when x"43C00038",
                           RWMem(15) when x"43C0003C",
                           RWMem(16) when x"43C00040",
                           RWMem(17) when x"43C00044",
                           RWMem(18) when x"43C00048",
                           RWMem(19) when x"43C0004C",
                           RWMem(20) when x"43C00050",
                           RWMem(21) when x"43C00054",
                           RWMem(22) when x"43C00058",
                           RWMem(23) when x"43C0005C",
                           RWMem(24) when x"43C00060",
                           RWMem(25) when x"43C00064",
                           RWMem(26) when x"43C00068",
                           RWMem(27) when x"43C0006C",
                           RWMem(28) when x"43C00070",
                           RWMem(29) when x"43C00074",
                           RWMem(30) when x"43C00078",
                           RWMem(31) when x"43C0007C",
                           
                           ROMem(0)  when x"43C00100",
                           ROMem(1)  when x"43C00104",
                           ROMem(2)  when x"43C00108",
                           ROMem(3)  when x"43C0010C",
                           ROMem(4)  when x"43C00110",
                           ROMem(5)  when x"43C00114",
                           ROMem(6)  when x"43C00118",
                           ROMem(7)  when x"43C0011C",
                           ROMem(8)  when x"43C00120",
                           ROMem(9)  when x"43C00124",
                           ROMem(10) when x"43C00128",
                           ROMem(11) when x"43C0012C",
                           ROMem(12) when x"43C00130",
                           ROMem(13) when x"43C00134",
                           ROMem(14) when x"43C00138",
                           ROMem(15) when x"43C0013C",
                           ROMem(16) when x"43C00140",
                           ROMem(17) when x"43C00144",
                           ROMem(18) when x"43C00148",
                           ROMem(19) when x"43C0014C",
                           ROMem(20) when x"43C00150",
                           ROMem(21) when x"43C00154",
                           ROMem(22) when x"43C00158",
                           ROMem(23) when x"43C0015C",
                           ROMem(24) when x"43C00160",
                           ROMem(25) when x"43C00164",
                           ROMem(26) when x"43C00168",
                           ROMem(27) when x"43C0016C",
                           ROMem(28) when x"43C00170",
                           ROMem(29) when x"43C00174",
                           ROMem(30) when x"43C00178",
                           ROMem(31) when x"43C0017C",
                           
                           x"DEADBEEF" when others;
                           
    with lbus_in_address select    
            lbus_out_addr_OOR   <= '0' when x"43C00000",
                                   '0' when x"43C00004",
                                   '0' when x"43C00008",
                                   '0' when x"43C0000C",
                                   '0' when x"43C00010",
                                   '0' when x"43C00014",
                                   '0' when x"43C00018",
                                   '0' when x"43C0001C",
                                   '0' when x"43C00020",
                                   '0' when x"43C00024",
                                   '0' when x"43C00028",
                                   '0' when x"43C0002C",
                                   '0' when x"43C00030",
                                   '0' when x"43C00034",
                                   '0' when x"43C00038",
                                   '0' when x"43C0003C",
                                   '0' when x"43C00040",
                                   '0' when x"43C00044",
                                   '0' when x"43C00048",
                                   '0' when x"43C0004C",
                                   '0' when x"43C00050",
                                   '0' when x"43C00054",
                                   '0' when x"43C00058",
                                   '0' when x"43C0005C",
                                   '0' when x"43C00060",
                                   '0' when x"43C00064",
                                   '0' when x"43C00068",
                                   '0' when x"43C0006C",
                                   '0' when x"43C00070",
                                   '0' when x"43C00074",
                                   '0' when x"43C00078",
                                   '0' when x"43C0007C",
      
                                   '0' when x"43C00100",
                                   '0' when x"43C00104",
                                   '0' when x"43C00108",
                                   '0' when x"43C0010C",
                                   '0' when x"43C00110",
                                   '0' when x"43C00114",
                                   '0' when x"43C00118",
                                   '0' when x"43C0011C",
                                   '0' when x"43C00120",
                                   '0' when x"43C00124",
                                   '0' when x"43C00128",
                                   '0' when x"43C0012C",
                                   '0' when x"43C00130",
                                   '0' when x"43C00134",
                                   '0' when x"43C00138",
                                   '0' when x"43C0013C",
                                   '0' when x"43C00140",
                                   '0' when x"43C00144",
                                   '0' when x"43C00148",
                                   '0' when x"43C0014C",
                                   '0' when x"43C00150",
                                   '0' when x"43C00154",
                                   '0' when x"43C00158",
                                   '0' when x"43C0015C",
                                   '0' when x"43C00160",
                                   '0' when x"43C00164",
                                   '0' when x"43C00168",
                                   '0' when x"43C0016C",
                                   '0' when x"43C00170",
                                   '0' when x"43C00174",
                                   '0' when x"43C00178",
                                   '0' when x"43C0017C",
                                   
                                   '1' when others;
    
    Main : process(s_axi_aclk) is
    begin
    
        if rising_edge(s_axi_aclk) then
            if s_axi_aresentn = '1' then -- normal state
                if lbus_in_write_strobe = '1' then
                    if lbus_in_address = x"43C00000" then
                        RWMem(0) <= lbus_in_data;
                        lbus_out_complete <= '1';
                    elsif lbus_in_address = x"43C00004" then
                        RWMem(1) <= lbus_in_data;
                        lbus_out_complete <= '1';
                    elsif lbus_in_address = x"43C00008" then
                        RWMem(2) <= lbus_in_data;
                        lbus_out_complete <= '1';
                    elsif lbus_in_address = x"43C0000C" then
                        RWMem(3) <= lbus_in_data;
                        lbus_out_complete <= '1';
                    elsif lbus_in_address = x"43C00010" then
                        RWMem(4) <= lbus_in_data;
                        lbus_out_complete <= '1';
                    elsif lbus_in_address = x"43C00014" then
                        RWMem(5) <= lbus_in_data;
                        lbus_out_complete <= '1';
                    elsif lbus_in_address = x"43C00018" then
                        RWMem(6) <= lbus_in_data;
                        lbus_out_complete <= '1';
                    elsif lbus_in_address = x"43C0001C" then
                        RWMem(7) <= lbus_in_data;
                        lbus_out_complete <= '1';
                    elsif lbus_in_address = x"43C00020" then
                        RWMem(8) <= lbus_in_data;
                        lbus_out_complete <= '1';
                    elsif lbus_in_address = x"43C00024" then
                        RWMem(9) <= lbus_in_data;
                        lbus_out_complete <= '1';
                    elsif lbus_in_address = x"43C00028" then
                        RWMem(10) <= lbus_in_data;
                        lbus_out_complete <= '1';
                    elsif lbus_in_address = x"43C0002C" then
                        RWMem(11) <= lbus_in_data;
                        lbus_out_complete <= '1';
                    elsif lbus_in_address = x"43C00030" then
                        RWMem(12) <= lbus_in_data;
                        lbus_out_complete <= '1';
                    elsif lbus_in_address = x"43C00034" then
                        RWMem(13) <= lbus_in_data;
                        lbus_out_complete <= '1';
                    elsif lbus_in_address = x"43C00038" then
                        RWMem(14) <= lbus_in_data;
                        lbus_out_complete <= '1';
                    elsif lbus_in_address = x"43C0003C" then
                        RWMem(15) <= lbus_in_data;
                        lbus_out_complete <= '1';
                    elsif lbus_in_address = x"43C00040" then
                        RWMem(16) <= lbus_in_data;
                        lbus_out_complete <= '1';
                    elsif lbus_in_address = x"43C00044" then
                        RWMem(17) <= lbus_in_data;
                        lbus_out_complete <= '1';
                    elsif lbus_in_address = x"43C00048" then
                        RWMem(18) <= lbus_in_data;
                        lbus_out_complete <= '1';
                    elsif lbus_in_address = x"43C0004C" then
                        RWMem(19) <= lbus_in_data;
                        lbus_out_complete <= '1';
                    elsif lbus_in_address = x"43C00050" then
                        RWMem(20) <= lbus_in_data;
                        lbus_out_complete <= '1';
                    elsif lbus_in_address = x"43C00054" then
                        RWMem(21) <= lbus_in_data;
                        lbus_out_complete <= '1';
                    elsif lbus_in_address = x"43C00058" then
                        RWMem(22) <= lbus_in_data;
                        lbus_out_complete <= '1';
                    elsif lbus_in_address = x"43C0005C" then
                        RWMem(23) <= lbus_in_data;
                        lbus_out_complete <= '1';
                    elsif lbus_in_address = x"43C00060" then
                        RWMem(24) <= lbus_in_data;
                        lbus_out_complete <= '1';
                    elsif lbus_in_address = x"43C00064" then
                        RWMem(25) <= lbus_in_data;
                        lbus_out_complete <= '1';
                    elsif lbus_in_address = x"43C00068" then
                        RWMem(26) <= lbus_in_data;
                        lbus_out_complete <= '1';
                    elsif lbus_in_address = x"43C0006C" then
                        RWMem(27) <= lbus_in_data;
                        lbus_out_complete <= '1';
                    elsif lbus_in_address = x"43C00070" then
                        RWMem(28) <= lbus_in_data;
                        lbus_out_complete <= '1';
                    elsif lbus_in_address = x"43C00074" then
                        RWMem(29) <= lbus_in_data;
                        lbus_out_complete <= '1';
                    elsif lbus_in_address = x"43C00078" then
                        RWMem(30) <= lbus_in_data;
                        lbus_out_complete <= '1';
                    elsif lbus_in_address = x"43C0007C" then
                        RWMem(31) <= lbus_in_data;
                        lbus_out_complete <= '1';
                    else
                        lbus_out_complete <= '0';
                    end if;
                else
                    lbus_out_complete <= '0';
                end if;
            else -- reset state
                RWMem(0)  <= x"00000000";
                RWMem(1)  <= x"00000000";
                RWMem(2)  <= x"00000000";
                RWMem(3)  <= x"00000000";
                RWMem(4)  <= x"00000000";
                RWMem(5)  <= x"00000000";
                RWMem(6)  <= x"00000000";
                RWMem(7)  <= x"00000000";
                RWMem(8)  <= x"00000000";
                RWMem(9)  <= x"00000000";
                RWMem(10) <= x"00000000";
                RWMem(11) <= x"00000000";
                RWMem(12) <= x"00000000";
                RWMem(13) <= x"00000000";
                RWMem(14) <= x"00000000";
                RWMem(15) <= x"00000000";
                RWMem(16) <= x"00000000";
                RWMem(17) <= x"00000000";
                RWMem(18) <= x"00000000";
                RWMem(19) <= x"00000000";
                RWMem(20) <= x"00000000";
                RWMem(21) <= x"00000000";
                RWMem(22) <= x"00000000";
                RWMem(23) <= x"00000000";
                RWMem(24) <= x"00000000";
                RWMem(25) <= x"00000000";
                RWMem(26) <= x"00000000";
                RWMem(27) <= x"00000000";
                RWMem(28) <= x"00000000";
                RWMem(29) <= x"00000000";
                RWMem(30) <= x"00000000";
                RWMem(31) <= x"00000000";
                
                lbus_out_complete <= '0';              
            end if;
        end if;
    end process;
end Behavioral;
