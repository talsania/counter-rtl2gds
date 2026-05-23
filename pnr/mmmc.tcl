create_library_set -name ss_lib -timing { /pdk/SCLPDK_V3.0_KIT/scl180/stdcell/fs120/6M1L/liberty/lib_flow_ss/tsl18fs120_scl_ss.lib }
create_rc_corner -name default_rc -T 25
create_delay_corner -name delay_ss -library_set ss_lib -rc_corner default_rc
create_constraint_mode -name constraints_ss -sdc_files { ../synth/outputs/counter_innovus.sdc }
create_analysis_view -name view_ss -constraint_mode constraints_ss -delay_corner delay_ss
set_analysis_view -setup { view_ss } -hold { view_ss }
