
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a02f80 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a02f80:	55                   	push   rbp
  a02f81:	48 89 e5             	mov    rbp,rsp
  a02f84:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a02f88:	48 81 ec 40 06 00 00 	sub    rsp,0x640
  a02f8f:	c6 84 24 c0 05 00 00 	mov    BYTE PTR [rsp+0x5c0],0x0
  a02f96:	00 
  a02f97:	48 8d 84 24 c0 05 00 	lea    rax,[rsp+0x5c0]
  a02f9e:	00 
  a02f9f:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  a02fa4:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  a02fa9:	62 71 7c 48 28 15 4d 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff68b14d]        # 8e100 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b5b0>
  a02fb0:	b1 68 ff 
  a02fb3:	62 61 7c 48 10 17    	vmovups zmm26,ZMMWORD PTR [rdi]
  a02fb9:	62 61 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm26
  a02fc0:	03 
  a02fc1:	62 f1 7c 48 10 6f 01 	vmovups zmm5,ZMMWORD PTR [rdi+0x40]
  a02fc8:	62 f1 7c 48 10 57 02 	vmovups zmm2,ZMMWORD PTR [rdi+0x80]
  a02fcf:	62 71 7c 48 10 4f 03 	vmovups zmm9,ZMMWORD PTR [rdi+0xc0]
  a02fd6:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a02fda:	62 62 2d 48 7f d0    	vpermt2ps zmm26,zmm10,zmm0
  a02fe0:	62 61 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm26
  a02fe7:	02 
  a02fe8:	62 71 7c 48 28 35 4e 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff68b14e]        # 8e140 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b5f0>
  a02fef:	b1 68 ff 
  a02ff2:	62 f1 7c 48 28 cd    	vmovaps zmm1,zmm5
  a02ff8:	62 f2 2d 48 7f c8    	vpermt2ps zmm1,zmm10,zmm0
  a02ffe:	62 71 7c 48 28 d9    	vmovaps zmm11,zmm1
  a03004:	62 e1 7c 48 28 ca    	vmovaps zmm17,zmm2
  a0300a:	62 e2 2d 48 7f c8    	vpermt2ps zmm17,zmm10,zmm0
  a03010:	62 f2 0d 48 7f d0    	vpermt2ps zmm2,zmm14,zmm0
  a03016:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm2
  a0301d:	08 
  a0301e:	62 d1 7c 48 28 c9    	vmovaps zmm1,zmm9
  a03024:	62 f2 2d 48 7f c8    	vpermt2ps zmm1,zmm10,zmm0
  a0302a:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm1
  a03031:	01 
  a03032:	62 f1 7c 48 10 77 04 	vmovups zmm6,ZMMWORD PTR [rdi+0x100]
  a03039:	62 71 7c 48 28 ee    	vmovaps zmm13,zmm6
  a0303f:	62 72 2d 48 7f e8    	vpermt2ps zmm13,zmm10,zmm0
  a03045:	62 61 7c 48 10 5f 05 	vmovups zmm27,ZMMWORD PTR [rdi+0x140]
  a0304c:	62 61 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm27
  a03053:	0b 
  a03054:	62 62 2d 48 7f d8    	vpermt2ps zmm27,zmm10,zmm0
  a0305a:	62 61 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm27
  a03061:	0a 
  a03062:	62 71 7c 48 10 7f 06 	vmovups zmm15,ZMMWORD PTR [rdi+0x180]
  a03069:	62 d1 7c 48 28 cf    	vmovaps zmm1,zmm15
  a0306f:	62 f2 2d 48 7f c8    	vpermt2ps zmm1,zmm10,zmm0
  a03075:	62 71 7c 48 28 c1    	vmovaps zmm8,zmm1
  a0307b:	62 61 7c 48 10 67 07 	vmovups zmm28,ZMMWORD PTR [rdi+0x1c0]
  a03082:	62 91 7c 48 28 dc    	vmovaps zmm3,zmm28
  a03088:	62 f2 2d 48 7f d8    	vpermt2ps zmm3,zmm10,zmm0
  a0308e:	62 e1 7c 48 10 77 08 	vmovups zmm22,ZMMWORD PTR [rdi+0x200]
  a03095:	62 a1 7c 48 28 d6    	vmovaps zmm18,zmm22
  a0309b:	62 e2 2d 48 7f d0    	vpermt2ps zmm18,zmm10,zmm0
  a030a1:	62 e2 0d 48 7f f0    	vpermt2ps zmm22,zmm14,zmm0
  a030a7:	62 e1 7c 48 10 7f 09 	vmovups zmm23,ZMMWORD PTR [rdi+0x240]
  a030ae:	62 b1 7c 48 28 cf    	vmovaps zmm1,zmm23
  a030b4:	62 f2 2d 48 7f c8    	vpermt2ps zmm1,zmm10,zmm0
  a030ba:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm1
  a030c1:	09 
  a030c2:	62 e1 7c 48 10 47 0a 	vmovups zmm16,ZMMWORD PTR [rdi+0x280]
  a030c9:	62 21 7c 48 28 d8    	vmovaps zmm27,zmm16
  a030cf:	62 62 2d 48 7f d8    	vpermt2ps zmm27,zmm10,zmm0
  a030d5:	62 e1 7c 48 10 6f 0b 	vmovups zmm21,ZMMWORD PTR [rdi+0x2c0]
  a030dc:	62 a1 7c 48 28 e5    	vmovaps zmm20,zmm21
  a030e2:	62 e2 2d 48 7f e0    	vpermt2ps zmm20,zmm10,zmm0
  a030e8:	62 e2 0d 48 7f e8    	vpermt2ps zmm21,zmm14,zmm0
  a030ee:	62 61 7c 48 10 6f 0c 	vmovups zmm29,ZMMWORD PTR [rdi+0x300]
  a030f5:	62 01 7c 48 28 fd    	vmovaps zmm31,zmm29
  a030fb:	62 62 2d 48 7f f8    	vpermt2ps zmm31,zmm10,zmm0
  a03101:	62 61 7c 48 10 77 0d 	vmovups zmm30,ZMMWORD PTR [rdi+0x340]
  a03108:	62 01 7c 48 28 ce    	vmovaps zmm25,zmm30
  a0310e:	62 62 2d 48 7f c8    	vpermt2ps zmm25,zmm10,zmm0
  a03114:	62 e1 7c 48 10 5f 0e 	vmovups zmm19,ZMMWORD PTR [rdi+0x380]
  a0311b:	62 72 65 40 77 d0    	vpermi2ps zmm10,zmm19,zmm0
  a03121:	62 e2 0d 48 7f d8    	vpermt2ps zmm19,zmm14,zmm0
  a03127:	62 f1 4c 40 5c d2    	vsubps zmm2,zmm22,zmm2
  a0312d:	62 b1 54 40 5c cb    	vsubps zmm1,zmm21,zmm19
  a03133:	62 f2 7d 48 18 05 1b 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff67261b]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a0313a:	26 67 ff 
  a0313d:	62 f1 74 48 59 e0    	vmulps zmm4,zmm1,zmm0
  a03143:	62 72 7d 48 18 25 53 	vbroadcastss zmm12,DWORD PTR [rip+0xffffffffff672253]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a0314a:	22 67 ff 
  a0314d:	62 d2 6d 48 b8 e4    	vfmadd231ps zmm4,zmm2,zmm12
  a03153:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm4
  a0315a:	16 
  a0315b:	62 f1 6c 48 59 d0    	vmulps zmm2,zmm2,zmm0
  a03161:	62 f2 1d 48 bc d1    	vfnmadd231ps zmm2,zmm12,zmm1
  a03167:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm2
  a0316e:	07 
  a0316f:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  a03173:	62 f2 0d 48 7f e9    	vpermt2ps zmm5,zmm14,zmm1
  a03179:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm5
  a03180:	05 
  a03181:	62 f2 0d 48 7f f1    	vpermt2ps zmm6,zmm14,zmm1
  a03187:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm6
  a0318e:	04 
  a0318f:	62 62 0d 48 7f e1    	vpermt2ps zmm28,zmm14,zmm1
  a03195:	62 62 0d 48 7f f1    	vpermt2ps zmm30,zmm14,zmm1
  a0319b:	62 91 0c 40 5c cc    	vsubps zmm1,zmm30,zmm28
  a031a1:	62 f1 54 48 5c d6    	vsubps zmm2,zmm5,zmm6
  a031a7:	62 f1 6c 48 59 e0    	vmulps zmm4,zmm2,zmm0
  a031ad:	62 d2 75 48 b8 e4    	vfmadd231ps zmm4,zmm1,zmm12
  a031b3:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm4
  a031ba:	13 
  a031bb:	62 f1 74 48 59 c8    	vmulps zmm1,zmm1,zmm0
  a031c1:	62 f2 1d 48 bc ca    	vfnmadd231ps zmm1,zmm12,zmm2
  a031c7:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm1
  a031ce:	06 
  a031cf:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  a031d3:	62 72 0d 48 7f c9    	vpermt2ps zmm9,zmm14,zmm1
  a031d9:	62 72 0d 48 7f f9    	vpermt2ps zmm15,zmm14,zmm1
  a031df:	62 e2 0d 48 7f f9    	vpermt2ps zmm23,zmm14,zmm1
  a031e5:	62 62 0d 48 7f e9    	vpermt2ps zmm29,zmm14,zmm1
  a031eb:	62 91 34 48 5c cd    	vsubps zmm1,zmm9,zmm29
  a031f1:	62 b1 04 48 5c d7    	vsubps zmm2,zmm15,zmm23
  a031f7:	62 d1 7c 48 28 ff    	vmovaps zmm7,zmm15
  a031fd:	62 f1 6c 48 59 e0    	vmulps zmm4,zmm2,zmm0
  a03203:	62 d2 75 48 b8 e4    	vfmadd231ps zmm4,zmm1,zmm12
  a03209:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm4
  a03210:	15 
  a03211:	62 61 74 48 59 d0    	vmulps zmm26,zmm1,zmm0
  a03217:	62 62 1d 48 bc d2    	vfnmadd231ps zmm26,zmm12,zmm2
  a0321d:	62 b1 6c 40 5c c9    	vsubps zmm1,zmm18,zmm17
  a03223:	62 d1 5c 40 5c d2    	vsubps zmm2,zmm20,zmm10
  a03229:	62 f1 6c 48 59 e0    	vmulps zmm4,zmm2,zmm0
  a0322f:	62 d2 75 48 b8 e4    	vfmadd231ps zmm4,zmm1,zmm12
  a03235:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm4
  a0323c:	12 
  a0323d:	62 61 74 48 59 c0    	vmulps zmm24,zmm1,zmm0
  a03243:	62 62 1d 48 bc c2    	vfnmadd231ps zmm24,zmm12,zmm2
  a03249:	62 f1 7c 48 28 eb    	vmovaps zmm5,zmm3
  a0324f:	62 f1 34 40 5c cb    	vsubps zmm1,zmm25,zmm3
  a03255:	62 d1 7c 48 28 f3    	vmovaps zmm6,zmm11
  a0325b:	62 51 24 48 5c dd    	vsubps zmm11,zmm11,zmm13
  a03261:	62 f1 24 48 59 d0    	vmulps zmm2,zmm11,zmm0
  a03267:	62 d2 75 48 b8 d4    	vfmadd231ps zmm2,zmm1,zmm12
  a0326d:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm2
  a03274:	0e 
  a03275:	62 71 74 48 59 f8    	vmulps zmm15,zmm1,zmm0
  a0327b:	62 52 1d 48 bc fb    	vfnmadd231ps zmm15,zmm12,zmm11
  a03281:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x40]
  a03288:	01 
  a03289:	62 91 5c 48 5c cf    	vsubps zmm1,zmm4,zmm31
  a0328f:	62 d1 7c 48 28 d8    	vmovaps zmm3,zmm8
  a03295:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x240]
  a0329c:	09 
  a0329d:	62 71 3c 48 5c da    	vsubps zmm11,zmm8,zmm2
  a032a3:	62 71 24 48 59 c0    	vmulps zmm8,zmm11,zmm0
  a032a9:	62 52 75 48 b8 c4    	vfmadd231ps zmm8,zmm1,zmm12
  a032af:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm8
  a032b6:	14 
  a032b7:	62 71 74 48 59 c0    	vmulps zmm8,zmm1,zmm0
  a032bd:	62 52 25 48 bc c4    	vfnmadd231ps zmm8,zmm11,zmm12
  a032c3:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a032c7:	62 71 7c 48 28 64 24 	vmovaps zmm12,ZMMWORD PTR [rsp+0xc0]
  a032ce:	03 
  a032cf:	62 72 0d 48 7f e0    	vpermt2ps zmm12,zmm14,zmm0
  a032d5:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x2c0]
  a032dc:	0b 
  a032dd:	62 f2 0d 48 7f c8    	vpermt2ps zmm1,zmm14,zmm0
  a032e3:	62 e2 0d 48 7f c0    	vpermt2ps zmm16,zmm14,zmm0
  a032e9:	62 91 5c 48 58 c7    	vaddps zmm0,zmm4,zmm31
  a032ef:	62 f1 64 48 58 e2    	vaddps zmm4,zmm3,zmm2
  a032f5:	62 31 6c 40 58 f1    	vaddps zmm14,zmm18,zmm17
  a032fb:	62 41 5c 40 58 fa    	vaddps zmm31,zmm20,zmm10
  a03301:	62 61 34 40 58 cd    	vaddps zmm25,zmm25,zmm5
  a03307:	62 c1 4c 48 58 d5    	vaddps zmm18,zmm6,zmm13
  a0330d:	62 01 34 48 58 ed    	vaddps zmm29,zmm9,zmm29
  a03313:	62 a1 44 48 58 ff    	vaddps zmm23,zmm7,zmm23
  a03319:	62 e1 4c 40 58 74 24 	vaddps zmm22,zmm22,ZMMWORD PTR [rsp+0x200]
  a03320:	08 
  a03321:	62 b1 54 40 58 d3    	vaddps zmm2,zmm21,zmm19
  a03327:	62 01 0c 40 58 e4    	vaddps zmm28,zmm30,zmm28
  a0332d:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x100]
  a03334:	04 
  a03335:	62 f1 64 48 58 5c 24 	vaddps zmm3,zmm3,ZMMWORD PTR [rsp+0x140]
  a0333c:	05 
  a0333d:	62 72 7d 48 18 1d a1 	vbroadcastss zmm11,DWORD PTR [rip+0xffffffffff6723a1]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a03344:	23 67 ff 
  a03347:	62 d1 7c 48 28 eb    	vmovaps zmm5,zmm11
  a0334d:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x280]
  a03354:	0a 
  a03355:	62 f2 0d 48 a8 ee    	vfmadd213ps zmm5,zmm14,zmm6
  a0335b:	62 62 7d 48 18 35 df 	vbroadcastss zmm30,DWORD PTR [rip+0xffffffffff6722df]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a03362:	22 67 ff 
  a03365:	62 51 4c 48 58 ce    	vaddps zmm9,zmm6,zmm14
  a0336b:	62 d2 0d 40 bc f6    	vfnmadd231ps zmm6,zmm30,zmm14
  a03371:	62 e1 7c 48 28 e6    	vmovaps zmm20,zmm6
  a03377:	62 51 7c 48 28 d3    	vmovaps zmm10,zmm11
  a0337d:	62 12 35 40 a8 d3    	vfmadd213ps zmm10,zmm25,zmm27
  a03383:	62 91 24 40 58 f1    	vaddps zmm6,zmm27,zmm25
  a03389:	62 02 0d 40 bc d9    	vfnmadd231ps zmm27,zmm30,zmm25
  a0338f:	62 51 7c 48 28 f3    	vmovaps zmm14,zmm11
  a03395:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x80]
  a0339c:	02 
  a0339d:	62 72 7d 48 a8 f7    	vfmadd213ps zmm14,zmm0,zmm7
  a033a3:	62 61 44 48 58 c8    	vaddps zmm25,zmm7,zmm0
  a033a9:	62 f2 0d 40 bc f8    	vfnmadd231ps zmm7,zmm30,zmm0
  a033af:	62 71 7c 48 28 ef    	vmovaps zmm13,zmm7
  a033b5:	62 c1 7c 48 28 db    	vmovaps zmm19,zmm11
  a033bb:	62 e2 4d 40 a8 d9    	vfmadd213ps zmm19,zmm22,zmm1
  a033c1:	62 b1 74 48 58 c6    	vaddps zmm0,zmm1,zmm22
  a033c7:	62 b2 0d 40 bc ce    	vfnmadd231ps zmm1,zmm30,zmm22
  a033cd:	62 e1 7c 48 28 c9    	vmovaps zmm17,zmm1
  a033d3:	62 c1 7c 48 28 eb    	vmovaps zmm21,zmm11
  a033d9:	62 a2 1d 40 a8 e8    	vfmadd213ps zmm21,zmm28,zmm16
  a033df:	62 91 7c 40 58 fc    	vaddps zmm7,zmm16,zmm28
  a033e5:	62 82 0d 40 bc c4    	vfnmadd231ps zmm16,zmm30,zmm28
  a033eb:	62 c1 7c 48 28 f3    	vmovaps zmm22,zmm11
  a033f1:	62 c2 15 40 a8 f4    	vfmadd213ps zmm22,zmm29,zmm12
  a033f7:	62 01 1c 48 58 e5    	vaddps zmm28,zmm12,zmm29
  a033fd:	62 12 15 40 bc e6    	vfnmadd231ps zmm12,zmm29,zmm30
  a03403:	62 92 05 40 bc ee    	vfnmadd231ps zmm5,zmm31,zmm30
  a03409:	62 12 6d 40 bc d6    	vfnmadd231ps zmm10,zmm18,zmm30
  a0340f:	62 12 5d 48 bc f6    	vfnmadd231ps zmm14,zmm4,zmm30
  a03415:	62 82 6d 48 bc de    	vfnmadd231ps zmm19,zmm2,zmm30
  a0341b:	62 82 65 48 bc ee    	vfnmadd231ps zmm21,zmm3,zmm30
  a03421:	62 82 45 40 bc f6    	vfnmadd231ps zmm22,zmm23,zmm30
  a03427:	62 11 34 48 58 cf    	vaddps zmm9,zmm9,zmm31
  a0342d:	62 82 25 48 b8 e7    	vfmadd231ps zmm20,zmm11,zmm31
  a03433:	62 b1 4c 48 58 f2    	vaddps zmm6,zmm6,zmm18
  a03439:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm6
  a03440:	0d 
  a03441:	62 22 25 48 b8 da    	vfmadd231ps zmm27,zmm11,zmm18
  a03447:	62 f1 34 40 58 cc    	vaddps zmm1,zmm25,zmm4
  a0344d:	62 72 25 48 b8 ec    	vfmadd231ps zmm13,zmm11,zmm4
  a03453:	62 e1 7c 48 58 d2    	vaddps zmm18,zmm0,zmm2
  a03459:	62 e2 25 48 b8 ca    	vfmadd231ps zmm17,zmm11,zmm2
  a0345f:	62 b1 1c 40 58 c7    	vaddps zmm0,zmm28,zmm23
  a03465:	62 52 45 40 b8 e3    	vfmadd231ps zmm12,zmm23,zmm11
  a0346b:	62 e2 25 48 b8 c3    	vfmadd231ps zmm16,zmm11,zmm3
  a03471:	62 61 44 48 58 cb    	vaddps zmm25,zmm7,zmm3
  a03477:	62 61 7c 48 28 6c 24 	vmovaps zmm29,ZMMWORD PTR [rsp+0x480]
  a0347e:	12 
  a0347f:	62 91 64 40 5c d5    	vsubps zmm2,zmm19,zmm29
  a03485:	62 61 7c 48 28 74 24 	vmovaps zmm30,ZMMWORD PTR [rsp+0x380]
  a0348c:	0e 
  a0348d:	62 91 54 40 5c de    	vsubps zmm3,zmm21,zmm30
  a03493:	62 f1 6c 48 5c e3    	vsubps zmm4,zmm2,zmm3
  a03499:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm4
  a034a0:	0b 
  a034a1:	62 f1 6c 48 58 d3    	vaddps zmm2,zmm2,zmm3
  a034a7:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm2
  a034ae:	01 
  a034af:	62 61 7c 48 28 64 24 	vmovaps zmm28,ZMMWORD PTR [rsp+0x580]
  a034b6:	16 
  a034b7:	62 91 54 48 58 d4    	vaddps zmm2,zmm5,zmm28
  a034bd:	62 e1 7c 48 28 7c 24 	vmovaps zmm23,ZMMWORD PTR [rsp+0x4c0]
  a034c4:	13 
  a034c5:	62 b1 2c 48 58 df    	vaddps zmm3,zmm10,zmm23
  a034cb:	62 f1 6c 48 58 e3    	vaddps zmm4,zmm2,zmm3
  a034d1:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm4
  a034d8:	04 
  a034d9:	62 f1 6c 48 5c d3    	vsubps zmm2,zmm2,zmm3
  a034df:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm2
  a034e6:	09 
  a034e7:	62 91 74 40 5c d0    	vsubps zmm2,zmm17,zmm24
  a034ed:	62 d1 7c 40 5c df    	vsubps zmm3,zmm16,zmm15
  a034f3:	62 f1 6c 48 5c e3    	vsubps zmm4,zmm2,zmm3
  a034f9:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm4
  a03500:	05 
  a03501:	62 f1 6c 48 58 d3    	vaddps zmm2,zmm2,zmm3
  a03507:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm2
  a0350e:	08 
  a0350f:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x1c0]
  a03516:	07 
  a03517:	62 f1 5c 40 58 d4    	vaddps zmm2,zmm20,zmm4
  a0351d:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x180]
  a03524:	06 
  a03525:	62 f1 24 40 58 df    	vaddps zmm3,zmm27,zmm7
  a0352b:	62 71 6c 48 58 db    	vaddps zmm11,zmm2,zmm3
  a03531:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm11
  a03538:	10 
  a03539:	62 f1 6c 48 5c d3    	vsubps zmm2,zmm2,zmm3
  a0353f:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm2
  a03546:	11 
  a03547:	62 91 14 48 58 d2    	vaddps zmm2,zmm13,zmm26
  a0354d:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm2
  a03554:	0f 
  a03555:	62 01 14 48 5c d2    	vsubps zmm26,zmm13,zmm26
  a0355b:	62 f1 5c 40 5c e4    	vsubps zmm4,zmm20,zmm4
  a03561:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm4
  a03568:	0c 
  a03569:	62 f1 24 40 5c ff    	vsubps zmm7,zmm27,zmm7
  a0356f:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm7
  a03576:	06 
  a03577:	62 d1 1c 48 5c d0    	vsubps zmm2,zmm12,zmm8
  a0357d:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm2
  a03584:	07 
  a03585:	62 41 3c 48 58 dc    	vaddps zmm27,zmm8,zmm12
  a0358b:	62 a1 3c 40 58 c9    	vaddps zmm17,zmm24,zmm17
  a03591:	62 31 04 48 58 f8    	vaddps zmm15,zmm15,zmm16
  a03597:	62 61 34 48 58 fe    	vaddps zmm31,zmm9,zmm6
  a0359d:	62 51 7c 48 28 e9    	vmovaps zmm13,zmm9
  a035a3:	62 91 74 48 58 d7    	vaddps zmm2,zmm1,zmm31
  a035a9:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm2
  a035b0:	0a 
  a035b1:	62 f2 7d 48 18 15 a5 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff671ea5]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a035b8:	1e 67 ff 
  a035bb:	62 62 6d 48 ac f9    	vfnmadd213ps zmm31,zmm2,zmm1
  a035c1:	62 11 6c 40 58 c9    	vaddps zmm9,zmm18,zmm25
  a035c7:	62 11 7c 48 28 d9    	vmovaps zmm11,zmm25
  a035cd:	62 b1 7c 48 28 da    	vmovaps zmm3,zmm18
  a035d3:	62 d1 7c 48 58 c9    	vaddps zmm1,zmm0,zmm9
  a035d9:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm1
  a035e0:	03 
  a035e1:	62 72 6d 48 ac c8    	vfnmadd213ps zmm9,zmm2,zmm0
  a035e7:	62 71 5c 48 58 c7    	vaddps zmm8,zmm4,zmm7
  a035ed:	62 c1 2c 40 58 e0    	vaddps zmm20,zmm26,zmm8
  a035f3:	62 12 6d 48 ac c2    	vfnmadd213ps zmm8,zmm2,zmm26
  a035f9:	62 71 7c 48 28 e2    	vmovaps zmm12,zmm2
  a035ff:	62 e1 7c 48 28 d2    	vmovaps zmm18,zmm2
  a03605:	62 61 7c 48 28 c2    	vmovaps zmm24,zmm2
  a0360b:	62 e1 7c 48 28 c2    	vmovaps zmm16,zmm2
  a03611:	62 41 74 40 58 d7    	vaddps zmm26,zmm17,zmm15
  a03617:	62 f1 7c 48 28 e2    	vmovaps zmm4,zmm2
  a0361d:	62 f1 7c 48 28 f2    	vmovaps zmm6,zmm2
  a03623:	62 92 2d 40 ac d3    	vfnmadd213ps zmm2,zmm26,zmm27
  a03629:	62 91 24 40 58 c2    	vaddps zmm0,zmm27,zmm26
  a0362f:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm0
  a03636:	02 
  a03637:	62 91 54 48 5c ec    	vsubps zmm5,zmm5,zmm28
  a0363d:	62 31 2c 48 5c d7    	vsubps zmm10,zmm10,zmm23
  a03643:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x540]
  a0364a:	15 
  a0364b:	62 61 0c 48 58 d0    	vaddps zmm26,zmm14,zmm0
  a03651:	62 61 0c 48 5c c8    	vsubps zmm25,zmm14,zmm0
  a03657:	62 31 14 40 58 f3    	vaddps zmm14,zmm29,zmm19
  a0365d:	62 a1 0c 40 58 dd    	vaddps zmm19,zmm30,zmm21
  a03663:	62 a1 0c 48 5c eb    	vsubps zmm21,zmm14,zmm19
  a03669:	62 b1 0c 48 58 fb    	vaddps zmm7,zmm14,zmm19
  a0366f:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x500]
  a03676:	14 
  a03677:	62 71 4c 40 5c f0    	vsubps zmm14,zmm22,zmm0
  a0367d:	62 a1 7c 48 58 f6    	vaddps zmm22,zmm0,zmm22
  a03683:	62 d1 54 48 58 c2    	vaddps zmm0,zmm5,zmm10
  a03689:	62 d1 54 48 5c ea    	vsubps zmm5,zmm5,zmm10
  a0368f:	62 41 64 48 5c e3    	vsubps zmm28,zmm3,zmm11
  a03695:	62 71 14 48 5c 54 24 	vsubps zmm10,zmm13,ZMMWORD PTR [rsp+0x340]
  a0369c:	0d 
  a0369d:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x100]
  a036a4:	04 
  a036a5:	62 12 75 48 ac e2    	vfnmadd213ps zmm12,zmm1,zmm26
  a036ab:	62 61 2c 40 58 d1    	vaddps zmm26,zmm26,zmm1
  a036b1:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x40]
  a036b8:	01 
  a036b9:	62 c2 75 48 ac d6    	vfnmadd213ps zmm18,zmm1,zmm14
  a036bf:	62 f1 0c 48 58 c9    	vaddps zmm1,zmm14,zmm1
  a036c5:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm1
  a036cc:	01 
  a036cd:	62 62 7d 48 18 2d fd 	vbroadcastss zmm29,DWORD PTR [rip+0xffffffffff671bfd]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a036d4:	1b 67 ff 
  a036d7:	62 e1 7c 48 28 5c 24 	vmovaps zmm19,ZMMWORD PTR [rsp+0x400]
  a036de:	10 
  a036df:	62 71 7c 48 28 6c 24 	vmovaps zmm13,ZMMWORD PTR [rsp+0x3c0]
  a036e6:	0f 
  a036e7:	62 42 65 40 ac c5    	vfnmadd213ps zmm24,zmm19,zmm13
  a036ed:	62 61 14 40 59 5c 24 	vmulps zmm27,zmm29,ZMMWORD PTR [rsp+0x140]
  a036f4:	05 
  a036f5:	62 11 3c 40 5c f3    	vsubps zmm14,zmm24,zmm27
  a036fb:	62 01 3c 40 58 db    	vaddps zmm27,zmm24,zmm27
  a03701:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x200]
  a03708:	08 
  a03709:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x1c0]
  a03710:	07 
  a03711:	62 e2 65 48 ac c1    	vfnmadd213ps zmm16,zmm3,zmm1
  a03717:	62 61 14 40 59 44 24 	vmulps zmm24,zmm29,ZMMWORD PTR [rsp+0x440]
  a0371e:	11 
  a0371f:	62 01 7c 40 58 f0    	vaddps zmm30,zmm16,zmm24
  a03725:	62 01 7c 40 5c c0    	vsubps zmm24,zmm16,zmm24
  a0372b:	62 51 74 40 5c df    	vsubps zmm11,zmm17,zmm15
  a03731:	62 71 7c 48 28 7c 24 	vmovaps zmm15,ZMMWORD PTR [rsp+0x300]
  a03738:	0c 
  a03739:	62 71 04 48 5c 7c 24 	vsubps zmm15,zmm15,ZMMWORD PTR [rsp+0x180]
  a03740:	06 
  a03741:	62 e1 14 40 59 4c 24 	vmulps zmm17,zmm29,ZMMWORD PTR [rsp+0x2c0]
  a03748:	0b 
  a03749:	62 e1 14 40 59 7c 24 	vmulps zmm23,zmm29,ZMMWORD PTR [rsp+0x240]
  a03750:	09 
  a03751:	62 81 54 40 59 ed    	vmulps zmm21,zmm21,zmm29
  a03757:	62 91 54 48 59 ed    	vmulps zmm5,zmm5,zmm29
  a0375d:	62 81 1c 40 59 c5    	vmulps zmm16,zmm28,zmm29
  a03763:	62 01 2c 48 59 e5    	vmulps zmm28,zmm10,zmm29
  a03769:	62 11 24 48 59 d5    	vmulps zmm10,zmm11,zmm29
  a0376f:	62 01 04 48 59 ed    	vmulps zmm29,zmm15,zmm29
  a03775:	62 92 7d 48 ac e1    	vfnmadd213ps zmm4,zmm0,zmm25
  a0377b:	62 71 34 40 58 f8    	vaddps zmm15,zmm25,zmm0
  a03781:	62 b2 45 48 ac f6    	vfnmadd213ps zmm6,zmm7,zmm22
  a03787:	62 61 4c 40 58 cf    	vaddps zmm25,zmm22,zmm7
  a0378d:	62 b1 04 40 5c c0    	vsubps zmm0,zmm31,zmm16
  a03793:	62 a1 04 40 58 f0    	vaddps zmm22,zmm31,zmm16
  a03799:	62 c1 1c 40 58 c1    	vaddps zmm16,zmm28,zmm9
  a0379f:	62 01 34 48 5c fc    	vsubps zmm31,zmm9,zmm28
  a037a5:	62 d1 74 40 58 fc    	vaddps zmm7,zmm17,zmm12
  a037ab:	62 31 1c 48 5c e1    	vsubps zmm12,zmm12,zmm17
  a037b1:	62 31 6c 40 5c df    	vsubps zmm11,zmm18,zmm23
  a037b7:	62 a1 6c 40 58 d7    	vaddps zmm18,zmm18,zmm23
  a037bd:	62 21 14 48 58 e3    	vaddps zmm28,zmm13,zmm19
  a037c3:	62 e1 74 48 58 db    	vaddps zmm19,zmm1,zmm3
  a037c9:	62 c1 3c 48 5c fa    	vsubps zmm23,zmm8,zmm10
  a037cf:	62 51 3c 48 58 c2    	vaddps zmm8,zmm8,zmm10
  a037d5:	62 11 6c 48 58 d5    	vaddps zmm10,zmm2,zmm29
  a037db:	62 01 6c 48 5c ed    	vsubps zmm29,zmm2,zmm29
  a037e1:	62 f1 54 40 58 d4    	vaddps zmm2,zmm21,zmm4
  a037e7:	62 a1 5c 48 5c ed    	vsubps zmm21,zmm4,zmm21
  a037ed:	62 e1 4c 48 5c cd    	vsubps zmm17,zmm6,zmm5
  a037f3:	62 f1 4c 48 58 cd    	vaddps zmm1,zmm6,zmm5
  a037f9:	62 71 7c 48 28 0d 7d 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff6c377d]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a03800:	37 6c ff 
  a03803:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x280]
  a0380a:	0a 
  a0380b:	62 b2 35 48 7f e7    	vpermt2ps zmm4,zmm9,zmm23
  a03811:	62 d2 35 48 7f ff    	vpermt2ps zmm7,zmm9,zmm15
  a03817:	62 32 35 48 7f f6    	vpermt2ps zmm14,zmm9,zmm22
  a0381d:	62 c2 35 48 7f e4    	vpermt2ps zmm20,zmm9,zmm12
  a03823:	62 92 35 48 7f d4    	vpermt2ps zmm2,zmm9,zmm28
  a03829:	62 d2 35 48 7f c0    	vpermt2ps zmm0,zmm9,zmm8
  a0382f:	62 22 35 48 7f d5    	vpermt2ps zmm26,zmm9,zmm21
  a03835:	62 a1 44 00 57 ff    	vxorps xmm23,xmm23,xmm23
  a0383b:	62 22 35 48 7f df    	vpermt2ps zmm27,zmm9,zmm23
  a03841:	62 e1 7c 48 28 35 b5 	vmovaps zmm22,ZMMWORD PTR [rip+0xffffffffff6c36b5]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a03848:	36 6c ff 
  a0384b:	62 f1 7c 48 28 dc    	vmovaps zmm3,zmm4
  a03851:	62 f2 4d 40 7f da    	vpermt2ps zmm3,zmm22,zmm2
  a03857:	62 61 7c 48 28 25 df 	vmovaps zmm28,ZMMWORD PTR [rip+0xffffffffff6c36df]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a0385e:	36 6c ff 
  a03861:	62 f2 1d 40 7f e2    	vpermt2ps zmm4,zmm28,zmm2
  a03867:	62 f1 7c 48 28 ef    	vmovaps zmm5,zmm7
  a0386d:	62 f2 4d 40 7f e8    	vpermt2ps zmm5,zmm22,zmm0
  a03873:	62 f2 1d 40 7f f8    	vpermt2ps zmm7,zmm28,zmm0
  a03879:	62 d1 7c 48 28 c6    	vmovaps zmm0,zmm14
  a0387f:	62 92 4d 40 7f c2    	vpermt2ps zmm0,zmm22,zmm26
  a03885:	62 12 1d 40 7f f2    	vpermt2ps zmm14,zmm28,zmm26
  a0388b:	62 b1 7c 48 28 f4    	vmovaps zmm6,zmm20
  a03891:	62 92 4d 40 7f f3    	vpermt2ps zmm6,zmm22,zmm27
  a03897:	62 82 1d 40 7f e3    	vpermt2ps zmm20,zmm28,zmm27
  a0389d:	62 61 e5 48 14 d8    	vunpcklpd zmm27,zmm3,zmm0
  a038a3:	62 f1 e5 48 15 d0    	vunpckhpd zmm2,zmm3,zmm0
  a038a9:	62 f1 d5 48 14 c6    	vunpcklpd zmm0,zmm5,zmm6
  a038af:	62 f1 d5 48 15 ee    	vunpckhpd zmm5,zmm5,zmm6
  a038b5:	62 d1 dd 48 14 f6    	vunpcklpd zmm6,zmm4,zmm14
  a038bb:	62 d1 dd 48 15 de    	vunpckhpd zmm3,zmm4,zmm14
  a038c1:	62 31 c5 48 14 ec    	vunpcklpd zmm13,zmm7,zmm20
  a038c7:	62 a1 c5 48 15 ec    	vunpckhpd zmm21,zmm7,zmm20
  a038cd:	62 71 7c 48 28 05 29 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff6c3529]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a038d4:	35 6c ff 
  a038d7:	62 91 7c 48 28 e3    	vmovaps zmm4,zmm27
  a038dd:	62 f2 3d 48 7f e0    	vpermt2ps zmm4,zmm8,zmm0
  a038e3:	62 61 7c 48 28 15 53 	vmovaps zmm26,ZMMWORD PTR [rip+0xffffffffff6c3553]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a038ea:	35 6c ff 
  a038ed:	62 62 2d 40 7f d8    	vpermt2ps zmm27,zmm26,zmm0
  a038f3:	62 71 7c 48 28 e2    	vmovaps zmm12,zmm2
  a038f9:	62 72 3d 48 7f e5    	vpermt2ps zmm12,zmm8,zmm5
  a038ff:	62 f2 2d 40 7f d5    	vpermt2ps zmm2,zmm26,zmm5
  a03905:	62 71 7c 48 28 f6    	vmovaps zmm14,zmm6
  a0390b:	62 52 3d 48 7f f5    	vpermt2ps zmm14,zmm8,zmm13
  a03911:	62 d2 2d 40 7f f5    	vpermt2ps zmm6,zmm26,zmm13
  a03917:	62 f1 7c 48 28 fb    	vmovaps zmm7,zmm3
  a0391d:	62 b2 3d 48 7f fd    	vpermt2ps zmm7,zmm8,zmm21
  a03923:	62 b2 2d 40 7f dd    	vpermt2ps zmm3,zmm26,zmm21
  a03929:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0xc0]
  a03930:	03 
  a03931:	62 d2 35 48 7f ea    	vpermt2ps zmm5,zmm9,zmm10
  a03937:	62 12 35 48 7f d9    	vpermt2ps zmm11,zmm9,zmm25
  a0393d:	62 02 35 48 7f f7    	vpermt2ps zmm30,zmm9,zmm31
  a03943:	62 71 7c 48 28 6c 24 	vmovaps zmm13,ZMMWORD PTR [rsp+0x80]
  a0394a:	02 
  a0394b:	62 32 35 48 7f ea    	vpermt2ps zmm13,zmm9,zmm18
  a03951:	62 a2 35 48 7f cb    	vpermt2ps zmm17,zmm9,zmm19
  a03957:	62 82 35 48 7f c5    	vpermt2ps zmm16,zmm9,zmm29
  a0395d:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x40]
  a03964:	01 
  a03965:	62 72 35 48 7f d1    	vpermt2ps zmm10,zmm9,zmm1
  a0396b:	62 22 35 48 7f c7    	vpermt2ps zmm24,zmm9,zmm23
  a03971:	62 f1 7c 48 28 c5    	vmovaps zmm0,zmm5
  a03977:	62 b2 4d 40 7f c1    	vpermt2ps zmm0,zmm22,zmm17
  a0397d:	62 b2 1d 40 7f e9    	vpermt2ps zmm5,zmm28,zmm17
  a03983:	62 e1 7c 48 28 cd    	vmovaps zmm17,zmm5
  a03989:	62 d1 7c 48 28 cb    	vmovaps zmm1,zmm11
  a0398f:	62 b2 4d 40 7f c8    	vpermt2ps zmm1,zmm22,zmm16
  a03995:	62 32 1d 40 7f d8    	vpermt2ps zmm11,zmm28,zmm16
  a0399b:	62 91 7c 48 28 ee    	vmovaps zmm5,zmm30
  a039a1:	62 d2 4d 40 7f ea    	vpermt2ps zmm5,zmm22,zmm10
  a039a7:	62 42 1d 40 7f f2    	vpermt2ps zmm30,zmm28,zmm10
  a039ad:	62 51 7c 48 28 cd    	vmovaps zmm9,zmm13
  a039b3:	62 82 15 48 77 f0    	vpermi2ps zmm22,zmm13,zmm24
  a039b9:	62 12 1d 40 7f c8    	vpermt2ps zmm9,zmm28,zmm24
  a039bf:	62 c1 7c 48 28 d1    	vmovaps zmm18,zmm9
  a039c5:	62 71 fd 48 14 fd    	vunpcklpd zmm15,zmm0,zmm5
  a039cb:	62 71 fd 48 15 cd    	vunpckhpd zmm9,zmm0,zmm5
  a039d1:	62 b1 f5 48 14 ee    	vunpcklpd zmm5,zmm1,zmm22
  a039d7:	62 31 f5 48 15 ee    	vunpckhpd zmm13,zmm1,zmm22
  a039dd:	62 11 f5 40 14 d6    	vunpcklpd zmm10,zmm17,zmm30
  a039e3:	62 91 f5 40 15 ce    	vunpckhpd zmm1,zmm17,zmm30
  a039e9:	62 a1 a5 48 14 c2    	vunpcklpd zmm16,zmm11,zmm18
  a039ef:	62 31 a5 48 15 da    	vunpckhpd zmm11,zmm11,zmm18
  a039f5:	62 d1 7c 48 28 c7    	vmovaps zmm0,zmm15
  a039fb:	62 f2 3d 48 7f c5    	vpermt2ps zmm0,zmm8,zmm5
  a03a01:	62 72 2d 40 7f fd    	vpermt2ps zmm15,zmm26,zmm5
  a03a07:	62 41 7c 48 28 c9    	vmovaps zmm25,zmm9
  a03a0d:	62 42 3d 48 7f cd    	vpermt2ps zmm25,zmm8,zmm13
  a03a13:	62 52 2d 40 7f cd    	vpermt2ps zmm9,zmm26,zmm13
  a03a19:	62 51 7c 48 28 ea    	vmovaps zmm13,zmm10
  a03a1f:	62 32 3d 48 7f e8    	vpermt2ps zmm13,zmm8,zmm16
  a03a25:	62 32 2d 40 7f d0    	vpermt2ps zmm10,zmm26,zmm16
  a03a2b:	62 52 75 48 77 c3    	vpermi2ps zmm8,zmm1,zmm11
  a03a31:	62 d2 2d 40 7f cb    	vpermt2ps zmm1,zmm26,zmm11
  a03a37:	62 e1 7c 48 10 72 02 	vmovups zmm22,ZMMWORD PTR [rdx+0x80]
  a03a3e:	62 e1 7c 48 10 6a 03 	vmovups zmm21,ZMMWORD PTR [rdx+0xc0]
  a03a45:	62 71 7c 48 10 5a 04 	vmovups zmm11,ZMMWORD PTR [rdx+0x100]
  a03a4c:	62 61 7c 48 10 52 05 	vmovups zmm26,ZMMWORD PTR [rdx+0x140]
  a03a53:	62 e1 7c 48 10 4a 06 	vmovups zmm17,ZMMWORD PTR [rdx+0x180]
  a03a5a:	62 e1 7c 48 10 42 07 	vmovups zmm16,ZMMWORD PTR [rdx+0x1c0]
  a03a61:	62 61 7c 48 10 62 08 	vmovups zmm28,ZMMWORD PTR [rdx+0x200]
  a03a68:	62 61 7c 48 10 6a 09 	vmovups zmm29,ZMMWORD PTR [rdx+0x240]
  a03a6f:	62 61 7c 48 10 42 0a 	vmovups zmm24,ZMMWORD PTR [rdx+0x280]
  a03a76:	62 e1 7c 48 10 7a 0b 	vmovups zmm23,ZMMWORD PTR [rdx+0x2c0]
  a03a7d:	62 61 7c 48 10 72 0c 	vmovups zmm30,ZMMWORD PTR [rdx+0x300]
  a03a84:	62 61 7c 48 10 7a 0d 	vmovups zmm31,ZMMWORD PTR [rdx+0x340]
  a03a8b:	62 e1 7c 48 10 62 0e 	vmovups zmm20,ZMMWORD PTR [rdx+0x380]
  a03a92:	62 e1 7c 48 10 5a 0f 	vmovups zmm19,ZMMWORD PTR [rdx+0x3c0]
  a03a99:	62 81 0c 48 59 d4    	vmulps zmm18,zmm14,zmm28
  a03a9f:	62 82 15 48 bc d5    	vfnmadd231ps zmm18,zmm13,zmm29
  a03aa5:	62 b1 5c 48 58 ea    	vaddps zmm5,zmm4,zmm18
  a03aab:	62 11 14 48 59 ec    	vmulps zmm13,zmm13,zmm28
  a03ab1:	62 41 1c 48 59 e3    	vmulps zmm28,zmm12,zmm11
  a03ab7:	62 02 35 40 bc e2    	vfnmadd231ps zmm28,zmm25,zmm26
  a03abd:	62 52 15 40 b8 ee    	vfmadd231ps zmm13,zmm29,zmm14
  a03ac3:	62 11 44 48 59 f6    	vmulps zmm14,zmm7,zmm30
  a03ac9:	62 12 3d 48 bc f7    	vfnmadd231ps zmm14,zmm8,zmm31
  a03acf:	62 41 1c 40 58 ee    	vaddps zmm29,zmm28,zmm14
  a03ad5:	62 41 34 40 59 cb    	vmulps zmm25,zmm25,zmm11
  a03adb:	62 11 54 48 58 dd    	vaddps zmm11,zmm5,zmm29
  a03ae1:	62 42 2d 40 b8 cc    	vfmadd231ps zmm25,zmm26,zmm12
  a03ae7:	62 31 24 40 59 e6    	vmulps zmm12,zmm27,zmm22
  a03aed:	62 32 05 48 bc e5    	vfnmadd231ps zmm12,zmm15,zmm21
  a03af3:	62 01 4c 48 59 d0    	vmulps zmm26,zmm6,zmm24
  a03af9:	62 22 2d 48 bc d7    	vfnmadd231ps zmm26,zmm10,zmm23
  a03aff:	62 11 3c 48 59 c6    	vmulps zmm8,zmm8,zmm30
  a03b05:	62 01 1c 48 58 f2    	vaddps zmm30,zmm12,zmm26
  a03b0b:	62 72 05 40 b8 c7    	vfmadd231ps zmm8,zmm31,zmm7
  a03b11:	62 b1 6c 48 59 f9    	vmulps zmm7,zmm2,zmm17
  a03b17:	62 b2 35 48 bc f8    	vfnmadd231ps zmm7,zmm9,zmm16
  a03b1d:	62 21 64 48 59 fc    	vmulps zmm31,zmm3,zmm20
  a03b23:	62 22 75 48 bc fb    	vfnmadd231ps zmm31,zmm1,zmm19
  a03b29:	62 31 04 48 59 fe    	vmulps zmm15,zmm15,zmm22
  a03b2f:	62 81 44 48 58 f7    	vaddps zmm22,zmm7,zmm31
  a03b35:	62 12 55 40 b8 fb    	vfmadd231ps zmm15,zmm21,zmm27
  a03b3b:	62 a1 0c 40 58 ee    	vaddps zmm21,zmm30,zmm22
  a03b41:	62 61 14 48 58 d8    	vaddps zmm27,zmm13,zmm0
  a03b47:	62 11 2c 48 59 d0    	vmulps zmm10,zmm10,zmm24
  a03b4d:	62 41 34 40 58 c0    	vaddps zmm24,zmm25,zmm8
  a03b53:	62 72 45 40 b8 d6    	vfmadd231ps zmm10,zmm23,zmm6
  a03b59:	62 81 3c 40 58 fb    	vaddps zmm23,zmm24,zmm27
  a03b5f:	62 d1 04 48 58 f2    	vaddps zmm6,zmm15,zmm10
  a03b65:	62 31 34 48 59 c9    	vmulps zmm9,zmm9,zmm17
  a03b6b:	62 72 7d 40 b8 ca    	vfmadd231ps zmm9,zmm16,zmm2
  a03b71:	62 b1 74 48 59 cc    	vmulps zmm1,zmm1,zmm20
  a03b77:	62 f2 65 40 b8 cb    	vfmadd231ps zmm1,zmm19,zmm3
  a03b7d:	62 f1 34 48 58 d1    	vaddps zmm2,zmm9,zmm1
  a03b83:	62 e1 4c 48 58 c2    	vaddps zmm16,zmm6,zmm2
  a03b89:	62 b1 5c 48 5c da    	vsubps zmm3,zmm4,zmm18
  a03b8f:	62 d1 34 40 5c e0    	vsubps zmm4,zmm25,zmm8
  a03b95:	62 71 64 48 58 c4    	vaddps zmm8,zmm3,zmm4
  a03b9b:	62 11 1c 48 5c e2    	vsubps zmm12,zmm12,zmm26
  a03ba1:	62 51 04 48 5c d2    	vsubps zmm10,zmm15,zmm10
  a03ba7:	62 72 7d 48 18 3d eb 	vbroadcastss zmm15,DWORD PTR [rip+0xffffffffff6717eb]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a03bae:	17 67 ff 
  a03bb1:	62 c1 1c 48 58 ca    	vaddps zmm17,zmm12,zmm10
  a03bb7:	62 c1 74 40 59 cf    	vmulps zmm17,zmm17,zmm15
  a03bbd:	62 71 34 48 5c c9    	vsubps zmm9,zmm9,zmm1
  a03bc3:	62 91 44 48 5c ff    	vsubps zmm7,zmm7,zmm31
  a03bc9:	62 f1 34 48 5c cf    	vsubps zmm1,zmm9,zmm7
  a03bcf:	62 c1 74 48 59 d7    	vmulps zmm18,zmm1,zmm15
  a03bd5:	62 a1 74 40 58 da    	vaddps zmm19,zmm17,zmm18
  a03bdb:	62 b1 3c 48 58 cb    	vaddps zmm1,zmm8,zmm19
  a03be1:	62 d1 7c 48 5c c5    	vsubps zmm0,zmm0,zmm13
  a03be7:	62 11 0c 48 5c ec    	vsubps zmm13,zmm14,zmm28
  a03bed:	62 71 14 48 58 f0    	vaddps zmm14,zmm13,zmm0
  a03bf3:	62 51 2c 48 5c d4    	vsubps zmm10,zmm10,zmm12
  a03bf9:	62 51 2c 48 59 d7    	vmulps zmm10,zmm10,zmm15
  a03bff:	62 d1 44 48 58 f9    	vaddps zmm7,zmm7,zmm9
  a03c05:	62 d1 44 48 59 ff    	vmulps zmm7,zmm7,zmm15
  a03c0b:	62 71 2c 48 5c cf    	vsubps zmm9,zmm10,zmm7
  a03c11:	62 c1 0c 48 58 e1    	vaddps zmm20,zmm14,zmm9
  a03c17:	62 11 54 48 5c e5    	vsubps zmm12,zmm5,zmm29
  a03c1d:	62 f1 4c 48 5c d2    	vsubps zmm2,zmm6,zmm2
  a03c23:	62 f1 1c 48 58 ea    	vaddps zmm5,zmm12,zmm2
  a03c29:	62 11 24 40 5c f8    	vsubps zmm15,zmm27,zmm24
  a03c2f:	62 81 4c 40 5c f6    	vsubps zmm22,zmm22,zmm30
  a03c35:	62 21 04 48 58 c6    	vaddps zmm24,zmm15,zmm22
  a03c3b:	62 f1 64 48 5c e4    	vsubps zmm4,zmm3,zmm4
  a03c41:	62 71 2c 48 58 d7    	vaddps zmm10,zmm10,zmm7
  a03c47:	62 d1 5c 48 58 fa    	vaddps zmm7,zmm4,zmm10
  a03c4d:	62 41 7c 48 5c d5    	vsubps zmm26,zmm0,zmm13
  a03c53:	62 a1 6c 40 5c c9    	vsubps zmm17,zmm18,zmm17
  a03c59:	62 21 2c 40 58 d9    	vaddps zmm27,zmm26,zmm17
  a03c5f:	62 b1 24 48 5c f5    	vsubps zmm6,zmm11,zmm21
  a03c65:	62 21 44 40 5c c8    	vsubps zmm25,zmm23,zmm16
  a03c6b:	62 b1 3c 48 5c db    	vsubps zmm3,zmm8,zmm19
  a03c71:	62 c1 0c 48 5c d9    	vsubps zmm19,zmm14,zmm9
  a03c77:	62 f1 1c 48 5c d2    	vsubps zmm2,zmm12,zmm2
  a03c7d:	62 31 04 48 5c ee    	vsubps zmm13,zmm15,zmm22
  a03c83:	62 d1 5c 48 5c c2    	vsubps zmm0,zmm4,zmm10
  a03c89:	62 31 2c 40 5c c9    	vsubps zmm9,zmm26,zmm17
  a03c8f:	62 31 24 48 58 c5    	vaddps zmm8,zmm11,zmm21
  a03c95:	62 31 44 40 58 f8    	vaddps zmm15,zmm23,zmm16
  a03c9b:	62 f1 7c 48 28 25 db 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff68a4db]        # 8e180 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b630>
  a03ca2:	a4 68 ff 
  a03ca5:	62 51 7c 48 28 d0    	vmovaps zmm10,zmm8
  a03cab:	62 52 5d 48 7f d7    	vpermt2ps zmm10,zmm4,zmm15
  a03cb1:	62 51 3c 48 15 df    	vunpckhps zmm11,zmm8,zmm15
  a03cb7:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm11
  a03cbe:	03 
  a03cbf:	62 51 3c 48 14 df    	vunpcklps zmm11,zmm8,zmm15
  a03cc5:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm11
  a03ccc:	02 
  a03ccd:	c5 7c 28 35 eb a4 68 	vmovaps ymm14,YMMWORD PTR [rip+0xffffffffff68a4eb]        # 8e1c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b670>
  a03cd4:	ff 
  a03cd5:	62 52 0d 48 7f c7    	vpermt2ps zmm8,zmm14,zmm15
  a03cdb:	62 71 7c 48 28 f9    	vmovaps zmm15,zmm1
  a03ce1:	62 32 5d 48 7f fc    	vpermt2ps zmm15,zmm4,zmm20
  a03ce7:	62 a1 74 48 15 c4    	vunpckhps zmm16,zmm1,zmm20
  a03ced:	62 a1 74 48 14 cc    	vunpcklps zmm17,zmm1,zmm20
  a03cf3:	62 b2 0d 48 7f cc    	vpermt2ps zmm1,zmm14,zmm20
  a03cf9:	62 e1 7c 48 28 d5    	vmovaps zmm18,zmm5
  a03cff:	62 82 5d 48 7f d0    	vpermt2ps zmm18,zmm4,zmm24
  a03d05:	62 81 54 48 15 e0    	vunpckhps zmm20,zmm5,zmm24
  a03d0b:	62 81 54 48 14 e8    	vunpcklps zmm21,zmm5,zmm24
  a03d11:	62 92 0d 48 7f e8    	vpermt2ps zmm5,zmm14,zmm24
  a03d17:	62 e1 7c 48 28 f7    	vmovaps zmm22,zmm7
  a03d1d:	62 82 5d 48 7f f3    	vpermt2ps zmm22,zmm4,zmm27
  a03d23:	62 81 44 48 15 fb    	vunpckhps zmm23,zmm7,zmm27
  a03d29:	62 01 44 48 14 c3    	vunpcklps zmm24,zmm7,zmm27
  a03d2f:	62 92 0d 48 7f fb    	vpermt2ps zmm7,zmm14,zmm27
  a03d35:	62 61 7c 48 28 d6    	vmovaps zmm26,zmm6
  a03d3b:	62 02 5d 48 7f d1    	vpermt2ps zmm26,zmm4,zmm25
  a03d41:	62 01 4c 48 15 d9    	vunpckhps zmm27,zmm6,zmm25
  a03d47:	62 01 4c 48 14 e1    	vunpcklps zmm28,zmm6,zmm25
  a03d4d:	62 92 0d 48 7f f1    	vpermt2ps zmm6,zmm14,zmm25
  a03d53:	62 61 7c 48 28 cb    	vmovaps zmm25,zmm3
  a03d59:	62 22 5d 48 7f cb    	vpermt2ps zmm25,zmm4,zmm19
  a03d5f:	62 21 64 48 15 eb    	vunpckhps zmm29,zmm3,zmm19
  a03d65:	62 21 64 48 14 f3    	vunpcklps zmm30,zmm3,zmm19
  a03d6b:	62 b2 0d 48 7f db    	vpermt2ps zmm3,zmm14,zmm19
  a03d71:	62 e1 7c 48 28 da    	vmovaps zmm19,zmm2
  a03d77:	62 c2 5d 48 7f dd    	vpermt2ps zmm19,zmm4,zmm13
  a03d7d:	62 41 6c 48 15 fd    	vunpckhps zmm31,zmm2,zmm13
  a03d83:	62 51 6c 48 14 e5    	vunpcklps zmm12,zmm2,zmm13
  a03d89:	62 d2 0d 48 7f d5    	vpermt2ps zmm2,zmm14,zmm13
  a03d8f:	62 d2 7d 48 77 e1    	vpermi2ps zmm4,zmm0,zmm9
  a03d95:	62 51 7c 48 15 e9    	vunpckhps zmm13,zmm0,zmm9
  a03d9b:	62 51 7c 48 14 d9    	vunpcklps zmm11,zmm0,zmm9
  a03da1:	62 d2 0d 48 7f c1    	vpermt2ps zmm0,zmm14,zmm9
  a03da7:	62 71 7c 48 11 16    	vmovups ZMMWORD PTR [rsi],zmm10
  a03dad:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x80]
  a03db4:	02 
  a03db5:	62 73 7d 48 19 4e 06 	vextractf32x4 XMMWORD PTR [rsi+0x60],zmm9,0x3
  a03dbc:	03 
  a03dbd:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0xc0]
  a03dc4:	03 
  a03dc5:	62 53 7d 48 19 c9 03 	vextractf32x4 xmm9,zmm9,0x3
  a03dcc:	c5 78 13 4e 70       	vmovlps QWORD PTR [rsi+0x70],xmm9
  a03dd1:	c5 7c 11 46 40       	vmovups YMMWORD PTR [rsi+0x40],ymm8
  a03dd6:	62 71 7c 48 11 be 78 	vmovups ZMMWORD PTR [rsi+0x78],zmm15
  a03ddd:	00 00 00 
  a03de0:	62 e3 7d 48 19 8e d8 	vextractf32x4 XMMWORD PTR [rsi+0xd8],zmm17,0x3
  a03de7:	00 00 00 03 
  a03deb:	62 c3 7d 48 19 c0 03 	vextractf32x4 xmm8,zmm16,0x3
  a03df2:	c5 78 13 86 e8 00 00 	vmovlps QWORD PTR [rsi+0xe8],xmm8
  a03df9:	00 
  a03dfa:	c5 fc 11 8e b8 00 00 	vmovups YMMWORD PTR [rsi+0xb8],ymm1
  a03e01:	00 
  a03e02:	62 e1 7c 48 11 96 f0 	vmovups ZMMWORD PTR [rsi+0xf0],zmm18
  a03e09:	00 00 00 
  a03e0c:	62 e3 7d 48 19 6e 15 	vextractf32x4 XMMWORD PTR [rsi+0x150],zmm21,0x3
  a03e13:	03 
  a03e14:	62 e3 7d 48 19 e1 03 	vextractf32x4 xmm1,zmm20,0x3
  a03e1b:	c5 f8 13 8e 60 01 00 	vmovlps QWORD PTR [rsi+0x160],xmm1
  a03e22:	00 
  a03e23:	c5 fc 11 ae 30 01 00 	vmovups YMMWORD PTR [rsi+0x130],ymm5
  a03e2a:	00 
  a03e2b:	62 e1 7c 48 11 b6 68 	vmovups ZMMWORD PTR [rsi+0x168],zmm22
  a03e32:	01 00 00 
  a03e35:	62 63 7d 48 19 86 c8 	vextractf32x4 XMMWORD PTR [rsi+0x1c8],zmm24,0x3
  a03e3c:	01 00 00 03 
  a03e40:	62 e3 7d 48 19 f9 03 	vextractf32x4 xmm1,zmm23,0x3
  a03e47:	c5 f8 13 8e d8 01 00 	vmovlps QWORD PTR [rsi+0x1d8],xmm1
  a03e4e:	00 
  a03e4f:	c5 fc 11 be a8 01 00 	vmovups YMMWORD PTR [rsi+0x1a8],ymm7
  a03e56:	00 
  a03e57:	62 61 7c 48 11 96 e0 	vmovups ZMMWORD PTR [rsi+0x1e0],zmm26
  a03e5e:	01 00 00 
  a03e61:	62 63 7d 48 19 66 24 	vextractf32x4 XMMWORD PTR [rsi+0x240],zmm28,0x3
  a03e68:	03 
  a03e69:	62 63 7d 48 19 d9 03 	vextractf32x4 xmm1,zmm27,0x3
  a03e70:	c5 f8 13 8e 50 02 00 	vmovlps QWORD PTR [rsi+0x250],xmm1
  a03e77:	00 
  a03e78:	c5 fc 11 b6 20 02 00 	vmovups YMMWORD PTR [rsi+0x220],ymm6
  a03e7f:	00 
  a03e80:	62 61 7c 48 11 8e 58 	vmovups ZMMWORD PTR [rsi+0x258],zmm25
  a03e87:	02 00 00 
  a03e8a:	62 63 7d 48 19 b6 b8 	vextractf32x4 XMMWORD PTR [rsi+0x2b8],zmm30,0x3
  a03e91:	02 00 00 03 
  a03e95:	62 63 7d 48 19 e9 03 	vextractf32x4 xmm1,zmm29,0x3
  a03e9c:	c5 f8 13 8e c8 02 00 	vmovlps QWORD PTR [rsi+0x2c8],xmm1
  a03ea3:	00 
  a03ea4:	c5 fc 11 9e 98 02 00 	vmovups YMMWORD PTR [rsi+0x298],ymm3
  a03eab:	00 
  a03eac:	62 e1 7c 48 11 9e d0 	vmovups ZMMWORD PTR [rsi+0x2d0],zmm19
  a03eb3:	02 00 00 
  a03eb6:	62 73 7d 48 19 66 33 	vextractf32x4 XMMWORD PTR [rsi+0x330],zmm12,0x3
  a03ebd:	03 
  a03ebe:	62 63 7d 48 19 f9 03 	vextractf32x4 xmm1,zmm31,0x3
  a03ec5:	c5 f8 13 8e 40 03 00 	vmovlps QWORD PTR [rsi+0x340],xmm1
  a03ecc:	00 
  a03ecd:	c5 fc 11 96 10 03 00 	vmovups YMMWORD PTR [rsi+0x310],ymm2
  a03ed4:	00 
  a03ed5:	62 f1 7c 48 11 a6 48 	vmovups ZMMWORD PTR [rsi+0x348],zmm4
  a03edc:	03 00 00 
  a03edf:	62 73 7d 48 19 9e a8 	vextractf32x4 XMMWORD PTR [rsi+0x3a8],zmm11,0x3
  a03ee6:	03 00 00 03 
  a03eea:	62 73 7d 48 19 e9 03 	vextractf32x4 xmm1,zmm13,0x3
  a03ef1:	c5 f8 13 8e b8 03 00 	vmovlps QWORD PTR [rsi+0x3b8],xmm1
  a03ef8:	00 
  a03ef9:	c5 fc 11 86 88 03 00 	vmovups YMMWORD PTR [rsi+0x388],ymm0
  a03f00:	00 
  a03f01:	48 89 ec             	mov    rsp,rbp
  a03f04:	5d                   	pop    rbp
  a03f05:	c5 f8 77             	vzeroupper
  a03f08:	c3                   	ret
