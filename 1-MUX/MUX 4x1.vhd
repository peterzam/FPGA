----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/14/2019 03:42:13 PM
-- Design Name: 
-- Module Name: MUX_4x1_ECE049 - Behavioral
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

entity MUX_4x1_ECE049 is
    Port ( I0 : in STD_LOGIC;
           I1 : in STD_LOGIC;
           I2 : in STD_LOGIC;
           I3 : in STD_LOGIC;
           Y : out STD_LOGIC;
           S0 : in STD_LOGIC;
           S1 : in STD_LOGIC);
end MUX_4x1_ECE049;

architecture Behavioral of MUX_4x1_ECE049 is

begin

Y <= (I0 AND NOT (S1) AND NOT (S0))OR
(I1 AND NOT (S1) AND NOT (S0))OR
(I2 AND NOT (S1) AND NOT (S0))OR
(I3 AND NOT (S1) AND NOT (S0));

end Behavioral;
