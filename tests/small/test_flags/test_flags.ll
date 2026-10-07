; Orbit IR Lifter - x86 to LLVM IR
; Module: orbit_module
target triple = "x86_64-pc-linux-gnu"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"

declare i8 @llvm.ctpop.i8(i8)
declare i32 @llvm.cttz.i32(i32, i1)
declare i64 @llvm.cttz.i64(i64, i1)
declare i32 @llvm.ctlz.i32(i32, i1)
declare i64 @llvm.ctlz.i64(i64, i1)
declare float @llvm.sqrt.f32(float)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>)
declare <4 x double> @llvm.sqrt.v4f64(<4 x double>)
declare <8 x float> @llvm.sqrt.v8f32(<8 x float>)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>)
declare <4 x float> @llvm.minnum.v4f32(<4 x float>, <4 x float>)
declare <8 x float> @llvm.maxnum.v8f32(<8 x float>, <8 x float>)
declare <8 x float> @llvm.minnum.v8f32(<8 x float>, <8 x float>)
declare <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64>, <2 x i64>)
declare <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64>, <2 x i64>)
declare <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64>, <2 x i64>)
declare <2 x i64> @llvm.x86.aesni.aesdeclast(<2 x i64>, <2 x i64>)
declare <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64>)
declare <2 x i64> @llvm.x86.aesni.aeskeygenassist(<2 x i64>, i8)
declare <2 x i64> @llvm.x86.pclmulqdq(<2 x i64>, <2 x i64>, i8)

declare i64 @__cxa_finalize(i8*, i64, i64, i64, i64, i64, i64)
declare i64 @_ITM_registerTMCloneTable(i8*, i64, i64, i64, i64, i64, i64)
declare i64 @_ITM_deregisterTMCloneTable(i8*, i64, i64, i64, i64, i64, i64)
declare i64 @__gmon_start__(i8*, i64, i64, i64, i64, i64, i64)
declare i64 @__readfs_i64(i64)
declare i64 @__readgs_i64(i64)
declare i64 @__readcs_i64(i64)
declare i64 @__readds_i64(i64)
declare i64 @__reades_i64(i64)
declare i64 @__readss_i64(i64)

define i64 @entry(i8* %mem, i64 %rdi_in, i64 %rsi_in, i64 %rdx_in, i64 %rcx_in, i64 %r8_in, i64 %r9_in) {
  prologue_0x0:
  %rax = alloca i64
  %rbx = alloca i64
  %rcx = alloca i64
  %rdx = alloca i64
  %rsi = alloca i64
  %rdi = alloca i64
  %rbp = alloca i64
  %rsp = alloca i64
  %r8 = alloca i64
  %r9 = alloca i64
  %r10 = alloca i64
  %r11 = alloca i64
  %r12 = alloca i64
  %r13 = alloca i64
  %r14 = alloca i64
  %r15 = alloca i64
  store i64 %rdi_in, i64* %rdi
  store i64 %rsi_in, i64* %rsi
  store i64 %rdx_in, i64* %rdx
  store i64 %rcx_in, i64* %rcx
  store i64 %r8_in, i64* %r8
  store i64 %r9_in, i64* %r9
  %xmm0 = alloca i128
  %xmm1 = alloca i128
  %xmm2 = alloca i128
  %xmm3 = alloca i128
  %xmm4 = alloca i128
  %xmm5 = alloca i128
  %xmm6 = alloca i128
  %xmm7 = alloca i128
  %xmm8 = alloca i128
  %xmm9 = alloca i128
  %xmm10 = alloca i128
  %xmm11 = alloca i128
  %xmm12 = alloca i128
  %xmm13 = alloca i128
  %xmm14 = alloca i128
  %xmm15 = alloca i128
  %ymm0 = alloca i256
  %ymm1 = alloca i256
  %ymm2 = alloca i256
  %ymm3 = alloca i256
  %ymm4 = alloca i256
  %ymm5 = alloca i256
  %ymm6 = alloca i256
  %ymm7 = alloca i256
  %ymm8 = alloca i256
  %ymm9 = alloca i256
  %ymm10 = alloca i256
  %ymm11 = alloca i256
  %ymm12 = alloca i256
  %ymm13 = alloca i256
  %ymm14 = alloca i256
  %ymm15 = alloca i256
  %st0 = alloca x86_fp80
  %st1 = alloca x86_fp80
  %st2 = alloca x86_fp80
  %st3 = alloca x86_fp80
  %st4 = alloca x86_fp80
  %st5 = alloca x86_fp80
  %st6 = alloca x86_fp80
  %st7 = alloca x86_fp80
  %fpu_top = alloca i3
  store i3 0, i3* %fpu_top
  %membase_1 = ptrtoint i8* %mem to i64
  %t_2 = add i64 %membase_1, 65528
  %t_3 = inttoptr i64 %t_2 to i64*
  %t_4 = load i64, i64* %t_3
  %t_5 = icmp eq i64 %t_4, 0
  %t_6 = select i1 %t_5, i64 65000, i64 %t_4
  store i64 %t_6, i64* %rsp
  %zf = alloca i1
  %sf = alloca i1
  %cf = alloca i1
  %of = alloca i1
  %pf = alloca i1
  %af = alloca i1
  %df = alloca i1
  br label %bb_0x0
  bb_0x0:
  %t_7 = load i64, i64* %rax
  ret i64 %t_7
  
}

define i64 @_init(i8* %mem, i64 %rdi_in, i64 %rsi_in, i64 %rdx_in, i64 %rcx_in, i64 %r8_in, i64 %r9_in) {
  prologue_0x1000:
  %rax = alloca i64
  %rbx = alloca i64
  %rcx = alloca i64
  %rdx = alloca i64
  %rsi = alloca i64
  %rdi = alloca i64
  %rbp = alloca i64
  %rsp = alloca i64
  %r8 = alloca i64
  %r9 = alloca i64
  %r10 = alloca i64
  %r11 = alloca i64
  %r12 = alloca i64
  %r13 = alloca i64
  %r14 = alloca i64
  %r15 = alloca i64
  store i64 %rdi_in, i64* %rdi
  store i64 %rsi_in, i64* %rsi
  store i64 %rdx_in, i64* %rdx
  store i64 %rcx_in, i64* %rcx
  store i64 %r8_in, i64* %r8
  store i64 %r9_in, i64* %r9
  %xmm0 = alloca i128
  %xmm1 = alloca i128
  %xmm2 = alloca i128
  %xmm3 = alloca i128
  %xmm4 = alloca i128
  %xmm5 = alloca i128
  %xmm6 = alloca i128
  %xmm7 = alloca i128
  %xmm8 = alloca i128
  %xmm9 = alloca i128
  %xmm10 = alloca i128
  %xmm11 = alloca i128
  %xmm12 = alloca i128
  %xmm13 = alloca i128
  %xmm14 = alloca i128
  %xmm15 = alloca i128
  %ymm0 = alloca i256
  %ymm1 = alloca i256
  %ymm2 = alloca i256
  %ymm3 = alloca i256
  %ymm4 = alloca i256
  %ymm5 = alloca i256
  %ymm6 = alloca i256
  %ymm7 = alloca i256
  %ymm8 = alloca i256
  %ymm9 = alloca i256
  %ymm10 = alloca i256
  %ymm11 = alloca i256
  %ymm12 = alloca i256
  %ymm13 = alloca i256
  %ymm14 = alloca i256
  %ymm15 = alloca i256
  %st0 = alloca x86_fp80
  %st1 = alloca x86_fp80
  %st2 = alloca x86_fp80
  %st3 = alloca x86_fp80
  %st4 = alloca x86_fp80
  %st5 = alloca x86_fp80
  %st6 = alloca x86_fp80
  %st7 = alloca x86_fp80
  %fpu_top = alloca i3
  store i3 0, i3* %fpu_top
  %membase_1 = ptrtoint i8* %mem to i64
  %t_2 = add i64 %membase_1, 65528
  %t_3 = inttoptr i64 %t_2 to i64*
  %t_4 = load i64, i64* %t_3
  %t_5 = icmp eq i64 %t_4, 0
  %t_6 = select i1 %t_5, i64 65000, i64 %t_4
  store i64 %t_6, i64* %rsp
  %zf = alloca i1
  %sf = alloca i1
  %cf = alloca i1
  %of = alloca i1
  %pf = alloca i1
  %af = alloca i1
  %df = alloca i1
  br label %bb_0x1000
  bb_0x1000:
  %t_7 = load i64, i64* %rsp
  %t_8 = sub i64 %t_7, 8
  store i64 %t_8, i64* %rsp
  %t_9 = icmp eq i64 %t_8, 0
  %t_10 = icmp slt i64 %t_8, 0
  %t_11 = trunc i64 %t_8 to i8
  %t_12 = call i8 @llvm.ctpop.i8(i8 %t_11)
  %t_13 = and i8 %t_12, 1
  %t_14 = icmp eq i8 %t_13, 0
  %t_15 = icmp ult i64 %t_7, 8
  %t_16 = and i64 %t_7, 15
  %t_17 = and i64 8, 15
  %t_18 = sub i64 %t_16, %t_17
  %t_19 = icmp ugt i64 %t_18, 15
  %t_20 = icmp slt i64 %t_7, 0
  %t_21 = icmp slt i64 8, 0
  %t_22 = icmp slt i64 %t_8, 0
  %t_23 = xor i1 %t_20, %t_21
  %t_24 = xor i1 %t_20, %t_22
  %t_25 = and i1 %t_23, %t_24
  store i1 %t_9, i1* %zf
  store i1 %t_10, i1* %sf
  store i1 %t_15, i1* %cf
  store i1 %t_25, i1* %of
  store i1 %t_14, i1* %pf
  store i1 %t_19, i1* %af
  %t_26 = load i64, i64* %rax
  %t_27 = load i64, i64* %rax
  %t_28 = and i64 %t_26, %t_27
  %t_29 = icmp eq i64 %t_28, 0
  %t_30 = icmp slt i64 %t_28, 0
  %t_31 = trunc i64 %t_28 to i8
  %t_32 = call i8 @llvm.ctpop.i8(i8 %t_31)
  %t_33 = and i8 %t_32, 1
  %t_34 = icmp eq i8 %t_33, 0
  %t_35 = icmp eq i64 0, 1
  store i1 %t_29, i1* %zf
  store i1 %t_30, i1* %sf
  store i1 %t_35, i1* %cf
  store i1 %t_35, i1* %of
  store i1 %t_34, i1* %pf
  store i1 %t_35, i1* %af
  %flag_zf_36 = load i1, i1* %zf
  br i1 %flag_zf_36, label %bb_0x1016, label %bb_0x1014
  bb_0x1016:
  %t_37 = load i64, i64* %rsp
  %t_38 = add i64 %t_37, 8
  store i64 %t_38, i64* %rsp
  %t_39 = icmp eq i64 %t_38, 0
  %t_40 = icmp slt i64 %t_38, 0
  %t_41 = trunc i64 %t_38 to i8
  %t_42 = call i8 @llvm.ctpop.i8(i8 %t_41)
  %t_43 = and i8 %t_42, 1
  %t_44 = icmp eq i8 %t_43, 0
  %t_45 = icmp ult i64 %t_38, %t_37
  %t_46 = and i64 %t_37, 15
  %t_47 = and i64 8, 15
  %t_48 = add i64 %t_46, %t_47
  %t_49 = icmp ugt i64 %t_48, 15
  %t_50 = icmp slt i64 %t_37, 0
  %t_51 = icmp slt i64 8, 0
  %t_52 = icmp slt i64 %t_38, 0
  %t_53 = xor i1 %t_50, %t_51
  %t_54 = xor i1 %t_50, %t_52
  %t_55 = and i1 %t_53, %t_54
  store i1 %t_39, i1* %zf
  store i1 %t_40, i1* %sf
  store i1 %t_45, i1* %cf
  store i1 %t_55, i1* %of
  store i1 %t_44, i1* %pf
  store i1 %t_49, i1* %af
  %t_56 = load i64, i64* %rax
  ret i64 %t_56
  %t_57 = load i64, i64* %rax
  ret i64 %t_57
  bb_0x1014:
  %t_58 = load i64, i64* %rsp
  %t_59 = sub i64 %t_58, 8
  store i64 %t_59, i64* %rsp
  %t_60 = add i64 %membase_1, %t_59
  %t_61 = inttoptr i64 %t_60 to i64*
  store i64 0, i64* %t_61
  store i64 0, i64* %rax
  %t_62 = load i64, i64* %rsp
  %t_63 = add i64 %t_62, 8
  store i64 %t_63, i64* %rsp
  %t_64 = icmp eq i64 %t_63, 0
  %t_65 = icmp slt i64 %t_63, 0
  %t_66 = trunc i64 %t_63 to i8
  %t_67 = call i8 @llvm.ctpop.i8(i8 %t_66)
  %t_68 = and i8 %t_67, 1
  %t_69 = icmp eq i8 %t_68, 0
  %t_70 = icmp ult i64 %t_63, %t_62
  %t_71 = and i64 %t_62, 15
  %t_72 = and i64 8, 15
  %t_73 = add i64 %t_71, %t_72
  %t_74 = icmp ugt i64 %t_73, 15
  %t_75 = icmp slt i64 %t_62, 0
  %t_76 = icmp slt i64 8, 0
  %t_77 = icmp slt i64 %t_63, 0
  %t_78 = xor i1 %t_75, %t_76
  %t_79 = xor i1 %t_75, %t_77
  %t_80 = and i1 %t_78, %t_79
  store i1 %t_64, i1* %zf
  store i1 %t_65, i1* %sf
  store i1 %t_70, i1* %cf
  store i1 %t_80, i1* %of
  store i1 %t_69, i1* %pf
  store i1 %t_74, i1* %af
  %t_81 = load i64, i64* %rax
  ret i64 %t_81
  %t_82 = load i64, i64* %rax
  ret i64 %t_82
  
}

