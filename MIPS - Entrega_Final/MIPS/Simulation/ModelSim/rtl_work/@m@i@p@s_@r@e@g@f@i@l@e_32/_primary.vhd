library verilog;
use verilog.vl_types.all;
entity MIPS_REGFILE_32 is
    port(
        WD3             : in     vl_logic_vector(31 downto 0);
        A1              : in     vl_logic_vector(4 downto 0);
        A2              : in     vl_logic_vector(4 downto 0);
        A3              : in     vl_logic_vector(4 downto 0);
        WE3             : in     vl_logic;
        reset           : in     vl_logic;
        clock           : in     vl_logic;
        RD1             : out    vl_logic_vector(31 downto 0);
        RD2             : out    vl_logic_vector(31 downto 0)
    );
end MIPS_REGFILE_32;
