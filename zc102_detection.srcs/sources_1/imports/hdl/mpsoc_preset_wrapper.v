//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Thu Mar  9 06:27:19 2023
//Host        : DESKTOP-L5VUIVN running 64-bit major release  (build 9200)
//Command     : generate_target mpsoc_preset_wrapper.bd
//Design      : mpsoc_preset_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module mpsoc_preset_wrapper
   (led_8bits_tri_o);
  output [7:0]led_8bits_tri_o;

  wire [7:0]led_8bits_tri_o;

  mpsoc_preset mpsoc_preset_i
       (.led_8bits_tri_o(led_8bits_tri_o));
endmodule
