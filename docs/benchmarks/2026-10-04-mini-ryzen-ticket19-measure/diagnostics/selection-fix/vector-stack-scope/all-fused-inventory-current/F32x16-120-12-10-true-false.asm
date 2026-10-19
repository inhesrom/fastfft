
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a53bc0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a53bc0:	55                   	push   rbp
  a53bc1:	48 89 e5             	mov    rbp,rsp
  a53bc4:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a53bc8:	48 81 ec 40 03 00 00 	sub    rsp,0x340
  a53bcf:	c6 84 24 c0 02 00 00 	mov    BYTE PTR [rsp+0x2c0],0x0
  a53bd6:	00 
  a53bd7:	48 8d 84 24 c0 02 00 	lea    rax,[rsp+0x2c0]
  a53bde:	00 
  a53bdf:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  a53be4:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  a53be9:	62 f1 7c 48 10 1f    	vmovups zmm3,ZMMWORD PTR [rdi]
  a53bef:	c5 f8 10 4f 40       	vmovups xmm1,XMMWORD PTR [rdi+0x40]
  a53bf4:	62 f1 7c 48 28 35 82 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff63f082]        # 92c80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20130>
  a53bfb:	f0 63 ff 
  a53bfe:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a53c04:	62 f2 4d 48 7f c1    	vpermt2ps zmm0,zmm6,zmm1
  a53c0a:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm0
  a53c11:	02 
  a53c12:	62 f1 7c 48 28 15 a4 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff63f0a4]        # 92cc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20170>
  a53c19:	f0 63 ff 
  a53c1c:	62 f2 6d 48 7f d9    	vpermt2ps zmm3,zmm2,zmm1
  a53c22:	62 71 7c 48 10 87 50 	vmovups zmm8,ZMMWORD PTR [rdi+0x50]
  a53c29:	00 00 00 
  a53c2c:	c5 f8 10 a7 90 00 00 	vmovups xmm4,XMMWORD PTR [rdi+0x90]
  a53c33:	00 
  a53c34:	62 d1 7c 48 28 c8    	vmovaps zmm1,zmm8
  a53c3a:	62 f2 4d 48 7f cc    	vpermt2ps zmm1,zmm6,zmm4
  a53c40:	62 72 6d 48 7f c4    	vpermt2ps zmm8,zmm2,zmm4
  a53c46:	62 71 7c 48 10 8f a0 	vmovups zmm9,ZMMWORD PTR [rdi+0xa0]
  a53c4d:	00 00 00 
  a53c50:	c5 f8 10 a7 e0 00 00 	vmovups xmm4,XMMWORD PTR [rdi+0xe0]
  a53c57:	00 
  a53c58:	62 c1 7c 48 28 e1    	vmovaps zmm20,zmm9
  a53c5e:	62 e2 4d 48 7f e4    	vpermt2ps zmm20,zmm6,zmm4
  a53c64:	62 72 6d 48 7f cc    	vpermt2ps zmm9,zmm2,zmm4
  a53c6a:	62 f1 7c 48 10 a7 f0 	vmovups zmm4,ZMMWORD PTR [rdi+0xf0]
  a53c71:	00 00 00 
  a53c74:	c5 f8 10 bf 30 01 00 	vmovups xmm7,XMMWORD PTR [rdi+0x130]
  a53c7b:	00 
  a53c7c:	62 71 7c 48 28 d4    	vmovaps zmm10,zmm4
  a53c82:	62 72 4d 48 7f d7    	vpermt2ps zmm10,zmm6,zmm7
  a53c88:	62 f2 6d 48 7f e7    	vpermt2ps zmm4,zmm2,zmm7
  a53c8e:	62 71 7c 48 10 77 05 	vmovups zmm14,ZMMWORD PTR [rdi+0x140]
  a53c95:	c5 f8 10 bf 80 01 00 	vmovups xmm7,XMMWORD PTR [rdi+0x180]
  a53c9c:	00 
  a53c9d:	62 51 7c 48 28 e6    	vmovaps zmm12,zmm14
  a53ca3:	62 72 4d 48 7f e7    	vpermt2ps zmm12,zmm6,zmm7
  a53ca9:	62 72 6d 48 7f f7    	vpermt2ps zmm14,zmm2,zmm7
  a53caf:	62 71 7c 48 10 9f 90 	vmovups zmm11,ZMMWORD PTR [rdi+0x190]
  a53cb6:	01 00 00 
  a53cb9:	c5 f8 10 bf d0 01 00 	vmovups xmm7,XMMWORD PTR [rdi+0x1d0]
  a53cc0:	00 
  a53cc1:	62 c1 7c 48 28 cb    	vmovaps zmm17,zmm11
  a53cc7:	62 e2 4d 48 7f cf    	vpermt2ps zmm17,zmm6,zmm7
  a53ccd:	62 72 6d 48 7f df    	vpermt2ps zmm11,zmm2,zmm7
  a53cd3:	62 e1 7c 48 10 97 e0 	vmovups zmm18,ZMMWORD PTR [rdi+0x1e0]
  a53cda:	01 00 00 
  a53cdd:	c5 f8 10 bf 20 02 00 	vmovups xmm7,XMMWORD PTR [rdi+0x220]
  a53ce4:	00 
  a53ce5:	62 31 7c 48 28 ea    	vmovaps zmm13,zmm18
  a53ceb:	62 72 4d 48 7f ef    	vpermt2ps zmm13,zmm6,zmm7
  a53cf1:	62 e2 6d 48 7f d7    	vpermt2ps zmm18,zmm2,zmm7
  a53cf7:	62 71 7c 48 10 bf 30 	vmovups zmm15,ZMMWORD PTR [rdi+0x230]
  a53cfe:	02 00 00 
  a53d01:	c5 f8 10 bf 70 02 00 	vmovups xmm7,XMMWORD PTR [rdi+0x270]
  a53d08:	00 
  a53d09:	62 c1 7c 48 28 f7    	vmovaps zmm22,zmm15
  a53d0f:	62 e2 4d 48 7f f7    	vpermt2ps zmm22,zmm6,zmm7
  a53d15:	62 72 6d 48 7f ff    	vpermt2ps zmm15,zmm2,zmm7
  a53d1b:	62 e1 7c 48 10 7f 0a 	vmovups zmm23,ZMMWORD PTR [rdi+0x280]
  a53d22:	c5 f8 10 bf c0 02 00 	vmovups xmm7,XMMWORD PTR [rdi+0x2c0]
  a53d29:	00 
  a53d2a:	62 a1 7c 48 28 df    	vmovaps zmm19,zmm23
  a53d30:	62 e2 4d 48 7f df    	vpermt2ps zmm19,zmm6,zmm7
  a53d36:	62 e2 6d 48 7f ff    	vpermt2ps zmm23,zmm2,zmm7
  a53d3c:	62 e1 7c 48 10 87 d0 	vmovups zmm16,ZMMWORD PTR [rdi+0x2d0]
  a53d43:	02 00 00 
  a53d46:	c5 f8 10 bf 10 03 00 	vmovups xmm7,XMMWORD PTR [rdi+0x310]
  a53d4d:	00 
  a53d4e:	62 21 7c 48 28 c8    	vmovaps zmm25,zmm16
  a53d54:	62 62 4d 48 7f cf    	vpermt2ps zmm25,zmm6,zmm7
  a53d5a:	62 e2 6d 48 7f c7    	vpermt2ps zmm16,zmm2,zmm7
  a53d60:	62 61 7c 48 10 87 20 	vmovups zmm24,ZMMWORD PTR [rdi+0x320]
  a53d67:	03 00 00 
  a53d6a:	c5 f8 10 bf 60 03 00 	vmovups xmm7,XMMWORD PTR [rdi+0x360]
  a53d71:	00 
  a53d72:	62 01 7c 48 28 d0    	vmovaps zmm26,zmm24
  a53d78:	62 62 4d 48 7f d7    	vpermt2ps zmm26,zmm6,zmm7
  a53d7e:	62 62 6d 48 7f c7    	vpermt2ps zmm24,zmm2,zmm7
  a53d84:	62 61 7c 48 10 9f 70 	vmovups zmm27,ZMMWORD PTR [rdi+0x370]
  a53d8b:	03 00 00 
  a53d8e:	c5 f8 10 bf b0 03 00 	vmovups xmm7,XMMWORD PTR [rdi+0x3b0]
  a53d95:	00 
  a53d96:	62 f2 25 40 77 f7    	vpermi2ps zmm6,zmm27,zmm7
  a53d9c:	62 62 6d 48 7f df    	vpermt2ps zmm27,zmm2,zmm7
  a53da2:	62 b1 64 48 58 c2    	vaddps zmm0,zmm3,zmm18
  a53da8:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a53daf:	01 
  a53db0:	62 a1 5c 48 58 e8    	vaddps zmm21,zmm4,zmm16
  a53db6:	62 b1 7c 48 58 c5    	vaddps zmm0,zmm0,zmm21
  a53dbc:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm0
  a53dc3:	09 
  a53dc4:	62 01 0c 48 58 e0    	vaddps zmm28,zmm14,zmm24
  a53dca:	62 41 04 48 58 e8    	vaddps zmm29,zmm15,zmm8
  a53dd0:	62 91 1c 40 58 c5    	vaddps zmm0,zmm28,zmm29
  a53dd6:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm0
  a53ddd:	07 
  a53dde:	62 41 44 40 58 f1    	vaddps zmm30,zmm23,zmm9
  a53de4:	62 41 24 40 58 fb    	vaddps zmm31,zmm27,zmm11
  a53dea:	62 91 0c 48 5c c0    	vsubps zmm0,zmm14,zmm24
  a53df0:	62 f1 4c 40 58 f9    	vaddps zmm7,zmm22,zmm1
  a53df6:	62 e1 4c 40 5c f1    	vsubps zmm22,zmm22,zmm1
  a53dfc:	62 91 0c 40 58 cf    	vaddps zmm1,zmm30,zmm31
  a53e02:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm1
  a53e09:	03 
  a53e0a:	62 c1 44 40 5c f9    	vsubps zmm23,zmm23,zmm9
  a53e10:	62 b1 4c 48 58 e9    	vaddps zmm5,zmm6,zmm17
  a53e16:	62 21 4c 48 5c c1    	vsubps zmm24,zmm6,zmm17
  a53e1c:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x80]
  a53e23:	02 
  a53e24:	62 c1 34 48 58 cd    	vaddps zmm17,zmm9,zmm13
  a53e2a:	62 a1 64 48 5c d2    	vsubps zmm18,zmm3,zmm18
  a53e30:	62 91 2c 48 58 d1    	vaddps zmm2,zmm10,zmm25
  a53e36:	62 01 2c 48 5c c9    	vsubps zmm25,zmm10,zmm25
  a53e3c:	62 11 1c 48 58 d2    	vaddps zmm10,zmm12,zmm26
  a53e42:	62 11 1c 48 5c f2    	vsubps zmm14,zmm12,zmm26
  a53e48:	62 21 64 40 58 d4    	vaddps zmm26,zmm19,zmm20
  a53e4e:	62 51 3c 48 5c e7    	vsubps zmm12,zmm8,zmm15
  a53e54:	62 d1 1c 48 58 de    	vaddps zmm3,zmm12,zmm14
  a53e5a:	62 31 64 40 5c c4    	vsubps zmm8,zmm19,zmm20
  a53e60:	62 11 24 48 5c db    	vsubps zmm11,zmm11,zmm27
  a53e66:	62 d1 24 48 58 f0    	vaddps zmm6,zmm11,zmm8
  a53e6c:	62 71 64 48 5c fe    	vsubps zmm15,zmm3,zmm6
  a53e72:	62 71 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm15
  a53e79:	05 
  a53e7a:	62 f1 64 48 58 de    	vaddps zmm3,zmm3,zmm6
  a53e80:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm3
  a53e87:	04 
  a53e88:	62 b1 7c 48 58 de    	vaddps zmm3,zmm0,zmm22
  a53e8e:	62 51 34 48 5c ed    	vsubps zmm13,zmm9,zmm13
  a53e94:	62 91 44 40 58 f0    	vaddps zmm6,zmm23,zmm24
  a53e9a:	62 f1 7c 40 5c e4    	vsubps zmm4,zmm16,zmm4
  a53ea0:	62 71 64 48 58 ce    	vaddps zmm9,zmm3,zmm6
  a53ea6:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm9
  a53ead:	06 
  a53eae:	62 f1 64 48 5c de    	vsubps zmm3,zmm3,zmm6
  a53eb4:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm3
  a53ebb:	02 
  a53ebc:	62 61 7c 48 28 5c 24 	vmovaps zmm27,ZMMWORD PTR [rsp+0x1c0]
  a53ec3:	07 
  a53ec4:	62 f1 24 40 58 f1    	vaddps zmm6,zmm27,zmm1
  a53eca:	62 91 1c 40 5c dd    	vsubps zmm3,zmm28,zmm29
  a53ed0:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x240]
  a53ed7:	09 
  a53ed8:	62 e1 74 48 58 de    	vaddps zmm19,zmm1,zmm6
  a53ede:	62 81 0c 40 5c c7    	vsubps zmm16,zmm30,zmm31
  a53ee4:	62 61 74 40 58 ea    	vaddps zmm29,zmm17,zmm2
  a53eea:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x40]
  a53ef1:	01 
  a53ef2:	62 21 34 48 5c fd    	vsubps zmm31,zmm9,zmm21
  a53ef8:	62 61 2c 48 58 f7    	vaddps zmm30,zmm10,zmm7
  a53efe:	62 f1 2c 48 5c ff    	vsubps zmm7,zmm10,zmm7
  a53f04:	62 71 2c 40 58 d5    	vaddps zmm10,zmm26,zmm5
  a53f0a:	62 f1 2c 40 5c ed    	vsubps zmm5,zmm26,zmm5
  a53f10:	62 71 44 48 5c cd    	vsubps zmm9,zmm7,zmm5
  a53f16:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm9
  a53f1d:	01 
  a53f1e:	62 61 44 48 58 d5    	vaddps zmm26,zmm7,zmm5
  a53f24:	62 51 0c 40 58 fa    	vaddps zmm15,zmm30,zmm10
  a53f2a:	62 e1 74 40 5c ca    	vsubps zmm17,zmm17,zmm2
  a53f30:	62 a1 64 48 58 e8    	vaddps zmm21,zmm3,zmm16
  a53f36:	62 b1 64 48 5c d0    	vsubps zmm2,zmm3,zmm16
  a53f3c:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm2
  a53f43:	08 
  a53f44:	62 01 6c 40 58 e1    	vaddps zmm28,zmm18,zmm25
  a53f4a:	62 91 6c 40 5c d1    	vsubps zmm2,zmm18,zmm25
  a53f50:	62 e2 7d 48 18 05 06 	vbroadcastss zmm16,DWORD PTR [rip+0xffffffffff621506]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a53f57:	15 62 ff 
  a53f5a:	62 a1 7c 48 5c f6    	vsubps zmm22,zmm0,zmm22
  a53f60:	62 d1 14 40 58 c7    	vaddps zmm0,zmm29,zmm15
  a53f66:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm0
  a53f6d:	0a 
  a53f6e:	62 81 44 40 5c f8    	vsubps zmm23,zmm23,zmm24
  a53f74:	62 c1 5c 48 58 e5    	vaddps zmm20,zmm4,zmm13
  a53f7a:	62 f1 14 48 5c fc    	vsubps zmm7,zmm13,zmm4
  a53f80:	62 31 7c 48 28 e8    	vmovaps zmm13,zmm16
  a53f86:	62 c1 0c 48 5c d4    	vsubps zmm18,zmm14,zmm12
  a53f8c:	62 31 7c 48 28 f0    	vmovaps zmm14,zmm16
  a53f92:	62 d1 3c 48 5c eb    	vsubps zmm5,zmm8,zmm11
  a53f98:	62 b1 7c 48 28 e0    	vmovaps zmm4,zmm16
  a53f9e:	62 f2 7d 40 ac f1    	vfnmadd213ps zmm6,zmm16,zmm1
  a53fa4:	62 31 4c 40 58 e7    	vaddps zmm12,zmm22,zmm23
  a53faa:	62 12 7d 40 ac fd    	vfnmadd213ps zmm15,zmm16,zmm29
  a53fb0:	62 51 6c 48 58 cc    	vaddps zmm9,zmm2,zmm12
  a53fb6:	62 72 7d 40 ac e2    	vfnmadd213ps zmm12,zmm16,zmm2
  a53fbc:	62 21 7c 48 28 e8    	vmovaps zmm29,zmm16
  a53fc2:	62 f1 6c 40 58 d5    	vaddps zmm2,zmm18,zmm5
  a53fc8:	62 e2 6d 48 ac c7    	vfnmadd213ps zmm16,zmm2,zmm7
  a53fce:	62 f1 44 48 58 fa    	vaddps zmm7,zmm7,zmm2
  a53fd4:	62 61 7c 48 28 4c 24 	vmovaps zmm25,ZMMWORD PTR [rsp+0x180]
  a53fdb:	06 
  a53fdc:	62 12 35 40 ac ec    	vfnmadd213ps zmm13,zmm25,zmm28
  a53fe2:	62 51 0c 40 5c da    	vsubps zmm11,zmm30,zmm10
  a53fe8:	62 f2 7d 48 18 05 e2 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff6212e2]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a53fef:	12 62 ff 
  a53ff2:	62 71 7c 48 59 44 24 	vmulps zmm8,zmm0,ZMMWORD PTR [rsp+0x140]
  a53ff9:	05 
  a53ffa:	62 f1 24 40 5c 5c 24 	vsubps zmm3,zmm27,ZMMWORD PTR [rsp+0xc0]
  a54001:	03 
  a54002:	62 d1 3c 48 58 d5    	vaddps zmm2,zmm8,zmm13
  a54008:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x100]
  a5400f:	04 
  a54010:	62 32 75 48 ac f4    	vfnmadd213ps zmm14,zmm1,zmm20
  a54016:	62 71 7c 48 59 54 24 	vmulps zmm10,zmm0,ZMMWORD PTR [rsp+0x80]
  a5401d:	02 
  a5401e:	62 41 14 48 5c f0    	vsubps zmm30,zmm13,zmm8
  a54024:	62 51 0c 48 5c c2    	vsubps zmm8,zmm14,zmm10
  a5402a:	62 92 55 40 ac e7    	vfnmadd213ps zmm4,zmm21,zmm31
  a54030:	62 71 7c 48 59 6c 24 	vmulps zmm13,zmm0,ZMMWORD PTR [rsp+0x40]
  a54037:	01 
  a54038:	62 51 0c 48 58 d2    	vaddps zmm10,zmm14,zmm10
  a5403e:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm10
  a54045:	02 
  a54046:	62 41 5c 48 5c c5    	vsubps zmm24,zmm4,zmm13
  a5404c:	62 22 2d 40 ac e9    	vfnmadd213ps zmm29,zmm26,zmm17
  a54052:	62 71 7c 48 59 74 24 	vmulps zmm14,zmm0,ZMMWORD PTR [rsp+0x200]
  a54059:	08 
  a5405a:	62 21 04 40 58 fd    	vaddps zmm31,zmm31,zmm21
  a54060:	62 11 0c 48 58 d5    	vaddps zmm10,zmm14,zmm29
  a54066:	62 e1 24 48 59 e8    	vmulps zmm21,zmm11,zmm0
  a5406c:	62 11 74 40 58 da    	vaddps zmm11,zmm17,zmm26
  a54072:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm11
  a54079:	03 
  a5407a:	62 21 4c 48 58 dd    	vaddps zmm27,zmm6,zmm21
  a54080:	62 e1 64 48 59 c8    	vmulps zmm17,zmm3,zmm0
  a54086:	62 f1 6c 40 5c dd    	vsubps zmm3,zmm18,zmm5
  a5408c:	62 31 04 48 5c d9    	vsubps zmm11,zmm15,zmm17
  a54092:	62 f1 64 48 59 e8    	vmulps zmm5,zmm3,zmm0
  a54098:	62 b1 4c 40 5c df    	vsubps zmm3,zmm22,zmm23
  a5409e:	62 41 54 48 58 d4    	vaddps zmm26,zmm5,zmm12
  a540a4:	62 f1 64 48 59 c0    	vmulps zmm0,zmm3,zmm0
  a540aa:	62 f1 7c 40 5c d8    	vsubps zmm3,zmm16,zmm0
  a540b0:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm3
  a540b7:	01 
  a540b8:	62 a1 4c 48 5c ed    	vsubps zmm21,zmm6,zmm21
  a540be:	62 c1 74 40 58 ff    	vaddps zmm23,zmm17,zmm15
  a540c4:	62 81 1c 40 58 c9    	vaddps zmm17,zmm28,zmm25
  a540ca:	62 e1 5c 40 58 f1    	vaddps zmm22,zmm20,zmm1
  a540d0:	62 d1 5c 48 58 cd    	vaddps zmm1,zmm4,zmm13
  a540d6:	62 c1 14 40 5c e6    	vsubps zmm20,zmm29,zmm14
  a540dc:	62 f1 1c 48 5c ed    	vsubps zmm5,zmm12,zmm5
  a540e2:	62 f1 7c 40 58 c0    	vaddps zmm0,zmm16,zmm0
  a540e8:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm0
  a540ef:	06 
  a540f0:	62 71 7c 48 28 3d 86 	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff672e86]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a540f7:	2e 67 ff 
  a540fa:	62 b1 7c 48 28 f3    	vmovaps zmm6,zmm19
  a54100:	62 b2 05 48 7f f5    	vpermt2ps zmm6,zmm15,zmm21
  a54106:	62 e1 7c 48 28 05 b0 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff672eb0]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a5410d:	2e 67 ff 
  a54110:	62 a2 7d 40 7f dd    	vpermt2ps zmm19,zmm16,zmm21
  a54116:	62 61 7c 48 28 e2    	vmovaps zmm28,zmm2
  a5411c:	62 22 05 48 7f e1    	vpermt2ps zmm28,zmm15,zmm17
  a54122:	62 b2 7d 40 7f d1    	vpermt2ps zmm2,zmm16,zmm17
  a54128:	62 01 7c 48 28 e8    	vmovaps zmm29,zmm24
  a5412e:	62 62 05 48 7f e9    	vpermt2ps zmm29,zmm15,zmm1
  a54134:	62 62 7d 40 7f c1    	vpermt2ps zmm24,zmm16,zmm1
  a5413a:	62 d1 7c 48 28 e1    	vmovaps zmm4,zmm9
  a54140:	62 f2 05 48 7f e5    	vpermt2ps zmm4,zmm15,zmm5
  a54146:	62 72 7d 40 7f cd    	vpermt2ps zmm9,zmm16,zmm5
  a5414c:	62 a1 54 00 57 ed    	vxorps xmm21,xmm21,xmm21
  a54152:	62 91 7c 48 28 eb    	vmovaps zmm5,zmm27
  a54158:	62 b2 05 48 7f ed    	vpermt2ps zmm5,zmm15,zmm21
  a5415e:	62 11 7c 48 28 e6    	vmovaps zmm12,zmm30
  a54164:	62 32 05 48 7f e5    	vpermt2ps zmm12,zmm15,zmm21
  a5416a:	62 e1 7c 48 28 0d 8c 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff672d8c]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a54171:	2d 67 ff 
  a54174:	62 71 7c 48 28 ee    	vmovaps zmm13,zmm6
  a5417a:	62 72 75 40 7f ed    	vpermt2ps zmm13,zmm17,zmm5
  a54180:	62 f1 7c 48 28 1d b6 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff672db6]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a54187:	2d 67 ff 
  a5418a:	62 f2 65 48 7f f5    	vpermt2ps zmm6,zmm3,zmm5
  a54190:	62 91 7c 48 28 ec    	vmovaps zmm5,zmm28
  a54196:	62 d2 75 40 7f ec    	vpermt2ps zmm5,zmm17,zmm12
  a5419c:	62 42 65 48 7f e4    	vpermt2ps zmm28,zmm3,zmm12
  a541a2:	62 11 7c 48 28 e7    	vmovaps zmm12,zmm31
  a541a8:	62 32 05 48 7f e5    	vpermt2ps zmm12,zmm15,zmm21
  a541ae:	62 11 7c 48 28 f5    	vmovaps zmm14,zmm29
  a541b4:	62 52 75 40 7f f4    	vpermt2ps zmm14,zmm17,zmm12
  a541ba:	62 42 65 48 7f ec    	vpermt2ps zmm29,zmm3,zmm12
  a541c0:	62 11 7c 48 28 e2    	vmovaps zmm12,zmm26
  a541c6:	62 32 05 48 7f e5    	vpermt2ps zmm12,zmm15,zmm21
  a541cc:	62 f1 7c 48 28 c4    	vmovaps zmm0,zmm4
  a541d2:	62 d2 75 40 7f c4    	vpermt2ps zmm0,zmm17,zmm12
  a541d8:	62 d2 65 48 7f e4    	vpermt2ps zmm4,zmm3,zmm12
  a541de:	62 22 7d 40 7f dd    	vpermt2ps zmm27,zmm16,zmm21
  a541e4:	62 82 75 40 7f db    	vpermt2ps zmm19,zmm17,zmm27
  a541ea:	62 22 7d 40 7f f5    	vpermt2ps zmm30,zmm16,zmm21
  a541f0:	62 92 75 40 7f d6    	vpermt2ps zmm2,zmm17,zmm30
  a541f6:	62 22 7d 40 7f fd    	vpermt2ps zmm31,zmm16,zmm21
  a541fc:	62 22 7d 40 7f d5    	vpermt2ps zmm26,zmm16,zmm21
  a54202:	62 02 75 40 7f c7    	vpermt2ps zmm24,zmm17,zmm31
  a54208:	62 91 e5 40 14 c8    	vunpcklpd zmm1,zmm19,zmm24
  a5420e:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm1
  a54215:	05 
  a54216:	62 12 75 40 7f ca    	vpermt2ps zmm9,zmm17,zmm26
  a5421c:	62 41 ed 48 14 c9    	vunpcklpd zmm25,zmm2,zmm9
  a54222:	62 d1 95 48 14 d6    	vunpcklpd zmm2,zmm13,zmm14
  a54228:	62 c1 95 48 15 d6    	vunpckhpd zmm18,zmm13,zmm14
  a5422e:	62 71 d5 48 14 c8    	vunpcklpd zmm9,zmm5,zmm0
  a54234:	62 61 d5 48 15 f0    	vunpckhpd zmm30,zmm5,zmm0
  a5423a:	62 81 cd 48 14 dd    	vunpcklpd zmm19,zmm6,zmm29
  a54240:	62 91 cd 48 15 c5    	vunpckhpd zmm0,zmm6,zmm29
  a54246:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  a5424d:	04 
  a5424e:	62 61 9d 40 14 ec    	vunpcklpd zmm29,zmm28,zmm4
  a54254:	62 61 9d 40 15 dc    	vunpckhpd zmm27,zmm28,zmm4
  a5425a:	62 71 7c 48 28 25 9c 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff672b9c]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a54261:	2b 67 ff 
  a54264:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x280]
  a5426b:	0a 
  a5426c:	62 61 7c 48 28 c0    	vmovaps zmm24,zmm0
  a54272:	62 22 05 48 7f c7    	vpermt2ps zmm24,zmm15,zmm23
  a54278:	62 b2 7d 40 7f c7    	vpermt2ps zmm0,zmm16,zmm23
  a5427e:	62 61 7c 48 28 f8    	vmovaps zmm31,zmm0
  a54284:	62 c1 7c 48 28 f8    	vmovaps zmm23,zmm8
  a5428a:	62 a2 05 48 7f fe    	vpermt2ps zmm23,zmm15,zmm22
  a54290:	62 32 7d 40 7f c6    	vpermt2ps zmm8,zmm16,zmm22
  a54296:	62 c1 7c 48 28 f2    	vmovaps zmm22,zmm10
  a5429c:	62 a2 05 48 7f f4    	vpermt2ps zmm22,zmm15,zmm20
  a542a2:	62 32 7d 40 7f d4    	vpermt2ps zmm10,zmm16,zmm20
  a542a8:	62 61 7c 48 28 d7    	vmovaps zmm26,zmm7
  a542ae:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x180]
  a542b5:	06 
  a542b6:	62 62 05 48 7f d0    	vpermt2ps zmm26,zmm15,zmm0
  a542bc:	62 f2 7d 40 7f f8    	vpermt2ps zmm7,zmm16,zmm0
  a542c2:	62 d1 7c 48 28 e3    	vmovaps zmm4,zmm11
  a542c8:	62 b2 05 48 7f e5    	vpermt2ps zmm4,zmm15,zmm21
  a542ce:	62 32 7d 40 7f dd    	vpermt2ps zmm11,zmm16,zmm21
  a542d4:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x80]
  a542db:	02 
  a542dc:	62 71 7c 48 28 ee    	vmovaps zmm13,zmm6
  a542e2:	62 32 05 48 7f ed    	vpermt2ps zmm13,zmm15,zmm21
  a542e8:	62 b2 7d 40 7f f5    	vpermt2ps zmm6,zmm16,zmm21
  a542ee:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0xc0]
  a542f5:	03 
  a542f6:	62 71 7c 48 28 f1    	vmovaps zmm14,zmm1
  a542fc:	62 32 05 48 7f f5    	vpermt2ps zmm14,zmm15,zmm21
  a54302:	62 b2 7d 40 7f cd    	vpermt2ps zmm1,zmm16,zmm21
  a54308:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x40]
  a5430f:	01 
  a54310:	62 32 7d 48 77 fd    	vpermi2ps zmm15,zmm0,zmm21
  a54316:	62 b2 7d 40 7f c5    	vpermt2ps zmm0,zmm16,zmm21
  a5431c:	62 f1 7c 48 28 ea    	vmovaps zmm5,zmm2
  a54322:	62 d2 1d 48 7f e9    	vpermt2ps zmm5,zmm12,zmm9
  a54328:	62 61 7c 48 28 25 0e 	vmovaps zmm28,ZMMWORD PTR [rip+0xffffffffff672b0e]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a5432f:	2b 67 ff 
  a54332:	62 d2 1d 40 7f d1    	vpermt2ps zmm2,zmm28,zmm9
  a54338:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm2
  a5433f:	03 
  a54340:	62 a1 7c 48 28 e2    	vmovaps zmm20,zmm18
  a54346:	62 82 1d 48 7f e6    	vpermt2ps zmm20,zmm12,zmm30
  a5434c:	62 82 1d 40 7f d6    	vpermt2ps zmm18,zmm28,zmm30
  a54352:	62 e1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm18
  a54359:	01 
  a5435a:	62 a1 7c 48 28 d3    	vmovaps zmm18,zmm19
  a54360:	62 82 1d 48 7f d5    	vpermt2ps zmm18,zmm12,zmm29
  a54366:	62 82 1d 40 7f dd    	vpermt2ps zmm19,zmm28,zmm29
  a5436c:	62 e1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm19
  a54373:	02 
  a54374:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x100]
  a5437b:	04 
  a5437c:	62 e1 7c 48 28 c2    	vmovaps zmm16,zmm2
  a54382:	62 82 1d 48 7f c3    	vpermt2ps zmm16,zmm12,zmm27
  a54388:	62 92 1d 40 7f d3    	vpermt2ps zmm2,zmm28,zmm27
  a5438e:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm2
  a54395:	04 
  a54396:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x140]
  a5439d:	05 
  a5439e:	62 e1 7c 48 28 ea    	vmovaps zmm21,zmm2
  a543a4:	62 82 1d 48 7f e9    	vpermt2ps zmm21,zmm12,zmm25
  a543aa:	62 92 1d 40 7f d1    	vpermt2ps zmm2,zmm28,zmm25
  a543b0:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm2
  a543b7:	05 
  a543b8:	62 11 7c 48 28 c8    	vmovaps zmm9,zmm24
  a543be:	62 72 75 40 7f cc    	vpermt2ps zmm9,zmm17,zmm4
  a543c4:	62 62 65 48 7f c4    	vpermt2ps zmm24,zmm3,zmm4
  a543ca:	62 b1 7c 48 28 e7    	vmovaps zmm4,zmm23
  a543d0:	62 d2 75 40 7f e5    	vpermt2ps zmm4,zmm17,zmm13
  a543d6:	62 c2 65 48 7f fd    	vpermt2ps zmm23,zmm3,zmm13
  a543dc:	62 31 7c 48 28 ee    	vmovaps zmm13,zmm22
  a543e2:	62 52 75 40 7f ee    	vpermt2ps zmm13,zmm17,zmm14
  a543e8:	62 c2 65 48 7f f6    	vpermt2ps zmm22,zmm3,zmm14
  a543ee:	62 81 7c 48 28 da    	vmovaps zmm19,zmm26
  a543f4:	62 c2 75 40 7f df    	vpermt2ps zmm19,zmm17,zmm15
  a543fa:	62 42 65 48 7f d7    	vpermt2ps zmm26,zmm3,zmm15
  a54400:	62 42 75 40 7f fb    	vpermt2ps zmm31,zmm17,zmm11
  a54406:	62 72 75 40 7f c6    	vpermt2ps zmm8,zmm17,zmm6
  a5440c:	62 72 75 40 7f d1    	vpermt2ps zmm10,zmm17,zmm1
  a54412:	62 51 85 40 14 fa    	vunpcklpd zmm15,zmm31,zmm10
  a54418:	62 f2 75 40 7f f8    	vpermt2ps zmm7,zmm17,zmm0
  a5441e:	62 f1 bd 48 14 df    	vunpcklpd zmm3,zmm8,zmm7
  a54424:	62 51 b5 48 14 f5    	vunpcklpd zmm14,zmm9,zmm13
  a5442a:	62 c1 b5 48 15 cd    	vunpckhpd zmm17,zmm9,zmm13
  a54430:	62 b1 dd 48 14 fb    	vunpcklpd zmm7,zmm4,zmm19
  a54436:	62 b1 dd 48 15 e3    	vunpckhpd zmm4,zmm4,zmm19
  a5443c:	62 31 bd 40 14 c6    	vunpcklpd zmm8,zmm24,zmm22
  a54442:	62 a1 bd 40 15 de    	vunpckhpd zmm19,zmm24,zmm22
  a54448:	62 11 c5 40 14 ca    	vunpcklpd zmm9,zmm23,zmm26
  a5444e:	62 11 c5 40 15 da    	vunpckhpd zmm11,zmm23,zmm26
  a54454:	62 d1 7c 48 28 d6    	vmovaps zmm2,zmm14
  a5445a:	62 f2 1d 48 7f d7    	vpermt2ps zmm2,zmm12,zmm7
  a54460:	62 72 1d 40 7f f7    	vpermt2ps zmm14,zmm28,zmm7
  a54466:	62 31 7c 48 28 d1    	vmovaps zmm10,zmm17
  a5446c:	62 72 1d 48 7f d4    	vpermt2ps zmm10,zmm12,zmm4
  a54472:	62 e2 1d 40 7f cc    	vpermt2ps zmm17,zmm28,zmm4
  a54478:	62 51 7c 48 28 e8    	vmovaps zmm13,zmm8
  a5447e:	62 52 1d 48 7f e9    	vpermt2ps zmm13,zmm12,zmm9
  a54484:	62 52 1d 40 7f c1    	vpermt2ps zmm8,zmm28,zmm9
  a5448a:	62 31 7c 48 28 cb    	vmovaps zmm9,zmm19
  a54490:	62 52 1d 48 7f cb    	vpermt2ps zmm9,zmm12,zmm11
  a54496:	62 c2 1d 40 7f db    	vpermt2ps zmm19,zmm28,zmm11
  a5449c:	62 72 05 48 77 e3    	vpermi2ps zmm12,zmm15,zmm3
  a544a2:	62 72 1d 40 7f fb    	vpermt2ps zmm15,zmm28,zmm3
  a544a8:	62 e1 7c 48 10 7a 02 	vmovups zmm23,ZMMWORD PTR [rdx+0x80]
  a544af:	62 e1 7c 48 10 72 03 	vmovups zmm22,ZMMWORD PTR [rdx+0xc0]
  a544b6:	62 f1 7c 48 10 5a 04 	vmovups zmm3,ZMMWORD PTR [rdx+0x100]
  a544bd:	62 f1 7c 48 10 62 05 	vmovups zmm4,ZMMWORD PTR [rdx+0x140]
  a544c4:	62 61 7c 48 10 52 06 	vmovups zmm26,ZMMWORD PTR [rdx+0x180]
  a544cb:	62 61 7c 48 10 42 07 	vmovups zmm24,ZMMWORD PTR [rdx+0x1c0]
  a544d2:	62 61 7c 48 10 6a 08 	vmovups zmm29,ZMMWORD PTR [rdx+0x200]
  a544d9:	62 61 7c 48 10 62 09 	vmovups zmm28,ZMMWORD PTR [rdx+0x240]
  a544e0:	62 61 7c 48 10 4a 0a 	vmovups zmm25,ZMMWORD PTR [rdx+0x280]
  a544e7:	62 61 7c 48 10 5a 0b 	vmovups zmm27,ZMMWORD PTR [rdx+0x2c0]
  a544ee:	62 f1 5c 40 59 fb    	vmulps zmm7,zmm20,zmm3
  a544f4:	62 f2 2d 48 bc fc    	vfnmadd231ps zmm7,zmm10,zmm4
  a544fa:	62 61 2c 48 59 f3    	vmulps zmm30,zmm10,zmm3
  a54500:	62 f1 7c 48 10 5a 10 	vmovups zmm3,ZMMWORD PTR [rdx+0x400]
  a54507:	62 22 5d 48 b8 f4    	vfmadd231ps zmm30,zmm4,zmm20
  a5450d:	62 f1 7c 48 10 62 11 	vmovups zmm4,ZMMWORD PTR [rdx+0x440]
  a54514:	62 71 54 40 59 d3    	vmulps zmm10,zmm21,zmm3
  a5451a:	62 72 1d 48 bc d4    	vfnmadd231ps zmm10,zmm12,zmm4
  a54520:	62 e1 1c 48 59 e3    	vmulps zmm20,zmm12,zmm3
  a54526:	62 f1 7c 48 10 5a 0c 	vmovups zmm3,ZMMWORD PTR [rdx+0x300]
  a5452d:	62 a2 5d 48 b8 e5    	vfmadd231ps zmm20,zmm4,zmm21
  a54533:	62 f1 7c 48 10 62 0d 	vmovups zmm4,ZMMWORD PTR [rdx+0x340]
  a5453a:	62 11 6c 40 59 dd    	vmulps zmm11,zmm18,zmm29
  a54540:	62 12 15 48 bc dc    	vfnmadd231ps zmm11,zmm13,zmm28
  a54546:	62 01 14 48 59 fd    	vmulps zmm31,zmm13,zmm29
  a5454c:	62 e1 7c 48 10 6a 0e 	vmovups zmm21,ZMMWORD PTR [rdx+0x380]
  a54553:	62 22 1d 40 b8 fa    	vfmadd231ps zmm31,zmm28,zmm18
  a54559:	62 e1 7c 48 10 52 0f 	vmovups zmm18,ZMMWORD PTR [rdx+0x3c0]
  a54560:	62 71 7c 40 59 e3    	vmulps zmm12,zmm16,zmm3
  a54566:	62 72 35 48 bc e4    	vfnmadd231ps zmm12,zmm9,zmm4
  a5456c:	62 f1 34 48 59 cb    	vmulps zmm1,zmm9,zmm3
  a54572:	62 f1 7c 48 10 5a 12 	vmovups zmm3,ZMMWORD PTR [rdx+0x480]
  a54579:	62 b2 5d 48 b8 c8    	vfmadd231ps zmm1,zmm4,zmm16
  a5457f:	62 61 7c 48 10 62 13 	vmovups zmm28,ZMMWORD PTR [rdx+0x4c0]
  a54586:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x80]
  a5458d:	02 
  a5458e:	62 11 7c 48 59 c9    	vmulps zmm9,zmm0,zmm25
  a54594:	62 12 3d 48 bc cb    	vfnmadd231ps zmm9,zmm8,zmm27
  a5459a:	62 11 3c 48 59 c1    	vmulps zmm8,zmm8,zmm25
  a545a0:	62 41 44 48 58 ca    	vaddps zmm25,zmm7,zmm10
  a545a6:	62 72 25 40 b8 c0    	vfmadd231ps zmm8,zmm27,zmm0
  a545ac:	62 91 54 48 58 e1    	vaddps zmm4,zmm5,zmm25
  a545b2:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x100]
  a545b9:	04 
  a545ba:	62 31 4c 48 59 ed    	vmulps zmm13,zmm6,zmm21
  a545c0:	62 32 65 40 bc ea    	vfnmadd231ps zmm13,zmm19,zmm18
  a545c6:	62 b1 64 40 59 c5    	vmulps zmm0,zmm19,zmm21
  a545cc:	62 c1 24 48 58 dc    	vaddps zmm19,zmm11,zmm12
  a545d2:	62 b1 5c 48 58 e3    	vaddps zmm4,zmm4,zmm19
  a545d8:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm4
  a545df:	02 
  a545e0:	62 f2 6d 40 b8 c6    	vfmadd231ps zmm0,zmm18,zmm6
  a545e6:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x40]
  a545ed:	01 
  a545ee:	62 81 4c 48 59 c2    	vmulps zmm16,zmm6,zmm26
  a545f4:	62 82 75 40 bc c0    	vfnmadd231ps zmm16,zmm17,zmm24
  a545fa:	62 21 14 48 58 d8    	vaddps zmm27,zmm13,zmm16
  a54600:	62 01 74 40 59 d2    	vmulps zmm26,zmm17,zmm26
  a54606:	62 91 34 48 58 e3    	vaddps zmm4,zmm9,zmm27
  a5460c:	62 62 3d 40 b8 d6    	vfmadd231ps zmm26,zmm24,zmm6
  a54612:	62 61 7c 48 28 6c 24 	vmovaps zmm29,ZMMWORD PTR [rsp+0x140]
  a54619:	05 
  a5461a:	62 e1 14 40 59 cb    	vmulps zmm17,zmm29,zmm3
  a54620:	62 82 05 48 bc cc    	vfnmadd231ps zmm17,zmm15,zmm28
  a54626:	62 e1 7c 48 28 6c 24 	vmovaps zmm21,ZMMWORD PTR [rsp+0xc0]
  a5462d:	03 
  a5462e:	62 a1 54 40 59 d7    	vmulps zmm18,zmm21,zmm23
  a54634:	62 a2 0d 48 bc d6    	vfnmadd231ps zmm18,zmm14,zmm22
  a5463a:	62 61 04 48 59 c3    	vmulps zmm24,zmm15,zmm3
  a54640:	62 b1 74 40 58 f2    	vaddps zmm6,zmm17,zmm18
  a54646:	62 f1 5c 48 58 de    	vaddps zmm3,zmm4,zmm6
  a5464c:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm3
  a54653:	04 
  a54654:	62 02 1d 40 b8 c5    	vfmadd231ps zmm24,zmm28,zmm29
  a5465a:	62 21 0c 40 58 ec    	vaddps zmm29,zmm30,zmm20
  a54660:	62 f1 14 40 58 da    	vaddps zmm3,zmm29,zmm2
  a54666:	62 31 0c 48 59 f7    	vmulps zmm14,zmm14,zmm23
  a5466c:	62 f1 04 40 58 e1    	vaddps zmm4,zmm31,zmm1
  a54672:	62 f1 5c 48 58 db    	vaddps zmm3,zmm4,zmm3
  a54678:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm3
  a5467f:	05 
  a54680:	62 32 4d 40 b8 f5    	vfmadd231ps zmm14,zmm22,zmm21
  a54686:	62 01 7c 48 58 e2    	vaddps zmm28,zmm0,zmm26
  a5468c:	62 81 3c 48 58 f4    	vaddps zmm22,zmm8,zmm28
  a54692:	62 31 0c 40 5c fc    	vsubps zmm15,zmm30,zmm20
  a54698:	62 c1 3c 40 58 fe    	vaddps zmm23,zmm24,zmm14
  a5469e:	62 e1 04 40 5c e1    	vsubps zmm20,zmm31,zmm1
  a546a4:	62 f2 7d 48 18 0d 3a 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff62103a]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a546ab:	10 62 ff 
  a546ae:	62 b1 4c 40 58 df    	vaddps zmm3,zmm22,zmm23
  a546b4:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm3
  a546bb:	03 
  a546bc:	62 81 7c 48 5c f2    	vsubps zmm22,zmm0,zmm26
  a546c2:	62 61 7c 48 28 d1    	vmovaps zmm26,zmm1
  a546c8:	62 62 35 40 a8 d5    	vfmadd213ps zmm26,zmm25,zmm5
  a546ce:	62 41 3c 40 5c c6    	vsubps zmm24,zmm24,zmm14
  a546d4:	62 62 7d 48 18 35 66 	vbroadcastss zmm30,DWORD PTR [rip+0xffffffffff620f66]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a546db:	0f 62 ff 
  a546de:	62 02 65 40 bc d6    	vfnmadd231ps zmm26,zmm19,zmm30
  a546e4:	62 92 0d 40 bc e9    	vfnmadd231ps zmm5,zmm30,zmm25
  a546ea:	62 61 7c 48 28 c9    	vmovaps zmm25,zmm1
  a546f0:	62 42 25 40 a8 c9    	vfmadd213ps zmm25,zmm27,zmm9
  a546f6:	62 12 0d 40 bc cb    	vfnmadd231ps zmm9,zmm30,zmm27
  a546fc:	62 61 7c 48 28 d9    	vmovaps zmm27,zmm1
  a54702:	62 62 15 40 a8 da    	vfmadd213ps zmm27,zmm29,zmm2
  a54708:	62 92 0d 40 bc d5    	vfnmadd231ps zmm2,zmm30,zmm29
  a5470e:	62 61 7c 48 28 e9    	vmovaps zmm29,zmm1
  a54714:	62 42 1d 40 a8 e8    	vfmadd213ps zmm29,zmm28,zmm8
  a5471a:	62 12 1d 40 bc c6    	vfnmadd231ps zmm8,zmm28,zmm30
  a54720:	62 f2 7d 48 18 05 2e 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff62102e]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a54727:	10 62 ff 
  a5472a:	62 02 4d 48 bc ce    	vfnmadd231ps zmm25,zmm6,zmm30
  a54730:	62 02 5d 48 bc de    	vfnmadd231ps zmm27,zmm4,zmm30
  a54736:	62 02 45 40 bc ee    	vfnmadd231ps zmm29,zmm23,zmm30
  a5473c:	62 71 5c 40 59 f0    	vmulps zmm14,zmm20,zmm0
  a54742:	62 b2 75 48 b8 eb    	vfmadd231ps zmm5,zmm1,zmm19
  a54748:	62 62 7d 48 18 35 4e 	vbroadcastss zmm30,DWORD PTR [rip+0xffffffffff620c4e]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a5474f:	0c 62 ff 
  a54752:	62 12 05 48 b8 f6    	vfmadd231ps zmm14,zmm15,zmm30
  a54758:	62 72 75 48 b8 ce    	vfmadd231ps zmm9,zmm1,zmm6
  a5475e:	62 41 2c 40 58 e6    	vaddps zmm28,zmm26,zmm14
  a54764:	62 f2 75 48 b8 d4    	vfmadd231ps zmm2,zmm1,zmm4
  a5476a:	62 e1 3c 40 59 e8    	vmulps zmm21,zmm24,zmm0
  a54770:	62 82 4d 40 b8 ee    	vfmadd231ps zmm21,zmm22,zmm30
  a54776:	62 72 45 40 b8 c1    	vfmadd231ps zmm8,zmm23,zmm1
  a5477c:	62 a1 34 40 58 fd    	vaddps zmm23,zmm25,zmm21
  a54782:	62 21 1c 40 5c ff    	vsubps zmm31,zmm28,zmm23
  a54788:	62 61 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm31
  a5478f:	06 
  a54790:	62 d1 44 48 5c ca    	vsubps zmm1,zmm7,zmm10
  a54796:	c5 fc 28 35 a2 24 62 	vmovaps ymm6,YMMWORD PTR [rip+0xffffffffff6224a2]        # 76c40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x40f0>
  a5479d:	ff 
  a5479e:	62 51 24 48 5c d4    	vsubps zmm10,zmm11,zmm12
  a547a4:	62 71 2c 48 59 d8    	vmulps zmm11,zmm10,zmm0
  a547aa:	62 12 75 48 b8 de    	vfmadd231ps zmm11,zmm1,zmm30
  a547b0:	62 31 14 48 5c e0    	vsubps zmm12,zmm13,zmm16
  a547b6:	62 51 24 40 5c eb    	vsubps zmm13,zmm27,zmm11
  a547bc:	62 a1 74 40 5c c2    	vsubps zmm16,zmm17,zmm18
  a547c2:	62 e1 7c 40 59 d0    	vmulps zmm18,zmm16,zmm0
  a547c8:	62 82 1d 48 b8 d6    	vfmadd231ps zmm18,zmm12,zmm30
  a547ce:	62 71 04 48 59 f8    	vmulps zmm15,zmm15,zmm0
  a547d4:	62 32 0d 40 bc fc    	vfnmadd231ps zmm15,zmm30,zmm20
  a547da:	62 b1 14 40 5c da    	vsubps zmm3,zmm29,zmm18
  a547e0:	62 e1 4c 40 59 f0    	vmulps zmm22,zmm22,zmm0
  a547e6:	62 82 0d 40 bc f0    	vfnmadd231ps zmm22,zmm30,zmm24
  a547ec:	62 e1 14 48 5c db    	vsubps zmm19,zmm13,zmm3
  a547f2:	62 f1 74 48 59 c8    	vmulps zmm1,zmm1,zmm0
  a547f8:	62 d2 0d 40 bc ca    	vfnmadd231ps zmm1,zmm30,zmm10
  a547fe:	62 b1 7c 48 28 e3    	vmovaps zmm4,zmm19
  a54804:	62 92 4d 48 7f e7    	vpermt2ps zmm4,zmm6,zmm31
  a5480a:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm4
  a54811:	01 
  a54812:	62 71 1c 48 59 e0    	vmulps zmm12,zmm12,zmm0
  a54818:	62 c1 54 48 58 cf    	vaddps zmm17,zmm5,zmm15
  a5481e:	62 12 7d 40 bc e6    	vfnmadd231ps zmm12,zmm16,zmm30
  a54824:	62 b1 34 48 58 c6    	vaddps zmm0,zmm9,zmm22
  a5482a:	62 61 74 40 58 f8    	vaddps zmm31,zmm17,zmm0
  a54830:	62 d1 54 48 5c ff    	vsubps zmm7,zmm5,zmm15
  a54836:	62 71 6c 48 5c f9    	vsubps zmm15,zmm2,zmm1
  a5483c:	62 a1 34 48 5c f6    	vsubps zmm22,zmm9,zmm22
  a54842:	62 c1 3c 48 5c e4    	vsubps zmm20,zmm8,zmm12
  a54848:	62 f1 74 48 58 d2    	vaddps zmm2,zmm1,zmm2
  a5484e:	62 b1 04 48 58 e4    	vaddps zmm4,zmm15,zmm20
  a54854:	62 c1 3c 48 58 c4    	vaddps zmm16,zmm8,zmm12
  a5485a:	62 61 7c 48 28 f4    	vmovaps zmm30,zmm4
  a54860:	62 02 4d 48 7f f7    	vpermt2ps zmm30,zmm6,zmm31
  a54866:	62 41 2c 40 5c d6    	vsubps zmm26,zmm26,zmm14
  a5486c:	62 21 44 48 5c c6    	vsubps zmm24,zmm7,zmm22
  a54872:	62 a1 34 40 5c ed    	vsubps zmm21,zmm25,zmm21
  a54878:	62 31 6c 48 5c c0    	vsubps zmm8,zmm2,zmm16
  a5487e:	62 01 24 48 58 cb    	vaddps zmm25,zmm11,zmm27
  a54884:	62 51 7c 48 28 d0    	vmovaps zmm10,zmm8
  a5488a:	62 12 4d 48 7f d0    	vpermt2ps zmm10,zmm6,zmm24
  a54890:	62 21 14 40 58 da    	vaddps zmm27,zmm29,zmm18
  a54896:	62 21 2c 40 58 ed    	vaddps zmm29,zmm26,zmm21
  a5489c:	62 21 1c 40 58 e7    	vaddps zmm28,zmm28,zmm23
  a548a2:	62 11 34 40 58 e3    	vaddps zmm12,zmm25,zmm27
  a548a8:	62 71 14 48 58 db    	vaddps zmm11,zmm13,zmm3
  a548ae:	62 51 7c 48 28 ec    	vmovaps zmm13,zmm12
  a548b4:	62 12 4d 48 7f ed    	vpermt2ps zmm13,zmm6,zmm29
  a548ba:	62 e1 74 40 5c c8    	vsubps zmm17,zmm17,zmm0
  a548c0:	62 e1 7c 48 28 7c 24 	vmovaps zmm23,ZMMWORD PTR [rsp+0x80]
  a548c7:	02 
  a548c8:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x100]
  a548cf:	04 
  a548d0:	62 f1 44 40 5c d9    	vsubps zmm3,zmm23,zmm1
  a548d6:	62 31 04 48 5c f4    	vsubps zmm14,zmm15,zmm20
  a548dc:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x140]
  a548e3:	05 
  a548e4:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0xc0]
  a548eb:	03 
  a548ec:	62 71 54 48 5c f8    	vsubps zmm15,zmm5,zmm0
  a548f2:	62 31 44 48 58 ce    	vaddps zmm9,zmm7,zmm22
  a548f8:	62 c1 7c 48 28 d7    	vmovaps zmm18,zmm15
  a548fe:	62 e2 4d 48 7f d3    	vpermt2ps zmm18,zmm6,zmm3
  a54904:	62 a1 6c 48 58 c0    	vaddps zmm16,zmm2,zmm16
  a5490a:	62 c1 7c 48 28 e3    	vmovaps zmm20,zmm11
  a54910:	62 82 4d 48 7f e4    	vpermt2ps zmm20,zmm6,zmm28
  a54916:	62 b1 2c 40 5c fd    	vsubps zmm7,zmm26,zmm21
  a5491c:	62 c1 7c 48 28 f6    	vmovaps zmm22,zmm14
  a54922:	62 a2 4d 48 7f f1    	vpermt2ps zmm22,zmm6,zmm17
  a54928:	62 81 34 40 5c eb    	vsubps zmm21,zmm25,zmm27
  a5492e:	62 21 7c 48 28 d8    	vmovaps zmm27,zmm16
  a54934:	62 42 4d 48 7f d9    	vpermt2ps zmm27,zmm6,zmm9
  a5493a:	62 f1 54 48 58 e8    	vaddps zmm5,zmm5,zmm0
  a54940:	62 b1 7c 48 28 d5    	vmovaps zmm2,zmm21
  a54946:	62 f2 4d 48 7f d7    	vpermt2ps zmm2,zmm6,zmm7
  a5494c:	62 61 44 40 58 c9    	vaddps zmm25,zmm23,zmm1
  a54952:	62 92 55 48 77 f1    	vpermi2ps zmm6,zmm5,zmm25
  a54958:	62 61 7c 48 28 15 9e 	vmovaps zmm26,ZMMWORD PTR [rip+0xffffffffff63e39e]        # 92d00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x201b0>
  a5495f:	e3 63 ff 
  a54962:	62 92 2d 40 7f e9    	vpermt2ps zmm5,zmm26,zmm25
  a54968:	62 e2 2d 40 7f 5c 24 	vpermt2ps zmm19,zmm26,ZMMWORD PTR [rsp+0x180]
  a5496f:	06 
  a54970:	62 92 2d 40 7f e7    	vpermt2ps zmm4,zmm26,zmm31
  a54976:	62 12 2d 40 7f c0    	vpermt2ps zmm8,zmm26,zmm24
  a5497c:	62 12 2d 40 7f e5    	vpermt2ps zmm12,zmm26,zmm29
  a54982:	62 72 2d 40 7f fb    	vpermt2ps zmm15,zmm26,zmm3
  a54988:	62 12 2d 40 7f dc    	vpermt2ps zmm11,zmm26,zmm28
  a5498e:	62 32 2d 40 7f f1    	vpermt2ps zmm14,zmm26,zmm17
  a54994:	62 c2 2d 40 7f c1    	vpermt2ps zmm16,zmm26,zmm9
  a5499a:	62 e2 2d 40 7f ef    	vpermt2ps zmm21,zmm26,zmm7
  a549a0:	62 f1 7c 48 11 2e    	vmovups ZMMWORD PTR [rsi],zmm5
  a549a6:	c5 fc 11 76 40       	vmovups YMMWORD PTR [rsi+0x40],ymm6
  a549ab:	62 e1 7c 48 11 9e 60 	vmovups ZMMWORD PTR [rsi+0x60],zmm19
  a549b2:	00 00 00 
  a549b5:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x40]
  a549bc:	01 
  a549bd:	c5 fc 11 86 a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm0
  a549c4:	00 
  a549c5:	62 f1 7c 48 11 66 03 	vmovups ZMMWORD PTR [rsi+0xc0],zmm4
  a549cc:	62 61 7c 28 11 76 08 	vmovups YMMWORD PTR [rsi+0x100],ymm30
  a549d3:	62 71 7c 48 11 86 20 	vmovups ZMMWORD PTR [rsi+0x120],zmm8
  a549da:	01 00 00 
  a549dd:	c5 7c 11 96 60 01 00 	vmovups YMMWORD PTR [rsi+0x160],ymm10
  a549e4:	00 
  a549e5:	62 71 7c 48 11 66 06 	vmovups ZMMWORD PTR [rsi+0x180],zmm12
  a549ec:	c5 7c 11 ae c0 01 00 	vmovups YMMWORD PTR [rsi+0x1c0],ymm13
  a549f3:	00 
  a549f4:	62 71 7c 48 11 be e0 	vmovups ZMMWORD PTR [rsi+0x1e0],zmm15
  a549fb:	01 00 00 
  a549fe:	62 e1 7c 28 11 56 11 	vmovups YMMWORD PTR [rsi+0x220],ymm18
  a54a05:	62 71 7c 48 11 5e 09 	vmovups ZMMWORD PTR [rsi+0x240],zmm11
  a54a0c:	62 e1 7c 28 11 66 14 	vmovups YMMWORD PTR [rsi+0x280],ymm20
  a54a13:	62 71 7c 48 11 b6 a0 	vmovups ZMMWORD PTR [rsi+0x2a0],zmm14
  a54a1a:	02 00 00 
  a54a1d:	62 e1 7c 28 11 76 17 	vmovups YMMWORD PTR [rsi+0x2e0],ymm22
  a54a24:	62 e1 7c 48 11 46 0c 	vmovups ZMMWORD PTR [rsi+0x300],zmm16
  a54a2b:	62 61 7c 28 11 5e 1a 	vmovups YMMWORD PTR [rsi+0x340],ymm27
  a54a32:	62 e1 7c 48 11 ae 60 	vmovups ZMMWORD PTR [rsi+0x360],zmm21
  a54a39:	03 00 00 
  a54a3c:	c5 fc 11 96 a0 03 00 	vmovups YMMWORD PTR [rsi+0x3a0],ymm2
  a54a43:	00 
  a54a44:	48 89 ec             	mov    rsp,rbp
  a54a47:	5d                   	pop    rbp
  a54a48:	c5 f8 77             	vzeroupper
  a54a4b:	c3                   	ret
