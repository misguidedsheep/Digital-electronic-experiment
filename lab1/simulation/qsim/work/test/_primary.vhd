library verilog;
use verilog.vl_types.all;
entity test is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        c               : in     vl_logic;
        d               : in     vl_logic;
        e               : in     vl_logic;
        o1              : out    vl_logic;
        o2              : out    vl_logic;
        o3              : out    vl_logic
    );
end test;
