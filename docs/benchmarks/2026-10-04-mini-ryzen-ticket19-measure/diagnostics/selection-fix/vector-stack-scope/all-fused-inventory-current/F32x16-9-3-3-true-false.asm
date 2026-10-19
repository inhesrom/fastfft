
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a3b280 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a3b280:	c5 fb 10 47 10       	vmovsd xmm0,QWORD PTR [rdi+0x10]
  a3b285:	c5 f8 10 0f          	vmovups xmm1,XMMWORD PTR [rdi]
  a3b289:	c5 f8 10 5f 18       	vmovups xmm3,XMMWORD PTR [rdi+0x18]
  a3b28e:	c5 f8 10 67 30       	vmovups xmm4,XMMWORD PTR [rdi+0x30]
  a3b293:	62 f3 75 48 18 e8 01 	vinsertf32x4 zmm5,zmm1,xmm0,0x1
  a3b29a:	62 f1 7c 48 28 0d 5c 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff65635c]        # 91600 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1eab0>
  a3b2a1:	63 65 ff 
  a3b2a4:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a3b2a8:	62 f1 7c 48 28 f5    	vmovaps zmm6,zmm5
  a3b2ae:	62 f2 75 48 7f f2    	vpermt2ps zmm6,zmm1,zmm2
  a3b2b4:	62 f1 7c 48 28 05 82 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff656382]        # 91640 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1eaf0>
  a3b2bb:	63 65 ff 
  a3b2be:	62 f2 7d 48 7f ea    	vpermt2ps zmm5,zmm0,zmm2
  a3b2c4:	c5 fb 10 7f 28       	vmovsd xmm7,QWORD PTR [rdi+0x28]
  a3b2c9:	62 f3 65 48 18 ff 01 	vinsertf32x4 zmm7,zmm3,xmm7,0x1
  a3b2d0:	62 71 7c 48 28 c7    	vmovaps zmm8,zmm7
  a3b2d6:	62 72 75 48 7f c2    	vpermt2ps zmm8,zmm1,zmm2
  a3b2dc:	62 f2 7d 48 7f fa    	vpermt2ps zmm7,zmm0,zmm2
  a3b2e2:	c5 fb 10 5f 40       	vmovsd xmm3,QWORD PTR [rdi+0x40]
  a3b2e7:	62 f3 5d 48 18 e3 01 	vinsertf32x4 zmm4,zmm4,xmm3,0x1
  a3b2ee:	62 f2 5d 48 77 ca    	vpermi2ps zmm1,zmm4,zmm2
  a3b2f4:	62 f2 7d 48 7f e2    	vpermt2ps zmm4,zmm0,zmm2
  a3b2fa:	62 71 44 48 58 cc    	vaddps zmm9,zmm7,zmm4
  a3b300:	62 51 54 48 58 d1    	vaddps zmm10,zmm5,zmm9
  a3b306:	62 71 3c 48 58 d9    	vaddps zmm11,zmm8,zmm1
  a3b30c:	62 d1 4c 48 58 db    	vaddps zmm3,zmm6,zmm11
  a3b312:	62 f2 7d 48 18 05 44 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff63a144]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a3b319:	a1 63 ff 
  a3b31c:	62 d2 7d 48 bc e9    	vfnmadd231ps zmm5,zmm0,zmm9
  a3b322:	62 71 3c 48 5c c1    	vsubps zmm8,zmm8,zmm1
  a3b328:	62 f2 7d 48 18 0d a2 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff639fa2]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a3b32f:	9f 63 ff 
  a3b332:	62 71 3c 48 59 c1    	vmulps zmm8,zmm8,zmm1
  a3b338:	62 51 54 48 58 c8    	vaddps zmm9,zmm5,zmm8
  a3b33e:	62 d2 7d 48 bc f3    	vfnmadd231ps zmm6,zmm0,zmm11
  a3b344:	62 f1 44 48 5c e4    	vsubps zmm4,zmm7,zmm4
  a3b34a:	62 f1 5c 48 59 e1    	vmulps zmm4,zmm4,zmm1
  a3b350:	62 f1 4c 48 5c fc    	vsubps zmm7,zmm6,zmm4
  a3b356:	62 d1 54 48 5c e8    	vsubps zmm5,zmm5,zmm8
  a3b35c:	62 f1 5c 48 58 e6    	vaddps zmm4,zmm4,zmm6
  a3b362:	62 f1 7c 48 28 35 14 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff68bc14]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a3b369:	bc 68 ff 
  a3b36c:	62 72 4d 48 7f d2    	vpermt2ps zmm10,zmm6,zmm2
  a3b372:	62 72 4d 48 7f ca    	vpermt2ps zmm9,zmm6,zmm2
  a3b378:	62 f2 4d 48 7f ea    	vpermt2ps zmm5,zmm6,zmm2
  a3b37e:	c4 41 38 57 c0       	vxorps xmm8,xmm8,xmm8
  a3b383:	62 52 4d 48 7f c0    	vpermt2ps zmm8,zmm6,zmm8
  a3b389:	62 71 7c 48 28 1d 6d 	vmovaps zmm11,ZMMWORD PTR [rip+0xffffffffff68bb6d]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a3b390:	bb 68 ff 
  a3b393:	62 52 25 48 7f d0    	vpermt2ps zmm10,zmm11,zmm8
  a3b399:	62 52 25 48 7f c8    	vpermt2ps zmm9,zmm11,zmm8
  a3b39f:	62 d2 25 48 7f e8    	vpermt2ps zmm5,zmm11,zmm8
  a3b3a5:	62 f2 4d 48 7f da    	vpermt2ps zmm3,zmm6,zmm2
  a3b3ab:	62 f2 4d 48 7f fa    	vpermt2ps zmm7,zmm6,zmm2
  a3b3b1:	62 f2 4d 48 7f e2    	vpermt2ps zmm4,zmm6,zmm2
  a3b3b7:	62 d2 25 48 7f d8    	vpermt2ps zmm3,zmm11,zmm8
  a3b3bd:	62 d2 25 48 7f f8    	vpermt2ps zmm7,zmm11,zmm8
  a3b3c3:	62 d2 25 48 7f e0    	vpermt2ps zmm4,zmm11,zmm8
  a3b3c9:	62 52 25 48 7f c0    	vpermt2ps zmm8,zmm11,zmm8
  a3b3cf:	62 f1 ad 48 14 d5    	vunpcklpd zmm2,zmm10,zmm5
  a3b3d5:	62 f1 ad 48 15 ed    	vunpckhpd zmm5,zmm10,zmm5
  a3b3db:	62 d1 b5 48 14 f0    	vunpcklpd zmm6,zmm9,zmm8
  a3b3e1:	62 51 b5 48 15 c8    	vunpckhpd zmm9,zmm9,zmm8
  a3b3e7:	62 71 7c 48 28 15 0f 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff68ba0f]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a3b3ee:	ba 68 ff 
  a3b3f1:	62 71 7c 48 28 da    	vmovaps zmm11,zmm2
  a3b3f7:	62 72 2d 48 7f de    	vpermt2ps zmm11,zmm10,zmm6
  a3b3fd:	62 71 7c 48 28 25 39 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff68ba39]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a3b404:	ba 68 ff 
  a3b407:	62 f2 1d 48 7f d6    	vpermt2ps zmm2,zmm12,zmm6
  a3b40d:	62 d2 2d 48 7f e9    	vpermt2ps zmm5,zmm10,zmm9
  a3b413:	62 f1 e5 48 14 f4    	vunpcklpd zmm6,zmm3,zmm4
  a3b419:	62 f1 e5 48 15 dc    	vunpckhpd zmm3,zmm3,zmm4
  a3b41f:	62 d1 c5 48 14 e0    	vunpcklpd zmm4,zmm7,zmm8
  a3b425:	62 d1 c5 48 15 f8    	vunpckhpd zmm7,zmm7,zmm8
  a3b42b:	62 71 7c 48 28 c6    	vmovaps zmm8,zmm6
  a3b431:	62 72 2d 48 7f c4    	vpermt2ps zmm8,zmm10,zmm4
  a3b437:	62 f2 1d 48 7f f4    	vpermt2ps zmm6,zmm12,zmm4
  a3b43d:	62 f2 2d 48 7f df    	vpermt2ps zmm3,zmm10,zmm7
  a3b443:	62 f1 7c 48 10 62 02 	vmovups zmm4,ZMMWORD PTR [rdx+0x80]
  a3b44a:	62 f1 7c 48 10 7a 03 	vmovups zmm7,ZMMWORD PTR [rdx+0xc0]
  a3b451:	62 71 7c 48 10 4a 04 	vmovups zmm9,ZMMWORD PTR [rdx+0x100]
  a3b458:	62 71 7c 48 10 52 05 	vmovups zmm10,ZMMWORD PTR [rdx+0x140]
  a3b45f:	62 71 6c 48 59 e4    	vmulps zmm12,zmm2,zmm4
  a3b465:	62 72 4d 48 bc e7    	vfnmadd231ps zmm12,zmm6,zmm7
  a3b46b:	62 51 54 48 59 e9    	vmulps zmm13,zmm5,zmm9
  a3b471:	62 52 65 48 bc ea    	vfnmadd231ps zmm13,zmm3,zmm10
  a3b477:	62 51 1c 48 58 f5    	vaddps zmm14,zmm12,zmm13
  a3b47d:	62 f1 4c 48 59 e4    	vmulps zmm4,zmm6,zmm4
  a3b483:	62 f2 45 48 b8 e2    	vfmadd231ps zmm4,zmm7,zmm2
  a3b489:	62 d1 64 48 59 d1    	vmulps zmm2,zmm3,zmm9
  a3b48f:	62 f2 2d 48 b8 d5    	vfmadd231ps zmm2,zmm10,zmm5
  a3b495:	62 f1 5c 48 58 da    	vaddps zmm3,zmm4,zmm2
  a3b49b:	62 f1 7c 48 28 e8    	vmovaps zmm5,zmm0
  a3b4a1:	62 d2 0d 48 ac eb    	vfnmadd213ps zmm5,zmm14,zmm11
  a3b4a7:	62 d2 65 48 ac c0    	vfnmadd213ps zmm0,zmm3,zmm8
  a3b4ad:	c4 c1 24 58 f6       	vaddps ymm6,ymm11,ymm14
  a3b4b2:	c5 b8 58 db          	vaddps xmm3,xmm8,xmm3
  a3b4b6:	c5 fc 28 3d 02 ce 63 	vmovaps ymm7,YMMWORD PTR [rip+0xffffffffff63ce02]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  a3b4bd:	ff 
  a3b4be:	62 f2 45 28 7f de    	vpermt2ps ymm3,ymm7,ymm6
  a3b4c4:	c5 f8 11 1e          	vmovups XMMWORD PTR [rsi],xmm3
  a3b4c8:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  a3b4ce:	c5 f8 13 5e 10       	vmovlps QWORD PTR [rsi+0x10],xmm3
  a3b4d3:	c5 dc 5c d2          	vsubps ymm2,ymm4,ymm2
  a3b4d7:	c5 ec 59 d1          	vmulps ymm2,ymm2,ymm1
  a3b4db:	c5 d4 58 da          	vaddps ymm3,ymm5,ymm2
  a3b4df:	c4 c1 18 5c e5       	vsubps xmm4,xmm12,xmm13
  a3b4e4:	c5 d8 59 c9          	vmulps xmm1,xmm4,xmm1
  a3b4e8:	c5 f8 5c e1          	vsubps xmm4,xmm0,xmm1
  a3b4ec:	62 f2 45 28 7f e3    	vpermt2ps ymm4,ymm7,ymm3
  a3b4f2:	c5 f8 11 66 18       	vmovups XMMWORD PTR [rsi+0x18],xmm4
  a3b4f7:	c4 e3 7d 19 e3 01    	vextractf128 xmm3,ymm4,0x1
  a3b4fd:	c5 f8 13 5e 28       	vmovlps QWORD PTR [rsi+0x28],xmm3
  a3b502:	c5 d4 5c d2          	vsubps ymm2,ymm5,ymm2
  a3b506:	c5 f8 58 c1          	vaddps xmm0,xmm0,xmm1
  a3b50a:	62 f2 45 28 7f c2    	vpermt2ps ymm0,ymm7,ymm2
  a3b510:	c5 f8 11 46 30       	vmovups XMMWORD PTR [rsi+0x30],xmm0
  a3b515:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  a3b51b:	c5 f8 13 46 40       	vmovlps QWORD PTR [rsi+0x40],xmm0
  a3b520:	c5 f8 77             	vzeroupper
  a3b523:	c3                   	ret
