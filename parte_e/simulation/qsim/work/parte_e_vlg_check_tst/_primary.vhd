library verilog;
use verilog.vl_types.all;
entity parte_e_vlg_check_tst is
    port(
        ack             : in     vl_logic;
        hab_dato        : in     vl_logic;
        hab_dir         : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end parte_e_vlg_check_tst;
