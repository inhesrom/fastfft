
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a14e40 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a14e40:	55                   	push   rbp
  a14e41:	48 89 e5             	mov    rbp,rsp
  a14e44:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a14e48:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  a14e4f:	62 f1 7c 48 28 05 27 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6b2127]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a14e56:	21 6b ff 
  a14e59:	62 f1 7c 48 28 0d 9d 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff6b209d]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a14e60:	20 6b ff 
  a14e63:	62 f1 7c 48 28 15 d3 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff6b20d3]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a14e6a:	20 6b ff 
  a14e6d:	62 61 7c 48 28 1d 89 	vmovaps zmm27,ZMMWORD PTR [rip+0xffffffffff6b1f89]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a14e74:	1f 6b ff 
  a14e77:	62 61 7c 48 28 25 bf 	vmovaps zmm28,ZMMWORD PTR [rip+0xffffffffff6b1fbf]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a14e7e:	1f 6b ff 
  a14e81:	48 c1 e2 07          	shl    rdx,0x7
  a14e85:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  a14e89:	31 d2                	xor    edx,edx
  a14e8b:	4c 8d 44 24 40       	lea    r8,[rsp+0x40]
  a14e90:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  a14e95:	62 f1 7c 48 28 2d e1 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff67a4e1]        # 8f380 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c830>
  a14e9c:	a4 67 ff 
  a14e9f:	c5 c8 57 f6          	vxorps xmm6,xmm6,xmm6
  a14ea3:	62 62 7d 48 18 05 ef 	vbroadcastss zmm24,DWORD PTR [rip+0xffffffffff6604ef]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a14eaa:	04 66 ff 
  a14ead:	62 62 7d 48 18 0d a9 	vbroadcastss zmm25,DWORD PTR [rip+0xffffffffff6605a9]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a14eb4:	05 66 ff 
  a14eb7:	62 71 7c 48 28 0d ff 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff67a4ff]        # 8f3c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c870>
  a14ebe:	a4 67 ff 
  a14ec1:	62 62 7d 48 18 15 09 	vbroadcastss zmm26,DWORD PTR [rip+0xffffffffff660409]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a14ec8:	04 66 ff 
  a14ecb:	62 61 7c 48 28 2d 2b 	vmovaps zmm29,ZMMWORD PTR [rip+0xffffffffff67a52b]        # 8f400 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c8b0>
  a14ed2:	a5 67 ff 
  a14ed5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  a14edc:	00 00 00 00 
  a14ee0:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  a14ee5:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  a14eea:	c5 7c 10 24 17       	vmovups ymm12,YMMWORD PTR [rdi+rdx*1]
  a14eef:	c5 78 10 6c 17 20    	vmovups xmm13,XMMWORD PTR [rdi+rdx*1+0x20]
  a14ef5:	c4 63 11 21 6c 17 24 	vinsertps xmm13,xmm13,DWORD PTR [rdi+rdx*1+0x24],0x10
  a14efc:	10 
  a14efd:	c4 62 79 18 74 17 28 	vbroadcastss xmm14,DWORD PTR [rdi+rdx*1+0x28]
  a14f04:	c5 78 10 7c 17 50    	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x50]
  a14f0a:	c4 63 01 21 7c 17 54 	vinsertps xmm15,xmm15,DWORD PTR [rdi+rdx*1+0x54],0x10
  a14f11:	10 
  a14f12:	c4 43 09 0c ed 03    	vblendps xmm13,xmm14,xmm13,0x3
  a14f18:	c4 62 79 18 74 17 58 	vbroadcastss xmm14,DWORD PTR [rdi+rdx*1+0x58]
  a14f1f:	c4 63 11 21 6c 17 2c 	vinsertps xmm13,xmm13,DWORD PTR [rdi+rdx*1+0x2c],0x30
  a14f26:	30 
  a14f27:	62 e1 7c 28 10 84 17 	vmovups ymm16,YMMWORD PTR [rdi+rdx*1+0x30]
  a14f2e:	30 00 00 00 
  a14f32:	c4 43 09 0c f7 03    	vblendps xmm14,xmm14,xmm15,0x3
  a14f38:	c4 63 09 21 74 17 5c 	vinsertps xmm14,xmm14,DWORD PTR [rdi+rdx*1+0x5c],0x30
  a14f3f:	30 
  a14f40:	c5 78 10 bc 17 80 00 	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x80]
  a14f47:	00 00 
  a14f49:	c4 e3 01 21 bc 17 84 	vinsertps xmm7,xmm15,DWORD PTR [rdi+rdx*1+0x84],0x10
  a14f50:	00 00 00 10 
  a14f54:	62 53 1d 48 18 fd 02 	vinsertf32x4 zmm15,zmm12,xmm13,0x2
  a14f5b:	c5 7c 10 64 17 60    	vmovups ymm12,YMMWORD PTR [rdi+rdx*1+0x60]
  a14f61:	c4 62 79 18 ac 17 88 	vbroadcastss xmm13,DWORD PTR [rdi+rdx*1+0x88]
  a14f68:	00 00 00 
  a14f6b:	62 53 7d 40 18 f6 02 	vinsertf32x4 zmm14,zmm16,xmm14,0x2
  a14f72:	c4 e3 11 0c ff 03    	vblendps xmm7,xmm13,xmm7,0x3
  a14f78:	c4 e3 41 21 bc 17 8c 	vinsertps xmm7,xmm7,DWORD PTR [rdi+rdx*1+0x8c],0x30
  a14f7f:	00 00 00 30 
  a14f83:	62 73 1d 48 18 e7 02 	vinsertf32x4 zmm12,zmm12,xmm7,0x2
  a14f8a:	c5 f8 10 bc 17 b0 00 	vmovups xmm7,XMMWORD PTR [rdi+rdx*1+0xb0]
  a14f91:	00 00 
  a14f93:	c4 e3 41 21 bc 17 b4 	vinsertps xmm7,xmm7,DWORD PTR [rdi+rdx*1+0xb4],0x10
  a14f9a:	00 00 00 10 
  a14f9e:	62 51 7c 48 28 ef    	vmovaps zmm13,zmm15
  a14fa4:	62 e1 7c 28 10 8c 17 	vmovups ymm17,YMMWORD PTR [rdi+rdx*1+0x90]
  a14fab:	90 00 00 00 
  a14faf:	c4 62 79 18 84 17 b8 	vbroadcastss xmm8,DWORD PTR [rdi+rdx*1+0xb8]
  a14fb6:	00 00 00 
  a14fb9:	62 72 35 48 7f fe    	vpermt2ps zmm15,zmm9,zmm6
  a14fbf:	c4 e3 39 0c ff 03    	vblendps xmm7,xmm8,xmm7,0x3
  a14fc5:	c4 e3 41 21 bc 17 bc 	vinsertps xmm7,xmm7,DWORD PTR [rdi+rdx*1+0xbc],0x30
  a14fcc:	00 00 00 30 
  a14fd0:	62 c1 7c 48 28 c6    	vmovaps zmm16,zmm14
  a14fd6:	c5 78 10 84 17 e0 00 	vmovups xmm8,XMMWORD PTR [rdi+rdx*1+0xe0]
  a14fdd:	00 00 
  a14fdf:	c4 63 39 21 84 17 e4 	vinsertps xmm8,xmm8,DWORD PTR [rdi+rdx*1+0xe4],0x10
  a14fe6:	00 00 00 10 
  a14fea:	62 72 35 48 7f f6    	vpermt2ps zmm14,zmm9,zmm6
  a14ff0:	62 e3 75 40 18 cf 02 	vinsertf32x4 zmm17,zmm17,xmm7,0x2
  a14ff7:	c4 e2 79 18 bc 17 e8 	vbroadcastss xmm7,DWORD PTR [rdi+rdx*1+0xe8]
  a14ffe:	00 00 00 
  a15001:	62 c1 7c 48 28 d4    	vmovaps zmm18,zmm12
  a15007:	c4 c3 41 0c f8 03    	vblendps xmm7,xmm7,xmm8,0x3
  a1500d:	c4 e3 41 21 bc 17 ec 	vinsertps xmm7,xmm7,DWORD PTR [rdi+rdx*1+0xec],0x30
  a15014:	00 00 00 30 
  a15018:	62 72 35 48 7f e6    	vpermt2ps zmm12,zmm9,zmm6
  a1501e:	c5 7c 10 84 17 c0 00 	vmovups ymm8,YMMWORD PTR [rdi+rdx*1+0xc0]
  a15025:	00 00 
  a15027:	62 e3 3d 48 18 ef 02 	vinsertf32x4 zmm21,zmm8,xmm7,0x2
  a1502e:	c5 fc 10 bc 17 f0 00 	vmovups ymm7,YMMWORD PTR [rdi+rdx*1+0xf0]
  a15035:	00 00 
  a15037:	62 a1 7c 48 28 e1    	vmovaps zmm20,zmm17
  a1503d:	c5 78 10 84 17 10 01 	vmovups xmm8,XMMWORD PTR [rdi+rdx*1+0x110]
  a15044:	00 00 
  a15046:	c4 63 39 21 84 17 14 	vinsertps xmm8,xmm8,DWORD PTR [rdi+rdx*1+0x114],0x10
  a1504d:	01 00 00 10 
  a15051:	62 e2 35 48 7f ce    	vpermt2ps zmm17,zmm9,zmm6
  a15057:	c4 62 79 18 94 17 18 	vbroadcastss xmm10,DWORD PTR [rdi+rdx*1+0x118]
  a1505e:	01 00 00 
  a15061:	c4 43 29 0c c0 03    	vblendps xmm8,xmm10,xmm8,0x3
  a15067:	62 a1 7c 48 28 dd    	vmovaps zmm19,zmm21
  a1506d:	c4 63 39 21 84 17 1c 	vinsertps xmm8,xmm8,DWORD PTR [rdi+rdx*1+0x11c],0x30
  a15074:	01 00 00 30 
  a15078:	62 d3 45 48 18 f8 02 	vinsertf32x4 zmm7,zmm7,xmm8,0x2
  a1507f:	62 e2 35 48 7f ee    	vpermt2ps zmm21,zmm9,zmm6
  a15085:	c5 78 10 84 17 40 01 	vmovups xmm8,XMMWORD PTR [rdi+rdx*1+0x140]
  a1508c:	00 00 
  a1508e:	c4 63 39 21 84 17 44 	vinsertps xmm8,xmm8,DWORD PTR [rdi+rdx*1+0x144],0x10
  a15095:	01 00 00 10 
  a15099:	62 71 7c 48 28 d7    	vmovaps zmm10,zmm7
  a1509f:	62 f2 35 48 7f fe    	vpermt2ps zmm7,zmm9,zmm6
  a150a5:	c4 e2 79 18 9c 17 48 	vbroadcastss xmm3,DWORD PTR [rdi+rdx*1+0x148]
  a150ac:	01 00 00 
  a150af:	62 72 55 48 7f ee    	vpermt2ps zmm13,zmm5,zmm6
  a150b5:	c4 c3 61 0c d8 03    	vblendps xmm3,xmm3,xmm8,0x3
  a150bb:	c4 e3 61 21 9c 17 4c 	vinsertps xmm3,xmm3,DWORD PTR [rdi+rdx*1+0x14c],0x30
  a150c2:	01 00 00 30 
  a150c6:	62 e2 55 48 7f c6    	vpermt2ps zmm16,zmm5,zmm6
  a150cc:	c5 7c 10 84 17 20 01 	vmovups ymm8,YMMWORD PTR [rdi+rdx*1+0x120]
  a150d3:	00 00 
  a150d5:	62 f3 3d 48 18 db 02 	vinsertf32x4 zmm3,zmm8,xmm3,0x2
  a150dc:	62 71 7c 48 28 c3    	vmovaps zmm8,zmm3
  a150e2:	62 e2 55 48 7f d6    	vpermt2ps zmm18,zmm5,zmm6
  a150e8:	62 e1 7c 08 10 74 17 	vmovups xmm22,XMMWORD PTR [rdi+rdx*1+0x170]
  a150ef:	17 
  a150f0:	62 f3 4d 00 21 64 17 	vinsertps xmm4,xmm22,DWORD PTR [rdi+rdx*1+0x174],0x10
  a150f7:	5d 10 
  a150f9:	62 e2 55 48 7f e6    	vpermt2ps zmm20,zmm5,zmm6
  a150ff:	62 f2 35 48 7f de    	vpermt2ps zmm3,zmm9,zmm6
  a15105:	c4 62 79 18 9c 17 78 	vbroadcastss xmm11,DWORD PTR [rdi+rdx*1+0x178]
  a1510c:	01 00 00 
  a1510f:	62 e2 55 48 7f de    	vpermt2ps zmm19,zmm5,zmm6
  a15115:	c4 e3 21 0c e4 03    	vblendps xmm4,xmm11,xmm4,0x3
  a1511b:	c4 e3 59 21 a4 17 7c 	vinsertps xmm4,xmm4,DWORD PTR [rdi+rdx*1+0x17c],0x30
  a15122:	01 00 00 30 
  a15126:	62 72 55 48 7f d6    	vpermt2ps zmm10,zmm5,zmm6
  a1512c:	c5 7c 10 9c 17 50 01 	vmovups ymm11,YMMWORD PTR [rdi+rdx*1+0x150]
  a15133:	00 00 
  a15135:	62 f3 25 48 18 e4 02 	vinsertf32x4 zmm4,zmm11,xmm4,0x2
  a1513c:	62 71 7c 48 28 dc    	vmovaps zmm11,zmm4
  a15142:	62 72 55 48 7f c6    	vpermt2ps zmm8,zmm5,zmm6
  a15148:	62 72 55 48 7f de    	vpermt2ps zmm11,zmm5,zmm6
  a1514e:	62 f2 35 48 7f e6    	vpermt2ps zmm4,zmm9,zmm6
  a15154:	62 a1 04 48 58 f5    	vaddps zmm22,zmm15,zmm21
  a1515a:	62 31 04 48 5c fd    	vsubps zmm15,zmm15,zmm21
  a15160:	62 e1 0c 48 58 ef    	vaddps zmm21,zmm14,zmm7
  a15166:	62 f1 0c 48 5c ff    	vsubps zmm7,zmm14,zmm7
  a1516c:	62 51 6c 40 58 f0    	vaddps zmm14,zmm18,zmm8
  a15172:	62 51 6c 40 5c c0    	vsubps zmm8,zmm18,zmm8
  a15178:	62 c1 7c 40 58 d2    	vaddps zmm18,zmm16,zmm10
  a1517e:	62 51 7c 40 5c d2    	vsubps zmm10,zmm16,zmm10
  a15184:	62 c1 5c 40 58 c3    	vaddps zmm16,zmm20,zmm11
  a1518a:	62 51 5c 40 5c db    	vsubps zmm11,zmm20,zmm11
  a15190:	62 e1 74 40 58 e4    	vaddps zmm20,zmm17,zmm4
  a15196:	62 f1 74 40 5c e4    	vsubps zmm4,zmm17,zmm4
  a1519c:	62 a1 14 48 58 cb    	vaddps zmm17,zmm13,zmm19
  a151a2:	62 31 14 48 5c eb    	vsubps zmm13,zmm13,zmm19
  a151a8:	62 e1 1c 48 58 db    	vaddps zmm19,zmm12,zmm3
  a151ae:	62 d1 64 48 5c dc    	vsubps zmm3,zmm3,zmm12
  a151b4:	62 51 44 48 58 e2    	vaddps zmm12,zmm7,zmm10
  a151ba:	62 f1 2c 48 5c ff    	vsubps zmm7,zmm10,zmm7
  a151c0:	62 31 4c 40 58 d3    	vaddps zmm10,zmm22,zmm19
  a151c6:	62 a1 4c 40 5c db    	vsubps zmm19,zmm22,zmm19
  a151cc:	62 e1 24 48 5c f4    	vsubps zmm22,zmm11,zmm4
  a151d2:	62 d1 5c 48 58 e3    	vaddps zmm4,zmm4,zmm11
  a151d8:	62 31 6c 40 58 d8    	vaddps zmm11,zmm18,zmm16
  a151de:	62 a1 6c 40 5c c0    	vsubps zmm16,zmm18,zmm16
  a151e4:	62 c1 74 40 58 d6    	vaddps zmm18,zmm17,zmm14
  a151ea:	62 51 74 40 5c f6    	vsubps zmm14,zmm17,zmm14
  a151f0:	62 a1 54 40 58 cc    	vaddps zmm17,zmm21,zmm20
  a151f6:	62 a1 5c 40 5c ed    	vsubps zmm21,zmm20,zmm21
  a151fc:	62 c1 04 48 58 f8    	vaddps zmm23,zmm15,zmm8
  a15202:	62 91 44 48 59 f8    	vmulps zmm7,zmm7,zmm24
  a15208:	62 91 5c 48 59 e0    	vmulps zmm4,zmm4,zmm24
  a1520e:	62 51 04 48 5c c0    	vsubps zmm8,zmm15,zmm8
  a15214:	62 71 44 48 5c fc    	vsubps zmm15,zmm7,zmm4
  a1521a:	62 f1 44 48 58 e4    	vaddps zmm4,zmm7,zmm4
  a15220:	62 d1 64 48 58 fd    	vaddps zmm7,zmm3,zmm13
  a15226:	62 f1 14 48 5c db    	vsubps zmm3,zmm13,zmm3
  a1522c:	62 31 2c 48 58 e9    	vaddps zmm13,zmm10,zmm17
  a15232:	62 11 1c 48 59 e0    	vmulps zmm12,zmm12,zmm24
  a15238:	62 81 4c 40 59 e0    	vmulps zmm20,zmm22,zmm24
  a1523e:	62 31 2c 48 5c d1    	vsubps zmm10,zmm10,zmm17
  a15244:	62 a1 1c 48 58 f4    	vaddps zmm22,zmm12,zmm20
  a1524a:	62 51 5c 40 5c e4    	vsubps zmm12,zmm20,zmm12
  a15250:	62 c1 6c 40 58 cb    	vaddps zmm17,zmm18,zmm11
  a15256:	62 c1 6c 40 5c e3    	vsubps zmm20,zmm18,zmm11
  a1525c:	62 31 44 40 58 de    	vaddps zmm11,zmm23,zmm22
  a15262:	62 a1 44 40 5c fe    	vsubps zmm23,zmm23,zmm22
  a15268:	62 21 64 40 58 f0    	vaddps zmm30,zmm19,zmm16
  a1526e:	62 a1 64 40 5c f0    	vsubps zmm22,zmm19,zmm16
  a15274:	62 c1 44 48 58 c7    	vaddps zmm16,zmm7,zmm15
  a1527a:	62 c1 44 48 5c df    	vsubps zmm19,zmm7,zmm15
  a15280:	62 c1 54 40 58 d6    	vaddps zmm18,zmm21,zmm14
  a15286:	62 31 0c 48 5c f5    	vsubps zmm14,zmm14,zmm21
  a1528c:	62 72 7d 48 7f ee    	vpermt2ps zmm13,zmm0,zmm6
  a15292:	62 f1 3c 48 58 fc    	vaddps zmm7,zmm8,zmm4
  a15298:	62 62 7d 48 7f f6    	vpermt2ps zmm30,zmm0,zmm6
  a1529e:	62 72 7d 48 7f d6    	vpermt2ps zmm10,zmm0,zmm6
  a152a4:	62 e2 7d 48 7f f6    	vpermt2ps zmm22,zmm0,zmm6
  a152aa:	62 f1 3c 48 5c e4    	vsubps zmm4,zmm8,zmm4
  a152b0:	62 51 7c 48 28 c5    	vmovaps zmm8,zmm13
  a152b6:	62 52 75 48 7f c2    	vpermt2ps zmm8,zmm1,zmm10
  a152bc:	62 52 6d 48 7f ea    	vpermt2ps zmm13,zmm2,zmm10
  a152c2:	62 11 7c 48 28 d6    	vmovaps zmm10,zmm30
  a152c8:	62 32 75 48 7f d6    	vpermt2ps zmm10,zmm1,zmm22
  a152ce:	62 22 6d 48 7f f6    	vpermt2ps zmm30,zmm2,zmm22
  a152d4:	62 c1 64 48 58 ec    	vaddps zmm21,zmm3,zmm12
  a152da:	62 c1 64 48 5c f4    	vsubps zmm22,zmm3,zmm12
  a152e0:	62 72 7d 48 7f de    	vpermt2ps zmm11,zmm0,zmm6
  a152e6:	62 f2 7d 48 7f fe    	vpermt2ps zmm7,zmm0,zmm6
  a152ec:	62 e2 7d 48 7f fe    	vpermt2ps zmm23,zmm0,zmm6
  a152f2:	62 f2 7d 48 7f e6    	vpermt2ps zmm4,zmm0,zmm6
  a152f8:	62 11 95 48 14 e6    	vunpcklpd zmm12,zmm13,zmm30
  a152fe:	62 d1 7c 48 28 db    	vmovaps zmm3,zmm11
  a15304:	62 32 6d 48 7f df    	vpermt2ps zmm11,zmm2,zmm23
  a1530a:	62 b2 75 48 7f df    	vpermt2ps zmm3,zmm1,zmm23
  a15310:	62 e1 7c 48 28 ff    	vmovaps zmm23,zmm7
  a15316:	62 e2 75 48 7f fc    	vpermt2ps zmm23,zmm1,zmm4
  a1531c:	62 f2 6d 48 7f fc    	vpermt2ps zmm7,zmm2,zmm4
  a15322:	62 f1 a5 48 14 e7    	vunpcklpd zmm4,zmm11,zmm7
  a15328:	62 51 bd 48 14 ea    	vunpcklpd zmm13,zmm8,zmm10
  a1532e:	62 51 bd 48 15 fa    	vunpckhpd zmm15,zmm8,zmm10
  a15334:	62 b1 e5 48 14 ff    	vunpcklpd zmm7,zmm3,zmm23
  a1533a:	62 a1 e5 48 15 ff    	vunpckhpd zmm23,zmm3,zmm23
  a15340:	62 e2 7d 48 7f ce    	vpermt2ps zmm17,zmm0,zmm6
  a15346:	62 e2 7d 48 7f e6    	vpermt2ps zmm20,zmm0,zmm6
  a1534c:	62 b1 7c 48 28 d9    	vmovaps zmm3,zmm17
  a15352:	62 b2 75 48 7f dc    	vpermt2ps zmm3,zmm1,zmm20
  a15358:	62 a2 6d 48 7f cc    	vpermt2ps zmm17,zmm2,zmm20
  a1535e:	62 c1 7c 48 28 e4    	vmovaps zmm20,zmm12
  a15364:	62 e2 7d 48 7f c6    	vpermt2ps zmm16,zmm0,zmm6
  a1536a:	62 e2 25 40 7f e4    	vpermt2ps zmm20,zmm27,zmm4
  a15370:	62 e2 7d 48 7f d6    	vpermt2ps zmm18,zmm0,zmm6
  a15376:	62 e2 7d 48 7f de    	vpermt2ps zmm19,zmm0,zmm6
  a1537c:	62 72 7d 48 7f f6    	vpermt2ps zmm14,zmm0,zmm6
  a15382:	62 72 1d 40 7f e4    	vpermt2ps zmm12,zmm28,zmm4
  a15388:	62 b1 7c 48 28 e0    	vmovaps zmm4,zmm16
  a1538e:	62 b2 75 48 7f e3    	vpermt2ps zmm4,zmm1,zmm19
  a15394:	62 a2 6d 48 7f c3    	vpermt2ps zmm16,zmm2,zmm19
  a1539a:	62 31 7c 48 28 c2    	vmovaps zmm8,zmm18
  a153a0:	62 52 75 48 7f c6    	vpermt2ps zmm8,zmm1,zmm14
  a153a6:	62 c2 6d 48 7f d6    	vpermt2ps zmm18,zmm2,zmm14
  a153ac:	62 51 7c 48 28 f5    	vmovaps zmm14,zmm13
  a153b2:	62 e2 7d 48 7f ee    	vpermt2ps zmm21,zmm0,zmm6
  a153b8:	62 e2 7d 48 7f f6    	vpermt2ps zmm22,zmm0,zmm6
  a153be:	62 a1 f5 40 14 ca    	vunpcklpd zmm17,zmm17,zmm18
  a153c4:	62 31 7c 48 28 d5    	vmovaps zmm10,zmm21
  a153ca:	62 72 25 40 7f f7    	vpermt2ps zmm14,zmm27,zmm7
  a153d0:	62 32 75 48 7f d6    	vpermt2ps zmm10,zmm1,zmm22
  a153d6:	62 a2 6d 48 7f ee    	vpermt2ps zmm21,zmm2,zmm22
  a153dc:	62 51 7c 48 28 df    	vmovaps zmm11,zmm15
  a153e2:	62 72 1d 40 7f ef    	vpermt2ps zmm13,zmm28,zmm7
  a153e8:	62 b1 fd 40 14 fd    	vunpcklpd zmm7,zmm16,zmm21
  a153ee:	62 c1 e5 48 14 c0    	vunpcklpd zmm16,zmm3,zmm8
  a153f4:	62 d1 e5 48 15 d8    	vunpckhpd zmm3,zmm3,zmm8
  a153fa:	62 32 25 40 7f df    	vpermt2ps zmm11,zmm27,zmm23
  a15400:	62 c1 dd 48 14 da    	vunpcklpd zmm19,zmm4,zmm10
  a15406:	62 d1 dd 48 15 e2    	vunpckhpd zmm4,zmm4,zmm10
  a1540c:	62 71 7c 48 28 c3    	vmovaps zmm8,zmm3
  a15412:	62 32 1d 40 7f ff    	vpermt2ps zmm15,zmm28,zmm23
  a15418:	62 72 25 40 7f c4    	vpermt2ps zmm8,zmm27,zmm4
  a1541e:	62 31 7c 48 28 d1    	vmovaps zmm10,zmm17
  a15424:	62 72 25 40 7f d7    	vpermt2ps zmm10,zmm27,zmm7
  a1542a:	62 f2 1d 40 7f dc    	vpermt2ps zmm3,zmm28,zmm4
  a15430:	62 e2 1d 40 7f cf    	vpermt2ps zmm17,zmm28,zmm7
  a15436:	62 f1 7c 48 10 61 04 	vmovups zmm4,ZMMWORD PTR [rcx+0x100]
  a1543d:	62 f1 7c 48 10 79 05 	vmovups zmm7,ZMMWORD PTR [rcx+0x140]
  a15444:	62 e1 24 48 59 d4    	vmulps zmm18,zmm11,zmm4
  a1544a:	62 e2 3d 48 bc d7    	vfnmadd231ps zmm18,zmm8,zmm7
  a15450:	62 f1 3c 48 59 e4    	vmulps zmm4,zmm8,zmm4
  a15456:	62 71 7c 48 10 41 08 	vmovups zmm8,ZMMWORD PTR [rcx+0x200]
  a1545d:	62 d2 45 48 b8 e3    	vfmadd231ps zmm4,zmm7,zmm11
  a15463:	62 f1 7c 48 10 79 09 	vmovups zmm7,ZMMWORD PTR [rcx+0x240]
  a1546a:	62 51 5c 40 59 d8    	vmulps zmm11,zmm20,zmm8
  a15470:	62 51 2c 48 59 c0    	vmulps zmm8,zmm10,zmm8
  a15476:	62 72 2d 48 bc df    	vfnmadd231ps zmm11,zmm10,zmm7
  a1547c:	62 71 7c 48 10 51 06 	vmovups zmm10,ZMMWORD PTR [rcx+0x180]
  a15483:	62 32 45 48 b8 c4    	vfmadd231ps zmm8,zmm7,zmm20
  a15489:	62 f1 7c 48 10 79 07 	vmovups zmm7,ZMMWORD PTR [rcx+0x1c0]
  a15490:	62 c1 04 48 59 ea    	vmulps zmm21,zmm15,zmm10
  a15496:	62 e2 65 48 bc ef    	vfnmadd231ps zmm21,zmm3,zmm7
  a1549c:	62 c1 64 48 59 e2    	vmulps zmm20,zmm3,zmm10
  a154a2:	62 b1 7c 48 28 d8    	vmovaps zmm3,zmm16
  a154a8:	62 b2 25 40 7f db    	vpermt2ps zmm3,zmm27,zmm19
  a154ae:	62 c2 45 48 b8 e7    	vfmadd231ps zmm20,zmm7,zmm15
  a154b4:	62 f1 7c 48 10 79 0a 	vmovups zmm7,ZMMWORD PTR [rcx+0x280]
  a154bb:	62 71 7c 48 10 51 0b 	vmovups zmm10,ZMMWORD PTR [rcx+0x2c0]
  a154c2:	62 a2 1d 40 7f c3    	vpermt2ps zmm16,zmm28,zmm19
  a154c8:	62 71 1c 48 59 ff    	vmulps zmm15,zmm12,zmm7
  a154ce:	62 52 75 40 bc fa    	vfnmadd231ps zmm15,zmm17,zmm10
  a154d4:	62 f1 74 40 59 ff    	vmulps zmm7,zmm17,zmm7
  a154da:	62 e1 7c 48 10 49 02 	vmovups zmm17,ZMMWORD PTR [rcx+0x80]
  a154e1:	62 d2 2d 48 b8 fc    	vfmadd231ps zmm7,zmm10,zmm12
  a154e7:	62 71 7c 48 10 51 03 	vmovups zmm10,ZMMWORD PTR [rcx+0xc0]
  a154ee:	62 31 14 48 59 e1    	vmulps zmm12,zmm13,zmm17
  a154f4:	62 52 7d 40 bc e2    	vfnmadd231ps zmm12,zmm16,zmm10
  a154fa:	62 a1 7c 40 59 c1    	vmulps zmm16,zmm16,zmm17
  a15500:	62 c1 6c 40 58 cb    	vaddps zmm17,zmm18,zmm11
  a15506:	62 c2 2d 48 b8 c5    	vfmadd231ps zmm16,zmm10,zmm13
  a1550c:	62 31 0c 48 58 d1    	vaddps zmm10,zmm14,zmm17
  a15512:	62 51 5c 48 58 e8    	vaddps zmm13,zmm4,zmm8
  a15518:	62 d1 5c 48 5c e0    	vsubps zmm4,zmm4,zmm8
  a1551e:	62 51 04 48 58 c4    	vaddps zmm8,zmm15,zmm12
  a15524:	62 32 35 40 bc f1    	vfnmadd231ps zmm14,zmm25,zmm17
  a1552a:	62 a1 44 48 58 c8    	vaddps zmm17,zmm7,zmm16
  a15530:	62 b1 44 48 5c f8    	vsubps zmm7,zmm7,zmm16
  a15536:	62 c1 54 40 58 c0    	vaddps zmm16,zmm21,zmm8
  a1553c:	62 c2 35 40 bc e8    	vfnmadd231ps zmm21,zmm25,zmm8
  a15542:	62 71 14 48 58 c3    	vaddps zmm8,zmm13,zmm3
  a15548:	62 d2 35 40 bc dd    	vfnmadd231ps zmm3,zmm25,zmm13
  a1554e:	62 51 6c 40 5c db    	vsubps zmm11,zmm18,zmm11
  a15554:	62 31 5c 40 58 e9    	vaddps zmm13,zmm20,zmm17
  a1555a:	62 a2 35 40 bc e1    	vfnmadd231ps zmm20,zmm25,zmm17
  a15560:	62 91 5c 48 59 e2    	vmulps zmm4,zmm4,zmm26
  a15566:	62 51 04 48 5c e4    	vsubps zmm12,zmm15,zmm12
  a1556c:	62 71 0c 48 58 fc    	vaddps zmm15,zmm14,zmm4
  a15572:	62 91 44 48 59 fa    	vmulps zmm7,zmm7,zmm26
  a15578:	62 11 24 48 59 da    	vmulps zmm11,zmm11,zmm26
  a1557e:	62 f1 0c 48 5c e4    	vsubps zmm4,zmm14,zmm4
  a15584:	62 71 54 40 58 f7    	vaddps zmm14,zmm21,zmm7
  a1558a:	62 f1 54 40 5c ff    	vsubps zmm7,zmm21,zmm7
  a15590:	62 c1 64 48 5c cb    	vsubps zmm17,zmm3,zmm11
  a15596:	62 11 1c 48 59 e2    	vmulps zmm12,zmm12,zmm26
  a1559c:	62 f1 24 48 58 db    	vaddps zmm3,zmm11,zmm3
  a155a2:	62 51 5c 40 5c dc    	vsubps zmm11,zmm20,zmm12
  a155a8:	62 51 5c 40 58 e4    	vaddps zmm12,zmm20,zmm12
  a155ae:	62 c1 04 48 5c d6    	vsubps zmm18,zmm15,zmm14
  a155b4:	62 51 04 48 58 f6    	vaddps zmm14,zmm15,zmm14
  a155ba:	62 51 74 40 5c fb    	vsubps zmm15,zmm17,zmm11
  a155c0:	62 51 74 40 58 db    	vaddps zmm11,zmm17,zmm11
  a155c6:	62 e1 5c 48 58 cf    	vaddps zmm17,zmm4,zmm7
  a155cc:	62 f1 5c 48 5c e7    	vsubps zmm4,zmm4,zmm7
  a155d2:	62 d1 3c 48 5c fd    	vsubps zmm7,zmm8,zmm13
  a155d8:	62 51 3c 48 58 c5    	vaddps zmm8,zmm8,zmm13
  a155de:	62 51 64 48 58 ec    	vaddps zmm13,zmm3,zmm12
  a155e4:	62 d1 64 48 5c dc    	vsubps zmm3,zmm3,zmm12
  a155ea:	62 31 2c 48 5c e0    	vsubps zmm12,zmm10,zmm16
  a155f0:	62 31 2c 48 58 d0    	vaddps zmm10,zmm10,zmm16
  a155f6:	62 52 15 40 7f c2    	vpermt2ps zmm8,zmm29,zmm10
  a155fc:	62 71 7c 48 11 04 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm8
  a15603:	62 32 15 40 7f fa    	vpermt2ps zmm15,zmm29,zmm18
  a15609:	62 71 7c 48 11 7c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x40],zmm15
  a15610:	01 
  a15611:	62 32 15 40 7f e9    	vpermt2ps zmm13,zmm29,zmm17
  a15617:	62 71 7c 48 11 6c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x80],zmm13
  a1561e:	02 
  a1561f:	62 d2 15 40 7f fc    	vpermt2ps zmm7,zmm29,zmm12
  a15625:	62 f1 7c 48 11 7c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xc0],zmm7
  a1562c:	03 
  a1562d:	62 52 15 40 7f de    	vpermt2ps zmm11,zmm29,zmm14
  a15633:	62 71 7c 48 11 5c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x100],zmm11
  a1563a:	04 
  a1563b:	62 f2 15 40 7f dc    	vpermt2ps zmm3,zmm29,zmm4
  a15641:	62 f1 7c 48 11 5c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x140],zmm3
  a15648:	05 
  a15649:	48 81 c2 80 01 00 00 	add    rdx,0x180
  a15650:	48 39 d0             	cmp    rax,rdx
  a15653:	0f 85 87 f8 ff ff    	jne    a14ee0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0xa0>
  a15659:	48 89 ec             	mov    rsp,rbp
  a1565c:	5d                   	pop    rbp
  a1565d:	c5 f8 77             	vzeroupper
  a15660:	c3                   	ret
