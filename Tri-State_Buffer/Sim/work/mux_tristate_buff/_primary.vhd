library verilog;
use verilog.vl_types.all;
entity mux_tristate_buff is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        sel             : in     vl_logic;
        dout            : out    vl_logic
    );
end mux_tristate_buff;
