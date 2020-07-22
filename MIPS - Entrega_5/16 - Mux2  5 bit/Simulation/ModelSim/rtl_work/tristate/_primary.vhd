library verilog;
use verilog.vl_types.all;
entity tristate is
    port(
        a               : in     vl_logic_vector(5 downto 0);
        en              : in     vl_logic;
        y               : out    vl_logic_vector(5 downto 0)
    );
end tristate;
