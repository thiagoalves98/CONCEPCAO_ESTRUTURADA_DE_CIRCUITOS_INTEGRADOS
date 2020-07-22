library verilog;
use verilog.vl_types.all;
entity registradorReset is
    port(
        ck              : in     vl_logic;
        reset_register  : in     vl_logic;
        \in\            : in     vl_logic_vector(31 downto 0);
        \out\           : out    vl_logic_vector(31 downto 0)
    );
end registradorReset;
