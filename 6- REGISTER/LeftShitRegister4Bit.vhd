----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/07/2019 04:04:37 PM
-- Design Name: 
-- Module Name: LSR4 - Behavioral
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

entity LSR4 is
    Port ( x : in STD_LOGIC;
           clk : in STD_LOGIC;
           load : in STD_LOGIC;
           clear : in STD_LOGIC;
           y : out STD_LOGIC);
end LSR4;

architecture Behavioral of LSR4 is

COMPONENT D_FF is
    Port ( d : in STD_LOGIC;
           clk : in STD_LOGIC;
           clear : in STD_LOGIC;
           q : out STD_LOGIC);
end COMPONENT;

COMPONENT MUX_2x1 is
    Port ( i0 : in STD_LOGIC;
           i1 : in STD_LOGIC;
           s : in STD_LOGIC;
           y : out STD_LOGIC);
end COMPONENT;

signal Q3, Q2, Q1, Q0, M3, M2, M1, M0 :std_logic;

begin

U1: D_FF port map (M3, clk, clear, Q3);
U2: D_FF port map (M2, clk, clear, Q2);
U3: D_FF port map (M1, clk, clear, Q1);
U4: D_FF port map (M0, clk, clear, Q0);

MP1: MUX_2x1 port map (Q3, X, load, M3);
MP2: MUX_2x1 port map (Q2, Q3, load, M2);
MP3: MUX_2x1 port map (Q1, Q2, load, M1);
MP4: MUX_2x1 port map (Q0, Q1, load, M0);

Y<= Q0;

end Behavioral;
