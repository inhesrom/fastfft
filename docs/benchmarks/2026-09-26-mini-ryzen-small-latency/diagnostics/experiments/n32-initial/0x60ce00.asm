
target/small-latency/n32-diagnostic:     file format elf64-x86-64


Disassembly of section .text:

000000000060ce00 <<fastfft::engine::small::specialized::Avx512Leaf as fastfft::engine::small::Kernel<V>>::one>:
  60ce00:	62 f1 fd 48 28 05 36 	vmovapd -0x5901ca(%rip),%zmm0        # 7cc40 <anon.7463adf7626489af349db6ee83149a8a.0.llvm.16491393852443438238+0x5848>
  60ce07:	fe a6 ff 
  60ce0a:	62 f1 fd 48 10 0f    	vmovupd (%rdi),%zmm1
  60ce10:	62 f1 fd 48 10 57 01 	vmovupd 0x40(%rdi),%zmm2
  60ce17:	62 f1 fd 48 10 5f 02 	vmovupd 0x80(%rdi),%zmm3
  60ce1e:	62 f1 fd 48 10 67 03 	vmovupd 0xc0(%rdi),%zmm4
  60ce25:	62 f1 fd 48 28 e9    	vmovapd %zmm1,%zmm5
  60ce2b:	62 f2 fd 48 7f ea    	vpermt2pd %zmm2,%zmm0,%zmm5
  60ce31:	62 f1 fd 48 28 35 45 	vmovapd -0x5901bb(%rip),%zmm6        # 7cc80 <anon.7463adf7626489af349db6ee83149a8a.0.llvm.16491393852443438238+0x5888>
  60ce38:	fe a6 ff 
  60ce3b:	62 f2 cd 48 7f ca    	vpermt2pd %zmm2,%zmm6,%zmm1
  60ce41:	62 f1 fd 48 28 d3    	vmovapd %zmm3,%zmm2
  60ce47:	62 f2 fd 48 7f d4    	vpermt2pd %zmm4,%zmm0,%zmm2
  60ce4d:	62 f2 cd 48 7f dc    	vpermt2pd %zmm4,%zmm6,%zmm3
  60ce53:	62 f1 fd 48 10 67 04 	vmovupd 0x100(%rdi),%zmm4
  60ce5a:	62 f1 fd 48 10 7f 05 	vmovupd 0x140(%rdi),%zmm7
  60ce61:	62 71 fd 48 28 c4    	vmovapd %zmm4,%zmm8
  60ce67:	62 72 fd 48 7f c7    	vpermt2pd %zmm7,%zmm0,%zmm8
  60ce6d:	62 f2 cd 48 7f e7    	vpermt2pd %zmm7,%zmm6,%zmm4
  60ce73:	62 f1 fd 48 10 7f 06 	vmovupd 0x180(%rdi),%zmm7
  60ce7a:	62 71 fd 48 10 4f 07 	vmovupd 0x1c0(%rdi),%zmm9
  60ce81:	62 d2 c5 48 77 c1    	vpermi2pd %zmm9,%zmm7,%zmm0
  60ce87:	62 d2 cd 48 7f f9    	vpermt2pd %zmm9,%zmm6,%zmm7
  60ce8d:	62 f1 f5 48 58 f4    	vaddpd %zmm4,%zmm1,%zmm6
  60ce93:	62 f1 f5 48 5c cc    	vsubpd %zmm4,%zmm1,%zmm1
  60ce99:	62 f1 e5 48 58 e7    	vaddpd %zmm7,%zmm3,%zmm4
  60ce9f:	62 f1 e5 48 5c df    	vsubpd %zmm7,%zmm3,%zmm3
  60cea5:	62 d1 d5 48 58 f8    	vaddpd %zmm8,%zmm5,%zmm7
  60ceab:	62 d1 d5 48 5c e8    	vsubpd %zmm8,%zmm5,%zmm5
  60ceb1:	62 71 ed 48 58 c0    	vaddpd %zmm0,%zmm2,%zmm8
  60ceb7:	62 f1 ed 48 5c c0    	vsubpd %zmm0,%zmm2,%zmm0
  60cebd:	62 f1 cd 48 58 d4    	vaddpd %zmm4,%zmm6,%zmm2
  60cec3:	62 71 f5 48 58 c8    	vaddpd %zmm0,%zmm1,%zmm9
  60cec9:	62 f1 cd 48 5c e4    	vsubpd %zmm4,%zmm6,%zmm4
  60cecf:	62 f1 f5 48 5c c8    	vsubpd %zmm0,%zmm1,%zmm1
  60ced5:	62 51 c5 48 58 d0    	vaddpd %zmm8,%zmm7,%zmm10
  60cedb:	62 71 d5 48 5c db    	vsubpd %zmm3,%zmm5,%zmm11
  60cee1:	62 51 c5 48 5c c0    	vsubpd %zmm8,%zmm7,%zmm8
  60cee7:	62 f1 d5 48 58 eb    	vaddpd %zmm3,%zmm5,%zmm5
  60ceed:	c4 c1 6d 14 d9       	vunpcklpd %ymm9,%ymm2,%ymm3
  60cef2:	c4 c1 6d 15 f1       	vunpckhpd %ymm9,%ymm2,%ymm6
  60cef7:	c5 dd 14 f9          	vunpcklpd %ymm1,%ymm4,%ymm7
  60cefb:	c5 5d 15 e1          	vunpckhpd %ymm1,%ymm4,%ymm12
  60ceff:	c4 e3 65 18 c7 01    	vinsertf128 $0x1,%xmm7,%ymm3,%ymm0
  60cf05:	c4 43 4d 18 ec 01    	vinsertf128 $0x1,%xmm12,%ymm6,%ymm13
  60cf0b:	c4 63 65 06 f7 31    	vperm2f128 $0x31,%ymm7,%ymm3,%ymm14
  60cf11:	c4 c3 4d 06 fc 31    	vperm2f128 $0x31,%ymm12,%ymm6,%ymm7
  60cf17:	62 73 fd 48 1b cb 01 	vextractf64x4 $0x1,%zmm9,%ymm3
  60cf1e:	62 f3 fd 48 1b d2 01 	vextractf64x4 $0x1,%zmm2,%ymm2
  60cf25:	c5 6d 14 cb          	vunpcklpd %ymm3,%ymm2,%ymm9
  60cf29:	c5 ed 15 d3          	vunpckhpd %ymm3,%ymm2,%ymm2
  60cf2d:	62 f3 fd 48 1b c9 01 	vextractf64x4 $0x1,%zmm1,%ymm1
  60cf34:	62 f3 fd 48 1b e3 01 	vextractf64x4 $0x1,%zmm4,%ymm3
  60cf3b:	c5 e5 14 e1          	vunpcklpd %ymm1,%ymm3,%ymm4
  60cf3f:	c5 e5 15 c9          	vunpckhpd %ymm1,%ymm3,%ymm1
  60cf43:	c4 63 35 18 e4 01    	vinsertf128 $0x1,%xmm4,%ymm9,%ymm12
  60cf49:	c4 e3 6d 18 f1 01    	vinsertf128 $0x1,%xmm1,%ymm2,%ymm6
  60cf4f:	c4 e3 35 06 dc 31    	vperm2f128 $0x31,%ymm4,%ymm9,%ymm3
  60cf55:	c4 e3 6d 06 c9 31    	vperm2f128 $0x31,%ymm1,%ymm2,%ymm1
  60cf5b:	c4 c1 2d 14 e3       	vunpcklpd %ymm11,%ymm10,%ymm4
  60cf60:	c4 41 2d 15 cb       	vunpckhpd %ymm11,%ymm10,%ymm9
  60cf65:	c5 3d 14 fd          	vunpcklpd %ymm5,%ymm8,%ymm15
  60cf69:	62 e1 bd 28 15 c5    	vunpckhpd %ymm5,%ymm8,%ymm16
  60cf6f:	c4 c3 5d 18 d7 01    	vinsertf128 $0x1,%xmm15,%ymm4,%ymm2
  60cf75:	62 a3 35 28 18 c8 01 	vinsertf32x4 $0x1,%xmm16,%ymm9,%ymm17
  60cf7c:	c4 43 5d 06 ff 31    	vperm2f128 $0x31,%ymm15,%ymm4,%ymm15
  60cf82:	62 33 b5 28 23 c8 03 	vshuff64x2 $0x3,%ymm16,%ymm9,%ymm9
  60cf89:	62 73 fd 48 1b dc 01 	vextractf64x4 $0x1,%zmm11,%ymm4
  60cf90:	62 53 fd 48 1b d2 01 	vextractf64x4 $0x1,%zmm10,%ymm10
  60cf97:	c5 2d 14 dc          	vunpcklpd %ymm4,%ymm10,%ymm11
  60cf9b:	c5 ad 15 e4          	vunpckhpd %ymm4,%ymm10,%ymm4
  60cf9f:	62 f3 fd 48 1b ed 01 	vextractf64x4 $0x1,%zmm5,%ymm5
  60cfa6:	62 53 fd 48 1b c0 01 	vextractf64x4 $0x1,%zmm8,%ymm8
  60cfad:	c5 3d 14 d5          	vunpcklpd %ymm5,%ymm8,%ymm10
  60cfb1:	c5 bd 15 ed          	vunpckhpd %ymm5,%ymm8,%ymm5
  60cfb5:	c4 43 25 18 c2 01    	vinsertf128 $0x1,%xmm10,%ymm11,%ymm8
  60cfbb:	62 e3 5d 28 18 c5 01 	vinsertf32x4 $0x1,%xmm5,%ymm4,%ymm16
  60cfc2:	c4 43 25 06 d2 31    	vperm2f128 $0x31,%ymm10,%ymm11,%ymm10
  60cfc8:	c4 63 5d 06 dd 31    	vperm2f128 $0x31,%ymm5,%ymm4,%ymm11
  60cfce:	62 e1 fd 28 28 15 08 	vmovapd -0x597cf8(%rip),%ymm18        # 752e0 <anon.3e05f4d234743c880c00ee55056163a6.0.llvm.11137056269156861578+0xc459>
  60cfd5:	83 a6 ff 
  60cfd8:	62 b1 f5 20 59 e2    	vmulpd %ymm18,%ymm17,%ymm4
  60cfde:	c5 fd 28 2d fa 75 a6 	vmovapd -0x598a06(%rip),%ymm5        # 745e0 <anon.3e05f4d234743c880c00ee55056163a6.0.llvm.11137056269156861578+0xb759>
  60cfe5:	ff 
  60cfe6:	c4 e2 95 b8 e5       	vfmadd231pd %ymm5,%ymm13,%ymm4
  60cfeb:	62 f1 f5 20 59 ed    	vmulpd %ymm5,%ymm17,%ymm5
  60cff1:	62 b2 95 28 bc ea    	vfnmadd231pd %ymm18,%ymm13,%ymm5
  60cff7:	c5 7d 28 2d 41 90 a6 	vmovapd -0x596fbf(%rip),%ymm13        # 76040 <anon.3e05f4d234743c880c00ee55056163a6.0.llvm.11137056269156861578+0xd1b9>
  60cffe:	ff 
  60cfff:	62 c1 85 28 59 cd    	vmulpd %ymm13,%ymm15,%ymm17
  60d005:	62 e1 fd 28 28 15 31 	vmovapd -0x5990cf(%rip),%ymm18        # 73f40 <anon.3e05f4d234743c880c00ee55056163a6.0.llvm.11137056269156861578+0xb0b9>
  60d00c:	6f a6 ff 
  60d00f:	62 a2 8d 28 b8 ca    	vfmadd231pd %ymm18,%ymm14,%ymm17
  60d015:	62 31 85 28 59 fa    	vmulpd %ymm18,%ymm15,%ymm15
  60d01b:	c4 42 8d bc fd       	vfnmadd231pd %ymm13,%ymm14,%ymm15
  60d020:	c5 7d 28 2d 98 77 a6 	vmovapd -0x598868(%rip),%ymm13        # 747c0 <anon.3e05f4d234743c880c00ee55056163a6.0.llvm.11137056269156861578+0xb939>
  60d027:	ff 
  60d028:	c4 41 35 59 f5       	vmulpd %ymm13,%ymm9,%ymm14
  60d02d:	62 e1 fd 28 28 15 29 	vmovapd -0x596fd7(%rip),%ymm18        # 76060 <anon.3e05f4d234743c880c00ee55056163a6.0.llvm.11137056269156861578+0xd1d9>
  60d034:	90 a6 ff 
  60d037:	62 32 c5 28 b8 f2    	vfmadd231pd %ymm18,%ymm7,%ymm14
  60d03d:	62 31 b5 28 59 ca    	vmulpd %ymm18,%ymm9,%ymm9
  60d043:	c4 42 c5 bc cd       	vfnmadd231pd %ymm13,%ymm7,%ymm9
  60d048:	c5 fd 28 3d 50 8b a6 	vmovapd -0x5974b0(%rip),%ymm7        # 75ba0 <anon.3e05f4d234743c880c00ee55056163a6.0.llvm.11137056269156861578+0xcd19>
  60d04f:	ff 
  60d050:	c5 3d 59 ef          	vmulpd %ymm7,%ymm8,%ymm13
  60d054:	62 e1 fd 28 28 15 22 	vmovapd -0x596fde(%rip),%ymm18        # 76080 <anon.3e05f4d234743c880c00ee55056163a6.0.llvm.11137056269156861578+0xd1f9>
  60d05b:	90 a6 ff 
  60d05e:	62 32 9d 28 b8 ea    	vfmadd231pd %ymm18,%ymm12,%ymm13
  60d064:	62 31 bd 28 59 c2    	vmulpd %ymm18,%ymm8,%ymm8
  60d06a:	c4 62 9d bc c7       	vfnmadd231pd %ymm7,%ymm12,%ymm8
  60d06f:	c5 fd 28 3d 49 7e a6 	vmovapd -0x5981b7(%rip),%ymm7        # 74ec0 <anon.3e05f4d234743c880c00ee55056163a6.0.llvm.11137056269156861578+0xc039>
  60d076:	ff 
  60d077:	62 71 fd 20 59 e7    	vmulpd %ymm7,%ymm16,%ymm12
  60d07d:	62 e1 fd 28 28 15 d9 	vmovapd -0x597727(%rip),%ymm18        # 75960 <anon.3e05f4d234743c880c00ee55056163a6.0.llvm.11137056269156861578+0xcad9>
  60d084:	88 a6 ff 
  60d087:	62 32 cd 28 b8 e2    	vfmadd231pd %ymm18,%ymm6,%ymm12
  60d08d:	62 a1 fd 20 59 c2    	vmulpd %ymm18,%ymm16,%ymm16
  60d093:	62 e2 cd 28 bc c7    	vfnmadd231pd %ymm7,%ymm6,%ymm16
  60d099:	c5 fd 28 35 df 80 a6 	vmovapd -0x597f21(%rip),%ymm6        # 75180 <anon.3e05f4d234743c880c00ee55056163a6.0.llvm.11137056269156861578+0xc2f9>
  60d0a0:	ff 
  60d0a1:	c5 ad 59 fe          	vmulpd %ymm6,%ymm10,%ymm7
  60d0a5:	62 e1 fd 28 28 15 51 	vmovapd -0x597daf(%rip),%ymm18        # 75300 <anon.3e05f4d234743c880c00ee55056163a6.0.llvm.11137056269156861578+0xc479>
  60d0ac:	82 a6 ff 
  60d0af:	62 b2 e5 28 b8 fa    	vfmadd231pd %ymm18,%ymm3,%ymm7
  60d0b5:	62 31 ad 28 59 d2    	vmulpd %ymm18,%ymm10,%ymm10
  60d0bb:	c4 62 e5 bc d6       	vfnmadd231pd %ymm6,%ymm3,%ymm10
  60d0c0:	c5 fd 28 1d 58 7b a6 	vmovapd -0x5984a8(%rip),%ymm3        # 74c20 <anon.3e05f4d234743c880c00ee55056163a6.0.llvm.11137056269156861578+0xbd99>
  60d0c7:	ff 
  60d0c8:	c5 a5 59 f3          	vmulpd %ymm3,%ymm11,%ymm6
  60d0cc:	62 e1 fd 28 28 15 ea 	vmovapd -0x598e16(%rip),%ymm18        # 742c0 <anon.3e05f4d234743c880c00ee55056163a6.0.llvm.11137056269156861578+0xb439>
  60d0d3:	71 a6 ff 
  60d0d6:	62 b2 f5 28 b8 f2    	vfmadd231pd %ymm18,%ymm1,%ymm6
  60d0dc:	62 31 a5 28 59 da    	vmulpd %ymm18,%ymm11,%ymm11
  60d0e2:	c4 62 f5 bc db       	vfnmadd231pd %ymm3,%ymm1,%ymm11
  60d0e7:	c5 95 58 c8          	vaddpd %ymm0,%ymm13,%ymm1
  60d0eb:	c4 c1 7d 5c c5       	vsubpd %ymm13,%ymm0,%ymm0
  60d0f0:	62 f1 f5 20 58 df    	vaddpd %ymm7,%ymm17,%ymm3
  60d0f6:	62 f1 f5 20 5c ff    	vsubpd %ymm7,%ymm17,%ymm7
  60d0fc:	c5 3d 58 ea          	vaddpd %ymm2,%ymm8,%ymm13
  60d100:	c4 c1 6d 5c d0       	vsubpd %ymm8,%ymm2,%ymm2
  60d105:	c4 41 05 58 c2       	vaddpd %ymm10,%ymm15,%ymm8
  60d10a:	c4 41 05 5c d2       	vsubpd %ymm10,%ymm15,%ymm10
  60d10f:	c5 75 58 fb          	vaddpd %ymm3,%ymm1,%ymm15
  60d113:	62 c1 fd 28 58 ca    	vaddpd %ymm10,%ymm0,%ymm17
  60d119:	c5 f5 5c cb          	vsubpd %ymm3,%ymm1,%ymm1
  60d11d:	c4 c1 7d 5c c2       	vsubpd %ymm10,%ymm0,%ymm0
  60d122:	c4 c1 15 58 d8       	vaddpd %ymm8,%ymm13,%ymm3
  60d127:	c5 6d 5c d7          	vsubpd %ymm7,%ymm2,%ymm10
  60d12b:	c4 41 15 5c c0       	vsubpd %ymm8,%ymm13,%ymm8
  60d130:	c5 ed 58 d7          	vaddpd %ymm7,%ymm2,%ymm2
  60d134:	c5 9d 58 fc          	vaddpd %ymm4,%ymm12,%ymm7
  60d138:	c4 c1 5d 5c e4       	vsubpd %ymm12,%ymm4,%ymm4
  60d13d:	c5 0d 58 e6          	vaddpd %ymm6,%ymm14,%ymm12
  60d141:	c5 8d 5c f6          	vsubpd %ymm6,%ymm14,%ymm6
  60d145:	62 31 d5 28 58 e8    	vaddpd %ymm16,%ymm5,%ymm13
  60d14b:	62 b1 d5 28 5c e8    	vsubpd %ymm16,%ymm5,%ymm5
  60d151:	c4 41 35 58 f3       	vaddpd %ymm11,%ymm9,%ymm14
  60d156:	c4 41 35 5c cb       	vsubpd %ymm11,%ymm9,%ymm9
  60d15b:	c5 1d 58 df          	vaddpd %ymm7,%ymm12,%ymm11
  60d15f:	62 c1 dd 28 58 c1    	vaddpd %ymm9,%ymm4,%ymm16
  60d165:	c4 c1 45 5c fc       	vsubpd %ymm12,%ymm7,%ymm7
  60d16a:	c4 c1 5d 5c e1       	vsubpd %ymm9,%ymm4,%ymm4
  60d16f:	c4 41 15 58 ce       	vaddpd %ymm14,%ymm13,%ymm9
  60d174:	c5 55 5c e6          	vsubpd %ymm6,%ymm5,%ymm12
  60d178:	c4 41 15 5c ee       	vsubpd %ymm14,%ymm13,%ymm13
  60d17d:	c5 d5 58 ee          	vaddpd %ymm6,%ymm5,%ymm5
  60d181:	62 d1 fd 20 58 f4    	vaddpd %ymm12,%ymm16,%ymm6
  60d187:	c4 62 7d 19 35 50 66 	vbroadcastsd -0x5a99b0(%rip),%ymm14        # 637e0 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x3510>
  60d18e:	a5 ff 
  60d190:	c5 8d 59 f6          	vmulpd %ymm6,%ymm14,%ymm6
  60d194:	62 31 9d 28 5c e0    	vsubpd %ymm16,%ymm12,%ymm12
  60d19a:	c4 41 1d 59 e6       	vmulpd %ymm14,%ymm12,%ymm12
  60d19f:	62 e1 d5 28 5c c4    	vsubpd %ymm4,%ymm5,%ymm16
  60d1a5:	62 51 fd 20 59 f6    	vmulpd %ymm14,%ymm16,%ymm14
  60d1ab:	c5 dd 58 e5          	vaddpd %ymm5,%ymm4,%ymm4
  60d1af:	62 f1 dd 38 59 25 67 	vmulpd -0x5a9a99(%rip){1to4},%ymm4,%ymm4        # 63720 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x3450>
  60d1b6:	65 a5 ff 
  60d1b9:	c4 c1 05 58 eb       	vaddpd %ymm11,%ymm15,%ymm5
  60d1be:	c4 41 05 5c db       	vsubpd %ymm11,%ymm15,%ymm11
  60d1c3:	c5 35 58 fb          	vaddpd %ymm3,%ymm9,%ymm15
  60d1c7:	c4 c1 65 5c d9       	vsubpd %ymm9,%ymm3,%ymm3
  60d1cc:	62 71 f5 20 58 ce    	vaddpd %ymm6,%ymm17,%ymm9
  60d1d2:	62 f1 f5 20 5c f6    	vsubpd %ymm6,%ymm17,%ymm6
  60d1d8:	62 c1 ad 28 58 c4    	vaddpd %ymm12,%ymm10,%ymm16
  60d1de:	c4 41 2d 5c d4       	vsubpd %ymm12,%ymm10,%ymm10
  60d1e3:	c5 15 58 e1          	vaddpd %ymm1,%ymm13,%ymm12
  60d1e7:	c4 c1 75 5c cd       	vsubpd %ymm13,%ymm1,%ymm1
  60d1ec:	c5 3d 5c ef          	vsubpd %ymm7,%ymm8,%ymm13
  60d1f0:	c5 bd 58 ff          	vaddpd %ymm7,%ymm8,%ymm7
  60d1f4:	c5 0d 58 c0          	vaddpd %ymm0,%ymm14,%ymm8
  60d1f8:	c4 c1 7d 5c c6       	vsubpd %ymm14,%ymm0,%ymm0
  60d1fd:	c5 6d 58 f4          	vaddpd %ymm4,%ymm2,%ymm14
  60d201:	c5 ed 5c d4          	vsubpd %ymm4,%ymm2,%ymm2
  60d205:	c5 fd 28 25 f3 75 a6 	vmovapd -0x598a0d(%rip),%ymm4        # 74800 <anon.3e05f4d234743c880c00ee55056163a6.0.llvm.11137056269156861578+0xb979>
  60d20c:	ff 
  60d20d:	62 c1 fd 28 28 cf    	vmovapd %ymm15,%ymm17
  60d213:	62 e2 dd 28 7f cd    	vpermt2pd %ymm5,%ymm4,%ymm17
  60d219:	62 e1 fd 28 28 15 7d 	vmovapd -0x598183(%rip),%ymm18        # 750a0 <anon.3e05f4d234743c880c00ee55056163a6.0.llvm.11137056269156861578+0xc219>
  60d220:	7e a6 ff 
  60d223:	62 72 ed 20 7f fd    	vpermt2pd %ymm5,%ymm18,%ymm15
  60d229:	62 e1 fd 28 11 0e    	vmovupd %ymm17,(%rsi)
  60d22f:	c5 7d 11 7e 20       	vmovupd %ymm15,0x20(%rsi)
  60d234:	62 b1 fd 28 28 e8    	vmovapd %ymm16,%ymm5
  60d23a:	62 d2 dd 28 7f e9    	vpermt2pd %ymm9,%ymm4,%ymm5
  60d240:	62 c2 ed 20 7f c1    	vpermt2pd %ymm9,%ymm18,%ymm16
  60d246:	c5 fd 11 6e 40       	vmovupd %ymm5,0x40(%rsi)
  60d24b:	62 e1 fd 28 11 46 03 	vmovupd %ymm16,0x60(%rsi)
  60d252:	c5 7d 29 ed          	vmovapd %ymm13,%ymm5
  60d256:	62 d2 dd 28 7f ec    	vpermt2pd %ymm12,%ymm4,%ymm5
  60d25c:	62 52 ed 20 7f ec    	vpermt2pd %ymm12,%ymm18,%ymm13
  60d262:	c5 fd 11 ae 80 00 00 	vmovupd %ymm5,0x80(%rsi)
  60d269:	00 
  60d26a:	c5 7d 11 ae a0 00 00 	vmovupd %ymm13,0xa0(%rsi)
  60d271:	00 
  60d272:	c5 7d 29 f5          	vmovapd %ymm14,%ymm5
  60d276:	62 d2 dd 28 7f e8    	vpermt2pd %ymm8,%ymm4,%ymm5
  60d27c:	62 52 ed 20 7f f0    	vpermt2pd %ymm8,%ymm18,%ymm14
  60d282:	c5 fd 11 ae c0 00 00 	vmovupd %ymm5,0xc0(%rsi)
  60d289:	00 
  60d28a:	c5 7d 11 b6 e0 00 00 	vmovupd %ymm14,0xe0(%rsi)
  60d291:	00 
  60d292:	c5 fd 28 eb          	vmovapd %ymm3,%ymm5
  60d296:	62 d2 dd 28 7f eb    	vpermt2pd %ymm11,%ymm4,%ymm5
  60d29c:	62 d2 ed 20 7f db    	vpermt2pd %ymm11,%ymm18,%ymm3
  60d2a2:	c5 fd 11 ae 00 01 00 	vmovupd %ymm5,0x100(%rsi)
  60d2a9:	00 
  60d2aa:	c5 fd 11 9e 20 01 00 	vmovupd %ymm3,0x120(%rsi)
  60d2b1:	00 
  60d2b2:	c5 7d 29 d3          	vmovapd %ymm10,%ymm3
  60d2b6:	62 f2 dd 28 7f de    	vpermt2pd %ymm6,%ymm4,%ymm3
  60d2bc:	62 72 ed 20 7f d6    	vpermt2pd %ymm6,%ymm18,%ymm10
  60d2c2:	c5 fd 11 9e 40 01 00 	vmovupd %ymm3,0x140(%rsi)
  60d2c9:	00 
  60d2ca:	c5 7d 11 96 60 01 00 	vmovupd %ymm10,0x160(%rsi)
  60d2d1:	00 
  60d2d2:	c5 fd 28 df          	vmovapd %ymm7,%ymm3
  60d2d6:	62 f2 dd 28 7f d9    	vpermt2pd %ymm1,%ymm4,%ymm3
  60d2dc:	62 f2 ed 20 7f f9    	vpermt2pd %ymm1,%ymm18,%ymm7
  60d2e2:	c5 fd 11 9e 80 01 00 	vmovupd %ymm3,0x180(%rsi)
  60d2e9:	00 
  60d2ea:	c5 fd 11 be a0 01 00 	vmovupd %ymm7,0x1a0(%rsi)
  60d2f1:	00 
  60d2f2:	62 f2 ed 28 77 e0    	vpermi2pd %ymm0,%ymm2,%ymm4
  60d2f8:	62 f2 ed 20 7f d0    	vpermt2pd %ymm0,%ymm18,%ymm2
  60d2fe:	c5 fd 11 a6 c0 01 00 	vmovupd %ymm4,0x1c0(%rsi)
  60d305:	00 
  60d306:	c5 fd 11 96 e0 01 00 	vmovupd %ymm2,0x1e0(%rsi)
  60d30d:	00 
  60d30e:	c5 f8 77             	vzeroupper
  60d311:	c3                   	ret
  60d312:	cc                   	int3
  60d313:	cc                   	int3
  60d314:	cc                   	int3
  60d315:	cc                   	int3
  60d316:	cc                   	int3
  60d317:	cc                   	int3
  60d318:	cc                   	int3
  60d319:	cc                   	int3
  60d31a:	cc                   	int3
  60d31b:	cc                   	int3
  60d31c:	cc                   	int3
  60d31d:	cc                   	int3
  60d31e:	cc                   	int3
  60d31f:	cc                   	int3
