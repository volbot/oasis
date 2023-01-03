; ModuleID = 'probe1.938f6d0c-cgu.0'
source_filename = "probe1.938f6d0c-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"core::fmt::Opaque" = type {}
%"core::fmt::Formatter<'_>" = type { { i64, i64 }, { i64, i64 }, { {}*, [3 x i64]* }, i32, i32, i8, [7 x i8] }
%"core::fmt::Arguments<'_>" = type { { [0 x { [0 x i8]*, i64 }]*, i64 }, { i64*, i64 }, { [0 x { i8*, i64* }]*, i64 } }
%"core::panic::location::Location<'_>" = type { { [0 x i8]*, i64 }, i32, i32 }
%"alloc::string::String" = type { %"alloc::vec::Vec<u8>" }
%"alloc::vec::Vec<u8>" = type { { i8*, i64 }, i64 }
%"core::ptr::metadata::PtrComponents<u8>" = type { {}*, {} }
%"core::ptr::metadata::PtrRepr<u8>" = type { [1 x i64] }
%"core::ptr::metadata::PtrRepr<[u8]>" = type { [2 x i64] }
%"alloc::alloc::Global" = type {}
%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>" = type { [2 x i64], i64 }
%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some" = type { { i8*, { i64, i64 } } }
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [6 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@alloc3 = private unnamed_addr constant <{}> zeroinitializer, align 8
@alloc9 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"invalid args" }>, align 1
@alloc10 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [12 x i8] }>, <{ [12 x i8] }>* @alloc9, i32 0, i32 0, i32 0), [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@alloc84 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/69f9c33d71c871fc16ac445211281c6e7a340943/library/core/src/fmt/mod.rs" }>, align 1
@alloc85 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc84, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\8C\01\00\00\0D\00\00\00" }>, align 8
@alloc103 = private unnamed_addr constant <{ [80 x i8] }> <{ [80 x i8] c"/rustc/69f9c33d71c871fc16ac445211281c6e7a340943/library/core/src/alloc/layout.rs" }>, align 1
@alloc104 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [80 x i8] }>, <{ [80 x i8] }>* @alloc103, i32 0, i32 0, i32 0), [16 x i8] c"P\00\00\00\00\00\00\00\B6\01\00\00)\00\00\00" }>, align 8
@str.0 = internal constant [25 x i8] c"attempt to divide by zero"
@alloc105 = private unnamed_addr constant <{ [76 x i8] }> <{ [76 x i8] c"/rustc/69f9c33d71c871fc16ac445211281c6e7a340943/library/alloc/src/raw_vec.rs" }>, align 1
@alloc106 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [76 x i8] }>, <{ [76 x i8] }>* @alloc105, i32 0, i32 0, i32 0), [16 x i8] c"L\00\00\00\00\00\00\00\F7\00\00\00;\00\00\00" }>, align 8
@alloc4 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* bitcast (<{}>* @alloc3 to i8*), [8 x i8] zeroinitializer }>, align 8
@alloc6 = private unnamed_addr constant <{ [8 x i8] }> zeroinitializer, align 8

; <core::ptr::non_null::NonNull<T> as core::convert::From<core::ptr::unique::Unique<T>>>::from
; Function Attrs: inlinehint nonlazybind uwtable
define i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17ha48098460fe67b6eE"(i8* %unique) unnamed_addr #0 {
start:
  %0 = alloca i8*, align 8
  store i8* %unique, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !2, !noundef !2
  ret i8* %1
}

; core::fmt::ArgumentV1::new_lower_exp
; Function Attrs: inlinehint nonlazybind uwtable
define { i8*, i64* } @_ZN4core3fmt10ArgumentV113new_lower_exp17h018b5e77d0c85ee1E(i64* align 8 %x) unnamed_addr #0 {
start:
  %0 = alloca %"core::fmt::Opaque"*, align 8
  %1 = alloca i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter<'_>"*)*, align 8
  %2 = alloca { i8*, i64* }, align 8
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter<'_>"*)* bitcast (i1 (i64*, %"core::fmt::Formatter<'_>"*)* @"_ZN4core3fmt3num3imp55_$LT$impl$u20$core..fmt..LowerExp$u20$for$u20$isize$GT$3fmt17hc7d777e55d001d5aE" to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter<'_>"*)*), i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter<'_>"*)** %1, align 8
  %_4 = load i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter<'_>"*)*, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter<'_>"*)** %1, align 8, !nonnull !2, !noundef !2
  br label %bb1

bb1:                                              ; preds = %start
  %3 = bitcast i64* %x to %"core::fmt::Opaque"*
  store %"core::fmt::Opaque"* %3, %"core::fmt::Opaque"** %0, align 8
  %_6 = load %"core::fmt::Opaque"*, %"core::fmt::Opaque"** %0, align 8, !nonnull !2, !align !3, !noundef !2
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = bitcast { i8*, i64* }* %2 to %"core::fmt::Opaque"**
  store %"core::fmt::Opaque"* %_6, %"core::fmt::Opaque"** %4, align 8
  %5 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %6 = bitcast i64** %5 to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter<'_>"*)**
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter<'_>"*)* %_4, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter<'_>"*)** %6, align 8
  %7 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8, !nonnull !2, !align !3, !noundef !2
  %9 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %10 = load i64*, i64** %9, align 8, !nonnull !2, !noundef !2
  %11 = insertvalue { i8*, i64* } undef, i8* %8, 0
  %12 = insertvalue { i8*, i64* } %11, i64* %10, 1
  ret { i8*, i64* } %12
}

; core::fmt::Arguments::as_str
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i8*, i64 } @_ZN4core3fmt9Arguments6as_str17h8ab29bc8353fbcbfE(%"core::fmt::Arguments<'_>"* align 8 %self) unnamed_addr #0 {
start:
  %_2 = alloca { { [0 x { [0 x i8]*, i64 }]*, i64 }, { [0 x { i8*, i64* }]*, i64 } }, align 8
  %0 = alloca { i8*, i64 }, align 8
  %1 = bitcast %"core::fmt::Arguments<'_>"* %self to { [0 x { [0 x i8]*, i64 }]*, i64 }*
  %2 = getelementptr inbounds { [0 x { [0 x i8]*, i64 }]*, i64 }, { [0 x { [0 x i8]*, i64 }]*, i64 }* %1, i32 0, i32 0
  %_3.0 = load [0 x { [0 x i8]*, i64 }]*, [0 x { [0 x i8]*, i64 }]** %2, align 8, !nonnull !2, !align !4, !noundef !2
  %3 = getelementptr inbounds { [0 x { [0 x i8]*, i64 }]*, i64 }, { [0 x { [0 x i8]*, i64 }]*, i64 }* %1, i32 0, i32 1
  %_3.1 = load i64, i64* %3, align 8
  %4 = getelementptr inbounds %"core::fmt::Arguments<'_>", %"core::fmt::Arguments<'_>"* %self, i32 0, i32 2
  %5 = getelementptr inbounds { [0 x { i8*, i64* }]*, i64 }, { [0 x { i8*, i64* }]*, i64 }* %4, i32 0, i32 0
  %_4.0 = load [0 x { i8*, i64* }]*, [0 x { i8*, i64* }]** %5, align 8, !nonnull !2, !align !4, !noundef !2
  %6 = getelementptr inbounds { [0 x { i8*, i64* }]*, i64 }, { [0 x { i8*, i64* }]*, i64 }* %4, i32 0, i32 1
  %_4.1 = load i64, i64* %6, align 8
  %7 = bitcast { { [0 x { [0 x i8]*, i64 }]*, i64 }, { [0 x { i8*, i64* }]*, i64 } }* %_2 to { [0 x { [0 x i8]*, i64 }]*, i64 }*
  %8 = getelementptr inbounds { [0 x { [0 x i8]*, i64 }]*, i64 }, { [0 x { [0 x i8]*, i64 }]*, i64 }* %7, i32 0, i32 0
  store [0 x { [0 x i8]*, i64 }]* %_3.0, [0 x { [0 x i8]*, i64 }]** %8, align 8
  %9 = getelementptr inbounds { [0 x { [0 x i8]*, i64 }]*, i64 }, { [0 x { [0 x i8]*, i64 }]*, i64 }* %7, i32 0, i32 1
  store i64 %_3.1, i64* %9, align 8
  %10 = getelementptr inbounds { { [0 x { [0 x i8]*, i64 }]*, i64 }, { [0 x { i8*, i64* }]*, i64 } }, { { [0 x { [0 x i8]*, i64 }]*, i64 }, { [0 x { i8*, i64* }]*, i64 } }* %_2, i32 0, i32 1
  %11 = getelementptr inbounds { [0 x { i8*, i64* }]*, i64 }, { [0 x { i8*, i64* }]*, i64 }* %10, i32 0, i32 0
  store [0 x { i8*, i64* }]* %_4.0, [0 x { i8*, i64* }]** %11, align 8
  %12 = getelementptr inbounds { [0 x { i8*, i64* }]*, i64 }, { [0 x { i8*, i64* }]*, i64 }* %10, i32 0, i32 1
  store i64 %_4.1, i64* %12, align 8
  %13 = bitcast { { [0 x { [0 x i8]*, i64 }]*, i64 }, { [0 x { i8*, i64* }]*, i64 } }* %_2 to { [0 x { [0 x i8]*, i64 }]*, i64 }*
  %14 = getelementptr inbounds { [0 x { [0 x i8]*, i64 }]*, i64 }, { [0 x { [0 x i8]*, i64 }]*, i64 }* %13, i32 0, i32 0
  %_21.0 = load [0 x { [0 x i8]*, i64 }]*, [0 x { [0 x i8]*, i64 }]** %14, align 8, !nonnull !2, !align !4, !noundef !2
  %15 = getelementptr inbounds { [0 x { [0 x i8]*, i64 }]*, i64 }, { [0 x { [0 x i8]*, i64 }]*, i64 }* %13, i32 0, i32 1
  %_21.1 = load i64, i64* %15, align 8
  %_16 = icmp eq i64 %_21.1, 0
  br i1 %_16, label %bb1, label %bb3

