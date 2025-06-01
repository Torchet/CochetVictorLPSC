// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sun Jun  1 18:00:39 2025
// Host        : Torchet running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/CochetVictorLPSC/scalp_revc_windows/scalp_user_design/scalp_user_design.gen/sources_1/bd/MandelCacl/ip/MandelCacl_xpm_cdc_gen_0_1/MandelCacl_xpm_cdc_gen_0_1_stub.v
// Design      : MandelCacl_xpm_cdc_gen_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z015clg485-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "MandelCacl_xpm_cdc_gen_0_1,xpm_cdc_gen_v1_0_4,{}" *) (* CORE_GENERATION_INFO = "MandelCacl_xpm_cdc_gen_0_1,xpm_cdc_gen_v1_0_4,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=xpm_cdc_gen,x_ipVersion=1.0,x_ipCoreRevision=4,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,C_CDC_TYPE=6,SRC_CLK_PERIOD=5000,DEST_CLK_PERIOD=2500,SIM_ASSERT_CHK=1,DEST_SYNC_FF=4,INIT_SYNC_FF=0,SRC_INPUT_REG=1,WIDTH=1,REG_OUTPUT=0,SIM_LOSSLESS_GRAY_CHK=0,SRC_SYNC_FF=4,DEST_EXT_HSK=1,RST_USED=1,INIT=1,RST_ACTIVE_HIGH=0}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* X_CORE_INFO = "xpm_cdc_gen_v1_0_4,Vivado 2024.2" *) 
module MandelCacl_xpm_cdc_gen_0_1(src_clk, dest_clk, src_in, dest_out)
/* synthesis syn_black_box black_box_pad_pin="src_in[0:0],dest_out[0:0]" */
/* synthesis syn_force_seq_prim="src_clk" */
/* synthesis syn_force_seq_prim="dest_clk" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 src_signal_clock CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME src_signal_clock, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN MandelCacl_src_clk_1, INSERT_VIP 0" *) input src_clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 dest_signal_clock CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dest_signal_clock, FREQ_HZ 48000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN MandelCacl_Dest_Clk, INSERT_VIP 0" *) input dest_clk /* synthesis syn_isclock = 1 */;
  input [0:0]src_in;
  output [0:0]dest_out;
endmodule
