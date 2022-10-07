library verilog;
use verilog.vl_types.all;
entity i2s_top is
    generic(
        div_clk         : integer := 28;
        div_ws          : vl_notype
    );
    port(
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        ldata           : out    vl_logic_vector(23 downto 0);
        rdata           : out    vl_logic_vector(23 downto 0);
        ready           : out    vl_logic;
        mic_sck         : out    vl_logic;
        mic_ws          : out    vl_logic;
        mic_sd          : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of div_clk : constant is 1;
    attribute mti_svvh_generic_type of div_ws : constant is 3;
end i2s_top;
