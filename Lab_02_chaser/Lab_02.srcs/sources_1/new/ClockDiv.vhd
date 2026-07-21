----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.11.2025 16:13:25
-- Design Name: 
-- Module Name: ClockDiv - Behavioral
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

entity ClockDiv is 
    Generic ( count_width : integer := 5000 ); 
    Port ( clk_in : in STD_LOGIC;
           reset : in STD_LOGIC;
           clk_out : out STD_LOGIC);
end ClockDiv;

architecture Behavioral of ClockDiv is

begin
process(clk_in, reset)
variable counts : integer range 0 to count_width := 0;
variable Q : std_logic := '0';
begin
 if reset='0' then 
     counts := 0;
     Q:= '0';
 elsif rising_edge(clk_in) then
 counts := counts + 1;
 if counts = count_width then
 Q := not Q;
 counts := 0;
 end if;
 end if;
 
 clk_out <= Q;
 end process;

end Behavioral;
