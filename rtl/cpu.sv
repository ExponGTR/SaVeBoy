`timescale 1ns / 1ps

import gb_pkg::*;
module cpu(
    input logic clk,
    input logic arstn,
    output logic [15:0] mem_addr,
    output logic mem_rd,
    output logic mem_wr,
    input logic [7:0] data_in,
    output logic [7:0] data_out
);
    
    // Registers
    // in the gameboy, similar to intel 8080, 8-bit registers can pair up
    // the following pairs can be made:
    // af, bc, de, hl
    // pc and sp are program counter and stack pointer respectively
    // ir is the instruction register
    // w and z are temporary registers that can be paired
    logic [7:0] a, f, b, c, d, e, h, l;
    logic [15:0] pc, sp;
    logic [7:0] ir;
    logic [7:0] w, z;
    logic cb_pref;

    logic idu_inc_dec;
    logic [15:0] idu_data_in;
    logic [15:0] idu_data_out;
    idu u_idu(
        .inc_dec(idu_inc_dec),
        .data_in(idu_data_in),
        .data_out(idu_data_out)
    );

    logic [7:0] alu_a;
    logic [7:0] alu_b;
    logic alu_flag_z, alu_flag_n, alu_flag_h, alu_flag_c;
    alu_op_e alu_op;
    logic [7:0] alu_res;

    alu u_alu(
        .a(alu_a),
        .b(alu_b),
        .c_in(f[4]),
        .f(f),
        .op(alu_op),
        .res(alu_res),
        .flag_z(alu_flag_z),
        .flag_n(alu_flag_n),
        .flag_h(alu_flag_h),
        .flag_c(alu_flag_c)
    );

    state_e state, next_state;
    logic [1:0] t_state;
    logic [3:0] m_cycle;
    ucode_entry_t curr_entry;

    // microcode table
    ucode_entry_t ucode_table [0:255];
    initial begin
        `include "rtl/ucode.svh"
    end

    // sequential logic fsm
    always_ff @(posedge clk or negedge arstn) begin
        if (!arstn) begin
            // at reset, the gameboy jumps to the cartridge header at $0100
            // stack ptr is reset to $FFFE
            pc <= 16'h0100;
            sp <= 16'hfffe;
            a <= 8'h00;
            f <= 8'h00;
            b <= 8'h00;
            c <= 8'h00;
            d <= 8'h00;
            e <= 8'h00;
            h <= 8'h00;
            l <= 8'h00;
            ir <= 8'h00;
            t_state <= 2'd0;
            m_cycle <= 4'd0;
            mem_addr <= 16'h0000;
            mem_rd <= 1'b0;
            mem_wr <= 1'b0;
            state <= FETCH;
            curr_entry <= 0;
        end
        // processor loop
        else begin
            t_state <= t_state + 1;
            state <= next_state;
            // not going for t-state accuracy right now, so execute everything on the last tick
            if (t_state == 2'd3) begin
                mem_rd <= 1'b0;
                mem_wr <= 1'b0;
                m_cycle <= (state == FETCH) ? 4'd0 : m_cycle + 1;
            end
            unique case (state)
                // opcode fetch cycle
                FETCH: begin
                    if (t_state == 2'd0) begin // T1
                        mem_addr <= pc;
                        mem_rd <= 1'b1;
                    end
                    else if (t_state == 2'd1) begin // T2
                        ;
                    end
                    else if (t_state == 2'd2) begin // T3
                        ir <= data_in;
                        curr_entry <= ucode_table[data_in];
                        if (ucode_table[data_in].use_reg_move) begin
                            case (ucode_table[data_in].reg_src)
                                REG_A: begin
                                    case (ucode_table[data_in].reg_dst)
                                        REG_A: a <= a;
                                        REG_B: b <= a;
                                        REG_C: c <= a;
                                        REG_D: d <= a;
                                        REG_E: e <= a;
                                        REG_H: h <= a;
                                        REG_L: l <= a;
                                        default: ;
                                    endcase
                                end
                                REG_B: begin
                                    case (ucode_table[data_in].reg_dst)
                                        REG_A: a <= b;
                                        REG_B: b <= b;
                                        REG_C: c <= b;
                                        REG_D: d <= b;
                                        REG_E: e <= b;
                                        REG_H: h <= b;
                                        REG_L: l <= b;
                                        default: ;
                                    endcase
                                end
                                REG_C: begin
                                    case (ucode_table[data_in].reg_dst)
                                        REG_A: a <= c;
                                        REG_B: b <= c;
                                        REG_C: c <= c;
                                        REG_D: d <= c;
                                        REG_E: e <= c;
                                        REG_H: h <= c;
                                        REG_L: l <= c;
                                        default: ;
                                    endcase
                                end
                                REG_D: begin
                                    case (ucode_table[data_in].reg_dst)
                                        REG_A: a <= d;
                                        REG_B: b <= d;
                                        REG_C: c <= d;
                                        REG_D: d <= d;
                                        REG_E: e <= d;
                                        REG_H: h <= d;
                                        REG_L: l <= d;
                                        default: ;
                                    endcase
                                end
                                REG_E: begin
                                    case (ucode_table[data_in].reg_dst)
                                        REG_A: a <= e;
                                        REG_B: b <= e;
                                        REG_C: c <= e;
                                        REG_D: d <= e;
                                        REG_E: e <= e;
                                        REG_H: h <= e;
                                        REG_L: l <= e;
                                        default: ;
                                    endcase
                                end
                                REG_H: begin
                                    case (ucode_table[data_in].reg_dst)
                                        REG_A: a <= h;
                                        REG_B: b <= h;
                                        REG_C: c <= h;
                                        REG_D: d <= h;
                                        REG_E: e <= h;
                                        REG_H: h <= h;
                                        REG_L: l <= h;
                                        default: ;
                                    endcase
                                end
                                REG_L: begin
                                    case (ucode_table[data_in].reg_dst)
                                        REG_A: a <= l;
                                        REG_B: b <= l;
                                        REG_C: c <= l;
                                        REG_D: d <= l;
                                        REG_E: e <= l;
                                        REG_H: h <= l;
                                        REG_L: l <= l;
                                        default: ;
                                    endcase
                                end
                                default: ;
                            endcase
                        end
                    end
                    else begin // T4
                        // if the op uses the alu, writeback
                        if (curr_entry.use_alu) begin
                            if (curr_entry.reg_dst == REG_A) begin
                                a <= alu_res;
                            end
                            // game boy flags are in the upper 4 bits of the f register (z, n, h, c)
                            if (curr_entry.flags_wr) begin
                                f <= {alu_flag_z, alu_flag_n, alu_flag_h, alu_flag_c, 4'b0000};
                            end
                        end
                        // incr pc
                        pc <= idu_data_out;
                    end
                end

                // mem read cycle
                MEM_RD: begin
                    if (t_state == 2'd0) begin // T1 
                        case (curr_entry.addr_src)
                            ADDR_BC: mem_addr <= {b, c};
                            ADDR_DE: mem_addr <= {d, e};
                            ADDR_HL: mem_addr <= {h, l};
                            ADDR_PC: mem_addr <= pc;
                            default: mem_addr <= 16'hxxxx;
                        endcase
                        mem_rd <= 1'b1;
                    end
                    else if (t_state == 2'd1) begin // T2
                        ;
                    end
                    else if (t_state == 2'd2) begin // T3
                        unique case (curr_entry.reg_dst)
                            REG_A: a <= data_in;
                            REG_B: b <= data_in;
                            REG_C: c <= data_in;
                            REG_D: d <= data_in;
                            REG_E: e <= data_in;
                            REG_H: h <= data_in;
                            REG_L: l <= data_in;
                            default: ;
                        endcase
                    end
                    else if (t_state == 2'd3) begin
                        ;
                    end
                end
                default: ;
            endcase
        end
    end

    // next state combinational logic 
    always_comb begin
        next_state = state;
        if (t_state == 2'd3) begin
            unique case (state)
                FETCH: next_state = ucode_table[data_in].next_state;
                MEM_RD,
                MEM_WR,
                INTERNAL: next_state = curr_entry.end_instr ? FETCH : curr_entry.next_state;
                default: next_state = FETCH;
            endcase
        end
    end

    // output combinational logic
    always_comb begin
        idu_inc_dec = 1'b0;
        idu_data_in = 16'h0000;

        // increment pc after fetch (T4)
        if (state == FETCH && t_state == 2'd3) begin
            idu_inc_dec = 1'b1;
            idu_data_in = pc;
        end
        else if (curr_entry.use_idu) begin
            idu_inc_dec = curr_entry.idu_inc_dec;
            unique case (curr_entry.idu_pair) 
                IDU_BC: idu_data_in = {b, c};
                IDU_DE: idu_data_in = {d, e};
                IDU_HL: idu_data_in = {h, l};
                IDU_SP: idu_data_in = sp;
                IDU_PC: idu_data_in = pc;
                IDU_WZ: idu_data_in = {w, z};
                default: ;
            endcase
        end

        alu_a = a;
        alu_b = 8'h00;
        alu_op = curr_entry.alu_op;
        unique case (curr_entry.reg_src)
            REG_B: alu_b = b;
            REG_C: alu_b = c;
            REG_D: alu_b = d;
            REG_E: alu_b = e;
            REG_H: alu_b = h;
            REG_L: alu_b = l;
            REG_A: alu_b = a;
            default: ;
        endcase
    end

endmodule
