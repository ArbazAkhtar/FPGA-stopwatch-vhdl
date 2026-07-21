----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.12.2025 16:52:01
-- Design Name: 
-- Module Name: led_driver - Behavioral
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
use work.my_package.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity led_driver is
    Port ( digits : in digit_vector (7 downto 0);
           clk_in : in STD_LOGIC;
           reset : in STD_LOGIC;
           an_out : out STD_LOGIC_VECTOR (7 downto 0);
           seg_out : out STD_LOGIC_VECTOR (6 downto 0));
end led_driver;

architecture Behavioral of led_driver is

signal digit : std_logic_vector(3 downto 0);
signal anodes : std_logic_vector(7 downto 0);
signal led_clk : std_logic;

begin
U1: entity  work.digit_mux port map (digits => digits, select_in => anodes, digit => digit); 
U2 : entity work.dec_2_7seg port map (digit => digit, segments => seg_out);
U3 : entity work.ClocKDiv generic map (count_width => 5000)
port map (clk_in => clk_in, reset => reset, clk_out => led_clk);
U4 : entity work.Ring generic map (N=>7)
port map (clk_in => led_clk, reset => reset,output => anodes);
an_out <= anodes;

end Behavioral;

