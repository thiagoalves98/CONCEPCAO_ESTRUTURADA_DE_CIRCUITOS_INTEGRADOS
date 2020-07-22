library verilog;
use verilog.vl_types.all;
entity MIPS_REG_32 is
    port(
        d               : in     vl_logic_vector(31 downto 0);
        enable          : in     vl_logic;
        reset           : in     vl_logic;
        clk             : in     vl_logic;
        q               : out    vl_logic_vector(31 downto 0)
    );
end MIPS_REG_32;
