library verilog;
use verilog.vl_types.all;
entity adder_tree is
    port(
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0);
        c               : in     vl_logic_vector(7 downto 0);
        d               : in     vl_logic_vector(7 downto 0);
        sum3            : out    vl_logic_vector(9 downto 0)
    );
end adder_tree;
