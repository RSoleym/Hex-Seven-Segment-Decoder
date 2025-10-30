library verilog;
use verilog.vl_types.all;
entity compar_nbit is
    generic(
        N               : integer := 4
    );
    port(
        a               : in     vl_logic_vector;
        b               : in     vl_logic_vector;
        smaller         : out    vl_logic;
        equal           : out    vl_logic;
        greater         : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of N : constant is 1;
end compar_nbit;
