
target/small-latency/n16-diagnostic:     file format elf64-x86-64


Disassembly of section .text:

0000000000560d90 <<fastfft::engine::small::specialized::Avx2Leaf as fastfft::engine::small::Kernel<V>>::one>:
  560d90:	c5 fd 10 07          	vmovupd (%rdi),%ymm0
  560d94:	c5 fd 10 4f 20       	vmovupd 0x20(%rdi),%ymm1
  560d99:	c5 fd 10 57 40       	vmovupd 0x40(%rdi),%ymm2
  560d9e:	c5 fd 10 5f 60       	vmovupd 0x60(%rdi),%ymm3
  560da3:	c4 e3 7d 06 e1 20    	vperm2f128 $0x20,%ymm1,%ymm0,%ymm4
  560da9:	c4 e3 7d 06 c1 31    	vperm2f128 $0x31,%ymm1,%ymm0,%ymm0
  560daf:	c5 dd 14 c8          	vunpcklpd %ymm0,%ymm4,%ymm1
  560db3:	c5 dd 15 c0          	vunpckhpd %ymm0,%ymm4,%ymm0
  560db7:	c4 e3 6d 06 e3 20    	vperm2f128 $0x20,%ymm3,%ymm2,%ymm4
  560dbd:	c4 e3 6d 06 d3 31    	vperm2f128 $0x31,%ymm3,%ymm2,%ymm2
  560dc3:	c5 dd 14 da          	vunpcklpd %ymm2,%ymm4,%ymm3
  560dc7:	c5 dd 15 d2          	vunpckhpd %ymm2,%ymm4,%ymm2
  560dcb:	c5 fd 10 a7 80 00 00 	vmovupd 0x80(%rdi),%ymm4
  560dd2:	00 
  560dd3:	c5 fd 10 af a0 00 00 	vmovupd 0xa0(%rdi),%ymm5
  560dda:	00 
  560ddb:	c4 e3 5d 06 f5 20    	vperm2f128 $0x20,%ymm5,%ymm4,%ymm6
  560de1:	c4 e3 5d 06 e5 31    	vperm2f128 $0x31,%ymm5,%ymm4,%ymm4
  560de7:	c5 cd 14 ec          	vunpcklpd %ymm4,%ymm6,%ymm5
  560deb:	c5 cd 15 e4          	vunpckhpd %ymm4,%ymm6,%ymm4
  560def:	c5 fd 10 b7 c0 00 00 	vmovupd 0xc0(%rdi),%ymm6
  560df6:	00 
  560df7:	c5 fd 10 bf e0 00 00 	vmovupd 0xe0(%rdi),%ymm7
  560dfe:	00 
  560dff:	c4 63 4d 06 c7 20    	vperm2f128 $0x20,%ymm7,%ymm6,%ymm8
  560e05:	c4 e3 4d 06 f7 31    	vperm2f128 $0x31,%ymm7,%ymm6,%ymm6
  560e0b:	c5 bd 14 fe          	vunpcklpd %ymm6,%ymm8,%ymm7
  560e0f:	c5 bd 15 f6          	vunpckhpd %ymm6,%ymm8,%ymm6
  560e13:	c5 75 58 c5          	vaddpd %ymm5,%ymm1,%ymm8
  560e17:	c5 f5 5c cd          	vsubpd %ymm5,%ymm1,%ymm1
  560e1b:	c5 e5 58 ef          	vaddpd %ymm7,%ymm3,%ymm5
  560e1f:	c5 e5 5c df          	vsubpd %ymm7,%ymm3,%ymm3
  560e23:	c5 fd 58 fc          	vaddpd %ymm4,%ymm0,%ymm7
  560e27:	c5 fd 5c c4          	vsubpd %ymm4,%ymm0,%ymm0
  560e2b:	c5 ed 58 e6          	vaddpd %ymm6,%ymm2,%ymm4
  560e2f:	c5 ed 5c d6          	vsubpd %ymm6,%ymm2,%ymm2
  560e33:	c5 bd 58 f5          	vaddpd %ymm5,%ymm8,%ymm6
  560e37:	c5 75 58 ca          	vaddpd %ymm2,%ymm1,%ymm9
  560e3b:	c5 bd 5c ed          	vsubpd %ymm5,%ymm8,%ymm5
  560e3f:	c5 f5 5c ca          	vsubpd %ymm2,%ymm1,%ymm1
  560e43:	c5 c5 58 d4          	vaddpd %ymm4,%ymm7,%ymm2
  560e47:	c5 7d 5c c3          	vsubpd %ymm3,%ymm0,%ymm8
  560e4b:	c5 c5 5c e4          	vsubpd %ymm4,%ymm7,%ymm4
  560e4f:	c5 fd 58 db          	vaddpd %ymm3,%ymm0,%ymm3
  560e53:	c4 c1 4d 14 f9       	vunpcklpd %ymm9,%ymm6,%ymm7
  560e58:	c4 c1 4d 15 f1       	vunpckhpd %ymm9,%ymm6,%ymm6
  560e5d:	c5 55 14 c9          	vunpcklpd %ymm1,%ymm5,%ymm9
  560e61:	c5 d5 15 c9          	vunpckhpd %ymm1,%ymm5,%ymm1
  560e65:	c4 c3 45 18 c1 01    	vinsertf128 $0x1,%xmm9,%ymm7,%ymm0
  560e6b:	c4 e3 4d 18 e9 01    	vinsertf128 $0x1,%xmm1,%ymm6,%ymm5
  560e71:	c4 c3 45 06 f9 31    	vperm2f128 $0x31,%ymm9,%ymm7,%ymm7
  560e77:	c4 e3 4d 06 c9 31    	vperm2f128 $0x31,%ymm1,%ymm6,%ymm1
  560e7d:	c4 c1 6d 14 f0       	vunpcklpd %ymm8,%ymm2,%ymm6
  560e82:	c4 41 6d 15 c0       	vunpckhpd %ymm8,%ymm2,%ymm8
  560e87:	c5 5d 14 cb          	vunpcklpd %ymm3,%ymm4,%ymm9
  560e8b:	c5 dd 15 db          	vunpckhpd %ymm3,%ymm4,%ymm3
  560e8f:	c4 c3 4d 18 d1 01    	vinsertf128 $0x1,%xmm9,%ymm6,%ymm2
  560e95:	c4 e3 3d 18 e3 01    	vinsertf128 $0x1,%xmm3,%ymm8,%ymm4
  560e9b:	c4 c3 4d 06 f1 31    	vperm2f128 $0x31,%ymm9,%ymm6,%ymm6
  560ea1:	c4 e3 3d 06 db 31    	vperm2f128 $0x31,%ymm3,%ymm8,%ymm3
  560ea7:	c5 7d 28 05 71 4a b0 	vmovapd -0x4fb58f(%rip),%ymm8        # 65920 <anon.4b543d1b78d7cf654c1a2ee33e78dad2.2.llvm.6868728367477014390+0x7ff8>
  560eae:	ff 
  560eaf:	c5 3d 59 cc          	vmulpd %ymm4,%ymm8,%ymm9
  560eb3:	c5 7d 28 15 45 2a b0 	vmovapd -0x4fd5bb(%rip),%ymm10        # 63900 <anon.4b543d1b78d7cf654c1a2ee33e78dad2.2.llvm.6868728367477014390+0x5fd8>
  560eba:	ff 
  560ebb:	c4 42 d5 b8 ca       	vfmadd231pd %ymm10,%ymm5,%ymm9
  560ec0:	c5 ad 59 e4          	vmulpd %ymm4,%ymm10,%ymm4
  560ec4:	c4 c2 d5 bc e0       	vfnmadd231pd %ymm8,%ymm5,%ymm4
  560ec9:	c5 fd 28 2d af 45 b0 	vmovapd -0x4fba51(%rip),%ymm5        # 65480 <anon.4b543d1b78d7cf654c1a2ee33e78dad2.2.llvm.6868728367477014390+0x7b58>
  560ed0:	ff 
  560ed1:	c5 4d 59 c5          	vmulpd %ymm5,%ymm6,%ymm8
  560ed5:	c5 7d 28 15 63 4a b0 	vmovapd -0x4fb59d(%rip),%ymm10        # 65940 <anon.4b543d1b78d7cf654c1a2ee33e78dad2.2.llvm.6868728367477014390+0x8018>
  560edc:	ff 
  560edd:	c4 42 c5 b8 c2       	vfmadd231pd %ymm10,%ymm7,%ymm8
  560ee2:	c5 ad 59 f6          	vmulpd %ymm6,%ymm10,%ymm6
  560ee6:	c4 e2 c5 bc f5       	vfnmadd231pd %ymm5,%ymm7,%ymm6
  560eeb:	c5 fd 28 2d ad 3b b0 	vmovapd -0x4fc453(%rip),%ymm5        # 64aa0 <anon.4b543d1b78d7cf654c1a2ee33e78dad2.2.llvm.6868728367477014390+0x7178>
  560ef2:	ff 
  560ef3:	c5 e5 59 fd          	vmulpd %ymm5,%ymm3,%ymm7
  560ef7:	c5 7d 28 15 01 3d b0 	vmovapd -0x4fc2ff(%rip),%ymm10        # 64c00 <anon.4b543d1b78d7cf654c1a2ee33e78dad2.2.llvm.6868728367477014390+0x72d8>
  560efe:	ff 
  560eff:	c4 c2 f5 b8 fa       	vfmadd231pd %ymm10,%ymm1,%ymm7
  560f04:	c5 ad 59 db          	vmulpd %ymm3,%ymm10,%ymm3
  560f08:	c4 e2 f5 bc dd       	vfnmadd231pd %ymm5,%ymm1,%ymm3
  560f0d:	c5 bd 58 c8          	vaddpd %ymm0,%ymm8,%ymm1
  560f11:	c4 c1 7d 5c c0       	vsubpd %ymm8,%ymm0,%ymm0
  560f16:	c5 b5 58 ef          	vaddpd %ymm7,%ymm9,%ymm5
  560f1a:	c5 b5 5c ff          	vsubpd %ymm7,%ymm9,%ymm7
  560f1e:	c5 6d 58 c6          	vaddpd %ymm6,%ymm2,%ymm8
  560f22:	c5 ed 5c d6          	vsubpd %ymm6,%ymm2,%ymm2
  560f26:	c5 dd 58 f3          	vaddpd %ymm3,%ymm4,%ymm6
  560f2a:	c5 dd 5c db          	vsubpd %ymm3,%ymm4,%ymm3
  560f2e:	c5 f5 58 e5          	vaddpd %ymm5,%ymm1,%ymm4
  560f32:	c5 7d 58 cb          	vaddpd %ymm3,%ymm0,%ymm9
  560f36:	c5 f5 5c cd          	vsubpd %ymm5,%ymm1,%ymm1
  560f3a:	c5 fd 5c c3          	vsubpd %ymm3,%ymm0,%ymm0
  560f3e:	c5 bd 58 de          	vaddpd %ymm6,%ymm8,%ymm3
  560f42:	c5 ed 5c ef          	vsubpd %ymm7,%ymm2,%ymm5
  560f46:	c5 bd 5c f6          	vsubpd %ymm6,%ymm8,%ymm6
  560f4a:	c5 ed 58 d7          	vaddpd %ymm7,%ymm2,%ymm2
  560f4e:	c4 e3 fd 01 fb 60    	vpermpd $0x60,%ymm3,%ymm7
  560f54:	c4 63 fd 01 c4 d4    	vpermpd $0xd4,%ymm4,%ymm8
  560f5a:	c4 e3 3d 0d ff 0a    	vblendpd $0xa,%ymm7,%ymm8,%ymm7
  560f60:	c4 e3 fd 01 db e6    	vpermpd $0xe6,%ymm3,%ymm3
  560f66:	c4 e3 fd 01 e4 e6    	vpermpd $0xe6,%ymm4,%ymm4
  560f6c:	c5 dd c6 db 0c       	vshufpd $0xc,%ymm3,%ymm4,%ymm3
  560f71:	c5 fd 11 3e          	vmovupd %ymm7,(%rsi)
  560f75:	c5 fd 11 5e 20       	vmovupd %ymm3,0x20(%rsi)
  560f7a:	c4 e3 fd 01 dd 60    	vpermpd $0x60,%ymm5,%ymm3
  560f80:	c4 c3 fd 01 e1 d4    	vpermpd $0xd4,%ymm9,%ymm4
  560f86:	c4 e3 5d 0d db 0a    	vblendpd $0xa,%ymm3,%ymm4,%ymm3
  560f8c:	c4 e3 fd 01 e5 e6    	vpermpd $0xe6,%ymm5,%ymm4
  560f92:	c4 c3 fd 01 e9 e6    	vpermpd $0xe6,%ymm9,%ymm5
  560f98:	c5 d5 c6 e4 0c       	vshufpd $0xc,%ymm4,%ymm5,%ymm4
  560f9d:	c5 fd 11 5e 40       	vmovupd %ymm3,0x40(%rsi)
  560fa2:	c5 fd 11 66 60       	vmovupd %ymm4,0x60(%rsi)
  560fa7:	c4 e3 fd 01 de 60    	vpermpd $0x60,%ymm6,%ymm3
  560fad:	c4 e3 fd 01 e1 d4    	vpermpd $0xd4,%ymm1,%ymm4
  560fb3:	c4 e3 5d 0d db 0a    	vblendpd $0xa,%ymm3,%ymm4,%ymm3
  560fb9:	c4 e3 fd 01 e6 e6    	vpermpd $0xe6,%ymm6,%ymm4
  560fbf:	c4 e3 fd 01 c9 e6    	vpermpd $0xe6,%ymm1,%ymm1
  560fc5:	c5 f5 c6 cc 0c       	vshufpd $0xc,%ymm4,%ymm1,%ymm1
  560fca:	c5 fd 11 9e 80 00 00 	vmovupd %ymm3,0x80(%rsi)
  560fd1:	00 
  560fd2:	c5 fd 11 8e a0 00 00 	vmovupd %ymm1,0xa0(%rsi)
  560fd9:	00 
  560fda:	c4 e3 fd 01 ca 60    	vpermpd $0x60,%ymm2,%ymm1
  560fe0:	c4 e3 fd 01 d8 d4    	vpermpd $0xd4,%ymm0,%ymm3
  560fe6:	c4 e3 65 0d c9 0a    	vblendpd $0xa,%ymm1,%ymm3,%ymm1
  560fec:	c4 e3 fd 01 d2 e6    	vpermpd $0xe6,%ymm2,%ymm2
  560ff2:	c4 e3 fd 01 c0 e6    	vpermpd $0xe6,%ymm0,%ymm0
  560ff8:	c5 fd c6 c2 0c       	vshufpd $0xc,%ymm2,%ymm0,%ymm0
  560ffd:	c5 fd 11 8e c0 00 00 	vmovupd %ymm1,0xc0(%rsi)
  561004:	00 
  561005:	c5 fd 11 86 e0 00 00 	vmovupd %ymm0,0xe0(%rsi)
  56100c:	00 
  56100d:	c5 f8 77             	vzeroupper
  561010:	c3                   	ret
  561011:	cc                   	int3
  561012:	cc                   	int3
  561013:	cc                   	int3
  561014:	cc                   	int3
  561015:	cc                   	int3
  561016:	cc                   	int3
  561017:	cc                   	int3
  561018:	cc                   	int3
  561019:	cc                   	int3
  56101a:	cc                   	int3
  56101b:	cc                   	int3
  56101c:	cc                   	int3
  56101d:	cc                   	int3
  56101e:	cc                   	int3
  56101f:	cc                   	int3

