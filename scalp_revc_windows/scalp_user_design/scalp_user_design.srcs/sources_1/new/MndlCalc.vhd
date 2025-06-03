----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.05.2025 15:03:34
-- Design Name: 
-- Module Name: MndlCalc - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
library unisim;
use unisim.vcomponents.all;

library unimacro;
use unimacro.vcomponents.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MndlCalc is
    Generic ( 
        comma : integer := 12; -- nombre de bits après la virgule
        max_iter : integer := 100;
        SIZE : integer := 16;
        IT_SIZE : integer := 24;
        LAT : integer := 0
        );
    Port(
        ClkxI       : in std_logic;
        RstxI       : in std_logic;
        RdyxO       : out std_logic;
        StartxI     : in std_logic;
        FinishedxO  : out std_logic;
        IterxO      : out std_logic_vector (IT_SIZE-1 downto 0)
    );
end MndlCalc;

architecture Behavioral of MndlCalc is

   signal StartxS : std_logic:= '1';
   -- Initial position signal
   signal CaPixxD : std_logic_vector(SIZE-1 downto 0):=x"00FA"; 
   signal CbPixxD : std_logic_vector(SIZE-1 downto 0):=x"00FA";

   -- Initial position signal
   signal CaPixOffsetxD : std_logic_vector(SIZE-1 downto 0):=x"00FA";
   signal CbPixOffsetxD : std_logic_vector(SIZE-1 downto 0):=x"00FA";

   signal PixOffset : std_logic_vector(SIZE-1 downto 0):=x"00FA";

   -- Initial position signal
   signal CaConvxD : std_logic_vector(SIZE-1 downto 0):=x"0001";
   signal CbConvxD : std_logic_vector(SIZE-1 downto 0):=x"0001";

   signal Im_range : std_logic_vector(SIZE-1 downto 0):=x"0038"; 
   signal Im_Offset : std_logic_vector(SIZE-1 downto 0):=x"1800";

   signal Re_range : std_logic_vector(SIZE-1 downto 0):=x"002F";  
   signal Re_Offset : std_logic_vector(SIZE-1 downto 0):=x"1800"; 

   -- Initial position signal
   signal CaxD : std_logic_vector(SIZE-1 downto 0):=(others => '0');
   signal CbxD : std_logic_vector(SIZE-1 downto 0):=(others => '0');
   
   -- Zn+1 value signal
   signal ZaxD : std_logic_vector(SIZE-1 downto 0):=(others => '0');
   signal ZbxD : std_logic_vector(SIZE-1 downto 0):=(others => '0');

   -- Zn+1 value buffer signal
   signal ZaBufxD : std_logic_vector(2*SIZE-1 downto 0):=(others => '0');
   signal ZbBufxD : std_logic_vector(2*SIZE-1 downto 0):=(others => '0');
   
   -- Signal input and output of A2mB2_Mult dsp
   signal A2mb2InAxD : std_logic_vector(SIZE-1 downto 0):=(others => '0');
   signal A2mb2InBxD : std_logic_vector(SIZE-1 downto 0):=(others => '0');
   signal A2mb2OutPxD : std_logic_vector(2*SIZE-1 downto 0):=(others => '0');
   
   -- Signal input and output of AB_Mult dsp
   signal AbInAxD : std_logic_vector(SIZE-1 downto 0):=(others => '0');
   signal AbInBxD : std_logic_vector(SIZE-1 downto 0):=(others => '0');
   signal AbOutPxD : std_logic_vector(2*SIZE-1 downto 0):=(others => '0');
   
   -- Signal input and output of ZREN1 dsp
   signal ZreInAxD : std_logic_vector(SIZE-1 downto 0):=(others => '0');
   signal ZreInBxD : std_logic_vector(SIZE-1 downto 0):=(others => '0');
   signal ZreOutPxD : std_logic_vector(2*SIZE-1 downto 0):=(others => '0');

   -- Signal input and output of ZREN1 dsp
   signal ZreN1InAxD : std_logic_vector(SIZE-1 downto 0):=(others => '0');
   signal ZreN1InBxD : std_logic_vector(SIZE-1 downto 0):=(others => '0');
   signal ZreN1OutPxD : std_logic_vector(SIZE-1 downto 0):=(others => '0');
   signal ZreN1OVFPxD : std_logic := '0';

   -- Signal input and output of ZIMN1 dsp
   signal ZimInAxD : std_logic_vector(SIZE-1 downto 0):=(others => '0');
   signal ZimInBxD : std_logic_vector(SIZE-1 downto 0):=(others => '0');
   signal ZimOutPxD : std_logic_vector(2*SIZE-1 downto 0):=(others => '0');

   -- Signal input and output of ZREN1 dsp
   signal ZimN1InAxD : std_logic_vector(SIZE-1 downto 0):=(others => '0');
   signal ZimN1InBxD : std_logic_vector(SIZE-1 downto 0):=(others => '0');
   signal ZimN1OutPxD : std_logic_vector(SIZE-1 downto 0):=(others => '0');
   signal ZimN1OVFPxD : std_logic := '0';

   -- Signal output of Zre2 dsp
   signal ZRe2OutPxD : std_logic_vector(2*SIZE-1 downto 0):=(others => '0');
   -- Signal output of Zim2 dsp
   signal ZIm2OutPxD : std_logic_vector(2*SIZE-1 downto 0):=(others => '0');
   
   signal Znorm2OutPxD : std_logic_vector(SIZE-1 downto 0):=(others => '0');
   signal Znorm2OVFPxD : std_logic := '0';
   signal PixOffsetXOVFPxD : std_logic := '0';
   signal PixOffsetYOVFPxD : std_logic := '0';

   signal IterxD       : std_logic_vector(SIZE/2-1 downto 0):=(others => '0');
   signal IterBramOutxD       : std_logic_vector(IT_SIZE-1 downto 0):=(others => '0');

   signal IterOutxD       : std_logic_vector(27 downto 0):=(others => '0');
   signal IterRatioxD       : std_logic_vector(19 downto 0):=x"28F5C";--x"28F5C";
   signal IterMan    : std_logic_vector(SIZE/2-1 downto 0):=x"01";
   signal FinishedxS        : std_logic:='0';
   signal TerxD        : std_logic:='0';
   signal TerCaPixxD        : std_logic:='0';
   signal CntCaPixRstxD     : std_logic:='0';
   signal CntCaPixCexD      : std_logic := '1';

   signal TerCbPixxD        : std_logic:='0';
   signal CntCbPixRstxD     : std_logic:='0';
   signal CntCbPixCexD      : std_logic := '1';

   signal CntRstxD     : std_logic:='0';
   signal CntCexD      : std_logic := '1';

   signal SumOVFxS      : std_logic_vector(3 downto 0):=(others => '0');

   -- Mandelbrot calculator clock
   signal MndlClk625xC                : std_logic         := '0';
   -- Mandelbrot calculator pll locked
   signal MndlClk625PllLockedxS       : std_logic         := '0';
   -- Mandelbrot calculator pll locked
   signal MndlClk625FdbkxS       : std_logic         := '0';
   signal MndlPllRstxS             : std_logic     := '0';
   signal MndlPllPwrDwn            : std_logic := '0';
   signal VGAPxClkxS       : std_logic         := '0';
   signal BramAddrxD       :  std_logic_vector(8 downto 0):=(others => '0');
   signal BramWAddrxD       :  std_logic_vector(8 downto 0):=(others => '0');
   signal BramRAddrxD       :  std_logic_vector(8 downto 0):=(others => '0');
   signal BramWexD       : std_logic_vector(3 downto 0):=(others => '1');

   signal BramInxD       : std_logic_vector(31 downto 0):= x"00000001";
   signal BramOutxD       : std_logic_vector(31 downto 0):=(others => '0');
   signal   FifoWrErrxD  : std_logic:='0';
   signal   FifoRdErrxD  : std_logic:='0';
   signal   FifoFullxD   : std_logic:='0';
   signal   FifoWrEnxD   : std_logic:='0';
   signal   FifoRdEnxD   : std_logic:='0';

   signal   FifoAlmEptyxD   : std_logic:='0';
   signal   FifoAlmFullxD   : std_logic:='0';
   signal   FifoEptyxD   : std_logic:='0';
   signal FifoWrtCntxD       :  std_logic_vector(8 downto 0):=(others => '0');
   signal FifoRdtCntxD       :  std_logic_vector(8 downto 0):=(others => '0');
   signal FifoRstxD : std_logic:='1';

   TYPE MndelState IS (STARTUP,WAIT_RSLT,WAIT_MMRY,NEW_DATA,WRITE_FIFO,DONE_WRITE);
   signal state: MndelState := STARTUP;
   signal next_state: MndelState;

