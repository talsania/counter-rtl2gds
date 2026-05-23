# ####################################################################

#  Created by Genus(TM) Synthesis Solution 25.13-s071_1 on Fri May 22 19:36:39 IST 2026

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design counter

create_clock -name "clk" -period 10.0 -waveform {0.0 5.0} [get_ports clk]
set_clock_transition 0.1 [get_clocks clk]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports rst_n]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports en]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports up_down]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports load]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {d[15]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {d[14]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {d[13]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {d[12]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {d[11]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {d[10]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {d[9]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {d[8]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {d[7]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {d[6]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {d[5]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {d[4]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {d[3]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {d[2]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {d[1]}]
set_input_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {d[0]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {q[15]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {q[14]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {q[13]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {q[12]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {q[11]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {q[10]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {q[9]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {q[8]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {q[7]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {q[6]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {q[5]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {q[4]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {q[3]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {q[2]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {q[1]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports {q[0]}]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports tc]
set_output_delay -clock [get_clocks clk] -add_delay 2.0 [get_ports borrow]
