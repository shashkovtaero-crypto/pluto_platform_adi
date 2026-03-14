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
