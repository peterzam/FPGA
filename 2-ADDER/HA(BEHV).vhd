----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/13/2019 03:19:55 PM
-- Design Name: 
-- Module Name: HA_behav_CSE14 - Behavioral
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

entity HA_behav_CSE14 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : out STD_LOGIC;
           s : out STD_LOGIC);
end HA_behav_CSE14;

architecture Behavioral of HA_behav_CSE14 is

begin

process(a,b)
begin

if(a = '0' and b = '0') then
c <= '0';
s <= '0';

elsif (a = '0' and b = '1') then
c <= '0';
s <= '1';

elsif (a = '1' and b = '0') then
c <= '0';
s <= '1';

else
c <= '1';
s <= '0';

end if;
end process;

end Behavioral;
