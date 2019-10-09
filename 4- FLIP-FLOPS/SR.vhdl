library ieee;
use ieee.std_logic_1164.all;
entity srffbh is
port(s,r,clk: in std_logic;
q,qb: out std_logic);
end srffbh;
architecture srffbharc of srffbh is
begin
process(s,r,clk)
begin
if clk=’1’then
if r=’0’and s=’1’then
q<='1';
qb<='0';
elsif r='1'and s='0' then
q<='0';
qb<='1';
elsif r='1'and s='1' then
q<='Z';
qb<='Z';
end if;
end if;
end process;
end srffbharc;