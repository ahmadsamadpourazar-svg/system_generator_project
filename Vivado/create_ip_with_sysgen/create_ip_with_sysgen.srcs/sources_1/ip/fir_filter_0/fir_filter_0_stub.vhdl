-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Fri Jun 19 19:36:19 2026
-- Host        : DESKTOP-4P07GVT running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {o:/New
--               folder/IP_FIR_FILTER/create_ip_with_sysgen/create_ip_with_sysgen.srcs/sources_1/ip/fir_filter_0/fir_filter_0_stub.vhdl}
-- Design      : fir_filter_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fir_filter_0 is
  Port ( 
    gateway_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    gateway_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gateway_out1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    gateway_out2 : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end fir_filter_0;

architecture stub of fir_filter_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "gateway_in[15:0],clk,gateway_out[31:0],gateway_out1[0:0],gateway_out2[0:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "fir_filter,Vivado 2018.3";
begin
end;
