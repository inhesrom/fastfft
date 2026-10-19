
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a23dc0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a23dc0:	55                   	push   rbp
  a23dc1:	48 89 e5             	mov    rbp,rsp
  a23dc4:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a23dc8:	48 81 ec c0 01 00 00 	sub    rsp,0x1c0
  a23dcf:	48 69 c2 60 03 00 00 	imul   rax,rdx,0x360
  a23dd6:	31 d2                	xor    edx,edx
  a23dd8:	4c 8d 84 24 40 01 00 	lea    r8,[rsp+0x140]
  a23ddf:	00 
  a23de0:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  a23de5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  a23dec:	00 00 00 00 
  a23df0:	c6 84 24 40 01 00 00 	mov    BYTE PTR [rsp+0x140],0x0
  a23df7:	00 
  a23df8:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  a23dfd:	62 e1 7c 48 10 2c 17 	vmovups zmm21,ZMMWORD PTR [rdi+rdx*1]
  a23e04:	c5 fb 10 5c 17 40    	vmovsd xmm3,QWORD PTR [rdi+rdx*1+0x40]
  a23e0a:	62 a1 7c 48 28 dd    	vmovaps zmm19,zmm21
  a23e10:	62 f1 7c 48 28 15 26 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff66c326]        # 90140 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d5f0>
  a23e17:	c3 66 ff 
  a23e1a:	62 e2 6d 48 7f eb    	vpermt2ps zmm21,zmm2,zmm3
  a23e20:	62 71 7c 48 10 9c 17 	vmovups zmm11,ZMMWORD PTR [rdi+rdx*1+0x48]
  a23e27:	48 00 00 00 
  a23e2b:	c5 fb 10 a4 17 88 00 	vmovsd xmm4,QWORD PTR [rdi+rdx*1+0x88]
  a23e32:	00 00 
  a23e34:	62 51 7c 48 28 e3    	vmovaps zmm12,zmm11
  a23e3a:	62 72 6d 48 7f dc    	vpermt2ps zmm11,zmm2,zmm4
  a23e40:	62 71 7c 48 10 bc 17 	vmovups zmm15,ZMMWORD PTR [rdi+rdx*1+0x90]
  a23e47:	90 00 00 00 
  a23e4b:	c5 fb 10 ac 17 d0 00 	vmovsd xmm5,QWORD PTR [rdi+rdx*1+0xd0]
  a23e52:	00 00 
  a23e54:	62 c1 7c 48 28 f7    	vmovaps zmm22,zmm15
  a23e5a:	62 72 6d 48 7f fd    	vpermt2ps zmm15,zmm2,zmm5
  a23e60:	62 e1 7c 48 10 a4 17 	vmovups zmm20,ZMMWORD PTR [rdi+rdx*1+0xd8]
  a23e67:	d8 00 00 00 
  a23e6b:	c5 fb 10 b4 17 18 01 	vmovsd xmm6,QWORD PTR [rdi+rdx*1+0x118]
  a23e72:	00 00 
  a23e74:	62 f1 7c 48 28 0d 82 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff66c282]        # 90100 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d5b0>
  a23e7b:	c2 66 ff 
  a23e7e:	62 e2 75 48 7f db    	vpermt2ps zmm19,zmm1,zmm3
  a23e84:	62 a1 7c 48 28 fc    	vmovaps zmm23,zmm20
  a23e8a:	62 e2 6d 48 7f e6    	vpermt2ps zmm20,zmm2,zmm6
  a23e90:	62 f1 7c 48 10 9c 17 	vmovups zmm3,ZMMWORD PTR [rdi+rdx*1+0x120]
  a23e97:	20 01 00 00 
  a23e9b:	62 72 75 48 7f e4    	vpermt2ps zmm12,zmm1,zmm4
  a23ea1:	c5 fb 10 a4 17 60 01 	vmovsd xmm4,QWORD PTR [rdi+rdx*1+0x160]
  a23ea8:	00 00 
  a23eaa:	62 61 7c 48 28 c3    	vmovaps zmm24,zmm3
  a23eb0:	62 f2 6d 48 7f dc    	vpermt2ps zmm3,zmm2,zmm4
  a23eb6:	62 e2 75 48 7f f5    	vpermt2ps zmm22,zmm1,zmm5
  a23ebc:	62 e1 7c 48 10 8c 17 	vmovups zmm17,ZMMWORD PTR [rdi+rdx*1+0x168]
  a23ec3:	68 01 00 00 
  a23ec7:	c5 7b 10 8c 17 a8 01 	vmovsd xmm9,QWORD PTR [rdi+rdx*1+0x1a8]
  a23ece:	00 00 
  a23ed0:	62 b1 7c 48 28 e9    	vmovaps zmm5,zmm17
  a23ed6:	62 e2 75 48 7f fe    	vpermt2ps zmm23,zmm1,zmm6
  a23edc:	62 c2 6d 48 7f c9    	vpermt2ps zmm17,zmm2,zmm9
  a23ee2:	62 71 7c 48 10 ac 17 	vmovups zmm13,ZMMWORD PTR [rdi+rdx*1+0x1b0]
  a23ee9:	b0 01 00 00 
  a23eed:	c5 fb 10 b4 17 f0 01 	vmovsd xmm6,QWORD PTR [rdi+rdx*1+0x1f0]
  a23ef4:	00 00 
  a23ef6:	62 62 75 48 7f c4    	vpermt2ps zmm24,zmm1,zmm4
  a23efc:	62 41 7c 48 28 cd    	vmovaps zmm25,zmm13
  a23f02:	62 72 6d 48 7f ee    	vpermt2ps zmm13,zmm2,zmm6
  a23f08:	62 71 7c 48 10 b4 17 	vmovups zmm14,ZMMWORD PTR [rdi+rdx*1+0x1f8]
  a23f0f:	f8 01 00 00 
  a23f13:	62 d2 75 48 7f e9    	vpermt2ps zmm5,zmm1,zmm9
  a23f19:	c5 fb 10 a4 17 38 02 	vmovsd xmm4,QWORD PTR [rdi+rdx*1+0x238]
  a23f20:	00 00 
  a23f22:	62 51 7c 48 28 ce    	vmovaps zmm9,zmm14
  a23f28:	62 72 6d 48 7f f4    	vpermt2ps zmm14,zmm2,zmm4
  a23f2e:	62 62 75 48 7f ce    	vpermt2ps zmm25,zmm1,zmm6
  a23f34:	62 61 7c 48 10 64 17 	vmovups zmm28,ZMMWORD PTR [rdi+rdx*1+0x240]
  a23f3b:	09 
  a23f3c:	62 e1 ff 08 10 44 17 	vmovsd xmm16,QWORD PTR [rdi+rdx*1+0x280]
  a23f43:	50 
  a23f44:	62 91 7c 48 28 f4    	vmovaps zmm6,zmm28
  a23f4a:	62 72 75 48 7f cc    	vpermt2ps zmm9,zmm1,zmm4
  a23f50:	62 22 6d 48 7f e0    	vpermt2ps zmm28,zmm2,zmm16
  a23f56:	62 f1 7c 48 10 a4 17 	vmovups zmm4,ZMMWORD PTR [rdi+rdx*1+0x288]
  a23f5d:	88 02 00 00 
  a23f61:	62 e1 ff 08 10 54 17 	vmovsd xmm18,QWORD PTR [rdi+rdx*1+0x2c8]
  a23f68:	59 
  a23f69:	62 b2 75 48 7f f0    	vpermt2ps zmm6,zmm1,zmm16
  a23f6f:	62 61 7c 48 28 ec    	vmovaps zmm29,zmm4
  a23f75:	62 b2 6d 48 7f e2    	vpermt2ps zmm4,zmm2,zmm18
  a23f7b:	62 e1 7c 48 10 84 17 	vmovups zmm16,ZMMWORD PTR [rdi+rdx*1+0x2d0]
  a23f82:	d0 02 00 00 
  a23f86:	62 22 75 48 7f ea    	vpermt2ps zmm29,zmm1,zmm18
  a23f8c:	62 e1 ff 08 10 54 17 	vmovsd xmm18,QWORD PTR [rdi+rdx*1+0x310]
  a23f93:	62 
  a23f94:	62 21 7c 48 28 f0    	vmovaps zmm30,zmm16
  a23f9a:	62 a2 6d 48 7f c2    	vpermt2ps zmm16,zmm2,zmm18
  a23fa0:	62 22 75 48 7f f2    	vpermt2ps zmm30,zmm1,zmm18
  a23fa6:	62 f1 7c 48 10 84 17 	vmovups zmm0,ZMMWORD PTR [rdi+rdx*1+0x318]
  a23fad:	18 03 00 00 
  a23fb1:	62 e1 ff 08 10 54 17 	vmovsd xmm18,QWORD PTR [rdi+rdx*1+0x358]
  a23fb8:	6b 
  a23fb9:	62 61 7c 48 28 f8    	vmovaps zmm31,zmm0
  a23fbf:	62 22 75 48 7f fa    	vpermt2ps zmm31,zmm1,zmm18
  a23fc5:	62 b2 6d 48 7f c2    	vpermt2ps zmm0,zmm2,zmm18
  a23fcb:	62 c1 54 40 58 d5    	vaddps zmm18,zmm21,zmm13
  a23fd1:	62 61 5c 40 58 d4    	vaddps zmm26,zmm20,zmm4
  a23fd7:	62 b1 64 48 58 c8    	vaddps zmm1,zmm3,zmm16
  a23fdd:	62 d1 0c 48 58 d3    	vaddps zmm2,zmm14,zmm11
  a23fe3:	62 a1 64 48 5c c0    	vsubps zmm16,zmm3,zmm16
  a23fe9:	62 51 34 48 58 d4    	vaddps zmm10,zmm9,zmm12
  a23fef:	62 41 34 48 5c dc    	vsubps zmm27,zmm9,zmm12
  a23ff5:	62 51 1c 40 58 e7    	vaddps zmm12,zmm28,zmm15
  a23ffb:	62 51 1c 40 5c ff    	vsubps zmm15,zmm28,zmm15
  a24001:	62 71 04 40 58 c5    	vaddps zmm8,zmm31,zmm5
  a24007:	62 61 04 40 5c e5    	vsubps zmm28,zmm31,zmm5
  a2400d:	62 b1 7c 48 58 e9    	vaddps zmm5,zmm0,zmm17
  a24013:	62 41 54 40 5c fd    	vsubps zmm31,zmm21,zmm13
  a24019:	62 91 44 40 58 fd    	vaddps zmm7,zmm23,zmm29
  a2401f:	62 81 44 40 5c fd    	vsubps zmm23,zmm23,zmm29
  a24025:	62 01 3c 40 58 ee    	vaddps zmm29,zmm24,zmm30
  a2402b:	62 81 3c 40 5c ee    	vsubps zmm21,zmm24,zmm30
  a24031:	62 51 24 48 5c de    	vsubps zmm11,zmm11,zmm14
  a24037:	62 11 6c 40 58 ca    	vaddps zmm9,zmm18,zmm26
  a2403d:	62 31 4c 48 58 f6    	vaddps zmm14,zmm6,zmm22
  a24043:	62 a1 4c 48 5c f6    	vsubps zmm22,zmm6,zmm22
  a24049:	62 f1 74 40 5c c0    	vsubps zmm0,zmm17,zmm0
  a2404f:	62 f1 74 48 58 da    	vaddps zmm3,zmm1,zmm2
  a24055:	62 91 64 40 58 f1    	vaddps zmm6,zmm19,zmm25
  a2405b:	62 81 64 40 5c d9    	vsubps zmm19,zmm19,zmm25
  a24061:	62 a1 5c 48 5c e4    	vsubps zmm20,zmm4,zmm20
  a24067:	62 e1 1c 48 58 cd    	vaddps zmm17,zmm12,zmm5
  a2406d:	62 71 4c 48 58 ef    	vaddps zmm13,zmm6,zmm7
  a24073:	62 f1 74 48 5c ca    	vsubps zmm1,zmm1,zmm2
  a24079:	62 f1 1c 48 5c d5    	vsubps zmm2,zmm12,zmm5
  a2407f:	62 41 14 40 58 c2    	vaddps zmm24,zmm29,zmm10
  a24085:	62 41 0c 48 58 c8    	vaddps zmm25,zmm14,zmm8
  a2408b:	62 81 6c 40 5c d2    	vsubps zmm18,zmm18,zmm26
  a24091:	62 01 7c 40 58 d3    	vaddps zmm26,zmm16,zmm27
  a24097:	62 51 14 40 5c d2    	vsubps zmm10,zmm29,zmm10
  a2409d:	62 31 04 40 58 e7    	vaddps zmm12,zmm31,zmm23
  a240a3:	62 51 0c 48 5c c0    	vsubps zmm8,zmm14,zmm8
  a240a9:	62 f1 4c 48 5c ff    	vsubps zmm7,zmm6,zmm7
  a240af:	62 b1 64 48 58 e1    	vaddps zmm4,zmm3,zmm17
  a240b5:	62 b1 24 48 58 ed    	vaddps zmm5,zmm11,zmm21
  a240bb:	62 21 04 40 5c ef    	vsubps zmm29,zmm31,zmm23
  a240c1:	62 e1 74 48 58 fa    	vaddps zmm23,zmm1,zmm2
  a240c7:	62 f1 74 48 5c ca    	vsubps zmm1,zmm1,zmm2
  a240cd:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm1
  a240d4:	01 
  a240d5:	62 b1 7c 48 58 ce    	vaddps zmm1,zmm0,zmm22
  a240db:	62 91 7c 40 5c d3    	vsubps zmm2,zmm16,zmm27
  a240e1:	62 e1 54 48 5c c1    	vsubps zmm16,zmm5,zmm1
  a240e7:	62 f1 54 48 58 e9    	vaddps zmm5,zmm5,zmm1
  a240ed:	62 91 04 48 58 cc    	vaddps zmm1,zmm15,zmm28
  a240f3:	62 01 04 48 5c dc    	vsubps zmm27,zmm15,zmm28
  a240f9:	62 71 2c 40 58 f9    	vaddps zmm15,zmm26,zmm1
  a240ff:	62 f1 2c 40 5c f1    	vsubps zmm6,zmm26,zmm1
  a24105:	62 31 5c 40 58 f3    	vaddps zmm14,zmm20,zmm19
  a2410b:	62 21 64 40 5c d4    	vsubps zmm26,zmm19,zmm20
  a24111:	62 41 2c 48 5c e0    	vsubps zmm28,zmm10,zmm8
  a24117:	62 51 2c 48 58 c0    	vaddps zmm8,zmm10,zmm8
  a2411d:	62 11 3c 40 58 d1    	vaddps zmm10,zmm24,zmm25
  a24123:	62 c1 54 40 5c eb    	vsubps zmm21,zmm21,zmm11
  a24129:	62 f1 4c 40 5c c0    	vsubps zmm0,zmm22,zmm0
  a2412f:	62 71 34 48 58 dc    	vaddps zmm11,zmm9,zmm4
  a24135:	62 d1 14 48 58 ca    	vaddps zmm1,zmm13,zmm10
  a2413b:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm1
  a24142:	02 
  a24143:	62 e2 7d 48 18 25 13 	vbroadcastss zmm20,DWORD PTR [rip+0xffffffffff651313]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a2414a:	13 65 ff 
  a2414d:	62 d2 5d 40 ac e1    	vfnmadd213ps zmm4,zmm20,zmm9
  a24153:	62 31 7c 48 28 cc    	vmovaps zmm9,zmm20
  a24159:	62 52 05 48 ac cc    	vfnmadd213ps zmm9,zmm15,zmm12
  a2415f:	62 81 3c 40 5c f1    	vsubps zmm22,zmm24,zmm25
  a24165:	62 21 7c 48 28 cc    	vmovaps zmm25,zmm20
  a2416b:	62 22 45 40 ac ca    	vfnmadd213ps zmm25,zmm23,zmm18
  a24171:	62 f2 7d 48 18 0d 59 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff651159]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a24178:	11 65 ff 
  a2417b:	62 e1 7c 40 59 c1    	vmulps zmm16,zmm16,zmm1
  a24181:	62 21 64 48 5c f1    	vsubps zmm30,zmm3,zmm17
  a24187:	62 21 7c 48 28 fc    	vmovaps zmm31,zmm20
  a2418d:	62 62 3d 48 ac ff    	vfnmadd213ps zmm31,zmm8,zmm7
  a24193:	62 52 5d 40 ac d5    	vfnmadd213ps zmm10,zmm20,zmm13
  a24199:	62 01 6c 48 58 c3    	vaddps zmm24,zmm2,zmm27
  a2419f:	62 a1 6c 40 58 df    	vaddps zmm19,zmm18,zmm23
  a241a5:	62 11 14 40 58 e8    	vaddps zmm13,zmm29,zmm24
  a241ab:	62 c1 44 48 58 f8    	vaddps zmm23,zmm7,zmm8
  a241b1:	62 f1 54 40 58 f8    	vaddps zmm7,zmm21,zmm0
  a241b7:	62 02 5d 40 ac c5    	vfnmadd213ps zmm24,zmm20,zmm29
  a241bd:	62 71 54 40 5c c0    	vsubps zmm8,zmm21,zmm0
  a241c3:	62 c1 7c 40 58 c9    	vaddps zmm17,zmm16,zmm9
  a241c9:	62 a1 7c 48 28 d4    	vmovaps zmm18,zmm20
  a241cf:	62 a1 7c 48 28 ec    	vmovaps zmm21,zmm20
  a241d5:	62 c2 55 48 ac d6    	vfnmadd213ps zmm18,zmm5,zmm14
  a241db:	62 f1 7c 48 28 c1    	vmovaps zmm0,zmm1
  a241e1:	62 f1 4c 48 59 c9    	vmulps zmm1,zmm6,zmm1
  a241e7:	62 b1 34 48 5c d8    	vsubps zmm3,zmm9,zmm16
  a241ed:	62 e1 2c 40 58 e7    	vaddps zmm20,zmm26,zmm7
  a241f3:	62 92 55 40 ac fa    	vfnmadd213ps zmm7,zmm21,zmm26
  a241f9:	62 e1 6c 40 5c c1    	vsubps zmm16,zmm18,zmm1
  a241ff:	62 61 6c 40 58 d1    	vaddps zmm26,zmm18,zmm1
  a24205:	62 f1 1c 40 59 c8    	vmulps zmm1,zmm28,zmm0
  a2420b:	62 71 4c 40 59 c8    	vmulps zmm9,zmm22,zmm0
  a24211:	62 91 6c 48 5c d3    	vsubps zmm2,zmm2,zmm27
  a24217:	62 c1 5c 48 58 d1    	vaddps zmm18,zmm4,zmm9
  a2421d:	62 e1 0c 40 59 e8    	vmulps zmm21,zmm30,zmm0
  a24223:	62 d1 5c 48 5c e1    	vsubps zmm4,zmm4,zmm9
  a24229:	62 21 2c 48 5c ed    	vsubps zmm29,zmm10,zmm21
  a2422f:	62 d1 54 40 58 f2    	vaddps zmm6,zmm21,zmm10
  a24235:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm6
  a2423c:	04 
  a2423d:	62 71 34 40 5c c9    	vsubps zmm9,zmm25,zmm1
  a24243:	62 71 7c 48 59 54 24 	vmulps zmm10,zmm0,ZMMWORD PTR [rsp+0x40]
  a2424a:	01 
  a2424b:	62 c1 1c 48 58 f7    	vaddps zmm22,zmm12,zmm15
  a24251:	62 01 2c 48 58 df    	vaddps zmm27,zmm10,zmm31
  a24257:	62 71 3c 48 59 c0    	vmulps zmm8,zmm8,zmm0
  a2425d:	62 f1 6c 48 59 d0    	vmulps zmm2,zmm2,zmm0
  a24263:	62 61 0c 48 58 f5    	vaddps zmm30,zmm14,zmm5
  a24269:	62 91 3c 48 58 f0    	vaddps zmm6,zmm8,zmm24
  a2426f:	62 f1 34 40 58 c9    	vaddps zmm1,zmm25,zmm1
  a24275:	62 61 44 48 5c e2    	vsubps zmm28,zmm7,zmm2
  a2427b:	62 41 04 40 5c fa    	vsubps zmm31,zmm31,zmm10
  a24281:	62 51 3c 40 5c c0    	vsubps zmm8,zmm24,zmm8
  a24287:	62 f1 44 48 58 c2    	vaddps zmm0,zmm7,zmm2
  a2428d:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a24294:	01 
  a24295:	62 d1 7c 48 28 eb    	vmovaps zmm5,zmm11
  a2429b:	62 61 7c 48 28 05 db 	vmovaps zmm24,ZMMWORD PTR [rip+0xffffffffff6a2cdb]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a242a2:	2c 6a ff 
  a242a5:	62 f2 3d 40 7f ec    	vpermt2ps zmm5,zmm24,zmm4
  a242ab:	62 f1 7c 48 28 3d 0b 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff6a2d0b]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a242b2:	2d 6a ff 
  a242b5:	62 72 45 48 7f dc    	vpermt2ps zmm11,zmm7,zmm4
  a242bb:	62 31 7c 48 28 f9    	vmovaps zmm15,zmm17
  a242c1:	62 a2 45 48 7f ce    	vpermt2ps zmm17,zmm7,zmm22
  a242c7:	62 41 7c 48 28 c9    	vmovaps zmm25,zmm9
  a242cd:	62 32 3d 40 7f fe    	vpermt2ps zmm15,zmm24,zmm22
  a242d3:	62 72 45 48 7f c9    	vpermt2ps zmm9,zmm7,zmm1
  a242d9:	62 c1 7c 48 28 f5    	vmovaps zmm22,zmm13
  a242df:	62 c2 3d 40 7f f0    	vpermt2ps zmm22,zmm24,zmm8
  a242e5:	62 62 3d 40 7f c9    	vpermt2ps zmm25,zmm24,zmm1
  a242eb:	62 52 45 48 7f e8    	vpermt2ps zmm13,zmm7,zmm8
  a242f1:	62 b1 7c 48 28 ca    	vmovaps zmm1,zmm18
  a242f7:	62 f1 7c 48 28 d6    	vmovaps zmm2,zmm6
  a242fd:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a24301:	62 f2 3d 40 7f c8    	vpermt2ps zmm1,zmm24,zmm0
  a24307:	62 f2 3d 40 7f d0    	vpermt2ps zmm2,zmm24,zmm0
  a2430d:	62 f1 7c 48 28 e5    	vmovaps zmm4,zmm5
  a24313:	62 e1 7c 48 28 2d e3 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff6a2be3]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a2431a:	2b 6a ff 
  a2431d:	62 f2 55 40 7f e1    	vpermt2ps zmm4,zmm21,zmm1
  a24323:	62 71 7c 48 28 25 13 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff6a2c13]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a2432a:	2c 6a ff 
  a2432d:	62 f2 1d 48 7f e9    	vpermt2ps zmm5,zmm12,zmm1
  a24333:	62 31 7c 48 28 f6    	vmovaps zmm14,zmm22
  a24339:	62 72 55 40 7f f2    	vpermt2ps zmm14,zmm21,zmm2
  a2433f:	62 e2 1d 48 7f f2    	vpermt2ps zmm22,zmm12,zmm2
  a24345:	62 e2 45 48 7f d0    	vpermt2ps zmm18,zmm7,zmm0
  a2434b:	62 32 55 40 7f da    	vpermt2ps zmm11,zmm21,zmm18
  a24351:	62 f1 7c 48 28 cb    	vmovaps zmm1,zmm3
  a24357:	62 f2 45 48 7f d8    	vpermt2ps zmm3,zmm7,zmm0
  a2435d:	62 f2 3d 40 7f c8    	vpermt2ps zmm1,zmm24,zmm0
  a24363:	62 e2 55 40 7f cb    	vpermt2ps zmm17,zmm21,zmm3
  a24369:	62 c1 7c 48 28 d7    	vmovaps zmm18,zmm15
  a2436f:	62 72 1d 48 7f f9    	vpermt2ps zmm15,zmm12,zmm1
  a24375:	62 e2 55 40 7f d1    	vpermt2ps zmm18,zmm21,zmm1
  a2437b:	62 b1 7c 48 28 cb    	vmovaps zmm1,zmm19
  a24381:	62 f2 3d 40 7f c8    	vpermt2ps zmm1,zmm24,zmm0
  a24387:	62 e2 45 48 7f d8    	vpermt2ps zmm19,zmm7,zmm0
  a2438d:	62 f2 45 48 7f f0    	vpermt2ps zmm6,zmm7,zmm0
  a24393:	62 32 55 40 7f cb    	vpermt2ps zmm9,zmm21,zmm19
  a24399:	62 91 7c 48 28 d1    	vmovaps zmm2,zmm25
  a2439f:	62 62 1d 48 7f c9    	vpermt2ps zmm25,zmm12,zmm1
  a243a5:	62 f2 55 40 7f d1    	vpermt2ps zmm2,zmm21,zmm1
  a243ab:	62 51 a5 48 14 c1    	vunpcklpd zmm8,zmm11,zmm9
  a243b1:	62 72 55 40 7f ee    	vpermt2ps zmm13,zmm21,zmm6
  a243b7:	62 d1 f5 40 14 cd    	vunpcklpd zmm1,zmm17,zmm13
  a243bd:	62 81 d5 48 14 d9    	vunpcklpd zmm19,zmm5,zmm25
  a243c3:	62 91 d5 48 15 d9    	vunpckhpd zmm3,zmm5,zmm25
  a243c9:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm3
  a243d0:	03 
  a243d1:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x80]
  a243d8:	02 
  a243d9:	62 d1 7c 48 28 da    	vmovaps zmm3,zmm10
  a243df:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x100]
  a243e6:	04 
  a243e7:	62 f2 3d 40 7f de    	vpermt2ps zmm3,zmm24,zmm6
  a243ed:	62 a1 85 48 14 ce    	vunpcklpd zmm17,zmm15,zmm22
  a243f3:	62 72 45 48 7f d6    	vpermt2ps zmm10,zmm7,zmm6
  a243f9:	62 21 7c 48 28 c8    	vmovaps zmm25,zmm16
  a243ff:	62 02 3d 40 7f ce    	vpermt2ps zmm25,zmm24,zmm30
  a24405:	62 31 85 48 15 ee    	vunpckhpd zmm13,zmm15,zmm22
  a2440b:	62 82 45 48 7f c6    	vpermt2ps zmm16,zmm7,zmm30
  a24411:	62 91 7c 48 28 f3    	vmovaps zmm6,zmm27
  a24417:	62 92 3d 40 7f f7    	vpermt2ps zmm6,zmm24,zmm31
  a2441d:	62 e1 7c 48 28 35 d9 	vmovaps zmm22,ZMMWORD PTR [rip+0xffffffffff6a29d9]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a24424:	29 6a ff 
  a24427:	62 72 4d 40 7f c1    	vpermt2ps zmm8,zmm22,zmm1
  a2442d:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm8
  a24434:	02 
  a24435:	62 02 45 48 7f df    	vpermt2ps zmm27,zmm7,zmm31
  a2443b:	62 31 7c 48 28 fc    	vmovaps zmm15,zmm20
  a24441:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x40]
  a24448:	01 
  a24449:	62 72 3d 40 7f f9    	vpermt2ps zmm15,zmm24,zmm1
  a2444f:	62 61 dd 48 14 f2    	vunpcklpd zmm30,zmm4,zmm2
  a24455:	62 e2 45 48 7f e1    	vpermt2ps zmm20,zmm7,zmm1
  a2445b:	62 91 7c 48 28 cd    	vmovaps zmm1,zmm29
  a24461:	62 f2 3d 40 7f c8    	vpermt2ps zmm1,zmm24,zmm0
  a24467:	62 61 dd 48 15 fa    	vunpckhpd zmm31,zmm4,zmm2
  a2446d:	62 91 7c 48 28 d2    	vmovaps zmm2,zmm26
  a24473:	62 f2 3d 40 7f d0    	vpermt2ps zmm2,zmm24,zmm0
  a24479:	62 b1 7c 48 28 e7    	vmovaps zmm4,zmm23
  a2447f:	62 51 ed 40 14 de    	vunpcklpd zmm11,zmm18,zmm14
  a24485:	62 f2 3d 40 7f e0    	vpermt2ps zmm4,zmm24,zmm0
  a2448b:	62 71 7c 48 28 cb    	vmovaps zmm9,zmm3
  a24491:	62 72 55 40 7f c9    	vpermt2ps zmm9,zmm21,zmm1
  a24497:	62 51 ed 40 15 c6    	vunpckhpd zmm8,zmm18,zmm14
  a2449d:	62 f2 1d 48 7f d9    	vpermt2ps zmm3,zmm12,zmm1
  a244a3:	62 91 7c 48 28 c9    	vmovaps zmm1,zmm25
  a244a9:	62 f2 55 40 7f ca    	vpermt2ps zmm1,zmm21,zmm2
  a244af:	62 a1 7c 48 28 d3    	vmovaps zmm18,zmm19
  a244b5:	62 62 1d 48 7f ca    	vpermt2ps zmm25,zmm12,zmm2
  a244bb:	62 f1 7c 48 28 d6    	vmovaps zmm2,zmm6
  a244c1:	62 f2 55 40 7f d4    	vpermt2ps zmm2,zmm21,zmm4
  a244c7:	62 f1 7c 48 28 2d 6f 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff6a296f]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a244ce:	29 6a ff 
  a244d1:	62 a2 55 48 7f d1    	vpermt2ps zmm18,zmm5,zmm17
  a244d7:	62 e1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm18
  a244de:	01 
  a244df:	62 f2 1d 48 7f f4    	vpermt2ps zmm6,zmm12,zmm4
  a244e5:	62 91 7c 48 28 e4    	vmovaps zmm4,zmm28
  a244eb:	62 f2 3d 40 7f e0    	vpermt2ps zmm4,zmm24,zmm0
  a244f1:	62 a2 4d 40 7f d9    	vpermt2ps zmm19,zmm22,zmm17
  a244f7:	62 c1 7c 48 28 cf    	vmovaps zmm17,zmm15
  a244fd:	62 e2 55 40 7f cc    	vpermt2ps zmm17,zmm21,zmm4
  a24503:	62 72 1d 48 7f fc    	vpermt2ps zmm15,zmm12,zmm4
  a24509:	62 62 45 48 7f e8    	vpermt2ps zmm29,zmm7,zmm0
  a2450f:	62 12 55 40 7f d5    	vpermt2ps zmm10,zmm21,zmm29
  a24515:	62 62 45 48 7f d0    	vpermt2ps zmm26,zmm7,zmm0
  a2451b:	62 82 55 40 7f c2    	vpermt2ps zmm16,zmm21,zmm26
  a24521:	62 e2 45 48 7f f8    	vpermt2ps zmm23,zmm7,zmm0
  a24527:	62 22 55 40 7f df    	vpermt2ps zmm27,zmm21,zmm23
  a2452d:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0xc0]
  a24534:	03 
  a24535:	62 71 7c 48 28 e4    	vmovaps zmm12,zmm4
  a2453b:	62 d2 55 48 7f e5    	vpermt2ps zmm4,zmm5,zmm13
  a24541:	62 e1 7c 48 28 d4    	vmovaps zmm18,zmm4
  a24547:	62 52 4d 40 7f e5    	vpermt2ps zmm12,zmm22,zmm13
  a2454d:	62 01 ad 48 14 d3    	vunpcklpd zmm26,zmm10,zmm27
  a24553:	62 62 45 48 7f e0    	vpermt2ps zmm28,zmm7,zmm0
  a24559:	62 82 55 40 7f e4    	vpermt2ps zmm20,zmm21,zmm28
  a2455f:	62 81 7c 48 28 fe    	vmovaps zmm23,zmm30
  a24565:	62 42 55 48 7f f3    	vpermt2ps zmm30,zmm5,zmm11
  a2456b:	62 b1 fd 40 14 c4    	vunpcklpd zmm0,zmm16,zmm20
  a24571:	62 81 7c 48 28 c7    	vmovaps zmm16,zmm31
  a24577:	62 c2 4d 40 7f fb    	vpermt2ps zmm23,zmm22,zmm11
  a2457d:	62 71 b5 48 14 f2    	vunpcklpd zmm14,zmm9,zmm2
  a24583:	62 f1 b5 48 15 e2    	vunpckhpd zmm4,zmm9,zmm2
  a24589:	62 b1 f5 48 14 d1    	vunpcklpd zmm2,zmm1,zmm17
  a2458f:	62 42 55 48 7f f8    	vpermt2ps zmm31,zmm5,zmm8
  a24595:	62 b1 f5 48 15 c9    	vunpckhpd zmm1,zmm1,zmm17
  a2459b:	62 61 e5 48 14 de    	vunpcklpd zmm27,zmm3,zmm6
  a245a1:	62 e1 e5 48 15 ce    	vunpckhpd zmm17,zmm3,zmm6
  a245a7:	62 c2 4d 40 7f c0    	vpermt2ps zmm16,zmm22,zmm8
  a245ad:	62 d1 b5 40 14 f7    	vunpcklpd zmm6,zmm25,zmm15
  a245b3:	62 d1 b5 40 15 ff    	vunpckhpd zmm7,zmm25,zmm15
  a245b9:	62 c1 7c 48 28 e6    	vmovaps zmm20,zmm14
  a245bf:	62 e2 4d 40 7f e2    	vpermt2ps zmm20,zmm22,zmm2
  a245c5:	62 72 55 48 7f f2    	vpermt2ps zmm14,zmm5,zmm2
  a245cb:	62 71 7c 48 28 fc    	vmovaps zmm15,zmm4
  a245d1:	62 91 7c 48 28 db    	vmovaps zmm3,zmm27
  a245d7:	62 f2 55 48 7f e1    	vpermt2ps zmm4,zmm5,zmm1
  a245dd:	62 f2 4d 40 7f de    	vpermt2ps zmm3,zmm22,zmm6
  a245e3:	62 62 55 48 7f de    	vpermt2ps zmm27,zmm5,zmm6
  a245e9:	62 b1 7c 48 28 d1    	vmovaps zmm2,zmm17
  a245ef:	62 f2 4d 40 7f d7    	vpermt2ps zmm2,zmm22,zmm7
  a245f5:	62 e2 55 48 7f cf    	vpermt2ps zmm17,zmm5,zmm7
  a245fb:	62 62 4d 40 7f d0    	vpermt2ps zmm26,zmm22,zmm0
  a24601:	62 f1 7c 48 10 41 06 	vmovups zmm0,ZMMWORD PTR [rcx+0x180]
  a24608:	62 72 4d 40 7f f9    	vpermt2ps zmm15,zmm22,zmm1
  a2460e:	62 f1 7c 48 10 49 07 	vmovups zmm1,ZMMWORD PTR [rcx+0x1c0]
  a24615:	62 61 04 40 59 c0    	vmulps zmm24,zmm31,zmm0
  a2461b:	62 f1 5c 48 59 f0    	vmulps zmm6,zmm4,zmm0
  a24621:	62 62 5d 48 bc c1    	vfnmadd231ps zmm24,zmm4,zmm1
  a24627:	62 f1 7c 48 10 41 0c 	vmovups zmm0,ZMMWORD PTR [rcx+0x300]
  a2462e:	62 92 75 48 b8 f7    	vfmadd231ps zmm6,zmm1,zmm31
  a24634:	62 f1 7c 48 10 49 0d 	vmovups zmm1,ZMMWORD PTR [rcx+0x340]
  a2463b:	62 61 1c 48 59 e8    	vmulps zmm29,zmm12,zmm0
  a24641:	62 62 6d 48 bc e9    	vfnmadd231ps zmm29,zmm2,zmm1
  a24647:	62 f1 6c 48 59 c0    	vmulps zmm0,zmm2,zmm0
  a2464d:	62 f1 7c 48 10 51 02 	vmovups zmm2,ZMMWORD PTR [rcx+0x80]
  a24654:	62 d2 75 48 b8 c4    	vfmadd231ps zmm0,zmm1,zmm12
  a2465a:	62 f1 7c 48 10 49 03 	vmovups zmm1,ZMMWORD PTR [rcx+0xc0]
  a24661:	62 71 0c 40 59 e2    	vmulps zmm12,zmm30,zmm2
  a24667:	62 61 0c 48 59 e2    	vmulps zmm28,zmm14,zmm2
  a2466d:	62 72 0d 48 bc e1    	vfnmadd231ps zmm12,zmm14,zmm1
  a24673:	62 f1 7c 48 10 51 08 	vmovups zmm2,ZMMWORD PTR [rcx+0x200]
  a2467a:	62 02 75 48 b8 e6    	vfmadd231ps zmm28,zmm1,zmm30
  a24680:	62 f1 7c 48 10 49 09 	vmovups zmm1,ZMMWORD PTR [rcx+0x240]
  a24687:	62 f1 64 40 59 e2    	vmulps zmm4,zmm19,zmm2
  a2468d:	62 f2 65 48 bc e1    	vfnmadd231ps zmm4,zmm3,zmm1
  a24693:	62 f1 64 48 59 d2    	vmulps zmm2,zmm3,zmm2
  a24699:	62 f1 7c 48 10 59 0e 	vmovups zmm3,ZMMWORD PTR [rcx+0x380]
  a246a0:	62 b2 75 48 b8 d3    	vfmadd231ps zmm2,zmm1,zmm19
  a246a6:	62 f1 7c 48 10 49 0f 	vmovups zmm1,ZMMWORD PTR [rcx+0x3c0]
  a246ad:	62 f1 6c 40 59 fb    	vmulps zmm7,zmm18,zmm3
  a246b3:	62 f1 74 40 59 db    	vmulps zmm3,zmm17,zmm3
  a246b9:	62 f2 75 40 bc f9    	vfnmadd231ps zmm7,zmm17,zmm1
  a246bf:	62 71 7c 48 10 41 04 	vmovups zmm8,ZMMWORD PTR [rcx+0x100]
  a246c6:	62 b2 75 48 b8 da    	vfmadd231ps zmm3,zmm1,zmm18
  a246cc:	62 f1 7c 48 10 49 05 	vmovups zmm1,ZMMWORD PTR [rcx+0x140]
  a246d3:	62 c1 7c 40 59 f0    	vmulps zmm22,zmm16,zmm8
  a246d9:	62 e2 05 48 bc f1    	vfnmadd231ps zmm22,zmm15,zmm1
  a246df:	62 51 04 48 59 f8    	vmulps zmm15,zmm15,zmm8
  a246e5:	62 71 7c 48 10 41 0a 	vmovups zmm8,ZMMWORD PTR [rcx+0x280]
  a246ec:	62 32 75 48 b8 f8    	vfmadd231ps zmm15,zmm1,zmm16
  a246f2:	62 f1 7c 48 10 49 0b 	vmovups zmm1,ZMMWORD PTR [rcx+0x2c0]
  a246f9:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x40]
  a24700:	01 
  a24701:	62 51 2c 48 59 c8    	vmulps zmm9,zmm10,zmm8
  a24707:	62 d1 24 40 59 e8    	vmulps zmm5,zmm27,zmm8
  a2470d:	62 72 25 40 bc c9    	vfnmadd231ps zmm9,zmm27,zmm1
  a24713:	62 71 7c 48 10 41 10 	vmovups zmm8,ZMMWORD PTR [rcx+0x400]
  a2471a:	62 d2 75 48 b8 ea    	vfmadd231ps zmm5,zmm1,zmm10
  a24720:	62 f1 7c 48 10 49 11 	vmovups zmm1,ZMMWORD PTR [rcx+0x440]
  a24727:	62 71 7c 48 28 5c 24 	vmovaps zmm11,ZMMWORD PTR [rsp+0x80]
  a2472e:	02 
  a2472f:	62 51 24 48 59 d0    	vmulps zmm10,zmm11,zmm8
  a24735:	62 72 2d 40 bc d1    	vfnmadd231ps zmm10,zmm26,zmm1
  a2473b:	62 51 2c 40 59 c0    	vmulps zmm8,zmm26,zmm8
  a24741:	62 52 75 48 b8 c3    	vfmadd231ps zmm8,zmm1,zmm11
  a24747:	62 91 3c 40 58 cd    	vaddps zmm1,zmm24,zmm29
  a2474d:	62 e1 44 40 58 d9    	vaddps zmm19,zmm23,zmm1
  a24753:	62 71 5c 48 58 ef    	vaddps zmm13,zmm4,zmm7
  a24759:	62 62 7d 48 18 1d fd 	vbroadcastss zmm27,DWORD PTR [rip+0xffffffffff650cfd]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a24760:	0c 65 ff 
  a24763:	62 e2 25 40 bc f9    	vfnmadd231ps zmm23,zmm27,zmm1
  a24769:	62 f1 4c 48 58 c8    	vaddps zmm1,zmm6,zmm0
  a2476f:	62 f1 4c 48 5c c0    	vsubps zmm0,zmm6,zmm0
  a24775:	62 51 1c 48 58 dd    	vaddps zmm11,zmm12,zmm13
  a2477b:	62 52 25 40 bc e5    	vfnmadd231ps zmm12,zmm27,zmm13
  a24781:	62 f1 6c 48 58 f3    	vaddps zmm6,zmm2,zmm3
  a24787:	62 f1 6c 48 5c d3    	vsubps zmm2,zmm2,zmm3
  a2478d:	62 e1 1c 40 58 ce    	vaddps zmm17,zmm28,zmm6
  a24793:	62 62 25 40 bc e6    	vfnmadd231ps zmm28,zmm27,zmm6
  a24799:	62 d1 34 48 58 da    	vaddps zmm3,zmm9,zmm10
  a2479f:	62 f1 5c 48 5c e7    	vsubps zmm4,zmm4,zmm7
  a247a5:	62 61 4c 40 58 cb    	vaddps zmm25,zmm22,zmm3
  a247ab:	62 e2 25 40 bc f3    	vfnmadd231ps zmm22,zmm27,zmm3
  a247b1:	62 d1 54 48 58 d8    	vaddps zmm3,zmm5,zmm8
  a247b7:	62 d1 54 48 5c f0    	vsubps zmm6,zmm5,zmm8
  a247bd:	62 f1 04 48 58 eb    	vaddps zmm5,zmm15,zmm3
  a247c3:	62 72 25 40 bc fb    	vfnmadd231ps zmm15,zmm27,zmm3
  a247c9:	62 a1 74 48 58 ec    	vaddps zmm21,zmm1,zmm20
  a247cf:	62 62 7d 48 18 15 fb 	vbroadcastss zmm26,DWORD PTR [rip+0xffffffffff650afb]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a247d6:	0a 65 ff 
  a247d9:	62 91 7c 48 59 c2    	vmulps zmm0,zmm0,zmm26
  a247df:	62 91 6c 48 59 d2    	vmulps zmm2,zmm2,zmm26
  a247e5:	62 d1 34 48 5c fa    	vsubps zmm7,zmm9,zmm10
  a247eb:	62 f1 44 40 58 d8    	vaddps zmm3,zmm23,zmm0
  a247f1:	62 11 5c 48 59 c2    	vmulps zmm8,zmm4,zmm26
  a247f7:	62 91 4c 48 59 f2    	vmulps zmm6,zmm6,zmm26
  a247fd:	62 e2 25 40 bc e1    	vfnmadd231ps zmm20,zmm27,zmm1
  a24803:	62 f1 1c 48 58 ca    	vaddps zmm1,zmm12,zmm2
  a24809:	62 11 3c 40 5c cd    	vsubps zmm9,zmm24,zmm29
  a2480f:	62 71 4c 40 58 d6    	vaddps zmm10,zmm22,zmm6
  a24815:	62 f1 44 40 5c e0    	vsubps zmm4,zmm23,zmm0
  a2481b:	62 d1 1c 40 5c c0    	vsubps zmm0,zmm28,zmm8
  a24821:	62 91 44 48 59 fa    	vmulps zmm7,zmm7,zmm26
  a24827:	62 f1 1c 48 5c d2    	vsubps zmm2,zmm12,zmm2
  a2482d:	62 71 04 48 5c e7    	vsubps zmm12,zmm15,zmm7
  a24833:	62 51 1c 40 58 c0    	vaddps zmm8,zmm28,zmm8
  a24839:	62 e2 7d 48 18 15 d5 	vbroadcastss zmm18,DWORD PTR [rip+0xffffffffff650ad5]        # 75318 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x27c8>
  a24840:	0a 65 ff 
  a24843:	62 31 1c 48 59 f2    	vmulps zmm14,zmm12,zmm18
  a24849:	62 e2 7d 48 18 3d 89 	vbroadcastss zmm23,DWORD PTR [rip+0xffffffffff650c89]        # 754dc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x298c>
  a24850:	0c 65 ff 
  a24853:	62 32 2d 48 b8 f7    	vfmadd231ps zmm14,zmm10,zmm23
  a24859:	62 a1 1c 48 59 c7    	vmulps zmm16,zmm12,zmm23
  a2485f:	62 c2 6d 40 bc c2    	vfnmadd231ps zmm16,zmm18,zmm10
  a24865:	62 72 7d 48 18 25 f9 	vbroadcastss zmm12,DWORD PTR [rip+0xffffffffff650df9]        # 75668 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b18>
  a2486c:	0d 65 ff 
  a2486f:	62 51 7c 48 59 d4    	vmulps zmm10,zmm0,zmm12
  a24875:	62 72 7d 48 18 2d 59 	vbroadcastss zmm13,DWORD PTR [rip+0xffffffffff650c59]        # 754d8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2988>
  a2487c:	0c 65 ff 
  a2487f:	62 52 75 48 b8 d5    	vfmadd231ps zmm10,zmm1,zmm13
  a24885:	62 d1 7c 48 59 c5    	vmulps zmm0,zmm0,zmm13
  a2488b:	62 f2 1d 48 bc c1    	vfnmadd231ps zmm0,zmm12,zmm1
  a24891:	62 11 24 48 58 e1    	vaddps zmm12,zmm11,zmm25
  a24897:	62 91 34 48 59 ca    	vmulps zmm1,zmm9,zmm26
  a2489d:	62 71 4c 40 5c ce    	vsubps zmm9,zmm22,zmm6
  a248a3:	62 71 74 40 58 ed    	vaddps zmm13,zmm17,zmm5
  a248a9:	62 f1 04 48 58 ff    	vaddps zmm7,zmm15,zmm7
  a248af:	62 71 5c 40 5c f9    	vsubps zmm15,zmm20,zmm1
  a248b5:	62 b1 74 48 58 f4    	vaddps zmm6,zmm1,zmm20
  a248bb:	62 b1 3c 48 59 ca    	vmulps zmm1,zmm8,zmm18
  a248c1:	62 b2 6d 48 b8 cf    	vfmadd231ps zmm1,zmm2,zmm23
  a248c7:	62 31 3c 48 59 c7    	vmulps zmm8,zmm8,zmm23
  a248cd:	62 72 6d 40 bc c2    	vfnmadd231ps zmm8,zmm18,zmm2
  a248d3:	62 e2 7d 48 18 15 13 	vbroadcastss zmm18,DWORD PTR [rip+0xffffffffff650c13]        # 754f0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x29a0>
  a248da:	0c 65 ff 
  a248dd:	62 b1 44 48 59 d2    	vmulps zmm2,zmm7,zmm18
  a248e3:	62 e2 7d 48 18 25 0b 	vbroadcastss zmm20,DWORD PTR [rip+0xffffffffff650d0b]        # 755f8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2aa8>
  a248ea:	0d 65 ff 
  a248ed:	62 b2 35 48 bc d4    	vfnmadd231ps zmm2,zmm9,zmm20
  a248f3:	62 b1 44 48 59 fc    	vmulps zmm7,zmm7,zmm20
  a248f9:	62 d2 6d 40 b8 f9    	vfmadd231ps zmm7,zmm18,zmm9
  a248ff:	62 51 2c 48 58 ce    	vaddps zmm9,zmm10,zmm14
  a24905:	62 e1 74 40 5c cd    	vsubps zmm17,zmm17,zmm5
  a2490b:	62 a1 7c 48 58 d0    	vaddps zmm18,zmm0,zmm16
  a24911:	62 81 24 48 5c e1    	vsubps zmm20,zmm11,zmm25
  a24917:	62 d1 64 48 58 e9    	vaddps zmm5,zmm3,zmm9
  a2491d:	62 72 25 40 ac cb    	vfnmadd213ps zmm9,zmm27,zmm3
  a24923:	62 e1 74 48 58 f2    	vaddps zmm22,zmm1,zmm2
  a24929:	62 b1 7c 48 5c c0    	vsubps zmm0,zmm0,zmm16
  a2492f:	62 31 04 48 58 da    	vaddps zmm11,zmm15,zmm18
  a24935:	62 c2 25 40 ac d7    	vfnmadd213ps zmm18,zmm27,zmm15
  a2493b:	62 91 7c 48 28 db    	vmovaps zmm3,zmm27
  a24941:	62 51 2c 48 5c d6    	vsubps zmm10,zmm10,zmm14
  a24947:	62 31 5c 48 58 f6    	vaddps zmm14,zmm4,zmm22
  a2494d:	62 b2 1d 48 ac db    	vfnmadd213ps zmm3,zmm12,zmm19
  a24953:	62 11 74 40 59 fa    	vmulps zmm15,zmm17,zmm26
  a24959:	62 e2 25 40 ac f4    	vfnmadd213ps zmm22,zmm27,zmm4
  a2495f:	62 e1 3c 48 5c c7    	vsubps zmm16,zmm8,zmm7
  a24965:	62 f1 3c 48 58 ff    	vaddps zmm7,zmm8,zmm7
  a2496b:	62 91 7c 48 28 e3    	vmovaps zmm4,zmm27
  a24971:	62 f1 74 48 5c ca    	vsubps zmm1,zmm1,zmm2
  a24977:	62 d1 64 48 58 d7    	vaddps zmm2,zmm3,zmm15
  a2497d:	62 b2 15 48 ac e5    	vfnmadd213ps zmm4,zmm13,zmm21
  a24983:	62 11 5c 40 59 c2    	vmulps zmm8,zmm20,zmm26
  a24989:	62 d1 64 48 5c df    	vsubps zmm3,zmm3,zmm15
  a2498f:	62 c1 5c 48 5c c8    	vsubps zmm17,zmm4,zmm8
  a24995:	62 d1 5c 48 58 e0    	vaddps zmm4,zmm4,zmm8
  a2499b:	62 31 4c 48 58 c0    	vaddps zmm8,zmm6,zmm16
  a249a1:	62 91 7c 48 59 c2    	vmulps zmm0,zmm0,zmm26
  a249a7:	62 e2 25 40 ac c6    	vfnmadd213ps zmm16,zmm27,zmm6
  a249ad:	62 e1 34 48 58 e0    	vaddps zmm20,zmm9,zmm0
  a249b3:	62 11 2c 48 59 d2    	vmulps zmm10,zmm10,zmm26
  a249b9:	62 f1 34 48 5c f0    	vsubps zmm6,zmm9,zmm0
  a249bf:	62 d1 6c 40 5c c2    	vsubps zmm0,zmm18,zmm10
  a249c5:	62 91 44 48 59 fa    	vmulps zmm7,zmm7,zmm26
  a249cb:	62 51 6c 40 58 fa    	vaddps zmm15,zmm18,zmm10
  a249d1:	62 71 4c 40 58 d7    	vaddps zmm10,zmm22,zmm7
  a249d7:	62 71 4c 40 5c cf    	vsubps zmm9,zmm22,zmm7
  a249dd:	62 d1 54 40 58 fd    	vaddps zmm7,zmm21,zmm13
  a249e3:	62 51 64 40 58 e4    	vaddps zmm12,zmm19,zmm12
  a249e9:	62 71 7c 48 28 ef    	vmovaps zmm13,zmm7
  a249ef:	62 91 74 48 59 ca    	vmulps zmm1,zmm1,zmm26
  a249f5:	62 e1 7c 28 28 15 41 	vmovaps ymm18,YMMWORD PTR [rip+0xffffffffff652241]        # 76c40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x40f0>
  a249fc:	22 65 ff 
  a249ff:	62 52 6d 40 7f ec    	vpermt2ps zmm13,zmm18,zmm12
  a24a05:	62 e1 7c 48 28 1d 71 	vmovaps zmm19,ZMMWORD PTR [rip+0xffffffffff66b771]        # 90180 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d630>
  a24a0c:	b7 66 ff 
  a24a0f:	62 d2 65 40 7f fc    	vpermt2ps zmm7,zmm19,zmm12
  a24a15:	62 71 7c 40 5c e1    	vsubps zmm12,zmm16,zmm1
  a24a1b:	62 f1 7c 40 58 c9    	vaddps zmm1,zmm16,zmm1
  a24a21:	62 f1 7c 48 11 3c 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm7
  a24a28:	c5 7c 11 6c 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm13
  a24a2e:	62 d1 7c 48 28 fb    	vmovaps zmm7,zmm11
  a24a34:	62 f2 6d 40 7f fd    	vpermt2ps zmm7,zmm18,zmm5
  a24a3a:	62 72 65 40 7f dd    	vpermt2ps zmm11,zmm19,zmm5
  a24a40:	62 71 7c 48 11 9c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x60],zmm11
  a24a47:	60 00 00 00 
  a24a4b:	c5 fc 11 bc 16 a0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xa0],ymm7
  a24a52:	00 00 
  a24a54:	62 d1 7c 48 28 e8    	vmovaps zmm5,zmm8
  a24a5a:	62 d2 6d 40 7f ee    	vpermt2ps zmm5,zmm18,zmm14
  a24a60:	62 52 65 40 7f c6    	vpermt2ps zmm8,zmm19,zmm14
  a24a66:	62 71 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xc0],zmm8
  a24a6d:	03 
  a24a6e:	c5 fc 11 ac 16 00 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x100],ymm5
  a24a75:	00 00 
  a24a77:	62 b1 7c 48 28 e9    	vmovaps zmm5,zmm17
  a24a7d:	62 f2 6d 40 7f ea    	vpermt2ps zmm5,zmm18,zmm2
  a24a83:	62 e2 65 40 7f ca    	vpermt2ps zmm17,zmm19,zmm2
  a24a89:	62 e1 7c 48 11 8c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x120],zmm17
  a24a90:	20 01 00 00 
  a24a94:	c5 fc 11 ac 16 60 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x160],ymm5
  a24a9b:	00 00 
  a24a9d:	62 f1 7c 48 28 d0    	vmovaps zmm2,zmm0
  a24aa3:	62 b2 65 40 7f c4    	vpermt2ps zmm0,zmm19,zmm20
  a24aa9:	62 b2 6d 40 7f d4    	vpermt2ps zmm2,zmm18,zmm20
  a24aaf:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x180],zmm0
  a24ab6:	06 
  a24ab7:	c5 fc 11 94 16 c0 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x1c0],ymm2
  a24abe:	00 00 
  a24ac0:	62 d1 7c 48 28 c4    	vmovaps zmm0,zmm12
  a24ac6:	62 d2 6d 40 7f c2    	vpermt2ps zmm0,zmm18,zmm10
  a24acc:	62 52 65 40 7f e2    	vpermt2ps zmm12,zmm19,zmm10
  a24ad2:	62 71 7c 48 11 a4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1e0],zmm12
  a24ad9:	e0 01 00 00 
  a24add:	c5 fc 11 84 16 20 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x220],ymm0
  a24ae4:	00 00 
  a24ae6:	62 f1 7c 48 28 c4    	vmovaps zmm0,zmm4
  a24aec:	62 f2 6d 40 7f c3    	vpermt2ps zmm0,zmm18,zmm3
  a24af2:	62 f2 65 40 7f e3    	vpermt2ps zmm4,zmm19,zmm3
  a24af8:	62 f1 7c 48 11 64 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x240],zmm4
  a24aff:	09 
  a24b00:	c5 fc 11 84 16 80 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x280],ymm0
  a24b07:	00 00 
  a24b09:	62 d1 7c 48 28 c7    	vmovaps zmm0,zmm15
  a24b0f:	62 f2 6d 40 7f c6    	vpermt2ps zmm0,zmm18,zmm6
  a24b15:	62 72 65 40 7f fe    	vpermt2ps zmm15,zmm19,zmm6
  a24b1b:	62 71 7c 48 11 bc 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x2a0],zmm15
  a24b22:	a0 02 00 00 
  a24b26:	62 f1 7c 48 28 d1    	vmovaps zmm2,zmm1
  a24b2c:	62 d2 6d 40 7f d1    	vpermt2ps zmm2,zmm18,zmm9
  a24b32:	62 d2 65 40 7f c9    	vpermt2ps zmm1,zmm19,zmm9
  a24b38:	c5 fc 11 84 16 e0 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x2e0],ymm0
  a24b3f:	00 00 
  a24b41:	62 f1 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x300],zmm1
  a24b48:	0c 
  a24b49:	c5 fc 11 94 16 40 03 	vmovups YMMWORD PTR [rsi+rdx*1+0x340],ymm2
  a24b50:	00 00 
  a24b52:	48 81 c2 60 03 00 00 	add    rdx,0x360
  a24b59:	48 39 d0             	cmp    rax,rdx
  a24b5c:	0f 85 8e f2 ff ff    	jne    a23df0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x30>
  a24b62:	48 89 ec             	mov    rsp,rbp
  a24b65:	5d                   	pop    rbp
  a24b66:	c5 f8 77             	vzeroupper
  a24b69:	c3                   	ret
