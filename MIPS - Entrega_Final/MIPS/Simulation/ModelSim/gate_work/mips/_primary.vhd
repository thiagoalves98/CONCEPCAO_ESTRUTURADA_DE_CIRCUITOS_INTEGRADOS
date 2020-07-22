library verilog;
use verilog.vl_types.all;
entity mips is
    port(
        MemoryRD        : in     vl_logic_vector(31 downto 0);
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        MemoryAddress   : out    vl_logic_vector(31 downto 0);
        MemoryWD        : out    vl_logic_vector(31 downto 0);
        MemoryWE        : out    vl_logic
    );
end mips;
