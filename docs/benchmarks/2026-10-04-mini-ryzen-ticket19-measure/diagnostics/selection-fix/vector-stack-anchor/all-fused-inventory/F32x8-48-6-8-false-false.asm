
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000708bc0 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  708bc0:	48 81 ec a8 01 00 00 	sub    rsp,0x1a8
  708bc7:	c5 fc 10 1f          	vmovups ymm3,YMMWORD PTR [rdi]
  708bcb:	c5 fc 10 67 20       	vmovups ymm4,YMMWORD PTR [rdi+0x20]
  708bd0:	c5 fc 10 4f 40       	vmovups ymm1,YMMWORD PTR [rdi+0x40]
  708bd5:	c5 fc 10 47 60       	vmovups ymm0,YMMWORD PTR [rdi+0x60]
  708bda:	c5 fc 10 b7 80 00 00 	vmovups ymm6,YMMWORD PTR [rdi+0x80]
  708be1:	00 
  708be2:	c5 7c 10 87 a0 00 00 	vmovups ymm8,YMMWORD PTR [rdi+0xa0]
  708be9:	00 
  708bea:	c5 7c 10 af c0 00 00 	vmovups ymm13,YMMWORD PTR [rdi+0xc0]
  708bf1:	00 
  708bf2:	c5 7c 10 b7 e0 00 00 	vmovups ymm14,YMMWORD PTR [rdi+0xe0]
  708bf9:	00 
  708bfa:	c5 7c 10 97 00 01 00 	vmovups ymm10,YMMWORD PTR [rdi+0x100]
  708c01:	00 
  708c02:	c5 7c 10 bf 20 01 00 	vmovups ymm15,YMMWORD PTR [rdi+0x120]
  708c09:	00 
  708c0a:	c5 7c 10 a7 40 01 00 	vmovups ymm12,YMMWORD PTR [rdi+0x140]
  708c11:	00 
  708c12:	c5 7c 10 9f 60 01 00 	vmovups ymm11,YMMWORD PTR [rdi+0x160]
  708c19:	00 
  708c1a:	c5 e4 c6 fc 88       	vshufps ymm7,ymm3,ymm4,0x88
  708c1f:	c4 e3 fd 01 d7 d8    	vpermpd ymm2,ymm7,0xd8
  708c25:	c5 fc 11 54 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm2
  708c2b:	c4 41 4c c6 c8 88    	vshufps ymm9,ymm6,ymm8,0x88
  708c31:	c4 c3 fd 01 f9 d8    	vpermpd ymm7,ymm9,0xd8
  708c37:	c5 fc 11 7c 24 20    	vmovups YMMWORD PTR [rsp+0x20],ymm7
  708c3d:	c4 41 2c c6 cf 88    	vshufps ymm9,ymm10,ymm15,0x88
  708c43:	c4 c3 fd 01 e9 d8    	vpermpd ymm5,ymm9,0xd8
  708c49:	c5 fc 11 6c 24 40    	vmovups YMMWORD PTR [rsp+0x40],ymm5
  708c4f:	c4 41 14 c6 ce 88    	vshufps ymm9,ymm13,ymm14,0x88
  708c55:	c4 c3 fd 01 d1 d8    	vpermpd ymm2,ymm9,0xd8
  708c5b:	c5 fc 11 14 24       	vmovups YMMWORD PTR [rsp],ymm2
  708c60:	c5 64 c6 cc dd       	vshufps ymm9,ymm3,ymm4,0xdd
  708c65:	c4 c1 1c c6 db 88    	vshufps ymm3,ymm12,ymm11,0x88
  708c6b:	c4 e3 fd 01 d3 d8    	vpermpd ymm2,ymm3,0xd8
  708c71:	c5 fc 11 54 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm2
  708c77:	c4 c1 4c c6 f0 dd    	vshufps ymm6,ymm6,ymm8,0xdd
  708c7d:	c5 f4 c6 e0 88       	vshufps ymm4,ymm1,ymm0,0x88
  708c82:	c4 63 fd 01 c4 d8    	vpermpd ymm8,ymm4,0xd8
  708c88:	c5 7c 11 44 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm8
  708c8e:	c4 c3 fd 01 d9 d8    	vpermpd ymm3,ymm9,0xd8
  708c94:	c4 63 fd 01 ce d8    	vpermpd ymm9,ymm6,0xd8
  708c9a:	c4 c1 2c c6 f7 dd    	vshufps ymm6,ymm10,ymm15,0xdd
  708ca0:	c4 63 fd 01 d6 d8    	vpermpd ymm10,ymm6,0xd8
  708ca6:	c4 41 14 c6 ee dd    	vshufps ymm13,ymm13,ymm14,0xdd
  708cac:	c4 41 1c c6 fb dd    	vshufps ymm15,ymm12,ymm11,0xdd
  708cb2:	c5 74 c6 f0 dd       	vshufps ymm14,ymm1,ymm0,0xdd
  708cb7:	c5 c4 58 ed          	vaddps ymm5,ymm7,ymm5
  708cbb:	c5 fc 10 44 24 a0    	vmovups ymm0,YMMWORD PTR [rsp-0x60]
  708cc1:	c5 d4 58 e0          	vaddps ymm4,ymm5,ymm0
  708cc5:	c5 fc 11 64 24 e0    	vmovups YMMWORD PTR [rsp-0x20],ymm4
  708ccb:	c5 bc 58 f2          	vaddps ymm6,ymm8,ymm2
  708ccf:	c4 62 7d 18 05 88 c7 	vbroadcastss ymm8,DWORD PTR [rip+0xffffffffff96c788]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  708cd6:	96 ff 
  708cd8:	c4 e2 3d ac e8       	vfnmadd213ps ymm5,ymm8,ymm0
  708cdd:	c5 fc 10 04 24       	vmovups ymm0,YMMWORD PTR [rsp]
  708ce2:	c5 cc 58 d0          	vaddps ymm2,ymm6,ymm0
  708ce6:	c4 e2 3d ac f0       	vfnmadd213ps ymm6,ymm8,ymm0
  708ceb:	c4 41 34 58 e2       	vaddps ymm12,ymm9,ymm10
  708cf0:	c5 1c 58 db          	vaddps ymm11,ymm12,ymm3
  708cf4:	c4 62 3d ac e3       	vfnmadd213ps ymm12,ymm8,ymm3
  708cf9:	c4 c3 fd 01 cd d8    	vpermpd ymm1,ymm13,0xd8
  708cff:	c4 43 fd 01 ef d8    	vpermpd ymm13,ymm15,0xd8
  708d05:	c4 c3 fd 01 c6 d8    	vpermpd ymm0,ymm14,0xd8
  708d0b:	c5 14 58 f0          	vaddps ymm14,ymm13,ymm0
  708d0f:	c4 62 0d ac c1       	vfnmadd213ps ymm8,ymm14,ymm1
  708d14:	c5 8c 58 f9          	vaddps ymm7,ymm14,ymm1
  708d18:	c4 41 34 5c ca       	vsubps ymm9,ymm9,ymm10
  708d1d:	c5 5c 58 fa          	vaddps ymm15,ymm4,ymm2
  708d21:	c5 7c 11 7c 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm15
  708d27:	c5 94 5c c0          	vsubps ymm0,ymm13,ymm0
  708d2b:	c4 62 7d 18 15 a0 c5 	vbroadcastss ymm10,DWORD PTR [rip+0xffffffffff96c5a0]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  708d32:	96 ff 
  708d34:	c5 fc 10 4c 24 20    	vmovups ymm1,YMMWORD PTR [rsp+0x20]
  708d3a:	c5 74 5c 6c 24 40    	vsubps ymm13,ymm1,YMMWORD PTR [rsp+0x40]
  708d40:	c5 a4 58 cf          	vaddps ymm1,ymm11,ymm7
  708d44:	c5 fc 11 4c 24 60    	vmovups YMMWORD PTR [rsp+0x60],ymm1
  708d4a:	c4 41 34 59 ca       	vmulps ymm9,ymm9,ymm10
  708d4f:	c5 fc 10 4c 24 c0    	vmovups ymm1,YMMWORD PTR [rsp-0x40]
  708d55:	c5 f4 5c 5c 24 80    	vsubps ymm3,ymm1,YMMWORD PTR [rsp-0x80]
  708d5b:	c5 34 58 f5          	vaddps ymm14,ymm9,ymm5
  708d5f:	c5 ac 59 c0          	vmulps ymm0,ymm10,ymm0
  708d63:	c4 c1 14 59 e2       	vmulps ymm4,ymm13,ymm10
  708d68:	c5 ac 59 db          	vmulps ymm3,ymm10,ymm3
  708d6c:	c5 4c 58 d0          	vaddps ymm10,ymm6,ymm0
  708d70:	c4 c1 54 5c e9       	vsubps ymm5,ymm5,ymm9
  708d75:	c4 c1 0c 5c ca       	vsubps ymm1,ymm14,ymm10
  708d7a:	c5 cc 5c c0          	vsubps ymm0,ymm6,ymm0
  708d7e:	c5 9c 5c f4          	vsubps ymm6,ymm12,ymm4
  708d82:	c5 1c 58 cc          	vaddps ymm9,ymm12,ymm4
  708d86:	c5 3c 5c e3          	vsubps ymm12,ymm8,ymm3
  708d8a:	c5 bc 58 db          	vaddps ymm3,ymm8,ymm3
  708d8e:	c4 c1 4c 5c e4       	vsubps ymm4,ymm6,ymm12
  708d93:	c5 fc 11 64 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm4
  708d99:	c5 fc 10 64 24 e0    	vmovups ymm4,YMMWORD PTR [rsp-0x20]
  708d9f:	c5 5c 5c c2          	vsubps ymm8,ymm4,ymm2
  708da3:	c5 d4 58 d0          	vaddps ymm2,ymm5,ymm0
  708da7:	c5 fc 11 94 24 a0 00 	vmovups YMMWORD PTR [rsp+0xa0],ymm2
  708dae:	00 00 
  708db0:	c5 24 5c ef          	vsubps ymm13,ymm11,ymm7
  708db4:	c5 b4 58 fb          	vaddps ymm7,ymm9,ymm3
  708db8:	c4 41 0c 58 f2       	vaddps ymm14,ymm14,ymm10
  708dbd:	c5 9c 58 f6          	vaddps ymm6,ymm12,ymm6
  708dc1:	c5 d4 5c e8          	vsubps ymm5,ymm5,ymm0
  708dc5:	c5 34 5c d3          	vsubps ymm10,ymm9,ymm3
  708dc9:	c4 c3 05 06 c6 31    	vperm2f128 ymm0,ymm15,ymm14,0x31
  708dcf:	c5 fc 11 04 24       	vmovups YMMWORD PTR [rsp],ymm0
  708dd4:	c4 e3 75 06 dd 31    	vperm2f128 ymm3,ymm1,ymm5,0x31
  708dda:	c5 fc 11 5c 24 e0    	vmovups YMMWORD PTR [rsp-0x20],ymm3
  708de0:	c5 7c 28 e1          	vmovaps ymm12,ymm1
  708de4:	c4 e3 7d 19 d1 01    	vextractf128 xmm1,ymm2,0x1
  708dea:	c5 fc 11 8c 24 e0 00 	vmovups YMMWORD PTR [rsp+0xe0],ymm1
  708df1:	00 00 
  708df3:	c4 63 7d 19 c2 01    	vextractf128 xmm2,ymm8,0x1
  708df9:	c5 fc 11 94 24 c0 00 	vmovups YMMWORD PTR [rsp+0xc0],ymm2
  708e00:	00 00 
  708e02:	c4 41 7c 28 c8       	vmovaps ymm9,ymm8
  708e07:	c5 fc 14 c3          	vunpcklps ymm0,ymm0,ymm3
  708e0b:	c5 fc 11 44 24 40    	vmovups YMMWORD PTR [rsp+0x40],ymm0
  708e11:	c5 f4 14 da          	vunpcklps ymm3,ymm1,ymm2
  708e15:	c5 fc 11 5c 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm3
  708e1b:	c5 fd 14 e3          	vunpcklpd ymm4,ymm0,ymm3
  708e1f:	c5 7c 10 5c 24 60    	vmovups ymm11,YMMWORD PTR [rsp+0x60]
  708e25:	c4 e3 25 06 c6 31    	vperm2f128 ymm0,ymm11,ymm6,0x31
  708e2b:	c5 fc 11 84 24 80 00 	vmovups YMMWORD PTR [rsp+0x80],ymm0
  708e32:	00 00 
  708e34:	c5 7c 28 fe          	vmovaps ymm15,ymm6
  708e38:	c4 63 2d 06 44 24 80 	vperm2f128 ymm8,ymm10,YMMWORD PTR [rsp-0x80],0x13
  708e3f:	13 
  708e40:	c5 7c 11 84 24 20 01 	vmovups YMMWORD PTR [rsp+0x120],ymm8
  708e47:	00 00 
  708e49:	c4 e3 7d 19 fe 01    	vextractf128 xmm6,ymm7,0x1
  708e4f:	c5 fc 28 d7          	vmovaps ymm2,ymm7
  708e53:	c5 7c 29 e9          	vmovaps ymm1,ymm13
  708e57:	c4 63 7d 19 eb 01    	vextractf128 xmm3,ymm13,0x1
  708e5d:	c4 c1 7c 14 f8       	vunpcklps ymm7,ymm0,ymm8
  708e62:	c5 fc 11 bc 24 60 01 	vmovups YMMWORD PTR [rsp+0x160],ymm7
  708e69:	00 00 
  708e6b:	c5 cc 14 c3          	vunpcklps ymm0,ymm6,ymm3
  708e6f:	c5 fc 11 84 24 80 01 	vmovups YMMWORD PTR [rsp+0x180],ymm0
  708e76:	00 00 
  708e78:	c5 c5 14 c0          	vunpcklpd ymm0,ymm7,ymm0
  708e7c:	c5 7c 10 82 00 01 00 	vmovups ymm8,YMMWORD PTR [rdx+0x100]
  708e83:	00 
  708e84:	c5 fc 10 ba 20 01 00 	vmovups ymm7,YMMWORD PTR [rdx+0x120]
  708e8b:	00 
  708e8c:	c5 3c 59 ec          	vmulps ymm13,ymm8,ymm4
  708e90:	c4 62 7d bc ef       	vfnmadd231ps ymm13,ymm0,ymm7
  708e95:	c5 7c 11 6c 24 20    	vmovups YMMWORD PTR [rsp+0x20],ymm13
  708e9b:	c5 bc 59 c0          	vmulps ymm0,ymm8,ymm0
  708e9f:	c4 e2 5d b8 c7       	vfmadd231ps ymm0,ymm4,ymm7
  708ea4:	c5 fc 11 84 24 40 01 	vmovups YMMWORD PTR [rsp+0x140],ymm0
  708eab:	00 00 
  708ead:	c5 fc 10 44 24 a0    	vmovups ymm0,YMMWORD PTR [rsp-0x60]
  708eb3:	c4 43 7d 18 f6 01    	vinsertf128 ymm14,ymm0,xmm14,0x1
  708eb9:	c4 63 1d 18 e5 01    	vinsertf128 ymm12,ymm12,xmm5,0x1
  708ebf:	c4 43 25 18 ef 01    	vinsertf128 ymm13,ymm11,xmm15,0x1
  708ec5:	c5 fc 10 44 24 80    	vmovups ymm0,YMMWORD PTR [rsp-0x80]
  708ecb:	c4 43 7d 18 d2 01    	vinsertf128 ymm10,ymm0,xmm10,0x1
  708ed1:	c5 78 28 9c 24 a0 00 	vmovaps xmm11,XMMWORD PTR [rsp+0xa0]
  708ed8:	00 00 
  708eda:	c5 78 29 cc          	vmovaps xmm4,xmm9
  708ede:	c5 78 28 c2          	vmovaps xmm8,xmm2
  708ee2:	c5 f8 28 f9          	vmovaps xmm7,xmm1
  708ee6:	c4 c1 0c 15 c4       	vunpckhps ymm0,ymm14,ymm12
  708eeb:	c5 fc 11 84 24 a0 00 	vmovups YMMWORD PTR [rsp+0xa0],ymm0
  708ef2:	00 00 
  708ef4:	c5 a4 15 cc          	vunpckhps ymm1,ymm11,ymm4
  708ef8:	c5 fc 11 4c 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm1
  708efe:	c5 fd 14 d1          	vunpcklpd ymm2,ymm0,ymm1
  708f02:	c4 c1 14 15 c2       	vunpckhps ymm0,ymm13,ymm10
  708f07:	c5 fc 11 44 24 60    	vmovups YMMWORD PTR [rsp+0x60],ymm0
  708f0d:	c5 3c 15 ff          	vunpckhps ymm15,ymm8,ymm7
  708f11:	c4 c1 7d 14 ef       	vunpcklpd ymm5,ymm0,ymm15
  708f16:	c5 fc 10 82 80 00 00 	vmovups ymm0,YMMWORD PTR [rdx+0x80]
  708f1d:	00 
  708f1e:	c5 fc 10 8a a0 00 00 	vmovups ymm1,YMMWORD PTR [rdx+0xa0]
  708f25:	00 
  708f26:	c5 7c 59 ca          	vmulps ymm9,ymm0,ymm2
  708f2a:	c4 62 55 bc c9       	vfnmadd231ps ymm9,ymm5,ymm1
  708f2f:	c5 7c 11 4c 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm9
  708f35:	c5 7c 59 cd          	vmulps ymm9,ymm0,ymm5
  708f39:	c4 62 6d b8 c9       	vfmadd231ps ymm9,ymm2,ymm1
  708f3e:	c5 fc 10 04 24       	vmovups ymm0,YMMWORD PTR [rsp]
  708f43:	c5 fc 15 4c 24 e0    	vunpckhps ymm1,ymm0,YMMWORD PTR [rsp-0x20]
  708f49:	c5 fc 11 8c 24 00 01 	vmovups YMMWORD PTR [rsp+0x100],ymm1
  708f50:	00 00 
  708f52:	c5 fc 10 84 24 e0 00 	vmovups ymm0,YMMWORD PTR [rsp+0xe0]
  708f59:	00 00 
  708f5b:	c5 fc 15 94 24 c0 00 	vunpckhps ymm2,ymm0,YMMWORD PTR [rsp+0xc0]
  708f62:	00 00 
  708f64:	c5 fc 11 54 24 e0    	vmovups YMMWORD PTR [rsp-0x20],ymm2
  708f6a:	c5 fc 10 84 24 80 00 	vmovups ymm0,YMMWORD PTR [rsp+0x80]
  708f71:	00 00 
  708f73:	c5 fc 15 84 24 20 01 	vunpckhps ymm0,ymm0,YMMWORD PTR [rsp+0x120]
  708f7a:	00 00 
  708f7c:	c5 fc 11 84 24 c0 00 	vmovups YMMWORD PTR [rsp+0xc0],ymm0
  708f83:	00 00 
  708f85:	c5 cc 15 eb          	vunpckhps ymm5,ymm6,ymm3
  708f89:	c5 fc 11 ac 24 e0 00 	vmovups YMMWORD PTR [rsp+0xe0],ymm5
  708f90:	00 00 
  708f92:	c5 f5 14 da          	vunpcklpd ymm3,ymm1,ymm2
  708f96:	c5 fd 14 cd          	vunpcklpd ymm1,ymm0,ymm5
  708f9a:	c5 fc 10 92 80 01 00 	vmovups ymm2,YMMWORD PTR [rdx+0x180]
  708fa1:	00 
  708fa2:	c5 fc 10 82 a0 01 00 	vmovups ymm0,YMMWORD PTR [rdx+0x1a0]
  708fa9:	00 
  708faa:	c5 ec 59 eb          	vmulps ymm5,ymm2,ymm3
  708fae:	c4 e2 75 bc e8       	vfnmadd231ps ymm5,ymm1,ymm0
  708fb3:	c5 fc 11 2c 24       	vmovups YMMWORD PTR [rsp],ymm5
  708fb8:	c5 ec 59 f1          	vmulps ymm6,ymm2,ymm1
  708fbc:	c4 e2 65 b8 f0       	vfmadd231ps ymm6,ymm3,ymm0
  708fc1:	c4 41 0c 14 e4       	vunpcklps ymm12,ymm14,ymm12
  708fc6:	c5 a4 14 c4          	vunpcklps ymm0,ymm11,ymm4
  708fca:	c5 fc 11 84 24 80 00 	vmovups YMMWORD PTR [rsp+0x80],ymm0
  708fd1:	00 00 
  708fd3:	c4 41 14 14 f2       	vunpcklps ymm14,ymm13,ymm10
  708fd8:	c5 3c 14 df          	vunpcklps ymm11,ymm8,ymm7
  708fdc:	c5 9d 15 c0          	vunpckhpd ymm0,ymm12,ymm0
  708fe0:	c4 c1 0d 15 cb       	vunpckhpd ymm1,ymm14,ymm11
  708fe5:	c5 fc 10 52 40       	vmovups ymm2,YMMWORD PTR [rdx+0x40]
  708fea:	c5 fc 10 7a 60       	vmovups ymm7,YMMWORD PTR [rdx+0x60]
  708fef:	c5 ec 59 e8          	vmulps ymm5,ymm2,ymm0
  708ff3:	c4 e2 75 bc ef       	vfnmadd231ps ymm5,ymm1,ymm7
  708ff8:	c5 ec 59 e1          	vmulps ymm4,ymm2,ymm1
  708ffc:	c4 e2 7d b8 e7       	vfmadd231ps ymm4,ymm0,ymm7
  709001:	c5 fc 10 44 24 40    	vmovups ymm0,YMMWORD PTR [rsp+0x40]
  709007:	c5 fd 15 7c 24 c0    	vunpckhpd ymm7,ymm0,YMMWORD PTR [rsp-0x40]
  70900d:	c5 fc 10 84 24 60 01 	vmovups ymm0,YMMWORD PTR [rsp+0x160]
  709014:	00 00 
  709016:	c5 fd 15 8c 24 80 01 	vunpckhpd ymm1,ymm0,YMMWORD PTR [rsp+0x180]
  70901d:	00 00 
  70901f:	c5 7c 10 82 40 01 00 	vmovups ymm8,YMMWORD PTR [rdx+0x140]
  709026:	00 
  709027:	c5 7c 10 92 60 01 00 	vmovups ymm10,YMMWORD PTR [rdx+0x160]
  70902e:	00 
  70902f:	c5 bc 59 d7          	vmulps ymm2,ymm8,ymm7
  709033:	c4 c2 75 bc d2       	vfnmadd231ps ymm2,ymm1,ymm10
  709038:	c5 bc 59 d9          	vmulps ymm3,ymm8,ymm1
  70903c:	c4 c2 45 b8 da       	vfmadd231ps ymm3,ymm7,ymm10
  709041:	c5 fc 10 84 24 a0 00 	vmovups ymm0,YMMWORD PTR [rsp+0xa0]
  709048:	00 00 
  70904a:	c5 fd 15 7c 24 a0    	vunpckhpd ymm7,ymm0,YMMWORD PTR [rsp-0x60]
  709050:	c5 fc 10 44 24 60    	vmovups ymm0,YMMWORD PTR [rsp+0x60]
  709056:	c4 41 7d 15 c7       	vunpckhpd ymm8,ymm0,ymm15
  70905b:	c5 7c 10 92 c0 00 00 	vmovups ymm10,YMMWORD PTR [rdx+0xc0]
  709062:	00 
  709063:	c5 7c 10 aa e0 00 00 	vmovups ymm13,YMMWORD PTR [rdx+0xe0]
  70906a:	00 
  70906b:	c5 2c 59 ff          	vmulps ymm15,ymm10,ymm7
  70906f:	c4 42 3d bc fd       	vfnmadd231ps ymm15,ymm8,ymm13
  709074:	c4 41 2c 59 c0       	vmulps ymm8,ymm10,ymm8
  709079:	c4 42 45 b8 c5       	vfmadd231ps ymm8,ymm7,ymm13
  70907e:	c5 fc 10 84 24 00 01 	vmovups ymm0,YMMWORD PTR [rsp+0x100]
  709085:	00 00 
  709087:	c5 fd 15 7c 24 e0    	vunpckhpd ymm7,ymm0,YMMWORD PTR [rsp-0x20]
  70908d:	c5 fc 10 84 24 c0 00 	vmovups ymm0,YMMWORD PTR [rsp+0xc0]
  709094:	00 00 
  709096:	c5 7d 15 94 24 e0 00 	vunpckhpd ymm10,ymm0,YMMWORD PTR [rsp+0xe0]
  70909d:	00 00 
  70909f:	c5 7c 10 aa c0 01 00 	vmovups ymm13,YMMWORD PTR [rdx+0x1c0]
  7090a6:	00 
  7090a7:	c5 fc 10 8a e0 01 00 	vmovups ymm1,YMMWORD PTR [rdx+0x1e0]
  7090ae:	00 
  7090af:	c5 94 59 c7          	vmulps ymm0,ymm13,ymm7
  7090b3:	c4 e2 2d bc c1       	vfnmadd231ps ymm0,ymm10,ymm1
  7090b8:	c4 41 14 59 d2       	vmulps ymm10,ymm13,ymm10
  7090bd:	c4 62 45 b8 d1       	vfmadd231ps ymm10,ymm7,ymm1
  7090c2:	c5 9d 14 8c 24 80 00 	vunpcklpd ymm1,ymm12,YMMWORD PTR [rsp+0x80]
  7090c9:	00 00 
  7090cb:	c4 41 0d 14 e3       	vunpcklpd ymm12,ymm14,ymm11
  7090d0:	c5 fc 10 7c 24 20    	vmovups ymm7,YMMWORD PTR [rsp+0x20]
  7090d6:	c5 44 58 d9          	vaddps ymm11,ymm7,ymm1
  7090da:	c5 f4 5c cf          	vsubps ymm1,ymm1,ymm7
  7090de:	c5 fc 11 4c 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm1
  7090e4:	c5 34 58 f6          	vaddps ymm14,ymm9,ymm6
  7090e8:	c5 b4 5c ce          	vsubps ymm1,ymm9,ymm6
  7090ec:	c5 fc 11 4c 24 40    	vmovups YMMWORD PTR [rsp+0x40],ymm1
  7090f2:	c5 d4 58 ca          	vaddps ymm1,ymm5,ymm2
  7090f6:	c5 d4 5c ea          	vsubps ymm5,ymm5,ymm2
  7090fa:	c5 dc 58 f3          	vaddps ymm6,ymm4,ymm3
  7090fe:	c5 dc 5c db          	vsubps ymm3,ymm4,ymm3
  709102:	c4 c1 3c 58 e2       	vaddps ymm4,ymm8,ymm10
  709107:	c4 41 3c 5c c2       	vsubps ymm8,ymm8,ymm10
  70910c:	c5 04 58 c8          	vaddps ymm9,ymm15,ymm0
  709110:	c5 84 5c c0          	vsubps ymm0,ymm15,ymm0
  709114:	c5 fc 10 94 24 40 01 	vmovups ymm2,YMMWORD PTR [rsp+0x140]
  70911b:	00 00 
  70911d:	c5 1c 58 fa          	vaddps ymm15,ymm12,ymm2
  709121:	c5 9c 5c d2          	vsubps ymm2,ymm12,ymm2
  709125:	c5 fc 11 54 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm2
  70912b:	c5 fc 10 54 24 80    	vmovups ymm2,YMMWORD PTR [rsp-0x80]
  709131:	c5 fc 10 3c 24       	vmovups ymm7,YMMWORD PTR [rsp]
  709136:	c5 6c 58 d7          	vaddps ymm10,ymm2,ymm7
  70913a:	c5 44 5c e2          	vsubps ymm12,ymm7,ymm2
  70913e:	c5 54 58 eb          	vaddps ymm13,ymm5,ymm3
  709142:	c5 e4 5c dd          	vsubps ymm3,ymm3,ymm5
  709146:	c5 bc 5c e8          	vsubps ymm5,ymm8,ymm0
  70914a:	c5 bc 58 c0          	vaddps ymm0,ymm8,ymm0
  70914e:	c4 62 7d 18 05 45 c2 	vbroadcastss ymm8,DWORD PTR [rip+0xffffffffff96c245]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  709155:	96 ff 
  709157:	c4 c1 14 59 f8       	vmulps ymm7,ymm13,ymm8
  70915c:	c5 bc 59 d5          	vmulps ymm2,ymm8,ymm5
  709160:	c5 bc 59 db          	vmulps ymm3,ymm8,ymm3
  709164:	c5 bc 59 c0          	vmulps ymm0,ymm8,ymm0
  709168:	c4 c1 24 58 ea       	vaddps ymm5,ymm11,ymm10
  70916d:	c5 fc 11 6c 24 20    	vmovups YMMWORD PTR [rsp+0x20],ymm5
  709173:	c4 41 24 5c c2       	vsubps ymm8,ymm11,ymm10
  709178:	c5 4c 58 d4          	vaddps ymm10,ymm6,ymm4
  70917c:	c5 cc 5c f4          	vsubps ymm6,ymm6,ymm4
  709180:	c4 41 0c 58 ef       	vaddps ymm13,ymm14,ymm15
  709185:	c4 41 04 5c f6       	vsubps ymm14,ymm15,ymm14
  70918a:	c5 34 58 f9          	vaddps ymm15,ymm9,ymm1
  70918e:	c5 34 5c c9          	vsubps ymm9,ymm9,ymm1
  709192:	c5 fc 10 4c 24 c0    	vmovups ymm1,YMMWORD PTR [rsp-0x40]
  709198:	c5 fc 10 6c 24 40    	vmovups ymm5,YMMWORD PTR [rsp+0x40]
  70919e:	c5 f4 58 e5          	vaddps ymm4,ymm1,ymm5
  7091a2:	c5 74 5c dd          	vsubps ymm11,ymm1,ymm5
  7091a6:	c5 e4 5c c8          	vsubps ymm1,ymm3,ymm0
  7091aa:	c5 e4 58 e8          	vaddps ymm5,ymm3,ymm0
  7091ae:	c5 fc 10 44 24 a0    	vmovups ymm0,YMMWORD PTR [rsp-0x60]
  7091b4:	c5 9c 58 d8          	vaddps ymm3,ymm12,ymm0
  7091b8:	c4 41 7c 5c e4       	vsubps ymm12,ymm0,ymm12
  7091bd:	c5 c4 58 c2          	vaddps ymm0,ymm7,ymm2
  7091c1:	c5 ec 5c ff          	vsubps ymm7,ymm2,ymm7
  7091c5:	c5 dc 58 d0          	vaddps ymm2,ymm4,ymm0
  7091c9:	c5 dc 5c c0          	vsubps ymm0,ymm4,ymm0
  7091cd:	c5 fc 11 44 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm0
  7091d3:	c5 e4 58 c1          	vaddps ymm0,ymm3,ymm1
  7091d7:	c5 e4 5c e1          	vsubps ymm4,ymm3,ymm1
  7091db:	c5 bc 58 de          	vaddps ymm3,ymm8,ymm6
  7091df:	c5 bc 5c ce          	vsubps ymm1,ymm8,ymm6
  7091e3:	c5 fc 11 4c 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm1
  7091e9:	c4 c1 0c 58 f1       	vaddps ymm6,ymm14,ymm9
  7091ee:	c4 41 0c 5c c1       	vsubps ymm8,ymm14,ymm9
  7091f3:	c5 24 58 cd          	vaddps ymm9,ymm11,ymm5
  7091f7:	c5 24 5c f5          	vsubps ymm14,ymm11,ymm5
  7091fb:	c5 1c 58 df          	vaddps ymm11,ymm12,ymm7
  7091ff:	c5 9c 5c ef          	vsubps ymm5,ymm12,ymm7
  709203:	c5 fc 10 4c 24 20    	vmovups ymm1,YMMWORD PTR [rsp+0x20]
  709209:	c4 41 74 5c e7       	vsubps ymm12,ymm1,ymm15
  70920e:	c5 04 58 f9          	vaddps ymm15,ymm15,ymm1
  709212:	c4 c1 14 5c fa       	vsubps ymm7,ymm13,ymm10
  709217:	c4 41 14 58 d2       	vaddps ymm10,ymm13,ymm10
  70921c:	c4 41 04 14 ea       	vunpcklps ymm13,ymm15,ymm10
  709221:	c4 c1 00 14 ca       	vunpcklps xmm1,xmm15,xmm10
  709226:	c4 41 00 15 d2       	vunpckhps xmm10,xmm15,xmm10
  70922b:	c5 78 11 56 10       	vmovups XMMWORD PTR [rsi+0x10],xmm10
  709230:	c5 f8 11 0e          	vmovups XMMWORD PTR [rsi],xmm1
  709234:	c4 63 7d 19 6e 20 01 	vextractf128 XMMWORD PTR [rsi+0x20],ymm13,0x1
  70923b:	c5 ec 14 c8          	vunpcklps ymm1,ymm2,ymm0
  70923f:	c5 68 14 d0          	vunpcklps xmm10,xmm2,xmm0
  709243:	c5 e8 15 c0          	vunpckhps xmm0,xmm2,xmm0
  709247:	c5 f8 11 46 40       	vmovups XMMWORD PTR [rsi+0x40],xmm0
  70924c:	c5 78 11 56 30       	vmovups XMMWORD PTR [rsi+0x30],xmm10
  709251:	c4 e3 7d 19 4e 50 01 	vextractf128 XMMWORD PTR [rsi+0x50],ymm1,0x1
  709258:	c5 e4 14 c6          	vunpcklps ymm0,ymm3,ymm6
  70925c:	c5 e0 14 ce          	vunpcklps xmm1,xmm3,xmm6
  709260:	c5 e0 15 d6          	vunpckhps xmm2,xmm3,xmm6
  709264:	c5 f8 11 56 70       	vmovups XMMWORD PTR [rsi+0x70],xmm2
  709269:	c5 f8 11 4e 60       	vmovups XMMWORD PTR [rsi+0x60],xmm1
  70926e:	c4 e3 7d 19 86 80 00 	vextractf128 XMMWORD PTR [rsi+0x80],ymm0,0x1
  709275:	00 00 01 
  709278:	c4 c1 34 14 c3       	vunpcklps ymm0,ymm9,ymm11
  70927d:	c4 c1 30 14 cb       	vunpcklps xmm1,xmm9,xmm11
  709282:	c4 c1 30 15 d3       	vunpckhps xmm2,xmm9,xmm11
  709287:	c5 f8 11 96 a0 00 00 	vmovups XMMWORD PTR [rsi+0xa0],xmm2
  70928e:	00 
  70928f:	c5 f8 11 8e 90 00 00 	vmovups XMMWORD PTR [rsi+0x90],xmm1
  709296:	00 
  709297:	c4 e3 7d 19 86 b0 00 	vextractf128 XMMWORD PTR [rsi+0xb0],ymm0,0x1
  70929e:	00 00 01 
  7092a1:	c5 9c 14 c7          	vunpcklps ymm0,ymm12,ymm7
  7092a5:	c5 98 14 cf          	vunpcklps xmm1,xmm12,xmm7
  7092a9:	c5 98 15 d7          	vunpckhps xmm2,xmm12,xmm7
  7092ad:	c5 f8 11 96 d0 00 00 	vmovups XMMWORD PTR [rsi+0xd0],xmm2
  7092b4:	00 
  7092b5:	c5 f8 11 8e c0 00 00 	vmovups XMMWORD PTR [rsi+0xc0],xmm1
  7092bc:	00 
  7092bd:	c4 e3 7d 19 86 e0 00 	vextractf128 XMMWORD PTR [rsi+0xe0],ymm0,0x1
  7092c4:	00 00 01 
  7092c7:	c5 fc 10 54 24 c0    	vmovups ymm2,YMMWORD PTR [rsp-0x40]
  7092cd:	c5 ec 14 c4          	vunpcklps ymm0,ymm2,ymm4
  7092d1:	c5 e8 14 cc          	vunpcklps xmm1,xmm2,xmm4
  7092d5:	c5 e8 15 d4          	vunpckhps xmm2,xmm2,xmm4
  7092d9:	c5 f8 11 96 00 01 00 	vmovups XMMWORD PTR [rsi+0x100],xmm2
  7092e0:	00 
  7092e1:	c5 f8 11 8e f0 00 00 	vmovups XMMWORD PTR [rsi+0xf0],xmm1
  7092e8:	00 
  7092e9:	c4 e3 7d 19 86 10 01 	vextractf128 XMMWORD PTR [rsi+0x110],ymm0,0x1
  7092f0:	00 00 01 
  7092f3:	c5 fc 10 54 24 80    	vmovups ymm2,YMMWORD PTR [rsp-0x80]
  7092f9:	c4 c1 6c 14 c0       	vunpcklps ymm0,ymm2,ymm8
  7092fe:	c4 c1 68 14 c8       	vunpcklps xmm1,xmm2,xmm8
  709303:	c4 c1 68 15 d0       	vunpckhps xmm2,xmm2,xmm8
  709308:	c5 f8 11 96 30 01 00 	vmovups XMMWORD PTR [rsi+0x130],xmm2
  70930f:	00 
  709310:	c5 f8 11 8e 20 01 00 	vmovups XMMWORD PTR [rsi+0x120],xmm1
  709317:	00 
  709318:	c4 e3 7d 19 86 40 01 	vextractf128 XMMWORD PTR [rsi+0x140],ymm0,0x1
  70931f:	00 00 01 
  709322:	c5 8c 14 c5          	vunpcklps ymm0,ymm14,ymm5
  709326:	c5 88 14 cd          	vunpcklps xmm1,xmm14,xmm5
  70932a:	c5 88 15 d5          	vunpckhps xmm2,xmm14,xmm5
  70932e:	c5 f8 11 96 60 01 00 	vmovups XMMWORD PTR [rsi+0x160],xmm2
  709335:	00 
  709336:	c5 f8 11 8e 50 01 00 	vmovups XMMWORD PTR [rsi+0x150],xmm1
  70933d:	00 
  70933e:	c4 e3 7d 19 86 70 01 	vextractf128 XMMWORD PTR [rsi+0x170],ymm0,0x1
  709345:	00 00 01 
  709348:	48 81 c4 a8 01 00 00 	add    rsp,0x1a8
  70934f:	c5 f8 77             	vzeroupper
  709352:	c3                   	ret
