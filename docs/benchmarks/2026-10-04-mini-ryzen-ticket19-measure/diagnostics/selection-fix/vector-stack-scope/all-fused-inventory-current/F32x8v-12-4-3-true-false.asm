
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b12300 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  b12300:	c5 fb 10 47 10       	vmovsd xmm0,QWORD PTR [rdi+0x10]
  b12305:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  b1230b:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  b1230f:	c4 e3 7d 0c c1 c0    	vblendps ymm0,ymm0,ymm1,0xc0
  b12315:	c5 f8 10 17          	vmovups xmm2,XMMWORD PTR [rdi]
  b12319:	c5 f8 10 5f 18       	vmovups xmm3,XMMWORD PTR [rdi+0x18]
  b1231e:	c5 f8 10 67 30       	vmovups xmm4,XMMWORD PTR [rdi+0x30]
  b12323:	c5 f8 10 6f 48       	vmovups xmm5,XMMWORD PTR [rdi+0x48]
  b12328:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  b1232e:	c5 e8 c6 f0 88       	vshufps xmm6,xmm2,xmm0,0x88
  b12333:	c5 fb 10 7f 40       	vmovsd xmm7,QWORD PTR [rdi+0x40]
  b12338:	c4 e3 7d 18 ff 01    	vinsertf128 ymm7,ymm0,xmm7,0x1
  b1233e:	c4 e3 45 0c f9 c0    	vblendps ymm7,ymm7,ymm1,0xc0
  b12344:	c4 e3 7d 19 ff 01    	vextractf128 xmm7,ymm7,0x1
  b1234a:	c5 58 c6 c7 88       	vshufps xmm8,xmm4,xmm7,0x88
  b1234f:	c4 41 4c 5c c8       	vsubps ymm9,ymm6,ymm8
  b12354:	c5 7b 10 57 58       	vmovsd xmm10,QWORD PTR [rdi+0x58]
  b12359:	c4 43 7d 18 d2 01    	vinsertf128 ymm10,ymm0,xmm10,0x1
  b1235f:	c4 63 2d 0c d1 c0    	vblendps ymm10,ymm10,ymm1,0xc0
  b12365:	c4 43 7d 19 d2 01    	vextractf128 xmm10,ymm10,0x1
  b1236b:	c4 41 50 c6 da dd    	vshufps xmm11,xmm5,xmm10,0xdd
  b12371:	c5 7b 10 67 28       	vmovsd xmm12,QWORD PTR [rdi+0x28]
  b12376:	c4 43 7d 18 e4 01    	vinsertf128 ymm12,ymm0,xmm12,0x1
  b1237c:	c4 e3 1d 0c c9 c0    	vblendps ymm1,ymm12,ymm1,0xc0
  b12382:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  b12388:	c5 60 c6 e1 dd       	vshufps xmm12,xmm3,xmm1,0xdd
  b1238d:	c4 41 24 5c ec       	vsubps ymm13,ymm11,ymm12
  b12392:	c5 e8 c6 c0 dd       	vshufps xmm0,xmm2,xmm0,0xdd
  b12397:	c5 d8 c6 d7 dd       	vshufps xmm2,xmm4,xmm7,0xdd
  b1239c:	c5 fc 5c e2          	vsubps ymm4,ymm0,ymm2
  b123a0:	c5 e0 c6 c9 88       	vshufps xmm1,xmm3,xmm1,0x88
  b123a5:	c4 c1 50 c6 da 88    	vshufps xmm3,xmm5,xmm10,0x88
  b123ab:	c5 f4 5c eb          	vsubps ymm5,ymm1,ymm3
  b123af:	c5 bc 58 f6          	vaddps ymm6,ymm8,ymm6
  b123b3:	c5 f4 58 cb          	vaddps ymm1,ymm1,ymm3
  b123b7:	c5 fc 58 c2          	vaddps ymm0,ymm0,ymm2
  b123bb:	c4 c1 1c 58 d3       	vaddps ymm2,ymm12,ymm11
  b123c0:	c5 f8 58 da          	vaddps xmm3,xmm0,xmm2
  b123c4:	c5 d8 58 fd          	vaddps xmm7,xmm4,xmm5
  b123c8:	c5 f8 5c c2          	vsubps xmm0,xmm0,xmm2
  b123cc:	c5 d8 5c d5          	vsubps xmm2,xmm4,xmm5
  b123d0:	c5 e5 15 e0          	vunpckhpd ymm4,ymm3,ymm0
  b123d4:	c5 e5 14 c0          	vunpcklpd ymm0,ymm3,ymm0
  b123d8:	c5 c5 15 da          	vunpckhpd ymm3,ymm7,ymm2
  b123dc:	c5 dc c6 db 88       	vshufps ymm3,ymm4,ymm3,0x88
  b123e1:	c5 c5 14 d2          	vunpcklpd ymm2,ymm7,ymm2
  b123e5:	c5 fc c6 e2 88       	vshufps ymm4,ymm0,ymm2,0x88
  b123ea:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  b123ef:	c5 fc c6 c2 dd       	vshufps ymm0,ymm0,ymm2,0xdd
  b123f4:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  b123f9:	c5 e4 c6 d3 d8       	vshufps ymm2,ymm3,ymm3,0xd8
  b123fe:	c5 c8 58 d9          	vaddps xmm3,xmm6,xmm1
  b12402:	c4 c1 10 58 e9       	vaddps xmm5,xmm13,xmm9
  b12407:	c5 c8 5c c9          	vsubps xmm1,xmm6,xmm1
  b1240b:	c4 c1 30 5c f5       	vsubps xmm6,xmm9,xmm13
  b12410:	c5 e5 15 f9          	vunpckhpd ymm7,ymm3,ymm1
  b12414:	c5 e5 14 c9          	vunpcklpd ymm1,ymm3,ymm1
  b12418:	c5 d5 15 de          	vunpckhpd ymm3,ymm5,ymm6
  b1241c:	c5 c4 c6 db 88       	vshufps ymm3,ymm7,ymm3,0x88
  b12421:	c5 d5 14 ee          	vunpcklpd ymm5,ymm5,ymm6
  b12425:	c5 f4 c6 f5 88       	vshufps ymm6,ymm1,ymm5,0x88
  b1242a:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  b1242f:	c5 f4 c6 cd dd       	vshufps ymm1,ymm1,ymm5,0xdd
  b12434:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  b12439:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  b1243e:	c5 fc 10 6a 40       	vmovups ymm5,YMMWORD PTR [rdx+0x40]
  b12443:	c5 fc 10 7a 60       	vmovups ymm7,YMMWORD PTR [rdx+0x60]
  b12448:	c5 7c 10 82 80 00 00 	vmovups ymm8,YMMWORD PTR [rdx+0x80]
  b1244f:	00 
  b12450:	c5 7c 10 8a a0 00 00 	vmovups ymm9,YMMWORD PTR [rdx+0xa0]
  b12457:	00 
  b12458:	c5 7c 59 d5          	vmulps ymm10,ymm0,ymm5
  b1245c:	c4 62 75 bc d7       	vfnmadd231ps ymm10,ymm1,ymm7
  b12461:	c5 3c 59 da          	vmulps ymm11,ymm8,ymm2
  b12465:	c4 42 65 bc d9       	vfnmadd231ps ymm11,ymm3,ymm9
  b1246a:	c4 41 2c 58 e3       	vaddps ymm12,ymm10,ymm11
  b1246f:	c5 f4 59 cd          	vmulps ymm1,ymm1,ymm5
  b12473:	c4 e2 7d b8 cf       	vfmadd231ps ymm1,ymm0,ymm7
  b12478:	c5 bc 59 c3          	vmulps ymm0,ymm8,ymm3
  b1247c:	c4 c2 6d b8 c1       	vfmadd231ps ymm0,ymm2,ymm9
  b12481:	c5 f4 58 d0          	vaddps ymm2,ymm1,ymm0
  b12485:	c4 e2 7d 18 1d d2 2f 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff562fd2]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  b1248c:	56 ff 
  b1248e:	c5 fc 28 eb          	vmovaps ymm5,ymm3
  b12492:	c4 e2 1d ac ec       	vfnmadd213ps ymm5,ymm12,ymm4
  b12497:	c5 f4 5c c0          	vsubps ymm0,ymm1,ymm0
  b1249b:	c4 e2 7d 18 0d 30 2e 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff562e30]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  b124a2:	56 ff 
  b124a4:	c5 fc 59 c1          	vmulps ymm0,ymm0,ymm1
  b124a8:	c5 d4 58 f8          	vaddps ymm7,ymm5,ymm0
  b124ac:	c4 e2 6d ac de       	vfnmadd213ps ymm3,ymm2,ymm6
  b124b1:	c4 41 2c 5c c3       	vsubps ymm8,ymm10,ymm11
  b124b6:	c5 bc 59 c9          	vmulps ymm1,ymm8,ymm1
  b124ba:	c5 d4 5c c0          	vsubps ymm0,ymm5,ymm0
  b124be:	c5 9c 58 e4          	vaddps ymm4,ymm12,ymm4
  b124c2:	c5 c8 58 d2          	vaddps xmm2,xmm6,xmm2
  b124c6:	c5 fc 28 2d 12 4d 56 	vmovaps ymm5,YMMWORD PTR [rip+0xffffffffff564d12]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  b124cd:	ff 
  b124ce:	62 f2 55 28 7f d4    	vpermt2ps ymm2,ymm5,ymm4
  b124d4:	c5 fc 11 16          	vmovups YMMWORD PTR [rsi],ymm2
  b124d8:	c5 e0 5c d1          	vsubps xmm2,xmm3,xmm1
  b124dc:	62 f2 55 28 7f d7    	vpermt2ps ymm2,ymm5,ymm7
  b124e2:	c5 fc 11 56 20       	vmovups YMMWORD PTR [rsi+0x20],ymm2
  b124e7:	c5 e0 58 c9          	vaddps xmm1,xmm3,xmm1
  b124eb:	62 f2 55 28 7f c8    	vpermt2ps ymm1,ymm5,ymm0
  b124f1:	c5 fc 11 4e 40       	vmovups YMMWORD PTR [rsi+0x40],ymm1
  b124f6:	c5 f8 77             	vzeroupper
  b124f9:	c3                   	ret
