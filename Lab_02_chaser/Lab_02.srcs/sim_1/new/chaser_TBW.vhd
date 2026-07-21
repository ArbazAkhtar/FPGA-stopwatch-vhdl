----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.11.2025 18:30:02
-- Design Name: 
-- Module Name: chaser_TBW - Behavioral
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


entity chaser_TBW is
--  Port ( );
end chaser_TBW;

architecture Behavioral of chaser_TBW is

    -- DUT signals
    signal clk_in  : std_logic := '0';
    signal reset   : std_logic := '0';
    signal led_out : std_logic_vector(15 downto 0);

    constant T_clk : time := 10 ns;  -- 100 MHz

begin

    -- Instantiate DUT
    DUT: entity work.chaser
        port map (
            clk_in  => clk_in,
            reset   => reset,
            led_out => led_out
        );

    -- Clock generation
    clk_process : process
    begin
        wait for T_clk/2;
        clk_in <= not clk_in;
    end process;

    -- Stimulus
    stim_process : process
    begin
        -- Hold reset low for a while
        reset <= '0';
        wait for 1 us;

        -- Release reset
        reset <= '1';

        -- Run long enough to observe several LED shifts
        -- Note: your clockdiv generic is 6_250_000, so the divided clock is very slow.
        -- For simulation you may want to reduce count_width in chaser, or just shorten here.
        wait for 5 ms;

        -- Finish simulation
        wait;
    end process;




end Behavioral;
