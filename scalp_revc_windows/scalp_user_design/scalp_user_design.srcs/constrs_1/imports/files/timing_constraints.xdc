############################################################################
# Timing constraints                                                       #
############################################################################

##### PS_CLK (125 MHz) #####

##### GTP reference clocks (125 MHz) #####
#create_clock -period 8.000 -waveform {0.000 4.000} [get_nets GTPRefClk0PxCI]
#create_clock -period 8.000 -waveform {0.000 4.000} [get_nets GTPRefClk1xC]

##### Clocks from PLLs (125 MHz) #####
#create_clock -period 8.000 -waveform {0.000 4.000} [get_nets {PLL_Clk_in_Local}]
#create_clock -period 8.000 -waveform {0.000 4.000} [get_nets {PLL_Clk_in_North}]
#create_clock -period 8.000 -waveform {0.000 4.000} [get_nets {PLL_Clk_in_South}]
#create_clock -period 8.000 -waveform {0.000 4.000} [get_nets {PLL_Clk_in_Top}]
#create_clock -period 8.000 -waveform {0.000 4.000} [get_nets {PLL_Clk_in_Bottom}]

##### Clocks from neighbours (125 MHz) #####
#create_clock -period 8.000 -waveform {0.000 4.000} [get_nets {Clk_in_North}]
#create_clock -period 8.000 -waveform {0.000 4.000} [get_nets {Clk_in_South}]
#create_clock -period 8.000 -waveform {0.000 4.000} [get_nets {Clk_in_East}]
#create_clock -period 8.000 -waveform {0.000 4.000} [get_nets {Clk_in_West}]
#create_clock -period 8.000 -waveform {0.000 4.000} [get_nets {Clk_in_Top}]
#create_clock -period 8.000 -waveform {0.000 4.000} [get_nets {Clk_in_Bottom}]

# Output delays
#create_clock -name clk_125 -period 8.000 [get_nets sys_clock_clk_125]
#set_output_delay 1.000 -clock [get_clocks clk_125] [get_ports Led12V5RxSO]
#set_output_delay 1.000 -clock [get_clocks clk_125] [get_ports Led12V5RxSO]
#set_output_delay 1.000 -clock [get_clocks clk_125] [get_ports Led12V5RxSO]









create_pblock pblock_PLxB.ImGnxB.MndlClc
set_property CONTAIN_ROUTING 1 [get_pblocks pblock_PLxB.ImGnxB.MndlClc]
set_property IS_SOFT FALSE [get_pblocks pblock_PLxB.ImGnxB.MndlClc]

set_property DONT_TOUCH true [get_cells PLxB.ImGenxB.MandelCalc]

set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.IterxD[12]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.IterxD[14]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.IterxD[15]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.IterxD[19]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.IterxD[20]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.IterxD[4]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.IterxD[9]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.IterxD[11]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.IterxD[16]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.IterxD[18]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.IterxD[3]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.IterxD[6]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.IterxD[7]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.IterxD[8]}]
set_property MARK_DEBUG true [get_nets PLxB.ImGenxB.FifoWrEnxD]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.IterxD[17]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.IterxD[21]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.IterxD[0]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.IterxD[2]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.IterxD[5]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.IterxD[13]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.IterxD[22]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.IterxD[23]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.IterxD[1]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.IterxD[10]}]

set_false_path -from [get_pins {PLxB.ImGenxB.MandelCalc/ZbxD_reg[3]/C}] -to [get_pins {PLxB.ImGenxB.MandelCalc/IterxO_reg[10]/CE}]

