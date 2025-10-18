library verilog;
use verilog.vl_types.all;
entity tri_state_buff is
    port(
        din             : in     vl_logic;
        sel             : in     vl_logic;
        dout            : out    vl_logic
    );
end tri_state_buff;
