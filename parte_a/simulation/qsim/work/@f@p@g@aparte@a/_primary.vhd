library verilog;
use verilog.vl_types.all;
entity FPGAparteA is
    port(
        SW1             : in     vl_logic;
        SW2             : in     vl_logic;
        SW3             : in     vl_logic;
        LED             : out    vl_logic
    );
end FPGAparteA;
