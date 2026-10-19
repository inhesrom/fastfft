
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000aab300 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  aab300:	48 c1 e2 05          	shl    rdx,0x5
  aab304:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  aab308:	31 d2                	xor    edx,edx
  aab30a:	c4 e2 7d 18 05 4d a1 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff5ca14d]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  aab311:	5c ff 
  aab313:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  aab317:	c4 e2 7d 18 15 b4 9f 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff5c9fb4]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  aab31e:	5c ff 
  aab320:	c5 fc 28 1d b8 be 5c 	vmovaps ymm3,YMMWORD PTR [rip+0xffffffffff5cbeb8]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  aab327:	ff 
  aab328:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  aab32f:	00 
  aab330:	c5 fb 10 64 17 10    	vmovsd xmm4,QWORD PTR [rdi+rdx*1+0x10]
  aab336:	c4 e3 7d 18 e4 01    	vinsertf128 ymm4,ymm0,xmm4,0x1
  aab33c:	c4 e3 5d 0c e1 c0    	vblendps ymm4,ymm4,ymm1,0xc0
  aab342:	c5 f8 10 2c 17       	vmovups xmm5,XMMWORD PTR [rdi+rdx*1]
  aab347:	c5 f8 10 74 17 18    	vmovups xmm6,XMMWORD PTR [rdi+rdx*1+0x18]
  aab34d:	c5 f8 10 7c 17 30    	vmovups xmm7,XMMWORD PTR [rdi+rdx*1+0x30]
  aab353:	c5 78 10 44 17 48    	vmovups xmm8,XMMWORD PTR [rdi+rdx*1+0x48]
  aab359:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  aab35f:	c5 50 c6 cc dd       	vshufps xmm9,xmm5,xmm4,0xdd
  aab364:	c5 7b 10 54 17 40    	vmovsd xmm10,QWORD PTR [rdi+rdx*1+0x40]
  aab36a:	c4 43 7d 18 d2 01    	vinsertf128 ymm10,ymm0,xmm10,0x1
  aab370:	c4 63 2d 0c d1 c0    	vblendps ymm10,ymm10,ymm1,0xc0
  aab376:	c4 43 7d 19 d2 01    	vextractf128 xmm10,ymm10,0x1
  aab37c:	c4 41 40 c6 da dd    	vshufps xmm11,xmm7,xmm10,0xdd
  aab382:	c4 41 34 5c e3       	vsubps ymm12,ymm9,ymm11
  aab387:	c5 7b 10 6c 17 58    	vmovsd xmm13,QWORD PTR [rdi+rdx*1+0x58]
  aab38d:	c4 43 7d 18 ed 01    	vinsertf128 ymm13,ymm0,xmm13,0x1
  aab393:	c4 63 15 0c e9 c0    	vblendps ymm13,ymm13,ymm1,0xc0
  aab399:	c4 43 7d 19 ed 01    	vextractf128 xmm13,ymm13,0x1
  aab39f:	c4 41 38 c6 f5 88    	vshufps xmm14,xmm8,xmm13,0x88
  aab3a5:	c5 7b 10 7c 17 28    	vmovsd xmm15,QWORD PTR [rdi+rdx*1+0x28]
  aab3ab:	c4 43 7d 18 ff 01    	vinsertf128 ymm15,ymm0,xmm15,0x1
  aab3b1:	c4 63 05 0c f9 c0    	vblendps ymm15,ymm15,ymm1,0xc0
  aab3b7:	c4 43 7d 19 ff 01    	vextractf128 xmm15,ymm15,0x1
  aab3bd:	62 c1 4c 08 c6 c7 88 	vshufps xmm16,xmm6,xmm15,0x88
  aab3c4:	62 a1 0c 28 5c c8    	vsubps ymm17,ymm14,ymm16
  aab3ca:	c5 d0 c6 e4 88       	vshufps xmm4,xmm5,xmm4,0x88
  aab3cf:	c4 c1 40 c6 ea 88    	vshufps xmm5,xmm7,xmm10,0x88
  aab3d5:	c5 dc 5c fd          	vsubps ymm7,ymm4,ymm5
  aab3d9:	c4 c1 48 c6 f7 dd    	vshufps xmm6,xmm6,xmm15,0xdd
  aab3df:	c4 41 38 c6 c5 dd    	vshufps xmm8,xmm8,xmm13,0xdd
  aab3e5:	c4 41 4c 5c d0       	vsubps ymm10,ymm6,ymm8
  aab3ea:	c4 41 34 58 cb       	vaddps ymm9,ymm9,ymm11
  aab3ef:	c5 bc 58 f6          	vaddps ymm6,ymm8,ymm6
  aab3f3:	c5 dc 58 e5          	vaddps ymm4,ymm4,ymm5
  aab3f7:	62 d1 7c 20 58 ee    	vaddps ymm5,ymm16,ymm14
  aab3fd:	c5 58 58 c5          	vaddps xmm8,xmm4,xmm5
  aab401:	c5 28 58 df          	vaddps xmm11,xmm10,xmm7
  aab405:	c5 d8 5c e5          	vsubps xmm4,xmm4,xmm5
  aab409:	c4 c1 40 5c ea       	vsubps xmm5,xmm7,xmm10
  aab40e:	c5 bd 15 fc          	vunpckhpd ymm7,ymm8,ymm4
  aab412:	c5 bd 14 e4          	vunpcklpd ymm4,ymm8,ymm4
  aab416:	c5 25 15 c5          	vunpckhpd ymm8,ymm11,ymm5
  aab41a:	c4 c1 44 c6 f8 88    	vshufps ymm7,ymm7,ymm8,0x88
  aab420:	c5 a5 14 ed          	vunpcklpd ymm5,ymm11,ymm5
  aab424:	c5 5c c6 c5 88       	vshufps ymm8,ymm4,ymm5,0x88
  aab429:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  aab42f:	c5 dc c6 e5 dd       	vshufps ymm4,ymm4,ymm5,0xdd
  aab434:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  aab439:	c5 c4 c6 ef d8       	vshufps ymm5,ymm7,ymm7,0xd8
  aab43e:	c5 b0 58 fe          	vaddps xmm7,xmm9,xmm6
  aab442:	62 51 74 00 58 d4    	vaddps xmm10,xmm17,xmm12
  aab448:	c5 b0 5c f6          	vsubps xmm6,xmm9,xmm6
  aab44c:	62 31 1c 08 5c c9    	vsubps xmm9,xmm12,xmm17
  aab452:	c5 45 15 de          	vunpckhpd ymm11,ymm7,ymm6
  aab456:	c5 c5 14 f6          	vunpcklpd ymm6,ymm7,ymm6
  aab45a:	c4 c1 2d 15 f9       	vunpckhpd ymm7,ymm10,ymm9
  aab45f:	c5 a4 c6 ff 88       	vshufps ymm7,ymm11,ymm7,0x88
  aab464:	c4 41 2d 14 c9       	vunpcklpd ymm9,ymm10,ymm9
  aab469:	c4 41 4c c6 d1 88    	vshufps ymm10,ymm6,ymm9,0x88
  aab46f:	c4 41 2c c6 d2 d8    	vshufps ymm10,ymm10,ymm10,0xd8
  aab475:	c4 c1 4c c6 f1 dd    	vshufps ymm6,ymm6,ymm9,0xdd
  aab47b:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  aab480:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  aab485:	c5 7c 10 49 40       	vmovups ymm9,YMMWORD PTR [rcx+0x40]
  aab48a:	c5 7c 10 59 60       	vmovups ymm11,YMMWORD PTR [rcx+0x60]
  aab48f:	c5 7c 10 a1 80 00 00 	vmovups ymm12,YMMWORD PTR [rcx+0x80]
  aab496:	00 
  aab497:	c5 7c 10 a9 a0 00 00 	vmovups ymm13,YMMWORD PTR [rcx+0xa0]
  aab49e:	00 
  aab49f:	c5 34 59 f4          	vmulps ymm14,ymm9,ymm4
  aab4a3:	c4 42 4d bc f3       	vfnmadd231ps ymm14,ymm6,ymm11
  aab4a8:	c5 1c 59 fd          	vmulps ymm15,ymm12,ymm5
  aab4ac:	c4 42 45 bc fd       	vfnmadd231ps ymm15,ymm7,ymm13
  aab4b1:	62 c1 0c 28 58 c7    	vaddps ymm16,ymm14,ymm15
  aab4b7:	c5 b4 59 f6          	vmulps ymm6,ymm9,ymm6
  aab4bb:	c4 c2 5d b8 f3       	vfmadd231ps ymm6,ymm4,ymm11
  aab4c0:	c5 9c 59 e7          	vmulps ymm4,ymm12,ymm7
  aab4c4:	c4 c2 55 b8 e5       	vfmadd231ps ymm4,ymm5,ymm13
  aab4c9:	c5 cc 58 ec          	vaddps ymm5,ymm6,ymm4
  aab4cd:	c5 fc 28 f8          	vmovaps ymm7,ymm0
  aab4d1:	62 d2 7d 20 ac f8    	vfnmadd213ps ymm7,ymm16,ymm8
  aab4d7:	c5 cc 5c e4          	vsubps ymm4,ymm6,ymm4
  aab4db:	c5 dc 59 e2          	vmulps ymm4,ymm4,ymm2
  aab4df:	c5 fc 28 f0          	vmovaps ymm6,ymm0
  aab4e3:	c4 c2 55 ac f2       	vfnmadd213ps ymm6,ymm5,ymm10
  aab4e8:	c4 41 0c 5c cf       	vsubps ymm9,ymm14,ymm15
  aab4ed:	c5 34 59 ca          	vmulps ymm9,ymm9,ymm2
  aab4f1:	c4 41 4c 5c d9       	vsubps ymm11,ymm6,ymm9
  aab4f6:	c5 b4 58 f6          	vaddps ymm6,ymm9,ymm6
  aab4fa:	c5 ac 58 ed          	vaddps ymm5,ymm10,ymm5
  aab4fe:	62 31 3c 08 58 c0    	vaddps xmm8,xmm8,xmm16
  aab504:	62 72 65 28 7f c5    	vpermt2ps ymm8,ymm3,ymm5
  aab50a:	c5 7c 11 04 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm8
  aab50f:	c5 c0 58 ec          	vaddps xmm5,xmm7,xmm4
  aab513:	62 d2 65 28 7f eb    	vpermt2ps ymm5,ymm3,ymm11
  aab519:	c5 fc 11 6c 16 20    	vmovups YMMWORD PTR [rsi+rdx*1+0x20],ymm5
  aab51f:	c5 c0 5c e4          	vsubps xmm4,xmm7,xmm4
  aab523:	62 f2 65 28 7f e6    	vpermt2ps ymm4,ymm3,ymm6
  aab529:	c5 fc 11 64 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm4
  aab52f:	48 83 c2 60          	add    rdx,0x60
  aab533:	48 39 d0             	cmp    rax,rdx
  aab536:	0f 85 f4 fd ff ff    	jne    aab330 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x30>
  aab53c:	c5 f8 77             	vzeroupper
  aab53f:	c3                   	ret
