
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000870d80 <<fastfft::isa::x86::F64x4 as fastfft::engine::small::SmallVector>::rectangle>:
  870d80:	48 c1 e2 04          	shl    rdx,0x4
  870d84:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  870d88:	31 d2                	xor    edx,edx
  870d8a:	c4 e2 7d 19 05 05 3d 	vbroadcastsd ymm0,QWORD PTR [rip+0xffffffffff803d05]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  870d91:	80 ff 
  870d93:	c4 e2 7d 19 0d 84 3e 	vbroadcastsd ymm1,QWORD PTR [rip+0xffffffffff803e84]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  870d9a:	80 ff 
  870d9c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  870da0:	c5 fd 10 14 17       	vmovupd ymm2,YMMWORD PTR [rdi+rdx*1]
  870da5:	c4 e3 6d 18 54 17 20 	vinsertf128 ymm2,ymm2,XMMWORD PTR [rdi+rdx*1+0x20],0x1
  870dac:	01 
  870dad:	c5 f9 10 5c 17 10    	vmovupd xmm3,XMMWORD PTR [rdi+rdx*1+0x10]
  870db3:	c5 ed 14 e3          	vunpcklpd ymm4,ymm2,ymm3
  870db7:	c5 fd 10 6c 17 30    	vmovupd ymm5,YMMWORD PTR [rdi+rdx*1+0x30]
  870dbd:	c4 e3 55 18 6c 17 50 	vinsertf128 ymm5,ymm5,XMMWORD PTR [rdi+rdx*1+0x50],0x1
  870dc4:	01 
  870dc5:	c5 ed 15 d3          	vunpckhpd ymm2,ymm2,ymm3
  870dc9:	c5 f9 10 5c 17 40    	vmovupd xmm3,XMMWORD PTR [rdi+rdx*1+0x40]
  870dcf:	c5 d5 14 f3          	vunpcklpd ymm6,ymm5,ymm3
  870dd3:	c5 d5 15 db          	vunpckhpd ymm3,ymm5,ymm3
  870dd7:	c5 fd 10 6c 17 60    	vmovupd ymm5,YMMWORD PTR [rdi+rdx*1+0x60]
  870ddd:	c4 e3 55 18 ac 17 80 	vinsertf128 ymm5,ymm5,XMMWORD PTR [rdi+rdx*1+0x80],0x1
  870de4:	00 00 00 01 
  870de8:	c5 f9 10 7c 17 70    	vmovupd xmm7,XMMWORD PTR [rdi+rdx*1+0x70]
  870dee:	c5 55 14 c7          	vunpcklpd ymm8,ymm5,ymm7
  870df2:	c5 d5 15 ef          	vunpckhpd ymm5,ymm5,ymm7
  870df6:	c5 e5 58 fd          	vaddpd ymm7,ymm3,ymm5
  870dfa:	c5 45 58 ca          	vaddpd ymm9,ymm7,ymm2
  870dfe:	c5 3d 58 d6          	vaddpd ymm10,ymm8,ymm6
  870e02:	c5 2d 58 dc          	vaddpd ymm11,ymm10,ymm4
  870e06:	c4 e2 fd ac fa       	vfnmadd213pd ymm7,ymm0,ymm2
  870e0b:	c4 c1 4d 5c d0       	vsubpd ymm2,ymm6,ymm8
  870e10:	c5 ed 59 d1          	vmulpd ymm2,ymm2,ymm1
  870e14:	c5 c5 58 f2          	vaddpd ymm6,ymm7,ymm2
  870e18:	c4 62 fd ac d4       	vfnmadd213pd ymm10,ymm0,ymm4
  870e1d:	c5 e5 5c dd          	vsubpd ymm3,ymm3,ymm5
  870e21:	c5 e5 59 d9          	vmulpd ymm3,ymm3,ymm1
  870e25:	c5 ad 5c e3          	vsubpd ymm4,ymm10,ymm3
  870e29:	c5 c5 5c d2          	vsubpd ymm2,ymm7,ymm2
  870e2d:	c5 ad 58 db          	vaddpd ymm3,ymm10,ymm3
  870e31:	c4 e3 35 18 ea 01    	vinsertf128 ymm5,ymm9,xmm2,0x1
  870e37:	c4 e3 35 06 d2 31    	vperm2f128 ymm2,ymm9,ymm2,0x31
  870e3d:	c5 f9 28 fe          	vmovapd xmm7,xmm6
  870e41:	c4 e3 7d 19 f6 01    	vextractf128 xmm6,ymm6,0x1
  870e47:	c5 ed 14 f6          	vunpcklpd ymm6,ymm2,ymm6
  870e4b:	c5 d5 14 d7          	vunpcklpd ymm2,ymm5,ymm7
  870e4f:	c5 d5 15 ef          	vunpckhpd ymm5,ymm5,ymm7
  870e53:	c4 e3 25 18 fb 01    	vinsertf128 ymm7,ymm11,xmm3,0x1
  870e59:	c4 e3 25 06 db 31    	vperm2f128 ymm3,ymm11,ymm3,0x31
  870e5f:	c5 79 28 c4          	vmovapd xmm8,xmm4
  870e63:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  870e69:	c5 e5 14 dc          	vunpcklpd ymm3,ymm3,ymm4
  870e6d:	c4 c1 45 14 e0       	vunpcklpd ymm4,ymm7,ymm8
  870e72:	c4 c1 45 15 f8       	vunpckhpd ymm7,ymm7,ymm8
  870e77:	c5 7d 10 41 40       	vmovupd ymm8,YMMWORD PTR [rcx+0x40]
  870e7c:	c5 7d 10 49 60       	vmovupd ymm9,YMMWORD PTR [rcx+0x60]
  870e81:	c5 7d 10 91 80 00 00 	vmovupd ymm10,YMMWORD PTR [rcx+0x80]
  870e88:	00 
  870e89:	c5 7d 10 99 a0 00 00 	vmovupd ymm11,YMMWORD PTR [rcx+0xa0]
  870e90:	00 
  870e91:	c5 3d 59 e5          	vmulpd ymm12,ymm8,ymm5
  870e95:	c4 42 c5 bc e1       	vfnmadd231pd ymm12,ymm7,ymm9
  870e9a:	c5 2d 59 ee          	vmulpd ymm13,ymm10,ymm6
  870e9e:	c4 42 e5 bc eb       	vfnmadd231pd ymm13,ymm3,ymm11
  870ea3:	c4 41 1d 58 f5       	vaddpd ymm14,ymm12,ymm13
  870ea8:	c5 bd 59 ff          	vmulpd ymm7,ymm8,ymm7
  870eac:	c4 c2 d5 b8 f9       	vfmadd231pd ymm7,ymm5,ymm9
  870eb1:	c5 ad 59 db          	vmulpd ymm3,ymm10,ymm3
  870eb5:	c4 c2 cd b8 db       	vfmadd231pd ymm3,ymm6,ymm11
  870eba:	c5 c5 58 eb          	vaddpd ymm5,ymm7,ymm3
  870ebe:	c5 fd 28 f0          	vmovapd ymm6,ymm0
  870ec2:	c4 e2 8d ac f2       	vfnmadd213pd ymm6,ymm14,ymm2
  870ec7:	c5 c5 5c db          	vsubpd ymm3,ymm7,ymm3
  870ecb:	c5 e5 59 d9          	vmulpd ymm3,ymm3,ymm1
  870ecf:	c5 cd 58 fb          	vaddpd ymm7,ymm6,ymm3
  870ed3:	c5 7d 28 c0          	vmovapd ymm8,ymm0
  870ed7:	c4 62 d5 ac c4       	vfnmadd213pd ymm8,ymm5,ymm4
  870edc:	c4 41 1d 5c cd       	vsubpd ymm9,ymm12,ymm13
  870ee1:	c5 35 59 c9          	vmulpd ymm9,ymm9,ymm1
  870ee5:	c4 41 3d 5c d1       	vsubpd ymm10,ymm8,ymm9
  870eea:	c5 cd 5c db          	vsubpd ymm3,ymm6,ymm3
  870eee:	c4 c1 3d 58 f1       	vaddpd ymm6,ymm8,ymm9
  870ef3:	c5 dd 58 e5          	vaddpd ymm4,ymm4,ymm5
  870ef7:	c5 8d 58 d2          	vaddpd ymm2,ymm14,ymm2
  870efb:	c4 e3 fd 01 ea 60    	vpermpd ymm5,ymm2,0x60
  870f01:	c4 63 fd 01 c4 d4    	vpermpd ymm8,ymm4,0xd4
  870f07:	c4 e3 3d 0d ed 0a    	vblendpd ymm5,ymm8,ymm5,0xa
  870f0d:	c5 fd 11 2c 16       	vmovupd YMMWORD PTR [rsi+rdx*1],ymm5
  870f12:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  870f18:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  870f1e:	c5 d9 14 d2          	vunpcklpd xmm2,xmm4,xmm2
  870f22:	c5 f9 11 54 16 20    	vmovupd XMMWORD PTR [rsi+rdx*1+0x20],xmm2
  870f28:	c4 e3 fd 01 d7 60    	vpermpd ymm2,ymm7,0x60
  870f2e:	c4 c3 fd 01 e2 d4    	vpermpd ymm4,ymm10,0xd4
  870f34:	c4 e3 5d 0d d2 0a    	vblendpd ymm2,ymm4,ymm2,0xa
  870f3a:	c5 fd 11 54 16 30    	vmovupd YMMWORD PTR [rsi+rdx*1+0x30],ymm2
  870f40:	c4 e3 7d 19 fa 01    	vextractf128 xmm2,ymm7,0x1
  870f46:	c4 63 7d 19 d4 01    	vextractf128 xmm4,ymm10,0x1
  870f4c:	c5 d9 14 d2          	vunpcklpd xmm2,xmm4,xmm2
  870f50:	c5 f9 11 54 16 50    	vmovupd XMMWORD PTR [rsi+rdx*1+0x50],xmm2
  870f56:	c4 e3 fd 01 d3 60    	vpermpd ymm2,ymm3,0x60
  870f5c:	c4 e3 fd 01 e6 d4    	vpermpd ymm4,ymm6,0xd4
  870f62:	c4 e3 5d 0d d2 0a    	vblendpd ymm2,ymm4,ymm2,0xa
  870f68:	c5 fd 11 54 16 60    	vmovupd YMMWORD PTR [rsi+rdx*1+0x60],ymm2
  870f6e:	c4 e3 7d 19 da 01    	vextractf128 xmm2,ymm3,0x1
  870f74:	c4 e3 7d 19 f3 01    	vextractf128 xmm3,ymm6,0x1
  870f7a:	c5 e1 14 d2          	vunpcklpd xmm2,xmm3,xmm2
  870f7e:	c5 f9 11 94 16 80 00 	vmovupd XMMWORD PTR [rsi+rdx*1+0x80],xmm2
  870f85:	00 00 
  870f87:	48 81 c2 90 00 00 00 	add    rdx,0x90
  870f8e:	48 39 d0             	cmp    rax,rdx
  870f91:	0f 85 09 fe ff ff    	jne    870da0 <<fastfft::isa::x86::F64x4 as fastfft::engine::small::SmallVector>::rectangle+0x20>
  870f97:	c5 f8 77             	vzeroupper
  870f9a:	c3                   	ret
