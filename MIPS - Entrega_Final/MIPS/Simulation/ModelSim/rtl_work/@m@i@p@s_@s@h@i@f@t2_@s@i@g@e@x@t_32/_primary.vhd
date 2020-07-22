library verilog;
use verilog.vl_types.all;
entity MIPS_SHIFT2_SIGEXT_32 is
    port(
        \In\            : in     vl_logic_vector(15 downto 0);
        \Out\           : out    vl_logic_vector(31 downto 0)
    );
end MIPS_SHIFT2_SIGEXT_32;
