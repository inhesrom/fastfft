
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000006c5940 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  6c5940:	48 81 ec e8 01 00 00 	sub    rsp,0x1e8
  6c5947:	48 c1 e2 07          	shl    rdx,0x7
  6c594b:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  6c594f:	31 d2                	xor    edx,edx
  6c5951:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  6c5958:	0f 1f 84 00 00 00 00 
  6c595f:	00 
  6c5960:	c5 fc 10 1c 17       	vmovups ymm3,YMMWORD PTR [rdi+rdx*1]
  6c5965:	c5 fc 10 6c 17 20    	vmovups ymm5,YMMWORD PTR [rdi+rdx*1+0x20]
  6c596b:	c5 7c 10 4c 17 40    	vmovups ymm9,YMMWORD PTR [rdi+rdx*1+0x40]
  6c5971:	c5 fc 10 64 17 60    	vmovups ymm4,YMMWORD PTR [rdi+rdx*1+0x60]
  6c5977:	c5 fc 10 b4 17 80 00 	vmovups ymm6,YMMWORD PTR [rdi+rdx*1+0x80]
  6c597e:	00 00 
  6c5980:	c5 fc 10 bc 17 a0 00 	vmovups ymm7,YMMWORD PTR [rdi+rdx*1+0xa0]
  6c5987:	00 00 
  6c5989:	c5 7c 10 94 17 c0 00 	vmovups ymm10,YMMWORD PTR [rdi+rdx*1+0xc0]
  6c5990:	00 00 
  6c5992:	c5 7c 10 a4 17 e0 00 	vmovups ymm12,YMMWORD PTR [rdi+rdx*1+0xe0]
  6c5999:	00 00 
  6c599b:	c5 7c 10 ac 17 00 01 	vmovups ymm13,YMMWORD PTR [rdi+rdx*1+0x100]
  6c59a2:	00 00 
  6c59a4:	c5 7c 10 b4 17 20 01 	vmovups ymm14,YMMWORD PTR [rdi+rdx*1+0x120]
  6c59ab:	00 00 
  6c59ad:	c5 7c 10 bc 17 40 01 	vmovups ymm15,YMMWORD PTR [rdi+rdx*1+0x140]
  6c59b4:	00 00 
  6c59b6:	c5 fc 10 8c 17 60 01 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x160]
  6c59bd:	00 00 
  6c59bf:	c5 e4 c6 d5 88       	vshufps ymm2,ymm3,ymm5,0x88
  6c59c4:	c4 e3 fd 01 c2 d8    	vpermpd ymm0,ymm2,0xd8
  6c59ca:	c5 fc 11 44 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm0
  6c59d0:	c5 cc c6 d7 88       	vshufps ymm2,ymm6,ymm7,0x88
  6c59d5:	c4 e3 fd 01 c2 d8    	vpermpd ymm0,ymm2,0xd8
  6c59db:	c5 fc 11 44 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm0
  6c59e1:	c4 c1 14 c6 d6 88    	vshufps ymm2,ymm13,ymm14,0x88
  6c59e7:	c4 e3 fd 01 c2 d8    	vpermpd ymm0,ymm2,0xd8
  6c59ed:	c5 fc 11 44 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm0
  6c59f3:	c4 41 2c c6 c4 88    	vshufps ymm8,ymm10,ymm12,0x88
  6c59f9:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  6c59ff:	c5 64 c6 dd dd       	vshufps ymm11,ymm3,ymm5,0xdd
  6c5a04:	c5 84 c6 d9 88       	vshufps ymm3,ymm15,ymm1,0x88
  6c5a09:	c4 e3 fd 01 db d8    	vpermpd ymm3,ymm3,0xd8
  6c5a0f:	c5 fc 11 5c 24 20    	vmovups YMMWORD PTR [rsp+0x20],ymm3
  6c5a15:	c5 cc c6 f7 dd       	vshufps ymm6,ymm6,ymm7,0xdd
  6c5a1a:	c5 b4 c6 ec 88       	vshufps ymm5,ymm9,ymm4,0x88
  6c5a1f:	c4 e3 fd 01 ed d8    	vpermpd ymm5,ymm5,0xd8
  6c5a25:	c4 43 fd 01 db d8    	vpermpd ymm11,ymm11,0xd8
  6c5a2b:	c4 e3 fd 01 d6 d8    	vpermpd ymm2,ymm6,0xd8
  6c5a31:	c4 c1 14 c6 f6 dd    	vshufps ymm6,ymm13,ymm14,0xdd
  6c5a37:	c4 63 fd 01 ee d8    	vpermpd ymm13,ymm6,0xd8
  6c5a3d:	c4 c1 2c c6 f4 dd    	vshufps ymm6,ymm10,ymm12,0xdd
  6c5a43:	c4 63 fd 01 d6 d8    	vpermpd ymm10,ymm6,0xd8
  6c5a49:	c5 84 c6 c9 dd       	vshufps ymm1,ymm15,ymm1,0xdd
  6c5a4e:	c4 63 fd 01 e1 d8    	vpermpd ymm12,ymm1,0xd8
  6c5a54:	c5 b4 c6 cc dd       	vshufps ymm1,ymm9,ymm4,0xdd
  6c5a59:	c4 63 fd 01 f1 d8    	vpermpd ymm14,ymm1,0xd8
  6c5a5f:	c5 fc 10 64 24 a0    	vmovups ymm4,YMMWORD PTR [rsp-0x60]
  6c5a65:	c5 dc 58 f8          	vaddps ymm7,ymm4,ymm0
  6c5a69:	c5 fc 10 44 24 80    	vmovups ymm0,YMMWORD PTR [rsp-0x80]
  6c5a6f:	c5 c4 58 c8          	vaddps ymm1,ymm7,ymm0
  6c5a73:	c5 fc 11 0c 24       	vmovups YMMWORD PTR [rsp],ymm1
  6c5a78:	c5 e4 58 f5          	vaddps ymm6,ymm3,ymm5
  6c5a7c:	c5 bc 58 de          	vaddps ymm3,ymm8,ymm6
  6c5a80:	c5 fc 11 5c 24 e0    	vmovups YMMWORD PTR [rsp-0x20],ymm3
  6c5a86:	c4 62 7d 18 3d d1 f9 	vbroadcastss ymm15,DWORD PTR [rip+0xffffffffff9af9d1]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6c5a8d:	9a ff 
  6c5a8f:	c4 e2 05 ac f8       	vfnmadd213ps ymm7,ymm15,ymm0
  6c5a94:	c5 14 58 ca          	vaddps ymm9,ymm13,ymm2
  6c5a98:	c4 c1 6c 5c c5       	vsubps ymm0,ymm2,ymm13
  6c5a9d:	c5 f4 58 d3          	vaddps ymm2,ymm1,ymm3
  6c5aa1:	c5 fc 11 94 24 40 01 	vmovups YMMWORD PTR [rsp+0x140],ymm2
  6c5aa8:	00 00 
  6c5aaa:	c4 c2 05 ac f0       	vfnmadd213ps ymm6,ymm15,ymm8
  6c5aaf:	c4 41 1c 58 ee       	vaddps ymm13,ymm12,ymm14
  6c5ab4:	c4 41 1c 5c e6       	vsubps ymm12,ymm12,ymm14
  6c5ab9:	c4 c1 34 58 cb       	vaddps ymm1,ymm9,ymm11
  6c5abe:	c5 fc 11 4c 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm1
  6c5ac4:	c4 42 05 ac cb       	vfnmadd213ps ymm9,ymm15,ymm11
  6c5ac9:	c4 41 14 58 da       	vaddps ymm11,ymm13,ymm10
  6c5ace:	c5 dc 5c 54 24 c0    	vsubps ymm2,ymm4,YMMWORD PTR [rsp-0x40]
  6c5ad4:	c5 24 58 c1          	vaddps ymm8,ymm11,ymm1
  6c5ad8:	c5 7c 11 44 24 40    	vmovups YMMWORD PTR [rsp+0x40],ymm8
  6c5ade:	c4 62 7d 18 35 ed f7 	vbroadcastss ymm14,DWORD PTR [rip+0xffffffffff9af7ed]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6c5ae5:	9a ff 
  6c5ae7:	c5 8c 59 c0          	vmulps ymm0,ymm14,ymm0
  6c5aeb:	c4 42 05 ac ea       	vfnmadd213ps ymm13,ymm15,ymm10
  6c5af0:	c5 44 58 d0          	vaddps ymm10,ymm7,ymm0
  6c5af4:	c4 41 1c 59 e6       	vmulps ymm12,ymm12,ymm14
  6c5af9:	c5 fc 10 4c 24 20    	vmovups ymm1,YMMWORD PTR [rsp+0x20]
  6c5aff:	c5 f4 5c dd          	vsubps ymm3,ymm1,ymm5
  6c5b03:	c5 9c 58 ee          	vaddps ymm5,ymm12,ymm6
  6c5b07:	c5 c4 5c c0          	vsubps ymm0,ymm7,ymm0
  6c5b0b:	c5 2c 5c fd          	vsubps ymm15,ymm10,ymm5
  6c5b0f:	c5 7c 11 bc 24 e0 00 	vmovups YMMWORD PTR [rsp+0xe0],ymm15
  6c5b16:	00 00 
  6c5b18:	c5 8c 59 d2          	vmulps ymm2,ymm14,ymm2
  6c5b1c:	c4 c1 4c 5c fc       	vsubps ymm7,ymm6,ymm12
  6c5b21:	c5 34 5c e2          	vsubps ymm12,ymm9,ymm2
  6c5b25:	c5 8c 59 db          	vmulps ymm3,ymm14,ymm3
  6c5b29:	c5 b4 58 d2          	vaddps ymm2,ymm9,ymm2
  6c5b2d:	c5 14 5c cb          	vsubps ymm9,ymm13,ymm3
  6c5b31:	c5 94 58 db          	vaddps ymm3,ymm13,ymm3
  6c5b35:	c4 41 1c 5c c1       	vsubps ymm8,ymm12,ymm9
  6c5b3a:	c5 7c 11 44 24 60    	vmovups YMMWORD PTR [rsp+0x60],ymm8
  6c5b40:	c5 fc 10 0c 24       	vmovups ymm1,YMMWORD PTR [rsp]
  6c5b45:	c5 f4 5c 74 24 e0    	vsubps ymm6,ymm1,YMMWORD PTR [rsp-0x20]
  6c5b4b:	c5 fc 11 b4 24 a0 00 	vmovups YMMWORD PTR [rsp+0xa0],ymm6
  6c5b52:	00 00 
  6c5b54:	c5 fc 58 e7          	vaddps ymm4,ymm0,ymm7
  6c5b58:	c5 fc 11 a4 24 c0 00 	vmovups YMMWORD PTR [rsp+0xc0],ymm4
  6c5b5f:	00 00 
  6c5b61:	c5 fc 10 4c 24 80    	vmovups ymm1,YMMWORD PTR [rsp-0x80]
  6c5b67:	c4 41 74 5c eb       	vsubps ymm13,ymm1,ymm11
  6c5b6c:	c5 6c 58 db          	vaddps ymm11,ymm2,ymm3
  6c5b70:	c5 ac 58 cd          	vaddps ymm1,ymm10,ymm5
  6c5b74:	c5 fc 11 4c 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm1
  6c5b7a:	c4 41 1c 58 e1       	vaddps ymm12,ymm12,ymm9
  6c5b7f:	c5 fc 5c ff          	vsubps ymm7,ymm0,ymm7
  6c5b83:	c5 6c 5c d3          	vsubps ymm10,ymm2,ymm3
  6c5b87:	c5 fc 10 94 24 40 01 	vmovups ymm2,YMMWORD PTR [rsp+0x140]
  6c5b8e:	00 00 
  6c5b90:	c4 e3 6d 06 c1 31    	vperm2f128 ymm0,ymm2,ymm1,0x31
  6c5b96:	c5 fc 11 44 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm0
  6c5b9c:	c4 e3 05 06 cf 31    	vperm2f128 ymm1,ymm15,ymm7,0x31
  6c5ba2:	c5 fc 11 4c 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm1
  6c5ba8:	c4 e3 7d 19 e3 01    	vextractf128 xmm3,ymm4,0x1
  6c5bae:	c5 fc 11 9c 24 20 01 	vmovups YMMWORD PTR [rsp+0x120],ymm3
  6c5bb5:	00 00 
  6c5bb7:	c4 e3 7d 19 f4 01    	vextractf128 xmm4,ymm6,0x1
  6c5bbd:	c5 fc 11 a4 24 00 01 	vmovups YMMWORD PTR [rsp+0x100],ymm4
  6c5bc4:	00 00 
  6c5bc6:	c5 fc 14 c1          	vunpcklps ymm0,ymm0,ymm1
  6c5bca:	c5 fc 11 44 24 e0    	vmovups YMMWORD PTR [rsp-0x20],ymm0
  6c5bd0:	c5 e4 14 cc          	vunpcklps ymm1,ymm3,ymm4
  6c5bd4:	c5 fc 11 0c 24       	vmovups YMMWORD PTR [rsp],ymm1
  6c5bd9:	c5 fd 14 e1          	vunpcklpd ymm4,ymm0,ymm1
  6c5bdd:	c5 7c 10 4c 24 40    	vmovups ymm9,YMMWORD PTR [rsp+0x40]
  6c5be3:	c4 c3 35 06 c4 31    	vperm2f128 ymm0,ymm9,ymm12,0x31
  6c5be9:	c5 fc 11 84 24 80 00 	vmovups YMMWORD PTR [rsp+0x80],ymm0
  6c5bf0:	00 00 
  6c5bf2:	c4 c3 3d 06 ea 31    	vperm2f128 ymm5,ymm8,ymm10,0x31
  6c5bf8:	c5 fc 11 ac 24 60 01 	vmovups YMMWORD PTR [rsp+0x160],ymm5
  6c5bff:	00 00 
  6c5c01:	c4 43 7d 19 df 01    	vextractf128 xmm15,ymm11,0x1
  6c5c07:	c5 7c 29 de          	vmovaps ymm6,ymm11
  6c5c0b:	c4 63 7d 19 e9 01    	vextractf128 xmm1,ymm13,0x1
  6c5c11:	c5 7c 29 eb          	vmovaps ymm3,ymm13
  6c5c15:	c5 fc 14 ed          	vunpcklps ymm5,ymm0,ymm5
  6c5c19:	c5 fc 11 ac 24 a0 01 	vmovups YMMWORD PTR [rsp+0x1a0],ymm5
  6c5c20:	00 00 
  6c5c22:	c5 84 14 c1          	vunpcklps ymm0,ymm15,ymm1
  6c5c26:	c5 fc 11 84 24 c0 01 	vmovups YMMWORD PTR [rsp+0x1c0],ymm0
  6c5c2d:	00 00 
  6c5c2f:	c5 d5 14 c0          	vunpcklpd ymm0,ymm5,ymm0
  6c5c33:	c5 7c 10 81 00 01 00 	vmovups ymm8,YMMWORD PTR [rcx+0x100]
  6c5c3a:	00 
  6c5c3b:	c5 fc 10 a9 20 01 00 	vmovups ymm5,YMMWORD PTR [rcx+0x120]
  6c5c42:	00 
  6c5c43:	c5 3c 59 dc          	vmulps ymm11,ymm8,ymm4
  6c5c47:	c4 62 7d bc dd       	vfnmadd231ps ymm11,ymm0,ymm5
  6c5c4c:	c5 7c 11 5c 24 20    	vmovups YMMWORD PTR [rsp+0x20],ymm11
  6c5c52:	c5 bc 59 c0          	vmulps ymm0,ymm8,ymm0
  6c5c56:	c4 e2 5d b8 c5       	vfmadd231ps ymm0,ymm4,ymm5
  6c5c5b:	c5 fc 11 84 24 80 01 	vmovups YMMWORD PTR [rsp+0x180],ymm0
  6c5c62:	00 00 
  6c5c64:	c4 63 6d 18 74 24 a0 	vinsertf128 ymm14,ymm2,XMMWORD PTR [rsp-0x60],0x1
  6c5c6b:	01 
  6c5c6c:	c5 fc 10 84 24 e0 00 	vmovups ymm0,YMMWORD PTR [rsp+0xe0]
  6c5c73:	00 00 
  6c5c75:	c4 e3 7d 18 ff 01    	vinsertf128 ymm7,ymm0,xmm7,0x1
  6c5c7b:	c4 43 35 18 ec 01    	vinsertf128 ymm13,ymm9,xmm12,0x1
  6c5c81:	c5 fc 10 44 24 60    	vmovups ymm0,YMMWORD PTR [rsp+0x60]
  6c5c87:	c4 43 7d 18 e2 01    	vinsertf128 ymm12,ymm0,xmm10,0x1
  6c5c8d:	c5 78 28 8c 24 c0 00 	vmovaps xmm9,XMMWORD PTR [rsp+0xc0]
  6c5c94:	00 00 
  6c5c96:	c5 f8 28 94 24 a0 00 	vmovaps xmm2,XMMWORD PTR [rsp+0xa0]
  6c5c9d:	00 00 
  6c5c9f:	c5 f8 28 e6          	vmovaps xmm4,xmm6
  6c5ca3:	c5 f8 28 db          	vmovaps xmm3,xmm3
  6c5ca7:	c5 8c 15 c7          	vunpckhps ymm0,ymm14,ymm7
  6c5cab:	c5 fc 11 84 24 c0 00 	vmovups YMMWORD PTR [rsp+0xc0],ymm0
  6c5cb2:	00 00 
  6c5cb4:	c5 b4 15 ea          	vunpckhps ymm5,ymm9,ymm2
  6c5cb8:	c5 fc 11 ac 24 e0 00 	vmovups YMMWORD PTR [rsp+0xe0],ymm5
  6c5cbf:	00 00 
  6c5cc1:	c5 fd 14 ed          	vunpcklpd ymm5,ymm0,ymm5
  6c5cc5:	c4 c1 14 15 c4       	vunpckhps ymm0,ymm13,ymm12
  6c5cca:	c5 fc 11 44 24 60    	vmovups YMMWORD PTR [rsp+0x60],ymm0
  6c5cd0:	c5 dc 15 f3          	vunpckhps ymm6,ymm4,ymm3
  6c5cd4:	c5 fc 11 b4 24 a0 00 	vmovups YMMWORD PTR [rsp+0xa0],ymm6
  6c5cdb:	00 00 
  6c5cdd:	c5 fd 14 f6          	vunpcklpd ymm6,ymm0,ymm6
  6c5ce1:	c5 7c 10 81 80 00 00 	vmovups ymm8,YMMWORD PTR [rcx+0x80]
  6c5ce8:	00 
  6c5ce9:	c5 fc 10 81 a0 00 00 	vmovups ymm0,YMMWORD PTR [rcx+0xa0]
  6c5cf0:	00 
  6c5cf1:	c5 3c 59 d5          	vmulps ymm10,ymm8,ymm5
  6c5cf5:	c4 62 4d bc d0       	vfnmadd231ps ymm10,ymm6,ymm0
  6c5cfa:	c5 7c 11 54 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm10
  6c5d00:	c5 3c 59 d6          	vmulps ymm10,ymm8,ymm6
  6c5d04:	c4 62 55 b8 d0       	vfmadd231ps ymm10,ymm5,ymm0
  6c5d09:	c5 fc 10 44 24 80    	vmovups ymm0,YMMWORD PTR [rsp-0x80]
  6c5d0f:	c5 fc 15 6c 24 c0    	vunpckhps ymm5,ymm0,YMMWORD PTR [rsp-0x40]
  6c5d15:	c5 fc 11 6c 24 40    	vmovups YMMWORD PTR [rsp+0x40],ymm5
  6c5d1b:	c5 fc 10 84 24 20 01 	vmovups ymm0,YMMWORD PTR [rsp+0x120]
  6c5d22:	00 00 
  6c5d24:	c5 fc 15 b4 24 00 01 	vunpckhps ymm6,ymm0,YMMWORD PTR [rsp+0x100]
  6c5d2b:	00 00 
  6c5d2d:	c5 fc 11 74 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm6
  6c5d33:	c5 fc 10 84 24 80 00 	vmovups ymm0,YMMWORD PTR [rsp+0x80]
  6c5d3a:	00 00 
  6c5d3c:	c5 fc 15 84 24 60 01 	vunpckhps ymm0,ymm0,YMMWORD PTR [rsp+0x160]
  6c5d43:	00 00 
  6c5d45:	c5 fc 11 84 24 20 01 	vmovups YMMWORD PTR [rsp+0x120],ymm0
  6c5d4c:	00 00 
  6c5d4e:	c5 04 15 c1          	vunpckhps ymm8,ymm15,ymm1
  6c5d52:	c5 7c 11 44 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm8
  6c5d58:	c5 d5 14 ce          	vunpcklpd ymm1,ymm5,ymm6
  6c5d5c:	c4 c1 7d 14 e8       	vunpcklpd ymm5,ymm0,ymm8
  6c5d61:	c5 7c 10 99 80 01 00 	vmovups ymm11,YMMWORD PTR [rcx+0x180]
  6c5d68:	00 
  6c5d69:	c5 fc 10 81 a0 01 00 	vmovups ymm0,YMMWORD PTR [rcx+0x1a0]
  6c5d70:	00 
  6c5d71:	c5 24 59 f9          	vmulps ymm15,ymm11,ymm1
  6c5d75:	c4 62 55 bc f8       	vfnmadd231ps ymm15,ymm5,ymm0
  6c5d7a:	c5 24 59 c5          	vmulps ymm8,ymm11,ymm5
  6c5d7e:	c4 62 75 b8 c0       	vfmadd231ps ymm8,ymm1,ymm0
  6c5d83:	c5 8c 14 cf          	vunpcklps ymm1,ymm14,ymm7
  6c5d87:	c5 fc 11 8c 24 80 00 	vmovups YMMWORD PTR [rsp+0x80],ymm1
  6c5d8e:	00 00 
  6c5d90:	c5 b4 14 c2          	vunpcklps ymm0,ymm9,ymm2
  6c5d94:	c5 fc 11 84 24 00 01 	vmovups YMMWORD PTR [rsp+0x100],ymm0
  6c5d9b:	00 00 
  6c5d9d:	c4 41 14 14 e4       	vunpcklps ymm12,ymm13,ymm12
  6c5da2:	c5 5c 14 db          	vunpcklps ymm11,ymm4,ymm3
  6c5da6:	c5 f5 15 c0          	vunpckhpd ymm0,ymm1,ymm0
  6c5daa:	c4 c1 1d 15 cb       	vunpckhpd ymm1,ymm12,ymm11
  6c5daf:	c5 fc 10 51 40       	vmovups ymm2,YMMWORD PTR [rcx+0x40]
  6c5db4:	c5 7c 10 49 60       	vmovups ymm9,YMMWORD PTR [rcx+0x60]
  6c5db9:	c5 ec 59 f8          	vmulps ymm7,ymm2,ymm0
  6c5dbd:	c4 c2 75 bc f9       	vfnmadd231ps ymm7,ymm1,ymm9
  6c5dc2:	c5 ec 59 f1          	vmulps ymm6,ymm2,ymm1
  6c5dc6:	c4 c2 7d b8 f1       	vfmadd231ps ymm6,ymm0,ymm9
  6c5dcb:	c5 fc 10 44 24 e0    	vmovups ymm0,YMMWORD PTR [rsp-0x20]
  6c5dd1:	c5 fd 15 04 24       	vunpckhpd ymm0,ymm0,YMMWORD PTR [rsp]
  6c5dd6:	c5 fc 10 8c 24 a0 01 	vmovups ymm1,YMMWORD PTR [rsp+0x1a0]
  6c5ddd:	00 00 
  6c5ddf:	c5 f5 15 8c 24 c0 01 	vunpckhpd ymm1,ymm1,YMMWORD PTR [rsp+0x1c0]
  6c5de6:	00 00 
  6c5de8:	c5 7c 10 89 40 01 00 	vmovups ymm9,YMMWORD PTR [rcx+0x140]
  6c5def:	00 
  6c5df0:	c5 7c 10 a9 60 01 00 	vmovups ymm13,YMMWORD PTR [rcx+0x160]
  6c5df7:	00 
  6c5df8:	c5 b4 59 e0          	vmulps ymm4,ymm9,ymm0
  6c5dfc:	c4 c2 75 bc e5       	vfnmadd231ps ymm4,ymm1,ymm13
  6c5e01:	c5 b4 59 e9          	vmulps ymm5,ymm9,ymm1
  6c5e05:	c4 c2 7d b8 ed       	vfmadd231ps ymm5,ymm0,ymm13
  6c5e0a:	c5 fc 10 84 24 c0 00 	vmovups ymm0,YMMWORD PTR [rsp+0xc0]
  6c5e11:	00 00 
  6c5e13:	c5 7d 15 8c 24 e0 00 	vunpckhpd ymm9,ymm0,YMMWORD PTR [rsp+0xe0]
  6c5e1a:	00 00 
  6c5e1c:	c5 fc 10 44 24 60    	vmovups ymm0,YMMWORD PTR [rsp+0x60]
  6c5e22:	c5 7d 15 ac 24 a0 00 	vunpckhpd ymm13,ymm0,YMMWORD PTR [rsp+0xa0]
  6c5e29:	00 00 
  6c5e2b:	c5 fc 10 81 c0 00 00 	vmovups ymm0,YMMWORD PTR [rcx+0xc0]
  6c5e32:	00 
  6c5e33:	c5 7c 10 b1 e0 00 00 	vmovups ymm14,YMMWORD PTR [rcx+0xe0]
  6c5e3a:	00 
  6c5e3b:	c5 b4 59 d8          	vmulps ymm3,ymm9,ymm0
  6c5e3f:	c4 c2 15 bc de       	vfnmadd231ps ymm3,ymm13,ymm14
  6c5e44:	c5 14 59 e8          	vmulps ymm13,ymm13,ymm0
  6c5e48:	c4 42 35 b8 ee       	vfmadd231ps ymm13,ymm9,ymm14
  6c5e4d:	c5 fc 10 44 24 40    	vmovups ymm0,YMMWORD PTR [rsp+0x40]
  6c5e53:	c5 fd 15 54 24 80    	vunpckhpd ymm2,ymm0,YMMWORD PTR [rsp-0x80]
  6c5e59:	c5 fc 10 84 24 20 01 	vmovups ymm0,YMMWORD PTR [rsp+0x120]
  6c5e60:	00 00 
  6c5e62:	c5 7d 15 4c 24 c0    	vunpckhpd ymm9,ymm0,YMMWORD PTR [rsp-0x40]
  6c5e68:	c5 7c 10 b1 c0 01 00 	vmovups ymm14,YMMWORD PTR [rcx+0x1c0]
  6c5e6f:	00 
  6c5e70:	c5 fc 10 89 e0 01 00 	vmovups ymm1,YMMWORD PTR [rcx+0x1e0]
  6c5e77:	00 
  6c5e78:	c5 8c 59 c2          	vmulps ymm0,ymm14,ymm2
  6c5e7c:	c4 e2 35 bc c1       	vfnmadd231ps ymm0,ymm9,ymm1
  6c5e81:	c4 41 0c 59 f1       	vmulps ymm14,ymm14,ymm9
  6c5e86:	c4 62 6d b8 f1       	vfmadd231ps ymm14,ymm2,ymm1
  6c5e8b:	c5 fc 10 8c 24 80 00 	vmovups ymm1,YMMWORD PTR [rsp+0x80]
  6c5e92:	00 00 
  6c5e94:	c5 f5 14 8c 24 00 01 	vunpcklpd ymm1,ymm1,YMMWORD PTR [rsp+0x100]
  6c5e9b:	00 00 
  6c5e9d:	c4 c1 1d 14 d3       	vunpcklpd ymm2,ymm12,ymm11
  6c5ea2:	c5 7c 10 5c 24 20    	vmovups ymm11,YMMWORD PTR [rsp+0x20]
  6c5ea8:	c5 24 58 c9          	vaddps ymm9,ymm11,ymm1
  6c5eac:	c4 c1 74 5c cb       	vsubps ymm1,ymm1,ymm11
  6c5eb1:	c5 fc 11 0c 24       	vmovups YMMWORD PTR [rsp],ymm1
  6c5eb6:	c4 41 2c 58 d8       	vaddps ymm11,ymm10,ymm8
  6c5ebb:	c4 c1 2c 5c c8       	vsubps ymm1,ymm10,ymm8
  6c5ec0:	c5 fc 11 4c 24 e0    	vmovups YMMWORD PTR [rsp-0x20],ymm1
  6c5ec6:	c5 44 58 e4          	vaddps ymm12,ymm7,ymm4
  6c5eca:	c5 c4 5c e4          	vsubps ymm4,ymm7,ymm4
  6c5ece:	c5 cc 58 fd          	vaddps ymm7,ymm6,ymm5
  6c5ed2:	c5 cc 5c ed          	vsubps ymm5,ymm6,ymm5
  6c5ed6:	c4 41 14 58 d6       	vaddps ymm10,ymm13,ymm14
  6c5edb:	c4 c1 14 5c f6       	vsubps ymm6,ymm13,ymm14
  6c5ee0:	c5 64 58 e8          	vaddps ymm13,ymm3,ymm0
  6c5ee4:	c5 e4 5c c0          	vsubps ymm0,ymm3,ymm0
  6c5ee8:	c5 fc 10 8c 24 80 01 	vmovups ymm1,YMMWORD PTR [rsp+0x180]
  6c5eef:	00 00 
  6c5ef1:	c5 f4 58 da          	vaddps ymm3,ymm1,ymm2
  6c5ef5:	c5 ec 5c c9          	vsubps ymm1,ymm2,ymm1
  6c5ef9:	c5 fc 10 54 24 a0    	vmovups ymm2,YMMWORD PTR [rsp-0x60]
  6c5eff:	c5 04 58 c2          	vaddps ymm8,ymm15,ymm2
  6c5f03:	c5 04 5c f2          	vsubps ymm14,ymm15,ymm2
  6c5f07:	c5 dc 58 d5          	vaddps ymm2,ymm4,ymm5
  6c5f0b:	c5 fc 11 54 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm2
  6c5f11:	c5 d4 5c ec          	vsubps ymm5,ymm5,ymm4
  6c5f15:	c5 4c 5c f8          	vsubps ymm15,ymm6,ymm0
  6c5f19:	c5 fc 58 e6          	vaddps ymm4,ymm0,ymm6
  6c5f1d:	c4 c1 34 58 c0       	vaddps ymm0,ymm9,ymm8
  6c5f22:	c5 fc 11 44 24 20    	vmovups YMMWORD PTR [rsp+0x20],ymm0
  6c5f28:	c4 41 34 5c c0       	vsubps ymm8,ymm9,ymm8
  6c5f2d:	c5 ac 58 c7          	vaddps ymm0,ymm10,ymm7
  6c5f31:	c5 fc 11 44 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm0
  6c5f37:	c4 c1 44 5c fa       	vsubps ymm7,ymm7,ymm10
  6c5f3c:	c5 a4 58 c3          	vaddps ymm0,ymm11,ymm3
  6c5f40:	c5 fc 11 44 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm0
  6c5f46:	c4 c1 64 5c f3       	vsubps ymm6,ymm3,ymm11
  6c5f4b:	c4 41 1c 58 cd       	vaddps ymm9,ymm12,ymm13
  6c5f50:	c4 41 14 5c d4       	vsubps ymm10,ymm13,ymm12
  6c5f55:	c5 fc 10 04 24       	vmovups ymm0,YMMWORD PTR [rsp]
  6c5f5a:	c5 fc 10 54 24 e0    	vmovups ymm2,YMMWORD PTR [rsp-0x20]
  6c5f60:	c5 7c 58 da          	vaddps ymm11,ymm0,ymm2
  6c5f64:	c5 7c 5c e2          	vsubps ymm12,ymm0,ymm2
  6c5f68:	c4 e2 7d 18 05 2b f4 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff9af42b]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  6c5f6f:	9a ff 
  6c5f71:	c5 d4 59 e8          	vmulps ymm5,ymm5,ymm0
  6c5f75:	c5 dc 59 e0          	vmulps ymm4,ymm4,ymm0
  6c5f79:	c5 54 5c ec          	vsubps ymm13,ymm5,ymm4
  6c5f7d:	c5 d4 58 d4          	vaddps ymm2,ymm5,ymm4
  6c5f81:	c5 8c 58 e9          	vaddps ymm5,ymm14,ymm1
  6c5f85:	c4 c1 74 5c de       	vsubps ymm3,ymm1,ymm14
  6c5f8a:	c5 7c 59 74 24 a0    	vmulps ymm14,ymm0,YMMWORD PTR [rsp-0x60]
  6c5f90:	c5 04 59 f8          	vmulps ymm15,ymm15,ymm0
  6c5f94:	c4 c1 0c 58 c7       	vaddps ymm0,ymm14,ymm15
  6c5f99:	c4 41 04 5c fe       	vsubps ymm15,ymm15,ymm14
  6c5f9e:	c5 a4 58 c8          	vaddps ymm1,ymm11,ymm0
  6c5fa2:	c5 24 5c f0          	vsubps ymm14,ymm11,ymm0
  6c5fa6:	c5 94 58 c5          	vaddps ymm0,ymm13,ymm5
  6c5faa:	c4 c1 54 5c ed       	vsubps ymm5,ymm5,ymm13
  6c5faf:	c5 bc 58 e7          	vaddps ymm4,ymm8,ymm7
  6c5fb3:	c5 bc 5c ff          	vsubps ymm7,ymm8,ymm7
  6c5fb7:	c5 fc 11 7c 24 e0    	vmovups YMMWORD PTR [rsp-0x20],ymm7
  6c5fbd:	c5 2c 58 c6          	vaddps ymm8,ymm10,ymm6
  6c5fc1:	c4 41 4c 5c ea       	vsubps ymm13,ymm6,ymm10
  6c5fc6:	c5 1c 58 d2          	vaddps ymm10,ymm12,ymm2
  6c5fca:	c5 9c 5c d2          	vsubps ymm2,ymm12,ymm2
  6c5fce:	c5 fc 11 14 24       	vmovups YMMWORD PTR [rsp],ymm2
  6c5fd3:	c5 04 58 db          	vaddps ymm11,ymm15,ymm3
  6c5fd7:	c4 41 64 5c e7       	vsubps ymm12,ymm3,ymm15
  6c5fdc:	c5 fc 10 54 24 20    	vmovups ymm2,YMMWORD PTR [rsp+0x20]
  6c5fe2:	c4 c1 6c 5c f9       	vsubps ymm7,ymm2,ymm9
  6c5fe7:	c5 b4 58 da          	vaddps ymm3,ymm9,ymm2
  6c5feb:	c5 fc 10 54 24 80    	vmovups ymm2,YMMWORD PTR [rsp-0x80]
  6c5ff1:	c5 7c 10 4c 24 c0    	vmovups ymm9,YMMWORD PTR [rsp-0x40]
  6c5ff7:	c5 b4 5c f2          	vsubps ymm6,ymm9,ymm2
  6c5ffb:	c5 34 58 ca          	vaddps ymm9,ymm9,ymm2
  6c5fff:	c4 41 64 14 f9       	vunpcklps ymm15,ymm3,ymm9
  6c6004:	c4 c1 60 14 d1       	vunpcklps xmm2,xmm3,xmm9
  6c6009:	c4 c1 60 15 d9       	vunpckhps xmm3,xmm3,xmm9
  6c600e:	c5 f8 11 5c 16 10    	vmovups XMMWORD PTR [rsi+rdx*1+0x10],xmm3
  6c6014:	c5 f8 11 14 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm2
  6c6019:	c4 63 7d 19 7c 16 20 	vextractf128 XMMWORD PTR [rsi+rdx*1+0x20],ymm15,0x1
  6c6020:	01 
  6c6021:	c5 f4 14 d0          	vunpcklps ymm2,ymm1,ymm0
  6c6025:	c5 f0 14 d8          	vunpcklps xmm3,xmm1,xmm0
  6c6029:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  6c602d:	c5 f8 11 44 16 40    	vmovups XMMWORD PTR [rsi+rdx*1+0x40],xmm0
  6c6033:	c5 f8 11 5c 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm3
  6c6039:	c4 e3 7d 19 54 16 50 	vextractf128 XMMWORD PTR [rsi+rdx*1+0x50],ymm2,0x1
  6c6040:	01 
  6c6041:	c4 c1 5c 14 c0       	vunpcklps ymm0,ymm4,ymm8
  6c6046:	c4 c1 58 14 c8       	vunpcklps xmm1,xmm4,xmm8
  6c604b:	c4 c1 58 15 d0       	vunpckhps xmm2,xmm4,xmm8
  6c6050:	c5 f8 11 54 16 70    	vmovups XMMWORD PTR [rsi+rdx*1+0x70],xmm2
  6c6056:	c5 f8 11 4c 16 60    	vmovups XMMWORD PTR [rsi+rdx*1+0x60],xmm1
  6c605c:	c4 e3 7d 19 84 16 80 	vextractf128 XMMWORD PTR [rsi+rdx*1+0x80],ymm0,0x1
  6c6063:	00 00 00 01 
  6c6067:	c4 c1 2c 14 c3       	vunpcklps ymm0,ymm10,ymm11
  6c606c:	c4 c1 28 14 cb       	vunpcklps xmm1,xmm10,xmm11
  6c6071:	c4 c1 28 15 d3       	vunpckhps xmm2,xmm10,xmm11
  6c6076:	c5 f8 11 94 16 a0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xa0],xmm2
  6c607d:	00 00 
  6c607f:	c5 f8 11 8c 16 90 00 	vmovups XMMWORD PTR [rsi+rdx*1+0x90],xmm1
  6c6086:	00 00 
  6c6088:	c4 e3 7d 19 84 16 b0 	vextractf128 XMMWORD PTR [rsi+rdx*1+0xb0],ymm0,0x1
  6c608f:	00 00 00 01 
  6c6093:	c5 c4 14 c6          	vunpcklps ymm0,ymm7,ymm6
  6c6097:	c5 c0 14 ce          	vunpcklps xmm1,xmm7,xmm6
  6c609b:	c5 c0 15 d6          	vunpckhps xmm2,xmm7,xmm6
  6c609f:	c5 f8 11 94 16 d0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xd0],xmm2
  6c60a6:	00 00 
  6c60a8:	c5 f8 11 8c 16 c0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xc0],xmm1
  6c60af:	00 00 
  6c60b1:	c4 e3 7d 19 84 16 e0 	vextractf128 XMMWORD PTR [rsi+rdx*1+0xe0],ymm0,0x1
  6c60b8:	00 00 00 01 
  6c60bc:	c5 8c 14 c5          	vunpcklps ymm0,ymm14,ymm5
  6c60c0:	c5 88 14 cd          	vunpcklps xmm1,xmm14,xmm5
  6c60c4:	c5 88 15 d5          	vunpckhps xmm2,xmm14,xmm5
  6c60c8:	c5 f8 11 94 16 00 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x100],xmm2
  6c60cf:	00 00 
  6c60d1:	c5 f8 11 8c 16 f0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xf0],xmm1
  6c60d8:	00 00 
  6c60da:	c4 e3 7d 19 84 16 10 	vextractf128 XMMWORD PTR [rsi+rdx*1+0x110],ymm0,0x1
  6c60e1:	01 00 00 01 
  6c60e5:	c5 fc 10 54 24 e0    	vmovups ymm2,YMMWORD PTR [rsp-0x20]
  6c60eb:	c4 c1 6c 14 c5       	vunpcklps ymm0,ymm2,ymm13
  6c60f0:	c4 c1 68 14 cd       	vunpcklps xmm1,xmm2,xmm13
  6c60f5:	c4 c1 68 15 d5       	vunpckhps xmm2,xmm2,xmm13
  6c60fa:	c5 f8 11 94 16 30 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x130],xmm2
  6c6101:	00 00 
  6c6103:	c5 f8 11 8c 16 20 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x120],xmm1
  6c610a:	00 00 
  6c610c:	c4 e3 7d 19 84 16 40 	vextractf128 XMMWORD PTR [rsi+rdx*1+0x140],ymm0,0x1
  6c6113:	01 00 00 01 
  6c6117:	c5 fc 10 14 24       	vmovups ymm2,YMMWORD PTR [rsp]
  6c611c:	c4 c1 6c 14 c4       	vunpcklps ymm0,ymm2,ymm12
  6c6121:	c4 c1 68 14 cc       	vunpcklps xmm1,xmm2,xmm12
  6c6126:	c4 c1 68 15 d4       	vunpckhps xmm2,xmm2,xmm12
  6c612b:	c5 f8 11 94 16 60 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x160],xmm2
  6c6132:	00 00 
  6c6134:	c5 f8 11 8c 16 50 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x150],xmm1
  6c613b:	00 00 
  6c613d:	c4 e3 7d 19 84 16 70 	vextractf128 XMMWORD PTR [rsi+rdx*1+0x170],ymm0,0x1
  6c6144:	01 00 00 01 
  6c6148:	48 81 c2 80 01 00 00 	add    rdx,0x180
  6c614f:	48 39 d0             	cmp    rax,rdx
  6c6152:	0f 85 08 f8 ff ff    	jne    6c5960 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle+0x20>
  6c6158:	48 81 c4 e8 01 00 00 	add    rsp,0x1e8
  6c615f:	c5 f8 77             	vzeroupper
  6c6162:	c3                   	ret
