
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

000000000072ebc0 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  72ebc0:	48 81 ec 88 00 00 00 	sub    rsp,0x88
  72ebc7:	c5 fc 10 07          	vmovups ymm0,YMMWORD PTR [rdi]
  72ebcb:	c5 f8 10 57 20       	vmovups xmm2,XMMWORD PTR [rdi+0x20]
  72ebd0:	c5 fc 10 5f 30       	vmovups ymm3,YMMWORD PTR [rdi+0x30]
  72ebd5:	c5 f8 10 77 50       	vmovups xmm6,XMMWORD PTR [rdi+0x50]
  72ebda:	c5 fc 10 4f 60       	vmovups ymm1,YMMWORD PTR [rdi+0x60]
  72ebdf:	c5 78 10 97 80 00 00 	vmovups xmm10,XMMWORD PTR [rdi+0x80]
  72ebe6:	00 
  72ebe7:	c5 fc 10 af 90 00 00 	vmovups ymm5,YMMWORD PTR [rdi+0x90]
  72ebee:	00 
  72ebef:	c5 f8 10 bf b0 00 00 	vmovups xmm7,XMMWORD PTR [rdi+0xb0]
  72ebf6:	00 
  72ebf7:	c5 fc 10 a7 c0 00 00 	vmovups ymm4,YMMWORD PTR [rdi+0xc0]
  72ebfe:	00 
  72ebff:	c5 78 10 af e0 00 00 	vmovups xmm13,XMMWORD PTR [rdi+0xe0]
  72ec06:	00 
  72ec07:	c5 7c 10 8f f0 00 00 	vmovups ymm9,YMMWORD PTR [rdi+0xf0]
  72ec0e:	00 
  72ec0f:	c5 78 10 9f 10 01 00 	vmovups xmm11,XMMWORD PTR [rdi+0x110]
  72ec16:	00 
  72ec17:	c5 7c 10 b7 20 01 00 	vmovups ymm14,YMMWORD PTR [rdi+0x120]
  72ec1e:	00 
  72ec1f:	c5 78 10 bf 40 01 00 	vmovups xmm15,XMMWORD PTR [rdi+0x140]
  72ec26:	00 
  72ec27:	c5 7c 10 87 50 01 00 	vmovups ymm8,YMMWORD PTR [rdi+0x150]
  72ec2e:	00 
  72ec2f:	c5 7c c6 e2 88       	vshufps ymm12,ymm0,ymm2,0x88
  72ec34:	c5 fc c6 c2 dd       	vshufps ymm0,ymm0,ymm2,0xdd
  72ec39:	c5 fc 11 44 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm0
  72ec3f:	c4 c1 5c c6 c5 88    	vshufps ymm0,ymm4,ymm13,0x88
  72ec45:	c4 c1 5c c6 d5 dd    	vshufps ymm2,ymm4,ymm13,0xdd
  72ec4b:	c5 fc 11 54 24 e0    	vmovups YMMWORD PTR [rsp-0x20],ymm2
  72ec51:	c4 c1 74 c6 d2 88    	vshufps ymm2,ymm1,ymm10,0x88
  72ec57:	c5 fc 11 54 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm2
  72ec5d:	c4 c1 74 c6 e2 dd    	vshufps ymm4,ymm1,ymm10,0xdd
  72ec63:	c4 c1 0c c6 cf 88    	vshufps ymm1,ymm14,ymm15,0x88
  72ec69:	c5 fc 11 4c 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm1
  72ec6f:	c4 c1 0c c6 cf dd    	vshufps ymm1,ymm14,ymm15,0xdd
  72ec75:	c5 64 c6 fe 88       	vshufps ymm15,ymm3,ymm6,0x88
  72ec7a:	c5 64 c6 ee dd       	vshufps ymm13,ymm3,ymm6,0xdd
  72ec7f:	c4 c1 34 c6 db 88    	vshufps ymm3,ymm9,ymm11,0x88
  72ec85:	c4 41 34 c6 db dd    	vshufps ymm11,ymm9,ymm11,0xdd
  72ec8b:	c5 d4 c6 f7 88       	vshufps ymm6,ymm5,ymm7,0x88
  72ec90:	c5 54 c6 f7 dd       	vshufps ymm14,ymm5,ymm7,0xdd
  72ec95:	c5 f8 10 97 70 01 00 	vmovups xmm2,XMMWORD PTR [rdi+0x170]
  72ec9c:	00 
  72ec9d:	c5 3c c6 d2 88       	vshufps ymm10,ymm8,ymm2,0x88
  72eca2:	c5 bc c6 d2 dd       	vshufps ymm2,ymm8,ymm2,0xdd
  72eca7:	c4 c3 fd 01 ec d8    	vpermpd ymm5,ymm12,0xd8
  72ecad:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  72ecb3:	c5 54 58 c8          	vaddps ymm9,ymm5,ymm0
  72ecb7:	c5 d4 5c c0          	vsubps ymm0,ymm5,ymm0
  72ecbb:	c5 fc 11 44 24 60    	vmovups YMMWORD PTR [rsp+0x60],ymm0
  72ecc1:	c4 e3 fd 01 c4 d8    	vpermpd ymm0,ymm4,0xd8
  72ecc7:	c4 e3 fd 01 c9 d8    	vpermpd ymm1,ymm1,0xd8
  72eccd:	c5 fc 58 f9          	vaddps ymm7,ymm0,ymm1
  72ecd1:	c5 fc 5c c1          	vsubps ymm0,ymm0,ymm1
  72ecd5:	c5 fc 11 44 24 40    	vmovups YMMWORD PTR [rsp+0x40],ymm0
  72ecdb:	c4 c3 fd 01 c7 d8    	vpermpd ymm0,ymm15,0xd8
  72ece1:	c4 e3 fd 01 cb d8    	vpermpd ymm1,ymm3,0xd8
  72ece7:	c5 fc 58 d9          	vaddps ymm3,ymm0,ymm1
  72eceb:	c5 fc 11 5c 24 20    	vmovups YMMWORD PTR [rsp+0x20],ymm3
  72ecf1:	c5 fc 5c c9          	vsubps ymm1,ymm0,ymm1
  72ecf5:	c4 c3 fd 01 c5 d8    	vpermpd ymm0,ymm13,0xd8
  72ecfb:	c4 c3 fd 01 db d8    	vpermpd ymm3,ymm11,0xd8
  72ed01:	c5 7c 58 db          	vaddps ymm11,ymm0,ymm3
  72ed05:	c5 fc 5c db          	vsubps ymm3,ymm0,ymm3
  72ed09:	c4 c3 fd 01 c6 d8    	vpermpd ymm0,ymm14,0xd8
  72ed0f:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  72ed15:	c5 7c 58 e2          	vaddps ymm12,ymm0,ymm2
  72ed19:	c5 fc 5c e2          	vsubps ymm4,ymm0,ymm2
  72ed1d:	c4 e3 fd 01 d6 d8    	vpermpd ymm2,ymm6,0xd8
  72ed23:	c4 43 fd 01 d2 d8    	vpermpd ymm10,ymm10,0xd8
  72ed29:	c5 2c 58 c2          	vaddps ymm8,ymm10,ymm2
  72ed2d:	c4 41 6c 5c d2       	vsubps ymm10,ymm2,ymm10
  72ed32:	c4 e3 fd 01 54 24 80 	vpermpd ymm2,YMMWORD PTR [rsp-0x80],0xd8
  72ed39:	d8 
  72ed3a:	c4 63 fd 01 6c 24 e0 	vpermpd ymm13,YMMWORD PTR [rsp-0x20],0xd8
  72ed41:	d8 
  72ed42:	c5 94 58 f2          	vaddps ymm6,ymm13,ymm2
  72ed46:	c4 c1 6c 5c c5       	vsubps ymm0,ymm2,ymm13
  72ed4b:	c5 fc 11 44 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm0
  72ed51:	c4 63 fd 01 6c 24 c0 	vpermpd ymm13,YMMWORD PTR [rsp-0x40],0xd8
  72ed58:	d8 
  72ed59:	c4 63 fd 01 7c 24 a0 	vpermpd ymm15,YMMWORD PTR [rsp-0x60],0xd8
  72ed60:	d8 
  72ed61:	c4 c1 14 58 c7       	vaddps ymm0,ymm13,ymm15
  72ed66:	c4 41 04 5c ed       	vsubps ymm13,ymm15,ymm13
  72ed6b:	c5 74 58 fb          	vaddps ymm15,ymm1,ymm3
  72ed6f:	c5 e4 5c c9          	vsubps ymm1,ymm3,ymm1
  72ed73:	c4 c1 5c 5c da       	vsubps ymm3,ymm4,ymm10
  72ed78:	c5 ac 58 e4          	vaddps ymm4,ymm10,ymm4
  72ed7c:	c4 62 7d 18 15 17 66 	vbroadcastss ymm10,DWORD PTR [rip+0xffffffffff946617]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  72ed83:	94 ff 
  72ed85:	c4 41 04 59 fa       	vmulps ymm15,ymm15,ymm10
  72ed8a:	c5 ac 59 eb          	vmulps ymm5,ymm10,ymm3
  72ed8e:	c5 ac 59 d1          	vmulps ymm2,ymm10,ymm1
  72ed92:	c5 ac 59 e4          	vmulps ymm4,ymm10,ymm4
  72ed96:	c5 34 58 f0          	vaddps ymm14,ymm9,ymm0
  72ed9a:	c5 b4 5c c0          	vsubps ymm0,ymm9,ymm0
  72ed9e:	c5 fc 11 44 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm0
  72eda4:	c4 41 24 58 cc       	vaddps ymm9,ymm11,ymm12
  72eda9:	c4 c1 24 5c c4       	vsubps ymm0,ymm11,ymm12
  72edae:	c5 fc 11 44 24 e0    	vmovups YMMWORD PTR [rsp-0x20],ymm0
  72edb4:	c5 4c 58 e7          	vaddps ymm12,ymm6,ymm7
  72edb8:	c5 cc 5c c7          	vsubps ymm0,ymm6,ymm7
  72edbc:	c5 fc 11 04 24       	vmovups YMMWORD PTR [rsp],ymm0
  72edc1:	c5 fc 10 44 24 20    	vmovups ymm0,YMMWORD PTR [rsp+0x20]
  72edc7:	c5 bc 58 f8          	vaddps ymm7,ymm8,ymm0
  72edcb:	c5 3c 5c d8          	vsubps ymm11,ymm8,ymm0
  72edcf:	c5 fc 10 44 24 60    	vmovups ymm0,YMMWORD PTR [rsp+0x60]
  72edd5:	c5 fc 10 4c 24 40    	vmovups ymm1,YMMWORD PTR [rsp+0x40]
  72eddb:	c5 fc 58 f1          	vaddps ymm6,ymm0,ymm1
  72eddf:	c5 7c 5c d1          	vsubps ymm10,ymm0,ymm1
  72ede3:	c5 ec 5c cc          	vsubps ymm1,ymm2,ymm4
  72ede7:	c5 6c 58 c4          	vaddps ymm8,ymm2,ymm4
  72edeb:	c5 fc 10 44 24 80    	vmovups ymm0,YMMWORD PTR [rsp-0x80]
  72edf1:	c5 94 58 e0          	vaddps ymm4,ymm13,ymm0
  72edf5:	c4 41 7c 5c ed       	vsubps ymm13,ymm0,ymm13
  72edfa:	c5 84 58 c5          	vaddps ymm0,ymm15,ymm5
  72edfe:	c4 c1 54 5c ef       	vsubps ymm5,ymm5,ymm15
  72ee03:	c5 8c 58 df          	vaddps ymm3,ymm14,ymm7
  72ee07:	c5 0c 5c ff          	vsubps ymm15,ymm14,ymm7
  72ee0b:	c4 c1 1c 58 d1       	vaddps ymm2,ymm12,ymm9
  72ee10:	c5 fc 11 54 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm2
  72ee16:	c4 c1 1c 5c d1       	vsubps ymm2,ymm12,ymm9
  72ee1b:	c5 fc 11 54 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm2
  72ee21:	c5 cc 58 f8          	vaddps ymm7,ymm6,ymm0
  72ee25:	c5 cc 5c d0          	vsubps ymm2,ymm6,ymm0
  72ee29:	c5 dc 58 f1          	vaddps ymm6,ymm4,ymm1
  72ee2d:	c5 5c 5c c9          	vsubps ymm9,ymm4,ymm1
  72ee31:	c5 fc 10 44 24 c0    	vmovups ymm0,YMMWORD PTR [rsp-0x40]
  72ee37:	c5 fc 10 4c 24 e0    	vmovups ymm1,YMMWORD PTR [rsp-0x20]
  72ee3d:	c5 fc 58 e1          	vaddps ymm4,ymm0,ymm1
  72ee41:	c5 fc 5c c1          	vsubps ymm0,ymm0,ymm1
  72ee45:	c5 7c 10 24 24       	vmovups ymm12,YMMWORD PTR [rsp]
  72ee4a:	c4 c1 24 58 cc       	vaddps ymm1,ymm11,ymm12
  72ee4f:	c4 41 1c 5c e3       	vsubps ymm12,ymm12,ymm11
  72ee54:	c4 41 2c 58 d8       	vaddps ymm11,ymm10,ymm8
  72ee59:	c4 41 2c 5c d0       	vsubps ymm10,ymm10,ymm8
  72ee5e:	c5 14 58 c5          	vaddps ymm8,ymm13,ymm5
  72ee62:	c5 14 5c ed          	vsubps ymm13,ymm13,ymm5
  72ee66:	c4 c3 65 18 ef 01    	vinsertf128 ymm5,ymm3,xmm15,0x1
  72ee6c:	c4 c3 65 06 df 31    	vperm2f128 ymm3,ymm3,ymm15,0x31
  72ee72:	c4 63 45 18 f2 01    	vinsertf128 ymm14,ymm7,xmm2,0x1
  72ee78:	c4 e3 45 06 d2 31    	vperm2f128 ymm2,ymm7,ymm2,0x31
  72ee7e:	c4 e3 5d 18 f8 01    	vinsertf128 ymm7,ymm4,xmm0,0x1
  72ee84:	c4 e3 5d 06 c0 31    	vperm2f128 ymm0,ymm4,ymm0,0x31
  72ee8a:	c5 e5 14 d8          	vunpcklpd ymm3,ymm3,ymm0
  72ee8e:	c4 c3 25 18 c2 01    	vinsertf128 ymm0,ymm11,xmm10,0x1
  72ee94:	c4 c3 25 06 e2 31    	vperm2f128 ymm4,ymm11,ymm10,0x31
  72ee9a:	c5 ed 14 e4          	vunpcklpd ymm4,ymm2,ymm4
  72ee9e:	c5 55 15 d7          	vunpckhpd ymm10,ymm5,ymm7
  72eea2:	c5 d5 14 d7          	vunpcklpd ymm2,ymm5,ymm7
  72eea6:	c5 8d 15 e8          	vunpckhpd ymm5,ymm14,ymm0
  72eeaa:	c5 8d 14 c0          	vunpcklpd ymm0,ymm14,ymm0
  72eeae:	c5 ec c6 f8 88       	vshufps ymm7,ymm2,ymm0,0x88
  72eeb3:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  72eeb8:	c5 fc 11 7c 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm7
  72eebe:	c5 ec c6 c0 dd       	vshufps ymm0,ymm2,ymm0,0xdd
  72eec3:	c5 7c c6 f0 d8       	vshufps ymm14,ymm0,ymm0,0xd8
  72eec8:	c5 ac c6 c5 88       	vshufps ymm0,ymm10,ymm5,0x88
  72eecd:	c5 fc c6 d0 d8       	vshufps ymm2,ymm0,ymm0,0xd8
  72eed2:	c5 ac c6 c5 dd       	vshufps ymm0,ymm10,ymm5,0xdd
  72eed7:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  72eedc:	c5 e4 c6 ec 88       	vshufps ymm5,ymm3,ymm4,0x88
  72eee1:	c5 54 c6 dd d8       	vshufps ymm11,ymm5,ymm5,0xd8
  72eee6:	c5 e4 c6 dc dd       	vshufps ymm3,ymm3,ymm4,0xdd
  72eeeb:	c5 e4 c6 eb d8       	vshufps ymm5,ymm3,ymm3,0xd8
  72eef0:	c5 fc 10 64 24 a0    	vmovups ymm4,YMMWORD PTR [rsp-0x60]
  72eef6:	c5 fc 10 7c 24 80    	vmovups ymm7,YMMWORD PTR [rsp-0x80]
  72eefc:	c4 e3 5d 18 df 01    	vinsertf128 ymm3,ymm4,xmm7,0x1
  72ef02:	c4 e3 5d 06 e7 31    	vperm2f128 ymm4,ymm4,ymm7,0x31
  72ef08:	c4 c3 4d 18 f9 01    	vinsertf128 ymm7,ymm6,xmm9,0x1
  72ef0e:	c4 c3 4d 06 f1 31    	vperm2f128 ymm6,ymm6,ymm9,0x31
  72ef14:	c4 43 75 18 cc 01    	vinsertf128 ymm9,ymm1,xmm12,0x1
  72ef1a:	c4 c3 75 06 cc 31    	vperm2f128 ymm1,ymm1,ymm12,0x31
  72ef20:	c5 5d 14 d1          	vunpcklpd ymm10,ymm4,ymm1
  72ef24:	c4 c3 3d 18 cd 01    	vinsertf128 ymm1,ymm8,xmm13,0x1
  72ef2a:	c4 c3 3d 06 e5 31    	vperm2f128 ymm4,ymm8,ymm13,0x31
  72ef30:	c5 cd 14 f4          	vunpcklpd ymm6,ymm6,ymm4
  72ef34:	c4 c1 65 15 e1       	vunpckhpd ymm4,ymm3,ymm9
  72ef39:	c4 c1 65 14 d9       	vunpcklpd ymm3,ymm3,ymm9
  72ef3e:	c5 45 15 c9          	vunpckhpd ymm9,ymm7,ymm1
  72ef42:	c5 c5 14 f9          	vunpcklpd ymm7,ymm7,ymm1
  72ef46:	c5 e4 c6 cf 88       	vshufps ymm1,ymm3,ymm7,0x88
  72ef4b:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  72ef50:	c5 fc 11 4c 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm1
  72ef56:	c5 e4 c6 df dd       	vshufps ymm3,ymm3,ymm7,0xdd
  72ef5b:	c5 64 c6 c3 d8       	vshufps ymm8,ymm3,ymm3,0xd8
  72ef60:	c4 c1 5c c6 d9 88    	vshufps ymm3,ymm4,ymm9,0x88
  72ef66:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  72ef6b:	c4 c1 5c c6 e1 dd    	vshufps ymm4,ymm4,ymm9,0xdd
  72ef71:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  72ef76:	c5 ac c6 fe 88       	vshufps ymm7,ymm10,ymm6,0x88
  72ef7b:	c5 44 c6 cf d8       	vshufps ymm9,ymm7,ymm7,0xd8
  72ef80:	c5 ac c6 f6 dd       	vshufps ymm6,ymm10,ymm6,0xdd
  72ef85:	c5 4c c6 ee d8       	vshufps ymm13,ymm6,ymm6,0xd8
  72ef8a:	c5 7c 10 62 40       	vmovups ymm12,YMMWORD PTR [rdx+0x40]
  72ef8f:	c5 fc 10 ba 80 00 00 	vmovups ymm7,YMMWORD PTR [rdx+0x80]
  72ef96:	00 
  72ef97:	c5 7c 10 92 a0 00 00 	vmovups ymm10,YMMWORD PTR [rdx+0xa0]
  72ef9e:	00 
  72ef9f:	c5 c4 59 f2          	vmulps ymm6,ymm7,ymm2
  72efa3:	c4 c2 65 bc f2       	vfnmadd231ps ymm6,ymm3,ymm10
  72efa8:	c5 c4 59 fb          	vmulps ymm7,ymm7,ymm3
  72efac:	c5 fc 10 9a 20 01 00 	vmovups ymm3,YMMWORD PTR [rdx+0x120]
  72efb3:	00 
  72efb4:	c4 c2 6d b8 fa       	vfmadd231ps ymm7,ymm2,ymm10
  72efb9:	c5 fc 10 92 00 01 00 	vmovups ymm2,YMMWORD PTR [rdx+0x100]
  72efc0:	00 
  72efc1:	c5 24 59 d2          	vmulps ymm10,ymm11,ymm2
  72efc5:	c4 62 35 bc d3       	vfnmadd231ps ymm10,ymm9,ymm3
  72efca:	c5 34 59 ca          	vmulps ymm9,ymm9,ymm2
  72efce:	c4 62 25 b8 cb       	vfmadd231ps ymm9,ymm11,ymm3
  72efd3:	c5 fc 10 92 60 01 00 	vmovups ymm2,YMMWORD PTR [rdx+0x160]
  72efda:	00 
  72efdb:	c5 fc 10 9a 40 01 00 	vmovups ymm3,YMMWORD PTR [rdx+0x140]
  72efe2:	00 
  72efe3:	c5 14 59 db          	vmulps ymm11,ymm13,ymm3
  72efe7:	c4 62 55 b8 da       	vfmadd231ps ymm11,ymm5,ymm2
  72efec:	c5 e4 59 ed          	vmulps ymm5,ymm3,ymm5
  72eff0:	c5 fc 10 5a 60       	vmovups ymm3,YMMWORD PTR [rdx+0x60]
  72eff5:	c4 e2 15 bc ea       	vfnmadd231ps ymm5,ymm13,ymm2
  72effa:	c4 41 4c 5c fa       	vsubps ymm15,ymm6,ymm10
  72efff:	c4 41 1c 59 e8       	vmulps ymm13,ymm12,ymm8
  72f004:	c4 62 0d b8 eb       	vfmadd231ps ymm13,ymm14,ymm3
  72f009:	c4 41 1c 59 e6       	vmulps ymm12,ymm12,ymm14
  72f00e:	c5 7c 10 b2 e0 00 00 	vmovups ymm14,YMMWORD PTR [rdx+0xe0]
  72f015:	00 
  72f016:	c4 62 3d bc e3       	vfnmadd231ps ymm12,ymm8,ymm3
  72f01b:	c5 fc 10 92 c0 00 00 	vmovups ymm2,YMMWORD PTR [rdx+0xc0]
  72f022:	00 
  72f023:	c5 ec 59 dc          	vmulps ymm3,ymm2,ymm4
  72f027:	c4 c2 7d b8 de       	vfmadd231ps ymm3,ymm0,ymm14
  72f02c:	c5 ec 59 d0          	vmulps ymm2,ymm2,ymm0
  72f030:	c4 e2 7d 18 05 9b 62 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff94629b]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  72f037:	94 ff 
  72f039:	c5 04 59 c0          	vmulps ymm8,ymm15,ymm0
  72f03d:	c4 c2 5d bc d6       	vfnmadd231ps ymm2,ymm4,ymm14
  72f042:	c5 34 58 f7          	vaddps ymm14,ymm9,ymm7
  72f046:	c4 62 7d 18 3d 11 64 	vbroadcastss ymm15,DWORD PTR [rip+0xffffffffff946411]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  72f04d:	94 ff 
  72f04f:	c5 ac 58 e6          	vaddps ymm4,ymm10,ymm6
  72f053:	c5 7c 29 fe          	vmovaps ymm6,ymm15
  72f057:	c4 e2 0d ac f1       	vfnmadd213ps ymm6,ymm14,ymm1
  72f05c:	c4 c1 44 5c f9       	vsubps ymm7,ymm7,ymm9
  72f061:	c4 41 54 5c cc       	vsubps ymm9,ymm5,ymm12
  72f066:	c5 9c 58 ed          	vaddps ymm5,ymm12,ymm5
  72f06a:	c4 41 24 58 d5       	vaddps ymm10,ymm11,ymm13
  72f06f:	c4 41 24 5c dd       	vsubps ymm11,ymm11,ymm13
  72f074:	c5 3c 58 e6          	vaddps ymm12,ymm8,ymm6
  72f078:	c5 34 59 c8          	vmulps ymm9,ymm9,ymm0
  72f07c:	c5 c4 59 f8          	vmulps ymm7,ymm7,ymm0
  72f080:	c5 a4 59 c8          	vmulps ymm1,ymm11,ymm0
  72f084:	c4 41 7c 28 df       	vmovaps ymm11,ymm15
  72f089:	c4 62 2d ac db       	vfnmadd213ps ymm11,ymm10,ymm3
  72f08e:	c4 c1 4c 5c f0       	vsubps ymm6,ymm6,ymm8
  72f093:	c4 41 24 58 c1       	vaddps ymm8,ymm11,ymm9
  72f098:	c4 41 24 5c c9       	vsubps ymm9,ymm11,ymm9
  72f09d:	c4 41 7c 28 df       	vmovaps ymm11,ymm15
  72f0a2:	c5 fc 10 44 24 c0    	vmovups ymm0,YMMWORD PTR [rsp-0x40]
  72f0a8:	c4 62 5d ac d8       	vfnmadd213ps ymm11,ymm4,ymm0
  72f0ad:	c5 24 5c ef          	vsubps ymm13,ymm11,ymm7
  72f0b1:	c5 a4 58 ff          	vaddps ymm7,ymm11,ymm7
  72f0b5:	c4 62 55 ac fa       	vfnmadd213ps ymm15,ymm5,ymm2
  72f0ba:	c5 04 5c d9          	vsubps ymm11,ymm15,ymm1
  72f0be:	c5 04 58 f9          	vaddps ymm15,ymm15,ymm1
  72f0c2:	c5 0c 58 74 24 a0    	vaddps ymm14,ymm14,YMMWORD PTR [rsp-0x60]
  72f0c8:	c5 ac 58 db          	vaddps ymm3,ymm10,ymm3
  72f0cc:	c5 dc 58 e0          	vaddps ymm4,ymm4,ymm0
  72f0d0:	c5 ec 58 ed          	vaddps ymm5,ymm2,ymm5
  72f0d4:	c4 c1 1c 5c c0       	vsubps ymm0,ymm12,ymm8
  72f0d9:	c4 41 1c 58 c0       	vaddps ymm8,ymm12,ymm8
  72f0de:	c4 c1 14 5c cb       	vsubps ymm1,ymm13,ymm11
  72f0e3:	c4 41 14 58 d3       	vaddps ymm10,ymm13,ymm11
  72f0e8:	c5 b4 58 d6          	vaddps ymm2,ymm9,ymm6
  72f0ec:	c4 c1 4c 5c f1       	vsubps ymm6,ymm6,ymm9
  72f0f1:	c5 04 58 cf          	vaddps ymm9,ymm15,ymm7
  72f0f5:	c4 c1 44 5c ff       	vsubps ymm7,ymm7,ymm15
  72f0fa:	c5 0c 5c db          	vsubps ymm11,ymm14,ymm3
  72f0fe:	c5 8c 58 db          	vaddps ymm3,ymm14,ymm3
  72f102:	c5 5c 5c e5          	vsubps ymm12,ymm4,ymm5
  72f106:	c5 dc 58 e5          	vaddps ymm4,ymm4,ymm5
  72f10a:	c5 dc 15 eb          	vunpckhps ymm5,ymm4,ymm3
  72f10e:	c5 dc 14 db          	vunpcklps ymm3,ymm4,ymm3
  72f112:	c4 e3 65 06 e5 31    	vperm2f128 ymm4,ymm3,ymm5,0x31
  72f118:	c4 e3 65 06 dd 20    	vperm2f128 ymm3,ymm3,ymm5,0x20
  72f11e:	c5 fc 11 1e          	vmovups YMMWORD PTR [rsi],ymm3
  72f122:	c5 fc 11 66 20       	vmovups YMMWORD PTR [rsi+0x20],ymm4
  72f127:	c5 c4 15 de          	vunpckhps ymm3,ymm7,ymm6
  72f12b:	c5 c4 14 e6          	vunpcklps ymm4,ymm7,ymm6
  72f12f:	c4 e3 5d 06 eb 31    	vperm2f128 ymm5,ymm4,ymm3,0x31
  72f135:	c4 e3 5d 06 db 20    	vperm2f128 ymm3,ymm4,ymm3,0x20
  72f13b:	c5 fc 11 5e 40       	vmovups YMMWORD PTR [rsi+0x40],ymm3
  72f140:	c5 fc 11 6e 60       	vmovups YMMWORD PTR [rsi+0x60],ymm5
  72f145:	c4 c1 2c 15 d8       	vunpckhps ymm3,ymm10,ymm8
  72f14a:	c4 c1 2c 14 e0       	vunpcklps ymm4,ymm10,ymm8
  72f14f:	c4 e3 5d 06 eb 31    	vperm2f128 ymm5,ymm4,ymm3,0x31
  72f155:	c4 e3 5d 06 db 20    	vperm2f128 ymm3,ymm4,ymm3,0x20
  72f15b:	c5 fc 11 9e 80 00 00 	vmovups YMMWORD PTR [rsi+0x80],ymm3
  72f162:	00 
  72f163:	c5 fc 11 ae a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm5
  72f16a:	00 
  72f16b:	c4 c1 1c 15 db       	vunpckhps ymm3,ymm12,ymm11
  72f170:	c4 c1 1c 14 e3       	vunpcklps ymm4,ymm12,ymm11
  72f175:	c4 e3 5d 06 eb 31    	vperm2f128 ymm5,ymm4,ymm3,0x31
  72f17b:	c4 e3 5d 06 db 20    	vperm2f128 ymm3,ymm4,ymm3,0x20
  72f181:	c5 fc 11 9e c0 00 00 	vmovups YMMWORD PTR [rsi+0xc0],ymm3
  72f188:	00 
  72f189:	c5 fc 11 ae e0 00 00 	vmovups YMMWORD PTR [rsi+0xe0],ymm5
  72f190:	00 
  72f191:	c5 b4 15 da          	vunpckhps ymm3,ymm9,ymm2
  72f195:	c5 b4 14 d2          	vunpcklps ymm2,ymm9,ymm2
  72f199:	c4 e3 6d 06 e3 31    	vperm2f128 ymm4,ymm2,ymm3,0x31
  72f19f:	c4 e3 6d 06 d3 20    	vperm2f128 ymm2,ymm2,ymm3,0x20
  72f1a5:	c5 fc 11 96 00 01 00 	vmovups YMMWORD PTR [rsi+0x100],ymm2
  72f1ac:	00 
  72f1ad:	c5 fc 11 a6 20 01 00 	vmovups YMMWORD PTR [rsi+0x120],ymm4
  72f1b4:	00 
  72f1b5:	c5 f4 15 d0          	vunpckhps ymm2,ymm1,ymm0
  72f1b9:	c5 f4 14 c0          	vunpcklps ymm0,ymm1,ymm0
  72f1bd:	c4 e3 7d 06 ca 31    	vperm2f128 ymm1,ymm0,ymm2,0x31
  72f1c3:	c4 e3 7d 06 c2 20    	vperm2f128 ymm0,ymm0,ymm2,0x20
  72f1c9:	c5 fc 11 86 40 01 00 	vmovups YMMWORD PTR [rsi+0x140],ymm0
  72f1d0:	00 
  72f1d1:	c5 fc 11 8e 60 01 00 	vmovups YMMWORD PTR [rsi+0x160],ymm1
  72f1d8:	00 
  72f1d9:	48 81 c4 88 00 00 00 	add    rsp,0x88
  72f1e0:	c5 f8 77             	vzeroupper
  72f1e3:	c3                   	ret
