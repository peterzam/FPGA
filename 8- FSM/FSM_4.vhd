----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/27/2019 09:25:34 AM
-- Design Name: 
-- Module Name: FSM_4s - Behavioral
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

entity FSM_4s is
    Port ( clk : in STD_LOGIC;
           data_in : in STD_LOGIC;
           reset : in STD_LOGIC;
           data_out : out STD_LOGIC_VECTOR (1 downto 0));
end FSM_4s;

architecture Behavioral of FSM_4s is

type state_type is (s0, s1, s2, s3);
signal state : state_type;

begin

process (clk, reset)
begin
if(reset = '1') then
  state <= s0;
elsif (rising_edge(clk)) then
  case state is
  
  when s0 => 
  if data_in = '1' then
  state <= s1;
  else
  state <= s0;
  end if;
  
  when s1 => 
    if data_in = '1' then
    state <= s2;
    else
    state <= s1;
    end if;
    
    when s2 => 
      if data_in = '1' then
      state <= s3;
      else
      state <= s2;
      end if;
      
      when others => 
        if data_in = '1' then
        state <= s0;
        else
        state <= s3;
        end if;
        end case;

end if;

end process;

process (state)
begin
case state is
when s0 =>
data_out <= "00";
when s1 =>
data_out <= "01";
when s2 =>
data_out <= "10";
when others =>
data_out <= "11";
end case;
end process;

end Behavioral;
