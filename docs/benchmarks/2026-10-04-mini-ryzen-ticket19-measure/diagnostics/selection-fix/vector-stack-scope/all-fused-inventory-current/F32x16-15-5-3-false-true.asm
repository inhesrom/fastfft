
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a13680 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a13680:	62 f1 7c 48 28 05 f6 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6b38f6]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a13687:	38 6b ff 
  a1368a:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  a1368e:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a13692:	62 f2 7d 48 7f d2    	vpermt2ps zmm2,zmm0,zmm2
  a13698:	62 f1 7c 48 28 1d 5e 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff6b385e]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a1369f:	38 6b ff 
  a136a2:	62 f1 7c 48 28 25 54 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff6b3754]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a136a9:	37 6b ff 
  a136ac:	62 f1 7c 48 28 2d 8a 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff6b378a]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a136b3:	37 6b ff 
  a136b6:	48 6b c2 78          	imul   rax,rdx,0x78
  a136ba:	31 d2                	xor    edx,edx
  a136bc:	62 f1 7c 48 28 35 3a 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff67ba3a]        # 8f100 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c5b0>
  a136c3:	ba 67 ff 
  a136c6:	62 f2 7d 48 18 3d 18 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff662018]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a136cd:	20 66 ff 
  a136d0:	62 72 7d 48 18 05 6a 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff661f6a]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a136d7:	1f 66 ff 
  a136da:	62 72 7d 48 18 0d 74 	vbroadcastss zmm9,DWORD PTR [rip+0xffffffffff662074]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a136e1:	20 66 ff 
  a136e4:	62 72 7d 48 18 15 b2 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff661cb2]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a136eb:	1c 66 ff 
  a136ee:	62 72 7d 48 18 1d 68 	vbroadcastss zmm11,DWORD PTR [rip+0xffffffffff661d68]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a136f5:	1d 66 ff 
  a136f8:	62 71 7c 48 28 25 3e 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff67ba3e]        # 8f140 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c5f0>
  a136ff:	ba 67 ff 
  a13702:	62 72 7d 48 18 2d c8 	vbroadcastss zmm13,DWORD PTR [rip+0xffffffffff661bc8]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a13709:	1b 66 ff 
  a1370c:	62 71 7c 48 28 35 6a 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff67ba6a]        # 8f180 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c630>
  a13713:	ba 67 ff 
  a13716:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  a1371d:	00 00 00 
  a13720:	c5 7b 10 7c 17 10    	vmovsd xmm15,QWORD PTR [rdi+rdx*1+0x10]
  a13726:	62 e1 7c 08 10 04 17 	vmovups xmm16,XMMWORD PTR [rdi+rdx*1]
  a1372d:	62 e1 7c 08 10 8c 17 	vmovups xmm17,XMMWORD PTR [rdi+rdx*1+0x18]
  a13734:	18 00 00 00 
  a13738:	62 e1 7c 08 10 54 17 	vmovups xmm18,XMMWORD PTR [rdi+rdx*1+0x30]
  a1373f:	03 
  a13740:	62 e1 7c 08 10 9c 17 	vmovups xmm19,XMMWORD PTR [rdi+rdx*1+0x48]
  a13747:	48 00 00 00 
  a1374b:	62 53 7d 40 18 ff 01 	vinsertf32x4 zmm15,zmm16,xmm15,0x1
  a13752:	62 c1 7c 48 28 c7    	vmovaps zmm16,zmm15
  a13758:	62 e2 4d 48 7f c1    	vpermt2ps zmm16,zmm6,zmm1
  a1375e:	62 72 1d 48 7f f9    	vpermt2ps zmm15,zmm12,zmm1
  a13764:	62 e1 ff 08 10 64 17 	vmovsd xmm20,QWORD PTR [rdi+rdx*1+0x28]
  a1376b:	05 
  a1376c:	62 a3 75 40 18 cc 01 	vinsertf32x4 zmm17,zmm17,xmm20,0x1
  a13773:	62 a1 7c 48 28 e1    	vmovaps zmm20,zmm17
  a13779:	62 e2 4d 48 7f e1    	vpermt2ps zmm20,zmm6,zmm1
  a1377f:	62 e2 1d 48 7f c9    	vpermt2ps zmm17,zmm12,zmm1
  a13785:	62 e1 ff 08 10 6c 17 	vmovsd xmm21,QWORD PTR [rdi+rdx*1+0x40]
  a1378c:	08 
  a1378d:	62 a3 6d 40 18 d5 01 	vinsertf32x4 zmm18,zmm18,xmm21,0x1
  a13794:	62 a1 7c 48 28 ea    	vmovaps zmm21,zmm18
  a1379a:	62 e2 4d 48 7f e9    	vpermt2ps zmm21,zmm6,zmm1
  a137a0:	62 e2 1d 48 7f d1    	vpermt2ps zmm18,zmm12,zmm1
  a137a6:	62 e1 ff 08 10 74 17 	vmovsd xmm22,QWORD PTR [rdi+rdx*1+0x58]
  a137ad:	0b 
  a137ae:	62 a3 65 40 18 de 01 	vinsertf32x4 zmm19,zmm19,xmm22,0x1
  a137b5:	62 a1 7c 48 28 f3    	vmovaps zmm22,zmm19
  a137bb:	62 e2 4d 48 7f f1    	vpermt2ps zmm22,zmm6,zmm1
  a137c1:	62 e2 1d 48 7f d9    	vpermt2ps zmm19,zmm12,zmm1
  a137c7:	62 e1 ff 08 10 7c 17 	vmovsd xmm23,QWORD PTR [rdi+rdx*1+0x70]
  a137ce:	0e 
  a137cf:	62 61 7c 08 10 44 17 	vmovups xmm24,XMMWORD PTR [rdi+rdx*1+0x60]
  a137d6:	06 
  a137d7:	62 a3 3d 40 18 ff 01 	vinsertf32x4 zmm23,zmm24,xmm23,0x1
  a137de:	62 21 7c 48 28 c7    	vmovaps zmm24,zmm23
  a137e4:	62 62 4d 48 7f c1    	vpermt2ps zmm24,zmm6,zmm1
  a137ea:	62 e2 1d 48 7f f9    	vpermt2ps zmm23,zmm12,zmm1
  a137f0:	62 01 5c 40 58 c8    	vaddps zmm25,zmm20,zmm24
  a137f6:	62 21 74 40 58 d7    	vaddps zmm26,zmm17,zmm23
  a137fc:	62 a1 74 40 5c cf    	vsubps zmm17,zmm17,zmm23
  a13802:	62 a1 6c 40 58 fb    	vaddps zmm23,zmm18,zmm19
  a13808:	62 a1 6c 40 5c d3    	vsubps zmm18,zmm18,zmm19
  a1380e:	62 81 7c 40 58 d9    	vaddps zmm19,zmm16,zmm25
  a13814:	62 81 5c 40 5c e0    	vsubps zmm20,zmm20,zmm24
  a1381a:	62 21 54 40 58 c6    	vaddps zmm24,zmm21,zmm22
  a13820:	62 81 64 40 58 d8    	vaddps zmm19,zmm19,zmm24
  a13826:	62 a1 54 40 5c ee    	vsubps zmm21,zmm21,zmm22
  a1382c:	62 e1 7c 48 28 f7    	vmovaps zmm22,zmm7
  a13832:	62 a2 35 40 a8 f0    	vfmadd213ps zmm22,zmm25,zmm16
  a13838:	62 82 3d 48 bc c1    	vfnmadd231ps zmm16,zmm8,zmm25
  a1383e:	62 01 04 48 58 ca    	vaddps zmm25,zmm15,zmm26
  a13844:	62 c2 3d 40 bc f0    	vfnmadd231ps zmm22,zmm24,zmm8
  a1384a:	62 82 45 48 b8 c0    	vfmadd231ps zmm16,zmm7,zmm24
  a13850:	62 41 6c 40 59 c1    	vmulps zmm24,zmm18,zmm9
  a13856:	62 42 75 40 b8 c2    	vfmadd231ps zmm24,zmm17,zmm10
  a1385c:	62 41 74 40 59 d9    	vmulps zmm27,zmm17,zmm9
  a13862:	62 22 2d 48 bc da    	vfnmadd231ps zmm27,zmm10,zmm18
  a13868:	62 e1 7c 48 28 d7    	vmovaps zmm18,zmm7
  a1386e:	62 c2 2d 40 a8 d7    	vfmadd213ps zmm18,zmm26,zmm15
  a13874:	62 12 3d 48 bc fa    	vfnmadd231ps zmm15,zmm8,zmm26
  a1387a:	62 a1 34 40 58 cf    	vaddps zmm17,zmm25,zmm23
  a13880:	62 c2 45 40 bc d0    	vfnmadd231ps zmm18,zmm23,zmm8
  a13886:	62 32 45 48 b8 ff    	vfmadd231ps zmm15,zmm7,zmm23
  a1388c:	62 c1 54 40 59 f9    	vmulps zmm23,zmm21,zmm9
  a13892:	62 c2 5d 40 b8 fa    	vfmadd231ps zmm23,zmm20,zmm10
  a13898:	62 c1 5c 40 59 e1    	vmulps zmm20,zmm20,zmm9
  a1389e:	62 a2 2d 48 bc e5    	vfnmadd231ps zmm20,zmm10,zmm21
  a138a4:	62 81 7c 40 58 eb    	vaddps zmm21,zmm16,zmm27
  a138aa:	62 81 7c 40 5c c3    	vsubps zmm16,zmm16,zmm27
  a138b0:	62 21 04 48 5c cc    	vsubps zmm25,zmm15,zmm20
  a138b6:	62 c1 5c 40 58 e7    	vaddps zmm20,zmm20,zmm15
  a138bc:	62 11 4c 40 58 f8    	vaddps zmm15,zmm22,zmm24
  a138c2:	62 81 4c 40 5c f0    	vsubps zmm22,zmm22,zmm24
  a138c8:	62 21 6c 40 5c c7    	vsubps zmm24,zmm18,zmm23
  a138ce:	62 a1 44 40 58 d2    	vaddps zmm18,zmm23,zmm18
  a138d4:	62 e2 7d 48 7f d9    	vpermt2ps zmm19,zmm0,zmm1
  a138da:	62 72 7d 48 7f f9    	vpermt2ps zmm15,zmm0,zmm1
  a138e0:	62 e2 7d 48 7f e9    	vpermt2ps zmm21,zmm0,zmm1
  a138e6:	62 e2 7d 48 7f c1    	vpermt2ps zmm16,zmm0,zmm1
  a138ec:	62 e2 7d 48 7f f1    	vpermt2ps zmm22,zmm0,zmm1
  a138f2:	62 a2 65 48 7f de    	vpermt2ps zmm19,zmm3,zmm22
  a138f8:	62 72 65 48 7f fa    	vpermt2ps zmm15,zmm3,zmm2
  a138fe:	62 e2 65 48 7f ea    	vpermt2ps zmm21,zmm3,zmm2
  a13904:	62 e2 65 48 7f c2    	vpermt2ps zmm16,zmm3,zmm2
  a1390a:	62 a1 e5 40 14 f5    	vunpcklpd zmm22,zmm19,zmm21
  a13910:	62 a1 e5 40 15 dd    	vunpckhpd zmm19,zmm19,zmm21
  a13916:	62 a1 85 48 14 e8    	vunpcklpd zmm21,zmm15,zmm16
  a1391c:	62 a1 85 48 15 c0    	vunpckhpd zmm16,zmm15,zmm16
  a13922:	62 31 7c 48 28 fe    	vmovaps zmm15,zmm22
  a13928:	62 32 5d 48 7f fd    	vpermt2ps zmm15,zmm4,zmm21
  a1392e:	62 a2 55 48 7f f5    	vpermt2ps zmm22,zmm5,zmm21
  a13934:	62 a2 5d 48 7f d8    	vpermt2ps zmm19,zmm4,zmm16
  a1393a:	62 e2 7d 48 7f c9    	vpermt2ps zmm17,zmm0,zmm1
  a13940:	62 62 7d 48 7f c1    	vpermt2ps zmm24,zmm0,zmm1
  a13946:	62 62 7d 48 7f c9    	vpermt2ps zmm25,zmm0,zmm1
  a1394c:	62 e2 7d 48 7f e1    	vpermt2ps zmm20,zmm0,zmm1
  a13952:	62 e2 7d 48 7f d1    	vpermt2ps zmm18,zmm0,zmm1
  a13958:	62 a2 65 48 7f ca    	vpermt2ps zmm17,zmm3,zmm18
  a1395e:	62 62 65 48 7f c2    	vpermt2ps zmm24,zmm3,zmm2
  a13964:	62 62 65 48 7f ca    	vpermt2ps zmm25,zmm3,zmm2
  a1396a:	62 e2 65 48 7f e2    	vpermt2ps zmm20,zmm3,zmm2
  a13970:	62 81 f5 40 14 c1    	vunpcklpd zmm16,zmm17,zmm25
  a13976:	62 81 f5 40 15 c9    	vunpckhpd zmm17,zmm17,zmm25
  a1397c:	62 a1 bd 40 14 d4    	vunpcklpd zmm18,zmm24,zmm20
  a13982:	62 a1 bd 40 15 e4    	vunpckhpd zmm20,zmm24,zmm20
  a13988:	62 a1 7c 48 28 e8    	vmovaps zmm21,zmm16
  a1398e:	62 a2 5d 48 7f ea    	vpermt2ps zmm21,zmm4,zmm18
  a13994:	62 a2 55 48 7f c2    	vpermt2ps zmm16,zmm5,zmm18
  a1399a:	62 a2 5d 48 7f cc    	vpermt2ps zmm17,zmm4,zmm20
  a139a0:	62 e1 7c 48 10 51 02 	vmovups zmm18,ZMMWORD PTR [rcx+0x80]
  a139a7:	62 e1 7c 48 10 61 03 	vmovups zmm20,ZMMWORD PTR [rcx+0xc0]
  a139ae:	62 a1 4c 40 59 fa    	vmulps zmm23,zmm22,zmm18
  a139b4:	62 a2 7d 40 bc fc    	vfnmadd231ps zmm23,zmm16,zmm20
  a139ba:	62 a1 7c 40 59 c2    	vmulps zmm16,zmm16,zmm18
  a139c0:	62 e1 7c 48 10 51 04 	vmovups zmm18,ZMMWORD PTR [rcx+0x100]
  a139c7:	62 a2 5d 40 b8 c6    	vfmadd231ps zmm16,zmm20,zmm22
  a139cd:	62 e1 7c 48 10 61 05 	vmovups zmm20,ZMMWORD PTR [rcx+0x140]
  a139d4:	62 a1 64 40 59 f2    	vmulps zmm22,zmm19,zmm18
  a139da:	62 a2 75 40 bc f4    	vfnmadd231ps zmm22,zmm17,zmm20
  a139e0:	62 a1 74 40 59 ca    	vmulps zmm17,zmm17,zmm18
  a139e6:	62 a1 44 40 58 d6    	vaddps zmm18,zmm23,zmm22
  a139ec:	62 a2 5d 40 b8 cb    	vfmadd231ps zmm17,zmm20,zmm19
  a139f2:	62 a1 7c 40 58 d9    	vaddps zmm19,zmm16,zmm17
  a139f8:	62 c1 7c 48 28 e3    	vmovaps zmm20,zmm11
  a139fe:	62 c2 6d 40 ac e7    	vfnmadd213ps zmm20,zmm18,zmm15
  a13a04:	62 a1 7c 40 5c c1    	vsubps zmm16,zmm16,zmm17
  a13a0a:	62 c1 7c 40 59 c5    	vmulps zmm16,zmm16,zmm13
  a13a10:	62 a1 5c 40 58 c8    	vaddps zmm17,zmm20,zmm16
  a13a16:	62 a1 44 40 5c f6    	vsubps zmm22,zmm23,zmm22
  a13a1c:	62 c1 7c 48 28 fb    	vmovaps zmm23,zmm11
  a13a22:	62 a2 65 40 ac fd    	vfnmadd213ps zmm23,zmm19,zmm21
  a13a28:	62 c1 4c 40 59 f5    	vmulps zmm22,zmm22,zmm13
  a13a2e:	62 a1 5c 40 5c c0    	vsubps zmm16,zmm20,zmm16
  a13a34:	62 a1 44 40 5c e6    	vsubps zmm20,zmm23,zmm22
  a13a3a:	62 a1 44 40 58 f6    	vaddps zmm22,zmm23,zmm22
  a13a40:	62 31 04 48 58 fa    	vaddps zmm15,zmm15,zmm18
  a13a46:	62 a1 54 40 58 d3    	vaddps zmm18,zmm21,zmm19
  a13a4c:	62 32 0d 48 7f fa    	vpermt2ps zmm15,zmm14,zmm18
  a13a52:	c5 7c 11 3c 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm15
  a13a57:	62 53 7d 48 19 ff 02 	vextractf32x4 xmm15,zmm15,0x2
  a13a5e:	c5 78 13 7c 16 20    	vmovlps QWORD PTR [rsi+rdx*1+0x20],xmm15
  a13a64:	62 a2 0d 48 7f cc    	vpermt2ps zmm17,zmm14,zmm20
  a13a6a:	62 e1 7c 28 11 8c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x28],ymm17
  a13a71:	28 00 00 00 
  a13a75:	62 c3 7d 48 19 cf 02 	vextractf32x4 xmm15,zmm17,0x2
  a13a7c:	c5 78 13 7c 16 48    	vmovlps QWORD PTR [rsi+rdx*1+0x48],xmm15
  a13a82:	62 a2 0d 48 7f c6    	vpermt2ps zmm16,zmm14,zmm22
  a13a88:	62 e1 7c 28 11 84 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x50],ymm16
  a13a8f:	50 00 00 00 
  a13a93:	62 c3 7d 48 19 c7 02 	vextractf32x4 xmm15,zmm16,0x2
  a13a9a:	c5 78 13 7c 16 70    	vmovlps QWORD PTR [rsi+rdx*1+0x70],xmm15
  a13aa0:	48 83 c2 78          	add    rdx,0x78
  a13aa4:	48 39 d0             	cmp    rax,rdx
  a13aa7:	0f 85 73 fc ff ff    	jne    a13720 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0xa0>
  a13aad:	c5 f8 77             	vzeroupper
  a13ab0:	c3                   	ret
