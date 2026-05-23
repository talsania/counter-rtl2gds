# Define Core Area (Aspect Ratio 1.0, 60% Density, 10um margins)
floorPlan -site CoreSite -r 1.0 0.6 10 10 10 10
fit

# Verify
checkFPlan

# Save the database
saveDesign db_03_floorplan.enc
