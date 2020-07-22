library verilog;
use verilog.vl_types.all;
entity MIPS_SHIFT2_32 is
    port(
        a               : in     vl_logic_vector(31 downto 0);
        s               : out    vl_logic_vector(31 downto 0)
    );
end MIPS_SHIFT2_32;
