// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Tue Nov 10 18:35:27 2020
// Host        : LAPTOP-GBOUD091 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/atfie/IceCube/mDOMDevelopment/mdommb_rev1_fw/mDOM_mb_rev1.srcs/sources_1/ip/DISCR_SERDES/DISCR_SERDES_stub.v
// Design      : DISCR_SERDES
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s100fgga676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module DISCR_SERDES(data_in_from_pins, data_in_to_device, 
  bitslip, clk_in, clk_div_in, io_reset)
/* synthesis syn_black_box black_box_pad_pin="data_in_from_pins[0:0],data_in_to_device[7:0],bitslip[0:0],clk_in,clk_div_in,io_reset" */;
  input [0:0]data_in_from_pins;
  output [7:0]data_in_to_device;
  input [0:0]bitslip;
  input clk_in;
  input clk_div_in;
  input io_reset;
endmodule
