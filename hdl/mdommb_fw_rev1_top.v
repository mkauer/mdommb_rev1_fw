//
// November 2020
//
// Top level module for the rev1 mDOM mainboard
//

module top (
  // 20 MHz oscillator
  input QOSC_CLK_P1V8,
  // ICM clock
  input FPGA_CLOCK_P,
  input FPGA_CLOCK_N,

  // Debug UART signals
  output FTD_UART_CTSn,
  input FTD_UART_RTSn,
  output FTD_UART_RXD,
  input FTD_UART_TXD,

  // ICM UART
  input FPGA_UART_CTS,
  output FPGA_UART_RTS,
  input FPGA_UART_RX,
  output FPGA_UART_TX,

  // ICM sync related
  input FPGA_SYNC_P,
  input FPGA_SYNC_N,
  input FPGA_GPIO_0,
  input FPGA_GPIO_1,

  // MCU/CPLD UART (shared with MCU; will not be used)
  input MCU_USART6_TX,
  input MCU_USART6_RX,
  input MCU_CAL_A0,
  input MCU_AFE_SEL,
  input MCU_CAL_SS,
  input MCU_CAL_MOSI,
  input MCU_CAL_MISO,

  // ADC interface
  output ADC0_CLOCK_P,
  output ADC0_CLOCK_M,
  input ADC0_DA0P,
  input ADC0_DA0M,
  input ADC0_DA1P,
  input ADC0_DA1M,
  input ADC0_DB0P,
  input ADC0_DB0M,
  input ADC0_DB1P,
  input ADC0_DB1M,
  input ADC0_DC0P,
  input ADC0_DC0M,
  input ADC0_DC1P,
  input ADC0_DC1M,
  input ADC0_DCLK_P,
  input ADC0_DCLK_M,
  input ADC0_DD0P,
  input ADC0_DD0M,
  input ADC0_DD1P,
  input ADC0_DD1M,
  input ADC0_FCLK_P,
  input ADC0_FCLK_M,
  input ADC0_SDOUT,
  output ADC0_SEN,
  output ADC0_SYSRF_P,
  output ADC0_SYSRF_M,
  output ADC1_CLOCK_P,
  output ADC1_CLOCK_M,
  input ADC1_DA0P,
  input ADC1_DA0M,
  input ADC1_DA1P,
  input ADC1_DA1M,
  input ADC1_DB0P,
  input ADC1_DB0M,
  input ADC1_DB1P,
  input ADC1_DB1M,
  input ADC1_DC0P,
  input ADC1_DC0M,
  input ADC1_DC1P,
  input ADC1_DC1M,
  input ADC1_DCLK_P,
  input ADC1_DCLK_M,
  input ADC1_DD0P,
  input ADC1_DD0M,
  input ADC1_DD1P,
  input ADC1_DD1M,
  input ADC1_FCLK_P,
  input ADC1_FCLK_M,
  output ADC1_SEN,
  output ADC1_SYSRF_P,
  output ADC1_SYSRF_M,
  output ADC2_CLOCK_P,
  output ADC2_CLOCK_M,
  input ADC2_DA0P,
  input ADC2_DA0M,
  input ADC2_DA1P,
  input ADC2_DA1M,
  input ADC2_DB0P,
  input ADC2_DB0M,
  input ADC2_DB1P,
  input ADC2_DB1M,
  input ADC2_DC0P,
  input ADC2_DC0M,
  input ADC2_DC1P,
  input ADC2_DC1M,
  input ADC2_DCLK_P,
  input ADC2_DCLK_M,
  input ADC2_DD0P,
  input ADC2_DD0M,
  input ADC2_DD1P,
  input ADC2_DD1M,
  input ADC2_FCLK_P,
  input ADC2_FCLK_M,
  output ADC2_SEN,
  output ADC2_SYSRF_P,
  output ADC2_SYSRF_M,
  output ADC3_CLOCK_P,
  output ADC3_CLOCK_M,
  input ADC3_DA0P,
  input ADC3_DA0M,
  input ADC3_DA1P,
  input ADC3_DA1M,
  input ADC3_DB0P,
  input ADC3_DB0M,
  input ADC3_DB1P,
  input ADC3_DB1M,
  input ADC3_DC0P,
  input ADC3_DC0M,
  input ADC3_DC1P,
  input ADC3_DC1M,
  input ADC3_DCLK_P,
  input ADC3_DCLK_M,
  input ADC3_DD0P,
  input ADC3_DD0M,
  input ADC3_DD1P,
  input ADC3_DD1M,
  input ADC3_FCLK_P,
  input ADC3_FCLK_M,
  output ADC3_SEN,
  output ADC3_SYSRF_P,
  output ADC3_SYSRF_M,
  output ADC4_CLOCK_P,
  output ADC4_CLOCK_M,
  input ADC4_DA0P,
  input ADC4_DA0M,
  input ADC4_DA1P,
  input ADC4_DA1M,
  input ADC4_DB0P,
  input ADC4_DB0M,
  input ADC4_DB1P,
  input ADC4_DB1M,
  input ADC4_DC0P,
  input ADC4_DC0M,
  input ADC4_DC1P,
  input ADC4_DC1M,
  input ADC4_DCLK_P,
  input ADC4_DCLK_M,
  input ADC4_DD0P,
  input ADC4_DD0M,
  input ADC4_DD1P,
  input ADC4_DD1M,
  input ADC4_FCLK_P,
  input ADC4_FCLK_M,
  output ADC4_SEN,
  output ADC4_SYSRF_P,
  output ADC4_SYSRF_M,
  output ADC5_CLOCK_P,
  output ADC5_CLOCK_M,
  input ADC5_DA0P,
  input ADC5_DA0M,
  input ADC5_DA1P,
  input ADC5_DA1M,
  input ADC5_DB0P,
  input ADC5_DB0M,
  input ADC5_DB1P,
  input ADC5_DB1M,
  input ADC5_DC0P,
  input ADC5_DC0M,
  input ADC5_DC1P,
  input ADC5_DC1M,
  input ADC5_DCLK_P,
  input ADC5_DCLK_M,
  input ADC5_DD0P,
  input ADC5_DD0M,
  input ADC5_DD1P,
  input ADC5_DD1M,
  input ADC5_FCLK_P,
  input ADC5_FCLK_M,
  output ADC5_SEN,
  output ADC5_SYSRF_P,
  output ADC5_SYSRF_M,
  output ADC_RESET,
  output ADC_SCLK,
  output ADC_SDATA,

  // Discriminators
  input DISCR_OUT0,
  input DISCR_OUT1,
  input DISCR_OUT2,
  input DISCR_OUT3,
  input DISCR_OUT4,
  input DISCR_OUT5,
  input DISCR_OUT6,
  input DISCR_OUT7,
  input DISCR_OUT8,
  input DISCR_OUT9,
  input DISCR_OUT10,
  input DISCR_OUT11,
  input DISCR_OUT12,
  input DISCR_OUT13,
  input DISCR_OUT14,
  input DISCR_OUT15,
  input DISCR_OUT16,
  input DISCR_OUT17,
  input DISCR_OUT18,
  input DISCR_OUT19,
  input DISCR_OUT20,
  input DISCR_OUT21,
  input DISCR_OUT22,
  input DISCR_OUT23,

  // AD5668 DACs
  output DAC0_DIN,
  output DAC0_nSYNC0,
  output DAC0_nSYNC1,
  output DAC0_nSYNC2,
  output DAC0_SCLK,
  output DAC1_DIN,
  output DAC1_nSYNC0,
  output DAC1_nSYNC1,
  output DAC1_nSYNC2,
  output DAC1_SCLK,
  output DAC2_DIN,
  output DAC2_nSYNC0,
  output DAC2_nSYNC1,
  output DAC2_nSYNC2,
  output DAC2_SCLK,

  // FMC interface
  input  FMC_A11,
  input  FMC_A10,
  input  FMC_A9,
  input  FMC_A8,
  input  FMC_A7,
  input  FMC_A6,
  input  FMC_A5,
  input  FMC_A4,
  input  FMC_A3,
  input  FMC_A2,
  input  FMC_A1,
  input  FMC_A0,
  inout  FMC_D15,
  inout  FMC_D14,
  inout  FMC_D13,
  inout  FMC_D12,
  inout  FMC_D11,
  inout  FMC_D10,
  inout  FMC_D9,
  inout  FMC_D8,
  inout  FMC_D7,
  inout  FMC_D6,
  inout  FMC_D5,
  inout  FMC_D4,
  inout  FMC_D3,
  inout  FMC_D2,
  inout  FMC_D1,
  inout  FMC_D0,
  input  FMC_CEn,
  input  FMC_OEn,
  input  FMC_WEn,
  output FMC_IRQ3,
  output FMC_IRQ2,
  output FMC_IRQ1,
  output FMC_IRQ0,

  // LEDs
  output LED_YELLOW,
  output LED_GREEN,
  output LED_ORANGE,

  input TRIG_IN,
  output TRIG_OUT,

  // CAL interface
  output FPGA_CAL_TRIG_P,
  output FPGA_CAL_TRIG_N,

  // ADS8332 monitoring ADCs
  output MON_ADC1_CONVn,
  output MON_ADC1_CSn,
  output MON_ADC1_SCLK,
  output MON_ADC1_SDI,
  input MON_ADC1_SDO,
  output MON_ADC2_CONVn,
  output MON_ADC2_CSn,
  output MON_ADC2_SCLK,
  output MON_ADC2_SDI,
  input MON_ADC2_SDO,

  output DCDC_SYNC,

  // FPGA I2C
  inout FPGA_I2C_SDA,
  output FPGA_I2C_SCL,

  // DDR3 related
  output DDR3_CLK100_OUT,
  output DDR3_VTT_S3,
  output DDR3_VTT_S5,

  inout[15:0] ddr3_dq,
  inout[1:0] ddr3_dqs_n,
  inout[1:0] ddr3_dqs_p,
  output[13:0] ddr3_addr,
  output[2:0] ddr3_ba,
  output ddr3_ras_n,
  output ddr3_cas_n,
  output ddr3_we_n,
  output ddr3_reset_n,
  output[0:0] ddr3_ck_p,
  output[0:0] ddr3_ck_n,
  output[0:0] ddr3_cke,
  output[0:0] ddr3_cs_n,
  output[1:0] ddr3_dm,
  output[0:0] ddr3_odt
  // (if using DDR3_CLK100 rather than internal clock)
  // input sys_clk_i
);

