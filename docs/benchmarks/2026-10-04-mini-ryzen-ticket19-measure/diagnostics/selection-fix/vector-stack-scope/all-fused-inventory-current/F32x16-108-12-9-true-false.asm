
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a24e00 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a24e00:	55                   	push   rbp
  a24e01:	48 89 e5             	mov    rbp,rsp
  a24e04:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a24e08:	48 81 ec c0 03 00 00 	sub    rsp,0x3c0
  a24e0f:	c6 84 24 40 03 00 00 	mov    BYTE PTR [rsp+0x340],0x0
  a24e16:	00 
  a24e17:	48 8d 84 24 40 03 00 	lea    rax,[rsp+0x340]
  a24e1e:	00 
  a24e1f:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  a24e24:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  a24e29:	62 f1 7c 48 10 17    	vmovups zmm2,ZMMWORD PTR [rdi]
  a24e2f:	c5 fb 10 4f 40       	vmovsd xmm1,QWORD PTR [rdi+0x40]
  a24e34:	62 f1 7c 48 28 35 02 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff66b402]        # 90240 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d6f0>
  a24e3b:	b4 66 ff 
  a24e3e:	62 f1 7c 48 28 c2    	vmovaps zmm0,zmm2
  a24e44:	62 f2 4d 48 7f c1    	vpermt2ps zmm0,zmm6,zmm1
  a24e4a:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm0
  a24e51:	03 
  a24e52:	62 f1 7c 48 28 25 24 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff66b424]        # 90280 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d730>
  a24e59:	b4 66 ff 
  a24e5c:	62 f2 5d 48 7f d1    	vpermt2ps zmm2,zmm4,zmm1
  a24e62:	62 f1 7c 48 10 8f 48 	vmovups zmm1,ZMMWORD PTR [rdi+0x48]
  a24e69:	00 00 00 
  a24e6c:	c5 fb 10 9f 88 00 00 	vmovsd xmm3,QWORD PTR [rdi+0x88]
  a24e73:	00 
  a24e74:	62 71 7c 48 28 c1    	vmovaps zmm8,zmm1
  a24e7a:	62 72 4d 48 7f c3    	vpermt2ps zmm8,zmm6,zmm3
  a24e80:	62 f2 5d 48 7f cb    	vpermt2ps zmm1,zmm4,zmm3
  a24e86:	62 71 7c 48 10 8f 90 	vmovups zmm9,ZMMWORD PTR [rdi+0x90]
  a24e8d:	00 00 00 
  a24e90:	c5 fb 10 9f d0 00 00 	vmovsd xmm3,QWORD PTR [rdi+0xd0]
  a24e97:	00 
  a24e98:	62 c1 7c 48 28 f1    	vmovaps zmm22,zmm9
  a24e9e:	62 e2 4d 48 7f f3    	vpermt2ps zmm22,zmm6,zmm3
  a24ea4:	62 72 5d 48 7f cb    	vpermt2ps zmm9,zmm4,zmm3
  a24eaa:	62 f1 7c 48 10 af d8 	vmovups zmm5,ZMMWORD PTR [rdi+0xd8]
  a24eb1:	00 00 00 
  a24eb4:	c5 fb 10 bf 18 01 00 	vmovsd xmm7,QWORD PTR [rdi+0x118]
  a24ebb:	00 
  a24ebc:	62 71 7c 48 28 dd    	vmovaps zmm11,zmm5
  a24ec2:	62 72 4d 48 7f df    	vpermt2ps zmm11,zmm6,zmm7
  a24ec8:	62 f2 5d 48 7f ef    	vpermt2ps zmm5,zmm4,zmm7
  a24ece:	62 71 7c 48 10 97 20 	vmovups zmm10,ZMMWORD PTR [rdi+0x120]
  a24ed5:	01 00 00 
  a24ed8:	c5 fb 10 bf 60 01 00 	vmovsd xmm7,QWORD PTR [rdi+0x160]
  a24edf:	00 
  a24ee0:	62 51 7c 48 28 ea    	vmovaps zmm13,zmm10
  a24ee6:	62 72 4d 48 7f ef    	vpermt2ps zmm13,zmm6,zmm7
  a24eec:	62 72 5d 48 7f d7    	vpermt2ps zmm10,zmm4,zmm7
  a24ef2:	62 71 7c 48 10 a7 68 	vmovups zmm12,ZMMWORD PTR [rdi+0x168]
  a24ef9:	01 00 00 
  a24efc:	c5 fb 10 bf a8 01 00 	vmovsd xmm7,QWORD PTR [rdi+0x1a8]
  a24f03:	00 
  a24f04:	62 c1 7c 48 28 cc    	vmovaps zmm17,zmm12
  a24f0a:	62 e2 4d 48 7f cf    	vpermt2ps zmm17,zmm6,zmm7
  a24f10:	62 72 5d 48 7f e7    	vpermt2ps zmm12,zmm4,zmm7
  a24f16:	62 e1 7c 48 10 97 b0 	vmovups zmm18,ZMMWORD PTR [rdi+0x1b0]
  a24f1d:	01 00 00 
  a24f20:	c5 fb 10 bf f0 01 00 	vmovsd xmm7,QWORD PTR [rdi+0x1f0]
  a24f27:	00 
  a24f28:	62 31 7c 48 28 f2    	vmovaps zmm14,zmm18
  a24f2e:	62 72 4d 48 7f f7    	vpermt2ps zmm14,zmm6,zmm7
  a24f34:	62 e2 5d 48 7f d7    	vpermt2ps zmm18,zmm4,zmm7
  a24f3a:	62 71 7c 48 10 bf f8 	vmovups zmm15,ZMMWORD PTR [rdi+0x1f8]
  a24f41:	01 00 00 
  a24f44:	c5 fb 10 bf 38 02 00 	vmovsd xmm7,QWORD PTR [rdi+0x238]
  a24f4b:	00 
  a24f4c:	62 c1 7c 48 28 ff    	vmovaps zmm23,zmm15
  a24f52:	62 e2 4d 48 7f ff    	vpermt2ps zmm23,zmm6,zmm7
  a24f58:	62 72 5d 48 7f ff    	vpermt2ps zmm15,zmm4,zmm7
  a24f5e:	62 61 7c 48 10 47 09 	vmovups zmm24,ZMMWORD PTR [rdi+0x240]
  a24f65:	c5 fb 10 bf 80 02 00 	vmovsd xmm7,QWORD PTR [rdi+0x280]
  a24f6c:	00 
  a24f6d:	62 81 7c 48 28 d8    	vmovaps zmm19,zmm24
  a24f73:	62 e2 4d 48 7f df    	vpermt2ps zmm19,zmm6,zmm7
  a24f79:	62 62 5d 48 7f c7    	vpermt2ps zmm24,zmm4,zmm7
  a24f7f:	62 e1 7c 48 10 87 88 	vmovups zmm16,ZMMWORD PTR [rdi+0x288]
  a24f86:	02 00 00 
  a24f89:	c5 fb 10 bf c8 02 00 	vmovsd xmm7,QWORD PTR [rdi+0x2c8]
  a24f90:	00 
  a24f91:	62 21 7c 48 28 c8    	vmovaps zmm25,zmm16
  a24f97:	62 62 4d 48 7f cf    	vpermt2ps zmm25,zmm6,zmm7
  a24f9d:	62 e2 5d 48 7f c7    	vpermt2ps zmm16,zmm4,zmm7
  a24fa3:	62 e1 7c 48 10 af d0 	vmovups zmm21,ZMMWORD PTR [rdi+0x2d0]
  a24faa:	02 00 00 
  a24fad:	c5 fb 10 bf 10 03 00 	vmovsd xmm7,QWORD PTR [rdi+0x310]
  a24fb4:	00 
  a24fb5:	62 21 7c 48 28 d5    	vmovaps zmm26,zmm21
  a24fbb:	62 62 4d 48 7f d7    	vpermt2ps zmm26,zmm6,zmm7
  a24fc1:	62 e2 5d 48 7f ef    	vpermt2ps zmm21,zmm4,zmm7
  a24fc7:	62 61 7c 48 10 9f 18 	vmovups zmm27,ZMMWORD PTR [rdi+0x318]
  a24fce:	03 00 00 
  a24fd1:	c5 fb 10 bf 58 03 00 	vmovsd xmm7,QWORD PTR [rdi+0x358]
  a24fd8:	00 
  a24fd9:	62 f2 25 40 77 f7    	vpermi2ps zmm6,zmm27,zmm7
  a24fdf:	62 62 5d 48 7f df    	vpermt2ps zmm27,zmm4,zmm7
  a24fe5:	62 b1 6c 48 58 da    	vaddps zmm3,zmm2,zmm18
  a24feb:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm3
  a24ff2:	02 
  a24ff3:	62 b1 54 48 58 c0    	vaddps zmm0,zmm5,zmm16
  a24ff9:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a25000:	01 
  a25001:	62 f1 64 48 58 c0    	vaddps zmm0,zmm3,zmm0
  a25007:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm0
  a2500e:	06 
  a2500f:	62 21 2c 48 58 e5    	vaddps zmm28,zmm10,zmm21
  a25015:	62 61 04 48 58 e9    	vaddps zmm29,zmm15,zmm1
  a2501b:	62 91 1c 40 58 c5    	vaddps zmm0,zmm28,zmm29
  a25021:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm0
  a25028:	0c 
  a25029:	62 41 3c 40 58 f1    	vaddps zmm30,zmm24,zmm9
  a2502f:	62 41 24 40 58 fc    	vaddps zmm31,zmm27,zmm12
  a25035:	62 a1 2c 48 5c e5    	vsubps zmm20,zmm10,zmm21
  a2503b:	62 d1 44 40 58 e0    	vaddps zmm4,zmm23,zmm8
  a25041:	62 c1 44 40 5c f8    	vsubps zmm23,zmm23,zmm8
  a25047:	62 e1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm23
  a2504e:	07 
  a2504f:	62 11 0c 40 58 d7    	vaddps zmm10,zmm30,zmm31
  a25055:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm10
  a2505c:	05 
  a2505d:	62 d1 3c 40 5c c1    	vsubps zmm0,zmm24,zmm9
  a25063:	62 21 4c 48 58 c1    	vaddps zmm24,zmm6,zmm17
  a25069:	62 a1 4c 48 5c e9    	vsubps zmm21,zmm6,zmm17
  a2506f:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0xc0]
  a25076:	03 
  a25077:	62 c1 64 48 58 ce    	vaddps zmm17,zmm3,zmm14
  a2507d:	62 a1 6c 48 5c d2    	vsubps zmm18,zmm2,zmm18
  a25083:	62 11 24 48 58 c1    	vaddps zmm8,zmm11,zmm25
  a25089:	62 11 24 48 5c d9    	vsubps zmm11,zmm11,zmm25
  a2508f:	62 01 14 48 58 ca    	vaddps zmm25,zmm13,zmm26
  a25095:	62 11 14 48 5c ea    	vsubps zmm13,zmm13,zmm26
  a2509b:	62 21 64 40 58 d6    	vaddps zmm26,zmm19,zmm22
  a250a1:	62 d1 74 48 5c ff    	vsubps zmm7,zmm1,zmm15
  a250a7:	62 d1 44 48 58 d5    	vaddps zmm2,zmm7,zmm13
  a250ad:	62 31 64 40 5c ce    	vsubps zmm9,zmm19,zmm22
  a250b3:	62 11 1c 48 5c e3    	vsubps zmm12,zmm12,zmm27
  a250b9:	62 51 1c 48 58 f9    	vaddps zmm15,zmm12,zmm9
  a250bf:	62 d1 6c 48 5c cf    	vsubps zmm1,zmm2,zmm15
  a250c5:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm1
  a250cc:	09 
  a250cd:	62 d1 6c 48 58 cf    	vaddps zmm1,zmm2,zmm15
  a250d3:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm1
  a250da:	04 
  a250db:	62 b1 5c 40 58 d7    	vaddps zmm2,zmm20,zmm23
  a250e1:	62 31 7c 48 28 fc    	vmovaps zmm15,zmm20
  a250e7:	62 d1 64 48 5c de    	vsubps zmm3,zmm3,zmm14
  a250ed:	62 b1 7c 48 58 cd    	vaddps zmm1,zmm0,zmm21
  a250f3:	62 61 7c 48 28 d8    	vmovaps zmm27,zmm0
  a250f9:	62 f1 7c 40 5c c5    	vsubps zmm0,zmm16,zmm5
  a250ff:	62 f1 6c 48 58 f1    	vaddps zmm6,zmm2,zmm1
  a25105:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm6
  a2510c:	0a 
  a2510d:	62 f1 6c 48 5c c9    	vsubps zmm1,zmm2,zmm1
  a25113:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm1
  a2511a:	08 
  a2511b:	62 e1 7c 48 28 64 24 	vmovaps zmm20,ZMMWORD PTR [rsp+0x300]
  a25122:	0c 
  a25123:	62 51 5c 40 58 f2    	vaddps zmm14,zmm20,zmm10
  a25129:	62 91 1c 40 5c d5    	vsubps zmm2,zmm28,zmm29
  a2512f:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x180]
  a25136:	06 
  a25137:	62 c1 54 48 58 de    	vaddps zmm19,zmm5,zmm14
  a2513d:	62 11 0c 40 5c d7    	vsubps zmm10,zmm30,zmm31
  a25143:	62 41 74 40 58 e0    	vaddps zmm28,zmm17,zmm8
  a25149:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x80]
  a25150:	02 
  a25151:	62 e1 74 48 5c 7c 24 	vsubps zmm23,zmm1,ZMMWORD PTR [rsp+0x40]
  a25158:	01 
  a25159:	62 e1 34 40 58 f4    	vaddps zmm22,zmm25,zmm4
  a2515f:	62 f1 34 40 5c e4    	vsubps zmm4,zmm25,zmm4
  a25165:	62 01 2c 40 58 c8    	vaddps zmm25,zmm26,zmm24
  a2516b:	62 81 2c 40 5c c0    	vsubps zmm16,zmm26,zmm24
  a25171:	62 21 5c 48 5c c0    	vsubps zmm24,zmm4,zmm16
  a25177:	62 21 5c 48 58 e8    	vaddps zmm29,zmm4,zmm16
  a2517d:	62 81 4c 40 58 c1    	vaddps zmm16,zmm22,zmm25
  a25183:	62 51 74 40 5c c0    	vsubps zmm8,zmm17,zmm8
  a25189:	62 41 6c 48 58 d2    	vaddps zmm26,zmm2,zmm10
  a2518f:	62 41 6c 48 5c f2    	vsubps zmm30,zmm2,zmm10
  a25195:	62 d1 6c 40 58 d3    	vaddps zmm2,zmm18,zmm11
  a2519b:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm2
  a251a2:	0b 
  a251a3:	62 51 6c 40 5c db    	vsubps zmm11,zmm18,zmm11
  a251a9:	62 72 7d 48 18 15 ad 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff6502ad]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a251b0:	02 65 ff 
  a251b3:	62 e1 04 48 5c 54 24 	vsubps zmm18,zmm15,ZMMWORD PTR [rsp+0x1c0]
  a251ba:	07 
  a251bb:	62 b1 1c 40 58 c8    	vaddps zmm1,zmm28,zmm16
  a251c1:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm1
  a251c8:	03 
  a251c9:	62 a1 24 40 5c ed    	vsubps zmm21,zmm27,zmm21
  a251cf:	62 e1 7c 48 58 cb    	vaddps zmm17,zmm0,zmm3
  a251d5:	62 f1 64 48 5c c0    	vsubps zmm0,zmm3,zmm0
  a251db:	62 d1 7c 48 28 da    	vmovaps zmm3,zmm10
  a251e1:	62 71 14 48 5c ef    	vsubps zmm13,zmm13,zmm7
  a251e7:	62 f2 7d 48 18 0d e3 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff6500e3]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a251ee:	00 65 ff 
  a251f1:	62 f2 4d 48 ac da    	vfnmadd213ps zmm3,zmm6,zmm2
  a251f7:	62 f1 74 48 59 7c 24 	vmulps zmm7,zmm1,ZMMWORD PTR [rsp+0x240]
  a251fe:	09 
  a251ff:	62 41 34 48 5c dc    	vsubps zmm27,zmm9,zmm12
  a25205:	62 f1 44 48 58 f3    	vaddps zmm6,zmm7,zmm3
  a2520b:	62 72 2d 48 ac f5    	vfnmadd213ps zmm14,zmm10,zmm5
  a25211:	62 51 7c 48 28 ca    	vmovaps zmm9,zmm10
  a25217:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x100]
  a2521e:	04 
  a2521f:	62 32 55 48 ac c9    	vfnmadd213ps zmm9,zmm5,zmm17
  a25225:	62 71 74 48 59 7c 24 	vmulps zmm15,zmm1,ZMMWORD PTR [rsp+0x200]
  a2522c:	08 
  a2522d:	62 81 4c 40 5c f1    	vsubps zmm22,zmm22,zmm25
  a25233:	62 d1 34 48 5c d7    	vsubps zmm2,zmm9,zmm15
  a25239:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm2
  a25240:	02 
  a25241:	62 82 2d 48 ac c4    	vfnmadd213ps zmm16,zmm10,zmm28
  a25247:	62 41 7c 48 28 fa    	vmovaps zmm31,zmm10
  a2524d:	62 22 2d 40 ac ff    	vfnmadd213ps zmm31,zmm26,zmm23
  a25253:	62 61 3c 40 59 c1    	vmulps zmm24,zmm24,zmm1
  a25259:	62 61 5c 40 5c 4c 24 	vsubps zmm25,zmm20,ZMMWORD PTR [rsp+0x140]
  a25260:	05 
  a25261:	62 91 04 40 5c e0    	vsubps zmm4,zmm31,zmm24
  a25267:	62 71 64 48 5c e7    	vsubps zmm12,zmm3,zmm7
  a2526d:	62 d1 7c 48 28 d2    	vmovaps zmm2,zmm10
  a25273:	62 d2 15 40 ac d0    	vfnmadd213ps zmm2,zmm29,zmm8
  a25279:	62 61 0c 40 59 f1    	vmulps zmm30,zmm30,zmm1
  a2527f:	62 d1 34 48 58 df    	vaddps zmm3,zmm9,zmm15
  a25285:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm3
  a2528c:	06 
  a2528d:	62 f1 0c 40 58 fa    	vaddps zmm7,zmm30,zmm2
  a25293:	62 01 44 40 58 d2    	vaddps zmm26,zmm23,zmm26
  a25299:	62 31 6c 40 58 fd    	vaddps zmm15,zmm18,zmm21
  a2529f:	62 91 3c 48 58 dd    	vaddps zmm3,zmm8,zmm29
  a252a5:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm3
  a252ac:	01 
  a252ad:	62 d1 24 48 58 df    	vaddps zmm3,zmm11,zmm15
  a252b3:	62 52 2d 48 ac fb    	vfnmadd213ps zmm15,zmm10,zmm11
  a252b9:	62 11 14 48 58 c3    	vaddps zmm8,zmm13,zmm27
  a252bf:	62 81 14 48 5c e3    	vsubps zmm20,zmm13,zmm27
  a252c5:	62 51 7c 48 58 d8    	vaddps zmm11,zmm0,zmm8
  a252cb:	62 61 7c 48 28 e9    	vmovaps zmm29,zmm1
  a252d1:	62 e1 4c 40 59 f1    	vmulps zmm22,zmm22,zmm1
  a252d7:	62 72 2d 48 ac c0    	vfnmadd213ps zmm8,zmm10,zmm0
  a252dd:	62 21 0c 48 58 e6    	vaddps zmm28,zmm14,zmm22
  a252e3:	62 f1 34 40 59 c1    	vmulps zmm0,zmm25,zmm1
  a252e9:	62 b1 6c 40 5c cd    	vsubps zmm1,zmm18,zmm21
  a252ef:	62 71 7c 40 5c e8    	vsubps zmm13,zmm16,zmm0
  a252f5:	62 81 5c 40 59 d5    	vmulps zmm18,zmm20,zmm29
  a252fb:	62 a1 0c 48 5c e6    	vsubps zmm20,zmm14,zmm22
  a25301:	62 41 6c 40 58 df    	vaddps zmm27,zmm18,zmm15
  a25307:	62 91 74 48 59 cd    	vmulps zmm1,zmm1,zmm29
  a2530d:	62 b1 7c 48 58 c0    	vaddps zmm0,zmm0,zmm16
  a25313:	62 71 3c 48 5c f1    	vsubps zmm14,zmm8,zmm1
  a25319:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x280]
  a25320:	0a 
  a25321:	62 e1 34 48 58 74 24 	vaddps zmm22,zmm9,ZMMWORD PTR [rsp+0x2c0]
  a25328:	0b 
  a25329:	62 e1 74 40 58 fd    	vaddps zmm23,zmm17,zmm5
  a2532f:	62 01 04 40 58 c0    	vaddps zmm24,zmm31,zmm24
  a25335:	62 11 6c 48 5c ce    	vsubps zmm9,zmm2,zmm30
  a2533b:	62 b1 04 48 5c d2    	vsubps zmm2,zmm15,zmm18
  a25341:	62 f1 3c 48 58 c9    	vaddps zmm1,zmm8,zmm1
  a25347:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm1
  a2534e:	05 
  a2534f:	62 e1 7c 48 28 05 27 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff6a1c27]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a25356:	1c 6a ff 
  a25359:	62 31 7c 48 28 c3    	vmovaps zmm8,zmm19
  a2535f:	62 32 7d 40 7f c4    	vpermt2ps zmm8,zmm16,zmm20
  a25365:	62 e1 7c 48 28 0d 51 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff6a1c51]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a2536c:	1c 6a ff 
  a2536f:	62 a2 75 40 7f dc    	vpermt2ps zmm19,zmm17,zmm20
  a25375:	62 61 7c 48 28 ee    	vmovaps zmm29,zmm6
  a2537b:	62 22 7d 40 7f ee    	vpermt2ps zmm29,zmm16,zmm22
  a25381:	62 b2 75 40 7f f6    	vpermt2ps zmm6,zmm17,zmm22
  a25387:	62 61 7c 48 28 f4    	vmovaps zmm30,zmm4
  a2538d:	62 02 7d 40 7f f0    	vpermt2ps zmm30,zmm16,zmm24
  a25393:	62 92 75 40 7f e0    	vpermt2ps zmm4,zmm17,zmm24
  a25399:	62 61 7c 48 28 cb    	vmovaps zmm25,zmm3
  a2539f:	62 62 7d 40 7f ca    	vpermt2ps zmm25,zmm16,zmm2
  a253a5:	62 f2 75 40 7f da    	vpermt2ps zmm3,zmm17,zmm2
  a253ab:	62 a1 4c 00 57 f6    	vxorps xmm22,xmm22,xmm22
  a253b1:	62 91 7c 48 28 cc    	vmovaps zmm1,zmm28
  a253b7:	62 b2 7d 40 7f ce    	vpermt2ps zmm1,zmm16,zmm22
  a253bd:	62 e1 7c 48 28 15 39 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff6a1b39]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a253c4:	1b 6a ff 
  a253c7:	62 d1 7c 48 28 d0    	vmovaps zmm2,zmm8
  a253cd:	62 f2 6d 40 7f d1    	vpermt2ps zmm2,zmm18,zmm1
  a253d3:	62 e1 7c 48 28 25 63 	vmovaps zmm20,ZMMWORD PTR [rip+0xffffffffff6a1b63]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a253da:	1b 6a ff 
  a253dd:	62 72 5d 40 7f c1    	vpermt2ps zmm8,zmm20,zmm1
  a253e3:	62 d1 7c 48 28 cc    	vmovaps zmm1,zmm12
  a253e9:	62 b2 7d 40 7f ce    	vpermt2ps zmm1,zmm16,zmm22
  a253ef:	62 01 7c 48 28 c5    	vmovaps zmm24,zmm29
  a253f5:	62 62 6d 40 7f c1    	vpermt2ps zmm24,zmm18,zmm1
  a253fb:	62 62 5d 40 7f e9    	vpermt2ps zmm29,zmm20,zmm1
  a25401:	62 91 7c 48 28 ca    	vmovaps zmm1,zmm26
  a25407:	62 b2 7d 40 7f ce    	vpermt2ps zmm1,zmm16,zmm22
  a2540d:	62 11 7c 48 28 fe    	vmovaps zmm15,zmm30
  a25413:	62 72 6d 40 7f f9    	vpermt2ps zmm15,zmm18,zmm1
  a25419:	62 62 5d 40 7f f1    	vpermt2ps zmm30,zmm20,zmm1
  a2541f:	62 91 7c 48 28 cb    	vmovaps zmm1,zmm27
  a25425:	62 b2 7d 40 7f ce    	vpermt2ps zmm1,zmm16,zmm22
  a2542b:	62 01 7c 48 28 f9    	vmovaps zmm31,zmm25
  a25431:	62 62 6d 40 7f f9    	vpermt2ps zmm31,zmm18,zmm1
  a25437:	62 62 5d 40 7f c9    	vpermt2ps zmm25,zmm20,zmm1
  a2543d:	62 22 75 40 7f e6    	vpermt2ps zmm28,zmm17,zmm22
  a25443:	62 82 6d 40 7f dc    	vpermt2ps zmm19,zmm18,zmm28
  a25449:	62 32 75 40 7f e6    	vpermt2ps zmm12,zmm17,zmm22
  a2544f:	62 d2 6d 40 7f f4    	vpermt2ps zmm6,zmm18,zmm12
  a25455:	62 22 75 40 7f d6    	vpermt2ps zmm26,zmm17,zmm22
  a2545b:	62 92 6d 40 7f e2    	vpermt2ps zmm4,zmm18,zmm26
  a25461:	62 22 75 40 7f de    	vpermt2ps zmm27,zmm17,zmm22
  a25467:	62 f1 e5 40 14 e4    	vunpcklpd zmm4,zmm19,zmm4
  a2546d:	62 92 6d 40 7f db    	vpermt2ps zmm3,zmm18,zmm27
  a25473:	62 f1 cd 48 14 cb    	vunpcklpd zmm1,zmm6,zmm3
  a25479:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm1
  a25480:	04 
  a25481:	62 51 ed 48 14 e7    	vunpcklpd zmm12,zmm2,zmm15
  a25487:	62 51 ed 48 15 ff    	vunpckhpd zmm15,zmm2,zmm15
  a2548d:	62 91 bd 40 14 d7    	vunpcklpd zmm2,zmm24,zmm31
  a25493:	62 91 bd 40 15 f7    	vunpckhpd zmm6,zmm24,zmm31
  a25499:	62 81 bd 48 14 ee    	vunpcklpd zmm21,zmm8,zmm30
  a2549f:	62 01 bd 48 15 d6    	vunpckhpd zmm26,zmm8,zmm30
  a254a5:	62 91 95 40 14 d9    	vunpcklpd zmm3,zmm29,zmm25
  a254ab:	62 01 95 40 15 e1    	vunpckhpd zmm28,zmm29,zmm25
  a254b1:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0xc0]
  a254b8:	03 
  a254b9:	62 61 7c 48 28 c9    	vmovaps zmm25,zmm1
  a254bf:	62 62 7d 40 7f c8    	vpermt2ps zmm25,zmm16,zmm0
  a254c5:	62 f2 75 40 7f c8    	vpermt2ps zmm1,zmm17,zmm0
  a254cb:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x80]
  a254d2:	02 
  a254d3:	62 61 7c 48 28 c0    	vmovaps zmm24,zmm0
  a254d9:	62 22 7d 40 7f c7    	vpermt2ps zmm24,zmm16,zmm23
  a254df:	62 b2 75 40 7f c7    	vpermt2ps zmm0,zmm17,zmm23
  a254e5:	62 e1 7c 48 28 ff    	vmovaps zmm23,zmm7
  a254eb:	62 c2 7d 40 7f f9    	vpermt2ps zmm23,zmm16,zmm9
  a254f1:	62 d2 75 40 7f f9    	vpermt2ps zmm7,zmm17,zmm9
  a254f7:	62 41 7c 48 28 db    	vmovaps zmm27,zmm11
  a254fd:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x140]
  a25504:	05 
  a25505:	62 42 7d 40 7f d9    	vpermt2ps zmm27,zmm16,zmm9
  a2550b:	62 52 75 40 7f d9    	vpermt2ps zmm11,zmm17,zmm9
  a25511:	62 d1 7c 48 28 ed    	vmovaps zmm5,zmm13
  a25517:	62 b2 7d 40 7f ee    	vpermt2ps zmm5,zmm16,zmm22
  a2551d:	62 32 75 40 7f ee    	vpermt2ps zmm13,zmm17,zmm22
  a25523:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x180]
  a2552a:	06 
  a2552b:	62 41 7c 48 28 e9    	vmovaps zmm29,zmm9
  a25531:	62 22 7d 40 7f ee    	vpermt2ps zmm29,zmm16,zmm22
  a25537:	62 32 75 40 7f ce    	vpermt2ps zmm9,zmm17,zmm22
  a2553d:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x40]
  a25544:	01 
  a25545:	62 41 7c 48 28 f0    	vmovaps zmm30,zmm8
  a2554b:	62 22 7d 40 7f f6    	vpermt2ps zmm30,zmm16,zmm22
  a25551:	62 32 75 40 7f c6    	vpermt2ps zmm8,zmm17,zmm22
  a25557:	62 a2 0d 48 77 c6    	vpermi2ps zmm16,zmm14,zmm22
  a2555d:	62 32 75 40 7f f6    	vpermt2ps zmm14,zmm17,zmm22
  a25563:	62 e1 7c 48 28 35 93 	vmovaps zmm22,ZMMWORD PTR [rip+0xffffffffff6a1893]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a2556a:	18 6a ff 
  a2556d:	62 c1 7c 48 28 cc    	vmovaps zmm17,zmm12
  a25573:	62 e2 4d 40 7f ca    	vpermt2ps zmm17,zmm22,zmm2
  a25579:	62 e1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm17
  a25580:	02 
  a25581:	62 61 7c 48 28 3d b5 	vmovaps zmm31,ZMMWORD PTR [rip+0xffffffffff6a18b5]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a25588:	18 6a ff 
  a2558b:	62 72 05 40 7f e2    	vpermt2ps zmm12,zmm31,zmm2
  a25591:	62 c1 7c 48 28 cf    	vmovaps zmm17,zmm15
  a25597:	62 e2 4d 40 7f ce    	vpermt2ps zmm17,zmm22,zmm6
  a2559d:	62 72 05 40 7f fe    	vpermt2ps zmm15,zmm31,zmm6
  a255a3:	62 a1 7c 48 28 dd    	vmovaps zmm19,zmm21
  a255a9:	62 e2 4d 40 7f db    	vpermt2ps zmm19,zmm22,zmm3
  a255af:	62 e2 05 40 7f eb    	vpermt2ps zmm21,zmm31,zmm3
  a255b5:	62 b1 7c 48 28 f5    	vmovaps zmm6,zmm21
  a255bb:	62 81 7c 48 28 ea    	vmovaps zmm21,zmm26
  a255c1:	62 82 4d 40 7f ec    	vpermt2ps zmm21,zmm22,zmm28
  a255c7:	62 02 05 40 7f d4    	vpermt2ps zmm26,zmm31,zmm28
  a255cd:	62 01 7c 48 28 e2    	vmovaps zmm28,zmm26
  a255d3:	62 f2 4d 40 7f 64 24 	vpermt2ps zmm4,zmm22,ZMMWORD PTR [rsp+0x100]
  a255da:	04 
  a255db:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm4
  a255e2:	01 
  a255e3:	62 91 7c 48 28 d1    	vmovaps zmm2,zmm25
  a255e9:	62 f2 6d 40 7f d5    	vpermt2ps zmm2,zmm18,zmm5
  a255ef:	62 62 5d 40 7f cd    	vpermt2ps zmm25,zmm20,zmm5
  a255f5:	62 91 7c 48 28 d8    	vmovaps zmm3,zmm24
  a255fb:	62 92 6d 40 7f dd    	vpermt2ps zmm3,zmm18,zmm29
  a25601:	62 02 5d 40 7f c5    	vpermt2ps zmm24,zmm20,zmm29
  a25607:	62 b1 7c 48 28 ef    	vmovaps zmm5,zmm23
  a2560d:	62 92 6d 40 7f ee    	vpermt2ps zmm5,zmm18,zmm30
  a25613:	62 82 5d 40 7f fe    	vpermt2ps zmm23,zmm20,zmm30
  a25619:	62 01 7c 48 28 d3    	vmovaps zmm26,zmm27
  a2561f:	62 22 5d 40 7f d8    	vpermt2ps zmm27,zmm20,zmm16
  a25625:	62 22 6d 40 7f d0    	vpermt2ps zmm26,zmm18,zmm16
  a2562b:	62 d2 6d 40 7f cd    	vpermt2ps zmm1,zmm18,zmm13
  a25631:	62 d2 6d 40 7f c1    	vpermt2ps zmm0,zmm18,zmm9
  a25637:	62 d2 6d 40 7f f8    	vpermt2ps zmm7,zmm18,zmm8
  a2563d:	62 f1 f5 48 14 cf    	vunpcklpd zmm1,zmm1,zmm7
  a25643:	62 52 6d 40 7f de    	vpermt2ps zmm11,zmm18,zmm14
  a25649:	62 51 fd 48 14 cb    	vunpcklpd zmm9,zmm0,zmm11
  a2564f:	62 71 ed 48 14 ed    	vunpcklpd zmm13,zmm2,zmm5
  a25655:	62 71 ed 48 15 f5    	vunpckhpd zmm14,zmm2,zmm5
  a2565b:	62 91 e5 48 14 d2    	vunpcklpd zmm2,zmm3,zmm26
  a25661:	62 81 e5 48 15 c2    	vunpckhpd zmm16,zmm3,zmm26
  a25667:	62 b1 b5 40 14 ff    	vunpcklpd zmm7,zmm25,zmm23
  a2566d:	62 31 b5 40 15 df    	vunpckhpd zmm11,zmm25,zmm23
  a25673:	62 81 bd 40 14 e3    	vunpcklpd zmm20,zmm24,zmm27
  a25679:	62 81 bd 40 15 fb    	vunpckhpd zmm23,zmm24,zmm27
  a2567f:	62 d1 7c 48 28 dd    	vmovaps zmm3,zmm13
  a25685:	62 f2 4d 40 7f da    	vpermt2ps zmm3,zmm22,zmm2
  a2568b:	62 72 05 40 7f ea    	vpermt2ps zmm13,zmm31,zmm2
  a25691:	62 d1 7c 48 28 ee    	vmovaps zmm5,zmm14
  a25697:	62 b2 4d 40 7f e8    	vpermt2ps zmm5,zmm22,zmm16
  a2569d:	62 32 05 40 7f f0    	vpermt2ps zmm14,zmm31,zmm16
  a256a3:	62 e1 7c 48 28 d7    	vmovaps zmm18,zmm7
  a256a9:	62 a2 4d 40 7f d4    	vpermt2ps zmm18,zmm22,zmm20
  a256af:	62 b2 05 40 7f fc    	vpermt2ps zmm7,zmm31,zmm20
  a256b5:	62 d1 7c 48 28 d3    	vmovaps zmm2,zmm11
  a256bb:	62 b2 4d 40 7f d7    	vpermt2ps zmm2,zmm22,zmm23
  a256c1:	62 32 05 40 7f df    	vpermt2ps zmm11,zmm31,zmm23
  a256c7:	62 d2 4d 40 7f c9    	vpermt2ps zmm1,zmm22,zmm9
  a256cd:	62 61 7c 48 10 4a 02 	vmovups zmm25,ZMMWORD PTR [rdx+0x80]
  a256d4:	62 e1 7c 48 10 7a 03 	vmovups zmm23,ZMMWORD PTR [rdx+0xc0]
  a256db:	62 e1 7c 48 10 72 04 	vmovups zmm22,ZMMWORD PTR [rdx+0x100]
  a256e2:	62 e1 7c 48 10 62 05 	vmovups zmm20,ZMMWORD PTR [rdx+0x140]
  a256e9:	62 e1 7c 48 10 42 06 	vmovups zmm16,ZMMWORD PTR [rdx+0x180]
  a256f0:	62 61 7c 48 10 52 07 	vmovups zmm26,ZMMWORD PTR [rdx+0x1c0]
  a256f7:	62 61 7c 48 10 5a 08 	vmovups zmm27,ZMMWORD PTR [rdx+0x200]
  a256fe:	62 31 04 48 59 c8    	vmulps zmm9,zmm15,zmm16
  a25704:	62 12 0d 48 bc ca    	vfnmadd231ps zmm9,zmm14,zmm26
  a2570a:	62 21 0c 48 59 c0    	vmulps zmm24,zmm14,zmm16
  a25710:	62 71 7c 48 10 72 0c 	vmovups zmm14,ZMMWORD PTR [rdx+0x300]
  a25717:	62 42 2d 40 b8 c7    	vfmadd231ps zmm24,zmm26,zmm15
  a2571d:	62 71 7c 48 10 7a 0d 	vmovups zmm15,ZMMWORD PTR [rdx+0x340]
  a25724:	62 c1 54 40 59 c6    	vmulps zmm16,zmm21,zmm14
  a2572a:	62 c2 6d 48 bc c7    	vfnmadd231ps zmm16,zmm2,zmm15
  a25730:	62 d1 6c 48 59 d6    	vmulps zmm2,zmm2,zmm14
  a25736:	62 61 7c 48 10 52 09 	vmovups zmm26,ZMMWORD PTR [rdx+0x240]
  a2573d:	62 b2 05 48 b8 d5    	vfmadd231ps zmm2,zmm15,zmm21
  a25743:	62 e1 7c 48 10 6a 0a 	vmovups zmm21,ZMMWORD PTR [rdx+0x280]
  a2574a:	62 11 1c 48 59 f1    	vmulps zmm14,zmm12,zmm25
  a25750:	62 32 15 48 bc f7    	vfnmadd231ps zmm14,zmm13,zmm23
  a25756:	62 11 14 48 59 f9    	vmulps zmm15,zmm13,zmm25
  a2575c:	62 71 7c 48 10 6a 0b 	vmovups zmm13,ZMMWORD PTR [rdx+0x2c0]
  a25763:	62 52 45 40 b8 fc    	vfmadd231ps zmm15,zmm23,zmm12
  a25769:	62 71 7c 48 10 62 0e 	vmovups zmm12,ZMMWORD PTR [rdx+0x380]
  a25770:	62 81 64 40 59 fb    	vmulps zmm23,zmm19,zmm27
  a25776:	62 82 6d 40 bc fa    	vfnmadd231ps zmm23,zmm18,zmm26
  a2577c:	62 01 6c 40 59 cb    	vmulps zmm25,zmm18,zmm27
  a25782:	62 e1 7c 48 10 52 0f 	vmovups zmm18,ZMMWORD PTR [rdx+0x3c0]
  a25789:	62 22 2d 40 b8 cb    	vfmadd231ps zmm25,zmm26,zmm19
  a2578f:	62 61 7c 48 10 52 10 	vmovups zmm26,ZMMWORD PTR [rdx+0x400]
  a25796:	62 41 1c 40 59 dc    	vmulps zmm27,zmm28,zmm12
  a2579c:	62 22 25 48 bc da    	vfnmadd231ps zmm27,zmm11,zmm18
  a257a2:	62 51 24 48 59 dc    	vmulps zmm11,zmm11,zmm12
  a257a8:	62 71 7c 48 10 62 11 	vmovups zmm12,ZMMWORD PTR [rdx+0x440]
  a257af:	62 12 6d 40 b8 dc    	vfmadd231ps zmm11,zmm18,zmm28
  a257b5:	62 21 34 48 58 e0    	vaddps zmm28,zmm9,zmm16
  a257bb:	62 a1 74 40 59 d6    	vmulps zmm18,zmm17,zmm22
  a257c1:	62 a2 55 48 bc d4    	vfnmadd231ps zmm18,zmm5,zmm20
  a257c7:	62 a1 54 48 59 de    	vmulps zmm19,zmm5,zmm22
  a257cd:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x80]
  a257d4:	02 
  a257d5:	62 91 5c 48 58 c4    	vaddps zmm0,zmm4,zmm28
  a257db:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm0
  a257e2:	03 
  a257e3:	62 a2 5d 40 b8 d9    	vfmadd231ps zmm19,zmm20,zmm17
  a257e9:	62 81 44 40 58 cb    	vaddps zmm17,zmm23,zmm27
  a257ef:	62 a1 4c 48 59 e5    	vmulps zmm20,zmm6,zmm21
  a257f5:	62 c2 45 48 bc e5    	vfnmadd231ps zmm20,zmm7,zmm13
  a257fb:	62 a1 44 48 59 ed    	vmulps zmm21,zmm7,zmm21
  a25801:	62 b1 0c 48 58 f9    	vaddps zmm7,zmm14,zmm17
  a25807:	62 e2 15 48 b8 ee    	vfmadd231ps zmm21,zmm13,zmm6
  a2580d:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x40]
  a25814:	01 
  a25815:	62 01 7c 48 59 ea    	vmulps zmm29,zmm0,zmm26
  a2581b:	62 42 75 48 bc ec    	vfnmadd231ps zmm29,zmm1,zmm12
  a25821:	62 11 5c 40 58 ed    	vaddps zmm13,zmm20,zmm29
  a25827:	62 01 74 48 59 d2    	vmulps zmm26,zmm1,zmm26
  a2582d:	62 51 6c 40 58 c5    	vaddps zmm8,zmm18,zmm13
  a25833:	62 62 1d 48 b8 d0    	vfmadd231ps zmm26,zmm12,zmm0
  a25839:	62 41 44 48 58 f8    	vaddps zmm31,zmm7,zmm8
  a2583f:	62 71 3c 40 58 e2    	vaddps zmm12,zmm24,zmm2
  a25845:	62 92 2d 48 bc e4    	vfnmadd231ps zmm4,zmm10,zmm28
  a2584b:	62 f1 1c 48 58 f3    	vaddps zmm6,zmm12,zmm3
  a25851:	62 e1 3c 40 5c f2    	vsubps zmm22,zmm24,zmm2
  a25857:	62 d1 34 40 58 d3    	vaddps zmm2,zmm25,zmm11
  a2585d:	62 32 2d 48 bc f1    	vfnmadd231ps zmm14,zmm10,zmm17
  a25863:	62 f1 04 48 58 ca    	vaddps zmm1,zmm15,zmm2
  a25869:	62 c1 34 40 5c cb    	vsubps zmm17,zmm25,zmm11
  a2586f:	62 01 54 40 58 c2    	vaddps zmm24,zmm21,zmm26
  a25875:	62 72 2d 48 bc fa    	vfnmadd231ps zmm15,zmm10,zmm2
  a2587b:	62 11 64 40 58 d8    	vaddps zmm11,zmm19,zmm24
  a25881:	62 62 7d 48 18 35 49 	vbroadcastss zmm30,DWORD PTR [rip+0xffffffffff64fa49]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a25888:	fa 64 ff 
  a2588b:	62 91 74 40 59 d6    	vmulps zmm2,zmm17,zmm30
  a25891:	62 81 44 40 5c cb    	vsubps zmm17,zmm23,zmm27
  a25897:	62 e1 0c 48 58 fa    	vaddps zmm23,zmm14,zmm2
  a2589d:	62 01 74 40 59 ce    	vmulps zmm25,zmm17,zmm30
  a258a3:	62 c2 2d 48 bc d5    	vfnmadd231ps zmm18,zmm10,zmm13
  a258a9:	62 81 04 48 5c c9    	vsubps zmm17,zmm15,zmm25
  a258af:	62 81 54 40 5c ea    	vsubps zmm21,zmm21,zmm26
  a258b5:	62 62 7d 48 18 15 a9 	vbroadcastss zmm26,DWORD PTR [rip+0xffffffffff64fda9]        # 75668 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b18>
  a258bc:	fd 64 ff 
  a258bf:	62 82 2d 48 bc d8    	vfnmadd231ps zmm19,zmm10,zmm24
  a258c5:	62 11 74 40 59 ea    	vmulps zmm13,zmm17,zmm26
  a258cb:	62 81 5c 40 5c e5    	vsubps zmm20,zmm20,zmm29
  a258d1:	62 62 7d 48 18 05 fd 	vbroadcastss zmm24,DWORD PTR [rip+0xffffffffff64fbfd]        # 754d8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2988>
  a258d8:	fb 64 ff 
  a258db:	62 12 45 40 b8 e8    	vfmadd231ps zmm13,zmm23,zmm24
  a258e1:	62 01 54 40 59 de    	vmulps zmm27,zmm21,zmm30
  a258e7:	62 81 74 40 59 c8    	vmulps zmm17,zmm17,zmm24
  a258ed:	62 01 6c 40 58 c3    	vaddps zmm24,zmm18,zmm27
  a258f3:	62 01 5c 40 59 e6    	vmulps zmm28,zmm20,zmm30
  a258f9:	62 82 45 40 bc ca    	vfnmadd231ps zmm17,zmm23,zmm26
  a258ff:	62 e2 7d 48 18 3d 0f 	vbroadcastss zmm23,DWORD PTR [rip+0xffffffffff64fa0f]        # 75318 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x27c8>
  a25906:	fa 64 ff 
  a25909:	62 81 64 40 5c ec    	vsubps zmm21,zmm19,zmm28
  a2590f:	62 d2 2d 48 bc dc    	vfnmadd231ps zmm3,zmm10,zmm12
  a25915:	62 a1 54 40 59 e7    	vmulps zmm20,zmm21,zmm23
  a2591b:	62 31 34 48 5c c8    	vsubps zmm9,zmm9,zmm16
  a25921:	62 e2 7d 48 18 05 b1 	vbroadcastss zmm16,DWORD PTR [rip+0xffffffffff64fbb1]        # 754dc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x298c>
  a25928:	fb 64 ff 
  a2592b:	62 a2 3d 40 b8 e0    	vfmadd231ps zmm20,zmm24,zmm16
  a25931:	62 a1 54 40 59 e8    	vmulps zmm21,zmm21,zmm16
  a25937:	62 82 45 40 bc e8    	vfnmadd231ps zmm21,zmm23,zmm24
  a2593d:	62 d1 74 48 58 eb    	vaddps zmm5,zmm1,zmm11
  a25943:	62 01 4c 40 59 d6    	vmulps zmm26,zmm22,zmm30
  a25949:	62 f1 0c 48 5c d2    	vsubps zmm2,zmm14,zmm2
  a2594f:	62 01 5c 48 58 ea    	vaddps zmm29,zmm4,zmm26
  a25955:	62 81 04 48 58 f1    	vaddps zmm22,zmm15,zmm25
  a2595b:	62 31 14 48 58 fc    	vaddps zmm15,zmm13,zmm20
  a25961:	62 01 6c 40 5c cb    	vsubps zmm25,zmm18,zmm27
  a25967:	62 51 14 40 58 f7    	vaddps zmm14,zmm29,zmm15
  a2596d:	62 01 34 48 59 de    	vmulps zmm27,zmm9,zmm30
  a25973:	62 11 64 40 58 cc    	vaddps zmm9,zmm19,zmm28
  a25979:	62 a1 4c 40 59 d7    	vmulps zmm18,zmm22,zmm23
  a2597f:	62 a2 6d 48 b8 d0    	vfmadd231ps zmm18,zmm2,zmm16
  a25985:	62 21 4c 40 59 c0    	vmulps zmm24,zmm22,zmm16
  a2598b:	62 e2 7d 48 18 05 5b 	vbroadcastss zmm16,DWORD PTR [rip+0xffffffffff64fb5b]        # 754f0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x29a0>
  a25992:	fb 64 ff 
  a25995:	62 22 6d 48 bc c7    	vfnmadd231ps zmm24,zmm2,zmm23
  a2599b:	62 a1 34 48 59 f8    	vmulps zmm23,zmm9,zmm16
  a259a1:	62 f2 7d 48 18 15 4d 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff64fc4d]        # 755f8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2aa8>
  a259a8:	fc 64 ff 
  a259ab:	62 e2 35 40 bc fa    	vfnmadd231ps zmm23,zmm25,zmm2
  a259b1:	62 61 34 48 59 e2    	vmulps zmm28,zmm9,zmm2
  a259b7:	62 91 64 48 5c d3    	vsubps zmm2,zmm3,zmm27
  a259bd:	62 22 35 40 b8 e0    	vfmadd231ps zmm28,zmm25,zmm16
  a259c3:	62 a1 74 40 58 f5    	vaddps zmm22,zmm17,zmm21
  a259c9:	62 31 6c 48 58 e6    	vaddps zmm12,zmm2,zmm22
  a259cf:	62 91 5c 48 5c c2    	vsubps zmm0,zmm4,zmm26
  a259d5:	62 a1 6c 40 58 df    	vaddps zmm19,zmm18,zmm23
  a259db:	62 f1 24 40 58 db    	vaddps zmm3,zmm27,zmm3
  a259e1:	62 21 7c 48 58 cb    	vaddps zmm25,zmm0,zmm19
  a259e7:	62 12 2d 48 ac fd    	vfnmadd213ps zmm15,zmm10,zmm29
  a259ed:	62 81 3c 40 5c c4    	vsubps zmm16,zmm24,zmm28
  a259f3:	62 e2 2d 48 ac f2    	vfnmadd213ps zmm22,zmm10,zmm2
  a259f9:	62 41 7c 48 28 d2    	vmovaps zmm26,zmm10
  a259ff:	62 e2 2d 48 ac d8    	vfnmadd213ps zmm19,zmm10,zmm0
  a25a05:	62 d1 7c 48 28 c2    	vmovaps zmm0,zmm10
  a25a0b:	62 72 7d 40 ac d3    	vfnmadd213ps zmm10,zmm16,zmm3
  a25a11:	62 b1 64 48 58 d8    	vaddps zmm3,zmm3,zmm16
  a25a17:	62 e1 7c 28 28 05 1f 	vmovaps ymm16,YMMWORD PTR [rip+0xffffffffff65121f]        # 76c40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x40f0>
  a25a1e:	12 65 ff 
  a25a21:	62 d1 74 48 5c cb    	vsubps zmm1,zmm1,zmm11
  a25a27:	62 51 7c 48 28 cc    	vmovaps zmm9,zmm12
  a25a2d:	62 52 7d 40 7f ce    	vpermt2ps zmm9,zmm16,zmm14
  a25a33:	62 51 44 48 5c c0    	vsubps zmm8,zmm7,zmm8
  a25a39:	62 f1 7c 48 28 fb    	vmovaps zmm7,zmm3
  a25a3f:	62 92 7d 40 7f f9    	vpermt2ps zmm7,zmm16,zmm25
  a25a45:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0xc0]
  a25a4c:	03 
  a25a4d:	62 91 7c 48 28 d7    	vmovaps zmm2,zmm31
  a25a53:	62 62 05 40 ac d4    	vfnmadd213ps zmm26,zmm31,zmm4
  a25a59:	62 01 74 48 59 de    	vmulps zmm27,zmm1,zmm30
  a25a5f:	62 b1 74 40 5c cd    	vsubps zmm1,zmm17,zmm21
  a25a65:	62 01 2c 40 58 eb    	vaddps zmm29,zmm26,zmm27
  a25a6b:	62 f2 55 48 ac c6    	vfnmadd213ps zmm0,zmm5,zmm6
  a25a71:	62 81 3c 48 59 ee    	vmulps zmm21,zmm8,zmm30
  a25a77:	62 31 14 48 5c ec    	vsubps zmm13,zmm13,zmm20
  a25a7d:	62 31 7c 48 5c c5    	vsubps zmm8,zmm0,zmm21
  a25a83:	62 81 3c 40 58 cc    	vaddps zmm17,zmm24,zmm28
  a25a89:	62 51 7c 48 28 d8    	vmovaps zmm11,zmm8
  a25a8f:	62 12 7d 40 7f dd    	vpermt2ps zmm11,zmm16,zmm29
  a25a95:	62 81 74 48 59 e6    	vmulps zmm20,zmm1,zmm30
  a25a9b:	62 b1 6c 40 5c cf    	vsubps zmm1,zmm18,zmm23
  a25aa1:	62 a1 04 48 58 fc    	vaddps zmm23,zmm15,zmm20
  a25aa7:	62 01 14 48 59 c6    	vmulps zmm24,zmm13,zmm30
  a25aad:	62 01 74 40 59 e6    	vmulps zmm28,zmm17,zmm30
  a25ab3:	62 01 74 48 59 f6    	vmulps zmm30,zmm1,zmm30
  a25ab9:	62 91 4c 40 5c c8    	vsubps zmm1,zmm22,zmm24
  a25abf:	62 01 2c 40 5c d3    	vsubps zmm26,zmm26,zmm27
  a25ac5:	62 e1 7c 48 28 c9    	vmovaps zmm17,zmm1
  a25acb:	62 a2 7d 40 7f cf    	vpermt2ps zmm17,zmm16,zmm23
  a25ad1:	62 31 7c 48 58 ed    	vaddps zmm13,zmm0,zmm21
  a25ad7:	62 01 64 40 58 dc    	vaddps zmm27,zmm19,zmm28
  a25add:	62 21 04 48 5c fc    	vsubps zmm31,zmm15,zmm20
  a25ae3:	62 81 2c 48 5c d6    	vsubps zmm18,zmm10,zmm30
  a25ae9:	62 11 4c 40 58 f8    	vaddps zmm15,zmm22,zmm24
  a25aef:	62 a1 7c 48 28 e2    	vmovaps zmm20,zmm18
  a25af5:	62 82 7d 40 7f e3    	vpermt2ps zmm20,zmm16,zmm27
  a25afb:	62 81 64 40 5c f4    	vsubps zmm22,zmm19,zmm28
  a25b01:	62 c1 7c 48 28 dd    	vmovaps zmm19,zmm13
  a25b07:	62 82 7d 40 7f da    	vpermt2ps zmm19,zmm16,zmm26
  a25b0d:	62 91 2c 48 58 c6    	vaddps zmm0,zmm10,zmm30
  a25b13:	62 c1 7c 48 28 ef    	vmovaps zmm21,zmm15
  a25b19:	62 82 7d 40 7f ef    	vpermt2ps zmm21,zmm16,zmm31
  a25b1f:	62 71 4c 48 58 d5    	vaddps zmm10,zmm6,zmm5
  a25b25:	62 f1 7c 48 28 f0    	vmovaps zmm6,zmm0
  a25b2b:	62 b2 7d 40 7f f6    	vpermt2ps zmm6,zmm16,zmm22
  a25b31:	62 f1 5c 48 58 e2    	vaddps zmm4,zmm4,zmm2
  a25b37:	62 e2 2d 48 77 c4    	vpermi2ps zmm16,zmm10,zmm4
  a25b3d:	62 f1 7c 48 28 2d 79 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff66a779]        # 902c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d770>
  a25b44:	a7 66 ff 
  a25b47:	62 72 55 48 7f d4    	vpermt2ps zmm10,zmm5,zmm4
  a25b4d:	62 52 55 48 7f e6    	vpermt2ps zmm12,zmm5,zmm14
  a25b53:	62 92 55 48 7f d9    	vpermt2ps zmm3,zmm5,zmm25
  a25b59:	62 12 55 48 7f c5    	vpermt2ps zmm8,zmm5,zmm29
  a25b5f:	62 b2 55 48 7f cf    	vpermt2ps zmm1,zmm5,zmm23
  a25b65:	62 82 55 48 7f d3    	vpermt2ps zmm18,zmm5,zmm27
  a25b6b:	62 12 55 48 7f ea    	vpermt2ps zmm13,zmm5,zmm26
  a25b71:	62 12 55 48 7f ff    	vpermt2ps zmm15,zmm5,zmm31
  a25b77:	62 b2 55 48 7f c6    	vpermt2ps zmm0,zmm5,zmm22
  a25b7d:	62 71 7c 48 11 16    	vmovups ZMMWORD PTR [rsi],zmm10
  a25b83:	62 e1 7c 28 11 46 02 	vmovups YMMWORD PTR [rsi+0x40],ymm16
  a25b8a:	62 71 7c 48 11 a6 60 	vmovups ZMMWORD PTR [rsi+0x60],zmm12
  a25b91:	00 00 00 
  a25b94:	c5 7c 11 8e a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm9
  a25b9b:	00 
  a25b9c:	62 f1 7c 48 11 5e 03 	vmovups ZMMWORD PTR [rsi+0xc0],zmm3
  a25ba3:	c5 fc 11 be 00 01 00 	vmovups YMMWORD PTR [rsi+0x100],ymm7
  a25baa:	00 
  a25bab:	62 71 7c 48 11 86 20 	vmovups ZMMWORD PTR [rsi+0x120],zmm8
  a25bb2:	01 00 00 
  a25bb5:	c5 7c 11 9e 60 01 00 	vmovups YMMWORD PTR [rsi+0x160],ymm11
  a25bbc:	00 
  a25bbd:	62 f1 7c 48 11 4e 06 	vmovups ZMMWORD PTR [rsi+0x180],zmm1
  a25bc4:	62 e1 7c 28 11 4e 0e 	vmovups YMMWORD PTR [rsi+0x1c0],ymm17
  a25bcb:	62 e1 7c 48 11 96 e0 	vmovups ZMMWORD PTR [rsi+0x1e0],zmm18
  a25bd2:	01 00 00 
  a25bd5:	62 e1 7c 28 11 66 11 	vmovups YMMWORD PTR [rsi+0x220],ymm20
  a25bdc:	62 71 7c 48 11 6e 09 	vmovups ZMMWORD PTR [rsi+0x240],zmm13
  a25be3:	62 e1 7c 28 11 5e 14 	vmovups YMMWORD PTR [rsi+0x280],ymm19
  a25bea:	62 71 7c 48 11 be a0 	vmovups ZMMWORD PTR [rsi+0x2a0],zmm15
  a25bf1:	02 00 00 
  a25bf4:	62 e1 7c 28 11 6e 17 	vmovups YMMWORD PTR [rsi+0x2e0],ymm21
  a25bfb:	62 f1 7c 48 11 46 0c 	vmovups ZMMWORD PTR [rsi+0x300],zmm0
  a25c02:	c5 fc 11 b6 40 03 00 	vmovups YMMWORD PTR [rsi+0x340],ymm6
  a25c09:	00 
  a25c0a:	48 89 ec             	mov    rsp,rbp
  a25c0d:	5d                   	pop    rbp
  a25c0e:	c5 f8 77             	vzeroupper
  a25c11:	c3                   	ret
