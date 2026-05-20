// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vcpu.h for the primary calling header

#include "Vcpu__pch.h"
#include "Vcpu___024root.h"

VL_ATTR_COLD void Vcpu___024root___eval_static(Vcpu___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vcpu__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcpu___024root___eval_static\n"); );
}

VL_ATTR_COLD void Vcpu___024root___eval_initial__TOP(Vcpu___024root* vlSelf);

VL_ATTR_COLD void Vcpu___024root___eval_initial(Vcpu___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vcpu__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcpu___024root___eval_initial\n"); );
    // Body
    Vcpu___024root___eval_initial__TOP(vlSelf);
    vlSelf->__Vtrigprevexpr___TOP__arstn__0 = vlSelf->arstn;
    vlSelf->__Vtrigprevexpr___TOP__clk__0 = vlSelf->clk;
}

VL_ATTR_COLD void Vcpu___024root___eval_initial__TOP(Vcpu___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vcpu__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcpu___024root___eval_initial__TOP\n"); );
    // Init
    IData/*31:0*/ cpu__DOT__unnamedblk1__DOT__i;
    cpu__DOT__unnamedblk1__DOT__i = 0;
    // Body
    cpu__DOT__unnamedblk1__DOT__i = 0U;
    while (VL_GTS_III(32, 0x100U, cpu__DOT__unnamedblk1__DOT__i)) {
        vlSelf->cpu__DOT__ucode_table[(0xffU & cpu__DOT__unnamedblk1__DOT__i)] = 0x2000011U;
        cpu__DOT__unnamedblk1__DOT__i = ((IData)(1U) 
                                         + cpu__DOT__unnamedblk1__DOT__i);
    }
    vlSelf->cpu__DOT__ucode_table[0x40U] = 0x2066811U;
    vlSelf->cpu__DOT__ucode_table[0x41U] = 0x2086811U;
    vlSelf->cpu__DOT__ucode_table[0x42U] = 0x20a6811U;
    vlSelf->cpu__DOT__ucode_table[0x43U] = 0x20c6811U;
    vlSelf->cpu__DOT__ucode_table[0x44U] = 0x20e6811U;
    vlSelf->cpu__DOT__ucode_table[0x45U] = 0x2106811U;
    vlSelf->cpu__DOT__ucode_table[0x46U] = 0x4606812U;
    vlSelf->cpu__DOT__ucode_table[0x47U] = 0x2026811U;
    vlSelf->cpu__DOT__ucode_table[0x48U] = 0x2068811U;
    vlSelf->cpu__DOT__ucode_table[0x49U] = 0x2088811U;
    vlSelf->cpu__DOT__ucode_table[0x4aU] = 0x20a8811U;
    vlSelf->cpu__DOT__ucode_table[0x4bU] = 0x20c8811U;
    vlSelf->cpu__DOT__ucode_table[0x4cU] = 0x20e8811U;
    vlSelf->cpu__DOT__ucode_table[0x4dU] = 0x2108811U;
    vlSelf->cpu__DOT__ucode_table[0x4eU] = 0x4608812U;
    vlSelf->cpu__DOT__ucode_table[0x4fU] = 0x2028811U;
    vlSelf->cpu__DOT__ucode_table[0x50U] = 0x206a811U;
    vlSelf->cpu__DOT__ucode_table[0x51U] = 0x208a811U;
    vlSelf->cpu__DOT__ucode_table[0x52U] = 0x20a6811U;
    vlSelf->cpu__DOT__ucode_table[0x53U] = 0x20ca811U;
    vlSelf->cpu__DOT__ucode_table[0x54U] = 0x20ea811U;
    vlSelf->cpu__DOT__ucode_table[0x55U] = 0x210a811U;
    vlSelf->cpu__DOT__ucode_table[0x56U] = 0x460a812U;
    vlSelf->cpu__DOT__ucode_table[0x57U] = 0x202a811U;
    vlSelf->cpu__DOT__ucode_table[0x58U] = 0x206c811U;
    vlSelf->cpu__DOT__ucode_table[0x59U] = 0x208c811U;
    vlSelf->cpu__DOT__ucode_table[0x5aU] = 0x20ac811U;
    vlSelf->cpu__DOT__ucode_table[0x5bU] = 0x20cc811U;
    vlSelf->cpu__DOT__ucode_table[0x5cU] = 0x20ec811U;
    vlSelf->cpu__DOT__ucode_table[0x5dU] = 0x210c811U;
    vlSelf->cpu__DOT__ucode_table[0x5eU] = 0x460c812U;
    vlSelf->cpu__DOT__ucode_table[0x5fU] = 0x202c811U;
    vlSelf->cpu__DOT__ucode_table[0x60U] = 0x206e811U;
    vlSelf->cpu__DOT__ucode_table[0x61U] = 0x208e811U;
    vlSelf->cpu__DOT__ucode_table[0x62U] = 0x20ae811U;
    vlSelf->cpu__DOT__ucode_table[0x63U] = 0x20ce811U;
    vlSelf->cpu__DOT__ucode_table[0x64U] = 0x20ee811U;
    vlSelf->cpu__DOT__ucode_table[0x65U] = 0x210e811U;
    vlSelf->cpu__DOT__ucode_table[0x66U] = 0x460e812U;
    vlSelf->cpu__DOT__ucode_table[0x67U] = 0x202e811U;
    vlSelf->cpu__DOT__ucode_table[0x68U] = 0x2070811U;
    vlSelf->cpu__DOT__ucode_table[0x69U] = 0x2090811U;
    vlSelf->cpu__DOT__ucode_table[0x6aU] = 0x20b0811U;
    vlSelf->cpu__DOT__ucode_table[0x6bU] = 0x20d0811U;
    vlSelf->cpu__DOT__ucode_table[0x6cU] = 0x20f0811U;
    vlSelf->cpu__DOT__ucode_table[0x6dU] = 0x2110811U;
    vlSelf->cpu__DOT__ucode_table[0x6eU] = 0x4610812U;
    vlSelf->cpu__DOT__ucode_table[0x6fU] = 0x2030811U;
    vlSelf->cpu__DOT__ucode_table[0x78U] = 0x2062811U;
    vlSelf->cpu__DOT__ucode_table[0x79U] = 0x2082811U;
    vlSelf->cpu__DOT__ucode_table[0x7aU] = 0x20a2811U;
    vlSelf->cpu__DOT__ucode_table[0x7bU] = 0x20c2811U;
    vlSelf->cpu__DOT__ucode_table[0x7cU] = 0x20e2811U;
    vlSelf->cpu__DOT__ucode_table[0x7dU] = 0x2102811U;
    vlSelf->cpu__DOT__ucode_table[0x7eU] = 0x4602812U;
    vlSelf->cpu__DOT__ucode_table[0x7fU] = 0x2022811U;
}

