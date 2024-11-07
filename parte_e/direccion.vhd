library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity direccion is
    Port (
        scl      : in  std_logic;
        hab_dir  : in  std_logic;
        sda      : in  std_logic;
        direccion : in std_logic_vector(2 downto 0); -- Dirección a comparar
        soy      : out std_logic;
        fin_dir      : out std_logic
    );
end direccion;

architecture Behavioral of direccion is

    signal contador   : std_logic_vector(6 downto 0) := (others => '0');
    signal registro   : std_logic_vector(6 downto 0) := (others => '0'); 
    signal habilitado : std_logic;  

begin

    contador_registro_proc : process(SCL)
    begin
        if rising_edge(SCL) then
            if Hab_Dir = '1' then
                -- Actualiza el contador
                if contador = "111" then
                    contador <= "000"; -- Reinicio del contador
                    fin_dir <= '1';
                else
                    contador <= contador + 1;
                    fin_dir <= '0';
                end if;

                registro <= registro(6 downto 0) & SDA;
                
                -- Comparación de la dirección con el registro en paralelo
                if registro = Direccion then
                    soy <= '1';
                else
                    soy <= '0';
                end if;
            else
                contador <= (others => '0');
                registro <= (others => '0');
                fin_dir <= '0';
                soy <= '0';
            end if;
        end if;
    end process;

end Behavioral;