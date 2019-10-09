----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/22/2019 09:10:29 AM
-- Design Name: 
-- Module Name: Mux8x1cse014 - Behavioral
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

entity Mux8x1cse014 is
    Port ( i : in STD_LOGIC_VECTOR (7 downto 0);
           s : in STD_LOGIC_VECTOR (2 downto 0);
           y : out STD_LOGIC);
end Mux8x1cse014;

architecture Behavioral of Mux8x1cse014 is

begin

process(s)
begin 
case s is
when "000" => y <= I(0);
when "001" => y <= I(1);
when "010" => y <= I(2);
when "011" => y <= I(3);
when "100" => y <= I(4);
when "101" => y <= I(5);
when "110" => y <= I(6);
when others => y <= I(7);
end case;
end process;

end Behavioral;
