
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a0b980 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a0b980:	62 f1 7c 48 28 05 f6 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6bb5f6]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a0b987:	b5 6b ff 
  a0b98a:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  a0b98e:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a0b992:	62 f2 7d 48 7f d2    	vpermt2ps zmm2,zmm0,zmm2
  a0b998:	62 f1 7c 48 28 1d 5e 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff6bb55e]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a0b99f:	b5 6b ff 
  a0b9a2:	62 f1 7c 48 28 25 94 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff6bb594]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a0b9a9:	b5 6b ff 
  a0b9ac:	62 e1 7c 48 28 3d 4a 	vmovaps zmm23,ZMMWORD PTR [rip+0xffffffffff6bb44a]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a0b9b3:	b4 6b ff 
  a0b9b6:	62 61 7c 48 28 05 80 	vmovaps zmm24,ZMMWORD PTR [rip+0xffffffffff6bb480]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a0b9bd:	b4 6b ff 
  a0b9c0:	48 c1 e2 05          	shl    rdx,0x5
  a0b9c4:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  a0b9c8:	31 d2                	xor    edx,edx
  a0b9ca:	62 61 7c 48 28 0d 6c 	vmovaps zmm25,ZMMWORD PTR [rip+0xffffffffff68316c]        # 8eb40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1bff0>
  a0b9d1:	31 68 ff 
  a0b9d4:	62 72 7d 48 18 05 82 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff669a82]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a0b9db:	9a 66 ff 
  a0b9de:	62 61 7c 48 28 15 98 	vmovaps zmm26,ZMMWORD PTR [rip+0xffffffffff683198]        # 8eb80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c030>
  a0b9e5:	31 68 ff 
  a0b9e8:	62 72 7d 48 18 15 e2 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff6698e2]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a0b9ef:	98 66 ff 
  a0b9f2:	62 61 7c 48 28 1d c4 	vmovaps zmm27,ZMMWORD PTR [rip+0xffffffffff6831c4]        # 8ebc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c070>
  a0b9f9:	31 68 ff 
  a0b9fc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  a0ba00:	c5 7c 10 24 17       	vmovups ymm12,YMMWORD PTR [rdi+rdx*1]
  a0ba05:	c5 78 10 6c 17 20    	vmovups xmm13,XMMWORD PTR [rdi+rdx*1+0x20]
  a0ba0b:	c4 63 11 21 6c 17 24 	vinsertps xmm13,xmm13,DWORD PTR [rdi+rdx*1+0x24],0x10
  a0ba12:	10 
  a0ba13:	c4 62 79 18 74 17 28 	vbroadcastss xmm14,DWORD PTR [rdi+rdx*1+0x28]
  a0ba1a:	c4 43 09 0c ed 03    	vblendps xmm13,xmm14,xmm13,0x3
  a0ba20:	c4 63 11 21 6c 17 2c 	vinsertps xmm13,xmm13,DWORD PTR [rdi+rdx*1+0x2c],0x30
  a0ba27:	30 
  a0ba28:	62 53 1d 48 18 ed 02 	vinsertf32x4 zmm13,zmm12,xmm13,0x2
  a0ba2f:	62 51 7c 48 28 e5    	vmovaps zmm12,zmm13
  a0ba35:	62 72 35 40 7f e1    	vpermt2ps zmm12,zmm25,zmm1
  a0ba3b:	62 72 2d 40 7f e9    	vpermt2ps zmm13,zmm26,zmm1
  a0ba41:	c5 78 10 74 17 50    	vmovups xmm14,XMMWORD PTR [rdi+rdx*1+0x50]
  a0ba47:	c4 63 09 21 74 17 54 	vinsertps xmm14,xmm14,DWORD PTR [rdi+rdx*1+0x54],0x10
  a0ba4e:	10 
  a0ba4f:	c4 62 79 18 7c 17 58 	vbroadcastss xmm15,DWORD PTR [rdi+rdx*1+0x58]
  a0ba56:	62 e1 7c 28 10 84 17 	vmovups ymm16,YMMWORD PTR [rdi+rdx*1+0x30]
  a0ba5d:	30 00 00 00 
  a0ba61:	c4 43 01 0c f6 03    	vblendps xmm14,xmm15,xmm14,0x3
  a0ba67:	c4 63 09 21 74 17 5c 	vinsertps xmm14,xmm14,DWORD PTR [rdi+rdx*1+0x5c],0x30
  a0ba6e:	30 
  a0ba6f:	62 53 7d 40 18 f6 02 	vinsertf32x4 zmm14,zmm16,xmm14,0x2
  a0ba76:	62 51 7c 48 28 fe    	vmovaps zmm15,zmm14
  a0ba7c:	62 72 35 40 7f f9    	vpermt2ps zmm15,zmm25,zmm1
  a0ba82:	62 e1 7c 08 10 44 17 	vmovups xmm16,XMMWORD PTR [rdi+rdx*1+0x80]
  a0ba89:	08 
  a0ba8a:	62 f3 7d 00 21 6c 17 	vinsertps xmm5,xmm16,DWORD PTR [rdi+rdx*1+0x84],0x10
  a0ba91:	21 10 
  a0ba93:	c4 e2 79 18 b4 17 88 	vbroadcastss xmm6,DWORD PTR [rdi+rdx*1+0x88]
  a0ba9a:	00 00 00 
  a0ba9d:	62 72 2d 40 7f f1    	vpermt2ps zmm14,zmm26,zmm1
  a0baa3:	c4 e3 49 0c ed 03    	vblendps xmm5,xmm6,xmm5,0x3
  a0baa9:	c4 e3 51 21 ac 17 8c 	vinsertps xmm5,xmm5,DWORD PTR [rdi+rdx*1+0x8c],0x30
  a0bab0:	00 00 00 30 
  a0bab4:	c5 fc 10 74 17 60    	vmovups ymm6,YMMWORD PTR [rdi+rdx*1+0x60]
  a0baba:	62 e3 4d 48 18 d5 02 	vinsertf32x4 zmm18,zmm6,xmm5,0x2
  a0bac1:	62 b1 7c 48 28 ea    	vmovaps zmm5,zmm18
  a0bac7:	62 f2 35 40 7f e9    	vpermt2ps zmm5,zmm25,zmm1
  a0bacd:	62 e2 2d 40 7f d1    	vpermt2ps zmm18,zmm26,zmm1
  a0bad3:	c5 f8 10 b4 17 b0 00 	vmovups xmm6,XMMWORD PTR [rdi+rdx*1+0xb0]
  a0bada:	00 00 
  a0badc:	c4 e3 49 21 b4 17 b4 	vinsertps xmm6,xmm6,DWORD PTR [rdi+rdx*1+0xb4],0x10
  a0bae3:	00 00 00 10 
  a0bae7:	62 e1 7c 28 10 84 17 	vmovups ymm16,YMMWORD PTR [rdi+rdx*1+0x90]
  a0baee:	90 00 00 00 
  a0baf2:	c4 e2 79 18 bc 17 b8 	vbroadcastss xmm7,DWORD PTR [rdi+rdx*1+0xb8]
  a0baf9:	00 00 00 
  a0bafc:	c4 e3 41 0c f6 03    	vblendps xmm6,xmm7,xmm6,0x3
  a0bb02:	c4 e3 49 21 b4 17 bc 	vinsertps xmm6,xmm6,DWORD PTR [rdi+rdx*1+0xbc],0x30
  a0bb09:	00 00 00 30 
  a0bb0d:	62 e3 7d 40 18 ce 02 	vinsertf32x4 zmm17,zmm16,xmm6,0x2
  a0bb14:	62 a1 7c 48 28 c1    	vmovaps zmm16,zmm17
  a0bb1a:	62 e2 35 40 7f c1    	vpermt2ps zmm16,zmm25,zmm1
  a0bb20:	62 e2 2d 40 7f c9    	vpermt2ps zmm17,zmm26,zmm1
  a0bb26:	c5 fc 10 b4 17 c0 00 	vmovups ymm6,YMMWORD PTR [rdi+rdx*1+0xc0]
  a0bb2d:	00 00 
  a0bb2f:	c5 f8 10 bc 17 e0 00 	vmovups xmm7,XMMWORD PTR [rdi+rdx*1+0xe0]
  a0bb36:	00 00 
  a0bb38:	c4 e3 41 21 bc 17 e4 	vinsertps xmm7,xmm7,DWORD PTR [rdi+rdx*1+0xe4],0x10
  a0bb3f:	00 00 00 10 
  a0bb43:	c4 62 79 18 8c 17 e8 	vbroadcastss xmm9,DWORD PTR [rdi+rdx*1+0xe8]
  a0bb4a:	00 00 00 
  a0bb4d:	c4 e3 31 0c ff 03    	vblendps xmm7,xmm9,xmm7,0x3
  a0bb53:	c4 e3 41 21 bc 17 ec 	vinsertps xmm7,xmm7,DWORD PTR [rdi+rdx*1+0xec],0x30
  a0bb5a:	00 00 00 30 
  a0bb5e:	62 f3 4d 48 18 f7 02 	vinsertf32x4 zmm6,zmm6,xmm7,0x2
  a0bb65:	62 f1 7c 48 28 fe    	vmovaps zmm7,zmm6
  a0bb6b:	62 f2 35 40 7f f9    	vpermt2ps zmm7,zmm25,zmm1
  a0bb71:	62 f2 2d 40 7f f1    	vpermt2ps zmm6,zmm26,zmm1
  a0bb77:	c5 78 10 8c 17 10 01 	vmovups xmm9,XMMWORD PTR [rdi+rdx*1+0x110]
  a0bb7e:	00 00 
  a0bb80:	c4 63 31 21 8c 17 14 	vinsertps xmm9,xmm9,DWORD PTR [rdi+rdx*1+0x114],0x10
  a0bb87:	01 00 00 10 
  a0bb8b:	c4 62 79 18 9c 17 18 	vbroadcastss xmm11,DWORD PTR [rdi+rdx*1+0x118]
  a0bb92:	01 00 00 
  a0bb95:	62 e1 7c 28 10 9c 17 	vmovups ymm19,YMMWORD PTR [rdi+rdx*1+0xf0]
  a0bb9c:	f0 00 00 00 
  a0bba0:	c4 43 21 0c c9 03    	vblendps xmm9,xmm11,xmm9,0x3
  a0bba6:	c4 63 31 21 8c 17 1c 	vinsertps xmm9,xmm9,DWORD PTR [rdi+rdx*1+0x11c],0x30
  a0bbad:	01 00 00 30 
  a0bbb1:	62 53 65 40 18 c9 02 	vinsertf32x4 zmm9,zmm19,xmm9,0x2
  a0bbb8:	62 51 7c 48 28 d9    	vmovaps zmm11,zmm9
  a0bbbe:	62 72 35 40 7f d9    	vpermt2ps zmm11,zmm25,zmm1
  a0bbc4:	62 72 2d 40 7f c9    	vpermt2ps zmm9,zmm26,zmm1
  a0bbca:	62 e1 6c 40 58 de    	vaddps zmm19,zmm18,zmm6
  a0bbd0:	62 a1 14 48 58 e3    	vaddps zmm20,zmm13,zmm19
  a0bbd6:	62 c1 34 48 58 ee    	vaddps zmm21,zmm9,zmm14
  a0bbdc:	62 32 3d 48 bc eb    	vfnmadd231ps zmm13,zmm8,zmm19
  a0bbe2:	62 e1 54 48 58 df    	vaddps zmm19,zmm5,zmm7
  a0bbe8:	62 f1 54 48 5c ef    	vsubps zmm5,zmm5,zmm7
  a0bbee:	62 b1 74 40 58 fd    	vaddps zmm7,zmm17,zmm21
  a0bbf4:	62 a2 3d 48 bc cd    	vfnmadd231ps zmm17,zmm8,zmm21
  a0bbfa:	62 c1 24 48 58 ef    	vaddps zmm21,zmm11,zmm15
  a0bc00:	62 51 24 48 5c df    	vsubps zmm11,zmm11,zmm15
  a0bc06:	62 a1 1c 48 58 f3    	vaddps zmm22,zmm12,zmm19
  a0bc0c:	62 32 3d 48 bc e3    	vfnmadd231ps zmm12,zmm8,zmm19
  a0bc12:	62 61 5c 40 58 e7    	vaddps zmm28,zmm20,zmm7
  a0bc18:	62 f1 6c 40 5c f6    	vsubps zmm6,zmm18,zmm6
  a0bc1e:	62 a1 7c 40 58 d5    	vaddps zmm18,zmm16,zmm21
  a0bc24:	62 a2 3d 48 bc c5    	vfnmadd231ps zmm16,zmm8,zmm21
  a0bc2a:	62 31 4c 40 58 fa    	vaddps zmm15,zmm22,zmm18
  a0bc30:	62 d1 54 48 59 ea    	vmulps zmm5,zmm5,zmm10
  a0bc36:	62 51 34 48 5c ce    	vsubps zmm9,zmm9,zmm14
  a0bc3c:	62 71 14 48 58 f5    	vaddps zmm14,zmm13,zmm5
  a0bc42:	62 51 24 48 59 da    	vmulps zmm11,zmm11,zmm10
  a0bc48:	62 f1 14 48 5c ed    	vsubps zmm5,zmm13,zmm5
  a0bc4e:	62 51 74 40 58 eb    	vaddps zmm13,zmm17,zmm11
  a0bc54:	62 d1 4c 48 59 f2    	vmulps zmm6,zmm6,zmm10
  a0bc5a:	62 51 74 40 5c db    	vsubps zmm11,zmm17,zmm11
  a0bc60:	62 e1 1c 48 5c ce    	vsubps zmm17,zmm12,zmm6
  a0bc66:	62 51 34 48 59 ca    	vmulps zmm9,zmm9,zmm10
  a0bc6c:	62 d1 4c 48 58 f4    	vaddps zmm6,zmm6,zmm12
  a0bc72:	62 51 7c 40 5c e1    	vsubps zmm12,zmm16,zmm9
  a0bc78:	62 31 34 48 58 c8    	vaddps zmm9,zmm9,zmm16
  a0bc7e:	62 c1 0c 48 5c c5    	vsubps zmm16,zmm14,zmm13
  a0bc84:	62 f1 5c 40 5c ff    	vsubps zmm7,zmm20,zmm7
  a0bc8a:	62 c1 74 40 5c dc    	vsubps zmm19,zmm17,zmm12
  a0bc90:	62 a1 4c 40 5c e2    	vsubps zmm20,zmm22,zmm18
  a0bc96:	62 c1 54 48 58 d3    	vaddps zmm18,zmm5,zmm11
  a0bc9c:	62 51 0c 48 58 ed    	vaddps zmm13,zmm14,zmm13
  a0bca2:	62 c1 4c 48 58 e9    	vaddps zmm21,zmm6,zmm9
  a0bca8:	62 41 74 40 58 ec    	vaddps zmm29,zmm17,zmm12
  a0bcae:	62 d1 54 48 5c eb    	vsubps zmm5,zmm5,zmm11
  a0bcb4:	62 c1 4c 48 5c f1    	vsubps zmm22,zmm6,zmm9
  a0bcba:	62 62 7d 48 7f e1    	vpermt2ps zmm28,zmm0,zmm1
  a0bcc0:	62 e2 7d 48 7f c1    	vpermt2ps zmm16,zmm0,zmm1
  a0bcc6:	62 e2 7d 48 7f d1    	vpermt2ps zmm18,zmm0,zmm1
  a0bccc:	62 f2 7d 48 7f f9    	vpermt2ps zmm7,zmm0,zmm1
  a0bcd2:	62 72 7d 48 7f e9    	vpermt2ps zmm13,zmm0,zmm1
  a0bcd8:	62 f2 7d 48 7f e9    	vpermt2ps zmm5,zmm0,zmm1
  a0bcde:	62 91 7c 48 28 f4    	vmovaps zmm6,zmm28
  a0bce4:	62 d2 65 48 7f f5    	vpermt2ps zmm6,zmm3,zmm13
  a0bcea:	62 42 5d 48 7f e5    	vpermt2ps zmm28,zmm4,zmm13
  a0bcf0:	62 31 7c 48 28 c8    	vmovaps zmm9,zmm16
  a0bcf6:	62 72 65 48 7f cd    	vpermt2ps zmm9,zmm3,zmm5
  a0bcfc:	62 e2 5d 48 7f c5    	vpermt2ps zmm16,zmm4,zmm5
  a0bd02:	62 b1 7c 48 28 ea    	vmovaps zmm5,zmm18
  a0bd08:	62 f2 65 48 7f ea    	vpermt2ps zmm5,zmm3,zmm2
  a0bd0e:	62 e2 5d 48 7f d2    	vpermt2ps zmm18,zmm4,zmm2
  a0bd14:	62 31 9d 40 14 f2    	vunpcklpd zmm14,zmm28,zmm18
  a0bd1a:	62 71 7c 48 28 df    	vmovaps zmm11,zmm7
  a0bd20:	62 72 65 48 7f da    	vpermt2ps zmm11,zmm3,zmm2
  a0bd26:	62 f2 5d 48 7f fa    	vpermt2ps zmm7,zmm4,zmm2
  a0bd2c:	62 f1 fd 40 14 ff    	vunpcklpd zmm7,zmm16,zmm7
  a0bd32:	62 71 cd 48 14 ed    	vunpcklpd zmm13,zmm6,zmm5
  a0bd38:	62 e1 cd 48 15 c5    	vunpckhpd zmm16,zmm6,zmm5
  a0bd3e:	62 d1 b5 48 14 eb    	vunpcklpd zmm5,zmm9,zmm11
  a0bd44:	62 d1 b5 48 15 f3    	vunpckhpd zmm6,zmm9,zmm11
  a0bd4a:	62 51 7c 48 28 e5    	vmovaps zmm12,zmm13
  a0bd50:	62 72 45 40 7f e5    	vpermt2ps zmm12,zmm23,zmm5
  a0bd56:	62 72 3d 40 7f ed    	vpermt2ps zmm13,zmm24,zmm5
  a0bd5c:	62 a1 7c 48 28 d0    	vmovaps zmm18,zmm16
  a0bd62:	62 e2 45 40 7f d6    	vpermt2ps zmm18,zmm23,zmm6
  a0bd68:	62 e2 3d 40 7f c6    	vpermt2ps zmm16,zmm24,zmm6
  a0bd6e:	62 c1 7c 48 28 ce    	vmovaps zmm17,zmm14
  a0bd74:	62 e2 45 40 7f cf    	vpermt2ps zmm17,zmm23,zmm7
  a0bd7a:	62 72 3d 40 7f f7    	vpermt2ps zmm14,zmm24,zmm7
  a0bd80:	62 72 7d 48 7f f9    	vpermt2ps zmm15,zmm0,zmm1
  a0bd86:	62 e2 7d 48 7f d9    	vpermt2ps zmm19,zmm0,zmm1
  a0bd8c:	62 e2 7d 48 7f e9    	vpermt2ps zmm21,zmm0,zmm1
  a0bd92:	62 e2 7d 48 7f e1    	vpermt2ps zmm20,zmm0,zmm1
  a0bd98:	62 62 7d 48 7f e9    	vpermt2ps zmm29,zmm0,zmm1
  a0bd9e:	62 e2 7d 48 7f f1    	vpermt2ps zmm22,zmm0,zmm1
  a0bda4:	62 d1 7c 48 28 ef    	vmovaps zmm5,zmm15
  a0bdaa:	62 92 65 48 7f ed    	vpermt2ps zmm5,zmm3,zmm29
  a0bdb0:	62 12 5d 48 7f fd    	vpermt2ps zmm15,zmm4,zmm29
  a0bdb6:	62 b1 7c 48 28 f3    	vmovaps zmm6,zmm19
  a0bdbc:	62 b2 65 48 7f f6    	vpermt2ps zmm6,zmm3,zmm22
  a0bdc2:	62 a2 5d 48 7f de    	vpermt2ps zmm19,zmm4,zmm22
  a0bdc8:	62 b1 7c 48 28 fd    	vmovaps zmm7,zmm21
  a0bdce:	62 f2 65 48 7f fa    	vpermt2ps zmm7,zmm3,zmm2
  a0bdd4:	62 e2 5d 48 7f ea    	vpermt2ps zmm21,zmm4,zmm2
  a0bdda:	62 a1 85 48 14 ed    	vunpcklpd zmm21,zmm15,zmm21
  a0bde0:	62 31 7c 48 28 cc    	vmovaps zmm9,zmm20
  a0bde6:	62 72 65 48 7f ca    	vpermt2ps zmm9,zmm3,zmm2
  a0bdec:	62 e2 5d 48 7f e2    	vpermt2ps zmm20,zmm4,zmm2
  a0bdf2:	62 31 e5 40 14 dc    	vunpcklpd zmm11,zmm19,zmm20
  a0bdf8:	62 e1 d5 48 14 df    	vunpcklpd zmm19,zmm5,zmm7
  a0bdfe:	62 f1 d5 48 15 ef    	vunpckhpd zmm5,zmm5,zmm7
  a0be04:	62 d1 cd 48 14 f9    	vunpcklpd zmm7,zmm6,zmm9
  a0be0a:	62 d1 cd 48 15 f1    	vunpckhpd zmm6,zmm6,zmm9
  a0be10:	62 31 7c 48 28 fb    	vmovaps zmm15,zmm19
  a0be16:	62 72 45 40 7f ff    	vpermt2ps zmm15,zmm23,zmm7
  a0be1c:	62 e2 3d 40 7f df    	vpermt2ps zmm19,zmm24,zmm7
  a0be22:	62 f1 7c 48 28 fd    	vmovaps zmm7,zmm5
  a0be28:	62 f2 45 40 7f fe    	vpermt2ps zmm7,zmm23,zmm6
  a0be2e:	62 f2 3d 40 7f ee    	vpermt2ps zmm5,zmm24,zmm6
  a0be34:	62 b1 7c 48 28 f5    	vmovaps zmm6,zmm21
  a0be3a:	62 d2 45 40 7f f3    	vpermt2ps zmm6,zmm23,zmm11
  a0be40:	62 c2 3d 40 7f eb    	vpermt2ps zmm21,zmm24,zmm11
  a0be46:	62 71 7c 48 10 49 04 	vmovups zmm9,ZMMWORD PTR [rcx+0x100]
  a0be4d:	62 71 7c 48 10 59 05 	vmovups zmm11,ZMMWORD PTR [rcx+0x140]
  a0be54:	62 c1 6c 40 59 e1    	vmulps zmm20,zmm18,zmm9
  a0be5a:	62 c2 45 48 bc e3    	vfnmadd231ps zmm20,zmm7,zmm11
  a0be60:	62 d1 44 48 59 f9    	vmulps zmm7,zmm7,zmm9
  a0be66:	62 71 7c 48 10 49 08 	vmovups zmm9,ZMMWORD PTR [rcx+0x200]
  a0be6d:	62 b2 25 48 b8 fa    	vfmadd231ps zmm7,zmm11,zmm18
  a0be73:	62 71 7c 48 10 59 09 	vmovups zmm11,ZMMWORD PTR [rcx+0x240]
  a0be7a:	62 c1 74 40 59 d1    	vmulps zmm18,zmm17,zmm9
  a0be80:	62 c2 4d 48 bc d3    	vfnmadd231ps zmm18,zmm6,zmm11
  a0be86:	62 d1 4c 48 59 f1    	vmulps zmm6,zmm6,zmm9
  a0be8c:	62 71 7c 48 10 49 06 	vmovups zmm9,ZMMWORD PTR [rcx+0x180]
  a0be93:	62 b2 25 48 b8 f1    	vfmadd231ps zmm6,zmm11,zmm17
  a0be99:	62 71 7c 48 10 59 07 	vmovups zmm11,ZMMWORD PTR [rcx+0x1c0]
  a0bea0:	62 c1 7c 40 59 c9    	vmulps zmm17,zmm16,zmm9
  a0bea6:	62 c2 55 48 bc cb    	vfnmadd231ps zmm17,zmm5,zmm11
  a0beac:	62 d1 54 48 59 e9    	vmulps zmm5,zmm5,zmm9
  a0beb2:	62 71 7c 48 10 49 0a 	vmovups zmm9,ZMMWORD PTR [rcx+0x280]
  a0beb9:	62 b2 25 48 b8 e8    	vfmadd231ps zmm5,zmm11,zmm16
  a0bebf:	62 71 7c 48 10 59 0b 	vmovups zmm11,ZMMWORD PTR [rcx+0x2c0]
  a0bec6:	62 c1 0c 48 59 c1    	vmulps zmm16,zmm14,zmm9
  a0becc:	62 c2 55 40 bc c3    	vfnmadd231ps zmm16,zmm21,zmm11
  a0bed2:	62 51 54 40 59 c9    	vmulps zmm9,zmm21,zmm9
  a0bed8:	62 e1 7c 48 10 69 02 	vmovups zmm21,ZMMWORD PTR [rcx+0x80]
  a0bedf:	62 52 25 48 b8 ce    	vfmadd231ps zmm9,zmm11,zmm14
  a0bee5:	62 71 7c 48 10 59 03 	vmovups zmm11,ZMMWORD PTR [rcx+0xc0]
  a0beec:	62 31 14 48 59 f5    	vmulps zmm14,zmm13,zmm21
  a0bef2:	62 52 65 40 bc f3    	vfnmadd231ps zmm14,zmm19,zmm11
  a0bef8:	62 a1 64 40 59 dd    	vmulps zmm19,zmm19,zmm21
  a0befe:	62 a1 5c 40 58 ea    	vaddps zmm21,zmm20,zmm18
  a0bf04:	62 c2 25 48 b8 dd    	vfmadd231ps zmm19,zmm11,zmm13
  a0bf0a:	62 31 1c 48 58 dd    	vaddps zmm11,zmm12,zmm21
  a0bf10:	62 51 7c 40 58 ee    	vaddps zmm13,zmm16,zmm14
  a0bf16:	62 32 3d 48 bc e5    	vfnmadd231ps zmm12,zmm8,zmm21
  a0bf1c:	62 e1 44 48 58 ee    	vaddps zmm21,zmm7,zmm6
  a0bf22:	62 f1 44 48 5c f6    	vsubps zmm6,zmm7,zmm6
  a0bf28:	62 d1 74 40 58 fd    	vaddps zmm7,zmm17,zmm13
  a0bf2e:	62 c2 3d 48 bc cd    	vfnmadd231ps zmm17,zmm8,zmm13
  a0bf34:	62 31 34 48 58 eb    	vaddps zmm13,zmm9,zmm19
  a0bf3a:	62 31 34 48 5c cb    	vsubps zmm9,zmm9,zmm19
  a0bf40:	62 c1 54 40 58 df    	vaddps zmm19,zmm21,zmm15
  a0bf46:	62 32 3d 48 bc fd    	vfnmadd231ps zmm15,zmm8,zmm21
  a0bf4c:	62 a1 5c 40 5c d2    	vsubps zmm18,zmm20,zmm18
  a0bf52:	62 c1 54 48 58 e5    	vaddps zmm20,zmm5,zmm13
  a0bf58:	62 d2 3d 48 bc ed    	vfnmadd231ps zmm5,zmm8,zmm13
  a0bf5e:	62 d1 4c 48 59 f2    	vmulps zmm6,zmm6,zmm10
  a0bf64:	62 51 7c 40 5c ee    	vsubps zmm13,zmm16,zmm14
  a0bf6a:	62 71 1c 48 58 f6    	vaddps zmm14,zmm12,zmm6
  a0bf70:	62 51 34 48 59 ca    	vmulps zmm9,zmm9,zmm10
  a0bf76:	62 f1 1c 48 5c f6    	vsubps zmm6,zmm12,zmm6
  a0bf7c:	62 51 74 40 58 e1    	vaddps zmm12,zmm17,zmm9
  a0bf82:	62 c1 6c 40 59 c2    	vmulps zmm16,zmm18,zmm10
  a0bf88:	62 51 74 40 5c c9    	vsubps zmm9,zmm17,zmm9
  a0bf8e:	62 a1 04 48 5c c8    	vsubps zmm17,zmm15,zmm16
  a0bf94:	62 51 14 48 59 ea    	vmulps zmm13,zmm13,zmm10
  a0bf9a:	62 51 7c 40 58 ff    	vaddps zmm15,zmm16,zmm15
  a0bfa0:	62 c1 54 48 5c c5    	vsubps zmm16,zmm5,zmm13
  a0bfa6:	62 d1 54 48 58 ed    	vaddps zmm5,zmm5,zmm13
  a0bfac:	62 51 0c 48 5c ec    	vsubps zmm13,zmm14,zmm12
  a0bfb2:	62 51 0c 48 58 e4    	vaddps zmm12,zmm14,zmm12
  a0bfb8:	62 31 74 40 5c f0    	vsubps zmm14,zmm17,zmm16
  a0bfbe:	62 a1 74 40 58 c0    	vaddps zmm16,zmm17,zmm16
  a0bfc4:	62 c1 4c 48 58 c9    	vaddps zmm17,zmm6,zmm9
  a0bfca:	62 d1 4c 48 5c f1    	vsubps zmm6,zmm6,zmm9
  a0bfd0:	62 71 04 48 58 cd    	vaddps zmm9,zmm15,zmm5
  a0bfd6:	62 f1 04 48 5c ed    	vsubps zmm5,zmm15,zmm5
  a0bfdc:	62 31 64 40 5c fc    	vsubps zmm15,zmm19,zmm20
  a0bfe2:	62 a1 64 40 58 d4    	vaddps zmm18,zmm19,zmm20
  a0bfe8:	62 e1 24 48 5c df    	vsubps zmm19,zmm11,zmm7
  a0bfee:	62 f1 24 48 58 ff    	vaddps zmm7,zmm11,zmm7
  a0bff4:	62 e2 25 40 7f d7    	vpermt2ps zmm18,zmm27,zmm7
  a0bffa:	62 e3 7d 48 19 54 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x20],zmm18,0x2
  a0c001:	02 02 
  a0c003:	62 e1 7c 28 11 14 16 	vmovups YMMWORD PTR [rsi+rdx*1],ymm18
  a0c00a:	62 52 25 40 7f f5    	vpermt2ps zmm14,zmm27,zmm13
  a0c010:	62 73 7d 48 19 74 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x50],zmm14,0x2
  a0c017:	05 02 
  a0c019:	c5 7c 11 74 16 30    	vmovups YMMWORD PTR [rsi+rdx*1+0x30],ymm14
  a0c01f:	62 32 25 40 7f c9    	vpermt2ps zmm9,zmm27,zmm17
  a0c025:	62 73 7d 48 19 4c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x80],zmm9,0x2
  a0c02c:	08 02 
  a0c02e:	c5 7c 11 4c 16 60    	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm9
  a0c034:	62 32 25 40 7f fb    	vpermt2ps zmm15,zmm27,zmm19
  a0c03a:	62 73 7d 48 19 7c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xb0],zmm15,0x2
  a0c041:	0b 02 
  a0c043:	c5 7c 11 bc 16 90 00 	vmovups YMMWORD PTR [rsi+rdx*1+0x90],ymm15
  a0c04a:	00 00 
  a0c04c:	62 c2 25 40 7f c4    	vpermt2ps zmm16,zmm27,zmm12
  a0c052:	62 e3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xe0],zmm16,0x2
  a0c059:	0e 02 
  a0c05b:	62 e1 7c 28 11 44 16 	vmovups YMMWORD PTR [rsi+rdx*1+0xc0],ymm16
  a0c062:	06 
  a0c063:	62 f2 25 40 7f ee    	vpermt2ps zmm5,zmm27,zmm6
  a0c069:	62 f3 7d 48 19 6c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x110],zmm5,0x2
  a0c070:	11 02 
  a0c072:	c5 fc 11 ac 16 f0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xf0],ymm5
  a0c079:	00 00 
  a0c07b:	48 81 c2 20 01 00 00 	add    rdx,0x120
  a0c082:	48 39 d0             	cmp    rax,rdx
  a0c085:	0f 85 75 f9 ff ff    	jne    a0ba00 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x80>
  a0c08b:	c5 f8 77             	vzeroupper
  a0c08e:	c3                   	ret