define i64 @deregister_tm_clones(i8* %mem, i64 %rdi_in, i64 %rsi_in, i64 %rdx_in, i64 %rcx_in, i64 %r8_in, i64 %r9_in) {
  prologue_0x1040:
  %rax = alloca i64
  %rbx = alloca i64
  %rcx = alloca i64
  %rdx = alloca i64
  %rsi = alloca i64
  %rdi = alloca i64
  %rbp = alloca i64
  %rsp = alloca i64
  %r8 = alloca i64
  %r9 = alloca i64
  %r10 = alloca i64
  %r11 = alloca i64
  %r12 = alloca i64
  %r13 = alloca i64
  %r14 = alloca i64
  %r15 = alloca i64
  store i64 %rdi_in, i64* %rdi
  store i64 %rsi_in, i64* %rsi
  store i64 %rdx_in, i64* %rdx
  store i64 %rcx_in, i64* %rcx
  store i64 %r8_in, i64* %r8
  store i64 %r9_in, i64* %r9
  %xmm0 = alloca i128
  %xmm1 = alloca i128
  %xmm2 = alloca i128
  %xmm3 = alloca i128
  %xmm4 = alloca i128
  %xmm5 = alloca i128
  %xmm6 = alloca i128
  %xmm7 = alloca i128
  %xmm8 = alloca i128
  %xmm9 = alloca i128
  %xmm10 = alloca i128
  %xmm11 = alloca i128
  %xmm12 = alloca i128
  %xmm13 = alloca i128
  %xmm14 = alloca i128
  %xmm15 = alloca i128
  %ymm0 = alloca i256
  %ymm1 = alloca i256
  %ymm2 = alloca i256
  %ymm3 = alloca i256
  %ymm4 = alloca i256
  %ymm5 = alloca i256
  %ymm6 = alloca i256
  %ymm7 = alloca i256
  %ymm8 = alloca i256
  %ymm9 = alloca i256
  %ymm10 = alloca i256
  %ymm11 = alloca i256
  %ymm12 = alloca i256
  %ymm13 = alloca i256
  %ymm14 = alloca i256
  %ymm15 = alloca i256
  %st0 = alloca x86_fp80
  %st1 = alloca x86_fp80
  %st2 = alloca x86_fp80
  %st3 = alloca x86_fp80
  %st4 = alloca x86_fp80
  %st5 = alloca x86_fp80
  %st6 = alloca x86_fp80
  %st7 = alloca x86_fp80
  %fpu_top = alloca i3
  store i3 0, i3* %fpu_top
  %membase_1 = ptrtoint i8* %mem to i64
  %t_2 = add i64 %membase_1, 65528
  %t_3 = inttoptr i64 %t_2 to i64*
  %t_4 = load i64, i64* %t_3
  %t_5 = icmp eq i64 %t_4, 0
  %t_6 = select i1 %t_5, i64 65000, i64 %t_4
  store i64 %t_6, i64* %rsp
  %zf = alloca i1
  %sf = alloca i1
  %cf = alloca i1
  %of = alloca i1
  %pf = alloca i1
  %af = alloca i1
  %df = alloca i1
  br label %bb_0x1040
  bb_0x1040:
  store i64 16392, i64* %rdi
  store i64 16392, i64* %rax
  %t_7 = load i64, i64* %rax
  %t_8 = load i64, i64* %rdi
  %t_9 = sub i64 %t_7, %t_8
  %t_10 = icmp eq i64 %t_9, 0
  %t_11 = icmp slt i64 %t_9, 0
  %t_12 = icmp ult i64 %t_7, %t_8
  %t_13 = icmp slt i64 %t_7, 0
  %t_14 = icmp slt i64 %t_8, 0
  %t_15 = icmp slt i64 %t_9, 0
  %t_16 = xor i1 %t_13, %t_14
  %t_17 = xor i1 %t_13, %t_15
  %t_18 = and i1 %t_16, %t_17
  %t_19 = trunc i64 %t_9 to i8
  %t_20 = call i8 @llvm.ctpop.i8(i8 %t_19)
  %t_21 = and i8 %t_20, 1
  %t_22 = icmp eq i8 %t_21, 0
  %t_23 = and i64 %t_7, 15
  %t_24 = and i64 %t_8, 15
  %t_25 = sub i64 %t_23, %t_24
  %t_26 = icmp ugt i64 %t_25, 15
  store i1 %t_10, i1* %zf
  store i1 %t_11, i1* %sf
  store i1 %t_12, i1* %cf
  store i1 %t_18, i1* %of
  store i1 %t_22, i1* %pf
  store i1 %t_26, i1* %af
  %flag_zf_27 = load i1, i1* %zf
  br i1 %flag_zf_27, label %bb_0x1068, label %bb_0x1053
  bb_0x1068:
  %t_28 = load i64, i64* %rax
  ret i64 %t_28
  %t_29 = load i64, i64* %rax
  ret i64 %t_29
  bb_0x1053:
  %t_30 = load i64, i64* %rax
  %t_31 = load i64, i64* %rax
  %t_32 = and i64 %t_30, %t_31
  %t_33 = icmp eq i64 %t_32, 0
  %t_34 = icmp slt i64 %t_32, 0
  %t_35 = trunc i64 %t_32 to i8
  %t_36 = call i8 @llvm.ctpop.i8(i8 %t_35)
  %t_37 = and i8 %t_36, 1
  %t_38 = icmp eq i8 %t_37, 0
  %t_39 = icmp eq i64 0, 1
  store i1 %t_33, i1* %zf
  store i1 %t_34, i1* %sf
  store i1 %t_39, i1* %cf
  store i1 %t_39, i1* %of
  store i1 %t_38, i1* %pf
  store i1 %t_39, i1* %af
  %flag_zf_40 = load i1, i1* %zf
  br i1 %flag_zf_40, label %bb_0x1068, label %bb_0x105f
  bb_0x105f:
  %t_41 = load i64, i64* %rax
  ret i64 %t_41
  
}

