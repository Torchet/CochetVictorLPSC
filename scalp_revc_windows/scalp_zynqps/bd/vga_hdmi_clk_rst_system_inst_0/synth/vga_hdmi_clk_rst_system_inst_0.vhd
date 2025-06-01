--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Sun Jun  1 16:01:40 2025
--Host        : Torchet running 64-bit major release  (build 9200)
--Command     : generate_target vga_hdmi_clk_rst_system_inst_0.bd
--Design      : vga_hdmi_clk_rst_system_inst_0
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity vga_hdmi_clk_rst_system_inst_0 is
  port (
    ClkHdmiRstxRNAO : out STD_LOGIC_VECTOR ( 0 to 0 );
    ClkHdmiRstxRO : out STD_LOGIC_VECTOR ( 0 to 0 );
    ClkHdmixCO : out STD_LOGIC;
    ClkVgaRstxRNAO : out STD_LOGIC_VECTOR ( 0 to 0 );
    ClkVgaRstxRO : out STD_LOGIC_VECTOR ( 0 to 0 );
    ClkVgaxCO : out STD_LOGIC;
    PsClockxCI : in STD_LOGIC;
    PsResetxRN : in STD_LOGIC;
    VgaHdmiClkPllLockedxSO : out STD_LOGIC
  );
  attribute core_generation_info : string;
  attribute core_generation_info of vga_hdmi_clk_rst_system_inst_0 : entity is "vga_hdmi_clk_rst_system_inst_0,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=vga_hdmi_clk_rst_system_inst_0,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=/home/jo/projects/scalp_revc_windows/scalp_user_design/scalp_user_design.srcs/sources_1/bd/vga_hdmi_clk_rst_system/vga_hdmi_clk_rst_system.bd,synth_mode=Hierarchical}";
  attribute hw_handoff : string;
  attribute hw_handoff of vga_hdmi_clk_rst_system_inst_0 : entity is "vga_hdmi_clk_rst_system_inst_0.hwdef";
end vga_hdmi_clk_rst_system_inst_0;

