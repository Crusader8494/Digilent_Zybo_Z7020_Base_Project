-makelib xcelium_lib/xilinx_vip -sv \
  "E:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "E:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "E:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "E:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "E:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "E:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "E:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "E:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "E:/Xilinx/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "E:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "E:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "E:/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_5 -sv \
  "../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/d4a8/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_7 -sv \
  "../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/8c62/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Zynq_Design/ip/Zynq_Design_processing_system7_0_0/sim/Zynq_Design_processing_system7_0_0.v" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Zynq_Design/ip/Zynq_Design_rst_ps7_0_50M_0/sim/Zynq_Design_rst_ps7_0_50M_0.vhd" \
  "../../../bd/Zynq_Design/ip/Zynq_Design_AXI4_Lite_Slave_0_0/sim/Zynq_Design_AXI4_Lite_Slave_0_0.vhd" \
  "../../../bd/Zynq_Design/ip/Zynq_Design_Local_Bus_Register_B_0_0/sim/Zynq_Design_Local_Bus_Register_B_0_0.vhd" \
-endlib
-makelib xcelium_lib/xlslice_v1_0_2 \
  "../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/f044/hdl/xlslice_v1_0_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Zynq_Design/ip/Zynq_Design_xlslice_0_0/sim/Zynq_Design_xlslice_0_0.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_4 \
  "../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ip/Zynq_Design_UART_V1_9_0_0/ipshared/1f5a/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_4 \
  "../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ip/Zynq_Design_UART_V1_9_0_0/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_4 \
  "../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ip/Zynq_Design_UART_V1_9_0_0/ipshared/1f5a/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Zynq_Design/ip/Zynq_Design_UART_V1_9_0_0/src/TOP_BD_fifo_generator_0_0/sim/TOP_BD_fifo_generator_0_0.v" \
  "../../../bd/Zynq_Design/ip/Zynq_Design_UART_V1_9_0_0/src/TOP_BD_fifo_generator_0_1/sim/TOP_BD_fifo_generator_0_1.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
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
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Zynq_Design/ip/Zynq_Design_xlslice_0_1/sim/Zynq_Design_xlslice_0_1.v" \
  "../../../bd/Zynq_Design/ip/Zynq_Design_xlslice_0_2/sim/Zynq_Design_xlslice_0_2.v" \
  "../../../bd/Zynq_Design/ip/Zynq_Design_xlslice_1_0/sim/Zynq_Design_xlslice_1_0.v" \
  "../../../bd/Zynq_Design/ip/Zynq_Design_xlslice_2_0/sim/Zynq_Design_xlslice_2_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Zynq_Design/ip/Zynq_Design_AXI_UART_Control_Ada_0_0/sim/Zynq_Design_AXI_UART_Control_Ada_0_0.vhd" \
  "../../../bd/Zynq_Design/ip/Zynq_Design_system_ila_0_0/bd_0/sim/bd_8632.vhd" \
  "../../../bd/Zynq_Design/ip/Zynq_Design_system_ila_0_0/bd_0/ip/ip_0/sim/bd_8632_ila_lib_0.vhd" \
-endlib
-makelib xcelium_lib/gigantic_mux \
  "../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/d322/hdl/gigantic_mux_v1_0_cntr.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Zynq_Design/ip/Zynq_Design_system_ila_0_0/bd_0/ip/ip_1/bd_8632_g_inst_0_gigantic_mux.v" \
  "../../../bd/Zynq_Design/ip/Zynq_Design_system_ila_0_0/bd_0/ip/ip_1/sim/bd_8632_g_inst_0.v" \
-endlib
-makelib xcelium_lib/xlconcat_v2_1_3 \
  "../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/442e/hdl/xlconcat_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Zynq_Design/ip/Zynq_Design_system_ila_0_0/bd_0/ip/ip_2/sim/bd_8632_slot_0_aw_0.v" \
  "../../../bd/Zynq_Design/ip/Zynq_Design_system_ila_0_0/bd_0/ip/ip_3/sim/bd_8632_slot_0_w_0.v" \
  "../../../bd/Zynq_Design/ip/Zynq_Design_system_ila_0_0/bd_0/ip/ip_4/sim/bd_8632_slot_0_b_0.v" \
  "../../../bd/Zynq_Design/ip/Zynq_Design_system_ila_0_0/bd_0/ip/ip_5/sim/bd_8632_slot_0_ar_0.v" \
  "../../../bd/Zynq_Design/ip/Zynq_Design_system_ila_0_0/bd_0/ip/ip_6/sim/bd_8632_slot_0_r_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Zynq_Design/ip/Zynq_Design_system_ila_0_0/sim/Zynq_Design_system_ila_0_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Zynq_Design/ip/Zynq_Design_xlconcat_0_0/sim/Zynq_Design_xlconcat_0_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Zynq_Design/ip/Zynq_Design_SSD_Controller_0_0/sim/Zynq_Design_SSD_Controller_0_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Zynq_Design/ip/Zynq_Design_xlslice_0_3/sim/Zynq_Design_xlslice_0_3.v" \
  "../../../bd/Zynq_Design/ip/Zynq_Design_xlslice_0_4/sim/Zynq_Design_xlslice_0_4.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Zynq_Design/ip/Zynq_Design_Microphone_Driver_0_0/sim/Zynq_Design_Microphone_Driver_0_0.vhd" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_19 \
  "../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/4d88/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_18 \
  "../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/5b9c/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_20 \
  "../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/ace7/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Zynq_Design/ip/Zynq_Design_xbar_0/sim/Zynq_Design_xbar_0.v" \
  "../../../bd/Zynq_Design/ip/Zynq_Design_fifo_generator_0_0/sim/Zynq_Design_fifo_generator_0_0.v" \
  "../../../bd/Zynq_Design/ip/Zynq_Design_xlslice_0_5/sim/Zynq_Design_xlslice_0_5.v" \
  "../../../bd/Zynq_Design/ip/Zynq_Design_xlconcat_0_1/sim/Zynq_Design_xlconcat_0_1.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Zynq_Design/ip/Zynq_Design_Microphone_Controlle_0_0/sim/Zynq_Design_Microphone_Controlle_0_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Zynq_Design/ip/Zynq_Design_xlslice_0_6/sim/Zynq_Design_xlslice_0_6.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Zynq_Design/ip/Zynq_Design_FIFO_Interface_0_0/sim/Zynq_Design_FIFO_Interface_0_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Zynq_Design/ip/Zynq_Design_xlslice_1_1/sim/Zynq_Design_xlslice_1_1.v" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_19 \
  "../../../../AXI_4_Lite_Slave.srcs/sources_1/bd/Zynq_Design/ipshared/c83a/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Zynq_Design/ip/Zynq_Design_auto_pc_0/sim/Zynq_Design_auto_pc_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Zynq_Design/sim/Zynq_Design.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

