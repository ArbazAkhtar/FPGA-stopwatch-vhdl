----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/09/2026 11:27:02 AM
-- Design Name: 
-- Module Name: stopwatch_sm - Behavioral
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

entity stopwatch_sm is
    Port ( sw_start, sw_stop, sw_clear: in STD_LOGIC;
           clk_in, reset_in:            in STD_LOGIC;
           count_en, count_reset:       out STD_LOGIC);
end stopwatch_sm;

architecture Behavioral of stopwatch_sm is
type states is (idle, counting, clear);
signal current_state, next_state : states := clear;
begin
transition: process(current_state, sw_start, sw_stop, sw_clear)
begin
case current_state is
when clear => next_state <= idle;
when idle => if sw_start = '1' then next_state <= counting;
elsif sw_clear = '1' then next_state <= clear;
else next_state <= idle;
end if;
when counting => if sw_stop = '1' then next_state <= idle;
else next_state <= counting;
end if; 
when others => next_state <= idle;
end case;
end process;
state_mem: process(clk_in, reset_in)
begin
if reset_in= '0' then current_state <= clear; 
elsif rising_edge(clk_in) then current_state <= next_state;
end if;
end process;

output: process(current_state)
begin
case current_state is
when counting => count_en <= '1';
count_reset <= '1';
when idle => count_en <= '0';
count_reset <= '1';
when clear => count_en <= '0';
count_reset <= '0';
when others => count_en <= '0';
count_reset <='1';
end case;
end process;
end Behavioral;
