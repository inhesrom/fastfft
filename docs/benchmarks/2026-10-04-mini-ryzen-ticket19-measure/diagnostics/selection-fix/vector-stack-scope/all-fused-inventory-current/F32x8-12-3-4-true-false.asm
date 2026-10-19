
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000007369c0 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  7369c0:	55                   	push   rbp
  7369c1:	48 89 e5             	mov    rbp,rsp
  7369c4:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  7369c8:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  7369cf:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  7369d4:	48 8d 44 24 40       	lea    rax,[rsp+0x40]
  7369d9:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  7369de:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  7369e3:	c5 f8 10 1f          	vmovups xmm3,XMMWORD PTR [rdi]
  7369e7:	c5 f8 10 67 10       	vmovups xmm4,XMMWORD PTR [rdi+0x10]
  7369ec:	c5 f8 10 6f 20       	vmovups xmm5,XMMWORD PTR [rdi+0x20]
  7369f1:	c5 f8 10 7f 30       	vmovups xmm7,XMMWORD PTR [rdi+0x30]
  7369f6:	c5 e0 c6 c4 dd       	vshufps xmm0,xmm3,xmm4,0xdd
  7369fb:	c5 d0 c6 cf dd       	vshufps xmm1,xmm5,xmm7,0xdd
  736a00:	c5 78 10 47 50       	vmovups xmm8,XMMWORD PTR [rdi+0x50]
  736a05:	c5 78 10 4f 40       	vmovups xmm9,XMMWORD PTR [rdi+0x40]
  736a0a:	c4 c1 30 c6 d0 dd    	vshufps xmm2,xmm9,xmm8,0xdd
  736a10:	c5 e0 c6 f4 88       	vshufps xmm6,xmm3,xmm4,0x88
  736a15:	c5 d0 c6 df 88       	vshufps xmm3,xmm5,xmm7,0x88
  736a1a:	c4 c1 30 c6 e8 88    	vshufps xmm5,xmm9,xmm8,0x88
  736a20:	c5 f4 58 e2          	vaddps ymm4,ymm1,ymm2
  736a24:	c4 e2 7d 18 3d 33 ea 	vbroadcastss ymm7,DWORD PTR [rip+0xffffffffff93ea33]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  736a2b:	93 ff 
  736a2d:	c5 64 58 c5          	vaddps ymm8,ymm3,ymm5
  736a31:	c5 38 58 ce          	vaddps xmm9,xmm8,xmm6
  736a35:	c4 e2 3d bc f7       	vfnmadd231ps ymm6,ymm8,ymm7
  736a3a:	c4 e2 5d ac f8       	vfnmadd213ps ymm7,ymm4,ymm0
  736a3f:	c4 62 7d 18 05 8c e8 	vbroadcastss ymm8,DWORD PTR [rip+0xffffffffff93e88c]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  736a46:	93 ff 
  736a48:	c5 e4 5c dd          	vsubps ymm3,ymm3,ymm5
  736a4c:	c5 bc 59 db          	vmulps ymm3,ymm8,ymm3
  736a50:	c5 f4 5c ca          	vsubps ymm1,ymm1,ymm2
  736a54:	c5 bc 59 e9          	vmulps ymm5,ymm8,ymm1
  736a58:	c5 d8 58 c0          	vaddps xmm0,xmm4,xmm0
  736a5c:	c5 c0 58 cb          	vaddps xmm1,xmm7,xmm3
  736a60:	c5 c0 5c d3          	vsubps xmm2,xmm7,xmm3
  736a64:	c5 fd 15 da          	vunpckhpd ymm3,ymm0,ymm2
  736a68:	c5 fd 14 d2          	vunpcklpd ymm2,ymm0,ymm2
  736a6c:	c5 c0 57 ff          	vxorps xmm7,xmm7,xmm7
  736a70:	c4 e3 75 0c e7 cc    	vblendps ymm4,ymm1,ymm7,0xcc
  736a76:	c5 f5 73 d9 08       	vpsrldq ymm1,ymm1,0x8
  736a7b:	c5 ec c6 c4 88       	vshufps ymm0,ymm2,ymm4,0x88
  736a80:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  736a85:	c5 ec c6 d4 dd       	vshufps ymm2,ymm2,ymm4,0xdd
  736a8a:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  736a8f:	c5 e4 c6 e1 88       	vshufps ymm4,ymm3,ymm1,0x88
  736a94:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  736a99:	c5 e4 c6 c9 dd       	vshufps ymm1,ymm3,ymm1,0xdd
  736a9e:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  736aa3:	c5 c8 5c dd          	vsubps xmm3,xmm6,xmm5
  736aa7:	c5 d0 58 ee          	vaddps xmm5,xmm5,xmm6
  736aab:	c5 b5 15 f5          	vunpckhpd ymm6,ymm9,ymm5
  736aaf:	c5 b5 14 ed          	vunpcklpd ymm5,ymm9,ymm5
  736ab3:	c4 e3 65 0c ff cc    	vblendps ymm7,ymm3,ymm7,0xcc
  736ab9:	c5 bd 73 db 08       	vpsrldq ymm8,ymm3,0x8
  736abe:	c5 d4 c6 df 88       	vshufps ymm3,ymm5,ymm7,0x88
  736ac3:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  736ac8:	c5 d4 c6 ef dd       	vshufps ymm5,ymm5,ymm7,0xdd
  736acd:	c5 d4 c6 fd d8       	vshufps ymm7,ymm5,ymm5,0xd8
  736ad2:	c4 c1 4c c6 e8 88    	vshufps ymm5,ymm6,ymm8,0x88
  736ad8:	c5 54 c6 cd d8       	vshufps ymm9,ymm5,ymm5,0xd8
  736add:	c4 c1 4c c6 e8 dd    	vshufps ymm5,ymm6,ymm8,0xdd
  736ae3:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  736ae8:	c5 7c 10 82 80 00 00 	vmovups ymm8,YMMWORD PTR [rdx+0x80]
  736aef:	00 
  736af0:	c5 7c 10 92 a0 00 00 	vmovups ymm10,YMMWORD PTR [rdx+0xa0]
  736af7:	00 
  736af8:	c5 bc 59 f4          	vmulps ymm6,ymm8,ymm4
  736afc:	c4 c2 35 bc f2       	vfnmadd231ps ymm6,ymm9,ymm10
  736b01:	c4 41 3c 59 c1       	vmulps ymm8,ymm8,ymm9
  736b06:	c5 7c 10 4a 40       	vmovups ymm9,YMMWORD PTR [rdx+0x40]
  736b0b:	c4 42 5d b8 c2       	vfmadd231ps ymm8,ymm4,ymm10
  736b10:	c5 fc 10 62 60       	vmovups ymm4,YMMWORD PTR [rdx+0x60]
  736b15:	c5 34 59 d2          	vmulps ymm10,ymm9,ymm2
  736b19:	c4 62 45 bc d4       	vfnmadd231ps ymm10,ymm7,ymm4
  736b1e:	c5 b4 59 ff          	vmulps ymm7,ymm9,ymm7
  736b22:	c5 7c 10 8a c0 00 00 	vmovups ymm9,YMMWORD PTR [rdx+0xc0]
  736b29:	00 
  736b2a:	c4 e2 6d b8 fc       	vfmadd231ps ymm7,ymm2,ymm4
  736b2f:	c5 fc 10 92 e0 00 00 	vmovups ymm2,YMMWORD PTR [rdx+0xe0]
  736b36:	00 
  736b37:	c5 b4 59 e1          	vmulps ymm4,ymm9,ymm1
  736b3b:	c4 e2 55 bc e2       	vfnmadd231ps ymm4,ymm5,ymm2
  736b40:	c5 b4 59 ed          	vmulps ymm5,ymm9,ymm5
  736b44:	c5 4c 58 c8          	vaddps ymm9,ymm6,ymm0
  736b48:	c4 e2 75 b8 ea       	vfmadd231ps ymm5,ymm1,ymm2
  736b4d:	c5 ac 58 cc          	vaddps ymm1,ymm10,ymm4
  736b51:	c5 bc 58 d3          	vaddps ymm2,ymm8,ymm3
  736b55:	c5 fc 5c c6          	vsubps ymm0,ymm0,ymm6
  736b59:	c5 c4 58 f5          	vaddps ymm6,ymm7,ymm5
  736b5d:	c5 c4 5c ed          	vsubps ymm5,ymm7,ymm5
  736b61:	c4 c1 64 5c d8       	vsubps ymm3,ymm3,ymm8
  736b66:	c4 c1 5c 5c e2       	vsubps ymm4,ymm4,ymm10
  736b6b:	c5 b0 58 f9          	vaddps xmm7,xmm9,xmm1
  736b6f:	c5 68 58 c6          	vaddps xmm8,xmm2,xmm6
  736b73:	c5 38 14 d7          	vunpcklps xmm10,xmm8,xmm7
  736b77:	c5 b8 15 ff          	vunpckhps xmm7,xmm8,xmm7
  736b7b:	c5 f8 13 7e 10       	vmovlps QWORD PTR [rsi+0x10],xmm7
  736b80:	c5 78 11 16          	vmovups XMMWORD PTR [rsi],xmm10
  736b84:	c5 f8 58 fd          	vaddps xmm7,xmm0,xmm5
  736b88:	c5 60 58 c4          	vaddps xmm8,xmm3,xmm4
  736b8c:	c5 38 15 d7          	vunpckhps xmm10,xmm8,xmm7
  736b90:	c5 b8 14 ff          	vunpcklps xmm7,xmm8,xmm7
  736b94:	c5 f8 11 7e 18       	vmovups XMMWORD PTR [rsi+0x18],xmm7
  736b99:	c5 78 13 56 28       	vmovlps QWORD PTR [rsi+0x28],xmm10
  736b9e:	c5 b0 5c c9          	vsubps xmm1,xmm9,xmm1
  736ba2:	c5 e8 5c d6          	vsubps xmm2,xmm2,xmm6
  736ba6:	c5 e8 15 f1          	vunpckhps xmm6,xmm2,xmm1
  736baa:	c5 e8 14 c9          	vunpcklps xmm1,xmm2,xmm1
  736bae:	c5 f8 11 4e 30       	vmovups XMMWORD PTR [rsi+0x30],xmm1
  736bb3:	c5 f8 13 76 40       	vmovlps QWORD PTR [rsi+0x40],xmm6
  736bb8:	c5 f8 5c c5          	vsubps xmm0,xmm0,xmm5
  736bbc:	c5 e0 5c cc          	vsubps xmm1,xmm3,xmm4
  736bc0:	c5 f0 15 d0          	vunpckhps xmm2,xmm1,xmm0
  736bc4:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  736bc8:	c5 f8 11 46 48       	vmovups XMMWORD PTR [rsi+0x48],xmm0
  736bcd:	c5 f8 13 56 58       	vmovlps QWORD PTR [rsi+0x58],xmm2
  736bd2:	48 89 ec             	mov    rsp,rbp
  736bd5:	5d                   	pop    rbp
  736bd6:	c5 f8 77             	vzeroupper
  736bd9:	c3                   	ret
