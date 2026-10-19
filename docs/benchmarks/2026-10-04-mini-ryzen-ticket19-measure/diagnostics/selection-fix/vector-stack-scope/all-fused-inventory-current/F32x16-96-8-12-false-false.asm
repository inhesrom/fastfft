
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a65f40 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a65f40:	55                   	push   rbp
  a65f41:	48 89 e5             	mov    rbp,rsp
  a65f44:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a65f48:	48 81 ec 00 02 00 00 	sub    rsp,0x200
  a65f4f:	c6 84 24 80 01 00 00 	mov    BYTE PTR [rsp+0x180],0x0
  a65f56:	00 
  a65f57:	48 8d 84 24 80 01 00 	lea    rax,[rsp+0x180]
  a65f5e:	00 
  a65f5f:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  a65f64:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  a65f69:	62 f1 7c 48 10 07    	vmovups zmm0,ZMMWORD PTR [rdi]
  a65f6f:	c5 fc 10 4f 40       	vmovups ymm1,YMMWORD PTR [rdi+0x40]
  a65f74:	62 f1 7c 48 28 15 c2 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff62e0c2]        # 94040 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x214f0>
  a65f7b:	e0 62 ff 
  a65f7e:	62 f1 7c 48 28 d8    	vmovaps zmm3,zmm0
  a65f84:	62 f2 6d 48 7f d9    	vpermt2ps zmm3,zmm2,zmm1
  a65f8a:	62 f1 7c 48 28 2d ec 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff62e0ec]        # 94080 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21530>
  a65f91:	e0 62 ff 
  a65f94:	62 f2 55 48 7f c1    	vpermt2ps zmm0,zmm5,zmm1
  a65f9a:	62 f1 7c 48 10 b7 60 	vmovups zmm6,ZMMWORD PTR [rdi+0x60]
  a65fa1:	00 00 00 
  a65fa4:	c5 fc 10 8f a0 00 00 	vmovups ymm1,YMMWORD PTR [rdi+0xa0]
  a65fab:	00 
  a65fac:	62 f1 7c 48 28 fe    	vmovaps zmm7,zmm6
  a65fb2:	62 f2 6d 48 7f f9    	vpermt2ps zmm7,zmm2,zmm1
  a65fb8:	62 f2 55 48 7f f1    	vpermt2ps zmm6,zmm5,zmm1
  a65fbe:	62 71 7c 48 10 47 03 	vmovups zmm8,ZMMWORD PTR [rdi+0xc0]
  a65fc5:	c5 fc 10 8f 00 01 00 	vmovups ymm1,YMMWORD PTR [rdi+0x100]
  a65fcc:	00 
  a65fcd:	62 d1 7c 48 28 e0    	vmovaps zmm4,zmm8
  a65fd3:	62 f2 6d 48 7f e1    	vpermt2ps zmm4,zmm2,zmm1
  a65fd9:	62 72 55 48 7f c1    	vpermt2ps zmm8,zmm5,zmm1
  a65fdf:	62 71 7c 48 10 8f 20 	vmovups zmm9,ZMMWORD PTR [rdi+0x120]
  a65fe6:	01 00 00 
  a65fe9:	c5 fc 10 8f 60 01 00 	vmovups ymm1,YMMWORD PTR [rdi+0x160]
  a65ff0:	00 
  a65ff1:	62 51 7c 48 28 d1    	vmovaps zmm10,zmm9
  a65ff7:	62 72 6d 48 7f d1    	vpermt2ps zmm10,zmm2,zmm1
  a65ffd:	62 72 55 48 7f c9    	vpermt2ps zmm9,zmm5,zmm1
  a66003:	62 71 7c 48 10 5f 06 	vmovups zmm11,ZMMWORD PTR [rdi+0x180]
  a6600a:	c5 fc 10 8f c0 01 00 	vmovups ymm1,YMMWORD PTR [rdi+0x1c0]
  a66011:	00 
  a66012:	62 51 7c 48 28 e3    	vmovaps zmm12,zmm11
  a66018:	62 72 6d 48 7f e1    	vpermt2ps zmm12,zmm2,zmm1
  a6601e:	62 72 55 48 7f d9    	vpermt2ps zmm11,zmm5,zmm1
  a66024:	62 71 7c 48 10 af e0 	vmovups zmm13,ZMMWORD PTR [rdi+0x1e0]
  a6602b:	01 00 00 
  a6602e:	c5 fc 10 8f 20 02 00 	vmovups ymm1,YMMWORD PTR [rdi+0x220]
  a66035:	00 
  a66036:	62 51 7c 48 28 f5    	vmovaps zmm14,zmm13
  a6603c:	62 72 6d 48 7f f1    	vpermt2ps zmm14,zmm2,zmm1
  a66042:	62 72 55 48 7f e9    	vpermt2ps zmm13,zmm5,zmm1
  a66048:	62 71 7c 48 10 7f 09 	vmovups zmm15,ZMMWORD PTR [rdi+0x240]
  a6604f:	c5 fc 10 8f 80 02 00 	vmovups ymm1,YMMWORD PTR [rdi+0x280]
  a66056:	00 
  a66057:	62 c1 7c 48 28 c7    	vmovaps zmm16,zmm15
  a6605d:	62 e2 6d 48 7f c1    	vpermt2ps zmm16,zmm2,zmm1
  a66063:	62 72 55 48 7f f9    	vpermt2ps zmm15,zmm5,zmm1
  a66069:	62 e1 7c 48 10 8f a0 	vmovups zmm17,ZMMWORD PTR [rdi+0x2a0]
  a66070:	02 00 00 
  a66073:	c5 fc 10 8f e0 02 00 	vmovups ymm1,YMMWORD PTR [rdi+0x2e0]
  a6607a:	00 
  a6607b:	62 f2 75 40 77 d1    	vpermi2ps zmm2,zmm17,zmm1
  a66081:	62 e2 55 48 7f c9    	vpermt2ps zmm17,zmm5,zmm1
  a66087:	62 c1 64 48 58 d4    	vaddps zmm18,zmm3,zmm12
  a6608d:	62 a1 5c 48 58 d8    	vaddps zmm19,zmm4,zmm16
  a66093:	62 a1 6c 40 58 e3    	vaddps zmm20,zmm18,zmm19
  a66099:	62 c1 44 48 58 ee    	vaddps zmm21,zmm7,zmm14
  a6609f:	62 e1 2c 48 58 f2    	vaddps zmm22,zmm10,zmm2
  a660a5:	62 a1 54 40 58 fe    	vaddps zmm23,zmm21,zmm22
  a660ab:	62 b1 5c 40 58 cf    	vaddps zmm1,zmm20,zmm23
  a660b1:	62 41 7c 48 58 c3    	vaddps zmm24,zmm0,zmm11
  a660b7:	62 41 3c 48 58 cf    	vaddps zmm25,zmm8,zmm15
  a660bd:	62 01 3c 40 58 d1    	vaddps zmm26,zmm24,zmm25
  a660c3:	62 41 4c 48 58 dd    	vaddps zmm27,zmm6,zmm13
  a660c9:	62 21 34 48 58 e1    	vaddps zmm28,zmm9,zmm17
  a660cf:	62 01 24 40 58 ec    	vaddps zmm29,zmm27,zmm28
  a660d5:	62 91 2c 40 58 ed    	vaddps zmm5,zmm26,zmm29
  a660db:	62 d1 64 48 5c dc    	vsubps zmm3,zmm3,zmm12
  a660e1:	62 51 3c 48 5c ff    	vsubps zmm15,zmm8,zmm15
  a660e7:	62 41 64 48 58 f7    	vaddps zmm30,zmm3,zmm15
  a660ed:	62 d1 44 48 5c fe    	vsubps zmm7,zmm7,zmm14
  a660f3:	62 d1 4c 48 5c f5    	vsubps zmm6,zmm6,zmm13
  a660f9:	62 71 44 48 58 c6    	vaddps zmm8,zmm7,zmm6
  a660ff:	62 72 7d 48 18 2d 93 	vbroadcastss zmm13,DWORD PTR [rip+0xffffffffff60f293]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a66106:	f2 60 ff 
  a66109:	62 51 3c 48 59 f5    	vmulps zmm14,zmm8,zmm13
  a6610f:	62 31 34 48 5c c1    	vsubps zmm8,zmm9,zmm17
  a66115:	62 f1 2c 48 5c d2    	vsubps zmm2,zmm10,zmm2
  a6611b:	62 71 3c 48 5c ca    	vsubps zmm9,zmm8,zmm2
  a66121:	62 51 34 48 59 cd    	vmulps zmm9,zmm9,zmm13
  a66127:	62 c1 0c 48 58 c9    	vaddps zmm17,zmm14,zmm9
  a6612d:	62 31 0c 40 58 e1    	vaddps zmm12,zmm30,zmm17
  a66133:	62 d1 7c 48 5c c3    	vsubps zmm0,zmm0,zmm11
  a66139:	62 f1 7c 40 5c e4    	vsubps zmm4,zmm16,zmm4
  a6613f:	62 71 5c 48 58 d8    	vaddps zmm11,zmm4,zmm0
  a66145:	62 f1 4c 48 5c f7    	vsubps zmm6,zmm6,zmm7
  a6614b:	62 d1 4c 48 59 f5    	vmulps zmm6,zmm6,zmm13
  a66151:	62 d1 6c 48 58 d0    	vaddps zmm2,zmm2,zmm8
  a66157:	62 d1 6c 48 59 d5    	vmulps zmm2,zmm2,zmm13
  a6615d:	62 f1 4c 48 5c fa    	vsubps zmm7,zmm6,zmm2
  a66163:	62 71 24 48 58 c7    	vaddps zmm8,zmm11,zmm7
  a66169:	62 a1 6c 40 5c c3    	vsubps zmm16,zmm18,zmm19
  a6616f:	62 81 24 40 5c d4    	vsubps zmm18,zmm27,zmm28
  a66175:	62 31 7c 40 58 ea    	vaddps zmm13,zmm16,zmm18
  a6617b:	62 01 3c 40 5c c1    	vsubps zmm24,zmm24,zmm25
  a66181:	62 a1 4c 40 5c ed    	vsubps zmm21,zmm22,zmm21
  a66187:	62 11 54 40 58 d0    	vaddps zmm10,zmm21,zmm24
  a6618d:	62 d1 64 48 5c df    	vsubps zmm3,zmm3,zmm15
  a66193:	62 f1 4c 48 58 d2    	vaddps zmm2,zmm6,zmm2
  a66199:	62 e1 64 48 58 da    	vaddps zmm19,zmm3,zmm2
  a6619f:	62 f1 7c 48 5c e4    	vsubps zmm4,zmm0,zmm4
  a661a5:	62 d1 34 48 5c f6    	vsubps zmm6,zmm9,zmm14
  a661ab:	62 f1 5c 48 58 c6    	vaddps zmm0,zmm4,zmm6
  a661b1:	62 a1 5c 40 5c e7    	vsubps zmm20,zmm20,zmm23
  a661b7:	62 11 2c 40 5c f5    	vsubps zmm14,zmm26,zmm29
  a661bd:	62 a1 0c 40 5c f1    	vsubps zmm22,zmm30,zmm17
  a661c3:	62 e1 24 48 5c cf    	vsubps zmm17,zmm11,zmm7
  a661c9:	62 b1 7c 40 5c fa    	vsubps zmm7,zmm16,zmm18
  a661cf:	62 a1 3c 40 5c c5    	vsubps zmm16,zmm24,zmm21
  a661d5:	62 f1 64 48 5c d2    	vsubps zmm2,zmm3,zmm2
  a661db:	62 f1 5c 48 5c de    	vsubps zmm3,zmm4,zmm6
  a661e1:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm3
  a661e8:	01 
  a661e9:	62 e1 7c 48 28 15 8d 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff660d8d]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a661f0:	0d 66 ff 
  a661f3:	c5 d8 57 e4          	vxorps xmm4,xmm4,xmm4
  a661f7:	62 f1 7c 48 28 d9    	vmovaps zmm3,zmm1
  a661fd:	62 f2 6d 40 7f dc    	vpermt2ps zmm3,zmm18,zmm4
  a66203:	62 71 7c 48 28 0d b3 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff660db3]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a6620a:	0d 66 ff 
  a6620d:	62 f2 35 48 7f cc    	vpermt2ps zmm1,zmm9,zmm4
  a66213:	62 51 7c 48 28 dc    	vmovaps zmm11,zmm12
  a66219:	62 72 6d 40 7f dc    	vpermt2ps zmm11,zmm18,zmm4
  a6621f:	62 72 35 48 7f e4    	vpermt2ps zmm12,zmm9,zmm4
  a66225:	62 41 7c 48 28 c5    	vmovaps zmm24,zmm13
  a6622b:	62 62 6d 40 7f c4    	vpermt2ps zmm24,zmm18,zmm4
  a66231:	62 72 35 48 7f ec    	vpermt2ps zmm13,zmm9,zmm4
  a66237:	62 21 7c 48 28 cb    	vmovaps zmm25,zmm19
  a6623d:	62 62 6d 40 7f cc    	vpermt2ps zmm25,zmm18,zmm4
  a66243:	62 e2 35 48 7f dc    	vpermt2ps zmm19,zmm9,zmm4
  a66249:	62 b1 7c 48 28 f4    	vmovaps zmm6,zmm20
  a6624f:	62 f2 6d 40 7f f4    	vpermt2ps zmm6,zmm18,zmm4
  a66255:	62 e2 35 48 7f e4    	vpermt2ps zmm20,zmm9,zmm4
  a6625b:	62 21 7c 48 28 d6    	vmovaps zmm26,zmm22
  a66261:	62 62 6d 40 7f d4    	vpermt2ps zmm26,zmm18,zmm4
  a66267:	62 e2 35 48 7f f4    	vpermt2ps zmm22,zmm9,zmm4
  a6626d:	62 61 7c 48 28 df    	vmovaps zmm27,zmm7
  a66273:	62 62 6d 40 7f dc    	vpermt2ps zmm27,zmm18,zmm4
  a66279:	62 f2 35 48 7f fc    	vpermt2ps zmm7,zmm9,zmm4
  a6627f:	62 61 7c 48 28 e2    	vmovaps zmm28,zmm2
  a66285:	62 62 6d 40 7f e4    	vpermt2ps zmm28,zmm18,zmm4
  a6628b:	62 f2 35 48 7f d4    	vpermt2ps zmm2,zmm9,zmm4
  a66291:	62 e1 7c 48 28 2d 65 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff660c65]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a66298:	0c 66 ff 
  a6629b:	62 61 7c 48 28 eb    	vmovaps zmm29,zmm3
  a662a1:	62 62 55 40 7f ee    	vpermt2ps zmm29,zmm21,zmm6
  a662a7:	62 e1 7c 48 28 3d 8f 	vmovaps zmm23,ZMMWORD PTR [rip+0xffffffffff660c8f]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a662ae:	0c 66 ff 
  a662b1:	62 f2 45 40 7f de    	vpermt2ps zmm3,zmm23,zmm6
  a662b7:	62 41 7c 48 28 f3    	vmovaps zmm30,zmm11
  a662bd:	62 02 55 40 7f f2    	vpermt2ps zmm30,zmm21,zmm26
  a662c3:	62 12 45 40 7f da    	vpermt2ps zmm11,zmm23,zmm26
  a662c9:	62 91 7c 48 28 f0    	vmovaps zmm6,zmm24
  a662cf:	62 92 55 40 7f f3    	vpermt2ps zmm6,zmm21,zmm27
  a662d5:	62 02 45 40 7f c3    	vpermt2ps zmm24,zmm23,zmm27
  a662db:	62 01 7c 48 28 d1    	vmovaps zmm26,zmm25
  a662e1:	62 02 55 40 7f d4    	vpermt2ps zmm26,zmm21,zmm28
  a662e7:	62 02 45 40 7f cc    	vpermt2ps zmm25,zmm23,zmm28
  a662ed:	62 b2 55 40 7f cc    	vpermt2ps zmm1,zmm21,zmm20
  a662f3:	62 32 55 40 7f e6    	vpermt2ps zmm12,zmm21,zmm22
  a662f9:	62 72 55 40 7f ef    	vpermt2ps zmm13,zmm21,zmm7
  a662ff:	62 e2 55 40 7f da    	vpermt2ps zmm19,zmm21,zmm2
  a66305:	62 f1 95 40 14 d6    	vunpcklpd zmm2,zmm29,zmm6
  a6630b:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm2
  a66312:	02 
  a66313:	62 f1 95 40 15 f6    	vunpckhpd zmm6,zmm29,zmm6
  a66319:	62 01 8d 40 14 fa    	vunpcklpd zmm31,zmm30,zmm26
  a6631f:	62 81 8d 40 15 f2    	vunpckhpd zmm22,zmm30,zmm26
  a66325:	62 91 e5 48 14 d0    	vunpcklpd zmm2,zmm3,zmm24
  a6632b:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm2
  a66332:	04 
  a66333:	62 91 e5 48 15 d0    	vunpckhpd zmm2,zmm3,zmm24
  a66339:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm2
  a66340:	05 
  a66341:	62 01 a5 48 14 e1    	vunpcklpd zmm28,zmm11,zmm25
  a66347:	62 81 a5 48 15 e1    	vunpckhpd zmm20,zmm11,zmm25
  a6634d:	62 d1 f5 48 14 fd    	vunpcklpd zmm7,zmm1,zmm13
  a66353:	62 d1 f5 48 15 cd    	vunpckhpd zmm1,zmm1,zmm13
  a66359:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm1
  a66360:	03 
  a66361:	62 21 9d 48 14 db    	vunpcklpd zmm27,zmm12,zmm19
  a66367:	62 21 9d 48 15 d3    	vunpckhpd zmm26,zmm12,zmm19
  a6636d:	62 61 7c 48 28 c5    	vmovaps zmm24,zmm5
  a66373:	62 62 6d 40 7f c4    	vpermt2ps zmm24,zmm18,zmm4
  a66379:	62 f2 35 48 7f ec    	vpermt2ps zmm5,zmm9,zmm4
  a6637f:	62 41 7c 48 28 c8    	vmovaps zmm25,zmm8
  a66385:	62 62 6d 40 7f cc    	vpermt2ps zmm25,zmm18,zmm4
  a6638b:	62 72 35 48 7f c4    	vpermt2ps zmm8,zmm9,zmm4
  a66391:	62 41 7c 48 28 f2    	vmovaps zmm30,zmm10
  a66397:	62 62 6d 40 7f f4    	vpermt2ps zmm30,zmm18,zmm4
  a6639d:	62 72 35 48 7f d4    	vpermt2ps zmm10,zmm9,zmm4
  a663a3:	62 71 7c 48 28 d8    	vmovaps zmm11,zmm0
  a663a9:	62 72 6d 40 7f dc    	vpermt2ps zmm11,zmm18,zmm4
  a663af:	62 f2 35 48 7f c4    	vpermt2ps zmm0,zmm9,zmm4
  a663b5:	62 d1 7c 48 28 de    	vmovaps zmm3,zmm14
  a663bb:	62 72 6d 40 7f f4    	vpermt2ps zmm14,zmm18,zmm4
  a663c1:	62 f2 35 48 7f dc    	vpermt2ps zmm3,zmm9,zmm4
  a663c7:	62 31 7c 48 28 f9    	vmovaps zmm15,zmm17
  a663cd:	62 72 6d 40 7f fc    	vpermt2ps zmm15,zmm18,zmm4
  a663d3:	62 e2 35 48 7f cc    	vpermt2ps zmm17,zmm9,zmm4
  a663d9:	62 a1 7c 48 28 d8    	vmovaps zmm19,zmm16
  a663df:	62 e2 6d 40 7f c4    	vpermt2ps zmm16,zmm18,zmm4
  a663e5:	62 e2 35 48 7f dc    	vpermt2ps zmm19,zmm9,zmm4
  a663eb:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x40]
  a663f2:	01 
  a663f3:	62 e2 6d 48 77 d4    	vpermi2ps zmm18,zmm2,zmm4
  a663f9:	62 f2 35 48 7f d4    	vpermt2ps zmm2,zmm9,zmm4
  a663ff:	62 71 7c 48 28 2d f7 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff6609f7]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a66406:	09 66 ff 
  a66409:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x80]
  a66410:	02 
  a66411:	62 f1 7c 48 28 cc    	vmovaps zmm1,zmm4
  a66417:	62 92 15 48 7f cf    	vpermt2ps zmm1,zmm13,zmm31
  a6641d:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm1
  a66424:	01 
  a66425:	62 61 7c 48 28 2d 11 	vmovaps zmm29,ZMMWORD PTR [rip+0xffffffffff660a11]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a6642c:	0a 66 ff 
  a6642f:	62 92 15 40 7f e7    	vpermt2ps zmm4,zmm29,zmm31
  a66435:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm4
  a6643c:	02 
  a6643d:	62 71 7c 48 28 ce    	vmovaps zmm9,zmm6
  a66443:	62 32 15 48 7f ce    	vpermt2ps zmm9,zmm13,zmm22
  a66449:	62 b2 15 40 7f f6    	vpermt2ps zmm6,zmm29,zmm22
  a6644f:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x100]
  a66456:	04 
  a66457:	62 61 7c 48 28 f9    	vmovaps zmm31,zmm1
  a6645d:	62 02 15 48 7f fc    	vpermt2ps zmm31,zmm13,zmm28
  a66463:	62 92 15 40 7f cc    	vpermt2ps zmm1,zmm29,zmm28
  a66469:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm1
  a66470:	04 
  a66471:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x140]
  a66478:	05 
  a66479:	62 e1 7c 48 28 f4    	vmovaps zmm22,zmm4
  a6647f:	62 a2 15 48 7f f4    	vpermt2ps zmm22,zmm13,zmm20
  a66485:	62 b2 15 40 7f e4    	vpermt2ps zmm4,zmm29,zmm20
  a6648b:	62 71 7c 48 28 e7    	vmovaps zmm12,zmm7
  a66491:	62 12 15 48 7f e3    	vpermt2ps zmm12,zmm13,zmm27
  a66497:	62 92 15 40 7f fb    	vpermt2ps zmm7,zmm29,zmm27
  a6649d:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0xc0]
  a664a4:	03 
  a664a5:	62 e1 7c 48 28 e1    	vmovaps zmm20,zmm1
  a664ab:	62 82 15 48 7f e2    	vpermt2ps zmm20,zmm13,zmm26
  a664b1:	62 92 15 40 7f ca    	vpermt2ps zmm1,zmm29,zmm26
  a664b7:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm1
  a664be:	03 
  a664bf:	62 01 7c 48 28 d0    	vmovaps zmm26,zmm24
  a664c5:	62 42 55 40 7f d6    	vpermt2ps zmm26,zmm21,zmm14
  a664cb:	62 42 45 40 7f c6    	vpermt2ps zmm24,zmm23,zmm14
  a664d1:	62 11 7c 48 28 f1    	vmovaps zmm14,zmm25
  a664d7:	62 52 55 40 7f f7    	vpermt2ps zmm14,zmm21,zmm15
  a664dd:	62 42 45 40 7f cf    	vpermt2ps zmm25,zmm23,zmm15
  a664e3:	62 01 7c 48 28 de    	vmovaps zmm27,zmm30
  a664e9:	62 22 55 40 7f d8    	vpermt2ps zmm27,zmm21,zmm16
  a664ef:	62 22 45 40 7f f0    	vpermt2ps zmm30,zmm23,zmm16
  a664f5:	62 c1 7c 48 28 c3    	vmovaps zmm16,zmm11
  a664fb:	62 32 45 40 7f da    	vpermt2ps zmm11,zmm23,zmm18
  a66501:	62 a2 55 40 7f c2    	vpermt2ps zmm16,zmm21,zmm18
  a66507:	62 f2 55 40 7f eb    	vpermt2ps zmm5,zmm21,zmm3
  a6650d:	62 32 55 40 7f c1    	vpermt2ps zmm8,zmm21,zmm17
  a66513:	62 32 55 40 7f d3    	vpermt2ps zmm10,zmm21,zmm19
  a66519:	62 f2 55 40 7f c2    	vpermt2ps zmm0,zmm21,zmm2
  a6651f:	62 11 ad 40 14 fb    	vunpcklpd zmm15,zmm26,zmm27
  a66525:	62 01 ad 40 15 d3    	vunpckhpd zmm26,zmm26,zmm27
  a6652b:	62 a1 8d 48 14 c8    	vunpcklpd zmm17,zmm14,zmm16
  a66531:	62 a1 8d 48 15 d0    	vunpckhpd zmm18,zmm14,zmm16
  a66537:	62 11 bd 40 14 f6    	vunpcklpd zmm14,zmm24,zmm30
  a6653d:	62 81 bd 40 15 c6    	vunpckhpd zmm16,zmm24,zmm30
  a66543:	62 c1 b5 40 14 eb    	vunpcklpd zmm21,zmm25,zmm11
  a66549:	62 51 b5 40 15 db    	vunpckhpd zmm11,zmm25,zmm11
  a6654f:	62 41 d5 48 14 da    	vunpcklpd zmm27,zmm5,zmm10
  a66555:	62 51 d5 48 15 d2    	vunpckhpd zmm10,zmm5,zmm10
  a6655b:	62 61 bd 48 14 c0    	vunpcklpd zmm24,zmm8,zmm0
  a66561:	62 f1 bd 48 15 c0    	vunpckhpd zmm0,zmm8,zmm0
  a66567:	62 d1 7c 48 28 cf    	vmovaps zmm1,zmm15
  a6656d:	62 b2 15 48 7f c9    	vpermt2ps zmm1,zmm13,zmm17
  a66573:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm1
  a6657a:	05 
  a6657b:	62 32 15 40 7f f9    	vpermt2ps zmm15,zmm29,zmm17
  a66581:	62 11 7c 48 28 c2    	vmovaps zmm8,zmm26
  a66587:	62 32 15 48 7f c2    	vpermt2ps zmm8,zmm13,zmm18
  a6658d:	62 22 15 40 7f d2    	vpermt2ps zmm26,zmm29,zmm18
  a66593:	62 41 7c 48 28 e6    	vmovaps zmm28,zmm14
  a66599:	62 22 15 48 7f e5    	vpermt2ps zmm28,zmm13,zmm21
  a6659f:	62 32 15 40 7f f5    	vpermt2ps zmm14,zmm29,zmm21
  a665a5:	62 a1 7c 48 28 f8    	vmovaps zmm23,zmm16
  a665ab:	62 c2 15 48 7f fb    	vpermt2ps zmm23,zmm13,zmm11
  a665b1:	62 c2 15 40 7f c3    	vpermt2ps zmm16,zmm29,zmm11
  a665b7:	62 81 7c 48 28 cb    	vmovaps zmm17,zmm27
  a665bd:	62 82 15 48 7f c8    	vpermt2ps zmm17,zmm13,zmm24
  a665c3:	62 02 15 40 7f d8    	vpermt2ps zmm27,zmm29,zmm24
  a665c9:	62 72 2d 48 77 e8    	vpermi2ps zmm13,zmm10,zmm0
  a665cf:	62 72 15 40 7f d0    	vpermt2ps zmm10,zmm29,zmm0
  a665d5:	62 61 7c 48 10 4a 02 	vmovups zmm25,ZMMWORD PTR [rdx+0x80]
  a665dc:	62 61 7c 48 10 42 03 	vmovups zmm24,ZMMWORD PTR [rdx+0xc0]
  a665e3:	62 f1 7c 48 10 4a 04 	vmovups zmm1,ZMMWORD PTR [rdx+0x100]
  a665ea:	62 e1 7c 48 10 52 05 	vmovups zmm18,ZMMWORD PTR [rdx+0x140]
  a665f1:	62 f1 7c 48 10 42 06 	vmovups zmm0,ZMMWORD PTR [rdx+0x180]
  a665f8:	62 61 7c 48 10 6a 0c 	vmovups zmm29,ZMMWORD PTR [rdx+0x300]
  a665ff:	62 61 7c 48 10 72 0d 	vmovups zmm30,ZMMWORD PTR [rdx+0x340]
  a66606:	62 11 4c 40 59 dd    	vmulps zmm11,zmm22,zmm29
  a6660c:	62 12 45 40 bc de    	vfnmadd231ps zmm11,zmm23,zmm30
  a66612:	62 81 44 40 59 fd    	vmulps zmm23,zmm23,zmm29
  a66618:	62 61 7c 48 10 6a 07 	vmovups zmm29,ZMMWORD PTR [rdx+0x1c0]
  a6661f:	62 a2 0d 40 b8 fe    	vfmadd231ps zmm23,zmm30,zmm22
  a66625:	62 61 7c 48 10 72 08 	vmovups zmm30,ZMMWORD PTR [rdx+0x200]
  a6662c:	62 e1 4c 48 59 f0    	vmulps zmm22,zmm6,zmm0
  a66632:	62 82 2d 40 bc f5    	vfnmadd231ps zmm22,zmm26,zmm29
  a66638:	62 61 2c 40 59 d0    	vmulps zmm26,zmm26,zmm0
  a6663e:	62 f1 7c 48 10 42 12 	vmovups zmm0,ZMMWORD PTR [rdx+0x480]
  a66645:	62 62 15 40 b8 d6    	vfmadd231ps zmm26,zmm29,zmm6
  a6664b:	62 61 7c 48 10 6a 13 	vmovups zmm29,ZMMWORD PTR [rdx+0x4c0]
  a66652:	62 f1 44 48 59 f0    	vmulps zmm6,zmm7,zmm0
  a66658:	62 92 25 40 bc f5    	vfnmadd231ps zmm6,zmm27,zmm29
  a6665e:	62 61 24 40 59 d8    	vmulps zmm27,zmm27,zmm0
  a66664:	62 f1 7c 48 10 42 09 	vmovups zmm0,ZMMWORD PTR [rdx+0x240]
  a6666b:	62 62 15 40 b8 df    	vfmadd231ps zmm27,zmm29,zmm7
  a66671:	62 61 7c 48 10 6a 0a 	vmovups zmm29,ZMMWORD PTR [rdx+0x280]
  a66678:	62 91 04 40 59 fe    	vmulps zmm7,zmm31,zmm30
  a6667e:	62 f2 1d 40 bc f8    	vfnmadd231ps zmm7,zmm28,zmm0
  a66684:	62 01 1c 40 59 e6    	vmulps zmm28,zmm28,zmm30
  a6668a:	62 61 7c 48 10 72 14 	vmovups zmm30,ZMMWORD PTR [rdx+0x500]
  a66691:	62 02 7d 48 b8 e7    	vfmadd231ps zmm28,zmm0,zmm31
  a66697:	62 f1 7c 48 10 42 15 	vmovups zmm0,ZMMWORD PTR [rdx+0x540]
  a6669e:	62 01 5c 40 59 fe    	vmulps zmm31,zmm20,zmm30
  a666a4:	62 62 15 48 bc f8    	vfnmadd231ps zmm31,zmm13,zmm0
  a666aa:	62 11 14 48 59 ee    	vmulps zmm13,zmm13,zmm30
  a666b0:	62 61 7c 48 10 72 0e 	vmovups zmm30,ZMMWORD PTR [rdx+0x380]
  a666b7:	62 32 7d 48 b8 ec    	vfmadd231ps zmm13,zmm0,zmm20
  a666bd:	62 f1 7c 48 10 42 0f 	vmovups zmm0,ZMMWORD PTR [rdx+0x3c0]
  a666c4:	62 81 5c 48 59 de    	vmulps zmm19,zmm4,zmm30
  a666ca:	62 e2 7d 40 bc d8    	vfnmadd231ps zmm19,zmm16,zmm0
  a666d0:	62 81 7c 40 59 c6    	vmulps zmm16,zmm16,zmm30
  a666d6:	62 e1 7c 48 10 62 0b 	vmovups zmm20,ZMMWORD PTR [rdx+0x2c0]
  a666dd:	62 e2 7d 48 b8 c4    	vfmadd231ps zmm16,zmm0,zmm4
  a666e3:	62 f1 7c 48 10 42 10 	vmovups zmm0,ZMMWORD PTR [rdx+0x400]
  a666ea:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x80]
  a666f1:	02 
  a666f2:	62 91 6c 48 59 d9    	vmulps zmm3,zmm2,zmm25
  a666f8:	62 92 05 48 bc d8    	vfnmadd231ps zmm3,zmm15,zmm24
  a666fe:	62 01 04 48 59 c9    	vmulps zmm25,zmm15,zmm25
  a66704:	62 71 7c 48 10 7a 11 	vmovups zmm15,ZMMWORD PTR [rdx+0x440]
  a6670b:	62 62 3d 40 b8 ca    	vfmadd231ps zmm25,zmm24,zmm2
  a66711:	62 61 7c 48 10 42 16 	vmovups zmm24,ZMMWORD PTR [rdx+0x580]
  a66718:	62 61 1c 48 59 f0    	vmulps zmm30,zmm12,zmm0
  a6671e:	62 42 75 40 bc f7    	vfnmadd231ps zmm30,zmm17,zmm15
  a66724:	62 f1 74 40 59 d0    	vmulps zmm2,zmm17,zmm0
  a6672a:	62 e1 7c 48 10 4a 17 	vmovups zmm17,ZMMWORD PTR [rdx+0x5c0]
  a66731:	62 d2 05 48 b8 d4    	vfmadd231ps zmm2,zmm15,zmm12
  a66737:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x40]
  a6673e:	01 
  a6673f:	62 c1 54 48 58 eb    	vaddps zmm21,zmm5,zmm11
  a66745:	62 f1 34 48 59 c1    	vmulps zmm0,zmm9,zmm1
  a6674b:	62 b2 3d 48 bc c2    	vfnmadd231ps zmm0,zmm8,zmm18
  a66751:	62 f1 3c 48 59 c9    	vmulps zmm1,zmm8,zmm1
  a66757:	62 71 4c 40 58 e6    	vaddps zmm12,zmm22,zmm6
  a6675d:	62 d2 6d 40 b8 c9    	vfmadd231ps zmm1,zmm18,zmm9
  a66763:	62 d1 54 40 58 e4    	vaddps zmm4,zmm21,zmm12
  a66769:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm4
  a66770:	02 
  a66771:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0xc0]
  a66778:	03 
  a66779:	62 11 5c 48 59 c8    	vmulps zmm9,zmm4,zmm24
  a6677f:	62 32 2d 48 bc c9    	vfnmadd231ps zmm9,zmm10,zmm17
  a66785:	62 11 2c 48 59 d0    	vmulps zmm10,zmm10,zmm24
  a6678b:	62 01 44 48 58 c7    	vaddps zmm24,zmm7,zmm31
  a66791:	62 72 75 40 b8 d4    	vfmadd231ps zmm10,zmm17,zmm4
  a66797:	62 f1 64 40 58 e3    	vaddps zmm4,zmm19,zmm3
  a6679d:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x100]
  a667a4:	04 
  a667a5:	62 11 3c 48 59 fd    	vmulps zmm15,zmm8,zmm29
  a667ab:	62 32 0d 48 bc fc    	vfnmadd231ps zmm15,zmm14,zmm20
  a667b1:	62 11 0c 48 59 f5    	vmulps zmm14,zmm14,zmm29
  a667b7:	62 e1 3c 40 58 cc    	vaddps zmm17,zmm24,zmm4
  a667bd:	62 e1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm17
  a667c4:	03 
  a667c5:	62 52 5d 40 b8 f0    	vfmadd231ps zmm14,zmm20,zmm8
  a667cb:	62 e1 0c 40 58 e0    	vaddps zmm20,zmm30,zmm0
  a667d1:	62 c1 34 48 58 cf    	vaddps zmm17,zmm9,zmm15
  a667d7:	62 01 44 48 5c ff    	vsubps zmm31,zmm7,zmm31
  a667dd:	62 91 7c 40 58 f9    	vaddps zmm7,zmm16,zmm25
  a667e3:	62 81 7c 40 5c c1    	vsubps zmm16,zmm16,zmm25
  a667e9:	62 21 5c 40 58 c9    	vaddps zmm25,zmm20,zmm17
  a667ef:	62 71 0c 40 5c c0    	vsubps zmm8,zmm30,zmm0
  a667f5:	62 41 2c 48 58 f6    	vaddps zmm30,zmm10,zmm14
  a667fb:	62 c1 2c 48 5c d6    	vsubps zmm18,zmm10,zmm14
  a66801:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x140]
  a66808:	05 
  a66809:	62 71 44 40 58 d0    	vaddps zmm10,zmm23,zmm0
  a6680f:	62 51 54 48 5c f3    	vsubps zmm14,zmm5,zmm11
  a66815:	62 11 2c 40 58 db    	vaddps zmm11,zmm26,zmm27
  a6681b:	62 01 2c 40 5c d3    	vsubps zmm26,zmm26,zmm27
  a66821:	62 41 1c 40 58 dd    	vaddps zmm27,zmm28,zmm13
  a66827:	62 41 1c 40 5c e5    	vsubps zmm28,zmm28,zmm13
  a6682d:	62 71 6c 48 58 e9    	vaddps zmm13,zmm2,zmm1
  a66833:	62 b1 64 48 5c db    	vsubps zmm3,zmm3,zmm19
  a66839:	62 e1 1c 40 58 db    	vaddps zmm19,zmm28,zmm3
  a6683f:	62 f1 6c 48 5c e9    	vsubps zmm5,zmm2,zmm1
  a66845:	62 d1 04 48 5c c9    	vsubps zmm1,zmm15,zmm9
  a6684b:	62 f1 54 48 58 d1    	vaddps zmm2,zmm5,zmm1
  a66851:	62 71 64 40 5c ca    	vsubps zmm9,zmm19,zmm2
  a66857:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm9
  a6685e:	04 
  a6685f:	62 61 64 40 58 ea    	vaddps zmm29,zmm19,zmm2
  a66865:	62 31 04 40 58 f8    	vaddps zmm15,zmm31,zmm16
  a6686b:	62 a1 7c 48 5c df    	vsubps zmm19,zmm0,zmm23
  a66871:	62 a1 3c 48 58 fa    	vaddps zmm23,zmm8,zmm18
  a66877:	62 b1 4c 48 5c c6    	vsubps zmm0,zmm6,zmm22
  a6687d:	62 a1 04 48 58 f7    	vaddps zmm22,zmm15,zmm23
  a66883:	62 31 04 48 5c cf    	vsubps zmm9,zmm15,zmm23
  a66889:	62 c1 24 48 58 fa    	vaddps zmm23,zmm11,zmm10
  a6688f:	62 71 3c 40 5c fc    	vsubps zmm15,zmm24,zmm4
  a66895:	62 61 24 40 58 c7    	vaddps zmm24,zmm27,zmm7
  a6689b:	62 b1 5c 40 5c e1    	vsubps zmm4,zmm20,zmm17
  a668a1:	62 91 14 48 58 d6    	vaddps zmm2,zmm13,zmm30
  a668a7:	62 51 54 40 5c e4    	vsubps zmm12,zmm21,zmm12
  a668ad:	62 81 0c 48 58 e2    	vaddps zmm20,zmm14,zmm26
  a668b3:	62 f1 24 40 5c ff    	vsubps zmm7,zmm27,zmm7
  a668b9:	62 f2 7d 48 18 35 9d 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff60eb9d]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a668c0:	eb 60 ff 
  a668c3:	62 11 14 48 5c ee    	vsubps zmm13,zmm13,zmm30
  a668c9:	62 c1 44 48 5c cd    	vsubps zmm17,zmm7,zmm13
  a668cf:	62 e1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm17
  a668d6:	01 
  a668d7:	62 c1 44 48 58 cd    	vaddps zmm17,zmm7,zmm13
  a668dd:	62 61 7c 48 28 de    	vmovaps zmm27,zmm6
  a668e3:	62 51 2c 48 5c d3    	vsubps zmm10,zmm10,zmm11
  a668e9:	62 61 04 48 58 f4    	vaddps zmm30,zmm15,zmm4
  a668ef:	62 e1 04 48 5c ec    	vsubps zmm21,zmm15,zmm4
  a668f5:	62 31 7c 48 58 db    	vaddps zmm11,zmm0,zmm19
  a668fb:	62 91 0c 48 5c fa    	vsubps zmm7,zmm14,zmm26
  a66901:	62 71 7c 48 28 f6    	vmovaps zmm14,zmm6
  a66907:	62 21 04 40 5c d0    	vsubps zmm26,zmm31,zmm16
  a6690d:	62 71 7c 48 28 ee    	vmovaps zmm13,zmm6
  a66913:	62 31 3c 48 5c c2    	vsubps zmm8,zmm8,zmm18
  a66919:	62 71 7c 48 28 fe    	vmovaps zmm15,zmm6
  a6691f:	62 f1 64 40 5c c0    	vsubps zmm0,zmm19,zmm0
  a66925:	62 c1 2c 40 58 c0    	vaddps zmm16,zmm26,zmm8
  a6692b:	62 e1 1c 40 5c d3    	vsubps zmm18,zmm28,zmm3
  a66931:	62 b1 44 48 58 d8    	vaddps zmm3,zmm7,zmm16
  a66937:	62 f1 54 48 5c e9    	vsubps zmm5,zmm5,zmm1
  a6693d:	62 f1 6c 40 58 cd    	vaddps zmm1,zmm18,zmm5
  a66943:	62 e2 4d 48 ac c7    	vfnmadd213ps zmm16,zmm6,zmm7
  a66949:	62 e1 7c 48 28 de    	vmovaps zmm19,zmm6
  a6694f:	62 61 7c 48 28 e6    	vmovaps zmm28,zmm6
  a66955:	62 f2 75 48 ac f0    	vfnmadd213ps zmm6,zmm1,zmm0
  a6695b:	62 f1 7c 48 58 e1    	vaddps zmm4,zmm0,zmm1
  a66961:	62 61 3c 40 58 fa    	vaddps zmm31,zmm24,zmm2
  a66967:	62 f1 3c 40 5c d2    	vsubps zmm2,zmm24,zmm2
  a6696d:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0xc0]
  a66974:	03 
  a66975:	62 01 7c 48 58 c1    	vaddps zmm24,zmm0,zmm25
  a6697b:	62 01 7c 48 5c c9    	vsubps zmm25,zmm0,zmm25
  a66981:	62 22 4d 40 ac dc    	vfnmadd213ps zmm27,zmm22,zmm20
  a66987:	62 f2 7d 48 18 05 43 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff60e943]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a6698e:	e9 60 ff 
  a66991:	62 f1 7c 48 59 4c 24 	vmulps zmm1,zmm0,ZMMWORD PTR [rsp+0x100]
  a66998:	04 
  a66999:	62 f1 24 40 58 f9    	vaddps zmm7,zmm27,zmm1
  a6699f:	62 f1 24 40 5c c9    	vsubps zmm1,zmm27,zmm1
  a669a5:	62 52 15 40 ac f3    	vfnmadd213ps zmm14,zmm29,zmm11
  a669ab:	62 71 34 48 59 c8    	vmulps zmm9,zmm9,zmm0
  a669b1:	62 41 0c 48 5c d9    	vsubps zmm27,zmm14,zmm9
  a669b7:	62 51 0c 48 58 f1    	vaddps zmm14,zmm14,zmm9
  a669bd:	62 52 0d 40 ac ec    	vfnmadd213ps zmm13,zmm30,zmm12
  a669c3:	62 11 1c 48 58 ce    	vaddps zmm9,zmm12,zmm30
  a669c9:	62 52 75 40 ac fa    	vfnmadd213ps zmm15,zmm17,zmm10
  a669cf:	62 31 2c 48 58 d1    	vaddps zmm10,zmm10,zmm17
  a669d5:	62 f1 6c 40 5c ed    	vsubps zmm5,zmm18,zmm5
  a669db:	62 51 2c 40 5c c0    	vsubps zmm8,zmm26,zmm8
  a669e1:	62 71 7c 48 59 64 24 	vmulps zmm12,zmm0,ZMMWORD PTR [rsp+0x40]
  a669e8:	01 
  a669e9:	62 e1 54 40 59 c8    	vmulps zmm17,zmm21,zmm0
  a669ef:	62 61 7c 48 28 54 24 	vmovaps zmm26,ZMMWORD PTR [rsp+0x80]
  a669f6:	02 
  a669f7:	62 82 3d 40 ac da    	vfnmadd213ps zmm19,zmm24,zmm26
  a669fd:	62 f1 6c 48 59 d0    	vmulps zmm2,zmm2,zmm0
  a66a03:	62 e1 34 40 59 d0    	vmulps zmm18,zmm25,zmm0
  a66a09:	62 f1 54 48 59 e8    	vmulps zmm5,zmm5,zmm0
  a66a0f:	62 f1 3c 48 59 c0    	vmulps zmm0,zmm8,zmm0
  a66a15:	62 71 64 40 58 c2    	vaddps zmm8,zmm19,zmm2
  a66a1b:	62 22 05 40 ac e7    	vfnmadd213ps zmm28,zmm31,zmm23
  a66a21:	62 f1 64 40 5c d2    	vsubps zmm2,zmm19,zmm2
  a66a27:	62 a1 1c 40 5c da    	vsubps zmm19,zmm28,zmm18
  a66a2d:	62 a1 1c 40 58 d2    	vaddps zmm18,zmm28,zmm18
  a66a33:	62 a1 5c 40 58 e6    	vaddps zmm20,zmm20,zmm22
  a66a39:	62 11 24 48 58 dd    	vaddps zmm11,zmm11,zmm29
  a66a3f:	62 c1 14 48 5c ec    	vsubps zmm21,zmm13,zmm12
  a66a45:	62 51 14 48 58 e4    	vaddps zmm12,zmm13,zmm12
  a66a4b:	62 31 04 48 58 e9    	vaddps zmm13,zmm15,zmm17
  a66a51:	62 31 04 48 5c f9    	vsubps zmm15,zmm15,zmm17
  a66a57:	62 e1 7c 40 58 cd    	vaddps zmm17,zmm16,zmm5
  a66a5d:	62 f1 7c 40 5c ed    	vsubps zmm5,zmm16,zmm5
  a66a63:	62 e1 4c 48 5c c0    	vsubps zmm16,zmm6,zmm0
  a66a69:	62 f1 4c 48 58 c0    	vaddps zmm0,zmm6,zmm0
  a66a6f:	62 91 2c 40 58 f0    	vaddps zmm6,zmm26,zmm24
  a66a75:	62 81 44 40 58 f7    	vaddps zmm22,zmm23,zmm31
  a66a7b:	62 e1 7c 48 28 3d 3b 	vmovaps zmm23,ZMMWORD PTR [rip+0xffffffffff62d63b]        # 940c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21570>
  a66a82:	d6 62 ff 
  a66a85:	62 b2 45 40 7f f6    	vpermt2ps zmm6,zmm23,zmm22
  a66a8b:	62 92 45 40 7f fb    	vpermt2ps zmm7,zmm23,zmm27
  a66a91:	62 c2 45 40 7f ed    	vpermt2ps zmm21,zmm23,zmm13
  a66a97:	62 f2 45 40 7f dc    	vpermt2ps zmm3,zmm23,zmm4
  a66a9d:	62 32 45 40 7f c3    	vpermt2ps zmm8,zmm23,zmm19
  a66aa3:	62 d2 45 40 7f ce    	vpermt2ps zmm1,zmm23,zmm14
  a66aa9:	62 52 45 40 7f ca    	vpermt2ps zmm9,zmm23,zmm10
  a66aaf:	62 a2 45 40 7f c8    	vpermt2ps zmm17,zmm23,zmm16
  a66ab5:	62 b2 45 40 7f d2    	vpermt2ps zmm2,zmm23,zmm18
  a66abb:	62 c2 45 40 7f e3    	vpermt2ps zmm20,zmm23,zmm11
  a66ac1:	62 52 45 40 7f e7    	vpermt2ps zmm12,zmm23,zmm15
  a66ac7:	62 f2 45 40 7f e8    	vpermt2ps zmm5,zmm23,zmm0
  a66acd:	62 f1 7c 48 11 36    	vmovups ZMMWORD PTR [rsi],zmm6
  a66ad3:	62 f1 7c 48 11 7e 01 	vmovups ZMMWORD PTR [rsi+0x40],zmm7
  a66ada:	62 e1 7c 48 11 6e 02 	vmovups ZMMWORD PTR [rsi+0x80],zmm21
  a66ae1:	62 f1 7c 48 11 5e 03 	vmovups ZMMWORD PTR [rsi+0xc0],zmm3
  a66ae8:	62 71 7c 48 11 46 04 	vmovups ZMMWORD PTR [rsi+0x100],zmm8
  a66aef:	62 f1 7c 48 11 4e 05 	vmovups ZMMWORD PTR [rsi+0x140],zmm1
  a66af6:	62 71 7c 48 11 4e 06 	vmovups ZMMWORD PTR [rsi+0x180],zmm9
  a66afd:	62 e1 7c 48 11 4e 07 	vmovups ZMMWORD PTR [rsi+0x1c0],zmm17
  a66b04:	62 f1 7c 48 11 56 08 	vmovups ZMMWORD PTR [rsi+0x200],zmm2
  a66b0b:	62 e1 7c 48 11 66 09 	vmovups ZMMWORD PTR [rsi+0x240],zmm20
  a66b12:	62 71 7c 48 11 66 0a 	vmovups ZMMWORD PTR [rsi+0x280],zmm12
  a66b19:	62 f1 7c 48 11 6e 0b 	vmovups ZMMWORD PTR [rsi+0x2c0],zmm5
  a66b20:	48 89 ec             	mov    rsp,rbp
  a66b23:	5d                   	pop    rbp
  a66b24:	c5 f8 77             	vzeroupper
  a66b27:	c3                   	ret
