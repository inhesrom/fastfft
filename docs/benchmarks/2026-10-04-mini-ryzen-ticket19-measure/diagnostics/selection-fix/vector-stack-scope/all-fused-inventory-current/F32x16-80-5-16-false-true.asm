
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a1dc80 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a1dc80:	55                   	push   rbp
  a1dc81:	48 89 e5             	mov    rbp,rsp
  a1dc84:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a1dc88:	48 81 ec 00 09 00 00 	sub    rsp,0x900
  a1dc8f:	62 f1 7c 48 28 05 e7 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6a92e7]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a1dc96:	92 6a ff 
  a1dc99:	62 f1 7c 48 28 0d 1d 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff6a931d]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a1dca0:	93 6a ff 
  a1dca3:	48 c1 e2 07          	shl    rdx,0x7
  a1dca7:	48 8d 04 92          	lea    rax,[rdx+rdx*4]
  a1dcab:	31 d2                	xor    edx,edx
  a1dcad:	4c 8d 84 24 80 08 00 	lea    r8,[rsp+0x880]
  a1dcb4:	00 
  a1dcb5:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  a1dcba:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a1dcbe:	62 f2 7d 48 7f d2    	vpermt2ps zmm2,zmm0,zmm2
  a1dcc4:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm2
  a1dccb:	13 
  a1dccc:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a1dcd0:	62 f2 75 48 7f c0    	vpermt2ps zmm0,zmm1,zmm0
  a1dcd6:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm0
  a1dcdd:	12 
  a1dcde:	66 90                	xchg   ax,ax
  a1dce0:	c6 84 24 80 08 00 00 	mov    BYTE PTR [rsp+0x880],0x0
  a1dce7:	00 
  a1dce8:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  a1dced:	62 f1 7c 48 10 34 17 	vmovups zmm6,ZMMWORD PTR [rdi+rdx*1]
  a1dcf4:	62 f1 7c 48 10 4c 17 	vmovups zmm1,ZMMWORD PTR [rdi+rdx*1+0x40]
  a1dcfb:	01 
  a1dcfc:	62 71 7c 48 10 44 17 	vmovups zmm8,ZMMWORD PTR [rdi+rdx*1+0x80]
  a1dd03:	02 
  a1dd04:	62 f1 7c 48 10 54 17 	vmovups zmm2,ZMMWORD PTR [rdi+rdx*1+0xc0]
  a1dd0b:	03 
  a1dd0c:	62 f1 7c 48 28 c6    	vmovaps zmm0,zmm6
  a1dd12:	62 71 7c 48 28 3d 24 	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff671f24]        # 8fc40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d0f0>
  a1dd19:	1f 67 ff 
  a1dd1c:	62 f2 05 48 7f c1    	vpermt2ps zmm0,zmm15,zmm1
  a1dd22:	62 d1 7c 48 28 e8    	vmovaps zmm5,zmm8
  a1dd28:	62 71 7c 48 10 54 17 	vmovups zmm10,ZMMWORD PTR [rdi+rdx*1+0x200]
  a1dd2f:	08 
  a1dd30:	62 f2 05 48 7f ea    	vpermt2ps zmm5,zmm15,zmm2
  a1dd36:	62 f1 7c 48 10 5c 17 	vmovups zmm3,ZMMWORD PTR [rdi+rdx*1+0x240]
  a1dd3d:	09 
  a1dd3e:	62 d1 7c 48 28 fa    	vmovaps zmm7,zmm10
  a1dd44:	62 71 7c 48 10 64 17 	vmovups zmm12,ZMMWORD PTR [rdi+rdx*1+0x100]
  a1dd4b:	04 
  a1dd4c:	62 f2 05 48 7f fb    	vpermt2ps zmm7,zmm15,zmm3
  a1dd52:	62 f1 7c 48 10 64 17 	vmovups zmm4,ZMMWORD PTR [rdi+rdx*1+0x140]
  a1dd59:	05 
  a1dd5a:	62 51 7c 48 28 cc    	vmovaps zmm9,zmm12
  a1dd60:	62 71 7c 48 10 6c 17 	vmovups zmm13,ZMMWORD PTR [rdi+rdx*1+0x180]
  a1dd67:	06 
  a1dd68:	62 72 05 48 7f cc    	vpermt2ps zmm9,zmm15,zmm4
  a1dd6e:	62 71 7c 48 10 74 17 	vmovups zmm14,ZMMWORD PTR [rdi+rdx*1+0x1c0]
  a1dd75:	07 
  a1dd76:	62 51 7c 48 28 dd    	vmovaps zmm11,zmm13
  a1dd7c:	62 52 05 48 7f de    	vpermt2ps zmm11,zmm15,zmm14
  a1dd82:	62 71 54 48 58 ff    	vaddps zmm15,zmm5,zmm7
  a1dd88:	62 c1 34 48 58 c3    	vaddps zmm16,zmm9,zmm11
  a1dd8e:	62 61 7c 48 28 25 e8 	vmovaps zmm28,ZMMWORD PTR [rip+0xffffffffff671ee8]        # 8fc80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d130>
  a1dd95:	1e 67 ff 
  a1dd98:	62 72 1d 40 7f c2    	vpermt2ps zmm8,zmm28,zmm2
  a1dd9e:	62 72 1d 40 7f d3    	vpermt2ps zmm10,zmm28,zmm3
  a1dda4:	62 d1 7c 48 58 d7    	vaddps zmm2,zmm0,zmm15
  a1ddaa:	62 d1 3c 48 5c da    	vsubps zmm3,zmm8,zmm10
  a1ddb0:	62 72 1d 40 7f e4    	vpermt2ps zmm12,zmm28,zmm4
  a1ddb6:	62 52 1d 40 7f ee    	vpermt2ps zmm13,zmm28,zmm14
  a1ddbc:	62 a1 6c 48 58 f0    	vaddps zmm22,zmm2,zmm16
  a1ddc2:	62 d1 1c 48 5c e5    	vsubps zmm4,zmm12,zmm13
  a1ddc8:	62 e2 7d 48 18 25 86 	vbroadcastss zmm20,DWORD PTR [rip+0xffffffffff657986]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a1ddcf:	79 65 ff 
  a1ddd2:	62 31 5c 48 59 f4    	vmulps zmm14,zmm4,zmm20
  a1ddd8:	62 e2 7d 48 18 2d be 	vbroadcastss zmm21,DWORD PTR [rip+0xffffffffff6575be]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a1dddf:	75 65 ff 
  a1dde2:	62 32 65 48 b8 f5    	vfmadd231ps zmm14,zmm3,zmm21
  a1dde8:	62 b1 7c 48 28 d6    	vmovaps zmm2,zmm22
  a1ddee:	62 62 7d 48 18 05 f0 	vbroadcastss zmm24,DWORD PTR [rip+0xffffffffff6578f0]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a1ddf5:	78 65 ff 
  a1ddf8:	62 81 7c 48 28 c8    	vmovaps zmm17,zmm24
  a1ddfe:	62 e2 05 48 a8 c8    	vfmadd213ps zmm17,zmm15,zmm0
  a1de04:	62 62 7d 48 18 0d 36 	vbroadcastss zmm25,DWORD PTR [rip+0xffffffffff657836]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a1de0b:	78 65 ff 
  a1de0e:	62 82 7d 40 bc c9    	vfnmadd231ps zmm17,zmm16,zmm25
  a1de14:	62 e1 7c 48 28 15 62 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff6a9162]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a1de1b:	91 6a ff 
  a1de1e:	62 a1 64 00 57 db    	vxorps xmm19,xmm19,xmm19
  a1de24:	62 b2 6d 40 7f d3    	vpermt2ps zmm2,zmm18,zmm19
  a1de2a:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm2
  a1de31:	06 
  a1de32:	62 61 7c 48 28 fa    	vmovaps zmm31,zmm2
  a1de38:	62 d2 35 40 bc c7    	vfnmadd231ps zmm0,zmm25,zmm15
  a1de3e:	62 b2 3d 40 b8 c0    	vfmadd231ps zmm0,zmm24,zmm16
  a1de44:	62 a1 0c 48 58 c1    	vaddps zmm16,zmm14,zmm17
  a1de4a:	62 31 64 48 59 fc    	vmulps zmm15,zmm3,zmm20
  a1de50:	62 72 55 40 bc fc    	vfnmadd231ps zmm15,zmm21,zmm4
  a1de56:	62 41 7c 48 5c df    	vsubps zmm27,zmm0,zmm15
  a1de5c:	62 b1 7c 48 28 d0    	vmovaps zmm2,zmm16
  a1de62:	62 01 7c 48 28 f3    	vmovaps zmm30,zmm27
  a1de68:	62 d1 74 40 5c e6    	vsubps zmm4,zmm17,zmm14
  a1de6e:	62 61 04 48 58 d0    	vaddps zmm26,zmm15,zmm0
  a1de74:	62 e1 7c 48 28 fc    	vmovaps zmm23,zmm4
  a1de7a:	62 f2 1d 40 7f f1    	vpermt2ps zmm6,zmm28,zmm1
  a1de80:	62 51 3c 48 58 c2    	vaddps zmm8,zmm8,zmm10
  a1de86:	62 d1 4c 48 58 c8    	vaddps zmm1,zmm6,zmm8
  a1de8c:	62 01 7c 48 28 ea    	vmovaps zmm29,zmm26
  a1de92:	62 51 1c 48 58 d5    	vaddps zmm10,zmm12,zmm13
  a1de98:	62 d1 74 48 58 c2    	vaddps zmm0,zmm1,zmm10
  a1de9e:	62 71 7c 48 28 f0    	vmovaps zmm14,zmm0
  a1dea4:	62 b2 6d 40 7f d3    	vpermt2ps zmm2,zmm18,zmm19
  a1deaa:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm2
  a1deb1:	0e 
  a1deb2:	62 11 7c 48 28 e0    	vmovaps zmm12,zmm24
  a1deb8:	62 72 3d 48 a8 e6    	vfmadd213ps zmm12,zmm8,zmm6
  a1debe:	62 12 2d 48 bc e1    	vfnmadd231ps zmm12,zmm10,zmm25
  a1dec4:	62 22 6d 40 7f f3    	vpermt2ps zmm30,zmm18,zmm19
  a1deca:	62 f1 54 48 5c ef    	vsubps zmm5,zmm5,zmm7
  a1ded0:	62 d1 34 48 5c fb    	vsubps zmm7,zmm9,zmm11
  a1ded6:	62 31 44 48 59 cc    	vmulps zmm9,zmm7,zmm20
  a1dedc:	62 a2 6d 40 7f fb    	vpermt2ps zmm23,zmm18,zmm19
  a1dee2:	62 32 55 48 b8 cd    	vfmadd231ps zmm9,zmm5,zmm21
  a1dee8:	62 51 1c 48 5c d9    	vsubps zmm11,zmm12,zmm9
  a1deee:	62 c1 7c 48 28 cb    	vmovaps zmm17,zmm11
  a1def4:	62 22 6d 40 7f eb    	vpermt2ps zmm29,zmm18,zmm19
  a1defa:	62 d2 35 40 bc f0    	vfnmadd231ps zmm6,zmm25,zmm8
  a1df00:	62 d2 3d 40 b8 f2    	vfmadd231ps zmm6,zmm24,zmm10
  a1df06:	62 31 54 48 59 c4    	vmulps zmm8,zmm5,zmm20
  a1df0c:	62 61 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm30
  a1df13:	03 
  a1df14:	62 72 55 40 bc c7    	vfnmadd231ps zmm8,zmm21,zmm7
  a1df1a:	62 c1 4c 48 58 e8    	vaddps zmm21,zmm6,zmm8
  a1df20:	62 31 7c 48 28 ed    	vmovaps zmm13,zmm21
  a1df26:	62 e1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm23
  a1df2d:	02 
  a1df2e:	62 41 1c 48 58 c1    	vaddps zmm24,zmm12,zmm9
  a1df34:	62 91 7c 48 28 d8    	vmovaps zmm3,zmm24
  a1df3a:	62 51 4c 48 5c c0    	vsubps zmm8,zmm6,zmm8
  a1df40:	62 61 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm29
  a1df47:	01 
  a1df48:	62 d1 7c 48 28 f0    	vmovaps zmm6,zmm8
  a1df4e:	62 f1 7c 48 28 0d e8 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff6a8fe8]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a1df55:	8f 6a ff 
  a1df58:	62 11 7c 48 28 cf    	vmovaps zmm9,zmm31
  a1df5e:	62 72 75 48 7f ca    	vpermt2ps zmm9,zmm1,zmm2
  a1df64:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm9
  a1df6b:	09 
  a1df6c:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x4c0]
  a1df73:	13 
  a1df74:	62 62 75 48 7f f5    	vpermt2ps zmm30,zmm1,zmm5
  a1df7a:	62 e2 75 48 7f fd    	vpermt2ps zmm23,zmm1,zmm5
  a1df80:	62 b2 6d 40 7f c3    	vpermt2ps zmm0,zmm18,zmm19
  a1df86:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm0
  a1df8d:	0d 
  a1df8e:	62 32 6d 40 7f db    	vpermt2ps zmm11,zmm18,zmm19
  a1df94:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x700],zmm11
  a1df9b:	1c 
  a1df9c:	62 62 75 48 7f ed    	vpermt2ps zmm29,zmm1,zmm5
  a1dfa2:	62 d2 75 48 7f c3    	vpermt2ps zmm0,zmm1,zmm11
  a1dfa8:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm0
  a1dfaf:	0a 
  a1dfb0:	62 a2 6d 40 7f eb    	vpermt2ps zmm21,zmm18,zmm19
  a1dfb6:	62 e1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x740],zmm21
  a1dfbd:	1d 
  a1dfbe:	62 e2 75 48 7f ed    	vpermt2ps zmm21,zmm1,zmm5
  a1dfc4:	62 22 6d 40 7f c3    	vpermt2ps zmm24,zmm18,zmm19
  a1dfca:	62 61 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm24
  a1dfd1:	1a 
  a1dfd2:	62 41 7c 48 28 f8    	vmovaps zmm31,zmm8
  a1dfd8:	62 22 6d 40 7f fb    	vpermt2ps zmm31,zmm18,zmm19
  a1dfde:	62 61 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm31
  a1dfe5:	08 
  a1dfe6:	62 62 75 48 7f c5    	vpermt2ps zmm24,zmm1,zmm5
  a1dfec:	62 62 75 48 7f fd    	vpermt2ps zmm31,zmm1,zmm5
  a1dff2:	62 b1 fd 48 15 fd    	vunpckhpd zmm7,zmm0,zmm21
  a1dff8:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm7
  a1dfff:	0f 
  a1e000:	62 91 bd 40 15 c7    	vunpckhpd zmm0,zmm24,zmm31
  a1e006:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  a1e00d:	04 
  a1e00e:	62 61 7c 48 28 0d e8 	vmovaps zmm25,ZMMWORD PTR [rip+0xffffffffff6a8de8]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a1e015:	8d 6a ff 
  a1e018:	62 f2 35 40 7f f8    	vpermt2ps zmm7,zmm25,zmm0
  a1e01e:	62 11 b5 48 15 c6    	vunpckhpd zmm8,zmm9,zmm30
  a1e024:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x840],zmm8
  a1e02b:	21 
  a1e02c:	62 91 c5 40 15 c5    	vunpckhpd zmm0,zmm23,zmm29
  a1e032:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x800],zmm0
  a1e039:	20 
  a1e03a:	62 72 35 40 7f c0    	vpermt2ps zmm8,zmm25,zmm0
  a1e040:	62 71 7c 48 10 49 0d 	vmovups zmm9,ZMMWORD PTR [rcx+0x340]
  a1e047:	62 71 7c 48 10 51 0c 	vmovups zmm10,ZMMWORD PTR [rcx+0x300]
  a1e04e:	62 d1 3c 48 59 c2    	vmulps zmm0,zmm8,zmm10
  a1e054:	62 d2 45 48 b8 c1    	vfmadd231ps zmm0,zmm7,zmm9
  a1e05a:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm0
  a1e061:	07 
  a1e062:	62 d1 44 48 59 c2    	vmulps zmm0,zmm7,zmm10
  a1e068:	62 d2 35 48 bc c0    	vfnmadd231ps zmm0,zmm9,zmm8
  a1e06e:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm0
  a1e075:	11 
  a1e076:	62 f1 7c 48 28 05 40 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6a8f40]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a1e07d:	8f 6a ff 
  a1e080:	62 32 7d 48 7f f3    	vpermt2ps zmm14,zmm0,zmm19
  a1e086:	62 a2 7d 48 7f cb    	vpermt2ps zmm17,zmm0,zmm19
  a1e08c:	62 e1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm17
  a1e093:	0b 
  a1e094:	62 32 7d 48 7f eb    	vpermt2ps zmm13,zmm0,zmm19
  a1e09a:	62 b2 7d 48 7f db    	vpermt2ps zmm3,zmm0,zmm19
  a1e0a0:	62 a2 7d 48 7f f3    	vpermt2ps zmm22,zmm0,zmm19
  a1e0a6:	62 b1 7c 48 28 d0    	vmovaps zmm2,zmm16
  a1e0ac:	62 b2 7d 48 7f d3    	vpermt2ps zmm2,zmm0,zmm19
  a1e0b2:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm2
  a1e0b9:	0c 
  a1e0ba:	62 22 7d 48 7f db    	vpermt2ps zmm27,zmm0,zmm19
  a1e0c0:	62 b2 7d 48 7f f3    	vpermt2ps zmm6,zmm0,zmm19
  a1e0c6:	62 b2 7d 48 7f e3    	vpermt2ps zmm4,zmm0,zmm19
  a1e0cc:	62 22 7d 48 7f d3    	vpermt2ps zmm26,zmm0,zmm19
  a1e0d2:	62 a1 7c 48 28 c6    	vmovaps zmm16,zmm22
  a1e0d8:	62 e2 75 48 7f f2    	vpermt2ps zmm22,zmm1,zmm2
  a1e0de:	62 81 7c 48 28 db    	vmovaps zmm19,zmm27
  a1e0e4:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x480]
  a1e0eb:	12 
  a1e0ec:	62 62 75 48 7f da    	vpermt2ps zmm27,zmm1,zmm2
  a1e0f2:	62 71 7c 48 28 e4    	vmovaps zmm12,zmm4
  a1e0f8:	62 f2 75 48 7f e2    	vpermt2ps zmm4,zmm1,zmm2
  a1e0fe:	62 11 7c 48 28 da    	vmovaps zmm11,zmm26
  a1e104:	62 62 75 48 7f d2    	vpermt2ps zmm26,zmm1,zmm2
  a1e10a:	62 51 7c 48 28 d6    	vmovaps zmm10,zmm14
  a1e110:	62 32 75 48 7f f1    	vpermt2ps zmm14,zmm1,zmm17
  a1e116:	62 51 7c 48 28 cd    	vmovaps zmm9,zmm13
  a1e11c:	62 72 75 48 7f ea    	vpermt2ps zmm13,zmm1,zmm2
  a1e122:	62 71 7c 48 28 c3    	vmovaps zmm8,zmm3
  a1e128:	62 f2 75 48 7f da    	vpermt2ps zmm3,zmm1,zmm2
  a1e12e:	62 f1 7c 48 28 fe    	vmovaps zmm7,zmm6
  a1e134:	62 f2 75 48 7f f2    	vpermt2ps zmm6,zmm1,zmm2
  a1e13a:	62 c1 8d 48 15 e5    	vunpckhpd zmm20,zmm14,zmm13
  a1e140:	62 f1 e5 48 15 c6    	vunpckhpd zmm0,zmm3,zmm6
  a1e146:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm0
  a1e14d:	19 
  a1e14e:	62 31 7c 48 28 fc    	vmovaps zmm15,zmm20
  a1e154:	62 72 35 40 7f f8    	vpermt2ps zmm15,zmm25,zmm0
  a1e15a:	62 81 cd 40 15 cb    	vunpckhpd zmm17,zmm22,zmm27
  a1e160:	62 91 dd 48 15 c2    	vunpckhpd zmm0,zmm4,zmm26
  a1e166:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm0
  a1e16d:	18 
  a1e16e:	62 a1 7c 48 28 d1    	vmovaps zmm18,zmm17
  a1e174:	62 e2 35 40 7f d0    	vpermt2ps zmm18,zmm25,zmm0
  a1e17a:	62 f1 7c 48 10 49 1d 	vmovups zmm1,ZMMWORD PTR [rcx+0x740]
  a1e181:	62 f1 7c 48 10 41 1c 	vmovups zmm0,ZMMWORD PTR [rcx+0x700]
  a1e188:	62 61 6c 40 59 e0    	vmulps zmm28,zmm18,zmm0
  a1e18e:	62 62 05 48 b8 e1    	vfmadd231ps zmm28,zmm15,zmm1
  a1e194:	62 61 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm28
  a1e19b:	05 
  a1e19c:	62 f1 04 48 59 c0    	vmulps zmm0,zmm15,zmm0
  a1e1a2:	62 b2 75 48 bc c2    	vfnmadd231ps zmm0,zmm1,zmm18
  a1e1a8:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm0
  a1e1af:	10 
  a1e1b0:	62 11 cd 40 14 fb    	vunpcklpd zmm15,zmm22,zmm27
  a1e1b6:	62 91 dd 48 14 ca    	vunpcklpd zmm1,zmm4,zmm26
  a1e1bc:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm1
  a1e1c3:	15 
  a1e1c4:	62 d1 8d 48 14 c5    	vunpcklpd zmm0,zmm14,zmm13
  a1e1ca:	62 f1 e5 48 14 de    	vunpcklpd zmm3,zmm3,zmm6
  a1e1d0:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm3
  a1e1d7:	14 
  a1e1d8:	62 71 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x6c0],zmm15
  a1e1df:	1b 
  a1e1e0:	62 f1 7c 48 28 25 56 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff6a8c56]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a1e1e7:	8c 6a ff 
  a1e1ea:	62 72 5d 48 7f f9    	vpermt2ps zmm15,zmm4,zmm1
  a1e1f0:	62 61 7c 48 28 d0    	vmovaps zmm26,zmm0
  a1e1f6:	62 f2 5d 48 7f c3    	vpermt2ps zmm0,zmm4,zmm3
  a1e1fc:	62 f1 7c 48 10 49 1b 	vmovups zmm1,ZMMWORD PTR [rcx+0x6c0]
  a1e203:	62 f1 7c 48 10 59 1a 	vmovups zmm3,ZMMWORD PTR [rcx+0x680]
  a1e20a:	62 f1 04 48 59 f3    	vmulps zmm6,zmm15,zmm3
  a1e210:	62 f2 7d 48 b8 f1    	vfmadd231ps zmm6,zmm0,zmm1
  a1e216:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x7c0],zmm6
  a1e21d:	1f 
  a1e21e:	62 f1 7c 48 59 c3    	vmulps zmm0,zmm0,zmm3
  a1e224:	62 d2 75 48 bc c7    	vfnmadd231ps zmm0,zmm1,zmm15
  a1e22a:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x780],zmm0
  a1e231:	1e 
  a1e232:	62 f1 7c 48 28 1d c4 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff6a8cc4]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a1e239:	8c 6a ff 
  a1e23c:	62 e2 65 48 7f 44 24 	vpermt2ps zmm16,zmm3,ZMMWORD PTR [rsp+0x300]
  a1e243:	0c 
  a1e244:	62 72 65 48 7f 54 24 	vpermt2ps zmm10,zmm3,ZMMWORD PTR [rsp+0x2c0]
  a1e24b:	0b 
  a1e24c:	62 72 65 48 7f ca    	vpermt2ps zmm9,zmm3,zmm2
  a1e252:	62 72 65 48 7f c2    	vpermt2ps zmm8,zmm3,zmm2
  a1e258:	62 e2 65 48 7f da    	vpermt2ps zmm19,zmm3,zmm2
  a1e25e:	62 f2 65 48 7f fa    	vpermt2ps zmm7,zmm3,zmm2
  a1e264:	62 72 65 48 7f e2    	vpermt2ps zmm12,zmm3,zmm2
  a1e26a:	62 72 65 48 7f da    	vpermt2ps zmm11,zmm3,zmm2
  a1e270:	62 b1 fd 40 14 c3    	vunpcklpd zmm0,zmm16,zmm19
  a1e276:	62 d1 9d 48 14 cb    	vunpcklpd zmm1,zmm12,zmm11
  a1e27c:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm1
  a1e283:	17 
  a1e284:	62 e1 7c 48 28 f0    	vmovaps zmm22,zmm0
  a1e28a:	62 f2 5d 48 7f c1    	vpermt2ps zmm0,zmm4,zmm1
  a1e290:	62 d1 ad 48 14 c9    	vunpcklpd zmm1,zmm10,zmm9
  a1e296:	62 f1 bd 48 14 d7    	vunpcklpd zmm2,zmm8,zmm7
  a1e29c:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm2
  a1e2a3:	16 
  a1e2a4:	62 71 7c 48 28 e9    	vmovaps zmm13,zmm1
  a1e2aa:	62 f2 5d 48 7f ca    	vpermt2ps zmm1,zmm4,zmm2
  a1e2b0:	62 f1 7c 48 10 51 12 	vmovups zmm2,ZMMWORD PTR [rcx+0x480]
  a1e2b7:	62 71 74 48 59 f2    	vmulps zmm14,zmm1,zmm2
  a1e2bd:	62 f1 7c 48 59 f2    	vmulps zmm6,zmm0,zmm2
  a1e2c3:	62 f1 7c 48 10 51 13 	vmovups zmm2,ZMMWORD PTR [rcx+0x4c0]
  a1e2ca:	62 f2 6d 48 b8 f1    	vfmadd231ps zmm6,zmm2,zmm1
  a1e2d0:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm6
  a1e2d7:	0c 
  a1e2d8:	62 72 7d 48 bc f2    	vfnmadd231ps zmm14,zmm0,zmm2
  a1e2de:	62 71 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm14
  a1e2e5:	0b 
  a1e2e6:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x240]
  a1e2ed:	09 
  a1e2ee:	62 91 fd 48 14 c6    	vunpcklpd zmm0,zmm0,zmm30
  a1e2f4:	62 11 c5 40 14 f5    	vunpcklpd zmm14,zmm23,zmm29
  a1e2fa:	62 71 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm14
  a1e301:	09 
  a1e302:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x280]
  a1e309:	0a 
  a1e30a:	62 b1 f5 48 14 d5    	vunpcklpd zmm2,zmm1,zmm21
  a1e310:	62 01 bd 40 14 df    	vunpcklpd zmm27,zmm24,zmm31
  a1e316:	62 61 7c 48 28 e2    	vmovaps zmm28,zmm2
  a1e31c:	62 92 5d 48 7f d3    	vpermt2ps zmm2,zmm4,zmm27
  a1e322:	62 f1 7c 48 28 f0    	vmovaps zmm6,zmm0
  a1e328:	62 d2 5d 48 7f c6    	vpermt2ps zmm0,zmm4,zmm14
  a1e32e:	62 71 7c 48 10 71 0b 	vmovups zmm14,ZMMWORD PTR [rcx+0x2c0]
  a1e335:	62 71 7c 48 10 79 0a 	vmovups zmm15,ZMMWORD PTR [rcx+0x280]
  a1e33c:	62 d1 7c 48 59 cf    	vmulps zmm1,zmm0,zmm15
  a1e342:	62 d2 6d 48 b8 ce    	vfmadd231ps zmm1,zmm2,zmm14
  a1e348:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm1
  a1e34f:	0a 
  a1e350:	62 41 6c 48 59 ef    	vmulps zmm29,zmm2,zmm15
  a1e356:	62 62 0d 48 bc e8    	vfnmadd231ps zmm29,zmm14,zmm0
  a1e35c:	62 71 7c 48 28 7c 24 	vmovaps zmm15,ZMMWORD PTR [rsp+0x340]
  a1e363:	0d 
  a1e364:	62 72 65 48 7f 7c 24 	vpermt2ps zmm15,zmm3,ZMMWORD PTR [rsp+0x700]
  a1e36b:	1c 
  a1e36c:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x180]
  a1e373:	06 
  a1e374:	62 f2 65 48 7f 4c 24 	vpermt2ps zmm1,zmm3,ZMMWORD PTR [rsp+0x380]
  a1e37b:	0e 
  a1e37c:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0xc0]
  a1e383:	03 
  a1e384:	62 f2 65 48 7f c5    	vpermt2ps zmm0,zmm3,zmm5
  a1e38a:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm0
  a1e391:	03 
  a1e392:	62 71 7c 48 28 74 24 	vmovaps zmm14,ZMMWORD PTR [rsp+0x80]
  a1e399:	02 
  a1e39a:	62 72 65 48 7f f5    	vpermt2ps zmm14,zmm3,zmm5
  a1e3a0:	62 71 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm14
  a1e3a7:	02 
  a1e3a8:	62 61 7c 48 28 7c 24 	vmovaps zmm31,ZMMWORD PTR [rsp+0x740]
  a1e3af:	1d 
  a1e3b0:	62 62 65 48 7f fd    	vpermt2ps zmm31,zmm3,zmm5
  a1e3b6:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x40]
  a1e3bd:	01 
  a1e3be:	62 f2 65 48 7f d5    	vpermt2ps zmm2,zmm3,zmm5
  a1e3c4:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm2
  a1e3cb:	01 
  a1e3cc:	62 61 7c 48 28 44 24 	vmovaps zmm24,ZMMWORD PTR [rsp+0x680]
  a1e3d3:	1a 
  a1e3d4:	62 62 65 48 7f c5    	vpermt2ps zmm24,zmm3,zmm5
  a1e3da:	62 61 7c 48 28 74 24 	vmovaps zmm30,ZMMWORD PTR [rsp+0x200]
  a1e3e1:	08 
  a1e3e2:	62 62 65 48 7f f5    	vpermt2ps zmm30,zmm3,zmm5
  a1e3e8:	62 61 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm30
  a1e3ef:	08 
  a1e3f0:	62 f1 f5 48 14 c0    	vunpcklpd zmm0,zmm1,zmm0
  a1e3f6:	62 f1 7c 48 28 e9    	vmovaps zmm5,zmm1
  a1e3fc:	62 f1 8d 48 14 ca    	vunpcklpd zmm1,zmm14,zmm2
  a1e402:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm1
  a1e409:	0e 
  a1e40a:	62 e1 7c 48 28 f8    	vmovaps zmm23,zmm0
  a1e410:	62 f2 5d 48 7f c1    	vpermt2ps zmm0,zmm4,zmm1
  a1e416:	62 81 85 48 14 ef    	vunpcklpd zmm21,zmm15,zmm31
  a1e41c:	62 d1 7c 48 28 d7    	vmovaps zmm2,zmm15
  a1e422:	62 91 bd 40 14 de    	vunpcklpd zmm3,zmm24,zmm30
  a1e428:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm3
  a1e42f:	0d 
  a1e430:	62 91 7c 48 28 c8    	vmovaps zmm1,zmm24
  a1e436:	62 31 7c 48 28 f5    	vmovaps zmm14,zmm21
  a1e43c:	62 72 5d 48 7f f3    	vpermt2ps zmm14,zmm4,zmm3
  a1e442:	62 71 7c 48 10 79 02 	vmovups zmm15,ZMMWORD PTR [rcx+0x80]
  a1e449:	62 e1 7c 48 10 51 03 	vmovups zmm18,ZMMWORD PTR [rcx+0xc0]
  a1e450:	62 41 0c 48 59 c7    	vmulps zmm24,zmm14,zmm15
  a1e456:	62 22 7d 48 bc c2    	vfnmadd231ps zmm24,zmm0,zmm18
  a1e45c:	62 d1 7c 48 59 c7    	vmulps zmm0,zmm0,zmm15
  a1e462:	62 d2 6d 40 b8 c6    	vfmadd231ps zmm0,zmm18,zmm14
  a1e468:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm0
  a1e46f:	06 
  a1e470:	62 31 fd 40 15 f3    	vunpckhpd zmm14,zmm16,zmm19
  a1e476:	62 51 9d 48 15 db    	vunpckhpd zmm11,zmm12,zmm11
  a1e47c:	62 51 ad 48 15 f9    	vunpckhpd zmm15,zmm10,zmm9
  a1e482:	62 71 bd 48 15 e7    	vunpckhpd zmm12,zmm8,zmm7
  a1e488:	62 51 7c 48 28 ce    	vmovaps zmm9,zmm14
  a1e48e:	62 52 5d 48 7f f3    	vpermt2ps zmm14,zmm4,zmm11
  a1e494:	62 d1 7c 48 28 df    	vmovaps zmm3,zmm15
  a1e49a:	62 52 5d 48 7f fc    	vpermt2ps zmm15,zmm4,zmm12
  a1e4a0:	62 71 7c 48 10 41 17 	vmovups zmm8,ZMMWORD PTR [rcx+0x5c0]
  a1e4a7:	62 71 7c 48 10 51 16 	vmovups zmm10,ZMMWORD PTR [rcx+0x580]
  a1e4ae:	62 d1 04 48 59 fa    	vmulps zmm7,zmm15,zmm10
  a1e4b4:	62 d2 0d 48 bc f8    	vfnmadd231ps zmm7,zmm14,zmm8
  a1e4ba:	62 51 0c 48 59 d2    	vmulps zmm10,zmm14,zmm10
  a1e4c0:	62 52 3d 48 b8 d7    	vfmadd231ps zmm10,zmm8,zmm15
  a1e4c6:	62 e2 5d 48 7f 4c 24 	vpermt2ps zmm17,zmm4,ZMMWORD PTR [rsp+0x600]
  a1e4cd:	18 
  a1e4ce:	62 e2 5d 48 7f 64 24 	vpermt2ps zmm20,zmm4,ZMMWORD PTR [rsp+0x640]
  a1e4d5:	19 
  a1e4d6:	62 71 7c 48 10 41 1f 	vmovups zmm8,ZMMWORD PTR [rcx+0x7c0]
  a1e4dd:	62 71 7c 48 10 71 1e 	vmovups zmm14,ZMMWORD PTR [rcx+0x780]
  a1e4e4:	62 c1 74 40 59 de    	vmulps zmm19,zmm17,zmm14
  a1e4ea:	62 c2 5d 40 b8 d8    	vfmadd231ps zmm19,zmm20,zmm8
  a1e4f0:	62 51 5c 40 59 f6    	vmulps zmm14,zmm20,zmm14
  a1e4f6:	62 32 3d 48 bc f1    	vfnmadd231ps zmm14,zmm8,zmm17
  a1e4fc:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x3c0]
  a1e503:	0f 
  a1e504:	62 f2 5d 48 7f 44 24 	vpermt2ps zmm0,zmm4,ZMMWORD PTR [rsp+0x100]
  a1e50b:	04 
  a1e50c:	62 e1 7c 48 28 44 24 	vmovaps zmm16,ZMMWORD PTR [rsp+0x840]
  a1e513:	21 
  a1e514:	62 e2 5d 48 7f 44 24 	vpermt2ps zmm16,zmm4,ZMMWORD PTR [rsp+0x800]
  a1e51b:	20 
  a1e51c:	62 71 7c 48 10 41 0f 	vmovups zmm8,ZMMWORD PTR [rcx+0x3c0]
  a1e523:	62 71 7c 48 10 79 0e 	vmovups zmm15,ZMMWORD PTR [rcx+0x380]
  a1e52a:	62 c1 7c 40 59 d7    	vmulps zmm18,zmm16,zmm15
  a1e530:	62 c2 7d 48 b8 d0    	vfmadd231ps zmm18,zmm0,zmm8
  a1e536:	62 51 7c 48 59 ff    	vmulps zmm15,zmm0,zmm15
  a1e53c:	62 32 3d 48 bc f8    	vfnmadd231ps zmm15,zmm8,zmm16
  a1e542:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x6c0]
  a1e549:	1b 
  a1e54a:	62 f2 35 40 7f 44 24 	vpermt2ps zmm0,zmm25,ZMMWORD PTR [rsp+0x540]
  a1e551:	15 
  a1e552:	62 62 35 40 7f 54 24 	vpermt2ps zmm26,zmm25,ZMMWORD PTR [rsp+0x500]
  a1e559:	14 
  a1e55a:	62 e1 7c 48 10 41 19 	vmovups zmm16,ZMMWORD PTR [rcx+0x640]
  a1e561:	62 e1 7c 48 10 49 18 	vmovups zmm17,ZMMWORD PTR [rcx+0x600]
  a1e568:	62 31 2c 40 59 c1    	vmulps zmm8,zmm26,zmm17
  a1e56e:	62 32 7d 48 bc c0    	vfnmadd231ps zmm8,zmm0,zmm16
  a1e574:	62 21 7c 48 59 f1    	vmulps zmm30,zmm0,zmm17
  a1e57a:	62 02 7d 40 b8 f2    	vfmadd231ps zmm30,zmm16,zmm26
  a1e580:	62 f1 d5 48 15 6c 24 	vunpckhpd zmm5,zmm5,ZMMWORD PTR [rsp+0xc0]
  a1e587:	03 
  a1e588:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x80]
  a1e58f:	02 
  a1e590:	62 e1 fd 48 15 64 24 	vunpckhpd zmm20,zmm0,ZMMWORD PTR [rsp+0x40]
  a1e597:	01 
  a1e598:	62 81 ed 48 15 c7    	vunpckhpd zmm16,zmm2,zmm31
  a1e59e:	62 61 f5 48 15 7c 24 	vunpckhpd zmm31,zmm1,ZMMWORD PTR [rsp+0x200]
  a1e5a5:	08 
  a1e5a6:	62 61 7c 48 28 d5    	vmovaps zmm26,zmm5
  a1e5ac:	62 b2 5d 48 7f ec    	vpermt2ps zmm5,zmm4,zmm20
  a1e5b2:	62 b1 7c 48 28 d0    	vmovaps zmm2,zmm16
  a1e5b8:	62 82 5d 48 7f c7    	vpermt2ps zmm16,zmm4,zmm31
  a1e5be:	62 f1 7c 48 10 49 07 	vmovups zmm1,ZMMWORD PTR [rcx+0x1c0]
  a1e5c5:	62 f1 7c 48 10 41 06 	vmovups zmm0,ZMMWORD PTR [rcx+0x180]
  a1e5cc:	62 e1 7c 40 59 c8    	vmulps zmm17,zmm16,zmm0
  a1e5d2:	62 e2 55 48 bc c9    	vfnmadd231ps zmm17,zmm5,zmm1
  a1e5d8:	62 f1 54 48 59 e8    	vmulps zmm5,zmm5,zmm0
  a1e5de:	62 b2 75 48 b8 e8    	vfmadd231ps zmm5,zmm1,zmm16
  a1e5e4:	62 f2 35 40 7f 74 24 	vpermt2ps zmm6,zmm25,ZMMWORD PTR [rsp+0x240]
  a1e5eb:	09 
  a1e5ec:	62 02 35 40 7f e3    	vpermt2ps zmm28,zmm25,zmm27
  a1e5f2:	62 f1 7c 48 10 41 09 	vmovups zmm0,ZMMWORD PTR [rcx+0x240]
  a1e5f9:	62 f1 7c 48 10 49 08 	vmovups zmm1,ZMMWORD PTR [rcx+0x200]
  a1e600:	62 e1 1c 40 59 c1    	vmulps zmm16,zmm28,zmm1
  a1e606:	62 e2 4d 48 bc c0    	vfnmadd231ps zmm16,zmm6,zmm0
  a1e60c:	62 f1 4c 48 59 c9    	vmulps zmm1,zmm6,zmm1
  a1e612:	62 92 7d 48 b8 cc    	vfmadd231ps zmm1,zmm0,zmm28
  a1e618:	62 52 35 40 7f cb    	vpermt2ps zmm9,zmm25,zmm11
  a1e61e:	62 d2 35 40 7f dc    	vpermt2ps zmm3,zmm25,zmm12
  a1e624:	62 f1 7c 48 10 41 14 	vmovups zmm0,ZMMWORD PTR [rcx+0x500]
  a1e62b:	62 61 64 48 59 d8    	vmulps zmm27,zmm3,zmm0
  a1e631:	62 61 34 48 59 e0    	vmulps zmm28,zmm9,zmm0
  a1e637:	62 f1 7c 48 10 41 15 	vmovups zmm0,ZMMWORD PTR [rcx+0x540]
  a1e63e:	62 62 7d 48 b8 e3    	vfmadd231ps zmm28,zmm0,zmm3
  a1e644:	62 62 35 48 bc d8    	vfnmadd231ps zmm27,zmm9,zmm0
  a1e64a:	62 22 35 40 7f d4    	vpermt2ps zmm26,zmm25,zmm20
  a1e650:	62 92 35 40 7f d7    	vpermt2ps zmm2,zmm25,zmm31
  a1e656:	62 f1 7c 48 10 41 04 	vmovups zmm0,ZMMWORD PTR [rcx+0x100]
  a1e65d:	62 f1 7c 48 10 59 05 	vmovups zmm3,ZMMWORD PTR [rcx+0x140]
  a1e664:	62 f1 6c 48 59 e0    	vmulps zmm4,zmm2,zmm0
  a1e66a:	62 f2 2d 40 bc e3    	vfnmadd231ps zmm4,zmm26,zmm3
  a1e670:	62 61 2c 40 59 d0    	vmulps zmm26,zmm26,zmm0
  a1e676:	62 62 65 48 b8 d2    	vfmadd231ps zmm26,zmm3,zmm2
  a1e67c:	62 72 35 40 7f 6c 24 	vpermt2ps zmm13,zmm25,ZMMWORD PTR [rsp+0x580]
  a1e683:	16 
  a1e684:	62 e2 35 40 7f 74 24 	vpermt2ps zmm22,zmm25,ZMMWORD PTR [rsp+0x5c0]
  a1e68b:	17 
  a1e68c:	62 f1 7c 48 10 41 11 	vmovups zmm0,ZMMWORD PTR [rcx+0x440]
  a1e693:	62 f1 7c 48 10 51 10 	vmovups zmm2,ZMMWORD PTR [rcx+0x400]
  a1e69a:	62 f1 4c 40 59 da    	vmulps zmm3,zmm22,zmm2
  a1e6a0:	62 f2 15 48 b8 d8    	vfmadd231ps zmm3,zmm13,zmm0
  a1e6a6:	62 f1 14 48 59 d2    	vmulps zmm2,zmm13,zmm2
  a1e6ac:	62 b2 7d 48 bc d6    	vfnmadd231ps zmm2,zmm0,zmm22
  a1e6b2:	62 e2 35 40 7f 7c 24 	vpermt2ps zmm23,zmm25,ZMMWORD PTR [rsp+0x380]
  a1e6b9:	0e 
  a1e6ba:	62 e2 35 40 7f 6c 24 	vpermt2ps zmm21,zmm25,ZMMWORD PTR [rsp+0x340]
  a1e6c1:	0d 
  a1e6c2:	62 61 44 40 5c cb    	vsubps zmm25,zmm23,zmm3
  a1e6c8:	62 31 64 48 58 e7    	vaddps zmm12,zmm3,zmm23
  a1e6ce:	62 11 74 48 5c de    	vsubps zmm11,zmm1,zmm30
  a1e6d4:	62 11 74 48 58 ee    	vaddps zmm13,zmm1,zmm30
  a1e6da:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x440]
  a1e6e1:	11 
  a1e6e2:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x400]
  a1e6e9:	10 
  a1e6ea:	62 f1 7c 48 5c cb    	vsubps zmm1,zmm0,zmm3
  a1e6f0:	62 71 7c 48 58 cb    	vaddps zmm9,zmm0,zmm3
  a1e6f6:	62 a1 6c 40 5c fb    	vsubps zmm23,zmm18,zmm19
  a1e6fc:	62 b1 6c 40 58 c3    	vaddps zmm0,zmm18,zmm19
  a1e702:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm0
  a1e709:	02 
  a1e70a:	62 41 54 48 5c f2    	vsubps zmm30,zmm5,zmm10
  a1e710:	62 d1 54 48 58 c2    	vaddps zmm0,zmm5,zmm10
  a1e716:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a1e71d:	01 
  a1e71e:	62 41 0c 48 5c ff    	vsubps zmm31,zmm14,zmm15
  a1e724:	62 51 04 48 58 d6    	vaddps zmm10,zmm15,zmm14
  a1e72a:	62 71 74 40 5c f7    	vsubps zmm14,zmm17,zmm7
  a1e730:	62 e1 74 40 58 d7    	vaddps zmm18,zmm17,zmm7
  a1e736:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x780]
  a1e73d:	1e 
  a1e73e:	62 91 7c 48 5c fd    	vsubps zmm7,zmm0,zmm29
  a1e744:	62 71 14 40 58 f8    	vaddps zmm15,zmm29,zmm0
  a1e74a:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x2c0]
  a1e751:	0b 
  a1e752:	62 61 3c 40 5c e8    	vsubps zmm29,zmm24,zmm0
  a1e758:	62 e1 3c 40 58 d8    	vaddps zmm19,zmm24,zmm0
  a1e75e:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x300]
  a1e765:	0c 
  a1e766:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x180]
  a1e76d:	06 
  a1e76e:	62 f1 54 48 5c c3    	vsubps zmm0,zmm5,zmm3
  a1e774:	62 f1 54 48 58 db    	vaddps zmm3,zmm5,zmm3
  a1e77a:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm3
  a1e781:	04 
  a1e782:	62 91 5c 48 5c db    	vsubps zmm3,zmm4,zmm27
  a1e788:	62 81 5c 48 58 cb    	vaddps zmm17,zmm4,zmm27
  a1e78e:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x7c0]
  a1e795:	1f 
  a1e796:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x280]
  a1e79d:	0a 
  a1e79e:	62 f1 4c 48 5c e5    	vsubps zmm4,zmm6,zmm5
  a1e7a4:	62 61 4c 48 58 dd    	vaddps zmm27,zmm6,zmm5
  a1e7aa:	62 f1 54 40 5c ea    	vsubps zmm5,zmm21,zmm2
  a1e7b0:	62 e1 54 40 58 e2    	vaddps zmm20,zmm21,zmm2
  a1e7b6:	62 b1 3c 48 5c f0    	vsubps zmm6,zmm8,zmm16
  a1e7bc:	62 c1 7c 40 58 e8    	vaddps zmm21,zmm16,zmm8
  a1e7c2:	62 11 2c 40 5c c4    	vsubps zmm8,zmm26,zmm28
  a1e7c8:	62 91 2c 40 58 d4    	vaddps zmm2,zmm26,zmm28
  a1e7ce:	62 e1 7c 48 28 74 24 	vmovaps zmm22,ZMMWORD PTR [rsp+0x1c0]
  a1e7d5:	07 
  a1e7d6:	62 61 7c 48 28 44 24 	vmovaps zmm24,ZMMWORD PTR [rsp+0x140]
  a1e7dd:	05 
  a1e7de:	62 81 4c 40 5c c0    	vsubps zmm16,zmm22,zmm24
  a1e7e4:	62 81 4c 40 58 f0    	vaddps zmm22,zmm22,zmm24
  a1e7ea:	62 61 7c 40 5c c1    	vsubps zmm24,zmm16,zmm1
  a1e7f0:	62 61 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm24
  a1e7f7:	07 
  a1e7f8:	62 b1 74 48 58 c8    	vaddps zmm1,zmm1,zmm16
  a1e7fe:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm1
  a1e805:	05 
  a1e806:	62 61 34 40 5c c6    	vsubps zmm24,zmm25,zmm6
  a1e80c:	62 91 4c 48 58 c9    	vaddps zmm1,zmm6,zmm25
  a1e812:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm1
  a1e819:	03 
  a1e81a:	62 b1 0c 48 5c cf    	vsubps zmm1,zmm14,zmm23
  a1e820:	62 31 0c 48 58 f7    	vaddps zmm14,zmm14,zmm23
  a1e826:	62 91 0c 40 5c f7    	vsubps zmm6,zmm30,zmm31
  a1e82c:	62 01 0c 40 58 f7    	vaddps zmm30,zmm30,zmm31
  a1e832:	62 61 14 40 5c fc    	vsubps zmm31,zmm29,zmm4
  a1e838:	62 f1 14 40 58 e4    	vaddps zmm4,zmm29,zmm4
  a1e83e:	62 61 7c 48 5c ef    	vsubps zmm29,zmm0,zmm7
  a1e844:	62 f1 7c 48 58 ff    	vaddps zmm7,zmm0,zmm7
  a1e84a:	62 41 64 48 58 d0    	vaddps zmm26,zmm3,zmm8
  a1e850:	62 61 3c 48 5c cb    	vsubps zmm25,zmm8,zmm3
  a1e856:	62 c1 1c 48 5c c5    	vsubps zmm16,zmm12,zmm13
  a1e85c:	62 d1 14 48 58 c4    	vaddps zmm0,zmm13,zmm12
  a1e862:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm0
  a1e869:	11 
  a1e86a:	62 c1 54 48 5c fb    	vsubps zmm23,zmm5,zmm11
  a1e870:	62 41 54 48 58 e3    	vaddps zmm28,zmm5,zmm11
  a1e876:	62 d1 6c 40 5c ea    	vsubps zmm5,zmm18,zmm10
  a1e87c:	62 d1 6c 40 58 c2    	vaddps zmm0,zmm18,zmm10
  a1e882:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm0
  a1e889:	08 
  a1e88a:	62 31 6c 48 5c de    	vsubps zmm11,zmm2,zmm22
  a1e890:	62 31 6c 48 58 e6    	vaddps zmm12,zmm2,zmm22
  a1e896:	62 d1 64 40 5c d7    	vsubps zmm2,zmm19,zmm15
  a1e89c:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x100]
  a1e8a3:	04 
  a1e8a4:	62 11 7c 48 5c d3    	vsubps zmm10,zmm0,zmm27
  a1e8aa:	62 c1 6c 48 58 f2    	vaddps zmm22,zmm2,zmm10
  a1e8b0:	62 f1 2c 48 5c d2    	vsubps zmm2,zmm10,zmm2
  a1e8b6:	62 d1 64 40 58 df    	vaddps zmm3,zmm19,zmm15
  a1e8bc:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm3
  a1e8c3:	06 
  a1e8c4:	62 b1 5c 40 5c dd    	vsubps zmm3,zmm20,zmm21
  a1e8ca:	62 31 5c 40 58 c5    	vaddps zmm8,zmm20,zmm21
  a1e8d0:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm8
  a1e8d7:	10 
  a1e8d8:	62 a1 34 48 5c e1    	vsubps zmm20,zmm9,zmm17
  a1e8de:	62 51 74 40 58 c1    	vaddps zmm8,zmm17,zmm9
  a1e8e4:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm8
  a1e8eb:	0f 
  a1e8ec:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x80]
  a1e8f3:	02 
  a1e8f4:	62 71 7c 48 28 6c 24 	vmovaps zmm13,ZMMWORD PTR [rsp+0x40]
  a1e8fb:	01 
  a1e8fc:	62 51 14 48 5c fa    	vsubps zmm15,zmm13,zmm10
  a1e902:	62 e1 04 48 5c ed    	vsubps zmm21,zmm15,zmm5
  a1e908:	62 d1 54 48 58 ef    	vaddps zmm5,zmm5,zmm15
  a1e90e:	62 72 7d 48 18 05 e8 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff656de8]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a1e915:	6d 65 ff 
  a1e918:	62 c1 14 40 59 d0    	vmulps zmm18,zmm29,zmm8
  a1e91e:	62 72 7d 48 18 0d 3c 	vbroadcastss zmm9,DWORD PTR [rip+0xffffffffff656d3c]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a1e925:	6d 65 ff 
  a1e928:	62 c2 05 40 b8 d1    	vfmadd231ps zmm18,zmm31,zmm9
  a1e92e:	62 41 14 40 59 e9    	vmulps zmm29,zmm29,zmm9
  a1e934:	62 02 3d 48 bc ef    	vfnmadd231ps zmm29,zmm8,zmm31
  a1e93a:	62 41 4c 48 59 f9    	vmulps zmm31,zmm6,zmm9
  a1e940:	62 42 75 48 b8 f8    	vfmadd231ps zmm31,zmm1,zmm8
  a1e946:	62 d1 74 48 59 c9    	vmulps zmm1,zmm1,zmm9
  a1e94c:	62 f2 3d 48 bc ce    	vfnmadd231ps zmm1,zmm8,zmm6
  a1e952:	62 51 44 48 59 f9    	vmulps zmm15,zmm7,zmm9
  a1e958:	62 52 5d 48 b8 f8    	vfmadd231ps zmm15,zmm4,zmm8
  a1e95e:	62 d1 44 48 59 f0    	vmulps zmm6,zmm7,zmm8
  a1e964:	62 f2 35 48 bc f4    	vfnmadd231ps zmm6,zmm9,zmm4
  a1e96a:	62 d1 0c 40 59 e0    	vmulps zmm4,zmm30,zmm8
  a1e970:	62 d2 0d 48 b8 e1    	vfmadd231ps zmm4,zmm14,zmm9
  a1e976:	62 d1 0c 40 59 f9    	vmulps zmm7,zmm30,zmm9
  a1e97c:	62 d2 3d 48 bc fe    	vfnmadd231ps zmm7,zmm8,zmm14
  a1e982:	62 72 7d 48 18 05 10 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff656a10]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a1e989:	6a 65 ff 
  a1e98c:	62 51 34 40 59 f0    	vmulps zmm14,zmm25,zmm8
  a1e992:	62 e1 3c 48 59 4c 24 	vmulps zmm17,zmm8,ZMMWORD PTR [rsp+0x140]
  a1e999:	05 
  a1e99a:	62 21 0c 48 58 c9    	vaddps zmm25,zmm14,zmm17
  a1e9a0:	62 31 0c 48 5c f1    	vsubps zmm14,zmm14,zmm17
  a1e9a6:	62 e1 3c 48 59 4c 24 	vmulps zmm17,zmm8,ZMMWORD PTR [rsp+0x1c0]
  a1e9ad:	07 
  a1e9ae:	62 41 2c 40 59 d0    	vmulps zmm26,zmm26,zmm8
  a1e9b4:	62 01 74 40 5c f2    	vsubps zmm30,zmm17,zmm26
  a1e9ba:	62 21 2c 40 58 d1    	vaddps zmm26,zmm26,zmm17
  a1e9c0:	62 01 7c 48 58 db    	vaddps zmm27,zmm0,zmm27
  a1e9c6:	62 c1 14 48 58 ca    	vaddps zmm17,zmm13,zmm10
  a1e9cc:	62 81 3c 40 5c de    	vsubps zmm19,zmm24,zmm30
  a1e9d2:	62 91 0c 40 58 c0    	vaddps zmm0,zmm30,zmm24
  a1e9d8:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm0
  a1e9df:	07 
  a1e9e0:	62 21 7c 40 5c f4    	vsubps zmm30,zmm16,zmm20
  a1e9e6:	62 b1 5c 40 58 c0    	vaddps zmm0,zmm20,zmm16
  a1e9ec:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm0
  a1e9f3:	05 
  a1e9f4:	62 d1 6c 48 59 d0    	vmulps zmm2,zmm2,zmm8
  a1e9fa:	62 d1 54 48 59 e8    	vmulps zmm5,zmm5,zmm8
  a1ea00:	62 e1 6c 48 58 c5    	vaddps zmm16,zmm2,zmm5
  a1ea06:	62 61 6c 48 5c c5    	vsubps zmm24,zmm2,zmm5
  a1ea0c:	62 11 44 40 5c e9    	vsubps zmm13,zmm23,zmm25
  a1ea12:	62 91 44 40 58 c1    	vaddps zmm0,zmm23,zmm25
  a1ea18:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  a1ea1f:	04 
  a1ea20:	62 41 64 48 5c cb    	vsubps zmm25,zmm3,zmm11
  a1ea26:	62 c1 64 48 58 fb    	vaddps zmm23,zmm3,zmm11
  a1ea2c:	62 d1 54 40 59 d8    	vmulps zmm3,zmm21,zmm8
  a1ea32:	62 c1 4c 40 59 e8    	vmulps zmm21,zmm22,zmm8
  a1ea38:	62 a1 64 48 5c f5    	vsubps zmm22,zmm3,zmm21
  a1ea3e:	62 e1 54 40 58 eb    	vaddps zmm21,zmm21,zmm3
  a1ea44:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0xc0]
  a1ea4b:	03 
  a1ea4c:	62 51 7c 48 5c c6    	vsubps zmm8,zmm0,zmm14
  a1ea52:	62 e1 0c 48 58 e0    	vaddps zmm20,zmm14,zmm0
  a1ea58:	62 11 1c 40 5c ca    	vsubps zmm9,zmm28,zmm26
  a1ea5e:	62 01 1c 40 58 d2    	vaddps zmm26,zmm28,zmm26
  a1ea64:	62 71 14 40 5c d9    	vsubps zmm11,zmm29,zmm1
  a1ea6a:	62 61 14 40 58 e9    	vaddps zmm29,zmm29,zmm1
  a1ea70:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x440]
  a1ea77:	11 
  a1ea78:	62 d1 7c 48 5c ec    	vsubps zmm5,zmm0,zmm12
  a1ea7e:	62 61 1c 48 58 e0    	vaddps zmm28,zmm12,zmm0
  a1ea84:	62 11 6c 40 58 e7    	vaddps zmm12,zmm18,zmm31
  a1ea8a:	62 01 6c 40 5c ff    	vsubps zmm31,zmm18,zmm31
  a1ea90:	62 b1 24 40 5c d9    	vsubps zmm3,zmm27,zmm17
  a1ea96:	62 31 24 40 58 f1    	vaddps zmm14,zmm27,zmm17
  a1ea9c:	62 f1 4c 48 5c d7    	vsubps zmm2,zmm6,zmm7
  a1eaa2:	62 61 4c 48 58 df    	vaddps zmm27,zmm6,zmm7
  a1eaa8:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x400]
  a1eaaf:	10 
  a1eab0:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x3c0]
  a1eab7:	0f 
  a1eab8:	62 f1 7c 48 5c f1    	vsubps zmm6,zmm0,zmm1
  a1eabe:	62 71 7c 48 58 d1    	vaddps zmm10,zmm0,zmm1
  a1eac4:	62 d1 5c 48 5c c7    	vsubps zmm0,zmm4,zmm15
  a1eaca:	62 f1 04 48 58 e4    	vaddps zmm4,zmm15,zmm4
  a1ead0:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x200]
  a1ead7:	08 
  a1ead8:	62 71 7c 48 28 7c 24 	vmovaps zmm15,ZMMWORD PTR [rsp+0x180]
  a1eadf:	06 
  a1eae0:	62 d1 44 48 5c cf    	vsubps zmm1,zmm7,zmm15
  a1eae6:	62 f1 04 48 58 ff    	vaddps zmm7,zmm15,zmm7
  a1eaec:	62 51 64 40 58 fc    	vaddps zmm15,zmm19,zmm12
  a1eaf2:	62 71 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm15
  a1eaf9:	03 
  a1eafa:	62 c1 64 40 5c cc    	vsubps zmm17,zmm19,zmm12
  a1eb00:	62 31 0c 40 5c e6    	vsubps zmm12,zmm30,zmm22
  a1eb06:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm12
  a1eb0d:	02 
  a1eb0e:	62 a1 0c 40 58 f6    	vaddps zmm22,zmm30,zmm22
  a1eb14:	62 41 14 48 5c f3    	vsubps zmm30,zmm13,zmm11
  a1eb1a:	62 51 14 48 58 e3    	vaddps zmm12,zmm13,zmm11
  a1eb20:	62 a1 34 40 5c d0    	vsubps zmm18,zmm25,zmm16
  a1eb26:	62 31 34 40 58 f8    	vaddps zmm15,zmm25,zmm16
  a1eb2c:	62 71 3c 48 5c d8    	vsubps zmm11,zmm8,zmm0
  a1eb32:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm11
  a1eb39:	01 
  a1eb3a:	62 71 3c 48 58 c0    	vaddps zmm8,zmm8,zmm0
  a1eb40:	62 e1 54 48 5c c1    	vsubps zmm16,zmm5,zmm1
  a1eb46:	62 f1 54 48 58 c9    	vaddps zmm1,zmm5,zmm1
  a1eb4c:	62 61 34 48 5c ca    	vsubps zmm25,zmm9,zmm2
  a1eb52:	62 f1 34 48 58 d2    	vaddps zmm2,zmm9,zmm2
  a1eb58:	62 f1 4c 48 5c eb    	vsubps zmm5,zmm6,zmm3
  a1eb5e:	62 f1 4c 48 58 db    	vaddps zmm3,zmm6,zmm3
  a1eb64:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x1c0]
  a1eb6b:	07 
  a1eb6c:	62 91 4c 48 5c c5    	vsubps zmm0,zmm6,zmm29
  a1eb72:	62 91 4c 48 58 f5    	vaddps zmm6,zmm6,zmm29
  a1eb78:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x140]
  a1eb7f:	05 
  a1eb80:	62 11 34 48 5c d8    	vsubps zmm11,zmm9,zmm24
  a1eb86:	62 81 34 48 58 d8    	vaddps zmm19,zmm9,zmm24
  a1eb8c:	62 71 7c 48 28 6c 24 	vmovaps zmm13,ZMMWORD PTR [rsp+0x100]
  a1eb93:	04 
  a1eb94:	62 11 14 48 5c cf    	vsubps zmm9,zmm13,zmm31
  a1eb9a:	62 01 14 48 58 c7    	vaddps zmm24,zmm13,zmm31
  a1eba0:	62 31 44 40 5c ed    	vsubps zmm13,zmm23,zmm21
  a1eba6:	62 a1 44 40 58 ed    	vaddps zmm21,zmm23,zmm21
  a1ebac:	62 81 5c 40 5c fb    	vsubps zmm23,zmm20,zmm27
  a1ebb2:	62 81 5c 40 58 e3    	vaddps zmm20,zmm20,zmm27
  a1ebb8:	62 41 1c 40 5c de    	vsubps zmm27,zmm28,zmm14
  a1ebbe:	62 51 1c 40 58 f6    	vaddps zmm14,zmm28,zmm14
  a1ebc4:	62 61 2c 40 5c e4    	vsubps zmm28,zmm26,zmm4
  a1ebca:	62 f1 2c 40 58 e4    	vaddps zmm4,zmm26,zmm4
  a1ebd0:	62 61 2c 48 5c d7    	vsubps zmm26,zmm10,zmm7
  a1ebd6:	62 f1 2c 48 58 ff    	vaddps zmm7,zmm10,zmm7
  a1ebdc:	62 61 7c 48 28 2d da 	vmovaps zmm29,ZMMWORD PTR [rip+0xffffffffff6710da]        # 8fcc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d170>
  a1ebe3:	10 67 ff 
  a1ebe6:	62 d2 15 40 7f fe    	vpermt2ps zmm7,zmm29,zmm14
  a1ebec:	62 d3 7d 48 19 fa 02 	vextractf32x4 xmm10,zmm7,0x2
  a1ebf3:	c5 78 13 54 16 20    	vmovlps QWORD PTR [rsi+rdx*1+0x20],xmm10
  a1ebf9:	c5 fc 11 3c 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm7
  a1ebfe:	62 b2 15 40 7f e4    	vpermt2ps zmm4,zmm29,zmm20
  a1ec04:	62 f3 7d 48 19 e7 02 	vextractf32x4 xmm7,zmm4,0x2
  a1ec0b:	c5 f8 13 7c 16 48    	vmovlps QWORD PTR [rsi+rdx*1+0x48],xmm7
  a1ec11:	c5 fc 11 64 16 28    	vmovups YMMWORD PTR [rsi+rdx*1+0x28],ymm4
  a1ec17:	62 a2 15 40 7f eb    	vpermt2ps zmm21,zmm29,zmm19
  a1ec1d:	62 e3 7d 48 19 ec 02 	vextractf32x4 xmm4,zmm21,0x2
  a1ec24:	c5 f8 13 64 16 70    	vmovlps QWORD PTR [rsi+rdx*1+0x70],xmm4
  a1ec2a:	62 e1 7c 28 11 ac 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x50],ymm21
  a1ec31:	50 00 00 00 
  a1ec35:	62 62 15 40 7f c6    	vpermt2ps zmm24,zmm29,zmm6
  a1ec3b:	62 63 7d 48 19 c4 02 	vextractf32x4 xmm4,zmm24,0x2
  a1ec42:	c5 f8 13 a4 16 98 00 	vmovlps QWORD PTR [rsi+rdx*1+0x98],xmm4
  a1ec49:	00 00 
  a1ec4b:	62 61 7c 28 11 84 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x78],ymm24
  a1ec52:	78 00 00 00 
  a1ec56:	62 f2 15 40 7f d9    	vpermt2ps zmm3,zmm29,zmm1
  a1ec5c:	62 f3 7d 48 19 d9 02 	vextractf32x4 xmm1,zmm3,0x2
  a1ec63:	c5 f8 13 8c 16 c0 00 	vmovlps QWORD PTR [rsi+rdx*1+0xc0],xmm1
  a1ec6a:	00 00 
  a1ec6c:	c5 fc 11 9c 16 a0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xa0],ymm3
  a1ec73:	00 00 
  a1ec75:	62 d2 15 40 7f d0    	vpermt2ps zmm2,zmm29,zmm8
  a1ec7b:	62 f3 7d 48 19 d1 02 	vextractf32x4 xmm1,zmm2,0x2
  a1ec82:	c5 f8 13 8c 16 e8 00 	vmovlps QWORD PTR [rsi+rdx*1+0xe8],xmm1
  a1ec89:	00 00 
  a1ec8b:	c5 fc 11 94 16 c8 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xc8],ymm2
  a1ec92:	00 00 
  a1ec94:	62 32 15 40 7f fe    	vpermt2ps zmm15,zmm29,zmm22
  a1ec9a:	62 73 7d 48 19 f9 02 	vextractf32x4 xmm1,zmm15,0x2
  a1eca1:	c5 f8 13 8c 16 10 01 	vmovlps QWORD PTR [rsi+rdx*1+0x110],xmm1
  a1eca8:	00 00 
  a1ecaa:	c5 7c 11 bc 16 f0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xf0],ymm15
  a1ecb1:	00 00 
  a1ecb3:	62 32 15 40 7f e1    	vpermt2ps zmm12,zmm29,zmm17
  a1ecb9:	62 73 7d 48 19 e1 02 	vextractf32x4 xmm1,zmm12,0x2
  a1ecc0:	c5 f8 13 8c 16 38 01 	vmovlps QWORD PTR [rsi+rdx*1+0x138],xmm1
  a1ecc7:	00 00 
  a1ecc9:	c5 7c 11 a4 16 18 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x118],ymm12
  a1ecd0:	00 00 
  a1ecd2:	62 02 15 40 7f d3    	vpermt2ps zmm26,zmm29,zmm27
  a1ecd8:	62 63 7d 48 19 d1 02 	vextractf32x4 xmm1,zmm26,0x2
  a1ecdf:	c5 f8 13 8c 16 60 01 	vmovlps QWORD PTR [rsi+rdx*1+0x160],xmm1
  a1ece6:	00 00 
  a1ece8:	62 61 7c 28 11 54 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x140],ymm26
  a1ecef:	0a 
  a1ecf0:	62 22 15 40 7f e7    	vpermt2ps zmm28,zmm29,zmm23
  a1ecf6:	62 63 7d 48 19 e1 02 	vextractf32x4 xmm1,zmm28,0x2
  a1ecfd:	c5 f8 13 8c 16 88 01 	vmovlps QWORD PTR [rsi+rdx*1+0x188],xmm1
  a1ed04:	00 00 
  a1ed06:	62 61 7c 28 11 a4 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x168],ymm28
  a1ed0d:	68 01 00 00 
  a1ed11:	62 52 15 40 7f eb    	vpermt2ps zmm13,zmm29,zmm11
  a1ed17:	62 73 7d 48 19 e9 02 	vextractf32x4 xmm1,zmm13,0x2
  a1ed1e:	c5 f8 13 8c 16 b0 01 	vmovlps QWORD PTR [rsi+rdx*1+0x1b0],xmm1
  a1ed25:	00 00 
  a1ed27:	c5 7c 11 ac 16 90 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x190],ymm13
  a1ed2e:	00 00 
  a1ed30:	62 72 15 40 7f c8    	vpermt2ps zmm9,zmm29,zmm0
  a1ed36:	62 73 7d 48 19 c8 02 	vextractf32x4 xmm0,zmm9,0x2
  a1ed3d:	c5 f8 13 84 16 d8 01 	vmovlps QWORD PTR [rsi+rdx*1+0x1d8],xmm0
  a1ed44:	00 00 
  a1ed46:	c5 7c 11 8c 16 b8 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x1b8],ymm9
  a1ed4d:	00 00 
  a1ed4f:	62 b2 15 40 7f e8    	vpermt2ps zmm5,zmm29,zmm16
  a1ed55:	62 f3 7d 48 19 e8 02 	vextractf32x4 xmm0,zmm5,0x2
  a1ed5c:	c5 f8 13 84 16 00 02 	vmovlps QWORD PTR [rsi+rdx*1+0x200],xmm0
  a1ed63:	00 00 
  a1ed65:	c5 fc 11 ac 16 e0 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x1e0],ymm5
  a1ed6c:	00 00 
  a1ed6e:	62 62 15 40 7f 4c 24 	vpermt2ps zmm25,zmm29,ZMMWORD PTR [rsp+0x40]
  a1ed75:	01 
  a1ed76:	62 63 7d 48 19 c8 02 	vextractf32x4 xmm0,zmm25,0x2
  a1ed7d:	c5 f8 13 84 16 28 02 	vmovlps QWORD PTR [rsi+rdx*1+0x228],xmm0
  a1ed84:	00 00 
  a1ed86:	62 61 7c 28 11 8c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x208],ymm25
  a1ed8d:	08 02 00 00 
  a1ed91:	62 e2 15 40 7f 54 24 	vpermt2ps zmm18,zmm29,ZMMWORD PTR [rsp+0x80]
  a1ed98:	02 
  a1ed99:	62 e3 7d 48 19 d0 02 	vextractf32x4 xmm0,zmm18,0x2
  a1eda0:	c5 f8 13 84 16 50 02 	vmovlps QWORD PTR [rsi+rdx*1+0x250],xmm0
  a1eda7:	00 00 
  a1eda9:	62 e1 7c 28 11 94 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x230],ymm18
  a1edb0:	30 02 00 00 
  a1edb4:	62 62 15 40 7f 74 24 	vpermt2ps zmm30,zmm29,ZMMWORD PTR [rsp+0xc0]
  a1edbb:	03 
  a1edbc:	62 63 7d 48 19 f0 02 	vextractf32x4 xmm0,zmm30,0x2
  a1edc3:	c5 f8 13 84 16 78 02 	vmovlps QWORD PTR [rsi+rdx*1+0x278],xmm0
  a1edca:	00 00 
  a1edcc:	62 61 7c 28 11 b4 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x258],ymm30
  a1edd3:	58 02 00 00 
  a1edd7:	48 81 c2 80 02 00 00 	add    rdx,0x280
  a1edde:	48 39 d0             	cmp    rax,rdx
  a1ede1:	0f 85 f9 ee ff ff    	jne    a1dce0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x60>
  a1ede7:	48 89 ec             	mov    rsp,rbp
  a1edea:	5d                   	pop    rbp
  a1edeb:	c5 f8 77             	vzeroupper
  a1edee:	c3                   	ret
