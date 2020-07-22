library verilog;
use verilog.vl_types.all;
entity bank is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        en              : in     vl_logic_vector(0 to 31);
        d               : in     vl_logic;
        q               : out    vl_logic_vector(0 to 31)
    );
end bank;
