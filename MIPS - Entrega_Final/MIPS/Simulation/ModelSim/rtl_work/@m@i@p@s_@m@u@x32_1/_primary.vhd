library verilog;
use verilog.vl_types.all;
entity MIPS_MUX32_1 is
    port(
        \In\            : in     vl_logic_vector(31 downto 0);
        Sel             : in     vl_logic_vector(4 downto 0);
        \Out\           : out    vl_logic
    );
end MIPS_MUX32_1;
