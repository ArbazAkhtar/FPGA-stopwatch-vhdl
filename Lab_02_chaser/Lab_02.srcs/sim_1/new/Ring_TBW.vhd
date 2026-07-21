----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.11.2025 17:02:35
-- Design Name: 
-- Module Name: Ring_TBW - Behavioral
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

entity Ring_TBW is
--  Port ( );
end Ring_TBW;

architecture Behavioral of Ring_TBW is
signal clk_in, reset: std_logic := '0';
signal output : std_logic_vector(3 downto 0);
constant T : time := 10ns;

begin
uut: entity work.ring generic map (N => 3)
port map (clk_in => clk_in, reset => reset, output => output);

clk: process 
begin 
clk_in <= not clk_in;
wait for T/2;
end process;

stim: process
begin
wait for 3*T;
reset <= '1';
end process;


end Behavioral;