define i64 @register_tm_clones(i8* %mem, i64 %rdi_in, i64 %rsi_in, i64 %rdx_in, i64 %rcx_in, i64 %r8_in, i64 %r9_in) {
  prologue_0x1070:
  %rax = alloca i64
  %rbx = alloca i64
  %rcx = alloca i64
  %rdx = alloca i64
  %rsi = alloca i64
  %rdi = alloca i64
  %rbp = alloca i64
  %rsp = alloca i64
  %r8 = alloca i64
  %r9 = alloca i64
  %r10 = alloca i64
  %r11 = alloca i64
  %r12 = alloca i64
  %r13 = alloca i64
  %r14 = alloca i64
  %r15 = alloca i64
  store i64 %rdi_in, i64* %rdi
  store i64 %rsi_in, i64* %rsi
  store i64 %rdx_in, i64* %rdx
  store i64 %rcx_in, i64* %rcx
  store i64 %r8_in, i64* %r8
  store i64 %r9_in, i64* %r9
  %xmm0 = alloca i128
  %xmm1 = alloca i128
  %xmm2 = alloca i128
  %xmm3 = alloca i128
  %xmm4 = alloca i128
  %xmm5 = alloca i128
  %xmm6 = alloca i128
  %xmm7 = alloca i128
  %xmm8 = alloca i128
  %xmm9 = alloca i128
  %xmm10 = alloca i128
  %xmm11 = alloca i128
  %xmm12 = alloca i128
  %xmm13 = alloca i128
  %xmm14 = alloca i128
  %xmm15 = alloca i128
  %ymm0 = alloca i256
  %ymm1 = alloca i256
  %ymm2 = alloca i256
  %ymm3 = alloca i256
  %ymm4 = alloca i256
  %ymm5 = alloca i256
  %ymm6 = alloca i256
  %ymm7 = alloca i256
  %ymm8 = alloca i256
  %ymm9 = alloca i256
  %ymm10 = alloca i256
  %ymm11 = alloca i256
  %ymm12 = alloca i256
  %ymm13 = alloca i256
  %ymm14 = alloca i256
  %ymm15 = alloca i256
  %st0 = alloca x86_fp80
  %st1 = alloca x86_fp80
  %st2 = alloca x86_fp80
  %st3 = alloca x86_fp80
  %st4 = alloca x86_fp80
  %st5 = alloca x86_fp80
  %st6 = alloca x86_fp80
  %st7 = alloca x86_fp80
  %fpu_top = alloca i3
  store i3 0, i3* %fpu_top
  %membase_1 = ptrtoint i8* %mem to i64
  %t_2 = add i64 %membase_1, 65528
  %t_3 = inttoptr i64 %t_2 to i64*
  %t_4 = load i64, i64* %t_3
  %t_5 = icmp eq i64 %t_4, 0
  %t_6 = select i1 %t_5, i64 65000, i64 %t_4
  store i64 %t_6, i64* %rsp
  %zf = alloca i1
  %sf = alloca i1
  %cf = alloca i1
  %of = alloca i1
  %pf = alloca i1
  %af = alloca i1
  %df = alloca i1
  br label %bb_0x1070
  bb_0x1070:
  store i64 16392, i64* %rdi
  store i64 16392, i64* %rsi
  %t_7 = load i64, i64* %rsi
  %t_8 = load i64, i64* %rdi
  %t_9 = sub i64 %t_7, %t_8
  store i64 %t_9, i64* %rsi
  %t_10 = icmp eq i64 %t_9, 0
  %t_11 = icmp slt i64 %t_9, 0
  %t_12 = trunc i64 %t_9 to i8
  %t_13 = call i8 @llvm.ctpop.i8(i8 %t_12)
  %t_14 = and i8 %t_13, 1
  %t_15 = icmp eq i8 %t_14, 0
  %t_16 = icmp ult i64 %t_7, %t_8
  %t_17 = and i64 %t_7, 15
  %t_18 = and i64 %t_8, 15
  %t_19 = sub i64 %t_17, %t_18
  %t_20 = icmp ugt i64 %t_19, 15
  %t_21 = icmp slt i64 %t_7, 0
  %t_22 = icmp slt i64 %t_8, 0
  %t_23 = icmp slt i64 %t_9, 0
  %t_24 = xor i1 %t_21, %t_22
  %t_25 = xor i1 %t_21, %t_23
  %t_26 = and i1 %t_24, %t_25
  store i1 %t_10, i1* %zf
  store i1 %t_11, i1* %sf
  store i1 %t_16, i1* %cf
  store i1 %t_26, i1* %of
  store i1 %t_15, i1* %pf
  store i1 %t_20, i1* %af
  %t_27 = load i64, i64* %rsi
  store i64 %t_27, i64* %rax
  %t_28 = load i64, i64* %rsi
  %t_29 = lshr i64 %t_28, 63
  store i64 %t_29, i64* %rsi
  %t_30 = load i64, i64* %rax
  %t_31 = ashr i64 %t_30, 3
  store i64 %t_31, i64* %rax
  %t_32 = load i64, i64* %rsi
  %t_33 = load i64, i64* %rax
  %t_34 = add i64 %t_32, %t_33
  store i64 %t_34, i64* %rsi
  %t_35 = icmp eq i64 %t_34, 0
  %t_36 = icmp slt i64 %t_34, 0
  %t_37 = trunc i64 %t_34 to i8
  %t_38 = call i8 @llvm.ctpop.i8(i8 %t_37)
  %t_39 = and i8 %t_38, 1
  %t_40 = icmp eq i8 %t_39, 0
  %t_41 = icmp ult i64 %t_34, %t_32
  %t_42 = and i64 %t_32, 15
  %t_43 = and i64 %t_33, 15
  %t_44 = add i64 %t_42, %t_43
  %t_45 = icmp ugt i64 %t_44, 15
  %t_46 = icmp slt i64 %t_32, 0
  %t_47 = icmp slt i64 %t_33, 0
  %t_48 = icmp slt i64 %t_34, 0
  %t_49 = xor i1 %t_46, %t_47
  %t_50 = xor i1 %t_46, %t_48
  %t_51 = and i1 %t_49, %t_50
  store i1 %t_35, i1* %zf
  store i1 %t_36, i1* %sf
  store i1 %t_41, i1* %cf
  store i1 %t_51, i1* %of
  store i1 %t_40, i1* %pf
  store i1 %t_45, i1* %af
  %t_52 = load i64, i64* %rsi
  %t_53 = ashr i64 %t_52, 1
  store i64 %t_53, i64* %rsi
  %flag_zf_54 = load i1, i1* %zf
  br i1 %flag_zf_54, label %bb_0x10a8, label %bb_0x1094
  bb_0x10a8:
  %t_55 = load i64, i64* %rax
  ret i64 %t_55
  %t_56 = load i64, i64* %rax
  ret i64 %t_56
  bb_0x1094:
  %t_57 = load i64, i64* %rax
  %t_58 = load i64, i64* %rax
  %t_59 = and i64 %t_57, %t_58
  %t_60 = icmp eq i64 %t_59, 0
  %t_61 = icmp slt i64 %t_59, 0
  %t_62 = trunc i64 %t_59 to i8
  %t_63 = call i8 @llvm.ctpop.i8(i8 %t_62)
  %t_64 = and i8 %t_63, 1
  %t_65 = icmp eq i8 %t_64, 0
  %t_66 = icmp eq i64 0, 1
  store i1 %t_60, i1* %zf
  store i1 %t_61, i1* %sf
  store i1 %t_66, i1* %cf
  store i1 %t_66, i1* %of
  store i1 %t_65, i1* %pf
  store i1 %t_66, i1* %af
  %flag_zf_67 = load i1, i1* %zf
  br i1 %flag_zf_67, label %bb_0x10a8, label %bb_0x10a0
  bb_0x10a0:
  %t_68 = load i64, i64* %rax
  ret i64 %t_68
  
}

define i64 @__do_global_dtors_aux(i8* %mem, i64 %rdi_in, i64 %rsi_in, i64 %rdx_in, i64 %rcx_in, i64 %r8_in, i64 %r9_in) {
  prologue_0x10b0:
  %rax = alloca i64
  %rbx = alloca i64
  %rcx = alloca i64
  %rdx = alloca i64
  %rsi = alloca i64
  %rdi = alloca i64
  %rbp = alloca i64
  %rsp = alloca i64
  %r8 = alloca i64
  %r9 = alloca i64
  %r10 = alloca i64
  %r11 = alloca i64
  %r12 = alloca i64
  %r13 = alloca i64
  %r14 = alloca i64
  %r15 = alloca i64
  store i64 %rdi_in, i64* %rdi
  store i64 %rsi_in, i64* %rsi
  store i64 %rdx_in, i64* %rdx
  store i64 %rcx_in, i64* %rcx
  store i64 %r8_in, i64* %r8
  store i64 %r9_in, i64* %r9
  %xmm0 = alloca i128
  %xmm1 = alloca i128
  %xmm2 = alloca i128
  %xmm3 = alloca i128
  %xmm4 = alloca i128
  %xmm5 = alloca i128
  %xmm6 = alloca i128
  %xmm7 = alloca i128
  %xmm8 = alloca i128
  %xmm9 = alloca i128
  %xmm10 = alloca i128
  %xmm11 = alloca i128
  %xmm12 = alloca i128
  %xmm13 = alloca i128
  %xmm14 = alloca i128
  %xmm15 = alloca i128
  %ymm0 = alloca i256
  %ymm1 = alloca i256
  %ymm2 = alloca i256
  %ymm3 = alloca i256
  %ymm4 = alloca i256
  %ymm5 = alloca i256
  %ymm6 = alloca i256
  %ymm7 = alloca i256
  %ymm8 = alloca i256
  %ymm9 = alloca i256
  %ymm10 = alloca i256
  %ymm11 = alloca i256
  %ymm12 = alloca i256
  %ymm13 = alloca i256
  %ymm14 = alloca i256
  %ymm15 = alloca i256
  %st0 = alloca x86_fp80
  %st1 = alloca x86_fp80
  %st2 = alloca x86_fp80
  %st3 = alloca x86_fp80
  %st4 = alloca x86_fp80
  %st5 = alloca x86_fp80
  %st6 = alloca x86_fp80
  %st7 = alloca x86_fp80
  %fpu_top = alloca i3
  store i3 0, i3* %fpu_top
  %membase_1 = ptrtoint i8* %mem to i64
  %t_2 = add i64 %membase_1, 65528
  %t_3 = inttoptr i64 %t_2 to i64*
  %t_4 = load i64, i64* %t_3
  %t_5 = icmp eq i64 %t_4, 0
  %t_6 = select i1 %t_5, i64 65000, i64 %t_4
  store i64 %t_6, i64* %rsp
  %zf = alloca i1
  %sf = alloca i1
  %cf = alloca i1
  %of = alloca i1
  %pf = alloca i1
  %af = alloca i1
  %df = alloca i1
  br label %bb_0x10b0
  bb_0x10b0:
  %t_7 = sub i64 0, 0
  %t_8 = icmp eq i64 %t_7, 0
  %t_9 = icmp slt i64 %t_7, 0
  %t_10 = icmp ult i64 0, 0
  %t_11 = icmp slt i64 0, 0
  %t_12 = icmp slt i64 0, 0
  %t_13 = icmp slt i64 %t_7, 0
  %t_14 = xor i1 %t_11, %t_12
  %t_15 = xor i1 %t_11, %t_13
  %t_16 = and i1 %t_14, %t_15
  %t_17 = trunc i64 %t_7 to i8
  %t_18 = call i8 @llvm.ctpop.i8(i8 %t_17)
  %t_19 = and i8 %t_18, 1
  %t_20 = icmp eq i8 %t_19, 0
  %t_21 = and i64 0, 15
  %t_22 = and i64 0, 15
  %t_23 = sub i64 %t_21, %t_22
  %t_24 = icmp ugt i64 %t_23, 15
  store i1 %t_8, i1* %zf
  store i1 %t_9, i1* %sf
  store i1 %t_10, i1* %cf
  store i1 %t_16, i1* %of
  store i1 %t_20, i1* %pf
  store i1 %t_24, i1* %af
  %flag_zf_25 = load i1, i1* %zf
  %t_26 = xor i1 %flag_zf_25, true
  br i1 %t_26, label %bb_0x10e8, label %bb_0x10bd
  bb_0x10d7:
  %t_27 = load i64, i64* %rdi
  %t_28 = load i64, i64* %rsi
  %t_29 = load i64, i64* %rdx
  %t_30 = load i64, i64* %rcx
  %t_31 = load i64, i64* %r8
  %t_32 = load i64, i64* %r9
  %t_33 = load i64, i64* %rsp
  %t_34 = sub i64 %t_33, 8
  store i64 %t_34, i64* %rsp
  %t_35 = add i64 %membase_1, 65528
  %t_36 = inttoptr i64 %t_35 to i64*
  store i64 %t_34, i64* %t_36
  %t_37 = call i64 @deregister_tm_clones(i8* %mem, i64 %t_27, i64 %t_28, i64 %t_29, i64 %t_30, i64 %t_31, i64 %t_32)
  store i64 %t_37, i64* %rax
  %t_38 = load i64, i64* %rsp
  %t_39 = add i64 %membase_1, %t_38
  %t_40 = inttoptr i64 %t_39 to i64*
  %t_41 = load i64, i64* %t_40
  %t_42 = add i64 %t_38, 8
  store i64 %t_42, i64* %rsp
  store i64 %t_41, i64* %rbp
  %t_43 = load i64, i64* %rax
  ret i64 %t_43
  %t_44 = load i64, i64* %rax
  ret i64 %t_44
  bb_0x10cb:
  %t_45 = load i64, i64* %rdi
  %t_46 = load i64, i64* %rsi
  %t_47 = load i64, i64* %rdx
  %t_48 = load i64, i64* %rcx
  %t_49 = load i64, i64* %r8
  %t_50 = load i64, i64* %r9
  %t_51 = load i64, i64* %rsp
  %t_52 = sub i64 %t_51, 8
  store i64 %t_52, i64* %rsp
  %t_53 = add i64 %membase_1, 65528
  %t_54 = inttoptr i64 %t_53 to i64*
  store i64 %t_52, i64* %t_54
  %t_55 = call i64 @sub_0x1030(i8* %mem, i64 %t_45, i64 %t_46, i64 %t_47, i64 %t_48, i64 %t_49, i64 %t_50)
  store i64 %t_55, i64* %rax
  %t_56 = load i64, i64* %rdi
  %t_57 = load i64, i64* %rsi
  %t_58 = load i64, i64* %rdx
  %t_59 = load i64, i64* %rcx
  %t_60 = load i64, i64* %r8
  %t_61 = load i64, i64* %r9
  %t_62 = load i64, i64* %rsp
  %t_63 = sub i64 %t_62, 8
  store i64 %t_63, i64* %rsp
  %t_64 = add i64 %membase_1, 65528
  %t_65 = inttoptr i64 %t_64 to i64*
  store i64 %t_63, i64* %t_65
  %t_66 = call i64 @deregister_tm_clones(i8* %mem, i64 %t_56, i64 %t_57, i64 %t_58, i64 %t_59, i64 %t_60, i64 %t_61)
  store i64 %t_66, i64* %rax
  %t_67 = load i64, i64* %rsp
  %t_68 = add i64 %membase_1, %t_67
  %t_69 = inttoptr i64 %t_68 to i64*
  %t_70 = load i64, i64* %t_69
  %t_71 = add i64 %t_67, 8
  store i64 %t_71, i64* %rsp
  store i64 %t_70, i64* %rbp
  %t_72 = load i64, i64* %rax
  ret i64 %t_72
  %t_73 = load i64, i64* %rax
  ret i64 %t_73
  bb_0x10e8:
  %t_74 = load i64, i64* %rax
  ret i64 %t_74
  %t_75 = load i64, i64* %rax
  ret i64 %t_75
  bb_0x10bd:
  %t_76 = load i64, i64* %rbp
  %t_77 = load i64, i64* %rsp
  %t_78 = sub i64 %t_77, 8
  store i64 %t_78, i64* %rsp
  %t_79 = add i64 %membase_1, %t_78
  %t_80 = inttoptr i64 %t_79 to i64*
  store i64 %t_76, i64* %t_80
  %t_81 = sub i64 0, 0
  %t_82 = icmp eq i64 %t_81, 0
  %t_83 = icmp slt i64 %t_81, 0
  %t_84 = icmp ult i64 0, 0
  %t_85 = icmp slt i64 0, 0
  %t_86 = icmp slt i64 0, 0
  %t_87 = icmp slt i64 %t_81, 0
  %t_88 = xor i1 %t_85, %t_86
  %t_89 = xor i1 %t_85, %t_87
  %t_90 = and i1 %t_88, %t_89
  %t_91 = trunc i64 %t_81 to i8
  %t_92 = call i8 @llvm.ctpop.i8(i8 %t_91)
  %t_93 = and i8 %t_92, 1
  %t_94 = icmp eq i8 %t_93, 0
  %t_95 = and i64 0, 15
  %t_96 = and i64 0, 15
  %t_97 = sub i64 %t_95, %t_96
  %t_98 = icmp ugt i64 %t_97, 15
  store i1 %t_82, i1* %zf
  store i1 %t_83, i1* %sf
  store i1 %t_84, i1* %cf
  store i1 %t_90, i1* %of
  store i1 %t_94, i1* %pf
  store i1 %t_98, i1* %af
  %t_99 = load i64, i64* %rsp
  store i64 %t_99, i64* %rbp
  %flag_zf_100 = load i1, i1* %zf
  br i1 %flag_zf_100, label %bb_0x10d7, label %bb_0x10cb
  
}