`include "mDOM_trig_bundle_inc.v"
`include "mDOM_wvb_conf_bundle_inc.v"
`include "mDOM_wvb_hdr_bundle_2_inc.v"
`include "mDOM_bsum_bundle_inc.v"

// using 0x1000 for dm-ice testing
localparam[15:0] FW_VNUM = 16'h1000;

// 1 for icm clock, 0 for Q_OSC
localparam CLK_SRC = 1;

// number of ADC channels
localparam N_CHANNELS = 24;
localparam N_ADC_BITS = 12;
localparam N_DISCR_BITS = 8;

// determines waveform buffer depths
// start with depth of 1024 samples; can increase later
localparam P_WVB_ADR_WIDTH = 11;

// hdr_bundle 1, 48 bit LTC
// localparam P_HDR_WIDTH = P_WVB_ADR_WIDTH == 10 ? 71 : 80;
// hdr_bundle 2, 49 bit LTC
localparam P_LTC_WIDTH = 49;
localparam P_HDR_WIDTH = L_WIDTH_MDOM_WVB_HDR_BUNDLE_2;
localparam P_FMT = 1;

//
// clock generation
//
wire icm_fpga_clk;
IBUFGDS IBUFDGS_FPGACLK(.I(FPGA_CLOCK_P), .IB(FPGA_CLOCK_N), .O(icm_fpga_clk));

wire osc_20MHz = CLK_SRC == 0 ? QOSC_CLK_P1V8 : icm_fpga_clk;