bb3:                                              ; preds = %start
  %16 = bitcast { { [0 x { [0 x i8]*, i64 }]*, i64 }, { [0 x { i8*, i64* }]*, i64 } }* %_2 to { [0 x { [0 x i8]*, i64 }]*, i64 }*
  %17 = getelementptr inbounds { [0 x { [0 x i8]*, i64 }]*, i64 }, { [0 x { [0 x i8]*, i64 }]*, i64 }* %16, i32 0, i32 0
  %_23.0 = load [0 x { [0 x i8]*, i64 }]*, [0 x { [0 x i8]*, i64 }]** %17, align 8, !nonnull !2, !align !4, !noundef !2
  %18 = getelementptr inbounds { [0 x { [0 x i8]*, i64 }]*, i64 }, { [0 x { [0 x i8]*, i64 }]*, i64 }* %16, i32 0, i32 1
  %_23.1 = load i64, i64* %18, align 8
  %_13 = icmp eq i64 %_23.1, 1
  br i1 %_13, label %bb4, label %bb2

bb1:                                              ; preds = %start
  %19 = getelementptr inbounds { { [0 x { [0 x i8]*, i64 }]*, i64 }, { [0 x { i8*, i64* }]*, i64 } }, { { [0 x { [0 x i8]*, i64 }]*, i64 }, { [0 x { i8*, i64* }]*, i64 } }* %_2, i32 0, i32 1
  %20 = getelementptr inbounds { [0 x { i8*, i64* }]*, i64 }, { [0 x { i8*, i64* }]*, i64 }* %19, i32 0, i32 0
  %_22.0 = load [0 x { i8*, i64* }]*, [0 x { i8*, i64* }]** %20, align 8, !nonnull !2, !align !4, !noundef !2
  %21 = getelementptr inbounds { [0 x { i8*, i64* }]*, i64 }, { [0 x { i8*, i64* }]*, i64 }* %19, i32 0, i32 1
  %_22.1 = load i64, i64* %21, align 8
  %_7 = icmp eq i64 %_22.1, 0
  br i1 %_7, label %bb5, label %bb2

bb2:                                              ; preds = %bb4, %bb3, %bb1
  %22 = bitcast { i8*, i64 }* %0 to {}**
  store {}* null, {}** %22, align 8
  br label %bb7

bb5:                                              ; preds = %bb1
  %23 = bitcast { i8*, i64 }* %0 to { [0 x i8]*, i64 }*
  %24 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %23, i32 0, i32 0
  store [0 x i8]* bitcast (<{}>* @alloc3 to [0 x i8]*), [0 x i8]** %24, align 8
  %25 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %23, i32 0, i32 1
  store i64 0, i64* %25, align 8
  br label %bb7

bb7:                                              ; preds = %bb2, %bb6, %bb5
  %26 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %0, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8, !align !3
  %28 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %0, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = insertvalue { i8*, i64 } undef, i8* %27, 0
  %31 = insertvalue { i8*, i64 } %30, i64 %29, 1
  ret { i8*, i64 } %31

bb4:                                              ; preds = %bb3
  %32 = getelementptr inbounds { { [0 x { [0 x i8]*, i64 }]*, i64 }, { [0 x { i8*, i64* }]*, i64 } }, { { [0 x { [0 x i8]*, i64 }]*, i64 }, { [0 x { i8*, i64* }]*, i64 } }* %_2, i32 0, i32 1
  %33 = getelementptr inbounds { [0 x { i8*, i64* }]*, i64 }, { [0 x { i8*, i64* }]*, i64 }* %32, i32 0, i32 0
  %_24.0 = load [0 x { i8*, i64* }]*, [0 x { i8*, i64* }]** %33, align 8, !nonnull !2, !align !4, !noundef !2
  %34 = getelementptr inbounds { [0 x { i8*, i64* }]*, i64 }, { [0 x { i8*, i64* }]*, i64 }* %32, i32 0, i32 1
  %_24.1 = load i64, i64* %34, align 8
  %_10 = icmp eq i64 %_24.1, 0
  br i1 %_10, label %bb6, label %bb2

bb6:                                              ; preds = %bb4
  %35 = bitcast { { [0 x { [0 x i8]*, i64 }]*, i64 }, { [0 x { i8*, i64* }]*, i64 } }* %_2 to { [0 x { [0 x i8]*, i64 }]*, i64 }*
  %36 = getelementptr inbounds { [0 x { [0 x i8]*, i64 }]*, i64 }, { [0 x { [0 x i8]*, i64 }]*, i64 }* %35, i32 0, i32 0
  %_25.0 = load [0 x { [0 x i8]*, i64 }]*, [0 x { [0 x i8]*, i64 }]** %36, align 8, !nonnull !2, !align !4, !noundef !2
  %37 = getelementptr inbounds { [0 x { [0 x i8]*, i64 }]*, i64 }, { [0 x { [0 x i8]*, i64 }]*, i64 }* %35, i32 0, i32 1
  %_25.1 = load i64, i64* %37, align 8
  %s = getelementptr inbounds [0 x { [0 x i8]*, i64 }], [0 x { [0 x i8]*, i64 }]* %_25.0, i64 0, i64 0
  %38 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 0
  %_26.0 = load [0 x i8]*, [0 x i8]** %38, align 8, !nonnull !2, !align !3, !noundef !2
  %39 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %s, i32 0, i32 1
  %_26.1 = load i64, i64* %39, align 8
  %40 = bitcast { i8*, i64 }* %0 to { [0 x i8]*, i64 }*
  %41 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %40, i32 0, i32 0
  store [0 x i8]* %_26.0, [0 x i8]** %41, align 8
  %42 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %40, i32 0, i32 1
  store i64 %_26.1, i64* %42, align 8
  br label %bb7
}

; core::fmt::Arguments::new_v1
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3fmt9Arguments6new_v117h9c593ff1882e0e31E(%"core::fmt::Arguments<'_>"* sret(%"core::fmt::Arguments<'_>") %0, [0 x { [0 x i8]*, i64 }]* align 8 %pieces.0, i64 %pieces.1, [0 x { i8*, i64* }]* align 8 %args.0, i64 %args.1) unnamed_addr #0 {
start:
  %_24 = alloca { i64*, i64 }, align 8
  %_16 = alloca %"core::fmt::Arguments<'_>", align 8
  %_3 = alloca i8, align 1
  %_4 = icmp ult i64 %pieces.1, %args.1
  br i1 %_4, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_12 = add i64 %args.1, 1
  %_9 = icmp ugt i64 %pieces.1, %_12
  %1 = zext i1 %_9 to i8
  store i8 %1, i8* %_3, align 1
  br label %bb3

bb1:                                              ; preds = %start
  store i8 1, i8* %_3, align 1
  br label %bb3

bb3:                                              ; preds = %bb2, %bb1
  %2 = load i8, i8* %_3, align 1, !range !5, !noundef !2
  %3 = trunc i8 %2 to i1
  br i1 %3, label %bb4, label %bb6

bb6:                                              ; preds = %bb3
  %4 = bitcast { i64*, i64 }* %_24 to {}**
  store {}* null, {}** %4, align 8
  %5 = bitcast %"core::fmt::Arguments<'_>"* %0 to { [0 x { [0 x i8]*, i64 }]*, i64 }*
  %6 = getelementptr inbounds { [0 x { [0 x i8]*, i64 }]*, i64 }, { [0 x { [0 x i8]*, i64 }]*, i64 }* %5, i32 0, i32 0
  store [0 x { [0 x i8]*, i64 }]* %pieces.0, [0 x { [0 x i8]*, i64 }]** %6, align 8
  %7 = getelementptr inbounds { [0 x { [0 x i8]*, i64 }]*, i64 }, { [0 x { [0 x i8]*, i64 }]*, i64 }* %5, i32 0, i32 1
  store i64 %pieces.1, i64* %7, align 8
  %8 = getelementptr inbounds %"core::fmt::Arguments<'_>", %"core::fmt::Arguments<'_>"* %0, i32 0, i32 1
  %9 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %_24, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8, !align !4
  %11 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %_24, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %8, i32 0, i32 0
  store i64* %10, i64** %13, align 8
  %14 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %8, i32 0, i32 1
  store i64 %12, i64* %14, align 8
  %15 = getelementptr inbounds %"core::fmt::Arguments<'_>", %"core::fmt::Arguments<'_>"* %0, i32 0, i32 2
  %16 = getelementptr inbounds { [0 x { i8*, i64* }]*, i64 }, { [0 x { i8*, i64* }]*, i64 }* %15, i32 0, i32 0
  store [0 x { i8*, i64* }]* %args.0, [0 x { i8*, i64* }]** %16, align 8
  %17 = getelementptr inbounds { [0 x { i8*, i64* }]*, i64 }, { [0 x { i8*, i64* }]*, i64 }* %15, i32 0, i32 1
  store i64 %args.1, i64* %17, align 8
  ret void

bb4:                                              ; preds = %bb3
; call core::fmt::Arguments::new_v1
  call void @_ZN4core3fmt9Arguments6new_v117h9c593ff1882e0e31E(%"core::fmt::Arguments<'_>"* sret(%"core::fmt::Arguments<'_>") %_16, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc10 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 bitcast (<{}>* @alloc3 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb5

bb5:                                              ; preds = %bb4
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17h13f856077d656cf7E(%"core::fmt::Arguments<'_>"* %_16, %"core::panic::location::Location<'_>"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc85 to %"core::panic::location::Location<'_>"*)) #11
  unreachable
}

; core::ops::function::FnOnce::call_once
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3ops8function6FnOnce9call_once17hb469292d15c08763E(%"alloc::string::String"* sret(%"alloc::string::String") %0, [0 x i8]* align 1 %1, i64 %2) unnamed_addr #0 {
start:
  %_2 = alloca { i8*, i64 }, align 8
  %3 = bitcast { i8*, i64 }* %_2 to { [0 x i8]*, i64 }*
  %4 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %3, i32 0, i32 0
  store [0 x i8]* %1, [0 x i8]** %4, align 8
  %5 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %3, i32 0, i32 1
  store i64 %2, i64* %5, align 8
  %6 = bitcast { i8*, i64 }* %_2 to { [0 x i8]*, i64 }*
  %7 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %6, i32 0, i32 0
  %8 = load [0 x i8]*, [0 x i8]** %7, align 8, !nonnull !2, !align !3, !noundef !2
  %9 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %6, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
; call alloc::str::<impl alloc::borrow::ToOwned for str>::to_owned
  call void @"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h43907cf8e4ea5ac5E"(%"alloc::string::String"* sret(%"alloc::string::String") %0, [0 x i8]* align 1 %8, i64 %10)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::ptr::drop_in_place<alloc::string::String>
