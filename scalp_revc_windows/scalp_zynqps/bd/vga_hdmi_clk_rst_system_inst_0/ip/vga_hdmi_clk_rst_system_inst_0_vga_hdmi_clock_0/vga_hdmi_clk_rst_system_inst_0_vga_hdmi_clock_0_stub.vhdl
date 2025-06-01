-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Sat May 31 19:20:39 2025
-- Host        : Torchet running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/CochetVictorLPSC/scalp_revc_windows/scalp_zynqps/bd/vga_hdmi_clk_rst_system_inst_0/ip/vga_hdmi_clk_rst_system_inst_0_vga_hdmi_clock_0/vga_hdmi_clk_rst_system_inst_0_vga_hdmi_clock_0_stub.vhdl
-- Design      : vga_hdmi_clk_rst_system_inst_0_vga_hdmi_clock_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z015clg485-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity vga_hdmi_clk_rst_system_inst_0_vga_hdmi_clock_0 is
  Port ( 
    clk_vga : out STD_LOGIC;
    clk_hdmi : out STD_LOGIC;
    clk_500 : out STD_LOGIC;
    resetn : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of vga_hdmi_clk_rst_system_inst_0_vga_hdmi_clock_0 : entity is "vga_hdmi_clk_rst_system_inst_0_vga_hdmi_clock_0,clk_wiz_v6_0_15_0_0,{component_name=vga_hdmi_clk_rst_system_inst_0_vga_hdmi_clock_0,use_phase_alignment=true,use_min_o_jitter=false,use_max_i_jitter=false,use_dyn_phase_shift=false,use_inclk_switchover=false,use_dyn_reconfig=false,enable_axi=0,feedback_source=FDBK_AUTO,PRIMITIVE=MMCM,num_out_clk=3,clkin1_period=8.000,clkin2_period=10.000,use_power_down=false,use_reset=true,use_locked=true,use_inclk_stopped=false,feedback_type=SINGLE,CLOCK_MGR_TYPE=NA,manual_override=false}";
end vga_hdmi_clk_rst_system_inst_0_vga_hdmi_clock_0;

architecture stub of vga_hdmi_clk_rst_system_inst_0_vga_hdmi_clock_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "clk_vga,clk_hdmi,clk_500,resetn,locked,clk_in1";
begin
end;
