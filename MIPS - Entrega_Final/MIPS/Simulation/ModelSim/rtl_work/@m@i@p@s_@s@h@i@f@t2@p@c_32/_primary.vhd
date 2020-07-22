library verilog;
use verilog.vl_types.all;
entity MIPS_SHIFT2PC_32 is
    port(
        InPC            : in     vl_logic_vector(3 downto 0);
        \In\            : in     vl_logic_vector(25 downto 0);
        \Out\           : out    vl_logic_vector(31 downto 0)
    );
end MIPS_SHIFT2PC_32;
