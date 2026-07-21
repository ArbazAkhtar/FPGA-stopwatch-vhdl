----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.12.2025 16:12:56
-- Design Name: 
-- Module Name: digit_mux - Behavioral
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

entity digit_mux is
    Port ( digits : in digit_vector (7 downto 0);
           select_in : in STD_LOGIC_VECTOR (7 downto 0);
           digit : out STD_LOGIC_VECTOR (3 downto 0));
end digit_mux;

architecture Behavioral of digit_mux is

begin
with select_in select
digit <= digits(0) when "11111110",
digits(1) when "11111101",
digits(2) when "11111011",
digits(3) when "11110111",
digits(4) when "11101111",
digits(5) when "11011111",
digits(6) when "10111111",
digits(7) when "01111111",
"1111" when others;
end Behavioral;
