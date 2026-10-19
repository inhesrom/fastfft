
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a20080 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a20080:	55                   	push   rbp
  a20081:	48 89 e5             	mov    rbp,rsp
  a20084:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a20088:	48 81 ec 00 0a 00 00 	sub    rsp,0xa00
  a2008f:	c6 84 24 80 09 00 00 	mov    BYTE PTR [rsp+0x980],0x0
  a20096:	00 
  a20097:	48 8d 84 24 80 09 00 	lea    rax,[rsp+0x980]
  a2009e:	00 
  a2009f:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  a200a4:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  a200a9:	62 f1 7c 48 28 0d 8d 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff66fd8d]        # 8fe40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d2f0>
  a200b0:	fd 66 ff 
  a200b3:	62 f1 7c 48 10 37    	vmovups zmm6,ZMMWORD PTR [rdi]
  a200b9:	62 f1 7c 48 10 7f 01 	vmovups zmm7,ZMMWORD PTR [rdi+0x40]
  a200c0:	62 71 7c 48 10 47 02 	vmovups zmm8,ZMMWORD PTR [rdi+0x80]
  a200c7:	62 f1 7c 48 10 57 03 	vmovups zmm2,ZMMWORD PTR [rdi+0xc0]
  a200ce:	62 71 7c 48 28 de    	vmovaps zmm11,zmm6
  a200d4:	62 72 75 48 7f df    	vpermt2ps zmm11,zmm1,zmm7
  a200da:	62 41 7c 48 28 d8    	vmovaps zmm27,zmm8
  a200e0:	62 62 75 48 7f da    	vpermt2ps zmm27,zmm1,zmm2
  a200e6:	62 71 7c 48 10 67 08 	vmovups zmm12,ZMMWORD PTR [rdi+0x200]
  a200ed:	62 71 7c 48 10 4f 09 	vmovups zmm9,ZMMWORD PTR [rdi+0x240]
  a200f4:	62 d1 7c 48 28 dc    	vmovaps zmm3,zmm12
  a200fa:	62 d2 75 48 7f d9    	vpermt2ps zmm3,zmm1,zmm9
  a20100:	62 71 24 40 58 d3    	vaddps zmm10,zmm27,zmm3
  a20106:	62 d1 24 48 58 c2    	vaddps zmm0,zmm11,zmm10
  a2010c:	62 71 7c 48 10 7f 04 	vmovups zmm15,ZMMWORD PTR [rdi+0x100]
  a20113:	62 71 7c 48 10 77 05 	vmovups zmm14,ZMMWORD PTR [rdi+0x140]
  a2011a:	62 51 7c 48 28 ef    	vmovaps zmm13,zmm15
  a20120:	62 52 75 48 7f ee    	vpermt2ps zmm13,zmm1,zmm14
  a20126:	62 e1 7c 48 10 57 06 	vmovups zmm18,ZMMWORD PTR [rdi+0x180]
  a2012d:	62 e1 7c 48 10 47 07 	vmovups zmm16,ZMMWORD PTR [rdi+0x1c0]
  a20134:	62 b2 6d 40 77 c8    	vpermi2ps zmm1,zmm18,zmm16
  a2013a:	62 e1 14 48 58 e1    	vaddps zmm20,zmm13,zmm1
  a20140:	62 a1 7c 48 58 fc    	vaddps zmm23,zmm0,zmm20
  a20146:	62 f1 7c 48 28 05 30 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6a6e30]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a2014d:	6e 6a ff 
  a20150:	c5 d8 57 e4          	vxorps xmm4,xmm4,xmm4
  a20154:	62 b1 7c 48 28 ef    	vmovaps zmm5,zmm23
  a2015a:	62 f2 7d 48 7f ec    	vpermt2ps zmm5,zmm0,zmm4
  a20160:	62 61 7c 48 28 cd    	vmovaps zmm25,zmm5
  a20166:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm5
  a2016d:	04 
  a2016e:	62 e1 7c 48 28 2d 08 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff66fd08]        # 8fe80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d330>
  a20175:	fd 66 ff 
  a20178:	62 72 55 40 7f c2    	vpermt2ps zmm8,zmm21,zmm2
  a2017e:	62 52 55 40 7f e1    	vpermt2ps zmm12,zmm21,zmm9
  a20184:	62 d1 3c 48 5c d4    	vsubps zmm2,zmm8,zmm12
  a2018a:	62 52 55 40 7f fe    	vpermt2ps zmm15,zmm21,zmm14
  a20190:	62 a2 55 40 7f d0    	vpermt2ps zmm18,zmm21,zmm16
  a20196:	62 31 04 48 5c ca    	vsubps zmm9,zmm15,zmm18
  a2019c:	62 e2 7d 48 18 05 b2 	vbroadcastss zmm16,DWORD PTR [rip+0xffffffffff6555b2]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a201a3:	55 65 ff 
  a201a6:	62 a1 34 48 59 f0    	vmulps zmm22,zmm9,zmm16
  a201ac:	62 e2 7d 48 18 0d ea 	vbroadcastss zmm17,DWORD PTR [rip+0xffffffffff6551ea]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a201b3:	51 65 ff 
  a201b6:	62 a2 6d 48 b8 f1    	vfmadd231ps zmm22,zmm2,zmm17
  a201bc:	62 e2 7d 48 18 1d 22 	vbroadcastss zmm19,DWORD PTR [rip+0xffffffffff655522]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a201c3:	55 65 ff 
  a201c6:	62 21 7c 48 28 c3    	vmovaps zmm24,zmm19
  a201cc:	62 42 2d 48 a8 c3    	vfmadd213ps zmm24,zmm10,zmm11
  a201d2:	62 62 7d 48 18 15 68 	vbroadcastss zmm26,DWORD PTR [rip+0xffffffffff655468]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a201d9:	54 65 ff 
  a201dc:	62 02 5d 40 bc c2    	vfnmadd231ps zmm24,zmm20,zmm26
  a201e2:	62 01 4c 40 58 e8    	vaddps zmm29,zmm22,zmm24
  a201e8:	62 91 7c 48 28 ed    	vmovaps zmm5,zmm29
  a201ee:	62 f2 7d 48 7f ec    	vpermt2ps zmm5,zmm0,zmm4
  a201f4:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm5
  a201fb:	15 
  a201fc:	62 61 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm25
  a20203:	01 
  a20204:	62 52 2d 40 bc da    	vfnmadd231ps zmm11,zmm26,zmm10
  a2020a:	62 32 65 40 b8 dc    	vfmadd231ps zmm11,zmm19,zmm20
  a20210:	62 a1 6c 48 59 e0    	vmulps zmm20,zmm2,zmm16
  a20216:	62 c2 75 40 bc e1    	vfnmadd231ps zmm20,zmm17,zmm9
  a2021c:	62 31 24 48 5c d4    	vsubps zmm10,zmm11,zmm20
  a20222:	62 41 7c 48 28 fa    	vmovaps zmm31,zmm10
  a20228:	62 62 7d 48 7f fc    	vpermt2ps zmm31,zmm0,zmm4
  a2022e:	c5 d0 57 ed          	vxorps xmm5,xmm5,xmm5
  a20232:	62 f2 7d 48 7f ed    	vpermt2ps zmm5,zmm0,zmm5
  a20238:	62 31 3c 40 5c f6    	vsubps zmm14,zmm24,zmm22
  a2023e:	62 c1 7c 48 28 f6    	vmovaps zmm22,zmm14
  a20244:	62 e2 7d 48 7f f4    	vpermt2ps zmm22,zmm0,zmm4
  a2024a:	62 51 5c 40 58 db    	vaddps zmm11,zmm20,zmm11
  a20250:	62 41 7c 48 28 e3    	vmovaps zmm28,zmm11
  a20256:	62 62 7d 48 7f e4    	vpermt2ps zmm28,zmm0,zmm4
  a2025c:	62 f2 55 40 7f f7    	vpermt2ps zmm6,zmm21,zmm7
  a20262:	62 d1 3c 48 58 fc    	vaddps zmm7,zmm8,zmm12
  a20268:	62 71 4c 48 58 c7    	vaddps zmm8,zmm6,zmm7
  a2026e:	62 31 04 48 58 fa    	vaddps zmm15,zmm15,zmm18
  a20274:	62 41 3c 48 58 cf    	vaddps zmm25,zmm8,zmm15
  a2027a:	62 71 7c 48 28 05 3c 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff6a6d3c]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a20281:	6d 6a ff 
  a20284:	62 01 7c 48 28 f1    	vmovaps zmm30,zmm25
  a2028a:	62 62 3d 48 7f f4    	vpermt2ps zmm30,zmm8,zmm4
  a20290:	62 a1 7c 48 28 d3    	vmovaps zmm18,zmm19
  a20296:	62 e2 45 48 a8 d6    	vfmadd213ps zmm18,zmm7,zmm6
  a2029c:	62 82 05 48 bc d2    	vfnmadd231ps zmm18,zmm15,zmm26
  a202a2:	62 e1 24 40 5c e3    	vsubps zmm20,zmm27,zmm3
  a202a8:	62 f1 14 48 5c c9    	vsubps zmm1,zmm13,zmm1
  a202ae:	62 31 74 48 59 e8    	vmulps zmm13,zmm1,zmm16
  a202b4:	62 32 5d 40 b8 e9    	vfmadd231ps zmm13,zmm20,zmm17
  a202ba:	62 51 6c 40 5c cd    	vsubps zmm9,zmm18,zmm13
  a202c0:	62 51 7c 48 28 e1    	vmovaps zmm12,zmm9
  a202c6:	62 72 3d 48 7f e4    	vpermt2ps zmm12,zmm8,zmm4
  a202cc:	62 61 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm30
  a202d3:	06 
  a202d4:	62 92 45 48 bc f2    	vfnmadd231ps zmm6,zmm7,zmm26
  a202da:	62 b2 05 48 b8 f3    	vfmadd231ps zmm6,zmm15,zmm19
  a202e0:	62 b1 5c 40 59 f8    	vmulps zmm7,zmm20,zmm16
  a202e6:	62 b2 75 48 bc f9    	vfnmadd231ps zmm7,zmm1,zmm17
  a202ec:	62 61 4c 48 58 df    	vaddps zmm27,zmm6,zmm7
  a202f2:	62 11 7c 48 28 fb    	vmovaps zmm15,zmm27
  a202f8:	62 72 3d 48 7f fc    	vpermt2ps zmm15,zmm8,zmm4
  a202fe:	c5 e0 57 db          	vxorps xmm3,xmm3,xmm3
  a20302:	62 f2 3d 48 7f db    	vpermt2ps zmm3,zmm8,zmm3
  a20308:	62 71 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm15
  a2030f:	05 
  a20310:	62 c1 6c 40 58 d5    	vaddps zmm18,zmm18,zmm13
  a20316:	62 21 7c 48 28 c2    	vmovaps zmm24,zmm18
  a2031c:	62 62 3d 48 7f c4    	vpermt2ps zmm24,zmm8,zmm4
  a20322:	62 61 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm24
  a20329:	16 
  a2032a:	62 e1 4c 48 5c ef    	vsubps zmm21,zmm6,zmm7
  a20330:	62 21 7c 48 28 d5    	vmovaps zmm26,zmm21
  a20336:	62 62 3d 48 7f d4    	vpermt2ps zmm26,zmm8,zmm4
  a2033c:	62 61 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm26
  a20343:	14 
  a20344:	62 e2 3d 48 7f fc    	vpermt2ps zmm23,zmm8,zmm4
  a2034a:	62 62 3d 48 7f ec    	vpermt2ps zmm29,zmm8,zmm4
  a20350:	62 e1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm23
  a20357:	13 
  a20358:	62 72 3d 48 7f d4    	vpermt2ps zmm10,zmm8,zmm4
  a2035e:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm10
  a20365:	03 
  a20366:	62 72 3d 48 7f f4    	vpermt2ps zmm14,zmm8,zmm4
  a2036c:	62 72 3d 48 7f dc    	vpermt2ps zmm11,zmm8,zmm4
  a20372:	62 51 7c 48 28 c6    	vmovaps zmm8,zmm14
  a20378:	62 62 7d 48 7f cc    	vpermt2ps zmm25,zmm0,zmm4
  a2037e:	62 72 7d 48 7f cc    	vpermt2ps zmm9,zmm0,zmm4
  a20384:	62 62 7d 48 7f dc    	vpermt2ps zmm27,zmm0,zmm4
  a2038a:	62 e2 7d 48 7f d4    	vpermt2ps zmm18,zmm0,zmm4
  a20390:	62 e2 7d 48 7f ec    	vpermt2ps zmm21,zmm0,zmm4
  a20396:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm11
  a2039d:	02 
  a2039e:	62 f1 7c 48 28 15 98 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff6a6b98]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a203a5:	6b 6a ff 
  a203a8:	62 b1 7c 48 28 ff    	vmovaps zmm7,zmm23
  a203ae:	62 92 6d 48 7f fd    	vpermt2ps zmm7,zmm2,zmm29
  a203b4:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x6c0],zmm7
  a203bb:	1b 
  a203bc:	62 72 6d 48 7f d3    	vpermt2ps zmm10,zmm2,zmm3
  a203c2:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x700],zmm10
  a203c9:	1c 
  a203ca:	62 72 6d 48 7f f3    	vpermt2ps zmm14,zmm2,zmm3
  a203d0:	62 72 6d 48 7f db    	vpermt2ps zmm11,zmm2,zmm3
  a203d6:	62 91 7c 48 28 ce    	vmovaps zmm1,zmm30
  a203dc:	62 d2 6d 48 7f cc    	vpermt2ps zmm1,zmm2,zmm12
  a203e2:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm1
  a203e9:	08 
  a203ea:	62 72 6d 48 7f fb    	vpermt2ps zmm15,zmm2,zmm3
  a203f0:	62 62 6d 48 7f c3    	vpermt2ps zmm24,zmm2,zmm3
  a203f6:	62 62 6d 48 7f d3    	vpermt2ps zmm26,zmm2,zmm3
  a203fc:	62 61 7c 48 28 74 24 	vmovaps zmm30,ZMMWORD PTR [rsp+0x100]
  a20403:	04 
  a20404:	62 e1 7c 48 28 44 24 	vmovaps zmm16,ZMMWORD PTR [rsp+0x540]
  a2040b:	15 
  a2040c:	62 22 6d 48 7f f0    	vpermt2ps zmm30,zmm2,zmm16
  a20412:	62 61 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm30
  a20419:	04 
  a2041a:	62 81 7c 48 28 e7    	vmovaps zmm20,zmm31
  a20420:	62 62 6d 48 7f fd    	vpermt2ps zmm31,zmm2,zmm5
  a20426:	62 61 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x8c0],zmm31
  a2042d:	23 
  a2042e:	62 a1 7c 48 28 de    	vmovaps zmm19,zmm22
  a20434:	62 e2 6d 48 7f f5    	vpermt2ps zmm22,zmm2,zmm5
  a2043a:	62 31 7c 48 28 ee    	vmovaps zmm13,zmm22
  a20440:	62 e1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x880],zmm22
  a20447:	22 
  a20448:	62 81 7c 48 28 cc    	vmovaps zmm17,zmm28
  a2044e:	62 62 6d 48 7f e5    	vpermt2ps zmm28,zmm2,zmm5
  a20454:	62 81 7c 48 28 fc    	vmovaps zmm23,zmm28
  a2045a:	62 61 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x840],zmm28
  a20461:	21 
  a20462:	62 91 7c 48 28 c1    	vmovaps zmm0,zmm25
  a20468:	62 d2 6d 48 7f c1    	vpermt2ps zmm0,zmm2,zmm9
  a2046e:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm0
  a20475:	0b 
  a20476:	62 91 7c 48 28 e3    	vmovaps zmm4,zmm27
  a2047c:	62 f2 6d 48 7f e5    	vpermt2ps zmm4,zmm2,zmm5
  a20482:	62 f1 7c 48 28 f4    	vmovaps zmm6,zmm4
  a20488:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm4
  a2048f:	0a 
  a20490:	62 b1 7c 48 28 e2    	vmovaps zmm4,zmm18
  a20496:	62 f2 6d 48 7f e5    	vpermt2ps zmm4,zmm2,zmm5
  a2049c:	62 61 7c 48 28 e4    	vmovaps zmm28,zmm4
  a204a2:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm4
  a204a9:	09 
  a204aa:	62 f2 55 40 77 d5    	vpermi2ps zmm2,zmm21,zmm5
  a204b0:	62 e1 7c 48 28 35 46 	vmovaps zmm22,ZMMWORD PTR [rip+0xffffffffff6a6946]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a204b7:	69 6a ff 
  a204ba:	62 f1 fd 48 15 e6    	vunpckhpd zmm4,zmm0,zmm6
  a204c0:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm4
  a204c7:	12 
  a204c8:	62 f1 9d 40 15 c2    	vunpckhpd zmm0,zmm28,zmm2
  a204ce:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm0
  a204d5:	11 
  a204d6:	62 f2 4d 40 7f e0    	vpermt2ps zmm4,zmm22,zmm0
  a204dc:	62 91 8d 40 15 f7    	vunpckhpd zmm6,zmm30,zmm31
  a204e2:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm6
  a204e9:	10 
  a204ea:	62 b1 95 48 15 c7    	vunpckhpd zmm0,zmm13,zmm23
  a204f0:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm0
  a204f7:	0f 
  a204f8:	62 f2 4d 40 7f f0    	vpermt2ps zmm6,zmm22,zmm0
  a204fe:	62 61 7c 48 10 72 0d 	vmovups zmm30,ZMMWORD PTR [rdx+0x340]
  a20505:	62 61 7c 48 10 7a 0c 	vmovups zmm31,ZMMWORD PTR [rdx+0x300]
  a2050c:	62 91 4c 48 59 c7    	vmulps zmm0,zmm6,zmm31
  a20512:	62 92 5d 48 b8 c6    	vfmadd231ps zmm0,zmm4,zmm30
  a20518:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm0
  a2051f:	17 
  a20520:	62 91 5c 48 59 c7    	vmulps zmm0,zmm4,zmm31
  a20526:	62 f2 0d 40 bc c6    	vfnmadd231ps zmm0,zmm30,zmm6
  a2052c:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm0
  a20533:	07 
  a20534:	62 41 f5 48 15 f7    	vunpckhpd zmm30,zmm1,zmm15
  a2053a:	62 61 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm30
  a20541:	0e 
  a20542:	62 91 bd 40 15 c2    	vunpckhpd zmm0,zmm24,zmm26
  a20548:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm0
  a2054f:	0d 
  a20550:	62 62 4d 40 7f f0    	vpermt2ps zmm30,zmm22,zmm0
  a20556:	62 51 c5 48 15 ea    	vunpckhpd zmm13,zmm7,zmm10
  a2055c:	62 d1 8d 48 15 c3    	vunpckhpd zmm0,zmm14,zmm11
  a20562:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm0
  a20569:	0c 
  a2056a:	62 41 7c 48 28 fd    	vmovaps zmm31,zmm13
  a20570:	62 62 4d 40 7f f8    	vpermt2ps zmm31,zmm22,zmm0
  a20576:	62 f1 7c 48 10 4a 1d 	vmovups zmm1,ZMMWORD PTR [rdx+0x740]
  a2057d:	62 f1 7c 48 10 42 1c 	vmovups zmm0,ZMMWORD PTR [rdx+0x700]
  a20584:	62 f1 04 40 59 e0    	vmulps zmm4,zmm31,zmm0
  a2058a:	62 f2 0d 40 b8 e1    	vfmadd231ps zmm4,zmm30,zmm1
  a20590:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x940],zmm4
  a20597:	25 
  a20598:	62 f1 0c 40 59 c0    	vmulps zmm0,zmm30,zmm0
  a2059e:	62 92 75 48 bc c7    	vfnmadd231ps zmm0,zmm1,zmm31
  a205a4:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x900],zmm0
  a205ab:	24 
  a205ac:	62 f1 7c 48 28 05 4a 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6a694a]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a205b3:	69 6a ff 
  a205b6:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x40]
  a205bd:	01 
  a205be:	62 b2 7d 48 7f e0    	vpermt2ps zmm4,zmm0,zmm16
  a205c4:	62 61 7c 48 28 74 24 	vmovaps zmm30,ZMMWORD PTR [rsp+0x180]
  a205cb:	06 
  a205cc:	62 42 7d 48 7f f4    	vpermt2ps zmm30,zmm0,zmm12
  a205d2:	62 e1 7c 48 28 44 24 	vmovaps zmm16,ZMMWORD PTR [rsp+0x4c0]
  a205d9:	13 
  a205da:	62 82 7d 48 7f c5    	vpermt2ps zmm16,zmm0,zmm29
  a205e0:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x140]
  a205e7:	05 
  a205e8:	62 f2 7d 48 7f fb    	vpermt2ps zmm7,zmm0,zmm3
  a205ee:	62 71 7c 48 28 64 24 	vmovaps zmm12,ZMMWORD PTR [rsp+0x580]
  a205f5:	16 
  a205f6:	62 72 7d 48 7f e3    	vpermt2ps zmm12,zmm0,zmm3
  a205fc:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x500]
  a20603:	14 
  a20604:	62 72 7d 48 7f d3    	vpermt2ps zmm10,zmm0,zmm3
  a2060a:	62 61 7c 48 28 6c 24 	vmovaps zmm29,ZMMWORD PTR [rsp+0xc0]
  a20611:	03 
  a20612:	62 62 7d 48 7f eb    	vpermt2ps zmm29,zmm0,zmm3
  a20618:	62 61 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm29
  a2061f:	03 
  a20620:	62 41 7c 48 28 f8    	vmovaps zmm31,zmm8
  a20626:	62 62 7d 48 7f fb    	vpermt2ps zmm31,zmm0,zmm3
  a2062c:	62 61 7c 48 28 64 24 	vmovaps zmm28,ZMMWORD PTR [rsp+0x80]
  a20633:	02 
  a20634:	62 62 7d 48 7f e3    	vpermt2ps zmm28,zmm0,zmm3
  a2063a:	62 61 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm28
  a20641:	02 
  a20642:	62 42 7d 48 7f c9    	vpermt2ps zmm25,zmm0,zmm9
  a20648:	62 e2 7d 48 7f e5    	vpermt2ps zmm20,zmm0,zmm5
  a2064e:	62 e2 7d 48 7f dd    	vpermt2ps zmm19,zmm0,zmm5
  a20654:	62 e2 7d 48 7f cd    	vpermt2ps zmm17,zmm0,zmm5
  a2065a:	62 62 7d 48 7f dd    	vpermt2ps zmm27,zmm0,zmm5
  a20660:	62 e2 7d 48 7f d5    	vpermt2ps zmm18,zmm0,zmm5
  a20666:	62 e2 7d 48 7f ed    	vpermt2ps zmm21,zmm0,zmm5
  a2066c:	62 a1 dd 48 15 fc    	vunpckhpd zmm23,zmm4,zmm20
  a20672:	62 b1 e5 40 15 c9    	vunpckhpd zmm1,zmm19,zmm17
  a20678:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm1
  a2067f:	1a 
  a20680:	62 b1 7c 48 28 c7    	vmovaps zmm0,zmm23
  a20686:	62 f2 4d 40 7f c1    	vpermt2ps zmm0,zmm22,zmm1
  a2068c:	62 91 b5 40 15 f3    	vunpckhpd zmm6,zmm25,zmm27
  a20692:	62 b1 ed 40 15 dd    	vunpckhpd zmm3,zmm18,zmm21
  a20698:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm3
  a2069f:	19 
  a206a0:	62 f1 7c 48 28 ce    	vmovaps zmm1,zmm6
  a206a6:	62 f2 4d 40 7f cb    	vpermt2ps zmm1,zmm22,zmm3
  a206ac:	62 f1 7c 48 10 6a 04 	vmovups zmm5,ZMMWORD PTR [rdx+0x100]
  a206b3:	62 71 7c 48 10 4a 05 	vmovups zmm9,ZMMWORD PTR [rdx+0x140]
  a206ba:	62 f1 74 48 59 dd    	vmulps zmm3,zmm1,zmm5
  a206c0:	62 d2 7d 48 bc d9    	vfnmadd231ps zmm3,zmm0,zmm9
  a206c6:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm3
  a206cd:	16 
  a206ce:	62 f1 7c 48 59 c5    	vmulps zmm0,zmm0,zmm5
  a206d4:	62 f2 35 48 b8 c1    	vfmadd231ps zmm0,zmm9,zmm1
  a206da:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm0
  a206e1:	15 
  a206e2:	62 91 fd 40 15 dd    	vunpckhpd zmm3,zmm16,zmm29
  a206e8:	62 91 85 40 15 cc    	vunpckhpd zmm1,zmm31,zmm28
  a206ee:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm1
  a206f5:	18 
  a206f6:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a206fc:	62 f2 4d 40 7f c1    	vpermt2ps zmm0,zmm22,zmm1
  a20702:	62 f1 8d 40 15 ef    	vunpckhpd zmm5,zmm30,zmm7
  a20708:	62 71 7c 48 28 c7    	vmovaps zmm8,zmm7
  a2070e:	62 01 7c 48 28 ee    	vmovaps zmm29,zmm30
  a20714:	62 41 9d 48 15 f2    	vunpckhpd zmm30,zmm12,zmm10
  a2071a:	62 d1 7c 48 28 fc    	vmovaps zmm7,zmm12
  a20720:	62 71 7c 48 28 cd    	vmovaps zmm9,zmm5
  a20726:	62 12 4d 40 7f ce    	vpermt2ps zmm9,zmm22,zmm30
  a2072c:	62 71 7c 48 10 62 15 	vmovups zmm12,ZMMWORD PTR [rdx+0x540]
  a20733:	62 f1 7c 48 10 4a 14 	vmovups zmm1,ZMMWORD PTR [rdx+0x500]
  a2073a:	62 61 34 48 59 e1    	vmulps zmm28,zmm9,zmm1
  a20740:	62 42 7d 48 bc e4    	vfnmadd231ps zmm28,zmm0,zmm12
  a20746:	62 61 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm28
  a2074d:	14 
  a2074e:	62 f1 7c 48 59 c1    	vmulps zmm0,zmm0,zmm1
  a20754:	62 d2 1d 48 b8 c1    	vfmadd231ps zmm0,zmm12,zmm9
  a2075a:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm0
  a20761:	13 
  a20762:	62 b1 dd 48 14 c4    	vunpcklpd zmm0,zmm4,zmm20
  a20768:	62 31 e5 40 14 c9    	vunpcklpd zmm9,zmm19,zmm17
  a2076e:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x740],zmm9
  a20775:	1d 
  a20776:	62 91 b5 40 14 cb    	vunpcklpd zmm1,zmm25,zmm27
  a2077c:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm1
  a20783:	01 
  a20784:	62 b1 ed 40 14 e5    	vunpcklpd zmm4,zmm18,zmm21
  a2078a:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x7c0],zmm4
  a20791:	1f 
  a20792:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x780],zmm0
  a20799:	1e 
  a2079a:	62 e1 7c 48 28 25 9c 	vmovaps zmm20,ZMMWORD PTR [rip+0xffffffffff6a669c]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a207a1:	66 6a ff 
  a207a4:	62 d2 5d 40 7f c1    	vpermt2ps zmm0,zmm20,zmm9
  a207aa:	62 f2 5d 40 7f cc    	vpermt2ps zmm1,zmm20,zmm4
  a207b0:	62 71 7c 48 10 4a 02 	vmovups zmm9,ZMMWORD PTR [rdx+0x80]
  a207b7:	62 71 7c 48 10 62 03 	vmovups zmm12,ZMMWORD PTR [rdx+0xc0]
  a207be:	62 d1 74 48 59 e1    	vmulps zmm4,zmm1,zmm9
  a207c4:	62 d2 7d 48 bc e4    	vfnmadd231ps zmm4,zmm0,zmm12
  a207ca:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x800],zmm4
  a207d1:	20 
  a207d2:	62 d1 7c 48 59 c1    	vmulps zmm0,zmm0,zmm9
  a207d8:	62 f2 1d 48 b8 c1    	vfmadd231ps zmm0,zmm12,zmm1
  a207de:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm0
  a207e5:	06 
  a207e6:	62 d1 95 40 14 c0    	vunpcklpd zmm0,zmm29,zmm8
  a207ec:	62 41 c5 48 14 ea    	vunpcklpd zmm29,zmm7,zmm10
  a207f2:	62 f1 fd 40 14 4c 24 	vunpcklpd zmm1,zmm16,ZMMWORD PTR [rsp+0xc0]
  a207f9:	03 
  a207fa:	62 f1 85 40 14 64 24 	vunpcklpd zmm4,zmm31,ZMMWORD PTR [rsp+0x80]
  a20801:	02 
  a20802:	62 e1 7c 48 28 c9    	vmovaps zmm17,zmm1
  a20808:	62 f2 5d 40 7f cc    	vpermt2ps zmm1,zmm20,zmm4
  a2080e:	62 e1 7c 48 28 d8    	vmovaps zmm19,zmm0
  a20814:	62 92 5d 40 7f c5    	vpermt2ps zmm0,zmm20,zmm29
  a2081a:	62 f1 7c 48 10 7a 13 	vmovups zmm7,ZMMWORD PTR [rdx+0x4c0]
  a20821:	62 71 7c 48 10 62 12 	vmovups zmm12,ZMMWORD PTR [rdx+0x480]
  a20828:	62 51 7c 48 59 c4    	vmulps zmm8,zmm0,zmm12
  a2082e:	62 72 75 48 bc c7    	vfnmadd231ps zmm8,zmm1,zmm7
  a20834:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm8
  a2083b:	02 
  a2083c:	62 d1 74 48 59 cc    	vmulps zmm1,zmm1,zmm12
  a20842:	62 f2 45 48 b8 c8    	vfmadd231ps zmm1,zmm7,zmm0
  a20848:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm1
  a2084f:	03 
  a20850:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x6c0]
  a20857:	1b 
  a20858:	62 f1 fd 48 14 44 24 	vunpcklpd zmm0,zmm0,ZMMWORD PTR [rsp+0x700]
  a2085f:	1c 
  a20860:	62 d1 8d 48 14 fb    	vunpcklpd zmm7,zmm14,zmm11
  a20866:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x200]
  a2086d:	08 
  a2086e:	62 d1 f5 48 14 cf    	vunpcklpd zmm1,zmm1,zmm15
  a20874:	62 01 bd 40 14 d2    	vunpcklpd zmm26,zmm24,zmm26
  a2087a:	62 71 7c 48 28 f9    	vmovaps zmm15,zmm1
  a20880:	62 92 5d 40 7f ca    	vpermt2ps zmm1,zmm20,zmm26
  a20886:	62 61 7c 48 28 c0    	vmovaps zmm24,zmm0
  a2088c:	62 f2 5d 40 7f c7    	vpermt2ps zmm0,zmm20,zmm7
  a20892:	62 71 7c 48 10 52 1b 	vmovups zmm10,ZMMWORD PTR [rdx+0x6c0]
  a20899:	62 71 7c 48 10 5a 1a 	vmovups zmm11,ZMMWORD PTR [rdx+0x680]
  a208a0:	62 41 7c 48 59 fb    	vmulps zmm31,zmm0,zmm11
  a208a6:	62 42 75 48 b8 fa    	vfmadd231ps zmm31,zmm1,zmm10
  a208ac:	62 61 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm31
  a208b3:	08 
  a208b4:	62 d1 74 48 59 cb    	vmulps zmm1,zmm1,zmm11
  a208ba:	62 f2 2d 48 bc c8    	vfnmadd231ps zmm1,zmm10,zmm0
  a208c0:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm1
  a208c7:	05 
  a208c8:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x100]
  a208cf:	04 
  a208d0:	62 f1 fd 48 14 4c 24 	vunpcklpd zmm1,zmm0,ZMMWORD PTR [rsp+0x8c0]
  a208d7:	23 
  a208d8:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x880]
  a208df:	22 
  a208e0:	62 71 fd 48 14 74 24 	vunpcklpd zmm14,zmm0,ZMMWORD PTR [rsp+0x840]
  a208e7:	21 
  a208e8:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x2c0]
  a208ef:	0b 
  a208f0:	62 71 fd 48 14 5c 24 	vunpcklpd zmm11,zmm0,ZMMWORD PTR [rsp+0x280]
  a208f7:	0a 
  a208f8:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x240]
  a208ff:	09 
  a20900:	62 f1 fd 48 14 c2    	vunpcklpd zmm0,zmm0,zmm2
  a20906:	62 c1 7c 48 28 c3    	vmovaps zmm16,zmm11
  a2090c:	62 72 5d 40 7f d8    	vpermt2ps zmm11,zmm20,zmm0
  a20912:	62 61 7c 48 28 e1    	vmovaps zmm28,zmm1
  a20918:	62 d2 5d 40 7f ce    	vpermt2ps zmm1,zmm20,zmm14
  a2091e:	62 f1 7c 48 10 52 0b 	vmovups zmm2,ZMMWORD PTR [rdx+0x2c0]
  a20925:	62 71 7c 48 10 42 0a 	vmovups zmm8,ZMMWORD PTR [rdx+0x280]
  a2092c:	62 c1 74 48 59 d0    	vmulps zmm18,zmm1,zmm8
  a20932:	62 e2 25 48 b8 d2    	vfmadd231ps zmm18,zmm11,zmm2
  a20938:	62 e1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm18
  a2093f:	0b 
  a20940:	62 51 24 48 59 c8    	vmulps zmm9,zmm11,zmm8
  a20946:	62 72 6d 48 bc c9    	vfnmadd231ps zmm9,zmm2,zmm1
  a2094c:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm9
  a20953:	0a 
  a20954:	62 e2 5d 40 7f 7c 24 	vpermt2ps zmm23,zmm20,ZMMWORD PTR [rsp+0x680]
  a2095b:	1a 
  a2095c:	62 f2 5d 40 7f 74 24 	vpermt2ps zmm6,zmm20,ZMMWORD PTR [rsp+0x640]
  a20963:	19 
  a20964:	62 f2 5d 40 7f 5c 24 	vpermt2ps zmm3,zmm20,ZMMWORD PTR [rsp+0x600]
  a2096b:	18 
  a2096c:	62 92 5d 40 7f ee    	vpermt2ps zmm5,zmm20,zmm30
  a20972:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x480]
  a20979:	12 
  a2097a:	62 72 5d 40 7f 44 24 	vpermt2ps zmm8,zmm20,ZMMWORD PTR [rsp+0x440]
  a20981:	11 
  a20982:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x400]
  a20989:	10 
  a2098a:	62 72 5d 40 7f 54 24 	vpermt2ps zmm10,zmm20,ZMMWORD PTR [rsp+0x3c0]
  a20991:	0f 
  a20992:	62 71 7c 48 28 64 24 	vmovaps zmm12,ZMMWORD PTR [rsp+0x380]
  a20999:	0e 
  a2099a:	62 72 5d 40 7f 64 24 	vpermt2ps zmm12,zmm20,ZMMWORD PTR [rsp+0x340]
  a209a1:	0d 
  a209a2:	62 72 5d 40 7f 6c 24 	vpermt2ps zmm13,zmm20,ZMMWORD PTR [rsp+0x300]
  a209a9:	0c 
  a209aa:	62 f1 7c 48 10 4a 07 	vmovups zmm1,ZMMWORD PTR [rdx+0x1c0]
  a209b1:	62 f1 7c 48 10 52 06 	vmovups zmm2,ZMMWORD PTR [rdx+0x180]
  a209b8:	62 61 4c 48 59 da    	vmulps zmm27,zmm6,zmm2
  a209be:	62 62 45 40 bc d9    	vfnmadd231ps zmm27,zmm23,zmm1
  a209c4:	62 61 44 40 59 ca    	vmulps zmm25,zmm23,zmm2
  a209ca:	62 62 75 48 b8 ce    	vfmadd231ps zmm25,zmm1,zmm6
  a209d0:	62 f1 7c 48 10 4a 17 	vmovups zmm1,ZMMWORD PTR [rdx+0x5c0]
  a209d7:	62 f1 7c 48 10 52 16 	vmovups zmm2,ZMMWORD PTR [rdx+0x580]
  a209de:	62 61 54 48 59 f2    	vmulps zmm30,zmm5,zmm2
  a209e4:	62 62 65 48 bc f1    	vfnmadd231ps zmm30,zmm3,zmm1
  a209ea:	62 e1 64 48 59 ea    	vmulps zmm21,zmm3,zmm2
  a209f0:	62 e2 75 48 b8 ed    	vfmadd231ps zmm21,zmm1,zmm5
  a209f6:	62 f1 7c 48 10 4a 1f 	vmovups zmm1,ZMMWORD PTR [rdx+0x7c0]
  a209fd:	62 f1 7c 48 10 5a 1e 	vmovups zmm3,ZMMWORD PTR [rdx+0x780]
  a20a04:	62 71 14 48 59 db    	vmulps zmm11,zmm13,zmm3
  a20a0a:	62 72 1d 48 b8 d9    	vfmadd231ps zmm11,zmm12,zmm1
  a20a10:	62 71 1c 48 59 e3    	vmulps zmm12,zmm12,zmm3
  a20a16:	62 52 75 48 bc e5    	vfnmadd231ps zmm12,zmm1,zmm13
  a20a1c:	62 f1 7c 48 10 4a 0f 	vmovups zmm1,ZMMWORD PTR [rdx+0x3c0]
  a20a23:	62 f1 7c 48 10 5a 0e 	vmovups zmm3,ZMMWORD PTR [rdx+0x380]
  a20a2a:	62 f1 2c 48 59 eb    	vmulps zmm5,zmm10,zmm3
  a20a30:	62 f2 3d 48 b8 e9    	vfmadd231ps zmm5,zmm8,zmm1
  a20a36:	62 71 3c 48 59 eb    	vmulps zmm13,zmm8,zmm3
  a20a3c:	62 52 75 48 bc ea    	vfnmadd231ps zmm13,zmm1,zmm10
  a20a42:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x780]
  a20a49:	1e 
  a20a4a:	62 72 4d 40 7f 54 24 	vpermt2ps zmm10,zmm22,ZMMWORD PTR [rsp+0x740]
  a20a51:	1d 
  a20a52:	62 82 4d 40 7f dd    	vpermt2ps zmm19,zmm22,zmm29
  a20a58:	62 e2 4d 40 7f cc    	vpermt2ps zmm17,zmm22,zmm4
  a20a5e:	62 62 4d 40 7f c7    	vpermt2ps zmm24,zmm22,zmm7
  a20a64:	62 12 4d 40 7f fa    	vpermt2ps zmm15,zmm22,zmm26
  a20a6a:	62 42 4d 40 7f e6    	vpermt2ps zmm28,zmm22,zmm14
  a20a70:	62 e2 4d 40 7f c0    	vpermt2ps zmm16,zmm22,zmm0
  a20a76:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x40]
  a20a7d:	01 
  a20a7e:	62 f2 4d 40 7f 44 24 	vpermt2ps zmm0,zmm22,ZMMWORD PTR [rsp+0x7c0]
  a20a85:	1f 
  a20a86:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a20a8d:	01 
  a20a8e:	62 f1 7c 48 10 42 11 	vmovups zmm0,ZMMWORD PTR [rdx+0x440]
  a20a95:	62 f1 7c 48 10 4a 10 	vmovups zmm1,ZMMWORD PTR [rdx+0x400]
  a20a9c:	62 71 74 40 59 f1    	vmulps zmm14,zmm17,zmm1
  a20aa2:	62 72 65 40 b8 f0    	vfmadd231ps zmm14,zmm19,zmm0
  a20aa8:	62 e1 64 40 59 d9    	vmulps zmm19,zmm19,zmm1
  a20aae:	62 a2 7d 48 bc d9    	vfnmadd231ps zmm19,zmm0,zmm17
  a20ab4:	62 f1 7c 48 10 42 09 	vmovups zmm0,ZMMWORD PTR [rdx+0x240]
  a20abb:	62 f1 7c 48 10 4a 08 	vmovups zmm1,ZMMWORD PTR [rdx+0x200]
  a20ac2:	62 e1 7c 40 59 e1    	vmulps zmm20,zmm16,zmm1
  a20ac8:	62 e2 1d 40 bc e0    	vfnmadd231ps zmm20,zmm28,zmm0
  a20ace:	62 f1 1c 40 59 f1    	vmulps zmm6,zmm28,zmm1
  a20ad4:	62 b2 7d 48 b8 f0    	vfmadd231ps zmm6,zmm0,zmm16
  a20ada:	62 f1 7c 48 10 42 19 	vmovups zmm0,ZMMWORD PTR [rdx+0x640]
  a20ae1:	62 f1 7c 48 10 4a 18 	vmovups zmm1,ZMMWORD PTR [rdx+0x600]
  a20ae8:	62 f1 04 48 59 e1    	vmulps zmm4,zmm15,zmm1
  a20aee:	62 f2 3d 40 bc e0    	vfnmadd231ps zmm4,zmm24,zmm0
  a20af4:	62 e1 3c 40 59 f9    	vmulps zmm23,zmm24,zmm1
  a20afa:	62 c2 7d 48 b8 ff    	vfmadd231ps zmm23,zmm0,zmm15
  a20b00:	62 61 7c 48 28 6c 24 	vmovaps zmm29,ZMMWORD PTR [rsp+0x800]
  a20b07:	20 
  a20b08:	62 e1 14 40 5c 74 24 	vsubps zmm22,zmm29,ZMMWORD PTR [rsp+0x80]
  a20b0f:	02 
  a20b10:	62 01 6c 40 5c c7    	vsubps zmm24,zmm18,zmm31
  a20b16:	62 91 4c 40 5c d8    	vsubps zmm3,zmm22,zmm24
  a20b1c:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x180]
  a20b23:	06 
  a20b24:	62 61 7c 48 5c 54 24 	vsubps zmm26,zmm0,ZMMWORD PTR [rsp+0xc0]
  a20b2b:	03 
  a20b2c:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x140]
  a20b33:	05 
  a20b34:	62 41 7c 48 5c e1    	vsubps zmm28,zmm0,zmm9
  a20b3a:	62 f2 7d 48 18 15 bc 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff654bbc]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a20b41:	4b 65 ff 
  a20b44:	62 11 2c 40 5c cc    	vsubps zmm9,zmm26,zmm28
  a20b4a:	62 f1 34 48 59 c2    	vmulps zmm0,zmm9,zmm2
  a20b50:	62 e2 7d 48 18 15 0a 	vbroadcastss zmm18,DWORD PTR [rip+0xffffffffff654b0a]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a20b57:	4b 65 ff 
  a20b5a:	62 b2 65 48 b8 c2    	vfmadd231ps zmm0,zmm3,zmm18
  a20b60:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  a20b67:	04 
  a20b68:	62 b1 34 48 59 c2    	vmulps zmm0,zmm9,zmm18
  a20b6e:	62 f2 6d 48 bc c3    	vfnmadd231ps zmm0,zmm2,zmm3
  a20b74:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm0
  a20b7b:	12 
  a20b7c:	62 91 24 40 5c de    	vsubps zmm3,zmm27,zmm30
  a20b82:	62 51 54 48 5c cb    	vsubps zmm9,zmm5,zmm11
  a20b88:	62 c1 64 48 5c c9    	vsubps zmm17,zmm3,zmm9
  a20b8e:	62 21 34 40 5c fd    	vsubps zmm31,zmm25,zmm21
  a20b94:	62 d1 1c 48 5c cd    	vsubps zmm1,zmm12,zmm13
  a20b9a:	62 f1 04 40 5c c1    	vsubps zmm0,zmm31,zmm1
  a20ba0:	62 b1 7c 48 59 fa    	vmulps zmm7,zmm0,zmm18
  a20ba6:	62 f2 75 40 b8 fa    	vfmadd231ps zmm7,zmm17,zmm2
  a20bac:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm7
  a20bb3:	11 
  a20bb4:	62 b1 74 40 59 fa    	vmulps zmm7,zmm17,zmm18
  a20bba:	62 f2 6d 48 bc f8    	vfnmadd231ps zmm7,zmm2,zmm0
  a20bc0:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm7
  a20bc7:	10 
  a20bc8:	62 d1 64 48 58 c1    	vaddps zmm0,zmm3,zmm9
  a20bce:	62 f1 04 40 58 c9    	vaddps zmm1,zmm31,zmm1
  a20bd4:	62 91 4c 40 58 d8    	vaddps zmm3,zmm22,zmm24
  a20bda:	62 11 2c 40 58 cc    	vaddps zmm9,zmm26,zmm28
  a20be0:	62 b1 34 48 59 fa    	vmulps zmm7,zmm9,zmm18
  a20be6:	62 f2 65 48 b8 fa    	vfmadd231ps zmm7,zmm3,zmm2
  a20bec:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm7
  a20bf3:	0f 
  a20bf4:	62 f1 34 48 59 fa    	vmulps zmm7,zmm9,zmm2
  a20bfa:	62 f2 6d 40 bc fb    	vfnmadd231ps zmm7,zmm18,zmm3
  a20c00:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm7
  a20c07:	0d 
  a20c08:	62 f1 74 48 59 da    	vmulps zmm3,zmm1,zmm2
  a20c0e:	62 b2 7d 48 b8 da    	vfmadd231ps zmm3,zmm0,zmm18
  a20c14:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm3
  a20c1b:	0e 
  a20c1c:	62 21 74 48 59 e2    	vmulps zmm28,zmm1,zmm18
  a20c22:	62 62 7d 48 bc e2    	vfnmadd231ps zmm28,zmm0,zmm2
  a20c28:	62 e1 7c 48 28 44 24 	vmovaps zmm16,ZMMWORD PTR [rsp+0x580]
  a20c2f:	16 
  a20c30:	62 61 7c 48 28 7c 24 	vmovaps zmm31,ZMMWORD PTR [rsp+0x500]
  a20c37:	14 
  a20c38:	62 91 7c 40 5c c7    	vsubps zmm0,zmm16,zmm31
  a20c3e:	62 61 7c 48 28 44 24 	vmovaps zmm24,ZMMWORD PTR [rsp+0x540]
  a20c45:	15 
  a20c46:	62 61 7c 48 28 54 24 	vmovaps zmm26,ZMMWORD PTR [rsp+0x4c0]
  a20c4d:	13 
  a20c4e:	62 91 3c 40 5c ca    	vsubps zmm1,zmm24,zmm26
  a20c54:	62 e1 7c 48 58 c9    	vaddps zmm17,zmm0,zmm1
  a20c5a:	62 f1 74 48 5c c0    	vsubps zmm0,zmm1,zmm0
  a20c60:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm0
  a20c67:	0c 
  a20c68:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x5c0]
  a20c6f:	17 
  a20c70:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x940]
  a20c77:	25 
  a20c78:	62 f1 7c 48 5c ca    	vsubps zmm1,zmm0,zmm2
  a20c7e:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x1c0]
  a20c85:	07 
  a20c86:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x900]
  a20c8d:	24 
  a20c8e:	62 d1 3c 48 5c d9    	vsubps zmm3,zmm8,zmm9
  a20c94:	62 71 74 48 5c fb    	vsubps zmm15,zmm1,zmm3
  a20c9a:	62 f1 64 48 58 c9    	vaddps zmm1,zmm3,zmm1
  a20ca0:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm1
  a20ca7:	09 
  a20ca8:	62 d1 2c 48 5c fe    	vsubps zmm7,zmm10,zmm14
  a20cae:	62 51 0c 48 58 f2    	vaddps zmm14,zmm14,zmm10
  a20cb4:	62 a1 4c 48 5c d7    	vsubps zmm18,zmm6,zmm23
  a20cba:	62 31 4c 48 58 d7    	vaddps zmm10,zmm6,zmm23
  a20cc0:	62 c1 3c 48 58 f1    	vaddps zmm22,zmm8,zmm9
  a20cc6:	62 01 7c 40 58 ff    	vaddps zmm31,zmm16,zmm31
  a20ccc:	62 b1 34 40 58 dd    	vaddps zmm3,zmm25,zmm21
  a20cd2:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm3
  a20cd9:	07 
  a20cda:	62 c1 54 48 58 c3    	vaddps zmm16,zmm5,zmm11
  a20ce0:	62 11 24 40 58 de    	vaddps zmm11,zmm27,zmm30
  a20ce6:	62 51 14 48 58 cc    	vaddps zmm9,zmm13,zmm12
  a20cec:	62 71 14 40 58 64 24 	vaddps zmm12,zmm29,ZMMWORD PTR [rsp+0x80]
  a20cf3:	02 
  a20cf4:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x280]
  a20cfb:	0a 
  a20cfc:	62 71 74 48 58 6c 24 	vaddps zmm13,zmm1,ZMMWORD PTR [rsp+0x140]
  a20d03:	05 
  a20d04:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0xc0]
  a20d0b:	03 
  a20d0c:	62 e1 74 48 58 6c 24 	vaddps zmm21,zmm1,ZMMWORD PTR [rsp+0x180]
  a20d13:	06 
  a20d14:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x200]
  a20d1b:	08 
  a20d1c:	62 61 74 48 58 4c 24 	vaddps zmm25,zmm1,ZMMWORD PTR [rsp+0x2c0]
  a20d23:	0b 
  a20d24:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x40]
  a20d2b:	01 
  a20d2c:	62 21 74 48 5c db    	vsubps zmm27,zmm1,zmm19
  a20d32:	62 a1 74 48 58 db    	vaddps zmm19,zmm1,zmm19
  a20d38:	62 21 5c 48 5c ec    	vsubps zmm29,zmm4,zmm20
  a20d3e:	62 71 5c 40 58 c4    	vaddps zmm8,zmm20,zmm4
  a20d44:	62 81 3c 40 58 e2    	vaddps zmm20,zmm24,zmm26
  a20d4a:	62 61 7c 48 58 f2    	vaddps zmm30,zmm0,zmm2
  a20d50:	62 d1 1c 48 5c cd    	vsubps zmm1,zmm12,zmm13
  a20d56:	62 91 54 40 5c c1    	vsubps zmm0,zmm21,zmm25
  a20d5c:	62 f1 74 48 58 f0    	vaddps zmm6,zmm1,zmm0
  a20d62:	62 f1 7c 48 5c e9    	vsubps zmm5,zmm0,zmm1
  a20d68:	62 b1 64 48 5c c8    	vsubps zmm1,zmm3,zmm16
  a20d6e:	62 d1 24 48 5c c1    	vsubps zmm0,zmm11,zmm9
  a20d74:	62 f1 74 48 5c d8    	vsubps zmm3,zmm1,zmm0
  a20d7a:	62 f1 7c 48 58 e1    	vaddps zmm4,zmm0,zmm1
  a20d80:	62 f2 7d 48 18 0d 12 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff654612]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a20d87:	46 65 ff 
  a20d8a:	62 71 04 48 59 f9    	vmulps zmm15,zmm15,zmm1
  a20d90:	62 e1 74 40 59 c9    	vmulps zmm17,zmm17,zmm1
  a20d96:	62 f1 74 48 59 54 24 	vmulps zmm2,zmm1,ZMMWORD PTR [rsp+0x300]
  a20d9d:	0c 
  a20d9e:	62 f1 74 48 59 44 24 	vmulps zmm0,zmm1,ZMMWORD PTR [rsp+0x240]
  a20da5:	09 
  a20da6:	62 61 64 48 59 d1    	vmulps zmm26,zmm3,zmm1
  a20dac:	62 f1 4c 48 59 f1    	vmulps zmm6,zmm6,zmm1
  a20db2:	62 f1 54 48 59 e9    	vmulps zmm5,zmm5,zmm1
  a20db8:	62 f1 5c 48 59 c9    	vmulps zmm1,zmm4,zmm1
  a20dbe:	62 91 44 48 5c e5    	vsubps zmm4,zmm7,zmm29
  a20dc4:	62 f1 14 40 58 ff    	vaddps zmm7,zmm29,zmm7
  a20dca:	62 61 6c 48 58 e8    	vaddps zmm29,zmm2,zmm0
  a20dd0:	62 f1 6c 48 5c d8    	vsubps zmm3,zmm2,zmm0
  a20dd6:	62 b1 24 40 5c d2    	vsubps zmm2,zmm27,zmm18
  a20ddc:	62 a1 24 40 58 d2    	vaddps zmm18,zmm27,zmm18
  a20de2:	62 21 04 48 5c d9    	vsubps zmm27,zmm15,zmm17
  a20de8:	62 51 74 40 58 ff    	vaddps zmm15,zmm17,zmm15
  a20dee:	62 c1 0c 48 5c ca    	vsubps zmm17,zmm14,zmm10
  a20df4:	62 c1 2c 48 58 fe    	vaddps zmm23,zmm10,zmm14
  a20dfa:	62 11 5c 40 5c f6    	vsubps zmm14,zmm20,zmm30
  a20e00:	62 81 5c 40 58 e6    	vaddps zmm20,zmm20,zmm30
  a20e06:	62 d1 24 48 58 c1    	vaddps zmm0,zmm11,zmm9
  a20e0c:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a20e13:	01 
  a20e14:	62 41 1c 48 58 c5    	vaddps zmm24,zmm12,zmm13
  a20e1a:	62 51 64 40 5c e0    	vsubps zmm12,zmm19,zmm8
  a20e20:	62 d1 64 40 58 c0    	vaddps zmm0,zmm19,zmm8
  a20e26:	62 11 4c 40 5c ef    	vsubps zmm13,zmm22,zmm31
  a20e2c:	62 a1 04 40 58 de    	vaddps zmm19,zmm31,zmm22
  a20e32:	62 81 54 40 58 e9    	vaddps zmm21,zmm21,zmm25
  a20e38:	62 e1 7c 40 58 44 24 	vaddps zmm16,zmm16,ZMMWORD PTR [rsp+0x1c0]
  a20e3f:	07 
  a20e40:	62 81 5c 48 5c f3    	vsubps zmm22,zmm4,zmm27
  a20e46:	62 f1 24 40 58 e4    	vaddps zmm4,zmm27,zmm4
  a20e4c:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm4
  a20e53:	17 
  a20e54:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x480]
  a20e5b:	12 
  a20e5c:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x400]
  a20e63:	10 
  a20e64:	62 51 5c 48 5c c8    	vsubps zmm9,zmm4,zmm8
  a20e6a:	62 d1 5c 48 58 e0    	vaddps zmm4,zmm4,zmm8
  a20e70:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm4
  a20e77:	07 
  a20e78:	62 01 6c 48 5c dd    	vsubps zmm27,zmm2,zmm29
  a20e7e:	62 01 6c 48 58 ed    	vaddps zmm29,zmm2,zmm29
  a20e84:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x100]
  a20e8b:	04 
  a20e8c:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x440]
  a20e93:	11 
  a20e94:	62 71 6c 48 58 c4    	vaddps zmm8,zmm2,zmm4
  a20e9a:	62 61 6c 48 5c f4    	vsubps zmm30,zmm2,zmm4
  a20ea0:	62 41 74 40 5c fd    	vsubps zmm31,zmm17,zmm13
  a20ea6:	62 21 14 48 58 c9    	vaddps zmm25,zmm13,zmm17
  a20eac:	62 71 54 48 58 e9    	vaddps zmm13,zmm5,zmm1
  a20eb2:	62 e1 54 48 5c c9    	vsubps zmm17,zmm5,zmm1
  a20eb8:	62 d1 1c 48 5c ee    	vsubps zmm5,zmm12,zmm14
  a20ebe:	62 51 1c 48 58 e6    	vaddps zmm12,zmm12,zmm14
  a20ec4:	62 71 2c 40 5c f6    	vsubps zmm14,zmm26,zmm6
  a20eca:	62 11 4c 48 58 da    	vaddps zmm11,zmm6,zmm26
  a20ed0:	62 f1 44 48 5c f3    	vsubps zmm6,zmm7,zmm3
  a20ed6:	62 71 64 48 58 d7    	vaddps zmm10,zmm3,zmm7
  a20edc:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x340]
  a20ee3:	0d 
  a20ee4:	62 91 74 48 5c fc    	vsubps zmm7,zmm1,zmm28
  a20eea:	62 01 74 48 58 d4    	vaddps zmm26,zmm1,zmm28
  a20ef0:	62 d1 6c 40 5c df    	vsubps zmm3,zmm18,zmm15
  a20ef6:	62 c1 6c 40 58 d7    	vaddps zmm18,zmm18,zmm15
  a20efc:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x3c0]
  a20f03:	0f 
  a20f04:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x380]
  a20f0b:	0e 
  a20f0c:	62 71 6c 48 5c f9    	vsubps zmm15,zmm2,zmm1
  a20f12:	62 61 74 48 58 e2    	vaddps zmm28,zmm1,zmm2
  a20f18:	62 b1 44 40 5c d4    	vsubps zmm2,zmm23,zmm20
  a20f1e:	62 a1 5c 40 58 e7    	vaddps zmm20,zmm20,zmm23
  a20f24:	62 a1 54 40 5c f8    	vsubps zmm23,zmm21,zmm16
  a20f2a:	62 a1 54 40 58 e8    	vaddps zmm21,zmm21,zmm16
  a20f30:	62 b1 7c 48 5c cb    	vsubps zmm1,zmm0,zmm19
  a20f36:	62 a1 7c 48 58 db    	vaddps zmm19,zmm0,zmm19
  a20f3c:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x40]
  a20f43:	01 
  a20f44:	62 91 5c 48 5c c0    	vsubps zmm0,zmm4,zmm24
  a20f4a:	62 f1 3c 40 58 e4    	vaddps zmm4,zmm24,zmm4
  a20f50:	62 c1 4c 40 58 c0    	vaddps zmm16,zmm22,zmm8
  a20f56:	62 e1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm16
  a20f5d:	01 
  a20f5e:	62 51 4c 40 5c c0    	vsubps zmm8,zmm22,zmm8
  a20f64:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm8
  a20f6b:	05 
  a20f6c:	62 c1 24 40 5c c1    	vsubps zmm16,zmm27,zmm9
  a20f72:	62 41 24 40 58 d9    	vaddps zmm27,zmm27,zmm9
  a20f78:	62 51 04 40 5c c6    	vsubps zmm8,zmm31,zmm14
  a20f7e:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm8
  a20f85:	04 
  a20f86:	62 41 04 40 58 c6    	vaddps zmm24,zmm31,zmm14
  a20f8c:	62 41 54 48 5c fd    	vsubps zmm31,zmm5,zmm13
  a20f92:	62 51 54 48 58 f5    	vaddps zmm14,zmm5,zmm13
  a20f98:	62 d1 4c 48 5c ef    	vsubps zmm5,zmm6,zmm15
  a20f9e:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm5
  a20fa5:	03 
  a20fa6:	62 c1 4c 48 58 f7    	vaddps zmm22,zmm6,zmm15
  a20fac:	62 f1 64 48 5c f7    	vsubps zmm6,zmm3,zmm7
  a20fb2:	62 71 64 48 58 c7    	vaddps zmm8,zmm3,zmm7
  a20fb8:	62 f1 6c 48 5c d8    	vsubps zmm3,zmm2,zmm0
  a20fbe:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm3
  a20fc5:	02 
  a20fc6:	62 f1 6c 48 58 d8    	vaddps zmm3,zmm2,zmm0
  a20fcc:	62 b1 74 48 5c d7    	vsubps zmm2,zmm1,zmm23
  a20fd2:	62 b1 74 48 58 c7    	vaddps zmm0,zmm1,zmm23
  a20fd8:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x5c0]
  a20fdf:	17 
  a20fe0:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x1c0]
  a20fe7:	07 
  a20fe8:	62 f1 54 48 5c cf    	vsubps zmm1,zmm5,zmm7
  a20fee:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm1
  a20ff5:	06 
  a20ff6:	62 f1 54 48 58 cf    	vaddps zmm1,zmm5,zmm7
  a20ffc:	62 91 14 40 5c ee    	vsubps zmm5,zmm29,zmm30
  a21002:	62 11 14 40 58 ee    	vaddps zmm13,zmm29,zmm30
  a21008:	62 a1 34 40 5c f9    	vsubps zmm23,zmm25,zmm17
  a2100e:	62 21 34 40 58 c9    	vaddps zmm25,zmm25,zmm17
  a21014:	62 d1 1c 48 5c fb    	vsubps zmm7,zmm12,zmm11
  a2101a:	62 51 1c 48 58 fb    	vaddps zmm15,zmm12,zmm11
  a21020:	62 11 2c 48 5c da    	vsubps zmm11,zmm10,zmm26
  a21026:	62 11 2c 48 58 d2    	vaddps zmm10,zmm10,zmm26
  a2102c:	62 11 6c 40 5c cc    	vsubps zmm9,zmm18,zmm28
  a21032:	62 81 6c 40 58 cc    	vaddps zmm17,zmm18,zmm28
  a21038:	62 21 5c 40 5c d5    	vsubps zmm26,zmm20,zmm21
  a2103e:	62 a1 5c 40 58 ed    	vaddps zmm21,zmm20,zmm21
  a21044:	62 71 64 40 5c e4    	vsubps zmm12,zmm19,zmm4
  a2104a:	62 e1 64 40 58 d4    	vaddps zmm18,zmm19,zmm4
  a21050:	62 e1 7c 48 28 25 66 	vmovaps zmm20,ZMMWORD PTR [rip+0xffffffffff66ee66]        # 8fec0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d370>
  a21057:	ee 66 ff 
  a2105a:	62 a2 5d 40 7f d5    	vpermt2ps zmm18,zmm20,zmm21
  a21060:	62 c2 5d 40 7f ca    	vpermt2ps zmm17,zmm20,zmm10
  a21066:	62 12 5d 40 7f f9    	vpermt2ps zmm15,zmm20,zmm25
  a2106c:	62 72 5d 40 7f e9    	vpermt2ps zmm13,zmm20,zmm1
  a21072:	62 f2 5d 40 7f c3    	vpermt2ps zmm0,zmm20,zmm3
  a21078:	62 32 5d 40 7f c6    	vpermt2ps zmm8,zmm20,zmm22
  a2107e:	62 12 5d 40 7f f0    	vpermt2ps zmm14,zmm20,zmm24
  a21084:	62 62 5d 40 7f 5c 24 	vpermt2ps zmm27,zmm20,ZMMWORD PTR [rsp+0x140]
  a2108b:	05 
  a2108c:	62 12 5d 40 7f e2    	vpermt2ps zmm12,zmm20,zmm26
  a21092:	62 52 5d 40 7f cb    	vpermt2ps zmm9,zmm20,zmm11
  a21098:	62 b2 5d 40 7f ff    	vpermt2ps zmm7,zmm20,zmm23
  a2109e:	62 f2 5d 40 7f 6c 24 	vpermt2ps zmm5,zmm20,ZMMWORD PTR [rsp+0x180]
  a210a5:	06 
  a210a6:	62 f2 5d 40 7f 54 24 	vpermt2ps zmm2,zmm20,ZMMWORD PTR [rsp+0x80]
  a210ad:	02 
  a210ae:	62 f2 5d 40 7f 74 24 	vpermt2ps zmm6,zmm20,ZMMWORD PTR [rsp+0xc0]
  a210b5:	03 
  a210b6:	62 62 5d 40 7f 7c 24 	vpermt2ps zmm31,zmm20,ZMMWORD PTR [rsp+0x100]
  a210bd:	04 
  a210be:	62 e2 5d 40 7f 44 24 	vpermt2ps zmm16,zmm20,ZMMWORD PTR [rsp+0x40]
  a210c5:	01 
  a210c6:	62 e3 7d 48 19 d1 02 	vextractf32x4 xmm1,zmm18,0x2
  a210cd:	c5 f8 13 4e 20       	vmovlps QWORD PTR [rsi+0x20],xmm1
  a210d2:	62 e1 7c 28 11 16    	vmovups YMMWORD PTR [rsi],ymm18
  a210d8:	62 e3 7d 48 19 c9 02 	vextractf32x4 xmm1,zmm17,0x2
  a210df:	c5 f8 13 4e 48       	vmovlps QWORD PTR [rsi+0x48],xmm1
  a210e4:	62 e1 7c 28 11 8e 28 	vmovups YMMWORD PTR [rsi+0x28],ymm17
  a210eb:	00 00 00 
  a210ee:	62 73 7d 48 19 f9 02 	vextractf32x4 xmm1,zmm15,0x2
  a210f5:	c5 f8 13 4e 70       	vmovlps QWORD PTR [rsi+0x70],xmm1
  a210fa:	c5 7c 11 7e 50       	vmovups YMMWORD PTR [rsi+0x50],ymm15
  a210ff:	62 73 7d 48 19 e9 02 	vextractf32x4 xmm1,zmm13,0x2
  a21106:	c5 f8 13 8e 98 00 00 	vmovlps QWORD PTR [rsi+0x98],xmm1
  a2110d:	00 
  a2110e:	c5 7c 11 6e 78       	vmovups YMMWORD PTR [rsi+0x78],ymm13
  a21113:	62 f3 7d 48 19 c1 02 	vextractf32x4 xmm1,zmm0,0x2
  a2111a:	c5 f8 13 8e c0 00 00 	vmovlps QWORD PTR [rsi+0xc0],xmm1
  a21121:	00 
  a21122:	c5 fc 11 86 a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm0
  a21129:	00 
  a2112a:	62 73 7d 48 19 c0 02 	vextractf32x4 xmm0,zmm8,0x2
  a21131:	c5 f8 13 86 e8 00 00 	vmovlps QWORD PTR [rsi+0xe8],xmm0
  a21138:	00 
  a21139:	c5 7c 11 86 c8 00 00 	vmovups YMMWORD PTR [rsi+0xc8],ymm8
  a21140:	00 
  a21141:	62 73 7d 48 19 f0 02 	vextractf32x4 xmm0,zmm14,0x2
  a21148:	c5 f8 13 86 10 01 00 	vmovlps QWORD PTR [rsi+0x110],xmm0
  a2114f:	00 
  a21150:	c5 7c 11 b6 f0 00 00 	vmovups YMMWORD PTR [rsi+0xf0],ymm14
  a21157:	00 
  a21158:	62 63 7d 48 19 d8 02 	vextractf32x4 xmm0,zmm27,0x2
  a2115f:	c5 f8 13 86 38 01 00 	vmovlps QWORD PTR [rsi+0x138],xmm0
  a21166:	00 
  a21167:	62 61 7c 28 11 9e 18 	vmovups YMMWORD PTR [rsi+0x118],ymm27
  a2116e:	01 00 00 
  a21171:	62 73 7d 48 19 e0 02 	vextractf32x4 xmm0,zmm12,0x2
  a21178:	c5 f8 13 86 60 01 00 	vmovlps QWORD PTR [rsi+0x160],xmm0
  a2117f:	00 
  a21180:	c5 7c 11 a6 40 01 00 	vmovups YMMWORD PTR [rsi+0x140],ymm12
  a21187:	00 
  a21188:	62 73 7d 48 19 c8 02 	vextractf32x4 xmm0,zmm9,0x2
  a2118f:	c5 f8 13 86 88 01 00 	vmovlps QWORD PTR [rsi+0x188],xmm0
  a21196:	00 
  a21197:	c5 7c 11 8e 68 01 00 	vmovups YMMWORD PTR [rsi+0x168],ymm9
  a2119e:	00 
  a2119f:	62 f3 7d 48 19 f8 02 	vextractf32x4 xmm0,zmm7,0x2
  a211a6:	c5 f8 13 86 b0 01 00 	vmovlps QWORD PTR [rsi+0x1b0],xmm0
  a211ad:	00 
  a211ae:	c5 fc 11 be 90 01 00 	vmovups YMMWORD PTR [rsi+0x190],ymm7
  a211b5:	00 
  a211b6:	62 f3 7d 48 19 e8 02 	vextractf32x4 xmm0,zmm5,0x2
  a211bd:	c5 f8 13 86 d8 01 00 	vmovlps QWORD PTR [rsi+0x1d8],xmm0
  a211c4:	00 
  a211c5:	c5 fc 11 ae b8 01 00 	vmovups YMMWORD PTR [rsi+0x1b8],ymm5
  a211cc:	00 
  a211cd:	62 f3 7d 48 19 d0 02 	vextractf32x4 xmm0,zmm2,0x2
  a211d4:	c5 f8 13 86 00 02 00 	vmovlps QWORD PTR [rsi+0x200],xmm0
  a211db:	00 
  a211dc:	c5 fc 11 96 e0 01 00 	vmovups YMMWORD PTR [rsi+0x1e0],ymm2
  a211e3:	00 
  a211e4:	62 f3 7d 48 19 f0 02 	vextractf32x4 xmm0,zmm6,0x2
  a211eb:	c5 f8 13 86 28 02 00 	vmovlps QWORD PTR [rsi+0x228],xmm0
  a211f2:	00 
  a211f3:	c5 fc 11 b6 08 02 00 	vmovups YMMWORD PTR [rsi+0x208],ymm6
  a211fa:	00 
  a211fb:	62 63 7d 48 19 f8 02 	vextractf32x4 xmm0,zmm31,0x2
  a21202:	c5 f8 13 86 50 02 00 	vmovlps QWORD PTR [rsi+0x250],xmm0
  a21209:	00 
  a2120a:	62 61 7c 28 11 be 30 	vmovups YMMWORD PTR [rsi+0x230],ymm31
  a21211:	02 00 00 
  a21214:	62 e3 7d 48 19 c0 02 	vextractf32x4 xmm0,zmm16,0x2
  a2121b:	c5 f8 13 86 78 02 00 	vmovlps QWORD PTR [rsi+0x278],xmm0
  a21222:	00 
  a21223:	62 e1 7c 28 11 86 58 	vmovups YMMWORD PTR [rsi+0x258],ymm16
  a2122a:	02 00 00 
  a2122d:	48 89 ec             	mov    rsp,rbp
  a21230:	5d                   	pop    rbp
  a21231:	c5 f8 77             	vzeroupper
  a21234:	c3                   	ret
