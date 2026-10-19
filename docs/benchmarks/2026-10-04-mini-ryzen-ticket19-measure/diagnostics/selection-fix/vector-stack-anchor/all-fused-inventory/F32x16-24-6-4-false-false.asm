
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a390c0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a390c0:	c5 fc 10 17          	vmovups ymm2,YMMWORD PTR [rdi]
  a390c4:	c5 fc 10 67 20       	vmovups ymm4,YMMWORD PTR [rdi+0x20]
  a390c9:	c5 fc 10 7f 40       	vmovups ymm7,YMMWORD PTR [rdi+0x40]
  a390ce:	c5 fc 10 5f 60       	vmovups ymm3,YMMWORD PTR [rdi+0x60]
  a390d3:	62 71 7c 48 28 05 63 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff658363]        # 91440 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e8f0>
  a390da:	83 65 ff 
  a390dd:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a390e1:	62 f1 7c 48 28 ea    	vmovaps zmm5,zmm2
  a390e7:	62 f2 3d 48 7f e8    	vpermt2ps zmm5,zmm8,zmm0
  a390ed:	62 f1 7c 48 28 0d 89 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff658389]        # 91480 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e930>
  a390f4:	83 65 ff 
  a390f7:	62 f2 75 48 7f d0    	vpermt2ps zmm2,zmm1,zmm0
  a390fd:	62 71 7c 48 28 cc    	vmovaps zmm9,zmm4
  a39103:	62 72 3d 48 7f c8    	vpermt2ps zmm9,zmm8,zmm0
  a39109:	62 f2 75 48 7f e0    	vpermt2ps zmm4,zmm1,zmm0
  a3910f:	62 71 7c 48 28 d7    	vmovaps zmm10,zmm7
  a39115:	62 72 3d 48 7f d0    	vpermt2ps zmm10,zmm8,zmm0
  a3911b:	62 f2 75 48 7f f8    	vpermt2ps zmm7,zmm1,zmm0
  a39121:	62 71 7c 48 28 db    	vmovaps zmm11,zmm3
  a39127:	62 72 3d 48 7f d8    	vpermt2ps zmm11,zmm8,zmm0
  a3912d:	62 f2 75 48 7f d8    	vpermt2ps zmm3,zmm1,zmm0
  a39133:	c5 7c 10 a7 80 00 00 	vmovups ymm12,YMMWORD PTR [rdi+0x80]
  a3913a:	00 
  a3913b:	62 51 7c 48 28 ec    	vmovaps zmm13,zmm12
  a39141:	62 72 3d 48 7f e8    	vpermt2ps zmm13,zmm8,zmm0
  a39147:	62 72 75 48 7f e0    	vpermt2ps zmm12,zmm1,zmm0
  a3914d:	c5 7c 10 b7 a0 00 00 	vmovups ymm14,YMMWORD PTR [rdi+0xa0]
  a39154:	00 
  a39155:	62 72 0d 48 77 c0    	vpermi2ps zmm8,zmm14,zmm0
  a3915b:	62 72 75 48 7f f0    	vpermt2ps zmm14,zmm1,zmm0
  a39161:	62 51 2c 48 58 fd    	vaddps zmm15,zmm10,zmm13
  a39167:	62 c1 54 48 58 c7    	vaddps zmm16,zmm5,zmm15
  a3916d:	62 c1 3c 48 58 c9    	vaddps zmm17,zmm8,zmm9
  a39173:	62 a1 24 48 58 d1    	vaddps zmm18,zmm11,zmm17
  a39179:	62 b1 7c 40 58 f2    	vaddps zmm6,zmm16,zmm18
  a3917f:	62 c1 44 48 58 dc    	vaddps zmm19,zmm7,zmm12
  a39185:	62 a1 6c 48 58 e3    	vaddps zmm20,zmm2,zmm19
  a3918b:	62 e1 0c 48 58 ec    	vaddps zmm21,zmm14,zmm4
  a39191:	62 a1 64 48 58 f5    	vaddps zmm22,zmm3,zmm21
  a39197:	62 b1 5c 40 58 ce    	vaddps zmm1,zmm20,zmm22
  a3919d:	62 e2 7d 48 18 3d b9 	vbroadcastss zmm23,DWORD PTR [rip+0xffffffffff63c2b9]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a391a4:	c2 63 ff 
  a391a7:	62 d2 45 40 bc ef    	vfnmadd231ps zmm5,zmm23,zmm15
  a391ad:	62 d1 44 48 5c fc    	vsubps zmm7,zmm7,zmm12
  a391b3:	62 72 7d 48 18 25 17 	vbroadcastss zmm12,DWORD PTR [rip+0xffffffffff63c117]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a391ba:	c1 63 ff 
  a391bd:	62 d1 44 48 59 fc    	vmulps zmm7,zmm7,zmm12
  a391c3:	62 71 54 48 58 ff    	vaddps zmm15,zmm5,zmm7
  a391c9:	62 32 45 40 bc d9    	vfnmadd231ps zmm11,zmm23,zmm17
  a391cf:	62 f1 0c 48 5c e4    	vsubps zmm4,zmm14,zmm4
  a391d5:	62 51 5c 48 59 f4    	vmulps zmm14,zmm4,zmm12
  a391db:	62 c1 24 48 58 ce    	vaddps zmm17,zmm11,zmm14
  a391e1:	62 21 04 48 5c c1    	vsubps zmm24,zmm15,zmm17
  a391e7:	62 b2 45 40 bc d3    	vfnmadd231ps zmm2,zmm23,zmm19
  a391ed:	62 d1 2c 48 5c e5    	vsubps zmm4,zmm10,zmm13
  a391f3:	62 51 5c 48 59 d4    	vmulps zmm10,zmm4,zmm12
  a391f9:	62 51 6c 48 5c ea    	vsubps zmm13,zmm2,zmm10
  a391ff:	62 b2 55 40 bc df    	vfnmadd231ps zmm3,zmm21,zmm23
  a39205:	62 d1 3c 48 5c e1    	vsubps zmm4,zmm8,zmm9
  a3920b:	62 51 5c 48 59 c4    	vmulps zmm8,zmm4,zmm12
  a39211:	62 51 64 48 5c c8    	vsubps zmm9,zmm3,zmm8
  a39217:	62 d1 14 48 5c e1    	vsubps zmm4,zmm13,zmm9
  a3921d:	62 f1 54 48 5c ef    	vsubps zmm5,zmm5,zmm7
  a39223:	62 51 24 48 5c de    	vsubps zmm11,zmm11,zmm14
  a39229:	62 51 54 48 58 e3    	vaddps zmm12,zmm5,zmm11
  a3922f:	62 f1 2c 48 58 d2    	vaddps zmm2,zmm10,zmm2
  a39235:	62 f1 3c 48 58 db    	vaddps zmm3,zmm8,zmm3
  a3923b:	62 f1 6c 48 58 fb    	vaddps zmm7,zmm2,zmm3
  a39241:	62 31 7c 40 5c d2    	vsubps zmm10,zmm16,zmm18
  a39247:	62 31 5c 40 5c c6    	vsubps zmm8,zmm20,zmm22
  a3924d:	62 31 04 48 58 f1    	vaddps zmm14,zmm15,zmm17
  a39253:	62 51 14 48 58 c9    	vaddps zmm9,zmm13,zmm9
  a39259:	62 d1 54 48 5c eb    	vsubps zmm5,zmm5,zmm11
  a3925f:	62 71 6c 48 5c db    	vsubps zmm11,zmm2,zmm3
  a39265:	62 71 7c 48 28 2d 11 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff68dd11]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a3926c:	dd 68 ff 
  a3926f:	62 f2 15 48 7f f0    	vpermt2ps zmm6,zmm13,zmm0
  a39275:	62 62 15 48 7f c0    	vpermt2ps zmm24,zmm13,zmm0
  a3927b:	62 72 15 48 7f e0    	vpermt2ps zmm12,zmm13,zmm0
  a39281:	62 72 15 48 7f d0    	vpermt2ps zmm10,zmm13,zmm0
  a39287:	62 72 15 48 7f f0    	vpermt2ps zmm14,zmm13,zmm0
  a3928d:	62 f2 15 48 7f e8    	vpermt2ps zmm5,zmm13,zmm0
  a39293:	c4 41 00 57 ff       	vxorps xmm15,xmm15,xmm15
  a39298:	62 52 15 48 7f ff    	vpermt2ps zmm15,zmm13,zmm15
  a3929e:	62 e1 7c 48 28 05 58 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff68dc58]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a392a5:	dc 68 ff 
  a392a8:	62 d2 7d 40 7f f6    	vpermt2ps zmm6,zmm16,zmm14
  a392ae:	62 62 7d 40 7f c5    	vpermt2ps zmm24,zmm16,zmm5
  a392b4:	62 52 7d 40 7f e7    	vpermt2ps zmm12,zmm16,zmm15
  a392ba:	62 52 7d 40 7f d7    	vpermt2ps zmm10,zmm16,zmm15
  a392c0:	62 d1 cd 48 14 ec    	vunpcklpd zmm5,zmm6,zmm12
  a392c6:	62 d1 cd 48 15 d4    	vunpckhpd zmm2,zmm6,zmm12
  a392cc:	62 d1 bd 40 14 f2    	vunpcklpd zmm6,zmm24,zmm10
  a392d2:	62 51 bd 40 15 d2    	vunpckhpd zmm10,zmm24,zmm10
  a392d8:	62 71 7c 48 28 25 1e 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff68db1e]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a392df:	db 68 ff 
  a392e2:	62 f1 7c 48 28 dd    	vmovaps zmm3,zmm5
  a392e8:	62 f2 1d 48 7f de    	vpermt2ps zmm3,zmm12,zmm6
  a392ee:	62 71 7c 48 28 35 48 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff68db48]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a392f5:	db 68 ff 
  a392f8:	62 f2 0d 48 7f ee    	vpermt2ps zmm5,zmm14,zmm6
  a392fe:	62 f1 7c 48 28 f2    	vmovaps zmm6,zmm2
  a39304:	62 d2 1d 48 7f f2    	vpermt2ps zmm6,zmm12,zmm10
  a3930a:	62 d2 0d 48 7f d2    	vpermt2ps zmm2,zmm14,zmm10
  a39310:	62 f2 15 48 7f c8    	vpermt2ps zmm1,zmm13,zmm0
  a39316:	62 f2 15 48 7f e0    	vpermt2ps zmm4,zmm13,zmm0
  a3931c:	62 f2 15 48 7f f8    	vpermt2ps zmm7,zmm13,zmm0
  a39322:	62 72 15 48 7f c0    	vpermt2ps zmm8,zmm13,zmm0
  a39328:	62 72 15 48 7f c8    	vpermt2ps zmm9,zmm13,zmm0
  a3932e:	62 72 15 48 7f d8    	vpermt2ps zmm11,zmm13,zmm0
  a39334:	62 d2 7d 40 7f c9    	vpermt2ps zmm1,zmm16,zmm9
  a3933a:	62 d2 7d 40 7f e3    	vpermt2ps zmm4,zmm16,zmm11
  a39340:	62 d2 7d 40 7f ff    	vpermt2ps zmm7,zmm16,zmm15
  a39346:	62 52 7d 40 7f c7    	vpermt2ps zmm8,zmm16,zmm15
  a3934c:	62 f1 f5 48 14 c7    	vunpcklpd zmm0,zmm1,zmm7
  a39352:	62 f1 f5 48 15 cf    	vunpckhpd zmm1,zmm1,zmm7
  a39358:	62 d1 dd 48 14 f8    	vunpcklpd zmm7,zmm4,zmm8
  a3935e:	62 d1 dd 48 15 e0    	vunpckhpd zmm4,zmm4,zmm8
  a39364:	62 71 7c 48 28 c0    	vmovaps zmm8,zmm0
  a3936a:	62 72 1d 48 7f c7    	vpermt2ps zmm8,zmm12,zmm7
  a39370:	62 f2 0d 48 7f c7    	vpermt2ps zmm0,zmm14,zmm7
  a39376:	62 72 75 48 77 e4    	vpermi2ps zmm12,zmm1,zmm4
  a3937c:	62 f2 0d 48 7f cc    	vpermt2ps zmm1,zmm14,zmm4
  a39382:	62 f1 7c 48 10 62 02 	vmovups zmm4,ZMMWORD PTR [rdx+0x80]
  a39389:	62 f1 7c 48 10 7a 03 	vmovups zmm7,ZMMWORD PTR [rdx+0xc0]
  a39390:	62 71 7c 48 10 4a 04 	vmovups zmm9,ZMMWORD PTR [rdx+0x100]
  a39397:	62 71 7c 48 10 52 05 	vmovups zmm10,ZMMWORD PTR [rdx+0x140]
  a3939e:	62 71 7c 48 10 5a 06 	vmovups zmm11,ZMMWORD PTR [rdx+0x180]
  a393a5:	62 71 7c 48 10 6a 07 	vmovups zmm13,ZMMWORD PTR [rdx+0x1c0]
  a393ac:	62 51 4c 48 59 f1    	vmulps zmm14,zmm6,zmm9
  a393b2:	62 52 1d 48 bc f2    	vfnmadd231ps zmm14,zmm12,zmm10
  a393b8:	62 51 64 48 58 fe    	vaddps zmm15,zmm3,zmm14
  a393be:	62 e1 54 48 59 c4    	vmulps zmm16,zmm5,zmm4
  a393c4:	62 e2 7d 48 bc c7    	vfnmadd231ps zmm16,zmm0,zmm7
  a393ca:	62 c1 6c 48 59 cb    	vmulps zmm17,zmm2,zmm11
  a393d0:	62 c2 75 48 bc cd    	vfnmadd231ps zmm17,zmm1,zmm13
  a393d6:	62 a1 7c 40 58 d1    	vaddps zmm18,zmm16,zmm17
  a393dc:	62 51 1c 48 59 c9    	vmulps zmm9,zmm12,zmm9
  a393e2:	62 72 2d 48 b8 ce    	vfmadd231ps zmm9,zmm10,zmm6
  a393e8:	62 d1 34 48 58 f0    	vaddps zmm6,zmm9,zmm8
  a393ee:	62 f1 7c 48 59 c4    	vmulps zmm0,zmm0,zmm4
  a393f4:	62 f2 45 48 b8 c5    	vfmadd231ps zmm0,zmm7,zmm5
  a393fa:	62 d1 74 48 59 cb    	vmulps zmm1,zmm1,zmm11
  a39400:	62 f2 15 48 b8 ca    	vfmadd231ps zmm1,zmm13,zmm2
  a39406:	62 f1 7c 48 58 d1    	vaddps zmm2,zmm0,zmm1
  a3940c:	62 d1 64 48 5c de    	vsubps zmm3,zmm3,zmm14
  a39412:	62 f1 7c 48 5c c1    	vsubps zmm0,zmm0,zmm1
  a39418:	62 f1 64 48 58 c8    	vaddps zmm1,zmm3,zmm0
  a3941e:	62 d1 3c 48 5c e1    	vsubps zmm4,zmm8,zmm9
  a39424:	62 b1 74 40 5c e8    	vsubps zmm5,zmm17,zmm16
  a3942a:	62 f1 5c 48 58 fd    	vaddps zmm7,zmm4,zmm5
  a39430:	62 31 04 48 5c c2    	vsubps zmm8,zmm15,zmm18
  a39436:	62 71 4c 48 5c ca    	vsubps zmm9,zmm6,zmm2
  a3943c:	62 f1 64 48 5c c0    	vsubps zmm0,zmm3,zmm0
  a39442:	62 f1 5c 48 5c dd    	vsubps zmm3,zmm4,zmm5
  a39448:	62 b1 04 48 58 e2    	vaddps zmm4,zmm15,zmm18
  a3944e:	62 f1 4c 48 58 d2    	vaddps zmm2,zmm6,zmm2
  a39454:	62 f1 7c 48 28 2d 62 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff658062]        # 914c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e970>
  a3945b:	80 65 ff 
  a3945e:	62 f2 55 48 7f e2    	vpermt2ps zmm4,zmm5,zmm2
  a39464:	62 f3 7d 48 19 66 02 	vextractf32x4 XMMWORD PTR [rsi+0x20],zmm4,0x2
  a3946b:	02 
  a3946c:	c5 fc 11 26          	vmovups YMMWORD PTR [rsi],ymm4
  a39470:	62 f2 55 48 7f cf    	vpermt2ps zmm1,zmm5,zmm7
  a39476:	62 f3 7d 48 19 4e 05 	vextractf32x4 XMMWORD PTR [rsi+0x50],zmm1,0x2
  a3947d:	02 
  a3947e:	c5 fc 11 4e 30       	vmovups YMMWORD PTR [rsi+0x30],ymm1
  a39483:	62 52 55 48 7f c1    	vpermt2ps zmm8,zmm5,zmm9
  a39489:	62 73 7d 48 19 46 08 	vextractf32x4 XMMWORD PTR [rsi+0x80],zmm8,0x2
  a39490:	02 
  a39491:	c5 7c 11 46 60       	vmovups YMMWORD PTR [rsi+0x60],ymm8
  a39496:	62 f2 55 48 7f c3    	vpermt2ps zmm0,zmm5,zmm3
  a3949c:	62 f3 7d 48 19 46 0b 	vextractf32x4 XMMWORD PTR [rsi+0xb0],zmm0,0x2
  a394a3:	02 
  a394a4:	c5 fc 11 86 90 00 00 	vmovups YMMWORD PTR [rsi+0x90],ymm0
  a394ab:	00 
  a394ac:	c5 f8 77             	vzeroupper
  a394af:	c3                   	ret
