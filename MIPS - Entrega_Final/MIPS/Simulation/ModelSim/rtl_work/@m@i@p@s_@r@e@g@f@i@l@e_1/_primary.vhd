library verilog;
use verilog.vl_types.all;
entity MIPS_REGFILE_1 is
    port(
        WriteCode       : in     vl_logic_vector(31 downto 0);
        SelA            : in     vl_logic_vector(4 downto 0);
        SelB            : in     vl_logic_vector(4 downto 0);
        RegWrite        : in     vl_logic;
        reset           : in     vl_logic;
        clock           : in     vl_logic;
        RegData         : in     vl_logic;
        OutA            : out    vl_logic;
        OutB            : out    vl_logic
    );
end MIPS_REGFILE_1;
