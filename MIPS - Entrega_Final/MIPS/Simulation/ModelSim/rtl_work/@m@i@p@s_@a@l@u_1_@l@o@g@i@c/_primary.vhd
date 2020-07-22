library verilog;
use verilog.vl_types.all;
entity MIPS_ALU_1_LOGIC is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        s_temp          : in     vl_logic;
        less            : in     vl_logic;
        ctrl            : in     vl_logic_vector(2 downto 0);
        result          : out    vl_logic;
        set             : out    vl_logic
    );
end MIPS_ALU_1_LOGIC;