begin
     
      A2mb2InAxD <= std_logic_vector(signed(ZaxD) + signed(ZbxD));
      A2mb2InBxD <= std_logic_vector(signed(ZaxD) - signed(ZbxD));
      -- Term a^2-b^2 dsp48 using mathematical identity (a-b)(a+b)
      A2mB2_Mult : MULT_MACRO
      generic map (
         DEVICE => "7SERIES",    -- Target Device: "VIRTEX5", "7SERIES", "SPARTAN6"
         LATENCY => LAT,           -- Desired clock cycle latency, 0-4
         WIDTH_A => SIZE,          -- Multiplier A-input bus width, 1-25
         WIDTH_B => SIZE)          -- Multiplier B-input bus width, 1-18
      port map (
         P => A2mb2OutPxD,     -- Multiplier ouput bus, width determined by WIDTH_P generic
         A => A2mb2InAxD,     -- Multiplier input A bus, width determined by WIDTH_A generic
         B => A2mb2InBxD,     -- Multiplier input B bus, width determined by WIDTH_B generic
         CE => '1',   -- 1-bit active high input clock enable
         CLK => ClkxI, -- 1-bit positive edge clock input
         RST => RstxI  -- 1-bit input active high reset
      );

      AbInAxD <= ZaxD;
      AbInBxD <= ZbxD;
      -- Term ab dsp48 with bitshift necessary to multiply by 2
      AB_Mult : MULT_MACRO
      generic map (
         DEVICE => "7SERIES",    -- Target Device: "VIRTEX5", "7SERIES", "SPARTAN6"
         LATENCY => LAT,           -- Desired clock cycle latency, 0-4
         WIDTH_A => SIZE,          -- Multiplier A-input bus width, 1-25
         WIDTH_B => SIZE)          -- Multiplier B-input bus width, 1-18
      port map (
         P => AbOutPxD,     -- Multiplier ouput bus, width determined by WIDTH_P generic
         A => AbInAxD,     -- Multiplier input A bus, width determined by WIDTH_A generic
         B => AbInBxD,     -- Multiplier input B bus, width determined by WIDTH_B generic
         CE => '1',   -- 1-bit active high input clock enable
         CLK => ClkxI, -- 1-bit positive edge clock input
         RST => RstxI  -- 1-bit input active high reset
      );

      ZreInAxD <=  std_logic_vector(signed(A2mb2OutPxD((2*comma+(SIZE-1-comma)) downto (2*comma-comma))) + signed(AbOutPxD((2*comma+(SIZE-1-comma)) downto (2*comma-comma)) sll 1));
      ZreInBxD <=  std_logic_vector(signed(A2mb2OutPxD((2*comma+(SIZE-1-comma)) downto (2*comma-comma))) - signed(AbOutPxD((2*comma+(SIZE-1-comma)) downto (2*comma-comma)) sll 1));
      ZRE : MULT_MACRO
      generic map (
         DEVICE => "7SERIES",    -- Target Device: "VIRTEX5", "7SERIES", "SPARTAN6"
         LATENCY => LAT,           -- Desired clock cycle latency, 0-4
         WIDTH_A => SIZE,          -- Multiplier A-input bus width, 1-25
         WIDTH_B => SIZE)          -- Multiplier B-input bus width, 1-18
      port map (
         P => ZreOutPxD,     -- Multiplier ouput bus, width determined by WIDTH_P generic
         A => ZreInAxD,     -- Multiplier input A bus, width determined by WIDTH_A generic
         B => ZreInBxD,     -- Multiplier input B bus, width determined by WIDTH_B generic
         CE => '1',   -- 1-bit active high input clock enable
         CLK => ClkxI, -- 1-bit positive edge clock input
         RST => RstxI  -- 1-bit input active high reset
      );

      ZimInAxD <= AbOutPxD((2*comma+(SIZE-1-comma)) downto (2*comma-comma)) sll 1;
      ZimInBxD <= A2mb2OutPxD((2*comma+(SIZE-1-comma)) downto (2*comma-comma)) sll 1;
      ZIM : MULT_MACRO
      generic map (
         DEVICE => "7SERIES",    -- Target Device: "VIRTEX5", "7SERIES", "SPARTAN6"
         LATENCY => LAT,           -- Desired clock cycle latency, 0-4
         WIDTH_A => SIZE,          -- Multiplier A-input bus width, 1-25
         WIDTH_B => SIZE)          -- Multiplier B-input bus width, 1-18
      port map (
         P => ZimOutPxD,     -- Multiplier ouput bus, width determined by WIDTH_P generic
         A => ZimInAxD,     -- Multiplier input A bus, width determined by WIDTH_A generic
         B => ZimInBxD,     -- Multiplier input B bus, width determined by WIDTH_B generic
         CE => '1',   -- 1-bit active high input clock enable
         CLK => ClkxI, -- 1-bit positive edge clock input
         RST => RstxI  -- 1-bit input active high reset
      );

      ZRE_N1 : ADDSUB_MACRO
      generic map (
         DEVICE => "7SERIES", -- Target Device: "VIRTEX5", "7SERIES", "SPARTAN6"
         LATENCY => LAT,        -- Desired clock cycle latency, 0-2
         WIDTH => SIZE)         -- Input / Output bus width, 1-48
      port map (
         CARRYOUT => ZreN1OVFPxD, -- 1-bit carry-out output signal
         RESULT => ZreN1OutPxD,     -- Add/sub result output, width defined by WIDTH generic
         A => ZreOutPxD((2*comma+(SIZE-1-comma)) downto (2*comma-comma)),               -- Input A bus, width defined by WIDTH generic
         ADD_SUB => '1',   -- 1-bit add/sub input, high selects add, low selects subtract
         B => CaxD,               -- Input B bus, width defined by WIDTH generic
         CARRYIN => '0',   -- 1-bit carry-in input
         CE => '1',             -- 1-bit clock enable input
         CLK =>ClkxI,           -- 1-bit clock input
         RST => RstxI            -- 1-bit active high synchronous reset
      );

      ZIM_N1 : ADDSUB_MACRO
      generic map (
         DEVICE => "7SERIES", -- Target Device: "VIRTEX5", "7SERIES", "SPARTAN6"
         LATENCY => LAT,        -- Desired clock cycle latency, 0-2
         WIDTH => SIZE)         -- Input / Output bus width, 1-48
      port map (
         CARRYOUT => ZimN1OVFPxD, -- 1-bit carry-out output signal
         RESULT => ZimN1OutPxD,     -- Add/sub result output, width defined by WIDTH generic
         A => ZimOutPxD((2*comma+(SIZE-1-comma)) downto (2*comma-comma)),               -- Input A bus, width defined by WIDTH generic
         ADD_SUB => '1',   -- 1-bit add/sub input, high selects add, low selects subtract
         B => CbxD,               -- Input B bus, width defined by WIDTH generic
         CARRYIN => '0',   -- 1-bit carry-in input
         CE => '1',             -- 1-bit clock enable input
         CLK =>ClkxI,           -- 1-bit clock input
         RST => RstxI            -- 1-bit active high synchronous reset
      );

      ZRE2 : MULT_MACRO
      generic map (
         DEVICE => "7SERIES",    -- Target Device: "VIRTEX5", "7SERIES", "SPARTAN6"
         LATENCY => LAT,           -- Desired clock cycle latency, 0-4
         WIDTH_A => SIZE,          -- Multiplier A-input bus width, 1-25
         WIDTH_B => SIZE)          -- Multiplier B-input bus width, 1-18
      port map (
         P => ZRe2OutPxD,     -- Multiplier ouput bus, width determined by WIDTH_P generic
         A => ZreN1OutPxD,     -- Multiplier input A bus, width determined by WIDTH_A generic
         B => ZreN1OutPxD,     -- Multiplier input B bus, width determined by WIDTH_B generic
         CE => '1',   -- 1-bit active high input clock enable
         CLK => ClkxI, -- 1-bit positive edge clock input
         RST => RstxI  -- 1-bit input active high reset
      );

      ZIM2 : MULT_MACRO
      generic map (
         DEVICE => "7SERIES",    -- Target Device: "VIRTEX5", "7SERIES", "SPARTAN6"
         LATENCY => LAT,           -- Desired clock cycle latency, 0-4
         WIDTH_A => SIZE,          -- Multiplier A-input bus width, 1-25
         WIDTH_B => SIZE)          -- Multiplier B-input bus width, 1-18
      port map (
         P => ZIm2OutPxD,     -- Multiplier ouput bus, width determined by WIDTH_P generic
         A => ZimN1OutPxD,     -- Multiplier input A bus, width determined by WIDTH_A generic
         B => ZimN1OutPxD,     -- Multiplier input B bus, width determined by WIDTH_B generic
         CE => '1',   -- 1-bit active high input clock enable
         CLK => ClkxI, -- 1-bit positive edge clock input
         RST => RstxI  -- 1-bit input active high reset
      );

      ZNORM2 : ADDSUB_MACRO
      generic map (
         DEVICE => "7SERIES", -- Target Device: "VIRTEX5", "7SERIES", "SPARTAN6"
         LATENCY => LAT,        -- Desired clock cycle latency, 0-2
         WIDTH => SIZE)         -- Input / Output bus width, 1-48
      port map (
         CARRYOUT => Znorm2OVFPxD, -- 1-bit carry-out output signal
         RESULT => Znorm2OutPxD,     -- Add/sub result output, width defined by WIDTH generic
         A => ZIm2OutPxD((2*comma+(SIZE-1-comma)) downto (2*comma-comma)),               -- Input A bus, width defined by WIDTH generic
         ADD_SUB => '1',   -- 1-bit add/sub input, high selects add, low selects subtract
         B => ZRe2OutPxD((2*comma+(SIZE-1-comma)) downto (2*comma-comma)),               -- Input B bus, width defined by WIDTH generic
         CARRYIN => '0',   -- 1-bit carry-in input
         CE => '1',             -- 1-bit clock enable input
         CLK =>ClkxI,           -- 1-bit clock input
         RST => RstxI            -- 1-bit active high synchronous reset
      );

      IterOut_Mult : MULT_MACRO
      generic map (
         DEVICE => "7SERIES",    -- Target Device: "VIRTEX5", "7SERIES", "SPARTAN6"
         LATENCY => LAT,           -- Desired clock cycle latency, 0-4
         WIDTH_A => 20,          -- Multiplier A-input bus width, 1-25
         WIDTH_B => 8)          -- Multiplier B-input bus width, 1-18
      port map (
         P => IterOutxD,     -- Multiplier ouput bus, width determined by WIDTH_P generic
         A => IterRatioxD,     -- Multiplier input A bus, width determined by WIDTH_A generic
         B => IterMan,     -- Multiplier input B bus, width determined by WIDTH_B generic
         CE => '1',   -- 1-bit active high input clock enable
         CLK => ClkxI, -- 1-bit positive edge clock input
         RST => RstxI  -- 1-bit input active high reset
      );

      CaPixOffsetxD <= std_logic_vector(unsigned(CaPixxD)-unsigned(PixOffset));
      Pix_X_Mult : MULT_MACRO
      generic map (
         DEVICE => "7SERIES",    -- Target Device: "VIRTEX5", "7SERIES", "SPARTAN6"
         LATENCY => LAT,           -- Desired clock cycle latency, 0-4
         WIDTH_A => SIZE,          -- Multiplier A-input bus width, 1-25
         WIDTH_B => SIZE)          -- Multiplier B-input bus width, 1-18
      port map (
         P => ZaBufxD,     -- Multiplier ouput bus, width determined by WIDTH_P generic
         A => CaPixOffsetxD,     -- Multiplier input A bus, width determined by WIDTH_A generic
         B => Re_range,     -- Multiplier input B bus, width determined by WIDTH_B generic
         CE => '1',   -- 1-bit active high input clock enable
         CLK => ClkxI, -- 1-bit positive edge clock input
         RST => RstxI  -- 1-bit input active high reset
      );

      Pix_X_Offset : ADDSUB_MACRO
      generic map (
         DEVICE => "7SERIES", -- Target Device: "VIRTEX5", "7SERIES", "SPARTAN6"
         LATENCY => LAT,        -- Desired clock cycle latency, 0-2
         WIDTH => SIZE)         -- Input / Output bus width, 1-48
      port map (
         CARRYOUT => PixOffsetXOVFPxD, -- 1-bit carry-out output signal
         RESULT => CaConvxD,     -- Add/sub result output, width defined by WIDTH generic
         A => ZaBufxD(SIZE-1 downto 0),               -- Input A bus, width defined by WIDTH generic
         ADD_SUB => '0',   -- 1-bit add/sub input, high selects add, low selects subtract
         B => Re_Offset,               -- Input B bus, width defined by WIDTH generic
         CARRYIN => '0',   -- 1-bit carry-in input
         CE => '1',             -- 1-bit clock enable input
         CLK =>ClkxI,           -- 1-bit clock input
         RST => RstxI            -- 1-bit active high synchronous reset
      );

      CbPixOffsetxD <= std_logic_vector(unsigned(CbPixxD)-unsigned(PixOffset));
      Pix_Y_Mult : MULT_MACRO
      generic map (
         DEVICE => "7SERIES",    -- Target Device: "VIRTEX5", "7SERIES", "SPARTAN6"
         LATENCY => LAT,           -- Desired clock cycle latency, 0-4
         WIDTH_A => SIZE,          -- Multiplier A-input bus width, 1-25
         WIDTH_B => SIZE)          -- Multiplier B-input bus width, 1-18
      port map (
         P => ZbBufxD,     -- Multiplier ouput bus, width determined by WIDTH_P generic
         A => CbPixOffsetxD,     -- Multiplier input A bus, width determined by WIDTH_A generic
         B => Im_range,     -- Multiplier input B bus, width determined by WIDTH_B generic
         CE => '1',   -- 1-bit active high input clock enable
         CLK => ClkxI, -- 1-bit positive edge clock input
         RST => RstxI  -- 1-bit input active high reset
      );

      Pix_Y_Offset : ADDSUB_MACRO
      generic map (
         DEVICE => "7SERIES", -- Target Device: "VIRTEX5", "7SERIES", "SPARTAN6"
         LATENCY => LAT,        -- Desired clock cycle latency, 0-2
         WIDTH => SIZE)         -- Input / Output bus width, 1-48
      port map (
         CARRYOUT => PixOffsetYOVFPxD, -- 1-bit carry-out output signal
         RESULT => CbConvxD,     -- Add/sub result output, width defined by WIDTH generic
         A => ZbBufxD(SIZE-1 downto 0),               -- Input A bus, width defined by WIDTH generic
         ADD_SUB => '0',   -- 1-bit add/sub input, high selects add, low selects subtract
         B => Im_Offset,               -- Input B bus, width defined by WIDTH generic
         CARRYIN => '0',   -- 1-bit carry-in input
         CE => '1',             -- 1-bit clock enable input
         CLK =>ClkxI,           -- 1-bit clock input
         RST => RstxI            -- 1-bit active high synchronous reset
      );



      StartxS  <= StartxI ;
      MdndelSM : process(ClkxI) is
      begin
         if (RstxI = '1') then
            state <= STARTUP;

         elsif rising_edge(ClkxI) then

            case state is

               when STARTUP         =>
                  FinishedxS <= '0';
                  if StartxS = '1' then

                  state <= NEW_DATA;
                  end if;
               when NEW_DATA        =>
                  if StartxS = '1' then

                     IterMan <= (others => '0');
                     ZaxD <= CaConvxD;
                     ZbxD <= CbConvxD;

                     CaxD <= CaConvxD;
                     CbxD <= CbConvxD;
                     state <= WAIT_RSLT;

                  elsif StartxS = '0' then
                     state <= WAIT_MMRY;
                  end if;
                  
               when WAIT_RSLT            =>
                  IterMan <= std_logic_vector(unsigned(IterMan)+1);
                  ZaxD <= ZreN1OutPxD;
                  ZbxD <= ZimN1OutPxD;

                  if (IterMan=x"63" or Znorm2OVFPxD='1' or Znorm2OutPxD >= x"4000") then
                     IterxO <= IterOutxD(IT_SIZE-1 downto 0);
                     state <= WRITE_FIFO ;
                  end if;
               when WRITE_FIFO =>
                  -- Check if we are at the end of pixel H and Set or reset pixel H
                  FinishedxS <= '1';
                  if CaPixxD >= x"01D6" then
                     CaPixxD <= x"00FA";
                     if CbPixxD >=  x"01D6"  then
                        CbPixxD <=  x"00FA";
                     else
                        CbPixxD <= std_logic_vector(unsigned(CbPixxD)+1); 
                     end if;
                  else
                     CaPixxD <= std_logic_vector(unsigned(CaPixxD)+1);
                  end if;

                  state <= DONE_WRITE;

               when DONE_WRITE =>
                  FinishedxS <= '0';
                  state <= NEW_DATA;
               when WAIT_MMRY  =>   
                  if StartxS = '1' then
                     state <= NEW_DATA;
                  end if;  
            end case;

         end if;

      end process MdndelSM;


      FinishedxO <= FinishedxS;
end Behavioral;
