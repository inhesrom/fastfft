
target/ticket19/selection-fix/page-storage-observable-stack/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000adfd40 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  adfd40:	55                   	push   rbp
  adfd41:	48 89 e5             	mov    rbp,rsp
  adfd44:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  adfd48:	48 81 ec 40 08 00 00 	sub    rsp,0x840
  adfd4f:	c5 fc 10 82 00 04 00 	vmovups ymm0,YMMWORD PTR [rdx+0x400]
  adfd56:	00 
  adfd57:	c5 fc 10 8a 20 04 00 	vmovups ymm1,YMMWORD PTR [rdx+0x420]
  adfd5e:	00 
  adfd5f:	c5 fc 10 92 40 04 00 	vmovups ymm2,YMMWORD PTR [rdx+0x440]
  adfd66:	00 
  adfd67:	c5 fc 10 9a 60 04 00 	vmovups ymm3,YMMWORD PTR [rdx+0x460]
  adfd6e:	00 
  adfd6f:	c5 fc 10 a2 a0 04 00 	vmovups ymm4,YMMWORD PTR [rdx+0x4a0]
  adfd76:	00 
  adfd77:	c5 fc 10 aa 80 04 00 	vmovups ymm5,YMMWORD PTR [rdx+0x480]
  adfd7e:	00 
  adfd7f:	31 c0                	xor    eax,eax
  adfd81:	c4 e2 7d 19 35 56 4f 	vbroadcastsd ymm6,QWORD PTR [rip+0xffffffffff594f56]        # 74ce0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x22c0>
  adfd88:	59 ff 
  adfd8a:	c4 e2 7d 18 3d c9 54 	vbroadcastss ymm7,DWORD PTR [rip+0xffffffffff5954c9]        # 7525c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x283c>
  adfd91:	59 ff 
  adfd93:	c4 62 7d 19 05 14 4c 	vbroadcastsd ymm8,QWORD PTR [rip+0xffffffffff594c14]        # 749b0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f90>
  adfd9a:	59 ff 
  adfd9c:	c4 62 7d 18 0d 97 55 	vbroadcastss ymm9,DWORD PTR [rip+0xffffffffff595597]        # 7533c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x291c>
  adfda3:	59 ff 
  adfda5:	48 89 f9             	mov    rcx,rdi
  adfda8:	45 31 c0             	xor    r8d,r8d
  adfdab:	eb 61                	jmp    adfe0e <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0xce>
  adfdad:	0f 1f 00             	nop    DWORD PTR [rax]
  adfdb0:	62 a1 6c 00 16 d3    	vmovlhps xmm18,xmm18,xmm19
  adfdb6:	62 a1 5c 00 16 de    	vmovlhps xmm19,xmm20,xmm22
  adfdbc:	62 e1 7c 08 29 5c c4 	vmovaps XMMWORD PTR [rsp+rax*8+0x30],xmm19
  adfdc3:	03 
  adfdc4:	62 e1 7c 08 29 54 c4 	vmovaps XMMWORD PTR [rsp+rax*8+0x20],xmm18
  adfdcb:	02 
  adfdcc:	c4 41 08 16 f7       	vmovlhps xmm14,xmm14,xmm15
  adfdd1:	62 31 74 00 16 f8    	vmovlhps xmm15,xmm17,xmm16
  adfdd7:	c5 78 29 7c c4 50    	vmovaps XMMWORD PTR [rsp+rax*8+0x50],xmm15
  adfddd:	c5 78 29 74 c4 40    	vmovaps XMMWORD PTR [rsp+rax*8+0x40],xmm14
  adfde3:	c4 41 10 16 db       	vmovlhps xmm11,xmm13,xmm11
  adfde8:	c4 41 18 16 d2       	vmovlhps xmm10,xmm12,xmm10
  adfded:	c5 78 29 54 c4 70    	vmovaps XMMWORD PTR [rsp+rax*8+0x70],xmm10
  adfdf3:	c5 78 29 5c c4 60    	vmovaps XMMWORD PTR [rsp+rax*8+0x60],xmm11
  adfdf9:	48 83 c0 40          	add    rax,0x40
  adfdfd:	48 83 c1 20          	add    rcx,0x20
  adfe01:	41 f6 c0 01          	test   r8b,0x1
  adfe05:	41 b0 01             	mov    r8b,0x1
  adfe08:	0f 85 e5 04 00 00    	jne    ae02f3 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x5b3>
  adfe0e:	48 85 c0             	test   rax,rax
  adfe11:	74 7d                	je     adfe90 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x150>
  adfe13:	c5 7b 10 39          	vmovsd xmm15,QWORD PTR [rcx]
  adfe17:	c5 7b 10 71 28       	vmovsd xmm14,QWORD PTR [rcx+0x28]
  adfe1c:	c5 7b 10 51 50       	vmovsd xmm10,QWORD PTR [rcx+0x50]
  adfe21:	c5 7b 10 61 78       	vmovsd xmm12,QWORD PTR [rcx+0x78]
  adfe26:	62 e1 ff 08 10 61 14 	vmovsd xmm20,QWORD PTR [rcx+0xa0]
  adfe2d:	62 e1 ff 08 10 49 19 	vmovsd xmm17,QWORD PTR [rcx+0xc8]
  adfe34:	c5 7b 10 99 f0 00 00 	vmovsd xmm11,QWORD PTR [rcx+0xf0]
  adfe3b:	00 
  adfe3c:	c5 7b 10 a9 18 01 00 	vmovsd xmm13,QWORD PTR [rcx+0x118]
  adfe43:	00 
  adfe44:	62 e1 ff 08 10 79 28 	vmovsd xmm23,QWORD PTR [rcx+0x140]
  adfe4b:	62 e1 ff 08 10 69 2d 	vmovsd xmm21,QWORD PTR [rcx+0x168]
  adfe52:	62 e1 ff 08 10 51 32 	vmovsd xmm18,QWORD PTR [rcx+0x190]
  adfe59:	62 e1 ff 08 10 41 37 	vmovsd xmm16,QWORD PTR [rcx+0x1b8]
  adfe60:	62 61 ff 08 10 49 3c 	vmovsd xmm25,QWORD PTR [rcx+0x1e0]
  adfe67:	62 61 ff 08 10 41 41 	vmovsd xmm24,QWORD PTR [rcx+0x208]
  adfe6e:	62 e1 ff 08 10 71 46 	vmovsd xmm22,QWORD PTR [rcx+0x230]
  adfe75:	62 e1 ff 08 10 59 4b 	vmovsd xmm19,QWORD PTR [rcx+0x258]
  adfe7c:	e9 8d 00 00 00       	jmp    adff0e <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x1ce>
  adfe81:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  adfe88:	0f 1f 84 00 00 00 00 
  adfe8f:	00 
  adfe90:	c5 7c 10 39          	vmovups ymm15,YMMWORD PTR [rcx]
  adfe94:	c5 7c 10 61 78       	vmovups ymm12,YMMWORD PTR [rcx+0x78]
  adfe99:	c5 7c 10 99 f0 00 00 	vmovups ymm11,YMMWORD PTR [rcx+0xf0]
  adfea0:	00 
  adfea1:	c5 7c 10 77 28       	vmovups ymm14,YMMWORD PTR [rdi+0x28]
  adfea6:	c5 7c 10 57 50       	vmovups ymm10,YMMWORD PTR [rdi+0x50]
  adfeab:	62 e1 7c 28 10 67 05 	vmovups ymm20,YMMWORD PTR [rdi+0xa0]
  adfeb2:	62 e1 7c 28 10 8f c8 	vmovups ymm17,YMMWORD PTR [rdi+0xc8]
  adfeb9:	00 00 00 
  adfebc:	c5 7c 10 af 18 01 00 	vmovups ymm13,YMMWORD PTR [rdi+0x118]
  adfec3:	00 
  adfec4:	62 e1 7c 28 10 7f 0a 	vmovups ymm23,YMMWORD PTR [rdi+0x140]
  adfecb:	62 e1 7c 28 10 af 68 	vmovups ymm21,YMMWORD PTR [rdi+0x168]
  adfed2:	01 00 00 
  adfed5:	62 e1 7c 28 10 97 90 	vmovups ymm18,YMMWORD PTR [rdi+0x190]
  adfedc:	01 00 00 
  adfedf:	62 e1 7c 28 10 87 b8 	vmovups ymm16,YMMWORD PTR [rdi+0x1b8]
  adfee6:	01 00 00 
  adfee9:	62 61 7c 28 10 4f 0f 	vmovups ymm25,YMMWORD PTR [rdi+0x1e0]
  adfef0:	62 61 7c 28 10 87 08 	vmovups ymm24,YMMWORD PTR [rdi+0x208]
  adfef7:	02 00 00 
  adfefa:	62 e1 7c 28 10 b7 30 	vmovups ymm22,YMMWORD PTR [rdi+0x230]
  adff01:	02 00 00 
  adff04:	62 e1 7c 28 10 9f 58 	vmovups ymm19,YMMWORD PTR [rdi+0x258]
  adff0b:	02 00 00 
  adff0e:	62 21 04 28 58 d7    	vaddps ymm26,ymm15,ymm23
  adff14:	62 21 04 28 5c df    	vsubps ymm27,ymm15,ymm23
  adff1a:	62 01 5c 20 58 e1    	vaddps ymm28,ymm20,ymm25
  adff20:	62 11 5c 20 5c f9    	vsubps ymm15,ymm20,ymm25
  adff26:	c4 41 04 c6 ff b1    	vshufps ymm15,ymm15,ymm15,0xb1
  adff2c:	62 e1 7c 28 28 fe    	vmovaps ymm23,ymm6
  adff32:	62 82 05 28 a8 fb    	vfmadd213ps ymm23,ymm15,ymm27
  adff38:	62 12 4d 28 ac fb    	vfnmadd213ps ymm15,ymm6,ymm27
  adff3e:	62 01 2c 20 58 cc    	vaddps ymm25,ymm26,ymm28
  adff44:	62 81 2c 20 5c e4    	vsubps ymm20,ymm26,ymm28
  adff4a:	62 21 0c 28 58 d5    	vaddps ymm26,ymm14,ymm21
  adff50:	62 31 0c 28 5c f5    	vsubps ymm14,ymm14,ymm21
  adff56:	62 81 74 20 58 e8    	vaddps ymm21,ymm17,ymm24
  adff5c:	62 81 74 20 5c c8    	vsubps ymm17,ymm17,ymm24
  adff62:	62 a1 74 20 c6 c9 b1 	vshufps ymm17,ymm17,ymm17,0xb1
  adff69:	62 61 7c 28 28 c6    	vmovaps ymm24,ymm6
  adff6f:	62 42 75 20 a8 c6    	vfmadd213ps ymm24,ymm17,ymm14
  adff75:	62 c2 4d 28 ac ce    	vfnmadd213ps ymm17,ymm6,ymm14
  adff7b:	62 31 2c 20 58 f5    	vaddps ymm14,ymm26,ymm21
  adff81:	62 a1 2c 20 5c ed    	vsubps ymm21,ymm26,ymm21
  adff87:	62 21 2c 28 58 d2    	vaddps ymm26,ymm10,ymm18
  adff8d:	62 a1 2c 28 5c d2    	vsubps ymm18,ymm10,ymm18
  adff93:	62 21 24 28 58 de    	vaddps ymm27,ymm11,ymm22
  adff99:	62 31 24 28 5c d6    	vsubps ymm10,ymm11,ymm22
  adff9f:	c4 41 2c c6 d2 b1    	vshufps ymm10,ymm10,ymm10,0xb1
  adffa5:	c5 7c 28 de          	vmovaps ymm11,ymm6
  adffa9:	62 32 2d 28 a8 da    	vfmadd213ps ymm11,ymm10,ymm18
  adffaf:	62 32 4d 28 ac d2    	vfnmadd213ps ymm10,ymm6,ymm18
  adffb5:	62 81 2c 20 58 d3    	vaddps ymm18,ymm26,ymm27
  adffbb:	62 81 2c 20 5c f3    	vsubps ymm22,ymm26,ymm27
  adffc1:	62 21 1c 28 58 d0    	vaddps ymm26,ymm12,ymm16
  adffc7:	62 31 1c 28 5c e0    	vsubps ymm12,ymm12,ymm16
  adffcd:	62 a1 14 28 58 c3    	vaddps ymm16,ymm13,ymm19
  adffd3:	62 31 14 28 5c eb    	vsubps ymm13,ymm13,ymm19
  adffd9:	c4 41 14 c6 ed b1    	vshufps ymm13,ymm13,ymm13,0xb1
  adffdf:	62 e1 7c 28 28 de    	vmovaps ymm19,ymm6
  adffe5:	62 c2 15 28 a8 dc    	vfmadd213ps ymm19,ymm13,ymm12
  adffeb:	c4 42 4d ac ec       	vfnmadd213ps ymm13,ymm6,ymm12
  adfff0:	62 21 2c 20 58 d8    	vaddps ymm27,ymm26,ymm16
  adfff6:	62 31 2c 20 5c e0    	vsubps ymm12,ymm26,ymm16
  adfffc:	62 81 3c 20 c6 c0 b1 	vshufps ymm16,ymm24,ymm24,0xb1
  ae0003:	62 61 3c 20 59 c0    	vmulps ymm24,ymm24,ymm0
  ae0009:	62 22 75 28 b8 c0    	vfmadd231ps ymm24,ymm1,ymm16
  ae000f:	62 a1 54 20 c6 c5 b1 	vshufps ymm16,ymm21,ymm21,0xb1
  ae0016:	62 61 54 20 59 d7    	vmulps ymm26,ymm21,ymm7
  ae001c:	62 22 3d 28 b8 d0    	vfmadd231ps ymm26,ymm8,ymm16
  ae0022:	62 a1 74 20 c6 e9 b1 	vshufps ymm21,ymm17,ymm17,0xb1
  ae0029:	62 e1 74 20 59 c2    	vmulps ymm16,ymm17,ymm2
  ae002f:	62 a2 65 28 b8 c5    	vfmadd231ps ymm16,ymm3,ymm21
  ae0035:	62 a1 64 20 c6 cb b1 	vshufps ymm17,ymm19,ymm19,0xb1
  ae003c:	62 e1 64 20 59 da    	vmulps ymm19,ymm19,ymm2
  ae0042:	62 a2 65 28 b8 d9    	vfmadd231ps ymm19,ymm3,ymm17
  ae0048:	62 c1 1c 28 c6 cc b1 	vshufps ymm17,ymm12,ymm12,0xb1
  ae004f:	62 41 1c 28 59 e1    	vmulps ymm28,ymm12,ymm9
  ae0055:	62 22 3d 28 b8 e1    	vfmadd231ps ymm28,ymm8,ymm17
  ae005b:	c4 41 14 c6 e5 b1    	vshufps ymm12,ymm13,ymm13,0xb1
  ae0061:	62 61 14 28 59 ed    	vmulps ymm29,ymm13,ymm5
  ae0067:	62 42 5d 28 b8 ec    	vfmadd231ps ymm29,ymm4,ymm12
  ae006d:	62 a1 34 20 58 ca    	vaddps ymm17,ymm25,ymm18
  ae0073:	62 a1 34 20 5c ea    	vsubps ymm21,ymm25,ymm18
  ae0079:	c4 41 24 c6 e3 b1    	vshufps ymm12,ymm11,ymm11,0xb1
  ae007f:	62 61 7c 28 28 cf    	vmovaps ymm25,ymm7
  ae0085:	62 22 25 28 a8 cf    	vfmadd213ps ymm25,ymm11,ymm23
  ae008b:	62 42 1d 28 b8 c8    	vfmadd231ps ymm25,ymm12,ymm8
  ae0091:	62 32 45 28 ac df    	vfnmadd213ps ymm11,ymm7,ymm23
  ae0097:	c4 42 3d bc dc       	vfnmadd231ps ymm11,ymm8,ymm12
  ae009c:	62 31 4c 20 c6 e6 b1 	vshufps ymm12,ymm22,ymm22,0xb1
  ae00a3:	62 e1 7c 28 28 f6    	vmovaps ymm22,ymm6
  ae00a9:	62 a2 1d 28 a8 f4    	vfmadd213ps ymm22,ymm12,ymm20
  ae00af:	62 32 4d 28 ac e4    	vfnmadd213ps ymm12,ymm6,ymm20
  ae00b5:	c4 41 2c c6 ea b1    	vshufps ymm13,ymm10,ymm10,0xb1
  ae00bb:	62 61 7c 28 28 f7    	vmovaps ymm30,ymm7
  ae00c1:	62 42 2d 28 ac f7    	vfnmadd213ps ymm30,ymm10,ymm15
  ae00c7:	62 42 15 28 b8 f0    	vfmadd231ps ymm30,ymm13,ymm8
  ae00cd:	c4 42 45 a8 d7       	vfmadd213ps ymm10,ymm7,ymm15
  ae00d2:	c4 42 3d bc d5       	vfnmadd231ps ymm10,ymm8,ymm13
  ae00d7:	62 11 0c 28 58 fb    	vaddps ymm15,ymm14,ymm27
  ae00dd:	62 11 0c 28 5c eb    	vsubps ymm13,ymm14,ymm27
  ae00e3:	c4 41 14 c6 ed b1    	vshufps ymm13,ymm13,ymm13,0xb1
  ae00e9:	62 e1 7c 28 28 d6    	vmovaps ymm18,ymm6
  ae00ef:	62 a2 15 28 a8 d5    	vfmadd213ps ymm18,ymm13,ymm21
  ae00f5:	62 32 4d 28 ac ed    	vfnmadd213ps ymm13,ymm6,ymm21
  ae00fb:	62 c1 74 20 58 ef    	vaddps ymm21,ymm17,ymm15
  ae0101:	62 51 74 20 5c f7    	vsubps ymm14,ymm17,ymm15
  ae0107:	62 31 3c 20 58 fb    	vaddps ymm15,ymm24,ymm19
  ae010d:	62 a1 3c 20 5c cb    	vsubps ymm17,ymm24,ymm19
  ae0113:	62 a1 74 20 c6 c9 b1 	vshufps ymm17,ymm17,ymm17,0xb1
  ae011a:	62 e1 7c 28 28 de    	vmovaps ymm19,ymm6
  ae0120:	62 c2 75 20 a8 db    	vfmadd213ps ymm19,ymm17,ymm11
  ae0126:	62 32 4d 28 bc d9    	vfnmadd231ps ymm11,ymm6,ymm17
  ae012c:	62 c1 34 20 58 ff    	vaddps ymm23,ymm25,ymm15
  ae0132:	62 51 34 20 5c ff    	vsubps ymm15,ymm25,ymm15
  ae0138:	62 81 2c 20 58 cc    	vaddps ymm17,ymm26,ymm28
  ae013e:	62 81 2c 20 5c e4    	vsubps ymm20,ymm26,ymm28
  ae0144:	62 21 5c 20 c6 c4 b1 	vshufps ymm24,ymm20,ymm20,0xb1
  ae014b:	62 e1 7c 28 28 e6    	vmovaps ymm20,ymm6
  ae0151:	62 c2 3d 20 a8 e4    	vfmadd213ps ymm20,ymm24,ymm12
  ae0157:	62 12 4d 28 bc e0    	vfnmadd231ps ymm12,ymm6,ymm24
  ae015d:	62 21 4c 20 58 c1    	vaddps ymm24,ymm22,ymm17
  ae0163:	62 a1 4c 20 5c c9    	vsubps ymm17,ymm22,ymm17
  ae0169:	62 01 7c 20 58 d5    	vaddps ymm26,ymm16,ymm29
  ae016f:	62 81 7c 20 5c c5    	vsubps ymm16,ymm16,ymm29
  ae0175:	62 a1 7c 20 c6 c0 b1 	vshufps ymm16,ymm16,ymm16,0xb1
  ae017c:	62 e1 7c 28 28 f6    	vmovaps ymm22,ymm6
  ae0182:	62 c2 7d 20 a8 f2    	vfmadd213ps ymm22,ymm16,ymm10
  ae0188:	62 32 4d 28 bc d0    	vfnmadd231ps ymm10,ymm6,ymm16
  ae018e:	62 01 0c 20 58 ca    	vaddps ymm25,ymm30,ymm26
  ae0194:	62 81 0c 20 5c c2    	vsubps ymm16,ymm30,ymm26
  ae019a:	62 21 d5 20 14 d7    	vunpcklpd ymm26,ymm21,ymm23
  ae01a0:	62 01 bd 20 14 d9    	vunpcklpd ymm27,ymm24,ymm25
  ae01a6:	62 03 2d 20 18 e3 01 	vinsertf32x4 ymm28,ymm26,xmm27,0x1
  ae01ad:	62 61 7c 28 29 24 c4 	vmovaps YMMWORD PTR [rsp+rax*8],ymm28
  ae01b4:	48 83 f8 40          	cmp    rax,0x40
  ae01b8:	0f 84 f2 fb ff ff    	je     adfdb0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x70>
  ae01be:	62 a1 d5 20 15 ef    	vunpckhpd ymm21,ymm21,ymm23
  ae01c4:	62 81 bd 20 15 f9    	vunpckhpd ymm23,ymm24,ymm25
  ae01ca:	62 23 d5 20 23 c7 03 	vshuff64x2 ymm24,ymm21,ymm23,0x3
  ae01d1:	62 03 ad 20 23 cb 03 	vshuff64x2 ymm25,ymm26,ymm27,0x3
  ae01d8:	62 a3 55 20 18 ef 01 	vinsertf32x4 ymm21,ymm21,xmm23,0x1
  ae01df:	62 e1 7c 28 29 6c c4 	vmovaps YMMWORD PTR [rsp+rax*8+0x80],ymm21
  ae01e6:	04 
  ae01e7:	62 61 fd 28 29 4c c4 	vmovapd YMMWORD PTR [rsp+rax*8+0x100],ymm25
  ae01ee:	08 
  ae01ef:	62 61 fd 28 29 44 c4 	vmovapd YMMWORD PTR [rsp+rax*8+0x180],ymm24
  ae01f6:	0c 
  ae01f7:	62 a1 ed 20 14 eb    	vunpcklpd ymm21,ymm18,ymm19
  ae01fd:	62 a1 dd 20 14 fe    	vunpcklpd ymm23,ymm20,ymm22
  ae0203:	62 23 55 20 18 c7 01 	vinsertf32x4 ymm24,ymm21,xmm23,0x1
  ae020a:	62 61 7c 28 29 44 c4 	vmovaps YMMWORD PTR [rsp+rax*8+0x20],ymm24
  ae0211:	01 
  ae0212:	62 a1 ed 20 15 d3    	vunpckhpd ymm18,ymm18,ymm19
  ae0218:	62 a1 dd 20 15 de    	vunpckhpd ymm19,ymm20,ymm22
  ae021e:	62 a3 ed 20 23 e3 03 	vshuff64x2 ymm20,ymm18,ymm19,0x3
  ae0225:	62 a3 d5 20 23 ef 03 	vshuff64x2 ymm21,ymm21,ymm23,0x3
  ae022c:	62 a3 6d 20 18 d3 01 	vinsertf32x4 ymm18,ymm18,xmm19,0x1
  ae0233:	62 e1 7c 28 29 54 c4 	vmovaps YMMWORD PTR [rsp+rax*8+0xa0],ymm18
  ae023a:	05 
  ae023b:	62 e1 fd 28 29 6c c4 	vmovapd YMMWORD PTR [rsp+rax*8+0x120],ymm21
  ae0242:	09 
  ae0243:	62 e1 fd 28 29 64 c4 	vmovapd YMMWORD PTR [rsp+rax*8+0x1a0],ymm20
  ae024a:	0d 
  ae024b:	62 c1 8d 28 14 d7    	vunpcklpd ymm18,ymm14,ymm15
  ae0251:	62 a1 f5 20 14 d8    	vunpcklpd ymm19,ymm17,ymm16
  ae0257:	62 a3 6d 20 18 e3 01 	vinsertf32x4 ymm20,ymm18,xmm19,0x1
  ae025e:	62 e1 7c 28 29 64 c4 	vmovaps YMMWORD PTR [rsp+rax*8+0x40],ymm20
  ae0265:	02 
  ae0266:	c4 41 0d 15 f7       	vunpckhpd ymm14,ymm14,ymm15
  ae026b:	62 31 f5 20 15 f8    	vunpckhpd ymm15,ymm17,ymm16
  ae0271:	62 c3 8d 28 23 c7 03 	vshuff64x2 ymm16,ymm14,ymm15,0x3
  ae0278:	62 a3 ed 20 23 cb 03 	vshuff64x2 ymm17,ymm18,ymm19,0x3
  ae027f:	c4 43 0d 18 f7 01    	vinsertf128 ymm14,ymm14,xmm15,0x1
  ae0285:	c5 7c 29 b4 c4 c0 00 	vmovaps YMMWORD PTR [rsp+rax*8+0xc0],ymm14
  ae028c:	00 00 
  ae028e:	62 e1 fd 28 29 4c c4 	vmovapd YMMWORD PTR [rsp+rax*8+0x140],ymm17
  ae0295:	0a 
  ae0296:	62 e1 fd 28 29 44 c4 	vmovapd YMMWORD PTR [rsp+rax*8+0x1c0],ymm16
  ae029d:	0e 
  ae029e:	c4 41 15 14 f3       	vunpcklpd ymm14,ymm13,ymm11
  ae02a3:	c4 41 1d 14 fa       	vunpcklpd ymm15,ymm12,ymm10
  ae02a8:	62 c3 0d 28 18 c7 01 	vinsertf32x4 ymm16,ymm14,xmm15,0x1
  ae02af:	62 e1 7c 28 29 44 c4 	vmovaps YMMWORD PTR [rsp+rax*8+0x60],ymm16
  ae02b6:	03 
  ae02b7:	c4 41 15 15 db       	vunpckhpd ymm11,ymm13,ymm11
  ae02bc:	c4 41 1d 15 d2       	vunpckhpd ymm10,ymm12,ymm10
  ae02c1:	c4 43 25 06 e2 31    	vperm2f128 ymm12,ymm11,ymm10,0x31
  ae02c7:	c4 43 0d 06 ef 31    	vperm2f128 ymm13,ymm14,ymm15,0x31
  ae02cd:	c4 43 25 18 d2 01    	vinsertf128 ymm10,ymm11,xmm10,0x1
  ae02d3:	c5 7c 29 94 c4 e0 00 	vmovaps YMMWORD PTR [rsp+rax*8+0xe0],ymm10
  ae02da:	00 00 
  ae02dc:	c5 7d 29 ac c4 60 01 	vmovapd YMMWORD PTR [rsp+rax*8+0x160],ymm13
  ae02e3:	00 00 
  ae02e5:	c5 7d 29 a4 c4 e0 01 	vmovapd YMMWORD PTR [rsp+rax*8+0x1e0],ymm12
  ae02ec:	00 00 
  ae02ee:	e9 06 fb ff ff       	jmp    adfdf9 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0xb9>
  ae02f3:	c5 fc 28 84 24 80 00 	vmovaps ymm0,YMMWORD PTR [rsp+0x80]
  ae02fa:	00 00 
  ae02fc:	c5 fc 28 8c 24 00 01 	vmovaps ymm1,YMMWORD PTR [rsp+0x100]
  ae0303:	00 00 
  ae0305:	c5 fc 59 12          	vmulps ymm2,ymm0,YMMWORD PTR [rdx]
  ae0309:	c5 fc c6 c0 b1       	vshufps ymm0,ymm0,ymm0,0xb1
  ae030e:	c4 e2 7d b8 52 20    	vfmadd231ps ymm2,ymm0,YMMWORD PTR [rdx+0x20]
  ae0314:	c5 f4 c6 c1 b1       	vshufps ymm0,ymm1,ymm1,0xb1
  ae0319:	c5 f4 59 4a 40       	vmulps ymm1,ymm1,YMMWORD PTR [rdx+0x40]
  ae031e:	c4 e2 7d b8 4a 60    	vfmadd231ps ymm1,ymm0,YMMWORD PTR [rdx+0x60]
  ae0324:	c5 fc 28 84 24 80 01 	vmovaps ymm0,YMMWORD PTR [rsp+0x180]
  ae032b:	00 00 
  ae032d:	c5 fc c6 d8 b1       	vshufps ymm3,ymm0,ymm0,0xb1
  ae0332:	c5 fc 59 82 80 00 00 	vmulps ymm0,ymm0,YMMWORD PTR [rdx+0x80]
  ae0339:	00 
  ae033a:	c4 e2 65 b8 82 a0 00 	vfmadd231ps ymm0,ymm3,YMMWORD PTR [rdx+0xa0]
  ae0341:	00 00 
  ae0343:	c5 fc 28 9c 24 00 02 	vmovaps ymm3,YMMWORD PTR [rsp+0x200]
  ae034a:	00 00 
  ae034c:	c5 e4 c6 e3 b1       	vshufps ymm4,ymm3,ymm3,0xb1
  ae0351:	c5 e4 59 9a c0 00 00 	vmulps ymm3,ymm3,YMMWORD PTR [rdx+0xc0]
  ae0358:	00 
  ae0359:	c4 e2 5d b8 9a e0 00 	vfmadd231ps ymm3,ymm4,YMMWORD PTR [rdx+0xe0]
  ae0360:	00 00 
  ae0362:	c5 fc 28 2c 24       	vmovaps ymm5,YMMWORD PTR [rsp]
  ae0367:	c5 ec 58 f3          	vaddps ymm6,ymm2,ymm3
  ae036b:	c5 f4 58 f8          	vaddps ymm7,ymm1,ymm0
  ae036f:	c5 6c 5c c3          	vsubps ymm8,ymm2,ymm3
  ae0373:	c5 74 5c c8          	vsubps ymm9,ymm1,ymm0
  ae0377:	c4 e2 7d 18 0d 28 52 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff595228]        # 755a8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b88>
  ae037e:	59 ff 
  ae0380:	c5 7c 28 d1          	vmovaps ymm10,ymm1
  ae0384:	c4 62 4d a8 d5       	vfmadd213ps ymm10,ymm6,ymm5
  ae0389:	c4 e2 7d 18 05 4a 4e 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff594e4a]        # 751dc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x27bc>
  ae0390:	59 ff 
  ae0392:	c4 62 45 b8 d0       	vfmadd231ps ymm10,ymm7,ymm0
  ae0397:	c5 7c 28 d8          	vmovaps ymm11,ymm0
  ae039b:	c4 62 4d a8 dd       	vfmadd213ps ymm11,ymm6,ymm5
  ae03a0:	c4 e2 7d 18 15 b7 4e 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff594eb7]        # 75260 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2840>
  ae03a7:	59 ff 
  ae03a9:	c4 62 45 b8 d9       	vfmadd231ps ymm11,ymm7,ymm1
  ae03ae:	c5 bc 59 e2          	vmulps ymm4,ymm8,ymm2
  ae03b2:	c4 e2 7d 18 1d 5d 52 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff59525d]        # 75618 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bf8>
  ae03b9:	59 ff 
  ae03bb:	c4 e2 35 b8 e3       	vfmadd231ps ymm4,ymm9,ymm3
  ae03c0:	c5 5c c6 e4 b1       	vshufps ymm12,ymm4,ymm4,0xb1
  ae03c5:	c5 fc 28 25 b3 80 59 	vmovaps ymm4,YMMWORD PTR [rip+0xffffffffff5980b3]        # 78480 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5a60>
  ae03cc:	ff 
  ae03cd:	c5 1c 57 e4          	vxorps ymm12,ymm12,ymm4
  ae03d1:	c5 3c 59 c3          	vmulps ymm8,ymm8,ymm3
  ae03d5:	c4 42 6d bc c1       	vfnmadd231ps ymm8,ymm2,ymm9
  ae03da:	c4 41 3c c6 c0 b1    	vshufps ymm8,ymm8,ymm8,0xb1
  ae03e0:	c5 3c 57 c4          	vxorps ymm8,ymm8,ymm4
  ae03e4:	c5 c4 58 f6          	vaddps ymm6,ymm7,ymm6
  ae03e8:	c5 d4 58 ee          	vaddps ymm5,ymm5,ymm6
  ae03ec:	c4 c1 2c 58 f4       	vaddps ymm6,ymm10,ymm12
  ae03f1:	c4 c1 24 58 f8       	vaddps ymm7,ymm11,ymm8
  ae03f6:	c4 41 24 5c c0       	vsubps ymm8,ymm11,ymm8
  ae03fb:	c4 41 2c 5c cc       	vsubps ymm9,ymm10,ymm12
  ae0400:	c5 fc 11 2e          	vmovups YMMWORD PTR [rsi],ymm5
  ae0404:	c5 fc 11 b6 80 00 00 	vmovups YMMWORD PTR [rsi+0x80],ymm6
  ae040b:	00 
  ae040c:	c5 fc 11 be 00 01 00 	vmovups YMMWORD PTR [rsi+0x100],ymm7
  ae0413:	00 
  ae0414:	c5 7c 11 86 80 01 00 	vmovups YMMWORD PTR [rsi+0x180],ymm8
  ae041b:	00 
  ae041c:	c5 7c 11 8e 00 02 00 	vmovups YMMWORD PTR [rsi+0x200],ymm9
  ae0423:	00 
  ae0424:	c5 fc 28 6c 24 20    	vmovaps ymm5,YMMWORD PTR [rsp+0x20]
  ae042a:	c5 fc 28 b4 24 a0 00 	vmovaps ymm6,YMMWORD PTR [rsp+0xa0]
  ae0431:	00 00 
  ae0433:	c5 fc 28 bc 24 20 01 	vmovaps ymm7,YMMWORD PTR [rsp+0x120]
  ae043a:	00 00 
  ae043c:	c5 4c 59 82 00 01 00 	vmulps ymm8,ymm6,YMMWORD PTR [rdx+0x100]
  ae0443:	00 
  ae0444:	c5 cc c6 f6 b1       	vshufps ymm6,ymm6,ymm6,0xb1
  ae0449:	c4 62 4d b8 82 20 01 	vfmadd231ps ymm8,ymm6,YMMWORD PTR [rdx+0x120]
  ae0450:	00 00 
  ae0452:	c5 c4 c6 f7 b1       	vshufps ymm6,ymm7,ymm7,0xb1
  ae0457:	c5 c4 59 ba 40 01 00 	vmulps ymm7,ymm7,YMMWORD PTR [rdx+0x140]
  ae045e:	00 
  ae045f:	c4 e2 4d b8 ba 60 01 	vfmadd231ps ymm7,ymm6,YMMWORD PTR [rdx+0x160]
  ae0466:	00 00 
  ae0468:	c5 fc 28 b4 24 a0 01 	vmovaps ymm6,YMMWORD PTR [rsp+0x1a0]
  ae046f:	00 00 
  ae0471:	c5 4c c6 ce b1       	vshufps ymm9,ymm6,ymm6,0xb1
  ae0476:	c5 cc 59 b2 80 01 00 	vmulps ymm6,ymm6,YMMWORD PTR [rdx+0x180]
  ae047d:	00 
  ae047e:	c4 e2 35 b8 b2 a0 01 	vfmadd231ps ymm6,ymm9,YMMWORD PTR [rdx+0x1a0]
  ae0485:	00 00 
  ae0487:	c5 7c 28 8c 24 20 02 	vmovaps ymm9,YMMWORD PTR [rsp+0x220]
  ae048e:	00 00 
  ae0490:	c4 41 34 c6 d1 b1    	vshufps ymm10,ymm9,ymm9,0xb1
  ae0496:	c5 34 59 8a c0 01 00 	vmulps ymm9,ymm9,YMMWORD PTR [rdx+0x1c0]
  ae049d:	00 
  ae049e:	c4 62 2d b8 8a e0 01 	vfmadd231ps ymm9,ymm10,YMMWORD PTR [rdx+0x1e0]
  ae04a5:	00 00 
  ae04a7:	c4 41 3c 58 d1       	vaddps ymm10,ymm8,ymm9
  ae04ac:	c5 44 58 de          	vaddps ymm11,ymm7,ymm6
  ae04b0:	c4 41 3c 5c c1       	vsubps ymm8,ymm8,ymm9
  ae04b5:	c5 c4 5c f6          	vsubps ymm6,ymm7,ymm6
  ae04b9:	c5 fc 28 f9          	vmovaps ymm7,ymm1
  ae04bd:	c4 e2 2d a8 fd       	vfmadd213ps ymm7,ymm10,ymm5
  ae04c2:	c4 e2 25 b8 f8       	vfmadd231ps ymm7,ymm11,ymm0
  ae04c7:	c5 7c 28 c8          	vmovaps ymm9,ymm0
  ae04cb:	c4 62 2d a8 cd       	vfmadd213ps ymm9,ymm10,ymm5
  ae04d0:	c4 62 25 b8 c9       	vfmadd231ps ymm9,ymm11,ymm1
  ae04d5:	c5 3c 59 e2          	vmulps ymm12,ymm8,ymm2
  ae04d9:	c4 62 4d b8 e3       	vfmadd231ps ymm12,ymm6,ymm3
  ae04de:	c4 41 1c c6 e4 b1    	vshufps ymm12,ymm12,ymm12,0xb1
  ae04e4:	c5 1c 57 e4          	vxorps ymm12,ymm12,ymm4
  ae04e8:	c5 3c 59 c3          	vmulps ymm8,ymm8,ymm3
  ae04ec:	c4 62 6d bc c6       	vfnmadd231ps ymm8,ymm2,ymm6
  ae04f1:	c4 c1 3c c6 f0 b1    	vshufps ymm6,ymm8,ymm8,0xb1
  ae04f7:	c5 cc 57 f4          	vxorps ymm6,ymm6,ymm4
  ae04fb:	c4 41 24 58 c2       	vaddps ymm8,ymm11,ymm10
  ae0500:	c5 bc 58 ed          	vaddps ymm5,ymm8,ymm5
  ae0504:	c5 1c 58 c7          	vaddps ymm8,ymm12,ymm7
  ae0508:	c5 34 58 d6          	vaddps ymm10,ymm9,ymm6
  ae050c:	c5 b4 5c f6          	vsubps ymm6,ymm9,ymm6
  ae0510:	c4 c1 44 5c fc       	vsubps ymm7,ymm7,ymm12
  ae0515:	c5 fc 11 6e 20       	vmovups YMMWORD PTR [rsi+0x20],ymm5
  ae051a:	c5 7c 11 86 a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm8
  ae0521:	00 
  ae0522:	c5 7c 11 96 20 01 00 	vmovups YMMWORD PTR [rsi+0x120],ymm10
  ae0529:	00 
  ae052a:	c5 fc 11 b6 a0 01 00 	vmovups YMMWORD PTR [rsi+0x1a0],ymm6
  ae0531:	00 
  ae0532:	c5 fc 11 be 20 02 00 	vmovups YMMWORD PTR [rsi+0x220],ymm7
  ae0539:	00 
  ae053a:	c5 fc 28 6c 24 40    	vmovaps ymm5,YMMWORD PTR [rsp+0x40]
  ae0540:	c5 fc 28 b4 24 c0 00 	vmovaps ymm6,YMMWORD PTR [rsp+0xc0]
  ae0547:	00 00 
  ae0549:	c5 fc 28 bc 24 40 01 	vmovaps ymm7,YMMWORD PTR [rsp+0x140]
  ae0550:	00 00 
  ae0552:	c5 7c 28 84 24 c0 01 	vmovaps ymm8,YMMWORD PTR [rsp+0x1c0]
  ae0559:	00 00 
  ae055b:	c5 4c c6 ce b1       	vshufps ymm9,ymm6,ymm6,0xb1
  ae0560:	c5 cc 59 b2 00 02 00 	vmulps ymm6,ymm6,YMMWORD PTR [rdx+0x200]
  ae0567:	00 
  ae0568:	c4 e2 35 b8 b2 20 02 	vfmadd231ps ymm6,ymm9,YMMWORD PTR [rdx+0x220]
  ae056f:	00 00 
  ae0571:	c5 44 59 8a 40 02 00 	vmulps ymm9,ymm7,YMMWORD PTR [rdx+0x240]
  ae0578:	00 
  ae0579:	c5 c4 c6 ff b1       	vshufps ymm7,ymm7,ymm7,0xb1
  ae057e:	c4 62 45 b8 8a 60 02 	vfmadd231ps ymm9,ymm7,YMMWORD PTR [rdx+0x260]
  ae0585:	00 00 
  ae0587:	c4 c1 3c c6 f8 b1    	vshufps ymm7,ymm8,ymm8,0xb1
  ae058d:	c5 3c 59 82 80 02 00 	vmulps ymm8,ymm8,YMMWORD PTR [rdx+0x280]
  ae0594:	00 
  ae0595:	c4 62 45 b8 82 a0 02 	vfmadd231ps ymm8,ymm7,YMMWORD PTR [rdx+0x2a0]
  ae059c:	00 00 
  ae059e:	c5 fc 28 bc 24 40 02 	vmovaps ymm7,YMMWORD PTR [rsp+0x240]
  ae05a5:	00 00 
  ae05a7:	c5 44 c6 d7 b1       	vshufps ymm10,ymm7,ymm7,0xb1
  ae05ac:	c5 c4 59 ba c0 02 00 	vmulps ymm7,ymm7,YMMWORD PTR [rdx+0x2c0]
  ae05b3:	00 
  ae05b4:	c4 e2 2d b8 ba e0 02 	vfmadd231ps ymm7,ymm10,YMMWORD PTR [rdx+0x2e0]
  ae05bb:	00 00 
  ae05bd:	c5 4c 58 d7          	vaddps ymm10,ymm6,ymm7
  ae05c1:	c4 41 34 58 d8       	vaddps ymm11,ymm9,ymm8
  ae05c6:	c5 cc 5c f7          	vsubps ymm6,ymm6,ymm7
  ae05ca:	c4 c1 34 5c f8       	vsubps ymm7,ymm9,ymm8
  ae05cf:	c5 7c 28 c1          	vmovaps ymm8,ymm1
  ae05d3:	c4 62 2d a8 c5       	vfmadd213ps ymm8,ymm10,ymm5
  ae05d8:	c4 62 25 b8 c0       	vfmadd231ps ymm8,ymm11,ymm0
  ae05dd:	c5 7c 28 c8          	vmovaps ymm9,ymm0
  ae05e1:	c4 62 2d a8 cd       	vfmadd213ps ymm9,ymm10,ymm5
  ae05e6:	c4 62 25 b8 c9       	vfmadd231ps ymm9,ymm11,ymm1
  ae05eb:	c5 4c 59 e2          	vmulps ymm12,ymm6,ymm2
  ae05ef:	c4 62 45 b8 e3       	vfmadd231ps ymm12,ymm7,ymm3
  ae05f4:	c4 41 1c c6 e4 b1    	vshufps ymm12,ymm12,ymm12,0xb1
  ae05fa:	c5 1c 57 e4          	vxorps ymm12,ymm12,ymm4
  ae05fe:	c5 cc 59 f3          	vmulps ymm6,ymm6,ymm3
  ae0602:	c4 e2 6d bc f7       	vfnmadd231ps ymm6,ymm2,ymm7
  ae0607:	c5 cc c6 f6 b1       	vshufps ymm6,ymm6,ymm6,0xb1
  ae060c:	c5 cc 57 f4          	vxorps ymm6,ymm6,ymm4
  ae0610:	c4 c1 24 58 fa       	vaddps ymm7,ymm11,ymm10
  ae0615:	c5 d4 58 ef          	vaddps ymm5,ymm5,ymm7
  ae0619:	c4 c1 3c 58 fc       	vaddps ymm7,ymm8,ymm12
  ae061e:	c5 34 58 d6          	vaddps ymm10,ymm9,ymm6
  ae0622:	c5 b4 5c f6          	vsubps ymm6,ymm9,ymm6
  ae0626:	c4 41 3c 5c c4       	vsubps ymm8,ymm8,ymm12
  ae062b:	c5 fc 11 6e 40       	vmovups YMMWORD PTR [rsi+0x40],ymm5
  ae0630:	c5 fc 11 be c0 00 00 	vmovups YMMWORD PTR [rsi+0xc0],ymm7
  ae0637:	00 
  ae0638:	c5 7c 11 96 40 01 00 	vmovups YMMWORD PTR [rsi+0x140],ymm10
  ae063f:	00 
  ae0640:	c5 fc 11 b6 c0 01 00 	vmovups YMMWORD PTR [rsi+0x1c0],ymm6
  ae0647:	00 
  ae0648:	c5 7c 11 86 40 02 00 	vmovups YMMWORD PTR [rsi+0x240],ymm8
  ae064f:	00 
  ae0650:	c5 fc 28 6c 24 60    	vmovaps ymm5,YMMWORD PTR [rsp+0x60]
  ae0656:	c5 fc 28 b4 24 e0 00 	vmovaps ymm6,YMMWORD PTR [rsp+0xe0]
  ae065d:	00 00 
  ae065f:	c5 fc 28 bc 24 60 01 	vmovaps ymm7,YMMWORD PTR [rsp+0x160]
  ae0666:	00 00 
  ae0668:	c5 4c 59 82 00 03 00 	vmulps ymm8,ymm6,YMMWORD PTR [rdx+0x300]
  ae066f:	00 
  ae0670:	c5 cc c6 f6 b1       	vshufps ymm6,ymm6,ymm6,0xb1
  ae0675:	c4 62 4d b8 82 20 03 	vfmadd231ps ymm8,ymm6,YMMWORD PTR [rdx+0x320]
  ae067c:	00 00 
  ae067e:	c5 c4 c6 f7 b1       	vshufps ymm6,ymm7,ymm7,0xb1
  ae0683:	c5 c4 59 ba 40 03 00 	vmulps ymm7,ymm7,YMMWORD PTR [rdx+0x340]
  ae068a:	00 
  ae068b:	c4 e2 4d b8 ba 60 03 	vfmadd231ps ymm7,ymm6,YMMWORD PTR [rdx+0x360]
  ae0692:	00 00 
  ae0694:	c5 fc 28 b4 24 e0 01 	vmovaps ymm6,YMMWORD PTR [rsp+0x1e0]
  ae069b:	00 00 
  ae069d:	c5 4c c6 ce b1       	vshufps ymm9,ymm6,ymm6,0xb1
  ae06a2:	c5 cc 59 b2 80 03 00 	vmulps ymm6,ymm6,YMMWORD PTR [rdx+0x380]
  ae06a9:	00 
  ae06aa:	c4 e2 35 b8 b2 a0 03 	vfmadd231ps ymm6,ymm9,YMMWORD PTR [rdx+0x3a0]
  ae06b1:	00 00 
  ae06b3:	c5 7c 28 8c 24 60 02 	vmovaps ymm9,YMMWORD PTR [rsp+0x260]
  ae06ba:	00 00 
  ae06bc:	c4 41 34 c6 d1 b1    	vshufps ymm10,ymm9,ymm9,0xb1
  ae06c2:	c5 34 59 8a c0 03 00 	vmulps ymm9,ymm9,YMMWORD PTR [rdx+0x3c0]
  ae06c9:	00 
  ae06ca:	c4 62 2d b8 8a e0 03 	vfmadd231ps ymm9,ymm10,YMMWORD PTR [rdx+0x3e0]
  ae06d1:	00 00 
  ae06d3:	c4 41 3c 58 d1       	vaddps ymm10,ymm8,ymm9
  ae06d8:	c5 44 58 de          	vaddps ymm11,ymm7,ymm6
  ae06dc:	c4 41 3c 5c c1       	vsubps ymm8,ymm8,ymm9
  ae06e1:	c5 c4 5c f6          	vsubps ymm6,ymm7,ymm6
  ae06e5:	c5 fc 28 f9          	vmovaps ymm7,ymm1
  ae06e9:	c4 e2 2d a8 fd       	vfmadd213ps ymm7,ymm10,ymm5
  ae06ee:	c4 e2 25 b8 f8       	vfmadd231ps ymm7,ymm11,ymm0
  ae06f3:	c4 e2 2d a8 c5       	vfmadd213ps ymm0,ymm10,ymm5
  ae06f8:	c4 e2 25 b8 c1       	vfmadd231ps ymm0,ymm11,ymm1
  ae06fd:	c5 bc 59 ca          	vmulps ymm1,ymm8,ymm2
  ae0701:	c4 e2 4d b8 cb       	vfmadd231ps ymm1,ymm6,ymm3
  ae0706:	c5 f4 c6 c9 b1       	vshufps ymm1,ymm1,ymm1,0xb1
  ae070b:	c5 f4 57 cc          	vxorps ymm1,ymm1,ymm4
  ae070f:	c5 bc 59 db          	vmulps ymm3,ymm8,ymm3
  ae0713:	c4 e2 4d bc da       	vfnmadd231ps ymm3,ymm6,ymm2
  ae0718:	c5 e4 c6 d3 b1       	vshufps ymm2,ymm3,ymm3,0xb1
  ae071d:	c5 ec 57 d4          	vxorps ymm2,ymm2,ymm4
  ae0721:	c4 c1 24 58 da       	vaddps ymm3,ymm11,ymm10
  ae0726:	c5 d4 58 db          	vaddps ymm3,ymm5,ymm3
  ae072a:	c5 c4 58 e1          	vaddps ymm4,ymm7,ymm1
  ae072e:	c5 fc 58 ea          	vaddps ymm5,ymm0,ymm2
  ae0732:	c5 fc 5c c2          	vsubps ymm0,ymm0,ymm2
  ae0736:	c5 c4 5c c9          	vsubps ymm1,ymm7,ymm1
  ae073a:	c5 fc 11 5e 60       	vmovups YMMWORD PTR [rsi+0x60],ymm3
  ae073f:	c5 fc 11 a6 e0 00 00 	vmovups YMMWORD PTR [rsi+0xe0],ymm4
  ae0746:	00 
  ae0747:	c5 fc 11 ae 60 01 00 	vmovups YMMWORD PTR [rsi+0x160],ymm5
  ae074e:	00 
  ae074f:	c5 fc 11 86 e0 01 00 	vmovups YMMWORD PTR [rsi+0x1e0],ymm0
  ae0756:	00 
  ae0757:	c5 fc 11 8e 60 02 00 	vmovups YMMWORD PTR [rsi+0x260],ymm1
  ae075e:	00 
  ae075f:	48 89 ec             	mov    rsp,rbp
  ae0762:	5d                   	pop    rbp
  ae0763:	c5 f8 77             	vzeroupper
  ae0766:	c3                   	ret
  ae0767:	cc                   	int3
  ae0768:	cc                   	int3
  ae0769:	cc                   	int3
  ae076a:	cc                   	int3
  ae076b:	cc                   	int3
  ae076c:	cc                   	int3
  ae076d:	cc                   	int3
  ae076e:	cc                   	int3
  ae076f:	cc                   	int3
  ae0770:	cc                   	int3
  ae0771:	cc                   	int3
  ae0772:	cc                   	int3
  ae0773:	cc                   	int3
  ae0774:	cc                   	int3
  ae0775:	cc                   	int3
  ae0776:	cc                   	int3
  ae0777:	cc                   	int3
  ae0778:	cc                   	int3
  ae0779:	cc                   	int3
  ae077a:	cc                   	int3
  ae077b:	cc                   	int3
  ae077c:	cc                   	int3
  ae077d:	cc                   	int3
  ae077e:	cc                   	int3
  ae077f:	cc                   	int3
