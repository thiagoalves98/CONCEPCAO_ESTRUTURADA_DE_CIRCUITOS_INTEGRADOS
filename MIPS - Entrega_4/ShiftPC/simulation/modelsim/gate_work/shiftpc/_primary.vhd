library verilog;
use verilog.vl_types.all;
entity shiftpc is
    port(
        pc              : in     vl_logic_vector(3 downto 0);
        a               : in     vl_logic_vector(25 downto 0);
        y               : out    vl_logic_vector(31 downto 0)
    );
end shiftpc;
