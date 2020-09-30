library verilog;
use verilog.vl_types.all;
entity count is
    port(
        En              : in     vl_logic;
        Clock           : in     vl_logic;
        Reset           : in     vl_logic;
        \Out\           : out    vl_logic_vector(3 downto 0)
    );
end count;
