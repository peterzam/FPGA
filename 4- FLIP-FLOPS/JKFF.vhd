----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/06/2019 09:13:35 AM
-- Design Name: 
-- Module Name: JKFF - Behavioral
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

entity JKFF is
    Port ( j : in STD_LOGIC;
           k : in STD_LOGIC;
           clk : in STD_LOGIC;
           clear : in STD_LOGIC;
           q : out STD_LOGIC);
end JKFF;

architecture Behavioral of JKFF is
signal temp : STD_LOGIC;
begin
process (j, k , clk, clear) 
    begin
        if( rising_edge(clk)) then
            if clear = '1' then
                temp <= '0';
             else
                if ( j = '0' and k = '0') then
                    temp <= temp;
                elsif (j= '0' and k = '1') then
                    temp <= '0';
                elsif (j = '1' and k = '0') then
                    temp <= '1';
                else
                    temp <= not(temp);
                end if;
             end if;
          end if;
                 q <= temp; 
end process;

end Behavioral;
