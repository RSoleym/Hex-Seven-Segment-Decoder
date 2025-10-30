library verilog;
use verilog.vl_types.all;
entity testbench is
    generic(
        ADDER_WIDTH     : integer := 8
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of ADDER_WIDTH : constant is 1;
end testbench;
