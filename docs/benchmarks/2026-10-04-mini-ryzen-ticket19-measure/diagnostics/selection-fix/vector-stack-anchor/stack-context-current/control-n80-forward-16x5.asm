
target/ticket19/selection-fix/vector-stack-anchor/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000add940 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  add940:	55                   	push   rbp
  add941:	48 89 e5             	mov    rbp,rsp
  add944:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  add948:	48 81 ec 40 08 00 00 	sub    rsp,0x840
  add94f:	c5 fc 10 82 00 04 00 	vmovups ymm0,YMMWORD PTR [rdx+0x400]
  add956:	00 
  add957:	c5 fc 10 8a 20 04 00 	vmovups ymm1,YMMWORD PTR [rdx+0x420]
  add95e:	00 
  add95f:	c5 fc 10 92 40 04 00 	vmovups ymm2,YMMWORD PTR [rdx+0x440]
  add966:	00 
  add967:	c5 fc 10 9a 60 04 00 	vmovups ymm3,YMMWORD PTR [rdx+0x460]
  add96e:	00 
  add96f:	c5 fc 10 a2 a0 04 00 	vmovups ymm4,YMMWORD PTR [rdx+0x4a0]
  add976:	00 
  add977:	c5 fc 10 aa 80 04 00 	vmovups ymm5,YMMWORD PTR [rdx+0x480]
  add97e:	00 
  add97f:	31 c0                	xor    eax,eax
  add981:	c4 e2 7d 19 35 96 74 	vbroadcastsd ymm6,QWORD PTR [rip+0xffffffffff597496]        # 74e20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x22d0>
  add988:	59 ff 
  add98a:	c4 e2 7d 18 3d 09 7a 	vbroadcastss ymm7,DWORD PTR [rip+0xffffffffff597a09]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  add991:	59 ff 
  add993:	c4 62 7d 19 05 54 71 	vbroadcastsd ymm8,QWORD PTR [rip+0xffffffffff597154]        # 74af0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1fa0>
  add99a:	59 ff 
  add99c:	c4 62 7d 18 0d d7 7a 	vbroadcastss ymm9,DWORD PTR [rip+0xffffffffff597ad7]        # 7547c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x292c>
  add9a3:	59 ff 
  add9a5:	48 89 f9             	mov    rcx,rdi
  add9a8:	45 31 c0             	xor    r8d,r8d
  add9ab:	eb 61                	jmp    adda0e <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0xce>
  add9ad:	0f 1f 00             	nop    DWORD PTR [rax]
  add9b0:	62 a1 6c 00 16 d3    	vmovlhps xmm18,xmm18,xmm19
  add9b6:	62 a1 5c 00 16 de    	vmovlhps xmm19,xmm20,xmm22
  add9bc:	62 e1 7c 08 29 5c c4 	vmovaps XMMWORD PTR [rsp+rax*8+0x30],xmm19
  add9c3:	03 
  add9c4:	62 e1 7c 08 29 54 c4 	vmovaps XMMWORD PTR [rsp+rax*8+0x20],xmm18
  add9cb:	02 
  add9cc:	c4 41 08 16 f7       	vmovlhps xmm14,xmm14,xmm15
  add9d1:	62 31 74 00 16 f8    	vmovlhps xmm15,xmm17,xmm16
  add9d7:	c5 78 29 7c c4 50    	vmovaps XMMWORD PTR [rsp+rax*8+0x50],xmm15
  add9dd:	c5 78 29 74 c4 40    	vmovaps XMMWORD PTR [rsp+rax*8+0x40],xmm14
  add9e3:	c4 41 10 16 db       	vmovlhps xmm11,xmm13,xmm11
  add9e8:	c4 41 18 16 d2       	vmovlhps xmm10,xmm12,xmm10
  add9ed:	c5 78 29 54 c4 70    	vmovaps XMMWORD PTR [rsp+rax*8+0x70],xmm10
  add9f3:	c5 78 29 5c c4 60    	vmovaps XMMWORD PTR [rsp+rax*8+0x60],xmm11
  add9f9:	48 83 c0 40          	add    rax,0x40
  add9fd:	48 83 c1 20          	add    rcx,0x20
  adda01:	41 f6 c0 01          	test   r8b,0x1
  adda05:	41 b0 01             	mov    r8b,0x1
  adda08:	0f 85 e5 04 00 00    	jne    addef3 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x5b3>
  adda0e:	48 85 c0             	test   rax,rax
  adda11:	74 7d                	je     adda90 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x150>
  adda13:	c5 7b 10 39          	vmovsd xmm15,QWORD PTR [rcx]
  adda17:	c5 7b 10 71 28       	vmovsd xmm14,QWORD PTR [rcx+0x28]
  adda1c:	c5 7b 10 51 50       	vmovsd xmm10,QWORD PTR [rcx+0x50]
  adda21:	c5 7b 10 61 78       	vmovsd xmm12,QWORD PTR [rcx+0x78]
  adda26:	62 e1 ff 08 10 61 14 	vmovsd xmm20,QWORD PTR [rcx+0xa0]
  adda2d:	62 e1 ff 08 10 49 19 	vmovsd xmm17,QWORD PTR [rcx+0xc8]
  adda34:	c5 7b 10 99 f0 00 00 	vmovsd xmm11,QWORD PTR [rcx+0xf0]
  adda3b:	00 
  adda3c:	c5 7b 10 a9 18 01 00 	vmovsd xmm13,QWORD PTR [rcx+0x118]
  adda43:	00 
  adda44:	62 e1 ff 08 10 79 28 	vmovsd xmm23,QWORD PTR [rcx+0x140]
  adda4b:	62 e1 ff 08 10 69 2d 	vmovsd xmm21,QWORD PTR [rcx+0x168]
  adda52:	62 e1 ff 08 10 51 32 	vmovsd xmm18,QWORD PTR [rcx+0x190]
  adda59:	62 e1 ff 08 10 41 37 	vmovsd xmm16,QWORD PTR [rcx+0x1b8]
  adda60:	62 61 ff 08 10 49 3c 	vmovsd xmm25,QWORD PTR [rcx+0x1e0]
  adda67:	62 61 ff 08 10 41 41 	vmovsd xmm24,QWORD PTR [rcx+0x208]
  adda6e:	62 e1 ff 08 10 71 46 	vmovsd xmm22,QWORD PTR [rcx+0x230]
  adda75:	62 e1 ff 08 10 59 4b 	vmovsd xmm19,QWORD PTR [rcx+0x258]
  adda7c:	e9 8d 00 00 00       	jmp    addb0e <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x1ce>
  adda81:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  adda88:	0f 1f 84 00 00 00 00 
  adda8f:	00 
  adda90:	c5 7c 10 39          	vmovups ymm15,YMMWORD PTR [rcx]
  adda94:	c5 7c 10 61 78       	vmovups ymm12,YMMWORD PTR [rcx+0x78]
  adda99:	c5 7c 10 99 f0 00 00 	vmovups ymm11,YMMWORD PTR [rcx+0xf0]
  addaa0:	00 
  addaa1:	c5 7c 10 77 28       	vmovups ymm14,YMMWORD PTR [rdi+0x28]
  addaa6:	c5 7c 10 57 50       	vmovups ymm10,YMMWORD PTR [rdi+0x50]
  addaab:	62 e1 7c 28 10 67 05 	vmovups ymm20,YMMWORD PTR [rdi+0xa0]
  addab2:	62 e1 7c 28 10 8f c8 	vmovups ymm17,YMMWORD PTR [rdi+0xc8]
  addab9:	00 00 00 
  addabc:	c5 7c 10 af 18 01 00 	vmovups ymm13,YMMWORD PTR [rdi+0x118]
  addac3:	00 
  addac4:	62 e1 7c 28 10 7f 0a 	vmovups ymm23,YMMWORD PTR [rdi+0x140]
  addacb:	62 e1 7c 28 10 af 68 	vmovups ymm21,YMMWORD PTR [rdi+0x168]
  addad2:	01 00 00 
  addad5:	62 e1 7c 28 10 97 90 	vmovups ymm18,YMMWORD PTR [rdi+0x190]
  addadc:	01 00 00 
  addadf:	62 e1 7c 28 10 87 b8 	vmovups ymm16,YMMWORD PTR [rdi+0x1b8]
  addae6:	01 00 00 
  addae9:	62 61 7c 28 10 4f 0f 	vmovups ymm25,YMMWORD PTR [rdi+0x1e0]
  addaf0:	62 61 7c 28 10 87 08 	vmovups ymm24,YMMWORD PTR [rdi+0x208]
  addaf7:	02 00 00 
  addafa:	62 e1 7c 28 10 b7 30 	vmovups ymm22,YMMWORD PTR [rdi+0x230]
  addb01:	02 00 00 
  addb04:	62 e1 7c 28 10 9f 58 	vmovups ymm19,YMMWORD PTR [rdi+0x258]
  addb0b:	02 00 00 
  addb0e:	62 21 04 28 58 d7    	vaddps ymm26,ymm15,ymm23
  addb14:	62 21 04 28 5c df    	vsubps ymm27,ymm15,ymm23
  addb1a:	62 01 5c 20 58 e1    	vaddps ymm28,ymm20,ymm25
  addb20:	62 11 5c 20 5c f9    	vsubps ymm15,ymm20,ymm25
  addb26:	c4 41 04 c6 ff b1    	vshufps ymm15,ymm15,ymm15,0xb1
  addb2c:	62 e1 7c 28 28 fe    	vmovaps ymm23,ymm6
  addb32:	62 82 05 28 a8 fb    	vfmadd213ps ymm23,ymm15,ymm27
  addb38:	62 12 4d 28 ac fb    	vfnmadd213ps ymm15,ymm6,ymm27
  addb3e:	62 01 2c 20 58 cc    	vaddps ymm25,ymm26,ymm28
  addb44:	62 81 2c 20 5c e4    	vsubps ymm20,ymm26,ymm28
  addb4a:	62 21 0c 28 58 d5    	vaddps ymm26,ymm14,ymm21
  addb50:	62 31 0c 28 5c f5    	vsubps ymm14,ymm14,ymm21
  addb56:	62 81 74 20 58 e8    	vaddps ymm21,ymm17,ymm24
  addb5c:	62 81 74 20 5c c8    	vsubps ymm17,ymm17,ymm24
  addb62:	62 a1 74 20 c6 c9 b1 	vshufps ymm17,ymm17,ymm17,0xb1
  addb69:	62 61 7c 28 28 c6    	vmovaps ymm24,ymm6
  addb6f:	62 42 75 20 a8 c6    	vfmadd213ps ymm24,ymm17,ymm14
  addb75:	62 c2 4d 28 ac ce    	vfnmadd213ps ymm17,ymm6,ymm14
  addb7b:	62 31 2c 20 58 f5    	vaddps ymm14,ymm26,ymm21
  addb81:	62 a1 2c 20 5c ed    	vsubps ymm21,ymm26,ymm21
  addb87:	62 21 2c 28 58 d2    	vaddps ymm26,ymm10,ymm18
  addb8d:	62 a1 2c 28 5c d2    	vsubps ymm18,ymm10,ymm18
  addb93:	62 21 24 28 58 de    	vaddps ymm27,ymm11,ymm22
  addb99:	62 31 24 28 5c d6    	vsubps ymm10,ymm11,ymm22
  addb9f:	c4 41 2c c6 d2 b1    	vshufps ymm10,ymm10,ymm10,0xb1
  addba5:	c5 7c 28 de          	vmovaps ymm11,ymm6
  addba9:	62 32 2d 28 a8 da    	vfmadd213ps ymm11,ymm10,ymm18
  addbaf:	62 32 4d 28 ac d2    	vfnmadd213ps ymm10,ymm6,ymm18
  addbb5:	62 81 2c 20 58 d3    	vaddps ymm18,ymm26,ymm27
  addbbb:	62 81 2c 20 5c f3    	vsubps ymm22,ymm26,ymm27
  addbc1:	62 21 1c 28 58 d0    	vaddps ymm26,ymm12,ymm16
  addbc7:	62 31 1c 28 5c e0    	vsubps ymm12,ymm12,ymm16
  addbcd:	62 a1 14 28 58 c3    	vaddps ymm16,ymm13,ymm19
  addbd3:	62 31 14 28 5c eb    	vsubps ymm13,ymm13,ymm19
  addbd9:	c4 41 14 c6 ed b1    	vshufps ymm13,ymm13,ymm13,0xb1
  addbdf:	62 e1 7c 28 28 de    	vmovaps ymm19,ymm6
  addbe5:	62 c2 15 28 a8 dc    	vfmadd213ps ymm19,ymm13,ymm12
  addbeb:	c4 42 4d ac ec       	vfnmadd213ps ymm13,ymm6,ymm12
  addbf0:	62 21 2c 20 58 d8    	vaddps ymm27,ymm26,ymm16
  addbf6:	62 31 2c 20 5c e0    	vsubps ymm12,ymm26,ymm16
  addbfc:	62 81 3c 20 c6 c0 b1 	vshufps ymm16,ymm24,ymm24,0xb1
  addc03:	62 61 3c 20 59 c0    	vmulps ymm24,ymm24,ymm0
  addc09:	62 22 75 28 b8 c0    	vfmadd231ps ymm24,ymm1,ymm16
  addc0f:	62 a1 54 20 c6 c5 b1 	vshufps ymm16,ymm21,ymm21,0xb1
  addc16:	62 61 54 20 59 d7    	vmulps ymm26,ymm21,ymm7
  addc1c:	62 22 3d 28 b8 d0    	vfmadd231ps ymm26,ymm8,ymm16
  addc22:	62 a1 74 20 c6 e9 b1 	vshufps ymm21,ymm17,ymm17,0xb1
  addc29:	62 e1 74 20 59 c2    	vmulps ymm16,ymm17,ymm2
  addc2f:	62 a2 65 28 b8 c5    	vfmadd231ps ymm16,ymm3,ymm21
  addc35:	62 a1 64 20 c6 cb b1 	vshufps ymm17,ymm19,ymm19,0xb1
  addc3c:	62 e1 64 20 59 da    	vmulps ymm19,ymm19,ymm2
  addc42:	62 a2 65 28 b8 d9    	vfmadd231ps ymm19,ymm3,ymm17
  addc48:	62 c1 1c 28 c6 cc b1 	vshufps ymm17,ymm12,ymm12,0xb1
  addc4f:	62 41 1c 28 59 e1    	vmulps ymm28,ymm12,ymm9
  addc55:	62 22 3d 28 b8 e1    	vfmadd231ps ymm28,ymm8,ymm17
  addc5b:	c4 41 14 c6 e5 b1    	vshufps ymm12,ymm13,ymm13,0xb1
  addc61:	62 61 14 28 59 ed    	vmulps ymm29,ymm13,ymm5
  addc67:	62 42 5d 28 b8 ec    	vfmadd231ps ymm29,ymm4,ymm12
  addc6d:	62 a1 34 20 58 ca    	vaddps ymm17,ymm25,ymm18
  addc73:	62 a1 34 20 5c ea    	vsubps ymm21,ymm25,ymm18
  addc79:	c4 41 24 c6 e3 b1    	vshufps ymm12,ymm11,ymm11,0xb1
  addc7f:	62 61 7c 28 28 cf    	vmovaps ymm25,ymm7
  addc85:	62 22 25 28 a8 cf    	vfmadd213ps ymm25,ymm11,ymm23
  addc8b:	62 42 1d 28 b8 c8    	vfmadd231ps ymm25,ymm12,ymm8
  addc91:	62 32 45 28 ac df    	vfnmadd213ps ymm11,ymm7,ymm23
  addc97:	c4 42 3d bc dc       	vfnmadd231ps ymm11,ymm8,ymm12
  addc9c:	62 31 4c 20 c6 e6 b1 	vshufps ymm12,ymm22,ymm22,0xb1
  addca3:	62 e1 7c 28 28 f6    	vmovaps ymm22,ymm6
  addca9:	62 a2 1d 28 a8 f4    	vfmadd213ps ymm22,ymm12,ymm20
  addcaf:	62 32 4d 28 ac e4    	vfnmadd213ps ymm12,ymm6,ymm20
  addcb5:	c4 41 2c c6 ea b1    	vshufps ymm13,ymm10,ymm10,0xb1
  addcbb:	62 61 7c 28 28 f7    	vmovaps ymm30,ymm7
  addcc1:	62 42 2d 28 ac f7    	vfnmadd213ps ymm30,ymm10,ymm15
  addcc7:	62 42 15 28 b8 f0    	vfmadd231ps ymm30,ymm13,ymm8
  addccd:	c4 42 45 a8 d7       	vfmadd213ps ymm10,ymm7,ymm15
  addcd2:	c4 42 3d bc d5       	vfnmadd231ps ymm10,ymm8,ymm13
  addcd7:	62 11 0c 28 58 fb    	vaddps ymm15,ymm14,ymm27
  addcdd:	62 11 0c 28 5c eb    	vsubps ymm13,ymm14,ymm27
  addce3:	c4 41 14 c6 ed b1    	vshufps ymm13,ymm13,ymm13,0xb1
  addce9:	62 e1 7c 28 28 d6    	vmovaps ymm18,ymm6
  addcef:	62 a2 15 28 a8 d5    	vfmadd213ps ymm18,ymm13,ymm21
  addcf5:	62 32 4d 28 ac ed    	vfnmadd213ps ymm13,ymm6,ymm21
  addcfb:	62 c1 74 20 58 ef    	vaddps ymm21,ymm17,ymm15
  addd01:	62 51 74 20 5c f7    	vsubps ymm14,ymm17,ymm15
  addd07:	62 31 3c 20 58 fb    	vaddps ymm15,ymm24,ymm19
  addd0d:	62 a1 3c 20 5c cb    	vsubps ymm17,ymm24,ymm19
  addd13:	62 a1 74 20 c6 c9 b1 	vshufps ymm17,ymm17,ymm17,0xb1
  addd1a:	62 e1 7c 28 28 de    	vmovaps ymm19,ymm6
  addd20:	62 c2 75 20 a8 db    	vfmadd213ps ymm19,ymm17,ymm11
  addd26:	62 32 4d 28 bc d9    	vfnmadd231ps ymm11,ymm6,ymm17
  addd2c:	62 c1 34 20 58 ff    	vaddps ymm23,ymm25,ymm15
  addd32:	62 51 34 20 5c ff    	vsubps ymm15,ymm25,ymm15
  addd38:	62 81 2c 20 58 cc    	vaddps ymm17,ymm26,ymm28
  addd3e:	62 81 2c 20 5c e4    	vsubps ymm20,ymm26,ymm28
  addd44:	62 21 5c 20 c6 c4 b1 	vshufps ymm24,ymm20,ymm20,0xb1
  addd4b:	62 e1 7c 28 28 e6    	vmovaps ymm20,ymm6
  addd51:	62 c2 3d 20 a8 e4    	vfmadd213ps ymm20,ymm24,ymm12
  addd57:	62 12 4d 28 bc e0    	vfnmadd231ps ymm12,ymm6,ymm24
  addd5d:	62 21 4c 20 58 c1    	vaddps ymm24,ymm22,ymm17
  addd63:	62 a1 4c 20 5c c9    	vsubps ymm17,ymm22,ymm17
  addd69:	62 01 7c 20 58 d5    	vaddps ymm26,ymm16,ymm29
  addd6f:	62 81 7c 20 5c c5    	vsubps ymm16,ymm16,ymm29
  addd75:	62 a1 7c 20 c6 c0 b1 	vshufps ymm16,ymm16,ymm16,0xb1
  addd7c:	62 e1 7c 28 28 f6    	vmovaps ymm22,ymm6
  addd82:	62 c2 7d 20 a8 f2    	vfmadd213ps ymm22,ymm16,ymm10
  addd88:	62 32 4d 28 bc d0    	vfnmadd231ps ymm10,ymm6,ymm16
  addd8e:	62 01 0c 20 58 ca    	vaddps ymm25,ymm30,ymm26
  addd94:	62 81 0c 20 5c c2    	vsubps ymm16,ymm30,ymm26
  addd9a:	62 21 d5 20 14 d7    	vunpcklpd ymm26,ymm21,ymm23
  addda0:	62 01 bd 20 14 d9    	vunpcklpd ymm27,ymm24,ymm25
  addda6:	62 03 2d 20 18 e3 01 	vinsertf32x4 ymm28,ymm26,xmm27,0x1
  adddad:	62 61 7c 28 29 24 c4 	vmovaps YMMWORD PTR [rsp+rax*8],ymm28
  adddb4:	48 83 f8 40          	cmp    rax,0x40
  adddb8:	0f 84 f2 fb ff ff    	je     add9b0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x70>
  adddbe:	62 a1 d5 20 15 ef    	vunpckhpd ymm21,ymm21,ymm23
  adddc4:	62 81 bd 20 15 f9    	vunpckhpd ymm23,ymm24,ymm25
  adddca:	62 23 d5 20 23 c7 03 	vshuff64x2 ymm24,ymm21,ymm23,0x3
  adddd1:	62 03 ad 20 23 cb 03 	vshuff64x2 ymm25,ymm26,ymm27,0x3
  adddd8:	62 a3 55 20 18 ef 01 	vinsertf32x4 ymm21,ymm21,xmm23,0x1
  addddf:	62 e1 7c 28 29 6c c4 	vmovaps YMMWORD PTR [rsp+rax*8+0x80],ymm21
  addde6:	04 
  addde7:	62 61 fd 28 29 4c c4 	vmovapd YMMWORD PTR [rsp+rax*8+0x100],ymm25
  adddee:	08 
  adddef:	62 61 fd 28 29 44 c4 	vmovapd YMMWORD PTR [rsp+rax*8+0x180],ymm24
  adddf6:	0c 
  adddf7:	62 a1 ed 20 14 eb    	vunpcklpd ymm21,ymm18,ymm19
  adddfd:	62 a1 dd 20 14 fe    	vunpcklpd ymm23,ymm20,ymm22
  adde03:	62 23 55 20 18 c7 01 	vinsertf32x4 ymm24,ymm21,xmm23,0x1
  adde0a:	62 61 7c 28 29 44 c4 	vmovaps YMMWORD PTR [rsp+rax*8+0x20],ymm24
  adde11:	01 
  adde12:	62 a1 ed 20 15 d3    	vunpckhpd ymm18,ymm18,ymm19
  adde18:	62 a1 dd 20 15 de    	vunpckhpd ymm19,ymm20,ymm22
  adde1e:	62 a3 ed 20 23 e3 03 	vshuff64x2 ymm20,ymm18,ymm19,0x3
  adde25:	62 a3 d5 20 23 ef 03 	vshuff64x2 ymm21,ymm21,ymm23,0x3
  adde2c:	62 a3 6d 20 18 d3 01 	vinsertf32x4 ymm18,ymm18,xmm19,0x1
  adde33:	62 e1 7c 28 29 54 c4 	vmovaps YMMWORD PTR [rsp+rax*8+0xa0],ymm18
  adde3a:	05 
  adde3b:	62 e1 fd 28 29 6c c4 	vmovapd YMMWORD PTR [rsp+rax*8+0x120],ymm21
  adde42:	09 
  adde43:	62 e1 fd 28 29 64 c4 	vmovapd YMMWORD PTR [rsp+rax*8+0x1a0],ymm20
  adde4a:	0d 
  adde4b:	62 c1 8d 28 14 d7    	vunpcklpd ymm18,ymm14,ymm15
  adde51:	62 a1 f5 20 14 d8    	vunpcklpd ymm19,ymm17,ymm16
  adde57:	62 a3 6d 20 18 e3 01 	vinsertf32x4 ymm20,ymm18,xmm19,0x1
  adde5e:	62 e1 7c 28 29 64 c4 	vmovaps YMMWORD PTR [rsp+rax*8+0x40],ymm20
  adde65:	02 
  adde66:	c4 41 0d 15 f7       	vunpckhpd ymm14,ymm14,ymm15
  adde6b:	62 31 f5 20 15 f8    	vunpckhpd ymm15,ymm17,ymm16
  adde71:	62 c3 8d 28 23 c7 03 	vshuff64x2 ymm16,ymm14,ymm15,0x3
  adde78:	62 a3 ed 20 23 cb 03 	vshuff64x2 ymm17,ymm18,ymm19,0x3
  adde7f:	c4 43 0d 18 f7 01    	vinsertf128 ymm14,ymm14,xmm15,0x1
  adde85:	c5 7c 29 b4 c4 c0 00 	vmovaps YMMWORD PTR [rsp+rax*8+0xc0],ymm14
  adde8c:	00 00 
  adde8e:	62 e1 fd 28 29 4c c4 	vmovapd YMMWORD PTR [rsp+rax*8+0x140],ymm17
  adde95:	0a 
  adde96:	62 e1 fd 28 29 44 c4 	vmovapd YMMWORD PTR [rsp+rax*8+0x1c0],ymm16
  adde9d:	0e 
  adde9e:	c4 41 15 14 f3       	vunpcklpd ymm14,ymm13,ymm11
  addea3:	c4 41 1d 14 fa       	vunpcklpd ymm15,ymm12,ymm10
  addea8:	62 c3 0d 28 18 c7 01 	vinsertf32x4 ymm16,ymm14,xmm15,0x1
  addeaf:	62 e1 7c 28 29 44 c4 	vmovaps YMMWORD PTR [rsp+rax*8+0x60],ymm16
  addeb6:	03 
  addeb7:	c4 41 15 15 db       	vunpckhpd ymm11,ymm13,ymm11
  addebc:	c4 41 1d 15 d2       	vunpckhpd ymm10,ymm12,ymm10
  addec1:	c4 43 25 06 e2 31    	vperm2f128 ymm12,ymm11,ymm10,0x31
  addec7:	c4 43 0d 06 ef 31    	vperm2f128 ymm13,ymm14,ymm15,0x31
  addecd:	c4 43 25 18 d2 01    	vinsertf128 ymm10,ymm11,xmm10,0x1
  added3:	c5 7c 29 94 c4 e0 00 	vmovaps YMMWORD PTR [rsp+rax*8+0xe0],ymm10
  addeda:	00 00 
  addedc:	c5 7d 29 ac c4 60 01 	vmovapd YMMWORD PTR [rsp+rax*8+0x160],ymm13
  addee3:	00 00 
  addee5:	c5 7d 29 a4 c4 e0 01 	vmovapd YMMWORD PTR [rsp+rax*8+0x1e0],ymm12
  addeec:	00 00 
  addeee:	e9 06 fb ff ff       	jmp    add9f9 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0xb9>
  addef3:	c5 fc 28 84 24 80 00 	vmovaps ymm0,YMMWORD PTR [rsp+0x80]
  addefa:	00 00 
  addefc:	c5 fc 28 8c 24 00 01 	vmovaps ymm1,YMMWORD PTR [rsp+0x100]
  addf03:	00 00 
  addf05:	c5 fc 59 12          	vmulps ymm2,ymm0,YMMWORD PTR [rdx]
  addf09:	c5 fc c6 c0 b1       	vshufps ymm0,ymm0,ymm0,0xb1
  addf0e:	c4 e2 7d b8 52 20    	vfmadd231ps ymm2,ymm0,YMMWORD PTR [rdx+0x20]
  addf14:	c5 f4 c6 c1 b1       	vshufps ymm0,ymm1,ymm1,0xb1
  addf19:	c5 f4 59 4a 40       	vmulps ymm1,ymm1,YMMWORD PTR [rdx+0x40]
  addf1e:	c4 e2 7d b8 4a 60    	vfmadd231ps ymm1,ymm0,YMMWORD PTR [rdx+0x60]
  addf24:	c5 fc 28 84 24 80 01 	vmovaps ymm0,YMMWORD PTR [rsp+0x180]
  addf2b:	00 00 
  addf2d:	c5 fc c6 d8 b1       	vshufps ymm3,ymm0,ymm0,0xb1
  addf32:	c5 fc 59 82 80 00 00 	vmulps ymm0,ymm0,YMMWORD PTR [rdx+0x80]
  addf39:	00 
  addf3a:	c4 e2 65 b8 82 a0 00 	vfmadd231ps ymm0,ymm3,YMMWORD PTR [rdx+0xa0]
  addf41:	00 00 
  addf43:	c5 fc 28 9c 24 00 02 	vmovaps ymm3,YMMWORD PTR [rsp+0x200]
  addf4a:	00 00 
  addf4c:	c5 e4 c6 e3 b1       	vshufps ymm4,ymm3,ymm3,0xb1
  addf51:	c5 e4 59 9a c0 00 00 	vmulps ymm3,ymm3,YMMWORD PTR [rdx+0xc0]
  addf58:	00 
  addf59:	c4 e2 5d b8 9a e0 00 	vfmadd231ps ymm3,ymm4,YMMWORD PTR [rdx+0xe0]
  addf60:	00 00 
  addf62:	c5 fc 28 2c 24       	vmovaps ymm5,YMMWORD PTR [rsp]
  addf67:	c5 ec 58 f3          	vaddps ymm6,ymm2,ymm3
  addf6b:	c5 f4 58 f8          	vaddps ymm7,ymm1,ymm0
  addf6f:	c5 6c 5c c3          	vsubps ymm8,ymm2,ymm3
  addf73:	c5 74 5c c8          	vsubps ymm9,ymm1,ymm0
  addf77:	c4 e2 7d 18 0d 68 77 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff597768]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  addf7e:	59 ff 
  addf80:	c5 7c 28 d1          	vmovaps ymm10,ymm1
  addf84:	c4 62 4d a8 d5       	vfmadd213ps ymm10,ymm6,ymm5
  addf89:	c4 e2 7d 18 05 8a 73 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff59738a]        # 7531c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x27cc>
  addf90:	59 ff 
  addf92:	c4 62 45 b8 d0       	vfmadd231ps ymm10,ymm7,ymm0
  addf97:	c5 7c 28 d8          	vmovaps ymm11,ymm0
  addf9b:	c4 62 4d a8 dd       	vfmadd213ps ymm11,ymm6,ymm5
  addfa0:	c4 e2 7d 18 15 f7 73 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff5973f7]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  addfa7:	59 ff 
  addfa9:	c4 62 45 b8 d9       	vfmadd231ps ymm11,ymm7,ymm1
  addfae:	c5 bc 59 e2          	vmulps ymm4,ymm8,ymm2
  addfb2:	c4 e2 7d 18 1d 9d 77 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff59779d]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  addfb9:	59 ff 
  addfbb:	c4 e2 35 b8 e3       	vfmadd231ps ymm4,ymm9,ymm3
  addfc0:	c5 5c c6 e4 b1       	vshufps ymm12,ymm4,ymm4,0xb1
  addfc5:	c5 fc 28 25 f3 a5 59 	vmovaps ymm4,YMMWORD PTR [rip+0xffffffffff59a5f3]        # 785c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5a70>
  addfcc:	ff 
  addfcd:	c5 1c 57 e4          	vxorps ymm12,ymm12,ymm4
  addfd1:	c5 3c 59 c3          	vmulps ymm8,ymm8,ymm3
  addfd5:	c4 42 6d bc c1       	vfnmadd231ps ymm8,ymm2,ymm9
  addfda:	c4 41 3c c6 c0 b1    	vshufps ymm8,ymm8,ymm8,0xb1
  addfe0:	c5 3c 57 c4          	vxorps ymm8,ymm8,ymm4
  addfe4:	c5 c4 58 f6          	vaddps ymm6,ymm7,ymm6
  addfe8:	c5 d4 58 ee          	vaddps ymm5,ymm5,ymm6
  addfec:	c4 c1 2c 58 f4       	vaddps ymm6,ymm10,ymm12
  addff1:	c4 c1 24 58 f8       	vaddps ymm7,ymm11,ymm8
  addff6:	c4 41 24 5c c0       	vsubps ymm8,ymm11,ymm8
  addffb:	c4 41 2c 5c cc       	vsubps ymm9,ymm10,ymm12
  ade000:	c5 fc 11 2e          	vmovups YMMWORD PTR [rsi],ymm5
  ade004:	c5 fc 11 b6 80 00 00 	vmovups YMMWORD PTR [rsi+0x80],ymm6
  ade00b:	00 
  ade00c:	c5 fc 11 be 00 01 00 	vmovups YMMWORD PTR [rsi+0x100],ymm7
  ade013:	00 
  ade014:	c5 7c 11 86 80 01 00 	vmovups YMMWORD PTR [rsi+0x180],ymm8
  ade01b:	00 
  ade01c:	c5 7c 11 8e 00 02 00 	vmovups YMMWORD PTR [rsi+0x200],ymm9
  ade023:	00 
  ade024:	c5 fc 28 6c 24 20    	vmovaps ymm5,YMMWORD PTR [rsp+0x20]
  ade02a:	c5 fc 28 b4 24 a0 00 	vmovaps ymm6,YMMWORD PTR [rsp+0xa0]
  ade031:	00 00 
  ade033:	c5 fc 28 bc 24 20 01 	vmovaps ymm7,YMMWORD PTR [rsp+0x120]
  ade03a:	00 00 
  ade03c:	c5 4c 59 82 00 01 00 	vmulps ymm8,ymm6,YMMWORD PTR [rdx+0x100]
  ade043:	00 
  ade044:	c5 cc c6 f6 b1       	vshufps ymm6,ymm6,ymm6,0xb1
  ade049:	c4 62 4d b8 82 20 01 	vfmadd231ps ymm8,ymm6,YMMWORD PTR [rdx+0x120]
  ade050:	00 00 
  ade052:	c5 c4 c6 f7 b1       	vshufps ymm6,ymm7,ymm7,0xb1
  ade057:	c5 c4 59 ba 40 01 00 	vmulps ymm7,ymm7,YMMWORD PTR [rdx+0x140]
  ade05e:	00 
  ade05f:	c4 e2 4d b8 ba 60 01 	vfmadd231ps ymm7,ymm6,YMMWORD PTR [rdx+0x160]
  ade066:	00 00 
  ade068:	c5 fc 28 b4 24 a0 01 	vmovaps ymm6,YMMWORD PTR [rsp+0x1a0]
  ade06f:	00 00 
  ade071:	c5 4c c6 ce b1       	vshufps ymm9,ymm6,ymm6,0xb1
  ade076:	c5 cc 59 b2 80 01 00 	vmulps ymm6,ymm6,YMMWORD PTR [rdx+0x180]
  ade07d:	00 
  ade07e:	c4 e2 35 b8 b2 a0 01 	vfmadd231ps ymm6,ymm9,YMMWORD PTR [rdx+0x1a0]
  ade085:	00 00 
  ade087:	c5 7c 28 8c 24 20 02 	vmovaps ymm9,YMMWORD PTR [rsp+0x220]
  ade08e:	00 00 
  ade090:	c4 41 34 c6 d1 b1    	vshufps ymm10,ymm9,ymm9,0xb1
  ade096:	c5 34 59 8a c0 01 00 	vmulps ymm9,ymm9,YMMWORD PTR [rdx+0x1c0]
  ade09d:	00 
  ade09e:	c4 62 2d b8 8a e0 01 	vfmadd231ps ymm9,ymm10,YMMWORD PTR [rdx+0x1e0]
  ade0a5:	00 00 
  ade0a7:	c4 41 3c 58 d1       	vaddps ymm10,ymm8,ymm9
  ade0ac:	c5 44 58 de          	vaddps ymm11,ymm7,ymm6
  ade0b0:	c4 41 3c 5c c1       	vsubps ymm8,ymm8,ymm9
  ade0b5:	c5 c4 5c f6          	vsubps ymm6,ymm7,ymm6
  ade0b9:	c5 fc 28 f9          	vmovaps ymm7,ymm1
  ade0bd:	c4 e2 2d a8 fd       	vfmadd213ps ymm7,ymm10,ymm5
  ade0c2:	c4 e2 25 b8 f8       	vfmadd231ps ymm7,ymm11,ymm0
  ade0c7:	c5 7c 28 c8          	vmovaps ymm9,ymm0
  ade0cb:	c4 62 2d a8 cd       	vfmadd213ps ymm9,ymm10,ymm5
  ade0d0:	c4 62 25 b8 c9       	vfmadd231ps ymm9,ymm11,ymm1
  ade0d5:	c5 3c 59 e2          	vmulps ymm12,ymm8,ymm2
  ade0d9:	c4 62 4d b8 e3       	vfmadd231ps ymm12,ymm6,ymm3
  ade0de:	c4 41 1c c6 e4 b1    	vshufps ymm12,ymm12,ymm12,0xb1
  ade0e4:	c5 1c 57 e4          	vxorps ymm12,ymm12,ymm4
  ade0e8:	c5 3c 59 c3          	vmulps ymm8,ymm8,ymm3
  ade0ec:	c4 62 6d bc c6       	vfnmadd231ps ymm8,ymm2,ymm6
  ade0f1:	c4 c1 3c c6 f0 b1    	vshufps ymm6,ymm8,ymm8,0xb1
  ade0f7:	c5 cc 57 f4          	vxorps ymm6,ymm6,ymm4
  ade0fb:	c4 41 24 58 c2       	vaddps ymm8,ymm11,ymm10
  ade100:	c5 bc 58 ed          	vaddps ymm5,ymm8,ymm5
  ade104:	c5 1c 58 c7          	vaddps ymm8,ymm12,ymm7
  ade108:	c5 34 58 d6          	vaddps ymm10,ymm9,ymm6
  ade10c:	c5 b4 5c f6          	vsubps ymm6,ymm9,ymm6
  ade110:	c4 c1 44 5c fc       	vsubps ymm7,ymm7,ymm12
  ade115:	c5 fc 11 6e 20       	vmovups YMMWORD PTR [rsi+0x20],ymm5
  ade11a:	c5 7c 11 86 a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm8
  ade121:	00 
  ade122:	c5 7c 11 96 20 01 00 	vmovups YMMWORD PTR [rsi+0x120],ymm10
  ade129:	00 
  ade12a:	c5 fc 11 b6 a0 01 00 	vmovups YMMWORD PTR [rsi+0x1a0],ymm6
  ade131:	00 
  ade132:	c5 fc 11 be 20 02 00 	vmovups YMMWORD PTR [rsi+0x220],ymm7
  ade139:	00 
  ade13a:	c5 fc 28 6c 24 40    	vmovaps ymm5,YMMWORD PTR [rsp+0x40]
  ade140:	c5 fc 28 b4 24 c0 00 	vmovaps ymm6,YMMWORD PTR [rsp+0xc0]
  ade147:	00 00 
  ade149:	c5 fc 28 bc 24 40 01 	vmovaps ymm7,YMMWORD PTR [rsp+0x140]
  ade150:	00 00 
  ade152:	c5 7c 28 84 24 c0 01 	vmovaps ymm8,YMMWORD PTR [rsp+0x1c0]
  ade159:	00 00 
  ade15b:	c5 4c c6 ce b1       	vshufps ymm9,ymm6,ymm6,0xb1
  ade160:	c5 cc 59 b2 00 02 00 	vmulps ymm6,ymm6,YMMWORD PTR [rdx+0x200]
  ade167:	00 
  ade168:	c4 e2 35 b8 b2 20 02 	vfmadd231ps ymm6,ymm9,YMMWORD PTR [rdx+0x220]
  ade16f:	00 00 
  ade171:	c5 44 59 8a 40 02 00 	vmulps ymm9,ymm7,YMMWORD PTR [rdx+0x240]
  ade178:	00 
  ade179:	c5 c4 c6 ff b1       	vshufps ymm7,ymm7,ymm7,0xb1
  ade17e:	c4 62 45 b8 8a 60 02 	vfmadd231ps ymm9,ymm7,YMMWORD PTR [rdx+0x260]
  ade185:	00 00 
  ade187:	c4 c1 3c c6 f8 b1    	vshufps ymm7,ymm8,ymm8,0xb1
  ade18d:	c5 3c 59 82 80 02 00 	vmulps ymm8,ymm8,YMMWORD PTR [rdx+0x280]
  ade194:	00 
  ade195:	c4 62 45 b8 82 a0 02 	vfmadd231ps ymm8,ymm7,YMMWORD PTR [rdx+0x2a0]
  ade19c:	00 00 
  ade19e:	c5 fc 28 bc 24 40 02 	vmovaps ymm7,YMMWORD PTR [rsp+0x240]
  ade1a5:	00 00 
  ade1a7:	c5 44 c6 d7 b1       	vshufps ymm10,ymm7,ymm7,0xb1
  ade1ac:	c5 c4 59 ba c0 02 00 	vmulps ymm7,ymm7,YMMWORD PTR [rdx+0x2c0]
  ade1b3:	00 
  ade1b4:	c4 e2 2d b8 ba e0 02 	vfmadd231ps ymm7,ymm10,YMMWORD PTR [rdx+0x2e0]
  ade1bb:	00 00 
  ade1bd:	c5 4c 58 d7          	vaddps ymm10,ymm6,ymm7
  ade1c1:	c4 41 34 58 d8       	vaddps ymm11,ymm9,ymm8
  ade1c6:	c5 cc 5c f7          	vsubps ymm6,ymm6,ymm7
  ade1ca:	c4 c1 34 5c f8       	vsubps ymm7,ymm9,ymm8
  ade1cf:	c5 7c 28 c1          	vmovaps ymm8,ymm1
  ade1d3:	c4 62 2d a8 c5       	vfmadd213ps ymm8,ymm10,ymm5
  ade1d8:	c4 62 25 b8 c0       	vfmadd231ps ymm8,ymm11,ymm0
  ade1dd:	c5 7c 28 c8          	vmovaps ymm9,ymm0
  ade1e1:	c4 62 2d a8 cd       	vfmadd213ps ymm9,ymm10,ymm5
  ade1e6:	c4 62 25 b8 c9       	vfmadd231ps ymm9,ymm11,ymm1
  ade1eb:	c5 4c 59 e2          	vmulps ymm12,ymm6,ymm2
  ade1ef:	c4 62 45 b8 e3       	vfmadd231ps ymm12,ymm7,ymm3
  ade1f4:	c4 41 1c c6 e4 b1    	vshufps ymm12,ymm12,ymm12,0xb1
  ade1fa:	c5 1c 57 e4          	vxorps ymm12,ymm12,ymm4
  ade1fe:	c5 cc 59 f3          	vmulps ymm6,ymm6,ymm3
  ade202:	c4 e2 6d bc f7       	vfnmadd231ps ymm6,ymm2,ymm7
  ade207:	c5 cc c6 f6 b1       	vshufps ymm6,ymm6,ymm6,0xb1
  ade20c:	c5 cc 57 f4          	vxorps ymm6,ymm6,ymm4
  ade210:	c4 c1 24 58 fa       	vaddps ymm7,ymm11,ymm10
  ade215:	c5 d4 58 ef          	vaddps ymm5,ymm5,ymm7
  ade219:	c4 c1 3c 58 fc       	vaddps ymm7,ymm8,ymm12
  ade21e:	c5 34 58 d6          	vaddps ymm10,ymm9,ymm6
  ade222:	c5 b4 5c f6          	vsubps ymm6,ymm9,ymm6
  ade226:	c4 41 3c 5c c4       	vsubps ymm8,ymm8,ymm12
  ade22b:	c5 fc 11 6e 40       	vmovups YMMWORD PTR [rsi+0x40],ymm5
  ade230:	c5 fc 11 be c0 00 00 	vmovups YMMWORD PTR [rsi+0xc0],ymm7
  ade237:	00 
  ade238:	c5 7c 11 96 40 01 00 	vmovups YMMWORD PTR [rsi+0x140],ymm10
  ade23f:	00 
  ade240:	c5 fc 11 b6 c0 01 00 	vmovups YMMWORD PTR [rsi+0x1c0],ymm6
  ade247:	00 
  ade248:	c5 7c 11 86 40 02 00 	vmovups YMMWORD PTR [rsi+0x240],ymm8
  ade24f:	00 
  ade250:	c5 fc 28 6c 24 60    	vmovaps ymm5,YMMWORD PTR [rsp+0x60]
  ade256:	c5 fc 28 b4 24 e0 00 	vmovaps ymm6,YMMWORD PTR [rsp+0xe0]
  ade25d:	00 00 
  ade25f:	c5 fc 28 bc 24 60 01 	vmovaps ymm7,YMMWORD PTR [rsp+0x160]
  ade266:	00 00 
  ade268:	c5 4c 59 82 00 03 00 	vmulps ymm8,ymm6,YMMWORD PTR [rdx+0x300]
  ade26f:	00 
  ade270:	c5 cc c6 f6 b1       	vshufps ymm6,ymm6,ymm6,0xb1
  ade275:	c4 62 4d b8 82 20 03 	vfmadd231ps ymm8,ymm6,YMMWORD PTR [rdx+0x320]
  ade27c:	00 00 
  ade27e:	c5 c4 c6 f7 b1       	vshufps ymm6,ymm7,ymm7,0xb1
  ade283:	c5 c4 59 ba 40 03 00 	vmulps ymm7,ymm7,YMMWORD PTR [rdx+0x340]
  ade28a:	00 
  ade28b:	c4 e2 4d b8 ba 60 03 	vfmadd231ps ymm7,ymm6,YMMWORD PTR [rdx+0x360]
  ade292:	00 00 
  ade294:	c5 fc 28 b4 24 e0 01 	vmovaps ymm6,YMMWORD PTR [rsp+0x1e0]
  ade29b:	00 00 
  ade29d:	c5 4c c6 ce b1       	vshufps ymm9,ymm6,ymm6,0xb1
  ade2a2:	c5 cc 59 b2 80 03 00 	vmulps ymm6,ymm6,YMMWORD PTR [rdx+0x380]
  ade2a9:	00 
  ade2aa:	c4 e2 35 b8 b2 a0 03 	vfmadd231ps ymm6,ymm9,YMMWORD PTR [rdx+0x3a0]
  ade2b1:	00 00 
  ade2b3:	c5 7c 28 8c 24 60 02 	vmovaps ymm9,YMMWORD PTR [rsp+0x260]
  ade2ba:	00 00 
  ade2bc:	c4 41 34 c6 d1 b1    	vshufps ymm10,ymm9,ymm9,0xb1
  ade2c2:	c5 34 59 8a c0 03 00 	vmulps ymm9,ymm9,YMMWORD PTR [rdx+0x3c0]
  ade2c9:	00 
  ade2ca:	c4 62 2d b8 8a e0 03 	vfmadd231ps ymm9,ymm10,YMMWORD PTR [rdx+0x3e0]
  ade2d1:	00 00 
  ade2d3:	c4 41 3c 58 d1       	vaddps ymm10,ymm8,ymm9
  ade2d8:	c5 44 58 de          	vaddps ymm11,ymm7,ymm6
  ade2dc:	c4 41 3c 5c c1       	vsubps ymm8,ymm8,ymm9
  ade2e1:	c5 c4 5c f6          	vsubps ymm6,ymm7,ymm6
  ade2e5:	c5 fc 28 f9          	vmovaps ymm7,ymm1
  ade2e9:	c4 e2 2d a8 fd       	vfmadd213ps ymm7,ymm10,ymm5
  ade2ee:	c4 e2 25 b8 f8       	vfmadd231ps ymm7,ymm11,ymm0
  ade2f3:	c4 e2 2d a8 c5       	vfmadd213ps ymm0,ymm10,ymm5
  ade2f8:	c4 e2 25 b8 c1       	vfmadd231ps ymm0,ymm11,ymm1
  ade2fd:	c5 bc 59 ca          	vmulps ymm1,ymm8,ymm2
  ade301:	c4 e2 4d b8 cb       	vfmadd231ps ymm1,ymm6,ymm3
  ade306:	c5 f4 c6 c9 b1       	vshufps ymm1,ymm1,ymm1,0xb1
  ade30b:	c5 f4 57 cc          	vxorps ymm1,ymm1,ymm4
  ade30f:	c5 bc 59 db          	vmulps ymm3,ymm8,ymm3
  ade313:	c4 e2 4d bc da       	vfnmadd231ps ymm3,ymm6,ymm2
  ade318:	c5 e4 c6 d3 b1       	vshufps ymm2,ymm3,ymm3,0xb1
  ade31d:	c5 ec 57 d4          	vxorps ymm2,ymm2,ymm4
  ade321:	c4 c1 24 58 da       	vaddps ymm3,ymm11,ymm10
  ade326:	c5 d4 58 db          	vaddps ymm3,ymm5,ymm3
  ade32a:	c5 c4 58 e1          	vaddps ymm4,ymm7,ymm1
  ade32e:	c5 fc 58 ea          	vaddps ymm5,ymm0,ymm2
  ade332:	c5 fc 5c c2          	vsubps ymm0,ymm0,ymm2
  ade336:	c5 c4 5c c9          	vsubps ymm1,ymm7,ymm1
  ade33a:	c5 fc 11 5e 60       	vmovups YMMWORD PTR [rsi+0x60],ymm3
  ade33f:	c5 fc 11 a6 e0 00 00 	vmovups YMMWORD PTR [rsi+0xe0],ymm4
  ade346:	00 
  ade347:	c5 fc 11 ae 60 01 00 	vmovups YMMWORD PTR [rsi+0x160],ymm5
  ade34e:	00 
  ade34f:	c5 fc 11 86 e0 01 00 	vmovups YMMWORD PTR [rsi+0x1e0],ymm0
  ade356:	00 
  ade357:	c5 fc 11 8e 60 02 00 	vmovups YMMWORD PTR [rsi+0x260],ymm1
  ade35e:	00 
  ade35f:	48 89 ec             	mov    rsp,rbp
  ade362:	5d                   	pop    rbp
  ade363:	c5 f8 77             	vzeroupper
  ade366:	c3                   	ret
