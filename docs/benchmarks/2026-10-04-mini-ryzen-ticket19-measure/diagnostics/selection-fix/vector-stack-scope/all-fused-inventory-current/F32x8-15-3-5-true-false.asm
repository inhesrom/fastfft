
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000710b80 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  710b80:	55                   	push   rbp
  710b81:	48 89 e5             	mov    rbp,rsp
  710b84:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  710b88:	48 81 ec 00 01 00 00 	sub    rsp,0x100
  710b8f:	c6 84 24 80 00 00 00 	mov    BYTE PTR [rsp+0x80],0x0
  710b96:	00 
  710b97:	48 8d 84 24 80 00 00 	lea    rax,[rsp+0x80]
  710b9e:	00 
  710b9f:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  710ba4:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  710ba9:	c5 fc 10 07          	vmovups ymm0,YMMWORD PTR [rdi]
  710bad:	c5 fb 10 4f 20       	vmovsd xmm1,QWORD PTR [rdi+0x20]
  710bb2:	c5 fc 10 57 28       	vmovups ymm2,YMMWORD PTR [rdi+0x28]
  710bb7:	c5 fb 10 5f 48       	vmovsd xmm3,QWORD PTR [rdi+0x48]
  710bbc:	c5 fc 10 67 50       	vmovups ymm4,YMMWORD PTR [rdi+0x50]
  710bc1:	c5 fb 10 6f 70       	vmovsd xmm5,QWORD PTR [rdi+0x70]
  710bc6:	c5 fc c6 f1 dd       	vshufps ymm6,ymm0,ymm1,0xdd
  710bcb:	c4 e3 fd 01 fe d8    	vpermpd ymm7,ymm6,0xd8
  710bd1:	c5 ec c6 f3 dd       	vshufps ymm6,ymm2,ymm3,0xdd
  710bd6:	c4 63 fd 01 c6 d8    	vpermpd ymm8,ymm6,0xd8
  710bdc:	c5 dc c6 f5 dd       	vshufps ymm6,ymm4,ymm5,0xdd
  710be1:	c4 63 fd 01 ce d8    	vpermpd ymm9,ymm6,0xd8
  710be7:	c5 fc c6 c1 88       	vshufps ymm0,ymm0,ymm1,0x88
  710bec:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  710bf2:	c5 ec c6 cb 88       	vshufps ymm1,ymm2,ymm3,0x88
  710bf7:	c4 e3 fd 01 c9 d8    	vpermpd ymm1,ymm1,0xd8
  710bfd:	c5 dc c6 d5 88       	vshufps ymm2,ymm4,ymm5,0x88
  710c02:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  710c08:	c4 c1 3c 58 d9       	vaddps ymm3,ymm8,ymm9
  710c0d:	c5 e4 58 e7          	vaddps ymm4,ymm3,ymm7
  710c11:	c5 f4 58 ea          	vaddps ymm5,ymm1,ymm2
  710c15:	c5 d4 58 f0          	vaddps ymm6,ymm5,ymm0
  710c19:	c4 62 7d 18 15 3e 48 	vbroadcastss ymm10,DWORD PTR [rip+0xffffffffff96483e]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  710c20:	96 ff 
  710c22:	c4 e2 2d ac df       	vfnmadd213ps ymm3,ymm10,ymm7
  710c27:	c5 f4 5c ca          	vsubps ymm1,ymm1,ymm2
  710c2b:	c4 e2 7d 18 15 a0 46 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff9646a0]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  710c32:	96 ff 
  710c34:	c5 f4 59 fa          	vmulps ymm7,ymm1,ymm2
  710c38:	c5 64 58 df          	vaddps ymm11,ymm3,ymm7
  710c3c:	c4 62 55 ac d0       	vfnmadd213ps ymm10,ymm5,ymm0
  710c41:	c4 c1 3c 5c c1       	vsubps ymm0,ymm8,ymm9
  710c46:	c5 fc 59 c2          	vmulps ymm0,ymm0,ymm2
  710c4a:	c5 ac 5c c8          	vsubps ymm1,ymm10,ymm0
  710c4e:	c5 e4 5c d7          	vsubps ymm2,ymm3,ymm7
  710c52:	c5 ac 58 f8          	vaddps ymm7,ymm10,ymm0
  710c56:	c5 f8 28 c4          	vmovaps xmm0,xmm4
  710c5a:	c4 e3 7d 19 e3 01    	vextractf128 xmm3,ymm4,0x1
  710c60:	c5 78 29 dc          	vmovaps xmm4,xmm11
  710c64:	c4 63 7d 19 dd 01    	vextractf128 xmm5,ymm11,0x1
  710c6a:	c5 78 28 c2          	vmovaps xmm8,xmm2
  710c6e:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  710c74:	c5 e5 14 d2          	vunpcklpd ymm2,ymm3,ymm2
  710c78:	c4 41 7d 15 c8       	vunpckhpd ymm9,ymm0,ymm8
  710c7d:	c4 c1 7d 14 d8       	vunpcklpd ymm3,ymm0,ymm8
  710c82:	c4 41 7a 7e d3       	vmovq  xmm10,xmm11
  710c87:	c5 dd 73 dc 08       	vpsrldq ymm4,ymm4,0x8
  710c8c:	c4 41 38 57 c0       	vxorps xmm8,xmm8,xmm8
  710c91:	c4 c3 55 0c c0 cc    	vblendps ymm0,ymm5,ymm8,0xcc
  710c97:	c5 6c c6 d8 88       	vshufps ymm11,ymm2,ymm0,0x88
  710c9c:	c4 c1 64 c6 c2 88    	vshufps ymm0,ymm3,ymm10,0x88
  710ca2:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  710ca7:	c5 fc 29 44 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm0
  710cad:	c4 c1 64 c6 d2 dd    	vshufps ymm2,ymm3,ymm10,0xdd
  710cb3:	c5 ec c6 ea d8       	vshufps ymm5,ymm2,ymm2,0xd8
  710cb8:	c5 b4 c6 d4 88       	vshufps ymm2,ymm9,ymm4,0x88
  710cbd:	c5 ec c6 da d8       	vshufps ymm3,ymm2,ymm2,0xd8
  710cc2:	c5 b4 c6 d4 dd       	vshufps ymm2,ymm9,ymm4,0xdd
  710cc7:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  710ccc:	c4 c1 24 c6 e3 d8    	vshufps ymm4,ymm11,ymm11,0xd8
  710cd2:	c5 78 28 ce          	vmovaps xmm9,xmm6
  710cd6:	c4 e3 7d 19 f6 01    	vextractf128 xmm6,ymm6,0x1
  710cdc:	c5 78 28 d1          	vmovaps xmm10,xmm1
  710ce0:	c4 c3 7d 19 cb 01    	vextractf128 xmm11,ymm1,0x1
  710ce6:	c5 78 28 e7          	vmovaps xmm12,xmm7
  710cea:	c4 e3 7d 19 ff 01    	vextractf128 xmm7,ymm7,0x1
  710cf0:	c5 cd 14 f7          	vunpcklpd ymm6,ymm6,ymm7
  710cf4:	c4 c1 35 15 fc       	vunpckhpd ymm7,ymm9,ymm12
  710cf9:	c4 41 35 14 cc       	vunpcklpd ymm9,ymm9,ymm12
  710cfe:	c5 7a 7e e1          	vmovq  xmm12,xmm1
  710d02:	c4 c1 2d 73 da 08    	vpsrldq ymm10,ymm10,0x8
  710d08:	c4 c3 25 0c c8 cc    	vblendps ymm1,ymm11,ymm8,0xcc
  710d0e:	c5 4c c6 c1 88       	vshufps ymm8,ymm6,ymm1,0x88
  710d13:	c4 c1 34 c6 cc 88    	vshufps ymm1,ymm9,ymm12,0x88
  710d19:	c5 f4 c6 c1 d8       	vshufps ymm0,ymm1,ymm1,0xd8
  710d1e:	c5 fc 29 44 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm0
  710d24:	c4 c1 34 c6 f4 dd    	vshufps ymm6,ymm9,ymm12,0xdd
  710d2a:	c5 4c c6 ce d8       	vshufps ymm9,ymm6,ymm6,0xd8
  710d2f:	c4 c1 44 c6 f2 88    	vshufps ymm6,ymm7,ymm10,0x88
  710d35:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  710d3a:	c4 c1 44 c6 fa dd    	vshufps ymm7,ymm7,ymm10,0xdd
  710d40:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  710d45:	c4 41 3c c6 d8 d8    	vshufps ymm11,ymm8,ymm8,0xd8
  710d4b:	c5 7c 10 6a 40       	vmovups ymm13,YMMWORD PTR [rdx+0x40]
  710d50:	c5 7c 10 72 60       	vmovups ymm14,YMMWORD PTR [rdx+0x60]
  710d55:	c5 7c 10 a2 80 00 00 	vmovups ymm12,YMMWORD PTR [rdx+0x80]
  710d5c:	00 
  710d5d:	c5 7c 10 92 a0 00 00 	vmovups ymm10,YMMWORD PTR [rdx+0xa0]
  710d64:	00 
  710d65:	c5 14 59 c5          	vmulps ymm8,ymm13,ymm5
  710d69:	c4 42 35 bc c6       	vfnmadd231ps ymm8,ymm9,ymm14
  710d6e:	c4 41 14 59 e9       	vmulps ymm13,ymm13,ymm9
  710d73:	c5 7c 10 ba 00 01 00 	vmovups ymm15,YMMWORD PTR [rdx+0x100]
  710d7a:	00 
  710d7b:	c4 42 55 b8 ee       	vfmadd231ps ymm13,ymm5,ymm14
  710d80:	c5 fc 10 aa 20 01 00 	vmovups ymm5,YMMWORD PTR [rdx+0x120]
  710d87:	00 
  710d88:	c5 04 59 cc          	vmulps ymm9,ymm15,ymm4
  710d8c:	c4 62 25 bc cd       	vfnmadd231ps ymm9,ymm11,ymm5
  710d91:	c4 41 04 59 f3       	vmulps ymm14,ymm15,ymm11
  710d96:	c5 7c 10 ba c0 00 00 	vmovups ymm15,YMMWORD PTR [rdx+0xc0]
  710d9d:	00 
  710d9e:	c4 62 5d b8 f5       	vfmadd231ps ymm14,ymm4,ymm5
  710da3:	c5 fc 10 82 e0 00 00 	vmovups ymm0,YMMWORD PTR [rdx+0xe0]
  710daa:	00 
  710dab:	c5 1c 59 db          	vmulps ymm11,ymm12,ymm3
  710daf:	c4 42 4d bc da       	vfnmadd231ps ymm11,ymm6,ymm10
  710db4:	c5 1c 59 e6          	vmulps ymm12,ymm12,ymm6
  710db8:	c4 c1 3c 58 e1       	vaddps ymm4,ymm8,ymm9
  710dbd:	c4 42 65 b8 e2       	vfmadd231ps ymm12,ymm3,ymm10
  710dc2:	c5 04 59 d2          	vmulps ymm10,ymm15,ymm2
  710dc6:	c4 62 45 bc d0       	vfnmadd231ps ymm10,ymm7,ymm0
  710dcb:	c4 c1 24 58 f2       	vaddps ymm6,ymm11,ymm10
  710dd0:	c5 84 59 df          	vmulps ymm3,ymm15,ymm7
  710dd4:	c4 c1 14 58 ee       	vaddps ymm5,ymm13,ymm14
  710dd9:	c4 e2 6d b8 d8       	vfmadd231ps ymm3,ymm2,ymm0
  710dde:	c5 9c 58 fb          	vaddps ymm7,ymm12,ymm3
  710de2:	c4 e2 7d 18 0d fd 48 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff9648fd]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  710de9:	96 ff 
  710deb:	c4 41 14 5c ee       	vsubps ymm13,ymm13,ymm14
  710df0:	c5 fc 28 d1          	vmovaps ymm2,ymm1
  710df4:	c5 1c 5c e3          	vsubps ymm12,ymm12,ymm3
  710df8:	c4 62 7d 18 35 57 49 	vbroadcastss ymm14,DWORD PTR [rip+0xffffffffff964957]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  710dff:	96 ff 
  710e01:	c5 fc 28 44 24 40    	vmovaps ymm0,YMMWORD PTR [rsp+0x40]
  710e07:	c4 e2 5d a8 d0       	vfmadd213ps ymm2,ymm4,ymm0
  710e0c:	c4 41 3c 5c f9       	vsubps ymm15,ymm8,ymm9
  710e11:	c4 c1 1c 59 de       	vmulps ymm3,ymm12,ymm14
  710e16:	c4 41 24 5c d2       	vsubps ymm10,ymm11,ymm10
  710e1b:	c4 62 7d 18 1d 7c 45 	vbroadcastss ymm11,DWORD PTR [rip+0xffffffffff96457c]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  710e22:	96 ff 
  710e24:	c4 c2 15 b8 db       	vfmadd231ps ymm3,ymm13,ymm11
  710e29:	c4 41 14 59 ce       	vmulps ymm9,ymm13,ymm14
  710e2e:	c4 42 25 bc cc       	vfnmadd231ps ymm9,ymm11,ymm12
  710e33:	c4 41 2c 59 c6       	vmulps ymm8,ymm10,ymm14
  710e38:	c4 42 05 b8 c3       	vfmadd231ps ymm8,ymm15,ymm11
  710e3d:	c4 41 04 59 e6       	vmulps ymm12,ymm15,ymm14
  710e42:	c4 62 7d 18 2d f9 47 	vbroadcastss ymm13,DWORD PTR [rip+0xffffffffff9647f9]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  710e49:	96 ff 
  710e4b:	c4 c2 4d bc d5       	vfnmadd231ps ymm2,ymm6,ymm13
  710e50:	c4 42 2d bc e3       	vfnmadd231ps ymm12,ymm10,ymm11
  710e55:	c5 7c 28 d9          	vmovaps ymm11,ymm1
  710e59:	c5 7c 28 7c 24 60    	vmovaps ymm15,YMMWORD PTR [rsp+0x60]
  710e5f:	c4 42 55 a8 df       	vfmadd213ps ymm11,ymm5,ymm15
  710e64:	c4 42 45 bc dd       	vfnmadd231ps ymm11,ymm7,ymm13
  710e69:	c4 41 7c 28 f5       	vmovaps ymm14,ymm13
  710e6e:	c4 62 5d ac f0       	vfnmadd213ps ymm14,ymm4,ymm0
  710e73:	c4 62 4d b8 f1       	vfmadd231ps ymm14,ymm6,ymm1
  710e78:	c4 42 55 ac ef       	vfnmadd213ps ymm13,ymm5,ymm15
  710e7d:	c4 62 45 b8 e9       	vfmadd231ps ymm13,ymm7,ymm1
  710e82:	c5 d8 58 c0          	vaddps xmm0,xmm4,xmm0
  710e86:	c5 f8 58 c6          	vaddps xmm0,xmm0,xmm6
  710e8a:	c5 80 58 cd          	vaddps xmm1,xmm15,xmm5
  710e8e:	c5 f0 58 cf          	vaddps xmm1,xmm1,xmm7
  710e92:	c5 f0 14 e0          	vunpcklps xmm4,xmm1,xmm0
  710e96:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  710e9a:	c5 f8 13 46 10       	vmovlps QWORD PTR [rsi+0x10],xmm0
  710e9f:	c5 f8 11 26          	vmovups XMMWORD PTR [rsi],xmm4
  710ea3:	c5 e8 58 c3          	vaddps xmm0,xmm2,xmm3
  710ea7:	c4 c1 20 5c c8       	vsubps xmm1,xmm11,xmm8
  710eac:	c5 f0 15 e0          	vunpckhps xmm4,xmm1,xmm0
  710eb0:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  710eb4:	c5 f8 11 46 18       	vmovups XMMWORD PTR [rsi+0x18],xmm0
  710eb9:	c5 f8 13 66 28       	vmovlps QWORD PTR [rsi+0x28],xmm4
  710ebe:	c4 c1 08 58 c1       	vaddps xmm0,xmm14,xmm9
  710ec3:	c4 c1 10 5c cc       	vsubps xmm1,xmm13,xmm12
  710ec8:	c5 f0 15 e0          	vunpckhps xmm4,xmm1,xmm0
  710ecc:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  710ed0:	c5 f8 11 46 30       	vmovups XMMWORD PTR [rsi+0x30],xmm0
  710ed5:	c5 f8 13 66 40       	vmovlps QWORD PTR [rsi+0x40],xmm4
  710eda:	c4 c1 08 5c c1       	vsubps xmm0,xmm14,xmm9
  710edf:	c4 c1 10 58 cc       	vaddps xmm1,xmm13,xmm12
  710ee4:	c5 f0 15 e0          	vunpckhps xmm4,xmm1,xmm0
  710ee8:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  710eec:	c5 f8 11 46 48       	vmovups XMMWORD PTR [rsi+0x48],xmm0
  710ef1:	c5 f8 13 66 58       	vmovlps QWORD PTR [rsi+0x58],xmm4
  710ef6:	c5 e8 5c c3          	vsubps xmm0,xmm2,xmm3
  710efa:	c4 c1 20 58 c8       	vaddps xmm1,xmm11,xmm8
  710eff:	c5 f0 15 d0          	vunpckhps xmm2,xmm1,xmm0
  710f03:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  710f07:	c5 f8 11 46 60       	vmovups XMMWORD PTR [rsi+0x60],xmm0
  710f0c:	c5 f8 13 56 70       	vmovlps QWORD PTR [rsi+0x70],xmm2
  710f11:	48 89 ec             	mov    rsp,rbp
  710f14:	5d                   	pop    rbp
  710f15:	c5 f8 77             	vzeroupper
  710f18:	c3                   	ret
