library verilog;
use verilog.vl_types.all;
entity MIPS_MUX4_32 is
    port(
        a               : in     vl_logic_vector(31 downto 0);
        b               : in     vl_logic_vector(31 downto 0);
        c               : in     vl_logic_vector(31 downto 0);
        d               : in     vl_logic_vector(31 downto 0);
        sel0            : in     vl_logic;
        sel1            : in     vl_logic;
        s               : out    vl_logic_vector(31 downto 0)
    );
end MIPS_MUX4_32;
