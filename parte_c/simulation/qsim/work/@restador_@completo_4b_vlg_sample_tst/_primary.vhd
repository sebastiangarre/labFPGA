library verilog;
use verilog.vl_types.all;
entity Restador_Completo_4b_vlg_sample_tst is
    port(
        a0              : in     vl_logic;
        a1              : in     vl_logic;
        a2              : in     vl_logic;
        a3              : in     vl_logic;
        b0              : in     vl_logic;
        b1              : in     vl_logic;
        b2              : in     vl_logic;
        b3              : in     vl_logic;
        bin             : in     vl_logic;
        CLOCK           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Restador_Completo_4b_vlg_sample_tst;
