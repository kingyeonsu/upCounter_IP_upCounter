-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Mon Oct 17 11:40:34 2022
-- Host        : LAPTOP-F74GHAFM running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/FPGA/upCoounter2/upCoounter2.srcs/sources_1/bd/upCounter_design/ip/upCounter_design_FNDController_0_0/upCounter_design_FNDController_0_0_stub.vhdl
-- Design      : upCounter_design_FNDController_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity upCounter_design_FNDController_0_0 is
  Port ( 
    i_clk : in STD_LOGIC;
    i_reset : in STD_LOGIC;
    i_value : in STD_LOGIC_VECTOR ( 13 downto 0 );
    o_fndDigit : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_fndData : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end upCounter_design_FNDController_0_0;

architecture stub of upCounter_design_FNDController_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "i_clk,i_reset,i_value[13:0],o_fndDigit[3:0],o_fndData[7:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "FNDController,Vivado 2020.1";
begin
end;