// generate 100 MHz, 120 MHz, 200 MHz, 360 MHz, 480 MHz clocks
wire lclk_adcclk_locked;
wire idelay_discrclk_locked;
wire clk_100MHz;
wire clk_120MHz;
wire clk_120shift180;
wire clk_200MHz;
wire clk_360MHz;
wire clk_480MHz;
lclk_adcclk_wiz LCLK_ADCCLK_WIZ_0 (
  .clk_in1(osc_20MHz),
  .clk_out1(clk_120MHz),
  .clk_out2(clk_360MHz),
  .clk_out3(clk_120shift180),
  .locked(lclk_adcclk_locked),
  .reset(1'b0)
);
wire lclk = clk_120MHz;
wire lclk_rst = !lclk_adcclk_locked;
wire i_adc_clock = clk_120MHz;
wire i_adc_clock2 = clk_120shift180;

// this no longer handles the idelay clock after the
// switch from 125 MHz to 120 MHz
wire discr_fclk_120MHz;
idelay_discr_clk_wiz IDELAY_DISCR_CLK_WIZ_0 (
  .clk_in1(osc_20MHz),
  .clk_out1(discr_fclk_120MHz),
  .clk_out2(clk_480MHz),
  .locked(idelay_discrclk_locked),
  .reset(1'b0)
);

wire ddr3_idelay_locked;
ddr3_idelay_clk_wiz DDR3_IDELAY_CLK_WIZ_0 (
  .clk_in1(osc_20MHz),
  .clk_out1(clk_100MHz),
  .clk_out2(clk_200MHz),
  .locked(ddr3_idelay_locked),
  .reset(1'b0)
);

// IDELAY control; this should automatically be replicated to all banks where it is needed
// (see https://forums.xilinx.com/t5/Memory-Interfaces-and-NoC/IDELAYCTRL-in-Kintex-MIG/m-p/524885#M6824)
reg delayctrl_rst = 1'b1;
always @(posedge clk_200MHz) begin
  delayctrl_rst <= !idelay_discrclk_locked;
end
wire   idelayctrl_rdy;
IDELAYCTRL delayctrl(.RDY(idelayctrl_rdy),.REFCLK(clk_200MHz),.RST(delayctrl_rst));

// Input clocks and clock forwarding
wire[5:0] i_adc_dclock;
wire[5:0] i_adc_fclock;

// chans 0-3
// phase shifting this one
ADC3424_clk_IO clk_IO_0(.enc_clk(i_adc_clock2),
                        .dclk_P(ADC0_DCLK_P), .dclk_N(ADC0_DCLK_M), .dclk_out(i_adc_dclock[0]),
                        .fclk_P(ADC0_FCLK_P), .fclk_N(ADC0_FCLK_M), .fclk_out(i_adc_fclock[0]),
                        .adc_clk_P(ADC0_CLOCK_P), .adc_clk_N(ADC0_CLOCK_M),
                        .sysrf_P(ADC0_SYSRF_P), .sysrf_N(ADC0_SYSRF_M));
// chans 4-7
ADC3424_clk_IO clk_IO_1(.enc_clk(i_adc_clock),
                        .dclk_P(ADC1_DCLK_P), .dclk_N(ADC1_DCLK_M), .dclk_out(i_adc_dclock[1]),
                        .fclk_P(ADC1_FCLK_P), .fclk_N(ADC1_FCLK_M), .fclk_out(i_adc_fclock[1]),
                        .adc_clk_P(ADC1_CLOCK_P), .adc_clk_N(ADC1_CLOCK_M),
                        .sysrf_P(ADC1_SYSRF_P), .sysrf_N(ADC1_SYSRF_M));
// chans 8-11
// phase shifting this one
ADC3424_clk_IO clk_IO_2(.enc_clk(i_adc_clock2),
                        .dclk_P(ADC2_DCLK_P), .dclk_N(ADC2_DCLK_M), .dclk_out(i_adc_dclock[2]),
                        .fclk_P(ADC2_FCLK_P), .fclk_N(ADC2_FCLK_M), .fclk_out(i_adc_fclock[2]),
                        .adc_clk_P(ADC2_CLOCK_P), .adc_clk_N(ADC2_CLOCK_M),
                        .sysrf_P(ADC2_SYSRF_P), .sysrf_N(ADC2_SYSRF_M));
// chans 12-15
ADC3424_clk_IO clk_IO_3(.enc_clk(i_adc_clock),
                        .dclk_P(ADC3_DCLK_P), .dclk_N(ADC3_DCLK_M), .dclk_out(i_adc_dclock[3]),
                        .fclk_P(ADC3_FCLK_P), .fclk_N(ADC3_FCLK_M), .fclk_out(i_adc_fclock[3]),
                        .adc_clk_P(ADC3_CLOCK_P), .adc_clk_N(ADC3_CLOCK_M),
                        .sysrf_P(ADC3_SYSRF_P), .sysrf_N(ADC3_SYSRF_M));
// chans 16-19
// phase shifting this one
ADC3424_clk_IO clk_IO_4(.enc_clk(i_adc_clock2),
                        .dclk_P(ADC4_DCLK_P), .dclk_N(ADC4_DCLK_M), .dclk_out(i_adc_dclock[4]),
                        .fclk_P(ADC4_FCLK_P), .fclk_N(ADC4_FCLK_M), .fclk_out(i_adc_fclock[4]),
                        .adc_clk_P(ADC4_CLOCK_P), .adc_clk_N(ADC4_CLOCK_M),
                        .sysrf_P(ADC4_SYSRF_P), .sysrf_N(ADC4_SYSRF_M));
// chans 20-23
ADC3424_clk_IO clk_IO_5(.enc_clk(i_adc_clock),
                        .dclk_P(ADC5_DCLK_P), .dclk_N(ADC5_DCLK_M), .dclk_out(i_adc_dclock[5]),
                        .fclk_P(ADC5_FCLK_P), .fclk_N(ADC5_FCLK_M), .fclk_out(i_adc_fclock[5]),
                        .adc_clk_P(ADC5_CLOCK_P), .adc_clk_N(ADC5_CLOCK_M),
                        .sysrf_P(ADC5_SYSRF_P), .sysrf_N(ADC5_SYSRF_M));

// 100 MHz clk forwarding (if using DDR3_CLK100 signal)
// ODDR #(
//        .DDR_CLK_EDGE("OPPOSITE_EDGE"),
//        .INIT(1'b0),
//        .SRTYPE("SYNC")
//      )
// ddr3_clk_forward
// (
//   .Q(DDR3_CLK100_OUT),
//   .C(clk_100MHz),
//   .D1(1'b0),
//   .D2(1'b1),
//   .CE(1'b1),
//   .R(1'b0),
//   .S(1'b0)
// );

// if not using DDR3_CLK100 signal
assign DDR3_CLK100_OUT = 0;
wire sys_clk_i = clk_100MHz;

// ADC / DISCR interface inputs
localparam DEFAULT_DELAY = 5'b0;
wire[47:0] adc_DP = {ADC5_DD1P, ADC5_DD0P, ADC5_DC1P, ADC5_DC0P,
                     ADC5_DB1P, ADC5_DB0P, ADC5_DA1P, ADC5_DA0P,
                     ADC4_DD1P, ADC4_DD0P, ADC4_DC1P, ADC4_DC0P,
                     ADC4_DB1P, ADC4_DB0P, ADC4_DA1P, ADC4_DA0P,
                     ADC3_DD1P, ADC3_DD0P, ADC3_DC1P, ADC3_DC0P,
                     ADC3_DB1P, ADC3_DB0P, ADC3_DA1P, ADC3_DA0P,
                     ADC2_DD1P, ADC2_DD0P, ADC2_DC1P, ADC2_DC0P,
                     ADC2_DB1P, ADC2_DB0P, ADC2_DA1P, ADC2_DA0P,
                     ADC1_DD1P, ADC1_DD0P, ADC1_DC1P, ADC1_DC0P,
                     ADC1_DB1P, ADC1_DB0P, ADC1_DA1P, ADC1_DA0P,
                     ADC0_DD1P, ADC0_DD0P, ADC0_DC1P, ADC0_DC0P,
                     ADC0_DB1P, ADC0_DB0P, ADC0_DA1P, ADC0_DA0P};

wire[47:0] adc_DN = {ADC5_DD1M, ADC5_DD0M, ADC5_DC1M, ADC5_DC0M,
                     ADC5_DB1M, ADC5_DB0M, ADC5_DA1M, ADC5_DA0M,
                     ADC4_DD1M, ADC4_DD0M, ADC4_DC1M, ADC4_DC0M,
                     ADC4_DB1M, ADC4_DB0M, ADC4_DA1M, ADC4_DA0M,
                     ADC3_DD1M, ADC3_DD0M, ADC3_DC1M, ADC3_DC0M,
                     ADC3_DB1M, ADC3_DB0M, ADC3_DA1M, ADC3_DA0M,
                     ADC2_DD1M, ADC2_DD0M, ADC2_DC1M, ADC2_DC0M,
                     ADC2_DB1M, ADC2_DB0M, ADC2_DA1M, ADC2_DA0M,
                     ADC1_DD1M, ADC1_DD0M, ADC1_DC1M, ADC1_DC0M,
                     ADC1_DB1M, ADC1_DB0M, ADC1_DA1M, ADC1_DA0M,
                     ADC0_DD1M, ADC0_DD0M, ADC0_DC1M, ADC0_DC0M,
                     ADC0_DB1M, ADC0_DB0M, ADC0_DA1M, ADC0_DA0M};

wire[23:0] discr_out = {DISCR_OUT23, DISCR_OUT22, DISCR_OUT21, DISCR_OUT20,
                        DISCR_OUT19, DISCR_OUT18, DISCR_OUT17, DISCR_OUT16,
                        DISCR_OUT15, DISCR_OUT14, DISCR_OUT13, DISCR_OUT12,
                        DISCR_OUT11, DISCR_OUT10, DISCR_OUT9, DISCR_OUT8,
                        DISCR_OUT7, DISCR_OUT6, DISCR_OUT5, DISCR_OUT4,
                        DISCR_OUT3, DISCR_OUT2, DISCR_OUT1, DISCR_OUT0};

// ADC / DISCR interface xdom controls
wire[N_CHANNELS*10-1:0] adc_delay_tap_out_xdom;
wire[N_CHANNELS-1:0] adc_io_reset_xdom;
wire[N_CHANNELS-1:0] discr_io_reset_xdom;
wire[N_CHANNELS-1:0] adc_delay_reset_xdom;
wire[N_CHANNELS*2-1:0] adc_delay_ce_xdom;
wire[N_CHANNELS*2-1:0] adc_delay_inc_xdom;
wire[N_CHANNELS*2-1:0] adc_bitslip_xdom;
wire[N_CHANNELS-1:0] discr_bitslip_xdom;

// ADC / DISCR data streams
wire[N_CHANNELS*N_ADC_BITS-1:0] adc_data;
wire[N_CHANNELS*N_DISCR_BITS-1:0] discr_data;

generate
  genvar i;
  for (i = 0; i < N_CHANNELS; i = i + 1) begin : adc_discr_iface_gen
    adc_discr_channel ADC_DISCR_CHAN
    (
      .adc_DP(adc_DP[2*i+1 : 2*i]),
      .adc_DN(adc_DN[2*i+1 : 2*i]),
      .discr_out(discr_out[i]),
      .lclk(lclk),
      .discr_fclk(discr_fclk_120MHz),
      .adc_dclk(clk_360MHz),
      .discr_dclk(clk_480MHz),
      .in_delay_reset({adc_delay_reset_xdom[i], adc_delay_reset_xdom[i]}),
      .in_delay_data_ce(adc_delay_ce_xdom[2*i+1 : 2*i]),
      .in_delay_data_inc(adc_delay_inc_xdom[2*i+1 : 2*i]),
      .adc_bitslip(adc_bitslip_xdom[2*i+1 : 2*i]),
      .adc_io_reset({adc_io_reset_xdom[i], adc_io_reset_xdom[i]}),
      .discr_bitslip(discr_bitslip_xdom[i]),
      .discr_io_reset(discr_io_reset_xdom[i]),
      .adc_bits(adc_data[N_ADC_BITS*(i+1)-1 : N_ADC_BITS*i]),
      .discr_bits(discr_data[N_DISCR_BITS*(i+1)-1 : N_DISCR_BITS*i]),
      .delay_tap_in_0(DEFAULT_DELAY),
      .delay_tap_in_1(DEFAULT_DELAY),
      .delay_tap_out_0(adc_delay_tap_out_xdom[10*i+4 : 10*i]),
      .delay_tap_out_1(adc_delay_tap_out_xdom[10*i+9 : 10*i+5])
    );
  end
endgenerate

/////////////////////////////////////////////////////////////////////////
// xDOM interface
// Addressing:
//     12'hfff: Version/build number
//     12'hfe3: Local time counter task register
//         [0]:       Read request/acknowledge
//     12'hfe2: Local time counter read data bits [47:32]
//     12'hfe1: Local time counter read data bits [31:16]
//     12'hfe0: Local time counter read data bits [15:0]
//     12'heff: [2]: SLO ADC task reg
//     12'hdff: [0] dpram_done
//     12'hdfe: [10:0] dpram_len
//     12'hdf9: [0] dpram_sel (0: ddr3 transfer dpram, 1: direct rdout (rd only))
//     12'hdf8: SLO ADC SPI write data [18:16]
//     12'hdf7: SLO ADC SPI read data [18:16]
//     12'hdf6: SLO ADC chip select: 0 - ADC1, 1 - ADC2
//     12'hdf5: SLO ADC nCONVST one shot
//     12'hdf4: wvb_reader enable
//     12'hdf2: wvb_reader dpram mode
//     12'hde4: SLO ADC SPI write data [15:0]
//     12'hde3: SLO ADC SPI read data [15:0]
//
//     12'hcc4: Enable for ICM_FPGA_SYNC signal
//     12'hcb6: ICM sync status
//         [0]: icm_sync_rdy
//         [1]: icm_sync_error
//     12'hcb5: expected sync LTC [47:32]
//     12'hcb4: expected sync LTC [31:16]
//     12'hcb3: expected sync LTC [15:0]
//     12'hcb2: received sync LTC [47:32]
//     12'hcb1: received sync LTC [31:16]
//     12'hcb0: received sync LTC [15:0]
//     12'hcaf: [15:0] sync error count
//
//     12'hbfe: trig settings
//             [0] et
//             [1] gt
//             [2] lt
//             [3] discr_trig_pol
//             [4] dicr_trig_en
//             [5] thresh_trig_en
//             [6] ext_trig_en
//             [7] global_trig_pol
//             [8] global_trig_en
//     12'hbfd: trig threshold [11:0] (currently common to all channels)
//     12'hbfc: [7:0] sw_trig_mask [23:16]
//     12'hbfb: sw_trig_mask [15:0]
//     12'hbfa: [7:0] trig_arm_mask [23:16]
//     12'hbf9: trig_arm_mask [15:0]
//     12'hbf8:
//             [0] sw_trig (see mask)
//             [1] trig_arm (see mask)
//     12'hbf7: [0] trig_mode
//     12'hbf6: [7:0] trig_armed [23:16]
//     12'hbf5: trig_armed [15:0]
//     12'hbf4: [0] cnst_run
//     12'hbf3: const config [11:0]
//     12'hbf2: test config  [11:0]
//     12'hbf1: post config [7:0]
//     12'hbf0: pre config [4:0]
//
//     12'hbef: chan select for waveform buffer n_words/n_wfms
//     12'hbee: n_waveforms in waveform buffer
//     12'hbed: words used in waveform buffer
//     12'hbec: waveform buffer overflow [23:16]
//     12'hbeb: waveform buffer overflow [15:0]
//     12'hbea: waveform buffer reset [23:16]
//     12'hbe9: waveform buffer reset [15:0]
//     12'hbe8: wvb header full [23:16]
//     12'hbe7: wvb header full ([i] for channel i, up to 15)
//
//     ADC / DISCR IO controls
//     12'hbe6: [4:0] IO control chan select (0-23)
//     12'hbe5: the following apply to the channel selected in reg 12'heee
//              [0] D0 delay_inc
//              [1] D0 delay_ce
//              [2] D0 bitslip
//              [4] D1 delay_inc
//              [5] D1 delay_ce
//              [6] D1 bitslip
//              [8] discr bitslip
//     12'hbe4: [4:0] D0 delay tapout
//              [9:5] D1 delay tapout
//     12'hbe3: adc io reset [23:16] (defaults to 1)
//     12'hbe2: adc io reset [15:0] (defaults to 1)
//     12'hbe1: adc delay reset [23:16]
//     12'hbe0: adc delay reset [15:0]
//     12'hbdf: discr io reset [23:16] (defaults to 1)
//     12'hbde: discr io reset [15:0] (defaults to 1)
//
//     ADC serial controls
//     12'hbdd: [0] ADC_RESET
//     12'hbdc: [5:0] adc spi chip sel
//     12'hbdb: [0] adc spi task reg
//     12'hbda: [7:0] adc spi wr data[23:16]
//     12'hbd9: adc spi wr data [15:0]
//     12'hbd8: adc spi rd data [7:0]
//
//     AD5668 DAC serial controls
//     12'hbd7: [2:0] dac spi sel (DAC0, DAC1, DAC2)
//     12'hbd6: [2:0] dac chip sel (0, 1, 2)
//     12'hbd5: [0] dac spi task reg
//     12'hbd4: dac spi wr data [31:16]
//     12'hbd3: dac spi wr data [15:0]
//
//     AFE pulser controls
//     12'hbd2: [15:0] AFE pulser width, units of 1/960 MHz
//     12'hbd1: [i] AFE pulser i IO reset
//     12'hbd0: [7:0] AFE pulser sw trig mask [23:16]
//     12'hbcf: [15:0] AFE pulser sw trig mask [15:0]
//     12'hbce: [i] AFE pulser i single trigger + sw_trig (based on mask)
//
//     DDR3 memory controller signals
//     12'hbcd: page transfer addr[26:16] (16-bit word address)
//     12'hbcc: page transger addr[15:0]  (16-bit word address)
//     12'hbcb: [0] pg transfer optype (0 read, 1 write)
//     12'hbca: [0] pg transfer task reg
//     12'hbc9: DDR3 sys rst (active low)
//     12'hbc8: DDR3 cal complete
//     12'hbc7: [11:0] mem interface device temp
//     12'hbc6: [0] ddr3 ui sync rst
//
//     hit buffer controller
//     12'hbc5: [0] enable
//     12'hbc4: [15:0] start_pg
//     12'hbc3: [15:0] stop_pg
//     12'hbc2: [15:0] first_pg (readback)
//     12'hbc1: [15:0] last_pg (readback)
//     12'hbc0: [15:0] pg_clr_count
//     12'hbbf: [0] flush_task
//              [1] pg_clr_task
//     12'hbbe: [15:0] rd_pg_num
//     12'hbbd: [15:0] wr_pg_num
//     12'hbbc: [15:0] n_used_pgs
//     12'hbbb: [0] empty
//              [1] full
//              [2] buffered_data
//
//     rate scalers
//     12'hbba: scaler_period [31:16] (8 ns units)
//     12'hbb9: scaler_period [15:0] (8 ns units)
//     12'hbb8: [4:0] scaler readback channel select
//     12'hbb7: discr scaler readback [31:16]
//     12'hbb6: discr scaler readback [15:0]
//     12'hbb5: scaler inhibit length [31:16]
//     12'hbb4: scaler inhibit length [15:0]
//
//     12'hbb3: AFE pulser period [31:16]
//     12'hbb2: AFE pulser period [15:0]
//     12'hbb1: [5:0] Periodic pulse mode enable (for AFEi_TP)

//     12'hbb0: thresh scaler readback [31:16]
//     12'hbaf: thresh scaler readback [15:0]
//
//     12'hbae: [0] DDR3_VTT_S3
//              [1] DDR3_VTT_S5
//
//     12'hbad: wvb_not_empty[23:16]
//     12'hbac: wvb_not_empty[15:0]
//     12'hbab: [0] any_wvb_not_empty
//
//     baseline sum controls
//     12'hbaa:
//          [0] bsum_pause
//          [1] bsum_pause_override
//     12'hba9: [2:0] bsum len sel
//     12'hba8: [15:0] bsum pause len
//     12'hba7: [11:0] bsum dev low
//     12'hba6: [11:0] bsum dev high
//
//     FPGA_CAL_TRIG interface
//     12'hba5: [15:0] FPGA_CAL_TRIG width, units of 1/960 MHz
//     12'hba4: [0] FPGA_CAL_TRIG IO reset
//              [1] FPGA_CAL_TRIG polarity (0 idles low, 1 idles high)
//     12'hba3: [0] FPGA_CAL_TRIG single trigger
//     12'hba2: FPGA_CAL_TRIG period [31:16]
//     12'hba1: FPGA_CAL_TRIG period [15:0]
//     12'hba0: [0] Periodic pulse mode enable for FPGA_CAL_TRIG
//
//     12'hb9f: [0] DCDC_SYNC
//
//     12'hb9e: [7:0] CAL trigger sw trig mask [23:16]
//     12'hb9d: [15:0] CAL trigger sw trig mask [15:0]
//
//     I2C interface
//     12'hb9c: The I2C Master 0 task regsiters
//         [0]: Write a word to the TX FIFO
//         [1]: Read a word from the RX FIFO
//         [2]: Execute an I2C transaction
//     12'hb9b: Write word for the I2C TX FIFO
//        [15]: Transmit the I2C start condition at the beginning of the byte
//        [14]: Transmit the I2C acknowledge condition at the end of the byte
//        [13]: Transmit the I2C stop condition at the end of the byte
//        [12]: 0: TX FIFO [7:0] is write to slave, 1: RX FIFO [7:0] is read from slave
//      [11:8]: 4'h0
//       [7:0]: TX data for write to slave transactions
//     12'hb9a: Read word for the I2C RX FIFO
//        [15]: RX FIFO full
//        [14]: RX FIFO empty
//      [13:9]: 5'h0
//         [8]: Slave acknowledged the RX transaction
//       [7:0]: RX slave byte
//
//     global discriminator trigger configuration
//     12'hb99: [7:0] global trig src mask [23:16]
//     12'hb98: [15:0] global trig src mask [15:0]
//     12'hb97: [7:0] global trig receiver mask [23:16]
//     12'hb96: [15:0] global trig receiver mask [15:0]

// trigger/wvb conf
wire[L_WIDTH_MDOM_TRIG_BUNDLE-1:0] xdom_trig_bundle;
wire[L_WIDTH_MDOM_WVB_CONF_BUNDLE-1:0] xdom_wvb_conf_bundle;
wire[N_CHANNELS-1:0] xdom_wvb_rst;
wire[N_CHANNELS-1:0] xdom_arm;
wire[N_CHANNELS-1:0] xdom_trig_run;

// waveform buffer status
wire[N_CHANNELS-1:0] wvb_armed;
wire[N_CHANNELS-1:0] wvb_overflow;
wire[N_CHANNELS*16-1:0] wfms_in_buf;
wire[N_CHANNELS*16-1:0] buf_wds_used;
wire[N_CHANNELS-1:0] wvb_hdr_full;
wire[N_CHANNELS-1:0] wvb_hdr_empty;
reg[N_CHANNELS-1:0] wvb_not_empty = 0;
always @(posedge lclk) begin
  wvb_not_empty <= ~wvb_hdr_empty;
end

// wvb reader
wire[15:0] rdout_dpram_len;
wire rdout_dpram_run;
wire xdom_rdout_dpram_busy;
wire rdout_dpram_wren;
wire[9:0] rdout_dpram_wr_addr;
wire[31:0] rdout_dpram_data;
wire wvb_reader_enable;
wire wvb_reader_dpram_mode;

// ADC serial interface
wire adc_spi_ack;
wire adc_spi_req;
wire[23:0] adc_spi_wr_data;
wire[7:0] adc_spi_rd_data;
wire[5:0] adc_spi_sel;

// AD5668 DAC controls
wire dac_spi_ack;
wire dac_spi_req;
wire[31:0] dac_spi_wr_data;
wire[2:0] dac_spi_sel;
wire[2:0] dac_chip_sel;

// AFE pulser
wire[5:0] pulser_io_rst;
wire[5:0] pulser_trig;
wire[15:0] pulser_width;

// ADS8332 monitoring ADCs
wire slo_adc_req;
wire slo_adc_ack;
wire[18:0] slo_adc_wr_data;
wire[18:0] slo_adc_rd_data;
wire slo_adc_chip_sel;
wire slo_adc_nconvst;

// DDR3 interface
wire ddr3_ui_clk;
wire[27:0] xdom_pg_req_addr;
wire xdom_pg_optype;
wire xdom_pg_req;
wire xdom_pg_ack;
wire ddr3_sys_rst;
wire ddr3_cal_complete;
wire ddr3_ui_sync_rst;
wire[11:0] ddr3_device_temp_xdom;
wire[7:0] ddr3_dpram_addr;
wire xdom_ddr3_dpram_wren;
wire[127:0] ddr3_dpram_din;
wire[127:0] xdom_ddr3_dpram_dout;

// hit buffer controller
wire hbuf_enable;
wire[15:0] hbuf_start_pg;
wire[15:0] hbuf_stop_pg;
wire[15:0] hbuf_first_pg;
wire[15:0] hbuf_last_pg;
wire[15:0] hbuf_pg_clr_count;
wire hbuf_pg_clr_req;
wire hbuf_pg_clr_ack;
wire hbuf_flush_req;
wire hbuf_flush_ack;
wire[15:0] hbuf_rd_pg_num;
wire[15:0] hbuf_wr_pg_num;
wire[15:0] hbuf_n_used_pgs;
wire hbuf_empty;
wire hbuf_full;
wire hbuf_buffered_data;

// discr scalers
wire[31:0] scaler_period_xdom;
wire[31:0] scaler_inhibit_len_xdom;
wire[N_CHANNELS*32-1:0] disc_scaler_out;
// thresh scaler
wire[N_CHANNELS*32-1:0] thresh_scaler_out;

// LTC controls and synchronization
wire icm_fpga_sync_en;
wire ltc_rd_req;
wire ltc_rd_ack;
wire[P_LTC_WIDTH-1:0] ltc_rd_data;
wire icm_sync_rdy;
wire icm_sync_err;
// expected / received LTCs are always 48 bits
wire[47:0] expected_sync_ltc;
wire[47:0] received_sync_ltc;
wire[15:0] icm_sync_err_cnt;

// bsum bundle
wire[L_WIDTH_MDOM_BSUM_BUNDLE-1:0] xdom_bsum_bundle;

// cal interface
wire cal_io_rst;
wire cal_trig;
wire[15:0] cal_trig_width;
wire cal_trig_pol;

// I2C signals
wire i2cm_0_tx_fifo_wr_req;
wire i2cm_0_rx_fifo_rd_req;
wire i2cm_0_ex_req;
wire i2cm_0_ack;
wire[7:0] i2cm_0_rx_data;
wire[7:0] i2cm_0_tx_data;
wire i2cm_0_rx_fifo_full;
wire i2cm_0_rx_fifo_empty;
wire i2cm_0_tx_fifo_full;
wire i2cm_0_tx_fifo_empty;
wire i2cm_0_i2c_acked;
wire i2cm_0_i2c_ack;
wire i2cm_0_i2c_start;
wire i2cm_0_i2c_stop;
wire i2cm_0_i2c_r_wn;

// global dscriminator trigger
wire global_trig_en;
wire global_trig_pol;
wire[N_CHANNELS-1:0] global_trig_src_mask;
wire[N_CHANNELS-1:0] global_trig_rcv_mask;

// FMC
wire [15:0] i_fmc_din;
wire [15:0] i_fmc_dout;
wire [11:0] i_fmc_a;
wire        i_fmc_oen;
wire        i_fmc_oen_ne;
wire        i_fmc_wen;
wire        i_fmc_wen_ne;
wire        i_fmc_cen;
assign FMC_D15  = (i_fmc_oen==0) ? i_fmc_dout[15] : 1'bz;
assign FMC_D14  = (i_fmc_oen==0) ? i_fmc_dout[14] : 1'bz;
assign FMC_D13  = (i_fmc_oen==0) ? i_fmc_dout[13] : 1'bz;
assign FMC_D12  = (i_fmc_oen==0) ? i_fmc_dout[12] : 1'bz;
assign FMC_D11  = (i_fmc_oen==0) ? i_fmc_dout[11] : 1'bz;
assign FMC_D10  = (i_fmc_oen==0) ? i_fmc_dout[10] : 1'bz;
assign FMC_D9   = (i_fmc_oen==0) ? i_fmc_dout[9]  : 1'bz;
assign FMC_D8   = (i_fmc_oen==0) ? i_fmc_dout[8]  : 1'bz;
assign FMC_D7   = (i_fmc_oen==0) ? i_fmc_dout[7]  : 1'bz;
assign FMC_D6   = (i_fmc_oen==0) ? i_fmc_dout[6]  : 1'bz;
assign FMC_D5   = (i_fmc_oen==0) ? i_fmc_dout[5]  : 1'bz;
assign FMC_D4   = (i_fmc_oen==0) ? i_fmc_dout[4]  : 1'bz;
assign FMC_D3   = (i_fmc_oen==0) ? i_fmc_dout[3]  : 1'bz;
assign FMC_D2   = (i_fmc_oen==0) ? i_fmc_dout[2]  : 1'bz;
assign FMC_D1   = (i_fmc_oen==0) ? i_fmc_dout[1]  : 1'bz;
assign FMC_D0   = (i_fmc_oen==0) ? i_fmc_dout[0]  : 1'bz;
assign i_fmc_din[15] = FMC_D15;
assign i_fmc_din[14] = FMC_D14;
assign i_fmc_din[13] = FMC_D13;
assign i_fmc_din[12] = FMC_D12;
assign i_fmc_din[11] = FMC_D11;
assign i_fmc_din[10] = FMC_D10;
assign i_fmc_din[9]  = FMC_D9;
assign i_fmc_din[8]  = FMC_D8;
assign i_fmc_din[7]  = FMC_D7;
assign i_fmc_din[6]  = FMC_D6;
assign i_fmc_din[5]  = FMC_D5;
assign i_fmc_din[4]  = FMC_D4;
assign i_fmc_din[3]  = FMC_D3;
assign i_fmc_din[2]  = FMC_D2;
assign i_fmc_din[1]  = FMC_D1;
assign i_fmc_din[0]  = FMC_D0;
assign i_fmc_a[11]   = FMC_A11;
assign i_fmc_a[10]   = FMC_A10;
assign i_fmc_a[9]    = FMC_A9;
assign i_fmc_a[8]    = FMC_A8;
assign i_fmc_a[7]    = FMC_A7;
assign i_fmc_a[6]    = FMC_A6;
assign i_fmc_a[5]    = FMC_A5;
assign i_fmc_a[4]    = FMC_A4;
assign i_fmc_a[3]    = FMC_A3;
assign i_fmc_a[2]    = FMC_A2;
assign i_fmc_a[1]    = FMC_A1;
assign i_fmc_a[0]    = FMC_A0;
assign i_fmc_oen     = FMC_OEn;
assign i_fmc_cen     = FMC_CEn;
assign i_fmc_wen     = FMC_WEn;

// set IRQs to 0 for now
assign FMC_IRQ3 = 0;
assign FMC_IRQ2 = 0;
assign FMC_IRQ1 = 0;
assign FMC_IRQ0 = 0;

wire i_fmc_wen_s;
wire i_fmc_oen_s;
// synchronize FMC WEn, OEn
// and register FMC CEn, adr, data for write operations
sync SYNC_FMC_WEN_0(.clk(lclk),.rst_n(!lclk_rst),.a(i_fmc_wen),.y(i_fmc_wen_s));
negedge_detector FMC_WE_NE_0(.clk(lclk),.rst_n(!lclk_rst),.a(i_fmc_wen_s),.y(i_fmc_wen_ne));
sync SYNC_FMC_OEN_0(.clk(lclk),.rst_n(!lclk_rst),.a(i_fmc_oen),.y(i_fmc_oen_s));
negedge_detector FMC_OEN_NE_0(.clk(lclk),.rst_n(!lclk_rst),.a(i_fmc_oen_s),.y(i_fmc_oen_ne));
(* max_fanout = 20 *) reg[11:0] i_fmc_a_1 = 12'b0;
(* max_fanout = 20 *) reg[15:0] i_fmc_din_1 = 16'b0;
reg i_fmc_cen_1 = 0;
wire[15:0] po_dout;
// register po_dout for control register reads
// otherwise the output could change during a read operation
reg[15:0] po_dout_1 = 16'b0;
always @(posedge lclk) begin
  i_fmc_a_1 <= i_fmc_a;
  i_fmc_din_1 <= i_fmc_din;
  i_fmc_cen_1 <= i_fmc_cen;
  if (i_fmc_oen_ne) begin
    po_dout_1 <= po_dout;
  end
end
wire fmc_ctrl_reg_read = i_fmc_a[11] == 1'b1;
// DPRAM reads can be conducted combinationally
// DPRAM values should not change during FMC reads
assign i_fmc_dout = fmc_ctrl_reg_read ? po_dout_1 : po_dout;

// fmc write enable will be high for one lclk cycle
// following an fmc_wen negative edge
// burst writing is not supported
wire lclk_fmc_wren = i_fmc_wen_ne && !i_fmc_cen_1;

// select fmc addr, CEn based on whether
// a read operation is in progress
wire[11:0] fmc_addr_mux = i_fmc_oen == 0 ? i_fmc_a : i_fmc_a_1;
wire fmc_cen_mux = i_fmc_oen == 0 ? i_fmc_cen : i_fmc_cen_1;

xdom #(.N_CHANNELS(N_CHANNELS)) XDOM_0
(
  .clk(lclk),
  .rst(lclk_rst),
  .vnum(FW_VNUM),

  // trigger/wvb conf
  .xdom_trig_bundle(xdom_trig_bundle),
  .xdom_wvb_conf_bundle(xdom_wvb_conf_bundle),
  .xdom_wvb_arm(xdom_arm),
  .xdom_trig_run(xdom_trig_run),
  .wvb_rst(xdom_wvb_rst),

  // waveform buffer status
  .wvb_armed(wvb_armed),
  .wvb_overflow(wvb_overflow),
  .wfms_in_buf(wfms_in_buf),
  .wvb_not_empty(wvb_not_empty),
  .buf_wds_used(buf_wds_used),
  .wvb_hdr_full(wvb_hdr_full),

  // wvb reader
  .dpram_len_in(rdout_dpram_len),
  .rdout_dpram_run(rdout_dpram_run && !hbuf_enable),
  .dpram_busy(xdom_rdout_dpram_busy),
  .rdout_dpram_wren(rdout_dpram_wren && !hbuf_enable),
  .rdout_dpram_wr_addr(rdout_dpram_wr_addr),
  .rdout_dpram_data(rdout_dpram_data),
  .wvb_reader_enable(wvb_reader_enable),
  .wvb_reader_dpram_mode(wvb_reader_dpram_mode),

  // ADC / DISCR IO controls
  .adc_delay_tap_out(adc_delay_tap_out_xdom),
  .adc_io_reset(adc_io_reset_xdom),
  .discr_io_reset(discr_io_reset_xdom),
  .adc_delay_reset(adc_delay_reset_xdom),
  .adc_delay_ce(adc_delay_ce_xdom),
  .adc_delay_inc(adc_delay_inc_xdom),
  .adc_bitslip(adc_bitslip_xdom),
  .discr_bitslip(discr_bitslip_xdom),

  // ADC serial controls
  .adc_reset(ADC_RESET),
  .adc_spi_sel(adc_spi_sel),
  .adc_spi_req(adc_spi_req),
  .adc_spi_ack(adc_spi_ack),
  .adc_spi_wr_data(adc_spi_wr_data),
  .adc_spi_rd_data(adc_spi_rd_data),

  // AD5668 DAC serial controls
  .dac_spi_sel(dac_spi_sel),
  .dac_chip_sel(dac_chip_sel),
  .dac_spi_req(dac_spi_req),
  .dac_spi_ack(dac_spi_ack),
  .dac_spi_wr_data(dac_spi_wr_data),

  // AFE pulser
  .pulser_io_rst(pulser_io_rst),
  .pulser_trig_out(pulser_trig),
  .pulser_width(pulser_width),

  // ADS8332 monitoring ADCs
  .slo_adc_req(slo_adc_req),
  .slo_adc_ack(slo_adc_ack),
  .slo_adc_wr_data(slo_adc_wr_data),
  .slo_adc_rd_data(slo_adc_rd_data),
  .slo_adc_chip_sel(slo_adc_chip_sel),
  .slo_adc_nconvst(slo_adc_nconvst),

  // DDR3 interface
  .ddr3_ui_clk(ddr3_ui_clk),
  .pg_req_addr(xdom_pg_req_addr),
  .pg_optype(xdom_pg_optype),
  .pg_req(xdom_pg_req),
  .pg_ack(xdom_pg_ack),
  .ddr3_sys_rst(ddr3_sys_rst),
  .ddr3_cal_complete(ddr3_cal_complete),
  .ddr3_ui_sync_rst(ddr3_ui_sync_rst),
  .ddr3_device_temp(ddr3_device_temp_xdom),
  .ddr3_dpram_addr(ddr3_dpram_addr),
  .ddr3_dpram_wren(xdom_ddr3_dpram_wren),
  .ddr3_dpram_din(ddr3_dpram_din),
  .ddr3_dpram_dout(xdom_ddr3_dpram_dout),

  .ddr3_vtt_s3(DDR3_VTT_S3),
  .ddr3_vtt_s5(DDR3_VTT_S5),

  // hit buffer controller
  .hbuf_enable(hbuf_enable),
  .hbuf_start_pg(hbuf_start_pg),
  .hbuf_stop_pg(hbuf_stop_pg),
  .hbuf_first_pg(hbuf_first_pg),
  .hbuf_last_pg(hbuf_last_pg),
  .hbuf_pg_clr_count(hbuf_pg_clr_count),
  .hbuf_pg_clr_req(hbuf_pg_clr_req),
  .hbuf_pg_clr_ack(hbuf_pg_clr_ack),
  .hbuf_flush_req(hbuf_flush_req),
  .hbuf_flush_ack(hbuf_flush_ack),
  .hbuf_rd_pg_num(hbuf_rd_pg_num),
  .hbuf_wr_pg_num(hbuf_wr_pg_num),
  .hbuf_n_used_pgs(hbuf_n_used_pgs),
  .hbuf_empty(hbuf_empty),
  .hbuf_full(hbuf_full),
  .hbuf_buffered_data(hbuf_buffered_data),

  // scalers
  .scaler_period(scaler_period_xdom),
  .scaler_inhibit_len(scaler_inhibit_len_xdom),
  .disc_scaler_out(disc_scaler_out),
  .thresh_scaler_out(thresh_scaler_out),

  // ltc / sync
  .ltc_rd_data(ltc_rd_data[P_LTC_WIDTH-1:P_LTC_WIDTH-48]),
  .ltc_rd_req(ltc_rd_req),
  .ltc_rd_ack(ltc_rd_ack),
  .icm_fpga_sync_en(icm_fpga_sync_en),
  .icm_sync_rdy(icm_sync_rdy),
  .icm_sync_err(icm_sync_err),
  .expected_sync_ltc(expected_sync_ltc),
  .received_sync_ltc(received_sync_ltc),
  .icm_sync_err_cnt(icm_sync_err_cnt),

  .bsum_bundle(xdom_bsum_bundle),

  // FPGA_CAL_TRIG interface
  .fpga_cal_trig_width(cal_trig_width),
  .fpga_cal_trig_io_rst(cal_io_rst),
  .fpga_cal_trig_trig(cal_trig),
  .fpga_cal_trig_pol(cal_trig_pol),

  .dcdc_sync(DCDC_SYNC),

  // I2C
  .i2cm_0_ack(i2cm_0_ack),
  .i2cm_0_rx_data(i2cm_0_rx_data),
  .i2cm_0_i2c_acked(i2cm_0_i2c_acked),
  .i2cm_0_rx_fifo_full(i2cm_0_rx_fifo_full),
  .i2cm_0_rx_fifo_empty(i2cm_0_rx_fifo_empty),
  .i2cm_0_tx_fifo_full(i2cm_0_tx_fifo_full),
  .i2cm_0_tx_fifo_empty(i2cm_0_tx_fifo_empty),
  .i2cm_0_tx_fifo_wr_req(i2cm_0_tx_fifo_wr_req),
  .i2cm_0_rx_fifo_rd_req(i2cm_0_rx_fifo_rd_req),
  .i2cm_0_ex_req(i2cm_0_ex_req),
  .i2cm_0_i2c_ack(i2cm_0_i2c_ack),
  .i2cm_0_i2c_start(i2cm_0_i2c_start),
  .i2cm_0_i2c_stop(i2cm_0_i2c_stop),
  .i2cm_0_i2c_r_wn(i2cm_0_i2c_r_wn),
  .i2cm_0_tx_data(i2cm_0_tx_data),

  // global trigger
  .global_trig_en(global_trig_en),
  .global_trig_pol(global_trig_pol),
  .global_trig_src_mask(global_trig_src_mask),
  .global_trig_rcv_mask(global_trig_rcv_mask),

  // debug UART
  .debug_txd(FTD_UART_TXD),
  .debug_rxd(FTD_UART_RXD),
  .debug_rts_n(1'b0),
  .debug_cts_n(),

  // ICM UART
  .icm_tx(FPGA_UART_TX),
  .icm_rx(FPGA_UART_RX),
  .icm_rts(FPGA_UART_RTS),
  .icm_cts(FPGA_UART_CTS),

  // MCU UART
  .mcu_tx(1'b1),
  .mcu_rx(),
  .mcu_rts_n(1'b0),
  .mcu_cts_n(),

  // priority input / FMC
  .po_wr(lclk_fmc_wren),
  .po_en(!fmc_cen_mux),
  .po_a(fmc_addr_mux),
  .po_din(i_fmc_din_1),
  .po_dout(po_dout)
);
assign FTD_UART_CTSn = 0;

//
// local time counter and ICM synchronization logic
//
wire[P_LTC_WIDTH-1:0] ltc;
wire[P_LTC_WIDTH-1:0] ltc_wr_data;
wire ltc_wr_req;
wire i_fpga_sync;
IBUFGDS IBUF_FPGA_SYNC(.I(FPGA_SYNC_P), .IB(FPGA_SYNC_N), .O(i_fpga_sync));
icm_time_transfer #(.SHIFT_CNT(40), .EXPECTED_LTC_OFFSET(1)) ICM_TIME_TRANSFER (
  .clk(lclk),
  .rst(lclk_rst),
  .ltc(ltc[P_LTC_WIDTH-1:P_LTC_WIDTH-48]),
  .en(icm_fpga_sync_en),
  .ser_in(FPGA_GPIO_0),
  .sync_in(i_fpga_sync),
  .ltc_wr_data(ltc_wr_data[P_LTC_WIDTH-1:P_LTC_WIDTH-48]),
  .ltc_wr_req(ltc_wr_req),
  .rdy(icm_sync_rdy),
  .err(icm_sync_err),
  .expected_ltc(expected_sync_ltc),
  .received_ltc(received_sync_ltc)
);
// always set ltc LSB to 0 on ICM sync
assign ltc_wr_data[P_LTC_WIDTH-49:0] = 0;
posedge_counter ERR_COUNTER (
  .clk(lclk),
  .rst(lclk_rst),
  .en(icm_fpga_sync_en),
  .in(icm_sync_err),
  .cnt(icm_sync_err_cnt)
);

local_time_counter #(.P_LTC_WIDTH(P_LTC_WIDTH)) LTC_0 (
  .clk(lclk),
  .rst(lclk_rst),
  .ltc(ltc),
  .ltc_wr_data(ltc_wr_data),
  .ltc_wr_req(ltc_wr_req),
  .ltc_wr_ack(),
  .ltc_rd_data(ltc_rd_data),
  .ltc_rd_req(ltc_rd_req),
  .ltc_rd_ack(ltc_rd_ack)
);

// global trigger
wire[N_CHANNELS-1:0] global_trig_out;
global_trigger #(.N_CHANNELS(N_CHANNELS), .N_DISCR_BITS(N_DISCR_BITS)) GLOBAL_TRIG (
  .clk(lclk),
  .discr_stream(discr_data),
  .trig_out(global_trig_out),
  .enable(global_trig_en),
  .trig_pol(global_trig_pol),
  .src_mask(global_trig_src_mask),
  .receiver_mask(global_trig_rcv_mask)
);

//
// Waveform acquisition modules
//
// configuration currently shared between all channels
// ATF TODO: add separate configuration for each channel

wire[N_CHANNELS-1:0] wvb_hdr_rdreq;
wire[N_CHANNELS-1:0] wvb_wvb_rdreq;
wire[N_CHANNELS-1:0] wvb_rddone;
wire[N_CHANNELS*22-1:0] wvb_data_out;
wire[N_CHANNELS*P_HDR_WIDTH-1:0] wvb_hdr_data;

wire[N_CHANNELS-1:0] thresh_tot_out;

// register the xdom trigger/wvb configuration
(* max_fanout = 5 *) reg[L_WIDTH_MDOM_TRIG_BUNDLE-1:0] xdom_trig_bundle_reg;
(* max_fanout = 5 *) reg[L_WIDTH_MDOM_WVB_CONF_BUNDLE-1:0] xdom_wvb_conf_bundle_reg;
(* max_fanout = 5 *) reg[L_WIDTH_MDOM_BSUM_BUNDLE-1:0] xdom_bsum_bundle_reg;
always @(posedge lclk) begin
  xdom_trig_bundle_reg <= xdom_trig_bundle;
  xdom_wvb_conf_bundle_reg <= xdom_wvb_conf_bundle;
  xdom_bsum_bundle_reg <= xdom_bsum_bundle;
end

// external trigger
wire ext_trig_s;
sync SYNC_TRIG_IN(.clk(lclk),.rst_n(!lclk_rst),.a(TRIG_IN),.y(ext_trig_s));

generate
  for (i = 0; i < N_CHANNELS; i = i + 1) begin : waveform_acq_gen
    waveform_acquisition #(.P_ADR_WIDTH(P_WVB_ADR_WIDTH),
                           .P_HDR_WIDTH(P_HDR_WIDTH),
                           .P_LTC_WIDTH(P_LTC_WIDTH))
    WFM_ACQ
    (
      .clk(lclk),
      .rst(lclk_rst || xdom_wvb_rst[i]),

      .adc_data(adc_data[N_ADC_BITS*(i+1)-1 : N_ADC_BITS*i]),
      .discr_data(discr_data[N_DISCR_BITS*(i+1)-1 : N_DISCR_BITS*i]),

      // WVB reader interface
      .wvb_data_out(wvb_data_out[22*(i+1)-1 : 22*i]),
      .wvb_hdr_data_out(wvb_hdr_data[P_HDR_WIDTH*(i+1)-1 : P_HDR_WIDTH*i]),
      .wvb_hdr_full(wvb_hdr_full[i]),
      .wvb_hdr_empty(wvb_hdr_empty[i]),
      .wvb_n_wvf_in_buf(wfms_in_buf[16*(i+1)-1 : 16*i]),
      .wvb_wused(buf_wds_used[16*(i+1)-1 : 16*i]),
      .wvb_hdr_rdreq(wvb_hdr_rdreq[i]),
      .wvb_wvb_rdreq(wvb_wvb_rdreq[i]),
      .wvb_wvb_rddone(wvb_rddone[i]),

      // Local time counter
      .ltc_in(ltc),

      // External
      .ext_trig_in(ext_trig_s),
      .wvb_trig_out(),
      .wvb_trig_test_out(),

      .thresh_tot_out(thresh_tot_out[i]),

      // XDOM interface
      .xdom_arm(xdom_arm[i]),
      .xdom_trig_run(xdom_trig_run[i]),
      .xdom_wvb_trig_bundle(xdom_trig_bundle_reg),
      .xdom_wvb_config_bundle(xdom_wvb_conf_bundle_reg),
      .xdom_wvb_armed(wvb_armed[i]),
      .xdom_wvb_overflow(wvb_overflow[i]),

      .global_trigger(global_trig_out[i]),

      .icm_sync_rdy(icm_sync_rdy),

      .bsum_bundle(xdom_bsum_bundle_reg)
    );
  end
endgenerate

// scalers
(* max_fanout = 5 *) reg[31:0] scaler_period = 0;
(* max_fanout = 5 *) reg[31:0] scaler_inhibit_len = 0;
always @(posedge lclk) begin
  scaler_period <= scaler_period_xdom;
  scaler_inhibit_len <= scaler_inhibit_len_xdom;
end

generate
  for (i = 0; i < N_CHANNELS; i = i + 1) begin : scaler_gen
    discr_scaler DISC_SCALER (
      .clk(lclk),
      .rst(lclk_rst || xdom_wvb_rst[i]),
      .discr_in(discr_data[N_DISCR_BITS*(i+1)-1 : N_DISCR_BITS*i]),
      .period(scaler_period),
      .inhibit_len(scaler_inhibit_len),
      .n_pedge_out(disc_scaler_out[32*(i+1)-1 : 32*i]),
      .valid(),
      .update_out()
    );

    discr_scaler #(.P_INPUT_WIDTH(1)) THRESH_SCALER (
      .clk(lclk),
      .rst(lclk_rst || xdom_wvb_rst[i]),
      .discr_in(thresh_tot_out[i]),
      .period(scaler_period),
      .inhibit_len(scaler_inhibit_len),
      .n_pedge_out(thresh_scaler_out[32*(i+1)-1 : 32*i]),
      .valid(),
      .update_out()
    );
  end
endgenerate

//
// hit buffer controller
//
wire hbuf_dpram_busy;
wire[127:0] hbuf_dpram_dout;
wire[7:0] hbuf_dpram_addr;
wire hbuf_pg_req;
wire hbuf_pg_ack;
wire hbuf_pg_optype;
wire[27:0] hbuf_pg_req_addr;

hbuf_ctrl HBUF_CTRL_0
(
 .clk(lclk),
 .rst(lclk_rst),
 .en(hbuf_enable),

 .start_pg(hbuf_start_pg),
 .stop_pg(hbuf_stop_pg),
 .first_pg(hbuf_first_pg),
 .last_pg(hbuf_last_pg),

 .flush_req(hbuf_flush_req),
 .flush_ack(hbuf_flush_ack),

 .empty(hbuf_empty),
 .full(hbuf_full),
 .rd_pg_num(hbuf_rd_pg_num),
 .wr_pg_num(hbuf_wr_pg_num),
 .n_used_pgs(hbuf_n_used_pgs),

 .pg_clr_cnt(hbuf_pg_clr_count),
 .pg_clr_req(hbuf_pg_clr_req),
 .pg_clr_ack(hbuf_pg_clr_ack),

 .buffered_data(hbuf_buffered_data),

 .dpram_len_in(rdout_dpram_len),
 .rdout_dpram_run(rdout_dpram_run && hbuf_enable),
 .dpram_busy(hbuf_dpram_busy),
 .rdout_dpram_wren(rdout_dpram_wren && hbuf_enable),

 .rdout_dpram_wr_addr(rdout_dpram_wr_addr),
 .rdout_dpram_data(rdout_dpram_data),

 .ddr3_ui_clk(ddr3_ui_clk),
 .ddr3_dpram_dout(hbuf_dpram_dout),
 .ddr3_dpram_rd_addr(ddr3_dpram_addr),

 .pg_ack(hbuf_pg_ack),
 .pg_req(hbuf_pg_req),
 .pg_optype(hbuf_pg_optype),
 .pg_addr(hbuf_pg_req_addr)
);

//
// Waveform buffer reader
//
reg i_wvb_reader_en_1 = 0;
reg i_wvb_reader_en_2 = 0;
always @(posedge lclk) begin
  i_wvb_reader_en_1 <= wvb_reader_enable;
  i_wvb_reader_en_2 <= i_wvb_reader_en_1;
end

wire rdout_dpram_busy = hbuf_enable ? hbuf_dpram_busy : xdom_rdout_dpram_busy;

wvb_reader #(.N_CHANNELS(N_CHANNELS),
             .P_WVB_ADR_WIDTH(P_WVB_ADR_WIDTH),
             .P_HDR_WIDTH(P_HDR_WIDTH),
             .P_FMT(P_FMT))
