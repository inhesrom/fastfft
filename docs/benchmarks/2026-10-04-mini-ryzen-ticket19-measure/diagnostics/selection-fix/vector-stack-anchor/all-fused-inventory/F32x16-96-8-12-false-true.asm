
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000009fd880 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  9fd880:	48 81 ec c8 00 00 00 	sub    rsp,0xc8
  9fd887:	48 c1 e2 08          	shl    rdx,0x8
  9fd88b:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  9fd88f:	31 d2                	xor    edx,edx
  9fd891:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  9fd898:	0f 1f 84 00 00 00 00 
  9fd89f:	00 
  9fd8a0:	62 f1 7c 48 10 1c 17 	vmovups zmm3,ZMMWORD PTR [rdi+rdx*1]
  9fd8a7:	c5 fc 10 64 17 40    	vmovups ymm4,YMMWORD PTR [rdi+rdx*1+0x40]
  9fd8ad:	62 f1 7c 48 28 f3    	vmovaps zmm6,zmm3
  9fd8b3:	62 f1 7c 48 28 05 83 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff690383]        # 8dc40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b0f0>
  9fd8ba:	03 69 ff 
  9fd8bd:	62 f2 7d 48 7f f4    	vpermt2ps zmm6,zmm0,zmm4
  9fd8c3:	62 f1 7c 48 28 0d b3 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff6903b3]        # 8dc80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b130>
  9fd8ca:	03 69 ff 
  9fd8cd:	62 f2 75 48 7f dc    	vpermt2ps zmm3,zmm1,zmm4
  9fd8d3:	62 f1 7c 48 10 a4 17 	vmovups zmm4,ZMMWORD PTR [rdi+rdx*1+0x60]
  9fd8da:	60 00 00 00 
  9fd8de:	c5 fc 10 ac 17 a0 00 	vmovups ymm5,YMMWORD PTR [rdi+rdx*1+0xa0]
  9fd8e5:	00 00 
  9fd8e7:	62 f1 7c 48 28 fc    	vmovaps zmm7,zmm4
  9fd8ed:	62 f2 7d 48 7f fd    	vpermt2ps zmm7,zmm0,zmm5
  9fd8f3:	62 f2 75 48 7f e5    	vpermt2ps zmm4,zmm1,zmm5
  9fd8f9:	62 71 7c 48 10 44 17 	vmovups zmm8,ZMMWORD PTR [rdi+rdx*1+0xc0]
  9fd900:	03 
  9fd901:	c5 7c 10 8c 17 00 01 	vmovups ymm9,YMMWORD PTR [rdi+rdx*1+0x100]
  9fd908:	00 00 
  9fd90a:	62 d1 7c 48 28 e8    	vmovaps zmm5,zmm8
  9fd910:	62 d2 7d 48 7f e9    	vpermt2ps zmm5,zmm0,zmm9
  9fd916:	62 52 75 48 7f c1    	vpermt2ps zmm8,zmm1,zmm9
  9fd91c:	62 71 7c 48 10 8c 17 	vmovups zmm9,ZMMWORD PTR [rdi+rdx*1+0x120]
  9fd923:	20 01 00 00 
  9fd927:	c5 7c 10 9c 17 60 01 	vmovups ymm11,YMMWORD PTR [rdi+rdx*1+0x160]
  9fd92e:	00 00 
  9fd930:	62 51 7c 48 28 e1    	vmovaps zmm12,zmm9
  9fd936:	62 52 7d 48 7f e3    	vpermt2ps zmm12,zmm0,zmm11
  9fd93c:	62 52 75 48 7f cb    	vpermt2ps zmm9,zmm1,zmm11
  9fd942:	62 71 7c 48 10 5c 17 	vmovups zmm11,ZMMWORD PTR [rdi+rdx*1+0x180]
  9fd949:	06 
  9fd94a:	c5 7c 10 ac 17 c0 01 	vmovups ymm13,YMMWORD PTR [rdi+rdx*1+0x1c0]
  9fd951:	00 00 
  9fd953:	62 51 7c 48 28 f3    	vmovaps zmm14,zmm11
  9fd959:	62 52 7d 48 7f f5    	vpermt2ps zmm14,zmm0,zmm13
  9fd95f:	62 52 75 48 7f dd    	vpermt2ps zmm11,zmm1,zmm13
  9fd965:	62 71 7c 48 10 bc 17 	vmovups zmm15,ZMMWORD PTR [rdi+rdx*1+0x1e0]
  9fd96c:	e0 01 00 00 
  9fd970:	c5 7c 10 ac 17 20 02 	vmovups ymm13,YMMWORD PTR [rdi+rdx*1+0x220]
  9fd977:	00 00 
  9fd979:	62 c1 7c 48 28 c7    	vmovaps zmm16,zmm15
  9fd97f:	62 c2 7d 48 7f c5    	vpermt2ps zmm16,zmm0,zmm13
  9fd985:	62 52 75 48 7f fd    	vpermt2ps zmm15,zmm1,zmm13
  9fd98b:	62 e1 7c 48 10 4c 17 	vmovups zmm17,ZMMWORD PTR [rdi+rdx*1+0x240]
  9fd992:	09 
  9fd993:	c5 7c 10 ac 17 80 02 	vmovups ymm13,YMMWORD PTR [rdi+rdx*1+0x280]
  9fd99a:	00 00 
  9fd99c:	62 a1 7c 48 28 d1    	vmovaps zmm18,zmm17
  9fd9a2:	62 c2 7d 48 7f d5    	vpermt2ps zmm18,zmm0,zmm13
  9fd9a8:	62 c2 75 48 7f cd    	vpermt2ps zmm17,zmm1,zmm13
  9fd9ae:	62 e1 7c 48 10 9c 17 	vmovups zmm19,ZMMWORD PTR [rdi+rdx*1+0x2a0]
  9fd9b5:	a0 02 00 00 
  9fd9b9:	c5 7c 10 ac 17 e0 02 	vmovups ymm13,YMMWORD PTR [rdi+rdx*1+0x2e0]
  9fd9c0:	00 00 
  9fd9c2:	62 a1 7c 48 28 eb    	vmovaps zmm21,zmm19
  9fd9c8:	62 c2 7d 48 7f ed    	vpermt2ps zmm21,zmm0,zmm13
  9fd9ce:	62 c2 75 48 7f dd    	vpermt2ps zmm19,zmm1,zmm13
  9fd9d4:	62 c1 4c 48 58 f6    	vaddps zmm22,zmm6,zmm14
  9fd9da:	62 a1 54 48 58 fa    	vaddps zmm23,zmm5,zmm18
  9fd9e0:	62 21 4c 40 58 c7    	vaddps zmm24,zmm22,zmm23
  9fd9e6:	62 21 44 48 58 c8    	vaddps zmm25,zmm7,zmm16
  9fd9ec:	62 21 1c 48 58 d5    	vaddps zmm26,zmm12,zmm21
  9fd9f2:	62 01 34 40 58 da    	vaddps zmm27,zmm25,zmm26
  9fd9f8:	62 11 3c 40 58 eb    	vaddps zmm13,zmm24,zmm27
  9fd9fe:	62 41 64 48 58 e3    	vaddps zmm28,zmm3,zmm11
  9fda04:	62 21 3c 48 58 e9    	vaddps zmm29,zmm8,zmm17
  9fda0a:	62 01 1c 40 58 f5    	vaddps zmm30,zmm28,zmm29
  9fda10:	62 41 5c 48 58 ff    	vaddps zmm31,zmm4,zmm15
  9fda16:	62 b1 34 48 58 c3    	vaddps zmm0,zmm9,zmm19
  9fda1c:	62 f1 04 40 58 c8    	vaddps zmm1,zmm31,zmm0
  9fda22:	62 d1 4c 48 5c f6    	vsubps zmm6,zmm6,zmm14
  9fda28:	62 e1 0c 40 58 e1    	vaddps zmm20,zmm30,zmm1
  9fda2e:	62 31 3c 48 5c c1    	vsubps zmm8,zmm8,zmm17
  9fda34:	62 51 4c 48 58 f0    	vaddps zmm14,zmm6,zmm8
  9fda3a:	62 b1 44 48 5c f8    	vsubps zmm7,zmm7,zmm16
  9fda40:	62 51 5c 48 5c ff    	vsubps zmm15,zmm4,zmm15
  9fda46:	62 d1 44 48 58 e7    	vaddps zmm4,zmm7,zmm15
  9fda4c:	62 f2 7d 48 18 15 46 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff677946]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  9fda53:	79 67 ff 
  9fda56:	62 e1 5c 48 59 c2    	vmulps zmm16,zmm4,zmm2
  9fda5c:	62 31 34 48 5c cb    	vsubps zmm9,zmm9,zmm19
  9fda62:	62 31 1c 48 5c e5    	vsubps zmm12,zmm12,zmm21
  9fda68:	62 d1 34 48 5c e4    	vsubps zmm4,zmm9,zmm12
  9fda6e:	62 e1 5c 48 59 ca    	vmulps zmm17,zmm4,zmm2
  9fda74:	62 a1 7c 40 58 d9    	vaddps zmm19,zmm16,zmm17
  9fda7a:	62 b1 0c 48 58 e3    	vaddps zmm4,zmm14,zmm19
  9fda80:	62 51 64 48 5c db    	vsubps zmm11,zmm3,zmm11
  9fda86:	62 e1 6c 40 5c d5    	vsubps zmm18,zmm18,zmm5
  9fda8c:	62 c1 6c 40 58 eb    	vaddps zmm21,zmm18,zmm11
  9fda92:	62 f1 04 48 5c df    	vsubps zmm3,zmm15,zmm7
  9fda98:	62 f1 64 48 59 fa    	vmulps zmm7,zmm3,zmm2
  9fda9e:	62 d1 1c 48 58 d9    	vaddps zmm3,zmm12,zmm9
  9fdaa4:	62 71 64 48 59 ca    	vmulps zmm9,zmm3,zmm2
  9fdaaa:	62 51 44 48 5c e1    	vsubps zmm12,zmm7,zmm9
  9fdab0:	62 d1 54 40 58 d4    	vaddps zmm2,zmm21,zmm12
  9fdab6:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm2
  9fdabd:	fe 
  9fdabe:	62 31 4c 40 5c ff    	vsubps zmm15,zmm22,zmm23
  9fdac4:	62 f1 04 40 5c c0    	vsubps zmm0,zmm31,zmm0
  9fdaca:	62 f1 04 48 58 e8    	vaddps zmm5,zmm15,zmm0
  9fdad0:	62 81 1c 40 5c f5    	vsubps zmm22,zmm28,zmm29
  9fdad6:	62 81 2c 40 5c f9    	vsubps zmm23,zmm26,zmm25
  9fdadc:	62 21 44 40 58 e6    	vaddps zmm28,zmm23,zmm22
  9fdae2:	62 51 4c 48 5c c0    	vsubps zmm8,zmm6,zmm8
  9fdae8:	62 d1 44 48 58 f9    	vaddps zmm7,zmm7,zmm9
  9fdaee:	62 f1 3c 48 58 f7    	vaddps zmm6,zmm8,zmm7
  9fdaf4:	62 31 24 48 5c ca    	vsubps zmm9,zmm11,zmm18
  9fdafa:	62 31 74 40 5c d8    	vsubps zmm11,zmm17,zmm16
  9fdb00:	62 41 34 48 58 eb    	vaddps zmm29,zmm9,zmm11
  9fdb06:	62 81 3c 40 5c c3    	vsubps zmm16,zmm24,zmm27
  9fdb0c:	62 61 0c 40 5c d1    	vsubps zmm26,zmm30,zmm1
  9fdb12:	62 b1 0c 48 5c cb    	vsubps zmm1,zmm14,zmm19
  9fdb18:	62 41 54 40 5c f4    	vsubps zmm30,zmm21,zmm12
  9fdb1e:	62 61 04 48 5c c0    	vsubps zmm24,zmm15,zmm0
  9fdb24:	62 21 4c 40 5c ff    	vsubps zmm31,zmm22,zmm23
  9fdb2a:	62 f1 3c 48 5c ff    	vsubps zmm7,zmm8,zmm7
  9fdb30:	62 c1 34 48 5c fb    	vsubps zmm23,zmm9,zmm11
  9fdb36:	62 51 7c 48 28 cd    	vmovaps zmm9,zmm13
  9fdb3c:	62 f1 7c 48 28 1d 3a 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff6c943a]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  9fdb43:	94 6c ff 
  9fdb46:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  9fdb4a:	62 72 65 48 7f c8    	vpermt2ps zmm9,zmm3,zmm0
  9fdb50:	62 71 7c 48 28 15 66 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff6c9466]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  9fdb57:	94 6c ff 
  9fdb5a:	62 72 2d 48 7f e8    	vpermt2ps zmm13,zmm10,zmm0
  9fdb60:	62 71 7c 48 28 dc    	vmovaps zmm11,zmm4
  9fdb66:	62 72 65 48 7f d8    	vpermt2ps zmm11,zmm3,zmm0
  9fdb6c:	62 f2 2d 48 7f e0    	vpermt2ps zmm4,zmm10,zmm0
  9fdb72:	62 71 7c 48 28 e5    	vmovaps zmm12,zmm5
  9fdb78:	62 72 65 48 7f e0    	vpermt2ps zmm12,zmm3,zmm0
  9fdb7e:	62 f2 2d 48 7f e8    	vpermt2ps zmm5,zmm10,zmm0
  9fdb84:	62 71 7c 48 28 fe    	vmovaps zmm15,zmm6
  9fdb8a:	62 72 65 48 7f f8    	vpermt2ps zmm15,zmm3,zmm0
  9fdb90:	62 f2 2d 48 7f f0    	vpermt2ps zmm6,zmm10,zmm0
  9fdb96:	62 31 7c 48 28 f0    	vmovaps zmm14,zmm16
  9fdb9c:	62 72 65 48 7f f0    	vpermt2ps zmm14,zmm3,zmm0
  9fdba2:	62 e2 2d 48 7f c0    	vpermt2ps zmm16,zmm10,zmm0
  9fdba8:	62 e1 7c 48 28 c9    	vmovaps zmm17,zmm1
  9fdbae:	62 e2 65 48 7f c8    	vpermt2ps zmm17,zmm3,zmm0
  9fdbb4:	62 f2 2d 48 7f c8    	vpermt2ps zmm1,zmm10,zmm0
  9fdbba:	62 81 7c 48 28 d0    	vmovaps zmm18,zmm24
  9fdbc0:	62 e2 65 48 7f d0    	vpermt2ps zmm18,zmm3,zmm0
  9fdbc6:	62 62 2d 48 7f c0    	vpermt2ps zmm24,zmm10,zmm0
  9fdbcc:	62 e1 7c 48 28 df    	vmovaps zmm19,zmm7
  9fdbd2:	62 e2 65 48 7f d8    	vpermt2ps zmm19,zmm3,zmm0
  9fdbd8:	62 f2 2d 48 7f f8    	vpermt2ps zmm7,zmm10,zmm0
  9fdbde:	62 c1 7c 48 28 e9    	vmovaps zmm21,zmm9
  9fdbe4:	62 61 7c 48 28 0d 12 	vmovaps zmm25,ZMMWORD PTR [rip+0xffffffffff6c9312]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  9fdbeb:	93 6c ff 
  9fdbee:	62 c2 35 40 7f ee    	vpermt2ps zmm21,zmm25,zmm14
  9fdbf4:	62 e1 7c 48 28 35 42 	vmovaps zmm22,ZMMWORD PTR [rip+0xffffffffff6c9342]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  9fdbfb:	93 6c ff 
  9fdbfe:	62 52 4d 40 7f ce    	vpermt2ps zmm9,zmm22,zmm14
  9fdc04:	62 51 7c 48 28 f3    	vmovaps zmm14,zmm11
  9fdc0a:	62 32 35 40 7f f1    	vpermt2ps zmm14,zmm25,zmm17
  9fdc10:	62 32 4d 40 7f d9    	vpermt2ps zmm11,zmm22,zmm17
  9fdc16:	62 c1 7c 48 28 cc    	vmovaps zmm17,zmm12
  9fdc1c:	62 a2 35 40 7f ca    	vpermt2ps zmm17,zmm25,zmm18
  9fdc22:	62 32 4d 40 7f e2    	vpermt2ps zmm12,zmm22,zmm18
  9fdc28:	62 c1 7c 48 28 d7    	vmovaps zmm18,zmm15
  9fdc2e:	62 a2 35 40 7f d3    	vpermt2ps zmm18,zmm25,zmm19
  9fdc34:	62 32 4d 40 7f fb    	vpermt2ps zmm15,zmm22,zmm19
  9fdc3a:	62 32 35 40 7f e8    	vpermt2ps zmm13,zmm25,zmm16
  9fdc40:	62 f2 35 40 7f e1    	vpermt2ps zmm4,zmm25,zmm1
  9fdc46:	62 92 35 40 7f e8    	vpermt2ps zmm5,zmm25,zmm24
  9fdc4c:	62 f2 35 40 7f f7    	vpermt2ps zmm6,zmm25,zmm7
  9fdc52:	62 a1 d5 40 14 c1    	vunpcklpd zmm16,zmm21,zmm17
  9fdc58:	62 a1 d5 40 15 e9    	vunpckhpd zmm21,zmm21,zmm17
  9fdc5e:	62 a1 8d 48 14 ca    	vunpcklpd zmm17,zmm14,zmm18
  9fdc64:	62 b1 8d 48 15 ca    	vunpckhpd zmm1,zmm14,zmm18
  9fdc6a:	62 51 b5 48 14 f4    	vunpcklpd zmm14,zmm9,zmm12
  9fdc70:	62 c1 b5 48 15 d4    	vunpckhpd zmm18,zmm9,zmm12
  9fdc76:	62 d1 a5 48 14 ff    	vunpcklpd zmm7,zmm11,zmm15
  9fdc7c:	62 51 a5 48 15 cf    	vunpckhpd zmm9,zmm11,zmm15
  9fdc82:	62 e1 95 48 14 dd    	vunpcklpd zmm19,zmm13,zmm5
  9fdc88:	62 f1 95 48 15 d5    	vunpckhpd zmm2,zmm13,zmm5
  9fdc8e:	62 f1 dd 48 14 ee    	vunpcklpd zmm5,zmm4,zmm6
  9fdc94:	62 f1 dd 48 15 e6    	vunpckhpd zmm4,zmm4,zmm6
  9fdc9a:	62 b1 7c 48 28 f0    	vmovaps zmm6,zmm16
  9fdca0:	62 71 7c 48 28 3d 56 	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff6c9156]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  9fdca7:	91 6c ff 
  9fdcaa:	62 b2 05 48 7f f1    	vpermt2ps zmm6,zmm15,zmm17
  9fdcb0:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm6
  9fdcb7:	02 
  9fdcb8:	62 71 7c 48 28 2d 7e 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff6c917e]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  9fdcbf:	91 6c ff 
  9fdcc2:	62 a2 15 48 7f c1    	vpermt2ps zmm16,zmm13,zmm17
  9fdcc8:	62 b1 7c 48 28 f5    	vmovaps zmm6,zmm21
  9fdcce:	62 f2 05 48 7f f1    	vpermt2ps zmm6,zmm15,zmm1
  9fdcd4:	62 f1 7c 48 11 34 24 	vmovups ZMMWORD PTR [rsp],zmm6
  9fdcdb:	62 e2 15 48 7f e9    	vpermt2ps zmm21,zmm13,zmm1
  9fdce1:	62 d1 7c 48 28 ce    	vmovaps zmm1,zmm14
  9fdce7:	62 72 05 48 7f f7    	vpermt2ps zmm14,zmm15,zmm7
  9fdced:	62 f2 15 48 7f cf    	vpermt2ps zmm1,zmm13,zmm7
  9fdcf3:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm1
  9fdcfa:	01 
  9fdcfb:	62 21 7c 48 28 da    	vmovaps zmm27,zmm18
  9fdd01:	62 42 05 48 7f d9    	vpermt2ps zmm27,zmm15,zmm9
  9fdd07:	62 c2 15 48 7f d1    	vpermt2ps zmm18,zmm13,zmm9
  9fdd0d:	62 a1 7c 48 28 cb    	vmovaps zmm17,zmm19
  9fdd13:	62 e2 05 48 7f cd    	vpermt2ps zmm17,zmm15,zmm5
  9fdd19:	62 e2 15 48 7f dd    	vpermt2ps zmm19,zmm13,zmm5
  9fdd1f:	62 61 7c 48 28 c2    	vmovaps zmm24,zmm2
  9fdd25:	62 62 05 48 7f c4    	vpermt2ps zmm24,zmm15,zmm4
  9fdd2b:	62 f2 15 48 7f d4    	vpermt2ps zmm2,zmm13,zmm4
  9fdd31:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm2
  9fdd38:	ff 
  9fdd39:	62 31 7c 48 28 c4    	vmovaps zmm8,zmm20
  9fdd3f:	62 e2 65 48 7f e0    	vpermt2ps zmm20,zmm3,zmm0
  9fdd45:	62 72 2d 48 7f c0    	vpermt2ps zmm8,zmm10,zmm0
  9fdd4b:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp-0x80]
  9fdd52:	fe 
  9fdd53:	62 f1 7c 48 28 ca    	vmovaps zmm1,zmm2
  9fdd59:	62 f2 65 48 7f c8    	vpermt2ps zmm1,zmm3,zmm0
  9fdd5f:	62 f2 2d 48 7f d0    	vpermt2ps zmm2,zmm10,zmm0
  9fdd65:	62 91 7c 48 28 ec    	vmovaps zmm5,zmm28
  9fdd6b:	62 f2 65 48 7f e8    	vpermt2ps zmm5,zmm3,zmm0
  9fdd71:	62 62 2d 48 7f e0    	vpermt2ps zmm28,zmm10,zmm0
  9fdd77:	62 91 7c 48 28 f5    	vmovaps zmm6,zmm29
  9fdd7d:	62 f2 65 48 7f f0    	vpermt2ps zmm6,zmm3,zmm0
  9fdd83:	62 62 2d 48 7f e8    	vpermt2ps zmm29,zmm10,zmm0
  9fdd89:	62 91 7c 48 28 e2    	vmovaps zmm4,zmm26
  9fdd8f:	62 f2 65 48 7f e0    	vpermt2ps zmm4,zmm3,zmm0
  9fdd95:	62 62 2d 48 7f d0    	vpermt2ps zmm26,zmm10,zmm0
  9fdd9b:	62 91 7c 48 28 fe    	vmovaps zmm7,zmm30
  9fdda1:	62 f2 65 48 7f f8    	vpermt2ps zmm7,zmm3,zmm0
  9fdda7:	62 62 2d 48 7f f0    	vpermt2ps zmm30,zmm10,zmm0
  9fddad:	62 11 7c 48 28 cf    	vmovaps zmm9,zmm31
  9fddb3:	62 72 65 48 7f c8    	vpermt2ps zmm9,zmm3,zmm0
  9fddb9:	62 62 2d 48 7f f8    	vpermt2ps zmm31,zmm10,zmm0
  9fddbf:	62 31 7c 48 28 df    	vmovaps zmm11,zmm23
  9fddc5:	62 72 65 48 7f d8    	vpermt2ps zmm11,zmm3,zmm0
  9fddcb:	62 e2 2d 48 7f f8    	vpermt2ps zmm23,zmm10,zmm0
  9fddd1:	62 31 7c 48 28 e4    	vmovaps zmm12,zmm20
  9fddd7:	62 72 35 40 7f e4    	vpermt2ps zmm12,zmm25,zmm4
  9fdddd:	62 e2 4d 40 7f e4    	vpermt2ps zmm20,zmm22,zmm4
  9fdde3:	62 f1 7c 48 28 e1    	vmovaps zmm4,zmm1
  9fdde9:	62 f2 35 40 7f e7    	vpermt2ps zmm4,zmm25,zmm7
  9fddef:	62 f2 4d 40 7f cf    	vpermt2ps zmm1,zmm22,zmm7
  9fddf5:	62 f1 7c 48 28 fd    	vmovaps zmm7,zmm5
  9fddfb:	62 d2 35 40 7f f9    	vpermt2ps zmm7,zmm25,zmm9
  9fde01:	62 d2 4d 40 7f e9    	vpermt2ps zmm5,zmm22,zmm9
  9fde07:	62 71 7c 48 28 ce    	vmovaps zmm9,zmm6
  9fde0d:	62 52 35 40 7f cb    	vpermt2ps zmm9,zmm25,zmm11
  9fde13:	62 d2 4d 40 7f f3    	vpermt2ps zmm6,zmm22,zmm11
  9fde19:	62 12 35 40 7f c2    	vpermt2ps zmm8,zmm25,zmm26
  9fde1f:	62 92 35 40 7f d6    	vpermt2ps zmm2,zmm25,zmm30
  9fde25:	62 02 35 40 7f e7    	vpermt2ps zmm28,zmm25,zmm31
  9fde2b:	62 22 35 40 7f ef    	vpermt2ps zmm29,zmm25,zmm23
  9fde31:	62 71 9d 48 14 d7    	vunpcklpd zmm10,zmm12,zmm7
  9fde37:	62 61 9d 48 15 cf    	vunpckhpd zmm25,zmm12,zmm7
  9fde3d:	62 d1 dd 48 14 f9    	vunpcklpd zmm7,zmm4,zmm9
  9fde43:	62 51 dd 48 15 c9    	vunpckhpd zmm9,zmm4,zmm9
  9fde49:	62 f1 dd 40 14 e5    	vunpcklpd zmm4,zmm20,zmm5
  9fde4f:	62 61 dd 40 15 f5    	vunpckhpd zmm30,zmm20,zmm5
  9fde55:	62 f1 f5 48 14 c6    	vunpcklpd zmm0,zmm1,zmm6
  9fde5b:	62 f1 f5 48 15 ce    	vunpckhpd zmm1,zmm1,zmm6
  9fde61:	62 01 bd 48 14 fc    	vunpcklpd zmm31,zmm8,zmm28
  9fde67:	62 91 bd 48 15 ec    	vunpckhpd zmm5,zmm8,zmm28
  9fde6d:	62 91 ed 48 14 f5    	vunpcklpd zmm6,zmm2,zmm29
  9fde73:	62 11 ed 48 15 e5    	vunpckhpd zmm12,zmm2,zmm29
  9fde79:	62 c1 7c 48 28 e2    	vmovaps zmm20,zmm10
  9fde7f:	62 e2 05 48 7f e7    	vpermt2ps zmm20,zmm15,zmm7
  9fde85:	62 72 15 48 7f d7    	vpermt2ps zmm10,zmm13,zmm7
  9fde8b:	62 11 7c 48 28 d9    	vmovaps zmm11,zmm25
  9fde91:	62 52 05 48 7f d9    	vpermt2ps zmm11,zmm15,zmm9
  9fde97:	62 42 15 48 7f c9    	vpermt2ps zmm25,zmm13,zmm9
  9fde9d:	62 61 7c 48 28 d4    	vmovaps zmm26,zmm4
  9fdea3:	62 62 05 48 7f d0    	vpermt2ps zmm26,zmm15,zmm0
  9fdea9:	62 f2 15 48 7f e0    	vpermt2ps zmm4,zmm13,zmm0
  9fdeaf:	62 91 7c 48 28 de    	vmovaps zmm3,zmm30
  9fdeb5:	62 f2 05 48 7f d9    	vpermt2ps zmm3,zmm15,zmm1
  9fdebb:	62 62 15 48 7f f1    	vpermt2ps zmm30,zmm13,zmm1
  9fdec1:	62 11 7c 48 28 cf    	vmovaps zmm9,zmm31
  9fdec7:	62 72 05 48 7f ce    	vpermt2ps zmm9,zmm15,zmm6
  9fdecd:	62 62 15 48 7f fe    	vpermt2ps zmm31,zmm13,zmm6
  9fded3:	62 61 7c 48 28 e5    	vmovaps zmm28,zmm5
  9fded9:	62 42 05 48 7f e4    	vpermt2ps zmm28,zmm15,zmm12
  9fdedf:	62 d2 15 48 7f ec    	vpermt2ps zmm5,zmm13,zmm12
  9fdee5:	62 f1 7c 48 10 79 02 	vmovups zmm7,ZMMWORD PTR [rcx+0x80]
  9fdeec:	62 f1 7c 48 10 71 03 	vmovups zmm6,ZMMWORD PTR [rcx+0xc0]
  9fdef3:	62 f1 7c 48 10 41 0c 	vmovups zmm0,ZMMWORD PTR [rcx+0x300]
  9fdefa:	62 f1 7c 48 10 49 0d 	vmovups zmm1,ZMMWORD PTR [rcx+0x340]
  9fdf01:	62 61 24 40 59 e8    	vmulps zmm29,zmm27,zmm0
  9fdf07:	62 62 65 48 bc e9    	vfnmadd231ps zmm29,zmm3,zmm1
  9fdf0d:	62 f1 64 48 59 d8    	vmulps zmm3,zmm3,zmm0
  9fdf13:	62 f1 7c 48 10 41 06 	vmovups zmm0,ZMMWORD PTR [rcx+0x180]
  9fdf1a:	62 92 75 48 b8 db    	vfmadd231ps zmm3,zmm1,zmm27
  9fdf20:	62 f1 7c 48 10 49 07 	vmovups zmm1,ZMMWORD PTR [rcx+0x1c0]
  9fdf27:	62 61 54 40 59 d8    	vmulps zmm27,zmm21,zmm0
  9fdf2d:	62 62 35 40 bc d9    	vfnmadd231ps zmm27,zmm25,zmm1
  9fdf33:	62 61 34 40 59 c8    	vmulps zmm25,zmm25,zmm0
  9fdf39:	62 f1 7c 48 10 41 12 	vmovups zmm0,ZMMWORD PTR [rcx+0x480]
  9fdf40:	62 22 75 48 b8 cd    	vfmadd231ps zmm25,zmm1,zmm21
  9fdf46:	62 f1 7c 48 10 49 13 	vmovups zmm1,ZMMWORD PTR [rcx+0x4c0]
  9fdf4d:	62 e1 64 40 59 e8    	vmulps zmm21,zmm19,zmm0
  9fdf53:	62 e2 05 40 bc e9    	vfnmadd231ps zmm21,zmm31,zmm1
  9fdf59:	62 61 04 40 59 f8    	vmulps zmm31,zmm31,zmm0
  9fdf5f:	62 f1 7c 48 10 41 08 	vmovups zmm0,ZMMWORD PTR [rcx+0x200]
  9fdf66:	62 22 75 48 b8 fb    	vfmadd231ps zmm31,zmm1,zmm19
  9fdf6c:	62 f1 7c 48 10 49 09 	vmovups zmm1,ZMMWORD PTR [rcx+0x240]
  9fdf73:	62 71 0c 48 59 e0    	vmulps zmm12,zmm14,zmm0
  9fdf79:	62 72 2d 40 bc e1    	vfnmadd231ps zmm12,zmm26,zmm1
  9fdf7f:	62 e1 2c 40 59 f0    	vmulps zmm22,zmm26,zmm0
  9fdf85:	62 f1 7c 48 10 41 14 	vmovups zmm0,ZMMWORD PTR [rcx+0x500]
  9fdf8c:	62 c2 75 48 b8 f6    	vfmadd231ps zmm22,zmm1,zmm14
  9fdf92:	62 f1 7c 48 10 49 15 	vmovups zmm1,ZMMWORD PTR [rcx+0x540]
  9fdf99:	62 61 3c 40 59 d0    	vmulps zmm26,zmm24,zmm0
  9fdf9f:	62 62 1d 40 bc d1    	vfnmadd231ps zmm26,zmm28,zmm1
  9fdfa5:	62 e1 1c 40 59 f8    	vmulps zmm23,zmm28,zmm0
  9fdfab:	62 f1 7c 48 10 41 0e 	vmovups zmm0,ZMMWORD PTR [rcx+0x380]
  9fdfb2:	62 82 75 48 b8 f8    	vfmadd231ps zmm23,zmm1,zmm24
  9fdfb8:	62 f1 7c 48 10 49 0f 	vmovups zmm1,ZMMWORD PTR [rcx+0x3c0]
  9fdfbf:	62 61 6c 40 59 c0    	vmulps zmm24,zmm18,zmm0
  9fdfc5:	62 62 0d 40 bc c1    	vfnmadd231ps zmm24,zmm30,zmm1
  9fdfcb:	62 f1 0c 40 59 c0    	vmulps zmm0,zmm30,zmm0
  9fdfd1:	62 61 7c 48 10 61 04 	vmovups zmm28,ZMMWORD PTR [rcx+0x100]
  9fdfd8:	62 b2 75 48 b8 c2    	vfmadd231ps zmm0,zmm1,zmm18
  9fdfde:	62 f1 7c 48 10 49 05 	vmovups zmm1,ZMMWORD PTR [rcx+0x140]
  9fdfe5:	62 e1 7c 40 59 d7    	vmulps zmm18,zmm16,zmm7
  9fdfeb:	62 e2 2d 48 bc d6    	vfnmadd231ps zmm18,zmm10,zmm6
  9fdff1:	62 f1 2c 48 59 ff    	vmulps zmm7,zmm10,zmm7
  9fdff7:	62 71 7c 48 10 41 10 	vmovups zmm8,ZMMWORD PTR [rcx+0x400]
  9fdffe:	62 b2 4d 48 b8 f8    	vfmadd231ps zmm7,zmm6,zmm16
  9fe004:	62 f1 7c 48 10 71 11 	vmovups zmm6,ZMMWORD PTR [rcx+0x440]
  9fe00b:	62 c1 74 40 59 c0    	vmulps zmm16,zmm17,zmm8
  9fe011:	62 e2 35 48 bc c6    	vfnmadd231ps zmm16,zmm9,zmm6
  9fe017:	62 51 34 48 59 c0    	vmulps zmm8,zmm9,zmm8
  9fe01d:	62 71 7c 48 10 49 0a 	vmovups zmm9,ZMMWORD PTR [rcx+0x280]
  9fe024:	62 32 4d 48 b8 c1    	vfmadd231ps zmm8,zmm6,zmm17
  9fe02a:	62 f1 7c 48 10 71 0b 	vmovups zmm6,ZMMWORD PTR [rcx+0x2c0]
  9fe031:	62 f1 7c 48 10 14 24 	vmovups zmm2,ZMMWORD PTR [rsp]
  9fe038:	62 81 6c 48 59 dc    	vmulps zmm19,zmm2,zmm28
  9fe03e:	62 e2 25 48 bc d9    	vfnmadd231ps zmm19,zmm11,zmm1
  9fe044:	62 11 24 48 59 dc    	vmulps zmm11,zmm11,zmm28
  9fe04a:	62 61 7c 48 10 61 16 	vmovups zmm28,ZMMWORD PTR [rcx+0x580]
  9fe051:	62 72 75 48 b8 da    	vfmadd231ps zmm11,zmm1,zmm2
  9fe057:	62 f1 7c 48 10 49 17 	vmovups zmm1,ZMMWORD PTR [rcx+0x5c0]
  9fe05e:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp-0x40]
  9fe065:	ff 
  9fe066:	62 81 6c 48 59 cc    	vmulps zmm17,zmm2,zmm28
  9fe06c:	62 e2 55 48 bc c9    	vfnmadd231ps zmm17,zmm5,zmm1
  9fe072:	62 91 54 48 59 ec    	vmulps zmm5,zmm5,zmm28
  9fe078:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x80]
  9fe07f:	02 
  9fe080:	62 01 2c 48 58 e5    	vaddps zmm28,zmm10,zmm29
  9fe086:	62 f2 75 48 b8 ea    	vfmadd231ps zmm5,zmm1,zmm2
  9fe08c:	62 b1 24 40 58 cd    	vaddps zmm1,zmm27,zmm21
  9fe092:	62 71 7c 48 10 6c 24 	vmovups zmm13,ZMMWORD PTR [rsp+0x40]
  9fe099:	01 
  9fe09a:	62 41 14 48 59 f1    	vmulps zmm30,zmm13,zmm9
  9fe0a0:	62 62 5d 48 bc f6    	vfnmadd231ps zmm30,zmm4,zmm6
  9fe0a6:	62 d1 5c 48 59 e1    	vmulps zmm4,zmm4,zmm9
  9fe0ac:	62 91 1c 48 58 d2    	vaddps zmm2,zmm12,zmm26
  9fe0b2:	62 d2 4d 48 b8 e5    	vfmadd231ps zmm4,zmm6,zmm13
  9fe0b8:	62 b1 3c 40 58 f2    	vaddps zmm6,zmm24,zmm18
  9fe0be:	62 31 7c 40 58 f3    	vaddps zmm14,zmm16,zmm19
  9fe0c4:	62 11 1c 48 5c ca    	vsubps zmm9,zmm12,zmm26
  9fe0ca:	62 61 7c 48 58 d7    	vaddps zmm26,zmm0,zmm7
  9fe0d0:	62 71 7c 48 5c e7    	vsubps zmm12,zmm0,zmm7
  9fe0d6:	62 91 74 40 58 c6    	vaddps zmm0,zmm17,zmm30
  9fe0dc:	62 31 7c 40 5c fb    	vsubps zmm15,zmm16,zmm19
  9fe0e2:	62 f1 54 48 58 fc    	vaddps zmm7,zmm5,zmm4
  9fe0e8:	62 e1 54 48 5c c4    	vsubps zmm16,zmm5,zmm4
  9fe0ee:	62 a1 64 48 58 dc    	vaddps zmm19,zmm3,zmm20
  9fe0f4:	62 11 2c 48 5c ed    	vsubps zmm13,zmm10,zmm29
  9fe0fa:	62 01 34 40 58 ef    	vaddps zmm29,zmm25,zmm31
  9fe100:	62 01 34 40 5c cf    	vsubps zmm25,zmm25,zmm31
  9fe106:	62 21 4c 40 58 ff    	vaddps zmm31,zmm22,zmm23
  9fe10c:	62 a1 4c 40 5c f7    	vsubps zmm22,zmm22,zmm23
  9fe112:	62 c1 3c 48 58 fb    	vaddps zmm23,zmm8,zmm11
  9fe118:	62 81 6c 40 5c d0    	vsubps zmm18,zmm18,zmm24
  9fe11e:	62 b1 4c 40 58 e2    	vaddps zmm4,zmm22,zmm18
  9fe124:	62 41 3c 48 5c c3    	vsubps zmm24,zmm8,zmm11
  9fe12a:	62 a1 0c 40 5c c9    	vsubps zmm17,zmm30,zmm17
  9fe130:	62 b1 3c 40 58 e9    	vaddps zmm5,zmm24,zmm17
  9fe136:	62 61 5c 48 5c f5    	vsubps zmm30,zmm4,zmm5
  9fe13c:	62 f1 5c 48 58 e5    	vaddps zmm4,zmm4,zmm5
  9fe142:	62 51 34 48 58 c4    	vaddps zmm8,zmm9,zmm12
  9fe148:	62 e1 5c 40 5c e3    	vsubps zmm20,zmm20,zmm3
  9fe14e:	62 b1 04 48 58 d8    	vaddps zmm3,zmm15,zmm16
  9fe154:	62 81 54 40 5c eb    	vsubps zmm21,zmm21,zmm27
  9fe15a:	62 f1 3c 48 58 eb    	vaddps zmm5,zmm8,zmm3
  9fe160:	62 61 3c 48 5c db    	vsubps zmm27,zmm8,zmm3
  9fe166:	62 71 6c 48 58 de    	vaddps zmm11,zmm2,zmm6
  9fe16c:	62 f1 6c 48 5c d6    	vsubps zmm2,zmm2,zmm6
  9fe172:	62 71 0c 48 58 d0    	vaddps zmm10,zmm14,zmm0
  9fe178:	62 f1 0c 48 5c c0    	vsubps zmm0,zmm14,zmm0
  9fe17e:	62 f1 1c 40 58 d9    	vaddps zmm3,zmm28,zmm1
  9fe184:	62 f1 1c 40 5c c9    	vsubps zmm1,zmm28,zmm1
  9fe18a:	62 01 04 40 58 e2    	vaddps zmm28,zmm31,zmm26
  9fe190:	62 91 04 40 5c f2    	vsubps zmm6,zmm31,zmm26
  9fe196:	62 61 44 40 58 d7    	vaddps zmm26,zmm23,zmm7
  9fe19c:	62 71 44 40 5c c7    	vsubps zmm8,zmm23,zmm7
  9fe1a2:	62 d1 4c 48 5c f8    	vsubps zmm7,zmm6,zmm8
  9fe1a8:	62 c1 4c 48 58 f8    	vaddps zmm23,zmm6,zmm8
  9fe1ae:	62 b1 14 40 58 f3    	vaddps zmm6,zmm29,zmm19
  9fe1b4:	62 81 64 40 5c dd    	vsubps zmm19,zmm19,zmm29
  9fe1ba:	62 61 6c 48 58 e8    	vaddps zmm29,zmm2,zmm0
  9fe1c0:	62 f1 6c 48 5c c0    	vsubps zmm0,zmm2,zmm0
  9fe1c6:	62 11 14 48 58 f1    	vaddps zmm14,zmm13,zmm25
  9fe1cc:	62 91 14 48 5c d1    	vsubps zmm2,zmm13,zmm25
  9fe1d2:	62 51 24 48 58 c2    	vaddps zmm8,zmm11,zmm10
  9fe1d8:	62 51 34 48 5c e4    	vsubps zmm12,zmm9,zmm12
  9fe1de:	62 11 1c 40 58 ca    	vaddps zmm9,zmm28,zmm26
  9fe1e4:	62 31 04 48 5c f8    	vsubps zmm15,zmm15,zmm16
  9fe1ea:	62 a1 54 40 58 c4    	vaddps zmm16,zmm21,zmm20
  9fe1f0:	62 a1 5c 40 5c e5    	vsubps zmm20,zmm20,zmm21
  9fe1f6:	62 62 7d 48 18 3d 60 	vbroadcastss zmm31,DWORD PTR [rip+0xffffffffff677260]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  9fe1fd:	72 67 ff 
  9fe200:	62 81 7c 48 28 ef    	vmovaps zmm21,zmm31
  9fe206:	62 c2 55 48 ac ee    	vfnmadd213ps zmm21,zmm5,zmm14
  9fe20c:	62 72 7d 48 18 2d be 	vbroadcastss zmm13,DWORD PTR [rip+0xffffffffff6770be]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  9fe213:	70 67 ff 
  9fe216:	62 41 0c 40 59 cd    	vmulps zmm25,zmm30,zmm13
  9fe21c:	62 a1 4c 40 5c d2    	vsubps zmm18,zmm22,zmm18
  9fe222:	62 01 54 40 58 f1    	vaddps zmm30,zmm21,zmm25
  9fe228:	62 a1 3c 40 5c c9    	vsubps zmm17,zmm24,zmm17
  9fe22e:	62 81 7c 48 28 f7    	vmovaps zmm22,zmm31
  9fe234:	62 a2 5d 48 ac f0    	vfnmadd213ps zmm22,zmm4,zmm16
  9fe23a:	62 41 24 40 59 c5    	vmulps zmm24,zmm27,zmm13
  9fe240:	62 01 1c 40 5c d2    	vsubps zmm26,zmm28,zmm26
  9fe246:	62 01 4c 40 5c d8    	vsubps zmm27,zmm22,zmm24
  9fe24c:	62 51 24 48 5c d2    	vsubps zmm10,zmm11,zmm10
  9fe252:	62 11 7c 48 28 df    	vmovaps zmm11,zmm31
  9fe258:	62 72 15 40 ac d9    	vfnmadd213ps zmm11,zmm29,zmm1
  9fe25e:	62 81 54 40 5c e9    	vsubps zmm21,zmm21,zmm25
  9fe264:	62 01 7c 48 28 cf    	vmovaps zmm25,zmm31
  9fe26a:	62 22 45 40 ac cb    	vfnmadd213ps zmm25,zmm23,zmm19
  9fe270:	62 81 4c 40 58 f0    	vaddps zmm22,zmm22,zmm24
  9fe276:	62 41 1c 48 58 c7    	vaddps zmm24,zmm12,zmm15
  9fe27c:	62 91 74 48 58 cd    	vaddps zmm1,zmm1,zmm29
  9fe282:	62 01 6c 48 58 e0    	vaddps zmm28,zmm2,zmm24
  9fe288:	62 a1 64 40 58 df    	vaddps zmm19,zmm19,zmm23
  9fe28e:	62 a1 6c 40 58 f9    	vaddps zmm23,zmm18,zmm17
  9fe294:	62 62 05 40 ac c2    	vfnmadd213ps zmm24,zmm31,zmm2
  9fe29a:	62 b1 5c 40 58 d7    	vaddps zmm2,zmm20,zmm23
  9fe2a0:	62 a1 6c 40 5c c9    	vsubps zmm17,zmm18,zmm17
  9fe2a6:	62 81 7c 48 28 d7    	vmovaps zmm18,zmm31
  9fe2ac:	62 e2 3d 48 ac d3    	vfnmadd213ps zmm18,zmm8,zmm3
  9fe2b2:	62 41 2c 40 59 d5    	vmulps zmm26,zmm26,zmm13
  9fe2b8:	62 a2 05 40 ac fc    	vfnmadd213ps zmm23,zmm31,zmm20
  9fe2be:	62 81 6c 40 58 e2    	vaddps zmm20,zmm18,zmm26
  9fe2c4:	62 51 1c 48 5c e7    	vsubps zmm12,zmm12,zmm15
  9fe2ca:	62 11 7c 48 28 ff    	vmovaps zmm15,zmm31
  9fe2d0:	62 72 35 48 ac fe    	vfnmadd213ps zmm15,zmm9,zmm6
  9fe2d6:	62 51 2c 48 59 d5    	vmulps zmm10,zmm10,zmm13
  9fe2dc:	62 81 6c 40 5c d2    	vsubps zmm18,zmm18,zmm26
  9fe2e2:	62 41 04 48 5c d2    	vsubps zmm26,zmm15,zmm10
  9fe2e8:	62 51 04 48 58 d2    	vaddps zmm10,zmm15,zmm10
  9fe2ee:	62 f1 0c 48 58 ed    	vaddps zmm5,zmm14,zmm5
  9fe2f4:	62 d1 44 48 59 fd    	vmulps zmm7,zmm7,zmm13
  9fe2fa:	62 f1 7c 40 58 e4    	vaddps zmm4,zmm16,zmm4
  9fe300:	62 71 24 48 5c f7    	vsubps zmm14,zmm11,zmm7
  9fe306:	62 d1 7c 48 59 c5    	vmulps zmm0,zmm0,zmm13
  9fe30c:	62 f1 24 48 58 ff    	vaddps zmm7,zmm11,zmm7
  9fe312:	62 71 34 40 58 d8    	vaddps zmm11,zmm25,zmm0
  9fe318:	62 51 74 40 59 fd    	vmulps zmm15,zmm17,zmm13
  9fe31e:	62 f1 34 40 5c c0    	vsubps zmm0,zmm25,zmm0
  9fe324:	62 c1 3c 40 58 c7    	vaddps zmm16,zmm24,zmm15
  9fe32a:	62 51 1c 48 59 e5    	vmulps zmm12,zmm12,zmm13
  9fe330:	62 51 3c 40 5c ff    	vsubps zmm15,zmm24,zmm15
  9fe336:	62 c1 44 40 5c cc    	vsubps zmm17,zmm23,zmm12
  9fe33c:	62 51 44 40 58 e4    	vaddps zmm12,zmm23,zmm12
  9fe342:	62 d1 64 48 58 d8    	vaddps zmm3,zmm3,zmm8
  9fe348:	62 d1 4c 48 58 f1    	vaddps zmm6,zmm6,zmm9
  9fe34e:	62 71 7c 48 28 05 68 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff68f968]        # 8dcc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b170>
  9fe355:	f9 68 ff 
  9fe358:	62 f2 3d 48 7f de    	vpermt2ps zmm3,zmm8,zmm6
  9fe35e:	62 f1 7c 48 11 1c 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm3
  9fe365:	62 02 3d 48 7f f3    	vpermt2ps zmm30,zmm8,zmm27
  9fe36b:	62 61 7c 48 11 74 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x40],zmm30
  9fe372:	01 
  9fe373:	62 52 3d 48 7f f3    	vpermt2ps zmm14,zmm8,zmm11
  9fe379:	62 71 7c 48 11 74 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x80],zmm14
  9fe380:	02 
  9fe381:	62 62 3d 48 7f e2    	vpermt2ps zmm28,zmm8,zmm2
  9fe387:	62 61 7c 48 11 64 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xc0],zmm28
  9fe38e:	03 
  9fe38f:	62 82 3d 48 7f e2    	vpermt2ps zmm20,zmm8,zmm26
  9fe395:	62 e1 7c 48 11 64 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x100],zmm20
  9fe39c:	04 
  9fe39d:	62 a2 3d 48 7f ee    	vpermt2ps zmm21,zmm8,zmm22
  9fe3a3:	62 e1 7c 48 11 6c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x140],zmm21
  9fe3aa:	05 
  9fe3ab:	62 b2 3d 48 7f cb    	vpermt2ps zmm1,zmm8,zmm19
  9fe3b1:	62 f1 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x180],zmm1
  9fe3b8:	06 
  9fe3b9:	62 a2 3d 48 7f c1    	vpermt2ps zmm16,zmm8,zmm17
  9fe3bf:	62 e1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1c0],zmm16
  9fe3c6:	07 
  9fe3c7:	62 c2 3d 48 7f d2    	vpermt2ps zmm18,zmm8,zmm10
  9fe3cd:	62 e1 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x200],zmm18
  9fe3d4:	08 
  9fe3d5:	62 f2 3d 48 7f ec    	vpermt2ps zmm5,zmm8,zmm4
  9fe3db:	62 f1 7c 48 11 6c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x240],zmm5
  9fe3e2:	09 
  9fe3e3:	62 f2 3d 48 7f f8    	vpermt2ps zmm7,zmm8,zmm0
  9fe3e9:	62 f1 7c 48 11 7c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x280],zmm7
  9fe3f0:	0a 
  9fe3f1:	62 52 3d 48 7f fc    	vpermt2ps zmm15,zmm8,zmm12
  9fe3f7:	62 71 7c 48 11 7c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x2c0],zmm15
  9fe3fe:	0b 
  9fe3ff:	48 81 c2 00 03 00 00 	add    rdx,0x300
  9fe406:	48 39 d0             	cmp    rax,rdx
  9fe409:	0f 85 91 f4 ff ff    	jne    9fd8a0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x20>
  9fe40f:	48 81 c4 c8 00 00 00 	add    rsp,0xc8
  9fe416:	c5 f8 77             	vzeroupper
  9fe419:	c3                   	ret
