
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000006d3ac0 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  6d3ac0:	48 83 ec 28          	sub    rsp,0x28
  6d3ac4:	48 c1 e2 06          	shl    rdx,0x6
  6d3ac8:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  6d3acc:	31 d2                	xor    edx,edx
  6d3ace:	66 90                	xchg   ax,ax
  6d3ad0:	c5 fb 10 44 17 10    	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x10]
  6d3ad6:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  6d3adc:	c4 41 20 57 db       	vxorps xmm11,xmm11,xmm11
  6d3ae1:	c4 c3 7d 0c cb c0    	vblendps ymm1,ymm0,ymm11,0xc0
  6d3ae7:	c5 fb 10 44 17 28    	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x28]
  6d3aed:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  6d3af3:	c4 43 7d 0c cb c0    	vblendps ymm9,ymm0,ymm11,0xc0
  6d3af9:	c5 fb 10 44 17 40    	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x40]
  6d3aff:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  6d3b05:	c4 43 7d 0c c3 c0    	vblendps ymm8,ymm0,ymm11,0xc0
  6d3b0b:	c5 f8 10 34 17       	vmovups xmm6,XMMWORD PTR [rdi+rdx*1]
  6d3b10:	c5 f8 10 7c 17 18    	vmovups xmm7,XMMWORD PTR [rdi+rdx*1+0x18]
  6d3b16:	c5 78 10 6c 17 30    	vmovups xmm13,XMMWORD PTR [rdi+rdx*1+0x30]
  6d3b1c:	c5 f8 10 44 17 48    	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x48]
  6d3b22:	c5 f8 29 04 24       	vmovaps XMMWORD PTR [rsp],xmm0
  6d3b27:	c5 fb 10 44 17 58    	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x58]
  6d3b2d:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  6d3b33:	c4 c3 7d 0c c3 c0    	vblendps ymm0,ymm0,ymm11,0xc0
  6d3b39:	c5 fc 11 44 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm0
  6d3b3f:	c5 78 10 54 17 60    	vmovups xmm10,XMMWORD PTR [rdi+rdx*1+0x60]
  6d3b45:	c5 fb 10 44 17 70    	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x70]
  6d3b4b:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  6d3b51:	c4 c3 7d 0c db c0    	vblendps ymm3,ymm0,ymm11,0xc0
  6d3b57:	c5 78 10 74 17 78    	vmovups xmm14,XMMWORD PTR [rdi+rdx*1+0x78]
  6d3b5d:	c5 fb 10 84 17 88 00 	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x88]
  6d3b64:	00 00 
  6d3b66:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  6d3b6c:	c4 43 7d 0c fb c0    	vblendps ymm15,ymm0,ymm11,0xc0
  6d3b72:	c5 f8 10 94 17 90 00 	vmovups xmm2,XMMWORD PTR [rdi+rdx*1+0x90]
  6d3b79:	00 00 
  6d3b7b:	c5 fb 10 84 17 a0 00 	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0xa0]
  6d3b82:	00 00 
  6d3b84:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  6d3b8a:	c4 c3 7d 0c c3 c0    	vblendps ymm0,ymm0,ymm11,0xc0
  6d3b90:	c5 78 10 a4 17 a8 00 	vmovups xmm12,XMMWORD PTR [rdi+rdx*1+0xa8]
  6d3b97:	00 00 
  6d3b99:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  6d3b9f:	c5 c8 c6 e1 88       	vshufps xmm4,xmm6,xmm1,0x88
  6d3ba4:	c5 fc 11 64 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm4
  6d3baa:	c4 e3 7d 19 dc 01    	vextractf128 xmm4,ymm3,0x1
  6d3bb0:	c5 c8 c6 c9 dd       	vshufps xmm1,xmm6,xmm1,0xdd
  6d3bb5:	c5 fc 11 4c 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm1
  6d3bbb:	c5 a8 c6 f4 88       	vshufps xmm6,xmm10,xmm4,0x88
  6d3bc0:	c4 63 7d 19 c1 01    	vextractf128 xmm1,ymm8,0x1
  6d3bc6:	c5 28 c6 d4 dd       	vshufps xmm10,xmm10,xmm4,0xdd
  6d3bcb:	c5 90 c6 d9 88       	vshufps xmm3,xmm13,xmm1,0x88
  6d3bd0:	c5 fc 11 5c 24 e0    	vmovups YMMWORD PTR [rsp-0x20],ymm3
  6d3bd6:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  6d3bdc:	c5 10 c6 c1 dd       	vshufps xmm8,xmm13,xmm1,0xdd
  6d3be1:	c5 68 c6 e8 88       	vshufps xmm13,xmm2,xmm0,0x88
  6d3be6:	c4 63 7d 19 c9 01    	vextractf128 xmm1,ymm9,0x1
  6d3bec:	c5 e8 c6 e8 dd       	vshufps xmm5,xmm2,xmm0,0xdd
  6d3bf1:	c5 40 c6 c9 88       	vshufps xmm9,xmm7,xmm1,0x88
  6d3bf6:	c4 63 7d 19 f8 01    	vextractf128 xmm0,ymm15,0x1
  6d3bfc:	c5 40 c6 f9 dd       	vshufps xmm15,xmm7,xmm1,0xdd
  6d3c01:	c5 88 c6 e0 88       	vshufps xmm4,xmm14,xmm0,0x88
  6d3c06:	c5 fc 10 4c 24 a0    	vmovups ymm1,YMMWORD PTR [rsp-0x60]
  6d3c0c:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  6d3c12:	c5 88 c6 d8 dd       	vshufps xmm3,xmm14,xmm0,0xdd
  6d3c17:	c5 f8 28 04 24       	vmovaps xmm0,XMMWORD PTR [rsp]
  6d3c1c:	c5 f8 c6 f9 88       	vshufps xmm7,xmm0,xmm1,0x88
  6d3c21:	c5 78 c6 f1 dd       	vshufps xmm14,xmm0,xmm1,0xdd
  6d3c26:	c5 fb 10 8c 17 b8 00 	vmovsd xmm1,QWORD PTR [rdi+rdx*1+0xb8]
  6d3c2d:	00 00 
  6d3c2f:	c4 e3 7d 18 c9 01    	vinsertf128 ymm1,ymm0,xmm1,0x1
  6d3c35:	c4 c3 75 0c cb c0    	vblendps ymm1,ymm1,ymm11,0xc0
  6d3c3b:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  6d3c41:	c5 98 c6 d1 88       	vshufps xmm2,xmm12,xmm1,0x88
  6d3c46:	c5 98 c6 c1 dd       	vshufps xmm0,xmm12,xmm1,0xdd
  6d3c4b:	c5 fc 10 4c 24 80    	vmovups ymm1,YMMWORD PTR [rsp-0x80]
  6d3c51:	c5 74 58 e6          	vaddps ymm12,ymm1,ymm6
  6d3c55:	c5 f4 5c ce          	vsubps ymm1,ymm1,ymm6
  6d3c59:	c5 fc 11 4c 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm1
  6d3c5f:	c5 bc 58 f5          	vaddps ymm6,ymm8,ymm5
  6d3c63:	c5 3c 5c dd          	vsubps ymm11,ymm8,ymm5
  6d3c67:	c5 b4 58 cc          	vaddps ymm1,ymm9,ymm4
  6d3c6b:	c5 b4 5c e4          	vsubps ymm4,ymm9,ymm4
  6d3c6f:	c5 04 58 c3          	vaddps ymm8,ymm15,ymm3
  6d3c73:	c5 84 5c db          	vsubps ymm3,ymm15,ymm3
  6d3c77:	c5 0c 58 c8          	vaddps ymm9,ymm14,ymm0
  6d3c7b:	c5 8c 5c c0          	vsubps ymm0,ymm14,ymm0
  6d3c7f:	c5 44 58 f2          	vaddps ymm14,ymm7,ymm2
  6d3c83:	c5 c4 5c d2          	vsubps ymm2,ymm7,ymm2
  6d3c87:	c5 fc 10 6c 24 c0    	vmovups ymm5,YMMWORD PTR [rsp-0x40]
  6d3c8d:	c5 2c 58 fd          	vaddps ymm15,ymm10,ymm5
  6d3c91:	c4 c1 54 5c fa       	vsubps ymm7,ymm5,ymm10
  6d3c96:	c5 fc 10 6c 24 e0    	vmovups ymm5,YMMWORD PTR [rsp-0x20]
  6d3c9c:	c5 14 58 d5          	vaddps ymm10,ymm13,ymm5
  6d3ca0:	c5 14 5c ed          	vsubps ymm13,ymm13,ymm5
  6d3ca4:	c5 dc 58 eb          	vaddps ymm5,ymm4,ymm3
  6d3ca8:	c5 fc 11 6c 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm5
  6d3cae:	c5 e4 5c e4          	vsubps ymm4,ymm3,ymm4
  6d3cb2:	c5 fc 5c da          	vsubps ymm3,ymm0,ymm2
  6d3cb6:	c5 fc 11 5c 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm3
  6d3cbc:	c5 ec 58 d8          	vaddps ymm3,ymm2,ymm0
  6d3cc0:	c4 c1 1c 58 d2       	vaddps ymm2,ymm12,ymm10
  6d3cc5:	c4 41 1c 5c e2       	vsubps ymm12,ymm12,ymm10
  6d3cca:	c4 c1 3c 58 c1       	vaddps ymm0,ymm8,ymm9
  6d3ccf:	c5 fc 11 44 24 e0    	vmovups YMMWORD PTR [rsp-0x20],ymm0
  6d3cd5:	c4 c1 3c 5c e9       	vsubps ymm5,ymm8,ymm9
  6d3cda:	c5 04 58 c6          	vaddps ymm8,ymm15,ymm6
  6d3cde:	c5 84 5c c6          	vsubps ymm0,ymm15,ymm6
  6d3ce2:	c5 fc 11 04 24       	vmovups YMMWORD PTR [rsp],ymm0
  6d3ce7:	c5 8c 58 f1          	vaddps ymm6,ymm14,ymm1
  6d3ceb:	c5 0c 5c f9          	vsubps ymm15,ymm14,ymm1
  6d3cef:	c5 fc 10 44 24 a0    	vmovups ymm0,YMMWORD PTR [rsp-0x60]
  6d3cf5:	c5 24 58 f0          	vaddps ymm14,ymm11,ymm0
  6d3cf9:	c4 41 7c 5c cb       	vsubps ymm9,ymm0,ymm11
  6d3cfe:	c4 e2 7d 18 05 95 16 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff9a1695]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  6d3d05:	9a ff 
  6d3d07:	c5 dc 59 e0          	vmulps ymm4,ymm4,ymm0
  6d3d0b:	c5 e4 59 c8          	vmulps ymm1,ymm3,ymm0
  6d3d0f:	c5 5c 5c d1          	vsubps ymm10,ymm4,ymm1
  6d3d13:	c5 dc 58 e1          	vaddps ymm4,ymm4,ymm1
  6d3d17:	c5 14 58 df          	vaddps ymm11,ymm13,ymm7
  6d3d1b:	c4 c1 44 5c cd       	vsubps ymm1,ymm7,ymm13
  6d3d20:	c5 fc 59 7c 24 c0    	vmulps ymm7,ymm0,YMMWORD PTR [rsp-0x40]
  6d3d26:	c5 fc 59 5c 24 80    	vmulps ymm3,ymm0,YMMWORD PTR [rsp-0x80]
  6d3d2c:	c5 44 58 eb          	vaddps ymm13,ymm7,ymm3
  6d3d30:	c5 e4 5c df          	vsubps ymm3,ymm3,ymm7
  6d3d34:	c5 ec 58 fe          	vaddps ymm7,ymm2,ymm6
  6d3d38:	c5 e8 5c c6          	vsubps xmm0,xmm2,xmm6
  6d3d3c:	c4 e3 45 18 c0 01    	vinsertf128 ymm0,ymm7,xmm0,0x1
  6d3d42:	c4 c1 0c 58 f5       	vaddps ymm6,ymm14,ymm13
  6d3d47:	c4 c1 08 5c fd       	vsubps xmm7,xmm14,xmm13
  6d3d4c:	c4 e3 4d 18 f7 01    	vinsertf128 ymm6,ymm6,xmm7,0x1
  6d3d52:	c5 9c 58 fd          	vaddps ymm7,ymm12,ymm5
  6d3d56:	c5 98 5c d5          	vsubps xmm2,xmm12,xmm5
  6d3d5a:	c4 e3 45 18 d2 01    	vinsertf128 ymm2,ymm7,xmm2,0x1
  6d3d60:	c5 b4 58 fc          	vaddps ymm7,ymm9,ymm4
  6d3d64:	c5 b0 5c e4          	vsubps xmm4,xmm9,xmm4
  6d3d68:	c4 e3 45 18 e4 01    	vinsertf128 ymm4,ymm7,xmm4,0x1
  6d3d6e:	c5 fd 15 fa          	vunpckhpd ymm7,ymm0,ymm2
  6d3d72:	c5 fd 14 c2          	vunpcklpd ymm0,ymm0,ymm2
  6d3d76:	c5 cd 15 d4          	vunpckhpd ymm2,ymm6,ymm4
  6d3d7a:	c5 c4 c6 d2 88       	vshufps ymm2,ymm7,ymm2,0x88
  6d3d7f:	c5 cd 14 e4          	vunpcklpd ymm4,ymm6,ymm4
  6d3d83:	c5 fc c6 f4 88       	vshufps ymm6,ymm0,ymm4,0x88
  6d3d88:	c5 fc c6 c4 dd       	vshufps ymm0,ymm0,ymm4,0xdd
  6d3d8d:	c5 fc 10 6c 24 e0    	vmovups ymm5,YMMWORD PTR [rsp-0x20]
  6d3d93:	c5 bc 58 e5          	vaddps ymm4,ymm8,ymm5
  6d3d97:	c5 b8 5c fd          	vsubps xmm7,xmm8,xmm5
  6d3d9b:	c4 e3 5d 18 ff 01    	vinsertf128 ymm7,ymm4,xmm7,0x1
  6d3da1:	c4 c1 24 58 e2       	vaddps ymm4,ymm11,ymm10
  6d3da6:	c4 41 20 5c c2       	vsubps xmm8,xmm11,xmm10
  6d3dab:	c4 43 5d 18 c0 01    	vinsertf128 ymm8,ymm4,xmm8,0x1
  6d3db1:	c5 fc 10 2c 24       	vmovups ymm5,YMMWORD PTR [rsp]
  6d3db6:	c5 84 58 e5          	vaddps ymm4,ymm15,ymm5
  6d3dba:	c4 c1 50 5c ef       	vsubps xmm5,xmm5,xmm15
  6d3dbf:	c4 e3 5d 18 ed 01    	vinsertf128 ymm5,ymm4,xmm5,0x1
  6d3dc5:	c5 74 58 cb          	vaddps ymm9,ymm1,ymm3
  6d3dc9:	c5 cc c6 e6 d8       	vshufps ymm4,ymm6,ymm6,0xd8
  6d3dce:	c5 fc c6 f0 d8       	vshufps ymm6,ymm0,ymm0,0xd8
  6d3dd3:	c5 ec c6 c2 d8       	vshufps ymm0,ymm2,ymm2,0xd8
  6d3dd8:	c5 f0 5c cb          	vsubps xmm1,xmm1,xmm3
  6d3ddc:	c4 e3 35 18 c9 01    	vinsertf128 ymm1,ymm9,xmm1,0x1
  6d3de2:	c5 c5 15 d5          	vunpckhpd ymm2,ymm7,ymm5
  6d3de6:	c5 c5 14 ed          	vunpcklpd ymm5,ymm7,ymm5
  6d3dea:	c5 bd 15 d9          	vunpckhpd ymm3,ymm8,ymm1
  6d3dee:	c5 ec c6 d3 88       	vshufps ymm2,ymm2,ymm3,0x88
  6d3df3:	c5 bd 14 c9          	vunpcklpd ymm1,ymm8,ymm1
  6d3df7:	c5 d4 c6 d9 88       	vshufps ymm3,ymm5,ymm1,0x88
  6d3dfc:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  6d3e01:	c5 d4 c6 c9 dd       	vshufps ymm1,ymm5,ymm1,0xdd
  6d3e06:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  6d3e0b:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  6d3e10:	c5 fc 10 69 40       	vmovups ymm5,YMMWORD PTR [rcx+0x40]
  6d3e15:	c5 fc 10 79 60       	vmovups ymm7,YMMWORD PTR [rcx+0x60]
  6d3e1a:	c5 54 59 c1          	vmulps ymm8,ymm5,ymm1
  6d3e1e:	c4 62 4d b8 c7       	vfmadd231ps ymm8,ymm6,ymm7
  6d3e23:	c5 d4 59 ee          	vmulps ymm5,ymm5,ymm6
  6d3e27:	c5 fc 10 b1 80 00 00 	vmovups ymm6,YMMWORD PTR [rcx+0x80]
  6d3e2e:	00 
  6d3e2f:	c4 e2 75 bc ef       	vfnmadd231ps ymm5,ymm1,ymm7
  6d3e34:	c5 fc 10 89 a0 00 00 	vmovups ymm1,YMMWORD PTR [rcx+0xa0]
  6d3e3b:	00 
  6d3e3c:	c5 cc 59 fa          	vmulps ymm7,ymm6,ymm2
  6d3e40:	c4 e2 7d b8 f9       	vfmadd231ps ymm7,ymm0,ymm1
  6d3e45:	c5 cc 59 c0          	vmulps ymm0,ymm6,ymm0
  6d3e49:	c5 bc 58 f7          	vaddps ymm6,ymm8,ymm7
  6d3e4d:	c4 e2 6d bc c1       	vfnmadd231ps ymm0,ymm2,ymm1
  6d3e52:	c4 62 7d 18 0d 05 16 	vbroadcastss ymm9,DWORD PTR [rip+0xffffffffff9a1605]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6d3e59:	9a ff 
  6d3e5b:	c5 7c 29 c9          	vmovaps ymm1,ymm9
  6d3e5f:	c4 e2 4d ac cb       	vfnmadd213ps ymm1,ymm6,ymm3
  6d3e64:	c5 d4 5c d0          	vsubps ymm2,ymm5,ymm0
  6d3e68:	c4 62 7d 18 15 63 14 	vbroadcastss ymm10,DWORD PTR [rip+0xffffffffff9a1463]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6d3e6f:	9a ff 
  6d3e71:	c5 ac 59 d2          	vmulps ymm2,ymm10,ymm2
  6d3e75:	c5 d4 58 c0          	vaddps ymm0,ymm5,ymm0
  6d3e79:	c5 f4 58 ea          	vaddps ymm5,ymm1,ymm2
  6d3e7d:	c5 bc 5c ff          	vsubps ymm7,ymm8,ymm7
  6d3e81:	c4 41 7c 28 c1       	vmovaps ymm8,ymm9
  6d3e86:	c4 62 7d ac c4       	vfnmadd213ps ymm8,ymm0,ymm4
  6d3e8b:	c5 ac 59 ff          	vmulps ymm7,ymm10,ymm7
  6d3e8f:	c5 f4 5c ca          	vsubps ymm1,ymm1,ymm2
  6d3e93:	c5 bc 5c d7          	vsubps ymm2,ymm8,ymm7
  6d3e97:	c5 bc 58 ff          	vaddps ymm7,ymm8,ymm7
  6d3e9b:	c5 cc 58 db          	vaddps ymm3,ymm6,ymm3
  6d3e9f:	c5 fc 58 c4          	vaddps ymm0,ymm0,ymm4
  6d3ea3:	c5 fc 15 e3          	vunpckhps ymm4,ymm0,ymm3
  6d3ea7:	c5 fc 14 c3          	vunpcklps ymm0,ymm0,ymm3
  6d3eab:	c4 e3 7d 06 dc 31    	vperm2f128 ymm3,ymm0,ymm4,0x31
  6d3eb1:	c4 e3 7d 06 c4 20    	vperm2f128 ymm0,ymm0,ymm4,0x20
  6d3eb7:	c5 fc 11 04 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm0
  6d3ebc:	c5 fc 11 5c 16 20    	vmovups YMMWORD PTR [rsi+rdx*1+0x20],ymm3
  6d3ec2:	c5 c4 15 c1          	vunpckhps ymm0,ymm7,ymm1
  6d3ec6:	c5 c4 14 c9          	vunpcklps ymm1,ymm7,ymm1
  6d3eca:	c4 e3 75 06 d8 31    	vperm2f128 ymm3,ymm1,ymm0,0x31
  6d3ed0:	c4 e3 75 06 c0 20    	vperm2f128 ymm0,ymm1,ymm0,0x20
  6d3ed6:	c5 fc 11 44 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm0
  6d3edc:	c5 fc 11 5c 16 60    	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm3
  6d3ee2:	c5 ec 15 c5          	vunpckhps ymm0,ymm2,ymm5
  6d3ee6:	c5 ec 14 cd          	vunpcklps ymm1,ymm2,ymm5
  6d3eea:	c4 e3 75 06 d0 31    	vperm2f128 ymm2,ymm1,ymm0,0x31
  6d3ef0:	c4 e3 75 06 c0 20    	vperm2f128 ymm0,ymm1,ymm0,0x20
  6d3ef6:	c5 fc 11 84 16 80 00 	vmovups YMMWORD PTR [rsi+rdx*1+0x80],ymm0
  6d3efd:	00 00 
  6d3eff:	c5 fc 11 94 16 a0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xa0],ymm2
  6d3f06:	00 00 
  6d3f08:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  6d3f0f:	48 39 d0             	cmp    rax,rdx
  6d3f12:	0f 85 b8 fb ff ff    	jne    6d3ad0 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle+0x10>
  6d3f18:	48 83 c4 28          	add    rsp,0x28
  6d3f1c:	c5 f8 77             	vzeroupper
  6d3f1f:	c3                   	ret
