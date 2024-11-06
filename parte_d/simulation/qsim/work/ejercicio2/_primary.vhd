library verilog;
use verilog.vl_types.all;
entity ejercicio2 is
    port(
        reset           : in     vl_logic;
        clock           : in     vl_logic;
        X               : in     vl_logic;
        output1         : out    vl_logic;
        output2         : out    vl_logic;
        output3         : out    vl_logic;
        output4         : out    vl_logic
    );
end ejercicio2;
