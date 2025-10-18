library verilog;
use verilog.vl_types.all;
entity demux_one_bit is
    port(
        x               : in     vl_logic;
        sel             : in     vl_logic;
        y0              : out    vl_logic;
        y1              : out    vl_logic
    );
end demux_one_bit;
