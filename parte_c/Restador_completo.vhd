library ieee;
use ieee.std_logic_1164.all;

entity Restador_completo is
	port ( in_a, in_b, in_bin: in std_logic;
			 o_z, o_bout : out std_logic);
end Restador_completo;

architecture Behavioral of Restador_completo is

begin

	o_z <= in_a xor in_b xor in_bin;
	o_bout <= (in_a and in_b) or ((in_bin and in_a) or (in_bin and in_b));
	
end Behavioral;