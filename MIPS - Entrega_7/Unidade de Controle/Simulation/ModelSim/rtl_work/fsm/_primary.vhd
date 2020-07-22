library verilog;
use verilog.vl_types.all;
entity fsm is
    generic(
        S0              : integer := 0;
        S1              : integer := 1;
        S2              : integer := 2;
        S3              : integer := 3;
        S4              : integer := 4;
        S5              : integer := 5;
        S6              : integer := 6;
        S7              : integer := 7;
        S8              : integer := 8;
        S9              : integer := 9;
        S10             : integer := 10;
        S11             : integer := 11;
        S12             : integer := 12;
        S13             : integer := 13;
        S14             : integer := 14;
        S15             : integer := 15
    );
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        opcode          : in     vl_logic_vector(5 downto 0);
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
        ALUOp           : out    vl_logic_vector(2 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of S0 : constant is 1;
    attribute mti_svvh_generic_type of S1 : constant is 1;
    attribute mti_svvh_generic_type of S2 : constant is 1;
    attribute mti_svvh_generic_type of S3 : constant is 1;
    attribute mti_svvh_generic_type of S4 : constant is 1;
    attribute mti_svvh_generic_type of S5 : constant is 1;
    attribute mti_svvh_generic_type of S6 : constant is 1;
    attribute mti_svvh_generic_type of S7 : constant is 1;
    attribute mti_svvh_generic_type of S8 : constant is 1;
    attribute mti_svvh_generic_type of S9 : constant is 1;
    attribute mti_svvh_generic_type of S10 : constant is 1;
    attribute mti_svvh_generic_type of S11 : constant is 1;
    attribute mti_svvh_generic_type of S12 : constant is 1;
    attribute mti_svvh_generic_type of S13 : constant is 1;
    attribute mti_svvh_generic_type of S14 : constant is 1;
    attribute mti_svvh_generic_type of S15 : constant is 1;
end fsm;
