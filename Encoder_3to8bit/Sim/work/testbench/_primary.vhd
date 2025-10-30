library verilog;
use verilog.vl_types.all;
entity testbench is
    generic(
        N               : integer := 3
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of N : constant is 1;
end testbench;
