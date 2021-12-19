vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_5
vlib riviera/processing_system7_vip_v1_0_7
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/xlslice_v1_0_2
vlib riviera/fifo_generator_v13_2_4
vlib riviera/gigantic_mux
vlib riviera/xlconcat_v2_1_3
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_register_slice_v2_1_19
vlib riviera/axi_data_fifo_v2_1_18
vlib riviera/axi_crossbar_v2_1_20
vlib riviera/axi_protocol_converter_v2_1_19

vmap xilinx_vip riviera/xilinx_vip
vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_5 riviera/axi_vip_v1_1_5
vmap processing_system7_vip_v1_0_7 riviera/processing_system7_vip_v1_0_7
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap xlslice_v1_0_2 riviera/xlslice_v1_0_2
vmap fifo_generator_v13_2_4 riviera/fifo_generator_v13_2_4
vmap gigantic_mux riviera/gigantic_mux
vmap xlconcat_v2_1_3 riviera/xlconcat_v2_1_3
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_19 riviera/axi_register_slice_v2_1_19
vmap axi_data_fifo_v2_1_18 riviera/axi_data_fifo_v2_1_18
vmap axi_crossbar_v2_1_20 riviera/axi_crossbar_v2_1_20
vmap axi_protocol_converter_v2_1_19 riviera/axi_protocol_converter_v2_1_19

vlog -work xilinx_vip  -sv2k12 "+incdir+E:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"E:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"E:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"E:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"E:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"E:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"E:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"E:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"E:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"E:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/ec67/hdl" "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/8c62/hdl" "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ip/Zynq_Design_processing_system7_0_0" "+incdir+E:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"E:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"E:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"E:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/ec67/hdl" "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/8c62/hdl" "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ip/Zynq_Design_processing_system7_0_0" "+incdir+E:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_5  -sv2k12 "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/ec67/hdl" "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/8c62/hdl" "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ip/Zynq_Design_processing_system7_0_0" "+incdir+E:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/d4a8/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_7  -sv2k12 "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/ec67/hdl" "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/8c62/hdl" "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ip/Zynq_Design_processing_system7_0_0" "+incdir+E:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/8c62/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/ec67/hdl" "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/8c62/hdl" "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ip/Zynq_Design_processing_system7_0_0" "+incdir+E:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/Zynq_Design/ip/Zynq_Design_processing_system7_0_0/sim/Zynq_Design_processing_system7_0_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/Zynq_Design/ip/Zynq_Design_rst_ps7_0_50M_0/sim/Zynq_Design_rst_ps7_0_50M_0.vhd" \
"../../../bd/Zynq_Design/ip/Zynq_Design_AXI4_Lite_Slave_0_0/sim/Zynq_Design_AXI4_Lite_Slave_0_0.vhd" \
"../../../bd/Zynq_Design/ip/Zynq_Design_Local_Bus_Register_B_0_0/sim/Zynq_Design_Local_Bus_Register_B_0_0.vhd" \

vlog -work xlslice_v1_0_2  -v2k5 "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/ec67/hdl" "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/8c62/hdl" "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ip/Zynq_Design_processing_system7_0_0" "+incdir+E:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/f044/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/ec67/hdl" "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/8c62/hdl" "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ip/Zynq_Design_processing_system7_0_0" "+incdir+E:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/Zynq_Design/ip/Zynq_Design_xlslice_0_0/sim/Zynq_Design_xlslice_0_0.v" \