0000000000561020 <<fastfft::engine::small::specialized::Avx2Leaf as fastfft::engine::small::Kernel<V>>::one>:
  561020:	c5 f8 10 07          	vmovups (%rdi),%xmm0
  561024:	c5 f8 10 4f 10       	vmovups 0x10(%rdi),%xmm1
  561029:	c5 f8 10 57 20       	vmovups 0x20(%rdi),%xmm2
  56102e:	c5 f8 10 5f 30       	vmovups 0x30(%rdi),%xmm3
  561033:	c5 f8 c6 e1 88       	vshufps $0x88,%xmm1,%xmm0,%xmm4
  561038:	c5 f8 c6 c1 dd       	vshufps $0xdd,%xmm1,%xmm0,%xmm0
  56103d:	c5 e8 c6 cb 88       	vshufps $0x88,%xmm3,%xmm2,%xmm1
  561042:	c5 e8 c6 d3 dd       	vshufps $0xdd,%xmm3,%xmm2,%xmm2
  561047:	c5 f8 10 5f 40       	vmovups 0x40(%rdi),%xmm3
  56104c:	c5 f8 10 6f 50       	vmovups 0x50(%rdi),%xmm5
  561051:	c5 e0 c6 f5 88       	vshufps $0x88,%xmm5,%xmm3,%xmm6
  561056:	c5 e0 c6 dd dd       	vshufps $0xdd,%xmm5,%xmm3,%xmm3
  56105b:	c5 f8 10 6f 60       	vmovups 0x60(%rdi),%xmm5
  561060:	c5 f8 10 7f 70       	vmovups 0x70(%rdi),%xmm7
  561065:	c5 50 c6 c7 88       	vshufps $0x88,%xmm7,%xmm5,%xmm8
  56106a:	c5 d0 c6 ef dd       	vshufps $0xdd,%xmm7,%xmm5,%xmm5
  56106f:	c5 f8 58 fb          	vaddps %xmm3,%xmm0,%xmm7
  561073:	c5 f8 5c c3          	vsubps %xmm3,%xmm0,%xmm0
  561077:	c5 e8 58 dd          	vaddps %xmm5,%xmm2,%xmm3
  56107b:	c5 e8 5c d5          	vsubps %xmm5,%xmm2,%xmm2
  56107f:	c5 d8 58 ee          	vaddps %xmm6,%xmm4,%xmm5
  561083:	c5 d8 5c e6          	vsubps %xmm6,%xmm4,%xmm4
  561087:	c5 b8 58 f1          	vaddps %xmm1,%xmm8,%xmm6
  56108b:	c4 c1 70 5c c8       	vsubps %xmm8,%xmm1,%xmm1
  561090:	c5 40 58 c3          	vaddps %xmm3,%xmm7,%xmm8
  561094:	c5 78 58 c9          	vaddps %xmm1,%xmm0,%xmm9
  561098:	c5 c0 5c db          	vsubps %xmm3,%xmm7,%xmm3
  56109c:	c5 f8 5c c1          	vsubps %xmm1,%xmm0,%xmm0
  5610a0:	c5 d0 58 ce          	vaddps %xmm6,%xmm5,%xmm1
  5610a4:	c5 d8 5c fa          	vsubps %xmm2,%xmm4,%xmm7
  5610a8:	c5 d0 5c ee          	vsubps %xmm6,%xmm5,%xmm5
  5610ac:	c5 d8 58 d2          	vaddps %xmm2,%xmm4,%xmm2
  5610b0:	c4 c1 38 14 e1       	vunpcklps %xmm9,%xmm8,%xmm4
  5610b5:	c4 c1 38 15 f1       	vunpckhps %xmm9,%xmm8,%xmm6
  5610ba:	c5 60 14 c0          	vunpcklps %xmm0,%xmm3,%xmm8
  5610be:	c5 e0 15 d8          	vunpckhps %xmm0,%xmm3,%xmm3
  5610c2:	c4 c1 58 16 c0       	vmovlhps %xmm8,%xmm4,%xmm0
  5610c7:	c4 c1 59 15 e0       	vunpckhpd %xmm8,%xmm4,%xmm4
  5610cc:	c5 48 16 c3          	vmovlhps %xmm3,%xmm6,%xmm8
  5610d0:	c5 c9 15 db          	vunpckhpd %xmm3,%xmm6,%xmm3
  5610d4:	c5 f0 14 f7          	vunpcklps %xmm7,%xmm1,%xmm6
  5610d8:	c5 f0 15 ff          	vunpckhps %xmm7,%xmm1,%xmm7
  5610dc:	c5 50 14 ca          	vunpcklps %xmm2,%xmm5,%xmm9
  5610e0:	c5 d0 15 d2          	vunpckhps %xmm2,%xmm5,%xmm2
  5610e4:	c4 c1 48 16 c9       	vmovlhps %xmm9,%xmm6,%xmm1
  5610e9:	c4 c1 49 15 e9       	vunpckhpd %xmm9,%xmm6,%xmm5
  5610ee:	c5 c0 16 f2          	vmovlhps %xmm2,%xmm7,%xmm6
  5610f2:	c5 c1 15 d2          	vunpckhpd %xmm2,%xmm7,%xmm2
  5610f6:	c5 f8 28 3d 12 40 af 	vmovaps -0x50bfee(%rip),%xmm7        # 55110 <anon.68b6cc7d90a76918f651089cf5b181a9.28.llvm.17722474192790696293+0x2f0>
  5610fd:	ff 
  5610fe:	c5 50 59 cf          	vmulps %xmm7,%xmm5,%xmm9
  561102:	c5 78 28 15 56 50 af 	vmovaps -0x50afaa(%rip),%xmm10        # 56160 <anon.68b6cc7d90a76918f651089cf5b181a9.28.llvm.17722474192790696293+0x1340>
  561109:	ff 
  56110a:	c4 42 59 b8 ca       	vfmadd231ps %xmm10,%xmm4,%xmm9
  56110f:	c5 a8 59 ed          	vmulps %xmm5,%xmm10,%xmm5
  561113:	c4 e2 59 bc ef       	vfnmadd231ps %xmm7,%xmm4,%xmm5
  561118:	c5 f8 28 25 80 4f af 	vmovaps -0x50b080(%rip),%xmm4        # 560a0 <anon.68b6cc7d90a76918f651089cf5b181a9.28.llvm.17722474192790696293+0x1280>
  56111f:	ff 
  561120:	c5 c8 59 fc          	vmulps %xmm4,%xmm6,%xmm7
  561124:	c5 78 28 15 74 57 af 	vmovaps -0x50a88c(%rip),%xmm10        # 568a0 <anon.68b6cc7d90a76918f651089cf5b181a9.28.llvm.17722474192790696293+0x1a80>
  56112b:	ff 
  56112c:	c4 c2 39 b8 fa       	vfmadd231ps %xmm10,%xmm8,%xmm7
  561131:	c5 a8 59 f6          	vmulps %xmm6,%xmm10,%xmm6
  561135:	c4 e2 39 bc f4       	vfnmadd231ps %xmm4,%xmm8,%xmm6
  56113a:	c5 f8 28 25 de 45 af 	vmovaps -0x50ba22(%rip),%xmm4        # 55720 <anon.68b6cc7d90a76918f651089cf5b181a9.28.llvm.17722474192790696293+0x900>
  561141:	ff 
  561142:	c5 68 59 c4          	vmulps %xmm4,%xmm2,%xmm8
  561146:	c5 78 28 15 82 3d af 	vmovaps -0x50c27e(%rip),%xmm10        # 54ed0 <anon.68b6cc7d90a76918f651089cf5b181a9.28.llvm.17722474192790696293+0xb0>
  56114d:	ff 
  56114e:	c4 42 61 b8 c2       	vfmadd231ps %xmm10,%xmm3,%xmm8
  561153:	c5 a8 59 d2          	vmulps %xmm2,%xmm10,%xmm2
  561157:	c4 e2 61 bc d4       	vfnmadd231ps %xmm4,%xmm3,%xmm2
  56115c:	c5 f8 58 df          	vaddps %xmm7,%xmm0,%xmm3
  561160:	c5 f8 5c c7          	vsubps %xmm7,%xmm0,%xmm0
  561164:	c4 c1 30 58 e0       	vaddps %xmm8,%xmm9,%xmm4
  561169:	c4 c1 30 5c f8       	vsubps %xmm8,%xmm9,%xmm7
  56116e:	c5 70 58 c6          	vaddps %xmm6,%xmm1,%xmm8
  561172:	c5 f0 5c ce          	vsubps %xmm6,%xmm1,%xmm1
  561176:	c5 d0 58 f2          	vaddps %xmm2,%xmm5,%xmm6
  56117a:	c5 d0 5c d2          	vsubps %xmm2,%xmm5,%xmm2
  56117e:	c5 e0 58 ec          	vaddps %xmm4,%xmm3,%xmm5
  561182:	c5 78 58 ca          	vaddps %xmm2,%xmm0,%xmm9
  561186:	c5 e0 5c dc          	vsubps %xmm4,%xmm3,%xmm3
  56118a:	c5 f8 5c c2          	vsubps %xmm2,%xmm0,%xmm0
  56118e:	c5 b8 58 d6          	vaddps %xmm6,%xmm8,%xmm2
  561192:	c5 f0 5c e7          	vsubps %xmm7,%xmm1,%xmm4
  561196:	c5 b8 5c f6          	vsubps %xmm6,%xmm8,%xmm6
  56119a:	c5 f0 58 cf          	vaddps %xmm7,%xmm1,%xmm1
  56119e:	c5 e8 14 fd          	vunpcklps %xmm5,%xmm2,%xmm7
  5611a2:	c5 e8 15 d5          	vunpckhps %xmm5,%xmm2,%xmm2
  5611a6:	c5 f8 11 3e          	vmovups %xmm7,(%rsi)
  5611aa:	c5 f8 11 56 10       	vmovups %xmm2,0x10(%rsi)
  5611af:	c4 c1 58 14 d1       	vunpcklps %xmm9,%xmm4,%xmm2
  5611b4:	c4 c1 58 15 e1       	vunpckhps %xmm9,%xmm4,%xmm4
  5611b9:	c5 f8 11 56 20       	vmovups %xmm2,0x20(%rsi)
  5611be:	c5 f8 11 66 30       	vmovups %xmm4,0x30(%rsi)
  5611c3:	c5 c8 14 d3          	vunpcklps %xmm3,%xmm6,%xmm2
  5611c7:	c5 c8 15 db          	vunpckhps %xmm3,%xmm6,%xmm3
  5611cb:	c5 f8 11 56 40       	vmovups %xmm2,0x40(%rsi)
  5611d0:	c5 f8 11 5e 50       	vmovups %xmm3,0x50(%rsi)
  5611d5:	c5 f0 14 d0          	vunpcklps %xmm0,%xmm1,%xmm2
  5611d9:	c5 f0 15 c0          	vunpckhps %xmm0,%xmm1,%xmm0
  5611dd:	c5 f8 11 56 60       	vmovups %xmm2,0x60(%rsi)
  5611e2:	c5 f8 11 46 70       	vmovups %xmm0,0x70(%rsi)
  5611e7:	c3                   	ret
  5611e8:	cc                   	int3
  5611e9:	cc                   	int3
  5611ea:	cc                   	int3
  5611eb:	cc                   	int3
  5611ec:	cc                   	int3
  5611ed:	cc                   	int3
  5611ee:	cc                   	int3
  5611ef:	cc                   	int3

00000000005611f0 <<fastfft::engine::small::specialized::Avx2Leaf as fastfft::engine::small::Kernel<V>>::one>:
  5611f0:	c5 f8 10 07          	vmovups (%rdi),%xmm0
  5611f4:	c5 f8 10 4f 10       	vmovups 0x10(%rdi),%xmm1
  5611f9:	c5 f8 10 57 20       	vmovups 0x20(%rdi),%xmm2
  5611fe:	c5 f8 10 5f 30       	vmovups 0x30(%rdi),%xmm3
  561203:	c5 f8 c6 e1 88       	vshufps $0x88,%xmm1,%xmm0,%xmm4
  561208:	c5 f8 c6 c1 dd       	vshufps $0xdd,%xmm1,%xmm0,%xmm0
  56120d:	c5 e8 c6 cb 88       	vshufps $0x88,%xmm3,%xmm2,%xmm1
  561212:	c5 e8 c6 d3 dd       	vshufps $0xdd,%xmm3,%xmm2,%xmm2
  561217:	c5 f8 10 5f 40       	vmovups 0x40(%rdi),%xmm3
  56121c:	c5 f8 10 6f 50       	vmovups 0x50(%rdi),%xmm5
  561221:	c5 e0 c6 f5 88       	vshufps $0x88,%xmm5,%xmm3,%xmm6
  561226:	c5 e0 c6 dd dd       	vshufps $0xdd,%xmm5,%xmm3,%xmm3
  56122b:	c5 f8 10 6f 60       	vmovups 0x60(%rdi),%xmm5
  561230:	c5 f8 10 7f 70       	vmovups 0x70(%rdi),%xmm7
  561235:	c5 50 c6 c7 88       	vshufps $0x88,%xmm7,%xmm5,%xmm8
  56123a:	c5 d0 c6 ef dd       	vshufps $0xdd,%xmm7,%xmm5,%xmm5
  56123f:	c5 d8 58 fe          	vaddps %xmm6,%xmm4,%xmm7
  561243:	c5 d8 5c e6          	vsubps %xmm6,%xmm4,%xmm4
  561247:	c5 b8 58 f1          	vaddps %xmm1,%xmm8,%xmm6
  56124b:	c4 c1 70 5c c8       	vsubps %xmm8,%xmm1,%xmm1
  561250:	c5 78 58 c3          	vaddps %xmm3,%xmm0,%xmm8
  561254:	c5 f8 5c c3          	vsubps %xmm3,%xmm0,%xmm0
  561258:	c5 e8 58 dd          	vaddps %xmm5,%xmm2,%xmm3
  56125c:	c5 e8 5c d5          	vsubps %xmm5,%xmm2,%xmm2
  561260:	c5 c0 58 ee          	vaddps %xmm6,%xmm7,%xmm5
  561264:	c5 58 58 ca          	vaddps %xmm2,%xmm4,%xmm9
  561268:	c5 c0 5c f6          	vsubps %xmm6,%xmm7,%xmm6
  56126c:	c5 d8 5c d2          	vsubps %xmm2,%xmm4,%xmm2
  561270:	c5 b8 58 e3          	vaddps %xmm3,%xmm8,%xmm4
  561274:	c5 f8 5c f9          	vsubps %xmm1,%xmm0,%xmm7
  561278:	c5 b8 5c db          	vsubps %xmm3,%xmm8,%xmm3
  56127c:	c5 f8 58 c9          	vaddps %xmm1,%xmm0,%xmm1
  561280:	c4 41 50 14 c1       	vunpcklps %xmm9,%xmm5,%xmm8
  561285:	c4 c1 50 15 e9       	vunpckhps %xmm9,%xmm5,%xmm5
  56128a:	c5 48 14 ca          	vunpcklps %xmm2,%xmm6,%xmm9
  56128e:	c5 c8 15 d2          	vunpckhps %xmm2,%xmm6,%xmm2
  561292:	c4 c1 38 16 c1       	vmovlhps %xmm9,%xmm8,%xmm0
  561297:	c4 c1 39 15 f1       	vunpckhpd %xmm9,%xmm8,%xmm6
  56129c:	c5 50 16 c2          	vmovlhps %xmm2,%xmm5,%xmm8
  5612a0:	c5 d1 15 d2          	vunpckhpd %xmm2,%xmm5,%xmm2
  5612a4:	c5 d8 14 ef          	vunpcklps %xmm7,%xmm4,%xmm5
  5612a8:	c5 d8 15 e7          	vunpckhps %xmm7,%xmm4,%xmm4
  5612ac:	c5 e0 14 f9          	vunpcklps %xmm1,%xmm3,%xmm7
  5612b0:	c5 e0 15 d9          	vunpckhps %xmm1,%xmm3,%xmm3
  5612b4:	c5 d0 16 cf          	vmovlhps %xmm7,%xmm5,%xmm1
  5612b8:	c5 d1 15 ef          	vunpckhpd %xmm7,%xmm5,%xmm5
  5612bc:	c5 d8 16 fb          	vmovlhps %xmm3,%xmm4,%xmm7
  5612c0:	c5 d9 15 db          	vunpckhpd %xmm3,%xmm4,%xmm3
  5612c4:	c5 f8 28 25 44 3e af 	vmovaps -0x50c1bc(%rip),%xmm4        # 55110 <anon.68b6cc7d90a76918f651089cf5b181a9.28.llvm.17722474192790696293+0x2f0>
  5612cb:	ff 
  5612cc:	c5 50 59 cc          	vmulps %xmm4,%xmm5,%xmm9
  5612d0:	c5 78 28 15 88 4e af 	vmovaps -0x50b178(%rip),%xmm10        # 56160 <anon.68b6cc7d90a76918f651089cf5b181a9.28.llvm.17722474192790696293+0x1340>
  5612d7:	ff 
  5612d8:	c4 42 49 b8 ca       	vfmadd231ps %xmm10,%xmm6,%xmm9
  5612dd:	c5 a8 59 ed          	vmulps %xmm5,%xmm10,%xmm5
  5612e1:	c4 e2 49 bc ec       	vfnmadd231ps %xmm4,%xmm6,%xmm5
  5612e6:	c5 f8 28 25 b2 4d af 	vmovaps -0x50b24e(%rip),%xmm4        # 560a0 <anon.68b6cc7d90a76918f651089cf5b181a9.28.llvm.17722474192790696293+0x1280>
  5612ed:	ff 
  5612ee:	c5 c0 59 f4          	vmulps %xmm4,%xmm7,%xmm6
  5612f2:	c5 78 28 15 a6 55 af 	vmovaps -0x50aa5a(%rip),%xmm10        # 568a0 <anon.68b6cc7d90a76918f651089cf5b181a9.28.llvm.17722474192790696293+0x1a80>
  5612f9:	ff 
  5612fa:	c4 c2 39 b8 f2       	vfmadd231ps %xmm10,%xmm8,%xmm6
  5612ff:	c5 a8 59 ff          	vmulps %xmm7,%xmm10,%xmm7
  561303:	c4 e2 39 bc fc       	vfnmadd231ps %xmm4,%xmm8,%xmm7
  561308:	c5 f8 28 25 10 44 af 	vmovaps -0x50bbf0(%rip),%xmm4        # 55720 <anon.68b6cc7d90a76918f651089cf5b181a9.28.llvm.17722474192790696293+0x900>
  56130f:	ff 
  561310:	c5 60 59 c4          	vmulps %xmm4,%xmm3,%xmm8
  561314:	c5 78 28 15 b4 3b af 	vmovaps -0x50c44c(%rip),%xmm10        # 54ed0 <anon.68b6cc7d90a76918f651089cf5b181a9.28.llvm.17722474192790696293+0xb0>
  56131b:	ff 
  56131c:	c4 42 69 b8 c2       	vfmadd231ps %xmm10,%xmm2,%xmm8
  561321:	c5 a8 59 db          	vmulps %xmm3,%xmm10,%xmm3
  561325:	c4 e2 69 bc dc       	vfnmadd231ps %xmm4,%xmm2,%xmm3
  56132a:	c5 f8 58 d6          	vaddps %xmm6,%xmm0,%xmm2
  56132e:	c5 f8 5c c6          	vsubps %xmm6,%xmm0,%xmm0
  561332:	c4 c1 30 58 e0       	vaddps %xmm8,%xmm9,%xmm4
  561337:	c4 c1 30 5c f0       	vsubps %xmm8,%xmm9,%xmm6
  56133c:	c5 70 58 c7          	vaddps %xmm7,%xmm1,%xmm8
  561340:	c5 f0 5c cf          	vsubps %xmm7,%xmm1,%xmm1
  561344:	c5 d0 58 fb          	vaddps %xmm3,%xmm5,%xmm7
  561348:	c5 d0 5c db          	vsubps %xmm3,%xmm5,%xmm3
  56134c:	c5 e8 58 ec          	vaddps %xmm4,%xmm2,%xmm5
  561350:	c5 78 58 cb          	vaddps %xmm3,%xmm0,%xmm9
  561354:	c5 e8 5c d4          	vsubps %xmm4,%xmm2,%xmm2
  561358:	c5 f8 5c c3          	vsubps %xmm3,%xmm0,%xmm0
  56135c:	c5 b8 58 df          	vaddps %xmm7,%xmm8,%xmm3
  561360:	c5 f0 5c e6          	vsubps %xmm6,%xmm1,%xmm4
  561364:	c5 b8 5c ff          	vsubps %xmm7,%xmm8,%xmm7
  561368:	c5 f0 58 ce          	vaddps %xmm6,%xmm1,%xmm1
  56136c:	c5 d0 14 f3          	vunpcklps %xmm3,%xmm5,%xmm6
  561370:	c5 d0 15 db          	vunpckhps %xmm3,%xmm5,%xmm3
  561374:	c5 f8 11 36          	vmovups %xmm6,(%rsi)
  561378:	c5 f8 11 5e 10       	vmovups %xmm3,0x10(%rsi)
  56137d:	c5 b0 14 dc          	vunpcklps %xmm4,%xmm9,%xmm3
  561381:	c5 b0 15 e4          	vunpckhps %xmm4,%xmm9,%xmm4
  561385:	c5 f8 11 5e 20       	vmovups %xmm3,0x20(%rsi)
  56138a:	c5 f8 11 66 30       	vmovups %xmm4,0x30(%rsi)
  56138f:	c5 e8 14 df          	vunpcklps %xmm7,%xmm2,%xmm3
  561393:	c5 e8 15 d7          	vunpckhps %xmm7,%xmm2,%xmm2
  561397:	c5 f8 11 5e 40       	vmovups %xmm3,0x40(%rsi)
  56139c:	c5 f8 11 56 50       	vmovups %xmm2,0x50(%rsi)
  5613a1:	c5 f8 14 d1          	vunpcklps %xmm1,%xmm0,%xmm2
  5613a5:	c5 f8 15 c1          	vunpckhps %xmm1,%xmm0,%xmm0
  5613a9:	c5 f8 11 56 60       	vmovups %xmm2,0x60(%rsi)
  5613ae:	c5 f8 11 46 70       	vmovups %xmm0,0x70(%rsi)
  5613b3:	c3                   	ret
  5613b4:	cc                   	int3
  5613b5:	cc                   	int3
  5613b6:	cc                   	int3
  5613b7:	cc                   	int3
  5613b8:	cc                   	int3
  5613b9:	cc                   	int3
  5613ba:	cc                   	int3
  5613bb:	cc                   	int3
  5613bc:	cc                   	int3
  5613bd:	cc                   	int3
  5613be:	cc                   	int3
  5613bf:	cc                   	int3

