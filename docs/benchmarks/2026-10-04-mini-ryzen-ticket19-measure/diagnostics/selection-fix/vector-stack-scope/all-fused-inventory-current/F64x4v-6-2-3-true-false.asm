
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b70c40 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle>:
  b70c40:	c5 fd 10 07          	vmovupd ymm0,YMMWORD PTR [rdi]
  b70c44:	c5 f9 10 4f 20       	vmovupd xmm1,XMMWORD PTR [rdi+0x20]
  b70c49:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  b70c4f:	c5 f9 10 4f 10       	vmovupd xmm1,XMMWORD PTR [rdi+0x10]
  b70c54:	c5 fd 14 d1          	vunpcklpd ymm2,ymm0,ymm1
  b70c58:	c5 fd 15 c1          	vunpckhpd ymm0,ymm0,ymm1
  b70c5c:	c5 fd 10 4f 30       	vmovupd ymm1,YMMWORD PTR [rdi+0x30]
  b70c61:	c5 f9 10 5f 50       	vmovupd xmm3,XMMWORD PTR [rdi+0x50]
  b70c66:	c4 e3 75 06 cb 20    	vperm2f128 ymm1,ymm1,ymm3,0x20
  b70c6c:	c5 f9 10 5f 40       	vmovupd xmm3,XMMWORD PTR [rdi+0x40]
  b70c71:	c5 f5 14 e3          	vunpcklpd ymm4,ymm1,ymm3
  b70c75:	c5 f5 15 cb          	vunpckhpd ymm1,ymm1,ymm3
  b70c79:	c5 fd 58 d9          	vaddpd ymm3,ymm0,ymm1
  b70c7d:	c5 ed 58 ec          	vaddpd ymm5,ymm2,ymm4
  b70c81:	c5 fd 5c c1          	vsubpd ymm0,ymm0,ymm1
  b70c85:	c5 ed 5c cc          	vsubpd ymm1,ymm2,ymm4
  b70c89:	c5 f9 28 d3          	vmovapd xmm2,xmm3
  b70c8d:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  b70c93:	c5 f9 28 e0          	vmovapd xmm4,xmm0
  b70c97:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  b70c9d:	c5 e5 14 c0          	vunpcklpd ymm0,ymm3,ymm0
  b70ca1:	c5 ed 14 dc          	vunpcklpd ymm3,ymm2,ymm4
  b70ca5:	c5 ed 15 d4          	vunpckhpd ymm2,ymm2,ymm4
  b70ca9:	c5 f9 28 e5          	vmovapd xmm4,xmm5
  b70cad:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  b70cb3:	c5 f9 28 f1          	vmovapd xmm6,xmm1
  b70cb7:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  b70cbd:	c5 d5 14 c9          	vunpcklpd ymm1,ymm5,ymm1
  b70cc1:	c5 dd 14 ee          	vunpcklpd ymm5,ymm4,ymm6
  b70cc5:	c5 dd 15 e6          	vunpckhpd ymm4,ymm4,ymm6
  b70cc9:	c5 fd 10 72 40       	vmovupd ymm6,YMMWORD PTR [rdx+0x40]
  b70cce:	c5 fd 10 7a 60       	vmovupd ymm7,YMMWORD PTR [rdx+0x60]
  b70cd3:	c5 7d 10 82 80 00 00 	vmovupd ymm8,YMMWORD PTR [rdx+0x80]
  b70cda:	00 
  b70cdb:	c5 7d 10 8a a0 00 00 	vmovupd ymm9,YMMWORD PTR [rdx+0xa0]
  b70ce2:	00 
  b70ce3:	c5 6d 59 d6          	vmulpd ymm10,ymm2,ymm6
  b70ce7:	c4 62 dd bc d7       	vfnmadd231pd ymm10,ymm4,ymm7
  b70cec:	c5 3d 59 d8          	vmulpd ymm11,ymm8,ymm0
  b70cf0:	c4 42 f5 bc d9       	vfnmadd231pd ymm11,ymm1,ymm9
  b70cf5:	c4 41 2d 58 e3       	vaddpd ymm12,ymm10,ymm11
  b70cfa:	c5 dd 59 e6          	vmulpd ymm4,ymm4,ymm6
  b70cfe:	c4 e2 ed b8 e7       	vfmadd231pd ymm4,ymm2,ymm7
  b70d03:	c5 bd 59 c9          	vmulpd ymm1,ymm8,ymm1
  b70d07:	c4 c2 fd b8 c9       	vfmadd231pd ymm1,ymm0,ymm9
  b70d0c:	c5 dd 58 c1          	vaddpd ymm0,ymm4,ymm1
  b70d10:	c4 e2 7d 19 15 7f 3d 	vbroadcastsd ymm2,QWORD PTR [rip+0xffffffffff503d7f]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  b70d17:	50 ff 
  b70d19:	c5 fd 28 f2          	vmovapd ymm6,ymm2
  b70d1d:	c4 e2 9d ac f3       	vfnmadd213pd ymm6,ymm12,ymm3
  b70d22:	c5 dd 5c c9          	vsubpd ymm1,ymm4,ymm1
  b70d26:	c4 e2 7d 19 25 f1 3e 	vbroadcastsd ymm4,QWORD PTR [rip+0xffffffffff503ef1]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  b70d2d:	50 ff 
  b70d2f:	c5 f5 59 cc          	vmulpd ymm1,ymm1,ymm4
  b70d33:	c5 cd 58 f9          	vaddpd ymm7,ymm6,ymm1
  b70d37:	c4 e2 fd ac d5       	vfnmadd213pd ymm2,ymm0,ymm5
  b70d3c:	c4 41 2d 5c c3       	vsubpd ymm8,ymm10,ymm11
  b70d41:	c5 bd 59 e4          	vmulpd ymm4,ymm8,ymm4
  b70d45:	c5 6d 5c c4          	vsubpd ymm8,ymm2,ymm4
  b70d49:	c5 cd 5c c9          	vsubpd ymm1,ymm6,ymm1
  b70d4d:	c5 ed 58 d4          	vaddpd ymm2,ymm2,ymm4
  b70d51:	c5 d5 58 c0          	vaddpd ymm0,ymm5,ymm0
  b70d55:	c5 9d 58 db          	vaddpd ymm3,ymm12,ymm3
  b70d59:	c5 fd 28 25 ff 5d 50 	vmovapd ymm4,YMMWORD PTR [rip+0xffffffffff505dff]        # 76b60 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4010>
  b70d60:	ff 
  b70d61:	62 f2 dd 28 7f c3    	vpermt2pd ymm0,ymm4,ymm3
  b70d67:	c5 fd 11 06          	vmovupd YMMWORD PTR [rsi],ymm0
  b70d6b:	62 72 dd 28 7f c7    	vpermt2pd ymm8,ymm4,ymm7
  b70d71:	c5 7d 11 46 20       	vmovupd YMMWORD PTR [rsi+0x20],ymm8
  b70d76:	62 f2 dd 28 7f d1    	vpermt2pd ymm2,ymm4,ymm1
  b70d7c:	c5 fd 11 56 40       	vmovupd YMMWORD PTR [rsi+0x40],ymm2
  b70d81:	c5 f8 77             	vzeroupper
  b70d84:	c3                   	ret
