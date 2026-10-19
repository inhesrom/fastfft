
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000006e8140 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  6e8140:	55                   	push   rbp
  6e8141:	48 89 e5             	mov    rbp,rsp
  6e8144:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  6e8148:	48 81 ec 00 03 00 00 	sub    rsp,0x300
  6e814f:	48 c1 e2 07          	shl    rdx,0x7
  6e8153:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  6e8157:	31 d2                	xor    edx,edx
  6e8159:	4c 8d 84 24 80 02 00 	lea    r8,[rsp+0x280]
  6e8160:	00 
  6e8161:	4c 8d 8c 24 b8 00 00 	lea    r9,[rsp+0xb8]
  6e8168:	00 
  6e8169:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  6e8170:	c6 84 24 80 02 00 00 	mov    BYTE PTR [rsp+0x280],0x0
  6e8177:	00 
  6e8178:	4c 89 84 24 b8 00 00 	mov    QWORD PTR [rsp+0xb8],r8
  6e817f:	00 
  6e8180:	c5 fc 10 24 17       	vmovups ymm4,YMMWORD PTR [rdi+rdx*1]
  6e8185:	c5 fc 10 6c 17 20    	vmovups ymm5,YMMWORD PTR [rdi+rdx*1+0x20]
  6e818b:	c5 7c 10 44 17 40    	vmovups ymm8,YMMWORD PTR [rdi+rdx*1+0x40]
  6e8191:	c5 fc 10 5c 17 60    	vmovups ymm3,YMMWORD PTR [rdi+rdx*1+0x60]
  6e8197:	c5 fc 10 b4 17 80 00 	vmovups ymm6,YMMWORD PTR [rdi+rdx*1+0x80]
  6e819e:	00 00 
  6e81a0:	c5 fc 10 bc 17 a0 00 	vmovups ymm7,YMMWORD PTR [rdi+rdx*1+0xa0]
  6e81a7:	00 00 
  6e81a9:	c5 7c 10 94 17 c0 00 	vmovups ymm10,YMMWORD PTR [rdi+rdx*1+0xc0]
  6e81b0:	00 00 
  6e81b2:	c5 7c 10 9c 17 e0 00 	vmovups ymm11,YMMWORD PTR [rdi+rdx*1+0xe0]
  6e81b9:	00 00 
  6e81bb:	c5 7c 10 ac 17 00 01 	vmovups ymm13,YMMWORD PTR [rdi+rdx*1+0x100]
  6e81c2:	00 00 
  6e81c4:	c5 7c 10 b4 17 20 01 	vmovups ymm14,YMMWORD PTR [rdi+rdx*1+0x120]
  6e81cb:	00 00 
  6e81cd:	c5 7c 10 bc 17 40 01 	vmovups ymm15,YMMWORD PTR [rdi+rdx*1+0x140]
  6e81d4:	00 00 
  6e81d6:	c5 fc 10 8c 17 60 01 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x160]
  6e81dd:	00 00 
  6e81df:	c5 dc c6 d5 dd       	vshufps ymm2,ymm4,ymm5,0xdd
  6e81e4:	c4 e3 fd 01 c2 d8    	vpermpd ymm0,ymm2,0xd8
  6e81ea:	c5 fc 29 44 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm0
  6e81f0:	c5 cc c6 d7 dd       	vshufps ymm2,ymm6,ymm7,0xdd
  6e81f5:	c4 e3 fd 01 c2 d8    	vpermpd ymm0,ymm2,0xd8
  6e81fb:	c5 fc 29 84 24 c0 00 	vmovaps YMMWORD PTR [rsp+0xc0],ymm0
  6e8202:	00 00 
  6e8204:	c4 c1 14 c6 d6 dd    	vshufps ymm2,ymm13,ymm14,0xdd
  6e820a:	c4 e3 fd 01 c2 d8    	vpermpd ymm0,ymm2,0xd8
  6e8210:	c5 fc 29 84 24 e0 00 	vmovaps YMMWORD PTR [rsp+0xe0],ymm0
  6e8217:	00 00 
  6e8219:	c4 41 2c c6 cb dd    	vshufps ymm9,ymm10,ymm11,0xdd
  6e821f:	c4 43 fd 01 c9 d8    	vpermpd ymm9,ymm9,0xd8
  6e8225:	c5 5c c6 e5 88       	vshufps ymm12,ymm4,ymm5,0x88
  6e822a:	c5 84 c6 e1 dd       	vshufps ymm4,ymm15,ymm1,0xdd
  6e822f:	c5 cc c6 f7 88       	vshufps ymm6,ymm6,ymm7,0x88
  6e8234:	c4 e3 fd 01 d4 d8    	vpermpd ymm2,ymm4,0xd8
  6e823a:	c5 fc 29 94 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm2
  6e8241:	00 00 
  6e8243:	c5 bc c6 eb dd       	vshufps ymm5,ymm8,ymm3,0xdd
  6e8248:	c4 e3 fd 01 ed d8    	vpermpd ymm5,ymm5,0xd8
  6e824e:	c4 43 fd 01 e4 d8    	vpermpd ymm12,ymm12,0xd8
  6e8254:	c4 e3 fd 01 e6 d8    	vpermpd ymm4,ymm6,0xd8
  6e825a:	c4 c1 14 c6 f6 88    	vshufps ymm6,ymm13,ymm14,0x88
  6e8260:	c4 63 fd 01 ee d8    	vpermpd ymm13,ymm6,0xd8
  6e8266:	c4 c1 2c c6 f3 88    	vshufps ymm6,ymm10,ymm11,0x88
  6e826c:	c4 63 fd 01 d6 d8    	vpermpd ymm10,ymm6,0xd8
  6e8272:	c5 84 c6 c9 88       	vshufps ymm1,ymm15,ymm1,0x88
  6e8277:	c4 63 fd 01 f1 d8    	vpermpd ymm14,ymm1,0xd8
  6e827d:	c5 bc c6 cb 88       	vshufps ymm1,ymm8,ymm3,0x88
  6e8282:	c4 63 fd 01 f9 d8    	vpermpd ymm15,ymm1,0xd8
  6e8288:	c5 fc 28 9c 24 c0 00 	vmovaps ymm3,YMMWORD PTR [rsp+0xc0]
  6e828f:	00 00 
  6e8291:	c5 e4 58 f8          	vaddps ymm7,ymm3,ymm0
  6e8295:	c5 7c 28 5c 24 40    	vmovaps ymm11,YMMWORD PTR [rsp+0x40]
  6e829b:	c5 a4 58 c7          	vaddps ymm0,ymm11,ymm7
  6e829f:	c5 fc 29 44 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm0
  6e82a5:	c5 ec 58 f5          	vaddps ymm6,ymm2,ymm5
  6e82a9:	c5 b4 58 d6          	vaddps ymm2,ymm9,ymm6
  6e82ad:	c5 fc 29 54 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm2
  6e82b3:	c4 e2 7d 18 0d a4 d1 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff98d1a4]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6e82ba:	98 ff 
  6e82bc:	c4 c2 75 ac fb       	vfnmadd213ps ymm7,ymm1,ymm11
  6e82c1:	c5 14 58 dc          	vaddps ymm11,ymm13,ymm4
  6e82c5:	c4 c1 5c 5c e5       	vsubps ymm4,ymm4,ymm13
  6e82ca:	c4 41 24 58 c4       	vaddps ymm8,ymm11,ymm12
  6e82cf:	c4 c2 75 ac f1       	vfnmadd213ps ymm6,ymm1,ymm9
  6e82d4:	c4 41 0c 58 cf       	vaddps ymm9,ymm14,ymm15
  6e82d9:	c4 41 0c 5c ef       	vsubps ymm13,ymm14,ymm15
  6e82de:	c5 7c 58 fa          	vaddps ymm15,ymm0,ymm2
  6e82e2:	c4 42 75 ac dc       	vfnmadd213ps ymm11,ymm1,ymm12
  6e82e7:	c4 41 34 58 e2       	vaddps ymm12,ymm9,ymm10
  6e82ec:	c5 e4 5c 94 24 e0 00 	vsubps ymm2,ymm3,YMMWORD PTR [rsp+0xe0]
  6e82f3:	00 00 
  6e82f5:	c4 c1 3c 58 dc       	vaddps ymm3,ymm8,ymm12
  6e82fa:	c5 fc 29 9c 24 20 01 	vmovaps YMMWORD PTR [rsp+0x120],ymm3
  6e8301:	00 00 
  6e8303:	c4 62 7d 18 35 c8 cf 	vbroadcastss ymm14,DWORD PTR [rip+0xffffffffff98cfc8]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6e830a:	98 ff 
  6e830c:	c5 8c 59 c4          	vmulps ymm0,ymm14,ymm4
  6e8310:	c4 41 14 59 ee       	vmulps ymm13,ymm13,ymm14
  6e8315:	c4 42 75 ac ca       	vfnmadd213ps ymm9,ymm1,ymm10
  6e831a:	c5 44 58 d0          	vaddps ymm10,ymm7,ymm0
  6e831e:	c5 fc 28 8c 24 80 00 	vmovaps ymm1,YMMWORD PTR [rsp+0x80]
  6e8325:	00 00 
  6e8327:	c5 f4 5c e5          	vsubps ymm4,ymm1,ymm5
  6e832b:	c5 94 58 ee          	vaddps ymm5,ymm13,ymm6
  6e832f:	c5 8c 59 d2          	vmulps ymm2,ymm14,ymm2
  6e8333:	c5 c4 5c c0          	vsubps ymm0,ymm7,ymm0
  6e8337:	c5 a4 5c fa          	vsubps ymm7,ymm11,ymm2
  6e833b:	c5 8c 59 e4          	vmulps ymm4,ymm14,ymm4
  6e833f:	c4 c1 4c 5c f5       	vsubps ymm6,ymm6,ymm13
  6e8344:	c5 ac 5c cd          	vsubps ymm1,ymm10,ymm5
  6e8348:	c5 fc 29 4c 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm1
  6e834e:	c5 a4 58 d2          	vaddps ymm2,ymm11,ymm2
  6e8352:	c5 34 5c ec          	vsubps ymm13,ymm9,ymm4
  6e8356:	c5 b4 58 e4          	vaddps ymm4,ymm9,ymm4
  6e835a:	c4 41 44 5c cd       	vsubps ymm9,ymm7,ymm13
  6e835f:	c5 7c 29 8c 24 40 01 	vmovaps YMMWORD PTR [rsp+0x140],ymm9
  6e8366:	00 00 
  6e8368:	c5 fc 28 5c 24 20    	vmovaps ymm3,YMMWORD PTR [rsp+0x20]
  6e836e:	c5 64 5c 74 24 60    	vsubps ymm14,ymm3,YMMWORD PTR [rsp+0x60]
  6e8374:	c5 7c 29 b4 24 a0 01 	vmovaps YMMWORD PTR [rsp+0x1a0],ymm14
  6e837b:	00 00 
  6e837d:	c5 fc 58 de          	vaddps ymm3,ymm0,ymm6
  6e8381:	c5 fc 29 9c 24 80 01 	vmovaps YMMWORD PTR [rsp+0x180],ymm3
  6e8388:	00 00 
  6e838a:	c4 41 3c 5c dc       	vsubps ymm11,ymm8,ymm12
  6e838f:	c5 6c 58 c4          	vaddps ymm8,ymm2,ymm4
  6e8393:	c5 ac 58 ed          	vaddps ymm5,ymm10,ymm5
  6e8397:	c5 fc 29 ac 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm5
  6e839e:	00 00 
  6e83a0:	c5 14 58 ef          	vaddps ymm13,ymm13,ymm7
  6e83a4:	c5 fc 5c f6          	vsubps ymm6,ymm0,ymm6
  6e83a8:	c5 6c 5c e4          	vsubps ymm12,ymm2,ymm4
  6e83ac:	c4 e3 05 06 c5 31    	vperm2f128 ymm0,ymm15,ymm5,0x31
  6e83b2:	c5 fc 29 44 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm0
  6e83b8:	c4 e3 75 06 d6 31    	vperm2f128 ymm2,ymm1,ymm6,0x31
  6e83be:	c5 fc 29 54 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm2
  6e83c4:	c4 63 7d 19 f5 01    	vextractf128 xmm5,ymm14,0x1
  6e83ca:	c5 fc 29 ac 24 c0 01 	vmovaps YMMWORD PTR [rsp+0x1c0],ymm5
  6e83d1:	00 00 
  6e83d3:	c4 e3 7d 19 df 01    	vextractf128 xmm7,ymm3,0x1
  6e83d9:	c5 fc 29 bc 24 e0 01 	vmovaps YMMWORD PTR [rsp+0x1e0],ymm7
  6e83e0:	00 00 
  6e83e2:	c5 fc 14 ca          	vunpcklps ymm1,ymm0,ymm2
  6e83e6:	c5 fc 29 8c 24 60 02 	vmovaps YMMWORD PTR [rsp+0x260],ymm1
  6e83ed:	00 00 
  6e83ef:	c5 7c 28 94 24 20 01 	vmovaps ymm10,YMMWORD PTR [rsp+0x120]
  6e83f6:	00 00 
  6e83f8:	c4 c3 2d 06 e5 31    	vperm2f128 ymm4,ymm10,ymm13,0x31
  6e83fe:	c5 fc 29 a4 24 60 01 	vmovaps YMMWORD PTR [rsp+0x160],ymm4
  6e8405:	00 00 
  6e8407:	c4 c3 35 06 d4 31    	vperm2f128 ymm2,ymm9,ymm12,0x31
  6e840d:	c5 fc 29 94 24 00 01 	vmovaps YMMWORD PTR [rsp+0x100],ymm2
  6e8414:	00 00 
  6e8416:	c5 c4 14 c5          	vunpcklps ymm0,ymm7,ymm5
  6e841a:	c5 fc 29 84 24 c0 00 	vmovaps YMMWORD PTR [rsp+0xc0],ymm0
  6e8421:	00 00 
  6e8423:	c4 43 7d 19 c6 01    	vextractf128 xmm14,ymm8,0x1
  6e8429:	c5 7c 29 c3          	vmovaps ymm3,ymm8
  6e842d:	c4 63 7d 19 df 01    	vextractf128 xmm7,ymm11,0x1
  6e8433:	c5 5c 14 c2          	vunpcklps ymm8,ymm4,ymm2
  6e8437:	c5 7c 29 84 24 00 02 	vmovaps YMMWORD PTR [rsp+0x200],ymm8
  6e843e:	00 00 
  6e8440:	c5 f5 14 c0          	vunpcklpd ymm0,ymm1,ymm0
  6e8444:	c5 8c 14 ef          	vunpcklps ymm5,ymm14,ymm7
  6e8448:	c5 fc 29 ac 24 20 02 	vmovaps YMMWORD PTR [rsp+0x220],ymm5
  6e844f:	00 00 
  6e8451:	c5 fc 10 a1 00 01 00 	vmovups ymm4,YMMWORD PTR [rcx+0x100]
  6e8458:	00 
  6e8459:	c5 fc 10 89 20 01 00 	vmovups ymm1,YMMWORD PTR [rcx+0x120]
  6e8460:	00 
  6e8461:	c5 bd 14 ed          	vunpcklpd ymm5,ymm8,ymm5
  6e8465:	c5 5c 59 c0          	vmulps ymm8,ymm4,ymm0
  6e8469:	c4 62 55 bc c1       	vfnmadd231ps ymm8,ymm5,ymm1
  6e846e:	c5 7c 29 84 24 e0 00 	vmovaps YMMWORD PTR [rsp+0xe0],ymm8
  6e8475:	00 00 
  6e8477:	c5 dc 59 e5          	vmulps ymm4,ymm4,ymm5
  6e847b:	c4 e2 7d b8 e1       	vfmadd231ps ymm4,ymm0,ymm1
  6e8480:	c5 fc 29 a4 24 40 02 	vmovaps YMMWORD PTR [rsp+0x240],ymm4
  6e8487:	00 00 
  6e8489:	c4 63 05 18 8c 24 80 	vinsertf128 ymm9,ymm15,XMMWORD PTR [rsp+0x80],0x1
  6e8490:	00 00 00 01 
  6e8494:	c5 fc 28 44 24 40    	vmovaps ymm0,YMMWORD PTR [rsp+0x40]
  6e849a:	c4 63 7d 18 fe 01    	vinsertf128 ymm15,ymm0,xmm6,0x1
  6e84a0:	c4 43 2d 18 ed 01    	vinsertf128 ymm13,ymm10,xmm13,0x1
  6e84a6:	c5 fc 28 84 24 40 01 	vmovaps ymm0,YMMWORD PTR [rsp+0x140]
  6e84ad:	00 00 
  6e84af:	c4 43 7d 18 d4 01    	vinsertf128 ymm10,ymm0,xmm12,0x1
  6e84b5:	c5 78 28 84 24 80 01 	vmovaps xmm8,XMMWORD PTR [rsp+0x180]
  6e84bc:	00 00 
  6e84be:	c5 f8 28 a4 24 a0 01 	vmovaps xmm4,XMMWORD PTR [rsp+0x1a0]
  6e84c5:	00 00 
  6e84c7:	c5 78 29 de          	vmovaps xmm6,xmm11
  6e84cb:	c5 f8 28 db          	vmovaps xmm3,xmm3
  6e84cf:	c4 c1 34 15 c7       	vunpckhps ymm0,ymm9,ymm15
  6e84d4:	c5 fc 29 84 24 a0 01 	vmovaps YMMWORD PTR [rsp+0x1a0],ymm0
  6e84db:	00 00 
  6e84dd:	c5 bc 15 cc          	vunpckhps ymm1,ymm8,ymm4
  6e84e1:	c5 fc 29 4c 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm1
  6e84e7:	c4 41 14 15 e2       	vunpckhps ymm12,ymm13,ymm10
  6e84ec:	c5 7c 29 a4 24 40 01 	vmovaps YMMWORD PTR [rsp+0x140],ymm12
  6e84f3:	00 00 
  6e84f5:	c5 fd 14 e9          	vunpcklpd ymm5,ymm0,ymm1
  6e84f9:	c5 e4 15 c6          	vunpckhps ymm0,ymm3,ymm6
  6e84fd:	c5 fc 29 84 24 80 01 	vmovaps YMMWORD PTR [rsp+0x180],ymm0
  6e8504:	00 00 
  6e8506:	c5 7c 10 99 80 00 00 	vmovups ymm11,YMMWORD PTR [rcx+0x80]
  6e850d:	00 
  6e850e:	c5 fc 10 91 a0 00 00 	vmovups ymm2,YMMWORD PTR [rcx+0xa0]
  6e8515:	00 
  6e8516:	c5 9d 14 c8          	vunpcklpd ymm1,ymm12,ymm0
  6e851a:	c5 24 59 e5          	vmulps ymm12,ymm11,ymm5
  6e851e:	c4 62 75 bc e2       	vfnmadd231ps ymm12,ymm1,ymm2
  6e8523:	c5 7c 29 a4 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm12
  6e852a:	00 00 
  6e852c:	c5 24 59 e1          	vmulps ymm12,ymm11,ymm1
  6e8530:	c4 62 55 b8 e2       	vfmadd231ps ymm12,ymm5,ymm2
  6e8535:	c5 fc 28 44 24 20    	vmovaps ymm0,YMMWORD PTR [rsp+0x20]
  6e853b:	c5 fc 15 4c 24 60    	vunpckhps ymm1,ymm0,YMMWORD PTR [rsp+0x60]
  6e8541:	c5 fc 29 4c 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm1
  6e8547:	c5 fc 28 84 24 e0 01 	vmovaps ymm0,YMMWORD PTR [rsp+0x1e0]
  6e854e:	00 00 
  6e8550:	c5 fc 15 94 24 c0 01 	vunpckhps ymm2,ymm0,YMMWORD PTR [rsp+0x1c0]
  6e8557:	00 00 
  6e8559:	c5 fc 29 54 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm2
  6e855f:	c5 fc 28 84 24 60 01 	vmovaps ymm0,YMMWORD PTR [rsp+0x160]
  6e8566:	00 00 
  6e8568:	c5 7c 15 9c 24 00 01 	vunpckhps ymm11,ymm0,YMMWORD PTR [rsp+0x100]
  6e856f:	00 00 
  6e8571:	c5 7c 29 9c 24 c0 01 	vmovaps YMMWORD PTR [rsp+0x1c0],ymm11
  6e8578:	00 00 
  6e857a:	c5 8c 15 ef          	vunpckhps ymm5,ymm14,ymm7
  6e857e:	c5 fc 29 ac 24 e0 01 	vmovaps YMMWORD PTR [rsp+0x1e0],ymm5
  6e8585:	00 00 
  6e8587:	c5 f5 14 d2          	vunpcklpd ymm2,ymm1,ymm2
  6e858b:	c5 fc 10 89 80 01 00 	vmovups ymm1,YMMWORD PTR [rcx+0x180]
  6e8592:	00 
  6e8593:	c5 fc 10 81 a0 01 00 	vmovups ymm0,YMMWORD PTR [rcx+0x1a0]
  6e859a:	00 
  6e859b:	c5 a5 14 ed          	vunpcklpd ymm5,ymm11,ymm5
  6e859f:	c5 74 59 f2          	vmulps ymm14,ymm1,ymm2
  6e85a3:	c4 62 55 bc f0       	vfnmadd231ps ymm14,ymm5,ymm0
  6e85a8:	c5 74 59 dd          	vmulps ymm11,ymm1,ymm5
  6e85ac:	c4 62 6d b8 d8       	vfmadd231ps ymm11,ymm2,ymm0
  6e85b1:	c4 c1 34 14 cf       	vunpcklps ymm1,ymm9,ymm15
  6e85b6:	c5 fc 29 8c 24 20 01 	vmovaps YMMWORD PTR [rsp+0x120],ymm1
  6e85bd:	00 00 
  6e85bf:	c5 bc 14 c4          	vunpcklps ymm0,ymm8,ymm4
  6e85c3:	c5 fc 29 84 24 60 01 	vmovaps YMMWORD PTR [rsp+0x160],ymm0
  6e85ca:	00 00 
  6e85cc:	c4 c1 14 14 e2       	vunpcklps ymm4,ymm13,ymm10
  6e85d1:	c5 fc 29 a4 24 00 01 	vmovaps YMMWORD PTR [rsp+0x100],ymm4
  6e85d8:	00 00 
  6e85da:	c5 64 14 fe          	vunpcklps ymm15,ymm3,ymm6
  6e85de:	c5 f5 15 c0          	vunpckhpd ymm0,ymm1,ymm0
  6e85e2:	c5 fc 10 49 40       	vmovups ymm1,YMMWORD PTR [rcx+0x40]
  6e85e7:	c5 fc 10 51 60       	vmovups ymm2,YMMWORD PTR [rcx+0x60]
  6e85ec:	c4 c1 5d 15 df       	vunpckhpd ymm3,ymm4,ymm15
  6e85f1:	c5 74 59 c8          	vmulps ymm9,ymm1,ymm0
  6e85f5:	c4 62 65 bc ca       	vfnmadd231ps ymm9,ymm3,ymm2
  6e85fa:	c5 74 59 c3          	vmulps ymm8,ymm1,ymm3
  6e85fe:	c4 62 7d b8 c2       	vfmadd231ps ymm8,ymm0,ymm2
  6e8603:	c5 fc 28 84 24 60 02 	vmovaps ymm0,YMMWORD PTR [rsp+0x260]
  6e860a:	00 00 
  6e860c:	c5 fd 15 84 24 c0 00 	vunpckhpd ymm0,ymm0,YMMWORD PTR [rsp+0xc0]
  6e8613:	00 00 
  6e8615:	c5 fc 28 8c 24 00 02 	vmovaps ymm1,YMMWORD PTR [rsp+0x200]
  6e861c:	00 00 
  6e861e:	c5 f5 15 8c 24 20 02 	vunpckhpd ymm1,ymm1,YMMWORD PTR [rsp+0x220]
  6e8625:	00 00 
  6e8627:	c5 fc 10 b1 40 01 00 	vmovups ymm6,YMMWORD PTR [rcx+0x140]
  6e862e:	00 
  6e862f:	c5 7c 10 a9 60 01 00 	vmovups ymm13,YMMWORD PTR [rcx+0x160]
  6e8636:	00 
  6e8637:	c5 cc 59 f8          	vmulps ymm7,ymm6,ymm0
  6e863b:	c4 c2 75 bc fd       	vfnmadd231ps ymm7,ymm1,ymm13
  6e8640:	c5 cc 59 e9          	vmulps ymm5,ymm6,ymm1
  6e8644:	c4 c2 7d b8 ed       	vfmadd231ps ymm5,ymm0,ymm13
  6e8649:	c5 fc 28 84 24 a0 01 	vmovaps ymm0,YMMWORD PTR [rsp+0x1a0]
  6e8650:	00 00 
  6e8652:	c5 fd 15 74 24 40    	vunpckhpd ymm6,ymm0,YMMWORD PTR [rsp+0x40]
  6e8658:	c5 fc 28 84 24 40 01 	vmovaps ymm0,YMMWORD PTR [rsp+0x140]
  6e865f:	00 00 
  6e8661:	c5 7d 15 ac 24 80 01 	vunpckhpd ymm13,ymm0,YMMWORD PTR [rsp+0x180]
  6e8668:	00 00 
  6e866a:	c5 fc 10 81 c0 00 00 	vmovups ymm0,YMMWORD PTR [rcx+0xc0]
  6e8671:	00 
  6e8672:	c5 7c 10 91 e0 00 00 	vmovups ymm10,YMMWORD PTR [rcx+0xe0]
  6e8679:	00 
  6e867a:	c5 fc 59 e6          	vmulps ymm4,ymm0,ymm6
  6e867e:	c4 c2 15 bc e2       	vfnmadd231ps ymm4,ymm13,ymm10
  6e8683:	c5 14 59 e8          	vmulps ymm13,ymm13,ymm0
  6e8687:	c4 42 4d b8 ea       	vfmadd231ps ymm13,ymm6,ymm10
  6e868c:	c5 fc 28 44 24 20    	vmovaps ymm0,YMMWORD PTR [rsp+0x20]
  6e8692:	c5 fd 15 5c 24 60    	vunpckhpd ymm3,ymm0,YMMWORD PTR [rsp+0x60]
  6e8698:	c5 fc 28 84 24 c0 01 	vmovaps ymm0,YMMWORD PTR [rsp+0x1c0]
  6e869f:	00 00 
  6e86a1:	c5 fd 15 b4 24 e0 01 	vunpckhpd ymm6,ymm0,YMMWORD PTR [rsp+0x1e0]
  6e86a8:	00 00 
  6e86aa:	c5 7c 10 91 c0 01 00 	vmovups ymm10,YMMWORD PTR [rcx+0x1c0]
  6e86b1:	00 
  6e86b2:	c5 fc 10 91 e0 01 00 	vmovups ymm2,YMMWORD PTR [rcx+0x1e0]
  6e86b9:	00 
  6e86ba:	c5 ac 59 cb          	vmulps ymm1,ymm10,ymm3
  6e86be:	c4 e2 4d bc ca       	vfnmadd231ps ymm1,ymm6,ymm2
  6e86c3:	c5 ac 59 c6          	vmulps ymm0,ymm10,ymm6
  6e86c7:	c4 e2 65 b8 c2       	vfmadd231ps ymm0,ymm3,ymm2
  6e86cc:	c5 fc 28 94 24 20 01 	vmovaps ymm2,YMMWORD PTR [rsp+0x120]
  6e86d3:	00 00 
  6e86d5:	c5 ed 14 94 24 60 01 	vunpcklpd ymm2,ymm2,YMMWORD PTR [rsp+0x160]
  6e86dc:	00 00 
  6e86de:	c5 fc 28 9c 24 00 01 	vmovaps ymm3,YMMWORD PTR [rsp+0x100]
  6e86e5:	00 00 
  6e86e7:	c4 c1 65 14 df       	vunpcklpd ymm3,ymm3,ymm15
  6e86ec:	c5 7c 28 94 24 e0 00 	vmovaps ymm10,YMMWORD PTR [rsp+0xe0]
  6e86f3:	00 00 
  6e86f5:	c5 ac 58 f2          	vaddps ymm6,ymm10,ymm2
  6e86f9:	c4 c1 6c 5c d2       	vsubps ymm2,ymm2,ymm10
  6e86fe:	c5 fc 29 54 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm2
  6e8704:	c4 41 1c 58 d3       	vaddps ymm10,ymm12,ymm11
  6e8709:	c4 41 1c 5c fb       	vsubps ymm15,ymm12,ymm11
  6e870e:	c5 34 58 df          	vaddps ymm11,ymm9,ymm7
  6e8712:	c5 b4 5c ff          	vsubps ymm7,ymm9,ymm7
  6e8716:	c5 3c 58 cd          	vaddps ymm9,ymm8,ymm5
  6e871a:	c5 bc 5c ed          	vsubps ymm5,ymm8,ymm5
  6e871e:	c5 14 58 c0          	vaddps ymm8,ymm13,ymm0
  6e8722:	c5 94 5c d0          	vsubps ymm2,ymm13,ymm0
  6e8726:	c5 5c 58 e1          	vaddps ymm12,ymm4,ymm1
  6e872a:	c5 dc 5c e1          	vsubps ymm4,ymm4,ymm1
  6e872e:	c5 fc 28 84 24 40 02 	vmovaps ymm0,YMMWORD PTR [rsp+0x240]
  6e8735:	00 00 
  6e8737:	c5 7c 58 eb          	vaddps ymm13,ymm0,ymm3
  6e873b:	c5 e4 5c d8          	vsubps ymm3,ymm3,ymm0
  6e873f:	c5 fc 28 8c 24 80 00 	vmovaps ymm1,YMMWORD PTR [rsp+0x80]
  6e8746:	00 00 
  6e8748:	c5 8c 58 c1          	vaddps ymm0,ymm14,ymm1
  6e874c:	c5 8c 5c c9          	vsubps ymm1,ymm14,ymm1
  6e8750:	c5 44 58 f5          	vaddps ymm14,ymm7,ymm5
  6e8754:	c5 7c 29 74 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm14
  6e875a:	c5 d4 5c ef          	vsubps ymm5,ymm5,ymm7
  6e875e:	c5 fc 29 ac 24 c0 00 	vmovaps YMMWORD PTR [rsp+0xc0],ymm5
  6e8765:	00 00 
  6e8767:	c5 ec 5c ec          	vsubps ymm5,ymm2,ymm4
  6e876b:	c5 fc 29 ac 24 e0 00 	vmovaps YMMWORD PTR [rsp+0xe0],ymm5
  6e8772:	00 00 
  6e8774:	c5 dc 58 fa          	vaddps ymm7,ymm4,ymm2
  6e8778:	c5 cc 58 d0          	vaddps ymm2,ymm6,ymm0
  6e877c:	c5 fc 29 54 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm2
  6e8782:	c5 cc 5c c0          	vsubps ymm0,ymm6,ymm0
  6e8786:	c4 c1 34 58 f0       	vaddps ymm6,ymm9,ymm8
  6e878b:	c4 c1 34 5c e0       	vsubps ymm4,ymm9,ymm8
  6e8790:	c4 41 2c 58 c5       	vaddps ymm8,ymm10,ymm13
  6e8795:	c4 41 14 5c ea       	vsubps ymm13,ymm13,ymm10
  6e879a:	c4 41 24 58 f4       	vaddps ymm14,ymm11,ymm12
  6e879f:	c4 c1 1c 5c d3       	vsubps ymm2,ymm12,ymm11
  6e87a4:	c5 fc 28 6c 24 20    	vmovaps ymm5,YMMWORD PTR [rsp+0x20]
  6e87aa:	c5 04 58 cd          	vaddps ymm9,ymm15,ymm5
  6e87ae:	c4 c1 54 5c ef       	vsubps ymm5,ymm5,ymm15
  6e87b3:	c5 fc 29 6c 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm5
  6e87b9:	c5 f4 58 eb          	vaddps ymm5,ymm1,ymm3
  6e87bd:	c5 64 5c f9          	vsubps ymm15,ymm3,ymm1
  6e87c1:	c5 7c 58 d4          	vaddps ymm10,ymm0,ymm4
  6e87c5:	c5 fc 5c c4          	vsubps ymm0,ymm0,ymm4
  6e87c9:	c5 fc 29 84 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm0
  6e87d0:	00 00 
  6e87d2:	c4 e2 7d 18 05 c1 cb 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff98cbc1]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  6e87d9:	98 ff 
  6e87db:	c5 fc 59 9c 24 c0 00 	vmulps ymm3,ymm0,YMMWORD PTR [rsp+0xc0]
  6e87e2:	00 00 
  6e87e4:	c5 c4 59 e0          	vmulps ymm4,ymm7,ymm0
  6e87e8:	c5 e4 5c cc          	vsubps ymm1,ymm3,ymm4
  6e87ec:	c5 e4 58 dc          	vaddps ymm3,ymm3,ymm4
  6e87f0:	c5 fc 59 64 24 40    	vmulps ymm4,ymm0,YMMWORD PTR [rsp+0x40]
  6e87f6:	c5 fc 59 bc 24 e0 00 	vmulps ymm7,ymm0,YMMWORD PTR [rsp+0xe0]
  6e87fd:	00 00 
  6e87ff:	c5 dc 58 c7          	vaddps ymm0,ymm4,ymm7
  6e8803:	c5 c4 5c e4          	vsubps ymm4,ymm7,ymm4
  6e8807:	c5 14 58 da          	vaddps ymm11,ymm13,ymm2
  6e880b:	c5 14 5c ea          	vsubps ymm13,ymm13,ymm2
  6e880f:	c5 b4 58 d0          	vaddps ymm2,ymm9,ymm0
  6e8813:	c5 34 5c e0          	vsubps ymm12,ymm9,ymm0
  6e8817:	c5 bc 5c fe          	vsubps ymm7,ymm8,ymm6
  6e881b:	c5 3c 58 ce          	vaddps ymm9,ymm8,ymm6
  6e881f:	c5 d4 58 c1          	vaddps ymm0,ymm5,ymm1
  6e8823:	c5 d4 5c f1          	vsubps ymm6,ymm5,ymm1
  6e8827:	c5 fc 28 4c 24 60    	vmovaps ymm1,YMMWORD PTR [rsp+0x60]
  6e882d:	c4 41 74 5c c6       	vsubps ymm8,ymm1,ymm14
  6e8832:	c5 8c 58 c9          	vaddps ymm1,ymm14,ymm1
  6e8836:	c5 b4 14 e9          	vunpcklps ymm5,ymm9,ymm1
  6e883a:	c5 30 14 f1          	vunpcklps xmm14,xmm9,xmm1
  6e883e:	c5 b0 15 c9          	vunpckhps xmm1,xmm9,xmm1
  6e8842:	c5 f8 11 4c 16 10    	vmovups XMMWORD PTR [rsi+rdx*1+0x10],xmm1
  6e8848:	c5 7c 28 4c 24 20    	vmovaps ymm9,YMMWORD PTR [rsp+0x20]
  6e884e:	c5 b4 58 cb          	vaddps ymm1,ymm9,ymm3
  6e8852:	c5 b4 5c db          	vsubps ymm3,ymm9,ymm3
  6e8856:	c5 78 11 34 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm14
  6e885b:	c5 04 58 cc          	vaddps ymm9,ymm15,ymm4
  6e885f:	c4 e3 7d 19 6c 16 20 	vextractf128 XMMWORD PTR [rsi+rdx*1+0x20],ymm5,0x1
  6e8866:	01 
  6e8867:	c5 84 5c e4          	vsubps ymm4,ymm15,ymm4
  6e886b:	c5 fc 14 ea          	vunpcklps ymm5,ymm0,ymm2
  6e886f:	c5 78 14 f2          	vunpcklps xmm14,xmm0,xmm2
  6e8873:	c5 f8 15 c2          	vunpckhps xmm0,xmm0,xmm2
  6e8877:	c5 f8 11 44 16 40    	vmovups XMMWORD PTR [rsi+rdx*1+0x40],xmm0
  6e887d:	c5 78 11 74 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm14
  6e8883:	c4 e3 7d 19 6c 16 50 	vextractf128 XMMWORD PTR [rsi+rdx*1+0x50],ymm5,0x1
  6e888a:	01 
  6e888b:	c4 c1 24 14 c2       	vunpcklps ymm0,ymm11,ymm10
  6e8890:	c4 c1 20 14 d2       	vunpcklps xmm2,xmm11,xmm10
  6e8895:	c4 c1 20 15 ea       	vunpckhps xmm5,xmm11,xmm10
  6e889a:	c5 f8 11 6c 16 70    	vmovups XMMWORD PTR [rsi+rdx*1+0x70],xmm5
  6e88a0:	c5 f8 11 54 16 60    	vmovups XMMWORD PTR [rsi+rdx*1+0x60],xmm2
  6e88a6:	c4 e3 7d 19 84 16 80 	vextractf128 XMMWORD PTR [rsi+rdx*1+0x80],ymm0,0x1
  6e88ad:	00 00 00 01 
  6e88b1:	c5 b4 14 c1          	vunpcklps ymm0,ymm9,ymm1
  6e88b5:	c5 b0 14 d1          	vunpcklps xmm2,xmm9,xmm1
  6e88b9:	c5 b0 15 c9          	vunpckhps xmm1,xmm9,xmm1
  6e88bd:	c5 f8 11 8c 16 a0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xa0],xmm1
  6e88c4:	00 00 
  6e88c6:	c5 f8 11 94 16 90 00 	vmovups XMMWORD PTR [rsi+rdx*1+0x90],xmm2
  6e88cd:	00 00 
  6e88cf:	c4 e3 7d 19 84 16 b0 	vextractf128 XMMWORD PTR [rsi+rdx*1+0xb0],ymm0,0x1
  6e88d6:	00 00 00 01 
  6e88da:	c4 c1 44 14 c0       	vunpcklps ymm0,ymm7,ymm8
  6e88df:	c4 c1 40 14 c8       	vunpcklps xmm1,xmm7,xmm8
  6e88e4:	c4 c1 40 15 d0       	vunpckhps xmm2,xmm7,xmm8
  6e88e9:	c5 f8 11 94 16 d0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xd0],xmm2
  6e88f0:	00 00 
  6e88f2:	c5 f8 11 8c 16 c0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xc0],xmm1
  6e88f9:	00 00 
  6e88fb:	c4 e3 7d 19 84 16 e0 	vextractf128 XMMWORD PTR [rsi+rdx*1+0xe0],ymm0,0x1
  6e8902:	00 00 00 01 
  6e8906:	c4 c1 4c 14 c4       	vunpcklps ymm0,ymm6,ymm12
  6e890b:	c4 c1 48 14 cc       	vunpcklps xmm1,xmm6,xmm12
  6e8910:	c4 c1 48 15 d4       	vunpckhps xmm2,xmm6,xmm12
  6e8915:	c5 f8 11 94 16 00 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x100],xmm2
  6e891c:	00 00 
  6e891e:	c5 f8 11 8c 16 f0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xf0],xmm1
  6e8925:	00 00 
  6e8927:	c4 e3 7d 19 84 16 10 	vextractf128 XMMWORD PTR [rsi+rdx*1+0x110],ymm0,0x1
  6e892e:	01 00 00 01 
  6e8932:	c5 fc 28 94 24 80 00 	vmovaps ymm2,YMMWORD PTR [rsp+0x80]
  6e8939:	00 00 
  6e893b:	c5 94 14 c2          	vunpcklps ymm0,ymm13,ymm2
  6e893f:	c5 90 14 ca          	vunpcklps xmm1,xmm13,xmm2
  6e8943:	c5 90 15 d2          	vunpckhps xmm2,xmm13,xmm2
  6e8947:	c5 f8 11 94 16 30 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x130],xmm2
  6e894e:	00 00 
  6e8950:	c5 f8 11 8c 16 20 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x120],xmm1
  6e8957:	00 00 
  6e8959:	c4 e3 7d 19 84 16 40 	vextractf128 XMMWORD PTR [rsi+rdx*1+0x140],ymm0,0x1
  6e8960:	01 00 00 01 
  6e8964:	c5 dc 14 c3          	vunpcklps ymm0,ymm4,ymm3
  6e8968:	c5 d8 14 cb          	vunpcklps xmm1,xmm4,xmm3
  6e896c:	c5 d8 15 d3          	vunpckhps xmm2,xmm4,xmm3
  6e8970:	c5 f8 11 94 16 60 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x160],xmm2
  6e8977:	00 00 
  6e8979:	c5 f8 11 8c 16 50 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x150],xmm1
  6e8980:	00 00 
  6e8982:	c4 e3 7d 19 84 16 70 	vextractf128 XMMWORD PTR [rsi+rdx*1+0x170],ymm0,0x1
  6e8989:	01 00 00 01 
  6e898d:	48 81 c2 80 01 00 00 	add    rdx,0x180
  6e8994:	48 39 d0             	cmp    rax,rdx
  6e8997:	0f 85 d3 f7 ff ff    	jne    6e8170 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle+0x30>
  6e899d:	48 89 ec             	mov    rsp,rbp
  6e89a0:	5d                   	pop    rbp
  6e89a1:	c5 f8 77             	vzeroupper
  6e89a4:	c3                   	ret
