# 1. Add Filler Cells
# Standard cells have empty spaces between them. Filler cells bridge these gaps to ensure continuous N-Wells and P-Wells across the silicon.
# (Note: Replace 'feedth' with the exact filler cell names in your LEF if different)
addFiller -cell {feedth9 feedth3 feedth} -prefix FILLER

# Verify
checkPlace

# 2. Export the Final Gate-Level Netlist (for LVS verification)
saveNetlist ../synth/outputs/counter_routed.v

# 3. Export RC Parasitics / SPEF (for external Signoff Timing in PrimeTime)
extractRC
rcOut -spef ../synth/outputs/counter_routed.spef

# 4. Export the GDSII Layout
# Note: You may need to provide a standard layer mapping file (-mapFile) depending on the SCL PDK.
streamOut ../synth/outputs/counter.gds \
    -units 1000 \
    -mode ALL
