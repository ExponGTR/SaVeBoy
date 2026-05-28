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

// 0x00: NOP
ucode_table[8'h00] = '{
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
// 0x04: INC B
ucode_table[8'h04] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_B,
    reg_dst: REG_B,
    mem_wr: 0,
    use_reg_move: 0,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    use_alu: 0,
    alu_op: INC,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd1
};
// 0x05: DEC B
ucode_table[8'h05] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_B,
    reg_dst: REG_B,
    mem_wr: 0,
    use_reg_move: 0,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    use_alu: 0,
    alu_op: DEC,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd1
};

// 0x0C: INC C
ucode_table[8'h0c] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_C,
    reg_dst: REG_C,
    mem_wr: 0,
    use_reg_move: 0,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    use_alu: 0,
    alu_op: INC,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd1
};
// 0x0D: DEC C
ucode_table[8'h0d] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_C,
    reg_dst: REG_C,
    mem_wr: 0,
    use_reg_move: 0,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    use_alu: 0,
    alu_op: DEC,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd1
};

// 0x14: INC D
ucode_table[8'h14] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_D,
    reg_dst: REG_D,
    mem_wr: 0,
    use_reg_move: 0,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    use_alu: 0,
    alu_op: INC,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd1
};
// 0x15: DEC D
ucode_table[8'h15] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_D,
    reg_dst: REG_D,
    mem_wr: 0,
    use_reg_move: 0,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    use_alu: 0,
    alu_op: DEC,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd1
};

// 0x1C: INC E
ucode_table[8'h1c] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_E,
    reg_dst: REG_E,
    mem_wr: 0,
    use_reg_move: 0,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    use_alu: 0,
    alu_op: INC,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd1
};
// 0x1D: DEC E
ucode_table[8'h1d] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_E,
    reg_dst: REG_E,
    mem_wr: 0,
    use_reg_move: 0,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    use_alu: 0,
    alu_op: DEC,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd1
};

// 0x24: INC H
ucode_table[8'h24] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_H,
    reg_dst: REG_H,
    mem_wr: 0,
    use_reg_move: 0,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    use_alu: 0,
    alu_op: INC,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd1
};
// 0x25: DEC H
ucode_table[8'h25] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_H,
    reg_dst: REG_H,
    mem_wr: 0,
    use_reg_move: 0,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    use_alu: 0,
    alu_op: DEC,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd1
};

// 0x2C: INC L
ucode_table[8'h2c] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_L,
    reg_dst: REG_L,
    mem_wr: 0,
    use_reg_move: 0,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    use_alu: 0,
    alu_op: INC,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd1
};
// 0x2D: DEC L
ucode_table[8'h2d] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_L,
    reg_dst: REG_L,
    mem_wr: 0,
    use_reg_move: 0,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    use_alu: 0,
    alu_op: DEC,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd1
};

// 0x3C: INC A
ucode_table[8'h3c] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_A,
    reg_dst: REG_A,
    mem_wr: 0,
    use_reg_move: 0,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    use_alu: 0,
    alu_op: INC,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd1
};
// 0x3D: DEC A
ucode_table[8'h3d] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_A,
    reg_dst: REG_A,
    mem_wr: 0,
    use_reg_move: 0,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    use_alu: 0,
    alu_op: DEC,
    alu_src_sel: 0,
    flags_wr: 0,
    end_instr: 1,
    cycles: 4'd1
};

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
ucode_table[8'h81] = '{
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
ucode_table[8'h82] = '{
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
ucode_table[8'h83] = '{
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
ucode_table[8'h84] = '{
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
ucode_table[8'h85] = '{
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
ucode_table[8'h86] = '{
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
ucode_table[8'h87] = '{
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
ucode_table[8'h88] = '{
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
ucode_table[8'h89] = '{
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
ucode_table[8'h8a] = '{
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
ucode_table[8'h8b] = '{
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
ucode_table[8'h8c] = '{
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
ucode_table[8'h8d] = '{
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
ucode_table[8'h8e] = '{
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
ucode_table[8'h8f] = '{
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

// 0x90: SUB A,B
ucode_table[8'h90] = '{
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
    alu_op: SUB,
    alu_src_sel: 0,
    flags_wr: 1,
    end_instr: 1,
    cycles: 4'd1
};
// 0x91: SUB A,C
ucode_table[8'h91] = '{
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
    alu_op: SUB,
    alu_src_sel: 0,
    flags_wr: 1,
    end_instr: 1,
    cycles: 4'd1
};
// 0x92: SUB A,D
ucode_table[8'h92] = '{
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
    alu_op: SUB,
    alu_src_sel: 0,
    flags_wr: 1,
    end_instr: 1,
    cycles: 4'd1
};
// 0x93: SUB A,E
ucode_table[8'h93] = '{
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
    alu_op: SUB,
    alu_src_sel: 0,
    flags_wr: 1,
    end_instr: 1,
    cycles: 4'd1
};
// 0x94: SUB A,H
ucode_table[8'h94] = '{
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
    alu_op: SUB,
    alu_src_sel: 0,
    flags_wr: 1,
    end_instr: 1,
    cycles: 4'd1
};
// 0x95: SUB A,L
ucode_table[8'h95] = '{
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
    alu_op: SUB,
    alu_src_sel: 0,
    flags_wr: 1,
    end_instr: 1,
    cycles: 4'd1
};
// 0x96: SUB A,M
ucode_table[8'h96] = '{
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
    alu_op: SUB,
    alu_src_sel: 0,
    flags_wr: 1,
    end_instr: 1,
    cycles: 4'd2
};
// 0x97: SUB A,A
ucode_table[8'h97] = '{
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
    alu_op: SUB,
    alu_src_sel: 0,
    flags_wr: 1,
    end_instr: 1,
    cycles: 4'd1
};

// 0x98: SBC A,B
ucode_table[8'h98] = '{
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
    alu_op: SBC,
    alu_src_sel: 0,
    flags_wr: 1,
    end_instr: 1,
    cycles: 4'd1
};
// 0x99: SBC A,C
ucode_table[8'h99] = '{
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
    alu_op: SBC,
    alu_src_sel: 0,
    flags_wr: 1,
    end_instr: 1,
    cycles: 4'd1
};
// 0x9A: SBC A,D
ucode_table[8'h9a] = '{
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
    alu_op: SBC,
    alu_src_sel: 0,
    flags_wr: 1,
    end_instr: 1,
    cycles: 4'd1
};
// 0x9B: SBC A,E
ucode_table[8'h9b] = '{
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
    alu_op: SBC,
    alu_src_sel: 0,
    flags_wr: 1,
    end_instr: 1,
    cycles: 4'd1
};
// 0x9C: SBC A,H
ucode_table[8'h9c] = '{
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
    alu_op: SBC,
    alu_src_sel: 0,
    flags_wr: 1,
    end_instr: 1,
    cycles: 4'd1
};
// 0x9D: SBC A,L
ucode_table[8'h9d] = '{
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
    alu_op: SBC,
    alu_src_sel: 0,
    flags_wr: 1,
    end_instr: 1,
    cycles: 4'd1
};
// 0x9E: SBC A,M
ucode_table[8'h9e] = '{
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
    alu_op: SBC,
    alu_src_sel: 0,
    flags_wr: 1,
    end_instr: 1,
    cycles: 4'd2
};
// 0x9F: SBC A,A
ucode_table[8'h9f] = '{
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
    alu_op: SBC,
    alu_src_sel: 0,
    flags_wr: 1,
    end_instr: 1,
    cycles: 4'd1
};

// 0xA0: AND A,B
ucode_table[8'ha0] = ' {
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
    alu_op: AND,
    alu_src_sel: 0,
    flags_wr: 1,
    end_instr: 1,
    cycles: 4'd1
};
// 0xA1: AND A,C
ucode_table[8'ha1] = ' {
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
    alu_op: AND,
    alu_src_sel: 0,
    flags_wr: 1,
    end_instr: 1,
    cycles: 4'd1
};
// 0xA2: AND A,D
ucode_table[8'ha2] = ' {
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
    alu_op: AND,
    alu_src_sel: 0,
    flags_wr: 1,
    end_instr: 1,
    cycles: 4'd1
};
// 0xA3: AND A,E
ucode_table[8'ha3] = ' {
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
    alu_op: AND,
    alu_src_sel: 0,
    flags_wr: 1,
    end_instr: 1,
    cycles: 4'd1
};
// 0xA4: AND A,H
ucode_table[8'ha4] = ' {
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
    alu_op: AND,
    alu_src_sel: 0,
    flags_wr: 1,
    end_instr: 1,
    cycles: 4'd1
};
// 0xA5: AND A,L
ucode_table[8'ha5] = ' {
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
    alu_op: AND,
    alu_src_sel: 0,
    flags_wr: 1,
    end_instr: 1,
    cycles: 4'd1
};
// 0xA6: AND A,M
ucode_table[8'ha6] = ' {
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
    alu_op: AND,
    alu_src_sel: 0,
    flags_wr: 1,
    end_instr: 1,
    cycles: 4'd2
};
// 0xA7: AND A,A
ucode_table[8'ha7] = ' {
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
    alu_op: AND,
    alu_src_sel: 0,
    flags_wr: 1,
    end_instr: 1,
    cycles: 4'd1
};

// 0xA8: XOR A,B
ucode_table[8'ha8] = '{
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
    alu_op: XOR,
    alu_src_sel: 0,
    flags_wr: 1,
    end_instr: 1,
    cycles: 4'd1
};
// 0xA9: XOR A,C
ucode_table[8'ha9] = '{
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
    alu_op: XOR,
    alu_src_sel: 0,
    flags_wr: 1,
    end_instr: 1,
    cycles: 4'd1
};
// 0xAA: XOR A,D
ucode_table[8'haa] = '{
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
    alu_op: XOR,
    alu_src_sel: 0,
    flags_wr: 1,
    end_instr: 1,
    cycles: 4'd1
};
// 0xAB: XOR A,E
ucode_table[8'hab] = '{
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
    alu_op: XOR,
    alu_src_sel: 0,
    flags_wr: 1,
    end_instr: 1,
    cycles: 4'd1
};
// 0xAC: XOR A,H
ucode_table[8'hac] = '{
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
    alu_op: XOR,
    alu_src_sel: 0,
    flags_wr: 1,
    end_instr: 1,
    cycles: 4'd1
};
// 0xAD: XOR A,L
ucode_table[8'had] = '{
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
    alu_op: XOR,
    alu_src_sel: 0,
    flags_wr: 1,
    end_instr: 1,
    cycles: 4'd1
};
// 0xAE: XOR A,M
ucode_table[8'hae] = '{
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
    alu_op: XOR,
    alu_src_sel: 0,
    flags_wr: 1,
    end_instr: 1,
    cycles: 4'd2
};
// 0xAF: XOR A,A
ucode_table[8'haf] = '{
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
    alu_op: XOR,
    alu_src_sel: 0,
    flags_wr: 1,
    end_instr: 1,
    cycles: 4'd1
};

// 0xB0: OR A,B
ucode_table[8'hb0] = ' {
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
    alu_op: OR,
    alu_src_sel: 0,
    flags_wr: 1,
    end_instr: 1,
    cycles: 4'd1
};
// 0xB1: OR A,C
ucode_table[8'hb1] = ' {
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
    alu_op: OR,
    alu_src_sel: 0,
    flags_wr: 1,
    end_instr: 1,
    cycles: 4'd1
};
// 0xB2: OR A,D
ucode_table[8'hb2] = ' {
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
    alu_op: OR,
    alu_src_sel: 0,
    flags_wr: 1,
    end_instr: 1,
    cycles: 4'd1
};
// 0xB3: OR A,E
ucode_table[8'hb3] = ' {
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
    alu_op: OR,
    alu_src_sel: 0,
    flags_wr: 1,
    end_instr: 1,
    cycles: 4'd1
};
// 0xB4: OR A,H
ucode_table[8'hb4] = ' {
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
    alu_op: OR,
    alu_src_sel: 0,
    flags_wr: 1,
    end_instr: 1,
    cycles: 4'd1
};
// 0xB5: OR A,L
ucode_table[8'hb5] = ' {
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
    alu_op: OR,
    alu_src_sel: 0,
    flags_wr: 1,
    end_instr: 1,
    cycles: 4'd1
};
// 0xB6: OR A,M
ucode_table[8'hb6] = ' {
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
    alu_op: OR,
    alu_src_sel: 0,
    flags_wr: 1,
    end_instr: 1,
    cycles: 4'd2
};
// 0xB7: OR A,A
ucode_table[8'hb7] = ' {
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
    alu_op: OR,
    alu_src_sel: 0,
    flags_wr: 1,
    end_instr: 1,
    cycles: 4'd1
};

// 0xB8: CP A,B
ucode_table[8'hb8] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_B,
    reg_dst: REG_NONE,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 0,
    use_alu: 1,
    alu_op: CP,
    alu_src_sel: 0,
    flags_wr: 1,
    end_instr: 1,
    cycles: 4'd1
};
// 0xB9: CP A,C
ucode_table[8'hb9] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_C,
    reg_dst: REG_NONE,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 0,
    use_alu: 1,
    alu_op: CP,
    alu_src_sel: 0,
    flags_wr: 1,
    end_instr: 1,
    cycles: 4'd1
};
// 0xBA: CP A,D
ucode_table[8'hba] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_D,
    reg_dst: REG_NONE,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 0,
    use_alu: 1,
    alu_op: CP,
    alu_src_sel: 0,
    flags_wr: 1,
    end_instr: 1,
    cycles: 4'd1
};
// 0xBB: CP A,E
ucode_table[8'hbb] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_E,
    reg_dst: REG_NONE,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 0,
    use_alu: 1,
    alu_op: CP,
    alu_src_sel: 0,
    flags_wr: 1,
    end_instr: 1,
    cycles: 4'd1
};
// 0xBC: CP A,H
ucode_table[8'hbc] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_H,
    reg_dst: REG_NONE,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 0,
    use_alu: 1,
    alu_op: CP,
    alu_src_sel: 0,
    flags_wr: 1,
    end_instr: 1,
    cycles: 4'd1
};
// 0xBD: CP A,L
ucode_table[8'hbd] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_L,
    reg_dst: REG_NONE,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 0,
    use_alu: 1,
    alu_op: CP,
    alu_src_sel: 0,
    flags_wr: 1,
    end_instr: 1,
    cycles: 4'd1
};
// 0xBE: CP A,M
ucode_table[8'hbe] = '{
    next_state: FETCH,
    addr_src: ADDR_HL,
    reg_src: REG_NONE,
    reg_dst: REG_NONE,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 0,
    use_alu: 1,
    alu_op: CP,
    alu_src_sel: 0,
    flags_wr: 1,
    end_instr: 1,
    cycles: 4'd2
};
// 0xBF: CP A,A
ucode_table[8'hbf] = '{
    next_state: FETCH,
    addr_src: ADDR_NONE,
    reg_src: REG_A,
    reg_dst: REG_NONE,
    use_idu: 0,
    idu_inc_dec: 0,
    idu_pair: IDU_NONE,
    mem_wr: 0,
    use_reg_move: 0,
    use_alu: 1,
    alu_op: CP,
    alu_src_sel: 0,
    flags_wr: 1,
    end_instr: 1,
    cycles: 4'd1
};

`endif