set_property MARK_DEBUG true [get_nets {ClpxNumRegsAxixD[ClockxC][ClkxC]}]
set_property MARK_DEBUG true [get_nets {HdmiVgaClocksxC[VgaxC]}]
set_property MARK_DEBUG true [get_nets PLxB.ImGenxB.FifoRdEnxD]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.MandelCalc/state[0]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.MandelCalc/state[1]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.MandelCalc/state[2]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.MandelCalc/ZIm2OutPxD[20]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.MandelCalc/ZIm2OutPxD[13]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.MandelCalc/ZIm2OutPxD[15]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.MandelCalc/ZIm2OutPxD[16]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.MandelCalc/ZIm2OutPxD[19]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.MandelCalc/ZIm2OutPxD[25]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.MandelCalc/ZIm2OutPxD[12]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.MandelCalc/ZIm2OutPxD[18]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.MandelCalc/ZIm2OutPxD[22]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.MandelCalc/ZIm2OutPxD[23]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.MandelCalc/ZIm2OutPxD[26]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.MandelCalc/ZIm2OutPxD[27]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.MandelCalc/ZIm2OutPxD[14]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.MandelCalc/ZIm2OutPxD[17]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.MandelCalc/ZIm2OutPxD[21]}]
set_property MARK_DEBUG true [get_nets {PLxB.ImGenxB.MandelCalc/ZIm2OutPxD[24]}]

set_property MARK_DEBUG true [get_nets {VgaPixCountersxD[HxD][2]}]
set_property MARK_DEBUG true [get_nets {VgaPixCountersxD[HxD][4]}]
set_property MARK_DEBUG true [get_nets {VgaPixCountersxD[HxD][7]}]
set_property MARK_DEBUG true [get_nets {VgaPixCountersxD[HxD][8]}]
set_property MARK_DEBUG true [get_nets {VgaPixCountersxD[HxD][13]}]
set_property MARK_DEBUG true [get_nets {VgaPixCountersxD[VxD][5]}]
set_property MARK_DEBUG true [get_nets {VgaPixCountersxD[VxD][7]}]
set_property MARK_DEBUG true [get_nets {VgaPixCountersxD[VxD][9]}]
set_property MARK_DEBUG true [get_nets {VgaPixCountersxD[VxD][13]}]
set_property MARK_DEBUG true [get_nets {VgaPixCountersxD[HxD][10]}]
set_property MARK_DEBUG true [get_nets {VgaPixCountersxD[VxD][1]}]
set_property MARK_DEBUG true [get_nets {VgaPixCountersxD[VxD][3]}]
set_property MARK_DEBUG true [get_nets {VgaPixCountersxD[VxD][11]}]
set_property MARK_DEBUG true [get_nets {VgaPixCountersxD[VxD][12]}]
set_property MARK_DEBUG true [get_nets {VgaPixCountersxD[VxD][14]}]
set_property MARK_DEBUG true [get_nets {VgaPixCountersxD[HxD][0]}]
set_property MARK_DEBUG true [get_nets {VgaPixCountersxD[HxD][1]}]
set_property MARK_DEBUG true [get_nets {VgaPixCountersxD[HxD][6]}]
set_property MARK_DEBUG true [get_nets {VgaPixCountersxD[HxD][11]}]
set_property MARK_DEBUG true [get_nets {VgaPixCountersxD[HxD][12]}]
set_property MARK_DEBUG true [get_nets {VgaPixCountersxD[HxD][14]}]
set_property MARK_DEBUG true [get_nets {VgaPixCountersxD[VxD][6]}]
set_property MARK_DEBUG true [get_nets {VgaPixCountersxD[VxD][8]}]
set_property MARK_DEBUG true [get_nets {VgaPixCountersxD[VxD][0]}]
set_property MARK_DEBUG true [get_nets {VgaPixCountersxD[HxD][3]}]
set_property MARK_DEBUG true [get_nets {VgaPixCountersxD[HxD][5]}]
set_property MARK_DEBUG true [get_nets {VgaPixCountersxD[HxD][9]}]
set_property MARK_DEBUG true [get_nets {VgaPixCountersxD[HxD][15]}]
set_property MARK_DEBUG true [get_nets {VgaPixCountersxD[VxD][2]}]
set_property MARK_DEBUG true [get_nets {VgaPixCountersxD[VxD][4]}]
set_property MARK_DEBUG true [get_nets {VgaPixCountersxD[VxD][10]}]
set_property MARK_DEBUG true [get_nets {VgaPixCountersxD[VxD][15]}]
connect_debug_port u_ila_0/probe2 [get_nets [list {PLxB.ImGenxB.IterxD[0]} {PLxB.ImGenxB.IterxD[1]} {PLxB.ImGenxB.IterxD[2]} {PLxB.ImGenxB.IterxD[3]} {PLxB.ImGenxB.IterxD[4]} {PLxB.ImGenxB.IterxD[5]} {PLxB.ImGenxB.IterxD[6]} {PLxB.ImGenxB.IterxD[7]} {PLxB.ImGenxB.IterxD[8]} {PLxB.ImGenxB.IterxD[9]} {PLxB.ImGenxB.IterxD[10]} {PLxB.ImGenxB.IterxD[11]} {PLxB.ImGenxB.IterxD[12]} {PLxB.ImGenxB.IterxD[13]} {PLxB.ImGenxB.IterxD[14]} {PLxB.ImGenxB.IterxD[15]} {PLxB.ImGenxB.IterxD[16]} {PLxB.ImGenxB.IterxD[17]} {PLxB.ImGenxB.IterxD[18]} {PLxB.ImGenxB.IterxD[19]} {PLxB.ImGenxB.IterxD[20]} {PLxB.ImGenxB.IterxD[21]} {PLxB.ImGenxB.IterxD[22]} {PLxB.ImGenxB.IterxD[23]}]]
connect_debug_port u_ila_0/probe4 [get_nets [list PLxB.ImGenxB.FifoWrEnxD]]
connect_debug_port u_ila_1/probe2 [get_nets [list PLxB.ImGenxB.FifoRdEnxD]]