00000000005613c0 <<fastfft::engine::small::specialized::Avx2Leaf as fastfft::engine::small::Kernel<V>>::one>:
  5613c0:	c5 fd 10 07          	vmovupd (%rdi),%ymm0
  5613c4:	c5 fd 10 4f 20       	vmovupd 0x20(%rdi),%ymm1
  5613c9:	c5 fd 10 57 40       	vmovupd 0x40(%rdi),%ymm2
  5613ce:	c5 fd 10 5f 60       	vmovupd 0x60(%rdi),%ymm3
  5613d3:	c4 e3 7d 06 e1 20    	vperm2f128 $0x20,%ymm1,%ymm0,%ymm4
  5613d9:	c4 e3 7d 06 c1 31    	vperm2f128 $0x31,%ymm1,%ymm0,%ymm0
  5613df:	c5 dd 14 c8          	vunpcklpd %ymm0,%ymm4,%ymm1
  5613e3:	c5 dd 15 c0          	vunpckhpd %ymm0,%ymm4,%ymm0
  5613e7:	c4 e3 6d 06 e3 20    	vperm2f128 $0x20,%ymm3,%ymm2,%ymm4
  5613ed:	c4 e3 6d 06 d3 31    	vperm2f128 $0x31,%ymm3,%ymm2,%ymm2
  5613f3:	c5 dd 14 da          	vunpcklpd %ymm2,%ymm4,%ymm3
  5613f7:	c5 dd 15 d2          	vunpckhpd %ymm2,%ymm4,%ymm2
  5613fb:	c5 fd 10 a7 80 00 00 	vmovupd 0x80(%rdi),%ymm4
  561402:	00 
  561403:	c5 fd 10 af a0 00 00 	vmovupd 0xa0(%rdi),%ymm5
  56140a:	00 
  56140b:	c4 e3 5d 06 f5 20    	vperm2f128 $0x20,%ymm5,%ymm4,%ymm6
  561411:	c4 e3 5d 06 e5 31    	vperm2f128 $0x31,%ymm5,%ymm4,%ymm4
  561417:	c5 cd 14 ec          	vunpcklpd %ymm4,%ymm6,%ymm5
  56141b:	c5 cd 15 e4          	vunpckhpd %ymm4,%ymm6,%ymm4
  56141f:	c5 fd 10 b7 c0 00 00 	vmovupd 0xc0(%rdi),%ymm6
  561426:	00 
  561427:	c5 fd 10 bf e0 00 00 	vmovupd 0xe0(%rdi),%ymm7
  56142e:	00 
  56142f:	c4 63 4d 06 c7 20    	vperm2f128 $0x20,%ymm7,%ymm6,%ymm8
  561435:	c4 e3 4d 06 f7 31    	vperm2f128 $0x31,%ymm7,%ymm6,%ymm6
  56143b:	c5 bd 14 fe          	vunpcklpd %ymm6,%ymm8,%ymm7
  56143f:	c5 bd 15 f6          	vunpckhpd %ymm6,%ymm8,%ymm6
  561443:	c5 7d 58 c4          	vaddpd %ymm4,%ymm0,%ymm8
  561447:	c5 fd 5c c4          	vsubpd %ymm4,%ymm0,%ymm0
  56144b:	c5 ed 58 e6          	vaddpd %ymm6,%ymm2,%ymm4
  56144f:	c5 ed 5c d6          	vsubpd %ymm6,%ymm2,%ymm2
  561453:	c5 f5 58 f5          	vaddpd %ymm5,%ymm1,%ymm6
  561457:	c5 f5 5c cd          	vsubpd %ymm5,%ymm1,%ymm1
  56145b:	c5 e5 58 ef          	vaddpd %ymm7,%ymm3,%ymm5
  56145f:	c5 e5 5c df          	vsubpd %ymm7,%ymm3,%ymm3
  561463:	c5 bd 58 fc          	vaddpd %ymm4,%ymm8,%ymm7
  561467:	c5 7d 58 cb          	vaddpd %ymm3,%ymm0,%ymm9
  56146b:	c5 bd 5c e4          	vsubpd %ymm4,%ymm8,%ymm4
  56146f:	c5 fd 5c c3          	vsubpd %ymm3,%ymm0,%ymm0
  561473:	c5 cd 58 dd          	vaddpd %ymm5,%ymm6,%ymm3
  561477:	c5 75 5c c2          	vsubpd %ymm2,%ymm1,%ymm8
  56147b:	c5 cd 5c ed          	vsubpd %ymm5,%ymm6,%ymm5
  56147f:	c5 f5 58 d2          	vaddpd %ymm2,%ymm1,%ymm2
  561483:	c4 c1 45 14 c9       	vunpcklpd %ymm9,%ymm7,%ymm1
  561488:	c4 c1 45 15 f1       	vunpckhpd %ymm9,%ymm7,%ymm6
  56148d:	c5 dd 14 f8          	vunpcklpd %ymm0,%ymm4,%ymm7
  561491:	c5 dd 15 e0          	vunpckhpd %ymm0,%ymm4,%ymm4
  561495:	c4 e3 75 18 c7 01    	vinsertf128 $0x1,%xmm7,%ymm1,%ymm0
  56149b:	c4 63 4d 18 cc 01    	vinsertf128 $0x1,%xmm4,%ymm6,%ymm9
  5614a1:	c4 e3 75 06 ff 31    	vperm2f128 $0x31,%ymm7,%ymm1,%ymm7
  5614a7:	c4 e3 4d 06 cc 31    	vperm2f128 $0x31,%ymm4,%ymm6,%ymm1
  5614ad:	c4 c1 65 14 e0       	vunpcklpd %ymm8,%ymm3,%ymm4
  5614b2:	c4 c1 65 15 d8       	vunpckhpd %ymm8,%ymm3,%ymm3
  5614b7:	c5 d5 14 f2          	vunpcklpd %ymm2,%ymm5,%ymm6
  5614bb:	c5 d5 15 ea          	vunpckhpd %ymm2,%ymm5,%ymm5
  5614bf:	c4 e3 5d 18 d6 01    	vinsertf128 $0x1,%xmm6,%ymm4,%ymm2
  5614c5:	c4 63 65 18 c5 01    	vinsertf128 $0x1,%xmm5,%ymm3,%ymm8
  5614cb:	c4 e3 5d 06 e6 31    	vperm2f128 $0x31,%ymm6,%ymm4,%ymm4
  5614d1:	c4 e3 65 06 dd 31    	vperm2f128 $0x31,%ymm5,%ymm3,%ymm3
  5614d7:	c5 fd 28 2d 41 44 b0 	vmovapd -0x4fbbbf(%rip),%ymm5        # 65920 <anon.4b543d1b78d7cf654c1a2ee33e78dad2.2.llvm.6868728367477014390+0x7ff8>
  5614de:	ff 
  5614df:	c5 bd 59 f5          	vmulpd %ymm5,%ymm8,%ymm6
  5614e3:	c5 7d 28 15 15 24 b0 	vmovapd -0x4fdbeb(%rip),%ymm10        # 63900 <anon.4b543d1b78d7cf654c1a2ee33e78dad2.2.llvm.6868728367477014390+0x5fd8>
  5614ea:	ff 
  5614eb:	c4 c2 b5 b8 f2       	vfmadd231pd %ymm10,%ymm9,%ymm6
  5614f0:	c4 41 3d 59 c2       	vmulpd %ymm10,%ymm8,%ymm8
  5614f5:	c4 62 b5 bc c5       	vfnmadd231pd %ymm5,%ymm9,%ymm8
  5614fa:	c5 fd 28 2d 7e 3f b0 	vmovapd -0x4fc082(%rip),%ymm5        # 65480 <anon.4b543d1b78d7cf654c1a2ee33e78dad2.2.llvm.6868728367477014390+0x7b58>
  561501:	ff 
  561502:	c5 5d 59 cd          	vmulpd %ymm5,%ymm4,%ymm9
  561506:	c5 7d 28 15 32 44 b0 	vmovapd -0x4fbbce(%rip),%ymm10        # 65940 <anon.4b543d1b78d7cf654c1a2ee33e78dad2.2.llvm.6868728367477014390+0x8018>
  56150d:	ff 
  56150e:	c4 42 c5 b8 ca       	vfmadd231pd %ymm10,%ymm7,%ymm9
  561513:	c5 ad 59 e4          	vmulpd %ymm4,%ymm10,%ymm4
  561517:	c4 e2 c5 bc e5       	vfnmadd231pd %ymm5,%ymm7,%ymm4
  56151c:	c5 fd 28 2d 7c 35 b0 	vmovapd -0x4fca84(%rip),%ymm5        # 64aa0 <anon.4b543d1b78d7cf654c1a2ee33e78dad2.2.llvm.6868728367477014390+0x7178>
  561523:	ff 
  561524:	c5 e5 59 fd          	vmulpd %ymm5,%ymm3,%ymm7
  561528:	c5 7d 28 15 d0 36 b0 	vmovapd -0x4fc930(%rip),%ymm10        # 64c00 <anon.4b543d1b78d7cf654c1a2ee33e78dad2.2.llvm.6868728367477014390+0x72d8>
  56152f:	ff 
  561530:	c4 c2 f5 b8 fa       	vfmadd231pd %ymm10,%ymm1,%ymm7
  561535:	c5 ad 59 db          	vmulpd %ymm3,%ymm10,%ymm3
  561539:	c4 e2 f5 bc dd       	vfnmadd231pd %ymm5,%ymm1,%ymm3
  56153e:	c5 b5 58 c8          	vaddpd %ymm0,%ymm9,%ymm1
  561542:	c4 c1 7d 5c c1       	vsubpd %ymm9,%ymm0,%ymm0
  561547:	c5 cd 58 ef          	vaddpd %ymm7,%ymm6,%ymm5
  56154b:	c5 cd 5c f7          	vsubpd %ymm7,%ymm6,%ymm6
  56154f:	c5 ed 58 fc          	vaddpd %ymm4,%ymm2,%ymm7
  561553:	c5 ed 5c d4          	vsubpd %ymm4,%ymm2,%ymm2
  561557:	c5 bd 58 e3          	vaddpd %ymm3,%ymm8,%ymm4
  56155b:	c5 bd 5c db          	vsubpd %ymm3,%ymm8,%ymm3
  56155f:	c5 75 58 c5          	vaddpd %ymm5,%ymm1,%ymm8
  561563:	c5 7d 58 cb          	vaddpd %ymm3,%ymm0,%ymm9
  561567:	c5 f5 5c cd          	vsubpd %ymm5,%ymm1,%ymm1
  56156b:	c5 fd 5c c3          	vsubpd %ymm3,%ymm0,%ymm0
  56156f:	c5 c5 58 dc          	vaddpd %ymm4,%ymm7,%ymm3
  561573:	c5 ed 5c ee          	vsubpd %ymm6,%ymm2,%ymm5
  561577:	c5 c5 5c e4          	vsubpd %ymm4,%ymm7,%ymm4
  56157b:	c5 ed 58 d6          	vaddpd %ymm6,%ymm2,%ymm2
  56157f:	c4 c3 fd 01 f0 60    	vpermpd $0x60,%ymm8,%ymm6
  561585:	c4 e3 fd 01 fb d4    	vpermpd $0xd4,%ymm3,%ymm7
  56158b:	c4 e3 45 0d f6 0a    	vblendpd $0xa,%ymm6,%ymm7,%ymm6
  561591:	c4 c3 fd 01 f8 e6    	vpermpd $0xe6,%ymm8,%ymm7
  561597:	c4 e3 fd 01 db e6    	vpermpd $0xe6,%ymm3,%ymm3
  56159d:	c5 e5 c6 df 0c       	vshufpd $0xc,%ymm7,%ymm3,%ymm3
  5615a2:	c5 fd 11 36          	vmovupd %ymm6,(%rsi)
  5615a6:	c5 fd 11 5e 20       	vmovupd %ymm3,0x20(%rsi)
  5615ab:	c4 c3 fd 01 d9 60    	vpermpd $0x60,%ymm9,%ymm3
  5615b1:	c4 e3 fd 01 f5 d4    	vpermpd $0xd4,%ymm5,%ymm6
  5615b7:	c4 e3 4d 0d db 0a    	vblendpd $0xa,%ymm3,%ymm6,%ymm3
  5615bd:	c4 c3 fd 01 f1 e6    	vpermpd $0xe6,%ymm9,%ymm6
  5615c3:	c4 e3 fd 01 ed e6    	vpermpd $0xe6,%ymm5,%ymm5
  5615c9:	c5 d5 c6 ee 0c       	vshufpd $0xc,%ymm6,%ymm5,%ymm5
  5615ce:	c5 fd 11 5e 40       	vmovupd %ymm3,0x40(%rsi)
  5615d3:	c5 fd 11 6e 60       	vmovupd %ymm5,0x60(%rsi)
  5615d8:	c4 e3 fd 01 d9 60    	vpermpd $0x60,%ymm1,%ymm3
  5615de:	c4 e3 fd 01 ec d4    	vpermpd $0xd4,%ymm4,%ymm5
  5615e4:	c4 e3 55 0d db 0a    	vblendpd $0xa,%ymm3,%ymm5,%ymm3
  5615ea:	c4 e3 fd 01 c9 e6    	vpermpd $0xe6,%ymm1,%ymm1
  5615f0:	c4 e3 fd 01 e4 e6    	vpermpd $0xe6,%ymm4,%ymm4
  5615f6:	c5 dd c6 c9 0c       	vshufpd $0xc,%ymm1,%ymm4,%ymm1
  5615fb:	c5 fd 11 9e 80 00 00 	vmovupd %ymm3,0x80(%rsi)
  561602:	00 
  561603:	c5 fd 11 8e a0 00 00 	vmovupd %ymm1,0xa0(%rsi)
  56160a:	00 
  56160b:	c4 e3 fd 01 c8 60    	vpermpd $0x60,%ymm0,%ymm1
  561611:	c4 e3 fd 01 da d4    	vpermpd $0xd4,%ymm2,%ymm3
  561617:	c4 e3 65 0d c9 0a    	vblendpd $0xa,%ymm1,%ymm3,%ymm1
  56161d:	c4 e3 fd 01 c0 e6    	vpermpd $0xe6,%ymm0,%ymm0
  561623:	c4 e3 fd 01 d2 e6    	vpermpd $0xe6,%ymm2,%ymm2
  561629:	c5 ed c6 c0 0c       	vshufpd $0xc,%ymm0,%ymm2,%ymm0
  56162e:	c5 fd 11 8e c0 00 00 	vmovupd %ymm1,0xc0(%rsi)
  561635:	00 
  561636:	c5 fd 11 86 e0 00 00 	vmovupd %ymm0,0xe0(%rsi)
  56163d:	00 
  56163e:	c5 f8 77             	vzeroupper
  561641:	c3                   	ret
  561642:	cc                   	int3
  561643:	cc                   	int3
  561644:	cc                   	int3
  561645:	cc                   	int3
  561646:	cc                   	int3
  561647:	cc                   	int3
  561648:	cc                   	int3
  561649:	cc                   	int3
  56164a:	cc                   	int3
  56164b:	cc                   	int3
  56164c:	cc                   	int3
  56164d:	cc                   	int3
  56164e:	cc                   	int3
  56164f:	cc                   	int3

