library verilog;
use verilog.vl_types.all;
entity ejercicio2_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        X               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end ejercicio2_vlg_sample_tst;
