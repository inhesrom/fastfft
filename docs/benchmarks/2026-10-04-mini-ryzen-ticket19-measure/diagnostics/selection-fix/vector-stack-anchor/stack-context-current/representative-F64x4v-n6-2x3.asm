
target/ticket19/selection-fix/vector-stack-anchor/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b72f00 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle>:
  b72f00:	55                   	push   rbp
  b72f01:	48 89 e5             	mov    rbp,rsp
  b72f04:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  b72f08:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  b72f0f:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  b72f14:	48 8d 44 24 40       	lea    rax,[rsp+0x40]
  b72f19:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  b72f1e:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  b72f23:	c5 fd 10 07          	vmovupd ymm0,YMMWORD PTR [rdi]
  b72f27:	c5 f9 10 4f 20       	vmovupd xmm1,XMMWORD PTR [rdi+0x20]
  b72f2c:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  b72f32:	c5 f9 10 4f 10       	vmovupd xmm1,XMMWORD PTR [rdi+0x10]
  b72f37:	c5 fd 14 d1          	vunpcklpd ymm2,ymm0,ymm1
  b72f3b:	c5 fd 15 c1          	vunpckhpd ymm0,ymm0,ymm1
  b72f3f:	c5 fd 10 4f 30       	vmovupd ymm1,YMMWORD PTR [rdi+0x30]
  b72f44:	c5 f9 10 5f 50       	vmovupd xmm3,XMMWORD PTR [rdi+0x50]
  b72f49:	c4 e3 75 06 cb 20    	vperm2f128 ymm1,ymm1,ymm3,0x20
  b72f4f:	c5 f9 10 5f 40       	vmovupd xmm3,XMMWORD PTR [rdi+0x40]
  b72f54:	c5 f5 14 e3          	vunpcklpd ymm4,ymm1,ymm3
  b72f58:	c5 f5 15 cb          	vunpckhpd ymm1,ymm1,ymm3
  b72f5c:	c5 fd 58 d9          	vaddpd ymm3,ymm0,ymm1
  b72f60:	c5 ed 58 ec          	vaddpd ymm5,ymm2,ymm4
  b72f64:	c5 fd 5c c1          	vsubpd ymm0,ymm0,ymm1
  b72f68:	c5 ed 5c cc          	vsubpd ymm1,ymm2,ymm4
  b72f6c:	c5 f9 28 d3          	vmovapd xmm2,xmm3
  b72f70:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  b72f76:	c5 f9 28 e0          	vmovapd xmm4,xmm0
  b72f7a:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  b72f80:	c5 e5 14 c0          	vunpcklpd ymm0,ymm3,ymm0
  b72f84:	c5 ed 14 dc          	vunpcklpd ymm3,ymm2,ymm4
  b72f88:	c5 ed 15 d4          	vunpckhpd ymm2,ymm2,ymm4
  b72f8c:	c5 f9 28 e5          	vmovapd xmm4,xmm5
  b72f90:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  b72f96:	c5 f9 28 f1          	vmovapd xmm6,xmm1
  b72f9a:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  b72fa0:	c5 d5 14 c9          	vunpcklpd ymm1,ymm5,ymm1
  b72fa4:	c5 dd 14 ee          	vunpcklpd ymm5,ymm4,ymm6
  b72fa8:	c5 dd 15 e6          	vunpckhpd ymm4,ymm4,ymm6
  b72fac:	c5 fd 10 72 40       	vmovupd ymm6,YMMWORD PTR [rdx+0x40]
  b72fb1:	c5 fd 10 7a 60       	vmovupd ymm7,YMMWORD PTR [rdx+0x60]
  b72fb6:	c5 7d 10 82 80 00 00 	vmovupd ymm8,YMMWORD PTR [rdx+0x80]
  b72fbd:	00 
  b72fbe:	c5 7d 10 8a a0 00 00 	vmovupd ymm9,YMMWORD PTR [rdx+0xa0]
  b72fc5:	00 
  b72fc6:	c5 6d 59 d6          	vmulpd ymm10,ymm2,ymm6
  b72fca:	c4 62 dd bc d7       	vfnmadd231pd ymm10,ymm4,ymm7
  b72fcf:	c5 3d 59 d8          	vmulpd ymm11,ymm8,ymm0
  b72fd3:	c4 42 f5 bc d9       	vfnmadd231pd ymm11,ymm1,ymm9
  b72fd8:	c4 41 2d 58 e3       	vaddpd ymm12,ymm10,ymm11
  b72fdd:	c5 dd 59 e6          	vmulpd ymm4,ymm4,ymm6
  b72fe1:	c4 e2 ed b8 e7       	vfmadd231pd ymm4,ymm2,ymm7
  b72fe6:	c5 bd 59 c9          	vmulpd ymm1,ymm8,ymm1
  b72fea:	c4 c2 fd b8 c9       	vfmadd231pd ymm1,ymm0,ymm9
  b72fef:	c5 dd 58 c1          	vaddpd ymm0,ymm4,ymm1
  b72ff3:	c4 e2 7d 19 15 9c 1a 	vbroadcastsd ymm2,QWORD PTR [rip+0xffffffffff501a9c]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  b72ffa:	50 ff 
  b72ffc:	c5 fd 28 f2          	vmovapd ymm6,ymm2
  b73000:	c4 e2 9d ac f3       	vfnmadd213pd ymm6,ymm12,ymm3
  b73005:	c5 dd 5c c9          	vsubpd ymm1,ymm4,ymm1
  b73009:	c4 e2 7d 19 25 0e 1c 	vbroadcastsd ymm4,QWORD PTR [rip+0xffffffffff501c0e]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  b73010:	50 ff 
  b73012:	c5 f5 59 cc          	vmulpd ymm1,ymm1,ymm4
  b73016:	c5 cd 58 f9          	vaddpd ymm7,ymm6,ymm1
  b7301a:	c4 e2 fd ac d5       	vfnmadd213pd ymm2,ymm0,ymm5
  b7301f:	c4 41 2d 5c c3       	vsubpd ymm8,ymm10,ymm11
  b73024:	c5 bd 59 e4          	vmulpd ymm4,ymm8,ymm4
  b73028:	c5 6d 5c c4          	vsubpd ymm8,ymm2,ymm4
  b7302c:	c5 cd 5c c9          	vsubpd ymm1,ymm6,ymm1
  b73030:	c5 ed 58 d4          	vaddpd ymm2,ymm2,ymm4
  b73034:	c5 d5 58 c0          	vaddpd ymm0,ymm5,ymm0
  b73038:	c5 9d 58 db          	vaddpd ymm3,ymm12,ymm3
  b7303c:	c5 fd 28 25 1c 3b 50 	vmovapd ymm4,YMMWORD PTR [rip+0xffffffffff503b1c]        # 76b60 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4010>
  b73043:	ff 
  b73044:	62 f2 dd 28 7f c3    	vpermt2pd ymm0,ymm4,ymm3
  b7304a:	c5 fd 11 06          	vmovupd YMMWORD PTR [rsi],ymm0
  b7304e:	62 72 dd 28 7f c7    	vpermt2pd ymm8,ymm4,ymm7
  b73054:	c5 7d 11 46 20       	vmovupd YMMWORD PTR [rsi+0x20],ymm8
  b73059:	62 f2 dd 28 7f d1    	vpermt2pd ymm2,ymm4,ymm1
  b7305f:	c5 fd 11 56 40       	vmovupd YMMWORD PTR [rsi+0x40],ymm2
  b73064:	48 89 ec             	mov    rsp,rbp
  b73067:	5d                   	pop    rbp
  b73068:	c5 f8 77             	vzeroupper
  b7306b:	c3                   	ret
