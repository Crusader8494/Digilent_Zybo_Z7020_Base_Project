connect -url tcp:127.0.0.1:3121
source G:/Xilinx/Projects/Desktop/AXI_4_Lite_Slave/AXI_4_Lite_Slave.sdk/Zynq_Design_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zybo Z7 210351A82662A"} -index 0
loadhw -hw G:/Xilinx/Projects/Desktop/AXI_4_Lite_Slave/AXI_4_Lite_Slave.sdk/Zynq_Design_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zybo Z7 210351A82662A"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo Z7 210351A82662A"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo Z7 210351A82662A"} -index 0
dow G:/Xilinx/Projects/Desktop/AXI_4_Lite_Slave/AXI_4_Lite_Slave.sdk/AXI_Slave_Test_Bench_4/Debug/AXI_Slave_Test_Bench_4.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zybo Z7 210351A82662A"} -index 0
con
