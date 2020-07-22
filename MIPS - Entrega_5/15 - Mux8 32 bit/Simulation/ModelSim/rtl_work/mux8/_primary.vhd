library verilog;
use verilog.vl_types.all;
entity mux8 is
    port(
        d7              : in     vl_logic_vector(31 downto 0);
        d6              : in     vl_logic_vector(31 downto 0);
        d5              : in     vl_logic_vector(31 downto 0);
        d4              : in     vl_logic_vector(31 downto 0);
        d3              : in     vl_logic_vector(31 downto 0);
        d2              : in     vl_logic_vector(31 downto 0);
        d1              : in     vl_logic_vector(31 downto 0);
        d0              : in     vl_logic_vector(31 downto 0);
        s               : in     vl_logic_vector(2 downto 0);
        y               : out    vl_logic_vector(31 downto 0)
    );
end mux8;
