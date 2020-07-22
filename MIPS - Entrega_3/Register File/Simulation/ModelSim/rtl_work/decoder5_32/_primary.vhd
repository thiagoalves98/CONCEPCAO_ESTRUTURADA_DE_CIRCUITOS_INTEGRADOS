library verilog;
use verilog.vl_types.all;
entity decoder5_32 is
    port(
        a               : in     vl_logic_vector(0 to 4);
        y               : out    vl_logic_vector(0 to 31)
    );
end decoder5_32;
