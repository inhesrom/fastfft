
target/small-latency/final-source/executable-1:     file format elf64-x86-64


Disassembly of section .text:

0000000000656c90 <<fastfft::engine::small::specialized::Avx2Leaf as fastfft::engine::small::Kernel<fastfft::isa::x86::small::F32x4f>>::one>:
  656c90:	c5 fc 10 07          	vmovups (%rdi),%ymm0
  656c94:	c5 fc 10 4f 20       	vmovups 0x20(%rdi),%ymm1
  656c99:	c5 fc 10 57 40       	vmovups 0x40(%rdi),%ymm2
  656c9e:	c5 fc 10 5f 60       	vmovups 0x60(%rdi),%ymm3
  656ca3:	c5 fc 10 a7 80 00 00 	vmovups 0x80(%rdi),%ymm4
  656caa:	00 
  656cab:	c5 fc 10 af a0 00 00 	vmovups 0xa0(%rdi),%ymm5
  656cb2:	00 
  656cb3:	c5 fc 10 b7 c0 00 00 	vmovups 0xc0(%rdi),%ymm6
  656cba:	00 
  656cbb:	c5 fc 10 bf e0 00 00 	vmovups 0xe0(%rdi),%ymm7
  656cc2:	00 
  656cc3:	c5 7c c6 c1 88       	vshufps $0x88,%ymm1,%ymm0,%ymm8
  656cc8:	c4 43 fd 01 c0 d8    	vpermpd $0xd8,%ymm8,%ymm8
  656cce:	c5 5c c6 cd 88       	vshufps $0x88,%ymm5,%ymm4,%ymm9
  656cd3:	c4 43 fd 01 c9 d8    	vpermpd $0xd8,%ymm9,%ymm9
  656cd9:	c4 41 3c 58 d1       	vaddps %ymm9,%ymm8,%ymm10
  656cde:	c4 41 3c 5c c1       	vsubps %ymm9,%ymm8,%ymm8
  656ce3:	c5 6c c6 cb 88       	vshufps $0x88,%ymm3,%ymm2,%ymm9
  656ce8:	c4 43 fd 01 c9 d8    	vpermpd $0xd8,%ymm9,%ymm9
  656cee:	c5 4c c6 df 88       	vshufps $0x88,%ymm7,%ymm6,%ymm11
  656cf3:	c4 43 fd 01 db d8    	vpermpd $0xd8,%ymm11,%ymm11
  656cf9:	c4 41 34 58 e3       	vaddps %ymm11,%ymm9,%ymm12
  656cfe:	c4 41 34 5c cb       	vsubps %ymm11,%ymm9,%ymm9
  656d03:	c5 fc c6 c1 dd       	vshufps $0xdd,%ymm1,%ymm0,%ymm0
  656d08:	c4 e3 fd 01 c0 d8    	vpermpd $0xd8,%ymm0,%ymm0
  656d0e:	c5 dc c6 cd dd       	vshufps $0xdd,%ymm5,%ymm4,%ymm1
  656d13:	c4 e3 fd 01 c9 d8    	vpermpd $0xd8,%ymm1,%ymm1
  656d19:	c5 fc 58 e1          	vaddps %ymm1,%ymm0,%ymm4
  656d1d:	c5 fc 5c c1          	vsubps %ymm1,%ymm0,%ymm0
  656d21:	c5 ec c6 cb dd       	vshufps $0xdd,%ymm3,%ymm2,%ymm1
  656d26:	c4 e3 fd 01 c9 d8    	vpermpd $0xd8,%ymm1,%ymm1
  656d2c:	c5 cc c6 d7 dd       	vshufps $0xdd,%ymm7,%ymm6,%ymm2
  656d31:	c4 e3 fd 01 d2 d8    	vpermpd $0xd8,%ymm2,%ymm2
  656d37:	c5 f4 58 da          	vaddps %ymm2,%ymm1,%ymm3
  656d3b:	c5 f4 5c ca          	vsubps %ymm2,%ymm1,%ymm1
  656d3f:	c4 c1 2c 58 d4       	vaddps %ymm12,%ymm10,%ymm2
  656d44:	c5 bc 58 e9          	vaddps %ymm1,%ymm8,%ymm5
  656d48:	c4 c1 2c 5c f4       	vsubps %ymm12,%ymm10,%ymm6
  656d4d:	c5 bc 5c c9          	vsubps %ymm1,%ymm8,%ymm1
  656d51:	c5 dc 58 fb          	vaddps %ymm3,%ymm4,%ymm7
  656d55:	c4 41 7c 5c c1       	vsubps %ymm9,%ymm0,%ymm8
  656d5a:	c5 dc 5c db          	vsubps %ymm3,%ymm4,%ymm3
  656d5e:	c5 34 58 d8          	vaddps %ymm0,%ymm9,%ymm11
  656d62:	c5 ec 14 e5          	vunpcklps %ymm5,%ymm2,%ymm4
  656d66:	c5 ec 15 d5          	vunpckhps %ymm5,%ymm2,%ymm2
  656d6a:	c5 cc 14 e9          	vunpcklps %ymm1,%ymm6,%ymm5
  656d6e:	c5 cc 15 c9          	vunpckhps %ymm1,%ymm6,%ymm1
  656d72:	c5 dd 14 c5          	vunpcklpd %ymm5,%ymm4,%ymm0
  656d76:	c5 fc 11 44 24 d8    	vmovups %ymm0,-0x28(%rsp)
  656d7c:	c5 ed 14 f1          	vunpcklpd %ymm1,%ymm2,%ymm6
  656d80:	c5 5d 15 cd          	vunpckhpd %ymm5,%ymm4,%ymm9
  656d84:	c5 ed 15 e1          	vunpckhpd %ymm1,%ymm2,%ymm4
  656d88:	c4 c3 7d 19 c2 01    	vextractf128 $0x1,%ymm0,%xmm10
  656d8e:	c4 c1 44 14 c8       	vunpcklps %ymm8,%ymm7,%ymm1
  656d93:	c4 c1 44 15 d0       	vunpckhps %ymm8,%ymm7,%ymm2
  656d98:	c4 c1 64 14 eb       	vunpcklps %ymm11,%ymm3,%ymm5
  656d9d:	c4 c1 64 15 fb       	vunpckhps %ymm11,%ymm3,%ymm7
  656da2:	c5 f5 14 c5          	vunpcklpd %ymm5,%ymm1,%ymm0
  656da6:	c5 fc 11 44 24 a8    	vmovups %ymm0,-0x58(%rsp)
  656dac:	c5 6d 14 df          	vunpcklpd %ymm7,%ymm2,%ymm11
  656db0:	c5 75 15 f5          	vunpckhpd %ymm5,%ymm1,%ymm14
  656db4:	c5 ed 15 ef          	vunpckhpd %ymm7,%ymm2,%ymm5
  656db8:	c4 c3 7d 19 c5 01    	vextractf128 $0x1,%ymm0,%xmm13
  656dbe:	c5 f8 28 3d 1a ab a0 	vmovaps -0x5f54e6(%rip),%xmm7        # 618e0 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x1410>
  656dc5:	ff 
  656dc6:	c5 88 59 c7          	vmulps %xmm7,%xmm14,%xmm0
  656dca:	c5 f8 28 15 1e a0 a0 	vmovaps -0x5f5fe2(%rip),%xmm2        # 60df0 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x920>
  656dd1:	ff 
  656dd2:	c4 e2 31 b8 c2       	vfmadd231ps %xmm2,%xmm9,%xmm0
  656dd7:	c5 f8 29 44 24 c8    	vmovaps %xmm0,-0x38(%rsp)
  656ddd:	c5 88 59 c2          	vmulps %xmm2,%xmm14,%xmm0
  656de1:	c4 e2 31 bc c7       	vfnmadd231ps %xmm7,%xmm9,%xmm0
  656de6:	c5 f8 29 44 24 88    	vmovaps %xmm0,-0x78(%rsp)
  656dec:	c5 78 28 25 bc 99 a0 	vmovaps -0x5f6644(%rip),%xmm12        # 607b0 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x2e0>
  656df3:	ff 
  656df4:	c4 c1 20 59 fc       	vmulps %xmm12,%xmm11,%xmm7
  656df9:	c5 78 28 05 6f aa a0 	vmovaps -0x5f5591(%rip),%xmm8        # 61870 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x13a0>
  656e00:	ff 
  656e01:	c4 c2 49 b8 f8       	vfmadd231ps %xmm8,%xmm6,%xmm7
  656e06:	c4 c1 20 59 c0       	vmulps %xmm8,%xmm11,%xmm0
  656e0b:	c4 c2 49 bc c4       	vfnmadd231ps %xmm12,%xmm6,%xmm0
  656e10:	c5 f8 29 44 24 98    	vmovaps %xmm0,-0x68(%rsp)
  656e16:	c5 78 28 3d 82 a9 a0 	vmovaps -0x5f567e(%rip),%xmm15        # 617a0 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x12d0>
  656e1d:	ff 
  656e1e:	c4 41 10 59 e7       	vmulps %xmm15,%xmm13,%xmm12
  656e23:	c5 f8 28 05 95 b1 a0 	vmovaps -0x5f4e6b(%rip),%xmm0        # 61fc0 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x1af0>
  656e2a:	ff 
  656e2b:	c4 62 29 b8 e0       	vfmadd231ps %xmm0,%xmm10,%xmm12
  656e30:	c5 10 59 e8          	vmulps %xmm0,%xmm13,%xmm13
  656e34:	c4 63 7d 19 c8 01    	vextractf128 $0x1,%ymm9,%xmm0
  656e3a:	c4 43 7d 19 f6 01    	vextractf128 $0x1,%ymm14,%xmm14
  656e40:	c4 42 29 bc ef       	vfnmadd231ps %xmm15,%xmm10,%xmm13
  656e45:	c5 78 28 3d 53 ba a0 	vmovaps -0x5f45ad(%rip),%xmm15        # 628a0 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x23d0>
  656e4c:	ff 
  656e4d:	c4 41 08 59 cf       	vmulps %xmm15,%xmm14,%xmm9
  656e52:	c5 78 28 15 f6 af a0 	vmovaps -0x5f500a(%rip),%xmm10        # 61e50 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x1980>
  656e59:	ff 
  656e5a:	c4 42 79 b8 ca       	vfmadd231ps %xmm10,%xmm0,%xmm9
  656e5f:	c4 41 08 59 d2       	vmulps %xmm10,%xmm14,%xmm10
  656e64:	c4 e3 7d 19 f6 01    	vextractf128 $0x1,%ymm6,%xmm6
  656e6a:	c4 43 7d 19 db 01    	vextractf128 $0x1,%ymm11,%xmm11
  656e70:	c4 42 79 bc d7       	vfnmadd231ps %xmm15,%xmm0,%xmm10
  656e75:	c5 78 28 35 83 9f a0 	vmovaps -0x5f607d(%rip),%xmm14        # 60e00 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x930>
  656e7c:	ff 
  656e7d:	c4 c1 20 59 c6       	vmulps %xmm14,%xmm11,%xmm0
  656e82:	c5 78 28 3d 06 97 a0 	vmovaps -0x5f68fa(%rip),%xmm15        # 60590 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0xc0>
  656e89:	ff 
  656e8a:	c4 c2 49 b8 c7       	vfmadd231ps %xmm15,%xmm6,%xmm0
  656e8f:	c4 41 20 59 df       	vmulps %xmm15,%xmm11,%xmm11
  656e94:	c4 42 49 bc de       	vfnmadd231ps %xmm14,%xmm6,%xmm11
  656e99:	c5 f8 28 35 4f aa a0 	vmovaps -0x5f55b1(%rip),%xmm6        # 618f0 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x1420>
  656ea0:	ff 
  656ea1:	c5 50 59 fe          	vmulps %xmm6,%xmm5,%xmm15
  656ea5:	c5 78 28 35 b3 9b a0 	vmovaps -0x5f644d(%rip),%xmm14        # 60a60 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x590>
  656eac:	ff 
  656ead:	c4 42 59 b8 fe       	vfmadd231ps %xmm14,%xmm4,%xmm15
  656eb2:	c5 08 59 f5          	vmulps %xmm5,%xmm14,%xmm14
  656eb6:	c4 62 59 bc f6       	vfnmadd231ps %xmm6,%xmm4,%xmm14
  656ebb:	c4 e3 7d 19 e4 01    	vextractf128 $0x1,%ymm4,%xmm4
  656ec1:	c4 e3 7d 19 ed 01    	vextractf128 $0x1,%ymm5,%xmm5
  656ec7:	c5 f8 28 35 81 bb a0 	vmovaps -0x5f447f(%rip),%xmm6        # 62a50 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x2580>
  656ece:	ff 
  656ecf:	c5 d0 59 ce          	vmulps %xmm6,%xmm5,%xmm1
  656ed3:	c5 f8 28 15 35 bf a0 	vmovaps -0x5f40cb(%rip),%xmm2        # 62e10 <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x2940>
  656eda:	ff 
  656edb:	c4 e2 59 b8 ca       	vfmadd231ps %xmm2,%xmm4,%xmm1
  656ee0:	c5 d0 59 d2          	vmulps %xmm2,%xmm5,%xmm2
  656ee4:	c4 e2 59 bc d6       	vfnmadd231ps %xmm6,%xmm4,%xmm2
  656ee9:	c5 fc 10 5c 24 d8    	vmovups -0x28(%rsp),%ymm3
  656eef:	c5 98 58 e3          	vaddps %xmm3,%xmm12,%xmm4
  656ef3:	c4 c1 60 5c ec       	vsubps %xmm12,%xmm3,%xmm5
  656ef8:	c5 c0 58 f0          	vaddps %xmm0,%xmm7,%xmm6
  656efc:	c5 40 5c c0          	vsubps %xmm0,%xmm7,%xmm8
  656f00:	c5 fc 10 44 24 a8    	vmovups -0x58(%rsp),%ymm0
  656f06:	c5 90 58 d8          	vaddps %xmm0,%xmm13,%xmm3
  656f0a:	c4 c1 78 5c fd       	vsubps %xmm13,%xmm0,%xmm7
  656f0f:	c5 78 28 64 24 98    	vmovaps -0x68(%rsp),%xmm12
  656f15:	c4 c1 18 58 c3       	vaddps %xmm11,%xmm12,%xmm0
  656f1a:	c4 41 18 5c db       	vsubps %xmm11,%xmm12,%xmm11
  656f1f:	c5 58 58 e6          	vaddps %xmm6,%xmm4,%xmm12
  656f23:	c5 58 5c ee          	vsubps %xmm6,%xmm4,%xmm13
  656f27:	c5 a0 58 f5          	vaddps %xmm5,%xmm11,%xmm6
  656f2b:	c4 c1 50 5c e3       	vsubps %xmm11,%xmm5,%xmm4
  656f30:	c5 f8 29 64 24 d8    	vmovaps %xmm4,-0x28(%rsp)
  656f36:	c5 60 58 d8          	vaddps %xmm0,%xmm3,%xmm11
  656f3a:	c5 e0 5c e8          	vsubps %xmm0,%xmm3,%xmm5
  656f3e:	c4 c1 40 5c c0       	vsubps %xmm8,%xmm7,%xmm0
  656f43:	c5 b8 58 df          	vaddps %xmm7,%xmm8,%xmm3
  656f47:	c5 f8 29 5c 24 a8    	vmovaps %xmm3,-0x58(%rsp)
  656f4d:	c5 f8 28 64 24 c8    	vmovaps -0x38(%rsp),%xmm4
  656f53:	c5 b0 58 dc          	vaddps %xmm4,%xmm9,%xmm3
  656f57:	c4 c1 58 5c f9       	vsubps %xmm9,%xmm4,%xmm7
  656f5c:	c5 00 58 c1          	vaddps %xmm1,%xmm15,%xmm8
  656f60:	c5 80 5c c9          	vsubps %xmm1,%xmm15,%xmm1
  656f64:	c5 f8 28 64 24 88    	vmovaps -0x78(%rsp),%xmm4
  656f6a:	c5 28 58 cc          	vaddps %xmm4,%xmm10,%xmm9
  656f6e:	c4 41 58 5c d2       	vsubps %xmm10,%xmm4,%xmm10
  656f73:	c5 08 58 fa          	vaddps %xmm2,%xmm14,%xmm15
  656f77:	c5 88 5c d2          	vsubps %xmm2,%xmm14,%xmm2
  656f7b:	c5 38 58 f3          	vaddps %xmm3,%xmm8,%xmm14
  656f7f:	c4 c1 60 5c d8       	vsubps %xmm8,%xmm3,%xmm3
  656f84:	c5 40 58 c2          	vaddps %xmm2,%xmm7,%xmm8
  656f88:	c5 c0 5c d2          	vsubps %xmm2,%xmm7,%xmm2
  656f8c:	c4 c1 30 58 ff       	vaddps %xmm15,%xmm9,%xmm7
  656f91:	c4 41 30 5c cf       	vsubps %xmm15,%xmm9,%xmm9
  656f96:	c5 28 5c f9          	vsubps %xmm1,%xmm10,%xmm15
  656f9a:	c5 a8 58 c9          	vaddps %xmm1,%xmm10,%xmm1
  656f9e:	c4 41 38 58 d7       	vaddps %xmm15,%xmm8,%xmm10
  656fa3:	c4 41 00 5c c0       	vsubps %xmm8,%xmm15,%xmm8
  656fa8:	c5 70 5c fa          	vsubps %xmm2,%xmm1,%xmm15
  656fac:	c5 e8 58 c9          	vaddps %xmm1,%xmm2,%xmm1
  656fb0:	c4 e2 79 18 15 9f d0 	vbroadcastss -0x5f2f61(%rip),%xmm2        # 64058 <anon.56f030c740cfe29bdd556092304e388a.11.llvm.10694227977887390340+0x74>
  656fb7:	a0 ff 
  656fb9:	c5 e0 57 da          	vxorps %xmm2,%xmm3,%xmm3
  656fbd:	c5 f0 57 ca          	vxorps %xmm2,%xmm1,%xmm1
  656fc1:	c4 e2 79 18 15 d2 ce 	vbroadcastss -0x5f312e(%rip),%xmm2        # 63e9c <anon.6c252bfcc2327a5d10918c758a7a6ca8.55.llvm.12742309903329417332+0x39cc>
  656fc8:	a0 ff 
  656fca:	c5 28 59 d2          	vmulps %xmm2,%xmm10,%xmm10
  656fce:	c5 38 59 c2          	vmulps %xmm2,%xmm8,%xmm8
  656fd2:	c5 00 59 fa          	vmulps %xmm2,%xmm15,%xmm15
  656fd6:	c5 f0 59 ca          	vmulps %xmm2,%xmm1,%xmm1
  656fda:	c4 c1 18 58 d6       	vaddps %xmm14,%xmm12,%xmm2
  656fdf:	c4 41 18 5c e6       	vsubps %xmm14,%xmm12,%xmm12
  656fe4:	c5 20 58 f7          	vaddps %xmm7,%xmm11,%xmm14
  656fe8:	c5 a0 5c ff          	vsubps %xmm7,%xmm11,%xmm7
  656fec:	c5 28 58 de          	vaddps %xmm6,%xmm10,%xmm11
  656ff0:	c4 c1 48 5c e2       	vsubps %xmm10,%xmm6,%xmm4
  656ff5:	c5 f8 29 64 24 88    	vmovaps %xmm4,-0x78(%rsp)
  656ffb:	c5 38 58 d0          	vaddps %xmm0,%xmm8,%xmm10
  656fff:	c4 c1 78 5c e0       	vsubps %xmm8,%xmm0,%xmm4
  657004:	c4 41 10 58 c1       	vaddps %xmm9,%xmm13,%xmm8
  657009:	c4 41 10 5c c9       	vsubps %xmm9,%xmm13,%xmm9
  65700e:	c5 50 58 eb          	vaddps %xmm3,%xmm5,%xmm13
  657012:	c5 d0 5c db          	vsubps %xmm3,%xmm5,%xmm3
  657016:	c5 f8 28 44 24 d8    	vmovaps -0x28(%rsp),%xmm0
  65701c:	c5 80 58 e8          	vaddps %xmm0,%xmm15,%xmm5
  657020:	c4 41 78 5c ff       	vsubps %xmm15,%xmm0,%xmm15
  657025:	c5 f8 28 74 24 a8    	vmovaps -0x58(%rsp),%xmm6
  65702b:	c5 c8 58 c1          	vaddps %xmm1,%xmm6,%xmm0
  65702f:	c5 c8 5c f1          	vsubps %xmm1,%xmm6,%xmm6
  657033:	c4 c1 68 14 ce       	vunpcklps %xmm14,%xmm2,%xmm1
  657038:	c4 c1 68 15 d6       	vunpckhps %xmm14,%xmm2,%xmm2
  65703d:	c5 f8 11 0e          	vmovups %xmm1,(%rsi)
  657041:	c5 f8 11 56 10       	vmovups %xmm2,0x10(%rsi)
  657046:	c4 c1 20 14 ca       	vunpcklps %xmm10,%xmm11,%xmm1
  65704b:	c4 c1 20 15 d2       	vunpckhps %xmm10,%xmm11,%xmm2
  657050:	c5 f8 11 4e 20       	vmovups %xmm1,0x20(%rsi)
  657055:	c5 f8 11 56 30       	vmovups %xmm2,0x30(%rsi)
  65705a:	c4 c1 38 14 cd       	vunpcklps %xmm13,%xmm8,%xmm1
  65705f:	c4 c1 38 15 d5       	vunpckhps %xmm13,%xmm8,%xmm2
  657064:	c5 f8 11 4e 40       	vmovups %xmm1,0x40(%rsi)
  657069:	c5 f8 11 56 50       	vmovups %xmm2,0x50(%rsi)
  65706e:	c5 d0 14 c8          	vunpcklps %xmm0,%xmm5,%xmm1
  657072:	c5 d0 15 c0          	vunpckhps %xmm0,%xmm5,%xmm0
  657076:	c5 f8 11 4e 60       	vmovups %xmm1,0x60(%rsi)
  65707b:	c5 f8 11 46 70       	vmovups %xmm0,0x70(%rsi)
  657080:	c5 98 14 c7          	vunpcklps %xmm7,%xmm12,%xmm0
  657084:	c5 98 15 cf          	vunpckhps %xmm7,%xmm12,%xmm1
  657088:	c5 f8 11 86 80 00 00 	vmovups %xmm0,0x80(%rsi)
  65708f:	00 
  657090:	c5 f8 11 8e 90 00 00 	vmovups %xmm1,0x90(%rsi)
  657097:	00 
  657098:	c5 f8 28 4c 24 88    	vmovaps -0x78(%rsp),%xmm1
  65709e:	c5 f0 14 c4          	vunpcklps %xmm4,%xmm1,%xmm0
  6570a2:	c5 f0 15 cc          	vunpckhps %xmm4,%xmm1,%xmm1
  6570a6:	c5 f8 11 86 a0 00 00 	vmovups %xmm0,0xa0(%rsi)
  6570ad:	00 
  6570ae:	c5 f8 11 8e b0 00 00 	vmovups %xmm1,0xb0(%rsi)
  6570b5:	00 
  6570b6:	c5 b0 14 c3          	vunpcklps %xmm3,%xmm9,%xmm0
  6570ba:	c5 b0 15 cb          	vunpckhps %xmm3,%xmm9,%xmm1
  6570be:	c5 f8 11 86 c0 00 00 	vmovups %xmm0,0xc0(%rsi)
  6570c5:	00 
  6570c6:	c5 f8 11 8e d0 00 00 	vmovups %xmm1,0xd0(%rsi)
  6570cd:	00 
  6570ce:	c5 80 14 c6          	vunpcklps %xmm6,%xmm15,%xmm0
  6570d2:	c5 80 15 ce          	vunpckhps %xmm6,%xmm15,%xmm1
  6570d6:	c5 f8 11 86 e0 00 00 	vmovups %xmm0,0xe0(%rsi)
  6570dd:	00 
  6570de:	c5 f8 11 8e f0 00 00 	vmovups %xmm1,0xf0(%rsi)
  6570e5:	00 
  6570e6:	c5 f8 77             	vzeroupper
  6570e9:	c3                   	ret
  6570ea:	cc                   	int3
  6570eb:	cc                   	int3
  6570ec:	cc                   	int3
  6570ed:	cc                   	int3
  6570ee:	cc                   	int3
  6570ef:	cc                   	int3
