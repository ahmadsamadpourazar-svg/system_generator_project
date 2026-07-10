// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Jun 19 19:36:19 2026
// Host        : DESKTOP-4P07GVT running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {o:/New
//               folder/IP_FIR_FILTER/create_ip_with_sysgen/create_ip_with_sysgen.srcs/sources_1/ip/fir_filter_0/fir_filter_0_stub.v}
// Design      : fir_filter_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fir_filter,Vivado 2018.3" *)
module fir_filter_0(gateway_in, clk, gateway_out, gateway_out1, 
  gateway_out2)
/* synthesis syn_black_box black_box_pad_pin="gateway_in[15:0],clk,gateway_out[31:0],gateway_out1[0:0],gateway_out2[0:0]" */;
  input [15:0]gateway_in;
  input clk;
  output [31:0]gateway_out;
  output [0:0]gateway_out1;
  output [0:0]gateway_out2;
endmodule
