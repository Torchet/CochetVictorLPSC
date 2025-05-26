// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Wed Mar 27 07:15:26 2024
// Host        : xps15-deb running 64-bit Debian GNU/Linux 12 (bookworm)
// Command     : write_verilog -force -mode synth_stub
//               /home/jo/projects/scalp_revc_windows/scalp_zynqps/ip/scalp_zynqps_sys_clock_0/scalp_zynqps_sys_clock_0_stub.v
// Design      : scalp_zynqps_sys_clock_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z015clg485-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module scalp_zynqps_sys_clock_0(clk_125, resetn, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="resetn,locked,clk_in1" */
/* synthesis syn_force_seq_prim="clk_125" */;
  output clk_125 /* synthesis syn_isclock = 1 */;
  input resetn;
  output locked;
  input clk_in1;
endmodule
