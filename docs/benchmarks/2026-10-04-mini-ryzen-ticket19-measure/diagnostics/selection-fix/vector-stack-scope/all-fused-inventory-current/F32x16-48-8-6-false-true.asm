
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a3dc00 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a3dc00:	55                   	push   rbp
  a3dc01:	48 89 e5             	mov    rbp,rsp
  a3dc04:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a3dc08:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  a3dc0f:	62 f1 7c 48 28 05 67 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff689367]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a3dc16:	93 68 ff 
  a3dc19:	62 f1 7c 48 28 0d dd 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff6892dd]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a3dc20:	92 68 ff 
  a3dc23:	62 f1 7c 48 28 15 13 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff689313]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a3dc2a:	93 68 ff 
  a3dc2d:	62 61 7c 48 28 1d c9 	vmovaps zmm27,ZMMWORD PTR [rip+0xffffffffff6891c9]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a3dc34:	91 68 ff 
  a3dc37:	62 61 7c 48 28 25 ff 	vmovaps zmm28,ZMMWORD PTR [rip+0xffffffffff6891ff]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a3dc3e:	91 68 ff 
  a3dc41:	48 c1 e2 07          	shl    rdx,0x7
  a3dc45:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  a3dc49:	31 d2                	xor    edx,edx
  a3dc4b:	4c 8d 44 24 40       	lea    r8,[rsp+0x40]
  a3dc50:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  a3dc55:	62 f1 7c 48 28 2d a1 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff653ca1]        # 91900 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1edb0>
  a3dc5c:	3c 65 ff 
  a3dc5f:	c5 c8 57 f6          	vxorps xmm6,xmm6,xmm6
  a3dc63:	62 62 7d 48 18 05 2f 	vbroadcastss zmm24,DWORD PTR [rip+0xffffffffff63772f]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a3dc6a:	77 63 ff 
  a3dc6d:	62 62 7d 48 18 0d e9 	vbroadcastss zmm25,DWORD PTR [rip+0xffffffffff6377e9]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a3dc74:	77 63 ff 
  a3dc77:	62 71 7c 48 28 0d bf 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff653cbf]        # 91940 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1edf0>
  a3dc7e:	3c 65 ff 
  a3dc81:	62 62 7d 48 18 15 49 	vbroadcastss zmm26,DWORD PTR [rip+0xffffffffff637649]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a3dc88:	76 63 ff 
  a3dc8b:	62 61 7c 48 28 2d eb 	vmovaps zmm29,ZMMWORD PTR [rip+0xffffffffff653ceb]        # 91980 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1ee30>
  a3dc92:	3c 65 ff 
  a3dc95:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  a3dc9c:	00 00 00 00 
  a3dca0:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  a3dca5:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  a3dcaa:	c5 7c 10 24 17       	vmovups ymm12,YMMWORD PTR [rdi+rdx*1]
  a3dcaf:	c5 78 10 6c 17 20    	vmovups xmm13,XMMWORD PTR [rdi+rdx*1+0x20]
  a3dcb5:	c4 63 11 21 6c 17 24 	vinsertps xmm13,xmm13,DWORD PTR [rdi+rdx*1+0x24],0x10
  a3dcbc:	10 
  a3dcbd:	c4 62 79 18 74 17 28 	vbroadcastss xmm14,DWORD PTR [rdi+rdx*1+0x28]
  a3dcc4:	c5 78 10 7c 17 50    	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x50]
  a3dcca:	c4 63 01 21 7c 17 54 	vinsertps xmm15,xmm15,DWORD PTR [rdi+rdx*1+0x54],0x10
  a3dcd1:	10 
  a3dcd2:	c4 43 09 0c ed 03    	vblendps xmm13,xmm14,xmm13,0x3
  a3dcd8:	c4 62 79 18 74 17 58 	vbroadcastss xmm14,DWORD PTR [rdi+rdx*1+0x58]
  a3dcdf:	c4 63 11 21 6c 17 2c 	vinsertps xmm13,xmm13,DWORD PTR [rdi+rdx*1+0x2c],0x30
  a3dce6:	30 
  a3dce7:	62 e1 7c 28 10 84 17 	vmovups ymm16,YMMWORD PTR [rdi+rdx*1+0x30]
  a3dcee:	30 00 00 00 
  a3dcf2:	c4 43 09 0c f7 03    	vblendps xmm14,xmm14,xmm15,0x3
  a3dcf8:	c4 63 09 21 74 17 5c 	vinsertps xmm14,xmm14,DWORD PTR [rdi+rdx*1+0x5c],0x30
  a3dcff:	30 
  a3dd00:	c5 78 10 bc 17 80 00 	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x80]
  a3dd07:	00 00 
  a3dd09:	c4 63 01 21 bc 17 84 	vinsertps xmm15,xmm15,DWORD PTR [rdi+rdx*1+0x84],0x10
  a3dd10:	00 00 00 10 
  a3dd14:	62 53 1d 48 18 e5 02 	vinsertf32x4 zmm12,zmm12,xmm13,0x2
  a3dd1b:	62 e1 7c 28 10 4c 17 	vmovups ymm17,YMMWORD PTR [rdi+rdx*1+0x60]
  a3dd22:	03 
  a3dd23:	c4 e2 79 18 bc 17 88 	vbroadcastss xmm7,DWORD PTR [rdi+rdx*1+0x88]
  a3dd2a:	00 00 00 
  a3dd2d:	62 53 7d 40 18 ee 02 	vinsertf32x4 zmm13,zmm16,xmm14,0x2
  a3dd34:	c4 c3 41 0c ff 03    	vblendps xmm7,xmm7,xmm15,0x3
  a3dd3a:	c4 e3 41 21 bc 17 8c 	vinsertps xmm7,xmm7,DWORD PTR [rdi+rdx*1+0x8c],0x30
  a3dd41:	00 00 00 30 
  a3dd45:	62 73 75 40 18 f7 02 	vinsertf32x4 zmm14,zmm17,xmm7,0x2
  a3dd4c:	c5 f8 10 bc 17 b0 00 	vmovups xmm7,XMMWORD PTR [rdi+rdx*1+0xb0]
  a3dd53:	00 00 
  a3dd55:	c4 e3 41 21 bc 17 b4 	vinsertps xmm7,xmm7,DWORD PTR [rdi+rdx*1+0xb4],0x10
  a3dd5c:	00 00 00 10 
  a3dd60:	62 51 7c 48 28 fc    	vmovaps zmm15,zmm12
  a3dd66:	62 e1 7c 28 10 8c 17 	vmovups ymm17,YMMWORD PTR [rdi+rdx*1+0x90]
  a3dd6d:	90 00 00 00 
  a3dd71:	c4 62 79 18 84 17 b8 	vbroadcastss xmm8,DWORD PTR [rdi+rdx*1+0xb8]
  a3dd78:	00 00 00 
  a3dd7b:	62 72 35 48 7f e6    	vpermt2ps zmm12,zmm9,zmm6
  a3dd81:	c4 e3 39 0c ff 03    	vblendps xmm7,xmm8,xmm7,0x3
  a3dd87:	c4 e3 41 21 bc 17 bc 	vinsertps xmm7,xmm7,DWORD PTR [rdi+rdx*1+0xbc],0x30
  a3dd8e:	00 00 00 30 
  a3dd92:	62 c1 7c 48 28 c5    	vmovaps zmm16,zmm13
  a3dd98:	c5 78 10 84 17 e0 00 	vmovups xmm8,XMMWORD PTR [rdi+rdx*1+0xe0]
  a3dd9f:	00 00 
  a3dda1:	c4 63 39 21 84 17 e4 	vinsertps xmm8,xmm8,DWORD PTR [rdi+rdx*1+0xe4],0x10
  a3dda8:	00 00 00 10 
  a3ddac:	62 72 35 48 7f ee    	vpermt2ps zmm13,zmm9,zmm6
  a3ddb2:	62 e3 75 40 18 df 02 	vinsertf32x4 zmm19,zmm17,xmm7,0x2
  a3ddb9:	c4 e2 79 18 bc 17 e8 	vbroadcastss xmm7,DWORD PTR [rdi+rdx*1+0xe8]
  a3ddc0:	00 00 00 
  a3ddc3:	62 c1 7c 48 28 ce    	vmovaps zmm17,zmm14
  a3ddc9:	c4 c3 41 0c f8 03    	vblendps xmm7,xmm7,xmm8,0x3
  a3ddcf:	c4 e3 41 21 bc 17 ec 	vinsertps xmm7,xmm7,DWORD PTR [rdi+rdx*1+0xec],0x30
  a3ddd6:	00 00 00 30 
  a3ddda:	62 72 35 48 7f f6    	vpermt2ps zmm14,zmm9,zmm6
  a3dde0:	c5 7c 10 84 17 c0 00 	vmovups ymm8,YMMWORD PTR [rdi+rdx*1+0xc0]
  a3dde7:	00 00 
  a3dde9:	62 e3 3d 48 18 d7 02 	vinsertf32x4 zmm18,zmm8,xmm7,0x2
  a3ddf0:	c5 fc 10 bc 17 f0 00 	vmovups ymm7,YMMWORD PTR [rdi+rdx*1+0xf0]
  a3ddf7:	00 00 
  a3ddf9:	62 a1 7c 48 28 e3    	vmovaps zmm20,zmm19
  a3ddff:	c5 78 10 84 17 10 01 	vmovups xmm8,XMMWORD PTR [rdi+rdx*1+0x110]
  a3de06:	00 00 
  a3de08:	c4 63 39 21 84 17 14 	vinsertps xmm8,xmm8,DWORD PTR [rdi+rdx*1+0x114],0x10
  a3de0f:	01 00 00 10 
  a3de13:	62 e2 35 48 7f de    	vpermt2ps zmm19,zmm9,zmm6
  a3de19:	c4 62 79 18 94 17 18 	vbroadcastss xmm10,DWORD PTR [rdi+rdx*1+0x118]
  a3de20:	01 00 00 
  a3de23:	c4 43 29 0c c0 03    	vblendps xmm8,xmm10,xmm8,0x3
  a3de29:	62 a1 7c 48 28 ea    	vmovaps zmm21,zmm18
  a3de2f:	c4 63 39 21 84 17 1c 	vinsertps xmm8,xmm8,DWORD PTR [rdi+rdx*1+0x11c],0x30
  a3de36:	01 00 00 30 
  a3de3a:	62 d3 45 48 18 f8 02 	vinsertf32x4 zmm7,zmm7,xmm8,0x2
  a3de41:	62 e2 35 48 7f d6    	vpermt2ps zmm18,zmm9,zmm6
  a3de47:	c5 78 10 84 17 40 01 	vmovups xmm8,XMMWORD PTR [rdi+rdx*1+0x140]
  a3de4e:	00 00 
  a3de50:	c4 63 39 21 84 17 44 	vinsertps xmm8,xmm8,DWORD PTR [rdi+rdx*1+0x144],0x10
  a3de57:	01 00 00 10 
  a3de5b:	62 71 7c 48 28 d7    	vmovaps zmm10,zmm7
  a3de61:	62 f2 35 48 7f fe    	vpermt2ps zmm7,zmm9,zmm6
  a3de67:	c4 e2 79 18 9c 17 48 	vbroadcastss xmm3,DWORD PTR [rdi+rdx*1+0x148]
  a3de6e:	01 00 00 
  a3de71:	62 72 55 48 7f fe    	vpermt2ps zmm15,zmm5,zmm6
  a3de77:	c4 c3 61 0c d8 03    	vblendps xmm3,xmm3,xmm8,0x3
  a3de7d:	c4 e3 61 21 9c 17 4c 	vinsertps xmm3,xmm3,DWORD PTR [rdi+rdx*1+0x14c],0x30
  a3de84:	01 00 00 30 
  a3de88:	62 e2 55 48 7f c6    	vpermt2ps zmm16,zmm5,zmm6
  a3de8e:	c5 7c 10 84 17 20 01 	vmovups ymm8,YMMWORD PTR [rdi+rdx*1+0x120]
  a3de95:	00 00 
  a3de97:	62 f3 3d 48 18 db 02 	vinsertf32x4 zmm3,zmm8,xmm3,0x2
  a3de9e:	62 71 7c 48 28 c3    	vmovaps zmm8,zmm3
  a3dea4:	62 e2 55 48 7f ce    	vpermt2ps zmm17,zmm5,zmm6
  a3deaa:	62 e1 7c 08 10 74 17 	vmovups xmm22,XMMWORD PTR [rdi+rdx*1+0x170]
  a3deb1:	17 
  a3deb2:	62 f3 4d 00 21 64 17 	vinsertps xmm4,xmm22,DWORD PTR [rdi+rdx*1+0x174],0x10
  a3deb9:	5d 10 
  a3debb:	62 e2 55 48 7f e6    	vpermt2ps zmm20,zmm5,zmm6
  a3dec1:	62 f2 35 48 7f de    	vpermt2ps zmm3,zmm9,zmm6
  a3dec7:	c4 62 79 18 9c 17 78 	vbroadcastss xmm11,DWORD PTR [rdi+rdx*1+0x178]
  a3dece:	01 00 00 
  a3ded1:	62 e2 55 48 7f ee    	vpermt2ps zmm21,zmm5,zmm6
  a3ded7:	c4 e3 21 0c e4 03    	vblendps xmm4,xmm11,xmm4,0x3
  a3dedd:	c4 e3 59 21 a4 17 7c 	vinsertps xmm4,xmm4,DWORD PTR [rdi+rdx*1+0x17c],0x30
  a3dee4:	01 00 00 30 
  a3dee8:	62 72 55 48 7f d6    	vpermt2ps zmm10,zmm5,zmm6
  a3deee:	c5 7c 10 9c 17 50 01 	vmovups ymm11,YMMWORD PTR [rdi+rdx*1+0x150]
  a3def5:	00 00 
  a3def7:	62 f3 25 48 18 e4 02 	vinsertf32x4 zmm4,zmm11,xmm4,0x2
  a3defe:	62 71 7c 48 28 dc    	vmovaps zmm11,zmm4
  a3df04:	62 72 55 48 7f c6    	vpermt2ps zmm8,zmm5,zmm6
  a3df0a:	62 72 55 48 7f de    	vpermt2ps zmm11,zmm5,zmm6
  a3df10:	62 f2 35 48 7f e6    	vpermt2ps zmm4,zmm9,zmm6
  a3df16:	62 e1 0c 48 58 f3    	vaddps zmm22,zmm14,zmm3
  a3df1c:	62 f1 0c 48 5c db    	vsubps zmm3,zmm14,zmm3
  a3df22:	62 71 14 48 58 f7    	vaddps zmm14,zmm13,zmm7
  a3df28:	62 f1 14 48 5c ff    	vsubps zmm7,zmm13,zmm7
  a3df2e:	62 31 04 48 58 ed    	vaddps zmm13,zmm15,zmm21
  a3df34:	62 31 04 48 5c fd    	vsubps zmm15,zmm15,zmm21
  a3df3a:	62 e1 64 40 58 ec    	vaddps zmm21,zmm19,zmm4
  a3df40:	62 f1 64 40 5c e4    	vsubps zmm4,zmm19,zmm4
  a3df46:	62 c1 7c 40 58 da    	vaddps zmm19,zmm16,zmm10
  a3df4c:	62 51 7c 40 5c d2    	vsubps zmm10,zmm16,zmm10
  a3df52:	62 a1 1c 48 58 c2    	vaddps zmm16,zmm12,zmm18
  a3df58:	62 31 1c 48 5c e2    	vsubps zmm12,zmm12,zmm18
  a3df5e:	62 c1 5c 40 58 d3    	vaddps zmm18,zmm20,zmm11
  a3df64:	62 51 5c 40 5c db    	vsubps zmm11,zmm20,zmm11
  a3df6a:	62 c1 74 40 58 e0    	vaddps zmm20,zmm17,zmm8
  a3df70:	62 31 3c 48 5c c1    	vsubps zmm8,zmm8,zmm17
  a3df76:	62 e1 2c 48 58 cf    	vaddps zmm17,zmm10,zmm7
  a3df7c:	62 d1 44 48 5c fa    	vsubps zmm7,zmm7,zmm10
  a3df82:	62 31 0c 48 58 d5    	vaddps zmm10,zmm14,zmm21
  a3df88:	62 31 0c 48 5c f5    	vsubps zmm14,zmm14,zmm21
  a3df8e:	62 c1 5c 48 5c eb    	vsubps zmm21,zmm4,zmm11
  a3df94:	62 f1 24 48 58 e4    	vaddps zmm4,zmm11,zmm4
  a3df9a:	62 31 7c 40 58 de    	vaddps zmm11,zmm16,zmm22
  a3dfa0:	62 a1 7c 40 5c f6    	vsubps zmm22,zmm16,zmm22
  a3dfa6:	62 a1 14 48 58 c4    	vaddps zmm16,zmm13,zmm20
  a3dfac:	62 31 14 48 5c ec    	vsubps zmm13,zmm13,zmm20
  a3dfb2:	62 a1 64 40 58 e2    	vaddps zmm20,zmm19,zmm18
  a3dfb8:	62 a1 6c 40 5c fb    	vsubps zmm23,zmm18,zmm19
  a3dfbe:	62 e1 04 48 58 d3    	vaddps zmm18,zmm15,zmm3
  a3dfc4:	62 91 44 48 59 f8    	vmulps zmm7,zmm7,zmm24
  a3dfca:	62 91 5c 48 59 e0    	vmulps zmm4,zmm4,zmm24
  a3dfd0:	62 f1 04 48 5c db    	vsubps zmm3,zmm15,zmm3
  a3dfd6:	62 71 44 48 5c fc    	vsubps zmm15,zmm7,zmm4
  a3dfdc:	62 f1 44 48 58 e4    	vaddps zmm4,zmm7,zmm4
  a3dfe2:	62 d1 3c 48 58 fc    	vaddps zmm7,zmm8,zmm12
  a3dfe8:	62 51 1c 48 5c c0    	vsubps zmm8,zmm12,zmm8
  a3dfee:	62 31 7c 40 58 e4    	vaddps zmm12,zmm16,zmm20
  a3dff4:	62 81 74 40 59 c8    	vmulps zmm17,zmm17,zmm24
  a3dffa:	62 81 54 40 59 d8    	vmulps zmm19,zmm21,zmm24
  a3e000:	62 a1 7c 40 5c ec    	vsubps zmm21,zmm16,zmm20
  a3e006:	62 a1 74 40 58 c3    	vaddps zmm16,zmm17,zmm19
  a3e00c:	62 21 64 40 5c f1    	vsubps zmm30,zmm19,zmm17
  a3e012:	62 c1 24 48 58 ca    	vaddps zmm17,zmm11,zmm10
  a3e018:	62 c1 24 48 5c e2    	vsubps zmm20,zmm11,zmm10
  a3e01e:	62 31 6c 40 58 d0    	vaddps zmm10,zmm18,zmm16
  a3e024:	62 31 6c 40 5c d8    	vsubps zmm11,zmm18,zmm16
  a3e02a:	62 41 14 48 58 fe    	vaddps zmm31,zmm13,zmm14
  a3e030:	62 51 14 48 5c ee    	vsubps zmm13,zmm13,zmm14
  a3e036:	62 c1 44 48 58 c7    	vaddps zmm16,zmm7,zmm15
  a3e03c:	62 c1 44 48 5c df    	vsubps zmm19,zmm7,zmm15
  a3e042:	62 a1 44 40 58 d6    	vaddps zmm18,zmm23,zmm22
  a3e048:	62 31 4c 40 5c f7    	vsubps zmm14,zmm22,zmm23
  a3e04e:	62 72 7d 48 7f e6    	vpermt2ps zmm12,zmm0,zmm6
  a3e054:	62 f1 64 48 58 fc    	vaddps zmm7,zmm3,zmm4
  a3e05a:	62 62 7d 48 7f fe    	vpermt2ps zmm31,zmm0,zmm6
  a3e060:	62 e2 7d 48 7f ee    	vpermt2ps zmm21,zmm0,zmm6
  a3e066:	62 72 7d 48 7f ee    	vpermt2ps zmm13,zmm0,zmm6
  a3e06c:	62 f1 64 48 5c dc    	vsubps zmm3,zmm3,zmm4
  a3e072:	62 d1 7c 48 28 e4    	vmovaps zmm4,zmm12
  a3e078:	62 b2 75 48 7f e5    	vpermt2ps zmm4,zmm1,zmm21
  a3e07e:	62 32 6d 48 7f e5    	vpermt2ps zmm12,zmm2,zmm21
  a3e084:	62 11 7c 48 28 ff    	vmovaps zmm15,zmm31
  a3e08a:	62 52 75 48 7f fd    	vpermt2ps zmm15,zmm1,zmm13
  a3e090:	62 42 6d 48 7f fd    	vpermt2ps zmm31,zmm2,zmm13
  a3e096:	62 81 3c 48 58 ee    	vaddps zmm21,zmm8,zmm30
  a3e09c:	62 81 3c 48 5c f6    	vsubps zmm22,zmm8,zmm30
  a3e0a2:	62 72 7d 48 7f d6    	vpermt2ps zmm10,zmm0,zmm6
  a3e0a8:	62 f2 7d 48 7f fe    	vpermt2ps zmm7,zmm0,zmm6
  a3e0ae:	62 72 7d 48 7f de    	vpermt2ps zmm11,zmm0,zmm6
  a3e0b4:	62 f2 7d 48 7f de    	vpermt2ps zmm3,zmm0,zmm6
  a3e0ba:	62 11 9d 48 14 e7    	vunpcklpd zmm12,zmm12,zmm31
  a3e0c0:	62 51 7c 48 28 c2    	vmovaps zmm8,zmm10
  a3e0c6:	62 52 6d 48 7f d3    	vpermt2ps zmm10,zmm2,zmm11
  a3e0cc:	62 52 75 48 7f c3    	vpermt2ps zmm8,zmm1,zmm11
  a3e0d2:	62 71 7c 48 28 df    	vmovaps zmm11,zmm7
  a3e0d8:	62 72 75 48 7f db    	vpermt2ps zmm11,zmm1,zmm3
  a3e0de:	62 f2 6d 48 7f fb    	vpermt2ps zmm7,zmm2,zmm3
  a3e0e4:	62 f1 ad 48 14 df    	vunpcklpd zmm3,zmm10,zmm7
  a3e0ea:	62 51 dd 48 14 ef    	vunpcklpd zmm13,zmm4,zmm15
  a3e0f0:	62 51 dd 48 15 ff    	vunpckhpd zmm15,zmm4,zmm15
  a3e0f6:	62 d1 bd 48 14 e3    	vunpcklpd zmm4,zmm8,zmm11
  a3e0fc:	62 c1 bd 48 15 fb    	vunpckhpd zmm23,zmm8,zmm11
  a3e102:	62 e2 7d 48 7f ce    	vpermt2ps zmm17,zmm0,zmm6
  a3e108:	62 e2 7d 48 7f e6    	vpermt2ps zmm20,zmm0,zmm6
  a3e10e:	62 b1 7c 48 28 f9    	vmovaps zmm7,zmm17
  a3e114:	62 b2 75 48 7f fc    	vpermt2ps zmm7,zmm1,zmm20
  a3e11a:	62 a2 6d 48 7f cc    	vpermt2ps zmm17,zmm2,zmm20
  a3e120:	62 c1 7c 48 28 e4    	vmovaps zmm20,zmm12
  a3e126:	62 e2 7d 48 7f c6    	vpermt2ps zmm16,zmm0,zmm6
  a3e12c:	62 e2 25 40 7f e3    	vpermt2ps zmm20,zmm27,zmm3
  a3e132:	62 e2 7d 48 7f d6    	vpermt2ps zmm18,zmm0,zmm6
  a3e138:	62 e2 7d 48 7f de    	vpermt2ps zmm19,zmm0,zmm6
  a3e13e:	62 72 7d 48 7f f6    	vpermt2ps zmm14,zmm0,zmm6
  a3e144:	62 72 1d 40 7f e3    	vpermt2ps zmm12,zmm28,zmm3
  a3e14a:	62 b1 7c 48 28 d8    	vmovaps zmm3,zmm16
  a3e150:	62 b2 75 48 7f db    	vpermt2ps zmm3,zmm1,zmm19
  a3e156:	62 a2 6d 48 7f c3    	vpermt2ps zmm16,zmm2,zmm19
  a3e15c:	62 31 7c 48 28 c2    	vmovaps zmm8,zmm18
  a3e162:	62 52 75 48 7f c6    	vpermt2ps zmm8,zmm1,zmm14
  a3e168:	62 c2 6d 48 7f d6    	vpermt2ps zmm18,zmm2,zmm14
  a3e16e:	62 51 7c 48 28 f5    	vmovaps zmm14,zmm13
  a3e174:	62 e2 7d 48 7f ee    	vpermt2ps zmm21,zmm0,zmm6
  a3e17a:	62 e2 7d 48 7f f6    	vpermt2ps zmm22,zmm0,zmm6
  a3e180:	62 a1 f5 40 14 ca    	vunpcklpd zmm17,zmm17,zmm18
  a3e186:	62 31 7c 48 28 d5    	vmovaps zmm10,zmm21
  a3e18c:	62 72 25 40 7f f4    	vpermt2ps zmm14,zmm27,zmm4
  a3e192:	62 32 75 48 7f d6    	vpermt2ps zmm10,zmm1,zmm22
  a3e198:	62 a2 6d 48 7f ee    	vpermt2ps zmm21,zmm2,zmm22
  a3e19e:	62 51 7c 48 28 df    	vmovaps zmm11,zmm15
  a3e1a4:	62 72 1d 40 7f ec    	vpermt2ps zmm13,zmm28,zmm4
  a3e1aa:	62 b1 fd 40 14 e5    	vunpcklpd zmm4,zmm16,zmm21
  a3e1b0:	62 c1 c5 48 14 c0    	vunpcklpd zmm16,zmm7,zmm8
  a3e1b6:	62 d1 c5 48 15 f8    	vunpckhpd zmm7,zmm7,zmm8
  a3e1bc:	62 32 25 40 7f df    	vpermt2ps zmm11,zmm27,zmm23
  a3e1c2:	62 c1 e5 48 14 da    	vunpcklpd zmm19,zmm3,zmm10
  a3e1c8:	62 d1 e5 48 15 da    	vunpckhpd zmm3,zmm3,zmm10
  a3e1ce:	62 71 7c 48 28 c7    	vmovaps zmm8,zmm7
  a3e1d4:	62 32 1d 40 7f ff    	vpermt2ps zmm15,zmm28,zmm23
  a3e1da:	62 72 25 40 7f c3    	vpermt2ps zmm8,zmm27,zmm3
  a3e1e0:	62 31 7c 48 28 d1    	vmovaps zmm10,zmm17
  a3e1e6:	62 72 25 40 7f d4    	vpermt2ps zmm10,zmm27,zmm4
  a3e1ec:	62 f2 1d 40 7f fb    	vpermt2ps zmm7,zmm28,zmm3
  a3e1f2:	62 e2 1d 40 7f cc    	vpermt2ps zmm17,zmm28,zmm4
  a3e1f8:	62 f1 7c 48 10 59 04 	vmovups zmm3,ZMMWORD PTR [rcx+0x100]
  a3e1ff:	62 f1 7c 48 10 61 05 	vmovups zmm4,ZMMWORD PTR [rcx+0x140]
  a3e206:	62 e1 24 48 59 d3    	vmulps zmm18,zmm11,zmm3
  a3e20c:	62 e2 3d 48 bc d4    	vfnmadd231ps zmm18,zmm8,zmm4
  a3e212:	62 f1 3c 48 59 db    	vmulps zmm3,zmm8,zmm3
  a3e218:	62 71 7c 48 10 41 08 	vmovups zmm8,ZMMWORD PTR [rcx+0x200]
  a3e21f:	62 d2 5d 48 b8 db    	vfmadd231ps zmm3,zmm4,zmm11
  a3e225:	62 f1 7c 48 10 61 09 	vmovups zmm4,ZMMWORD PTR [rcx+0x240]
  a3e22c:	62 51 5c 40 59 d8    	vmulps zmm11,zmm20,zmm8
  a3e232:	62 51 2c 48 59 c0    	vmulps zmm8,zmm10,zmm8
  a3e238:	62 72 2d 48 bc dc    	vfnmadd231ps zmm11,zmm10,zmm4
  a3e23e:	62 71 7c 48 10 51 06 	vmovups zmm10,ZMMWORD PTR [rcx+0x180]
  a3e245:	62 32 5d 48 b8 c4    	vfmadd231ps zmm8,zmm4,zmm20
  a3e24b:	62 f1 7c 48 10 61 07 	vmovups zmm4,ZMMWORD PTR [rcx+0x1c0]
  a3e252:	62 c1 04 48 59 ea    	vmulps zmm21,zmm15,zmm10
  a3e258:	62 e2 45 48 bc ec    	vfnmadd231ps zmm21,zmm7,zmm4
  a3e25e:	62 c1 44 48 59 e2    	vmulps zmm20,zmm7,zmm10
  a3e264:	62 b1 7c 48 28 f8    	vmovaps zmm7,zmm16
  a3e26a:	62 b2 25 40 7f fb    	vpermt2ps zmm7,zmm27,zmm19
  a3e270:	62 c2 5d 48 b8 e7    	vfmadd231ps zmm20,zmm4,zmm15
  a3e276:	62 f1 7c 48 10 61 0a 	vmovups zmm4,ZMMWORD PTR [rcx+0x280]
  a3e27d:	62 71 7c 48 10 51 0b 	vmovups zmm10,ZMMWORD PTR [rcx+0x2c0]
  a3e284:	62 a2 1d 40 7f c3    	vpermt2ps zmm16,zmm28,zmm19
  a3e28a:	62 71 1c 48 59 fc    	vmulps zmm15,zmm12,zmm4
  a3e290:	62 52 75 40 bc fa    	vfnmadd231ps zmm15,zmm17,zmm10
  a3e296:	62 f1 74 40 59 e4    	vmulps zmm4,zmm17,zmm4
  a3e29c:	62 e1 7c 48 10 49 02 	vmovups zmm17,ZMMWORD PTR [rcx+0x80]
  a3e2a3:	62 d2 2d 48 b8 e4    	vfmadd231ps zmm4,zmm10,zmm12
  a3e2a9:	62 71 7c 48 10 51 03 	vmovups zmm10,ZMMWORD PTR [rcx+0xc0]
  a3e2b0:	62 31 14 48 59 e1    	vmulps zmm12,zmm13,zmm17
  a3e2b6:	62 52 7d 40 bc e2    	vfnmadd231ps zmm12,zmm16,zmm10
  a3e2bc:	62 a1 7c 40 59 c1    	vmulps zmm16,zmm16,zmm17
  a3e2c2:	62 c1 6c 40 58 cb    	vaddps zmm17,zmm18,zmm11
  a3e2c8:	62 c2 2d 48 b8 c5    	vfmadd231ps zmm16,zmm10,zmm13
  a3e2ce:	62 31 0c 48 58 d1    	vaddps zmm10,zmm14,zmm17
  a3e2d4:	62 51 64 48 58 e8    	vaddps zmm13,zmm3,zmm8
  a3e2da:	62 d1 64 48 5c d8    	vsubps zmm3,zmm3,zmm8
  a3e2e0:	62 51 04 48 58 c4    	vaddps zmm8,zmm15,zmm12
  a3e2e6:	62 32 35 40 bc f1    	vfnmadd231ps zmm14,zmm25,zmm17
  a3e2ec:	62 a1 5c 48 58 c8    	vaddps zmm17,zmm4,zmm16
  a3e2f2:	62 b1 5c 48 5c e0    	vsubps zmm4,zmm4,zmm16
  a3e2f8:	62 c1 54 40 58 c0    	vaddps zmm16,zmm21,zmm8
  a3e2fe:	62 c2 35 40 bc e8    	vfnmadd231ps zmm21,zmm25,zmm8
  a3e304:	62 71 14 48 58 c7    	vaddps zmm8,zmm13,zmm7
  a3e30a:	62 d2 35 40 bc fd    	vfnmadd231ps zmm7,zmm25,zmm13
  a3e310:	62 51 6c 40 5c db    	vsubps zmm11,zmm18,zmm11
  a3e316:	62 31 5c 40 58 e9    	vaddps zmm13,zmm20,zmm17
  a3e31c:	62 a2 35 40 bc e1    	vfnmadd231ps zmm20,zmm25,zmm17
  a3e322:	62 91 64 48 59 da    	vmulps zmm3,zmm3,zmm26
  a3e328:	62 51 04 48 5c e4    	vsubps zmm12,zmm15,zmm12
  a3e32e:	62 71 0c 48 58 fb    	vaddps zmm15,zmm14,zmm3
  a3e334:	62 91 5c 48 59 e2    	vmulps zmm4,zmm4,zmm26
  a3e33a:	62 11 24 48 59 da    	vmulps zmm11,zmm11,zmm26
  a3e340:	62 f1 0c 48 5c db    	vsubps zmm3,zmm14,zmm3
  a3e346:	62 71 54 40 58 f4    	vaddps zmm14,zmm21,zmm4
  a3e34c:	62 f1 54 40 5c e4    	vsubps zmm4,zmm21,zmm4
  a3e352:	62 c1 44 48 5c cb    	vsubps zmm17,zmm7,zmm11
  a3e358:	62 11 1c 48 59 e2    	vmulps zmm12,zmm12,zmm26
  a3e35e:	62 f1 24 48 58 ff    	vaddps zmm7,zmm11,zmm7
  a3e364:	62 51 5c 40 5c dc    	vsubps zmm11,zmm20,zmm12
  a3e36a:	62 51 5c 40 58 e4    	vaddps zmm12,zmm20,zmm12
  a3e370:	62 c1 04 48 5c d6    	vsubps zmm18,zmm15,zmm14
  a3e376:	62 51 04 48 58 f6    	vaddps zmm14,zmm15,zmm14
  a3e37c:	62 51 74 40 5c fb    	vsubps zmm15,zmm17,zmm11
  a3e382:	62 51 74 40 58 db    	vaddps zmm11,zmm17,zmm11
  a3e388:	62 e1 64 48 58 cc    	vaddps zmm17,zmm3,zmm4
  a3e38e:	62 f1 64 48 5c dc    	vsubps zmm3,zmm3,zmm4
  a3e394:	62 b1 2c 48 5c e0    	vsubps zmm4,zmm10,zmm16
  a3e39a:	62 31 2c 48 58 d0    	vaddps zmm10,zmm10,zmm16
  a3e3a0:	62 c1 44 48 58 c4    	vaddps zmm16,zmm7,zmm12
  a3e3a6:	62 d1 44 48 5c fc    	vsubps zmm7,zmm7,zmm12
  a3e3ac:	62 51 3c 48 5c e5    	vsubps zmm12,zmm8,zmm13
  a3e3b2:	62 51 3c 48 58 c5    	vaddps zmm8,zmm8,zmm13
  a3e3b8:	62 52 15 40 7f d0    	vpermt2ps zmm10,zmm29,zmm8
  a3e3be:	62 71 7c 48 11 14 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm10
  a3e3c5:	62 c2 15 40 7f d7    	vpermt2ps zmm18,zmm29,zmm15
  a3e3cb:	62 e1 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x40],zmm18
  a3e3d2:	01 
  a3e3d3:	62 a2 15 40 7f c8    	vpermt2ps zmm17,zmm29,zmm16
  a3e3d9:	62 e1 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x80],zmm17
  a3e3e0:	02 
  a3e3e1:	62 d2 15 40 7f e4    	vpermt2ps zmm4,zmm29,zmm12
  a3e3e7:	62 f1 7c 48 11 64 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xc0],zmm4
  a3e3ee:	03 
  a3e3ef:	62 52 15 40 7f f3    	vpermt2ps zmm14,zmm29,zmm11
  a3e3f5:	62 71 7c 48 11 74 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x100],zmm14
  a3e3fc:	04 
  a3e3fd:	62 f2 15 40 7f df    	vpermt2ps zmm3,zmm29,zmm7
  a3e403:	62 f1 7c 48 11 5c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x140],zmm3
  a3e40a:	05 
  a3e40b:	48 81 c2 80 01 00 00 	add    rdx,0x180
  a3e412:	48 39 d0             	cmp    rax,rdx
  a3e415:	0f 85 85 f8 ff ff    	jne    a3dca0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0xa0>
  a3e41b:	48 89 ec             	mov    rsp,rbp
  a3e41e:	5d                   	pop    rbp
  a3e41f:	c5 f8 77             	vzeroupper
  a3e422:	c3                   	ret
