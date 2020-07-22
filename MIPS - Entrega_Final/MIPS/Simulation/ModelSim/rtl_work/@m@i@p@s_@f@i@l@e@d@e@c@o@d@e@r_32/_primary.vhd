library verilog;
use verilog.vl_types.all;
entity MIPS_FILEDECODER_32 is
    port(
        \select\        : in     vl_logic_vector(4 downto 0);
        \out\           : out    vl_logic_vector(31 downto 0)
    );
end MIPS_FILEDECODER_32;
