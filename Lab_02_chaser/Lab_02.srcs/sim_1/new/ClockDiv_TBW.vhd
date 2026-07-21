----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.11.2025 16:35:15
-- Design Name: 
-- Module Name: ClockDiv_TBW - Behavioral
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

entity ClockDiv_TBW is
--  Port ( );
end ClockDiv_TBW;

architecture Behavioral of ClockDiv_TBW is
signal clk_in,reset : std_logic := '0';
signal clk_out : std_logic;
begin
uut: entity work.clk_div generic map (count_width => 5)
                         port map (clk_in => clk_in, reset=> reset, clk_out => clk_out);
clk: process
begin
    clk_in <= not clk_in;
    wait for 5ns;
end process;

stim: process
begin
wait for 25ns;
   reset <= '1';
   end process;                             

end Behavioral;
