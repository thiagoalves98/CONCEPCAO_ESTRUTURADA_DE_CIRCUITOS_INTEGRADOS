library verilog;
use verilog.vl_types.all;
entity ula1bit is
    port(
        ALUcontrol      : in     vl_logic_vector(2 downto 0);
        SrcA            : in     vl_logic;
        SrcB            : in     vl_logic;
        cin             : in     vl_logic;
        addSubSignal    : in     vl_logic;
        less            : in     vl_logic;
        set             : out    vl_logic;
        ALUresult       : out    vl_logic;
        cout            : out    vl_logic
    );
end ula1bit;
