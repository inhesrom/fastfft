
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

000000000070b880 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  70b880:	48 81 ec 68 01 00 00 	sub    rsp,0x168
  70b887:	48 c1 e2 06          	shl    rdx,0x6
  70b88b:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  70b88f:	31 d2                	xor    edx,edx
  70b891:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  70b898:	0f 1f 84 00 00 00 00 
  70b89f:	00 
  70b8a0:	c5 fc 10 04 17       	vmovups ymm0,YMMWORD PTR [rdi+rdx*1]
  70b8a5:	c5 fc 10 4c 17 20    	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x20]
  70b8ab:	c5 fc 10 54 17 40    	vmovups ymm2,YMMWORD PTR [rdi+rdx*1+0x40]
  70b8b1:	c5 fc 10 5c 17 60    	vmovups ymm3,YMMWORD PTR [rdi+rdx*1+0x60]
  70b8b7:	c5 fc 10 a4 17 80 00 	vmovups ymm4,YMMWORD PTR [rdi+rdx*1+0x80]
  70b8be:	00 00 
  70b8c0:	c5 fc 10 ac 17 a0 00 	vmovups ymm5,YMMWORD PTR [rdi+rdx*1+0xa0]
  70b8c7:	00 00 
  70b8c9:	c5 fc c6 f1 88       	vshufps ymm6,ymm0,ymm1,0x88
  70b8ce:	c4 e3 fd 01 f6 d8    	vpermpd ymm6,ymm6,0xd8
  70b8d4:	c5 ec c6 fb 88       	vshufps ymm7,ymm2,ymm3,0x88
  70b8d9:	c4 e3 fd 01 ff d8    	vpermpd ymm7,ymm7,0xd8
  70b8df:	c5 5c c6 c5 88       	vshufps ymm8,ymm4,ymm5,0x88
  70b8e4:	c4 43 fd 01 c8 d8    	vpermpd ymm9,ymm8,0xd8
  70b8ea:	c5 fc c6 c1 dd       	vshufps ymm0,ymm0,ymm1,0xdd
  70b8ef:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  70b8f5:	c5 ec c6 cb dd       	vshufps ymm1,ymm2,ymm3,0xdd
  70b8fa:	c4 e3 fd 01 c9 d8    	vpermpd ymm1,ymm1,0xd8
  70b900:	c5 dc c6 d5 dd       	vshufps ymm2,ymm4,ymm5,0xdd
  70b905:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  70b90b:	c5 b4 58 df          	vaddps ymm3,ymm9,ymm7
  70b90f:	c5 64 58 de          	vaddps ymm11,ymm3,ymm6
  70b913:	c5 f4 58 e2          	vaddps ymm4,ymm1,ymm2
  70b917:	c5 5c 58 d0          	vaddps ymm10,ymm4,ymm0
  70b91b:	c4 e2 7d 18 2d 3c 9b 	vbroadcastss ymm5,DWORD PTR [rip+0xffffffffff969b3c]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  70b922:	96 ff 
  70b924:	c4 e2 55 ac de       	vfnmadd213ps ymm3,ymm5,ymm6
  70b929:	c5 f4 5c ca          	vsubps ymm1,ymm1,ymm2
  70b92d:	c4 e2 7d 18 15 9e 99 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff96999e]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  70b934:	96 ff 
  70b936:	c5 f4 59 ca          	vmulps ymm1,ymm1,ymm2
  70b93a:	c5 64 58 f1          	vaddps ymm14,ymm3,ymm1
  70b93e:	c4 e2 55 ac e0       	vfnmadd213ps ymm4,ymm5,ymm0
  70b943:	c4 c1 44 5c c1       	vsubps ymm0,ymm7,ymm9
  70b948:	c5 fc 59 c2          	vmulps ymm0,ymm0,ymm2
  70b94c:	c5 5c 5c c0          	vsubps ymm8,ymm4,ymm0
  70b950:	c5 e4 5c d1          	vsubps ymm2,ymm3,ymm1
  70b954:	c5 7c 58 e4          	vaddps ymm12,ymm0,ymm4
  70b958:	c4 63 7d 19 d8 01    	vextractf128 xmm0,ymm11,0x1
  70b95e:	c5 fc 11 44 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm0
  70b964:	c4 63 7d 19 f3 01    	vextractf128 xmm3,ymm14,0x1
  70b96a:	c5 fc 11 5c 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm3
  70b970:	c4 c3 7d 19 d5 01    	vextractf128 xmm13,ymm2,0x1
  70b976:	c4 c1 7d 14 cd       	vunpcklpd ymm1,ymm0,ymm13
  70b97b:	c5 fc 11 4c 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm1
  70b981:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  70b985:	c4 e3 65 0c c0 cc    	vblendps ymm0,ymm3,ymm0,0xcc
  70b98b:	c5 d8 57 e4          	vxorps xmm4,xmm4,xmm4
  70b98f:	c5 fc 11 44 24 e0    	vmovups YMMWORD PTR [rsp-0x20],ymm0
  70b995:	c5 f4 c6 c0 88       	vshufps ymm0,ymm1,ymm0,0x88
  70b99a:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  70b99f:	c4 63 7d 19 d6 01    	vextractf128 xmm6,ymm10,0x1
  70b9a5:	c4 63 7d 19 c7 01    	vextractf128 xmm7,ymm8,0x1
  70b9ab:	c4 63 7d 19 e1 01    	vextractf128 xmm1,ymm12,0x1
  70b9b1:	c5 cd 14 e9          	vunpcklpd ymm5,ymm6,ymm1
  70b9b5:	c5 fc 11 2c 24       	vmovups YMMWORD PTR [rsp],ymm5
  70b9ba:	c4 e3 45 0c dc cc    	vblendps ymm3,ymm7,ymm4,0xcc
  70b9c0:	c5 fc 11 5c 24 20    	vmovups YMMWORD PTR [rsp+0x20],ymm3
  70b9c6:	c5 d4 c6 db 88       	vshufps ymm3,ymm5,ymm3,0x88
  70b9cb:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  70b9d0:	c5 fc 10 a9 00 01 00 	vmovups ymm5,YMMWORD PTR [rcx+0x100]
  70b9d7:	00 
  70b9d8:	c5 fc 10 a1 20 01 00 	vmovups ymm4,YMMWORD PTR [rcx+0x120]
  70b9df:	00 
  70b9e0:	c5 54 59 c8          	vmulps ymm9,ymm5,ymm0
  70b9e4:	c4 62 65 bc cc       	vfnmadd231ps ymm9,ymm3,ymm4
  70b9e9:	c5 7c 11 4c 24 60    	vmovups YMMWORD PTR [rsp+0x60],ymm9
  70b9ef:	c5 d4 59 db          	vmulps ymm3,ymm5,ymm3
  70b9f3:	c4 e2 7d b8 dc       	vfmadd231ps ymm3,ymm0,ymm4
  70b9f8:	c5 fc 11 5c 24 40    	vmovups YMMWORD PTR [rsp+0x40],ymm3
  70b9fe:	c5 78 29 dd          	vmovaps xmm5,xmm11
  70ba02:	c5 f8 28 d2          	vmovaps xmm2,xmm2
  70ba06:	c5 78 29 f3          	vmovaps xmm3,xmm14
  70ba0a:	c5 fd 73 db 08       	vpsrldq ymm0,ymm3,0x8
  70ba0f:	c5 fe 7f 84 24 00 01 	vmovdqu YMMWORD PTR [rsp+0x100],ymm0
  70ba16:	00 00 
  70ba18:	c5 d5 15 da          	vunpckhpd ymm3,ymm5,ymm2
  70ba1c:	c5 fc 11 9c 24 20 01 	vmovups YMMWORD PTR [rsp+0x120],ymm3
  70ba23:	00 00 
  70ba25:	c5 e4 c6 d8 88       	vshufps ymm3,ymm3,ymm0,0x88
  70ba2a:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  70ba2f:	c5 78 29 d0          	vmovaps xmm0,xmm10
  70ba33:	c4 41 78 28 e4       	vmovaps xmm12,xmm12
  70ba38:	c5 78 29 c4          	vmovaps xmm4,xmm8
  70ba3c:	c5 dd 73 dc 08       	vpsrldq ymm4,ymm4,0x8
  70ba41:	c5 fe 7f a4 24 e0 00 	vmovdqu YMMWORD PTR [rsp+0xe0],ymm4
  70ba48:	00 00 
  70ba4a:	c4 41 7d 15 fc       	vunpckhpd ymm15,ymm0,ymm12
  70ba4f:	c5 84 c6 e4 88       	vshufps ymm4,ymm15,ymm4,0x88
  70ba54:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  70ba59:	c5 7c 10 89 80 00 00 	vmovups ymm9,YMMWORD PTR [rcx+0x80]
  70ba60:	00 
  70ba61:	c5 7c 10 91 a0 00 00 	vmovups ymm10,YMMWORD PTR [rcx+0xa0]
  70ba68:	00 
  70ba69:	c5 34 59 db          	vmulps ymm11,ymm9,ymm3
  70ba6d:	c4 42 5d bc da       	vfnmadd231ps ymm11,ymm4,ymm10
  70ba72:	c5 7c 11 9c 24 40 01 	vmovups YMMWORD PTR [rsp+0x140],ymm11
  70ba79:	00 00 
  70ba7b:	c5 34 59 dc          	vmulps ymm11,ymm9,ymm4
  70ba7f:	c4 42 65 b8 da       	vfmadd231ps ymm11,ymm3,ymm10
  70ba84:	c5 fc 10 5c 24 80    	vmovups ymm3,YMMWORD PTR [rsp-0x80]
  70ba8a:	c4 41 65 15 d5       	vunpckhpd ymm10,ymm3,ymm13
  70ba8f:	c5 cd 15 e1          	vunpckhpd ymm4,ymm6,ymm1
  70ba93:	c5 fc 11 a4 24 c0 00 	vmovups YMMWORD PTR [rsp+0xc0],ymm4
  70ba9a:	00 00 
  70ba9c:	c5 e0 57 db          	vxorps xmm3,xmm3,xmm3
  70baa0:	c5 fc 10 4c 24 a0    	vmovups ymm1,YMMWORD PTR [rsp-0x60]
  70baa6:	c5 f5 15 cb          	vunpckhpd ymm1,ymm1,ymm3
  70baaa:	c5 fc 11 4c 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm1
  70bab0:	c5 ac c6 c9 88       	vshufps ymm1,ymm10,ymm1,0x88
  70bab5:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  70baba:	c5 45 15 eb          	vunpckhpd ymm13,ymm7,ymm3
  70babe:	c4 c1 5c c6 dd 88    	vshufps ymm3,ymm4,ymm13,0x88
  70bac4:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  70bac9:	c5 fc 10 b1 80 01 00 	vmovups ymm6,YMMWORD PTR [rcx+0x180]
  70bad0:	00 
  70bad1:	c5 fc 10 b9 a0 01 00 	vmovups ymm7,YMMWORD PTR [rcx+0x1a0]
  70bad8:	00 
  70bad9:	c5 cc 59 e1          	vmulps ymm4,ymm6,ymm1
  70badd:	c4 e2 65 bc e7       	vfnmadd231ps ymm4,ymm3,ymm7
  70bae2:	c5 fc 11 64 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm4
  70bae8:	c5 4c 59 cb          	vmulps ymm9,ymm6,ymm3
  70baec:	c4 62 75 b8 cf       	vfmadd231ps ymm9,ymm1,ymm7
  70baf1:	c5 d5 14 ca          	vunpcklpd ymm1,ymm5,ymm2
  70baf5:	c5 fc 11 8c 24 a0 00 	vmovups YMMWORD PTR [rsp+0xa0],ymm1
  70bafc:	00 00 
  70bafe:	c4 c1 7d 14 d4       	vunpcklpd ymm2,ymm0,ymm12
  70bb03:	c5 fc 11 94 24 80 00 	vmovups YMMWORD PTR [rsp+0x80],ymm2
  70bb0a:	00 00 
  70bb0c:	c4 41 7a 7e f6       	vmovq  xmm14,xmm14
  70bb11:	c4 c1 74 c6 c6 dd    	vshufps ymm0,ymm1,ymm14,0xdd
  70bb17:	c5 fc c6 d8 d8       	vshufps ymm3,ymm0,ymm0,0xd8
  70bb1c:	c4 41 7a 7e e0       	vmovq  xmm12,xmm8
  70bb21:	c4 c1 6c c6 cc dd    	vshufps ymm1,ymm2,ymm12,0xdd
  70bb27:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  70bb2c:	c5 fc 10 51 40       	vmovups ymm2,YMMWORD PTR [rcx+0x40]
  70bb31:	c5 fc 10 41 60       	vmovups ymm0,YMMWORD PTR [rcx+0x60]
  70bb36:	c5 6c 59 c3          	vmulps ymm8,ymm2,ymm3
  70bb3a:	c4 62 75 bc c0       	vfnmadd231ps ymm8,ymm1,ymm0
  70bb3f:	c5 ec 59 f9          	vmulps ymm7,ymm2,ymm1
  70bb43:	c4 e2 65 b8 f8       	vfmadd231ps ymm7,ymm3,ymm0
  70bb48:	c5 fc 10 44 24 c0    	vmovups ymm0,YMMWORD PTR [rsp-0x40]
  70bb4e:	c5 fc c6 44 24 e0 dd 	vshufps ymm0,ymm0,YMMWORD PTR [rsp-0x20],0xdd
  70bb55:	c5 fc 10 0c 24       	vmovups ymm1,YMMWORD PTR [rsp]
  70bb5a:	c5 f4 c6 4c 24 20 dd 	vshufps ymm1,ymm1,YMMWORD PTR [rsp+0x20],0xdd
  70bb61:	c5 fc c6 d8 d8       	vshufps ymm3,ymm0,ymm0,0xd8
  70bb66:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  70bb6b:	c5 fc 10 81 40 01 00 	vmovups ymm0,YMMWORD PTR [rcx+0x140]
  70bb72:	00 
  70bb73:	c5 fc 10 91 60 01 00 	vmovups ymm2,YMMWORD PTR [rcx+0x160]
  70bb7a:	00 
  70bb7b:	c5 fc 59 f3          	vmulps ymm6,ymm0,ymm3
  70bb7f:	c4 e2 75 bc f2       	vfnmadd231ps ymm6,ymm1,ymm2
  70bb84:	c5 fc 59 e9          	vmulps ymm5,ymm0,ymm1
  70bb88:	c4 e2 65 b8 ea       	vfmadd231ps ymm5,ymm3,ymm2
  70bb8d:	c5 fc 10 84 24 20 01 	vmovups ymm0,YMMWORD PTR [rsp+0x120]
  70bb94:	00 00 
  70bb96:	c5 fc c6 84 24 00 01 	vshufps ymm0,ymm0,YMMWORD PTR [rsp+0x100],0xdd
  70bb9d:	00 00 dd 
  70bba0:	c5 84 c6 94 24 e0 00 	vshufps ymm2,ymm15,YMMWORD PTR [rsp+0xe0],0xdd
  70bba7:	00 00 dd 
  70bbaa:	c5 fc c6 c8 d8       	vshufps ymm1,ymm0,ymm0,0xd8
  70bbaf:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  70bbb4:	c5 fc 10 99 c0 00 00 	vmovups ymm3,YMMWORD PTR [rcx+0xc0]
  70bbbb:	00 
  70bbbc:	c5 fc 10 81 e0 00 00 	vmovups ymm0,YMMWORD PTR [rcx+0xe0]
  70bbc3:	00 
  70bbc4:	c5 64 59 f9          	vmulps ymm15,ymm3,ymm1
  70bbc8:	c4 62 6d bc f8       	vfnmadd231ps ymm15,ymm2,ymm0
  70bbcd:	c5 e4 59 e2          	vmulps ymm4,ymm3,ymm2
  70bbd1:	c4 e2 75 b8 e0       	vfmadd231ps ymm4,ymm1,ymm0
  70bbd6:	c5 ac c6 44 24 80 dd 	vshufps ymm0,ymm10,YMMWORD PTR [rsp-0x80],0xdd
  70bbdd:	c5 fc 10 8c 24 c0 00 	vmovups ymm1,YMMWORD PTR [rsp+0xc0]
  70bbe4:	00 00 
  70bbe6:	c4 c1 74 c6 cd dd    	vshufps ymm1,ymm1,ymm13,0xdd
  70bbec:	c5 fc c6 d0 d8       	vshufps ymm2,ymm0,ymm0,0xd8
  70bbf1:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  70bbf6:	c5 fc 10 99 c0 01 00 	vmovups ymm3,YMMWORD PTR [rcx+0x1c0]
  70bbfd:	00 
  70bbfe:	c5 7c 10 a9 e0 01 00 	vmovups ymm13,YMMWORD PTR [rcx+0x1e0]
  70bc05:	00 
  70bc06:	c5 e4 59 c2          	vmulps ymm0,ymm3,ymm2
  70bc0a:	c4 c2 75 bc c5       	vfnmadd231ps ymm0,ymm1,ymm13
  70bc0f:	c5 e4 59 d9          	vmulps ymm3,ymm3,ymm1
  70bc13:	c4 c2 6d b8 dd       	vfmadd231ps ymm3,ymm2,ymm13
  70bc18:	c5 fc 10 8c 24 a0 00 	vmovups ymm1,YMMWORD PTR [rsp+0xa0]
  70bc1f:	00 00 
  70bc21:	c4 c1 74 c6 ce 88    	vshufps ymm1,ymm1,ymm14,0x88
  70bc27:	c5 fc 10 94 24 80 00 	vmovups ymm2,YMMWORD PTR [rsp+0x80]
  70bc2e:	00 00 
  70bc30:	c4 c1 6c c6 d4 88    	vshufps ymm2,ymm2,ymm12,0x88
  70bc36:	c5 fc 11 54 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm2
  70bc3c:	c5 f4 c6 d1 d8       	vshufps ymm2,ymm1,ymm1,0xd8
  70bc41:	c5 fc 10 4c 24 60    	vmovups ymm1,YMMWORD PTR [rsp+0x60]
  70bc47:	c5 74 58 d2          	vaddps ymm10,ymm1,ymm2
  70bc4b:	c5 ec 5c c9          	vsubps ymm1,ymm2,ymm1
  70bc4f:	c5 fc 11 4c 24 e0    	vmovups YMMWORD PTR [rsp-0x20],ymm1
  70bc55:	c4 41 24 58 e1       	vaddps ymm12,ymm11,ymm9
  70bc5a:	c4 41 24 5c e9       	vsubps ymm13,ymm11,ymm9
  70bc5f:	c5 3c 58 f6          	vaddps ymm14,ymm8,ymm6
  70bc63:	c5 bc 5c f6          	vsubps ymm6,ymm8,ymm6
  70bc67:	c5 44 58 c5          	vaddps ymm8,ymm7,ymm5
  70bc6b:	c5 c4 5c ed          	vsubps ymm5,ymm7,ymm5
  70bc6f:	c5 dc 58 fb          	vaddps ymm7,ymm4,ymm3
  70bc73:	c5 dc 5c db          	vsubps ymm3,ymm4,ymm3
  70bc77:	c5 84 58 e0          	vaddps ymm4,ymm15,ymm0
  70bc7b:	c5 84 5c c0          	vsubps ymm0,ymm15,ymm0
  70bc7f:	c4 63 7d 04 4c 24 c0 	vpermilps ymm9,YMMWORD PTR [rsp-0x40],0xd8
  70bc86:	d8 
  70bc87:	c5 fc 10 4c 24 40    	vmovups ymm1,YMMWORD PTR [rsp+0x40]
  70bc8d:	c5 34 58 f9          	vaddps ymm15,ymm9,ymm1
  70bc91:	c5 34 5c c9          	vsubps ymm9,ymm9,ymm1
  70bc95:	c5 fc 10 8c 24 40 01 	vmovups ymm1,YMMWORD PTR [rsp+0x140]
  70bc9c:	00 00 
  70bc9e:	c5 fc 10 54 24 a0    	vmovups ymm2,YMMWORD PTR [rsp-0x60]
  70bca4:	c5 74 58 da          	vaddps ymm11,ymm1,ymm2
  70bca8:	c5 ec 5c c9          	vsubps ymm1,ymm2,ymm1
  70bcac:	c5 cc 58 d5          	vaddps ymm2,ymm6,ymm5
  70bcb0:	c5 fc 11 14 24       	vmovups YMMWORD PTR [rsp],ymm2
  70bcb5:	c5 d4 5c d6          	vsubps ymm2,ymm5,ymm6
  70bcb9:	c5 e4 5c e8          	vsubps ymm5,ymm3,ymm0
  70bcbd:	c5 fc 58 c3          	vaddps ymm0,ymm0,ymm3
  70bcc1:	c4 c1 2c 58 db       	vaddps ymm3,ymm10,ymm11
  70bcc6:	c5 fc 11 5c 24 40    	vmovups YMMWORD PTR [rsp+0x40],ymm3
  70bccc:	c4 c1 2c 5c f3       	vsubps ymm6,ymm10,ymm11
  70bcd1:	c5 fc 11 74 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm6
  70bcd7:	c5 3c 58 d7          	vaddps ymm10,ymm8,ymm7
  70bcdb:	c5 7c 11 54 24 60    	vmovups YMMWORD PTR [rsp+0x60],ymm10
  70bce1:	c5 bc 5c f7          	vsubps ymm6,ymm8,ymm7
  70bce5:	c5 fc 11 74 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm6
  70bceb:	c4 41 1c 58 df       	vaddps ymm11,ymm12,ymm15
  70bcf0:	c4 c1 04 5c fc       	vsubps ymm7,ymm15,ymm12
  70bcf5:	c5 0c 58 e4          	vaddps ymm12,ymm14,ymm4
  70bcf9:	c4 c1 5c 5c f6       	vsubps ymm6,ymm4,ymm14
  70bcfe:	c5 fc 10 64 24 e0    	vmovups ymm4,YMMWORD PTR [rsp-0x20]
  70bd04:	c5 14 58 c4          	vaddps ymm8,ymm13,ymm4
  70bd08:	c5 7c 11 44 24 20    	vmovups YMMWORD PTR [rsp+0x20],ymm8
  70bd0e:	c4 c1 5c 5c e5       	vsubps ymm4,ymm4,ymm13
  70bd13:	c5 fc 11 64 24 e0    	vmovups YMMWORD PTR [rsp-0x20],ymm4
  70bd19:	c4 62 7d 18 3d 7a 96 	vbroadcastss ymm15,DWORD PTR [rip+0xffffffffff96967a]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  70bd20:	96 ff 
  70bd22:	c5 84 59 d2          	vmulps ymm2,ymm15,ymm2
  70bd26:	c5 84 59 c0          	vmulps ymm0,ymm15,ymm0
  70bd2a:	c5 6c 5c e8          	vsubps ymm13,ymm2,ymm0
  70bd2e:	c5 ec 58 c0          	vaddps ymm0,ymm2,ymm0
  70bd32:	c5 fc 11 44 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm0
  70bd38:	c5 34 58 f1          	vaddps ymm14,ymm9,ymm1
  70bd3c:	c5 b4 5c e1          	vsubps ymm4,ymm9,ymm1
  70bd40:	c5 84 59 04 24       	vmulps ymm0,ymm15,YMMWORD PTR [rsp]
  70bd45:	c5 84 59 cd          	vmulps ymm1,ymm15,ymm5
  70bd49:	c5 7c 58 f9          	vaddps ymm15,ymm0,ymm1
  70bd4d:	c5 f4 5c e8          	vsubps ymm5,ymm1,ymm0
  70bd51:	c4 c1 20 58 c2       	vaddps xmm0,xmm11,xmm10
  70bd56:	c5 98 58 cb          	vaddps xmm1,xmm12,xmm3
  70bd5a:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  70bd5e:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  70bd62:	c5 f8 13 44 16 10    	vmovlps QWORD PTR [rsi+rdx*1+0x10],xmm0
  70bd68:	c5 f8 11 14 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm2
  70bd6d:	c4 c1 08 58 c5       	vaddps xmm0,xmm14,xmm13
  70bd72:	c4 c1 38 58 cf       	vaddps xmm1,xmm8,xmm15
  70bd77:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  70bd7b:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  70bd7f:	c5 f8 13 44 16 28    	vmovlps QWORD PTR [rsi+rdx*1+0x28],xmm0
  70bd85:	c5 f8 11 54 16 18    	vmovups XMMWORD PTR [rsi+rdx*1+0x18],xmm2
  70bd8b:	c5 c0 58 c6          	vaddps xmm0,xmm7,xmm6
  70bd8f:	c5 7c 28 d6          	vmovaps ymm10,ymm6
  70bd93:	c5 7c 28 cf          	vmovaps ymm9,ymm7
  70bd97:	c5 fc 10 7c 24 c0    	vmovups ymm7,YMMWORD PTR [rsp-0x40]
  70bd9d:	c5 fc 10 74 24 a0    	vmovups ymm6,YMMWORD PTR [rsp-0x60]
  70bda3:	c5 c0 58 ce          	vaddps xmm1,xmm7,xmm6
  70bda7:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  70bdab:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  70bdaf:	c5 f8 13 44 16 40    	vmovlps QWORD PTR [rsi+rdx*1+0x40],xmm0
  70bdb5:	c5 f8 11 54 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm2
  70bdbb:	c5 d8 58 c5          	vaddps xmm0,xmm4,xmm5
  70bdbf:	c5 7c 28 c4          	vmovaps ymm8,ymm4
  70bdc3:	c5 fc 10 64 24 e0    	vmovups ymm4,YMMWORD PTR [rsp-0x20]
  70bdc9:	c5 fc 10 5c 24 80    	vmovups ymm3,YMMWORD PTR [rsp-0x80]
  70bdcf:	c5 d8 58 cb          	vaddps xmm1,xmm4,xmm3
  70bdd3:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  70bdd7:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  70bddb:	c5 f8 13 44 16 58    	vmovlps QWORD PTR [rsi+rdx*1+0x58],xmm0
  70bde1:	c5 f8 11 54 16 48    	vmovups XMMWORD PTR [rsi+rdx*1+0x48],xmm2
  70bde7:	c5 a0 5c 44 24 60    	vsubps xmm0,xmm11,XMMWORD PTR [rsp+0x60]
  70bded:	c5 fc 10 4c 24 40    	vmovups ymm1,YMMWORD PTR [rsp+0x40]
  70bdf3:	c4 c1 70 5c cc       	vsubps xmm1,xmm1,xmm12
  70bdf8:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  70bdfc:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  70be00:	c5 f8 13 44 16 70    	vmovlps QWORD PTR [rsi+rdx*1+0x70],xmm0
  70be06:	c5 f8 11 54 16 60    	vmovups XMMWORD PTR [rsi+rdx*1+0x60],xmm2
  70be0c:	c4 c1 08 5c c5       	vsubps xmm0,xmm14,xmm13
  70be11:	c5 fc 10 4c 24 20    	vmovups ymm1,YMMWORD PTR [rsp+0x20]
  70be17:	c4 c1 70 5c cf       	vsubps xmm1,xmm1,xmm15
  70be1c:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  70be20:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  70be24:	c5 f8 13 84 16 88 00 	vmovlps QWORD PTR [rsi+rdx*1+0x88],xmm0
  70be2b:	00 00 
  70be2d:	c5 f8 11 54 16 78    	vmovups XMMWORD PTR [rsi+rdx*1+0x78],xmm2
  70be33:	c4 c1 30 5c c2       	vsubps xmm0,xmm9,xmm10
  70be38:	c5 c0 5c ce          	vsubps xmm1,xmm7,xmm6
  70be3c:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  70be40:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  70be44:	c5 f8 13 84 16 a0 00 	vmovlps QWORD PTR [rsi+rdx*1+0xa0],xmm0
  70be4b:	00 00 
  70be4d:	c5 f8 11 94 16 90 00 	vmovups XMMWORD PTR [rsi+rdx*1+0x90],xmm2
  70be54:	00 00 
  70be56:	c5 b8 5c c5          	vsubps xmm0,xmm8,xmm5
  70be5a:	c5 d8 5c cb          	vsubps xmm1,xmm4,xmm3
  70be5e:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  70be62:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  70be66:	c5 f8 13 84 16 b8 00 	vmovlps QWORD PTR [rsi+rdx*1+0xb8],xmm0
  70be6d:	00 00 
  70be6f:	c5 f8 11 94 16 a8 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xa8],xmm2
  70be76:	00 00 
  70be78:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  70be7f:	48 39 d0             	cmp    rax,rdx
  70be82:	0f 85 18 fa ff ff    	jne    70b8a0 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle+0x20>
  70be88:	48 81 c4 68 01 00 00 	add    rsp,0x168
  70be8f:	c5 f8 77             	vzeroupper
  70be92:	c3                   	ret
