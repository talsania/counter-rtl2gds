# 1. Setup Clock Buffers
set_ccopt_property buffer_cells { buffd1 buffd2 buffd3 buffd4 buffd7 buffda }
set_ccopt_property inverter_cells { inv0d1 inv0d2 inv0d4 inv0d7 inv0da }
set_ccopt_property use_inverters true

# 2. Build Clock Tree
create_ccopt_clock_tree_spec
ccopt_design

# Verify
report_ccopt_clock_trees
timeDesign -postCTS
timeDesign -postCTS -hold

saveDesign db_06_cts.enc
