
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000978080 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  978080:	62 f1 fd 48 10 07    	vmovupd zmm0,ZMMWORD PTR [rdi]
  978086:	c5 f9 10 4f 40       	vmovupd xmm1,XMMWORD PTR [rdi+0x40]
  97808b:	62 f1 fd 48 28 15 eb 	vmovapd zmm2,ZMMWORD PTR [rip+0xffffffffff70f5eb]        # 87680 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x14b30>
  978092:	f5 70 ff 
  978095:	62 f1 fd 48 28 d8    	vmovapd zmm3,zmm0
  97809b:	62 f2 ed 48 7f d9    	vpermt2pd zmm3,zmm2,zmm1
  9780a1:	62 f1 fd 48 28 25 15 	vmovapd zmm4,ZMMWORD PTR [rip+0xffffffffff70f615]        # 876c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x14b70>
  9780a8:	f6 70 ff 
  9780ab:	62 f2 dd 48 7f c1    	vpermt2pd zmm0,zmm4,zmm1
  9780b1:	62 f1 fd 48 10 af 50 	vmovupd zmm5,ZMMWORD PTR [rdi+0x50]
  9780b8:	00 00 00 
  9780bb:	c5 f9 10 8f 90 00 00 	vmovupd xmm1,XMMWORD PTR [rdi+0x90]
  9780c2:	00 
  9780c3:	62 f1 fd 48 28 f5    	vmovapd zmm6,zmm5
  9780c9:	62 f2 ed 48 7f f1    	vpermt2pd zmm6,zmm2,zmm1
  9780cf:	62 f2 dd 48 7f e9    	vpermt2pd zmm5,zmm4,zmm1
  9780d5:	62 f1 fd 48 10 bf a0 	vmovupd zmm7,ZMMWORD PTR [rdi+0xa0]
  9780dc:	00 00 00 
  9780df:	c5 f9 10 8f e0 00 00 	vmovupd xmm1,XMMWORD PTR [rdi+0xe0]
  9780e6:	00 
  9780e7:	62 f2 c5 48 77 d1    	vpermi2pd zmm2,zmm7,zmm1
  9780ed:	62 f2 dd 48 7f f9    	vpermt2pd zmm7,zmm4,zmm1
  9780f3:	62 f1 cd 48 58 e2    	vaddpd zmm4,zmm6,zmm2
  9780f9:	62 71 e5 48 58 c4    	vaddpd zmm8,zmm3,zmm4
  9780ff:	62 71 d5 48 58 cf    	vaddpd zmm9,zmm5,zmm7
  978105:	62 72 fd 48 19 15 89 	vbroadcastsd zmm10,QWORD PTR [rip+0xffffffffff6fc989]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  97810c:	c9 6f ff 
  97810f:	62 d1 fd 48 58 c9    	vaddpd zmm1,zmm0,zmm9
  978115:	62 f2 ad 48 bc dc    	vfnmadd231pd zmm3,zmm10,zmm4
  97811b:	62 f2 fd 48 19 25 fb 	vbroadcastsd zmm4,QWORD PTR [rip+0xffffffffff6fcafb]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  978122:	ca 6f ff 
  978125:	62 f1 d5 48 5c ef    	vsubpd zmm5,zmm5,zmm7
  97812b:	62 f1 d5 48 59 ec    	vmulpd zmm5,zmm5,zmm4
  978131:	62 f1 e5 48 58 fd    	vaddpd zmm7,zmm3,zmm5
  978137:	62 d2 b5 48 bc c2    	vfnmadd231pd zmm0,zmm9,zmm10
  97813d:	62 f1 cd 48 5c d2    	vsubpd zmm2,zmm6,zmm2
  978143:	62 f1 ed 48 59 e4    	vmulpd zmm4,zmm2,zmm4
  978149:	62 f1 fd 48 5c d4    	vsubpd zmm2,zmm0,zmm4
  97814f:	62 f1 e5 48 5c dd    	vsubpd zmm3,zmm3,zmm5
  978155:	62 f1 dd 48 58 e0    	vaddpd zmm4,zmm4,zmm0
  97815b:	62 f1 fd 48 10 2d 03 	vmovupd zmm5,ZMMWORD PTR [rip+0xffffffffff74ec03]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  978162:	ec 74 ff 
  978165:	c5 c9 57 f6          	vxorpd xmm6,xmm6,xmm6
  978169:	62 51 fd 48 28 c8    	vmovapd zmm9,zmm8
  97816f:	62 72 d5 48 7f ce    	vpermt2pd zmm9,zmm5,zmm6
  978175:	62 71 fd 48 10 15 29 	vmovupd zmm10,ZMMWORD PTR [rip+0xffffffffff74ec29]        # c6da8 <crc32fast::table::CRC32_TABLE+0x9124>
  97817c:	ec 74 ff 
  97817f:	62 72 ad 48 7f c6    	vpermt2pd zmm8,zmm10,zmm6
  978185:	62 71 fd 48 28 df    	vmovapd zmm11,zmm7
  97818b:	62 72 d5 48 7f de    	vpermt2pd zmm11,zmm5,zmm6
  978191:	62 f2 ad 48 7f fe    	vpermt2pd zmm7,zmm10,zmm6
  978197:	62 f1 fd 48 28 c3    	vmovapd zmm0,zmm3
  97819d:	62 f2 d5 48 7f c6    	vpermt2pd zmm0,zmm5,zmm6
  9781a3:	62 f2 ad 48 7f de    	vpermt2pd zmm3,zmm10,zmm6
  9781a9:	c4 41 19 57 e4       	vxorpd xmm12,xmm12,xmm12
  9781ae:	62 52 d5 48 7f e4    	vpermt2pd zmm12,zmm5,zmm12
  9781b4:	c4 41 11 57 ed       	vxorpd xmm13,xmm13,xmm13
  9781b9:	62 52 ad 48 7f ed    	vpermt2pd zmm13,zmm10,zmm13
  9781bf:	62 71 fd 48 10 35 1f 	vmovupd zmm14,ZMMWORD PTR [rip+0xffffffffff74eb1f]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  9781c6:	eb 74 ff 
  9781c9:	62 51 fd 48 28 f9    	vmovapd zmm15,zmm9
  9781cf:	62 72 8d 48 7f f8    	vpermt2pd zmm15,zmm14,zmm0
  9781d5:	62 e1 fd 48 10 05 49 	vmovupd zmm16,ZMMWORD PTR [rip+0xffffffffff74eb49]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  9781dc:	eb 74 ff 
  9781df:	62 72 fd 40 7f c8    	vpermt2pd zmm9,zmm16,zmm0
  9781e5:	62 c1 fd 48 28 cb    	vmovapd zmm17,zmm11
  9781eb:	62 c2 8d 48 7f cc    	vpermt2pd zmm17,zmm14,zmm12
  9781f1:	62 52 fd 40 7f dc    	vpermt2pd zmm11,zmm16,zmm12
  9781f7:	62 72 8d 48 7f c3    	vpermt2pd zmm8,zmm14,zmm3
  9781fd:	62 d2 8d 48 7f fd    	vpermt2pd zmm7,zmm14,zmm13
  978203:	62 f1 bd 48 14 df    	vunpcklpd zmm3,zmm8,zmm7
  978209:	62 b1 85 48 14 c1    	vunpcklpd zmm0,zmm15,zmm17
  97820f:	62 b1 85 48 15 f9    	vunpckhpd zmm7,zmm15,zmm17
  978215:	62 51 b5 48 14 c3    	vunpcklpd zmm8,zmm9,zmm11
  97821b:	62 51 b5 48 15 cb    	vunpckhpd zmm9,zmm9,zmm11
  978221:	62 71 fd 48 28 d9    	vmovapd zmm11,zmm1
  978227:	62 72 d5 48 7f de    	vpermt2pd zmm11,zmm5,zmm6
  97822d:	62 f2 ad 48 7f ce    	vpermt2pd zmm1,zmm10,zmm6
  978233:	62 71 fd 48 28 fa    	vmovapd zmm15,zmm2
  978239:	62 72 d5 48 7f fe    	vpermt2pd zmm15,zmm5,zmm6
  97823f:	62 f2 ad 48 7f d6    	vpermt2pd zmm2,zmm10,zmm6
  978245:	62 f2 dd 48 77 ee    	vpermi2pd zmm5,zmm4,zmm6
  97824b:	62 f2 ad 48 7f e6    	vpermt2pd zmm4,zmm10,zmm6
  978251:	62 d1 fd 48 28 f3    	vmovapd zmm6,zmm11
  978257:	62 f2 8d 48 7f f5    	vpermt2pd zmm6,zmm14,zmm5
  97825d:	62 72 fd 40 7f dd    	vpermt2pd zmm11,zmm16,zmm5
  978263:	62 d1 fd 48 28 ef    	vmovapd zmm5,zmm15
  978269:	62 d2 8d 48 7f ec    	vpermt2pd zmm5,zmm14,zmm12
  97826f:	62 52 fd 40 7f fc    	vpermt2pd zmm15,zmm16,zmm12
  978275:	62 f2 8d 48 7f cc    	vpermt2pd zmm1,zmm14,zmm4
  97827b:	62 d2 8d 48 7f d5    	vpermt2pd zmm2,zmm14,zmm13
  978281:	62 f1 f5 48 14 e2    	vunpcklpd zmm4,zmm1,zmm2
  978287:	62 f1 cd 48 14 cd    	vunpcklpd zmm1,zmm6,zmm5
  97828d:	62 f1 cd 48 15 ed    	vunpckhpd zmm5,zmm6,zmm5
  978293:	62 d1 a5 48 14 f7    	vunpcklpd zmm6,zmm11,zmm15
  978299:	62 51 a5 48 15 d7    	vunpckhpd zmm10,zmm11,zmm15
  97829f:	62 71 fd 48 10 5a 02 	vmovupd zmm11,ZMMWORD PTR [rdx+0x80]
  9782a6:	62 71 fd 48 10 62 03 	vmovupd zmm12,ZMMWORD PTR [rdx+0xc0]
  9782ad:	62 71 fd 48 10 6a 04 	vmovupd zmm13,ZMMWORD PTR [rdx+0x100]
  9782b4:	62 71 fd 48 10 72 05 	vmovupd zmm14,ZMMWORD PTR [rdx+0x140]
  9782bb:	62 71 fd 48 10 7a 06 	vmovupd zmm15,ZMMWORD PTR [rdx+0x180]
  9782c2:	62 e1 fd 48 10 42 07 	vmovupd zmm16,ZMMWORD PTR [rdx+0x1c0]
  9782c9:	62 e1 fd 48 10 4a 08 	vmovupd zmm17,ZMMWORD PTR [rdx+0x200]
  9782d0:	62 e1 fd 48 10 52 09 	vmovupd zmm18,ZMMWORD PTR [rdx+0x240]
  9782d7:	62 c1 c5 48 59 db    	vmulpd zmm19,zmm7,zmm11
  9782dd:	62 c2 d5 48 bc dc    	vfnmadd231pd zmm19,zmm5,zmm12
  9782e3:	62 a1 e5 48 59 e1    	vmulpd zmm20,zmm3,zmm17
  9782e9:	62 a2 dd 48 bc e2    	vfnmadd231pd zmm20,zmm4,zmm18
  9782ef:	62 b1 e5 40 58 d4    	vaddpd zmm2,zmm19,zmm20
  9782f5:	62 c1 bd 48 59 ed    	vmulpd zmm21,zmm8,zmm13
  9782fb:	62 c2 cd 48 bc ee    	vfnmadd231pd zmm21,zmm6,zmm14
  978301:	62 c1 b5 48 59 f7    	vmulpd zmm22,zmm9,zmm15
  978307:	62 a2 ad 48 bc f0    	vfnmadd231pd zmm22,zmm10,zmm16
  97830d:	62 a1 d5 40 58 fe    	vaddpd zmm23,zmm21,zmm22
  978313:	62 d1 d5 48 59 eb    	vmulpd zmm5,zmm5,zmm11
  978319:	62 d2 c5 48 b8 ec    	vfmadd231pd zmm5,zmm7,zmm12
  97831f:	62 b1 dd 48 59 e1    	vmulpd zmm4,zmm4,zmm17
  978325:	62 b2 e5 48 b8 e2    	vfmadd231pd zmm4,zmm3,zmm18
  97832b:	62 f1 d5 48 58 dc    	vaddpd zmm3,zmm5,zmm4
  978331:	62 d1 cd 48 59 f5    	vmulpd zmm6,zmm6,zmm13
  978337:	62 d2 bd 48 b8 f6    	vfmadd231pd zmm6,zmm8,zmm14
  97833d:	62 d1 ad 48 59 ff    	vmulpd zmm7,zmm10,zmm15
  978343:	62 b2 b5 48 b8 f8    	vfmadd231pd zmm7,zmm9,zmm16
  978349:	62 71 cd 48 58 c7    	vaddpd zmm8,zmm6,zmm7
  97834f:	62 72 fd 48 19 0d ff 	vbroadcastsd zmm9,QWORD PTR [rip+0xffffffffff6fc6ff]        # 74a58 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f08>
  978356:	c6 6f ff 
  978359:	62 51 fd 48 28 d1    	vmovapd zmm10,zmm9
  97835f:	62 72 ed 48 a8 d0    	vfmadd213pd zmm10,zmm2,zmm0
  978365:	62 72 fd 48 19 1d a9 	vbroadcastsd zmm11,QWORD PTR [rip+0xffffffffff6fcca9]        # 75018 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x24c8>
  97836c:	cc 6f ff 
  97836f:	62 52 c5 40 bc d3    	vfnmadd231pd zmm10,zmm23,zmm11
  978375:	62 f1 d5 48 5c e4    	vsubpd zmm4,zmm5,zmm4
  97837b:	62 f1 cd 48 5c ef    	vsubpd zmm5,zmm6,zmm7
  978381:	62 f2 fd 48 19 35 3d 	vbroadcastsd zmm6,QWORD PTR [rip+0xffffffffff6fc43d]        # 747c8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c78>
  978388:	c4 6f ff 
  97838b:	62 f1 d5 48 59 fe    	vmulpd zmm7,zmm5,zmm6
  978391:	62 72 fd 48 19 25 35 	vbroadcastsd zmm12,QWORD PTR [rip+0xffffffffff6fc835]        # 74bd0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2080>
  978398:	c8 6f ff 
  97839b:	62 d2 dd 48 b8 fc    	vfmadd231pd zmm7,zmm4,zmm12
  9783a1:	62 71 ad 48 58 ef    	vaddpd zmm13,zmm10,zmm7
  9783a7:	62 51 fd 48 28 f1    	vmovapd zmm14,zmm9
  9783ad:	62 72 e5 48 a8 f1    	vfmadd213pd zmm14,zmm3,zmm1
  9783b3:	62 52 bd 48 bc f3    	vfnmadd231pd zmm14,zmm8,zmm11
  9783b9:	62 31 e5 40 5c fc    	vsubpd zmm15,zmm19,zmm20
  9783bf:	62 a1 d5 40 5c c6    	vsubpd zmm16,zmm21,zmm22
  9783c5:	62 e1 fd 40 59 ce    	vmulpd zmm17,zmm16,zmm6
  9783cb:	62 c2 85 48 b8 cc    	vfmadd231pd zmm17,zmm15,zmm12
  9783d1:	62 a1 8d 48 5c d1    	vsubpd zmm18,zmm14,zmm17
  9783d7:	62 c1 fd 48 28 db    	vmovapd zmm19,zmm11
  9783dd:	62 e2 ed 48 ac d8    	vfnmadd213pd zmm19,zmm2,zmm0
  9783e3:	62 c2 c5 40 b8 d9    	vfmadd231pd zmm19,zmm23,zmm9
  9783e9:	62 f1 dd 48 59 e6    	vmulpd zmm4,zmm4,zmm6
  9783ef:	62 f2 9d 48 bc e5    	vfnmadd231pd zmm4,zmm12,zmm5
  9783f5:	62 f1 e5 40 58 ec    	vaddpd zmm5,zmm19,zmm4
  9783fb:	62 72 e5 48 ac d9    	vfnmadd213pd zmm11,zmm3,zmm1
  978401:	62 52 bd 48 b8 d9    	vfmadd231pd zmm11,zmm8,zmm9
  978407:	62 f1 85 48 59 f6    	vmulpd zmm6,zmm15,zmm6
  97840d:	62 d2 fd 40 bc f4    	vfnmadd231pd zmm6,zmm16,zmm12
  978413:	62 71 a5 48 5c ce    	vsubpd zmm9,zmm11,zmm6
  978419:	62 f1 e5 40 5c e4    	vsubpd zmm4,zmm19,zmm4
  97841f:	62 f1 a5 48 58 f6    	vaddpd zmm6,zmm11,zmm6
  978425:	62 f1 ad 48 5c ff    	vsubpd zmm7,zmm10,zmm7
  97842b:	62 31 8d 48 58 d1    	vaddpd zmm10,zmm14,zmm17
  978431:	62 f1 fd 48 58 c2    	vaddpd zmm0,zmm0,zmm2
  978437:	62 b1 fd 48 58 c7    	vaddpd zmm0,zmm0,zmm23
  97843d:	62 f1 e5 48 58 c9    	vaddpd zmm1,zmm3,zmm1
  978443:	62 d1 f5 48 58 c8    	vaddpd zmm1,zmm1,zmm8
  978449:	62 f1 fd 48 28 15 ad 	vmovapd zmm2,ZMMWORD PTR [rip+0xffffffffff70f2ad]        # 87700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x14bb0>
  978450:	f2 70 ff 
  978453:	62 f2 ed 48 7f c1    	vpermt2pd zmm0,zmm2,zmm1
  978459:	62 f3 7d 48 19 46 02 	vextractf32x4 XMMWORD PTR [rsi+0x20],zmm0,0x2
  978460:	02 
  978461:	c5 fd 11 06          	vmovupd YMMWORD PTR [rsi],ymm0
  978465:	62 32 ed 48 7f ea    	vpermt2pd zmm13,zmm2,zmm18
  97846b:	62 73 7d 48 19 6e 05 	vextractf32x4 XMMWORD PTR [rsi+0x50],zmm13,0x2
  978472:	02 
  978473:	c5 7d 11 6e 30       	vmovupd YMMWORD PTR [rsi+0x30],ymm13
  978478:	62 d2 ed 48 7f e9    	vpermt2pd zmm5,zmm2,zmm9
  97847e:	62 f3 7d 48 19 6e 08 	vextractf32x4 XMMWORD PTR [rsi+0x80],zmm5,0x2
  978485:	02 
  978486:	c5 fd 11 6e 60       	vmovupd YMMWORD PTR [rsi+0x60],ymm5
  97848b:	62 f2 ed 48 7f e6    	vpermt2pd zmm4,zmm2,zmm6
  978491:	62 f3 7d 48 19 66 0b 	vextractf32x4 XMMWORD PTR [rsi+0xb0],zmm4,0x2
  978498:	02 
  978499:	c5 fd 11 a6 90 00 00 	vmovupd YMMWORD PTR [rsi+0x90],ymm4
  9784a0:	00 
  9784a1:	62 d2 ed 48 7f fa    	vpermt2pd zmm7,zmm2,zmm10
  9784a7:	62 f3 7d 48 19 7e 0e 	vextractf32x4 XMMWORD PTR [rsi+0xe0],zmm7,0x2
  9784ae:	02 
  9784af:	c5 fd 11 be c0 00 00 	vmovupd YMMWORD PTR [rsi+0xc0],ymm7
  9784b6:	00 
  9784b7:	c5 f8 77             	vzeroupper
  9784ba:	c3                   	ret
