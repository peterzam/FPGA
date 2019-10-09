----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/14/2019 04:11:03 PM
-- Design Name: 
-- Module Name: MUX_4x1_STR_ECE049 - Behavioral
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

entity MUX_4x1_STR_ECE049 is
    Port ( I0 : in STD_LOGIC;
           I1 : in STD_LOGIC;
           I2 : in STD_LOGIC;
           I3 : in STD_LOGIC;
           S0 : in STD_LOGIC;
           S1 : in STD_LOGIC;
           Y : out STD_LOGIC);
end MUX_4x1_STR_ECE049;

architecture Behavioral of MUX_4x1_STR_ECE049 is
COMPONENT MUX_2x1_ECE49 is
    Port ( i0 : in STD_LOGIC;
           i1 : in STD_LOGIC;
           s : in STD_LOGIC;
           y : out STD_LOGIC);
end COMPONENT;

SIGNAL A,B: STD_LOGIC;

begin

U1: MUX_2x1_ECE49 PORT MAP (I0,I1,S0,A);
U2: MUX_2x1_ECE49 PORT MAP (I2,I3,S0,B);
U3: MUX_2x1_ECE49 PORT MAP (A,B,S1,Y);



end Behavioral;
