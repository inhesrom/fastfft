
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a394c0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a394c0:	62 f1 7c 48 28 05 b6 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff68dab6]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a394c7:	da 68 ff 
  a394ca:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  a394ce:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a394d2:	62 f2 7d 48 7f d2    	vpermt2ps zmm2,zmm0,zmm2
  a394d8:	62 f1 7c 48 28 1d 1e 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff68da1e]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a394df:	da 68 ff 
  a394e2:	62 f1 7c 48 28 e2    	vmovaps zmm4,zmm2
  a394e8:	62 f2 65 48 7f e2    	vpermt2ps zmm4,zmm3,zmm2
  a394ee:	62 f1 7c 48 28 2d 08 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff68d908]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a394f5:	d9 68 ff 
  a394f8:	62 f1 7c 48 28 35 3e 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff68d93e]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a394ff:	d9 68 ff 
  a39502:	48 c1 e2 04          	shl    rdx,0x4
  a39506:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  a3950a:	31 d2                	xor    edx,edx
  a3950c:	62 f1 7c 48 28 3d ea 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff657fea]        # 91500 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e9b0>
  a39513:	7f 65 ff 
  a39516:	62 71 7c 48 28 05 20 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff658020]        # 91540 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e9f0>
  a3951d:	80 65 ff 
  a39520:	62 72 7d 48 18 0d 36 	vbroadcastss zmm9,DWORD PTR [rip+0xffffffffff63bf36]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a39527:	bf 63 ff 
  a3952a:	c4 62 79 18 15 a1 bd 	vbroadcastss xmm10,DWORD PTR [rip+0xffffffffff63bda1]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a39531:	63 ff 
  a39533:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  a3953a:	84 00 00 00 00 00 
  a39540:	c5 7b 10 5c 17 10    	vmovsd xmm11,QWORD PTR [rdi+rdx*1+0x10]
  a39546:	c5 78 10 24 17       	vmovups xmm12,XMMWORD PTR [rdi+rdx*1]
  a3954b:	c5 78 10 6c 17 18    	vmovups xmm13,XMMWORD PTR [rdi+rdx*1+0x18]
  a39551:	62 53 1d 48 18 db 01 	vinsertf32x4 zmm11,zmm12,xmm11,0x1
  a39558:	62 51 7c 48 28 e3    	vmovaps zmm12,zmm11
  a3955e:	62 72 45 48 7f e1    	vpermt2ps zmm12,zmm7,zmm1
  a39564:	62 72 3d 48 7f d9    	vpermt2ps zmm11,zmm8,zmm1
  a3956a:	c5 7b 10 74 17 28    	vmovsd xmm14,QWORD PTR [rdi+rdx*1+0x28]
  a39570:	62 53 15 48 18 ee 01 	vinsertf32x4 zmm13,zmm13,xmm14,0x1
  a39577:	62 51 7c 48 28 f5    	vmovaps zmm14,zmm13
  a3957d:	62 72 45 48 7f f1    	vpermt2ps zmm14,zmm7,zmm1
  a39583:	62 72 3d 48 7f e9    	vpermt2ps zmm13,zmm8,zmm1
  a39589:	62 51 1c 48 58 fe    	vaddps zmm15,zmm12,zmm14
  a3958f:	62 c1 24 48 58 c5    	vaddps zmm16,zmm11,zmm13
  a39595:	62 51 1c 48 5c e6    	vsubps zmm12,zmm12,zmm14
  a3959b:	62 51 24 48 5c dd    	vsubps zmm11,zmm11,zmm13
  a395a1:	62 72 7d 48 7f f9    	vpermt2ps zmm15,zmm0,zmm1
  a395a7:	62 72 7d 48 7f e1    	vpermt2ps zmm12,zmm0,zmm1
  a395ad:	62 72 65 48 7f fa    	vpermt2ps zmm15,zmm3,zmm2
  a395b3:	62 72 65 48 7f e2    	vpermt2ps zmm12,zmm3,zmm2
  a395b9:	62 71 85 48 14 ec    	vunpcklpd zmm13,zmm15,zmm4
  a395bf:	62 71 85 48 15 f4    	vunpckhpd zmm14,zmm15,zmm4
  a395c5:	62 71 9d 48 14 fc    	vunpcklpd zmm15,zmm12,zmm4
  a395cb:	62 71 9d 48 15 e4    	vunpckhpd zmm12,zmm12,zmm4
  a395d1:	62 c1 7c 48 28 cd    	vmovaps zmm17,zmm13
  a395d7:	62 c2 55 48 7f cf    	vpermt2ps zmm17,zmm5,zmm15
  a395dd:	62 52 4d 48 7f ef    	vpermt2ps zmm13,zmm6,zmm15
  a395e3:	62 52 55 48 7f f4    	vpermt2ps zmm14,zmm5,zmm12
  a395e9:	62 e2 7d 48 7f c1    	vpermt2ps zmm16,zmm0,zmm1
  a395ef:	62 72 7d 48 7f d9    	vpermt2ps zmm11,zmm0,zmm1
  a395f5:	62 e2 65 48 7f c2    	vpermt2ps zmm16,zmm3,zmm2
  a395fb:	62 72 65 48 7f da    	vpermt2ps zmm11,zmm3,zmm2
  a39601:	62 71 fd 40 14 e4    	vunpcklpd zmm12,zmm16,zmm4
  a39607:	62 71 fd 40 15 fc    	vunpckhpd zmm15,zmm16,zmm4
  a3960d:	62 e1 a5 48 14 c4    	vunpcklpd zmm16,zmm11,zmm4
  a39613:	62 71 a5 48 15 dc    	vunpckhpd zmm11,zmm11,zmm4
  a39619:	62 c1 7c 48 28 d4    	vmovaps zmm18,zmm12
  a3961f:	62 a2 55 48 7f d0    	vpermt2ps zmm18,zmm5,zmm16
  a39625:	62 32 4d 48 7f e0    	vpermt2ps zmm12,zmm6,zmm16
  a3962b:	62 52 55 48 7f fb    	vpermt2ps zmm15,zmm5,zmm11
  a39631:	62 71 7c 48 10 59 02 	vmovups zmm11,ZMMWORD PTR [rcx+0x80]
  a39638:	62 e1 7c 48 10 41 03 	vmovups zmm16,ZMMWORD PTR [rcx+0xc0]
  a3963f:	62 e1 7c 48 10 59 04 	vmovups zmm19,ZMMWORD PTR [rcx+0x100]
  a39646:	62 e1 7c 48 10 61 05 	vmovups zmm20,ZMMWORD PTR [rcx+0x140]
  a3964d:	62 c1 14 48 59 eb    	vmulps zmm21,zmm13,zmm11
  a39653:	62 a2 1d 48 bc e8    	vfnmadd231ps zmm21,zmm12,zmm16
  a39659:	62 a1 0c 48 59 f3    	vmulps zmm22,zmm14,zmm19
  a3965f:	62 a2 05 48 bc f4    	vfnmadd231ps zmm22,zmm15,zmm20
  a39665:	62 a1 54 40 58 fe    	vaddps zmm23,zmm21,zmm22
  a3966b:	62 51 1c 48 59 db    	vmulps zmm11,zmm12,zmm11
  a39671:	62 52 7d 40 b8 dd    	vfmadd231ps zmm11,zmm16,zmm13
  a39677:	62 31 04 48 59 e3    	vmulps zmm12,zmm15,zmm19
  a3967d:	62 52 5d 40 b8 e6    	vfmadd231ps zmm12,zmm20,zmm14
  a39683:	62 51 24 48 58 ec    	vaddps zmm13,zmm11,zmm12
  a39689:	62 51 7c 48 28 f1    	vmovaps zmm14,zmm9
  a3968f:	62 32 45 40 ac f1    	vfnmadd213ps zmm14,zmm23,zmm17
  a39695:	62 51 7c 48 28 f9    	vmovaps zmm15,zmm9
  a3969b:	62 32 15 48 ac fa    	vfnmadd213ps zmm15,zmm13,zmm18
  a396a1:	62 51 6c 00 58 ed    	vaddps xmm13,xmm18,xmm13
  a396a7:	62 a1 74 00 58 c7    	vaddps xmm16,xmm17,xmm23
  a396ad:	62 51 7c 00 14 ed    	vunpcklps xmm13,xmm16,xmm13
  a396b3:	c5 78 11 2c 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm13
  a396b8:	62 31 54 00 5c ee    	vsubps xmm13,xmm21,xmm22
  a396be:	c4 41 10 59 ea       	vmulps xmm13,xmm13,xmm10
  a396c3:	62 c1 04 08 5c c5    	vsubps xmm16,xmm15,xmm13
  a396c9:	c4 41 20 5c dc       	vsubps xmm11,xmm11,xmm12
  a396ce:	c4 41 20 59 da       	vmulps xmm11,xmm11,xmm10
  a396d3:	c4 41 08 58 e3       	vaddps xmm12,xmm14,xmm11
  a396d8:	62 31 1c 08 14 e0    	vunpcklps xmm12,xmm12,xmm16
  a396de:	c5 78 11 64 16 10    	vmovups XMMWORD PTR [rsi+rdx*1+0x10],xmm12
  a396e4:	c4 41 00 58 e5       	vaddps xmm12,xmm15,xmm13
  a396e9:	c4 41 08 5c db       	vsubps xmm11,xmm14,xmm11
  a396ee:	c4 41 20 14 dc       	vunpcklps xmm11,xmm11,xmm12
  a396f3:	c5 78 11 5c 16 20    	vmovups XMMWORD PTR [rsi+rdx*1+0x20],xmm11
  a396f9:	48 83 c2 30          	add    rdx,0x30
  a396fd:	48 39 d0             	cmp    rax,rdx
  a39700:	0f 85 3a fe ff ff    	jne    a39540 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x80>
  a39706:	c5 f8 77             	vzeroupper
  a39709:	c3                   	ret
