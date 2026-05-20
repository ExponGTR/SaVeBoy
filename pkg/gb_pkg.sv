`timescale 1ns / 1ps
package gb_pkg;

    // address sources
    typedef enum logic [3:0] {
        ADDR_NONE,
        ADDR_BC,
        ADDR_DE,
        ADDR_HL,
        ADDR_SP,
        ADDR_PC,
        ADDR_WZ
    } addr_src_e;

    // registers
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

    // idu pair sel
    typedef enum logic [3:0] {
    IDU_NONE,
    IDU_BC,
    IDU_DE,
    IDU_HL,
    IDU_SP,
    IDU_PC,
    IDU_WZ
    } idu_pair_e;

    // machine state
    typedef enum logic [2:0] {
        RESET,
        FETCH,
        MEM_RD,
        MEM_WR,
        INTERNAL,
        PREF_CB,
        HALT_STATE
    } state_e;

    // alu operations
    typedef enum logic [3:0] {
        ADD,
        ADC,
        SUB,
        SBC,
        AND,
        XOR,
        OR,
        CP,
        INC,
        DEC,
        DAA,
        ALU_NONE
    } alu_op_e;

    // microcode entry structure
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
        logic use_alu;
        alu_op_e alu_op;
        logic alu_src_sel; // 0->reg, 1->imm
        logic flags_wr;
        logic end_instr;
        logic [3:0] cycles;
    } ucode_entry_t;
endpackage