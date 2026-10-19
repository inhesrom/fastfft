
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000006c8140 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  6c8140:	48 6b c2 78          	imul   rax,rdx,0x78
  6c8144:	31 d2                	xor    edx,edx
  6c8146:	c4 e2 7d 18 25 51 d2 	vbroadcastss ymm4,DWORD PTR [rip+0xffffffffff9ad251]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  6c814d:	9a ff 
  6c814f:	90                   	nop
  6c8150:	c5 fb 10 7c 17 10    	vmovsd xmm7,QWORD PTR [rdi+rdx*1+0x10]
  6c8156:	c4 e3 7d 18 ff 01    	vinsertf128 ymm7,ymm0,xmm7,0x1
  6c815c:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  6c8160:	c4 63 45 0c c8 c0    	vblendps ymm9,ymm7,ymm0,0xc0
  6c8166:	c5 fb 10 7c 17 28    	vmovsd xmm7,QWORD PTR [rdi+rdx*1+0x28]
  6c816c:	c4 e3 7d 18 ff 01    	vinsertf128 ymm7,ymm0,xmm7,0x1
  6c8172:	c4 63 45 0c d8 c0    	vblendps ymm11,ymm7,ymm0,0xc0
  6c8178:	c5 fb 10 7c 17 40    	vmovsd xmm7,QWORD PTR [rdi+rdx*1+0x40]
  6c817e:	c4 e3 7d 18 ff 01    	vinsertf128 ymm7,ymm0,xmm7,0x1
  6c8184:	c4 63 45 0c e0 c0    	vblendps ymm12,ymm7,ymm0,0xc0
  6c818a:	c5 78 10 2c 17       	vmovups xmm13,XMMWORD PTR [rdi+rdx*1]
  6c818f:	c5 78 10 74 17 18    	vmovups xmm14,XMMWORD PTR [rdi+rdx*1+0x18]
  6c8195:	c5 78 10 44 17 30    	vmovups xmm8,XMMWORD PTR [rdi+rdx*1+0x30]
  6c819b:	c5 f8 10 7c 17 48    	vmovups xmm7,XMMWORD PTR [rdi+rdx*1+0x48]
  6c81a1:	c5 7b 10 54 17 58    	vmovsd xmm10,QWORD PTR [rdi+rdx*1+0x58]
  6c81a7:	c4 43 7d 18 d2 01    	vinsertf128 ymm10,ymm0,xmm10,0x1
  6c81ad:	c4 63 2d 0c f8 c0    	vblendps ymm15,ymm10,ymm0,0xc0
  6c81b3:	c5 f8 10 74 17 60    	vmovups xmm6,XMMWORD PTR [rdi+rdx*1+0x60]
  6c81b9:	c5 7b 10 54 17 70    	vmovsd xmm10,QWORD PTR [rdi+rdx*1+0x70]
  6c81bf:	c4 43 7d 18 d2 01    	vinsertf128 ymm10,ymm0,xmm10,0x1
  6c81c5:	c4 e3 2d 0c e8 c0    	vblendps ymm5,ymm10,ymm0,0xc0
  6c81cb:	c4 43 7d 19 c9 01    	vextractf128 xmm9,ymm9,0x1
  6c81d1:	c4 41 10 c6 d1 88    	vshufps xmm10,xmm13,xmm9,0x88
  6c81d7:	c4 63 7d 19 da 01    	vextractf128 xmm2,ymm11,0x1
  6c81dd:	c5 88 c6 c2 88       	vshufps xmm0,xmm14,xmm2,0x88
  6c81e2:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  6c81e8:	c4 41 10 c6 d9 dd    	vshufps xmm11,xmm13,xmm9,0xdd
  6c81ee:	c5 48 c6 ed 88       	vshufps xmm13,xmm6,xmm5,0x88
  6c81f3:	c4 43 7d 19 e4 01    	vextractf128 xmm12,ymm12,0x1
  6c81f9:	c5 88 c6 d2 dd       	vshufps xmm2,xmm14,xmm2,0xdd
  6c81fe:	c4 41 38 c6 f4 88    	vshufps xmm14,xmm8,xmm12,0x88
  6c8204:	c4 43 7d 19 ff 01    	vextractf128 xmm15,ymm15,0x1
  6c820a:	c5 c8 c6 ed dd       	vshufps xmm5,xmm6,xmm5,0xdd
  6c820f:	c4 c1 40 c6 f7 88    	vshufps xmm6,xmm7,xmm15,0x88
  6c8215:	c4 c1 38 c6 dc dd    	vshufps xmm3,xmm8,xmm12,0xdd
  6c821b:	c4 41 40 c6 ff dd    	vshufps xmm15,xmm7,xmm15,0xdd
  6c8221:	c5 14 58 c0          	vaddps ymm8,ymm13,ymm0
  6c8225:	c5 ec 58 fd          	vaddps ymm7,ymm2,ymm5
  6c8229:	c5 ec 5c d5          	vsubps ymm2,ymm2,ymm5
  6c822d:	c5 04 58 e3          	vaddps ymm12,ymm15,ymm3
  6c8231:	c4 c1 64 5c df       	vsubps ymm3,ymm3,ymm15
  6c8236:	c4 c1 3c 58 ea       	vaddps ymm5,ymm8,ymm10
  6c823b:	c4 41 7c 5c fd       	vsubps ymm15,ymm0,ymm13
  6c8240:	c5 0c 58 ee          	vaddps ymm13,ymm14,ymm6
  6c8244:	c5 94 58 c5          	vaddps ymm0,ymm13,ymm5
  6c8248:	c5 fc 11 44 24 d8    	vmovups YMMWORD PTR [rsp-0x28],ymm0
  6c824e:	c5 8c 5c ee          	vsubps ymm5,ymm14,ymm6
  6c8252:	c4 62 7d 18 0d 8d d4 	vbroadcastss ymm9,DWORD PTR [rip+0xffffffffff9ad48d]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  6c8259:	9a ff 
  6c825b:	c4 41 7c 28 f1       	vmovaps ymm14,ymm9
  6c8260:	c4 42 3d a8 f2       	vfmadd213ps ymm14,ymm8,ymm10
  6c8265:	c4 e2 7d 18 0d d6 d3 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff9ad3d6]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  6c826c:	9a ff 
  6c826e:	c4 42 75 ac c2       	vfnmadd213ps ymm8,ymm1,ymm10
  6c8273:	c5 a4 58 f7          	vaddps ymm6,ymm11,ymm7
  6c8277:	c5 1c 58 d6          	vaddps ymm10,ymm12,ymm6
  6c827b:	c4 62 15 bc f1       	vfnmadd231ps ymm14,ymm13,ymm1
  6c8280:	c4 42 35 b8 c5       	vfmadd231ps ymm8,ymm9,ymm13
  6c8285:	c4 e2 7d 18 05 ca d4 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff9ad4ca]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  6c828c:	9a ff 
  6c828e:	c5 e4 59 f0          	vmulps ymm6,ymm3,ymm0
  6c8292:	c4 e2 6d b8 f4       	vfmadd231ps ymm6,ymm2,ymm4
  6c8297:	c5 ec 59 d0          	vmulps ymm2,ymm2,ymm0
  6c829b:	c4 e2 5d bc d3       	vfnmadd231ps ymm2,ymm4,ymm3
  6c82a0:	c4 41 7c 28 e9       	vmovaps ymm13,ymm9
  6c82a5:	c4 42 45 a8 eb       	vfmadd213ps ymm13,ymm7,ymm11
  6c82aa:	c4 62 1d bc e9       	vfnmadd231ps ymm13,ymm12,ymm1
  6c82af:	c4 c2 75 ac fb       	vfnmadd213ps ymm7,ymm1,ymm11
  6c82b4:	c5 d4 59 d8          	vmulps ymm3,ymm5,ymm0
  6c82b8:	c4 e2 05 b8 dc       	vfmadd231ps ymm3,ymm15,ymm4
  6c82bd:	c4 c2 35 b8 fc       	vfmadd231ps ymm7,ymm9,ymm12
  6c82c2:	c5 04 59 e0          	vmulps ymm12,ymm15,ymm0
  6c82c6:	c4 62 5d bc e5       	vfnmadd231ps ymm12,ymm4,ymm5
  6c82cb:	c5 88 5c ee          	vsubps xmm5,xmm14,xmm6
  6c82cf:	c5 fc 10 44 24 d8    	vmovups ymm0,YMMWORD PTR [rsp-0x28]
  6c82d5:	c4 e3 7d 18 ed 01    	vinsertf128 ymm5,ymm0,xmm5,0x1
  6c82db:	c5 88 58 f6          	vaddps xmm6,xmm14,xmm6
  6c82df:	c5 38 5c ca          	vsubps xmm9,xmm8,xmm2
  6c82e3:	c5 b8 58 d2          	vaddps xmm2,xmm8,xmm2
  6c82e7:	c5 54 14 de          	vunpcklps ymm11,ymm5,ymm6
  6c82eb:	c4 41 6d 14 f1       	vunpcklpd ymm14,ymm2,ymm9
  6c82f0:	c4 41 24 c6 c6 84    	vshufps ymm8,ymm11,ymm14,0x84
  6c82f6:	c4 41 24 c6 de de    	vshufps ymm11,ymm11,ymm14,0xde
  6c82fc:	c5 cd 15 ed          	vunpckhpd ymm5,ymm6,ymm5
  6c8300:	c4 c1 6c 15 d1       	vunpckhps ymm2,ymm2,ymm9
  6c8305:	c5 54 c6 ca 42       	vshufps ymm9,ymm5,ymm2,0x42
  6c830a:	c5 90 58 d3          	vaddps xmm2,xmm13,xmm3
  6c830e:	c4 e3 2d 18 d2 01    	vinsertf128 ymm2,ymm10,xmm2,0x1
  6c8314:	c5 90 5c db          	vsubps xmm3,xmm13,xmm3
  6c8318:	c5 98 58 ef          	vaddps xmm5,xmm12,xmm7
  6c831c:	c4 c1 40 5c f4       	vsubps xmm6,xmm7,xmm12
  6c8321:	c5 6c 14 d3          	vunpcklps ymm10,ymm2,ymm3
  6c8325:	c5 4d 14 e5          	vunpcklpd ymm12,ymm6,ymm5
  6c8329:	c4 c1 2c c6 fc 84    	vshufps ymm7,ymm10,ymm12,0x84
  6c832f:	c4 41 2c c6 d4 de    	vshufps ymm10,ymm10,ymm12,0xde
  6c8335:	c5 e5 15 d2          	vunpckhpd ymm2,ymm3,ymm2
  6c8339:	c5 cc 15 dd          	vunpckhps ymm3,ymm6,ymm5
  6c833d:	c5 ec c6 d3 42       	vshufps ymm2,ymm2,ymm3,0x42
  6c8342:	c5 fc 10 59 40       	vmovups ymm3,YMMWORD PTR [rcx+0x40]
  6c8347:	c5 fc 10 69 60       	vmovups ymm5,YMMWORD PTR [rcx+0x60]
  6c834c:	c5 a4 59 f3          	vmulps ymm6,ymm11,ymm3
  6c8350:	c4 e2 2d bc f5       	vfnmadd231ps ymm6,ymm10,ymm5
  6c8355:	c5 ac 59 db          	vmulps ymm3,ymm10,ymm3
  6c8359:	c5 7c 10 91 80 00 00 	vmovups ymm10,YMMWORD PTR [rcx+0x80]
  6c8360:	00 
  6c8361:	c4 e2 25 b8 dd       	vfmadd231ps ymm3,ymm11,ymm5
  6c8366:	c5 fc 10 a9 a0 00 00 	vmovups ymm5,YMMWORD PTR [rcx+0xa0]
  6c836d:	00 
  6c836e:	c4 41 2c 59 d9       	vmulps ymm11,ymm10,ymm9
  6c8373:	c4 62 6d bc dd       	vfnmadd231ps ymm11,ymm2,ymm5
  6c8378:	c5 ac 59 d2          	vmulps ymm2,ymm10,ymm2
  6c837c:	c5 24 58 d6          	vaddps ymm10,ymm11,ymm6
  6c8380:	c4 e2 35 b8 d5       	vfmadd231ps ymm2,ymm9,ymm5
  6c8385:	c5 e4 58 ea          	vaddps ymm5,ymm3,ymm2
  6c8389:	c4 e2 7d 18 05 ce d0 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff9ad0ce]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6c8390:	9a ff 
  6c8392:	c5 7c 28 c8          	vmovaps ymm9,ymm0
  6c8396:	c4 42 2d ac c8       	vfnmadd213ps ymm9,ymm10,ymm8
  6c839b:	c5 e4 5c d2          	vsubps ymm2,ymm3,ymm2
  6c839f:	c4 e2 7d 18 0d 2c cf 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff9acf2c]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6c83a6:	9a ff 
  6c83a8:	c5 ec 59 d1          	vmulps ymm2,ymm2,ymm1
  6c83ac:	c5 b4 58 da          	vaddps ymm3,ymm9,ymm2
  6c83b0:	c4 c1 4c 5c f3       	vsubps ymm6,ymm6,ymm11
  6c83b5:	c5 7c 28 d8          	vmovaps ymm11,ymm0
  6c83b9:	c4 62 55 ac df       	vfnmadd213ps ymm11,ymm5,ymm7
  6c83be:	c5 cc 59 f1          	vmulps ymm6,ymm6,ymm1
  6c83c2:	c5 b4 5c d2          	vsubps ymm2,ymm9,ymm2
  6c83c6:	c5 24 5c ce          	vsubps ymm9,ymm11,ymm6
  6c83ca:	c5 a4 58 f6          	vaddps ymm6,ymm11,ymm6
  6c83ce:	c4 41 2c 58 c0       	vaddps ymm8,ymm10,ymm8
  6c83d3:	c5 d4 58 ef          	vaddps ymm5,ymm5,ymm7
  6c83d7:	c5 bc 14 fd          	vunpcklps ymm7,ymm8,ymm5
  6c83db:	c5 38 14 d5          	vunpcklps xmm10,xmm8,xmm5
  6c83df:	c5 b8 15 ed          	vunpckhps xmm5,xmm8,xmm5
  6c83e3:	c5 f8 11 6c 16 10    	vmovups XMMWORD PTR [rsi+rdx*1+0x10],xmm5
  6c83e9:	c5 78 11 14 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm10
  6c83ee:	c4 e3 7d 19 fd 01    	vextractf128 xmm5,ymm7,0x1
  6c83f4:	c5 f8 13 6c 16 20    	vmovlps QWORD PTR [rsi+rdx*1+0x20],xmm5
  6c83fa:	c4 c1 64 14 e9       	vunpcklps ymm5,ymm3,ymm9
  6c83ff:	c4 c1 60 14 f9       	vunpcklps xmm7,xmm3,xmm9
  6c8404:	c4 c1 60 15 d9       	vunpckhps xmm3,xmm3,xmm9
  6c8409:	c5 f8 11 5c 16 38    	vmovups XMMWORD PTR [rsi+rdx*1+0x38],xmm3
  6c840f:	c5 f8 11 7c 16 28    	vmovups XMMWORD PTR [rsi+rdx*1+0x28],xmm7
  6c8415:	c4 e3 7d 19 eb 01    	vextractf128 xmm3,ymm5,0x1
  6c841b:	c5 f8 13 5c 16 48    	vmovlps QWORD PTR [rsi+rdx*1+0x48],xmm3
  6c8421:	c5 ec 14 de          	vunpcklps ymm3,ymm2,ymm6
  6c8425:	c5 e8 14 ee          	vunpcklps xmm5,xmm2,xmm6
  6c8429:	c5 e8 15 d6          	vunpckhps xmm2,xmm2,xmm6
  6c842d:	c5 f8 11 54 16 60    	vmovups XMMWORD PTR [rsi+rdx*1+0x60],xmm2
  6c8433:	c5 f8 11 6c 16 50    	vmovups XMMWORD PTR [rsi+rdx*1+0x50],xmm5
  6c8439:	c4 e3 7d 19 da 01    	vextractf128 xmm2,ymm3,0x1
  6c843f:	c5 f8 13 54 16 70    	vmovlps QWORD PTR [rsi+rdx*1+0x70],xmm2
  6c8445:	48 83 c2 78          	add    rdx,0x78
  6c8449:	48 39 d0             	cmp    rax,rdx
  6c844c:	0f 85 fe fc ff ff    	jne    6c8150 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle+0x10>
  6c8452:	c5 f8 77             	vzeroupper
  6c8455:	c3                   	ret
