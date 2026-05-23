set DESIGN     "counter"
set NETLIST    "../synth/outputs/${DESIGN}_netlist.v"
set SDC_FILE   "../synth/outputs/${DESIGN}_innovus.sdc"
set MMMC_FILE  "mmmc.tcl"

set LIB_SS     "/pdk/SCLPDK_V3.0_KIT/scl180/stdcell/fs120/6M1L/liberty/lib_flow_ss/tsl18fs120_scl_ss.lib"
set TECH_LEF   "/pdk/SCLPDK_V3.0_KIT/scl180/stdcell/fs120/6M1L/lef/scl18fs120_tech.lef"
set STD_LEF    "/pdk/SCLPDK_V3.0_KIT/scl180/stdcell/fs120/6M1L/lef/scl18fs120_std.lef"

# Auto-generate MMMC file
set mmmc_fd [open $MMMC_FILE w]
puts $mmmc_fd "create_library_set -name ss_lib -timing { $LIB_SS }"
puts $mmmc_fd "create_rc_corner -name default_rc -T 25"
puts $mmmc_fd "create_delay_corner -name delay_ss -library_set ss_lib -rc_corner default_rc"
puts $mmmc_fd "create_constraint_mode -name constraints_ss -sdc_files { $SDC_FILE }"
puts $mmmc_fd "create_analysis_view -name view_ss -constraint_mode constraints_ss -delay_corner delay_ss"
puts $mmmc_fd "set_analysis_view -setup { view_ss } -hold { view_ss }"
close $mmmc_fd

# Set Innovus Initialization Variables
set init_top_cell  $DESIGN
set init_verilog   $NETLIST
set init_pwr_net   "VDD"
set init_gnd_net   "VSS"
set init_lef_file  [list $TECH_LEF $STD_LEF]
set init_mmmc_file $MMMC_FILE

# Initialize Design
init_design
