
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a065c0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a065c0:	62 f1 7c 48 28 05 b6 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6c09b6]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a065c7:	09 6c ff 
  a065ca:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  a065ce:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a065d2:	62 f2 7d 48 7f d2    	vpermt2ps zmm2,zmm0,zmm2
  a065d8:	62 f1 7c 48 28 1d 1e 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff6c091e]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a065df:	09 6c ff 
  a065e2:	62 f1 7c 48 28 25 14 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff6c0814]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a065e9:	08 6c ff 
  a065ec:	62 f1 7c 48 28 2d 4a 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff6c084a]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a065f3:	08 6c ff 
  a065f6:	48 c1 e2 06          	shl    rdx,0x6
  a065fa:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  a065fe:	31 d2                	xor    edx,edx
  a06600:	62 f1 7c 48 28 35 76 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff687f76]        # 8e580 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1ba30>
  a06607:	7f 68 ff 
  a0660a:	62 f2 7d 48 18 3d 4c 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff66ee4c]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a06611:	ee 66 ff 
  a06614:	62 71 7c 48 28 05 a2 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff687fa2]        # 8e5c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1ba70>
  a0661b:	7f 68 ff 
  a0661e:	62 72 7d 48 18 0d ac 	vbroadcastss zmm9,DWORD PTR [rip+0xffffffffff66ecac]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a06625:	ec 66 ff 
  a06628:	62 71 7c 48 28 15 ce 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff687fce]        # 8e600 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1bab0>
  a0662f:	7f 68 ff 
  a06632:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  a06639:	1f 84 00 00 00 00 00 
  a06640:	c5 7c 10 24 17       	vmovups ymm12,YMMWORD PTR [rdi+rdx*1]
  a06645:	c5 7c 10 74 17 20    	vmovups ymm14,YMMWORD PTR [rdi+rdx*1+0x20]
  a0664b:	62 e1 7c 28 10 44 17 	vmovups ymm16,YMMWORD PTR [rdi+rdx*1+0x40]
  a06652:	02 
  a06653:	c5 7c 10 6c 17 60    	vmovups ymm13,YMMWORD PTR [rdi+rdx*1+0x60]
  a06659:	62 51 7c 48 28 dc    	vmovaps zmm11,zmm12
  a0665f:	62 72 4d 48 7f d9    	vpermt2ps zmm11,zmm6,zmm1
  a06665:	62 72 3d 48 7f e1    	vpermt2ps zmm12,zmm8,zmm1
  a0666b:	62 c1 7c 48 28 ce    	vmovaps zmm17,zmm14
  a06671:	62 e2 4d 48 7f c9    	vpermt2ps zmm17,zmm6,zmm1
  a06677:	62 72 3d 48 7f f1    	vpermt2ps zmm14,zmm8,zmm1
  a0667d:	62 a1 7c 48 28 d0    	vmovaps zmm18,zmm16
  a06683:	62 e2 4d 48 7f d1    	vpermt2ps zmm18,zmm6,zmm1
  a06689:	62 e2 3d 48 7f c1    	vpermt2ps zmm16,zmm8,zmm1
  a0668f:	62 51 7c 48 28 fd    	vmovaps zmm15,zmm13
  a06695:	62 72 3d 48 7f e9    	vpermt2ps zmm13,zmm8,zmm1
  a0669b:	62 e1 7c 28 10 5c 17 	vmovups ymm19,YMMWORD PTR [rdi+rdx*1+0x80]
  a066a2:	04 
  a066a3:	62 a1 7c 48 28 e3    	vmovaps zmm20,zmm19
  a066a9:	62 e2 4d 48 7f e1    	vpermt2ps zmm20,zmm6,zmm1
  a066af:	62 e2 3d 48 7f d9    	vpermt2ps zmm19,zmm8,zmm1
  a066b5:	62 e1 7c 28 10 6c 17 	vmovups ymm21,YMMWORD PTR [rdi+rdx*1+0xa0]
  a066bc:	05 
  a066bd:	62 a1 7c 48 28 f5    	vmovaps zmm22,zmm21
  a066c3:	62 e2 4d 48 7f f1    	vpermt2ps zmm22,zmm6,zmm1
  a066c9:	62 e2 3d 48 7f e9    	vpermt2ps zmm21,zmm8,zmm1
  a066cf:	62 a1 7c 40 58 fb    	vaddps zmm23,zmm16,zmm19
  a066d5:	62 21 1c 48 58 c7    	vaddps zmm24,zmm12,zmm23
  a066db:	62 41 54 40 58 ce    	vaddps zmm25,zmm21,zmm14
  a066e1:	62 32 45 48 bc e7    	vfnmadd231ps zmm12,zmm7,zmm23
  a066e7:	62 a1 6c 40 58 fc    	vaddps zmm23,zmm18,zmm20
  a066ed:	62 a1 6c 40 5c d4    	vsubps zmm18,zmm18,zmm20
  a066f3:	62 81 14 48 58 e1    	vaddps zmm20,zmm13,zmm25
  a066f9:	62 12 45 48 bc e9    	vfnmadd231ps zmm13,zmm7,zmm25
  a066ff:	62 21 4c 40 58 c9    	vaddps zmm25,zmm22,zmm17
  a06705:	62 a1 4c 40 5c c9    	vsubps zmm17,zmm22,zmm17
  a0670b:	62 a1 24 48 58 f7    	vaddps zmm22,zmm11,zmm23
  a06711:	62 32 45 48 bc df    	vfnmadd231ps zmm11,zmm7,zmm23
  a06717:	62 72 4d 48 7f f9    	vpermt2ps zmm15,zmm6,zmm1
  a0671d:	62 a1 7c 40 5c c3    	vsubps zmm16,zmm16,zmm19
  a06723:	62 81 04 48 58 d9    	vaddps zmm19,zmm15,zmm25
  a06729:	62 12 45 48 bc f9    	vfnmadd231ps zmm15,zmm7,zmm25
  a0672f:	62 c1 6c 40 59 d1    	vmulps zmm18,zmm18,zmm9
  a06735:	62 51 54 40 5c f6    	vsubps zmm14,zmm21,zmm14
  a0673b:	62 a1 1c 48 58 ea    	vaddps zmm21,zmm12,zmm18
  a06741:	62 c1 74 40 59 c9    	vmulps zmm17,zmm17,zmm9
  a06747:	62 31 1c 48 5c e2    	vsubps zmm12,zmm12,zmm18
  a0674d:	62 a1 14 48 58 d1    	vaddps zmm18,zmm13,zmm17
  a06753:	62 c1 7c 40 59 c1    	vmulps zmm16,zmm16,zmm9
  a06759:	62 31 14 48 5c e9    	vsubps zmm13,zmm13,zmm17
  a0675f:	62 a1 24 48 5c c8    	vsubps zmm17,zmm11,zmm16
  a06765:	62 51 0c 48 59 f1    	vmulps zmm14,zmm14,zmm9
  a0676b:	62 51 7c 40 58 db    	vaddps zmm11,zmm16,zmm11
  a06771:	62 c1 04 48 5c c6    	vsubps zmm16,zmm15,zmm14
  a06777:	62 51 0c 48 58 f7    	vaddps zmm14,zmm14,zmm15
  a0677d:	62 31 3c 40 58 fc    	vaddps zmm15,zmm24,zmm20
  a06783:	62 a1 3c 40 5c e4    	vsubps zmm20,zmm24,zmm20
  a06789:	62 a1 4c 40 58 fb    	vaddps zmm23,zmm22,zmm19
  a0678f:	62 a1 4c 40 5c db    	vsubps zmm19,zmm22,zmm19
  a06795:	62 a1 54 40 5c f2    	vsubps zmm22,zmm21,zmm18
  a0679b:	62 a1 54 40 58 d2    	vaddps zmm18,zmm21,zmm18
  a067a1:	62 a1 74 40 5c e8    	vsubps zmm21,zmm17,zmm16
  a067a7:	62 a1 74 40 58 c0    	vaddps zmm16,zmm17,zmm16
  a067ad:	62 c1 1c 48 58 cd    	vaddps zmm17,zmm12,zmm13
  a067b3:	62 51 1c 48 5c e5    	vsubps zmm12,zmm12,zmm13
  a067b9:	62 41 24 48 58 c6    	vaddps zmm24,zmm11,zmm14
  a067bf:	62 41 24 48 5c ce    	vsubps zmm25,zmm11,zmm14
  a067c5:	62 72 7d 48 7f f9    	vpermt2ps zmm15,zmm0,zmm1
  a067cb:	62 e2 7d 48 7f f1    	vpermt2ps zmm22,zmm0,zmm1
  a067d1:	62 e2 7d 48 7f c9    	vpermt2ps zmm17,zmm0,zmm1
  a067d7:	62 e2 7d 48 7f e1    	vpermt2ps zmm20,zmm0,zmm1
  a067dd:	62 e2 7d 48 7f d1    	vpermt2ps zmm18,zmm0,zmm1
  a067e3:	62 72 7d 48 7f e1    	vpermt2ps zmm12,zmm0,zmm1
  a067e9:	62 32 65 48 7f fa    	vpermt2ps zmm15,zmm3,zmm18
  a067ef:	62 c2 65 48 7f f4    	vpermt2ps zmm22,zmm3,zmm12
  a067f5:	62 e2 65 48 7f ca    	vpermt2ps zmm17,zmm3,zmm2
  a067fb:	62 e2 65 48 7f e2    	vpermt2ps zmm20,zmm3,zmm2
  a06801:	62 31 85 48 14 f1    	vunpcklpd zmm14,zmm15,zmm17
  a06807:	62 31 85 48 15 e9    	vunpckhpd zmm13,zmm15,zmm17
  a0680d:	62 31 cd 40 14 e4    	vunpcklpd zmm12,zmm22,zmm20
  a06813:	62 31 cd 40 15 fc    	vunpckhpd zmm15,zmm22,zmm20
  a06819:	62 51 7c 48 28 de    	vmovaps zmm11,zmm14
  a0681f:	62 52 55 48 7f f4    	vpermt2ps zmm14,zmm5,zmm12
  a06825:	62 c1 7c 48 28 cd    	vmovaps zmm17,zmm13
  a0682b:	62 c2 5d 48 7f cf    	vpermt2ps zmm17,zmm4,zmm15
  a06831:	62 52 55 48 7f ef    	vpermt2ps zmm13,zmm5,zmm15
  a06837:	62 e2 7d 48 7f f9    	vpermt2ps zmm23,zmm0,zmm1
  a0683d:	62 e2 7d 48 7f e9    	vpermt2ps zmm21,zmm0,zmm1
  a06843:	62 62 7d 48 7f c1    	vpermt2ps zmm24,zmm0,zmm1
  a06849:	62 e2 7d 48 7f d9    	vpermt2ps zmm19,zmm0,zmm1
  a0684f:	62 e2 7d 48 7f c1    	vpermt2ps zmm16,zmm0,zmm1
  a06855:	62 62 7d 48 7f c9    	vpermt2ps zmm25,zmm0,zmm1
  a0685b:	62 a2 65 48 7f f8    	vpermt2ps zmm23,zmm3,zmm16
  a06861:	62 82 65 48 7f e9    	vpermt2ps zmm21,zmm3,zmm25
  a06867:	62 62 65 48 7f c2    	vpermt2ps zmm24,zmm3,zmm2
  a0686d:	62 e2 65 48 7f da    	vpermt2ps zmm19,zmm3,zmm2
  a06873:	62 11 c5 40 14 f8    	vunpcklpd zmm15,zmm23,zmm24
  a06879:	62 81 c5 40 15 c0    	vunpckhpd zmm16,zmm23,zmm24
  a0687f:	62 a1 d5 40 14 d3    	vunpcklpd zmm18,zmm21,zmm19
  a06885:	62 a1 d5 40 15 db    	vunpckhpd zmm19,zmm21,zmm19
  a0688b:	62 c1 7c 48 28 e7    	vmovaps zmm20,zmm15
  a06891:	62 32 55 48 7f fa    	vpermt2ps zmm15,zmm5,zmm18
  a06897:	62 a1 7c 48 28 e8    	vmovaps zmm21,zmm16
  a0689d:	62 a2 5d 48 7f eb    	vpermt2ps zmm21,zmm4,zmm19
  a068a3:	62 a2 55 48 7f c3    	vpermt2ps zmm16,zmm5,zmm19
  a068a9:	62 e1 7c 48 10 59 04 	vmovups zmm19,ZMMWORD PTR [rcx+0x100]
  a068b0:	62 e1 7c 48 10 71 05 	vmovups zmm22,ZMMWORD PTR [rcx+0x140]
  a068b7:	62 a1 74 40 59 fb    	vmulps zmm23,zmm17,zmm19
  a068bd:	62 a2 55 40 bc fe    	vfnmadd231ps zmm23,zmm21,zmm22
  a068c3:	62 a1 54 40 59 db    	vmulps zmm19,zmm21,zmm19
  a068c9:	62 e1 7c 48 10 69 02 	vmovups zmm21,ZMMWORD PTR [rcx+0x80]
  a068d0:	62 a2 4d 40 b8 d9    	vfmadd231ps zmm19,zmm22,zmm17
  a068d6:	62 e1 7c 48 10 49 03 	vmovups zmm17,ZMMWORD PTR [rcx+0xc0]
  a068dd:	62 a1 0c 48 59 f5    	vmulps zmm22,zmm14,zmm21
  a068e3:	62 a2 05 48 bc f1    	vfnmadd231ps zmm22,zmm15,zmm17
  a068e9:	62 31 04 48 59 fd    	vmulps zmm15,zmm15,zmm21
  a068ef:	62 e1 7c 48 10 69 06 	vmovups zmm21,ZMMWORD PTR [rcx+0x180]
  a068f6:	62 52 75 40 b8 fe    	vfmadd231ps zmm15,zmm17,zmm14
  a068fc:	62 71 7c 48 10 71 07 	vmovups zmm14,ZMMWORD PTR [rcx+0x1c0]
  a06903:	62 a1 14 48 59 cd    	vmulps zmm17,zmm13,zmm21
  a06909:	62 c2 7d 40 bc ce    	vfnmadd231ps zmm17,zmm16,zmm14
  a0690f:	62 a1 7c 40 59 c5    	vmulps zmm16,zmm16,zmm21
  a06915:	62 c2 0d 48 b8 c5    	vfmadd231ps zmm16,zmm14,zmm13
  a0691b:	62 52 5d 48 7f dc    	vpermt2ps zmm11,zmm4,zmm12
  a06921:	62 a2 5d 48 7f e2    	vpermt2ps zmm20,zmm4,zmm18
  a06927:	62 31 24 48 58 e7    	vaddps zmm12,zmm11,zmm23
  a0692d:	62 31 24 48 5c df    	vsubps zmm11,zmm11,zmm23
  a06933:	62 31 04 48 58 e8    	vaddps zmm13,zmm15,zmm16
  a06939:	62 31 04 48 5c f0    	vsubps zmm14,zmm15,zmm16
  a0693f:	62 31 64 40 58 fc    	vaddps zmm15,zmm19,zmm20
  a06945:	62 a1 5c 40 5c c3    	vsubps zmm16,zmm20,zmm19
  a0694b:	62 a1 4c 40 58 d1    	vaddps zmm18,zmm22,zmm17
  a06951:	62 a1 74 40 5c ce    	vsubps zmm17,zmm17,zmm22
  a06957:	62 c1 24 48 58 de    	vaddps zmm19,zmm11,zmm14
  a0695d:	62 51 24 48 5c de    	vsubps zmm11,zmm11,zmm14
  a06963:	62 31 7c 40 58 f1    	vaddps zmm14,zmm16,zmm17
  a06969:	62 a1 7c 40 5c c1    	vsubps zmm16,zmm16,zmm17
  a0696f:	62 c1 04 48 5c cd    	vsubps zmm17,zmm15,zmm13
  a06975:	62 51 04 48 58 ed    	vaddps zmm13,zmm15,zmm13
  a0697b:	62 31 1c 48 5c fa    	vsubps zmm15,zmm12,zmm18
  a06981:	62 31 1c 48 58 e2    	vaddps zmm12,zmm12,zmm18
  a06987:	62 52 2d 48 7f ec    	vpermt2ps zmm13,zmm10,zmm12
  a0698d:	62 73 7d 48 19 6c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x20],zmm13,0x2
  a06994:	02 02 
  a06996:	c5 7c 11 2c 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm13
  a0699b:	62 32 2d 48 7f f3    	vpermt2ps zmm14,zmm10,zmm19
  a069a1:	62 73 7d 48 19 74 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x50],zmm14,0x2
  a069a8:	05 02 
  a069aa:	c5 7c 11 74 16 30    	vmovups YMMWORD PTR [rsi+rdx*1+0x30],ymm14
  a069b0:	62 c2 2d 48 7f cf    	vpermt2ps zmm17,zmm10,zmm15
  a069b6:	62 e3 7d 48 19 4c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x80],zmm17,0x2
  a069bd:	08 02 
  a069bf:	62 e1 7c 28 11 4c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm17
  a069c6:	03 
  a069c7:	62 c2 2d 48 7f c3    	vpermt2ps zmm16,zmm10,zmm11
  a069cd:	62 e3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xb0],zmm16,0x2
  a069d4:	0b 02 
  a069d6:	62 e1 7c 28 11 84 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x90],ymm16
  a069dd:	90 00 00 00 
  a069e1:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  a069e8:	48 39 d0             	cmp    rax,rdx
  a069eb:	0f 85 4f fc ff ff    	jne    a06640 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x80>
  a069f1:	c5 f8 77             	vzeroupper
  a069f4:	c3                   	ret
