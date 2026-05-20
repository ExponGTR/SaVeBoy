`timescale 1ns / 1ps
module idu(
    input logic [15:0] data_in, // pc, sp or wz
    input logic inc_dec, // 1 = inc, 0 = dec
    output logic [15:0] data_out
);
    always_comb begin
        unique case (inc_dec)
            1'b1: data_out = data_in + 16'd1;
            1'b0: data_out = data_in - 16'd1;
        endcase
    end
endmodule
