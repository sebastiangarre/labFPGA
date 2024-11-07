library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;  

entity divisor is
    port (
        a : in std_logic_vector(5 downto 0);   -- a: 4 bits enteros, 2 bits fraccionarios
        b : in std_logic_vector(5 downto 0);   -- b: 4 bits enteros, 2 bits fraccionarios SUPONGO Q B NO PUEDE SER 0!!!!!!!!
        z : out std_logic_vector(9 downto 0)   -- z: 7 bits enteros, 3 bits fraccionarios
    );
end divisor;

architecture Behavioral of divisor is
    signal a_ext : unsigned(15 downto 0);  -- Expansión de 'a' de 6 bits a 16 bits (10 enteros y 6 fraccionarios)
    signal b_val : unsigned(5 downto 0);   -- 'b' permanece con 6 bits
    signal result : unsigned(15 downto 0); -- Resultado de la división, 16 bits (pongo 15 para solucionar)
begin

    process(a, b)
    begin
        a_ext <= "000000" & unsigned(a) & "0000";  -- 6 ceros a la izquierda y 4 ceros a la derecha
        b_val <= unsigned(b);
        result <= a_ext / b_val;
        z <= std_logic_vector(result(9 downto 0));  -- TomO los 10 bits (7 enteros, 3 decimales)
    end process;

end Behavioral;