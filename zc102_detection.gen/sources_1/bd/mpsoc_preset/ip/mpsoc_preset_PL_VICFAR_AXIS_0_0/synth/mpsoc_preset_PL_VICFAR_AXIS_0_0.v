// (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: User_Company:SysGen:PL_VICFAR_AXIS:1.0
// IP Revision: 307466707

(* X_CORE_INFO = "vicfar1,Vivado 2022.2" *)
(* CHECK_LICENSE_TYPE = "mpsoc_preset_PL_VICFAR_AXIS_0_0,vicfar1,{}" *)
(* IP_DEFINITION_SOURCE = "sysgen" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module mpsoc_preset_PL_VICFAR_AXIS_0_0 (
  aresetin,
  aresetin_i_vicfar_im,
  aresetin_i_vicfar_re,
  i_vicfar_det_tready,
  i_vicfar_im,
  i_vicfar_im_tlast,
  i_vicfar_im_tvalid,
  i_vicfar_re,
  i_vicfar_re_tlast,
  i_vicfar_re_tvalid,
  i_vicfar_thd_tready,
  clk,
  o_vicfar_det_tlast,
  o_vicfar_det_tvalid,
  o_vicfar_detection,
  o_vicfar_im_tready,
  o_vicfar_re_tready,
  o_vicfar_thd_tlast,
  o_vicfar_thd_tvalid,
  o_vicfar_threshold
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *)
input wire [0 : 0] aresetin;
input wire [0 : 0] aresetin_i_vicfar_im;
input wire [0 : 0] aresetin_i_vicfar_re;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_vicfar_det TREADY" *)
input wire [0 : 0] i_vicfar_det_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_vicfar_im TDATA" *)
input wire [31 : 0] i_vicfar_im;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_vicfar_im TLAST" *)
input wire [0 : 0] i_vicfar_im_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_vicfar_im TVALID" *)
input wire [0 : 0] i_vicfar_im_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_vicfar_re TDATA" *)
input wire [31 : 0] i_vicfar_re;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_vicfar_re TLAST" *)
input wire [0 : 0] i_vicfar_re_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_vicfar_re TVALID" *)
input wire [0 : 0] i_vicfar_re_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_vicfar_thd TREADY" *)
input wire [0 : 0] i_vicfar_thd_tready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF i_vicfar_im:i_vicfar_re:o_vicfar_det:o_vicfar_thd:m_axis_vicfar_thd:m_axis_vicfar_det:s_axis_vicfar_re:s_axis_vicfar_im, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_vicfar_det TLAST" *)
output wire [0 : 0] o_vicfar_det_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_vicfar_det TVALID" *)
output wire [0 : 0] o_vicfar_det_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_vicfar_det, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 250000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_vicfar_det TDATA" *)
output wire [7 : 0] o_vicfar_detection;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_vicfar_im, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 250000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attrib\
s {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_vicfar_im TREADY" *)
output wire [0 : 0] o_vicfar_im_tready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_vicfar_re, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 250000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attrib\
s {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_vicfar_re TREADY" *)
output wire [0 : 0] o_vicfar_re_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_vicfar_thd TLAST" *)
output wire [0 : 0] o_vicfar_thd_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_vicfar_thd TVALID" *)
output wire [0 : 0] o_vicfar_thd_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_vicfar_thd, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 250000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_vicfar_thd TDATA" *)
output wire [23 : 0] o_vicfar_threshold;

  vicfar1 inst (
    .aresetin(aresetin),
    .aresetin_i_vicfar_im(aresetin_i_vicfar_im),
    .aresetin_i_vicfar_re(aresetin_i_vicfar_re),
    .i_vicfar_det_tready(i_vicfar_det_tready),
    .i_vicfar_im(i_vicfar_im),
    .i_vicfar_im_tlast(i_vicfar_im_tlast),
    .i_vicfar_im_tvalid(i_vicfar_im_tvalid),
    .i_vicfar_re(i_vicfar_re),
    .i_vicfar_re_tlast(i_vicfar_re_tlast),
    .i_vicfar_re_tvalid(i_vicfar_re_tvalid),
    .i_vicfar_thd_tready(i_vicfar_thd_tready),
    .clk(clk),
    .o_vicfar_det_tlast(o_vicfar_det_tlast),
    .o_vicfar_det_tvalid(o_vicfar_det_tvalid),
    .o_vicfar_detection(o_vicfar_detection),
    .o_vicfar_im_tready(o_vicfar_im_tready),
    .o_vicfar_re_tready(o_vicfar_re_tready),
    .o_vicfar_thd_tlast(o_vicfar_thd_tlast),
    .o_vicfar_thd_tvalid(o_vicfar_thd_tvalid),
    .o_vicfar_threshold(o_vicfar_threshold)
  );
endmodule
