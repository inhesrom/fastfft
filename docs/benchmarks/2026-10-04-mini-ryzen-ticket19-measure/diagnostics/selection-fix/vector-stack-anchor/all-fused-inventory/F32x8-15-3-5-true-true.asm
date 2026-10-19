
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000006b7140 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  6b7140:	48 6b c2 78          	imul   rax,rdx,0x78
  6b7144:	31 d2                	xor    edx,edx
  6b7146:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  6b714d:	00 00 00 
  6b7150:	c5 fc 10 04 17       	vmovups ymm0,YMMWORD PTR [rdi+rdx*1]
  6b7155:	c5 fb 10 4c 17 20    	vmovsd xmm1,QWORD PTR [rdi+rdx*1+0x20]
  6b715b:	c5 fc 10 64 17 28    	vmovups ymm4,YMMWORD PTR [rdi+rdx*1+0x28]
  6b7161:	c5 fb 10 6c 17 48    	vmovsd xmm5,QWORD PTR [rdi+rdx*1+0x48]
  6b7167:	c5 fc 10 7c 17 50    	vmovups ymm7,YMMWORD PTR [rdi+rdx*1+0x50]
  6b716d:	c5 7b 10 44 17 70    	vmovsd xmm8,QWORD PTR [rdi+rdx*1+0x70]
  6b7173:	c5 7c c6 c9 dd       	vshufps ymm9,ymm0,ymm1,0xdd
  6b7178:	c4 43 fd 01 c9 d8    	vpermpd ymm9,ymm9,0xd8
  6b717e:	c5 5c c6 d5 dd       	vshufps ymm10,ymm4,ymm5,0xdd
  6b7183:	c4 43 fd 01 d2 d8    	vpermpd ymm10,ymm10,0xd8
  6b7189:	c4 41 44 c6 d8 dd    	vshufps ymm11,ymm7,ymm8,0xdd
  6b718f:	c4 43 fd 01 db d8    	vpermpd ymm11,ymm11,0xd8
  6b7195:	c5 fc c6 c1 88       	vshufps ymm0,ymm0,ymm1,0x88
  6b719a:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  6b71a0:	c5 dc c6 cd 88       	vshufps ymm1,ymm4,ymm5,0x88
  6b71a5:	c4 e3 fd 01 c9 d8    	vpermpd ymm1,ymm1,0xd8
  6b71ab:	c4 c1 44 c6 e0 88    	vshufps ymm4,ymm7,ymm8,0x88
  6b71b1:	c4 e3 fd 01 e4 d8    	vpermpd ymm4,ymm4,0xd8
  6b71b7:	c4 c1 2c 58 eb       	vaddps ymm5,ymm10,ymm11
  6b71bc:	c5 b4 58 fd          	vaddps ymm7,ymm9,ymm5
  6b71c0:	c5 74 58 c4          	vaddps ymm8,ymm1,ymm4
  6b71c4:	c5 3c 58 e8          	vaddps ymm13,ymm8,ymm0
  6b71c8:	c4 e2 7d 18 15 8f e2 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff9be28f]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6b71cf:	9b ff 
  6b71d1:	c4 c2 6d ac e9       	vfnmadd213ps ymm5,ymm2,ymm9
  6b71d6:	c5 f4 5c cc          	vsubps ymm1,ymm1,ymm4
  6b71da:	c4 e2 7d 18 1d f1 e0 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff9be0f1]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6b71e1:	9b ff 
  6b71e3:	c5 f4 59 cb          	vmulps ymm1,ymm1,ymm3
  6b71e7:	c5 d4 58 e1          	vaddps ymm4,ymm5,ymm1
  6b71eb:	c4 62 6d ac c0       	vfnmadd213ps ymm8,ymm2,ymm0
  6b71f0:	c4 c1 2c 5c c3       	vsubps ymm0,ymm10,ymm11
  6b71f5:	c5 fc 59 c3          	vmulps ymm0,ymm0,ymm3
  6b71f9:	c5 3c 5c e0          	vsubps ymm12,ymm8,ymm0
  6b71fd:	c5 d4 5c c9          	vsubps ymm1,ymm5,ymm1
  6b7201:	c5 bc 58 c0          	vaddps ymm0,ymm8,ymm0
  6b7205:	c5 f8 28 ef          	vmovaps xmm5,xmm7
  6b7209:	c4 e3 7d 19 ff 01    	vextractf128 xmm7,ymm7,0x1
  6b720f:	c5 78 28 c4          	vmovaps xmm8,xmm4
  6b7213:	c4 c3 7d 19 e1 01    	vextractf128 xmm9,ymm4,0x1
  6b7219:	c5 78 28 d1          	vmovaps xmm10,xmm1
  6b721d:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  6b7223:	c5 c5 14 c9          	vunpcklpd ymm1,ymm7,ymm1
  6b7227:	c4 41 55 15 f2       	vunpckhpd ymm14,ymm5,ymm10
  6b722c:	c4 c1 55 14 ea       	vunpcklpd ymm5,ymm5,ymm10
  6b7231:	c5 fa 7e e4          	vmovq  xmm4,xmm4
  6b7235:	c4 c1 3d 73 d8 08    	vpsrldq ymm8,ymm8,0x8
  6b723b:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  6b723f:	c4 e3 35 0c fa cc    	vblendps ymm7,ymm9,ymm2,0xcc
  6b7245:	c5 f4 c6 cf 88       	vshufps ymm1,ymm1,ymm7,0x88
  6b724a:	c5 d4 c6 fc 88       	vshufps ymm7,ymm5,ymm4,0x88
  6b724f:	c5 d4 c6 e4 dd       	vshufps ymm4,ymm5,ymm4,0xdd
  6b7254:	c5 5c c6 dc d8       	vshufps ymm11,ymm4,ymm4,0xd8
  6b7259:	c4 c1 0c c6 e0 88    	vshufps ymm4,ymm14,ymm8,0x88
  6b725f:	c5 5c c6 cc d8       	vshufps ymm9,ymm4,ymm4,0xd8
  6b7264:	c4 c1 0c c6 e0 dd    	vshufps ymm4,ymm14,ymm8,0xdd
  6b726a:	c5 5c c6 c4 d8       	vshufps ymm8,ymm4,ymm4,0xd8
  6b726f:	c5 74 c6 d1 d8       	vshufps ymm10,ymm1,ymm1,0xd8
  6b7274:	c5 78 29 e9          	vmovaps xmm1,xmm13
  6b7278:	c4 63 7d 19 ec 01    	vextractf128 xmm4,ymm13,0x1
  6b727e:	c5 78 29 e5          	vmovaps xmm5,xmm12
  6b7282:	c4 43 7d 19 e5 01    	vextractf128 xmm13,ymm12,0x1
  6b7288:	c5 78 28 f0          	vmovaps xmm14,xmm0
  6b728c:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  6b7292:	c5 dd 14 c0          	vunpcklpd ymm0,ymm4,ymm0
  6b7296:	c4 c1 75 15 e6       	vunpckhpd ymm4,ymm1,ymm14
  6b729b:	c4 c1 75 14 ce       	vunpcklpd ymm1,ymm1,ymm14
  6b72a0:	c4 41 7a 7e e4       	vmovq  xmm12,xmm12
  6b72a5:	c5 d5 73 dd 08       	vpsrldq ymm5,ymm5,0x8
  6b72aa:	c4 63 15 0c ea cc    	vblendps ymm13,ymm13,ymm2,0xcc
  6b72b0:	c4 41 7c c6 f5 88    	vshufps ymm14,ymm0,ymm13,0x88
  6b72b6:	c4 41 74 c6 ec 88    	vshufps ymm13,ymm1,ymm12,0x88
  6b72bc:	c4 c1 74 c6 c4 dd    	vshufps ymm0,ymm1,ymm12,0xdd
  6b72c2:	c5 7c c6 f8 d8       	vshufps ymm15,ymm0,ymm0,0xd8
  6b72c7:	c5 dc c6 c5 88       	vshufps ymm0,ymm4,ymm5,0x88
  6b72cc:	c5 fc c6 c8 d8       	vshufps ymm1,ymm0,ymm0,0xd8
  6b72d1:	c5 dc c6 c5 dd       	vshufps ymm0,ymm4,ymm5,0xdd
  6b72d6:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  6b72db:	c4 41 0c c6 f6 d8    	vshufps ymm14,ymm14,ymm14,0xd8
  6b72e1:	c5 fc 10 61 40       	vmovups ymm4,YMMWORD PTR [rcx+0x40]
  6b72e6:	c5 fc 10 59 60       	vmovups ymm3,YMMWORD PTR [rcx+0x60]
  6b72eb:	c5 24 59 e4          	vmulps ymm12,ymm11,ymm4
  6b72ef:	c4 62 05 bc e3       	vfnmadd231ps ymm12,ymm15,ymm3
  6b72f4:	c5 84 59 ec          	vmulps ymm5,ymm15,ymm4
  6b72f8:	c5 7c 10 b9 00 01 00 	vmovups ymm15,YMMWORD PTR [rcx+0x100]
  6b72ff:	00 
  6b7300:	c4 e2 25 b8 eb       	vfmadd231ps ymm5,ymm11,ymm3
  6b7305:	c5 fc 10 99 20 01 00 	vmovups ymm3,YMMWORD PTR [rcx+0x120]
  6b730c:	00 
  6b730d:	c4 c1 04 59 e2       	vmulps ymm4,ymm15,ymm10
  6b7312:	c4 e2 0d bc e3       	vfnmadd231ps ymm4,ymm14,ymm3
  6b7317:	c4 c1 04 59 f6       	vmulps ymm6,ymm15,ymm14
  6b731c:	c5 7c 10 99 80 00 00 	vmovups ymm11,YMMWORD PTR [rcx+0x80]
  6b7323:	00 
  6b7324:	c4 e2 2d b8 f3       	vfmadd231ps ymm6,ymm10,ymm3
  6b7329:	c5 fc 10 99 a0 00 00 	vmovups ymm3,YMMWORD PTR [rcx+0xa0]
  6b7330:	00 
  6b7331:	c4 41 24 59 d1       	vmulps ymm10,ymm11,ymm9
  6b7336:	c4 62 75 bc d3       	vfnmadd231ps ymm10,ymm1,ymm3
  6b733b:	c5 a4 59 c9          	vmulps ymm1,ymm11,ymm1
  6b733f:	c5 7c 10 99 c0 00 00 	vmovups ymm11,YMMWORD PTR [rcx+0xc0]
  6b7346:	00 
  6b7347:	c4 e2 35 b8 cb       	vfmadd231ps ymm1,ymm9,ymm3
  6b734c:	c5 fc 10 99 e0 00 00 	vmovups ymm3,YMMWORD PTR [rcx+0xe0]
  6b7353:	00 
  6b7354:	c4 c1 24 59 d0       	vmulps ymm2,ymm11,ymm8
  6b7359:	c4 e2 7d bc d3       	vfnmadd231ps ymm2,ymm0,ymm3
  6b735e:	c5 a4 59 c0          	vmulps ymm0,ymm11,ymm0
  6b7362:	c5 44 c6 f7 d8       	vshufps ymm14,ymm7,ymm7,0xd8
  6b7367:	c4 41 14 c6 cd d8    	vshufps ymm9,ymm13,ymm13,0xd8
  6b736d:	c4 e2 3d b8 c3       	vfmadd231ps ymm0,ymm8,ymm3
  6b7372:	c5 1c 58 fc          	vaddps ymm15,ymm12,ymm4
  6b7376:	c5 54 58 de          	vaddps ymm11,ymm5,ymm6
  6b737a:	c5 d4 5c de          	vsubps ymm3,ymm5,ymm6
  6b737e:	c5 74 58 e8          	vaddps ymm13,ymm1,ymm0
  6b7382:	c5 f4 5c c0          	vsubps ymm0,ymm1,ymm0
  6b7386:	c5 ac 58 ca          	vaddps ymm1,ymm10,ymm2
  6b738a:	c5 9c 5c e4          	vsubps ymm4,ymm12,ymm4
  6b738e:	c4 e2 7d 18 3d 51 e3 	vbroadcastss ymm7,DWORD PTR [rip+0xffffffffff9be351]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  6b7395:	9b ff 
  6b7397:	c4 c2 05 a8 fe       	vfmadd213ps ymm7,ymm15,ymm14
  6b739c:	c4 e2 7d 18 35 9f e2 	vbroadcastss ymm6,DWORD PTR [rip+0xffffffffff9be29f]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  6b73a3:	9b ff 
  6b73a5:	c4 e2 75 bc fe       	vfnmadd231ps ymm7,ymm1,ymm6
  6b73aa:	c5 ac 5c d2          	vsubps ymm2,ymm10,ymm2
  6b73ae:	c4 e2 7d 18 2d a1 e3 	vbroadcastss ymm5,DWORD PTR [rip+0xffffffffff9be3a1]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  6b73b5:	9b ff 
  6b73b7:	c5 7c 59 c5          	vmulps ymm8,ymm0,ymm5
  6b73bb:	c4 e2 7d 18 35 dc df 	vbroadcastss ymm6,DWORD PTR [rip+0xffffffffff9bdfdc]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  6b73c2:	9b ff 
  6b73c4:	c4 62 65 b8 c6       	vfmadd231ps ymm8,ymm3,ymm6
  6b73c9:	c5 64 59 e5          	vmulps ymm12,ymm3,ymm5
  6b73cd:	c4 62 4d bc e0       	vfnmadd231ps ymm12,ymm6,ymm0
  6b73d2:	c5 6c 59 d5          	vmulps ymm10,ymm2,ymm5
  6b73d6:	c4 62 5d b8 d6       	vfmadd231ps ymm10,ymm4,ymm6
  6b73db:	c5 dc 59 c5          	vmulps ymm0,ymm4,ymm5
  6b73df:	c4 e2 4d bc c2       	vfnmadd231ps ymm0,ymm6,ymm2
  6b73e4:	c4 e2 7d 18 35 57 e2 	vbroadcastss ymm6,DWORD PTR [rip+0xffffffffff9be257]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  6b73eb:	9b ff 
  6b73ed:	c5 fc 28 e6          	vmovaps ymm4,ymm6
  6b73f1:	c4 c2 05 ac e6       	vfnmadd213ps ymm4,ymm15,ymm14
  6b73f6:	c4 c1 00 58 d6       	vaddps xmm2,xmm15,xmm14
  6b73fb:	c4 e2 7d 18 1d e4 e2 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff9be2e4]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  6b7402:	9b ff 
  6b7404:	c5 7c 28 f3          	vmovaps ymm14,ymm3
  6b7408:	c4 42 25 a8 f1       	vfmadd213ps ymm14,ymm11,ymm9
  6b740d:	c4 e2 75 b8 e3       	vfmadd231ps ymm4,ymm1,ymm3
  6b7412:	c5 fc 28 eb          	vmovaps ymm5,ymm3
  6b7416:	c5 e8 58 d1          	vaddps xmm2,xmm2,xmm1
  6b741a:	c5 fc 28 ce          	vmovaps ymm1,ymm6
  6b741e:	c4 c2 25 ac c9       	vfnmadd213ps ymm1,ymm11,ymm9
  6b7423:	c4 c1 20 58 d9       	vaddps xmm3,xmm11,xmm9
  6b7428:	c4 62 15 bc f6       	vfnmadd231ps ymm14,ymm13,ymm6
  6b742d:	c4 e2 15 b8 cd       	vfmadd231ps ymm1,ymm13,ymm5
  6b7432:	c5 90 58 db          	vaddps xmm3,xmm13,xmm3
  6b7436:	c5 e0 14 ea          	vunpcklps xmm5,xmm3,xmm2
  6b743a:	c5 e0 15 d2          	vunpckhps xmm2,xmm3,xmm2
  6b743e:	c5 f8 13 54 16 10    	vmovlps QWORD PTR [rsi+rdx*1+0x10],xmm2
  6b7444:	c5 f8 11 2c 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm5
  6b7449:	c5 b8 58 d7          	vaddps xmm2,xmm8,xmm7
  6b744d:	c4 c1 08 5c da       	vsubps xmm3,xmm14,xmm10
  6b7452:	c5 e0 15 ea          	vunpckhps xmm5,xmm3,xmm2
  6b7456:	c5 e0 14 d2          	vunpcklps xmm2,xmm3,xmm2
  6b745a:	c5 f8 11 54 16 18    	vmovups XMMWORD PTR [rsi+rdx*1+0x18],xmm2
  6b7460:	c5 f8 13 6c 16 28    	vmovlps QWORD PTR [rsi+rdx*1+0x28],xmm5
  6b7466:	c5 98 58 d4          	vaddps xmm2,xmm12,xmm4
  6b746a:	c5 f0 5c d8          	vsubps xmm3,xmm1,xmm0
  6b746e:	c5 e0 15 ea          	vunpckhps xmm5,xmm3,xmm2
  6b7472:	c5 e0 14 d2          	vunpcklps xmm2,xmm3,xmm2
  6b7476:	c5 f8 11 54 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm2
  6b747c:	c5 f8 13 6c 16 40    	vmovlps QWORD PTR [rsi+rdx*1+0x40],xmm5
  6b7482:	c4 c1 58 5c d4       	vsubps xmm2,xmm4,xmm12
  6b7487:	c5 f0 58 c0          	vaddps xmm0,xmm1,xmm0
  6b748b:	c5 f8 15 ca          	vunpckhps xmm1,xmm0,xmm2
  6b748f:	c5 f8 14 c2          	vunpcklps xmm0,xmm0,xmm2
  6b7493:	c5 f8 11 44 16 48    	vmovups XMMWORD PTR [rsi+rdx*1+0x48],xmm0
  6b7499:	c5 f8 13 4c 16 58    	vmovlps QWORD PTR [rsi+rdx*1+0x58],xmm1
  6b749f:	c4 c1 40 5c c0       	vsubps xmm0,xmm7,xmm8
  6b74a4:	c4 c1 08 58 ca       	vaddps xmm1,xmm14,xmm10
  6b74a9:	c5 f0 15 d0          	vunpckhps xmm2,xmm1,xmm0
  6b74ad:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  6b74b1:	c5 f8 11 44 16 60    	vmovups XMMWORD PTR [rsi+rdx*1+0x60],xmm0
  6b74b7:	c5 f8 13 54 16 70    	vmovlps QWORD PTR [rsi+rdx*1+0x70],xmm2
  6b74bd:	48 83 c2 78          	add    rdx,0x78
  6b74c1:	48 39 d0             	cmp    rax,rdx
  6b74c4:	0f 85 86 fc ff ff    	jne    6b7150 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle+0x10>
  6b74ca:	c5 f8 77             	vzeroupper
  6b74cd:	c3                   	ret
