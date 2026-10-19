
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a59240 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a59240:	55                   	push   rbp
  a59241:	48 89 e5             	mov    rbp,rsp
  a59244:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a59248:	48 81 ec c0 01 00 00 	sub    rsp,0x1c0
  a5924f:	48 c1 e2 08          	shl    rdx,0x8
  a59253:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  a59257:	31 d2                	xor    edx,edx
  a59259:	4c 8d 84 24 40 01 00 	lea    r8,[rsp+0x140]
  a59260:	00 
  a59261:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  a59266:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  a5926d:	00 00 00 
  a59270:	c6 84 24 40 01 00 00 	mov    BYTE PTR [rsp+0x140],0x0
  a59277:	00 
  a59278:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  a5927d:	62 71 7c 48 10 2c 17 	vmovups zmm13,ZMMWORD PTR [rdi+rdx*1]
  a59284:	62 e1 7c 48 10 64 17 	vmovups zmm20,ZMMWORD PTR [rdi+rdx*1+0x40]
  a5928b:	01 
  a5928c:	62 71 7c 48 10 74 17 	vmovups zmm14,ZMMWORD PTR [rdi+rdx*1+0x80]
  a59293:	02 
  a59294:	62 e1 7c 48 10 54 17 	vmovups zmm18,ZMMWORD PTR [rdi+rdx*1+0xc0]
  a5929b:	03 
  a5929c:	62 c1 7c 48 28 cd    	vmovaps zmm17,zmm13
  a592a2:	c4 41 00 57 ff       	vxorps xmm15,xmm15,xmm15
  a592a7:	62 f1 7c 48 28 2d 4f 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff639f4f]        # 93200 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x206b0>
  a592ae:	9f 63 ff 
  a592b1:	62 52 55 48 7f ef    	vpermt2ps zmm13,zmm5,zmm15
  a592b7:	62 a1 7c 48 28 c4    	vmovaps zmm16,zmm20
  a592bd:	62 f1 7c 48 28 05 f9 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff639ef9]        # 931c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20670>
  a592c4:	9e 63 ff 
  a592c7:	62 c2 7d 48 7f cf    	vpermt2ps zmm17,zmm0,zmm15
  a592cd:	62 c2 7d 48 7f c7    	vpermt2ps zmm16,zmm0,zmm15
  a592d3:	62 c2 55 48 7f e7    	vpermt2ps zmm20,zmm5,zmm15
  a592d9:	62 c1 7c 48 28 fe    	vmovaps zmm23,zmm14
  a592df:	62 c2 7d 48 7f ff    	vpermt2ps zmm23,zmm0,zmm15
  a592e5:	62 52 55 48 7f f7    	vpermt2ps zmm14,zmm5,zmm15
  a592eb:	62 b1 7c 48 28 f2    	vmovaps zmm6,zmm18
  a592f1:	62 c2 55 48 7f d7    	vpermt2ps zmm18,zmm5,zmm15
  a592f7:	62 d2 7d 48 7f f7    	vpermt2ps zmm6,zmm0,zmm15
  a592fd:	62 e1 7c 48 10 6c 17 	vmovups zmm21,ZMMWORD PTR [rdi+rdx*1+0x100]
  a59304:	04 
  a59305:	62 21 7c 48 28 ed    	vmovaps zmm29,zmm21
  a5930b:	62 c2 55 48 7f ef    	vpermt2ps zmm21,zmm5,zmm15
  a59311:	62 42 7d 48 7f ef    	vpermt2ps zmm29,zmm0,zmm15
  a59317:	62 61 7c 48 10 7c 17 	vmovups zmm31,ZMMWORD PTR [rdi+rdx*1+0x140]
  a5931e:	05 
  a5931f:	62 81 7c 48 28 f7    	vmovaps zmm22,zmm31
  a59325:	62 42 55 48 7f ff    	vpermt2ps zmm31,zmm5,zmm15
  a5932b:	62 c2 7d 48 7f f7    	vpermt2ps zmm22,zmm0,zmm15
  a59331:	62 e1 7c 48 10 5c 17 	vmovups zmm19,ZMMWORD PTR [rdi+rdx*1+0x180]
  a59338:	06 
  a59339:	62 21 7c 48 28 db    	vmovaps zmm27,zmm19
  a5933f:	62 c2 55 48 7f df    	vpermt2ps zmm19,zmm5,zmm15
  a59345:	62 42 7d 48 7f df    	vpermt2ps zmm27,zmm0,zmm15
  a5934b:	62 71 7c 48 10 54 17 	vmovups zmm10,ZMMWORD PTR [rdi+rdx*1+0x1c0]
  a59352:	07 
  a59353:	62 41 7c 48 28 e2    	vmovaps zmm28,zmm10
  a59359:	62 52 55 48 7f d7    	vpermt2ps zmm10,zmm5,zmm15
  a5935f:	62 42 7d 48 7f e7    	vpermt2ps zmm28,zmm0,zmm15
  a59365:	62 f1 7c 48 10 4c 17 	vmovups zmm1,ZMMWORD PTR [rdi+rdx*1+0x200]
  a5936c:	08 
  a5936d:	62 61 7c 48 28 f1    	vmovaps zmm30,zmm1
  a59373:	62 d2 55 48 7f cf    	vpermt2ps zmm1,zmm5,zmm15
  a59379:	62 42 7d 48 7f f7    	vpermt2ps zmm30,zmm0,zmm15
  a5937f:	62 61 7c 48 10 54 17 	vmovups zmm26,ZMMWORD PTR [rdi+rdx*1+0x240]
  a59386:	09 
  a59387:	62 91 7c 48 28 d2    	vmovaps zmm2,zmm26
  a5938d:	62 42 55 48 7f d7    	vpermt2ps zmm26,zmm5,zmm15
  a59393:	62 d2 7d 48 7f d7    	vpermt2ps zmm2,zmm0,zmm15
  a59399:	62 f1 7c 48 10 64 17 	vmovups zmm4,ZMMWORD PTR [rdi+rdx*1+0x280]
  a593a0:	0a 
  a593a1:	62 f1 7c 48 28 dc    	vmovaps zmm3,zmm4
  a593a7:	62 d2 55 48 7f e7    	vpermt2ps zmm4,zmm5,zmm15
  a593ad:	62 d2 7d 48 7f df    	vpermt2ps zmm3,zmm0,zmm15
  a593b3:	62 71 7c 48 10 4c 17 	vmovups zmm9,ZMMWORD PTR [rdi+rdx*1+0x2c0]
  a593ba:	0b 
  a593bb:	62 51 7c 48 28 d9    	vmovaps zmm11,zmm9
  a593c1:	62 52 55 48 7f cf    	vpermt2ps zmm9,zmm5,zmm15
  a593c7:	62 52 7d 48 7f df    	vpermt2ps zmm11,zmm0,zmm15
  a593cd:	62 01 74 40 58 c3    	vaddps zmm24,zmm17,zmm27
  a593d3:	62 61 4c 48 58 ca    	vaddps zmm25,zmm6,zmm2
  a593d9:	62 71 14 40 58 e3    	vaddps zmm12,zmm29,zmm3
  a593df:	62 31 1c 40 58 c0    	vaddps zmm8,zmm28,zmm16
  a593e5:	62 b1 2c 48 58 ec    	vaddps zmm5,zmm10,zmm20
  a593eb:	62 a1 2c 48 5c e4    	vsubps zmm20,zmm10,zmm20
  a593f1:	62 b1 0c 40 58 ff    	vaddps zmm7,zmm30,zmm23
  a593f7:	62 61 14 40 5c eb    	vsubps zmm29,zmm29,zmm3
  a593fd:	62 91 34 48 58 df    	vaddps zmm3,zmm9,zmm31
  a59403:	62 01 34 48 5c ff    	vsubps zmm31,zmm9,zmm31
  a59409:	62 31 24 48 58 ce    	vaddps zmm9,zmm11,zmm22
  a5940f:	62 a1 0c 40 5c ff    	vsubps zmm23,zmm30,zmm23
  a59415:	62 01 6c 40 58 f2    	vaddps zmm30,zmm18,zmm26
  a5941b:	62 01 6c 40 5c d2    	vsubps zmm26,zmm18,zmm26
  a59421:	62 b1 14 48 58 c3    	vaddps zmm0,zmm13,zmm19
  a59427:	62 01 74 40 5c db    	vsubps zmm27,zmm17,zmm27
  a5942d:	62 e1 54 40 58 d4    	vaddps zmm18,zmm21,zmm4
  a59433:	62 f1 54 40 5c e4    	vsubps zmm4,zmm21,zmm4
  a59439:	62 81 7c 40 5c c4    	vsubps zmm16,zmm16,zmm28
  a5943f:	62 11 3c 40 58 d1    	vaddps zmm10,zmm24,zmm25
  a59445:	62 41 74 48 58 e6    	vaddps zmm28,zmm1,zmm14
  a5944b:	62 d1 74 48 5c ce    	vsubps zmm1,zmm1,zmm14
  a59451:	62 51 4c 40 5c db    	vsubps zmm11,zmm22,zmm11
  a59457:	62 c1 1c 48 58 c8    	vaddps zmm17,zmm12,zmm8
  a5945d:	62 e1 6c 40 58 ed    	vaddps zmm21,zmm18,zmm5
  a59463:	62 31 14 48 5c f3    	vsubps zmm14,zmm13,zmm19
  a59469:	62 f1 6c 48 5c d6    	vsubps zmm2,zmm2,zmm6
  a5946f:	62 c1 44 48 58 d9    	vaddps zmm19,zmm7,zmm9
  a59475:	62 e1 1c 40 58 f3    	vaddps zmm22,zmm28,zmm3
  a5947b:	62 51 1c 48 5c c0    	vsubps zmm8,zmm12,zmm8
  a59481:	62 31 14 40 58 e4    	vaddps zmm12,zmm29,zmm20
  a59487:	62 d1 44 48 5c f9    	vsubps zmm7,zmm7,zmm9
  a5948d:	62 11 44 40 58 cf    	vaddps zmm9,zmm23,zmm31
  a59493:	62 f1 6c 40 5c ed    	vsubps zmm5,zmm18,zmm5
  a59499:	62 71 7c 40 58 ec    	vaddps zmm13,zmm16,zmm4
  a5949f:	62 01 3c 40 5c c9    	vsubps zmm25,zmm24,zmm25
  a594a5:	62 e1 24 48 58 d1    	vaddps zmm18,zmm11,zmm1
  a594ab:	62 61 1c 40 5c c3    	vsubps zmm24,zmm28,zmm3
  a594b1:	62 21 14 48 5c e2    	vsubps zmm28,zmm13,zmm18
  a594b7:	62 b1 14 48 58 da    	vaddps zmm3,zmm13,zmm18
  a594bd:	62 91 54 48 5c f0    	vsubps zmm6,zmm5,zmm24
  a594c3:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm6
  a594ca:	03 
  a594cb:	62 11 54 48 58 e8    	vaddps zmm13,zmm5,zmm24
  a594d1:	62 41 1c 48 58 c1    	vaddps zmm24,zmm12,zmm9
  a594d7:	62 61 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm24
  a594de:	01 
  a594df:	62 51 1c 48 5c c9    	vsubps zmm9,zmm12,zmm9
  a594e5:	62 11 7c 48 58 e6    	vaddps zmm12,zmm0,zmm30
  a594eb:	62 91 7c 48 5c ee    	vsubps zmm5,zmm0,zmm30
  a594f1:	62 61 3c 48 58 f7    	vaddps zmm30,zmm8,zmm7
  a594f7:	62 f1 3c 48 5c c7    	vsubps zmm0,zmm8,zmm7
  a594fd:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm0
  a59504:	02 
  a59505:	62 91 24 40 58 fa    	vaddps zmm7,zmm27,zmm26
  a5950b:	62 11 24 40 5c c2    	vsubps zmm8,zmm27,zmm26
  a59511:	62 a1 14 40 5c e4    	vsubps zmm20,zmm29,zmm20
  a59517:	62 21 54 40 58 d6    	vaddps zmm26,zmm21,zmm22
  a5951d:	62 01 44 40 5c df    	vsubps zmm27,zmm23,zmm31
  a59523:	62 c1 6c 48 58 d6    	vaddps zmm18,zmm2,zmm14
  a59529:	62 f1 0c 48 5c f2    	vsubps zmm6,zmm14,zmm2
  a5952f:	62 a1 74 40 58 fb    	vaddps zmm23,zmm17,zmm19
  a59535:	62 b1 5c 48 5c d0    	vsubps zmm2,zmm4,zmm16
  a5953b:	62 81 1c 48 58 c2    	vaddps zmm16,zmm12,zmm26
  a59541:	62 d1 74 48 5c cb    	vsubps zmm1,zmm1,zmm11
  a59547:	62 31 2c 48 58 f7    	vaddps zmm14,zmm10,zmm23
  a5954d:	62 f2 7d 48 18 05 09 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff61bf09]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a59554:	bf 61 ff 
  a59557:	62 c2 7d 48 ac fa    	vfnmadd213ps zmm23,zmm0,zmm10
  a5955d:	62 71 7c 48 28 d0    	vmovaps zmm10,zmm0
  a59563:	62 72 3d 40 ac d7    	vfnmadd213ps zmm10,zmm24,zmm7
  a59569:	62 f2 7d 48 18 25 61 	vbroadcastss zmm4,DWORD PTR [rip+0xffffffffff61bd61]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a59570:	bd 61 ff 
  a59573:	62 71 1c 40 59 dc    	vmulps zmm11,zmm28,zmm4
  a59579:	62 21 54 40 5c e6    	vsubps zmm28,zmm21,zmm22
  a5957f:	62 e1 7c 48 28 e8    	vmovaps zmm21,zmm0
  a59585:	62 42 7d 48 ac d4    	vfnmadd213ps zmm26,zmm0,zmm12
  a5958b:	62 41 24 48 58 c2    	vaddps zmm24,zmm11,zmm10
  a59591:	62 a2 65 48 ac ea    	vfnmadd213ps zmm21,zmm3,zmm18
  a59597:	62 e1 7c 48 28 f3    	vmovaps zmm22,zmm3
  a5959d:	62 71 34 48 59 cc    	vmulps zmm9,zmm9,zmm4
  a595a3:	62 31 74 40 5c e3    	vsubps zmm12,zmm17,zmm19
  a595a9:	62 c1 54 40 5c d9    	vsubps zmm19,zmm21,zmm9
  a595af:	62 c1 2c 48 5c cb    	vsubps zmm17,zmm10,zmm11
  a595b5:	62 71 7c 48 28 d0    	vmovaps zmm10,zmm0
  a595bb:	62 12 0d 40 ac d1    	vfnmadd213ps zmm10,zmm30,zmm25
  a595c1:	62 d1 54 40 58 d9    	vaddps zmm3,zmm21,zmm9
  a595c7:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm3
  a595ce:	04 
  a595cf:	62 71 7c 48 28 c8    	vmovaps zmm9,zmm0
  a595d5:	62 01 34 40 58 fe    	vaddps zmm31,zmm25,zmm30
  a595db:	62 11 5c 40 58 db    	vaddps zmm11,zmm20,zmm27
  a595e1:	62 72 15 48 ac cd    	vfnmadd213ps zmm9,zmm13,zmm5
  a595e7:	62 41 54 48 58 f5    	vaddps zmm30,zmm5,zmm13
  a595ed:	62 41 3c 48 58 eb    	vaddps zmm29,zmm8,zmm11
  a595f3:	62 52 7d 48 ac d8    	vfnmadd213ps zmm11,zmm0,zmm8
  a595f9:	62 f1 6c 48 58 e9    	vaddps zmm5,zmm2,zmm1
  a595ff:	62 f1 6c 48 5c c9    	vsubps zmm1,zmm2,zmm1
  a59605:	62 e1 4c 48 58 ed    	vaddps zmm21,zmm6,zmm5
  a5960b:	62 f2 7d 48 ac ee    	vfnmadd213ps zmm5,zmm0,zmm6
  a59611:	62 f1 1c 40 59 d4    	vmulps zmm2,zmm28,zmm4
  a59617:	62 01 5c 40 5c db    	vsubps zmm27,zmm20,zmm27
  a5961d:	62 71 44 40 58 c2    	vaddps zmm8,zmm23,zmm2
  a59623:	62 71 1c 48 59 e4    	vmulps zmm12,zmm12,zmm4
  a59629:	62 f1 44 40 5c d2    	vsubps zmm2,zmm23,zmm2
  a5962f:	62 c1 2c 40 5c e4    	vsubps zmm20,zmm26,zmm12
  a59635:	62 81 1c 48 58 fa    	vaddps zmm23,zmm12,zmm26
  a5963b:	62 f1 44 48 58 7c 24 	vaddps zmm7,zmm7,ZMMWORD PTR [rsp+0x40]
  a59642:	01 
  a59643:	62 f1 5c 48 59 5c 24 	vmulps zmm3,zmm4,ZMMWORD PTR [rsp+0xc0]
  a5964a:	03 
  a5964b:	62 21 6c 40 58 e6    	vaddps zmm28,zmm18,zmm22
  a59651:	62 f1 2c 48 5c f3    	vsubps zmm6,zmm10,zmm3
  a59657:	62 71 5c 48 59 64 24 	vmulps zmm12,zmm4,ZMMWORD PTR [rsp+0x80]
  a5965e:	02 
  a5965f:	62 f1 2c 48 58 db    	vaddps zmm3,zmm10,zmm3
  a59665:	62 41 1c 48 58 c9    	vaddps zmm25,zmm12,zmm9
  a5966b:	62 f1 74 48 59 cc    	vmulps zmm1,zmm1,zmm4
  a59671:	62 d1 34 48 5c c4    	vsubps zmm0,zmm9,zmm12
  a59677:	62 51 74 48 58 cb    	vaddps zmm9,zmm1,zmm11
  a5967d:	62 f1 24 40 59 e4    	vmulps zmm4,zmm27,zmm4
  a59683:	62 f1 24 48 5c c9    	vsubps zmm1,zmm11,zmm1
  a59689:	62 61 54 48 5c d4    	vsubps zmm26,zmm5,zmm4
  a5968f:	62 71 54 48 58 d4    	vaddps zmm10,zmm5,zmm4
  a59695:	62 f1 7c 48 28 2d e1 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff66d8e1]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a5969c:	d8 66 ff 
  a5969f:	62 72 55 48 7f f2    	vpermt2ps zmm14,zmm5,zmm2
  a596a5:	62 62 55 48 7f c7    	vpermt2ps zmm24,zmm5,zmm7
  a596ab:	62 f2 55 48 7f f3    	vpermt2ps zmm6,zmm5,zmm3
  a596b1:	62 62 55 48 7f e9    	vpermt2ps zmm29,zmm5,zmm1
  a596b7:	62 52 55 48 7f c7    	vpermt2ps zmm8,zmm5,zmm15
  a596bd:	62 c2 55 48 7f cf    	vpermt2ps zmm17,zmm5,zmm15
  a596c3:	62 42 55 48 7f ff    	vpermt2ps zmm31,zmm5,zmm15
  a596c9:	62 52 55 48 7f cf    	vpermt2ps zmm9,zmm5,zmm15
  a596cf:	62 d1 7c 48 28 ce    	vmovaps zmm1,zmm14
  a596d5:	62 71 7c 48 28 1d 61 	vmovaps zmm11,ZMMWORD PTR [rip+0xffffffffff66d861]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a596dc:	d8 66 ff 
  a596df:	62 52 25 48 7f f0    	vpermt2ps zmm14,zmm11,zmm8
  a596e5:	62 91 7c 48 28 d0    	vmovaps zmm2,zmm24
  a596eb:	62 f1 7c 48 28 3d 0b 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff66d80b]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a596f2:	d8 66 ff 
  a596f5:	62 d2 45 48 7f c8    	vpermt2ps zmm1,zmm7,zmm8
  a596fb:	62 b2 45 48 7f d1    	vpermt2ps zmm2,zmm7,zmm17
  a59701:	62 22 25 48 7f c1    	vpermt2ps zmm24,zmm11,zmm17
  a59707:	62 f1 7c 48 28 de    	vmovaps zmm3,zmm6
  a5970d:	62 92 45 48 7f df    	vpermt2ps zmm3,zmm7,zmm31
  a59713:	62 92 25 48 7f f7    	vpermt2ps zmm6,zmm11,zmm31
  a59719:	62 91 7c 48 28 e5    	vmovaps zmm4,zmm29
  a5971f:	62 42 25 48 7f e9    	vpermt2ps zmm29,zmm11,zmm9
  a59725:	62 d2 45 48 7f e1    	vpermt2ps zmm4,zmm7,zmm9
  a5972b:	62 e1 f5 48 14 d3    	vunpcklpd zmm18,zmm1,zmm3
  a59731:	62 71 f5 48 15 c3    	vunpckhpd zmm8,zmm1,zmm3
  a59737:	62 e1 8d 48 14 ce    	vunpcklpd zmm17,zmm14,zmm6
  a5973d:	62 71 ed 48 14 ec    	vunpcklpd zmm13,zmm2,zmm4
  a59743:	62 71 8d 48 15 f6    	vunpckhpd zmm14,zmm14,zmm6
  a59749:	62 91 bd 40 14 cd    	vunpcklpd zmm1,zmm24,zmm29
  a5974f:	62 91 bd 40 15 dd    	vunpckhpd zmm3,zmm24,zmm29
  a59755:	62 61 ed 48 15 fc    	vunpckhpd zmm31,zmm2,zmm4
  a5975b:	62 21 7c 48 28 c1    	vmovaps zmm24,zmm17
  a59761:	62 a2 55 48 7f c7    	vpermt2ps zmm16,zmm5,zmm23
  a59767:	62 82 55 48 7f dc    	vpermt2ps zmm19,zmm5,zmm28
  a5976d:	62 f1 7c 48 28 35 c9 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff66d6c9]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a59774:	d6 66 ff 
  a59777:	62 e2 4d 48 7f c9    	vpermt2ps zmm17,zmm6,zmm1
  a5977d:	62 62 55 48 7f c8    	vpermt2ps zmm25,zmm5,zmm0
  a59783:	62 c2 55 48 7f ea    	vpermt2ps zmm21,zmm5,zmm10
  a59789:	62 c2 55 48 7f e7    	vpermt2ps zmm20,zmm5,zmm15
  a5978f:	62 41 7c 48 28 de    	vmovaps zmm27,zmm14
  a59795:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x100]
  a5979c:	04 
  a5979d:	62 d2 55 48 7f c7    	vpermt2ps zmm0,zmm5,zmm15
  a597a3:	62 42 55 48 7f f7    	vpermt2ps zmm30,zmm5,zmm15
  a597a9:	62 42 55 48 7f d7    	vpermt2ps zmm26,zmm5,zmm15
  a597af:	62 72 4d 48 7f f3    	vpermt2ps zmm14,zmm6,zmm3
  a597b5:	62 b1 7c 48 28 d0    	vmovaps zmm2,zmm16
  a597bb:	62 b2 45 48 7f d4    	vpermt2ps zmm2,zmm7,zmm20
  a597c1:	62 a2 25 48 7f c4    	vpermt2ps zmm16,zmm11,zmm20
  a597c7:	62 a1 7c 48 28 e2    	vmovaps zmm20,zmm18
  a597cd:	62 b1 7c 48 28 e3    	vmovaps zmm4,zmm19
  a597d3:	62 f2 45 48 7f e0    	vpermt2ps zmm4,zmm7,zmm0
  a597d9:	62 e2 25 48 7f d8    	vpermt2ps zmm19,zmm11,zmm0
  a597df:	62 c2 4d 48 7f d5    	vpermt2ps zmm18,zmm6,zmm13
  a597e5:	62 91 7c 48 28 e9    	vmovaps zmm5,zmm25
  a597eb:	62 92 45 48 7f ee    	vpermt2ps zmm5,zmm7,zmm30
  a597f1:	62 02 25 48 7f ce    	vpermt2ps zmm25,zmm11,zmm30
  a597f7:	62 c1 7c 48 28 f0    	vmovaps zmm22,zmm8
  a597fd:	62 b1 7c 48 28 c5    	vmovaps zmm0,zmm21
  a59803:	62 92 45 48 7f c2    	vpermt2ps zmm0,zmm7,zmm26
  a59809:	62 82 25 48 7f ea    	vpermt2ps zmm21,zmm11,zmm26
  a5980f:	62 12 4d 48 7f c7    	vpermt2ps zmm8,zmm6,zmm31
  a59815:	62 61 ed 48 14 f5    	vunpcklpd zmm30,zmm2,zmm5
  a5981b:	62 61 ed 48 15 e5    	vunpckhpd zmm28,zmm2,zmm5
  a59821:	62 e1 dd 48 14 f8    	vunpcklpd zmm23,zmm4,zmm0
  a59827:	62 71 7c 48 28 25 cf 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff66d5cf]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a5982e:	d5 66 ff 
  a59831:	62 62 1d 48 7f c1    	vpermt2ps zmm24,zmm12,zmm1
  a59837:	62 61 dd 48 15 d0    	vunpckhpd zmm26,zmm4,zmm0
  a5983d:	62 01 fd 40 14 e9    	vunpcklpd zmm29,zmm16,zmm25
  a59843:	62 01 fd 40 15 c9    	vunpckhpd zmm25,zmm16,zmm25
  a59849:	62 62 1d 48 7f db    	vpermt2ps zmm27,zmm12,zmm3
  a5984f:	62 b1 e5 40 14 c5    	vunpcklpd zmm0,zmm19,zmm21
  a59855:	62 b1 e5 40 15 cd    	vunpckhpd zmm1,zmm19,zmm21
  a5985b:	62 81 7c 48 28 c6    	vmovaps zmm16,zmm30
  a59861:	62 22 4d 48 7f f7    	vpermt2ps zmm30,zmm6,zmm23
  a59867:	62 81 7c 48 28 dc    	vmovaps zmm19,zmm28
  a5986d:	62 02 4d 48 7f e2    	vpermt2ps zmm28,zmm6,zmm26
  a59873:	62 91 7c 48 28 d5    	vmovaps zmm2,zmm29
  a59879:	62 f2 1d 48 7f d0    	vpermt2ps zmm2,zmm12,zmm0
  a5987f:	62 62 4d 48 7f e8    	vpermt2ps zmm29,zmm6,zmm0
  a59885:	62 91 7c 48 28 c1    	vmovaps zmm0,zmm25
  a5988b:	62 f2 1d 48 7f c1    	vpermt2ps zmm0,zmm12,zmm1
  a59891:	62 82 1d 48 7f f7    	vpermt2ps zmm22,zmm12,zmm31
  a59897:	62 62 4d 48 7f c9    	vpermt2ps zmm25,zmm6,zmm1
  a5989d:	62 f1 7c 48 10 49 08 	vmovups zmm1,ZMMWORD PTR [rcx+0x200]
  a598a4:	62 f1 7c 48 10 59 09 	vmovups zmm3,ZMMWORD PTR [rcx+0x240]
  a598ab:	62 e1 3c 40 59 e9    	vmulps zmm21,zmm24,zmm1
  a598b1:	62 e2 6d 48 bc eb    	vfnmadd231ps zmm21,zmm2,zmm3
  a598b7:	62 61 6c 48 59 f9    	vmulps zmm31,zmm2,zmm1
  a598bd:	62 f1 7c 48 10 49 0c 	vmovups zmm1,ZMMWORD PTR [rcx+0x300]
  a598c4:	62 02 65 48 b8 f8    	vfmadd231ps zmm31,zmm3,zmm24
  a598ca:	62 f1 7c 48 10 51 0d 	vmovups zmm2,ZMMWORD PTR [rcx+0x340]
  a598d1:	62 61 24 40 59 c1    	vmulps zmm24,zmm27,zmm1
  a598d7:	62 71 7c 48 59 d1    	vmulps zmm10,zmm0,zmm1
  a598dd:	62 62 7d 48 bc c2    	vfnmadd231ps zmm24,zmm0,zmm2
  a598e3:	62 f1 7c 48 10 41 02 	vmovups zmm0,ZMMWORD PTR [rcx+0x80]
  a598ea:	62 12 6d 48 b8 d3    	vfmadd231ps zmm10,zmm2,zmm27
  a598f0:	62 f1 7c 48 10 49 03 	vmovups zmm1,ZMMWORD PTR [rcx+0xc0]
  a598f7:	62 f1 6c 40 59 d0    	vmulps zmm2,zmm18,zmm0
  a598fd:	62 f2 0d 40 bc d1    	vfnmadd231ps zmm2,zmm30,zmm1
  a59903:	62 f1 0c 40 59 c0    	vmulps zmm0,zmm30,zmm0
  a59909:	62 f1 7c 48 10 59 0a 	vmovups zmm3,ZMMWORD PTR [rcx+0x280]
  a59910:	62 b2 75 48 b8 c2    	vfmadd231ps zmm0,zmm1,zmm18
  a59916:	62 f1 7c 48 10 49 0b 	vmovups zmm1,ZMMWORD PTR [rcx+0x2c0]
  a5991d:	62 f1 74 40 59 e3    	vmulps zmm4,zmm17,zmm3
  a59923:	62 f1 14 40 59 db    	vmulps zmm3,zmm29,zmm3
  a59929:	62 f2 15 40 bc e1    	vfnmadd231ps zmm4,zmm29,zmm1
  a5992f:	62 f1 7c 48 10 69 06 	vmovups zmm5,ZMMWORD PTR [rcx+0x180]
  a59936:	62 b2 75 48 b8 d9    	vfmadd231ps zmm3,zmm1,zmm17
  a5993c:	62 f1 7c 48 10 49 07 	vmovups zmm1,ZMMWORD PTR [rcx+0x1c0]
  a59943:	62 f1 3c 48 59 f5    	vmulps zmm6,zmm8,zmm5
  a59949:	62 f2 1d 40 bc f1    	vfnmadd231ps zmm6,zmm28,zmm1
  a5994f:	62 f1 1c 40 59 ed    	vmulps zmm5,zmm28,zmm5
  a59955:	62 f1 7c 48 10 79 0e 	vmovups zmm7,ZMMWORD PTR [rcx+0x380]
  a5995c:	62 d2 75 48 b8 e8    	vfmadd231ps zmm5,zmm1,zmm8
  a59962:	62 f1 7c 48 10 49 0f 	vmovups zmm1,ZMMWORD PTR [rcx+0x3c0]
  a59969:	62 71 0c 48 59 c7    	vmulps zmm8,zmm14,zmm7
  a5996f:	62 f1 34 40 59 ff    	vmulps zmm7,zmm25,zmm7
  a59975:	62 72 35 40 bc c1    	vfnmadd231ps zmm8,zmm25,zmm1
  a5997b:	62 d2 75 48 b8 fe    	vfmadd231ps zmm7,zmm1,zmm14
  a59981:	62 f1 7c 48 10 49 04 	vmovups zmm1,ZMMWORD PTR [rcx+0x100]
  a59988:	62 71 7c 48 10 49 05 	vmovups zmm9,ZMMWORD PTR [rcx+0x140]
  a5998f:	62 82 1d 48 7f da    	vpermt2ps zmm19,zmm12,zmm26
  a59995:	62 71 4c 40 59 d9    	vmulps zmm11,zmm22,zmm1
  a5999b:	62 52 65 40 bc d9    	vfnmadd231ps zmm11,zmm19,zmm9
  a599a1:	62 f1 64 40 59 c9    	vmulps zmm1,zmm19,zmm1
  a599a7:	62 b2 35 48 b8 ce    	vfmadd231ps zmm1,zmm9,zmm22
  a599ad:	62 c2 1d 48 7f e5    	vpermt2ps zmm20,zmm12,zmm13
  a599b3:	62 a2 1d 48 7f c7    	vpermt2ps zmm16,zmm12,zmm23
  a599b9:	62 31 5c 40 58 cd    	vaddps zmm9,zmm20,zmm21
  a599bf:	62 31 5c 40 5c e5    	vsubps zmm12,zmm20,zmm21
  a599c5:	62 71 6c 48 58 ec    	vaddps zmm13,zmm2,zmm4
  a599cb:	62 f1 6c 48 5c d4    	vsubps zmm2,zmm2,zmm4
  a599d1:	62 f1 7c 48 58 e3    	vaddps zmm4,zmm0,zmm3
  a599d7:	62 f1 7c 48 5c c3    	vsubps zmm0,zmm0,zmm3
  a599dd:	62 f1 54 48 58 df    	vaddps zmm3,zmm5,zmm7
  a599e3:	62 f1 54 48 5c ef    	vsubps zmm5,zmm5,zmm7
  a599e9:	62 d1 4c 48 58 f8    	vaddps zmm7,zmm6,zmm8
  a599ef:	62 d1 4c 48 5c f0    	vsubps zmm6,zmm6,zmm8
  a599f5:	62 31 04 40 58 c0    	vaddps zmm8,zmm31,zmm16
  a599fb:	62 11 7c 40 5c f7    	vsubps zmm14,zmm16,zmm31
  a59a01:	62 51 74 48 58 fa    	vaddps zmm15,zmm1,zmm10
  a59a07:	62 d1 74 48 5c ca    	vsubps zmm1,zmm1,zmm10
  a59a0d:	62 11 24 48 58 d0    	vaddps zmm10,zmm11,zmm24
  a59a13:	62 51 3c 40 5c db    	vsubps zmm11,zmm24,zmm11
  a59a19:	62 e1 6c 48 58 c0    	vaddps zmm16,zmm2,zmm0
  a59a1f:	62 f1 7c 48 5c c2    	vsubps zmm0,zmm0,zmm2
  a59a25:	62 f1 54 48 5c d6    	vsubps zmm2,zmm5,zmm6
  a59a2b:	62 f1 4c 48 58 ed    	vaddps zmm5,zmm6,zmm5
  a59a31:	62 d1 34 48 58 f2    	vaddps zmm6,zmm9,zmm10
  a59a37:	62 51 34 48 5c ca    	vsubps zmm9,zmm9,zmm10
  a59a3d:	62 e1 5c 48 58 cb    	vaddps zmm17,zmm4,zmm3
  a59a43:	62 f1 5c 48 5c db    	vsubps zmm3,zmm4,zmm3
  a59a49:	62 d1 04 48 58 e0    	vaddps zmm4,zmm15,zmm8
  a59a4f:	62 51 3c 48 5c c7    	vsubps zmm8,zmm8,zmm15
  a59a55:	62 71 14 48 58 ff    	vaddps zmm15,zmm13,zmm7
  a59a5b:	62 d1 44 48 5c fd    	vsubps zmm7,zmm7,zmm13
  a59a61:	62 71 1c 48 58 d1    	vaddps zmm10,zmm12,zmm1
  a59a67:	62 e2 7d 48 18 15 2b 	vbroadcastss zmm18,DWORD PTR [rip+0xffffffffff61b92b]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a59a6e:	b9 61 ff 
  a59a71:	62 31 7c 40 59 ea    	vmulps zmm13,zmm16,zmm18
  a59a77:	62 b1 6c 48 59 d2    	vmulps zmm2,zmm2,zmm18
  a59a7d:	62 f1 1c 48 5c c9    	vsubps zmm1,zmm12,zmm1
  a59a83:	62 51 24 48 58 e6    	vaddps zmm12,zmm11,zmm14
  a59a89:	62 b1 7c 48 59 c2    	vmulps zmm0,zmm0,zmm18
  a59a8f:	62 b1 54 48 59 ea    	vmulps zmm5,zmm5,zmm18
  a59a95:	62 51 0c 48 5c db    	vsubps zmm11,zmm14,zmm11
  a59a9b:	62 71 7c 48 5c f5    	vsubps zmm14,zmm0,zmm5
  a59aa1:	62 f1 7c 48 58 c5    	vaddps zmm0,zmm0,zmm5
  a59aa7:	62 f1 14 48 58 ea    	vaddps zmm5,zmm13,zmm2
  a59aad:	62 d1 6c 48 5c d5    	vsubps zmm2,zmm2,zmm13
  a59ab3:	62 e1 2c 48 58 c5    	vaddps zmm16,zmm10,zmm5
  a59ab9:	62 f1 2c 48 5c ed    	vsubps zmm5,zmm10,zmm5
  a59abf:	62 e1 34 48 58 d3    	vaddps zmm18,zmm9,zmm3
  a59ac5:	62 71 34 48 5c d3    	vsubps zmm10,zmm9,zmm3
  a59acb:	62 d1 1c 48 58 de    	vaddps zmm3,zmm12,zmm14
  a59ad1:	62 51 1c 48 5c ce    	vsubps zmm9,zmm12,zmm14
  a59ad7:	62 71 3c 48 58 e7    	vaddps zmm12,zmm8,zmm7
  a59add:	62 f1 3c 48 5c ff    	vsubps zmm7,zmm8,zmm7
  a59ae3:	62 71 74 48 58 c0    	vaddps zmm8,zmm1,zmm0
  a59ae9:	62 71 74 48 5c e8    	vsubps zmm13,zmm1,zmm0
  a59aef:	62 d1 4c 48 5c c7    	vsubps zmm0,zmm6,zmm15
  a59af5:	62 d1 4c 48 58 cf    	vaddps zmm1,zmm6,zmm15
  a59afb:	62 f1 24 48 58 f2    	vaddps zmm6,zmm11,zmm2
  a59b01:	62 f1 24 48 5c d2    	vsubps zmm2,zmm11,zmm2
  a59b07:	62 31 5c 48 5c d9    	vsubps zmm11,zmm4,zmm17
  a59b0d:	62 b1 5c 48 58 e1    	vaddps zmm4,zmm4,zmm17
  a59b13:	62 71 7c 48 28 f1    	vmovaps zmm14,zmm1
  a59b19:	c5 7c 28 3d 1f d1 61 	vmovaps ymm15,YMMWORD PTR [rip+0xffffffffff61d11f]        # 76c40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x40f0>
  a59b20:	ff 
  a59b21:	62 72 05 48 7f f4    	vpermt2ps zmm14,zmm15,zmm4
  a59b27:	62 e1 7c 48 28 0d 0f 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff63970f]        # 93240 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x206f0>
  a59b2e:	97 63 ff 
  a59b31:	62 f2 75 40 7f cc    	vpermt2ps zmm1,zmm17,zmm4
  a59b37:	62 f1 7c 48 11 0c 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm1
  a59b3e:	c5 7c 11 74 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm14
  a59b44:	62 b1 7c 48 28 c8    	vmovaps zmm1,zmm16
  a59b4a:	62 f2 05 48 7f cb    	vpermt2ps zmm1,zmm15,zmm3
  a59b50:	62 e2 75 40 7f c3    	vpermt2ps zmm16,zmm17,zmm3
  a59b56:	62 e1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x60],zmm16
  a59b5d:	60 00 00 00 
  a59b61:	c5 fc 11 8c 16 a0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xa0],ymm1
  a59b68:	00 00 
  a59b6a:	62 b1 7c 48 28 ca    	vmovaps zmm1,zmm18
  a59b70:	62 d2 05 48 7f cc    	vpermt2ps zmm1,zmm15,zmm12
  a59b76:	62 c2 75 40 7f d4    	vpermt2ps zmm18,zmm17,zmm12
  a59b7c:	62 e1 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xc0],zmm18
  a59b83:	03 
  a59b84:	62 d1 7c 48 28 d8    	vmovaps zmm3,zmm8
  a59b8a:	62 f2 05 48 7f de    	vpermt2ps zmm3,zmm15,zmm6
  a59b90:	62 72 75 40 7f c6    	vpermt2ps zmm8,zmm17,zmm6
  a59b96:	c5 fc 11 8c 16 00 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x100],ymm1
  a59b9d:	00 00 
  a59b9f:	62 71 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x120],zmm8
  a59ba6:	20 01 00 00 
  a59baa:	c5 fc 11 9c 16 60 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x160],ymm3
  a59bb1:	00 00 
  a59bb3:	62 f1 7c 48 28 c8    	vmovaps zmm1,zmm0
  a59bb9:	62 d2 05 48 7f cb    	vpermt2ps zmm1,zmm15,zmm11
  a59bbf:	62 d2 75 40 7f c3    	vpermt2ps zmm0,zmm17,zmm11
  a59bc5:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x180],zmm0
  a59bcc:	06 
  a59bcd:	c5 fc 11 8c 16 c0 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x1c0],ymm1
  a59bd4:	00 00 
  a59bd6:	62 f1 7c 48 28 c5    	vmovaps zmm0,zmm5
  a59bdc:	62 d2 05 48 7f c1    	vpermt2ps zmm0,zmm15,zmm9
  a59be2:	62 d2 75 40 7f e9    	vpermt2ps zmm5,zmm17,zmm9
  a59be8:	62 f1 7c 48 11 ac 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1e0],zmm5
  a59bef:	e0 01 00 00 
  a59bf3:	c5 fc 11 84 16 20 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x220],ymm0
  a59bfa:	00 00 
  a59bfc:	62 d1 7c 48 28 c2    	vmovaps zmm0,zmm10
  a59c02:	62 f2 05 48 7f c7    	vpermt2ps zmm0,zmm15,zmm7
  a59c08:	62 72 75 40 7f d7    	vpermt2ps zmm10,zmm17,zmm7
  a59c0e:	62 71 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x240],zmm10
  a59c15:	09 
  a59c16:	62 d1 7c 48 28 cd    	vmovaps zmm1,zmm13
  a59c1c:	62 f2 05 48 7f ca    	vpermt2ps zmm1,zmm15,zmm2
  a59c22:	62 72 75 40 7f ea    	vpermt2ps zmm13,zmm17,zmm2
  a59c28:	c5 fc 11 84 16 80 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x280],ymm0
  a59c2f:	00 00 
  a59c31:	62 71 7c 48 11 ac 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x2a0],zmm13
  a59c38:	a0 02 00 00 
  a59c3c:	c5 fc 11 8c 16 e0 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x2e0],ymm1
  a59c43:	00 00 
  a59c45:	48 81 c2 00 03 00 00 	add    rdx,0x300
  a59c4c:	48 39 d0             	cmp    rax,rdx
  a59c4f:	0f 85 1b f6 ff ff    	jne    a59270 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x30>
  a59c55:	48 89 ec             	mov    rsp,rbp
  a59c58:	5d                   	pop    rbp
  a59c59:	c5 f8 77             	vzeroupper
  a59c5c:	c3                   	ret
