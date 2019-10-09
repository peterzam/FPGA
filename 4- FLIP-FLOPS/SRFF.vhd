----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/08/2019 10:30:56 AM
-- Design Name: 
-- Module Name: SRFF - Behavioral
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

entity SRFF is
    Port ( s : in STD_LOGIC;
           r : in STD_LOGIC;
           clk : in STD_LOGIC;
           clear : in STD_LOGIC;
           q : out STD_LOGIC);
end SRFF;

architecture Behavioral of SRFF is
signal temp : STD_LOGIC;
begin
process (s, r , clk, clear) 
    begin
        if( rising_edge(clk)) then
            if clear = '1' then
                temp <= '0';
             else
                if ( s = '0' and r = '0') then
                    temp <= temp;
                elsif (s= '0' and r = '1') then
                    temp <= '0';
                elsif (s = '1' and r = '0') then
                    temp <= '1';
                end if;
             end if;
          end if;
                 q <= temp; 
end process;

end Behavioral;
