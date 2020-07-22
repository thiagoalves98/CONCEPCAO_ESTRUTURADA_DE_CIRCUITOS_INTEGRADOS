library verilog;
use verilog.vl_types.all;
entity mux2_1bit is
    port(
        d0              : in     vl_logic;
        d1              : in     vl_logic;
        s               : in     vl_logic;
        \out\           : out    vl_logic
    );
end mux2_1bit;
