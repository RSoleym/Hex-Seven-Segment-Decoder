library verilog;
use verilog.vl_types.all;
entity decoder_3to8 is
    port(
        a               : in     vl_logic_vector(2 downto 0);
        a3              : in     vl_logic;
        d               : out    vl_logic_vector(7 downto 0)
    );
end decoder_3to8;