; Function Attrs: nonlazybind uwtable
define void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9af3e77fc8c2fd9E"(%"alloc::string::String"* %_1) unnamed_addr #1 {
start:
  %0 = bitcast %"alloc::string::String"* %_1 to %"alloc::vec::Vec<u8>"*
; call core::ptr::drop_in_place<alloc::vec::Vec<u8>>
  call void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfa118e774d195e35E"(%"alloc::vec::Vec<u8>"* %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::ptr::drop_in_place<alloc::vec::Vec<u8>>
; Function Attrs: nonlazybind uwtable
define void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfa118e774d195e35E"(%"alloc::vec::Vec<u8>"* %_1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9e1acb06701e89b6E"(%"alloc::vec::Vec<u8>"* align 8 %_1)
          to label %bb4 unwind label %cleanup

bb3:                                              ; preds = %cleanup
  %1 = bitcast %"alloc::vec::Vec<u8>"* %_1 to { i8*, i64 }*
; invoke core::ptr::drop_in_place<alloc::raw_vec::RawVec<u8>>
  invoke void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h016e177f7323fb26E"({ i8*, i64 }* %1) #12
          to label %bb1 unwind label %abort

cleanup:                                          ; preds = %start
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  %4 = extractvalue { i8*, i32 } %2, 1
  %5 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %3, i8** %5, align 8
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %4, i32* %6, align 8
  br label %bb3

bb4:                                              ; preds = %start
  %7 = bitcast %"alloc::vec::Vec<u8>"* %_1 to { i8*, i64 }*
; call core::ptr::drop_in_place<alloc::raw_vec::RawVec<u8>>
  call void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h016e177f7323fb26E"({ i8*, i64 }* %7)
  br label %bb2

abort:                                            ; preds = %bb3
  %8 = landingpad { i8*, i32 }
          cleanup
; call core::panicking::panic_no_unwind
  call void @_ZN4core9panicking15panic_no_unwind17ha6c2342fd4dddc81E() #13
  unreachable

bb1:                                              ; preds = %bb3
  %9 = bitcast { i8*, i32 }* %0 to i8**
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = insertvalue { i8*, i32 } undef, i8* %10, 0
  %14 = insertvalue { i8*, i32 } %13, i32 %12, 1
  resume { i8*, i32 } %14

bb2:                                              ; preds = %bb4
  ret void
}

; core::ptr::drop_in_place<alloc::raw_vec::RawVec<u8>>
; Function Attrs: nonlazybind uwtable
define void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h016e177f7323fb26E"({ i8*, i64 }* %_1) unnamed_addr #1 {
start:
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbaea04dd6f3df53bE"({ i8*, i64 }* align 8 %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::ptr::mut_ptr::<impl *mut T>::guaranteed_eq
; Function Attrs: inlinehint nonlazybind uwtable
define i8 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17hf969ced12c784474E"(i8* %self, i8* %other) unnamed_addr #0 {
start:
  %0 = alloca i8, align 1
  %1 = alloca i8, align 1
  %2 = icmp eq i8* %self, %other
  %3 = zext i1 %2 to i8
  store i8 %3, i8* %0, align 1
  %_8 = load i8, i8* %0, align 1
  br label %bb1

bb1:                                              ; preds = %start
  %4 = icmp eq i8 %_8, 2
  br i1 %4, label %bb3, label %bb2

bb3:                                              ; preds = %bb1
  store i8 2, i8* %1, align 1
  br label %bb4

bb2:                                              ; preds = %bb1
  %_14 = icmp eq i8 %_8, 1
  %5 = zext i1 %_14 to i8
  store i8 %5, i8* %1, align 1
  br label %bb4

bb4:                                              ; preds = %bb3, %bb2
  %6 = load i8, i8* %1, align 1, !range !6, !noundef !2
  ret i8 %6
}

; core::ptr::mut_ptr::<impl *mut T>::is_null
; Function Attrs: inlinehint nonlazybind uwtable
define zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h11f4a438633a5384E"(i8* %self) unnamed_addr #0 {
start:
  %0 = alloca {}*, align 8
  %_13 = alloca %"core::ptr::metadata::PtrComponents<u8>", align 8
  %_12 = alloca %"core::ptr::metadata::PtrRepr<u8>", align 8
  %_2 = alloca i8, align 1
  %1 = alloca i8, align 1
  %2 = bitcast {}** %0 to i64*
  store i64 0, i64* %2, align 8
  %data_address = load {}*, {}** %0, align 8
  br label %bb6

bb6:                                              ; preds = %start
  %3 = bitcast %"core::ptr::metadata::PtrComponents<u8>"* %_13 to {}**
  store {}* %data_address, {}** %3, align 8
  %4 = bitcast %"core::ptr::metadata::PtrRepr<u8>"* %_12 to %"core::ptr::metadata::PtrComponents<u8>"*
  %5 = bitcast %"core::ptr::metadata::PtrComponents<u8>"* %4 to i8*
  %6 = bitcast %"core::ptr::metadata::PtrComponents<u8>"* %_13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 %6, i64 8, i1 false)
  %7 = bitcast %"core::ptr::metadata::PtrRepr<u8>"* %_12 to i8**
  %_5 = load i8*, i8** %7, align 8
; call core::ptr::mut_ptr::<impl *mut T>::guaranteed_eq
  %8 = call i8 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17hf969ced12c784474E"(i8* %self, i8* %_5), !range !6
  store i8 %8, i8* %_2, align 1
  br label %bb1

bb1:                                              ; preds = %bb6
  %9 = load i8, i8* %_2, align 1, !range !6, !noundef !2
  %10 = sub i8 %9, 2
  %11 = icmp eq i8 %10, 0
  %_6 = select i1 %11, i64 0, i64 1
  switch i64 %_6, label %bb3 [
    i64 0, label %bb4
    i64 1, label %bb2
  ]

bb3:                                              ; preds = %bb1
  unreachable

bb4:                                              ; preds = %bb1
  store i8 0, i8* %1, align 1
  br label %bb5

bb2:                                              ; preds = %bb1
  %12 = load i8, i8* %_2, align 1, !range !5, !noundef !2
  %res = trunc i8 %12 to i1
  %13 = zext i1 %res to i8
  store i8 %13, i8* %1, align 1
  br label %bb5

bb5:                                              ; preds = %bb4, %bb2
  %14 = load i8, i8* %1, align 1, !range !5, !noundef !2
  %15 = trunc i8 %14 to i1
  ret i1 %15
}

; core::ptr::non_null::NonNull<T>::new
; Function Attrs: inlinehint nonlazybind uwtable
define i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17he8a9a2452aebf48eE"(i8* %ptr) unnamed_addr #0 {
start:
  %_5 = alloca i8*, align 8
  %0 = alloca i8*, align 8
; call core::ptr::mut_ptr::<impl *mut T>::is_null
  %_3 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h11f4a438633a5384E"(i8* %ptr)
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = xor i1 %_3, true
  br i1 %_2, label %bb2, label %bb3

bb3:                                              ; preds = %bb1
  %1 = bitcast i8** %0 to {}**
  store {}* null, {}** %1, align 8
  br label %bb4

bb2:                                              ; preds = %bb1
  store i8* %ptr, i8** %_5, align 8
  %2 = load i8*, i8** %_5, align 8, !nonnull !2, !noundef !2
  store i8* %2, i8** %0, align 8
  br label %bb4

bb4:                                              ; preds = %bb3, %bb2
  %3 = load i8*, i8** %0, align 8
  ret i8* %3
}

; core::hint::unreachable_unchecked
; Function Attrs: inlinehint noreturn nonlazybind uwtable
define internal void @_ZN4core4hint21unreachable_unchecked17h6b2c7209b2b01af6E() unnamed_addr #2 {
start:
  unreachable
}

; core::alloc::layout::Layout::array::inner
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @_ZN4core5alloc6layout6Layout5array5inner17h2c11e6290ed32d66E(i64 %element_size, i64 %align, i64 %n) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  %_26 = alloca i64, align 8
  %_24 = alloca i64, align 8
  %_16 = alloca { i64, i64 }, align 8
  %_4 = alloca i8, align 1
  %1 = alloca { i64, i64 }, align 8
  %2 = icmp eq i64 %element_size, 0
  br i1 %2, label %bb1, label %bb2

bb1:                                              ; preds = %start
  store i8 0, i8* %_4, align 1
  br label %bb3

bb2:                                              ; preds = %start
  store i64 %align, i64* %_24, align 8
  %_25 = load i64, i64* %_24, align 8, !range !7, !noundef !2
  %_21 = sub i64 %_25, 1
  %_9 = sub i64 9223372036854775807, %_21
  %_12 = icmp eq i64 %element_size, 0
  %3 = call i1 @llvm.expect.i1(i1 %_12, i1 false)
  br i1 %3, label %panic, label %bb4

bb4:                                              ; preds = %bb2
  %_8 = udiv i64 %_9, %element_size
  %_6 = icmp ugt i64 %n, %_8
  %4 = zext i1 %_6 to i8
  store i8 %4, i8* %_4, align 1
  br label %bb3

panic:                                            ; preds = %bb2
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17h468c4695c47db9beE([0 x i8]* align 1 bitcast ([25 x i8]* @str.0 to [0 x i8]*), i64 25, %"core::panic::location::Location<'_>"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc104 to %"core::panic::location::Location<'_>"*)) #11
  unreachable

bb3:                                              ; preds = %bb1, %bb4
  %5 = load i8, i8* %_4, align 1, !range !5, !noundef !2
  %6 = trunc i8 %5 to i1
  br i1 %6, label %bb5, label %bb6

bb6:                                              ; preds = %bb3
  %array_size = mul i64 %element_size, %n
  store i64 %align, i64* %_26, align 8
  %_27 = load i64, i64* %_26, align 8, !range !7, !noundef !2
  store i64 %_27, i64* %0, align 8
  %_29 = load i64, i64* %0, align 8, !range !7, !noundef !2
  br label %bb8

bb5:                                              ; preds = %bb3
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i32 0, i32 1
  store i64 0, i64* %7, align 8
  br label %bb7

bb7:                                              ; preds = %bb8, %bb5
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i32 0, i32 1
  %11 = load i64, i64* %10, align 8, !range !8, !noundef !2
  %12 = insertvalue { i64, i64 } undef, i64 %9, 0
  %13 = insertvalue { i64, i64 } %12, i64 %11, 1
  ret { i64, i64 } %13

