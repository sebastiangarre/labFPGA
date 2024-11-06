library ieee;
use ieee.std_logic_1164.all;

entity Restador_Completo is
	port ( in_a, in_b, in_bin: in std_logic;
			 o_z, o_bout : out std_logic);
end Restador_Completo;

architecture Behavioral of Restador_Completo is

signal a,b,bin,bout,z : std_logic;
begin

	z <= a xor b xor bin;
	bout <= (a and b) or ((bin and a) or (bin and b));
	
end Behavioral;