----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/07/2019 03:36:05 PM
-- Design Name: 
-- Module Name: exp_10_A - Behavioral
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

entity exp_10_A is
    Port ( x : in STD_LOGIC;
           clk : in STD_LOGIC;
           clear : in STD_LOGIC;
           y : out STD_LOGIC);
end exp_10_A;

architecture Behavioral of exp_10_A is

COMPONENT D_FF_ECE is
    Port ( d : in STD_LOGIC;
           clk : in STD_LOGIC;
           clear : in STD_LOGIC;
           q : out STD_LOGIC);
end COMPONENT;

signal Q0,Q0bar, Q1,Q1bar, D0,D1 :std_logic;

begin

Q0bar <= not(Q0);
Q1bar <= not(Q1);
D0 <= x xor Q0;
D1 <= (Q1 and not(x)) or (Q0 and x and Q1bar ) or (x and Q1 and Q0bar);

U1: D_FF_ECE port map (D0, clk, clear, Q0);
U2: D_FF_ECE port map (D1, clk, clear, Q1);

y <= Q0 and Q1;

end Behavioral;
