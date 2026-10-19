
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a5f940 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a5f940:	62 f1 7c 48 28 05 36 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff667636]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a5f947:	76 66 ff 
  a5f94a:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  a5f94e:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a5f952:	62 f2 7d 48 7f d2    	vpermt2ps zmm2,zmm0,zmm2
  a5f958:	62 f1 7c 48 28 1d 9e 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff66759e]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a5f95f:	75 66 ff 
  a5f962:	62 f1 7c 48 28 e2    	vmovaps zmm4,zmm2
  a5f968:	62 f2 65 48 7f e2    	vpermt2ps zmm4,zmm3,zmm2
  a5f96e:	62 f1 7c 48 28 2d 88 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff667488]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a5f975:	74 66 ff 
  a5f978:	62 f1 7c 48 28 35 be 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff6674be]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a5f97f:	74 66 ff 
  a5f982:	48 c1 e2 05          	shl    rdx,0x5
  a5f986:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  a5f98a:	31 d2                	xor    edx,edx
  a5f98c:	62 f1 7c 48 28 3d ea 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff633dea]        # 93780 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20c30>
  a5f993:	3d 63 ff 
  a5f996:	62 72 7d 48 18 05 c0 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff615ac0]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a5f99d:	5a 61 ff 
  a5f9a0:	62 71 7c 48 28 0d 16 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff633e16]        # 937c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20c70>
  a5f9a7:	3e 63 ff 
  a5f9aa:	62 72 7d 48 18 15 20 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff615920]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a5f9b1:	59 61 ff 
  a5f9b4:	c5 7c 28 1d 04 89 61 	vmovaps ymm11,YMMWORD PTR [rip+0xffffffffff618904]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  a5f9bb:	ff 
  a5f9bc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  a5f9c0:	c5 7c 10 24 17       	vmovups ymm12,YMMWORD PTR [rdi+rdx*1]
  a5f9c5:	c5 7c 10 6c 17 20    	vmovups ymm13,YMMWORD PTR [rdi+rdx*1+0x20]
  a5f9cb:	c5 7c 10 74 17 40    	vmovups ymm14,YMMWORD PTR [rdi+rdx*1+0x40]
  a5f9d1:	62 51 7c 48 28 fc    	vmovaps zmm15,zmm12
  a5f9d7:	62 72 45 48 7f f9    	vpermt2ps zmm15,zmm7,zmm1
  a5f9dd:	62 72 35 48 7f e1    	vpermt2ps zmm12,zmm9,zmm1
  a5f9e3:	62 c1 7c 48 28 c5    	vmovaps zmm16,zmm13
  a5f9e9:	62 e2 45 48 7f c1    	vpermt2ps zmm16,zmm7,zmm1
  a5f9ef:	62 72 35 48 7f e9    	vpermt2ps zmm13,zmm9,zmm1
  a5f9f5:	62 c1 7c 48 28 ce    	vmovaps zmm17,zmm14
  a5f9fb:	62 e2 45 48 7f c9    	vpermt2ps zmm17,zmm7,zmm1
  a5fa01:	62 72 35 48 7f f1    	vpermt2ps zmm14,zmm9,zmm1
  a5fa07:	62 a1 7c 40 58 d1    	vaddps zmm18,zmm16,zmm17
  a5fa0d:	62 a1 04 48 58 da    	vaddps zmm19,zmm15,zmm18
  a5fa13:	62 c1 14 48 58 e6    	vaddps zmm20,zmm13,zmm14
  a5fa19:	62 a1 1c 48 58 ec    	vaddps zmm21,zmm12,zmm20
  a5fa1f:	62 32 3d 48 bc fa    	vfnmadd231ps zmm15,zmm8,zmm18
  a5fa25:	62 51 14 48 5c ee    	vsubps zmm13,zmm13,zmm14
  a5fa2b:	62 51 14 48 59 ea    	vmulps zmm13,zmm13,zmm10
  a5fa31:	62 51 04 48 58 f5    	vaddps zmm14,zmm15,zmm13
  a5fa37:	62 32 3d 48 bc e4    	vfnmadd231ps zmm12,zmm8,zmm20
  a5fa3d:	62 a1 7c 40 5c c1    	vsubps zmm16,zmm16,zmm17
  a5fa43:	62 c1 7c 40 59 c2    	vmulps zmm16,zmm16,zmm10
  a5fa49:	62 a1 1c 48 5c c8    	vsubps zmm17,zmm12,zmm16
  a5fa4f:	62 51 04 48 5c ed    	vsubps zmm13,zmm15,zmm13
  a5fa55:	62 51 7c 40 58 fc    	vaddps zmm15,zmm16,zmm12
  a5fa5b:	62 e2 7d 48 7f d9    	vpermt2ps zmm19,zmm0,zmm1
  a5fa61:	62 72 7d 48 7f f1    	vpermt2ps zmm14,zmm0,zmm1
  a5fa67:	62 72 7d 48 7f e9    	vpermt2ps zmm13,zmm0,zmm1
  a5fa6d:	62 e2 65 48 7f da    	vpermt2ps zmm19,zmm3,zmm2
  a5fa73:	62 72 65 48 7f f2    	vpermt2ps zmm14,zmm3,zmm2
  a5fa79:	62 72 65 48 7f ea    	vpermt2ps zmm13,zmm3,zmm2
  a5fa7f:	62 c1 e5 40 14 c5    	vunpcklpd zmm16,zmm19,zmm13
  a5fa85:	62 51 e5 40 15 ed    	vunpckhpd zmm13,zmm19,zmm13
  a5fa8b:	62 e1 8d 48 14 d4    	vunpcklpd zmm18,zmm14,zmm4
  a5fa91:	62 71 8d 48 15 f4    	vunpckhpd zmm14,zmm14,zmm4
  a5fa97:	62 31 7c 48 28 e0    	vmovaps zmm12,zmm16
  a5fa9d:	62 32 55 48 7f e2    	vpermt2ps zmm12,zmm5,zmm18
  a5faa3:	62 a2 4d 48 7f c2    	vpermt2ps zmm16,zmm6,zmm18
  a5faa9:	62 c1 7c 48 28 d5    	vmovaps zmm18,zmm13
  a5faaf:	62 c2 55 48 7f d6    	vpermt2ps zmm18,zmm5,zmm14
  a5fab5:	62 52 4d 48 7f ee    	vpermt2ps zmm13,zmm6,zmm14
  a5fabb:	62 e2 7d 48 7f e9    	vpermt2ps zmm21,zmm0,zmm1
  a5fac1:	62 e2 7d 48 7f c9    	vpermt2ps zmm17,zmm0,zmm1
  a5fac7:	62 72 7d 48 7f f9    	vpermt2ps zmm15,zmm0,zmm1
  a5facd:	62 e2 65 48 7f ea    	vpermt2ps zmm21,zmm3,zmm2
  a5fad3:	62 e2 65 48 7f ca    	vpermt2ps zmm17,zmm3,zmm2
  a5fad9:	62 72 65 48 7f fa    	vpermt2ps zmm15,zmm3,zmm2
  a5fadf:	62 51 d5 40 14 f7    	vunpcklpd zmm14,zmm21,zmm15
  a5fae5:	62 51 d5 40 15 ff    	vunpckhpd zmm15,zmm21,zmm15
  a5faeb:	62 e1 f5 40 14 dc    	vunpcklpd zmm19,zmm17,zmm4
  a5faf1:	62 e1 f5 40 15 cc    	vunpckhpd zmm17,zmm17,zmm4
  a5faf7:	62 c1 7c 48 28 e6    	vmovaps zmm20,zmm14
  a5fafd:	62 a2 55 48 7f e3    	vpermt2ps zmm20,zmm5,zmm19
  a5fb03:	62 32 4d 48 7f f3    	vpermt2ps zmm14,zmm6,zmm19
  a5fb09:	62 c1 7c 48 28 df    	vmovaps zmm19,zmm15
  a5fb0f:	62 a2 55 48 7f d9    	vpermt2ps zmm19,zmm5,zmm17
  a5fb15:	62 32 4d 48 7f f9    	vpermt2ps zmm15,zmm6,zmm17
  a5fb1b:	62 e1 7c 48 10 49 02 	vmovups zmm17,ZMMWORD PTR [rcx+0x80]
  a5fb22:	62 e1 7c 48 10 69 03 	vmovups zmm21,ZMMWORD PTR [rcx+0xc0]
  a5fb29:	62 e1 7c 48 10 71 04 	vmovups zmm22,ZMMWORD PTR [rcx+0x100]
  a5fb30:	62 e1 7c 48 10 79 05 	vmovups zmm23,ZMMWORD PTR [rcx+0x140]
  a5fb37:	62 61 7c 48 10 41 06 	vmovups zmm24,ZMMWORD PTR [rcx+0x180]
  a5fb3e:	62 61 7c 48 10 49 07 	vmovups zmm25,ZMMWORD PTR [rcx+0x1c0]
  a5fb45:	62 21 6c 40 59 d6    	vmulps zmm26,zmm18,zmm22
  a5fb4b:	62 22 65 40 bc d7    	vfnmadd231ps zmm26,zmm19,zmm23
  a5fb51:	62 21 7c 40 59 d9    	vmulps zmm27,zmm16,zmm17
  a5fb57:	62 22 0d 48 bc dd    	vfnmadd231ps zmm27,zmm14,zmm21
  a5fb5d:	62 01 14 48 59 e0    	vmulps zmm28,zmm13,zmm24
  a5fb63:	62 02 05 48 bc e1    	vfnmadd231ps zmm28,zmm15,zmm25
  a5fb69:	62 a1 64 40 59 de    	vmulps zmm19,zmm19,zmm22
  a5fb6f:	62 a2 45 40 b8 da    	vfmadd231ps zmm19,zmm23,zmm18
  a5fb75:	62 31 0c 48 59 f1    	vmulps zmm14,zmm14,zmm17
  a5fb7b:	62 32 55 40 b8 f0    	vfmadd231ps zmm14,zmm21,zmm16
  a5fb81:	62 11 04 48 59 f8    	vmulps zmm15,zmm15,zmm24
  a5fb87:	62 52 35 40 b8 fd    	vfmadd231ps zmm15,zmm25,zmm13
  a5fb8d:	c4 41 0c 58 ef       	vaddps ymm13,ymm14,ymm15
  a5fb92:	62 a1 64 20 58 c4    	vaddps ymm16,ymm19,ymm20
  a5fb98:	62 c1 7c 20 58 cd    	vaddps ymm17,ymm16,ymm13
  a5fb9e:	62 81 24 00 58 d4    	vaddps xmm18,xmm27,xmm28
  a5fba4:	62 81 1c 08 58 ea    	vaddps xmm21,xmm12,xmm26
  a5fbaa:	62 a1 54 00 58 f2    	vaddps xmm22,xmm21,xmm18
  a5fbb0:	62 a2 25 28 7f f1    	vpermt2ps ymm22,ymm11,ymm17
  a5fbb6:	62 a3 7d 28 19 f1 01 	vextractf32x4 xmm17,ymm22,0x1
  a5fbbd:	62 e1 7c 08 13 4c 16 	vmovlps QWORD PTR [rsi+rdx*1+0x10],xmm17
  a5fbc4:	02 
  a5fbc5:	62 e1 7c 08 11 34 16 	vmovups XMMWORD PTR [rsi+rdx*1],xmm22
  a5fbcc:	62 81 1c 20 5c cb    	vsubps ymm17,ymm28,ymm27
  a5fbd2:	62 a1 5c 20 5c db    	vsubps ymm19,ymm20,ymm19
  a5fbd8:	62 a1 64 20 58 e1    	vaddps ymm20,ymm19,ymm17
  a5fbde:	c4 41 08 5c f7       	vsubps xmm14,xmm14,xmm15
  a5fbe3:	62 11 1c 08 5c e2    	vsubps xmm12,xmm12,xmm26
  a5fbe9:	c4 41 18 58 fe       	vaddps xmm15,xmm12,xmm14
  a5fbee:	62 32 25 28 7f fc    	vpermt2ps ymm15,ymm11,ymm20
  a5fbf4:	62 33 7d 28 19 fc 01 	vextractf32x4 xmm20,ymm15,0x1
  a5fbfb:	62 e1 7c 08 13 64 16 	vmovlps QWORD PTR [rsi+rdx*1+0x28],xmm20
  a5fc02:	05 
  a5fc03:	c5 78 11 7c 16 18    	vmovups XMMWORD PTR [rsi+rdx*1+0x18],xmm15
  a5fc09:	62 51 7c 20 5c ed    	vsubps ymm13,ymm16,ymm13
  a5fc0f:	62 31 54 00 5c fa    	vsubps xmm15,xmm21,xmm18
  a5fc15:	62 52 25 28 7f fd    	vpermt2ps ymm15,ymm11,ymm13
  a5fc1b:	c4 43 7d 19 fd 01    	vextractf128 xmm13,ymm15,0x1
  a5fc21:	c5 78 13 6c 16 40    	vmovlps QWORD PTR [rsi+rdx*1+0x40],xmm13
  a5fc27:	c5 78 11 7c 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm15
  a5fc2d:	62 31 64 20 5c e9    	vsubps ymm13,ymm19,ymm17
  a5fc33:	c4 41 18 5c e6       	vsubps xmm12,xmm12,xmm14
  a5fc38:	62 52 25 28 7f e5    	vpermt2ps ymm12,ymm11,ymm13
  a5fc3e:	c4 43 7d 19 e5 01    	vextractf128 xmm13,ymm12,0x1
  a5fc44:	c5 78 13 6c 16 58    	vmovlps QWORD PTR [rsi+rdx*1+0x58],xmm13
  a5fc4a:	c5 78 11 64 16 48    	vmovups XMMWORD PTR [rsi+rdx*1+0x48],xmm12
  a5fc50:	48 83 c2 60          	add    rdx,0x60
  a5fc54:	48 39 d0             	cmp    rax,rdx
  a5fc57:	0f 85 63 fd ff ff    	jne    a5f9c0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x80>
  a5fc5d:	c5 f8 77             	vzeroupper
  a5fc60:	c3                   	ret