0000000000561650 <<fastfft::engine::small::specialized::Avx2Leaf as fastfft::engine::small::Kernel<V>>::run>:
  561650:	48 85 d2             	test   %rdx,%rdx
  561653:	0f 84 c2 02 00 00    	je     56191b <<fastfft::engine::small::specialized::Avx2Leaf as fastfft::engine::small::Kernel<V>>::run+0x2cb>
  561659:	31 c0                	xor    %eax,%eax
  56165b:	c5 fd 28 05 bd 42 b0 	vmovapd -0x4fbd43(%rip),%ymm0        # 65920 <anon.4b543d1b78d7cf654c1a2ee33e78dad2.2.llvm.6868728367477014390+0x7ff8>
  561662:	ff 
  561663:	c5 fd 28 0d 95 22 b0 	vmovapd -0x4fdd6b(%rip),%ymm1        # 63900 <anon.4b543d1b78d7cf654c1a2ee33e78dad2.2.llvm.6868728367477014390+0x5fd8>
  56166a:	ff 
  56166b:	c5 fd 28 15 0d 3e b0 	vmovapd -0x4fc1f3(%rip),%ymm2        # 65480 <anon.4b543d1b78d7cf654c1a2ee33e78dad2.2.llvm.6868728367477014390+0x7b58>
  561672:	ff 
  561673:	c5 fd 28 1d c5 42 b0 	vmovapd -0x4fbd3b(%rip),%ymm3        # 65940 <anon.4b543d1b78d7cf654c1a2ee33e78dad2.2.llvm.6868728367477014390+0x8018>
  56167a:	ff 
  56167b:	c5 fd 28 25 1d 34 b0 	vmovapd -0x4fcbe3(%rip),%ymm4        # 64aa0 <anon.4b543d1b78d7cf654c1a2ee33e78dad2.2.llvm.6868728367477014390+0x7178>
  561682:	ff 
  561683:	c5 fd 28 2d 75 35 b0 	vmovapd -0x4fca8b(%rip),%ymm5        # 64c00 <anon.4b543d1b78d7cf654c1a2ee33e78dad2.2.llvm.6868728367477014390+0x72d8>
  56168a:	ff 
  56168b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  561690:	c5 fd 10 34 07       	vmovupd (%rdi,%rax,1),%ymm6
  561695:	c5 fd 10 7c 07 20    	vmovupd 0x20(%rdi,%rax,1),%ymm7
  56169b:	c5 7d 10 44 07 40    	vmovupd 0x40(%rdi,%rax,1),%ymm8
  5616a1:	c5 7d 10 4c 07 60    	vmovupd 0x60(%rdi,%rax,1),%ymm9
  5616a7:	c4 63 4d 06 d7 20    	vperm2f128 $0x20,%ymm7,%ymm6,%ymm10
  5616ad:	c4 e3 4d 06 f7 31    	vperm2f128 $0x31,%ymm7,%ymm6,%ymm6
  5616b3:	c5 ad 14 fe          	vunpcklpd %ymm6,%ymm10,%ymm7
  5616b7:	c5 ad 15 f6          	vunpckhpd %ymm6,%ymm10,%ymm6
  5616bb:	c4 43 3d 06 d1 20    	vperm2f128 $0x20,%ymm9,%ymm8,%ymm10
  5616c1:	c4 43 3d 06 c1 31    	vperm2f128 $0x31,%ymm9,%ymm8,%ymm8
  5616c7:	c4 41 2d 14 c8       	vunpcklpd %ymm8,%ymm10,%ymm9
  5616cc:	c4 41 2d 15 c0       	vunpckhpd %ymm8,%ymm10,%ymm8
  5616d1:	c5 7d 10 94 07 80 00 	vmovupd 0x80(%rdi,%rax,1),%ymm10
  5616d8:	00 00 
  5616da:	c5 7d 10 9c 07 a0 00 	vmovupd 0xa0(%rdi,%rax,1),%ymm11
  5616e1:	00 00 
  5616e3:	c4 43 2d 06 e3 20    	vperm2f128 $0x20,%ymm11,%ymm10,%ymm12
  5616e9:	c4 43 2d 06 d3 31    	vperm2f128 $0x31,%ymm11,%ymm10,%ymm10
  5616ef:	c4 41 1d 14 da       	vunpcklpd %ymm10,%ymm12,%ymm11
  5616f4:	c4 41 1d 15 d2       	vunpckhpd %ymm10,%ymm12,%ymm10
  5616f9:	c5 7d 10 a4 07 c0 00 	vmovupd 0xc0(%rdi,%rax,1),%ymm12
  561700:	00 00 
  561702:	c5 7d 10 ac 07 e0 00 	vmovupd 0xe0(%rdi,%rax,1),%ymm13
  561709:	00 00 
  56170b:	c4 43 1d 06 f5 20    	vperm2f128 $0x20,%ymm13,%ymm12,%ymm14
  561711:	c4 43 1d 06 e5 31    	vperm2f128 $0x31,%ymm13,%ymm12,%ymm12
  561717:	c4 41 0d 14 ec       	vunpcklpd %ymm12,%ymm14,%ymm13
  56171c:	c4 41 0d 15 e4       	vunpckhpd %ymm12,%ymm14,%ymm12
  561721:	c5 2d 58 f6          	vaddpd %ymm6,%ymm10,%ymm14
  561725:	c4 c1 4d 5c f2       	vsubpd %ymm10,%ymm6,%ymm6
  56172a:	c4 41 3d 58 d4       	vaddpd %ymm12,%ymm8,%ymm10
  56172f:	c4 41 3d 5c c4       	vsubpd %ymm12,%ymm8,%ymm8
  561734:	c5 25 58 e7          	vaddpd %ymm7,%ymm11,%ymm12
  561738:	c4 c1 45 5c fb       	vsubpd %ymm11,%ymm7,%ymm7
  56173d:	c4 41 35 58 dd       	vaddpd %ymm13,%ymm9,%ymm11
  561742:	c4 41 35 5c cd       	vsubpd %ymm13,%ymm9,%ymm9
  561747:	c4 41 0d 58 ea       	vaddpd %ymm10,%ymm14,%ymm13
  56174c:	c5 35 58 fe          	vaddpd %ymm6,%ymm9,%ymm15
  561750:	c4 41 0d 5c d2       	vsubpd %ymm10,%ymm14,%ymm10
  561755:	c4 c1 4d 5c f1       	vsubpd %ymm9,%ymm6,%ymm6
  56175a:	c4 41 1d 58 cb       	vaddpd %ymm11,%ymm12,%ymm9
  56175f:	c4 41 45 5c f0       	vsubpd %ymm8,%ymm7,%ymm14
  561764:	c4 41 1d 5c db       	vsubpd %ymm11,%ymm12,%ymm11
  561769:	c5 bd 58 ff          	vaddpd %ymm7,%ymm8,%ymm7
  56176d:	c4 41 15 14 c7       	vunpcklpd %ymm15,%ymm13,%ymm8
  561772:	c4 41 15 15 e7       	vunpckhpd %ymm15,%ymm13,%ymm12
  561777:	c5 2d 14 ee          	vunpcklpd %ymm6,%ymm10,%ymm13
  56177b:	c5 2d 15 d6          	vunpckhpd %ymm6,%ymm10,%ymm10
  56177f:	c4 c3 3d 18 f5 01    	vinsertf128 $0x1,%xmm13,%ymm8,%ymm6
  561785:	c4 43 1d 18 fa 01    	vinsertf128 $0x1,%xmm10,%ymm12,%ymm15
  56178b:	c4 43 3d 06 c5 31    	vperm2f128 $0x31,%ymm13,%ymm8,%ymm8
  561791:	c4 43 1d 06 d2 31    	vperm2f128 $0x31,%ymm10,%ymm12,%ymm10
  561797:	c4 41 35 14 e6       	vunpcklpd %ymm14,%ymm9,%ymm12
  56179c:	c4 41 35 15 ce       	vunpckhpd %ymm14,%ymm9,%ymm9
  5617a1:	c5 25 14 ef          	vunpcklpd %ymm7,%ymm11,%ymm13
  5617a5:	c5 a5 15 ff          	vunpckhpd %ymm7,%ymm11,%ymm7
  5617a9:	c4 43 1d 18 dd 01    	vinsertf128 $0x1,%xmm13,%ymm12,%ymm11
  5617af:	c4 63 35 18 f7 01    	vinsertf128 $0x1,%xmm7,%ymm9,%ymm14
  5617b5:	c4 43 1d 06 e5 31    	vperm2f128 $0x31,%ymm13,%ymm12,%ymm12
  5617bb:	c4 e3 35 06 ff 31    	vperm2f128 $0x31,%ymm7,%ymm9,%ymm7
  5617c1:	c5 0d 59 c8          	vmulpd %ymm0,%ymm14,%ymm9
  5617c5:	c4 62 85 b8 c9       	vfmadd231pd %ymm1,%ymm15,%ymm9
  5617ca:	c5 0d 59 e9          	vmulpd %ymm1,%ymm14,%ymm13
  5617ce:	c4 42 fd bc ef       	vfnmadd231pd %ymm15,%ymm0,%ymm13
  5617d3:	c5 1d 59 f2          	vmulpd %ymm2,%ymm12,%ymm14
  5617d7:	c4 62 bd b8 f3       	vfmadd231pd %ymm3,%ymm8,%ymm14
  5617dc:	c5 1d 59 e3          	vmulpd %ymm3,%ymm12,%ymm12
  5617e0:	c4 42 ed bc e0       	vfnmadd231pd %ymm8,%ymm2,%ymm12
  5617e5:	c5 45 59 c4          	vmulpd %ymm4,%ymm7,%ymm8
  5617e9:	c4 62 ad b8 c5       	vfmadd231pd %ymm5,%ymm10,%ymm8
  5617ee:	c5 c5 59 fd          	vmulpd %ymm5,%ymm7,%ymm7
  5617f2:	c4 c2 dd bc fa       	vfnmadd231pd %ymm10,%ymm4,%ymm7
  5617f7:	c5 0d 58 d6          	vaddpd %ymm6,%ymm14,%ymm10
  5617fb:	c4 c1 4d 5c f6       	vsubpd %ymm14,%ymm6,%ymm6
  561800:	c4 41 35 58 f0       	vaddpd %ymm8,%ymm9,%ymm14
  561805:	c4 41 35 5c c0       	vsubpd %ymm8,%ymm9,%ymm8
  56180a:	c4 41 25 58 cc       	vaddpd %ymm12,%ymm11,%ymm9
  56180f:	c4 41 25 5c dc       	vsubpd %ymm12,%ymm11,%ymm11
  561814:	c5 15 58 e7          	vaddpd %ymm7,%ymm13,%ymm12
  561818:	c5 95 5c ff          	vsubpd %ymm7,%ymm13,%ymm7
  56181c:	c4 41 2d 58 ee       	vaddpd %ymm14,%ymm10,%ymm13
  561821:	c5 4d 58 ff          	vaddpd %ymm7,%ymm6,%ymm15
  561825:	c4 41 2d 5c d6       	vsubpd %ymm14,%ymm10,%ymm10
  56182a:	c5 cd 5c f7          	vsubpd %ymm7,%ymm6,%ymm6
  56182e:	c4 c1 35 58 fc       	vaddpd %ymm12,%ymm9,%ymm7
  561833:	c4 41 25 5c f0       	vsubpd %ymm8,%ymm11,%ymm14
  561838:	c4 41 35 5c cc       	vsubpd %ymm12,%ymm9,%ymm9
  56183d:	c4 41 25 58 c0       	vaddpd %ymm8,%ymm11,%ymm8
  561842:	c4 43 fd 01 dd 60    	vpermpd $0x60,%ymm13,%ymm11
  561848:	c4 63 fd 01 e7 d4    	vpermpd $0xd4,%ymm7,%ymm12
  56184e:	c4 43 1d 0d db 0a    	vblendpd $0xa,%ymm11,%ymm12,%ymm11
  561854:	c4 43 fd 01 e5 e6    	vpermpd $0xe6,%ymm13,%ymm12
  56185a:	c4 e3 fd 01 ff e6    	vpermpd $0xe6,%ymm7,%ymm7
  561860:	c4 c1 45 c6 fc 0c    	vshufpd $0xc,%ymm12,%ymm7,%ymm7
  561866:	c5 7d 11 1c 06       	vmovupd %ymm11,(%rsi,%rax,1)
  56186b:	c5 fd 11 7c 06 20    	vmovupd %ymm7,0x20(%rsi,%rax,1)
  561871:	c4 c3 fd 01 ff 60    	vpermpd $0x60,%ymm15,%ymm7
  561877:	c4 43 fd 01 de d4    	vpermpd $0xd4,%ymm14,%ymm11
  56187d:	c4 e3 25 0d ff 0a    	vblendpd $0xa,%ymm7,%ymm11,%ymm7
  561883:	c4 43 fd 01 df e6    	vpermpd $0xe6,%ymm15,%ymm11
  561889:	c4 43 fd 01 e6 e6    	vpermpd $0xe6,%ymm14,%ymm12
  56188f:	c4 41 1d c6 db 0c    	vshufpd $0xc,%ymm11,%ymm12,%ymm11
  561895:	c5 fd 11 7c 06 40    	vmovupd %ymm7,0x40(%rsi,%rax,1)
  56189b:	c5 7d 11 5c 06 60    	vmovupd %ymm11,0x60(%rsi,%rax,1)
  5618a1:	c4 c3 fd 01 fa 60    	vpermpd $0x60,%ymm10,%ymm7
  5618a7:	c4 43 fd 01 d9 d4    	vpermpd $0xd4,%ymm9,%ymm11
  5618ad:	c4 e3 25 0d ff 0a    	vblendpd $0xa,%ymm7,%ymm11,%ymm7
  5618b3:	c4 43 fd 01 d2 e6    	vpermpd $0xe6,%ymm10,%ymm10
  5618b9:	c4 43 fd 01 c9 e6    	vpermpd $0xe6,%ymm9,%ymm9
  5618bf:	c4 41 35 c6 ca 0c    	vshufpd $0xc,%ymm10,%ymm9,%ymm9
  5618c5:	c5 fd 11 bc 06 80 00 	vmovupd %ymm7,0x80(%rsi,%rax,1)
  5618cc:	00 00 
  5618ce:	c5 7d 11 8c 06 a0 00 	vmovupd %ymm9,0xa0(%rsi,%rax,1)
  5618d5:	00 00 
  5618d7:	c4 e3 fd 01 fe 60    	vpermpd $0x60,%ymm6,%ymm7
  5618dd:	c4 43 fd 01 c8 d4    	vpermpd $0xd4,%ymm8,%ymm9
  5618e3:	c4 e3 35 0d ff 0a    	vblendpd $0xa,%ymm7,%ymm9,%ymm7
  5618e9:	c4 e3 fd 01 f6 e6    	vpermpd $0xe6,%ymm6,%ymm6
  5618ef:	c4 43 fd 01 c0 e6    	vpermpd $0xe6,%ymm8,%ymm8
  5618f5:	c5 bd c6 f6 0c       	vshufpd $0xc,%ymm6,%ymm8,%ymm6
  5618fa:	c5 fd 11 bc 06 c0 00 	vmovupd %ymm7,0xc0(%rsi,%rax,1)
  561901:	00 00 
  561903:	c5 fd 11 b4 06 e0 00 	vmovupd %ymm6,0xe0(%rsi,%rax,1)
  56190a:	00 00 
  56190c:	48 05 00 01 00 00    	add    $0x100,%rax
  561912:	48 ff ca             	dec    %rdx
  561915:	0f 85 75 fd ff ff    	jne    561690 <<fastfft::engine::small::specialized::Avx2Leaf as fastfft::engine::small::Kernel<V>>::run+0x40>
  56191b:	c5 f8 77             	vzeroupper
  56191e:	c3                   	ret
  56191f:	cc                   	int3

0000000000561920 <<fastfft::engine::small::specialized::Avx2Leaf as fastfft::engine::small::Kernel<V>>::run>:
  561920:	48 85 d2             	test   %rdx,%rdx
  561923:	0f 84 c7 02 00 00    	je     561bf0 <<fastfft::engine::small::specialized::Avx2Leaf as fastfft::engine::small::Kernel<V>>::run+0x2d0>
  561929:	31 c0                	xor    %eax,%eax
  56192b:	c5 fd 28 05 ed 3f b0 	vmovapd -0x4fc013(%rip),%ymm0        # 65920 <anon.4b543d1b78d7cf654c1a2ee33e78dad2.2.llvm.6868728367477014390+0x7ff8>
  561932:	ff 
  561933:	c5 fd 28 0d c5 1f b0 	vmovapd -0x4fe03b(%rip),%ymm1        # 63900 <anon.4b543d1b78d7cf654c1a2ee33e78dad2.2.llvm.6868728367477014390+0x5fd8>
  56193a:	ff 
  56193b:	c5 fd 28 15 3d 3b b0 	vmovapd -0x4fc4c3(%rip),%ymm2        # 65480 <anon.4b543d1b78d7cf654c1a2ee33e78dad2.2.llvm.6868728367477014390+0x7b58>
  561942:	ff 
  561943:	c5 fd 28 1d f5 3f b0 	vmovapd -0x4fc00b(%rip),%ymm3        # 65940 <anon.4b543d1b78d7cf654c1a2ee33e78dad2.2.llvm.6868728367477014390+0x8018>
  56194a:	ff 
  56194b:	c5 fd 28 25 4d 31 b0 	vmovapd -0x4fceb3(%rip),%ymm4        # 64aa0 <anon.4b543d1b78d7cf654c1a2ee33e78dad2.2.llvm.6868728367477014390+0x7178>
  561952:	ff 
  561953:	c5 fd 28 2d a5 32 b0 	vmovapd -0x4fcd5b(%rip),%ymm5        # 64c00 <anon.4b543d1b78d7cf654c1a2ee33e78dad2.2.llvm.6868728367477014390+0x72d8>
  56195a:	ff 
  56195b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  561960:	c5 fd 10 34 07       	vmovupd (%rdi,%rax,1),%ymm6
  561965:	c5 fd 10 7c 07 20    	vmovupd 0x20(%rdi,%rax,1),%ymm7
  56196b:	c5 7d 10 44 07 40    	vmovupd 0x40(%rdi,%rax,1),%ymm8
  561971:	c5 7d 10 4c 07 60    	vmovupd 0x60(%rdi,%rax,1),%ymm9
  561977:	c4 63 4d 06 d7 20    	vperm2f128 $0x20,%ymm7,%ymm6,%ymm10
  56197d:	c4 e3 4d 06 f7 31    	vperm2f128 $0x31,%ymm7,%ymm6,%ymm6
  561983:	c5 ad 14 fe          	vunpcklpd %ymm6,%ymm10,%ymm7
  561987:	c5 ad 15 f6          	vunpckhpd %ymm6,%ymm10,%ymm6
  56198b:	c4 43 3d 06 d1 20    	vperm2f128 $0x20,%ymm9,%ymm8,%ymm10
  561991:	c4 43 3d 06 c1 31    	vperm2f128 $0x31,%ymm9,%ymm8,%ymm8
  561997:	c4 41 2d 14 c8       	vunpcklpd %ymm8,%ymm10,%ymm9
  56199c:	c4 41 2d 15 c0       	vunpckhpd %ymm8,%ymm10,%ymm8
  5619a1:	c5 7d 10 94 07 80 00 	vmovupd 0x80(%rdi,%rax,1),%ymm10
  5619a8:	00 00 
  5619aa:	c5 7d 10 9c 07 a0 00 	vmovupd 0xa0(%rdi,%rax,1),%ymm11
  5619b1:	00 00 
  5619b3:	c4 43 2d 06 e3 20    	vperm2f128 $0x20,%ymm11,%ymm10,%ymm12
  5619b9:	c4 43 2d 06 d3 31    	vperm2f128 $0x31,%ymm11,%ymm10,%ymm10
  5619bf:	c4 41 1d 14 da       	vunpcklpd %ymm10,%ymm12,%ymm11
  5619c4:	c4 41 1d 15 d2       	vunpckhpd %ymm10,%ymm12,%ymm10
  5619c9:	c5 7d 10 a4 07 c0 00 	vmovupd 0xc0(%rdi,%rax,1),%ymm12
  5619d0:	00 00 
  5619d2:	c5 7d 10 ac 07 e0 00 	vmovupd 0xe0(%rdi,%rax,1),%ymm13
  5619d9:	00 00 
  5619db:	c4 43 1d 06 f5 20    	vperm2f128 $0x20,%ymm13,%ymm12,%ymm14
  5619e1:	c4 43 1d 06 e5 31    	vperm2f128 $0x31,%ymm13,%ymm12,%ymm12
  5619e7:	c4 41 0d 14 ec       	vunpcklpd %ymm12,%ymm14,%ymm13
  5619ec:	c4 41 0d 15 e4       	vunpckhpd %ymm12,%ymm14,%ymm12
  5619f1:	c5 25 58 f7          	vaddpd %ymm7,%ymm11,%ymm14
  5619f5:	c4 c1 45 5c fb       	vsubpd %ymm11,%ymm7,%ymm7
  5619fa:	c4 41 35 58 dd       	vaddpd %ymm13,%ymm9,%ymm11
  5619ff:	c4 41 35 5c cd       	vsubpd %ymm13,%ymm9,%ymm9
  561a04:	c5 2d 58 ee          	vaddpd %ymm6,%ymm10,%ymm13
  561a08:	c4 c1 4d 5c f2       	vsubpd %ymm10,%ymm6,%ymm6
  561a0d:	c4 41 3d 58 d4       	vaddpd %ymm12,%ymm8,%ymm10
  561a12:	c4 41 3d 5c c4       	vsubpd %ymm12,%ymm8,%ymm8
  561a17:	c4 41 0d 58 e3       	vaddpd %ymm11,%ymm14,%ymm12
  561a1c:	c5 3d 58 ff          	vaddpd %ymm7,%ymm8,%ymm15
  561a20:	c4 41 0d 5c db       	vsubpd %ymm11,%ymm14,%ymm11
  561a25:	c4 c1 45 5c f8       	vsubpd %ymm8,%ymm7,%ymm7
  561a2a:	c4 41 15 58 c2       	vaddpd %ymm10,%ymm13,%ymm8
  561a2f:	c4 41 4d 5c f1       	vsubpd %ymm9,%ymm6,%ymm14
  561a34:	c4 41 15 5c d2       	vsubpd %ymm10,%ymm13,%ymm10
  561a39:	c5 35 58 ce          	vaddpd %ymm6,%ymm9,%ymm9
  561a3d:	c4 41 1d 14 ef       	vunpcklpd %ymm15,%ymm12,%ymm13
  561a42:	c4 41 1d 15 e7       	vunpckhpd %ymm15,%ymm12,%ymm12
  561a47:	c5 25 14 ff          	vunpcklpd %ymm7,%ymm11,%ymm15
  561a4b:	c5 a5 15 ff          	vunpckhpd %ymm7,%ymm11,%ymm7
  561a4f:	c4 c3 15 18 f7 01    	vinsertf128 $0x1,%xmm15,%ymm13,%ymm6
  561a55:	c4 63 1d 18 df 01    	vinsertf128 $0x1,%xmm7,%ymm12,%ymm11
  561a5b:	c4 43 15 06 ef 31    	vperm2f128 $0x31,%ymm15,%ymm13,%ymm13
  561a61:	c4 e3 1d 06 ff 31    	vperm2f128 $0x31,%ymm7,%ymm12,%ymm7
  561a67:	c4 41 3d 14 e6       	vunpcklpd %ymm14,%ymm8,%ymm12
  561a6c:	c4 41 3d 15 c6       	vunpckhpd %ymm14,%ymm8,%ymm8
  561a71:	c4 41 2d 14 f1       	vunpcklpd %ymm9,%ymm10,%ymm14
  561a76:	c4 41 2d 15 c9       	vunpckhpd %ymm9,%ymm10,%ymm9
  561a7b:	c4 43 1d 18 d6 01    	vinsertf128 $0x1,%xmm14,%ymm12,%ymm10
  561a81:	c4 43 3d 18 f9 01    	vinsertf128 $0x1,%xmm9,%ymm8,%ymm15
  561a87:	c4 43 1d 06 e6 31    	vperm2f128 $0x31,%ymm14,%ymm12,%ymm12
  561a8d:	c4 43 3d 06 c1 31    	vperm2f128 $0x31,%ymm9,%ymm8,%ymm8
  561a93:	c5 05 59 c8          	vmulpd %ymm0,%ymm15,%ymm9
  561a97:	c4 62 a5 b8 c9       	vfmadd231pd %ymm1,%ymm11,%ymm9
  561a9c:	c5 05 59 f1          	vmulpd %ymm1,%ymm15,%ymm14
  561aa0:	c4 42 fd bc f3       	vfnmadd231pd %ymm11,%ymm0,%ymm14
  561aa5:	c5 1d 59 da          	vmulpd %ymm2,%ymm12,%ymm11
  561aa9:	c4 62 95 b8 db       	vfmadd231pd %ymm3,%ymm13,%ymm11
  561aae:	c5 1d 59 e3          	vmulpd %ymm3,%ymm12,%ymm12
  561ab2:	c4 42 ed bc e5       	vfnmadd231pd %ymm13,%ymm2,%ymm12
  561ab7:	c5 3d 59 ec          	vmulpd %ymm4,%ymm8,%ymm13
  561abb:	c4 62 c5 b8 ed       	vfmadd231pd %ymm5,%ymm7,%ymm13
  561ac0:	c5 3d 59 c5          	vmulpd %ymm5,%ymm8,%ymm8
  561ac4:	c4 62 dd bc c7       	vfnmadd231pd %ymm7,%ymm4,%ymm8
  561ac9:	c5 a5 58 fe          	vaddpd %ymm6,%ymm11,%ymm7
  561acd:	c4 c1 4d 5c f3       	vsubpd %ymm11,%ymm6,%ymm6
  561ad2:	c4 41 35 58 dd       	vaddpd %ymm13,%ymm9,%ymm11
  561ad7:	c4 41 35 5c cd       	vsubpd %ymm13,%ymm9,%ymm9
  561adc:	c4 41 2d 58 ec       	vaddpd %ymm12,%ymm10,%ymm13
  561ae1:	c4 41 2d 5c d4       	vsubpd %ymm12,%ymm10,%ymm10
  561ae6:	c4 41 0d 58 e0       	vaddpd %ymm8,%ymm14,%ymm12
  561aeb:	c4 41 0d 5c c0       	vsubpd %ymm8,%ymm14,%ymm8
  561af0:	c5 25 58 f7          	vaddpd %ymm7,%ymm11,%ymm14
  561af4:	c5 3d 58 fe          	vaddpd %ymm6,%ymm8,%ymm15
  561af8:	c4 c1 45 5c fb       	vsubpd %ymm11,%ymm7,%ymm7
  561afd:	c4 c1 4d 5c f0       	vsubpd %ymm8,%ymm6,%ymm6
  561b02:	c4 41 15 58 c4       	vaddpd %ymm12,%ymm13,%ymm8
  561b07:	c4 41 2d 5c d9       	vsubpd %ymm9,%ymm10,%ymm11
  561b0c:	c4 41 15 5c e4       	vsubpd %ymm12,%ymm13,%ymm12
  561b11:	c4 41 2d 58 c9       	vaddpd %ymm9,%ymm10,%ymm9
  561b16:	c4 43 fd 01 d0 60    	vpermpd $0x60,%ymm8,%ymm10
  561b1c:	c4 43 fd 01 ee d4    	vpermpd $0xd4,%ymm14,%ymm13
  561b22:	c4 43 15 0d d2 0a    	vblendpd $0xa,%ymm10,%ymm13,%ymm10
  561b28:	c4 43 fd 01 c0 e6    	vpermpd $0xe6,%ymm8,%ymm8
  561b2e:	c4 43 fd 01 ee e6    	vpermpd $0xe6,%ymm14,%ymm13
  561b34:	c4 41 15 c6 c0 0c    	vshufpd $0xc,%ymm8,%ymm13,%ymm8
  561b3a:	c5 7d 11 14 06       	vmovupd %ymm10,(%rsi,%rax,1)
  561b3f:	c5 7d 11 44 06 20    	vmovupd %ymm8,0x20(%rsi,%rax,1)
  561b45:	c4 43 fd 01 c3 60    	vpermpd $0x60,%ymm11,%ymm8
  561b4b:	c4 43 fd 01 d7 d4    	vpermpd $0xd4,%ymm15,%ymm10
  561b51:	c4 43 2d 0d c0 0a    	vblendpd $0xa,%ymm8,%ymm10,%ymm8
  561b57:	c4 43 fd 01 d3 e6    	vpermpd $0xe6,%ymm11,%ymm10
  561b5d:	c4 43 fd 01 df e6    	vpermpd $0xe6,%ymm15,%ymm11
  561b63:	c4 41 25 c6 d2 0c    	vshufpd $0xc,%ymm10,%ymm11,%ymm10
  561b69:	c5 7d 11 44 06 40    	vmovupd %ymm8,0x40(%rsi,%rax,1)
  561b6f:	c5 7d 11 54 06 60    	vmovupd %ymm10,0x60(%rsi,%rax,1)
  561b75:	c4 43 fd 01 c4 60    	vpermpd $0x60,%ymm12,%ymm8
  561b7b:	c4 63 fd 01 d7 d4    	vpermpd $0xd4,%ymm7,%ymm10
  561b81:	c4 43 2d 0d c0 0a    	vblendpd $0xa,%ymm8,%ymm10,%ymm8
  561b87:	c4 43 fd 01 d4 e6    	vpermpd $0xe6,%ymm12,%ymm10
  561b8d:	c4 e3 fd 01 ff e6    	vpermpd $0xe6,%ymm7,%ymm7
  561b93:	c4 c1 45 c6 fa 0c    	vshufpd $0xc,%ymm10,%ymm7,%ymm7
  561b99:	c5 7d 11 84 06 80 00 	vmovupd %ymm8,0x80(%rsi,%rax,1)
  561ba0:	00 00 
  561ba2:	c5 fd 11 bc 06 a0 00 	vmovupd %ymm7,0xa0(%rsi,%rax,1)
  561ba9:	00 00 
  561bab:	c4 c3 fd 01 f9 60    	vpermpd $0x60,%ymm9,%ymm7
  561bb1:	c4 63 fd 01 c6 d4    	vpermpd $0xd4,%ymm6,%ymm8
  561bb7:	c4 e3 3d 0d ff 0a    	vblendpd $0xa,%ymm7,%ymm8,%ymm7
  561bbd:	c4 43 fd 01 c1 e6    	vpermpd $0xe6,%ymm9,%ymm8
  561bc3:	c4 e3 fd 01 f6 e6    	vpermpd $0xe6,%ymm6,%ymm6
  561bc9:	c4 c1 4d c6 f0 0c    	vshufpd $0xc,%ymm8,%ymm6,%ymm6
  561bcf:	c5 fd 11 bc 06 c0 00 	vmovupd %ymm7,0xc0(%rsi,%rax,1)
  561bd6:	00 00 
  561bd8:	c5 fd 11 b4 06 e0 00 	vmovupd %ymm6,0xe0(%rsi,%rax,1)
  561bdf:	00 00 
  561be1:	48 05 00 01 00 00    	add    $0x100,%rax
  561be7:	48 ff ca             	dec    %rdx
  561bea:	0f 85 70 fd ff ff    	jne    561960 <<fastfft::engine::small::specialized::Avx2Leaf as fastfft::engine::small::Kernel<V>>::run+0x40>
  561bf0:	c5 f8 77             	vzeroupper
  561bf3:	c3                   	ret
  561bf4:	cc                   	int3
  561bf5:	cc                   	int3
  561bf6:	cc                   	int3
  561bf7:	cc                   	int3
  561bf8:	cc                   	int3
  561bf9:	cc                   	int3
  561bfa:	cc                   	int3
  561bfb:	cc                   	int3
  561bfc:	cc                   	int3
  561bfd:	cc                   	int3
  561bfe:	cc                   	int3
  561bff:	cc                   	int3

