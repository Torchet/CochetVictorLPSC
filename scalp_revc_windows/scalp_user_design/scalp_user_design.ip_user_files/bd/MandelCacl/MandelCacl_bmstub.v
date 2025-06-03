// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module MandelCacl (
  src_clk_1,
  Dest_Clk,
  Dest_Out,
  Src_In
);

  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SRC_CLK_1 CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.SRC_CLK_1" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SRC_CLK_1, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN MandelCacl_src_clk_1, INSERT_VIP 0" *)
  input src_clk_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.DEST_CLK CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.DEST_CLK" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.DEST_CLK, FREQ_HZ 48000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN MandelCacl_Dest_Clk, INSERT_VIP 0" *)
  input Dest_Clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.DEST_OUT DATA" *)
  (* X_INTERFACE_MODE = "master DATA.DEST_OUT" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.DEST_OUT, LAYERED_METADATA undef" *)
  output [2:0]Dest_Out;
  (* X_INTERFACE_IGNORE = "true" *)
  input [2:0]Src_In;

  // stub module has no contents

endmodule
