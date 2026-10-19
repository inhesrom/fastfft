
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000734f40 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  734f40:	48 83 ec 28          	sub    rsp,0x28
  734f44:	c5 fb 10 47 10       	vmovsd xmm0,QWORD PTR [rdi+0x10]
  734f49:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  734f4f:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  734f53:	c4 63 7d 0c e9 c0    	vblendps ymm13,ymm0,ymm1,0xc0
  734f59:	c5 fb 10 47 28       	vmovsd xmm0,QWORD PTR [rdi+0x28]
  734f5e:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  734f64:	c4 e3 7d 0c c1 c0    	vblendps ymm0,ymm0,ymm1,0xc0
  734f6a:	c5 fc 11 44 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm0
  734f70:	c5 fb 10 47 40       	vmovsd xmm0,QWORD PTR [rdi+0x40]
  734f75:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  734f7b:	c4 e3 7d 0c e9 c0    	vblendps ymm5,ymm0,ymm1,0xc0
  734f81:	c5 f8 10 17          	vmovups xmm2,XMMWORD PTR [rdi]
  734f85:	c5 f8 10 5f 18       	vmovups xmm3,XMMWORD PTR [rdi+0x18]
  734f8a:	c5 78 10 47 30       	vmovups xmm8,XMMWORD PTR [rdi+0x30]
  734f8f:	c5 f8 10 7f 48       	vmovups xmm7,XMMWORD PTR [rdi+0x48]
  734f94:	c5 fb 10 77 58       	vmovsd xmm6,QWORD PTR [rdi+0x58]
  734f99:	c4 e3 7d 18 f6 01    	vinsertf128 ymm6,ymm0,xmm6,0x1
  734f9f:	c4 e3 4d 0c e1 c0    	vblendps ymm4,ymm6,ymm1,0xc0
  734fa5:	c5 f8 10 77 60       	vmovups xmm6,XMMWORD PTR [rdi+0x60]
  734faa:	c5 7b 10 4f 70       	vmovsd xmm9,QWORD PTR [rdi+0x70]
  734faf:	c4 43 7d 18 c9 01    	vinsertf128 ymm9,ymm0,xmm9,0x1
  734fb5:	c4 63 35 0c f9 c0    	vblendps ymm15,ymm9,ymm1,0xc0
  734fbb:	c5 78 10 4f 78       	vmovups xmm9,XMMWORD PTR [rdi+0x78]
  734fc0:	c5 7b 10 97 88 00 00 	vmovsd xmm10,QWORD PTR [rdi+0x88]
  734fc7:	00 
  734fc8:	c4 43 7d 18 d2 01    	vinsertf128 ymm10,ymm0,xmm10,0x1
  734fce:	c4 63 2d 0c d9 c0    	vblendps ymm11,ymm10,ymm1,0xc0
  734fd4:	c5 78 10 a7 90 00 00 	vmovups xmm12,XMMWORD PTR [rdi+0x90]
  734fdb:	00 
  734fdc:	c5 7b 10 97 a0 00 00 	vmovsd xmm10,QWORD PTR [rdi+0xa0]
  734fe3:	00 
  734fe4:	c4 43 7d 18 d2 01    	vinsertf128 ymm10,ymm0,xmm10,0x1
  734fea:	c4 63 2d 0c f1 c0    	vblendps ymm14,ymm10,ymm1,0xc0
  734ff0:	c5 7b 10 97 b8 00 00 	vmovsd xmm10,QWORD PTR [rdi+0xb8]
  734ff7:	00 
  734ff8:	c4 43 7d 18 d2 01    	vinsertf128 ymm10,ymm0,xmm10,0x1
  734ffe:	c4 63 2d 0c d1 c0    	vblendps ymm10,ymm10,ymm1,0xc0
  735004:	c4 43 7d 19 ed 01    	vextractf128 xmm13,ymm13,0x1
  73500a:	c4 c1 68 c6 c5 dd    	vshufps xmm0,xmm2,xmm13,0xdd
  735010:	c5 fc 11 44 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm0
  735016:	c4 43 7d 19 ff 01    	vextractf128 xmm15,ymm15,0x1
  73501c:	c4 c1 68 c6 c5 88    	vshufps xmm0,xmm2,xmm13,0x88
  735022:	c5 fc 11 44 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm0
  735028:	c4 41 48 c6 ef dd    	vshufps xmm13,xmm6,xmm15,0xdd
  73502e:	c4 e3 7d 19 e8 01    	vextractf128 xmm0,ymm5,0x1
  735034:	c4 c1 48 c6 f7 88    	vshufps xmm6,xmm6,xmm15,0x88
  73503a:	c5 b8 c6 c8 dd       	vshufps xmm1,xmm8,xmm0,0xdd
  73503f:	c5 fc 11 4c 24 e0    	vmovups YMMWORD PTR [rsp-0x20],ymm1
  735045:	c4 43 7d 19 f7 01    	vextractf128 xmm15,ymm14,0x1
  73504b:	c5 38 c6 f0 88       	vshufps xmm14,xmm8,xmm0,0x88
  735050:	c4 c1 18 c6 c7 dd    	vshufps xmm0,xmm12,xmm15,0xdd
  735056:	c5 fc 11 04 24       	vmovups YMMWORD PTR [rsp],ymm0
  73505b:	c5 fc 10 44 24 80    	vmovups ymm0,YMMWORD PTR [rsp-0x80]
  735061:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  735067:	c4 41 18 c6 ff 88    	vshufps xmm15,xmm12,xmm15,0x88
  73506d:	c5 60 c6 e0 dd       	vshufps xmm12,xmm3,xmm0,0xdd
  735072:	c4 63 7d 19 d9 01    	vextractf128 xmm1,ymm11,0x1
  735078:	c5 60 c6 d8 88       	vshufps xmm11,xmm3,xmm0,0x88
  73507d:	c5 b0 c6 d9 dd       	vshufps xmm3,xmm9,xmm1,0xdd
  735082:	c4 e3 7d 19 e0 01    	vextractf128 xmm0,ymm4,0x1
  735088:	c5 b0 c6 c9 88       	vshufps xmm1,xmm9,xmm1,0x88
  73508d:	c5 c0 c6 e0 dd       	vshufps xmm4,xmm7,xmm0,0xdd
  735092:	c5 c0 c6 d0 88       	vshufps xmm2,xmm7,xmm0,0x88
  735097:	c5 f8 10 bf a8 00 00 	vmovups xmm7,XMMWORD PTR [rdi+0xa8]
  73509e:	00 
  73509f:	c4 43 7d 19 d1 01    	vextractf128 xmm9,ymm10,0x1
  7350a5:	c4 c1 40 c6 c1 dd    	vshufps xmm0,xmm7,xmm9,0xdd
  7350ab:	c4 c1 40 c6 f9 88    	vshufps xmm7,xmm7,xmm9,0x88
  7350b1:	c5 fc 10 6c 24 a0    	vmovups ymm5,YMMWORD PTR [rsp-0x60]
  7350b7:	c5 14 58 c5          	vaddps ymm8,ymm13,ymm5
  7350bb:	c5 7c 11 44 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm8
  7350c1:	c4 c1 54 5c ed       	vsubps ymm5,ymm5,ymm13
  7350c6:	c5 fc 11 6c 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm5
  7350cc:	c4 41 0c 58 ef       	vaddps ymm13,ymm14,ymm15
  7350d1:	c4 41 0c 5c ff       	vsubps ymm15,ymm14,ymm15
  7350d6:	c5 1c 58 f3          	vaddps ymm14,ymm12,ymm3
  7350da:	c5 9c 5c db          	vsubps ymm3,ymm12,ymm3
  7350de:	c5 24 58 e1          	vaddps ymm12,ymm11,ymm1
  7350e2:	c5 a4 5c c9          	vsubps ymm1,ymm11,ymm1
  7350e6:	c5 6c 58 df          	vaddps ymm11,ymm2,ymm7
  7350ea:	c5 ec 5c d7          	vsubps ymm2,ymm2,ymm7
  7350ee:	c5 5c 58 c8          	vaddps ymm9,ymm4,ymm0
  7350f2:	c5 dc 5c c0          	vsubps ymm0,ymm4,ymm0
  7350f6:	c5 fc 10 64 24 c0    	vmovups ymm4,YMMWORD PTR [rsp-0x40]
  7350fc:	c5 dc 58 ee          	vaddps ymm5,ymm4,ymm6
  735100:	c5 5c 5c d6          	vsubps ymm10,ymm4,ymm6
  735104:	c5 fc 10 64 24 e0    	vmovups ymm4,YMMWORD PTR [rsp-0x20]
  73510a:	c5 fc 10 3c 24       	vmovups ymm7,YMMWORD PTR [rsp]
  73510f:	c5 dc 58 f7          	vaddps ymm6,ymm4,ymm7
  735113:	c5 44 5c c4          	vsubps ymm8,ymm7,ymm4
  735117:	c5 e4 58 e1          	vaddps ymm4,ymm3,ymm1
  73511b:	c5 f4 5c cb          	vsubps ymm1,ymm1,ymm3
  73511f:	c5 ec 5c d8          	vsubps ymm3,ymm2,ymm0
  735123:	c5 fc 58 c2          	vaddps ymm0,ymm0,ymm2
  735127:	c4 e2 7d 18 15 6c 02 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff94026c]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  73512e:	94 ff 
  735130:	c5 dc 59 e2          	vmulps ymm4,ymm4,ymm2
  735134:	c5 e4 59 da          	vmulps ymm3,ymm3,ymm2
  735138:	c5 f4 59 ca          	vmulps ymm1,ymm1,ymm2
  73513c:	c5 fc 59 d2          	vmulps ymm2,ymm0,ymm2
  735140:	c5 fc 10 44 24 80    	vmovups ymm0,YMMWORD PTR [rsp-0x80]
  735146:	c5 fc 58 fe          	vaddps ymm7,ymm0,ymm6
  73514a:	c5 fc 5c f6          	vsubps ymm6,ymm0,ymm6
  73514e:	c4 c1 1c 58 c3       	vaddps ymm0,ymm12,ymm11
  735153:	c5 fc 11 44 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm0
  735159:	c4 41 1c 5c e3       	vsubps ymm12,ymm12,ymm11
  73515e:	c5 14 58 dd          	vaddps ymm11,ymm13,ymm5
  735162:	c4 c1 54 5c c5       	vsubps ymm0,ymm5,ymm13
  735167:	c5 fc 11 44 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm0
  73516d:	c4 c1 0c 58 e9       	vaddps ymm5,ymm14,ymm9
  735172:	c4 c1 34 5c c6       	vsubps ymm0,ymm9,ymm14
  735177:	c5 fc 11 44 24 e0    	vmovups YMMWORD PTR [rsp-0x20],ymm0
  73517d:	c5 fc 10 44 24 a0    	vmovups ymm0,YMMWORD PTR [rsp-0x60]
  735183:	c5 04 58 f0          	vaddps ymm14,ymm15,ymm0
  735187:	c4 41 7c 5c ff       	vsubps ymm15,ymm0,ymm15
  73518c:	c5 74 5c ea          	vsubps ymm13,ymm1,ymm2
  735190:	c5 f4 58 d2          	vaddps ymm2,ymm1,ymm2
  735194:	c4 c1 3c 58 ca       	vaddps ymm1,ymm8,ymm10
  735199:	c4 41 2c 5c d0       	vsubps ymm10,ymm10,ymm8
  73519e:	c5 5c 58 cb          	vaddps ymm9,ymm4,ymm3
  7351a2:	c5 e4 5c dc          	vsubps ymm3,ymm3,ymm4
  7351a6:	c5 c4 58 e5          	vaddps ymm4,ymm7,ymm5
  7351aa:	c5 c0 5c c5          	vsubps xmm0,xmm7,xmm5
  7351ae:	c4 e3 5d 18 c0 01    	vinsertf128 ymm0,ymm4,xmm0,0x1
  7351b4:	c4 c1 0c 58 e1       	vaddps ymm4,ymm14,ymm9
  7351b9:	c4 c1 08 5c e9       	vsubps xmm5,xmm14,xmm9
  7351be:	c4 e3 5d 18 e5 01    	vinsertf128 ymm4,ymm4,xmm5,0x1
  7351c4:	c5 9c 58 ee          	vaddps ymm5,ymm12,ymm6
  7351c8:	c4 c1 48 5c f4       	vsubps xmm6,xmm6,xmm12
  7351cd:	c4 e3 55 18 ee 01    	vinsertf128 ymm5,ymm5,xmm6,0x1
  7351d3:	c5 84 58 f2          	vaddps ymm6,ymm15,ymm2
  7351d7:	c5 80 5c d2          	vsubps xmm2,xmm15,xmm2
  7351db:	c4 e3 4d 18 d2 01    	vinsertf128 ymm2,ymm6,xmm2,0x1
  7351e1:	c5 fd 15 f5          	vunpckhpd ymm6,ymm0,ymm5
  7351e5:	c5 fd 14 c5          	vunpcklpd ymm0,ymm0,ymm5
  7351e9:	c5 dd 15 ea          	vunpckhpd ymm5,ymm4,ymm2
  7351ed:	c5 cc c6 ed 88       	vshufps ymm5,ymm6,ymm5,0x88
  7351f2:	c5 dd 14 d2          	vunpcklpd ymm2,ymm4,ymm2
  7351f6:	c5 fc c6 e2 88       	vshufps ymm4,ymm0,ymm2,0x88
  7351fb:	c5 fc c6 d2 dd       	vshufps ymm2,ymm0,ymm2,0xdd
  735200:	c5 fc 10 74 24 c0    	vmovups ymm6,YMMWORD PTR [rsp-0x40]
  735206:	c5 a4 58 c6          	vaddps ymm0,ymm11,ymm6
  73520a:	c5 a0 5c f6          	vsubps xmm6,xmm11,xmm6
  73520e:	c4 e3 7d 18 f6 01    	vinsertf128 ymm6,ymm0,xmm6,0x1
  735214:	c5 94 58 c1          	vaddps ymm0,ymm13,ymm1
  735218:	c4 c1 70 5c cd       	vsubps xmm1,xmm1,xmm13
  73521d:	c4 e3 7d 18 c9 01    	vinsertf128 ymm1,ymm0,xmm1,0x1
  735223:	c5 fc 10 7c 24 80    	vmovups ymm7,YMMWORD PTR [rsp-0x80]
  735229:	c5 7c 10 44 24 e0    	vmovups ymm8,YMMWORD PTR [rsp-0x20]
  73522f:	c5 bc 58 c7          	vaddps ymm0,ymm8,ymm7
  735233:	c4 41 40 5c c0       	vsubps xmm8,xmm7,xmm8
  735238:	c4 43 7d 18 c0 01    	vinsertf128 ymm8,ymm0,xmm8,0x1
  73523e:	c5 2c 58 cb          	vaddps ymm9,ymm10,ymm3
  735242:	c5 dc c6 c4 d8       	vshufps ymm0,ymm4,ymm4,0xd8
  735247:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  73524c:	c5 d4 c6 e5 d8       	vshufps ymm4,ymm5,ymm5,0xd8
  735251:	c5 a8 5c db          	vsubps xmm3,xmm10,xmm3
  735255:	c4 e3 35 18 db 01    	vinsertf128 ymm3,ymm9,xmm3,0x1
  73525b:	c4 c1 4d 15 e8       	vunpckhpd ymm5,ymm6,ymm8
  735260:	c4 c1 4d 14 f0       	vunpcklpd ymm6,ymm6,ymm8
  735265:	c5 f5 15 fb          	vunpckhpd ymm7,ymm1,ymm3
  735269:	c5 d4 c6 ef 88       	vshufps ymm5,ymm5,ymm7,0x88
  73526e:	c5 f5 14 db          	vunpcklpd ymm3,ymm1,ymm3
  735272:	c5 cc c6 cb 88       	vshufps ymm1,ymm6,ymm3,0x88
  735277:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  73527c:	c5 cc c6 db dd       	vshufps ymm3,ymm6,ymm3,0xdd
  735281:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  735286:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  73528b:	c5 fc 10 72 40       	vmovups ymm6,YMMWORD PTR [rdx+0x40]
  735290:	c5 fc 10 7a 60       	vmovups ymm7,YMMWORD PTR [rdx+0x60]
  735295:	c5 4c 59 c3          	vmulps ymm8,ymm6,ymm3
  735299:	c4 62 6d b8 c7       	vfmadd231ps ymm8,ymm2,ymm7
  73529e:	c5 cc 59 d2          	vmulps ymm2,ymm6,ymm2
  7352a2:	c5 fc 10 b2 80 00 00 	vmovups ymm6,YMMWORD PTR [rdx+0x80]
  7352a9:	00 
  7352aa:	c4 e2 65 bc d7       	vfnmadd231ps ymm2,ymm3,ymm7
  7352af:	c5 fc 10 9a a0 00 00 	vmovups ymm3,YMMWORD PTR [rdx+0xa0]
  7352b6:	00 
  7352b7:	c5 cc 59 fd          	vmulps ymm7,ymm6,ymm5
  7352bb:	c4 e2 5d b8 fb       	vfmadd231ps ymm7,ymm4,ymm3
  7352c0:	c5 cc 59 e4          	vmulps ymm4,ymm6,ymm4
  7352c4:	c5 bc 58 f7          	vaddps ymm6,ymm8,ymm7
  7352c8:	c4 e2 55 bc e3       	vfnmadd231ps ymm4,ymm5,ymm3
  7352cd:	c4 e2 7d 18 1d 8a 01 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff94018a]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  7352d4:	94 ff 
  7352d6:	c5 ec 5c ec          	vsubps ymm5,ymm2,ymm4
  7352da:	c5 ec 58 d4          	vaddps ymm2,ymm2,ymm4
  7352de:	c5 fc 28 e3          	vmovaps ymm4,ymm3
  7352e2:	c5 bc 5c ff          	vsubps ymm7,ymm8,ymm7
  7352e6:	c4 62 7d 18 05 e5 ff 	vbroadcastss ymm8,DWORD PTR [rip+0xffffffffff93ffe5]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  7352ed:	93 ff 
  7352ef:	c4 e2 4d ac e1       	vfnmadd213ps ymm4,ymm6,ymm1
  7352f4:	c5 bc 59 ed          	vmulps ymm5,ymm8,ymm5
  7352f8:	c5 bc 59 ff          	vmulps ymm7,ymm8,ymm7
  7352fc:	c5 5c 58 c5          	vaddps ymm8,ymm4,ymm5
  735300:	c4 e2 6d ac d8       	vfnmadd213ps ymm3,ymm2,ymm0
  735305:	c5 dc 5c e5          	vsubps ymm4,ymm4,ymm5
  735309:	c5 e4 5c ef          	vsubps ymm5,ymm3,ymm7
  73530d:	c5 e4 58 df          	vaddps ymm3,ymm3,ymm7
  735311:	c5 cc 58 c9          	vaddps ymm1,ymm6,ymm1
  735315:	c5 ec 58 c0          	vaddps ymm0,ymm2,ymm0
  735319:	c5 f4 15 d0          	vunpckhps ymm2,ymm1,ymm0
  73531d:	c5 f4 14 c0          	vunpcklps ymm0,ymm1,ymm0
  735321:	c4 e3 7d 06 ca 31    	vperm2f128 ymm1,ymm0,ymm2,0x31
  735327:	c4 e3 7d 06 c2 20    	vperm2f128 ymm0,ymm0,ymm2,0x20
  73532d:	c5 fc 11 06          	vmovups YMMWORD PTR [rsi],ymm0
  735331:	c5 fc 11 4e 20       	vmovups YMMWORD PTR [rsi+0x20],ymm1
  735336:	c5 dc 15 c3          	vunpckhps ymm0,ymm4,ymm3
  73533a:	c5 dc 14 cb          	vunpcklps ymm1,ymm4,ymm3
  73533e:	c4 e3 75 06 d0 31    	vperm2f128 ymm2,ymm1,ymm0,0x31
  735344:	c4 e3 75 06 c0 20    	vperm2f128 ymm0,ymm1,ymm0,0x20
  73534a:	c5 fc 11 46 40       	vmovups YMMWORD PTR [rsi+0x40],ymm0
  73534f:	c5 fc 11 56 60       	vmovups YMMWORD PTR [rsi+0x60],ymm2
  735354:	c5 bc 15 c5          	vunpckhps ymm0,ymm8,ymm5
  735358:	c5 bc 14 cd          	vunpcklps ymm1,ymm8,ymm5
  73535c:	c4 e3 75 06 d0 31    	vperm2f128 ymm2,ymm1,ymm0,0x31
  735362:	c4 e3 75 06 c0 20    	vperm2f128 ymm0,ymm1,ymm0,0x20
  735368:	c5 fc 11 86 80 00 00 	vmovups YMMWORD PTR [rsi+0x80],ymm0
  73536f:	00 
  735370:	c5 fc 11 96 a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm2
  735377:	00 
  735378:	48 83 c4 28          	add    rsp,0x28
  73537c:	c5 f8 77             	vzeroupper
  73537f:	c3                   	ret
