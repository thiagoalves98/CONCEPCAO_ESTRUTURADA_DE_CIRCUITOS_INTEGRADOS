library verilog;
use verilog.vl_types.all;
entity controle is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        opcode          : in     vl_logic_vector(5 downto 0);
        funct           : in     vl_logic_vector(5 downto 0);
        MemtoReg        : out    vl_logic;
        RegDst          : out    vl_logic;
        IorD            : out    vl_logic;
        ALUSrcA         : out    vl_logic;
        IRWrite         : out    vl_logic;
        MemWrite        : out    vl_logic;
        PCWrite         : out    vl_logic;
        Branch          : out    vl_logic;
        RegWrite        : out    vl_logic;
        BranchNE        : out    vl_logic;
        PCSrc           : out    vl_logic_vector(1 downto 0);
        ALUSrcB         : out    vl_logic_vector(1 downto 0);
        ALUControl      : out    vl_logic_vector(2 downto 0)
    );
end controle;
