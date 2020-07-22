library verilog;
use verilog.vl_types.all;
entity decoder5_32 is
    port(
        a               : in     vl_logic_vector(4 downto 0);
        y               : out    vl_logic_vector(31 downto 0)
    );
end decoder5_32;
