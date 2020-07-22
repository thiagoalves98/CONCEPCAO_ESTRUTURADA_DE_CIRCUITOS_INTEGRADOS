library verilog;
use verilog.vl_types.all;
entity ula32bits is
    port(
        ALUcontrol      : in     vl_logic_vector(2 downto 0);
        SrcA            : in     vl_logic_vector(31 downto 0);
        SrcB            : in     vl_logic_vector(31 downto 0);
        ALUresult       : out    vl_logic_vector(31 downto 0);
        overflow        : out    vl_logic;
        zero            : out    vl_logic
    );
end ula32bits;
