library verilog;
use verilog.vl_types.all;
entity decoder_4to16 is
    generic(
        N               : integer := 4
    );
    port(
        a               : in     vl_logic_vector;
        d               : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of N : constant is 1;
end decoder_4to16;