vlog -work fifo_generator_v13_2_4  -v2k5 "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/ec67/hdl" "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/8c62/hdl" "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ip/Zynq_Design_processing_system7_0_0" "+incdir+E:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ip/Zynq_Design_UART_V1_9_0_0/ipshared/1f5a/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_4 -93 \
"../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ip/Zynq_Design_UART_V1_9_0_0/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_4  -v2k5 "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/ec67/hdl" "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/8c62/hdl" "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ip/Zynq_Design_processing_system7_0_0" "+incdir+E:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ip/Zynq_Design_UART_V1_9_0_0/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/ec67/hdl" "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/8c62/hdl" "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ip/Zynq_Design_processing_system7_0_0" "+incdir+E:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/Zynq_Design/ip/Zynq_Design_UART_V1_9_0_0/src/TOP_BD_fifo_generator_0_0/sim/TOP_BD_fifo_generator_0_0.v" \
"../../../bd/Zynq_Design/ip/Zynq_Design_UART_V1_9_0_0/src/TOP_BD_fifo_generator_0_1/sim/TOP_BD_fifo_generator_0_1.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/Zynq_Design/ipshared/b5b5/sim/TOP_BD_UART_0_0.vhd" \
"../../../bd/Zynq_Design/ipshared/b5b5/sim/TOP_BD_Debouncer_0_0.vhd" \
"../../../bd/Zynq_Design/ipshared/b5b5/sim/TOP_BD_Reset_Controller_0_0.vhd" \
"../../../bd/Zynq_Design/ipshared/b5b5/sim/TOP_BD_UART_Debug_0_0.vhd" \
"../../../bd/Zynq_Design/ipshared/b5b5/src/UART.vhd" \
"../../../bd/Zynq_Design/ipshared/b5b5/src/Debouncer.vhd" \
"../../../bd/Zynq_Design/ipshared/b5b5/src/Reset_Controller.vhd" \
"../../../bd/Zynq_Design/ipshared/b5b5/src/UART_Debug.vhd" \
"../../../bd/Zynq_Design/ipshared/b5b5/sim/TOP_BD.vhd" \
"../../../bd/Zynq_Design/ipshared/b5b5/src/TOP_BD_wrapper.vhd" \
"../../../bd/Zynq_Design/ip/Zynq_Design_UART_V1_9_0_0/sim/Zynq_Design_UART_V1_9_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/ec67/hdl" "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/8c62/hdl" "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ip/Zynq_Design_processing_system7_0_0" "+incdir+E:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/Zynq_Design/ip/Zynq_Design_xlslice_0_1/sim/Zynq_Design_xlslice_0_1.v" \
"../../../bd/Zynq_Design/ip/Zynq_Design_xlslice_0_2/sim/Zynq_Design_xlslice_0_2.v" \
"../../../bd/Zynq_Design/ip/Zynq_Design_xlslice_1_0/sim/Zynq_Design_xlslice_1_0.v" \
"../../../bd/Zynq_Design/ip/Zynq_Design_xlslice_2_0/sim/Zynq_Design_xlslice_2_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/Zynq_Design/ip/Zynq_Design_AXI_UART_Control_Ada_0_0/sim/Zynq_Design_AXI_UART_Control_Ada_0_0.vhd" \
"../../../bd/Zynq_Design/ip/Zynq_Design_system_ila_0_0/bd_0/sim/bd_8632.vhd" \
"../../../bd/Zynq_Design/ip/Zynq_Design_system_ila_0_0/bd_0/ip/ip_0/sim/bd_8632_ila_lib_0.vhd" \

vlog -work gigantic_mux  -v2k5 "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/ec67/hdl" "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/8c62/hdl" "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ip/Zynq_Design_processing_system7_0_0" "+incdir+E:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/d322/hdl/gigantic_mux_v1_0_cntr.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/ec67/hdl" "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/8c62/hdl" "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ip/Zynq_Design_processing_system7_0_0" "+incdir+E:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/Zynq_Design/ip/Zynq_Design_system_ila_0_0/bd_0/ip/ip_1/bd_8632_g_inst_0_gigantic_mux.v" \
"../../../bd/Zynq_Design/ip/Zynq_Design_system_ila_0_0/bd_0/ip/ip_1/sim/bd_8632_g_inst_0.v" \

