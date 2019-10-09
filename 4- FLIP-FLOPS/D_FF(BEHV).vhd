library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity D_FF_LAB is
   port
   (
      clk : in std_logic;
      clear : in std_logic;
      d : in std_logic;
      q : out std_logic
   );
end entity D_FF_LAB;
 
architecture Behavioral of D_FF_LAB is

begin
   process (clk) is
   begin
      if rising_edge(clk) then  
         if (clear='1') then   
            q <= '0';
         else
            if(d<='1')then
            q<='1';
         else
            q<='0';
            end if;
        end if;
      end if;
   end process;
end architecture Behavioral;