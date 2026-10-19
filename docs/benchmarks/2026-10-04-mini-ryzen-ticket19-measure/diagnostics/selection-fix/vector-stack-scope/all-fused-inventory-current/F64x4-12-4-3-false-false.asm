
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000008b3a80 <<fastfft::isa::x86::F64x4 as fastfft::engine::small::SmallVector>::rectangle>:
  8b3a80:	c5 fd 10 07          	vmovupd ymm0,YMMWORD PTR [rdi]
  8b3a84:	c4 e3 7d 18 47 20 01 	vinsertf128 ymm0,ymm0,XMMWORD PTR [rdi+0x20],0x1
  8b3a8b:	c5 f9 10 4f 10       	vmovupd xmm1,XMMWORD PTR [rdi+0x10]
  8b3a90:	c5 fd 14 d1          	vunpcklpd ymm2,ymm0,ymm1
  8b3a94:	c5 fd 15 c1          	vunpckhpd ymm0,ymm0,ymm1
  8b3a98:	c5 fd 10 4f 30       	vmovupd ymm1,YMMWORD PTR [rdi+0x30]
  8b3a9d:	c4 e3 75 18 4f 50 01 	vinsertf128 ymm1,ymm1,XMMWORD PTR [rdi+0x50],0x1
  8b3aa4:	c5 f9 10 5f 40       	vmovupd xmm3,XMMWORD PTR [rdi+0x40]
  8b3aa9:	c5 f5 14 e3          	vunpcklpd ymm4,ymm1,ymm3
  8b3aad:	c5 f5 15 cb          	vunpckhpd ymm1,ymm1,ymm3
  8b3ab1:	c5 fd 10 5f 60       	vmovupd ymm3,YMMWORD PTR [rdi+0x60]
  8b3ab6:	c4 e3 65 18 9f 80 00 	vinsertf128 ymm3,ymm3,XMMWORD PTR [rdi+0x80],0x1
  8b3abd:	00 00 01 
  8b3ac0:	c5 f9 10 6f 70       	vmovupd xmm5,XMMWORD PTR [rdi+0x70]
  8b3ac5:	c5 e5 14 f5          	vunpcklpd ymm6,ymm3,ymm5
  8b3ac9:	c5 e5 15 dd          	vunpckhpd ymm3,ymm3,ymm5
  8b3acd:	c5 fd 10 af 90 00 00 	vmovupd ymm5,YMMWORD PTR [rdi+0x90]
  8b3ad4:	00 
  8b3ad5:	c4 e3 55 18 af b0 00 	vinsertf128 ymm5,ymm5,XMMWORD PTR [rdi+0xb0],0x1
  8b3adc:	00 00 01 
  8b3adf:	c5 f9 10 bf a0 00 00 	vmovupd xmm7,XMMWORD PTR [rdi+0xa0]
  8b3ae6:	00 
  8b3ae7:	c5 55 14 c7          	vunpcklpd ymm8,ymm5,ymm7
  8b3aeb:	c5 d5 15 ef          	vunpckhpd ymm5,ymm5,ymm7
  8b3aef:	c5 ed 58 fe          	vaddpd ymm7,ymm2,ymm6
  8b3af3:	c5 3d 58 cc          	vaddpd ymm9,ymm8,ymm4
  8b3af7:	c5 35 58 d7          	vaddpd ymm10,ymm9,ymm7
  8b3afb:	c5 7d 58 db          	vaddpd ymm11,ymm0,ymm3
  8b3aff:	c5 75 58 e5          	vaddpd ymm12,ymm1,ymm5
  8b3b03:	c4 41 25 58 ec       	vaddpd ymm13,ymm11,ymm12
  8b3b08:	c5 ed 5c d6          	vsubpd ymm2,ymm2,ymm6
  8b3b0c:	c5 f5 5c cd          	vsubpd ymm1,ymm1,ymm5
  8b3b10:	c5 ed 58 e9          	vaddpd ymm5,ymm2,ymm1
  8b3b14:	c5 fd 5c c3          	vsubpd ymm0,ymm0,ymm3
  8b3b18:	c5 bd 5c dc          	vsubpd ymm3,ymm8,ymm4
  8b3b1c:	c5 e5 58 e0          	vaddpd ymm4,ymm3,ymm0
  8b3b20:	c4 c1 45 5c f1       	vsubpd ymm6,ymm7,ymm9
  8b3b25:	c4 c1 25 5c fc       	vsubpd ymm7,ymm11,ymm12
  8b3b2a:	c5 ed 5c c9          	vsubpd ymm1,ymm2,ymm1
  8b3b2e:	c5 fd 5c d3          	vsubpd ymm2,ymm0,ymm3
  8b3b32:	c4 e3 2d 18 de 01    	vinsertf128 ymm3,ymm10,xmm6,0x1
  8b3b38:	c4 e3 2d 06 c6 31    	vperm2f128 ymm0,ymm10,ymm6,0x31
  8b3b3e:	c4 e3 55 18 f1 01    	vinsertf128 ymm6,ymm5,xmm1,0x1
  8b3b44:	c4 e3 55 06 c9 31    	vperm2f128 ymm1,ymm5,ymm1,0x31
  8b3b4a:	c5 fd 14 e9          	vunpcklpd ymm5,ymm0,ymm1
  8b3b4e:	c5 e5 14 c6          	vunpcklpd ymm0,ymm3,ymm6
  8b3b52:	c5 e5 15 de          	vunpckhpd ymm3,ymm3,ymm6
  8b3b56:	c4 e3 15 18 f7 01    	vinsertf128 ymm6,ymm13,xmm7,0x1
  8b3b5c:	c4 e3 15 06 cf 31    	vperm2f128 ymm1,ymm13,ymm7,0x31
  8b3b62:	c4 e3 5d 18 fa 01    	vinsertf128 ymm7,ymm4,xmm2,0x1
  8b3b68:	c4 e3 5d 06 d2 31    	vperm2f128 ymm2,ymm4,ymm2,0x31
  8b3b6e:	c5 f5 14 d2          	vunpcklpd ymm2,ymm1,ymm2
  8b3b72:	c5 cd 14 cf          	vunpcklpd ymm1,ymm6,ymm7
  8b3b76:	c5 cd 15 e7          	vunpckhpd ymm4,ymm6,ymm7
  8b3b7a:	c5 fd 10 72 40       	vmovupd ymm6,YMMWORD PTR [rdx+0x40]
  8b3b7f:	c5 fd 10 7a 60       	vmovupd ymm7,YMMWORD PTR [rdx+0x60]
  8b3b84:	c5 7d 10 82 80 00 00 	vmovupd ymm8,YMMWORD PTR [rdx+0x80]
  8b3b8b:	00 
  8b3b8c:	c5 7d 10 8a a0 00 00 	vmovupd ymm9,YMMWORD PTR [rdx+0xa0]
  8b3b93:	00 
  8b3b94:	c5 5d 59 d6          	vmulpd ymm10,ymm4,ymm6
  8b3b98:	c4 62 e5 b8 d7       	vfmadd231pd ymm10,ymm3,ymm7
  8b3b9d:	c5 3d 59 da          	vmulpd ymm11,ymm8,ymm2
  8b3ba1:	c4 42 d5 b8 d9       	vfmadd231pd ymm11,ymm5,ymm9
  8b3ba6:	c4 41 2d 58 e3       	vaddpd ymm12,ymm10,ymm11
  8b3bab:	c4 62 7d 19 2d e4 0e 	vbroadcastsd ymm13,QWORD PTR [rip+0xffffffffff7c0ee4]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  8b3bb2:	7c ff 
  8b3bb4:	c4 41 7d 28 f5       	vmovapd ymm14,ymm13
  8b3bb9:	c4 62 9d ac f1       	vfnmadd213pd ymm14,ymm12,ymm1
  8b3bbe:	c5 e5 59 de          	vmulpd ymm3,ymm3,ymm6
  8b3bc2:	c4 e2 dd bc df       	vfnmadd231pd ymm3,ymm4,ymm7
  8b3bc7:	c5 bd 59 e5          	vmulpd ymm4,ymm8,ymm5
  8b3bcb:	c4 c2 ed bc e1       	vfnmadd231pd ymm4,ymm2,ymm9
  8b3bd0:	c4 e2 7d 19 15 47 10 	vbroadcastsd ymm2,QWORD PTR [rip+0xffffffffff7c1047]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  8b3bd7:	7c ff 
  8b3bd9:	c5 e5 5c ec          	vsubpd ymm5,ymm3,ymm4
  8b3bdd:	c5 d5 59 ea          	vmulpd ymm5,ymm5,ymm2
  8b3be1:	c5 8d 58 f5          	vaddpd ymm6,ymm14,ymm5
  8b3be5:	c5 e5 58 dc          	vaddpd ymm3,ymm3,ymm4
  8b3be9:	c4 62 e5 ac e8       	vfnmadd213pd ymm13,ymm3,ymm0
  8b3bee:	c4 c1 2d 5c e3       	vsubpd ymm4,ymm10,ymm11
  8b3bf3:	c5 dd 59 d2          	vmulpd ymm2,ymm4,ymm2
  8b3bf7:	c5 95 5c e2          	vsubpd ymm4,ymm13,ymm2
  8b3bfb:	c5 8d 5c ed          	vsubpd ymm5,ymm14,ymm5
  8b3bff:	c5 95 58 d2          	vaddpd ymm2,ymm13,ymm2
  8b3c03:	c5 9d 58 c9          	vaddpd ymm1,ymm12,ymm1
  8b3c07:	c5 fd 58 c3          	vaddpd ymm0,ymm0,ymm3
  8b3c0b:	c4 e3 fd 01 d9 e6    	vpermpd ymm3,ymm1,0xe6
  8b3c11:	c4 e3 fd 01 f8 e6    	vpermpd ymm7,ymm0,0xe6
  8b3c17:	c5 c5 c6 db 0c       	vshufpd ymm3,ymm7,ymm3,0xc
  8b3c1c:	c4 e3 fd 01 c9 60    	vpermpd ymm1,ymm1,0x60
  8b3c22:	c4 e3 fd 01 c0 d4    	vpermpd ymm0,ymm0,0xd4
  8b3c28:	c4 e3 7d 0d c1 0a    	vblendpd ymm0,ymm0,ymm1,0xa
  8b3c2e:	c5 fd 11 06          	vmovupd YMMWORD PTR [rsi],ymm0
  8b3c32:	c5 fd 11 5e 20       	vmovupd YMMWORD PTR [rsi+0x20],ymm3
  8b3c37:	c4 e3 fd 01 c5 e6    	vpermpd ymm0,ymm5,0xe6
  8b3c3d:	c4 e3 fd 01 ca e6    	vpermpd ymm1,ymm2,0xe6
  8b3c43:	c5 f5 c6 c0 0c       	vshufpd ymm0,ymm1,ymm0,0xc
  8b3c48:	c4 e3 fd 01 cd 60    	vpermpd ymm1,ymm5,0x60
  8b3c4e:	c4 e3 fd 01 d2 d4    	vpermpd ymm2,ymm2,0xd4
  8b3c54:	c4 e3 6d 0d c9 0a    	vblendpd ymm1,ymm2,ymm1,0xa
  8b3c5a:	c5 fd 11 4e 40       	vmovupd YMMWORD PTR [rsi+0x40],ymm1
  8b3c5f:	c5 fd 11 46 60       	vmovupd YMMWORD PTR [rsi+0x60],ymm0
  8b3c64:	c4 e3 fd 01 c6 e6    	vpermpd ymm0,ymm6,0xe6
  8b3c6a:	c4 e3 fd 01 cc e6    	vpermpd ymm1,ymm4,0xe6
  8b3c70:	c5 f5 c6 c0 0c       	vshufpd ymm0,ymm1,ymm0,0xc
  8b3c75:	c4 e3 fd 01 ce 60    	vpermpd ymm1,ymm6,0x60
  8b3c7b:	c4 e3 fd 01 d4 d4    	vpermpd ymm2,ymm4,0xd4
  8b3c81:	c4 e3 6d 0d c9 0a    	vblendpd ymm1,ymm2,ymm1,0xa
  8b3c87:	c5 fd 11 8e 80 00 00 	vmovupd YMMWORD PTR [rsi+0x80],ymm1
  8b3c8e:	00 
  8b3c8f:	c5 fd 11 86 a0 00 00 	vmovupd YMMWORD PTR [rsi+0xa0],ymm0
  8b3c96:	00 
  8b3c97:	c5 f8 77             	vzeroupper
  8b3c9a:	c3                   	ret