bb8:                                              ; preds = %bb6
  %14 = bitcast { i64, i64 }* %_16 to i64*
  store i64 %array_size, i64* %14, align 8
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_16, i32 0, i32 1
  store i64 %_29, i64* %15, align 8
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_16, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_16, i32 0, i32 1
  %19 = load i64, i64* %18, align 8, !range !7, !noundef !2
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i32 0, i32 0
  store i64 %17, i64* %20, align 8
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i32 0, i32 1
  store i64 %19, i64* %21, align 8
  br label %bb7
}

; core::option::Option<T>::map_or_else
; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN4core6option15Option$LT$T$GT$11map_or_else17h2de8aa045d54d350E"(%"alloc::string::String"* sret(%"alloc::string::String") %0, i8* align 1 %1, i64 %2, i64* align 8 %default) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %3 = alloca { i8*, i32 }, align 8
  %_12 = alloca i8, align 1
  %_11 = alloca i8, align 1
  %_7 = alloca { i8*, i64 }, align 8
  %self = alloca { i8*, i64 }, align 8
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 0
  store i8* %1, i8** %4, align 8
  %5 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  store i64 %2, i64* %5, align 8
  store i8 1, i8* %_12, align 1
  store i8 1, i8* %_11, align 1
  %6 = bitcast { i8*, i64 }* %self to {}**
  %7 = load {}*, {}** %6, align 8
  %8 = icmp eq {}* %7, null
  %_4 = select i1 %8, i64 0, i64 1
  switch i64 %_4, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb3
  ]

bb2:                                              ; preds = %start
  unreachable

bb1:                                              ; preds = %start
  store i8 0, i8* %_12, align 1
; invoke alloc::fmt::format::{{closure}}
  invoke void @"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h400a953d6a7dca08E"(%"alloc::string::String"* sret(%"alloc::string::String") %0, i64* align 8 %default)
          to label %bb5 unwind label %cleanup

bb3:                                              ; preds = %start
  %9 = bitcast { i8*, i64 }* %self to { [0 x i8]*, i64 }*
  %10 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %9, i32 0, i32 0
  %t.0 = load [0 x i8]*, [0 x i8]** %10, align 8, !nonnull !2, !align !3, !noundef !2
  %11 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %9, i32 0, i32 1
  %t.1 = load i64, i64* %11, align 8
  store i8 0, i8* %_11, align 1
  %12 = bitcast { i8*, i64 }* %_7 to { [0 x i8]*, i64 }*
  %13 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %12, i32 0, i32 0
  store [0 x i8]* %t.0, [0 x i8]** %13, align 8
  %14 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %12, i32 0, i32 1
  store i64 %t.1, i64* %14, align 8
  %15 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_7, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8, !nonnull !2, !align !3, !noundef !2
  %17 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_7, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = bitcast i8* %16 to [0 x i8]*
; invoke core::ops::function::FnOnce::call_once
  invoke void @_ZN4core3ops8function6FnOnce9call_once17hb469292d15c08763E(%"alloc::string::String"* sret(%"alloc::string::String") %0, [0 x i8]* align 1 %19, i64 %18)
          to label %bb4 unwind label %cleanup

bb14:                                             ; preds = %cleanup
  %20 = load i8, i8* %_11, align 1, !range !5, !noundef !2
  %21 = trunc i8 %20 to i1
  br i1 %21, label %bb13, label %bb8

cleanup:                                          ; preds = %bb1, %bb3
  %22 = landingpad { i8*, i32 }
          cleanup
  %23 = extractvalue { i8*, i32 } %22, 0
  %24 = extractvalue { i8*, i32 } %22, 1
  %25 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  %26 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  br label %bb14

bb4:                                              ; preds = %bb3
  br label %bb11

bb11:                                             ; preds = %bb5, %bb4
  %27 = load i8, i8* %_11, align 1, !range !5, !noundef !2
  %28 = trunc i8 %27 to i1
  br i1 %28, label %bb10, label %bb6

bb5:                                              ; preds = %bb1
  br label %bb11

bb8:                                              ; preds = %bb13, %bb14
  %29 = load i8, i8* %_12, align 1, !range !5, !noundef !2
  %30 = trunc i8 %29 to i1
  br i1 %30, label %bb15, label %bb9

bb13:                                             ; preds = %bb14
  br label %bb8

bb6:                                              ; preds = %bb10, %bb11
  %31 = load i8, i8* %_12, align 1, !range !5, !noundef !2
  %32 = trunc i8 %31 to i1
  br i1 %32, label %bb12, label %bb7

bb10:                                             ; preds = %bb11
  br label %bb6

bb9:                                              ; preds = %bb15, %bb8
  %33 = bitcast { i8*, i32 }* %3 to i8**
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = insertvalue { i8*, i32 } undef, i8* %34, 0
  %38 = insertvalue { i8*, i32 } %37, i32 %36, 1
  resume { i8*, i32 } %38

bb15:                                             ; preds = %bb8
  br label %bb9

bb7:                                              ; preds = %bb12, %bb6
  ret void

bb12:                                             ; preds = %bb6
  br label %bb7
}

; core::result::Result<T,E>::unwrap_unchecked
; Function Attrs: inlinehint nonlazybind uwtable
define { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$16unwrap_unchecked17h6cc0222adbcb06a6E"(i64 %0, i64 %1, %"core::panic::location::Location<'_>"* align 8 %2) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %3 = alloca { i8*, i32 }, align 8
  %self = alloca { i64, i64 }, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  store i64 %0, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  store i64 %1, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %7 = load i64, i64* %6, align 8, !range !8, !noundef !2
  %8 = icmp eq i64 %7, 0
  %_3 = select i1 %8, i64 1, i64 0
  switch i64 %_3, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  %t.0 = load i64, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %t.1 = load i64, i64* %10, align 8, !range !7, !noundef !2
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %12 = load i64, i64* %11, align 8, !range !8, !noundef !2
  %13 = icmp eq i64 %12, 0
  %_7 = select i1 %13, i64 1, i64 0
  %14 = icmp eq i64 %_7, 0
  br i1 %14, label %bb5, label %bb6

bb1:                                              ; preds = %start
; invoke core::hint::unreachable_unchecked
  invoke void @_ZN4core4hint21unreachable_unchecked17h6b2c7209b2b01af6E() #11
          to label %unreachable unwind label %cleanup

bb10:                                             ; preds = %cleanup
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %16 = load i64, i64* %15, align 8, !range !8, !noundef !2
  %17 = icmp eq i64 %16, 0
  %_8 = select i1 %17, i64 1, i64 0
  %18 = icmp eq i64 %_8, 0
  br i1 %18, label %bb7, label %bb9

cleanup:                                          ; preds = %bb1
  %19 = landingpad { i8*, i32 }
          cleanup
  %20 = extractvalue { i8*, i32 } %19, 0
  %21 = extractvalue { i8*, i32 } %19, 1
  %22 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  br label %bb10

unreachable:                                      ; preds = %bb1
  unreachable

bb7:                                              ; preds = %bb10
  br i1 true, label %bb8, label %bb4

bb9:                                              ; preds = %bb10
  br label %bb4

bb4:                                              ; preds = %bb8, %bb7, %bb9
  %24 = bitcast { i8*, i32 }* %3 to i8**
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = insertvalue { i8*, i32 } undef, i8* %25, 0
  %29 = insertvalue { i8*, i32 } %28, i32 %27, 1
  resume { i8*, i32 } %29

bb8:                                              ; preds = %bb7
  br label %bb4

bb5:                                              ; preds = %bb6, %bb3
  %30 = insertvalue { i64, i64 } undef, i64 %t.0, 0
  %31 = insertvalue { i64, i64 } %30, i64 %t.1, 1
  ret { i64, i64 } %31

bb6:                                              ; preds = %bb3
  br label %bb5
}

; <T as core::convert::Into<U>>::into
; Function Attrs: nonlazybind uwtable
define i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h13fd8dc36c276c4cE"(i8* %self) unnamed_addr #1 {
start:
; call <core::ptr::non_null::NonNull<T> as core::convert::From<core::ptr::unique::Unique<T>>>::from
  %0 = call i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17ha48098460fe67b6eE"(i8* %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; <T as alloc::slice::hack::ConvertVec>::to_vec
; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17h7e3daa0b1f778b24E"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %v, [0 x i8]* align 1 %s.0, i64 %s.1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_46 = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 8
  %_34 = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 8
  %_23 = alloca i8, align 1
  %_17 = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 8
  %1 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_17 to { [0 x i8]*, i64 }*
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 0
  store [0 x i8]* %s.0, [0 x i8]** %2, align 8
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 1
  store i64 %s.1, i64* %3, align 8
  %4 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_17 to { i8*, i64 }*
  %5 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %4, i32 0, i32 1
  %capacity = load i64, i64* %5, align 8
  store i8 0, i8* %_23, align 1
  %6 = load i8, i8* %_23, align 1, !range !5, !noundef !2
  %7 = trunc i8 %6 to i1
