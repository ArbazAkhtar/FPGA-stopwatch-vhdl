----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.11.2025 17:13:25
-- Design Name: 
-- Module Name: chaser - Behavioral
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

entity chaser is
    Port ( clk_in : in STD_LOGIC;
           reset : in STD_LOGIC;
           led_out : out STD_LOGIC_VECTOR (15 downto 0));
end chaser;

architecture Behavioral of chaser is
signal led_clk : std_logic;
begin
U1: entity work.clockdiv generic map (count_width => 6_250_000)
port map (clk_in => clk_in, reset => reset, clk_out => led_clk);
U2: entity work.ring generic map (N => 15)
port map (clk_in => led_clk, reset => reset, output => led_out);

end Behavioral;
