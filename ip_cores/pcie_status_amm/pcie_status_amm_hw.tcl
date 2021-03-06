# TCL File Generated by Component Editor 19.1
# Sat May 08 17:40:15 CEST 2021
# DO NOT MODIFY


# 
# pcie_status_amm "PCIe Status over Avalon-MM" v1.0
# Jan Marjanovic 2021.05.08.17:40:15
# 
# 

# 
# request TCL package from ACDS 16.1
# 
package require -exact qsys 16.1


# 
# module pcie_status_amm
# 
set_module_property DESCRIPTION ""
set_module_property NAME pcie_status_amm
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR "Jan Marjanovic"
set_module_property DISPLAY_NAME "PCIe Status over Avalon-MM"
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL pcie_status_amm
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file pcie_status_amm.sv SYSTEM_VERILOG PATH hdl/pcie_status_amm.sv TOP_LEVEL_FILE

add_fileset SIM_VERILOG SIM_VERILOG "" ""
set_fileset_property SIM_VERILOG TOP_LEVEL pcie_status_amm
set_fileset_property SIM_VERILOG ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property SIM_VERILOG ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file pcie_status_amm.sv SYSTEM_VERILOG PATH hdl/pcie_status_amm.sv


# 
# parameters
# 


# 
# display items
# 


# 
# connection point clock
# 
add_interface clock clock end
set_interface_property clock clockRate 0
set_interface_property clock ENABLED true
set_interface_property clock EXPORT_OF ""
set_interface_property clock PORT_NAME_MAP ""
set_interface_property clock CMSIS_SVD_VARIABLES ""
set_interface_property clock SVD_ADDRESS_GROUP ""

add_interface_port clock clk clk Input 1


# 
# connection point reset
# 
add_interface reset reset end
set_interface_property reset associatedClock clock
set_interface_property reset synchronousEdges DEASSERT
set_interface_property reset ENABLED true
set_interface_property reset EXPORT_OF ""
set_interface_property reset PORT_NAME_MAP ""
set_interface_property reset CMSIS_SVD_VARIABLES ""
set_interface_property reset SVD_ADDRESS_GROUP ""

add_interface_port reset rsi_reset_reset reset Input 1


# 
# connection point ctrl
# 
add_interface ctrl avalon end
set_interface_property ctrl addressUnits WORDS
set_interface_property ctrl associatedClock clock
set_interface_property ctrl associatedReset reset
set_interface_property ctrl bitsPerSymbol 8
set_interface_property ctrl burstOnBurstBoundariesOnly false
set_interface_property ctrl burstcountUnits WORDS
set_interface_property ctrl explicitAddressSpan 0
set_interface_property ctrl holdTime 0
set_interface_property ctrl linewrapBursts false
set_interface_property ctrl maximumPendingReadTransactions 0
set_interface_property ctrl maximumPendingWriteTransactions 0
set_interface_property ctrl readLatency 0
set_interface_property ctrl readWaitTime 1
set_interface_property ctrl setupTime 0
set_interface_property ctrl timingUnits Cycles
set_interface_property ctrl writeWaitTime 0
set_interface_property ctrl ENABLED true
set_interface_property ctrl EXPORT_OF ""
set_interface_property ctrl PORT_NAME_MAP ""
set_interface_property ctrl CMSIS_SVD_VARIABLES ""
set_interface_property ctrl SVD_ADDRESS_GROUP ""

add_interface_port ctrl avs_ctrl_address address Input 4
add_interface_port ctrl avs_ctrl_readdata readdata Output 32
add_interface_port ctrl avs_ctrl_read read Input 1
set_interface_assignment ctrl embeddedsw.configuration.isFlash 0
set_interface_assignment ctrl embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment ctrl embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment ctrl embeddedsw.configuration.isPrintableDevice 0


# 
# connection point hip_currentspeed
# 
add_interface hip_currentspeed conduit end
set_interface_property hip_currentspeed associatedClock ""
set_interface_property hip_currentspeed associatedReset ""
set_interface_property hip_currentspeed ENABLED true
set_interface_property hip_currentspeed EXPORT_OF ""
set_interface_property hip_currentspeed PORT_NAME_MAP ""
set_interface_property hip_currentspeed CMSIS_SVD_VARIABLES ""
set_interface_property hip_currentspeed SVD_ADDRESS_GROUP ""

add_interface_port hip_currentspeed hip_currentspeed_currentspeed currentspeed Input 2


# 
# connection point hip_status
# 
add_interface hip_status conduit end
set_interface_property hip_status associatedClock ""
set_interface_property hip_status associatedReset ""
set_interface_property hip_status ENABLED true
set_interface_property hip_status EXPORT_OF ""
set_interface_property hip_status PORT_NAME_MAP ""
set_interface_property hip_status CMSIS_SVD_VARIABLES ""
set_interface_property hip_status SVD_ADDRESS_GROUP ""

add_interface_port hip_status hip_status_lane_act lane_act Input 4
add_interface_port hip_status hip_status_ltssmstate ltssmstate Input 5
add_interface_port hip_status hip_status_dlup dlup Input 1

