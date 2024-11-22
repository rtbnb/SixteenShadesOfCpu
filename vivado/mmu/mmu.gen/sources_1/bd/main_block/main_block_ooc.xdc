################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name clk100mhz_in -period 10 [get_ports clk100mhz_in]
create_clock -name debug_clk -period 10 [get_ports debug_clk]
create_clock -name gpu_clk -period 10 [get_ports gpu_clk]
create_clock -name vga_clk -period 10 [get_ports vga_clk]
create_clock -name debug_mock_clk -period 10 [get_ports debug_mock_clk]

################################################################################