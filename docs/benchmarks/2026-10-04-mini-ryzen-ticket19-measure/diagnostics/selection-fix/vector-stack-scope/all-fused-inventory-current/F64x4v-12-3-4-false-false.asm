
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b98dc0 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle>:
  b98dc0:	c5 fd 10 07          	vmovupd ymm0,YMMWORD PTR [rdi]
  b98dc4:	c5 fd 10 4f 20       	vmovupd ymm1,YMMWORD PTR [rdi+0x20]
  b98dc9:	c5 fd 10 57 40       	vmovupd ymm2,YMMWORD PTR [rdi+0x40]
  b98dce:	c5 fd 10 5f 60       	vmovupd ymm3,YMMWORD PTR [rdi+0x60]
  b98dd3:	c4 e3 7d 06 e1 31    	vperm2f128 ymm4,ymm0,ymm1,0x31
  b98dd9:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  b98ddf:	c5 fd 14 cc          	vunpcklpd ymm1,ymm0,ymm4
  b98de3:	c5 fd 15 c4          	vunpckhpd ymm0,ymm0,ymm4
  b98de7:	c4 e3 6d 06 e3 31    	vperm2f128 ymm4,ymm2,ymm3,0x31
  b98ded:	c4 e3 6d 06 d3 20    	vperm2f128 ymm2,ymm2,ymm3,0x20
  b98df3:	c5 ed 14 dc          	vunpcklpd ymm3,ymm2,ymm4
  b98df7:	c5 ed 15 d4          	vunpckhpd ymm2,ymm2,ymm4
  b98dfb:	c5 fd 10 a7 80 00 00 	vmovupd ymm4,YMMWORD PTR [rdi+0x80]
  b98e02:	00 
  b98e03:	c5 fd 10 af a0 00 00 	vmovupd ymm5,YMMWORD PTR [rdi+0xa0]
  b98e0a:	00 
  b98e0b:	c4 e3 5d 06 f5 31    	vperm2f128 ymm6,ymm4,ymm5,0x31
  b98e11:	c4 e3 5d 06 e5 20    	vperm2f128 ymm4,ymm4,ymm5,0x20
  b98e17:	c5 dd 14 ee          	vunpcklpd ymm5,ymm4,ymm6
  b98e1b:	c5 dd 15 e6          	vunpckhpd ymm4,ymm4,ymm6
  b98e1f:	c5 e5 58 f5          	vaddpd ymm6,ymm3,ymm5
  b98e23:	c5 f5 58 fe          	vaddpd ymm7,ymm1,ymm6
  b98e27:	c5 6d 58 c4          	vaddpd ymm8,ymm2,ymm4
  b98e2b:	c4 62 7d 19 0d 64 bc 	vbroadcastsd ymm9,QWORD PTR [rip+0xffffffffff4dbc64]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  b98e32:	4d ff 
  b98e34:	c5 3d 58 d0          	vaddpd ymm10,ymm8,ymm0
  b98e38:	c4 e2 b5 ac f1       	vfnmadd213pd ymm6,ymm9,ymm1
  b98e3d:	c4 e2 7d 19 0d da bd 	vbroadcastsd ymm1,QWORD PTR [rip+0xffffffffff4dbdda]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  b98e44:	4d ff 
  b98e46:	c5 ed 5c d4          	vsubpd ymm2,ymm2,ymm4
  b98e4a:	c5 ed 59 d1          	vmulpd ymm2,ymm2,ymm1
  b98e4e:	c5 cd 58 e2          	vaddpd ymm4,ymm6,ymm2
  b98e52:	c4 62 bd ac c8       	vfnmadd213pd ymm9,ymm8,ymm0
  b98e57:	c5 e5 5c c5          	vsubpd ymm0,ymm3,ymm5
  b98e5b:	c5 fd 59 c1          	vmulpd ymm0,ymm0,ymm1
  b98e5f:	c5 b5 5c c8          	vsubpd ymm1,ymm9,ymm0
  b98e63:	c5 cd 5c d2          	vsubpd ymm2,ymm6,ymm2
  b98e67:	c5 b5 58 c0          	vaddpd ymm0,ymm9,ymm0
  b98e6b:	c4 e3 45 18 da 01    	vinsertf128 ymm3,ymm7,xmm2,0x1
  b98e71:	c4 e3 45 06 d2 31    	vperm2f128 ymm2,ymm7,ymm2,0x31
  b98e77:	c5 f9 28 ec          	vmovapd xmm5,xmm4
  b98e7b:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  b98e81:	c5 e5 14 f5          	vunpcklpd ymm6,ymm3,ymm5
  b98e85:	c5 e5 15 dd          	vunpckhpd ymm3,ymm3,ymm5
  b98e89:	c5 ed 14 ec          	vunpcklpd ymm5,ymm2,ymm4
  b98e8d:	c5 ed 15 d4          	vunpckhpd ymm2,ymm2,ymm4
  b98e91:	c4 e3 2d 18 e0 01    	vinsertf128 ymm4,ymm10,xmm0,0x1
  b98e97:	c4 e3 2d 06 c0 31    	vperm2f128 ymm0,ymm10,ymm0,0x31
  b98e9d:	c5 f9 28 f9          	vmovapd xmm7,xmm1
  b98ea1:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  b98ea7:	c5 5d 14 c7          	vunpcklpd ymm8,ymm4,ymm7
  b98eab:	c5 dd 15 e7          	vunpckhpd ymm4,ymm4,ymm7
  b98eaf:	c5 fd 15 f9          	vunpckhpd ymm7,ymm0,ymm1
  b98eb3:	c5 fd 14 c1          	vunpcklpd ymm0,ymm0,ymm1
  b98eb7:	c5 fd 10 4a 40       	vmovupd ymm1,YMMWORD PTR [rdx+0x40]
  b98ebc:	c5 7d 10 4a 60       	vmovupd ymm9,YMMWORD PTR [rdx+0x60]
  b98ec1:	c5 7d 10 92 80 00 00 	vmovupd ymm10,YMMWORD PTR [rdx+0x80]
  b98ec8:	00 
  b98ec9:	c5 7d 10 9a a0 00 00 	vmovupd ymm11,YMMWORD PTR [rdx+0xa0]
  b98ed0:	00 
  b98ed1:	c5 7d 10 a2 c0 00 00 	vmovupd ymm12,YMMWORD PTR [rdx+0xc0]
  b98ed8:	00 
  b98ed9:	c5 7d 10 aa e0 00 00 	vmovupd ymm13,YMMWORD PTR [rdx+0xe0]
  b98ee0:	00 
  b98ee1:	c5 2d 59 f5          	vmulpd ymm14,ymm10,ymm5
  b98ee5:	c4 42 fd bc f3       	vfnmadd231pd ymm14,ymm0,ymm11
  b98eea:	c5 0d 58 fe          	vaddpd ymm15,ymm14,ymm6
  b98eee:	62 e1 e5 28 59 c1    	vmulpd ymm16,ymm3,ymm1
  b98ef4:	62 c2 dd 28 bc c1    	vfnmadd231pd ymm16,ymm4,ymm9
  b98efa:	62 c1 ed 28 59 cc    	vmulpd ymm17,ymm2,ymm12
  b98f00:	62 c2 c5 28 bc cd    	vfnmadd231pd ymm17,ymm7,ymm13
  b98f06:	62 a1 fd 20 58 d1    	vaddpd ymm18,ymm16,ymm17
  b98f0c:	c5 ad 59 c0          	vmulpd ymm0,ymm10,ymm0
  b98f10:	c4 c2 d5 b8 c3       	vfmadd231pd ymm0,ymm5,ymm11
  b98f15:	c5 bd 58 e8          	vaddpd ymm5,ymm8,ymm0
  b98f19:	c5 dd 59 c9          	vmulpd ymm1,ymm4,ymm1
  b98f1d:	c4 c2 e5 b8 c9       	vfmadd231pd ymm1,ymm3,ymm9
  b98f22:	c5 9d 59 df          	vmulpd ymm3,ymm12,ymm7
  b98f26:	c4 c2 ed b8 dd       	vfmadd231pd ymm3,ymm2,ymm13
  b98f2b:	c5 f5 58 d3          	vaddpd ymm2,ymm1,ymm3
  b98f2f:	c4 c1 4d 5c e6       	vsubpd ymm4,ymm6,ymm14
  b98f34:	c5 f5 5c cb          	vsubpd ymm1,ymm1,ymm3
  b98f38:	c5 dd 58 d9          	vaddpd ymm3,ymm4,ymm1
  b98f3c:	c5 bd 5c c0          	vsubpd ymm0,ymm8,ymm0
  b98f40:	62 b1 f5 20 5c f0    	vsubpd ymm6,ymm17,ymm16
  b98f46:	c5 fd 58 fe          	vaddpd ymm7,ymm0,ymm6
  b98f4a:	62 31 85 28 5c c2    	vsubpd ymm8,ymm15,ymm18
  b98f50:	c5 55 5c ca          	vsubpd ymm9,ymm5,ymm2
  b98f54:	c5 dd 5c c9          	vsubpd ymm1,ymm4,ymm1
  b98f58:	c5 fd 5c c6          	vsubpd ymm0,ymm0,ymm6
  b98f5c:	62 b1 85 28 58 e2    	vaddpd ymm4,ymm15,ymm18
  b98f62:	c5 d5 58 d2          	vaddpd ymm2,ymm5,ymm2
  b98f66:	c5 fd 28 2d f2 db 4d 	vmovapd ymm5,YMMWORD PTR [rip+0xffffffffff4ddbf2]        # 76b60 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4010>
  b98f6d:	ff 
  b98f6e:	c4 e3 7d 19 e6 01    	vextractf128 xmm6,ymm4,0x1
  b98f74:	62 f2 d5 28 7f e2    	vpermt2pd ymm4,ymm5,ymm2
  b98f7a:	c5 fd 11 26          	vmovupd YMMWORD PTR [rsi],ymm4
  b98f7e:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  b98f84:	c5 c9 14 d2          	vunpcklpd xmm2,xmm6,xmm2
  b98f88:	c5 f9 11 56 20       	vmovupd XMMWORD PTR [rsi+0x20],xmm2
  b98f8d:	c4 e3 7d 19 da 01    	vextractf128 xmm2,ymm3,0x1
  b98f93:	62 f2 d5 28 7f df    	vpermt2pd ymm3,ymm5,ymm7
  b98f99:	c5 fd 11 5e 30       	vmovupd YMMWORD PTR [rsi+0x30],ymm3
  b98f9e:	c4 e3 7d 19 fb 01    	vextractf128 xmm3,ymm7,0x1
  b98fa4:	c5 e9 14 d3          	vunpcklpd xmm2,xmm2,xmm3
  b98fa8:	c5 f9 11 56 50       	vmovupd XMMWORD PTR [rsi+0x50],xmm2
  b98fad:	c4 63 7d 19 c2 01    	vextractf128 xmm2,ymm8,0x1
  b98fb3:	62 52 d5 28 7f c1    	vpermt2pd ymm8,ymm5,ymm9
  b98fb9:	c5 7d 11 46 60       	vmovupd YMMWORD PTR [rsi+0x60],ymm8
  b98fbe:	c4 63 7d 19 cb 01    	vextractf128 xmm3,ymm9,0x1
  b98fc4:	c5 e9 14 d3          	vunpcklpd xmm2,xmm2,xmm3
  b98fc8:	c5 f9 11 96 80 00 00 	vmovupd XMMWORD PTR [rsi+0x80],xmm2
  b98fcf:	00 
  b98fd0:	62 f2 f5 28 77 e8    	vpermi2pd ymm5,ymm1,ymm0
  b98fd6:	c5 fd 11 ae 90 00 00 	vmovupd YMMWORD PTR [rsi+0x90],ymm5
  b98fdd:	00 
  b98fde:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  b98fe4:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  b98fea:	c5 f1 14 c0          	vunpcklpd xmm0,xmm1,xmm0
  b98fee:	c5 f9 11 86 b0 00 00 	vmovupd XMMWORD PTR [rsi+0xb0],xmm0
  b98ff5:	00 
  b98ff6:	c5 f8 77             	vzeroupper
  b98ff9:	c3                   	ret
