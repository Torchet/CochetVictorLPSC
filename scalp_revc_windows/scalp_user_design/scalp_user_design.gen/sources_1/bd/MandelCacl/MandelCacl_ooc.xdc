################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name src_clk_1 -period 8 [get_ports src_clk_1]
create_clock -name Dest_Clk -period 20.833 [get_ports Dest_Clk]

################################################################################