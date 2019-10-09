----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/18/2019 11:15:45 AM
-- Design Name: 
-- Module Name: Reg4bitParelleltoPatallel - Behavioral
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

entity Reg4bitParelleltoPatallel is
    Port ( CLK : in STD_LOGIC;
           CLR : in STD_LOGIC;
           LD : in STD_LOGIC;
           Z : out STD_LOGIC_VECTOR (3 downto 0);
           X : inout STD_LOGIC_VECTOR (3 downto 0);
           C : in STD_LOGIC_VECTOR (3 downto 0));
end Reg4bitParelleltoPatallel;



architecture Behavioral of Reg4bitParelleltoPatallel is

COMPONENT MUX_2x1_ECE49 is
    Port ( i0 : in STD_LOGIC;
           i1 : in STD_LOGIC;
           s : in STD_LOGIC;
           y : out STD_LOGIC);
end COMPONENT;

SIGNAL A0,A1,A2,A3,B0,B1,,B2,B3: STD_LOGIC;

begin
    process(clk)
    begin
    if clr = '1' then
    Z <= "0000";
    elsif (clk 'event and clk='1') then
    Z <= X;
    end if;
    end process;
    
    
U1: MUX_2x1_ECE49 PORT MAP (A0,C(0),LD,B0);
U2: MUX_2x1_ECE49 PORT MAP (A1,C(1),LD,B1);
U3: MUX_2x1_ECE49 PORT MAP (A2,C(2),LD,B2);
U4: MUX_2x1_ECE49 PORT MAP (A3,C(3),LD,B3);



end Behavioral;


