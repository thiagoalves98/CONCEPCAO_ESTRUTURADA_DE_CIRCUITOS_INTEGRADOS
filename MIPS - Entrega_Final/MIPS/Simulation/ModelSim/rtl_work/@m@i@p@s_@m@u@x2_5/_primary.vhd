library verilog;
use verilog.vl_types.all;
entity MIPS_MUX2_5 is
    port(
        a               : in     vl_logic_vector(4 downto 0);
        b               : in     vl_logic_vector(4 downto 0);
        sel             : in     vl_logic;
        s               : out    vl_logic_vector(4 downto 0)
    );
end MIPS_MUX2_5;
