library verilog;
use verilog.vl_types.all;
entity count_vlg_sample_tst is
    port(
        Clock           : in     vl_logic;
        En              : in     vl_logic;
        Reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end count_vlg_sample_tst;
