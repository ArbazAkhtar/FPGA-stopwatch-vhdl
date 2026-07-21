----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/13/2026 08:28:15 AM
-- Design Name: 
-- Module Name: stopwatch - Behavioral
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

entity stopwatch is
    Port ( clk_in : in STD_LOGIC;
           reset_in : in STD_LOGIC;
           sw_start : in STD_LOGIC;
           sw_stop : in STD_LOGIC;
           sw_clear : in STD_LOGIC;
           seg_out : out STD_LOGIC_VECTOR(6 downto 0);
           an_out : out STD_LOGIC_VECTOR(7 downto 0));
end stopwatch;

architecture Behavioral of stopwatch is
signal count_clk, count_reset: std_logic;
signal count_en : std_logic_vector(7 downto 0);
signal digits   : digit_vector(7 downto 0) := (others => x"F");
begin
U1: entity work.stopwatch_sm port map (clk_in => clk_in, reset_in => reset_in,
                                       sw_start => sw_start, sw_stop => sw_stop, sw_clear => sw_clear,
                                       count_en => count_en(0), count_reset => count_reset);
U2: entity work.ClockDiv generic map (count_width => 500000)
                        port map (clk_in => clk_in, reset => reset_in, clk_out => count_clk);

U3: entity work.counter generic map (count_width => 9) -- 1/100 s
                        port map (clk_in => count_clk, reset_in => count_reset, dir => '1',
                                  en_in => count_en(0), en_out => count_en(1), counts => digits(0));
U4: entity work.counter generic map (count_width => 9) -- 1/10 s
                        port map (clk_in => count_clk, reset_in => count_reset, dir => '1',
                                  en_in => count_en(1), en_out => count_en(2), counts => digits(1));
U5: entity work.counter generic map (count_width => 9) -- 1 s
                        port map (clk_in => count_clk, reset_in => count_reset, dir => '1',
                                  en_in => count_en(2), en_out => count_en(3), counts => digits(2));
U6: entity work.counter generic map (count_width => 5) -- 10 s
                        port map (clk_in => count_clk, reset_in => count_reset, dir => '1',
                                  en_in => count_en(3), en_out => count_en(4), counts => digits(3));
U7: entity work.counter generic map (count_width => 9) -- 1 min
                        port map (clk_in => count_clk, reset_in => count_reset, dir => '1',
                                  en_in => count_en(4), en_out => count_en(5), counts => digits(4));
U8: entity work.counter generic map (count_width => 5) -- 10 min
                        port map (clk_in => count_clk, reset_in => count_reset, dir => '1',
                                  en_in => count_en(5), en_out => count_en(6), counts => digits(5));
U9: entity work.counter generic map (count_width => 9) -- 1 h
                        port map (clk_in => count_clk, reset_in => count_reset, dir => '1',
                                  en_in => count_en(6), en_out => count_en(7), counts => digits(6));
U10:entity work.counter generic map (count_width => 9) -- 10 h
                        port map (clk_in => count_clk, reset_in => count_reset, dir => '1',
                                  en_in => count_en(7), en_out => open, counts => digits(7));
U11:entity work.led_driver port map (clk_in => clk_in, reset => reset_in, digits => digits,
                                     seg_out => seg_out, an_out => an_out);
end Behavioral;
