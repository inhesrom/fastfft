
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000006c7840 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  6c7840:	55                   	push   rbp
  6c7841:	48 89 e5             	mov    rbp,rsp
  6c7844:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  6c7848:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  6c784f:	48 c1 e2 05          	shl    rdx,0x5
  6c7853:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  6c7857:	31 d2                	xor    edx,edx
  6c7859:	4c 8d 44 24 40       	lea    r8,[rsp+0x40]
  6c785e:	c4 e2 7d 18 05 f9 db 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff9adbf9]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6c7865:	9a ff 
  6c7867:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  6c786c:	c4 e2 7d 18 0d 5f da 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff9ada5f]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6c7873:	9a ff 
  6c7875:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  6c7879:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  6c7880:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  6c7885:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  6c788a:	c5 f8 10 34 17       	vmovups xmm6,XMMWORD PTR [rdi+rdx*1]
  6c788f:	c5 f8 10 7c 17 10    	vmovups xmm7,XMMWORD PTR [rdi+rdx*1+0x10]
  6c7895:	c5 78 10 44 17 20    	vmovups xmm8,XMMWORD PTR [rdi+rdx*1+0x20]
  6c789b:	c5 78 10 4c 17 30    	vmovups xmm9,XMMWORD PTR [rdi+rdx*1+0x30]
  6c78a1:	c5 c8 c6 df dd       	vshufps xmm3,xmm6,xmm7,0xdd
  6c78a6:	c4 c1 38 c6 e1 dd    	vshufps xmm4,xmm8,xmm9,0xdd
  6c78ac:	c5 78 10 54 17 50    	vmovups xmm10,XMMWORD PTR [rdi+rdx*1+0x50]
  6c78b2:	c5 78 10 5c 17 40    	vmovups xmm11,XMMWORD PTR [rdi+rdx*1+0x40]
  6c78b8:	c4 c1 20 c6 ea dd    	vshufps xmm5,xmm11,xmm10,0xdd
  6c78be:	c5 c8 c6 f7 88       	vshufps xmm6,xmm6,xmm7,0x88
  6c78c3:	c4 41 38 c6 c9 88    	vshufps xmm9,xmm8,xmm9,0x88
  6c78c9:	c4 41 20 c6 da 88    	vshufps xmm11,xmm11,xmm10,0x88
  6c78cf:	c5 dc 58 fd          	vaddps ymm7,ymm4,ymm5
  6c78d3:	c4 41 34 58 d3       	vaddps ymm10,ymm9,ymm11
  6c78d8:	c5 7c 28 c0          	vmovaps ymm8,ymm0
  6c78dc:	c4 62 45 ac c3       	vfnmadd213ps ymm8,ymm7,ymm3
  6c78e1:	c4 41 34 5c cb       	vsubps ymm9,ymm9,ymm11
  6c78e6:	c5 34 59 c9          	vmulps ymm9,ymm9,ymm1
  6c78ea:	c5 28 58 de          	vaddps xmm11,xmm10,xmm6
  6c78ee:	c4 e2 2d bc f0       	vfnmadd231ps ymm6,ymm10,ymm0
  6c78f3:	c5 dc 5c e5          	vsubps ymm4,ymm4,ymm5
  6c78f7:	c5 5c 59 d1          	vmulps ymm10,ymm4,ymm1
  6c78fb:	c5 c0 58 db          	vaddps xmm3,xmm7,xmm3
  6c78ff:	c4 c1 38 58 e1       	vaddps xmm4,xmm8,xmm9
  6c7904:	c4 c1 38 5c e9       	vsubps xmm5,xmm8,xmm9
  6c7909:	c5 65 15 c5          	vunpckhpd ymm8,ymm3,ymm5
  6c790d:	c5 e5 14 ed          	vunpcklpd ymm5,ymm3,ymm5
  6c7911:	c4 e3 5d 0c fa cc    	vblendps ymm7,ymm4,ymm2,0xcc
  6c7917:	c5 dd 73 dc 08       	vpsrldq ymm4,ymm4,0x8
  6c791c:	c5 d4 c6 df 88       	vshufps ymm3,ymm5,ymm7,0x88
  6c7921:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  6c7926:	c5 d4 c6 ef dd       	vshufps ymm5,ymm5,ymm7,0xdd
  6c792b:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  6c7930:	c5 bc c6 fc 88       	vshufps ymm7,ymm8,ymm4,0x88
  6c7935:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  6c793a:	c5 bc c6 e4 dd       	vshufps ymm4,ymm8,ymm4,0xdd
  6c793f:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  6c7944:	c4 41 48 5c c2       	vsubps xmm8,xmm6,xmm10
  6c7949:	c5 a8 58 f6          	vaddps xmm6,xmm10,xmm6
  6c794d:	c5 25 15 ce          	vunpckhpd ymm9,ymm11,ymm6
  6c7951:	c5 25 14 d6          	vunpcklpd ymm10,ymm11,ymm6
  6c7955:	c4 63 3d 0c da cc    	vblendps ymm11,ymm8,ymm2,0xcc
  6c795b:	c4 c1 3d 73 d8 08    	vpsrldq ymm8,ymm8,0x8
  6c7961:	c4 c1 2c c6 f3 88    	vshufps ymm6,ymm10,ymm11,0x88
  6c7967:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  6c796c:	c4 41 2c c6 d3 dd    	vshufps ymm10,ymm10,ymm11,0xdd
  6c7972:	c4 41 2c c6 d2 d8    	vshufps ymm10,ymm10,ymm10,0xd8
  6c7978:	c4 41 34 c6 d8 88    	vshufps ymm11,ymm9,ymm8,0x88
  6c797e:	c4 41 24 c6 db d8    	vshufps ymm11,ymm11,ymm11,0xd8
  6c7984:	c4 41 34 c6 c0 dd    	vshufps ymm8,ymm9,ymm8,0xdd
  6c798a:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  6c7990:	c5 7c 10 a1 80 00 00 	vmovups ymm12,YMMWORD PTR [rcx+0x80]
  6c7997:	00 
  6c7998:	c5 7c 10 a9 a0 00 00 	vmovups ymm13,YMMWORD PTR [rcx+0xa0]
  6c799f:	00 
  6c79a0:	c5 1c 59 cf          	vmulps ymm9,ymm12,ymm7
  6c79a4:	c4 42 25 bc cd       	vfnmadd231ps ymm9,ymm11,ymm13
  6c79a9:	c4 41 1c 59 db       	vmulps ymm11,ymm12,ymm11
  6c79ae:	c5 7c 10 61 40       	vmovups ymm12,YMMWORD PTR [rcx+0x40]
  6c79b3:	c4 42 45 b8 dd       	vfmadd231ps ymm11,ymm7,ymm13
  6c79b8:	c5 fc 10 79 60       	vmovups ymm7,YMMWORD PTR [rcx+0x60]
  6c79bd:	c5 1c 59 ed          	vmulps ymm13,ymm12,ymm5
  6c79c1:	c4 62 2d bc ef       	vfnmadd231ps ymm13,ymm10,ymm7
  6c79c6:	c4 41 1c 59 d2       	vmulps ymm10,ymm12,ymm10
  6c79cb:	c5 7c 10 a1 c0 00 00 	vmovups ymm12,YMMWORD PTR [rcx+0xc0]
  6c79d2:	00 
  6c79d3:	c4 62 55 b8 d7       	vfmadd231ps ymm10,ymm5,ymm7
  6c79d8:	c5 fc 10 a9 e0 00 00 	vmovups ymm5,YMMWORD PTR [rcx+0xe0]
  6c79df:	00 
  6c79e0:	c5 9c 59 fc          	vmulps ymm7,ymm12,ymm4
  6c79e4:	c4 e2 3d bc fd       	vfnmadd231ps ymm7,ymm8,ymm5
  6c79e9:	c4 41 1c 59 c0       	vmulps ymm8,ymm12,ymm8
  6c79ee:	c5 34 58 e3          	vaddps ymm12,ymm9,ymm3
  6c79f2:	c4 62 5d b8 c5       	vfmadd231ps ymm8,ymm4,ymm5
  6c79f7:	c5 94 58 e7          	vaddps ymm4,ymm13,ymm7
  6c79fb:	c5 a4 58 ee          	vaddps ymm5,ymm11,ymm6
  6c79ff:	c4 c1 64 5c d9       	vsubps ymm3,ymm3,ymm9
  6c7a04:	c4 41 2c 58 c8       	vaddps ymm9,ymm10,ymm8
  6c7a09:	c4 41 2c 5c c0       	vsubps ymm8,ymm10,ymm8
  6c7a0e:	c4 c1 4c 5c f3       	vsubps ymm6,ymm6,ymm11
  6c7a13:	c4 c1 44 5c fd       	vsubps ymm7,ymm7,ymm13
  6c7a18:	c5 18 58 d4          	vaddps xmm10,xmm12,xmm4
  6c7a1c:	c5 30 58 dd          	vaddps xmm11,xmm9,xmm5
  6c7a20:	c4 41 20 14 ea       	vunpcklps xmm13,xmm11,xmm10
  6c7a25:	c4 41 20 15 d2       	vunpckhps xmm10,xmm11,xmm10
  6c7a2a:	c5 78 13 54 16 10    	vmovlps QWORD PTR [rsi+rdx*1+0x10],xmm10
  6c7a30:	c5 78 11 2c 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm13
  6c7a35:	c5 38 58 d3          	vaddps xmm10,xmm8,xmm3
  6c7a39:	c5 48 58 df          	vaddps xmm11,xmm6,xmm7
  6c7a3d:	c4 41 20 15 ea       	vunpckhps xmm13,xmm11,xmm10
  6c7a42:	c4 41 20 14 d2       	vunpcklps xmm10,xmm11,xmm10
  6c7a47:	c5 78 11 54 16 18    	vmovups XMMWORD PTR [rsi+rdx*1+0x18],xmm10
  6c7a4d:	c5 78 13 6c 16 28    	vmovlps QWORD PTR [rsi+rdx*1+0x28],xmm13
  6c7a53:	c5 98 5c e4          	vsubps xmm4,xmm12,xmm4
  6c7a57:	c4 c1 50 5c e9       	vsubps xmm5,xmm5,xmm9
  6c7a5c:	c5 50 15 cc          	vunpckhps xmm9,xmm5,xmm4
  6c7a60:	c5 d0 14 e4          	vunpcklps xmm4,xmm5,xmm4
  6c7a64:	c5 f8 11 64 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm4
  6c7a6a:	c5 78 13 4c 16 40    	vmovlps QWORD PTR [rsi+rdx*1+0x40],xmm9
  6c7a70:	c4 c1 60 5c d8       	vsubps xmm3,xmm3,xmm8
  6c7a75:	c5 c8 5c e7          	vsubps xmm4,xmm6,xmm7
  6c7a79:	c5 d8 15 eb          	vunpckhps xmm5,xmm4,xmm3
  6c7a7d:	c5 d8 14 db          	vunpcklps xmm3,xmm4,xmm3
  6c7a81:	c5 f8 11 5c 16 48    	vmovups XMMWORD PTR [rsi+rdx*1+0x48],xmm3
  6c7a87:	c5 f8 13 6c 16 58    	vmovlps QWORD PTR [rsi+rdx*1+0x58],xmm5
  6c7a8d:	48 83 c2 60          	add    rdx,0x60
  6c7a91:	48 39 d0             	cmp    rax,rdx
  6c7a94:	0f 85 e6 fd ff ff    	jne    6c7880 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle+0x40>
  6c7a9a:	48 89 ec             	mov    rsp,rbp
  6c7a9d:	5d                   	pop    rbp
  6c7a9e:	c5 f8 77             	vzeroupper
  6c7aa1:	c3                   	ret
