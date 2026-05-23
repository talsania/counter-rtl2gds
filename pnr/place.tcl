# Place standard cells
placeDesign

# Verify
checkPlace
earlyGlobalRoute
timeDesign -preCTS

saveDesign db_05_placed.enc
