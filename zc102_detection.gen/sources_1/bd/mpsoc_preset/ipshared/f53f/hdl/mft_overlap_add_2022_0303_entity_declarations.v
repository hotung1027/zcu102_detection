//-----------------------------------------------------------------
// System Generator version 2022.2 Verilog source file.
//
// Copyright(C) 2022 by Xilinx, Inc.  All rights reserved.  This
// text/file contains proprietary, confidential information of Xilinx,
// Inc., is distributed under license from Xilinx, Inc., and may be used,
// copied and/or disclosed only pursuant to the terms of a valid license
// agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
// this text/file solely for design, simulation, implementation and
// creation of design files limited to Xilinx devices or technologies.
// Use with non-Xilinx devices or technologies is expressly prohibited
// and immediately terminates your license unless covered by a separate
// agreement.
//
// Xilinx is providing this design, code, or information "as is" solely
// for use in developing programs and solutions for Xilinx devices.  By
// providing this design, code, or information as one possible
// implementation of this feature, application or standard, Xilinx is
// making no representation that this implementation is free from any
// claims of infringement.  You are responsible for obtaining any rights
// you may require for your implementation.  Xilinx expressly disclaims
// any warranty whatsoever with respect to the adequacy of the
// implementation, including but not limited to warranties of
// merchantability or fitness for a particular purpose.
//
// Xilinx products are not intended for use in life support appliances,
// devices, or systems.  Use in such applications is expressly prohibited.
//
// Any modifications that are made to the source code are done at the user's
// sole risk and will be unsupported.
//
// This copyright and support notice must be retained as part of this
// text at all times.  (c) Copyright 1995-2022 Xilinx, Inc.  All rights
// reserved.
//-----------------------------------------------------------------

`include "conv_pkg.v"
`timescale 1 ns / 10 ps
module mft_overlap_add_2022_0303_xlaxis
  #(parameter tdata_width   = -1,
   parameter tdata_width_net = -1,
   parameter tdest_width     = -1,
   parameter tid_width       = -1,
   parameter tuser_width     = -1,
   parameter has_aresetn     = -1,
   parameter mem_type        = "auto",
   parameter depth_bits      = -1,
   parameter depth           = 2048)
  (input [tdata_width-1:0] s_axis_tdata,
   input [tdest_width-1:0] s_axis_tdest,
   input [tdata_width/8-1:0] s_axis_tstrb, s_axis_tkeep,
   input [tid_width-1:0] s_axis_tid,
   input [tuser_width-1:0] s_axis_tuser,
   input s_aclk, ce, aresetn, s_axis_tlast, s_axis_tvalid, m_axis_tready,
   input [tid_width-1:0] m_axis_tid,
   input [tuser_width-1:0] m_axis_tuser,
   output [tdata_width-1:0] m_axis_tdata,
   output [tdest_width-1:0] m_axis_tdest,
   output [tdata_width/8-1:0] m_axis_tstrb, m_axis_tkeep,
   output [depth_bits-1:0] axis_data_count, 
   output s_axis_tready, m_axis_tlast, m_axis_tvalid, almost_empty_axis, almost_full_axis, prog_empty_axis, prog_full_axis);

