
target/ticket19/selection-fix/canonical-storage/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000ac3040 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  ac3040:	48 81 ec 80 07 00 00 	sub    rsp,0x780
  ac3047:	c5 fc 10 82 00 04 00 	vmovups ymm0,YMMWORD PTR [rdx+0x400]
  ac304e:	00 
  ac304f:	c5 fc 10 8a 20 04 00 	vmovups ymm1,YMMWORD PTR [rdx+0x420]
  ac3056:	00 
  ac3057:	c5 fc 10 92 40 04 00 	vmovups ymm2,YMMWORD PTR [rdx+0x440]
  ac305e:	00 
  ac305f:	c5 fc 10 9a 60 04 00 	vmovups ymm3,YMMWORD PTR [rdx+0x460]
  ac3066:	00 
  ac3067:	c5 fc 10 a2 a0 04 00 	vmovups ymm4,YMMWORD PTR [rdx+0x4a0]
  ac306e:	00 
  ac306f:	c5 fc 10 aa 80 04 00 	vmovups ymm5,YMMWORD PTR [rdx+0x480]
  ac3076:	00 
  ac3077:	31 c0                	xor    eax,eax
  ac3079:	c4 e2 7d 19 35 3e 1c 	vbroadcastsd ymm6,QWORD PTR [rip+0xffffffffff5b1c3e]        # 74cc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x22c0>
  ac3080:	5b ff 
  ac3082:	c4 e2 7d 18 3d b1 21 	vbroadcastss ymm7,DWORD PTR [rip+0xffffffffff5b21b1]        # 7523c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x283c>
  ac3089:	5b ff 
  ac308b:	c4 62 7d 19 05 fc 18 	vbroadcastsd ymm8,QWORD PTR [rip+0xffffffffff5b18fc]        # 74990 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f90>
  ac3092:	5b ff 
  ac3094:	c4 62 7d 18 0d 7f 22 	vbroadcastss ymm9,DWORD PTR [rip+0xffffffffff5b227f]        # 7531c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x291c>
  ac309b:	5b ff 
  ac309d:	48 89 f9             	mov    rcx,rdi
  ac30a0:	45 31 c0             	xor    r8d,r8d
  ac30a3:	eb 69                	jmp    ac310e <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0xce>
  ac30a5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  ac30ac:	00 00 00 00 
  ac30b0:	62 a1 6c 00 16 d3    	vmovlhps xmm18,xmm18,xmm19
  ac30b6:	62 a1 5c 00 16 de    	vmovlhps xmm19,xmm20,xmm22
  ac30bc:	62 e1 7c 08 11 5c c4 	vmovups XMMWORD PTR [rsp+rax*8-0x50],xmm19
  ac30c3:	fb 
  ac30c4:	62 e1 7c 08 11 54 c4 	vmovups XMMWORD PTR [rsp+rax*8-0x60],xmm18
  ac30cb:	fa 
  ac30cc:	c4 41 08 16 f7       	vmovlhps xmm14,xmm14,xmm15
  ac30d1:	62 31 74 00 16 f8    	vmovlhps xmm15,xmm17,xmm16
  ac30d7:	c5 78 11 7c c4 d0    	vmovups XMMWORD PTR [rsp+rax*8-0x30],xmm15
  ac30dd:	c5 78 11 74 c4 c0    	vmovups XMMWORD PTR [rsp+rax*8-0x40],xmm14
  ac30e3:	c4 41 10 16 db       	vmovlhps xmm11,xmm13,xmm11
  ac30e8:	c4 41 18 16 d2       	vmovlhps xmm10,xmm12,xmm10
  ac30ed:	c5 78 11 54 c4 f0    	vmovups XMMWORD PTR [rsp+rax*8-0x10],xmm10
  ac30f3:	c5 78 11 5c c4 e0    	vmovups XMMWORD PTR [rsp+rax*8-0x20],xmm11
  ac30f9:	48 83 c0 40          	add    rax,0x40
  ac30fd:	48 83 c1 20          	add    rcx,0x20
  ac3101:	41 f6 c0 01          	test   r8b,0x1
  ac3105:	41 b0 01             	mov    r8b,0x1
  ac3108:	0f 85 df 04 00 00    	jne    ac35ed <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x5ad>
  ac310e:	48 85 c0             	test   rax,rax
  ac3111:	74 7d                	je     ac3190 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x150>
  ac3113:	c5 7b 10 39          	vmovsd xmm15,QWORD PTR [rcx]
  ac3117:	c5 7b 10 71 28       	vmovsd xmm14,QWORD PTR [rcx+0x28]
  ac311c:	c5 7b 10 51 50       	vmovsd xmm10,QWORD PTR [rcx+0x50]
  ac3121:	c5 7b 10 61 78       	vmovsd xmm12,QWORD PTR [rcx+0x78]
  ac3126:	62 e1 ff 08 10 61 14 	vmovsd xmm20,QWORD PTR [rcx+0xa0]
  ac312d:	62 e1 ff 08 10 49 19 	vmovsd xmm17,QWORD PTR [rcx+0xc8]
  ac3134:	c5 7b 10 99 f0 00 00 	vmovsd xmm11,QWORD PTR [rcx+0xf0]
  ac313b:	00 
  ac313c:	c5 7b 10 a9 18 01 00 	vmovsd xmm13,QWORD PTR [rcx+0x118]
  ac3143:	00 
  ac3144:	62 e1 ff 08 10 79 28 	vmovsd xmm23,QWORD PTR [rcx+0x140]
  ac314b:	62 e1 ff 08 10 69 2d 	vmovsd xmm21,QWORD PTR [rcx+0x168]
  ac3152:	62 e1 ff 08 10 51 32 	vmovsd xmm18,QWORD PTR [rcx+0x190]
  ac3159:	62 e1 ff 08 10 41 37 	vmovsd xmm16,QWORD PTR [rcx+0x1b8]
  ac3160:	62 61 ff 08 10 49 3c 	vmovsd xmm25,QWORD PTR [rcx+0x1e0]
  ac3167:	62 61 ff 08 10 41 41 	vmovsd xmm24,QWORD PTR [rcx+0x208]
  ac316e:	62 e1 ff 08 10 71 46 	vmovsd xmm22,QWORD PTR [rcx+0x230]
  ac3175:	62 e1 ff 08 10 59 4b 	vmovsd xmm19,QWORD PTR [rcx+0x258]
  ac317c:	e9 8d 00 00 00       	jmp    ac320e <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x1ce>
  ac3181:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  ac3188:	0f 1f 84 00 00 00 00 
  ac318f:	00 
  ac3190:	c5 7c 10 39          	vmovups ymm15,YMMWORD PTR [rcx]
  ac3194:	c5 7c 10 61 78       	vmovups ymm12,YMMWORD PTR [rcx+0x78]
  ac3199:	c5 7c 10 99 f0 00 00 	vmovups ymm11,YMMWORD PTR [rcx+0xf0]
  ac31a0:	00 
  ac31a1:	c5 7c 10 77 28       	vmovups ymm14,YMMWORD PTR [rdi+0x28]
  ac31a6:	c5 7c 10 57 50       	vmovups ymm10,YMMWORD PTR [rdi+0x50]
  ac31ab:	62 e1 7c 28 10 67 05 	vmovups ymm20,YMMWORD PTR [rdi+0xa0]
  ac31b2:	62 e1 7c 28 10 8f c8 	vmovups ymm17,YMMWORD PTR [rdi+0xc8]
  ac31b9:	00 00 00 
  ac31bc:	c5 7c 10 af 18 01 00 	vmovups ymm13,YMMWORD PTR [rdi+0x118]
  ac31c3:	00 
  ac31c4:	62 e1 7c 28 10 7f 0a 	vmovups ymm23,YMMWORD PTR [rdi+0x140]
  ac31cb:	62 e1 7c 28 10 af 68 	vmovups ymm21,YMMWORD PTR [rdi+0x168]
  ac31d2:	01 00 00 
  ac31d5:	62 e1 7c 28 10 97 90 	vmovups ymm18,YMMWORD PTR [rdi+0x190]
  ac31dc:	01 00 00 
  ac31df:	62 e1 7c 28 10 87 b8 	vmovups ymm16,YMMWORD PTR [rdi+0x1b8]
  ac31e6:	01 00 00 
  ac31e9:	62 61 7c 28 10 4f 0f 	vmovups ymm25,YMMWORD PTR [rdi+0x1e0]
  ac31f0:	62 61 7c 28 10 87 08 	vmovups ymm24,YMMWORD PTR [rdi+0x208]
  ac31f7:	02 00 00 
  ac31fa:	62 e1 7c 28 10 b7 30 	vmovups ymm22,YMMWORD PTR [rdi+0x230]
  ac3201:	02 00 00 
  ac3204:	62 e1 7c 28 10 9f 58 	vmovups ymm19,YMMWORD PTR [rdi+0x258]
  ac320b:	02 00 00 
  ac320e:	62 21 04 28 58 d7    	vaddps ymm26,ymm15,ymm23
  ac3214:	62 21 04 28 5c df    	vsubps ymm27,ymm15,ymm23
  ac321a:	62 01 5c 20 58 e1    	vaddps ymm28,ymm20,ymm25
  ac3220:	62 11 5c 20 5c f9    	vsubps ymm15,ymm20,ymm25
  ac3226:	c4 41 04 c6 ff b1    	vshufps ymm15,ymm15,ymm15,0xb1
  ac322c:	62 e1 7c 28 28 fe    	vmovaps ymm23,ymm6
  ac3232:	62 82 05 28 a8 fb    	vfmadd213ps ymm23,ymm15,ymm27
  ac3238:	62 12 4d 28 ac fb    	vfnmadd213ps ymm15,ymm6,ymm27
  ac323e:	62 01 2c 20 58 cc    	vaddps ymm25,ymm26,ymm28
  ac3244:	62 81 2c 20 5c e4    	vsubps ymm20,ymm26,ymm28
  ac324a:	62 21 0c 28 58 d5    	vaddps ymm26,ymm14,ymm21
  ac3250:	62 31 0c 28 5c f5    	vsubps ymm14,ymm14,ymm21
  ac3256:	62 81 74 20 58 e8    	vaddps ymm21,ymm17,ymm24
  ac325c:	62 81 74 20 5c c8    	vsubps ymm17,ymm17,ymm24
  ac3262:	62 a1 74 20 c6 c9 b1 	vshufps ymm17,ymm17,ymm17,0xb1
  ac3269:	62 61 7c 28 28 c6    	vmovaps ymm24,ymm6
  ac326f:	62 42 75 20 a8 c6    	vfmadd213ps ymm24,ymm17,ymm14
  ac3275:	62 c2 4d 28 ac ce    	vfnmadd213ps ymm17,ymm6,ymm14
  ac327b:	62 31 2c 20 58 f5    	vaddps ymm14,ymm26,ymm21
  ac3281:	62 a1 2c 20 5c ed    	vsubps ymm21,ymm26,ymm21
  ac3287:	62 21 2c 28 58 d2    	vaddps ymm26,ymm10,ymm18
  ac328d:	62 a1 2c 28 5c d2    	vsubps ymm18,ymm10,ymm18
  ac3293:	62 21 24 28 58 de    	vaddps ymm27,ymm11,ymm22
  ac3299:	62 31 24 28 5c d6    	vsubps ymm10,ymm11,ymm22
  ac329f:	c4 41 2c c6 d2 b1    	vshufps ymm10,ymm10,ymm10,0xb1
  ac32a5:	c5 7c 28 de          	vmovaps ymm11,ymm6
  ac32a9:	62 32 2d 28 a8 da    	vfmadd213ps ymm11,ymm10,ymm18
  ac32af:	62 32 4d 28 ac d2    	vfnmadd213ps ymm10,ymm6,ymm18
  ac32b5:	62 81 2c 20 58 d3    	vaddps ymm18,ymm26,ymm27
  ac32bb:	62 81 2c 20 5c f3    	vsubps ymm22,ymm26,ymm27
  ac32c1:	62 21 1c 28 58 d0    	vaddps ymm26,ymm12,ymm16
  ac32c7:	62 31 1c 28 5c e0    	vsubps ymm12,ymm12,ymm16
  ac32cd:	62 a1 14 28 58 c3    	vaddps ymm16,ymm13,ymm19
  ac32d3:	62 31 14 28 5c eb    	vsubps ymm13,ymm13,ymm19
  ac32d9:	c4 41 14 c6 ed b1    	vshufps ymm13,ymm13,ymm13,0xb1
  ac32df:	62 e1 7c 28 28 de    	vmovaps ymm19,ymm6
  ac32e5:	62 c2 15 28 a8 dc    	vfmadd213ps ymm19,ymm13,ymm12
  ac32eb:	c4 42 4d ac ec       	vfnmadd213ps ymm13,ymm6,ymm12
  ac32f0:	62 21 2c 20 58 d8    	vaddps ymm27,ymm26,ymm16
  ac32f6:	62 31 2c 20 5c e0    	vsubps ymm12,ymm26,ymm16
  ac32fc:	62 81 3c 20 c6 c0 b1 	vshufps ymm16,ymm24,ymm24,0xb1
  ac3303:	62 61 3c 20 59 c0    	vmulps ymm24,ymm24,ymm0
  ac3309:	62 22 75 28 b8 c0    	vfmadd231ps ymm24,ymm1,ymm16
  ac330f:	62 a1 54 20 c6 c5 b1 	vshufps ymm16,ymm21,ymm21,0xb1
  ac3316:	62 61 54 20 59 d7    	vmulps ymm26,ymm21,ymm7
  ac331c:	62 22 3d 28 b8 d0    	vfmadd231ps ymm26,ymm8,ymm16
  ac3322:	62 a1 74 20 c6 e9 b1 	vshufps ymm21,ymm17,ymm17,0xb1
  ac3329:	62 e1 74 20 59 c2    	vmulps ymm16,ymm17,ymm2
  ac332f:	62 a2 65 28 b8 c5    	vfmadd231ps ymm16,ymm3,ymm21
  ac3335:	62 a1 64 20 c6 cb b1 	vshufps ymm17,ymm19,ymm19,0xb1
  ac333c:	62 e1 64 20 59 da    	vmulps ymm19,ymm19,ymm2
  ac3342:	62 a2 65 28 b8 d9    	vfmadd231ps ymm19,ymm3,ymm17
  ac3348:	62 c1 1c 28 c6 cc b1 	vshufps ymm17,ymm12,ymm12,0xb1
  ac334f:	62 41 1c 28 59 e1    	vmulps ymm28,ymm12,ymm9
  ac3355:	62 22 3d 28 b8 e1    	vfmadd231ps ymm28,ymm8,ymm17
  ac335b:	c4 41 14 c6 e5 b1    	vshufps ymm12,ymm13,ymm13,0xb1
  ac3361:	62 61 14 28 59 ed    	vmulps ymm29,ymm13,ymm5
  ac3367:	62 42 5d 28 b8 ec    	vfmadd231ps ymm29,ymm4,ymm12
  ac336d:	62 a1 34 20 58 ca    	vaddps ymm17,ymm25,ymm18
  ac3373:	62 a1 34 20 5c ea    	vsubps ymm21,ymm25,ymm18
  ac3379:	c4 41 24 c6 e3 b1    	vshufps ymm12,ymm11,ymm11,0xb1
  ac337f:	62 61 7c 28 28 cf    	vmovaps ymm25,ymm7
  ac3385:	62 22 25 28 a8 cf    	vfmadd213ps ymm25,ymm11,ymm23
  ac338b:	62 42 1d 28 b8 c8    	vfmadd231ps ymm25,ymm12,ymm8
  ac3391:	62 32 45 28 ac df    	vfnmadd213ps ymm11,ymm7,ymm23
  ac3397:	c4 42 3d bc dc       	vfnmadd231ps ymm11,ymm8,ymm12
  ac339c:	62 31 4c 20 c6 e6 b1 	vshufps ymm12,ymm22,ymm22,0xb1
  ac33a3:	62 e1 7c 28 28 f6    	vmovaps ymm22,ymm6
  ac33a9:	62 a2 1d 28 a8 f4    	vfmadd213ps ymm22,ymm12,ymm20
  ac33af:	62 32 4d 28 ac e4    	vfnmadd213ps ymm12,ymm6,ymm20
  ac33b5:	c4 41 2c c6 ea b1    	vshufps ymm13,ymm10,ymm10,0xb1
  ac33bb:	62 61 7c 28 28 f7    	vmovaps ymm30,ymm7
  ac33c1:	62 42 2d 28 ac f7    	vfnmadd213ps ymm30,ymm10,ymm15
  ac33c7:	62 42 15 28 b8 f0    	vfmadd231ps ymm30,ymm13,ymm8
  ac33cd:	c4 42 45 a8 d7       	vfmadd213ps ymm10,ymm7,ymm15
  ac33d2:	c4 42 3d bc d5       	vfnmadd231ps ymm10,ymm8,ymm13
  ac33d7:	62 11 0c 28 58 fb    	vaddps ymm15,ymm14,ymm27
  ac33dd:	62 11 0c 28 5c eb    	vsubps ymm13,ymm14,ymm27
  ac33e3:	c4 41 14 c6 ed b1    	vshufps ymm13,ymm13,ymm13,0xb1
  ac33e9:	62 e1 7c 28 28 d6    	vmovaps ymm18,ymm6
  ac33ef:	62 a2 15 28 a8 d5    	vfmadd213ps ymm18,ymm13,ymm21
  ac33f5:	62 32 4d 28 ac ed    	vfnmadd213ps ymm13,ymm6,ymm21
  ac33fb:	62 c1 74 20 58 ef    	vaddps ymm21,ymm17,ymm15
  ac3401:	62 51 74 20 5c f7    	vsubps ymm14,ymm17,ymm15
  ac3407:	62 31 3c 20 58 fb    	vaddps ymm15,ymm24,ymm19
  ac340d:	62 a1 3c 20 5c cb    	vsubps ymm17,ymm24,ymm19
  ac3413:	62 a1 74 20 c6 c9 b1 	vshufps ymm17,ymm17,ymm17,0xb1
  ac341a:	62 e1 7c 28 28 de    	vmovaps ymm19,ymm6
  ac3420:	62 c2 75 20 a8 db    	vfmadd213ps ymm19,ymm17,ymm11
  ac3426:	62 32 4d 28 bc d9    	vfnmadd231ps ymm11,ymm6,ymm17
  ac342c:	62 c1 34 20 58 ff    	vaddps ymm23,ymm25,ymm15
  ac3432:	62 51 34 20 5c ff    	vsubps ymm15,ymm25,ymm15
  ac3438:	62 81 2c 20 58 cc    	vaddps ymm17,ymm26,ymm28
  ac343e:	62 81 2c 20 5c e4    	vsubps ymm20,ymm26,ymm28
  ac3444:	62 21 5c 20 c6 c4 b1 	vshufps ymm24,ymm20,ymm20,0xb1
  ac344b:	62 e1 7c 28 28 e6    	vmovaps ymm20,ymm6
  ac3451:	62 c2 3d 20 a8 e4    	vfmadd213ps ymm20,ymm24,ymm12
  ac3457:	62 12 4d 28 bc e0    	vfnmadd231ps ymm12,ymm6,ymm24
  ac345d:	62 21 4c 20 58 c1    	vaddps ymm24,ymm22,ymm17
  ac3463:	62 a1 4c 20 5c c9    	vsubps ymm17,ymm22,ymm17
  ac3469:	62 01 7c 20 58 d5    	vaddps ymm26,ymm16,ymm29
  ac346f:	62 81 7c 20 5c c5    	vsubps ymm16,ymm16,ymm29
  ac3475:	62 a1 7c 20 c6 c0 b1 	vshufps ymm16,ymm16,ymm16,0xb1
  ac347c:	62 e1 7c 28 28 f6    	vmovaps ymm22,ymm6
  ac3482:	62 c2 7d 20 a8 f2    	vfmadd213ps ymm22,ymm16,ymm10
  ac3488:	62 32 4d 28 bc d0    	vfnmadd231ps ymm10,ymm6,ymm16
  ac348e:	62 01 0c 20 58 ca    	vaddps ymm25,ymm30,ymm26
  ac3494:	62 81 0c 20 5c c2    	vsubps ymm16,ymm30,ymm26
  ac349a:	62 21 d5 20 14 d7    	vunpcklpd ymm26,ymm21,ymm23
  ac34a0:	62 01 bd 20 14 d9    	vunpcklpd ymm27,ymm24,ymm25
  ac34a6:	62 03 2d 20 18 e3 01 	vinsertf32x4 ymm28,ymm26,xmm27,0x1
  ac34ad:	62 61 7c 28 11 64 c4 	vmovups YMMWORD PTR [rsp+rax*8-0x80],ymm28
  ac34b4:	fc 
  ac34b5:	48 83 f8 40          	cmp    rax,0x40
  ac34b9:	0f 84 f1 fb ff ff    	je     ac30b0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x70>
  ac34bf:	62 a1 d5 20 15 ef    	vunpckhpd ymm21,ymm21,ymm23
  ac34c5:	62 81 bd 20 15 f9    	vunpckhpd ymm23,ymm24,ymm25
  ac34cb:	62 23 d5 20 23 c7 03 	vshuff64x2 ymm24,ymm21,ymm23,0x3
  ac34d2:	62 03 ad 20 23 cb 03 	vshuff64x2 ymm25,ymm26,ymm27,0x3
  ac34d9:	62 a3 55 20 18 ef 01 	vinsertf32x4 ymm21,ymm21,xmm23,0x1
  ac34e0:	62 e1 7c 28 11 2c c4 	vmovups YMMWORD PTR [rsp+rax*8],ymm21
  ac34e7:	62 61 fd 28 11 4c c4 	vmovupd YMMWORD PTR [rsp+rax*8+0x80],ymm25
  ac34ee:	04 
  ac34ef:	62 61 fd 28 11 44 c4 	vmovupd YMMWORD PTR [rsp+rax*8+0x100],ymm24
  ac34f6:	08 
  ac34f7:	62 a1 ed 20 14 eb    	vunpcklpd ymm21,ymm18,ymm19
  ac34fd:	62 a1 dd 20 14 fe    	vunpcklpd ymm23,ymm20,ymm22
  ac3503:	62 23 55 20 18 c7 01 	vinsertf32x4 ymm24,ymm21,xmm23,0x1
  ac350a:	62 61 7c 28 11 44 c4 	vmovups YMMWORD PTR [rsp+rax*8-0x60],ymm24
  ac3511:	fd 
  ac3512:	62 a1 ed 20 15 d3    	vunpckhpd ymm18,ymm18,ymm19
  ac3518:	62 a1 dd 20 15 de    	vunpckhpd ymm19,ymm20,ymm22
  ac351e:	62 a3 ed 20 23 e3 03 	vshuff64x2 ymm20,ymm18,ymm19,0x3
  ac3525:	62 a3 d5 20 23 ef 03 	vshuff64x2 ymm21,ymm21,ymm23,0x3
  ac352c:	62 a3 6d 20 18 d3 01 	vinsertf32x4 ymm18,ymm18,xmm19,0x1
  ac3533:	62 e1 7c 28 11 54 c4 	vmovups YMMWORD PTR [rsp+rax*8+0x20],ymm18
  ac353a:	01 
  ac353b:	62 e1 fd 28 11 6c c4 	vmovupd YMMWORD PTR [rsp+rax*8+0xa0],ymm21
  ac3542:	05 
  ac3543:	62 e1 fd 28 11 64 c4 	vmovupd YMMWORD PTR [rsp+rax*8+0x120],ymm20
  ac354a:	09 
  ac354b:	62 c1 8d 28 14 d7    	vunpcklpd ymm18,ymm14,ymm15
  ac3551:	62 a1 f5 20 14 d8    	vunpcklpd ymm19,ymm17,ymm16
  ac3557:	62 a3 6d 20 18 e3 01 	vinsertf32x4 ymm20,ymm18,xmm19,0x1
  ac355e:	62 e1 7c 28 11 64 c4 	vmovups YMMWORD PTR [rsp+rax*8-0x40],ymm20
  ac3565:	fe 
  ac3566:	c4 41 0d 15 f7       	vunpckhpd ymm14,ymm14,ymm15
  ac356b:	62 31 f5 20 15 f8    	vunpckhpd ymm15,ymm17,ymm16
  ac3571:	62 c3 8d 28 23 c7 03 	vshuff64x2 ymm16,ymm14,ymm15,0x3
  ac3578:	62 a3 ed 20 23 cb 03 	vshuff64x2 ymm17,ymm18,ymm19,0x3
  ac357f:	c4 43 0d 18 f7 01    	vinsertf128 ymm14,ymm14,xmm15,0x1
  ac3585:	c5 7c 11 74 c4 40    	vmovups YMMWORD PTR [rsp+rax*8+0x40],ymm14
  ac358b:	62 e1 fd 28 11 4c c4 	vmovupd YMMWORD PTR [rsp+rax*8+0xc0],ymm17
  ac3592:	06 
  ac3593:	62 e1 fd 28 11 44 c4 	vmovupd YMMWORD PTR [rsp+rax*8+0x140],ymm16
  ac359a:	0a 
  ac359b:	c4 41 15 14 f3       	vunpcklpd ymm14,ymm13,ymm11
  ac35a0:	c4 41 1d 14 fa       	vunpcklpd ymm15,ymm12,ymm10
  ac35a5:	62 c3 0d 28 18 c7 01 	vinsertf32x4 ymm16,ymm14,xmm15,0x1
  ac35ac:	62 e1 7c 28 11 44 c4 	vmovups YMMWORD PTR [rsp+rax*8-0x20],ymm16
  ac35b3:	ff 
  ac35b4:	c4 41 15 15 db       	vunpckhpd ymm11,ymm13,ymm11
  ac35b9:	c4 41 1d 15 d2       	vunpckhpd ymm10,ymm12,ymm10
  ac35be:	c4 43 25 06 e2 31    	vperm2f128 ymm12,ymm11,ymm10,0x31
  ac35c4:	c4 43 0d 06 ef 31    	vperm2f128 ymm13,ymm14,ymm15,0x31
  ac35ca:	c4 43 25 18 d2 01    	vinsertf128 ymm10,ymm11,xmm10,0x1
  ac35d0:	c5 7c 11 54 c4 60    	vmovups YMMWORD PTR [rsp+rax*8+0x60],ymm10
  ac35d6:	c5 7d 11 ac c4 e0 00 	vmovupd YMMWORD PTR [rsp+rax*8+0xe0],ymm13
  ac35dd:	00 00 
  ac35df:	c5 7d 11 a4 c4 60 01 	vmovupd YMMWORD PTR [rsp+rax*8+0x160],ymm12
  ac35e6:	00 00 
  ac35e8:	e9 0c fb ff ff       	jmp    ac30f9 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0xb9>
  ac35ed:	c5 fc 10 04 24       	vmovups ymm0,YMMWORD PTR [rsp]
  ac35f2:	c5 fc 10 8c 24 80 00 	vmovups ymm1,YMMWORD PTR [rsp+0x80]
  ac35f9:	00 00 
  ac35fb:	c5 fc 59 12          	vmulps ymm2,ymm0,YMMWORD PTR [rdx]
  ac35ff:	c5 fc c6 c0 b1       	vshufps ymm0,ymm0,ymm0,0xb1
  ac3604:	c4 e2 7d b8 52 20    	vfmadd231ps ymm2,ymm0,YMMWORD PTR [rdx+0x20]
  ac360a:	c5 f4 c6 c1 b1       	vshufps ymm0,ymm1,ymm1,0xb1
  ac360f:	c5 f4 59 4a 40       	vmulps ymm1,ymm1,YMMWORD PTR [rdx+0x40]
  ac3614:	c4 e2 7d b8 4a 60    	vfmadd231ps ymm1,ymm0,YMMWORD PTR [rdx+0x60]
  ac361a:	c5 fc 10 84 24 00 01 	vmovups ymm0,YMMWORD PTR [rsp+0x100]
  ac3621:	00 00 
  ac3623:	c5 fc c6 d8 b1       	vshufps ymm3,ymm0,ymm0,0xb1
  ac3628:	c5 fc 59 82 80 00 00 	vmulps ymm0,ymm0,YMMWORD PTR [rdx+0x80]
  ac362f:	00 
  ac3630:	c4 e2 65 b8 82 a0 00 	vfmadd231ps ymm0,ymm3,YMMWORD PTR [rdx+0xa0]
  ac3637:	00 00 
  ac3639:	c5 fc 10 9c 24 80 01 	vmovups ymm3,YMMWORD PTR [rsp+0x180]
  ac3640:	00 00 
  ac3642:	c5 e4 c6 e3 b1       	vshufps ymm4,ymm3,ymm3,0xb1
  ac3647:	c5 e4 59 9a c0 00 00 	vmulps ymm3,ymm3,YMMWORD PTR [rdx+0xc0]
  ac364e:	00 
  ac364f:	c4 e2 5d b8 9a e0 00 	vfmadd231ps ymm3,ymm4,YMMWORD PTR [rdx+0xe0]
  ac3656:	00 00 
  ac3658:	c5 fc 10 6c 24 80    	vmovups ymm5,YMMWORD PTR [rsp-0x80]
  ac365e:	c5 ec 58 f3          	vaddps ymm6,ymm2,ymm3
  ac3662:	c5 f4 58 f8          	vaddps ymm7,ymm1,ymm0
  ac3666:	c5 6c 5c c3          	vsubps ymm8,ymm2,ymm3
  ac366a:	c5 74 5c c8          	vsubps ymm9,ymm1,ymm0
  ac366e:	c4 e2 7d 18 0d 11 1f 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff5b1f11]        # 75588 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b88>
  ac3675:	5b ff 
  ac3677:	c5 7c 28 d1          	vmovaps ymm10,ymm1
  ac367b:	c4 62 4d a8 d5       	vfmadd213ps ymm10,ymm6,ymm5
  ac3680:	c4 e2 7d 18 05 33 1b 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff5b1b33]        # 751bc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x27bc>
  ac3687:	5b ff 
  ac3689:	c4 62 45 b8 d0       	vfmadd231ps ymm10,ymm7,ymm0
  ac368e:	c5 7c 28 d8          	vmovaps ymm11,ymm0
  ac3692:	c4 62 4d a8 dd       	vfmadd213ps ymm11,ymm6,ymm5
  ac3697:	c4 e2 7d 18 15 a0 1b 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff5b1ba0]        # 75240 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2840>
  ac369e:	5b ff 
  ac36a0:	c4 62 45 b8 d9       	vfmadd231ps ymm11,ymm7,ymm1
  ac36a5:	c5 bc 59 e2          	vmulps ymm4,ymm8,ymm2
  ac36a9:	c4 e2 7d 18 1d 46 1f 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff5b1f46]        # 755f8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bf8>
  ac36b0:	5b ff 
  ac36b2:	c4 e2 35 b8 e3       	vfmadd231ps ymm4,ymm9,ymm3
  ac36b7:	c5 5c c6 e4 b1       	vshufps ymm12,ymm4,ymm4,0xb1
  ac36bc:	c5 fc 28 25 9c 4d 5b 	vmovaps ymm4,YMMWORD PTR [rip+0xffffffffff5b4d9c]        # 78460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5a60>
  ac36c3:	ff 
  ac36c4:	c5 1c 57 e4          	vxorps ymm12,ymm12,ymm4
  ac36c8:	c5 3c 59 c3          	vmulps ymm8,ymm8,ymm3
  ac36cc:	c4 42 6d bc c1       	vfnmadd231ps ymm8,ymm2,ymm9
  ac36d1:	c4 41 3c c6 c0 b1    	vshufps ymm8,ymm8,ymm8,0xb1
  ac36d7:	c5 3c 57 c4          	vxorps ymm8,ymm8,ymm4
  ac36db:	c5 c4 58 f6          	vaddps ymm6,ymm7,ymm6
  ac36df:	c5 d4 58 ee          	vaddps ymm5,ymm5,ymm6
  ac36e3:	c4 c1 2c 58 f4       	vaddps ymm6,ymm10,ymm12
  ac36e8:	c4 c1 24 58 f8       	vaddps ymm7,ymm11,ymm8
  ac36ed:	c4 41 24 5c c0       	vsubps ymm8,ymm11,ymm8
  ac36f2:	c4 41 2c 5c cc       	vsubps ymm9,ymm10,ymm12
  ac36f7:	c5 fc 11 2e          	vmovups YMMWORD PTR [rsi],ymm5
  ac36fb:	c5 fc 11 b6 80 00 00 	vmovups YMMWORD PTR [rsi+0x80],ymm6
  ac3702:	00 
  ac3703:	c5 fc 11 be 00 01 00 	vmovups YMMWORD PTR [rsi+0x100],ymm7
  ac370a:	00 
  ac370b:	c5 7c 11 86 80 01 00 	vmovups YMMWORD PTR [rsi+0x180],ymm8
  ac3712:	00 
  ac3713:	c5 7c 11 8e 00 02 00 	vmovups YMMWORD PTR [rsi+0x200],ymm9
  ac371a:	00 
  ac371b:	c5 fc 10 6c 24 a0    	vmovups ymm5,YMMWORD PTR [rsp-0x60]
  ac3721:	c5 fc 10 74 24 20    	vmovups ymm6,YMMWORD PTR [rsp+0x20]
  ac3727:	c5 fc 10 bc 24 a0 00 	vmovups ymm7,YMMWORD PTR [rsp+0xa0]
  ac372e:	00 00 
  ac3730:	c5 4c 59 82 00 01 00 	vmulps ymm8,ymm6,YMMWORD PTR [rdx+0x100]
  ac3737:	00 
  ac3738:	c5 cc c6 f6 b1       	vshufps ymm6,ymm6,ymm6,0xb1
  ac373d:	c4 62 4d b8 82 20 01 	vfmadd231ps ymm8,ymm6,YMMWORD PTR [rdx+0x120]
  ac3744:	00 00 
  ac3746:	c5 c4 c6 f7 b1       	vshufps ymm6,ymm7,ymm7,0xb1
  ac374b:	c5 c4 59 ba 40 01 00 	vmulps ymm7,ymm7,YMMWORD PTR [rdx+0x140]
  ac3752:	00 
  ac3753:	c4 e2 4d b8 ba 60 01 	vfmadd231ps ymm7,ymm6,YMMWORD PTR [rdx+0x160]
  ac375a:	00 00 
  ac375c:	c5 fc 10 b4 24 20 01 	vmovups ymm6,YMMWORD PTR [rsp+0x120]
  ac3763:	00 00 
  ac3765:	c5 4c c6 ce b1       	vshufps ymm9,ymm6,ymm6,0xb1
  ac376a:	c5 cc 59 b2 80 01 00 	vmulps ymm6,ymm6,YMMWORD PTR [rdx+0x180]
  ac3771:	00 
  ac3772:	c4 e2 35 b8 b2 a0 01 	vfmadd231ps ymm6,ymm9,YMMWORD PTR [rdx+0x1a0]
  ac3779:	00 00 
  ac377b:	c5 7c 10 8c 24 a0 01 	vmovups ymm9,YMMWORD PTR [rsp+0x1a0]
  ac3782:	00 00 
  ac3784:	c4 41 34 c6 d1 b1    	vshufps ymm10,ymm9,ymm9,0xb1
  ac378a:	c5 34 59 8a c0 01 00 	vmulps ymm9,ymm9,YMMWORD PTR [rdx+0x1c0]
  ac3791:	00 
  ac3792:	c4 62 2d b8 8a e0 01 	vfmadd231ps ymm9,ymm10,YMMWORD PTR [rdx+0x1e0]
  ac3799:	00 00 
  ac379b:	c4 41 3c 58 d1       	vaddps ymm10,ymm8,ymm9
  ac37a0:	c5 44 58 de          	vaddps ymm11,ymm7,ymm6
  ac37a4:	c4 41 3c 5c c1       	vsubps ymm8,ymm8,ymm9
  ac37a9:	c5 c4 5c f6          	vsubps ymm6,ymm7,ymm6
  ac37ad:	c5 fc 28 f9          	vmovaps ymm7,ymm1
  ac37b1:	c4 e2 2d a8 fd       	vfmadd213ps ymm7,ymm10,ymm5
  ac37b6:	c4 e2 25 b8 f8       	vfmadd231ps ymm7,ymm11,ymm0
  ac37bb:	c5 7c 28 c8          	vmovaps ymm9,ymm0
  ac37bf:	c4 62 2d a8 cd       	vfmadd213ps ymm9,ymm10,ymm5
  ac37c4:	c4 62 25 b8 c9       	vfmadd231ps ymm9,ymm11,ymm1
  ac37c9:	c5 3c 59 e2          	vmulps ymm12,ymm8,ymm2
  ac37cd:	c4 62 4d b8 e3       	vfmadd231ps ymm12,ymm6,ymm3
  ac37d2:	c4 41 1c c6 e4 b1    	vshufps ymm12,ymm12,ymm12,0xb1
  ac37d8:	c5 1c 57 e4          	vxorps ymm12,ymm12,ymm4
  ac37dc:	c5 3c 59 c3          	vmulps ymm8,ymm8,ymm3
  ac37e0:	c4 62 6d bc c6       	vfnmadd231ps ymm8,ymm2,ymm6
  ac37e5:	c4 c1 3c c6 f0 b1    	vshufps ymm6,ymm8,ymm8,0xb1
  ac37eb:	c5 cc 57 f4          	vxorps ymm6,ymm6,ymm4
  ac37ef:	c4 41 24 58 c2       	vaddps ymm8,ymm11,ymm10
  ac37f4:	c5 bc 58 ed          	vaddps ymm5,ymm8,ymm5
  ac37f8:	c5 1c 58 c7          	vaddps ymm8,ymm12,ymm7
  ac37fc:	c5 34 58 d6          	vaddps ymm10,ymm9,ymm6
  ac3800:	c5 b4 5c f6          	vsubps ymm6,ymm9,ymm6
  ac3804:	c4 c1 44 5c fc       	vsubps ymm7,ymm7,ymm12
  ac3809:	c5 fc 11 6e 20       	vmovups YMMWORD PTR [rsi+0x20],ymm5
  ac380e:	c5 7c 11 86 a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm8
  ac3815:	00 
  ac3816:	c5 7c 11 96 20 01 00 	vmovups YMMWORD PTR [rsi+0x120],ymm10
  ac381d:	00 
  ac381e:	c5 fc 11 b6 a0 01 00 	vmovups YMMWORD PTR [rsi+0x1a0],ymm6
  ac3825:	00 
  ac3826:	c5 fc 11 be 20 02 00 	vmovups YMMWORD PTR [rsi+0x220],ymm7
  ac382d:	00 
  ac382e:	c5 fc 10 6c 24 c0    	vmovups ymm5,YMMWORD PTR [rsp-0x40]
  ac3834:	c5 fc 10 74 24 40    	vmovups ymm6,YMMWORD PTR [rsp+0x40]
  ac383a:	c5 fc 10 bc 24 c0 00 	vmovups ymm7,YMMWORD PTR [rsp+0xc0]
  ac3841:	00 00 
  ac3843:	c5 7c 10 84 24 40 01 	vmovups ymm8,YMMWORD PTR [rsp+0x140]
  ac384a:	00 00 
  ac384c:	c5 4c c6 ce b1       	vshufps ymm9,ymm6,ymm6,0xb1
  ac3851:	c5 cc 59 b2 00 02 00 	vmulps ymm6,ymm6,YMMWORD PTR [rdx+0x200]
  ac3858:	00 
  ac3859:	c4 e2 35 b8 b2 20 02 	vfmadd231ps ymm6,ymm9,YMMWORD PTR [rdx+0x220]
  ac3860:	00 00 
  ac3862:	c5 44 59 8a 40 02 00 	vmulps ymm9,ymm7,YMMWORD PTR [rdx+0x240]
  ac3869:	00 
  ac386a:	c5 c4 c6 ff b1       	vshufps ymm7,ymm7,ymm7,0xb1
  ac386f:	c4 62 45 b8 8a 60 02 	vfmadd231ps ymm9,ymm7,YMMWORD PTR [rdx+0x260]
  ac3876:	00 00 
  ac3878:	c4 c1 3c c6 f8 b1    	vshufps ymm7,ymm8,ymm8,0xb1
  ac387e:	c5 3c 59 82 80 02 00 	vmulps ymm8,ymm8,YMMWORD PTR [rdx+0x280]
  ac3885:	00 
  ac3886:	c4 62 45 b8 82 a0 02 	vfmadd231ps ymm8,ymm7,YMMWORD PTR [rdx+0x2a0]
  ac388d:	00 00 
  ac388f:	c5 fc 10 bc 24 c0 01 	vmovups ymm7,YMMWORD PTR [rsp+0x1c0]
  ac3896:	00 00 
  ac3898:	c5 44 c6 d7 b1       	vshufps ymm10,ymm7,ymm7,0xb1
  ac389d:	c5 c4 59 ba c0 02 00 	vmulps ymm7,ymm7,YMMWORD PTR [rdx+0x2c0]
  ac38a4:	00 
  ac38a5:	c4 e2 2d b8 ba e0 02 	vfmadd231ps ymm7,ymm10,YMMWORD PTR [rdx+0x2e0]
  ac38ac:	00 00 
  ac38ae:	c5 4c 58 d7          	vaddps ymm10,ymm6,ymm7
  ac38b2:	c4 41 34 58 d8       	vaddps ymm11,ymm9,ymm8
  ac38b7:	c5 cc 5c f7          	vsubps ymm6,ymm6,ymm7
  ac38bb:	c4 c1 34 5c f8       	vsubps ymm7,ymm9,ymm8
  ac38c0:	c5 7c 28 c1          	vmovaps ymm8,ymm1
  ac38c4:	c4 62 2d a8 c5       	vfmadd213ps ymm8,ymm10,ymm5
  ac38c9:	c4 62 25 b8 c0       	vfmadd231ps ymm8,ymm11,ymm0
  ac38ce:	c5 7c 28 c8          	vmovaps ymm9,ymm0
  ac38d2:	c4 62 2d a8 cd       	vfmadd213ps ymm9,ymm10,ymm5
  ac38d7:	c4 62 25 b8 c9       	vfmadd231ps ymm9,ymm11,ymm1
  ac38dc:	c5 4c 59 e2          	vmulps ymm12,ymm6,ymm2
  ac38e0:	c4 62 45 b8 e3       	vfmadd231ps ymm12,ymm7,ymm3
  ac38e5:	c4 41 1c c6 e4 b1    	vshufps ymm12,ymm12,ymm12,0xb1
  ac38eb:	c5 1c 57 e4          	vxorps ymm12,ymm12,ymm4
  ac38ef:	c5 cc 59 f3          	vmulps ymm6,ymm6,ymm3
  ac38f3:	c4 e2 6d bc f7       	vfnmadd231ps ymm6,ymm2,ymm7
  ac38f8:	c5 cc c6 f6 b1       	vshufps ymm6,ymm6,ymm6,0xb1
  ac38fd:	c5 cc 57 f4          	vxorps ymm6,ymm6,ymm4
  ac3901:	c4 c1 24 58 fa       	vaddps ymm7,ymm11,ymm10
  ac3906:	c5 d4 58 ef          	vaddps ymm5,ymm5,ymm7
  ac390a:	c4 c1 3c 58 fc       	vaddps ymm7,ymm8,ymm12
  ac390f:	c5 34 58 d6          	vaddps ymm10,ymm9,ymm6
  ac3913:	c5 b4 5c f6          	vsubps ymm6,ymm9,ymm6
  ac3917:	c4 41 3c 5c c4       	vsubps ymm8,ymm8,ymm12
  ac391c:	c5 fc 11 6e 40       	vmovups YMMWORD PTR [rsi+0x40],ymm5
  ac3921:	c5 fc 11 be c0 00 00 	vmovups YMMWORD PTR [rsi+0xc0],ymm7
  ac3928:	00 
  ac3929:	c5 7c 11 96 40 01 00 	vmovups YMMWORD PTR [rsi+0x140],ymm10
  ac3930:	00 
  ac3931:	c5 fc 11 b6 c0 01 00 	vmovups YMMWORD PTR [rsi+0x1c0],ymm6
  ac3938:	00 
  ac3939:	c5 7c 11 86 40 02 00 	vmovups YMMWORD PTR [rsi+0x240],ymm8
  ac3940:	00 
  ac3941:	c5 fc 10 6c 24 e0    	vmovups ymm5,YMMWORD PTR [rsp-0x20]
  ac3947:	c5 fc 10 74 24 60    	vmovups ymm6,YMMWORD PTR [rsp+0x60]
  ac394d:	c5 fc 10 bc 24 e0 00 	vmovups ymm7,YMMWORD PTR [rsp+0xe0]
  ac3954:	00 00 
  ac3956:	c5 4c 59 82 00 03 00 	vmulps ymm8,ymm6,YMMWORD PTR [rdx+0x300]
  ac395d:	00 
  ac395e:	c5 cc c6 f6 b1       	vshufps ymm6,ymm6,ymm6,0xb1
  ac3963:	c4 62 4d b8 82 20 03 	vfmadd231ps ymm8,ymm6,YMMWORD PTR [rdx+0x320]
  ac396a:	00 00 
  ac396c:	c5 c4 c6 f7 b1       	vshufps ymm6,ymm7,ymm7,0xb1
  ac3971:	c5 c4 59 ba 40 03 00 	vmulps ymm7,ymm7,YMMWORD PTR [rdx+0x340]
  ac3978:	00 
  ac3979:	c4 e2 4d b8 ba 60 03 	vfmadd231ps ymm7,ymm6,YMMWORD PTR [rdx+0x360]
  ac3980:	00 00 
  ac3982:	c5 fc 10 b4 24 60 01 	vmovups ymm6,YMMWORD PTR [rsp+0x160]
  ac3989:	00 00 
  ac398b:	c5 4c c6 ce b1       	vshufps ymm9,ymm6,ymm6,0xb1
  ac3990:	c5 cc 59 b2 80 03 00 	vmulps ymm6,ymm6,YMMWORD PTR [rdx+0x380]
  ac3997:	00 
  ac3998:	c4 e2 35 b8 b2 a0 03 	vfmadd231ps ymm6,ymm9,YMMWORD PTR [rdx+0x3a0]
  ac399f:	00 00 
  ac39a1:	c5 7c 10 8c 24 e0 01 	vmovups ymm9,YMMWORD PTR [rsp+0x1e0]
  ac39a8:	00 00 
  ac39aa:	c4 41 34 c6 d1 b1    	vshufps ymm10,ymm9,ymm9,0xb1
  ac39b0:	c5 34 59 8a c0 03 00 	vmulps ymm9,ymm9,YMMWORD PTR [rdx+0x3c0]
  ac39b7:	00 
  ac39b8:	c4 62 2d b8 8a e0 03 	vfmadd231ps ymm9,ymm10,YMMWORD PTR [rdx+0x3e0]
  ac39bf:	00 00 
  ac39c1:	c4 41 3c 58 d1       	vaddps ymm10,ymm8,ymm9
  ac39c6:	c5 44 58 de          	vaddps ymm11,ymm7,ymm6
  ac39ca:	c4 41 3c 5c c1       	vsubps ymm8,ymm8,ymm9
  ac39cf:	c5 c4 5c f6          	vsubps ymm6,ymm7,ymm6
  ac39d3:	c5 fc 28 f9          	vmovaps ymm7,ymm1
  ac39d7:	c4 e2 2d a8 fd       	vfmadd213ps ymm7,ymm10,ymm5
  ac39dc:	c4 e2 25 b8 f8       	vfmadd231ps ymm7,ymm11,ymm0
  ac39e1:	c4 e2 2d a8 c5       	vfmadd213ps ymm0,ymm10,ymm5
  ac39e6:	c4 e2 25 b8 c1       	vfmadd231ps ymm0,ymm11,ymm1
  ac39eb:	c5 bc 59 ca          	vmulps ymm1,ymm8,ymm2
  ac39ef:	c4 e2 4d b8 cb       	vfmadd231ps ymm1,ymm6,ymm3
  ac39f4:	c5 f4 c6 c9 b1       	vshufps ymm1,ymm1,ymm1,0xb1
  ac39f9:	c5 f4 57 cc          	vxorps ymm1,ymm1,ymm4
  ac39fd:	c5 bc 59 db          	vmulps ymm3,ymm8,ymm3
  ac3a01:	c4 e2 4d bc da       	vfnmadd231ps ymm3,ymm6,ymm2
  ac3a06:	c5 e4 c6 d3 b1       	vshufps ymm2,ymm3,ymm3,0xb1
  ac3a0b:	c5 ec 57 d4          	vxorps ymm2,ymm2,ymm4
  ac3a0f:	c4 c1 24 58 da       	vaddps ymm3,ymm11,ymm10
  ac3a14:	c5 d4 58 db          	vaddps ymm3,ymm5,ymm3
  ac3a18:	c5 c4 58 e1          	vaddps ymm4,ymm7,ymm1
  ac3a1c:	c5 fc 58 ea          	vaddps ymm5,ymm0,ymm2
  ac3a20:	c5 fc 5c c2          	vsubps ymm0,ymm0,ymm2
  ac3a24:	c5 c4 5c c9          	vsubps ymm1,ymm7,ymm1
  ac3a28:	c5 fc 11 5e 60       	vmovups YMMWORD PTR [rsi+0x60],ymm3
  ac3a2d:	c5 fc 11 a6 e0 00 00 	vmovups YMMWORD PTR [rsi+0xe0],ymm4
  ac3a34:	00 
  ac3a35:	c5 fc 11 ae 60 01 00 	vmovups YMMWORD PTR [rsi+0x160],ymm5
  ac3a3c:	00 
  ac3a3d:	c5 fc 11 86 e0 01 00 	vmovups YMMWORD PTR [rsi+0x1e0],ymm0
  ac3a44:	00 
  ac3a45:	c5 fc 11 8e 60 02 00 	vmovups YMMWORD PTR [rsi+0x260],ymm1
  ac3a4c:	00 
  ac3a4d:	48 81 c4 80 07 00 00 	add    rsp,0x780
  ac3a54:	c5 f8 77             	vzeroupper
  ac3a57:	c3                   	ret
  ac3a58:	cc                   	int3
  ac3a59:	cc                   	int3
  ac3a5a:	cc                   	int3
  ac3a5b:	cc                   	int3
  ac3a5c:	cc                   	int3
  ac3a5d:	cc                   	int3
  ac3a5e:	cc                   	int3
  ac3a5f:	cc                   	int3
  ac3a60:	cc                   	int3
  ac3a61:	cc                   	int3
  ac3a62:	cc                   	int3
  ac3a63:	cc                   	int3
  ac3a64:	cc                   	int3
  ac3a65:	cc                   	int3
  ac3a66:	cc                   	int3
  ac3a67:	cc                   	int3
  ac3a68:	cc                   	int3
  ac3a69:	cc                   	int3
  ac3a6a:	cc                   	int3
  ac3a6b:	cc                   	int3
  ac3a6c:	cc                   	int3
  ac3a6d:	cc                   	int3
  ac3a6e:	cc                   	int3
  ac3a6f:	cc                   	int3
  ac3a70:	cc                   	int3
  ac3a71:	cc                   	int3
  ac3a72:	cc                   	int3
  ac3a73:	cc                   	int3
  ac3a74:	cc                   	int3
  ac3a75:	cc                   	int3
  ac3a76:	cc                   	int3
  ac3a77:	cc                   	int3
  ac3a78:	cc                   	int3
  ac3a79:	cc                   	int3
  ac3a7a:	cc                   	int3
  ac3a7b:	cc                   	int3
  ac3a7c:	cc                   	int3
  ac3a7d:	cc                   	int3
  ac3a7e:	cc                   	int3
  ac3a7f:	cc                   	int3
