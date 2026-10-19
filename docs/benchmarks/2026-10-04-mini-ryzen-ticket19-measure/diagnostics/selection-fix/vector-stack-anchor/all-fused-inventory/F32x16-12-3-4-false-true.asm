
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a5df00 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a5df00:	62 f1 7c 48 28 05 76 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff669076]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a5df07:	90 66 ff 
  a5df0a:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  a5df0e:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a5df12:	62 f2 7d 48 7f d2    	vpermt2ps zmm2,zmm0,zmm2
  a5df18:	62 f1 7c 48 28 1d de 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff668fde]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a5df1f:	8f 66 ff 
  a5df22:	62 f1 7c 48 28 e2    	vmovaps zmm4,zmm2
  a5df28:	62 f2 65 48 7f e2    	vpermt2ps zmm4,zmm3,zmm2
  a5df2e:	62 f1 7c 48 28 2d c8 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff668ec8]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a5df35:	8e 66 ff 
  a5df38:	62 f1 7c 48 28 35 fe 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff668efe]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a5df3f:	8e 66 ff 
  a5df42:	48 c1 e2 05          	shl    rdx,0x5
  a5df46:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  a5df4a:	31 d2                	xor    edx,edx
  a5df4c:	62 f1 7c 48 28 3d 2a 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff63582a]        # 93780 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20c30>
  a5df53:	58 63 ff 
  a5df56:	62 72 7d 48 18 05 00 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff617500]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a5df5d:	75 61 ff 
  a5df60:	62 71 7c 48 28 0d 56 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff635856]        # 937c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20c70>
  a5df67:	58 63 ff 
  a5df6a:	62 72 7d 48 18 15 60 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff617360]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a5df71:	73 61 ff 
  a5df74:	c5 7c 28 1d 44 a3 61 	vmovaps ymm11,YMMWORD PTR [rip+0xffffffffff61a344]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  a5df7b:	ff 
  a5df7c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  a5df80:	c5 7c 10 24 17       	vmovups ymm12,YMMWORD PTR [rdi+rdx*1]
  a5df85:	c5 7c 10 6c 17 20    	vmovups ymm13,YMMWORD PTR [rdi+rdx*1+0x20]
  a5df8b:	c5 7c 10 74 17 40    	vmovups ymm14,YMMWORD PTR [rdi+rdx*1+0x40]
  a5df91:	62 51 7c 48 28 fc    	vmovaps zmm15,zmm12
  a5df97:	62 72 45 48 7f f9    	vpermt2ps zmm15,zmm7,zmm1
  a5df9d:	62 72 35 48 7f e1    	vpermt2ps zmm12,zmm9,zmm1
  a5dfa3:	62 c1 7c 48 28 c5    	vmovaps zmm16,zmm13
  a5dfa9:	62 e2 45 48 7f c1    	vpermt2ps zmm16,zmm7,zmm1
  a5dfaf:	62 72 35 48 7f e9    	vpermt2ps zmm13,zmm9,zmm1
  a5dfb5:	62 c1 7c 48 28 ce    	vmovaps zmm17,zmm14
  a5dfbb:	62 e2 45 48 7f c9    	vpermt2ps zmm17,zmm7,zmm1
  a5dfc1:	62 72 35 48 7f f1    	vpermt2ps zmm14,zmm9,zmm1
  a5dfc7:	62 a1 7c 40 58 d1    	vaddps zmm18,zmm16,zmm17
  a5dfcd:	62 a1 04 48 58 da    	vaddps zmm19,zmm15,zmm18
  a5dfd3:	62 c1 14 48 58 e6    	vaddps zmm20,zmm13,zmm14
  a5dfd9:	62 a1 1c 48 58 ec    	vaddps zmm21,zmm12,zmm20
  a5dfdf:	62 32 3d 48 bc fa    	vfnmadd231ps zmm15,zmm8,zmm18
  a5dfe5:	62 51 14 48 5c ee    	vsubps zmm13,zmm13,zmm14
  a5dfeb:	62 51 14 48 59 ea    	vmulps zmm13,zmm13,zmm10
  a5dff1:	62 51 04 48 58 f5    	vaddps zmm14,zmm15,zmm13
  a5dff7:	62 32 3d 48 bc e4    	vfnmadd231ps zmm12,zmm8,zmm20
  a5dffd:	62 a1 7c 40 5c c1    	vsubps zmm16,zmm16,zmm17
  a5e003:	62 c1 7c 40 59 c2    	vmulps zmm16,zmm16,zmm10
  a5e009:	62 a1 1c 48 5c c8    	vsubps zmm17,zmm12,zmm16
  a5e00f:	62 51 04 48 5c ed    	vsubps zmm13,zmm15,zmm13
  a5e015:	62 51 7c 40 58 fc    	vaddps zmm15,zmm16,zmm12
  a5e01b:	62 e2 7d 48 7f d9    	vpermt2ps zmm19,zmm0,zmm1
  a5e021:	62 72 7d 48 7f f1    	vpermt2ps zmm14,zmm0,zmm1
  a5e027:	62 72 7d 48 7f e9    	vpermt2ps zmm13,zmm0,zmm1
  a5e02d:	62 e2 65 48 7f da    	vpermt2ps zmm19,zmm3,zmm2
  a5e033:	62 72 65 48 7f f2    	vpermt2ps zmm14,zmm3,zmm2
  a5e039:	62 72 65 48 7f ea    	vpermt2ps zmm13,zmm3,zmm2
  a5e03f:	62 c1 e5 40 14 c5    	vunpcklpd zmm16,zmm19,zmm13
  a5e045:	62 51 e5 40 15 ed    	vunpckhpd zmm13,zmm19,zmm13
  a5e04b:	62 e1 8d 48 14 d4    	vunpcklpd zmm18,zmm14,zmm4
  a5e051:	62 71 8d 48 15 f4    	vunpckhpd zmm14,zmm14,zmm4
  a5e057:	62 31 7c 48 28 e0    	vmovaps zmm12,zmm16
  a5e05d:	62 32 55 48 7f e2    	vpermt2ps zmm12,zmm5,zmm18
  a5e063:	62 a2 4d 48 7f c2    	vpermt2ps zmm16,zmm6,zmm18
  a5e069:	62 c1 7c 48 28 d5    	vmovaps zmm18,zmm13
  a5e06f:	62 c2 55 48 7f d6    	vpermt2ps zmm18,zmm5,zmm14
  a5e075:	62 52 4d 48 7f ee    	vpermt2ps zmm13,zmm6,zmm14
  a5e07b:	62 e2 7d 48 7f e9    	vpermt2ps zmm21,zmm0,zmm1
  a5e081:	62 e2 7d 48 7f c9    	vpermt2ps zmm17,zmm0,zmm1
  a5e087:	62 72 7d 48 7f f9    	vpermt2ps zmm15,zmm0,zmm1
  a5e08d:	62 e2 65 48 7f ea    	vpermt2ps zmm21,zmm3,zmm2
  a5e093:	62 e2 65 48 7f ca    	vpermt2ps zmm17,zmm3,zmm2
  a5e099:	62 72 65 48 7f fa    	vpermt2ps zmm15,zmm3,zmm2
  a5e09f:	62 51 d5 40 14 f7    	vunpcklpd zmm14,zmm21,zmm15
  a5e0a5:	62 51 d5 40 15 ff    	vunpckhpd zmm15,zmm21,zmm15
  a5e0ab:	62 e1 f5 40 14 dc    	vunpcklpd zmm19,zmm17,zmm4
  a5e0b1:	62 e1 f5 40 15 cc    	vunpckhpd zmm17,zmm17,zmm4
  a5e0b7:	62 c1 7c 48 28 e6    	vmovaps zmm20,zmm14
  a5e0bd:	62 a2 55 48 7f e3    	vpermt2ps zmm20,zmm5,zmm19
  a5e0c3:	62 32 4d 48 7f f3    	vpermt2ps zmm14,zmm6,zmm19
  a5e0c9:	62 c1 7c 48 28 df    	vmovaps zmm19,zmm15
  a5e0cf:	62 a2 55 48 7f d9    	vpermt2ps zmm19,zmm5,zmm17
  a5e0d5:	62 32 4d 48 7f f9    	vpermt2ps zmm15,zmm6,zmm17
  a5e0db:	62 e1 7c 48 10 49 02 	vmovups zmm17,ZMMWORD PTR [rcx+0x80]
  a5e0e2:	62 e1 7c 48 10 69 03 	vmovups zmm21,ZMMWORD PTR [rcx+0xc0]
  a5e0e9:	62 e1 7c 48 10 71 04 	vmovups zmm22,ZMMWORD PTR [rcx+0x100]
  a5e0f0:	62 e1 7c 48 10 79 05 	vmovups zmm23,ZMMWORD PTR [rcx+0x140]
  a5e0f7:	62 61 7c 48 10 41 06 	vmovups zmm24,ZMMWORD PTR [rcx+0x180]
  a5e0fe:	62 61 7c 48 10 49 07 	vmovups zmm25,ZMMWORD PTR [rcx+0x1c0]
  a5e105:	62 21 6c 40 59 d6    	vmulps zmm26,zmm18,zmm22
  a5e10b:	62 22 65 40 bc d7    	vfnmadd231ps zmm26,zmm19,zmm23
  a5e111:	62 21 7c 40 59 d9    	vmulps zmm27,zmm16,zmm17
  a5e117:	62 22 0d 48 bc dd    	vfnmadd231ps zmm27,zmm14,zmm21
  a5e11d:	62 01 14 48 59 e0    	vmulps zmm28,zmm13,zmm24
  a5e123:	62 02 05 48 bc e1    	vfnmadd231ps zmm28,zmm15,zmm25
  a5e129:	62 a1 64 40 59 de    	vmulps zmm19,zmm19,zmm22
  a5e12f:	62 a2 45 40 b8 da    	vfmadd231ps zmm19,zmm23,zmm18
  a5e135:	62 31 0c 48 59 f1    	vmulps zmm14,zmm14,zmm17
  a5e13b:	62 32 55 40 b8 f0    	vfmadd231ps zmm14,zmm21,zmm16
  a5e141:	62 11 04 48 59 f8    	vmulps zmm15,zmm15,zmm24
  a5e147:	62 52 35 40 b8 fd    	vfmadd231ps zmm15,zmm25,zmm13
  a5e14d:	c4 41 0c 58 ef       	vaddps ymm13,ymm14,ymm15
  a5e152:	62 a1 64 20 58 c4    	vaddps ymm16,ymm19,ymm20
  a5e158:	62 c1 7c 20 58 cd    	vaddps ymm17,ymm16,ymm13
  a5e15e:	62 81 24 00 58 d4    	vaddps xmm18,xmm27,xmm28
  a5e164:	62 81 1c 08 58 ea    	vaddps xmm21,xmm12,xmm26
  a5e16a:	62 a1 54 00 58 f2    	vaddps xmm22,xmm21,xmm18
  a5e170:	62 a2 25 28 7f f1    	vpermt2ps ymm22,ymm11,ymm17
  a5e176:	62 a3 7d 28 19 f1 01 	vextractf32x4 xmm17,ymm22,0x1
  a5e17d:	62 e1 7c 08 13 4c 16 	vmovlps QWORD PTR [rsi+rdx*1+0x10],xmm17
  a5e184:	02 
  a5e185:	62 e1 7c 08 11 34 16 	vmovups XMMWORD PTR [rsi+rdx*1],xmm22
  a5e18c:	62 81 1c 20 5c cb    	vsubps ymm17,ymm28,ymm27
  a5e192:	62 a1 5c 20 5c db    	vsubps ymm19,ymm20,ymm19
  a5e198:	62 a1 64 20 58 e1    	vaddps ymm20,ymm19,ymm17
  a5e19e:	c4 41 08 5c f7       	vsubps xmm14,xmm14,xmm15
  a5e1a3:	62 11 1c 08 5c e2    	vsubps xmm12,xmm12,xmm26
  a5e1a9:	c4 41 18 58 fe       	vaddps xmm15,xmm12,xmm14
  a5e1ae:	62 32 25 28 7f fc    	vpermt2ps ymm15,ymm11,ymm20
  a5e1b4:	62 33 7d 28 19 fc 01 	vextractf32x4 xmm20,ymm15,0x1
  a5e1bb:	62 e1 7c 08 13 64 16 	vmovlps QWORD PTR [rsi+rdx*1+0x28],xmm20
  a5e1c2:	05 
  a5e1c3:	c5 78 11 7c 16 18    	vmovups XMMWORD PTR [rsi+rdx*1+0x18],xmm15
  a5e1c9:	62 51 7c 20 5c ed    	vsubps ymm13,ymm16,ymm13
  a5e1cf:	62 31 54 00 5c fa    	vsubps xmm15,xmm21,xmm18
  a5e1d5:	62 52 25 28 7f fd    	vpermt2ps ymm15,ymm11,ymm13
  a5e1db:	c4 43 7d 19 fd 01    	vextractf128 xmm13,ymm15,0x1
  a5e1e1:	c5 78 13 6c 16 40    	vmovlps QWORD PTR [rsi+rdx*1+0x40],xmm13
  a5e1e7:	c5 78 11 7c 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm15
  a5e1ed:	62 31 64 20 5c e9    	vsubps ymm13,ymm19,ymm17
  a5e1f3:	c4 41 18 5c e6       	vsubps xmm12,xmm12,xmm14
  a5e1f8:	62 52 25 28 7f e5    	vpermt2ps ymm12,ymm11,ymm13
  a5e1fe:	c4 43 7d 19 e5 01    	vextractf128 xmm13,ymm12,0x1
  a5e204:	c5 78 13 6c 16 58    	vmovlps QWORD PTR [rsi+rdx*1+0x58],xmm13
  a5e20a:	c5 78 11 64 16 48    	vmovups XMMWORD PTR [rsi+rdx*1+0x48],xmm12
  a5e210:	48 83 c2 60          	add    rdx,0x60
  a5e214:	48 39 d0             	cmp    rax,rdx
  a5e217:	0f 85 63 fd ff ff    	jne    a5df80 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x80>
  a5e21d:	c5 f8 77             	vzeroupper
  a5e220:	c3                   	ret