WVB_READER
(
  .clk(lclk),
  .rst(lclk_rst),
  .en(i_wvb_reader_en_2),

  // dpram interface
  .dpram_data(rdout_dpram_data),
  .dpram_addr(rdout_dpram_wr_addr),
  .dpram_wren(rdout_dpram_wren),
  .dpram_len(rdout_dpram_len),
  .dpram_run(rdout_dpram_run),
  .dpram_busy(rdout_dpram_busy),
  .dpram_mode(wvb_reader_dpram_mode),

  // wvb interface
  .hdr_rdreq(wvb_hdr_rdreq),
  .wvb_rdreq(wvb_wvb_rdreq),
  .wvb_rddone(wvb_rddone),
  .wvb_data(wvb_data_out),
  .hdr_data(wvb_hdr_data),
  .hdr_empty(wvb_hdr_empty)
);

//
// DDR3 pg transfer mux
// runs in DDR3 UI clock domain
//

wire ddr3_pg_req;
wire ddr3_pg_optype;
wire ddr3_pg_ack;
wire[27:0] ddr3_pg_req_addr;
wire[127:0] ddr3_dpram_dout;
wire ddr3_dpram_wren;

DDR3_pg_transfer_mux DDR3_MUX
(
 .clk(ddr3_ui_clk),
 .rst(ddr3_ui_sync_rst),

 .hbuf_pg_req(hbuf_pg_req),
 .hbuf_pg_optype(hbuf_pg_optype),
 .hbuf_pg_ack(hbuf_pg_ack),
 .hbuf_pg_req_addr(hbuf_pg_req_addr),
 .hbuf_dpram_dout(hbuf_dpram_dout),

 .xdom_pg_req(xdom_pg_req),
 .xdom_pg_optype(xdom_pg_optype),
 .xdom_pg_ack(xdom_pg_ack),
 .xdom_pg_req_addr(xdom_pg_req_addr),
 .xdom_dpram_dout(xdom_ddr3_dpram_dout),
 .xdom_dpram_wren(xdom_ddr3_dpram_wren),

 .ddr3_pg_req(ddr3_pg_req),
 .ddr3_pg_optype(ddr3_pg_optype),
 .ddr3_pg_ack(ddr3_pg_ack),
 .ddr3_pg_req_addr(ddr3_pg_req_addr),
 .ddr3_dpram_dout(ddr3_dpram_dout),
 .ddr3_dpram_wren(ddr3_dpram_wren)
);

