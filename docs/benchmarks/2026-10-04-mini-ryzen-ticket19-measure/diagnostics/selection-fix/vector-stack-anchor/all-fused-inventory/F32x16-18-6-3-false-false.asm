
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a0c0c0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a0c0c0:	c5 fb 10 47 10       	vmovsd xmm0,QWORD PTR [rdi+0x10]
  a0c0c5:	c5 f8 10 0f          	vmovups xmm1,XMMWORD PTR [rdi]
  a0c0c9:	c5 f8 10 57 18       	vmovups xmm2,XMMWORD PTR [rdi+0x18]
  a0c0ce:	c5 f8 10 5f 30       	vmovups xmm3,XMMWORD PTR [rdi+0x30]
  a0c0d3:	c5 f8 10 7f 48       	vmovups xmm7,XMMWORD PTR [rdi+0x48]
  a0c0d8:	62 f3 75 48 18 e0 01 	vinsertf32x4 zmm4,zmm1,xmm0,0x1
  a0c0df:	62 f1 7c 48 28 35 17 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff682b17]        # 8ec00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c0b0>
  a0c0e6:	2b 68 ff 
  a0c0e9:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a0c0ed:	62 f1 7c 48 28 ec    	vmovaps zmm5,zmm4
  a0c0f3:	62 f2 4d 48 7f e8    	vpermt2ps zmm5,zmm6,zmm0
  a0c0f9:	62 f1 7c 48 28 0d 3d 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff682b3d]        # 8ec40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c0f0>
  a0c100:	2b 68 ff 
  a0c103:	62 f2 75 48 7f e0    	vpermt2ps zmm4,zmm1,zmm0
  a0c109:	c5 7b 10 47 28       	vmovsd xmm8,QWORD PTR [rdi+0x28]
  a0c10e:	62 53 6d 48 18 c8 01 	vinsertf32x4 zmm9,zmm2,xmm8,0x1
  a0c115:	62 51 7c 48 28 c1    	vmovaps zmm8,zmm9
  a0c11b:	62 72 4d 48 7f c0    	vpermt2ps zmm8,zmm6,zmm0
  a0c121:	62 72 75 48 7f c8    	vpermt2ps zmm9,zmm1,zmm0
  a0c127:	c5 fb 10 57 40       	vmovsd xmm2,QWORD PTR [rdi+0x40]
  a0c12c:	62 73 65 48 18 d2 01 	vinsertf32x4 zmm10,zmm3,xmm2,0x1
  a0c133:	62 51 7c 48 28 da    	vmovaps zmm11,zmm10
  a0c139:	62 72 4d 48 7f d8    	vpermt2ps zmm11,zmm6,zmm0
  a0c13f:	62 72 75 48 7f d0    	vpermt2ps zmm10,zmm1,zmm0
  a0c145:	c5 fb 10 57 58       	vmovsd xmm2,QWORD PTR [rdi+0x58]
  a0c14a:	62 73 45 48 18 e2 01 	vinsertf32x4 zmm12,zmm7,xmm2,0x1
  a0c151:	62 51 7c 48 28 ec    	vmovaps zmm13,zmm12
  a0c157:	62 72 4d 48 7f e8    	vpermt2ps zmm13,zmm6,zmm0
  a0c15d:	62 72 75 48 7f e0    	vpermt2ps zmm12,zmm1,zmm0
  a0c163:	c5 fb 10 57 70       	vmovsd xmm2,QWORD PTR [rdi+0x70]
  a0c168:	c5 f8 10 5f 60       	vmovups xmm3,XMMWORD PTR [rdi+0x60]
  a0c16d:	62 73 65 48 18 f2 01 	vinsertf32x4 zmm14,zmm3,xmm2,0x1
  a0c174:	62 51 7c 48 28 fe    	vmovaps zmm15,zmm14
  a0c17a:	62 72 4d 48 7f f8    	vpermt2ps zmm15,zmm6,zmm0
  a0c180:	62 72 75 48 7f f0    	vpermt2ps zmm14,zmm1,zmm0
  a0c186:	c5 fb 10 97 88 00 00 	vmovsd xmm2,QWORD PTR [rdi+0x88]
  a0c18d:	00 
  a0c18e:	c5 f8 10 5f 78       	vmovups xmm3,XMMWORD PTR [rdi+0x78]
  a0c193:	62 e3 65 48 18 c2 01 	vinsertf32x4 zmm16,zmm3,xmm2,0x1
  a0c19a:	62 f2 7d 40 77 f0    	vpermi2ps zmm6,zmm16,zmm0
  a0c1a0:	62 e2 75 48 7f c0    	vpermt2ps zmm16,zmm1,zmm0
  a0c1a6:	62 d1 24 48 58 d7    	vaddps zmm2,zmm11,zmm15
  a0c1ac:	62 e1 54 48 58 ca    	vaddps zmm17,zmm5,zmm2
  a0c1b2:	62 c1 4c 48 58 d0    	vaddps zmm18,zmm6,zmm8
  a0c1b8:	62 a1 14 48 58 da    	vaddps zmm19,zmm13,zmm18
  a0c1be:	62 b1 74 40 58 fb    	vaddps zmm7,zmm17,zmm19
  a0c1c4:	62 c1 2c 48 58 e6    	vaddps zmm20,zmm10,zmm14
  a0c1ca:	62 a1 5c 48 58 ec    	vaddps zmm21,zmm4,zmm20
  a0c1d0:	62 c1 7c 40 58 f1    	vaddps zmm22,zmm16,zmm9
  a0c1d6:	62 a1 1c 48 58 fe    	vaddps zmm23,zmm12,zmm22
  a0c1dc:	62 f2 7d 48 18 0d 7a 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff66927a]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a0c1e3:	92 66 ff 
  a0c1e6:	62 b1 54 40 58 df    	vaddps zmm3,zmm21,zmm23
  a0c1ec:	62 f2 75 48 bc ea    	vfnmadd231ps zmm5,zmm1,zmm2
  a0c1f2:	62 f2 7d 48 18 15 d8 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff6690d8]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a0c1f9:	90 66 ff 
  a0c1fc:	62 51 2c 48 5c d6    	vsubps zmm10,zmm10,zmm14
  a0c202:	62 71 2c 48 59 d2    	vmulps zmm10,zmm10,zmm2
  a0c208:	62 51 54 48 58 f2    	vaddps zmm14,zmm5,zmm10
  a0c20e:	62 32 75 48 bc ea    	vfnmadd231ps zmm13,zmm1,zmm18
  a0c214:	62 51 7c 40 5c c9    	vsubps zmm9,zmm16,zmm9
  a0c21a:	62 71 34 48 59 ca    	vmulps zmm9,zmm9,zmm2
  a0c220:	62 c1 14 48 58 c1    	vaddps zmm16,zmm13,zmm9
  a0c226:	62 a1 0c 48 5c d0    	vsubps zmm18,zmm14,zmm16
  a0c22c:	62 b2 75 48 bc e4    	vfnmadd231ps zmm4,zmm1,zmm20
  a0c232:	62 51 24 48 5c df    	vsubps zmm11,zmm11,zmm15
  a0c238:	62 71 24 48 59 da    	vmulps zmm11,zmm11,zmm2
  a0c23e:	62 51 5c 48 5c fb    	vsubps zmm15,zmm4,zmm11
  a0c244:	62 32 75 48 bc e6    	vfnmadd231ps zmm12,zmm1,zmm22
  a0c24a:	62 d1 4c 48 5c f0    	vsubps zmm6,zmm6,zmm8
  a0c250:	62 71 4c 48 59 c2    	vmulps zmm8,zmm6,zmm2
  a0c256:	62 c1 1c 48 5c e0    	vsubps zmm20,zmm12,zmm8
  a0c25c:	62 b1 04 48 5c f4    	vsubps zmm6,zmm15,zmm20
  a0c262:	62 d1 54 48 5c ea    	vsubps zmm5,zmm5,zmm10
  a0c268:	62 51 14 48 5c c9    	vsubps zmm9,zmm13,zmm9
  a0c26e:	62 51 54 48 58 d1    	vaddps zmm10,zmm5,zmm9
  a0c274:	62 f1 24 48 58 e4    	vaddps zmm4,zmm11,zmm4
  a0c27a:	62 51 3c 48 58 c4    	vaddps zmm8,zmm8,zmm12
  a0c280:	62 51 5c 48 58 d8    	vaddps zmm11,zmm4,zmm8
  a0c286:	62 31 74 40 5c e3    	vsubps zmm12,zmm17,zmm19
  a0c28c:	62 31 54 40 5c ef    	vsubps zmm13,zmm21,zmm23
  a0c292:	62 31 0c 48 58 f0    	vaddps zmm14,zmm14,zmm16
  a0c298:	62 31 04 48 58 fc    	vaddps zmm15,zmm15,zmm20
  a0c29e:	62 d1 54 48 5c e9    	vsubps zmm5,zmm5,zmm9
  a0c2a4:	62 51 5c 48 5c c0    	vsubps zmm8,zmm4,zmm8
  a0c2aa:	62 71 7c 48 28 0d cc 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff6baccc]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a0c2b1:	ac 6b ff 
  a0c2b4:	62 f2 35 48 7f f8    	vpermt2ps zmm7,zmm9,zmm0
  a0c2ba:	62 e2 35 48 7f d0    	vpermt2ps zmm18,zmm9,zmm0
  a0c2c0:	62 72 35 48 7f d0    	vpermt2ps zmm10,zmm9,zmm0
  a0c2c6:	62 72 35 48 7f e0    	vpermt2ps zmm12,zmm9,zmm0
  a0c2cc:	62 72 35 48 7f f0    	vpermt2ps zmm14,zmm9,zmm0
  a0c2d2:	62 f2 35 48 7f e8    	vpermt2ps zmm5,zmm9,zmm0
  a0c2d8:	62 a1 7c 00 57 c0    	vxorps xmm16,xmm16,xmm16
  a0c2de:	62 a2 35 48 7f c0    	vpermt2ps zmm16,zmm9,zmm16
  a0c2e4:	62 e1 7c 48 28 0d 12 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff6bac12]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a0c2eb:	ac 6b ff 
  a0c2ee:	62 d2 75 40 7f fe    	vpermt2ps zmm7,zmm17,zmm14
  a0c2f4:	62 e2 75 40 7f d5    	vpermt2ps zmm18,zmm17,zmm5
  a0c2fa:	62 32 75 40 7f d0    	vpermt2ps zmm10,zmm17,zmm16
  a0c300:	62 32 75 40 7f e0    	vpermt2ps zmm12,zmm17,zmm16
  a0c306:	62 d1 c5 48 14 ea    	vunpcklpd zmm5,zmm7,zmm10
  a0c30c:	62 d1 c5 48 15 fa    	vunpckhpd zmm7,zmm7,zmm10
  a0c312:	62 51 ed 40 14 d4    	vunpcklpd zmm10,zmm18,zmm12
  a0c318:	62 51 ed 40 15 e4    	vunpckhpd zmm12,zmm18,zmm12
  a0c31e:	62 71 7c 48 28 35 d8 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff6baad8]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a0c325:	aa 6b ff 
  a0c328:	62 f1 7c 48 28 e5    	vmovaps zmm4,zmm5
  a0c32e:	62 d2 0d 48 7f e2    	vpermt2ps zmm4,zmm14,zmm10
  a0c334:	62 e1 7c 48 28 15 02 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff6bab02]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a0c33b:	ab 6b ff 
  a0c33e:	62 d2 6d 40 7f ea    	vpermt2ps zmm5,zmm18,zmm10
  a0c344:	62 d2 0d 48 7f fc    	vpermt2ps zmm7,zmm14,zmm12
  a0c34a:	62 f2 35 48 7f d8    	vpermt2ps zmm3,zmm9,zmm0
  a0c350:	62 f2 35 48 7f f0    	vpermt2ps zmm6,zmm9,zmm0
  a0c356:	62 72 35 48 7f d8    	vpermt2ps zmm11,zmm9,zmm0
  a0c35c:	62 72 35 48 7f e8    	vpermt2ps zmm13,zmm9,zmm0
  a0c362:	62 72 35 48 7f f8    	vpermt2ps zmm15,zmm9,zmm0
  a0c368:	62 72 35 48 7f c0    	vpermt2ps zmm8,zmm9,zmm0
  a0c36e:	62 d2 75 40 7f df    	vpermt2ps zmm3,zmm17,zmm15
  a0c374:	62 d2 75 40 7f f0    	vpermt2ps zmm6,zmm17,zmm8
  a0c37a:	62 32 75 40 7f d8    	vpermt2ps zmm11,zmm17,zmm16
  a0c380:	62 32 75 40 7f e8    	vpermt2ps zmm13,zmm17,zmm16
  a0c386:	62 d1 e5 48 14 c3    	vunpcklpd zmm0,zmm3,zmm11
  a0c38c:	62 d1 e5 48 15 db    	vunpckhpd zmm3,zmm3,zmm11
  a0c392:	62 51 cd 48 14 c5    	vunpcklpd zmm8,zmm6,zmm13
  a0c398:	62 d1 cd 48 15 f5    	vunpckhpd zmm6,zmm6,zmm13
  a0c39e:	62 71 7c 48 28 c8    	vmovaps zmm9,zmm0
  a0c3a4:	62 52 0d 48 7f c8    	vpermt2ps zmm9,zmm14,zmm8
  a0c3aa:	62 d2 6d 40 7f c0    	vpermt2ps zmm0,zmm18,zmm8
  a0c3b0:	62 f2 0d 48 7f de    	vpermt2ps zmm3,zmm14,zmm6
  a0c3b6:	62 f1 7c 48 10 72 02 	vmovups zmm6,ZMMWORD PTR [rdx+0x80]
  a0c3bd:	62 71 7c 48 10 42 03 	vmovups zmm8,ZMMWORD PTR [rdx+0xc0]
  a0c3c4:	62 71 7c 48 10 52 04 	vmovups zmm10,ZMMWORD PTR [rdx+0x100]
  a0c3cb:	62 71 7c 48 10 5a 05 	vmovups zmm11,ZMMWORD PTR [rdx+0x140]
  a0c3d2:	62 71 54 48 59 e6    	vmulps zmm12,zmm5,zmm6
  a0c3d8:	62 52 7d 48 bc e0    	vfnmadd231ps zmm12,zmm0,zmm8
  a0c3de:	62 51 44 48 59 ea    	vmulps zmm13,zmm7,zmm10
  a0c3e4:	62 52 65 48 bc eb    	vfnmadd231ps zmm13,zmm3,zmm11
  a0c3ea:	62 51 1c 48 58 f5    	vaddps zmm14,zmm12,zmm13
  a0c3f0:	62 f1 7c 48 59 c6    	vmulps zmm0,zmm0,zmm6
  a0c3f6:	62 f2 3d 48 b8 c5    	vfmadd231ps zmm0,zmm8,zmm5
  a0c3fc:	62 d1 64 48 59 da    	vmulps zmm3,zmm3,zmm10
  a0c402:	62 f2 25 48 b8 df    	vfmadd231ps zmm3,zmm11,zmm7
  a0c408:	62 f1 7c 48 58 eb    	vaddps zmm5,zmm0,zmm3
  a0c40e:	62 f1 7c 48 28 f1    	vmovaps zmm6,zmm1
  a0c414:	62 f2 0d 48 ac f4    	vfnmadd213ps zmm6,zmm14,zmm4
  a0c41a:	62 f1 7c 48 5c c3    	vsubps zmm0,zmm0,zmm3
  a0c420:	62 f1 7c 48 59 c2    	vmulps zmm0,zmm0,zmm2
  a0c426:	62 f1 4c 48 58 d8    	vaddps zmm3,zmm6,zmm0
  a0c42c:	62 d2 55 48 ac c9    	vfnmadd213ps zmm1,zmm5,zmm9
  a0c432:	62 d1 1c 48 5c fd    	vsubps zmm7,zmm12,zmm13
  a0c438:	62 f1 44 48 59 d2    	vmulps zmm2,zmm7,zmm2
  a0c43e:	62 f1 74 48 5c fa    	vsubps zmm7,zmm1,zmm2
  a0c444:	62 f1 4c 48 5c c0    	vsubps zmm0,zmm6,zmm0
  a0c44a:	62 f1 74 48 58 ca    	vaddps zmm1,zmm1,zmm2
  a0c450:	62 d1 5c 48 58 d6    	vaddps zmm2,zmm4,zmm14
  a0c456:	62 f1 34 48 58 e5    	vaddps zmm4,zmm9,zmm5
  a0c45c:	62 f1 7c 48 28 2d 1a 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff68281a]        # 8ec80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c130>
  a0c463:	28 68 ff 
  a0c466:	62 f2 55 48 7f d4    	vpermt2ps zmm2,zmm5,zmm4
  a0c46c:	62 f3 7d 48 19 56 02 	vextractf32x4 XMMWORD PTR [rsi+0x20],zmm2,0x2
  a0c473:	02 
  a0c474:	c5 fc 11 16          	vmovups YMMWORD PTR [rsi],ymm2
  a0c478:	62 f2 55 48 7f df    	vpermt2ps zmm3,zmm5,zmm7
  a0c47e:	62 f3 7d 48 19 5e 05 	vextractf32x4 XMMWORD PTR [rsi+0x50],zmm3,0x2
  a0c485:	02 
  a0c486:	c5 fc 11 5e 30       	vmovups YMMWORD PTR [rsi+0x30],ymm3
  a0c48b:	62 f2 55 48 7f c1    	vpermt2ps zmm0,zmm5,zmm1
  a0c491:	62 f3 7d 48 19 46 08 	vextractf32x4 XMMWORD PTR [rsi+0x80],zmm0,0x2
  a0c498:	02 
  a0c499:	c5 fc 11 46 60       	vmovups YMMWORD PTR [rsi+0x60],ymm0
  a0c49e:	c5 f8 77             	vzeroupper
  a0c4a1:	c3                   	ret
