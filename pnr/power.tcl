# 1. Global Net Connections
clearGlobalNets
globalNetConnect VDD -type pgpin -pin VDD -inst * -module {}
globalNetConnect VSS -type pgpin -pin VSS -inst * -module {}
globalNetConnect VDD -type tiehi -pin VDD -inst * -module {}
globalNetConnect VSS -type tielo -pin VSS -inst * -module {}

# 2. Power Rings (M4 Vertical, M5 Horizontal)
addRing -nets {VDD VSS} \
    -type core_rings \
    -center 1 \
    -width 2.0 \
    -spacing 1.0 \
    -layer {top M5 bottom M5 left M4 right M4}

# 3. Standard Cell Power Rails (M1)
sroute -connect { corePin } \
    -layerChangeRange { M1 M5 } \
    -blockPinTarget { nearestTarget } \
    -corePinTarget { first } \
    -allowJogging 1 \
    -crossoverViaLayerRange { M1 M5 } \
    -nets { VDD VSS } \
    -allowLayerChange 1

# Verify
verifyGeometry
verifyConnectivity -type special

# Save the database
saveDesign db_04_power.enc
