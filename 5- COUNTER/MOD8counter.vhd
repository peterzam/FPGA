----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/08/2019 03:11:20 PM
-- Design Name: 
-- Module Name: MOD8counter - Behavioral
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

entity MOD8counter is
    Port ( clk : in STD_LOGIC;
           clear : in STD_LOGIC;
           q : inout STD_LOGIC_VECTOR(2 downto 0));
end MOD8counter;

architecture Behavioral of MOD8counter is
component DFF is
    Port ( d : in STD_LOGIC;
           clk : in STD_LOGIC;
           clear : in STD_LOGIC;
           q : out STD_LOGIC);
end component;
signal q1, q2, q3, a, b, c : STD_LOGIC;
begin

a <= not(q1);
b <= not(q2);
c <= not(q3);

D1: DFF port map (a, clk, clear, q1);
D2: DFF port map (b, q1, clear, q2);
D3: DFF port map (c, q2, clear, q3);

q(2) <= a;
q(1) <= b;
q(0) <= c;

end Behavioral;
