----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.12.2025 16:34:13
-- Design Name: 
-- Module Name: dec_2_7seg - Behavioral
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

entity dec_2_7seg is
    Port ( digit : in STD_LOGIC_VECTOR (3 downto 0);
           segments : out STD_LOGIC_VECTOR (6 downto 0));
end dec_2_7seg;

architecture Behavioral of dec_2_7seg is

begin
process(digit)
begin
case digit is
  when x"0" => segments <= "1000000";
  when x"1" => segments <= "1111001";
  when x"2" => segments <= "0100100";
  when x"3" => segments <= "0110000";
  when x"4" => segments <= "0011001";
  when x"5" => segments <= "1111001";
  when x"6" => segments <= "0010010";
  when x"7" => segments <= "0000010";
  when x"8" => segments <= "1111000";
  when x"9" => segments <= "0010000";
  when others  => segments <= "1111111";
  end case;
end process;

end Behavioral;