define i64 @frame_dummy(i8* %mem, i64 %rdi_in, i64 %rsi_in, i64 %rdx_in, i64 %rcx_in, i64 %r8_in, i64 %r9_in) {
  prologue_0x10f0:
  %rax = alloca i64
  %rbx = alloca i64
  %rcx = alloca i64
  %rdx = alloca i64
  %rsi = alloca i64
  %rdi = alloca i64
  %rbp = alloca i64
  %rsp = alloca i64
  %r8 = alloca i64
  %r9 = alloca i64
  %r10 = alloca i64
  %r11 = alloca i64
  %r12 = alloca i64
  %r13 = alloca i64
  %r14 = alloca i64
  %r15 = alloca i64
  store i64 %rdi_in, i64* %rdi
  store i64 %rsi_in, i64* %rsi
  store i64 %rdx_in, i64* %rdx
  store i64 %rcx_in, i64* %rcx
  store i64 %r8_in, i64* %r8
  store i64 %r9_in, i64* %r9
  %xmm0 = alloca i128
  %xmm1 = alloca i128
  %xmm2 = alloca i128
  %xmm3 = alloca i128
  %xmm4 = alloca i128
  %xmm5 = alloca i128
  %xmm6 = alloca i128
  %xmm7 = alloca i128
  %xmm8 = alloca i128
  %xmm9 = alloca i128
  %xmm10 = alloca i128
  %xmm11 = alloca i128
  %xmm12 = alloca i128
  %xmm13 = alloca i128
  %xmm14 = alloca i128
  %xmm15 = alloca i128
  %ymm0 = alloca i256
  %ymm1 = alloca i256
  %ymm2 = alloca i256
  %ymm3 = alloca i256
  %ymm4 = alloca i256
  %ymm5 = alloca i256
  %ymm6 = alloca i256
  %ymm7 = alloca i256
  %ymm8 = alloca i256
  %ymm9 = alloca i256
  %ymm10 = alloca i256
  %ymm11 = alloca i256
  %ymm12 = alloca i256
  %ymm13 = alloca i256
  %ymm14 = alloca i256
  %ymm15 = alloca i256
  %st0 = alloca x86_fp80
  %st1 = alloca x86_fp80
  %st2 = alloca x86_fp80
  %st3 = alloca x86_fp80
  %st4 = alloca x86_fp80
  %st5 = alloca x86_fp80
  %st6 = alloca x86_fp80
  %st7 = alloca x86_fp80
  %fpu_top = alloca i3
  store i3 0, i3* %fpu_top
  %membase_1 = ptrtoint i8* %mem to i64
  %t_2 = add i64 %membase_1, 65528
  %t_3 = inttoptr i64 %t_2 to i64*
  %t_4 = load i64, i64* %t_3
  %t_5 = icmp eq i64 %t_4, 0
  %t_6 = select i1 %t_5, i64 65000, i64 %t_4
  store i64 %t_6, i64* %rsp
  %zf = alloca i1
  %sf = alloca i1
  %cf = alloca i1
  %of = alloca i1
  %pf = alloca i1
  %af = alloca i1
  %df = alloca i1
  br label %bb_0x10f0
  bb_0x10f0:
  br label %bb_0x1070
  bb_0x1070:
  store i64 16392, i64* %rdi
  store i64 16392, i64* %rsi
  %t_7 = load i64, i64* %rsi
  %t_8 = load i64, i64* %rdi
  %t_9 = sub i64 %t_7, %t_8
  store i64 %t_9, i64* %rsi
  %t_10 = icmp eq i64 %t_9, 0
  %t_11 = icmp slt i64 %t_9, 0
  %t_12 = trunc i64 %t_9 to i8
  %t_13 = call i8 @llvm.ctpop.i8(i8 %t_12)
  %t_14 = and i8 %t_13, 1
  %t_15 = icmp eq i8 %t_14, 0
  %t_16 = icmp ult i64 %t_7, %t_8
  %t_17 = and i64 %t_7, 15
  %t_18 = and i64 %t_8, 15
  %t_19 = sub i64 %t_17, %t_18
  %t_20 = icmp ugt i64 %t_19, 15
  %t_21 = icmp slt i64 %t_7, 0
  %t_22 = icmp slt i64 %t_8, 0
  %t_23 = icmp slt i64 %t_9, 0
  %t_24 = xor i1 %t_21, %t_22
  %t_25 = xor i1 %t_21, %t_23
  %t_26 = and i1 %t_24, %t_25
  store i1 %t_10, i1* %zf
  store i1 %t_11, i1* %sf
  store i1 %t_16, i1* %cf
  store i1 %t_26, i1* %of
  store i1 %t_15, i1* %pf
  store i1 %t_20, i1* %af
  %t_27 = load i64, i64* %rsi
  store i64 %t_27, i64* %rax
  %t_28 = load i64, i64* %rsi
  %t_29 = lshr i64 %t_28, 63
  store i64 %t_29, i64* %rsi
  %t_30 = load i64, i64* %rax
  %t_31 = ashr i64 %t_30, 3
  store i64 %t_31, i64* %rax
  %t_32 = load i64, i64* %rsi
  %t_33 = load i64, i64* %rax
  %t_34 = add i64 %t_32, %t_33
  store i64 %t_34, i64* %rsi
  %t_35 = icmp eq i64 %t_34, 0
  %t_36 = icmp slt i64 %t_34, 0
  %t_37 = trunc i64 %t_34 to i8
  %t_38 = call i8 @llvm.ctpop.i8(i8 %t_37)
  %t_39 = and i8 %t_38, 1
  %t_40 = icmp eq i8 %t_39, 0
  %t_41 = icmp ult i64 %t_34, %t_32
  %t_42 = and i64 %t_32, 15
  %t_43 = and i64 %t_33, 15
  %t_44 = add i64 %t_42, %t_43
  %t_45 = icmp ugt i64 %t_44, 15
  %t_46 = icmp slt i64 %t_32, 0
  %t_47 = icmp slt i64 %t_33, 0
  %t_48 = icmp slt i64 %t_34, 0
  %t_49 = xor i1 %t_46, %t_47
  %t_50 = xor i1 %t_46, %t_48
  %t_51 = and i1 %t_49, %t_50
  store i1 %t_35, i1* %zf
  store i1 %t_36, i1* %sf
  store i1 %t_41, i1* %cf
  store i1 %t_51, i1* %of
  store i1 %t_40, i1* %pf
  store i1 %t_45, i1* %af
  %t_52 = load i64, i64* %rsi
  %t_53 = ashr i64 %t_52, 1
  store i64 %t_53, i64* %rsi
  br label %bb_0x10a8
  bb_0x10a8:
  %t_54 = load i64, i64* %rax
  ret i64 %t_54
  %t_55 = load i64, i64* %rax
  ret i64 %t_55
  
}

define i64 @max(i8* %mem, i64 %rdi_in, i64 %rsi_in, i64 %rdx_in, i64 %rcx_in, i64 %r8_in, i64 %r9_in) {
  prologue_0x10f9:
  %rax = alloca i64
  %rbx = alloca i64
  %rcx = alloca i64
  %rdx = alloca i64
  %rsi = alloca i64
  %rdi = alloca i64
  %rbp = alloca i64
  %rsp = alloca i64
  %r8 = alloca i64
  %r9 = alloca i64
  %r10 = alloca i64
  %r11 = alloca i64
  %r12 = alloca i64
  %r13 = alloca i64
  %r14 = alloca i64
  %r15 = alloca i64
  store i64 %rdi_in, i64* %rdi
  store i64 %rsi_in, i64* %rsi
  store i64 %rdx_in, i64* %rdx
  store i64 %rcx_in, i64* %rcx
  store i64 %r8_in, i64* %r8
  store i64 %r9_in, i64* %r9
  %xmm0 = alloca i128
  %xmm1 = alloca i128
  %xmm2 = alloca i128
  %xmm3 = alloca i128
  %xmm4 = alloca i128
  %xmm5 = alloca i128
  %xmm6 = alloca i128
  %xmm7 = alloca i128
  %xmm8 = alloca i128
  %xmm9 = alloca i128
  %xmm10 = alloca i128
  %xmm11 = alloca i128
  %xmm12 = alloca i128
  %xmm13 = alloca i128
  %xmm14 = alloca i128
  %xmm15 = alloca i128
  %ymm0 = alloca i256
  %ymm1 = alloca i256
  %ymm2 = alloca i256
  %ymm3 = alloca i256
  %ymm4 = alloca i256
  %ymm5 = alloca i256
  %ymm6 = alloca i256
  %ymm7 = alloca i256
  %ymm8 = alloca i256
  %ymm9 = alloca i256
  %ymm10 = alloca i256
  %ymm11 = alloca i256
  %ymm12 = alloca i256
  %ymm13 = alloca i256
  %ymm14 = alloca i256
  %ymm15 = alloca i256
  %st0 = alloca x86_fp80
  %st1 = alloca x86_fp80
  %st2 = alloca x86_fp80
  %st3 = alloca x86_fp80
  %st4 = alloca x86_fp80
  %st5 = alloca x86_fp80
  %st6 = alloca x86_fp80
  %st7 = alloca x86_fp80
  %fpu_top = alloca i3
  store i3 0, i3* %fpu_top
  %membase_1 = ptrtoint i8* %mem to i64
  %t_2 = add i64 %membase_1, 65528
  %t_3 = inttoptr i64 %t_2 to i64*
  %t_4 = load i64, i64* %t_3
  %t_5 = icmp eq i64 %t_4, 0
  %t_6 = select i1 %t_5, i64 65000, i64 %t_4
  store i64 %t_6, i64* %rsp
  %zf = alloca i1
  %sf = alloca i1
  %cf = alloca i1
  %of = alloca i1
  %pf = alloca i1
  %af = alloca i1
  %df = alloca i1
  br label %bb_0x10f9
  bb_0x10f9:
  %t_7 = load i64, i64* %rsi
  %t_8 = trunc i64 %t_7 to i32
  %t_9 = load i64, i64* %rdi
  %t_10 = trunc i64 %t_9 to i32
  %t_11 = sub i32 %t_8, %t_10
  %t_12 = icmp eq i32 %t_11, 0
  %t_13 = icmp slt i32 %t_11, 0
  %t_14 = icmp ult i32 %t_8, %t_10
  %t_15 = icmp slt i32 %t_8, 0
  %t_16 = icmp slt i32 %t_10, 0
  %t_17 = icmp slt i32 %t_11, 0
  %t_18 = xor i1 %t_15, %t_16
  %t_19 = xor i1 %t_15, %t_17
  %t_20 = and i1 %t_18, %t_19
  %t_21 = trunc i32 %t_11 to i8
  %t_22 = call i8 @llvm.ctpop.i8(i8 %t_21)
  %t_23 = and i8 %t_22, 1
  %t_24 = icmp eq i8 %t_23, 0
  %t_25 = and i32 %t_8, 15
  %t_26 = and i32 %t_10, 15
  %t_27 = sub i32 %t_25, %t_26
  %t_28 = icmp ugt i32 %t_27, 15
  store i1 %t_12, i1* %zf
  store i1 %t_13, i1* %sf
  store i1 %t_14, i1* %cf
  store i1 %t_20, i1* %of
  store i1 %t_24, i1* %pf
  store i1 %t_28, i1* %af
  %t_29 = load i64, i64* %rdi
  %t_30 = trunc i64 %t_29 to i32
  %t_31 = zext i32 %t_30 to i64
  store i64 %t_31, i64* %rax
  %flag_sf_32 = load i1, i1* %sf
  %flag_of_33 = load i1, i1* %of
  %t_34 = icmp eq i1 %flag_sf_32, %flag_of_33
  %t_35 = load i64, i64* %rsi
  %t_36 = trunc i64 %t_35 to i32
  %t_37 = load i64, i64* %rax
  %t_38 = trunc i64 %t_37 to i32
  %t_39 = select i1 %t_34, i32 %t_36, i32 %t_38
  %t_40 = zext i32 %t_39 to i64
  store i64 %t_40, i64* %rax
  %t_41 = load i64, i64* %rax
  ret i64 %t_41
  %t_42 = load i64, i64* %rax
  ret i64 %t_42
  
}

