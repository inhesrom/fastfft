
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b74140 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle>:
  b74140:	48 c1 e2 06          	shl    rdx,0x6
  b74144:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  b74148:	31 d2                	xor    edx,edx
  b7414a:	c4 e2 7d 19 05 45 09 	vbroadcastsd ymm0,QWORD PTR [rip+0xffffffffff500945]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  b74151:	50 ff 
  b74153:	c4 e2 7d 19 0d c4 0a 	vbroadcastsd ymm1,QWORD PTR [rip+0xffffffffff500ac4]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  b7415a:	50 ff 
  b7415c:	c5 fd 28 15 dc 34 50 	vmovapd ymm2,YMMWORD PTR [rip+0xffffffffff5034dc]        # 77640 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4af0>
  b74163:	ff 
  b74164:	c5 fd 28 1d f4 29 50 	vmovapd ymm3,YMMWORD PTR [rip+0xffffffffff5029f4]        # 76b60 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4010>
  b7416b:	ff 
  b7416c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  b74170:	c5 fd 10 24 17       	vmovupd ymm4,YMMWORD PTR [rdi+rdx*1]
  b74175:	c5 f9 10 6c 17 20    	vmovupd xmm5,XMMWORD PTR [rdi+rdx*1+0x20]
  b7417b:	c4 e3 5d 06 e5 20    	vperm2f128 ymm4,ymm4,ymm5,0x20
  b74181:	c5 f9 10 6c 17 10    	vmovupd xmm5,XMMWORD PTR [rdi+rdx*1+0x10]
  b74187:	c5 dd 14 f5          	vunpcklpd ymm6,ymm4,ymm5
  b7418b:	c5 dd 15 e5          	vunpckhpd ymm4,ymm4,ymm5
  b7418f:	c5 fd 10 6c 17 30    	vmovupd ymm5,YMMWORD PTR [rdi+rdx*1+0x30]
  b74195:	c5 f9 10 7c 17 50    	vmovupd xmm7,XMMWORD PTR [rdi+rdx*1+0x50]
  b7419b:	c4 e3 55 06 ef 20    	vperm2f128 ymm5,ymm5,ymm7,0x20
  b741a1:	c5 f9 10 7c 17 40    	vmovupd xmm7,XMMWORD PTR [rdi+rdx*1+0x40]
  b741a7:	c5 55 14 c7          	vunpcklpd ymm8,ymm5,ymm7
  b741ab:	c5 d5 15 ef          	vunpckhpd ymm5,ymm5,ymm7
  b741af:	c5 fd 10 7c 17 60    	vmovupd ymm7,YMMWORD PTR [rdi+rdx*1+0x60]
  b741b5:	c5 79 10 8c 17 80 00 	vmovupd xmm9,XMMWORD PTR [rdi+rdx*1+0x80]
  b741bc:	00 00 
  b741be:	c4 c3 45 06 f9 20    	vperm2f128 ymm7,ymm7,ymm9,0x20
  b741c4:	c5 79 10 4c 17 70    	vmovupd xmm9,XMMWORD PTR [rdi+rdx*1+0x70]
  b741ca:	c4 41 45 14 d1       	vunpcklpd ymm10,ymm7,ymm9
  b741cf:	c4 c1 45 15 f9       	vunpckhpd ymm7,ymm7,ymm9
  b741d4:	c5 7d 10 8c 17 90 00 	vmovupd ymm9,YMMWORD PTR [rdi+rdx*1+0x90]
  b741db:	00 00 
  b741dd:	c5 79 10 9c 17 b0 00 	vmovupd xmm11,XMMWORD PTR [rdi+rdx*1+0xb0]
  b741e4:	00 00 
  b741e6:	c4 43 35 06 cb 20    	vperm2f128 ymm9,ymm9,ymm11,0x20
  b741ec:	c5 79 10 9c 17 a0 00 	vmovupd xmm11,XMMWORD PTR [rdi+rdx*1+0xa0]
  b741f3:	00 00 
  b741f5:	c4 41 35 14 e3       	vunpcklpd ymm12,ymm9,ymm11
  b741fa:	c4 41 35 15 cb       	vunpckhpd ymm9,ymm9,ymm11
  b741ff:	c5 2d 58 de          	vaddpd ymm11,ymm10,ymm6
  b74203:	c4 41 3d 58 ec       	vaddpd ymm13,ymm8,ymm12
  b74208:	c4 41 25 58 f5       	vaddpd ymm14,ymm11,ymm13
  b7420d:	c5 5d 58 ff          	vaddpd ymm15,ymm4,ymm7
  b74211:	62 c1 d5 28 58 c1    	vaddpd ymm16,ymm5,ymm9
  b74217:	62 a1 85 28 58 c8    	vaddpd ymm17,ymm15,ymm16
  b7421d:	c4 c1 4d 5c f2       	vsubpd ymm6,ymm6,ymm10
  b74222:	c4 c1 55 5c e9       	vsubpd ymm5,ymm5,ymm9
  b74227:	c5 4d 58 cd          	vaddpd ymm9,ymm6,ymm5
  b7422b:	c5 dd 5c e7          	vsubpd ymm4,ymm4,ymm7
  b7422f:	c4 c1 1d 5c f8       	vsubpd ymm7,ymm12,ymm8
  b74234:	c5 45 58 c4          	vaddpd ymm8,ymm7,ymm4
  b74238:	c4 41 25 5c d5       	vsubpd ymm10,ymm11,ymm13
  b7423d:	62 31 85 28 5c d8    	vsubpd ymm11,ymm15,ymm16
  b74243:	c5 cd 5c ed          	vsubpd ymm5,ymm6,ymm5
  b74247:	c5 dd 5c e7          	vsubpd ymm4,ymm4,ymm7
  b7424b:	c4 c3 0d 18 f2 01    	vinsertf128 ymm6,ymm14,xmm10,0x1
  b74251:	c4 c3 0d 06 fa 31    	vperm2f128 ymm7,ymm14,ymm10,0x31
  b74257:	c4 63 35 18 d5 01    	vinsertf128 ymm10,ymm9,xmm5,0x1
  b7425d:	c4 e3 35 06 ed 31    	vperm2f128 ymm5,ymm9,ymm5,0x31
  b74263:	c5 c5 14 ed          	vunpcklpd ymm5,ymm7,ymm5
  b74267:	c4 c1 4d 14 fa       	vunpcklpd ymm7,ymm6,ymm10
  b7426c:	c4 c1 4d 15 f2       	vunpckhpd ymm6,ymm6,ymm10
  b74271:	62 53 75 20 18 cb 01 	vinsertf32x4 ymm9,ymm17,xmm11,0x1
  b74278:	62 53 f5 20 23 d3 03 	vshuff64x2 ymm10,ymm17,ymm11,0x3
  b7427f:	c4 63 3d 18 dc 01    	vinsertf128 ymm11,ymm8,xmm4,0x1
  b74285:	c4 e3 3d 06 e4 31    	vperm2f128 ymm4,ymm8,ymm4,0x31
  b7428b:	c5 ad 14 e4          	vunpcklpd ymm4,ymm10,ymm4
  b7428f:	c4 41 35 14 c3       	vunpcklpd ymm8,ymm9,ymm11
  b74294:	c4 41 35 15 cb       	vunpckhpd ymm9,ymm9,ymm11
  b74299:	c5 7d 10 51 40       	vmovupd ymm10,YMMWORD PTR [rcx+0x40]
  b7429e:	c5 7d 10 59 60       	vmovupd ymm11,YMMWORD PTR [rcx+0x60]
  b742a3:	c5 7d 10 a1 80 00 00 	vmovupd ymm12,YMMWORD PTR [rcx+0x80]
  b742aa:	00 
  b742ab:	c5 7d 10 a9 a0 00 00 	vmovupd ymm13,YMMWORD PTR [rcx+0xa0]
  b742b2:	00 
  b742b3:	c4 41 35 59 f2       	vmulpd ymm14,ymm9,ymm10
  b742b8:	c4 42 cd b8 f3       	vfmadd231pd ymm14,ymm6,ymm11
  b742bd:	c5 1d 59 fc          	vmulpd ymm15,ymm12,ymm4
  b742c1:	c4 42 d5 b8 fd       	vfmadd231pd ymm15,ymm5,ymm13
  b742c6:	62 c1 8d 28 58 c7    	vaddpd ymm16,ymm14,ymm15
  b742cc:	62 e1 fd 28 28 c8    	vmovapd ymm17,ymm0
  b742d2:	62 c2 fd 20 ac c8    	vfnmadd213pd ymm17,ymm16,ymm8
  b742d8:	c5 ad 59 f6          	vmulpd ymm6,ymm10,ymm6
  b742dc:	c4 c2 b5 bc f3       	vfnmadd231pd ymm6,ymm9,ymm11
  b742e1:	c5 9d 59 ed          	vmulpd ymm5,ymm12,ymm5
  b742e5:	c4 c2 dd bc ed       	vfnmadd231pd ymm5,ymm4,ymm13
  b742ea:	c5 cd 5c e5          	vsubpd ymm4,ymm6,ymm5
  b742ee:	c5 dd 59 e1          	vmulpd ymm4,ymm4,ymm1
  b742f2:	62 71 f5 20 58 cc    	vaddpd ymm9,ymm17,ymm4
  b742f8:	c5 cd 58 ed          	vaddpd ymm5,ymm6,ymm5
  b742fc:	c5 fd 28 f0          	vmovapd ymm6,ymm0
  b74300:	c4 e2 d5 ac f7       	vfnmadd213pd ymm6,ymm5,ymm7
  b74305:	c4 41 0d 5c d7       	vsubpd ymm10,ymm14,ymm15
  b7430a:	c5 2d 59 d1          	vmulpd ymm10,ymm10,ymm1
  b7430e:	c4 41 4d 5c da       	vsubpd ymm11,ymm6,ymm10
  b74313:	62 f1 f5 20 5c e4    	vsubpd ymm4,ymm17,ymm4
  b74319:	c5 ad 58 f6          	vaddpd ymm6,ymm10,ymm6
  b7431d:	62 31 bd 28 58 c0    	vaddpd ymm8,ymm8,ymm16
  b74323:	c5 c5 58 ed          	vaddpd ymm5,ymm7,ymm5
  b74327:	c5 fd 28 fd          	vmovapd ymm7,ymm5
  b7432b:	62 d2 ed 28 7f f8    	vpermt2pd ymm7,ymm2,ymm8
  b74331:	62 d2 e5 28 7f e8    	vpermt2pd ymm5,ymm3,ymm8
  b74337:	c5 fd 11 2c 16       	vmovupd YMMWORD PTR [rsi+rdx*1],ymm5
  b7433c:	c5 fd 11 7c 16 20    	vmovupd YMMWORD PTR [rsi+rdx*1+0x20],ymm7
  b74342:	c5 fd 28 ee          	vmovapd ymm5,ymm6
  b74346:	62 f2 ed 28 7f ec    	vpermt2pd ymm5,ymm2,ymm4
  b7434c:	62 f2 e5 28 7f f4    	vpermt2pd ymm6,ymm3,ymm4
  b74352:	c5 fd 11 74 16 40    	vmovupd YMMWORD PTR [rsi+rdx*1+0x40],ymm6
  b74358:	c5 fd 11 6c 16 60    	vmovupd YMMWORD PTR [rsi+rdx*1+0x60],ymm5
  b7435e:	c5 7d 29 dc          	vmovapd ymm4,ymm11
  b74362:	62 d2 ed 28 7f e1    	vpermt2pd ymm4,ymm2,ymm9
  b74368:	62 52 e5 28 7f d9    	vpermt2pd ymm11,ymm3,ymm9
  b7436e:	c5 7d 11 9c 16 80 00 	vmovupd YMMWORD PTR [rsi+rdx*1+0x80],ymm11
  b74375:	00 00 
  b74377:	c5 fd 11 a4 16 a0 00 	vmovupd YMMWORD PTR [rsi+rdx*1+0xa0],ymm4
  b7437e:	00 00 
  b74380:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  b74387:	48 39 d0             	cmp    rax,rdx
  b7438a:	0f 85 e0 fd ff ff    	jne    b74170 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x30>
  b74390:	c5 f8 77             	vzeroupper
  b74393:	c3                   	ret
