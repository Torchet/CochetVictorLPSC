--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Sun Jun  1 17:59:55 2025
--Host        : Torchet running 64-bit major release  (build 9200)
--Command     : generate_target MandelCacl_wrapper.bd
--Design      : MandelCacl_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MandelCacl_wrapper is
  port (
    Dest_Clk : in STD_LOGIC;
    Dest_Out : out STD_LOGIC_VECTOR ( 0 to 0 );
    Src_In : in STD_LOGIC;
    src_clk_1 : in STD_LOGIC
  );
end MandelCacl_wrapper;

architecture STRUCTURE of MandelCacl_wrapper is
  component MandelCacl is
  port (
    src_clk_1 : in STD_LOGIC;
    Dest_Clk : in STD_LOGIC;
    Src_In : in STD_LOGIC;
    Dest_Out : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component MandelCacl;
begin
MandelCacl_i: component MandelCacl
     port map (
      Dest_Clk => Dest_Clk,
      Dest_Out(0) => Dest_Out(0),
      Src_In => Src_In,
      src_clk_1 => src_clk_1
    );
end STRUCTURE;
