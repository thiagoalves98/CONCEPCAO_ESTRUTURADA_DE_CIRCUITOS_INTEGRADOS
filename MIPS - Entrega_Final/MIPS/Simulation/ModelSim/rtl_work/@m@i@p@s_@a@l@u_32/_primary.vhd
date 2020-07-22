library verilog;
use verilog.vl_types.all;
entity MIPS_ALU_32 is
    port(
        a               : in     vl_logic_vector(31 downto 0);
        b               : in     vl_logic_vector(31 downto 0);
        ctrl            : in     vl_logic_vector(2 downto 0);
        result          : out    vl_logic_vector(31 downto 0);
        zero            : out    vl_logic;
        ovf             : out    vl_logic
    );
end MIPS_ALU_32;
