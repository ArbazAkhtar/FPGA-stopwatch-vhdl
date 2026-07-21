----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.12.2025 16:12:45
-- Design Name: 
-- Module Name: adder_led - Behavioral
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

entity adder_led is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           C_in : in STD_LOGIC;
           clk_in : in STD_LOGIC;
           reset : in STD_LOGIC;
           an_out : out STD_LOGIC_VECTOR (7 downto 0);
           seg_out : out STD_LOGIC_VECTOR (6 downto 0));
end adder_led;

architecture Behavioral of adder_led is
signal S : std_logic_vector(4 downto 0);
signal digits : digit_vector(7 downto 0) := (others => x"F");
begin
add : entity work.adder_4bit port map (A => A, B => B, C_in => C_in, S => S);
led : entity work.led_driver port map (digits => digits, clk_in => clk_in, reset => reset, seg_out => seg_out, an_out => an_out);

bin_2_bcd(S, digits(1 downto 0));
end Behavioral;