VL_ATTR_COLD void Vcpu___024root___eval_final(Vcpu___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vcpu__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcpu___024root___eval_final\n"); );
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vcpu___024root___dump_triggers__stl(Vcpu___024root* vlSelf);
#endif  // VL_DEBUG
VL_ATTR_COLD bool Vcpu___024root___eval_phase__stl(Vcpu___024root* vlSelf);

VL_ATTR_COLD void Vcpu___024root___eval_settle(Vcpu___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vcpu__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcpu___024root___eval_settle\n"); );
    // Init
    IData/*31:0*/ __VstlIterCount;
    CData/*0:0*/ __VstlContinue;
    // Body
    __VstlIterCount = 0U;
    vlSelf->__VstlFirstIteration = 1U;
    __VstlContinue = 1U;
    while (__VstlContinue) {
        if (VL_UNLIKELY((0x64U < __VstlIterCount))) {
#ifdef VL_DEBUG
            Vcpu___024root___dump_triggers__stl(vlSelf);
#endif
            VL_FATAL_MT("rtl/cpu.sv", 1, "", "Settle region did not converge.");
        }
        __VstlIterCount = ((IData)(1U) + __VstlIterCount);
        __VstlContinue = 0U;
        if (Vcpu___024root___eval_phase__stl(vlSelf)) {
            __VstlContinue = 1U;
        }
        vlSelf->__VstlFirstIteration = 0U;
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vcpu___024root___dump_triggers__stl(Vcpu___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vcpu__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcpu___024root___dump_triggers__stl\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VstlTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VstlTriggered.word(0U))) {
        VL_DBG_MSGF("         'stl' region trigger index 0 is active: Internal 'stl' trigger - first iteration\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void Vcpu___024root___stl_sequent__TOP__0(Vcpu___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vcpu__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcpu___024root___stl_sequent__TOP__0\n"); );
    // Init
    CData/*0:0*/ cpu__DOT__idu_inc_dec;
    cpu__DOT__idu_inc_dec = 0;
    SData/*15:0*/ cpu__DOT__idu_data_in;
    cpu__DOT__idu_data_in = 0;
    // Body
    vlSelf->cpu__DOT__next_state = vlSelf->cpu__DOT__state;
    if ((3U == (IData)(vlSelf->cpu__DOT__t_state))) {
        vlSelf->cpu__DOT__next_state = (7U & ((4U & (IData)(vlSelf->cpu__DOT__state))
                                               ? ((2U 
                                                   & (IData)(vlSelf->cpu__DOT__state))
                                                   ? 1U
                                                   : 
                                                  ((1U 
                                                    & (IData)(vlSelf->cpu__DOT__state))
                                                    ? 1U
                                                    : 
                                                   ((0x10U 
                                                     & vlSelf->cpu__DOT__curr_entry)
                                                     ? 1U
                                                     : 
                                                    (vlSelf->cpu__DOT__curr_entry 
                                                     >> 0x19U))))
                                               : ((2U 
                                                   & (IData)(vlSelf->cpu__DOT__state))
                                                   ? 
                                                  ((0x10U 
                                                    & vlSelf->cpu__DOT__curr_entry)
                                                    ? 1U
                                                    : 
                                                   (vlSelf->cpu__DOT__curr_entry 
                                                    >> 0x19U))
                                                   : 
                                                  ((1U 
                                                    & (IData)(vlSelf->cpu__DOT__state))
                                                    ? 
                                                   (vlSelf->cpu__DOT__curr_entry 
                                                    >> 0x19U)
                                                    : 1U))));
    }
    cpu__DOT__idu_inc_dec = 0U;
    if (((1U == (IData)(vlSelf->cpu__DOT__state)) & 
         (2U == (IData)(vlSelf->cpu__DOT__t_state)))) {
        cpu__DOT__idu_inc_dec = 1U;
        cpu__DOT__idu_data_in = 0U;
        cpu__DOT__idu_data_in = vlSelf->cpu__DOT__pc;
    } else {
        cpu__DOT__idu_data_in = 0U;
    }
    if ((0x400U & vlSelf->cpu__DOT__curr_entry)) {
        cpu__DOT__idu_inc_dec = (1U & (vlSelf->cpu__DOT__curr_entry 
                                       >> 9U));
        if ((1U & (~ (vlSelf->cpu__DOT__curr_entry 
                      >> 8U)))) {
            if ((0x80U & vlSelf->cpu__DOT__curr_entry)) {
                if ((0x40U & vlSelf->cpu__DOT__curr_entry)) {
                    if ((1U & (~ (vlSelf->cpu__DOT__curr_entry 
                                  >> 5U)))) {
                        cpu__DOT__idu_data_in = (((IData)(vlSelf->cpu__DOT__w) 
                                                  << 8U) 
                                                 | (IData)(vlSelf->cpu__DOT__z));
                    }
                } else {
                    cpu__DOT__idu_data_in = ((0x20U 
                                              & vlSelf->cpu__DOT__curr_entry)
                                              ? (IData)(vlSelf->cpu__DOT__pc)
                                              : (IData)(vlSelf->cpu__DOT__sp));
                }
            } else if ((0x40U & vlSelf->cpu__DOT__curr_entry)) {
                cpu__DOT__idu_data_in = ((0x20U & vlSelf->cpu__DOT__curr_entry)
                                          ? (((IData)(vlSelf->cpu__DOT__h) 
                                              << 8U) 
                                             | (IData)(vlSelf->cpu__DOT__l))
                                          : (((IData)(vlSelf->cpu__DOT__d) 
                                              << 8U) 
                                             | (IData)(vlSelf->cpu__DOT__e)));
            } else if ((0x20U & vlSelf->cpu__DOT__curr_entry)) {
                cpu__DOT__idu_data_in = (((IData)(vlSelf->cpu__DOT__b) 
                                          << 8U) | (IData)(vlSelf->cpu__DOT__c));
            }
        }
    }
    if (cpu__DOT__idu_inc_dec) {
        vlSelf->cpu__DOT__idu_data_out = (0xffffU & 
                                          ((IData)(1U) 
                                           + (IData)(cpu__DOT__idu_data_in)));
    } else if ((1U & (~ (IData)(cpu__DOT__idu_inc_dec)))) {
        vlSelf->cpu__DOT__idu_data_out = (0xffffU & 
                                          ((IData)(cpu__DOT__idu_data_in) 
                                           - (IData)(1U)));
    }
}

VL_ATTR_COLD void Vcpu___024root___eval_stl(Vcpu___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vcpu__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcpu___024root___eval_stl\n"); );
    // Body
    if ((1ULL & vlSelf->__VstlTriggered.word(0U))) {
        Vcpu___024root___stl_sequent__TOP__0(vlSelf);
    }
}

VL_ATTR_COLD void Vcpu___024root___eval_triggers__stl(Vcpu___024root* vlSelf);

VL_ATTR_COLD bool Vcpu___024root___eval_phase__stl(Vcpu___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vcpu__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcpu___024root___eval_phase__stl\n"); );
    // Init
    CData/*0:0*/ __VstlExecute;
    // Body
    Vcpu___024root___eval_triggers__stl(vlSelf);
    __VstlExecute = vlSelf->__VstlTriggered.any();
    if (__VstlExecute) {
        Vcpu___024root___eval_stl(vlSelf);
    }
    return (__VstlExecute);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vcpu___024root___dump_triggers__act(Vcpu___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vcpu__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcpu___024root___dump_triggers__act\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VactTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VactTriggered.word(0U))) {
        VL_DBG_MSGF("         'act' region trigger index 0 is active: @(negedge arstn or posedge clk)\n");
    }
}
#endif  // VL_DEBUG

