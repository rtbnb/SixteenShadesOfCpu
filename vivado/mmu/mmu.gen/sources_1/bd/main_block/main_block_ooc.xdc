################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name clk200mhz -period 5 [get_ports clk200mhz]
create_clock -name debug_clk200mhz -period 5 [get_ports debug_clk200mhz]
create_clock -name vram_sync -period 10 [get_ports vram_sync]
create_clock -name debug_sync -period 10 [get_ports debug_sync]
create_clock -name cpu_sync -period 10 [get_ports cpu_sync]
create_clock -name vram_clk200mhz -period 5 [get_ports vram_clk200mhz]

################################################################################