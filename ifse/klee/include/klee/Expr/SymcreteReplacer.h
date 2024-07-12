
//===-- SymcreteAndExtOpFilter.h -------------------------------------------*- C++ -*-===//
//
//                     The KLEE Symbolic Virtual Machine
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//

#ifndef KLEE_SYMCRETEANDEXTOPFILTER_H
#define KLEE_SYMCRETEANDEXTOPFILTER_H

#include "ExprHashMap.h"
#include "klee/Expr/Constraints.h"
#include "klee/Expr/Expr.h"
#include "klee/Expr/ExprPPrinter.h"
#include "klee/Expr/ExprVisitor.h"
#include "klee/Solver/Solver.h"
#include "klee/Support/ErrorHandling.h"
#include "llvm/Support/raw_ostream.h"

namespace klee {
    class SymcreteReplacer: public ExprVisitor {
    private:
        const ExecutionState *state;
    public:
        explicit SymcreteReplacer(const ExecutionState *state) : 
            ExprVisitor(true), state(state) {}
        Action visitExpr(const Expr &) override;
    };
}

#endif 