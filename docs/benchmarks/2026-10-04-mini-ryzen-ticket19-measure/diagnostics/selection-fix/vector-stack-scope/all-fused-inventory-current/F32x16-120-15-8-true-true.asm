
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a08ec0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a08ec0:	55                   	push   rbp
  a08ec1:	48 89 e5             	mov    rbp,rsp
  a08ec4:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a08ec8:	48 81 ec 80 03 00 00 	sub    rsp,0x380
  a08ecf:	48 69 c2 c0 03 00 00 	imul   rax,rdx,0x3c0
  a08ed6:	31 d2                	xor    edx,edx
  a08ed8:	4c 8d 84 24 00 03 00 	lea    r8,[rsp+0x300]
  a08edf:	00 
  a08ee0:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  a08ee5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  a08eec:	00 00 00 00 
  a08ef0:	c6 84 24 00 03 00 00 	mov    BYTE PTR [rsp+0x300],0x0
  a08ef7:	00 
  a08ef8:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  a08efd:	62 61 7c 48 10 04 17 	vmovups zmm24,ZMMWORD PTR [rdi+rdx*1]
  a08f04:	62 f1 7c 48 10 64 17 	vmovups zmm4,ZMMWORD PTR [rdi+rdx*1+0x40]
  a08f0b:	01 
  a08f0c:	62 e1 7c 48 10 4c 17 	vmovups zmm17,ZMMWORD PTR [rdi+rdx*1+0x80]
  a08f13:	02 
  a08f14:	62 e1 7c 48 10 7c 17 	vmovups zmm23,ZMMWORD PTR [rdi+rdx*1+0xc0]
  a08f1b:	03 
  a08f1c:	62 01 7c 48 28 e8    	vmovaps zmm29,zmm24
  a08f22:	62 f1 7c 48 28 15 14 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff685814]        # 8e740 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1bbf0>
  a08f29:	58 68 ff 
  a08f2c:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  a08f30:	62 62 6d 48 7f e9    	vpermt2ps zmm29,zmm2,zmm1
  a08f36:	62 f1 7c 48 28 05 40 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff685840]        # 8e780 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1bc30>
  a08f3d:	58 68 ff 
  a08f40:	62 62 7d 48 7f c1    	vpermt2ps zmm24,zmm0,zmm1
  a08f46:	62 61 7c 48 28 dc    	vmovaps zmm27,zmm4
  a08f4c:	62 f2 7d 48 7f e1    	vpermt2ps zmm4,zmm0,zmm1
  a08f52:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm4
  a08f59:	04 
  a08f5a:	62 62 6d 48 7f d9    	vpermt2ps zmm27,zmm2,zmm1
  a08f60:	62 21 7c 48 28 c9    	vmovaps zmm25,zmm17
  a08f66:	62 e2 7d 48 7f c9    	vpermt2ps zmm17,zmm0,zmm1
  a08f6c:	62 21 7c 48 28 f7    	vmovaps zmm30,zmm23
  a08f72:	62 62 6d 48 7f c9    	vpermt2ps zmm25,zmm2,zmm1
  a08f78:	62 e2 7d 48 7f f9    	vpermt2ps zmm23,zmm0,zmm1
  a08f7e:	62 e1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm23
  a08f85:	02 
  a08f86:	62 71 7c 48 10 74 17 	vmovups zmm14,ZMMWORD PTR [rdi+rdx*1+0x100]
  a08f8d:	04 
  a08f8e:	62 41 7c 48 28 e6    	vmovaps zmm28,zmm14
  a08f94:	62 62 6d 48 7f f1    	vpermt2ps zmm30,zmm2,zmm1
  a08f9a:	62 72 7d 48 7f f1    	vpermt2ps zmm14,zmm0,zmm1
  a08fa0:	62 e1 7c 48 10 64 17 	vmovups zmm20,ZMMWORD PTR [rdi+rdx*1+0x140]
  a08fa7:	05 
  a08fa8:	62 a1 7c 48 28 dc    	vmovaps zmm19,zmm20
  a08fae:	62 62 6d 48 7f e1    	vpermt2ps zmm28,zmm2,zmm1
  a08fb4:	62 e2 7d 48 7f e1    	vpermt2ps zmm20,zmm0,zmm1
  a08fba:	62 e1 7c 48 10 54 17 	vmovups zmm18,ZMMWORD PTR [rdi+rdx*1+0x180]
  a08fc1:	06 
  a08fc2:	62 21 7c 48 28 d2    	vmovaps zmm26,zmm18
  a08fc8:	62 e2 6d 48 7f d9    	vpermt2ps zmm19,zmm2,zmm1
  a08fce:	62 e2 7d 48 7f d1    	vpermt2ps zmm18,zmm0,zmm1
  a08fd4:	62 f1 7c 48 10 64 17 	vmovups zmm4,ZMMWORD PTR [rdi+rdx*1+0x1c0]
  a08fdb:	07 
  a08fdc:	62 f1 7c 48 28 ec    	vmovaps zmm5,zmm4
  a08fe2:	62 62 6d 48 7f d1    	vpermt2ps zmm26,zmm2,zmm1
  a08fe8:	62 f2 7d 48 7f e1    	vpermt2ps zmm4,zmm0,zmm1
  a08fee:	62 71 7c 48 10 64 17 	vmovups zmm12,ZMMWORD PTR [rdi+rdx*1+0x200]
  a08ff5:	08 
  a08ff6:	62 51 7c 48 28 dc    	vmovaps zmm11,zmm12
  a08ffc:	62 f2 6d 48 7f e9    	vpermt2ps zmm5,zmm2,zmm1
  a09002:	62 72 7d 48 7f e1    	vpermt2ps zmm12,zmm0,zmm1
  a09008:	62 71 7c 48 10 54 17 	vmovups zmm10,ZMMWORD PTR [rdi+rdx*1+0x240]
  a0900f:	09 
  a09010:	62 51 7c 48 28 ca    	vmovaps zmm9,zmm10
  a09016:	62 72 6d 48 7f d9    	vpermt2ps zmm11,zmm2,zmm1
  a0901c:	62 72 7d 48 7f d1    	vpermt2ps zmm10,zmm0,zmm1
  a09022:	62 e1 7c 48 10 74 17 	vmovups zmm22,ZMMWORD PTR [rdi+rdx*1+0x280]
  a09029:	0a 
  a0902a:	62 a1 7c 48 28 ee    	vmovaps zmm21,zmm22
  a09030:	62 72 6d 48 7f c9    	vpermt2ps zmm9,zmm2,zmm1
  a09036:	62 e2 7d 48 7f f1    	vpermt2ps zmm22,zmm0,zmm1
  a0903c:	62 f1 7c 48 10 7c 17 	vmovups zmm7,ZMMWORD PTR [rdi+rdx*1+0x2c0]
  a09043:	0b 
  a09044:	62 71 7c 48 28 ef    	vmovaps zmm13,zmm7
  a0904a:	62 e2 6d 48 7f e9    	vpermt2ps zmm21,zmm2,zmm1
  a09050:	62 f2 7d 48 7f f9    	vpermt2ps zmm7,zmm0,zmm1
  a09056:	62 71 7c 48 10 7c 17 	vmovups zmm15,ZMMWORD PTR [rdi+rdx*1+0x300]
  a0905d:	0c 
  a0905e:	62 d1 7c 48 28 f7    	vmovaps zmm6,zmm15
  a09064:	62 72 6d 48 7f e9    	vpermt2ps zmm13,zmm2,zmm1
  a0906a:	62 72 7d 48 7f f9    	vpermt2ps zmm15,zmm0,zmm1
  a09070:	62 71 7c 48 10 44 17 	vmovups zmm8,ZMMWORD PTR [rdi+rdx*1+0x340]
  a09077:	0d 
  a09078:	62 c1 7c 48 28 c0    	vmovaps zmm16,zmm8
  a0907e:	62 f2 6d 48 7f f1    	vpermt2ps zmm6,zmm2,zmm1
  a09084:	62 72 7d 48 7f c1    	vpermt2ps zmm8,zmm0,zmm1
  a0908a:	62 f1 7c 48 10 5c 17 	vmovups zmm3,ZMMWORD PTR [rdi+rdx*1+0x380]
  a09091:	0e 
  a09092:	62 61 7c 48 28 fb    	vmovaps zmm31,zmm3
  a09098:	62 e2 6d 48 7f c1    	vpermt2ps zmm16,zmm2,zmm1
  a0909e:	62 62 6d 48 7f f9    	vpermt2ps zmm31,zmm2,zmm1
  a090a4:	62 f2 7d 48 7f d9    	vpermt2ps zmm3,zmm0,zmm1
  a090aa:	62 d1 44 40 58 c7    	vaddps zmm0,zmm23,zmm15
  a090b0:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a090b7:	01 
  a090b8:	62 91 24 48 58 c1    	vaddps zmm0,zmm11,zmm25
  a090be:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm0
  a090c5:	09 
  a090c6:	62 91 24 48 5c c1    	vsubps zmm0,zmm11,zmm25
  a090cc:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm0
  a090d3:	07 
  a090d4:	62 91 14 48 58 c7    	vaddps zmm0,zmm13,zmm31
  a090da:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm0
  a090e1:	08 
  a090e2:	62 11 14 48 5c ef    	vsubps zmm13,zmm13,zmm31
  a090e8:	62 f1 7c 40 58 c5    	vaddps zmm0,zmm16,zmm5
  a090ee:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm0
  a090f5:	0a 
  a090f6:	62 f1 7c 40 5c c5    	vsubps zmm0,zmm16,zmm5
  a090fc:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm0
  a09103:	06 
  a09104:	62 01 24 40 58 fc    	vaddps zmm31,zmm27,zmm28
  a0910a:	62 01 24 40 5c e4    	vsubps zmm28,zmm27,zmm28
  a09110:	62 f1 0c 40 58 c6    	vaddps zmm0,zmm30,zmm6
  a09116:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm0
  a0911d:	03 
  a0911e:	62 f1 0c 40 5c f6    	vsubps zmm6,zmm30,zmm6
  a09124:	62 41 2c 40 58 f1    	vaddps zmm30,zmm26,zmm9
  a0912a:	62 c1 2c 40 5c c1    	vsubps zmm16,zmm26,zmm9
  a09130:	62 b1 1c 48 58 d1    	vaddps zmm2,zmm12,zmm17
  a09136:	62 21 1c 48 5c d1    	vsubps zmm26,zmm12,zmm17
  a0913c:	62 71 44 48 58 e3    	vaddps zmm12,zmm7,zmm3
  a09142:	62 f1 44 48 5c fb    	vsubps zmm7,zmm7,zmm3
  a09148:	62 f1 3c 48 58 cc    	vaddps zmm1,zmm8,zmm4
  a0914e:	62 61 3c 48 5c dc    	vsubps zmm27,zmm8,zmm4
  a09154:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x100]
  a0915b:	04 
  a0915c:	62 d1 64 48 58 c6    	vaddps zmm0,zmm3,zmm14
  a09162:	62 c1 64 48 5c fe    	vsubps zmm23,zmm3,zmm14
  a09168:	62 d1 6c 40 58 ea    	vaddps zmm5,zmm18,zmm10
  a0916e:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x80]
  a09175:	02 
  a09176:	62 51 64 48 5c ff    	vsubps zmm15,zmm3,zmm15
  a0917c:	62 e2 7d 48 18 0d 62 	vbroadcastss zmm17,DWORD PTR [rip+0xffffffffff66c562]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a09183:	c5 66 ff 
  a09186:	62 21 7c 48 28 c9    	vmovaps zmm25,zmm17
  a0918c:	62 d1 6c 40 5c da    	vsubps zmm3,zmm18,zmm10
  a09192:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm3
  a09199:	05 
  a0919a:	62 f1 5c 40 58 e2    	vaddps zmm4,zmm20,zmm2
  a091a0:	62 22 6d 48 a8 cc    	vfmadd213ps zmm25,zmm2,zmm20
  a091a6:	62 f2 7d 48 18 1d 94 	vbroadcastss zmm3,DWORD PTR [rip+0xffffffffff66c494]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a091ad:	c4 66 ff 
  a091b0:	62 e2 65 48 bc e2    	vfnmadd231ps zmm20,zmm3,zmm2
  a091b6:	62 f1 4c 40 58 d1    	vaddps zmm2,zmm22,zmm1
  a091bc:	62 d1 5c 48 58 e4    	vaddps zmm4,zmm4,zmm12
  a091c2:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm4
  a091c9:	04 
  a091ca:	62 62 1d 48 bc cb    	vfnmadd231ps zmm25,zmm12,zmm3
  a091d0:	62 c2 75 40 b8 e4    	vfmadd231ps zmm20,zmm17,zmm12
  a091d6:	62 31 7c 48 28 d9    	vmovaps zmm11,zmm17
  a091dc:	62 32 75 48 a8 de    	vfmadd213ps zmm11,zmm1,zmm22
  a091e2:	62 e2 65 48 bc f1    	vfnmadd231ps zmm22,zmm3,zmm1
  a091e8:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x40]
  a091ef:	01 
  a091f0:	62 f1 3c 40 58 cc    	vaddps zmm1,zmm24,zmm4
  a091f6:	62 f1 6c 48 58 d0    	vaddps zmm2,zmm2,zmm0
  a091fc:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm2
  a09203:	0b 
  a09204:	62 72 7d 48 bc db    	vfnmadd231ps zmm11,zmm0,zmm3
  a0920a:	62 e2 75 40 b8 f0    	vfmadd231ps zmm22,zmm17,zmm0
  a09210:	62 31 7c 48 28 e1    	vmovaps zmm12,zmm17
  a09216:	62 12 5d 48 a8 e0    	vfmadd213ps zmm12,zmm4,zmm24
  a0921c:	62 f1 74 48 58 c5    	vaddps zmm0,zmm1,zmm5
  a09222:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm0
  a09229:	02 
  a0922a:	62 62 65 48 bc c4    	vfnmadd231ps zmm24,zmm3,zmm4
  a09230:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x240]
  a09237:	09 
  a09238:	62 d1 64 40 58 e2    	vaddps zmm4,zmm19,zmm10
  a0923e:	62 72 55 48 bc e3    	vfnmadd231ps zmm12,zmm5,zmm3
  a09244:	62 62 75 40 b8 c5    	vfmadd231ps zmm24,zmm17,zmm5
  a0924a:	62 f2 7d 48 18 05 04 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff66c504]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a09251:	c5 66 ff 
  a09254:	62 e1 14 48 59 d0    	vmulps zmm18,zmm13,zmm0
  a0925a:	62 f2 7d 48 18 15 3c 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff66c13c]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a09261:	c1 66 ff 
  a09264:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x1c0]
  a0926b:	07 
  a0926c:	62 e2 75 48 b8 d2    	vfmadd231ps zmm18,zmm1,zmm2
  a09272:	62 71 74 48 59 c8    	vmulps zmm9,zmm1,zmm0
  a09278:	62 52 6d 48 bc cd    	vfnmadd231ps zmm9,zmm2,zmm13
  a0927e:	62 71 1c 40 59 e8    	vmulps zmm13,zmm28,zmm0
  a09284:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x180]
  a0928b:	06 
  a0928c:	62 72 75 48 b8 ea    	vfmadd231ps zmm13,zmm1,zmm2
  a09292:	62 71 74 48 59 c0    	vmulps zmm8,zmm1,zmm0
  a09298:	62 12 6d 48 bc c4    	vfnmadd231ps zmm8,zmm2,zmm28
  a0929e:	62 71 7c 40 59 f0    	vmulps zmm14,zmm16,zmm0
  a092a4:	62 72 4d 48 b8 f2    	vfmadd231ps zmm14,zmm6,zmm2
  a092aa:	62 f1 4c 48 59 e8    	vmulps zmm5,zmm6,zmm0
  a092b0:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x200]
  a092b7:	08 
  a092b8:	62 f1 5c 48 58 ce    	vaddps zmm1,zmm4,zmm6
  a092be:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm1
  a092c5:	01 
  a092c6:	62 b2 6d 48 bc e8    	vfnmadd231ps zmm5,zmm2,zmm16
  a092cc:	62 b1 7c 48 28 e1    	vmovaps zmm4,zmm17
  a092d2:	62 b2 2d 48 a8 e3    	vfmadd213ps zmm4,zmm10,zmm19
  a092d8:	62 f2 4d 48 bc e3    	vfnmadd231ps zmm4,zmm6,zmm3
  a092de:	62 c2 65 48 bc da    	vfnmadd231ps zmm19,zmm3,zmm10
  a092e4:	62 e1 44 48 59 c0    	vmulps zmm16,zmm7,zmm0
  a092ea:	62 e2 2d 40 b8 c2    	vfmadd231ps zmm16,zmm26,zmm2
  a092f0:	62 e2 75 40 b8 de    	vfmadd231ps zmm19,zmm17,zmm6
  a092f6:	62 21 7c 48 28 e1    	vmovaps zmm28,zmm17
  a092fc:	62 61 2c 40 59 d0    	vmulps zmm26,zmm26,zmm0
  a09302:	62 62 6d 48 bc d7    	vfnmadd231ps zmm26,zmm2,zmm7
  a09308:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x280]
  a0930f:	0a 
  a09310:	62 f1 54 40 58 ce    	vaddps zmm1,zmm21,zmm6
  a09316:	62 22 4d 48 a8 e5    	vfmadd213ps zmm28,zmm6,zmm21
  a0931c:	62 e2 65 48 bc ee    	vfnmadd231ps zmm21,zmm3,zmm6
  a09322:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0xc0]
  a09329:	03 
  a0932a:	62 f1 14 40 58 fe    	vaddps zmm7,zmm29,zmm6
  a09330:	62 91 74 48 58 cf    	vaddps zmm1,zmm1,zmm31
  a09336:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm1
  a0933d:	07 
  a0933e:	62 62 05 40 bc e3    	vfnmadd231ps zmm28,zmm31,zmm3
  a09344:	62 82 75 40 b8 ef    	vfmadd231ps zmm21,zmm17,zmm31
  a0934a:	62 71 44 40 59 d0    	vmulps zmm10,zmm23,zmm0
  a09350:	62 72 25 40 b8 d2    	vfmadd231ps zmm10,zmm27,zmm2
  a09356:	62 f1 24 40 59 c8    	vmulps zmm1,zmm27,zmm0
  a0935c:	62 b2 6d 48 bc cf    	vfnmadd231ps zmm1,zmm2,zmm23
  a09362:	62 21 7c 48 28 f9    	vmovaps zmm31,zmm17
  a09368:	62 01 44 48 58 de    	vaddps zmm27,zmm7,zmm30
  a0936e:	62 02 4d 48 a8 fd    	vfmadd213ps zmm31,zmm6,zmm29
  a09374:	62 62 65 48 bc ee    	vfnmadd231ps zmm29,zmm3,zmm6
  a0937a:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x140]
  a09381:	05 
  a09382:	62 f1 44 48 59 f0    	vmulps zmm6,zmm7,zmm0
  a09388:	62 62 0d 40 bc fb    	vfnmadd231ps zmm31,zmm30,zmm3
  a0938e:	62 f2 05 48 b8 f2    	vfmadd231ps zmm6,zmm15,zmm2
  a09394:	62 02 75 40 b8 ee    	vfmadd231ps zmm29,zmm17,zmm30
  a0939a:	62 71 04 48 59 f8    	vmulps zmm15,zmm15,zmm0
  a093a0:	62 b1 5c 48 5c d8    	vsubps zmm3,zmm4,zmm16
  a093a6:	62 72 6d 48 bc ff    	vfnmadd231ps zmm15,zmm2,zmm7
  a093ac:	62 f1 3c 40 58 c5    	vaddps zmm0,zmm24,zmm5
  a093b2:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm0
  a093b9:	06 
  a093ba:	62 61 3c 40 5c f5    	vsubps zmm30,zmm24,zmm5
  a093c0:	62 d1 5c 40 58 d1    	vaddps zmm2,zmm20,zmm9
  a093c6:	62 d1 5c 40 5c c1    	vsubps zmm0,zmm20,zmm9
  a093cc:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm0
  a093d3:	03 
  a093d4:	62 c1 4c 40 58 f8    	vaddps zmm23,zmm22,zmm8
  a093da:	62 c1 4c 40 5c e0    	vsubps zmm20,zmm22,zmm8
  a093e0:	62 d1 14 40 5c c7    	vsubps zmm0,zmm29,zmm15
  a093e6:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm0
  a093ed:	0a 
  a093ee:	62 11 04 48 58 fd    	vaddps zmm15,zmm15,zmm29
  a093f4:	62 91 64 40 5c ea    	vsubps zmm5,zmm19,zmm26
  a093fa:	62 a1 2c 40 58 db    	vaddps zmm19,zmm26,zmm19
  a09400:	62 71 54 40 5c c1    	vsubps zmm8,zmm21,zmm1
  a09406:	62 a1 74 48 58 f5    	vaddps zmm22,zmm1,zmm21
  a0940c:	62 d1 1c 40 5c c2    	vsubps zmm0,zmm28,zmm10
  a09412:	62 f1 64 48 5c c8    	vsubps zmm1,zmm3,zmm0
  a09418:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm1
  a0941f:	09 
  a09420:	62 61 64 48 58 c0    	vaddps zmm24,zmm3,zmm0
  a09426:	62 b1 34 40 58 da    	vaddps zmm3,zmm25,zmm18
  a0942c:	62 c1 24 48 58 cd    	vaddps zmm17,zmm11,zmm13
  a09432:	62 21 64 48 58 d1    	vaddps zmm26,zmm3,zmm17
  a09438:	62 b1 64 48 5c c1    	vsubps zmm0,zmm3,zmm17
  a0943e:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm0
  a09445:	08 
  a09446:	62 a1 34 40 5c ca    	vsubps zmm17,zmm25,zmm18
  a0944c:	62 51 24 48 5c cd    	vsubps zmm9,zmm11,zmm13
  a09452:	62 51 54 48 5c e8    	vsubps zmm13,zmm5,zmm8
  a09458:	62 c1 54 48 58 e8    	vaddps zmm21,zmm5,zmm8
  a0945e:	62 d1 1c 48 58 ee    	vaddps zmm5,zmm12,zmm14
  a09464:	62 41 1c 48 5c ce    	vsubps zmm25,zmm12,zmm14
  a0946a:	62 31 6c 48 58 e7    	vaddps zmm12,zmm2,zmm23
  a09470:	62 31 6c 48 5c f7    	vsubps zmm14,zmm2,zmm23
  a09476:	62 f1 7c 40 58 cc    	vaddps zmm1,zmm16,zmm4
  a0947c:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x100]
  a09483:	04 
  a09484:	62 e1 7c 48 28 54 24 	vmovaps zmm18,ZMMWORD PTR [rsp+0x2c0]
  a0948b:	0b 
  a0948c:	62 a1 7c 48 58 fa    	vaddps zmm23,zmm0,zmm18
  a09492:	62 91 2c 48 58 e4    	vaddps zmm4,zmm10,zmm28
  a09498:	62 e1 74 48 5c c4    	vsubps zmm16,zmm1,zmm4
  a0949e:	62 f1 74 48 58 fc    	vaddps zmm7,zmm1,zmm4
  a094a4:	62 71 04 40 5c de    	vsubps zmm11,zmm31,zmm6
  a094aa:	62 91 4c 48 58 d7    	vaddps zmm2,zmm6,zmm31
  a094b0:	62 41 74 40 58 e1    	vaddps zmm28,zmm17,zmm9
  a094b6:	62 d1 74 40 5c c9    	vsubps zmm1,zmm17,zmm9
  a094bc:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm1
  a094c3:	05 
  a094c4:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x80]
  a094cb:	02 
  a094cc:	62 b1 74 48 58 e7    	vaddps zmm4,zmm1,zmm23
  a094d2:	62 f2 7d 48 18 35 84 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff66bf84]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a094d9:	bf 66 ff 
  a094dc:	62 e2 4d 48 ac f9    	vfnmadd213ps zmm23,zmm6,zmm1
  a094e2:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x40]
  a094e9:	01 
  a094ea:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x1c0]
  a094f1:	07 
  a094f2:	62 61 74 48 58 fb    	vaddps zmm31,zmm1,zmm3
  a094f8:	62 61 74 48 5c eb    	vsubps zmm29,zmm1,zmm3
  a094fe:	62 81 24 40 58 cf    	vaddps zmm17,zmm27,zmm31
  a09504:	62 02 4d 48 ac fb    	vfnmadd213ps zmm31,zmm6,zmm27
  a0950a:	62 61 7c 48 28 de    	vmovaps zmm27,zmm6
  a09510:	62 62 2d 40 ac dd    	vfnmadd213ps zmm27,zmm26,zmm5
  a09516:	62 b1 7c 48 5c ca    	vsubps zmm1,zmm0,zmm18
  a0951c:	62 f1 7c 48 28 de    	vmovaps zmm3,zmm6
  a09522:	62 d2 3d 40 ac db    	vfnmadd213ps zmm3,zmm24,zmm11
  a09528:	62 11 54 48 58 ca    	vaddps zmm9,zmm5,zmm26
  a0952e:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0xc0]
  a09535:	03 
  a09536:	62 21 7c 48 58 d4    	vaddps zmm26,zmm0,zmm20
  a0953c:	62 91 24 48 58 e8    	vaddps zmm5,zmm11,zmm24
  a09542:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm5
  a09549:	04 
  a0954a:	62 91 0c 40 58 ea    	vaddps zmm5,zmm30,zmm26
  a09550:	62 02 4d 48 ac d6    	vfnmadd213ps zmm26,zmm6,zmm30
  a09556:	62 21 64 40 58 f6    	vaddps zmm30,zmm19,zmm22
  a0955c:	62 31 64 40 5c d6    	vsubps zmm10,zmm19,zmm22
  a09562:	62 e1 7c 48 28 de    	vmovaps zmm19,zmm6
  a09568:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x180]
  a0956f:	06 
  a09570:	62 c2 1d 48 ac d8    	vfnmadd213ps zmm19,zmm12,zmm8
  a09576:	62 62 7d 48 18 05 54 	vbroadcastss zmm24,DWORD PTR [rip+0xffffffffff66bd54]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a0957d:	bd 66 ff 
  a09580:	62 11 14 48 59 e8    	vmulps zmm13,zmm13,zmm24
  a09586:	62 51 64 40 5c dd    	vsubps zmm11,zmm19,zmm13
  a0958c:	62 c1 64 40 58 dd    	vaddps zmm19,zmm19,zmm13
  a09592:	62 81 04 48 58 f6    	vaddps zmm22,zmm15,zmm30
  a09598:	62 42 4d 48 ac f7    	vfnmadd213ps zmm30,zmm6,zmm15
  a0959e:	62 31 7c 48 5c fc    	vsubps zmm15,zmm0,zmm20
  a095a4:	62 e1 7c 48 28 d6    	vmovaps zmm18,zmm6
  a095aa:	62 82 1d 40 ac d1    	vfnmadd213ps zmm18,zmm28,zmm25
  a095b0:	62 91 34 40 58 c4    	vaddps zmm0,zmm25,zmm28
  a095b6:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a095bd:	01 
  a095be:	62 61 7c 48 28 ce    	vmovaps zmm25,zmm6
  a095c4:	62 62 45 48 ac ca    	vfnmadd213ps zmm25,zmm7,zmm2
  a095ca:	62 11 14 40 59 e8    	vmulps zmm13,zmm29,zmm24
  a095d0:	62 91 74 48 59 c8    	vmulps zmm1,zmm1,zmm24
  a095d6:	62 f1 6c 48 58 c7    	vaddps zmm0,zmm2,zmm7
  a095dc:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm0
  a095e3:	03 
  a095e4:	62 41 44 40 5c ed    	vsubps zmm29,zmm23,zmm13
  a095ea:	62 c1 44 40 58 fd    	vaddps zmm23,zmm23,zmm13
  a095f0:	62 81 74 48 58 e7    	vaddps zmm20,zmm1,zmm31
  a095f6:	62 f1 04 40 5c c1    	vsubps zmm0,zmm31,zmm1
  a095fc:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm0
  a09603:	02 
  a09604:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x280]
  a0960b:	0a 
  a0960c:	62 b1 7c 48 28 c5    	vmovaps zmm0,zmm21
  a09612:	62 f2 55 40 ac f2    	vfnmadd213ps zmm6,zmm21,zmm2
  a09618:	62 91 0c 48 59 f8    	vmulps zmm7,zmm14,zmm24
  a0961e:	62 61 4c 48 58 e7    	vaddps zmm28,zmm6,zmm7
  a09624:	62 e1 4c 48 5c ef    	vsubps zmm21,zmm6,zmm7
  a0962a:	62 f1 3c 40 59 4c 24 	vmulps zmm1,zmm24,ZMMWORD PTR [rsp+0x240]
  a09631:	09 
  a09632:	62 91 74 48 58 fb    	vaddps zmm7,zmm1,zmm27
  a09638:	62 71 24 40 5c f1    	vsubps zmm14,zmm27,zmm1
  a0963e:	62 f1 3c 40 59 4c 24 	vmulps zmm1,zmm24,ZMMWORD PTR [rsp+0x200]
  a09645:	08 
  a09646:	62 71 64 48 5c e9    	vsubps zmm13,zmm3,zmm1
  a0964c:	62 61 64 48 58 f9    	vaddps zmm31,zmm3,zmm1
  a09652:	62 d1 3c 48 58 f4    	vaddps zmm6,zmm8,zmm12
  a09658:	62 91 7c 40 59 c8    	vmulps zmm1,zmm16,zmm24
  a0965e:	62 11 2c 48 59 d0    	vmulps zmm10,zmm10,zmm24
  a09664:	62 11 04 48 59 e0    	vmulps zmm12,zmm15,zmm24
  a0966a:	62 71 6c 48 58 c0    	vaddps zmm8,zmm2,zmm0
  a09670:	62 51 2c 40 5c fa    	vsubps zmm15,zmm26,zmm10
  a09676:	62 41 2c 40 58 d2    	vaddps zmm26,zmm26,zmm10
  a0967c:	62 51 0c 40 58 d4    	vaddps zmm10,zmm30,zmm12
  a09682:	62 51 0c 40 5c e4    	vsubps zmm12,zmm30,zmm12
  a09688:	62 21 74 48 58 da    	vaddps zmm27,zmm1,zmm18
  a0968e:	62 e1 3c 40 59 44 24 	vmulps zmm16,zmm24,ZMMWORD PTR [rsp+0x140]
  a09695:	05 
  a09696:	62 e1 6c 40 5c d1    	vsubps zmm18,zmm18,zmm1
  a0969c:	62 b1 34 40 5c c8    	vsubps zmm1,zmm25,zmm16
  a096a2:	62 a1 34 40 58 c0    	vaddps zmm16,zmm25,zmm16
  a096a8:	62 61 7c 48 28 35 ce 	vmovaps zmm30,ZMMWORD PTR [rip+0xffffffffff6bd8ce]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a096af:	d8 6b ff 
  a096b2:	62 d2 0d 40 7f e7    	vpermt2ps zmm4,zmm30,zmm15
  a096b8:	62 f2 0d 40 7f 7c 24 	vpermt2ps zmm7,zmm30,ZMMWORD PTR [rsp+0x40]
  a096bf:	01 
  a096c0:	62 32 0d 40 7f df    	vpermt2ps zmm11,zmm30,zmm23
  a096c6:	62 d2 0d 40 7f ee    	vpermt2ps zmm5,zmm30,zmm14
  a096cc:	62 62 0d 40 7f de    	vpermt2ps zmm27,zmm30,zmm6
  a096d2:	62 02 0d 40 7f ea    	vpermt2ps zmm29,zmm30,zmm26
  a096d8:	62 32 0d 40 7f ca    	vpermt2ps zmm9,zmm30,zmm18
  a096de:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a096e2:	62 e2 0d 40 7f da    	vpermt2ps zmm19,zmm30,zmm2
  a096e8:	62 f1 7c 48 28 c4    	vmovaps zmm0,zmm4
  a096ee:	62 61 7c 48 28 15 08 	vmovaps zmm26,ZMMWORD PTR [rip+0xffffffffff6bd808]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a096f5:	d8 6b ff 
  a096f8:	62 92 2d 40 7f c3    	vpermt2ps zmm0,zmm26,zmm27
  a096fe:	62 e1 7c 48 28 15 38 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff6bd838]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a09705:	d8 6b ff 
  a09708:	62 92 6d 40 7f e3    	vpermt2ps zmm4,zmm18,zmm27
  a0970e:	62 f1 7c 48 28 f7    	vmovaps zmm6,zmm7
  a09714:	62 92 2d 40 7f f5    	vpermt2ps zmm6,zmm26,zmm29
  a0971a:	62 92 6d 40 7f fd    	vpermt2ps zmm7,zmm18,zmm29
  a09720:	62 51 7c 48 28 fb    	vmovaps zmm15,zmm11
  a09726:	62 52 2d 40 7f f9    	vpermt2ps zmm15,zmm26,zmm9
  a0972c:	62 52 6d 40 7f d9    	vpermt2ps zmm11,zmm18,zmm9
  a09732:	62 71 7c 48 28 cd    	vmovaps zmm9,zmm5
  a09738:	62 b2 6d 40 7f eb    	vpermt2ps zmm5,zmm18,zmm19
  a0973e:	62 32 2d 40 7f cb    	vpermt2ps zmm9,zmm26,zmm19
  a09744:	62 51 dd 48 14 f3    	vunpcklpd zmm14,zmm4,zmm11
  a0974a:	62 c1 dd 48 15 db    	vunpckhpd zmm19,zmm4,zmm11
  a09750:	62 c1 fd 48 14 ff    	vunpcklpd zmm23,zmm0,zmm15
  a09756:	62 41 fd 48 15 c7    	vunpckhpd zmm24,zmm0,zmm15
  a0975c:	62 f1 c5 48 14 c5    	vunpcklpd zmm0,zmm7,zmm5
  a09762:	62 61 c5 48 15 cd    	vunpckhpd zmm25,zmm7,zmm5
  a09768:	62 41 cd 48 14 d9    	vunpcklpd zmm27,zmm6,zmm9
  a0976e:	62 51 cd 48 15 f9    	vunpckhpd zmm15,zmm6,zmm9
  a09774:	62 c2 0d 40 7f ca    	vpermt2ps zmm17,zmm30,zmm10
  a0977a:	62 72 0d 40 7f 6c 24 	vpermt2ps zmm13,zmm30,ZMMWORD PTR [rsp+0xc0]
  a09781:	03 
  a09782:	62 51 7c 48 28 de    	vmovaps zmm11,zmm14
  a09788:	62 61 7c 48 28 2d ae 	vmovaps zmm29,ZMMWORD PTR [rip+0xffffffffff6bd6ae]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a0978f:	d6 6b ff 
  a09792:	62 72 15 40 7f f0    	vpermt2ps zmm14,zmm29,zmm0
  a09798:	62 62 0d 40 7f 64 24 	vpermt2ps zmm28,zmm30,ZMMWORD PTR [rsp+0x80]
  a0979f:	02 
  a097a0:	62 82 0d 40 7f f7    	vpermt2ps zmm22,zmm30,zmm31
  a097a6:	62 d2 0d 40 7f c8    	vpermt2ps zmm1,zmm30,zmm8
  a097ac:	62 31 7c 48 28 d3    	vmovaps zmm10,zmm19
  a097b2:	62 c2 0d 40 7f e4    	vpermt2ps zmm20,zmm30,zmm12
  a097b8:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x100]
  a097bf:	04 
  a097c0:	62 b2 0d 40 7f e0    	vpermt2ps zmm4,zmm30,zmm16
  a097c6:	62 e2 0d 40 7f ea    	vpermt2ps zmm21,zmm30,zmm2
  a097cc:	62 82 15 40 7f d9    	vpermt2ps zmm19,zmm29,zmm25
  a097d2:	62 b1 7c 48 28 e9    	vmovaps zmm5,zmm17
  a097d8:	62 f2 2d 40 7f e9    	vpermt2ps zmm5,zmm26,zmm1
  a097de:	62 e2 6d 40 7f c9    	vpermt2ps zmm17,zmm18,zmm1
  a097e4:	62 b1 7c 48 28 cf    	vmovaps zmm1,zmm23
  a097ea:	62 d1 7c 48 28 fd    	vmovaps zmm7,zmm13
  a097f0:	62 b2 2d 40 7f fc    	vpermt2ps zmm7,zmm26,zmm20
  a097f6:	62 32 6d 40 7f ec    	vpermt2ps zmm13,zmm18,zmm20
  a097fc:	62 82 15 40 7f fb    	vpermt2ps zmm23,zmm29,zmm27
  a09802:	62 11 7c 48 28 c4    	vmovaps zmm8,zmm28
  a09808:	62 72 2d 40 7f c4    	vpermt2ps zmm8,zmm26,zmm4
  a0980e:	62 62 6d 40 7f e4    	vpermt2ps zmm28,zmm18,zmm4
  a09814:	62 91 7c 48 28 e0    	vmovaps zmm4,zmm24
  a0981a:	62 31 7c 48 28 ce    	vmovaps zmm9,zmm22
  a09820:	62 32 2d 40 7f cd    	vpermt2ps zmm9,zmm26,zmm21
  a09826:	62 a2 6d 40 7f f5    	vpermt2ps zmm22,zmm18,zmm21
  a0982c:	62 42 15 40 7f c7    	vpermt2ps zmm24,zmm29,zmm15
  a09832:	62 d1 d5 48 14 f0    	vunpcklpd zmm6,zmm5,zmm8
  a09838:	62 d1 d5 48 15 e8    	vunpckhpd zmm5,zmm5,zmm8
  a0983e:	62 41 c5 48 14 d1    	vunpcklpd zmm26,zmm7,zmm9
  a09844:	62 e1 7c 48 28 15 b2 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff6bd5b2]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a0984b:	d5 6b ff 
  a0984e:	62 72 6d 40 7f d8    	vpermt2ps zmm11,zmm18,zmm0
  a09854:	62 51 c5 48 15 c9    	vunpckhpd zmm9,zmm7,zmm9
  a0985a:	62 91 f5 40 14 c4    	vunpcklpd zmm0,zmm17,zmm28
  a09860:	62 11 f5 40 15 c4    	vunpckhpd zmm8,zmm17,zmm28
  a09866:	62 12 6d 40 7f d1    	vpermt2ps zmm10,zmm18,zmm25
  a0986c:	62 b1 95 48 14 fe    	vunpcklpd zmm7,zmm13,zmm22
  a09872:	62 31 95 48 15 e6    	vunpckhpd zmm12,zmm13,zmm22
  a09878:	62 f1 7c 48 28 d6    	vmovaps zmm2,zmm6
  a0987e:	62 92 15 40 7f f2    	vpermt2ps zmm6,zmm29,zmm26
  a09884:	62 f1 7c 48 28 dd    	vmovaps zmm3,zmm5
  a0988a:	62 d2 15 40 7f e9    	vpermt2ps zmm5,zmm29,zmm9
  a09890:	62 71 7c 48 28 e8    	vmovaps zmm13,zmm0
  a09896:	62 72 6d 40 7f ef    	vpermt2ps zmm13,zmm18,zmm7
  a0989c:	62 f2 15 40 7f c7    	vpermt2ps zmm0,zmm29,zmm7
  a098a2:	62 c1 7c 48 28 c0    	vmovaps zmm16,zmm8
  a098a8:	62 c2 6d 40 7f c4    	vpermt2ps zmm16,zmm18,zmm12
  a098ae:	62 d2 6d 40 7f e7    	vpermt2ps zmm4,zmm18,zmm15
  a098b4:	62 52 15 40 7f c4    	vpermt2ps zmm8,zmm29,zmm12
  a098ba:	62 71 7c 48 10 61 08 	vmovups zmm12,ZMMWORD PTR [rcx+0x200]
  a098c1:	62 71 7c 48 10 79 09 	vmovups zmm15,ZMMWORD PTR [rcx+0x240]
  a098c8:	62 d1 24 48 59 fc    	vmulps zmm7,zmm11,zmm12
  a098ce:	62 d2 15 48 bc ff    	vfnmadd231ps zmm7,zmm13,zmm15
  a098d4:	62 51 14 48 59 e4    	vmulps zmm12,zmm13,zmm12
  a098da:	62 71 7c 48 10 69 0c 	vmovups zmm13,ZMMWORD PTR [rcx+0x300]
  a098e1:	62 52 05 48 b8 e3    	vfmadd231ps zmm12,zmm15,zmm11
  a098e7:	62 71 7c 48 10 79 0d 	vmovups zmm15,ZMMWORD PTR [rcx+0x340]
  a098ee:	62 51 2c 48 59 dd    	vmulps zmm11,zmm10,zmm13
  a098f4:	62 51 7c 40 59 ed    	vmulps zmm13,zmm16,zmm13
  a098fa:	62 52 7d 40 bc df    	vfnmadd231ps zmm11,zmm16,zmm15
  a09900:	62 e1 7c 48 10 41 02 	vmovups zmm16,ZMMWORD PTR [rcx+0x80]
  a09907:	62 52 05 48 b8 ea    	vfmadd231ps zmm13,zmm15,zmm10
  a0990d:	62 71 7c 48 10 51 03 	vmovups zmm10,ZMMWORD PTR [rcx+0xc0]
  a09914:	62 31 44 40 59 f8    	vmulps zmm15,zmm23,zmm16
  a0991a:	62 52 4d 48 bc fa    	vfnmadd231ps zmm15,zmm6,zmm10
  a09920:	62 b1 4c 48 59 f0    	vmulps zmm6,zmm6,zmm16
  a09926:	62 e1 7c 48 10 41 0a 	vmovups zmm16,ZMMWORD PTR [rcx+0x280]
  a0992d:	62 b2 2d 48 b8 f7    	vfmadd231ps zmm6,zmm10,zmm23
  a09933:	62 71 7c 48 10 51 0b 	vmovups zmm10,ZMMWORD PTR [rcx+0x2c0]
  a0993a:	62 a1 0c 48 59 c8    	vmulps zmm17,zmm14,zmm16
  a09940:	62 a1 7c 48 59 c0    	vmulps zmm16,zmm0,zmm16
  a09946:	62 c2 7d 48 bc ca    	vfnmadd231ps zmm17,zmm0,zmm10
  a0994c:	62 f1 7c 48 10 41 06 	vmovups zmm0,ZMMWORD PTR [rcx+0x180]
  a09953:	62 c2 2d 48 b8 c6    	vfmadd231ps zmm16,zmm10,zmm14
  a09959:	62 71 7c 48 10 51 07 	vmovups zmm10,ZMMWORD PTR [rcx+0x1c0]
  a09960:	62 e1 3c 40 59 e8    	vmulps zmm21,zmm24,zmm0
  a09966:	62 c2 55 48 bc ea    	vfnmadd231ps zmm21,zmm5,zmm10
  a0996c:	62 f1 54 48 59 c0    	vmulps zmm0,zmm5,zmm0
  a09972:	62 f1 7c 48 10 69 0e 	vmovups zmm5,ZMMWORD PTR [rcx+0x380]
  a09979:	62 92 2d 48 b8 c0    	vfmadd231ps zmm0,zmm10,zmm24
  a0997f:	62 71 7c 48 10 51 0f 	vmovups zmm10,ZMMWORD PTR [rcx+0x3c0]
  a09986:	62 e1 64 40 59 e5    	vmulps zmm20,zmm19,zmm5
  a0998c:	62 f1 3c 48 59 ed    	vmulps zmm5,zmm8,zmm5
  a09992:	62 c2 3d 48 bc e2    	vfnmadd231ps zmm20,zmm8,zmm10
  a09998:	62 b2 2d 48 b8 eb    	vfmadd231ps zmm5,zmm10,zmm19
  a0999e:	62 71 7c 48 10 41 04 	vmovups zmm8,ZMMWORD PTR [rcx+0x100]
  a099a5:	62 71 7c 48 10 51 05 	vmovups zmm10,ZMMWORD PTR [rcx+0x140]
  a099ac:	62 d2 6d 40 7f d9    	vpermt2ps zmm3,zmm18,zmm9
  a099b2:	62 51 5c 48 59 c8    	vmulps zmm9,zmm4,zmm8
  a099b8:	62 52 65 48 bc ca    	vfnmadd231ps zmm9,zmm3,zmm10
  a099be:	62 d1 64 48 59 d8    	vmulps zmm3,zmm3,zmm8
  a099c4:	62 f2 2d 48 b8 dc    	vfmadd231ps zmm3,zmm10,zmm4
  a099ca:	62 92 6d 40 7f cb    	vpermt2ps zmm1,zmm18,zmm27
  a099d0:	62 92 6d 40 7f d2    	vpermt2ps zmm2,zmm18,zmm26
  a099d6:	62 f1 74 48 58 e7    	vaddps zmm4,zmm1,zmm7
  a099dc:	62 f1 74 48 5c cf    	vsubps zmm1,zmm1,zmm7
  a099e2:	62 b1 04 48 58 f9    	vaddps zmm7,zmm15,zmm17
  a099e8:	62 31 04 48 5c c1    	vsubps zmm8,zmm15,zmm17
  a099ee:	62 31 4c 48 58 d0    	vaddps zmm10,zmm6,zmm16
  a099f4:	62 b1 4c 48 5c f0    	vsubps zmm6,zmm6,zmm16
  a099fa:	62 71 7c 48 58 f5    	vaddps zmm14,zmm0,zmm5
  a09a00:	62 f1 7c 48 5c c5    	vsubps zmm0,zmm0,zmm5
  a09a06:	62 b1 54 40 58 ec    	vaddps zmm5,zmm21,zmm20
  a09a0c:	62 31 54 40 5c fc    	vsubps zmm15,zmm21,zmm20
  a09a12:	62 e1 1c 48 58 c2    	vaddps zmm16,zmm12,zmm2
  a09a18:	62 d1 6c 48 5c d4    	vsubps zmm2,zmm2,zmm12
  a09a1e:	62 51 64 48 58 e5    	vaddps zmm12,zmm3,zmm13
  a09a24:	62 d1 64 48 5c dd    	vsubps zmm3,zmm3,zmm13
  a09a2a:	62 51 34 48 58 eb    	vaddps zmm13,zmm9,zmm11
  a09a30:	62 51 24 48 5c c9    	vsubps zmm9,zmm11,zmm9
  a09a36:	62 71 3c 48 58 de    	vaddps zmm11,zmm8,zmm6
  a09a3c:	62 d1 4c 48 5c f0    	vsubps zmm6,zmm6,zmm8
  a09a42:	62 51 7c 48 5c c7    	vsubps zmm8,zmm0,zmm15
  a09a48:	62 f1 04 48 58 c0    	vaddps zmm0,zmm15,zmm0
  a09a4e:	62 51 5c 48 58 fd    	vaddps zmm15,zmm4,zmm13
  a09a54:	62 d1 5c 48 5c e5    	vsubps zmm4,zmm4,zmm13
  a09a5a:	62 51 2c 48 58 ee    	vaddps zmm13,zmm10,zmm14
  a09a60:	62 51 2c 48 5c d6    	vsubps zmm10,zmm10,zmm14
  a09a66:	62 31 1c 48 58 f0    	vaddps zmm14,zmm12,zmm16
  a09a6c:	62 51 7c 40 5c e4    	vsubps zmm12,zmm16,zmm12
  a09a72:	62 e1 44 48 58 c5    	vaddps zmm16,zmm7,zmm5
  a09a78:	62 f1 54 48 5c ef    	vsubps zmm5,zmm5,zmm7
  a09a7e:	62 f1 74 48 58 fb    	vaddps zmm7,zmm1,zmm3
  a09a84:	62 e2 7d 48 18 15 0e 	vbroadcastss zmm18,DWORD PTR [rip+0xffffffffff66b90e]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a09a8b:	b9 66 ff 
  a09a8e:	62 31 24 48 59 da    	vmulps zmm11,zmm11,zmm18
  a09a94:	62 31 3c 48 59 c2    	vmulps zmm8,zmm8,zmm18
  a09a9a:	62 f1 74 48 5c db    	vsubps zmm3,zmm1,zmm3
  a09aa0:	62 e1 34 48 58 ca    	vaddps zmm17,zmm9,zmm2
  a09aa6:	62 b1 4c 48 59 ca    	vmulps zmm1,zmm6,zmm18
  a09aac:	62 b1 7c 48 59 c2    	vmulps zmm0,zmm0,zmm18
  a09ab2:	62 51 6c 48 5c c9    	vsubps zmm9,zmm2,zmm9
  a09ab8:	62 e1 74 48 5c d0    	vsubps zmm18,zmm1,zmm0
  a09abe:	62 f1 74 48 58 c0    	vaddps zmm0,zmm1,zmm0
  a09ac4:	62 c1 5c 48 58 da    	vaddps zmm19,zmm4,zmm10
  a09aca:	62 d1 5c 48 5c ca    	vsubps zmm1,zmm4,zmm10
  a09ad0:	62 d1 24 48 58 e0    	vaddps zmm4,zmm11,zmm8
  a09ad6:	62 51 3c 48 5c c3    	vsubps zmm8,zmm8,zmm11
  a09adc:	62 71 1c 48 58 d5    	vaddps zmm10,zmm12,zmm5
  a09ae2:	62 f1 1c 48 5c d5    	vsubps zmm2,zmm12,zmm5
  a09ae8:	62 71 44 48 58 dc    	vaddps zmm11,zmm7,zmm4
  a09aee:	62 f1 44 48 5c e4    	vsubps zmm4,zmm7,zmm4
  a09af4:	62 d1 0c 48 5c f5    	vsubps zmm6,zmm14,zmm13
  a09afa:	62 51 0c 48 58 e5    	vaddps zmm12,zmm14,zmm13
  a09b00:	62 31 74 40 58 ea    	vaddps zmm13,zmm17,zmm18
  a09b06:	62 b1 74 40 5c ea    	vsubps zmm5,zmm17,zmm18
  a09b0c:	62 b1 04 48 5c f8    	vsubps zmm7,zmm15,zmm16
  a09b12:	62 31 04 48 58 f0    	vaddps zmm14,zmm15,zmm16
  a09b18:	62 51 7c 48 28 fc    	vmovaps zmm15,zmm12
  a09b1e:	62 e1 7c 48 28 05 98 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff684c98]        # 8e7c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1bc70>
  a09b25:	4c 68 ff 
  a09b28:	62 52 7d 40 7f fe    	vpermt2ps zmm15,zmm16,zmm14
  a09b2e:	62 71 7c 48 11 3c 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm15
  a09b35:	62 51 1c 48 14 fe    	vunpcklps zmm15,zmm12,zmm14
  a09b3b:	62 73 7d 48 19 7c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x60],zmm15,0x3
  a09b42:	06 03 
  a09b44:	62 51 1c 48 15 fe    	vunpckhps zmm15,zmm12,zmm14
  a09b4a:	62 53 7d 48 19 ff 03 	vextractf32x4 xmm15,zmm15,0x3
  a09b51:	c5 78 13 7c 16 70    	vmovlps QWORD PTR [rsi+rdx*1+0x70],xmm15
  a09b57:	62 71 64 48 58 f8    	vaddps zmm15,zmm3,zmm0
  a09b5d:	62 f1 64 48 5c c0    	vsubps zmm0,zmm3,zmm0
  a09b63:	62 e1 7c 28 28 0d 93 	vmovaps ymm17,YMMWORD PTR [rip+0xffffffffff684c93]        # 8e800 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1bcb0>
  a09b6a:	4c 68 ff 
  a09b6d:	62 52 75 40 7f e6    	vpermt2ps zmm12,zmm17,zmm14
  a09b73:	c5 7c 11 64 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm12
  a09b79:	62 51 34 48 58 e0    	vaddps zmm12,zmm9,zmm8
  a09b7f:	62 d1 34 48 5c d8    	vsubps zmm3,zmm9,zmm8
  a09b85:	62 51 7c 48 28 c5    	vmovaps zmm8,zmm13
  a09b8b:	62 52 7d 40 7f c3    	vpermt2ps zmm8,zmm16,zmm11
  a09b91:	62 71 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x78],zmm8
  a09b98:	78 00 00 00 
  a09b9c:	62 51 14 48 14 c3    	vunpcklps zmm8,zmm13,zmm11
  a09ba2:	62 73 7d 48 19 84 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xd8],zmm8,0x3
  a09ba9:	d8 00 00 00 03 
  a09bae:	62 51 14 48 15 c3    	vunpckhps zmm8,zmm13,zmm11
  a09bb4:	62 53 7d 48 19 c0 03 	vextractf32x4 xmm8,zmm8,0x3
  a09bbb:	c5 78 13 84 16 e8 00 	vmovlps QWORD PTR [rsi+rdx*1+0xe8],xmm8
  a09bc2:	00 00 
  a09bc4:	62 52 75 40 7f eb    	vpermt2ps zmm13,zmm17,zmm11
  a09bca:	c5 7c 11 ac 16 b8 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xb8],ymm13
  a09bd1:	00 00 
  a09bd3:	62 51 7c 48 28 c2    	vmovaps zmm8,zmm10
  a09bd9:	62 32 7d 40 7f c3    	vpermt2ps zmm8,zmm16,zmm19
  a09bdf:	62 71 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xf0],zmm8
  a09be6:	f0 00 00 00 
  a09bea:	62 31 2c 48 14 c3    	vunpcklps zmm8,zmm10,zmm19
  a09bf0:	62 73 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x150],zmm8,0x3
  a09bf7:	15 03 
  a09bf9:	62 31 2c 48 15 c3    	vunpckhps zmm8,zmm10,zmm19
  a09bff:	62 53 7d 48 19 c0 03 	vextractf32x4 xmm8,zmm8,0x3
  a09c06:	c5 78 13 84 16 60 01 	vmovlps QWORD PTR [rsi+rdx*1+0x160],xmm8
  a09c0d:	00 00 
  a09c0f:	62 32 75 40 7f d3    	vpermt2ps zmm10,zmm17,zmm19
  a09c15:	c5 7c 11 94 16 30 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x130],ymm10
  a09c1c:	00 00 
  a09c1e:	62 51 7c 48 28 c4    	vmovaps zmm8,zmm12
  a09c24:	62 52 7d 40 7f c7    	vpermt2ps zmm8,zmm16,zmm15
  a09c2a:	62 71 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x168],zmm8
  a09c31:	68 01 00 00 
  a09c35:	62 51 1c 48 14 c7    	vunpcklps zmm8,zmm12,zmm15
  a09c3b:	62 73 7d 48 19 84 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x1c8],zmm8,0x3
  a09c42:	c8 01 00 00 03 
  a09c47:	62 51 1c 48 15 c7    	vunpckhps zmm8,zmm12,zmm15
  a09c4d:	62 53 7d 48 19 c0 03 	vextractf32x4 xmm8,zmm8,0x3
  a09c54:	c5 78 13 84 16 d8 01 	vmovlps QWORD PTR [rsi+rdx*1+0x1d8],xmm8
  a09c5b:	00 00 
  a09c5d:	62 52 75 40 7f e7    	vpermt2ps zmm12,zmm17,zmm15
  a09c63:	c5 7c 11 a4 16 a8 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x1a8],ymm12
  a09c6a:	00 00 
  a09c6c:	62 71 7c 48 28 c6    	vmovaps zmm8,zmm6
  a09c72:	62 72 7d 40 7f c7    	vpermt2ps zmm8,zmm16,zmm7
  a09c78:	62 71 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1e0],zmm8
  a09c7f:	e0 01 00 00 
  a09c83:	62 71 4c 48 14 c7    	vunpcklps zmm8,zmm6,zmm7
  a09c89:	62 73 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x240],zmm8,0x3
  a09c90:	24 03 
  a09c92:	62 71 4c 48 15 c7    	vunpckhps zmm8,zmm6,zmm7
  a09c98:	62 53 7d 48 19 c0 03 	vextractf32x4 xmm8,zmm8,0x3
  a09c9f:	c5 78 13 84 16 50 02 	vmovlps QWORD PTR [rsi+rdx*1+0x250],xmm8
  a09ca6:	00 00 
  a09ca8:	62 f2 75 40 7f f7    	vpermt2ps zmm6,zmm17,zmm7
  a09cae:	c5 fc 11 b4 16 20 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x220],ymm6
  a09cb5:	00 00 
  a09cb7:	62 f1 7c 48 28 f5    	vmovaps zmm6,zmm5
  a09cbd:	62 f2 7d 40 7f f4    	vpermt2ps zmm6,zmm16,zmm4
  a09cc3:	62 f1 7c 48 11 b4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x258],zmm6
  a09cca:	58 02 00 00 
  a09cce:	62 f1 54 48 14 f4    	vunpcklps zmm6,zmm5,zmm4
  a09cd4:	62 f3 7d 48 19 b4 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x2b8],zmm6,0x3
  a09cdb:	b8 02 00 00 03 
  a09ce0:	62 f1 54 48 15 f4    	vunpckhps zmm6,zmm5,zmm4
  a09ce6:	62 f3 7d 48 19 f6 03 	vextractf32x4 xmm6,zmm6,0x3
  a09ced:	c5 f8 13 b4 16 c8 02 	vmovlps QWORD PTR [rsi+rdx*1+0x2c8],xmm6
  a09cf4:	00 00 
  a09cf6:	62 f2 75 40 7f ec    	vpermt2ps zmm5,zmm17,zmm4
  a09cfc:	c5 fc 11 ac 16 98 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x298],ymm5
  a09d03:	00 00 
  a09d05:	62 f1 7c 48 28 e2    	vmovaps zmm4,zmm2
  a09d0b:	62 f2 7d 40 7f e1    	vpermt2ps zmm4,zmm16,zmm1
  a09d11:	62 f1 7c 48 11 a4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x2d0],zmm4
  a09d18:	d0 02 00 00 
  a09d1c:	62 f1 6c 48 14 e1    	vunpcklps zmm4,zmm2,zmm1
  a09d22:	62 f3 7d 48 19 64 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x330],zmm4,0x3
  a09d29:	33 03 
  a09d2b:	62 f1 6c 48 15 e1    	vunpckhps zmm4,zmm2,zmm1
  a09d31:	62 f3 7d 48 19 e4 03 	vextractf32x4 xmm4,zmm4,0x3
  a09d38:	c5 f8 13 a4 16 40 03 	vmovlps QWORD PTR [rsi+rdx*1+0x340],xmm4
  a09d3f:	00 00 
  a09d41:	62 f2 75 40 7f d1    	vpermt2ps zmm2,zmm17,zmm1
  a09d47:	c5 fc 11 94 16 10 03 	vmovups YMMWORD PTR [rsi+rdx*1+0x310],ymm2
  a09d4e:	00 00 
  a09d50:	62 f1 7c 48 28 cb    	vmovaps zmm1,zmm3
  a09d56:	62 f2 7d 40 7f c8    	vpermt2ps zmm1,zmm16,zmm0
  a09d5c:	62 f1 7c 48 11 8c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x348],zmm1
  a09d63:	48 03 00 00 
  a09d67:	62 f1 64 48 14 c8    	vunpcklps zmm1,zmm3,zmm0
  a09d6d:	62 f3 7d 48 19 8c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x3a8],zmm1,0x3
  a09d74:	a8 03 00 00 03 
  a09d79:	62 f1 64 48 15 c8    	vunpckhps zmm1,zmm3,zmm0
  a09d7f:	62 f3 7d 48 19 c9 03 	vextractf32x4 xmm1,zmm1,0x3
  a09d86:	c5 f8 13 8c 16 b8 03 	vmovlps QWORD PTR [rsi+rdx*1+0x3b8],xmm1
  a09d8d:	00 00 
  a09d8f:	62 f2 75 40 7f d8    	vpermt2ps zmm3,zmm17,zmm0
  a09d95:	c5 fc 11 9c 16 88 03 	vmovups YMMWORD PTR [rsi+rdx*1+0x388],ymm3
  a09d9c:	00 00 
  a09d9e:	48 81 c2 c0 03 00 00 	add    rdx,0x3c0
  a09da5:	48 39 d0             	cmp    rax,rdx
  a09da8:	0f 85 42 f1 ff ff    	jne    a08ef0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x30>
  a09dae:	48 89 ec             	mov    rsp,rbp
  a09db1:	5d                   	pop    rbp
  a09db2:	c5 f8 77             	vzeroupper
  a09db5:	c3                   	ret