vlog -work xlconcat_v2_1_3  -v2k5 "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/ec67/hdl" "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/8c62/hdl" "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ip/Zynq_Design_processing_system7_0_0" "+incdir+E:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/442e/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/ec67/hdl" "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/8c62/hdl" "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ip/Zynq_Design_processing_system7_0_0" "+incdir+E:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/Zynq_Design/ip/Zynq_Design_system_ila_0_0/bd_0/ip/ip_2/sim/bd_8632_slot_0_aw_0.v" \
"../../../bd/Zynq_Design/ip/Zynq_Design_system_ila_0_0/bd_0/ip/ip_3/sim/bd_8632_slot_0_w_0.v" \
"../../../bd/Zynq_Design/ip/Zynq_Design_system_ila_0_0/bd_0/ip/ip_4/sim/bd_8632_slot_0_b_0.v" \
"../../../bd/Zynq_Design/ip/Zynq_Design_system_ila_0_0/bd_0/ip/ip_5/sim/bd_8632_slot_0_ar_0.v" \
"../../../bd/Zynq_Design/ip/Zynq_Design_system_ila_0_0/bd_0/ip/ip_6/sim/bd_8632_slot_0_r_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/Zynq_Design/ip/Zynq_Design_system_ila_0_0/sim/Zynq_Design_system_ila_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/ec67/hdl" "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/8c62/hdl" "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ip/Zynq_Design_processing_system7_0_0" "+incdir+E:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/Zynq_Design/ip/Zynq_Design_xlconcat_0_0/sim/Zynq_Design_xlconcat_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/Zynq_Design/ip/Zynq_Design_SSD_Controller_0_0/sim/Zynq_Design_SSD_Controller_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/ec67/hdl" "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/8c62/hdl" "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ip/Zynq_Design_processing_system7_0_0" "+incdir+E:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/Zynq_Design/ip/Zynq_Design_xlslice_0_3/sim/Zynq_Design_xlslice_0_3.v" \
"../../../bd/Zynq_Design/ip/Zynq_Design_xlslice_0_4/sim/Zynq_Design_xlslice_0_4.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/Zynq_Design/ip/Zynq_Design_Microphone_Driver_0_0/sim/Zynq_Design_Microphone_Driver_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/ec67/hdl" "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/8c62/hdl" "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ip/Zynq_Design_processing_system7_0_0" "+incdir+E:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_19  -v2k5 "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/ec67/hdl" "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/8c62/hdl" "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ip/Zynq_Design_processing_system7_0_0" "+incdir+E:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/4d88/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_18  -v2k5 "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/ec67/hdl" "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/8c62/hdl" "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ip/Zynq_Design_processing_system7_0_0" "+incdir+E:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/5b9c/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_20  -v2k5 "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/ec67/hdl" "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/8c62/hdl" "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ip/Zynq_Design_processing_system7_0_0" "+incdir+E:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/ace7/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/ec67/hdl" "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/8c62/hdl" "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ip/Zynq_Design_processing_system7_0_0" "+incdir+E:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/Zynq_Design/ip/Zynq_Design_xbar_0/sim/Zynq_Design_xbar_0.v" \
"../../../bd/Zynq_Design/ip/Zynq_Design_fifo_generator_0_0/sim/Zynq_Design_fifo_generator_0_0.v" \
"../../../bd/Zynq_Design/ip/Zynq_Design_xlslice_0_5/sim/Zynq_Design_xlslice_0_5.v" \
"../../../bd/Zynq_Design/ip/Zynq_Design_xlconcat_0_1/sim/Zynq_Design_xlconcat_0_1.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/Zynq_Design/ip/Zynq_Design_Microphone_Controlle_0_0/sim/Zynq_Design_Microphone_Controlle_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/ec67/hdl" "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/8c62/hdl" "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ip/Zynq_Design_processing_system7_0_0" "+incdir+E:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/Zynq_Design/ip/Zynq_Design_xlslice_0_6/sim/Zynq_Design_xlslice_0_6.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/Zynq_Design/ip/Zynq_Design_FIFO_Interface_0_0/sim/Zynq_Design_FIFO_Interface_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/ec67/hdl" "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/8c62/hdl" "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ip/Zynq_Design_processing_system7_0_0" "+incdir+E:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/Zynq_Design/ip/Zynq_Design_xlslice_1_1/sim/Zynq_Design_xlslice_1_1.v" \

vlog -work axi_protocol_converter_v2_1_19  -v2k5 "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/ec67/hdl" "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/8c62/hdl" "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ip/Zynq_Design_processing_system7_0_0" "+incdir+E:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/c83a/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/ec67/hdl" "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/8c62/hdl" "+incdir+../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ip/Zynq_Design_processing_system7_0_0" "+incdir+E:/Xilinx/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/Zynq_Design/ip/Zynq_Design_auto_pc_0/sim/Zynq_Design_auto_pc_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/Zynq_Design/sim/Zynq_Design.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

