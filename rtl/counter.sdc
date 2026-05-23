create_clock -name clk -period 10.0 [get_ports clk]

set_clock_uncertainty -setup 0.2 [get_clocks clk]
set_clock_uncertainty -hold  0.1 [get_clocks clk]

set_clock_transition 0.15 [get_clocks clk]

set_input_delay -clock clk -max 2.0 [get_ports {rst_n en up_down load d[*]}]
set_input_delay -clock clk -min 0.3 [get_ports {rst_n en up_down load d[*]}]

set_output_delay -clock clk -max 2.0 [get_ports {q[*]}]
set_output_delay -clock clk -min 0.3 [get_ports {q[*]}]

set_output_delay -clock clk -max 1.5 [get_ports {tc borrow}]
set_output_delay -clock clk -min 0.2 [get_ports {tc borrow}]

set_driving_cell -lib_cell sky130_fd_sc_hd__buf_2 [get_ports {rst_n en up_down load d[*]}]
set_load 0.05 [get_ports {q[*] tc borrow}]

# False paths: none
# all paths are timing-critical

set_max_fanout 10 [current_design]
set_max_transition 0.5 [current_design]
