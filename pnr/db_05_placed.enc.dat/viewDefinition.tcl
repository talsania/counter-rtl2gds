if {![namespace exists ::IMEX]} { namespace eval ::IMEX {} }
set ::IMEX::dataVar [file dirname [file normalize [info script]]]
set ::IMEX::libVar ${::IMEX::dataVar}/libs

create_library_set -name ss_lib\
   -timing\
    [list ${::IMEX::libVar}/mmmc/tsl18fs120_scl_ss.lib]
create_rc_corner -name default_rc\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0\
   -T 25
create_delay_corner -name delay_ss\
   -library_set ss_lib\
   -rc_corner default_rc
create_constraint_mode -name constraints_ss\
   -sdc_files\
    [list ${::IMEX::libVar}/mmmc/counter_innovus.sdc]
create_analysis_view -name view_ss -constraint_mode constraints_ss -delay_corner delay_ss
set_analysis_view -setup [list view_ss] -hold [list view_ss]
