library verilog;
use verilog.vl_types.all;
entity meioSomador is
    port(
        in1             : in     vl_logic;
        in2             : in     vl_logic;
        out_s0          : out    vl_logic;
        cout_0          : out    vl_logic
    );
end meioSomador;
