
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a50240 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a50240:	62 f1 7c 48 28 05 36 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff676d36]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a50247:	6d 67 ff 
  a5024a:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  a5024e:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a50252:	62 f2 7d 48 7f d2    	vpermt2ps zmm2,zmm0,zmm2
  a50258:	62 f1 7c 48 28 1d 9e 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff676c9e]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a5025f:	6c 67 ff 
  a50262:	62 f1 7c 48 28 25 94 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff676b94]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a50269:	6b 67 ff 
  a5026c:	62 f1 7c 48 28 2d ca 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff676bca]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a50273:	6b 67 ff 
  a50276:	48 c1 e2 06          	shl    rdx,0x6
  a5027a:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  a5027e:	31 d2                	xor    edx,edx
  a50280:	62 f1 7c 48 28 35 36 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff642836]        # 92ac0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1ff70>
  a50287:	28 64 ff 
  a5028a:	62 f2 7d 48 18 3d cc 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff6251cc]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a50291:	51 62 ff 
  a50294:	62 71 7c 48 28 05 62 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff642862]        # 92b00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1ffb0>
  a5029b:	28 64 ff 
  a5029e:	62 72 7d 48 18 0d 2c 	vbroadcastss zmm9,DWORD PTR [rip+0xffffffffff62502c]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a502a5:	50 62 ff 
  a502a8:	62 71 7c 48 28 15 8e 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff64288e]        # 92b40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1fff0>
  a502af:	28 64 ff 
  a502b2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  a502b9:	1f 84 00 00 00 00 00 
  a502c0:	c5 7c 10 1c 17       	vmovups ymm11,YMMWORD PTR [rdi+rdx*1]
  a502c5:	c5 7c 10 74 17 20    	vmovups ymm14,YMMWORD PTR [rdi+rdx*1+0x20]
  a502cb:	c5 7c 10 7c 17 40    	vmovups ymm15,YMMWORD PTR [rdi+rdx*1+0x40]
  a502d1:	c5 7c 10 64 17 60    	vmovups ymm12,YMMWORD PTR [rdi+rdx*1+0x60]
  a502d7:	62 51 7c 48 28 eb    	vmovaps zmm13,zmm11
  a502dd:	62 72 4d 48 7f e9    	vpermt2ps zmm13,zmm6,zmm1
  a502e3:	62 72 3d 48 7f d9    	vpermt2ps zmm11,zmm8,zmm1
  a502e9:	62 c1 7c 48 28 c6    	vmovaps zmm16,zmm14
  a502ef:	62 e2 4d 48 7f c1    	vpermt2ps zmm16,zmm6,zmm1
  a502f5:	62 72 3d 48 7f f1    	vpermt2ps zmm14,zmm8,zmm1
  a502fb:	62 c1 7c 48 28 cf    	vmovaps zmm17,zmm15
  a50301:	62 e2 4d 48 7f c9    	vpermt2ps zmm17,zmm6,zmm1
  a50307:	62 72 3d 48 7f f9    	vpermt2ps zmm15,zmm8,zmm1
  a5030d:	62 c1 7c 48 28 d4    	vmovaps zmm18,zmm12
  a50313:	62 e2 4d 48 7f d1    	vpermt2ps zmm18,zmm6,zmm1
  a50319:	62 e1 7c 28 10 5c 17 	vmovups ymm19,YMMWORD PTR [rdi+rdx*1+0x80]
  a50320:	04 
  a50321:	62 a1 7c 48 28 e3    	vmovaps zmm20,zmm19
  a50327:	62 e2 4d 48 7f e1    	vpermt2ps zmm20,zmm6,zmm1
  a5032d:	62 e2 3d 48 7f d9    	vpermt2ps zmm19,zmm8,zmm1
  a50333:	62 e1 7c 28 10 6c 17 	vmovups ymm21,YMMWORD PTR [rdi+rdx*1+0xa0]
  a5033a:	05 
  a5033b:	62 a1 7c 48 28 f5    	vmovaps zmm22,zmm21
  a50341:	62 e2 4d 48 7f f1    	vpermt2ps zmm22,zmm6,zmm1
  a50347:	62 e2 3d 48 7f e9    	vpermt2ps zmm21,zmm8,zmm1
  a5034d:	62 a1 74 40 58 fc    	vaddps zmm23,zmm17,zmm20
  a50353:	62 21 14 48 58 c7    	vaddps zmm24,zmm13,zmm23
  a50359:	62 21 4c 40 58 c8    	vaddps zmm25,zmm22,zmm16
  a5035f:	62 32 45 48 bc ef    	vfnmadd231ps zmm13,zmm7,zmm23
  a50365:	62 a1 04 48 58 fb    	vaddps zmm23,zmm15,zmm19
  a5036b:	62 31 04 48 5c fb    	vsubps zmm15,zmm15,zmm19
  a50371:	62 81 6c 40 58 d9    	vaddps zmm19,zmm18,zmm25
  a50377:	62 82 45 48 bc d1    	vfnmadd231ps zmm18,zmm7,zmm25
  a5037d:	62 41 54 40 58 ce    	vaddps zmm25,zmm21,zmm14
  a50383:	62 51 54 40 5c f6    	vsubps zmm14,zmm21,zmm14
  a50389:	62 a1 24 48 58 ef    	vaddps zmm21,zmm11,zmm23
  a5038f:	62 32 45 48 bc df    	vfnmadd231ps zmm11,zmm7,zmm23
  a50395:	62 72 3d 48 7f e1    	vpermt2ps zmm12,zmm8,zmm1
  a5039b:	62 a1 74 40 5c cc    	vsubps zmm17,zmm17,zmm20
  a503a1:	62 81 1c 48 58 e1    	vaddps zmm20,zmm12,zmm25
  a503a7:	62 12 45 48 bc e1    	vfnmadd231ps zmm12,zmm7,zmm25
  a503ad:	62 51 04 48 59 f9    	vmulps zmm15,zmm15,zmm9
  a503b3:	62 a1 4c 40 5c c0    	vsubps zmm16,zmm22,zmm16
  a503b9:	62 c1 14 48 58 f7    	vaddps zmm22,zmm13,zmm15
  a503bf:	62 51 0c 48 59 f1    	vmulps zmm14,zmm14,zmm9
  a503c5:	62 51 14 48 5c ef    	vsubps zmm13,zmm13,zmm15
  a503cb:	62 51 6c 40 58 fe    	vaddps zmm15,zmm18,zmm14
  a503d1:	62 c1 74 40 59 c9    	vmulps zmm17,zmm17,zmm9
  a503d7:	62 51 6c 40 5c f6    	vsubps zmm14,zmm18,zmm14
  a503dd:	62 a1 24 48 5c d1    	vsubps zmm18,zmm11,zmm17
  a503e3:	62 c1 7c 40 59 c1    	vmulps zmm16,zmm16,zmm9
  a503e9:	62 51 74 40 58 db    	vaddps zmm11,zmm17,zmm11
  a503ef:	62 a1 1c 48 5c c8    	vsubps zmm17,zmm12,zmm16
  a503f5:	62 51 7c 40 58 e4    	vaddps zmm12,zmm16,zmm12
  a503fb:	62 a1 3c 40 58 c3    	vaddps zmm16,zmm24,zmm19
  a50401:	62 a1 3c 40 5c db    	vsubps zmm19,zmm24,zmm19
  a50407:	62 a1 54 40 58 fc    	vaddps zmm23,zmm21,zmm20
  a5040d:	62 a1 54 40 5c e4    	vsubps zmm20,zmm21,zmm20
  a50413:	62 c1 4c 40 5c ef    	vsubps zmm21,zmm22,zmm15
  a50419:	62 51 4c 40 58 ff    	vaddps zmm15,zmm22,zmm15
  a5041f:	62 a1 6c 40 5c f1    	vsubps zmm22,zmm18,zmm17
  a50425:	62 a1 6c 40 58 c9    	vaddps zmm17,zmm18,zmm17
  a5042b:	62 c1 14 48 58 d6    	vaddps zmm18,zmm13,zmm14
  a50431:	62 51 14 48 5c ee    	vsubps zmm13,zmm13,zmm14
  a50437:	62 41 24 48 58 c4    	vaddps zmm24,zmm11,zmm12
  a5043d:	62 41 24 48 5c cc    	vsubps zmm25,zmm11,zmm12
  a50443:	62 e2 7d 48 7f c1    	vpermt2ps zmm16,zmm0,zmm1
  a50449:	62 e2 7d 48 7f e9    	vpermt2ps zmm21,zmm0,zmm1
  a5044f:	62 e2 7d 48 7f d1    	vpermt2ps zmm18,zmm0,zmm1
  a50455:	62 e2 7d 48 7f d9    	vpermt2ps zmm19,zmm0,zmm1
  a5045b:	62 72 7d 48 7f f9    	vpermt2ps zmm15,zmm0,zmm1
  a50461:	62 72 7d 48 7f e9    	vpermt2ps zmm13,zmm0,zmm1
  a50467:	62 c2 65 48 7f c7    	vpermt2ps zmm16,zmm3,zmm15
  a5046d:	62 c2 65 48 7f ed    	vpermt2ps zmm21,zmm3,zmm13
  a50473:	62 e2 65 48 7f d2    	vpermt2ps zmm18,zmm3,zmm2
  a50479:	62 e2 65 48 7f da    	vpermt2ps zmm19,zmm3,zmm2
  a5047f:	62 31 fd 40 14 f2    	vunpcklpd zmm14,zmm16,zmm18
  a50485:	62 31 fd 40 15 ea    	vunpckhpd zmm13,zmm16,zmm18
  a5048b:	62 31 d5 40 14 e3    	vunpcklpd zmm12,zmm21,zmm19
  a50491:	62 31 d5 40 15 fb    	vunpckhpd zmm15,zmm21,zmm19
  a50497:	62 51 7c 48 28 de    	vmovaps zmm11,zmm14
  a5049d:	62 52 55 48 7f f4    	vpermt2ps zmm14,zmm5,zmm12
  a504a3:	62 c1 7c 48 28 c5    	vmovaps zmm16,zmm13
  a504a9:	62 c2 5d 48 7f c7    	vpermt2ps zmm16,zmm4,zmm15
  a504af:	62 52 55 48 7f ef    	vpermt2ps zmm13,zmm5,zmm15
  a504b5:	62 e2 7d 48 7f f9    	vpermt2ps zmm23,zmm0,zmm1
  a504bb:	62 e2 7d 48 7f f1    	vpermt2ps zmm22,zmm0,zmm1
  a504c1:	62 62 7d 48 7f c1    	vpermt2ps zmm24,zmm0,zmm1
  a504c7:	62 e2 7d 48 7f e1    	vpermt2ps zmm20,zmm0,zmm1
  a504cd:	62 e2 7d 48 7f c9    	vpermt2ps zmm17,zmm0,zmm1
  a504d3:	62 62 7d 48 7f c9    	vpermt2ps zmm25,zmm0,zmm1
  a504d9:	62 a2 65 48 7f f9    	vpermt2ps zmm23,zmm3,zmm17
  a504df:	62 82 65 48 7f f1    	vpermt2ps zmm22,zmm3,zmm25
  a504e5:	62 62 65 48 7f c2    	vpermt2ps zmm24,zmm3,zmm2
  a504eb:	62 e2 65 48 7f e2    	vpermt2ps zmm20,zmm3,zmm2
  a504f1:	62 11 c5 40 14 f8    	vunpcklpd zmm15,zmm23,zmm24
  a504f7:	62 81 c5 40 15 c8    	vunpckhpd zmm17,zmm23,zmm24
  a504fd:	62 a1 cd 40 14 d4    	vunpcklpd zmm18,zmm22,zmm20
  a50503:	62 a1 cd 40 15 dc    	vunpckhpd zmm19,zmm22,zmm20
  a50509:	62 c1 7c 48 28 e7    	vmovaps zmm20,zmm15
  a5050f:	62 32 55 48 7f fa    	vpermt2ps zmm15,zmm5,zmm18
  a50515:	62 a1 7c 48 28 e9    	vmovaps zmm21,zmm17
  a5051b:	62 a2 5d 48 7f eb    	vpermt2ps zmm21,zmm4,zmm19
  a50521:	62 a2 55 48 7f cb    	vpermt2ps zmm17,zmm5,zmm19
  a50527:	62 e1 7c 48 10 59 04 	vmovups zmm19,ZMMWORD PTR [rcx+0x100]
  a5052e:	62 e1 7c 48 10 71 05 	vmovups zmm22,ZMMWORD PTR [rcx+0x140]
  a50535:	62 a1 7c 40 59 fb    	vmulps zmm23,zmm16,zmm19
  a5053b:	62 a2 55 40 bc fe    	vfnmadd231ps zmm23,zmm21,zmm22
  a50541:	62 a1 54 40 59 db    	vmulps zmm19,zmm21,zmm19
  a50547:	62 e1 7c 48 10 69 02 	vmovups zmm21,ZMMWORD PTR [rcx+0x80]
  a5054e:	62 a2 4d 40 b8 d8    	vfmadd231ps zmm19,zmm22,zmm16
  a50554:	62 e1 7c 48 10 41 03 	vmovups zmm16,ZMMWORD PTR [rcx+0xc0]
  a5055b:	62 a1 0c 48 59 f5    	vmulps zmm22,zmm14,zmm21
  a50561:	62 a2 05 48 bc f0    	vfnmadd231ps zmm22,zmm15,zmm16
  a50567:	62 31 04 48 59 fd    	vmulps zmm15,zmm15,zmm21
  a5056d:	62 e1 7c 48 10 69 06 	vmovups zmm21,ZMMWORD PTR [rcx+0x180]
  a50574:	62 52 7d 40 b8 fe    	vfmadd231ps zmm15,zmm16,zmm14
  a5057a:	62 71 7c 48 10 71 07 	vmovups zmm14,ZMMWORD PTR [rcx+0x1c0]
  a50581:	62 a1 14 48 59 c5    	vmulps zmm16,zmm13,zmm21
  a50587:	62 c2 75 40 bc c6    	vfnmadd231ps zmm16,zmm17,zmm14
  a5058d:	62 a1 74 40 59 cd    	vmulps zmm17,zmm17,zmm21
  a50593:	62 c2 0d 48 b8 cd    	vfmadd231ps zmm17,zmm14,zmm13
  a50599:	62 52 5d 48 7f dc    	vpermt2ps zmm11,zmm4,zmm12
  a5059f:	62 a2 5d 48 7f e2    	vpermt2ps zmm20,zmm4,zmm18
  a505a5:	62 31 24 48 58 e7    	vaddps zmm12,zmm11,zmm23
  a505ab:	62 31 24 48 5c df    	vsubps zmm11,zmm11,zmm23
  a505b1:	62 31 04 48 58 e9    	vaddps zmm13,zmm15,zmm17
  a505b7:	62 31 04 48 5c f1    	vsubps zmm14,zmm15,zmm17
  a505bd:	62 31 64 40 58 fc    	vaddps zmm15,zmm19,zmm20
  a505c3:	62 a1 5c 40 5c cb    	vsubps zmm17,zmm20,zmm19
  a505c9:	62 a1 4c 40 58 d0    	vaddps zmm18,zmm22,zmm16
  a505cf:	62 a1 7c 40 5c c6    	vsubps zmm16,zmm16,zmm22
  a505d5:	62 c1 24 48 58 de    	vaddps zmm19,zmm11,zmm14
  a505db:	62 51 24 48 5c de    	vsubps zmm11,zmm11,zmm14
  a505e1:	62 31 74 40 58 f0    	vaddps zmm14,zmm17,zmm16
  a505e7:	62 a1 74 40 5c c0    	vsubps zmm16,zmm17,zmm16
  a505ed:	62 a1 1c 48 5c ca    	vsubps zmm17,zmm12,zmm18
  a505f3:	62 31 1c 48 58 e2    	vaddps zmm12,zmm12,zmm18
  a505f9:	62 c1 04 48 5c d5    	vsubps zmm18,zmm15,zmm13
  a505ff:	62 51 04 48 58 ed    	vaddps zmm13,zmm15,zmm13
  a50605:	62 52 2d 48 7f e5    	vpermt2ps zmm12,zmm10,zmm13
  a5060b:	62 73 7d 48 19 64 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x20],zmm12,0x2
  a50612:	02 02 
  a50614:	c5 7c 11 24 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm12
  a50619:	62 c2 2d 48 7f de    	vpermt2ps zmm19,zmm10,zmm14
  a5061f:	62 e3 7d 48 19 5c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x50],zmm19,0x2
  a50626:	05 02 
  a50628:	62 e1 7c 28 11 9c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x30],ymm19
  a5062f:	30 00 00 00 
  a50633:	62 a2 2d 48 7f ca    	vpermt2ps zmm17,zmm10,zmm18
  a50639:	62 e3 7d 48 19 4c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x80],zmm17,0x2
  a50640:	08 02 
  a50642:	62 e1 7c 28 11 4c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm17
  a50649:	03 
  a5064a:	62 32 2d 48 7f d8    	vpermt2ps zmm11,zmm10,zmm16
  a50650:	62 73 7d 48 19 5c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xb0],zmm11,0x2
  a50657:	0b 02 
  a50659:	c5 7c 11 9c 16 90 00 	vmovups YMMWORD PTR [rsi+rdx*1+0x90],ymm11
  a50660:	00 00 
  a50662:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  a50669:	48 39 d0             	cmp    rax,rdx
  a5066c:	0f 85 4e fc ff ff    	jne    a502c0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x80>
  a50672:	c5 f8 77             	vzeroupper
  a50675:	c3                   	ret
