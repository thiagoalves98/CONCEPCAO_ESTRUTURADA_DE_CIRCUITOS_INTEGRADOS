library verilog;
use verilog.vl_types.all;
entity mux8 is
    port(
        d               : in     vl_logic_vector(7 downto 0);
        s               : in     vl_logic_vector(2 downto 0);
        y               : out    vl_logic
    );
end mux8;
