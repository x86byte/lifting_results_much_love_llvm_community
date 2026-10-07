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

define i64 @dispatch(i8* %mem, i64 %rdi_in, i64 %rsi_in, i64 %rdx_in, i64 %rcx_in, i64 %r8_in, i64 %r9_in) {
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
  %t_7 = load i64, i64* %rdi
  %t_8 = trunc i64 %t_7 to i32
  %t_9 = sub i32 %t_8, 7
  %t_10 = icmp eq i32 %t_9, 0
  %t_11 = icmp slt i32 %t_9, 0
  %t_12 = icmp ult i32 %t_8, 7
  %t_13 = icmp slt i32 %t_8, 0
  %t_14 = icmp slt i32 7, 0
  %t_15 = icmp slt i32 %t_9, 0
  %t_16 = xor i1 %t_13, %t_14
  %t_17 = xor i1 %t_13, %t_15
  %t_18 = and i1 %t_16, %t_17
  %t_19 = trunc i32 %t_9 to i8
  %t_20 = call i8 @llvm.ctpop.i8(i8 %t_19)
  %t_21 = and i8 %t_20, 1
  %t_22 = icmp eq i8 %t_21, 0
  %t_23 = and i32 %t_8, 15
  %t_24 = and i32 7, 15
  %t_25 = sub i32 %t_23, %t_24
  %t_26 = icmp ugt i32 %t_25, 15
  store i1 %t_10, i1* %zf
  store i1 %t_11, i1* %sf
  store i1 %t_12, i1* %cf
  store i1 %t_18, i1* %of
  store i1 %t_22, i1* %pf
  store i1 %t_26, i1* %af
  %flag_cf_27 = load i1, i1* %cf
  %flag_zf_28 = load i1, i1* %zf
  %t_29 = xor i1 %flag_cf_27, true
  %t_30 = xor i1 %flag_zf_28, true
  %t_31 = and i1 %t_29, %t_30
  br i1 %t_31, label %bb_0x1141, label %bb_0x1102
  bb_0x1141:
  store i64 4294967295, i64* %rax
  %t_32 = load i64, i64* %rax
  ret i64 %t_32
  %t_33 = load i64, i64* %rax
  ret i64 %t_33
  bb_0x1102:
  %t_34 = load i64, i64* %rdi
  %t_35 = trunc i64 %t_34 to i32
  %t_36 = zext i32 %t_35 to i64
  store i64 %t_36, i64* %rdi
  store i64 8192, i64* %rcx
  %t_37 = load i64, i64* %rcx
  %t_38 = load i64, i64* %rdi
  %t_39 = mul i64 %t_38, 4
  %t_40 = add i64 %t_37, %t_39
  %t_41 = add i64 %membase_1, %t_40
  %t_42 = inttoptr i64 %t_41 to i8*
  %t_43 = bitcast i8* %t_42 to i32*
  %t_44 = load i32, i32* %t_43
  %t_45 = sext i32 %t_44 to i64
  store i64 %t_45, i64* %rax
  %t_46 = load i64, i64* %rax
  %t_47 = load i64, i64* %rcx
  %t_48 = add i64 %t_46, %t_47
  store i64 %t_48, i64* %rax
  %t_49 = icmp eq i64 %t_48, 0
  %t_50 = icmp slt i64 %t_48, 0
  %t_51 = trunc i64 %t_48 to i8
  %t_52 = call i8 @llvm.ctpop.i8(i8 %t_51)
  %t_53 = and i8 %t_52, 1
  %t_54 = icmp eq i8 %t_53, 0
  %t_55 = icmp ult i64 %t_48, %t_46
  %t_56 = and i64 %t_46, 15
  %t_57 = and i64 %t_47, 15
  %t_58 = add i64 %t_56, %t_57
  %t_59 = icmp ugt i64 %t_58, 15
  %t_60 = icmp slt i64 %t_46, 0
  %t_61 = icmp slt i64 %t_47, 0
  %t_62 = icmp slt i64 %t_48, 0
  %t_63 = xor i1 %t_60, %t_61
  %t_64 = xor i1 %t_60, %t_62
  %t_65 = and i1 %t_63, %t_64
  store i1 %t_49, i1* %zf
  store i1 %t_50, i1* %sf
  store i1 %t_55, i1* %cf
  store i1 %t_65, i1* %of
  store i1 %t_54, i1* %pf
  store i1 %t_59, i1* %af
  %t_66 = load i64, i64* %rax
  switch i64 %t_66, label %bb_4370_default [ i64 4373, label %bb_0x1115 i64 4377, label %bb_0x1119 i64 4382, label %bb_0x111e i64 4388, label %bb_0x1124 i64 4393, label %bb_0x1129 i64 4398, label %bb_0x112e i64 4403, label %bb_0x1133 i64 4410, label %bb_0x113a ]
  bb_4370_default:
  %t_67 = load i64, i64* %rax
  ret i64 %t_67
  bb_0x1115:
  %t_68 = load i64, i64* %rdx
  %t_69 = load i64, i64* %rsi
  %t_70 = add i64 %t_68, %t_69
  %t_72 = trunc i64 %t_70 to i32
  %t_71 = zext i32 %t_72 to i64
  store i64 %t_71, i64* %rax
  %t_73 = load i64, i64* %rax
  ret i64 %t_73
  %t_74 = load i64, i64* %rax
  ret i64 %t_74
  bb_0x1119:
  %t_75 = load i64, i64* %rsi
  %t_76 = trunc i64 %t_75 to i32
  %t_77 = zext i32 %t_76 to i64
  store i64 %t_77, i64* %rax
  %t_78 = load i64, i64* %rax
  %t_79 = trunc i64 %t_78 to i32
  %t_80 = load i64, i64* %rdx
  %t_81 = trunc i64 %t_80 to i32
  %t_82 = sub i32 %t_79, %t_81
  %t_83 = zext i32 %t_82 to i64
  store i64 %t_83, i64* %rax
  %t_84 = icmp eq i32 %t_82, 0
  %t_85 = icmp slt i32 %t_82, 0
  %t_86 = trunc i32 %t_82 to i8
  %t_87 = call i8 @llvm.ctpop.i8(i8 %t_86)
  %t_88 = and i8 %t_87, 1
  %t_89 = icmp eq i8 %t_88, 0
  %t_90 = icmp ult i32 %t_79, %t_81
  %t_91 = and i32 %t_79, 15
  %t_92 = and i32 %t_81, 15
  %t_93 = sub i32 %t_91, %t_92
  %t_94 = icmp ugt i32 %t_93, 15
  %t_95 = icmp slt i32 %t_79, 0
  %t_96 = icmp slt i32 %t_81, 0
  %t_97 = icmp slt i32 %t_82, 0
  %t_98 = xor i1 %t_95, %t_96
  %t_99 = xor i1 %t_95, %t_97
  %t_100 = and i1 %t_98, %t_99
  store i1 %t_84, i1* %zf
  store i1 %t_85, i1* %sf
  store i1 %t_90, i1* %cf
  store i1 %t_100, i1* %of
  store i1 %t_89, i1* %pf
  store i1 %t_94, i1* %af
  %t_101 = load i64, i64* %rax
  ret i64 %t_101
  %t_102 = load i64, i64* %rax
  ret i64 %t_102
  bb_0x111e:
  %t_103 = load i64, i64* %rdx
  %t_104 = trunc i64 %t_103 to i32
  %t_105 = zext i32 %t_104 to i64
  store i64 %t_105, i64* %rax
  %t_106 = load i64, i64* %rax
  %t_107 = trunc i64 %t_106 to i32
  %t_108 = load i64, i64* %rsi
  %t_109 = trunc i64 %t_108 to i32
  %t_110 = mul i32 %t_107, %t_109
  %t_111 = zext i32 %t_110 to i64
  store i64 %t_111, i64* %rax
  %t_112 = load i64, i64* %rax
  ret i64 %t_112
  %t_113 = load i64, i64* %rax
  ret i64 %t_113
  bb_0x1124:
  %t_114 = load i64, i64* %rdx
  %t_115 = trunc i64 %t_114 to i32
  %t_116 = zext i32 %t_115 to i64
  store i64 %t_116, i64* %rax
  %t_117 = load i64, i64* %rax
  %t_118 = trunc i64 %t_117 to i32
  %t_119 = load i64, i64* %rsi
  %t_120 = trunc i64 %t_119 to i32
  %t_121 = and i32 %t_118, %t_120
  %t_122 = zext i32 %t_121 to i64
  store i64 %t_122, i64* %rax
  %t_123 = icmp eq i32 %t_121, 0
  %t_124 = icmp slt i32 %t_121, 0
  %t_125 = trunc i32 %t_121 to i8
  %t_126 = call i8 @llvm.ctpop.i8(i8 %t_125)
  %t_127 = and i8 %t_126, 1
  %t_128 = icmp eq i8 %t_127, 0
  %t_129 = icmp eq i64 0, 1
  store i1 %t_123, i1* %zf
  store i1 %t_124, i1* %sf
  store i1 %t_129, i1* %cf
  store i1 %t_129, i1* %of
  store i1 %t_128, i1* %pf
  store i1 %t_129, i1* %af
  %t_130 = load i64, i64* %rax
  ret i64 %t_130
  %t_131 = load i64, i64* %rax
  ret i64 %t_131
  bb_0x1129:
  %t_132 = load i64, i64* %rdx
  %t_133 = trunc i64 %t_132 to i32
  %t_134 = zext i32 %t_133 to i64
  store i64 %t_134, i64* %rax
  %t_135 = load i64, i64* %rax
  %t_136 = trunc i64 %t_135 to i32
  %t_137 = load i64, i64* %rsi
  %t_138 = trunc i64 %t_137 to i32
  %t_139 = or i32 %t_136, %t_138
  %t_140 = zext i32 %t_139 to i64
  store i64 %t_140, i64* %rax
  %t_141 = icmp eq i32 %t_139, 0
  %t_142 = icmp slt i32 %t_139, 0
  %t_143 = trunc i32 %t_139 to i8
  %t_144 = call i8 @llvm.ctpop.i8(i8 %t_143)
  %t_145 = and i8 %t_144, 1
  %t_146 = icmp eq i8 %t_145, 0
  %t_147 = icmp eq i64 0, 1
  store i1 %t_141, i1* %zf
  store i1 %t_142, i1* %sf
  store i1 %t_147, i1* %cf
  store i1 %t_147, i1* %of
  store i1 %t_146, i1* %pf
  store i1 %t_147, i1* %af
  %t_148 = load i64, i64* %rax
  ret i64 %t_148
  %t_149 = load i64, i64* %rax
  ret i64 %t_149
  bb_0x112e:
  %t_150 = load i64, i64* %rdx
  %t_151 = trunc i64 %t_150 to i32
  %t_152 = zext i32 %t_151 to i64
  store i64 %t_152, i64* %rax
  %t_153 = load i64, i64* %rax
  %t_154 = trunc i64 %t_153 to i32
  %t_155 = load i64, i64* %rsi
  %t_156 = trunc i64 %t_155 to i32
  %t_157 = xor i32 %t_154, %t_156
  %t_158 = zext i32 %t_157 to i64
  store i64 %t_158, i64* %rax
  %t_159 = icmp eq i32 %t_157, 0
  %t_160 = icmp slt i32 %t_157, 0
  %t_161 = trunc i32 %t_157 to i8
  %t_162 = call i8 @llvm.ctpop.i8(i8 %t_161)
  %t_163 = and i8 %t_162, 1
  %t_164 = icmp eq i8 %t_163, 0
  %t_165 = icmp eq i64 0, 1
  store i1 %t_159, i1* %zf
  store i1 %t_160, i1* %sf
  store i1 %t_165, i1* %cf
  store i1 %t_165, i1* %of
  store i1 %t_164, i1* %pf
  store i1 %t_165, i1* %af
  %t_166 = load i64, i64* %rax
  ret i64 %t_166
  %t_167 = load i64, i64* %rax
  ret i64 %t_167
  bb_0x1133:
  %t_168 = load i64, i64* %rsi
  %t_169 = trunc i64 %t_168 to i32
  %t_170 = zext i32 %t_169 to i64
  store i64 %t_170, i64* %rax
  %t_171 = load i64, i64* %rdx
  %t_172 = trunc i64 %t_171 to i32
  %t_173 = zext i32 %t_172 to i64
  store i64 %t_173, i64* %rcx
  %t_174 = load i64, i64* %rcx
  %t_175 = trunc i64 %t_174 to i8
  %t_176 = load i64, i64* %rax
  %t_177 = trunc i64 %t_176 to i32
  %t_178 = zext i8 %t_175 to i32
  %t_179 = shl i32 %t_177, %t_178
  %t_180 = zext i32 %t_179 to i64
  store i64 %t_180, i64* %rax
  %t_181 = load i64, i64* %rax
  ret i64 %t_181
  %t_182 = load i64, i64* %rax
  ret i64 %t_182
  bb_0x113a:
  %t_183 = load i64, i64* %rsi
  %t_184 = trunc i64 %t_183 to i32
  %t_185 = zext i32 %t_184 to i64
  store i64 %t_185, i64* %rax
  %t_186 = load i64, i64* %rdx
  %t_187 = trunc i64 %t_186 to i32
  %t_188 = zext i32 %t_187 to i64
  store i64 %t_188, i64* %rcx
  %t_189 = load i64, i64* %rcx
  %t_190 = trunc i64 %t_189 to i8
  %t_191 = load i64, i64* %rax
  %t_192 = trunc i64 %t_191 to i32
  %t_193 = zext i8 %t_190 to i32
  %t_194 = ashr i32 %t_192, %t_193
  %t_195 = zext i32 %t_194 to i64
  store i64 %t_195, i64* %rax
  %t_196 = load i64, i64* %rax
  ret i64 %t_196
  %t_197 = load i64, i64* %rax
  ret i64 %t_197
  
}

