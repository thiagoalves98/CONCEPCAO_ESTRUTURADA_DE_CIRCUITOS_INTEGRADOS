library verilog;
use verilog.vl_types.all;
entity Datapath is
    port(
        ck              : in     vl_logic;
        \reset_\        : in     vl_logic;
        IorD            : in     vl_logic;
        RegDest         : in     vl_logic;
        MemtoReg        : in     vl_logic;
        IRWrite         : in     vl_logic;
        RegWrite        : in     vl_logic;
        ALUSrcA         : in     vl_logic;
        ALUSrcB         : in     vl_logic_vector(1 downto 0);
        ALUControl      : in     vl_logic_vector(2 downto 0);
        PCSrc           : in     vl_logic_vector(1 downto 0);
        Branch          : in     vl_logic;
        PCWrite         : in     vl_logic;
        WD              : out    vl_logic_vector(31 downto 0);
        Adr             : out    vl_logic_vector(31 downto 0);
        RD              : in     vl_logic_vector(31 downto 0);
        overflow        : out    vl_logic
    );
end Datapath;
