
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000008a3ac0 <<fastfft::isa::x86::F64x4 as fastfft::engine::small::SmallVector>::rectangle>:
  8a3ac0:	48 c1 e2 06          	shl    rdx,0x6
  8a3ac4:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  8a3ac8:	31 d2                	xor    edx,edx
  8a3aca:	c4 e2 7d 19 05 c5 0f 	vbroadcastsd ymm0,QWORD PTR [rip+0xffffffffff7d0fc5]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  8a3ad1:	7d ff 
  8a3ad3:	c4 e2 7d 19 0d 44 11 	vbroadcastsd ymm1,QWORD PTR [rip+0xffffffffff7d1144]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  8a3ada:	7d ff 
  8a3adc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  8a3ae0:	c5 fd 10 14 17       	vmovupd ymm2,YMMWORD PTR [rdi+rdx*1]
  8a3ae5:	c5 fd 10 5c 17 20    	vmovupd ymm3,YMMWORD PTR [rdi+rdx*1+0x20]
  8a3aeb:	c5 fd 10 64 17 40    	vmovupd ymm4,YMMWORD PTR [rdi+rdx*1+0x40]
  8a3af1:	c5 fd 10 6c 17 60    	vmovupd ymm5,YMMWORD PTR [rdi+rdx*1+0x60]
  8a3af7:	c4 e3 6d 06 f3 20    	vperm2f128 ymm6,ymm2,ymm3,0x20
  8a3afd:	c4 e3 6d 06 d3 31    	vperm2f128 ymm2,ymm2,ymm3,0x31
  8a3b03:	c5 cd 14 da          	vunpcklpd ymm3,ymm6,ymm2
  8a3b07:	c5 cd 15 d2          	vunpckhpd ymm2,ymm6,ymm2
  8a3b0b:	c4 e3 5d 06 f5 20    	vperm2f128 ymm6,ymm4,ymm5,0x20
  8a3b11:	c4 e3 5d 06 e5 31    	vperm2f128 ymm4,ymm4,ymm5,0x31
  8a3b17:	c5 cd 14 ec          	vunpcklpd ymm5,ymm6,ymm4
  8a3b1b:	c5 cd 15 e4          	vunpckhpd ymm4,ymm6,ymm4
  8a3b1f:	c5 fd 10 b4 17 80 00 	vmovupd ymm6,YMMWORD PTR [rdi+rdx*1+0x80]
  8a3b26:	00 00 
  8a3b28:	c5 fd 10 bc 17 a0 00 	vmovupd ymm7,YMMWORD PTR [rdi+rdx*1+0xa0]
  8a3b2f:	00 00 
  8a3b31:	c4 63 4d 06 c7 20    	vperm2f128 ymm8,ymm6,ymm7,0x20
  8a3b37:	c4 e3 4d 06 f7 31    	vperm2f128 ymm6,ymm6,ymm7,0x31
  8a3b3d:	c5 bd 14 fe          	vunpcklpd ymm7,ymm8,ymm6
  8a3b41:	c5 bd 15 f6          	vunpckhpd ymm6,ymm8,ymm6
  8a3b45:	c5 5d 58 c6          	vaddpd ymm8,ymm4,ymm6
  8a3b49:	c5 3d 58 ca          	vaddpd ymm9,ymm8,ymm2
  8a3b4d:	c5 55 58 d7          	vaddpd ymm10,ymm5,ymm7
  8a3b51:	c5 2d 58 db          	vaddpd ymm11,ymm10,ymm3
  8a3b55:	c4 62 fd ac c2       	vfnmadd213pd ymm8,ymm0,ymm2
  8a3b5a:	c5 d5 5c d7          	vsubpd ymm2,ymm5,ymm7
  8a3b5e:	c5 ed 59 d1          	vmulpd ymm2,ymm2,ymm1
  8a3b62:	c5 bd 58 ea          	vaddpd ymm5,ymm8,ymm2
  8a3b66:	c4 62 fd ac d3       	vfnmadd213pd ymm10,ymm0,ymm3
  8a3b6b:	c5 dd 5c de          	vsubpd ymm3,ymm4,ymm6
  8a3b6f:	c5 e5 59 d9          	vmulpd ymm3,ymm3,ymm1
  8a3b73:	c5 ad 5c e3          	vsubpd ymm4,ymm10,ymm3
  8a3b77:	c5 bd 5c d2          	vsubpd ymm2,ymm8,ymm2
  8a3b7b:	c5 ad 58 fb          	vaddpd ymm7,ymm10,ymm3
  8a3b7f:	c4 e3 35 18 da 01    	vinsertf128 ymm3,ymm9,xmm2,0x1
  8a3b85:	c4 63 35 06 c2 31    	vperm2f128 ymm8,ymm9,ymm2,0x31
  8a3b8b:	c5 f9 28 f5          	vmovapd xmm6,xmm5
  8a3b8f:	c4 c3 7d 19 e9 01    	vextractf128 xmm9,ymm5,0x1
  8a3b95:	c5 e5 14 d6          	vunpcklpd ymm2,ymm3,ymm6
  8a3b99:	c5 e5 15 ee          	vunpckhpd ymm5,ymm3,ymm6
  8a3b9d:	c4 c1 3d 14 f1       	vunpcklpd ymm6,ymm8,ymm9
  8a3ba2:	c4 c1 3d 15 d9       	vunpckhpd ymm3,ymm8,ymm9
  8a3ba7:	c4 63 25 18 c7 01    	vinsertf128 ymm8,ymm11,xmm7,0x1
  8a3bad:	c4 63 25 06 cf 31    	vperm2f128 ymm9,ymm11,ymm7,0x31
  8a3bb3:	c5 f9 28 fc          	vmovapd xmm7,xmm4
  8a3bb7:	c4 c3 7d 19 e2 01    	vextractf128 xmm10,ymm4,0x1
  8a3bbd:	c5 bd 14 e7          	vunpcklpd ymm4,ymm8,ymm7
  8a3bc1:	c5 3d 15 c7          	vunpckhpd ymm8,ymm8,ymm7
  8a3bc5:	c4 c1 35 15 fa       	vunpckhpd ymm7,ymm9,ymm10
  8a3bca:	c4 41 35 14 ca       	vunpcklpd ymm9,ymm9,ymm10
  8a3bcf:	c5 7d 10 91 80 00 00 	vmovupd ymm10,YMMWORD PTR [rcx+0x80]
  8a3bd6:	00 
  8a3bd7:	c5 7d 10 99 a0 00 00 	vmovupd ymm11,YMMWORD PTR [rcx+0xa0]
  8a3bde:	00 
  8a3bdf:	c5 2d 59 e6          	vmulpd ymm12,ymm10,ymm6
  8a3be3:	c4 42 b5 bc e3       	vfnmadd231pd ymm12,ymm9,ymm11
  8a3be8:	c4 41 35 59 ca       	vmulpd ymm9,ymm9,ymm10
  8a3bed:	c5 7d 10 51 40       	vmovupd ymm10,YMMWORD PTR [rcx+0x40]
  8a3bf2:	c4 42 cd b8 cb       	vfmadd231pd ymm9,ymm6,ymm11
  8a3bf7:	c5 fd 10 71 60       	vmovupd ymm6,YMMWORD PTR [rcx+0x60]
  8a3bfc:	c5 2d 59 dd          	vmulpd ymm11,ymm10,ymm5
  8a3c00:	c4 62 bd bc de       	vfnmadd231pd ymm11,ymm8,ymm6
  8a3c05:	c4 41 3d 59 c2       	vmulpd ymm8,ymm8,ymm10
  8a3c0a:	c5 7d 10 91 c0 00 00 	vmovupd ymm10,YMMWORD PTR [rcx+0xc0]
  8a3c11:	00 
  8a3c12:	c4 62 d5 b8 c6       	vfmadd231pd ymm8,ymm5,ymm6
  8a3c17:	c5 fd 10 a9 e0 00 00 	vmovupd ymm5,YMMWORD PTR [rcx+0xe0]
  8a3c1e:	00 
  8a3c1f:	c5 ad 59 f3          	vmulpd ymm6,ymm10,ymm3
  8a3c23:	c4 e2 c5 bc f5       	vfnmadd231pd ymm6,ymm7,ymm5
  8a3c28:	c5 ad 59 ff          	vmulpd ymm7,ymm10,ymm7
  8a3c2c:	c4 e2 e5 b8 fd       	vfmadd231pd ymm7,ymm3,ymm5
  8a3c31:	c5 9d 58 ea          	vaddpd ymm5,ymm12,ymm2
  8a3c35:	c5 25 58 d6          	vaddpd ymm10,ymm11,ymm6
  8a3c39:	c4 c1 6d 5c d4       	vsubpd ymm2,ymm2,ymm12
  8a3c3e:	c5 3d 58 e7          	vaddpd ymm12,ymm8,ymm7
  8a3c42:	c5 bd 5c df          	vsubpd ymm3,ymm8,ymm7
  8a3c46:	c5 b5 58 fc          	vaddpd ymm7,ymm9,ymm4
  8a3c4a:	c4 c1 5d 5c e1       	vsubpd ymm4,ymm4,ymm9
  8a3c4f:	c5 6d 58 c3          	vaddpd ymm8,ymm2,ymm3
  8a3c53:	c4 c1 4d 5c f3       	vsubpd ymm6,ymm6,ymm11
  8a3c58:	c5 5d 58 ce          	vaddpd ymm9,ymm4,ymm6
  8a3c5c:	c5 ed 5c d3          	vsubpd ymm2,ymm2,ymm3
  8a3c60:	c4 41 55 5c da       	vsubpd ymm11,ymm5,ymm10
  8a3c65:	c5 dd 5c de          	vsubpd ymm3,ymm4,ymm6
  8a3c69:	c4 c1 45 5c e4       	vsubpd ymm4,ymm7,ymm12
  8a3c6e:	c5 9d 58 f7          	vaddpd ymm6,ymm12,ymm7
  8a3c72:	c5 ad 58 ed          	vaddpd ymm5,ymm10,ymm5
  8a3c76:	c4 e3 fd 01 fd 60    	vpermpd ymm7,ymm5,0x60
  8a3c7c:	c4 63 fd 01 d6 d4    	vpermpd ymm10,ymm6,0xd4
  8a3c82:	c4 e3 2d 0d ff 0a    	vblendpd ymm7,ymm10,ymm7,0xa
  8a3c88:	c5 fd 11 3c 16       	vmovupd YMMWORD PTR [rsi+rdx*1],ymm7
  8a3c8d:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  8a3c93:	c4 e3 7d 19 f6 01    	vextractf128 xmm6,ymm6,0x1
  8a3c99:	c5 c9 14 ed          	vunpcklpd xmm5,xmm6,xmm5
  8a3c9d:	c5 f9 11 6c 16 20    	vmovupd XMMWORD PTR [rsi+rdx*1+0x20],xmm5
  8a3ca3:	c4 c3 fd 01 e8 60    	vpermpd ymm5,ymm8,0x60
  8a3ca9:	c4 c3 fd 01 f1 d4    	vpermpd ymm6,ymm9,0xd4
  8a3caf:	c4 e3 4d 0d ed 0a    	vblendpd ymm5,ymm6,ymm5,0xa
  8a3cb5:	c5 fd 11 6c 16 30    	vmovupd YMMWORD PTR [rsi+rdx*1+0x30],ymm5
  8a3cbb:	c4 63 7d 19 c5 01    	vextractf128 xmm5,ymm8,0x1
  8a3cc1:	c4 63 7d 19 ce 01    	vextractf128 xmm6,ymm9,0x1
  8a3cc7:	c5 c9 14 ed          	vunpcklpd xmm5,xmm6,xmm5
  8a3ccb:	c5 f9 11 6c 16 50    	vmovupd XMMWORD PTR [rsi+rdx*1+0x50],xmm5
  8a3cd1:	c4 c3 fd 01 eb 60    	vpermpd ymm5,ymm11,0x60
  8a3cd7:	c4 e3 fd 01 f4 d4    	vpermpd ymm6,ymm4,0xd4
  8a3cdd:	c4 e3 4d 0d ed 0a    	vblendpd ymm5,ymm6,ymm5,0xa
  8a3ce3:	c5 fd 11 6c 16 60    	vmovupd YMMWORD PTR [rsi+rdx*1+0x60],ymm5
  8a3ce9:	c4 63 7d 19 dd 01    	vextractf128 xmm5,ymm11,0x1
  8a3cef:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  8a3cf5:	c5 d9 14 e5          	vunpcklpd xmm4,xmm4,xmm5
  8a3cf9:	c5 f9 11 a4 16 80 00 	vmovupd XMMWORD PTR [rsi+rdx*1+0x80],xmm4
  8a3d00:	00 00 
  8a3d02:	c4 e3 fd 01 e2 60    	vpermpd ymm4,ymm2,0x60
  8a3d08:	c4 e3 fd 01 eb d4    	vpermpd ymm5,ymm3,0xd4
  8a3d0e:	c4 e3 55 0d e4 0a    	vblendpd ymm4,ymm5,ymm4,0xa
  8a3d14:	c5 fd 11 a4 16 90 00 	vmovupd YMMWORD PTR [rsi+rdx*1+0x90],ymm4
  8a3d1b:	00 00 
  8a3d1d:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  8a3d23:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  8a3d29:	c5 e1 14 d2          	vunpcklpd xmm2,xmm3,xmm2
  8a3d2d:	c5 f9 11 94 16 b0 00 	vmovupd XMMWORD PTR [rsi+rdx*1+0xb0],xmm2
  8a3d34:	00 00 
  8a3d36:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  8a3d3d:	48 39 d0             	cmp    rax,rdx
  8a3d40:	0f 85 9a fd ff ff    	jne    8a3ae0 <<fastfft::isa::x86::F64x4 as fastfft::engine::small::SmallVector>::rectangle+0x20>
  8a3d46:	c5 f8 77             	vzeroupper
  8a3d49:	c3                   	ret