0000000000561c00 <<fastfft::engine::small::specialized::Avx2Leaf as fastfft::engine::small::Kernel<V>>::run>:
  561c00:	48 85 d2             	test   %rdx,%rdx
  561c03:	0f 84 0e 02 00 00    	je     561e17 <<fastfft::engine::small::specialized::Avx2Leaf as fastfft::engine::small::Kernel<V>>::run+0x217>
  561c09:	31 c0                	xor    %eax,%eax
  561c0b:	c5 f8 28 05 fd 34 af 	vmovaps -0x50cb03(%rip),%xmm0        # 55110 <anon.68b6cc7d90a76918f651089cf5b181a9.28.llvm.17722474192790696293+0x2f0>
  561c12:	ff 
  561c13:	c5 f8 28 0d 45 45 af 	vmovaps -0x50babb(%rip),%xmm1        # 56160 <anon.68b6cc7d90a76918f651089cf5b181a9.28.llvm.17722474192790696293+0x1340>
  561c1a:	ff 
  561c1b:	c5 f8 28 15 7d 44 af 	vmovaps -0x50bb83(%rip),%xmm2        # 560a0 <anon.68b6cc7d90a76918f651089cf5b181a9.28.llvm.17722474192790696293+0x1280>
  561c22:	ff 
  561c23:	c5 f8 28 1d 75 4c af 	vmovaps -0x50b38b(%rip),%xmm3        # 568a0 <anon.68b6cc7d90a76918f651089cf5b181a9.28.llvm.17722474192790696293+0x1a80>
  561c2a:	ff 
  561c2b:	c5 f8 28 25 ed 3a af 	vmovaps -0x50c513(%rip),%xmm4        # 55720 <anon.68b6cc7d90a76918f651089cf5b181a9.28.llvm.17722474192790696293+0x900>
  561c32:	ff 
  561c33:	c5 f8 28 2d 95 32 af 	vmovaps -0x50cd6b(%rip),%xmm5        # 54ed0 <anon.68b6cc7d90a76918f651089cf5b181a9.28.llvm.17722474192790696293+0xb0>
  561c3a:	ff 
  561c3b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  561c40:	c5 f8 10 34 07       	vmovups (%rdi,%rax,1),%xmm6
  561c45:	c5 f8 10 7c 07 10    	vmovups 0x10(%rdi,%rax,1),%xmm7
  561c4b:	c5 78 10 44 07 20    	vmovups 0x20(%rdi,%rax,1),%xmm8
  561c51:	c5 78 10 4c 07 30    	vmovups 0x30(%rdi,%rax,1),%xmm9
  561c57:	c5 48 c6 d7 88       	vshufps $0x88,%xmm7,%xmm6,%xmm10
  561c5c:	c5 c8 c6 f7 dd       	vshufps $0xdd,%xmm7,%xmm6,%xmm6
  561c61:	c4 c1 38 c6 f9 88    	vshufps $0x88,%xmm9,%xmm8,%xmm7
  561c67:	c4 41 38 c6 c1 dd    	vshufps $0xdd,%xmm9,%xmm8,%xmm8
  561c6d:	c5 78 10 4c 07 40    	vmovups 0x40(%rdi,%rax,1),%xmm9
  561c73:	c5 78 10 5c 07 50    	vmovups 0x50(%rdi,%rax,1),%xmm11
  561c79:	c4 41 30 c6 e3 88    	vshufps $0x88,%xmm11,%xmm9,%xmm12
  561c7f:	c4 41 30 c6 cb dd    	vshufps $0xdd,%xmm11,%xmm9,%xmm9
  561c85:	c5 78 10 5c 07 60    	vmovups 0x60(%rdi,%rax,1),%xmm11
  561c8b:	c5 78 10 6c 07 70    	vmovups 0x70(%rdi,%rax,1),%xmm13
  561c91:	c4 41 20 c6 f5 88    	vshufps $0x88,%xmm13,%xmm11,%xmm14
  561c97:	c4 41 20 c6 dd dd    	vshufps $0xdd,%xmm13,%xmm11,%xmm11
  561c9d:	c4 41 28 58 ec       	vaddps %xmm12,%xmm10,%xmm13
  561ca2:	c4 41 28 5c d4       	vsubps %xmm12,%xmm10,%xmm10
  561ca7:	c5 08 58 e7          	vaddps %xmm7,%xmm14,%xmm12
  561cab:	c4 c1 40 5c fe       	vsubps %xmm14,%xmm7,%xmm7
  561cb0:	c5 30 58 f6          	vaddps %xmm6,%xmm9,%xmm14
  561cb4:	c4 c1 48 5c f1       	vsubps %xmm9,%xmm6,%xmm6
  561cb9:	c4 41 38 58 cb       	vaddps %xmm11,%xmm8,%xmm9
  561cbe:	c4 41 38 5c c3       	vsubps %xmm11,%xmm8,%xmm8
  561cc3:	c4 41 10 58 dc       	vaddps %xmm12,%xmm13,%xmm11
  561cc8:	c4 41 28 58 f8       	vaddps %xmm8,%xmm10,%xmm15
  561ccd:	c4 41 10 5c e4       	vsubps %xmm12,%xmm13,%xmm12
  561cd2:	c4 41 28 5c c0       	vsubps %xmm8,%xmm10,%xmm8
  561cd7:	c4 41 08 58 d1       	vaddps %xmm9,%xmm14,%xmm10
  561cdc:	c5 48 5c ef          	vsubps %xmm7,%xmm6,%xmm13
  561ce0:	c4 41 08 5c c9       	vsubps %xmm9,%xmm14,%xmm9
  561ce5:	c5 c8 58 f7          	vaddps %xmm7,%xmm6,%xmm6
  561ce9:	c4 c1 20 14 ff       	vunpcklps %xmm15,%xmm11,%xmm7
  561cee:	c4 41 20 15 df       	vunpckhps %xmm15,%xmm11,%xmm11
  561cf3:	c4 41 18 14 f0       	vunpcklps %xmm8,%xmm12,%xmm14
  561cf8:	c4 41 18 15 c0       	vunpckhps %xmm8,%xmm12,%xmm8
  561cfd:	c4 41 40 16 e6       	vmovlhps %xmm14,%xmm7,%xmm12
  561d02:	c4 c1 41 15 fe       	vunpckhpd %xmm14,%xmm7,%xmm7
  561d07:	c4 41 20 16 f0       	vmovlhps %xmm8,%xmm11,%xmm14
  561d0c:	c4 41 21 15 c0       	vunpckhpd %xmm8,%xmm11,%xmm8
  561d11:	c4 41 28 14 dd       	vunpcklps %xmm13,%xmm10,%xmm11
  561d16:	c4 41 28 15 d5       	vunpckhps %xmm13,%xmm10,%xmm10
  561d1b:	c5 30 14 ee          	vunpcklps %xmm6,%xmm9,%xmm13
  561d1f:	c5 b0 15 f6          	vunpckhps %xmm6,%xmm9,%xmm6
  561d23:	c4 41 20 16 cd       	vmovlhps %xmm13,%xmm11,%xmm9
  561d28:	c4 41 21 15 dd       	vunpckhpd %xmm13,%xmm11,%xmm11
  561d2d:	c5 28 16 ee          	vmovlhps %xmm6,%xmm10,%xmm13
  561d31:	c5 a9 15 f6          	vunpckhpd %xmm6,%xmm10,%xmm6
  561d35:	c5 20 59 d0          	vmulps %xmm0,%xmm11,%xmm10
  561d39:	c4 62 41 b8 d1       	vfmadd231ps %xmm1,%xmm7,%xmm10
  561d3e:	c5 20 59 d9          	vmulps %xmm1,%xmm11,%xmm11
  561d42:	c4 62 79 bc df       	vfnmadd231ps %xmm7,%xmm0,%xmm11
  561d47:	c5 90 59 fa          	vmulps %xmm2,%xmm13,%xmm7
  561d4b:	c4 e2 09 b8 fb       	vfmadd231ps %xmm3,%xmm14,%xmm7
  561d50:	c5 10 59 eb          	vmulps %xmm3,%xmm13,%xmm13
  561d54:	c4 42 69 bc ee       	vfnmadd231ps %xmm14,%xmm2,%xmm13
  561d59:	c5 48 59 f4          	vmulps %xmm4,%xmm6,%xmm14
  561d5d:	c4 62 39 b8 f5       	vfmadd231ps %xmm5,%xmm8,%xmm14
  561d62:	c5 c8 59 f5          	vmulps %xmm5,%xmm6,%xmm6
  561d66:	c4 c2 59 bc f0       	vfnmadd231ps %xmm8,%xmm4,%xmm6
  561d6b:	c5 18 58 c7          	vaddps %xmm7,%xmm12,%xmm8
  561d6f:	c5 98 5c ff          	vsubps %xmm7,%xmm12,%xmm7
  561d73:	c4 41 28 58 e6       	vaddps %xmm14,%xmm10,%xmm12
  561d78:	c4 41 28 5c d6       	vsubps %xmm14,%xmm10,%xmm10
  561d7d:	c4 41 30 58 f5       	vaddps %xmm13,%xmm9,%xmm14
  561d82:	c4 41 30 5c cd       	vsubps %xmm13,%xmm9,%xmm9
  561d87:	c5 20 58 ee          	vaddps %xmm6,%xmm11,%xmm13
  561d8b:	c5 a0 5c f6          	vsubps %xmm6,%xmm11,%xmm6
  561d8f:	c4 41 38 58 dc       	vaddps %xmm12,%xmm8,%xmm11
  561d94:	c5 40 58 fe          	vaddps %xmm6,%xmm7,%xmm15
  561d98:	c4 41 38 5c c4       	vsubps %xmm12,%xmm8,%xmm8
  561d9d:	c5 c0 5c f6          	vsubps %xmm6,%xmm7,%xmm6
  561da1:	c4 c1 08 58 fd       	vaddps %xmm13,%xmm14,%xmm7
  561da6:	c4 41 30 5c e2       	vsubps %xmm10,%xmm9,%xmm12
  561dab:	c4 41 08 5c ed       	vsubps %xmm13,%xmm14,%xmm13
  561db0:	c4 41 30 58 ca       	vaddps %xmm10,%xmm9,%xmm9
  561db5:	c5 20 14 d7          	vunpcklps %xmm7,%xmm11,%xmm10
  561db9:	c5 a0 15 ff          	vunpckhps %xmm7,%xmm11,%xmm7
  561dbd:	c5 78 11 14 06       	vmovups %xmm10,(%rsi,%rax,1)
  561dc2:	c5 f8 11 7c 06 10    	vmovups %xmm7,0x10(%rsi,%rax,1)
  561dc8:	c4 c1 00 14 fc       	vunpcklps %xmm12,%xmm15,%xmm7
  561dcd:	c4 41 00 15 d4       	vunpckhps %xmm12,%xmm15,%xmm10
  561dd2:	c5 f8 11 7c 06 20    	vmovups %xmm7,0x20(%rsi,%rax,1)
  561dd8:	c5 78 11 54 06 30    	vmovups %xmm10,0x30(%rsi,%rax,1)
  561dde:	c4 c1 38 14 fd       	vunpcklps %xmm13,%xmm8,%xmm7
  561de3:	c4 41 38 15 c5       	vunpckhps %xmm13,%xmm8,%xmm8
  561de8:	c5 f8 11 7c 06 40    	vmovups %xmm7,0x40(%rsi,%rax,1)
  561dee:	c5 78 11 44 06 50    	vmovups %xmm8,0x50(%rsi,%rax,1)
  561df4:	c4 c1 48 14 f9       	vunpcklps %xmm9,%xmm6,%xmm7
  561df9:	c4 c1 48 15 f1       	vunpckhps %xmm9,%xmm6,%xmm6
  561dfe:	c5 f8 11 7c 06 60    	vmovups %xmm7,0x60(%rsi,%rax,1)
  561e04:	c5 f8 11 74 06 70    	vmovups %xmm6,0x70(%rsi,%rax,1)
  561e0a:	48 83 e8 80          	sub    $0xffffffffffffff80,%rax
  561e0e:	48 ff ca             	dec    %rdx
  561e11:	0f 85 29 fe ff ff    	jne    561c40 <<fastfft::engine::small::specialized::Avx2Leaf as fastfft::engine::small::Kernel<V>>::run+0x40>
  561e17:	c3                   	ret
  561e18:	cc                   	int3
  561e19:	cc                   	int3
  561e1a:	cc                   	int3
  561e1b:	cc                   	int3
  561e1c:	cc                   	int3
  561e1d:	cc                   	int3
  561e1e:	cc                   	int3
  561e1f:	cc                   	int3

