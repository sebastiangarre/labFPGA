library ieee;
use ieee.std_logic_1164.all;

entity Restador_Completo is
	port ( in_a, in_b, in_bin, CLOCK : in std_logic;
			 o_z, o_bout : out std_logic);
end Restador_Completo;

architecture Behavioral of Restador_Completo is

component FF_D 
	port(D,CLOCK : in std_logic;
		  Q : out std_logic);
end component;

signal a,b,bin,bout,z : std_logic;
begin

	z <= a xor b xor bin;
	bout <= (a and b) or ((bin and a) or (bin and b));
	
 D1: FF_D port map (in_a,CLOCK,a);
 D2: FF_D port map (in_b,CLOCK,b);
 D3: FF_D port map (in_bin,CLOCK,bin);
 D4: FF_D port map (bout,CLOCK,o_bout);
 D5: FF_D port map (z,CLOCK,o_z);
end Behavioral;