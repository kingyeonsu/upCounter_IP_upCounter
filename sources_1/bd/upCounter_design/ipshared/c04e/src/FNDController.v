`timescale 1ns / 1ps

module FNDController(
    input i_clk,
    input i_reset,
    input [13:0] i_value,

    output [3:0] o_fndDigit,
    output [7:0] o_fndData    
    );

    wire w_clk_1kHz;
    wire [3:0] w_1, w_10, w_100, w_1000, w_data;
    wire [1:0] w_counter;

    clockDivider U0(
        .i_clk(i_clk),
        .i_reset(i_reset),
        .o_clk(w_clk_1kHz)
    );

    DigitDivider U1(
        .i_value(i_value),
        .o_1(w_1),
        .o_10(w_10),
        .o_100(w_100),
        .o_1000(w_1000)
    );

    counterFND U2(
        .i_clk(w_clk_1kHz),
        .i_reset(i_reset),
        .o_counter(w_counter)
    );

    Mux_4x1 U3(
        .i_1(w_1),
        .i_10(w_10),
        .i_100(w_100),
        .i_1000(w_1000),
        .i_counter(w_counter),
        .o_data(w_data)
    );

    DecoderFndDigit U4(
        .i_counter(w_counter),
        .o_digitPosition(o_fndDigit)
    );

    BCDtoFNDdecoder U5(
        .i_data(w_data),
        .o_fndData(o_fndData)
    );

endmodule