0000000000561e20 <<fastfft::engine::small::specialized::Avx2Leaf as fastfft::engine::small::Kernel<V>>::run>:
  561e20:	48 85 d2             	test   %rdx,%rdx
  561e23:	0f 84 0d 02 00 00    	je     562036 <<fastfft::engine::small::specialized::Avx2Leaf as fastfft::engine::small::Kernel<V>>::run+0x216>
  561e29:	31 c0                	xor    %eax,%eax
  561e2b:	c5 f8 28 05 dd 32 af 	vmovaps -0x50cd23(%rip),%xmm0        # 55110 <anon.68b6cc7d90a76918f651089cf5b181a9.28.llvm.17722474192790696293+0x2f0>
  561e32:	ff 
  561e33:	c5 f8 28 0d 25 43 af 	vmovaps -0x50bcdb(%rip),%xmm1        # 56160 <anon.68b6cc7d90a76918f651089cf5b181a9.28.llvm.17722474192790696293+0x1340>
  561e3a:	ff 
  561e3b:	c5 f8 28 15 5d 42 af 	vmovaps -0x50bda3(%rip),%xmm2        # 560a0 <anon.68b6cc7d90a76918f651089cf5b181a9.28.llvm.17722474192790696293+0x1280>
  561e42:	ff 
  561e43:	c5 f8 28 1d 55 4a af 	vmovaps -0x50b5ab(%rip),%xmm3        # 568a0 <anon.68b6cc7d90a76918f651089cf5b181a9.28.llvm.17722474192790696293+0x1a80>
  561e4a:	ff 
  561e4b:	c5 f8 28 25 cd 38 af 	vmovaps -0x50c733(%rip),%xmm4        # 55720 <anon.68b6cc7d90a76918f651089cf5b181a9.28.llvm.17722474192790696293+0x900>
  561e52:	ff 
  561e53:	c5 f8 28 2d 75 30 af 	vmovaps -0x50cf8b(%rip),%xmm5        # 54ed0 <anon.68b6cc7d90a76918f651089cf5b181a9.28.llvm.17722474192790696293+0xb0>
  561e5a:	ff 
  561e5b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  561e60:	c5 f8 10 34 07       	vmovups (%rdi,%rax,1),%xmm6
  561e65:	c5 f8 10 7c 07 10    	vmovups 0x10(%rdi,%rax,1),%xmm7
  561e6b:	c5 78 10 44 07 20    	vmovups 0x20(%rdi,%rax,1),%xmm8
  561e71:	c5 78 10 4c 07 30    	vmovups 0x30(%rdi,%rax,1),%xmm9
  561e77:	c5 48 c6 d7 88       	vshufps $0x88,%xmm7,%xmm6,%xmm10
  561e7c:	c5 c8 c6 f7 dd       	vshufps $0xdd,%xmm7,%xmm6,%xmm6
  561e81:	c4 c1 38 c6 f9 88    	vshufps $0x88,%xmm9,%xmm8,%xmm7
  561e87:	c4 41 38 c6 c1 dd    	vshufps $0xdd,%xmm9,%xmm8,%xmm8
  561e8d:	c5 78 10 4c 07 40    	vmovups 0x40(%rdi,%rax,1),%xmm9
  561e93:	c5 78 10 5c 07 50    	vmovups 0x50(%rdi,%rax,1),%xmm11
  561e99:	c4 41 30 c6 e3 88    	vshufps $0x88,%xmm11,%xmm9,%xmm12
  561e9f:	c4 41 30 c6 cb dd    	vshufps $0xdd,%xmm11,%xmm9,%xmm9
  561ea5:	c5 78 10 5c 07 60    	vmovups 0x60(%rdi,%rax,1),%xmm11
  561eab:	c5 78 10 6c 07 70    	vmovups 0x70(%rdi,%rax,1),%xmm13
  561eb1:	c4 41 20 c6 f5 88    	vshufps $0x88,%xmm13,%xmm11,%xmm14
  561eb7:	c4 41 20 c6 dd dd    	vshufps $0xdd,%xmm13,%xmm11,%xmm11
  561ebd:	c5 30 58 ee          	vaddps %xmm6,%xmm9,%xmm13
  561ec1:	c4 c1 48 5c f1       	vsubps %xmm9,%xmm6,%xmm6
  561ec6:	c4 41 38 58 cb       	vaddps %xmm11,%xmm8,%xmm9
  561ecb:	c4 41 38 5c c3       	vsubps %xmm11,%xmm8,%xmm8
  561ed0:	c4 41 28 58 dc       	vaddps %xmm12,%xmm10,%xmm11
  561ed5:	c4 41 28 5c d4       	vsubps %xmm12,%xmm10,%xmm10
  561eda:	c5 08 58 e7          	vaddps %xmm7,%xmm14,%xmm12
  561ede:	c4 c1 40 5c fe       	vsubps %xmm14,%xmm7,%xmm7
  561ee3:	c4 41 10 58 f1       	vaddps %xmm9,%xmm13,%xmm14
  561ee8:	c5 48 58 ff          	vaddps %xmm7,%xmm6,%xmm15
  561eec:	c4 41 10 5c c9       	vsubps %xmm9,%xmm13,%xmm9
  561ef1:	c5 c8 5c f7          	vsubps %xmm7,%xmm6,%xmm6
  561ef5:	c4 c1 20 58 fc       	vaddps %xmm12,%xmm11,%xmm7
  561efa:	c4 41 28 5c e8       	vsubps %xmm8,%xmm10,%xmm13
  561eff:	c4 41 20 5c dc       	vsubps %xmm12,%xmm11,%xmm11
  561f04:	c4 41 28 58 c0       	vaddps %xmm8,%xmm10,%xmm8
  561f09:	c4 41 08 14 d7       	vunpcklps %xmm15,%xmm14,%xmm10
  561f0e:	c4 41 08 15 e7       	vunpckhps %xmm15,%xmm14,%xmm12
  561f13:	c5 30 14 f6          	vunpcklps %xmm6,%xmm9,%xmm14
  561f17:	c5 b0 15 f6          	vunpckhps %xmm6,%xmm9,%xmm6
  561f1b:	c4 41 28 16 ce       	vmovlhps %xmm14,%xmm10,%xmm9
  561f20:	c4 41 29 15 d6       	vunpckhpd %xmm14,%xmm10,%xmm10
  561f25:	c5 18 16 f6          	vmovlhps %xmm6,%xmm12,%xmm14
  561f29:	c5 99 15 f6          	vunpckhpd %xmm6,%xmm12,%xmm6
  561f2d:	c4 41 40 14 e5       	vunpcklps %xmm13,%xmm7,%xmm12
  561f32:	c4 c1 40 15 fd       	vunpckhps %xmm13,%xmm7,%xmm7
  561f37:	c4 41 20 14 e8       	vunpcklps %xmm8,%xmm11,%xmm13
  561f3c:	c4 41 20 15 c0       	vunpckhps %xmm8,%xmm11,%xmm8
  561f41:	c4 41 18 16 dd       	vmovlhps %xmm13,%xmm12,%xmm11
  561f46:	c4 41 19 15 e5       	vunpckhpd %xmm13,%xmm12,%xmm12
  561f4b:	c4 41 40 16 e8       	vmovlhps %xmm8,%xmm7,%xmm13
  561f50:	c4 c1 41 15 f8       	vunpckhpd %xmm8,%xmm7,%xmm7
  561f55:	c5 18 59 c0          	vmulps %xmm0,%xmm12,%xmm8
  561f59:	c4 62 29 b8 c1       	vfmadd231ps %xmm1,%xmm10,%xmm8
  561f5e:	c5 18 59 e1          	vmulps %xmm1,%xmm12,%xmm12
  561f62:	c4 42 79 bc e2       	vfnmadd231ps %xmm10,%xmm0,%xmm12
  561f67:	c5 10 59 d2          	vmulps %xmm2,%xmm13,%xmm10
  561f6b:	c4 62 09 b8 d3       	vfmadd231ps %xmm3,%xmm14,%xmm10
  561f70:	c5 10 59 eb          	vmulps %xmm3,%xmm13,%xmm13
  561f74:	c4 42 69 bc ee       	vfnmadd231ps %xmm14,%xmm2,%xmm13
  561f79:	c5 40 59 f4          	vmulps %xmm4,%xmm7,%xmm14
  561f7d:	c4 62 49 b8 f5       	vfmadd231ps %xmm5,%xmm6,%xmm14
  561f82:	c5 c0 59 fd          	vmulps %xmm5,%xmm7,%xmm7
  561f86:	c4 e2 59 bc fe       	vfnmadd231ps %xmm6,%xmm4,%xmm7
  561f8b:	c4 c1 30 58 f2       	vaddps %xmm10,%xmm9,%xmm6
  561f90:	c4 41 30 5c ca       	vsubps %xmm10,%xmm9,%xmm9
  561f95:	c4 41 38 58 d6       	vaddps %xmm14,%xmm8,%xmm10
  561f9a:	c4 41 38 5c c6       	vsubps %xmm14,%xmm8,%xmm8
  561f9f:	c4 41 20 58 f5       	vaddps %xmm13,%xmm11,%xmm14
  561fa4:	c4 41 20 5c dd       	vsubps %xmm13,%xmm11,%xmm11
  561fa9:	c5 18 58 ef          	vaddps %xmm7,%xmm12,%xmm13
  561fad:	c5 98 5c ff          	vsubps %xmm7,%xmm12,%xmm7
  561fb1:	c5 28 58 e6          	vaddps %xmm6,%xmm10,%xmm12
  561fb5:	c5 30 58 ff          	vaddps %xmm7,%xmm9,%xmm15
  561fb9:	c4 c1 48 5c f2       	vsubps %xmm10,%xmm6,%xmm6
  561fbe:	c5 b0 5c ff          	vsubps %xmm7,%xmm9,%xmm7
  561fc2:	c4 41 08 58 cd       	vaddps %xmm13,%xmm14,%xmm9
  561fc7:	c4 41 20 5c d0       	vsubps %xmm8,%xmm11,%xmm10
  561fcc:	c4 41 08 5c ed       	vsubps %xmm13,%xmm14,%xmm13
  561fd1:	c4 41 20 58 c0       	vaddps %xmm8,%xmm11,%xmm8
  561fd6:	c4 41 30 14 dc       	vunpcklps %xmm12,%xmm9,%xmm11
  561fdb:	c4 41 30 15 cc       	vunpckhps %xmm12,%xmm9,%xmm9
  561fe0:	c5 78 11 1c 06       	vmovups %xmm11,(%rsi,%rax,1)
  561fe5:	c5 78 11 4c 06 10    	vmovups %xmm9,0x10(%rsi,%rax,1)
  561feb:	c4 41 28 14 cf       	vunpcklps %xmm15,%xmm10,%xmm9
  561ff0:	c4 41 28 15 d7       	vunpckhps %xmm15,%xmm10,%xmm10
  561ff5:	c5 78 11 4c 06 20    	vmovups %xmm9,0x20(%rsi,%rax,1)
  561ffb:	c5 78 11 54 06 30    	vmovups %xmm10,0x30(%rsi,%rax,1)
  562001:	c5 10 14 ce          	vunpcklps %xmm6,%xmm13,%xmm9
  562005:	c5 90 15 f6          	vunpckhps %xmm6,%xmm13,%xmm6
  562009:	c5 78 11 4c 06 40    	vmovups %xmm9,0x40(%rsi,%rax,1)
  56200f:	c5 f8 11 74 06 50    	vmovups %xmm6,0x50(%rsi,%rax,1)
  562015:	c5 b8 14 f7          	vunpcklps %xmm7,%xmm8,%xmm6
  562019:	c5 b8 15 ff          	vunpckhps %xmm7,%xmm8,%xmm7
  56201d:	c5 f8 11 74 06 60    	vmovups %xmm6,0x60(%rsi,%rax,1)
  562023:	c5 f8 11 7c 06 70    	vmovups %xmm7,0x70(%rsi,%rax,1)
  562029:	48 83 e8 80          	sub    $0xffffffffffffff80,%rax
  56202d:	48 ff ca             	dec    %rdx
  562030:	0f 85 2a fe ff ff    	jne    561e60 <<fastfft::engine::small::specialized::Avx2Leaf as fastfft::engine::small::Kernel<V>>::run+0x40>
  562036:	c3                   	ret
  562037:	cc                   	int3
  562038:	cc                   	int3
  562039:	cc                   	int3
  56203a:	cc                   	int3
  56203b:	cc                   	int3
  56203c:	cc                   	int3
  56203d:	cc                   	int3
  56203e:	cc                   	int3
  56203f:	cc                   	int3

0000000000562040 <<fastfft::engine::small::specialized::Avx512Leaf as fastfft::engine::small::Kernel<V>>::one>:
  562040:	c5 fd 10 07          	vmovupd (%rdi),%ymm0
  562044:	c5 fd 10 4f 20       	vmovupd 0x20(%rdi),%ymm1
  562049:	c5 fd 10 57 40       	vmovupd 0x40(%rdi),%ymm2
  56204e:	c5 fd 10 5f 60       	vmovupd 0x60(%rdi),%ymm3
  562053:	c4 e3 7d 06 e1 31    	vperm2f128 $0x31,%ymm1,%ymm0,%ymm4
  562059:	c4 e3 7d 06 c1 20    	vperm2f128 $0x20,%ymm1,%ymm0,%ymm0
  56205f:	c5 fd 14 cc          	vunpcklpd %ymm4,%ymm0,%ymm1
  562063:	c5 fd 15 c4          	vunpckhpd %ymm4,%ymm0,%ymm0
  562067:	c4 e3 6d 06 e3 31    	vperm2f128 $0x31,%ymm3,%ymm2,%ymm4
  56206d:	c4 e3 6d 06 d3 20    	vperm2f128 $0x20,%ymm3,%ymm2,%ymm2
  562073:	c5 ed 14 dc          	vunpcklpd %ymm4,%ymm2,%ymm3
  562077:	c5 ed 15 d4          	vunpckhpd %ymm4,%ymm2,%ymm2
  56207b:	c5 fd 10 a7 80 00 00 	vmovupd 0x80(%rdi),%ymm4
  562082:	00 
  562083:	c5 fd 10 af a0 00 00 	vmovupd 0xa0(%rdi),%ymm5
  56208a:	00 
  56208b:	c4 e3 5d 06 f5 31    	vperm2f128 $0x31,%ymm5,%ymm4,%ymm6
  562091:	c4 e3 5d 06 e5 20    	vperm2f128 $0x20,%ymm5,%ymm4,%ymm4
  562097:	c5 dd 14 ee          	vunpcklpd %ymm6,%ymm4,%ymm5
  56209b:	c5 dd 15 e6          	vunpckhpd %ymm6,%ymm4,%ymm4
  56209f:	c5 fd 10 b7 c0 00 00 	vmovupd 0xc0(%rdi),%ymm6
  5620a6:	00 
  5620a7:	c5 fd 10 bf e0 00 00 	vmovupd 0xe0(%rdi),%ymm7
  5620ae:	00 
  5620af:	c4 63 4d 06 c7 31    	vperm2f128 $0x31,%ymm7,%ymm6,%ymm8
  5620b5:	c4 e3 4d 06 f7 20    	vperm2f128 $0x20,%ymm7,%ymm6,%ymm6
  5620bb:	c4 c1 4d 14 f8       	vunpcklpd %ymm8,%ymm6,%ymm7
  5620c0:	c4 c1 4d 15 f0       	vunpckhpd %ymm8,%ymm6,%ymm6
  5620c5:	c5 7d 58 c4          	vaddpd %ymm4,%ymm0,%ymm8
  5620c9:	c5 fd 5c c4          	vsubpd %ymm4,%ymm0,%ymm0
  5620cd:	c5 ed 58 e6          	vaddpd %ymm6,%ymm2,%ymm4
  5620d1:	c5 ed 5c d6          	vsubpd %ymm6,%ymm2,%ymm2
  5620d5:	c5 f5 58 f5          	vaddpd %ymm5,%ymm1,%ymm6
  5620d9:	c5 f5 5c cd          	vsubpd %ymm5,%ymm1,%ymm1
  5620dd:	c5 e5 58 ef          	vaddpd %ymm7,%ymm3,%ymm5
  5620e1:	c5 e5 5c df          	vsubpd %ymm7,%ymm3,%ymm3
  5620e5:	c5 bd 58 fc          	vaddpd %ymm4,%ymm8,%ymm7
  5620e9:	c5 7d 58 cb          	vaddpd %ymm3,%ymm0,%ymm9
  5620ed:	c5 bd 5c e4          	vsubpd %ymm4,%ymm8,%ymm4
  5620f1:	c5 fd 5c c3          	vsubpd %ymm3,%ymm0,%ymm0
  5620f5:	c5 cd 58 dd          	vaddpd %ymm5,%ymm6,%ymm3
  5620f9:	c5 75 5c c2          	vsubpd %ymm2,%ymm1,%ymm8
  5620fd:	c5 cd 5c ed          	vsubpd %ymm5,%ymm6,%ymm5
  562101:	c5 f5 58 ca          	vaddpd %ymm2,%ymm1,%ymm1
  562105:	c4 c1 45 14 d1       	vunpcklpd %ymm9,%ymm7,%ymm2
  56210a:	c4 c1 45 15 f1       	vunpckhpd %ymm9,%ymm7,%ymm6
  56210f:	c5 dd 14 f8          	vunpcklpd %ymm0,%ymm4,%ymm7
  562113:	c5 dd 15 c0          	vunpckhpd %ymm0,%ymm4,%ymm0
  562117:	c4 e3 6d 18 e7 01    	vinsertf128 $0x1,%xmm7,%ymm2,%ymm4
  56211d:	c4 63 4d 18 c8 01    	vinsertf128 $0x1,%xmm0,%ymm6,%ymm9
  562123:	c4 e3 6d 06 d7 31    	vperm2f128 $0x31,%ymm7,%ymm2,%ymm2
  562129:	c4 e3 4d 06 c0 31    	vperm2f128 $0x31,%ymm0,%ymm6,%ymm0
  56212f:	c4 c1 65 14 f0       	vunpcklpd %ymm8,%ymm3,%ymm6
  562134:	c4 c1 65 15 d8       	vunpckhpd %ymm8,%ymm3,%ymm3
  562139:	c5 d5 14 f9          	vunpcklpd %ymm1,%ymm5,%ymm7
  56213d:	c5 d5 15 c9          	vunpckhpd %ymm1,%ymm5,%ymm1
  562141:	c4 e3 4d 18 ef 01    	vinsertf128 $0x1,%xmm7,%ymm6,%ymm5
  562147:	c4 63 65 18 c1 01    	vinsertf128 $0x1,%xmm1,%ymm3,%ymm8
  56214d:	c4 e3 4d 06 f7 31    	vperm2f128 $0x31,%ymm7,%ymm6,%ymm6
  562153:	c4 e3 65 06 c9 31    	vperm2f128 $0x31,%ymm1,%ymm3,%ymm1
  562159:	c5 fd 28 1d bf 37 b0 	vmovapd -0x4fc841(%rip),%ymm3        # 65920 <anon.4b543d1b78d7cf654c1a2ee33e78dad2.2.llvm.6868728367477014390+0x7ff8>
  562160:	ff 
  562161:	c5 bd 59 fb          	vmulpd %ymm3,%ymm8,%ymm7
  562165:	c5 7d 28 15 93 17 b0 	vmovapd -0x4fe86d(%rip),%ymm10        # 63900 <anon.4b543d1b78d7cf654c1a2ee33e78dad2.2.llvm.6868728367477014390+0x5fd8>
  56216c:	ff 
  56216d:	c4 c2 b5 b8 fa       	vfmadd231pd %ymm10,%ymm9,%ymm7
  562172:	c4 41 3d 59 c2       	vmulpd %ymm10,%ymm8,%ymm8
  562177:	c4 62 b5 bc c3       	vfnmadd231pd %ymm3,%ymm9,%ymm8
  56217c:	c5 fd 28 1d fc 32 b0 	vmovapd -0x4fcd04(%rip),%ymm3        # 65480 <anon.4b543d1b78d7cf654c1a2ee33e78dad2.2.llvm.6868728367477014390+0x7b58>
  562183:	ff 
  562184:	c5 4d 59 cb          	vmulpd %ymm3,%ymm6,%ymm9
  562188:	c5 7d 28 15 b0 37 b0 	vmovapd -0x4fc850(%rip),%ymm10        # 65940 <anon.4b543d1b78d7cf654c1a2ee33e78dad2.2.llvm.6868728367477014390+0x8018>
  56218f:	ff 
  562190:	c4 42 ed b8 ca       	vfmadd231pd %ymm10,%ymm2,%ymm9
  562195:	c5 ad 59 f6          	vmulpd %ymm6,%ymm10,%ymm6
  562199:	c4 e2 ed bc f3       	vfnmadd231pd %ymm3,%ymm2,%ymm6
  56219e:	c5 fd 28 15 fa 28 b0 	vmovapd -0x4fd706(%rip),%ymm2        # 64aa0 <anon.4b543d1b78d7cf654c1a2ee33e78dad2.2.llvm.6868728367477014390+0x7178>
  5621a5:	ff 
  5621a6:	c5 f5 59 da          	vmulpd %ymm2,%ymm1,%ymm3
  5621aa:	c5 7d 28 15 4e 2a b0 	vmovapd -0x4fd5b2(%rip),%ymm10        # 64c00 <anon.4b543d1b78d7cf654c1a2ee33e78dad2.2.llvm.6868728367477014390+0x72d8>
  5621b1:	ff 
  5621b2:	c4 c2 fd b8 da       	vfmadd231pd %ymm10,%ymm0,%ymm3
  5621b7:	c5 ad 59 c9          	vmulpd %ymm1,%ymm10,%ymm1
  5621bb:	c4 e2 fd bc ca       	vfnmadd231pd %ymm2,%ymm0,%ymm1
  5621c0:	c5 b5 58 c4          	vaddpd %ymm4,%ymm9,%ymm0
  5621c4:	c4 c1 5d 5c d1       	vsubpd %ymm9,%ymm4,%ymm2
  5621c9:	c5 c5 58 e3          	vaddpd %ymm3,%ymm7,%ymm4
  5621cd:	c5 c5 5c db          	vsubpd %ymm3,%ymm7,%ymm3
  5621d1:	c5 d5 58 fe          	vaddpd %ymm6,%ymm5,%ymm7
  5621d5:	c5 d5 5c ee          	vsubpd %ymm6,%ymm5,%ymm5
  5621d9:	c5 bd 58 f1          	vaddpd %ymm1,%ymm8,%ymm6
  5621dd:	c5 bd 5c c9          	vsubpd %ymm1,%ymm8,%ymm1
  5621e1:	c5 7d 58 c4          	vaddpd %ymm4,%ymm0,%ymm8
  5621e5:	c5 6d 58 c9          	vaddpd %ymm1,%ymm2,%ymm9
  5621e9:	c5 fd 5c c4          	vsubpd %ymm4,%ymm0,%ymm0
  5621ed:	c5 ed 5c c9          	vsubpd %ymm1,%ymm2,%ymm1
  5621f1:	c5 c5 58 d6          	vaddpd %ymm6,%ymm7,%ymm2
  5621f5:	c5 d5 5c e3          	vsubpd %ymm3,%ymm5,%ymm4
  5621f9:	c5 c5 5c f6          	vsubpd %ymm6,%ymm7,%ymm6
  5621fd:	c5 d5 58 db          	vaddpd %ymm3,%ymm5,%ymm3
  562201:	c5 fd 28 2d 57 1f b0 	vmovapd -0x4fe0a9(%rip),%ymm5        # 64160 <anon.4b543d1b78d7cf654c1a2ee33e78dad2.2.llvm.6868728367477014390+0x6838>
  562208:	ff 
  562209:	c5 fd 28 fa          	vmovapd %ymm2,%ymm7
  56220d:	62 d2 d5 28 7f f8    	vpermt2pd %ymm8,%ymm5,%ymm7
  562213:	c5 7d 28 15 a5 27 b0 	vmovapd -0x4fd85b(%rip),%ymm10        # 649c0 <anon.4b543d1b78d7cf654c1a2ee33e78dad2.2.llvm.6868728367477014390+0x7098>
  56221a:	ff 
  56221b:	62 d2 ad 28 7f d0    	vpermt2pd %ymm8,%ymm10,%ymm2
  562221:	c5 fd 11 3e          	vmovupd %ymm7,(%rsi)
  562225:	c5 fd 11 56 20       	vmovupd %ymm2,0x20(%rsi)
  56222a:	c5 fd 28 d4          	vmovapd %ymm4,%ymm2
  56222e:	62 d2 d5 28 7f d1    	vpermt2pd %ymm9,%ymm5,%ymm2
  562234:	62 d2 ad 28 7f e1    	vpermt2pd %ymm9,%ymm10,%ymm4
  56223a:	c5 fd 11 56 40       	vmovupd %ymm2,0x40(%rsi)
  56223f:	c5 fd 11 66 60       	vmovupd %ymm4,0x60(%rsi)
  562244:	c5 fd 28 d6          	vmovapd %ymm6,%ymm2
  562248:	62 f2 d5 28 7f d0    	vpermt2pd %ymm0,%ymm5,%ymm2
  56224e:	62 f2 ad 28 7f f0    	vpermt2pd %ymm0,%ymm10,%ymm6
  562254:	c5 fd 11 96 80 00 00 	vmovupd %ymm2,0x80(%rsi)
  56225b:	00 
  56225c:	c5 fd 11 b6 a0 00 00 	vmovupd %ymm6,0xa0(%rsi)
  562263:	00 
  562264:	62 f2 e5 28 77 e9    	vpermi2pd %ymm1,%ymm3,%ymm5
  56226a:	62 f2 ad 28 7f d9    	vpermt2pd %ymm1,%ymm10,%ymm3
  562270:	c5 fd 11 ae c0 00 00 	vmovupd %ymm5,0xc0(%rsi)
  562277:	00 
  562278:	c5 fd 11 9e e0 00 00 	vmovupd %ymm3,0xe0(%rsi)
  56227f:	00 
  562280:	c5 f8 77             	vzeroupper
  562283:	c3                   	ret
  562284:	cc                   	int3
  562285:	cc                   	int3
  562286:	cc                   	int3
  562287:	cc                   	int3
  562288:	cc                   	int3
  562289:	cc                   	int3
  56228a:	cc                   	int3
  56228b:	cc                   	int3
  56228c:	cc                   	int3
  56228d:	cc                   	int3
  56228e:	cc                   	int3
  56228f:	cc                   	int3

