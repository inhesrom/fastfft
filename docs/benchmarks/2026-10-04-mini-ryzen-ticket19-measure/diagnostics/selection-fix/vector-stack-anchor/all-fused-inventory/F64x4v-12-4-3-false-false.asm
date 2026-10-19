
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b66c80 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle>:
  b66c80:	c5 fd 10 07          	vmovupd ymm0,YMMWORD PTR [rdi]
  b66c84:	c5 f9 10 4f 20       	vmovupd xmm1,XMMWORD PTR [rdi+0x20]
  b66c89:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  b66c8f:	c5 f9 10 4f 10       	vmovupd xmm1,XMMWORD PTR [rdi+0x10]
  b66c94:	c5 fd 14 d1          	vunpcklpd ymm2,ymm0,ymm1
  b66c98:	c5 fd 15 c1          	vunpckhpd ymm0,ymm0,ymm1
  b66c9c:	c5 fd 10 4f 30       	vmovupd ymm1,YMMWORD PTR [rdi+0x30]
  b66ca1:	c5 f9 10 5f 50       	vmovupd xmm3,XMMWORD PTR [rdi+0x50]
  b66ca6:	c4 e3 75 06 cb 20    	vperm2f128 ymm1,ymm1,ymm3,0x20
  b66cac:	c5 f9 10 5f 40       	vmovupd xmm3,XMMWORD PTR [rdi+0x40]
  b66cb1:	c5 f5 14 e3          	vunpcklpd ymm4,ymm1,ymm3
  b66cb5:	c5 f5 15 cb          	vunpckhpd ymm1,ymm1,ymm3
  b66cb9:	c5 fd 10 5f 60       	vmovupd ymm3,YMMWORD PTR [rdi+0x60]
  b66cbe:	c5 f9 10 af 80 00 00 	vmovupd xmm5,XMMWORD PTR [rdi+0x80]
  b66cc5:	00 
  b66cc6:	c4 e3 65 06 dd 20    	vperm2f128 ymm3,ymm3,ymm5,0x20
  b66ccc:	c5 f9 10 6f 70       	vmovupd xmm5,XMMWORD PTR [rdi+0x70]
  b66cd1:	c5 e5 14 f5          	vunpcklpd ymm6,ymm3,ymm5
  b66cd5:	c5 e5 15 dd          	vunpckhpd ymm3,ymm3,ymm5
  b66cd9:	c5 fd 10 af 90 00 00 	vmovupd ymm5,YMMWORD PTR [rdi+0x90]
  b66ce0:	00 
  b66ce1:	c5 f9 10 bf b0 00 00 	vmovupd xmm7,XMMWORD PTR [rdi+0xb0]
  b66ce8:	00 
  b66ce9:	c4 e3 55 06 ef 20    	vperm2f128 ymm5,ymm5,ymm7,0x20
  b66cef:	c5 f9 10 bf a0 00 00 	vmovupd xmm7,XMMWORD PTR [rdi+0xa0]
  b66cf6:	00 
  b66cf7:	c5 55 14 c7          	vunpcklpd ymm8,ymm5,ymm7
  b66cfb:	c5 d5 15 ef          	vunpckhpd ymm5,ymm5,ymm7
  b66cff:	c5 ed 58 fe          	vaddpd ymm7,ymm2,ymm6
  b66d03:	c5 3d 58 cc          	vaddpd ymm9,ymm8,ymm4
  b66d07:	c5 35 58 d7          	vaddpd ymm10,ymm9,ymm7
  b66d0b:	c5 7d 58 db          	vaddpd ymm11,ymm0,ymm3
  b66d0f:	c5 75 58 e5          	vaddpd ymm12,ymm1,ymm5
  b66d13:	c4 41 25 58 ec       	vaddpd ymm13,ymm11,ymm12
  b66d18:	c5 ed 5c d6          	vsubpd ymm2,ymm2,ymm6
  b66d1c:	c5 f5 5c cd          	vsubpd ymm1,ymm1,ymm5
  b66d20:	c5 ed 58 e9          	vaddpd ymm5,ymm2,ymm1
  b66d24:	c5 fd 5c c3          	vsubpd ymm0,ymm0,ymm3
  b66d28:	c5 bd 5c dc          	vsubpd ymm3,ymm8,ymm4
  b66d2c:	c5 e5 58 e0          	vaddpd ymm4,ymm3,ymm0
  b66d30:	c4 c1 45 5c f1       	vsubpd ymm6,ymm7,ymm9
  b66d35:	c4 c1 25 5c fc       	vsubpd ymm7,ymm11,ymm12
  b66d3a:	c5 ed 5c c9          	vsubpd ymm1,ymm2,ymm1
  b66d3e:	c5 fd 5c c3          	vsubpd ymm0,ymm0,ymm3
  b66d42:	c4 e3 2d 18 d6 01    	vinsertf128 ymm2,ymm10,xmm6,0x1
  b66d48:	c4 e3 2d 06 de 31    	vperm2f128 ymm3,ymm10,ymm6,0x31
  b66d4e:	c4 e3 55 18 f1 01    	vinsertf128 ymm6,ymm5,xmm1,0x1
  b66d54:	c4 e3 55 06 c9 31    	vperm2f128 ymm1,ymm5,ymm1,0x31
  b66d5a:	c5 e5 14 c9          	vunpcklpd ymm1,ymm3,ymm1
  b66d5e:	c5 ed 14 de          	vunpcklpd ymm3,ymm2,ymm6
  b66d62:	c5 ed 15 d6          	vunpckhpd ymm2,ymm2,ymm6
  b66d66:	c4 e3 15 18 ef 01    	vinsertf128 ymm5,ymm13,xmm7,0x1
  b66d6c:	c4 e3 15 06 f7 31    	vperm2f128 ymm6,ymm13,ymm7,0x31
  b66d72:	c4 e3 5d 18 f8 01    	vinsertf128 ymm7,ymm4,xmm0,0x1
  b66d78:	c4 e3 5d 06 c0 31    	vperm2f128 ymm0,ymm4,ymm0,0x31
  b66d7e:	c5 cd 14 c0          	vunpcklpd ymm0,ymm6,ymm0
  b66d82:	c5 d5 14 e7          	vunpcklpd ymm4,ymm5,ymm7
  b66d86:	c5 d5 15 ef          	vunpckhpd ymm5,ymm5,ymm7
  b66d8a:	c5 fd 10 72 40       	vmovupd ymm6,YMMWORD PTR [rdx+0x40]
  b66d8f:	c5 fd 10 7a 60       	vmovupd ymm7,YMMWORD PTR [rdx+0x60]
  b66d94:	c5 7d 10 82 80 00 00 	vmovupd ymm8,YMMWORD PTR [rdx+0x80]
  b66d9b:	00 
  b66d9c:	c5 7d 10 8a a0 00 00 	vmovupd ymm9,YMMWORD PTR [rdx+0xa0]
  b66da3:	00 
  b66da4:	c5 55 59 d6          	vmulpd ymm10,ymm5,ymm6
  b66da8:	c4 62 ed b8 d7       	vfmadd231pd ymm10,ymm2,ymm7
  b66dad:	c5 3d 59 d8          	vmulpd ymm11,ymm8,ymm0
  b66db1:	c4 42 f5 b8 d9       	vfmadd231pd ymm11,ymm1,ymm9
  b66db6:	c4 41 2d 58 e3       	vaddpd ymm12,ymm10,ymm11
  b66dbb:	c4 62 7d 19 2d d4 dc 	vbroadcastsd ymm13,QWORD PTR [rip+0xffffffffff50dcd4]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  b66dc2:	50 ff 
  b66dc4:	c4 41 7d 28 f5       	vmovapd ymm14,ymm13
  b66dc9:	c4 62 9d ac f4       	vfnmadd213pd ymm14,ymm12,ymm4
  b66dce:	c5 ed 59 d6          	vmulpd ymm2,ymm2,ymm6
  b66dd2:	c4 e2 d5 bc d7       	vfnmadd231pd ymm2,ymm5,ymm7
  b66dd7:	c5 bd 59 c9          	vmulpd ymm1,ymm8,ymm1
  b66ddb:	c4 c2 fd bc c9       	vfnmadd231pd ymm1,ymm0,ymm9
  b66de0:	c4 e2 7d 19 05 37 de 	vbroadcastsd ymm0,QWORD PTR [rip+0xffffffffff50de37]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  b66de7:	50 ff 
  b66de9:	c5 ed 5c e9          	vsubpd ymm5,ymm2,ymm1
  b66ded:	c5 d5 59 e8          	vmulpd ymm5,ymm5,ymm0
  b66df1:	c5 8d 58 f5          	vaddpd ymm6,ymm14,ymm5
  b66df5:	c5 ed 58 c9          	vaddpd ymm1,ymm2,ymm1
  b66df9:	c4 62 f5 ac eb       	vfnmadd213pd ymm13,ymm1,ymm3
  b66dfe:	c4 c1 2d 5c d3       	vsubpd ymm2,ymm10,ymm11
  b66e03:	c5 ed 59 c0          	vmulpd ymm0,ymm2,ymm0
  b66e07:	c5 95 5c d0          	vsubpd ymm2,ymm13,ymm0
  b66e0b:	c5 8d 5c ed          	vsubpd ymm5,ymm14,ymm5
  b66e0f:	c5 95 58 c0          	vaddpd ymm0,ymm13,ymm0
  b66e13:	c5 9d 58 e4          	vaddpd ymm4,ymm12,ymm4
  b66e17:	c5 e5 58 c9          	vaddpd ymm1,ymm3,ymm1
  b66e1b:	c5 fd 28 1d 1d 08 51 	vmovapd ymm3,YMMWORD PTR [rip+0xffffffffff51081d]        # 77640 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4af0>
  b66e22:	ff 
  b66e23:	c5 fd 28 f9          	vmovapd ymm7,ymm1
  b66e27:	62 f2 e5 28 7f fc    	vpermt2pd ymm7,ymm3,ymm4
  b66e2d:	c5 7d 28 05 2b fd 50 	vmovapd ymm8,YMMWORD PTR [rip+0xffffffffff50fd2b]        # 76b60 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4010>
  b66e34:	ff 
  b66e35:	62 f2 bd 28 7f cc    	vpermt2pd ymm1,ymm8,ymm4
  b66e3b:	c5 fd 11 0e          	vmovupd YMMWORD PTR [rsi],ymm1
  b66e3f:	c5 fd 11 7e 20       	vmovupd YMMWORD PTR [rsi+0x20],ymm7
  b66e44:	c5 fd 28 c8          	vmovapd ymm1,ymm0
  b66e48:	62 f2 e5 28 7f cd    	vpermt2pd ymm1,ymm3,ymm5
  b66e4e:	62 f2 bd 28 7f c5    	vpermt2pd ymm0,ymm8,ymm5
  b66e54:	c5 fd 11 46 40       	vmovupd YMMWORD PTR [rsi+0x40],ymm0
  b66e59:	c5 fd 11 4e 60       	vmovupd YMMWORD PTR [rsi+0x60],ymm1
  b66e5e:	62 f2 ed 28 77 de    	vpermi2pd ymm3,ymm2,ymm6
  b66e64:	62 f2 bd 28 7f d6    	vpermt2pd ymm2,ymm8,ymm6
  b66e6a:	c5 fd 11 96 80 00 00 	vmovupd YMMWORD PTR [rsi+0x80],ymm2
  b66e71:	00 
  b66e72:	c5 fd 11 9e a0 00 00 	vmovupd YMMWORD PTR [rsi+0xa0],ymm3
  b66e79:	00 
  b66e7a:	c5 f8 77             	vzeroupper
  b66e7d:	c3                   	ret
