----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/09/2026 11:10:41 AM
-- Design Name: 
-- Module Name: counter - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter is
    Generic (count_width : integer := 9;
             bit_width : integer range 0 to 31 := 3);
    Port ( clk_in : in STD_LOGIC;
           reset_in : in STD_LOGIC;
           en_in : in STD_LOGIC;
           dir : in STD_LOGIC;
           en_out : out STD_LOGIC;
           counts : out STD_LOGIC_VECTOR(bit_width downto 0));
end counter;

architecture Behavioral of counter is

begin
process(clk_in, reset_in, en_in, dir)
    variable c : integer range 0 to count_width := 0;
begin
    if reset_in = '0' then c := 0;
    elsif rising_edge(clk_in) and en_in='1' then
        if dir='1' then
            if c = count_width then c := 0;
            else c := c + 1;
            end if;
        else
            if c = 0 then c := count_width;
            else c := c-1;
            end if;
        end if;
    end if;
    
    counts <= std_logic_vector(to_unsigned(c,counts'length));
    
    if (dir='1' and c=count_width) or (dir='0' and c=0) then en_out <= en_in;
    else en_out <= '0';
    end if;
end process;

end Behavioral;
