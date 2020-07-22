library verilog;
use verilog.vl_types.all;
entity mux32 is
    port(
        s               : in     vl_logic_vector(0 to 4);
        d               : in     vl_logic_vector(0 to 31);
        y               : out    vl_logic
    );
end mux32;
