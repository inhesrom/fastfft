
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a55f00 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a55f00:	62 f1 7c 48 28 05 76 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff671076]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a55f07:	10 67 ff 
  a55f0a:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  a55f0e:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a55f12:	62 f2 7d 48 7f d2    	vpermt2ps zmm2,zmm0,zmm2
  a55f18:	62 f1 7c 48 28 1d de 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff670fde]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a55f1f:	0f 67 ff 
  a55f22:	62 f1 7c 48 28 25 d4 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff670ed4]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a55f29:	0e 67 ff 
  a55f2c:	62 f1 7c 48 28 2d 0a 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff670f0a]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a55f33:	0f 67 ff 
  a55f36:	48 c1 e2 04          	shl    rdx,0x4
  a55f3a:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  a55f3e:	31 d2                	xor    edx,edx
  a55f40:	62 f1 7c 48 28 35 b6 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff63cfb6]        # 92f00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x203b0>
  a55f47:	cf 63 ff 
  a55f4a:	62 f2 7d 48 18 3d 0c 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff61f50c]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a55f51:	f5 61 ff 
  a55f54:	62 71 7c 48 28 05 e2 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff63cfe2]        # 92f40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x203f0>
  a55f5b:	cf 63 ff 
  a55f5e:	62 72 7d 48 18 0d 6c 	vbroadcastss zmm9,DWORD PTR [rip+0xffffffffff61f36c]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a55f65:	f3 61 ff 
  a55f68:	62 71 7c 48 28 15 0e 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff63d00e]        # 92f80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20430>
  a55f6f:	d0 63 ff 
  a55f72:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  a55f79:	1f 84 00 00 00 00 00 
  a55f80:	c5 7b 10 5c 17 10    	vmovsd xmm11,QWORD PTR [rdi+rdx*1+0x10]
  a55f86:	c5 78 10 24 17       	vmovups xmm12,XMMWORD PTR [rdi+rdx*1]
  a55f8b:	c5 78 10 6c 17 18    	vmovups xmm13,XMMWORD PTR [rdi+rdx*1+0x18]
  a55f91:	c5 78 10 7c 17 30    	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x30]
  a55f97:	62 e1 7c 08 10 84 17 	vmovups xmm16,XMMWORD PTR [rdi+rdx*1+0x48]
  a55f9e:	48 00 00 00 
  a55fa2:	62 53 1d 48 18 db 01 	vinsertf32x4 zmm11,zmm12,xmm11,0x1
  a55fa9:	62 51 7c 48 28 e3    	vmovaps zmm12,zmm11
  a55faf:	62 72 4d 48 7f e1    	vpermt2ps zmm12,zmm6,zmm1
  a55fb5:	62 72 3d 48 7f d9    	vpermt2ps zmm11,zmm8,zmm1
  a55fbb:	c5 7b 10 74 17 28    	vmovsd xmm14,QWORD PTR [rdi+rdx*1+0x28]
  a55fc1:	62 c3 15 48 18 ce 01 	vinsertf32x4 zmm17,zmm13,xmm14,0x1
  a55fc8:	62 31 7c 48 28 f1    	vmovaps zmm14,zmm17
  a55fce:	62 72 4d 48 7f f1    	vpermt2ps zmm14,zmm6,zmm1
  a55fd4:	62 e2 3d 48 7f c9    	vpermt2ps zmm17,zmm8,zmm1
  a55fda:	c5 7b 10 6c 17 40    	vmovsd xmm13,QWORD PTR [rdi+rdx*1+0x40]
  a55fe0:	62 53 05 48 18 fd 01 	vinsertf32x4 zmm15,zmm15,xmm13,0x1
  a55fe7:	62 c1 7c 48 28 d7    	vmovaps zmm18,zmm15
  a55fed:	62 e2 4d 48 7f d1    	vpermt2ps zmm18,zmm6,zmm1
  a55ff3:	62 72 3d 48 7f f9    	vpermt2ps zmm15,zmm8,zmm1
  a55ff9:	c5 7b 10 6c 17 58    	vmovsd xmm13,QWORD PTR [rdi+rdx*1+0x58]
  a55fff:	62 53 7d 40 18 ed 01 	vinsertf32x4 zmm13,zmm16,xmm13,0x1
  a56006:	62 c1 7c 48 28 c5    	vmovaps zmm16,zmm13
  a5600c:	62 e2 4d 48 7f c1    	vpermt2ps zmm16,zmm6,zmm1
  a56012:	62 e1 ff 08 10 5c 17 	vmovsd xmm19,QWORD PTR [rdi+rdx*1+0x70]
  a56019:	0e 
  a5601a:	62 e1 7c 08 10 64 17 	vmovups xmm20,XMMWORD PTR [rdi+rdx*1+0x60]
  a56021:	06 
  a56022:	62 a3 5d 40 18 db 01 	vinsertf32x4 zmm19,zmm20,xmm19,0x1
  a56029:	62 a1 7c 48 28 e3    	vmovaps zmm20,zmm19
  a5602f:	62 e2 4d 48 7f e1    	vpermt2ps zmm20,zmm6,zmm1
  a56035:	62 e2 3d 48 7f d9    	vpermt2ps zmm19,zmm8,zmm1
  a5603b:	62 e1 ff 08 10 6c 17 	vmovsd xmm21,QWORD PTR [rdi+rdx*1+0x88]
  a56042:	11 
  a56043:	62 e1 7c 08 10 b4 17 	vmovups xmm22,XMMWORD PTR [rdi+rdx*1+0x78]
  a5604a:	78 00 00 00 
  a5604e:	62 a3 4d 40 18 ed 01 	vinsertf32x4 zmm21,zmm22,xmm21,0x1
  a56055:	62 a1 7c 48 28 f5    	vmovaps zmm22,zmm21
  a5605b:	62 e2 4d 48 7f f1    	vpermt2ps zmm22,zmm6,zmm1
  a56061:	62 e2 3d 48 7f e9    	vpermt2ps zmm21,zmm8,zmm1
  a56067:	62 a1 6c 40 58 fc    	vaddps zmm23,zmm18,zmm20
  a5606d:	62 21 1c 48 58 c7    	vaddps zmm24,zmm12,zmm23
  a56073:	62 41 4c 40 58 ce    	vaddps zmm25,zmm22,zmm14
  a56079:	62 32 45 48 bc e7    	vfnmadd231ps zmm12,zmm7,zmm23
  a5607f:	62 a1 04 48 58 fb    	vaddps zmm23,zmm15,zmm19
  a56085:	62 31 04 48 5c fb    	vsubps zmm15,zmm15,zmm19
  a5608b:	62 81 7c 40 58 d9    	vaddps zmm19,zmm16,zmm25
  a56091:	62 82 45 48 bc c1    	vfnmadd231ps zmm16,zmm7,zmm25
  a56097:	62 21 54 40 58 c9    	vaddps zmm25,zmm21,zmm17
  a5609d:	62 a1 54 40 5c c9    	vsubps zmm17,zmm21,zmm17
  a560a3:	62 a1 24 48 58 ef    	vaddps zmm21,zmm11,zmm23
  a560a9:	62 32 45 48 bc df    	vfnmadd231ps zmm11,zmm7,zmm23
  a560af:	62 72 3d 48 7f e9    	vpermt2ps zmm13,zmm8,zmm1
  a560b5:	62 a1 6c 40 5c d4    	vsubps zmm18,zmm18,zmm20
  a560bb:	62 81 14 48 58 e1    	vaddps zmm20,zmm13,zmm25
  a560c1:	62 12 45 48 bc e9    	vfnmadd231ps zmm13,zmm7,zmm25
  a560c7:	62 51 04 48 59 f9    	vmulps zmm15,zmm15,zmm9
  a560cd:	62 51 4c 40 5c f6    	vsubps zmm14,zmm22,zmm14
  a560d3:	62 c1 1c 48 58 f7    	vaddps zmm22,zmm12,zmm15
  a560d9:	62 c1 74 40 59 c9    	vmulps zmm17,zmm17,zmm9
  a560df:	62 51 1c 48 5c ff    	vsubps zmm15,zmm12,zmm15
  a560e5:	62 a1 7c 40 58 f9    	vaddps zmm23,zmm16,zmm17
  a560eb:	62 51 6c 40 59 e1    	vmulps zmm12,zmm18,zmm9
  a560f1:	62 a1 7c 40 5c c1    	vsubps zmm16,zmm16,zmm17
  a560f7:	62 c1 24 48 5c cc    	vsubps zmm17,zmm11,zmm12
  a560fd:	62 51 0c 48 59 f1    	vmulps zmm14,zmm14,zmm9
  a56103:	62 51 1c 48 58 db    	vaddps zmm11,zmm12,zmm11
  a56109:	62 c1 14 48 5c d6    	vsubps zmm18,zmm13,zmm14
  a5610f:	62 51 0c 48 58 f5    	vaddps zmm14,zmm14,zmm13
  a56115:	62 21 3c 40 58 cb    	vaddps zmm25,zmm24,zmm19
  a5611b:	62 a1 3c 40 5c db    	vsubps zmm19,zmm24,zmm19
  a56121:	62 31 54 40 58 ec    	vaddps zmm13,zmm21,zmm20
  a56127:	62 31 54 40 5c e4    	vsubps zmm12,zmm21,zmm20
  a5612d:	62 a1 4c 40 5c e7    	vsubps zmm20,zmm22,zmm23
  a56133:	62 a1 4c 40 58 ef    	vaddps zmm21,zmm22,zmm23
  a56139:	62 a1 74 40 5c f2    	vsubps zmm22,zmm17,zmm18
  a5613f:	62 a1 74 40 58 ca    	vaddps zmm17,zmm17,zmm18
  a56145:	62 a1 04 48 58 d0    	vaddps zmm18,zmm15,zmm16
  a5614b:	62 31 04 48 5c f8    	vsubps zmm15,zmm15,zmm16
  a56151:	62 c1 24 48 58 c6    	vaddps zmm16,zmm11,zmm14
  a56157:	62 51 24 48 5c f6    	vsubps zmm14,zmm11,zmm14
  a5615d:	62 62 7d 48 7f c9    	vpermt2ps zmm25,zmm0,zmm1
  a56163:	62 e2 7d 48 7f e9    	vpermt2ps zmm21,zmm0,zmm1
  a56169:	62 22 65 48 7f cd    	vpermt2ps zmm25,zmm3,zmm21
  a5616f:	62 e2 7d 48 7f e1    	vpermt2ps zmm20,zmm0,zmm1
  a56175:	62 e2 7d 48 7f d1    	vpermt2ps zmm18,zmm0,zmm1
  a5617b:	62 e2 7d 48 7f d9    	vpermt2ps zmm19,zmm0,zmm1
  a56181:	62 72 7d 48 7f f9    	vpermt2ps zmm15,zmm0,zmm1
  a56187:	62 c2 65 48 7f e7    	vpermt2ps zmm20,zmm3,zmm15
  a5618d:	62 e2 65 48 7f d2    	vpermt2ps zmm18,zmm3,zmm2
  a56193:	62 e2 65 48 7f da    	vpermt2ps zmm19,zmm3,zmm2
  a56199:	62 31 b5 40 14 fa    	vunpcklpd zmm15,zmm25,zmm18
  a5619f:	62 a1 b5 40 15 d2    	vunpckhpd zmm18,zmm25,zmm18
  a561a5:	62 a1 dd 40 14 eb    	vunpcklpd zmm21,zmm20,zmm19
  a561ab:	62 a1 dd 40 15 db    	vunpckhpd zmm19,zmm20,zmm19
  a561b1:	62 51 7c 48 28 df    	vmovaps zmm11,zmm15
  a561b7:	62 32 5d 48 7f dd    	vpermt2ps zmm11,zmm4,zmm21
  a561bd:	62 32 55 48 7f fd    	vpermt2ps zmm15,zmm5,zmm21
  a561c3:	62 a2 5d 48 7f d3    	vpermt2ps zmm18,zmm4,zmm19
  a561c9:	62 72 7d 48 7f e9    	vpermt2ps zmm13,zmm0,zmm1
  a561cf:	62 e2 7d 48 7f f1    	vpermt2ps zmm22,zmm0,zmm1
  a561d5:	62 e2 7d 48 7f c1    	vpermt2ps zmm16,zmm0,zmm1
  a561db:	62 72 7d 48 7f e1    	vpermt2ps zmm12,zmm0,zmm1
  a561e1:	62 e2 7d 48 7f c9    	vpermt2ps zmm17,zmm0,zmm1
  a561e7:	62 72 7d 48 7f f1    	vpermt2ps zmm14,zmm0,zmm1
  a561ed:	62 32 65 48 7f e9    	vpermt2ps zmm13,zmm3,zmm17
  a561f3:	62 c2 65 48 7f f6    	vpermt2ps zmm22,zmm3,zmm14
  a561f9:	62 e2 65 48 7f c2    	vpermt2ps zmm16,zmm3,zmm2
  a561ff:	62 72 65 48 7f e2    	vpermt2ps zmm12,zmm3,zmm2
  a56205:	62 31 95 48 14 f0    	vunpcklpd zmm14,zmm13,zmm16
  a5620b:	62 31 95 48 15 e8    	vunpckhpd zmm13,zmm13,zmm16
  a56211:	62 c1 cd 40 14 c4    	vunpcklpd zmm16,zmm22,zmm12
  a56217:	62 51 cd 40 15 e4    	vunpckhpd zmm12,zmm22,zmm12
  a5621d:	62 c1 7c 48 28 ce    	vmovaps zmm17,zmm14
  a56223:	62 a2 5d 48 7f c8    	vpermt2ps zmm17,zmm4,zmm16
  a56229:	62 32 55 48 7f f0    	vpermt2ps zmm14,zmm5,zmm16
  a5622f:	62 52 5d 48 7f ec    	vpermt2ps zmm13,zmm4,zmm12
  a56235:	62 71 7c 48 10 61 02 	vmovups zmm12,ZMMWORD PTR [rcx+0x80]
  a5623c:	62 e1 7c 48 10 41 03 	vmovups zmm16,ZMMWORD PTR [rcx+0xc0]
  a56243:	62 c1 04 48 59 dc    	vmulps zmm19,zmm15,zmm12
  a56249:	62 a2 0d 48 bc d8    	vfnmadd231ps zmm19,zmm14,zmm16
  a5624f:	62 51 0c 48 59 e4    	vmulps zmm12,zmm14,zmm12
  a56255:	62 71 7c 48 10 71 04 	vmovups zmm14,ZMMWORD PTR [rcx+0x100]
  a5625c:	62 52 7d 40 b8 e7    	vfmadd231ps zmm12,zmm16,zmm15
  a56262:	62 71 7c 48 10 79 05 	vmovups zmm15,ZMMWORD PTR [rcx+0x140]
  a56269:	62 c1 6c 40 59 c6    	vmulps zmm16,zmm18,zmm14
  a5626f:	62 c2 15 48 bc c7    	vfnmadd231ps zmm16,zmm13,zmm15
  a56275:	62 51 14 48 59 ee    	vmulps zmm13,zmm13,zmm14
  a5627b:	62 31 64 40 58 f0    	vaddps zmm14,zmm19,zmm16
  a56281:	62 32 05 48 b8 ea    	vfmadd231ps zmm13,zmm15,zmm18
  a56287:	62 51 1c 48 58 fd    	vaddps zmm15,zmm12,zmm13
  a5628d:	62 e1 7c 48 28 d7    	vmovaps zmm18,zmm7
  a56293:	62 c2 0d 48 ac d3    	vfnmadd213ps zmm18,zmm14,zmm11
  a56299:	62 51 1c 48 5c e5    	vsubps zmm12,zmm12,zmm13
  a5629f:	62 51 1c 48 59 e1    	vmulps zmm12,zmm12,zmm9
  a562a5:	62 51 6c 40 58 ec    	vaddps zmm13,zmm18,zmm12
  a562ab:	62 a1 64 40 5c c0    	vsubps zmm16,zmm19,zmm16
  a562b1:	62 e1 7c 48 28 df    	vmovaps zmm19,zmm7
  a562b7:	62 a2 05 48 ac d9    	vfnmadd213ps zmm19,zmm15,zmm17
  a562bd:	62 c1 7c 40 59 c1    	vmulps zmm16,zmm16,zmm9
  a562c3:	62 51 6c 40 5c e4    	vsubps zmm12,zmm18,zmm12
  a562c9:	62 a1 64 40 5c d0    	vsubps zmm18,zmm19,zmm16
  a562cf:	62 a1 64 40 58 c0    	vaddps zmm16,zmm19,zmm16
  a562d5:	62 51 24 48 58 de    	vaddps zmm11,zmm11,zmm14
  a562db:	62 51 74 40 58 f7    	vaddps zmm14,zmm17,zmm15
  a562e1:	62 52 2d 48 7f de    	vpermt2ps zmm11,zmm10,zmm14
  a562e7:	62 73 7d 48 19 5c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x20],zmm11,0x2
  a562ee:	02 02 
  a562f0:	c5 7c 11 1c 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm11
  a562f5:	62 32 2d 48 7f ea    	vpermt2ps zmm13,zmm10,zmm18
  a562fb:	62 73 7d 48 19 6c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x50],zmm13,0x2
  a56302:	05 02 
  a56304:	c5 7c 11 6c 16 30    	vmovups YMMWORD PTR [rsi+rdx*1+0x30],ymm13
  a5630a:	62 32 2d 48 7f e0    	vpermt2ps zmm12,zmm10,zmm16
  a56310:	62 73 7d 48 19 64 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x80],zmm12,0x2
  a56317:	08 02 
  a56319:	c5 7c 11 64 16 60    	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm12
  a5631f:	48 81 c2 90 00 00 00 	add    rdx,0x90
  a56326:	48 39 d0             	cmp    rax,rdx
  a56329:	0f 85 51 fc ff ff    	jne    a55f80 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x80>
  a5632f:	c5 f8 77             	vzeroupper
  a56332:	c3                   	ret
