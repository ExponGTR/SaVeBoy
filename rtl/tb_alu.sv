`timescale 1ns / 1ps
import gb_pkg::*;

module tb_alu();
    logic [7:0] a;
    logic [7:0] b;
    logic [7:0] f;
    logic c_in;
    alu_op_e op;
    logic [7:0] res;
    logic flag_z;
    logic flag_n;
    logic flag_h;
    logic flag_c;
    
    alu uut (
        .a(a),
        .b(b),
        .c_in(c_in),
        .f(f),
        .op(op),
        .res(res),
        .flag_z(flag_z),
        .flag_n(flag_n),
        .flag_h(flag_h),
        .flag_c(flag_c)
    );

    task check_res(
        input [7:0] expected_res,
        input expected_z,
        input expected_n,
        input expected_h,
        input expected_c,
        input string test_name
    );
        begin
            #100
            if (res !== expected_res || flag_z !== expected_z || flag_n !== expected_n || flag_h !== expected_h || flag_c !== expected_c) begin
                $display("\nFail %s", test_name);
            end else begin
                $display("Pass %s", test_name);
            end
            $display("Inputs   -> a: %h, b: %h, cin: %b", a, b, c_in);
            $display("Got      -> res: %h | Z: %b, N: %b, H: %b, C: %b", res, flag_z, flag_n, flag_h, flag_c);
            $display("Expected -> res: %h | Z: %b, N: %b, H: %b, C: %b", expected_res, expected_z, expected_n, expected_h, expected_c);
            $display("\n");
        end
    endtask

    initial begin
        $display("\n\t\tBegin ALU Tests\n\n");
        a = 8'h00; b = 8'h00; f = 8'h00; c_in = 1'b0; op = ALU_NONE;

        // ADD
        op = ADD;
        a = 8'h05; b = 8'h0A; c_in = 0;
        // 5 + 10 = 15 (0x0F). No flags triggered.
        check_res(8'h0F, 0, 0, 0, 0, "ADD: Normal Addition (0x05 + 0x0A)");
        a = 8'h00; b = 8'h00; c_in = 0;
        // 0 + 0 = 0. Sets Z flag.
        check_res(8'h00, 1, 0, 0, 0, "ADD: Zero Flag Set");
        a = 8'h0F; b = 8'h01; c_in = 0;
        // 15 + 1 = 16 (0x10). Lower 4 bits overflow. Sets H flag.
        check_res(8'h10, 0, 0, 1, 0, "ADD: Half-Carry Set");
        a = 8'hFF; b = 8'h01; c_in = 0;
        // 255 + 1 = 256 which warps to 0x00. Sets Z, H, C.
        check_res(8'h00, 1, 0, 1, 1, "ADD: Carry and Zero Set");

        // ADC
        op = ADC;
        a = 8'h05; b = 8'h0A; c_in = 1;
        // 5 + 10 + 1 = 16 (0x10). The +1
        check_res(8'h10, 0, 0, 1, 0, "ADC: Normal Addition with carry in sets Half-Carry (0x05 + 0x0A + 0x01)");
        a = 8'hFF; b = 8'h00; c_in = 1;
        // 255 + 0 + 1 = 256 which warps to 0x00. Triggers Z, H, C
        check_res(8'h00, 1, 0, 1, 1, "ADC: Carry-in sets Carry");

        a = 8'h01; b = 8'h01; c_in = 1;
        // 1 + 1 + 1 = 3. No flags generated despite using carry.
        check_res(8'h03, 0, 0, 0, 0, "ADC: Normal addition with Carry-in (0x01 + 0x01 + 0x01)");

        $display("\n\t\tTests Finished\n\n");
        $finish;
    end

endmodule
