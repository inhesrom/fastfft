
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b1ec80 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  b1ec80:	48 c1 e2 04          	shl    rdx,0x4
  b1ec84:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  b1ec88:	31 d2                	xor    edx,edx
  b1ec8a:	62 e2 7d 28 18 2d 40 	vbroadcastss ymm21,DWORD PTR [rip+0xffffffffff556640]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  b1ec91:	66 55 ff 
  b1ec94:	62 62 7d 28 18 0d c2 	vbroadcastss ymm25,DWORD PTR [rip+0xffffffffff5567c2]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  b1ec9b:	67 55 ff 
  b1ec9e:	62 e1 7c 28 28 1d 38 	vmovaps ymm19,YMMWORD PTR [rip+0xffffffffff558538]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  b1eca5:	85 55 ff 
  b1eca8:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  b1ecac:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  b1ecb0:	c5 fb 10 64 17 40    	vmovsd xmm4,QWORD PTR [rdi+rdx*1+0x40]
  b1ecb6:	c4 e3 7d 18 e4 01    	vinsertf128 ymm4,ymm0,xmm4,0x1
  b1ecbc:	c4 e3 5d 0c e2 c0    	vblendps ymm4,ymm4,ymm2,0xc0
  b1ecc2:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  b1ecc8:	c5 f8 10 2c 17       	vmovups xmm5,XMMWORD PTR [rdi+rdx*1]
  b1eccd:	c5 f8 10 74 17 18    	vmovups xmm6,XMMWORD PTR [rdi+rdx*1+0x18]
  b1ecd3:	c5 f8 10 7c 17 30    	vmovups xmm7,XMMWORD PTR [rdi+rdx*1+0x30]
  b1ecd9:	c5 78 10 44 17 48    	vmovups xmm8,XMMWORD PTR [rdi+rdx*1+0x48]
  b1ecdf:	c5 40 c6 cc 88       	vshufps xmm9,xmm7,xmm4,0x88
  b1ece4:	c5 78 10 54 17 60    	vmovups xmm10,XMMWORD PTR [rdi+rdx*1+0x60]
  b1ecea:	c5 7b 10 5c 17 70    	vmovsd xmm11,QWORD PTR [rdi+rdx*1+0x70]
  b1ecf0:	c4 43 7d 18 db 01    	vinsertf128 ymm11,ymm0,xmm11,0x1
  b1ecf6:	c4 63 25 0c da c0    	vblendps ymm11,ymm11,ymm2,0xc0
  b1ecfc:	c4 43 7d 19 db 01    	vextractf128 xmm11,ymm11,0x1
  b1ed02:	c4 41 28 c6 e3 88    	vshufps xmm12,xmm10,xmm11,0x88
  b1ed08:	c4 41 34 5c ec       	vsubps ymm13,ymm9,ymm12
  b1ed0d:	62 31 14 28 59 ed    	vmulps ymm13,ymm13,ymm21
  b1ed13:	c5 c0 c6 fc dd       	vshufps xmm7,xmm7,xmm4,0xdd
  b1ed18:	c4 41 28 c6 d3 dd    	vshufps xmm10,xmm10,xmm11,0xdd
  b1ed1e:	c5 2c 58 df          	vaddps ymm11,ymm10,ymm7
  b1ed22:	c5 fb 10 64 17 10    	vmovsd xmm4,QWORD PTR [rdi+rdx*1+0x10]
  b1ed28:	c4 e3 7d 18 e4 01    	vinsertf128 ymm4,ymm0,xmm4,0x1
  b1ed2e:	c4 e3 5d 0c e2 c0    	vblendps ymm4,ymm4,ymm2,0xc0
  b1ed34:	c4 c3 7d 19 e6 01    	vextractf128 xmm14,ymm4,0x1
  b1ed3a:	c4 41 50 c6 fe dd    	vshufps xmm15,xmm5,xmm14,0xdd
  b1ed40:	62 81 7c 28 28 c1    	vmovaps ymm16,ymm25
  b1ed46:	62 c2 25 28 ac c7    	vfnmadd213ps ymm16,ymm11,ymm15
  b1ed4c:	62 b1 14 28 58 e0    	vaddps ymm4,ymm13,ymm16
  b1ed52:	62 e1 7c 08 10 8c 17 	vmovups xmm17,XMMWORD PTR [rdi+rdx*1+0x78]
  b1ed59:	78 00 00 00 
  b1ed5d:	62 e1 ff 08 10 54 17 	vmovsd xmm18,QWORD PTR [rdi+rdx*1+0x88]
  b1ed64:	11 
  b1ed65:	62 b3 7d 28 18 da 01 	vinsertf32x4 ymm3,ymm0,xmm18,0x1
  b1ed6c:	c4 e3 65 0c da c0    	vblendps ymm3,ymm3,ymm2,0xc0
  b1ed72:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  b1ed78:	62 e1 74 00 c6 d3 88 	vshufps xmm18,xmm17,xmm3,0x88
  b1ed7f:	62 e1 ff 08 10 64 17 	vmovsd xmm20,QWORD PTR [rdi+rdx*1+0x28]
  b1ed86:	05 
  b1ed87:	62 b3 7d 28 18 c4 01 	vinsertf32x4 ymm0,ymm0,xmm20,0x1
  b1ed8e:	c4 e3 7d 0c c2 c0    	vblendps ymm0,ymm0,ymm2,0xc0
  b1ed94:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  b1ed9a:	62 e1 4c 08 c6 e0 88 	vshufps xmm20,xmm6,xmm0,0x88
  b1eda1:	62 a1 6c 20 5c f4    	vsubps ymm22,ymm18,ymm20
  b1eda7:	62 a1 4c 20 59 f5    	vmulps ymm22,ymm22,ymm21
  b1edad:	62 f1 74 00 c6 db dd 	vshufps xmm3,xmm17,xmm3,0xdd
  b1edb4:	c5 c8 c6 c0 dd       	vshufps xmm0,xmm6,xmm0,0xdd
  b1edb9:	c5 e4 58 f0          	vaddps ymm6,ymm3,ymm0
  b1edbd:	62 e1 ff 08 10 4c 17 	vmovsd xmm17,QWORD PTR [rdi+rdx*1+0x58]
  b1edc4:	0b 
  b1edc5:	62 b3 7d 28 18 c9 01 	vinsertf32x4 ymm1,ymm0,xmm17,0x1
  b1edcc:	c4 e3 75 0c ca c0    	vblendps ymm1,ymm1,ymm2,0xc0
  b1edd2:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  b1edd8:	62 e1 3c 08 c6 c9 dd 	vshufps xmm17,xmm8,xmm1,0xdd
  b1eddf:	62 81 7c 28 28 f9    	vmovaps ymm23,ymm25
  b1ede5:	62 a2 4d 28 ac f9    	vfnmadd213ps ymm23,ymm6,ymm17
  b1edeb:	62 21 4c 20 58 c7    	vaddps ymm24,ymm22,ymm23
  b1edf1:	c4 41 34 58 cc       	vaddps ymm9,ymm9,ymm12
  b1edf6:	c4 c1 50 c6 ee 88    	vshufps xmm5,xmm5,xmm14,0x88
  b1edfc:	62 11 7c 28 28 e1    	vmovaps ymm12,ymm25
  b1ee02:	c4 62 35 ac e5       	vfnmadd213ps ymm12,ymm9,ymm5
  b1ee07:	c4 c1 44 5c fa       	vsubps ymm7,ymm7,ymm10
  b1ee0c:	62 b1 44 28 59 fd    	vmulps ymm7,ymm7,ymm21
  b1ee12:	c5 1c 5c d7          	vsubps ymm10,ymm12,ymm7
  b1ee16:	62 31 6c 20 58 f4    	vaddps ymm14,ymm18,ymm20
  b1ee1c:	c5 b8 c6 c9 88       	vshufps xmm1,xmm8,xmm1,0x88
  b1ee21:	62 11 7c 28 28 c1    	vmovaps ymm8,ymm25
  b1ee27:	c4 62 0d ac c1       	vfnmadd213ps ymm8,ymm14,ymm1
  b1ee2c:	c5 e4 5c c0          	vsubps ymm0,ymm3,ymm0
  b1ee30:	62 b1 7c 28 59 c5    	vmulps ymm0,ymm0,ymm21
  b1ee36:	c5 bc 5c d8          	vsubps ymm3,ymm8,ymm0
  b1ee3a:	62 51 7c 20 5c ed    	vsubps ymm13,ymm16,ymm13
  b1ee40:	62 a1 44 20 5c c6    	vsubps ymm16,ymm23,ymm22
  b1ee46:	c5 9c 58 ff          	vaddps ymm7,ymm12,ymm7
  b1ee4a:	c5 bc 58 c0          	vaddps ymm0,ymm8,ymm0
  b1ee4e:	c4 41 04 58 c3       	vaddps ymm8,ymm15,ymm11
  b1ee53:	62 f1 74 20 58 f6    	vaddps ymm6,ymm17,ymm6
  b1ee59:	c5 b4 58 ed          	vaddps ymm5,ymm9,ymm5
  b1ee5d:	c5 8c 58 c9          	vaddps ymm1,ymm14,ymm1
  b1ee61:	62 31 14 28 5c c8    	vsubps ymm9,ymm13,ymm16
  b1ee67:	c5 44 5c d8          	vsubps ymm11,ymm7,ymm0
  b1ee6b:	c5 3c 58 e6          	vaddps ymm12,ymm8,ymm6
  b1ee6f:	c5 54 58 f1          	vaddps ymm14,ymm5,ymm1
  b1ee73:	c5 c0 58 c0          	vaddps xmm0,xmm7,xmm0
  b1ee77:	c4 e3 0d 18 c0 01    	vinsertf128 ymm0,ymm14,xmm0,0x1
  b1ee7d:	c5 a8 5c fb          	vsubps xmm7,xmm10,xmm3
  b1ee81:	c4 e3 25 18 ff 01    	vinsertf128 ymm7,ymm11,xmm7,0x1
  b1ee87:	c5 a8 58 db          	vaddps xmm3,xmm10,xmm3
  b1ee8b:	c5 7d 14 d3          	vunpcklpd ymm10,ymm0,ymm3
  b1ee8f:	c5 d0 5c c9          	vsubps xmm1,xmm5,xmm1
  b1ee93:	c5 c5 14 e9          	vunpcklpd ymm5,ymm7,ymm1
  b1ee97:	c5 2c c6 dd 88       	vshufps ymm11,ymm10,ymm5,0x88
  b1ee9c:	c4 41 24 c6 db d8    	vshufps ymm11,ymm11,ymm11,0xd8
  b1eea2:	c5 ac c6 ed dd       	vshufps ymm5,ymm10,ymm5,0xdd
  b1eea7:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  b1eeac:	c5 fd 15 c3          	vunpckhpd ymm0,ymm0,ymm3
  b1eeb0:	c5 c5 15 c9          	vunpckhpd ymm1,ymm7,ymm1
  b1eeb4:	c5 fc c6 c1 88       	vshufps ymm0,ymm0,ymm1,0x88
  b1eeb9:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  b1eebe:	62 b1 14 08 58 c8    	vaddps xmm1,xmm13,xmm16
  b1eec4:	c4 e3 1d 18 c9 01    	vinsertf128 ymm1,ymm12,xmm1,0x1
  b1eeca:	62 91 5c 08 5c d8    	vsubps xmm3,xmm4,xmm24
  b1eed0:	c4 e3 35 18 db 01    	vinsertf128 ymm3,ymm9,xmm3,0x1
  b1eed6:	62 91 5c 08 58 e0    	vaddps xmm4,xmm4,xmm24
  b1eedc:	c5 f5 14 fc          	vunpcklpd ymm7,ymm1,ymm4
  b1eee0:	c5 b8 5c f6          	vsubps xmm6,xmm8,xmm6
  b1eee4:	c5 65 14 c6          	vunpcklpd ymm8,ymm3,ymm6
  b1eee8:	c4 41 44 c6 c8 88    	vshufps ymm9,ymm7,ymm8,0x88
  b1eeee:	c4 41 34 c6 c9 d8    	vshufps ymm9,ymm9,ymm9,0xd8
  b1eef4:	c4 c1 44 c6 f8 dd    	vshufps ymm7,ymm7,ymm8,0xdd
  b1eefa:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  b1eeff:	c5 f5 15 cc          	vunpckhpd ymm1,ymm1,ymm4
  b1ef03:	c5 e5 15 de          	vunpckhpd ymm3,ymm3,ymm6
  b1ef07:	c5 f4 c6 cb 88       	vshufps ymm1,ymm1,ymm3,0x88
  b1ef0c:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  b1ef11:	c5 fc 10 59 40       	vmovups ymm3,YMMWORD PTR [rcx+0x40]
  b1ef16:	c5 fc 10 61 60       	vmovups ymm4,YMMWORD PTR [rcx+0x60]
  b1ef1b:	c5 fc 10 b1 80 00 00 	vmovups ymm6,YMMWORD PTR [rcx+0x80]
  b1ef22:	00 
  b1ef23:	c5 7c 10 81 a0 00 00 	vmovups ymm8,YMMWORD PTR [rcx+0xa0]
  b1ef2a:	00 
  b1ef2b:	c5 54 59 d3          	vmulps ymm10,ymm5,ymm3
  b1ef2f:	c4 62 45 bc d4       	vfnmadd231ps ymm10,ymm7,ymm4
  b1ef34:	c5 7c 59 e6          	vmulps ymm12,ymm0,ymm6
  b1ef38:	c4 42 75 bc e0       	vfnmadd231ps ymm12,ymm1,ymm8
  b1ef3d:	c4 41 2c 58 ec       	vaddps ymm13,ymm10,ymm12
  b1ef42:	c5 c4 59 db          	vmulps ymm3,ymm7,ymm3
  b1ef46:	c4 e2 55 b8 dc       	vfmadd231ps ymm3,ymm5,ymm4
  b1ef4b:	c5 f4 59 ce          	vmulps ymm1,ymm1,ymm6
  b1ef4f:	c4 c2 7d b8 c8       	vfmadd231ps ymm1,ymm0,ymm8
  b1ef54:	c5 e4 58 c1          	vaddps ymm0,ymm3,ymm1
  b1ef58:	62 91 7c 28 28 e1    	vmovaps ymm4,ymm25
  b1ef5e:	c4 c2 15 ac e3       	vfnmadd213ps ymm4,ymm13,ymm11
  b1ef63:	c5 e4 5c c9          	vsubps ymm1,ymm3,ymm1
  b1ef67:	62 b1 74 28 59 cd    	vmulps ymm1,ymm1,ymm21
  b1ef6d:	c5 dc 58 d9          	vaddps ymm3,ymm4,ymm1
  b1ef71:	62 91 7c 28 28 e9    	vmovaps ymm5,ymm25
  b1ef77:	c4 c2 7d ac e9       	vfnmadd213ps ymm5,ymm0,ymm9
  b1ef7c:	c4 c1 2c 5c f4       	vsubps ymm6,ymm10,ymm12
  b1ef81:	62 b1 4c 28 59 f5    	vmulps ymm6,ymm6,ymm21
  b1ef87:	c5 d4 5c fe          	vsubps ymm7,ymm5,ymm6
  b1ef8b:	c5 dc 5c c9          	vsubps ymm1,ymm4,ymm1
  b1ef8f:	c5 d4 58 e6          	vaddps ymm4,ymm5,ymm6
  b1ef93:	c4 c1 24 58 ed       	vaddps ymm5,ymm11,ymm13
  b1ef98:	c5 b4 58 c0          	vaddps ymm0,ymm9,ymm0
  b1ef9c:	c4 e3 7d 19 ee 01    	vextractf128 xmm6,ymm5,0x1
  b1efa2:	62 f2 65 20 7f e8    	vpermt2ps ymm5,ymm19,ymm0
  b1efa8:	c5 fc 11 2c 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm5
  b1efad:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  b1efb3:	c5 c8 14 c0          	vunpcklps xmm0,xmm6,xmm0
  b1efb7:	c5 f8 11 44 16 20    	vmovups XMMWORD PTR [rsi+rdx*1+0x20],xmm0
  b1efbd:	c4 e3 7d 19 d8 01    	vextractf128 xmm0,ymm3,0x1
  b1efc3:	62 f2 65 20 7f df    	vpermt2ps ymm3,ymm19,ymm7
  b1efc9:	c5 fc 11 5c 16 30    	vmovups YMMWORD PTR [rsi+rdx*1+0x30],ymm3
  b1efcf:	c4 e3 7d 19 fb 01    	vextractf128 xmm3,ymm7,0x1
  b1efd5:	c5 f8 14 c3          	vunpcklps xmm0,xmm0,xmm3
  b1efd9:	c5 f8 11 44 16 50    	vmovups XMMWORD PTR [rsi+rdx*1+0x50],xmm0
  b1efdf:	c4 e3 7d 19 c8 01    	vextractf128 xmm0,ymm1,0x1
  b1efe5:	62 f2 65 20 7f cc    	vpermt2ps ymm1,ymm19,ymm4
  b1efeb:	c5 fc 11 4c 16 60    	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm1
  b1eff1:	c4 e3 7d 19 e1 01    	vextractf128 xmm1,ymm4,0x1
  b1eff7:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  b1effb:	c5 f8 11 84 16 80 00 	vmovups XMMWORD PTR [rsi+rdx*1+0x80],xmm0
  b1f002:	00 00 
  b1f004:	48 81 c2 90 00 00 00 	add    rdx,0x90
  b1f00b:	48 39 d0             	cmp    rax,rdx
  b1f00e:	0f 85 9c fc ff ff    	jne    b1ecb0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x30>
  b1f014:	c5 f8 77             	vzeroupper
  b1f017:	c3                   	ret
