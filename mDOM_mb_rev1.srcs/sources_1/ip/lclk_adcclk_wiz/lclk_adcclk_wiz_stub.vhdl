-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Wed Sep 22 12:37:39 2021
-- Host        : matts-laptop running 64-bit Fedora release 32 (Thirty Two)
-- Command     : write_vhdl -force -mode synth_stub -rename_top lclk_adcclk_wiz -prefix
--               lclk_adcclk_wiz_ lclk_adcclk_wiz_stub.vhdl
-- Design      : lclk_adcclk_wiz
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7s100fgga676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity lclk_adcclk_wiz is
  Port ( 
    clk_out1 : out STD_LOGIC;
    clk_out2 : out STD_LOGIC;
    clk_out3 : out STD_LOGIC;
    reset : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end lclk_adcclk_wiz;

architecture stub of lclk_adcclk_wiz is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out1,clk_out2,clk_out3,reset,locked,clk_in1";
begin
end;
