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

    typedef enum logic [3:0] {
        ADDR_NONE,
        ADDR_BC,
        ADDR_DE,
        ADDR_HL,
        ADDR_SP,
        ADDR_PC,
        ADDR_WZ
    } addr_src_e;

    typedef enum logic [3:0] {
        REG_NONE,
        REG_A,
        REG_F,
        REG_B,
        REG_C,
        REG_D,
        REG_E,
        REG_H,
        REG_L
    } reg_e;

    typedef enum logic [3:0] {
    IDU_NONE,
    IDU_BC,
    IDU_DE,
    IDU_HL,
    IDU_SP,
    IDU_PC,
    IDU_WZ
    } idu_pair_e;

    typedef enum logic [2:0] {
        RESET,
        FETCH,
        MEM_RD,
        MEM_WR,
        INTERNAL,
        PREF_CB,
        HALT_STATE
    } state_e;
    state_e state, next_state;
    logic [1:0] t_state;
    logic [3:0] m_cycle;

    typedef struct packed {
        state_e next_state;
        addr_src_e addr_src;
        reg_e reg_src;
        reg_e reg_dst;
        logic mem_wr;
        logic use_reg_move;
        logic use_idu;
        logic idu_inc_dec;
        idu_pair_e idu_pair;
        logic end_instr;
        logic [3:0] cycles;
    } ucode_entry_t;
    ucode_entry_t curr_entry;

    // microcode table
    ucode_entry_t ucode_table [0:255];
    initial begin
        // initialise all opcodes to nop
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
            use_reg_move: 1,
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
            use_reg_move: 1,
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
            end_instr: 1,
            cycles: 4'd1
        };
        // 0x52: LD D,D
        ucode_table[8'h52] = '{
            next_state: FETCH,
            addr_src: ADDR_NONE,
            reg_src: REG_D,
            reg_dst: REG_B,
            use_idu: 0,
            idu_inc_dec: 0,
            idu_pair: IDU_NONE,
            mem_wr: 0,
            use_reg_move: 1,
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
            use_reg_move: 1,
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
            use_reg_move: 1,
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
            use_reg_move: 1,
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
            use_reg_move: 1,
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
            use_reg_move: 1,
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
            end_instr: 1,
            cycles: 4'd1
        };
    end

    // sequential logic fsm
    always_ff @(posedge clk or negedge arstn) begin
        if (!arstn) begin
            // at reset, the gameboy jumps to the cartridge header at $0100
            // stack ptr is reset to $FFFE
            pc <= 16'h0100;
            sp <= 16'hfffe;
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
                FETCH: next_state = curr_entry.next_state;
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

        // increment pc during fetch (T3)
        if (state == FETCH && t_state == 2'd2) begin
            idu_inc_dec = 1'b1;
            idu_data_in = pc;
        end
        if (curr_entry.use_idu) begin
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
    end

endmodule
