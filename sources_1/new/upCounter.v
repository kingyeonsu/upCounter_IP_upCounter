`timescale 1ns / 1ps

module upCounter(
    input i_clk,
    input i_reset,
    output [3:0] o_fndDigit,
    output [7:0] o_fndData
    );

    wire w_clk;
    wire [13:0] w_value;

    ClockDivider U0(
        .i_clk(i_clk),
        .i_reset(i_reset),
        .o_clk(w_clk)
    );

    Counter U1(
        .i_clk(w_clk),
        .i_reset(i_reset),
        .o_counter(w_value)
    );

    upCounter_design_wrapper U2(
        .i_clk(i_clk),
        .i_reset(i_reset),
        .i_value(w_value),
        .o_fndData(o_fndData),
        .o_fndDigit(o_fndDigit)
    );

endmodule
