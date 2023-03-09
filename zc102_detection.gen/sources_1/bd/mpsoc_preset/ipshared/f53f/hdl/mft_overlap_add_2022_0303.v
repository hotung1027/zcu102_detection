`ifndef xlConvPkgIncluded
`include "conv_pkg.v"
`endif

`timescale 1 ns / 10 ps
// Generated from Simulink block mft_overlap_add_2022_0303/EVEN FFT
module mft_overlap_add_2022_0303_even_fft (
  input [1-1:0] config_tvalid,
  input [16-1:0] data_tdata_xn_im_0,
  input [16-1:0] data_tdata_xn_re_0,
  input [1-1:0] data_tvalid,
  input [1-1:0] data_tlast,
  input clk_1,
  input ce_1,
  output config_tready,
  output data_tready,
  output [16-1:0] data_tdata_xn_im_0_x0,
  output [16-1:0] data_tdata_xn_re_0_x0,
  output data_tvalid_x0,
  output data_tlast_x0
);
  wire [1-1:0] delay15_q_net;
  wire [16-1:0] data_tdata_xn_im_0_x1;
  wire [1-1:0] constant8_op_net;
  wire clk_net;
  wire fast_fourier_transform_9_4_event_tlast_unexpected_net;
  wire fast_fourier_transform_9_4_event_tlast_missing_net;
  wire fast_fourier_transform_9_4_event_frame_started_net;
  wire fast_fourier_transform_9_4_event_data_in_channel_halt_net;
  wire fast_fourier_transform_9_4_event_data_out_channel_halt_net;
  wire [1-1:0] true_op_net;
  wire [16-1:0] constant9_op_net;
  wire fast_fourier_transform_9_4_event_status_channel_halt_net;
  wire [16-1:0] data_tdata_xn_re_0_x1;
  wire config_tready_x0;
  wire [16-1:0] mult_p_net;
  wire ce_net;
  wire data_tvalid_x1;
  wire data_tlast_x1;
  wire data_tready_x0;
  wire [1-1:0] delay10_q_net;
  wire [10-1:0] constant_op_net;
  assign config_tready = config_tready_x0;
  assign data_tready = data_tready_x0;
  assign data_tdata_xn_im_0_x0 = data_tdata_xn_im_0_x1;
  assign data_tdata_xn_re_0_x0 = data_tdata_xn_re_0_x1;
  assign data_tvalid_x0 = data_tvalid_x1;
  assign data_tlast_x0 = data_tlast_x1;
  assign constant8_op_net = config_tvalid;
  assign constant9_op_net = data_tdata_xn_im_0;
  assign mult_p_net = data_tdata_xn_re_0;
  assign delay10_q_net = data_tvalid;
  assign delay15_q_net = data_tlast;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_constant_ebbc228f9f constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );
  xlfast_fourier_transform_3c04dd97895c3901ae5ab4e8f34e2521 fast_fourier_transform_9_4 (
    .s_axis_config_tdata_scale_sch(constant_op_net),
    .s_axis_config_tdata_fwd_inv(true_op_net),
    .s_axis_config_tvalid(constant8_op_net),
    .s_axis_data_tdata_xn_im_0(constant9_op_net),
    .s_axis_data_tdata_xn_re_0(mult_p_net),
    .s_axis_data_tvalid(delay10_q_net),
    .s_axis_data_tlast(delay15_q_net),
    .m_axis_data_tready(delay10_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .s_axis_config_tready(config_tready_x0),
    .s_axis_data_tready(data_tready_x0),
    .m_axis_data_tdata_xn_im_0(data_tdata_xn_im_0_x1),
    .m_axis_data_tdata_xn_re_0(data_tdata_xn_re_0_x1),
    .m_axis_data_tvalid(data_tvalid_x1),
    .m_axis_data_tlast(data_tlast_x1),
    .event_frame_started(fast_fourier_transform_9_4_event_frame_started_net),
    .event_tlast_unexpected(fast_fourier_transform_9_4_event_tlast_unexpected_net),
    .event_tlast_missing(fast_fourier_transform_9_4_event_tlast_missing_net),
    .event_data_in_channel_halt(fast_fourier_transform_9_4_event_data_in_channel_halt_net),
    .event_status_channel_halt(fast_fourier_transform_9_4_event_status_channel_halt_net),
    .event_data_out_channel_halt(fast_fourier_transform_9_4_event_data_out_channel_halt_net)
  );
  sysgen_constant_19de62f6a5 true (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(true_op_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block mft_overlap_add_2022_0303/EVEN IFFT
module mft_overlap_add_2022_0303_even_ifft (
  input [1-1:0] config_tvalid,
  input [1-1:0] data_tvalid,
  input [1-1:0] data_tlast,
  input [1-1:0] data_tready_x0,
  input [16-1:0] even_im_out,
  input [16-1:0] even_re_out,
  input clk_1,
  input ce_1,
  output [16-1:0] data_tdata_xn_im_0,
  output [16-1:0] data_tdata_xn_re_0,
  output data_tvalid_x0,
  output data_tlast_x0
);
  wire fast_fourier_transform_9_5_s_axis_config_tready_net;
  wire fast_fourier_transform_9_5_m_axis_data_tlast_net;
  wire [16-1:0] fast_fourier_transform_9_5_m_axis_data_tdata_xn_im_0_net;
  wire fast_fourier_transform_9_5_m_axis_data_tvalid_net;
  wire [1-1:0] delay6_q_net;
  wire [1-1:0] delay5_q_net;
  wire [16-1:0] fast_fourier_transform_9_5_m_axis_data_tdata_xn_re_0_net;
  wire clk_net;
  wire [10-1:0] constant_op_net;
  wire [1-1:0] constant11_op_net;
  wire [16-1:0] convert3_dout_net;
  wire fast_fourier_transform_9_5_s_axis_data_tready_net;
  wire [1-1:0] delay7_q_net;
  wire fast_fourier_transform_9_5_event_frame_started_net;
  wire fast_fourier_transform_9_5_event_tlast_unexpected_net;
  wire fast_fourier_transform_9_5_event_tlast_missing_net;
  wire [1-1:0] delay8_q_net;
  wire ce_net;
  wire [16-1:0] convert2_dout_net;
  wire fast_fourier_transform_9_5_event_data_in_channel_halt_net;
  wire fast_fourier_transform_9_5_event_status_channel_halt_net;
  wire fast_fourier_transform_9_5_event_data_out_channel_halt_net;
  assign data_tdata_xn_im_0 = fast_fourier_transform_9_5_m_axis_data_tdata_xn_im_0_net;
  assign data_tdata_xn_re_0 = fast_fourier_transform_9_5_m_axis_data_tdata_xn_re_0_net;
  assign data_tvalid_x0 = fast_fourier_transform_9_5_m_axis_data_tvalid_net;
  assign data_tlast_x0 = fast_fourier_transform_9_5_m_axis_data_tlast_net;
  assign delay7_q_net = config_tvalid;
  assign delay5_q_net = data_tvalid;
  assign delay6_q_net = data_tlast;
  assign delay8_q_net = data_tready_x0;
  assign convert2_dout_net = even_im_out;
  assign convert3_dout_net = even_re_out;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_constant_63eab09462 constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );
  sysgen_constant_451dcdcb45 constant11 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant11_op_net)
  );
  xlfast_fourier_transform_3c04dd97895c3901ae5ab4e8f34e2521 fast_fourier_transform_9_5 (
    .s_axis_config_tdata_scale_sch(constant_op_net),
    .s_axis_config_tdata_fwd_inv(constant11_op_net),
    .s_axis_config_tvalid(delay7_q_net),
    .s_axis_data_tdata_xn_im_0(convert2_dout_net),
    .s_axis_data_tdata_xn_re_0(convert3_dout_net),
    .s_axis_data_tvalid(delay5_q_net),
    .s_axis_data_tlast(delay6_q_net),
    .m_axis_data_tready(delay8_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .s_axis_config_tready(fast_fourier_transform_9_5_s_axis_config_tready_net),
    .s_axis_data_tready(fast_fourier_transform_9_5_s_axis_data_tready_net),
    .m_axis_data_tdata_xn_im_0(fast_fourier_transform_9_5_m_axis_data_tdata_xn_im_0_net),
    .m_axis_data_tdata_xn_re_0(fast_fourier_transform_9_5_m_axis_data_tdata_xn_re_0_net),
    .m_axis_data_tvalid(fast_fourier_transform_9_5_m_axis_data_tvalid_net),
    .m_axis_data_tlast(fast_fourier_transform_9_5_m_axis_data_tlast_net),
    .event_frame_started(fast_fourier_transform_9_5_event_frame_started_net),
    .event_tlast_unexpected(fast_fourier_transform_9_5_event_tlast_unexpected_net),
    .event_tlast_missing(fast_fourier_transform_9_5_event_tlast_missing_net),
    .event_data_in_channel_halt(fast_fourier_transform_9_5_event_data_in_channel_halt_net),
    .event_status_channel_halt(fast_fourier_transform_9_5_event_status_channel_halt_net),
    .event_data_out_channel_halt(fast_fourier_transform_9_5_event_data_out_channel_halt_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block mft_overlap_add_2022_0303/Even Frame
module mft_overlap_add_2022_0303_even_frame (
  input [16-1:0] data,
  input [16-1:0] window,
  input clk_1,
  input ce_1,
  output [16-1:0] mask_data_out
);
  wire ce_net;
  wire [16-1:0] delay14_q_net;
  wire [16-1:0] mult_p_net;
  wire clk_net;
  wire [16-1:0] convert4_dout_net;
  assign mask_data_out = mult_p_net;
  assign convert4_dout_net = data;
  assign delay14_q_net = window;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  mft_overlap_add_2022_0303_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(15),
    .a_width(16),
    .b_arith(`xlSigned),
    .b_bin_pt(15),
    .b_width(16),
    .c_a_type(0),
    .c_a_width(16),
    .c_b_type(0),
    .c_b_width(16),
    .c_baat(16),
    .c_output_width(32),
    .c_type(0),
    .core_name0("mft_overlap_add_2022_0303_mult_gen_v12_0_i0"),
    .extra_registers(1),
    .multsign(2),
    .overflow(2),
    .p_arith(`xlSigned),
    .p_bin_pt(15),
    .p_width(16),
    .quantization(1)
  )
  mult (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(convert4_dout_net),
    .b(delay14_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_p_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block mft_overlap_add_2022_0303/Even_MatchedFilterBank/MatchedFilterBank/complex multiplier bank/Complex Multiply 1
module mft_overlap_add_2022_0303_complex_multiply_1 (
  input [16-1:0] im,
  input [16-1:0] re,
  input [10-1:0] in3_1,
  input [1-1:0] in3_3,
  input clk_1,
  input ce_1,
  output [32-1:0] tdata_imag,
  output [32-1:0] tdata_real
);
  wire [16-1:0] delay2_q_net;
  wire [32-1:0] tdata_real_x0;
  wire [32-1:0] tdata_imag_x0;
  wire [1-1:0] valid_x1;
  wire [16-1:0] delay4_q_net;
  wire [16-1:0] delay3_q_net;
  wire [16-1:0] im_x0;
  wire [10-1:0] addr;
  wire [16-1:0] delay5_q_net;
  wire [16-1:0] re_x0;
  wire ce_net;
  wire clk_net;
  wire valid_x0;
  wire delay6_q_net;
  wire constant_op_net;
  wire [16-1:0] rom1_re_data_net;
  wire [16-1:0] delay1_q_net;
  wire [16-1:0] rom1_im_data_net;
  wire [16-1:0] delay_q_net;
  assign tdata_imag = tdata_imag_x0;
  assign tdata_real = tdata_real_x0;
  assign im_x0 = im;
  assign re_x0 = re;
  assign addr = in3_1;
  assign valid_x1 = in3_3;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  xlcomplex_multiplier_a2b4ef32507594e3f0bda9e2b78d23f6 complex_multiplier_6_0 (
    .s_axis_a_tvalid(delay6_q_net),
    .s_axis_a_tdata_imag(delay5_q_net),
    .s_axis_a_tdata_real(delay4_q_net),
    .s_axis_b_tvalid(constant_op_net),
    .s_axis_b_tdata_imag(delay2_q_net),
    .s_axis_b_tdata_real(delay3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .m_axis_dout_tvalid(valid_x0),
    .m_axis_dout_tdata_imag(tdata_imag_x0),
    .m_axis_dout_tdata_real(tdata_real_x0)
  );
  sysgen_constant_19de62f6a5 constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay (
    .en(1'b1),
    .rst(1'b0),
    .d(im_x0),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay1 (
    .en(1'b1),
    .rst(1'b0),
    .d(re_x0),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay1_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay2 (
    .en(1'b1),
    .rst(1'b0),
    .d(rom1_im_data_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay2_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay3 (
    .en(1'b1),
    .rst(1'b0),
    .d(rom1_re_data_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay3_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay4 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay4_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay5 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay5_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay6 (
    .en(1'b1),
    .rst(1'b0),
    .d(valid_x1),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay6_q_net)
  );
  mft_overlap_add_2022_0303_xlsprom #(
    .c_address_width(10),
    .c_width(16),
    .latency(1),
    .mem_init_file("xpm_4b3b6b_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_val("0")
  )
  rom1_im (
    .rst(1'b0),
    .addr(addr),
    .en(valid_x1),
    .clk(clk_net),
    .ce(ce_net),
    .data(rom1_im_data_net)
  );
  mft_overlap_add_2022_0303_xlsprom #(
    .c_address_width(10),
    .c_width(16),
    .latency(1),
    .mem_init_file("xpm_d77b42_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_val("0")
  )
  rom1_re (
    .rst(1'b0),
    .addr(addr),
    .en(valid_x1),
    .clk(clk_net),
    .ce(ce_net),
    .data(rom1_re_data_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block mft_overlap_add_2022_0303/Even_MatchedFilterBank/MatchedFilterBank/complex multiplier bank/Complex Multiply10
module mft_overlap_add_2022_0303_complex_multiply10 (
  input [16-1:0] im,
  input [16-1:0] re,
  input [10-1:0] in3_1,
  input [1-1:0] in3_3,
  input clk_1,
  input ce_1,
  output [32-1:0] tdata_imag,
  output [32-1:0] tdata_real
);
  wire [32-1:0] tdata_real_x0;
  wire [32-1:0] tdata_imag_x0;
  wire [16-1:0] delay4_q_net;
  wire [1-1:0] valid_x1;
  wire [10-1:0] addr;
  wire [16-1:0] delay2_q_net;
  wire [16-1:0] delay3_q_net;
  wire [16-1:0] delay1_q_net;
  wire constant_op_net;
  wire [16-1:0] delay5_q_net;
  wire [16-1:0] re_x0;
  wire [16-1:0] im_x0;
  wire valid_x0;
  wire delay6_q_net;
  wire [16-1:0] rom1_im_data_net;
  wire ce_net;
  wire [16-1:0] delay_q_net;
  wire [16-1:0] rom1_re_data_net;
  wire clk_net;
  assign tdata_imag = tdata_imag_x0;
  assign tdata_real = tdata_real_x0;
  assign im_x0 = im;
  assign re_x0 = re;
  assign addr = in3_1;
  assign valid_x1 = in3_3;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  xlcomplex_multiplier_a2b4ef32507594e3f0bda9e2b78d23f6 complex_multiplier_6_0 (
    .s_axis_a_tvalid(delay6_q_net),
    .s_axis_a_tdata_imag(delay5_q_net),
    .s_axis_a_tdata_real(delay4_q_net),
    .s_axis_b_tvalid(constant_op_net),
    .s_axis_b_tdata_imag(delay2_q_net),
    .s_axis_b_tdata_real(delay3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .m_axis_dout_tvalid(valid_x0),
    .m_axis_dout_tdata_imag(tdata_imag_x0),
    .m_axis_dout_tdata_real(tdata_real_x0)
  );
  sysgen_constant_19de62f6a5 constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay (
    .en(1'b1),
    .rst(1'b0),
    .d(im_x0),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay1 (
    .en(1'b1),
    .rst(1'b0),
    .d(re_x0),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay1_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay2 (
    .en(1'b1),
    .rst(1'b0),
    .d(rom1_im_data_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay2_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay3 (
    .en(1'b1),
    .rst(1'b0),
    .d(rom1_re_data_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay3_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay4 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay4_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay5 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay5_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay6 (
    .en(1'b1),
    .rst(1'b0),
    .d(valid_x1),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay6_q_net)
  );
  mft_overlap_add_2022_0303_xlsprom #(
    .c_address_width(10),
    .c_width(16),
    .latency(1),
    .mem_init_file("xpm_2242bf_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_val("0")
  )
  rom1_im (
    .rst(1'b0),
    .addr(addr),
    .en(valid_x1),
    .clk(clk_net),
    .ce(ce_net),
    .data(rom1_im_data_net)
  );
  mft_overlap_add_2022_0303_xlsprom #(
    .c_address_width(10),
    .c_width(16),
    .latency(1),
    .mem_init_file("xpm_abc1a0_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_val("0")
  )
  rom1_re (
    .rst(1'b0),
    .addr(addr),
    .en(valid_x1),
    .clk(clk_net),
    .ce(ce_net),
    .data(rom1_re_data_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block mft_overlap_add_2022_0303/Even_MatchedFilterBank/MatchedFilterBank/complex multiplier bank/Complex Multiply2
module mft_overlap_add_2022_0303_complex_multiply2 (
  input [16-1:0] im,
  input [16-1:0] re,
  input [10-1:0] in3_1,
  input [1-1:0] in3_3,
  input clk_1,
  input ce_1,
  output [32-1:0] tdata_imag,
  output [32-1:0] tdata_real
);
  wire [32-1:0] tdata_imag_x0;
  wire [32-1:0] tdata_real_x0;
  wire [1-1:0] valid_x1;
  wire [16-1:0] im_x0;
  wire [10-1:0] addr;
  wire ce_net;
  wire [16-1:0] delay5_q_net;
  wire valid_x0;
  wire [16-1:0] delay4_q_net;
  wire constant_op_net;
  wire [16-1:0] re_x0;
  wire [16-1:0] delay2_q_net;
  wire clk_net;
  wire delay6_q_net;
  wire [16-1:0] delay3_q_net;
  wire [16-1:0] rom1_im_data_net;
  wire [16-1:0] rom1_re_data_net;
  wire [16-1:0] delay1_q_net;
  wire [16-1:0] delay_q_net;
  assign tdata_imag = tdata_imag_x0;
  assign tdata_real = tdata_real_x0;
  assign im_x0 = im;
  assign re_x0 = re;
  assign addr = in3_1;
  assign valid_x1 = in3_3;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  xlcomplex_multiplier_a2b4ef32507594e3f0bda9e2b78d23f6 complex_multiplier_6_0 (
    .s_axis_a_tvalid(delay6_q_net),
    .s_axis_a_tdata_imag(delay5_q_net),
    .s_axis_a_tdata_real(delay4_q_net),
    .s_axis_b_tvalid(constant_op_net),
    .s_axis_b_tdata_imag(delay2_q_net),
    .s_axis_b_tdata_real(delay3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .m_axis_dout_tvalid(valid_x0),
    .m_axis_dout_tdata_imag(tdata_imag_x0),
    .m_axis_dout_tdata_real(tdata_real_x0)
  );
  sysgen_constant_19de62f6a5 constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay (
    .en(1'b1),
    .rst(1'b0),
    .d(im_x0),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay1 (
    .en(1'b1),
    .rst(1'b0),
    .d(re_x0),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay1_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay2 (
    .en(1'b1),
    .rst(1'b0),
    .d(rom1_im_data_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay2_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay3 (
    .en(1'b1),
    .rst(1'b0),
    .d(rom1_re_data_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay3_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay4 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay4_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay5 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay5_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay6 (
    .en(1'b1),
    .rst(1'b0),
    .d(valid_x1),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay6_q_net)
  );
  mft_overlap_add_2022_0303_xlsprom #(
    .c_address_width(10),
    .c_width(16),
    .latency(1),
    .mem_init_file("xpm_cbff17_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_val("0")
  )
  rom1_im (
    .rst(1'b0),
    .addr(addr),
    .en(valid_x1),
    .clk(clk_net),
    .ce(ce_net),
    .data(rom1_im_data_net)
  );
  mft_overlap_add_2022_0303_xlsprom #(
    .c_address_width(10),
    .c_width(16),
    .latency(1),
    .mem_init_file("xpm_7ca682_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_val("0")
  )
  rom1_re (
    .rst(1'b0),
    .addr(addr),
    .en(valid_x1),
    .clk(clk_net),
    .ce(ce_net),
    .data(rom1_re_data_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block mft_overlap_add_2022_0303/Even_MatchedFilterBank/MatchedFilterBank/complex multiplier bank/Complex Multiply3
module mft_overlap_add_2022_0303_complex_multiply3 (
  input [16-1:0] im,
  input [16-1:0] re,
  input [10-1:0] in3_1,
  input [1-1:0] in3_3,
  input clk_1,
  input ce_1,
  output [32-1:0] tdata_imag,
  output [32-1:0] tdata_real
);
  wire [32-1:0] tdata_imag_x0;
  wire [16-1:0] rom1_re_data_net;
  wire clk_net;
  wire [16-1:0] delay4_q_net;
  wire [1-1:0] valid_x1;
  wire [16-1:0] delay_q_net;
  wire constant_op_net;
  wire [16-1:0] delay1_q_net;
  wire [16-1:0] im_x0;
  wire [16-1:0] re_x0;
  wire [10-1:0] addr;
  wire [16-1:0] delay2_q_net;
  wire valid_x0;
  wire [16-1:0] delay5_q_net;
  wire [32-1:0] tdata_real_x0;
  wire ce_net;
  wire delay6_q_net;
  wire [16-1:0] delay3_q_net;
  wire [16-1:0] rom1_im_data_net;
  assign tdata_imag = tdata_imag_x0;
  assign tdata_real = tdata_real_x0;
  assign im_x0 = im;
  assign re_x0 = re;
  assign addr = in3_1;
  assign valid_x1 = in3_3;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  xlcomplex_multiplier_a2b4ef32507594e3f0bda9e2b78d23f6 complex_multiplier_6_0 (
    .s_axis_a_tvalid(delay6_q_net),
    .s_axis_a_tdata_imag(delay5_q_net),
    .s_axis_a_tdata_real(delay4_q_net),
    .s_axis_b_tvalid(constant_op_net),
    .s_axis_b_tdata_imag(delay2_q_net),
    .s_axis_b_tdata_real(delay3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .m_axis_dout_tvalid(valid_x0),
    .m_axis_dout_tdata_imag(tdata_imag_x0),
    .m_axis_dout_tdata_real(tdata_real_x0)
  );
  sysgen_constant_19de62f6a5 constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay (
    .en(1'b1),
    .rst(1'b0),
    .d(im_x0),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay1 (
    .en(1'b1),
    .rst(1'b0),
    .d(re_x0),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay1_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay2 (
    .en(1'b1),
    .rst(1'b0),
    .d(rom1_im_data_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay2_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay3 (
    .en(1'b1),
    .rst(1'b0),
    .d(rom1_re_data_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay3_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay4 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay4_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay5 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay5_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay6 (
    .en(1'b1),
    .rst(1'b0),
    .d(valid_x1),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay6_q_net)
  );
  mft_overlap_add_2022_0303_xlsprom #(
    .c_address_width(10),
    .c_width(16),
    .latency(1),
    .mem_init_file("xpm_32f877_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_val("0")
  )
  rom1_im (
    .rst(1'b0),
    .addr(addr),
    .en(valid_x1),
    .clk(clk_net),
    .ce(ce_net),
    .data(rom1_im_data_net)
  );
  mft_overlap_add_2022_0303_xlsprom #(
    .c_address_width(10),
    .c_width(16),
    .latency(1),
    .mem_init_file("xpm_7a2c14_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_val("0")
  )
  rom1_re (
    .rst(1'b0),
    .addr(addr),
    .en(valid_x1),
    .clk(clk_net),
    .ce(ce_net),
    .data(rom1_re_data_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block mft_overlap_add_2022_0303/Even_MatchedFilterBank/MatchedFilterBank/complex multiplier bank/Complex Multiply4
module mft_overlap_add_2022_0303_complex_multiply4 (
  input [16-1:0] im,
  input [16-1:0] re,
  input [10-1:0] in3_1,
  input [1-1:0] in3_3,
  input clk_1,
  input ce_1,
  output [32-1:0] tdata_imag,
  output [32-1:0] tdata_real
);
  wire [32-1:0] tdata_real_x0;
  wire delay6_q_net;
  wire [16-1:0] re_x0;
  wire constant_op_net;
  wire [16-1:0] im_x0;
  wire ce_net;
  wire [16-1:0] delay5_q_net;
  wire [16-1:0] delay3_q_net;
  wire valid_x0;
  wire [32-1:0] tdata_imag_x0;
  wire [10-1:0] addr;
  wire [1-1:0] valid_x1;
  wire [16-1:0] delay4_q_net;
  wire [16-1:0] delay2_q_net;
  wire clk_net;
  wire [16-1:0] delay_q_net;
  wire [16-1:0] rom1_im_data_net;
  wire [16-1:0] delay1_q_net;
  wire [16-1:0] rom1_re_data_net;
  assign tdata_imag = tdata_imag_x0;
  assign tdata_real = tdata_real_x0;
  assign im_x0 = im;
  assign re_x0 = re;
  assign addr = in3_1;
  assign valid_x1 = in3_3;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  xlcomplex_multiplier_a2b4ef32507594e3f0bda9e2b78d23f6 complex_multiplier_6_0 (
    .s_axis_a_tvalid(delay6_q_net),
    .s_axis_a_tdata_imag(delay5_q_net),
    .s_axis_a_tdata_real(delay4_q_net),
    .s_axis_b_tvalid(constant_op_net),
    .s_axis_b_tdata_imag(delay2_q_net),
    .s_axis_b_tdata_real(delay3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .m_axis_dout_tvalid(valid_x0),
    .m_axis_dout_tdata_imag(tdata_imag_x0),
    .m_axis_dout_tdata_real(tdata_real_x0)
  );
  sysgen_constant_19de62f6a5 constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay (
    .en(1'b1),
    .rst(1'b0),
    .d(im_x0),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay1 (
    .en(1'b1),
    .rst(1'b0),
    .d(re_x0),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay1_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay2 (
    .en(1'b1),
    .rst(1'b0),
    .d(rom1_im_data_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay2_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay3 (
    .en(1'b1),
    .rst(1'b0),
    .d(rom1_re_data_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay3_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay4 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay4_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay5 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay5_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay6 (
    .en(1'b1),
    .rst(1'b0),
    .d(valid_x1),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay6_q_net)
  );
  mft_overlap_add_2022_0303_xlsprom #(
    .c_address_width(10),
    .c_width(16),
    .latency(1),
    .mem_init_file("xpm_e635b2_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_val("0")
  )
  rom1_im (
    .rst(1'b0),
    .addr(addr),
    .en(valid_x1),
    .clk(clk_net),
    .ce(ce_net),
    .data(rom1_im_data_net)
  );
  mft_overlap_add_2022_0303_xlsprom #(
    .c_address_width(10),
    .c_width(16),
    .latency(1),
    .mem_init_file("xpm_6a6e8d_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_val("0")
  )
  rom1_re (
    .rst(1'b0),
    .addr(addr),
    .en(valid_x1),
    .clk(clk_net),
    .ce(ce_net),
    .data(rom1_re_data_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block mft_overlap_add_2022_0303/Even_MatchedFilterBank/MatchedFilterBank/complex multiplier bank/Complex Multiply5
module mft_overlap_add_2022_0303_complex_multiply5 (
  input [16-1:0] im,
  input [16-1:0] re,
  input [10-1:0] in3_1,
  input [1-1:0] in3_3,
  input clk_1,
  input ce_1,
  output [32-1:0] tdata_imag,
  output [32-1:0] tdata_real
);
  wire [32-1:0] tdata_real_x0;
  wire [1-1:0] valid_x1;
  wire clk_net;
  wire [10-1:0] addr;
  wire [16-1:0] re_x0;
  wire delay6_q_net;
  wire [16-1:0] delay4_q_net;
  wire [16-1:0] delay3_q_net;
  wire [16-1:0] im_x0;
  wire [32-1:0] tdata_imag_x0;
  wire valid_x0;
  wire [16-1:0] delay2_q_net;
  wire ce_net;
  wire [16-1:0] delay_q_net;
  wire [16-1:0] delay5_q_net;
  wire constant_op_net;
  wire [16-1:0] rom1_im_data_net;
  wire [16-1:0] delay1_q_net;
  wire [16-1:0] rom1_re_data_net;
  assign tdata_imag = tdata_imag_x0;
  assign tdata_real = tdata_real_x0;
  assign im_x0 = im;
  assign re_x0 = re;
  assign addr = in3_1;
  assign valid_x1 = in3_3;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  xlcomplex_multiplier_a2b4ef32507594e3f0bda9e2b78d23f6 complex_multiplier_6_0 (
    .s_axis_a_tvalid(delay6_q_net),
    .s_axis_a_tdata_imag(delay5_q_net),
    .s_axis_a_tdata_real(delay4_q_net),
    .s_axis_b_tvalid(constant_op_net),
    .s_axis_b_tdata_imag(delay2_q_net),
    .s_axis_b_tdata_real(delay3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .m_axis_dout_tvalid(valid_x0),
    .m_axis_dout_tdata_imag(tdata_imag_x0),
    .m_axis_dout_tdata_real(tdata_real_x0)
  );
  sysgen_constant_19de62f6a5 constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay (
    .en(1'b1),
    .rst(1'b0),
    .d(im_x0),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay1 (
    .en(1'b1),
    .rst(1'b0),
    .d(re_x0),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay1_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay2 (
    .en(1'b1),
    .rst(1'b0),
    .d(rom1_im_data_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay2_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay3 (
    .en(1'b1),
    .rst(1'b0),
    .d(rom1_re_data_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay3_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay4 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay4_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay5 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay5_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay6 (
    .en(1'b1),
    .rst(1'b0),
    .d(valid_x1),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay6_q_net)
  );
  mft_overlap_add_2022_0303_xlsprom #(
    .c_address_width(10),
    .c_width(16),
    .latency(1),
    .mem_init_file("xpm_ca3e06_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_val("0")
  )
  rom1_im (
    .rst(1'b0),
    .addr(addr),
    .en(valid_x1),
    .clk(clk_net),
    .ce(ce_net),
    .data(rom1_im_data_net)
  );
  mft_overlap_add_2022_0303_xlsprom #(
    .c_address_width(10),
    .c_width(16),
    .latency(1),
    .mem_init_file("xpm_597375_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_val("0")
  )
  rom1_re (
    .rst(1'b0),
    .addr(addr),
    .en(valid_x1),
    .clk(clk_net),
    .ce(ce_net),
    .data(rom1_re_data_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block mft_overlap_add_2022_0303/Even_MatchedFilterBank/MatchedFilterBank/complex multiplier bank/Complex Multiply6
module mft_overlap_add_2022_0303_complex_multiply6 (
  input [16-1:0] im,
  input [16-1:0] re,
  input [10-1:0] in3_1,
  input [1-1:0] in3_3,
  input clk_1,
  input ce_1,
  output [32-1:0] tdata_imag,
  output [32-1:0] tdata_real
);
  wire clk_net;
  wire [32-1:0] tdata_imag_x0;
  wire [16-1:0] im_x0;
  wire [16-1:0] re_x0;
  wire [10-1:0] addr;
  wire ce_net;
  wire [1-1:0] valid_x1;
  wire valid_x0;
  wire delay6_q_net;
  wire [16-1:0] delay4_q_net;
  wire constant_op_net;
  wire [16-1:0] delay5_q_net;
  wire [32-1:0] tdata_real_x0;
  wire [16-1:0] delay_q_net;
  wire [16-1:0] delay3_q_net;
  wire [16-1:0] delay2_q_net;
  wire [16-1:0] rom1_im_data_net;
  wire [16-1:0] delay1_q_net;
  wire [16-1:0] rom1_re_data_net;
  assign tdata_imag = tdata_imag_x0;
  assign tdata_real = tdata_real_x0;
  assign im_x0 = im;
  assign re_x0 = re;
  assign addr = in3_1;
  assign valid_x1 = in3_3;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  xlcomplex_multiplier_a2b4ef32507594e3f0bda9e2b78d23f6 complex_multiplier_6_0 (
    .s_axis_a_tvalid(delay6_q_net),
    .s_axis_a_tdata_imag(delay5_q_net),
    .s_axis_a_tdata_real(delay4_q_net),
    .s_axis_b_tvalid(constant_op_net),
    .s_axis_b_tdata_imag(delay2_q_net),
    .s_axis_b_tdata_real(delay3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .m_axis_dout_tvalid(valid_x0),
    .m_axis_dout_tdata_imag(tdata_imag_x0),
    .m_axis_dout_tdata_real(tdata_real_x0)
  );
  sysgen_constant_19de62f6a5 constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay (
    .en(1'b1),
    .rst(1'b0),
    .d(im_x0),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay1 (
    .en(1'b1),
    .rst(1'b0),
    .d(re_x0),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay1_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay2 (
    .en(1'b1),
    .rst(1'b0),
    .d(rom1_im_data_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay2_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay3 (
    .en(1'b1),
    .rst(1'b0),
    .d(rom1_re_data_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay3_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay4 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay4_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay5 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay5_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay6 (
    .en(1'b1),
    .rst(1'b0),
    .d(valid_x1),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay6_q_net)
  );
  mft_overlap_add_2022_0303_xlsprom #(
    .c_address_width(10),
    .c_width(16),
    .latency(1),
    .mem_init_file("xpm_e8ffa3_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_val("0")
  )
  rom1_im (
    .rst(1'b0),
    .addr(addr),
    .en(valid_x1),
    .clk(clk_net),
    .ce(ce_net),
    .data(rom1_im_data_net)
  );
  mft_overlap_add_2022_0303_xlsprom #(
    .c_address_width(10),
    .c_width(16),
    .latency(1),
    .mem_init_file("xpm_3af851_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_val("0")
  )
  rom1_re (
    .rst(1'b0),
    .addr(addr),
    .en(valid_x1),
    .clk(clk_net),
    .ce(ce_net),
    .data(rom1_re_data_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block mft_overlap_add_2022_0303/Even_MatchedFilterBank/MatchedFilterBank/complex multiplier bank/Complex Multiply7
module mft_overlap_add_2022_0303_complex_multiply7 (
  input [16-1:0] im,
  input [16-1:0] re,
  input [10-1:0] in3_1,
  input [1-1:0] in3_3,
  input clk_1,
  input ce_1,
  output [32-1:0] tdata_imag,
  output [32-1:0] tdata_real
);
  wire [1-1:0] valid_x1;
  wire [10-1:0] addr;
  wire [16-1:0] re_x0;
  wire [16-1:0] delay_q_net;
  wire [16-1:0] delay1_q_net;
  wire [16-1:0] delay2_q_net;
  wire valid_x0;
  wire [32-1:0] tdata_imag_x0;
  wire [32-1:0] tdata_real_x0;
  wire clk_net;
  wire [16-1:0] rom1_im_data_net;
  wire [16-1:0] delay5_q_net;
  wire [16-1:0] delay4_q_net;
  wire [16-1:0] delay3_q_net;
  wire ce_net;
  wire [16-1:0] im_x0;
  wire constant_op_net;
  wire delay6_q_net;
  wire [16-1:0] rom1_re_data_net;
  assign tdata_imag = tdata_imag_x0;
  assign tdata_real = tdata_real_x0;
  assign im_x0 = im;
  assign re_x0 = re;
  assign addr = in3_1;
  assign valid_x1 = in3_3;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  xlcomplex_multiplier_a2b4ef32507594e3f0bda9e2b78d23f6 complex_multiplier_6_0 (
    .s_axis_a_tvalid(delay6_q_net),
    .s_axis_a_tdata_imag(delay5_q_net),
    .s_axis_a_tdata_real(delay4_q_net),
    .s_axis_b_tvalid(constant_op_net),
    .s_axis_b_tdata_imag(delay2_q_net),
    .s_axis_b_tdata_real(delay3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .m_axis_dout_tvalid(valid_x0),
    .m_axis_dout_tdata_imag(tdata_imag_x0),
    .m_axis_dout_tdata_real(tdata_real_x0)
  );
  sysgen_constant_19de62f6a5 constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay (
    .en(1'b1),
    .rst(1'b0),
    .d(im_x0),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay1 (
    .en(1'b1),
    .rst(1'b0),
    .d(re_x0),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay1_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay2 (
    .en(1'b1),
    .rst(1'b0),
    .d(rom1_im_data_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay2_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay3 (
    .en(1'b1),
    .rst(1'b0),
    .d(rom1_re_data_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay3_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay4 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay4_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay5 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay5_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay6 (
    .en(1'b1),
    .rst(1'b0),
    .d(valid_x1),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay6_q_net)
  );
  mft_overlap_add_2022_0303_xlsprom #(
    .c_address_width(10),
    .c_width(16),
    .latency(1),
    .mem_init_file("xpm_64aab2_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_val("0")
  )
  rom1_im (
    .rst(1'b0),
    .addr(addr),
    .en(valid_x1),
    .clk(clk_net),
    .ce(ce_net),
    .data(rom1_im_data_net)
  );
  mft_overlap_add_2022_0303_xlsprom #(
    .c_address_width(10),
    .c_width(16),
    .latency(1),
    .mem_init_file("xpm_8eaed8_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_val("0")
  )
  rom1_re (
    .rst(1'b0),
    .addr(addr),
    .en(valid_x1),
    .clk(clk_net),
    .ce(ce_net),
    .data(rom1_re_data_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block mft_overlap_add_2022_0303/Even_MatchedFilterBank/MatchedFilterBank/complex multiplier bank/Complex Multiply8
module mft_overlap_add_2022_0303_complex_multiply8 (
  input [16-1:0] im,
  input [16-1:0] re,
  input [10-1:0] in3_1,
  input [1-1:0] in3_3,
  input clk_1,
  input ce_1,
  output [32-1:0] tdata_imag,
  output [32-1:0] tdata_real
);
  wire clk_net;
  wire [16-1:0] im_x0;
  wire [10-1:0] addr;
  wire [1-1:0] valid_x1;
  wire valid_x0;
  wire [16-1:0] re_x0;
  wire ce_net;
  wire delay6_q_net;
  wire [16-1:0] delay5_q_net;
  wire [32-1:0] tdata_imag_x0;
  wire [32-1:0] tdata_real_x0;
  wire [16-1:0] delay1_q_net;
  wire constant_op_net;
  wire [16-1:0] rom1_im_data_net;
  wire [16-1:0] delay4_q_net;
  wire [16-1:0] rom1_re_data_net;
  wire [16-1:0] delay2_q_net;
  wire [16-1:0] delay_q_net;
  wire [16-1:0] delay3_q_net;
  assign tdata_imag = tdata_imag_x0;
  assign tdata_real = tdata_real_x0;
  assign im_x0 = im;
  assign re_x0 = re;
  assign addr = in3_1;
  assign valid_x1 = in3_3;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  xlcomplex_multiplier_a2b4ef32507594e3f0bda9e2b78d23f6 complex_multiplier_6_0 (
    .s_axis_a_tvalid(delay6_q_net),
    .s_axis_a_tdata_imag(delay5_q_net),
    .s_axis_a_tdata_real(delay4_q_net),
    .s_axis_b_tvalid(constant_op_net),
    .s_axis_b_tdata_imag(delay2_q_net),
    .s_axis_b_tdata_real(delay3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .m_axis_dout_tvalid(valid_x0),
    .m_axis_dout_tdata_imag(tdata_imag_x0),
    .m_axis_dout_tdata_real(tdata_real_x0)
  );
  sysgen_constant_19de62f6a5 constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay (
    .en(1'b1),
    .rst(1'b0),
    .d(im_x0),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay1 (
    .en(1'b1),
    .rst(1'b0),
    .d(re_x0),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay1_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay2 (
    .en(1'b1),
    .rst(1'b0),
    .d(rom1_im_data_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay2_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay3 (
    .en(1'b1),
    .rst(1'b0),
    .d(rom1_re_data_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay3_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay4 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay4_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay5 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay5_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay6 (
    .en(1'b1),
    .rst(1'b0),
    .d(valid_x1),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay6_q_net)
  );
  mft_overlap_add_2022_0303_xlsprom #(
    .c_address_width(10),
    .c_width(16),
    .latency(1),
    .mem_init_file("xpm_320829_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_val("0")
  )
  rom1_im (
    .rst(1'b0),
    .addr(addr),
    .en(valid_x1),
    .clk(clk_net),
    .ce(ce_net),
    .data(rom1_im_data_net)
  );
  mft_overlap_add_2022_0303_xlsprom #(
    .c_address_width(10),
    .c_width(16),
    .latency(1),
    .mem_init_file("xpm_f57ea4_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_val("0")
  )
  rom1_re (
    .rst(1'b0),
    .addr(addr),
    .en(valid_x1),
    .clk(clk_net),
    .ce(ce_net),
    .data(rom1_re_data_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block mft_overlap_add_2022_0303/Even_MatchedFilterBank/MatchedFilterBank/complex multiplier bank/Complex Multiply9
module mft_overlap_add_2022_0303_complex_multiply9 (
  input [16-1:0] im,
  input [16-1:0] re,
  input [10-1:0] in3_1,
  input [1-1:0] in3_3,
  input clk_1,
  input ce_1,
  output [32-1:0] tdata_imag,
  output [32-1:0] tdata_real
);
  wire valid_x0;
  wire clk_net;
  wire constant_op_net;
  wire [10-1:0] addr;
  wire [16-1:0] delay3_q_net;
  wire [16-1:0] re_x0;
  wire [16-1:0] delay5_q_net;
  wire [32-1:0] tdata_imag_x0;
  wire [16-1:0] im_x0;
  wire [16-1:0] delay4_q_net;
  wire [16-1:0] delay2_q_net;
  wire [16-1:0] delay1_q_net;
  wire ce_net;
  wire [16-1:0] rom1_im_data_net;
  wire [32-1:0] tdata_real_x0;
  wire [16-1:0] delay_q_net;
  wire delay6_q_net;
  wire [1-1:0] valid_x1;
  wire [16-1:0] rom1_re_data_net;
  assign tdata_imag = tdata_imag_x0;
  assign tdata_real = tdata_real_x0;
  assign im_x0 = im;
  assign re_x0 = re;
  assign addr = in3_1;
  assign valid_x1 = in3_3;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  xlcomplex_multiplier_a2b4ef32507594e3f0bda9e2b78d23f6 complex_multiplier_6_0 (
    .s_axis_a_tvalid(delay6_q_net),
    .s_axis_a_tdata_imag(delay5_q_net),
    .s_axis_a_tdata_real(delay4_q_net),
    .s_axis_b_tvalid(constant_op_net),
    .s_axis_b_tdata_imag(delay2_q_net),
    .s_axis_b_tdata_real(delay3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .m_axis_dout_tvalid(valid_x0),
    .m_axis_dout_tdata_imag(tdata_imag_x0),
    .m_axis_dout_tdata_real(tdata_real_x0)
  );
  sysgen_constant_19de62f6a5 constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay (
    .en(1'b1),
    .rst(1'b0),
    .d(im_x0),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay1 (
    .en(1'b1),
    .rst(1'b0),
    .d(re_x0),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay1_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay2 (
    .en(1'b1),
    .rst(1'b0),
    .d(rom1_im_data_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay2_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay3 (
    .en(1'b1),
    .rst(1'b0),
    .d(rom1_re_data_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay3_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay4 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay4_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay5 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay5_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay6 (
    .en(1'b1),
    .rst(1'b0),
    .d(valid_x1),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay6_q_net)
  );
  mft_overlap_add_2022_0303_xlsprom #(
    .c_address_width(10),
    .c_width(16),
    .latency(1),
    .mem_init_file("xpm_7d3c03_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_val("0")
  )
  rom1_im (
    .rst(1'b0),
    .addr(addr),
    .en(valid_x1),
    .clk(clk_net),
    .ce(ce_net),
    .data(rom1_im_data_net)
  );
  mft_overlap_add_2022_0303_xlsprom #(
    .c_address_width(10),
    .c_width(16),
    .latency(1),
    .mem_init_file("xpm_019491_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_val("0")
  )
  rom1_re (
    .rst(1'b0),
    .addr(addr),
    .en(valid_x1),
    .clk(clk_net),
    .ce(ce_net),
    .data(rom1_re_data_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block mft_overlap_add_2022_0303/Even_MatchedFilterBank/MatchedFilterBank/complex multiplier bank
module mft_overlap_add_2022_0303_complex_multiplier_bank (
  input [16-1:0] in1_1,
  input [16-1:0] in1_2,
  input [10-1:0] in1_3,
  input [1-1:0] in1_5,
  input clk_1,
  input ce_1,
  output [32-1:0] bus_out_2,
  output [32-1:0] bus_out_3,
  output [32-1:0] bus_out_5,
  output [32-1:0] bus_out_6,
  output [32-1:0] bus_out_8,
  output [32-1:0] bus_out_9,
  output [32-1:0] bus_out_11,
  output [32-1:0] bus_out_12,
  output [32-1:0] bus_out_14,
  output [32-1:0] bus_out_15,
  output [32-1:0] bus_out_17,
  output [32-1:0] bus_out_18,
  output [32-1:0] bus_out_20,
  output [32-1:0] bus_out_21,
  output [32-1:0] bus_out_23,
  output [32-1:0] bus_out_24,
  output [32-1:0] bus_out_26,
  output [32-1:0] bus_out_27,
  output [32-1:0] bus_out_29,
  output [32-1:0] bus_out_30
);
  wire [32-1:0] tdata_imag_x5;
  wire [32-1:0] tdata_real;
  wire [32-1:0] tdata_real_x2;
  wire [32-1:0] tdata_real_x1;
  wire [32-1:0] tdata_imag;
  wire [32-1:0] tdata_imag_x8;
  wire [32-1:0] tdata_real_x0;
  wire [32-1:0] tdata_real_x8;
  wire [32-1:0] tdata_imag_x7;
  wire [32-1:0] tdata_imag_x2;
  wire [32-1:0] tdata_imag_x3;
  wire [32-1:0] tdata_imag_x0;
  wire [32-1:0] tdata_imag_x1;
  wire [32-1:0] tdata_real_x4;
  wire [32-1:0] tdata_real_x3;
  wire [16-1:0] re;
  wire [1-1:0] valid_x7;
  wire [32-1:0] tdata_imag_x4;
  wire [16-1:0] im;
  wire [32-1:0] tdata_imag_x6;
  wire [32-1:0] tdata_real_x7;
  wire [32-1:0] tdata_real_x6;
  wire clk_net;
  wire ce_net;
  wire [32-1:0] tdata_real_x5;
  wire [10-1:0] addr;
  assign bus_out_2 = tdata_imag_x5;
  assign bus_out_3 = tdata_real_x4;
  assign bus_out_5 = tdata_imag_x3;
  assign bus_out_6 = tdata_real_x3;
  assign bus_out_8 = tdata_imag_x2;
  assign bus_out_9 = tdata_real_x2;
  assign bus_out_11 = tdata_imag_x1;
  assign bus_out_12 = tdata_real_x1;
  assign bus_out_14 = tdata_imag_x0;
  assign bus_out_15 = tdata_real_x0;
  assign bus_out_17 = tdata_imag;
  assign bus_out_18 = tdata_real;
  assign bus_out_20 = tdata_imag_x8;
  assign bus_out_21 = tdata_real_x8;
  assign bus_out_23 = tdata_imag_x7;
  assign bus_out_24 = tdata_real_x7;
  assign bus_out_26 = tdata_imag_x6;
  assign bus_out_27 = tdata_real_x6;
  assign bus_out_29 = tdata_imag_x4;
  assign bus_out_30 = tdata_real_x5;
  assign im = in1_1;
  assign re = in1_2;
  assign addr = in1_3;
  assign valid_x7 = in1_5;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  mft_overlap_add_2022_0303_complex_multiply_1 complex_multiply_1 (
    .im(im),
    .re(re),
    .in3_1(addr),
    .in3_3(valid_x7),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .tdata_imag(tdata_imag_x5),
    .tdata_real(tdata_real_x4)
  );
  mft_overlap_add_2022_0303_complex_multiply10 complex_multiply10 (
    .im(im),
    .re(re),
    .in3_1(addr),
    .in3_3(valid_x7),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .tdata_imag(tdata_imag_x4),
    .tdata_real(tdata_real_x5)
  );
  mft_overlap_add_2022_0303_complex_multiply2 complex_multiply2 (
    .im(im),
    .re(re),
    .in3_1(addr),
    .in3_3(valid_x7),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .tdata_imag(tdata_imag_x3),
    .tdata_real(tdata_real_x3)
  );
  mft_overlap_add_2022_0303_complex_multiply3 complex_multiply3 (
    .im(im),
    .re(re),
    .in3_1(addr),
    .in3_3(valid_x7),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .tdata_imag(tdata_imag_x2),
    .tdata_real(tdata_real_x2)
  );
  mft_overlap_add_2022_0303_complex_multiply4 complex_multiply4 (
    .im(im),
    .re(re),
    .in3_1(addr),
    .in3_3(valid_x7),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .tdata_imag(tdata_imag_x1),
    .tdata_real(tdata_real_x1)
  );
  mft_overlap_add_2022_0303_complex_multiply5 complex_multiply5 (
    .im(im),
    .re(re),
    .in3_1(addr),
    .in3_3(valid_x7),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .tdata_imag(tdata_imag_x0),
    .tdata_real(tdata_real_x0)
  );
  mft_overlap_add_2022_0303_complex_multiply6 complex_multiply6 (
    .im(im),
    .re(re),
    .in3_1(addr),
    .in3_3(valid_x7),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .tdata_imag(tdata_imag),
    .tdata_real(tdata_real)
  );
  mft_overlap_add_2022_0303_complex_multiply7 complex_multiply7 (
    .im(im),
    .re(re),
    .in3_1(addr),
    .in3_3(valid_x7),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .tdata_imag(tdata_imag_x8),
    .tdata_real(tdata_real_x8)
  );
  mft_overlap_add_2022_0303_complex_multiply8 complex_multiply8 (
    .im(im),
    .re(re),
    .in3_1(addr),
    .in3_3(valid_x7),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .tdata_imag(tdata_imag_x7),
    .tdata_real(tdata_real_x7)
  );
  mft_overlap_add_2022_0303_complex_multiply9 complex_multiply9 (
    .im(im),
    .re(re),
    .in3_1(addr),
    .in3_3(valid_x7),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .tdata_imag(tdata_imag_x6),
    .tdata_real(tdata_real_x6)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block mft_overlap_add_2022_0303/Even_MatchedFilterBank/MatchedFilterBank/im_sum
module mft_overlap_add_2022_0303_im_sum (
  input [32-1:0] bus_out_2,
  input [32-1:0] bus_out_3,
  input [32-1:0] bus_out_5,
  input [32-1:0] bus_out_6,
  input [32-1:0] bus_out_8,
  input [32-1:0] bus_out_9,
  input [32-1:0] bus_out_11,
  input [32-1:0] bus_out_12,
  input [32-1:0] bus_out_14,
  input [32-1:0] bus_out_15,
  input [32-1:0] bus_out_17,
  input [32-1:0] bus_out_18,
  input [32-1:0] bus_out_20,
  input [32-1:0] bus_out_21,
  input [32-1:0] bus_out_23,
  input [32-1:0] bus_out_24,
  input [32-1:0] bus_out_26,
  input [32-1:0] bus_out_27,
  input [32-1:0] bus_out_29,
  input [32-1:0] bus_out_30,
  input clk_1,
  input ce_1,
  output [36-1:0] out
);
  wire [32-1:0] tdata_real_x0;
  wire [32-1:0] tdata_real;
  wire [32-1:0] tdata_imag_x2;
  wire [32-1:0] tdata_real_x8;
  wire [32-1:0] tdata_imag_x4;
  wire [32-1:0] tdata_real_x2;
  wire [32-1:0] tdata_real_x1;
  wire [32-1:0] tdata_imag_x6;
  wire [32-1:0] tdata_real_x6;
  wire [32-1:0] tdata_imag_x3;
  wire [32-1:0] tdata_imag_x1;
  wire [32-1:0] tdata_imag_x0;
  wire [32-1:0] tdata_imag_x5;
  wire [32-1:0] tdata_imag_x7;
  wire [36-1:0] out_x1;
  wire [32-1:0] tdata_imag_x8;
  wire [32-1:0] tdata_real_x5;
  wire [32-1:0] tdata_real_x3;
  wire [32-1:0] tdata_imag;
  wire [32-1:0] tdata_real_x4;
  wire [33-1:0] addsub2_s_net;
  wire [34-1:0] addsub7_s_net;
  wire clk_net;
  wire [33-1:0] addsub1_s_net;
  wire [35-1:0] addsub5_s_net;
  wire ce_net;
  wire [33-1:0] addsub3_s_net;
  wire [32-1:0] tdata_real_x7;
  wire [32-1:0] delay_11_q_net;
  wire [34-1:0] addsub6_s_net;
  wire [33-1:0] addsub4_s_net;
  wire [35-1:0] out_x0;
  wire [32-1:0] delay_1_q_net;
  wire [32-1:0] delay_10_q_net;
  wire [32-1:0] delay_2_q_net;
  assign out = out_x1;
  assign tdata_imag_x8 = bus_out_2;
  assign tdata_real_x8 = bus_out_3;
  assign tdata_imag_x6 = bus_out_5;
  assign tdata_real_x6 = bus_out_6;
  assign tdata_imag_x5 = bus_out_8;
  assign tdata_real_x5 = bus_out_9;
  assign tdata_imag_x4 = bus_out_11;
  assign tdata_real_x4 = bus_out_12;
  assign tdata_imag_x3 = bus_out_14;
  assign tdata_real_x3 = bus_out_15;
  assign tdata_imag_x2 = bus_out_17;
  assign tdata_real_x2 = bus_out_18;
  assign tdata_imag_x1 = bus_out_20;
  assign tdata_real_x1 = bus_out_21;
  assign tdata_imag_x0 = bus_out_23;
  assign tdata_real_x0 = bus_out_24;
  assign tdata_imag = bus_out_26;
  assign tdata_real = bus_out_27;
  assign tdata_imag_x7 = bus_out_29;
  assign tdata_real_x7 = bus_out_30;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  mft_overlap_add_2022_0303_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(29),
    .a_width(32),
    .b_arith(`xlSigned),
    .b_bin_pt(29),
    .b_width(32),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(33),
    .core_name0("mft_overlap_add_2022_0303_c_addsub_v12_0_i1"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(33),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(29),
    .s_width(33)
  )
  addsub1 (
    .clr(1'b0),
    .en(1'b1),
    .a(tdata_imag_x8),
    .b(tdata_imag_x6),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub1_s_net)
  );
  mft_overlap_add_2022_0303_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(29),
    .a_width(32),
    .b_arith(`xlSigned),
    .b_bin_pt(29),
    .b_width(32),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(33),
    .core_name0("mft_overlap_add_2022_0303_c_addsub_v12_0_i1"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(33),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(29),
    .s_width(33)
  )
  addsub2 (
    .clr(1'b0),
    .en(1'b1),
    .a(tdata_imag_x5),
    .b(tdata_imag_x4),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub2_s_net)
  );
  mft_overlap_add_2022_0303_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(29),
    .a_width(32),
    .b_arith(`xlSigned),
    .b_bin_pt(29),
    .b_width(32),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(33),
    .core_name0("mft_overlap_add_2022_0303_c_addsub_v12_0_i1"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(33),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(29),
    .s_width(33)
  )
  addsub3 (
    .clr(1'b0),
    .en(1'b1),
    .a(tdata_imag_x2),
    .b(tdata_imag_x1),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub3_s_net)
  );
  mft_overlap_add_2022_0303_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(29),
    .a_width(32),
    .b_arith(`xlSigned),
    .b_bin_pt(29),
    .b_width(32),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(33),
    .core_name0("mft_overlap_add_2022_0303_c_addsub_v12_0_i1"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(33),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(29),
    .s_width(33)
  )
  addsub4 (
    .clr(1'b0),
    .en(1'b1),
    .a(tdata_imag_x0),
    .b(tdata_imag),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub4_s_net)
  );
  mft_overlap_add_2022_0303_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(29),
    .a_width(34),
    .b_arith(`xlSigned),
    .b_bin_pt(29),
    .b_width(32),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(35),
    .core_name0("mft_overlap_add_2022_0303_c_addsub_v12_0_i2"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(35),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(29),
    .s_width(35)
  )
  addsub5 (
    .clr(1'b0),
    .en(1'b1),
    .a(addsub7_s_net),
    .b(delay_11_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub5_s_net)
  );
  mft_overlap_add_2022_0303_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(29),
    .a_width(33),
    .b_arith(`xlSigned),
    .b_bin_pt(29),
    .b_width(33),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(34),
    .core_name0("mft_overlap_add_2022_0303_c_addsub_v12_0_i3"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(34),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(29),
    .s_width(34)
  )
  addsub6 (
    .clr(1'b0),
    .en(1'b1),
    .a(addsub1_s_net),
    .b(addsub2_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub6_s_net)
  );
  mft_overlap_add_2022_0303_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(29),
    .a_width(33),
    .b_arith(`xlSigned),
    .b_bin_pt(29),
    .b_width(33),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(34),
    .core_name0("mft_overlap_add_2022_0303_c_addsub_v12_0_i3"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(34),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(29),
    .s_width(34)
  )
  addsub7 (
    .clr(1'b0),
    .en(1'b1),
    .a(addsub3_s_net),
    .b(addsub4_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub7_s_net)
  );
  mft_overlap_add_2022_0303_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(29),
    .a_width(34),
    .b_arith(`xlSigned),
    .b_bin_pt(29),
    .b_width(32),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(35),
    .core_name0("mft_overlap_add_2022_0303_c_addsub_v12_0_i2"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(35),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(29),
    .s_width(35)
  )
  addsub8 (
    .clr(1'b0),
    .en(1'b1),
    .a(addsub6_s_net),
    .b(delay_2_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(out_x0)
  );
  mft_overlap_add_2022_0303_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(29),
    .a_width(35),
    .b_arith(`xlSigned),
    .b_bin_pt(29),
    .b_width(35),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(36),
    .core_name0("mft_overlap_add_2022_0303_c_addsub_v12_0_i4"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(36),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(29),
    .s_width(36)
  )
  addsub9 (
    .clr(1'b0),
    .en(1'b1),
    .a(out_x0),
    .b(addsub5_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(out_x1)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(32)
  )
  delay_1 (
    .en(1'b1),
    .rst(1'b0),
    .d(tdata_imag_x3),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_1_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(32)
  )
  delay_10 (
    .en(1'b1),
    .rst(1'b0),
    .d(tdata_imag_x7),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_10_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(32)
  )
  delay_11 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay_10_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_11_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(32)
  )
  delay_2 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay_1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_2_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block mft_overlap_add_2022_0303/Even_MatchedFilterBank/MatchedFilterBank/re_sum
module mft_overlap_add_2022_0303_re_sum (
  input [32-1:0] bus_int_2,
  input [32-1:0] bus_int_3,
  input [32-1:0] bus_int_5,
  input [32-1:0] bus_int_6,
  input [32-1:0] bus_int_8,
  input [32-1:0] bus_int_9,
  input [32-1:0] bus_int_11,
  input [32-1:0] bus_int_12,
  input [32-1:0] bus_int_14,
  input [32-1:0] bus_int_15,
  input [32-1:0] bus_int_17,
  input [32-1:0] bus_int_18,
  input [32-1:0] bus_int_20,
  input [32-1:0] bus_int_21,
  input [32-1:0] bus_int_23,
  input [32-1:0] bus_int_24,
  input [32-1:0] bus_int_26,
  input [32-1:0] bus_int_27,
  input [32-1:0] bus_int_29,
  input [32-1:0] bus_int_30,
  input clk_1,
  input ce_1,
  output [36-1:0] out1
);
  wire [32-1:0] tdata_imag_x3;
  wire [32-1:0] tdata_real_x3;
  wire [36-1:0] addsub9_s_net;
  wire [32-1:0] tdata_real_x6;
  wire [32-1:0] tdata_imag_x5;
  wire [32-1:0] tdata_imag_x6;
  wire [32-1:0] tdata_real_x8;
  wire [32-1:0] tdata_real_x5;
  wire [32-1:0] tdata_imag_x8;
  wire [32-1:0] tdata_imag_x4;
  wire [32-1:0] tdata_real_x4;
  wire ce_net;
  wire [32-1:0] tdata_real_x0;
  wire [33-1:0] addsub1_s_net;
  wire clk_net;
  wire [32-1:0] tdata_real_x7;
  wire [32-1:0] tdata_imag_x0;
  wire [32-1:0] tdata_imag_x2;
  wire [32-1:0] tdata_imag;
  wire [33-1:0] addsub2_s_net;
  wire [32-1:0] tdata_real_x2;
  wire [32-1:0] tdata_imag_x1;
  wire [33-1:0] addsub5_s_net;
  wire [33-1:0] addsub3_s_net;
  wire [33-1:0] addsub4_s_net;
  wire [32-1:0] tdata_real;
  wire [32-1:0] tdata_real_x1;
  wire [32-1:0] tdata_imag_x7;
  wire [34-1:0] addsub7_s_net;
  wire [33-1:0] delay_11_q_net;
  wire [35-1:0] out;
  wire [33-1:0] delay_10_q_net;
  wire [34-1:0] addsub6_s_net;
  assign out1 = addsub9_s_net;
  assign tdata_imag_x8 = bus_int_2;
  assign tdata_real_x8 = bus_int_3;
  assign tdata_imag_x6 = bus_int_5;
  assign tdata_real_x6 = bus_int_6;
  assign tdata_imag_x5 = bus_int_8;
  assign tdata_real_x5 = bus_int_9;
  assign tdata_imag_x4 = bus_int_11;
  assign tdata_real_x4 = bus_int_12;
  assign tdata_imag_x3 = bus_int_14;
  assign tdata_real_x3 = bus_int_15;
  assign tdata_imag_x2 = bus_int_17;
  assign tdata_real_x2 = bus_int_18;
  assign tdata_imag_x1 = bus_int_20;
  assign tdata_real_x1 = bus_int_21;
  assign tdata_imag_x0 = bus_int_23;
  assign tdata_real_x0 = bus_int_24;
  assign tdata_imag = bus_int_26;
  assign tdata_real = bus_int_27;
  assign tdata_imag_x7 = bus_int_29;
  assign tdata_real_x7 = bus_int_30;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  mft_overlap_add_2022_0303_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(29),
    .a_width(32),
    .b_arith(`xlSigned),
    .b_bin_pt(29),
    .b_width(32),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(33),
    .core_name0("mft_overlap_add_2022_0303_c_addsub_v12_0_i1"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(33),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(29),
    .s_width(33)
  )
  addsub1 (
    .clr(1'b0),
    .en(1'b1),
    .a(tdata_real_x8),
    .b(tdata_real_x6),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub1_s_net)
  );
  mft_overlap_add_2022_0303_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(29),
    .a_width(32),
    .b_arith(`xlSigned),
    .b_bin_pt(29),
    .b_width(32),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(33),
    .core_name0("mft_overlap_add_2022_0303_c_addsub_v12_0_i1"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(33),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(29),
    .s_width(33)
  )
  addsub2 (
    .clr(1'b0),
    .en(1'b1),
    .a(tdata_real_x5),
    .b(tdata_real_x4),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub2_s_net)
  );
  mft_overlap_add_2022_0303_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(29),
    .a_width(32),
    .b_arith(`xlSigned),
    .b_bin_pt(29),
    .b_width(32),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(33),
    .core_name0("mft_overlap_add_2022_0303_c_addsub_v12_0_i1"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(33),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(29),
    .s_width(33)
  )
  addsub3 (
    .clr(1'b0),
    .en(1'b1),
    .a(tdata_real_x3),
    .b(tdata_real_x2),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub3_s_net)
  );
  mft_overlap_add_2022_0303_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(29),
    .a_width(32),
    .b_arith(`xlSigned),
    .b_bin_pt(29),
    .b_width(32),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(33),
    .core_name0("mft_overlap_add_2022_0303_c_addsub_v12_0_i1"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(33),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(29),
    .s_width(33)
  )
  addsub4 (
    .clr(1'b0),
    .en(1'b1),
    .a(tdata_real_x1),
    .b(tdata_real_x0),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub4_s_net)
  );
  mft_overlap_add_2022_0303_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(29),
    .a_width(32),
    .b_arith(`xlSigned),
    .b_bin_pt(29),
    .b_width(32),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(33),
    .core_name0("mft_overlap_add_2022_0303_c_addsub_v12_0_i1"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(33),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(29),
    .s_width(33)
  )
  addsub5 (
    .clr(1'b0),
    .en(1'b1),
    .a(tdata_real),
    .b(tdata_real_x7),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub5_s_net)
  );
  mft_overlap_add_2022_0303_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(29),
    .a_width(33),
    .b_arith(`xlSigned),
    .b_bin_pt(29),
    .b_width(33),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(34),
    .core_name0("mft_overlap_add_2022_0303_c_addsub_v12_0_i3"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(34),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(29),
    .s_width(34)
  )
  addsub6 (
    .clr(1'b0),
    .en(1'b1),
    .a(addsub1_s_net),
    .b(addsub2_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub6_s_net)
  );
  mft_overlap_add_2022_0303_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(29),
    .a_width(33),
    .b_arith(`xlSigned),
    .b_bin_pt(29),
    .b_width(33),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(34),
    .core_name0("mft_overlap_add_2022_0303_c_addsub_v12_0_i3"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(34),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(29),
    .s_width(34)
  )
  addsub7 (
    .clr(1'b0),
    .en(1'b1),
    .a(addsub3_s_net),
    .b(addsub4_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub7_s_net)
  );
  mft_overlap_add_2022_0303_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(29),
    .a_width(34),
    .b_arith(`xlSigned),
    .b_bin_pt(29),
    .b_width(34),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(35),
    .core_name0("mft_overlap_add_2022_0303_c_addsub_v12_0_i2"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(35),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(29),
    .s_width(35)
  )
  addsub8 (
    .clr(1'b0),
    .en(1'b1),
    .a(addsub6_s_net),
    .b(addsub7_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(out)
  );
  mft_overlap_add_2022_0303_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(29),
    .a_width(35),
    .b_arith(`xlSigned),
    .b_bin_pt(29),
    .b_width(33),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(36),
    .core_name0("mft_overlap_add_2022_0303_c_addsub_v12_0_i4"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(36),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(29),
    .s_width(36)
  )
  addsub9 (
    .clr(1'b0),
    .en(1'b1),
    .a(out),
    .b(delay_11_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub9_s_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(33)
  )
  delay_10 (
    .en(1'b1),
    .rst(1'b0),
    .d(addsub5_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_10_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(33)
  )
  delay_11 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay_10_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_11_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block mft_overlap_add_2022_0303/Even_MatchedFilterBank/MatchedFilterBank
module mft_overlap_add_2022_0303_matchedfilterbank (
  input [16-1:0] re,
  input [16-1:0] re1,
  input [1-1:0] reset,
  input [1-1:0] valid,
  input [16-1:0] valid3,
  input clk_1,
  input ce_1,
  output [52-1:0] mf_im,
  output [52-1:0] mf_re
);
  wire clk_net;
  wire [16-1:0] even_window;
  wire ce_net;
  wire [32-1:0] tdata_imag_x2;
  wire [16-1:0] mult_p_net;
  wire [16-1:0] mult_p_net_x0;
  wire [52-1:0] mult10_p_net;
  wire [52-1:0] mult12_p_net;
  wire [1-1:0] even_cycle;
  wire [1-1:0] data_tvalid;
  wire [16-1:0] win_x1;
  wire [16-1:0] delay_q_net;
  wire [32-1:0] tdata_real_x4;
  wire [32-1:0] tdata_real_x8;
  wire [32-1:0] tdata_real_x6;
  wire [36-1:0] addsub9_s_net;
  wire [32-1:0] tdata_imag_x8;
  wire [32-1:0] tdata_imag_x7;
  wire [32-1:0] tdata_imag_x4;
  wire [32-1:0] tdata_imag;
  wire [32-1:0] tdata_real;
  wire [32-1:0] tdata_real_x1;
  wire [1-1:0] valid_x4;
  wire [32-1:0] tdata_real_x2;
  wire [32-1:0] tdata_imag_x3;
  wire [16-1:0] re_x0;
  wire [36-1:0] out;
  wire [16-1:0] win;
  wire [32-1:0] tdata_real_x3;
  wire [16-1:0] im;
  wire [32-1:0] tdata_real_x0;
  wire [32-1:0] tdata_imag_x1;
  wire [16-1:0] win_x0;
  wire [32-1:0] tdata_imag_x0;
  wire [1-1:0] reset_x1;
  wire [1-1:0] valid_x5;
  wire [32-1:0] tdata_imag_x5;
  wire [32-1:0] tdata_real_x5;
  wire [32-1:0] tdata_imag_x6;
  wire [32-1:0] tdata_real_x7;
  wire [10-1:0] addr;
  wire [16-1:0] re_x1;
  wire [16-1:0] im_x0;
  assign mf_im = mult10_p_net;
  assign mf_re = mult12_p_net;
  assign mult_p_net_x0 = re;
  assign mult_p_net = re1;
  assign even_cycle = reset;
  assign data_tvalid = valid;
  assign even_window = valid3;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  mft_overlap_add_2022_0303_complex_multiplier_bank complex_multiplier_bank (
    .in1_1(im),
    .in1_2(re_x0),
    .in1_3(addr),
    .in1_5(valid_x4),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .bus_out_2(tdata_imag_x2),
    .bus_out_3(tdata_real_x2),
    .bus_out_5(tdata_imag_x3),
    .bus_out_6(tdata_real_x3),
    .bus_out_8(tdata_imag_x4),
    .bus_out_9(tdata_real_x4),
    .bus_out_11(tdata_imag_x5),
    .bus_out_12(tdata_real_x5),
    .bus_out_14(tdata_imag_x6),
    .bus_out_15(tdata_real_x6),
    .bus_out_17(tdata_imag_x7),
    .bus_out_18(tdata_real_x7),
    .bus_out_20(tdata_imag_x8),
    .bus_out_21(tdata_real_x8),
    .bus_out_23(tdata_imag_x0),
    .bus_out_24(tdata_real_x0),
    .bus_out_26(tdata_imag),
    .bus_out_27(tdata_real),
    .bus_out_29(tdata_imag_x1),
    .bus_out_30(tdata_real_x1)
  );
  mft_overlap_add_2022_0303_im_sum im_sum (
    .bus_out_2(tdata_imag_x2),
    .bus_out_3(tdata_real_x2),
    .bus_out_5(tdata_imag_x3),
    .bus_out_6(tdata_real_x3),
    .bus_out_8(tdata_imag_x4),
    .bus_out_9(tdata_real_x4),
    .bus_out_11(tdata_imag_x5),
    .bus_out_12(tdata_real_x5),
    .bus_out_14(tdata_imag_x6),
    .bus_out_15(tdata_real_x6),
    .bus_out_17(tdata_imag_x7),
    .bus_out_18(tdata_real_x7),
    .bus_out_20(tdata_imag_x8),
    .bus_out_21(tdata_real_x8),
    .bus_out_23(tdata_imag_x0),
    .bus_out_24(tdata_real_x0),
    .bus_out_26(tdata_imag),
    .bus_out_27(tdata_real),
    .bus_out_29(tdata_imag_x1),
    .bus_out_30(tdata_real_x1),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .out(out)
  );
  mft_overlap_add_2022_0303_re_sum re_sum (
    .bus_int_2(tdata_imag_x2),
    .bus_int_3(tdata_real_x2),
    .bus_int_5(tdata_imag_x3),
    .bus_int_6(tdata_real_x3),
    .bus_int_8(tdata_imag_x4),
    .bus_int_9(tdata_real_x4),
    .bus_int_11(tdata_imag_x5),
    .bus_int_12(tdata_real_x5),
    .bus_int_14(tdata_imag_x6),
    .bus_int_15(tdata_real_x6),
    .bus_int_17(tdata_imag_x7),
    .bus_int_18(tdata_real_x7),
    .bus_int_20(tdata_imag_x8),
    .bus_int_21(tdata_real_x8),
    .bus_int_23(tdata_imag_x0),
    .bus_int_24(tdata_real_x0),
    .bus_int_26(tdata_imag),
    .bus_int_27(tdata_real),
    .bus_int_29(tdata_imag_x1),
    .bus_int_30(tdata_real_x1),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .out1(addsub9_s_net)
  );
  mft_overlap_add_2022_0303_xlcounter_limit #(
    .cnt_15_0(0),
    .cnt_31_16(0),
    .cnt_47_32(0),
    .cnt_63_48(0),
    .core_name0("mft_overlap_add_2022_0303_c_counter_binary_v12_0_i0"),
    .count_limited(0),
    .op_arith(`xlUnsigned),
    .op_width(10)
  )
  counter (
    .clr(1'b0),
    .rst(reset_x1),
    .en(valid_x5),
    .clk(clk_net),
    .ce(ce_net),
    .op(addr)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(4),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay (
    .en(1'b1),
    .rst(1'b0),
    .d(win),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay10 (
    .en(1'b1),
    .rst(1'b0),
    .d(even_window),
    .clk(clk_net),
    .ce(ce_net),
    .q(win_x1)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay11 (
    .en(1'b1),
    .rst(1'b0),
    .d(win_x1),
    .clk(clk_net),
    .ce(ce_net),
    .q(win_x0)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(3),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay12 (
    .en(1'b1),
    .rst(1'b0),
    .d(win_x0),
    .clk(clk_net),
    .ce(ce_net),
    .q(win)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay2 (
    .en(1'b1),
    .rst(1'b0),
    .d(even_cycle),
    .clk(clk_net),
    .ce(ce_net),
    .q(reset_x1)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay3 (
    .en(1'b1),
    .rst(1'b0),
    .d(data_tvalid),
    .clk(clk_net),
    .ce(ce_net),
    .q(valid_x5)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay5 (
    .en(1'b1),
    .rst(1'b0),
    .d(valid_x5),
    .clk(clk_net),
    .ce(ce_net),
    .q(valid_x4)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay6 (
    .en(1'b1),
    .rst(1'b0),
    .d(mult_p_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .q(im_x0)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay7 (
    .en(1'b1),
    .rst(1'b0),
    .d(mult_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(re_x1)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay8 (
    .en(1'b1),
    .rst(1'b0),
    .d(im_x0),
    .clk(clk_net),
    .ce(ce_net),
    .q(im)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay9 (
    .en(1'b1),
    .rst(1'b0),
    .d(re_x1),
    .clk(clk_net),
    .ce(ce_net),
    .q(re_x0)
  );
  mft_overlap_add_2022_0303_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(15),
    .a_width(16),
    .b_arith(`xlSigned),
    .b_bin_pt(29),
    .b_width(36),
    .c_a_type(0),
    .c_a_width(16),
    .c_b_type(0),
    .c_b_width(36),
    .c_baat(16),
    .c_output_width(52),
    .c_type(0),
    .core_name0("mft_overlap_add_2022_0303_mult_gen_v12_0_i1"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(44),
    .p_width(52),
    .quantization(1)
  )
  mult10 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(delay_q_net),
    .b(out),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult10_p_net)
  );
  mft_overlap_add_2022_0303_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(15),
    .a_width(16),
    .b_arith(`xlSigned),
    .b_bin_pt(29),
    .b_width(36),
    .c_a_type(0),
    .c_a_width(16),
    .c_b_type(0),
    .c_b_width(36),
    .c_baat(16),
    .c_output_width(52),
    .c_type(0),
    .core_name0("mft_overlap_add_2022_0303_mult_gen_v12_0_i1"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(44),
    .p_width(52),
    .quantization(1)
  )
  mult12 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(delay_q_net),
    .b(addsub9_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult12_p_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block mft_overlap_add_2022_0303/Even_MatchedFilterBank
module mft_overlap_add_2022_0303_even_matchedfilterbank (
  input [1-1:0] even_in_1,
  input [16-1:0] even_in_2,
  input [16-1:0] even_in_3,
  input [1-1:0] even_in_4,
  input [16-1:0] even_in_5,
  input clk_1,
  input ce_1,
  output [52-1:0] mf_im,
  output [52-1:0] mf_re
);
  wire clk_net;
  wire [1-1:0] even_cycle;
  wire [52-1:0] mult10_p_net;
  wire ce_net;
  wire [16-1:0] even_window;
  wire [52-1:0] mult12_p_net;
  wire [16-1:0] mult_p_net;
  wire [16-1:0] mult_p_net_x0;
  wire [1-1:0] data_tvalid;
  assign mf_im = mult10_p_net;
  assign mf_re = mult12_p_net;
  assign data_tvalid = even_in_1;
  assign mult_p_net_x0 = even_in_2;
  assign mult_p_net = even_in_3;
  assign even_cycle = even_in_4;
  assign even_window = even_in_5;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  mft_overlap_add_2022_0303_matchedfilterbank matchedfilterbank (
    .re(mult_p_net_x0),
    .re1(mult_p_net),
    .reset(even_cycle),
    .valid(data_tvalid),
    .valid3(even_window),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .mf_im(mult10_p_net),
    .mf_re(mult12_p_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block mft_overlap_add_2022_0303/FFT Analytic Window/Even FFT/Even Frames Im
module mft_overlap_add_2022_0303_even_frames_im (
  input [16-1:0] in,
  input [16-1:0] window,
  input clk_1,
  input ce_1,
  output [16-1:0] out
);
  wire [16-1:0] mult_p_net;
  wire ce_net;
  wire [16-1:0] rom_data_net;
  wire clk_net;
  wire [16-1:0] delay_q_net;
  assign out = mult_p_net;
  assign delay_q_net = in;
  assign rom_data_net = window;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  mft_overlap_add_2022_0303_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(15),
    .a_width(16),
    .b_arith(`xlSigned),
    .b_bin_pt(15),
    .b_width(16),
    .c_a_type(0),
    .c_a_width(16),
    .c_b_type(0),
    .c_b_width(16),
    .c_baat(16),
    .c_output_width(32),
    .c_type(0),
    .core_name0("mft_overlap_add_2022_0303_mult_gen_v12_0_i0"),
    .extra_registers(1),
    .multsign(2),
    .overflow(2),
    .p_arith(`xlSigned),
    .p_bin_pt(15),
    .p_width(16),
    .quantization(1)
  )
  mult (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(delay_q_net),
    .b(rom_data_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_p_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block mft_overlap_add_2022_0303/FFT Analytic Window/Even FFT/Even Frames Re
module mft_overlap_add_2022_0303_even_frames_re (
  input [16-1:0] in,
  input [16-1:0] window,
  input clk_1,
  input ce_1,
  output [16-1:0] out
);
  wire [16-1:0] rom_data_net;
  wire [16-1:0] mult_p_net;
  wire [16-1:0] delay1_q_net;
  wire clk_net;
  wire ce_net;
  assign out = mult_p_net;
  assign delay1_q_net = in;
  assign rom_data_net = window;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  mft_overlap_add_2022_0303_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(15),
    .a_width(16),
    .b_arith(`xlSigned),
    .b_bin_pt(15),
    .b_width(16),
    .c_a_type(0),
    .c_a_width(16),
    .c_b_type(0),
    .c_b_width(16),
    .c_baat(16),
    .c_output_width(32),
    .c_type(0),
    .core_name0("mft_overlap_add_2022_0303_mult_gen_v12_0_i0"),
    .extra_registers(1),
    .multsign(2),
    .overflow(2),
    .p_arith(`xlSigned),
    .p_bin_pt(15),
    .p_width(16),
    .quantization(1)
  )
  mult (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(delay1_q_net),
    .b(rom_data_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_p_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block mft_overlap_add_2022_0303/FFT Analytic Window/Even FFT
module mft_overlap_add_2022_0303_even_fft_x0 (
  input [16-1:0] re_in,
  input [16-1:0] im_in,
  input [16-1:0] window,
  input clk_1,
  input ce_1,
  output [16-1:0] im_out,
  output [16-1:0] re_out
);
  wire [16-1:0] delay1_q_net;
  wire [16-1:0] delay_q_net;
  wire [16-1:0] mult_p_net;
  wire ce_net;
  wire [16-1:0] mult_p_net_x0;
  wire [16-1:0] rom_data_net;
  wire clk_net;
  assign im_out = mult_p_net_x0;
  assign re_out = mult_p_net;
  assign delay1_q_net = re_in;
  assign delay_q_net = im_in;
  assign rom_data_net = window;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  mft_overlap_add_2022_0303_even_frames_im even_frames_im (
    .in(delay_q_net),
    .window(rom_data_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .out(mult_p_net_x0)
  );
  mft_overlap_add_2022_0303_even_frames_re even_frames_re (
    .in(delay1_q_net),
    .window(rom_data_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .out(mult_p_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block mft_overlap_add_2022_0303/FFT Analytic Window/Odd FFT/Odd Frames Im
module mft_overlap_add_2022_0303_odd_frames_im (
  input [16-1:0] in,
  input [16-1:0] window,
  input clk_1,
  input ce_1,
  output [16-1:0] out
);
  wire clk_net;
  wire [16-1:0] mult_p_net;
  wire [16-1:0] delay2_q_net;
  wire [16-1:0] rom_data_net;
  wire ce_net;
  assign out = mult_p_net;
  assign delay2_q_net = in;
  assign rom_data_net = window;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  mft_overlap_add_2022_0303_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(15),
    .a_width(16),
    .b_arith(`xlSigned),
    .b_bin_pt(15),
    .b_width(16),
    .c_a_type(0),
    .c_a_width(16),
    .c_b_type(0),
    .c_b_width(16),
    .c_baat(16),
    .c_output_width(32),
    .c_type(0),
    .core_name0("mft_overlap_add_2022_0303_mult_gen_v12_0_i0"),
    .extra_registers(1),
    .multsign(2),
    .overflow(2),
    .p_arith(`xlSigned),
    .p_bin_pt(15),
    .p_width(16),
    .quantization(1)
  )
  mult (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(delay2_q_net),
    .b(rom_data_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_p_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block mft_overlap_add_2022_0303/FFT Analytic Window/Odd FFT/Odd Frames Re
module mft_overlap_add_2022_0303_odd_frames_re (
  input [16-1:0] in,
  input [16-1:0] window,
  input clk_1,
  input ce_1,
  output [16-1:0] out
);
  wire clk_net;
  wire [16-1:0] mult_p_net;
  wire [16-1:0] rom_data_net;
  wire ce_net;
  wire [16-1:0] delay3_q_net;
  assign out = mult_p_net;
  assign delay3_q_net = in;
  assign rom_data_net = window;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  mft_overlap_add_2022_0303_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(15),
    .a_width(16),
    .b_arith(`xlSigned),
    .b_bin_pt(15),
    .b_width(16),
    .c_a_type(0),
    .c_a_width(16),
    .c_b_type(0),
    .c_b_width(16),
    .c_baat(16),
    .c_output_width(32),
    .c_type(0),
    .core_name0("mft_overlap_add_2022_0303_mult_gen_v12_0_i0"),
    .extra_registers(1),
    .multsign(2),
    .overflow(2),
    .p_arith(`xlSigned),
    .p_bin_pt(15),
    .p_width(16),
    .quantization(1)
  )
  mult (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(delay3_q_net),
    .b(rom_data_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_p_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block mft_overlap_add_2022_0303/FFT Analytic Window/Odd FFT
module mft_overlap_add_2022_0303_odd_fft (
  input [16-1:0] re_in,
  input [16-1:0] im_in,
  input [16-1:0] window,
  input clk_1,
  input ce_1,
  output [16-1:0] im_out,
  output [16-1:0] re_out
);
  wire [16-1:0] mult_p_net_x0;
  wire [16-1:0] mult_p_net;
  wire [16-1:0] delay3_q_net;
  wire [16-1:0] delay2_q_net;
  wire ce_net;
  wire [16-1:0] rom_data_net;
  wire clk_net;
  assign im_out = mult_p_net_x0;
  assign re_out = mult_p_net;
  assign delay3_q_net = re_in;
  assign delay2_q_net = im_in;
  assign rom_data_net = window;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  mft_overlap_add_2022_0303_odd_frames_im odd_frames_im (
    .in(delay2_q_net),
    .window(rom_data_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .out(mult_p_net_x0)
  );
  mft_overlap_add_2022_0303_odd_frames_re odd_frames_re (
    .in(delay3_q_net),
    .window(rom_data_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .out(mult_p_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block mft_overlap_add_2022_0303/FFT Analytic Window/Window Generator
module mft_overlap_add_2022_0303_window_generator (
  input enable,
  input clk_1,
  input ce_1,
  output [16-1:0] window,
  output [1-1:0] cycle
);
  wire [8-1:0] constant_op_net;
  wire [1-1:0] relational_op_net;
  wire ce_net;
  wire clk_net;
  wire [10-1:0] counter_op_net;
  wire data_tvalid;
  wire [16-1:0] rom_data_net;
  assign window = rom_data_net;
  assign cycle = relational_op_net;
  assign data_tvalid = enable;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_constant_2fd59bf28b constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );
  mft_overlap_add_2022_0303_xlcounter_limit #(
    .cnt_15_0(0),
    .cnt_31_16(0),
    .cnt_47_32(0),
    .cnt_63_48(0),
    .core_name0("mft_overlap_add_2022_0303_c_counter_binary_v12_0_i0"),
    .count_limited(0),
    .op_arith(`xlUnsigned),
    .op_width(10)
  )
  counter (
    .rst(1'b0),
    .clr(1'b0),
    .en(data_tvalid),
    .clk(clk_net),
    .ce(ce_net),
    .op(counter_op_net)
  );
  mft_overlap_add_2022_0303_xlsprom #(
    .c_address_width(10),
    .c_width(16),
    .latency(1),
    .mem_init_file("xpm_bd8ca4_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_val("0")
  )
  rom (
    .en(1'b1),
    .rst(1'b0),
    .addr(counter_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .data(rom_data_net)
  );
  sysgen_relational_5a67b92ef2 relational (
    .clr(1'b0),
    .a(counter_op_net),
    .b(constant_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(relational_op_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block mft_overlap_add_2022_0303/FFT Analytic Window/Window Generator1
module mft_overlap_add_2022_0303_window_generator1 (
  input enable,
  input clk_1,
  input ce_1,
  output [16-1:0] window,
  output [1-1:0] cycle
);
  wire data_tvalid;
  wire clk_net;
  wire ce_net;
  wire [1-1:0] relational_op_net;
  wire [8-1:0] constant_op_net;
  wire [16-1:0] rom_data_net;
  wire [10-1:0] counter_op_net;
  assign window = rom_data_net;
  assign cycle = relational_op_net;
  assign data_tvalid = enable;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_constant_2fd59bf28b constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );
  mft_overlap_add_2022_0303_xlcounter_limit #(
    .cnt_15_0(0),
    .cnt_31_16(0),
    .cnt_47_32(0),
    .cnt_63_48(0),
    .core_name0("mft_overlap_add_2022_0303_c_counter_binary_v12_0_i0"),
    .count_limited(0),
    .op_arith(`xlUnsigned),
    .op_width(10)
  )
  counter (
    .rst(1'b0),
    .clr(1'b0),
    .en(data_tvalid),
    .clk(clk_net),
    .ce(ce_net),
    .op(counter_op_net)
  );
  mft_overlap_add_2022_0303_xlsprom #(
    .c_address_width(10),
    .c_width(16),
    .latency(1),
    .mem_init_file("xpm_bd8ca4_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_val("0")
  )
  rom (
    .en(1'b1),
    .rst(1'b0),
    .addr(counter_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .data(rom_data_net)
  );
  sysgen_relational_5a67b92ef2 relational (
    .clr(1'b0),
    .a(counter_op_net),
    .b(constant_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(relational_op_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block mft_overlap_add_2022_0303/FFT Analytic Window
module mft_overlap_add_2022_0303_fft_analytic_window (
  input [16-1:0] odd_im,
  input [16-1:0] odd_re,
  input odd_enable,
  input [16-1:0] even_im,
  input [16-1:0] even_re,
  input enable1,
  input clk_1,
  input ce_1,
  output [16-1:0] odd_im_out,
  output [16-1:0] odd_re_out,
  output [16-1:0] even_im_out,
  output [16-1:0] even_re_out,
  output [1-1:0] cycle,
  output [16-1:0] cycle1,
  output [1-1:0] cycle2,
  output [16-1:0] cycle3
);
  wire [16-1:0] data_tdata_xn_im_0_x0;
  wire [16-1:0] delay1_q_net;
  wire [16-1:0] delay2_q_net;
  wire [1-1:0] relational_op_net_x0;
  wire [16-1:0] rom_data_net;
  wire [16-1:0] data_tdata_xn_re_0_x0;
  wire [1-1:0] odd_cycle;
  wire [16-1:0] data_tdata_xn_im_0;
  wire ce_net;
  wire [16-1:0] mult_p_net_x0;
  wire [16-1:0] odd_window;
  wire [16-1:0] mult_p_net;
  wire [16-1:0] even_window;
  wire [16-1:0] delay_q_net;
  wire [16-1:0] mult_p_net_x1;
  wire [16-1:0] rom_data_net_x0;
  wire [16-1:0] delay3_q_net;
  wire [1-1:0] relational_op_net;
  wire [16-1:0] mult_p_net_x2;
  wire [1-1:0] even_cycle;
  wire data_tvalid;
  wire data_tvalid_x0;
  wire clk_net;
  wire [16-1:0] data_tdata_xn_re_0;
  assign odd_im_out = mult_p_net_x1;
  assign odd_re_out = mult_p_net_x0;
  assign even_im_out = mult_p_net;
  assign even_re_out = mult_p_net_x2;
  assign cycle = odd_cycle;
  assign cycle1 = odd_window;
  assign cycle2 = even_cycle;
  assign cycle3 = even_window;
  assign data_tdata_xn_im_0 = odd_im;
  assign data_tdata_xn_re_0_x0 = odd_re;
  assign data_tvalid_x0 = odd_enable;
  assign data_tdata_xn_im_0_x0 = even_im;
  assign data_tdata_xn_re_0 = even_re;
  assign data_tvalid = enable1;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  mft_overlap_add_2022_0303_even_fft_x0 even_fft (
    .re_in(delay1_q_net),
    .im_in(delay_q_net),
    .window(rom_data_net_x0),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .im_out(mult_p_net),
    .re_out(mult_p_net_x2)
  );
  mft_overlap_add_2022_0303_odd_fft odd_fft (
    .re_in(delay3_q_net),
    .im_in(delay2_q_net),
    .window(rom_data_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .im_out(mult_p_net_x1),
    .re_out(mult_p_net_x0)
  );
  mft_overlap_add_2022_0303_window_generator window_generator (
    .enable(data_tvalid_x0),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .window(rom_data_net),
    .cycle(relational_op_net)
  );
  mft_overlap_add_2022_0303_window_generator1 window_generator1 (
    .enable(data_tvalid),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .window(rom_data_net_x0),
    .cycle(relational_op_net_x0)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(2),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay (
    .en(1'b1),
    .rst(1'b0),
    .d(data_tdata_xn_im_0_x0),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(2),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay1 (
    .en(1'b1),
    .rst(1'b0),
    .d(data_tdata_xn_re_0),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay1_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(2),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay2 (
    .en(1'b1),
    .rst(1'b0),
    .d(data_tdata_xn_im_0),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay2_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(2),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay3 (
    .en(1'b1),
    .rst(1'b0),
    .d(data_tdata_xn_re_0_x0),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay3_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(4),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay4 (
    .en(1'b1),
    .rst(1'b0),
    .d(rom_data_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(odd_window)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(4),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay5 (
    .en(1'b1),
    .rst(1'b0),
    .d(relational_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(odd_cycle)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(4),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay6 (
    .en(1'b1),
    .rst(1'b0),
    .d(rom_data_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .q(even_window)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(4),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay7 (
    .en(1'b1),
    .rst(1'b0),
    .d(relational_op_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .q(even_cycle)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block mft_overlap_add_2022_0303/ODD IFFT
module mft_overlap_add_2022_0303_odd_ifft (
  input [1-1:0] config_tvalid,
  input [1-1:0] data_tvalid,
  input [1-1:0] data_tlast,
  input [1-1:0] data_tready_x0,
  input [16-1:0] odd_im_out,
  input [16-1:0] odd_re_out,
  input clk_1,
  input ce_1,
  output [16-1:0] data_tdata_xn_im_0,
  output [16-1:0] data_tdata_xn_re_0,
  output data_tvalid_x0,
  output data_tlast_x0
);
  wire fast_fourier_transform_9_5_m_axis_data_tlast_net;
  wire [1-1:0] delay4_q_net;
  wire [1-1:0] delay3_q_net;
  wire [16-1:0] fast_fourier_transform_9_5_m_axis_data_tdata_xn_im_0_net;
  wire [1-1:0] delay1_q_net;
  wire [16-1:0] convert1_dout_net;
  wire clk_net;
  wire ce_net;
  wire fast_fourier_transform_9_5_m_axis_data_tvalid_net;
  wire [1-1:0] delay2_q_net;
  wire [16-1:0] convert_dout_net;
  wire [16-1:0] fast_fourier_transform_9_5_m_axis_data_tdata_xn_re_0_net;
  wire fast_fourier_transform_9_5_s_axis_data_tready_net;
  wire fast_fourier_transform_9_5_event_tlast_missing_net;
  wire fast_fourier_transform_9_5_event_data_out_channel_halt_net;
  wire [1-1:0] constant11_op_net;
  wire fast_fourier_transform_9_5_s_axis_config_tready_net;
  wire fast_fourier_transform_9_5_event_status_channel_halt_net;
  wire fast_fourier_transform_9_5_event_data_in_channel_halt_net;
  wire fast_fourier_transform_9_5_event_tlast_unexpected_net;
  wire fast_fourier_transform_9_5_event_frame_started_net;
  wire [10-1:0] constant_op_net;
  assign data_tdata_xn_im_0 = fast_fourier_transform_9_5_m_axis_data_tdata_xn_im_0_net;
  assign data_tdata_xn_re_0 = fast_fourier_transform_9_5_m_axis_data_tdata_xn_re_0_net;
  assign data_tvalid_x0 = fast_fourier_transform_9_5_m_axis_data_tvalid_net;
  assign data_tlast_x0 = fast_fourier_transform_9_5_m_axis_data_tlast_net;
  assign delay4_q_net = config_tvalid;
  assign delay1_q_net = data_tvalid;
  assign delay2_q_net = data_tlast;
  assign delay3_q_net = data_tready_x0;
  assign convert_dout_net = odd_im_out;
  assign convert1_dout_net = odd_re_out;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_constant_63eab09462 constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );
  sysgen_constant_451dcdcb45 constant11 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant11_op_net)
  );
  xlfast_fourier_transform_3c04dd97895c3901ae5ab4e8f34e2521 fast_fourier_transform_9_5 (
    .s_axis_config_tdata_scale_sch(constant_op_net),
    .s_axis_config_tdata_fwd_inv(constant11_op_net),
    .s_axis_config_tvalid(delay4_q_net),
    .s_axis_data_tdata_xn_im_0(convert_dout_net),
    .s_axis_data_tdata_xn_re_0(convert1_dout_net),
    .s_axis_data_tvalid(delay1_q_net),
    .s_axis_data_tlast(delay2_q_net),
    .m_axis_data_tready(delay3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .s_axis_config_tready(fast_fourier_transform_9_5_s_axis_config_tready_net),
    .s_axis_data_tready(fast_fourier_transform_9_5_s_axis_data_tready_net),
    .m_axis_data_tdata_xn_im_0(fast_fourier_transform_9_5_m_axis_data_tdata_xn_im_0_net),
    .m_axis_data_tdata_xn_re_0(fast_fourier_transform_9_5_m_axis_data_tdata_xn_re_0_net),
    .m_axis_data_tvalid(fast_fourier_transform_9_5_m_axis_data_tvalid_net),
    .m_axis_data_tlast(fast_fourier_transform_9_5_m_axis_data_tlast_net),
    .event_frame_started(fast_fourier_transform_9_5_event_frame_started_net),
    .event_tlast_unexpected(fast_fourier_transform_9_5_event_tlast_unexpected_net),
    .event_tlast_missing(fast_fourier_transform_9_5_event_tlast_missing_net),
    .event_data_in_channel_halt(fast_fourier_transform_9_5_event_data_in_channel_halt_net),
    .event_status_channel_halt(fast_fourier_transform_9_5_event_status_channel_halt_net),
    .event_data_out_channel_halt(fast_fourier_transform_9_5_event_data_out_channel_halt_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block mft_overlap_add_2022_0303/Odd FFT
module mft_overlap_add_2022_0303_odd_fft_x0 (
  input [1-1:0] config_tvalid,
  input [16-1:0] data_tdata_xn_im_0,
  input [16-1:0] data_tdata_xn_re_0,
  input [1-1:0] data_tvalid,
  input [1-1:0] data_tlast,
  input clk_1,
  input ce_1,
  output config_tready,
  output data_tready,
  output [16-1:0] data_tdata_xn_im_0_x0,
  output [16-1:0] data_tdata_xn_re_0_x0,
  output data_tvalid_x0,
  output data_tlast_x0
);
  wire [16-1:0] data_tdata_xn_im_0_x1;
  wire data_tvalid_x1;
  wire [16-1:0] constant9_op_net;
  wire data_tready_x0;
  wire [16-1:0] data_tdata_xn_re_0_x1;
  wire data_tlast_x1;
  wire [16-1:0] mult_p_net;
  wire [1-1:0] constant8_op_net;
  wire [1-1:0] delay11_q_net;
  wire [1-1:0] delay17_q_net;
  wire config_tready_x0;
  wire fast_fourier_transform_9_4_event_data_out_channel_halt_net;
  wire [1-1:0] true_op_net;
  wire clk_net;
  wire fast_fourier_transform_9_4_event_tlast_missing_net;
  wire fast_fourier_transform_9_4_event_tlast_unexpected_net;
  wire fast_fourier_transform_9_4_event_data_in_channel_halt_net;
  wire fast_fourier_transform_9_4_event_status_channel_halt_net;
  wire [10-1:0] constant_op_net;
  wire ce_net;
  wire fast_fourier_transform_9_4_event_frame_started_net;
  assign config_tready = config_tready_x0;
  assign data_tready = data_tready_x0;
  assign data_tdata_xn_im_0_x0 = data_tdata_xn_im_0_x1;
  assign data_tdata_xn_re_0_x0 = data_tdata_xn_re_0_x1;
  assign data_tvalid_x0 = data_tvalid_x1;
  assign data_tlast_x0 = data_tlast_x1;
  assign constant8_op_net = config_tvalid;
  assign constant9_op_net = data_tdata_xn_im_0;
  assign mult_p_net = data_tdata_xn_re_0;
  assign delay11_q_net = data_tvalid;
  assign delay17_q_net = data_tlast;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_constant_ebbc228f9f constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );
  xlfast_fourier_transform_3c04dd97895c3901ae5ab4e8f34e2521 fast_fourier_transform_9_4 (
    .s_axis_config_tdata_scale_sch(constant_op_net),
    .s_axis_config_tdata_fwd_inv(true_op_net),
    .s_axis_config_tvalid(constant8_op_net),
    .s_axis_data_tdata_xn_im_0(constant9_op_net),
    .s_axis_data_tdata_xn_re_0(mult_p_net),
    .s_axis_data_tvalid(delay11_q_net),
    .s_axis_data_tlast(delay17_q_net),
    .m_axis_data_tready(delay11_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .s_axis_config_tready(config_tready_x0),
    .s_axis_data_tready(data_tready_x0),
    .m_axis_data_tdata_xn_im_0(data_tdata_xn_im_0_x1),
    .m_axis_data_tdata_xn_re_0(data_tdata_xn_re_0_x1),
    .m_axis_data_tvalid(data_tvalid_x1),
    .m_axis_data_tlast(data_tlast_x1),
    .event_frame_started(fast_fourier_transform_9_4_event_frame_started_net),
    .event_tlast_unexpected(fast_fourier_transform_9_4_event_tlast_unexpected_net),
    .event_tlast_missing(fast_fourier_transform_9_4_event_tlast_missing_net),
    .event_data_in_channel_halt(fast_fourier_transform_9_4_event_data_in_channel_halt_net),
    .event_status_channel_halt(fast_fourier_transform_9_4_event_status_channel_halt_net),
    .event_data_out_channel_halt(fast_fourier_transform_9_4_event_data_out_channel_halt_net)
  );
  sysgen_constant_19de62f6a5 true (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(true_op_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block mft_overlap_add_2022_0303/Odd Frames
module mft_overlap_add_2022_0303_odd_frames (
  input [16-1:0] data,
  input [16-1:0] window,
  input clk_1,
  input ce_1,
  output [16-1:0] mask_data_out
);
  wire [16-1:0] rom_data_net;
  wire [16-1:0] convert4_dout_net;
  wire clk_net;
  wire ce_net;
  wire [16-1:0] mult_p_net;
  assign mask_data_out = mult_p_net;
  assign convert4_dout_net = data;
  assign rom_data_net = window;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  mft_overlap_add_2022_0303_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(15),
    .a_width(16),
    .b_arith(`xlSigned),
    .b_bin_pt(15),
    .b_width(16),
    .c_a_type(0),
    .c_a_width(16),
    .c_b_type(0),
    .c_b_width(16),
    .c_baat(16),
    .c_output_width(32),
    .c_type(0),
    .core_name0("mft_overlap_add_2022_0303_mult_gen_v12_0_i0"),
    .extra_registers(1),
    .multsign(2),
    .overflow(2),
    .p_arith(`xlSigned),
    .p_bin_pt(15),
    .p_width(16),
    .quantization(1)
  )
  mult (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(convert4_dout_net),
    .b(rom_data_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult_p_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block mft_overlap_add_2022_0303/Odd_MatchedFilterBank/MatchedFilterBank/complex multiplier bank/Complex Multiply 1
module mft_overlap_add_2022_0303_complex_multiply_1_x0 (
  input [16-1:0] im,
  input [16-1:0] re,
  input [10-1:0] in3_1,
  input [1-1:0] in3_3,
  input clk_1,
  input ce_1,
  output [32-1:0] tdata_imag,
  output [32-1:0] tdata_real
);
  wire [16-1:0] re_x0;
  wire [16-1:0] im_x0;
  wire constant_op_net;
  wire [32-1:0] tdata_real_x0;
  wire ce_net;
  wire clk_net;
  wire [1-1:0] valid_x1;
  wire [16-1:0] delay2_q_net;
  wire valid_x0;
  wire [10-1:0] addr;
  wire [16-1:0] delay3_q_net;
  wire [16-1:0] delay4_q_net;
  wire [16-1:0] rom1_im_data_net;
  wire [16-1:0] delay1_q_net;
  wire [16-1:0] delay_q_net;
  wire [32-1:0] tdata_imag_x0;
  wire delay6_q_net;
  wire [16-1:0] delay5_q_net;
  wire [16-1:0] rom1_re_data_net;
  assign tdata_imag = tdata_imag_x0;
  assign tdata_real = tdata_real_x0;
  assign im_x0 = im;
  assign re_x0 = re;
  assign addr = in3_1;
  assign valid_x1 = in3_3;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  xlcomplex_multiplier_a2b4ef32507594e3f0bda9e2b78d23f6 complex_multiplier_6_0 (
    .s_axis_a_tvalid(delay6_q_net),
    .s_axis_a_tdata_imag(delay5_q_net),
    .s_axis_a_tdata_real(delay4_q_net),
    .s_axis_b_tvalid(constant_op_net),
    .s_axis_b_tdata_imag(delay2_q_net),
    .s_axis_b_tdata_real(delay3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .m_axis_dout_tvalid(valid_x0),
    .m_axis_dout_tdata_imag(tdata_imag_x0),
    .m_axis_dout_tdata_real(tdata_real_x0)
  );
  sysgen_constant_19de62f6a5 constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay (
    .en(1'b1),
    .rst(1'b0),
    .d(im_x0),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay1 (
    .en(1'b1),
    .rst(1'b0),
    .d(re_x0),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay1_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay2 (
    .en(1'b1),
    .rst(1'b0),
    .d(rom1_im_data_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay2_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay3 (
    .en(1'b1),
    .rst(1'b0),
    .d(rom1_re_data_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay3_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay4 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay4_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay5 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay5_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay6 (
    .en(1'b1),
    .rst(1'b0),
    .d(valid_x1),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay6_q_net)
  );
  mft_overlap_add_2022_0303_xlsprom #(
    .c_address_width(10),
    .c_width(16),
    .latency(1),
    .mem_init_file("xpm_4b3b6b_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_val("0")
  )
  rom1_im (
    .rst(1'b0),
    .addr(addr),
    .en(valid_x1),
    .clk(clk_net),
    .ce(ce_net),
    .data(rom1_im_data_net)
  );
  mft_overlap_add_2022_0303_xlsprom #(
    .c_address_width(10),
    .c_width(16),
    .latency(1),
    .mem_init_file("xpm_d77b42_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_val("0")
  )
  rom1_re (
    .rst(1'b0),
    .addr(addr),
    .en(valid_x1),
    .clk(clk_net),
    .ce(ce_net),
    .data(rom1_re_data_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block mft_overlap_add_2022_0303/Odd_MatchedFilterBank/MatchedFilterBank/complex multiplier bank/Complex Multiply10
module mft_overlap_add_2022_0303_complex_multiply10_x0 (
  input [16-1:0] im,
  input [16-1:0] re,
  input [10-1:0] in3_1,
  input [1-1:0] in3_3,
  input clk_1,
  input ce_1,
  output [32-1:0] tdata_imag,
  output [32-1:0] tdata_real
);
  wire [32-1:0] tdata_imag_x0;
  wire [32-1:0] tdata_real_x0;
  wire [10-1:0] addr;
  wire valid_x0;
  wire [1-1:0] valid_x1;
  wire delay6_q_net;
  wire [16-1:0] delay5_q_net;
  wire [16-1:0] delay4_q_net;
  wire [16-1:0] re_x0;
  wire [16-1:0] im_x0;
  wire ce_net;
  wire clk_net;
  wire constant_op_net;
  wire [16-1:0] rom1_re_data_net;
  wire [16-1:0] delay3_q_net;
  wire [16-1:0] delay_q_net;
  wire [16-1:0] delay2_q_net;
  wire [16-1:0] delay1_q_net;
  wire [16-1:0] rom1_im_data_net;
  assign tdata_imag = tdata_imag_x0;
  assign tdata_real = tdata_real_x0;
  assign im_x0 = im;
  assign re_x0 = re;
  assign addr = in3_1;
  assign valid_x1 = in3_3;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  xlcomplex_multiplier_a2b4ef32507594e3f0bda9e2b78d23f6 complex_multiplier_6_0 (
    .s_axis_a_tvalid(delay6_q_net),
    .s_axis_a_tdata_imag(delay5_q_net),
    .s_axis_a_tdata_real(delay4_q_net),
    .s_axis_b_tvalid(constant_op_net),
    .s_axis_b_tdata_imag(delay2_q_net),
    .s_axis_b_tdata_real(delay3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .m_axis_dout_tvalid(valid_x0),
    .m_axis_dout_tdata_imag(tdata_imag_x0),
    .m_axis_dout_tdata_real(tdata_real_x0)
  );
  sysgen_constant_19de62f6a5 constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay (
    .en(1'b1),
    .rst(1'b0),
    .d(im_x0),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay1 (
    .en(1'b1),
    .rst(1'b0),
    .d(re_x0),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay1_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay2 (
    .en(1'b1),
    .rst(1'b0),
    .d(rom1_im_data_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay2_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay3 (
    .en(1'b1),
    .rst(1'b0),
    .d(rom1_re_data_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay3_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay4 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay4_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay5 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay5_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay6 (
    .en(1'b1),
    .rst(1'b0),
    .d(valid_x1),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay6_q_net)
  );
  mft_overlap_add_2022_0303_xlsprom #(
    .c_address_width(10),
    .c_width(16),
    .latency(1),
    .mem_init_file("xpm_2242bf_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_val("0")
  )
  rom1_im (
    .rst(1'b0),
    .addr(addr),
    .en(valid_x1),
    .clk(clk_net),
    .ce(ce_net),
    .data(rom1_im_data_net)
  );
  mft_overlap_add_2022_0303_xlsprom #(
    .c_address_width(10),
    .c_width(16),
    .latency(1),
    .mem_init_file("xpm_abc1a0_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_val("0")
  )
  rom1_re (
    .rst(1'b0),
    .addr(addr),
    .en(valid_x1),
    .clk(clk_net),
    .ce(ce_net),
    .data(rom1_re_data_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block mft_overlap_add_2022_0303/Odd_MatchedFilterBank/MatchedFilterBank/complex multiplier bank/Complex Multiply2
module mft_overlap_add_2022_0303_complex_multiply2_x0 (
  input [16-1:0] im,
  input [16-1:0] re,
  input [10-1:0] in3_1,
  input [1-1:0] in3_3,
  input clk_1,
  input ce_1,
  output [32-1:0] tdata_imag,
  output [32-1:0] tdata_real
);
  wire [16-1:0] im_x0;
  wire [32-1:0] tdata_real_x0;
  wire [32-1:0] tdata_imag_x0;
  wire valid_x0;
  wire [16-1:0] delay2_q_net;
  wire [16-1:0] delay3_q_net;
  wire [10-1:0] addr;
  wire clk_net;
  wire [16-1:0] delay_q_net;
  wire [16-1:0] delay4_q_net;
  wire constant_op_net;
  wire [16-1:0] delay1_q_net;
  wire [1-1:0] valid_x1;
  wire ce_net;
  wire [16-1:0] re_x0;
  wire [16-1:0] rom1_im_data_net;
  wire [16-1:0] delay5_q_net;
  wire delay6_q_net;
  wire [16-1:0] rom1_re_data_net;
  assign tdata_imag = tdata_imag_x0;
  assign tdata_real = tdata_real_x0;
  assign im_x0 = im;
  assign re_x0 = re;
  assign addr = in3_1;
  assign valid_x1 = in3_3;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  xlcomplex_multiplier_a2b4ef32507594e3f0bda9e2b78d23f6 complex_multiplier_6_0 (
    .s_axis_a_tvalid(delay6_q_net),
    .s_axis_a_tdata_imag(delay5_q_net),
    .s_axis_a_tdata_real(delay4_q_net),
    .s_axis_b_tvalid(constant_op_net),
    .s_axis_b_tdata_imag(delay2_q_net),
    .s_axis_b_tdata_real(delay3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .m_axis_dout_tvalid(valid_x0),
    .m_axis_dout_tdata_imag(tdata_imag_x0),
    .m_axis_dout_tdata_real(tdata_real_x0)
  );
  sysgen_constant_19de62f6a5 constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay (
    .en(1'b1),
    .rst(1'b0),
    .d(im_x0),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay1 (
    .en(1'b1),
    .rst(1'b0),
    .d(re_x0),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay1_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay2 (
    .en(1'b1),
    .rst(1'b0),
    .d(rom1_im_data_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay2_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay3 (
    .en(1'b1),
    .rst(1'b0),
    .d(rom1_re_data_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay3_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay4 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay4_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay5 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay5_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay6 (
    .en(1'b1),
    .rst(1'b0),
    .d(valid_x1),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay6_q_net)
  );
  mft_overlap_add_2022_0303_xlsprom #(
    .c_address_width(10),
    .c_width(16),
    .latency(1),
    .mem_init_file("xpm_cbff17_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_val("0")
  )
  rom1_im (
    .rst(1'b0),
    .addr(addr),
    .en(valid_x1),
    .clk(clk_net),
    .ce(ce_net),
    .data(rom1_im_data_net)
  );
  mft_overlap_add_2022_0303_xlsprom #(
    .c_address_width(10),
    .c_width(16),
    .latency(1),
    .mem_init_file("xpm_7ca682_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_val("0")
  )
  rom1_re (
    .rst(1'b0),
    .addr(addr),
    .en(valid_x1),
    .clk(clk_net),
    .ce(ce_net),
    .data(rom1_re_data_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block mft_overlap_add_2022_0303/Odd_MatchedFilterBank/MatchedFilterBank/complex multiplier bank/Complex Multiply3
module mft_overlap_add_2022_0303_complex_multiply3_x0 (
  input [16-1:0] im,
  input [16-1:0] re,
  input [10-1:0] in3_1,
  input [1-1:0] in3_3,
  input clk_1,
  input ce_1,
  output [32-1:0] tdata_imag,
  output [32-1:0] tdata_real
);
  wire [32-1:0] tdata_real_x0;
  wire [10-1:0] addr;
  wire ce_net;
  wire [16-1:0] re_x0;
  wire [32-1:0] tdata_imag_x0;
  wire [1-1:0] valid_x1;
  wire clk_net;
  wire [16-1:0] im_x0;
  wire [16-1:0] delay1_q_net;
  wire constant_op_net;
  wire [16-1:0] delay4_q_net;
  wire [16-1:0] delay_q_net;
  wire [16-1:0] delay5_q_net;
  wire valid_x0;
  wire [16-1:0] rom1_re_data_net;
  wire [16-1:0] delay2_q_net;
  wire delay6_q_net;
  wire [16-1:0] delay3_q_net;
  wire [16-1:0] rom1_im_data_net;
  assign tdata_imag = tdata_imag_x0;
  assign tdata_real = tdata_real_x0;
  assign im_x0 = im;
  assign re_x0 = re;
  assign addr = in3_1;
  assign valid_x1 = in3_3;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  xlcomplex_multiplier_a2b4ef32507594e3f0bda9e2b78d23f6 complex_multiplier_6_0 (
    .s_axis_a_tvalid(delay6_q_net),
    .s_axis_a_tdata_imag(delay5_q_net),
    .s_axis_a_tdata_real(delay4_q_net),
    .s_axis_b_tvalid(constant_op_net),
    .s_axis_b_tdata_imag(delay2_q_net),
    .s_axis_b_tdata_real(delay3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .m_axis_dout_tvalid(valid_x0),
    .m_axis_dout_tdata_imag(tdata_imag_x0),
    .m_axis_dout_tdata_real(tdata_real_x0)
  );
  sysgen_constant_19de62f6a5 constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay (
    .en(1'b1),
    .rst(1'b0),
    .d(im_x0),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay1 (
    .en(1'b1),
    .rst(1'b0),
    .d(re_x0),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay1_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay2 (
    .en(1'b1),
    .rst(1'b0),
    .d(rom1_im_data_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay2_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay3 (
    .en(1'b1),
    .rst(1'b0),
    .d(rom1_re_data_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay3_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay4 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay4_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay5 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay5_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay6 (
    .en(1'b1),
    .rst(1'b0),
    .d(valid_x1),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay6_q_net)
  );
  mft_overlap_add_2022_0303_xlsprom #(
    .c_address_width(10),
    .c_width(16),
    .latency(1),
    .mem_init_file("xpm_32f877_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_val("0")
  )
  rom1_im (
    .rst(1'b0),
    .addr(addr),
    .en(valid_x1),
    .clk(clk_net),
    .ce(ce_net),
    .data(rom1_im_data_net)
  );
  mft_overlap_add_2022_0303_xlsprom #(
    .c_address_width(10),
    .c_width(16),
    .latency(1),
    .mem_init_file("xpm_7a2c14_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_val("0")
  )
  rom1_re (
    .rst(1'b0),
    .addr(addr),
    .en(valid_x1),
    .clk(clk_net),
    .ce(ce_net),
    .data(rom1_re_data_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block mft_overlap_add_2022_0303/Odd_MatchedFilterBank/MatchedFilterBank/complex multiplier bank/Complex Multiply4
module mft_overlap_add_2022_0303_complex_multiply4_x0 (
  input [16-1:0] im,
  input [16-1:0] re,
  input [10-1:0] in3_1,
  input [1-1:0] in3_3,
  input clk_1,
  input ce_1,
  output [32-1:0] tdata_imag,
  output [32-1:0] tdata_real
);
  wire [16-1:0] re_x0;
  wire ce_net;
  wire [16-1:0] delay2_q_net;
  wire valid_x0;
  wire [16-1:0] delay4_q_net;
  wire [16-1:0] delay1_q_net;
  wire clk_net;
  wire [32-1:0] tdata_imag_x0;
  wire [16-1:0] im_x0;
  wire [16-1:0] delay_q_net;
  wire [16-1:0] delay3_q_net;
  wire [32-1:0] tdata_real_x0;
  wire [1-1:0] valid_x1;
  wire [10-1:0] addr;
  wire delay6_q_net;
  wire [16-1:0] delay5_q_net;
  wire constant_op_net;
  wire [16-1:0] rom1_re_data_net;
  wire [16-1:0] rom1_im_data_net;
  assign tdata_imag = tdata_imag_x0;
  assign tdata_real = tdata_real_x0;
  assign im_x0 = im;
  assign re_x0 = re;
  assign addr = in3_1;
  assign valid_x1 = in3_3;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  xlcomplex_multiplier_a2b4ef32507594e3f0bda9e2b78d23f6 complex_multiplier_6_0 (
    .s_axis_a_tvalid(delay6_q_net),
    .s_axis_a_tdata_imag(delay5_q_net),
    .s_axis_a_tdata_real(delay4_q_net),
    .s_axis_b_tvalid(constant_op_net),
    .s_axis_b_tdata_imag(delay2_q_net),
    .s_axis_b_tdata_real(delay3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .m_axis_dout_tvalid(valid_x0),
    .m_axis_dout_tdata_imag(tdata_imag_x0),
    .m_axis_dout_tdata_real(tdata_real_x0)
  );
  sysgen_constant_19de62f6a5 constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay (
    .en(1'b1),
    .rst(1'b0),
    .d(im_x0),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay1 (
    .en(1'b1),
    .rst(1'b0),
    .d(re_x0),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay1_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay2 (
    .en(1'b1),
    .rst(1'b0),
    .d(rom1_im_data_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay2_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay3 (
    .en(1'b1),
    .rst(1'b0),
    .d(rom1_re_data_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay3_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay4 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay4_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay5 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay5_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay6 (
    .en(1'b1),
    .rst(1'b0),
    .d(valid_x1),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay6_q_net)
  );
  mft_overlap_add_2022_0303_xlsprom #(
    .c_address_width(10),
    .c_width(16),
    .latency(1),
    .mem_init_file("xpm_e635b2_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_val("0")
  )
  rom1_im (
    .rst(1'b0),
    .addr(addr),
    .en(valid_x1),
    .clk(clk_net),
    .ce(ce_net),
    .data(rom1_im_data_net)
  );
  mft_overlap_add_2022_0303_xlsprom #(
    .c_address_width(10),
    .c_width(16),
    .latency(1),
    .mem_init_file("xpm_6a6e8d_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_val("0")
  )
  rom1_re (
    .rst(1'b0),
    .addr(addr),
    .en(valid_x1),
    .clk(clk_net),
    .ce(ce_net),
    .data(rom1_re_data_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block mft_overlap_add_2022_0303/Odd_MatchedFilterBank/MatchedFilterBank/complex multiplier bank/Complex Multiply5
module mft_overlap_add_2022_0303_complex_multiply5_x0 (
  input [16-1:0] im,
  input [16-1:0] re,
  input [10-1:0] in3_1,
  input [1-1:0] in3_3,
  input clk_1,
  input ce_1,
  output [32-1:0] tdata_imag,
  output [32-1:0] tdata_real
);
  wire [16-1:0] im_x0;
  wire [16-1:0] re_x0;
  wire [1-1:0] valid_x1;
  wire clk_net;
  wire [32-1:0] tdata_imag_x0;
  wire [10-1:0] addr;
  wire ce_net;
  wire [32-1:0] tdata_real_x0;
  wire [16-1:0] delay_q_net;
  wire [16-1:0] rom1_im_data_net;
  wire [16-1:0] delay1_q_net;
  wire constant_op_net;
  wire [16-1:0] delay3_q_net;
  wire valid_x0;
  wire [16-1:0] delay5_q_net;
  wire delay6_q_net;
  wire [16-1:0] delay4_q_net;
  wire [16-1:0] rom1_re_data_net;
  wire [16-1:0] delay2_q_net;
  assign tdata_imag = tdata_imag_x0;
  assign tdata_real = tdata_real_x0;
  assign im_x0 = im;
  assign re_x0 = re;
  assign addr = in3_1;
  assign valid_x1 = in3_3;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  xlcomplex_multiplier_a2b4ef32507594e3f0bda9e2b78d23f6 complex_multiplier_6_0 (
    .s_axis_a_tvalid(delay6_q_net),
    .s_axis_a_tdata_imag(delay5_q_net),
    .s_axis_a_tdata_real(delay4_q_net),
    .s_axis_b_tvalid(constant_op_net),
    .s_axis_b_tdata_imag(delay2_q_net),
    .s_axis_b_tdata_real(delay3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .m_axis_dout_tvalid(valid_x0),
    .m_axis_dout_tdata_imag(tdata_imag_x0),
    .m_axis_dout_tdata_real(tdata_real_x0)
  );
  sysgen_constant_19de62f6a5 constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay (
    .en(1'b1),
    .rst(1'b0),
    .d(im_x0),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay1 (
    .en(1'b1),
    .rst(1'b0),
    .d(re_x0),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay1_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay2 (
    .en(1'b1),
    .rst(1'b0),
    .d(rom1_im_data_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay2_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay3 (
    .en(1'b1),
    .rst(1'b0),
    .d(rom1_re_data_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay3_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay4 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay4_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay5 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay5_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay6 (
    .en(1'b1),
    .rst(1'b0),
    .d(valid_x1),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay6_q_net)
  );
  mft_overlap_add_2022_0303_xlsprom #(
    .c_address_width(10),
    .c_width(16),
    .latency(1),
    .mem_init_file("xpm_ca3e06_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_val("0")
  )
  rom1_im (
    .rst(1'b0),
    .addr(addr),
    .en(valid_x1),
    .clk(clk_net),
    .ce(ce_net),
    .data(rom1_im_data_net)
  );
  mft_overlap_add_2022_0303_xlsprom #(
    .c_address_width(10),
    .c_width(16),
    .latency(1),
    .mem_init_file("xpm_597375_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_val("0")
  )
  rom1_re (
    .rst(1'b0),
    .addr(addr),
    .en(valid_x1),
    .clk(clk_net),
    .ce(ce_net),
    .data(rom1_re_data_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block mft_overlap_add_2022_0303/Odd_MatchedFilterBank/MatchedFilterBank/complex multiplier bank/Complex Multiply6
module mft_overlap_add_2022_0303_complex_multiply6_x0 (
  input [16-1:0] im,
  input [16-1:0] re,
  input [10-1:0] in3_1,
  input [1-1:0] in3_3,
  input clk_1,
  input ce_1,
  output [32-1:0] tdata_imag,
  output [32-1:0] tdata_real
);
  wire ce_net;
  wire [16-1:0] delay1_q_net;
  wire [16-1:0] re_x0;
  wire [1-1:0] valid_x1;
  wire [16-1:0] delay5_q_net;
  wire [10-1:0] addr;
  wire constant_op_net;
  wire delay6_q_net;
  wire [16-1:0] delay_q_net;
  wire [16-1:0] im_x0;
  wire [16-1:0] delay4_q_net;
  wire valid_x0;
  wire [16-1:0] delay2_q_net;
  wire [32-1:0] tdata_real_x0;
  wire clk_net;
  wire [32-1:0] tdata_imag_x0;
  wire [16-1:0] delay3_q_net;
  wire [16-1:0] rom1_im_data_net;
  wire [16-1:0] rom1_re_data_net;
  assign tdata_imag = tdata_imag_x0;
  assign tdata_real = tdata_real_x0;
  assign im_x0 = im;
  assign re_x0 = re;
  assign addr = in3_1;
  assign valid_x1 = in3_3;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  xlcomplex_multiplier_a2b4ef32507594e3f0bda9e2b78d23f6 complex_multiplier_6_0 (
    .s_axis_a_tvalid(delay6_q_net),
    .s_axis_a_tdata_imag(delay5_q_net),
    .s_axis_a_tdata_real(delay4_q_net),
    .s_axis_b_tvalid(constant_op_net),
    .s_axis_b_tdata_imag(delay2_q_net),
    .s_axis_b_tdata_real(delay3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .m_axis_dout_tvalid(valid_x0),
    .m_axis_dout_tdata_imag(tdata_imag_x0),
    .m_axis_dout_tdata_real(tdata_real_x0)
  );
  sysgen_constant_19de62f6a5 constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay (
    .en(1'b1),
    .rst(1'b0),
    .d(im_x0),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay1 (
    .en(1'b1),
    .rst(1'b0),
    .d(re_x0),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay1_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay2 (
    .en(1'b1),
    .rst(1'b0),
    .d(rom1_im_data_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay2_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay3 (
    .en(1'b1),
    .rst(1'b0),
    .d(rom1_re_data_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay3_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay4 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay4_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay5 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay5_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay6 (
    .en(1'b1),
    .rst(1'b0),
    .d(valid_x1),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay6_q_net)
  );
  mft_overlap_add_2022_0303_xlsprom #(
    .c_address_width(10),
    .c_width(16),
    .latency(1),
    .mem_init_file("xpm_e8ffa3_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_val("0")
  )
  rom1_im (
    .rst(1'b0),
    .addr(addr),
    .en(valid_x1),
    .clk(clk_net),
    .ce(ce_net),
    .data(rom1_im_data_net)
  );
  mft_overlap_add_2022_0303_xlsprom #(
    .c_address_width(10),
    .c_width(16),
    .latency(1),
    .mem_init_file("xpm_3af851_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_val("0")
  )
  rom1_re (
    .rst(1'b0),
    .addr(addr),
    .en(valid_x1),
    .clk(clk_net),
    .ce(ce_net),
    .data(rom1_re_data_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block mft_overlap_add_2022_0303/Odd_MatchedFilterBank/MatchedFilterBank/complex multiplier bank/Complex Multiply7
module mft_overlap_add_2022_0303_complex_multiply7_x0 (
  input [16-1:0] im,
  input [16-1:0] re,
  input [10-1:0] in3_1,
  input [1-1:0] in3_3,
  input clk_1,
  input ce_1,
  output [32-1:0] tdata_imag,
  output [32-1:0] tdata_real
);
  wire [1-1:0] valid_x1;
  wire clk_net;
  wire [32-1:0] tdata_imag_x0;
  wire [16-1:0] im_x0;
  wire ce_net;
  wire [32-1:0] tdata_real_x0;
  wire [16-1:0] re_x0;
  wire [10-1:0] addr;
  wire constant_op_net;
  wire [16-1:0] delay4_q_net;
  wire [16-1:0] delay2_q_net;
  wire [16-1:0] rom1_re_data_net;
  wire [16-1:0] delay_q_net;
  wire [16-1:0] rom1_im_data_net;
  wire [16-1:0] delay1_q_net;
  wire valid_x0;
  wire delay6_q_net;
  wire [16-1:0] delay5_q_net;
  wire [16-1:0] delay3_q_net;
  assign tdata_imag = tdata_imag_x0;
  assign tdata_real = tdata_real_x0;
  assign im_x0 = im;
  assign re_x0 = re;
  assign addr = in3_1;
  assign valid_x1 = in3_3;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  xlcomplex_multiplier_a2b4ef32507594e3f0bda9e2b78d23f6 complex_multiplier_6_0 (
    .s_axis_a_tvalid(delay6_q_net),
    .s_axis_a_tdata_imag(delay5_q_net),
    .s_axis_a_tdata_real(delay4_q_net),
    .s_axis_b_tvalid(constant_op_net),
    .s_axis_b_tdata_imag(delay2_q_net),
    .s_axis_b_tdata_real(delay3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .m_axis_dout_tvalid(valid_x0),
    .m_axis_dout_tdata_imag(tdata_imag_x0),
    .m_axis_dout_tdata_real(tdata_real_x0)
  );
  sysgen_constant_19de62f6a5 constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay (
    .en(1'b1),
    .rst(1'b0),
    .d(im_x0),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay1 (
    .en(1'b1),
    .rst(1'b0),
    .d(re_x0),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay1_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay2 (
    .en(1'b1),
    .rst(1'b0),
    .d(rom1_im_data_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay2_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay3 (
    .en(1'b1),
    .rst(1'b0),
    .d(rom1_re_data_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay3_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay4 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay4_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay5 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay5_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay6 (
    .en(1'b1),
    .rst(1'b0),
    .d(valid_x1),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay6_q_net)
  );
  mft_overlap_add_2022_0303_xlsprom #(
    .c_address_width(10),
    .c_width(16),
    .latency(1),
    .mem_init_file("xpm_64aab2_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_val("0")
  )
  rom1_im (
    .rst(1'b0),
    .addr(addr),
    .en(valid_x1),
    .clk(clk_net),
    .ce(ce_net),
    .data(rom1_im_data_net)
  );
  mft_overlap_add_2022_0303_xlsprom #(
    .c_address_width(10),
    .c_width(16),
    .latency(1),
    .mem_init_file("xpm_8eaed8_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_val("0")
  )
  rom1_re (
    .rst(1'b0),
    .addr(addr),
    .en(valid_x1),
    .clk(clk_net),
    .ce(ce_net),
    .data(rom1_re_data_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block mft_overlap_add_2022_0303/Odd_MatchedFilterBank/MatchedFilterBank/complex multiplier bank/Complex Multiply8
module mft_overlap_add_2022_0303_complex_multiply8_x0 (
  input [16-1:0] im,
  input [16-1:0] re,
  input [10-1:0] in3_1,
  input [1-1:0] in3_3,
  input clk_1,
  input ce_1,
  output [32-1:0] tdata_imag,
  output [32-1:0] tdata_real
);
  wire ce_net;
  wire valid_x0;
  wire [16-1:0] delay3_q_net;
  wire [16-1:0] delay2_q_net;
  wire [16-1:0] delay_q_net;
  wire clk_net;
  wire [16-1:0] im_x0;
  wire [16-1:0] delay4_q_net;
  wire [1-1:0] valid_x1;
  wire [16-1:0] re_x0;
  wire [16-1:0] delay5_q_net;
  wire constant_op_net;
  wire [10-1:0] addr;
  wire [32-1:0] tdata_imag_x0;
  wire [16-1:0] delay1_q_net;
  wire [32-1:0] tdata_real_x0;
  wire delay6_q_net;
  wire [16-1:0] rom1_re_data_net;
  wire [16-1:0] rom1_im_data_net;
  assign tdata_imag = tdata_imag_x0;
  assign tdata_real = tdata_real_x0;
  assign im_x0 = im;
  assign re_x0 = re;
  assign addr = in3_1;
  assign valid_x1 = in3_3;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  xlcomplex_multiplier_a2b4ef32507594e3f0bda9e2b78d23f6 complex_multiplier_6_0 (
    .s_axis_a_tvalid(delay6_q_net),
    .s_axis_a_tdata_imag(delay5_q_net),
    .s_axis_a_tdata_real(delay4_q_net),
    .s_axis_b_tvalid(constant_op_net),
    .s_axis_b_tdata_imag(delay2_q_net),
    .s_axis_b_tdata_real(delay3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .m_axis_dout_tvalid(valid_x0),
    .m_axis_dout_tdata_imag(tdata_imag_x0),
    .m_axis_dout_tdata_real(tdata_real_x0)
  );
  sysgen_constant_19de62f6a5 constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay (
    .en(1'b1),
    .rst(1'b0),
    .d(im_x0),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay1 (
    .en(1'b1),
    .rst(1'b0),
    .d(re_x0),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay1_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay2 (
    .en(1'b1),
    .rst(1'b0),
    .d(rom1_im_data_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay2_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay3 (
    .en(1'b1),
    .rst(1'b0),
    .d(rom1_re_data_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay3_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay4 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay4_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay5 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay5_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay6 (
    .en(1'b1),
    .rst(1'b0),
    .d(valid_x1),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay6_q_net)
  );
  mft_overlap_add_2022_0303_xlsprom #(
    .c_address_width(10),
    .c_width(16),
    .latency(1),
    .mem_init_file("xpm_320829_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_val("0")
  )
  rom1_im (
    .rst(1'b0),
    .addr(addr),
    .en(valid_x1),
    .clk(clk_net),
    .ce(ce_net),
    .data(rom1_im_data_net)
  );
  mft_overlap_add_2022_0303_xlsprom #(
    .c_address_width(10),
    .c_width(16),
    .latency(1),
    .mem_init_file("xpm_f57ea4_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_val("0")
  )
  rom1_re (
    .rst(1'b0),
    .addr(addr),
    .en(valid_x1),
    .clk(clk_net),
    .ce(ce_net),
    .data(rom1_re_data_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block mft_overlap_add_2022_0303/Odd_MatchedFilterBank/MatchedFilterBank/complex multiplier bank/Complex Multiply9
module mft_overlap_add_2022_0303_complex_multiply9_x0 (
  input [16-1:0] im,
  input [16-1:0] re,
  input [10-1:0] in3_1,
  input [1-1:0] in3_3,
  input clk_1,
  input ce_1,
  output [32-1:0] tdata_imag,
  output [32-1:0] tdata_real
);
  wire [16-1:0] im_x0;
  wire [16-1:0] re_x0;
  wire ce_net;
  wire [32-1:0] tdata_real_x0;
  wire [32-1:0] tdata_imag_x0;
  wire [1-1:0] valid_x1;
  wire clk_net;
  wire [10-1:0] addr;
  wire [16-1:0] delay3_q_net;
  wire [16-1:0] delay1_q_net;
  wire constant_op_net;
  wire [16-1:0] delay4_q_net;
  wire [16-1:0] rom1_re_data_net;
  wire delay6_q_net;
  wire valid_x0;
  wire [16-1:0] delay5_q_net;
  wire [16-1:0] delay_q_net;
  wire [16-1:0] delay2_q_net;
  wire [16-1:0] rom1_im_data_net;
  assign tdata_imag = tdata_imag_x0;
  assign tdata_real = tdata_real_x0;
  assign im_x0 = im;
  assign re_x0 = re;
  assign addr = in3_1;
  assign valid_x1 = in3_3;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  xlcomplex_multiplier_a2b4ef32507594e3f0bda9e2b78d23f6 complex_multiplier_6_0 (
    .s_axis_a_tvalid(delay6_q_net),
    .s_axis_a_tdata_imag(delay5_q_net),
    .s_axis_a_tdata_real(delay4_q_net),
    .s_axis_b_tvalid(constant_op_net),
    .s_axis_b_tdata_imag(delay2_q_net),
    .s_axis_b_tdata_real(delay3_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .m_axis_dout_tvalid(valid_x0),
    .m_axis_dout_tdata_imag(tdata_imag_x0),
    .m_axis_dout_tdata_real(tdata_real_x0)
  );
  sysgen_constant_19de62f6a5 constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay (
    .en(1'b1),
    .rst(1'b0),
    .d(im_x0),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay1 (
    .en(1'b1),
    .rst(1'b0),
    .d(re_x0),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay1_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay2 (
    .en(1'b1),
    .rst(1'b0),
    .d(rom1_im_data_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay2_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay3 (
    .en(1'b1),
    .rst(1'b0),
    .d(rom1_re_data_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay3_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay4 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay4_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay5 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay5_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay6 (
    .en(1'b1),
    .rst(1'b0),
    .d(valid_x1),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay6_q_net)
  );
  mft_overlap_add_2022_0303_xlsprom #(
    .c_address_width(10),
    .c_width(16),
    .latency(1),
    .mem_init_file("xpm_7d3c03_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_val("0")
  )
  rom1_im (
    .rst(1'b0),
    .addr(addr),
    .en(valid_x1),
    .clk(clk_net),
    .ce(ce_net),
    .data(rom1_im_data_net)
  );
  mft_overlap_add_2022_0303_xlsprom #(
    .c_address_width(10),
    .c_width(16),
    .latency(1),
    .mem_init_file("xpm_019491_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_val("0")
  )
  rom1_re (
    .rst(1'b0),
    .addr(addr),
    .en(valid_x1),
    .clk(clk_net),
    .ce(ce_net),
    .data(rom1_re_data_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block mft_overlap_add_2022_0303/Odd_MatchedFilterBank/MatchedFilterBank/complex multiplier bank
module mft_overlap_add_2022_0303_complex_multiplier_bank_x0 (
  input [16-1:0] in1_1,
  input [16-1:0] in1_2,
  input [10-1:0] in1_3,
  input [1-1:0] in1_5,
  input clk_1,
  input ce_1,
  output [32-1:0] bus_out_2,
  output [32-1:0] bus_out_3,
  output [32-1:0] bus_out_5,
  output [32-1:0] bus_out_6,
  output [32-1:0] bus_out_8,
  output [32-1:0] bus_out_9,
  output [32-1:0] bus_out_11,
  output [32-1:0] bus_out_12,
  output [32-1:0] bus_out_14,
  output [32-1:0] bus_out_15,
  output [32-1:0] bus_out_17,
  output [32-1:0] bus_out_18,
  output [32-1:0] bus_out_20,
  output [32-1:0] bus_out_21,
  output [32-1:0] bus_out_23,
  output [32-1:0] bus_out_24,
  output [32-1:0] bus_out_26,
  output [32-1:0] bus_out_27,
  output [32-1:0] bus_out_29,
  output [32-1:0] bus_out_30
);
  wire [32-1:0] tdata_imag_x6;
  wire [10-1:0] addr;
  wire [32-1:0] tdata_real_x1;
  wire clk_net;
  wire [32-1:0] tdata_real_x3;
  wire ce_net;
  wire [32-1:0] tdata_imag_x4;
  wire [32-1:0] tdata_imag_x0;
  wire [32-1:0] tdata_imag_x5;
  wire [32-1:0] tdata_imag;
  wire [32-1:0] tdata_imag_x2;
  wire [32-1:0] tdata_imag_x8;
  wire [32-1:0] tdata_real_x2;
  wire [32-1:0] tdata_real_x8;
  wire [32-1:0] tdata_real_x7;
  wire [32-1:0] tdata_real_x6;
  wire [32-1:0] tdata_real_x5;
  wire [16-1:0] re;
  wire [32-1:0] tdata_imag_x3;
  wire [16-1:0] im;
  wire [1-1:0] valid_x7;
  wire [32-1:0] tdata_imag_x1;
  wire [32-1:0] tdata_real_x0;
  wire [32-1:0] tdata_real_x4;
  wire [32-1:0] tdata_real;
  wire [32-1:0] tdata_imag_x7;
  assign bus_out_2 = tdata_imag_x5;
  assign bus_out_3 = tdata_real_x4;
  assign bus_out_5 = tdata_imag_x3;
  assign bus_out_6 = tdata_real_x3;
  assign bus_out_8 = tdata_imag_x2;
  assign bus_out_9 = tdata_real_x2;
  assign bus_out_11 = tdata_imag_x1;
  assign bus_out_12 = tdata_real_x1;
  assign bus_out_14 = tdata_imag_x0;
  assign bus_out_15 = tdata_real_x0;
  assign bus_out_17 = tdata_imag;
  assign bus_out_18 = tdata_real;
  assign bus_out_20 = tdata_imag_x8;
  assign bus_out_21 = tdata_real_x8;
  assign bus_out_23 = tdata_imag_x7;
  assign bus_out_24 = tdata_real_x7;
  assign bus_out_26 = tdata_imag_x6;
  assign bus_out_27 = tdata_real_x6;
  assign bus_out_29 = tdata_imag_x4;
  assign bus_out_30 = tdata_real_x5;
  assign im = in1_1;
  assign re = in1_2;
  assign addr = in1_3;
  assign valid_x7 = in1_5;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  mft_overlap_add_2022_0303_complex_multiply_1_x0 complex_multiply_1 (
    .im(im),
    .re(re),
    .in3_1(addr),
    .in3_3(valid_x7),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .tdata_imag(tdata_imag_x5),
    .tdata_real(tdata_real_x4)
  );
  mft_overlap_add_2022_0303_complex_multiply10_x0 complex_multiply10 (
    .im(im),
    .re(re),
    .in3_1(addr),
    .in3_3(valid_x7),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .tdata_imag(tdata_imag_x4),
    .tdata_real(tdata_real_x5)
  );
  mft_overlap_add_2022_0303_complex_multiply2_x0 complex_multiply2 (
    .im(im),
    .re(re),
    .in3_1(addr),
    .in3_3(valid_x7),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .tdata_imag(tdata_imag_x3),
    .tdata_real(tdata_real_x3)
  );
  mft_overlap_add_2022_0303_complex_multiply3_x0 complex_multiply3 (
    .im(im),
    .re(re),
    .in3_1(addr),
    .in3_3(valid_x7),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .tdata_imag(tdata_imag_x2),
    .tdata_real(tdata_real_x2)
  );
  mft_overlap_add_2022_0303_complex_multiply4_x0 complex_multiply4 (
    .im(im),
    .re(re),
    .in3_1(addr),
    .in3_3(valid_x7),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .tdata_imag(tdata_imag_x1),
    .tdata_real(tdata_real_x1)
  );
  mft_overlap_add_2022_0303_complex_multiply5_x0 complex_multiply5 (
    .im(im),
    .re(re),
    .in3_1(addr),
    .in3_3(valid_x7),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .tdata_imag(tdata_imag_x0),
    .tdata_real(tdata_real_x0)
  );
  mft_overlap_add_2022_0303_complex_multiply6_x0 complex_multiply6 (
    .im(im),
    .re(re),
    .in3_1(addr),
    .in3_3(valid_x7),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .tdata_imag(tdata_imag),
    .tdata_real(tdata_real)
  );
  mft_overlap_add_2022_0303_complex_multiply7_x0 complex_multiply7 (
    .im(im),
    .re(re),
    .in3_1(addr),
    .in3_3(valid_x7),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .tdata_imag(tdata_imag_x8),
    .tdata_real(tdata_real_x8)
  );
  mft_overlap_add_2022_0303_complex_multiply8_x0 complex_multiply8 (
    .im(im),
    .re(re),
    .in3_1(addr),
    .in3_3(valid_x7),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .tdata_imag(tdata_imag_x7),
    .tdata_real(tdata_real_x7)
  );
  mft_overlap_add_2022_0303_complex_multiply9_x0 complex_multiply9 (
    .im(im),
    .re(re),
    .in3_1(addr),
    .in3_3(valid_x7),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .tdata_imag(tdata_imag_x6),
    .tdata_real(tdata_real_x6)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block mft_overlap_add_2022_0303/Odd_MatchedFilterBank/MatchedFilterBank/im_sum
module mft_overlap_add_2022_0303_im_sum_x0 (
  input [32-1:0] in1_2,
  input [32-1:0] in1_3,
  input [32-1:0] in1_5,
  input [32-1:0] in1_6,
  input [32-1:0] in1_8,
  input [32-1:0] in1_9,
  input [32-1:0] in1_11,
  input [32-1:0] in1_12,
  input [32-1:0] in1_14,
  input [32-1:0] in1_15,
  input [32-1:0] in1_17,
  input [32-1:0] in1_18,
  input [32-1:0] in1_20,
  input [32-1:0] in1_21,
  input [32-1:0] in1_23,
  input [32-1:0] in1_24,
  input [32-1:0] in1_26,
  input [32-1:0] in1_27,
  input [32-1:0] in1_29,
  input [32-1:0] in1_30,
  input clk_1,
  input ce_1,
  output [36-1:0] out
);
  wire [32-1:0] tdata_imag_x2;
  wire ce_net;
  wire [32-1:0] tdata_real_x6;
  wire clk_net;
  wire [32-1:0] tdata_imag_x8;
  wire [32-1:0] tdata_real_x8;
  wire [36-1:0] out_x1;
  wire [32-1:0] tdata_imag_x1;
  wire [32-1:0] tdata_real_x0;
  wire [32-1:0] tdata_imag_x3;
  wire [32-1:0] tdata_imag;
  wire [32-1:0] tdata_real_x2;
  wire [33-1:0] addsub1_s_net;
  wire [32-1:0] tdata_imag_x5;
  wire [33-1:0] addsub2_s_net;
  wire [32-1:0] tdata_real_x7;
  wire [32-1:0] tdata_imag_x6;
  wire [32-1:0] tdata_real_x4;
  wire [32-1:0] tdata_imag_x4;
  wire [32-1:0] tdata_real_x1;
  wire [32-1:0] tdata_imag_x0;
  wire [32-1:0] tdata_real_x3;
  wire [32-1:0] tdata_real_x5;
  wire [32-1:0] tdata_real;
  wire [32-1:0] tdata_imag_x7;
  wire [34-1:0] addsub6_s_net;
  wire [35-1:0] out_x0;
  wire [32-1:0] delay_11_q_net;
  wire [35-1:0] addsub5_s_net;
  wire [33-1:0] addsub3_s_net;
  wire [32-1:0] delay_1_q_net;
  wire [32-1:0] delay_2_q_net;
  wire [33-1:0] addsub4_s_net;
  wire [34-1:0] addsub7_s_net;
  wire [32-1:0] delay_10_q_net;
  assign out = out_x1;
  assign tdata_imag_x8 = in1_2;
  assign tdata_real_x8 = in1_3;
  assign tdata_imag_x6 = in1_5;
  assign tdata_real_x6 = in1_6;
  assign tdata_imag_x5 = in1_8;
  assign tdata_real_x5 = in1_9;
  assign tdata_imag_x4 = in1_11;
  assign tdata_real_x4 = in1_12;
  assign tdata_imag_x3 = in1_14;
  assign tdata_real_x3 = in1_15;
  assign tdata_imag_x2 = in1_17;
  assign tdata_real_x2 = in1_18;
  assign tdata_imag_x1 = in1_20;
  assign tdata_real_x1 = in1_21;
  assign tdata_imag_x0 = in1_23;
  assign tdata_real_x0 = in1_24;
  assign tdata_imag = in1_26;
  assign tdata_real = in1_27;
  assign tdata_imag_x7 = in1_29;
  assign tdata_real_x7 = in1_30;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  mft_overlap_add_2022_0303_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(29),
    .a_width(32),
    .b_arith(`xlSigned),
    .b_bin_pt(29),
    .b_width(32),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(33),
    .core_name0("mft_overlap_add_2022_0303_c_addsub_v12_0_i1"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(33),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(29),
    .s_width(33)
  )
  addsub1 (
    .clr(1'b0),
    .en(1'b1),
    .a(tdata_imag_x8),
    .b(tdata_imag_x6),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub1_s_net)
  );
  mft_overlap_add_2022_0303_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(29),
    .a_width(32),
    .b_arith(`xlSigned),
    .b_bin_pt(29),
    .b_width(32),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(33),
    .core_name0("mft_overlap_add_2022_0303_c_addsub_v12_0_i1"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(33),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(29),
    .s_width(33)
  )
  addsub2 (
    .clr(1'b0),
    .en(1'b1),
    .a(tdata_imag_x5),
    .b(tdata_imag_x4),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub2_s_net)
  );
  mft_overlap_add_2022_0303_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(29),
    .a_width(32),
    .b_arith(`xlSigned),
    .b_bin_pt(29),
    .b_width(32),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(33),
    .core_name0("mft_overlap_add_2022_0303_c_addsub_v12_0_i1"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(33),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(29),
    .s_width(33)
  )
  addsub3 (
    .clr(1'b0),
    .en(1'b1),
    .a(tdata_imag_x2),
    .b(tdata_imag_x1),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub3_s_net)
  );
  mft_overlap_add_2022_0303_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(29),
    .a_width(32),
    .b_arith(`xlSigned),
    .b_bin_pt(29),
    .b_width(32),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(33),
    .core_name0("mft_overlap_add_2022_0303_c_addsub_v12_0_i1"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(33),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(29),
    .s_width(33)
  )
  addsub4 (
    .clr(1'b0),
    .en(1'b1),
    .a(tdata_imag_x0),
    .b(tdata_imag),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub4_s_net)
  );
  mft_overlap_add_2022_0303_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(29),
    .a_width(34),
    .b_arith(`xlSigned),
    .b_bin_pt(29),
    .b_width(32),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(35),
    .core_name0("mft_overlap_add_2022_0303_c_addsub_v12_0_i2"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(35),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(29),
    .s_width(35)
  )
  addsub5 (
    .clr(1'b0),
    .en(1'b1),
    .a(addsub7_s_net),
    .b(delay_11_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub5_s_net)
  );
  mft_overlap_add_2022_0303_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(29),
    .a_width(33),
    .b_arith(`xlSigned),
    .b_bin_pt(29),
    .b_width(33),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(34),
    .core_name0("mft_overlap_add_2022_0303_c_addsub_v12_0_i3"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(34),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(29),
    .s_width(34)
  )
  addsub6 (
    .clr(1'b0),
    .en(1'b1),
    .a(addsub1_s_net),
    .b(addsub2_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub6_s_net)
  );
  mft_overlap_add_2022_0303_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(29),
    .a_width(33),
    .b_arith(`xlSigned),
    .b_bin_pt(29),
    .b_width(33),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(34),
    .core_name0("mft_overlap_add_2022_0303_c_addsub_v12_0_i3"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(34),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(29),
    .s_width(34)
  )
  addsub7 (
    .clr(1'b0),
    .en(1'b1),
    .a(addsub3_s_net),
    .b(addsub4_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub7_s_net)
  );
  mft_overlap_add_2022_0303_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(29),
    .a_width(34),
    .b_arith(`xlSigned),
    .b_bin_pt(29),
    .b_width(32),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(35),
    .core_name0("mft_overlap_add_2022_0303_c_addsub_v12_0_i2"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(35),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(29),
    .s_width(35)
  )
  addsub8 (
    .clr(1'b0),
    .en(1'b1),
    .a(addsub6_s_net),
    .b(delay_2_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(out_x0)
  );
  mft_overlap_add_2022_0303_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(29),
    .a_width(35),
    .b_arith(`xlSigned),
    .b_bin_pt(29),
    .b_width(35),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(36),
    .core_name0("mft_overlap_add_2022_0303_c_addsub_v12_0_i4"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(36),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(29),
    .s_width(36)
  )
  addsub9 (
    .clr(1'b0),
    .en(1'b1),
    .a(out_x0),
    .b(addsub5_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(out_x1)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(32)
  )
  delay_1 (
    .en(1'b1),
    .rst(1'b0),
    .d(tdata_imag_x3),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_1_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(32)
  )
  delay_10 (
    .en(1'b1),
    .rst(1'b0),
    .d(tdata_imag_x7),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_10_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(32)
  )
  delay_11 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay_10_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_11_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(32)
  )
  delay_2 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay_1_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_2_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block mft_overlap_add_2022_0303/Odd_MatchedFilterBank/MatchedFilterBank/re_sum
module mft_overlap_add_2022_0303_re_sum_x0 (
  input [32-1:0] bus_int_2,
  input [32-1:0] bus_int_3,
  input [32-1:0] bus_int_5,
  input [32-1:0] bus_int_6,
  input [32-1:0] bus_int_8,
  input [32-1:0] bus_int_9,
  input [32-1:0] bus_int_11,
  input [32-1:0] bus_int_12,
  input [32-1:0] bus_int_14,
  input [32-1:0] bus_int_15,
  input [32-1:0] bus_int_17,
  input [32-1:0] bus_int_18,
  input [32-1:0] bus_int_20,
  input [32-1:0] bus_int_21,
  input [32-1:0] bus_int_23,
  input [32-1:0] bus_int_24,
  input [32-1:0] bus_int_26,
  input [32-1:0] bus_int_27,
  input [32-1:0] bus_int_29,
  input [32-1:0] bus_int_30,
  input clk_1,
  input ce_1,
  output [36-1:0] out1
);
  wire [32-1:0] tdata_real_x0;
  wire [32-1:0] tdata_imag_x6;
  wire [32-1:0] tdata_real_x4;
  wire [32-1:0] tdata_real_x6;
  wire [32-1:0] tdata_imag_x3;
  wire [32-1:0] tdata_imag_x2;
  wire [32-1:0] tdata_real_x7;
  wire [32-1:0] tdata_imag_x5;
  wire [32-1:0] tdata_imag_x7;
  wire [32-1:0] tdata_imag_x1;
  wire [32-1:0] tdata_real_x1;
  wire [32-1:0] tdata_imag_x8;
  wire [36-1:0] addsub9_s_net;
  wire [32-1:0] tdata_real_x5;
  wire [32-1:0] tdata_real;
  wire [32-1:0] tdata_imag_x0;
  wire [32-1:0] tdata_real_x8;
  wire [32-1:0] tdata_imag;
  wire [32-1:0] tdata_imag_x4;
  wire [32-1:0] tdata_real_x3;
  wire [32-1:0] tdata_real_x2;
  wire clk_net;
  wire [33-1:0] addsub4_s_net;
  wire [34-1:0] addsub6_s_net;
  wire [33-1:0] addsub3_s_net;
  wire [34-1:0] addsub7_s_net;
  wire [33-1:0] addsub2_s_net;
  wire [33-1:0] addsub1_s_net;
  wire [33-1:0] addsub5_s_net;
  wire ce_net;
  wire [35-1:0] out;
  wire [33-1:0] delay_10_q_net;
  wire [33-1:0] delay_11_q_net;
  assign out1 = addsub9_s_net;
  assign tdata_imag_x8 = bus_int_2;
  assign tdata_real_x8 = bus_int_3;
  assign tdata_imag_x6 = bus_int_5;
  assign tdata_real_x6 = bus_int_6;
  assign tdata_imag_x5 = bus_int_8;
  assign tdata_real_x5 = bus_int_9;
  assign tdata_imag_x4 = bus_int_11;
  assign tdata_real_x4 = bus_int_12;
  assign tdata_imag_x3 = bus_int_14;
  assign tdata_real_x3 = bus_int_15;
  assign tdata_imag_x2 = bus_int_17;
  assign tdata_real_x2 = bus_int_18;
  assign tdata_imag_x1 = bus_int_20;
  assign tdata_real_x1 = bus_int_21;
  assign tdata_imag_x0 = bus_int_23;
  assign tdata_real_x0 = bus_int_24;
  assign tdata_imag = bus_int_26;
  assign tdata_real = bus_int_27;
  assign tdata_imag_x7 = bus_int_29;
  assign tdata_real_x7 = bus_int_30;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  mft_overlap_add_2022_0303_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(29),
    .a_width(32),
    .b_arith(`xlSigned),
    .b_bin_pt(29),
    .b_width(32),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(33),
    .core_name0("mft_overlap_add_2022_0303_c_addsub_v12_0_i1"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(33),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(29),
    .s_width(33)
  )
  addsub1 (
    .clr(1'b0),
    .en(1'b1),
    .a(tdata_real_x8),
    .b(tdata_real_x6),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub1_s_net)
  );
  mft_overlap_add_2022_0303_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(29),
    .a_width(32),
    .b_arith(`xlSigned),
    .b_bin_pt(29),
    .b_width(32),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(33),
    .core_name0("mft_overlap_add_2022_0303_c_addsub_v12_0_i1"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(33),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(29),
    .s_width(33)
  )
  addsub2 (
    .clr(1'b0),
    .en(1'b1),
    .a(tdata_real_x5),
    .b(tdata_real_x4),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub2_s_net)
  );
  mft_overlap_add_2022_0303_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(29),
    .a_width(32),
    .b_arith(`xlSigned),
    .b_bin_pt(29),
    .b_width(32),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(33),
    .core_name0("mft_overlap_add_2022_0303_c_addsub_v12_0_i1"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(33),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(29),
    .s_width(33)
  )
  addsub3 (
    .clr(1'b0),
    .en(1'b1),
    .a(tdata_real_x3),
    .b(tdata_real_x2),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub3_s_net)
  );
  mft_overlap_add_2022_0303_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(29),
    .a_width(32),
    .b_arith(`xlSigned),
    .b_bin_pt(29),
    .b_width(32),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(33),
    .core_name0("mft_overlap_add_2022_0303_c_addsub_v12_0_i1"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(33),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(29),
    .s_width(33)
  )
  addsub4 (
    .clr(1'b0),
    .en(1'b1),
    .a(tdata_real_x1),
    .b(tdata_real_x0),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub4_s_net)
  );
  mft_overlap_add_2022_0303_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(29),
    .a_width(32),
    .b_arith(`xlSigned),
    .b_bin_pt(29),
    .b_width(32),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(33),
    .core_name0("mft_overlap_add_2022_0303_c_addsub_v12_0_i1"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(33),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(29),
    .s_width(33)
  )
  addsub5 (
    .clr(1'b0),
    .en(1'b1),
    .a(tdata_real),
    .b(tdata_real_x7),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub5_s_net)
  );
  mft_overlap_add_2022_0303_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(29),
    .a_width(33),
    .b_arith(`xlSigned),
    .b_bin_pt(29),
    .b_width(33),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(34),
    .core_name0("mft_overlap_add_2022_0303_c_addsub_v12_0_i3"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(34),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(29),
    .s_width(34)
  )
  addsub6 (
    .clr(1'b0),
    .en(1'b1),
    .a(addsub1_s_net),
    .b(addsub2_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub6_s_net)
  );
  mft_overlap_add_2022_0303_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(29),
    .a_width(33),
    .b_arith(`xlSigned),
    .b_bin_pt(29),
    .b_width(33),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(34),
    .core_name0("mft_overlap_add_2022_0303_c_addsub_v12_0_i3"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(34),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(29),
    .s_width(34)
  )
  addsub7 (
    .clr(1'b0),
    .en(1'b1),
    .a(addsub3_s_net),
    .b(addsub4_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub7_s_net)
  );
  mft_overlap_add_2022_0303_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(29),
    .a_width(34),
    .b_arith(`xlSigned),
    .b_bin_pt(29),
    .b_width(34),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(35),
    .core_name0("mft_overlap_add_2022_0303_c_addsub_v12_0_i2"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(35),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(29),
    .s_width(35)
  )
  addsub8 (
    .clr(1'b0),
    .en(1'b1),
    .a(addsub6_s_net),
    .b(addsub7_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(out)
  );
  mft_overlap_add_2022_0303_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(29),
    .a_width(35),
    .b_arith(`xlSigned),
    .b_bin_pt(29),
    .b_width(33),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(36),
    .core_name0("mft_overlap_add_2022_0303_c_addsub_v12_0_i4"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(36),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(29),
    .s_width(36)
  )
  addsub9 (
    .clr(1'b0),
    .en(1'b1),
    .a(out),
    .b(delay_11_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .s(addsub9_s_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(33)
  )
  delay_10 (
    .en(1'b1),
    .rst(1'b0),
    .d(addsub5_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_10_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(33)
  )
  delay_11 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay_10_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_11_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block mft_overlap_add_2022_0303/Odd_MatchedFilterBank/MatchedFilterBank
module mft_overlap_add_2022_0303_matchedfilterbank_x0 (
  input [16-1:0] re,
  input [16-1:0] re1,
  input [1-1:0] reset,
  input [1-1:0] valid,
  input [16-1:0] valid3,
  input clk_1,
  input ce_1,
  output [52-1:0] mf_im,
  output [52-1:0] mf_re
);
  wire [32-1:0] tdata_imag_x6;
  wire [32-1:0] tdata_real_x7;
  wire [32-1:0] tdata_imag_x1;
  wire clk_net;
  wire [32-1:0] tdata_real_x1;
  wire [16-1:0] mult_p_net_x0;
  wire [32-1:0] tdata_imag_x2;
  wire [32-1:0] tdata_real_x0;
  wire [32-1:0] tdata_imag;
  wire [32-1:0] tdata_real;
  wire [32-1:0] tdata_imag_x0;
  wire [32-1:0] tdata_imag_x5;
  wire [32-1:0] tdata_imag_x3;
  wire [32-1:0] tdata_real_x3;
  wire [32-1:0] tdata_real_x2;
  wire [16-1:0] im;
  wire [16-1:0] re_x0;
  wire [10-1:0] addr;
  wire ce_net;
  wire [52-1:0] mult10_p_net;
  wire [1-1:0] data_tvalid;
  wire [1-1:0] odd_cycle;
  wire [32-1:0] tdata_real_x5;
  wire [52-1:0] mult12_p_net;
  wire [32-1:0] tdata_real_x6;
  wire [32-1:0] tdata_imag_x7;
  wire [32-1:0] tdata_real_x8;
  wire [32-1:0] tdata_imag_x8;
  wire [16-1:0] mult_p_net;
  wire [16-1:0] odd_window;
  wire [32-1:0] tdata_imag_x4;
  wire [32-1:0] tdata_real_x4;
  wire [16-1:0] delay_q_net;
  wire [16-1:0] im_x0;
  wire [36-1:0] addsub9_s_net;
  wire [1-1:0] reset_x1;
  wire [36-1:0] out;
  wire [16-1:0] win;
  wire [16-1:0] win_x0;
  wire [1-1:0] valid_x4;
  wire [16-1:0] win_x1;
  wire [1-1:0] valid_x5;
  wire [16-1:0] re_x1;
  assign mf_im = mult10_p_net;
  assign mf_re = mult12_p_net;
  assign mult_p_net_x0 = re;
  assign mult_p_net = re1;
  assign odd_cycle = reset;
  assign data_tvalid = valid;
  assign odd_window = valid3;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  mft_overlap_add_2022_0303_complex_multiplier_bank_x0 complex_multiplier_bank (
    .in1_1(im),
    .in1_2(re_x0),
    .in1_3(addr),
    .in1_5(valid_x4),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .bus_out_2(tdata_imag_x2),
    .bus_out_3(tdata_real_x5),
    .bus_out_5(tdata_imag_x4),
    .bus_out_6(tdata_real_x4),
    .bus_out_8(tdata_imag_x5),
    .bus_out_9(tdata_real_x6),
    .bus_out_11(tdata_imag_x6),
    .bus_out_12(tdata_real_x7),
    .bus_out_14(tdata_imag_x7),
    .bus_out_15(tdata_real_x8),
    .bus_out_17(tdata_imag_x8),
    .bus_out_18(tdata_real_x2),
    .bus_out_20(tdata_imag_x1),
    .bus_out_21(tdata_real_x1),
    .bus_out_23(tdata_imag_x0),
    .bus_out_24(tdata_real_x0),
    .bus_out_26(tdata_imag),
    .bus_out_27(tdata_real),
    .bus_out_29(tdata_imag_x3),
    .bus_out_30(tdata_real_x3)
  );
  mft_overlap_add_2022_0303_im_sum_x0 im_sum (
    .in1_2(tdata_imag_x2),
    .in1_3(tdata_real_x5),
    .in1_5(tdata_imag_x4),
    .in1_6(tdata_real_x4),
    .in1_8(tdata_imag_x5),
    .in1_9(tdata_real_x6),
    .in1_11(tdata_imag_x6),
    .in1_12(tdata_real_x7),
    .in1_14(tdata_imag_x7),
    .in1_15(tdata_real_x8),
    .in1_17(tdata_imag_x8),
    .in1_18(tdata_real_x2),
    .in1_20(tdata_imag_x1),
    .in1_21(tdata_real_x1),
    .in1_23(tdata_imag_x0),
    .in1_24(tdata_real_x0),
    .in1_26(tdata_imag),
    .in1_27(tdata_real),
    .in1_29(tdata_imag_x3),
    .in1_30(tdata_real_x3),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .out(out)
  );
  mft_overlap_add_2022_0303_re_sum_x0 re_sum (
    .bus_int_2(tdata_imag_x2),
    .bus_int_3(tdata_real_x5),
    .bus_int_5(tdata_imag_x4),
    .bus_int_6(tdata_real_x4),
    .bus_int_8(tdata_imag_x5),
    .bus_int_9(tdata_real_x6),
    .bus_int_11(tdata_imag_x6),
    .bus_int_12(tdata_real_x7),
    .bus_int_14(tdata_imag_x7),
    .bus_int_15(tdata_real_x8),
    .bus_int_17(tdata_imag_x8),
    .bus_int_18(tdata_real_x2),
    .bus_int_20(tdata_imag_x1),
    .bus_int_21(tdata_real_x1),
    .bus_int_23(tdata_imag_x0),
    .bus_int_24(tdata_real_x0),
    .bus_int_26(tdata_imag),
    .bus_int_27(tdata_real),
    .bus_int_29(tdata_imag_x3),
    .bus_int_30(tdata_real_x3),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .out1(addsub9_s_net)
  );
  mft_overlap_add_2022_0303_xlcounter_limit #(
    .cnt_15_0(0),
    .cnt_31_16(0),
    .cnt_47_32(0),
    .cnt_63_48(0),
    .core_name0("mft_overlap_add_2022_0303_c_counter_binary_v12_0_i0"),
    .count_limited(0),
    .op_arith(`xlUnsigned),
    .op_width(10)
  )
  counter (
    .clr(1'b0),
    .rst(reset_x1),
    .en(valid_x5),
    .clk(clk_net),
    .ce(ce_net),
    .op(addr)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(4),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay (
    .en(1'b1),
    .rst(1'b0),
    .d(win),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay10 (
    .en(1'b1),
    .rst(1'b0),
    .d(odd_window),
    .clk(clk_net),
    .ce(ce_net),
    .q(win_x1)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay11 (
    .en(1'b1),
    .rst(1'b0),
    .d(win_x1),
    .clk(clk_net),
    .ce(ce_net),
    .q(win_x0)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(3),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay12 (
    .en(1'b1),
    .rst(1'b0),
    .d(win_x0),
    .clk(clk_net),
    .ce(ce_net),
    .q(win)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay2 (
    .en(1'b1),
    .rst(1'b0),
    .d(odd_cycle),
    .clk(clk_net),
    .ce(ce_net),
    .q(reset_x1)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay3 (
    .en(1'b1),
    .rst(1'b0),
    .d(data_tvalid),
    .clk(clk_net),
    .ce(ce_net),
    .q(valid_x5)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay5 (
    .en(1'b1),
    .rst(1'b0),
    .d(valid_x5),
    .clk(clk_net),
    .ce(ce_net),
    .q(valid_x4)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay6 (
    .en(1'b1),
    .rst(1'b0),
    .d(mult_p_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .q(im_x0)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay7 (
    .en(1'b1),
    .rst(1'b0),
    .d(mult_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(re_x1)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay8 (
    .en(1'b1),
    .rst(1'b0),
    .d(im_x0),
    .clk(clk_net),
    .ce(ce_net),
    .q(im)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay9 (
    .en(1'b1),
    .rst(1'b0),
    .d(re_x1),
    .clk(clk_net),
    .ce(ce_net),
    .q(re_x0)
  );
  mft_overlap_add_2022_0303_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(15),
    .a_width(16),
    .b_arith(`xlSigned),
    .b_bin_pt(29),
    .b_width(36),
    .c_a_type(0),
    .c_a_width(16),
    .c_b_type(0),
    .c_b_width(36),
    .c_baat(16),
    .c_output_width(52),
    .c_type(0),
    .core_name0("mft_overlap_add_2022_0303_mult_gen_v12_0_i1"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(44),
    .p_width(52),
    .quantization(1)
  )
  mult10 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(delay_q_net),
    .b(out),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult10_p_net)
  );
  mft_overlap_add_2022_0303_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(15),
    .a_width(16),
    .b_arith(`xlSigned),
    .b_bin_pt(29),
    .b_width(36),
    .c_a_type(0),
    .c_a_width(16),
    .c_b_type(0),
    .c_b_width(36),
    .c_baat(16),
    .c_output_width(52),
    .c_type(0),
    .core_name0("mft_overlap_add_2022_0303_mult_gen_v12_0_i1"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(44),
    .p_width(52),
    .quantization(1)
  )
  mult12 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(delay_q_net),
    .b(addsub9_s_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(mult12_p_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block mft_overlap_add_2022_0303/Odd_MatchedFilterBank
module mft_overlap_add_2022_0303_odd_matchedfilterbank (
  input [1-1:0] odd_in_1,
  input [16-1:0] odd_in_2,
  input [16-1:0] odd_in_3,
  input [1-1:0] odd_in_4,
  input [16-1:0] odd_in_5,
  input clk_1,
  input ce_1,
  output [52-1:0] mf_im,
  output [52-1:0] mf_re
);
  wire [1-1:0] data_tvalid;
  wire [1-1:0] odd_cycle;
  wire clk_net;
  wire [16-1:0] mult_p_net_x0;
  wire ce_net;
  wire [16-1:0] odd_window;
  wire [52-1:0] mult12_p_net;
  wire [52-1:0] mult10_p_net;
  wire [16-1:0] mult_p_net;
  assign mf_im = mult10_p_net;
  assign mf_re = mult12_p_net;
  assign data_tvalid = odd_in_1;
  assign mult_p_net_x0 = odd_in_2;
  assign mult_p_net = odd_in_3;
  assign odd_cycle = odd_in_4;
  assign odd_window = odd_in_5;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  mft_overlap_add_2022_0303_matchedfilterbank_x0 matchedfilterbank (
    .re(mult_p_net_x0),
    .re1(mult_p_net),
    .reset(odd_cycle),
    .valid(data_tvalid),
    .valid3(odd_window),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .mf_im(mult10_p_net),
    .mf_re(mult12_p_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block mft_overlap_add_2022_0303/Window Generator
module mft_overlap_add_2022_0303_window_generator_x0 (
  input en,
  input clk_1,
  input ce_1,
  output [16-1:0] window
);
  wire [10-1:0] counter_op_net;
  wire ce_net;
  wire axi_fifo_mf_in_m_axis_tvalid_net;
  wire [16-1:0] rom_data_net;
  wire clk_net;
  assign window = rom_data_net;
  assign axi_fifo_mf_in_m_axis_tvalid_net = en;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  mft_overlap_add_2022_0303_xlcounter_limit #(
    .cnt_15_0(0),
    .cnt_31_16(0),
    .cnt_47_32(0),
    .cnt_63_48(0),
    .core_name0("mft_overlap_add_2022_0303_c_counter_binary_v12_0_i0"),
    .count_limited(0),
    .op_arith(`xlUnsigned),
    .op_width(10)
  )
  counter (
    .rst(1'b0),
    .clr(1'b0),
    .en(axi_fifo_mf_in_m_axis_tvalid_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(counter_op_net)
  );
  mft_overlap_add_2022_0303_xlsprom #(
    .c_address_width(10),
    .c_width(16),
    .latency(1),
    .mem_init_file("xpm_bd8ca4_vivado.mem"),
    .mem_size(16384),
    .mem_type("block"),
    .read_reset_val("0")
  )
  rom (
    .en(1'b1),
    .rst(1'b0),
    .addr(counter_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .data(rom_data_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block mft_overlap_add_2022_0303/imag
module mft_overlap_add_2022_0303_imag (
  input [16-1:0] data_tdata_xn_im_0,
  input data_tvalid,
  input [16-1:0] in3,
  input eve,
  input clk_1,
  input ce_1,
  output [16-1:0] out3,
  output [16-1:0] odd_out,
  output [1-1:0] out2
);
  wire [16-1:0] constant2_op_net;
  wire ce_net;
  wire [16-1:0] fast_fourier_transform_9_5_m_axis_data_tdata_xn_im_0_net;
  wire [16-1:0] even_out;
  wire fast_fourier_transform_9_5_m_axis_data_tvalid_net_x0;
  wire [16-1:0] constant_op_net;
  wire fast_fourier_transform_9_5_m_axis_data_tvalid_net;
  wire clk_net;
  wire [16-1:0] fast_fourier_transform_9_5_m_axis_data_tdata_xn_im_0_net_x0;
  wire [16-1:0] odd_out_x0;
  wire [1-1:0] valid;
  assign out3 = even_out;
  assign odd_out = odd_out_x0;
  assign out2 = valid;
  assign fast_fourier_transform_9_5_m_axis_data_tdata_xn_im_0_net = data_tdata_xn_im_0;
  assign fast_fourier_transform_9_5_m_axis_data_tvalid_net = data_tvalid;
  assign fast_fourier_transform_9_5_m_axis_data_tdata_xn_im_0_net_x0 = in3;
  assign fast_fourier_transform_9_5_m_axis_data_tvalid_net_x0 = eve;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_constant_3fd1271f6f constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );
  sysgen_constant_3fd1271f6f constant2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant2_op_net)
  );
  sysgen_logical_972fb9df1c logical (
    .clr(1'b0),
    .d0(fast_fourier_transform_9_5_m_axis_data_tvalid_net),
    .d1(fast_fourier_transform_9_5_m_axis_data_tvalid_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .y(valid)
  );
  sysgen_mux_108b447ca7 mux (
    .clr(1'b0),
    .sel(fast_fourier_transform_9_5_m_axis_data_tvalid_net),
    .d0(constant_op_net),
    .d1(fast_fourier_transform_9_5_m_axis_data_tdata_xn_im_0_net),
    .en(fast_fourier_transform_9_5_m_axis_data_tvalid_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(odd_out_x0)
  );
  sysgen_mux_108b447ca7 mux1 (
    .clr(1'b0),
    .sel(fast_fourier_transform_9_5_m_axis_data_tvalid_net_x0),
    .d0(constant2_op_net),
    .d1(fast_fourier_transform_9_5_m_axis_data_tdata_xn_im_0_net_x0),
    .en(fast_fourier_transform_9_5_m_axis_data_tvalid_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .y(even_out)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block mft_overlap_add_2022_0303/real
module mft_overlap_add_2022_0303_real (
  input [16-1:0] in1,
  input in2,
  input [16-1:0] in3,
  input eve,
  input clk_1,
  input ce_1,
  output [16-1:0] out3,
  output [16-1:0] odd_out,
  output [1-1:0] out2
);
  wire [16-1:0] odd_out_x0;
  wire [16-1:0] constant2_op_net;
  wire [1-1:0] valid;
  wire ce_net;
  wire fast_fourier_transform_9_5_m_axis_data_tvalid_net;
  wire fast_fourier_transform_9_5_m_axis_data_tvalid_net_x0;
  wire [16-1:0] fast_fourier_transform_9_5_m_axis_data_tdata_xn_re_0_net;
  wire [16-1:0] even_out;
  wire [16-1:0] constant_op_net;
  wire clk_net;
  wire [16-1:0] fast_fourier_transform_9_5_m_axis_data_tdata_xn_re_0_net_x0;
  assign out3 = even_out;
  assign odd_out = odd_out_x0;
  assign out2 = valid;
  assign fast_fourier_transform_9_5_m_axis_data_tdata_xn_re_0_net = in1;
  assign fast_fourier_transform_9_5_m_axis_data_tvalid_net = in2;
  assign fast_fourier_transform_9_5_m_axis_data_tdata_xn_re_0_net_x0 = in3;
  assign fast_fourier_transform_9_5_m_axis_data_tvalid_net_x0 = eve;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  sysgen_constant_3fd1271f6f constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );
  sysgen_constant_3fd1271f6f constant2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant2_op_net)
  );
  sysgen_logical_972fb9df1c logical (
    .clr(1'b0),
    .d0(fast_fourier_transform_9_5_m_axis_data_tvalid_net),
    .d1(fast_fourier_transform_9_5_m_axis_data_tvalid_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .y(valid)
  );
  sysgen_mux_108b447ca7 mux (
    .clr(1'b0),
    .sel(fast_fourier_transform_9_5_m_axis_data_tvalid_net),
    .d0(constant_op_net),
    .d1(fast_fourier_transform_9_5_m_axis_data_tdata_xn_re_0_net),
    .en(fast_fourier_transform_9_5_m_axis_data_tvalid_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(odd_out_x0)
  );
  sysgen_mux_108b447ca7 mux1 (
    .clr(1'b0),
    .sel(fast_fourier_transform_9_5_m_axis_data_tvalid_net_x0),
    .d0(constant2_op_net),
    .d1(fast_fourier_transform_9_5_m_axis_data_tdata_xn_re_0_net_x0),
    .en(fast_fourier_transform_9_5_m_axis_data_tvalid_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .y(even_out)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block mft_overlap_add_2022_0303_struct
module mft_overlap_add_2022_0303_struct (
  input [1-1:0] aresetin,
  input [32-1:0] i_mf_tdata,
  input [1-1:0] i_mf_tlast,
  input [1-1:0] i_mf_tvalid,
  input [1-1:0] o_mf_re_tready,
  input [1-1:0] o_mf_im_tready,
  input clk_1,
  input ce_1,
  output [1-1:0] i_mf_tready,
  output [32-1:0] o_mf_im_tdata,
  output [1-1:0] o_mf_im_tlast,
  output [1-1:0] o_mf_im_tvalid,
  output [32-1:0] o_mf_re_tdata,
  output [1-1:0] o_mf_re_tlast,
  output [1-1:0] o_mf_re_tvalid
);
  wire [1-1:0] aresetin_net;
  wire [32-1:0] i_mf_tdata_net;
  wire [16-1:0] mult_p_net_x3;
  wire [1-1:0] even_cycle;
  wire [1-1:0] odd_cycle;
  wire [32-1:0] axi_fifo_mf_re_out_m_axis_tdata_net;
  wire [16-1:0] data_tdata_xn_re_0_x0;
  wire [16-1:0] mult_p_net_x4;
  wire fast_fourier_transform_9_5_m_axis_data_tvalid_net_x0;
  wire [1-1:0] delay6_q_net;
  wire [1-1:0] o_mf_re_tready_net;
  wire data_tlast_x0;
  wire fast_fourier_transform_9_5_m_axis_data_tlast_net_x0;
  wire [16-1:0] convert3_dout_net;
  wire [1-1:0] axi_fifo_mf_re_out_m_axis_tlast_net;
  wire [16-1:0] delay14_q_net;
  wire [16-1:0] mult_p_net_x2;
  wire [1-1:0] axi_fifo_mf_im_out_m_axis_tvalid_net;
  wire [1-1:0] delay15_q_net;
  wire [1-1:0] o_mf_im_tready_net;
  wire [16-1:0] even_window;
  wire data_tvalid_x2;
  wire [16-1:0] mult_p_net_x1;
  wire [16-1:0] odd_window;
  wire [52-1:0] mult12_p_net_x0;
  wire clk_net;
  wire [16-1:0] data_tdata_xn_re_0;
  wire [1-1:0] data_tvalid;
  wire data_tvalid_x1;
  wire [1-1:0] delay7_q_net;
  wire config_tready;
  wire [1-1:0] axi_fifo_mf_im_out_m_axis_tlast_net;
  wire [16-1:0] data_tdata_xn_im_0_x0;
  wire [1-1:0] axi_fifo_mf_in_s_axis_tready_net;
  wire [1-1:0] i_mf_tlast_net;
  wire data_tready_x0;
  wire [16-1:0] constant9_op_net;
  wire config_tready_x0;
  wire [1-1:0] delay10_q_net;
  wire [1-1:0] i_mf_tvalid_net;
  wire [16-1:0] fast_fourier_transform_9_5_m_axis_data_tdata_xn_im_0_net_x0;
  wire [32-1:0] axi_fifo_mf_im_out_m_axis_tdata_net;
  wire [16-1:0] fast_fourier_transform_9_5_m_axis_data_tdata_xn_re_0_net_x0;
  wire [1-1:0] delay5_q_net;
  wire [1-1:0] delay8_q_net;
  wire ce_net;
  wire [16-1:0] convert2_dout_net;
  wire [1-1:0] axi_fifo_mf_re_out_m_axis_tvalid_net;
  wire [1-1:0] constant8_op_net;
  wire [16-1:0] convert4_dout_net;
  wire [52-1:0] mult10_p_net_x0;
  wire [16-1:0] mult_p_net_x0;
  wire [16-1:0] data_tdata_xn_im_0;
  wire axi_fifo_mf_im_out_s_axis_tready_net;
  wire [1-1:0] delay17_q_net;
  wire delay43_q_net;
  wire [16-1:0] fast_fourier_transform_9_5_m_axis_data_tdata_xn_im_0_net;
  wire [16-1:0] fast_fourier_transform_9_5_m_axis_data_tdata_xn_re_0_net;
  wire [16-1:0] rom_data_net;
  wire [32-1:0] register_q_net;
  wire [16-1:0] odd_out_x0;
  wire [1-1:0] delay11_q_net;
  wire [16-1:0] mult_p_net;
  wire [32-1:0] axi_fifo_mf_in_m_axis_tdata_net;
  wire fast_fourier_transform_9_5_m_axis_data_tlast_net;
  wire [16-1:0] even_out;
  wire data_tlast;
  wire axi_fifo_mf_in_m_axis_tvalid_net;
  wire [16-1:0] odd_out;
  wire [1-1:0] valid;
  wire [52-1:0] mult12_p_net;
  wire [1-1:0] valid_x0;
  wire [1-1:0] data_tvalid_x0;
  wire data_tready;
  wire [1-1:0] delay2_q_net;
  wire [16-1:0] convert1_dout_net;
  wire [16-1:0] even_out_x0;
  wire axi_fifo_mf_in_m_axis_tlast_net;
  wire delay42_q_net;
  wire [1-1:0] delay4_q_net;
  wire fast_fourier_transform_9_5_m_axis_data_tvalid_net;
  wire [1-1:0] delay3_q_net;
  wire [52-1:0] mult10_p_net;
  wire [1-1:0] delay1_q_net;
  wire [16-1:0] convert_dout_net;
  wire [32-1:0] add;
  wire [32-1:0] reinterpret_output_port_net;
  wire delay41_q_net;
  wire delay40_q_net;
  wire axi_fifo_mf_re_out_s_axis_tready_net;
  wire [32-1:0] register1_q_net;
  wire [32-1:0] add_x0;
  wire [1-1:0] delay13_q_net;
  wire [1-1:0] delay27_q_net;
  wire [1-1:0] delay_q_net;
  wire [1-1:0] delay9_q_net;
  wire [1-1:0] delay12_q_net;
  wire [1-1:0] delay16_q_net;
  wire [1-1:0] delay19_q_net;
  wire [1-1:0] delay26_q_net;
  wire [1-1:0] delay25_q_net;
  wire [1-1:0] delay22_q_net;
  wire [1-1:0] delay24_q_net;
  wire [1-1:0] delay30_q_net;
  wire [1-1:0] delay21_q_net;
  wire [1-1:0] delay18_q_net;
  wire [1-1:0] delay28_q_net;
  wire [1-1:0] delay20_q_net;
  wire [1-1:0] delay33_q_net;
  wire [1-1:0] delay35_q_net;
  wire [1-1:0] delay29_q_net;
  wire [1-1:0] delay32_q_net;
  wire [1-1:0] delay36_q_net;
  wire [1-1:0] delay39_q_net;
  wire [1-1:0] delay37_q_net;
  wire [1-1:0] delay38_q_net;
  assign aresetin_net = aresetin;
  assign i_mf_tdata_net = i_mf_tdata;
  assign i_mf_tlast_net = i_mf_tlast;
  assign i_mf_tready = axi_fifo_mf_in_s_axis_tready_net;
  assign i_mf_tvalid_net = i_mf_tvalid;
  assign o_mf_im_tdata = axi_fifo_mf_im_out_m_axis_tdata_net;
  assign o_mf_im_tlast = axi_fifo_mf_im_out_m_axis_tlast_net;
  assign o_mf_im_tvalid = axi_fifo_mf_im_out_m_axis_tvalid_net;
  assign o_mf_re_tdata = axi_fifo_mf_re_out_m_axis_tdata_net;
  assign o_mf_re_tlast = axi_fifo_mf_re_out_m_axis_tlast_net;
  assign o_mf_re_tvalid = axi_fifo_mf_re_out_m_axis_tvalid_net;
  assign o_mf_re_tready_net = o_mf_re_tready;
  assign o_mf_im_tready_net = o_mf_im_tready;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  mft_overlap_add_2022_0303_even_fft even_fft (
    .config_tvalid(constant8_op_net),
    .data_tdata_xn_im_0(constant9_op_net),
    .data_tdata_xn_re_0(mult_p_net_x4),
    .data_tvalid(delay10_q_net),
    .data_tlast(delay15_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .config_tready(config_tready_x0),
    .data_tready(data_tready_x0),
    .data_tdata_xn_im_0_x0(data_tdata_xn_im_0_x0),
    .data_tdata_xn_re_0_x0(data_tdata_xn_re_0_x0),
    .data_tvalid_x0(data_tvalid_x2),
    .data_tlast_x0(data_tlast_x0)
  );
  mft_overlap_add_2022_0303_even_ifft even_ifft (
    .config_tvalid(delay7_q_net),
    .data_tvalid(delay5_q_net),
    .data_tlast(delay6_q_net),
    .data_tready_x0(delay8_q_net),
    .even_im_out(convert2_dout_net),
    .even_re_out(convert3_dout_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .data_tdata_xn_im_0(fast_fourier_transform_9_5_m_axis_data_tdata_xn_im_0_net_x0),
    .data_tdata_xn_re_0(fast_fourier_transform_9_5_m_axis_data_tdata_xn_re_0_net_x0),
    .data_tvalid_x0(fast_fourier_transform_9_5_m_axis_data_tvalid_net_x0),
    .data_tlast_x0(fast_fourier_transform_9_5_m_axis_data_tlast_net_x0)
  );
  mft_overlap_add_2022_0303_even_frame even_frame (
    .data(convert4_dout_net),
    .window(delay14_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .mask_data_out(mult_p_net_x4)
  );
  mft_overlap_add_2022_0303_even_matchedfilterbank even_matchedfilterbank (
    .even_in_1(data_tvalid),
    .even_in_2(mult_p_net_x3),
    .even_in_3(mult_p_net_x2),
    .even_in_4(even_cycle),
    .even_in_5(even_window),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .mf_im(mult10_p_net_x0),
    .mf_re(mult12_p_net_x0)
  );
  mft_overlap_add_2022_0303_fft_analytic_window fft_analytic_window (
    .odd_im(data_tdata_xn_im_0),
    .odd_re(data_tdata_xn_re_0),
    .odd_enable(data_tvalid_x1),
    .even_im(data_tdata_xn_im_0_x0),
    .even_re(data_tdata_xn_re_0_x0),
    .enable1(data_tvalid_x2),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .odd_im_out(mult_p_net_x1),
    .odd_re_out(mult_p_net_x0),
    .even_im_out(mult_p_net_x3),
    .even_re_out(mult_p_net_x2),
    .cycle(odd_cycle),
    .cycle1(odd_window),
    .cycle2(even_cycle),
    .cycle3(even_window)
  );
  mft_overlap_add_2022_0303_odd_ifft odd_ifft (
    .config_tvalid(delay4_q_net),
    .data_tvalid(delay1_q_net),
    .data_tlast(delay2_q_net),
    .data_tready_x0(delay3_q_net),
    .odd_im_out(convert_dout_net),
    .odd_re_out(convert1_dout_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .data_tdata_xn_im_0(fast_fourier_transform_9_5_m_axis_data_tdata_xn_im_0_net),
    .data_tdata_xn_re_0(fast_fourier_transform_9_5_m_axis_data_tdata_xn_re_0_net),
    .data_tvalid_x0(fast_fourier_transform_9_5_m_axis_data_tvalid_net),
    .data_tlast_x0(fast_fourier_transform_9_5_m_axis_data_tlast_net)
  );
  mft_overlap_add_2022_0303_odd_fft_x0 odd_fft (
    .config_tvalid(constant8_op_net),
    .data_tdata_xn_im_0(constant9_op_net),
    .data_tdata_xn_re_0(mult_p_net),
    .data_tvalid(delay11_q_net),
    .data_tlast(delay17_q_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .config_tready(config_tready),
    .data_tready(data_tready),
    .data_tdata_xn_im_0_x0(data_tdata_xn_im_0),
    .data_tdata_xn_re_0_x0(data_tdata_xn_re_0),
    .data_tvalid_x0(data_tvalid_x1),
    .data_tlast_x0(data_tlast)
  );
  mft_overlap_add_2022_0303_odd_frames odd_frames (
    .data(convert4_dout_net),
    .window(rom_data_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .mask_data_out(mult_p_net)
  );
  mft_overlap_add_2022_0303_odd_matchedfilterbank odd_matchedfilterbank (
    .odd_in_1(data_tvalid_x0),
    .odd_in_2(mult_p_net_x1),
    .odd_in_3(mult_p_net_x0),
    .odd_in_4(odd_cycle),
    .odd_in_5(odd_window),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .mf_im(mult10_p_net),
    .mf_re(mult12_p_net)
  );
  mft_overlap_add_2022_0303_window_generator_x0 window_generator (
    .en(axi_fifo_mf_in_m_axis_tvalid_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .window(rom_data_net)
  );
  mft_overlap_add_2022_0303_imag imag (
    .data_tdata_xn_im_0(fast_fourier_transform_9_5_m_axis_data_tdata_xn_im_0_net),
    .data_tvalid(fast_fourier_transform_9_5_m_axis_data_tvalid_net),
    .in3(fast_fourier_transform_9_5_m_axis_data_tdata_xn_im_0_net_x0),
    .eve(fast_fourier_transform_9_5_m_axis_data_tvalid_net_x0),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .out3(even_out_x0),
    .odd_out(odd_out_x0),
    .out2(valid_x0)
  );
  mft_overlap_add_2022_0303_real real_x0 (
    .in1(fast_fourier_transform_9_5_m_axis_data_tdata_xn_re_0_net),
    .in2(fast_fourier_transform_9_5_m_axis_data_tvalid_net),
    .in3(fast_fourier_transform_9_5_m_axis_data_tdata_xn_re_0_net_x0),
    .eve(fast_fourier_transform_9_5_m_axis_data_tvalid_net_x0),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .out3(even_out),
    .odd_out(odd_out),
    .out2(valid)
  );
  mft_overlap_add_2022_0303_xlaxis #(
    .depth(1024),
    .depth_bits(11),
    .has_aresetn(0),
    .mem_type("block"),
    .tdata_width(32),
    .tdata_width_net(32),
    .tdest_width(4),
    .tid_width(8),
    .tuser_width(4)
  )
  axi_fifo_mf_im_out (
    .aresetn(1'b1),
    .m_axis_tready(o_mf_im_tready_net),
    .s_axis_tvalid(delay42_q_net),
    .s_axis_tdata(register_q_net),
    .s_axis_tlast(delay43_q_net),
    .s_aclk(clk_net),
    .ce(ce_net),
    .m_axis_tvalid(axi_fifo_mf_im_out_m_axis_tvalid_net),
    .m_axis_tdata(axi_fifo_mf_im_out_m_axis_tdata_net),
    .m_axis_tlast(axi_fifo_mf_im_out_m_axis_tlast_net),
    .s_axis_tready(axi_fifo_mf_im_out_s_axis_tready_net)
  );
  mft_overlap_add_2022_0303_xlaxis #(
    .depth(1024),
    .depth_bits(11),
    .has_aresetn(1),
    .mem_type("block"),
    .tdata_width(32),
    .tdata_width_net(32),
    .tdest_width(4),
    .tid_width(8),
    .tuser_width(4)
  )
  axi_fifo_mf_in (
    .aresetn(aresetin_net),
    .m_axis_tready(axi_fifo_mf_in_m_axis_tvalid_net),
    .s_axis_tvalid(i_mf_tvalid_net),
    .s_axis_tdata(i_mf_tdata_net),
    .s_axis_tlast(i_mf_tlast_net),
    .s_aclk(clk_net),
    .ce(ce_net),
    .m_axis_tvalid(axi_fifo_mf_in_m_axis_tvalid_net),
    .m_axis_tdata(axi_fifo_mf_in_m_axis_tdata_net),
    .m_axis_tlast(axi_fifo_mf_in_m_axis_tlast_net),
    .s_axis_tready(axi_fifo_mf_in_s_axis_tready_net)
  );
  mft_overlap_add_2022_0303_xlaxis #(
    .depth(1024),
    .depth_bits(11),
    .has_aresetn(0),
    .mem_type("block"),
    .tdata_width(32),
    .tdata_width_net(32),
    .tdest_width(4),
    .tid_width(8),
    .tuser_width(4)
  )
  axi_fifo_mf_re_out (
    .aresetn(1'b1),
    .m_axis_tready(o_mf_re_tready_net),
    .s_axis_tvalid(delay40_q_net),
    .s_axis_tdata(register1_q_net),
    .s_axis_tlast(delay41_q_net),
    .s_aclk(clk_net),
    .ce(ce_net),
    .m_axis_tvalid(axi_fifo_mf_re_out_m_axis_tvalid_net),
    .m_axis_tdata(axi_fifo_mf_re_out_m_axis_tdata_net),
    .m_axis_tlast(axi_fifo_mf_re_out_m_axis_tlast_net),
    .s_axis_tready(axi_fifo_mf_re_out_s_axis_tready_net)
  );
  mft_overlap_add_2022_0303_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(15),
    .a_width(16),
    .b_arith(`xlSigned),
    .b_bin_pt(15),
    .b_width(16),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(17),
    .core_name0("mft_overlap_add_2022_0303_c_addsub_v12_0_i0"),
    .en_arith(`xlUnsigned),
    .en_bin_pt(0),
    .en_width(1),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(17),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(24),
    .s_width(32)
  )
  addsub (
    .clr(1'b0),
    .a(even_out_x0),
    .b(odd_out_x0),
    .en(valid_x0),
    .clk(clk_net),
    .ce(ce_net),
    .s(add_x0)
  );
  mft_overlap_add_2022_0303_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(15),
    .a_width(16),
    .b_arith(`xlSigned),
    .b_bin_pt(15),
    .b_width(16),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(17),
    .core_name0("mft_overlap_add_2022_0303_c_addsub_v12_0_i0"),
    .en_arith(`xlUnsigned),
    .en_bin_pt(0),
    .en_width(1),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(17),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(24),
    .s_width(32)
  )
  addsub1 (
    .clr(1'b0),
    .a(even_out),
    .b(odd_out),
    .en(valid),
    .clk(clk_net),
    .ce(ce_net),
    .s(add)
  );
  sysgen_constant_19de62f6a5 constant8 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant8_op_net)
  );
  sysgen_constant_3fd1271f6f constant9 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant9_op_net)
  );
  mft_overlap_add_2022_0303_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(44),
    .din_width(52),
    .dout_arith(2),
    .dout_bin_pt(15),
    .dout_width(16),
    .latency(1),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  convert (
    .clr(1'b0),
    .en(1'b1),
    .din(mult10_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert_dout_net)
  );
  mft_overlap_add_2022_0303_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(44),
    .din_width(52),
    .dout_arith(2),
    .dout_bin_pt(15),
    .dout_width(16),
    .latency(1),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  convert1 (
    .clr(1'b0),
    .en(1'b1),
    .din(mult12_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert1_dout_net)
  );
  mft_overlap_add_2022_0303_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(44),
    .din_width(52),
    .dout_arith(2),
    .dout_bin_pt(15),
    .dout_width(16),
    .latency(1),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  convert2 (
    .clr(1'b0),
    .en(1'b1),
    .din(mult10_p_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert2_dout_net)
  );
  mft_overlap_add_2022_0303_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(44),
    .din_width(52),
    .dout_arith(2),
    .dout_bin_pt(15),
    .dout_width(16),
    .latency(1),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  convert3 (
    .clr(1'b0),
    .en(1'b1),
    .din(mult12_p_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert3_dout_net)
  );
  mft_overlap_add_2022_0303_xlconvert_pipeline #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(15),
    .din_width(32),
    .dout_arith(2),
    .dout_bin_pt(15),
    .dout_width(16),
    .latency(2),
    .overflow(`xlWrap),
    .quantization(`xlTruncate)
  )
  convert4 (
    .clr(1'b0),
    .en(1'b1),
    .din(reinterpret_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .dout(convert4_dout_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(2),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay (
    .en(1'b1),
    .rst(1'b0),
    .d(axi_fifo_mf_in_m_axis_tlast_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay1 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay27_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay1_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(4),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay10 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay12_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay10_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(4),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay11 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay9_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay11_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(512),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay12 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay9_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay12_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(512),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay13 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay13_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(512),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay14 (
    .en(1'b1),
    .rst(1'b0),
    .d(rom_data_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay14_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(4),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay15 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay13_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay15_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay16 (
    .en(1'b1),
    .rst(1'b0),
    .d(valid),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay16_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(4),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay17 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay17_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay18 (
    .en(1'b1),
    .rst(1'b0),
    .d(valid_x0),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay18_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay19 (
    .en(1'b1),
    .rst(1'b0),
    .d(fast_fourier_transform_9_5_m_axis_data_tlast_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay19_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay2 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay28_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay2_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay20 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay19_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay20_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay21 (
    .en(1'b1),
    .rst(1'b0),
    .d(fast_fourier_transform_9_5_m_axis_data_tlast_net_x0),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay21_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay22 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay21_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay22_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(6),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay24 (
    .en(1'b1),
    .rst(1'b0),
    .d(config_tready_x0),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay24_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(15),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay25 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay30_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay25_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(15),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay26 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay24_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay26_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(15),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay27 (
    .en(1'b1),
    .rst(1'b0),
    .d(data_tvalid_x0),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay27_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(15),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay28 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay32_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay28_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(15),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay29 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay33_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay29_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay3 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay29_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay3_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(6),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay30 (
    .en(1'b1),
    .rst(1'b0),
    .d(config_tready),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay30_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(6),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay31 (
    .en(1'b1),
    .rst(1'b0),
    .d(data_tvalid_x1),
    .clk(clk_net),
    .ce(ce_net),
    .q(data_tvalid_x0)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(6),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay32 (
    .en(1'b1),
    .rst(1'b0),
    .d(data_tlast),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay32_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(6),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay33 (
    .en(1'b1),
    .rst(1'b0),
    .d(data_tready),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay33_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(6),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay34 (
    .en(1'b1),
    .rst(1'b0),
    .d(data_tvalid_x2),
    .clk(clk_net),
    .ce(ce_net),
    .q(data_tvalid)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(6),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay35 (
    .en(1'b1),
    .rst(1'b0),
    .d(data_tlast_x0),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay35_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(6),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay36 (
    .en(1'b1),
    .rst(1'b0),
    .d(data_tready_x0),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay36_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(15),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay37 (
    .en(1'b1),
    .rst(1'b0),
    .d(data_tvalid),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay37_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(15),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay38 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay35_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay38_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(15),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay39 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay36_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay39_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay4 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay25_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay4_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay40 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay16_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay40_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay41 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay20_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay41_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay42 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay18_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay42_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay43 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay22_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay43_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay5 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay37_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay5_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay6 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay38_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay6_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay7 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay26_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay7_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay8 (
    .en(1'b1),
    .rst(1'b0),
    .d(delay39_q_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay8_q_net)
  );
  mft_overlap_add_2022_0303_xldelay #(
    .latency(2),
    .reg_retiming(0),
    .reset(0),
    .width(1)
  )
  delay9 (
    .en(1'b1),
    .rst(1'b0),
    .d(axi_fifo_mf_in_m_axis_tvalid_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(delay9_q_net)
  );
  sysgen_reinterpret_cf5d4ce718 reinterpret (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(axi_fifo_mf_in_m_axis_tdata_net),
    .output_port(reinterpret_output_port_net)
  );
  mft_overlap_add_2022_0303_xlregister #(
    .d_width(32),
    .init_value(32'b00000000000000000000000000000000)
  )
  register1 (
    .rst(1'b0),
    .d(add),
    .en(axi_fifo_mf_re_out_s_axis_tready_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register1_q_net)
  );
  mft_overlap_add_2022_0303_xlregister #(
    .d_width(32),
    .init_value(32'b00000000000000000000000000000000)
  )
  register (
    .rst(1'b0),
    .d(add_x0),
    .en(axi_fifo_mf_im_out_s_axis_tready_net),
    .clk(clk_net),
    .ce(ce_net),
    .q(register_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block 
module mft_overlap_add_2022_0303_default_clock_driver (
  input mft_overlap_add_2022_0303_sysclk,
  input mft_overlap_add_2022_0303_sysce,
  input mft_overlap_add_2022_0303_sysclr,
  output mft_overlap_add_2022_0303_clk1,
  output mft_overlap_add_2022_0303_ce1
);
  xlclockdriver #(
    .period(1),
    .log_2_period(1)
  )
  clockdriver (
    .sysclk(mft_overlap_add_2022_0303_sysclk),
    .sysce(mft_overlap_add_2022_0303_sysce),
    .sysclr(mft_overlap_add_2022_0303_sysclr),
    .clk(mft_overlap_add_2022_0303_clk1),
    .ce(mft_overlap_add_2022_0303_ce1)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block 
(* core_generation_info = "mft_overlap_add_2022_0303,sysgen_core_2022_2,{,compilation=IP Catalog,block_icon_display=Default,family=zynq,part=xc7z020,speed=-1,package=clg484,synthesis_language=verilog,hdl_library=xil_defaultlib,synthesis_strategy=Flow_AreaOptimized_high,implementation_strategy=Performance_ExplorePostRoutePhysOpt,testbench=0,interface_doc=1,ce_clr=0,clock_period=4,system_simulink_period=4e-09,waveform_viewer=0,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=1.111e+09,addsub=38,axi_fifo=3,cmpy_v6_0=20,constant=36,convert=5,counter=5,delay=227,logical=2,mult=10,mux=4,register=2,reinterpret=1,relational=2,sprom=43,xfft_v9_1=4,}" *)
module mft_overlap_add_2022_0303 (
  input [1-1:0] aresetin,
  input [32-1:0] i_mf_tdata,
  input [1-1:0] i_mf_tlast,
  input [1-1:0] i_mf_tvalid,
  input [1-1:0] o_mf_re_tready,
  input [1-1:0] o_mf_im_tready,
  input clk,
  output [1-1:0] i_mf_tready,
  output [32-1:0] o_mf_im_tdata,
  output [1-1:0] o_mf_im_tlast,
  output [1-1:0] o_mf_im_tvalid,
  output [32-1:0] o_mf_re_tdata,
  output [1-1:0] o_mf_re_tlast,
  output [1-1:0] o_mf_re_tvalid
);
  wire ce_1_net;
  wire clk_1_net;
  mft_overlap_add_2022_0303_default_clock_driver mft_overlap_add_2022_0303_default_clock_driver (
    .mft_overlap_add_2022_0303_sysclk(clk),
    .mft_overlap_add_2022_0303_sysce(1'b1),
    .mft_overlap_add_2022_0303_sysclr(1'b0),
    .mft_overlap_add_2022_0303_clk1(clk_1_net),
    .mft_overlap_add_2022_0303_ce1(ce_1_net)
  );
  mft_overlap_add_2022_0303_struct mft_overlap_add_2022_0303_struct (
    .aresetin(aresetin),
    .i_mf_tdata(i_mf_tdata),
    .i_mf_tlast(i_mf_tlast),
    .i_mf_tvalid(i_mf_tvalid),
    .o_mf_re_tready(o_mf_re_tready),
    .o_mf_im_tready(o_mf_im_tready),
    .clk_1(clk_1_net),
    .ce_1(ce_1_net),
    .i_mf_tready(i_mf_tready),
    .o_mf_im_tdata(o_mf_im_tdata),
    .o_mf_im_tlast(o_mf_im_tlast),
    .o_mf_im_tvalid(o_mf_im_tvalid),
    .o_mf_re_tdata(o_mf_re_tdata),
    .o_mf_re_tlast(o_mf_re_tlast),
    .o_mf_re_tvalid(o_mf_re_tvalid)
  );
endmodule
