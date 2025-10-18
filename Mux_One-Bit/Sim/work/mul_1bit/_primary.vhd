library verilog;
use verilog.vl_types.all;
entity mul_1bit is
    port(
        x               : in     vl_logic;
        a               : in     vl_logic;
        b               : in     vl_logic;
        y               : out    vl_logic
    );
end mul_1bit;