; invoke alloc::raw_vec::RawVec<T,A>::allocate_in
  %8 = invoke { i8*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17hdf7e73c60fc09a32E"(i64 %capacity, i1 zeroext %7)
          to label %bb5 unwind label %cleanup

bb4:                                              ; preds = %bb1, %cleanup
  br i1 false, label %bb3, label %bb2

cleanup:                                          ; preds = %start
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  %11 = extractvalue { i8*, i32 } %9, 1
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  br label %bb4

bb5:                                              ; preds = %start
  %_19.0 = extractvalue { i8*, i64 } %8, 0
  %_19.1 = extractvalue { i8*, i64 } %8, 1
  %14 = bitcast %"alloc::vec::Vec<u8>"* %v to { i8*, i64 }*
  %15 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %14, i32 0, i32 0
  store i8* %_19.0, i8** %15, align 8
  %16 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %14, i32 0, i32 1
  store i64 %_19.1, i64* %16, align 8
  %17 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %v, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %self = bitcast [0 x i8]* %s.0 to i8*
  %self1 = bitcast %"alloc::vec::Vec<u8>"* %v to { i8*, i64 }*
  %18 = bitcast { i8*, i64 }* %self1 to i8**
  %self2 = load i8*, i8** %18, align 8, !nonnull !2, !noundef !2
; invoke core::ptr::mut_ptr::<impl *mut T>::is_null
  %_28 = invoke zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h11f4a438633a5384E"(i8* %self2)
          to label %bb6 unwind label %cleanup3

bb1:                                              ; preds = %cleanup3
; invoke core::ptr::drop_in_place<alloc::vec::Vec<u8>>
  invoke void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfa118e774d195e35E"(%"alloc::vec::Vec<u8>"* %v) #12
          to label %bb4 unwind label %abort

cleanup3:                                         ; preds = %bb5
  %19 = landingpad { i8*, i32 }
          cleanup
  %20 = extractvalue { i8*, i32 } %19, 0
  %21 = extractvalue { i8*, i32 } %19, 1
  %22 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  br label %bb1

bb6:                                              ; preds = %bb5
  %_27 = xor i1 %_28, true
  call void @llvm.assume(i1 %_27)
  %24 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_34 to { [0 x i8]*, i64 }*
  %25 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %24, i32 0, i32 0
  store [0 x i8]* %s.0, [0 x i8]** %25, align 8
  %26 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %24, i32 0, i32 1
  store i64 %s.1, i64* %26, align 8
  %27 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_34 to { i8*, i64 }*
  %28 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %27, i32 0, i32 1
  %count = load i64, i64* %28, align 8
  %29 = mul i64 %count, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %self2, i8* align 1 %self, i64 %29, i1 false)
  %30 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_46 to { [0 x i8]*, i64 }*
  %31 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %30, i32 0, i32 0
  store [0 x i8]* %s.0, [0 x i8]** %31, align 8
  %32 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %30, i32 0, i32 1
  store i64 %s.1, i64* %32, align 8
  %33 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_46 to { i8*, i64 }*
  %34 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %33, i32 0, i32 1
  %new_len = load i64, i64* %34, align 8
  %35 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %v, i32 0, i32 1
  store i64 %new_len, i64* %35, align 8
  ret void

abort:                                            ; preds = %bb1
  %36 = landingpad { i8*, i32 }
          cleanup
; call core::panicking::panic_no_unwind
  call void @_ZN4core9panicking15panic_no_unwind17ha6c2342fd4dddc81E() #13
  unreachable

bb2:                                              ; preds = %bb3, %bb4
  %37 = bitcast { i8*, i32 }* %0 to i8**
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = insertvalue { i8*, i32 } undef, i8* %38, 0
  %42 = insertvalue { i8*, i32 } %41, i32 %40, 1
  resume { i8*, i32 } %42

bb3:                                              ; preds = %bb4
  br label %bb2
}

; alloc::fmt::format
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN5alloc3fmt6format17h769f7d25a24a6e69E(%"alloc::string::String"* sret(%"alloc::string::String") %0, %"core::fmt::Arguments<'_>"* %args) unnamed_addr #0 {
start:
  %_4 = alloca i64*, align 8
; call core::fmt::Arguments::as_str
  %1 = call { i8*, i64 } @_ZN4core3fmt9Arguments6as_str17h8ab29bc8353fbcbfE(%"core::fmt::Arguments<'_>"* align 8 %args)
  %_2.0 = extractvalue { i8*, i64 } %1, 0
  %_2.1 = extractvalue { i8*, i64 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast i64** %_4 to %"core::fmt::Arguments<'_>"**
  store %"core::fmt::Arguments<'_>"* %args, %"core::fmt::Arguments<'_>"** %2, align 8
  %3 = load i64*, i64** %_4, align 8, !nonnull !2, !align !4, !noundef !2
; call core::option::Option<T>::map_or_else
  call void @"_ZN4core6option15Option$LT$T$GT$11map_or_else17h2de8aa045d54d350E"(%"alloc::string::String"* sret(%"alloc::string::String") %0, i8* align 1 %_2.0, i64 %_2.1, i64* align 8 %3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; alloc::fmt::format::{{closure}}
; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN5alloc3fmt6format28_$u7b$$u7b$closure$u7d$$u7d$17h400a953d6a7dca08E"(%"alloc::string::String"* sret(%"alloc::string::String") %0, i64* align 8 %1) unnamed_addr #0 {
start:
  %_2 = alloca %"core::fmt::Arguments<'_>", align 8
  %_1 = alloca i64*, align 8
  store i64* %1, i64** %_1, align 8
  %2 = bitcast i64** %_1 to %"core::fmt::Arguments<'_>"**
  %_3 = load %"core::fmt::Arguments<'_>"*, %"core::fmt::Arguments<'_>"** %2, align 8, !nonnull !2, !align !4, !noundef !2
  %3 = bitcast %"core::fmt::Arguments<'_>"* %_2 to i8*
  %4 = bitcast %"core::fmt::Arguments<'_>"* %_3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 48, i1 false)
; call alloc::fmt::format::format_inner
  call void @_ZN5alloc3fmt6format12format_inner17h83a4a6d61c6af406E(%"alloc::string::String"* sret(%"alloc::string::String") %0, %"core::fmt::Arguments<'_>"* %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; alloc::str::<impl alloc::borrow::ToOwned for str>::to_owned
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h43907cf8e4ea5ac5E"(%"alloc::string::String"* sret(%"alloc::string::String") %0, [0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
  %1 = alloca { [0 x i8]*, i64 }, align 8
  %_7 = alloca %"alloc::vec::Vec<u8>", align 8
  %bytes = alloca %"alloc::vec::Vec<u8>", align 8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 0
  store [0 x i8]* %self.0, [0 x i8]** %2, align 8
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 1
  store i64 %self.1, i64* %3, align 8
  %4 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 0
  %_4.0 = load [0 x i8]*, [0 x i8]** %4, align 8, !nonnull !2, !align !3, !noundef !2
  %5 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 1
  %_4.1 = load i64, i64* %5, align 8
  br label %bb2

bb2:                                              ; preds = %start
; call alloc::slice::<impl alloc::borrow::ToOwned for [T]>::to_owned
  call void @"_ZN5alloc5slice64_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$$u5b$T$u5d$$GT$8to_owned17h8e24c978b719316dE"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %bytes, [0 x i8]* align 1 %_4.0, i64 %_4.1)
  br label %bb1

bb1:                                              ; preds = %bb2
  %6 = bitcast %"alloc::vec::Vec<u8>"* %_7 to i8*
  %7 = bitcast %"alloc::vec::Vec<u8>"* %bytes to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 %7, i64 24, i1 false)
  %8 = bitcast %"alloc::string::String"* %0 to %"alloc::vec::Vec<u8>"*
  %9 = bitcast %"alloc::vec::Vec<u8>"* %8 to i8*
  %10 = bitcast %"alloc::vec::Vec<u8>"* %_7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 %10, i64 24, i1 false)
  ret void
}

; alloc::alloc::Global::alloc_impl
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i8*, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h0c359eafd1973627E(%"alloc::alloc::Global"* align 1 %self, i64 %0, i64 %1, i1 zeroext %zeroed) unnamed_addr #0 {
start:
  %2 = alloca i8*, align 8
  %_87 = alloca { i8*, i64 }, align 8
  %_86 = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 8
  %_68 = alloca i64, align 8
  %_61 = alloca i64, align 8
  %_49 = alloca { i8*, i64 }, align 8
  %_48 = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 8
  %_31 = alloca i64, align 8
  %_24 = alloca { i8*, i64 }, align 8
  %self4 = alloca i8*, align 8
  %self3 = alloca i8*, align 8
  %_15 = alloca i8*, align 8
  %layout2 = alloca { i64, i64 }, align 8
  %layout1 = alloca { i64, i64 }, align 8
  %raw_ptr = alloca i8*, align 8
  %data = alloca i8*, align 8
  %_6 = alloca { i8*, i64 }, align 8
  %3 = alloca { i8*, i64 }, align 8
  %layout = alloca { i64, i64 }, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %5, align 8
  %6 = bitcast { i64, i64 }* %layout to i64*
  %_4 = load i64, i64* %6, align 8
  %7 = icmp eq i64 %_4, 0
  br i1 %7, label %bb2, label %bb1

bb2:                                              ; preds = %start
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %self8 = load i64, i64* %8, align 8, !range !7, !noundef !2
  store i64 %self8, i64* %_31, align 8
  %_32 = load i64, i64* %_31, align 8, !range !7, !noundef !2
  %9 = bitcast i8** %2 to i64*
  store i64 %_32, i64* %9, align 8
  %ptr = load i8*, i8** %2, align 8
  br label %bb13

bb1:                                              ; preds = %start
  br i1 %zeroed, label %bb3, label %bb4

bb4:                                              ; preds = %bb1
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %13 = load i64, i64* %12, align 8, !range !7, !noundef !2
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout2, i32 0, i32 0
  store i64 %11, i64* %14, align 8
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout2, i32 0, i32 1
  store i64 %13, i64* %15, align 8
  %16 = bitcast { i64, i64 }* %layout2 to i64*
  %_63 = load i64, i64* %16, align 8
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout2, i32 0, i32 1
  %self6 = load i64, i64* %17, align 8, !range !7, !noundef !2
  store i64 %self6, i64* %_68, align 8
  %_69 = load i64, i64* %_68, align 8, !range !7, !noundef !2
  %18 = call i8* @__rust_alloc(i64 %_63, i64 %_69) #14
  store i8* %18, i8** %raw_ptr, align 8
  br label %bb15

bb3:                                              ; preds = %bb1
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %22 = load i64, i64* %21, align 8, !range !7, !noundef !2
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout1, i32 0, i32 0
  store i64 %20, i64* %23, align 8
  %24 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout1, i32 0, i32 1
  store i64 %22, i64* %24, align 8
  %25 = bitcast { i64, i64 }* %layout1 to i64*
  %_56 = load i64, i64* %25, align 8
  %26 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout1, i32 0, i32 1
  %self5 = load i64, i64* %26, align 8, !range !7, !noundef !2
  store i64 %self5, i64* %_61, align 8
  %_62 = load i64, i64* %_61, align 8, !range !7, !noundef !2
  %27 = call i8* @__rust_alloc_zeroed(i64 %_56, i64 %_62) #14
  store i8* %27, i8** %raw_ptr, align 8
  br label %bb14

bb14:                                             ; preds = %bb3
  br label %bb5

bb5:                                              ; preds = %bb15, %bb14
  %_18 = load i8*, i8** %raw_ptr, align 8
; call core::ptr::non_null::NonNull<T>::new
  %28 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17he8a9a2452aebf48eE"(i8* %_18)
  store i8* %28, i8** %self4, align 8
  br label %bb6

bb15:                                             ; preds = %bb4
  br label %bb5