generate
xpm_fifo_axis #(
  .CDC_SYNC_STAGES     (2), 
  .CLOCKING_MODE       ("common_clock"), 
  .ECC_MODE            ("no_ecc"),
  .FIFO_DEPTH          (depth),
  .FIFO_MEMORY_TYPE    ("block"),
  .PACKET_FIFO         ("false"),
  .PROG_EMPTY_THRESH   (10),
  .PROG_FULL_THRESH    (10),
  .RD_DATA_COUNT_WIDTH (1),
  .RELATED_CLOCKS      (0),
  .TDATA_WIDTH         (tdata_width),
  .TDEST_WIDTH         (tdest_width),
  .USE_ADV_FEATURES    ("1707"),
  .WR_DATA_COUNT_WIDTH (depth_bits),
  .TID_WIDTH           (tid_width),
  .TUSER_WIDTH         (tuser_width)
) xpm_fifo_axis_inst (
     .almost_empty_axis  (almost_empty_axis),
     .almost_full_axis   (almost_full_axis),
     .dbiterr_axis       (open),
     .m_axis_tdata       (m_axis_tdata),
     .m_axis_tdest       (m_axis_tdest),
     .m_axis_tid         (m_axis_tid),
     .m_axis_tkeep       (m_axis_tkeep),
     .m_axis_tlast       (m_axis_tlast),
     .m_axis_tstrb       (m_axis_tstrb),
     .m_axis_tuser       (m_axis_tuser),
     .m_axis_tvalid      (m_axis_tvalid),
     .prog_empty_axis    (open),
     .prog_full_axis     (open),
     .rd_data_count_axis (open),
     .s_axis_tready      (s_axis_tready),
     .sbiterr_axis       (open),
     .wr_data_count_axis (axis_data_count),
     .injectdbiterr_axis (0),
     .injectsbiterr_axis (0),
     .m_aclk             (s_aclk),
     .m_axis_tready      (m_axis_tready),
     .s_aclk             (s_aclk),
     .s_aresetn          (aresetn),
     .s_axis_tdata       (s_axis_tdata),
     .s_axis_tdest       (s_axis_tdest),
     .s_axis_tid         (s_axis_tid),
     .s_axis_tkeep       (s_axis_tkeep),
     .s_axis_tlast       (s_axis_tlast),
     .s_axis_tstrb       (s_axis_tstrb),
     .s_axis_tuser       (s_axis_tuser),
     .s_axis_tvalid      (s_axis_tvalid)
);
endgenerate
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_19de62f6a5 (
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 1'b1;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_3fd1271f6f (
  output [(16 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 16'b0000000000000000;
endmodule
`timescale 1 ns / 10 ps


module mft_overlap_add_2022_0303_xlconvert (din, clk, ce, clr, en, dout);

//Parameter Definitions
   parameter din_width= 16;
   parameter din_bin_pt= 4;
   parameter din_arith= `xlUnsigned;
   parameter dout_width= 8;
   parameter dout_bin_pt= 2;
   parameter dout_arith= `xlUnsigned;
   parameter en_width = 1;
   parameter en_bin_pt = 0;
   parameter en_arith = `xlUnsigned;
   parameter bool_conversion = 0;
   parameter latency = 0;
   parameter quantization= `xlTruncate;
   parameter overflow= `xlWrap;

//Port Declartions
   input [din_width-1:0] din;
   input clk, ce, clr;
   input [en_width-1:0] en;
   output [dout_width-1:0] dout;

//Wire Declartions
   wire [dout_width-1:0]   result;
   wire internal_ce;
   assign internal_ce = ce & en[0];

generate
 if (bool_conversion == 1)
    begin:bool_converion_generate
       assign result = din;
    end
 else
    begin:std_conversion
       convert_type #(din_width,
                      din_bin_pt,
                      din_arith,
		              dout_width,
                      dout_bin_pt,
                      dout_arith,
                      quantization,
                      overflow)
        conv_udp (.inp(din), .res(result));
    end
endgenerate

generate
if (latency > 0)
     begin:latency_test
	synth_reg # (dout_width, latency)
	  reg1 (
	       .i(result),
	       .ce(internal_ce),
	       .clr(clr),
	       .clk(clk),
	       .o(dout));
     end
else
     begin:latency0
	assign dout = result;
     end
endgenerate

endmodule

`timescale 1 ns / 10 ps
module sub_module_mft_overlap_add_2022_0303_xlconvert_pipeline (inp, en, clk, ce, clr, res);
   parameter signed [31:0]  old_width = 4;
   parameter signed [31:0]  old_bin_pt = 2;
   parameter signed [31:0]  old_arith = `xlSigned;
   parameter signed [31:0]  new_width = 4;
   parameter signed [31:0]  new_bin_pt = 1;
   parameter signed [31:0]  new_arith = `xlSigned;
   parameter signed [31:0]  en_width = 1;
   parameter signed [31:0]  en_bin_pt = 0;
   parameter signed [31:0]  en_arith = `xlSigned;
   parameter signed [31:0]  quantization = `xlTruncate;
   parameter signed [31:0]  overflow = `xlWrap;
   parameter signed [31:0]  latency = 0;
   input [old_width - 1 : 0] inp;
   input [en_width - 1 : 0] en;
   input ce, clk, clr;
   output [new_width - 1 : 0] res;

   parameter signed [31:0]  fp_width = old_width + 2;
   parameter signed [31:0]  fp_bin_pt = old_bin_pt;
   parameter signed [31:0]  fp_arith = old_arith;
   parameter signed [31:0]  q_width = fp_width + new_bin_pt - old_bin_pt;
   parameter signed [31:0]  q_bin_pt = new_bin_pt;
   parameter signed [31:0]  q_arith = old_arith;

   wire [fp_width-1:0] full_precision_result_in, full_precision_result_out;
   wire [new_width-1:0] result;
   wire [q_width-1:0] quantized_result_in, quantized_result_out;
   wire internal_ce;
   assign internal_ce = ce & en[0];


   // old_bin_pt = fp_bin_pt
   cast # (old_width, old_bin_pt, fp_width, fp_bin_pt, fp_arith)
     fp_cast (.inp(inp), .res(full_precision_result_in));

   generate
      if (latency > 2)
     	begin:latency_fpr
	   synth_reg # (fp_width, 1)
	     reg_fpr (.i(full_precision_result_in),
		      .ce(internal_ce),
		      .clr(clr),
		      .clk(clk),
		      .o(full_precision_result_out));
     	end
      else
     	begin:no_latency_fpr
	   assign full_precision_result_out = full_precision_result_in;
     	end
   endgenerate

   generate
      // Apply quantization functions. This will remove LSB bits.
      if (quantization == `xlRound)
     	begin:ct_u0
	   round_towards_inf # (fp_width, fp_bin_pt, fp_arith, q_width, q_bin_pt, q_arith)
	     quant_rtf (.inp(full_precision_result_out), .res(quantized_result_in));
	end
   endgenerate

   generate
      if (quantization == `xlRoundBanker)
     	begin:ct_u1
	   round_towards_even # (fp_width, fp_bin_pt, fp_arith, q_width, q_bin_pt, q_arith)
	     quant_rte (.inp(full_precision_result_out), .res(quantized_result_in));
	end
   endgenerate

   generate
      if (quantization == `xlTruncate)
     	begin:ct_u2
	   trunc # (fp_width, fp_bin_pt, fp_arith, q_width, q_bin_pt, q_arith)
	     quant_tr (.inp(full_precision_result_out), .res(quantized_result_in));
  	    end
   endgenerate

   generate
      if (latency > 1)
     	begin:latency_qr
	   synth_reg # (q_width, 1)
	     reg_qr (.i(quantized_result_in),
		     .ce(internal_ce),
		     .clr(clr),
		     .clk(clk),
		     .o(quantized_result_out));
     	end
      else
     	begin:no_latency_qr
	   assign quantized_result_out = quantized_result_in;
     	end
   endgenerate

   generate
      // Apply overflow function.  This will remove MSB bits.
      if (overflow == `xlSaturate)
	begin:ct_u3
	      // q_bin_pt = new_bin_pt
	   saturation_arith # (q_width, q_bin_pt, q_arith, new_width, new_bin_pt, new_arith)
	    ovflo_sat (.inp(quantized_result_out), .res(result));
	end
   endgenerate

   generate
      if (overflow == `xlWrap)
	begin:ct_u4
	   wrap_arith # (q_width, q_bin_pt, q_arith, new_width, new_bin_pt, new_arith)
	     ovflo_wrap (.inp(quantized_result_out), .res(result));
	end
   endgenerate

   generate
      if (latency > 3)
     	begin:latency_qt_3
	   synth_reg # (new_width, latency-2)
	     reg_out (.i(result),
		      .ce(internal_ce),
		      .clr(clr),
		      .clk(clk),
		      .o(res));
     	end
      else if ((latency <4) && (latency > 0))
     	begin:no_latency_lt_t
	   synth_reg # (new_width, 1)
	     reg_out (.i(result),
		      .ce(internal_ce),
		      .clr(clr),
		      .clk(clk),
		      .o(res));
     	end
      else
	begin:latency0
	   assign res = result;
     	end
   endgenerate

endmodule // sub_module_mft_overlap_add_2022_0303_xlconvert_pipeline


module mft_overlap_add_2022_0303_xlconvert_pipeline (din, en, clk, ce, clr, dout);
//Parameter Definitions
   parameter din_width= 16;
   parameter din_bin_pt= 4;
   parameter din_arith= `xlUnsigned;
   parameter dout_width= 8;
   parameter dout_bin_pt= 2;
   parameter dout_arith= `xlUnsigned;
   parameter en_width = 1;
   parameter en_bin_pt = 0;
   parameter en_arith = `xlUnsigned;
   parameter bool_conversion = 0;
   parameter latency = 0;
   parameter quantization= `xlTruncate;
   parameter overflow= `xlWrap;

//Port Declartions
   input [din_width-1:0] din;
   input [en_width-1:0] en;
   input clk, ce, clr;
   output [dout_width-1:0] dout;

//Wire Declartions
   wire [dout_width-1:0] result;

   sub_module_mft_overlap_add_2022_0303_xlconvert_pipeline #(din_width,
                      din_bin_pt,
                      din_arith,
 		              dout_width,
                      dout_bin_pt,
                      dout_arith,
 		              en_width,
                      en_bin_pt,
                      en_arith,
                      quantization,
                      overflow,
		      latency)
        conv_udp (.inp(din),
		  .en(en),
		  .clk(clk),
		  .ce(ce),
		  .clr(clr),
		  .res(dout));
endmodule
`timescale 1 ns / 10 ps
module mft_overlap_add_2022_0303_xldelay #(parameter width = -1, latency = -1, reg_retiming = 0, reset = 0)
  (input [width-1:0] d,
   input ce, clk, en, rst,
   output [width-1:0] q);

generate
  if ((latency == 0) || ((reg_retiming == 0) && (reset == 0)))
  begin:srl_delay
    synth_reg # (width, latency)
      reg1 (
        .i(d),
        .ce(ce & en),
        .clr(1'b0),
        .clk(clk),
        .o(q));
  end

  if ((latency>=1) && ((reg_retiming) || (reset)))
  begin:reg_delay
    synth_reg_reg # (width, latency)
      reg2 (
        .i(d),
        .ce(ce & en),
        .clr(rst),
        .clk(clk),
        .o(q));
  end
endgenerate
endmodule
`timescale 1 ns / 10 ps
module sysgen_reinterpret_cf5d4ce718 (
  input [(32 - 1):0] input_port,
  output [(32 - 1):0] output_port,
  input clk,
  input ce,
  input clr);
  wire signed [(32 - 1):0] input_port_1_40;
  assign input_port_1_40 = input_port;
  assign output_port = input_port_1_40;
endmodule
`timescale 1 ns / 10 ps
module mft_overlap_add_2022_0303_xlregister (d, rst, en, ce, clk, q);
   parameter d_width = 5;
   parameter init_value = 'b0;

   input [d_width-1:0] d;
   input rst, en, ce, clk;
   output [d_width-1:0] q;

   wire internal_clr, internal_ce;

   assign internal_clr = rst & ce;
   assign internal_ce  = ce & en;

   synth_reg_w_init #(.width(d_width),
                      .init_index(2),
                      .init_value(init_value),
                      .latency(1))
   synth_reg_inst(.i(d),
                  .ce(internal_ce),
                  .clr(internal_clr),
                  .clk(clk),
                  .o(q));
endmodule

`timescale 1 ns / 10 ps
module sysgen_constant_ebbc228f9f (
  output [(10 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 10'b0101010111;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_63eab09462 (
  output [(10 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 10'b0001000100;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_451dcdcb45 (
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 1'b0;
endmodule
`timescale 1 ns / 10 ps
module mft_overlap_add_2022_0303_xlsprom
  #(parameter c_width = 0,
   parameter c_address_width = 0,
   parameter mem_size = 0,
   parameter mem_init_file ="none",
   parameter read_reset_val ="0",
   parameter mem_type ="auto",
   parameter latency = 0)
  (input  ce, clk, en, rst,
   input [c_address_width-1:0] addr,
   output [c_width-1:0] data);

   wire [c_width-1:0] core_data_out,dly_data_out;    
   assign data = dly_data_out;

generate
  xpm_memory_sprom # (
  // Common module parameters
  .MEMORY_SIZE        (mem_size),
  .MEMORY_PRIMITIVE   (mem_type),                        //string; auto, distributed, block or ultra;
  .MEMORY_INIT_FILE   (mem_init_file), 
  .MEMORY_INIT_PARAM  (""),
  .USE_MEM_INIT       (0),
  .WAKEUP_TIME        ("disable_sleep"),
  .MESSAGE_CONTROL    (0),

  // Port A module parameters
  .READ_DATA_WIDTH_A  (c_width),
  .ADDR_WIDTH_A       (c_address_width),
  .READ_RESET_VALUE_A (read_reset_val),
  .READ_LATENCY_A     (latency)

) xpm_memory_sprom_inst (
 // Common module ports
  .sleep          (1'b0),
  // Port A module ports
  .clka           (clk),
  .rsta           (rst & ce),
  .ena            (en & ce),
  .regcea         (1'b1),
  .addra          (addr),
  .injectsbiterra (1'b0),  //do not change
  .injectdbiterra (1'b0),  //do not change
  .douta          (core_data_out),
  .sbiterra       (),      //do not change
  .dbiterra       ()       //do not change
);
         assign dly_data_out = core_data_out;
endgenerate
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_2fd59bf28b (
  output [(8 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 8'b00000000;
endmodule
`timescale 1 ns / 10 ps
module sysgen_relational_5a67b92ef2 (
  input [(10 - 1):0] a,
  input [(8 - 1):0] b,
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire [(10 - 1):0] a_1_31;
  wire [(8 - 1):0] b_1_34;
  reg op_mem_37_22[0:(1 - 1)];
  initial
    begin
      op_mem_37_22[0] = 1'b0;
    end
  wire op_mem_37_22_front_din;
  wire op_mem_37_22_back;
  wire op_mem_37_22_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value = 1'b1;
  wire [(10 - 1):0] cast_12_17;
  wire result_12_3_rel;
  assign a_1_31 = a;
  assign b_1_34 = b;
  assign op_mem_37_22_back = op_mem_37_22[0];
  always @(posedge clk)
    begin:proc_op_mem_37_22
      integer i;
      if (((ce == 1'b1) && (op_mem_37_22_push_front_pop_back_en == 1'b1)))
        begin
          op_mem_37_22[0] <= op_mem_37_22_front_din;
        end
    end
  assign cast_12_17 = {2'b00, b_1_34[7:0]};
  assign result_12_3_rel = a_1_31 == cast_12_17;
  assign op_mem_37_22_front_din = result_12_3_rel;
  assign op_mem_37_22_push_front_pop_back_en = 1'b1;
  assign op = op_mem_37_22_back;
endmodule
`timescale 1 ns / 10 ps
module sysgen_logical_972fb9df1c (
  input [(1 - 1):0] d0,
  input [(1 - 1):0] d1,
  output [(1 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire d0_1_24;
  wire d1_1_27;
  reg latency_pipe_5_26[0:(1 - 1)];
  initial
    begin
      latency_pipe_5_26[0] = 1'b0;
    end
  wire latency_pipe_5_26_front_din;
  wire latency_pipe_5_26_back;
  wire latency_pipe_5_26_push_front_pop_back_en;
  wire fully_2_1_bit;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign latency_pipe_5_26_back = latency_pipe_5_26[0];
  always @(posedge clk)
    begin:proc_latency_pipe_5_26
      integer i;
      if (((ce == 1'b1) && (latency_pipe_5_26_push_front_pop_back_en == 1'b1)))
        begin
          latency_pipe_5_26[0] <= latency_pipe_5_26_front_din;
        end
    end
  assign fully_2_1_bit = d0_1_24 | d1_1_27;
  assign latency_pipe_5_26_front_din = fully_2_1_bit;
  assign latency_pipe_5_26_push_front_pop_back_en = 1'b1;
  assign y = latency_pipe_5_26_back;
endmodule
`timescale 1 ns / 10 ps
module sysgen_mux_108b447ca7 (
  input [(1 - 1):0] sel,
  input [(16 - 1):0] d0,
  input [(16 - 1):0] d1,
  input [(1 - 1):0] en,
  output [(16 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire sel_1_20;
  wire [(16 - 1):0] d0_1_24;
  wire [(16 - 1):0] d1_1_27;
  wire en_1_30;
  localparam [(16 - 1):0] const_value = 16'b0000000000000000;
  reg [(16 - 1):0] pipe_16_22[0:(1 - 1)];
  initial
    begin
      pipe_16_22[0] = 16'b0000000000000000;
    end
  wire [(16 - 1):0] pipe_16_22_front_din;
  wire [(16 - 1):0] pipe_16_22_back;
  wire pipe_16_22_push_front_pop_back_en;
  wire [(1 - 1):0] sel_internal_2_1_convert;
  reg [(16 - 1):0] unregy_join_6_1;
  reg [(16 - 1):0] pipe_shift_join_18_5;
  reg pipe_shift_join_18_5_en;
  assign sel_1_20 = sel;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign en_1_30 = en;
  assign pipe_16_22_back = pipe_16_22[0];
  always @(posedge clk)
    begin:proc_pipe_16_22
      integer i;
      if (((ce == 1'b1) && (pipe_16_22_push_front_pop_back_en == 1'b1)))
        begin
          pipe_16_22[0] <= pipe_16_22_front_din;
        end
    end
  assign sel_internal_2_1_convert = {sel_1_20};
  always @(d0_1_24 or d1_1_27 or sel_internal_2_1_convert)
    begin:proc_switch_6_1
      case (sel_internal_2_1_convert)
        1'b0 :
          begin
            unregy_join_6_1 = d0_1_24;
          end
        default:
          begin
            unregy_join_6_1 = d1_1_27;
          end
      endcase
    end
  always @(en_1_30 or unregy_join_6_1)
    begin:proc_if_18_5
      if (en_1_30)
        begin
          pipe_shift_join_18_5_en = 1'b1;
        end
      else 
        begin
          pipe_shift_join_18_5_en = 1'b0;
        end
      pipe_shift_join_18_5 = unregy_join_6_1;
    end
  assign pipe_16_22_front_din = pipe_shift_join_18_5;
  assign pipe_16_22_push_front_pop_back_en = pipe_shift_join_18_5_en;
  assign y = pipe_16_22_back;
endmodule
module mft_overlap_add_2022_0303_xladdsub (a, b, c_in, ce, clr, clk, rst, en, c_out, s);
 
 parameter core_name0= "";
 parameter a_width= 16;
 parameter signed a_bin_pt= 4;
 parameter a_arith= `xlUnsigned;
 parameter c_in_width= 16;
 parameter c_in_bin_pt= 4;
 parameter c_in_arith= `xlUnsigned;
 parameter c_out_width= 16;
 parameter c_out_bin_pt= 4;
 parameter c_out_arith= `xlUnsigned;
 parameter b_width= 8;
 parameter signed b_bin_pt= 2;
 parameter b_arith= `xlUnsigned;
 parameter s_width= 17;
 parameter s_bin_pt= 4;
 parameter s_arith= `xlUnsigned;
 parameter rst_width= 1;
 parameter rst_bin_pt= 0;
 parameter rst_arith= `xlUnsigned;
 parameter en_width= 1;
 parameter en_bin_pt= 0;
 parameter en_arith= `xlUnsigned;
 parameter full_s_width= 17;
 parameter full_s_arith= `xlUnsigned;
 parameter mode= `xlAddMode;
 parameter extra_registers= 0;
 parameter latency= 0;
 parameter quantization= `xlTruncate;
 parameter overflow= `xlWrap;
 parameter c_a_width= 16;
 parameter c_b_width= 8;
 parameter c_a_type= 1;
 parameter c_b_type= 1;
 parameter c_has_sclr= 0;
 parameter c_has_ce= 0;
 parameter c_latency= 0;
 parameter c_output_width= 17;
 parameter c_enable_rlocs= 1;
 parameter c_has_c_in= 0;
 parameter c_has_c_out= 0;
 
 input [a_width-1:0] a;
 input [b_width-1:0] b;
 input c_in, ce, clr, clk, rst, en;
 output c_out;
 output [s_width-1:0] s;
 
 parameter full_a_width = full_s_width;
 parameter full_b_width = full_s_width;
 parameter full_s_bin_pt = (a_bin_pt > b_bin_pt) ? a_bin_pt : b_bin_pt;
 
 wire [full_a_width-1:0] full_a;
 wire [full_b_width-1:0] full_b;
 wire [full_s_width-1:0] full_s;
 wire [full_s_width-1:0] core_s;
 wire [s_width-1:0] conv_s;
 wire  temp_cout;
 wire  real_a,real_b,real_s;
 wire  internal_clr;
 wire  internal_ce;
 wire  extra_reg_ce;
 wire  override;
 wire  logic1;
 wire  temp_cin;
 
 assign internal_clr = (clr | rst) & ce;
 assign internal_ce = ce & en;
 assign logic1 = 1'b1;
 assign temp_cin = (c_has_c_in) ? c_in : 1'b0;
 
 align_input # (a_width, b_bin_pt - a_bin_pt, a_arith, full_a_width)
 align_inp_a(.inp(a),.res(full_a));
 align_input # (b_width, a_bin_pt - b_bin_pt, b_arith, full_b_width)
 align_inp_b(.inp(b),.res(full_b));
 convert_type # (full_s_width, full_s_bin_pt, full_s_arith, s_width,
                 s_bin_pt, s_arith, quantization, overflow)
 conv_typ_s(.inp(core_s),.res(conv_s));
 
 generate


if (core_name0 == "mft_overlap_add_2022_0303_c_addsub_v12_0_i0") 
     begin:comp0
mft_overlap_add_2022_0303_c_addsub_v12_0_i0 core_instance0 ( 
         .A(full_a),
         .CLK(clk),
         .CE(internal_ce),
         .S(core_s),
         .B(full_b) 
       ); 
     end 

if (core_name0 == "mft_overlap_add_2022_0303_c_addsub_v12_0_i1") 
     begin:comp1
mft_overlap_add_2022_0303_c_addsub_v12_0_i1 core_instance1 ( 
         .A(full_a),
         .CLK(clk),
         .CE(internal_ce),
         .S(core_s),
         .B(full_b) 
       ); 
     end 

if (core_name0 == "mft_overlap_add_2022_0303_c_addsub_v12_0_i2") 
     begin:comp2
mft_overlap_add_2022_0303_c_addsub_v12_0_i2 core_instance2 ( 
         .A(full_a),
         .CLK(clk),
         .CE(internal_ce),
         .S(core_s),
         .B(full_b) 
       ); 
     end 

if (core_name0 == "mft_overlap_add_2022_0303_c_addsub_v12_0_i3") 
     begin:comp3
mft_overlap_add_2022_0303_c_addsub_v12_0_i3 core_instance3 ( 
         .A(full_a),
         .CLK(clk),
         .CE(internal_ce),
         .S(core_s),
         .B(full_b) 
       ); 
     end 

if (core_name0 == "mft_overlap_add_2022_0303_c_addsub_v12_0_i4") 
     begin:comp4
mft_overlap_add_2022_0303_c_addsub_v12_0_i4 core_instance4 ( 
         .A(full_a),
         .CLK(clk),
         .CE(internal_ce),
         .S(core_s),
         .B(full_b) 
       ); 
     end 

endgenerate 
 
 
 generate
   if (extra_registers > 0)
   begin:latency_test
     
     if (c_latency > 1)
     begin:override_test
       synth_reg # (1, c_latency)
         override_pipe (
           .i(logic1),
           .ce(internal_ce),
           .clr(internal_clr),
           .clk(clk),
           .o(override));
       assign extra_reg_ce = ce & en & override;
     end // override_test
 
     if ((c_latency == 0) || (c_latency == 1))
     begin:no_override
       assign extra_reg_ce = ce & en;
     end // no_override
 
     synth_reg # (s_width, extra_registers)
       extra_reg (
         .i(conv_s),
         .ce(extra_reg_ce),
         .clr(internal_clr),
         .clk(clk),
         .o(s));
 
     if (c_has_c_out == 1)
     begin:cout_test
       synth_reg # (1, extra_registers)
         c_out_extra_reg (
           .i(temp_cout),
           .ce(extra_reg_ce),
           .clr(internal_clr),
           .clk(clk),
           .o(c_out));
     end // cout_test
     
   end // latency_test
 endgenerate
 
 generate
   if ((latency == 0) || (extra_registers == 0))
   begin:latency_s
     assign s = conv_s;
   end // latency_s
 endgenerate
 
 generate
   if (((latency == 0) || (extra_registers == 0)) &&
       (c_has_c_out == 1))
   begin:latency0
     assign c_out = temp_cout;
   end // latency0
 endgenerate
 
 generate
   if (c_has_c_out == 0)
   begin:tie_dangling_cout
     assign c_out = 0;
   end // tie_dangling_cout
 endgenerate
 
 endmodule

module mft_overlap_add_2022_0303_xlcounter_limit (ce, clr, clk, op, up, en, rst);
 
 parameter core_name0= "";
 parameter op_width= 5;
 parameter op_arith= `xlSigned;
 parameter cnt_63_48 = 0;
 parameter cnt_47_32 = 0;
 parameter cnt_31_16 = 0;
 parameter cnt_15_0  = 0;
 parameter count_limited= 0;
 
    input  ce, clr, clk;
    input rst, en;  
    input up;
    output [op_width-1:0] op;
 
 parameter [63:0] cnt_to = { cnt_63_48[15:0], cnt_47_32[15:0], cnt_31_16[15:0], cnt_15_0[15:0]};
 parameter [(8*op_width)-1:0] oneStr = { op_width{"1"}}; 
    
 reg op_thresh0;
 wire core_sinit, core_ce;
 wire rst_overrides_en;
 wire [op_width-1:0] op_net;
 
    assign op = op_net;
    assign core_ce = ce & en;
    assign rst_overrides_en = rst | en;
    
 generate
 
    if (count_limited == 1)
      begin :limit
 	always @(op_net)
 	  begin:eq_cnt_to
 	     op_thresh0 = (op_net == cnt_to[op_width-1:0])? 1'b1 : 1'b0;
 	  end
         assign core_sinit = (op_thresh0 | clr | rst) & ce & rst_overrides_en;
      end
    if (count_limited == 0)
      begin :no_limit
 	assign core_sinit = (clr | rst) & ce & rst_overrides_en;
      end



if (core_name0 == "mft_overlap_add_2022_0303_c_counter_binary_v12_0_i0") 
     begin:comp0
mft_overlap_add_2022_0303_c_counter_binary_v12_0_i0 core_instance0 ( 
        .CLK(clk),
        .CE(core_ce),
        .SINIT(core_sinit),
        .Q(op_net) 
       ); 
     end 

endgenerate
 
 endmodule


`timescale 1 ns / 10 ps
module  xlfast_fourier_transform_3c04dd97895c3901ae5ab4e8f34e2521 (ce,clk,event_data_in_channel_halt,event_data_out_channel_halt,event_frame_started,event_status_channel_halt,event_tlast_missing,event_tlast_unexpected,m_axis_data_tdata_xn_im_0,m_axis_data_tdata_xn_re_0,m_axis_data_tlast,m_axis_data_tready,m_axis_data_tvalid,s_axis_config_tdata_fwd_inv,s_axis_config_tdata_scale_sch,s_axis_config_tready,s_axis_config_tvalid,s_axis_data_tdata_xn_im_0,s_axis_data_tdata_xn_re_0,s_axis_data_tlast,s_axis_data_tready,s_axis_data_tvalid);

input ce;
input clk;
output event_data_in_channel_halt;
output event_data_out_channel_halt;
output event_frame_started;
output event_status_channel_halt;
output event_tlast_missing;
output event_tlast_unexpected;
output[15:0] m_axis_data_tdata_xn_im_0;
output[15:0] m_axis_data_tdata_xn_re_0;
output m_axis_data_tlast;
input m_axis_data_tready;
output m_axis_data_tvalid;
input[0:0] s_axis_config_tdata_fwd_inv;
input[9:0] s_axis_config_tdata_scale_sch;
output s_axis_config_tready;
input s_axis_config_tvalid;
input[15:0] s_axis_data_tdata_xn_im_0;
input[15:0] s_axis_data_tdata_xn_re_0;
input s_axis_data_tlast;
output s_axis_data_tready;
input s_axis_data_tvalid;
wire[31:0] m_axis_data_tdata_net;
wire[15:0] s_axis_config_tdata_net;
wire[31:0] s_axis_data_tdata_net;
  assign m_axis_data_tdata_xn_im_0 = m_axis_data_tdata_net[31 : 16];
  assign m_axis_data_tdata_xn_re_0 = m_axis_data_tdata_net[15 : 0];
  assign s_axis_config_tdata_net[15 : 11] = 5'b0;
  assign s_axis_config_tdata_net[10 : 1] = s_axis_config_tdata_scale_sch;
  assign s_axis_config_tdata_net[0 : 0] = s_axis_config_tdata_fwd_inv;
  assign s_axis_data_tdata_net[31 : 16] = s_axis_data_tdata_xn_im_0;
  assign s_axis_data_tdata_net[15 : 0] = s_axis_data_tdata_xn_re_0;
  mft_overlap_add_2022_0303_xfft_v9_1_i0 mft_overlap_add_2022_0303_xfft_v9_1_i0_instance(
      .aclk(clk),
      .aclken(ce),
      .event_data_in_channel_halt(event_data_in_channel_halt),
      .event_data_out_channel_halt(event_data_out_channel_halt),
      .event_frame_started(event_frame_started),
      .event_status_channel_halt(event_status_channel_halt),
      .event_tlast_missing(event_tlast_missing),
      .event_tlast_unexpected(event_tlast_unexpected),
      .m_axis_data_tdata(m_axis_data_tdata_net),
      .m_axis_data_tlast(m_axis_data_tlast),
      .m_axis_data_tready(m_axis_data_tready),
      .m_axis_data_tvalid(m_axis_data_tvalid),
      .s_axis_config_tdata(s_axis_config_tdata_net),
      .s_axis_config_tready(s_axis_config_tready),
      .s_axis_config_tvalid(s_axis_config_tvalid),
      .s_axis_data_tdata(s_axis_data_tdata_net),
      .s_axis_data_tlast(s_axis_data_tlast),
      .s_axis_data_tready(s_axis_data_tready),
      .s_axis_data_tvalid(s_axis_data_tvalid)
    );

 endmodule



`timescale 1 ns / 10 ps
module  xlcomplex_multiplier_a2b4ef32507594e3f0bda9e2b78d23f6 (ce,clk,m_axis_dout_tdata_imag,m_axis_dout_tdata_real,m_axis_dout_tvalid,s_axis_a_tdata_imag,s_axis_a_tdata_real,s_axis_a_tvalid,s_axis_b_tdata_imag,s_axis_b_tdata_real,s_axis_b_tvalid);

input ce;
input clk;
output[31:0] m_axis_dout_tdata_imag;
output[31:0] m_axis_dout_tdata_real;
output m_axis_dout_tvalid;
input[15:0] s_axis_a_tdata_imag;
input[15:0] s_axis_a_tdata_real;
input s_axis_a_tvalid;
input[15:0] s_axis_b_tdata_imag;
input[15:0] s_axis_b_tdata_real;
input s_axis_b_tvalid;
wire[63:0] m_axis_dout_tdata_net;
wire[31:0] s_axis_a_tdata_net;
wire[31:0] s_axis_b_tdata_net;
  assign m_axis_dout_tdata_imag = m_axis_dout_tdata_net[63 : 32];
  assign m_axis_dout_tdata_real = m_axis_dout_tdata_net[31 : 0];
  assign s_axis_a_tdata_net[31 : 16] = s_axis_a_tdata_imag;
  assign s_axis_a_tdata_net[15 : 0] = s_axis_a_tdata_real;
  assign s_axis_b_tdata_net[31 : 16] = s_axis_b_tdata_imag;
  assign s_axis_b_tdata_net[15 : 0] = s_axis_b_tdata_real;
  mft_overlap_add_2022_0303_cmpy_v6_0_i0 mft_overlap_add_2022_0303_cmpy_v6_0_i0_instance(
      .aclk(clk),
      .aclken(ce),
      .m_axis_dout_tdata(m_axis_dout_tdata_net),
      .m_axis_dout_tvalid(m_axis_dout_tvalid),
      .s_axis_a_tdata(s_axis_a_tdata_net),
      .s_axis_a_tvalid(s_axis_a_tvalid),
      .s_axis_b_tdata(s_axis_b_tdata_net),
      .s_axis_b_tvalid(s_axis_b_tvalid)
    );

 endmodule



module mft_overlap_add_2022_0303_xlmult (a, b, ce, clr, clk, core_ce, core_clr,core_clk, rst, en,p);
     parameter core_name0 = "";
     parameter a_width = 4;
     parameter a_bin_pt = 2;
     parameter a_arith = `xlSigned;
     parameter b_width = 4;
     parameter b_bin_pt = 1;
     parameter b_arith = `xlSigned;
     parameter p_width = 8;
     parameter p_bin_pt = 2;
     parameter p_arith = `xlSigned;
     parameter rst_width = 1;
     parameter rst_bin_pt = 0;
     parameter rst_arith = `xlUnsigned;
     parameter en_width = 1;
     parameter en_bin_pt = 0;
     parameter en_arith = `xlUnsigned;
     parameter quantization = `xlTruncate;
     parameter overflow = `xlWrap;
     parameter extra_registers = 0;
     parameter c_a_width = 7;
     parameter c_b_width = 7;
     parameter c_type = 0;
     parameter c_a_type = 0;
     parameter c_b_type = 0;
     parameter c_baat = 4;
     parameter oversample = 1;
     parameter multsign = `xlSigned;
     parameter c_output_width = 16;
     input [a_width - 1 : 0] a;
     input [b_width - 1 : 0] b;
     input ce, clr, clk;
     input core_ce, core_clr, core_clk;
     input en, rst;
     output [p_width - 1 : 0] p;
     wire [c_a_width - 1 : 0]    tmp_a, conv_a;
     wire [c_b_width - 1 : 0]    tmp_b, conv_b;
    wire [c_output_width - 1 : 0] tmp_p;
    wire [p_width - 1 : 0] conv_p;
    wire internal_ce, internal_clr, internal_core_ce;
    wire rfd, rdy, nd;
    
 
    assign internal_ce = ce & en;
    assign internal_core_ce = core_ce & en;
    assign internal_clr = (clr | rst) & en;
    assign nd = ce & en;
 
    zero_ext # (a_width, c_a_width) zero_ext_a (.inp(a), .res(tmp_a));
    zero_ext # (b_width, c_b_width) zero_ext_b (.inp(b), .res(tmp_b));
 
    //Output Process
    convert_type # (c_output_width, a_bin_pt+b_bin_pt, multsign,
 		   p_width, p_bin_pt, p_arith, quantization, overflow)
      conv_udp (.inp(tmp_p), .res(conv_p));
    
 generate
 


if (core_name0 == "mft_overlap_add_2022_0303_mult_gen_v12_0_i0") 
     begin:comp0
mft_overlap_add_2022_0303_mult_gen_v12_0_i0 core_instance0 ( 
        .A(tmp_a),
        .B(tmp_b),
        .CLK(clk),
        .CE(internal_ce),
        .SCLR(internal_clr),
        .P(tmp_p) 
       ); 
     end 

if (core_name0 == "mft_overlap_add_2022_0303_mult_gen_v12_0_i1") 
     begin:comp1
mft_overlap_add_2022_0303_mult_gen_v12_0_i1 core_instance1 ( 
        .A(tmp_a),
        .B(tmp_b),
        .CLK(clk),
        .CE(internal_ce),
        .SCLR(internal_clr),
        .P(tmp_p) 
       ); 
     end 

if (extra_registers > 0)
 begin:latency_gt_0
 synth_reg # (p_width, extra_registers) 
 reg1 (
 .i(conv_p), 
 .ce(internal_ce),
 .clr(internal_clr),
 .clk(clk),
 .o(p));
 end
 
 if (extra_registers == 0)
 begin:latency_eq_0
 assign p = conv_p;
 end
 endgenerate
 
 endmodule

