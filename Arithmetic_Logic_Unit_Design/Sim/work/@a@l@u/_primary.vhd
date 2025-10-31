library verilog;
use verilog.vl_types.all;
entity ALU is
    generic(
        PARAM_WIDTH     : integer := 8
    );
    port(
        a               : in     vl_logic_vector;
        b               : in     vl_logic_vector;
        opcode          : in     vl_logic_vector(3 downto 0);
        y               : out    vl_logic_vector;
        z               : out    vl_logic;
        c               : out    vl_logic;
        n               : out    vl_logic;
        v               : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of PARAM_WIDTH : constant is 1;
end ALU;
