// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vcpu.h for the primary calling header

#include "Vcpu__pch.h"
#include "Vcpu___024root.h"

void Vcpu___024root___eval_act(Vcpu___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vcpu__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcpu___024root___eval_act\n"); );
}

VL_INLINE_OPT void Vcpu___024root___nba_sequent__TOP__0(Vcpu___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vcpu__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcpu___024root___nba_sequent__TOP__0\n"); );
    // Init
    CData/*0:0*/ cpu__DOT__idu_inc_dec;
    cpu__DOT__idu_inc_dec = 0;
    SData/*15:0*/ cpu__DOT__idu_data_in;
    cpu__DOT__idu_data_in = 0;
    CData/*1:0*/ __Vdly__cpu__DOT__t_state;
    __Vdly__cpu__DOT__t_state = 0;
    CData/*7:0*/ __Vdly__cpu__DOT__l;
    __Vdly__cpu__DOT__l = 0;
    CData/*7:0*/ __Vdly__cpu__DOT__h;
    __Vdly__cpu__DOT__h = 0;
    CData/*7:0*/ __Vdly__cpu__DOT__e;
    __Vdly__cpu__DOT__e = 0;
    CData/*7:0*/ __Vdly__cpu__DOT__d;
    __Vdly__cpu__DOT__d = 0;
    CData/*7:0*/ __Vdly__cpu__DOT__c;
    __Vdly__cpu__DOT__c = 0;
    CData/*7:0*/ __Vdly__cpu__DOT__b;
    __Vdly__cpu__DOT__b = 0;
    CData/*7:0*/ __Vdly__cpu__DOT__a;
    __Vdly__cpu__DOT__a = 0;
    IData/*27:0*/ __Vdly__cpu__DOT__curr_entry;
    __Vdly__cpu__DOT__curr_entry = 0;
    SData/*15:0*/ __Vdly__cpu__DOT__pc;
    __Vdly__cpu__DOT__pc = 0;
    // Body
    __Vdly__cpu__DOT__a = vlSelf->cpu__DOT__a;
    __Vdly__cpu__DOT__pc = vlSelf->cpu__DOT__pc;
    __Vdly__cpu__DOT__b = vlSelf->cpu__DOT__b;
    __Vdly__cpu__DOT__c = vlSelf->cpu__DOT__c;
    __Vdly__cpu__DOT__d = vlSelf->cpu__DOT__d;
    __Vdly__cpu__DOT__e = vlSelf->cpu__DOT__e;
    __Vdly__cpu__DOT__h = vlSelf->cpu__DOT__h;
    __Vdly__cpu__DOT__l = vlSelf->cpu__DOT__l;
    __Vdly__cpu__DOT__curr_entry = vlSelf->cpu__DOT__curr_entry;
    __Vdly__cpu__DOT__t_state = vlSelf->cpu__DOT__t_state;
    if ((1U & (~ (IData)(vlSelf->arstn)))) {
        vlSelf->cpu__DOT__sp = 0xfffeU;
    }
    if (vlSelf->arstn) {
        __Vdly__cpu__DOT__t_state = (3U & ((IData)(1U) 
                                           + (IData)(vlSelf->cpu__DOT__t_state)));
        if ((3U == (IData)(vlSelf->cpu__DOT__t_state))) {
            vlSelf->cpu__DOT__m_cycle = ((1U == (IData)(vlSelf->cpu__DOT__state))
                                          ? 0U : (0xfU 
                                                  & ((IData)(1U) 
                                                     + (IData)(vlSelf->cpu__DOT__m_cycle))));
            vlSelf->mem_rd = 0U;
            vlSelf->mem_wr = 0U;
        }
        if ((1U == (IData)(vlSelf->cpu__DOT__state))) {
            if ((0U == (IData)(vlSelf->cpu__DOT__t_state))) {
                vlSelf->mem_addr = vlSelf->cpu__DOT__pc;
                vlSelf->mem_rd = 1U;
            } else if ((1U != (IData)(vlSelf->cpu__DOT__t_state))) {
                if ((2U == (IData)(vlSelf->cpu__DOT__t_state))) {
                    if ((0x800U & vlSelf->cpu__DOT__ucode_table
                         [vlSelf->data_in])) {
                        if ((0x100000U & vlSelf->cpu__DOT__ucode_table
                             [vlSelf->data_in])) {
                            if ((1U & (~ (vlSelf->cpu__DOT__ucode_table
                                          [vlSelf->data_in] 
                                          >> 0x13U)))) {
                                if ((1U & (~ (vlSelf->cpu__DOT__ucode_table
                                              [vlSelf->data_in] 
                                              >> 0x12U)))) {
                                    if ((1U & (~ (vlSelf->cpu__DOT__ucode_table
                                                  [vlSelf->data_in] 
                                                  >> 0x11U)))) {
                                        if ((0x10000U 
                                             & vlSelf->cpu__DOT__ucode_table
                                             [vlSelf->data_in])) {
                                            if ((1U 
                                                 & (~ 
                                                    (vlSelf->cpu__DOT__ucode_table
                                                     [vlSelf->data_in] 
                                                     >> 0xfU)))) {
                                                if (
                                                    (1U 
                                                     & (~ 
                                                        (vlSelf->cpu__DOT__ucode_table
                                                         [vlSelf->data_in] 
                                                         >> 0xeU)))) {
                                                    if (
                                                        (1U 
                                                         & (~ 
                                                            (vlSelf->cpu__DOT__ucode_table
                                                             [vlSelf->data_in] 
                                                             >> 0xdU)))) {
                                                        __Vdly__cpu__DOT__l 
                                                            = vlSelf->cpu__DOT__l;
                                                    }
                                                }
                                            }
                                        } else if (
                                                   (0x8000U 
                                                    & vlSelf->cpu__DOT__ucode_table
                                                    [vlSelf->data_in])) {
                                            if ((0x4000U 
                                                 & vlSelf->cpu__DOT__ucode_table
                                                 [vlSelf->data_in])) {
                                                if (
                                                    (0x2000U 
                                                     & vlSelf->cpu__DOT__ucode_table
                                                     [vlSelf->data_in])) {
                                                    __Vdly__cpu__DOT__h 
                                                        = vlSelf->cpu__DOT__l;
                                                } else {
                                                    __Vdly__cpu__DOT__e 
                                                        = vlSelf->cpu__DOT__l;
                                                }
                                            } else if (
                                                       (0x2000U 
                                                        & vlSelf->cpu__DOT__ucode_table
                                                        [vlSelf->data_in])) {
                                                __Vdly__cpu__DOT__d 
                                                    = vlSelf->cpu__DOT__l;
                                            } else {
                                                __Vdly__cpu__DOT__c 
                                                    = vlSelf->cpu__DOT__l;
                                            }
                                        } else if (
                                                   (0x4000U 
                                                    & vlSelf->cpu__DOT__ucode_table
                                                    [vlSelf->data_in])) {
                                            if ((0x2000U 
                                                 & vlSelf->cpu__DOT__ucode_table
                                                 [vlSelf->data_in])) {
                                                __Vdly__cpu__DOT__b 
                                                    = vlSelf->cpu__DOT__l;
                                            }
                                        } else if (
                                                   (0x2000U 
                                                    & vlSelf->cpu__DOT__ucode_table
                                                    [vlSelf->data_in])) {
                                            __Vdly__cpu__DOT__a 
                                                = vlSelf->cpu__DOT__l;
                                        }
                                    }
                                }
                            }
                        } else if ((0x80000U & vlSelf->cpu__DOT__ucode_table
                                    [vlSelf->data_in])) {
                            if ((0x40000U & vlSelf->cpu__DOT__ucode_table
                                 [vlSelf->data_in])) {
                                if ((0x20000U & vlSelf->cpu__DOT__ucode_table
                                     [vlSelf->data_in])) {
                                    if ((0x10000U & 
                                         vlSelf->cpu__DOT__ucode_table
                                         [vlSelf->data_in])) {
                                        if ((1U & (~ 
                                                   (vlSelf->cpu__DOT__ucode_table
                                                    [vlSelf->data_in] 
                                                    >> 0xfU)))) {
                                            if ((1U 
                                                 & (~ 
                                                    (vlSelf->cpu__DOT__ucode_table
                                                     [vlSelf->data_in] 
                                                     >> 0xeU)))) {
                                                if (
                                                    (1U 
                                                     & (~ 
                                                        (vlSelf->cpu__DOT__ucode_table
                                                         [vlSelf->data_in] 
                                                         >> 0xdU)))) {
                                                    __Vdly__cpu__DOT__l 
                                                        = vlSelf->cpu__DOT__h;
                                                }
                                            }
                                        }
                                    } else if ((0x8000U 
                                                & vlSelf->cpu__DOT__ucode_table
                                                [vlSelf->data_in])) {
                                        if ((0x4000U 
                                             & vlSelf->cpu__DOT__ucode_table
                                             [vlSelf->data_in])) {
                                            if ((0x2000U 
                                                 & vlSelf->cpu__DOT__ucode_table
                                                 [vlSelf->data_in])) {
                                                __Vdly__cpu__DOT__h 
                                                    = vlSelf->cpu__DOT__h;
                                            } else {
                                                __Vdly__cpu__DOT__e 
                                                    = vlSelf->cpu__DOT__h;
                                            }
                                        } else if (
                                                   (0x2000U 
                                                    & vlSelf->cpu__DOT__ucode_table
                                                    [vlSelf->data_in])) {
                                            __Vdly__cpu__DOT__d 
                                                = vlSelf->cpu__DOT__h;
                                        } else {
                                            __Vdly__cpu__DOT__c 
                                                = vlSelf->cpu__DOT__h;
                                        }
                                    } else if ((0x4000U 
                                                & vlSelf->cpu__DOT__ucode_table
                                                [vlSelf->data_in])) {
                                        if ((0x2000U 
                                             & vlSelf->cpu__DOT__ucode_table
                                             [vlSelf->data_in])) {
                                            __Vdly__cpu__DOT__b 
                                                = vlSelf->cpu__DOT__h;
                                        }
                                    } else if ((0x2000U 
                                                & vlSelf->cpu__DOT__ucode_table
                                                [vlSelf->data_in])) {
                                        __Vdly__cpu__DOT__a 
                                            = vlSelf->cpu__DOT__h;
                                    }
                                } else if ((0x10000U 
                                            & vlSelf->cpu__DOT__ucode_table
                                            [vlSelf->data_in])) {
                                    if ((1U & (~ (vlSelf->cpu__DOT__ucode_table
                                                  [vlSelf->data_in] 
                                                  >> 0xfU)))) {
                                        if ((1U & (~ 
                                                   (vlSelf->cpu__DOT__ucode_table
                                                    [vlSelf->data_in] 
                                                    >> 0xeU)))) {
                                            if ((1U 
                                                 & (~ 
                                                    (vlSelf->cpu__DOT__ucode_table
                                                     [vlSelf->data_in] 
                                                     >> 0xdU)))) {
                                                __Vdly__cpu__DOT__l 
                                                    = vlSelf->cpu__DOT__e;
                                            }
                                        }
                                    }
                                } else if ((0x8000U 
                                            & vlSelf->cpu__DOT__ucode_table
                                            [vlSelf->data_in])) {
                                    if ((0x4000U & 
                                         vlSelf->cpu__DOT__ucode_table
                                         [vlSelf->data_in])) {
                                        if ((0x2000U 
                                             & vlSelf->cpu__DOT__ucode_table
                                             [vlSelf->data_in])) {
                                            __Vdly__cpu__DOT__h 
                                                = vlSelf->cpu__DOT__e;
                                        } else {
                                            __Vdly__cpu__DOT__e 
                                                = vlSelf->cpu__DOT__e;
                                        }
                                    } else if ((0x2000U 
                                                & vlSelf->cpu__DOT__ucode_table
                                                [vlSelf->data_in])) {
                                        __Vdly__cpu__DOT__d 
                                            = vlSelf->cpu__DOT__e;
                                    } else {
                                        __Vdly__cpu__DOT__c 
                                            = vlSelf->cpu__DOT__e;
                                    }
                                } else if ((0x4000U 
                                            & vlSelf->cpu__DOT__ucode_table
                                            [vlSelf->data_in])) {
                                    if ((0x2000U & 
                                         vlSelf->cpu__DOT__ucode_table
                                         [vlSelf->data_in])) {
                                        __Vdly__cpu__DOT__b 
                                            = vlSelf->cpu__DOT__e;
                                    }
                                } else if ((0x2000U 
                                            & vlSelf->cpu__DOT__ucode_table
                                            [vlSelf->data_in])) {
                                    __Vdly__cpu__DOT__a 
                                        = vlSelf->cpu__DOT__e;
                                }
                            } else if ((0x20000U & 
                                        vlSelf->cpu__DOT__ucode_table
                                        [vlSelf->data_in])) {
                                if ((0x10000U & vlSelf->cpu__DOT__ucode_table
                                     [vlSelf->data_in])) {
                                    if ((1U & (~ (vlSelf->cpu__DOT__ucode_table
                                                  [vlSelf->data_in] 
                                                  >> 0xfU)))) {
                                        if ((1U & (~ 
                                                   (vlSelf->cpu__DOT__ucode_table
                                                    [vlSelf->data_in] 
                                                    >> 0xeU)))) {
                                            if ((1U 
                                                 & (~ 
                                                    (vlSelf->cpu__DOT__ucode_table
                                                     [vlSelf->data_in] 
                                                     >> 0xdU)))) {
                                                __Vdly__cpu__DOT__l 
                                                    = vlSelf->cpu__DOT__d;
                                            }
                                        }
                                    }
                                } else if ((0x8000U 
                                            & vlSelf->cpu__DOT__ucode_table
                                            [vlSelf->data_in])) {
                                    if ((0x4000U & 
                                         vlSelf->cpu__DOT__ucode_table
                                         [vlSelf->data_in])) {
                                        if ((0x2000U 
                                             & vlSelf->cpu__DOT__ucode_table
                                             [vlSelf->data_in])) {
                                            __Vdly__cpu__DOT__h 
                                                = vlSelf->cpu__DOT__d;
                                        } else {
                                            __Vdly__cpu__DOT__e 
                                                = vlSelf->cpu__DOT__d;
                                        }
                                    } else if ((0x2000U 
                                                & vlSelf->cpu__DOT__ucode_table
                                                [vlSelf->data_in])) {
                                        __Vdly__cpu__DOT__d 
                                            = vlSelf->cpu__DOT__d;
                                    } else {
                                        __Vdly__cpu__DOT__c 
                                            = vlSelf->cpu__DOT__d;
                                    }
                                } else if ((0x4000U 
                                            & vlSelf->cpu__DOT__ucode_table
                                            [vlSelf->data_in])) {
                                    if ((0x2000U & 
                                         vlSelf->cpu__DOT__ucode_table
                                         [vlSelf->data_in])) {
                                        __Vdly__cpu__DOT__b 
                                            = vlSelf->cpu__DOT__d;
                                    }
                                } else if ((0x2000U 
                                            & vlSelf->cpu__DOT__ucode_table
                                            [vlSelf->data_in])) {
                                    __Vdly__cpu__DOT__a 
                                        = vlSelf->cpu__DOT__d;
                                }
                            } else if ((0x10000U & 
                                        vlSelf->cpu__DOT__ucode_table
                                        [vlSelf->data_in])) {
                                if ((1U & (~ (vlSelf->cpu__DOT__ucode_table
                                              [vlSelf->data_in] 
                                              >> 0xfU)))) {
                                    if ((1U & (~ (vlSelf->cpu__DOT__ucode_table
                                                  [vlSelf->data_in] 
                                                  >> 0xeU)))) {
                                        if ((1U & (~ 
                                                   (vlSelf->cpu__DOT__ucode_table
                                                    [vlSelf->data_in] 
                                                    >> 0xdU)))) {
                                            __Vdly__cpu__DOT__l 
                                                = vlSelf->cpu__DOT__c;
                                        }
                                    }
                                }
                            } else if ((0x8000U & vlSelf->cpu__DOT__ucode_table
                                        [vlSelf->data_in])) {
                                if ((0x4000U & vlSelf->cpu__DOT__ucode_table
                                     [vlSelf->data_in])) {
                                    if ((0x2000U & 
                                         vlSelf->cpu__DOT__ucode_table
                                         [vlSelf->data_in])) {
                                        __Vdly__cpu__DOT__h 
                                            = vlSelf->cpu__DOT__c;
                                    } else {
                                        __Vdly__cpu__DOT__e 
                                            = vlSelf->cpu__DOT__c;
                                    }
                                } else if ((0x2000U 
                                            & vlSelf->cpu__DOT__ucode_table
                                            [vlSelf->data_in])) {
                                    __Vdly__cpu__DOT__d 
                                        = vlSelf->cpu__DOT__c;
                                } else {
                                    __Vdly__cpu__DOT__c 
                                        = vlSelf->cpu__DOT__c;
                                }
                            } else if ((0x4000U & vlSelf->cpu__DOT__ucode_table
                                        [vlSelf->data_in])) {
                                if ((0x2000U & vlSelf->cpu__DOT__ucode_table
                                     [vlSelf->data_in])) {
                                    __Vdly__cpu__DOT__b 
                                        = vlSelf->cpu__DOT__c;
                                }
                            } else if ((0x2000U & vlSelf->cpu__DOT__ucode_table
                                        [vlSelf->data_in])) {
                                __Vdly__cpu__DOT__a 
                                    = vlSelf->cpu__DOT__c;
                            }
                        } else if ((0x40000U & vlSelf->cpu__DOT__ucode_table
                                    [vlSelf->data_in])) {
                            if ((0x20000U & vlSelf->cpu__DOT__ucode_table
                                 [vlSelf->data_in])) {
                                if ((0x10000U & vlSelf->cpu__DOT__ucode_table
                                     [vlSelf->data_in])) {
                                    if ((1U & (~ (vlSelf->cpu__DOT__ucode_table
                                                  [vlSelf->data_in] 
                                                  >> 0xfU)))) {
                                        if ((1U & (~ 
                                                   (vlSelf->cpu__DOT__ucode_table
                                                    [vlSelf->data_in] 
                                                    >> 0xeU)))) {
                                            if ((1U 
                                                 & (~ 
                                                    (vlSelf->cpu__DOT__ucode_table
                                                     [vlSelf->data_in] 
                                                     >> 0xdU)))) {
                                                __Vdly__cpu__DOT__l 
                                                    = vlSelf->cpu__DOT__b;
                                            }
                                        }
                                    }
                                } else if ((0x8000U 
                                            & vlSelf->cpu__DOT__ucode_table
                                            [vlSelf->data_in])) {
                                    if ((0x4000U & 
                                         vlSelf->cpu__DOT__ucode_table
                                         [vlSelf->data_in])) {
                                        if ((0x2000U 
                                             & vlSelf->cpu__DOT__ucode_table
                                             [vlSelf->data_in])) {
                                            __Vdly__cpu__DOT__h 
                                                = vlSelf->cpu__DOT__b;
                                        } else {
                                            __Vdly__cpu__DOT__e 
                                                = vlSelf->cpu__DOT__b;
                                        }
                                    } else if ((0x2000U 
                                                & vlSelf->cpu__DOT__ucode_table
                                                [vlSelf->data_in])) {
                                        __Vdly__cpu__DOT__d 
                                            = vlSelf->cpu__DOT__b;
                                    } else {
                                        __Vdly__cpu__DOT__c 
                                            = vlSelf->cpu__DOT__b;
                                    }
                                } else if ((0x4000U 
                                            & vlSelf->cpu__DOT__ucode_table
                                            [vlSelf->data_in])) {
                                    if ((0x2000U & 
                                         vlSelf->cpu__DOT__ucode_table
                                         [vlSelf->data_in])) {
                                        __Vdly__cpu__DOT__b 
                                            = vlSelf->cpu__DOT__b;
                                    }
                                } else if ((0x2000U 
                                            & vlSelf->cpu__DOT__ucode_table
                                            [vlSelf->data_in])) {
                                    __Vdly__cpu__DOT__a 
                                        = vlSelf->cpu__DOT__b;
                                }
                            }
                        } else if ((0x20000U & vlSelf->cpu__DOT__ucode_table
                                    [vlSelf->data_in])) {
                            if ((0x10000U & vlSelf->cpu__DOT__ucode_table
                                 [vlSelf->data_in])) {
                                if ((1U & (~ (vlSelf->cpu__DOT__ucode_table
                                              [vlSelf->data_in] 
                                              >> 0xfU)))) {
                                    if ((1U & (~ (vlSelf->cpu__DOT__ucode_table
                                                  [vlSelf->data_in] 
                                                  >> 0xeU)))) {
                                        if ((1U & (~ 
                                                   (vlSelf->cpu__DOT__ucode_table
                                                    [vlSelf->data_in] 
                                                    >> 0xdU)))) {
                                            __Vdly__cpu__DOT__l 
                                                = vlSelf->cpu__DOT__a;
                                        }
                                    }
                                }
                            } else if ((0x8000U & vlSelf->cpu__DOT__ucode_table
                                        [vlSelf->data_in])) {
                                if ((0x4000U & vlSelf->cpu__DOT__ucode_table
                                     [vlSelf->data_in])) {
                                    if ((0x2000U & 
                                         vlSelf->cpu__DOT__ucode_table
                                         [vlSelf->data_in])) {
                                        __Vdly__cpu__DOT__h 
                                            = vlSelf->cpu__DOT__a;
                                    } else {
                                        __Vdly__cpu__DOT__e 
                                            = vlSelf->cpu__DOT__a;
                                    }
                                } else if ((0x2000U 
                                            & vlSelf->cpu__DOT__ucode_table
                                            [vlSelf->data_in])) {
                                    __Vdly__cpu__DOT__d 
                                        = vlSelf->cpu__DOT__a;
                                } else {
                                    __Vdly__cpu__DOT__c 
                                        = vlSelf->cpu__DOT__a;
                                }
                            } else if ((0x4000U & vlSelf->cpu__DOT__ucode_table
                                        [vlSelf->data_in])) {
                                if ((0x2000U & vlSelf->cpu__DOT__ucode_table
                                     [vlSelf->data_in])) {
                                    __Vdly__cpu__DOT__b 
                                        = vlSelf->cpu__DOT__a;
                                }
                            } else if ((0x2000U & vlSelf->cpu__DOT__ucode_table
                                        [vlSelf->data_in])) {
                                __Vdly__cpu__DOT__a 
                                    = vlSelf->cpu__DOT__a;
                            }
                        }
                    }
                    __Vdly__cpu__DOT__curr_entry = 
                        vlSelf->cpu__DOT__ucode_table
                        [vlSelf->data_in];
                } else {
                    __Vdly__cpu__DOT__pc = vlSelf->cpu__DOT__idu_data_out;
                }
            }
        } else if ((2U == (IData)(vlSelf->cpu__DOT__state))) {
            if ((0U == (IData)(vlSelf->cpu__DOT__t_state))) {
                vlSelf->mem_addr = ((0x1000000U & vlSelf->cpu__DOT__curr_entry)
                                     ? 0U : ((0x800000U 
                                              & vlSelf->cpu__DOT__curr_entry)
                                              ? ((0x400000U 
                                                  & vlSelf->cpu__DOT__curr_entry)
                                                  ? 0U
                                                  : 
                                                 ((0x200000U 
                                                   & vlSelf->cpu__DOT__curr_entry)
                                                   ? (IData)(vlSelf->cpu__DOT__pc)
                                                   : 0U))
                                              : ((0x400000U 
                                                  & vlSelf->cpu__DOT__curr_entry)
                                                  ? 
                                                 ((0x200000U 
                                                   & vlSelf->cpu__DOT__curr_entry)
                                                   ? 
                                                  (((IData)(vlSelf->cpu__DOT__h) 
                                                    << 8U) 
                                                   | (IData)(vlSelf->cpu__DOT__l))
                                                   : 
                                                  (((IData)(vlSelf->cpu__DOT__d) 
                                                    << 8U) 
                                                   | (IData)(vlSelf->cpu__DOT__e)))
                                                  : 
                                                 ((0x200000U 
                                                   & vlSelf->cpu__DOT__curr_entry)
                                                   ? 
                                                  (((IData)(vlSelf->cpu__DOT__b) 
                                                    << 8U) 
                                                   | (IData)(vlSelf->cpu__DOT__c))
                                                   : 0U))));
                vlSelf->mem_rd = 1U;
            } else if ((1U != (IData)(vlSelf->cpu__DOT__t_state))) {
                if ((2U == (IData)(vlSelf->cpu__DOT__t_state))) {
                    if ((0x10000U & vlSelf->cpu__DOT__curr_entry)) {
                        if ((1U & (~ (vlSelf->cpu__DOT__curr_entry 
                                      >> 0xfU)))) {
                            if ((1U & (~ (vlSelf->cpu__DOT__curr_entry 
                                          >> 0xeU)))) {
                                if ((1U & (~ (vlSelf->cpu__DOT__curr_entry 
                                              >> 0xdU)))) {
                                    __Vdly__cpu__DOT__l 
                                        = vlSelf->data_in;
                                }
                            }
                        }
                    } else if ((0x8000U & vlSelf->cpu__DOT__curr_entry)) {
                        if ((0x4000U & vlSelf->cpu__DOT__curr_entry)) {
                            if ((0x2000U & vlSelf->cpu__DOT__curr_entry)) {
                                __Vdly__cpu__DOT__h 
                                    = vlSelf->data_in;
                            } else {
                                __Vdly__cpu__DOT__e 
                                    = vlSelf->data_in;
                            }
                        } else if ((0x2000U & vlSelf->cpu__DOT__curr_entry)) {
                            __Vdly__cpu__DOT__d = vlSelf->data_in;
                        } else {
                            __Vdly__cpu__DOT__c = vlSelf->data_in;
                        }
                    } else if ((0x4000U & vlSelf->cpu__DOT__curr_entry)) {
                        if ((0x2000U & vlSelf->cpu__DOT__curr_entry)) {
                            __Vdly__cpu__DOT__b = vlSelf->data_in;
                        }
                    } else if ((0x2000U & vlSelf->cpu__DOT__curr_entry)) {
                        __Vdly__cpu__DOT__a = vlSelf->data_in;
                    }
                }
            }
        }
        vlSelf->cpu__DOT__state = vlSelf->cpu__DOT__next_state;
    } else {
        vlSelf->cpu__DOT__m_cycle = 0U;
        __Vdly__cpu__DOT__pc = 0x100U;
        __Vdly__cpu__DOT__t_state = 0U;
        vlSelf->mem_addr = 0U;
        vlSelf->mem_rd = 0U;
        vlSelf->mem_wr = 0U;
        __Vdly__cpu__DOT__curr_entry = 0U;
        vlSelf->cpu__DOT__state = 1U;
    }
    vlSelf->cpu__DOT__a = __Vdly__cpu__DOT__a;
    vlSelf->cpu__DOT__l = __Vdly__cpu__DOT__l;
    vlSelf->cpu__DOT__h = __Vdly__cpu__DOT__h;
    vlSelf->cpu__DOT__e = __Vdly__cpu__DOT__e;
    vlSelf->cpu__DOT__d = __Vdly__cpu__DOT__d;
    vlSelf->cpu__DOT__c = __Vdly__cpu__DOT__c;
    vlSelf->cpu__DOT__b = __Vdly__cpu__DOT__b;
    vlSelf->cpu__DOT__pc = __Vdly__cpu__DOT__pc;
    vlSelf->cpu__DOT__t_state = __Vdly__cpu__DOT__t_state;
    vlSelf->cpu__DOT__curr_entry = __Vdly__cpu__DOT__curr_entry;
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

void Vcpu___024root___eval_nba(Vcpu___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vcpu__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcpu___024root___eval_nba\n"); );
    // Body
    if ((1ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vcpu___024root___nba_sequent__TOP__0(vlSelf);
    }
}

void Vcpu___024root___eval_triggers__act(Vcpu___024root* vlSelf);

bool Vcpu___024root___eval_phase__act(Vcpu___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vcpu__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcpu___024root___eval_phase__act\n"); );
    // Init
    VlTriggerVec<1> __VpreTriggered;
    CData/*0:0*/ __VactExecute;
    // Body
    Vcpu___024root___eval_triggers__act(vlSelf);
    __VactExecute = vlSelf->__VactTriggered.any();
    if (__VactExecute) {
        __VpreTriggered.andNot(vlSelf->__VactTriggered, vlSelf->__VnbaTriggered);
        vlSelf->__VnbaTriggered.thisOr(vlSelf->__VactTriggered);
        Vcpu___024root___eval_act(vlSelf);
    }
    return (__VactExecute);
}

bool Vcpu___024root___eval_phase__nba(Vcpu___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vcpu__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcpu___024root___eval_phase__nba\n"); );
    // Init
    CData/*0:0*/ __VnbaExecute;
    // Body
    __VnbaExecute = vlSelf->__VnbaTriggered.any();
    if (__VnbaExecute) {
        Vcpu___024root___eval_nba(vlSelf);
        vlSelf->__VnbaTriggered.clear();
    }
    return (__VnbaExecute);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vcpu___024root___dump_triggers__nba(Vcpu___024root* vlSelf);
#endif  // VL_DEBUG
#ifdef VL_DEBUG
VL_ATTR_COLD void Vcpu___024root___dump_triggers__act(Vcpu___024root* vlSelf);
#endif  // VL_DEBUG

void Vcpu___024root___eval(Vcpu___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vcpu__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcpu___024root___eval\n"); );
    // Init
    IData/*31:0*/ __VnbaIterCount;
    CData/*0:0*/ __VnbaContinue;
    // Body
    __VnbaIterCount = 0U;
    __VnbaContinue = 1U;
    while (__VnbaContinue) {
        if (VL_UNLIKELY((0x64U < __VnbaIterCount))) {
#ifdef VL_DEBUG
            Vcpu___024root___dump_triggers__nba(vlSelf);
#endif
            VL_FATAL_MT("rtl/cpu.sv", 1, "", "NBA region did not converge.");
        }
        __VnbaIterCount = ((IData)(1U) + __VnbaIterCount);
        __VnbaContinue = 0U;
        vlSelf->__VactIterCount = 0U;
        vlSelf->__VactContinue = 1U;
        while (vlSelf->__VactContinue) {
            if (VL_UNLIKELY((0x64U < vlSelf->__VactIterCount))) {
#ifdef VL_DEBUG
                Vcpu___024root___dump_triggers__act(vlSelf);
#endif
                VL_FATAL_MT("rtl/cpu.sv", 1, "", "Active region did not converge.");
            }
            vlSelf->__VactIterCount = ((IData)(1U) 
                                       + vlSelf->__VactIterCount);
            vlSelf->__VactContinue = 0U;
            if (Vcpu___024root___eval_phase__act(vlSelf)) {
                vlSelf->__VactContinue = 1U;
            }
        }
        if (Vcpu___024root___eval_phase__nba(vlSelf)) {
            __VnbaContinue = 1U;
        }
    }
}

#ifdef VL_DEBUG
void Vcpu___024root___eval_debug_assertions(Vcpu___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vcpu__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vcpu___024root___eval_debug_assertions\n"); );
    // Body
    if (VL_UNLIKELY((vlSelf->clk & 0xfeU))) {
        Verilated::overWidthError("clk");}
    if (VL_UNLIKELY((vlSelf->arstn & 0xfeU))) {
        Verilated::overWidthError("arstn");}
}
#endif  // VL_DEBUG
