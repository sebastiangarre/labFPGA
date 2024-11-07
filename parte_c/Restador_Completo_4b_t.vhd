library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity Restador_Completo_4b_t is
end Restador_Completo_4b_t;

architecture behavior of Restador_Completo_4b_t is

    component Restador_completo
        port(
            a0, a1, a2, a3     : in  std_logic;
            b0, b1, b2, b3     : in  std_logic;
            bin                : in  std_logic;
            CLOCK              : in  std_logic;
            z0, z1, z2, z3     : out std_logic;
            bout               : out std_logic
        );
    end component;

    signal a0_t, a1_t, a2_t, a3_t : std_logic := '0';
    signal b0_t, b1_t, b2_t, b3_t : std_logic := '0';
    signal bin_t                     : std_logic := '0';
    signal CLOCK_t                   : std_logic := '0';
    signal z0_t, z1_t, z2_t, z3_t : std_logic;
    signal bout_t                   : std_logic;

    constant clk_period : time := 10 ns;

begin

    uut: Restador_completo
        port map (
            a0 => a0_t,
            a1 => a1_t,
            a2 => a2_t,
            a3 => a3_t,
            b0 => b0_t,
            b1 => b1_t,
            b2 => b2_t,
            b3 => b3_t,
            bin => bin_t,
            CLOCK => CLOCK_t,
            z0 => z0_t,
            z1 => z1_t,
            z2 => z2_t,
            z3 => z3_t,
            bout => bout_t
        );

    clk_process : process
    begin
        while true loop
            CLOCK_t <= '0';
            wait for clk_period / 2;
            CLOCK_t <= '1';
            wait for clk_period / 2;
        end loop;
    end process;

    stimulus_process : process
    begin
        wait for clk_period; 
        a0_t <= '1'; a1_t <= '0'; a2_t <= '0'; a3_t <= '0';
        b0_t <= '0'; b1_t <= '1'; b2_t <= '0'; b3_t <= '0';
        bin_t <= '0';
        wait for clk_period * 2;

        a0_t <= '0'; a1_t <= '0'; a2_t <= '1'; a3_t <= '1';
        b0_t <= '1'; b1_t <= '0'; b2_t <= '1'; b3_t <= '0';
        bin_t <= '1';
        wait for clk_period * 2;

        a0_t <= '1'; a1_t <= '1'; a2_t <= '1'; a3_t <= '1';
        b0_t <= '0'; b1_t <= '0'; b2_t <= '0'; b3_t <= '0';
        bin_t <= '1';
        wait for clk_period * 2;

        a0_t <= '0'; a1_t <= '1'; a2_t <= '0'; a3_t <= '1';
        b0_t <= '0'; b1_t <= '1'; b2_t <= '0'; b3_t <= '1';
        bin_t <= '0';
        wait for clk_period * 2;

        wait;
    end process;
end behavior;