`timescale 1ns / 1ps
import gb_pkg::*;
module alu(
    input logic [7:0] a,
    input logic [7:0] b,
    input logic c_in,
    input alu_op_e op,
    output logic [7:0] res,
    output logic flag_z,
    output logic flag_n,
    output logic flag_h,
    output logic flag_c
);

    logic [8:0] add_sub_res;
    logic [4:0] half_add_sub_res;
    always_comb begin
        unique case (op)
            ADD: begin
                add_sub_res = {1'b0, a} + {1'b0, b};
                half_add_sub_res = {1'b0, a[3:0]} + {1'b0, b[3:0]};
                res = add_sub_res[7:0];
                flag_z = (res == 8'h00);
                flag_n = 1'b0;
                flag_h = half_add_sub_res[4];
                flag_c = add_sub_res[8];
            end
            ADC: begin
                add_sub_res = {1'b0, a} + {1'b0, b} + {7'b0, c_in};
                half_add_sub_res = {1'b0, a[3:0]} + {1'b0, b[3:0]} + {3'b0, c_in};
                res = add_sub_res[7:0];
                flag_z = (res == 8'h00);
                flag_n = 1'b0;
                flag_h = half_add_sub_res[4];
                flag_c = add_sub_res[8];
            end
            SUB: begin
                add_sub_res = {1'b0, a} - {1'b0, b};
                half_add_sub_res = {1'b0, a[3:0]} - {1'b0, b[3:0]};
                res = add_sub_res[7:0];
                flag_z = (res == 8'h00);
                flag_n = 1'b1;
                flag_h = half_add_sub_res[4];
                flag_c = add_sub_res[8];
            end
            SBC: begin
                add_sub_res = {1'b0, a} - {1'b0, b} - {7'b0, c_in};
                half_add_sub_res = {1'b0, a[3:0]} - {1'b0, b[3:0]} - {3'b0, c_in};
                res = add_sub_res[7:0];
                flag_z = (res == 8'h00);
                flag_n = 1'b1;
                flag_h = half_add_sub_res[4];
                flag_c = add_sub_res[8];
            end
            AND: begin
                res = a & b;
                flag_z = (res == 0);
                flag_n = 0;
                flag_h = 1; // this is apparently due to the legacy of the z80
                flag_c = 0;
            end
            XOR: begin
                res = a ^ b;
                flag_z = (res == 0);
                flag_n = 0;
                flag_h = 0;
                flag_c = 0;
            end
            OR: begin 
                res = a | b;
                flag_z = (res == 0);
                flag_n = 0;
                flag_h = 0;
                flag_c = 0;
            end
            CP: begin
                // this instr only affects the flag values. it's the same as SUB
                add_sub_res = {1'b0, a} - {1'b0, b};
                half_add_sub_res = {1'b0, a[3:0]} - {1'b0, b[3:0]};
                flag_z = (add_sub_res[7:0] == 8'h00);
                flag_n = 1'b1;
                flag_h = half_add_sub_res[4];
                flag_c = add_sub_res[8];
            end
            INC: begin
                add_sub_res = {1'b0, a} + 9'd1;
                half_add_sub_res = {1'b0, a[3:0]} + 5'd1;
                res = add_sub_res[7:0];
                flag_z = (res == 8'h00);
                flag_n = 1'b0;
                flag_h = half_add_sub_res[4];
                // apparently, the carry flag is unaffected in inc and dec
            end
            DEC: begin
                add_sub_res = {1'b0, a} - 9'd1;
                half_add_sub_res = {1'b0, a[3:0]} - 5'd1;
                res = add_sub_res[7:0];
                flag_z = (res == 8'h00);
                flag_n = 1'b1;
                flag_h = half_add_sub_res[4];
                // apparently, the carry flag is unaffected in inc and dec
            end
            DAA: begin
                ; // todo
            end
            default: ;
        endcase
    end
endmodule
