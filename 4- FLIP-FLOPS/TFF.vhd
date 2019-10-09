----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/07/2019 09:26:59 PM
-- Design Name: 
-- Module Name: TFF - Behavioral
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

entity TFF is
    Port ( t : in STD_LOGIC;
           clk : in STD_LOGIC;
           clear : in STD_LOGIC;
           q : out STD_LOGIC);
end TFF;

architecture Behavioral of TFF is
signal temp : STD_LOGIC;
begin
process (clear,CLK) 
    begin
        if (rising_edge(clk)) then   
            if clear='1' then   
                temp <= '0';  		
            else
                if t = '0' then
                temp <= temp;
                elsif t = '1' then 
                temp <= not(temp);
                end if;
            end if;
        end if; 
    end process;
    q <= temp;

end Behavioral;
