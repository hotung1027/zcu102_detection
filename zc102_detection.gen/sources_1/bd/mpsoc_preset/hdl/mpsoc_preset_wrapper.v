//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Thu Mar  9 08:15:03 2023
//Host        : DESKTOP-L5VUIVN running 64-bit major release  (build 9200)
//Command     : generate_target mpsoc_preset_wrapper.bd
//Design      : mpsoc_preset_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module mpsoc_preset_wrapper
   (USER_SYSCLK_SI570_clk_n,
    USER_SYSCLK_SI570_clk_p,
    i_CMOS_Data_0,
    i_Mode_0,
    i_Port_0,
    i_SPI_MISO_0,
    i_Switch_0,
    i_Trigger_0,
    o_LED_0,
    o_SPI_CS_0,
    o_SPI_Clk_0,
    o_SPI_MOSI_0);
  input USER_SYSCLK_SI570_clk_n;
  input USER_SYSCLK_SI570_clk_p;
  input [11:0]i_CMOS_Data_0;
  input i_Mode_0;
  input i_Port_0;
  input i_SPI_MISO_0;
  input i_Switch_0;
  input i_Trigger_0;
  output [7:0]o_LED_0;
  output o_SPI_CS_0;
  output o_SPI_Clk_0;
  output o_SPI_MOSI_0;

  wire USER_SYSCLK_SI570_clk_n;
  wire USER_SYSCLK_SI570_clk_p;
  wire [11:0]i_CMOS_Data_0;
  wire i_Mode_0;
  wire i_Port_0;
  wire i_SPI_MISO_0;
  wire i_Switch_0;
  wire i_Trigger_0;
  wire [7:0]o_LED_0;
  wire o_SPI_CS_0;
  wire o_SPI_Clk_0;
  wire o_SPI_MOSI_0;

  mpsoc_preset mpsoc_preset_i
       (.USER_SYSCLK_SI570_clk_n(USER_SYSCLK_SI570_clk_n),
        .USER_SYSCLK_SI570_clk_p(USER_SYSCLK_SI570_clk_p),
        .i_CMOS_Data_0(i_CMOS_Data_0),
        .i_Mode_0(i_Mode_0),
        .i_Port_0(i_Port_0),
        .i_SPI_MISO_0(i_SPI_MISO_0),
        .i_Switch_0(i_Switch_0),
        .i_Trigger_0(i_Trigger_0),
        .o_LED_0(o_LED_0),
        .o_SPI_CS_0(o_SPI_CS_0),
        .o_SPI_Clk_0(o_SPI_Clk_0),
        .o_SPI_MOSI_0(o_SPI_MOSI_0));
endmodule
