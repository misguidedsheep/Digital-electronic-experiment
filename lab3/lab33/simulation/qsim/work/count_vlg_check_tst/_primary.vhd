library verilog;
use verilog.vl_types.all;
entity count_vlg_check_tst is
    port(
        \Out\           : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end count_vlg_check_tst;