define i64 @sparse(i8* %mem, i64 %rdi_in, i64 %rsi_in, i64 %rdx_in, i64 %rcx_in, i64 %r8_in, i64 %r9_in) {
  prologue_0x1147:
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
  br label %bb_0x1147
  bb_0x1147:
  %t_7 = load i64, i64* %rdi
  %t_8 = trunc i64 %t_7 to i32
  %t_9 = sub i32 %t_8, 1000
  %t_10 = icmp eq i32 %t_9, 0
  %t_11 = icmp slt i32 %t_9, 0
  %t_12 = icmp ult i32 %t_8, 1000
  %t_13 = icmp slt i32 %t_8, 0
  %t_14 = icmp slt i32 1000, 0
  %t_15 = icmp slt i32 %t_9, 0
  %t_16 = xor i1 %t_13, %t_14
  %t_17 = xor i1 %t_13, %t_15
  %t_18 = and i1 %t_16, %t_17
  %t_19 = trunc i32 %t_9 to i8
  %t_20 = call i8 @llvm.ctpop.i8(i8 %t_19)
  %t_21 = and i8 %t_20, 1
  %t_22 = icmp eq i8 %t_21, 0
  %t_23 = and i32 %t_8, 15
  %t_24 = and i32 1000, 15
  %t_25 = sub i32 %t_23, %t_24
  %t_26 = icmp ugt i32 %t_25, 15
  store i1 %t_10, i1* %zf
  store i1 %t_11, i1* %sf
  store i1 %t_12, i1* %cf
  store i1 %t_18, i1* %of
  store i1 %t_22, i1* %pf
  store i1 %t_26, i1* %af
  %flag_zf_27 = load i1, i1* %zf
  br i1 %flag_zf_27, label %bb_0x117c, label %bb_0x1153
  bb_0x117c:
  %t_28 = load i64, i64* %rsi
  %t_29 = add i64 %t_28, 2
  %t_31 = trunc i64 %t_29 to i32
  %t_30 = zext i32 %t_31 to i64
  store i64 %t_30, i64* %rax
  %t_32 = load i64, i64* %rax
  ret i64 %t_32
  %t_33 = load i64, i64* %rax
  ret i64 %t_33
  bb_0x1153:
  %flag_zf_34 = load i1, i1* %zf
  %flag_sf_35 = load i1, i1* %sf
  %flag_of_36 = load i1, i1* %of
  %t_37 = xor i1 %flag_zf_34, true
  %t_38 = icmp eq i1 %flag_sf_35, %flag_of_36
  %t_39 = and i1 %t_37, %t_38
  br i1 %t_39, label %bb_0x116a, label %bb_0x1155
  bb_0x116a:
  %t_40 = load i64, i64* %rsi
  %t_41 = trunc i64 %t_40 to i32
  %t_42 = add i32 %t_41, 3
  %t_43 = zext i32 %t_42 to i64
  store i64 %t_43, i64* %rsi
  %t_44 = icmp eq i32 %t_42, 0
  %t_45 = icmp slt i32 %t_42, 0
  %t_46 = trunc i32 %t_42 to i8
  %t_47 = call i8 @llvm.ctpop.i8(i8 %t_46)
  %t_48 = and i8 %t_47, 1
  %t_49 = icmp eq i8 %t_48, 0
  %t_50 = icmp ult i32 %t_42, %t_41
  %t_51 = and i32 %t_41, 15
  %t_52 = and i32 3, 15
  %t_53 = add i32 %t_51, %t_52
  %t_54 = icmp ugt i32 %t_53, 15
  %t_55 = icmp slt i32 %t_41, 0
  %t_56 = icmp slt i32 3, 0
  %t_57 = icmp slt i32 %t_42, 0
  %t_58 = xor i1 %t_55, %t_56
  %t_59 = xor i1 %t_55, %t_57
  %t_60 = and i1 %t_58, %t_59
  store i1 %t_44, i1* %zf
  store i1 %t_45, i1* %sf
  store i1 %t_50, i1* %cf
  store i1 %t_60, i1* %of
  store i1 %t_49, i1* %pf
  store i1 %t_54, i1* %af
  %t_61 = load i64, i64* %rdi
  %t_62 = trunc i64 %t_61 to i32
  %t_63 = sub i32 %t_62, 10000
  %t_64 = icmp eq i32 %t_63, 0
  %t_65 = icmp slt i32 %t_63, 0
  %t_66 = icmp ult i32 %t_62, 10000
  %t_67 = icmp slt i32 %t_62, 0
  %t_68 = icmp slt i32 10000, 0
  %t_69 = icmp slt i32 %t_63, 0
  %t_70 = xor i1 %t_67, %t_68
  %t_71 = xor i1 %t_67, %t_69
  %t_72 = and i1 %t_70, %t_71
  %t_73 = trunc i32 %t_63 to i8
  %t_74 = call i8 @llvm.ctpop.i8(i8 %t_73)
  %t_75 = and i8 %t_74, 1
  %t_76 = icmp eq i8 %t_75, 0
  %t_77 = and i32 %t_62, 15
  %t_78 = and i32 10000, 15
  %t_79 = sub i32 %t_77, %t_78
  %t_80 = icmp ugt i32 %t_79, 15
  store i1 %t_64, i1* %zf
  store i1 %t_65, i1* %sf
  store i1 %t_66, i1* %cf
  store i1 %t_72, i1* %of
  store i1 %t_76, i1* %pf
  store i1 %t_80, i1* %af
  store i64 4294967295, i64* %rax
  %flag_zf_81 = load i1, i1* %zf
  %t_82 = load i64, i64* %rsi
  %t_83 = trunc i64 %t_82 to i32
  %t_84 = load i64, i64* %rax
  %t_85 = trunc i64 %t_84 to i32
  %t_86 = select i1 %flag_zf_81, i32 %t_83, i32 %t_85
  %t_87 = zext i32 %t_86 to i64
  store i64 %t_87, i64* %rax
  %t_88 = load i64, i64* %rax
  ret i64 %t_88
  %t_89 = load i64, i64* %rax
  ret i64 %t_89
  bb_0x1155:
  %t_90 = load i64, i64* %rsi
  %t_91 = trunc i64 %t_90 to i32
  %t_92 = zext i32 %t_91 to i64
  store i64 %t_92, i64* %rax
  %t_93 = load i64, i64* %rdi
  %t_94 = trunc i64 %t_93 to i32
  %t_95 = load i64, i64* %rdi
  %t_96 = trunc i64 %t_95 to i32
  %t_97 = and i32 %t_94, %t_96
  %t_98 = icmp eq i32 %t_97, 0
  %t_99 = icmp slt i32 %t_97, 0
  %t_100 = trunc i32 %t_97 to i8
  %t_101 = call i8 @llvm.ctpop.i8(i8 %t_100)
  %t_102 = and i8 %t_101, 1
  %t_103 = icmp eq i8 %t_102, 0
  %t_104 = icmp eq i64 0, 1
  store i1 %t_98, i1* %zf
  store i1 %t_99, i1* %sf
  store i1 %t_104, i1* %cf
  store i1 %t_104, i1* %of
  store i1 %t_103, i1* %pf
  store i1 %t_104, i1* %af
  %flag_zf_105 = load i1, i1* %zf
  br i1 %flag_zf_105, label %bb_0x117f, label %bb_0x115b
  bb_0x117f:
  %t_106 = load i64, i64* %rax
  ret i64 %t_106
  %t_107 = load i64, i64* %rax
  ret i64 %t_107
  bb_0x115b:
  %t_108 = load i64, i64* %rsi
  %t_109 = trunc i64 %t_108 to i32
  %t_110 = add i32 %t_109, 1
  %t_111 = zext i32 %t_110 to i64
  store i64 %t_111, i64* %rsi
  %t_112 = icmp eq i32 %t_110, 0
  %t_113 = icmp slt i32 %t_110, 0
  %t_114 = trunc i32 %t_110 to i8
  %t_115 = call i8 @llvm.ctpop.i8(i8 %t_114)
  %t_116 = and i8 %t_115, 1
  %t_117 = icmp eq i8 %t_116, 0
  %t_118 = icmp ult i32 %t_110, %t_109
  %t_119 = and i32 %t_109, 15
  %t_120 = and i32 1, 15
  %t_121 = add i32 %t_119, %t_120
  %t_122 = icmp ugt i32 %t_121, 15
  %t_123 = icmp slt i32 %t_109, 0
  %t_124 = icmp slt i32 1, 0
  %t_125 = icmp slt i32 %t_110, 0
  %t_126 = xor i1 %t_123, %t_124
  %t_127 = xor i1 %t_123, %t_125
  %t_128 = and i1 %t_126, %t_127
  store i1 %t_112, i1* %zf
  store i1 %t_113, i1* %sf
  store i1 %t_118, i1* %cf
  store i1 %t_128, i1* %of
  store i1 %t_117, i1* %pf
  store i1 %t_122, i1* %af
  %t_129 = load i64, i64* %rdi
  %t_130 = trunc i64 %t_129 to i32
  %t_131 = sub i32 %t_130, 100
  %t_132 = icmp eq i32 %t_131, 0
  %t_133 = icmp slt i32 %t_131, 0
  %t_134 = icmp ult i32 %t_130, 100
  %t_135 = icmp slt i32 %t_130, 0
  %t_136 = icmp slt i32 100, 0
  %t_137 = icmp slt i32 %t_131, 0
  %t_138 = xor i1 %t_135, %t_136
  %t_139 = xor i1 %t_135, %t_137
  %t_140 = and i1 %t_138, %t_139
  %t_141 = trunc i32 %t_131 to i8
  %t_142 = call i8 @llvm.ctpop.i8(i8 %t_141)
  %t_143 = and i8 %t_142, 1
  %t_144 = icmp eq i8 %t_143, 0
  %t_145 = and i32 %t_130, 15
  %t_146 = and i32 100, 15
  %t_147 = sub i32 %t_145, %t_146
  %t_148 = icmp ugt i32 %t_147, 15
  store i1 %t_132, i1* %zf
  store i1 %t_133, i1* %sf
  store i1 %t_134, i1* %cf
  store i1 %t_140, i1* %of
  store i1 %t_144, i1* %pf
  store i1 %t_148, i1* %af
  store i64 4294967295, i64* %rax
  %flag_zf_149 = load i1, i1* %zf
  %t_150 = load i64, i64* %rsi
  %t_151 = trunc i64 %t_150 to i32
  %t_152 = load i64, i64* %rax
  %t_153 = trunc i64 %t_152 to i32
  %t_154 = select i1 %flag_zf_149, i32 %t_151, i32 %t_153
  %t_155 = zext i32 %t_154 to i64
  store i64 %t_155, i64* %rax
  %t_156 = load i64, i64* %rax
  ret i64 %t_156
  %t_157 = load i64, i64* %rax
  ret i64 %t_157
  
}

define i64 @_fini(i8* %mem, i64 %rdi_in, i64 %rsi_in, i64 %rdx_in, i64 %rcx_in, i64 %r8_in, i64 %r9_in) {
  prologue_0x1180:
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
  br label %bb_0x1180
  bb_0x1180:
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
