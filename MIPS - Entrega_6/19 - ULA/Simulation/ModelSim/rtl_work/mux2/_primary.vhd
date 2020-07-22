library verilog;
use verilog.vl_types.all;
entity mux2 is
    port(
        d               : in     vl_logic_vector(1 downto 0);
        s               : in     vl_logic;
        y               : out    vl_logic
    );
end mux2;
