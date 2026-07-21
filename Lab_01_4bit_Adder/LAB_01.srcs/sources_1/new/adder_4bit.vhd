----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.11.2025 23:46:03
-- Design Name: 
-- Module Name: adder_4bit - Behavioral
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


entity adder_4bit is
    Port ( A     : in  STD_LOGIC_VECTOR(3 downto 0);
           B     : in  STD_LOGIC_VECTOR(3 downto 0);
           C_in  : in  STD_LOGIC;
           S     : out STD_LOGIC_VECTOR(4 downto 0);
           C_out : out STD_LOGIC);
end adder_4bit;

architecture Behavioral of adder_4bit is
    signal C : STD_LOGIC_VECTOR(3 downto 0);
begin
    FA1: entity work.FullAdder
        port map (A => A(0), B => B(0), C_in => C_in,  S => S(0), C_out => C(0));

    FA2: entity work.FullAdder
        port map (A => A(1), B => B(1), C_in => C(0),  S => S(1), C_out => C(1));

    FA3: entity work.FullAdder
        port map (A => A(2), B => B(2), C_in => C(1),  S => S(2), C_out => C(2));

    FA4: entity work.FullAdder
        port map (A => A(3), B => B(3), C_in => C(2),  S => S(3), C_out => C_out);
end Behavioral;

