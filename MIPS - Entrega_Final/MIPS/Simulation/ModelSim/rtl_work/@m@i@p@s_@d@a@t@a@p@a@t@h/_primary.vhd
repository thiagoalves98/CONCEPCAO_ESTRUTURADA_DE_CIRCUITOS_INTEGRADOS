library verilog;
use verilog.vl_types.all;
entity MIPS_DATAPATH is
    port(
        MemoryRD        : in     vl_logic_vector(31 downto 0);
        ALUControl      : in     vl_logic_vector(2 downto 0);
        ALUSrcB         : in     vl_logic_vector(1 downto 0);
        PCSrc           : in     vl_logic_vector(1 downto 0);
        IorD            : in     vl_logic;
        IRWrite         : in     vl_logic;
        RegDst          : in     vl_logic;
        MemtoReg        : in     vl_logic;
        RegWrite        : in     vl_logic;
        ALUSrcA         : in     vl_logic;
        Branch          : in     vl_logic;
        PCWrite         : in     vl_logic;
        reset           : in     vl_logic;
        clock           : in     vl_logic;
        BranchNE        : in     vl_logic;
        MemoryAddress   : out    vl_logic_vector(31 downto 0);
        MemoryWD        : out    vl_logic_vector(31 downto 0);
        Op              : out    vl_logic_vector(5 downto 0);
        Funct           : out    vl_logic_vector(5 downto 0)
    );
end MIPS_DATAPATH;