0000000000562290 <<fastfft::engine::small::specialized::Avx512Leaf as fastfft::engine::small::Kernel<V>>::one>:
  562290:	c5 f8 10 07          	vmovups (%rdi),%xmm0
  562294:	c5 f8 10 4f 10       	vmovups 0x10(%rdi),%xmm1
  562299:	c5 f8 10 57 20       	vmovups 0x20(%rdi),%xmm2
  56229e:	c5 f8 10 5f 30       	vmovups 0x30(%rdi),%xmm3
  5622a3:	c5 f8 c6 e1 88       	vshufps $0x88,%xmm1,%xmm0,%xmm4
  5622a8:	c5 f8 c6 c1 dd       	vshufps $0xdd,%xmm1,%xmm0,%xmm0
  5622ad:	c5 e8 c6 cb 88       	vshufps $0x88,%xmm3,%xmm2,%xmm1
  5622b2:	c5 e8 c6 d3 dd       	vshufps $0xdd,%xmm3,%xmm2,%xmm2
  5622b7:	c5 f8 10 5f 40       	vmovups 0x40(%rdi),%xmm3
  5622bc:	c5 f8 10 6f 50       	vmovups 0x50(%rdi),%xmm5
  5622c1:	c5 e0 c6 f5 88       	vshufps $0x88,%xmm5,%xmm3,%xmm6
  5622c6:	c5 e0 c6 dd dd       	vshufps $0xdd,%xmm5,%xmm3,%xmm3
  5622cb:	c5 f8 10 6f 60       	vmovups 0x60(%rdi),%xmm5
  5622d0:	c5 f8 10 7f 70       	vmovups 0x70(%rdi),%xmm7
  5622d5:	c5 50 c6 c7 88       	vshufps $0x88,%xmm7,%xmm5,%xmm8
  5622da:	c5 d0 c6 ef dd       	vshufps $0xdd,%xmm7,%xmm5,%xmm5
  5622df:	c5 d8 58 fe          	vaddps %xmm6,%xmm4,%xmm7
  5622e3:	c5 d8 5c e6          	vsubps %xmm6,%xmm4,%xmm4
  5622e7:	c5 b8 58 f1          	vaddps %xmm1,%xmm8,%xmm6
  5622eb:	c4 c1 70 5c c8       	vsubps %xmm8,%xmm1,%xmm1
  5622f0:	c5 78 58 c3          	vaddps %xmm3,%xmm0,%xmm8
  5622f4:	c5 f8 5c c3          	vsubps %xmm3,%xmm0,%xmm0
  5622f8:	c5 e8 58 dd          	vaddps %xmm5,%xmm2,%xmm3
  5622fc:	c5 e8 5c d5          	vsubps %xmm5,%xmm2,%xmm2
  562300:	c5 c0 58 ee          	vaddps %xmm6,%xmm7,%xmm5
  562304:	c5 58 58 ca          	vaddps %xmm2,%xmm4,%xmm9
  562308:	c5 c0 5c f6          	vsubps %xmm6,%xmm7,%xmm6
  56230c:	c5 d8 5c d2          	vsubps %xmm2,%xmm4,%xmm2
  562310:	c5 b8 58 e3          	vaddps %xmm3,%xmm8,%xmm4
  562314:	c5 f8 5c f9          	vsubps %xmm1,%xmm0,%xmm7
  562318:	c5 b8 5c db          	vsubps %xmm3,%xmm8,%xmm3
  56231c:	c5 f8 58 c1          	vaddps %xmm1,%xmm0,%xmm0
  562320:	c4 c1 50 14 c9       	vunpcklps %xmm9,%xmm5,%xmm1
  562325:	c4 c1 50 15 e9       	vunpckhps %xmm9,%xmm5,%xmm5
  56232a:	c5 48 14 c2          	vunpcklps %xmm2,%xmm6,%xmm8
  56232e:	c5 c8 15 d2          	vunpckhps %xmm2,%xmm6,%xmm2
  562332:	c4 c1 70 16 f0       	vmovlhps %xmm8,%xmm1,%xmm6
  562337:	c4 c1 71 15 c8       	vunpckhpd %xmm8,%xmm1,%xmm1
  56233c:	c5 50 16 c2          	vmovlhps %xmm2,%xmm5,%xmm8
  562340:	c5 d1 15 d2          	vunpckhpd %xmm2,%xmm5,%xmm2
  562344:	c5 d8 14 ef          	vunpcklps %xmm7,%xmm4,%xmm5
  562348:	c5 d8 15 e7          	vunpckhps %xmm7,%xmm4,%xmm4
  56234c:	c5 e0 14 f8          	vunpcklps %xmm0,%xmm3,%xmm7
  562350:	c5 e0 15 c0          	vunpckhps %xmm0,%xmm3,%xmm0
  562354:	c5 d0 16 df          	vmovlhps %xmm7,%xmm5,%xmm3
  562358:	c5 d1 15 ef          	vunpckhpd %xmm7,%xmm5,%xmm5
  56235c:	c5 d8 16 f8          	vmovlhps %xmm0,%xmm4,%xmm7
  562360:	c5 d9 15 c0          	vunpckhpd %xmm0,%xmm4,%xmm0
  562364:	c5 f8 28 25 a4 2d af 	vmovaps -0x50d25c(%rip),%xmm4        # 55110 <anon.68b6cc7d90a76918f651089cf5b181a9.28.llvm.17722474192790696293+0x2f0>
  56236b:	ff 
  56236c:	c5 50 59 cc          	vmulps %xmm4,%xmm5,%xmm9
  562370:	c5 78 28 15 e8 3d af 	vmovaps -0x50c218(%rip),%xmm10        # 56160 <anon.68b6cc7d90a76918f651089cf5b181a9.28.llvm.17722474192790696293+0x1340>
  562377:	ff 
  562378:	c4 42 71 b8 ca       	vfmadd231ps %xmm10,%xmm1,%xmm9
  56237d:	c5 a8 59 ed          	vmulps %xmm5,%xmm10,%xmm5
  562381:	c4 e2 71 bc ec       	vfnmadd231ps %xmm4,%xmm1,%xmm5
  562386:	c5 f8 28 0d 12 3d af 	vmovaps -0x50c2ee(%rip),%xmm1        # 560a0 <anon.68b6cc7d90a76918f651089cf5b181a9.28.llvm.17722474192790696293+0x1280>
  56238d:	ff 
  56238e:	c5 c0 59 e1          	vmulps %xmm1,%xmm7,%xmm4
  562392:	c5 78 28 15 06 45 af 	vmovaps -0x50bafa(%rip),%xmm10        # 568a0 <anon.68b6cc7d90a76918f651089cf5b181a9.28.llvm.17722474192790696293+0x1a80>
  562399:	ff 
  56239a:	c4 c2 39 b8 e2       	vfmadd231ps %xmm10,%xmm8,%xmm4
  56239f:	c5 a8 59 ff          	vmulps %xmm7,%xmm10,%xmm7
  5623a3:	c4 e2 39 bc f9       	vfnmadd231ps %xmm1,%xmm8,%xmm7
  5623a8:	c5 f8 28 0d 70 33 af 	vmovaps -0x50cc90(%rip),%xmm1        # 55720 <anon.68b6cc7d90a76918f651089cf5b181a9.28.llvm.17722474192790696293+0x900>
  5623af:	ff 
  5623b0:	c5 78 59 c1          	vmulps %xmm1,%xmm0,%xmm8
  5623b4:	c5 78 28 15 14 2b af 	vmovaps -0x50d4ec(%rip),%xmm10        # 54ed0 <anon.68b6cc7d90a76918f651089cf5b181a9.28.llvm.17722474192790696293+0xb0>
  5623bb:	ff 
  5623bc:	c4 42 69 b8 c2       	vfmadd231ps %xmm10,%xmm2,%xmm8
  5623c1:	c5 a8 59 c0          	vmulps %xmm0,%xmm10,%xmm0
  5623c5:	c4 e2 69 bc c1       	vfnmadd231ps %xmm1,%xmm2,%xmm0
  5623ca:	c5 c8 58 cc          	vaddps %xmm4,%xmm6,%xmm1
  5623ce:	c5 c8 5c d4          	vsubps %xmm4,%xmm6,%xmm2
  5623d2:	c4 c1 30 58 e0       	vaddps %xmm8,%xmm9,%xmm4
  5623d7:	c4 c1 30 5c f0       	vsubps %xmm8,%xmm9,%xmm6
  5623dc:	c5 60 58 c7          	vaddps %xmm7,%xmm3,%xmm8
  5623e0:	c5 e0 5c df          	vsubps %xmm7,%xmm3,%xmm3
  5623e4:	c5 d0 58 f8          	vaddps %xmm0,%xmm5,%xmm7
  5623e8:	c5 d0 5c c0          	vsubps %xmm0,%xmm5,%xmm0
  5623ec:	c5 f0 58 ec          	vaddps %xmm4,%xmm1,%xmm5
  5623f0:	c5 68 58 c8          	vaddps %xmm0,%xmm2,%xmm9
  5623f4:	c5 f0 5c cc          	vsubps %xmm4,%xmm1,%xmm1
  5623f8:	c5 e8 5c c0          	vsubps %xmm0,%xmm2,%xmm0
  5623fc:	c5 b8 58 d7          	vaddps %xmm7,%xmm8,%xmm2
  562400:	c5 e0 5c e6          	vsubps %xmm6,%xmm3,%xmm4
  562404:	c5 b8 5c ff          	vsubps %xmm7,%xmm8,%xmm7
  562408:	c5 e0 58 de          	vaddps %xmm6,%xmm3,%xmm3
  56240c:	c5 d0 14 f2          	vunpcklps %xmm2,%xmm5,%xmm6
  562410:	c5 d0 15 d2          	vunpckhps %xmm2,%xmm5,%xmm2
  562414:	c5 f8 11 36          	vmovups %xmm6,(%rsi)
  562418:	c5 f8 11 56 10       	vmovups %xmm2,0x10(%rsi)
  56241d:	c5 b0 14 d4          	vunpcklps %xmm4,%xmm9,%xmm2
  562421:	c5 b0 15 e4          	vunpckhps %xmm4,%xmm9,%xmm4
  562425:	c5 f8 11 56 20       	vmovups %xmm2,0x20(%rsi)
  56242a:	c5 f8 11 66 30       	vmovups %xmm4,0x30(%rsi)
  56242f:	c5 f0 14 d7          	vunpcklps %xmm7,%xmm1,%xmm2
  562433:	c5 f0 15 cf          	vunpckhps %xmm7,%xmm1,%xmm1
  562437:	c5 f8 11 56 40       	vmovups %xmm2,0x40(%rsi)
  56243c:	c5 f8 11 4e 50       	vmovups %xmm1,0x50(%rsi)
  562441:	c5 f8 14 cb          	vunpcklps %xmm3,%xmm0,%xmm1
  562445:	c5 f8 15 c3          	vunpckhps %xmm3,%xmm0,%xmm0
  562449:	c5 f8 11 4e 60       	vmovups %xmm1,0x60(%rsi)
  56244e:	c5 f8 11 46 70       	vmovups %xmm0,0x70(%rsi)
  562453:	c3                   	ret
  562454:	cc                   	int3
  562455:	cc                   	int3
  562456:	cc                   	int3
  562457:	cc                   	int3
  562458:	cc                   	int3
  562459:	cc                   	int3
  56245a:	cc                   	int3
  56245b:	cc                   	int3
  56245c:	cc                   	int3
  56245d:	cc                   	int3
  56245e:	cc                   	int3
  56245f:	cc                   	int3

