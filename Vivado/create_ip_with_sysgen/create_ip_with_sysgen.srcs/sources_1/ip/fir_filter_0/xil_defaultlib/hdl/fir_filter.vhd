-- Generated from Simulink block FIR_FILTER_struct
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity fir_filter_struct is
  port (
    gateway_in : in std_logic_vector( 16-1 downto 0 );
    clk_1 : in std_logic;
    ce_1 : in std_logic;
    gateway_out : out std_logic_vector( 32-1 downto 0 );
    gateway_out1 : out std_logic_vector( 1-1 downto 0 );
    gateway_out2 : out std_logic_vector( 1-1 downto 0 )
  );
end fir_filter_struct;
architecture structural of fir_filter_struct is 
  signal gateway_in_net : std_logic_vector( 16-1 downto 0 );
  signal fir_compiler_7_2_m_axis_data_tdata_real_net : std_logic_vector( 32-1 downto 0 );
  signal fir_compiler_7_2_m_axis_data_tvalid_net : std_logic_vector( 1-1 downto 0 );
  signal fir_compiler_7_2_s_axis_data_tready_net : std_logic_vector( 1-1 downto 0 );
  signal src_clk_net : std_logic;
  signal src_ce_net : std_logic;
begin
  gateway_in_net <= gateway_in;
  gateway_out <= fir_compiler_7_2_m_axis_data_tdata_real_net;
  gateway_out1 <= fir_compiler_7_2_m_axis_data_tvalid_net;
  gateway_out2 <= fir_compiler_7_2_s_axis_data_tready_net;
  src_clk_net <= clk_1;
  src_ce_net <= ce_1;
  fir_compiler_7_2 : entity xil_defaultlib.xlfir_compiler_e3a16a149afcb428678903914e2b041d 
  port map (
    s_axis_data_tdata_real => gateway_in_net,
    src_clk => src_clk_net,
    src_ce => src_ce_net,
    clk => src_clk_net,
    ce => src_ce_net,
    clk_logic_1 => src_clk_net,
    ce_logic_1 => src_ce_net,
    s_axis_data_tready => fir_compiler_7_2_s_axis_data_tready_net(0),
    m_axis_data_tvalid => fir_compiler_7_2_m_axis_data_tvalid_net(0),
    m_axis_data_tdata_real => fir_compiler_7_2_m_axis_data_tdata_real_net
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity fir_filter_default_clock_driver is
  port (
    fir_filter_sysclk : in std_logic;
    fir_filter_sysce : in std_logic;
    fir_filter_sysclr : in std_logic;
    fir_filter_clk1 : out std_logic;
    fir_filter_ce1 : out std_logic
  );
end fir_filter_default_clock_driver;
architecture structural of fir_filter_default_clock_driver is 
begin
  clockdriver : entity xil_defaultlib.xlclockdriver 
  generic map (
    period => 1,
    log_2_period => 1
  )
  port map (
    sysclk => fir_filter_sysclk,
    sysce => fir_filter_sysce,
    sysclr => fir_filter_sysclr,
    clk => fir_filter_clk1,
    ce => fir_filter_ce1
  );
end structural;
-- Generated from Simulink block 
library IEEE;
use IEEE.std_logic_1164.all;
library xil_defaultlib;
use xil_defaultlib.conv_pkg.all;
entity fir_filter is
  port (
    gateway_in : in std_logic_vector( 16-1 downto 0 );
    clk : in std_logic;
    gateway_out : out std_logic_vector( 32-1 downto 0 );
    gateway_out1 : out std_logic_vector( 1-1 downto 0 );
    gateway_out2 : out std_logic_vector( 1-1 downto 0 )
  );
end fir_filter;
architecture structural of fir_filter is 
  attribute core_generation_info : string;
  attribute core_generation_info of structural : architecture is "fir_filter,sysgen_core_2018_3,{,compilation=IP Catalog,block_icon_display=Default,family=zynq,part=xc7z020,speed=-2,package=clg400,synthesis_language=vhdl,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=1,interface_doc=1,ce_clr=0,clock_period=41.67,system_simulink_period=0.002,waveform_viewer=0,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=10,fir_compiler_v7_2=1,}";
  signal clk_1_net : std_logic;
  signal ce_1_net : std_logic;
begin
  fir_filter_default_clock_driver : entity xil_defaultlib.fir_filter_default_clock_driver 
  port map (
    fir_filter_sysclk => clk,
    fir_filter_sysce => '1',
    fir_filter_sysclr => '0',
    fir_filter_clk1 => clk_1_net,
    fir_filter_ce1 => ce_1_net
  );
  fir_filter_struct : entity xil_defaultlib.fir_filter_struct 
  port map (
    gateway_in => gateway_in,
    clk_1 => clk_1_net,
    ce_1 => ce_1_net,
    gateway_out => gateway_out,
    gateway_out1 => gateway_out1,
    gateway_out2 => gateway_out2
  );
end structural;
