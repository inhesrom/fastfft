
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000717ac0 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  717ac0:	55                   	push   rbp
  717ac1:	48 89 e5             	mov    rbp,rsp
  717ac4:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  717ac8:	48 81 ec 00 01 00 00 	sub    rsp,0x100
  717acf:	c6 84 24 80 00 00 00 	mov    BYTE PTR [rsp+0x80],0x0
  717ad6:	00 
  717ad7:	48 8d 84 24 80 00 00 	lea    rax,[rsp+0x80]
  717ade:	00 
  717adf:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  717ae4:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  717ae9:	c5 fc 10 07          	vmovups ymm0,YMMWORD PTR [rdi]
  717aed:	c5 f8 10 4f 20       	vmovups xmm1,XMMWORD PTR [rdi+0x20]
  717af2:	c5 fc 10 57 30       	vmovups ymm2,YMMWORD PTR [rdi+0x30]
  717af7:	c5 f8 10 5f 50       	vmovups xmm3,XMMWORD PTR [rdi+0x50]
  717afc:	c5 fc 10 67 60       	vmovups ymm4,YMMWORD PTR [rdi+0x60]
  717b01:	c5 f8 10 af 80 00 00 	vmovups xmm5,XMMWORD PTR [rdi+0x80]
  717b08:	00 
  717b09:	c5 fc c6 f1 dd       	vshufps ymm6,ymm0,ymm1,0xdd
  717b0e:	c4 e3 fd 01 f6 d8    	vpermpd ymm6,ymm6,0xd8
  717b14:	c5 ec c6 fb dd       	vshufps ymm7,ymm2,ymm3,0xdd
  717b19:	c4 e3 fd 01 ff d8    	vpermpd ymm7,ymm7,0xd8
  717b1f:	c5 5c c6 c5 dd       	vshufps ymm8,ymm4,ymm5,0xdd
  717b24:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  717b2a:	c5 fc c6 c1 88       	vshufps ymm0,ymm0,ymm1,0x88
  717b2f:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  717b35:	c5 ec c6 cb 88       	vshufps ymm1,ymm2,ymm3,0x88
  717b3a:	c4 e3 fd 01 d1 d8    	vpermpd ymm2,ymm1,0xd8
  717b40:	c5 dc c6 cd 88       	vshufps ymm1,ymm4,ymm5,0x88
  717b45:	c4 e3 fd 01 d9 d8    	vpermpd ymm3,ymm1,0xd8
  717b4b:	c5 3c 58 cf          	vaddps ymm9,ymm8,ymm7
  717b4f:	c5 34 58 d6          	vaddps ymm10,ymm9,ymm6
  717b53:	c5 6c 58 db          	vaddps ymm11,ymm2,ymm3
  717b57:	c4 e2 7d 18 25 00 d9 	vbroadcastss ymm4,DWORD PTR [rip+0xffffffffff95d900]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  717b5e:	95 ff 
  717b60:	c5 a4 58 e8          	vaddps ymm5,ymm11,ymm0
  717b64:	c4 62 5d ac ce       	vfnmadd213ps ymm9,ymm4,ymm6
  717b69:	c4 e2 7d 18 0d 62 d7 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff95d762]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  717b70:	95 ff 
  717b72:	c5 ec 5c d3          	vsubps ymm2,ymm2,ymm3
  717b76:	c5 ec 59 d1          	vmulps ymm2,ymm2,ymm1
  717b7a:	c5 b4 58 da          	vaddps ymm3,ymm9,ymm2
  717b7e:	c4 62 5d ac d8       	vfnmadd213ps ymm11,ymm4,ymm0
  717b83:	c4 c1 44 5c c0       	vsubps ymm0,ymm7,ymm8
  717b88:	c5 fc 59 c1          	vmulps ymm0,ymm0,ymm1
  717b8c:	c5 a4 5c e0          	vsubps ymm4,ymm11,ymm0
  717b90:	c5 b4 5c d2          	vsubps ymm2,ymm9,ymm2
  717b94:	c5 24 58 c8          	vaddps ymm9,ymm11,ymm0
  717b98:	c5 78 29 d0          	vmovaps xmm0,xmm10
  717b9c:	c4 63 7d 19 d6 01    	vextractf128 xmm6,ymm10,0x1
  717ba2:	c5 f8 28 fb          	vmovaps xmm7,xmm3
  717ba6:	c4 c3 7d 19 d8 01    	vextractf128 xmm8,ymm3,0x1
  717bac:	c5 78 28 d2          	vmovaps xmm10,xmm2
  717bb0:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  717bb6:	c5 cd 14 f2          	vunpcklpd ymm6,ymm6,ymm2
  717bba:	c4 41 7d 15 da       	vunpckhpd ymm11,ymm0,ymm10
  717bbf:	c4 c1 7d 14 c2       	vunpcklpd ymm0,ymm0,ymm10
  717bc4:	c5 fa 7e db          	vmovq  xmm3,xmm3
  717bc8:	c5 c5 73 df 08       	vpsrldq ymm7,ymm7,0x8
  717bcd:	c4 41 28 57 d2       	vxorps xmm10,xmm10,xmm10
  717bd2:	c4 43 3d 0c e2 cc    	vblendps ymm12,ymm8,ymm10,0xcc
  717bd8:	c5 fc c6 cb 88       	vshufps ymm1,ymm0,ymm3,0x88
  717bdd:	c5 fc 29 4c 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm1
  717be3:	c5 fc c6 db dd       	vshufps ymm3,ymm0,ymm3,0xdd
  717be8:	c5 a4 c6 c7 88       	vshufps ymm0,ymm11,ymm7,0x88
  717bed:	c5 7c c6 c0 d8       	vshufps ymm8,ymm0,ymm0,0xd8
  717bf2:	c5 a4 c6 ff dd       	vshufps ymm7,ymm11,ymm7,0xdd
  717bf7:	c4 41 4c c6 dc 88    	vshufps ymm11,ymm6,ymm12,0x88
  717bfd:	c4 c1 4c c6 f4 dd    	vshufps ymm6,ymm6,ymm12,0xdd
  717c03:	c5 f8 28 c5          	vmovaps xmm0,xmm5
  717c07:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  717c0d:	c5 78 28 e4          	vmovaps xmm12,xmm4
  717c11:	c4 c3 7d 19 e5 01    	vextractf128 xmm13,ymm4,0x1
  717c17:	c4 41 78 28 f1       	vmovaps xmm14,xmm9
  717c1c:	c4 43 7d 19 c9 01    	vextractf128 xmm9,ymm9,0x1
  717c22:	c4 c1 55 14 e9       	vunpcklpd ymm5,ymm5,ymm9
  717c27:	c4 41 7d 15 fe       	vunpckhpd ymm15,ymm0,ymm14
  717c2c:	c4 c1 7d 14 c6       	vunpcklpd ymm0,ymm0,ymm14
  717c31:	c5 7a 7e cc          	vmovq  xmm9,xmm4
  717c35:	c4 c1 1d 73 dc 08    	vpsrldq ymm12,ymm12,0x8
  717c3b:	c4 43 15 0c ea cc    	vblendps ymm13,ymm13,ymm10,0xcc
  717c41:	c4 c1 7c c6 e1 88    	vshufps ymm4,ymm0,ymm9,0x88
  717c47:	c4 41 7c c6 c9 dd    	vshufps ymm9,ymm0,ymm9,0xdd
  717c4d:	c4 c1 04 c6 c4 88    	vshufps ymm0,ymm15,ymm12,0x88
  717c53:	c5 7c c6 d0 d8       	vshufps ymm10,ymm0,ymm0,0xd8
  717c58:	c4 41 04 c6 f4 dd    	vshufps ymm14,ymm15,ymm12,0xdd
  717c5e:	c4 41 54 c6 e5 88    	vshufps ymm12,ymm5,ymm13,0x88
  717c64:	c4 41 54 c6 ed dd    	vshufps ymm13,ymm5,ymm13,0xdd
  717c6a:	c5 fc 10 82 80 00 00 	vmovups ymm0,YMMWORD PTR [rdx+0x80]
  717c71:	00 
  717c72:	c5 7c 10 ba a0 00 00 	vmovups ymm15,YMMWORD PTR [rdx+0xa0]
  717c79:	00 
  717c7a:	c5 bc 59 e8          	vmulps ymm5,ymm8,ymm0
  717c7e:	c4 c2 2d bc ef       	vfnmadd231ps ymm5,ymm10,ymm15
  717c83:	c5 2c 59 d0          	vmulps ymm10,ymm10,ymm0
  717c87:	c4 c1 24 c6 c3 d8    	vshufps ymm0,ymm11,ymm11,0xd8
  717c8d:	c4 41 1c c6 dc d8    	vshufps ymm11,ymm12,ymm12,0xd8
  717c93:	c4 42 3d b8 d7       	vfmadd231ps ymm10,ymm8,ymm15
  717c98:	c5 7c 10 a2 00 01 00 	vmovups ymm12,YMMWORD PTR [rdx+0x100]
  717c9f:	00 
  717ca0:	c5 7c 10 ba 20 01 00 	vmovups ymm15,YMMWORD PTR [rdx+0x120]
  717ca7:	00 
  717ca8:	c5 1c 59 c0          	vmulps ymm8,ymm12,ymm0
  717cac:	c4 42 25 bc c7       	vfnmadd231ps ymm8,ymm11,ymm15
  717cb1:	c4 41 1c 59 e3       	vmulps ymm12,ymm12,ymm11
  717cb6:	c5 c4 c6 cf d8       	vshufps ymm1,ymm7,ymm7,0xd8
  717cbb:	c4 41 0c c6 de d8    	vshufps ymm11,ymm14,ymm14,0xd8
  717cc1:	c4 42 7d b8 e7       	vfmadd231ps ymm12,ymm0,ymm15
  717cc6:	c5 fc 10 82 c0 00 00 	vmovups ymm0,YMMWORD PTR [rdx+0xc0]
  717ccd:	00 
  717cce:	c5 7c 10 b2 e0 00 00 	vmovups ymm14,YMMWORD PTR [rdx+0xe0]
  717cd5:	00 
  717cd6:	c5 fc 59 f9          	vmulps ymm7,ymm0,ymm1
  717cda:	c4 c2 25 bc fe       	vfnmadd231ps ymm7,ymm11,ymm14
  717cdf:	c5 24 59 d8          	vmulps ymm11,ymm11,ymm0
  717ce3:	c5 cc c6 c6 d8       	vshufps ymm0,ymm6,ymm6,0xd8
  717ce8:	c4 c1 14 c6 f5 d8    	vshufps ymm6,ymm13,ymm13,0xd8
  717cee:	c4 42 75 b8 de       	vfmadd231ps ymm11,ymm1,ymm14
  717cf3:	c5 fc 10 8a 40 01 00 	vmovups ymm1,YMMWORD PTR [rdx+0x140]
  717cfa:	00 
  717cfb:	c5 7c 10 ba 60 01 00 	vmovups ymm15,YMMWORD PTR [rdx+0x160]
  717d02:	00 
  717d03:	c5 74 59 e8          	vmulps ymm13,ymm1,ymm0
  717d07:	c4 42 4d bc ef       	vfnmadd231ps ymm13,ymm6,ymm15
  717d0c:	c5 74 59 f6          	vmulps ymm14,ymm1,ymm6
  717d10:	c5 e4 c6 cb d8       	vshufps ymm1,ymm3,ymm3,0xd8
  717d15:	c4 c1 34 c6 d9 d8    	vshufps ymm3,ymm9,ymm9,0xd8
  717d1b:	c4 42 7d b8 f7       	vfmadd231ps ymm14,ymm0,ymm15
  717d20:	c5 fc 10 42 40       	vmovups ymm0,YMMWORD PTR [rdx+0x40]
  717d25:	c5 fc 10 72 60       	vmovups ymm6,YMMWORD PTR [rdx+0x60]
  717d2a:	c5 7c 59 c9          	vmulps ymm9,ymm0,ymm1
  717d2e:	c4 62 65 bc ce       	vfnmadd231ps ymm9,ymm3,ymm6
  717d33:	c5 fc 59 d3          	vmulps ymm2,ymm0,ymm3
  717d37:	c4 e3 7d 04 5c 24 40 	vpermilps ymm3,YMMWORD PTR [rsp+0x40],0xd8
  717d3e:	d8 
  717d3f:	c4 e2 75 b8 d6       	vfmadd231ps ymm2,ymm1,ymm6
  717d44:	c5 3c 58 fd          	vaddps ymm15,ymm8,ymm5
  717d48:	c5 84 58 c3          	vaddps ymm0,ymm15,ymm3
  717d4c:	c5 fc 29 44 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm0
  717d52:	c4 e2 7d 18 35 05 d7 	vbroadcastss ymm6,DWORD PTR [rip+0xffffffffff95d705]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  717d59:	95 ff 
  717d5b:	c4 62 4d ac fb       	vfnmadd213ps ymm15,ymm6,ymm3
  717d60:	c4 c1 14 58 c9       	vaddps ymm1,ymm13,ymm9
  717d65:	c5 c4 58 c1          	vaddps ymm0,ymm7,ymm1
  717d69:	c5 fc 29 44 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm0
  717d6f:	c4 e2 4d bc f9       	vfnmadd231ps ymm7,ymm6,ymm1
  717d74:	c5 dc c6 cc d8       	vshufps ymm1,ymm4,ymm4,0xd8
  717d79:	c4 c1 2c 58 c4       	vaddps ymm0,ymm10,ymm12
  717d7e:	c5 fc 58 e1          	vaddps ymm4,ymm0,ymm1
  717d82:	c4 e2 4d ac c1       	vfnmadd213ps ymm0,ymm6,ymm1
  717d87:	c5 8c 58 ca          	vaddps ymm1,ymm14,ymm2
  717d8b:	c5 a4 58 f1          	vaddps ymm6,ymm11,ymm1
  717d8f:	c4 e2 7d 18 1d c8 d6 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff95d6c8]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  717d96:	95 ff 
  717d98:	c4 62 75 bc db       	vfnmadd231ps ymm11,ymm1,ymm3
  717d9d:	c4 c1 2c 5c cc       	vsubps ymm1,ymm10,ymm12
  717da2:	c5 8c 5c d2          	vsubps ymm2,ymm14,ymm2
  717da6:	c4 62 7d 18 25 25 d5 	vbroadcastss ymm12,DWORD PTR [rip+0xffffffffff95d525]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  717dad:	95 ff 
  717daf:	c5 1c 59 d1          	vmulps ymm10,ymm12,ymm1
  717db3:	c4 41 54 5c c0       	vsubps ymm8,ymm5,ymm8
  717db8:	c4 c1 04 58 ca       	vaddps ymm1,ymm15,ymm10
  717dbd:	c5 9c 59 d2          	vmulps ymm2,ymm12,ymm2
  717dc1:	c4 41 14 5c c9       	vsubps ymm9,ymm13,ymm9
  717dc6:	c5 c4 58 ea          	vaddps ymm5,ymm7,ymm2
  717dca:	c4 41 3c 59 c4       	vmulps ymm8,ymm8,ymm12
  717dcf:	c4 41 34 59 f4       	vmulps ymm14,ymm9,ymm12
  717dd4:	c4 41 7c 5c c8       	vsubps ymm9,ymm0,ymm8
  717dd9:	c4 41 04 5c ea       	vsubps ymm13,ymm15,ymm10
  717dde:	c4 41 24 5c e6       	vsubps ymm12,ymm11,ymm14
  717de3:	c5 c4 5c fa          	vsubps ymm7,ymm7,ymm2
  717de7:	c5 3c 58 c0          	vaddps ymm8,ymm8,ymm0
  717deb:	c4 41 24 58 d6       	vaddps ymm10,ymm11,ymm14
  717df0:	c5 7c 28 74 24 40    	vmovaps ymm14,YMMWORD PTR [rsp+0x40]
  717df6:	c5 fc 28 5c 24 60    	vmovaps ymm3,YMMWORD PTR [rsp+0x60]
  717dfc:	c5 88 58 c3          	vaddps xmm0,xmm14,xmm3
  717e00:	c5 d8 58 d6          	vaddps xmm2,xmm4,xmm6
  717e04:	c5 68 14 d8          	vunpcklps xmm11,xmm2,xmm0
  717e08:	c5 e8 15 c0          	vunpckhps xmm0,xmm2,xmm0
  717e0c:	c5 f8 13 46 10       	vmovlps QWORD PTR [rsi+0x10],xmm0
  717e11:	c5 78 11 1e          	vmovups XMMWORD PTR [rsi],xmm11
  717e15:	c5 f0 5c c5          	vsubps xmm0,xmm1,xmm5
  717e19:	c4 c1 30 5c d4       	vsubps xmm2,xmm9,xmm12
  717e1e:	c5 68 14 d8          	vunpcklps xmm11,xmm2,xmm0
  717e22:	c5 e8 15 c0          	vunpckhps xmm0,xmm2,xmm0
  717e26:	c5 f8 13 46 28       	vmovlps QWORD PTR [rsi+0x28],xmm0
  717e2b:	c5 78 11 5e 18       	vmovups XMMWORD PTR [rsi+0x18],xmm11
  717e30:	c5 90 58 c7          	vaddps xmm0,xmm13,xmm7
  717e34:	c4 c1 38 58 d2       	vaddps xmm2,xmm8,xmm10
  717e39:	c5 68 14 d8          	vunpcklps xmm11,xmm2,xmm0
  717e3d:	c5 e8 15 c0          	vunpckhps xmm0,xmm2,xmm0
  717e41:	c5 f8 13 46 40       	vmovlps QWORD PTR [rsi+0x40],xmm0
  717e46:	c5 78 11 5e 30       	vmovups XMMWORD PTR [rsi+0x30],xmm11
  717e4b:	c5 88 5c c3          	vsubps xmm0,xmm14,xmm3
  717e4f:	c5 d8 5c d6          	vsubps xmm2,xmm4,xmm6
  717e53:	c5 e8 14 d8          	vunpcklps xmm3,xmm2,xmm0
  717e57:	c5 e8 15 c0          	vunpckhps xmm0,xmm2,xmm0
  717e5b:	c5 f8 13 46 58       	vmovlps QWORD PTR [rsi+0x58],xmm0
  717e60:	c5 f8 11 5e 48       	vmovups XMMWORD PTR [rsi+0x48],xmm3
  717e65:	c5 f0 58 c5          	vaddps xmm0,xmm1,xmm5
  717e69:	c4 c1 30 58 cc       	vaddps xmm1,xmm9,xmm12
  717e6e:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  717e72:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  717e76:	c5 f8 13 46 70       	vmovlps QWORD PTR [rsi+0x70],xmm0
  717e7b:	c5 f8 11 56 60       	vmovups XMMWORD PTR [rsi+0x60],xmm2
  717e80:	c5 90 5c c7          	vsubps xmm0,xmm13,xmm7
  717e84:	c4 c1 38 5c ca       	vsubps xmm1,xmm8,xmm10
  717e89:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  717e8d:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  717e91:	c5 f8 13 86 88 00 00 	vmovlps QWORD PTR [rsi+0x88],xmm0
  717e98:	00 
  717e99:	c5 f8 11 56 78       	vmovups XMMWORD PTR [rsi+0x78],xmm2
  717e9e:	48 89 ec             	mov    rsp,rbp
  717ea1:	5d                   	pop    rbp
  717ea2:	c5 f8 77             	vzeroupper
  717ea5:	c3                   	ret
