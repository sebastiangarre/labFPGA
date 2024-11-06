LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY Restador_Completo_T is
END Restador_Completo_T;
 
ARCHITECTURE behavior OF Restador_Completo_T IS
 

   COMPONENT Restador_Completo
   PORT(
      in_a    : in STD_LOGIC;
      in_b    : in STD_LOGIC;
      in_bin  : in STD_LOGIC;
		CLOCK  : in STD_LOGIC;
      o_Z    : out STD_LOGIC;
      o_Bout : out STD_LOGIC
     );
   END COMPONENT;
 
   --Inputs
   signal in_a : std_logic := '0';
   signal in_b : std_logic := '0';
   signal in_bin : std_logic := '0';
	signal CLOCK : std_logic := '0';
   --Outputs
   signal o_z : std_logic;
   signal o_bout : std_logic;
	
--Clock period definition
constant clock_period : time := 20ns;
BEGIN
    -- Instantiate the Unit Under Test (UUT)
   uut: Restador_Completo PORT MAP (
      in_a    => in_a,
      in_b    => in_b,
      in_bin  => in_bin,
		CLOCK=> CLOCK,
      o_z    => o_z,
      o_bout => o_bout
   );
 
 
 --Clock process definitions
clock_process:process
	begin
		CLOCK<='0';
		wait for clock_period/2;
		CLOCK<='1';
		wait for clock_period/2;
end process;

   stim_proc: process
   begin
      in_a <= '0'; in_b <= '0'; in_bin <= '0'; wait for 30ns;
      in_a <= '0'; in_b <= '0'; in_bin <= '1'; wait for 30ns;
      in_a <= '0'; in_b <= '1'; in_bin <= '0'; wait for 30ns;
      in_a <= '0'; in_b <= '1'; in_bin <= '1'; wait for 30ns;
      in_a <= '1'; in_b <= '0'; in_bin <= '0'; wait for 30ns;
		in_a <= '1'; in_b <= '0'; in_bin <= '1'; wait for 30ns;
		in_a <= '1'; in_b <= '1'; in_bin <= '0'; wait for 30ns;
	   in_a <= '1'; in_b <= '1'; in_bin <= '1'; wait for 30ns; 
      wait;
   end process;
END;
