
target/small-latency/n32-diagnostic:     file format elf64-x86-64


Disassembly of section .text:

000000000060b060 <<fastfft::engine::small::specialized::Avx2Leaf as fastfft::engine::small::Kernel<V>>::one>:
  60b060:	48 83 ec 48          	sub    $0x48,%rsp
  60b064:	c5 fc 10 07          	vmovups (%rdi),%ymm0
  60b068:	c5 fc 10 4f 20       	vmovups 0x20(%rdi),%ymm1
  60b06d:	c5 fc 10 57 40       	vmovups 0x40(%rdi),%ymm2
  60b072:	c5 fc 10 5f 60       	vmovups 0x60(%rdi),%ymm3
  60b077:	c5 fc 10 a7 80 00 00 	vmovups 0x80(%rdi),%ymm4
  60b07e:	00 
  60b07f:	c5 fc 10 af a0 00 00 	vmovups 0xa0(%rdi),%ymm5
  60b086:	00 
  60b087:	c5 fc 10 b7 c0 00 00 	vmovups 0xc0(%rdi),%ymm6
  60b08e:	00 
  60b08f:	c5 fc 10 bf e0 00 00 	vmovups 0xe0(%rdi),%ymm7
  60b096:	00 
  60b097:	c5 7c c6 c1 dd       	vshufps $0xdd,%ymm1,%ymm0,%ymm8
  60b09c:	c4 43 fd 01 c0 d8    	vpermpd $0xd8,%ymm8,%ymm8
  60b0a2:	c5 5c c6 cd dd       	vshufps $0xdd,%ymm5,%ymm4,%ymm9
  60b0a7:	c4 43 fd 01 c9 d8    	vpermpd $0xd8,%ymm9,%ymm9
  60b0ad:	c4 41 3c 58 d1       	vaddps %ymm9,%ymm8,%ymm10
  60b0b2:	c4 41 3c 5c c9       	vsubps %ymm9,%ymm8,%ymm9
  60b0b7:	c5 6c c6 c3 dd       	vshufps $0xdd,%ymm3,%ymm2,%ymm8
  60b0bc:	c4 43 fd 01 c0 d8    	vpermpd $0xd8,%ymm8,%ymm8
  60b0c2:	c5 4c c6 df dd       	vshufps $0xdd,%ymm7,%ymm6,%ymm11
  60b0c7:	c4 43 fd 01 db d8    	vpermpd $0xd8,%ymm11,%ymm11
  60b0cd:	c4 41 3c 58 e3       	vaddps %ymm11,%ymm8,%ymm12
  60b0d2:	c4 41 3c 5c eb       	vsubps %ymm11,%ymm8,%ymm13
  60b0d7:	c5 fc c6 c1 88       	vshufps $0x88,%ymm1,%ymm0,%ymm0
  60b0dc:	c4 e3 fd 01 c0 d8    	vpermpd $0xd8,%ymm0,%ymm0
  60b0e2:	c5 dc c6 cd 88       	vshufps $0x88,%ymm5,%ymm4,%ymm1
  60b0e7:	c4 e3 fd 01 c9 d8    	vpermpd $0xd8,%ymm1,%ymm1
  60b0ed:	c5 fc 58 e1          	vaddps %ymm1,%ymm0,%ymm4
  60b0f1:	c5 fc 5c c1          	vsubps %ymm1,%ymm0,%ymm0
  60b0f5:	c5 ec c6 cb 88       	vshufps $0x88,%ymm3,%ymm2,%ymm1
  60b0fa:	c4 e3 fd 01 c9 d8    	vpermpd $0xd8,%ymm1,%ymm1
  60b100:	c5 cc c6 d7 88       	vshufps $0x88,%ymm7,%ymm6,%ymm2
  60b105:	c4 e3 fd 01 d2 d8    	vpermpd $0xd8,%ymm2,%ymm2
  60b10b:	c5 f4 58 da          	vaddps %ymm2,%ymm1,%ymm3
  60b10f:	c5 f4 5c ca          	vsubps %ymm2,%ymm1,%ymm1
  60b113:	c4 c1 2c 58 ec       	vaddps %ymm12,%ymm10,%ymm5
  60b118:	c5 b4 58 d1          	vaddps %ymm1,%ymm9,%ymm2
  60b11c:	c4 c1 2c 5c f4       	vsubps %ymm12,%ymm10,%ymm6
  60b121:	c5 34 5c c9          	vsubps %ymm1,%ymm9,%ymm9
  60b125:	c5 5c 58 d3          	vaddps %ymm3,%ymm4,%ymm10
  60b129:	c4 41 7c 5c dd       	vsubps %ymm13,%ymm0,%ymm11
  60b12e:	c5 dc 5c fb          	vsubps %ymm3,%ymm4,%ymm7
  60b132:	c5 14 58 c0          	vaddps %ymm0,%ymm13,%ymm8
  60b136:	c5 d0 14 ca          	vunpcklps %xmm2,%xmm5,%xmm1
  60b13a:	c5 7c 28 e5          	vmovaps %ymm5,%ymm12
  60b13e:	c5 fc 28 e2          	vmovaps %ymm2,%ymm4
  60b142:	c5 f8 29 4c 24 90    	vmovaps %xmm1,-0x70(%rsp)
  60b148:	c4 c1 48 14 c1       	vunpcklps %xmm9,%xmm6,%xmm0
  60b14d:	c5 7c 28 ee          	vmovaps %ymm6,%ymm13
  60b151:	c5 f8 29 44 24 a0    	vmovaps %xmm0,-0x60(%rsp)
  60b157:	c5 f1 15 c0          	vunpckhpd %xmm0,%xmm1,%xmm0
  60b15b:	c4 c1 28 14 d3       	vunpcklps %xmm11,%xmm10,%xmm2
  60b160:	c5 f8 29 54 24 f0    	vmovaps %xmm2,-0x10(%rsp)
  60b166:	c4 c1 40 14 c8       	vunpcklps %xmm8,%xmm7,%xmm1
  60b16b:	c5 7c 29 c6          	vmovaps %ymm8,%ymm6
  60b16f:	c5 7c 11 44 24 20    	vmovups %ymm8,0x20(%rsp)
  60b175:	c5 f8 29 0c 24       	vmovaps %xmm1,(%rsp)
  60b17a:	c5 e9 15 c9          	vunpckhpd %xmm1,%xmm2,%xmm1
  60b17e:	c5 78 28 35 2a 65 a5 	vmovaps -0x5a9ad6(%rip),%xmm14        # 616b0 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x13e0>
  60b185:	ff 
  60b186:	c5 88 59 d1          	vmulps %xmm1,%xmm14,%xmm2
  60b18a:	c5 f8 28 1d 4e 5a a5 	vmovaps -0x5aa5b2(%rip),%xmm3        # 60be0 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x910>
  60b191:	ff 
  60b192:	c4 e2 79 b8 d3       	vfmadd231ps %xmm3,%xmm0,%xmm2
  60b197:	c5 f8 29 54 24 10    	vmovaps %xmm2,0x10(%rsp)
  60b19d:	c5 f0 59 cb          	vmulps %xmm3,%xmm1,%xmm1
  60b1a1:	c4 c2 79 bc ce       	vfnmadd231ps %xmm14,%xmm0,%xmm1
  60b1a6:	c5 f8 29 4c 24 80    	vmovaps %xmm1,-0x80(%rsp)
  60b1ac:	c5 18 15 f4          	vunpckhps %xmm4,%xmm12,%xmm14
  60b1b0:	c5 7c 28 c4          	vmovaps %ymm4,%ymm8
  60b1b4:	c4 41 10 15 f9       	vunpckhps %xmm9,%xmm13,%xmm15
  60b1b9:	c4 c1 08 16 d7       	vmovlhps %xmm15,%xmm14,%xmm2
  60b1be:	c4 c1 28 15 e3       	vunpckhps %xmm11,%xmm10,%xmm4
  60b1c3:	c5 c0 15 ce          	vunpckhps %xmm6,%xmm7,%xmm1
  60b1c7:	c5 d8 16 d9          	vmovlhps %xmm1,%xmm4,%xmm3
  60b1cb:	c5 f8 28 35 dd 53 a5 	vmovaps -0x5aac23(%rip),%xmm6        # 605b0 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x2e0>
  60b1d2:	ff 
  60b1d3:	c5 e0 59 c6          	vmulps %xmm6,%xmm3,%xmm0
  60b1d7:	c5 f8 28 2d 61 64 a5 	vmovaps -0x5a9b9f(%rip),%xmm5        # 61640 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x1370>
  60b1de:	ff 
  60b1df:	c4 e2 69 b8 c5       	vfmadd231ps %xmm5,%xmm2,%xmm0
  60b1e4:	c5 f8 29 44 24 b0    	vmovaps %xmm0,-0x50(%rsp)
  60b1ea:	c5 e0 59 c5          	vmulps %xmm5,%xmm3,%xmm0
  60b1ee:	c4 e2 69 bc c6       	vfnmadd231ps %xmm6,%xmm2,%xmm0
  60b1f3:	c5 f8 29 44 24 c0    	vmovaps %xmm0,-0x40(%rsp)
  60b1f9:	c4 c1 09 15 c7       	vunpckhpd %xmm15,%xmm14,%xmm0
  60b1fe:	c5 d9 15 c9          	vunpckhpd %xmm1,%xmm4,%xmm1
  60b202:	c5 f8 28 15 b6 64 a5 	vmovaps -0x5a9b4a(%rip),%xmm2        # 616c0 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x13f0>
  60b209:	ff 
  60b20a:	c5 f0 59 da          	vmulps %xmm2,%xmm1,%xmm3
  60b20e:	c5 f8 28 25 3a 56 a5 	vmovaps -0x5aa9c6(%rip),%xmm4        # 60850 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x580>
  60b215:	ff 
  60b216:	c4 e2 79 b8 dc       	vfmadd231ps %xmm4,%xmm0,%xmm3
  60b21b:	c5 f8 29 5c 24 d0    	vmovaps %xmm3,-0x30(%rsp)
  60b221:	c5 f0 59 cc          	vmulps %xmm4,%xmm1,%xmm1
  60b225:	c4 e2 79 bc ca       	vfnmadd231ps %xmm2,%xmm0,%xmm1
  60b22a:	c5 f8 29 4c 24 e0    	vmovaps %xmm1,-0x20(%rsp)
  60b230:	c4 43 7d 19 e7 01    	vextractf128 $0x1,%ymm12,%xmm15
  60b236:	c4 43 7d 19 c4 01    	vextractf128 $0x1,%ymm8,%xmm12
  60b23c:	c4 43 7d 19 ed 01    	vextractf128 $0x1,%ymm13,%xmm13
  60b242:	c4 63 7d 19 cd 01    	vextractf128 $0x1,%ymm9,%xmm5
  60b248:	c4 43 7d 19 d2 01    	vextractf128 $0x1,%ymm10,%xmm10
  60b24e:	c4 43 7d 19 db 01    	vextractf128 $0x1,%ymm11,%xmm11
  60b254:	c4 e3 7d 19 fc 01    	vextractf128 $0x1,%ymm7,%xmm4
  60b25a:	c5 fc 10 44 24 20    	vmovups 0x20(%rsp),%ymm0
  60b260:	c4 e3 7d 19 c3 01    	vextractf128 $0x1,%ymm0,%xmm3
  60b266:	c4 c1 00 14 f4       	vunpcklps %xmm12,%xmm15,%xmm6
  60b26b:	c5 90 14 fd          	vunpcklps %xmm5,%xmm13,%xmm7
  60b26f:	c5 c8 16 c7          	vmovlhps %xmm7,%xmm6,%xmm0
  60b273:	c4 c1 28 14 d3       	vunpcklps %xmm11,%xmm10,%xmm2
  60b278:	c5 d8 14 cb          	vunpcklps %xmm3,%xmm4,%xmm1
  60b27c:	c5 68 16 c9          	vmovlhps %xmm1,%xmm2,%xmm9
  60b280:	c5 30 59 05 d8 62 a5 	vmulps -0x5a9d28(%rip),%xmm9,%xmm8        # 61560 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x1290>
  60b287:	ff 
  60b288:	c5 78 28 35 f0 6a a5 	vmovaps -0x5a9510(%rip),%xmm14        # 61d80 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x1ab0>
  60b28f:	ff 
  60b290:	c4 42 79 b8 c6       	vfmadd231ps %xmm14,%xmm0,%xmm8
  60b295:	c4 41 30 59 ce       	vmulps %xmm14,%xmm9,%xmm9
  60b29a:	c4 62 79 bc 0d bd 62 	vfnmadd231ps -0x5a9d43(%rip),%xmm0,%xmm9        # 61560 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x1290>
  60b2a1:	a5 ff 
  60b2a3:	c5 c9 15 c7          	vunpckhpd %xmm7,%xmm6,%xmm0
  60b2a7:	c5 e9 15 c9          	vunpckhpd %xmm1,%xmm2,%xmm1
  60b2ab:	c5 f8 28 15 ad 73 a5 	vmovaps -0x5a8c53(%rip),%xmm2        # 62660 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x2390>
  60b2b2:	ff 
  60b2b3:	c5 f0 59 f2          	vmulps %xmm2,%xmm1,%xmm6
  60b2b7:	c5 f8 28 3d 31 69 a5 	vmovaps -0x5a96cf(%rip),%xmm7        # 61bf0 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x1920>
  60b2be:	ff 
  60b2bf:	c4 e2 79 b8 f7       	vfmadd231ps %xmm7,%xmm0,%xmm6
  60b2c4:	c5 f0 59 ff          	vmulps %xmm7,%xmm1,%xmm7
  60b2c8:	c4 e2 79 bc fa       	vfnmadd231ps %xmm2,%xmm0,%xmm7
  60b2cd:	c4 c1 00 15 c4       	vunpckhps %xmm12,%xmm15,%xmm0
  60b2d2:	c5 90 15 cd          	vunpckhps %xmm5,%xmm13,%xmm1
  60b2d6:	c4 c1 28 15 d3       	vunpckhps %xmm11,%xmm10,%xmm2
  60b2db:	c5 d8 15 db          	vunpckhps %xmm3,%xmm4,%xmm3
  60b2df:	c5 f8 16 e1          	vmovlhps %xmm1,%xmm0,%xmm4
  60b2e3:	c5 e8 16 eb          	vmovlhps %xmm3,%xmm2,%xmm5
  60b2e7:	c5 78 28 15 01 59 a5 	vmovaps -0x5aa6ff(%rip),%xmm10        # 60bf0 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x920>
  60b2ee:	ff 
  60b2ef:	c5 28 59 dd          	vmulps %xmm5,%xmm10,%xmm11
  60b2f3:	c5 78 28 25 95 50 a5 	vmovaps -0x5aaf6b(%rip),%xmm12        # 60390 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0xc0>
  60b2fa:	ff 
  60b2fb:	c4 42 59 b8 dc       	vfmadd231ps %xmm12,%xmm4,%xmm11
  60b300:	c5 98 59 ed          	vmulps %xmm5,%xmm12,%xmm5
  60b304:	c4 c2 59 bc ea       	vfnmadd231ps %xmm10,%xmm4,%xmm5
  60b309:	c5 f9 15 c1          	vunpckhpd %xmm1,%xmm0,%xmm0
  60b30d:	c5 e9 15 cb          	vunpckhpd %xmm3,%xmm2,%xmm1
  60b311:	c5 f8 28 15 e7 74 a5 	vmovaps -0x5a8b19(%rip),%xmm2        # 62800 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x2530>
  60b318:	ff 
  60b319:	c5 f0 59 da          	vmulps %xmm2,%xmm1,%xmm3
  60b31d:	c5 f8 28 25 9b 78 a5 	vmovaps -0x5a8765(%rip),%xmm4        # 62bc0 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x28f0>
  60b324:	ff 
  60b325:	c4 e2 79 b8 dc       	vfmadd231ps %xmm4,%xmm0,%xmm3
  60b32a:	c5 70 59 e4          	vmulps %xmm4,%xmm1,%xmm12
  60b32e:	c4 62 79 bc e2       	vfnmadd231ps %xmm2,%xmm0,%xmm12
  60b333:	c5 f8 28 44 24 90    	vmovaps -0x70(%rsp),%xmm0
  60b339:	c5 f9 14 44 24 a0    	vunpcklpd -0x60(%rsp),%xmm0,%xmm0
  60b33f:	c5 f8 28 4c 24 f0    	vmovaps -0x10(%rsp),%xmm1
  60b345:	c5 f1 14 0c 24       	vunpcklpd (%rsp),%xmm1,%xmm1
  60b34a:	c5 b8 58 d0          	vaddps %xmm0,%xmm8,%xmm2
  60b34e:	c4 c1 78 5c c0       	vsubps %xmm8,%xmm0,%xmm0
  60b353:	c5 78 28 44 24 b0    	vmovaps -0x50(%rsp),%xmm8
  60b359:	c4 c1 38 58 e3       	vaddps %xmm11,%xmm8,%xmm4
  60b35e:	c4 41 38 5c eb       	vsubps %xmm11,%xmm8,%xmm13
  60b363:	c5 30 58 d1          	vaddps %xmm1,%xmm9,%xmm10
  60b367:	c4 41 70 5c f1       	vsubps %xmm9,%xmm1,%xmm14
  60b36c:	c5 f8 28 4c 24 c0    	vmovaps -0x40(%rsp),%xmm1
  60b372:	c5 70 58 fd          	vaddps %xmm5,%xmm1,%xmm15
  60b376:	c5 f0 5c ed          	vsubps %xmm5,%xmm1,%xmm5
  60b37a:	c5 68 58 cc          	vaddps %xmm4,%xmm2,%xmm9
  60b37e:	c5 e8 5c cc          	vsubps %xmm4,%xmm2,%xmm1
  60b382:	c5 78 58 c5          	vaddps %xmm5,%xmm0,%xmm8
  60b386:	c5 f8 5c c5          	vsubps %xmm5,%xmm0,%xmm0
  60b38a:	c5 f8 29 44 24 a0    	vmovaps %xmm0,-0x60(%rsp)
  60b390:	c4 41 28 58 df       	vaddps %xmm15,%xmm10,%xmm11
  60b395:	c4 c1 28 5c ef       	vsubps %xmm15,%xmm10,%xmm5
  60b39a:	c4 41 08 5c d5       	vsubps %xmm13,%xmm14,%xmm10
  60b39f:	c4 c1 08 58 c5       	vaddps %xmm13,%xmm14,%xmm0
  60b3a4:	c5 f8 29 44 24 90    	vmovaps %xmm0,-0x70(%rsp)
  60b3aa:	c5 f8 28 44 24 10    	vmovaps 0x10(%rsp),%xmm0
  60b3b0:	c5 f8 58 d6          	vaddps %xmm6,%xmm0,%xmm2
  60b3b4:	c5 f8 5c f6          	vsubps %xmm6,%xmm0,%xmm6
  60b3b8:	c5 f8 28 44 24 d0    	vmovaps -0x30(%rsp),%xmm0
  60b3be:	c5 78 58 eb          	vaddps %xmm3,%xmm0,%xmm13
  60b3c2:	c5 f8 5c db          	vsubps %xmm3,%xmm0,%xmm3
  60b3c6:	c5 f8 28 44 24 80    	vmovaps -0x80(%rsp),%xmm0
  60b3cc:	c5 78 58 f7          	vaddps %xmm7,%xmm0,%xmm14
  60b3d0:	c5 f8 5c ff          	vsubps %xmm7,%xmm0,%xmm7
  60b3d4:	c5 f8 28 44 24 e0    	vmovaps -0x20(%rsp),%xmm0
  60b3da:	c5 18 58 f8          	vaddps %xmm0,%xmm12,%xmm15
  60b3de:	c4 41 78 5c e4       	vsubps %xmm12,%xmm0,%xmm12
  60b3e3:	c5 90 58 c2          	vaddps %xmm2,%xmm13,%xmm0
  60b3e7:	c4 c1 68 5c d5       	vsubps %xmm13,%xmm2,%xmm2
  60b3ec:	c5 18 58 ee          	vaddps %xmm6,%xmm12,%xmm13
  60b3f0:	c4 c1 48 5c f4       	vsubps %xmm12,%xmm6,%xmm6
  60b3f5:	c4 41 08 58 e7       	vaddps %xmm15,%xmm14,%xmm12
  60b3fa:	c4 41 08 5c f7       	vsubps %xmm15,%xmm14,%xmm14
  60b3ff:	c5 40 5c fb          	vsubps %xmm3,%xmm7,%xmm15
  60b403:	c5 c0 58 db          	vaddps %xmm3,%xmm7,%xmm3
  60b407:	c4 c1 10 58 ff       	vaddps %xmm15,%xmm13,%xmm7
  60b40c:	c4 41 00 5c ed       	vsubps %xmm13,%xmm15,%xmm13
  60b411:	c5 60 5c fe          	vsubps %xmm6,%xmm3,%xmm15
  60b415:	c5 c8 58 db          	vaddps %xmm3,%xmm6,%xmm3
  60b419:	c4 e2 79 18 35 d6 89 	vbroadcastss -0x5a762a(%rip),%xmm6        # 63df8 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x3b28>
  60b420:	a5 ff 
  60b422:	c5 e8 57 d6          	vxorps %xmm6,%xmm2,%xmm2
  60b426:	c5 e0 57 de          	vxorps %xmm6,%xmm3,%xmm3
  60b42a:	c4 e2 79 18 35 09 88 	vbroadcastss -0x5a77f7(%rip),%xmm6        # 63c3c <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x396c>
  60b431:	a5 ff 
  60b433:	c5 c0 59 fe          	vmulps %xmm6,%xmm7,%xmm7
  60b437:	c5 10 59 ee          	vmulps %xmm6,%xmm13,%xmm13
  60b43b:	c5 00 59 fe          	vmulps %xmm6,%xmm15,%xmm15
  60b43f:	c5 e0 59 de          	vmulps %xmm6,%xmm3,%xmm3
  60b443:	c5 b0 58 f0          	vaddps %xmm0,%xmm9,%xmm6
  60b447:	c5 b0 5c e0          	vsubps %xmm0,%xmm9,%xmm4
  60b44b:	c4 41 20 58 cc       	vaddps %xmm12,%xmm11,%xmm9
  60b450:	c4 41 20 5c dc       	vsubps %xmm12,%xmm11,%xmm11
  60b455:	c5 38 58 e7          	vaddps %xmm7,%xmm8,%xmm12
  60b459:	c5 b8 5c ff          	vsubps %xmm7,%xmm8,%xmm7
  60b45d:	c4 41 28 58 c5       	vaddps %xmm13,%xmm10,%xmm8
  60b462:	c4 41 28 5c d5       	vsubps %xmm13,%xmm10,%xmm10
  60b467:	c5 08 58 e9          	vaddps %xmm1,%xmm14,%xmm13
  60b46b:	c4 c1 70 5c c6       	vsubps %xmm14,%xmm1,%xmm0
  60b470:	c5 f8 29 44 24 80    	vmovaps %xmm0,-0x80(%rsp)
  60b476:	c5 50 58 f2          	vaddps %xmm2,%xmm5,%xmm14
  60b47a:	c5 d0 5c d2          	vsubps %xmm2,%xmm5,%xmm2
  60b47e:	c5 f8 28 44 24 a0    	vmovaps -0x60(%rsp),%xmm0
  60b484:	c5 80 58 e8          	vaddps %xmm0,%xmm15,%xmm5
  60b488:	c4 41 78 5c ff       	vsubps %xmm15,%xmm0,%xmm15
  60b48d:	c5 f8 28 4c 24 90    	vmovaps -0x70(%rsp),%xmm1
  60b493:	c5 f0 58 c3          	vaddps %xmm3,%xmm1,%xmm0
  60b497:	c5 f0 5c db          	vsubps %xmm3,%xmm1,%xmm3
  60b49b:	c5 b0 14 ce          	vunpcklps %xmm6,%xmm9,%xmm1
  60b49f:	c5 b0 15 f6          	vunpckhps %xmm6,%xmm9,%xmm6
  60b4a3:	c5 f8 11 0e          	vmovups %xmm1,(%rsi)
  60b4a7:	c5 f8 11 76 10       	vmovups %xmm6,0x10(%rsi)
  60b4ac:	c4 c1 38 14 cc       	vunpcklps %xmm12,%xmm8,%xmm1
  60b4b1:	c4 c1 38 15 f4       	vunpckhps %xmm12,%xmm8,%xmm6
  60b4b6:	c5 f8 11 4e 20       	vmovups %xmm1,0x20(%rsi)
  60b4bb:	c5 f8 11 76 30       	vmovups %xmm6,0x30(%rsi)
  60b4c0:	c4 c1 08 14 cd       	vunpcklps %xmm13,%xmm14,%xmm1
  60b4c5:	c4 c1 08 15 f5       	vunpckhps %xmm13,%xmm14,%xmm6
  60b4ca:	c5 f8 11 4e 40       	vmovups %xmm1,0x40(%rsi)
  60b4cf:	c5 f8 11 76 50       	vmovups %xmm6,0x50(%rsi)
  60b4d4:	c5 f8 14 cd          	vunpcklps %xmm5,%xmm0,%xmm1
  60b4d8:	c5 f8 15 c5          	vunpckhps %xmm5,%xmm0,%xmm0
  60b4dc:	c5 f8 11 4e 60       	vmovups %xmm1,0x60(%rsi)
  60b4e1:	c5 f8 11 46 70       	vmovups %xmm0,0x70(%rsi)
  60b4e6:	c5 a0 14 c4          	vunpcklps %xmm4,%xmm11,%xmm0
  60b4ea:	c5 a0 15 cc          	vunpckhps %xmm4,%xmm11,%xmm1
  60b4ee:	c5 f8 11 86 80 00 00 	vmovups %xmm0,0x80(%rsi)
  60b4f5:	00 
  60b4f6:	c5 f8 11 8e 90 00 00 	vmovups %xmm1,0x90(%rsi)
  60b4fd:	00 
  60b4fe:	c5 a8 14 c7          	vunpcklps %xmm7,%xmm10,%xmm0
  60b502:	c5 a8 15 cf          	vunpckhps %xmm7,%xmm10,%xmm1
  60b506:	c5 f8 11 86 a0 00 00 	vmovups %xmm0,0xa0(%rsi)
  60b50d:	00 
  60b50e:	c5 f8 11 8e b0 00 00 	vmovups %xmm1,0xb0(%rsi)
  60b515:	00 
  60b516:	c5 f8 28 4c 24 80    	vmovaps -0x80(%rsp),%xmm1
  60b51c:	c5 e8 14 c1          	vunpcklps %xmm1,%xmm2,%xmm0
  60b520:	c5 e8 15 c9          	vunpckhps %xmm1,%xmm2,%xmm1
  60b524:	c5 f8 11 86 c0 00 00 	vmovups %xmm0,0xc0(%rsi)
  60b52b:	00 
  60b52c:	c5 f8 11 8e d0 00 00 	vmovups %xmm1,0xd0(%rsi)
  60b533:	00 
  60b534:	c4 c1 60 14 c7       	vunpcklps %xmm15,%xmm3,%xmm0
  60b539:	c4 c1 60 15 cf       	vunpckhps %xmm15,%xmm3,%xmm1
  60b53e:	c5 f8 11 86 e0 00 00 	vmovups %xmm0,0xe0(%rsi)
  60b545:	00 
  60b546:	c5 f8 11 8e f0 00 00 	vmovups %xmm1,0xf0(%rsi)
  60b54d:	00 
  60b54e:	48 83 c4 48          	add    $0x48,%rsp
  60b552:	c5 f8 77             	vzeroupper
  60b555:	c3                   	ret
  60b556:	cc                   	int3
  60b557:	cc                   	int3
  60b558:	cc                   	int3
  60b559:	cc                   	int3
  60b55a:	cc                   	int3
  60b55b:	cc                   	int3
  60b55c:	cc                   	int3
  60b55d:	cc                   	int3
  60b55e:	cc                   	int3
  60b55f:	cc                   	int3
