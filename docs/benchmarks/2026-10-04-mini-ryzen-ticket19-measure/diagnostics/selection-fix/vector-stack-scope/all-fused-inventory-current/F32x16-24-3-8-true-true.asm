
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a03f40 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a03f40:	55                   	push   rbp
  a03f41:	48 89 e5             	mov    rbp,rsp
  a03f44:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a03f48:	48 81 ec 40 01 00 00 	sub    rsp,0x140
  a03f4f:	62 f1 7c 48 28 05 27 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6c3027]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a03f56:	30 6c ff 
  a03f59:	62 f1 7c 48 28 0d 9d 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff6c2f9d]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a03f60:	2f 6c ff 
  a03f63:	62 f1 7c 48 28 15 d3 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff6c2fd3]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a03f6a:	2f 6c ff 
  a03f6d:	48 c1 e2 06          	shl    rdx,0x6
  a03f71:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  a03f75:	31 d2                	xor    edx,edx
  a03f77:	4c 8d 84 24 c0 00 00 	lea    r8,[rsp+0xc0]
  a03f7e:	00 
  a03f7f:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  a03f84:	c5 c8 57 f6          	vxorps xmm6,xmm6,xmm6
  a03f88:	c4 41 28 57 d2       	vxorps xmm10,xmm10,xmm10
  a03f8d:	62 52 7d 48 7f d2    	vpermt2ps zmm10,zmm0,zmm10
  a03f93:	62 d1 7c 48 28 c2    	vmovaps zmm0,zmm10
  a03f99:	62 d2 75 48 7f c2    	vpermt2ps zmm0,zmm1,zmm10
  a03f9f:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm0
  a03fa6:	02 
  a03fa7:	62 d1 7c 48 28 c2    	vmovaps zmm0,zmm10
  a03fad:	62 d2 6d 48 7f c2    	vpermt2ps zmm0,zmm2,zmm10
  a03fb3:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a03fba:	01 
  a03fbb:	c5 7c 28 25 fd 42 67 	vmovaps ymm12,YMMWORD PTR [rip+0xffffffffff6742fd]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  a03fc2:	ff 
  a03fc3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  a03fca:	84 00 00 00 00 00 
  a03fd0:	c6 84 24 c0 00 00 00 	mov    BYTE PTR [rsp+0xc0],0x0
  a03fd7:	00 
  a03fd8:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  a03fdd:	62 f1 7c 48 10 2c 17 	vmovups zmm5,ZMMWORD PTR [rdi+rdx*1]
  a03fe4:	62 f1 7c 48 10 7c 17 	vmovups zmm7,ZMMWORD PTR [rdi+rdx*1+0x40]
  a03feb:	01 
  a03fec:	62 71 7c 48 10 44 17 	vmovups zmm8,ZMMWORD PTR [rdi+rdx*1+0x80]
  a03ff3:	02 
  a03ff4:	62 71 7c 48 28 cd    	vmovaps zmm9,zmm5
  a03ffa:	62 f1 7c 48 28 0d 3c 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff68a23c]        # 8e240 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b6f0>
  a04001:	a2 68 ff 
  a04004:	62 f2 75 48 7f ee    	vpermt2ps zmm5,zmm1,zmm6
  a0400a:	62 f1 7c 48 28 05 ec 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff68a1ec]        # 8e200 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b6b0>
  a04011:	a1 68 ff 
  a04014:	62 72 7d 48 7f ce    	vpermt2ps zmm9,zmm0,zmm6
  a0401a:	62 71 7c 48 28 ff    	vmovaps zmm15,zmm7
  a04020:	62 f2 75 48 7f fe    	vpermt2ps zmm7,zmm1,zmm6
  a04026:	62 c1 7c 48 28 c0    	vmovaps zmm16,zmm8
  a0402c:	62 72 7d 48 7f fe    	vpermt2ps zmm15,zmm0,zmm6
  a04032:	62 e2 7d 48 7f c6    	vpermt2ps zmm16,zmm0,zmm6
  a04038:	62 72 75 48 7f c6    	vpermt2ps zmm8,zmm1,zmm6
  a0403e:	62 c1 44 48 58 c8    	vaddps zmm17,zmm7,zmm8
  a04044:	62 a1 54 48 58 e1    	vaddps zmm20,zmm5,zmm17
  a0404a:	62 a1 04 48 58 d0    	vaddps zmm18,zmm15,zmm16
  a04050:	62 f2 7d 48 18 05 06 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff671406]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a04057:	14 67 ff 
  a0405a:	62 b2 7d 48 bc e9    	vfnmadd231ps zmm5,zmm0,zmm17
  a04060:	62 a1 04 48 5c c0    	vsubps zmm16,zmm15,zmm16
  a04066:	62 31 34 48 58 fa    	vaddps zmm15,zmm9,zmm18
  a0406c:	62 f2 7d 48 18 0d 5e 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff67125e]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a04073:	12 67 ff 
  a04076:	62 e1 7c 40 59 c1    	vmulps zmm16,zmm16,zmm1
  a0407c:	62 32 7d 48 bc ca    	vfnmadd231ps zmm9,zmm0,zmm18
  a04082:	62 d1 44 48 5c f8    	vsubps zmm7,zmm7,zmm8
  a04088:	62 31 54 48 58 c0    	vaddps zmm8,zmm5,zmm16
  a0408e:	62 f1 44 48 59 f9    	vmulps zmm7,zmm7,zmm1
  a04094:	62 e1 34 48 5c ef    	vsubps zmm21,zmm9,zmm7
  a0409a:	62 a1 54 48 5c c8    	vsubps zmm17,zmm5,zmm16
  a040a0:	62 41 44 48 58 c9    	vaddps zmm25,zmm7,zmm9
  a040a6:	62 f1 7c 48 28 05 d0 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6c2ed0]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a040ad:	2e 6c ff 
  a040b0:	62 e2 7d 48 7f e6    	vpermt2ps zmm20,zmm0,zmm6
  a040b6:	62 72 7d 48 7f c6    	vpermt2ps zmm8,zmm0,zmm6
  a040bc:	62 b1 7c 48 28 ec    	vmovaps zmm5,zmm20
  a040c2:	62 e2 7d 48 7f ce    	vpermt2ps zmm17,zmm0,zmm6
  a040c8:	62 f1 7c 48 28 0d 2e 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff6c2e2e]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a040cf:	2e 6c ff 
  a040d2:	62 d2 75 48 7f ea    	vpermt2ps zmm5,zmm1,zmm10
  a040d8:	62 f1 7c 48 28 15 5e 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff6c2e5e]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a040df:	2e 6c ff 
  a040e2:	62 c2 6d 48 7f e2    	vpermt2ps zmm20,zmm2,zmm10
  a040e8:	62 d1 7c 48 28 f8    	vmovaps zmm7,zmm8
  a040ee:	62 d2 75 48 7f fa    	vpermt2ps zmm7,zmm1,zmm10
  a040f4:	62 52 6d 48 7f c2    	vpermt2ps zmm8,zmm2,zmm10
  a040fa:	62 31 7c 48 28 c9    	vmovaps zmm9,zmm17
  a04100:	62 c2 6d 48 7f ca    	vpermt2ps zmm17,zmm2,zmm10
  a04106:	62 52 75 48 7f ca    	vpermt2ps zmm9,zmm1,zmm10
  a0410c:	62 c1 d5 48 14 d9    	vunpcklpd zmm19,zmm5,zmm9
  a04112:	62 c1 d5 48 15 c1    	vunpckhpd zmm16,zmm5,zmm9
  a04118:	62 a1 dd 40 14 d1    	vunpcklpd zmm18,zmm20,zmm17
  a0411e:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x80]
  a04125:	02 
  a04126:	62 f1 c5 48 14 eb    	vunpcklpd zmm5,zmm7,zmm3
  a0412c:	62 a1 dd 40 15 c9    	vunpckhpd zmm17,zmm20,zmm17
  a04132:	62 71 7c 48 28 5c 24 	vmovaps zmm11,ZMMWORD PTR [rsp+0x40]
  a04139:	01 
  a0413a:	62 51 bd 48 14 cb    	vunpcklpd zmm9,zmm8,zmm11
  a04140:	62 51 bd 48 15 c3    	vunpckhpd zmm8,zmm8,zmm11
  a04146:	62 f1 c5 48 15 fb    	vunpckhpd zmm7,zmm7,zmm3
  a0414c:	62 a1 7c 48 28 f2    	vmovaps zmm22,zmm18
  a04152:	62 71 7c 48 28 35 e4 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff6c2ce4]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a04159:	2c 6c ff 
  a0415c:	62 c2 0d 48 7f d1    	vpermt2ps zmm18,zmm14,zmm9
  a04162:	62 a1 7c 48 28 f9    	vmovaps zmm23,zmm17
  a04168:	62 c2 0d 48 7f c8    	vpermt2ps zmm17,zmm14,zmm8
  a0416e:	62 72 7d 48 7f fe    	vpermt2ps zmm15,zmm0,zmm6
  a04174:	62 e2 7d 48 7f ee    	vpermt2ps zmm21,zmm0,zmm6
  a0417a:	62 62 7d 48 7f ce    	vpermt2ps zmm25,zmm0,zmm6
  a04180:	62 a1 7c 48 28 e3    	vmovaps zmm20,zmm19
  a04186:	62 41 7c 48 28 c7    	vmovaps zmm24,zmm15
  a0418c:	62 42 75 48 7f c2    	vpermt2ps zmm24,zmm1,zmm10
  a04192:	62 52 6d 48 7f fa    	vpermt2ps zmm15,zmm2,zmm10
  a04198:	62 e2 0d 48 7f dd    	vpermt2ps zmm19,zmm14,zmm5
  a0419e:	62 21 7c 48 28 dd    	vmovaps zmm27,zmm21
  a041a4:	62 42 75 48 7f da    	vpermt2ps zmm27,zmm1,zmm10
  a041aa:	62 c2 6d 48 7f ea    	vpermt2ps zmm21,zmm2,zmm10
  a041b0:	62 21 7c 48 28 d0    	vmovaps zmm26,zmm16
  a041b6:	62 01 7c 48 28 e9    	vmovaps zmm29,zmm25
  a041bc:	62 42 75 48 7f ea    	vpermt2ps zmm29,zmm1,zmm10
  a041c2:	62 42 6d 48 7f ca    	vpermt2ps zmm25,zmm2,zmm10
  a041c8:	62 e2 0d 48 7f c7    	vpermt2ps zmm16,zmm14,zmm7
  a041ce:	62 01 bd 40 14 e5    	vunpcklpd zmm28,zmm24,zmm29
  a041d4:	62 01 bd 40 15 c5    	vunpckhpd zmm24,zmm24,zmm29
  a041da:	62 71 a5 40 14 eb    	vunpcklpd zmm13,zmm27,zmm3
  a041e0:	62 f1 7c 48 28 25 16 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff6c2c16]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a041e7:	2c 6c ff 
  a041ea:	62 c2 5d 48 7f f1    	vpermt2ps zmm22,zmm4,zmm9
  a041f0:	62 61 a5 40 15 eb    	vunpckhpd zmm29,zmm27,zmm3
  a041f6:	62 91 85 48 14 c1    	vunpcklpd zmm0,zmm15,zmm25
  a041fc:	62 91 85 48 15 c9    	vunpckhpd zmm1,zmm15,zmm25
  a04202:	62 c2 5d 48 7f f8    	vpermt2ps zmm23,zmm4,zmm8
  a04208:	62 51 d5 40 14 c3    	vunpcklpd zmm8,zmm21,zmm11
  a0420e:	62 51 d5 40 15 cb    	vunpckhpd zmm9,zmm21,zmm11
  a04214:	62 11 7c 48 28 fc    	vmovaps zmm15,zmm28
  a0421a:	62 42 0d 48 7f e5    	vpermt2ps zmm28,zmm14,zmm13
  a04220:	62 01 7c 48 28 f0    	vmovaps zmm30,zmm24
  a04226:	62 61 7c 48 28 d8    	vmovaps zmm27,zmm0
  a0422c:	62 d2 0d 48 7f c0    	vpermt2ps zmm0,zmm14,zmm8
  a04232:	62 42 5d 48 7f d8    	vpermt2ps zmm27,zmm4,zmm8
  a04238:	62 61 7c 48 28 c9    	vmovaps zmm25,zmm1
  a0423e:	62 42 5d 48 7f c9    	vpermt2ps zmm25,zmm4,zmm9
  a04244:	62 d2 0d 48 7f c9    	vpermt2ps zmm1,zmm14,zmm9
  a0424a:	62 e2 5d 48 7f e5    	vpermt2ps zmm20,zmm4,zmm5
  a04250:	62 f1 7c 48 10 51 02 	vmovups zmm2,ZMMWORD PTR [rcx+0x80]
  a04257:	62 f1 7c 48 10 59 03 	vmovups zmm3,ZMMWORD PTR [rcx+0xc0]
  a0425e:	62 71 7c 48 10 49 04 	vmovups zmm9,ZMMWORD PTR [rcx+0x100]
  a04265:	62 62 5d 48 7f d7    	vpermt2ps zmm26,zmm4,zmm7
  a0426b:	62 71 7c 48 10 41 05 	vmovups zmm8,ZMMWORD PTR [rcx+0x140]
  a04272:	62 61 7c 48 10 79 06 	vmovups zmm31,ZMMWORD PTR [rcx+0x180]
  a04279:	62 f1 7c 48 10 69 08 	vmovups zmm5,ZMMWORD PTR [rcx+0x200]
  a04280:	62 52 5d 48 7f fd    	vpermt2ps zmm15,zmm4,zmm13
  a04286:	62 71 7c 48 10 69 09 	vmovups zmm13,ZMMWORD PTR [rcx+0x240]
  a0428d:	62 f1 4c 40 59 fd    	vmulps zmm7,zmm22,zmm5
  a04293:	62 e1 24 40 59 ed    	vmulps zmm21,zmm27,zmm5
  a04299:	62 d2 25 40 bc fd    	vfnmadd231ps zmm7,zmm27,zmm13
  a0429f:	62 f1 7c 48 10 69 0c 	vmovups zmm5,ZMMWORD PTR [rcx+0x300]
  a042a6:	62 a2 15 48 b8 ee    	vfmadd231ps zmm21,zmm13,zmm22
  a042ac:	62 71 7c 48 10 69 0d 	vmovups zmm13,ZMMWORD PTR [rcx+0x340]
  a042b3:	62 e1 44 40 59 f5    	vmulps zmm22,zmm23,zmm5
  a042b9:	62 c2 35 40 bc f5    	vfnmadd231ps zmm22,zmm25,zmm13
  a042bf:	62 f1 34 40 59 ed    	vmulps zmm5,zmm25,zmm5
  a042c5:	62 61 7c 48 10 49 07 	vmovups zmm25,ZMMWORD PTR [rcx+0x1c0]
  a042cc:	62 02 0d 48 7f c5    	vpermt2ps zmm24,zmm14,zmm29
  a042d2:	62 b2 15 48 b8 ef    	vfmadd231ps zmm5,zmm13,zmm23
  a042d8:	62 71 7c 48 10 69 0a 	vmovups zmm13,ZMMWORD PTR [rcx+0x280]
  a042df:	62 61 7c 48 10 59 0e 	vmovups zmm27,ZMMWORD PTR [rcx+0x380]
  a042e6:	62 02 5d 48 7f f5    	vpermt2ps zmm30,zmm4,zmm29
  a042ec:	62 f1 64 40 59 e2    	vmulps zmm4,zmm19,zmm2
  a042f2:	62 f2 1d 40 bc e3    	vfnmadd231ps zmm4,zmm28,zmm3
  a042f8:	62 f1 1c 40 59 d2    	vmulps zmm2,zmm28,zmm2
  a042fe:	62 e1 7c 48 10 79 0b 	vmovups zmm23,ZMMWORD PTR [rcx+0x2c0]
  a04305:	62 b2 65 48 b8 d3    	vfmadd231ps zmm2,zmm3,zmm19
  a0430b:	62 f1 7c 48 10 59 0f 	vmovups zmm3,ZMMWORD PTR [rcx+0x3c0]
  a04312:	62 41 2c 40 59 e1    	vmulps zmm28,zmm26,zmm9
  a04318:	62 42 0d 40 bc e0    	vfnmadd231ps zmm28,zmm30,zmm8
  a0431e:	62 51 0c 40 59 f1    	vmulps zmm14,zmm30,zmm9
  a04324:	62 51 6c 40 59 cd    	vmulps zmm9,zmm18,zmm13
  a0432a:	62 32 7d 48 bc cf    	vfnmadd231ps zmm9,zmm0,zmm23
  a04330:	62 12 3d 48 b8 f2    	vfmadd231ps zmm14,zmm8,zmm26
  a04336:	62 11 7c 40 59 c7    	vmulps zmm8,zmm16,zmm31
  a0433c:	62 81 74 40 59 db    	vmulps zmm19,zmm17,zmm27
  a04342:	62 e2 75 48 bc db    	vfnmadd231ps zmm19,zmm1,zmm3
  a04348:	62 12 3d 40 bc c1    	vfnmadd231ps zmm8,zmm24,zmm25
  a0434e:	62 d1 7c 48 59 c5    	vmulps zmm0,zmm0,zmm13
  a04354:	62 b2 45 40 b8 c2    	vfmadd231ps zmm0,zmm23,zmm18
  a0435a:	62 11 3c 40 59 ef    	vmulps zmm13,zmm24,zmm31
  a04360:	62 e1 5c 40 58 ff    	vaddps zmm23,zmm20,zmm7
  a04366:	62 32 35 40 b8 e8    	vfmadd231ps zmm13,zmm25,zmm16
  a0436c:	62 91 74 48 59 cb    	vmulps zmm1,zmm1,zmm27
  a04372:	62 b2 65 48 b8 c9    	vfmadd231ps zmm1,zmm3,zmm17
  a04378:	62 61 6c 48 58 d0    	vaddps zmm26,zmm2,zmm0
  a0437e:	62 61 14 48 58 d9    	vaddps zmm27,zmm13,zmm1
  a04384:	62 e1 5c 40 5c c7    	vsubps zmm16,zmm20,zmm7
  a0438a:	62 d1 5c 48 5c d9    	vsubps zmm3,zmm4,zmm9
  a04390:	62 21 1c 40 58 ee    	vaddps zmm29,zmm28,zmm22
  a04396:	62 f1 6c 48 5c c0    	vsubps zmm0,zmm2,zmm0
  a0439c:	62 f1 14 48 5c c9    	vsubps zmm1,zmm13,zmm1
  a043a2:	62 b1 3c 48 5c d3    	vsubps zmm2,zmm8,zmm19
  a043a8:	62 e1 0c 48 5c d5    	vsubps zmm18,zmm14,zmm5
  a043ae:	62 f1 7c 48 5c fb    	vsubps zmm7,zmm0,zmm3
  a043b4:	62 71 6c 48 58 e9    	vaddps zmm13,zmm2,zmm1
  a043ba:	62 21 3c 28 58 fb    	vaddps ymm31,ymm8,ymm19
  a043c0:	62 72 7d 48 18 1d d2 	vbroadcastss zmm11,DWORD PTR [rip+0xffffffffff670fd2]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a043c7:	0f 67 ff 
  a043ca:	62 41 44 48 59 c3    	vmulps zmm24,zmm7,zmm11
  a043d0:	c5 34 58 cc          	vaddps ymm9,ymm9,ymm4
  a043d4:	62 81 34 28 58 cf    	vaddps ymm17,ymm9,ymm31
  a043da:	62 81 44 20 58 dd    	vaddps ymm19,ymm23,ymm29
  a043e0:	62 41 14 48 59 f3    	vmulps zmm30,zmm13,zmm11
  a043e6:	62 81 2c 00 58 e3    	vaddps xmm20,xmm26,xmm27
  a043ec:	c5 88 58 e5          	vaddps xmm4,xmm14,xmm5
  a043f0:	62 51 54 00 58 ef    	vaddps xmm13,xmm21,xmm15
  a043f6:	62 b1 64 20 58 e9    	vaddps ymm5,ymm19,ymm17
  a043fc:	62 41 5c 08 58 cd    	vaddps xmm25,xmm4,xmm13
  a04402:	c5 f4 5c ca          	vsubps ymm1,ymm1,ymm2
  a04406:	62 b1 34 00 58 d4    	vaddps xmm2,xmm25,xmm20
  a0440c:	62 f2 1d 28 7f d5    	vpermt2ps ymm2,ymm12,ymm5
  a04412:	c4 c3 7d 19 d0 01    	vextractf128 xmm8,ymm2,0x1
  a04418:	c5 a4 59 c9          	vmulps ymm1,ymm11,ymm1
  a0441c:	c5 e4 58 c0          	vaddps ymm0,ymm3,ymm0
  a04420:	c5 f8 11 14 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm2
  a04425:	c5 a4 59 c0          	vmulps ymm0,ymm11,ymm0
  a04429:	c5 fc 58 f9          	vaddps ymm7,ymm0,ymm1
  a0442d:	62 b1 7c 20 58 ea    	vaddps ymm5,ymm16,ymm18
  a04433:	c5 78 13 44 16 10    	vmovlps QWORD PTR [rsi+rdx*1+0x10],xmm8
  a04439:	62 11 3c 00 5c c6    	vsubps xmm8,xmm24,xmm30
  a0443f:	62 91 4c 00 5c d4    	vsubps xmm2,xmm22,xmm28
  a04445:	62 b1 04 08 5c dd    	vsubps xmm3,xmm15,xmm21
  a0444b:	c5 54 58 f7          	vaddps ymm14,ymm5,ymm7
  a0444f:	c5 68 58 fb          	vaddps xmm15,xmm2,xmm3
  a04453:	62 81 2c 20 5c eb    	vsubps ymm21,ymm26,ymm27
  a04459:	62 c1 04 08 58 f0    	vaddps xmm22,xmm15,xmm8
  a0445f:	62 c2 1d 28 7f f6    	vpermt2ps ymm22,ymm12,ymm14
  a04465:	62 11 44 20 5c f5    	vsubps ymm14,ymm23,ymm29
  a0446b:	62 e1 7c 08 11 b4 16 	vmovups XMMWORD PTR [rsi+rdx*1+0x18],xmm22
  a04472:	18 00 00 00 
  a04476:	62 a3 7d 28 19 f6 01 	vextractf32x4 xmm22,ymm22,0x1
  a0447d:	62 e1 7c 08 13 74 16 	vmovlps QWORD PTR [rsi+rdx*1+0x28],xmm22
  a04484:	05 
  a04485:	62 51 04 00 5c c9    	vsubps xmm9,xmm31,xmm9
  a0448b:	62 a1 0c 28 58 f5    	vaddps ymm22,ymm14,ymm21
  a04491:	c5 90 5c e4          	vsubps xmm4,xmm13,xmm4
  a04495:	c5 30 58 ec          	vaddps xmm13,xmm9,xmm4
  a04499:	62 32 1d 28 7f ee    	vpermt2ps ymm13,ymm12,ymm22
  a0449f:	62 33 7d 28 19 ee 01 	vextractf32x4 xmm22,ymm13,0x1
  a044a6:	62 e1 7c 08 13 74 16 	vmovlps QWORD PTR [rsi+rdx*1+0x40],xmm22
  a044ad:	08 
  a044ae:	c5 78 11 6c 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm13
  a044b4:	62 11 3c 20 58 ee    	vaddps ymm13,ymm24,ymm30
  a044ba:	62 a1 7c 20 5c c2    	vsubps ymm16,ymm16,ymm18
  a044c0:	c5 f0 5c c0          	vsubps xmm0,xmm1,xmm0
  a044c4:	62 d1 7c 20 58 cd    	vaddps ymm1,ymm16,ymm13
  a044ca:	c5 e0 5c d2          	vsubps xmm2,xmm3,xmm2
  a044ce:	c5 e8 58 d8          	vaddps xmm3,xmm2,xmm0
  a044d2:	62 f2 1d 28 7f d9    	vpermt2ps ymm3,ymm12,ymm1
  a044d8:	c4 e3 7d 19 d9 01    	vextractf128 xmm1,ymm3,0x1
  a044de:	c5 f8 13 4c 16 58    	vmovlps QWORD PTR [rsi+rdx*1+0x58],xmm1
  a044e4:	62 b1 64 20 5c c9    	vsubps ymm1,ymm19,ymm17
  a044ea:	62 a1 34 00 5c cc    	vsubps xmm17,xmm25,xmm20
  a044f0:	c5 f8 11 5c 16 48    	vmovups XMMWORD PTR [rsi+rdx*1+0x48],xmm3
  a044f6:	62 e2 1d 28 7f c9    	vpermt2ps ymm17,ymm12,ymm1
  a044fc:	62 e3 7d 28 19 c9 01 	vextractf32x4 xmm1,ymm17,0x1
  a04503:	c5 f8 13 4c 16 70    	vmovlps QWORD PTR [rsi+rdx*1+0x70],xmm1
  a04509:	62 e1 7c 08 11 4c 16 	vmovups XMMWORD PTR [rsi+rdx*1+0x60],xmm17
  a04510:	06 
  a04511:	c5 d4 5c cf          	vsubps ymm1,ymm5,ymm7
  a04515:	c4 c1 00 5c d8       	vsubps xmm3,xmm15,xmm8
  a0451a:	62 f2 1d 28 7f d9    	vpermt2ps ymm3,ymm12,ymm1
  a04520:	c4 e3 7d 19 d9 01    	vextractf128 xmm1,ymm3,0x1
  a04526:	c5 f8 13 8c 16 88 00 	vmovlps QWORD PTR [rsi+rdx*1+0x88],xmm1
  a0452d:	00 00 
  a0452f:	62 b1 0c 28 5c cd    	vsubps ymm1,ymm14,ymm21
  a04535:	c4 c1 58 5c e1       	vsubps xmm4,xmm4,xmm9
  a0453a:	c5 f8 11 5c 16 78    	vmovups XMMWORD PTR [rsi+rdx*1+0x78],xmm3
  a04540:	62 f2 1d 28 7f e1    	vpermt2ps ymm4,ymm12,ymm1
  a04546:	c4 e3 7d 19 e1 01    	vextractf128 xmm1,ymm4,0x1
  a0454c:	c5 f8 13 8c 16 a0 00 	vmovlps QWORD PTR [rsi+rdx*1+0xa0],xmm1
  a04553:	00 00 
  a04555:	c5 f8 11 a4 16 90 00 	vmovups XMMWORD PTR [rsi+rdx*1+0x90],xmm4
  a0455c:	00 00 
  a0455e:	62 d1 7c 20 5c cd    	vsubps ymm1,ymm16,ymm13
  a04564:	c5 e8 5c c0          	vsubps xmm0,xmm2,xmm0
  a04568:	62 f2 1d 28 7f c1    	vpermt2ps ymm0,ymm12,ymm1
  a0456e:	c4 e3 7d 19 c1 01    	vextractf128 xmm1,ymm0,0x1
  a04574:	c5 f8 13 8c 16 b8 00 	vmovlps QWORD PTR [rsi+rdx*1+0xb8],xmm1
  a0457b:	00 00 
  a0457d:	c5 f8 11 84 16 a8 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xa8],xmm0
  a04584:	00 00 
  a04586:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  a0458d:	48 39 d0             	cmp    rax,rdx
  a04590:	0f 85 3a fa ff ff    	jne    a03fd0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x90>
  a04596:	48 89 ec             	mov    rsp,rbp
  a04599:	5d                   	pop    rbp
  a0459a:	c5 f8 77             	vzeroupper
  a0459d:	c3                   	ret
