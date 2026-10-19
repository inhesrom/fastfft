
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000721d00 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  721d00:	55                   	push   rbp
  721d01:	48 89 e5             	mov    rbp,rsp
  721d04:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  721d08:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  721d0f:	48 6b c2 78          	imul   rax,rdx,0x78
  721d13:	31 d2                	xor    edx,edx
  721d15:	4c 8d 44 24 40       	lea    r8,[rsp+0x40]
  721d1a:	4c 8d 4c 24 18       	lea    r9,[rsp+0x18]
  721d1f:	90                   	nop
  721d20:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  721d25:	4c 89 44 24 18       	mov    QWORD PTR [rsp+0x18],r8
  721d2a:	c5 fc 10 0c 17       	vmovups ymm1,YMMWORD PTR [rdi+rdx*1]
  721d2f:	c5 fc 10 54 17 28    	vmovups ymm2,YMMWORD PTR [rdi+rdx*1+0x28]
  721d35:	c5 fb 10 64 17 48    	vmovsd xmm4,QWORD PTR [rdi+rdx*1+0x48]
  721d3b:	c5 fc 10 6c 17 50    	vmovups ymm5,YMMWORD PTR [rdi+rdx*1+0x50]
  721d41:	c5 fb 10 7c 17 70    	vmovsd xmm7,QWORD PTR [rdi+rdx*1+0x70]
  721d47:	c5 7b 10 44 17 20    	vmovsd xmm8,QWORD PTR [rdi+rdx*1+0x20]
  721d4d:	c4 41 74 c6 c8 88    	vshufps ymm9,ymm1,ymm8,0x88
  721d53:	c4 43 fd 01 c9 d8    	vpermpd ymm9,ymm9,0xd8
  721d59:	c5 6c c6 d4 88       	vshufps ymm10,ymm2,ymm4,0x88
  721d5e:	c4 43 fd 01 d2 d8    	vpermpd ymm10,ymm10,0xd8
  721d64:	c5 54 c6 df 88       	vshufps ymm11,ymm5,ymm7,0x88
  721d69:	c4 c1 74 c6 c8 dd    	vshufps ymm1,ymm1,ymm8,0xdd
  721d6f:	c5 ec c6 d4 dd       	vshufps ymm2,ymm2,ymm4,0xdd
  721d74:	c4 c3 fd 01 e3 d8    	vpermpd ymm4,ymm11,0xd8
  721d7a:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  721d80:	c5 d4 c6 ef dd       	vshufps ymm5,ymm5,ymm7,0xdd
  721d85:	c4 e3 fd 01 ed d8    	vpermpd ymm5,ymm5,0xd8
  721d8b:	c4 e3 fd 01 c9 d8    	vpermpd ymm1,ymm1,0xd8
  721d91:	c5 ac 58 fc          	vaddps ymm7,ymm10,ymm4
  721d95:	c5 34 58 df          	vaddps ymm11,ymm9,ymm7
  721d99:	c5 6c 58 e5          	vaddps ymm12,ymm2,ymm5
  721d9d:	c5 1c 58 c1          	vaddps ymm8,ymm12,ymm1
  721da1:	c4 e2 7d 18 1d b6 36 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff9536b6]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  721da8:	95 ff 
  721daa:	c4 c2 65 ac f9       	vfnmadd213ps ymm7,ymm3,ymm9
  721daf:	c5 ec 5c d5          	vsubps ymm2,ymm2,ymm5
  721db3:	c4 e2 7d 18 35 18 35 	vbroadcastss ymm6,DWORD PTR [rip+0xffffffffff953518]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  721dba:	95 ff 
  721dbc:	c5 ec 59 d6          	vmulps ymm2,ymm2,ymm6
  721dc0:	c5 c4 58 ea          	vaddps ymm5,ymm7,ymm2
  721dc4:	c4 62 65 ac e1       	vfnmadd213ps ymm12,ymm3,ymm1
  721dc9:	c5 ac 5c cc          	vsubps ymm1,ymm10,ymm4
  721dcd:	c5 f4 59 ce          	vmulps ymm1,ymm1,ymm6
  721dd1:	c5 1c 5c d1          	vsubps ymm10,ymm12,ymm1
  721dd5:	c5 c4 5c d2          	vsubps ymm2,ymm7,ymm2
  721dd9:	c5 78 29 dc          	vmovaps xmm4,xmm11
  721ddd:	c4 63 7d 19 df 01    	vextractf128 xmm7,ymm11,0x1
  721de3:	c5 9c 58 c9          	vaddps ymm1,ymm12,ymm1
  721de7:	c5 78 28 cd          	vmovaps xmm9,xmm5
  721deb:	c4 c3 7d 19 eb 01    	vextractf128 xmm11,ymm5,0x1
  721df1:	c5 78 28 e2          	vmovaps xmm12,xmm2
  721df5:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  721dfb:	c5 c5 14 d2          	vunpcklpd ymm2,ymm7,ymm2
  721dff:	c4 41 5d 15 ec       	vunpckhpd ymm13,ymm4,ymm12
  721e04:	c5 fa 7e ed          	vmovq  xmm5,xmm5
  721e08:	c4 c1 5d 14 e4       	vunpcklpd ymm4,ymm4,ymm12
  721e0d:	c4 c1 35 73 d9 08    	vpsrldq ymm9,ymm9,0x8
  721e13:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  721e17:	c4 e3 25 0c f8 cc    	vblendps ymm7,ymm11,ymm0,0xcc
  721e1d:	c5 ec c6 d7 88       	vshufps ymm2,ymm2,ymm7,0x88
  721e22:	c5 dc c6 dd 88       	vshufps ymm3,ymm4,ymm5,0x88
  721e27:	c5 fc 29 5c 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm3
  721e2d:	c5 dc c6 e5 dd       	vshufps ymm4,ymm4,ymm5,0xdd
  721e32:	c5 78 29 c5          	vmovaps xmm5,xmm8
  721e36:	c4 43 7d 19 c3 01    	vextractf128 xmm11,ymm8,0x1
  721e3c:	c4 41 14 c6 e1 88    	vshufps ymm12,ymm13,ymm9,0x88
  721e42:	c4 41 78 28 f2       	vmovaps xmm14,xmm10
  721e47:	c4 43 7d 19 d7 01    	vextractf128 xmm15,ymm10,0x1
  721e4d:	c5 f8 28 f1          	vmovaps xmm6,xmm1
  721e51:	c4 41 14 c6 c1 dd    	vshufps ymm8,ymm13,ymm9,0xdd
  721e57:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  721e5d:	c5 25 14 d9          	vunpcklpd ymm11,ymm11,ymm1
  721e61:	c5 d5 15 de          	vunpckhpd ymm3,ymm5,ymm6
  721e65:	c5 dc c6 cc d8       	vshufps ymm1,ymm4,ymm4,0xd8
  721e6a:	c5 55 14 ce          	vunpcklpd ymm9,ymm5,ymm6
  721e6e:	c4 41 7a 7e d2       	vmovq  xmm10,xmm10
  721e73:	c4 c1 5d 73 de 08    	vpsrldq ymm4,ymm14,0x8
  721e79:	c4 41 1c c6 e4 d8    	vshufps ymm12,ymm12,ymm12,0xd8
  721e7f:	c4 e3 05 0c e8 cc    	vblendps ymm5,ymm15,ymm0,0xcc
  721e85:	c5 a4 c6 ed 88       	vshufps ymm5,ymm11,ymm5,0x88
  721e8a:	c4 c1 34 c6 f2 dd    	vshufps ymm6,ymm9,ymm10,0xdd
  721e90:	c5 6c c6 ea d8       	vshufps ymm13,ymm2,ymm2,0xd8
  721e95:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  721e9a:	c5 64 c6 dc 88       	vshufps ymm11,ymm3,ymm4,0x88
  721e9f:	c5 e4 c6 d4 dd       	vshufps ymm2,ymm3,ymm4,0xdd
  721ea4:	c4 41 24 c6 f3 d8    	vshufps ymm14,ymm11,ymm11,0xd8
  721eaa:	c5 d4 c6 dd d8       	vshufps ymm3,ymm5,ymm5,0xd8
  721eaf:	c5 fc 10 61 40       	vmovups ymm4,YMMWORD PTR [rcx+0x40]
  721eb4:	c5 7c 10 79 60       	vmovups ymm15,YMMWORD PTR [rcx+0x60]
  721eb9:	c5 5c 59 d9          	vmulps ymm11,ymm4,ymm1
  721ebd:	c4 42 4d bc df       	vfnmadd231ps ymm11,ymm6,ymm15
  721ec2:	c5 dc 59 ee          	vmulps ymm5,ymm4,ymm6
  721ec6:	c5 fc 10 b1 00 01 00 	vmovups ymm6,YMMWORD PTR [rcx+0x100]
  721ecd:	00 
  721ece:	c4 c2 75 b8 ef       	vfmadd231ps ymm5,ymm1,ymm15
  721ed3:	c5 fc 10 89 20 01 00 	vmovups ymm1,YMMWORD PTR [rcx+0x120]
  721eda:	00 
  721edb:	c5 94 59 e6          	vmulps ymm4,ymm13,ymm6
  721edf:	c5 cc 59 f3          	vmulps ymm6,ymm6,ymm3
  721ee3:	c4 e2 65 bc e1       	vfnmadd231ps ymm4,ymm3,ymm1
  721ee8:	c5 fc 10 99 80 00 00 	vmovups ymm3,YMMWORD PTR [rcx+0x80]
  721eef:	00 
  721ef0:	c4 e2 15 b8 f1       	vfmadd231ps ymm6,ymm13,ymm1
  721ef5:	c5 fc 10 89 a0 00 00 	vmovups ymm1,YMMWORD PTR [rcx+0xa0]
  721efc:	00 
  721efd:	c5 1c 59 fb          	vmulps ymm15,ymm12,ymm3
  721f01:	c4 62 0d bc f9       	vfnmadd231ps ymm15,ymm14,ymm1
  721f06:	c5 8c 59 db          	vmulps ymm3,ymm14,ymm3
  721f0a:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  721f10:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  721f15:	c4 e2 1d b8 d9       	vfmadd231ps ymm3,ymm12,ymm1
  721f1a:	c5 fc 10 89 c0 00 00 	vmovups ymm1,YMMWORD PTR [rcx+0xc0]
  721f21:	00 
  721f22:	c5 7c 10 a1 e0 00 00 	vmovups ymm12,YMMWORD PTR [rcx+0xe0]
  721f29:	00 
  721f2a:	c4 41 34 c6 ca 88    	vshufps ymm9,ymm9,ymm10,0x88
  721f30:	c5 3c 59 d1          	vmulps ymm10,ymm8,ymm1
  721f34:	c4 42 6d bc d4       	vfnmadd231ps ymm10,ymm2,ymm12
  721f39:	c5 74 59 ea          	vmulps ymm13,ymm1,ymm2
  721f3d:	c4 41 34 c6 f1 d8    	vshufps ymm14,ymm9,ymm9,0xd8
  721f43:	c4 42 3d b8 ec       	vfmadd231ps ymm13,ymm8,ymm12
  721f48:	c5 24 58 e4          	vaddps ymm12,ymm11,ymm4
  721f4c:	c5 d4 58 d6          	vaddps ymm2,ymm5,ymm6
  721f50:	c5 d4 5c ee          	vsubps ymm5,ymm5,ymm6
  721f54:	c5 94 58 cb          	vaddps ymm1,ymm13,ymm3
  721f58:	c4 c1 64 5c dd       	vsubps ymm3,ymm3,ymm13
  721f5d:	c4 41 04 58 ea       	vaddps ymm13,ymm15,ymm10
  721f62:	c5 a4 5c e4          	vsubps ymm4,ymm11,ymm4
  721f66:	c4 e2 7d 18 3d e9 37 	vbroadcastss ymm7,DWORD PTR [rip+0xffffffffff9537e9]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  721f6d:	95 ff 
  721f6f:	c5 64 59 c7          	vmulps ymm8,ymm3,ymm7
  721f73:	c4 c1 04 5c f2       	vsubps ymm6,ymm15,ymm10
  721f78:	c4 62 7d 18 0d 67 37 	vbroadcastss ymm9,DWORD PTR [rip+0xffffffffff953767]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  721f7f:	95 ff 
  721f81:	c4 e2 7d 18 05 16 34 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff953416]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  721f88:	95 ff 
  721f8a:	c4 62 55 b8 c0       	vfmadd231ps ymm8,ymm5,ymm0
  721f8f:	c5 54 59 df          	vmulps ymm11,ymm5,ymm7
  721f93:	c4 62 7d bc db       	vfnmadd231ps ymm11,ymm0,ymm3
  721f98:	c5 4c 59 d7          	vmulps ymm10,ymm6,ymm7
  721f9c:	c4 62 5d b8 d0       	vfmadd231ps ymm10,ymm4,ymm0
  721fa1:	c5 5c 59 ff          	vmulps ymm15,ymm4,ymm7
  721fa5:	c4 62 7d bc fe       	vfnmadd231ps ymm15,ymm0,ymm6
  721faa:	c4 e2 7d 18 2d 91 36 	vbroadcastss ymm5,DWORD PTR [rip+0xffffffffff953691]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  721fb1:	95 ff 
  721fb3:	c5 fc 28 e5          	vmovaps ymm4,ymm5
  721fb7:	c4 42 6d a8 ce       	vfmadd213ps ymm9,ymm2,ymm14
  721fbc:	c4 c2 6d ac e6       	vfnmadd213ps ymm4,ymm2,ymm14
  721fc1:	c5 88 58 d2          	vaddps xmm2,xmm14,xmm2
  721fc5:	c4 e2 7d 18 05 1a 37 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff95371a]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  721fcc:	95 ff 
  721fce:	c5 7c 28 f0          	vmovaps ymm14,ymm0
  721fd2:	c4 e3 7d 04 5c 24 20 	vpermilps ymm3,YMMWORD PTR [rsp+0x20],0xd8
  721fd9:	d8 
  721fda:	c4 62 1d a8 f3       	vfmadd213ps ymm14,ymm12,ymm3
  721fdf:	c4 62 15 bc f5       	vfnmadd231ps ymm14,ymm13,ymm5
  721fe4:	c4 62 75 bc cd       	vfnmadd231ps ymm9,ymm1,ymm5
  721fe9:	c4 e2 75 b8 e0       	vfmadd231ps ymm4,ymm1,ymm0
  721fee:	c5 e8 58 d1          	vaddps xmm2,xmm2,xmm1
  721ff2:	c5 fc 28 cd          	vmovaps ymm1,ymm5
  721ff6:	c4 e2 1d ac cb       	vfnmadd213ps ymm1,ymm12,ymm3
  721ffb:	c4 e2 15 b8 c8       	vfmadd231ps ymm1,ymm13,ymm0
  722000:	c5 98 58 db          	vaddps xmm3,xmm12,xmm3
  722004:	c5 90 58 db          	vaddps xmm3,xmm13,xmm3
  722008:	c5 e0 14 ea          	vunpcklps xmm5,xmm3,xmm2
  72200c:	c5 e0 15 d2          	vunpckhps xmm2,xmm3,xmm2
  722010:	c5 f8 13 54 16 10    	vmovlps QWORD PTR [rsi+rdx*1+0x10],xmm2
  722016:	c5 f8 11 2c 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm5
  72201b:	c4 c1 30 5c d2       	vsubps xmm2,xmm9,xmm10
  722020:	c4 c1 08 58 d8       	vaddps xmm3,xmm14,xmm8
  722025:	c5 e0 15 ea          	vunpckhps xmm5,xmm3,xmm2
  722029:	c5 e0 14 d2          	vunpcklps xmm2,xmm3,xmm2
  72202d:	c4 c1 58 5c df       	vsubps xmm3,xmm4,xmm15
  722032:	c5 f8 11 54 16 18    	vmovups XMMWORD PTR [rsi+rdx*1+0x18],xmm2
  722038:	c5 a0 58 d1          	vaddps xmm2,xmm11,xmm1
  72203c:	c5 e8 15 f3          	vunpckhps xmm6,xmm2,xmm3
  722040:	c5 e8 14 d3          	vunpcklps xmm2,xmm2,xmm3
  722044:	c5 f8 13 6c 16 28    	vmovlps QWORD PTR [rsi+rdx*1+0x28],xmm5
  72204a:	c5 f8 11 54 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm2
  722050:	c5 80 58 d4          	vaddps xmm2,xmm15,xmm4
  722054:	c4 c1 70 5c cb       	vsubps xmm1,xmm1,xmm11
  722059:	c5 f8 13 74 16 40    	vmovlps QWORD PTR [rsi+rdx*1+0x40],xmm6
  72205f:	c5 f0 15 da          	vunpckhps xmm3,xmm1,xmm2
  722063:	c5 f0 14 ca          	vunpcklps xmm1,xmm1,xmm2
  722067:	c4 c1 30 58 d2       	vaddps xmm2,xmm9,xmm10
  72206c:	c5 f8 11 4c 16 48    	vmovups XMMWORD PTR [rsi+rdx*1+0x48],xmm1
  722072:	c4 c1 08 5c c8       	vsubps xmm1,xmm14,xmm8
  722077:	c5 f0 15 e2          	vunpckhps xmm4,xmm1,xmm2
  72207b:	c5 f0 14 ca          	vunpcklps xmm1,xmm1,xmm2
  72207f:	c5 f8 13 5c 16 58    	vmovlps QWORD PTR [rsi+rdx*1+0x58],xmm3
  722085:	c5 f8 11 4c 16 60    	vmovups XMMWORD PTR [rsi+rdx*1+0x60],xmm1
  72208b:	c5 f8 13 64 16 70    	vmovlps QWORD PTR [rsi+rdx*1+0x70],xmm4
  722091:	48 83 c2 78          	add    rdx,0x78
  722095:	48 39 d0             	cmp    rax,rdx
  722098:	0f 85 82 fc ff ff    	jne    721d20 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle+0x20>
  72209e:	48 89 ec             	mov    rsp,rbp
  7220a1:	5d                   	pop    rbp
  7220a2:	c5 f8 77             	vzeroupper
  7220a5:	c3                   	ret
