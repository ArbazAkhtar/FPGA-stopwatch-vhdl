----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.11.2025 21:59:14
-- Design Name: 
-- Module Name: TB_HalfAdder - Behavioral
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

entity TB_HalfAdder is
end TB_HalfAdder;

architecture behavior of TB_HalfAdder is
    -- Component declaration
    component HalfAdder is
        Port ( A     : in  STD_LOGIC;
               B     : in  STD_LOGIC;
               S     : out STD_LOGIC;
               C_out : out STD_LOGIC);
    end component;

    -- Signals to connect to the HalfAdder
    signal A, B     : STD_LOGIC := '0';
    signal S, C_out : STD_LOGIC;

begin
    -- Instantiate the Unit Under Test (UUT)
    uut: HalfAdder port map (
        A     => A,
        B     => B,
        S     => S,
        C_out => C_out
    );

    -- Stimulus process
    stim_proc: process
    begin
        -- Test case 1: A=0, B=0
        A <= '0'; B <= '0'; wait for 100 ns;
        -- Test case 2: A=0, B=1
        A <= '0'; B <= '1'; wait for 100 ns;
        -- Test case 3: A=1, B=0
        A <= '1'; B <= '0'; wait for 100 ns;
        -- Test case 4: A=1, B=1
        A <= '1'; B <= '1'; wait for 100 ns;
        -- End simulation
        wait;
    end process;
end behavior;