library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 
entity dato is
    port (
        hab_dato : in std_logic;         
        SCL      : in std_logic;         
        fin_dato : out std_logic;        
        registro : out std_logic_vector(7 downto 0)  
    );
end dato;

architecture Behavioral of dato is
    signal contador : unsigned(3 downto 0) := (others => '0');  
    signal data_reg : std_logic_vector(7 downto 0) := (others => '0'); 
begin

    process(SCL)
    begin
        if rising_edge(SCL) then
            if hab_dato = '1' then
                -- Desplazar los datos en el registro hacia la izquierda y agregar el valor de SCL en el bit menos significativo
                data_reg <= data_reg(6 downto 0) & SCL;

                contador <= contador + 1;

                -- Cuando el contador llega a 8, activo fin_dato y reiniciamos el contador
                if contador = "1000" then
                    fin_dato <= '1';
                    registro <= data_reg;  
                    contador <= (others => '0');  -- Reiniciamos el contador
                else
                    fin_dato <= '0';
                end if;
            end if;
        end if;
    end process;

end Behavioral;
