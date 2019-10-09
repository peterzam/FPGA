----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/07/2019 04:38:48 PM
-- Design Name: 
-- Module Name: ADD4 - Behavioral
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

entity ADD4 is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           C : in STD_LOGIC;
           S : out STD_LOGIC_VECTOR (3 downto 0);
           COUT : out STD_LOGIC);
end ADD4;

architecture Behavioral of ADD4 is
COMPONENT FA_STR is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           s : out STD_LOGIC;
           cout : out STD_LOGIC);
end COMPONENT;

SIGNAL C1,C2,C3: STD_LOGIC;

begin

CHP1: FA_STR PORT MAP (A(0), B(0), '0', S(0), C1);
CHP2: FA_STR PORT MAP (A(1), B(1), C1, S(1), C2);
CHP3: FA_STR PORT MAP (A(2), B(2), C2, S(2), C3);
CHP4: FA_STR PORT MAP (A(3), B(3), C3, S(3), COUT);

end Behavioral;
