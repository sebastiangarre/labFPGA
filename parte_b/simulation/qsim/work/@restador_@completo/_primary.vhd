library verilog;
use verilog.vl_types.all;
entity Restador_Completo is
    port(
        in_a            : in     vl_logic;
        in_b            : in     vl_logic;
        in_bin          : in     vl_logic;
        CLOCK           : in     vl_logic;
        o_z             : out    vl_logic;
        o_bout          : out    vl_logic
    );
end Restador_Completo;
