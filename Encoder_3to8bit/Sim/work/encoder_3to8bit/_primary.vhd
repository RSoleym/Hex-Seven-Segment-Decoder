library verilog;
use verilog.vl_types.all;
entity encoder_3to8bit is
    port(
        a               : in     vl_logic_vector(7 downto 0);
        enable          : in     vl_logic;
        y               : out    vl_logic_vector(2 downto 0)
    );
end encoder_3to8bit;
