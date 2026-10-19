
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000adbc00 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  adbc00:	55                   	push   rbp
  adbc01:	48 89 e5             	mov    rbp,rsp
  adbc04:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  adbc08:	48 81 ec 40 08 00 00 	sub    rsp,0x840
  adbc0f:	c5 fc 10 82 00 04 00 	vmovups ymm0,YMMWORD PTR [rdx+0x400]
  adbc16:	00 
  adbc17:	c5 fc 10 8a 20 04 00 	vmovups ymm1,YMMWORD PTR [rdx+0x420]
  adbc1e:	00 
  adbc1f:	c5 fc 10 92 40 04 00 	vmovups ymm2,YMMWORD PTR [rdx+0x440]
  adbc26:	00 
  adbc27:	c5 fc 10 9a 60 04 00 	vmovups ymm3,YMMWORD PTR [rdx+0x460]
  adbc2e:	00 
  adbc2f:	c5 fc 10 a2 a0 04 00 	vmovups ymm4,YMMWORD PTR [rdx+0x4a0]
  adbc36:	00 
  adbc37:	c5 fc 10 aa 80 04 00 	vmovups ymm5,YMMWORD PTR [rdx+0x480]
  adbc3e:	00 
  adbc3f:	31 c0                	xor    eax,eax
  adbc41:	c4 e2 7d 19 35 d6 91 	vbroadcastsd ymm6,QWORD PTR [rip+0xffffffffff5991d6]        # 74e20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x22d0>
  adbc48:	59 ff 
  adbc4a:	c4 e2 7d 18 3d 49 97 	vbroadcastss ymm7,DWORD PTR [rip+0xffffffffff599749]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  adbc51:	59 ff 
  adbc53:	c4 62 7d 19 05 94 8e 	vbroadcastsd ymm8,QWORD PTR [rip+0xffffffffff598e94]        # 74af0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1fa0>
  adbc5a:	59 ff 
  adbc5c:	c4 62 7d 18 0d 17 98 	vbroadcastss ymm9,DWORD PTR [rip+0xffffffffff599817]        # 7547c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x292c>
  adbc63:	59 ff 
  adbc65:	48 89 f9             	mov    rcx,rdi
  adbc68:	45 31 c0             	xor    r8d,r8d
  adbc6b:	eb 61                	jmp    adbcce <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0xce>
  adbc6d:	0f 1f 00             	nop    DWORD PTR [rax]
  adbc70:	62 a1 6c 00 16 d3    	vmovlhps xmm18,xmm18,xmm19
  adbc76:	62 a1 5c 00 16 de    	vmovlhps xmm19,xmm20,xmm22
  adbc7c:	62 e1 7c 08 29 5c c4 	vmovaps XMMWORD PTR [rsp+rax*8+0x30],xmm19
  adbc83:	03 
  adbc84:	62 e1 7c 08 29 54 c4 	vmovaps XMMWORD PTR [rsp+rax*8+0x20],xmm18
  adbc8b:	02 
  adbc8c:	c4 41 08 16 f7       	vmovlhps xmm14,xmm14,xmm15
  adbc91:	62 31 74 00 16 f8    	vmovlhps xmm15,xmm17,xmm16
  adbc97:	c5 78 29 7c c4 50    	vmovaps XMMWORD PTR [rsp+rax*8+0x50],xmm15
  adbc9d:	c5 78 29 74 c4 40    	vmovaps XMMWORD PTR [rsp+rax*8+0x40],xmm14
  adbca3:	c4 41 10 16 db       	vmovlhps xmm11,xmm13,xmm11
  adbca8:	c4 41 18 16 d2       	vmovlhps xmm10,xmm12,xmm10
  adbcad:	c5 78 29 54 c4 70    	vmovaps XMMWORD PTR [rsp+rax*8+0x70],xmm10
  adbcb3:	c5 78 29 5c c4 60    	vmovaps XMMWORD PTR [rsp+rax*8+0x60],xmm11
  adbcb9:	48 83 c0 40          	add    rax,0x40
  adbcbd:	48 83 c1 20          	add    rcx,0x20
  adbcc1:	41 f6 c0 01          	test   r8b,0x1
  adbcc5:	41 b0 01             	mov    r8b,0x1
  adbcc8:	0f 85 e5 04 00 00    	jne    adc1b3 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x5b3>
  adbcce:	48 85 c0             	test   rax,rax
  adbcd1:	74 7d                	je     adbd50 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x150>
  adbcd3:	c5 7b 10 39          	vmovsd xmm15,QWORD PTR [rcx]
  adbcd7:	c5 7b 10 71 28       	vmovsd xmm14,QWORD PTR [rcx+0x28]
  adbcdc:	c5 7b 10 51 50       	vmovsd xmm10,QWORD PTR [rcx+0x50]
  adbce1:	c5 7b 10 61 78       	vmovsd xmm12,QWORD PTR [rcx+0x78]
  adbce6:	62 e1 ff 08 10 61 14 	vmovsd xmm20,QWORD PTR [rcx+0xa0]
  adbced:	62 e1 ff 08 10 49 19 	vmovsd xmm17,QWORD PTR [rcx+0xc8]
  adbcf4:	c5 7b 10 99 f0 00 00 	vmovsd xmm11,QWORD PTR [rcx+0xf0]
  adbcfb:	00 
  adbcfc:	c5 7b 10 a9 18 01 00 	vmovsd xmm13,QWORD PTR [rcx+0x118]
  adbd03:	00 
  adbd04:	62 e1 ff 08 10 79 28 	vmovsd xmm23,QWORD PTR [rcx+0x140]
  adbd0b:	62 e1 ff 08 10 69 2d 	vmovsd xmm21,QWORD PTR [rcx+0x168]
  adbd12:	62 e1 ff 08 10 51 32 	vmovsd xmm18,QWORD PTR [rcx+0x190]
  adbd19:	62 e1 ff 08 10 41 37 	vmovsd xmm16,QWORD PTR [rcx+0x1b8]
  adbd20:	62 61 ff 08 10 49 3c 	vmovsd xmm25,QWORD PTR [rcx+0x1e0]
  adbd27:	62 61 ff 08 10 41 41 	vmovsd xmm24,QWORD PTR [rcx+0x208]
  adbd2e:	62 e1 ff 08 10 71 46 	vmovsd xmm22,QWORD PTR [rcx+0x230]
  adbd35:	62 e1 ff 08 10 59 4b 	vmovsd xmm19,QWORD PTR [rcx+0x258]
  adbd3c:	e9 8d 00 00 00       	jmp    adbdce <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x1ce>
  adbd41:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  adbd48:	0f 1f 84 00 00 00 00 
  adbd4f:	00 
  adbd50:	c5 7c 10 39          	vmovups ymm15,YMMWORD PTR [rcx]
  adbd54:	c5 7c 10 61 78       	vmovups ymm12,YMMWORD PTR [rcx+0x78]
  adbd59:	c5 7c 10 99 f0 00 00 	vmovups ymm11,YMMWORD PTR [rcx+0xf0]
  adbd60:	00 
  adbd61:	c5 7c 10 77 28       	vmovups ymm14,YMMWORD PTR [rdi+0x28]
  adbd66:	c5 7c 10 57 50       	vmovups ymm10,YMMWORD PTR [rdi+0x50]
  adbd6b:	62 e1 7c 28 10 67 05 	vmovups ymm20,YMMWORD PTR [rdi+0xa0]
  adbd72:	62 e1 7c 28 10 8f c8 	vmovups ymm17,YMMWORD PTR [rdi+0xc8]
  adbd79:	00 00 00 
  adbd7c:	c5 7c 10 af 18 01 00 	vmovups ymm13,YMMWORD PTR [rdi+0x118]
  adbd83:	00 
  adbd84:	62 e1 7c 28 10 7f 0a 	vmovups ymm23,YMMWORD PTR [rdi+0x140]
  adbd8b:	62 e1 7c 28 10 af 68 	vmovups ymm21,YMMWORD PTR [rdi+0x168]
  adbd92:	01 00 00 
  adbd95:	62 e1 7c 28 10 97 90 	vmovups ymm18,YMMWORD PTR [rdi+0x190]
  adbd9c:	01 00 00 
  adbd9f:	62 e1 7c 28 10 87 b8 	vmovups ymm16,YMMWORD PTR [rdi+0x1b8]
  adbda6:	01 00 00 
  adbda9:	62 61 7c 28 10 4f 0f 	vmovups ymm25,YMMWORD PTR [rdi+0x1e0]
  adbdb0:	62 61 7c 28 10 87 08 	vmovups ymm24,YMMWORD PTR [rdi+0x208]
  adbdb7:	02 00 00 
  adbdba:	62 e1 7c 28 10 b7 30 	vmovups ymm22,YMMWORD PTR [rdi+0x230]
  adbdc1:	02 00 00 
  adbdc4:	62 e1 7c 28 10 9f 58 	vmovups ymm19,YMMWORD PTR [rdi+0x258]
  adbdcb:	02 00 00 
  adbdce:	62 21 04 28 58 d7    	vaddps ymm26,ymm15,ymm23
  adbdd4:	62 21 04 28 5c df    	vsubps ymm27,ymm15,ymm23
  adbdda:	62 01 5c 20 58 e1    	vaddps ymm28,ymm20,ymm25
  adbde0:	62 11 5c 20 5c f9    	vsubps ymm15,ymm20,ymm25
  adbde6:	c4 41 04 c6 ff b1    	vshufps ymm15,ymm15,ymm15,0xb1
  adbdec:	62 e1 7c 28 28 fe    	vmovaps ymm23,ymm6
  adbdf2:	62 82 05 28 a8 fb    	vfmadd213ps ymm23,ymm15,ymm27
  adbdf8:	62 12 4d 28 ac fb    	vfnmadd213ps ymm15,ymm6,ymm27
  adbdfe:	62 01 2c 20 58 cc    	vaddps ymm25,ymm26,ymm28
  adbe04:	62 81 2c 20 5c e4    	vsubps ymm20,ymm26,ymm28
  adbe0a:	62 21 0c 28 58 d5    	vaddps ymm26,ymm14,ymm21
  adbe10:	62 31 0c 28 5c f5    	vsubps ymm14,ymm14,ymm21
  adbe16:	62 81 74 20 58 e8    	vaddps ymm21,ymm17,ymm24
  adbe1c:	62 81 74 20 5c c8    	vsubps ymm17,ymm17,ymm24
  adbe22:	62 a1 74 20 c6 c9 b1 	vshufps ymm17,ymm17,ymm17,0xb1
  adbe29:	62 61 7c 28 28 c6    	vmovaps ymm24,ymm6
  adbe2f:	62 42 75 20 a8 c6    	vfmadd213ps ymm24,ymm17,ymm14
  adbe35:	62 c2 4d 28 ac ce    	vfnmadd213ps ymm17,ymm6,ymm14
  adbe3b:	62 31 2c 20 58 f5    	vaddps ymm14,ymm26,ymm21
  adbe41:	62 a1 2c 20 5c ed    	vsubps ymm21,ymm26,ymm21
  adbe47:	62 21 2c 28 58 d2    	vaddps ymm26,ymm10,ymm18
  adbe4d:	62 a1 2c 28 5c d2    	vsubps ymm18,ymm10,ymm18
  adbe53:	62 21 24 28 58 de    	vaddps ymm27,ymm11,ymm22
  adbe59:	62 31 24 28 5c d6    	vsubps ymm10,ymm11,ymm22
  adbe5f:	c4 41 2c c6 d2 b1    	vshufps ymm10,ymm10,ymm10,0xb1
  adbe65:	c5 7c 28 de          	vmovaps ymm11,ymm6
  adbe69:	62 32 2d 28 a8 da    	vfmadd213ps ymm11,ymm10,ymm18
  adbe6f:	62 32 4d 28 ac d2    	vfnmadd213ps ymm10,ymm6,ymm18
  adbe75:	62 81 2c 20 58 d3    	vaddps ymm18,ymm26,ymm27
  adbe7b:	62 81 2c 20 5c f3    	vsubps ymm22,ymm26,ymm27
  adbe81:	62 21 1c 28 58 d0    	vaddps ymm26,ymm12,ymm16
  adbe87:	62 31 1c 28 5c e0    	vsubps ymm12,ymm12,ymm16
  adbe8d:	62 a1 14 28 58 c3    	vaddps ymm16,ymm13,ymm19
  adbe93:	62 31 14 28 5c eb    	vsubps ymm13,ymm13,ymm19
  adbe99:	c4 41 14 c6 ed b1    	vshufps ymm13,ymm13,ymm13,0xb1
  adbe9f:	62 e1 7c 28 28 de    	vmovaps ymm19,ymm6
  adbea5:	62 c2 15 28 a8 dc    	vfmadd213ps ymm19,ymm13,ymm12
  adbeab:	c4 42 4d ac ec       	vfnmadd213ps ymm13,ymm6,ymm12
  adbeb0:	62 21 2c 20 58 d8    	vaddps ymm27,ymm26,ymm16
  adbeb6:	62 31 2c 20 5c e0    	vsubps ymm12,ymm26,ymm16
  adbebc:	62 81 3c 20 c6 c0 b1 	vshufps ymm16,ymm24,ymm24,0xb1
  adbec3:	62 61 3c 20 59 c0    	vmulps ymm24,ymm24,ymm0
  adbec9:	62 22 75 28 b8 c0    	vfmadd231ps ymm24,ymm1,ymm16
  adbecf:	62 a1 54 20 c6 c5 b1 	vshufps ymm16,ymm21,ymm21,0xb1
  adbed6:	62 61 54 20 59 d7    	vmulps ymm26,ymm21,ymm7
  adbedc:	62 22 3d 28 b8 d0    	vfmadd231ps ymm26,ymm8,ymm16
  adbee2:	62 a1 74 20 c6 e9 b1 	vshufps ymm21,ymm17,ymm17,0xb1
  adbee9:	62 e1 74 20 59 c2    	vmulps ymm16,ymm17,ymm2
  adbeef:	62 a2 65 28 b8 c5    	vfmadd231ps ymm16,ymm3,ymm21
  adbef5:	62 a1 64 20 c6 cb b1 	vshufps ymm17,ymm19,ymm19,0xb1
  adbefc:	62 e1 64 20 59 da    	vmulps ymm19,ymm19,ymm2
  adbf02:	62 a2 65 28 b8 d9    	vfmadd231ps ymm19,ymm3,ymm17
  adbf08:	62 c1 1c 28 c6 cc b1 	vshufps ymm17,ymm12,ymm12,0xb1
  adbf0f:	62 41 1c 28 59 e1    	vmulps ymm28,ymm12,ymm9
  adbf15:	62 22 3d 28 b8 e1    	vfmadd231ps ymm28,ymm8,ymm17
  adbf1b:	c4 41 14 c6 e5 b1    	vshufps ymm12,ymm13,ymm13,0xb1
  adbf21:	62 61 14 28 59 ed    	vmulps ymm29,ymm13,ymm5
  adbf27:	62 42 5d 28 b8 ec    	vfmadd231ps ymm29,ymm4,ymm12
  adbf2d:	62 a1 34 20 58 ca    	vaddps ymm17,ymm25,ymm18
  adbf33:	62 a1 34 20 5c ea    	vsubps ymm21,ymm25,ymm18
  adbf39:	c4 41 24 c6 e3 b1    	vshufps ymm12,ymm11,ymm11,0xb1
  adbf3f:	62 61 7c 28 28 cf    	vmovaps ymm25,ymm7
  adbf45:	62 22 25 28 a8 cf    	vfmadd213ps ymm25,ymm11,ymm23
  adbf4b:	62 42 1d 28 b8 c8    	vfmadd231ps ymm25,ymm12,ymm8
  adbf51:	62 32 45 28 ac df    	vfnmadd213ps ymm11,ymm7,ymm23
  adbf57:	c4 42 3d bc dc       	vfnmadd231ps ymm11,ymm8,ymm12
  adbf5c:	62 31 4c 20 c6 e6 b1 	vshufps ymm12,ymm22,ymm22,0xb1
  adbf63:	62 e1 7c 28 28 f6    	vmovaps ymm22,ymm6
  adbf69:	62 a2 1d 28 a8 f4    	vfmadd213ps ymm22,ymm12,ymm20
  adbf6f:	62 32 4d 28 ac e4    	vfnmadd213ps ymm12,ymm6,ymm20
  adbf75:	c4 41 2c c6 ea b1    	vshufps ymm13,ymm10,ymm10,0xb1
  adbf7b:	62 61 7c 28 28 f7    	vmovaps ymm30,ymm7
  adbf81:	62 42 2d 28 ac f7    	vfnmadd213ps ymm30,ymm10,ymm15
  adbf87:	62 42 15 28 b8 f0    	vfmadd231ps ymm30,ymm13,ymm8
  adbf8d:	c4 42 45 a8 d7       	vfmadd213ps ymm10,ymm7,ymm15
  adbf92:	c4 42 3d bc d5       	vfnmadd231ps ymm10,ymm8,ymm13
  adbf97:	62 11 0c 28 58 fb    	vaddps ymm15,ymm14,ymm27
  adbf9d:	62 11 0c 28 5c eb    	vsubps ymm13,ymm14,ymm27
  adbfa3:	c4 41 14 c6 ed b1    	vshufps ymm13,ymm13,ymm13,0xb1
  adbfa9:	62 e1 7c 28 28 d6    	vmovaps ymm18,ymm6
  adbfaf:	62 a2 15 28 a8 d5    	vfmadd213ps ymm18,ymm13,ymm21
  adbfb5:	62 32 4d 28 ac ed    	vfnmadd213ps ymm13,ymm6,ymm21
  adbfbb:	62 c1 74 20 58 ef    	vaddps ymm21,ymm17,ymm15
  adbfc1:	62 51 74 20 5c f7    	vsubps ymm14,ymm17,ymm15
  adbfc7:	62 31 3c 20 58 fb    	vaddps ymm15,ymm24,ymm19
  adbfcd:	62 a1 3c 20 5c cb    	vsubps ymm17,ymm24,ymm19
  adbfd3:	62 a1 74 20 c6 c9 b1 	vshufps ymm17,ymm17,ymm17,0xb1
  adbfda:	62 e1 7c 28 28 de    	vmovaps ymm19,ymm6
  adbfe0:	62 c2 75 20 a8 db    	vfmadd213ps ymm19,ymm17,ymm11
  adbfe6:	62 32 4d 28 bc d9    	vfnmadd231ps ymm11,ymm6,ymm17
  adbfec:	62 c1 34 20 58 ff    	vaddps ymm23,ymm25,ymm15
  adbff2:	62 51 34 20 5c ff    	vsubps ymm15,ymm25,ymm15
  adbff8:	62 81 2c 20 58 cc    	vaddps ymm17,ymm26,ymm28
  adbffe:	62 81 2c 20 5c e4    	vsubps ymm20,ymm26,ymm28
  adc004:	62 21 5c 20 c6 c4 b1 	vshufps ymm24,ymm20,ymm20,0xb1
  adc00b:	62 e1 7c 28 28 e6    	vmovaps ymm20,ymm6
  adc011:	62 c2 3d 20 a8 e4    	vfmadd213ps ymm20,ymm24,ymm12
  adc017:	62 12 4d 28 bc e0    	vfnmadd231ps ymm12,ymm6,ymm24
  adc01d:	62 21 4c 20 58 c1    	vaddps ymm24,ymm22,ymm17
  adc023:	62 a1 4c 20 5c c9    	vsubps ymm17,ymm22,ymm17
  adc029:	62 01 7c 20 58 d5    	vaddps ymm26,ymm16,ymm29
  adc02f:	62 81 7c 20 5c c5    	vsubps ymm16,ymm16,ymm29
  adc035:	62 a1 7c 20 c6 c0 b1 	vshufps ymm16,ymm16,ymm16,0xb1
  adc03c:	62 e1 7c 28 28 f6    	vmovaps ymm22,ymm6
  adc042:	62 c2 7d 20 a8 f2    	vfmadd213ps ymm22,ymm16,ymm10
  adc048:	62 32 4d 28 bc d0    	vfnmadd231ps ymm10,ymm6,ymm16
  adc04e:	62 01 0c 20 58 ca    	vaddps ymm25,ymm30,ymm26
  adc054:	62 81 0c 20 5c c2    	vsubps ymm16,ymm30,ymm26
  adc05a:	62 21 d5 20 14 d7    	vunpcklpd ymm26,ymm21,ymm23
  adc060:	62 01 bd 20 14 d9    	vunpcklpd ymm27,ymm24,ymm25
  adc066:	62 03 2d 20 18 e3 01 	vinsertf32x4 ymm28,ymm26,xmm27,0x1
  adc06d:	62 61 7c 28 29 24 c4 	vmovaps YMMWORD PTR [rsp+rax*8],ymm28
  adc074:	48 83 f8 40          	cmp    rax,0x40
  adc078:	0f 84 f2 fb ff ff    	je     adbc70 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x70>
  adc07e:	62 a1 d5 20 15 ef    	vunpckhpd ymm21,ymm21,ymm23
  adc084:	62 81 bd 20 15 f9    	vunpckhpd ymm23,ymm24,ymm25
  adc08a:	62 23 d5 20 23 c7 03 	vshuff64x2 ymm24,ymm21,ymm23,0x3
  adc091:	62 03 ad 20 23 cb 03 	vshuff64x2 ymm25,ymm26,ymm27,0x3
  adc098:	62 a3 55 20 18 ef 01 	vinsertf32x4 ymm21,ymm21,xmm23,0x1
  adc09f:	62 e1 7c 28 29 6c c4 	vmovaps YMMWORD PTR [rsp+rax*8+0x80],ymm21
  adc0a6:	04 
  adc0a7:	62 61 fd 28 29 4c c4 	vmovapd YMMWORD PTR [rsp+rax*8+0x100],ymm25
  adc0ae:	08 
  adc0af:	62 61 fd 28 29 44 c4 	vmovapd YMMWORD PTR [rsp+rax*8+0x180],ymm24
  adc0b6:	0c 
  adc0b7:	62 a1 ed 20 14 eb    	vunpcklpd ymm21,ymm18,ymm19
  adc0bd:	62 a1 dd 20 14 fe    	vunpcklpd ymm23,ymm20,ymm22
  adc0c3:	62 23 55 20 18 c7 01 	vinsertf32x4 ymm24,ymm21,xmm23,0x1
  adc0ca:	62 61 7c 28 29 44 c4 	vmovaps YMMWORD PTR [rsp+rax*8+0x20],ymm24
  adc0d1:	01 
  adc0d2:	62 a1 ed 20 15 d3    	vunpckhpd ymm18,ymm18,ymm19
  adc0d8:	62 a1 dd 20 15 de    	vunpckhpd ymm19,ymm20,ymm22
  adc0de:	62 a3 ed 20 23 e3 03 	vshuff64x2 ymm20,ymm18,ymm19,0x3
  adc0e5:	62 a3 d5 20 23 ef 03 	vshuff64x2 ymm21,ymm21,ymm23,0x3
  adc0ec:	62 a3 6d 20 18 d3 01 	vinsertf32x4 ymm18,ymm18,xmm19,0x1
  adc0f3:	62 e1 7c 28 29 54 c4 	vmovaps YMMWORD PTR [rsp+rax*8+0xa0],ymm18
  adc0fa:	05 
  adc0fb:	62 e1 fd 28 29 6c c4 	vmovapd YMMWORD PTR [rsp+rax*8+0x120],ymm21
  adc102:	09 
  adc103:	62 e1 fd 28 29 64 c4 	vmovapd YMMWORD PTR [rsp+rax*8+0x1a0],ymm20
  adc10a:	0d 
  adc10b:	62 c1 8d 28 14 d7    	vunpcklpd ymm18,ymm14,ymm15
  adc111:	62 a1 f5 20 14 d8    	vunpcklpd ymm19,ymm17,ymm16
  adc117:	62 a3 6d 20 18 e3 01 	vinsertf32x4 ymm20,ymm18,xmm19,0x1
  adc11e:	62 e1 7c 28 29 64 c4 	vmovaps YMMWORD PTR [rsp+rax*8+0x40],ymm20
  adc125:	02 
  adc126:	c4 41 0d 15 f7       	vunpckhpd ymm14,ymm14,ymm15
  adc12b:	62 31 f5 20 15 f8    	vunpckhpd ymm15,ymm17,ymm16
  adc131:	62 c3 8d 28 23 c7 03 	vshuff64x2 ymm16,ymm14,ymm15,0x3
  adc138:	62 a3 ed 20 23 cb 03 	vshuff64x2 ymm17,ymm18,ymm19,0x3
  adc13f:	c4 43 0d 18 f7 01    	vinsertf128 ymm14,ymm14,xmm15,0x1
  adc145:	c5 7c 29 b4 c4 c0 00 	vmovaps YMMWORD PTR [rsp+rax*8+0xc0],ymm14
  adc14c:	00 00 
  adc14e:	62 e1 fd 28 29 4c c4 	vmovapd YMMWORD PTR [rsp+rax*8+0x140],ymm17
  adc155:	0a 
  adc156:	62 e1 fd 28 29 44 c4 	vmovapd YMMWORD PTR [rsp+rax*8+0x1c0],ymm16
  adc15d:	0e 
  adc15e:	c4 41 15 14 f3       	vunpcklpd ymm14,ymm13,ymm11
  adc163:	c4 41 1d 14 fa       	vunpcklpd ymm15,ymm12,ymm10
  adc168:	62 c3 0d 28 18 c7 01 	vinsertf32x4 ymm16,ymm14,xmm15,0x1
  adc16f:	62 e1 7c 28 29 44 c4 	vmovaps YMMWORD PTR [rsp+rax*8+0x60],ymm16
  adc176:	03 
  adc177:	c4 41 15 15 db       	vunpckhpd ymm11,ymm13,ymm11
  adc17c:	c4 41 1d 15 d2       	vunpckhpd ymm10,ymm12,ymm10
  adc181:	c4 43 25 06 e2 31    	vperm2f128 ymm12,ymm11,ymm10,0x31
  adc187:	c4 43 0d 06 ef 31    	vperm2f128 ymm13,ymm14,ymm15,0x31
  adc18d:	c4 43 25 18 d2 01    	vinsertf128 ymm10,ymm11,xmm10,0x1
  adc193:	c5 7c 29 94 c4 e0 00 	vmovaps YMMWORD PTR [rsp+rax*8+0xe0],ymm10
  adc19a:	00 00 
  adc19c:	c5 7d 29 ac c4 60 01 	vmovapd YMMWORD PTR [rsp+rax*8+0x160],ymm13
  adc1a3:	00 00 
  adc1a5:	c5 7d 29 a4 c4 e0 01 	vmovapd YMMWORD PTR [rsp+rax*8+0x1e0],ymm12
  adc1ac:	00 00 
  adc1ae:	e9 06 fb ff ff       	jmp    adbcb9 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0xb9>
  adc1b3:	c5 fc 28 84 24 80 00 	vmovaps ymm0,YMMWORD PTR [rsp+0x80]
  adc1ba:	00 00 
  adc1bc:	c5 fc 28 8c 24 00 01 	vmovaps ymm1,YMMWORD PTR [rsp+0x100]
  adc1c3:	00 00 
  adc1c5:	c5 fc 59 12          	vmulps ymm2,ymm0,YMMWORD PTR [rdx]
  adc1c9:	c5 fc c6 c0 b1       	vshufps ymm0,ymm0,ymm0,0xb1
  adc1ce:	c4 e2 7d b8 52 20    	vfmadd231ps ymm2,ymm0,YMMWORD PTR [rdx+0x20]
  adc1d4:	c5 f4 c6 c1 b1       	vshufps ymm0,ymm1,ymm1,0xb1
  adc1d9:	c5 f4 59 4a 40       	vmulps ymm1,ymm1,YMMWORD PTR [rdx+0x40]
  adc1de:	c4 e2 7d b8 4a 60    	vfmadd231ps ymm1,ymm0,YMMWORD PTR [rdx+0x60]
  adc1e4:	c5 fc 28 84 24 80 01 	vmovaps ymm0,YMMWORD PTR [rsp+0x180]
  adc1eb:	00 00 
  adc1ed:	c5 fc c6 d8 b1       	vshufps ymm3,ymm0,ymm0,0xb1
  adc1f2:	c5 fc 59 82 80 00 00 	vmulps ymm0,ymm0,YMMWORD PTR [rdx+0x80]
  adc1f9:	00 
  adc1fa:	c4 e2 65 b8 82 a0 00 	vfmadd231ps ymm0,ymm3,YMMWORD PTR [rdx+0xa0]
  adc201:	00 00 
  adc203:	c5 fc 28 9c 24 00 02 	vmovaps ymm3,YMMWORD PTR [rsp+0x200]
  adc20a:	00 00 
  adc20c:	c5 e4 c6 e3 b1       	vshufps ymm4,ymm3,ymm3,0xb1
  adc211:	c5 e4 59 9a c0 00 00 	vmulps ymm3,ymm3,YMMWORD PTR [rdx+0xc0]
  adc218:	00 
  adc219:	c4 e2 5d b8 9a e0 00 	vfmadd231ps ymm3,ymm4,YMMWORD PTR [rdx+0xe0]
  adc220:	00 00 
  adc222:	c5 fc 28 2c 24       	vmovaps ymm5,YMMWORD PTR [rsp]
  adc227:	c5 ec 58 f3          	vaddps ymm6,ymm2,ymm3
  adc22b:	c5 f4 58 f8          	vaddps ymm7,ymm1,ymm0
  adc22f:	c5 6c 5c c3          	vsubps ymm8,ymm2,ymm3
  adc233:	c5 74 5c c8          	vsubps ymm9,ymm1,ymm0
  adc237:	c4 e2 7d 18 0d a8 94 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff5994a8]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  adc23e:	59 ff 
  adc240:	c5 7c 28 d1          	vmovaps ymm10,ymm1
  adc244:	c4 62 4d a8 d5       	vfmadd213ps ymm10,ymm6,ymm5
  adc249:	c4 e2 7d 18 05 ca 90 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff5990ca]        # 7531c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x27cc>
  adc250:	59 ff 
  adc252:	c4 62 45 b8 d0       	vfmadd231ps ymm10,ymm7,ymm0
  adc257:	c5 7c 28 d8          	vmovaps ymm11,ymm0
  adc25b:	c4 62 4d a8 dd       	vfmadd213ps ymm11,ymm6,ymm5
  adc260:	c4 e2 7d 18 15 37 91 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff599137]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  adc267:	59 ff 
  adc269:	c4 62 45 b8 d9       	vfmadd231ps ymm11,ymm7,ymm1
  adc26e:	c5 bc 59 e2          	vmulps ymm4,ymm8,ymm2
  adc272:	c4 e2 7d 18 1d dd 94 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff5994dd]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  adc279:	59 ff 
  adc27b:	c4 e2 35 b8 e3       	vfmadd231ps ymm4,ymm9,ymm3
  adc280:	c5 5c c6 e4 b1       	vshufps ymm12,ymm4,ymm4,0xb1
  adc285:	c5 fc 28 25 33 c3 59 	vmovaps ymm4,YMMWORD PTR [rip+0xffffffffff59c333]        # 785c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5a70>
  adc28c:	ff 
  adc28d:	c5 1c 57 e4          	vxorps ymm12,ymm12,ymm4
  adc291:	c5 3c 59 c3          	vmulps ymm8,ymm8,ymm3
  adc295:	c4 42 6d bc c1       	vfnmadd231ps ymm8,ymm2,ymm9
  adc29a:	c4 41 3c c6 c0 b1    	vshufps ymm8,ymm8,ymm8,0xb1
  adc2a0:	c5 3c 57 c4          	vxorps ymm8,ymm8,ymm4
  adc2a4:	c5 c4 58 f6          	vaddps ymm6,ymm7,ymm6
  adc2a8:	c5 d4 58 ee          	vaddps ymm5,ymm5,ymm6
  adc2ac:	c4 c1 2c 58 f4       	vaddps ymm6,ymm10,ymm12
  adc2b1:	c4 c1 24 58 f8       	vaddps ymm7,ymm11,ymm8
  adc2b6:	c4 41 24 5c c0       	vsubps ymm8,ymm11,ymm8
  adc2bb:	c4 41 2c 5c cc       	vsubps ymm9,ymm10,ymm12
  adc2c0:	c5 fc 11 2e          	vmovups YMMWORD PTR [rsi],ymm5
  adc2c4:	c5 fc 11 b6 80 00 00 	vmovups YMMWORD PTR [rsi+0x80],ymm6
  adc2cb:	00 
  adc2cc:	c5 fc 11 be 00 01 00 	vmovups YMMWORD PTR [rsi+0x100],ymm7
  adc2d3:	00 
  adc2d4:	c5 7c 11 86 80 01 00 	vmovups YMMWORD PTR [rsi+0x180],ymm8
  adc2db:	00 
  adc2dc:	c5 7c 11 8e 00 02 00 	vmovups YMMWORD PTR [rsi+0x200],ymm9
  adc2e3:	00 
  adc2e4:	c5 fc 28 6c 24 20    	vmovaps ymm5,YMMWORD PTR [rsp+0x20]
  adc2ea:	c5 fc 28 b4 24 a0 00 	vmovaps ymm6,YMMWORD PTR [rsp+0xa0]
  adc2f1:	00 00 
  adc2f3:	c5 fc 28 bc 24 20 01 	vmovaps ymm7,YMMWORD PTR [rsp+0x120]
  adc2fa:	00 00 
  adc2fc:	c5 4c 59 82 00 01 00 	vmulps ymm8,ymm6,YMMWORD PTR [rdx+0x100]
  adc303:	00 
  adc304:	c5 cc c6 f6 b1       	vshufps ymm6,ymm6,ymm6,0xb1
  adc309:	c4 62 4d b8 82 20 01 	vfmadd231ps ymm8,ymm6,YMMWORD PTR [rdx+0x120]
  adc310:	00 00 
  adc312:	c5 c4 c6 f7 b1       	vshufps ymm6,ymm7,ymm7,0xb1
  adc317:	c5 c4 59 ba 40 01 00 	vmulps ymm7,ymm7,YMMWORD PTR [rdx+0x140]
  adc31e:	00 
  adc31f:	c4 e2 4d b8 ba 60 01 	vfmadd231ps ymm7,ymm6,YMMWORD PTR [rdx+0x160]
  adc326:	00 00 
  adc328:	c5 fc 28 b4 24 a0 01 	vmovaps ymm6,YMMWORD PTR [rsp+0x1a0]
  adc32f:	00 00 
  adc331:	c5 4c c6 ce b1       	vshufps ymm9,ymm6,ymm6,0xb1
  adc336:	c5 cc 59 b2 80 01 00 	vmulps ymm6,ymm6,YMMWORD PTR [rdx+0x180]
  adc33d:	00 
  adc33e:	c4 e2 35 b8 b2 a0 01 	vfmadd231ps ymm6,ymm9,YMMWORD PTR [rdx+0x1a0]
  adc345:	00 00 
  adc347:	c5 7c 28 8c 24 20 02 	vmovaps ymm9,YMMWORD PTR [rsp+0x220]
  adc34e:	00 00 
  adc350:	c4 41 34 c6 d1 b1    	vshufps ymm10,ymm9,ymm9,0xb1
  adc356:	c5 34 59 8a c0 01 00 	vmulps ymm9,ymm9,YMMWORD PTR [rdx+0x1c0]
  adc35d:	00 
  adc35e:	c4 62 2d b8 8a e0 01 	vfmadd231ps ymm9,ymm10,YMMWORD PTR [rdx+0x1e0]
  adc365:	00 00 
  adc367:	c4 41 3c 58 d1       	vaddps ymm10,ymm8,ymm9
  adc36c:	c5 44 58 de          	vaddps ymm11,ymm7,ymm6
  adc370:	c4 41 3c 5c c1       	vsubps ymm8,ymm8,ymm9
  adc375:	c5 c4 5c f6          	vsubps ymm6,ymm7,ymm6
  adc379:	c5 fc 28 f9          	vmovaps ymm7,ymm1
  adc37d:	c4 e2 2d a8 fd       	vfmadd213ps ymm7,ymm10,ymm5
  adc382:	c4 e2 25 b8 f8       	vfmadd231ps ymm7,ymm11,ymm0
  adc387:	c5 7c 28 c8          	vmovaps ymm9,ymm0
  adc38b:	c4 62 2d a8 cd       	vfmadd213ps ymm9,ymm10,ymm5
  adc390:	c4 62 25 b8 c9       	vfmadd231ps ymm9,ymm11,ymm1
  adc395:	c5 3c 59 e2          	vmulps ymm12,ymm8,ymm2
  adc399:	c4 62 4d b8 e3       	vfmadd231ps ymm12,ymm6,ymm3
  adc39e:	c4 41 1c c6 e4 b1    	vshufps ymm12,ymm12,ymm12,0xb1
  adc3a4:	c5 1c 57 e4          	vxorps ymm12,ymm12,ymm4
  adc3a8:	c5 3c 59 c3          	vmulps ymm8,ymm8,ymm3
  adc3ac:	c4 62 6d bc c6       	vfnmadd231ps ymm8,ymm2,ymm6
  adc3b1:	c4 c1 3c c6 f0 b1    	vshufps ymm6,ymm8,ymm8,0xb1
  adc3b7:	c5 cc 57 f4          	vxorps ymm6,ymm6,ymm4
  adc3bb:	c4 41 24 58 c2       	vaddps ymm8,ymm11,ymm10
  adc3c0:	c5 bc 58 ed          	vaddps ymm5,ymm8,ymm5
  adc3c4:	c5 1c 58 c7          	vaddps ymm8,ymm12,ymm7
  adc3c8:	c5 34 58 d6          	vaddps ymm10,ymm9,ymm6
  adc3cc:	c5 b4 5c f6          	vsubps ymm6,ymm9,ymm6
  adc3d0:	c4 c1 44 5c fc       	vsubps ymm7,ymm7,ymm12
  adc3d5:	c5 fc 11 6e 20       	vmovups YMMWORD PTR [rsi+0x20],ymm5
  adc3da:	c5 7c 11 86 a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm8
  adc3e1:	00 
  adc3e2:	c5 7c 11 96 20 01 00 	vmovups YMMWORD PTR [rsi+0x120],ymm10
  adc3e9:	00 
  adc3ea:	c5 fc 11 b6 a0 01 00 	vmovups YMMWORD PTR [rsi+0x1a0],ymm6
  adc3f1:	00 
  adc3f2:	c5 fc 11 be 20 02 00 	vmovups YMMWORD PTR [rsi+0x220],ymm7
  adc3f9:	00 
  adc3fa:	c5 fc 28 6c 24 40    	vmovaps ymm5,YMMWORD PTR [rsp+0x40]
  adc400:	c5 fc 28 b4 24 c0 00 	vmovaps ymm6,YMMWORD PTR [rsp+0xc0]
  adc407:	00 00 
  adc409:	c5 fc 28 bc 24 40 01 	vmovaps ymm7,YMMWORD PTR [rsp+0x140]
  adc410:	00 00 
  adc412:	c5 7c 28 84 24 c0 01 	vmovaps ymm8,YMMWORD PTR [rsp+0x1c0]
  adc419:	00 00 
  adc41b:	c5 4c c6 ce b1       	vshufps ymm9,ymm6,ymm6,0xb1
  adc420:	c5 cc 59 b2 00 02 00 	vmulps ymm6,ymm6,YMMWORD PTR [rdx+0x200]
  adc427:	00 
  adc428:	c4 e2 35 b8 b2 20 02 	vfmadd231ps ymm6,ymm9,YMMWORD PTR [rdx+0x220]
  adc42f:	00 00 
  adc431:	c5 44 59 8a 40 02 00 	vmulps ymm9,ymm7,YMMWORD PTR [rdx+0x240]
  adc438:	00 
  adc439:	c5 c4 c6 ff b1       	vshufps ymm7,ymm7,ymm7,0xb1
  adc43e:	c4 62 45 b8 8a 60 02 	vfmadd231ps ymm9,ymm7,YMMWORD PTR [rdx+0x260]
  adc445:	00 00 
  adc447:	c4 c1 3c c6 f8 b1    	vshufps ymm7,ymm8,ymm8,0xb1
  adc44d:	c5 3c 59 82 80 02 00 	vmulps ymm8,ymm8,YMMWORD PTR [rdx+0x280]
  adc454:	00 
  adc455:	c4 62 45 b8 82 a0 02 	vfmadd231ps ymm8,ymm7,YMMWORD PTR [rdx+0x2a0]
  adc45c:	00 00 
  adc45e:	c5 fc 28 bc 24 40 02 	vmovaps ymm7,YMMWORD PTR [rsp+0x240]
  adc465:	00 00 
  adc467:	c5 44 c6 d7 b1       	vshufps ymm10,ymm7,ymm7,0xb1
  adc46c:	c5 c4 59 ba c0 02 00 	vmulps ymm7,ymm7,YMMWORD PTR [rdx+0x2c0]
  adc473:	00 
  adc474:	c4 e2 2d b8 ba e0 02 	vfmadd231ps ymm7,ymm10,YMMWORD PTR [rdx+0x2e0]
  adc47b:	00 00 
  adc47d:	c5 4c 58 d7          	vaddps ymm10,ymm6,ymm7
  adc481:	c4 41 34 58 d8       	vaddps ymm11,ymm9,ymm8
  adc486:	c5 cc 5c f7          	vsubps ymm6,ymm6,ymm7
  adc48a:	c4 c1 34 5c f8       	vsubps ymm7,ymm9,ymm8
  adc48f:	c5 7c 28 c1          	vmovaps ymm8,ymm1
  adc493:	c4 62 2d a8 c5       	vfmadd213ps ymm8,ymm10,ymm5
  adc498:	c4 62 25 b8 c0       	vfmadd231ps ymm8,ymm11,ymm0
  adc49d:	c5 7c 28 c8          	vmovaps ymm9,ymm0
  adc4a1:	c4 62 2d a8 cd       	vfmadd213ps ymm9,ymm10,ymm5
  adc4a6:	c4 62 25 b8 c9       	vfmadd231ps ymm9,ymm11,ymm1
  adc4ab:	c5 4c 59 e2          	vmulps ymm12,ymm6,ymm2
  adc4af:	c4 62 45 b8 e3       	vfmadd231ps ymm12,ymm7,ymm3
  adc4b4:	c4 41 1c c6 e4 b1    	vshufps ymm12,ymm12,ymm12,0xb1
  adc4ba:	c5 1c 57 e4          	vxorps ymm12,ymm12,ymm4
  adc4be:	c5 cc 59 f3          	vmulps ymm6,ymm6,ymm3
  adc4c2:	c4 e2 6d bc f7       	vfnmadd231ps ymm6,ymm2,ymm7
  adc4c7:	c5 cc c6 f6 b1       	vshufps ymm6,ymm6,ymm6,0xb1
  adc4cc:	c5 cc 57 f4          	vxorps ymm6,ymm6,ymm4
  adc4d0:	c4 c1 24 58 fa       	vaddps ymm7,ymm11,ymm10
  adc4d5:	c5 d4 58 ef          	vaddps ymm5,ymm5,ymm7
  adc4d9:	c4 c1 3c 58 fc       	vaddps ymm7,ymm8,ymm12
  adc4de:	c5 34 58 d6          	vaddps ymm10,ymm9,ymm6
  adc4e2:	c5 b4 5c f6          	vsubps ymm6,ymm9,ymm6
  adc4e6:	c4 41 3c 5c c4       	vsubps ymm8,ymm8,ymm12
  adc4eb:	c5 fc 11 6e 40       	vmovups YMMWORD PTR [rsi+0x40],ymm5
  adc4f0:	c5 fc 11 be c0 00 00 	vmovups YMMWORD PTR [rsi+0xc0],ymm7
  adc4f7:	00 
  adc4f8:	c5 7c 11 96 40 01 00 	vmovups YMMWORD PTR [rsi+0x140],ymm10
  adc4ff:	00 
  adc500:	c5 fc 11 b6 c0 01 00 	vmovups YMMWORD PTR [rsi+0x1c0],ymm6
  adc507:	00 
  adc508:	c5 7c 11 86 40 02 00 	vmovups YMMWORD PTR [rsi+0x240],ymm8
  adc50f:	00 
  adc510:	c5 fc 28 6c 24 60    	vmovaps ymm5,YMMWORD PTR [rsp+0x60]
  adc516:	c5 fc 28 b4 24 e0 00 	vmovaps ymm6,YMMWORD PTR [rsp+0xe0]
  adc51d:	00 00 
  adc51f:	c5 fc 28 bc 24 60 01 	vmovaps ymm7,YMMWORD PTR [rsp+0x160]
  adc526:	00 00 
  adc528:	c5 4c 59 82 00 03 00 	vmulps ymm8,ymm6,YMMWORD PTR [rdx+0x300]
  adc52f:	00 
  adc530:	c5 cc c6 f6 b1       	vshufps ymm6,ymm6,ymm6,0xb1
  adc535:	c4 62 4d b8 82 20 03 	vfmadd231ps ymm8,ymm6,YMMWORD PTR [rdx+0x320]
  adc53c:	00 00 
  adc53e:	c5 c4 c6 f7 b1       	vshufps ymm6,ymm7,ymm7,0xb1
  adc543:	c5 c4 59 ba 40 03 00 	vmulps ymm7,ymm7,YMMWORD PTR [rdx+0x340]
  adc54a:	00 
  adc54b:	c4 e2 4d b8 ba 60 03 	vfmadd231ps ymm7,ymm6,YMMWORD PTR [rdx+0x360]
  adc552:	00 00 
  adc554:	c5 fc 28 b4 24 e0 01 	vmovaps ymm6,YMMWORD PTR [rsp+0x1e0]
  adc55b:	00 00 
  adc55d:	c5 4c c6 ce b1       	vshufps ymm9,ymm6,ymm6,0xb1
  adc562:	c5 cc 59 b2 80 03 00 	vmulps ymm6,ymm6,YMMWORD PTR [rdx+0x380]
  adc569:	00 
  adc56a:	c4 e2 35 b8 b2 a0 03 	vfmadd231ps ymm6,ymm9,YMMWORD PTR [rdx+0x3a0]
  adc571:	00 00 
  adc573:	c5 7c 28 8c 24 60 02 	vmovaps ymm9,YMMWORD PTR [rsp+0x260]
  adc57a:	00 00 
  adc57c:	c4 41 34 c6 d1 b1    	vshufps ymm10,ymm9,ymm9,0xb1
  adc582:	c5 34 59 8a c0 03 00 	vmulps ymm9,ymm9,YMMWORD PTR [rdx+0x3c0]
  adc589:	00 
  adc58a:	c4 62 2d b8 8a e0 03 	vfmadd231ps ymm9,ymm10,YMMWORD PTR [rdx+0x3e0]
  adc591:	00 00 
  adc593:	c4 41 3c 58 d1       	vaddps ymm10,ymm8,ymm9
  adc598:	c5 44 58 de          	vaddps ymm11,ymm7,ymm6
  adc59c:	c4 41 3c 5c c1       	vsubps ymm8,ymm8,ymm9
  adc5a1:	c5 c4 5c f6          	vsubps ymm6,ymm7,ymm6
  adc5a5:	c5 fc 28 f9          	vmovaps ymm7,ymm1
  adc5a9:	c4 e2 2d a8 fd       	vfmadd213ps ymm7,ymm10,ymm5
  adc5ae:	c4 e2 25 b8 f8       	vfmadd231ps ymm7,ymm11,ymm0
  adc5b3:	c4 e2 2d a8 c5       	vfmadd213ps ymm0,ymm10,ymm5
  adc5b8:	c4 e2 25 b8 c1       	vfmadd231ps ymm0,ymm11,ymm1
  adc5bd:	c5 bc 59 ca          	vmulps ymm1,ymm8,ymm2
  adc5c1:	c4 e2 4d b8 cb       	vfmadd231ps ymm1,ymm6,ymm3
  adc5c6:	c5 f4 c6 c9 b1       	vshufps ymm1,ymm1,ymm1,0xb1
  adc5cb:	c5 f4 57 cc          	vxorps ymm1,ymm1,ymm4
  adc5cf:	c5 bc 59 db          	vmulps ymm3,ymm8,ymm3
  adc5d3:	c4 e2 4d bc da       	vfnmadd231ps ymm3,ymm6,ymm2
  adc5d8:	c5 e4 c6 d3 b1       	vshufps ymm2,ymm3,ymm3,0xb1
  adc5dd:	c5 ec 57 d4          	vxorps ymm2,ymm2,ymm4
  adc5e1:	c4 c1 24 58 da       	vaddps ymm3,ymm11,ymm10
  adc5e6:	c5 d4 58 db          	vaddps ymm3,ymm5,ymm3
  adc5ea:	c5 c4 58 e1          	vaddps ymm4,ymm7,ymm1
  adc5ee:	c5 fc 58 ea          	vaddps ymm5,ymm0,ymm2
  adc5f2:	c5 fc 5c c2          	vsubps ymm0,ymm0,ymm2
  adc5f6:	c5 c4 5c c9          	vsubps ymm1,ymm7,ymm1
  adc5fa:	c5 fc 11 5e 60       	vmovups YMMWORD PTR [rsi+0x60],ymm3
  adc5ff:	c5 fc 11 a6 e0 00 00 	vmovups YMMWORD PTR [rsi+0xe0],ymm4
  adc606:	00 
  adc607:	c5 fc 11 ae 60 01 00 	vmovups YMMWORD PTR [rsi+0x160],ymm5
  adc60e:	00 
  adc60f:	c5 fc 11 86 e0 01 00 	vmovups YMMWORD PTR [rsi+0x1e0],ymm0
  adc616:	00 
  adc617:	c5 fc 11 8e 60 02 00 	vmovups YMMWORD PTR [rsi+0x260],ymm1
  adc61e:	00 
  adc61f:	48 89 ec             	mov    rsp,rbp
  adc622:	5d                   	pop    rbp
  adc623:	c5 f8 77             	vzeroupper
  adc626:	c3                   	ret