//
// DDR3 page transter
//
wire[11:0] ddr3_device_temp;
wire ref_clk = clk_200MHz;
DDR3_DPRAM_transfer DDR3_TRANSFER_0
(
 .ddr3_dq(ddr3_dq),
 .ddr3_dqs_n(ddr3_dqs_n),
 .ddr3_dqs_p(ddr3_dqs_p),
 .ddr3_addr(ddr3_addr),
 .ddr3_ba(ddr3_ba),
 .ddr3_ras_n(ddr3_ras_n),
 .ddr3_cas_n(ddr3_cas_n),
 .ddr3_we_n(ddr3_we_n),
 .ddr3_reset_n(ddr3_reset_n),
 .ddr3_ck_p(ddr3_ck_p),
 .ddr3_ck_n(ddr3_ck_n),
 .ddr3_cke(ddr3_cke),
 .ddr3_cs_n(ddr3_cs_n),
 .ddr3_dm(ddr3_dm),
 .ddr3_odt(ddr3_odt),
 .sys_clk_i(sys_clk_i),
 .clk_ref_i(ref_clk),

 .ui_clk(ddr3_ui_clk),

 .sys_rst(ddr3_sys_rst),

 .pg_req(ddr3_pg_req),
 .pg_optype(ddr3_pg_optype),
 .pg_req_addr(ddr3_pg_req_addr),
 .pg_ack(ddr3_pg_ack),

 .init_calib_complete(ddr3_cal_complete),
 .ui_clk_sync_rst(ddr3_ui_sync_rst),
 .device_temp(ddr3_device_temp),

 .dpram_dout(ddr3_dpram_dout),
 .dpram_din(ddr3_dpram_din),
 .dpram_addr(ddr3_dpram_addr),
 .dpram_wren(ddr3_dpram_wren)
);

