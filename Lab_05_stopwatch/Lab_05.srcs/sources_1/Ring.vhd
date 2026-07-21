----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.11.2025 16:47:18
-- Design Name: 
-- Module Name: Ring - Behavioral
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

entity Ring is
generic (N : integer range 1 to 255:= 7);
    Port ( clk_in : in STD_LOGIC;
           reset : in STD_LOGIC;
           output : out STD_LOGIC_VECTOR (N downto 0));
end Ring;

architecture Behavioral of Ring is

begin
process(clk_in, reset)
variable Q : std_logic_vector(N downto 0) := (0 => '0', others => '1'); 
begin
 if rising_edge(clk_in) then
 if reset = '0' then
  Q := (0 => '0', others => '1');
 else
 Q:= Q(N-1 downto 0) & Q(N);
 
end if;
end if;
output <= Q;
end process;

end Behavioral;
