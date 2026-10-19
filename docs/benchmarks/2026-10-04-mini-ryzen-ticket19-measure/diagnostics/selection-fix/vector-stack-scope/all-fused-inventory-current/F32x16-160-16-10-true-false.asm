
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a3fb00 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a3fb00:	55                   	push   rbp
  a3fb01:	48 89 e5             	mov    rbp,rsp
  a3fb04:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a3fb08:	48 81 ec 80 05 00 00 	sub    rsp,0x580
  a3fb0f:	c6 84 24 00 05 00 00 	mov    BYTE PTR [rsp+0x500],0x0
  a3fb16:	00 
  a3fb17:	48 8d 84 24 00 05 00 	lea    rax,[rsp+0x500]
  a3fb1e:	00 
  a3fb1f:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  a3fb24:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  a3fb29:	62 f1 7c 48 10 1f    	vmovups zmm3,ZMMWORD PTR [rdi]
  a3fb2f:	c5 f8 10 4f 40       	vmovups xmm1,XMMWORD PTR [rdi+0x40]
  a3fb34:	62 f1 7c 48 28 15 02 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff652002]        # 91b40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1eff0>
  a3fb3b:	20 65 ff 
  a3fb3e:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a3fb44:	62 f2 6d 48 7f c1    	vpermt2ps zmm0,zmm2,zmm1
  a3fb4a:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  a3fb51:	04 
  a3fb52:	62 f1 7c 48 28 05 24 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff652024]        # 91b80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f030>
  a3fb59:	20 65 ff 
  a3fb5c:	62 f2 7d 48 7f d9    	vpermt2ps zmm3,zmm0,zmm1
  a3fb62:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm3
  a3fb69:	02 
  a3fb6a:	62 f1 7c 48 10 a7 50 	vmovups zmm4,ZMMWORD PTR [rdi+0x50]
  a3fb71:	00 00 00 
  a3fb74:	c5 f8 10 8f 90 00 00 	vmovups xmm1,XMMWORD PTR [rdi+0x90]
  a3fb7b:	00 
  a3fb7c:	62 f1 7c 48 28 dc    	vmovaps zmm3,zmm4
  a3fb82:	62 f2 6d 48 7f d9    	vpermt2ps zmm3,zmm2,zmm1
  a3fb88:	62 f1 7c 48 28 eb    	vmovaps zmm5,zmm3
  a3fb8e:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm3
  a3fb95:	0b 
  a3fb96:	62 f2 7d 48 7f e1    	vpermt2ps zmm4,zmm0,zmm1
  a3fb9c:	62 f1 7c 48 28 f4    	vmovaps zmm6,zmm4
  a3fba2:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm4
  a3fba9:	0a 
  a3fbaa:	62 f1 7c 48 10 9f a0 	vmovups zmm3,ZMMWORD PTR [rdi+0xa0]
  a3fbb1:	00 00 00 
  a3fbb4:	c5 f8 10 8f e0 00 00 	vmovups xmm1,XMMWORD PTR [rdi+0xe0]
  a3fbbb:	00 
  a3fbbc:	62 f1 7c 48 28 e3    	vmovaps zmm4,zmm3
  a3fbc2:	62 f2 6d 48 7f e1    	vpermt2ps zmm4,zmm2,zmm1
  a3fbc8:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm4
  a3fbcf:	05 
  a3fbd0:	62 f2 7d 48 7f d9    	vpermt2ps zmm3,zmm0,zmm1
  a3fbd6:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm3
  a3fbdd:	01 
  a3fbde:	62 e1 7c 48 10 b7 f0 	vmovups zmm22,ZMMWORD PTR [rdi+0xf0]
  a3fbe5:	00 00 00 
  a3fbe8:	c5 f8 10 8f 30 01 00 	vmovups xmm1,XMMWORD PTR [rdi+0x130]
  a3fbef:	00 
  a3fbf0:	62 b1 7c 48 28 de    	vmovaps zmm3,zmm22
  a3fbf6:	62 f2 6d 48 7f d9    	vpermt2ps zmm3,zmm2,zmm1
  a3fbfc:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm3
  a3fc03:	12 
  a3fc04:	62 e2 7d 48 7f f1    	vpermt2ps zmm22,zmm0,zmm1
  a3fc0a:	62 f1 7c 48 10 5f 05 	vmovups zmm3,ZMMWORD PTR [rdi+0x140]
  a3fc11:	c5 f8 10 8f 80 01 00 	vmovups xmm1,XMMWORD PTR [rdi+0x180]
  a3fc18:	00 
  a3fc19:	62 f1 7c 48 28 e3    	vmovaps zmm4,zmm3
  a3fc1f:	62 f2 6d 48 7f e1    	vpermt2ps zmm4,zmm2,zmm1
  a3fc25:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm4
  a3fc2c:	08 
  a3fc2d:	62 f2 7d 48 7f d9    	vpermt2ps zmm3,zmm0,zmm1
  a3fc33:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm3
  a3fc3a:	09 
  a3fc3b:	62 e1 7c 48 10 87 90 	vmovups zmm16,ZMMWORD PTR [rdi+0x190]
  a3fc42:	01 00 00 
  a3fc45:	c5 f8 10 8f d0 01 00 	vmovups xmm1,XMMWORD PTR [rdi+0x1d0]
  a3fc4c:	00 
  a3fc4d:	62 b1 7c 48 28 d8    	vmovaps zmm3,zmm16
  a3fc53:	62 f2 6d 48 7f d9    	vpermt2ps zmm3,zmm2,zmm1
  a3fc59:	62 f1 7c 48 28 e3    	vmovaps zmm4,zmm3
  a3fc5f:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm3
  a3fc66:	0d 
  a3fc67:	62 e2 7d 48 7f c1    	vpermt2ps zmm16,zmm0,zmm1
  a3fc6d:	62 e1 7c 48 10 a7 e0 	vmovups zmm20,ZMMWORD PTR [rdi+0x1e0]
  a3fc74:	01 00 00 
  a3fc77:	c5 f8 10 8f 20 02 00 	vmovups xmm1,XMMWORD PTR [rdi+0x220]
  a3fc7e:	00 
  a3fc7f:	62 b1 7c 48 28 dc    	vmovaps zmm3,zmm20
  a3fc85:	62 f2 6d 48 7f d9    	vpermt2ps zmm3,zmm2,zmm1
  a3fc8b:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm3
  a3fc92:	07 
  a3fc93:	62 e2 7d 48 7f e1    	vpermt2ps zmm20,zmm0,zmm1
  a3fc99:	62 e1 7c 48 10 8f 30 	vmovups zmm17,ZMMWORD PTR [rdi+0x230]
  a3fca0:	02 00 00 
  a3fca3:	c5 f8 10 8f 70 02 00 	vmovups xmm1,XMMWORD PTR [rdi+0x270]
  a3fcaa:	00 
  a3fcab:	62 31 7c 48 28 f9    	vmovaps zmm15,zmm17
  a3fcb1:	62 72 6d 48 7f f9    	vpermt2ps zmm15,zmm2,zmm1
  a3fcb7:	62 e2 7d 48 7f c9    	vpermt2ps zmm17,zmm0,zmm1
  a3fcbd:	62 e1 7c 48 10 57 0a 	vmovups zmm18,ZMMWORD PTR [rdi+0x280]
  a3fcc4:	c5 f8 10 8f c0 02 00 	vmovups xmm1,XMMWORD PTR [rdi+0x2c0]
  a3fccb:	00 
  a3fccc:	62 b1 7c 48 28 da    	vmovaps zmm3,zmm18
  a3fcd2:	62 f2 6d 48 7f d9    	vpermt2ps zmm3,zmm2,zmm1
  a3fcd8:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm3
  a3fcdf:	06 
  a3fce0:	62 e2 7d 48 7f d1    	vpermt2ps zmm18,zmm0,zmm1
  a3fce6:	62 e1 7c 48 10 bf d0 	vmovups zmm23,ZMMWORD PTR [rdi+0x2d0]
  a3fced:	02 00 00 
  a3fcf0:	c5 f8 10 8f 10 03 00 	vmovups xmm1,XMMWORD PTR [rdi+0x310]
  a3fcf7:	00 
  a3fcf8:	62 b1 7c 48 28 df    	vmovaps zmm3,zmm23
  a3fcfe:	62 f2 6d 48 7f d9    	vpermt2ps zmm3,zmm2,zmm1
  a3fd04:	62 71 7c 48 28 c3    	vmovaps zmm8,zmm3
  a3fd0a:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm3
  a3fd11:	0c 
  a3fd12:	62 e2 7d 48 7f f9    	vpermt2ps zmm23,zmm0,zmm1
  a3fd18:	62 e1 7c 48 10 9f 20 	vmovups zmm19,ZMMWORD PTR [rdi+0x320]
  a3fd1f:	03 00 00 
  a3fd22:	c5 f8 10 8f 60 03 00 	vmovups xmm1,XMMWORD PTR [rdi+0x360]
  a3fd29:	00 
  a3fd2a:	62 b1 7c 48 28 db    	vmovaps zmm3,zmm19
  a3fd30:	62 f2 6d 48 7f d9    	vpermt2ps zmm3,zmm2,zmm1
  a3fd36:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm3
  a3fd3d:	03 
  a3fd3e:	62 e2 7d 48 7f d9    	vpermt2ps zmm19,zmm0,zmm1
  a3fd44:	62 61 7c 48 10 8f 70 	vmovups zmm25,ZMMWORD PTR [rdi+0x370]
  a3fd4b:	03 00 00 
  a3fd4e:	c5 f8 10 8f b0 03 00 	vmovups xmm1,XMMWORD PTR [rdi+0x3b0]
  a3fd55:	00 
  a3fd56:	62 01 7c 48 28 c1    	vmovaps zmm24,zmm25
  a3fd5c:	62 62 6d 48 7f c1    	vpermt2ps zmm24,zmm2,zmm1
  a3fd62:	62 62 7d 48 7f c9    	vpermt2ps zmm25,zmm0,zmm1
  a3fd68:	62 e1 7c 48 10 6f 0f 	vmovups zmm21,ZMMWORD PTR [rdi+0x3c0]
  a3fd6f:	c5 f8 10 8f 00 04 00 	vmovups xmm1,XMMWORD PTR [rdi+0x400]
  a3fd76:	00 
  a3fd77:	62 21 7c 48 28 d5    	vmovaps zmm26,zmm21
  a3fd7d:	62 62 6d 48 7f d1    	vpermt2ps zmm26,zmm2,zmm1
  a3fd83:	62 e2 7d 48 7f e9    	vpermt2ps zmm21,zmm0,zmm1
  a3fd89:	62 61 7c 48 10 bf 10 	vmovups zmm31,ZMMWORD PTR [rdi+0x410]
  a3fd90:	04 00 00 
  a3fd93:	c5 f8 10 8f 50 04 00 	vmovups xmm1,XMMWORD PTR [rdi+0x450]
  a3fd9a:	00 
  a3fd9b:	62 01 7c 48 28 f7    	vmovaps zmm30,zmm31
  a3fda1:	62 62 6d 48 7f f1    	vpermt2ps zmm30,zmm2,zmm1
  a3fda7:	62 62 7d 48 7f f9    	vpermt2ps zmm31,zmm0,zmm1
  a3fdad:	62 61 7c 48 10 a7 60 	vmovups zmm28,ZMMWORD PTR [rdi+0x460]
  a3fdb4:	04 00 00 
  a3fdb7:	c5 f8 10 8f a0 04 00 	vmovups xmm1,XMMWORD PTR [rdi+0x4a0]
  a3fdbe:	00 
  a3fdbf:	62 01 7c 48 28 ec    	vmovaps zmm29,zmm28
  a3fdc5:	62 62 6d 48 7f e9    	vpermt2ps zmm29,zmm2,zmm1
  a3fdcb:	62 62 7d 48 7f e1    	vpermt2ps zmm28,zmm0,zmm1
  a3fdd1:	62 71 7c 48 10 97 b0 	vmovups zmm10,ZMMWORD PTR [rdi+0x4b0]
  a3fdd8:	04 00 00 
  a3fddb:	c5 f8 10 8f f0 04 00 	vmovups xmm1,XMMWORD PTR [rdi+0x4f0]
  a3fde2:	00 
  a3fde3:	62 f2 2d 48 77 d1    	vpermi2ps zmm2,zmm10,zmm1
  a3fde9:	62 72 7d 48 7f d1    	vpermt2ps zmm10,zmm0,zmm1
  a3fdef:	62 31 4c 48 5c f7    	vsubps zmm14,zmm6,zmm23
  a3fdf5:	62 11 5c 48 5c ee    	vsubps zmm13,zmm4,zmm30
  a3fdfb:	62 d1 0c 48 58 fd    	vaddps zmm7,zmm14,zmm13
  a3fe01:	62 51 54 48 5c e0    	vsubps zmm12,zmm5,zmm8
  a3fe07:	62 31 04 40 5c d8    	vsubps zmm11,zmm31,zmm16
  a3fe0d:	62 51 24 48 58 cc    	vaddps zmm9,zmm11,zmm12
  a3fe13:	62 72 7d 48 18 05 47 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff635847]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a3fe1a:	58 63 ff 
  a3fe1d:	62 d1 34 48 59 c0    	vmulps zmm0,zmm9,zmm8
  a3fe23:	62 f2 7d 48 18 35 d3 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff6358d3]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a3fe2a:	58 63 ff 
  a3fe2d:	62 f2 45 48 b8 c6    	vfmadd231ps zmm0,zmm7,zmm6
  a3fe33:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm0
  a3fe3a:	13 
  a3fe3b:	62 f1 34 48 59 c6    	vmulps zmm0,zmm9,zmm6
  a3fe41:	62 f2 3d 48 bc c7    	vfnmadd231ps zmm0,zmm8,zmm7
  a3fe47:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm0
  a3fe4e:	11 
  a3fe4f:	62 91 4c 40 5c e9    	vsubps zmm5,zmm22,zmm25
  a3fe55:	62 f1 04 48 5c e2    	vsubps zmm4,zmm15,zmm2
  a3fe5b:	62 f1 54 48 58 c4    	vaddps zmm0,zmm5,zmm4
  a3fe61:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x480]
  a3fe68:	12 
  a3fe69:	62 91 34 48 5c d8    	vsubps zmm3,zmm9,zmm24
  a3fe6f:	62 b1 2c 48 5c c9    	vsubps zmm1,zmm10,zmm17
  a3fe75:	62 f1 74 48 58 fb    	vaddps zmm7,zmm1,zmm3
  a3fe7b:	62 61 44 48 59 de    	vmulps zmm27,zmm7,zmm6
  a3fe81:	62 42 7d 48 b8 d8    	vfmadd231ps zmm27,zmm0,zmm8
  a3fe87:	62 61 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm27
  a3fe8e:	10 
  a3fe8f:	62 41 44 48 59 d8    	vmulps zmm27,zmm7,zmm8
  a3fe95:	62 62 4d 48 bc d8    	vfnmadd231ps zmm27,zmm6,zmm0
  a3fe9b:	62 d1 0c 48 5c c5    	vsubps zmm0,zmm14,zmm13
  a3fea1:	62 51 1c 48 5c db    	vsubps zmm11,zmm12,zmm11
  a3fea7:	62 f1 54 48 5c ec    	vsubps zmm5,zmm5,zmm4
  a3fead:	62 71 64 48 5c e1    	vsubps zmm12,zmm3,zmm1
  a3feb3:	62 f1 24 48 59 ce    	vmulps zmm1,zmm11,zmm6
  a3feb9:	62 d2 7d 48 b8 c8    	vfmadd231ps zmm1,zmm0,zmm8
  a3febf:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm1
  a3fec6:	0f 
  a3fec7:	62 d1 24 48 59 e0    	vmulps zmm4,zmm11,zmm8
  a3fecd:	62 f2 4d 48 bc e0    	vfnmadd231ps zmm4,zmm6,zmm0
  a3fed3:	62 d1 1c 48 59 c0    	vmulps zmm0,zmm12,zmm8
  a3fed9:	62 f2 55 48 b8 c6    	vfmadd231ps zmm0,zmm5,zmm6
  a3fedf:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm0
  a3fee6:	0e 
  a3fee7:	62 d1 54 48 59 d8    	vmulps zmm3,zmm5,zmm8
  a3feed:	62 f2 1d 48 bc de    	vfnmadd231ps zmm3,zmm12,zmm6
  a3fef3:	62 f1 44 40 58 6c 24 	vaddps zmm5,zmm23,ZMMWORD PTR [rsp+0x280]
  a3fefa:	0a 
  a3fefb:	62 91 7c 40 58 f7    	vaddps zmm6,zmm16,zmm31
  a3ff01:	62 11 4c 40 58 c1    	vaddps zmm8,zmm22,zmm25
  a3ff07:	62 51 74 40 58 d2    	vaddps zmm10,zmm17,zmm10
  a3ff0d:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x2c0]
  a3ff14:	0b 
  a3ff15:	62 71 7c 48 58 5c 24 	vaddps zmm11,zmm0,ZMMWORD PTR [rsp+0x300]
  a3ff1c:	0c 
  a3ff1d:	62 71 0c 40 58 64 24 	vaddps zmm12,zmm30,ZMMWORD PTR [rsp+0x340]
  a3ff24:	0d 
  a3ff25:	62 11 34 48 58 e8    	vaddps zmm13,zmm9,zmm24
  a3ff2b:	62 f1 04 48 58 d2    	vaddps zmm2,zmm15,zmm2
  a3ff31:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x80]
  a3ff38:	02 
  a3ff39:	62 31 7c 48 58 f2    	vaddps zmm14,zmm0,zmm18
  a3ff3f:	62 a1 7c 48 5c c2    	vsubps zmm16,zmm0,zmm18
  a3ff45:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x200]
  a3ff4c:	08 
  a3ff4d:	62 81 7c 48 58 ca    	vaddps zmm17,zmm0,zmm26
  a3ff53:	62 81 7c 48 5c d2    	vsubps zmm18,zmm0,zmm26
  a3ff59:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x40]
  a3ff60:	01 
  a3ff61:	62 a1 7c 48 58 f3    	vaddps zmm22,zmm0,zmm19
  a3ff67:	62 a1 7c 48 5c db    	vsubps zmm19,zmm0,zmm19
  a3ff6d:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x140]
  a3ff74:	05 
  a3ff75:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0xc0]
  a3ff7c:	03 
  a3ff7d:	62 e1 7c 48 58 f9    	vaddps zmm23,zmm0,zmm1
  a3ff83:	62 61 7c 48 5c c1    	vsubps zmm24,zmm0,zmm1
  a3ff89:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x1c0]
  a3ff90:	07 
  a3ff91:	62 01 7c 48 58 cd    	vaddps zmm25,zmm0,zmm29
  a3ff97:	62 01 7c 48 5c d5    	vsubps zmm26,zmm0,zmm29
  a3ff9d:	62 01 5c 40 58 ec    	vaddps zmm29,zmm20,zmm28
  a3ffa3:	62 81 5c 40 5c e4    	vsubps zmm20,zmm20,zmm28
  a3ffa9:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x180]
  a3ffb0:	06 
  a3ffb1:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x100]
  a3ffb8:	04 
  a3ffb9:	62 61 74 48 58 e0    	vaddps zmm28,zmm1,zmm0
  a3ffbf:	62 61 74 48 5c f0    	vsubps zmm30,zmm1,zmm0
  a3ffc5:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x240]
  a3ffcc:	09 
  a3ffcd:	62 21 7c 48 58 fd    	vaddps zmm31,zmm0,zmm21
  a3ffd3:	62 e1 54 40 5c e8    	vsubps zmm21,zmm21,zmm0
  a3ffd9:	62 91 64 40 58 c0    	vaddps zmm0,zmm19,zmm24
  a3ffdf:	62 a1 3c 40 5c db    	vsubps zmm19,zmm24,zmm19
  a3ffe5:	62 21 2c 40 5c c4    	vsubps zmm24,zmm26,zmm20
  a3ffeb:	62 81 5c 40 58 e2    	vaddps zmm20,zmm20,zmm26
  a3fff1:	62 01 0c 48 58 d7    	vaddps zmm26,zmm14,zmm31
  a3fff7:	62 11 0c 48 5c ff    	vsubps zmm15,zmm14,zmm31
  a3fffd:	62 01 44 40 58 f9    	vaddps zmm31,zmm23,zmm25
  a40003:	62 81 44 40 5c f9    	vsubps zmm23,zmm23,zmm25
  a40009:	62 61 54 48 58 ce    	vaddps zmm25,zmm5,zmm6
  a4000f:	62 f1 54 48 5c ee    	vsubps zmm5,zmm5,zmm6
  a40015:	62 d1 24 48 58 f4    	vaddps zmm6,zmm11,zmm12
  a4001b:	62 51 24 48 5c dc    	vsubps zmm11,zmm11,zmm12
  a40021:	62 71 14 48 58 e2    	vaddps zmm12,zmm13,zmm2
  a40027:	62 f1 14 48 5c d2    	vsubps zmm2,zmm13,zmm2
  a4002d:	62 51 3c 48 58 ea    	vaddps zmm13,zmm8,zmm10
  a40033:	62 51 3c 48 5c c2    	vsubps zmm8,zmm8,zmm10
  a40039:	62 31 1c 40 58 d1    	vaddps zmm10,zmm28,zmm17
  a4003f:	62 b1 1c 40 5c f9    	vsubps zmm7,zmm28,zmm17
  a40045:	62 01 4c 40 58 e5    	vaddps zmm28,zmm22,zmm29
  a4004b:	62 a1 14 40 5c f6    	vsubps zmm22,zmm29,zmm22
  a40051:	62 41 54 48 58 eb    	vaddps zmm29,zmm5,zmm11
  a40057:	62 f1 24 48 5c ed    	vsubps zmm5,zmm11,zmm5
  a4005d:	62 51 6c 48 5c d8    	vsubps zmm11,zmm2,zmm8
  a40063:	62 f1 3c 48 58 d2    	vaddps zmm2,zmm8,zmm2
  a40069:	62 72 7d 48 18 05 29 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff635329]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a40070:	53 63 ff 
  a40073:	62 d1 7c 48 59 c0    	vmulps zmm0,zmm0,zmm8
  a40079:	62 41 3c 40 59 c0    	vmulps zmm24,zmm24,zmm8
  a4007f:	62 c1 64 40 59 d8    	vmulps zmm19,zmm19,zmm8
  a40085:	62 c1 5c 40 59 e0    	vmulps zmm20,zmm20,zmm8
  a4008b:	62 41 14 40 59 e8    	vmulps zmm29,zmm29,zmm8
  a40091:	62 51 24 48 59 d8    	vmulps zmm11,zmm11,zmm8
  a40097:	62 d1 54 48 59 e8    	vmulps zmm5,zmm5,zmm8
  a4009d:	62 d1 6c 48 59 d0    	vmulps zmm2,zmm2,zmm8
  a400a3:	62 31 7c 40 58 c2    	vaddps zmm8,zmm16,zmm18
  a400a9:	62 a1 7c 40 5c c2    	vsubps zmm16,zmm16,zmm18
  a400af:	62 a1 64 40 5c d4    	vsubps zmm18,zmm19,zmm20
  a400b5:	62 a1 64 40 58 dc    	vaddps zmm19,zmm19,zmm20
  a400bb:	62 81 54 40 58 e6    	vaddps zmm20,zmm21,zmm30
  a400c1:	62 a1 0c 40 5c ed    	vsubps zmm21,zmm30,zmm21
  a400c7:	62 01 7c 48 58 f0    	vaddps zmm30,zmm0,zmm24
  a400cd:	62 f1 3c 40 5c c8    	vsubps zmm1,zmm24,zmm0
  a400d3:	62 01 2c 40 58 c4    	vaddps zmm24,zmm26,zmm28
  a400d9:	62 91 2c 40 5c c4    	vsubps zmm0,zmm26,zmm28
  a400df:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm0
  a400e6:	02 
  a400e7:	62 41 4c 48 58 e4    	vaddps zmm28,zmm6,zmm12
  a400ed:	62 d1 4c 48 5c c4    	vsubps zmm0,zmm6,zmm12
  a400f3:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a400fa:	01 
  a400fb:	62 91 2c 48 58 f7    	vaddps zmm6,zmm10,zmm31
  a40101:	62 91 2c 48 5c c7    	vsubps zmm0,zmm10,zmm31
  a40107:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  a4010e:	04 
  a4010f:	62 51 34 40 58 d5    	vaddps zmm10,zmm25,zmm13
  a40115:	62 91 14 48 5c c1    	vsubps zmm0,zmm13,zmm25
  a4011b:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm0
  a40122:	03 
  a40123:	62 01 3c 48 58 ce    	vaddps zmm25,zmm8,zmm30
  a40129:	62 01 3c 48 5c fe    	vsubps zmm31,zmm8,zmm30
  a4012f:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x440]
  a40136:	11 
  a40137:	62 11 7c 48 58 c3    	vaddps zmm8,zmm0,zmm27
  a4013d:	62 01 7c 48 5c f3    	vsubps zmm30,zmm0,zmm27
  a40143:	62 31 5c 40 58 ca    	vaddps zmm9,zmm20,zmm18
  a40149:	62 21 5c 40 5c da    	vsubps zmm27,zmm20,zmm18
  a4014f:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x4c0]
  a40156:	13 
  a40157:	62 71 7c 48 28 64 24 	vmovaps zmm12,ZMMWORD PTR [rsp+0x400]
  a4015e:	10 
  a4015f:	62 c1 7c 48 58 d4    	vaddps zmm18,zmm0,zmm12
  a40165:	62 61 1c 48 5c d0    	vsubps zmm26,zmm12,zmm0
  a4016b:	62 a1 04 48 58 e7    	vaddps zmm20,zmm15,zmm23
  a40171:	62 a1 04 48 5c cf    	vsubps zmm17,zmm15,zmm23
  a40177:	62 e1 54 48 5c fa    	vsubps zmm23,zmm5,zmm2
  a4017d:	62 71 54 48 58 fa    	vaddps zmm15,zmm5,zmm2
  a40183:	62 f1 4c 40 58 ef    	vaddps zmm5,zmm22,zmm7
  a40189:	62 a1 44 48 5c f6    	vsubps zmm22,zmm7,zmm22
  a4018f:	62 d1 14 40 58 c3    	vaddps zmm0,zmm29,zmm11
  a40195:	62 11 24 48 5c f5    	vsubps zmm14,zmm11,zmm29
  a4019b:	62 31 7c 40 58 db    	vaddps zmm11,zmm16,zmm19
  a401a1:	62 31 7c 40 5c eb    	vsubps zmm13,zmm16,zmm19
  a401a7:	62 e1 5c 48 58 db    	vaddps zmm19,zmm4,zmm3
  a401ad:	62 71 5c 48 5c e3    	vsubps zmm12,zmm4,zmm3
  a401b3:	62 f1 54 40 58 d9    	vaddps zmm3,zmm21,zmm1
  a401b9:	62 f1 54 40 5c f9    	vsubps zmm7,zmm21,zmm1
  a401bf:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x3c0]
  a401c6:	0f 
  a401c7:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x380]
  a401ce:	0e 
  a401cf:	62 e1 74 48 5c ea    	vsubps zmm21,zmm1,zmm2
  a401d5:	62 f1 74 48 58 d2    	vaddps zmm2,zmm1,zmm2
  a401db:	62 d1 3c 40 58 ca    	vaddps zmm1,zmm24,zmm10
  a401e1:	62 41 3c 40 5c c2    	vsubps zmm24,zmm24,zmm10
  a401e7:	62 91 4c 48 58 e4    	vaddps zmm4,zmm6,zmm28
  a401ed:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm4
  a401f4:	09 
  a401f5:	62 01 4c 48 5c ec    	vsubps zmm29,zmm6,zmm28
  a401fb:	62 21 34 40 58 e2    	vaddps zmm28,zmm25,zmm18
  a40201:	62 31 34 40 5c d2    	vsubps zmm10,zmm25,zmm18
  a40207:	62 d1 34 48 58 e0    	vaddps zmm4,zmm9,zmm8
  a4020d:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm4
  a40214:	05 
  a40215:	62 d1 34 48 5c e0    	vsubps zmm4,zmm9,zmm8
  a4021b:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm4
  a40222:	07 
  a40223:	62 f1 5c 40 58 e0    	vaddps zmm4,zmm20,zmm0
  a40229:	62 71 5c 40 5c c8    	vsubps zmm9,zmm20,zmm0
  a4022f:	62 a1 54 48 58 c7    	vaddps zmm16,zmm5,zmm23
  a40235:	62 a1 54 48 5c d7    	vsubps zmm18,zmm5,zmm23
  a4023b:	62 b1 24 48 58 c5    	vaddps zmm0,zmm11,zmm21
  a40241:	62 31 24 48 5c c5    	vsubps zmm8,zmm11,zmm21
  a40247:	62 31 64 48 58 db    	vaddps zmm11,zmm3,zmm19
  a4024d:	62 b1 64 48 5c db    	vsubps zmm3,zmm3,zmm19
  a40253:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm3
  a4025a:	06 
  a4025b:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x80]
  a40262:	02 
  a40263:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x40]
  a4026a:	01 
  a4026b:	62 f1 64 48 58 f5    	vaddps zmm6,zmm3,zmm5
  a40271:	62 f1 64 48 5c dd    	vsubps zmm3,zmm3,zmm5
  a40277:	62 e1 7c 48 28 5c 24 	vmovaps zmm19,ZMMWORD PTR [rsp+0x100]
  a4027e:	04 
  a4027f:	62 e1 7c 48 28 64 24 	vmovaps zmm20,ZMMWORD PTR [rsp+0xc0]
  a40286:	03 
  a40287:	62 b1 5c 40 58 eb    	vaddps zmm5,zmm20,zmm19
  a4028d:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm5
  a40294:	08 
  a40295:	62 b1 64 40 5c ec    	vsubps zmm5,zmm19,zmm20
  a4029b:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm5
  a402a2:	04 
  a402a3:	62 01 04 40 58 ce    	vaddps zmm25,zmm31,zmm30
  a402a9:	62 01 04 40 5c f6    	vsubps zmm30,zmm31,zmm30
  a402af:	62 91 24 40 58 ea    	vaddps zmm5,zmm27,zmm26
  a402b5:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm5
  a402bc:	01 
  a402bd:	62 81 24 40 5c ea    	vsubps zmm21,zmm27,zmm26
  a402c3:	62 41 74 40 58 df    	vaddps zmm27,zmm17,zmm15
  a402c9:	62 51 74 40 5c ff    	vsubps zmm15,zmm17,zmm15
  a402cf:	62 c1 4c 40 58 e6    	vaddps zmm20,zmm22,zmm14
  a402d5:	62 c1 4c 40 5c f6    	vsubps zmm22,zmm22,zmm14
  a402db:	62 c1 14 48 58 cc    	vaddps zmm17,zmm13,zmm12
  a402e1:	62 51 14 48 5c e4    	vsubps zmm12,zmm13,zmm12
  a402e7:	62 71 44 48 5c ea    	vsubps zmm13,zmm7,zmm2
  a402ed:	62 f1 44 48 58 d2    	vaddps zmm2,zmm7,zmm2
  a402f3:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm2
  a402fa:	02 
  a402fb:	62 71 7c 48 28 35 7b 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff686c7b]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a40302:	6c 68 ff 
  a40305:	62 61 7c 48 28 d1    	vmovaps zmm26,zmm1
  a4030b:	62 02 0d 48 7f d0    	vpermt2ps zmm26,zmm14,zmm24
  a40311:	62 e1 7c 48 28 3d a5 	vmovaps zmm23,ZMMWORD PTR [rip+0xffffffffff686ca5]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a40318:	6c 68 ff 
  a4031b:	62 92 45 40 7f c8    	vpermt2ps zmm1,zmm23,zmm24
  a40321:	62 91 7c 48 28 d4    	vmovaps zmm2,zmm28
  a40327:	62 d2 0d 48 7f d2    	vpermt2ps zmm2,zmm14,zmm10
  a4032d:	62 42 45 40 7f e2    	vpermt2ps zmm28,zmm23,zmm10
  a40333:	62 71 7c 48 28 d4    	vmovaps zmm10,zmm4
  a40339:	62 52 0d 48 7f d1    	vpermt2ps zmm10,zmm14,zmm9
  a4033f:	62 d2 45 40 7f e1    	vpermt2ps zmm4,zmm23,zmm9
  a40345:	62 f1 7c 48 28 e8    	vmovaps zmm5,zmm0
  a4034b:	62 d2 0d 48 7f e8    	vpermt2ps zmm5,zmm14,zmm8
  a40351:	62 d2 45 40 7f c0    	vpermt2ps zmm0,zmm23,zmm8
  a40357:	62 71 7c 48 28 c6    	vmovaps zmm8,zmm6
  a4035d:	62 72 0d 48 7f c3    	vpermt2ps zmm8,zmm14,zmm3
  a40363:	62 f2 45 40 7f f3    	vpermt2ps zmm6,zmm23,zmm3
  a40369:	62 91 7c 48 28 d9    	vmovaps zmm3,zmm25
  a4036f:	62 92 0d 48 7f de    	vpermt2ps zmm3,zmm14,zmm30
  a40375:	62 02 45 40 7f ce    	vpermt2ps zmm25,zmm23,zmm30
  a4037b:	62 11 7c 48 28 cb    	vmovaps zmm9,zmm27
  a40381:	62 52 0d 48 7f cf    	vpermt2ps zmm9,zmm14,zmm15
  a40387:	62 42 45 40 7f df    	vpermt2ps zmm27,zmm23,zmm15
  a4038d:	62 21 7c 48 28 f1    	vmovaps zmm30,zmm17
  a40393:	62 42 0d 48 7f f4    	vpermt2ps zmm30,zmm14,zmm12
  a40399:	62 c2 45 40 7f cc    	vpermt2ps zmm17,zmm23,zmm12
  a4039f:	62 71 7c 48 28 3d 57 	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff686b57]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a403a6:	6b 68 ff 
  a403a9:	62 11 7c 48 28 e2    	vmovaps zmm12,zmm26
  a403af:	62 52 05 48 7f e0    	vpermt2ps zmm12,zmm15,zmm8
  a403b5:	62 61 7c 48 28 05 81 	vmovaps zmm24,ZMMWORD PTR [rip+0xffffffffff686b81]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a403bc:	6b 68 ff 
  a403bf:	62 42 3d 40 7f d0    	vpermt2ps zmm26,zmm24,zmm8
  a403c5:	62 71 7c 48 28 c2    	vmovaps zmm8,zmm2
  a403cb:	62 72 05 48 7f c3    	vpermt2ps zmm8,zmm15,zmm3
  a403d1:	62 f2 3d 40 7f d3    	vpermt2ps zmm2,zmm24,zmm3
  a403d7:	62 d1 7c 48 28 da    	vmovaps zmm3,zmm10
  a403dd:	62 d2 05 48 7f d9    	vpermt2ps zmm3,zmm15,zmm9
  a403e3:	62 52 3d 40 7f d1    	vpermt2ps zmm10,zmm24,zmm9
  a403e9:	62 71 7c 48 28 cd    	vmovaps zmm9,zmm5
  a403ef:	62 12 05 48 7f ce    	vpermt2ps zmm9,zmm15,zmm30
  a403f5:	62 92 3d 40 7f ee    	vpermt2ps zmm5,zmm24,zmm30
  a403fb:	62 f2 05 48 7f ce    	vpermt2ps zmm1,zmm15,zmm6
  a40401:	62 02 05 48 7f e1    	vpermt2ps zmm28,zmm15,zmm25
  a40407:	62 92 05 48 7f e3    	vpermt2ps zmm4,zmm15,zmm27
  a4040d:	62 f1 f5 48 14 cc    	vunpcklpd zmm1,zmm1,zmm4
  a40413:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm1
  a4041a:	03 
  a4041b:	62 b2 05 48 7f c1    	vpermt2ps zmm0,zmm15,zmm17
  a40421:	62 61 9d 40 14 e0    	vunpcklpd zmm28,zmm28,zmm0
  a40427:	62 f1 9d 48 14 fb    	vunpcklpd zmm7,zmm12,zmm3
  a4042d:	62 e1 9d 48 15 db    	vunpckhpd zmm19,zmm12,zmm3
  a40433:	62 51 bd 48 14 e1    	vunpcklpd zmm12,zmm8,zmm9
  a40439:	62 41 bd 48 15 f9    	vunpckhpd zmm31,zmm8,zmm9
  a4043f:	62 51 ad 40 14 ca    	vunpcklpd zmm9,zmm26,zmm10
  a40445:	62 d1 ad 40 15 f2    	vunpckhpd zmm6,zmm26,zmm10
  a4044b:	62 61 ed 48 14 d5    	vunpcklpd zmm26,zmm2,zmm5
  a40451:	62 61 ed 48 15 cd    	vunpckhpd zmm25,zmm2,zmm5
  a40457:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x240]
  a4045e:	09 
  a4045f:	62 61 7c 48 28 d8    	vmovaps zmm27,zmm0
  a40465:	62 02 0d 48 7f dd    	vpermt2ps zmm27,zmm14,zmm29
  a4046b:	62 92 45 40 7f c5    	vpermt2ps zmm0,zmm23,zmm29
  a40471:	62 71 7c 48 28 d0    	vmovaps zmm10,zmm0
  a40477:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x140]
  a4047e:	05 
  a4047f:	62 61 7c 48 28 e8    	vmovaps zmm29,zmm0
  a40485:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x1c0]
  a4048c:	07 
  a4048d:	62 62 0d 48 7f e9    	vpermt2ps zmm29,zmm14,zmm1
  a40493:	62 f2 45 40 7f c1    	vpermt2ps zmm0,zmm23,zmm1
  a40499:	62 f1 7c 48 28 c8    	vmovaps zmm1,zmm0
  a4049f:	62 21 7c 48 28 f0    	vmovaps zmm30,zmm16
  a404a5:	62 22 0d 48 7f f2    	vpermt2ps zmm30,zmm14,zmm18
  a404ab:	62 a2 45 40 7f c2    	vpermt2ps zmm16,zmm23,zmm18
  a404b1:	62 c1 7c 48 28 d3    	vmovaps zmm18,zmm11
  a404b7:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x180]
  a404be:	06 
  a404bf:	62 e2 0d 48 7f d0    	vpermt2ps zmm18,zmm14,zmm0
  a404c5:	62 72 45 40 7f d8    	vpermt2ps zmm11,zmm23,zmm0
  a404cb:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x200]
  a404d2:	08 
  a404d3:	62 f1 7c 48 28 d4    	vmovaps zmm2,zmm4
  a404d9:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x100]
  a404e0:	04 
  a404e1:	62 f2 0d 48 7f d3    	vpermt2ps zmm2,zmm14,zmm3
  a404e7:	62 f2 45 40 7f e3    	vpermt2ps zmm4,zmm23,zmm3
  a404ed:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x40]
  a404f4:	01 
  a404f5:	62 f1 7c 48 28 eb    	vmovaps zmm5,zmm3
  a404fb:	62 b2 0d 48 7f ed    	vpermt2ps zmm5,zmm14,zmm21
  a40501:	62 b2 45 40 7f dd    	vpermt2ps zmm3,zmm23,zmm21
  a40507:	62 31 7c 48 28 c4    	vmovaps zmm8,zmm20
  a4050d:	62 32 0d 48 7f c6    	vpermt2ps zmm8,zmm14,zmm22
  a40513:	62 a2 45 40 7f e6    	vpermt2ps zmm20,zmm23,zmm22
  a40519:	62 e1 7c 48 28 0d dd 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff6868dd]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a40520:	68 68 ff 
  a40523:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x80]
  a4052a:	02 
  a4052b:	62 72 15 48 77 f0    	vpermi2ps zmm14,zmm13,zmm0
  a40531:	62 72 45 40 7f e8    	vpermt2ps zmm13,zmm23,zmm0
  a40537:	62 f1 7c 48 28 c7    	vmovaps zmm0,zmm7
  a4053d:	62 d2 75 40 7f c4    	vpermt2ps zmm0,zmm17,zmm12
  a40543:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm0
  a4054a:	02 
  a4054b:	62 e1 7c 48 28 2d eb 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff6868eb]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a40552:	68 68 ff 
  a40555:	62 d2 55 40 7f fc    	vpermt2ps zmm7,zmm21,zmm12
  a4055b:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm7
  a40562:	01 
  a40563:	62 a1 7c 48 28 f3    	vmovaps zmm22,zmm19
  a40569:	62 82 75 40 7f f7    	vpermt2ps zmm22,zmm17,zmm31
  a4056f:	62 82 55 40 7f df    	vpermt2ps zmm19,zmm21,zmm31
  a40575:	62 21 7c 48 28 fb    	vmovaps zmm31,zmm19
  a4057b:	62 c1 7c 48 28 d9    	vmovaps zmm19,zmm9
  a40581:	62 82 75 40 7f da    	vpermt2ps zmm19,zmm17,zmm26
  a40587:	62 12 55 40 7f ca    	vpermt2ps zmm9,zmm21,zmm26
  a4058d:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm9
  a40594:	05 
  a40595:	62 61 7c 48 28 d6    	vmovaps zmm26,zmm6
  a4059b:	62 02 75 40 7f d1    	vpermt2ps zmm26,zmm17,zmm25
  a405a1:	62 92 55 40 7f f1    	vpermt2ps zmm6,zmm21,zmm25
  a405a7:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0xc0]
  a405ae:	03 
  a405af:	62 61 7c 48 28 c8    	vmovaps zmm25,zmm0
  a405b5:	62 02 75 40 7f cc    	vpermt2ps zmm25,zmm17,zmm28
  a405bb:	62 92 55 40 7f c4    	vpermt2ps zmm0,zmm21,zmm28
  a405c1:	62 91 7c 48 28 fb    	vmovaps zmm7,zmm27
  a405c7:	62 f2 05 48 7f fa    	vpermt2ps zmm7,zmm15,zmm2
  a405cd:	62 62 3d 40 7f da    	vpermt2ps zmm27,zmm24,zmm2
  a405d3:	62 91 7c 48 28 d5    	vmovaps zmm2,zmm29
  a405d9:	62 f2 05 48 7f d5    	vpermt2ps zmm2,zmm15,zmm5
  a405df:	62 62 3d 40 7f ed    	vpermt2ps zmm29,zmm24,zmm5
  a405e5:	62 91 7c 48 28 ee    	vmovaps zmm5,zmm30
  a405eb:	62 d2 05 48 7f e8    	vpermt2ps zmm5,zmm15,zmm8
  a405f1:	62 42 3d 40 7f f0    	vpermt2ps zmm30,zmm24,zmm8
  a405f7:	62 31 7c 48 28 c2    	vmovaps zmm8,zmm18
  a405fd:	62 c2 3d 40 7f d6    	vpermt2ps zmm18,zmm24,zmm14
  a40603:	62 52 05 48 7f c6    	vpermt2ps zmm8,zmm15,zmm14
  a40609:	62 72 05 48 7f d4    	vpermt2ps zmm10,zmm15,zmm4
  a4060f:	62 f2 05 48 7f cb    	vpermt2ps zmm1,zmm15,zmm3
  a40615:	62 a2 05 48 7f c4    	vpermt2ps zmm16,zmm15,zmm20
  a4061b:	62 31 ad 48 14 e0    	vunpcklpd zmm12,zmm10,zmm16
  a40621:	62 52 05 48 7f dd    	vpermt2ps zmm11,zmm15,zmm13
  a40627:	62 51 f5 48 14 cb    	vunpcklpd zmm9,zmm1,zmm11
  a4062d:	62 71 c5 48 14 dd    	vunpcklpd zmm11,zmm7,zmm5
  a40633:	62 e1 c5 48 15 c5    	vunpckhpd zmm16,zmm7,zmm5
  a40639:	62 d1 ed 48 14 e8    	vunpcklpd zmm5,zmm2,zmm8
  a4063f:	62 d1 ed 48 15 f8    	vunpckhpd zmm7,zmm2,zmm8
  a40645:	62 11 a5 40 14 c6    	vunpcklpd zmm8,zmm27,zmm30
  a4064b:	62 81 a5 40 15 e6    	vunpckhpd zmm20,zmm27,zmm30
  a40651:	62 31 95 40 14 d2    	vunpcklpd zmm10,zmm29,zmm18
  a40657:	62 31 95 40 15 ea    	vunpckhpd zmm13,zmm29,zmm18
  a4065d:	62 d1 7c 48 28 d3    	vmovaps zmm2,zmm11
  a40663:	62 f2 75 40 7f d5    	vpermt2ps zmm2,zmm17,zmm5
  a40669:	62 72 55 40 7f dd    	vpermt2ps zmm11,zmm21,zmm5
  a4066f:	62 b1 7c 48 28 e8    	vmovaps zmm5,zmm16
  a40675:	62 f2 75 40 7f ef    	vpermt2ps zmm5,zmm17,zmm7
  a4067b:	62 e2 55 40 7f c7    	vpermt2ps zmm16,zmm21,zmm7
  a40681:	62 d1 7c 48 28 f8    	vmovaps zmm7,zmm8
  a40687:	62 d2 75 40 7f fa    	vpermt2ps zmm7,zmm17,zmm10
  a4068d:	62 52 55 40 7f c2    	vpermt2ps zmm8,zmm21,zmm10
  a40693:	62 31 7c 48 28 f4    	vmovaps zmm14,zmm20
  a40699:	62 52 75 40 7f f5    	vpermt2ps zmm14,zmm17,zmm13
  a4069f:	62 c2 55 40 7f e5    	vpermt2ps zmm20,zmm21,zmm13
  a406a5:	62 c2 1d 48 77 c9    	vpermi2ps zmm17,zmm12,zmm9
  a406ab:	62 52 55 40 7f e1    	vpermt2ps zmm12,zmm21,zmm9
  a406b1:	62 e1 7c 48 10 7a 02 	vmovups zmm23,ZMMWORD PTR [rdx+0x80]
  a406b8:	62 e1 7c 48 10 6a 03 	vmovups zmm21,ZMMWORD PTR [rdx+0xc0]
  a406bf:	62 71 7c 48 10 4a 04 	vmovups zmm9,ZMMWORD PTR [rdx+0x100]
  a406c6:	62 61 7c 48 10 62 05 	vmovups zmm28,ZMMWORD PTR [rdx+0x140]
  a406cd:	62 51 4c 40 59 d1    	vmulps zmm10,zmm22,zmm9
  a406d3:	62 12 55 48 bc d4    	vfnmadd231ps zmm10,zmm5,zmm28
  a406d9:	62 61 7c 48 10 6a 11 	vmovups zmm29,ZMMWORD PTR [rdx+0x440]
  a406e0:	62 71 7c 48 10 6a 09 	vmovups zmm13,ZMMWORD PTR [rdx+0x240]
  a406e7:	62 e1 7c 48 10 52 08 	vmovups zmm18,ZMMWORD PTR [rdx+0x200]
  a406ee:	62 31 64 40 59 fa    	vmulps zmm15,zmm19,zmm18
  a406f4:	62 52 45 48 bc fd    	vfnmadd231ps zmm15,zmm7,zmm13
  a406fa:	62 a1 44 48 59 d2    	vmulps zmm18,zmm7,zmm18
  a40700:	62 f1 7c 48 10 7a 0d 	vmovups zmm7,ZMMWORD PTR [rdx+0x340]
  a40707:	62 a2 15 48 b8 d3    	vfmadd231ps zmm18,zmm13,zmm19
  a4070d:	62 71 7c 48 10 6a 0c 	vmovups zmm13,ZMMWORD PTR [rdx+0x300]
  a40714:	62 41 2c 40 59 c5    	vmulps zmm24,zmm26,zmm13
  a4071a:	62 62 0d 48 bc c7    	vfnmadd231ps zmm24,zmm14,zmm7
  a40720:	62 c1 0c 48 59 dd    	vmulps zmm19,zmm14,zmm13
  a40726:	62 61 7c 48 10 72 10 	vmovups zmm30,ZMMWORD PTR [rdx+0x400]
  a4072d:	62 82 45 48 b8 da    	vfmadd231ps zmm19,zmm7,zmm26
  a40733:	62 01 34 40 59 d6    	vmulps zmm26,zmm25,zmm30
  a40739:	62 02 75 40 bc d5    	vfnmadd231ps zmm26,zmm17,zmm29
  a4073f:	62 11 2c 48 5c ea    	vsubps zmm13,zmm10,zmm26
  a40745:	62 41 54 48 59 d9    	vmulps zmm27,zmm5,zmm9
  a4074b:	62 11 04 48 5c f0    	vsubps zmm14,zmm15,zmm24
  a40751:	62 22 1d 40 b8 de    	vfmadd231ps zmm27,zmm28,zmm22
  a40757:	62 72 7d 48 18 0d f7 	vbroadcastss zmm9,DWORD PTR [rip+0xffffffffff634ff7]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a4075e:	4f 63 ff 
  a40761:	62 d1 0c 48 59 f9    	vmulps zmm7,zmm14,zmm9
  a40767:	62 81 74 40 59 ce    	vmulps zmm17,zmm17,zmm30
  a4076d:	62 82 15 40 b8 c9    	vfmadd231ps zmm17,zmm29,zmm25
  a40773:	62 f1 7c 48 10 6a 0f 	vmovups zmm5,ZMMWORD PTR [rdx+0x3c0]
  a4077a:	62 61 7c 48 10 4a 0e 	vmovups zmm25,ZMMWORD PTR [rdx+0x380]
  a40781:	62 81 5c 40 59 f1    	vmulps zmm22,zmm20,zmm25
  a40787:	62 e2 4d 48 b8 f5    	vfmadd231ps zmm22,zmm6,zmm5
  a4078d:	62 01 4c 48 59 e1    	vmulps zmm28,zmm6,zmm25
  a40793:	62 f1 7c 48 10 72 07 	vmovups zmm6,ZMMWORD PTR [rdx+0x1c0]
  a4079a:	62 22 55 48 bc e4    	vfnmadd231ps zmm28,zmm5,zmm20
  a407a0:	62 f1 7c 48 10 6a 06 	vmovups zmm5,ZMMWORD PTR [rdx+0x180]
  a407a7:	62 61 7c 40 59 cd    	vmulps zmm25,zmm16,zmm5
  a407ad:	62 62 05 40 b8 ce    	vfmadd231ps zmm25,zmm31,zmm6
  a407b3:	62 61 04 40 59 f5    	vmulps zmm30,zmm31,zmm5
  a407b9:	62 f1 7c 48 10 5a 13 	vmovups zmm3,ZMMWORD PTR [rdx+0x4c0]
  a407c0:	62 22 4d 48 bc f0    	vfnmadd231ps zmm30,zmm6,zmm16
  a407c6:	62 f1 7c 48 10 6a 12 	vmovups zmm5,ZMMWORD PTR [rdx+0x480]
  a407cd:	62 61 1c 48 59 ed    	vmulps zmm29,zmm12,zmm5
  a407d3:	62 62 7d 48 b8 eb    	vfmadd231ps zmm29,zmm0,zmm3
  a407d9:	62 61 7c 48 59 fd    	vmulps zmm31,zmm0,zmm5
  a407df:	62 f2 7d 48 18 2d b7 	vbroadcastss zmm5,DWORD PTR [rip+0xffffffffff634bb7]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a407e6:	4b 63 ff 
  a407e9:	62 f2 15 48 b8 fd    	vfmadd231ps zmm7,zmm13,zmm5
  a407ef:	62 42 65 48 bc fc    	vfnmadd231ps zmm31,zmm3,zmm12
  a407f5:	62 b1 6c 40 58 e3    	vaddps zmm4,zmm18,zmm19
  a407fb:	62 b1 24 48 59 c7    	vmulps zmm0,zmm11,zmm23
  a40801:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x40]
  a40808:	01 
  a40809:	62 b2 75 48 b8 c5    	vfmadd231ps zmm0,zmm1,zmm21
  a4080f:	62 31 74 48 59 e7    	vmulps zmm12,zmm1,zmm23
  a40815:	62 e1 7c 48 10 42 0b 	vmovups zmm16,ZMMWORD PTR [rdx+0x2c0]
  a4081c:	62 52 55 40 bc e3    	vfnmadd231ps zmm12,zmm21,zmm11
  a40822:	62 f1 7c 48 10 4a 0a 	vmovups zmm1,ZMMWORD PTR [rdx+0x280]
  a40829:	62 f1 3c 48 59 d9    	vmulps zmm3,zmm8,zmm1
  a4082f:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x140]
  a40836:	05 
  a40837:	62 b2 4d 48 b8 d8    	vfmadd231ps zmm3,zmm6,zmm16
  a4083d:	62 f1 4c 48 59 c9    	vmulps zmm1,zmm6,zmm1
  a40843:	62 b1 24 40 58 f1    	vaddps zmm6,zmm27,zmm17
  a40849:	62 d2 7d 40 bc c8    	vfnmadd231ps zmm1,zmm16,zmm8
  a4084f:	62 e2 7d 48 18 3d 8f 	vbroadcastss zmm23,DWORD PTR [rip+0xffffffffff634e8f]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a40856:	4e 63 ff 
  a40859:	62 a1 7c 48 28 e7    	vmovaps zmm20,zmm23
  a4085f:	62 e2 4d 48 a8 e2    	vfmadd213ps zmm20,zmm6,zmm2
  a40865:	62 11 04 48 58 c0    	vaddps zmm8,zmm15,zmm24
  a4086b:	62 e2 7d 48 18 2d cf 	vbroadcastss zmm21,DWORD PTR [rip+0xffffffffff634dcf]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a40872:	4d 63 ff 
  a40875:	62 a2 5d 48 bc e5    	vfnmadd231ps zmm20,zmm4,zmm21
  a4087b:	62 11 2c 48 58 d2    	vaddps zmm10,zmm10,zmm26
  a40881:	62 61 14 40 58 c0    	vaddps zmm24,zmm29,zmm0
  a40887:	62 21 24 40 5c d1    	vsubps zmm26,zmm27,zmm17
  a4088d:	62 81 4c 40 58 c1    	vaddps zmm16,zmm22,zmm25
  a40893:	62 21 6c 40 5c db    	vsubps zmm27,zmm18,zmm19
  a40899:	62 51 04 40 5c dc    	vsubps zmm11,zmm31,zmm12
  a4089f:	62 51 04 40 58 e4    	vaddps zmm12,zmm31,zmm12
  a408a5:	62 01 1c 40 5c fe    	vsubps zmm31,zmm28,zmm30
  a408ab:	62 11 1c 40 58 fe    	vaddps zmm15,zmm28,zmm30
  a408b1:	62 a1 7c 48 28 cf    	vmovaps zmm17,zmm23
  a408b7:	62 e2 7d 40 a8 cb    	vfmadd213ps zmm17,zmm16,zmm3
  a408bd:	62 a2 3d 40 bc cd    	vfnmadd231ps zmm17,zmm24,zmm21
  a408c3:	62 81 4c 40 5c f1    	vsubps zmm22,zmm22,zmm25
  a408c9:	62 c1 24 48 59 d1    	vmulps zmm18,zmm11,zmm9
  a408cf:	62 e2 05 40 b8 d5    	vfmadd231ps zmm18,zmm31,zmm5
  a408d5:	62 f1 14 40 5c c0    	vsubps zmm0,zmm29,zmm0
  a408db:	62 a1 7c 48 28 df    	vmovaps zmm19,zmm23
  a408e1:	62 61 7c 48 28 64 24 	vmovaps zmm28,ZMMWORD PTR [rsp+0x80]
  a408e8:	02 
  a408e9:	62 82 2d 48 a8 dc    	vfmadd213ps zmm19,zmm10,zmm28
  a408ef:	62 a2 3d 48 bc dd    	vfnmadd231ps zmm19,zmm8,zmm21
  a408f5:	62 41 14 48 59 c9    	vmulps zmm25,zmm13,zmm9
  a408fb:	62 42 55 48 bc ce    	vfnmadd231ps zmm25,zmm5,zmm14
  a40901:	62 51 24 40 59 e9    	vmulps zmm13,zmm27,zmm9
  a40907:	62 72 2d 40 b8 ed    	vfmadd231ps zmm13,zmm26,zmm5
  a4090d:	62 51 04 40 59 f1    	vmulps zmm14,zmm31,zmm9
  a40913:	62 52 55 48 bc f3    	vfnmadd231ps zmm14,zmm5,zmm11
  a40919:	62 31 7c 48 28 df    	vmovaps zmm11,zmm23
  a4091f:	62 72 05 48 a8 d9    	vfmadd213ps zmm11,zmm15,zmm1
  a40925:	62 32 1d 48 bc dd    	vfnmadd231ps zmm11,zmm12,zmm21
  a4092b:	62 41 2c 40 59 d1    	vmulps zmm26,zmm26,zmm9
  a40931:	62 02 55 48 bc d3    	vfnmadd231ps zmm26,zmm5,zmm27
  a40937:	62 41 7c 48 59 d9    	vmulps zmm27,zmm0,zmm9
  a4093d:	62 62 4d 40 b8 dd    	vfmadd231ps zmm27,zmm22,zmm5
  a40943:	62 51 4c 40 59 c9    	vmulps zmm9,zmm22,zmm9
  a40949:	62 a1 7c 48 28 f5    	vmovaps zmm22,zmm21
  a4094f:	62 e2 4d 48 ac f2    	vfnmadd213ps zmm22,zmm6,zmm2
  a40955:	62 a2 5d 48 b8 f7    	vfmadd231ps zmm22,zmm4,zmm23
  a4095b:	62 72 7d 48 bc cd    	vfnmadd231ps zmm9,zmm0,zmm5
  a40961:	62 b1 7c 48 28 c5    	vmovaps zmm0,zmm21
  a40967:	62 f2 7d 40 ac c3    	vfnmadd213ps zmm0,zmm16,zmm3
  a4096d:	62 b2 3d 40 b8 c7    	vfmadd231ps zmm0,zmm24,zmm23
  a40973:	62 b1 7c 48 28 ed    	vmovaps zmm5,zmm21
  a40979:	62 01 7c 48 28 fc    	vmovaps zmm31,zmm28
  a4097f:	62 92 2d 48 ac ec    	vfnmadd213ps zmm5,zmm10,zmm28
  a40985:	62 b2 3d 48 b8 ef    	vfmadd231ps zmm5,zmm8,zmm23
  a4098b:	62 e2 05 48 ac e9    	vfnmadd213ps zmm21,zmm15,zmm1
  a40991:	62 a2 1d 48 b8 ef    	vfmadd231ps zmm21,zmm12,zmm23
  a40997:	62 a1 34 40 58 fe    	vaddps zmm23,zmm25,zmm22
  a4099d:	62 81 4c 40 5c f1    	vsubps zmm22,zmm22,zmm25
  a409a3:	62 41 7c 48 58 ce    	vaddps zmm25,zmm0,zmm14
  a409a9:	62 51 7c 48 5c f6    	vsubps zmm14,zmm0,zmm14
  a409af:	62 01 54 48 5c e2    	vsubps zmm28,zmm5,zmm26
  a409b5:	62 01 54 48 58 d2    	vaddps zmm26,zmm5,zmm26
  a409bb:	62 41 54 40 5c e9    	vsubps zmm29,zmm21,zmm9
  a409c1:	62 c1 54 40 58 e9    	vaddps zmm21,zmm21,zmm9
  a409c7:	62 31 44 48 58 cc    	vaddps zmm9,zmm7,zmm20
  a409cd:	62 f1 5c 40 5c ff    	vsubps zmm7,zmm20,zmm7
  a409d3:	62 a1 74 40 58 e2    	vaddps zmm20,zmm17,zmm18
  a409d9:	62 a1 74 40 5c ca    	vsubps zmm17,zmm17,zmm18
  a409df:	62 c1 64 40 5c d5    	vsubps zmm18,zmm19,zmm13
  a409e5:	62 51 64 40 58 ed    	vaddps zmm13,zmm19,zmm13
  a409eb:	62 81 24 48 5c db    	vsubps zmm19,zmm11,zmm27
  a409f1:	62 01 24 48 58 db    	vaddps zmm27,zmm11,zmm27
  a409f7:	62 f1 4c 48 58 c2    	vaddps zmm0,zmm6,zmm2
  a409fd:	62 61 5c 48 58 f0    	vaddps zmm30,zmm4,zmm0
  a40a03:	62 b1 64 48 58 c0    	vaddps zmm0,zmm3,zmm16
  a40a09:	62 81 7c 48 58 c0    	vaddps zmm16,zmm0,zmm24
  a40a0f:	62 d1 04 40 58 c2    	vaddps zmm0,zmm31,zmm10
  a40a15:	62 41 7c 48 58 c0    	vaddps zmm24,zmm0,zmm8
  a40a1b:	62 b1 34 48 5c c4    	vsubps zmm0,zmm9,zmm20
  a40a21:	62 d1 74 48 58 cf    	vaddps zmm1,zmm1,zmm15
  a40a27:	62 b1 6c 40 5c eb    	vsubps zmm5,zmm18,zmm19
  a40a2d:	62 51 74 48 58 e4    	vaddps zmm12,zmm1,zmm12
  a40a33:	62 91 44 40 58 c9    	vaddps zmm1,zmm23,zmm25
  a40a39:	62 b1 34 48 58 dc    	vaddps zmm3,zmm9,zmm20
  a40a3f:	62 11 1c 40 58 d5    	vaddps zmm10,zmm28,zmm29
  a40a45:	62 31 6c 40 58 fb    	vaddps zmm15,zmm18,zmm19
  a40a4b:	62 d1 4c 40 5c d6    	vsubps zmm2,zmm22,zmm14
  a40a51:	62 91 44 40 5c f1    	vsubps zmm6,zmm23,zmm25
  a40a57:	62 a1 2c 40 5c d5    	vsubps zmm18,zmm26,zmm21
  a40a5d:	62 81 1c 40 5c dd    	vsubps zmm19,zmm28,zmm29
  a40a63:	62 b1 44 48 58 e1    	vaddps zmm4,zmm7,zmm17
  a40a69:	62 51 4c 40 58 ce    	vaddps zmm9,zmm22,zmm14
  a40a6f:	62 11 14 48 58 f3    	vaddps zmm14,zmm13,zmm27
  a40a75:	62 a1 2c 40 58 e5    	vaddps zmm20,zmm26,zmm21
  a40a7b:	62 31 0c 40 5c c0    	vsubps zmm8,zmm30,zmm16
  a40a81:	62 31 44 48 5c d9    	vsubps zmm11,zmm7,zmm17
  a40a87:	62 c1 3c 40 5c cc    	vsubps zmm17,zmm24,zmm12
  a40a8d:	62 11 14 48 5c eb    	vsubps zmm13,zmm13,zmm27
  a40a93:	62 a1 0c 40 58 c0    	vaddps zmm16,zmm30,zmm16
  a40a99:	62 51 3c 40 58 e4    	vaddps zmm12,zmm24,zmm12
  a40a9f:	62 f1 7c 48 28 3d 17 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff651117]        # 91bc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f070>
  a40aa6:	11 65 ff 
  a40aa9:	62 a1 7c 48 28 e8    	vmovaps zmm21,zmm16
  a40aaf:	62 c2 45 48 7f ec    	vpermt2ps zmm21,zmm7,zmm12
  a40ab5:	62 e1 7c 48 28 35 41 	vmovaps zmm22,ZMMWORD PTR [rip+0xffffffffff651141]        # 91c00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f0b0>
  a40abc:	11 65 ff 
  a40abf:	62 c2 4d 40 7f c4    	vpermt2ps zmm16,zmm22,zmm12
  a40ac5:	62 51 7c 48 28 e3    	vmovaps zmm12,zmm11
  a40acb:	62 52 45 48 7f e5    	vpermt2ps zmm12,zmm7,zmm13
  a40ad1:	62 52 4d 40 7f dd    	vpermt2ps zmm11,zmm22,zmm13
  a40ad7:	62 51 7c 48 28 e9    	vmovaps zmm13,zmm9
  a40add:	62 32 45 48 7f ec    	vpermt2ps zmm13,zmm7,zmm20
  a40ae3:	62 32 4d 40 7f cc    	vpermt2ps zmm9,zmm22,zmm20
  a40ae9:	62 e1 7c 48 28 e6    	vmovaps zmm20,zmm6
  a40aef:	62 a2 45 48 7f e3    	vpermt2ps zmm20,zmm7,zmm19
  a40af5:	62 b2 4d 40 7f f3    	vpermt2ps zmm6,zmm22,zmm19
  a40afb:	62 e1 7c 48 28 db    	vmovaps zmm19,zmm3
  a40b01:	62 c2 45 48 7f df    	vpermt2ps zmm19,zmm7,zmm15
  a40b07:	62 d2 4d 40 7f df    	vpermt2ps zmm3,zmm22,zmm15
  a40b0d:	62 51 7c 48 28 f8    	vmovaps zmm15,zmm8
  a40b13:	62 32 45 48 7f f9    	vpermt2ps zmm15,zmm7,zmm17
  a40b19:	62 32 4d 40 7f c1    	vpermt2ps zmm8,zmm22,zmm17
  a40b1f:	62 e1 7c 48 28 cc    	vmovaps zmm17,zmm4
  a40b25:	62 c2 45 48 7f ce    	vpermt2ps zmm17,zmm7,zmm14
  a40b2b:	62 d2 4d 40 7f e6    	vpermt2ps zmm4,zmm22,zmm14
  a40b31:	62 71 7c 48 28 f2    	vmovaps zmm14,zmm2
  a40b37:	62 32 45 48 7f f2    	vpermt2ps zmm14,zmm7,zmm18
  a40b3d:	62 b2 4d 40 7f d2    	vpermt2ps zmm2,zmm22,zmm18
  a40b43:	62 e1 7c 48 28 d1    	vmovaps zmm18,zmm1
  a40b49:	62 c2 45 48 7f d2    	vpermt2ps zmm18,zmm7,zmm10
  a40b4f:	62 d2 4d 40 7f ca    	vpermt2ps zmm1,zmm22,zmm10
  a40b55:	62 f2 7d 48 77 fd    	vpermi2ps zmm7,zmm0,zmm5
  a40b5b:	62 f2 4d 40 7f c5    	vpermt2ps zmm0,zmm22,zmm5
  a40b61:	62 e1 7c 48 11 06    	vmovups ZMMWORD PTR [rsi],zmm16
  a40b67:	62 e1 7c 48 11 6e 01 	vmovups ZMMWORD PTR [rsi+0x40],zmm21
  a40b6e:	62 71 7c 48 11 5e 02 	vmovups ZMMWORD PTR [rsi+0x80],zmm11
  a40b75:	62 71 7c 48 11 66 03 	vmovups ZMMWORD PTR [rsi+0xc0],zmm12
  a40b7c:	62 71 7c 48 11 4e 04 	vmovups ZMMWORD PTR [rsi+0x100],zmm9
  a40b83:	62 71 7c 48 11 6e 05 	vmovups ZMMWORD PTR [rsi+0x140],zmm13
  a40b8a:	62 f1 7c 48 11 76 06 	vmovups ZMMWORD PTR [rsi+0x180],zmm6
  a40b91:	62 e1 7c 48 11 66 07 	vmovups ZMMWORD PTR [rsi+0x1c0],zmm20
  a40b98:	62 f1 7c 48 11 5e 08 	vmovups ZMMWORD PTR [rsi+0x200],zmm3
  a40b9f:	62 e1 7c 48 11 5e 09 	vmovups ZMMWORD PTR [rsi+0x240],zmm19
  a40ba6:	62 71 7c 48 11 46 0a 	vmovups ZMMWORD PTR [rsi+0x280],zmm8
  a40bad:	62 71 7c 48 11 7e 0b 	vmovups ZMMWORD PTR [rsi+0x2c0],zmm15
  a40bb4:	62 f1 7c 48 11 66 0c 	vmovups ZMMWORD PTR [rsi+0x300],zmm4
  a40bbb:	62 e1 7c 48 11 4e 0d 	vmovups ZMMWORD PTR [rsi+0x340],zmm17
  a40bc2:	62 f1 7c 48 11 56 0e 	vmovups ZMMWORD PTR [rsi+0x380],zmm2
  a40bc9:	62 71 7c 48 11 76 0f 	vmovups ZMMWORD PTR [rsi+0x3c0],zmm14
  a40bd0:	62 f1 7c 48 11 4e 10 	vmovups ZMMWORD PTR [rsi+0x400],zmm1
  a40bd7:	62 e1 7c 48 11 56 11 	vmovups ZMMWORD PTR [rsi+0x440],zmm18
  a40bde:	62 f1 7c 48 11 46 12 	vmovups ZMMWORD PTR [rsi+0x480],zmm0
  a40be5:	62 f1 7c 48 11 7e 13 	vmovups ZMMWORD PTR [rsi+0x4c0],zmm7
  a40bec:	48 89 ec             	mov    rsp,rbp
  a40bef:	5d                   	pop    rbp
  a40bf0:	c5 f8 77             	vzeroupper
  a40bf3:	c3                   	ret
