library verilog;
use verilog.vl_types.all;
entity parte_e is
    port(
        reset           : in     vl_logic;
        clock           : in     vl_logic;
        sda             : in     vl_logic;
        fin_dir         : in     vl_logic;
        soy             : in     vl_logic;
        fin_dato        : in     vl_logic;
        hab_dir         : out    vl_logic;
        hab_dato        : out    vl_logic;
        ack             : out    vl_logic
    );
end parte_e;
