
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b87ac0 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle>:
  b87ac0:	48 c1 e2 06          	shl    rdx,0x6
  b87ac4:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  b87ac8:	c4 e2 7d 19 05 c7 cf 	vbroadcastsd ymm0,QWORD PTR [rip+0xffffffffff4ecfc7]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  b87acf:	4e ff 
  b87ad1:	31 d2                	xor    edx,edx
  b87ad3:	c4 e2 7d 19 0d 44 d1 	vbroadcastsd ymm1,QWORD PTR [rip+0xffffffffff4ed144]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  b87ada:	4e ff 
  b87adc:	c5 fd 28 15 7c f0 4e 	vmovapd ymm2,YMMWORD PTR [rip+0xffffffffff4ef07c]        # 76b60 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4010>
  b87ae3:	ff 
  b87ae4:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  b87aeb:	00 00 00 00 00 
  b87af0:	c5 fd 10 1c 17       	vmovupd ymm3,YMMWORD PTR [rdi+rdx*1]
  b87af5:	c5 fd 10 64 17 20    	vmovupd ymm4,YMMWORD PTR [rdi+rdx*1+0x20]
  b87afb:	c5 fd 10 6c 17 40    	vmovupd ymm5,YMMWORD PTR [rdi+rdx*1+0x40]
  b87b01:	c5 fd 10 74 17 60    	vmovupd ymm6,YMMWORD PTR [rdi+rdx*1+0x60]
  b87b07:	c4 e3 65 06 fc 31    	vperm2f128 ymm7,ymm3,ymm4,0x31
  b87b0d:	c4 e3 65 06 dc 20    	vperm2f128 ymm3,ymm3,ymm4,0x20
  b87b13:	c5 e5 14 e7          	vunpcklpd ymm4,ymm3,ymm7
  b87b17:	c5 e5 15 df          	vunpckhpd ymm3,ymm3,ymm7
  b87b1b:	c4 e3 55 06 fe 31    	vperm2f128 ymm7,ymm5,ymm6,0x31
  b87b21:	c4 e3 55 06 ee 20    	vperm2f128 ymm5,ymm5,ymm6,0x20
  b87b27:	c5 d5 14 f7          	vunpcklpd ymm6,ymm5,ymm7
  b87b2b:	c5 d5 15 ef          	vunpckhpd ymm5,ymm5,ymm7
  b87b2f:	c5 fd 10 bc 17 80 00 	vmovupd ymm7,YMMWORD PTR [rdi+rdx*1+0x80]
  b87b36:	00 00 
  b87b38:	c5 7d 10 84 17 a0 00 	vmovupd ymm8,YMMWORD PTR [rdi+rdx*1+0xa0]
  b87b3f:	00 00 
  b87b41:	c4 43 45 06 c8 31    	vperm2f128 ymm9,ymm7,ymm8,0x31
  b87b47:	c4 c3 45 06 f8 20    	vperm2f128 ymm7,ymm7,ymm8,0x20
  b87b4d:	c4 41 45 14 c1       	vunpcklpd ymm8,ymm7,ymm9
  b87b52:	c4 c1 45 15 f9       	vunpckhpd ymm7,ymm7,ymm9
  b87b57:	c5 3d 58 ce          	vaddpd ymm9,ymm8,ymm6
  b87b5b:	c5 35 58 d4          	vaddpd ymm10,ymm9,ymm4
  b87b5f:	c5 55 58 df          	vaddpd ymm11,ymm5,ymm7
  b87b63:	c5 25 58 e3          	vaddpd ymm12,ymm11,ymm3
  b87b67:	c4 62 fd ac cc       	vfnmadd213pd ymm9,ymm0,ymm4
  b87b6c:	c5 d5 5c e7          	vsubpd ymm4,ymm5,ymm7
  b87b70:	c5 dd 59 e1          	vmulpd ymm4,ymm4,ymm1
  b87b74:	c5 b5 58 ec          	vaddpd ymm5,ymm9,ymm4
  b87b78:	c4 62 fd ac db       	vfnmadd213pd ymm11,ymm0,ymm3
  b87b7d:	c4 c1 4d 5c d8       	vsubpd ymm3,ymm6,ymm8
  b87b82:	c5 e5 59 d9          	vmulpd ymm3,ymm3,ymm1
  b87b86:	c5 a5 5c f3          	vsubpd ymm6,ymm11,ymm3
  b87b8a:	c5 b5 5c e4          	vsubpd ymm4,ymm9,ymm4
  b87b8e:	c5 a5 58 db          	vaddpd ymm3,ymm11,ymm3
  b87b92:	c4 e3 2d 18 fc 01    	vinsertf128 ymm7,ymm10,xmm4,0x1
  b87b98:	c4 e3 2d 06 e4 31    	vperm2f128 ymm4,ymm10,ymm4,0x31
  b87b9e:	c5 79 28 c5          	vmovapd xmm8,xmm5
  b87ba2:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  b87ba8:	c4 41 45 14 c8       	vunpcklpd ymm9,ymm7,ymm8
  b87bad:	c4 c1 45 15 f8       	vunpckhpd ymm7,ymm7,ymm8
  b87bb2:	c5 5d 14 c5          	vunpcklpd ymm8,ymm4,ymm5
  b87bb6:	c5 dd 15 e5          	vunpckhpd ymm4,ymm4,ymm5
  b87bba:	c4 e3 1d 18 eb 01    	vinsertf128 ymm5,ymm12,xmm3,0x1
  b87bc0:	c4 e3 1d 06 db 31    	vperm2f128 ymm3,ymm12,ymm3,0x31
  b87bc6:	c5 79 28 d6          	vmovapd xmm10,xmm6
  b87bca:	c4 e3 7d 19 f6 01    	vextractf128 xmm6,ymm6,0x1
  b87bd0:	c4 41 55 14 da       	vunpcklpd ymm11,ymm5,ymm10
  b87bd5:	c4 c1 55 15 ea       	vunpckhpd ymm5,ymm5,ymm10
  b87bda:	c5 65 15 d6          	vunpckhpd ymm10,ymm3,ymm6
  b87bde:	c5 e5 14 de          	vunpcklpd ymm3,ymm3,ymm6
  b87be2:	c5 fd 10 71 40       	vmovupd ymm6,YMMWORD PTR [rcx+0x40]
  b87be7:	c5 7d 10 61 60       	vmovupd ymm12,YMMWORD PTR [rcx+0x60]
  b87bec:	c5 7d 10 a9 80 00 00 	vmovupd ymm13,YMMWORD PTR [rcx+0x80]
  b87bf3:	00 
  b87bf4:	c5 7d 10 b1 a0 00 00 	vmovupd ymm14,YMMWORD PTR [rcx+0xa0]
  b87bfb:	00 
  b87bfc:	c5 7d 10 b9 c0 00 00 	vmovupd ymm15,YMMWORD PTR [rcx+0xc0]
  b87c03:	00 
  b87c04:	62 e1 fd 28 10 41 07 	vmovupd ymm16,YMMWORD PTR [rcx+0xe0]
  b87c0b:	62 c1 bd 28 59 cd    	vmulpd ymm17,ymm8,ymm13
  b87c11:	62 c2 e5 28 bc ce    	vfnmadd231pd ymm17,ymm3,ymm14
  b87c17:	62 a1 b5 28 58 d1    	vaddpd ymm18,ymm9,ymm17
  b87c1d:	62 e1 c5 28 59 de    	vmulpd ymm19,ymm7,ymm6
  b87c23:	62 c2 d5 28 bc dc    	vfnmadd231pd ymm19,ymm5,ymm12
  b87c29:	62 c1 dd 28 59 e7    	vmulpd ymm20,ymm4,ymm15
  b87c2f:	62 a2 ad 28 bc e0    	vfnmadd231pd ymm20,ymm10,ymm16
  b87c35:	62 a1 e5 20 58 ec    	vaddpd ymm21,ymm19,ymm20
  b87c3b:	c5 95 59 db          	vmulpd ymm3,ymm13,ymm3
  b87c3f:	c4 c2 bd b8 de       	vfmadd231pd ymm3,ymm8,ymm14
  b87c44:	c5 25 58 c3          	vaddpd ymm8,ymm11,ymm3
  b87c48:	c5 d5 59 ee          	vmulpd ymm5,ymm5,ymm6
  b87c4c:	c4 c2 c5 b8 ec       	vfmadd231pd ymm5,ymm7,ymm12
  b87c51:	c4 c1 2d 59 f7       	vmulpd ymm6,ymm10,ymm15
  b87c56:	62 b2 dd 28 b8 f0    	vfmadd231pd ymm6,ymm4,ymm16
  b87c5c:	c5 d5 58 e6          	vaddpd ymm4,ymm5,ymm6
  b87c60:	62 b1 b5 28 5c f9    	vsubpd ymm7,ymm9,ymm17
  b87c66:	c5 d5 5c ee          	vsubpd ymm5,ymm5,ymm6
  b87c6a:	c5 c5 58 f5          	vaddpd ymm6,ymm7,ymm5
  b87c6e:	c5 a5 5c db          	vsubpd ymm3,ymm11,ymm3
  b87c72:	62 31 dd 20 5c cb    	vsubpd ymm9,ymm20,ymm19
  b87c78:	c5 35 58 d3          	vaddpd ymm10,ymm9,ymm3
  b87c7c:	62 31 ed 20 5c dd    	vsubpd ymm11,ymm18,ymm21
  b87c82:	c5 3d 5c e4          	vsubpd ymm12,ymm8,ymm4
  b87c86:	c5 c5 5c ed          	vsubpd ymm5,ymm7,ymm5
  b87c8a:	c4 c1 65 5c d9       	vsubpd ymm3,ymm3,ymm9
  b87c8f:	62 b1 ed 20 58 fd    	vaddpd ymm7,ymm18,ymm21
  b87c95:	c5 bd 58 e4          	vaddpd ymm4,ymm8,ymm4
  b87c99:	c4 c3 7d 19 f8 01    	vextractf128 xmm8,ymm7,0x1
  b87c9f:	62 f2 ed 28 7f fc    	vpermt2pd ymm7,ymm2,ymm4
  b87ca5:	c5 fd 11 3c 16       	vmovupd YMMWORD PTR [rsi+rdx*1],ymm7
  b87caa:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  b87cb0:	c5 b9 14 e4          	vunpcklpd xmm4,xmm8,xmm4
  b87cb4:	c5 f9 11 64 16 20    	vmovupd XMMWORD PTR [rsi+rdx*1+0x20],xmm4
  b87cba:	c4 e3 7d 19 f4 01    	vextractf128 xmm4,ymm6,0x1
  b87cc0:	62 d2 ed 28 7f f2    	vpermt2pd ymm6,ymm2,ymm10
  b87cc6:	c5 fd 11 74 16 30    	vmovupd YMMWORD PTR [rsi+rdx*1+0x30],ymm6
  b87ccc:	c4 63 7d 19 d6 01    	vextractf128 xmm6,ymm10,0x1
  b87cd2:	c5 d9 14 e6          	vunpcklpd xmm4,xmm4,xmm6
  b87cd6:	c5 f9 11 64 16 50    	vmovupd XMMWORD PTR [rsi+rdx*1+0x50],xmm4
  b87cdc:	c4 63 7d 19 dc 01    	vextractf128 xmm4,ymm11,0x1
  b87ce2:	62 52 ed 28 7f dc    	vpermt2pd ymm11,ymm2,ymm12
  b87ce8:	c5 7d 11 5c 16 60    	vmovupd YMMWORD PTR [rsi+rdx*1+0x60],ymm11
  b87cee:	c4 63 7d 19 e6 01    	vextractf128 xmm6,ymm12,0x1
  b87cf4:	c5 d9 14 e6          	vunpcklpd xmm4,xmm4,xmm6
  b87cf8:	c5 f9 11 a4 16 80 00 	vmovupd XMMWORD PTR [rsi+rdx*1+0x80],xmm4
  b87cff:	00 00 
  b87d01:	c4 e3 7d 19 ec 01    	vextractf128 xmm4,ymm5,0x1
  b87d07:	62 f2 ed 28 7f eb    	vpermt2pd ymm5,ymm2,ymm3
  b87d0d:	c5 fd 11 ac 16 90 00 	vmovupd YMMWORD PTR [rsi+rdx*1+0x90],ymm5
  b87d14:	00 00 
  b87d16:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  b87d1c:	c5 d9 14 db          	vunpcklpd xmm3,xmm4,xmm3
  b87d20:	c5 f9 11 9c 16 b0 00 	vmovupd XMMWORD PTR [rsi+rdx*1+0xb0],xmm3
  b87d27:	00 00 
  b87d29:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  b87d30:	48 39 d0             	cmp    rax,rdx
  b87d33:	0f 85 b7 fd ff ff    	jne    b87af0 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x30>
  b87d39:	c5 f8 77             	vzeroupper
  b87d3c:	c3                   	ret
