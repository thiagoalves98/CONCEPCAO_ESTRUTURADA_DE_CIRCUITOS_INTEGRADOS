library verilog;
use verilog.vl_types.all;
entity MIPS_ALUDECODER is
    port(
        funct           : in     vl_logic_vector(5 downto 0);
        ALUOp           : in     vl_logic_vector(2 downto 0);
        ALUControl      : out    vl_logic_vector(2 downto 0)
    );
end MIPS_ALUDECODER;
