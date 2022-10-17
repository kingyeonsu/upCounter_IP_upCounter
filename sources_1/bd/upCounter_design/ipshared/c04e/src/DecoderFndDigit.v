`timescale 1ns / 1ps

module DecoderFndDigit(
    input [1:0] i_counter,

    output [3:0] o_digitPosition
    );

    reg [3:0] r_digitPosition;
    assign o_digitPosition = r_digitPosition;

    always @(*) begin   
        case (i_counter)
            2'b00 : r_digitPosition = 4'b1110;
            2'b01 : r_digitPosition = 4'b1101;
            2'b10 : r_digitPosition = 4'b1011;
            2'b11 : r_digitPosition = 4'b0111;
            default : r_digitPosition = 4'b1111;
        endcase
    end

endmodule
