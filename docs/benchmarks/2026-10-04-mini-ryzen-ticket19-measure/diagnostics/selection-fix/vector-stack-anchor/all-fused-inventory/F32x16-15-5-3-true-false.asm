
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a01040 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a01040:	c5 fb 10 47 10       	vmovsd xmm0,QWORD PTR [rdi+0x10]
  a01045:	c5 f8 10 0f          	vmovups xmm1,XMMWORD PTR [rdi]
  a01049:	c5 f8 10 67 18       	vmovups xmm4,XMMWORD PTR [rdi+0x18]
  a0104e:	c5 f8 10 6f 30       	vmovups xmm5,XMMWORD PTR [rdi+0x30]
  a01053:	c5 f8 10 77 48       	vmovups xmm6,XMMWORD PTR [rdi+0x48]
  a01058:	62 f3 75 48 18 d0 01 	vinsertf32x4 zmm2,zmm1,xmm0,0x1
  a0105f:	62 f1 7c 48 28 3d 17 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff68cf17]        # 8df80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b430>
  a01066:	cf 68 ff 
  a01069:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a0106d:	62 f1 7c 48 28 da    	vmovaps zmm3,zmm2
  a01073:	62 f2 45 48 7f d8    	vpermt2ps zmm3,zmm7,zmm0
  a01079:	62 f1 7c 48 28 0d 3d 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff68cf3d]        # 8dfc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b470>
  a01080:	cf 68 ff 
  a01083:	62 f2 75 48 7f d0    	vpermt2ps zmm2,zmm1,zmm0
  a01089:	c5 7b 10 47 28       	vmovsd xmm8,QWORD PTR [rdi+0x28]
  a0108e:	62 d3 5d 48 18 e0 01 	vinsertf32x4 zmm4,zmm4,xmm8,0x1
  a01095:	62 71 7c 48 28 c4    	vmovaps zmm8,zmm4
  a0109b:	62 72 45 48 7f c0    	vpermt2ps zmm8,zmm7,zmm0
  a010a1:	62 f2 75 48 7f e0    	vpermt2ps zmm4,zmm1,zmm0
  a010a7:	c5 7b 10 4f 40       	vmovsd xmm9,QWORD PTR [rdi+0x40]
  a010ac:	62 53 55 48 18 c9 01 	vinsertf32x4 zmm9,zmm5,xmm9,0x1
  a010b3:	62 51 7c 48 28 d1    	vmovaps zmm10,zmm9
  a010b9:	62 72 45 48 7f d0    	vpermt2ps zmm10,zmm7,zmm0
  a010bf:	62 72 75 48 7f c8    	vpermt2ps zmm9,zmm1,zmm0
  a010c5:	c5 fb 10 6f 58       	vmovsd xmm5,QWORD PTR [rdi+0x58]
  a010ca:	62 f3 4d 48 18 f5 01 	vinsertf32x4 zmm6,zmm6,xmm5,0x1
  a010d1:	62 71 7c 48 28 de    	vmovaps zmm11,zmm6
  a010d7:	62 72 45 48 7f d8    	vpermt2ps zmm11,zmm7,zmm0
  a010dd:	62 f2 75 48 7f f0    	vpermt2ps zmm6,zmm1,zmm0
  a010e3:	c5 fb 10 6f 70       	vmovsd xmm5,QWORD PTR [rdi+0x70]
  a010e8:	c5 78 10 67 60       	vmovups xmm12,XMMWORD PTR [rdi+0x60]
  a010ed:	62 73 1d 48 18 e5 01 	vinsertf32x4 zmm12,zmm12,xmm5,0x1
  a010f4:	62 f2 1d 48 77 f8    	vpermi2ps zmm7,zmm12,zmm0
  a010fa:	62 72 75 48 7f e0    	vpermt2ps zmm12,zmm1,zmm0
  a01100:	62 51 5c 48 58 ec    	vaddps zmm13,zmm4,zmm12
  a01106:	62 d1 6c 48 58 cd    	vaddps zmm1,zmm2,zmm13
  a0110c:	62 71 34 48 58 f6    	vaddps zmm14,zmm9,zmm6
  a01112:	62 d1 74 48 58 ee    	vaddps zmm5,zmm1,zmm14
  a01118:	62 71 3c 48 58 ff    	vaddps zmm15,zmm8,zmm7
  a0111e:	62 d1 64 48 58 cf    	vaddps zmm1,zmm3,zmm15
  a01124:	62 c1 2c 48 58 c3    	vaddps zmm16,zmm10,zmm11
  a0112a:	62 b1 74 48 58 c8    	vaddps zmm1,zmm1,zmm16
  a01130:	62 e2 7d 48 18 0d ae 	vbroadcastss zmm17,DWORD PTR [rip+0xffffffffff6745ae]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a01137:	45 67 ff 
  a0113a:	62 a1 7c 48 28 d1    	vmovaps zmm18,zmm17
  a01140:	62 e2 15 48 a8 d2    	vfmadd213ps zmm18,zmm13,zmm2
  a01146:	62 e2 7d 48 18 1d f4 	vbroadcastss zmm19,DWORD PTR [rip+0xffffffffff6744f4]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a0114d:	44 67 ff 
  a01150:	62 a2 0d 48 bc d3    	vfnmadd231ps zmm18,zmm14,zmm19
  a01156:	62 f1 3c 48 5c ff    	vsubps zmm7,zmm8,zmm7
  a0115c:	62 72 7d 48 18 05 f2 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff6745f2]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a01163:	45 67 ff 
  a01166:	62 51 2c 48 5c d3    	vsubps zmm10,zmm10,zmm11
  a0116c:	62 51 2c 48 59 d8    	vmulps zmm11,zmm10,zmm8
  a01172:	62 e2 7d 48 18 25 24 	vbroadcastss zmm20,DWORD PTR [rip+0xffffffffff674224]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a01179:	42 67 ff 
  a0117c:	62 32 45 48 b8 dc    	vfmadd231ps zmm11,zmm7,zmm20
  a01182:	62 c1 6c 40 58 eb    	vaddps zmm21,zmm18,zmm11
  a01188:	62 a1 7c 48 28 f1    	vmovaps zmm22,zmm17
  a0118e:	62 e2 05 48 a8 f3    	vfmadd213ps zmm22,zmm15,zmm3
  a01194:	62 a2 7d 40 bc f3    	vfnmadd231ps zmm22,zmm16,zmm19
  a0119a:	62 51 5c 48 5c e4    	vsubps zmm12,zmm4,zmm12
  a011a0:	62 f1 34 48 5c f6    	vsubps zmm6,zmm9,zmm6
  a011a6:	62 51 4c 48 59 c8    	vmulps zmm9,zmm6,zmm8
  a011ac:	62 32 1d 48 b8 cc    	vfmadd231ps zmm9,zmm12,zmm20
  a011b2:	62 d1 4c 40 5c e1    	vsubps zmm4,zmm22,zmm9
  a011b8:	62 d2 65 40 bc d5    	vfnmadd231ps zmm2,zmm19,zmm13
  a011be:	62 d2 75 40 b8 d6    	vfmadd231ps zmm2,zmm17,zmm14
  a011c4:	62 d1 44 48 59 f8    	vmulps zmm7,zmm7,zmm8
  a011ca:	62 d2 5d 40 bc fa    	vfnmadd231ps zmm7,zmm20,zmm10
  a011d0:	62 71 6c 48 58 d7    	vaddps zmm10,zmm2,zmm7
  a011d6:	62 b2 05 48 bc db    	vfnmadd231ps zmm3,zmm15,zmm19
  a011dc:	62 b2 7d 40 b8 d9    	vfmadd231ps zmm3,zmm16,zmm17
  a011e2:	62 51 1c 48 59 c0    	vmulps zmm8,zmm12,zmm8
  a011e8:	62 32 4d 48 bc c4    	vfnmadd231ps zmm8,zmm6,zmm20
  a011ee:	62 d1 64 48 5c f0    	vsubps zmm6,zmm3,zmm8
  a011f4:	62 f1 6c 48 5c d7    	vsubps zmm2,zmm2,zmm7
  a011fa:	62 f1 3c 48 58 db    	vaddps zmm3,zmm8,zmm3
  a01200:	62 d1 6c 40 5c fb    	vsubps zmm7,zmm18,zmm11
  a01206:	62 31 34 48 58 c6    	vaddps zmm8,zmm9,zmm22
  a0120c:	62 71 7c 48 28 0d 6a 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff6c5d6a]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a01213:	5d 6c ff 
  a01216:	62 f2 35 48 7f e8    	vpermt2ps zmm5,zmm9,zmm0
  a0121c:	62 e2 35 48 7f e8    	vpermt2ps zmm21,zmm9,zmm0
  a01222:	62 72 35 48 7f d0    	vpermt2ps zmm10,zmm9,zmm0
  a01228:	62 f2 35 48 7f d0    	vpermt2ps zmm2,zmm9,zmm0
  a0122e:	62 f2 35 48 7f f8    	vpermt2ps zmm7,zmm9,zmm0
  a01234:	c4 41 20 57 db       	vxorps xmm11,xmm11,xmm11
  a01239:	62 52 35 48 7f db    	vpermt2ps zmm11,zmm9,zmm11
  a0123f:	62 71 7c 48 28 25 b7 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff6c5cb7]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a01246:	5c 6c ff 
  a01249:	62 f2 1d 48 7f ef    	vpermt2ps zmm5,zmm12,zmm7
  a0124f:	62 c2 1d 48 7f eb    	vpermt2ps zmm21,zmm12,zmm11
  a01255:	62 52 1d 48 7f d3    	vpermt2ps zmm10,zmm12,zmm11
  a0125b:	62 d2 1d 48 7f d3    	vpermt2ps zmm2,zmm12,zmm11
  a01261:	62 d1 d5 48 14 fa    	vunpcklpd zmm7,zmm5,zmm10
  a01267:	62 d1 d5 48 15 ea    	vunpckhpd zmm5,zmm5,zmm10
  a0126d:	62 71 d5 40 14 d2    	vunpcklpd zmm10,zmm21,zmm2
  a01273:	62 71 d5 40 15 ea    	vunpckhpd zmm13,zmm21,zmm2
  a01279:	62 71 7c 48 28 35 7d 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff6c5b7d]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a01280:	5b 6c ff 
  a01283:	62 f1 7c 48 28 d7    	vmovaps zmm2,zmm7
  a01289:	62 d2 0d 48 7f d2    	vpermt2ps zmm2,zmm14,zmm10
  a0128f:	62 71 7c 48 28 3d a7 	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff6c5ba7]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a01296:	5b 6c ff 
  a01299:	62 d2 05 48 7f fa    	vpermt2ps zmm7,zmm15,zmm10
  a0129f:	62 d2 0d 48 7f ed    	vpermt2ps zmm5,zmm14,zmm13
  a012a5:	62 f2 35 48 7f c8    	vpermt2ps zmm1,zmm9,zmm0
  a012ab:	62 f2 35 48 7f e0    	vpermt2ps zmm4,zmm9,zmm0
  a012b1:	62 f2 35 48 7f f0    	vpermt2ps zmm6,zmm9,zmm0
  a012b7:	62 f2 35 48 7f d8    	vpermt2ps zmm3,zmm9,zmm0
  a012bd:	62 72 35 48 7f c0    	vpermt2ps zmm8,zmm9,zmm0
  a012c3:	62 d2 1d 48 7f c8    	vpermt2ps zmm1,zmm12,zmm8
  a012c9:	62 d2 1d 48 7f e3    	vpermt2ps zmm4,zmm12,zmm11
  a012cf:	62 d2 1d 48 7f f3    	vpermt2ps zmm6,zmm12,zmm11
  a012d5:	62 d2 1d 48 7f db    	vpermt2ps zmm3,zmm12,zmm11
  a012db:	62 f1 f5 48 14 c6    	vunpcklpd zmm0,zmm1,zmm6
  a012e1:	62 f1 f5 48 15 ce    	vunpckhpd zmm1,zmm1,zmm6
  a012e7:	62 f1 dd 48 14 f3    	vunpcklpd zmm6,zmm4,zmm3
  a012ed:	62 f1 dd 48 15 db    	vunpckhpd zmm3,zmm4,zmm3
  a012f3:	62 f1 7c 48 28 e0    	vmovaps zmm4,zmm0
  a012f9:	62 f2 0d 48 7f e6    	vpermt2ps zmm4,zmm14,zmm6
  a012ff:	62 f2 05 48 7f c6    	vpermt2ps zmm0,zmm15,zmm6
  a01305:	62 f2 0d 48 7f cb    	vpermt2ps zmm1,zmm14,zmm3
  a0130b:	62 f1 7c 48 10 5a 02 	vmovups zmm3,ZMMWORD PTR [rdx+0x80]
  a01312:	62 f1 7c 48 10 72 03 	vmovups zmm6,ZMMWORD PTR [rdx+0xc0]
  a01319:	62 71 7c 48 10 42 04 	vmovups zmm8,ZMMWORD PTR [rdx+0x100]
  a01320:	62 71 7c 48 10 4a 05 	vmovups zmm9,ZMMWORD PTR [rdx+0x140]
  a01327:	62 71 44 48 59 d3    	vmulps zmm10,zmm7,zmm3
  a0132d:	62 72 7d 48 bc d6    	vfnmadd231ps zmm10,zmm0,zmm6
  a01333:	62 51 54 48 59 d8    	vmulps zmm11,zmm5,zmm8
  a01339:	62 52 75 48 bc d9    	vfnmadd231ps zmm11,zmm1,zmm9
  a0133f:	62 51 2c 48 58 e3    	vaddps zmm12,zmm10,zmm11
  a01345:	62 f1 7c 48 59 c3    	vmulps zmm0,zmm0,zmm3
  a0134b:	62 f2 4d 48 b8 c7    	vfmadd231ps zmm0,zmm6,zmm7
  a01351:	62 d1 74 48 59 c8    	vmulps zmm1,zmm1,zmm8
  a01357:	62 f2 35 48 b8 cd    	vfmadd231ps zmm1,zmm9,zmm5
  a0135d:	62 f1 7c 48 58 d9    	vaddps zmm3,zmm0,zmm1
  a01363:	62 f2 7d 48 18 2d f3 	vbroadcastss zmm5,DWORD PTR [rip+0xffffffffff6740f3]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a0136a:	40 67 ff 
  a0136d:	62 f1 7c 48 28 f5    	vmovaps zmm6,zmm5
  a01373:	62 f2 1d 48 ac f2    	vfnmadd213ps zmm6,zmm12,zmm2
  a01379:	62 f2 7d 48 18 3d 51 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff673f51]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a01380:	3f 67 ff 
  a01383:	62 f1 7c 48 5c c1    	vsubps zmm0,zmm0,zmm1
  a01389:	62 f1 7c 48 59 c7    	vmulps zmm0,zmm0,zmm7
  a0138f:	62 f1 4c 48 58 c8    	vaddps zmm1,zmm6,zmm0
  a01395:	62 f2 65 48 ac ec    	vfnmadd213ps zmm5,zmm3,zmm4
  a0139b:	62 51 2c 48 5c c3    	vsubps zmm8,zmm10,zmm11
  a013a1:	62 f1 3c 48 59 ff    	vmulps zmm7,zmm8,zmm7
  a013a7:	62 71 54 48 5c c7    	vsubps zmm8,zmm5,zmm7
  a013ad:	62 f1 4c 48 5c c0    	vsubps zmm0,zmm6,zmm0
  a013b3:	62 f1 54 48 58 ef    	vaddps zmm5,zmm5,zmm7
  a013b9:	62 f1 5c 48 58 db    	vaddps zmm3,zmm4,zmm3
  a013bf:	62 d1 6c 48 58 d4    	vaddps zmm2,zmm2,zmm12
  a013c5:	62 f1 7c 48 28 25 31 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff68cc31]        # 8e000 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b4b0>
  a013cc:	cc 68 ff 
  a013cf:	62 f2 5d 48 7f da    	vpermt2ps zmm3,zmm4,zmm2
  a013d5:	c5 fc 11 1e          	vmovups YMMWORD PTR [rsi],ymm3
  a013d9:	62 f3 7d 48 19 da 02 	vextractf32x4 xmm2,zmm3,0x2
  a013e0:	c5 f8 13 56 20       	vmovlps QWORD PTR [rsi+0x20],xmm2
  a013e5:	62 72 5d 48 7f c1    	vpermt2ps zmm8,zmm4,zmm1
  a013eb:	c5 7c 11 46 28       	vmovups YMMWORD PTR [rsi+0x28],ymm8
  a013f0:	62 73 7d 48 19 c1 02 	vextractf32x4 xmm1,zmm8,0x2
  a013f7:	c5 f8 13 4e 48       	vmovlps QWORD PTR [rsi+0x48],xmm1
  a013fc:	62 f2 5d 48 7f e8    	vpermt2ps zmm5,zmm4,zmm0
  a01402:	c5 fc 11 6e 50       	vmovups YMMWORD PTR [rsi+0x50],ymm5
  a01407:	62 f3 7d 48 19 e8 02 	vextractf32x4 xmm0,zmm5,0x2
  a0140e:	c5 f8 13 46 70       	vmovlps QWORD PTR [rsi+0x70],xmm0
  a01413:	c5 f8 77             	vzeroupper
  a01416:	c3                   	ret