0000000000562460 <<fastfft::engine::small::specialized::Avx512Leaf as fastfft::engine::small::Kernel<V>>::one>:
  562460:	c5 f8 10 07          	vmovups (%rdi),%xmm0
  562464:	c5 f8 10 4f 10       	vmovups 0x10(%rdi),%xmm1
  562469:	c5 f8 10 57 20       	vmovups 0x20(%rdi),%xmm2
  56246e:	c5 f8 10 5f 30       	vmovups 0x30(%rdi),%xmm3
  562473:	c5 f8 c6 e1 88       	vshufps $0x88,%xmm1,%xmm0,%xmm4
  562478:	c5 f8 c6 c1 dd       	vshufps $0xdd,%xmm1,%xmm0,%xmm0
  56247d:	c5 e8 c6 cb 88       	vshufps $0x88,%xmm3,%xmm2,%xmm1
  562482:	c5 e8 c6 d3 dd       	vshufps $0xdd,%xmm3,%xmm2,%xmm2
  562487:	c5 f8 10 5f 40       	vmovups 0x40(%rdi),%xmm3
  56248c:	c5 f8 10 6f 50       	vmovups 0x50(%rdi),%xmm5
  562491:	c5 e0 c6 f5 88       	vshufps $0x88,%xmm5,%xmm3,%xmm6
  562496:	c5 e0 c6 dd dd       	vshufps $0xdd,%xmm5,%xmm3,%xmm3
  56249b:	c5 f8 10 6f 60       	vmovups 0x60(%rdi),%xmm5
  5624a0:	c5 f8 10 7f 70       	vmovups 0x70(%rdi),%xmm7
  5624a5:	c5 50 c6 c7 88       	vshufps $0x88,%xmm7,%xmm5,%xmm8
  5624aa:	c5 d0 c6 ef dd       	vshufps $0xdd,%xmm7,%xmm5,%xmm5
  5624af:	c5 f8 58 fb          	vaddps %xmm3,%xmm0,%xmm7
  5624b3:	c5 f8 5c c3          	vsubps %xmm3,%xmm0,%xmm0
  5624b7:	c5 e8 58 dd          	vaddps %xmm5,%xmm2,%xmm3
  5624bb:	c5 e8 5c d5          	vsubps %xmm5,%xmm2,%xmm2
  5624bf:	c5 d8 58 ee          	vaddps %xmm6,%xmm4,%xmm5
  5624c3:	c5 d8 5c e6          	vsubps %xmm6,%xmm4,%xmm4
  5624c7:	c5 b8 58 f1          	vaddps %xmm1,%xmm8,%xmm6
  5624cb:	c4 c1 70 5c c8       	vsubps %xmm8,%xmm1,%xmm1
  5624d0:	c5 40 58 c3          	vaddps %xmm3,%xmm7,%xmm8
  5624d4:	c5 78 58 c9          	vaddps %xmm1,%xmm0,%xmm9
  5624d8:	c5 c0 5c db          	vsubps %xmm3,%xmm7,%xmm3
  5624dc:	c5 f8 5c c1          	vsubps %xmm1,%xmm0,%xmm0
  5624e0:	c5 d0 58 ce          	vaddps %xmm6,%xmm5,%xmm1
  5624e4:	c5 d8 5c fa          	vsubps %xmm2,%xmm4,%xmm7
  5624e8:	c5 d0 5c ee          	vsubps %xmm6,%xmm5,%xmm5
  5624ec:	c5 d8 58 d2          	vaddps %xmm2,%xmm4,%xmm2
  5624f0:	c4 c1 38 14 e1       	vunpcklps %xmm9,%xmm8,%xmm4
  5624f5:	c4 c1 38 15 f1       	vunpckhps %xmm9,%xmm8,%xmm6
  5624fa:	c5 60 14 c0          	vunpcklps %xmm0,%xmm3,%xmm8
  5624fe:	c5 e0 15 c0          	vunpckhps %xmm0,%xmm3,%xmm0
  562502:	c4 c1 58 16 d8       	vmovlhps %xmm8,%xmm4,%xmm3
  562507:	c4 c1 59 15 e0       	vunpckhpd %xmm8,%xmm4,%xmm4
  56250c:	c5 48 16 c0          	vmovlhps %xmm0,%xmm6,%xmm8
  562510:	c5 c9 15 c0          	vunpckhpd %xmm0,%xmm6,%xmm0
  562514:	c5 f0 14 f7          	vunpcklps %xmm7,%xmm1,%xmm6
  562518:	c5 f0 15 cf          	vunpckhps %xmm7,%xmm1,%xmm1
  56251c:	c5 d0 14 fa          	vunpcklps %xmm2,%xmm5,%xmm7
  562520:	c5 d0 15 d2          	vunpckhps %xmm2,%xmm5,%xmm2
  562524:	c5 c8 16 ef          	vmovlhps %xmm7,%xmm6,%xmm5
  562528:	c5 c9 15 f7          	vunpckhpd %xmm7,%xmm6,%xmm6
  56252c:	c5 f0 16 fa          	vmovlhps %xmm2,%xmm1,%xmm7
  562530:	c5 f1 15 ca          	vunpckhpd %xmm2,%xmm1,%xmm1
  562534:	c5 f8 28 15 d4 2b af 	vmovaps -0x50d42c(%rip),%xmm2        # 55110 <anon.68b6cc7d90a76918f651089cf5b181a9.28.llvm.17722474192790696293+0x2f0>
  56253b:	ff 
  56253c:	c5 48 59 ca          	vmulps %xmm2,%xmm6,%xmm9
  562540:	c5 78 28 15 18 3c af 	vmovaps -0x50c3e8(%rip),%xmm10        # 56160 <anon.68b6cc7d90a76918f651089cf5b181a9.28.llvm.17722474192790696293+0x1340>
  562547:	ff 
  562548:	c4 42 59 b8 ca       	vfmadd231ps %xmm10,%xmm4,%xmm9
  56254d:	c5 a8 59 f6          	vmulps %xmm6,%xmm10,%xmm6
  562551:	c4 e2 59 bc f2       	vfnmadd231ps %xmm2,%xmm4,%xmm6
  562556:	c5 f8 28 15 42 3b af 	vmovaps -0x50c4be(%rip),%xmm2        # 560a0 <anon.68b6cc7d90a76918f651089cf5b181a9.28.llvm.17722474192790696293+0x1280>
  56255d:	ff 
  56255e:	c5 c0 59 e2          	vmulps %xmm2,%xmm7,%xmm4
  562562:	c5 78 28 15 36 43 af 	vmovaps -0x50bcca(%rip),%xmm10        # 568a0 <anon.68b6cc7d90a76918f651089cf5b181a9.28.llvm.17722474192790696293+0x1a80>
  562569:	ff 
  56256a:	c4 c2 39 b8 e2       	vfmadd231ps %xmm10,%xmm8,%xmm4
  56256f:	c5 a8 59 ff          	vmulps %xmm7,%xmm10,%xmm7
  562573:	c4 e2 39 bc fa       	vfnmadd231ps %xmm2,%xmm8,%xmm7
  562578:	c5 f8 28 15 a0 31 af 	vmovaps -0x50ce60(%rip),%xmm2        # 55720 <anon.68b6cc7d90a76918f651089cf5b181a9.28.llvm.17722474192790696293+0x900>
  56257f:	ff 
  562580:	c5 70 59 c2          	vmulps %xmm2,%xmm1,%xmm8
  562584:	c5 78 28 15 44 29 af 	vmovaps -0x50d6bc(%rip),%xmm10        # 54ed0 <anon.68b6cc7d90a76918f651089cf5b181a9.28.llvm.17722474192790696293+0xb0>
  56258b:	ff 
  56258c:	c4 42 79 b8 c2       	vfmadd231ps %xmm10,%xmm0,%xmm8
  562591:	c5 a8 59 c9          	vmulps %xmm1,%xmm10,%xmm1
  562595:	c4 e2 79 bc ca       	vfnmadd231ps %xmm2,%xmm0,%xmm1
  56259a:	c5 e0 58 c4          	vaddps %xmm4,%xmm3,%xmm0
  56259e:	c5 e0 5c d4          	vsubps %xmm4,%xmm3,%xmm2
  5625a2:	c4 c1 30 58 d8       	vaddps %xmm8,%xmm9,%xmm3
  5625a7:	c4 c1 30 5c e0       	vsubps %xmm8,%xmm9,%xmm4
  5625ac:	c5 50 58 c7          	vaddps %xmm7,%xmm5,%xmm8
  5625b0:	c5 d0 5c ef          	vsubps %xmm7,%xmm5,%xmm5
  5625b4:	c5 c8 58 f9          	vaddps %xmm1,%xmm6,%xmm7
  5625b8:	c5 c8 5c c9          	vsubps %xmm1,%xmm6,%xmm1
  5625bc:	c5 f8 58 f3          	vaddps %xmm3,%xmm0,%xmm6
  5625c0:	c5 68 58 c9          	vaddps %xmm1,%xmm2,%xmm9
  5625c4:	c5 f8 5c c3          	vsubps %xmm3,%xmm0,%xmm0
  5625c8:	c5 e8 5c c9          	vsubps %xmm1,%xmm2,%xmm1
  5625cc:	c5 b8 58 d7          	vaddps %xmm7,%xmm8,%xmm2
  5625d0:	c5 d0 5c dc          	vsubps %xmm4,%xmm5,%xmm3
  5625d4:	c5 b8 5c ff          	vsubps %xmm7,%xmm8,%xmm7
  5625d8:	c5 d0 58 e4          	vaddps %xmm4,%xmm5,%xmm4
  5625dc:	c5 e8 14 ee          	vunpcklps %xmm6,%xmm2,%xmm5
  5625e0:	c5 e8 15 d6          	vunpckhps %xmm6,%xmm2,%xmm2
  5625e4:	c5 f8 11 2e          	vmovups %xmm5,(%rsi)
  5625e8:	c5 f8 11 56 10       	vmovups %xmm2,0x10(%rsi)
  5625ed:	c4 c1 60 14 d1       	vunpcklps %xmm9,%xmm3,%xmm2
  5625f2:	c4 c1 60 15 d9       	vunpckhps %xmm9,%xmm3,%xmm3
  5625f7:	c5 f8 11 56 20       	vmovups %xmm2,0x20(%rsi)
  5625fc:	c5 f8 11 5e 30       	vmovups %xmm3,0x30(%rsi)
  562601:	c5 c0 14 d0          	vunpcklps %xmm0,%xmm7,%xmm2
  562605:	c5 c0 15 c0          	vunpckhps %xmm0,%xmm7,%xmm0
  562609:	c5 f8 11 56 40       	vmovups %xmm2,0x40(%rsi)
  56260e:	c5 f8 11 46 50       	vmovups %xmm0,0x50(%rsi)
  562613:	c5 d8 14 c1          	vunpcklps %xmm1,%xmm4,%xmm0
  562617:	c5 d8 15 c9          	vunpckhps %xmm1,%xmm4,%xmm1
  56261b:	c5 f8 11 46 60       	vmovups %xmm0,0x60(%rsi)
  562620:	c5 f8 11 4e 70       	vmovups %xmm1,0x70(%rsi)
  562625:	c3                   	ret
  562626:	cc                   	int3
  562627:	cc                   	int3
  562628:	cc                   	int3
  562629:	cc                   	int3
  56262a:	cc                   	int3
  56262b:	cc                   	int3
  56262c:	cc                   	int3
  56262d:	cc                   	int3
  56262e:	cc                   	int3
  56262f:	cc                   	int3

0000000000562630 <<fastfft::engine::small::specialized::Avx512Leaf as fastfft::engine::small::Kernel<V>>::one>:
  562630:	c5 fd 10 07          	vmovupd (%rdi),%ymm0
  562634:	c5 fd 10 4f 20       	vmovupd 0x20(%rdi),%ymm1
  562639:	c5 fd 10 57 40       	vmovupd 0x40(%rdi),%ymm2
  56263e:	c5 fd 10 5f 60       	vmovupd 0x60(%rdi),%ymm3
  562643:	c4 e3 7d 06 e1 31    	vperm2f128 $0x31,%ymm1,%ymm0,%ymm4
  562649:	c4 e3 7d 06 c1 20    	vperm2f128 $0x20,%ymm1,%ymm0,%ymm0
  56264f:	c5 fd 14 cc          	vunpcklpd %ymm4,%ymm0,%ymm1
  562653:	c5 fd 15 c4          	vunpckhpd %ymm4,%ymm0,%ymm0
  562657:	c4 e3 6d 06 e3 31    	vperm2f128 $0x31,%ymm3,%ymm2,%ymm4
  56265d:	c4 e3 6d 06 d3 20    	vperm2f128 $0x20,%ymm3,%ymm2,%ymm2
  562663:	c5 ed 14 dc          	vunpcklpd %ymm4,%ymm2,%ymm3
  562667:	c5 ed 15 d4          	vunpckhpd %ymm4,%ymm2,%ymm2
  56266b:	c5 fd 10 a7 80 00 00 	vmovupd 0x80(%rdi),%ymm4
  562672:	00 
  562673:	c5 fd 10 af a0 00 00 	vmovupd 0xa0(%rdi),%ymm5
  56267a:	00 
  56267b:	c4 e3 5d 06 f5 31    	vperm2f128 $0x31,%ymm5,%ymm4,%ymm6
  562681:	c4 e3 5d 06 e5 20    	vperm2f128 $0x20,%ymm5,%ymm4,%ymm4
  562687:	c5 dd 14 ee          	vunpcklpd %ymm6,%ymm4,%ymm5
  56268b:	c5 dd 15 e6          	vunpckhpd %ymm6,%ymm4,%ymm4
  56268f:	c5 fd 10 b7 c0 00 00 	vmovupd 0xc0(%rdi),%ymm6
  562696:	00 
  562697:	c5 fd 10 bf e0 00 00 	vmovupd 0xe0(%rdi),%ymm7
  56269e:	00 
  56269f:	c4 63 4d 06 c7 31    	vperm2f128 $0x31,%ymm7,%ymm6,%ymm8
  5626a5:	c4 e3 4d 06 f7 20    	vperm2f128 $0x20,%ymm7,%ymm6,%ymm6
  5626ab:	c4 c1 4d 14 f8       	vunpcklpd %ymm8,%ymm6,%ymm7
  5626b0:	c4 c1 4d 15 f0       	vunpckhpd %ymm8,%ymm6,%ymm6
  5626b5:	c5 75 58 c5          	vaddpd %ymm5,%ymm1,%ymm8
  5626b9:	c5 f5 5c cd          	vsubpd %ymm5,%ymm1,%ymm1
  5626bd:	c5 e5 58 ef          	vaddpd %ymm7,%ymm3,%ymm5
  5626c1:	c5 e5 5c df          	vsubpd %ymm7,%ymm3,%ymm3
  5626c5:	c5 fd 58 fc          	vaddpd %ymm4,%ymm0,%ymm7
  5626c9:	c5 fd 5c c4          	vsubpd %ymm4,%ymm0,%ymm0
  5626cd:	c5 ed 58 e6          	vaddpd %ymm6,%ymm2,%ymm4
  5626d1:	c5 ed 5c d6          	vsubpd %ymm6,%ymm2,%ymm2
  5626d5:	c5 bd 58 f5          	vaddpd %ymm5,%ymm8,%ymm6
  5626d9:	c5 75 58 ca          	vaddpd %ymm2,%ymm1,%ymm9
  5626dd:	c5 bd 5c ed          	vsubpd %ymm5,%ymm8,%ymm5
  5626e1:	c5 f5 5c ca          	vsubpd %ymm2,%ymm1,%ymm1
  5626e5:	c5 c5 58 d4          	vaddpd %ymm4,%ymm7,%ymm2
  5626e9:	c5 7d 5c c3          	vsubpd %ymm3,%ymm0,%ymm8
  5626ed:	c5 c5 5c e4          	vsubpd %ymm4,%ymm7,%ymm4
  5626f1:	c5 fd 58 c3          	vaddpd %ymm3,%ymm0,%ymm0
  5626f5:	c4 c1 4d 14 d9       	vunpcklpd %ymm9,%ymm6,%ymm3
  5626fa:	c4 c1 4d 15 f1       	vunpckhpd %ymm9,%ymm6,%ymm6
  5626ff:	c5 d5 14 f9          	vunpcklpd %ymm1,%ymm5,%ymm7
  562703:	c5 d5 15 c9          	vunpckhpd %ymm1,%ymm5,%ymm1
  562707:	c4 e3 65 18 ef 01    	vinsertf128 $0x1,%xmm7,%ymm3,%ymm5
  56270d:	c4 63 4d 18 c9 01    	vinsertf128 $0x1,%xmm1,%ymm6,%ymm9
  562713:	c4 e3 65 06 df 31    	vperm2f128 $0x31,%ymm7,%ymm3,%ymm3
  562719:	c4 e3 4d 06 c9 31    	vperm2f128 $0x31,%ymm1,%ymm6,%ymm1
  56271f:	c4 c1 6d 14 f0       	vunpcklpd %ymm8,%ymm2,%ymm6
  562724:	c4 c1 6d 15 d0       	vunpckhpd %ymm8,%ymm2,%ymm2
  562729:	c5 dd 14 f8          	vunpcklpd %ymm0,%ymm4,%ymm7
  56272d:	c5 dd 15 c0          	vunpckhpd %ymm0,%ymm4,%ymm0
  562731:	c4 e3 4d 18 e7 01    	vinsertf128 $0x1,%xmm7,%ymm6,%ymm4
  562737:	c4 63 6d 18 c0 01    	vinsertf128 $0x1,%xmm0,%ymm2,%ymm8
  56273d:	c4 e3 4d 06 f7 31    	vperm2f128 $0x31,%ymm7,%ymm6,%ymm6
  562743:	c4 e3 6d 06 c0 31    	vperm2f128 $0x31,%ymm0,%ymm2,%ymm0
  562749:	c5 fd 28 15 cf 31 b0 	vmovapd -0x4fce31(%rip),%ymm2        # 65920 <anon.4b543d1b78d7cf654c1a2ee33e78dad2.2.llvm.6868728367477014390+0x7ff8>
  562750:	ff 
  562751:	c5 bd 59 fa          	vmulpd %ymm2,%ymm8,%ymm7
  562755:	c5 7d 28 15 a3 11 b0 	vmovapd -0x4fee5d(%rip),%ymm10        # 63900 <anon.4b543d1b78d7cf654c1a2ee33e78dad2.2.llvm.6868728367477014390+0x5fd8>
  56275c:	ff 
  56275d:	c4 c2 b5 b8 fa       	vfmadd231pd %ymm10,%ymm9,%ymm7
  562762:	c4 41 3d 59 c2       	vmulpd %ymm10,%ymm8,%ymm8
  562767:	c4 62 b5 bc c2       	vfnmadd231pd %ymm2,%ymm9,%ymm8
  56276c:	c5 fd 28 15 0c 2d b0 	vmovapd -0x4fd2f4(%rip),%ymm2        # 65480 <anon.4b543d1b78d7cf654c1a2ee33e78dad2.2.llvm.6868728367477014390+0x7b58>
  562773:	ff 
  562774:	c5 4d 59 ca          	vmulpd %ymm2,%ymm6,%ymm9
  562778:	c5 7d 28 15 c0 31 b0 	vmovapd -0x4fce40(%rip),%ymm10        # 65940 <anon.4b543d1b78d7cf654c1a2ee33e78dad2.2.llvm.6868728367477014390+0x8018>
  56277f:	ff 
  562780:	c4 42 e5 b8 ca       	vfmadd231pd %ymm10,%ymm3,%ymm9
  562785:	c5 ad 59 f6          	vmulpd %ymm6,%ymm10,%ymm6
  562789:	c4 e2 e5 bc f2       	vfnmadd231pd %ymm2,%ymm3,%ymm6
  56278e:	c5 fd 28 15 0a 23 b0 	vmovapd -0x4fdcf6(%rip),%ymm2        # 64aa0 <anon.4b543d1b78d7cf654c1a2ee33e78dad2.2.llvm.6868728367477014390+0x7178>
  562795:	ff 
  562796:	c5 fd 59 da          	vmulpd %ymm2,%ymm0,%ymm3
  56279a:	c5 7d 28 15 5e 24 b0 	vmovapd -0x4fdba2(%rip),%ymm10        # 64c00 <anon.4b543d1b78d7cf654c1a2ee33e78dad2.2.llvm.6868728367477014390+0x72d8>
  5627a1:	ff 
  5627a2:	c4 c2 f5 b8 da       	vfmadd231pd %ymm10,%ymm1,%ymm3
  5627a7:	c5 ad 59 c0          	vmulpd %ymm0,%ymm10,%ymm0
  5627ab:	c4 e2 f5 bc c2       	vfnmadd231pd %ymm2,%ymm1,%ymm0
  5627b0:	c5 b5 58 cd          	vaddpd %ymm5,%ymm9,%ymm1
  5627b4:	c4 c1 55 5c d1       	vsubpd %ymm9,%ymm5,%ymm2
  5627b9:	c5 c5 58 eb          	vaddpd %ymm3,%ymm7,%ymm5
  5627bd:	c5 c5 5c db          	vsubpd %ymm3,%ymm7,%ymm3
  5627c1:	c5 dd 58 fe          	vaddpd %ymm6,%ymm4,%ymm7
  5627c5:	c5 dd 5c e6          	vsubpd %ymm6,%ymm4,%ymm4
  5627c9:	c5 bd 58 f0          	vaddpd %ymm0,%ymm8,%ymm6
  5627cd:	c5 bd 5c c0          	vsubpd %ymm0,%ymm8,%ymm0
  5627d1:	c5 75 58 c5          	vaddpd %ymm5,%ymm1,%ymm8
  5627d5:	c5 6d 58 c8          	vaddpd %ymm0,%ymm2,%ymm9
  5627d9:	c5 f5 5c cd          	vsubpd %ymm5,%ymm1,%ymm1
  5627dd:	c5 ed 5c c0          	vsubpd %ymm0,%ymm2,%ymm0
  5627e1:	c5 c5 58 d6          	vaddpd %ymm6,%ymm7,%ymm2
  5627e5:	c5 dd 5c eb          	vsubpd %ymm3,%ymm4,%ymm5
  5627e9:	c5 c5 5c f6          	vsubpd %ymm6,%ymm7,%ymm6
  5627ed:	c5 dd 58 db          	vaddpd %ymm3,%ymm4,%ymm3
  5627f1:	c5 fd 28 25 67 19 b0 	vmovapd -0x4fe699(%rip),%ymm4        # 64160 <anon.4b543d1b78d7cf654c1a2ee33e78dad2.2.llvm.6868728367477014390+0x6838>
  5627f8:	ff 
  5627f9:	c5 7d 29 c7          	vmovapd %ymm8,%ymm7
  5627fd:	62                   	.byte 0x62
  5627fe:	f2                   	repnz
  5627ff:	dd                   	.byte 0xdd
