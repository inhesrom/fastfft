
target/small-latency/final-source/executable-0:     file format elf64-x86-64


Disassembly of section .text:

00000000002860a0 <<fastfft::engine::small::specialized::Avx2Leaf as fastfft::engine::small::Kernel<fastfft::isa::x86::small::F32x4f>>::run>:
  2860a0:	50                   	push   %rax
  2860a1:	48 c1 e2 08          	shl    $0x8,%rdx
  2860a5:	31 c0                	xor    %eax,%eax
  2860a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  2860ae:	00 00 
  2860b0:	c5 fc 10 04 07       	vmovups (%rdi,%rax,1),%ymm0
  2860b5:	c5 fc 10 4c 07 20    	vmovups 0x20(%rdi,%rax,1),%ymm1
  2860bb:	c5 fc 10 54 07 40    	vmovups 0x40(%rdi,%rax,1),%ymm2
  2860c1:	c5 fc 10 5c 07 60    	vmovups 0x60(%rdi,%rax,1),%ymm3
  2860c7:	c5 fc 10 a4 07 80 00 	vmovups 0x80(%rdi,%rax,1),%ymm4
  2860ce:	00 00 
  2860d0:	c5 fc 10 ac 07 a0 00 	vmovups 0xa0(%rdi,%rax,1),%ymm5
  2860d7:	00 00 
  2860d9:	c5 fc 10 b4 07 c0 00 	vmovups 0xc0(%rdi,%rax,1),%ymm6
  2860e0:	00 00 
  2860e2:	c5 fc 10 bc 07 e0 00 	vmovups 0xe0(%rdi,%rax,1),%ymm7
  2860e9:	00 00 
  2860eb:	c5 7c c6 c1 dd       	vshufps $0xdd,%ymm1,%ymm0,%ymm8
  2860f0:	c4 43 fd 01 c0 d8    	vpermpd $0xd8,%ymm8,%ymm8
  2860f6:	c5 5c c6 cd dd       	vshufps $0xdd,%ymm5,%ymm4,%ymm9
  2860fb:	c4 43 fd 01 c9 d8    	vpermpd $0xd8,%ymm9,%ymm9
  286101:	c4 41 3c 58 d1       	vaddps %ymm9,%ymm8,%ymm10
  286106:	c4 41 3c 5c c1       	vsubps %ymm9,%ymm8,%ymm8
  28610b:	c5 6c c6 cb dd       	vshufps $0xdd,%ymm3,%ymm2,%ymm9
  286110:	c4 43 fd 01 c9 d8    	vpermpd $0xd8,%ymm9,%ymm9
  286116:	c5 4c c6 df dd       	vshufps $0xdd,%ymm7,%ymm6,%ymm11
  28611b:	c4 43 fd 01 db d8    	vpermpd $0xd8,%ymm11,%ymm11
  286121:	c4 41 34 58 e3       	vaddps %ymm11,%ymm9,%ymm12
  286126:	c4 41 34 5c cb       	vsubps %ymm11,%ymm9,%ymm9
  28612b:	c5 fc c6 c1 88       	vshufps $0x88,%ymm1,%ymm0,%ymm0
  286130:	c4 e3 fd 01 c0 d8    	vpermpd $0xd8,%ymm0,%ymm0
  286136:	c5 dc c6 cd 88       	vshufps $0x88,%ymm5,%ymm4,%ymm1
  28613b:	c4 e3 fd 01 c9 d8    	vpermpd $0xd8,%ymm1,%ymm1
  286141:	c5 fc 58 e1          	vaddps %ymm1,%ymm0,%ymm4
  286145:	c5 fc 5c c1          	vsubps %ymm1,%ymm0,%ymm0
  286149:	c5 ec c6 cb 88       	vshufps $0x88,%ymm3,%ymm2,%ymm1
  28614e:	c4 e3 fd 01 c9 d8    	vpermpd $0xd8,%ymm1,%ymm1
  286154:	c5 cc c6 d7 88       	vshufps $0x88,%ymm7,%ymm6,%ymm2
  286159:	c4 e3 fd 01 d2 d8    	vpermpd $0xd8,%ymm2,%ymm2
  28615f:	c5 f4 58 da          	vaddps %ymm2,%ymm1,%ymm3
  286163:	c5 f4 5c ca          	vsubps %ymm2,%ymm1,%ymm1
  286167:	c4 c1 2c 58 d4       	vaddps %ymm12,%ymm10,%ymm2
  28616c:	c5 bc 58 e9          	vaddps %ymm1,%ymm8,%ymm5
  286170:	c4 c1 2c 5c f4       	vsubps %ymm12,%ymm10,%ymm6
  286175:	c5 bc 5c c9          	vsubps %ymm1,%ymm8,%ymm1
  286179:	c5 5c 58 c3          	vaddps %ymm3,%ymm4,%ymm8
  28617d:	c4 41 7c 5c d1       	vsubps %ymm9,%ymm0,%ymm10
  286182:	c5 dc 5c e3          	vsubps %ymm3,%ymm4,%ymm4
  286186:	c5 34 58 d8          	vaddps %ymm0,%ymm9,%ymm11
  28618a:	c5 ec 14 dd          	vunpcklps %ymm5,%ymm2,%ymm3
  28618e:	c5 ec 15 d5          	vunpckhps %ymm5,%ymm2,%ymm2
  286192:	c5 cc 14 f9          	vunpcklps %ymm1,%ymm6,%ymm7
  286196:	c5 cc 15 c9          	vunpckhps %ymm1,%ymm6,%ymm1
  28619a:	c5 e5 14 f7          	vunpcklpd %ymm7,%ymm3,%ymm6
  28619e:	c5 ed 14 e9          	vunpcklpd %ymm1,%ymm2,%ymm5
  2861a2:	c5 65 15 e7          	vunpckhpd %ymm7,%ymm3,%ymm12
  2861a6:	c5 ed 15 d9          	vunpckhpd %ymm1,%ymm2,%ymm3
  2861aa:	c4 c3 7d 19 f1 01    	vextractf128 $0x1,%ymm6,%xmm9
  2861b0:	c4 63 7d 19 e7 01    	vextractf128 $0x1,%ymm12,%xmm7
  2861b6:	c4 e3 7d 19 6c 24 80 	vextractf128 $0x1,%ymm5,-0x80(%rsp)
  2861bd:	01 
  2861be:	c4 c1 3c 14 ca       	vunpcklps %ymm10,%ymm8,%ymm1
  2861c3:	c4 c1 3c 15 d2       	vunpckhps %ymm10,%ymm8,%ymm2
  2861c8:	c4 41 5c 14 c3       	vunpcklps %ymm11,%ymm4,%ymm8
  2861cd:	c4 41 5c 15 d3       	vunpckhps %ymm11,%ymm4,%ymm10
  2861d2:	c4 c1 75 14 c0       	vunpcklpd %ymm8,%ymm1,%ymm0
  2861d7:	c5 fc 11 44 24 e0    	vmovups %ymm0,-0x20(%rsp)
  2861dd:	c4 41 6d 14 fa       	vunpcklpd %ymm10,%ymm2,%ymm15
  2861e2:	c4 c1 75 15 c8       	vunpckhpd %ymm8,%ymm1,%ymm1
  2861e7:	c4 41 6d 15 c2       	vunpckhpd %ymm10,%ymm2,%ymm8
  2861ec:	c4 c3 7d 19 c6 01    	vextractf128 $0x1,%ymm0,%xmm14
  2861f2:	c4 e3 7d 19 c8 01    	vextractf128 $0x1,%ymm1,%xmm0
  2861f8:	c4 43 7d 19 fd 01    	vextractf128 $0x1,%ymm15,%xmm13
  2861fe:	c5 f8 28 15 7a 03 df 	vmovaps -0x20fc86(%rip),%xmm2        # 76580 <__abi_tag+0x76284>
  286205:	ff 
  286206:	c5 70 59 d2          	vmulps %xmm2,%xmm1,%xmm10
  28620a:	c5 f8 28 25 9e e2 de 	vmovaps -0x211d62(%rip),%xmm4        # 744b0 <__abi_tag+0x741b4>
  286211:	ff 
  286212:	c4 62 19 b8 d4       	vfmadd231ps %xmm4,%xmm12,%xmm10
  286217:	c5 78 29 54 24 90    	vmovaps %xmm10,-0x70(%rsp)
  28621d:	c5 f0 59 cc          	vmulps %xmm4,%xmm1,%xmm1
  286221:	c4 e2 19 bc ca       	vfnmadd231ps %xmm2,%xmm12,%xmm1
  286226:	c5 f8 29 4c 24 a0    	vmovaps %xmm1,-0x60(%rsp)
  28622c:	c5 f8 28 0d 2c d1 de 	vmovaps -0x212ed4(%rip),%xmm1        # 73360 <__abi_tag+0x73064>
  286233:	ff 
  286234:	c5 00 59 d9          	vmulps %xmm1,%xmm15,%xmm11
  286238:	c5 f8 28 15 50 03 df 	vmovaps -0x20fcb0(%rip),%xmm2        # 76590 <__abi_tag+0x76294>
  28623f:	ff 
  286240:	c4 62 51 b8 da       	vfmadd231ps %xmm2,%xmm5,%xmm11
  286245:	c5 00 59 d2          	vmulps %xmm2,%xmm15,%xmm10
  286249:	c4 62 51 bc d1       	vfnmadd231ps %xmm1,%xmm5,%xmm10
  28624e:	c5 f8 28 0d 4a 03 df 	vmovaps -0x20fcb6(%rip),%xmm1        # 765a0 <__abi_tag+0x762a4>
  286255:	ff 
  286256:	c5 b8 59 c9          	vmulps %xmm1,%xmm8,%xmm1
  28625a:	c5 f8 28 15 ae d9 de 	vmovaps -0x212652(%rip),%xmm2        # 73c10 <__abi_tag+0x73914>
  286261:	ff 
  286262:	c4 e2 61 b8 ca       	vfmadd231ps %xmm2,%xmm3,%xmm1
  286267:	c5 f8 29 4c 24 d0    	vmovaps %xmm1,-0x30(%rsp)
  28626d:	c5 f8 28 25 6b ff de 	vmovaps -0x210095(%rip),%xmm4        # 761e0 <__abi_tag+0x75ee4>
  286274:	ff 
  286275:	c5 08 59 fc          	vmulps %xmm4,%xmm14,%xmm15
  286279:	c5 f8 28 2d 6f 18 df 	vmovaps -0x20e791(%rip),%xmm5        # 77af0 <__abi_tag+0x777f4>
  286280:	ff 
  286281:	c4 62 31 b8 fd       	vfmadd231ps %xmm5,%xmm9,%xmm15
  286286:	c5 08 59 f5          	vmulps %xmm5,%xmm14,%xmm14
  28628a:	c4 42 59 bc f1       	vfnmadd231ps %xmm9,%xmm4,%xmm14
  28628f:	c5 f8 28 25 99 31 df 	vmovaps -0x20ce67(%rip),%xmm4        # 79430 <__abi_tag+0x79134>
  286296:	ff 
  286297:	c5 78 59 e4          	vmulps %xmm4,%xmm0,%xmm12
  28629b:	c5 f8 28 2d 5d 13 df 	vmovaps -0x20eca3(%rip),%xmm5        # 77600 <__abi_tag+0x77304>
  2862a2:	ff 
  2862a3:	c4 62 41 b8 e5       	vfmadd231ps %xmm5,%xmm7,%xmm12
  2862a8:	c5 78 59 cd          	vmulps %xmm5,%xmm0,%xmm9
  2862ac:	c4 62 59 bc cf       	vfnmadd231ps %xmm7,%xmm4,%xmm9
  2862b1:	c5 f8 28 25 07 e2 de 	vmovaps -0x211df9(%rip),%xmm4        # 744c0 <__abi_tag+0x741c4>
  2862b8:	ff 
  2862b9:	c5 90 59 c4          	vmulps %xmm4,%xmm13,%xmm0
  2862bd:	c5 f8 28 2d 8b cc de 	vmovaps -0x213375(%rip),%xmm5        # 72f50 <__abi_tag+0x72c54>
  2862c4:	ff 
  2862c5:	c5 f8 28 4c 24 80    	vmovaps -0x80(%rsp),%xmm1
  2862cb:	c4 e2 71 b8 c5       	vfmadd231ps %xmm5,%xmm1,%xmm0
  2862d0:	c5 90 59 fd          	vmulps %xmm5,%xmm13,%xmm7
  2862d4:	c4 e2 59 bc f9       	vfnmadd231ps %xmm1,%xmm4,%xmm7
  2862d9:	c5 38 59 ea          	vmulps %xmm2,%xmm8,%xmm13
  2862dd:	c4 62 61 bc 2d ba 02 	vfnmadd231ps -0x20fd46(%rip),%xmm3,%xmm13        # 765a0 <__abi_tag+0x762a4>
  2862e4:	df ff 
  2862e6:	c4 e3 7d 19 db 01    	vextractf128 $0x1,%ymm3,%xmm3
  2862ec:	c4 43 7d 19 c0 01    	vextractf128 $0x1,%ymm8,%xmm8
  2862f2:	c5 f8 28 15 b6 34 df 	vmovaps -0x20cb4a(%rip),%xmm2        # 797b0 <__abi_tag+0x794b4>
  2862f9:	ff 
  2862fa:	c5 b8 59 ca          	vmulps %xmm2,%xmm8,%xmm1
  2862fe:	c5 f8 28 25 aa 40 df 	vmovaps -0x20bf56(%rip),%xmm4        # 7a3b0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x570>
  286305:	ff 
  286306:	c4 e2 61 b8 cc       	vfmadd231ps %xmm4,%xmm3,%xmm1
  28630b:	c5 38 59 c4          	vmulps %xmm4,%xmm8,%xmm8
  28630f:	c4 62 69 bc c3       	vfnmadd231ps %xmm3,%xmm2,%xmm8
  286314:	c5 80 58 de          	vaddps %xmm6,%xmm15,%xmm3
  286318:	c4 c1 48 5c e7       	vsubps %xmm15,%xmm6,%xmm4
  28631d:	c5 a0 58 d0          	vaddps %xmm0,%xmm11,%xmm2
  286321:	c5 a0 5c f0          	vsubps %xmm0,%xmm11,%xmm6
  286325:	c5 fc 10 44 24 e0    	vmovups -0x20(%rsp),%ymm0
  28632b:	c5 08 58 d8          	vaddps %xmm0,%xmm14,%xmm11
  28632f:	c4 c1 78 5c ee       	vsubps %xmm14,%xmm0,%xmm5
  286334:	c5 a8 58 c7          	vaddps %xmm7,%xmm10,%xmm0
  286338:	c5 28 5c d7          	vsubps %xmm7,%xmm10,%xmm10
  28633c:	c5 60 58 fa          	vaddps %xmm2,%xmm3,%xmm15
  286340:	c5 e0 5c d2          	vsubps %xmm2,%xmm3,%xmm2
  286344:	c5 f8 29 54 24 c0    	vmovaps %xmm2,-0x40(%rsp)
  28634a:	c5 a8 58 fc          	vaddps %xmm4,%xmm10,%xmm7
  28634e:	c4 c1 58 5c d2       	vsubps %xmm10,%xmm4,%xmm2
  286353:	c5 f8 29 54 24 e0    	vmovaps %xmm2,-0x20(%rsp)
  286359:	c5 a0 58 d0          	vaddps %xmm0,%xmm11,%xmm2
  28635d:	c5 a0 5c c0          	vsubps %xmm0,%xmm11,%xmm0
  286361:	c5 f8 29 44 24 b0    	vmovaps %xmm0,-0x50(%rsp)
  286367:	c5 50 5c d6          	vsubps %xmm6,%xmm5,%xmm10
  28636b:	c5 d0 58 c6          	vaddps %xmm6,%xmm5,%xmm0
  28636f:	c5 f8 29 44 24 80    	vmovaps %xmm0,-0x80(%rsp)
  286375:	c5 f8 28 5c 24 90    	vmovaps -0x70(%rsp),%xmm3
  28637b:	c5 98 58 c3          	vaddps %xmm3,%xmm12,%xmm0
  28637f:	c4 c1 60 5c e4       	vsubps %xmm12,%xmm3,%xmm4
  286384:	c5 f8 28 5c 24 d0    	vmovaps -0x30(%rsp),%xmm3
  28638a:	c5 e0 58 e9          	vaddps %xmm1,%xmm3,%xmm5
  28638e:	c5 e0 5c c9          	vsubps %xmm1,%xmm3,%xmm1
  286392:	c5 f8 28 5c 24 a0    	vmovaps -0x60(%rsp),%xmm3
  286398:	c5 b0 58 f3          	vaddps %xmm3,%xmm9,%xmm6
  28639c:	c4 41 60 5c c9       	vsubps %xmm9,%xmm3,%xmm9
  2863a1:	c4 41 10 58 d8       	vaddps %xmm8,%xmm13,%xmm11
  2863a6:	c4 41 10 5c c0       	vsubps %xmm8,%xmm13,%xmm8
  2863ab:	c5 78 58 e5          	vaddps %xmm5,%xmm0,%xmm12
  2863af:	c5 f8 5c c5          	vsubps %xmm5,%xmm0,%xmm0
  2863b3:	c5 b8 58 ec          	vaddps %xmm4,%xmm8,%xmm5
  2863b7:	c4 c1 58 5c e0       	vsubps %xmm8,%xmm4,%xmm4
  2863bc:	c5 20 58 c6          	vaddps %xmm6,%xmm11,%xmm8
  2863c0:	c4 c1 48 5c f3       	vsubps %xmm11,%xmm6,%xmm6
  2863c5:	c5 30 5c d9          	vsubps %xmm1,%xmm9,%xmm11
  2863c9:	c5 b0 58 c9          	vaddps %xmm1,%xmm9,%xmm1
  2863cd:	c5 20 58 cd          	vaddps %xmm5,%xmm11,%xmm9
  2863d1:	c5 20 5c dd          	vsubps %xmm5,%xmm11,%xmm11
  2863d5:	c5 70 5c ec          	vsubps %xmm4,%xmm1,%xmm13
  2863d9:	c5 58 58 f1          	vaddps %xmm1,%xmm4,%xmm14
  2863dd:	c4 c1 00 58 cc       	vaddps %xmm12,%xmm15,%xmm1
  2863e2:	c4 c1 00 5c dc       	vsubps %xmm12,%xmm15,%xmm3
  2863e7:	c5 f8 29 5c 24 a0    	vmovaps %xmm3,-0x60(%rsp)
  2863ed:	c5 38 58 fa          	vaddps %xmm2,%xmm8,%xmm15
  2863f1:	c4 41 68 5c e0       	vsubps %xmm8,%xmm2,%xmm12
  2863f6:	c4 e2 79 18 2d 41 64 	vbroadcastss -0x209bbf(%rip),%xmm5        # 7c840 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a00>
  2863fd:	df ff 
  2863ff:	c5 b0 59 d5          	vmulps %xmm5,%xmm9,%xmm2
  286403:	c5 40 58 c2          	vaddps %xmm2,%xmm7,%xmm8
  286407:	c5 c0 5c d2          	vsubps %xmm2,%xmm7,%xmm2
  28640b:	c5 f8 29 54 24 90    	vmovaps %xmm2,-0x70(%rsp)
  286411:	c5 a0 59 e5          	vmulps %xmm5,%xmm11,%xmm4
  286415:	c5 28 58 cc          	vaddps %xmm4,%xmm10,%xmm9
  286419:	c5 a8 5c fc          	vsubps %xmm4,%xmm10,%xmm7
  28641d:	c5 f8 28 54 24 c0    	vmovaps -0x40(%rsp),%xmm2
  286423:	c5 68 58 d6          	vaddps %xmm6,%xmm2,%xmm10
  286427:	c5 e8 5c e6          	vsubps %xmm6,%xmm2,%xmm4
  28642b:	c4 e2 79 18 1d 14 66 	vbroadcastss -0x2099ec(%rip),%xmm3        # 7ca48 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  286432:	df ff 
  286434:	c5 f8 57 c3          	vxorps %xmm3,%xmm0,%xmm0
  286438:	c5 f8 28 54 24 b0    	vmovaps -0x50(%rsp),%xmm2
  28643e:	c5 68 58 d8          	vaddps %xmm0,%xmm2,%xmm11
  286442:	c5 e8 5c f0          	vsubps %xmm0,%xmm2,%xmm6
  286446:	c5 90 59 c5          	vmulps %xmm5,%xmm13,%xmm0
  28644a:	c5 f8 28 54 24 e0    	vmovaps -0x20(%rsp),%xmm2
  286450:	c5 68 58 e8          	vaddps %xmm0,%xmm2,%xmm13
  286454:	c5 e8 5c d0          	vsubps %xmm0,%xmm2,%xmm2
  286458:	c5 88 57 db          	vxorps %xmm3,%xmm14,%xmm3
  28645c:	c5 e0 59 dd          	vmulps %xmm5,%xmm3,%xmm3
  286460:	c5 f8 28 44 24 80    	vmovaps -0x80(%rsp),%xmm0
  286466:	c5 78 58 f3          	vaddps %xmm3,%xmm0,%xmm14
  28646a:	c5 f8 5c db          	vsubps %xmm3,%xmm0,%xmm3
  28646e:	c5 80 14 c1          	vunpcklps %xmm1,%xmm15,%xmm0
  286472:	c5 80 15 c9          	vunpckhps %xmm1,%xmm15,%xmm1
  286476:	c5 f8 11 04 06       	vmovups %xmm0,(%rsi,%rax,1)
  28647b:	c5 f8 11 4c 06 10    	vmovups %xmm1,0x10(%rsi,%rax,1)
  286481:	c4 c1 30 14 c0       	vunpcklps %xmm8,%xmm9,%xmm0
  286486:	c4 c1 30 15 c8       	vunpckhps %xmm8,%xmm9,%xmm1
  28648b:	c5 f8 11 44 06 20    	vmovups %xmm0,0x20(%rsi,%rax,1)
  286491:	c5 f8 11 4c 06 30    	vmovups %xmm1,0x30(%rsi,%rax,1)
  286497:	c4 c1 20 14 c2       	vunpcklps %xmm10,%xmm11,%xmm0
  28649c:	c4 c1 20 15 ca       	vunpckhps %xmm10,%xmm11,%xmm1
  2864a1:	c5 f8 11 44 06 40    	vmovups %xmm0,0x40(%rsi,%rax,1)
  2864a7:	c5 f8 11 4c 06 50    	vmovups %xmm1,0x50(%rsi,%rax,1)
  2864ad:	c4 c1 08 14 c5       	vunpcklps %xmm13,%xmm14,%xmm0
  2864b2:	c4 c1 08 15 cd       	vunpckhps %xmm13,%xmm14,%xmm1
  2864b7:	c5 f8 11 44 06 60    	vmovups %xmm0,0x60(%rsi,%rax,1)
  2864bd:	c5 f8 11 4c 06 70    	vmovups %xmm1,0x70(%rsi,%rax,1)
  2864c3:	c5 f8 28 4c 24 a0    	vmovaps -0x60(%rsp),%xmm1
  2864c9:	c5 98 14 c1          	vunpcklps %xmm1,%xmm12,%xmm0
  2864cd:	c5 98 15 c9          	vunpckhps %xmm1,%xmm12,%xmm1
  2864d1:	c5 f8 11 84 06 80 00 	vmovups %xmm0,0x80(%rsi,%rax,1)
  2864d8:	00 00 
  2864da:	c5 f8 11 8c 06 90 00 	vmovups %xmm1,0x90(%rsi,%rax,1)
  2864e1:	00 00 
  2864e3:	c5 f8 28 4c 24 90    	vmovaps -0x70(%rsp),%xmm1
  2864e9:	c5 c0 14 c1          	vunpcklps %xmm1,%xmm7,%xmm0
  2864ed:	c5 c0 15 c9          	vunpckhps %xmm1,%xmm7,%xmm1
  2864f1:	c5 f8 11 84 06 a0 00 	vmovups %xmm0,0xa0(%rsi,%rax,1)
  2864f8:	00 00 
  2864fa:	c5 f8 11 8c 06 b0 00 	vmovups %xmm1,0xb0(%rsi,%rax,1)
  286501:	00 00 
  286503:	c5 c8 14 c4          	vunpcklps %xmm4,%xmm6,%xmm0
  286507:	c5 c8 15 cc          	vunpckhps %xmm4,%xmm6,%xmm1
  28650b:	c5 f8 11 84 06 c0 00 	vmovups %xmm0,0xc0(%rsi,%rax,1)
  286512:	00 00 
  286514:	c5 f8 11 8c 06 d0 00 	vmovups %xmm1,0xd0(%rsi,%rax,1)
  28651b:	00 00 
  28651d:	c5 e0 14 c2          	vunpcklps %xmm2,%xmm3,%xmm0
  286521:	c5 e0 15 ca          	vunpckhps %xmm2,%xmm3,%xmm1
  286525:	c5 f8 11 84 06 e0 00 	vmovups %xmm0,0xe0(%rsi,%rax,1)
  28652c:	00 00 
  28652e:	c5 f8 11 8c 06 f0 00 	vmovups %xmm1,0xf0(%rsi,%rax,1)
  286535:	00 00 
  286537:	48 05 00 01 00 00    	add    $0x100,%rax
  28653d:	48 39 c2             	cmp    %rax,%rdx
  286540:	0f 85 6a fb ff ff    	jne    2860b0 <<fastfft::engine::small::specialized::Avx2Leaf as fastfft::engine::small::Kernel<fastfft::isa::x86::small::F32x4f>>::run+0x10>
  286546:	58                   	pop    %rax
  286547:	c5 f8 77             	vzeroupper
  28654a:	c3                   	ret
  28654b:	cc                   	int3
  28654c:	cc                   	int3
  28654d:	cc                   	int3
  28654e:	cc                   	int3
  28654f:	cc                   	int3