bb6:                                              ; preds = %bb5
  %29 = bitcast i8** %self4 to {}**
  %30 = load {}*, {}** %29, align 8
  %31 = icmp eq {}* %30, null
  %_70 = select i1 %31, i64 0, i64 1
  switch i64 %_70, label %bb17 [
    i64 0, label %bb16
    i64 1, label %bb18
  ]

bb17:                                             ; preds = %bb6
  unreachable

bb16:                                             ; preds = %bb6
  %32 = bitcast i8** %self3 to {}**
  store {}* null, {}** %32, align 8
  br label %bb19

bb18:                                             ; preds = %bb6
  %v = load i8*, i8** %self4, align 8, !nonnull !2, !noundef !2
  store i8* %v, i8** %self3, align 8
  br label %bb19

bb19:                                             ; preds = %bb16, %bb18
  %33 = bitcast i8** %self3 to {}**
  %34 = load {}*, {}** %33, align 8
  %35 = icmp eq {}* %34, null
  %_73 = select i1 %35, i64 1, i64 0
  switch i64 %_73, label %bb21 [
    i64 0, label %bb22
    i64 1, label %bb20
  ]

bb21:                                             ; preds = %bb19
  unreachable

bb22:                                             ; preds = %bb19
  %v7 = load i8*, i8** %self3, align 8, !nonnull !2, !noundef !2
  store i8* %v7, i8** %_15, align 8
  br label %bb7

bb20:                                             ; preds = %bb19
  %36 = bitcast i8** %_15 to {}**
  store {}* null, {}** %36, align 8
  br label %bb7

bb7:                                              ; preds = %bb22, %bb20
  %37 = bitcast i8** %_15 to {}**
  %38 = load {}*, {}** %37, align 8
  %39 = icmp eq {}* %38, null
  %_20 = select i1 %39, i64 1, i64 0
  switch i64 %_20, label %bb9 [
    i64 0, label %bb8
    i64 1, label %bb10
  ]

bb9:                                              ; preds = %bb7
  unreachable

bb8:                                              ; preds = %bb7
  %val = load i8*, i8** %_15, align 8, !nonnull !2, !noundef !2
  %data_address = bitcast i8* %val to {}*
  %40 = bitcast { i8*, i64 }* %_87 to {}**
  store {}* %data_address, {}** %40, align 8
  %41 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_87, i32 0, i32 1
  store i64 %_4, i64* %41, align 8
  %42 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_86 to { i8*, i64 }*
  %43 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_87, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_87, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %42, i32 0, i32 0
  store i8* %44, i8** %47, align 8
  %48 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %42, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  %49 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_86 to { [0 x i8]*, i64 }*
  %50 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %49, i32 0, i32 0
  %ptr.0 = load [0 x i8]*, [0 x i8]** %50, align 8
  %51 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %49, i32 0, i32 1
  %ptr.1 = load i64, i64* %51, align 8
  %52 = bitcast { i8*, i64 }* %_24 to { [0 x i8]*, i64 }*
  %53 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %52, i32 0, i32 0
  store [0 x i8]* %ptr.0, [0 x i8]** %53, align 8
  %54 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %52, i32 0, i32 1
  store i64 %ptr.1, i64* %54, align 8
  %55 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_24, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8, !nonnull !2, !noundef !2
  %57 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_24, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %3, i32 0, i32 0
  store i8* %56, i8** %59, align 8
  %60 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %3, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  br label %bb11

bb10:                                             ; preds = %bb7
  %61 = bitcast { i8*, i64 }* %3 to {}**
  store {}* null, {}** %61, align 8
  br label %bb12

bb12:                                             ; preds = %bb11, %bb10
  %62 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %3, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %3, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = insertvalue { i8*, i64 } undef, i8* %63, 0
  %67 = insertvalue { i8*, i64 } %66, i64 %65, 1
  ret { i8*, i64 } %67

bb11:                                             ; preds = %bb13, %bb8
  br label %bb12

bb13:                                             ; preds = %bb2
  store i8* %ptr, i8** %data, align 8
  %self9 = load i8*, i8** %data, align 8, !nonnull !2, !noundef !2
  %data_address10 = bitcast i8* %self9 to {}*
  %68 = bitcast { i8*, i64 }* %_49 to {}**
  store {}* %data_address10, {}** %68, align 8
  %69 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_49, i32 0, i32 1
  store i64 0, i64* %69, align 8
  %70 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_48 to { i8*, i64 }*
  %71 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_49, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_49, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %70, i32 0, i32 0
  store i8* %72, i8** %75, align 8
  %76 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %70, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  %77 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_48 to { [0 x i8]*, i64 }*
  %78 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %77, i32 0, i32 0
  %ptr.011 = load [0 x i8]*, [0 x i8]** %78, align 8
  %79 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %77, i32 0, i32 1
  %ptr.112 = load i64, i64* %79, align 8
  %80 = bitcast { i8*, i64 }* %_6 to { [0 x i8]*, i64 }*
  %81 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %80, i32 0, i32 0
  store [0 x i8]* %ptr.011, [0 x i8]** %81, align 8
  %82 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %80, i32 0, i32 1
  store i64 %ptr.112, i64* %82, align 8
  %83 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_6, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8, !nonnull !2, !noundef !2
  %85 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_6, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %3, i32 0, i32 0
  store i8* %84, i8** %87, align 8
  %88 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %3, i32 0, i32 1
  store i64 %86, i64* %88, align 8
  br label %bb11
}

