
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a46ec0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a46ec0:	c5 fb 10 47 20       	vmovsd xmm0,QWORD PTR [rdi+0x20]
  a46ec5:	c5 fc 10 0f          	vmovups ymm1,YMMWORD PTR [rdi]
  a46ec9:	c5 fc 10 57 28       	vmovups ymm2,YMMWORD PTR [rdi+0x28]
  a46ece:	c5 fc 10 5f 50       	vmovups ymm3,YMMWORD PTR [rdi+0x50]
  a46ed3:	62 f3 f5 48 1a c8 01 	vinsertf64x4 zmm1,zmm1,ymm0,0x1
  a46eda:	62 f1 7c 48 28 25 5c 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff64b55c]        # 92440 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f8f0>
  a46ee1:	b5 64 ff 
  a46ee4:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a46ee8:	62 f1 7c 48 28 f1    	vmovaps zmm6,zmm1
  a46eee:	62 f2 5d 48 7f f0    	vpermt2ps zmm6,zmm4,zmm0
  a46ef4:	62 f1 7c 48 28 2d 82 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff64b582]        # 92480 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f930>
  a46efb:	b5 64 ff 
  a46efe:	62 f2 55 48 7f c8    	vpermt2ps zmm1,zmm5,zmm0
  a46f04:	c5 fb 10 7f 48       	vmovsd xmm7,QWORD PTR [rdi+0x48]
  a46f09:	62 f3 ed 48 1a ff 01 	vinsertf64x4 zmm7,zmm2,ymm7,0x1
  a46f10:	62 71 7c 48 28 c7    	vmovaps zmm8,zmm7
  a46f16:	62 72 5d 48 7f c0    	vpermt2ps zmm8,zmm4,zmm0
  a46f1c:	62 f2 55 48 7f f8    	vpermt2ps zmm7,zmm5,zmm0
  a46f22:	c5 fb 10 57 70       	vmovsd xmm2,QWORD PTR [rdi+0x70]
  a46f27:	62 f3 e5 48 1a da 01 	vinsertf64x4 zmm3,zmm3,ymm2,0x1
  a46f2e:	62 f2 65 48 77 e0    	vpermi2ps zmm4,zmm3,zmm0
  a46f34:	62 f2 55 48 7f d8    	vpermt2ps zmm3,zmm5,zmm0
  a46f3a:	62 f1 3c 48 58 ec    	vaddps zmm5,zmm8,zmm4
  a46f40:	62 71 4c 48 58 cd    	vaddps zmm9,zmm6,zmm5
  a46f46:	62 71 44 48 58 d3    	vaddps zmm10,zmm7,zmm3
  a46f4c:	62 d1 74 48 58 d2    	vaddps zmm2,zmm1,zmm10
  a46f52:	62 72 7d 48 18 1d 04 	vbroadcastss zmm11,DWORD PTR [rip+0xffffffffff62e504]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a46f59:	e5 62 ff 
  a46f5c:	62 f2 25 48 bc f5    	vfnmadd231ps zmm6,zmm11,zmm5
  a46f62:	62 f1 44 48 5c db    	vsubps zmm3,zmm7,zmm3
  a46f68:	62 f2 7d 48 18 3d 62 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff62e362]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a46f6f:	e3 62 ff 
  a46f72:	62 71 64 48 59 e7    	vmulps zmm12,zmm3,zmm7
  a46f78:	62 d1 4c 48 58 ec    	vaddps zmm5,zmm6,zmm12
  a46f7e:	62 d2 2d 48 bc cb    	vfnmadd231ps zmm1,zmm10,zmm11
  a46f84:	62 f1 3c 48 5c dc    	vsubps zmm3,zmm8,zmm4
  a46f8a:	62 f1 64 48 59 e7    	vmulps zmm4,zmm3,zmm7
  a46f90:	62 f1 74 48 5c dc    	vsubps zmm3,zmm1,zmm4
  a46f96:	62 d1 4c 48 5c fc    	vsubps zmm7,zmm6,zmm12
  a46f9c:	62 f1 5c 48 58 e1    	vaddps zmm4,zmm4,zmm1
  a46fa2:	62 71 7c 48 28 05 d4 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff67ffd4]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a46fa9:	ff 67 ff 
  a46fac:	62 72 3d 48 7f c8    	vpermt2ps zmm9,zmm8,zmm0
  a46fb2:	62 f2 3d 48 7f e8    	vpermt2ps zmm5,zmm8,zmm0
  a46fb8:	62 f2 3d 48 7f f8    	vpermt2ps zmm7,zmm8,zmm0
  a46fbe:	c4 41 28 57 d2       	vxorps xmm10,xmm10,xmm10
  a46fc3:	62 52 3d 48 7f d2    	vpermt2ps zmm10,zmm8,zmm10
  a46fc9:	62 f1 7c 48 28 35 2d 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff67ff2d]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a46fd0:	ff 67 ff 
  a46fd3:	62 51 7c 48 28 d9    	vmovaps zmm11,zmm9
  a46fd9:	62 52 4d 48 7f da    	vpermt2ps zmm11,zmm6,zmm10
  a46fdf:	62 71 7c 48 28 25 57 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff67ff57]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a46fe6:	ff 67 ff 
  a46fe9:	62 52 1d 48 7f ca    	vpermt2ps zmm9,zmm12,zmm10
  a46fef:	62 71 7c 48 28 ed    	vmovaps zmm13,zmm5
  a46ff5:	62 52 4d 48 7f ea    	vpermt2ps zmm13,zmm6,zmm10
  a46ffb:	62 d2 1d 48 7f ea    	vpermt2ps zmm5,zmm12,zmm10
  a47001:	62 71 7c 48 28 f7    	vmovaps zmm14,zmm7
  a47007:	62 52 4d 48 7f f2    	vpermt2ps zmm14,zmm6,zmm10
  a4700d:	62 d2 1d 48 7f fa    	vpermt2ps zmm7,zmm12,zmm10
  a47013:	62 f1 b5 48 14 cf    	vunpcklpd zmm1,zmm9,zmm7
  a47019:	62 d1 7c 48 28 fa    	vmovaps zmm7,zmm10
  a4701f:	62 d2 4d 48 7f fa    	vpermt2ps zmm7,zmm6,zmm10
  a47025:	62 f2 3d 48 7f d0    	vpermt2ps zmm2,zmm8,zmm0
  a4702b:	62 f2 3d 48 7f d8    	vpermt2ps zmm3,zmm8,zmm0
  a47031:	62 f2 3d 48 7f e0    	vpermt2ps zmm4,zmm8,zmm0
  a47037:	62 71 7c 48 28 c2    	vmovaps zmm8,zmm2
  a4703d:	62 52 4d 48 7f c2    	vpermt2ps zmm8,zmm6,zmm10
  a47043:	62 d2 1d 48 7f d2    	vpermt2ps zmm2,zmm12,zmm10
  a47049:	62 71 7c 48 28 cb    	vmovaps zmm9,zmm3
  a4704f:	62 52 4d 48 7f ca    	vpermt2ps zmm9,zmm6,zmm10
  a47055:	62 d2 1d 48 7f da    	vpermt2ps zmm3,zmm12,zmm10
  a4705b:	62 d2 5d 48 77 f2    	vpermi2ps zmm6,zmm4,zmm10
  a47061:	62 d2 1d 48 7f e2    	vpermt2ps zmm4,zmm12,zmm10
  a47067:	62 52 1d 48 7f d2    	vpermt2ps zmm10,zmm12,zmm10
  a4706d:	62 51 a5 48 14 e6    	vunpcklpd zmm12,zmm11,zmm14
  a47073:	62 51 a5 48 15 de    	vunpckhpd zmm11,zmm11,zmm14
  a47079:	62 71 95 48 14 f7    	vunpcklpd zmm14,zmm13,zmm7
  a4707f:	62 71 95 48 15 ef    	vunpckhpd zmm13,zmm13,zmm7
  a47085:	62 d1 d5 48 14 ea    	vunpcklpd zmm5,zmm5,zmm10
  a4708b:	62 71 7c 48 28 3d 6b 	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff67fd6b]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a47092:	fd 67 ff 
  a47095:	62 d1 7c 48 28 c4    	vmovaps zmm0,zmm12
  a4709b:	62 d2 05 48 7f c6    	vpermt2ps zmm0,zmm15,zmm14
  a470a1:	62 e1 7c 48 28 05 95 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff67fd95]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a470a8:	fd 67 ff 
  a470ab:	62 52 7d 40 7f e6    	vpermt2ps zmm12,zmm16,zmm14
  a470b1:	62 51 7c 48 28 f3    	vmovaps zmm14,zmm11
  a470b7:	62 52 05 48 7f f5    	vpermt2ps zmm14,zmm15,zmm13
  a470bd:	62 52 7d 40 7f dd    	vpermt2ps zmm11,zmm16,zmm13
  a470c3:	62 f2 05 48 7f cd    	vpermt2ps zmm1,zmm15,zmm5
  a470c9:	62 f1 ed 48 14 e4    	vunpcklpd zmm4,zmm2,zmm4
  a470cf:	62 f1 bd 48 14 ee    	vunpcklpd zmm5,zmm8,zmm6
  a470d5:	62 f1 bd 48 15 f6    	vunpckhpd zmm6,zmm8,zmm6
  a470db:	62 71 b5 48 14 c7    	vunpcklpd zmm8,zmm9,zmm7
  a470e1:	62 f1 b5 48 15 ff    	vunpckhpd zmm7,zmm9,zmm7
  a470e7:	62 d1 e5 48 14 da    	vunpcklpd zmm3,zmm3,zmm10
  a470ed:	62 f1 7c 48 28 d5    	vmovaps zmm2,zmm5
  a470f3:	62 d2 05 48 7f d0    	vpermt2ps zmm2,zmm15,zmm8
  a470f9:	62 d2 7d 40 7f e8    	vpermt2ps zmm5,zmm16,zmm8
  a470ff:	62 71 7c 48 28 c6    	vmovaps zmm8,zmm6
  a47105:	62 72 05 48 7f c7    	vpermt2ps zmm8,zmm15,zmm7
  a4710b:	62 f2 7d 40 7f f7    	vpermt2ps zmm6,zmm16,zmm7
  a47111:	62 f2 05 48 7f e3    	vpermt2ps zmm4,zmm15,zmm3
  a47117:	62 f1 7c 48 10 5a 02 	vmovups zmm3,ZMMWORD PTR [rdx+0x80]
  a4711e:	62 71 7c 48 10 4a 03 	vmovups zmm9,ZMMWORD PTR [rdx+0xc0]
  a47125:	62 71 7c 48 10 52 04 	vmovups zmm10,ZMMWORD PTR [rdx+0x100]
  a4712c:	62 71 7c 48 10 6a 05 	vmovups zmm13,ZMMWORD PTR [rdx+0x140]
  a47133:	62 71 7c 48 10 7a 06 	vmovups zmm15,ZMMWORD PTR [rdx+0x180]
  a4713a:	62 e1 7c 48 10 42 07 	vmovups zmm16,ZMMWORD PTR [rdx+0x1c0]
  a47141:	62 e1 7c 48 10 4a 08 	vmovups zmm17,ZMMWORD PTR [rdx+0x200]
  a47148:	62 e1 7c 48 10 52 09 	vmovups zmm18,ZMMWORD PTR [rdx+0x240]
  a4714f:	62 e1 1c 48 59 db    	vmulps zmm19,zmm12,zmm3
  a47155:	62 c2 55 48 bc d9    	vfnmadd231ps zmm19,zmm5,zmm9
  a4715b:	62 a1 74 48 59 e1    	vmulps zmm20,zmm1,zmm17
  a47161:	62 a2 5d 48 bc e2    	vfnmadd231ps zmm20,zmm4,zmm18
  a47167:	62 b1 64 40 58 fc    	vaddps zmm7,zmm19,zmm20
  a4716d:	62 c1 0c 48 59 ea    	vmulps zmm21,zmm14,zmm10
  a47173:	62 c2 3d 48 bc ed    	vfnmadd231ps zmm21,zmm8,zmm13
  a47179:	62 c1 24 48 59 f7    	vmulps zmm22,zmm11,zmm15
  a4717f:	62 a2 4d 48 bc f0    	vfnmadd231ps zmm22,zmm6,zmm16
  a47185:	62 a1 54 40 58 fe    	vaddps zmm23,zmm21,zmm22
  a4718b:	62 f1 54 48 59 db    	vmulps zmm3,zmm5,zmm3
  a47191:	62 d2 35 48 b8 dc    	vfmadd231ps zmm3,zmm9,zmm12
  a47197:	62 b1 5c 48 59 e9    	vmulps zmm5,zmm4,zmm17
  a4719d:	62 f2 6d 40 b8 e9    	vfmadd231ps zmm5,zmm18,zmm1
  a471a3:	62 71 64 48 58 cd    	vaddps zmm9,zmm3,zmm5
  a471a9:	62 51 3c 48 59 c2    	vmulps zmm8,zmm8,zmm10
  a471af:	62 52 15 48 b8 c6    	vfmadd231ps zmm8,zmm13,zmm14
  a471b5:	62 d1 4c 48 59 f7    	vmulps zmm6,zmm6,zmm15
  a471bb:	62 d2 7d 40 b8 f3    	vfmadd231ps zmm6,zmm16,zmm11
  a471c1:	62 71 3c 48 58 d6    	vaddps zmm10,zmm8,zmm6
  a471c7:	62 72 7d 48 18 1d 17 	vbroadcastss zmm11,DWORD PTR [rip+0xffffffffff62e517]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a471ce:	e5 62 ff 
  a471d1:	62 d1 7c 48 28 cb    	vmovaps zmm1,zmm11
  a471d7:	62 f2 45 48 a8 c8    	vfmadd213ps zmm1,zmm7,zmm0
  a471dd:	62 f2 7d 48 18 25 5d 	vbroadcastss zmm4,DWORD PTR [rip+0xffffffffff62e45d]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a471e4:	e4 62 ff 
  a471e7:	62 f2 45 40 bc cc    	vfnmadd231ps zmm1,zmm23,zmm4
  a471ed:	62 71 64 48 5c e5    	vsubps zmm12,zmm3,zmm5
  a471f3:	62 71 3c 48 5c c6    	vsubps zmm8,zmm8,zmm6
  a471f9:	62 72 7d 48 18 2d 55 	vbroadcastss zmm13,DWORD PTR [rip+0xffffffffff62e555]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a47200:	e5 62 ff 
  a47203:	62 d1 3c 48 59 dd    	vmulps zmm3,zmm8,zmm13
  a47209:	62 72 7d 48 18 35 8d 	vbroadcastss zmm14,DWORD PTR [rip+0xffffffffff62e18d]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a47210:	e1 62 ff 
  a47213:	62 d2 1d 48 b8 de    	vfmadd231ps zmm3,zmm12,zmm14
  a47219:	62 d1 7c 48 28 eb    	vmovaps zmm5,zmm11
  a4721f:	62 f2 35 48 a8 ea    	vfmadd213ps zmm5,zmm9,zmm2
  a47225:	62 f2 2d 48 bc ec    	vfnmadd231ps zmm5,zmm10,zmm4
  a4722b:	62 31 64 40 5c fc    	vsubps zmm15,zmm19,zmm20
  a47231:	62 a1 54 40 5c c6    	vsubps zmm16,zmm21,zmm22
  a47237:	62 d1 7c 40 59 f5    	vmulps zmm6,zmm16,zmm13
  a4723d:	62 d2 05 48 b8 f6    	vfmadd231ps zmm6,zmm15,zmm14
  a47243:	62 e1 7c 48 28 cc    	vmovaps zmm17,zmm4
  a47249:	62 e2 45 48 ac c8    	vfnmadd213ps zmm17,zmm7,zmm0
  a4724f:	62 c2 45 40 b8 cb    	vfmadd231ps zmm17,zmm23,zmm11
  a47255:	62 51 1c 48 59 e5    	vmulps zmm12,zmm12,zmm13
  a4725b:	62 52 0d 48 bc e0    	vfnmadd231ps zmm12,zmm14,zmm8
  a47261:	62 f2 35 48 ac e2    	vfnmadd213ps zmm4,zmm9,zmm2
  a47267:	62 d2 2d 48 b8 e3    	vfmadd231ps zmm4,zmm10,zmm11
  a4726d:	62 51 04 48 59 c5    	vmulps zmm8,zmm15,zmm13
  a47273:	62 52 7d 40 bc c6    	vfnmadd231ps zmm8,zmm16,zmm14
  a47279:	c5 b4 58 d2          	vaddps ymm2,ymm9,ymm2
  a4727d:	c5 ac 58 d2          	vaddps ymm2,ymm10,ymm2
  a47281:	c5 f8 58 c7          	vaddps xmm0,xmm0,xmm7
  a47285:	62 b1 7c 08 58 c7    	vaddps xmm0,xmm0,xmm23
  a4728b:	c5 fc 28 3d 2d 10 63 	vmovaps ymm7,YMMWORD PTR [rip+0xffffffffff63102d]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  a47292:	ff 
  a47293:	62 f2 45 28 7f c2    	vpermt2ps ymm0,ymm7,ymm2
  a47299:	c5 f8 11 06          	vmovups XMMWORD PTR [rsi],xmm0
  a4729d:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  a472a3:	c5 f8 13 46 10       	vmovlps QWORD PTR [rsi+0x10],xmm0
  a472a8:	c5 d4 5c c6          	vsubps ymm0,ymm5,ymm6
  a472ac:	c5 f0 58 d3          	vaddps xmm2,xmm1,xmm3
  a472b0:	62 f2 45 28 7f d0    	vpermt2ps ymm2,ymm7,ymm0
  a472b6:	c5 f8 11 56 18       	vmovups XMMWORD PTR [rsi+0x18],xmm2
  a472bb:	c4 e3 7d 19 d0 01    	vextractf128 xmm0,ymm2,0x1
  a472c1:	c5 f8 13 46 28       	vmovlps QWORD PTR [rsi+0x28],xmm0
  a472c6:	c4 c1 5c 5c c0       	vsubps ymm0,ymm4,ymm8
  a472cb:	62 d1 74 00 58 d4    	vaddps xmm2,xmm17,xmm12
  a472d1:	62 f2 45 28 7f d0    	vpermt2ps ymm2,ymm7,ymm0
  a472d7:	c5 f8 11 56 30       	vmovups XMMWORD PTR [rsi+0x30],xmm2
  a472dc:	c4 e3 7d 19 d0 01    	vextractf128 xmm0,ymm2,0x1
  a472e2:	c5 f8 13 46 40       	vmovlps QWORD PTR [rsi+0x40],xmm0
  a472e7:	c5 bc 58 c4          	vaddps ymm0,ymm8,ymm4
  a472eb:	62 d1 74 00 5c d4    	vsubps xmm2,xmm17,xmm12
  a472f1:	62 f2 45 28 7f d0    	vpermt2ps ymm2,ymm7,ymm0
  a472f7:	c5 f8 11 56 48       	vmovups XMMWORD PTR [rsi+0x48],xmm2
  a472fc:	c4 e3 7d 19 d0 01    	vextractf128 xmm0,ymm2,0x1
  a47302:	c5 f8 13 46 58       	vmovlps QWORD PTR [rsi+0x58],xmm0
  a47307:	c5 d4 58 c6          	vaddps ymm0,ymm5,ymm6
  a4730b:	c5 f0 5c cb          	vsubps xmm1,xmm1,xmm3
  a4730f:	62 f2 45 28 7f c8    	vpermt2ps ymm1,ymm7,ymm0
  a47315:	c5 f8 11 4e 60       	vmovups XMMWORD PTR [rsi+0x60],xmm1
  a4731a:	c4 e3 7d 19 c8 01    	vextractf128 xmm0,ymm1,0x1
  a47320:	c5 f8 13 46 70       	vmovlps QWORD PTR [rsi+0x70],xmm0
  a47325:	c5 f8 77             	vzeroupper
  a47328:	c3                   	ret
