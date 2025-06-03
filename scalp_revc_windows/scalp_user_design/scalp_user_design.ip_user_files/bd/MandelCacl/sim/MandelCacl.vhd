--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Mon Jun  2 21:21:00 2025
--Host        : Torchet running 64-bit major release  (build 9200)
--Command     : generate_target MandelCacl.bd
--Design      : MandelCacl
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MandelCacl is
  port (
    Dest_Clk : in STD_LOGIC;
    Dest_Out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Src_In : in STD_LOGIC_VECTOR ( 2 downto 0 );
    src_clk_1 : in STD_LOGIC
  );
  attribute core_generation_info : string;
  attribute core_generation_info of MandelCacl : entity is "MandelCacl,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=MandelCacl,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=None}";
  attribute hw_handoff : string;
  attribute hw_handoff of MandelCacl : entity is "MandelCacl.hwdef";
end MandelCacl;

architecture STRUCTURE of MandelCacl is
  component MandelCacl_xpm_cdc_gen_0_1 is
  port (
    src_clk : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    src_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    dest_out : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component MandelCacl_xpm_cdc_gen_0_1;
  attribute x_interface_info : string;
  attribute x_interface_info of Dest_Clk : signal is "xilinx.com:signal:clock:1.0 CLK.DEST_CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of Dest_Clk : signal is "XIL_INTERFACENAME CLK.DEST_CLK, CLK_DOMAIN MandelCacl_Dest_Clk, FREQ_HZ 48000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute x_interface_info of src_clk_1 : signal is "xilinx.com:signal:clock:1.0 CLK.SRC_CLK_1 CLK";
  attribute x_interface_parameter of src_clk_1 : signal is "XIL_INTERFACENAME CLK.SRC_CLK_1, CLK_DOMAIN MandelCacl_src_clk_1, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute x_interface_info of Dest_Out : signal is "xilinx.com:signal:data:1.0 DATA.DEST_OUT DATA";
  attribute x_interface_parameter of Dest_Out : signal is "XIL_INTERFACENAME DATA.DEST_OUT, LAYERED_METADATA undef";
begin
xpm_cdc_gen_0: component MandelCacl_xpm_cdc_gen_0_1
     port map (
      dest_clk => Dest_Clk,
      dest_out(2 downto 0) => Dest_Out(2 downto 0),
      src_clk => src_clk_1,
      src_in(2 downto 0) => Src_In(2 downto 0)
    );
end STRUCTURE;
