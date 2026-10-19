
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a0cf40 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a0cf40:	55                   	push   rbp
  a0cf41:	48 89 e5             	mov    rbp,rsp
  a0cf44:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a0cf48:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  a0cf4f:	62 f1 7c 48 28 05 27 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6ba027]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a0cf56:	a0 6b ff 
  a0cf59:	62 f1 7c 48 28 0d 9d 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff6b9f9d]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a0cf60:	9f 6b ff 
  a0cf63:	62 f1 7c 48 28 15 d3 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff6b9fd3]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a0cf6a:	9f 6b ff 
  a0cf6d:	62 e1 7c 48 28 3d 89 	vmovaps zmm23,ZMMWORD PTR [rip+0xffffffffff6b9e89]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a0cf74:	9e 6b ff 
  a0cf77:	62 61 7c 48 28 05 bf 	vmovaps zmm24,ZMMWORD PTR [rip+0xffffffffff6b9ebf]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a0cf7e:	9e 6b ff 
  a0cf81:	48 c1 e2 05          	shl    rdx,0x5
  a0cf85:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  a0cf89:	31 d2                	xor    edx,edx
  a0cf8b:	4c 8d 44 24 40       	lea    r8,[rsp+0x40]
  a0cf90:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  a0cf95:	62 61 7c 48 28 0d a1 	vmovaps zmm25,ZMMWORD PTR [rip+0xffffffffff681ba1]        # 8eb40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1bff0>
  a0cf9c:	1b 68 ff 
  a0cf9f:	c5 c8 57 f6          	vxorps xmm6,xmm6,xmm6
  a0cfa3:	62 f2 7d 48 18 3d b3 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff6684b3]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a0cfaa:	84 66 ff 
  a0cfad:	62 72 7d 48 18 05 1d 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff66831d]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a0cfb4:	83 66 ff 
  a0cfb7:	62 61 7c 48 28 15 bf 	vmovaps zmm26,ZMMWORD PTR [rip+0xffffffffff681bbf]        # 8eb80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c030>
  a0cfbe:	1b 68 ff 
  a0cfc1:	c4 41 28 57 d2       	vxorps xmm10,xmm10,xmm10
  a0cfc6:	62 52 7d 48 7f d2    	vpermt2ps zmm10,zmm0,zmm10
  a0cfcc:	62 71 7c 48 28 1d ea 	vmovaps zmm11,ZMMWORD PTR [rip+0xffffffffff681bea]        # 8ebc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c070>
  a0cfd3:	1b 68 ff 
  a0cfd6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  a0cfdd:	00 00 00 
  a0cfe0:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  a0cfe5:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  a0cfea:	c5 7c 10 24 17       	vmovups ymm12,YMMWORD PTR [rdi+rdx*1]
  a0cfef:	c5 78 10 6c 17 20    	vmovups xmm13,XMMWORD PTR [rdi+rdx*1+0x20]
  a0cff5:	c4 63 11 21 6c 17 24 	vinsertps xmm13,xmm13,DWORD PTR [rdi+rdx*1+0x24],0x10
  a0cffc:	10 
  a0cffd:	c4 62 79 18 74 17 28 	vbroadcastss xmm14,DWORD PTR [rdi+rdx*1+0x28]
  a0d004:	c5 78 10 7c 17 50    	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x50]
  a0d00a:	c4 63 01 21 7c 17 54 	vinsertps xmm15,xmm15,DWORD PTR [rdi+rdx*1+0x54],0x10
  a0d011:	10 
  a0d012:	c4 43 09 0c ed 03    	vblendps xmm13,xmm14,xmm13,0x3
  a0d018:	c4 62 79 18 74 17 58 	vbroadcastss xmm14,DWORD PTR [rdi+rdx*1+0x58]
  a0d01f:	c4 63 11 21 6c 17 2c 	vinsertps xmm13,xmm13,DWORD PTR [rdi+rdx*1+0x2c],0x30
  a0d026:	30 
  a0d027:	62 e1 7c 28 10 84 17 	vmovups ymm16,YMMWORD PTR [rdi+rdx*1+0x30]
  a0d02e:	30 00 00 00 
  a0d032:	c4 43 09 0c f7 03    	vblendps xmm14,xmm14,xmm15,0x3
  a0d038:	c4 63 09 21 74 17 5c 	vinsertps xmm14,xmm14,DWORD PTR [rdi+rdx*1+0x5c],0x30
  a0d03f:	30 
  a0d040:	c5 78 10 bc 17 80 00 	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x80]
  a0d047:	00 00 
  a0d049:	c4 63 01 21 bc 17 84 	vinsertps xmm15,xmm15,DWORD PTR [rdi+rdx*1+0x84],0x10
  a0d050:	00 00 00 10 
  a0d054:	62 53 1d 48 18 ed 02 	vinsertf32x4 zmm13,zmm12,xmm13,0x2
  a0d05b:	62 53 7d 40 18 f6 02 	vinsertf32x4 zmm14,zmm16,xmm14,0x2
  a0d062:	c4 e2 79 18 9c 17 88 	vbroadcastss xmm3,DWORD PTR [rdi+rdx*1+0x88]
  a0d069:	00 00 00 
  a0d06c:	62 51 7c 48 28 e5    	vmovaps zmm12,zmm13
  a0d072:	c4 c3 61 0c df 03    	vblendps xmm3,xmm3,xmm15,0x3
  a0d078:	c4 e3 61 21 9c 17 8c 	vinsertps xmm3,xmm3,DWORD PTR [rdi+rdx*1+0x8c],0x30
  a0d07f:	00 00 00 30 
  a0d083:	62 72 2d 40 7f ee    	vpermt2ps zmm13,zmm26,zmm6
  a0d089:	c5 7c 10 7c 17 60    	vmovups ymm15,YMMWORD PTR [rdi+rdx*1+0x60]
  a0d08f:	62 e3 05 48 18 c3 02 	vinsertf32x4 zmm16,zmm15,xmm3,0x2
  a0d096:	c5 fc 10 9c 17 90 00 	vmovups ymm3,YMMWORD PTR [rdi+rdx*1+0x90]
  a0d09d:	00 00 
  a0d09f:	62 c1 7c 48 28 d6    	vmovaps zmm18,zmm14
  a0d0a5:	c5 78 10 bc 17 b0 00 	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0xb0]
  a0d0ac:	00 00 
  a0d0ae:	c4 63 01 21 bc 17 b4 	vinsertps xmm15,xmm15,DWORD PTR [rdi+rdx*1+0xb4],0x10
  a0d0b5:	00 00 00 10 
  a0d0b9:	62 72 2d 40 7f f6    	vpermt2ps zmm14,zmm26,zmm6
  a0d0bf:	c4 e2 79 18 a4 17 b8 	vbroadcastss xmm4,DWORD PTR [rdi+rdx*1+0xb8]
  a0d0c6:	00 00 00 
  a0d0c9:	c4 c3 59 0c e7 03    	vblendps xmm4,xmm4,xmm15,0x3
  a0d0cf:	62 a1 7c 48 28 d8    	vmovaps zmm19,zmm16
  a0d0d5:	c4 e3 59 21 a4 17 bc 	vinsertps xmm4,xmm4,DWORD PTR [rdi+rdx*1+0xbc],0x30
  a0d0dc:	00 00 00 30 
  a0d0e0:	62 73 65 48 18 fc 02 	vinsertf32x4 zmm15,zmm3,xmm4,0x2
  a0d0e7:	62 e2 2d 40 7f c6    	vpermt2ps zmm16,zmm26,zmm6
  a0d0ed:	c5 f8 10 9c 17 e0 00 	vmovups xmm3,XMMWORD PTR [rdi+rdx*1+0xe0]
  a0d0f4:	00 00 
  a0d0f6:	c4 e3 61 21 9c 17 e4 	vinsertps xmm3,xmm3,DWORD PTR [rdi+rdx*1+0xe4],0x10
  a0d0fd:	00 00 00 10 
  a0d101:	62 c1 7c 48 28 cf    	vmovaps zmm17,zmm15
  a0d107:	c5 fc 10 a4 17 c0 00 	vmovups ymm4,YMMWORD PTR [rdi+rdx*1+0xc0]
  a0d10e:	00 00 
  a0d110:	c4 e2 79 18 ac 17 e8 	vbroadcastss xmm5,DWORD PTR [rdi+rdx*1+0xe8]
  a0d117:	00 00 00 
  a0d11a:	62 72 2d 40 7f fe    	vpermt2ps zmm15,zmm26,zmm6
  a0d120:	c4 e3 51 0c db 03    	vblendps xmm3,xmm5,xmm3,0x3
  a0d126:	c4 e3 61 21 9c 17 ec 	vinsertps xmm3,xmm3,DWORD PTR [rdi+rdx*1+0xec],0x30
  a0d12d:	00 00 00 30 
  a0d131:	62 72 35 40 7f e6    	vpermt2ps zmm12,zmm25,zmm6
  a0d137:	62 f3 5d 48 18 db 02 	vinsertf32x4 zmm3,zmm4,xmm3,0x2
  a0d13e:	62 f1 7c 48 28 e3    	vmovaps zmm4,zmm3
  a0d144:	62 f2 2d 40 7f de    	vpermt2ps zmm3,zmm26,zmm6
  a0d14a:	62 e2 35 40 7f d6    	vpermt2ps zmm18,zmm25,zmm6
  a0d150:	c5 f8 10 ac 17 10 01 	vmovups xmm5,XMMWORD PTR [rdi+rdx*1+0x110]
  a0d157:	00 00 
  a0d159:	c4 e3 51 21 ac 17 14 	vinsertps xmm5,xmm5,DWORD PTR [rdi+rdx*1+0x114],0x10
  a0d160:	01 00 00 10 
  a0d164:	62 e2 35 40 7f de    	vpermt2ps zmm19,zmm25,zmm6
  a0d16a:	62 e1 7c 28 10 a4 17 	vmovups ymm20,YMMWORD PTR [rdi+rdx*1+0xf0]
  a0d171:	f0 00 00 00 
  a0d175:	c4 62 79 18 8c 17 18 	vbroadcastss xmm9,DWORD PTR [rdi+rdx*1+0x118]
  a0d17c:	01 00 00 
  a0d17f:	62 e2 35 40 7f ce    	vpermt2ps zmm17,zmm25,zmm6
  a0d185:	c4 e3 31 0c ed 03    	vblendps xmm5,xmm9,xmm5,0x3
  a0d18b:	c4 e3 51 21 ac 17 1c 	vinsertps xmm5,xmm5,DWORD PTR [rdi+rdx*1+0x11c],0x30
  a0d192:	01 00 00 30 
  a0d196:	62 f2 35 40 7f e6    	vpermt2ps zmm4,zmm25,zmm6
  a0d19c:	62 f3 5d 40 18 ed 02 	vinsertf32x4 zmm5,zmm20,xmm5,0x2
  a0d1a3:	62 71 7c 48 28 cd    	vmovaps zmm9,zmm5
  a0d1a9:	62 f2 2d 40 7f ee    	vpermt2ps zmm5,zmm26,zmm6
  a0d1af:	62 72 35 40 7f ce    	vpermt2ps zmm9,zmm25,zmm6
  a0d1b5:	62 e1 7c 40 58 e3    	vaddps zmm20,zmm16,zmm3
  a0d1bb:	62 a1 14 48 58 ec    	vaddps zmm21,zmm13,zmm20
  a0d1c1:	62 c1 54 48 58 f6    	vaddps zmm22,zmm5,zmm14
  a0d1c7:	62 32 45 48 bc ec    	vfnmadd231ps zmm13,zmm7,zmm20
  a0d1cd:	62 e1 64 40 58 e4    	vaddps zmm20,zmm19,zmm4
  a0d1d3:	62 f1 64 40 5c e4    	vsubps zmm4,zmm19,zmm4
  a0d1d9:	62 a1 04 48 58 de    	vaddps zmm19,zmm15,zmm22
  a0d1df:	62 32 45 48 bc fe    	vfnmadd231ps zmm15,zmm7,zmm22
  a0d1e5:	62 a1 34 48 58 f2    	vaddps zmm22,zmm9,zmm18
  a0d1eb:	62 31 34 48 5c ca    	vsubps zmm9,zmm9,zmm18
  a0d1f1:	62 a1 1c 48 58 d4    	vaddps zmm18,zmm12,zmm20
  a0d1f7:	62 32 45 48 bc e4    	vfnmadd231ps zmm12,zmm7,zmm20
  a0d1fd:	62 a1 74 40 58 e6    	vaddps zmm20,zmm17,zmm22
  a0d203:	62 f1 7c 40 5c db    	vsubps zmm3,zmm16,zmm3
  a0d209:	62 a2 45 48 bc ce    	vfnmadd231ps zmm17,zmm7,zmm22
  a0d20f:	62 a1 54 40 58 f3    	vaddps zmm22,zmm21,zmm19
  a0d215:	62 a1 6c 40 58 c4    	vaddps zmm16,zmm18,zmm20
  a0d21b:	62 d1 5c 48 59 e0    	vmulps zmm4,zmm4,zmm8
  a0d221:	62 d1 54 48 5c ee    	vsubps zmm5,zmm5,zmm14
  a0d227:	62 71 14 48 58 f4    	vaddps zmm14,zmm13,zmm4
  a0d22d:	62 51 34 48 59 c8    	vmulps zmm9,zmm9,zmm8
  a0d233:	62 d1 64 48 59 d8    	vmulps zmm3,zmm3,zmm8
  a0d239:	62 f1 14 48 5c e4    	vsubps zmm4,zmm13,zmm4
  a0d23f:	62 51 04 48 58 e9    	vaddps zmm13,zmm15,zmm9
  a0d245:	62 51 04 48 5c c9    	vsubps zmm9,zmm15,zmm9
  a0d24b:	62 71 1c 48 5c fb    	vsubps zmm15,zmm12,zmm3
  a0d251:	62 d1 54 48 59 e8    	vmulps zmm5,zmm5,zmm8
  a0d257:	62 d1 64 48 58 dc    	vaddps zmm3,zmm3,zmm12
  a0d25d:	62 71 74 40 5c e5    	vsubps zmm12,zmm17,zmm5
  a0d263:	62 b1 54 48 58 e9    	vaddps zmm5,zmm5,zmm17
  a0d269:	62 a1 54 40 5c db    	vsubps zmm19,zmm21,zmm19
  a0d26f:	62 41 0c 48 5c dd    	vsubps zmm27,zmm14,zmm13
  a0d275:	62 c1 04 48 5c cc    	vsubps zmm17,zmm15,zmm12
  a0d27b:	62 a1 6c 40 5c d4    	vsubps zmm18,zmm18,zmm20
  a0d281:	62 41 5c 48 58 e1    	vaddps zmm28,zmm4,zmm9
  a0d287:	62 51 0c 48 58 ed    	vaddps zmm13,zmm14,zmm13
  a0d28d:	62 e1 64 48 58 e5    	vaddps zmm20,zmm3,zmm5
  a0d293:	62 51 04 48 58 e4    	vaddps zmm12,zmm15,zmm12
  a0d299:	62 d1 5c 48 5c e1    	vsubps zmm4,zmm4,zmm9
  a0d29f:	62 e1 64 48 5c ed    	vsubps zmm21,zmm3,zmm5
  a0d2a5:	62 e2 7d 48 7f f6    	vpermt2ps zmm22,zmm0,zmm6
  a0d2ab:	62 62 7d 48 7f de    	vpermt2ps zmm27,zmm0,zmm6
  a0d2b1:	62 e2 7d 48 7f de    	vpermt2ps zmm19,zmm0,zmm6
  a0d2b7:	62 62 7d 48 7f e6    	vpermt2ps zmm28,zmm0,zmm6
  a0d2bd:	62 72 7d 48 7f ee    	vpermt2ps zmm13,zmm0,zmm6
  a0d2c3:	62 f2 7d 48 7f e6    	vpermt2ps zmm4,zmm0,zmm6
  a0d2c9:	62 b1 7c 48 28 de    	vmovaps zmm3,zmm22
  a0d2cf:	62 d2 75 48 7f dd    	vpermt2ps zmm3,zmm1,zmm13
  a0d2d5:	62 c2 6d 48 7f f5    	vpermt2ps zmm22,zmm2,zmm13
  a0d2db:	62 91 7c 48 28 eb    	vmovaps zmm5,zmm27
  a0d2e1:	62 62 6d 48 7f dc    	vpermt2ps zmm27,zmm2,zmm4
  a0d2e7:	62 f2 75 48 7f ec    	vpermt2ps zmm5,zmm1,zmm4
  a0d2ed:	62 91 7c 48 28 e4    	vmovaps zmm4,zmm28
  a0d2f3:	62 d2 75 48 7f e2    	vpermt2ps zmm4,zmm1,zmm10
  a0d2f9:	62 42 6d 48 7f e2    	vpermt2ps zmm28,zmm2,zmm10
  a0d2ff:	62 11 cd 40 14 f4    	vunpcklpd zmm14,zmm22,zmm28
  a0d305:	62 31 7c 48 28 cb    	vmovaps zmm9,zmm19
  a0d30b:	62 52 75 48 7f ca    	vpermt2ps zmm9,zmm1,zmm10
  a0d311:	62 c2 6d 48 7f da    	vpermt2ps zmm19,zmm2,zmm10
  a0d317:	62 a1 a5 40 14 f3    	vunpcklpd zmm22,zmm27,zmm19
  a0d31d:	62 71 e5 48 14 ec    	vunpcklpd zmm13,zmm3,zmm4
  a0d323:	62 71 e5 48 15 fc    	vunpckhpd zmm15,zmm3,zmm4
  a0d329:	62 d1 d5 48 14 d9    	vunpcklpd zmm3,zmm5,zmm9
  a0d32f:	62 d1 d5 48 15 e1    	vunpckhpd zmm4,zmm5,zmm9
  a0d335:	62 e2 7d 48 7f c6    	vpermt2ps zmm16,zmm0,zmm6
  a0d33b:	62 e2 7d 48 7f ce    	vpermt2ps zmm17,zmm0,zmm6
  a0d341:	62 e2 7d 48 7f e6    	vpermt2ps zmm20,zmm0,zmm6
  a0d347:	62 c1 7c 48 28 de    	vmovaps zmm19,zmm14
  a0d34d:	62 e2 7d 48 7f d6    	vpermt2ps zmm18,zmm0,zmm6
  a0d353:	62 72 7d 48 7f e6    	vpermt2ps zmm12,zmm0,zmm6
  a0d359:	62 e2 7d 48 7f ee    	vpermt2ps zmm21,zmm0,zmm6
  a0d35f:	62 32 3d 40 7f f6    	vpermt2ps zmm14,zmm24,zmm22
  a0d365:	62 b1 7c 48 28 e8    	vmovaps zmm5,zmm16
  a0d36b:	62 d2 75 48 7f ec    	vpermt2ps zmm5,zmm1,zmm12
  a0d371:	62 c2 6d 48 7f c4    	vpermt2ps zmm16,zmm2,zmm12
  a0d377:	62 51 7c 48 28 e5    	vmovaps zmm12,zmm13
  a0d37d:	62 31 7c 48 28 c9    	vmovaps zmm9,zmm17
  a0d383:	62 32 75 48 7f cd    	vpermt2ps zmm9,zmm1,zmm21
  a0d389:	62 a2 6d 48 7f cd    	vpermt2ps zmm17,zmm2,zmm21
  a0d38f:	62 72 3d 40 7f eb    	vpermt2ps zmm13,zmm24,zmm3
  a0d395:	62 21 7c 48 28 dc    	vmovaps zmm27,zmm20
  a0d39b:	62 42 75 48 7f da    	vpermt2ps zmm27,zmm1,zmm10
  a0d3a1:	62 c2 6d 48 7f e2    	vpermt2ps zmm20,zmm2,zmm10
  a0d3a7:	62 a2 45 40 7f de    	vpermt2ps zmm19,zmm23,zmm22
  a0d3ad:	62 a1 fd 40 14 e4    	vunpcklpd zmm20,zmm16,zmm20
  a0d3b3:	62 21 7c 48 28 e2    	vmovaps zmm28,zmm18
  a0d3b9:	62 42 75 48 7f e2    	vpermt2ps zmm28,zmm1,zmm10
  a0d3bf:	62 c1 7c 48 28 ef    	vmovaps zmm21,zmm15
  a0d3c5:	62 c2 6d 48 7f d2    	vpermt2ps zmm18,zmm2,zmm10
  a0d3cb:	62 a1 f5 40 14 d2    	vunpcklpd zmm18,zmm17,zmm18
  a0d3d1:	62 81 d5 48 14 c3    	vunpcklpd zmm16,zmm5,zmm27
  a0d3d7:	62 72 3d 40 7f fc    	vpermt2ps zmm15,zmm24,zmm4
  a0d3dd:	62 81 d5 48 15 f3    	vunpckhpd zmm22,zmm5,zmm27
  a0d3e3:	62 81 b5 48 14 cc    	vunpcklpd zmm17,zmm9,zmm28
  a0d3e9:	62 91 b5 48 15 ec    	vunpckhpd zmm5,zmm9,zmm28
  a0d3ef:	62 72 45 40 7f e3    	vpermt2ps zmm12,zmm23,zmm3
  a0d3f5:	62 b1 7c 48 28 de    	vmovaps zmm3,zmm22
  a0d3fb:	62 e2 3d 40 7f f5    	vpermt2ps zmm22,zmm24,zmm5
  a0d401:	62 31 7c 48 28 cc    	vmovaps zmm9,zmm20
  a0d407:	62 e2 45 40 7f ec    	vpermt2ps zmm21,zmm23,zmm4
  a0d40d:	62 32 45 40 7f ca    	vpermt2ps zmm9,zmm23,zmm18
  a0d413:	62 a2 3d 40 7f e2    	vpermt2ps zmm20,zmm24,zmm18
  a0d419:	62 f1 7c 48 10 61 08 	vmovups zmm4,ZMMWORD PTR [rcx+0x200]
  a0d420:	62 f2 45 40 7f dd    	vpermt2ps zmm3,zmm23,zmm5
  a0d426:	62 f1 7c 48 10 69 09 	vmovups zmm5,ZMMWORD PTR [rcx+0x240]
  a0d42d:	62 e1 64 40 59 d4    	vmulps zmm18,zmm19,zmm4
  a0d433:	62 f1 34 48 59 e4    	vmulps zmm4,zmm9,zmm4
  a0d439:	62 e2 35 48 bc d5    	vfnmadd231ps zmm18,zmm9,zmm5
  a0d43f:	62 71 7c 48 10 49 04 	vmovups zmm9,ZMMWORD PTR [rcx+0x100]
  a0d446:	62 b2 55 48 b8 e3    	vfmadd231ps zmm4,zmm5,zmm19
  a0d44c:	62 f1 7c 48 10 69 05 	vmovups zmm5,ZMMWORD PTR [rcx+0x140]
  a0d453:	62 41 54 40 59 d9    	vmulps zmm27,zmm21,zmm9
  a0d459:	62 62 65 48 bc dd    	vfnmadd231ps zmm27,zmm3,zmm5
  a0d45f:	62 d1 64 48 59 d9    	vmulps zmm3,zmm3,zmm9
  a0d465:	62 71 7c 48 10 49 06 	vmovups zmm9,ZMMWORD PTR [rcx+0x180]
  a0d46c:	62 b2 55 48 b8 dd    	vfmadd231ps zmm3,zmm5,zmm21
  a0d472:	62 f1 7c 48 10 69 07 	vmovups zmm5,ZMMWORD PTR [rcx+0x1c0]
  a0d479:	62 c1 04 48 59 e9    	vmulps zmm21,zmm15,zmm9
  a0d47f:	62 c1 4c 40 59 d9    	vmulps zmm19,zmm22,zmm9
  a0d485:	62 e2 4d 40 bc ed    	vfnmadd231ps zmm21,zmm22,zmm5
  a0d48b:	62 71 7c 48 10 49 0a 	vmovups zmm9,ZMMWORD PTR [rcx+0x280]
  a0d492:	62 c2 55 48 b8 df    	vfmadd231ps zmm19,zmm5,zmm15
  a0d498:	62 f1 7c 48 10 69 0b 	vmovups zmm5,ZMMWORD PTR [rcx+0x2c0]
  a0d49f:	62 51 0c 48 59 f9    	vmulps zmm15,zmm14,zmm9
  a0d4a5:	62 72 5d 40 bc fd    	vfnmadd231ps zmm15,zmm20,zmm5
  a0d4ab:	62 51 5c 40 59 c9    	vmulps zmm9,zmm20,zmm9
  a0d4b1:	62 a1 7c 48 28 e0    	vmovaps zmm20,zmm16
  a0d4b7:	62 a2 3d 40 7f c1    	vpermt2ps zmm16,zmm24,zmm17
  a0d4bd:	62 52 55 48 b8 ce    	vfmadd231ps zmm9,zmm5,zmm14
  a0d4c3:	62 f1 7c 48 10 69 02 	vmovups zmm5,ZMMWORD PTR [rcx+0x80]
  a0d4ca:	62 71 7c 48 10 71 03 	vmovups zmm14,ZMMWORD PTR [rcx+0xc0]
  a0d4d1:	62 a2 45 40 7f e1    	vpermt2ps zmm20,zmm23,zmm17
  a0d4d7:	62 e1 14 48 59 cd    	vmulps zmm17,zmm13,zmm5
  a0d4dd:	62 c2 7d 40 bc ce    	vfnmadd231ps zmm17,zmm16,zmm14
  a0d4e3:	62 f1 7c 40 59 ed    	vmulps zmm5,zmm16,zmm5
  a0d4e9:	62 a1 24 40 58 c2    	vaddps zmm16,zmm27,zmm18
  a0d4ef:	62 d2 0d 48 b8 ed    	vfmadd231ps zmm5,zmm14,zmm13
  a0d4f5:	62 31 04 48 58 e9    	vaddps zmm13,zmm15,zmm17
  a0d4fb:	62 71 64 48 58 f4    	vaddps zmm14,zmm3,zmm4
  a0d501:	62 f1 64 48 5c dc    	vsubps zmm3,zmm3,zmm4
  a0d507:	62 d1 54 40 58 e5    	vaddps zmm4,zmm21,zmm13
  a0d50d:	62 c2 45 48 bc ed    	vfnmadd231ps zmm21,zmm7,zmm13
  a0d513:	62 31 1c 48 58 e8    	vaddps zmm13,zmm12,zmm16
  a0d519:	62 32 45 48 bc e0    	vfnmadd231ps zmm12,zmm7,zmm16
  a0d51f:	62 e1 34 48 58 c5    	vaddps zmm16,zmm9,zmm5
  a0d525:	62 f1 34 48 5c ed    	vsubps zmm5,zmm9,zmm5
  a0d52b:	62 31 0c 48 58 cc    	vaddps zmm9,zmm14,zmm20
  a0d531:	62 c2 45 48 bc e6    	vfnmadd231ps zmm20,zmm7,zmm14
  a0d537:	62 31 24 40 5c f2    	vsubps zmm14,zmm27,zmm18
  a0d53d:	62 a1 64 40 58 d0    	vaddps zmm18,zmm19,zmm16
  a0d543:	62 a2 45 48 bc d8    	vfnmadd231ps zmm19,zmm7,zmm16
  a0d549:	62 d1 64 48 59 d8    	vmulps zmm3,zmm3,zmm8
  a0d54f:	62 d1 54 48 59 e8    	vmulps zmm5,zmm5,zmm8
  a0d555:	62 31 04 48 5c f9    	vsubps zmm15,zmm15,zmm17
  a0d55b:	62 e1 54 40 58 c5    	vaddps zmm16,zmm21,zmm5
  a0d561:	62 f1 54 40 5c ed    	vsubps zmm5,zmm21,zmm5
  a0d567:	62 e1 1c 48 58 cb    	vaddps zmm17,zmm12,zmm3
  a0d56d:	62 51 0c 48 59 f0    	vmulps zmm14,zmm14,zmm8
  a0d573:	62 51 04 48 59 f8    	vmulps zmm15,zmm15,zmm8
  a0d579:	62 f1 1c 48 5c db    	vsubps zmm3,zmm12,zmm3
  a0d57f:	62 51 64 40 5c e7    	vsubps zmm12,zmm19,zmm15
  a0d585:	62 51 64 40 58 ff    	vaddps zmm15,zmm19,zmm15
  a0d58b:	62 c1 5c 40 5c de    	vsubps zmm19,zmm20,zmm14
  a0d591:	62 31 0c 48 58 f4    	vaddps zmm14,zmm14,zmm20
  a0d597:	62 a1 74 40 5c e0    	vsubps zmm20,zmm17,zmm16
  a0d59d:	62 a1 74 40 58 c0    	vaddps zmm16,zmm17,zmm16
  a0d5a3:	62 c1 64 40 5c cc    	vsubps zmm17,zmm19,zmm12
  a0d5a9:	62 51 64 40 58 e4    	vaddps zmm12,zmm19,zmm12
  a0d5af:	62 a1 34 48 5c da    	vsubps zmm19,zmm9,zmm18
  a0d5b5:	62 31 34 48 58 ca    	vaddps zmm9,zmm9,zmm18
  a0d5bb:	62 e1 64 48 58 d5    	vaddps zmm18,zmm3,zmm5
  a0d5c1:	62 f1 64 48 5c dd    	vsubps zmm3,zmm3,zmm5
  a0d5c7:	62 f1 14 48 5c ec    	vsubps zmm5,zmm13,zmm4
  a0d5cd:	62 f1 14 48 58 e4    	vaddps zmm4,zmm13,zmm4
  a0d5d3:	62 51 0c 48 58 ef    	vaddps zmm13,zmm14,zmm15
  a0d5d9:	62 51 0c 48 5c f7    	vsubps zmm14,zmm14,zmm15
  a0d5df:	62 72 25 48 7f cc    	vpermt2ps zmm9,zmm11,zmm4
  a0d5e5:	62 73 7d 48 19 4c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x20],zmm9,0x2
  a0d5ec:	02 02 
  a0d5ee:	c5 7c 11 0c 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm9
  a0d5f3:	62 a2 25 48 7f cc    	vpermt2ps zmm17,zmm11,zmm20
  a0d5f9:	62 e3 7d 48 19 4c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x50],zmm17,0x2
  a0d600:	05 02 
  a0d602:	62 e1 7c 28 11 8c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x30],ymm17
  a0d609:	30 00 00 00 
  a0d60d:	62 32 25 48 7f ea    	vpermt2ps zmm13,zmm11,zmm18
  a0d613:	62 73 7d 48 19 6c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x80],zmm13,0x2
  a0d61a:	08 02 
  a0d61c:	c5 7c 11 6c 16 60    	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm13
  a0d622:	62 e2 25 48 7f dd    	vpermt2ps zmm19,zmm11,zmm5
  a0d628:	62 e3 7d 48 19 5c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xb0],zmm19,0x2
  a0d62f:	0b 02 
  a0d631:	62 e1 7c 28 11 9c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x90],ymm19
  a0d638:	90 00 00 00 
  a0d63c:	62 32 25 48 7f e0    	vpermt2ps zmm12,zmm11,zmm16
  a0d642:	62 72 25 48 7f f3    	vpermt2ps zmm14,zmm11,zmm3
  a0d648:	62 73 7d 48 19 64 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xe0],zmm12,0x2
  a0d64f:	0e 02 
  a0d651:	c5 7c 11 a4 16 c0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xc0],ymm12
  a0d658:	00 00 
  a0d65a:	62 73 7d 48 19 74 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x110],zmm14,0x2
  a0d661:	11 02 
  a0d663:	c5 7c 11 b4 16 f0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xf0],ymm14
  a0d66a:	00 00 
  a0d66c:	48 81 c2 20 01 00 00 	add    rdx,0x120
  a0d673:	48 39 d0             	cmp    rax,rdx
  a0d676:	0f 85 64 f9 ff ff    	jne    a0cfe0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0xa0>
  a0d67c:	48 89 ec             	mov    rsp,rbp
  a0d67f:	5d                   	pop    rbp
  a0d680:	c5 f8 77             	vzeroupper
  a0d683:	c3                   	ret
