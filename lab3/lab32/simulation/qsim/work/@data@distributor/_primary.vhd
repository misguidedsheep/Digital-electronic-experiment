library verilog;
use verilog.vl_types.all;
entity DataDistributor is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        i               : in     vl_logic;
        y0              : out    vl_logic;
        y1              : out    vl_logic;
        y2              : out    vl_logic;
        y3              : out    vl_logic
    );
end DataDistributor;
