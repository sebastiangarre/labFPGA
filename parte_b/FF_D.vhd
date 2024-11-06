library ieee;
use ieee. std_logic_1164.all;
use ieee. std_logic_arith.all;
use ieee. std_logic_unsigned.all;

entity FF_D is -- es el fliflop D pero me saltaba error si no le ponia el mismo nombre
PORT( D,CLOCK: in std_logic;
Q: out std_logic);
 end FF_D;
 
 architecture behavioral of FF_D is 
 begin
 process(CLOCK)
 begin
 if(CLOCK='1' and CLOCK'EVENT) then
 Q <= D;
 end if;
 end process;
 end behavioral;