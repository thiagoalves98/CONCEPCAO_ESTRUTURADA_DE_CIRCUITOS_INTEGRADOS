library verilog;
use verilog.vl_types.all;
entity MIPS_ALU_1_SUM is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        cin             : in     vl_logic;
        add_sub         : in     vl_logic;
        s               : out    vl_logic;
        cout            : out    vl_logic
    );
end MIPS_ALU_1_SUM;
