library verilog;
use verilog.vl_types.all;
entity MIPS_TWOREGWE_32 is
    port(
        dA              : in     vl_logic_vector(31 downto 0);
        dB              : in     vl_logic_vector(31 downto 0);
        reset           : in     vl_logic;
        clock           : in     vl_logic;
        qA              : out    vl_logic_vector(31 downto 0);
        qB              : out    vl_logic_vector(31 downto 0)
    );
end MIPS_TWOREGWE_32;
