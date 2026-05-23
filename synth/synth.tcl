set DESIGN      counter
set RTL_FILE    ../rtl/counter.v
set SDC_FILE    constraints.sdc
set OUT_DIR     outputs

file mkdir $OUT_DIR

set_db library /pdk/SCLPDK_V3.0_KIT/scl180/stdcell/fs120/6M1L/liberty/lib_flow_ss/tsl18fs120_scl_ss.lib
set_db lef_library { \
    /pdk/SCLPDK_V3.0_KIT/scl180/stdcell/fs120/6M1L/lef/scl18fs120_tech.lef \
    /pdk/SCLPDK_V3.0_KIT/scl180/stdcell/fs120/6M1L/lef/scl18fs120_std.lef \
}

read_hdl $RTL_FILE
elaborate $DESIGN
check_design -unresolved
read_sdc $SDC_FILE

syn_generic
syn_map
syn_opt

report_timing > $OUT_DIR/timing.rpt
report_area   > $OUT_DIR/area.rpt
report_power  > $OUT_DIR/power.rpt
report_qor    > $OUT_DIR/qor.rpt

write_hdl > $OUT_DIR/${DESIGN}_netlist.v
write_sdc > $OUT_DIR/${DESIGN}_innovus.sdc
write_db  $OUT_DIR/${DESIGN}.db

gui_show
