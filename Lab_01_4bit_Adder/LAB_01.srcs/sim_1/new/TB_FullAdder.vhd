----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.11.2025 22:46:48
-- Design Name: 
-- Module Name: TB_FullAdder - Behavioral
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
use IEEE.STD_LOGIC_1164.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;



entity TB_FullAdder is
end TB_FullAdder;

architecture behavior of TB_FullAdder is
    -- Component declaration
    component FullAdder is
        Port ( A     : in  STD_LOGIC;
               B     : in  STD_LOGIC;
               C_in   : in  STD_LOGIC;
               S   : out STD_LOGIC;
               C_out  : out STD_LOGIC);
    end component;

    -- Signals to connect to FullAdder
    signal A, B, C_in   : STD_LOGIC := '0';
    signal S, C_out   : STD_LOGIC;

begin
    -- Instantiate the Unit Under Test (UUT)
    uut: FullAdder port map (
        A     => A,
        B     => B,
        C_in   => C_in,
        S   => S,
        C_out  => C_out
    );

    -- Stimulus process
    stim_proc: process
    begin
        -- Test all 8 input combinations
        A <= '0'; B <= '0'; C_in <= '0'; wait for 100 ns;
        A <= '0'; B <= '0'; C_in <= '1'; wait for 100 ns;
        A <= '0'; B <= '1'; C_in <= '0'; wait for 100 ns;
        A <= '0'; B <= '1'; C_in <= '1'; wait for 100 ns;
        A <= '1'; B <= '0'; C_in <= '0'; wait for 100 ns;
        A <= '1'; B <= '0'; C_in <= '1'; wait for 100 ns;
        A <= '1'; B <= '1'; C_in <= '0'; wait for 100 ns;
        A <= '1'; B <= '1'; C_in <= '1'; wait for 100 ns;
        wait;
    end process;
end Behavior;
