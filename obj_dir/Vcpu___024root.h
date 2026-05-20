// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vcpu.h for the primary calling header

#ifndef VERILATED_VCPU___024ROOT_H_
#define VERILATED_VCPU___024ROOT_H_  // guard

#include "verilated.h"


class Vcpu__Syms;

class alignas(VL_CACHE_LINE_BYTES) Vcpu___024root final : public VerilatedModule {
  public:

    // DESIGN SPECIFIC STATE
    VL_IN8(clk,0,0);
    VL_IN8(arstn,0,0);
    VL_OUT8(mem_rd,0,0);
    VL_OUT8(mem_wr,0,0);
    VL_IN8(data_in,7,0);
    VL_OUT8(data_out,7,0);
    CData/*7:0*/ cpu__DOT__a;
    CData/*7:0*/ cpu__DOT__b;
    CData/*7:0*/ cpu__DOT__c;
    CData/*7:0*/ cpu__DOT__d;
    CData/*7:0*/ cpu__DOT__e;
    CData/*7:0*/ cpu__DOT__h;
    CData/*7:0*/ cpu__DOT__l;
    CData/*7:0*/ cpu__DOT__w;
    CData/*7:0*/ cpu__DOT__z;
    CData/*2:0*/ cpu__DOT__state;
    CData/*2:0*/ cpu__DOT__next_state;
    CData/*1:0*/ cpu__DOT__t_state;
    CData/*3:0*/ cpu__DOT__m_cycle;
    CData/*0:0*/ __VstlFirstIteration;
    CData/*0:0*/ __Vtrigprevexpr___TOP__arstn__0;
    CData/*0:0*/ __Vtrigprevexpr___TOP__clk__0;
    CData/*0:0*/ __VactContinue;
    VL_OUT16(mem_addr,15,0);
    SData/*15:0*/ cpu__DOT__pc;
    SData/*15:0*/ cpu__DOT__sp;
    SData/*15:0*/ cpu__DOT__idu_data_out;
    IData/*27:0*/ cpu__DOT__curr_entry;
    IData/*31:0*/ __VactIterCount;
    VlUnpacked<IData/*27:0*/, 256> cpu__DOT__ucode_table;
    VlTriggerVec<1> __VstlTriggered;
    VlTriggerVec<1> __VactTriggered;
    VlTriggerVec<1> __VnbaTriggered;

    // INTERNAL VARIABLES
    Vcpu__Syms* const vlSymsp;

    // CONSTRUCTORS
    Vcpu___024root(Vcpu__Syms* symsp, const char* v__name);
    ~Vcpu___024root();
    VL_UNCOPYABLE(Vcpu___024root);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
};


#endif  // guard
