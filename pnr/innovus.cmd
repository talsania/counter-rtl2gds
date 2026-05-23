#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Sat May 23 09:20:45 2026                
#                                                     
#######################################################

#@(#)CDS: Innovus v25.13-s088_1 (64bit) 03/26/2026 12:37 (Linux 4.18.0-305.el8.x86_64)
#@(#)CDS: NanoRoute 25.13-s088_1 NR260309-1855/25_13-UB (database version 18.20.683) {superthreading v2.20}
#@(#)CDS: AAE 25.13-s023 (64bit) 03/26/2026 (Linux 4.18.0-305.el8.x86_64)
#@(#)CDS: CTE 25.13-s044_1 () Mar 24 2026 17:45:14 ( )
#@(#)CDS: SYNTECH 25.13-s012_1 () Mar 10 2026 03:01:02 ( )
#@(#)CDS: CPE v25.13-s019
#@(#)CDS: IQuantus/TQuantus 24.1.0-s476 (64bit) Wed Feb 11 22:11:27 PST 2026 (Linux 4.18.0-305.el8.x86_64)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
getVersion
win
set init_top_cell counter
set init_verilog ../synth/outputs/counter_netlist.v
set init_pwr_net VDD
set init_gnd_net VSS
set init_lef_file {/pdk/SCLPDK_V3.0_KIT/scl180/stdcell/fs120/6M1L/lef/scl18fs120_tech.lef /pdk/SCLPDK_V3.0_KIT/scl180/stdcell/fs120/6M1L/lef/scl18fs120_std.lef}
set init_mmmc_file mmmc.tcl
init_design
floorPlan -site CoreSite -r 1.0 0.6 10 10 10 10
fit
checkFPlan
saveDesign db_03_floorplan.enc
clearGlobalNets
globalNetConnect VDD -type pgpin -pin VDD -inst * -module {}
globalNetConnect VSS -type pgpin -pin VSS -inst * -module {}
globalNetConnect VDD -type tiehi -pin VDD -inst * -module {}
globalNetConnect VSS -type tielo -pin VSS -inst * -module {}
addRing -nets {VDD VSS} -type core_rings -center 1 -width 2.0 -spacing 1.0 -layer {top M5 bottom M5 left M4 right M4}
sroute -connect { corePin } -layerChangeRange { M1 M5 } -blockPinTarget { nearestTarget } -corePinTarget { first } -allowJogging 1 -crossoverViaLayerRange { M1 M5 } -nets { VDD VSS } -allowLayerChange 1
verifyConnectivity -type special
saveDesign db_04_power.enc
clearGlobalNets
globalNetConnect VDD -type pgpin -pin VDD -inst * -module {}
globalNetConnect VSS -type pgpin -pin VSS -inst * -module {}
globalNetConnect VDD -type tiehi -pin VDD -inst * -module {}
globalNetConnect VSS -type tielo -pin VSS -inst * -module {}
addRing -nets {VDD VSS} -type core_rings -center 1 -width 2.0 -spacing 1.0 -layer {top M5 bottom M5 left M4 right M4}
sroute -connect { corePin } -layerChangeRange { M1 M5 } -blockPinTarget { nearestTarget } -corePinTarget { first } -allowJogging 1 -crossoverViaLayerRange { M1 M5 } -nets { VDD VSS } -allowLayerChange 1
verifyConnectivity -type special
saveDesign db_04_power.enc
getPlaceMode -place_hierarchical_flow -quiet
report_message -start_cmd
getRouteMode -maxRouteLayer -quiet
getRouteMode -user -maxRouteLayer
getPlaceMode -place_global_place_io_pins -quiet
getPlaceMode -user -maxRouteLayer
getPlaceMode -quiet -adaptiveFlowMode
getPlaceMode -timingDriven -quiet
getPlaceMode -adaptive -quiet
getPlaceMode -relaxSoftBlockageMode -quiet
getPlaceMode -user -relaxSoftBlockageMode
getPlaceMode -ignoreScan -quiet
getPlaceMode -user -ignoreScan
getPlaceMode -repairPlace -quiet
getPlaceMode -user -repairPlace
getPlaceMode -inPlaceOptMode -quiet
getPlaceMode -quiet -bypassFlowEffortHighChecking
getDesignMode -quiet -siPrevention
getPlaceMode -quiet -place_global_exp_enable_3d
getPlaceMode -quiet -place_global_exp_ignore_intra_ilm_out_of_corebox_check
getPlaceMode -place_global_place_io_pins -quiet
getPlaceMode -exp_slack_driven -quiet
um::push_snapshot_stack
getDesignMode -quiet -flowEffort
getDesignMode -highSpeedCore -quiet
getPlaceMode -quiet -adaptive
set spgFlowInInitialPlace 1
getPlaceMode -sdpAlignment -quiet
getPlaceMode -softGuide -quiet
getPlaceMode -useSdpGroup -quiet
getPlaceMode -sdpAlignment -quiet
getPlaceMode -enableDbSaveAreaPadding -quiet
getPlaceMode -quiet -wireLenOptEffort
getPlaceMode -sdpPlace -quiet
getPlaceMode -exp_slack_driven -quiet
getPlaceMode -sdpPlace -quiet
getPlaceMode -groupHighLevelClkGate -quiet
setvar spgRptErrorForScanConnection 0
getPlaceMode -place_global_exp_allow_missing_scan_chain -quiet
getPlaceMode -place_check_library -quiet
getPlaceMode -place_detail_exp_enable_3d_hdb -quiet
getPlaceMode -place_global_exp_heterogeneous_3d_placement -quiet
getPlaceMode -trimView -quiet
getPlaceMode -expTrimOptBeforeTDGP -quiet
getPlaceMode -quiet -useNonTimingDeleteBufferTree
getPlaceMode -congEffort -quiet
getPlaceMode -relaxSoftBlockageMode -quiet
getPlaceMode -user -relaxSoftBlockageMode
getPlaceMode -ignoreScan -quiet
getPlaceMode -user -ignoreScan
getPlaceMode -repairPlace -quiet
getPlaceMode -user -repairPlace
getPlaceMode -congEffort -quiet
getPlaceMode -fp -quiet
getPlaceMode -timingDriven -quiet
getPlaceMode -user -timingDriven
getPlaceMode -fastFp -quiet
getPlaceMode -clusterMode -quiet
get_proto_model -type_match {flex_module flex_instgroup} -committed -name -tcl
getPlaceMode -inPlaceOptMode -quiet
getPlaceMode -quiet -bypassFlowEffortHighChecking
getPlaceMode -ultraCongEffortFlow -quiet
getPlaceMode -forceTiming -quiet
getPlaceMode -fp -quiet
getPlaceMode -fastfp -quiet
getPlaceMode -timingDriven -quiet
getPlaceMode -fp -quiet
getPlaceMode -fastfp -quiet
getPlaceMode -powerDriven -quiet
getExtractRCMode -quiet -engine
getAnalysisMode -quiet -clkSrcPath
getAnalysisMode -quiet -clockPropagation
getAnalysisMode -quiet -cppr
setExtractRCMode -engine preRoute
setAnalysisMode -clkSrcPath false -clockPropagation forcedIdeal
getPlaceMode -exp_slack_driven -quiet
isAnalysisModeSetup
getPlaceMode -quiet -place_global_exp_solve_unbalance_path
getPlaceMode -quiet -NMPsuppressInfo
getPlaceMode -quiet -place_exp_global_disable_cte_lepg_phases_latch_thru
getPlaceMode -quiet -place_global_exp_wns_focus_v2
getPlaceMode -quiet -place_global_exp_tdgp_path_fix_mode
getPlaceMode -quiet -place_incr_exp_isolation_flow
getPlaceMode -wl_budget_mode -quiet
setPlaceMode -reset -place_global_exp_balance_buffer_chain
getPlaceMode -wl_budget_mode -quiet
setPlaceMode -reset -place_global_exp_balance_pipeline
getPlaceMode -place_global_exp_balance_buffer_chain -quiet
getPlaceMode -place_global_exp_balance_pipeline -quiet
getPlaceMode -tdgpMemFlow -quiet
getPlaceMode -user -resetCombineRFLevel
getPlaceMode -quiet -resetCombineRFLevel
setPlaceMode -resetCombineRFLevel 1000
getPlaceMode -place_global_exp_skp_unbalanced_net_weight -quiet
getPlaceMode -place_global_exp_skp_path_based_begin_point -quiet
setvar spgSpeedupBuildVSM 1
getPlaceMode -tdgpResetCteTG -quiet
getPlaceMode -macroPlaceMode -quiet
getPlaceMode -place_global_replace_QP -quiet
getPlaceMode -macroPlaceMode -quiet
getPlaceMode -enableDistPlace -quiet
getPlaceMode -exp_slack_driven -quiet
getPlaceMode -place_global_ignore_spare -quiet
getPlaceMode -quiet -expNewFastMode
setPlaceMode -expHiddenFastMode 1
setPlaceMode -reset -ignoreScan
getPlaceMode -quiet -place_global_exp_auto_finish_floorplan
getPlaceMode -quiet -IOSlackAdjust
getPlaceMode -tdgpCteZeroDelayModeDelBuf -quiet
set_global timing_enable_zero_delay_analysis_mode true
getPlaceMode -quiet -useNonTimingDeleteBufferTree
getPlaceMode -quiet -prePlaceOptSimplifyNetlist
getPlaceMode -quiet -enablePrePlaceOptimizations
getPlaceMode -quiet -prePlaceOptDecloneInv
deleteBufferTree -decloneInv
getPlaceMode -tdgpCteZeroDelayModeDelBuf -quiet
set_global timing_enable_zero_delay_analysis_mode false
getAnalysisMode -quiet -honorClockDomains
getPlaceMode -honorUserPathGroup -quiet
getAnalysisMode -quiet -honorClockDomains
set delaycal_use_default_delay_limit 101
set delaycal_default_net_delay 0
set delaycal_default_net_load 0
set delaycal_default_net_load_ignore_for_ilm 0
set delaycal_input_transition_delay 1ps
getAnalysisMode -clkSrcPath -quiet
getAnalysisMode -clockPropagation -quiet
getAnalysisMode -checkType -quiet
buildTimingGraph
getDelayCalMode -ignoreNetLoad -quiet
getDelayCalMode -ignoreNetLoad -quiet
setDelayCalMode -ignoreNetLoad true -quiet
get_global timing_enable_path_group_priority
get_global timing_constraint_enable_group_path_resetting
set_global timing_enable_path_group_priority false
set_global timing_constraint_enable_group_path_resetting false
getOptMode -allowPreCTSClkSrcPaths -quiet
set_global _is_ipo_interactive_path_groups 1
group_path -name in2reg_tmp.P0MVvVV1BW -from {0x52 0x55} -to 0x56 -ignore_source_of_trigger_arc
getOptMode -allowPreCTSClkSrcPaths -quiet
set_global _is_ipo_interactive_path_groups 1
group_path -name in2out_tmp.P0MVvVV1BW -from {0x59 0x5c} -to 0x5d -ignore_source_of_trigger_arc
set_global _is_ipo_interactive_path_groups 1
group_path -name reg2reg_tmp.P0MVvVV1BW -from 0x5f -to 0x60
set_global _is_ipo_interactive_path_groups 1
group_path -name reg2out_tmp.P0MVvVV1BW -from 0x63 -to 0x64
setPathGroupOptions reg2reg_tmp.P0MVvVV1BW -effortLevel high
isAnalysisModeSetup
getAnalysisMode -analysisType -quiet
isAnalysisModeSetup
all_setup_analysis_views
all_hold_analysis_views
get_analysis_view $view -delay_corner
get_delay_corner $dcCorner -power_domain_list
get_delay_corner $dcCorner -library_set
get_library_set $libSetName -si
get_delay_corner $dcCorner -late_library_set
get_delay_corner $dcCorner -early_library_set
reset_path_group -name reg2out_tmp.P0MVvVV1BW
set_global _is_ipo_interactive_path_groups 0
reset_path_group -name in2reg_tmp.P0MVvVV1BW
set_global _is_ipo_interactive_path_groups 0
reset_path_group -name in2out_tmp.P0MVvVV1BW
set_global _is_ipo_interactive_path_groups 0
reset_path_group -name reg2reg_tmp.P0MVvVV1BW
set_global _is_ipo_interactive_path_groups 0
setDelayCalMode -ignoreNetLoad false
set delaycal_use_default_delay_limit 1000
set delaycal_default_net_delay 1000ps
set delaycal_input_transition_delay 0ps
set delaycal_default_net_load 0.5pf
set delaycal_default_net_load_ignore_for_ilm 0
all_setup_analysis_views
getPlaceMode -place_global_exp_ignore_low_effort_path_groups -quiet
getPlaceMode -exp_slack_driven -quiet
getAnalysisMode -quiet -honorClockDomains
getPlaceMode -quiet -expSkipGP
getPlaceMode -quiet -place_global_exp_inverter_rewiring
getPlaceMode -quiet -place_global_exp_enable_wdir_incrP_handoff
getPlaceMode -ignoreUnproperPowerInit -quiet
getPlaceMode -quiet -expSkipGP
setDelayCalMode -engine feDc
createBasicPathGroups -quiet
reset_path_group
set_global _is_ipo_interactive_path_groups 0
scanReorder
setDelayCalMode -engine aae
all_setup_analysis_views
getPlaceMode -exp_slack_driven -quiet
set_global timing_enable_path_group_priority $gpsPrivate::optSave_ctePGPriority
set_global timing_constraint_enable_group_path_resetting $gpsPrivate::optSave_ctePGResetting
getPlaceMode -quiet -tdgpAdjustNetWeightBySlack
get_ccopt_clock_trees *
getPlaceMode -exp_insert_guidance_clock_tree -quiet
getPlaceMode -exp_cluster_based_high_fanout_buffering -quiet
getPlaceMode -quiet -place_global_exp_heterogeneous_3d_placement
getPlaceMode -place_global_exp_incr_skp_preserve_mode_v2 -quiet
getPlaceMode -quiet -place_global_exp_tdgp_path_fix_mode
getPlaceMode -quiet -place_global_exp_tdgp_path_fix_mode
getPlaceMode -quiet -place_global_exp_area_density_v3
getPlaceMode -quiet -place_global_exp_area_density_v3_lw_icdp
getDesignMode -node -quiet
getPlaceMode -quiet -place_global_exp_netlist_balance_flow
getPlaceMode -quiet -place_global_exp_netlist_balance_flow
getPlaceMode -quiet -place_global_high_effort_density_smoother
getPlaceMode -quiet -timingEffort
getPlaceMode -place_global_exp_enable_AI -quiet
getPlaceMode -place_global_exp_enable_multi_start_idx -quiet
getPlaceMode -quiet -place_detail_exp_enable_full_fgc_in_pod
getPlaceMode -quiet -place_detail_refinePlace_v3
getPlaceMode -quiet -place_detail_refinePlace_v2
getPlaceMode -quiet -place_detail_refinePlace_v2_pa_fgc_prects_on
getPlaceMode -place_global_exp_251_invoke_fast_placer -quiet
getAnalysisMode -quiet -honorClockDomains
getPlaceMode -honorUserPathGroup -quiet
getAnalysisMode -quiet -honorClockDomains
set delaycal_use_default_delay_limit 101
set delaycal_default_net_delay 0
set delaycal_default_net_load 0
set delaycal_default_net_load_ignore_for_ilm 0
getAnalysisMode -clkSrcPath -quiet
getAnalysisMode -clockPropagation -quiet
getAnalysisMode -checkType -quiet
buildTimingGraph
getDelayCalMode -ignoreNetLoad -quiet
getDelayCalMode -ignoreNetLoad -quiet
setDelayCalMode -ignoreNetLoad true -quiet
get_global timing_enable_path_group_priority
get_global timing_constraint_enable_group_path_resetting
set_global timing_enable_path_group_priority false
set_global timing_constraint_enable_group_path_resetting false
getOptMode -allowPreCTSClkSrcPaths -quiet
set_global _is_ipo_interactive_path_groups 1
group_path -name in2reg_tmp.P0MVvVV1BW -from {0x6d 0x70} -to 0x71 -ignore_source_of_trigger_arc
getOptMode -allowPreCTSClkSrcPaths -quiet
set_global _is_ipo_interactive_path_groups 1
group_path -name in2out_tmp.P0MVvVV1BW -from {0x74 0x77} -to 0x78 -ignore_source_of_trigger_arc
set_global _is_ipo_interactive_path_groups 1
group_path -name reg2reg_tmp.P0MVvVV1BW -from 0x7a -to 0x7b
set_global _is_ipo_interactive_path_groups 1
group_path -name reg2out_tmp.P0MVvVV1BW -from 0x7e -to 0x7f
setPathGroupOptions reg2reg_tmp.P0MVvVV1BW -effortLevel high
reset_path_group -name reg2out_tmp.P0MVvVV1BW
set_global _is_ipo_interactive_path_groups 0
reset_path_group -name in2reg_tmp.P0MVvVV1BW
set_global _is_ipo_interactive_path_groups 0
reset_path_group -name in2out_tmp.P0MVvVV1BW
set_global _is_ipo_interactive_path_groups 0
reset_path_group -name reg2reg_tmp.P0MVvVV1BW
set_global _is_ipo_interactive_path_groups 0
setDelayCalMode -ignoreNetLoad false
set delaycal_use_default_delay_limit 1000
set delaycal_default_net_delay 1000ps
set delaycal_default_net_load 0.5pf
set delaycal_default_net_load_ignore_for_ilm 0
all_setup_analysis_views
getPlaceMode -place_global_exp_ignore_low_effort_path_groups -quiet
getPlaceMode -exp_slack_driven -quiet
getPlaceMode -quiet -cong_repair_commit_clock_net_route_attr
getPlaceMode -place_global_exp_enable_thermal_aware -quiet
getPlaceMode -enableDbSaveAreaPadding -quiet
getPlaceMode -quiet -wireLenOptEffort
setPlaceMode -reset -improveWithPsp
getPlaceMode -quiet -debugGlobalPlace
getPlaceMode -congRepair -quiet
getPlaceMode -fp -quiet
getPlaceMode -user -rplaceIncrNPClkGateAwareMode
getPlaceMode -user -congRepairMaxIter
getPlaceMode -quiet -congRepairPDClkGateMode4
setPlaceMode -rplaceIncrNPClkGateAwareMode 4
getPlaceMode -quiet -expCongRepairPDOneLoop
setPlaceMode -congRepairMaxIter 1
getPlaceMode -quickCTS -quiet
get_proto_model -type_match {flex_module flex_instgroup} -committed -name -tcl
getPlaceMode -congRepairForceTrialRoute -quiet
getPlaceMode -user -congRepairForceTrialRoute
setPlaceMode -congRepairForceTrialRoute true
::goMC::is_advanced_metrics_collection_running
congRepair
::goMC::is_advanced_metrics_collection_running
::goMC::is_advanced_metrics_collection_running
::goMC::is_advanced_metrics_collection_running
setPlaceMode -reset -congRepairForceTrialRoute
getPlaceMode -quiet -congRepairPDClkGateMode4
setPlaceMode -reset -rplaceIncrNPClkGateAwareMode
setPlaceMode -reset -congRepairMaxIter
getPlaceMode -congRepairCleanupPadding -quiet
getPlaceMode -quiet -wireLenOptEffort
all_setup_analysis_views
getPlaceMode -exp_slack_driven -quiet
set_global timing_enable_path_group_priority $gpsPrivate::optSave_ctePGPriority
set_global timing_constraint_enable_group_path_resetting $gpsPrivate::optSave_ctePGResetting
getPlaceMode -place_global_exp_incr_skp_preserve_mode_v2 -quiet
getPlaceMode -quiet -place_global_exp_tdgp_path_fix_mode
getPlaceMode -quiet -place_global_exp_netlist_balance_flow
getPlaceMode -quiet -place_global_exp_netlist_balance_flow
getPlaceMode -quiet -place_global_high_effort_density_smoother
getPlaceMode -quiet -place_global_exp_area_density_v3
getPlaceMode -quiet -place_global_exp_area_density_v3_lw_icdp
getDesignMode -node -quiet
getPlaceMode -place_global_exp_enable_AI -quiet
getPlaceMode -place_global_exp_enable_multi_start_idx -quiet
getPlaceMode -quiet -timingEffort
getPlaceMode -tdgpDumpStageTiming -quiet
getPlaceMode -quiet -tdgpAdjustNetWeightBySlack
getPlaceMode -trimView -quiet
getOptMode -quiet -viewOptPolishing
getOptMode -quiet -fastViewOpt
spInternalUse deleteViewOptManager
spInternalUse tdgp clearSkpData
setAnalysisMode -clkSrcPath true -clockPropagation sdcControl
getPlaceMode -exp_slack_driven -quiet
setExtractRCMode -engine preRoute
setPlaceMode -reset -relaxSoftBlockageMode
setPlaceMode -reset -ignoreScan
setPlaceMode -reset -repairPlace
getPlaceMode -quiet -NMPsuppressInfo
getPlaceMode -quiet -place_exp_global_disable_cte_lepg_phases_latch_thru
setvar spgSpeedupBuildVSM 0
getPlaceMode -macroPlaceMode -quiet
getPlaceMode -place_global_replace_QP -quiet
getPlaceMode -macroPlaceMode -quiet
getPlaceMode -exp_slack_driven -quiet
getPlaceMode -place_global_ignore_spare -quiet
getPlaceMode -tdgpMemFlow -quiet
setPlaceMode -reset -resetCombineRFLevel
getPlaceMode -place_global_exp_skp_unbalanced_net_weight -quiet
getPlaceMode -place_global_exp_skp_path_based_begin_point -quiet
getPlaceMode -quiet -place_global_exp_tdgp_path_fix_mode
getPlaceMode -quiet -place_global_exp_solve_unbalance_path
setPlaceMode -reset -expHiddenFastMode
getPlaceMode -tcg2Pass -quiet
getPlaceMode -quiet -wireLenOptEffort
getPlaceMode -fp -quiet
getPlaceMode -fastfp -quiet
getPlaceMode -doRPlace -quiet
getPlaceMode -RTCPlaceDesignFlow -quiet
getPlaceMode -quickCTS -quiet
getPlaceMode -place_global_post_place_reorder_scan -quiet
set spgFlowInInitialPlace 0
getPlaceMode -user -maxRouteLayer
spInternalUse TDGP resetIgnoreNetLoad
getPlaceMode -place_global_exp_balance_pipeline -quiet
getDesignMode -quiet -flowEffort
report_message -end_cmd
um::create_snapshot -name final -auto min
um::pop_snapshot_stack
um::create_snapshot -name place_design
getPlaceMode -exp_slack_driven -quiet
checkPlace
earlyGlobalRoute
timeDesign -preCTS
saveDesign db_05_placed.enc
set_ccopt_property buffer_cells { buffd1 buffd2 buffd3 buffd4 buffd7 buffda }
set_ccopt_property inverter_cells { inv0d1 inv0d2 inv0d4 inv0d7 inv0da }
set_ccopt_property use_inverters true
create_ccopt_clock_tree_spec
ccopt_design
report_ccopt_clock_trees
timeDesign -postCTS
timeDesign -postCTS -hold
saveDesign db_06_cts.enc
setNanoRouteMode -quiet -timingEngine {}
setNanoRouteMode -quiet -routeWithTimingDriven 1
setNanoRouteMode -quiet -routeWithSiDriven 1
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
routeDesign -globalDetail
verifyConnectivity -type regular
setAnalysisMode -analysisType onChipVariation -cppr both
timeDesign -postRoute
timeDesign -postRoute -hold
saveDesign db_07_routed.enc
addFiller -cell {feedth9 feedth3 feedth} -prefix FILLER
checkPlace
saveNetlist ../synth/outputs/counter_routed.v
extractRC
rcOut -spef ../synth/outputs/counter_routed.spef
streamOut ../synth/outputs/counter.gds -units 1000 -mode ALL
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