define i64 @min(i8* %mem, i64 %rdi_in, i64 %rsi_in, i64 %rdx_in, i64 %rcx_in, i64 %r8_in, i64 %r9_in) {
  prologue_0x1105:
  %rax = alloca i64
  %rbx = alloca i64
  %rcx = alloca i64
  %rdx = alloca i64
  %rsi = alloca i64
  %rdi = alloca i64
  %rbp = alloca i64
  %rsp = alloca i64
  %r8 = alloca i64
  %r9 = alloca i64
  %r10 = alloca i64
  %r11 = alloca i64
  %r12 = alloca i64
  %r13 = alloca i64
  %r14 = alloca i64
  %r15 = alloca i64
  store i64 %rdi_in, i64* %rdi
  store i64 %rsi_in, i64* %rsi
  store i64 %rdx_in, i64* %rdx
  store i64 %rcx_in, i64* %rcx
  store i64 %r8_in, i64* %r8
  store i64 %r9_in, i64* %r9
  %xmm0 = alloca i128
  %xmm1 = alloca i128
  %xmm2 = alloca i128
  %xmm3 = alloca i128
  %xmm4 = alloca i128
  %xmm5 = alloca i128
  %xmm6 = alloca i128
  %xmm7 = alloca i128
  %xmm8 = alloca i128
  %xmm9 = alloca i128
  %xmm10 = alloca i128
  %xmm11 = alloca i128
  %xmm12 = alloca i128
  %xmm13 = alloca i128
  %xmm14 = alloca i128
  %xmm15 = alloca i128
  %ymm0 = alloca i256
  %ymm1 = alloca i256
  %ymm2 = alloca i256
  %ymm3 = alloca i256
  %ymm4 = alloca i256
  %ymm5 = alloca i256
  %ymm6 = alloca i256
  %ymm7 = alloca i256
  %ymm8 = alloca i256
  %ymm9 = alloca i256
  %ymm10 = alloca i256
  %ymm11 = alloca i256
  %ymm12 = alloca i256
  %ymm13 = alloca i256
  %ymm14 = alloca i256
  %ymm15 = alloca i256
  %st0 = alloca x86_fp80
  %st1 = alloca x86_fp80
  %st2 = alloca x86_fp80
  %st3 = alloca x86_fp80
  %st4 = alloca x86_fp80
  %st5 = alloca x86_fp80
  %st6 = alloca x86_fp80
  %st7 = alloca x86_fp80
  %fpu_top = alloca i3
  store i3 0, i3* %fpu_top
  %membase_1 = ptrtoint i8* %mem to i64
  %t_2 = add i64 %membase_1, 65528
  %t_3 = inttoptr i64 %t_2 to i64*
  %t_4 = load i64, i64* %t_3
  %t_5 = icmp eq i64 %t_4, 0
  %t_6 = select i1 %t_5, i64 65000, i64 %t_4
  store i64 %t_6, i64* %rsp
  %zf = alloca i1
  %sf = alloca i1
  %cf = alloca i1
  %of = alloca i1
  %pf = alloca i1
  %af = alloca i1
  %df = alloca i1
  br label %bb_0x1105
  bb_0x1105:
  %t_7 = load i64, i64* %rsi
  %t_8 = trunc i64 %t_7 to i32
  %t_9 = load i64, i64* %rdi
  %t_10 = trunc i64 %t_9 to i32
  %t_11 = sub i32 %t_8, %t_10
  %t_12 = icmp eq i32 %t_11, 0
  %t_13 = icmp slt i32 %t_11, 0
  %t_14 = icmp ult i32 %t_8, %t_10
  %t_15 = icmp slt i32 %t_8, 0
  %t_16 = icmp slt i32 %t_10, 0
  %t_17 = icmp slt i32 %t_11, 0
  %t_18 = xor i1 %t_15, %t_16
  %t_19 = xor i1 %t_15, %t_17
  %t_20 = and i1 %t_18, %t_19
  %t_21 = trunc i32 %t_11 to i8
  %t_22 = call i8 @llvm.ctpop.i8(i8 %t_21)
  %t_23 = and i8 %t_22, 1
  %t_24 = icmp eq i8 %t_23, 0
  %t_25 = and i32 %t_8, 15
  %t_26 = and i32 %t_10, 15
  %t_27 = sub i32 %t_25, %t_26
  %t_28 = icmp ugt i32 %t_27, 15
  store i1 %t_12, i1* %zf
  store i1 %t_13, i1* %sf
  store i1 %t_14, i1* %cf
  store i1 %t_20, i1* %of
  store i1 %t_24, i1* %pf
  store i1 %t_28, i1* %af
  %t_29 = load i64, i64* %rdi
  %t_30 = trunc i64 %t_29 to i32
  %t_31 = zext i32 %t_30 to i64
  store i64 %t_31, i64* %rax
  %flag_zf_32 = load i1, i1* %zf
  %flag_sf_33 = load i1, i1* %sf
  %flag_of_34 = load i1, i1* %of
  %t_35 = icmp ne i1 %flag_sf_33, %flag_of_34
  %t_36 = or i1 %flag_zf_32, %t_35
  %t_37 = load i64, i64* %rsi
  %t_38 = trunc i64 %t_37 to i32
  %t_39 = load i64, i64* %rax
  %t_40 = trunc i64 %t_39 to i32
  %t_41 = select i1 %t_36, i32 %t_38, i32 %t_40
  %t_42 = zext i32 %t_41 to i64
  store i64 %t_42, i64* %rax
  %t_43 = load i64, i64* %rax
  ret i64 %t_43
  %t_44 = load i64, i64* %rax
  ret i64 %t_44
  
}

define i64 @abs_val(i8* %mem, i64 %rdi_in, i64 %rsi_in, i64 %rdx_in, i64 %rcx_in, i64 %r8_in, i64 %r9_in) {
  prologue_0x1111:
  %rax = alloca i64
  %rbx = alloca i64
  %rcx = alloca i64
  %rdx = alloca i64
  %rsi = alloca i64
  %rdi = alloca i64
  %rbp = alloca i64
  %rsp = alloca i64
  %r8 = alloca i64
  %r9 = alloca i64
  %r10 = alloca i64
  %r11 = alloca i64
  %r12 = alloca i64
  %r13 = alloca i64
  %r14 = alloca i64
  %r15 = alloca i64
  store i64 %rdi_in, i64* %rdi
  store i64 %rsi_in, i64* %rsi
  store i64 %rdx_in, i64* %rdx
  store i64 %rcx_in, i64* %rcx
  store i64 %r8_in, i64* %r8
  store i64 %r9_in, i64* %r9
  %xmm0 = alloca i128
  %xmm1 = alloca i128
  %xmm2 = alloca i128
  %xmm3 = alloca i128
  %xmm4 = alloca i128
  %xmm5 = alloca i128
  %xmm6 = alloca i128
  %xmm7 = alloca i128
  %xmm8 = alloca i128
  %xmm9 = alloca i128
  %xmm10 = alloca i128
  %xmm11 = alloca i128
  %xmm12 = alloca i128
  %xmm13 = alloca i128
  %xmm14 = alloca i128
  %xmm15 = alloca i128
  %ymm0 = alloca i256
  %ymm1 = alloca i256
  %ymm2 = alloca i256
  %ymm3 = alloca i256
  %ymm4 = alloca i256
  %ymm5 = alloca i256
  %ymm6 = alloca i256
  %ymm7 = alloca i256
  %ymm8 = alloca i256
  %ymm9 = alloca i256
  %ymm10 = alloca i256
  %ymm11 = alloca i256
  %ymm12 = alloca i256
  %ymm13 = alloca i256
  %ymm14 = alloca i256
  %ymm15 = alloca i256
  %st0 = alloca x86_fp80
  %st1 = alloca x86_fp80
  %st2 = alloca x86_fp80
  %st3 = alloca x86_fp80
  %st4 = alloca x86_fp80
  %st5 = alloca x86_fp80
  %st6 = alloca x86_fp80
  %st7 = alloca x86_fp80
  %fpu_top = alloca i3
  store i3 0, i3* %fpu_top
  %membase_1 = ptrtoint i8* %mem to i64
  %t_2 = add i64 %membase_1, 65528
  %t_3 = inttoptr i64 %t_2 to i64*
  %t_4 = load i64, i64* %t_3
  %t_5 = icmp eq i64 %t_4, 0
  %t_6 = select i1 %t_5, i64 65000, i64 %t_4
  store i64 %t_6, i64* %rsp
  %zf = alloca i1
  %sf = alloca i1
  %cf = alloca i1
  %of = alloca i1
  %pf = alloca i1
  %af = alloca i1
  %df = alloca i1
  br label %bb_0x1111
  bb_0x1111:
  %t_7 = load i64, i64* %rdi
  %t_8 = trunc i64 %t_7 to i32
  %t_9 = zext i32 %t_8 to i64
  store i64 %t_9, i64* %rax
  %t_10 = load i64, i64* %rax
  %t_11 = trunc i64 %t_10 to i32
  %t_12 = sub i32 0, %t_11
  %t_13 = zext i32 %t_12 to i64
  store i64 %t_13, i64* %rax
  %t_14 = icmp eq i32 %t_12, 0
  %t_15 = icmp slt i32 %t_12, 0
  %t_16 = trunc i32 %t_12 to i8
  %t_17 = call i8 @llvm.ctpop.i8(i8 %t_16)
  %t_18 = and i8 %t_17, 1
  %t_19 = icmp eq i8 %t_18, 0
  %t_20 = icmp ne i32 %t_11, 0
  %t_21 = icmp eq i32 %t_11, 2147483648
  %t_22 = and i32 0, 15
  %t_23 = and i32 %t_11, 15
  %t_24 = sub i32 %t_22, %t_23
  %t_25 = icmp ugt i32 %t_24, 15
  store i1 %t_14, i1* %zf
  store i1 %t_15, i1* %sf
  store i1 %t_20, i1* %cf
  store i1 %t_21, i1* %of
  store i1 %t_19, i1* %pf
  store i1 %t_25, i1* %af
  %flag_sf_26 = load i1, i1* %sf
  %t_27 = load i64, i64* %rdi
  %t_28 = trunc i64 %t_27 to i32
  %t_29 = load i64, i64* %rax
  %t_30 = trunc i64 %t_29 to i32
  %t_31 = select i1 %flag_sf_26, i32 %t_28, i32 %t_30
  %t_32 = zext i32 %t_31 to i64
  store i64 %t_32, i64* %rax
  %t_33 = load i64, i64* %rax
  ret i64 %t_33
  %t_34 = load i64, i64* %rax
  ret i64 %t_34
  
}

