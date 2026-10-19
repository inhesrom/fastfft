
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b90c80 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle>:
  b90c80:	48 c1 e2 04          	shl    rdx,0x4
  b90c84:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  b90c88:	c4 e2 7d 19 05 07 3e 	vbroadcastsd ymm0,QWORD PTR [rip+0xffffffffff4e3e07]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  b90c8f:	4e ff 
  b90c91:	31 d2                	xor    edx,edx
  b90c93:	c4 e2 7d 19 0d 84 3f 	vbroadcastsd ymm1,QWORD PTR [rip+0xffffffffff4e3f84]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  b90c9a:	4e ff 
  b90c9c:	c5 fd 28 15 bc 5e 4e 	vmovapd ymm2,YMMWORD PTR [rip+0xffffffffff4e5ebc]        # 76b60 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4010>
  b90ca3:	ff 
  b90ca4:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  b90cab:	00 00 00 00 00 
  b90cb0:	c5 fd 10 1c 17       	vmovupd ymm3,YMMWORD PTR [rdi+rdx*1]
  b90cb5:	c5 f9 10 64 17 20    	vmovupd xmm4,XMMWORD PTR [rdi+rdx*1+0x20]
  b90cbb:	c4 e3 65 06 dc 20    	vperm2f128 ymm3,ymm3,ymm4,0x20
  b90cc1:	c5 f9 10 64 17 10    	vmovupd xmm4,XMMWORD PTR [rdi+rdx*1+0x10]
  b90cc7:	c5 e5 14 ec          	vunpcklpd ymm5,ymm3,ymm4
  b90ccb:	c5 e5 15 dc          	vunpckhpd ymm3,ymm3,ymm4
  b90ccf:	c5 fd 10 64 17 30    	vmovupd ymm4,YMMWORD PTR [rdi+rdx*1+0x30]
  b90cd5:	c5 f9 10 74 17 50    	vmovupd xmm6,XMMWORD PTR [rdi+rdx*1+0x50]
  b90cdb:	c4 e3 5d 06 e6 20    	vperm2f128 ymm4,ymm4,ymm6,0x20
  b90ce1:	c5 f9 10 74 17 40    	vmovupd xmm6,XMMWORD PTR [rdi+rdx*1+0x40]
  b90ce7:	c5 dd 14 fe          	vunpcklpd ymm7,ymm4,ymm6
  b90ceb:	c5 dd 15 e6          	vunpckhpd ymm4,ymm4,ymm6
  b90cef:	c5 fd 10 74 17 60    	vmovupd ymm6,YMMWORD PTR [rdi+rdx*1+0x60]
  b90cf5:	c5 79 10 84 17 80 00 	vmovupd xmm8,XMMWORD PTR [rdi+rdx*1+0x80]
  b90cfc:	00 00 
  b90cfe:	c4 c3 4d 06 f0 20    	vperm2f128 ymm6,ymm6,ymm8,0x20
  b90d04:	c5 79 10 44 17 70    	vmovupd xmm8,XMMWORD PTR [rdi+rdx*1+0x70]
  b90d0a:	c4 41 4d 14 c8       	vunpcklpd ymm9,ymm6,ymm8
  b90d0f:	c4 c1 4d 15 f0       	vunpckhpd ymm6,ymm6,ymm8
  b90d14:	c5 5d 58 c6          	vaddpd ymm8,ymm4,ymm6
  b90d18:	c5 3d 58 d3          	vaddpd ymm10,ymm8,ymm3
  b90d1c:	c5 35 58 df          	vaddpd ymm11,ymm9,ymm7
  b90d20:	c5 25 58 e5          	vaddpd ymm12,ymm11,ymm5
  b90d24:	c4 62 fd ac c3       	vfnmadd213pd ymm8,ymm0,ymm3
  b90d29:	c4 c1 45 5c d9       	vsubpd ymm3,ymm7,ymm9
  b90d2e:	c5 e5 59 d9          	vmulpd ymm3,ymm3,ymm1
  b90d32:	c5 bd 58 fb          	vaddpd ymm7,ymm8,ymm3
  b90d36:	c4 62 fd ac dd       	vfnmadd213pd ymm11,ymm0,ymm5
  b90d3b:	c5 dd 5c e6          	vsubpd ymm4,ymm4,ymm6
  b90d3f:	c5 dd 59 e1          	vmulpd ymm4,ymm4,ymm1
  b90d43:	c5 a5 5c ec          	vsubpd ymm5,ymm11,ymm4
  b90d47:	c5 bd 5c db          	vsubpd ymm3,ymm8,ymm3
  b90d4b:	c5 a5 58 e4          	vaddpd ymm4,ymm11,ymm4
  b90d4f:	c4 e3 2d 18 f3 01    	vinsertf128 ymm6,ymm10,xmm3,0x1
  b90d55:	c4 e3 2d 06 db 31    	vperm2f128 ymm3,ymm10,ymm3,0x31
  b90d5b:	c5 79 28 c7          	vmovapd xmm8,xmm7
  b90d5f:	c4 e3 7d 19 ff 01    	vextractf128 xmm7,ymm7,0x1
  b90d65:	c5 e5 14 df          	vunpcklpd ymm3,ymm3,ymm7
  b90d69:	c4 c1 4d 14 f8       	vunpcklpd ymm7,ymm6,ymm8
  b90d6e:	c4 c1 4d 15 f0       	vunpckhpd ymm6,ymm6,ymm8
  b90d73:	c4 63 1d 18 c4 01    	vinsertf128 ymm8,ymm12,xmm4,0x1
  b90d79:	c4 e3 1d 06 e4 31    	vperm2f128 ymm4,ymm12,ymm4,0x31
  b90d7f:	c5 79 28 cd          	vmovapd xmm9,xmm5
  b90d83:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  b90d89:	c5 dd 14 e5          	vunpcklpd ymm4,ymm4,ymm5
  b90d8d:	c4 c1 3d 14 e9       	vunpcklpd ymm5,ymm8,ymm9
  b90d92:	c4 41 3d 15 c1       	vunpckhpd ymm8,ymm8,ymm9
  b90d97:	c5 7d 10 49 40       	vmovupd ymm9,YMMWORD PTR [rcx+0x40]
  b90d9c:	c5 7d 10 51 60       	vmovupd ymm10,YMMWORD PTR [rcx+0x60]
  b90da1:	c5 7d 10 99 80 00 00 	vmovupd ymm11,YMMWORD PTR [rcx+0x80]
  b90da8:	00 
  b90da9:	c5 7d 10 a1 a0 00 00 	vmovupd ymm12,YMMWORD PTR [rcx+0xa0]
  b90db0:	00 
  b90db1:	c5 35 59 ee          	vmulpd ymm13,ymm9,ymm6
  b90db5:	c4 42 bd bc ea       	vfnmadd231pd ymm13,ymm8,ymm10
  b90dba:	c5 25 59 f3          	vmulpd ymm14,ymm11,ymm3
  b90dbe:	c4 42 dd bc f4       	vfnmadd231pd ymm14,ymm4,ymm12
  b90dc3:	c4 41 15 58 fe       	vaddpd ymm15,ymm13,ymm14
  b90dc8:	c4 41 3d 59 c1       	vmulpd ymm8,ymm8,ymm9
  b90dcd:	c4 42 cd b8 c2       	vfmadd231pd ymm8,ymm6,ymm10
  b90dd2:	c5 a5 59 e4          	vmulpd ymm4,ymm11,ymm4
  b90dd6:	c4 c2 e5 b8 e4       	vfmadd231pd ymm4,ymm3,ymm12
  b90ddb:	c5 bd 58 dc          	vaddpd ymm3,ymm8,ymm4
  b90ddf:	c5 fd 28 f0          	vmovapd ymm6,ymm0
  b90de3:	c4 e2 85 ac f7       	vfnmadd213pd ymm6,ymm15,ymm7
  b90de8:	c5 bd 5c e4          	vsubpd ymm4,ymm8,ymm4
  b90dec:	c5 dd 59 e1          	vmulpd ymm4,ymm4,ymm1
  b90df0:	c5 4d 58 c4          	vaddpd ymm8,ymm6,ymm4
  b90df4:	c5 7d 28 c8          	vmovapd ymm9,ymm0
  b90df8:	c4 62 e5 ac cd       	vfnmadd213pd ymm9,ymm3,ymm5
  b90dfd:	c4 41 15 5c d6       	vsubpd ymm10,ymm13,ymm14
  b90e02:	c5 2d 59 d1          	vmulpd ymm10,ymm10,ymm1
  b90e06:	c4 41 35 5c da       	vsubpd ymm11,ymm9,ymm10
  b90e0b:	c5 cd 5c e4          	vsubpd ymm4,ymm6,ymm4
  b90e0f:	c4 c1 35 58 f2       	vaddpd ymm6,ymm9,ymm10
  b90e14:	c5 d5 58 db          	vaddpd ymm3,ymm5,ymm3
  b90e18:	c5 85 58 ef          	vaddpd ymm5,ymm15,ymm7
  b90e1c:	c4 e3 7d 19 df 01    	vextractf128 xmm7,ymm3,0x1
  b90e22:	62 f2 ed 28 7f dd    	vpermt2pd ymm3,ymm2,ymm5
  b90e28:	c5 fd 11 1c 16       	vmovupd YMMWORD PTR [rsi+rdx*1],ymm3
  b90e2d:	c4 e3 7d 19 eb 01    	vextractf128 xmm3,ymm5,0x1
  b90e33:	c5 c1 14 db          	vunpcklpd xmm3,xmm7,xmm3
  b90e37:	c5 f9 11 5c 16 20    	vmovupd XMMWORD PTR [rsi+rdx*1+0x20],xmm3
  b90e3d:	c4 63 7d 19 db 01    	vextractf128 xmm3,ymm11,0x1
  b90e43:	62 52 ed 28 7f d8    	vpermt2pd ymm11,ymm2,ymm8
  b90e49:	c5 7d 11 5c 16 30    	vmovupd YMMWORD PTR [rsi+rdx*1+0x30],ymm11
  b90e4f:	c4 63 7d 19 c5 01    	vextractf128 xmm5,ymm8,0x1
  b90e55:	c5 e1 14 dd          	vunpcklpd xmm3,xmm3,xmm5
  b90e59:	c5 f9 11 5c 16 50    	vmovupd XMMWORD PTR [rsi+rdx*1+0x50],xmm3
  b90e5f:	c4 e3 7d 19 f3 01    	vextractf128 xmm3,ymm6,0x1
  b90e65:	62 f2 ed 28 7f f4    	vpermt2pd ymm6,ymm2,ymm4
  b90e6b:	c5 fd 11 74 16 60    	vmovupd YMMWORD PTR [rsi+rdx*1+0x60],ymm6
  b90e71:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  b90e77:	c5 e1 14 dc          	vunpcklpd xmm3,xmm3,xmm4
  b90e7b:	c5 f9 11 9c 16 80 00 	vmovupd XMMWORD PTR [rsi+rdx*1+0x80],xmm3
  b90e82:	00 00 
  b90e84:	48 81 c2 90 00 00 00 	add    rdx,0x90
  b90e8b:	48 39 d0             	cmp    rax,rdx
  b90e8e:	0f 85 1c fe ff ff    	jne    b90cb0 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x30>
  b90e94:	c5 f8 77             	vzeroupper
  b90e97:	c3                   	ret
