----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/22/2019 10:00:00 AM
-- Design Name: 
-- Module Name: allcse014 - Behavioral
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

entity allcse014 is
    Port ( i01 : in STD_LOGIC;
           i02 : in STD_LOGIC;
           i03 : in STD_LOGIC;
           io4 : in STD_LOGIC;
           i05 : in STD_LOGIC;
           i06 : in STD_LOGIC;
           i07 : in STD_LOGIC;
           b00 : out STD_LOGIC;
           b01 : out STD_LOGIC;
           b02 : out STD_LOGIC);
end allcse014;

architecture Behavioral of allcse014 is

component mux2X1cse014 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           o : out STD_LOGIC);
end component;
SIGNAL A, B,C: STD_LOGIC;
begin
C1:  mux2X1cse014 PORT MAP(i01, i05, io4, A);
C2:  mux2X1cse014 PORT MAP(i02, i06, io4, B);
C3:  mux2X1cse014 PORT MAP(i03, i07, io4, C);
C4:  mux2X1cse014 PORT MAP(A, C, B, B00);
B02 <= io4;
B01<= B;


end Behavioral;
