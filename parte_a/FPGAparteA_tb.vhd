library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

ENTITY FPGAparteA_tb  IS END FPGAparteA_tb;

ARCHITECTURE behavior OF FPGAparteA_tb is
	COMPONENT FPGAparteA --component declaration
	PORT (
		SW1 : IN STD_LOGIC;
		SW2 : IN STD_LOGIC;
		SW3 : IN STD_LOGIC;
		LED : out STD_LOGIC
		);
	END COMPONENT;
	
	signal SW1 : std_logic := '0';
	signal SW2 : std_logic := '0';
	signal SW3 : std_logic := '0';
	signal LED : std_logic;
	
BEGIN
	uut: FPGAparteA PORT MAP (
		SW1	=> SW1,
		SW2	=> SW2,
		SW3	=> SW3,
		LED	=> LED
	);
	
	stim_proc: process 
	begin
		SW1 <= '0'; SW2 <= '0'; SW3 <= '0'; wait for 10ns;
		SW1 <= '0'; SW2 <= '0'; SW3 <= '1'; wait for 10ns;
		SW1 <= '0'; SW2 <= '1'; SW3 <= '0'; wait for 10ns;
		SW1 <= '0'; SW2 <= '1'; SW3 <= '1'; wait for 10ns;
		SW1 <= '1'; SW2 <= '0'; SW3 <= '0'; wait for 10ns;
		SW1 <= '1'; SW2 <= '0'; SW3 <= '1'; wait for 10ns;
		SW1 <= '1'; SW2 <= '1'; SW3 <= '0'; wait for 10ns;
		SW1 <= '1'; SW2 <= '1'; SW3 <= '1'; wait for 10ns;
			wait;
		end process;
	END;