define i64 @cmp_branch(i8* %mem, i64 %rdi_in, i64 %rsi_in, i64 %rdx_in, i64 %rcx_in, i64 %r8_in, i64 %r9_in) {
  prologue_0x111d:
  %rax = alloca i64
  %rbx = alloca i64
  %rcx = alloca i64
  %rdx = alloca i64
  %rsi = alloca i64
  %rdi = alloca i64
  %rbp = alloca i64
  %rsp = alloca i64
  %r8 = alloca i64
  %r9 = alloca i64
  %r10 = alloca i64
  %r11 = alloca i64
  %r12 = alloca i64
  %r13 = alloca i64
  %r14 = alloca i64
  %r15 = alloca i64
  store i64 %rdi_in, i64* %rdi
  store i64 %rsi_in, i64* %rsi
  store i64 %rdx_in, i64* %rdx
  store i64 %rcx_in, i64* %rcx
  store i64 %r8_in, i64* %r8
  store i64 %r9_in, i64* %r9
  %xmm0 = alloca i128
  %xmm1 = alloca i128
  %xmm2 = alloca i128
  %xmm3 = alloca i128
  %xmm4 = alloca i128
  %xmm5 = alloca i128
  %xmm6 = alloca i128
  %xmm7 = alloca i128
  %xmm8 = alloca i128
  %xmm9 = alloca i128
  %xmm10 = alloca i128
  %xmm11 = alloca i128
  %xmm12 = alloca i128
  %xmm13 = alloca i128
  %xmm14 = alloca i128
  %xmm15 = alloca i128
  %ymm0 = alloca i256
  %ymm1 = alloca i256
  %ymm2 = alloca i256
  %ymm3 = alloca i256
  %ymm4 = alloca i256
  %ymm5 = alloca i256
  %ymm6 = alloca i256
  %ymm7 = alloca i256
  %ymm8 = alloca i256
  %ymm9 = alloca i256
  %ymm10 = alloca i256
  %ymm11 = alloca i256
  %ymm12 = alloca i256
  %ymm13 = alloca i256
  %ymm14 = alloca i256
  %ymm15 = alloca i256
  %st0 = alloca x86_fp80
  %st1 = alloca x86_fp80
  %st2 = alloca x86_fp80
  %st3 = alloca x86_fp80
  %st4 = alloca x86_fp80
  %st5 = alloca x86_fp80
  %st6 = alloca x86_fp80
  %st7 = alloca x86_fp80
  %fpu_top = alloca i3
  store i3 0, i3* %fpu_top
  %membase_1 = ptrtoint i8* %mem to i64
  %t_2 = add i64 %membase_1, 65528
  %t_3 = inttoptr i64 %t_2 to i64*
  %t_4 = load i64, i64* %t_3
  %t_5 = icmp eq i64 %t_4, 0
  %t_6 = select i1 %t_5, i64 65000, i64 %t_4
  store i64 %t_6, i64* %rsp
  %zf = alloca i1
  %sf = alloca i1
  %cf = alloca i1
  %of = alloca i1
  %pf = alloca i1
  %af = alloca i1
  %df = alloca i1
  br label %bb_0x111d
  bb_0x111d:
  %t_7 = load i64, i64* %rdi
  %t_8 = trunc i64 %t_7 to i32
  %t_9 = load i64, i64* %rsi
  %t_10 = trunc i64 %t_9 to i32
  %t_11 = sub i32 %t_8, %t_10
  %t_12 = icmp eq i32 %t_11, 0
  %t_13 = icmp slt i32 %t_11, 0
  %t_14 = icmp ult i32 %t_8, %t_10
  %t_15 = icmp slt i32 %t_8, 0
  %t_16 = icmp slt i32 %t_10, 0
  %t_17 = icmp slt i32 %t_11, 0
  %t_18 = xor i1 %t_15, %t_16
  %t_19 = xor i1 %t_15, %t_17
  %t_20 = and i1 %t_18, %t_19
  %t_21 = trunc i32 %t_11 to i8
  %t_22 = call i8 @llvm.ctpop.i8(i8 %t_21)
  %t_23 = and i8 %t_22, 1
  %t_24 = icmp eq i8 %t_23, 0
  %t_25 = and i32 %t_8, 15
  %t_26 = and i32 %t_10, 15
  %t_27 = sub i32 %t_25, %t_26
  %t_28 = icmp ugt i32 %t_27, 15
  store i1 %t_12, i1* %zf
  store i1 %t_13, i1* %sf
  store i1 %t_14, i1* %cf
  store i1 %t_20, i1* %of
  store i1 %t_24, i1* %pf
  store i1 %t_28, i1* %af
  %flag_zf_29 = load i1, i1* %zf
  br i1 %flag_zf_29, label %bb_0x1132, label %bb_0x1125
  bb_0x1132:
  %t_30 = load i64, i64* %rdx
  %t_31 = load i64, i64* %rcx
  %t_32 = add i64 %t_30, %t_31
  %t_34 = trunc i64 %t_32 to i32
  %t_33 = zext i32 %t_34 to i64
  store i64 %t_33, i64* %rax
  %t_35 = load i64, i64* %rax
  ret i64 %t_35
  %t_36 = load i64, i64* %rax
  ret i64 %t_36
  bb_0x1125:
  %t_37 = load i64, i64* %rdx
  %t_38 = trunc i64 %t_37 to i32
  %t_39 = zext i32 %t_38 to i64
  store i64 %t_39, i64* %rax
  %t_40 = load i64, i64* %rax
  %t_41 = trunc i64 %t_40 to i32
  %t_42 = load i64, i64* %rcx
  %t_43 = trunc i64 %t_42 to i32
  %t_44 = sub i32 %t_41, %t_43
  %t_45 = zext i32 %t_44 to i64
  store i64 %t_45, i64* %rax
  %t_46 = icmp eq i32 %t_44, 0
  %t_47 = icmp slt i32 %t_44, 0
  %t_48 = trunc i32 %t_44 to i8
  %t_49 = call i8 @llvm.ctpop.i8(i8 %t_48)
  %t_50 = and i8 %t_49, 1
  %t_51 = icmp eq i8 %t_50, 0
  %t_52 = icmp ult i32 %t_41, %t_43
  %t_53 = and i32 %t_41, 15
  %t_54 = and i32 %t_43, 15
  %t_55 = sub i32 %t_53, %t_54
  %t_56 = icmp ugt i32 %t_55, 15
  %t_57 = icmp slt i32 %t_41, 0
  %t_58 = icmp slt i32 %t_43, 0
  %t_59 = icmp slt i32 %t_44, 0
  %t_60 = xor i1 %t_57, %t_58
  %t_61 = xor i1 %t_57, %t_59
  %t_62 = and i1 %t_60, %t_61
  store i1 %t_46, i1* %zf
  store i1 %t_47, i1* %sf
  store i1 %t_52, i1* %cf
  store i1 %t_62, i1* %of
  store i1 %t_51, i1* %pf
  store i1 %t_56, i1* %af
  %t_63 = load i64, i64* %rdx
  %t_64 = trunc i64 %t_63 to i32
  %t_65 = load i64, i64* %rcx
  %t_66 = trunc i64 %t_65 to i32
  %t_67 = mul i32 %t_64, %t_66
  %t_68 = zext i32 %t_67 to i64
  store i64 %t_68, i64* %rdx
  %t_69 = load i64, i64* %rdi
  %t_70 = trunc i64 %t_69 to i32
  %t_71 = load i64, i64* %rsi
  %t_72 = trunc i64 %t_71 to i32
  %t_73 = sub i32 %t_70, %t_72
  %t_74 = icmp eq i32 %t_73, 0
  %t_75 = icmp slt i32 %t_73, 0
  %t_76 = icmp ult i32 %t_70, %t_72
  %t_77 = icmp slt i32 %t_70, 0
  %t_78 = icmp slt i32 %t_72, 0
  %t_79 = icmp slt i32 %t_73, 0
  %t_80 = xor i1 %t_77, %t_78
  %t_81 = xor i1 %t_77, %t_79
  %t_82 = and i1 %t_80, %t_81
  %t_83 = trunc i32 %t_73 to i8
  %t_84 = call i8 @llvm.ctpop.i8(i8 %t_83)
  %t_85 = and i8 %t_84, 1
  %t_86 = icmp eq i8 %t_85, 0
  %t_87 = and i32 %t_70, 15
  %t_88 = and i32 %t_72, 15
  %t_89 = sub i32 %t_87, %t_88
  %t_90 = icmp ugt i32 %t_89, 15
  store i1 %t_74, i1* %zf
  store i1 %t_75, i1* %sf
  store i1 %t_76, i1* %cf
  store i1 %t_82, i1* %of
  store i1 %t_86, i1* %pf
  store i1 %t_90, i1* %af
  %flag_zf_91 = load i1, i1* %zf
  %flag_sf_92 = load i1, i1* %sf
  %flag_of_93 = load i1, i1* %of
  %t_94 = icmp ne i1 %flag_sf_92, %flag_of_93
  %t_95 = or i1 %flag_zf_91, %t_94
  %t_96 = load i64, i64* %rdx
  %t_97 = trunc i64 %t_96 to i32
  %t_98 = load i64, i64* %rax
  %t_99 = trunc i64 %t_98 to i32
  %t_100 = select i1 %t_95, i32 %t_97, i32 %t_99
  %t_101 = zext i32 %t_100 to i64
  store i64 %t_101, i64* %rax
  %t_102 = load i64, i64* %rax
  ret i64 %t_102
  %t_103 = load i64, i64* %rax
  ret i64 %t_103
  
}

