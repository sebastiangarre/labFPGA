library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FPGAparteA is
	Port ( SW1 : IN STD_LOGIC;
				SW2 : IN STD_LOGIC;
				SW3 : IN STD_LOGIC;
				LED : OUT STD_LOGIC);
end FPGAparteA;

architecture comp of FPGAparteA is

begin

LED <= ((SW1 xor (not (SW2))) or (SW3 and (not (SW2))));

end comp;