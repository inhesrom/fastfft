
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a00bc0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a00bc0:	c5 fb 10 47 20       	vmovsd xmm0,QWORD PTR [rdi+0x20]
  a00bc5:	c5 fc 10 0f          	vmovups ymm1,YMMWORD PTR [rdi]
  a00bc9:	c5 fc 10 57 28       	vmovups ymm2,YMMWORD PTR [rdi+0x28]
  a00bce:	c5 fc 10 5f 50       	vmovups ymm3,YMMWORD PTR [rdi+0x50]
  a00bd3:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a00bda:	62 f1 7c 48 28 25 1c 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff68d31c]        # 8df00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b3b0>
  a00be1:	d3 68 ff 
  a00be4:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  a00be8:	62 f1 7c 48 28 f0    	vmovaps zmm6,zmm0
  a00bee:	62 f2 5d 48 7f f1    	vpermt2ps zmm6,zmm4,zmm1
  a00bf4:	62 f1 7c 48 28 2d 42 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff68d342]        # 8df40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b3f0>
  a00bfb:	d3 68 ff 
  a00bfe:	62 f2 55 48 7f c1    	vpermt2ps zmm0,zmm5,zmm1
  a00c04:	c5 fb 10 7f 48       	vmovsd xmm7,QWORD PTR [rdi+0x48]
  a00c09:	62 f3 ed 48 1a ff 01 	vinsertf64x4 zmm7,zmm2,ymm7,0x1
  a00c10:	62 71 7c 48 28 c7    	vmovaps zmm8,zmm7
  a00c16:	62 72 5d 48 7f c1    	vpermt2ps zmm8,zmm4,zmm1
  a00c1c:	62 f2 55 48 7f f9    	vpermt2ps zmm7,zmm5,zmm1
  a00c22:	c5 fb 10 57 70       	vmovsd xmm2,QWORD PTR [rdi+0x70]
  a00c27:	62 f3 e5 48 1a da 01 	vinsertf64x4 zmm3,zmm3,ymm2,0x1
  a00c2e:	62 f2 65 48 77 e1    	vpermi2ps zmm4,zmm3,zmm1
  a00c34:	62 f2 55 48 7f d9    	vpermt2ps zmm3,zmm5,zmm1
  a00c3a:	62 f1 44 48 58 eb    	vaddps zmm5,zmm7,zmm3
  a00c40:	62 71 7c 48 58 cd    	vaddps zmm9,zmm0,zmm5
  a00c46:	62 71 3c 48 58 d4    	vaddps zmm10,zmm8,zmm4
  a00c4c:	62 d1 4c 48 58 d2    	vaddps zmm2,zmm6,zmm10
  a00c52:	62 72 7d 48 18 1d 04 	vbroadcastss zmm11,DWORD PTR [rip+0xffffffffff674804]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a00c59:	48 67 ff 
  a00c5c:	62 f2 25 48 bc c5    	vfnmadd231ps zmm0,zmm11,zmm5
  a00c62:	62 f1 3c 48 5c e4    	vsubps zmm4,zmm8,zmm4
  a00c68:	62 72 7d 48 18 05 62 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff674662]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a00c6f:	46 67 ff 
  a00c72:	62 d1 5c 48 59 e0    	vmulps zmm4,zmm4,zmm8
  a00c78:	62 f1 7c 48 58 ec    	vaddps zmm5,zmm0,zmm4
  a00c7e:	62 d2 2d 48 bc f3    	vfnmadd231ps zmm6,zmm10,zmm11
  a00c84:	62 f1 44 48 5c db    	vsubps zmm3,zmm7,zmm3
  a00c8a:	62 d1 64 48 59 f8    	vmulps zmm7,zmm3,zmm8
  a00c90:	62 f1 4c 48 5c df    	vsubps zmm3,zmm6,zmm7
  a00c96:	62 f1 7c 48 5c c4    	vsubps zmm0,zmm0,zmm4
  a00c9c:	62 f1 44 48 58 e6    	vaddps zmm4,zmm7,zmm6
  a00ca2:	62 f1 7c 48 28 3d d4 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff6c62d4]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a00ca9:	62 6c ff 
  a00cac:	62 72 45 48 7f c9    	vpermt2ps zmm9,zmm7,zmm1
  a00cb2:	62 f2 45 48 7f e9    	vpermt2ps zmm5,zmm7,zmm1
  a00cb8:	62 f2 45 48 7f c1    	vpermt2ps zmm0,zmm7,zmm1
  a00cbe:	c4 41 38 57 c0       	vxorps xmm8,xmm8,xmm8
  a00cc3:	62 52 45 48 7f c0    	vpermt2ps zmm8,zmm7,zmm8
  a00cc9:	62 f1 7c 48 28 35 2d 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff6c622d]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a00cd0:	62 6c ff 
  a00cd3:	62 51 7c 48 28 d1    	vmovaps zmm10,zmm9
  a00cd9:	62 52 4d 48 7f d0    	vpermt2ps zmm10,zmm6,zmm8
  a00cdf:	62 71 7c 48 28 1d 57 	vmovaps zmm11,ZMMWORD PTR [rip+0xffffffffff6c6257]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a00ce6:	62 6c ff 
  a00ce9:	62 52 25 48 7f c8    	vpermt2ps zmm9,zmm11,zmm8
  a00cef:	62 71 7c 48 28 e5    	vmovaps zmm12,zmm5
  a00cf5:	62 52 4d 48 7f e0    	vpermt2ps zmm12,zmm6,zmm8
  a00cfb:	62 d2 25 48 7f e8    	vpermt2ps zmm5,zmm11,zmm8
  a00d01:	62 71 7c 48 28 e8    	vmovaps zmm13,zmm0
  a00d07:	62 52 4d 48 7f e8    	vpermt2ps zmm13,zmm6,zmm8
  a00d0d:	62 d2 25 48 7f c0    	vpermt2ps zmm0,zmm11,zmm8
  a00d13:	62 f1 b5 48 14 c0    	vunpcklpd zmm0,zmm9,zmm0
  a00d19:	62 51 7c 48 28 c8    	vmovaps zmm9,zmm8
  a00d1f:	62 52 4d 48 7f c8    	vpermt2ps zmm9,zmm6,zmm8
  a00d25:	62 f2 45 48 7f d1    	vpermt2ps zmm2,zmm7,zmm1
  a00d2b:	62 f2 45 48 7f d9    	vpermt2ps zmm3,zmm7,zmm1
  a00d31:	62 f2 45 48 7f e1    	vpermt2ps zmm4,zmm7,zmm1
  a00d37:	62 f1 7c 48 28 fa    	vmovaps zmm7,zmm2
  a00d3d:	62 d2 4d 48 7f f8    	vpermt2ps zmm7,zmm6,zmm8
  a00d43:	62 d2 25 48 7f d0    	vpermt2ps zmm2,zmm11,zmm8
  a00d49:	62 71 7c 48 28 f3    	vmovaps zmm14,zmm3
  a00d4f:	62 52 4d 48 7f f0    	vpermt2ps zmm14,zmm6,zmm8
  a00d55:	62 d2 25 48 7f d8    	vpermt2ps zmm3,zmm11,zmm8
  a00d5b:	62 d2 5d 48 77 f0    	vpermi2ps zmm6,zmm4,zmm8
  a00d61:	62 d2 25 48 7f e0    	vpermt2ps zmm4,zmm11,zmm8
  a00d67:	62 52 25 48 7f c0    	vpermt2ps zmm8,zmm11,zmm8
  a00d6d:	62 51 ad 48 14 dd    	vunpcklpd zmm11,zmm10,zmm13
  a00d73:	62 51 ad 48 15 d5    	vunpckhpd zmm10,zmm10,zmm13
  a00d79:	62 51 9d 48 14 e9    	vunpcklpd zmm13,zmm12,zmm9
  a00d7f:	62 51 9d 48 15 e1    	vunpckhpd zmm12,zmm12,zmm9
  a00d85:	62 d1 d5 48 14 e8    	vunpcklpd zmm5,zmm5,zmm8
  a00d8b:	62 71 7c 48 28 3d 6b 	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff6c606b]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a00d92:	60 6c ff 
  a00d95:	62 d1 7c 48 28 cb    	vmovaps zmm1,zmm11
  a00d9b:	62 d2 05 48 7f cd    	vpermt2ps zmm1,zmm15,zmm13
  a00da1:	62 e1 7c 48 28 05 95 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff6c6095]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a00da8:	60 6c ff 
  a00dab:	62 52 7d 40 7f dd    	vpermt2ps zmm11,zmm16,zmm13
  a00db1:	62 51 7c 48 28 ea    	vmovaps zmm13,zmm10
  a00db7:	62 52 05 48 7f ec    	vpermt2ps zmm13,zmm15,zmm12
  a00dbd:	62 52 7d 40 7f d4    	vpermt2ps zmm10,zmm16,zmm12
  a00dc3:	62 f2 05 48 7f c5    	vpermt2ps zmm0,zmm15,zmm5
  a00dc9:	62 f1 ed 48 14 e4    	vunpcklpd zmm4,zmm2,zmm4
  a00dcf:	62 f1 c5 48 14 ee    	vunpcklpd zmm5,zmm7,zmm6
  a00dd5:	62 f1 c5 48 15 f6    	vunpckhpd zmm6,zmm7,zmm6
  a00ddb:	62 d1 8d 48 14 f9    	vunpcklpd zmm7,zmm14,zmm9
  a00de1:	62 51 8d 48 15 c9    	vunpckhpd zmm9,zmm14,zmm9
  a00de7:	62 d1 e5 48 14 d8    	vunpcklpd zmm3,zmm3,zmm8
  a00ded:	62 f1 7c 48 28 d5    	vmovaps zmm2,zmm5
  a00df3:	62 f2 05 48 7f d7    	vpermt2ps zmm2,zmm15,zmm7
  a00df9:	62 f2 7d 40 7f ef    	vpermt2ps zmm5,zmm16,zmm7
  a00dff:	62 f1 7c 48 28 fe    	vmovaps zmm7,zmm6
  a00e05:	62 d2 05 48 7f f9    	vpermt2ps zmm7,zmm15,zmm9
  a00e0b:	62 d2 7d 40 7f f1    	vpermt2ps zmm6,zmm16,zmm9
  a00e11:	62 f2 05 48 7f e3    	vpermt2ps zmm4,zmm15,zmm3
  a00e17:	62 f1 7c 48 10 5a 02 	vmovups zmm3,ZMMWORD PTR [rdx+0x80]
  a00e1e:	62 71 7c 48 10 42 03 	vmovups zmm8,ZMMWORD PTR [rdx+0xc0]
  a00e25:	62 71 7c 48 10 4a 04 	vmovups zmm9,ZMMWORD PTR [rdx+0x100]
  a00e2c:	62 71 7c 48 10 62 05 	vmovups zmm12,ZMMWORD PTR [rdx+0x140]
  a00e33:	62 71 7c 48 10 72 06 	vmovups zmm14,ZMMWORD PTR [rdx+0x180]
  a00e3a:	62 71 7c 48 10 7a 07 	vmovups zmm15,ZMMWORD PTR [rdx+0x1c0]
  a00e41:	62 e1 7c 48 10 42 08 	vmovups zmm16,ZMMWORD PTR [rdx+0x200]
  a00e48:	62 e1 7c 48 10 4a 09 	vmovups zmm17,ZMMWORD PTR [rdx+0x240]
  a00e4f:	62 e1 24 48 59 d3    	vmulps zmm18,zmm11,zmm3
  a00e55:	62 c2 55 48 bc d0    	vfnmadd231ps zmm18,zmm5,zmm8
  a00e5b:	62 a1 7c 48 59 d8    	vmulps zmm19,zmm0,zmm16
  a00e61:	62 a2 5d 48 bc d9    	vfnmadd231ps zmm19,zmm4,zmm17
  a00e67:	62 a1 6c 40 58 e3    	vaddps zmm20,zmm18,zmm19
  a00e6d:	62 c1 14 48 59 e9    	vmulps zmm21,zmm13,zmm9
  a00e73:	62 c2 45 48 bc ec    	vfnmadd231ps zmm21,zmm7,zmm12
  a00e79:	62 c1 2c 48 59 f6    	vmulps zmm22,zmm10,zmm14
  a00e7f:	62 c2 4d 48 bc f7    	vfnmadd231ps zmm22,zmm6,zmm15
  a00e85:	62 a1 54 40 58 fe    	vaddps zmm23,zmm21,zmm22
  a00e8b:	62 f1 54 48 59 db    	vmulps zmm3,zmm5,zmm3
  a00e91:	62 d2 3d 48 b8 db    	vfmadd231ps zmm3,zmm8,zmm11
  a00e97:	62 b1 5c 48 59 e8    	vmulps zmm5,zmm4,zmm16
  a00e9d:	62 f2 75 40 b8 e8    	vfmadd231ps zmm5,zmm17,zmm0
  a00ea3:	62 71 64 48 58 c5    	vaddps zmm8,zmm3,zmm5
  a00ea9:	62 d1 44 48 59 f9    	vmulps zmm7,zmm7,zmm9
  a00eaf:	62 d2 1d 48 b8 fd    	vfmadd231ps zmm7,zmm12,zmm13
  a00eb5:	62 d1 4c 48 59 f6    	vmulps zmm6,zmm6,zmm14
  a00ebb:	62 d2 05 48 b8 f2    	vfmadd231ps zmm6,zmm15,zmm10
  a00ec1:	62 71 44 48 58 ce    	vaddps zmm9,zmm7,zmm6
  a00ec7:	62 72 7d 48 18 15 17 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff674817]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a00ece:	48 67 ff 
  a00ed1:	62 d1 7c 48 28 c2    	vmovaps zmm0,zmm10
  a00ed7:	62 f2 5d 40 a8 c1    	vfmadd213ps zmm0,zmm20,zmm1
  a00edd:	62 f2 7d 48 18 25 5d 	vbroadcastss zmm4,DWORD PTR [rip+0xffffffffff67475d]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a00ee4:	47 67 ff 
  a00ee7:	62 f2 45 40 bc c4    	vfnmadd231ps zmm0,zmm23,zmm4
  a00eed:	62 71 64 48 5c dd    	vsubps zmm11,zmm3,zmm5
  a00ef3:	62 f1 44 48 5c fe    	vsubps zmm7,zmm7,zmm6
  a00ef9:	62 72 7d 48 18 25 55 	vbroadcastss zmm12,DWORD PTR [rip+0xffffffffff674855]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a00f00:	48 67 ff 
  a00f03:	62 d1 44 48 59 dc    	vmulps zmm3,zmm7,zmm12
  a00f09:	62 72 7d 48 18 2d 8d 	vbroadcastss zmm13,DWORD PTR [rip+0xffffffffff67448d]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a00f10:	44 67 ff 
  a00f13:	62 d2 25 48 b8 dd    	vfmadd231ps zmm3,zmm11,zmm13
  a00f19:	62 d1 7c 48 28 ea    	vmovaps zmm5,zmm10
  a00f1f:	62 f2 3d 48 a8 ea    	vfmadd213ps zmm5,zmm8,zmm2
  a00f25:	62 f2 35 48 bc ec    	vfnmadd231ps zmm5,zmm9,zmm4
  a00f2b:	62 31 6c 40 5c f3    	vsubps zmm14,zmm18,zmm19
  a00f31:	62 31 54 40 5c fe    	vsubps zmm15,zmm21,zmm22
  a00f37:	62 d1 04 48 59 f4    	vmulps zmm6,zmm15,zmm12
  a00f3d:	62 d2 0d 48 b8 f5    	vfmadd231ps zmm6,zmm14,zmm13
  a00f43:	62 e1 7c 48 28 c4    	vmovaps zmm16,zmm4
  a00f49:	62 e2 5d 40 ac c1    	vfnmadd213ps zmm16,zmm20,zmm1
  a00f4f:	62 c2 45 40 b8 c2    	vfmadd231ps zmm16,zmm23,zmm10
  a00f55:	62 51 24 48 59 dc    	vmulps zmm11,zmm11,zmm12
  a00f5b:	62 72 15 48 bc df    	vfnmadd231ps zmm11,zmm13,zmm7
  a00f61:	62 f2 3d 48 ac e2    	vfnmadd213ps zmm4,zmm8,zmm2
  a00f67:	62 d2 35 48 b8 e2    	vfmadd231ps zmm4,zmm9,zmm10
  a00f6d:	62 d1 0c 48 59 fc    	vmulps zmm7,zmm14,zmm12
  a00f73:	62 d2 05 48 bc fd    	vfnmadd231ps zmm7,zmm15,zmm13
  a00f79:	62 b1 74 28 58 cc    	vaddps ymm1,ymm1,ymm20
  a00f7f:	62 b1 74 28 58 cf    	vaddps ymm1,ymm1,ymm23
  a00f85:	c5 b8 58 d2          	vaddps xmm2,xmm8,xmm2
  a00f89:	c5 b0 58 d2          	vaddps xmm2,xmm9,xmm2
  a00f8d:	c5 7c 28 05 2b 73 67 	vmovaps ymm8,YMMWORD PTR [rip+0xffffffffff67732b]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  a00f94:	ff 
  a00f95:	62 f2 3d 28 7f d1    	vpermt2ps ymm2,ymm8,ymm1
  a00f9b:	c5 f8 11 16          	vmovups XMMWORD PTR [rsi],xmm2
  a00f9f:	c4 e3 7d 19 d1 01    	vextractf128 xmm1,ymm2,0x1
  a00fa5:	c5 f8 13 4e 10       	vmovlps QWORD PTR [rsi+0x10],xmm1
  a00faa:	c5 fc 58 cb          	vaddps ymm1,ymm0,ymm3
  a00fae:	c5 d0 5c d6          	vsubps xmm2,xmm5,xmm6
  a00fb2:	62 f2 3d 28 7f d1    	vpermt2ps ymm2,ymm8,ymm1
  a00fb8:	c5 f8 11 56 18       	vmovups XMMWORD PTR [rsi+0x18],xmm2
  a00fbd:	c4 e3 7d 19 d1 01    	vextractf128 xmm1,ymm2,0x1
  a00fc3:	c5 f8 13 4e 28       	vmovlps QWORD PTR [rsi+0x28],xmm1
  a00fc8:	62 d1 7c 20 58 cb    	vaddps ymm1,ymm16,ymm11
  a00fce:	c5 d8 5c d7          	vsubps xmm2,xmm4,xmm7
  a00fd2:	62 f2 3d 28 7f d1    	vpermt2ps ymm2,ymm8,ymm1
  a00fd8:	c5 f8 11 56 30       	vmovups XMMWORD PTR [rsi+0x30],xmm2
  a00fdd:	c4 e3 7d 19 d1 01    	vextractf128 xmm1,ymm2,0x1
  a00fe3:	c5 f8 13 4e 40       	vmovlps QWORD PTR [rsi+0x40],xmm1
  a00fe8:	62 d1 7c 20 5c cb    	vsubps ymm1,ymm16,ymm11
  a00fee:	c5 d8 58 d7          	vaddps xmm2,xmm4,xmm7
  a00ff2:	62 f2 3d 28 7f d1    	vpermt2ps ymm2,ymm8,ymm1
  a00ff8:	c5 f8 11 56 48       	vmovups XMMWORD PTR [rsi+0x48],xmm2
  a00ffd:	c4 e3 7d 19 d1 01    	vextractf128 xmm1,ymm2,0x1
  a01003:	c5 f8 13 4e 58       	vmovlps QWORD PTR [rsi+0x58],xmm1
  a01008:	c5 fc 5c c3          	vsubps ymm0,ymm0,ymm3
  a0100c:	c5 d0 58 ce          	vaddps xmm1,xmm5,xmm6
  a01010:	62 f2 3d 28 7f c8    	vpermt2ps ymm1,ymm8,ymm0
  a01016:	c5 f8 11 4e 60       	vmovups XMMWORD PTR [rsi+0x60],xmm1
  a0101b:	c4 e3 7d 19 c8 01    	vextractf128 xmm0,ymm1,0x1
  a01021:	c5 f8 13 46 70       	vmovlps QWORD PTR [rsi+0x70],xmm0
  a01026:	c5 f8 77             	vzeroupper
  a01029:	c3                   	ret