fpga_temp_sync TEMP_SYNC ( 
  .lclk(lclk),
  .lclk_rst(lclk_rst),
  .ddr3_clk(ddr3_ui_clk),
  .ddr3_clk_rst(ddr3_ui_sync_rst),
  .device_temp_in(ddr3_device_temp),
  .device_temp_out(ddr3_device_temp_xdom)
);

//
// ADC3424 serial controls
//
wire[23:0] wide_adc_spi_rd_data;
spi_master #(.P_RD_DATA_WIDTH(24), .P_WR_DATA_WIDTH(24)) ADC3424_SPI (
  // Outputs
  .rd_data(wide_adc_spi_rd_data),
  .ack    (adc_spi_ack),
  .mosi   (ADC_SDATA),
  .sclk   (ADC_SCLK),
  // Inputs
  .clk    (lclk),
  .rst    (lclk_rst),
  // MOSI
  .nb_mosi    (32'd24),
  .y0_mosi    (1'b0),
  .n0_mosi    (32'd50),
  .n1_mosi    (32'd100),
  // MISO
  .nb_miso    (32'd24),
  .n0_miso    (32'd1),
  .n1_miso    (32'd100),
  // SCLK
  .nb_sclk    (32'd24),
  .y0_sclk    (1'b0),
  .n0_sclk    (32'd100),
  .n1_sclk    (32'd50),
  .n2_sclk    (32'd50),
  .wr_req   (adc_spi_req),
  .wr_data    (adc_spi_wr_data),
  .rd_req   (adc_spi_req),
  .miso   (ADC0_SDOUT)
);
assign adc_spi_rd_data = wide_adc_spi_rd_data[7:0];
assign ADC0_SEN = !(adc_spi_req && adc_spi_sel[0]);
assign ADC1_SEN = !(adc_spi_req && adc_spi_sel[1]);
assign ADC2_SEN = !(adc_spi_req && adc_spi_sel[2]);
assign ADC3_SEN = !(adc_spi_req && adc_spi_sel[3]);
assign ADC4_SEN = !(adc_spi_req && adc_spi_sel[4]);
assign ADC5_SEN = !(adc_spi_req && adc_spi_sel[5]);

//
// ADC5668 DAC serial controls
//
wire dac_spi_mosi;
wire dac_spi_sclk;
spi_master #(.P_RD_DATA_WIDTH(32), .P_WR_DATA_WIDTH(32)) AD5668_SPI (
  // Outputs
  .rd_data    (),
  .ack    (dac_spi_ack),
  .mosi   (dac_spi_mosi),
  .sclk   (dac_spi_sclk),
  // Inputs
  .clk    (lclk),
  .rst    (lclk_rst),
  // MOSI
  .nb_mosi    (32'd32),
  .y0_mosi    (1'b0),
  .n0_mosi    (32'd1),
  .n1_mosi    (32'd100),
  // MISO
  .nb_miso    (32'd32),
  .n0_miso    (32'd50),
  .n1_miso    (32'd50),
  // SCLK
  .nb_sclk    (32'd32),
  .y0_sclk    (1'b1),
  .n0_sclk    (32'd50),
  .n1_sclk    (32'd50),
  .n2_sclk    (32'd50),
  .wr_req   (dac_spi_req),
  .wr_data    (dac_spi_wr_data),
  .rd_req   (1'b0),
  .miso   (1'b0)
);

assign DAC0_SCLK = dac_spi_sel[0] ? dac_spi_sclk : 1'b1;
assign DAC0_DIN = dac_spi_sel[0] ? dac_spi_mosi : 1'b0;
assign DAC0_nSYNC0 = !(dac_spi_req && dac_spi_sel[0] && dac_chip_sel[0]);
assign DAC0_nSYNC1 = !(dac_spi_req && dac_spi_sel[0] && dac_chip_sel[1]);
assign DAC0_nSYNC2 = !(dac_spi_req && dac_spi_sel[0] && dac_chip_sel[2]);

assign DAC1_SCLK = dac_spi_sel[1] ? dac_spi_sclk : 1'b1;
assign DAC1_DIN = dac_spi_sel[1] ? dac_spi_mosi : 1'b0;
assign DAC1_nSYNC0 = !(dac_spi_req && dac_spi_sel[1] && dac_chip_sel[0]);
assign DAC1_nSYNC1 = !(dac_spi_req && dac_spi_sel[1] && dac_chip_sel[1]);
assign DAC1_nSYNC2 = !(dac_spi_req && dac_spi_sel[1] && dac_chip_sel[2]);

assign DAC2_SCLK = dac_spi_sel[2] ? dac_spi_sclk : 1'b1;
assign DAC2_DIN = dac_spi_sel[2] ? dac_spi_mosi : 1'b0;
assign DAC2_nSYNC0 = !(dac_spi_req && dac_spi_sel[2] && dac_chip_sel[0]);
assign DAC2_nSYNC1 = !(dac_spi_req && dac_spi_sel[2] && dac_chip_sel[1]);
assign DAC2_nSYNC2 = !(dac_spi_req && dac_spi_sel[2] && dac_chip_sel[2]);

// ADS8332 monitoring ADCs SPI
wire slo_adc_mosi;
wire slo_adc_miso;
wire slo_adc_sclk;
spi_master #(.P_RD_DATA_WIDTH(19), .P_WR_DATA_WIDTH(19)) ADS8332_SPI (
  // Outputs
  .rd_data (slo_adc_rd_data),
  .ack     (slo_adc_ack),
  .mosi    (slo_adc_mosi),
  .sclk    (slo_adc_sclk),
  // Inputs
  .clk     (lclk),
  .rst     (lclk_rst),
  // MOSI
  .nb_mosi (8'd19),
  .y0_mosi (1'b0),
  .n0_mosi (20),
  .n1_mosi (60),
  // MISO
  .nb_miso (8'd19),
  .n0_miso (1),
  .n1_miso (60),
  // SCLK
  .nb_sclk (8'd19),
  .y0_sclk (1'b1),
  .n0_sclk (70),
  .n1_sclk (30),
  .n2_sclk (30),
  .wr_req  (slo_adc_req),
  .wr_data (slo_adc_wr_data),
  .rd_req  (slo_adc_req),
  .miso    (slo_adc_miso)
);

assign MON_ADC1_CONVn = slo_adc_nconvst;
assign MON_ADC1_CSn = !(slo_adc_chip_sel == 0 && slo_adc_req);
assign MON_ADC1_SCLK = slo_adc_chip_sel == 0 ? slo_adc_sclk : 1'b1;
assign MON_ADC1_SDI = slo_adc_chip_sel == 0 ? slo_adc_mosi : 1'b0;
assign MON_ADC2_CONVn = slo_adc_nconvst;
assign MON_ADC2_CSn = !(slo_adc_chip_sel == 1 && slo_adc_req);
assign MON_ADC2_SCLK = slo_adc_chip_sel == 1 ? slo_adc_sclk : 1'b1;
assign MON_ADC2_SDI = slo_adc_chip_sel == 1 ? slo_adc_mosi : 1'b0;
assign slo_adc_miso = slo_adc_chip_sel == 0 ? MON_ADC1_SDO : MON_ADC2_SDO;

//
// AFE pulser
//
// For the v1 test setup, TRIG_OUT is connected to AFE0_TP
afe_pulser PULSER_0 (
  .lclk(lclk),
  .lclk_rst(lclk_rst),
  .divclk(discr_fclk_120MHz),
  .divclk_rst(!idelay_discrclk_locked),
  .fastclk(clk_480MHz),
  .io_rst(pulser_io_rst[0]),
  .trig(pulser_trig[0]),
  .y0(1'b1),
  .width(pulser_width),
  .out(TRIG_OUT),
  .out_n()
);

// FPGA_CAL trigger; treat it as an independent AFE pulser channel
afe_pulser #(.DIFFERENTIAL(1)) CAL_PULSER_0 (
  .lclk(lclk),
  .lclk_rst(lclk_rst),
  .divclk(discr_fclk_120MHz),
  .divclk_rst(!idelay_discrclk_locked),
  .fastclk(clk_480MHz),
  .io_rst(cal_io_rst),
  .trig(cal_trig),
  .y0(cal_trig_pol),
  .width(cal_trig_width),
  .out(FPGA_CAL_TRIG_P),
  .out_n(FPGA_CAL_TRIG_N)
);

// FPGA I2C
PULLUP PU_SDA(.O(FPGA_I2C_SDA));
PULLUP PU_SCL(.O(FPGA_I2C_SCL));

wire   i2cm_0_scl;
wire   i2cm_0_sda;
i2c_master I2CM_0 (
  // Outputs
  .ack(i2cm_0_ack),
  .rx_data(i2cm_0_rx_data[7:0]),
  .i2c_acked(i2cm_0_i2c_acked),
  .i2c_rx_fifo_full(i2cm_0_rx_fifo_full),
  .i2c_rx_fifo_empty(i2cm_0_rx_fifo_empty),
  .i2c_tx_fifo_full(i2cm_0_tx_fifo_full),
  .i2c_tx_fifo_empty(i2cm_0_tx_fifo_empty),
  .scl_o(i2cm_0_scl),
  .sda_o(i2cm_0_sda),
  // Inputs
  .clk(lclk),
  .rst(lclk_rst),
  .scl_i(FPGA_I2C_SCL),
  .sda_i(FPGA_I2C_SDA),
  .tx_req(i2cm_0_tx_fifo_wr_req),
  .rx_req(i2cm_0_rx_fifo_rd_req),
  .ex_req(i2cm_0_ex_req),
  .i2c_ack(i2cm_0_i2c_ack),
  .i2c_start(i2cm_0_i2c_start),
  .i2c_stop(i2cm_0_i2c_stop),
  .i2c_r_wn(i2cm_0_i2c_r_wn),
  .tx_data(i2cm_0_tx_data[7:0]),
  .i2c_n0(32'd1000),
  .i2c_start_n0(32'd500),
  .i2c_start_n1(32'd500),
  .i2c_data_n0(32'd333),
  .i2c_data_n1(32'd333),
  .i2c_data_n2(32'd334),
  .i2c_ack_n0(32'd333),
  .i2c_ack_n1(32'd333),
  .i2c_ack_n2(32'd334),
  .i2c_complete_n0(32'd1000),
  .i2c_stop_n0(32'd333),
  .i2c_stop_n1(32'd533),
  .i2c_stop_n2(32'd134)
);
assign FPGA_I2C_SCL = i2cm_0_scl ? 1'bz : 1'b0;
assign FPGA_I2C_SDA = i2cm_0_sda ? 1'bz : 1'b0;

//
// LED test pattern
//
wire[2:0] kr_out;
knight_rider KR_0(.clk(lclk), .rst(lclk_rst), .y(kr_out));
assign LED_YELLOW = kr_out[0];
assign LED_GREEN = kr_out[1];
assign LED_ORANGE = kr_out[2];

endmodule
