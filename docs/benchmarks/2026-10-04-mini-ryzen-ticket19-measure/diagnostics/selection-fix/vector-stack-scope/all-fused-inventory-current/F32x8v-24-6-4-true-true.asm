
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000aa9b40 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  aa9b40:	48 c1 e2 06          	shl    rdx,0x6
  aa9b44:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  aa9b48:	c4 e2 7d 18 05 83 b7 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff5cb783]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  aa9b4f:	5c ff 
  aa9b51:	31 d2                	xor    edx,edx
  aa9b53:	c4 e2 7d 18 0d 04 b9 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff5cb904]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  aa9b5a:	5c ff 
  aa9b5c:	c5 fc 28 15 7c d6 5c 	vmovaps ymm2,YMMWORD PTR [rip+0xffffffffff5cd67c]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  aa9b63:	ff 
  aa9b64:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  aa9b6b:	00 00 00 00 00 
  aa9b70:	c5 f8 10 5c 17 50    	vmovups xmm3,XMMWORD PTR [rdi+rdx*1+0x50]
  aa9b76:	c5 f8 10 64 17 40    	vmovups xmm4,XMMWORD PTR [rdi+rdx*1+0x40]
  aa9b7c:	c5 d8 c6 eb dd       	vshufps xmm5,xmm4,xmm3,0xdd
  aa9b81:	c5 f8 10 b4 17 90 00 	vmovups xmm6,XMMWORD PTR [rdi+rdx*1+0x90]
  aa9b88:	00 00 
  aa9b8a:	c5 f8 10 bc 17 80 00 	vmovups xmm7,XMMWORD PTR [rdi+rdx*1+0x80]
  aa9b91:	00 00 
  aa9b93:	c5 40 c6 c6 dd       	vshufps xmm8,xmm7,xmm6,0xdd
  aa9b98:	c4 41 54 5c c8       	vsubps ymm9,ymm5,ymm8
  aa9b9d:	c5 34 59 c8          	vmulps ymm9,ymm9,ymm0
  aa9ba1:	c5 d8 c6 e3 88       	vshufps xmm4,xmm4,xmm3,0x88
  aa9ba6:	c5 c0 c6 f6 88       	vshufps xmm6,xmm7,xmm6,0x88
  aa9bab:	c5 dc 58 fe          	vaddps ymm7,ymm4,ymm6
  aa9baf:	c5 78 10 14 17       	vmovups xmm10,XMMWORD PTR [rdi+rdx*1]
  aa9bb4:	c5 78 10 5c 17 10    	vmovups xmm11,XMMWORD PTR [rdi+rdx*1+0x10]
  aa9bba:	c5 78 10 64 17 20    	vmovups xmm12,XMMWORD PTR [rdi+rdx*1+0x20]
  aa9bc0:	c5 78 10 6c 17 30    	vmovups xmm13,XMMWORD PTR [rdi+rdx*1+0x30]
  aa9bc6:	c4 41 28 c6 f3 88    	vshufps xmm14,xmm10,xmm11,0x88
  aa9bcc:	c5 7c 28 f9          	vmovaps ymm15,ymm1
  aa9bd0:	c4 42 45 ac fe       	vfnmadd213ps ymm15,ymm7,ymm14
  aa9bd5:	c4 c1 34 58 df       	vaddps ymm3,ymm9,ymm15
  aa9bda:	62 e1 7c 08 10 44 17 	vmovups xmm16,XMMWORD PTR [rdi+rdx*1+0xb0]
  aa9be1:	0b 
  aa9be2:	62 e1 7c 08 10 4c 17 	vmovups xmm17,XMMWORD PTR [rdi+rdx*1+0xa0]
  aa9be9:	0a 
  aa9bea:	62 a1 74 00 c6 d0 dd 	vshufps xmm18,xmm17,xmm16,0xdd
  aa9bf1:	62 c1 1c 08 c6 dd dd 	vshufps xmm19,xmm12,xmm13,0xdd
  aa9bf8:	62 a1 6c 20 5c e3    	vsubps ymm20,ymm18,ymm19
  aa9bfe:	62 e1 5c 20 59 e0    	vmulps ymm20,ymm20,ymm0
  aa9c04:	62 a1 74 00 c6 c0 88 	vshufps xmm16,xmm17,xmm16,0x88
  aa9c0b:	c4 41 18 c6 e5 88    	vshufps xmm12,xmm12,xmm13,0x88
  aa9c11:	62 51 7c 20 58 ec    	vaddps ymm13,ymm16,ymm12
  aa9c17:	62 e1 7c 08 10 4c 17 	vmovups xmm17,XMMWORD PTR [rdi+rdx*1+0x70]
  aa9c1e:	07 
  aa9c1f:	62 e1 7c 08 10 6c 17 	vmovups xmm21,XMMWORD PTR [rdi+rdx*1+0x60]
  aa9c26:	06 
  aa9c27:	62 a1 54 00 c6 f1 88 	vshufps xmm22,xmm21,xmm17,0x88
  aa9c2e:	62 e1 7c 28 28 f9    	vmovaps ymm23,ymm1
  aa9c34:	62 a2 15 28 ac fe    	vfnmadd213ps ymm23,ymm13,ymm22
  aa9c3a:	62 21 5c 20 58 c7    	vaddps ymm24,ymm20,ymm23
  aa9c40:	c5 bc 58 ed          	vaddps ymm5,ymm8,ymm5
  aa9c44:	c4 41 28 c6 c3 dd    	vshufps xmm8,xmm10,xmm11,0xdd
  aa9c4a:	c5 7c 28 d1          	vmovaps ymm10,ymm1
  aa9c4e:	c4 42 55 ac d0       	vfnmadd213ps ymm10,ymm5,ymm8
  aa9c53:	c5 dc 5c e6          	vsubps ymm4,ymm4,ymm6
  aa9c57:	c5 dc 59 e0          	vmulps ymm4,ymm4,ymm0
  aa9c5b:	c5 ac 5c f4          	vsubps ymm6,ymm10,ymm4
  aa9c5f:	62 31 6c 20 58 db    	vaddps ymm11,ymm18,ymm19
  aa9c65:	62 a1 54 00 c6 c9 dd 	vshufps xmm17,xmm21,xmm17,0xdd
  aa9c6c:	62 e1 7c 28 28 d1    	vmovaps ymm18,ymm1
  aa9c72:	62 a2 25 28 ac d1    	vfnmadd213ps ymm18,ymm11,ymm17
  aa9c78:	62 51 7c 20 5c e4    	vsubps ymm12,ymm16,ymm12
  aa9c7e:	c5 1c 59 e0          	vmulps ymm12,ymm12,ymm0
  aa9c82:	62 c1 6c 20 5c c4    	vsubps ymm16,ymm18,ymm12
  aa9c88:	c4 41 04 5c c9       	vsubps ymm9,ymm15,ymm9
  aa9c8d:	62 31 44 20 5c fc    	vsubps ymm15,ymm23,ymm20
  aa9c93:	c5 ac 58 e4          	vaddps ymm4,ymm10,ymm4
  aa9c97:	62 51 6c 20 58 d4    	vaddps ymm10,ymm18,ymm12
  aa9c9d:	c5 8c 58 ff          	vaddps ymm7,ymm14,ymm7
  aa9ca1:	62 51 4c 20 58 e5    	vaddps ymm12,ymm22,ymm13
  aa9ca7:	c5 bc 58 ed          	vaddps ymm5,ymm8,ymm5
  aa9cab:	62 51 74 20 58 c3    	vaddps ymm8,ymm17,ymm11
  aa9cb1:	c4 41 34 5c df       	vsubps ymm11,ymm9,ymm15
  aa9cb6:	c4 41 5c 5c ea       	vsubps ymm13,ymm4,ymm10
  aa9cbb:	c5 1c 58 f7          	vaddps ymm14,ymm12,ymm7
  aa9cbf:	62 c1 54 28 58 c8    	vaddps ymm17,ymm5,ymm8
  aa9cc5:	c5 a8 58 e4          	vaddps xmm4,xmm10,xmm4
  aa9cc9:	62 f3 75 20 18 e4 01 	vinsertf32x4 ymm4,ymm17,xmm4,0x1
  aa9cd0:	62 31 4c 08 5c d0    	vsubps xmm10,xmm6,xmm16
  aa9cd6:	c4 43 15 18 d2 01    	vinsertf128 ymm10,ymm13,xmm10,0x1
  aa9cdc:	62 b1 4c 08 58 f0    	vaddps xmm6,xmm6,xmm16
  aa9ce2:	c5 5d 14 ee          	vunpcklpd ymm13,ymm4,ymm6
  aa9ce6:	c4 c1 50 5c e8       	vsubps xmm5,xmm5,xmm8
  aa9ceb:	c5 2d 14 c5          	vunpcklpd ymm8,ymm10,ymm5
  aa9cef:	62 c1 14 28 c6 c0 88 	vshufps ymm16,ymm13,ymm8,0x88
  aa9cf6:	62 a1 7c 20 c6 c0 d8 	vshufps ymm16,ymm16,ymm16,0xd8
  aa9cfd:	c4 41 14 c6 c0 dd    	vshufps ymm8,ymm13,ymm8,0xdd
  aa9d03:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  aa9d09:	c5 dd 15 e6          	vunpckhpd ymm4,ymm4,ymm6
  aa9d0d:	c5 ad 15 ed          	vunpckhpd ymm5,ymm10,ymm5
  aa9d11:	c5 dc c6 f5 88       	vshufps ymm6,ymm4,ymm5,0x88
  aa9d16:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  aa9d1b:	c5 dc c6 e5 dd       	vshufps ymm4,ymm4,ymm5,0xdd
  aa9d20:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  aa9d25:	c4 c1 30 58 ef       	vaddps xmm5,xmm9,xmm15
  aa9d2a:	c4 e3 0d 18 ed 01    	vinsertf128 ymm5,ymm14,xmm5,0x1
  aa9d30:	62 11 64 08 5c c8    	vsubps xmm9,xmm3,xmm24
  aa9d36:	c4 43 25 18 c9 01    	vinsertf128 ymm9,ymm11,xmm9,0x1
  aa9d3c:	62 91 64 08 58 d8    	vaddps xmm3,xmm3,xmm24
  aa9d42:	c5 55 14 d3          	vunpcklpd ymm10,ymm5,ymm3
  aa9d46:	c4 c1 40 5c fc       	vsubps xmm7,xmm7,xmm12
  aa9d4b:	c5 35 14 df          	vunpcklpd ymm11,ymm9,ymm7
  aa9d4f:	c4 41 2c c6 e3 88    	vshufps ymm12,ymm10,ymm11,0x88
  aa9d55:	c4 41 1c c6 e4 d8    	vshufps ymm12,ymm12,ymm12,0xd8
  aa9d5b:	c4 41 2c c6 d3 dd    	vshufps ymm10,ymm10,ymm11,0xdd
  aa9d61:	c4 41 2c c6 d2 d8    	vshufps ymm10,ymm10,ymm10,0xd8
  aa9d67:	c5 d5 15 db          	vunpckhpd ymm3,ymm5,ymm3
  aa9d6b:	c5 b5 15 ef          	vunpckhpd ymm5,ymm9,ymm7
  aa9d6f:	c5 e4 c6 fd 88       	vshufps ymm7,ymm3,ymm5,0x88
  aa9d74:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  aa9d79:	c5 e4 c6 dd dd       	vshufps ymm3,ymm3,ymm5,0xdd
  aa9d7e:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  aa9d83:	c5 fc 10 69 40       	vmovups ymm5,YMMWORD PTR [rcx+0x40]
  aa9d88:	c5 7c 10 49 60       	vmovups ymm9,YMMWORD PTR [rcx+0x60]
  aa9d8d:	c5 7c 10 99 80 00 00 	vmovups ymm11,YMMWORD PTR [rcx+0x80]
  aa9d94:	00 
  aa9d95:	c5 7c 10 a9 a0 00 00 	vmovups ymm13,YMMWORD PTR [rcx+0xa0]
  aa9d9c:	00 
  aa9d9d:	c5 7c 10 b1 c0 00 00 	vmovups ymm14,YMMWORD PTR [rcx+0xc0]
  aa9da4:	00 
  aa9da5:	c5 7c 10 b9 e0 00 00 	vmovups ymm15,YMMWORD PTR [rcx+0xe0]
  aa9dac:	00 
  aa9dad:	62 c1 4c 28 59 cb    	vmulps ymm17,ymm6,ymm11
  aa9db3:	62 c2 45 28 bc cd    	vfnmadd231ps ymm17,ymm7,ymm13
  aa9db9:	62 a1 7c 20 58 d1    	vaddps ymm18,ymm16,ymm17
  aa9dbf:	62 e1 3c 28 59 dd    	vmulps ymm19,ymm8,ymm5
  aa9dc5:	62 c2 2d 28 bc d9    	vfnmadd231ps ymm19,ymm10,ymm9
  aa9dcb:	62 c1 5c 28 59 e6    	vmulps ymm20,ymm4,ymm14
  aa9dd1:	62 c2 65 28 bc e7    	vfnmadd231ps ymm20,ymm3,ymm15
  aa9dd7:	62 a1 64 20 58 ec    	vaddps ymm21,ymm19,ymm20
  aa9ddd:	c5 a4 59 ff          	vmulps ymm7,ymm11,ymm7
  aa9de1:	c4 c2 4d b8 fd       	vfmadd231ps ymm7,ymm6,ymm13
  aa9de6:	c5 9c 58 f7          	vaddps ymm6,ymm12,ymm7
  aa9dea:	c5 ac 59 ed          	vmulps ymm5,ymm10,ymm5
  aa9dee:	c4 c2 3d b8 e9       	vfmadd231ps ymm5,ymm8,ymm9
  aa9df3:	c5 8c 59 db          	vmulps ymm3,ymm14,ymm3
  aa9df7:	c4 c2 5d b8 df       	vfmadd231ps ymm3,ymm4,ymm15
  aa9dfc:	c5 d4 58 e3          	vaddps ymm4,ymm5,ymm3
  aa9e00:	62 31 7c 20 5c c1    	vsubps ymm8,ymm16,ymm17
  aa9e06:	c5 d4 5c db          	vsubps ymm3,ymm5,ymm3
  aa9e0a:	c5 bc 58 eb          	vaddps ymm5,ymm8,ymm3
  aa9e0e:	c5 9c 5c ff          	vsubps ymm7,ymm12,ymm7
  aa9e12:	62 31 5c 20 5c cb    	vsubps ymm9,ymm20,ymm19
  aa9e18:	c5 34 58 d7          	vaddps ymm10,ymm9,ymm7
  aa9e1c:	62 31 6c 20 5c dd    	vsubps ymm11,ymm18,ymm21
  aa9e22:	c5 4c 5c e4          	vsubps ymm12,ymm6,ymm4
  aa9e26:	c5 bc 5c db          	vsubps ymm3,ymm8,ymm3
  aa9e2a:	c4 c1 44 5c f9       	vsubps ymm7,ymm7,ymm9
  aa9e2f:	c5 cc 58 e4          	vaddps ymm4,ymm6,ymm4
  aa9e33:	62 b1 6c 20 58 f5    	vaddps ymm6,ymm18,ymm21
  aa9e39:	c4 c3 7d 19 e0 01    	vextractf128 xmm8,ymm4,0x1
  aa9e3f:	62 f2 6d 28 7f e6    	vpermt2ps ymm4,ymm2,ymm6
  aa9e45:	c5 fc 11 24 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm4
  aa9e4a:	c4 e3 7d 19 f4 01    	vextractf128 xmm4,ymm6,0x1
  aa9e50:	c5 b8 14 e4          	vunpcklps xmm4,xmm8,xmm4
  aa9e54:	c5 f8 11 64 16 20    	vmovups XMMWORD PTR [rsi+rdx*1+0x20],xmm4
  aa9e5a:	c4 63 7d 19 d4 01    	vextractf128 xmm4,ymm10,0x1
  aa9e60:	62 72 6d 28 7f d5    	vpermt2ps ymm10,ymm2,ymm5
  aa9e66:	c5 7c 11 54 16 30    	vmovups YMMWORD PTR [rsi+rdx*1+0x30],ymm10
  aa9e6c:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  aa9e72:	c5 d8 14 e5          	vunpcklps xmm4,xmm4,xmm5
  aa9e76:	c5 f8 11 64 16 50    	vmovups XMMWORD PTR [rsi+rdx*1+0x50],xmm4
  aa9e7c:	c4 63 7d 19 e4 01    	vextractf128 xmm4,ymm12,0x1
  aa9e82:	62 52 6d 28 7f e3    	vpermt2ps ymm12,ymm2,ymm11
  aa9e88:	c5 7c 11 64 16 60    	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm12
  aa9e8e:	c4 63 7d 19 dd 01    	vextractf128 xmm5,ymm11,0x1
  aa9e94:	c5 d8 14 e5          	vunpcklps xmm4,xmm4,xmm5
  aa9e98:	c5 f8 11 a4 16 80 00 	vmovups XMMWORD PTR [rsi+rdx*1+0x80],xmm4
  aa9e9f:	00 00 
  aa9ea1:	c4 e3 7d 19 fc 01    	vextractf128 xmm4,ymm7,0x1
  aa9ea7:	62 f2 6d 28 7f fb    	vpermt2ps ymm7,ymm2,ymm3
  aa9ead:	c5 fc 11 bc 16 90 00 	vmovups YMMWORD PTR [rsi+rdx*1+0x90],ymm7
  aa9eb4:	00 00 
  aa9eb6:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  aa9ebc:	c5 d8 14 db          	vunpcklps xmm3,xmm4,xmm3
  aa9ec0:	c5 f8 11 9c 16 b0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xb0],xmm3
  aa9ec7:	00 00 
  aa9ec9:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  aa9ed0:	48 39 d0             	cmp    rax,rdx
  aa9ed3:	0f 85 97 fc ff ff    	jne    aa9b70 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x30>
  aa9ed9:	c5 f8 77             	vzeroupper
  aa9edc:	c3                   	ret
