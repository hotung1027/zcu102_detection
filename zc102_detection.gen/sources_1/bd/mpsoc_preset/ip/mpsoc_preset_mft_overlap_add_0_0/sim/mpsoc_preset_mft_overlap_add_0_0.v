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


// IP VLNV: User_Company:SysGen:mft_overlap_add:1.0
// IP Revision: 309093545

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "sysgen" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module mpsoc_preset_mft_overlap_add_0_0 (
  aresetin,
  i_mf_tdata,
  i_mf_tlast,
  i_mf_tvalid,
  o_mf_re_tready,
  o_mf_im_tready,
  clk,
  i_mf_tready,
  o_mf_im_tdata,
  o_mf_im_tlast,
  o_mf_im_tvalid,
  o_mf_re_tdata,
  o_mf_re_tlast,
  o_mf_re_tvalid
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *)
input wire [0 : 0] aresetin;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 i_mf TDATA" *)
input wire [31 : 0] i_mf_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 i_mf TLAST" *)
input wire [0 : 0] i_mf_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 i_mf TVALID" *)
input wire [0 : 0] i_mf_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 o_mf_re TREADY" *)
input wire [0 : 0] o_mf_re_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 o_mf_im TREADY" *)
input wire [0 : 0] o_mf_im_tready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF i_mf:o_mf_im:o_mf_re, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_mf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}}\
 value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 250000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 i_mf TREADY" *)
output wire [0 : 0] i_mf_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 o_mf_im TDATA" *)
output wire [31 : 0] o_mf_im_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 o_mf_im TLAST" *)
output wire [0 : 0] o_mf_im_tlast;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME o_mf_im, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum \
{}} value 24} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 250000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 o_mf_im TVALID" *)
output wire [0 : 0] o_mf_im_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 o_mf_re TDATA" *)
output wire [31 : 0] o_mf_re_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 o_mf_re TLAST" *)
output wire [0 : 0] o_mf_re_tlast;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME o_mf_re, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum \
{}} value 24} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 250000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 o_mf_re TVALID" *)
output wire [0 : 0] o_mf_re_tvalid;

  mft_overlap_add_2022_0303 inst (
    .aresetin(aresetin),
    .i_mf_tdata(i_mf_tdata),
    .i_mf_tlast(i_mf_tlast),
    .i_mf_tvalid(i_mf_tvalid),
    .o_mf_re_tready(o_mf_re_tready),
    .o_mf_im_tready(o_mf_im_tready),
    .clk(clk),
    .i_mf_tready(i_mf_tready),
    .o_mf_im_tdata(o_mf_im_tdata),
    .o_mf_im_tlast(o_mf_im_tlast),
    .o_mf_im_tvalid(o_mf_im_tvalid),
    .o_mf_re_tdata(o_mf_re_tdata),
    .o_mf_re_tlast(o_mf_re_tlast),
    .o_mf_re_tvalid(o_mf_re_tvalid)
  );
endmodule
