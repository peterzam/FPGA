----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/28/2019 03:46:08 PM
-- Design Name: 
-- Module Name: FSM_B - Behavioral
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

entity FSM_B is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           x : in STD_LOGIC;
           z : out STD_LOGIC);
end FSM_B;

architecture Behavioral of FSM_B is

type state_type is (sin, s1, s10, s101);
signal state : state_type;
begin
process (x,clk)
begin
if(reset = '1') then
  state <= sin;
elsif (rising_edge(clk)) then
  case state is
  
  when sin => 
  if x = '1' then
  state <= s1;
  else
  state <= sin;
  end if;
  
  when s1 => 
    if x = '1' then
    state <= sin;
    else
    state <= s10;
    end if;
    
    when s10 => 
      if x = '0' then
      state <= sin;
      else
      state <= s101;
      end if;
      
      when others => 
        if x = '0' then
        state <= s10;
        else
        state <= sin;
        end if;
        end case;

end if;

end process;

process (x,clk)
begin
if reset = '1' then
    z <='0';
    
  elsif(rising_edge(clk)) then
case state is
    when sin => z <= '0';
    when s1 => z <= '0';
    when s10 => z <= '0';
    when s101 =>
        if x = '1' then
            z<= '1';
        else
            z<='0';
            
        end if;
end case;
end if;
end process;
end Behavioral;

