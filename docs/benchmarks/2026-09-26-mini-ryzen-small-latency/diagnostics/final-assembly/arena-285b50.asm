
target/small-latency/final-source/executable-0:     file format elf64-x86-64


Disassembly of section .text:

0000000000285b50 <<fastfft::engine::small::specialized::Avx2Leaf as fastfft::engine::small::Kernel<fastfft::isa::x86::small::F32x4f>>::one>:
  285b50:	c5 fc 10 07          	vmovups (%rdi),%ymm0
  285b54:	c5 fc 10 4f 20       	vmovups 0x20(%rdi),%ymm1
  285b59:	c5 fc 10 57 40       	vmovups 0x40(%rdi),%ymm2
  285b5e:	c5 fc 10 5f 60       	vmovups 0x60(%rdi),%ymm3
  285b63:	c5 fc 10 a7 80 00 00 	vmovups 0x80(%rdi),%ymm4
  285b6a:	00 
  285b6b:	c5 fc 10 af a0 00 00 	vmovups 0xa0(%rdi),%ymm5
  285b72:	00 
  285b73:	c5 fc 10 b7 c0 00 00 	vmovups 0xc0(%rdi),%ymm6
  285b7a:	00 
  285b7b:	c5 fc 10 bf e0 00 00 	vmovups 0xe0(%rdi),%ymm7
  285b82:	00 
  285b83:	c5 7c c6 c1 88       	vshufps $0x88,%ymm1,%ymm0,%ymm8
  285b88:	c4 43 fd 01 c0 d8    	vpermpd $0xd8,%ymm8,%ymm8
  285b8e:	c5 5c c6 cd 88       	vshufps $0x88,%ymm5,%ymm4,%ymm9
  285b93:	c4 43 fd 01 c9 d8    	vpermpd $0xd8,%ymm9,%ymm9
  285b99:	c4 41 3c 58 d1       	vaddps %ymm9,%ymm8,%ymm10
  285b9e:	c4 41 3c 5c c1       	vsubps %ymm9,%ymm8,%ymm8
  285ba3:	c5 6c c6 cb 88       	vshufps $0x88,%ymm3,%ymm2,%ymm9
  285ba8:	c4 43 fd 01 c9 d8    	vpermpd $0xd8,%ymm9,%ymm9
  285bae:	c5 4c c6 df 88       	vshufps $0x88,%ymm7,%ymm6,%ymm11
  285bb3:	c4 43 fd 01 db d8    	vpermpd $0xd8,%ymm11,%ymm11
  285bb9:	c4 41 34 58 e3       	vaddps %ymm11,%ymm9,%ymm12
  285bbe:	c4 41 34 5c cb       	vsubps %ymm11,%ymm9,%ymm9
  285bc3:	c5 fc c6 c1 dd       	vshufps $0xdd,%ymm1,%ymm0,%ymm0
  285bc8:	c4 e3 fd 01 c0 d8    	vpermpd $0xd8,%ymm0,%ymm0
  285bce:	c5 dc c6 cd dd       	vshufps $0xdd,%ymm5,%ymm4,%ymm1
  285bd3:	c4 e3 fd 01 c9 d8    	vpermpd $0xd8,%ymm1,%ymm1
  285bd9:	c5 fc 58 e1          	vaddps %ymm1,%ymm0,%ymm4
  285bdd:	c5 fc 5c c1          	vsubps %ymm1,%ymm0,%ymm0
  285be1:	c5 ec c6 cb dd       	vshufps $0xdd,%ymm3,%ymm2,%ymm1
  285be6:	c4 e3 fd 01 c9 d8    	vpermpd $0xd8,%ymm1,%ymm1
  285bec:	c5 cc c6 d7 dd       	vshufps $0xdd,%ymm7,%ymm6,%ymm2
  285bf1:	c4 e3 fd 01 d2 d8    	vpermpd $0xd8,%ymm2,%ymm2
  285bf7:	c5 f4 58 da          	vaddps %ymm2,%ymm1,%ymm3
  285bfb:	c5 f4 5c ca          	vsubps %ymm2,%ymm1,%ymm1
  285bff:	c4 c1 2c 58 d4       	vaddps %ymm12,%ymm10,%ymm2
  285c04:	c5 bc 58 e9          	vaddps %ymm1,%ymm8,%ymm5
  285c08:	c4 c1 2c 5c f4       	vsubps %ymm12,%ymm10,%ymm6
  285c0d:	c5 bc 5c c9          	vsubps %ymm1,%ymm8,%ymm1
  285c11:	c5 dc 58 fb          	vaddps %ymm3,%ymm4,%ymm7
  285c15:	c4 41 7c 5c c1       	vsubps %ymm9,%ymm0,%ymm8
  285c1a:	c5 dc 5c db          	vsubps %ymm3,%ymm4,%ymm3
  285c1e:	c5 34 58 d8          	vaddps %ymm0,%ymm9,%ymm11
  285c22:	c5 ec 14 e5          	vunpcklps %ymm5,%ymm2,%ymm4
  285c26:	c5 ec 15 d5          	vunpckhps %ymm5,%ymm2,%ymm2
  285c2a:	c5 cc 14 e9          	vunpcklps %ymm1,%ymm6,%ymm5
  285c2e:	c5 cc 15 c9          	vunpckhps %ymm1,%ymm6,%ymm1
  285c32:	c5 dd 14 c5          	vunpcklpd %ymm5,%ymm4,%ymm0
  285c36:	c5 fc 11 44 24 d8    	vmovups %ymm0,-0x28(%rsp)
  285c3c:	c5 ed 14 f1          	vunpcklpd %ymm1,%ymm2,%ymm6
  285c40:	c5 5d 15 cd          	vunpckhpd %ymm5,%ymm4,%ymm9
  285c44:	c5 ed 15 e1          	vunpckhpd %ymm1,%ymm2,%ymm4
  285c48:	c4 c3 7d 19 c2 01    	vextractf128 $0x1,%ymm0,%xmm10
  285c4e:	c4 c1 44 14 c8       	vunpcklps %ymm8,%ymm7,%ymm1
  285c53:	c4 c1 44 15 d0       	vunpckhps %ymm8,%ymm7,%ymm2
  285c58:	c4 c1 64 14 eb       	vunpcklps %ymm11,%ymm3,%ymm5
  285c5d:	c4 c1 64 15 fb       	vunpckhps %ymm11,%ymm3,%ymm7
  285c62:	c5 f5 14 c5          	vunpcklpd %ymm5,%ymm1,%ymm0
  285c66:	c5 fc 11 44 24 a8    	vmovups %ymm0,-0x58(%rsp)
  285c6c:	c5 6d 14 df          	vunpcklpd %ymm7,%ymm2,%ymm11
  285c70:	c5 75 15 f5          	vunpckhpd %ymm5,%ymm1,%ymm14
  285c74:	c5 ed 15 ef          	vunpckhpd %ymm7,%ymm2,%ymm5
  285c78:	c4 c3 7d 19 c5 01    	vextractf128 $0x1,%ymm0,%xmm13
  285c7e:	c5 f8 28 3d fa 08 df 	vmovaps -0x20f706(%rip),%xmm7        # 76580 <__abi_tag+0x76284>
  285c85:	ff 
  285c86:	c5 88 59 c7          	vmulps %xmm7,%xmm14,%xmm0
  285c8a:	c5 f8 28 15 1e e8 de 	vmovaps -0x2117e2(%rip),%xmm2        # 744b0 <__abi_tag+0x741b4>
  285c91:	ff 
  285c92:	c4 e2 31 b8 c2       	vfmadd231ps %xmm2,%xmm9,%xmm0
  285c97:	c5 f8 29 44 24 c8    	vmovaps %xmm0,-0x38(%rsp)
  285c9d:	c5 88 59 c2          	vmulps %xmm2,%xmm14,%xmm0
  285ca1:	c4 e2 31 bc c7       	vfnmadd231ps %xmm7,%xmm9,%xmm0
  285ca6:	c5 f8 29 44 24 88    	vmovaps %xmm0,-0x78(%rsp)
  285cac:	c5 78 28 25 ac d6 de 	vmovaps -0x212954(%rip),%xmm12        # 73360 <__abi_tag+0x73064>
  285cb3:	ff 
  285cb4:	c4 c1 20 59 fc       	vmulps %xmm12,%xmm11,%xmm7
  285cb9:	c5 78 28 05 cf 08 df 	vmovaps -0x20f731(%rip),%xmm8        # 76590 <__abi_tag+0x76294>
  285cc0:	ff 
  285cc1:	c4 c2 49 b8 f8       	vfmadd231ps %xmm8,%xmm6,%xmm7
  285cc6:	c4 c1 20 59 c0       	vmulps %xmm8,%xmm11,%xmm0
  285ccb:	c4 c2 49 bc c4       	vfnmadd231ps %xmm12,%xmm6,%xmm0
  285cd0:	c5 f8 29 44 24 98    	vmovaps %xmm0,-0x68(%rsp)
  285cd6:	c5 78 28 3d 02 05 df 	vmovaps -0x20fafe(%rip),%xmm15        # 761e0 <__abi_tag+0x75ee4>
  285cdd:	ff 
  285cde:	c4 41 10 59 e7       	vmulps %xmm15,%xmm13,%xmm12
  285ce3:	c5 f8 28 05 05 1e df 	vmovaps -0x20e1fb(%rip),%xmm0        # 77af0 <__abi_tag+0x777f4>
  285cea:	ff 
  285ceb:	c4 62 29 b8 e0       	vfmadd231ps %xmm0,%xmm10,%xmm12
  285cf0:	c5 10 59 e8          	vmulps %xmm0,%xmm13,%xmm13
  285cf4:	c4 63 7d 19 c8 01    	vextractf128 $0x1,%ymm9,%xmm0
  285cfa:	c4 43 7d 19 f6 01    	vextractf128 $0x1,%ymm14,%xmm14
  285d00:	c4 42 29 bc ef       	vfnmadd231ps %xmm15,%xmm10,%xmm13
  285d05:	c5 78 28 3d 23 37 df 	vmovaps -0x20c8dd(%rip),%xmm15        # 79430 <__abi_tag+0x79134>
  285d0c:	ff 
  285d0d:	c4 41 08 59 cf       	vmulps %xmm15,%xmm14,%xmm9
  285d12:	c5 78 28 15 e6 18 df 	vmovaps -0x20e71a(%rip),%xmm10        # 77600 <__abi_tag+0x77304>
  285d19:	ff 
  285d1a:	c4 42 79 b8 ca       	vfmadd231ps %xmm10,%xmm0,%xmm9
  285d1f:	c4 41 08 59 d2       	vmulps %xmm10,%xmm14,%xmm10
  285d24:	c4 e3 7d 19 f6 01    	vextractf128 $0x1,%ymm6,%xmm6
  285d2a:	c4 43 7d 19 db 01    	vextractf128 $0x1,%ymm11,%xmm11
  285d30:	c4 42 79 bc d7       	vfnmadd231ps %xmm15,%xmm0,%xmm10
  285d35:	c5 78 28 35 83 e7 de 	vmovaps -0x21187d(%rip),%xmm14        # 744c0 <__abi_tag+0x741c4>
  285d3c:	ff 
  285d3d:	c4 c1 20 59 c6       	vmulps %xmm14,%xmm11,%xmm0
  285d42:	c5 78 28 3d 06 d2 de 	vmovaps -0x212dfa(%rip),%xmm15        # 72f50 <__abi_tag+0x72c54>
  285d49:	ff 
  285d4a:	c4 c2 49 b8 c7       	vfmadd231ps %xmm15,%xmm6,%xmm0
  285d4f:	c4 41 20 59 df       	vmulps %xmm15,%xmm11,%xmm11
  285d54:	c4 42 49 bc de       	vfnmadd231ps %xmm14,%xmm6,%xmm11
  285d59:	c5 f8 28 35 3f 08 df 	vmovaps -0x20f7c1(%rip),%xmm6        # 765a0 <__abi_tag+0x762a4>
  285d60:	ff 
  285d61:	c5 50 59 fe          	vmulps %xmm6,%xmm5,%xmm15
  285d65:	c5 78 28 35 a3 de de 	vmovaps -0x21215d(%rip),%xmm14        # 73c10 <__abi_tag+0x73914>
  285d6c:	ff 
  285d6d:	c4 42 59 b8 fe       	vfmadd231ps %xmm14,%xmm4,%xmm15
  285d72:	c5 08 59 f5          	vmulps %xmm5,%xmm14,%xmm14
  285d76:	c4 62 59 bc f6       	vfnmadd231ps %xmm6,%xmm4,%xmm14
  285d7b:	c4 e3 7d 19 e4 01    	vextractf128 $0x1,%ymm4,%xmm4
  285d81:	c4 e3 7d 19 ed 01    	vextractf128 $0x1,%ymm5,%xmm5
  285d87:	c5 f8 28 35 21 3a df 	vmovaps -0x20c5df(%rip),%xmm6        # 797b0 <__abi_tag+0x794b4>
  285d8e:	ff 
  285d8f:	c5 d0 59 ce          	vmulps %xmm6,%xmm5,%xmm1
  285d93:	c5 f8 28 15 15 46 df 	vmovaps -0x20b9eb(%rip),%xmm2        # 7a3b0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x570>
  285d9a:	ff 
  285d9b:	c4 e2 59 b8 ca       	vfmadd231ps %xmm2,%xmm4,%xmm1
  285da0:	c5 d0 59 d2          	vmulps %xmm2,%xmm5,%xmm2
  285da4:	c4 e2 59 bc d6       	vfnmadd231ps %xmm6,%xmm4,%xmm2
  285da9:	c5 fc 10 5c 24 d8    	vmovups -0x28(%rsp),%ymm3
  285daf:	c5 98 58 e3          	vaddps %xmm3,%xmm12,%xmm4
  285db3:	c4 c1 60 5c ec       	vsubps %xmm12,%xmm3,%xmm5
  285db8:	c5 c0 58 f0          	vaddps %xmm0,%xmm7,%xmm6
  285dbc:	c5 40 5c c0          	vsubps %xmm0,%xmm7,%xmm8
  285dc0:	c5 fc 10 44 24 a8    	vmovups -0x58(%rsp),%ymm0
  285dc6:	c5 90 58 d8          	vaddps %xmm0,%xmm13,%xmm3
  285dca:	c4 c1 78 5c fd       	vsubps %xmm13,%xmm0,%xmm7
  285dcf:	c5 78 28 64 24 98    	vmovaps -0x68(%rsp),%xmm12
  285dd5:	c4 c1 18 58 c3       	vaddps %xmm11,%xmm12,%xmm0
  285dda:	c4 41 18 5c db       	vsubps %xmm11,%xmm12,%xmm11
  285ddf:	c5 58 58 e6          	vaddps %xmm6,%xmm4,%xmm12
  285de3:	c5 58 5c ee          	vsubps %xmm6,%xmm4,%xmm13
  285de7:	c5 a0 58 f5          	vaddps %xmm5,%xmm11,%xmm6
  285deb:	c4 c1 50 5c e3       	vsubps %xmm11,%xmm5,%xmm4
  285df0:	c5 f8 29 64 24 d8    	vmovaps %xmm4,-0x28(%rsp)
  285df6:	c5 60 58 d8          	vaddps %xmm0,%xmm3,%xmm11
  285dfa:	c5 e0 5c e8          	vsubps %xmm0,%xmm3,%xmm5
  285dfe:	c4 c1 40 5c c0       	vsubps %xmm8,%xmm7,%xmm0
  285e03:	c5 b8 58 df          	vaddps %xmm7,%xmm8,%xmm3
  285e07:	c5 f8 29 5c 24 a8    	vmovaps %xmm3,-0x58(%rsp)
  285e0d:	c5 f8 28 64 24 c8    	vmovaps -0x38(%rsp),%xmm4
  285e13:	c5 b0 58 dc          	vaddps %xmm4,%xmm9,%xmm3
  285e17:	c4 c1 58 5c f9       	vsubps %xmm9,%xmm4,%xmm7
  285e1c:	c5 00 58 c1          	vaddps %xmm1,%xmm15,%xmm8
  285e20:	c5 80 5c c9          	vsubps %xmm1,%xmm15,%xmm1
  285e24:	c5 f8 28 64 24 88    	vmovaps -0x78(%rsp),%xmm4
  285e2a:	c5 28 58 cc          	vaddps %xmm4,%xmm10,%xmm9
  285e2e:	c4 41 58 5c d2       	vsubps %xmm10,%xmm4,%xmm10
  285e33:	c5 08 58 fa          	vaddps %xmm2,%xmm14,%xmm15
  285e37:	c5 88 5c d2          	vsubps %xmm2,%xmm14,%xmm2
  285e3b:	c5 38 58 f3          	vaddps %xmm3,%xmm8,%xmm14
  285e3f:	c4 c1 60 5c d8       	vsubps %xmm8,%xmm3,%xmm3
  285e44:	c5 40 58 c2          	vaddps %xmm2,%xmm7,%xmm8
  285e48:	c5 c0 5c d2          	vsubps %xmm2,%xmm7,%xmm2
  285e4c:	c4 c1 30 58 ff       	vaddps %xmm15,%xmm9,%xmm7
  285e51:	c4 41 30 5c cf       	vsubps %xmm15,%xmm9,%xmm9
  285e56:	c5 28 5c f9          	vsubps %xmm1,%xmm10,%xmm15
  285e5a:	c5 a8 58 c9          	vaddps %xmm1,%xmm10,%xmm1
  285e5e:	c4 41 38 58 d7       	vaddps %xmm15,%xmm8,%xmm10
  285e63:	c4 41 00 5c c0       	vsubps %xmm8,%xmm15,%xmm8
  285e68:	c5 70 5c fa          	vsubps %xmm2,%xmm1,%xmm15
  285e6c:	c5 e8 58 c9          	vaddps %xmm1,%xmm2,%xmm1
  285e70:	c4 e2 79 18 15 cf 6b 	vbroadcastss -0x209431(%rip),%xmm2        # 7ca48 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  285e77:	df ff 
  285e79:	c5 e0 57 da          	vxorps %xmm2,%xmm3,%xmm3
  285e7d:	c5 f0 57 ca          	vxorps %xmm2,%xmm1,%xmm1
  285e81:	c4 e2 79 18 15 b6 69 	vbroadcastss -0x20964a(%rip),%xmm2        # 7c840 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a00>
  285e88:	df ff 
  285e8a:	c5 28 59 d2          	vmulps %xmm2,%xmm10,%xmm10
  285e8e:	c5 38 59 c2          	vmulps %xmm2,%xmm8,%xmm8
  285e92:	c5 00 59 fa          	vmulps %xmm2,%xmm15,%xmm15
  285e96:	c5 f0 59 ca          	vmulps %xmm2,%xmm1,%xmm1
  285e9a:	c4 c1 18 58 d6       	vaddps %xmm14,%xmm12,%xmm2
  285e9f:	c4 41 18 5c e6       	vsubps %xmm14,%xmm12,%xmm12
  285ea4:	c5 20 58 f7          	vaddps %xmm7,%xmm11,%xmm14
  285ea8:	c5 a0 5c ff          	vsubps %xmm7,%xmm11,%xmm7
  285eac:	c5 28 58 de          	vaddps %xmm6,%xmm10,%xmm11
  285eb0:	c4 c1 48 5c e2       	vsubps %xmm10,%xmm6,%xmm4
  285eb5:	c5 f8 29 64 24 88    	vmovaps %xmm4,-0x78(%rsp)
  285ebb:	c5 38 58 d0          	vaddps %xmm0,%xmm8,%xmm10
  285ebf:	c4 c1 78 5c e0       	vsubps %xmm8,%xmm0,%xmm4
  285ec4:	c4 41 10 58 c1       	vaddps %xmm9,%xmm13,%xmm8
  285ec9:	c4 41 10 5c c9       	vsubps %xmm9,%xmm13,%xmm9
  285ece:	c5 50 58 eb          	vaddps %xmm3,%xmm5,%xmm13
  285ed2:	c5 d0 5c db          	vsubps %xmm3,%xmm5,%xmm3
  285ed6:	c5 f8 28 44 24 d8    	vmovaps -0x28(%rsp),%xmm0
  285edc:	c5 80 58 e8          	vaddps %xmm0,%xmm15,%xmm5
  285ee0:	c4 41 78 5c ff       	vsubps %xmm15,%xmm0,%xmm15
  285ee5:	c5 f8 28 74 24 a8    	vmovaps -0x58(%rsp),%xmm6
  285eeb:	c5 c8 58 c1          	vaddps %xmm1,%xmm6,%xmm0
  285eef:	c5 c8 5c f1          	vsubps %xmm1,%xmm6,%xmm6
  285ef3:	c4 c1 68 14 ce       	vunpcklps %xmm14,%xmm2,%xmm1
  285ef8:	c4 c1 68 15 d6       	vunpckhps %xmm14,%xmm2,%xmm2
  285efd:	c5 f8 11 0e          	vmovups %xmm1,(%rsi)
  285f01:	c5 f8 11 56 10       	vmovups %xmm2,0x10(%rsi)
  285f06:	c4 c1 20 14 ca       	vunpcklps %xmm10,%xmm11,%xmm1
  285f0b:	c4 c1 20 15 d2       	vunpckhps %xmm10,%xmm11,%xmm2
  285f10:	c5 f8 11 4e 20       	vmovups %xmm1,0x20(%rsi)
  285f15:	c5 f8 11 56 30       	vmovups %xmm2,0x30(%rsi)
  285f1a:	c4 c1 38 14 cd       	vunpcklps %xmm13,%xmm8,%xmm1
  285f1f:	c4 c1 38 15 d5       	vunpckhps %xmm13,%xmm8,%xmm2
  285f24:	c5 f8 11 4e 40       	vmovups %xmm1,0x40(%rsi)
  285f29:	c5 f8 11 56 50       	vmovups %xmm2,0x50(%rsi)
  285f2e:	c5 d0 14 c8          	vunpcklps %xmm0,%xmm5,%xmm1
  285f32:	c5 d0 15 c0          	vunpckhps %xmm0,%xmm5,%xmm0
  285f36:	c5 f8 11 4e 60       	vmovups %xmm1,0x60(%rsi)
  285f3b:	c5 f8 11 46 70       	vmovups %xmm0,0x70(%rsi)
  285f40:	c5 98 14 c7          	vunpcklps %xmm7,%xmm12,%xmm0
  285f44:	c5 98 15 cf          	vunpckhps %xmm7,%xmm12,%xmm1
  285f48:	c5 f8 11 86 80 00 00 	vmovups %xmm0,0x80(%rsi)
  285f4f:	00 
  285f50:	c5 f8 11 8e 90 00 00 	vmovups %xmm1,0x90(%rsi)
  285f57:	00 
  285f58:	c5 f8 28 4c 24 88    	vmovaps -0x78(%rsp),%xmm1
  285f5e:	c5 f0 14 c4          	vunpcklps %xmm4,%xmm1,%xmm0
  285f62:	c5 f0 15 cc          	vunpckhps %xmm4,%xmm1,%xmm1
  285f66:	c5 f8 11 86 a0 00 00 	vmovups %xmm0,0xa0(%rsi)
  285f6d:	00 
  285f6e:	c5 f8 11 8e b0 00 00 	vmovups %xmm1,0xb0(%rsi)
  285f75:	00 
  285f76:	c5 b0 14 c3          	vunpcklps %xmm3,%xmm9,%xmm0
  285f7a:	c5 b0 15 cb          	vunpckhps %xmm3,%xmm9,%xmm1
  285f7e:	c5 f8 11 86 c0 00 00 	vmovups %xmm0,0xc0(%rsi)
  285f85:	00 
  285f86:	c5 f8 11 8e d0 00 00 	vmovups %xmm1,0xd0(%rsi)
  285f8d:	00 
  285f8e:	c5 80 14 c6          	vunpcklps %xmm6,%xmm15,%xmm0
  285f92:	c5 80 15 ce          	vunpckhps %xmm6,%xmm15,%xmm1
  285f96:	c5 f8 11 86 e0 00 00 	vmovups %xmm0,0xe0(%rsi)
  285f9d:	00 
  285f9e:	c5 f8 11 8e f0 00 00 	vmovups %xmm1,0xf0(%rsi)
  285fa5:	00 
  285fa6:	c5 f8 77             	vzeroupper
  285fa9:	c3                   	ret
  285faa:	cc                   	int3
  285fab:	cc                   	int3
  285fac:	cc                   	int3
  285fad:	cc                   	int3
  285fae:	cc                   	int3
  285faf:	cc                   	int3