create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 16384 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list PSxB.ZynqxI/PlatformxB.ScalpZynqPSxI/sys_clock/inst/clk_125]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 16 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {PLxB.ImGenxB.MandelCalc/ZIm2OutPxD[12]} {PLxB.ImGenxB.MandelCalc/ZIm2OutPxD[13]} {PLxB.ImGenxB.MandelCalc/ZIm2OutPxD[14]} {PLxB.ImGenxB.MandelCalc/ZIm2OutPxD[15]} {PLxB.ImGenxB.MandelCalc/ZIm2OutPxD[16]} {PLxB.ImGenxB.MandelCalc/ZIm2OutPxD[17]} {PLxB.ImGenxB.MandelCalc/ZIm2OutPxD[18]} {PLxB.ImGenxB.MandelCalc/ZIm2OutPxD[19]} {PLxB.ImGenxB.MandelCalc/ZIm2OutPxD[20]} {PLxB.ImGenxB.MandelCalc/ZIm2OutPxD[21]} {PLxB.ImGenxB.MandelCalc/ZIm2OutPxD[22]} {PLxB.ImGenxB.MandelCalc/ZIm2OutPxD[23]} {PLxB.ImGenxB.MandelCalc/ZIm2OutPxD[24]} {PLxB.ImGenxB.MandelCalc/ZIm2OutPxD[25]} {PLxB.ImGenxB.MandelCalc/ZIm2OutPxD[26]} {PLxB.ImGenxB.MandelCalc/ZIm2OutPxD[27]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 3 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {PLxB.ImGenxB.MandelCalc/state[0]} {PLxB.ImGenxB.MandelCalc/state[1]} {PLxB.ImGenxB.MandelCalc/state[2]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 1 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list PLxB.ImGenxB.MandelCalc/FinishedxO]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 1 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list PLxB.ImGenxB.MandelCalc/ZIM2_n_0]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 1 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list PLxB.ImGenxB.MandelCalc/ZIM2_n_1]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 1 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list PLxB.ImGenxB.MandelCalc/ZIM2_n_2]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 1 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list PLxB.ImGenxB.MandelCalc/ZIM2_n_3]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 1 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list PLxB.ImGenxB.MandelCalc/ZIM2_n_20]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property port_width 1 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list PLxB.ImGenxB.MandelCalc/ZIM2_n_21]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe9]
set_property port_width 1 [get_debug_ports u_ila_0/probe9]
connect_debug_port u_ila_0/probe9 [get_nets [list PLxB.ImGenxB.MandelCalc/ZIM2_n_22]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe10]
set_property port_width 1 [get_debug_ports u_ila_0/probe10]
connect_debug_port u_ila_0/probe10 [get_nets [list PLxB.ImGenxB.MandelCalc/ZIM2_n_23]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe11]
set_property port_width 1 [get_debug_ports u_ila_0/probe11]
connect_debug_port u_ila_0/probe11 [get_nets [list PLxB.ImGenxB.MandelCalc/ZIM2_n_24]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe12]
set_property port_width 1 [get_debug_ports u_ila_0/probe12]
connect_debug_port u_ila_0/probe12 [get_nets [list PLxB.ImGenxB.MandelCalc/ZIM2_n_25]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe13]
set_property port_width 1 [get_debug_ports u_ila_0/probe13]
connect_debug_port u_ila_0/probe13 [get_nets [list PLxB.ImGenxB.MandelCalc/ZIM2_n_26]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe14]
set_property port_width 1 [get_debug_ports u_ila_0/probe14]
connect_debug_port u_ila_0/probe14 [get_nets [list PLxB.ImGenxB.MandelCalc/ZIM2_n_27]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe15]
set_property port_width 1 [get_debug_ports u_ila_0/probe15]
connect_debug_port u_ila_0/probe15 [get_nets [list PLxB.ImGenxB.MandelCalc/ZIM2_n_28]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe16]
set_property port_width 1 [get_debug_ports u_ila_0/probe16]
connect_debug_port u_ila_0/probe16 [get_nets [list PLxB.ImGenxB.MandelCalc/ZIM2_n_29]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe17]
set_property port_width 1 [get_debug_ports u_ila_0/probe17]
connect_debug_port u_ila_0/probe17 [get_nets [list PLxB.ImGenxB.MandelCalc/ZIM2_n_30]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe18]
set_property port_width 1 [get_debug_ports u_ila_0/probe18]
connect_debug_port u_ila_0/probe18 [get_nets [list PLxB.ImGenxB.MandelCalc/ZIM2_n_31]]
create_debug_core u_ila_1 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_1]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_1]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_1]
set_property C_DATA_DEPTH 16384 [get_debug_cores u_ila_1]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_1]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_1]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_1]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_1]
set_property port_width 1 [get_debug_ports u_ila_1/clk]
connect_debug_port u_ila_1/clk [get_nets [list PSxB.ZynqxI/PlatformxB.ScalpZynqPSxI/vga_hdmi_clk_rst_sys_0/vga_hdmi_clock/inst/clk_vga]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe0]
set_property port_width 16 [get_debug_ports u_ila_1/probe0]
connect_debug_port u_ila_1/probe0 [get_nets [list {VgaPixCountersxD[HxD][0]} {VgaPixCountersxD[HxD][1]} {VgaPixCountersxD[HxD][2]} {VgaPixCountersxD[HxD][3]} {VgaPixCountersxD[HxD][4]} {VgaPixCountersxD[HxD][5]} {VgaPixCountersxD[HxD][6]} {VgaPixCountersxD[HxD][7]} {VgaPixCountersxD[HxD][8]} {VgaPixCountersxD[HxD][9]} {VgaPixCountersxD[HxD][10]} {VgaPixCountersxD[HxD][11]} {VgaPixCountersxD[HxD][12]} {VgaPixCountersxD[HxD][13]} {VgaPixCountersxD[HxD][14]} {VgaPixCountersxD[HxD][15]}]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe1]
set_property port_width 16 [get_debug_ports u_ila_1/probe1]
connect_debug_port u_ila_1/probe1 [get_nets [list {VgaPixCountersxD[VxD][0]} {VgaPixCountersxD[VxD][1]} {VgaPixCountersxD[VxD][2]} {VgaPixCountersxD[VxD][3]} {VgaPixCountersxD[VxD][4]} {VgaPixCountersxD[VxD][5]} {VgaPixCountersxD[VxD][6]} {VgaPixCountersxD[VxD][7]} {VgaPixCountersxD[VxD][8]} {VgaPixCountersxD[VxD][9]} {VgaPixCountersxD[VxD][10]} {VgaPixCountersxD[VxD][11]} {VgaPixCountersxD[VxD][12]} {VgaPixCountersxD[VxD][13]} {VgaPixCountersxD[VxD][14]} {VgaPixCountersxD[VxD][15]}]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets Clk125xC]
