library verilog;
use verilog.vl_types.all;
entity divisor is
    port(
        a               : in     vl_logic_vector(5 downto 0);
        b               : in     vl_logic_vector(5 downto 0);
        z               : out    vl_logic_vector(9 downto 0)
    );
end divisor;