; alloc::slice::<impl alloc::borrow::ToOwned for [T]>::to_owned
; Function Attrs: nonlazybind uwtable
define void @"_ZN5alloc5slice64_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$$u5b$T$u5d$$GT$8to_owned17h8e24c978b719316dE"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %0, [0 x i8]* align 1 %self.0, i64 %self.1) unnamed_addr #1 {
start:
; call <T as alloc::slice::hack::ConvertVec>::to_vec
  call void @"_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17h7e3daa0b1f778b24E"(%"alloc::vec::Vec<u8>"* sret(%"alloc::vec::Vec<u8>") %0, [0 x i8]* align 1 %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; alloc::raw_vec::RawVec<T,A>::allocate_in
; Function Attrs: nonlazybind uwtable
define { i8*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17hdf7e73c60fc09a32E"(i64 %capacity, i1 zeroext %0) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca i64, align 8
  %2 = alloca { i8*, i32 }, align 8
  %_54 = alloca i8*, align 8
  %_36 = alloca i8, align 1
  %self = alloca i8*, align 8
  %_30 = alloca i8*, align 8
  %result = alloca { i8*, i64 }, align 8
  %_14 = alloca { i64, i64 }, align 8
  %_9 = alloca { i64, i64 }, align 8
  %_4 = alloca i8, align 1
  %3 = alloca { i8*, i64 }, align 8
  %alloc = alloca %"alloc::alloc::Global", align 1
  %init = alloca i8, align 1
  %4 = zext i1 %0 to i8
  store i8 %4, i8* %init, align 1
  store i8 1, i8* %_36, align 1
  br i1 false, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_5 = icmp eq i64 %capacity, 0
  %5 = zext i1 %_5 to i8
  store i8 %5, i8* %_4, align 1
  br label %bb3

bb1:                                              ; preds = %start
  store i8 1, i8* %_4, align 1
  br label %bb3

bb3:                                              ; preds = %bb2, %bb1
  %6 = load i8, i8* %_4, align 1, !range !5, !noundef !2
  %7 = trunc i8 %6 to i1
  br i1 %7, label %bb4, label %bb6

bb6:                                              ; preds = %bb3
  store i64 1, i64* %1, align 8
  %_38 = load i64, i64* %1, align 8, !range !7, !noundef !2
  br label %bb27

bb4:                                              ; preds = %bb3
  store i8 0, i8* %_36, align 1
; invoke alloc::raw_vec::RawVec<T,A>::new_in
  %8 = invoke { i8*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17h74f21fa318d42ed6E"()
          to label %bb5 unwind label %cleanup

bb25:                                             ; preds = %cleanup
  %9 = load i8, i8* %_36, align 1, !range !5, !noundef !2
  %10 = trunc i8 %9 to i1
  br i1 %10, label %bb24, label %bb23

cleanup:                                          ; preds = %bb19, %bb15, %bb13, %bb10, %bb7, %bb27, %bb4
  %11 = landingpad { i8*, i32 }
          cleanup
  %12 = extractvalue { i8*, i32 } %11, 0
  %13 = extractvalue { i8*, i32 } %11, 1
  %14 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %12, i8** %14, align 8
  %15 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  br label %bb25

bb5:                                              ; preds = %bb4
  store { i8*, i64 } %8, { i8*, i64 }* %3, align 8
  br label %bb22

bb22:                                             ; preds = %bb21, %bb5
  %16 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %3, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8, !nonnull !2, !noundef !2
  %18 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %3, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = insertvalue { i8*, i64 } undef, i8* %17, 0
  %21 = insertvalue { i8*, i64 } %20, i64 %19, 1
  ret { i8*, i64 } %21

bb27:                                             ; preds = %bb6
; invoke core::alloc::layout::Layout::array::inner
  %22 = invoke { i64, i64 } @_ZN4core5alloc6layout6Layout5array5inner17h2c11e6290ed32d66E(i64 1, i64 %_38, i64 %capacity)
          to label %bb26 unwind label %cleanup

bb26:                                             ; preds = %bb27
  store { i64, i64 } %22, { i64, i64 }* %_9, align 8
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_9, i32 0, i32 1
  %24 = load i64, i64* %23, align 8, !range !8, !noundef !2
  %25 = icmp eq i64 %24, 0
  %_11 = select i1 %25, i64 1, i64 0
  switch i64 %_11, label %bb8 [
    i64 0, label %bb9
    i64 1, label %bb7
  ]

bb8:                                              ; preds = %bb26
  unreachable

bb9:                                              ; preds = %bb26
  %26 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_9, i32 0, i32 0
  %layout.0 = load i64, i64* %26, align 8
  %27 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_9, i32 0, i32 1
  %layout.1 = load i64, i64* %27, align 8, !range !7, !noundef !2
  %28 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_14, i32 0, i32 1
  store i64 -9223372036854775807, i64* %28, align 8
  %29 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_14, i32 0, i32 1
  %30 = load i64, i64* %29, align 8, !range !9, !noundef !2
  %31 = sub i64 %30, -9223372036854775807
  %32 = icmp eq i64 %31, 0
  %_17 = select i1 %32, i64 0, i64 1
  switch i64 %_17, label %bb11 [
    i64 0, label %bb12
    i64 1, label %bb10
  ]

bb7:                                              ; preds = %bb26
; invoke alloc::raw_vec::capacity_overflow
  invoke void @_ZN5alloc7raw_vec17capacity_overflow17h75f3fa53dc937969E() #11
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %bb19, %bb10, %bb7
  unreachable

bb11:                                             ; preds = %bb9
  unreachable

bb12:                                             ; preds = %bb9
  %33 = load i8, i8* %init, align 1, !range !5, !noundef !2
  %34 = trunc i8 %33 to i1
  %_20 = zext i1 %34 to i64
  switch i64 %_20, label %bb14 [
    i64 0, label %bb15
    i64 1, label %bb13
  ]

bb10:                                             ; preds = %bb9
; invoke alloc::raw_vec::capacity_overflow
  invoke void @_ZN5alloc7raw_vec17capacity_overflow17h75f3fa53dc937969E() #11
          to label %unreachable unwind label %cleanup

bb14:                                             ; preds = %bb12
  unreachable

bb15:                                             ; preds = %bb12
; invoke <alloc::alloc::Global as core::alloc::Allocator>::allocate
  %35 = invoke { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h5ec60e5782c02b74E"(%"alloc::alloc::Global"* align 1 %alloc, i64 %layout.0, i64 %layout.1)
          to label %bb16 unwind label %cleanup

bb13:                                             ; preds = %bb12
; invoke <alloc::alloc::Global as core::alloc::Allocator>::allocate_zeroed
  %36 = invoke { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17h3cdc98bb7032b113E"(%"alloc::alloc::Global"* align 1 %alloc, i64 %layout.0, i64 %layout.1)
          to label %bb17 unwind label %cleanup

bb17:                                             ; preds = %bb13
  store { i8*, i64 } %36, { i8*, i64 }* %result, align 8
  br label %bb18

bb18:                                             ; preds = %bb16, %bb17
  %37 = bitcast { i8*, i64 }* %result to {}**
  %38 = load {}*, {}** %37, align 8
  %39 = icmp eq {}* %38, null
  %_26 = select i1 %39, i64 1, i64 0
  switch i64 %_26, label %bb20 [
    i64 0, label %bb21
    i64 1, label %bb19
  ]

bb16:                                             ; preds = %bb15
  store { i8*, i64 } %35, { i8*, i64 }* %result, align 8
  br label %bb18

bb20:                                             ; preds = %bb18
  unreachable

bb21:                                             ; preds = %bb18
  %40 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %result, i32 0, i32 0
  %ptr.0 = load i8*, i8** %40, align 8, !nonnull !2, !noundef !2
  %41 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %result, i32 0, i32 1
  %ptr.1 = load i64, i64* %41, align 8
  %_48.0 = bitcast i8* %ptr.0 to [0 x i8]*
  %ptr = bitcast [0 x i8]* %_48.0 to i8*
  store i8* %ptr, i8** %self, align 8
  %_53 = load i8*, i8** %self, align 8
  store i8* %_53, i8** %_54, align 8
  %42 = load i8*, i8** %_54, align 8, !nonnull !2, !noundef !2
  store i8* %42, i8** %_30, align 8
  %43 = bitcast { i8*, i64 }* %3 to i8**
  %44 = load i8*, i8** %_30, align 8, !nonnull !2, !noundef !2
  store i8* %44, i8** %43, align 8
  %45 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %3, i32 0, i32 1
  store i64 %capacity, i64* %45, align 8
  %46 = bitcast { i8*, i64 }* %3 to %"alloc::alloc::Global"*
  br label %bb22

bb19:                                             ; preds = %bb18
; invoke alloc::alloc::handle_alloc_error
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h608ea16dca65c7f1E(i64 %layout.0, i64 %layout.1) #11
          to label %unreachable unwind label %cleanup

bb23:                                             ; preds = %bb24, %bb25
  %47 = bitcast { i8*, i32 }* %2 to i8**
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = insertvalue { i8*, i32 } undef, i8* %48, 0
  %52 = insertvalue { i8*, i32 } %51, i32 %50, 1
  resume { i8*, i32 } %52

bb24:                                             ; preds = %bb25
  br label %bb23
}

; alloc::raw_vec::RawVec<T,A>::current_memory
; Function Attrs: nonlazybind uwtable
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h5eb0979cd891db54E"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") %0, { i8*, i64 }* align 8 %self) unnamed_addr #1 {
start:
  %1 = alloca i64, align 8
  %pointer = alloca i8*, align 8
  %_10 = alloca i8*, align 8
  %_8 = alloca { i8*, { i64, i64 } }, align 8
  %_2 = alloca i8, align 1
  br i1 false, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %2 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  %_4 = load i64, i64* %2, align 8
  %_3 = icmp eq i64 %_4, 0
  %3 = zext i1 %_3 to i8
  store i8 %3, i8* %_2, align 1
  br label %bb3

bb1:                                              ; preds = %start
  store i8 1, i8* %_2, align 1
  br label %bb3

bb3:                                              ; preds = %bb2, %bb1
  %4 = load i8, i8* %_2, align 1, !range !5, !noundef !2
  %5 = trunc i8 %4 to i1
  br i1 %5, label %bb4, label %bb5

bb5:                                              ; preds = %bb3
  %6 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  %n = load i64, i64* %6, align 8
  store i64 1, i64* %1, align 8
  %_14 = load i64, i64* %1, align 8, !range !7, !noundef !2
  br label %bb10

bb4:                                              ; preds = %bb3
  %7 = getelementptr inbounds %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %0, i32 0, i32 1
  store i64 0, i64* %7, align 8
  br label %bb8

bb8:                                              ; preds = %bb7, %bb4
  ret void

bb10:                                             ; preds = %bb5
; call core::alloc::layout::Layout::array::inner
  %8 = call { i64, i64 } @_ZN4core5alloc6layout6Layout5array5inner17h2c11e6290ed32d66E(i64 1, i64 %_14, i64 %n)
  %_6.0 = extractvalue { i64, i64 } %8, 0
  %_6.1 = extractvalue { i64, i64 } %8, 1
  br label %bb9

bb9:                                              ; preds = %bb10
; call core::result::Result<T,E>::unwrap_unchecked
  %9 = call { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$16unwrap_unchecked17h6cc0222adbcb06a6E"(i64 %_6.0, i64 %_6.1, %"core::panic::location::Location<'_>"* align 8 bitcast (<{ i8*, [16 x i8] }>* @alloc106 to %"core::panic::location::Location<'_>"*))
  %layout.0 = extractvalue { i64, i64 } %9, 0
  %layout.1 = extractvalue { i64, i64 } %9, 1
  br label %bb6

bb6:                                              ; preds = %bb9
  %10 = bitcast { i8*, i64 }* %self to i8**
  %self1 = load i8*, i8** %10, align 8, !nonnull !2, !noundef !2
  store i8* %self1, i8** %pointer, align 8
  %_31 = load i8*, i8** %pointer, align 8, !nonnull !2, !noundef !2
  store i8* %_31, i8** %_10, align 8
  %11 = load i8*, i8** %_10, align 8, !nonnull !2, !noundef !2
; call <T as core::convert::Into<U>>::into
  %_9 = call i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h13fd8dc36c276c4cE"(i8* %11)
  br label %bb7

bb7:                                              ; preds = %bb6
  %12 = bitcast { i8*, { i64, i64 } }* %_8 to i8**
  store i8* %_9, i8** %12, align 8
  %13 = getelementptr inbounds { i8*, { i64, i64 } }, { i8*, { i64, i64 } }* %_8, i32 0, i32 1
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %13, i32 0, i32 0
  store i64 %layout.0, i64* %14, align 8
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %13, i32 0, i32 1
  store i64 %layout.1, i64* %15, align 8
  %16 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %0 to %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"*
  %17 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"* %16 to { i8*, { i64, i64 } }*
  %18 = bitcast { i8*, { i64, i64 } }* %17 to i8*
  %19 = bitcast { i8*, { i64, i64 } }* %_8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 24, i1 false)
  br label %bb8
}

; alloc::raw_vec::RawVec<T,A>::new_in
; Function Attrs: nonlazybind uwtable
define { i8*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17h74f21fa318d42ed6E"() unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %1 = alloca i8*, align 8
  %pointer = alloca i8*, align 8
  %_2 = alloca i8*, align 8
  %2 = alloca { i8*, i64 }, align 8
  %3 = bitcast i8** %1 to i64*
  store i64 1, i64* %3, align 8
  %ptr = load i8*, i8** %1, align 8
  br label %bb3

bb3:                                              ; preds = %start
  store i8* %ptr, i8** %pointer, align 8
  %_13 = load i8*, i8** %pointer, align 8, !nonnull !2, !noundef !2
  store i8* %_13, i8** %_2, align 8
  %4 = bitcast { i8*, i64 }* %2 to i8**
  %5 = load i8*, i8** %_2, align 8, !nonnull !2, !noundef !2
  store i8* %5, i8** %4, align 8
  %6 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  store i64 0, i64* %6, align 8
  %7 = bitcast { i8*, i64 }* %2 to %"alloc::alloc::Global"*
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8, !nonnull !2, !noundef !2
  %10 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = insertvalue { i8*, i64 } undef, i8* %9, 0
  %13 = insertvalue { i8*, i64 } %12, i64 %11, 1
  ret { i8*, i64 } %13

bb1:                                              ; No predecessors!
  br label %bb2

bb2:                                              ; preds = %bb1
  %14 = bitcast { i8*, i32 }* %0 to i8**
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = insertvalue { i8*, i32 } undef, i8* %15, 0
  %19 = insertvalue { i8*, i32 } %18, i32 %17, 1
  resume { i8*, i32 } %19
}

; <alloc::alloc::Global as core::alloc::Allocator>::deallocate
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h276aba7e510f7b46E"(%"alloc::alloc::Global"* align 1 %self, i8* %ptr, i64 %0, i64 %1) unnamed_addr #0 {
start:
  %_16 = alloca i64, align 8
  %layout1 = alloca { i64, i64 }, align 8
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
  %4 = bitcast { i64, i64 }* %layout to i64*
  %_4 = load i64, i64* %4, align 8
  %5 = icmp eq i64 %_4, 0
  br i1 %5, label %bb2, label %bb1

bb2:                                              ; preds = %start
  br label %bb3

bb1:                                              ; preds = %start
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %9 = load i64, i64* %8, align 8, !range !7, !noundef !2
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout1, i32 0, i32 0
  store i64 %7, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout1, i32 0, i32 1
  store i64 %9, i64* %11, align 8
  %12 = bitcast { i64, i64 }* %layout1 to i64*
  %_11 = load i64, i64* %12, align 8
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout1, i32 0, i32 1
  %self2 = load i64, i64* %13, align 8, !range !7, !noundef !2
  store i64 %self2, i64* %_16, align 8
  %_17 = load i64, i64* %_16, align 8, !range !7, !noundef !2
  call void @__rust_dealloc(i8* %ptr, i64 %_11, i64 %_17) #14
  br label %bb4

bb4:                                              ; preds = %bb1
  br label %bb3

bb3:                                              ; preds = %bb2, %bb4
  ret void
}

