library verilog;
use verilog.vl_types.all;
entity Restador_Completo_4b is
    port(
        bout            : out    vl_logic;
        CLOCK           : in     vl_logic;
        a3              : in     vl_logic;
        b3              : in     vl_logic;
        a2              : in     vl_logic;
        b2              : in     vl_logic;
        a1              : in     vl_logic;
        b1              : in     vl_logic;
        a0              : in     vl_logic;
        b0              : in     vl_logic;
        bin             : in     vl_logic;
        z3              : out    vl_logic;
        z2              : out    vl_logic;
        z1              : out    vl_logic;
        z0              : out    vl_logic
    );
end Restador_Completo_4b;
