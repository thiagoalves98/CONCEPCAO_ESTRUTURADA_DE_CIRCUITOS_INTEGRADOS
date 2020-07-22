library verilog;
use verilog.vl_types.all;
entity \register\ is
    port(
        RW              : in     vl_logic_vector(0 to 4);
        en              : in     vl_logic;
        clk             : in     vl_logic;
        busW            : in     vl_logic;
        RA              : in     vl_logic_vector(0 to 4);
        RB              : in     vl_logic_vector(0 to 4);
        busA            : out    vl_logic;
        busB            : out    vl_logic
    );
end \register\;
