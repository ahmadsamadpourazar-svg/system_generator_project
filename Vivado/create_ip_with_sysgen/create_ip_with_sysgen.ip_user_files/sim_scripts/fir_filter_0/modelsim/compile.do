vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xbip_utils_v3_0_9
vlib modelsim_lib/msim/axi_utils_v2_0_5
vlib modelsim_lib/msim/fir_compiler_v7_2_11
vlib modelsim_lib/msim/xil_defaultlib

vmap xbip_utils_v3_0_9 modelsim_lib/msim/xbip_utils_v3_0_9
vmap axi_utils_v2_0_5 modelsim_lib/msim/axi_utils_v2_0_5
vmap fir_compiler_v7_2_11 modelsim_lib/msim/fir_compiler_v7_2_11
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vcom -work xbip_utils_v3_0_9 -64 -93 \
"../../../ipstatic/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_5 -64 -93 \
"../../../ipstatic/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work fir_compiler_v7_2_11 -64 -93 \
"../../../ipstatic/hdl/fir_compiler_v7_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../../create_ip_with_sysgen.srcs/sources_1/ip/fir_filter_0/fir_filter_fir_compiler_v7_2_i0/sim/fir_filter_fir_compiler_v7_2_i0.vhd" \
"../../../ipstatic/xil_defaultlib/hdl/conv_pkg.vhd" \
"../../../ipstatic/xil_defaultlib/hdl/synth_reg.vhd" \
"../../../ipstatic/xil_defaultlib/hdl/synth_reg_w_init.vhd" \
"../../../ipstatic/xil_defaultlib/hdl/srl17e.vhd" \
"../../../ipstatic/xil_defaultlib/hdl/srl33e.vhd" \
"../../../ipstatic/xil_defaultlib/hdl/synth_reg_reg.vhd" \
"../../../ipstatic/xil_defaultlib/hdl/single_reg_w_init.vhd" \
"../../../ipstatic/xil_defaultlib/hdl/xlclockdriver_rd.vhd" \
"../../../ipstatic/xil_defaultlib/hdl/fir_filter_entity_declarations.vhd" \
"../../../ipstatic/xil_defaultlib/hdl/fir_filter.vhd" \
"../../../../create_ip_with_sysgen.srcs/sources_1/ip/fir_filter_0/sim/fir_filter_0.vhd" \