define i64 @ucmp(i8* %mem, i64 %rdi_in, i64 %rsi_in, i64 %rdx_in, i64 %rcx_in, i64 %r8_in, i64 %r9_in) {
  prologue_0x1136:
  %rax = alloca i64
  %rbx = alloca i64
  %rcx = alloca i64
  %rdx = alloca i64
  %rsi = alloca i64
  %rdi = alloca i64
  %rbp = alloca i64
  %rsp = alloca i64
  %r8 = alloca i64
  %r9 = alloca i64
  %r10 = alloca i64
  %r11 = alloca i64
  %r12 = alloca i64
  %r13 = alloca i64
  %r14 = alloca i64
  %r15 = alloca i64
  store i64 %rdi_in, i64* %rdi
  store i64 %rsi_in, i64* %rsi
  store i64 %rdx_in, i64* %rdx
  store i64 %rcx_in, i64* %rcx
  store i64 %r8_in, i64* %r8
  store i64 %r9_in, i64* %r9
  %xmm0 = alloca i128
  %xmm1 = alloca i128
  %xmm2 = alloca i128
  %xmm3 = alloca i128
  %xmm4 = alloca i128
  %xmm5 = alloca i128
  %xmm6 = alloca i128
  %xmm7 = alloca i128
  %xmm8 = alloca i128
  %xmm9 = alloca i128
  %xmm10 = alloca i128
  %xmm11 = alloca i128
  %xmm12 = alloca i128
  %xmm13 = alloca i128
  %xmm14 = alloca i128
  %xmm15 = alloca i128
  %ymm0 = alloca i256
  %ymm1 = alloca i256
  %ymm2 = alloca i256
  %ymm3 = alloca i256
  %ymm4 = alloca i256
  %ymm5 = alloca i256
  %ymm6 = alloca i256
  %ymm7 = alloca i256
  %ymm8 = alloca i256
  %ymm9 = alloca i256
  %ymm10 = alloca i256
  %ymm11 = alloca i256
  %ymm12 = alloca i256
  %ymm13 = alloca i256
  %ymm14 = alloca i256
  %ymm15 = alloca i256
  %st0 = alloca x86_fp80
  %st1 = alloca x86_fp80
  %st2 = alloca x86_fp80
  %st3 = alloca x86_fp80
  %st4 = alloca x86_fp80
  %st5 = alloca x86_fp80
  %st6 = alloca x86_fp80
  %st7 = alloca x86_fp80
  %fpu_top = alloca i3
  store i3 0, i3* %fpu_top
  %membase_1 = ptrtoint i8* %mem to i64
  %t_2 = add i64 %membase_1, 65528
  %t_3 = inttoptr i64 %t_2 to i64*
  %t_4 = load i64, i64* %t_3
  %t_5 = icmp eq i64 %t_4, 0
  %t_6 = select i1 %t_5, i64 65000, i64 %t_4
  store i64 %t_6, i64* %rsp
  %zf = alloca i1
  %sf = alloca i1
  %cf = alloca i1
  %of = alloca i1
  %pf = alloca i1
  %af = alloca i1
  %df = alloca i1
  br label %bb_0x1136
  bb_0x1136:
  store i64 1, i64* %rax
  %t_7 = load i64, i64* %rsi
  %t_8 = trunc i64 %t_7 to i32
  %t_9 = load i64, i64* %rdi
  %t_10 = trunc i64 %t_9 to i32
  %t_11 = sub i32 %t_8, %t_10
  %t_12 = icmp eq i32 %t_11, 0
  %t_13 = icmp slt i32 %t_11, 0
  %t_14 = icmp ult i32 %t_8, %t_10
  %t_15 = icmp slt i32 %t_8, 0
  %t_16 = icmp slt i32 %t_10, 0
  %t_17 = icmp slt i32 %t_11, 0
  %t_18 = xor i1 %t_15, %t_16
  %t_19 = xor i1 %t_15, %t_17
  %t_20 = and i1 %t_18, %t_19
  %t_21 = trunc i32 %t_11 to i8
  %t_22 = call i8 @llvm.ctpop.i8(i8 %t_21)
  %t_23 = and i8 %t_22, 1
  %t_24 = icmp eq i8 %t_23, 0
  %t_25 = and i32 %t_8, 15
  %t_26 = and i32 %t_10, 15
  %t_27 = sub i32 %t_25, %t_26
  %t_28 = icmp ugt i32 %t_27, 15
  store i1 %t_12, i1* %zf
  store i1 %t_13, i1* %sf
  store i1 %t_14, i1* %cf
  store i1 %t_20, i1* %of
  store i1 %t_24, i1* %pf
  store i1 %t_28, i1* %af
  %flag_cf_29 = load i1, i1* %cf
  br i1 %flag_cf_29, label %bb_0x114d, label %bb_0x1143
  bb_0x114d:
  %t_30 = load i64, i64* %rax
  ret i64 %t_30
  %t_31 = load i64, i64* %rax
  ret i64 %t_31
  bb_0x1143:
  %t_32 = load i64, i64* %rdi
  %t_33 = trunc i64 %t_32 to i32
  %t_34 = load i64, i64* %rsi
  %t_35 = trunc i64 %t_34 to i32
  %t_36 = sub i32 %t_33, %t_35
  %t_37 = icmp eq i32 %t_36, 0
  %t_38 = icmp slt i32 %t_36, 0
  %t_39 = icmp ult i32 %t_33, %t_35
  %t_40 = icmp slt i32 %t_33, 0
  %t_41 = icmp slt i32 %t_35, 0
  %t_42 = icmp slt i32 %t_36, 0
  %t_43 = xor i1 %t_40, %t_41
  %t_44 = xor i1 %t_40, %t_42
  %t_45 = and i1 %t_43, %t_44
  %t_46 = trunc i32 %t_36 to i8
  %t_47 = call i8 @llvm.ctpop.i8(i8 %t_46)
  %t_48 = and i8 %t_47, 1
  %t_49 = icmp eq i8 %t_48, 0
  %t_50 = and i32 %t_33, 15
  %t_51 = and i32 %t_35, 15
  %t_52 = sub i32 %t_50, %t_51
  %t_53 = icmp ugt i32 %t_52, 15
  store i1 %t_37, i1* %zf
  store i1 %t_38, i1* %sf
  store i1 %t_39, i1* %cf
  store i1 %t_45, i1* %of
  store i1 %t_49, i1* %pf
  store i1 %t_53, i1* %af
  %flag_cf_54 = load i1, i1* %cf
  %t_55 = zext i1 %flag_cf_54 to i8
  %t_56 = zext i8 %t_55 to i64
  %t_57 = load i64, i64* %rax
  %t_58 = and i64 %t_57, 18446744073709551360
  %t_59 = or i64 %t_58, %t_56
  store i64 %t_59, i64* %rax
  %t_60 = load i64, i64* %rax
  %t_61 = trunc i64 %t_60 to i8
  %t_62 = zext i8 %t_61 to i32
  %t_63 = zext i32 %t_62 to i64
  store i64 %t_63, i64* %rax
  %t_64 = load i64, i64* %rax
  %t_65 = trunc i64 %t_64 to i32
  %t_66 = load i64, i64* %rax
  %t_67 = trunc i64 %t_66 to i32
  %t_68 = add i32 %t_65, %t_67
  %t_69 = zext i32 %t_68 to i64
  store i64 %t_69, i64* %rax
  %t_70 = icmp eq i32 %t_68, 0
  %t_71 = icmp slt i32 %t_68, 0
  %t_72 = trunc i32 %t_68 to i8
  %t_73 = call i8 @llvm.ctpop.i8(i8 %t_72)
  %t_74 = and i8 %t_73, 1
  %t_75 = icmp eq i8 %t_74, 0
  %t_76 = icmp ult i32 %t_68, %t_65
  %t_77 = and i32 %t_65, 15
  %t_78 = and i32 %t_67, 15
  %t_79 = add i32 %t_77, %t_78
  %t_80 = icmp ugt i32 %t_79, 15
  %t_81 = icmp slt i32 %t_65, 0
  %t_82 = icmp slt i32 %t_67, 0
  %t_83 = icmp slt i32 %t_68, 0
  %t_84 = xor i1 %t_81, %t_82
  %t_85 = xor i1 %t_81, %t_83
  %t_86 = and i1 %t_84, %t_85
  store i1 %t_70, i1* %zf
  store i1 %t_71, i1* %sf
  store i1 %t_76, i1* %cf
  store i1 %t_86, i1* %of
  store i1 %t_75, i1* %pf
  store i1 %t_80, i1* %af
  %t_87 = load i64, i64* %rax
  ret i64 %t_87
  %t_88 = load i64, i64* %rax
  ret i64 %t_88
  
}

define i64 @_fini(i8* %mem, i64 %rdi_in, i64 %rsi_in, i64 %rdx_in, i64 %rcx_in, i64 %r8_in, i64 %r9_in) {
  prologue_0x1150:
  %rax = alloca i64
  %rbx = alloca i64
  %rcx = alloca i64
  %rdx = alloca i64
  %rsi = alloca i64
  %rdi = alloca i64
  %rbp = alloca i64
  %rsp = alloca i64
  %r8 = alloca i64
  %r9 = alloca i64
  %r10 = alloca i64
  %r11 = alloca i64
  %r12 = alloca i64
  %r13 = alloca i64
  %r14 = alloca i64
  %r15 = alloca i64
  store i64 %rdi_in, i64* %rdi
  store i64 %rsi_in, i64* %rsi
  store i64 %rdx_in, i64* %rdx
  store i64 %rcx_in, i64* %rcx
  store i64 %r8_in, i64* %r8
  store i64 %r9_in, i64* %r9
  %xmm0 = alloca i128
  %xmm1 = alloca i128
  %xmm2 = alloca i128
  %xmm3 = alloca i128
  %xmm4 = alloca i128
  %xmm5 = alloca i128
  %xmm6 = alloca i128
  %xmm7 = alloca i128
  %xmm8 = alloca i128
  %xmm9 = alloca i128
  %xmm10 = alloca i128
  %xmm11 = alloca i128
  %xmm12 = alloca i128
  %xmm13 = alloca i128
  %xmm14 = alloca i128
  %xmm15 = alloca i128
  %ymm0 = alloca i256
  %ymm1 = alloca i256
  %ymm2 = alloca i256
  %ymm3 = alloca i256
  %ymm4 = alloca i256
  %ymm5 = alloca i256
  %ymm6 = alloca i256
  %ymm7 = alloca i256
  %ymm8 = alloca i256
  %ymm9 = alloca i256
  %ymm10 = alloca i256
  %ymm11 = alloca i256
  %ymm12 = alloca i256
  %ymm13 = alloca i256
  %ymm14 = alloca i256
  %ymm15 = alloca i256
  %st0 = alloca x86_fp80
  %st1 = alloca x86_fp80
  %st2 = alloca x86_fp80
  %st3 = alloca x86_fp80
  %st4 = alloca x86_fp80
  %st5 = alloca x86_fp80
  %st6 = alloca x86_fp80
  %st7 = alloca x86_fp80
  %fpu_top = alloca i3
  store i3 0, i3* %fpu_top
  %membase_1 = ptrtoint i8* %mem to i64
  %t_2 = add i64 %membase_1, 65528
  %t_3 = inttoptr i64 %t_2 to i64*
  %t_4 = load i64, i64* %t_3
  %t_5 = icmp eq i64 %t_4, 0
  %t_6 = select i1 %t_5, i64 65000, i64 %t_4
  store i64 %t_6, i64* %rsp
  %zf = alloca i1
  %sf = alloca i1
  %cf = alloca i1
  %of = alloca i1
  %pf = alloca i1
  %af = alloca i1
  %df = alloca i1
  br label %bb_0x1150
  bb_0x1150:
  %t_7 = load i64, i64* %rsp
  %t_8 = sub i64 %t_7, 8
  store i64 %t_8, i64* %rsp
  %t_9 = icmp eq i64 %t_8, 0
  %t_10 = icmp slt i64 %t_8, 0
  %t_11 = trunc i64 %t_8 to i8
  %t_12 = call i8 @llvm.ctpop.i8(i8 %t_11)
  %t_13 = and i8 %t_12, 1
  %t_14 = icmp eq i8 %t_13, 0
  %t_15 = icmp ult i64 %t_7, 8
  %t_16 = and i64 %t_7, 15
  %t_17 = and i64 8, 15
  %t_18 = sub i64 %t_16, %t_17
  %t_19 = icmp ugt i64 %t_18, 15
  %t_20 = icmp slt i64 %t_7, 0
  %t_21 = icmp slt i64 8, 0
  %t_22 = icmp slt i64 %t_8, 0
  %t_23 = xor i1 %t_20, %t_21
  %t_24 = xor i1 %t_20, %t_22
  %t_25 = and i1 %t_23, %t_24
  store i1 %t_9, i1* %zf
  store i1 %t_10, i1* %sf
  store i1 %t_15, i1* %cf
  store i1 %t_25, i1* %of
  store i1 %t_14, i1* %pf
  store i1 %t_19, i1* %af
  %t_26 = load i64, i64* %rsp
  %t_27 = add i64 %t_26, 8
  store i64 %t_27, i64* %rsp
  %t_28 = icmp eq i64 %t_27, 0
  %t_29 = icmp slt i64 %t_27, 0
  %t_30 = trunc i64 %t_27 to i8
  %t_31 = call i8 @llvm.ctpop.i8(i8 %t_30)
  %t_32 = and i8 %t_31, 1
  %t_33 = icmp eq i8 %t_32, 0
  %t_34 = icmp ult i64 %t_27, %t_26
  %t_35 = and i64 %t_26, 15
  %t_36 = and i64 8, 15
  %t_37 = add i64 %t_35, %t_36
  %t_38 = icmp ugt i64 %t_37, 15
  %t_39 = icmp slt i64 %t_26, 0
  %t_40 = icmp slt i64 8, 0
  %t_41 = icmp slt i64 %t_27, 0
  %t_42 = xor i1 %t_39, %t_40
  %t_43 = xor i1 %t_39, %t_41
  %t_44 = and i1 %t_42, %t_43
  store i1 %t_28, i1* %zf
  store i1 %t_29, i1* %sf
  store i1 %t_34, i1* %cf
  store i1 %t_44, i1* %of
  store i1 %t_33, i1* %pf
  store i1 %t_38, i1* %af
  %t_45 = load i64, i64* %rax
  ret i64 %t_45
  %t_46 = load i64, i64* %rax
  ret i64 %t_46
  
}

