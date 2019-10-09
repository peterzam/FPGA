----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/01/2019 03:54:10 PM
-- Design Name: 
-- Module Name: sequenceDetector - Behavioral
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

entity sequenceDetector is
    Port ( x : in STD_LOGIC;
           clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           z : out STD_LOGIC);
end sequenceDetector;

architecture Behavioral of sequenceDetector is
type state_type is (s0, s1, s2 , s3);
signal state: state_type;
begin

process (clk, reset)
begin
    if reset = '1' then
        state <= s0;
    elsif (rising_edge(clk)) then
        case state is
            when s0 =>
                if x = '1' then
                    state <= s0;
                    else
                    state <= s1;
                    end if;
            when s1=>
                                    if x = '1' then
                                        state <= s0;
                                    else
                                        state <= s2;
                                    end if;
                                when s2=>
                                    if x = '1' then
                                        state <= s3;
                                    else
                                        state <= s2;
                                    end if;
                                when s3 =>
                                    if x = '1' then
                                        state <= s0;
                                    else
                                        state <= s1;
                                    end if;
                            end case;
    end if;
end process;
process (state)
	begin
		case state is
		    when s0 =>
		        z <= '0';
		    when s1 =>
		        z <= '0';
		    when s2 =>
		        z <= '1';
			when s3 =>
				z <= '0';
		end case;
	end process;

end Behavioral;
