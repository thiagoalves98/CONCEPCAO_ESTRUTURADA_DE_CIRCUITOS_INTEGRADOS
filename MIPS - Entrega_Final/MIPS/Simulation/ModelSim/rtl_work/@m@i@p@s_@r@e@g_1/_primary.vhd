library verilog;
use verilog.vl_types.all;
entity MIPS_REG_1 is
    port(
        d               : in     vl_logic;
        enable          : in     vl_logic;
        reset           : in     vl_logic;
        clk             : in     vl_logic;
        q               : out    vl_logic
    );
end MIPS_REG_1;
