library verilog;
use verilog.vl_types.all;
entity somador is
    port(
        inA             : in     vl_logic;
        inB             : in     vl_logic;
        cin             : in     vl_logic;
        out_s           : out    vl_logic;
        cout            : out    vl_logic
    );
end somador;
