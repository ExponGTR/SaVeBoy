`timescale 1ns / 1ps
// the clock frequency of the gameboy is 4 MiHz = 4.194304 MHz
// time period = 1/(4.194304 MHz) = 238.4185791015625 ns
localparam real HALF_PERIOD_NS = 119.20928955078125;

module tb_cpu;
    logic clk;
    logic arstn;
    logic [15:0] mem_addr;
    logic mem_rd;
    logic mem_wr;
    logic [7:0] data_in;
    logic [7:0] data_out;

    cpu uut(
        .clk(clk),
        .arstn(arstn),
        .mem_addr(mem_addr),
        .mem_rd(mem_rd),
        .mem_wr(mem_wr),
        .data_in(data_in),
        .data_out(data_out)
    );

    logic [7:0] rom [0:32767];
    logic [7:0] wram [0:8191];
    always #(HALF_PERIOD_NS) clk = ~clk;

    always_comb begin
        data_in = 8'hxx;
        if (mem_rd) begin
            if (mem_addr >= 16'h0100 && mem_addr <= 16'h0103)
                // rom starts at $0100, so account for offset
                data_in = rom[mem_addr[14:0] - 14'h0100];
            else if (mem_addr >= 16'h8000 && mem_addr <= 16'h80FF)
                data_in = wram[mem_addr[12:0]];
        end
    end

    always_ff @(posedge clk) begin
        if (mem_wr) begin
            if (mem_addr >= 16'h8000 && mem_addr <= 16'h80ff)
                wram[mem_addr[12:0]] <= data_out;
        end
    end

    initial begin
        rom[15'h00] = 8'h48; // $0100: LD C,B
        rom[15'h01] = 8'h40; // $0101: LD B,B
        rom[15'h02] = 8'h7e; // $0102: LD A,(HL)
        rom[15'h03] = 8'h00; // $0103: NOP
        wram[13'h00] = 8'hab; 
        arstn = 0;
        clk = 0;
        #200;
        arstn = 1;
        // wait for reset to be released
        #500;
        // initialise registers
        uut.b = 8'h42; // B initialised to 0x42
        uut.h = 8'h80; 
        uut.l = 8'h00; // HL initialised to 0x8000

        #(238 * 200);
        if (uut.c == 8'h42 && uut.a == 8'hab) begin
            $display("Test passed: C = 0x%02h, A = 0x%02h", uut.c, uut.a);
        end else begin
            $display("Test failed: C = 0x%02h (expected 0x42), A = 0x%02h (expected 0xAB)",
                     uut.c, uut.a);
        end
        $finish;
    end

endmodule
