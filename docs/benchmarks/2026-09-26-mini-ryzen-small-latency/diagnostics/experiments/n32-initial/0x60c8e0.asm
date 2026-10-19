
target/small-latency/n32-diagnostic:     file format elf64-x86-64


Disassembly of section .text:

000000000060c8e0 <<fastfft::engine::small::specialized::Avx512Leaf as fastfft::engine::small::Kernel<V>>::one>:
  60c8e0:	62 f1 fd 48 28 05 d6 	vmovapd -0x58fd2a(%rip),%zmm0        # 7cbc0 <anon.7463adf7626489af349db6ee83149a8a.0.llvm.16491393852443438238+0x57c8>
  60c8e7:	02 a7 ff 
  60c8ea:	62 f1 fd 48 10 0f    	vmovupd (%rdi),%zmm1
  60c8f0:	62 f1 fd 48 10 57 01 	vmovupd 0x40(%rdi),%zmm2
  60c8f7:	62 f1 fd 48 10 5f 02 	vmovupd 0x80(%rdi),%zmm3
  60c8fe:	62 f1 fd 48 10 67 03 	vmovupd 0xc0(%rdi),%zmm4
  60c905:	62 f1 fd 48 28 e9    	vmovapd %zmm1,%zmm5
  60c90b:	62 f2 fd 48 7f ea    	vpermt2pd %zmm2,%zmm0,%zmm5
  60c911:	62 f1 fd 48 28 35 e5 	vmovapd -0x58fd1b(%rip),%zmm6        # 7cc00 <anon.7463adf7626489af349db6ee83149a8a.0.llvm.16491393852443438238+0x5808>
  60c918:	02 a7 ff 
  60c91b:	62 f2 cd 48 7f ca    	vpermt2pd %zmm2,%zmm6,%zmm1
  60c921:	62 f1 fd 48 28 d3    	vmovapd %zmm3,%zmm2
  60c927:	62 f2 fd 48 7f d4    	vpermt2pd %zmm4,%zmm0,%zmm2
  60c92d:	62 f2 cd 48 7f dc    	vpermt2pd %zmm4,%zmm6,%zmm3
  60c933:	62 f1 fd 48 10 67 04 	vmovupd 0x100(%rdi),%zmm4
  60c93a:	62 f1 fd 48 10 7f 05 	vmovupd 0x140(%rdi),%zmm7
  60c941:	62 71 fd 48 28 c4    	vmovapd %zmm4,%zmm8
  60c947:	62 72 fd 48 7f c7    	vpermt2pd %zmm7,%zmm0,%zmm8
  60c94d:	62 f2 cd 48 7f e7    	vpermt2pd %zmm7,%zmm6,%zmm4
  60c953:	62 f1 fd 48 10 7f 06 	vmovupd 0x180(%rdi),%zmm7
  60c95a:	62 71 fd 48 10 4f 07 	vmovupd 0x1c0(%rdi),%zmm9
  60c961:	62 d2 c5 48 77 c1    	vpermi2pd %zmm9,%zmm7,%zmm0
  60c967:	62 d2 cd 48 7f f9    	vpermt2pd %zmm9,%zmm6,%zmm7
  60c96d:	62 d1 d5 48 58 f0    	vaddpd %zmm8,%zmm5,%zmm6
  60c973:	62 d1 d5 48 5c e8    	vsubpd %zmm8,%zmm5,%zmm5
  60c979:	62 71 ed 48 58 c0    	vaddpd %zmm0,%zmm2,%zmm8
  60c97f:	62 f1 ed 48 5c c0    	vsubpd %zmm0,%zmm2,%zmm0
  60c985:	62 f1 f5 48 58 d4    	vaddpd %zmm4,%zmm1,%zmm2
  60c98b:	62 f1 f5 48 5c cc    	vsubpd %zmm4,%zmm1,%zmm1
  60c991:	62 f1 e5 48 58 e7    	vaddpd %zmm7,%zmm3,%zmm4
  60c997:	62 f1 e5 48 5c df    	vsubpd %zmm7,%zmm3,%zmm3
  60c99d:	62 51 cd 48 58 c8    	vaddpd %zmm8,%zmm6,%zmm9
  60c9a3:	62 71 d5 48 58 d3    	vaddpd %zmm3,%zmm5,%zmm10
  60c9a9:	62 d1 cd 48 5c f0    	vsubpd %zmm8,%zmm6,%zmm6
  60c9af:	62 f1 d5 48 5c db    	vsubpd %zmm3,%zmm5,%zmm3
  60c9b5:	62 f1 ed 48 58 ec    	vaddpd %zmm4,%zmm2,%zmm5
  60c9bb:	62 71 f5 48 5c c0    	vsubpd %zmm0,%zmm1,%zmm8
  60c9c1:	62 f1 ed 48 5c e4    	vsubpd %zmm4,%zmm2,%zmm4
  60c9c7:	62 71 f5 48 58 d8    	vaddpd %zmm0,%zmm1,%zmm11
  60c9cd:	c4 c1 35 14 ca       	vunpcklpd %ymm10,%ymm9,%ymm1
  60c9d2:	c4 c1 35 15 d2       	vunpckhpd %ymm10,%ymm9,%ymm2
  60c9d7:	c5 cd 14 fb          	vunpcklpd %ymm3,%ymm6,%ymm7
  60c9db:	c5 4d 15 e3          	vunpckhpd %ymm3,%ymm6,%ymm12
  60c9df:	c4 e3 75 18 c7 01    	vinsertf128 $0x1,%xmm7,%ymm1,%ymm0
  60c9e5:	c4 43 6d 18 ec 01    	vinsertf128 $0x1,%xmm12,%ymm2,%ymm13
  60c9eb:	c4 63 75 06 f7 31    	vperm2f128 $0x31,%ymm7,%ymm1,%ymm14
  60c9f1:	c4 c3 6d 06 fc 31    	vperm2f128 $0x31,%ymm12,%ymm2,%ymm7
  60c9f7:	62 73 fd 48 1b d1 01 	vextractf64x4 $0x1,%zmm10,%ymm1
  60c9fe:	62 73 fd 48 1b ca 01 	vextractf64x4 $0x1,%zmm9,%ymm2
  60ca05:	c5 6d 14 c9          	vunpcklpd %ymm1,%ymm2,%ymm9
  60ca09:	c5 ed 15 c9          	vunpckhpd %ymm1,%ymm2,%ymm1
  60ca0d:	62 f3 fd 48 1b da 01 	vextractf64x4 $0x1,%zmm3,%ymm2
  60ca14:	62 f3 fd 48 1b f3 01 	vextractf64x4 $0x1,%zmm6,%ymm3
  60ca1b:	c5 65 14 d2          	vunpcklpd %ymm2,%ymm3,%ymm10
  60ca1f:	c5 e5 15 d2          	vunpckhpd %ymm2,%ymm3,%ymm2
  60ca23:	c4 43 35 18 e2 01    	vinsertf128 $0x1,%xmm10,%ymm9,%ymm12
  60ca29:	c4 e3 75 18 f2 01    	vinsertf128 $0x1,%xmm2,%ymm1,%ymm6
  60ca2f:	c4 c3 35 06 da 31    	vperm2f128 $0x31,%ymm10,%ymm9,%ymm3
  60ca35:	c4 e3 75 06 ca 31    	vperm2f128 $0x31,%ymm2,%ymm1,%ymm1
  60ca3b:	c4 41 55 14 c8       	vunpcklpd %ymm8,%ymm5,%ymm9
  60ca40:	c4 41 55 15 d0       	vunpckhpd %ymm8,%ymm5,%ymm10
  60ca45:	c4 41 5d 14 fb       	vunpcklpd %ymm11,%ymm4,%ymm15
  60ca4a:	62 c1 dd 28 15 c3    	vunpckhpd %ymm11,%ymm4,%ymm16
  60ca50:	c4 c3 35 18 d7 01    	vinsertf128 $0x1,%xmm15,%ymm9,%ymm2
  60ca56:	62 a3 2d 28 18 c8 01 	vinsertf32x4 $0x1,%xmm16,%ymm10,%ymm17
  60ca5d:	c4 43 35 06 cf 31    	vperm2f128 $0x31,%ymm15,%ymm9,%ymm9
  60ca63:	62 33 ad 28 23 d0 03 	vshuff64x2 $0x3,%ymm16,%ymm10,%ymm10
  60ca6a:	62 53 fd 48 1b c0 01 	vextractf64x4 $0x1,%zmm8,%ymm8
  60ca71:	62 f3 fd 48 1b ed 01 	vextractf64x4 $0x1,%zmm5,%ymm5
  60ca78:	c4 41 55 14 f8       	vunpcklpd %ymm8,%ymm5,%ymm15
  60ca7d:	c4 c1 55 15 e8       	vunpckhpd %ymm8,%ymm5,%ymm5
  60ca82:	62 53 fd 48 1b d8 01 	vextractf64x4 $0x1,%zmm11,%ymm8
  60ca89:	62 f3 fd 48 1b e4 01 	vextractf64x4 $0x1,%zmm4,%ymm4
  60ca90:	c4 41 5d 14 d8       	vunpcklpd %ymm8,%ymm4,%ymm11
  60ca95:	c4 c1 5d 15 e0       	vunpckhpd %ymm8,%ymm4,%ymm4
  60ca9a:	c4 43 05 18 c3 01    	vinsertf128 $0x1,%xmm11,%ymm15,%ymm8
  60caa0:	62 e3 55 28 18 c4 01 	vinsertf32x4 $0x1,%xmm4,%ymm5,%ymm16
  60caa7:	c4 43 05 06 db 31    	vperm2f128 $0x31,%ymm11,%ymm15,%ymm11
  60caad:	c4 63 55 06 fc 31    	vperm2f128 $0x31,%ymm4,%ymm5,%ymm15
  60cab3:	62 e1 fd 28 28 15 23 	vmovapd -0x5977dd(%rip),%ymm18        # 752e0 <anon.3e05f4d234743c880c00ee55056163a6.0.llvm.11137056269156861578+0xc459>
  60caba:	88 a6 ff 
  60cabd:	62 b1 f5 20 59 e2    	vmulpd %ymm18,%ymm17,%ymm4
  60cac3:	c5 fd 28 2d 15 7b a6 	vmovapd -0x5984eb(%rip),%ymm5        # 745e0 <anon.3e05f4d234743c880c00ee55056163a6.0.llvm.11137056269156861578+0xb759>
  60caca:	ff 
  60cacb:	c4 e2 95 b8 e5       	vfmadd231pd %ymm5,%ymm13,%ymm4
  60cad0:	62 f1 f5 20 59 ed    	vmulpd %ymm5,%ymm17,%ymm5
  60cad6:	62 b2 95 28 bc ea    	vfnmadd231pd %ymm18,%ymm13,%ymm5
  60cadc:	c5 7d 28 2d 5c 95 a6 	vmovapd -0x596aa4(%rip),%ymm13        # 76040 <anon.3e05f4d234743c880c00ee55056163a6.0.llvm.11137056269156861578+0xd1b9>
  60cae3:	ff 
  60cae4:	62 c1 b5 28 59 cd    	vmulpd %ymm13,%ymm9,%ymm17
  60caea:	62 e1 fd 28 28 15 4c 	vmovapd -0x598bb4(%rip),%ymm18        # 73f40 <anon.3e05f4d234743c880c00ee55056163a6.0.llvm.11137056269156861578+0xb0b9>
  60caf1:	74 a6 ff 
  60caf4:	62 a2 8d 28 b8 ca    	vfmadd231pd %ymm18,%ymm14,%ymm17
  60cafa:	62 31 b5 28 59 ca    	vmulpd %ymm18,%ymm9,%ymm9
  60cb00:	c4 42 8d bc cd       	vfnmadd231pd %ymm13,%ymm14,%ymm9
  60cb05:	c5 7d 28 2d b3 7c a6 	vmovapd -0x59834d(%rip),%ymm13        # 747c0 <anon.3e05f4d234743c880c00ee55056163a6.0.llvm.11137056269156861578+0xb939>
  60cb0c:	ff 
  60cb0d:	c4 41 2d 59 f5       	vmulpd %ymm13,%ymm10,%ymm14
  60cb12:	62 e1 fd 28 28 15 44 	vmovapd -0x596abc(%rip),%ymm18        # 76060 <anon.3e05f4d234743c880c00ee55056163a6.0.llvm.11137056269156861578+0xd1d9>
  60cb19:	95 a6 ff 
  60cb1c:	62 32 c5 28 b8 f2    	vfmadd231pd %ymm18,%ymm7,%ymm14
  60cb22:	62 31 ad 28 59 d2    	vmulpd %ymm18,%ymm10,%ymm10
  60cb28:	c4 42 c5 bc d5       	vfnmadd231pd %ymm13,%ymm7,%ymm10
  60cb2d:	c5 fd 28 3d 6b 90 a6 	vmovapd -0x596f95(%rip),%ymm7        # 75ba0 <anon.3e05f4d234743c880c00ee55056163a6.0.llvm.11137056269156861578+0xcd19>
  60cb34:	ff 
  60cb35:	c5 3d 59 ef          	vmulpd %ymm7,%ymm8,%ymm13
  60cb39:	62 e1 fd 28 28 15 3d 	vmovapd -0x596ac3(%rip),%ymm18        # 76080 <anon.3e05f4d234743c880c00ee55056163a6.0.llvm.11137056269156861578+0xd1f9>
  60cb40:	95 a6 ff 
  60cb43:	62 32 9d 28 b8 ea    	vfmadd231pd %ymm18,%ymm12,%ymm13
  60cb49:	62 31 bd 28 59 c2    	vmulpd %ymm18,%ymm8,%ymm8
  60cb4f:	c4 62 9d bc c7       	vfnmadd231pd %ymm7,%ymm12,%ymm8
  60cb54:	c5 fd 28 3d 64 83 a6 	vmovapd -0x597c9c(%rip),%ymm7        # 74ec0 <anon.3e05f4d234743c880c00ee55056163a6.0.llvm.11137056269156861578+0xc039>
  60cb5b:	ff 
  60cb5c:	62 71 fd 20 59 e7    	vmulpd %ymm7,%ymm16,%ymm12
  60cb62:	62 e1 fd 28 28 15 f4 	vmovapd -0x59720c(%rip),%ymm18        # 75960 <anon.3e05f4d234743c880c00ee55056163a6.0.llvm.11137056269156861578+0xcad9>
  60cb69:	8d a6 ff 
  60cb6c:	62 32 cd 28 b8 e2    	vfmadd231pd %ymm18,%ymm6,%ymm12
  60cb72:	62 a1 fd 20 59 c2    	vmulpd %ymm18,%ymm16,%ymm16
  60cb78:	62 e2 cd 28 bc c7    	vfnmadd231pd %ymm7,%ymm6,%ymm16
  60cb7e:	c5 fd 28 35 fa 85 a6 	vmovapd -0x597a06(%rip),%ymm6        # 75180 <anon.3e05f4d234743c880c00ee55056163a6.0.llvm.11137056269156861578+0xc2f9>
  60cb85:	ff 
  60cb86:	c5 a5 59 fe          	vmulpd %ymm6,%ymm11,%ymm7
  60cb8a:	62 e1 fd 28 28 15 6c 	vmovapd -0x597894(%rip),%ymm18        # 75300 <anon.3e05f4d234743c880c00ee55056163a6.0.llvm.11137056269156861578+0xc479>
  60cb91:	87 a6 ff 
  60cb94:	62 b2 e5 28 b8 fa    	vfmadd231pd %ymm18,%ymm3,%ymm7
  60cb9a:	62 31 a5 28 59 da    	vmulpd %ymm18,%ymm11,%ymm11
  60cba0:	c4 62 e5 bc de       	vfnmadd231pd %ymm6,%ymm3,%ymm11
  60cba5:	c5 fd 28 1d 73 80 a6 	vmovapd -0x597f8d(%rip),%ymm3        # 74c20 <anon.3e05f4d234743c880c00ee55056163a6.0.llvm.11137056269156861578+0xbd99>
  60cbac:	ff 
  60cbad:	c5 85 59 f3          	vmulpd %ymm3,%ymm15,%ymm6
  60cbb1:	62 e1 fd 28 28 15 05 	vmovapd -0x5988fb(%rip),%ymm18        # 742c0 <anon.3e05f4d234743c880c00ee55056163a6.0.llvm.11137056269156861578+0xb439>
  60cbb8:	77 a6 ff 
  60cbbb:	62 b2 f5 28 b8 f2    	vfmadd231pd %ymm18,%ymm1,%ymm6
  60cbc1:	62 31 85 28 59 fa    	vmulpd %ymm18,%ymm15,%ymm15
  60cbc7:	c4 62 f5 bc fb       	vfnmadd231pd %ymm3,%ymm1,%ymm15
  60cbcc:	c5 95 58 c8          	vaddpd %ymm0,%ymm13,%ymm1
  60cbd0:	c4 c1 7d 5c c5       	vsubpd %ymm13,%ymm0,%ymm0
  60cbd5:	62 f1 f5 20 58 df    	vaddpd %ymm7,%ymm17,%ymm3
  60cbdb:	62 f1 f5 20 5c ff    	vsubpd %ymm7,%ymm17,%ymm7
  60cbe1:	c5 3d 58 ea          	vaddpd %ymm2,%ymm8,%ymm13
  60cbe5:	c4 c1 6d 5c d0       	vsubpd %ymm8,%ymm2,%ymm2
  60cbea:	c4 41 35 58 c3       	vaddpd %ymm11,%ymm9,%ymm8
  60cbef:	c4 41 35 5c cb       	vsubpd %ymm11,%ymm9,%ymm9
  60cbf4:	c5 75 58 db          	vaddpd %ymm3,%ymm1,%ymm11
  60cbf8:	62 c1 fd 28 58 c9    	vaddpd %ymm9,%ymm0,%ymm17
  60cbfe:	c5 f5 5c cb          	vsubpd %ymm3,%ymm1,%ymm1
  60cc02:	c4 c1 7d 5c c1       	vsubpd %ymm9,%ymm0,%ymm0
  60cc07:	c4 c1 15 58 d8       	vaddpd %ymm8,%ymm13,%ymm3
  60cc0c:	c5 6d 5c cf          	vsubpd %ymm7,%ymm2,%ymm9
  60cc10:	c4 41 15 5c c0       	vsubpd %ymm8,%ymm13,%ymm8
  60cc15:	c5 ed 58 d7          	vaddpd %ymm7,%ymm2,%ymm2
  60cc19:	c5 9d 58 fc          	vaddpd %ymm4,%ymm12,%ymm7
  60cc1d:	c4 c1 5d 5c e4       	vsubpd %ymm12,%ymm4,%ymm4
  60cc22:	c5 0d 58 e6          	vaddpd %ymm6,%ymm14,%ymm12
  60cc26:	c5 8d 5c f6          	vsubpd %ymm6,%ymm14,%ymm6
  60cc2a:	62 31 d5 28 58 e8    	vaddpd %ymm16,%ymm5,%ymm13
  60cc30:	62 b1 d5 28 5c e8    	vsubpd %ymm16,%ymm5,%ymm5
  60cc36:	c4 41 2d 58 f7       	vaddpd %ymm15,%ymm10,%ymm14
  60cc3b:	c4 41 2d 5c d7       	vsubpd %ymm15,%ymm10,%ymm10
  60cc40:	c5 1d 58 ff          	vaddpd %ymm7,%ymm12,%ymm15
  60cc44:	62 c1 dd 28 58 c2    	vaddpd %ymm10,%ymm4,%ymm16
  60cc4a:	c4 c1 45 5c fc       	vsubpd %ymm12,%ymm7,%ymm7
  60cc4f:	c4 c1 5d 5c e2       	vsubpd %ymm10,%ymm4,%ymm4
  60cc54:	c4 41 15 58 d6       	vaddpd %ymm14,%ymm13,%ymm10
  60cc59:	c5 55 5c e6          	vsubpd %ymm6,%ymm5,%ymm12
  60cc5d:	c4 41 15 5c ee       	vsubpd %ymm14,%ymm13,%ymm13
  60cc62:	c5 d5 58 ee          	vaddpd %ymm6,%ymm5,%ymm5
  60cc66:	62 d1 fd 20 58 f4    	vaddpd %ymm12,%ymm16,%ymm6
  60cc6c:	c4 62 7d 19 35 6b 6b 	vbroadcastsd -0x5a9495(%rip),%ymm14        # 637e0 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x3510>
  60cc73:	a5 ff 
  60cc75:	c5 8d 59 f6          	vmulpd %ymm6,%ymm14,%ymm6
  60cc79:	62 31 9d 28 5c e0    	vsubpd %ymm16,%ymm12,%ymm12
  60cc7f:	c4 41 1d 59 e6       	vmulpd %ymm14,%ymm12,%ymm12
  60cc84:	62 e1 d5 28 5c c4    	vsubpd %ymm4,%ymm5,%ymm16
  60cc8a:	62 51 fd 20 59 f6    	vmulpd %ymm14,%ymm16,%ymm14
  60cc90:	c5 dd 58 e5          	vaddpd %ymm5,%ymm4,%ymm4
  60cc94:	62 f1 dd 38 59 25 82 	vmulpd -0x5a957e(%rip){1to4},%ymm4,%ymm4        # 63720 <anon.45faabf302361ea392099cdae8c595a1.42.llvm.1789924433666720566+0x3450>
  60cc9b:	6a a5 ff 
  60cc9e:	c4 c1 25 58 ef       	vaddpd %ymm15,%ymm11,%ymm5
  60cca3:	c4 41 25 5c df       	vsubpd %ymm15,%ymm11,%ymm11
  60cca8:	c5 2d 58 fb          	vaddpd %ymm3,%ymm10,%ymm15
  60ccac:	c4 c1 65 5c da       	vsubpd %ymm10,%ymm3,%ymm3
  60ccb1:	62 71 f5 20 58 d6    	vaddpd %ymm6,%ymm17,%ymm10
  60ccb7:	62 f1 f5 20 5c f6    	vsubpd %ymm6,%ymm17,%ymm6
  60ccbd:	62 c1 b5 28 58 c4    	vaddpd %ymm12,%ymm9,%ymm16
  60ccc3:	c4 41 35 5c cc       	vsubpd %ymm12,%ymm9,%ymm9
  60ccc8:	c5 15 58 e1          	vaddpd %ymm1,%ymm13,%ymm12
  60cccc:	c4 c1 75 5c cd       	vsubpd %ymm13,%ymm1,%ymm1
  60ccd1:	c5 3d 5c ef          	vsubpd %ymm7,%ymm8,%ymm13
  60ccd5:	c5 bd 58 ff          	vaddpd %ymm7,%ymm8,%ymm7
  60ccd9:	c5 0d 58 c0          	vaddpd %ymm0,%ymm14,%ymm8
  60ccdd:	c4 c1 7d 5c c6       	vsubpd %ymm14,%ymm0,%ymm0
  60cce2:	c5 6d 58 f4          	vaddpd %ymm4,%ymm2,%ymm14
  60cce6:	c5 ed 5c d4          	vsubpd %ymm4,%ymm2,%ymm2
  60ccea:	c5 fd 28 25 0e 7b a6 	vmovapd -0x5984f2(%rip),%ymm4        # 74800 <anon.3e05f4d234743c880c00ee55056163a6.0.llvm.11137056269156861578+0xb979>
  60ccf1:	ff 
  60ccf2:	62 e1 fd 28 28 cd    	vmovapd %ymm5,%ymm17
  60ccf8:	62 c2 dd 28 7f cf    	vpermt2pd %ymm15,%ymm4,%ymm17
  60ccfe:	62 e1 fd 28 28 15 98 	vmovapd -0x597c68(%rip),%ymm18        # 750a0 <anon.3e05f4d234743c880c00ee55056163a6.0.llvm.11137056269156861578+0xc219>
  60cd05:	83 a6 ff 
  60cd08:	62 d2 ed 20 7f ef    	vpermt2pd %ymm15,%ymm18,%ymm5
  60cd0e:	62 e1 fd 28 11 0e    	vmovupd %ymm17,(%rsi)
  60cd14:	c5 fd 11 6e 20       	vmovupd %ymm5,0x20(%rsi)
  60cd19:	c5 7d 29 d5          	vmovapd %ymm10,%ymm5
  60cd1d:	62 b2 dd 28 7f e8    	vpermt2pd %ymm16,%ymm4,%ymm5
  60cd23:	62 32 ed 20 7f d0    	vpermt2pd %ymm16,%ymm18,%ymm10
  60cd29:	c5 fd 11 6e 40       	vmovupd %ymm5,0x40(%rsi)
  60cd2e:	c5 7d 11 56 60       	vmovupd %ymm10,0x60(%rsi)
  60cd33:	c5 7d 29 e5          	vmovapd %ymm12,%ymm5
  60cd37:	62 d2 dd 28 7f ed    	vpermt2pd %ymm13,%ymm4,%ymm5
  60cd3d:	62 52 ed 20 7f e5    	vpermt2pd %ymm13,%ymm18,%ymm12
  60cd43:	c5 fd 11 ae 80 00 00 	vmovupd %ymm5,0x80(%rsi)
  60cd4a:	00 
  60cd4b:	c5 7d 11 a6 a0 00 00 	vmovupd %ymm12,0xa0(%rsi)
  60cd52:	00 
  60cd53:	c5 7d 29 c5          	vmovapd %ymm8,%ymm5
  60cd57:	62 d2 dd 28 7f ee    	vpermt2pd %ymm14,%ymm4,%ymm5
  60cd5d:	62 52 ed 20 7f c6    	vpermt2pd %ymm14,%ymm18,%ymm8
  60cd63:	c5 fd 11 ae c0 00 00 	vmovupd %ymm5,0xc0(%rsi)
  60cd6a:	00 
  60cd6b:	c5 7d 11 86 e0 00 00 	vmovupd %ymm8,0xe0(%rsi)
  60cd72:	00 
  60cd73:	c5 7d 29 dd          	vmovapd %ymm11,%ymm5
  60cd77:	62 f2 dd 28 7f eb    	vpermt2pd %ymm3,%ymm4,%ymm5
  60cd7d:	62 72 ed 20 7f db    	vpermt2pd %ymm3,%ymm18,%ymm11
  60cd83:	c5 fd 11 ae 00 01 00 	vmovupd %ymm5,0x100(%rsi)
  60cd8a:	00 
  60cd8b:	c5 7d 11 9e 20 01 00 	vmovupd %ymm11,0x120(%rsi)
  60cd92:	00 
  60cd93:	c5 fd 28 de          	vmovapd %ymm6,%ymm3
  60cd97:	62 d2 dd 28 7f d9    	vpermt2pd %ymm9,%ymm4,%ymm3
  60cd9d:	62 d2 ed 20 7f f1    	vpermt2pd %ymm9,%ymm18,%ymm6
  60cda3:	c5 fd 11 9e 40 01 00 	vmovupd %ymm3,0x140(%rsi)
  60cdaa:	00 
  60cdab:	c5 fd 11 b6 60 01 00 	vmovupd %ymm6,0x160(%rsi)
  60cdb2:	00 
  60cdb3:	c5 fd 28 d9          	vmovapd %ymm1,%ymm3
  60cdb7:	62 f2 dd 28 7f df    	vpermt2pd %ymm7,%ymm4,%ymm3
  60cdbd:	62 f2 ed 20 7f cf    	vpermt2pd %ymm7,%ymm18,%ymm1
  60cdc3:	c5 fd 11 9e 80 01 00 	vmovupd %ymm3,0x180(%rsi)
  60cdca:	00 
  60cdcb:	c5 fd 11 8e a0 01 00 	vmovupd %ymm1,0x1a0(%rsi)
  60cdd2:	00 
  60cdd3:	62 f2 fd 28 77 e2    	vpermi2pd %ymm2,%ymm0,%ymm4
  60cdd9:	62 f2 ed 20 7f c2    	vpermt2pd %ymm2,%ymm18,%ymm0
  60cddf:	c5 fd 11 a6 c0 01 00 	vmovupd %ymm4,0x1c0(%rsi)
  60cde6:	00 
  60cde7:	c5 fd 11 86 e0 01 00 	vmovupd %ymm0,0x1e0(%rsi)
  60cdee:	00 
  60cdef:	c5 f8 77             	vzeroupper
  60cdf2:	c3                   	ret
  60cdf3:	cc                   	int3
  60cdf4:	cc                   	int3
  60cdf5:	cc                   	int3
  60cdf6:	cc                   	int3
  60cdf7:	cc                   	int3
  60cdf8:	cc                   	int3
  60cdf9:	cc                   	int3
  60cdfa:	cc                   	int3
  60cdfb:	cc                   	int3
  60cdfc:	cc                   	int3
  60cdfd:	cc                   	int3
  60cdfe:	cc                   	int3
  60cdff:	cc                   	int3
