
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a2da40 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a2da40:	55                   	push   rbp
  a2da41:	48 89 e5             	mov    rbp,rsp
  a2da44:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a2da48:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  a2da4f:	62 f1 7c 48 28 05 27 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff699527]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a2da56:	95 69 ff 
  a2da59:	62 f1 7c 48 28 0d 9d 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff69949d]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a2da60:	94 69 ff 
  a2da63:	62 f1 7c 48 28 15 d3 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff6994d3]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a2da6a:	94 69 ff 
  a2da6d:	62 f1 7c 48 28 1d 89 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff699389]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a2da74:	93 69 ff 
  a2da77:	62 f1 7c 48 28 25 bf 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff6993bf]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a2da7e:	93 69 ff 
  a2da81:	48 c1 e2 04          	shl    rdx,0x4
  a2da85:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  a2da89:	31 d2                	xor    edx,edx
  a2da8b:	4c 8d 44 24 40       	lea    r8,[rsp+0x40]
  a2da90:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  a2da95:	c5 c8 57 f6          	vxorps xmm6,xmm6,xmm6
  a2da99:	62 f2 7d 48 18 3d bd 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff6479bd]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a2daa0:	79 64 ff 
  a2daa3:	62 72 7d 48 18 05 27 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff647827]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a2daaa:	78 64 ff 
  a2daad:	62 61 7c 48 28 15 09 	vmovaps zmm26,ZMMWORD PTR [rip+0xffffffffff662e09]        # 908c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1dd70>
  a2dab4:	2e 66 ff 
  a2dab7:	c4 41 28 57 d2       	vxorps xmm10,xmm10,xmm10
  a2dabc:	62 52 7d 48 7f d2    	vpermt2ps zmm10,zmm0,zmm10
  a2dac2:	62 51 7c 48 28 da    	vmovaps zmm11,zmm10
  a2dac8:	62 52 75 48 7f da    	vpermt2ps zmm11,zmm1,zmm10
  a2dace:	62 41 7c 48 28 da    	vmovaps zmm27,zmm10
  a2dad4:	62 42 6d 48 7f da    	vpermt2ps zmm27,zmm2,zmm10
  a2dada:	c5 7c 28 2d de a7 64 	vmovaps ymm13,YMMWORD PTR [rip+0xffffffffff64a7de]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  a2dae1:	ff 
  a2dae2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  a2dae9:	1f 84 00 00 00 00 00 
  a2daf0:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  a2daf5:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  a2dafa:	c5 78 10 74 17 20    	vmovups xmm14,XMMWORD PTR [rdi+rdx*1+0x20]
  a2db00:	c4 63 09 21 74 17 24 	vinsertps xmm14,xmm14,DWORD PTR [rdi+rdx*1+0x24],0x10
  a2db07:	10 
  a2db08:	c4 62 79 18 7c 17 28 	vbroadcastss xmm15,DWORD PTR [rdi+rdx*1+0x28]
  a2db0f:	62 e1 7c 08 10 44 17 	vmovups xmm16,XMMWORD PTR [rdi+rdx*1+0x50]
  a2db16:	05 
  a2db17:	c4 43 01 0c f6 03    	vblendps xmm14,xmm15,xmm14,0x3
  a2db1d:	62 73 7d 00 21 7c 17 	vinsertps xmm15,xmm16,DWORD PTR [rdi+rdx*1+0x54],0x10
  a2db24:	15 10 
  a2db26:	c4 63 09 21 74 17 2c 	vinsertps xmm14,xmm14,DWORD PTR [rdi+rdx*1+0x2c],0x30
  a2db2d:	30 
  a2db2e:	62 e1 7c 28 10 04 17 	vmovups ymm16,YMMWORD PTR [rdi+rdx*1]
  a2db35:	c4 e2 79 18 6c 17 58 	vbroadcastss xmm5,DWORD PTR [rdi+rdx*1+0x58]
  a2db3c:	62 53 7d 40 18 f6 02 	vinsertf32x4 zmm14,zmm16,xmm14,0x2
  a2db43:	c4 c3 51 0c ef 03    	vblendps xmm5,xmm5,xmm15,0x3
  a2db49:	c4 e3 51 21 6c 17 5c 	vinsertps xmm5,xmm5,DWORD PTR [rdi+rdx*1+0x5c],0x30
  a2db50:	30 
  a2db51:	62 51 7c 48 28 fe    	vmovaps zmm15,zmm14
  a2db57:	62 e1 7c 28 10 84 17 	vmovups ymm16,YMMWORD PTR [rdi+rdx*1+0x30]
  a2db5e:	30 00 00 00 
  a2db62:	62 f3 7d 40 18 ed 02 	vinsertf32x4 zmm5,zmm16,xmm5,0x2
  a2db69:	62 e1 7c 28 10 44 17 	vmovups ymm16,YMMWORD PTR [rdi+rdx*1+0x60]
  a2db70:	03 
  a2db71:	62 72 2d 40 7f f6    	vpermt2ps zmm14,zmm26,zmm6
  a2db77:	62 e1 7c 08 10 4c 17 	vmovups xmm17,XMMWORD PTR [rdi+rdx*1+0x80]
  a2db7e:	08 
  a2db7f:	62 73 75 00 21 4c 17 	vinsertps xmm9,xmm17,DWORD PTR [rdi+rdx*1+0x84],0x10
  a2db86:	21 10 
  a2db88:	62 e1 7c 48 28 cd    	vmovaps zmm17,zmm5
  a2db8e:	c4 62 79 18 a4 17 88 	vbroadcastss xmm12,DWORD PTR [rdi+rdx*1+0x88]
  a2db95:	00 00 00 
  a2db98:	c4 43 19 0c c9 03    	vblendps xmm9,xmm12,xmm9,0x3
  a2db9e:	62 f2 2d 40 7f ee    	vpermt2ps zmm5,zmm26,zmm6
  a2dba4:	c4 63 31 21 8c 17 8c 	vinsertps xmm9,xmm9,DWORD PTR [rdi+rdx*1+0x8c],0x30
  a2dbab:	00 00 00 30 
  a2dbaf:	62 53 7d 40 18 c9 02 	vinsertf32x4 zmm9,zmm16,xmm9,0x2
  a2dbb6:	62 e1 7c 48 28 05 c0 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff662cc0]        # 90880 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1dd30>
  a2dbbd:	2c 66 ff 
  a2dbc0:	62 e2 7d 40 7f ce    	vpermt2ps zmm17,zmm16,zmm6
  a2dbc6:	62 51 7c 48 28 e1    	vmovaps zmm12,zmm9
  a2dbcc:	62 72 7d 40 7f e6    	vpermt2ps zmm12,zmm16,zmm6
  a2dbd2:	62 72 2d 40 7f ce    	vpermt2ps zmm9,zmm26,zmm6
  a2dbd8:	62 72 7d 40 7f fe    	vpermt2ps zmm15,zmm16,zmm6
  a2dbde:	62 c1 74 40 58 c4    	vaddps zmm16,zmm17,zmm12
  a2dbe4:	62 c1 54 48 58 d9    	vaddps zmm19,zmm5,zmm9
  a2dbea:	62 a1 0c 48 58 d3    	vaddps zmm18,zmm14,zmm19
  a2dbf0:	62 a1 04 48 58 e0    	vaddps zmm20,zmm15,zmm16
  a2dbf6:	62 32 45 48 bc f8    	vfnmadd231ps zmm15,zmm7,zmm16
  a2dbfc:	62 d1 54 48 5c e9    	vsubps zmm5,zmm5,zmm9
  a2dc02:	62 d1 54 48 59 e8    	vmulps zmm5,zmm5,zmm8
  a2dc08:	62 71 04 48 58 cd    	vaddps zmm9,zmm15,zmm5
  a2dc0e:	62 32 45 48 bc f3    	vfnmadd231ps zmm14,zmm7,zmm19
  a2dc14:	62 51 74 40 5c e4    	vsubps zmm12,zmm17,zmm12
  a2dc1a:	62 51 1c 48 59 e0    	vmulps zmm12,zmm12,zmm8
  a2dc20:	62 c1 0c 48 5c dc    	vsubps zmm19,zmm14,zmm12
  a2dc26:	62 f1 04 48 5c ed    	vsubps zmm5,zmm15,zmm5
  a2dc2c:	62 51 1c 48 58 e6    	vaddps zmm12,zmm12,zmm14
  a2dc32:	62 e2 7d 48 7f e6    	vpermt2ps zmm20,zmm0,zmm6
  a2dc38:	62 72 7d 48 7f ce    	vpermt2ps zmm9,zmm0,zmm6
  a2dc3e:	62 31 7c 48 28 f4    	vmovaps zmm14,zmm20
  a2dc44:	62 52 75 48 7f f2    	vpermt2ps zmm14,zmm1,zmm10
  a2dc4a:	62 c2 6d 48 7f e2    	vpermt2ps zmm20,zmm2,zmm10
  a2dc50:	62 f2 7d 48 7f ee    	vpermt2ps zmm5,zmm0,zmm6
  a2dc56:	62 c1 7c 48 28 e9    	vmovaps zmm21,zmm9
  a2dc5c:	62 52 6d 48 7f ca    	vpermt2ps zmm9,zmm2,zmm10
  a2dc62:	62 e1 7c 48 28 cd    	vmovaps zmm17,zmm5
  a2dc68:	62 c2 75 48 7f ea    	vpermt2ps zmm21,zmm1,zmm10
  a2dc6e:	62 c2 75 48 7f ca    	vpermt2ps zmm17,zmm1,zmm10
  a2dc74:	62 d2 6d 48 7f ea    	vpermt2ps zmm5,zmm2,zmm10
  a2dc7a:	62 e1 dd 40 14 c5    	vunpcklpd zmm16,zmm20,zmm5
  a2dc80:	62 31 8d 48 14 f9    	vunpcklpd zmm15,zmm14,zmm17
  a2dc86:	62 a1 8d 48 15 c9    	vunpckhpd zmm17,zmm14,zmm17
  a2dc8c:	62 d1 d5 40 14 eb    	vunpcklpd zmm5,zmm21,zmm11
  a2dc92:	62 11 b5 48 14 cb    	vunpcklpd zmm9,zmm9,zmm27
  a2dc98:	62 c1 d5 40 15 e3    	vunpckhpd zmm20,zmm21,zmm11
  a2dc9e:	62 a1 7c 48 28 e8    	vmovaps zmm21,zmm16
  a2dca4:	62 e2 7d 48 7f d6    	vpermt2ps zmm18,zmm0,zmm6
  a2dcaa:	62 e2 7d 48 7f de    	vpermt2ps zmm19,zmm0,zmm6
  a2dcb0:	62 c2 5d 48 7f c1    	vpermt2ps zmm16,zmm4,zmm9
  a2dcb6:	62 72 7d 48 7f e6    	vpermt2ps zmm12,zmm0,zmm6
  a2dcbc:	62 21 7c 48 28 c2    	vmovaps zmm24,zmm18
  a2dcc2:	62 42 75 48 7f c2    	vpermt2ps zmm24,zmm1,zmm10
  a2dcc8:	62 51 7c 48 28 f7    	vmovaps zmm14,zmm15
  a2dcce:	62 c2 6d 48 7f d2    	vpermt2ps zmm18,zmm2,zmm10
  a2dcd4:	62 21 7c 48 28 e3    	vmovaps zmm28,zmm19
  a2dcda:	62 42 75 48 7f e2    	vpermt2ps zmm28,zmm1,zmm10
  a2dce0:	62 72 5d 48 7f fd    	vpermt2ps zmm15,zmm4,zmm5
  a2dce6:	62 c2 6d 48 7f da    	vpermt2ps zmm19,zmm2,zmm10
  a2dcec:	62 41 7c 48 28 ec    	vmovaps zmm29,zmm12
  a2dcf2:	62 42 75 48 7f ea    	vpermt2ps zmm29,zmm1,zmm10
  a2dcf8:	62 21 7c 48 28 f1    	vmovaps zmm30,zmm17
  a2dcfe:	62 52 6d 48 7f e2    	vpermt2ps zmm12,zmm2,zmm10
  a2dd04:	62 c1 ed 40 14 fc    	vunpcklpd zmm23,zmm18,zmm12
  a2dd0a:	62 81 bd 40 14 f5    	vunpcklpd zmm22,zmm24,zmm29
  a2dd10:	62 a2 5d 48 7f cc    	vpermt2ps zmm17,zmm4,zmm20
  a2dd16:	62 01 bd 40 15 c5    	vunpckhpd zmm24,zmm24,zmm29
  a2dd1c:	62 51 9d 40 14 e3    	vunpcklpd zmm12,zmm28,zmm11
  a2dd22:	62 41 9d 40 15 e3    	vunpckhpd zmm28,zmm28,zmm11
  a2dd28:	62 c2 65 48 7f e9    	vpermt2ps zmm21,zmm3,zmm9
  a2dd2e:	62 11 e5 40 14 cb    	vunpcklpd zmm9,zmm19,zmm27
  a2dd34:	62 a1 7c 48 28 d6    	vmovaps zmm18,zmm22
  a2dd3a:	62 01 7c 48 28 e8    	vmovaps zmm29,zmm24
  a2dd40:	62 72 65 48 7f f5    	vpermt2ps zmm14,zmm3,zmm5
  a2dd46:	62 02 5d 48 7f c4    	vpermt2ps zmm24,zmm4,zmm28
  a2dd4c:	62 b1 7c 48 28 ef    	vmovaps zmm5,zmm23
  a2dd52:	62 d2 65 48 7f e9    	vpermt2ps zmm5,zmm3,zmm9
  a2dd58:	62 22 65 48 7f f4    	vpermt2ps zmm30,zmm3,zmm20
  a2dd5e:	62 c2 5d 48 7f f9    	vpermt2ps zmm23,zmm4,zmm9
  a2dd64:	62 71 7c 48 10 49 02 	vmovups zmm9,ZMMWORD PTR [rcx+0x80]
  a2dd6b:	62 e1 7c 48 10 59 04 	vmovups zmm19,ZMMWORD PTR [rcx+0x100]
  a2dd72:	62 02 65 48 7f ec    	vpermt2ps zmm29,zmm3,zmm28
  a2dd78:	62 e1 7c 48 10 61 05 	vmovups zmm20,ZMMWORD PTR [rcx+0x140]
  a2dd7f:	62 21 0c 40 59 e3    	vmulps zmm28,zmm30,zmm19
  a2dd85:	62 a1 14 40 59 db    	vmulps zmm19,zmm29,zmm19
  a2dd8b:	62 22 15 40 bc e4    	vfnmadd231ps zmm28,zmm29,zmm20
  a2dd91:	62 61 7c 48 10 69 08 	vmovups zmm29,ZMMWORD PTR [rcx+0x200]
  a2dd98:	62 82 5d 40 b8 de    	vfmadd231ps zmm19,zmm20,zmm30
  a2dd9e:	62 61 7c 48 10 71 09 	vmovups zmm30,ZMMWORD PTR [rcx+0x240]
  a2dda5:	62 01 54 40 59 fd    	vmulps zmm31,zmm21,zmm29
  a2ddab:	62 02 55 48 bc fe    	vfnmadd231ps zmm31,zmm5,zmm30
  a2ddb1:	62 81 54 48 59 e5    	vmulps zmm20,zmm5,zmm29
  a2ddb7:	62 f1 7c 48 10 69 06 	vmovups zmm5,ZMMWORD PTR [rcx+0x180]
  a2ddbe:	62 c2 5d 48 7f f4    	vpermt2ps zmm22,zmm4,zmm12
  a2ddc4:	62 a2 0d 40 b8 e5    	vfmadd231ps zmm20,zmm30,zmm21
  a2ddca:	62 e1 7c 48 10 69 07 	vmovups zmm21,ZMMWORD PTR [rcx+0x1c0]
  a2ddd1:	62 61 7c 48 10 69 0a 	vmovups zmm29,ZMMWORD PTR [rcx+0x280]
  a2ddd8:	62 c2 65 48 7f d4    	vpermt2ps zmm18,zmm3,zmm12
  a2ddde:	62 71 74 40 59 e5    	vmulps zmm12,zmm17,zmm5
  a2dde4:	62 32 3d 40 bc e5    	vfnmadd231ps zmm12,zmm24,zmm21
  a2ddea:	62 f1 3c 40 59 ed    	vmulps zmm5,zmm24,zmm5
  a2ddf0:	62 61 7c 48 10 41 03 	vmovups zmm24,ZMMWORD PTR [rcx+0xc0]
  a2ddf7:	62 b2 55 40 b8 e9    	vfmadd231ps zmm5,zmm21,zmm17
  a2ddfd:	62 e1 7c 48 10 49 0b 	vmovups zmm17,ZMMWORD PTR [rcx+0x2c0]
  a2de04:	62 81 7c 40 59 ed    	vmulps zmm21,zmm16,zmm29
  a2de0a:	62 a2 45 40 bc e9    	vfnmadd231ps zmm21,zmm23,zmm17
  a2de10:	62 81 44 40 59 fd    	vmulps zmm23,zmm23,zmm29
  a2de16:	62 41 04 48 59 e9    	vmulps zmm29,zmm15,zmm9
  a2de1c:	62 a2 75 40 b8 f8    	vfmadd231ps zmm23,zmm17,zmm16
  a2de22:	62 01 1c 40 58 f7    	vaddps zmm30,zmm28,zmm31
  a2de28:	62 02 4d 40 bc e8    	vfnmadd231ps zmm29,zmm22,zmm24
  a2de2e:	62 01 54 40 58 cd    	vaddps zmm25,zmm21,zmm29
  a2de34:	62 51 4c 40 59 c9    	vmulps zmm9,zmm22,zmm9
  a2de3a:	62 a1 64 40 58 f4    	vaddps zmm22,zmm19,zmm20
  a2de40:	62 52 3d 40 b8 cf    	vfmadd231ps zmm9,zmm24,zmm15
  a2de46:	62 c1 44 40 58 c9    	vaddps zmm17,zmm23,zmm9
  a2de4c:	62 71 7c 48 28 ff    	vmovaps zmm15,zmm7
  a2de52:	62 01 1c 40 5c c7    	vsubps zmm24,zmm28,zmm31
  a2de58:	62 e1 7c 48 28 c7    	vmovaps zmm16,zmm7
  a2de5e:	62 81 54 40 5c ed    	vsubps zmm21,zmm21,zmm29
  a2de64:	62 61 7c 48 28 e7    	vmovaps zmm28,zmm7
  a2de6a:	62 c2 35 40 ac c4    	vfnmadd213ps zmm16,zmm25,zmm12
  a2de70:	62 62 75 40 ac e5    	vfnmadd213ps zmm28,zmm17,zmm5
  a2de76:	62 a1 54 28 58 c9    	vaddps ymm17,ymm5,ymm17
  a2de7c:	62 f1 7c 48 28 ef    	vmovaps zmm5,zmm7
  a2de82:	62 52 0d 40 ac fe    	vfnmadd213ps zmm15,zmm30,zmm14
  a2de88:	62 b2 4d 40 ac ea    	vfnmadd213ps zmm5,zmm22,zmm18
  a2de8e:	62 41 3c 40 59 c0    	vmulps zmm24,zmm24,zmm8
  a2de94:	62 c1 54 40 59 e8    	vmulps zmm21,zmm21,zmm8
  a2de9a:	62 a1 4c 20 58 d2    	vaddps ymm18,ymm22,ymm18
  a2dea0:	62 a1 6c 20 58 f1    	vaddps ymm22,ymm18,ymm17
  a2dea6:	62 11 1c 08 58 e1    	vaddps xmm12,xmm12,xmm25
  a2deac:	62 11 0c 08 58 f6    	vaddps xmm14,xmm14,xmm30
  a2deb2:	62 41 0c 08 58 cc    	vaddps xmm25,xmm14,xmm12
  a2deb8:	62 22 15 28 7f ce    	vpermt2ps ymm25,ymm13,ymm22
  a2debe:	62 61 7c 08 11 0c 16 	vmovups XMMWORD PTR [rsi+rdx*1],xmm25
  a2dec5:	62 a1 1c 20 5c f5    	vsubps ymm22,ymm28,ymm21
  a2decb:	62 03 7d 28 19 c9 01 	vextractf32x4 xmm25,ymm25,0x1
  a2ded2:	62 01 54 28 5c e8    	vsubps ymm29,ymm5,ymm24
  a2ded8:	62 51 44 00 5c c9    	vsubps xmm9,xmm23,xmm9
  a2dede:	c4 41 30 59 c8       	vmulps xmm9,xmm9,xmm8
  a2dee3:	62 61 7c 08 13 4c 16 	vmovlps QWORD PTR [rsi+rdx*1+0x10],xmm25
  a2deea:	02 
  a2deeb:	62 c1 7c 00 58 f9    	vaddps xmm23,xmm16,xmm9
  a2def1:	62 a1 64 00 5c dc    	vsubps xmm19,xmm19,xmm20
  a2def7:	62 c1 64 00 59 d8    	vmulps xmm19,xmm19,xmm8
  a2defd:	62 a1 14 20 5c e6    	vsubps ymm20,ymm29,ymm22
  a2df03:	62 21 04 08 58 cb    	vaddps xmm25,xmm15,xmm19
  a2df09:	62 a1 1c 20 58 ed    	vaddps ymm21,ymm28,ymm21
  a2df0f:	62 21 34 00 5c e7    	vsubps xmm28,xmm25,xmm23
  a2df15:	62 22 15 28 7f e4    	vpermt2ps ymm28,ymm13,ymm20
  a2df1b:	62 f1 3c 20 58 ed    	vaddps ymm5,ymm24,ymm5
  a2df21:	62 61 7c 08 11 a4 16 	vmovups XMMWORD PTR [rsi+rdx*1+0x18],xmm28
  a2df28:	18 00 00 00 
  a2df2c:	62 23 7d 28 19 e4 01 	vextractf32x4 xmm20,ymm28,0x1
  a2df33:	62 e1 7c 08 13 64 16 	vmovlps QWORD PTR [rsi+rdx*1+0x28],xmm20
  a2df3a:	05 
  a2df3b:	62 51 7c 00 5c c9    	vsubps xmm9,xmm16,xmm9
  a2df41:	62 a1 54 28 58 c5    	vaddps ymm16,ymm5,ymm21
  a2df47:	62 31 04 08 5c fb    	vsubps xmm15,xmm15,xmm19
  a2df4d:	62 c1 04 08 58 d9    	vaddps xmm19,xmm15,xmm9
  a2df53:	62 a2 15 28 7f d8    	vpermt2ps ymm19,ymm13,ymm16
  a2df59:	62 e1 7c 08 11 5c 16 	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm19
  a2df60:	03 
  a2df61:	62 a3 7d 28 19 d8 01 	vextractf32x4 xmm16,ymm19,0x1
  a2df68:	62 e1 7c 08 13 44 16 	vmovlps QWORD PTR [rsi+rdx*1+0x40],xmm16
  a2df6f:	08 
  a2df70:	62 a1 6c 20 5c c1    	vsubps ymm16,ymm18,ymm17
  a2df76:	c4 41 08 5c e4       	vsubps xmm12,xmm14,xmm12
  a2df7b:	62 32 15 28 7f e0    	vpermt2ps ymm12,ymm13,ymm16
  a2df81:	c4 43 7d 19 e6 01    	vextractf128 xmm14,ymm12,0x1
  a2df87:	c5 78 13 74 16 58    	vmovlps QWORD PTR [rsi+rdx*1+0x58],xmm14
  a2df8d:	62 31 14 20 58 f6    	vaddps ymm14,ymm29,ymm22
  a2df93:	62 a1 34 00 58 c7    	vaddps xmm16,xmm25,xmm23
  a2df99:	c5 78 11 64 16 48    	vmovups XMMWORD PTR [rsi+rdx*1+0x48],xmm12
  a2df9f:	62 c2 15 28 7f c6    	vpermt2ps ymm16,ymm13,ymm14
  a2dfa5:	62 e1 7c 08 11 44 16 	vmovups XMMWORD PTR [rsi+rdx*1+0x60],xmm16
  a2dfac:	06 
  a2dfad:	62 c3 7d 28 19 c4 01 	vextractf32x4 xmm12,ymm16,0x1
  a2dfb4:	c5 78 13 64 16 70    	vmovlps QWORD PTR [rsi+rdx*1+0x70],xmm12
  a2dfba:	62 b1 54 28 5c ed    	vsubps ymm5,ymm5,ymm21
  a2dfc0:	c4 41 00 5c c9       	vsubps xmm9,xmm15,xmm9
  a2dfc5:	62 72 15 28 7f cd    	vpermt2ps ymm9,ymm13,ymm5
  a2dfcb:	c5 78 11 4c 16 78    	vmovups XMMWORD PTR [rsi+rdx*1+0x78],xmm9
  a2dfd1:	c4 63 7d 19 cd 01    	vextractf128 xmm5,ymm9,0x1
  a2dfd7:	c5 f8 13 ac 16 88 00 	vmovlps QWORD PTR [rsi+rdx*1+0x88],xmm5
  a2dfde:	00 00 
  a2dfe0:	48 81 c2 90 00 00 00 	add    rdx,0x90
  a2dfe7:	48 39 d0             	cmp    rax,rdx
  a2dfea:	0f 85 00 fb ff ff    	jne    a2daf0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0xb0>
  a2dff0:	48 89 ec             	mov    rsp,rbp
  a2dff3:	5d                   	pop    rbp
  a2dff4:	c5 f8 77             	vzeroupper
  a2dff7:	c3                   	ret
