`ifndef UCODE_SVH
`define UCODE_SVH
for (int i = 0; i < 256; i = i + 1) begin
    ucode_table[i] = '{
        next_state: FETCH,
        addr_src: ADDR_NONE,
        reg_src: REG_NONE,
        reg_dst: REG_NONE,
        mem_wr: 0,
        use_reg_move: 0,
        use_idu: 0,
        idu_inc_dec: 0,
        idu_pair: IDU_NONE,
        use_alu: 0,
        alu_op: ALU_NONE,
        alu_src_sel: 0,
        flags_wr: 0,
        end_instr: 1,
        cycles: 4'd1
    };
end
// 0x40: LD B,B
ucode_table[8'h40] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_B,
    reg_dst: REG_B,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 1,
    use_alu: 0,
    alu_op: ALU_NONE,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd1
};
// 0x41: LD B,C
ucode_table[8'h41] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_C,
    reg_dst: REG_B,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 1,
    use_alu: 0,
    alu_op: ALU_NONE,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd1
};
// 0x42: LD B,D
ucode_table[8'h42] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_D,
    reg_dst: REG_B,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 1,
    use_alu: 0,
    alu_op: ALU_NONE,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd1
};
// 0x43: LD B,E
ucode_table[8'h43] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_E,
    reg_dst: REG_B,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 1,
    use_alu: 0,
    alu_op: ALU_NONE,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd1
};
// 0x44: LD B,H
ucode_table[8'h44] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_H,
    reg_dst: REG_B,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 1,
    use_alu: 0,
    alu_op: ALU_NONE,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd1
};
// 0x45: LD B,L
ucode_table[8'h45] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_L,
    reg_dst: REG_B,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 1,
    use_alu: 0,
    alu_op: ALU_NONE,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd1
};
// 0x46: LD B,M
ucode_table[8'h46] = '{
    next_state: MEM_RD,
    addr_src: ADDR_HL,
    reg_src: REG_NONE,
    reg_dst: REG_B,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 0,
    use_alu: 0,
    alu_op: ALU_NONE,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd2
};
// 0x47: LD B,A
ucode_table[8'h47] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_A,
    reg_dst: REG_B,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 1,
    use_alu: 0,
    alu_op: ALU_NONE,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd1
};

// 0x48: LD C,B
ucode_table[8'h48] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_B,
    reg_dst: REG_C,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 1,
    use_alu: 0,
    alu_op: ALU_NONE,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd1
};
// 0x49: LD C,C
ucode_table[8'h49] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_C,
    reg_dst: REG_C,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 1,
    use_alu: 0,
    alu_op: ALU_NONE,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd1
};
// 0x4A: LD C,D
ucode_table[8'h4a] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_D,
    reg_dst: REG_C,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 1,
    use_alu: 0,
    alu_op: ALU_NONE,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd1
};
// 0x4B: LD C,E
ucode_table[8'h4b] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_E,
    reg_dst: REG_C,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 1,
    use_alu: 0,
    alu_op: ALU_NONE,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd1
};
// 0x4C: LD C,H
ucode_table[8'h4C] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_H,
    reg_dst: REG_C,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 1,
    use_alu: 0,
    alu_op: ALU_NONE,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd1
};
// 0x4D: LD C,L
ucode_table[8'h4d] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_L,
    reg_dst: REG_C,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 1,
    use_alu: 0,
    alu_op: ALU_NONE,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd1
};
// 0x4E: LD C,M
ucode_table[8'h4e] = '{
    next_state: MEM_RD,
    addr_src: ADDR_HL,
    reg_src: REG_NONE,
    reg_dst: REG_C,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 0,
    use_alu: 0,
    alu_op: ALU_NONE,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd2
};
// 0x4F: LD C,A
ucode_table[8'h4f] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_A,
    reg_dst: REG_C,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 1,
    use_alu: 0,
    alu_op: ALU_NONE,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd1
};

// 0x50: LD D,B
ucode_table[8'h50] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_B,
    reg_dst: REG_D,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 1,
    use_alu: 0,
    alu_op: ALU_NONE,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd1
};
// 0x51: LD D,C
ucode_table[8'h51] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_C,
    reg_dst: REG_D,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 1,
    use_alu: 0,
    alu_op: ALU_NONE,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd1
};
// 0x52: LD D,D
ucode_table[8'h52] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_D,
    reg_dst: REG_D,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 1,
    use_alu: 0,
    alu_op: ALU_NONE,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd1
};
// 0x53: LD D,E
ucode_table[8'h53] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_E,
    reg_dst: REG_D,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 1,
    use_alu: 0,
    alu_op: ALU_NONE,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd1
};
// 0x54: LD D,H
ucode_table[8'h54] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_H,
    reg_dst: REG_D,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 1,
    use_alu: 0,
    alu_op: ALU_NONE,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd1
};
// 0x55: LD D,L
ucode_table[8'h55] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_L,
    reg_dst: REG_D,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 1,
    use_alu: 0,
    alu_op: ALU_NONE,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd1
};
// 0x56: LD D,M
ucode_table[8'h56] = '{
    next_state: MEM_RD,
    addr_src: ADDR_HL,
    reg_src: REG_NONE,
    reg_dst: REG_D,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 0,
    use_alu: 0,
    alu_op: ALU_NONE,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd2
};
// 0x57: LD D,A
ucode_table[8'h57] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_A,
    reg_dst: REG_D,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 1,
    use_alu: 0,
    alu_op: ALU_NONE,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd1
};

// 0x58: LD E,B
ucode_table[8'h58] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_B,
    reg_dst: REG_E,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 1,
    use_alu: 0,
    alu_op: ALU_NONE,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd1
};
// 0x59: LD E,C
ucode_table[8'h59] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_C,
    reg_dst: REG_E,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 1,
    use_alu: 0,
    alu_op: ALU_NONE,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd1
};
// 0x5A: LD E,D
ucode_table[8'h5a] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_D,
    reg_dst: REG_E,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 1,
    use_alu: 0,
    alu_op: ALU_NONE,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd1
};
// 0x5B: LD E,E
ucode_table[8'h5b] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_E,
    reg_dst: REG_E,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 1,
    use_alu: 0,
    alu_op: ALU_NONE,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd1
};
// 0x5C: LD E,H
ucode_table[8'h5c] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_H,
    reg_dst: REG_E,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 1,
    use_alu: 0,
    alu_op: ALU_NONE,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd1
};
// 0x5D: LD E,L
ucode_table[8'h5d] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_L,
    reg_dst: REG_E,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 1,
    use_alu: 0,
    alu_op: ALU_NONE,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd1
};
// 0x5E: LD E,M
ucode_table[8'h5e] = '{
    next_state: MEM_RD,
    addr_src: ADDR_HL,
    reg_src: REG_NONE,
    reg_dst: REG_E,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 0,
    use_alu: 0,
    alu_op: ALU_NONE,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd2
};
// 0x5F: LD E,A
ucode_table[8'h5f] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_A,
    reg_dst: REG_E,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 1,
    use_alu: 0,
    alu_op: ALU_NONE,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd1
};
// 0x60: LD H,B
ucode_table[8'h60] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_B,
    reg_dst: REG_H,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 1,
    use_alu: 0,
    alu_op: ALU_NONE,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd1
};
// 0x61: LD H,C
ucode_table[8'h61] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_C,
    reg_dst: REG_H,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 1,
    use_alu: 0,
    alu_op: ALU_NONE,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd1
};
// 0x62: LD H,D
ucode_table[8'h62] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_D,
    reg_dst: REG_H,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 1,
    use_alu: 0,
    alu_op: ALU_NONE,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd1
};
// 0x63: LD H,E
ucode_table[8'h63] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_E,
    reg_dst: REG_H,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 1,
    use_alu: 0,
    alu_op: ALU_NONE,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd1
};
// 0x64: LD H,H
ucode_table[8'h64] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_H,
    reg_dst: REG_H,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 1,
    use_alu: 0,
    alu_op: ALU_NONE,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd1
};
// 0x65: LD H,L
ucode_table[8'h65] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_L,
    reg_dst: REG_H,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 1,
    use_alu: 0,
    alu_op: ALU_NONE,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd1
};
// 0x66: LD H,M
ucode_table[8'h66] = '{
    next_state: MEM_RD,
    addr_src: ADDR_HL,
    reg_src: REG_NONE,
    reg_dst: REG_H,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 0,
    use_alu: 0,
    alu_op: ALU_NONE,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd2
};
// 0x67: LD H,A
ucode_table[8'h67] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_A,
    reg_dst: REG_H,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 1,
    use_alu: 0,
    alu_op: ALU_NONE,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd1
};

// 0x68: LD L,B
ucode_table[8'h68] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_B,
    reg_dst: REG_L,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 1,
    use_alu: 0,
    alu_op: ALU_NONE,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd1
};
// 0x69: LD L,C
ucode_table[8'h69] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_C,
    reg_dst: REG_L,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 1,
    use_alu: 0,
    alu_op: ALU_NONE,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd1
};
// 0x6A: LD L,D
ucode_table[8'h6a] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_D,
    reg_dst: REG_L,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 1,
    use_alu: 0,
    alu_op: ALU_NONE,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd1
};
// 0x6B: LD L,E
ucode_table[8'h6b] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_E,
    reg_dst: REG_L,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 1,
    use_alu: 0,
    alu_op: ALU_NONE,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd1
};
// 0x6C: LD L,H
ucode_table[8'h6c] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_H,
    reg_dst: REG_L,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 1,
    use_alu: 0,
    alu_op: ALU_NONE,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd1
};
// 0x6D: LD L,L
ucode_table[8'h6d] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_L,
    reg_dst: REG_L,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 1,
    use_alu: 0,
    alu_op: ALU_NONE,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd1
};
// 0x6E: LD L,M
ucode_table[8'h6e] = '{
    next_state: MEM_RD,
    addr_src: ADDR_HL,
    reg_src: REG_NONE,
    reg_dst: REG_L,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 0,
    use_alu: 0,
    alu_op: ALU_NONE,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd2
};
// 0x6F: LD L,A
ucode_table[8'h6f] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_A,
    reg_dst: REG_L,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 1,
    use_alu: 0,
    alu_op: ALU_NONE,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd1
};

// 0x78: LD A,B
ucode_table[8'h78] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_B,
    reg_dst: REG_A,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 1,
    use_alu: 0,
    alu_op: ALU_NONE,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd1
};
// 0x79: LD A,C
ucode_table[8'h79] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_C,
    reg_dst: REG_A,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 1,
    use_alu: 0,
    alu_op: ALU_NONE,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd1
};
// 0x7A: LD A,D
ucode_table[8'h7a] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_D,
    reg_dst: REG_A,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 1,
    use_alu: 0,
    alu_op: ALU_NONE,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd1
};
// 0x7B: LD A,E
ucode_table[8'h7b] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_E,
    reg_dst: REG_A,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 1,
    use_alu: 0,
    alu_op: ALU_NONE,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd1
};
// 0x7C: LD A,H
ucode_table[8'h7c] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_H,
    reg_dst: REG_A,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 1,
    use_alu: 0,
    alu_op: ALU_NONE,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd1
};
// 0x7D: LD A,L
ucode_table[8'h7d] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_L,
    reg_dst: REG_A,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 1,
    use_alu: 0,
    alu_op: ALU_NONE,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd1
};
// 0x7E: LD A,M
ucode_table[8'h7e] = '{
    next_state: MEM_RD,
    addr_src: ADDR_HL,
    reg_src: REG_NONE,
    reg_dst: REG_A,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 0,
    use_alu: 0,
    alu_op: ALU_NONE,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd2
};
// 0x7F: LD A,A
ucode_table[8'h7f] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_A,
    reg_dst: REG_A,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 1,
    use_alu: 0,
    alu_op: ALU_NONE,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd1
};

// 0x80: ADD A,B
ucode_table[8'h80] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_B,
    reg_dst: REG_A,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 0,
    use_alu: 1,
    alu_op: ADD,
    alu_src_sel: 0,
    flags_wr: 1,
    end_instr: 1,
    cycles: 4'd1
};
// 0x81: ADD A,C
ucode_table[8'h80] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_C,
    reg_dst: REG_A,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 0,
    use_alu: 1,
    alu_op: ADD,
    alu_src_sel: 0,
    flags_wr: 1,
    end_instr: 1,
    cycles: 4'd1
};
// 0x82: ADD A,D
ucode_table[8'h80] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_D,
    reg_dst: REG_A,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 0,
    use_alu: 1,
    alu_op: ADD,
    alu_src_sel: 0,
    flags_wr: 1,
    end_instr: 1,
    cycles: 4'd1
};
// 0x83: ADD A,E
ucode_table[8'h80] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_E,
    reg_dst: REG_A,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 0,
    use_alu: 1,
    alu_op: ADD,
    alu_src_sel: 0,
    flags_wr: 1,
    end_instr: 1,
    cycles: 4'd1
};
// 0x84: ADD A,H
ucode_table[8'h80] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_H,
    reg_dst: REG_A,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 0,
    use_alu: 1,
    alu_op: ADD,
    alu_src_sel: 0,
    flags_wr: 1,
    end_instr: 1,
    cycles: 4'd1
};
// 0x85: ADD A,L
ucode_table[8'h80] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_L,
    reg_dst: REG_A,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 0,
    use_alu: 1,
    alu_op: ADD,
    alu_src_sel: 0,
    flags_wr: 1,
    end_instr: 1,
    cycles: 4'd1
};
// 0x86: ADD A,M
ucode_table[8'h80] = '{
    next_state: FETCH,
    addr_src: ADDR_HL,
    reg_src: REG_NONE,
    reg_dst: REG_A,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 0,
    use_alu: 1,
    alu_op: ADD,
    alu_src_sel: 0,
    flags_wr: 1,
    end_instr: 1,
    cycles: 4'd2
};
// 0x87: ADD A,A
ucode_table[8'h80] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_A,
    reg_dst: REG_A,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 0,
    use_alu: 1,
    alu_op: ADD,
    alu_src_sel: 0,
    flags_wr: 1,
    end_instr: 1,
    cycles: 4'd1
};

// 0x88: ADC A,B
ucode_table[8'h80] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_B,
    reg_dst: REG_A,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 0,
    use_alu: 1,
    alu_op: ADC,
    alu_src_sel: 0,
    flags_wr: 1,
    end_instr: 1,
    cycles: 4'd1
};
// 0x89: ADC A,C
ucode_table[8'h80] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_C,
    reg_dst: REG_A,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 0,
    use_alu: 1,
    alu_op: ADC,
    alu_src_sel: 0,
    flags_wr: 1,
    end_instr: 1,
    cycles: 4'd1
};
// 0x8A: ADC A,D
ucode_table[8'h80] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_D,
    reg_dst: REG_A,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 0,
    use_alu: 1,
    alu_op: ADC,
    alu_src_sel: 0,
    flags_wr: 1,
    end_instr: 1,
    cycles: 4'd1
};
// 0x8B: ADC A,E
ucode_table[8'h80] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_E,
    reg_dst: REG_A,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 0,
    use_alu: 1,
    alu_op: ADC,
    alu_src_sel: 0,
    flags_wr: 1,
    end_instr: 1,
    cycles: 4'd1
};
// 0x8C: ADC A,H
ucode_table[8'h80] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_H,
    reg_dst: REG_A,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 0,
    use_alu: 1,
    alu_op: ADC,
    alu_src_sel: 0,
    flags_wr: 1,
    end_instr: 1,
    cycles: 4'd1
};
// 0x8D: ADC A,L
ucode_table[8'h80] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_L,
    reg_dst: REG_A,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 0,
    use_alu: 1,
    alu_op: ADC,
    alu_src_sel: 0,
    flags_wr: 1,
    end_instr: 1,
    cycles: 4'd1
};
// 0x8E: ADC A,M
ucode_table[8'h80] = '{
    next_state: FETCH,
    addr_src: ADDR_HL,
    reg_src: REG_NONE,
    reg_dst: REG_A,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 0,
    use_alu: 1,
    alu_op: ADC,
    alu_src_sel: 0,
    flags_wr: 1,
    end_instr: 1,
    cycles: 4'd2
};
// 0x8F: ADC A,A
ucode_table[8'h80] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_A,
    reg_dst: REG_A,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 0,
    use_alu: 1,
    alu_op: ADC,
    alu_src_sel: 0,
    flags_wr: 1,
    end_instr: 1,
    cycles: 4'd1
};
`endif
