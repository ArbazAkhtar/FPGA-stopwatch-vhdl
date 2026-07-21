----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.11.2025 01:25:13
-- Design Name: 
-- Module Name: adder_4bit_TBW - Behavioral
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


entity adder_4bit_TBW is
end adder_4bit_TBW;

architecture Behavioral of adder_4bit_TBW is
  SIGNAL A, B  : STD_LOGIC_VECTOR(3 downto 0) := (others=>'0');
  SIGNAL C_in  : STD_LOGIC := '0';
  SIGNAL S   : STD_LOGIC_VECTOR(4 downto 0);
  SIGNAL C_out : STD_LOGIC;
begin

DUT: entity work.adder_4bit
  port map (A=>A, B=>B, C_in=>C_in, S=>S, C_out=>C_out);


  stim_process: process
  begin
    -- A, B, Cin from Table-1  → expected Sum (decimal)
    A <= "0001"; B <= "0001"; C_in <= '0'; wait for 100 ns; --  2  (00010)
    A <= "0010"; B <= "0111"; C_in <= '0'; wait for 100 ns; --  9  (01001)
    A <= "0010"; B <= "0111"; C_in <= '1'; wait for 100 ns; -- 10  (01010)
    A <= "0100"; B <= "1111"; C_in <= '0'; wait for 100 ns; -- 19  (10011)
    A <= "0100"; B <= "1111"; C_in <= '1'; wait for 100 ns; -- 20  (10100)
    A <= "1110"; B <= "1111"; C_in <= '0'; wait for 100 ns; -- 29  (11101)
    A <= "1111"; B <= "1111"; C_in <= '0'; wait for 100 ns; -- 30  (11110)
    A <= "1111"; B <= "1111"; C_in <= '1'; wait for 100 ns; -- 31  (11111)
    wait;
  end process;

end Behavioral;
