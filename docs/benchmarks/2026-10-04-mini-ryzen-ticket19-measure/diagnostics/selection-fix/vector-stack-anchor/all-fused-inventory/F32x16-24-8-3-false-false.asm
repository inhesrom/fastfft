
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a60f00 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a60f00:	c5 fb 10 47 10       	vmovsd xmm0,QWORD PTR [rdi+0x10]
  a60f05:	c5 f8 10 0f          	vmovups xmm1,XMMWORD PTR [rdi]
  a60f09:	c5 f8 10 67 18       	vmovups xmm4,XMMWORD PTR [rdi+0x18]
  a60f0e:	c5 f8 10 77 30       	vmovups xmm6,XMMWORD PTR [rdi+0x30]
  a60f13:	c5 78 10 4f 48       	vmovups xmm9,XMMWORD PTR [rdi+0x48]
  a60f18:	62 f3 75 48 18 d0 01 	vinsertf32x4 zmm2,zmm1,xmm0,0x1
  a60f1f:	62 f1 7c 48 28 1d 97 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff632d97]        # 93cc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21170>
  a60f26:	2d 63 ff 
  a60f29:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a60f2d:	62 f1 7c 48 28 ea    	vmovaps zmm5,zmm2
  a60f33:	62 f2 65 48 7f e8    	vpermt2ps zmm5,zmm3,zmm0
  a60f39:	62 f1 7c 48 28 0d bd 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff632dbd]        # 93d00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x211b0>
  a60f40:	2d 63 ff 
  a60f43:	62 f2 75 48 7f d0    	vpermt2ps zmm2,zmm1,zmm0
  a60f49:	c5 fb 10 7f 28       	vmovsd xmm7,QWORD PTR [rdi+0x28]
  a60f4e:	62 f3 5d 48 18 ff 01 	vinsertf32x4 zmm7,zmm4,xmm7,0x1
  a60f55:	62 71 7c 48 28 c7    	vmovaps zmm8,zmm7
  a60f5b:	62 72 65 48 7f c0    	vpermt2ps zmm8,zmm3,zmm0
  a60f61:	62 f2 75 48 7f f8    	vpermt2ps zmm7,zmm1,zmm0
  a60f67:	c5 fb 10 67 40       	vmovsd xmm4,QWORD PTR [rdi+0x40]
  a60f6c:	62 73 4d 48 18 d4 01 	vinsertf32x4 zmm10,zmm6,xmm4,0x1
  a60f73:	62 d1 7c 48 28 f2    	vmovaps zmm6,zmm10
  a60f79:	62 f2 65 48 7f f0    	vpermt2ps zmm6,zmm3,zmm0
  a60f7f:	62 72 75 48 7f d0    	vpermt2ps zmm10,zmm1,zmm0
  a60f85:	c5 fb 10 67 58       	vmovsd xmm4,QWORD PTR [rdi+0x58]
  a60f8a:	62 73 35 48 18 cc 01 	vinsertf32x4 zmm9,zmm9,xmm4,0x1
  a60f91:	62 51 7c 48 28 d9    	vmovaps zmm11,zmm9
  a60f97:	62 72 65 48 7f d8    	vpermt2ps zmm11,zmm3,zmm0
  a60f9d:	62 72 75 48 7f c8    	vpermt2ps zmm9,zmm1,zmm0
  a60fa3:	c5 fb 10 67 70       	vmovsd xmm4,QWORD PTR [rdi+0x70]
  a60fa8:	c5 78 10 67 60       	vmovups xmm12,XMMWORD PTR [rdi+0x60]
  a60fad:	62 73 1d 48 18 e4 01 	vinsertf32x4 zmm12,zmm12,xmm4,0x1
  a60fb4:	62 51 7c 48 28 ec    	vmovaps zmm13,zmm12
  a60fba:	62 72 65 48 7f e8    	vpermt2ps zmm13,zmm3,zmm0
  a60fc0:	62 72 75 48 7f e0    	vpermt2ps zmm12,zmm1,zmm0
  a60fc6:	c5 fb 10 a7 88 00 00 	vmovsd xmm4,QWORD PTR [rdi+0x88]
  a60fcd:	00 
  a60fce:	c5 78 10 77 78       	vmovups xmm14,XMMWORD PTR [rdi+0x78]
  a60fd3:	62 73 0d 48 18 f4 01 	vinsertf32x4 zmm14,zmm14,xmm4,0x1
  a60fda:	62 51 7c 48 28 fe    	vmovaps zmm15,zmm14
  a60fe0:	62 72 65 48 7f f8    	vpermt2ps zmm15,zmm3,zmm0
  a60fe6:	62 72 75 48 7f f0    	vpermt2ps zmm14,zmm1,zmm0
  a60fec:	c5 fb 10 a7 a0 00 00 	vmovsd xmm4,QWORD PTR [rdi+0xa0]
  a60ff3:	00 
  a60ff4:	62 e1 7c 08 10 47 09 	vmovups xmm16,XMMWORD PTR [rdi+0x90]
  a60ffb:	62 e3 7d 40 18 c4 01 	vinsertf32x4 zmm16,zmm16,xmm4,0x1
  a61002:	62 a1 7c 48 28 c8    	vmovaps zmm17,zmm16
  a61008:	62 e2 65 48 7f c8    	vpermt2ps zmm17,zmm3,zmm0
  a6100e:	62 e2 75 48 7f c0    	vpermt2ps zmm16,zmm1,zmm0
  a61014:	c5 fb 10 a7 b8 00 00 	vmovsd xmm4,QWORD PTR [rdi+0xb8]
  a6101b:	00 
  a6101c:	62 e1 7c 08 10 97 a8 	vmovups xmm18,XMMWORD PTR [rdi+0xa8]
  a61023:	00 00 00 
  a61026:	62 e3 6d 40 18 d4 01 	vinsertf32x4 zmm18,zmm18,xmm4,0x1
  a6102d:	62 f2 6d 40 77 d8    	vpermi2ps zmm3,zmm18,zmm0
  a61033:	62 e2 75 48 7f d0    	vpermt2ps zmm18,zmm1,zmm0
  a61039:	62 c1 54 48 58 dd    	vaddps zmm19,zmm5,zmm13
  a6103f:	62 a1 4c 48 58 e1    	vaddps zmm20,zmm6,zmm17
  a61045:	62 a1 64 40 58 ec    	vaddps zmm21,zmm19,zmm20
  a6104b:	62 c1 3c 48 58 f7    	vaddps zmm22,zmm8,zmm15
  a61051:	62 e1 24 48 58 fb    	vaddps zmm23,zmm11,zmm3
  a61057:	62 21 4c 40 58 c7    	vaddps zmm24,zmm22,zmm23
  a6105d:	62 91 54 40 58 e0    	vaddps zmm4,zmm21,zmm24
  a61063:	62 41 6c 48 58 cc    	vaddps zmm25,zmm2,zmm12
  a61069:	62 21 2c 48 58 d0    	vaddps zmm26,zmm10,zmm16
  a6106f:	62 01 34 40 58 da    	vaddps zmm27,zmm25,zmm26
  a61075:	62 41 44 48 58 e6    	vaddps zmm28,zmm7,zmm14
  a6107b:	62 21 34 48 58 ea    	vaddps zmm29,zmm9,zmm18
  a61081:	62 01 1c 40 58 f5    	vaddps zmm30,zmm28,zmm29
  a61087:	62 91 24 40 58 ce    	vaddps zmm1,zmm27,zmm30
  a6108d:	62 d1 54 48 5c ed    	vsubps zmm5,zmm5,zmm13
  a61093:	62 31 2c 48 5c d0    	vsubps zmm10,zmm10,zmm16
  a61099:	62 51 54 48 58 ea    	vaddps zmm13,zmm5,zmm10
  a6109f:	62 51 3c 48 5c c7    	vsubps zmm8,zmm8,zmm15
  a610a5:	62 d1 44 48 5c fe    	vsubps zmm7,zmm7,zmm14
  a610ab:	62 71 3c 48 58 f7    	vaddps zmm14,zmm8,zmm7
  a610b1:	62 72 7d 48 18 3d e1 	vbroadcastss zmm15,DWORD PTR [rip+0xffffffffff6142e1]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a610b8:	42 61 ff 
  a610bb:	62 51 0c 48 59 f7    	vmulps zmm14,zmm14,zmm15
  a610c1:	62 31 34 48 5c ca    	vsubps zmm9,zmm9,zmm18
  a610c7:	62 f1 24 48 5c db    	vsubps zmm3,zmm11,zmm3
  a610cd:	62 71 34 48 5c db    	vsubps zmm11,zmm9,zmm3
  a610d3:	62 51 24 48 59 df    	vmulps zmm11,zmm11,zmm15
  a610d9:	62 c1 0c 48 58 c3    	vaddps zmm16,zmm14,zmm11
  a610df:	62 a1 14 48 58 d0    	vaddps zmm18,zmm13,zmm16
  a610e5:	62 51 6c 48 5c e4    	vsubps zmm12,zmm2,zmm12
  a610eb:	62 f1 74 40 5c f6    	vsubps zmm6,zmm17,zmm6
  a610f1:	62 c1 4c 48 58 cc    	vaddps zmm17,zmm6,zmm12
  a610f7:	62 d1 44 48 5c d0    	vsubps zmm2,zmm7,zmm8
  a610fd:	62 d1 6c 48 59 ff    	vmulps zmm7,zmm2,zmm15
  a61103:	62 d1 64 48 58 d1    	vaddps zmm2,zmm3,zmm9
  a61109:	62 51 6c 48 59 c7    	vmulps zmm8,zmm2,zmm15
  a6110f:	62 51 44 48 5c c8    	vsubps zmm9,zmm7,zmm8
  a61115:	62 d1 74 40 58 d1    	vaddps zmm2,zmm17,zmm9
  a6111b:	62 31 64 40 5c fc    	vsubps zmm15,zmm19,zmm20
  a61121:	62 81 1c 40 5c dd    	vsubps zmm19,zmm28,zmm29
  a61127:	62 a1 04 48 58 e3    	vaddps zmm20,zmm15,zmm19
  a6112d:	62 01 34 40 5c ca    	vsubps zmm25,zmm25,zmm26
  a61133:	62 a1 44 40 5c f6    	vsubps zmm22,zmm23,zmm22
  a61139:	62 91 4c 40 58 d9    	vaddps zmm3,zmm22,zmm25
  a6113f:	62 51 54 48 5c d2    	vsubps zmm10,zmm5,zmm10
  a61145:	62 d1 44 48 58 f8    	vaddps zmm7,zmm7,zmm8
  a6114b:	62 71 2c 48 58 c7    	vaddps zmm8,zmm10,zmm7
  a61151:	62 f1 1c 48 5c f6    	vsubps zmm6,zmm12,zmm6
  a61157:	62 51 24 48 5c de    	vsubps zmm11,zmm11,zmm14
  a6115d:	62 d1 4c 48 58 eb    	vaddps zmm5,zmm6,zmm11
  a61163:	62 11 54 40 5c e0    	vsubps zmm12,zmm21,zmm24
  a61169:	62 11 24 40 5c f6    	vsubps zmm14,zmm27,zmm30
  a6116f:	62 31 14 48 5c e8    	vsubps zmm13,zmm13,zmm16
  a61175:	62 51 74 40 5c c9    	vsubps zmm9,zmm17,zmm9
  a6117b:	62 31 04 48 5c fb    	vsubps zmm15,zmm15,zmm19
  a61181:	62 a1 34 40 5c c6    	vsubps zmm16,zmm25,zmm22
  a61187:	62 f1 2c 48 5c ff    	vsubps zmm7,zmm10,zmm7
  a6118d:	62 d1 4c 48 5c f3    	vsubps zmm6,zmm6,zmm11
  a61193:	62 71 7c 48 28 15 e3 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff665de3]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a6119a:	5d 66 ff 
  a6119d:	62 f2 2d 48 7f e0    	vpermt2ps zmm4,zmm10,zmm0
  a611a3:	62 e2 2d 48 7f d0    	vpermt2ps zmm18,zmm10,zmm0
  a611a9:	62 e2 2d 48 7f e0    	vpermt2ps zmm20,zmm10,zmm0
  a611af:	62 72 2d 48 7f c0    	vpermt2ps zmm8,zmm10,zmm0
  a611b5:	62 72 2d 48 7f e0    	vpermt2ps zmm12,zmm10,zmm0
  a611bb:	62 72 2d 48 7f e8    	vpermt2ps zmm13,zmm10,zmm0
  a611c1:	62 72 2d 48 7f f8    	vpermt2ps zmm15,zmm10,zmm0
  a611c7:	62 f2 2d 48 7f f8    	vpermt2ps zmm7,zmm10,zmm0
  a611cd:	62 71 7c 48 28 1d 29 	vmovaps zmm11,ZMMWORD PTR [rip+0xffffffffff665d29]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a611d4:	5d 66 ff 
  a611d7:	62 d2 25 48 7f e4    	vpermt2ps zmm4,zmm11,zmm12
  a611dd:	62 c2 25 48 7f d5    	vpermt2ps zmm18,zmm11,zmm13
  a611e3:	62 c2 25 48 7f e7    	vpermt2ps zmm20,zmm11,zmm15
  a611e9:	62 72 25 48 7f c7    	vpermt2ps zmm8,zmm11,zmm7
  a611ef:	62 b1 dd 48 14 fc    	vunpcklpd zmm7,zmm4,zmm20
  a611f5:	62 31 dd 48 15 e4    	vunpckhpd zmm12,zmm4,zmm20
  a611fb:	62 51 ed 40 14 e8    	vunpcklpd zmm13,zmm18,zmm8
  a61201:	62 51 ed 40 15 c0    	vunpckhpd zmm8,zmm18,zmm8
  a61207:	62 71 7c 48 28 3d ef 	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff665bef]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a6120e:	5b 66 ff 
  a61211:	62 f1 7c 48 28 e7    	vmovaps zmm4,zmm7
  a61217:	62 d2 05 48 7f e5    	vpermt2ps zmm4,zmm15,zmm13
  a6121d:	62 e1 7c 48 28 0d 19 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff665c19]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a61224:	5c 66 ff 
  a61227:	62 d2 75 40 7f fd    	vpermt2ps zmm7,zmm17,zmm13
  a6122d:	62 52 05 48 7f e0    	vpermt2ps zmm12,zmm15,zmm8
  a61233:	62 f2 2d 48 7f c8    	vpermt2ps zmm1,zmm10,zmm0
  a61239:	62 f2 2d 48 7f d0    	vpermt2ps zmm2,zmm10,zmm0
  a6123f:	62 f2 2d 48 7f d8    	vpermt2ps zmm3,zmm10,zmm0
  a61245:	62 f2 2d 48 7f e8    	vpermt2ps zmm5,zmm10,zmm0
  a6124b:	62 72 2d 48 7f f0    	vpermt2ps zmm14,zmm10,zmm0
  a61251:	62 72 2d 48 7f c8    	vpermt2ps zmm9,zmm10,zmm0
  a61257:	62 e2 2d 48 7f c0    	vpermt2ps zmm16,zmm10,zmm0
  a6125d:	62 f2 2d 48 7f f0    	vpermt2ps zmm6,zmm10,zmm0
  a61263:	62 d2 25 48 7f ce    	vpermt2ps zmm1,zmm11,zmm14
  a61269:	62 d2 25 48 7f d1    	vpermt2ps zmm2,zmm11,zmm9
  a6126f:	62 b2 25 48 7f d8    	vpermt2ps zmm3,zmm11,zmm16
  a61275:	62 f2 25 48 7f ee    	vpermt2ps zmm5,zmm11,zmm6
  a6127b:	62 f1 f5 48 14 c3    	vunpcklpd zmm0,zmm1,zmm3
  a61281:	62 f1 f5 48 15 cb    	vunpckhpd zmm1,zmm1,zmm3
  a61287:	62 f1 ed 48 14 dd    	vunpcklpd zmm3,zmm2,zmm5
  a6128d:	62 f1 ed 48 15 d5    	vunpckhpd zmm2,zmm2,zmm5
  a61293:	62 f1 7c 48 28 e8    	vmovaps zmm5,zmm0
  a61299:	62 f2 05 48 7f eb    	vpermt2ps zmm5,zmm15,zmm3
  a6129f:	62 f2 75 40 7f c3    	vpermt2ps zmm0,zmm17,zmm3
  a612a5:	62 f2 05 48 7f ca    	vpermt2ps zmm1,zmm15,zmm2
  a612ab:	62 f1 7c 48 10 52 02 	vmovups zmm2,ZMMWORD PTR [rdx+0x80]
  a612b2:	62 f1 7c 48 10 5a 03 	vmovups zmm3,ZMMWORD PTR [rdx+0xc0]
  a612b9:	62 f1 7c 48 10 72 04 	vmovups zmm6,ZMMWORD PTR [rdx+0x100]
  a612c0:	62 71 7c 48 10 42 05 	vmovups zmm8,ZMMWORD PTR [rdx+0x140]
  a612c7:	62 71 44 48 59 ca    	vmulps zmm9,zmm7,zmm2
  a612cd:	62 72 7d 48 bc cb    	vfnmadd231ps zmm9,zmm0,zmm3
  a612d3:	62 71 1c 48 59 d6    	vmulps zmm10,zmm12,zmm6
  a612d9:	62 52 75 48 bc d0    	vfnmadd231ps zmm10,zmm1,zmm8
  a612df:	62 51 34 48 58 da    	vaddps zmm11,zmm9,zmm10
  a612e5:	62 f1 7c 48 59 c2    	vmulps zmm0,zmm0,zmm2
  a612eb:	62 f2 65 48 b8 c7    	vfmadd231ps zmm0,zmm3,zmm7
  a612f1:	62 f1 74 48 59 ce    	vmulps zmm1,zmm1,zmm6
  a612f7:	62 d2 3d 48 b8 cc    	vfmadd231ps zmm1,zmm8,zmm12
  a612fd:	62 f1 7c 48 58 d1    	vaddps zmm2,zmm0,zmm1
  a61303:	62 f2 7d 48 18 1d 53 	vbroadcastss zmm3,DWORD PTR [rip+0xffffffffff614153]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a6130a:	41 61 ff 
  a6130d:	62 f1 7c 48 28 f3    	vmovaps zmm6,zmm3
  a61313:	62 f2 25 48 ac f4    	vfnmadd213ps zmm6,zmm11,zmm4
  a61319:	62 f1 7c 48 5c c1    	vsubps zmm0,zmm0,zmm1
  a6131f:	62 f2 7d 48 18 0d ab 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff613fab]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a61326:	3f 61 ff 
  a61329:	62 f1 7c 48 59 c1    	vmulps zmm0,zmm0,zmm1
  a6132f:	62 f1 4c 48 58 f8    	vaddps zmm7,zmm6,zmm0
  a61335:	62 f2 6d 48 ac dd    	vfnmadd213ps zmm3,zmm2,zmm5
  a6133b:	62 51 34 48 5c c2    	vsubps zmm8,zmm9,zmm10
  a61341:	62 f1 3c 48 59 c9    	vmulps zmm1,zmm8,zmm1
  a61347:	62 71 64 48 5c c1    	vsubps zmm8,zmm3,zmm1
  a6134d:	62 f1 4c 48 5c c0    	vsubps zmm0,zmm6,zmm0
  a61353:	62 f1 64 48 58 c9    	vaddps zmm1,zmm3,zmm1
  a61359:	62 d1 5c 48 58 db    	vaddps zmm3,zmm4,zmm11
  a6135f:	62 f1 54 48 58 d2    	vaddps zmm2,zmm5,zmm2
  a61365:	62 f1 7c 48 28 25 d1 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff6329d1]        # 93d40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x211f0>
  a6136c:	29 63 ff 
  a6136f:	62 f2 5d 48 7f da    	vpermt2ps zmm3,zmm4,zmm2
  a61375:	62 f1 7c 48 11 1e    	vmovups ZMMWORD PTR [rsi],zmm3
  a6137b:	62 d2 5d 48 7f f8    	vpermt2ps zmm7,zmm4,zmm8
  a61381:	62 f1 7c 48 11 7e 01 	vmovups ZMMWORD PTR [rsi+0x40],zmm7
  a61388:	62 f2 5d 48 7f c1    	vpermt2ps zmm0,zmm4,zmm1
  a6138e:	62 f1 7c 48 11 46 02 	vmovups ZMMWORD PTR [rsi+0x80],zmm0
  a61395:	c5 f8 77             	vzeroupper
  a61398:	c3                   	ret