define i64 @sub_0x10bd(i8* %mem, i64 %rdi_in, i64 %rsi_in, i64 %rdx_in, i64 %rcx_in, i64 %r8_in, i64 %r9_in) {
  prologue_0x10bd:
  %rax = alloca i64
  %rbx = alloca i64
  %rcx = alloca i64
  %rdx = alloca i64
  %rsi = alloca i64
  %rdi = alloca i64
  %rbp = alloca i64
  %rsp = alloca i64
  %r8 = alloca i64
  %r9 = alloca i64
  %r10 = alloca i64
  %r11 = alloca i64
  %r12 = alloca i64
  %r13 = alloca i64
  %r14 = alloca i64
  %r15 = alloca i64
  store i64 %rdi_in, i64* %rdi
  store i64 %rsi_in, i64* %rsi
  store i64 %rdx_in, i64* %rdx
  store i64 %rcx_in, i64* %rcx
  store i64 %r8_in, i64* %r8
  store i64 %r9_in, i64* %r9
  %xmm0 = alloca i128
  %xmm1 = alloca i128
  %xmm2 = alloca i128
  %xmm3 = alloca i128
  %xmm4 = alloca i128
  %xmm5 = alloca i128
  %xmm6 = alloca i128
  %xmm7 = alloca i128
  %xmm8 = alloca i128
  %xmm9 = alloca i128
  %xmm10 = alloca i128
  %xmm11 = alloca i128
  %xmm12 = alloca i128
  %xmm13 = alloca i128
  %xmm14 = alloca i128
  %xmm15 = alloca i128
  %ymm0 = alloca i256
  %ymm1 = alloca i256
  %ymm2 = alloca i256
  %ymm3 = alloca i256
  %ymm4 = alloca i256
  %ymm5 = alloca i256
  %ymm6 = alloca i256
  %ymm7 = alloca i256
  %ymm8 = alloca i256
  %ymm9 = alloca i256
  %ymm10 = alloca i256
  %ymm11 = alloca i256
  %ymm12 = alloca i256
  %ymm13 = alloca i256
  %ymm14 = alloca i256
  %ymm15 = alloca i256
  %st0 = alloca x86_fp80
  %st1 = alloca x86_fp80
  %st2 = alloca x86_fp80
  %st3 = alloca x86_fp80
  %st4 = alloca x86_fp80
  %st5 = alloca x86_fp80
  %st6 = alloca x86_fp80
  %st7 = alloca x86_fp80
  %fpu_top = alloca i3
  store i3 0, i3* %fpu_top
  %membase_1 = ptrtoint i8* %mem to i64
  %t_2 = add i64 %membase_1, 65528
  %t_3 = inttoptr i64 %t_2 to i64*
  %t_4 = load i64, i64* %t_3
  %t_5 = icmp eq i64 %t_4, 0
  %t_6 = select i1 %t_5, i64 65000, i64 %t_4
  store i64 %t_6, i64* %rsp
  %zf = alloca i1
  %sf = alloca i1
  %cf = alloca i1
  %of = alloca i1
  %pf = alloca i1
  %af = alloca i1
  %df = alloca i1
  br label %bb_0x10bd
  bb_0x10bd:
  %t_7 = load i64, i64* %rbp
  %t_8 = load i64, i64* %rsp
  %t_9 = sub i64 %t_8, 8
  store i64 %t_9, i64* %rsp
  %t_10 = add i64 %membase_1, %t_9
  %t_11 = inttoptr i64 %t_10 to i64*
  store i64 %t_7, i64* %t_11
  %t_12 = sub i64 0, 0
  %t_13 = icmp eq i64 %t_12, 0
  %t_14 = icmp slt i64 %t_12, 0
  %t_15 = icmp ult i64 0, 0
  %t_16 = icmp slt i64 0, 0
  %t_17 = icmp slt i64 0, 0
  %t_18 = icmp slt i64 %t_12, 0
  %t_19 = xor i1 %t_16, %t_17
  %t_20 = xor i1 %t_16, %t_18
  %t_21 = and i1 %t_19, %t_20
  %t_22 = trunc i64 %t_12 to i8
  %t_23 = call i8 @llvm.ctpop.i8(i8 %t_22)
  %t_24 = and i8 %t_23, 1
  %t_25 = icmp eq i8 %t_24, 0
  %t_26 = and i64 0, 15
  %t_27 = and i64 0, 15
  %t_28 = sub i64 %t_26, %t_27
  %t_29 = icmp ugt i64 %t_28, 15
  store i1 %t_13, i1* %zf
  store i1 %t_14, i1* %sf
  store i1 %t_15, i1* %cf
  store i1 %t_21, i1* %of
  store i1 %t_25, i1* %pf
  store i1 %t_29, i1* %af
  %t_30 = load i64, i64* %rsp
  store i64 %t_30, i64* %rbp
  %flag_zf_31 = load i1, i1* %zf
  br i1 %flag_zf_31, label %bb_0x10d7, label %bb_0x10cb
  bb_0x10d7:
  %t_32 = load i64, i64* %rdi
  %t_33 = load i64, i64* %rsi
  %t_34 = load i64, i64* %rdx
  %t_35 = load i64, i64* %rcx
  %t_36 = load i64, i64* %r8
  %t_37 = load i64, i64* %r9
  %t_38 = load i64, i64* %rsp
  %t_39 = sub i64 %t_38, 8
  store i64 %t_39, i64* %rsp
  %t_40 = add i64 %membase_1, 65528
  %t_41 = inttoptr i64 %t_40 to i64*
  store i64 %t_39, i64* %t_41
  %t_42 = call i64 @deregister_tm_clones(i8* %mem, i64 %t_32, i64 %t_33, i64 %t_34, i64 %t_35, i64 %t_36, i64 %t_37)
  store i64 %t_42, i64* %rax
  %t_43 = load i64, i64* %rsp
  %t_44 = add i64 %membase_1, %t_43
  %t_45 = inttoptr i64 %t_44 to i64*
  %t_46 = load i64, i64* %t_45
  %t_47 = add i64 %t_43, 8
  store i64 %t_47, i64* %rsp
  store i64 %t_46, i64* %rbp
  %t_48 = load i64, i64* %rax
  ret i64 %t_48
  %t_49 = load i64, i64* %rax
  ret i64 %t_49
  bb_0x10cb:
  %t_50 = load i64, i64* %rdi
  %t_51 = load i64, i64* %rsi
  %t_52 = load i64, i64* %rdx
  %t_53 = load i64, i64* %rcx
  %t_54 = load i64, i64* %r8
  %t_55 = load i64, i64* %r9
  %t_56 = load i64, i64* %rsp
  %t_57 = sub i64 %t_56, 8
  store i64 %t_57, i64* %rsp
  %t_58 = add i64 %membase_1, 65528
  %t_59 = inttoptr i64 %t_58 to i64*
  store i64 %t_57, i64* %t_59
  %t_60 = call i64 @sub_0x1030(i8* %mem, i64 %t_50, i64 %t_51, i64 %t_52, i64 %t_53, i64 %t_54, i64 %t_55)
  store i64 %t_60, i64* %rax
  br label %bb_0x10d7
  
}

define i64 @sub_0x1030(i8* %mem, i64 %rdi_in, i64 %rsi_in, i64 %rdx_in, i64 %rcx_in, i64 %r8_in, i64 %r9_in) {
  prologue_0x1030:
  %rax = alloca i64
  %rbx = alloca i64
  %rcx = alloca i64
  %rdx = alloca i64
  %rsi = alloca i64
  %rdi = alloca i64
  %rbp = alloca i64
  %rsp = alloca i64
  %r8 = alloca i64
  %r9 = alloca i64
  %r10 = alloca i64
  %r11 = alloca i64
  %r12 = alloca i64
  %r13 = alloca i64
  %r14 = alloca i64
  %r15 = alloca i64
  store i64 %rdi_in, i64* %rdi
  store i64 %rsi_in, i64* %rsi
  store i64 %rdx_in, i64* %rdx
  store i64 %rcx_in, i64* %rcx
  store i64 %r8_in, i64* %r8
  store i64 %r9_in, i64* %r9
  %xmm0 = alloca i128
  %xmm1 = alloca i128
  %xmm2 = alloca i128
  %xmm3 = alloca i128
  %xmm4 = alloca i128
  %xmm5 = alloca i128
  %xmm6 = alloca i128
  %xmm7 = alloca i128
  %xmm8 = alloca i128
  %xmm9 = alloca i128
  %xmm10 = alloca i128
  %xmm11 = alloca i128
  %xmm12 = alloca i128
  %xmm13 = alloca i128
  %xmm14 = alloca i128
  %xmm15 = alloca i128
  %ymm0 = alloca i256
  %ymm1 = alloca i256
  %ymm2 = alloca i256
  %ymm3 = alloca i256
  %ymm4 = alloca i256
  %ymm5 = alloca i256
  %ymm6 = alloca i256
  %ymm7 = alloca i256
  %ymm8 = alloca i256
  %ymm9 = alloca i256
  %ymm10 = alloca i256
  %ymm11 = alloca i256
  %ymm12 = alloca i256
  %ymm13 = alloca i256
  %ymm14 = alloca i256
  %ymm15 = alloca i256
  %st0 = alloca x86_fp80
  %st1 = alloca x86_fp80
  %st2 = alloca x86_fp80
  %st3 = alloca x86_fp80
  %st4 = alloca x86_fp80
  %st5 = alloca x86_fp80
  %st6 = alloca x86_fp80
  %st7 = alloca x86_fp80
  %fpu_top = alloca i3
  store i3 0, i3* %fpu_top
  %membase_1 = ptrtoint i8* %mem to i64
  %t_2 = add i64 %membase_1, 65528
  %t_3 = inttoptr i64 %t_2 to i64*
  %t_4 = load i64, i64* %t_3
  %t_5 = icmp eq i64 %t_4, 0
  %t_6 = select i1 %t_5, i64 65000, i64 %t_4
  store i64 %t_6, i64* %rsp
  %zf = alloca i1
  %sf = alloca i1
  %cf = alloca i1
  %of = alloca i1
  %pf = alloca i1
  %af = alloca i1
  %df = alloca i1
  br label %bb_0x1030
  bb_0x1030:
  %t_7 = load i64, i64* %rax
  ret i64 %t_7
  
}
