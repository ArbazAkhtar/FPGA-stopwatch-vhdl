----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.12.2025 18:34:51
-- Design Name: 
-- Module Name: led_driver_tl - Behavioral
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

entity led_driver_tl is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           clk_in : in STD_LOGIC;
           reset : in STD_LOGIC;
           an_out : out STD_LOGIC_VECTOR (7 downto 0);
           seg_out : out STD_LOGIC_VECTOR (6 downto 0));
end led_driver_tl;

architecture Behavioral of led_driver_tl is
signal digits : digit_vector(7 downto 0) := (others => x"F");
begin
U1: entity work.led_driver port map(clk_in => clk_in, reset => reset, an_out => an_out, seg_out => seg_out, digits => digits);
digits(7) <= A;
digits(0) <= B;
end Behavioral;
