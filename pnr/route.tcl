# 1. Configure the Router
setNanoRouteMode -quiet -timingEngine {}
setNanoRouteMode -quiet -routeWithTimingDriven 1
setNanoRouteMode -quiet -routeWithSiDriven 1
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default

# 2. Run NanoRoute
routeDesign -globalDetail

# Verify
verifyGeometry
verifyConnectivity -type regular

setAnalysisMode -analysisType onChipVariation -cppr both
# Final Timing Signoff: Verify exact timing with real wire resistances/capacitances
timeDesign -postRoute
timeDesign -postRoute -hold

# 3. Save Final Database
saveDesign db_07_routed.enc
