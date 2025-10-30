library verilog;
use verilog.vl_types.all;
entity demux_4x_nbit is
    generic(
        N               : integer := 8
    );
    port(
        y               : in     vl_logic_vector;
        sel             : in     vl_logic_vector(1 downto 0);
        a               : out    vl_logic_vector;
        b               : out    vl_logic_vector;
        c               : out    vl_logic_vector;
        d               : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of N : constant is 1;
end demux_4x_nbit;
