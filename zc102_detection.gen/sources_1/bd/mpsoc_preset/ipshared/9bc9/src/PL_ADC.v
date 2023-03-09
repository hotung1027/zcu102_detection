`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 01/25/2022 01:59:13 PM
// Design Name:
// Module Name: PL_ADC
// Project Name:
// Target Devices:
// Tool Versions:
// Description:
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////


module PL_ADC(
    input  wire         cmos_clk,
    output reg  [11:0]  m_data,
    input  wire         adc_work,
    output reg          adc_done,
    output reg          adc_last,
    input  wire [31:0]  count
  );

  reg         r_Work    = 0;
  reg         r_Done    = 0;
  reg [19:0]  r_Count   = 0;

  reg [11:0]  r_output  = 0;
  reg         reset     = 0;


  initial
    begin
      r_Work   = 0;
      r_Count  = 0;
      r_output = 'h0;
    end

  always @(posedge cmos_clk)
    begin

      if (r_Done)
        begin
          r_Done = 0;
        end

      /* Pull up the Work signal */
      if (!r_Done)
        begin
          r_Done = 0;
          r_Work = 1;
        end



      if (r_Work)
        begin
          r_output <= r_Count;
          r_Count = r_Count + 1;
          adc_last = (r_Count == count - 1);
          if (r_Count >= count)
            begin
              r_Done = 1;
              r_Work = 0;
              r_Count <= 0;
            end
        end
    end

  always @(*)
    begin
      adc_done  <= r_Done;
      m_data    <= r_output;
    end



endmodule