#ifdef VL_DEBUG
VL_ATTR_COLD void Vcpu___024root___dump_triggers__nba(Vcpu___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vcpu__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcpu___024root___dump_triggers__nba\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VnbaTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VnbaTriggered.word(0U))) {
        VL_DBG_MSGF("         'nba' region trigger index 0 is active: @(negedge arstn or posedge clk)\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void Vcpu___024root___ctor_var_reset(Vcpu___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vcpu__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcpu___024root___ctor_var_reset\n"); );
    // Body
    vlSelf->clk = VL_RAND_RESET_I(1);
    vlSelf->arstn = VL_RAND_RESET_I(1);
    vlSelf->mem_addr = VL_RAND_RESET_I(16);
    vlSelf->mem_rd = VL_RAND_RESET_I(1);
    vlSelf->mem_wr = VL_RAND_RESET_I(1);
    vlSelf->data_in = VL_RAND_RESET_I(8);
    vlSelf->data_out = VL_RAND_RESET_I(8);
    vlSelf->cpu__DOT__a = VL_RAND_RESET_I(8);
    vlSelf->cpu__DOT__b = VL_RAND_RESET_I(8);
    vlSelf->cpu__DOT__c = VL_RAND_RESET_I(8);
    vlSelf->cpu__DOT__d = VL_RAND_RESET_I(8);
    vlSelf->cpu__DOT__e = VL_RAND_RESET_I(8);
    vlSelf->cpu__DOT__h = VL_RAND_RESET_I(8);
    vlSelf->cpu__DOT__l = VL_RAND_RESET_I(8);
    vlSelf->cpu__DOT__pc = VL_RAND_RESET_I(16);
    vlSelf->cpu__DOT__sp = VL_RAND_RESET_I(16);
    vlSelf->cpu__DOT__w = VL_RAND_RESET_I(8);
    vlSelf->cpu__DOT__z = VL_RAND_RESET_I(8);
    vlSelf->cpu__DOT__idu_data_out = VL_RAND_RESET_I(16);
    vlSelf->cpu__DOT__state = VL_RAND_RESET_I(3);
    vlSelf->cpu__DOT__next_state = VL_RAND_RESET_I(3);
    vlSelf->cpu__DOT__t_state = VL_RAND_RESET_I(2);
    vlSelf->cpu__DOT__m_cycle = VL_RAND_RESET_I(4);
    vlSelf->cpu__DOT__curr_entry = VL_RAND_RESET_I(28);
    for (int __Vi0 = 0; __Vi0 < 256; ++__Vi0) {
        vlSelf->cpu__DOT__ucode_table[__Vi0] = VL_RAND_RESET_I(28);
    }
    vlSelf->__Vtrigprevexpr___TOP__arstn__0 = VL_RAND_RESET_I(1);
    vlSelf->__Vtrigprevexpr___TOP__clk__0 = VL_RAND_RESET_I(1);
}
