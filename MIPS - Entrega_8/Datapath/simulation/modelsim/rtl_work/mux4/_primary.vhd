library verilog;
use verilog.vl_types.all;
entity mux4 is
    port(
        d0              : in     vl_logic_vector(31 downto 0);
        d1              : in     vl_logic_vector(31 downto 0);
        d2              : in     vl_logic_vector(31 downto 0);
        d3              : in     vl_logic_vector(31 downto 0);
        s               : in     vl_logic_vector(1 downto 0);
        \out\           : out    vl_logic_vector(31 downto 0)
    );
end mux4;
