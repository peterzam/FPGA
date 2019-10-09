----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/28/2019 03:11:50 PM
-- Design Name: 
-- Module Name: FSM_A - Behavioral
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

entity FSM_A is
    Port ( clk : in STD_LOGIC;
           x : in STD_LOGIC;
           reset : in STD_LOGIC;
           z : out STD_LOGIC_VECTOR (1 downto 0));
end FSM_A;

architecture Behavioral of FSM_A is
type state_type is (s0, s1, s2, s3);
signal state : state_type;
begin
process (x,clk)
begin
if(reset = '1') then
  state <= s0;
elsif (rising_edge(clk)) then
  case state is
  
  when s0 => 
  if x = '0' then
  state <= s1;
  else
  state <= s3;
  end if;
  
  when s1 => 
    if x = '0' then
    state <= s3;
    else
    state <= s0;
    end if;
    
    when s2 => 
      if x = '0' then
      state <= s2;
      else
      state <= s1;
      end if;
      
      when others => 
        if x = '0' then
        state <= s0;
        else
        state <= s2;
        end if;
        end case;

end if;

end process;

process (x)
begin
case state is
when s0 =>
z <= "01";
when s1 =>
z <= "11";
when s2 =>
z <= "00";
when others =>
z <= "10";
end case;
end process;
end Behavioral;
