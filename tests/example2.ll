; Orbit IR Lifter - x86 to LLVM IR
; Module: orbit_module
target triple = "x86_64-pc-linux-gnu"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"

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

declare i64 @libc.so.6(i8*, i64, i64, i64, i64, i64, i64)
declare i64 @__readfs_i64(i64)
declare i64 @__readgs_i64(i64)
declare i64 @__readcs_i64(i64)
declare i64 @__readds_i64(i64)
declare i64 @__reades_i64(i64)
declare i64 @__readss_i64(i64)

define i64 @entry(i8* %mem, i64 %rdi_in, i64 %rsi_in, i64 %rdx_in, i64 %rcx_in, i64 %r8_in, i64 %r9_in) {
  prologue_0x10a0:
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
  %zf = alloca i1
  %sf = alloca i1
  %cf = alloca i1
  %of = alloca i1
  %pf = alloca i1
  %df = alloca i1
  br label %bb_0x10a0
  bb_0x10a0:
  %t_1 = load i64, i64* %rax
  %t_2 = trunc i64 %t_1 to i8
  %flag_cf_3 = load i1, i1* %cf
  %t_4 = zext i1 %flag_cf_3 to i8
  %t_5 = add i8 0, %t_4
  %t_6 = sub i8 %t_2, %t_5
  %t_7 = zext i8 %t_6 to i64
  %t_8 = load i64, i64* %rax
  %t_9 = and i64 %t_8, 18446744073709551360
  %t_10 = or i64 %t_9, %t_7
  store i64 %t_10, i64* %rax
  %t_11 = icmp ult i8 %t_2, %t_5
  %t_12 = icmp eq i8 %t_6, 0
  %t_13 = icmp slt i8 %t_6, 0
  %t_14 = icmp slt i8 %t_2, 0
  %t_15 = icmp slt i8 %t_5, 0
  %t_16 = icmp slt i8 %t_6, 0
  %t_17 = xor i1 %t_14, %t_15
  %t_18 = xor i1 %t_14, %t_16
  %t_19 = and i1 %t_17, %t_18
  store i1 %t_12, i1* %zf
  store i1 %t_13, i1* %sf
  store i1 %t_11, i1* %cf
  store i1 %t_19, i1* %of
  %t_20 = load i64, i64* %rax
  %t_21 = inttoptr i64 %t_20 to i8*
  %t_22 = bitcast i8* %t_21 to i8*
  %t_23 = load i8, i8* %t_22
  %t_24 = load i64, i64* %rax
  %t_25 = trunc i64 %t_24 to i8
  %t_26 = add i8 %t_23, %t_25
  %t_27 = bitcast i8* %t_21 to i8*
  store i8 %t_26, i8* %t_27
  %t_28 = icmp eq i8 %t_26, 0
  %t_29 = icmp slt i8 %t_26, 0
  %t_30 = icmp ult i8 %t_26, %t_23
  %t_31 = icmp slt i8 %t_23, 0
  %t_32 = icmp slt i8 %t_25, 0
  %t_33 = icmp slt i8 %t_26, 0
  %t_34 = xor i1 %t_31, %t_32
  %t_35 = xor i1 %t_31, %t_33
  %t_36 = and i1 %t_34, %t_35
  store i1 %t_28, i1* %zf
  store i1 %t_29, i1* %sf
  store i1 %t_30, i1* %cf
  store i1 %t_36, i1* %of
  %t_37 = bitcast i8* %t_21 to i8*
  %t_38 = load i8, i8* %t_37
  %t_39 = load i64, i64* %rax
  %t_40 = trunc i64 %t_39 to i8
  %t_41 = add i8 %t_38, %t_40
  %t_42 = bitcast i8* %t_21 to i8*
  store i8 %t_41, i8* %t_42
  %t_43 = icmp eq i8 %t_41, 0
  %t_44 = icmp slt i8 %t_41, 0
  %t_45 = icmp ult i8 %t_41, %t_38
  %t_46 = icmp slt i8 %t_38, 0
  %t_47 = icmp slt i8 %t_40, 0
  %t_48 = icmp slt i8 %t_41, 0
  %t_49 = xor i1 %t_46, %t_47
  %t_50 = xor i1 %t_46, %t_48
  %t_51 = and i1 %t_49, %t_50
  store i1 %t_43, i1* %zf
  store i1 %t_44, i1* %sf
  store i1 %t_45, i1* %cf
  store i1 %t_51, i1* %of
  %t_52 = bitcast i8* %t_21 to i8*
  %t_53 = load i8, i8* %t_52
  %t_54 = load i64, i64* %rax
  %t_55 = trunc i64 %t_54 to i8
  %t_56 = add i8 %t_53, %t_55
  %t_57 = bitcast i8* %t_21 to i8*
  store i8 %t_56, i8* %t_57
  %t_58 = icmp eq i8 %t_56, 0
  %t_59 = icmp slt i8 %t_56, 0
  %t_60 = icmp ult i8 %t_56, %t_53
  %t_61 = icmp slt i8 %t_53, 0
  %t_62 = icmp slt i8 %t_55, 0
  %t_63 = icmp slt i8 %t_56, 0
  %t_64 = xor i1 %t_61, %t_62
  %t_65 = xor i1 %t_61, %t_63
  %t_66 = and i1 %t_64, %t_65
  store i1 %t_58, i1* %zf
  store i1 %t_59, i1* %sf
  store i1 %t_60, i1* %cf
  store i1 %t_66, i1* %of
  %t_67 = bitcast i8* %t_21 to i32*
  %t_68 = load i32, i32* %t_67
  %t_69 = load i64, i64* %rax
  %t_70 = trunc i64 %t_69 to i32
  %t_71 = add i32 %t_68, %t_70
  %t_72 = bitcast i8* %t_21 to i32*
  store i32 %t_71, i32* %t_72
  %t_73 = icmp eq i32 %t_71, 0
  %t_74 = icmp slt i32 %t_71, 0
  %t_75 = icmp ult i32 %t_71, %t_68
  %t_76 = icmp slt i32 %t_68, 0
  %t_77 = icmp slt i32 %t_70, 0
  %t_78 = icmp slt i32 %t_71, 0
  %t_79 = xor i1 %t_76, %t_77
  %t_80 = xor i1 %t_76, %t_78
  %t_81 = and i1 %t_79, %t_80
  store i1 %t_73, i1* %zf
  store i1 %t_74, i1* %sf
  store i1 %t_75, i1* %cf
  store i1 %t_81, i1* %of
  %t_82 = bitcast i8* %t_21 to i8*
  %t_83 = load i8, i8* %t_82
  %t_84 = load i64, i64* %rax
  %t_85 = trunc i64 %t_84 to i8
  %t_86 = add i8 %t_83, %t_85
  %t_87 = bitcast i8* %t_21 to i8*
  store i8 %t_86, i8* %t_87
  %t_88 = icmp eq i8 %t_86, 0
  %t_89 = icmp slt i8 %t_86, 0
  %t_90 = icmp ult i8 %t_86, %t_83
  %t_91 = icmp slt i8 %t_83, 0
  %t_92 = icmp slt i8 %t_85, 0
  %t_93 = icmp slt i8 %t_86, 0
  %t_94 = xor i1 %t_91, %t_92
  %t_95 = xor i1 %t_91, %t_93
  %t_96 = and i1 %t_94, %t_95
  store i1 %t_88, i1* %zf
  store i1 %t_89, i1* %sf
  store i1 %t_90, i1* %cf
  store i1 %t_96, i1* %of
  %t_97 = bitcast i8* %t_21 to i8*
  %t_98 = load i8, i8* %t_97
  %t_99 = load i64, i64* %rax
  %t_100 = trunc i64 %t_99 to i8
  %t_101 = add i8 %t_98, %t_100
  %t_102 = bitcast i8* %t_21 to i8*
  store i8 %t_101, i8* %t_102
  %t_103 = icmp eq i8 %t_101, 0
  %t_104 = icmp slt i8 %t_101, 0
  %t_105 = icmp ult i8 %t_101, %t_98
  %t_106 = icmp slt i8 %t_98, 0
  %t_107 = icmp slt i8 %t_100, 0
  %t_108 = icmp slt i8 %t_101, 0
  %t_109 = xor i1 %t_106, %t_107
  %t_110 = xor i1 %t_106, %t_108
  %t_111 = and i1 %t_109, %t_110
  store i1 %t_103, i1* %zf
  store i1 %t_104, i1* %sf
  store i1 %t_105, i1* %cf
  store i1 %t_111, i1* %of
  %t_112 = bitcast i8* %t_21 to i8*
  %t_113 = load i8, i8* %t_112
  %t_114 = load i64, i64* %rax
  %t_115 = trunc i64 %t_114 to i8
  %t_116 = add i8 %t_113, %t_115
  %t_117 = bitcast i8* %t_21 to i8*
  store i8 %t_116, i8* %t_117
  %t_118 = icmp eq i8 %t_116, 0
  %t_119 = icmp slt i8 %t_116, 0
  %t_120 = icmp ult i8 %t_116, %t_113
  %t_121 = icmp slt i8 %t_113, 0
  %t_122 = icmp slt i8 %t_115, 0
  %t_123 = icmp slt i8 %t_116, 0
  %t_124 = xor i1 %t_121, %t_122
  %t_125 = xor i1 %t_121, %t_123
  %t_126 = and i1 %t_124, %t_125
  store i1 %t_118, i1* %zf
  store i1 %t_119, i1* %sf
  store i1 %t_120, i1* %cf
  store i1 %t_126, i1* %of
  %t_127 = bitcast i8* %t_21 to i32*
  %t_128 = load i32, i32* %t_127
  %t_129 = load i64, i64* %rax
  %t_130 = trunc i64 %t_129 to i32
  %t_131 = add i32 %t_128, %t_130
  %t_132 = bitcast i8* %t_21 to i32*
  store i32 %t_131, i32* %t_132
  %t_133 = icmp eq i32 %t_131, 0
  %t_134 = icmp slt i32 %t_131, 0
  %t_135 = icmp ult i32 %t_131, %t_128
  %t_136 = icmp slt i32 %t_128, 0
  %t_137 = icmp slt i32 %t_130, 0
  %t_138 = icmp slt i32 %t_131, 0
  %t_139 = xor i1 %t_136, %t_137
  %t_140 = xor i1 %t_136, %t_138
  %t_141 = and i1 %t_139, %t_140
  store i1 %t_133, i1* %zf
  store i1 %t_134, i1* %sf
  store i1 %t_135, i1* %cf
  store i1 %t_141, i1* %of
  %t_142 = bitcast i8* %t_21 to i8*
  %t_143 = load i8, i8* %t_142
  %t_144 = load i64, i64* %rax
  %t_145 = trunc i64 %t_144 to i8
  %t_146 = add i8 %t_143, %t_145
  %t_147 = bitcast i8* %t_21 to i8*
  store i8 %t_146, i8* %t_147
  %t_148 = icmp eq i8 %t_146, 0
  %t_149 = icmp slt i8 %t_146, 0
  %t_150 = icmp ult i8 %t_146, %t_143
  %t_151 = icmp slt i8 %t_143, 0
  %t_152 = icmp slt i8 %t_145, 0
  %t_153 = icmp slt i8 %t_146, 0
  %t_154 = xor i1 %t_151, %t_152
  %t_155 = xor i1 %t_151, %t_153
  %t_156 = and i1 %t_154, %t_155
  store i1 %t_148, i1* %zf
  store i1 %t_149, i1* %sf
  store i1 %t_150, i1* %cf
  store i1 %t_156, i1* %of
  %t_157 = load i64, i64* %rax
  %t_158 = trunc i64 %t_157 to i8
  %t_159 = add i8 %t_158, 0
  %t_160 = zext i8 %t_159 to i64
  %t_161 = load i64, i64* %rax
  %t_162 = and i64 %t_161, 18446744073709551360
  %t_163 = or i64 %t_162, %t_160
  store i64 %t_163, i64* %rax
  %t_164 = icmp eq i8 %t_159, 0
  %t_165 = icmp slt i8 %t_159, 0
  %t_166 = icmp ult i8 %t_159, %t_158
  %t_167 = icmp slt i8 %t_158, 0
  %t_168 = icmp slt i8 0, 0
  %t_169 = icmp slt i8 %t_159, 0
  %t_170 = xor i1 %t_167, %t_168
  %t_171 = xor i1 %t_167, %t_169
  %t_172 = and i1 %t_170, %t_171
  store i1 %t_164, i1* %zf
  store i1 %t_165, i1* %sf
  store i1 %t_166, i1* %cf
  store i1 %t_172, i1* %of
  %t_173 = bitcast i8* %t_21 to i8*
  %t_174 = load i8, i8* %t_173
  %t_175 = load i64, i64* %rax
  %t_176 = trunc i64 %t_175 to i8
  %t_177 = add i8 %t_174, %t_176
  %t_178 = bitcast i8* %t_21 to i8*
  store i8 %t_177, i8* %t_178
  %t_179 = icmp eq i8 %t_177, 0
  %t_180 = icmp slt i8 %t_177, 0
  %t_181 = icmp ult i8 %t_177, %t_174
  %t_182 = icmp slt i8 %t_174, 0
  %t_183 = icmp slt i8 %t_176, 0
  %t_184 = icmp slt i8 %t_177, 0
  %t_185 = xor i1 %t_182, %t_183
  %t_186 = xor i1 %t_182, %t_184
  %t_187 = and i1 %t_185, %t_186
  store i1 %t_179, i1* %zf
  store i1 %t_180, i1* %sf
  store i1 %t_181, i1* %cf
  store i1 %t_187, i1* %of
  %t_188 = bitcast i8* %t_21 to i8*
  %t_189 = load i8, i8* %t_188
  %t_190 = load i64, i64* %rax
  %t_191 = trunc i64 %t_190 to i8
  %t_192 = add i8 %t_189, %t_191
  %t_193 = bitcast i8* %t_21 to i8*
  store i8 %t_192, i8* %t_193
  %t_194 = icmp eq i8 %t_192, 0
  %t_195 = icmp slt i8 %t_192, 0
  %t_196 = icmp ult i8 %t_192, %t_189
  %t_197 = icmp slt i8 %t_189, 0
  %t_198 = icmp slt i8 %t_191, 0
  %t_199 = icmp slt i8 %t_192, 0
  %t_200 = xor i1 %t_197, %t_198
  %t_201 = xor i1 %t_197, %t_199
  %t_202 = and i1 %t_200, %t_201
  store i1 %t_194, i1* %zf
  store i1 %t_195, i1* %sf
  store i1 %t_196, i1* %cf
  store i1 %t_202, i1* %of
  %t_203 = bitcast i8* %t_21 to i8*
  %t_204 = load i8, i8* %t_203
  %t_205 = load i64, i64* %rax
  %t_206 = trunc i64 %t_205 to i8
  %t_207 = add i8 %t_204, %t_206
  %t_208 = bitcast i8* %t_21 to i8*
  store i8 %t_207, i8* %t_208
  %t_209 = icmp eq i8 %t_207, 0
  %t_210 = icmp slt i8 %t_207, 0
  %t_211 = icmp ult i8 %t_207, %t_204
  %t_212 = icmp slt i8 %t_204, 0
  %t_213 = icmp slt i8 %t_206, 0
  %t_214 = icmp slt i8 %t_207, 0
  %t_215 = xor i1 %t_212, %t_213
  %t_216 = xor i1 %t_212, %t_214
  %t_217 = and i1 %t_215, %t_216
  store i1 %t_209, i1* %zf
  store i1 %t_210, i1* %sf
  store i1 %t_211, i1* %cf
  store i1 %t_217, i1* %of
  %t_218 = bitcast i8* %t_21 to i8*
  %t_219 = load i8, i8* %t_218
  %t_220 = load i64, i64* %rax
  %t_221 = trunc i64 %t_220 to i8
  %t_222 = add i8 %t_219, %t_221
  %t_223 = bitcast i8* %t_21 to i8*
  store i8 %t_222, i8* %t_223
  %t_224 = icmp eq i8 %t_222, 0
  %t_225 = icmp slt i8 %t_222, 0
  %t_226 = icmp ult i8 %t_222, %t_219
  %t_227 = icmp slt i8 %t_219, 0
  %t_228 = icmp slt i8 %t_221, 0
  %t_229 = icmp slt i8 %t_222, 0
  %t_230 = xor i1 %t_227, %t_228
  %t_231 = xor i1 %t_227, %t_229
  %t_232 = and i1 %t_230, %t_231
  store i1 %t_224, i1* %zf
  store i1 %t_225, i1* %sf
  store i1 %t_226, i1* %cf
  store i1 %t_232, i1* %of
  %t_233 = bitcast i8* %t_21 to i8*
  %t_234 = load i8, i8* %t_233
  %t_235 = load i64, i64* %rax
  %t_236 = trunc i64 %t_235 to i8
  %t_237 = add i8 %t_234, %t_236
  %t_238 = bitcast i8* %t_21 to i8*
  store i8 %t_237, i8* %t_238
  %t_239 = icmp eq i8 %t_237, 0
  %t_240 = icmp slt i8 %t_237, 0
  %t_241 = icmp ult i8 %t_237, %t_234
  %t_242 = icmp slt i8 %t_234, 0
  %t_243 = icmp slt i8 %t_236, 0
  %t_244 = icmp slt i8 %t_237, 0
  %t_245 = xor i1 %t_242, %t_243
  %t_246 = xor i1 %t_242, %t_244
  %t_247 = and i1 %t_245, %t_246
  store i1 %t_239, i1* %zf
  store i1 %t_240, i1* %sf
  store i1 %t_241, i1* %cf
  store i1 %t_247, i1* %of
  %t_248 = bitcast i8* %t_21 to i8*
  %t_249 = load i8, i8* %t_248
  %t_250 = load i64, i64* %rax
  %t_251 = trunc i64 %t_250 to i8
  %t_252 = add i8 %t_249, %t_251
  %t_253 = bitcast i8* %t_21 to i8*
  store i8 %t_252, i8* %t_253
  %t_254 = icmp eq i8 %t_252, 0
  %t_255 = icmp slt i8 %t_252, 0
  %t_256 = icmp ult i8 %t_252, %t_249
  %t_257 = icmp slt i8 %t_249, 0
  %t_258 = icmp slt i8 %t_251, 0
  %t_259 = icmp slt i8 %t_252, 0
  %t_260 = xor i1 %t_257, %t_258
  %t_261 = xor i1 %t_257, %t_259
  %t_262 = and i1 %t_260, %t_261
  store i1 %t_254, i1* %zf
  store i1 %t_255, i1* %sf
  store i1 %t_256, i1* %cf
  store i1 %t_262, i1* %of
  %t_263 = bitcast i8* %t_21 to i8*
  %t_264 = load i8, i8* %t_263
  %t_265 = load i64, i64* %rax
  %t_266 = trunc i64 %t_265 to i8
  %t_267 = add i8 %t_264, %t_266
  %t_268 = bitcast i8* %t_21 to i8*
  store i8 %t_267, i8* %t_268
  %t_269 = icmp eq i8 %t_267, 0
  %t_270 = icmp slt i8 %t_267, 0
  %t_271 = icmp ult i8 %t_267, %t_264
  %t_272 = icmp slt i8 %t_264, 0
  %t_273 = icmp slt i8 %t_266, 0
  %t_274 = icmp slt i8 %t_267, 0
  %t_275 = xor i1 %t_272, %t_273
  %t_276 = xor i1 %t_272, %t_274
  %t_277 = and i1 %t_275, %t_276
  store i1 %t_269, i1* %zf
  store i1 %t_270, i1* %sf
  store i1 %t_271, i1* %cf
  store i1 %t_277, i1* %of
  %t_278 = bitcast i8* %t_21 to i8*
  %t_279 = load i8, i8* %t_278
  %t_280 = load i64, i64* %rax
  %t_281 = trunc i64 %t_280 to i8
  %t_282 = add i8 %t_279, %t_281
  %t_283 = bitcast i8* %t_21 to i8*
  store i8 %t_282, i8* %t_283
  %t_284 = icmp eq i8 %t_282, 0
  %t_285 = icmp slt i8 %t_282, 0
  %t_286 = icmp ult i8 %t_282, %t_279
  %t_287 = icmp slt i8 %t_279, 0
  %t_288 = icmp slt i8 %t_281, 0
  %t_289 = icmp slt i8 %t_282, 0
  %t_290 = xor i1 %t_287, %t_288
  %t_291 = xor i1 %t_287, %t_289
  %t_292 = and i1 %t_290, %t_291
  store i1 %t_284, i1* %zf
  store i1 %t_285, i1* %sf
  store i1 %t_286, i1* %cf
  store i1 %t_292, i1* %of
  %t_293 = bitcast i8* %t_21 to i8*
  %t_294 = load i8, i8* %t_293
  %t_295 = load i64, i64* %rax
  %t_296 = trunc i64 %t_295 to i8
  %t_297 = add i8 %t_294, %t_296
  %t_298 = bitcast i8* %t_21 to i8*
  store i8 %t_297, i8* %t_298
  %t_299 = icmp eq i8 %t_297, 0
  %t_300 = icmp slt i8 %t_297, 0
  %t_301 = icmp ult i8 %t_297, %t_294
  %t_302 = icmp slt i8 %t_294, 0
  %t_303 = icmp slt i8 %t_296, 0
  %t_304 = icmp slt i8 %t_297, 0
  %t_305 = xor i1 %t_302, %t_303
  %t_306 = xor i1 %t_302, %t_304
  %t_307 = and i1 %t_305, %t_306
  store i1 %t_299, i1* %zf
  store i1 %t_300, i1* %sf
  store i1 %t_301, i1* %cf
  store i1 %t_307, i1* %of
  %t_308 = bitcast i8* %t_21 to i8*
  %t_309 = load i8, i8* %t_308
  %t_310 = load i64, i64* %rax
  %t_311 = trunc i64 %t_310 to i8
  %t_312 = add i8 %t_309, %t_311
  %t_313 = bitcast i8* %t_21 to i8*
  store i8 %t_312, i8* %t_313
  %t_314 = icmp eq i8 %t_312, 0
  %t_315 = icmp slt i8 %t_312, 0
  %t_316 = icmp ult i8 %t_312, %t_309
  %t_317 = icmp slt i8 %t_309, 0
  %t_318 = icmp slt i8 %t_311, 0
  %t_319 = icmp slt i8 %t_312, 0
  %t_320 = xor i1 %t_317, %t_318
  %t_321 = xor i1 %t_317, %t_319
  %t_322 = and i1 %t_320, %t_321
  store i1 %t_314, i1* %zf
  store i1 %t_315, i1* %sf
  store i1 %t_316, i1* %cf
  store i1 %t_322, i1* %of
  %t_323 = bitcast i8* %t_21 to i8*
  %t_324 = load i8, i8* %t_323
  %t_325 = load i64, i64* %rax
  %t_326 = trunc i64 %t_325 to i8
  %t_327 = add i8 %t_324, %t_326
  %t_328 = bitcast i8* %t_21 to i8*
  store i8 %t_327, i8* %t_328
  %t_329 = icmp eq i8 %t_327, 0
  %t_330 = icmp slt i8 %t_327, 0
  %t_331 = icmp ult i8 %t_327, %t_324
  %t_332 = icmp slt i8 %t_324, 0
  %t_333 = icmp slt i8 %t_326, 0
  %t_334 = icmp slt i8 %t_327, 0
  %t_335 = xor i1 %t_332, %t_333
  %t_336 = xor i1 %t_332, %t_334
  %t_337 = and i1 %t_335, %t_336
  store i1 %t_329, i1* %zf
  store i1 %t_330, i1* %sf
  store i1 %t_331, i1* %cf
  store i1 %t_337, i1* %of
  %t_338 = bitcast i8* %t_21 to i8*
  %t_339 = load i8, i8* %t_338
  %t_340 = load i64, i64* %rax
  %t_341 = trunc i64 %t_340 to i8
  %t_342 = add i8 %t_339, %t_341
  %t_343 = bitcast i8* %t_21 to i8*
  store i8 %t_342, i8* %t_343
  %t_344 = icmp eq i8 %t_342, 0
  %t_345 = icmp slt i8 %t_342, 0
  %t_346 = icmp ult i8 %t_342, %t_339
  %t_347 = icmp slt i8 %t_339, 0
  %t_348 = icmp slt i8 %t_341, 0
  %t_349 = icmp slt i8 %t_342, 0
  %t_350 = xor i1 %t_347, %t_348
  %t_351 = xor i1 %t_347, %t_349
  %t_352 = and i1 %t_350, %t_351
  store i1 %t_344, i1* %zf
  store i1 %t_345, i1* %sf
  store i1 %t_346, i1* %cf
  store i1 %t_352, i1* %of
  %t_353 = bitcast i8* %t_21 to i8*
  %t_354 = load i8, i8* %t_353
  %t_355 = load i64, i64* %rax
  %t_356 = trunc i64 %t_355 to i8
  %t_357 = add i8 %t_354, %t_356
  %t_358 = bitcast i8* %t_21 to i8*
  store i8 %t_357, i8* %t_358
  %t_359 = icmp eq i8 %t_357, 0
  %t_360 = icmp slt i8 %t_357, 0
  %t_361 = icmp ult i8 %t_357, %t_354
  %t_362 = icmp slt i8 %t_354, 0
  %t_363 = icmp slt i8 %t_356, 0
  %t_364 = icmp slt i8 %t_357, 0
  %t_365 = xor i1 %t_362, %t_363
  %t_366 = xor i1 %t_362, %t_364
  %t_367 = and i1 %t_365, %t_366
  store i1 %t_359, i1* %zf
  store i1 %t_360, i1* %sf
  store i1 %t_361, i1* %cf
  store i1 %t_367, i1* %of
  store i64 7, i64* %rax
  %t_368 = bitcast i8* %t_21 to i8*
  %t_369 = load i8, i8* %t_368
  %t_370 = load i64, i64* %rax
  %t_371 = trunc i64 %t_370 to i8
  %t_372 = add i8 %t_369, %t_371
  %t_373 = bitcast i8* %t_21 to i8*
  store i8 %t_372, i8* %t_373
  %t_374 = icmp eq i8 %t_372, 0
  %t_375 = icmp slt i8 %t_372, 0
  %t_376 = icmp ult i8 %t_372, %t_369
  %t_377 = icmp slt i8 %t_369, 0
  %t_378 = icmp slt i8 %t_371, 0
  %t_379 = icmp slt i8 %t_372, 0
  %t_380 = xor i1 %t_377, %t_378
  %t_381 = xor i1 %t_377, %t_379
  %t_382 = and i1 %t_380, %t_381
  store i1 %t_374, i1* %zf
  store i1 %t_375, i1* %sf
  store i1 %t_376, i1* %cf
  store i1 %t_382, i1* %of
  %t_383 = load i64, i64* %rax
  %t_384 = add i64 %t_383, 7
  %t_385 = inttoptr i64 %t_384 to i8*
  %t_386 = bitcast i8* %t_385 to i8*
  %t_387 = load i8, i8* %t_386
  %t_388 = trunc i64 0 to i8
  %t_389 = add i8 %t_387, %t_388
  %t_390 = bitcast i8* %t_385 to i8*
  store i8 %t_389, i8* %t_390
  %t_391 = icmp eq i8 %t_389, 0
  %t_392 = icmp slt i8 %t_389, 0
  %t_393 = icmp ult i8 %t_389, %t_387
  %t_394 = icmp slt i8 %t_387, 0
  %t_395 = icmp slt i8 %t_388, 0
  %t_396 = icmp slt i8 %t_389, 0
  %t_397 = xor i1 %t_394, %t_395
  %t_398 = xor i1 %t_394, %t_396
  %t_399 = and i1 %t_397, %t_398
  store i1 %t_391, i1* %zf
  store i1 %t_392, i1* %sf
  store i1 %t_393, i1* %cf
  store i1 %t_399, i1* %of
  %t_400 = bitcast i8* %t_21 to i8*
  %t_401 = load i8, i8* %t_400
  %t_402 = load i64, i64* %rax
  %t_403 = trunc i64 %t_402 to i8
  %t_404 = add i8 %t_401, %t_403
  %t_405 = bitcast i8* %t_21 to i8*
  store i8 %t_404, i8* %t_405
  %t_406 = icmp eq i8 %t_404, 0
  %t_407 = icmp slt i8 %t_404, 0
  %t_408 = icmp ult i8 %t_404, %t_401
  %t_409 = icmp slt i8 %t_401, 0
  %t_410 = icmp slt i8 %t_403, 0
  %t_411 = icmp slt i8 %t_404, 0
  %t_412 = xor i1 %t_409, %t_410
  %t_413 = xor i1 %t_409, %t_411
  %t_414 = and i1 %t_412, %t_413
  store i1 %t_406, i1* %zf
  store i1 %t_407, i1* %sf
  store i1 %t_408, i1* %cf
  store i1 %t_414, i1* %of
  %t_415 = bitcast i8* %t_21 to i8*
  %t_416 = load i8, i8* %t_415
  %t_417 = load i64, i64* %rax
  %t_418 = trunc i64 %t_417 to i8
  %t_419 = add i8 %t_416, %t_418
  %t_420 = bitcast i8* %t_21 to i8*
  store i8 %t_419, i8* %t_420
  %t_421 = icmp eq i8 %t_419, 0
  %t_422 = icmp slt i8 %t_419, 0
  %t_423 = icmp ult i8 %t_419, %t_416
  %t_424 = icmp slt i8 %t_416, 0
  %t_425 = icmp slt i8 %t_418, 0
  %t_426 = icmp slt i8 %t_419, 0
  %t_427 = xor i1 %t_424, %t_425
  %t_428 = xor i1 %t_424, %t_426
  %t_429 = and i1 %t_427, %t_428
  store i1 %t_421, i1* %zf
  store i1 %t_422, i1* %sf
  store i1 %t_423, i1* %cf
  store i1 %t_429, i1* %of
  %t_430 = bitcast i8* %t_21 to i8*
  %t_431 = load i8, i8* %t_430
  %t_432 = load i64, i64* %rax
  %t_433 = trunc i64 %t_432 to i8
  %flag_cf_434 = load i1, i1* %cf
  %t_435 = zext i1 %flag_cf_434 to i8
  %t_436 = add i8 %t_431, %t_433
  %t_437 = add i8 %t_436, %t_435
  %t_438 = bitcast i8* %t_21 to i8*
  store i8 %t_437, i8* %t_438
  %t_439 = zext i8 %t_431 to i9
  %t_440 = zext i8 %t_433 to i9
  %t_441 = zext i1 %flag_cf_434 to i9
  %t_442 = add i9 %t_439, %t_440
  %t_443 = add i9 %t_442, %t_441
  %t_444 = lshr i9 %t_443, 8
  %t_445 = icmp eq i8 %t_437, 0
  %t_446 = trunc i9 %t_444 to i1
  %t_447 = icmp slt i8 %t_431, 0
  %t_448 = icmp slt i8 %t_433, 0
  %t_449 = icmp slt i8 %t_437, 0
  %t_450 = xor i1 %t_447, %t_448
  %t_451 = xor i1 %t_447, %t_449
  %t_452 = and i1 %t_450, %t_451
  store i1 %t_445, i1* %zf
  store i1 %t_449, i1* %sf
  store i1 %t_446, i1* %cf
  store i1 %t_452, i1* %of
  %t_453 = bitcast i8* %t_21 to i8*
  %t_454 = load i8, i8* %t_453
  %t_455 = load i64, i64* %rax
  %t_456 = trunc i64 %t_455 to i8
  %t_457 = add i8 %t_454, %t_456
  %t_458 = bitcast i8* %t_21 to i8*
  store i8 %t_457, i8* %t_458
  %t_459 = icmp eq i8 %t_457, 0
  %t_460 = icmp slt i8 %t_457, 0
  %t_461 = icmp ult i8 %t_457, %t_454
  %t_462 = icmp slt i8 %t_454, 0
  %t_463 = icmp slt i8 %t_456, 0
  %t_464 = icmp slt i8 %t_457, 0
  %t_465 = xor i1 %t_462, %t_463
  %t_466 = xor i1 %t_462, %t_464
  %t_467 = and i1 %t_465, %t_466
  store i1 %t_459, i1* %zf
  store i1 %t_460, i1* %sf
  store i1 %t_461, i1* %cf
  store i1 %t_467, i1* %of
  %t_468 = bitcast i8* %t_21 to i8*
  %t_469 = load i8, i8* %t_468
  %t_470 = load i64, i64* %rax
  %t_471 = trunc i64 %t_470 to i8
  %t_472 = add i8 %t_469, %t_471
  %t_473 = bitcast i8* %t_21 to i8*
  store i8 %t_472, i8* %t_473
  %t_474 = icmp eq i8 %t_472, 0
  %t_475 = icmp slt i8 %t_472, 0
  %t_476 = icmp ult i8 %t_472, %t_469
  %t_477 = icmp slt i8 %t_469, 0
  %t_478 = icmp slt i8 %t_471, 0
  %t_479 = icmp slt i8 %t_472, 0
  %t_480 = xor i1 %t_477, %t_478
  %t_481 = xor i1 %t_477, %t_479
  %t_482 = and i1 %t_480, %t_481
  store i1 %t_474, i1* %zf
  store i1 %t_475, i1* %sf
  store i1 %t_476, i1* %cf
  store i1 %t_482, i1* %of
  %t_483 = load i64, i64* %rcx
  %t_484 = inttoptr i64 %t_483 to i8*
  %t_485 = bitcast i8* %t_484 to i8*
  %t_486 = load i8, i8* %t_485
  %t_487 = load i64, i64* %rax
  %t_488 = trunc i64 %t_487 to i8
  %t_489 = add i8 %t_486, %t_488
  %t_490 = bitcast i8* %t_484 to i8*
  store i8 %t_489, i8* %t_490
  %t_491 = icmp eq i8 %t_489, 0
  %t_492 = icmp slt i8 %t_489, 0
  %t_493 = icmp ult i8 %t_489, %t_486
  %t_494 = icmp slt i8 %t_486, 0
  %t_495 = icmp slt i8 %t_488, 0
  %t_496 = icmp slt i8 %t_489, 0
  %t_497 = xor i1 %t_494, %t_495
  %t_498 = xor i1 %t_494, %t_496
  %t_499 = and i1 %t_497, %t_498
  store i1 %t_491, i1* %zf
  store i1 %t_492, i1* %sf
  store i1 %t_493, i1* %cf
  store i1 %t_499, i1* %of
  %t_500 = bitcast i8* %t_21 to i8*
  %t_501 = load i8, i8* %t_500
  %t_502 = load i64, i64* %rax
  %t_503 = trunc i64 %t_502 to i8
  %t_504 = add i8 %t_501, %t_503
  %t_505 = bitcast i8* %t_21 to i8*
  store i8 %t_504, i8* %t_505
  %t_506 = icmp eq i8 %t_504, 0
  %t_507 = icmp slt i8 %t_504, 0
  %t_508 = icmp ult i8 %t_504, %t_501
  %t_509 = icmp slt i8 %t_501, 0
  %t_510 = icmp slt i8 %t_503, 0
  %t_511 = icmp slt i8 %t_504, 0
  %t_512 = xor i1 %t_509, %t_510
  %t_513 = xor i1 %t_509, %t_511
  %t_514 = and i1 %t_512, %t_513
  store i1 %t_506, i1* %zf
  store i1 %t_507, i1* %sf
  store i1 %t_508, i1* %cf
  store i1 %t_514, i1* %of
  %t_515 = inttoptr i64 0 to i8*
  %t_516 = bitcast i8* %t_515 to i8*
  %t_517 = load i8, i8* %t_516
  %t_518 = load i64, i64* %rax
  %t_519 = trunc i64 %t_518 to i8
  %t_520 = add i8 %t_517, %t_519
  %t_521 = bitcast i8* %t_515 to i8*
  store i8 %t_520, i8* %t_521
  %t_522 = icmp eq i8 %t_520, 0
  %t_523 = icmp slt i8 %t_520, 0
  %t_524 = icmp ult i8 %t_520, %t_517
  %t_525 = icmp slt i8 %t_517, 0
  %t_526 = icmp slt i8 %t_519, 0
  %t_527 = icmp slt i8 %t_520, 0
  %t_528 = xor i1 %t_525, %t_526
  %t_529 = xor i1 %t_525, %t_527
  %t_530 = and i1 %t_528, %t_529
  store i1 %t_522, i1* %zf
  store i1 %t_523, i1* %sf
  store i1 %t_524, i1* %cf
  store i1 %t_530, i1* %of
  %t_531 = bitcast i8* %t_21 to i8*
  %t_532 = load i8, i8* %t_531
  %t_533 = load i64, i64* %rax
  %t_534 = trunc i64 %t_533 to i8
  %flag_cf_535 = load i1, i1* %cf
  %t_536 = zext i1 %flag_cf_535 to i8
  %t_537 = add i8 %t_532, %t_534
  %t_538 = add i8 %t_537, %t_536
  %t_539 = bitcast i8* %t_21 to i8*
  store i8 %t_538, i8* %t_539
  %t_540 = zext i8 %t_532 to i9
  %t_541 = zext i8 %t_534 to i9
  %t_542 = zext i1 %flag_cf_535 to i9
  %t_543 = add i9 %t_540, %t_541
  %t_544 = add i9 %t_543, %t_542
  %t_545 = lshr i9 %t_544, 8
  %t_546 = icmp eq i8 %t_538, 0
  %t_547 = trunc i9 %t_545 to i1
  %t_548 = icmp slt i8 %t_532, 0
  %t_549 = icmp slt i8 %t_534, 0
  %t_550 = icmp slt i8 %t_538, 0
  %t_551 = xor i1 %t_548, %t_549
  %t_552 = xor i1 %t_548, %t_550
  %t_553 = and i1 %t_551, %t_552
  store i1 %t_546, i1* %zf
  store i1 %t_550, i1* %sf
  store i1 %t_547, i1* %cf
  store i1 %t_553, i1* %of
  %t_554 = bitcast i8* %t_21 to i8*
  %t_555 = load i8, i8* %t_554
  %t_556 = load i64, i64* %rax
  %t_557 = trunc i64 %t_556 to i8
  %t_558 = add i8 %t_555, %t_557
  %t_559 = bitcast i8* %t_21 to i8*
  store i8 %t_558, i8* %t_559
  %t_560 = icmp eq i8 %t_558, 0
  %t_561 = icmp slt i8 %t_558, 0
  %t_562 = icmp ult i8 %t_558, %t_555
  %t_563 = icmp slt i8 %t_555, 0
  %t_564 = icmp slt i8 %t_557, 0
  %t_565 = icmp slt i8 %t_558, 0
  %t_566 = xor i1 %t_563, %t_564
  %t_567 = xor i1 %t_563, %t_565
  %t_568 = and i1 %t_566, %t_567
  store i1 %t_560, i1* %zf
  store i1 %t_561, i1* %sf
  store i1 %t_562, i1* %cf
  store i1 %t_568, i1* %of
  %t_569 = bitcast i8* %t_21 to i8*
  %t_570 = load i8, i8* %t_569
  %t_571 = load i64, i64* %rax
  %t_572 = trunc i64 %t_571 to i8
  %t_573 = add i8 %t_570, %t_572
  %t_574 = bitcast i8* %t_21 to i8*
  store i8 %t_573, i8* %t_574
  %t_575 = icmp eq i8 %t_573, 0
  %t_576 = icmp slt i8 %t_573, 0
  %t_577 = icmp ult i8 %t_573, %t_570
  %t_578 = icmp slt i8 %t_570, 0
  %t_579 = icmp slt i8 %t_572, 0
  %t_580 = icmp slt i8 %t_573, 0
  %t_581 = xor i1 %t_578, %t_579
  %t_582 = xor i1 %t_578, %t_580
  %t_583 = and i1 %t_581, %t_582
  store i1 %t_575, i1* %zf
  store i1 %t_576, i1* %sf
  store i1 %t_577, i1* %cf
  store i1 %t_583, i1* %of
  %t_584 = bitcast i8* %t_21 to i8*
  %t_585 = load i8, i8* %t_584
  %t_586 = load i64, i64* %rax
  %t_587 = trunc i64 %t_586 to i8
  %t_588 = add i8 %t_585, %t_587
  %t_589 = bitcast i8* %t_21 to i8*
  store i8 %t_588, i8* %t_589
  %t_590 = icmp eq i8 %t_588, 0
  %t_591 = icmp slt i8 %t_588, 0
  %t_592 = icmp ult i8 %t_588, %t_585
  %t_593 = icmp slt i8 %t_585, 0
  %t_594 = icmp slt i8 %t_587, 0
  %t_595 = icmp slt i8 %t_588, 0
  %t_596 = xor i1 %t_593, %t_594
  %t_597 = xor i1 %t_593, %t_595
  %t_598 = and i1 %t_596, %t_597
  store i1 %t_590, i1* %zf
  store i1 %t_591, i1* %sf
  store i1 %t_592, i1* %cf
  store i1 %t_598, i1* %of
  %t_599 = bitcast i8* %t_21 to i8*
  %t_600 = load i8, i8* %t_599
  %t_601 = load i64, i64* %rax
  %t_602 = trunc i64 %t_601 to i8
  %flag_cf_603 = load i1, i1* %cf
  %t_604 = zext i1 %flag_cf_603 to i8
  %t_605 = add i8 %t_600, %t_602
  %t_606 = add i8 %t_605, %t_604
  %t_607 = bitcast i8* %t_21 to i8*
  store i8 %t_606, i8* %t_607
  %t_608 = zext i8 %t_600 to i9
  %t_609 = zext i8 %t_602 to i9
  %t_610 = zext i1 %flag_cf_603 to i9
  %t_611 = add i9 %t_608, %t_609
  %t_612 = add i9 %t_611, %t_610
  %t_613 = lshr i9 %t_612, 8
  %t_614 = icmp eq i8 %t_606, 0
  %t_615 = trunc i9 %t_613 to i1
  %t_616 = icmp slt i8 %t_600, 0
  %t_617 = icmp slt i8 %t_602, 0
  %t_618 = icmp slt i8 %t_606, 0
  %t_619 = xor i1 %t_616, %t_617
  %t_620 = xor i1 %t_616, %t_618
  %t_621 = and i1 %t_619, %t_620
  store i1 %t_614, i1* %zf
  store i1 %t_618, i1* %sf
  store i1 %t_615, i1* %cf
  store i1 %t_621, i1* %of
  %t_622 = bitcast i8* %t_21 to i8*
  %t_623 = load i8, i8* %t_622
  %t_624 = load i64, i64* %rax
  %t_625 = trunc i64 %t_624 to i8
  %t_626 = add i8 %t_623, %t_625
  %t_627 = bitcast i8* %t_21 to i8*
  store i8 %t_626, i8* %t_627
  %t_628 = icmp eq i8 %t_626, 0
  %t_629 = icmp slt i8 %t_626, 0
  %t_630 = icmp ult i8 %t_626, %t_623
  %t_631 = icmp slt i8 %t_623, 0
  %t_632 = icmp slt i8 %t_625, 0
  %t_633 = icmp slt i8 %t_626, 0
  %t_634 = xor i1 %t_631, %t_632
  %t_635 = xor i1 %t_631, %t_633
  %t_636 = and i1 %t_634, %t_635
  store i1 %t_628, i1* %zf
  store i1 %t_629, i1* %sf
  store i1 %t_630, i1* %cf
  store i1 %t_636, i1* %of
  %t_637 = bitcast i8* %t_21 to i8*
  %t_638 = load i8, i8* %t_637
  %t_639 = load i64, i64* %rax
  %t_640 = trunc i64 %t_639 to i8
  %t_641 = add i8 %t_638, %t_640
  %t_642 = bitcast i8* %t_21 to i8*
  store i8 %t_641, i8* %t_642
  %t_643 = icmp eq i8 %t_641, 0
  %t_644 = icmp slt i8 %t_641, 0
  %t_645 = icmp ult i8 %t_641, %t_638
  %t_646 = icmp slt i8 %t_638, 0
  %t_647 = icmp slt i8 %t_640, 0
  %t_648 = icmp slt i8 %t_641, 0
  %t_649 = xor i1 %t_646, %t_647
  %t_650 = xor i1 %t_646, %t_648
  %t_651 = and i1 %t_649, %t_650
  store i1 %t_643, i1* %zf
  store i1 %t_644, i1* %sf
  store i1 %t_645, i1* %cf
  store i1 %t_651, i1* %of
  %t_652 = bitcast i8* %t_21 to i8*
  %t_653 = load i8, i8* %t_652
  %t_654 = load i64, i64* %rax
  %t_655 = trunc i64 %t_654 to i8
  %t_656 = add i8 %t_653, %t_655
  %t_657 = bitcast i8* %t_21 to i8*
  store i8 %t_656, i8* %t_657
  %t_658 = icmp eq i8 %t_656, 0
  %t_659 = icmp slt i8 %t_656, 0
  %t_660 = icmp ult i8 %t_656, %t_653
  %t_661 = icmp slt i8 %t_653, 0
  %t_662 = icmp slt i8 %t_655, 0
  %t_663 = icmp slt i8 %t_656, 0
  %t_664 = xor i1 %t_661, %t_662
  %t_665 = xor i1 %t_661, %t_663
  %t_666 = and i1 %t_664, %t_665
  store i1 %t_658, i1* %zf
  store i1 %t_659, i1* %sf
  store i1 %t_660, i1* %cf
  store i1 %t_666, i1* %of
  %t_667 = bitcast i8* %t_21 to i8*
  %t_668 = load i8, i8* %t_667
  %t_669 = load i64, i64* %rax
  %t_670 = trunc i64 %t_669 to i8
  %flag_cf_671 = load i1, i1* %cf
  %t_672 = zext i1 %flag_cf_671 to i8
  %t_673 = add i8 %t_668, %t_670
  %t_674 = add i8 %t_673, %t_672
  %t_675 = bitcast i8* %t_21 to i8*
  store i8 %t_674, i8* %t_675
  %t_676 = zext i8 %t_668 to i9
  %t_677 = zext i8 %t_670 to i9
  %t_678 = zext i1 %flag_cf_671 to i9
  %t_679 = add i9 %t_676, %t_677
  %t_680 = add i9 %t_679, %t_678
  %t_681 = lshr i9 %t_680, 8
  %t_682 = icmp eq i8 %t_674, 0
  %t_683 = trunc i9 %t_681 to i1
  %t_684 = icmp slt i8 %t_668, 0
  %t_685 = icmp slt i8 %t_670, 0
  %t_686 = icmp slt i8 %t_674, 0
  %t_687 = xor i1 %t_684, %t_685
  %t_688 = xor i1 %t_684, %t_686
  %t_689 = and i1 %t_687, %t_688
  store i1 %t_682, i1* %zf
  store i1 %t_686, i1* %sf
  store i1 %t_683, i1* %cf
  store i1 %t_689, i1* %of
  %t_690 = bitcast i8* %t_21 to i8*
  %t_691 = load i8, i8* %t_690
  %t_692 = load i64, i64* %rax
  %t_693 = trunc i64 %t_692 to i8
  %t_694 = add i8 %t_691, %t_693
  %t_695 = bitcast i8* %t_21 to i8*
  store i8 %t_694, i8* %t_695
  %t_696 = icmp eq i8 %t_694, 0
  %t_697 = icmp slt i8 %t_694, 0
  %t_698 = icmp ult i8 %t_694, %t_691
  %t_699 = icmp slt i8 %t_691, 0
  %t_700 = icmp slt i8 %t_693, 0
  %t_701 = icmp slt i8 %t_694, 0
  %t_702 = xor i1 %t_699, %t_700
  %t_703 = xor i1 %t_699, %t_701
  %t_704 = and i1 %t_702, %t_703
  store i1 %t_696, i1* %zf
  store i1 %t_697, i1* %sf
  store i1 %t_698, i1* %cf
  store i1 %t_704, i1* %of
  %t_705 = bitcast i8* %t_21 to i8*
  %t_706 = load i8, i8* %t_705
  %t_707 = load i64, i64* %rax
  %t_708 = trunc i64 %t_707 to i8
  %t_709 = add i8 %t_706, %t_708
  %t_710 = bitcast i8* %t_21 to i8*
  store i8 %t_709, i8* %t_710
  %t_711 = icmp eq i8 %t_709, 0
  %t_712 = icmp slt i8 %t_709, 0
  %t_713 = icmp ult i8 %t_709, %t_706
  %t_714 = icmp slt i8 %t_706, 0
  %t_715 = icmp slt i8 %t_708, 0
  %t_716 = icmp slt i8 %t_709, 0
  %t_717 = xor i1 %t_714, %t_715
  %t_718 = xor i1 %t_714, %t_716
  %t_719 = and i1 %t_717, %t_718
  store i1 %t_711, i1* %zf
  store i1 %t_712, i1* %sf
  store i1 %t_713, i1* %cf
  store i1 %t_719, i1* %of
  %t_720 = inttoptr i64 0 to i8*
  %t_721 = bitcast i8* %t_720 to i8*
  %t_722 = load i8, i8* %t_721
  %t_723 = trunc i64 0 to i8
  %t_724 = add i8 %t_722, %t_723
  %t_725 = bitcast i8* %t_720 to i8*
  store i8 %t_724, i8* %t_725
  %t_726 = icmp eq i8 %t_724, 0
  %t_727 = icmp slt i8 %t_724, 0
  %t_728 = icmp ult i8 %t_724, %t_722
  %t_729 = icmp slt i8 %t_722, 0
  %t_730 = icmp slt i8 %t_723, 0
  %t_731 = icmp slt i8 %t_724, 0
  %t_732 = xor i1 %t_729, %t_730
  %t_733 = xor i1 %t_729, %t_731
  %t_734 = and i1 %t_732, %t_733
  store i1 %t_726, i1* %zf
  store i1 %t_727, i1* %sf
  store i1 %t_728, i1* %cf
  store i1 %t_734, i1* %of
  %t_735 = bitcast i8* %t_21 to i8*
  %t_736 = load i8, i8* %t_735
  %t_737 = load i64, i64* %rax
  %t_738 = trunc i64 %t_737 to i8
  %t_739 = add i8 %t_736, %t_738
  %t_740 = bitcast i8* %t_21 to i8*
  store i8 %t_739, i8* %t_740
  %t_741 = icmp eq i8 %t_739, 0
  %t_742 = icmp slt i8 %t_739, 0
  %t_743 = icmp ult i8 %t_739, %t_736
  %t_744 = icmp slt i8 %t_736, 0
  %t_745 = icmp slt i8 %t_738, 0
  %t_746 = icmp slt i8 %t_739, 0
  %t_747 = xor i1 %t_744, %t_745
  %t_748 = xor i1 %t_744, %t_746
  %t_749 = and i1 %t_747, %t_748
  store i1 %t_741, i1* %zf
  store i1 %t_742, i1* %sf
  store i1 %t_743, i1* %cf
  store i1 %t_749, i1* %of
  %t_750 = bitcast i8* %t_720 to i8*
  %t_751 = load i8, i8* %t_750
  %t_752 = trunc i64 0 to i8
  %t_753 = add i8 %t_751, %t_752
  %t_754 = bitcast i8* %t_720 to i8*
  store i8 %t_753, i8* %t_754
  %t_755 = icmp eq i8 %t_753, 0
  %t_756 = icmp slt i8 %t_753, 0
  %t_757 = icmp ult i8 %t_753, %t_751
  %t_758 = icmp slt i8 %t_751, 0
  %t_759 = icmp slt i8 %t_752, 0
  %t_760 = icmp slt i8 %t_753, 0
  %t_761 = xor i1 %t_758, %t_759
  %t_762 = xor i1 %t_758, %t_760
  %t_763 = and i1 %t_761, %t_762
  store i1 %t_755, i1* %zf
  store i1 %t_756, i1* %sf
  store i1 %t_757, i1* %cf
  store i1 %t_763, i1* %of
  %t_764 = bitcast i8* %t_21 to i8*
  %t_765 = load i8, i8* %t_764
  %t_766 = load i64, i64* %rax
  %t_767 = trunc i64 %t_766 to i8
  %t_768 = add i8 %t_765, %t_767
  %t_769 = bitcast i8* %t_21 to i8*
  store i8 %t_768, i8* %t_769
  %t_770 = icmp eq i8 %t_768, 0
  %t_771 = icmp slt i8 %t_768, 0
  %t_772 = icmp ult i8 %t_768, %t_765
  %t_773 = icmp slt i8 %t_765, 0
  %t_774 = icmp slt i8 %t_767, 0
  %t_775 = icmp slt i8 %t_768, 0
  %t_776 = xor i1 %t_773, %t_774
  %t_777 = xor i1 %t_773, %t_775
  %t_778 = and i1 %t_776, %t_777
  store i1 %t_770, i1* %zf
  store i1 %t_771, i1* %sf
  store i1 %t_772, i1* %cf
  store i1 %t_778, i1* %of
  %t_779 = bitcast i8* %t_21 to i8*
  %t_780 = load i8, i8* %t_779
  %t_781 = load i64, i64* %rax
  %t_782 = trunc i64 %t_781 to i8
  %t_783 = add i8 %t_780, %t_782
  %t_784 = bitcast i8* %t_21 to i8*
  store i8 %t_783, i8* %t_784
  %t_785 = icmp eq i8 %t_783, 0
  %t_786 = icmp slt i8 %t_783, 0
  %t_787 = icmp ult i8 %t_783, %t_780
  %t_788 = icmp slt i8 %t_780, 0
  %t_789 = icmp slt i8 %t_782, 0
  %t_790 = icmp slt i8 %t_783, 0
  %t_791 = xor i1 %t_788, %t_789
  %t_792 = xor i1 %t_788, %t_790
  %t_793 = and i1 %t_791, %t_792
  store i1 %t_785, i1* %zf
  store i1 %t_786, i1* %sf
  store i1 %t_787, i1* %cf
  store i1 %t_793, i1* %of
  %t_794 = bitcast i8* %t_21 to i8*
  %t_795 = load i8, i8* %t_794
  %t_796 = load i64, i64* %rax
  %t_797 = trunc i64 %t_796 to i8
  %flag_cf_798 = load i1, i1* %cf
  %t_799 = zext i1 %flag_cf_798 to i8
  %t_800 = add i8 %t_795, %t_797
  %t_801 = add i8 %t_800, %t_799
  %t_802 = bitcast i8* %t_21 to i8*
  store i8 %t_801, i8* %t_802
  %t_803 = zext i8 %t_795 to i9
  %t_804 = zext i8 %t_797 to i9
  %t_805 = zext i1 %flag_cf_798 to i9
  %t_806 = add i9 %t_803, %t_804
  %t_807 = add i9 %t_806, %t_805
  %t_808 = lshr i9 %t_807, 8
  %t_809 = icmp eq i8 %t_801, 0
  %t_810 = trunc i9 %t_808 to i1
  %t_811 = icmp slt i8 %t_795, 0
  %t_812 = icmp slt i8 %t_797, 0
  %t_813 = icmp slt i8 %t_801, 0
  %t_814 = xor i1 %t_811, %t_812
  %t_815 = xor i1 %t_811, %t_813
  %t_816 = and i1 %t_814, %t_815
  store i1 %t_809, i1* %zf
  store i1 %t_813, i1* %sf
  store i1 %t_810, i1* %cf
  store i1 %t_816, i1* %of
  %t_817 = bitcast i8* %t_21 to i8*
  %t_818 = load i8, i8* %t_817
  %t_819 = load i64, i64* %rax
  %t_820 = trunc i64 %t_819 to i8
  %t_821 = add i8 %t_818, %t_820
  %t_822 = bitcast i8* %t_21 to i8*
  store i8 %t_821, i8* %t_822
  %t_823 = icmp eq i8 %t_821, 0
  %t_824 = icmp slt i8 %t_821, 0
  %t_825 = icmp ult i8 %t_821, %t_818
  %t_826 = icmp slt i8 %t_818, 0
  %t_827 = icmp slt i8 %t_820, 0
  %t_828 = icmp slt i8 %t_821, 0
  %t_829 = xor i1 %t_826, %t_827
  %t_830 = xor i1 %t_826, %t_828
  %t_831 = and i1 %t_829, %t_830
  store i1 %t_823, i1* %zf
  store i1 %t_824, i1* %sf
  store i1 %t_825, i1* %cf
  store i1 %t_831, i1* %of
  %t_832 = bitcast i8* %t_21 to i8*
  %t_833 = load i8, i8* %t_832
  %t_834 = load i64, i64* %rax
  %t_835 = trunc i64 %t_834 to i8
  %t_836 = add i8 %t_833, %t_835
  %t_837 = bitcast i8* %t_21 to i8*
  store i8 %t_836, i8* %t_837
  %t_838 = icmp eq i8 %t_836, 0
  %t_839 = icmp slt i8 %t_836, 0
  %t_840 = icmp ult i8 %t_836, %t_833
  %t_841 = icmp slt i8 %t_833, 0
  %t_842 = icmp slt i8 %t_835, 0
  %t_843 = icmp slt i8 %t_836, 0
  %t_844 = xor i1 %t_841, %t_842
  %t_845 = xor i1 %t_841, %t_843
  %t_846 = and i1 %t_844, %t_845
  store i1 %t_838, i1* %zf
  store i1 %t_839, i1* %sf
  store i1 %t_840, i1* %cf
  store i1 %t_846, i1* %of
  %t_847 = bitcast i8* %t_484 to i8*
  %t_848 = load i8, i8* %t_847
  %t_849 = load i64, i64* %rax
  %t_850 = trunc i64 %t_849 to i8
  %t_851 = add i8 %t_848, %t_850
  %t_852 = bitcast i8* %t_484 to i8*
  store i8 %t_851, i8* %t_852
  %t_853 = icmp eq i8 %t_851, 0
  %t_854 = icmp slt i8 %t_851, 0
  %t_855 = icmp ult i8 %t_851, %t_848
  %t_856 = icmp slt i8 %t_848, 0
  %t_857 = icmp slt i8 %t_850, 0
  %t_858 = icmp slt i8 %t_851, 0
  %t_859 = xor i1 %t_856, %t_857
  %t_860 = xor i1 %t_856, %t_858
  %t_861 = and i1 %t_859, %t_860
  store i1 %t_853, i1* %zf
  store i1 %t_854, i1* %sf
  store i1 %t_855, i1* %cf
  store i1 %t_861, i1* %of
  %t_862 = bitcast i8* %t_21 to i8*
  %t_863 = load i8, i8* %t_862
  %t_864 = load i64, i64* %rax
  %t_865 = trunc i64 %t_864 to i8
  %t_866 = add i8 %t_863, %t_865
  %t_867 = bitcast i8* %t_21 to i8*
  store i8 %t_866, i8* %t_867
  %t_868 = icmp eq i8 %t_866, 0
  %t_869 = icmp slt i8 %t_866, 0
  %t_870 = icmp ult i8 %t_866, %t_863
  %t_871 = icmp slt i8 %t_863, 0
  %t_872 = icmp slt i8 %t_865, 0
  %t_873 = icmp slt i8 %t_866, 0
  %t_874 = xor i1 %t_871, %t_872
  %t_875 = xor i1 %t_871, %t_873
  %t_876 = and i1 %t_874, %t_875
  store i1 %t_868, i1* %zf
  store i1 %t_869, i1* %sf
  store i1 %t_870, i1* %cf
  store i1 %t_876, i1* %of
  %t_877 = load i64, i64* %rax
  %t_878 = load i64, i64* %rax
  %t_879 = add i64 %t_877, %t_878
  %t_880 = inttoptr i64 %t_879 to i8*
  %t_881 = bitcast i8* %t_880 to i8*
  %t_882 = load i8, i8* %t_881
  %t_883 = load i64, i64* %rax
  %t_884 = trunc i64 %t_883 to i8
  %t_885 = add i8 %t_882, %t_884
  %t_886 = bitcast i8* %t_880 to i8*
  store i8 %t_885, i8* %t_886
  %t_887 = icmp eq i8 %t_885, 0
  %t_888 = icmp slt i8 %t_885, 0
  %t_889 = icmp ult i8 %t_885, %t_882
  %t_890 = icmp slt i8 %t_882, 0
  %t_891 = icmp slt i8 %t_884, 0
  %t_892 = icmp slt i8 %t_885, 0
  %t_893 = xor i1 %t_890, %t_891
  %t_894 = xor i1 %t_890, %t_892
  %t_895 = and i1 %t_893, %t_894
  store i1 %t_887, i1* %zf
  store i1 %t_888, i1* %sf
  store i1 %t_889, i1* %cf
  store i1 %t_895, i1* %of
  %t_896 = bitcast i8* %t_21 to i8*
  %t_897 = load i8, i8* %t_896
  %t_898 = load i64, i64* %rax
  %t_899 = trunc i64 %t_898 to i8
  %t_900 = add i8 %t_897, %t_899
  %t_901 = bitcast i8* %t_21 to i8*
  store i8 %t_900, i8* %t_901
  %t_902 = icmp eq i8 %t_900, 0
  %t_903 = icmp slt i8 %t_900, 0
  %t_904 = icmp ult i8 %t_900, %t_897
  %t_905 = icmp slt i8 %t_897, 0
  %t_906 = icmp slt i8 %t_899, 0
  %t_907 = icmp slt i8 %t_900, 0
  %t_908 = xor i1 %t_905, %t_906
  %t_909 = xor i1 %t_905, %t_907
  %t_910 = and i1 %t_908, %t_909
  store i1 %t_902, i1* %zf
  store i1 %t_903, i1* %sf
  store i1 %t_904, i1* %cf
  store i1 %t_910, i1* %of
  %t_911 = bitcast i8* %t_21 to i8*
  %t_912 = load i8, i8* %t_911
  %t_913 = trunc i64 0 to i8
  %t_914 = add i8 %t_912, %t_913
  %t_915 = bitcast i8* %t_21 to i8*
  store i8 %t_914, i8* %t_915
  %t_916 = icmp eq i8 %t_914, 0
  %t_917 = icmp slt i8 %t_914, 0
  %t_918 = icmp ult i8 %t_914, %t_912
  %t_919 = icmp slt i8 %t_912, 0
  %t_920 = icmp slt i8 %t_913, 0
  %t_921 = icmp slt i8 %t_914, 0
  %t_922 = xor i1 %t_919, %t_920
  %t_923 = xor i1 %t_919, %t_921
  %t_924 = and i1 %t_922, %t_923
  store i1 %t_916, i1* %zf
  store i1 %t_917, i1* %sf
  store i1 %t_918, i1* %cf
  store i1 %t_924, i1* %of
  %t_925 = bitcast i8* %t_21 to i8*
  %t_926 = load i8, i8* %t_925
  %t_927 = load i64, i64* %rax
  %t_928 = trunc i64 %t_927 to i8
  %t_929 = add i8 %t_926, %t_928
  %t_930 = bitcast i8* %t_21 to i8*
  store i8 %t_929, i8* %t_930
  %t_931 = icmp eq i8 %t_929, 0
  %t_932 = icmp slt i8 %t_929, 0
  %t_933 = icmp ult i8 %t_929, %t_926
  %t_934 = icmp slt i8 %t_926, 0
  %t_935 = icmp slt i8 %t_928, 0
  %t_936 = icmp slt i8 %t_929, 0
  %t_937 = xor i1 %t_934, %t_935
  %t_938 = xor i1 %t_934, %t_936
  %t_939 = and i1 %t_937, %t_938
  store i1 %t_931, i1* %zf
  store i1 %t_932, i1* %sf
  store i1 %t_933, i1* %cf
  store i1 %t_939, i1* %of
  %t_940 = bitcast i8* %t_21 to i8*
  %t_941 = load i8, i8* %t_940
  %t_942 = load i64, i64* %rax
  %t_943 = trunc i64 %t_942 to i8
  %t_944 = add i8 %t_941, %t_943
  %t_945 = bitcast i8* %t_21 to i8*
  store i8 %t_944, i8* %t_945
  %t_946 = icmp eq i8 %t_944, 0
  %t_947 = icmp slt i8 %t_944, 0
  %t_948 = icmp ult i8 %t_944, %t_941
  %t_949 = icmp slt i8 %t_941, 0
  %t_950 = icmp slt i8 %t_943, 0
  %t_951 = icmp slt i8 %t_944, 0
  %t_952 = xor i1 %t_949, %t_950
  %t_953 = xor i1 %t_949, %t_951
  %t_954 = and i1 %t_952, %t_953
  store i1 %t_946, i1* %zf
  store i1 %t_947, i1* %sf
  store i1 %t_948, i1* %cf
  store i1 %t_954, i1* %of
  %t_955 = bitcast i8* %t_21 to i8*
  %t_956 = load i8, i8* %t_955
  %t_957 = load i64, i64* %rax
  %t_958 = trunc i64 %t_957 to i8
  %t_959 = add i8 %t_956, %t_958
  %t_960 = bitcast i8* %t_21 to i8*
  store i8 %t_959, i8* %t_960
  %t_961 = icmp eq i8 %t_959, 0
  %t_962 = icmp slt i8 %t_959, 0
  %t_963 = icmp ult i8 %t_959, %t_956
  %t_964 = icmp slt i8 %t_956, 0
  %t_965 = icmp slt i8 %t_958, 0
  %t_966 = icmp slt i8 %t_959, 0
  %t_967 = xor i1 %t_964, %t_965
  %t_968 = xor i1 %t_964, %t_966
  %t_969 = and i1 %t_967, %t_968
  store i1 %t_961, i1* %zf
  store i1 %t_962, i1* %sf
  store i1 %t_963, i1* %cf
  store i1 %t_969, i1* %of
  %t_970 = bitcast i8* %t_21 to i8*
  %t_971 = load i8, i8* %t_970
  %t_972 = trunc i64 0 to i8
  %t_973 = add i8 %t_971, %t_972
  %t_974 = bitcast i8* %t_21 to i8*
  store i8 %t_973, i8* %t_974
  %t_975 = icmp eq i8 %t_973, 0
  %t_976 = icmp slt i8 %t_973, 0
  %t_977 = icmp ult i8 %t_973, %t_971
  %t_978 = icmp slt i8 %t_971, 0
  %t_979 = icmp slt i8 %t_972, 0
  %t_980 = icmp slt i8 %t_973, 0
  %t_981 = xor i1 %t_978, %t_979
  %t_982 = xor i1 %t_978, %t_980
  %t_983 = and i1 %t_981, %t_982
  store i1 %t_975, i1* %zf
  store i1 %t_976, i1* %sf
  store i1 %t_977, i1* %cf
  store i1 %t_983, i1* %of
  %t_984 = bitcast i8* %t_21 to i8*
  %t_985 = load i8, i8* %t_984
  %t_986 = load i64, i64* %rax
  %t_987 = trunc i64 %t_986 to i8
  %t_988 = add i8 %t_985, %t_987
  %t_989 = bitcast i8* %t_21 to i8*
  store i8 %t_988, i8* %t_989
  %t_990 = icmp eq i8 %t_988, 0
  %t_991 = icmp slt i8 %t_988, 0
  %t_992 = icmp ult i8 %t_988, %t_985
  %t_993 = icmp slt i8 %t_985, 0
  %t_994 = icmp slt i8 %t_987, 0
  %t_995 = icmp slt i8 %t_988, 0
  %t_996 = xor i1 %t_993, %t_994
  %t_997 = xor i1 %t_993, %t_995
  %t_998 = and i1 %t_996, %t_997
  store i1 %t_990, i1* %zf
  store i1 %t_991, i1* %sf
  store i1 %t_992, i1* %cf
  store i1 %t_998, i1* %of
  %t_999 = bitcast i8* %t_21 to i8*
  %t_1000 = load i8, i8* %t_999
  %t_1001 = load i64, i64* %rax
  %t_1002 = trunc i64 %t_1001 to i8
  %t_1003 = add i8 %t_1000, %t_1002
  %t_1004 = bitcast i8* %t_21 to i8*
  store i8 %t_1003, i8* %t_1004
  %t_1005 = icmp eq i8 %t_1003, 0
  %t_1006 = icmp slt i8 %t_1003, 0
  %t_1007 = icmp ult i8 %t_1003, %t_1000
  %t_1008 = icmp slt i8 %t_1000, 0
  %t_1009 = icmp slt i8 %t_1002, 0
  %t_1010 = icmp slt i8 %t_1003, 0
  %t_1011 = xor i1 %t_1008, %t_1009
  %t_1012 = xor i1 %t_1008, %t_1010
  %t_1013 = and i1 %t_1011, %t_1012
  store i1 %t_1005, i1* %zf
  store i1 %t_1006, i1* %sf
  store i1 %t_1007, i1* %cf
  store i1 %t_1013, i1* %of
  %t_1014 = bitcast i8* %t_21 to i8*
  %t_1015 = load i8, i8* %t_1014
  %t_1016 = load i64, i64* %rax
  %t_1017 = trunc i64 %t_1016 to i8
  %t_1018 = add i8 %t_1015, %t_1017
  %t_1019 = bitcast i8* %t_21 to i8*
  store i8 %t_1018, i8* %t_1019
  %t_1020 = icmp eq i8 %t_1018, 0
  %t_1021 = icmp slt i8 %t_1018, 0
  %t_1022 = icmp ult i8 %t_1018, %t_1015
  %t_1023 = icmp slt i8 %t_1015, 0
  %t_1024 = icmp slt i8 %t_1017, 0
  %t_1025 = icmp slt i8 %t_1018, 0
  %t_1026 = xor i1 %t_1023, %t_1024
  %t_1027 = xor i1 %t_1023, %t_1025
  %t_1028 = and i1 %t_1026, %t_1027
  store i1 %t_1020, i1* %zf
  store i1 %t_1021, i1* %sf
  store i1 %t_1022, i1* %cf
  store i1 %t_1028, i1* %of
  %t_1029 = bitcast i8* %t_21 to i8*
  %t_1030 = load i8, i8* %t_1029
  %t_1031 = trunc i64 0 to i8
  %t_1032 = add i8 %t_1030, %t_1031
  %t_1033 = bitcast i8* %t_21 to i8*
  store i8 %t_1032, i8* %t_1033
  %t_1034 = icmp eq i8 %t_1032, 0
  %t_1035 = icmp slt i8 %t_1032, 0
  %t_1036 = icmp ult i8 %t_1032, %t_1030
  %t_1037 = icmp slt i8 %t_1030, 0
  %t_1038 = icmp slt i8 %t_1031, 0
  %t_1039 = icmp slt i8 %t_1032, 0
  %t_1040 = xor i1 %t_1037, %t_1038
  %t_1041 = xor i1 %t_1037, %t_1039
  %t_1042 = and i1 %t_1040, %t_1041
  store i1 %t_1034, i1* %zf
  store i1 %t_1035, i1* %sf
  store i1 %t_1036, i1* %cf
  store i1 %t_1042, i1* %of
  %t_1043 = bitcast i8* %t_21 to i8*
  %t_1044 = load i8, i8* %t_1043
  %t_1045 = load i64, i64* %rax
  %t_1046 = trunc i64 %t_1045 to i8
  %t_1047 = add i8 %t_1044, %t_1046
  %t_1048 = bitcast i8* %t_21 to i8*
  store i8 %t_1047, i8* %t_1048
  %t_1049 = icmp eq i8 %t_1047, 0
  %t_1050 = icmp slt i8 %t_1047, 0
  %t_1051 = icmp ult i8 %t_1047, %t_1044
  %t_1052 = icmp slt i8 %t_1044, 0
  %t_1053 = icmp slt i8 %t_1046, 0
  %t_1054 = icmp slt i8 %t_1047, 0
  %t_1055 = xor i1 %t_1052, %t_1053
  %t_1056 = xor i1 %t_1052, %t_1054
  %t_1057 = and i1 %t_1055, %t_1056
  store i1 %t_1049, i1* %zf
  store i1 %t_1050, i1* %sf
  store i1 %t_1051, i1* %cf
  store i1 %t_1057, i1* %of
  %t_1058 = bitcast i8* %t_21 to i8*
  %t_1059 = load i8, i8* %t_1058
  %t_1060 = load i64, i64* %rax
  %t_1061 = trunc i64 %t_1060 to i8
  %t_1062 = add i8 %t_1059, %t_1061
  %t_1063 = bitcast i8* %t_21 to i8*
  store i8 %t_1062, i8* %t_1063
  %t_1064 = icmp eq i8 %t_1062, 0
  %t_1065 = icmp slt i8 %t_1062, 0
  %t_1066 = icmp ult i8 %t_1062, %t_1059
  %t_1067 = icmp slt i8 %t_1059, 0
  %t_1068 = icmp slt i8 %t_1061, 0
  %t_1069 = icmp slt i8 %t_1062, 0
  %t_1070 = xor i1 %t_1067, %t_1068
  %t_1071 = xor i1 %t_1067, %t_1069
  %t_1072 = and i1 %t_1070, %t_1071
  store i1 %t_1064, i1* %zf
  store i1 %t_1065, i1* %sf
  store i1 %t_1066, i1* %cf
  store i1 %t_1072, i1* %of
  %t_1073 = bitcast i8* %t_21 to i8*
  %t_1074 = load i8, i8* %t_1073
  %t_1075 = load i64, i64* %rax
  %t_1076 = trunc i64 %t_1075 to i8
  %t_1077 = add i8 %t_1074, %t_1076
  %t_1078 = bitcast i8* %t_21 to i8*
  store i8 %t_1077, i8* %t_1078
  %t_1079 = icmp eq i8 %t_1077, 0
  %t_1080 = icmp slt i8 %t_1077, 0
  %t_1081 = icmp ult i8 %t_1077, %t_1074
  %t_1082 = icmp slt i8 %t_1074, 0
  %t_1083 = icmp slt i8 %t_1076, 0
  %t_1084 = icmp slt i8 %t_1077, 0
  %t_1085 = xor i1 %t_1082, %t_1083
  %t_1086 = xor i1 %t_1082, %t_1084
  %t_1087 = and i1 %t_1085, %t_1086
  store i1 %t_1079, i1* %zf
  store i1 %t_1080, i1* %sf
  store i1 %t_1081, i1* %cf
  store i1 %t_1087, i1* %of
  %t_1088 = bitcast i8* %t_21 to i32*
  %t_1089 = load i32, i32* %t_1088
  %t_1090 = load i64, i64* %r8
  %t_1091 = trunc i64 %t_1090 to i32
  %t_1092 = add i32 %t_1089, %t_1091
  %t_1093 = bitcast i8* %t_21 to i32*
  store i32 %t_1092, i32* %t_1093
  %t_1094 = icmp eq i32 %t_1092, 0
  %t_1095 = icmp slt i32 %t_1092, 0
  %t_1096 = icmp ult i32 %t_1092, %t_1089
  %t_1097 = icmp slt i32 %t_1089, 0
  %t_1098 = icmp slt i32 %t_1091, 0
  %t_1099 = icmp slt i32 %t_1092, 0
  %t_1100 = xor i1 %t_1097, %t_1098
  %t_1101 = xor i1 %t_1097, %t_1099
  %t_1102 = and i1 %t_1100, %t_1101
  store i1 %t_1094, i1* %zf
  store i1 %t_1095, i1* %sf
  store i1 %t_1096, i1* %cf
  store i1 %t_1102, i1* %of
  %t_1103 = bitcast i8* %t_21 to i8*
  %t_1104 = load i8, i8* %t_1103
  %t_1105 = load i64, i64* %rax
  %t_1106 = trunc i64 %t_1105 to i8
  %t_1107 = add i8 %t_1104, %t_1106
  %t_1108 = bitcast i8* %t_21 to i8*
  store i8 %t_1107, i8* %t_1108
  %t_1109 = icmp eq i8 %t_1107, 0
  %t_1110 = icmp slt i8 %t_1107, 0
  %t_1111 = icmp ult i8 %t_1107, %t_1104
  %t_1112 = icmp slt i8 %t_1104, 0
  %t_1113 = icmp slt i8 %t_1106, 0
  %t_1114 = icmp slt i8 %t_1107, 0
  %t_1115 = xor i1 %t_1112, %t_1113
  %t_1116 = xor i1 %t_1112, %t_1114
  %t_1117 = and i1 %t_1115, %t_1116
  store i1 %t_1109, i1* %zf
  store i1 %t_1110, i1* %sf
  store i1 %t_1111, i1* %cf
  store i1 %t_1117, i1* %of
  %t_1118 = bitcast i8* %t_21 to i8*
  %t_1119 = load i8, i8* %t_1118
  %t_1120 = load i64, i64* %rax
  %t_1121 = trunc i64 %t_1120 to i8
  %t_1122 = add i8 %t_1119, %t_1121
  %t_1123 = bitcast i8* %t_21 to i8*
  store i8 %t_1122, i8* %t_1123
  %t_1124 = icmp eq i8 %t_1122, 0
  %t_1125 = icmp slt i8 %t_1122, 0
  %t_1126 = icmp ult i8 %t_1122, %t_1119
  %t_1127 = icmp slt i8 %t_1119, 0
  %t_1128 = icmp slt i8 %t_1121, 0
  %t_1129 = icmp slt i8 %t_1122, 0
  %t_1130 = xor i1 %t_1127, %t_1128
  %t_1131 = xor i1 %t_1127, %t_1129
  %t_1132 = and i1 %t_1130, %t_1131
  store i1 %t_1124, i1* %zf
  store i1 %t_1125, i1* %sf
  store i1 %t_1126, i1* %cf
  store i1 %t_1132, i1* %of
  %t_1133 = load i64, i64* %rcx
  %t_1134 = load i64, i64* %rax
  %t_1135 = add i64 %t_1133, %t_1134
  %t_1136 = inttoptr i64 %t_1135 to i8*
  %t_1137 = bitcast i8* %t_1136 to i8*
  %t_1138 = load i8, i8* %t_1137
  %t_1139 = load i64, i64* %rax
  %t_1140 = trunc i64 %t_1139 to i8
  %t_1141 = add i8 %t_1138, %t_1140
  %t_1142 = bitcast i8* %t_1136 to i8*
  store i8 %t_1141, i8* %t_1142
  %t_1143 = icmp eq i8 %t_1141, 0
  %t_1144 = icmp slt i8 %t_1141, 0
  %t_1145 = icmp ult i8 %t_1141, %t_1138
  %t_1146 = icmp slt i8 %t_1138, 0
  %t_1147 = icmp slt i8 %t_1140, 0
  %t_1148 = icmp slt i8 %t_1141, 0
  %t_1149 = xor i1 %t_1146, %t_1147
  %t_1150 = xor i1 %t_1146, %t_1148
  %t_1151 = and i1 %t_1149, %t_1150
  store i1 %t_1143, i1* %zf
  store i1 %t_1144, i1* %sf
  store i1 %t_1145, i1* %cf
  store i1 %t_1151, i1* %of
  %t_1152 = bitcast i8* %t_21 to i8*
  %t_1153 = load i8, i8* %t_1152
  %t_1154 = load i64, i64* %rax
  %t_1155 = trunc i64 %t_1154 to i8
  %t_1156 = add i8 %t_1153, %t_1155
  %t_1157 = bitcast i8* %t_21 to i8*
  store i8 %t_1156, i8* %t_1157
  %t_1158 = icmp eq i8 %t_1156, 0
  %t_1159 = icmp slt i8 %t_1156, 0
  %t_1160 = icmp ult i8 %t_1156, %t_1153
  %t_1161 = icmp slt i8 %t_1153, 0
  %t_1162 = icmp slt i8 %t_1155, 0
  %t_1163 = icmp slt i8 %t_1156, 0
  %t_1164 = xor i1 %t_1161, %t_1162
  %t_1165 = xor i1 %t_1161, %t_1163
  %t_1166 = and i1 %t_1164, %t_1165
  store i1 %t_1158, i1* %zf
  store i1 %t_1159, i1* %sf
  store i1 %t_1160, i1* %cf
  store i1 %t_1166, i1* %of
  %t_1167 = bitcast i8* %t_21 to i8*
  %t_1168 = load i8, i8* %t_1167
  %t_1169 = load i64, i64* %rax
  %t_1170 = trunc i64 %t_1169 to i8
  %t_1171 = add i8 %t_1168, %t_1170
  %t_1172 = bitcast i8* %t_21 to i8*
  store i8 %t_1171, i8* %t_1172
  %t_1173 = icmp eq i8 %t_1171, 0
  %t_1174 = icmp slt i8 %t_1171, 0
  %t_1175 = icmp ult i8 %t_1171, %t_1168
  %t_1176 = icmp slt i8 %t_1168, 0
  %t_1177 = icmp slt i8 %t_1170, 0
  %t_1178 = icmp slt i8 %t_1171, 0
  %t_1179 = xor i1 %t_1176, %t_1177
  %t_1180 = xor i1 %t_1176, %t_1178
  %t_1181 = and i1 %t_1179, %t_1180
  store i1 %t_1173, i1* %zf
  store i1 %t_1174, i1* %sf
  store i1 %t_1175, i1* %cf
  store i1 %t_1181, i1* %of
  %t_1182 = bitcast i8* %t_21 to i8*
  %t_1183 = load i8, i8* %t_1182
  %t_1184 = load i64, i64* %rax
  %t_1185 = trunc i64 %t_1184 to i8
  %t_1186 = add i8 %t_1183, %t_1185
  %t_1187 = bitcast i8* %t_21 to i8*
  store i8 %t_1186, i8* %t_1187
  %t_1188 = icmp eq i8 %t_1186, 0
  %t_1189 = icmp slt i8 %t_1186, 0
  %t_1190 = icmp ult i8 %t_1186, %t_1183
  %t_1191 = icmp slt i8 %t_1183, 0
  %t_1192 = icmp slt i8 %t_1185, 0
  %t_1193 = icmp slt i8 %t_1186, 0
  %t_1194 = xor i1 %t_1191, %t_1192
  %t_1195 = xor i1 %t_1191, %t_1193
  %t_1196 = and i1 %t_1194, %t_1195
  store i1 %t_1188, i1* %zf
  store i1 %t_1189, i1* %sf
  store i1 %t_1190, i1* %cf
  store i1 %t_1196, i1* %of
  %t_1197 = bitcast i8* %t_21 to i8*
  %t_1198 = load i8, i8* %t_1197
  %t_1199 = load i64, i64* %rax
  %t_1200 = trunc i64 %t_1199 to i8
  %flag_cf_1201 = load i1, i1* %cf
  %t_1202 = zext i1 %flag_cf_1201 to i8
  %t_1203 = add i8 %t_1198, %t_1200
  %t_1204 = add i8 %t_1203, %t_1202
  %t_1205 = bitcast i8* %t_21 to i8*
  store i8 %t_1204, i8* %t_1205
  %t_1206 = zext i8 %t_1198 to i9
  %t_1207 = zext i8 %t_1200 to i9
  %t_1208 = zext i1 %flag_cf_1201 to i9
  %t_1209 = add i9 %t_1206, %t_1207
  %t_1210 = add i9 %t_1209, %t_1208
  %t_1211 = lshr i9 %t_1210, 8
  %t_1212 = icmp eq i8 %t_1204, 0
  %t_1213 = trunc i9 %t_1211 to i1
  %t_1214 = icmp slt i8 %t_1198, 0
  %t_1215 = icmp slt i8 %t_1200, 0
  %t_1216 = icmp slt i8 %t_1204, 0
  %t_1217 = xor i1 %t_1214, %t_1215
  %t_1218 = xor i1 %t_1214, %t_1216
  %t_1219 = and i1 %t_1217, %t_1218
  store i1 %t_1212, i1* %zf
  store i1 %t_1216, i1* %sf
  store i1 %t_1213, i1* %cf
  store i1 %t_1219, i1* %of
  %t_1220 = bitcast i8* %t_21 to i8*
  %t_1221 = load i8, i8* %t_1220
  %t_1222 = load i64, i64* %rax
  %t_1223 = trunc i64 %t_1222 to i8
  %t_1224 = add i8 %t_1221, %t_1223
  %t_1225 = bitcast i8* %t_21 to i8*
  store i8 %t_1224, i8* %t_1225
  %t_1226 = icmp eq i8 %t_1224, 0
  %t_1227 = icmp slt i8 %t_1224, 0
  %t_1228 = icmp ult i8 %t_1224, %t_1221
  %t_1229 = icmp slt i8 %t_1221, 0
  %t_1230 = icmp slt i8 %t_1223, 0
  %t_1231 = icmp slt i8 %t_1224, 0
  %t_1232 = xor i1 %t_1229, %t_1230
  %t_1233 = xor i1 %t_1229, %t_1231
  %t_1234 = and i1 %t_1232, %t_1233
  store i1 %t_1226, i1* %zf
  store i1 %t_1227, i1* %sf
  store i1 %t_1228, i1* %cf
  store i1 %t_1234, i1* %of
  %t_1235 = bitcast i8* %t_21 to i8*
  %t_1236 = load i8, i8* %t_1235
  %t_1237 = load i64, i64* %rax
  %t_1238 = trunc i64 %t_1237 to i8
  %t_1239 = add i8 %t_1236, %t_1238
  %t_1240 = bitcast i8* %t_21 to i8*
  store i8 %t_1239, i8* %t_1240
  %t_1241 = icmp eq i8 %t_1239, 0
  %t_1242 = icmp slt i8 %t_1239, 0
  %t_1243 = icmp ult i8 %t_1239, %t_1236
  %t_1244 = icmp slt i8 %t_1236, 0
  %t_1245 = icmp slt i8 %t_1238, 0
  %t_1246 = icmp slt i8 %t_1239, 0
  %t_1247 = xor i1 %t_1244, %t_1245
  %t_1248 = xor i1 %t_1244, %t_1246
  %t_1249 = and i1 %t_1247, %t_1248
  store i1 %t_1241, i1* %zf
  store i1 %t_1242, i1* %sf
  store i1 %t_1243, i1* %cf
  store i1 %t_1249, i1* %of
  %t_1250 = bitcast i8* %t_484 to i8*
  %t_1251 = load i8, i8* %t_1250
  %t_1252 = load i64, i64* %rax
  %t_1253 = trunc i64 %t_1252 to i8
  %t_1254 = add i8 %t_1251, %t_1253
  %t_1255 = bitcast i8* %t_484 to i8*
  store i8 %t_1254, i8* %t_1255
  %t_1256 = icmp eq i8 %t_1254, 0
  %t_1257 = icmp slt i8 %t_1254, 0
  %t_1258 = icmp ult i8 %t_1254, %t_1251
  %t_1259 = icmp slt i8 %t_1251, 0
  %t_1260 = icmp slt i8 %t_1253, 0
  %t_1261 = icmp slt i8 %t_1254, 0
  %t_1262 = xor i1 %t_1259, %t_1260
  %t_1263 = xor i1 %t_1259, %t_1261
  %t_1264 = and i1 %t_1262, %t_1263
  store i1 %t_1256, i1* %zf
  store i1 %t_1257, i1* %sf
  store i1 %t_1258, i1* %cf
  store i1 %t_1264, i1* %of
  %t_1265 = bitcast i8* %t_21 to i8*
  %t_1266 = load i8, i8* %t_1265
  %t_1267 = load i64, i64* %rax
  %t_1268 = trunc i64 %t_1267 to i8
  %t_1269 = add i8 %t_1266, %t_1268
  %t_1270 = bitcast i8* %t_21 to i8*
  store i8 %t_1269, i8* %t_1270
  %t_1271 = icmp eq i8 %t_1269, 0
  %t_1272 = icmp slt i8 %t_1269, 0
  %t_1273 = icmp ult i8 %t_1269, %t_1266
  %t_1274 = icmp slt i8 %t_1266, 0
  %t_1275 = icmp slt i8 %t_1268, 0
  %t_1276 = icmp slt i8 %t_1269, 0
  %t_1277 = xor i1 %t_1274, %t_1275
  %t_1278 = xor i1 %t_1274, %t_1276
  %t_1279 = and i1 %t_1277, %t_1278
  store i1 %t_1271, i1* %zf
  store i1 %t_1272, i1* %sf
  store i1 %t_1273, i1* %cf
  store i1 %t_1279, i1* %of
  %t_1280 = load i64, i64* %rsi
  %t_1281 = inttoptr i64 %t_1280 to i8*
  %t_1282 = bitcast i8* %t_1281 to i8*
  %t_1283 = load i8, i8* %t_1282
  %t_1284 = load i64, i64* %rax
  %t_1285 = trunc i64 %t_1284 to i8
  %t_1286 = add i8 %t_1283, %t_1285
  %t_1287 = bitcast i8* %t_1281 to i8*
  store i8 %t_1286, i8* %t_1287
  %t_1288 = icmp eq i8 %t_1286, 0
  %t_1289 = icmp slt i8 %t_1286, 0
  %t_1290 = icmp ult i8 %t_1286, %t_1283
  %t_1291 = icmp slt i8 %t_1283, 0
  %t_1292 = icmp slt i8 %t_1285, 0
  %t_1293 = icmp slt i8 %t_1286, 0
  %t_1294 = xor i1 %t_1291, %t_1292
  %t_1295 = xor i1 %t_1291, %t_1293
  %t_1296 = and i1 %t_1294, %t_1295
  store i1 %t_1288, i1* %zf
  store i1 %t_1289, i1* %sf
  store i1 %t_1290, i1* %cf
  store i1 %t_1296, i1* %of
  %t_1297 = bitcast i8* %t_21 to i8*
  %t_1298 = load i8, i8* %t_1297
  %t_1299 = load i64, i64* %rax
  %t_1300 = trunc i64 %t_1299 to i8
  %t_1301 = add i8 %t_1298, %t_1300
  %t_1302 = bitcast i8* %t_21 to i8*
  store i8 %t_1301, i8* %t_1302
  %t_1303 = icmp eq i8 %t_1301, 0
  %t_1304 = icmp slt i8 %t_1301, 0
  %t_1305 = icmp ult i8 %t_1301, %t_1298
  %t_1306 = icmp slt i8 %t_1298, 0
  %t_1307 = icmp slt i8 %t_1300, 0
  %t_1308 = icmp slt i8 %t_1301, 0
  %t_1309 = xor i1 %t_1306, %t_1307
  %t_1310 = xor i1 %t_1306, %t_1308
  %t_1311 = and i1 %t_1309, %t_1310
  store i1 %t_1303, i1* %zf
  store i1 %t_1304, i1* %sf
  store i1 %t_1305, i1* %cf
  store i1 %t_1311, i1* %of
  %t_1312 = load i64, i64* %rax
  %t_1313 = add i64 %t_1312, 45
  %t_1314 = inttoptr i64 %t_1313 to i8*
  %t_1315 = bitcast i8* %t_1314 to i8*
  %t_1316 = load i8, i8* %t_1315
  %t_1317 = load i64, i64* %rcx
  %t_1318 = trunc i64 %t_1317 to i8
  %t_1319 = add i8 %t_1316, %t_1318
  %t_1320 = bitcast i8* %t_1314 to i8*
  store i8 %t_1319, i8* %t_1320
  %t_1321 = icmp eq i8 %t_1319, 0
  %t_1322 = icmp slt i8 %t_1319, 0
  %t_1323 = icmp ult i8 %t_1319, %t_1316
  %t_1324 = icmp slt i8 %t_1316, 0
  %t_1325 = icmp slt i8 %t_1318, 0
  %t_1326 = icmp slt i8 %t_1319, 0
  %t_1327 = xor i1 %t_1324, %t_1325
  %t_1328 = xor i1 %t_1324, %t_1326
  %t_1329 = and i1 %t_1327, %t_1328
  store i1 %t_1321, i1* %zf
  store i1 %t_1322, i1* %sf
  store i1 %t_1323, i1* %cf
  store i1 %t_1329, i1* %of
  %t_1330 = bitcast i8* %t_21 to i8*
  %t_1331 = load i8, i8* %t_1330
  %t_1332 = load i64, i64* %rax
  %t_1333 = trunc i64 %t_1332 to i8
  %t_1334 = add i8 %t_1331, %t_1333
  %t_1335 = bitcast i8* %t_21 to i8*
  store i8 %t_1334, i8* %t_1335
  %t_1336 = icmp eq i8 %t_1334, 0
  %t_1337 = icmp slt i8 %t_1334, 0
  %t_1338 = icmp ult i8 %t_1334, %t_1331
  %t_1339 = icmp slt i8 %t_1331, 0
  %t_1340 = icmp slt i8 %t_1333, 0
  %t_1341 = icmp slt i8 %t_1334, 0
  %t_1342 = xor i1 %t_1339, %t_1340
  %t_1343 = xor i1 %t_1339, %t_1341
  %t_1344 = and i1 %t_1342, %t_1343
  store i1 %t_1336, i1* %zf
  store i1 %t_1337, i1* %sf
  store i1 %t_1338, i1* %cf
  store i1 %t_1344, i1* %of
  %t_1345 = load i64, i64* %rax
  %t_1346 = add i64 %t_1345, 61
  %t_1347 = inttoptr i64 %t_1346 to i8*
  %t_1348 = bitcast i8* %t_1347 to i8*
  %t_1349 = load i8, i8* %t_1348
  %t_1350 = load i64, i64* %rcx
  %t_1351 = trunc i64 %t_1350 to i8
  %t_1352 = add i8 %t_1349, %t_1351
  %t_1353 = bitcast i8* %t_1347 to i8*
  store i8 %t_1352, i8* %t_1353
  %t_1354 = icmp eq i8 %t_1352, 0
  %t_1355 = icmp slt i8 %t_1352, 0
  %t_1356 = icmp ult i8 %t_1352, %t_1349
  %t_1357 = icmp slt i8 %t_1349, 0
  %t_1358 = icmp slt i8 %t_1351, 0
  %t_1359 = icmp slt i8 %t_1352, 0
  %t_1360 = xor i1 %t_1357, %t_1358
  %t_1361 = xor i1 %t_1357, %t_1359
  %t_1362 = and i1 %t_1360, %t_1361
  store i1 %t_1354, i1* %zf
  store i1 %t_1355, i1* %sf
  store i1 %t_1356, i1* %cf
  store i1 %t_1362, i1* %of
  %t_1363 = bitcast i8* %t_21 to i8*
  %t_1364 = load i8, i8* %t_1363
  %t_1365 = load i64, i64* %rax
  %t_1366 = trunc i64 %t_1365 to i8
  %t_1367 = add i8 %t_1364, %t_1366
  %t_1368 = bitcast i8* %t_21 to i8*
  store i8 %t_1367, i8* %t_1368
  %t_1369 = icmp eq i8 %t_1367, 0
  %t_1370 = icmp slt i8 %t_1367, 0
  %t_1371 = icmp ult i8 %t_1367, %t_1364
  %t_1372 = icmp slt i8 %t_1364, 0
  %t_1373 = icmp slt i8 %t_1366, 0
  %t_1374 = icmp slt i8 %t_1367, 0
  %t_1375 = xor i1 %t_1372, %t_1373
  %t_1376 = xor i1 %t_1372, %t_1374
  %t_1377 = and i1 %t_1375, %t_1376
  store i1 %t_1369, i1* %zf
  store i1 %t_1370, i1* %sf
  store i1 %t_1371, i1* %cf
  store i1 %t_1377, i1* %of
  %t_1378 = bitcast i8* %t_1347 to i8*
  %t_1379 = load i8, i8* %t_1378
  %t_1380 = load i64, i64* %rcx
  %t_1381 = trunc i64 %t_1380 to i8
  %t_1382 = add i8 %t_1379, %t_1381
  %t_1383 = bitcast i8* %t_1347 to i8*
  store i8 %t_1382, i8* %t_1383
  %t_1384 = icmp eq i8 %t_1382, 0
  %t_1385 = icmp slt i8 %t_1382, 0
  %t_1386 = icmp ult i8 %t_1382, %t_1379
  %t_1387 = icmp slt i8 %t_1379, 0
  %t_1388 = icmp slt i8 %t_1381, 0
  %t_1389 = icmp slt i8 %t_1382, 0
  %t_1390 = xor i1 %t_1387, %t_1388
  %t_1391 = xor i1 %t_1387, %t_1389
  %t_1392 = and i1 %t_1390, %t_1391
  store i1 %t_1384, i1* %zf
  store i1 %t_1385, i1* %sf
  store i1 %t_1386, i1* %cf
  store i1 %t_1392, i1* %of
  %t_1393 = bitcast i8* %t_21 to i8*
  %t_1394 = load i8, i8* %t_1393
  %t_1395 = load i64, i64* %rax
  %t_1396 = trunc i64 %t_1395 to i8
  %t_1397 = add i8 %t_1394, %t_1396
  %t_1398 = bitcast i8* %t_21 to i8*
  store i8 %t_1397, i8* %t_1398
  %t_1399 = icmp eq i8 %t_1397, 0
  %t_1400 = icmp slt i8 %t_1397, 0
  %t_1401 = icmp ult i8 %t_1397, %t_1394
  %t_1402 = icmp slt i8 %t_1394, 0
  %t_1403 = icmp slt i8 %t_1396, 0
  %t_1404 = icmp slt i8 %t_1397, 0
  %t_1405 = xor i1 %t_1402, %t_1403
  %t_1406 = xor i1 %t_1402, %t_1404
  %t_1407 = and i1 %t_1405, %t_1406
  store i1 %t_1399, i1* %zf
  store i1 %t_1400, i1* %sf
  store i1 %t_1401, i1* %cf
  store i1 %t_1407, i1* %of
  %t_1408 = load i64, i64* %rax
  %t_1409 = add i64 %t_1408, 2
  %t_1410 = inttoptr i64 %t_1409 to i8*
  %t_1411 = bitcast i8* %t_1410 to i8*
  %t_1412 = load i8, i8* %t_1411
  %t_1413 = load i64, i64* %rcx
  %t_1414 = trunc i64 %t_1413 to i8
  %t_1415 = add i8 %t_1412, %t_1414
  %t_1416 = bitcast i8* %t_1410 to i8*
  store i8 %t_1415, i8* %t_1416
  %t_1417 = icmp eq i8 %t_1415, 0
  %t_1418 = icmp slt i8 %t_1415, 0
  %t_1419 = icmp ult i8 %t_1415, %t_1412
  %t_1420 = icmp slt i8 %t_1412, 0
  %t_1421 = icmp slt i8 %t_1414, 0
  %t_1422 = icmp slt i8 %t_1415, 0
  %t_1423 = xor i1 %t_1420, %t_1421
  %t_1424 = xor i1 %t_1420, %t_1422
  %t_1425 = and i1 %t_1423, %t_1424
  store i1 %t_1417, i1* %zf
  store i1 %t_1418, i1* %sf
  store i1 %t_1419, i1* %cf
  store i1 %t_1425, i1* %of
  %t_1426 = bitcast i8* %t_21 to i8*
  %t_1427 = load i8, i8* %t_1426
  %t_1428 = load i64, i64* %rax
  %t_1429 = trunc i64 %t_1428 to i8
  %t_1430 = add i8 %t_1427, %t_1429
  %t_1431 = bitcast i8* %t_21 to i8*
  store i8 %t_1430, i8* %t_1431
  %t_1432 = icmp eq i8 %t_1430, 0
  %t_1433 = icmp slt i8 %t_1430, 0
  %t_1434 = icmp ult i8 %t_1430, %t_1427
  %t_1435 = icmp slt i8 %t_1427, 0
  %t_1436 = icmp slt i8 %t_1429, 0
  %t_1437 = icmp slt i8 %t_1430, 0
  %t_1438 = xor i1 %t_1435, %t_1436
  %t_1439 = xor i1 %t_1435, %t_1437
  %t_1440 = and i1 %t_1438, %t_1439
  store i1 %t_1432, i1* %zf
  store i1 %t_1433, i1* %sf
  store i1 %t_1434, i1* %cf
  store i1 %t_1440, i1* %of
  %t_1441 = load i64, i64* %rax
  %t_1442 = trunc i64 %t_1441 to i8
  %t_1443 = load i64, i64* %rdx
  %t_1444 = trunc i64 %t_1443 to i8
  %t_1445 = add i8 %t_1442, %t_1444
  %t_1446 = zext i8 %t_1445 to i64
  %t_1447 = load i64, i64* %rax
  %t_1448 = and i64 %t_1447, 18446744073709551360
  %t_1449 = or i64 %t_1448, %t_1446
  store i64 %t_1449, i64* %rax
  %t_1450 = icmp eq i8 %t_1445, 0
  %t_1451 = icmp slt i8 %t_1445, 0
  %t_1452 = icmp ult i8 %t_1445, %t_1442
  %t_1453 = icmp slt i8 %t_1442, 0
  %t_1454 = icmp slt i8 %t_1444, 0
  %t_1455 = icmp slt i8 %t_1445, 0
  %t_1456 = xor i1 %t_1453, %t_1454
  %t_1457 = xor i1 %t_1453, %t_1455
  %t_1458 = and i1 %t_1456, %t_1457
  store i1 %t_1450, i1* %zf
  store i1 %t_1451, i1* %sf
  store i1 %t_1452, i1* %cf
  store i1 %t_1458, i1* %of
  %t_1459 = load i64, i64* %rax
  %t_1460 = trunc i64 %t_1459 to i32
  %t_1461 = bitcast i8* %t_21 to i32*
  %t_1462 = load i32, i32* %t_1461
  %t_1463 = add i32 %t_1460, %t_1462
  %t_1464 = zext i32 %t_1463 to i64
  store i64 %t_1464, i64* %rax
  %t_1465 = icmp eq i32 %t_1463, 0
  %t_1466 = icmp slt i32 %t_1463, 0
  %t_1467 = icmp ult i32 %t_1463, %t_1460
  %t_1468 = icmp slt i32 %t_1460, 0
  %t_1469 = icmp slt i32 %t_1462, 0
  %t_1470 = icmp slt i32 %t_1463, 0
  %t_1471 = xor i1 %t_1468, %t_1469
  %t_1472 = xor i1 %t_1468, %t_1470
  %t_1473 = and i1 %t_1471, %t_1472
  store i1 %t_1465, i1* %zf
  store i1 %t_1466, i1* %sf
  store i1 %t_1467, i1* %cf
  store i1 %t_1473, i1* %of
  %t_1474 = bitcast i8* %t_21 to i8*
  %t_1475 = load i8, i8* %t_1474
  %t_1476 = load i64, i64* %rax
  %t_1477 = trunc i64 %t_1476 to i8
  %t_1478 = add i8 %t_1475, %t_1477
  %t_1479 = bitcast i8* %t_21 to i8*
  store i8 %t_1478, i8* %t_1479
  %t_1480 = icmp eq i8 %t_1478, 0
  %t_1481 = icmp slt i8 %t_1478, 0
  %t_1482 = icmp ult i8 %t_1478, %t_1475
  %t_1483 = icmp slt i8 %t_1475, 0
  %t_1484 = icmp slt i8 %t_1477, 0
  %t_1485 = icmp slt i8 %t_1478, 0
  %t_1486 = xor i1 %t_1483, %t_1484
  %t_1487 = xor i1 %t_1483, %t_1485
  %t_1488 = and i1 %t_1486, %t_1487
  store i1 %t_1480, i1* %zf
  store i1 %t_1481, i1* %sf
  store i1 %t_1482, i1* %cf
  store i1 %t_1488, i1* %of
  %t_1489 = bitcast i8* %t_21 to i8*
  %t_1490 = load i8, i8* %t_1489
  %t_1491 = load i64, i64* %rax
  %t_1492 = trunc i64 %t_1491 to i8
  %t_1493 = add i8 %t_1490, %t_1492
  %t_1494 = bitcast i8* %t_21 to i8*
  store i8 %t_1493, i8* %t_1494
  %t_1495 = icmp eq i8 %t_1493, 0
  %t_1496 = icmp slt i8 %t_1493, 0
  %t_1497 = icmp ult i8 %t_1493, %t_1490
  %t_1498 = icmp slt i8 %t_1490, 0
  %t_1499 = icmp slt i8 %t_1492, 0
  %t_1500 = icmp slt i8 %t_1493, 0
  %t_1501 = xor i1 %t_1498, %t_1499
  %t_1502 = xor i1 %t_1498, %t_1500
  %t_1503 = and i1 %t_1501, %t_1502
  store i1 %t_1495, i1* %zf
  store i1 %t_1496, i1* %sf
  store i1 %t_1497, i1* %cf
  store i1 %t_1503, i1* %of
  %t_1504 = bitcast i8* %t_21 to i8*
  %t_1505 = load i8, i8* %t_1504
  %t_1506 = load i64, i64* %rax
  %t_1507 = trunc i64 %t_1506 to i8
  %t_1508 = add i8 %t_1505, %t_1507
  %t_1509 = bitcast i8* %t_21 to i8*
  store i8 %t_1508, i8* %t_1509
  %t_1510 = icmp eq i8 %t_1508, 0
  %t_1511 = icmp slt i8 %t_1508, 0
  %t_1512 = icmp ult i8 %t_1508, %t_1505
  %t_1513 = icmp slt i8 %t_1505, 0
  %t_1514 = icmp slt i8 %t_1507, 0
  %t_1515 = icmp slt i8 %t_1508, 0
  %t_1516 = xor i1 %t_1513, %t_1514
  %t_1517 = xor i1 %t_1513, %t_1515
  %t_1518 = and i1 %t_1516, %t_1517
  store i1 %t_1510, i1* %zf
  store i1 %t_1511, i1* %sf
  store i1 %t_1512, i1* %cf
  store i1 %t_1518, i1* %of
  %t_1519 = bitcast i8* %t_21 to i8*
  %t_1520 = load i8, i8* %t_1519
  %t_1521 = load i64, i64* %rax
  %t_1522 = trunc i64 %t_1521 to i8
  %flag_cf_1523 = load i1, i1* %cf
  %t_1524 = zext i1 %flag_cf_1523 to i8
  %t_1525 = add i8 %t_1520, %t_1522
  %t_1526 = add i8 %t_1525, %t_1524
  %t_1527 = bitcast i8* %t_21 to i8*
  store i8 %t_1526, i8* %t_1527
  %t_1528 = zext i8 %t_1520 to i9
  %t_1529 = zext i8 %t_1522 to i9
  %t_1530 = zext i1 %flag_cf_1523 to i9
  %t_1531 = add i9 %t_1528, %t_1529
  %t_1532 = add i9 %t_1531, %t_1530
  %t_1533 = lshr i9 %t_1532, 8
  %t_1534 = icmp eq i8 %t_1526, 0
  %t_1535 = trunc i9 %t_1533 to i1
  %t_1536 = icmp slt i8 %t_1520, 0
  %t_1537 = icmp slt i8 %t_1522, 0
  %t_1538 = icmp slt i8 %t_1526, 0
  %t_1539 = xor i1 %t_1536, %t_1537
  %t_1540 = xor i1 %t_1536, %t_1538
  %t_1541 = and i1 %t_1539, %t_1540
  store i1 %t_1534, i1* %zf
  store i1 %t_1538, i1* %sf
  store i1 %t_1535, i1* %cf
  store i1 %t_1541, i1* %of
  %t_1542 = bitcast i8* %t_21 to i8*
  %t_1543 = load i8, i8* %t_1542
  %t_1544 = load i64, i64* %rax
  %t_1545 = trunc i64 %t_1544 to i8
  %t_1546 = add i8 %t_1543, %t_1545
  %t_1547 = bitcast i8* %t_21 to i8*
  store i8 %t_1546, i8* %t_1547
  %t_1548 = icmp eq i8 %t_1546, 0
  %t_1549 = icmp slt i8 %t_1546, 0
  %t_1550 = icmp ult i8 %t_1546, %t_1543
  %t_1551 = icmp slt i8 %t_1543, 0
  %t_1552 = icmp slt i8 %t_1545, 0
  %t_1553 = icmp slt i8 %t_1546, 0
  %t_1554 = xor i1 %t_1551, %t_1552
  %t_1555 = xor i1 %t_1551, %t_1553
  %t_1556 = and i1 %t_1554, %t_1555
  store i1 %t_1548, i1* %zf
  store i1 %t_1549, i1* %sf
  store i1 %t_1550, i1* %cf
  store i1 %t_1556, i1* %of
  %t_1557 = bitcast i8* %t_21 to i8*
  %t_1558 = load i8, i8* %t_1557
  %t_1559 = load i64, i64* %rax
  %t_1560 = trunc i64 %t_1559 to i8
  %t_1561 = add i8 %t_1558, %t_1560
  %t_1562 = bitcast i8* %t_21 to i8*
  store i8 %t_1561, i8* %t_1562
  %t_1563 = icmp eq i8 %t_1561, 0
  %t_1564 = icmp slt i8 %t_1561, 0
  %t_1565 = icmp ult i8 %t_1561, %t_1558
  %t_1566 = icmp slt i8 %t_1558, 0
  %t_1567 = icmp slt i8 %t_1560, 0
  %t_1568 = icmp slt i8 %t_1561, 0
  %t_1569 = xor i1 %t_1566, %t_1567
  %t_1570 = xor i1 %t_1566, %t_1568
  %t_1571 = and i1 %t_1569, %t_1570
  store i1 %t_1563, i1* %zf
  store i1 %t_1564, i1* %sf
  store i1 %t_1565, i1* %cf
  store i1 %t_1571, i1* %of
  %t_1572 = load i64, i64* %rdx
  %t_1573 = inttoptr i64 %t_1572 to i8*
  %t_1574 = bitcast i8* %t_1573 to i8*
  %t_1575 = load i8, i8* %t_1574
  %t_1576 = load i64, i64* %rax
  %t_1577 = trunc i64 %t_1576 to i8
  %t_1578 = add i8 %t_1575, %t_1577
  %t_1579 = bitcast i8* %t_1573 to i8*
  store i8 %t_1578, i8* %t_1579
  %t_1580 = icmp eq i8 %t_1578, 0
  %t_1581 = icmp slt i8 %t_1578, 0
  %t_1582 = icmp ult i8 %t_1578, %t_1575
  %t_1583 = icmp slt i8 %t_1575, 0
  %t_1584 = icmp slt i8 %t_1577, 0
  %t_1585 = icmp slt i8 %t_1578, 0
  %t_1586 = xor i1 %t_1583, %t_1584
  %t_1587 = xor i1 %t_1583, %t_1585
  %t_1588 = and i1 %t_1586, %t_1587
  store i1 %t_1580, i1* %zf
  store i1 %t_1581, i1* %sf
  store i1 %t_1582, i1* %cf
  store i1 %t_1588, i1* %of
  %t_1589 = bitcast i8* %t_21 to i8*
  %t_1590 = load i8, i8* %t_1589
  %t_1591 = load i64, i64* %rax
  %t_1592 = trunc i64 %t_1591 to i8
  %t_1593 = add i8 %t_1590, %t_1592
  %t_1594 = bitcast i8* %t_21 to i8*
  store i8 %t_1593, i8* %t_1594
  %t_1595 = icmp eq i8 %t_1593, 0
  %t_1596 = icmp slt i8 %t_1593, 0
  %t_1597 = icmp ult i8 %t_1593, %t_1590
  %t_1598 = icmp slt i8 %t_1590, 0
  %t_1599 = icmp slt i8 %t_1592, 0
  %t_1600 = icmp slt i8 %t_1593, 0
  %t_1601 = xor i1 %t_1598, %t_1599
  %t_1602 = xor i1 %t_1598, %t_1600
  %t_1603 = and i1 %t_1601, %t_1602
  store i1 %t_1595, i1* %zf
  store i1 %t_1596, i1* %sf
  store i1 %t_1597, i1* %cf
  store i1 %t_1603, i1* %of
  %t_1604 = bitcast i8* %t_1281 to i8*
  %t_1605 = load i8, i8* %t_1604
  %t_1606 = load i64, i64* %rax
  %t_1607 = trunc i64 %t_1606 to i8
  %t_1608 = add i8 %t_1605, %t_1607
  %t_1609 = bitcast i8* %t_1281 to i8*
  store i8 %t_1608, i8* %t_1609
  %t_1610 = icmp eq i8 %t_1608, 0
  %t_1611 = icmp slt i8 %t_1608, 0
  %t_1612 = icmp ult i8 %t_1608, %t_1605
  %t_1613 = icmp slt i8 %t_1605, 0
  %t_1614 = icmp slt i8 %t_1607, 0
  %t_1615 = icmp slt i8 %t_1608, 0
  %t_1616 = xor i1 %t_1613, %t_1614
  %t_1617 = xor i1 %t_1613, %t_1615
  %t_1618 = and i1 %t_1616, %t_1617
  store i1 %t_1610, i1* %zf
  store i1 %t_1611, i1* %sf
  store i1 %t_1612, i1* %cf
  store i1 %t_1618, i1* %of
  %t_1619 = bitcast i8* %t_21 to i8*
  %t_1620 = load i8, i8* %t_1619
  %t_1621 = load i64, i64* %rax
  %t_1622 = trunc i64 %t_1621 to i8
  %t_1623 = add i8 %t_1620, %t_1622
  %t_1624 = bitcast i8* %t_21 to i8*
  store i8 %t_1623, i8* %t_1624
  %t_1625 = icmp eq i8 %t_1623, 0
  %t_1626 = icmp slt i8 %t_1623, 0
  %t_1627 = icmp ult i8 %t_1623, %t_1620
  %t_1628 = icmp slt i8 %t_1620, 0
  %t_1629 = icmp slt i8 %t_1622, 0
  %t_1630 = icmp slt i8 %t_1623, 0
  %t_1631 = xor i1 %t_1628, %t_1629
  %t_1632 = xor i1 %t_1628, %t_1630
  %t_1633 = and i1 %t_1631, %t_1632
  store i1 %t_1625, i1* %zf
  store i1 %t_1626, i1* %sf
  store i1 %t_1627, i1* %cf
  store i1 %t_1633, i1* %of
  %t_1634 = bitcast i8* %t_1314 to i8*
  %t_1635 = load i8, i8* %t_1634
  %t_1636 = trunc i64 0 to i8
  %t_1637 = add i8 %t_1635, %t_1636
  %t_1638 = bitcast i8* %t_1314 to i8*
  store i8 %t_1637, i8* %t_1638
  %t_1639 = icmp eq i8 %t_1637, 0
  %t_1640 = icmp slt i8 %t_1637, 0
  %t_1641 = icmp ult i8 %t_1637, %t_1635
  %t_1642 = icmp slt i8 %t_1635, 0
  %t_1643 = icmp slt i8 %t_1636, 0
  %t_1644 = icmp slt i8 %t_1637, 0
  %t_1645 = xor i1 %t_1642, %t_1643
  %t_1646 = xor i1 %t_1642, %t_1644
  %t_1647 = and i1 %t_1645, %t_1646
  store i1 %t_1639, i1* %zf
  store i1 %t_1640, i1* %sf
  store i1 %t_1641, i1* %cf
  store i1 %t_1647, i1* %of
  %t_1648 = bitcast i8* %t_21 to i8*
  %t_1649 = load i8, i8* %t_1648
  %t_1650 = load i64, i64* %rax
  %t_1651 = trunc i64 %t_1650 to i8
  %t_1652 = add i8 %t_1649, %t_1651
  %t_1653 = bitcast i8* %t_21 to i8*
  store i8 %t_1652, i8* %t_1653
  %t_1654 = icmp eq i8 %t_1652, 0
  %t_1655 = icmp slt i8 %t_1652, 0
  %t_1656 = icmp ult i8 %t_1652, %t_1649
  %t_1657 = icmp slt i8 %t_1649, 0
  %t_1658 = icmp slt i8 %t_1651, 0
  %t_1659 = icmp slt i8 %t_1652, 0
  %t_1660 = xor i1 %t_1657, %t_1658
  %t_1661 = xor i1 %t_1657, %t_1659
  %t_1662 = and i1 %t_1660, %t_1661
  store i1 %t_1654, i1* %zf
  store i1 %t_1655, i1* %sf
  store i1 %t_1656, i1* %cf
  store i1 %t_1662, i1* %of
  %t_1663 = bitcast i8* %t_1347 to i8*
  %t_1664 = load i8, i8* %t_1663
  %t_1665 = trunc i64 0 to i8
  %t_1666 = add i8 %t_1664, %t_1665
  %t_1667 = bitcast i8* %t_1347 to i8*
  store i8 %t_1666, i8* %t_1667
  %t_1668 = icmp eq i8 %t_1666, 0
  %t_1669 = icmp slt i8 %t_1666, 0
  %t_1670 = icmp ult i8 %t_1666, %t_1664
  %t_1671 = icmp slt i8 %t_1664, 0
  %t_1672 = icmp slt i8 %t_1665, 0
  %t_1673 = icmp slt i8 %t_1666, 0
  %t_1674 = xor i1 %t_1671, %t_1672
  %t_1675 = xor i1 %t_1671, %t_1673
  %t_1676 = and i1 %t_1674, %t_1675
  store i1 %t_1668, i1* %zf
  store i1 %t_1669, i1* %sf
  store i1 %t_1670, i1* %cf
  store i1 %t_1676, i1* %of
  %t_1677 = bitcast i8* %t_21 to i8*
  %t_1678 = load i8, i8* %t_1677
  %t_1679 = load i64, i64* %rax
  %t_1680 = trunc i64 %t_1679 to i8
  %t_1681 = add i8 %t_1678, %t_1680
  %t_1682 = bitcast i8* %t_21 to i8*
  store i8 %t_1681, i8* %t_1682
  %t_1683 = icmp eq i8 %t_1681, 0
  %t_1684 = icmp slt i8 %t_1681, 0
  %t_1685 = icmp ult i8 %t_1681, %t_1678
  %t_1686 = icmp slt i8 %t_1678, 0
  %t_1687 = icmp slt i8 %t_1680, 0
  %t_1688 = icmp slt i8 %t_1681, 0
  %t_1689 = xor i1 %t_1686, %t_1687
  %t_1690 = xor i1 %t_1686, %t_1688
  %t_1691 = and i1 %t_1689, %t_1690
  store i1 %t_1683, i1* %zf
  store i1 %t_1684, i1* %sf
  store i1 %t_1685, i1* %cf
  store i1 %t_1691, i1* %of
  %t_1692 = bitcast i8* %t_1347 to i8*
  %t_1693 = load i8, i8* %t_1692
  %t_1694 = trunc i64 0 to i8
  %t_1695 = add i8 %t_1693, %t_1694
  %t_1696 = bitcast i8* %t_1347 to i8*
  store i8 %t_1695, i8* %t_1696
  %t_1697 = icmp eq i8 %t_1695, 0
  %t_1698 = icmp slt i8 %t_1695, 0
  %t_1699 = icmp ult i8 %t_1695, %t_1693
  %t_1700 = icmp slt i8 %t_1693, 0
  %t_1701 = icmp slt i8 %t_1694, 0
  %t_1702 = icmp slt i8 %t_1695, 0
  %t_1703 = xor i1 %t_1700, %t_1701
  %t_1704 = xor i1 %t_1700, %t_1702
  %t_1705 = and i1 %t_1703, %t_1704
  store i1 %t_1697, i1* %zf
  store i1 %t_1698, i1* %sf
  store i1 %t_1699, i1* %cf
  store i1 %t_1705, i1* %of
  %t_1706 = bitcast i8* %t_21 to i8*
  %t_1707 = load i8, i8* %t_1706
  %t_1708 = load i64, i64* %rax
  %t_1709 = trunc i64 %t_1708 to i8
  %t_1710 = add i8 %t_1707, %t_1709
  %t_1711 = bitcast i8* %t_21 to i8*
  store i8 %t_1710, i8* %t_1711
  %t_1712 = icmp eq i8 %t_1710, 0
  %t_1713 = icmp slt i8 %t_1710, 0
  %t_1714 = icmp ult i8 %t_1710, %t_1707
  %t_1715 = icmp slt i8 %t_1707, 0
  %t_1716 = icmp slt i8 %t_1709, 0
  %t_1717 = icmp slt i8 %t_1710, 0
  %t_1718 = xor i1 %t_1715, %t_1716
  %t_1719 = xor i1 %t_1715, %t_1717
  %t_1720 = and i1 %t_1718, %t_1719
  store i1 %t_1712, i1* %zf
  store i1 %t_1713, i1* %sf
  store i1 %t_1714, i1* %cf
  store i1 %t_1720, i1* %of
  %t_1721 = bitcast i8* %t_21 to i8*
  %t_1722 = load i8, i8* %t_1721
  %t_1723 = load i64, i64* %rax
  %t_1724 = trunc i64 %t_1723 to i8
  %t_1725 = add i8 %t_1722, %t_1724
  %t_1726 = bitcast i8* %t_21 to i8*
  store i8 %t_1725, i8* %t_1726
  %t_1727 = icmp eq i8 %t_1725, 0
  %t_1728 = icmp slt i8 %t_1725, 0
  %t_1729 = icmp ult i8 %t_1725, %t_1722
  %t_1730 = icmp slt i8 %t_1722, 0
  %t_1731 = icmp slt i8 %t_1724, 0
  %t_1732 = icmp slt i8 %t_1725, 0
  %t_1733 = xor i1 %t_1730, %t_1731
  %t_1734 = xor i1 %t_1730, %t_1732
  %t_1735 = and i1 %t_1733, %t_1734
  store i1 %t_1727, i1* %zf
  store i1 %t_1728, i1* %sf
  store i1 %t_1729, i1* %cf
  store i1 %t_1735, i1* %of
  %t_1736 = load i64, i64* %rax
  %t_1737 = trunc i64 %t_1736 to i8
  %t_1738 = bitcast i8* %t_21 to i8*
  %t_1739 = load i8, i8* %t_1738
  %t_1740 = add i8 %t_1737, %t_1739
  %t_1741 = zext i8 %t_1740 to i64
  %t_1742 = load i64, i64* %rax
  %t_1743 = and i64 %t_1742, 18446744073709551360
  %t_1744 = or i64 %t_1743, %t_1741
  store i64 %t_1744, i64* %rax
  %t_1745 = icmp eq i8 %t_1740, 0
  %t_1746 = icmp slt i8 %t_1740, 0
  %t_1747 = icmp ult i8 %t_1740, %t_1737
  %t_1748 = icmp slt i8 %t_1737, 0
  %t_1749 = icmp slt i8 %t_1739, 0
  %t_1750 = icmp slt i8 %t_1740, 0
  %t_1751 = xor i1 %t_1748, %t_1749
  %t_1752 = xor i1 %t_1748, %t_1750
  %t_1753 = and i1 %t_1751, %t_1752
  store i1 %t_1745, i1* %zf
  store i1 %t_1746, i1* %sf
  store i1 %t_1747, i1* %cf
  store i1 %t_1753, i1* %of
  %t_1754 = bitcast i8* %t_21 to i8*
  %t_1755 = load i8, i8* %t_1754
  %t_1756 = load i64, i64* %rax
  %t_1757 = trunc i64 %t_1756 to i8
  %t_1758 = add i8 %t_1755, %t_1757
  %t_1759 = bitcast i8* %t_21 to i8*
  store i8 %t_1758, i8* %t_1759
  %t_1760 = icmp eq i8 %t_1758, 0
  %t_1761 = icmp slt i8 %t_1758, 0
  %t_1762 = icmp ult i8 %t_1758, %t_1755
  %t_1763 = icmp slt i8 %t_1755, 0
  %t_1764 = icmp slt i8 %t_1757, 0
  %t_1765 = icmp slt i8 %t_1758, 0
  %t_1766 = xor i1 %t_1763, %t_1764
  %t_1767 = xor i1 %t_1763, %t_1765
  %t_1768 = and i1 %t_1766, %t_1767
  store i1 %t_1760, i1* %zf
  store i1 %t_1761, i1* %sf
  store i1 %t_1762, i1* %cf
  store i1 %t_1768, i1* %of
  %t_1769 = bitcast i8* %t_21 to i8*
  %t_1770 = load i8, i8* %t_1769
  %t_1771 = load i64, i64* %rax
  %t_1772 = trunc i64 %t_1771 to i8
  %t_1773 = add i8 %t_1770, %t_1772
  %t_1774 = bitcast i8* %t_21 to i8*
  store i8 %t_1773, i8* %t_1774
  %t_1775 = icmp eq i8 %t_1773, 0
  %t_1776 = icmp slt i8 %t_1773, 0
  %t_1777 = icmp ult i8 %t_1773, %t_1770
  %t_1778 = icmp slt i8 %t_1770, 0
  %t_1779 = icmp slt i8 %t_1772, 0
  %t_1780 = icmp slt i8 %t_1773, 0
  %t_1781 = xor i1 %t_1778, %t_1779
  %t_1782 = xor i1 %t_1778, %t_1780
  %t_1783 = and i1 %t_1781, %t_1782
  store i1 %t_1775, i1* %zf
  store i1 %t_1776, i1* %sf
  store i1 %t_1777, i1* %cf
  store i1 %t_1783, i1* %of
  %t_1784 = bitcast i8* %t_21 to i8*
  %t_1785 = load i8, i8* %t_1784
  %t_1786 = load i64, i64* %rax
  %t_1787 = trunc i64 %t_1786 to i8
  %t_1788 = add i8 %t_1785, %t_1787
  %t_1789 = bitcast i8* %t_21 to i8*
  store i8 %t_1788, i8* %t_1789
  %t_1790 = icmp eq i8 %t_1788, 0
  %t_1791 = icmp slt i8 %t_1788, 0
  %t_1792 = icmp ult i8 %t_1788, %t_1785
  %t_1793 = icmp slt i8 %t_1785, 0
  %t_1794 = icmp slt i8 %t_1787, 0
  %t_1795 = icmp slt i8 %t_1788, 0
  %t_1796 = xor i1 %t_1793, %t_1794
  %t_1797 = xor i1 %t_1793, %t_1795
  %t_1798 = and i1 %t_1796, %t_1797
  store i1 %t_1790, i1* %zf
  store i1 %t_1791, i1* %sf
  store i1 %t_1792, i1* %cf
  store i1 %t_1798, i1* %of
  %t_1799 = load i64, i64* %rax
  %t_1800 = trunc i64 %t_1799 to i8
  %t_1801 = bitcast i8* %t_21 to i8*
  %t_1802 = load i8, i8* %t_1801
  %t_1803 = add i8 %t_1800, %t_1802
  %t_1804 = zext i8 %t_1803 to i64
  %t_1805 = load i64, i64* %rax
  %t_1806 = and i64 %t_1805, 18446744073709551360
  %t_1807 = or i64 %t_1806, %t_1804
  store i64 %t_1807, i64* %rax
  %t_1808 = icmp eq i8 %t_1803, 0
  %t_1809 = icmp slt i8 %t_1803, 0
  %t_1810 = icmp ult i8 %t_1803, %t_1800
  %t_1811 = icmp slt i8 %t_1800, 0
  %t_1812 = icmp slt i8 %t_1802, 0
  %t_1813 = icmp slt i8 %t_1803, 0
  %t_1814 = xor i1 %t_1811, %t_1812
  %t_1815 = xor i1 %t_1811, %t_1813
  %t_1816 = and i1 %t_1814, %t_1815
  store i1 %t_1808, i1* %zf
  store i1 %t_1809, i1* %sf
  store i1 %t_1810, i1* %cf
  store i1 %t_1816, i1* %of
  %t_1817 = bitcast i8* %t_21 to i8*
  %t_1818 = load i8, i8* %t_1817
  %t_1819 = load i64, i64* %rax
  %t_1820 = trunc i64 %t_1819 to i8
  %t_1821 = add i8 %t_1818, %t_1820
  %t_1822 = bitcast i8* %t_21 to i8*
  store i8 %t_1821, i8* %t_1822
  %t_1823 = icmp eq i8 %t_1821, 0
  %t_1824 = icmp slt i8 %t_1821, 0
  %t_1825 = icmp ult i8 %t_1821, %t_1818
  %t_1826 = icmp slt i8 %t_1818, 0
  %t_1827 = icmp slt i8 %t_1820, 0
  %t_1828 = icmp slt i8 %t_1821, 0
  %t_1829 = xor i1 %t_1826, %t_1827
  %t_1830 = xor i1 %t_1826, %t_1828
  %t_1831 = and i1 %t_1829, %t_1830
  store i1 %t_1823, i1* %zf
  store i1 %t_1824, i1* %sf
  store i1 %t_1825, i1* %cf
  store i1 %t_1831, i1* %of
  %t_1832 = bitcast i8* %t_21 to i8*
  %t_1833 = load i8, i8* %t_1832
  %t_1834 = load i64, i64* %rax
  %t_1835 = trunc i64 %t_1834 to i8
  %t_1836 = add i8 %t_1833, %t_1835
  %t_1837 = bitcast i8* %t_21 to i8*
  store i8 %t_1836, i8* %t_1837
  %t_1838 = icmp eq i8 %t_1836, 0
  %t_1839 = icmp slt i8 %t_1836, 0
  %t_1840 = icmp ult i8 %t_1836, %t_1833
  %t_1841 = icmp slt i8 %t_1833, 0
  %t_1842 = icmp slt i8 %t_1835, 0
  %t_1843 = icmp slt i8 %t_1836, 0
  %t_1844 = xor i1 %t_1841, %t_1842
  %t_1845 = xor i1 %t_1841, %t_1843
  %t_1846 = and i1 %t_1844, %t_1845
  store i1 %t_1838, i1* %zf
  store i1 %t_1839, i1* %sf
  store i1 %t_1840, i1* %cf
  store i1 %t_1846, i1* %of
  %t_1847 = bitcast i8* %t_21 to i8*
  %t_1848 = load i8, i8* %t_1847
  %t_1849 = load i64, i64* %rcx
  %t_1850 = trunc i64 %t_1849 to i8
  %t_1851 = add i8 %t_1848, %t_1850
  %t_1852 = bitcast i8* %t_21 to i8*
  store i8 %t_1851, i8* %t_1852
  %t_1853 = icmp eq i8 %t_1851, 0
  %t_1854 = icmp slt i8 %t_1851, 0
  %t_1855 = icmp ult i8 %t_1851, %t_1848
  %t_1856 = icmp slt i8 %t_1848, 0
  %t_1857 = icmp slt i8 %t_1850, 0
  %t_1858 = icmp slt i8 %t_1851, 0
  %t_1859 = xor i1 %t_1856, %t_1857
  %t_1860 = xor i1 %t_1856, %t_1858
  %t_1861 = and i1 %t_1859, %t_1860
  store i1 %t_1853, i1* %zf
  store i1 %t_1854, i1* %sf
  store i1 %t_1855, i1* %cf
  store i1 %t_1861, i1* %of
  %t_1862 = bitcast i8* %t_21 to i8*
  %t_1863 = load i8, i8* %t_1862
  %t_1864 = load i64, i64* %rax
  %t_1865 = trunc i64 %t_1864 to i8
  %t_1866 = add i8 %t_1863, %t_1865
  %t_1867 = bitcast i8* %t_21 to i8*
  store i8 %t_1866, i8* %t_1867
  %t_1868 = icmp eq i8 %t_1866, 0
  %t_1869 = icmp slt i8 %t_1866, 0
  %t_1870 = icmp ult i8 %t_1866, %t_1863
  %t_1871 = icmp slt i8 %t_1863, 0
  %t_1872 = icmp slt i8 %t_1865, 0
  %t_1873 = icmp slt i8 %t_1866, 0
  %t_1874 = xor i1 %t_1871, %t_1872
  %t_1875 = xor i1 %t_1871, %t_1873
  %t_1876 = and i1 %t_1874, %t_1875
  store i1 %t_1868, i1* %zf
  store i1 %t_1869, i1* %sf
  store i1 %t_1870, i1* %cf
  store i1 %t_1876, i1* %of
  %t_1877 = bitcast i8* %t_21 to i8*
  %t_1878 = load i8, i8* %t_1877
  %t_1879 = load i64, i64* %rax
  %t_1880 = trunc i64 %t_1879 to i8
  %t_1881 = add i8 %t_1878, %t_1880
  %t_1882 = bitcast i8* %t_21 to i8*
  store i8 %t_1881, i8* %t_1882
  %t_1883 = icmp eq i8 %t_1881, 0
  %t_1884 = icmp slt i8 %t_1881, 0
  %t_1885 = icmp ult i8 %t_1881, %t_1878
  %t_1886 = icmp slt i8 %t_1878, 0
  %t_1887 = icmp slt i8 %t_1880, 0
  %t_1888 = icmp slt i8 %t_1881, 0
  %t_1889 = xor i1 %t_1886, %t_1887
  %t_1890 = xor i1 %t_1886, %t_1888
  %t_1891 = and i1 %t_1889, %t_1890
  store i1 %t_1883, i1* %zf
  store i1 %t_1884, i1* %sf
  store i1 %t_1885, i1* %cf
  store i1 %t_1891, i1* %of
  %t_1892 = bitcast i8* %t_21 to i8*
  %t_1893 = load i8, i8* %t_1892
  %t_1894 = load i64, i64* %rax
  %t_1895 = trunc i64 %t_1894 to i8
  %t_1896 = add i8 %t_1893, %t_1895
  %t_1897 = bitcast i8* %t_21 to i8*
  store i8 %t_1896, i8* %t_1897
  %t_1898 = icmp eq i8 %t_1896, 0
  %t_1899 = icmp slt i8 %t_1896, 0
  %t_1900 = icmp ult i8 %t_1896, %t_1893
  %t_1901 = icmp slt i8 %t_1893, 0
  %t_1902 = icmp slt i8 %t_1895, 0
  %t_1903 = icmp slt i8 %t_1896, 0
  %t_1904 = xor i1 %t_1901, %t_1902
  %t_1905 = xor i1 %t_1901, %t_1903
  %t_1906 = and i1 %t_1904, %t_1905
  store i1 %t_1898, i1* %zf
  store i1 %t_1899, i1* %sf
  store i1 %t_1900, i1* %cf
  store i1 %t_1906, i1* %of
  %t_1907 = bitcast i8* %t_880 to i8*
  %t_1908 = load i8, i8* %t_1907
  %t_1909 = load i64, i64* %rax
  %t_1910 = trunc i64 %t_1909 to i8
  %t_1911 = add i8 %t_1908, %t_1910
  %t_1912 = bitcast i8* %t_880 to i8*
  store i8 %t_1911, i8* %t_1912
  %t_1913 = icmp eq i8 %t_1911, 0
  %t_1914 = icmp slt i8 %t_1911, 0
  %t_1915 = icmp ult i8 %t_1911, %t_1908
  %t_1916 = icmp slt i8 %t_1908, 0
  %t_1917 = icmp slt i8 %t_1910, 0
  %t_1918 = icmp slt i8 %t_1911, 0
  %t_1919 = xor i1 %t_1916, %t_1917
  %t_1920 = xor i1 %t_1916, %t_1918
  %t_1921 = and i1 %t_1919, %t_1920
  store i1 %t_1913, i1* %zf
  store i1 %t_1914, i1* %sf
  store i1 %t_1915, i1* %cf
  store i1 %t_1921, i1* %of
  %t_1922 = bitcast i8* %t_21 to i8*
  %t_1923 = load i8, i8* %t_1922
  %t_1924 = load i64, i64* %rax
  %t_1925 = trunc i64 %t_1924 to i8
  %t_1926 = add i8 %t_1923, %t_1925
  %t_1927 = bitcast i8* %t_21 to i8*
  store i8 %t_1926, i8* %t_1927
  %t_1928 = icmp eq i8 %t_1926, 0
  %t_1929 = icmp slt i8 %t_1926, 0
  %t_1930 = icmp ult i8 %t_1926, %t_1923
  %t_1931 = icmp slt i8 %t_1923, 0
  %t_1932 = icmp slt i8 %t_1925, 0
  %t_1933 = icmp slt i8 %t_1926, 0
  %t_1934 = xor i1 %t_1931, %t_1932
  %t_1935 = xor i1 %t_1931, %t_1933
  %t_1936 = and i1 %t_1934, %t_1935
  store i1 %t_1928, i1* %zf
  store i1 %t_1929, i1* %sf
  store i1 %t_1930, i1* %cf
  store i1 %t_1936, i1* %of
  %t_1937 = load i64, i64* %rax
  %t_1938 = trunc i64 %t_1937 to i8
  %t_1939 = add i8 %t_1938, 0
  %t_1940 = zext i8 %t_1939 to i64
  %t_1941 = load i64, i64* %rax
  %t_1942 = and i64 %t_1941, 18446744073709551360
  %t_1943 = or i64 %t_1942, %t_1940
  store i64 %t_1943, i64* %rax
  %t_1944 = icmp eq i8 %t_1939, 0
  %t_1945 = icmp slt i8 %t_1939, 0
  %t_1946 = icmp ult i8 %t_1939, %t_1938
  %t_1947 = icmp slt i8 %t_1938, 0
  %t_1948 = icmp slt i8 0, 0
  %t_1949 = icmp slt i8 %t_1939, 0
  %t_1950 = xor i1 %t_1947, %t_1948
  %t_1951 = xor i1 %t_1947, %t_1949
  %t_1952 = and i1 %t_1950, %t_1951
  store i1 %t_1944, i1* %zf
  store i1 %t_1945, i1* %sf
  store i1 %t_1946, i1* %cf
  store i1 %t_1952, i1* %of
  %t_1953 = bitcast i8* %t_21 to i8*
  %t_1954 = load i8, i8* %t_1953
  %t_1955 = load i64, i64* %rax
  %t_1956 = trunc i64 %t_1955 to i8
  %t_1957 = add i8 %t_1954, %t_1956
  %t_1958 = bitcast i8* %t_21 to i8*
  store i8 %t_1957, i8* %t_1958
  %t_1959 = icmp eq i8 %t_1957, 0
  %t_1960 = icmp slt i8 %t_1957, 0
  %t_1961 = icmp ult i8 %t_1957, %t_1954
  %t_1962 = icmp slt i8 %t_1954, 0
  %t_1963 = icmp slt i8 %t_1956, 0
  %t_1964 = icmp slt i8 %t_1957, 0
  %t_1965 = xor i1 %t_1962, %t_1963
  %t_1966 = xor i1 %t_1962, %t_1964
  %t_1967 = and i1 %t_1965, %t_1966
  store i1 %t_1959, i1* %zf
  store i1 %t_1960, i1* %sf
  store i1 %t_1961, i1* %cf
  store i1 %t_1967, i1* %of
  %t_1968 = load i64, i64* %rbx
  %t_1969 = inttoptr i64 %t_1968 to i8*
  %t_1970 = bitcast i8* %t_1969 to i8*
  %t_1971 = load i8, i8* %t_1970
  %t_1972 = load i64, i64* %rax
  %t_1973 = trunc i64 %t_1972 to i8
  %t_1974 = sub i8 %t_1971, %t_1973
  %t_1975 = icmp eq i8 %t_1974, 0
  %t_1976 = icmp slt i8 %t_1974, 0
  %t_1977 = icmp ult i8 %t_1971, %t_1973
  %t_1978 = icmp slt i8 %t_1971, 0
  %t_1979 = icmp slt i8 %t_1973, 0
  %t_1980 = icmp slt i8 %t_1974, 0
  %t_1981 = xor i1 %t_1978, %t_1979
  %t_1982 = xor i1 %t_1978, %t_1980
  %t_1983 = and i1 %t_1981, %t_1982
  store i1 %t_1975, i1* %zf
  store i1 %t_1976, i1* %sf
  store i1 %t_1977, i1* %cf
  store i1 %t_1983, i1* %of
  %t_1984 = bitcast i8* %t_21 to i8*
  %t_1985 = load i8, i8* %t_1984
  %t_1986 = load i64, i64* %rax
  %t_1987 = trunc i64 %t_1986 to i8
  %t_1988 = add i8 %t_1985, %t_1987
  %t_1989 = bitcast i8* %t_21 to i8*
  store i8 %t_1988, i8* %t_1989
  %t_1990 = icmp eq i8 %t_1988, 0
  %t_1991 = icmp slt i8 %t_1988, 0
  %t_1992 = icmp ult i8 %t_1988, %t_1985
  %t_1993 = icmp slt i8 %t_1985, 0
  %t_1994 = icmp slt i8 %t_1987, 0
  %t_1995 = icmp slt i8 %t_1988, 0
  %t_1996 = xor i1 %t_1993, %t_1994
  %t_1997 = xor i1 %t_1993, %t_1995
  %t_1998 = and i1 %t_1996, %t_1997
  store i1 %t_1990, i1* %zf
  store i1 %t_1991, i1* %sf
  store i1 %t_1992, i1* %cf
  store i1 %t_1998, i1* %of
  %t_1999 = bitcast i8* %t_21 to i8*
  %t_2000 = load i8, i8* %t_1999
  %t_2001 = load i64, i64* %rax
  %t_2002 = trunc i64 %t_2001 to i8
  %t_2003 = add i8 %t_2000, %t_2002
  %t_2004 = bitcast i8* %t_21 to i8*
  store i8 %t_2003, i8* %t_2004
  %t_2005 = icmp eq i8 %t_2003, 0
  %t_2006 = icmp slt i8 %t_2003, 0
  %t_2007 = icmp ult i8 %t_2003, %t_2000
  %t_2008 = icmp slt i8 %t_2000, 0
  %t_2009 = icmp slt i8 %t_2002, 0
  %t_2010 = icmp slt i8 %t_2003, 0
  %t_2011 = xor i1 %t_2008, %t_2009
  %t_2012 = xor i1 %t_2008, %t_2010
  %t_2013 = and i1 %t_2011, %t_2012
  store i1 %t_2005, i1* %zf
  store i1 %t_2006, i1* %sf
  store i1 %t_2007, i1* %cf
  store i1 %t_2013, i1* %of
  %t_2014 = bitcast i8* %t_21 to i8*
  %t_2015 = load i8, i8* %t_2014
  %t_2016 = load i64, i64* %rax
  %t_2017 = trunc i64 %t_2016 to i8
  %t_2018 = add i8 %t_2015, %t_2017
  %t_2019 = bitcast i8* %t_21 to i8*
  store i8 %t_2018, i8* %t_2019
  %t_2020 = icmp eq i8 %t_2018, 0
  %t_2021 = icmp slt i8 %t_2018, 0
  %t_2022 = icmp ult i8 %t_2018, %t_2015
  %t_2023 = icmp slt i8 %t_2015, 0
  %t_2024 = icmp slt i8 %t_2017, 0
  %t_2025 = icmp slt i8 %t_2018, 0
  %t_2026 = xor i1 %t_2023, %t_2024
  %t_2027 = xor i1 %t_2023, %t_2025
  %t_2028 = and i1 %t_2026, %t_2027
  store i1 %t_2020, i1* %zf
  store i1 %t_2021, i1* %sf
  store i1 %t_2022, i1* %cf
  store i1 %t_2028, i1* %of
  %t_2029 = bitcast i8* %t_1969 to i8*
  %t_2030 = load i8, i8* %t_2029
  %t_2031 = load i64, i64* %rax
  %t_2032 = trunc i64 %t_2031 to i8
  %t_2033 = sub i8 %t_2030, %t_2032
  %t_2034 = icmp eq i8 %t_2033, 0
  %t_2035 = icmp slt i8 %t_2033, 0
  %t_2036 = icmp ult i8 %t_2030, %t_2032
  %t_2037 = icmp slt i8 %t_2030, 0
  %t_2038 = icmp slt i8 %t_2032, 0
  %t_2039 = icmp slt i8 %t_2033, 0
  %t_2040 = xor i1 %t_2037, %t_2038
  %t_2041 = xor i1 %t_2037, %t_2039
  %t_2042 = and i1 %t_2040, %t_2041
  store i1 %t_2034, i1* %zf
  store i1 %t_2035, i1* %sf
  store i1 %t_2036, i1* %cf
  store i1 %t_2042, i1* %of
  %t_2043 = bitcast i8* %t_21 to i8*
  %t_2044 = load i8, i8* %t_2043
  %t_2045 = load i64, i64* %rax
  %t_2046 = trunc i64 %t_2045 to i8
  %t_2047 = add i8 %t_2044, %t_2046
  %t_2048 = bitcast i8* %t_21 to i8*
  store i8 %t_2047, i8* %t_2048
  %t_2049 = icmp eq i8 %t_2047, 0
  %t_2050 = icmp slt i8 %t_2047, 0
  %t_2051 = icmp ult i8 %t_2047, %t_2044
  %t_2052 = icmp slt i8 %t_2044, 0
  %t_2053 = icmp slt i8 %t_2046, 0
  %t_2054 = icmp slt i8 %t_2047, 0
  %t_2055 = xor i1 %t_2052, %t_2053
  %t_2056 = xor i1 %t_2052, %t_2054
  %t_2057 = and i1 %t_2055, %t_2056
  store i1 %t_2049, i1* %zf
  store i1 %t_2050, i1* %sf
  store i1 %t_2051, i1* %cf
  store i1 %t_2057, i1* %of
  %t_2058 = bitcast i8* %t_21 to i8*
  %t_2059 = load i8, i8* %t_2058
  %t_2060 = load i64, i64* %rax
  %t_2061 = trunc i64 %t_2060 to i8
  %t_2062 = add i8 %t_2059, %t_2061
  %t_2063 = bitcast i8* %t_21 to i8*
  store i8 %t_2062, i8* %t_2063
  %t_2064 = icmp eq i8 %t_2062, 0
  %t_2065 = icmp slt i8 %t_2062, 0
  %t_2066 = icmp ult i8 %t_2062, %t_2059
  %t_2067 = icmp slt i8 %t_2059, 0
  %t_2068 = icmp slt i8 %t_2061, 0
  %t_2069 = icmp slt i8 %t_2062, 0
  %t_2070 = xor i1 %t_2067, %t_2068
  %t_2071 = xor i1 %t_2067, %t_2069
  %t_2072 = and i1 %t_2070, %t_2071
  store i1 %t_2064, i1* %zf
  store i1 %t_2065, i1* %sf
  store i1 %t_2066, i1* %cf
  store i1 %t_2072, i1* %of
  %t_2073 = bitcast i8* %t_21 to i8*
  %t_2074 = load i8, i8* %t_2073
  %t_2075 = load i64, i64* %rax
  %t_2076 = trunc i64 %t_2075 to i8
  %t_2077 = add i8 %t_2074, %t_2076
  %t_2078 = bitcast i8* %t_21 to i8*
  store i8 %t_2077, i8* %t_2078
  %t_2079 = icmp eq i8 %t_2077, 0
  %t_2080 = icmp slt i8 %t_2077, 0
  %t_2081 = icmp ult i8 %t_2077, %t_2074
  %t_2082 = icmp slt i8 %t_2074, 0
  %t_2083 = icmp slt i8 %t_2076, 0
  %t_2084 = icmp slt i8 %t_2077, 0
  %t_2085 = xor i1 %t_2082, %t_2083
  %t_2086 = xor i1 %t_2082, %t_2084
  %t_2087 = and i1 %t_2085, %t_2086
  store i1 %t_2079, i1* %zf
  store i1 %t_2080, i1* %sf
  store i1 %t_2081, i1* %cf
  store i1 %t_2087, i1* %of
  %t_2088 = bitcast i8* %t_1969 to i8*
  %t_2089 = load i8, i8* %t_2088
  %t_2090 = load i64, i64* %rax
  %t_2091 = trunc i64 %t_2090 to i8
  %t_2092 = sub i8 %t_2089, %t_2091
  %t_2093 = icmp eq i8 %t_2092, 0
  %t_2094 = icmp slt i8 %t_2092, 0
  %t_2095 = icmp ult i8 %t_2089, %t_2091
  %t_2096 = icmp slt i8 %t_2089, 0
  %t_2097 = icmp slt i8 %t_2091, 0
  %t_2098 = icmp slt i8 %t_2092, 0
  %t_2099 = xor i1 %t_2096, %t_2097
  %t_2100 = xor i1 %t_2096, %t_2098
  %t_2101 = and i1 %t_2099, %t_2100
  store i1 %t_2093, i1* %zf
  store i1 %t_2094, i1* %sf
  store i1 %t_2095, i1* %cf
  store i1 %t_2101, i1* %of
  %t_2102 = bitcast i8* %t_21 to i8*
  %t_2103 = load i8, i8* %t_2102
  %t_2104 = load i64, i64* %rax
  %t_2105 = trunc i64 %t_2104 to i8
  %t_2106 = add i8 %t_2103, %t_2105
  %t_2107 = bitcast i8* %t_21 to i8*
  store i8 %t_2106, i8* %t_2107
  %t_2108 = icmp eq i8 %t_2106, 0
  %t_2109 = icmp slt i8 %t_2106, 0
  %t_2110 = icmp ult i8 %t_2106, %t_2103
  %t_2111 = icmp slt i8 %t_2103, 0
  %t_2112 = icmp slt i8 %t_2105, 0
  %t_2113 = icmp slt i8 %t_2106, 0
  %t_2114 = xor i1 %t_2111, %t_2112
  %t_2115 = xor i1 %t_2111, %t_2113
  %t_2116 = and i1 %t_2114, %t_2115
  store i1 %t_2108, i1* %zf
  store i1 %t_2109, i1* %sf
  store i1 %t_2110, i1* %cf
  store i1 %t_2116, i1* %of
  %t_2117 = bitcast i8* %t_21 to i8*
  %t_2118 = load i8, i8* %t_2117
  %t_2119 = load i64, i64* %rax
  %t_2120 = trunc i64 %t_2119 to i8
  %t_2121 = add i8 %t_2118, %t_2120
  %t_2122 = bitcast i8* %t_21 to i8*
  store i8 %t_2121, i8* %t_2122
  %t_2123 = icmp eq i8 %t_2121, 0
  %t_2124 = icmp slt i8 %t_2121, 0
  %t_2125 = icmp ult i8 %t_2121, %t_2118
  %t_2126 = icmp slt i8 %t_2118, 0
  %t_2127 = icmp slt i8 %t_2120, 0
  %t_2128 = icmp slt i8 %t_2121, 0
  %t_2129 = xor i1 %t_2126, %t_2127
  %t_2130 = xor i1 %t_2126, %t_2128
  %t_2131 = and i1 %t_2129, %t_2130
  store i1 %t_2123, i1* %zf
  store i1 %t_2124, i1* %sf
  store i1 %t_2125, i1* %cf
  store i1 %t_2131, i1* %of
  %t_2132 = bitcast i8* %t_21 to i8*
  %t_2133 = load i8, i8* %t_2132
  %t_2134 = load i64, i64* %rax
  %t_2135 = trunc i64 %t_2134 to i8
  %t_2136 = add i8 %t_2133, %t_2135
  %t_2137 = bitcast i8* %t_21 to i8*
  store i8 %t_2136, i8* %t_2137
  %t_2138 = icmp eq i8 %t_2136, 0
  %t_2139 = icmp slt i8 %t_2136, 0
  %t_2140 = icmp ult i8 %t_2136, %t_2133
  %t_2141 = icmp slt i8 %t_2133, 0
  %t_2142 = icmp slt i8 %t_2135, 0
  %t_2143 = icmp slt i8 %t_2136, 0
  %t_2144 = xor i1 %t_2141, %t_2142
  %t_2145 = xor i1 %t_2141, %t_2143
  %t_2146 = and i1 %t_2144, %t_2145
  store i1 %t_2138, i1* %zf
  store i1 %t_2139, i1* %sf
  store i1 %t_2140, i1* %cf
  store i1 %t_2146, i1* %of
  %t_2147 = bitcast i8* %t_21 to i8*
  %t_2148 = load i8, i8* %t_2147
  %t_2149 = load i64, i64* %rax
  %t_2150 = trunc i64 %t_2149 to i8
  %t_2151 = xor i8 %t_2148, %t_2150
  %t_2152 = bitcast i8* %t_21 to i8*
  store i8 %t_2151, i8* %t_2152
  %t_2153 = icmp eq i8 %t_2151, 0
  %t_2154 = icmp slt i8 %t_2151, 0
  %t_2155 = icmp eq i64 0, 1
  store i1 %t_2153, i1* %zf
  store i1 %t_2154, i1* %sf
  store i1 %t_2155, i1* %cf
  store i1 %t_2155, i1* %of
  %t_2156 = bitcast i8* %t_21 to i8*
  %t_2157 = load i8, i8* %t_2156
  %t_2158 = load i64, i64* %rax
  %t_2159 = trunc i64 %t_2158 to i8
  %t_2160 = add i8 %t_2157, %t_2159
  %t_2161 = bitcast i8* %t_21 to i8*
  store i8 %t_2160, i8* %t_2161
  %t_2162 = icmp eq i8 %t_2160, 0
  %t_2163 = icmp slt i8 %t_2160, 0
  %t_2164 = icmp ult i8 %t_2160, %t_2157
  %t_2165 = icmp slt i8 %t_2157, 0
  %t_2166 = icmp slt i8 %t_2159, 0
  %t_2167 = icmp slt i8 %t_2160, 0
  %t_2168 = xor i1 %t_2165, %t_2166
  %t_2169 = xor i1 %t_2165, %t_2167
  %t_2170 = and i1 %t_2168, %t_2169
  store i1 %t_2162, i1* %zf
  store i1 %t_2163, i1* %sf
  store i1 %t_2164, i1* %cf
  store i1 %t_2170, i1* %of
  %t_2171 = bitcast i8* %t_21 to i8*
  %t_2172 = load i8, i8* %t_2171
  %t_2173 = load i64, i64* %rax
  %t_2174 = trunc i64 %t_2173 to i8
  %t_2175 = add i8 %t_2172, %t_2174
  %t_2176 = bitcast i8* %t_21 to i8*
  store i8 %t_2175, i8* %t_2176
  %t_2177 = icmp eq i8 %t_2175, 0
  %t_2178 = icmp slt i8 %t_2175, 0
  %t_2179 = icmp ult i8 %t_2175, %t_2172
  %t_2180 = icmp slt i8 %t_2172, 0
  %t_2181 = icmp slt i8 %t_2174, 0
  %t_2182 = icmp slt i8 %t_2175, 0
  %t_2183 = xor i1 %t_2180, %t_2181
  %t_2184 = xor i1 %t_2180, %t_2182
  %t_2185 = and i1 %t_2183, %t_2184
  store i1 %t_2177, i1* %zf
  store i1 %t_2178, i1* %sf
  store i1 %t_2179, i1* %cf
  store i1 %t_2185, i1* %of
  %t_2186 = bitcast i8* %t_21 to i8*
  %t_2187 = load i8, i8* %t_2186
  %t_2188 = load i64, i64* %rax
  %t_2189 = trunc i64 %t_2188 to i8
  %t_2190 = add i8 %t_2187, %t_2189
  %t_2191 = bitcast i8* %t_21 to i8*
  store i8 %t_2190, i8* %t_2191
  %t_2192 = icmp eq i8 %t_2190, 0
  %t_2193 = icmp slt i8 %t_2190, 0
  %t_2194 = icmp ult i8 %t_2190, %t_2187
  %t_2195 = icmp slt i8 %t_2187, 0
  %t_2196 = icmp slt i8 %t_2189, 0
  %t_2197 = icmp slt i8 %t_2190, 0
  %t_2198 = xor i1 %t_2195, %t_2196
  %t_2199 = xor i1 %t_2195, %t_2197
  %t_2200 = and i1 %t_2198, %t_2199
  store i1 %t_2192, i1* %zf
  store i1 %t_2193, i1* %sf
  store i1 %t_2194, i1* %cf
  store i1 %t_2200, i1* %of
  %t_2201 = bitcast i8* %t_21 to i8*
  %t_2202 = load i8, i8* %t_2201
  %t_2203 = load i64, i64* %rax
  %t_2204 = trunc i64 %t_2203 to i8
  %t_2205 = xor i8 %t_2202, %t_2204
  %t_2206 = bitcast i8* %t_21 to i8*
  store i8 %t_2205, i8* %t_2206
  %t_2207 = icmp eq i8 %t_2205, 0
  %t_2208 = icmp slt i8 %t_2205, 0
  %t_2209 = icmp eq i64 0, 1
  store i1 %t_2207, i1* %zf
  store i1 %t_2208, i1* %sf
  store i1 %t_2209, i1* %cf
  store i1 %t_2209, i1* %of
  %t_2210 = bitcast i8* %t_21 to i8*
  %t_2211 = load i8, i8* %t_2210
  %t_2212 = load i64, i64* %rax
  %t_2213 = trunc i64 %t_2212 to i8
  %t_2214 = add i8 %t_2211, %t_2213
  %t_2215 = bitcast i8* %t_21 to i8*
  store i8 %t_2214, i8* %t_2215
  %t_2216 = icmp eq i8 %t_2214, 0
  %t_2217 = icmp slt i8 %t_2214, 0
  %t_2218 = icmp ult i8 %t_2214, %t_2211
  %t_2219 = icmp slt i8 %t_2211, 0
  %t_2220 = icmp slt i8 %t_2213, 0
  %t_2221 = icmp slt i8 %t_2214, 0
  %t_2222 = xor i1 %t_2219, %t_2220
  %t_2223 = xor i1 %t_2219, %t_2221
  %t_2224 = and i1 %t_2222, %t_2223
  store i1 %t_2216, i1* %zf
  store i1 %t_2217, i1* %sf
  store i1 %t_2218, i1* %cf
  store i1 %t_2224, i1* %of
  %t_2225 = bitcast i8* %t_21 to i8*
  %t_2226 = load i8, i8* %t_2225
  %t_2227 = load i64, i64* %rax
  %t_2228 = trunc i64 %t_2227 to i8
  %t_2229 = add i8 %t_2226, %t_2228
  %t_2230 = bitcast i8* %t_21 to i8*
  store i8 %t_2229, i8* %t_2230
  %t_2231 = icmp eq i8 %t_2229, 0
  %t_2232 = icmp slt i8 %t_2229, 0
  %t_2233 = icmp ult i8 %t_2229, %t_2226
  %t_2234 = icmp slt i8 %t_2226, 0
  %t_2235 = icmp slt i8 %t_2228, 0
  %t_2236 = icmp slt i8 %t_2229, 0
  %t_2237 = xor i1 %t_2234, %t_2235
  %t_2238 = xor i1 %t_2234, %t_2236
  %t_2239 = and i1 %t_2237, %t_2238
  store i1 %t_2231, i1* %zf
  store i1 %t_2232, i1* %sf
  store i1 %t_2233, i1* %cf
  store i1 %t_2239, i1* %of
  %t_2240 = bitcast i8* %t_21 to i8*
  %t_2241 = load i8, i8* %t_2240
  %t_2242 = load i64, i64* %rax
  %t_2243 = trunc i64 %t_2242 to i8
  %t_2244 = add i8 %t_2241, %t_2243
  %t_2245 = bitcast i8* %t_21 to i8*
  store i8 %t_2244, i8* %t_2245
  %t_2246 = icmp eq i8 %t_2244, 0
  %t_2247 = icmp slt i8 %t_2244, 0
  %t_2248 = icmp ult i8 %t_2244, %t_2241
  %t_2249 = icmp slt i8 %t_2241, 0
  %t_2250 = icmp slt i8 %t_2243, 0
  %t_2251 = icmp slt i8 %t_2244, 0
  %t_2252 = xor i1 %t_2249, %t_2250
  %t_2253 = xor i1 %t_2249, %t_2251
  %t_2254 = and i1 %t_2252, %t_2253
  store i1 %t_2246, i1* %zf
  store i1 %t_2247, i1* %sf
  store i1 %t_2248, i1* %cf
  store i1 %t_2254, i1* %of
  %t_2255 = bitcast i8* %t_21 to i8*
  %t_2256 = load i8, i8* %t_2255
  %t_2257 = load i64, i64* %rax
  %t_2258 = trunc i64 %t_2257 to i8
  %t_2259 = or i8 %t_2256, %t_2258
  %t_2260 = bitcast i8* %t_21 to i8*
  store i8 %t_2259, i8* %t_2260
  %t_2261 = icmp eq i8 %t_2259, 0
  %t_2262 = icmp slt i8 %t_2259, 0
  %t_2263 = icmp eq i64 0, 1
  store i1 %t_2261, i1* %zf
  store i1 %t_2262, i1* %sf
  store i1 %t_2263, i1* %cf
  store i1 %t_2263, i1* %of
  %t_2264 = bitcast i8* %t_21 to i8*
  %t_2265 = load i8, i8* %t_2264
  %t_2266 = load i64, i64* %rax
  %t_2267 = trunc i64 %t_2266 to i8
  %t_2268 = add i8 %t_2265, %t_2267
  %t_2269 = bitcast i8* %t_21 to i8*
  store i8 %t_2268, i8* %t_2269
  %t_2270 = icmp eq i8 %t_2268, 0
  %t_2271 = icmp slt i8 %t_2268, 0
  %t_2272 = icmp ult i8 %t_2268, %t_2265
  %t_2273 = icmp slt i8 %t_2265, 0
  %t_2274 = icmp slt i8 %t_2267, 0
  %t_2275 = icmp slt i8 %t_2268, 0
  %t_2276 = xor i1 %t_2273, %t_2274
  %t_2277 = xor i1 %t_2273, %t_2275
  %t_2278 = and i1 %t_2276, %t_2277
  store i1 %t_2270, i1* %zf
  store i1 %t_2271, i1* %sf
  store i1 %t_2272, i1* %cf
  store i1 %t_2278, i1* %of
  %t_2279 = bitcast i8* %t_21 to i8*
  %t_2280 = load i8, i8* %t_2279
  %t_2281 = load i64, i64* %rax
  %t_2282 = trunc i64 %t_2281 to i8
  %t_2283 = add i8 %t_2280, %t_2282
  %t_2284 = bitcast i8* %t_21 to i8*
  store i8 %t_2283, i8* %t_2284
  %t_2285 = icmp eq i8 %t_2283, 0
  %t_2286 = icmp slt i8 %t_2283, 0
  %t_2287 = icmp ult i8 %t_2283, %t_2280
  %t_2288 = icmp slt i8 %t_2280, 0
  %t_2289 = icmp slt i8 %t_2282, 0
  %t_2290 = icmp slt i8 %t_2283, 0
  %t_2291 = xor i1 %t_2288, %t_2289
  %t_2292 = xor i1 %t_2288, %t_2290
  %t_2293 = and i1 %t_2291, %t_2292
  store i1 %t_2285, i1* %zf
  store i1 %t_2286, i1* %sf
  store i1 %t_2287, i1* %cf
  store i1 %t_2293, i1* %of
  %t_2294 = bitcast i8* %t_21 to i8*
  %t_2295 = load i8, i8* %t_2294
  %t_2296 = load i64, i64* %rax
  %t_2297 = trunc i64 %t_2296 to i8
  %t_2298 = add i8 %t_2295, %t_2297
  %t_2299 = bitcast i8* %t_21 to i8*
  store i8 %t_2298, i8* %t_2299
  %t_2300 = icmp eq i8 %t_2298, 0
  %t_2301 = icmp slt i8 %t_2298, 0
  %t_2302 = icmp ult i8 %t_2298, %t_2295
  %t_2303 = icmp slt i8 %t_2295, 0
  %t_2304 = icmp slt i8 %t_2297, 0
  %t_2305 = icmp slt i8 %t_2298, 0
  %t_2306 = xor i1 %t_2303, %t_2304
  %t_2307 = xor i1 %t_2303, %t_2305
  %t_2308 = and i1 %t_2306, %t_2307
  store i1 %t_2300, i1* %zf
  store i1 %t_2301, i1* %sf
  store i1 %t_2302, i1* %cf
  store i1 %t_2308, i1* %of
  %t_2309 = load i64, i64* %rax
  %t_2310 = trunc i64 %t_2309 to i8
  %t_2311 = add i8 %t_2310, 0
  %t_2312 = zext i8 %t_2311 to i64
  %t_2313 = load i64, i64* %rax
  %t_2314 = and i64 %t_2313, 18446744073709551360
  %t_2315 = or i64 %t_2314, %t_2312
  store i64 %t_2315, i64* %rax
  %t_2316 = icmp eq i8 %t_2311, 0
  %t_2317 = icmp slt i8 %t_2311, 0
  %t_2318 = icmp ult i8 %t_2311, %t_2310
  %t_2319 = icmp slt i8 %t_2310, 0
  %t_2320 = icmp slt i8 0, 0
  %t_2321 = icmp slt i8 %t_2311, 0
  %t_2322 = xor i1 %t_2319, %t_2320
  %t_2323 = xor i1 %t_2319, %t_2321
  %t_2324 = and i1 %t_2322, %t_2323
  store i1 %t_2316, i1* %zf
  store i1 %t_2317, i1* %sf
  store i1 %t_2318, i1* %cf
  store i1 %t_2324, i1* %of
  %t_2325 = bitcast i8* %t_21 to i8*
  %t_2326 = load i8, i8* %t_2325
  %t_2327 = load i64, i64* %rax
  %t_2328 = trunc i64 %t_2327 to i8
  %t_2329 = add i8 %t_2326, %t_2328
  %t_2330 = bitcast i8* %t_21 to i8*
  store i8 %t_2329, i8* %t_2330
  %t_2331 = icmp eq i8 %t_2329, 0
  %t_2332 = icmp slt i8 %t_2329, 0
  %t_2333 = icmp ult i8 %t_2329, %t_2326
  %t_2334 = icmp slt i8 %t_2326, 0
  %t_2335 = icmp slt i8 %t_2328, 0
  %t_2336 = icmp slt i8 %t_2329, 0
  %t_2337 = xor i1 %t_2334, %t_2335
  %t_2338 = xor i1 %t_2334, %t_2336
  %t_2339 = and i1 %t_2337, %t_2338
  store i1 %t_2331, i1* %zf
  store i1 %t_2332, i1* %sf
  store i1 %t_2333, i1* %cf
  store i1 %t_2339, i1* %of
  %t_2340 = load i64, i64* %rax
  %t_2341 = trunc i64 %t_2340 to i8
  %t_2342 = add i8 %t_2341, 0
  %t_2343 = zext i8 %t_2342 to i64
  %t_2344 = load i64, i64* %rax
  %t_2345 = and i64 %t_2344, 18446744073709551360
  %t_2346 = or i64 %t_2345, %t_2343
  store i64 %t_2346, i64* %rax
  %t_2347 = icmp eq i8 %t_2342, 0
  %t_2348 = icmp slt i8 %t_2342, 0
  %t_2349 = icmp ult i8 %t_2342, %t_2341
  %t_2350 = icmp slt i8 %t_2341, 0
  %t_2351 = icmp slt i8 0, 0
  %t_2352 = icmp slt i8 %t_2342, 0
  %t_2353 = xor i1 %t_2350, %t_2351
  %t_2354 = xor i1 %t_2350, %t_2352
  %t_2355 = and i1 %t_2353, %t_2354
  store i1 %t_2347, i1* %zf
  store i1 %t_2348, i1* %sf
  store i1 %t_2349, i1* %cf
  store i1 %t_2355, i1* %of
  %t_2356 = bitcast i8* %t_21 to i8*
  %t_2357 = load i8, i8* %t_2356
  %t_2358 = load i64, i64* %rax
  %t_2359 = trunc i64 %t_2358 to i8
  %t_2360 = add i8 %t_2357, %t_2359
  %t_2361 = bitcast i8* %t_21 to i8*
  store i8 %t_2360, i8* %t_2361
  %t_2362 = icmp eq i8 %t_2360, 0
  %t_2363 = icmp slt i8 %t_2360, 0
  %t_2364 = icmp ult i8 %t_2360, %t_2357
  %t_2365 = icmp slt i8 %t_2357, 0
  %t_2366 = icmp slt i8 %t_2359, 0
  %t_2367 = icmp slt i8 %t_2360, 0
  %t_2368 = xor i1 %t_2365, %t_2366
  %t_2369 = xor i1 %t_2365, %t_2367
  %t_2370 = and i1 %t_2368, %t_2369
  store i1 %t_2362, i1* %zf
  store i1 %t_2363, i1* %sf
  store i1 %t_2364, i1* %cf
  store i1 %t_2370, i1* %of
  %t_2371 = load i64, i64* %rsp
  %t_2372 = sub i64 %t_2371, 8
  store i64 %t_2372, i64* %rsp
  %t_2373 = inttoptr i64 %t_2372 to i64*
  store i64 3, i64* %t_2373
  %t_2374 = bitcast i8* %t_21 to i8*
  %t_2375 = load i8, i8* %t_2374
  %t_2376 = load i64, i64* %rax
  %t_2377 = trunc i64 %t_2376 to i8
  %t_2378 = add i8 %t_2375, %t_2377
  %t_2379 = bitcast i8* %t_21 to i8*
  store i8 %t_2378, i8* %t_2379
  %t_2380 = icmp eq i8 %t_2378, 0
  %t_2381 = icmp slt i8 %t_2378, 0
  %t_2382 = icmp ult i8 %t_2378, %t_2375
  %t_2383 = icmp slt i8 %t_2375, 0
  %t_2384 = icmp slt i8 %t_2377, 0
  %t_2385 = icmp slt i8 %t_2378, 0
  %t_2386 = xor i1 %t_2383, %t_2384
  %t_2387 = xor i1 %t_2383, %t_2385
  %t_2388 = and i1 %t_2386, %t_2387
  store i1 %t_2380, i1* %zf
  store i1 %t_2381, i1* %sf
  store i1 %t_2382, i1* %cf
  store i1 %t_2388, i1* %of
  %t_2389 = load i64, i64* %rax
  %t_2390 = add i64 %t_2389, 3
  %t_2391 = inttoptr i64 %t_2390 to i8*
  %t_2392 = bitcast i8* %t_2391 to i8*
  %t_2393 = load i8, i8* %t_2392
  %t_2394 = trunc i64 0 to i8
  %t_2395 = add i8 %t_2393, %t_2394
  %t_2396 = bitcast i8* %t_2391 to i8*
  store i8 %t_2395, i8* %t_2396
  %t_2397 = icmp eq i8 %t_2395, 0
  %t_2398 = icmp slt i8 %t_2395, 0
  %t_2399 = icmp ult i8 %t_2395, %t_2393
  %t_2400 = icmp slt i8 %t_2393, 0
  %t_2401 = icmp slt i8 %t_2394, 0
  %t_2402 = icmp slt i8 %t_2395, 0
  %t_2403 = xor i1 %t_2400, %t_2401
  %t_2404 = xor i1 %t_2400, %t_2402
  %t_2405 = and i1 %t_2403, %t_2404
  store i1 %t_2397, i1* %zf
  store i1 %t_2398, i1* %sf
  store i1 %t_2399, i1* %cf
  store i1 %t_2405, i1* %of
  %t_2406 = bitcast i8* %t_21 to i8*
  %t_2407 = load i8, i8* %t_2406
  %t_2408 = load i64, i64* %rax
  %t_2409 = trunc i64 %t_2408 to i8
  %t_2410 = add i8 %t_2407, %t_2409
  %t_2411 = bitcast i8* %t_21 to i8*
  store i8 %t_2410, i8* %t_2411
  %t_2412 = icmp eq i8 %t_2410, 0
  %t_2413 = icmp slt i8 %t_2410, 0
  %t_2414 = icmp ult i8 %t_2410, %t_2407
  %t_2415 = icmp slt i8 %t_2407, 0
  %t_2416 = icmp slt i8 %t_2409, 0
  %t_2417 = icmp slt i8 %t_2410, 0
  %t_2418 = xor i1 %t_2415, %t_2416
  %t_2419 = xor i1 %t_2415, %t_2417
  %t_2420 = and i1 %t_2418, %t_2419
  store i1 %t_2412, i1* %zf
  store i1 %t_2413, i1* %sf
  store i1 %t_2414, i1* %cf
  store i1 %t_2420, i1* %of
  %t_2421 = bitcast i8* %t_21 to i8*
  %t_2422 = load i8, i8* %t_2421
  %t_2423 = load i64, i64* %rax
  %t_2424 = trunc i64 %t_2423 to i8
  %t_2425 = add i8 %t_2422, %t_2424
  %t_2426 = bitcast i8* %t_21 to i8*
  store i8 %t_2425, i8* %t_2426
  %t_2427 = icmp eq i8 %t_2425, 0
  %t_2428 = icmp slt i8 %t_2425, 0
  %t_2429 = icmp ult i8 %t_2425, %t_2422
  %t_2430 = icmp slt i8 %t_2422, 0
  %t_2431 = icmp slt i8 %t_2424, 0
  %t_2432 = icmp slt i8 %t_2425, 0
  %t_2433 = xor i1 %t_2430, %t_2431
  %t_2434 = xor i1 %t_2430, %t_2432
  %t_2435 = and i1 %t_2433, %t_2434
  store i1 %t_2427, i1* %zf
  store i1 %t_2428, i1* %sf
  store i1 %t_2429, i1* %cf
  store i1 %t_2435, i1* %of
  %t_2436 = bitcast i8* %t_21 to i8*
  %t_2437 = load i8, i8* %t_2436
  %t_2438 = load i64, i64* %rax
  %t_2439 = trunc i64 %t_2438 to i8
  %t_2440 = add i8 %t_2437, %t_2439
  %t_2441 = bitcast i8* %t_21 to i8*
  store i8 %t_2440, i8* %t_2441
  %t_2442 = icmp eq i8 %t_2440, 0
  %t_2443 = icmp slt i8 %t_2440, 0
  %t_2444 = icmp ult i8 %t_2440, %t_2437
  %t_2445 = icmp slt i8 %t_2437, 0
  %t_2446 = icmp slt i8 %t_2439, 0
  %t_2447 = icmp slt i8 %t_2440, 0
  %t_2448 = xor i1 %t_2445, %t_2446
  %t_2449 = xor i1 %t_2445, %t_2447
  %t_2450 = and i1 %t_2448, %t_2449
  store i1 %t_2442, i1* %zf
  store i1 %t_2443, i1* %sf
  store i1 %t_2444, i1* %cf
  store i1 %t_2450, i1* %of
  %t_2451 = load i64, i64* %rsp
  %t_2452 = sub i64 %t_2451, 8
  store i64 %t_2452, i64* %rsp
  %t_2453 = inttoptr i64 %t_2452 to i64*
  store i64 3, i64* %t_2453
  %t_2454 = bitcast i8* %t_21 to i8*
  %t_2455 = load i8, i8* %t_2454
  %t_2456 = load i64, i64* %rax
  %t_2457 = trunc i64 %t_2456 to i8
  %t_2458 = add i8 %t_2455, %t_2457
  %t_2459 = bitcast i8* %t_21 to i8*
  store i8 %t_2458, i8* %t_2459
  %t_2460 = icmp eq i8 %t_2458, 0
  %t_2461 = icmp slt i8 %t_2458, 0
  %t_2462 = icmp ult i8 %t_2458, %t_2455
  %t_2463 = icmp slt i8 %t_2455, 0
  %t_2464 = icmp slt i8 %t_2457, 0
  %t_2465 = icmp slt i8 %t_2458, 0
  %t_2466 = xor i1 %t_2463, %t_2464
  %t_2467 = xor i1 %t_2463, %t_2465
  %t_2468 = and i1 %t_2466, %t_2467
  store i1 %t_2460, i1* %zf
  store i1 %t_2461, i1* %sf
  store i1 %t_2462, i1* %cf
  store i1 %t_2468, i1* %of
  %t_2469 = bitcast i8* %t_880 to i8*
  %t_2470 = load i8, i8* %t_2469
  %t_2471 = load i64, i64* %rax
  %t_2472 = trunc i64 %t_2471 to i8
  %t_2473 = add i8 %t_2470, %t_2472
  %t_2474 = bitcast i8* %t_880 to i8*
  store i8 %t_2473, i8* %t_2474
  %t_2475 = icmp eq i8 %t_2473, 0
  %t_2476 = icmp slt i8 %t_2473, 0
  %t_2477 = icmp ult i8 %t_2473, %t_2470
  %t_2478 = icmp slt i8 %t_2470, 0
  %t_2479 = icmp slt i8 %t_2472, 0
  %t_2480 = icmp slt i8 %t_2473, 0
  %t_2481 = xor i1 %t_2478, %t_2479
  %t_2482 = xor i1 %t_2478, %t_2480
  %t_2483 = and i1 %t_2481, %t_2482
  store i1 %t_2475, i1* %zf
  store i1 %t_2476, i1* %sf
  store i1 %t_2477, i1* %cf
  store i1 %t_2483, i1* %of
  %t_2484 = bitcast i8* %t_21 to i8*
  %t_2485 = load i8, i8* %t_2484
  %t_2486 = load i64, i64* %rax
  %t_2487 = trunc i64 %t_2486 to i8
  %t_2488 = add i8 %t_2485, %t_2487
  %t_2489 = bitcast i8* %t_21 to i8*
  store i8 %t_2488, i8* %t_2489
  %t_2490 = icmp eq i8 %t_2488, 0
  %t_2491 = icmp slt i8 %t_2488, 0
  %t_2492 = icmp ult i8 %t_2488, %t_2485
  %t_2493 = icmp slt i8 %t_2485, 0
  %t_2494 = icmp slt i8 %t_2487, 0
  %t_2495 = icmp slt i8 %t_2488, 0
  %t_2496 = xor i1 %t_2493, %t_2494
  %t_2497 = xor i1 %t_2493, %t_2495
  %t_2498 = and i1 %t_2496, %t_2497
  store i1 %t_2490, i1* %zf
  store i1 %t_2491, i1* %sf
  store i1 %t_2492, i1* %cf
  store i1 %t_2498, i1* %of
  %t_2499 = bitcast i8* %t_21 to i8*
  %t_2500 = load i8, i8* %t_2499
  %t_2501 = load i64, i64* %rax
  %t_2502 = trunc i64 %t_2501 to i8
  %t_2503 = add i8 %t_2500, %t_2502
  %t_2504 = bitcast i8* %t_21 to i8*
  store i8 %t_2503, i8* %t_2504
  %t_2505 = icmp eq i8 %t_2503, 0
  %t_2506 = icmp slt i8 %t_2503, 0
  %t_2507 = icmp ult i8 %t_2503, %t_2500
  %t_2508 = icmp slt i8 %t_2500, 0
  %t_2509 = icmp slt i8 %t_2502, 0
  %t_2510 = icmp slt i8 %t_2503, 0
  %t_2511 = xor i1 %t_2508, %t_2509
  %t_2512 = xor i1 %t_2508, %t_2510
  %t_2513 = and i1 %t_2511, %t_2512
  store i1 %t_2505, i1* %zf
  store i1 %t_2506, i1* %sf
  store i1 %t_2507, i1* %cf
  store i1 %t_2513, i1* %of
  %t_2514 = bitcast i8* %t_880 to i8*
  %t_2515 = load i8, i8* %t_2514
  %t_2516 = load i64, i64* %rax
  %t_2517 = trunc i64 %t_2516 to i8
  %t_2518 = add i8 %t_2515, %t_2517
  %t_2519 = bitcast i8* %t_880 to i8*
  store i8 %t_2518, i8* %t_2519
  %t_2520 = icmp eq i8 %t_2518, 0
  %t_2521 = icmp slt i8 %t_2518, 0
  %t_2522 = icmp ult i8 %t_2518, %t_2515
  %t_2523 = icmp slt i8 %t_2515, 0
  %t_2524 = icmp slt i8 %t_2517, 0
  %t_2525 = icmp slt i8 %t_2518, 0
  %t_2526 = xor i1 %t_2523, %t_2524
  %t_2527 = xor i1 %t_2523, %t_2525
  %t_2528 = and i1 %t_2526, %t_2527
  store i1 %t_2520, i1* %zf
  store i1 %t_2521, i1* %sf
  store i1 %t_2522, i1* %cf
  store i1 %t_2528, i1* %of
  %t_2529 = bitcast i8* %t_21 to i8*
  %t_2530 = load i8, i8* %t_2529
  %t_2531 = load i64, i64* %rax
  %t_2532 = trunc i64 %t_2531 to i8
  %t_2533 = add i8 %t_2530, %t_2532
  %t_2534 = bitcast i8* %t_21 to i8*
  store i8 %t_2533, i8* %t_2534
  %t_2535 = icmp eq i8 %t_2533, 0
  %t_2536 = icmp slt i8 %t_2533, 0
  %t_2537 = icmp ult i8 %t_2533, %t_2530
  %t_2538 = icmp slt i8 %t_2530, 0
  %t_2539 = icmp slt i8 %t_2532, 0
  %t_2540 = icmp slt i8 %t_2533, 0
  %t_2541 = xor i1 %t_2538, %t_2539
  %t_2542 = xor i1 %t_2538, %t_2540
  %t_2543 = and i1 %t_2541, %t_2542
  store i1 %t_2535, i1* %zf
  store i1 %t_2536, i1* %sf
  store i1 %t_2537, i1* %cf
  store i1 %t_2543, i1* %of
  %t_2544 = load i64, i64* %rax
  ret i64 %t_2544
  
}
