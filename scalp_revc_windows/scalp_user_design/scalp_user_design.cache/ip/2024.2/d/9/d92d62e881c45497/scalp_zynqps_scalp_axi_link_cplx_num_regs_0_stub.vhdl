-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Mon May 26 09:32:08 2025
-- Host        : Torchet running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ scalp_zynqps_scalp_axi_link_cplx_num_regs_0_stub.vhdl
-- Design      : scalp_zynqps_scalp_axi_link_cplx_num_regs_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z015clg485-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    SAxiSlvClkxCI : in STD_LOGIC;
    SAxiSlvRstxRANI : in STD_LOGIC;
    SAxiSlvARAddrxDI : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SAxiSlvARValidxSI : in STD_LOGIC;
    SAxiSlvARReadyxSO : out STD_LOGIC;
    SAxiSlvRDataxDO : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SAxiSlvRRespxDO : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SAxiSlvRValidxSO : out STD_LOGIC;
    SAxiSlvRReadyxSI : in STD_LOGIC;
    SAxiSlvAWAddrxDI : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SAxiSlvAWValidxSI : in STD_LOGIC;
    SAxiSlvAWReadyxSO : out STD_LOGIC;
    SAxiSlvWDataxDI : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SAxiSlvWStrbxDI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SAxiSlvWValidxSI : in STD_LOGIC;
    SAxiSlvWReadyxSO : out STD_LOGIC;
    SAxiSlvBRespxDO : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SAxiSlvBValidxSO : out STD_LOGIC;
    SAxiSlvBReadyxSI : in STD_LOGIC;
    SAxiMstClkxCO : out STD_LOGIC;
    SAxiMstRstxRANO : out STD_LOGIC;
    SAxiMstARAddrxDO : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SAxiMstARValidxSO : out STD_LOGIC;
    SAxiMstARReadyxSI : in STD_LOGIC;
    SAxiMstRDataxDI : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SAxiMstRRespxDI : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SAxiMstRValidxSI : in STD_LOGIC;
    SAxiMstRReadyxSO : out STD_LOGIC;
    SAxiMstAWAddrxDO : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SAxiMstAWValidxSO : out STD_LOGIC;
    SAxiMstAWReadyxSI : in STD_LOGIC;
    SAxiMstWDataxDO : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SAxiMstWStrbxDO : out STD_LOGIC_VECTOR ( 3 downto 0 );
    SAxiMstWValidxSO : out STD_LOGIC;
    SAxiMstWReadyxSI : in STD_LOGIC;
    SAxiMstBRespxDI : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SAxiMstBValidxSI : in STD_LOGIC;
    SAxiMstBReadyxSO : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "scalp_zynqps_scalp_axi_link_cplx_num_regs_0,scalp_axi_link,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "SAxiSlvClkxCI,SAxiSlvRstxRANI,SAxiSlvARAddrxDI[31:0],SAxiSlvARValidxSI,SAxiSlvARReadyxSO,SAxiSlvRDataxDO[31:0],SAxiSlvRRespxDO[1:0],SAxiSlvRValidxSO,SAxiSlvRReadyxSI,SAxiSlvAWAddrxDI[31:0],SAxiSlvAWValidxSI,SAxiSlvAWReadyxSO,SAxiSlvWDataxDI[31:0],SAxiSlvWStrbxDI[3:0],SAxiSlvWValidxSI,SAxiSlvWReadyxSO,SAxiSlvBRespxDO[1:0],SAxiSlvBValidxSO,SAxiSlvBReadyxSI,SAxiMstClkxCO,SAxiMstRstxRANO,SAxiMstARAddrxDO[31:0],SAxiMstARValidxSO,SAxiMstARReadyxSI,SAxiMstRDataxDI[31:0],SAxiMstRRespxDI[1:0],SAxiMstRValidxSI,SAxiMstRReadyxSO,SAxiMstAWAddrxDO[31:0],SAxiMstAWValidxSO,SAxiMstAWReadyxSI,SAxiMstWDataxDO[31:0],SAxiMstWStrbxDO[3:0],SAxiMstWValidxSO,SAxiMstWReadyxSI,SAxiMstBRespxDI[1:0],SAxiMstBValidxSI,SAxiMstBReadyxSO";
  attribute x_interface_info : string;
  attribute x_interface_info of SAxiSlvClkxCI : signal is "xilinx.com:signal:clock:1.0 aximm_slv_clk CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of SAxiSlvClkxCI : signal is "slave aximm_slv_clk";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of SAxiSlvClkxCI : signal is "XIL_INTERFACENAME aximm_slv_clk, ASSOCIATED_RESET SAxiSlvRstxRANI, ASSOCIATED_BUSIF aximm_slv_if, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /sys_clock_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of SAxiSlvRstxRANI : signal is "xilinx.com:signal:reset:1.0 aximm_slv_rst RST";
  attribute x_interface_mode of SAxiSlvRstxRANI : signal is "slave aximm_slv_rst";
  attribute x_interface_parameter of SAxiSlvRstxRANI : signal is "XIL_INTERFACENAME aximm_slv_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of SAxiSlvARAddrxDI : signal is "xilinx.com:interface:aximm:1.0 aximm_slv_if ARADDR";
  attribute x_interface_mode of SAxiSlvARAddrxDI : signal is "slave aximm_slv_if";
  attribute x_interface_parameter of SAxiSlvARAddrxDI : signal is "XIL_INTERFACENAME aximm_slv_if, DATA_WIDTH 32, PROTOCOL AXI4LITE, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /sys_clock_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of SAxiSlvARValidxSI : signal is "xilinx.com:interface:aximm:1.0 aximm_slv_if ARVALID";
  attribute x_interface_info of SAxiSlvARReadyxSO : signal is "xilinx.com:interface:aximm:1.0 aximm_slv_if ARREADY";
  attribute x_interface_info of SAxiSlvRDataxDO : signal is "xilinx.com:interface:aximm:1.0 aximm_slv_if RDATA";
  attribute x_interface_info of SAxiSlvRRespxDO : signal is "xilinx.com:interface:aximm:1.0 aximm_slv_if RRESP";
  attribute x_interface_info of SAxiSlvRValidxSO : signal is "xilinx.com:interface:aximm:1.0 aximm_slv_if RVALID";
  attribute x_interface_info of SAxiSlvRReadyxSI : signal is "xilinx.com:interface:aximm:1.0 aximm_slv_if RREADY";
  attribute x_interface_info of SAxiSlvAWAddrxDI : signal is "xilinx.com:interface:aximm:1.0 aximm_slv_if AWADDR";
  attribute x_interface_info of SAxiSlvAWValidxSI : signal is "xilinx.com:interface:aximm:1.0 aximm_slv_if AWVALID";
  attribute x_interface_info of SAxiSlvAWReadyxSO : signal is "xilinx.com:interface:aximm:1.0 aximm_slv_if AWREADY";
  attribute x_interface_info of SAxiSlvWDataxDI : signal is "xilinx.com:interface:aximm:1.0 aximm_slv_if WDATA";
  attribute x_interface_info of SAxiSlvWStrbxDI : signal is "xilinx.com:interface:aximm:1.0 aximm_slv_if WSTRB";
  attribute x_interface_info of SAxiSlvWValidxSI : signal is "xilinx.com:interface:aximm:1.0 aximm_slv_if WVALID";
  attribute x_interface_info of SAxiSlvWReadyxSO : signal is "xilinx.com:interface:aximm:1.0 aximm_slv_if WREADY";
  attribute x_interface_info of SAxiSlvBRespxDO : signal is "xilinx.com:interface:aximm:1.0 aximm_slv_if BRESP";
  attribute x_interface_info of SAxiSlvBValidxSO : signal is "xilinx.com:interface:aximm:1.0 aximm_slv_if BVALID";
  attribute x_interface_info of SAxiSlvBReadyxSI : signal is "xilinx.com:interface:aximm:1.0 aximm_slv_if BREADY";
  attribute x_interface_info of SAxiMstClkxCO : signal is "xilinx.com:signal:clock:1.0 aximm_mst_clk CLK";
  attribute x_interface_mode of SAxiMstClkxCO : signal is "master aximm_mst_clk";
  attribute x_interface_parameter of SAxiMstClkxCO : signal is "XIL_INTERFACENAME aximm_mst_clk, ASSOCIATED_RESET SAxiMstRstxRANO, ASSOCIATED_BUSIF aximm_mst_if, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN scalp_zynqps_scalp_axi_link_cplx_num_regs_0_SAxiMstClkxCO, INSERT_VIP 0";
  attribute x_interface_info of SAxiMstRstxRANO : signal is "xilinx.com:signal:reset:1.0 aximm_master_reset RST";
  attribute x_interface_mode of SAxiMstRstxRANO : signal is "master aximm_master_reset";
  attribute x_interface_parameter of SAxiMstRstxRANO : signal is "XIL_INTERFACENAME aximm_master_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of SAxiMstARAddrxDO : signal is "xilinx.com:interface:aximm:1.0 aximm_mst_if ARADDR";
  attribute x_interface_mode of SAxiMstARAddrxDO : signal is "master aximm_mst_if";
  attribute x_interface_parameter of SAxiMstARAddrxDO : signal is "XIL_INTERFACENAME aximm_mst_if, DATA_WIDTH 32, PROTOCOL AXI4LITE, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN scalp_zynqps_scalp_axi_link_cplx_num_regs_0_SAxiMstClkxCO, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of SAxiMstARValidxSO : signal is "xilinx.com:interface:aximm:1.0 aximm_mst_if ARVALID";
  attribute x_interface_info of SAxiMstARReadyxSI : signal is "xilinx.com:interface:aximm:1.0 aximm_mst_if ARREADY";
  attribute x_interface_info of SAxiMstRDataxDI : signal is "xilinx.com:interface:aximm:1.0 aximm_mst_if RDATA";
  attribute x_interface_info of SAxiMstRRespxDI : signal is "xilinx.com:interface:aximm:1.0 aximm_mst_if RRESP";
  attribute x_interface_info of SAxiMstRValidxSI : signal is "xilinx.com:interface:aximm:1.0 aximm_mst_if RVALID";
  attribute x_interface_info of SAxiMstRReadyxSO : signal is "xilinx.com:interface:aximm:1.0 aximm_mst_if RREADY";
  attribute x_interface_info of SAxiMstAWAddrxDO : signal is "xilinx.com:interface:aximm:1.0 aximm_mst_if AWADDR";
  attribute x_interface_info of SAxiMstAWValidxSO : signal is "xilinx.com:interface:aximm:1.0 aximm_mst_if AWVALID";
  attribute x_interface_info of SAxiMstAWReadyxSI : signal is "xilinx.com:interface:aximm:1.0 aximm_mst_if AWREADY";
  attribute x_interface_info of SAxiMstWDataxDO : signal is "xilinx.com:interface:aximm:1.0 aximm_mst_if WDATA";
  attribute x_interface_info of SAxiMstWStrbxDO : signal is "xilinx.com:interface:aximm:1.0 aximm_mst_if WSTRB";
  attribute x_interface_info of SAxiMstWValidxSO : signal is "xilinx.com:interface:aximm:1.0 aximm_mst_if WVALID";
  attribute x_interface_info of SAxiMstWReadyxSI : signal is "xilinx.com:interface:aximm:1.0 aximm_mst_if WREADY";
  attribute x_interface_info of SAxiMstBRespxDI : signal is "xilinx.com:interface:aximm:1.0 aximm_mst_if BRESP";
  attribute x_interface_info of SAxiMstBValidxSI : signal is "xilinx.com:interface:aximm:1.0 aximm_mst_if BVALID";
  attribute x_interface_info of SAxiMstBReadyxSO : signal is "xilinx.com:interface:aximm:1.0 aximm_mst_if BREADY";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "scalp_axi_link,Vivado 2024.2";
begin
end;
