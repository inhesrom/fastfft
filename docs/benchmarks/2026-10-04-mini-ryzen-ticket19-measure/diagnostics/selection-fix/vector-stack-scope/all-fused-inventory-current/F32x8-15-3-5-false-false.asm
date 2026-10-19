
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000006c68c0 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  6c68c0:	55                   	push   rbp
  6c68c1:	48 89 e5             	mov    rbp,rsp
  6c68c4:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  6c68c8:	48 81 ec 00 01 00 00 	sub    rsp,0x100
  6c68cf:	c6 84 24 80 00 00 00 	mov    BYTE PTR [rsp+0x80],0x0
  6c68d6:	00 
  6c68d7:	48 8d 84 24 80 00 00 	lea    rax,[rsp+0x80]
  6c68de:	00 
  6c68df:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  6c68e4:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  6c68e9:	c5 fc 10 07          	vmovups ymm0,YMMWORD PTR [rdi]
  6c68ed:	c5 fb 10 4f 20       	vmovsd xmm1,QWORD PTR [rdi+0x20]
  6c68f2:	c5 fc 10 57 28       	vmovups ymm2,YMMWORD PTR [rdi+0x28]
  6c68f7:	c5 fb 10 5f 48       	vmovsd xmm3,QWORD PTR [rdi+0x48]
  6c68fc:	c5 fc 10 67 50       	vmovups ymm4,YMMWORD PTR [rdi+0x50]
  6c6901:	c5 fb 10 6f 70       	vmovsd xmm5,QWORD PTR [rdi+0x70]
  6c6906:	c5 fc c6 f1 88       	vshufps ymm6,ymm0,ymm1,0x88
  6c690b:	c4 e3 fd 01 fe d8    	vpermpd ymm7,ymm6,0xd8
  6c6911:	c5 ec c6 f3 88       	vshufps ymm6,ymm2,ymm3,0x88
  6c6916:	c4 63 fd 01 c6 d8    	vpermpd ymm8,ymm6,0xd8
  6c691c:	c5 dc c6 f5 88       	vshufps ymm6,ymm4,ymm5,0x88
  6c6921:	c4 63 fd 01 ce d8    	vpermpd ymm9,ymm6,0xd8
  6c6927:	c5 fc c6 c1 dd       	vshufps ymm0,ymm0,ymm1,0xdd
  6c692c:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  6c6932:	c5 ec c6 cb dd       	vshufps ymm1,ymm2,ymm3,0xdd
  6c6937:	c4 e3 fd 01 c9 d8    	vpermpd ymm1,ymm1,0xd8
  6c693d:	c5 dc c6 d5 dd       	vshufps ymm2,ymm4,ymm5,0xdd
  6c6942:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  6c6948:	c4 c1 3c 58 d9       	vaddps ymm3,ymm8,ymm9
  6c694d:	c5 e4 58 e7          	vaddps ymm4,ymm3,ymm7
  6c6951:	c5 f4 58 ea          	vaddps ymm5,ymm1,ymm2
  6c6955:	c5 d4 58 f0          	vaddps ymm6,ymm5,ymm0
  6c6959:	c4 62 7d 18 15 fe ea 	vbroadcastss ymm10,DWORD PTR [rip+0xffffffffff9aeafe]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6c6960:	9a ff 
  6c6962:	c4 e2 2d ac df       	vfnmadd213ps ymm3,ymm10,ymm7
  6c6967:	c5 f4 5c ca          	vsubps ymm1,ymm1,ymm2
  6c696b:	c4 e2 7d 18 15 60 e9 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff9ae960]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6c6972:	9a ff 
  6c6974:	c5 f4 59 fa          	vmulps ymm7,ymm1,ymm2
  6c6978:	c5 64 58 df          	vaddps ymm11,ymm3,ymm7
  6c697c:	c4 62 55 ac d0       	vfnmadd213ps ymm10,ymm5,ymm0
  6c6981:	c4 c1 3c 5c c1       	vsubps ymm0,ymm8,ymm9
  6c6986:	c5 fc 59 c2          	vmulps ymm0,ymm0,ymm2
  6c698a:	c5 ac 5c c8          	vsubps ymm1,ymm10,ymm0
  6c698e:	c5 e4 5c d7          	vsubps ymm2,ymm3,ymm7
  6c6992:	c5 ac 58 f8          	vaddps ymm7,ymm10,ymm0
  6c6996:	c5 f8 28 c4          	vmovaps xmm0,xmm4
  6c699a:	c4 e3 7d 19 e3 01    	vextractf128 xmm3,ymm4,0x1
  6c69a0:	c5 78 29 dc          	vmovaps xmm4,xmm11
  6c69a4:	c4 63 7d 19 dd 01    	vextractf128 xmm5,ymm11,0x1
  6c69aa:	c5 78 28 c2          	vmovaps xmm8,xmm2
  6c69ae:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  6c69b4:	c5 e5 14 d2          	vunpcklpd ymm2,ymm3,ymm2
  6c69b8:	c4 41 7d 15 c8       	vunpckhpd ymm9,ymm0,ymm8
  6c69bd:	c4 c1 7d 14 d8       	vunpcklpd ymm3,ymm0,ymm8
  6c69c2:	c4 41 7a 7e d3       	vmovq  xmm10,xmm11
  6c69c7:	c5 dd 73 dc 08       	vpsrldq ymm4,ymm4,0x8
  6c69cc:	c4 41 38 57 c0       	vxorps xmm8,xmm8,xmm8
  6c69d1:	c4 c3 55 0c c0 cc    	vblendps ymm0,ymm5,ymm8,0xcc
  6c69d7:	c5 6c c6 d8 88       	vshufps ymm11,ymm2,ymm0,0x88
  6c69dc:	c4 c1 64 c6 c2 88    	vshufps ymm0,ymm3,ymm10,0x88
  6c69e2:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  6c69e7:	c5 fc 29 44 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm0
  6c69ed:	c4 c1 64 c6 d2 dd    	vshufps ymm2,ymm3,ymm10,0xdd
  6c69f3:	c5 ec c6 ea d8       	vshufps ymm5,ymm2,ymm2,0xd8
  6c69f8:	c5 b4 c6 d4 88       	vshufps ymm2,ymm9,ymm4,0x88
  6c69fd:	c5 ec c6 da d8       	vshufps ymm3,ymm2,ymm2,0xd8
  6c6a02:	c5 b4 c6 d4 dd       	vshufps ymm2,ymm9,ymm4,0xdd
  6c6a07:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  6c6a0c:	c4 c1 24 c6 e3 d8    	vshufps ymm4,ymm11,ymm11,0xd8
  6c6a12:	c5 78 28 ce          	vmovaps xmm9,xmm6
  6c6a16:	c4 e3 7d 19 f6 01    	vextractf128 xmm6,ymm6,0x1
  6c6a1c:	c5 78 28 d1          	vmovaps xmm10,xmm1
  6c6a20:	c4 c3 7d 19 cb 01    	vextractf128 xmm11,ymm1,0x1
  6c6a26:	c5 78 28 e7          	vmovaps xmm12,xmm7
  6c6a2a:	c4 e3 7d 19 ff 01    	vextractf128 xmm7,ymm7,0x1
  6c6a30:	c5 cd 14 f7          	vunpcklpd ymm6,ymm6,ymm7
  6c6a34:	c4 c1 35 15 fc       	vunpckhpd ymm7,ymm9,ymm12
  6c6a39:	c4 41 35 14 cc       	vunpcklpd ymm9,ymm9,ymm12
  6c6a3e:	c5 7a 7e e1          	vmovq  xmm12,xmm1
  6c6a42:	c4 c1 2d 73 da 08    	vpsrldq ymm10,ymm10,0x8
  6c6a48:	c4 c3 25 0c c8 cc    	vblendps ymm1,ymm11,ymm8,0xcc
  6c6a4e:	c5 cc c6 f1 88       	vshufps ymm6,ymm6,ymm1,0x88
  6c6a53:	c4 c1 34 c6 cc 88    	vshufps ymm1,ymm9,ymm12,0x88
  6c6a59:	c5 f4 c6 c1 d8       	vshufps ymm0,ymm1,ymm1,0xd8
  6c6a5e:	c5 fc 29 44 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm0
  6c6a64:	c4 41 34 c6 c4 dd    	vshufps ymm8,ymm9,ymm12,0xdd
  6c6a6a:	c4 41 3c c6 c8 d8    	vshufps ymm9,ymm8,ymm8,0xd8
  6c6a70:	c4 41 44 c6 c2 88    	vshufps ymm8,ymm7,ymm10,0x88
  6c6a76:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  6c6a7c:	c4 c1 44 c6 fa dd    	vshufps ymm7,ymm7,ymm10,0xdd
  6c6a82:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  6c6a87:	c5 4c c6 de d8       	vshufps ymm11,ymm6,ymm6,0xd8
  6c6a8c:	c5 7c 10 6a 40       	vmovups ymm13,YMMWORD PTR [rdx+0x40]
  6c6a91:	c5 7c 10 72 60       	vmovups ymm14,YMMWORD PTR [rdx+0x60]
  6c6a96:	c5 7c 10 a2 80 00 00 	vmovups ymm12,YMMWORD PTR [rdx+0x80]
  6c6a9d:	00 
  6c6a9e:	c5 7c 10 92 a0 00 00 	vmovups ymm10,YMMWORD PTR [rdx+0xa0]
  6c6aa5:	00 
  6c6aa6:	c5 94 59 f5          	vmulps ymm6,ymm13,ymm5
  6c6aaa:	c4 c2 35 bc f6       	vfnmadd231ps ymm6,ymm9,ymm14
  6c6aaf:	c4 41 14 59 e9       	vmulps ymm13,ymm13,ymm9
  6c6ab4:	c5 7c 10 ba 00 01 00 	vmovups ymm15,YMMWORD PTR [rdx+0x100]
  6c6abb:	00 
  6c6abc:	c4 42 55 b8 ee       	vfmadd231ps ymm13,ymm5,ymm14
  6c6ac1:	c5 fc 10 aa 20 01 00 	vmovups ymm5,YMMWORD PTR [rdx+0x120]
  6c6ac8:	00 
  6c6ac9:	c5 04 59 cc          	vmulps ymm9,ymm15,ymm4
  6c6acd:	c4 62 25 bc cd       	vfnmadd231ps ymm9,ymm11,ymm5
  6c6ad2:	c4 41 04 59 f3       	vmulps ymm14,ymm15,ymm11
  6c6ad7:	c5 7c 10 ba c0 00 00 	vmovups ymm15,YMMWORD PTR [rdx+0xc0]
  6c6ade:	00 
  6c6adf:	c4 62 5d b8 f5       	vfmadd231ps ymm14,ymm4,ymm5
  6c6ae4:	c5 fc 10 82 e0 00 00 	vmovups ymm0,YMMWORD PTR [rdx+0xe0]
  6c6aeb:	00 
  6c6aec:	c5 1c 59 db          	vmulps ymm11,ymm12,ymm3
  6c6af0:	c4 42 3d bc da       	vfnmadd231ps ymm11,ymm8,ymm10
  6c6af5:	c4 41 1c 59 e0       	vmulps ymm12,ymm12,ymm8
  6c6afa:	c5 b4 58 e6          	vaddps ymm4,ymm9,ymm6
  6c6afe:	c4 42 65 b8 e2       	vfmadd231ps ymm12,ymm3,ymm10
  6c6b03:	c5 04 59 d2          	vmulps ymm10,ymm15,ymm2
  6c6b07:	c4 62 45 bc d0       	vfnmadd231ps ymm10,ymm7,ymm0
  6c6b0c:	c4 c1 24 58 ea       	vaddps ymm5,ymm11,ymm10
  6c6b11:	c5 84 59 df          	vmulps ymm3,ymm15,ymm7
  6c6b15:	c4 c1 14 58 fe       	vaddps ymm7,ymm13,ymm14
  6c6b1a:	c4 e2 6d b8 d8       	vfmadd231ps ymm3,ymm2,ymm0
  6c6b1f:	c5 1c 58 c3          	vaddps ymm8,ymm12,ymm3
  6c6b23:	c4 e2 7d 18 0d bc eb 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff9aebbc]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  6c6b2a:	9a ff 
  6c6b2c:	c4 41 14 5c ee       	vsubps ymm13,ymm13,ymm14
  6c6b31:	c5 fc 28 d1          	vmovaps ymm2,ymm1
  6c6b35:	c5 1c 5c e3          	vsubps ymm12,ymm12,ymm3
  6c6b39:	c4 62 7d 18 35 16 ec 	vbroadcastss ymm14,DWORD PTR [rip+0xffffffffff9aec16]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  6c6b40:	9a ff 
  6c6b42:	c5 fc 28 44 24 40    	vmovaps ymm0,YMMWORD PTR [rsp+0x40]
  6c6b48:	c4 e2 5d a8 d0       	vfmadd213ps ymm2,ymm4,ymm0
  6c6b4d:	c4 41 4c 5c f9       	vsubps ymm15,ymm6,ymm9
  6c6b52:	c4 c1 1c 59 de       	vmulps ymm3,ymm12,ymm14
  6c6b57:	c4 41 24 5c d2       	vsubps ymm10,ymm11,ymm10
  6c6b5c:	c4 62 7d 18 1d 3b e8 	vbroadcastss ymm11,DWORD PTR [rip+0xffffffffff9ae83b]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  6c6b63:	9a ff 
  6c6b65:	c4 c2 15 b8 db       	vfmadd231ps ymm3,ymm13,ymm11
  6c6b6a:	c4 41 14 59 ce       	vmulps ymm9,ymm13,ymm14
  6c6b6f:	c4 42 25 bc cc       	vfnmadd231ps ymm9,ymm11,ymm12
  6c6b74:	c4 c1 2c 59 f6       	vmulps ymm6,ymm10,ymm14
  6c6b79:	c4 c2 05 b8 f3       	vfmadd231ps ymm6,ymm15,ymm11
  6c6b7e:	c4 41 04 59 e6       	vmulps ymm12,ymm15,ymm14
  6c6b83:	c4 62 7d 18 2d b8 ea 	vbroadcastss ymm13,DWORD PTR [rip+0xffffffffff9aeab8]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  6c6b8a:	9a ff 
  6c6b8c:	c4 c2 55 bc d5       	vfnmadd231ps ymm2,ymm5,ymm13
  6c6b91:	c4 42 2d bc e3       	vfnmadd231ps ymm12,ymm10,ymm11
  6c6b96:	c5 7c 28 d9          	vmovaps ymm11,ymm1
  6c6b9a:	c5 7c 28 7c 24 60    	vmovaps ymm15,YMMWORD PTR [rsp+0x60]
  6c6ba0:	c4 42 45 a8 df       	vfmadd213ps ymm11,ymm7,ymm15
  6c6ba5:	c4 42 3d bc dd       	vfnmadd231ps ymm11,ymm8,ymm13
  6c6baa:	c4 41 7c 28 f5       	vmovaps ymm14,ymm13
  6c6baf:	c5 7c 28 d0          	vmovaps ymm10,ymm0
  6c6bb3:	c4 62 5d ac f0       	vfnmadd213ps ymm14,ymm4,ymm0
  6c6bb8:	c4 62 55 b8 f1       	vfmadd231ps ymm14,ymm5,ymm1
  6c6bbd:	c4 42 45 ac ef       	vfnmadd213ps ymm13,ymm7,ymm15
  6c6bc2:	c4 62 3d b8 e9       	vfmadd231ps ymm13,ymm8,ymm1
  6c6bc7:	c5 80 58 c7          	vaddps xmm0,xmm15,xmm7
  6c6bcb:	c5 b8 58 c0          	vaddps xmm0,xmm8,xmm0
  6c6bcf:	c5 a8 58 cc          	vaddps xmm1,xmm10,xmm4
  6c6bd3:	c5 f0 58 cd          	vaddps xmm1,xmm1,xmm5
  6c6bd7:	c5 f0 14 e0          	vunpcklps xmm4,xmm1,xmm0
  6c6bdb:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  6c6bdf:	c5 f8 13 46 10       	vmovlps QWORD PTR [rsi+0x10],xmm0
  6c6be4:	c5 f8 11 26          	vmovups XMMWORD PTR [rsi],xmm4
  6c6be8:	c5 a0 5c c6          	vsubps xmm0,xmm11,xmm6
  6c6bec:	c5 e8 58 cb          	vaddps xmm1,xmm2,xmm3
  6c6bf0:	c5 f0 15 e0          	vunpckhps xmm4,xmm1,xmm0
  6c6bf4:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  6c6bf8:	c5 f8 11 46 18       	vmovups XMMWORD PTR [rsi+0x18],xmm0
  6c6bfd:	c5 f8 13 66 28       	vmovlps QWORD PTR [rsi+0x28],xmm4
  6c6c02:	c4 c1 10 5c c4       	vsubps xmm0,xmm13,xmm12
  6c6c07:	c4 c1 08 58 c9       	vaddps xmm1,xmm14,xmm9
  6c6c0c:	c5 f0 15 e0          	vunpckhps xmm4,xmm1,xmm0
  6c6c10:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  6c6c14:	c5 f8 11 46 30       	vmovups XMMWORD PTR [rsi+0x30],xmm0
  6c6c19:	c5 f8 13 66 40       	vmovlps QWORD PTR [rsi+0x40],xmm4
  6c6c1e:	c4 c1 10 58 c4       	vaddps xmm0,xmm13,xmm12
  6c6c23:	c4 c1 08 5c c9       	vsubps xmm1,xmm14,xmm9
  6c6c28:	c5 f0 15 e0          	vunpckhps xmm4,xmm1,xmm0
  6c6c2c:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  6c6c30:	c5 f8 11 46 48       	vmovups XMMWORD PTR [rsi+0x48],xmm0
  6c6c35:	c5 f8 13 66 58       	vmovlps QWORD PTR [rsi+0x58],xmm4
  6c6c3a:	c5 a0 58 c6          	vaddps xmm0,xmm11,xmm6
  6c6c3e:	c5 e8 5c cb          	vsubps xmm1,xmm2,xmm3
  6c6c42:	c5 f0 15 d0          	vunpckhps xmm2,xmm1,xmm0
  6c6c46:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  6c6c4a:	c5 f8 11 46 60       	vmovups XMMWORD PTR [rsi+0x60],xmm0
  6c6c4f:	c5 f8 13 56 70       	vmovlps QWORD PTR [rsi+0x70],xmm2
  6c6c54:	48 89 ec             	mov    rsp,rbp
  6c6c57:	5d                   	pop    rbp
  6c6c58:	c5 f8 77             	vzeroupper
  6c6c5b:	c3                   	ret
