library verilog;
use verilog.vl_types.all;
entity one_bit_comp is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        gt              : out    vl_logic;
        eql             : out    vl_logic;
        lt              : out    vl_logic
    );
end one_bit_comp;