architecture STRUCTURE of vga_hdmi_clk_rst_system_inst_0 is
  component vga_hdmi_clk_rst_system_inst_0_vga_hdmi_clock_0 is
  port (
    resetn : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_vga : out STD_LOGIC;
    clk_hdmi : out STD_LOGIC;
    clk_500 : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component vga_hdmi_clk_rst_system_inst_0_vga_hdmi_clock_0;
  component vga_hdmi_clk_rst_system_inst_0_rst_ps7_1_vga_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component vga_hdmi_clk_rst_system_inst_0_rst_ps7_1_vga_0;
  component vga_hdmi_clk_rst_system_inst_0_rst_ps7_2_hdmi_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component vga_hdmi_clk_rst_system_inst_0_rst_ps7_2_hdmi_0;
  signal \^clkhdmixco\ : STD_LOGIC;
  signal \^clkvgaxco\ : STD_LOGIC;
  signal \^vgahdmiclkplllockedxso\ : STD_LOGIC;
  signal NLW_rst_ps7_1_vga_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_ps7_1_vga_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_ps7_1_vga_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_ps7_2_hdmi_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_ps7_2_hdmi_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_ps7_2_hdmi_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_vga_hdmi_clock_clk_500_UNCONNECTED : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of ClkHdmixCO : signal is "xilinx.com:signal:clock:1.0 CLK.CLKHDMIXCO CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of ClkHdmixCO : signal is "XIL_INTERFACENAME CLK.CLKHDMIXCO, ASSOCIATED_RESET ClkHdmiRstxRO:ClkHdmiRstxRNAO, CLK_DOMAIN /vga_hdmi_clk_rst_sys_0/vga_hdmi_clock_clk_out1, FREQ_HZ 241536458, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute x_interface_info of ClkVgaxCO : signal is "xilinx.com:signal:clock:1.0 CLK.CLKVGAXCO CLK";
  attribute x_interface_parameter of ClkVgaxCO : signal is "XIL_INTERFACENAME CLK.CLKVGAXCO, ASSOCIATED_RESET ClkVgaRstxRO:ClkVgaRstxRNAO, CLK_DOMAIN /vga_hdmi_clk_rst_sys_0/vga_hdmi_clock_clk_out1, FREQ_HZ 48007246, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute x_interface_info of PsClockxCI : signal is "xilinx.com:signal:clock:1.0 CLK.PSCLOCKXCI CLK";
  attribute x_interface_parameter of PsClockxCI : signal is "XIL_INTERFACENAME CLK.PSCLOCKXCI, ASSOCIATED_RESET PsResetxRN, CLK_DOMAIN scalp_zynqps_processing_system7_0_0_FCLK_CLK0, FREQ_HZ 1.25e+08, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute x_interface_info of PsResetxRN : signal is "xilinx.com:signal:reset:1.0 RST.PSRESETXRN RST";
  attribute x_interface_parameter of PsResetxRN : signal is "XIL_INTERFACENAME RST.PSRESETXRN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute x_interface_info of ClkHdmiRstxRNAO : signal is "xilinx.com:signal:reset:1.0 RST.CLKHDMIRSTXRNAO RST";
  attribute x_interface_parameter of ClkHdmiRstxRNAO : signal is "XIL_INTERFACENAME RST.CLKHDMIRSTXRNAO, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute x_interface_info of ClkHdmiRstxRO : signal is "xilinx.com:signal:reset:1.0 RST.CLKHDMIRSTXRO RST";
  attribute x_interface_parameter of ClkHdmiRstxRO : signal is "XIL_INTERFACENAME RST.CLKHDMIRSTXRO, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
  attribute x_interface_info of ClkVgaRstxRNAO : signal is "xilinx.com:signal:reset:1.0 RST.CLKVGARSTXRNAO RST";
  attribute x_interface_parameter of ClkVgaRstxRNAO : signal is "XIL_INTERFACENAME RST.CLKVGARSTXRNAO, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute x_interface_info of ClkVgaRstxRO : signal is "xilinx.com:signal:reset:1.0 RST.CLKVGARSTXRO RST";
  attribute x_interface_parameter of ClkVgaRstxRO : signal is "XIL_INTERFACENAME RST.CLKVGARSTXRO, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
begin
  ClkHdmixCO <= \^clkhdmixco\;
  ClkVgaxCO <= \^clkvgaxco\;
  VgaHdmiClkPllLockedxSO <= \^vgahdmiclkplllockedxso\;
rst_ps7_1_vga: component vga_hdmi_clk_rst_system_inst_0_rst_ps7_1_vga_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_ps7_1_vga_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => \^vgahdmiclkplllockedxso\,
      ext_reset_in => PsResetxRN,
      interconnect_aresetn(0) => NLW_rst_ps7_1_vga_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_ps7_1_vga_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => ClkVgaRstxRNAO(0),
      peripheral_reset(0) => ClkVgaRstxRO(0),
      slowest_sync_clk => \^clkvgaxco\
    );
rst_ps7_2_hdmi: component vga_hdmi_clk_rst_system_inst_0_rst_ps7_2_hdmi_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_ps7_2_hdmi_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => \^vgahdmiclkplllockedxso\,
      ext_reset_in => PsResetxRN,
      interconnect_aresetn(0) => NLW_rst_ps7_2_hdmi_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_ps7_2_hdmi_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => ClkHdmiRstxRNAO(0),
      peripheral_reset(0) => ClkHdmiRstxRO(0),
      slowest_sync_clk => \^clkhdmixco\
    );
vga_hdmi_clock: component vga_hdmi_clk_rst_system_inst_0_vga_hdmi_clock_0
     port map (
      clk_500 => NLW_vga_hdmi_clock_clk_500_UNCONNECTED,
      clk_hdmi => \^clkhdmixco\,
      clk_in1 => PsClockxCI,
      clk_vga => \^clkvgaxco\,
      locked => \^vgahdmiclkplllockedxso\,
      resetn => PsResetxRN
    );
end STRUCTURE;