; <alloc::alloc::Global as core::alloc::Allocator>::allocate_zeroed
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17h3cdc98bb7032b113E"(%"alloc::alloc::Global"* align 1 %self, i64 %layout.0, i64 %layout.1) unnamed_addr #0 {
start:
; call alloc::alloc::Global::alloc_impl
  %0 = call { i8*, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h0c359eafd1973627E(%"alloc::alloc::Global"* align 1 %self, i64 %layout.0, i64 %layout.1, i1 zeroext true)
  %1 = extractvalue { i8*, i64 } %0, 0
  %2 = extractvalue { i8*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64 } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64 } %3, i64 %2, 1
  ret { i8*, i64 } %4
}

; <alloc::alloc::Global as core::alloc::Allocator>::allocate
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h5ec60e5782c02b74E"(%"alloc::alloc::Global"* align 1 %self, i64 %layout.0, i64 %layout.1) unnamed_addr #0 {
start:
; call alloc::alloc::Global::alloc_impl
  %0 = call { i8*, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h0c359eafd1973627E(%"alloc::alloc::Global"* align 1 %self, i64 %layout.0, i64 %layout.1, i1 zeroext false)
  %1 = extractvalue { i8*, i64 } %0, 0
  %2 = extractvalue { i8*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64 } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64 } %3, i64 %2, 1
  ret { i8*, i64 } %4
}

; <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9e1acb06701e89b6E"(%"alloc::vec::Vec<u8>"* align 8 %self) unnamed_addr #1 {
start:
  %_18 = alloca { i8*, i64 }, align 8
  %_17 = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 8
  %self1 = bitcast %"alloc::vec::Vec<u8>"* %self to { i8*, i64 }*
  %0 = bitcast { i8*, i64 }* %self1 to i8**
  %self2 = load i8*, i8** %0, align 8, !nonnull !2, !noundef !2
; call core::ptr::mut_ptr::<impl *mut T>::is_null
  %_8 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h11f4a438633a5384E"(i8* %self2)
  br label %bb2

bb2:                                              ; preds = %start
  %_7 = xor i1 %_8, true
  call void @llvm.assume(i1 %_7)
  %1 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %self, i32 0, i32 1
  %len = load i64, i64* %1, align 8
  %data_address = bitcast i8* %self2 to {}*
  %2 = bitcast { i8*, i64 }* %_18 to {}**
  store {}* %data_address, {}** %2, align 8
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_18, i32 0, i32 1
  store i64 %len, i64* %3, align 8
  %4 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_17 to { i8*, i64 }*
  %5 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_18, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_18, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %4, i32 0, i32 0
  store i8* %6, i8** %9, align 8
  %10 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %4, i32 0, i32 1
  store i64 %8, i64* %10, align 8
  %11 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_17 to { [0 x i8]*, i64 }*
  %12 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %11, i32 0, i32 0
  %_2.0 = load [0 x i8]*, [0 x i8]** %12, align 8
  %13 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %11, i32 0, i32 1
  %_2.1 = load i64, i64* %13, align 8
  br label %bb1

bb1:                                              ; preds = %bb2
  ret void
}

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbaea04dd6f3df53bE"({ i8*, i64 }* align 8 %self) unnamed_addr #1 {
start:
  %_2 = alloca %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", align 8
; call alloc::raw_vec::RawVec<T,A>::current_memory
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h5eb0979cd891db54E"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") %_2, { i8*, i64 }* align 8 %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_2, i32 0, i32 1
  %1 = load i64, i64* %0, align 8, !range !8, !noundef !2
  %2 = icmp eq i64 %1, 0
  %_4 = select i1 %2, i64 0, i64 1
  %3 = icmp eq i64 %_4, 1
  br i1 %3, label %bb2, label %bb4

bb2:                                              ; preds = %bb1
  %4 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_2 to %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"*
  %5 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"* %4 to { i8*, { i64, i64 } }*
  %6 = bitcast { i8*, { i64, i64 } }* %5 to i8**
  %ptr = load i8*, i8** %6, align 8, !nonnull !2, !noundef !2
  %7 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_2 to %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"*
  %8 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"* %7 to { i8*, { i64, i64 } }*
  %9 = getelementptr inbounds { i8*, { i64, i64 } }, { i8*, { i64, i64 } }* %8, i32 0, i32 1
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 0
  %layout.0 = load i64, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 1
  %layout.1 = load i64, i64* %11, align 8, !range !7, !noundef !2
  %_7 = bitcast { i8*, i64 }* %self to %"alloc::alloc::Global"*
; call <alloc::alloc::Global as core::alloc::Allocator>::deallocate
  call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h276aba7e510f7b46E"(%"alloc::alloc::Global"* align 1 %_7, i8* %ptr, i64 %layout.0, i64 %layout.1)
  br label %bb3

bb4:                                              ; preds = %bb3, %bb1
  ret void

bb3:                                              ; preds = %bb2
  br label %bb4
}

; probe1::probe
; Function Attrs: nonlazybind uwtable
define void @_ZN6probe15probe17haa2b49d100baa939E() unnamed_addr #1 {
start:
  %_10 = alloca [1 x { i8*, i64* }], align 8
  %_3 = alloca %"core::fmt::Arguments<'_>", align 8
  %res = alloca %"alloc::string::String", align 8
  %_1 = alloca %"alloc::string::String", align 8
; call core::fmt::ArgumentV1::new_lower_exp
  %0 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV113new_lower_exp17h018b5e77d0c85ee1E(i64* align 8 bitcast (<{ [8 x i8] }>* @alloc6 to i64*))
  %_11.0 = extractvalue { i8*, i64* } %0, 0
  %_11.1 = extractvalue { i8*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = getelementptr inbounds [1 x { i8*, i64* }], [1 x { i8*, i64* }]* %_10, i64 0, i64 0
  %2 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %1, i32 0, i32 0
  store i8* %_11.0, i8** %2, align 8
  %3 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %1, i32 0, i32 1
  store i64* %_11.1, i64** %3, align 8
  %_7.0 = bitcast [1 x { i8*, i64* }]* %_10 to [0 x { i8*, i64* }]*
; call core::fmt::Arguments::new_v1
  call void @_ZN4core3fmt9Arguments6new_v117h9c593ff1882e0e31E(%"core::fmt::Arguments<'_>"* sret(%"core::fmt::Arguments<'_>") %_3, [0 x { [0 x i8]*, i64 }]* align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc4 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* align 8 %_7.0, i64 1)
  br label %bb2

bb2:                                              ; preds = %bb1
; call alloc::fmt::format
  call void @_ZN5alloc3fmt6format17h769f7d25a24a6e69E(%"alloc::string::String"* sret(%"alloc::string::String") %res, %"core::fmt::Arguments<'_>"* %_3)
  br label %bb3

bb3:                                              ; preds = %bb2
  %4 = bitcast %"alloc::string::String"* %_1 to i8*
  %5 = bitcast %"alloc::string::String"* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 %5, i64 24, i1 false)
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9af3e77fc8c2fd9E"(%"alloc::string::String"* %_1)
  br label %bb4

bb4:                                              ; preds = %bb3
  ret void
}

; core::fmt::num::imp::<impl core::fmt::LowerExp for isize>::fmt
; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN4core3fmt3num3imp55_$LT$impl$u20$core..fmt..LowerExp$u20$for$u20$isize$GT$3fmt17hc7d777e55d001d5aE"(i64* align 8, %"core::fmt::Formatter<'_>"* align 8) unnamed_addr #1

; core::panicking::panic_fmt
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking9panic_fmt17h13f856077d656cf7E(%"core::fmt::Arguments<'_>"*, %"core::panic::location::Location<'_>"* align 8) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #1

; core::panicking::panic_no_unwind
; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_ZN4core9panicking15panic_no_unwind17ha6c2342fd4dddc81E() unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #6

; core::panicking::panic
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking5panic17h468c4695c47db9beE([0 x i8]* align 1, i64, %"core::panic::location::Location<'_>"* align 8) unnamed_addr #3

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #7

; alloc::fmt::format::format_inner
; Function Attrs: nonlazybind uwtable
declare void @_ZN5alloc3fmt6format12format_inner17h83a4a6d61c6af406E(%"alloc::string::String"* sret(%"alloc::string::String"), %"core::fmt::Arguments<'_>"*) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noalias i8* @__rust_alloc_zeroed(i64, i64) unnamed_addr #8

; Function Attrs: nounwind nonlazybind uwtable
declare noalias i8* @__rust_alloc(i64, i64) unnamed_addr #8

; alloc::raw_vec::capacity_overflow
; Function Attrs: noreturn nonlazybind uwtable
declare void @_ZN5alloc7raw_vec17capacity_overflow17h75f3fa53dc937969E() unnamed_addr #9

; alloc::alloc::handle_alloc_error
; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_ZN5alloc5alloc18handle_alloc_error17h608ea16dca65c7f1E(i64, i64) unnamed_addr #10

; Function Attrs: nounwind nonlazybind uwtable
declare void @__rust_dealloc(i8*, i64, i64) unnamed_addr #8

attributes #0 = { inlinehint nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #2 = { inlinehint noreturn nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #3 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #4 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nofree nosync nounwind readnone willreturn }
attributes #7 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #8 = { nounwind nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #9 = { noreturn nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #10 = { cold noreturn nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #11 = { noreturn }
attributes #12 = { noinline }
attributes #13 = { noinline noreturn nounwind }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{}
!3 = !{i64 1}
!4 = !{i64 8}
!5 = !{i8 0, i8 2}
!6 = !{i8 0, i8 3}
!7 = !{i64 1, i64 -9223372036854775807}
!8 = !{i64 0, i64 -9223372036854775807}
!9 = !{i64 0, i64 -9223372036854775806}
