library verilog;
use verilog.vl_types.all;
entity mux4 is
    port(
        d               : in     vl_logic_vector(3 downto 0);
        s               : in     vl_logic_vector(1 downto 0);
        y               : out    vl_logic
    );
end mux4;
