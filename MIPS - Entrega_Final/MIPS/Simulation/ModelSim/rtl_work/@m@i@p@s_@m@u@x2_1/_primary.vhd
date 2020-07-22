library verilog;
use verilog.vl_types.all;
entity MIPS_MUX2_1 is
    port(
        Zero            : in     vl_logic;
        nZero           : in     vl_logic;
        BranchNE        : in     vl_logic;
        Z               : out    vl_logic
    );
end MIPS_MUX2_1;
