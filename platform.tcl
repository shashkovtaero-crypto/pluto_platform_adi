# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct D:\vitis_workspace\pluto_platform_adi\platform.tcl
# 
# OR launch xsct and run below command.
# source D:\vitis_workspace\pluto_platform_adi\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {pluto_platform_adi}\
-hw {D:\xilinx_workspace\PLUTO\hdl\projects\pluto\system_top.xsa}\
-out {D:/vitis_workspace}

platform write
domain create -name {freertos10_xilinx_ps7_cortexa9_0} -display-name {freertos10_xilinx_ps7_cortexa9_0} -os {freertos10_xilinx} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {empty_application}
platform generate -domains 
platform active {pluto_platform_adi}
domain active {zynq_fsbl}
domain active {freertos10_xilinx_ps7_cortexa9_0}
platform generate -quick
platform generate
platform clean
platform generate
platform generate
platform config -updatehw {D:/xilinx_workspace/PLUTO/hdl/projects/pluto/system_top.xsa}
platform generate -domains 
platform clean
platform generate
platform active {pluto_platform_adi}
bsp reload
bsp reload
platform active {pluto_platform_adi}
platform generate -domains 
platform active {pluto_platform_adi}
platform generate -domains 
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
bsp reload
domain active {zynq_fsbl}
bsp reload
domain active {freertos10_xilinx_ps7_cortexa9_0}
bsp reload
bsp reload
bsp setlib -name lwip211 -ver 1.8
bsp write
bsp reload
catch {bsp regenerate}
bsp removelib -name lwip211
bsp setlib -name lwip211 -ver 1.8
bsp write
platform clean
bsp config api_mode "SOCKET_API"
bsp config pbuf_pool_size "1024"
bsp config memp_n_pbuf "1024"
bsp config memp_n_sys_timeout "8"
bsp config mem_size "131072"
bsp config memp_num_api_msg "16"
bsp config phy_link_speed "CONFIG_LINKSPEED_AUTODETECT"
bsp write
bsp reload
catch {bsp regenerate}
platform clean
platform generate
bsp reload
platform clean
platform generate
platform clean
platform generate
