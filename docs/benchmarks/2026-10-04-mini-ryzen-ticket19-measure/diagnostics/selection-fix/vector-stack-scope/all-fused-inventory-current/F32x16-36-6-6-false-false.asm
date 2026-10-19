
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a38a40 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a38a40:	55                   	push   rbp
  a38a41:	48 89 e5             	mov    rbp,rsp
  a38a44:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a38a48:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  a38a4f:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  a38a54:	48 8d 44 24 40       	lea    rax,[rsp+0x40]
  a38a59:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  a38a5e:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  a38a63:	c5 f8 10 47 20       	vmovups xmm0,XMMWORD PTR [rdi+0x20]
  a38a68:	c4 e3 79 21 47 24 10 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x24],0x10
  a38a6f:	c4 e2 79 18 4f 28    	vbroadcastss xmm1,DWORD PTR [rdi+0x28]
  a38a75:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a38a7b:	c4 e3 79 21 47 2c 30 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x2c],0x30
  a38a82:	c5 fc 10 0f          	vmovups ymm1,YMMWORD PTR [rdi]
  a38a86:	62 f3 75 48 18 d8 02 	vinsertf32x4 zmm3,zmm1,xmm0,0x2
  a38a8d:	62 f1 7c 48 28 35 69 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff658769]        # 91200 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e6b0>
  a38a94:	87 65 ff 
  a38a97:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a38a9b:	62 f1 7c 48 28 e3    	vmovaps zmm4,zmm3
  a38aa1:	62 f2 4d 48 7f e2    	vpermt2ps zmm4,zmm6,zmm2
  a38aa7:	62 f1 7c 48 28 05 8f 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff65878f]        # 91240 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e6f0>
  a38aae:	87 65 ff 
  a38ab1:	c5 f8 10 4f 50       	vmovups xmm1,XMMWORD PTR [rdi+0x50]
  a38ab6:	c4 e3 71 21 4f 54 10 	vinsertps xmm1,xmm1,DWORD PTR [rdi+0x54],0x10
  a38abd:	c4 e2 79 18 6f 58    	vbroadcastss xmm5,DWORD PTR [rdi+0x58]
  a38ac3:	62 f2 7d 48 7f da    	vpermt2ps zmm3,zmm0,zmm2
  a38ac9:	c4 e3 51 0c c9 03    	vblendps xmm1,xmm5,xmm1,0x3
  a38acf:	c4 e3 71 21 4f 5c 30 	vinsertps xmm1,xmm1,DWORD PTR [rdi+0x5c],0x30
  a38ad6:	c5 fc 10 6f 30       	vmovups ymm5,YMMWORD PTR [rdi+0x30]
  a38adb:	62 f3 55 48 18 c9 02 	vinsertf32x4 zmm1,zmm5,xmm1,0x2
  a38ae2:	62 f1 7c 48 28 f9    	vmovaps zmm7,zmm1
  a38ae8:	62 f2 4d 48 7f fa    	vpermt2ps zmm7,zmm6,zmm2
  a38aee:	62 f2 7d 48 7f ca    	vpermt2ps zmm1,zmm0,zmm2
  a38af4:	c5 f8 10 af 80 00 00 	vmovups xmm5,XMMWORD PTR [rdi+0x80]
  a38afb:	00 
  a38afc:	c4 e3 51 21 af 84 00 	vinsertps xmm5,xmm5,DWORD PTR [rdi+0x84],0x10
  a38b03:	00 00 10 
  a38b06:	c5 7c 10 47 60       	vmovups ymm8,YMMWORD PTR [rdi+0x60]
  a38b0b:	c4 62 79 18 8f 88 00 	vbroadcastss xmm9,DWORD PTR [rdi+0x88]
  a38b12:	00 00 
  a38b14:	c4 e3 31 0c ed 03    	vblendps xmm5,xmm9,xmm5,0x3
  a38b1a:	c4 e3 51 21 af 8c 00 	vinsertps xmm5,xmm5,DWORD PTR [rdi+0x8c],0x30
  a38b21:	00 00 30 
  a38b24:	62 f3 3d 48 18 ed 02 	vinsertf32x4 zmm5,zmm8,xmm5,0x2
  a38b2b:	62 71 7c 48 28 d5    	vmovaps zmm10,zmm5
  a38b31:	62 72 4d 48 7f d2    	vpermt2ps zmm10,zmm6,zmm2
  a38b37:	62 f2 7d 48 7f ea    	vpermt2ps zmm5,zmm0,zmm2
  a38b3d:	c5 78 10 87 b0 00 00 	vmovups xmm8,XMMWORD PTR [rdi+0xb0]
  a38b44:	00 
  a38b45:	c5 7c 10 8f 90 00 00 	vmovups ymm9,YMMWORD PTR [rdi+0x90]
  a38b4c:	00 
  a38b4d:	c4 63 39 21 87 b4 00 	vinsertps xmm8,xmm8,DWORD PTR [rdi+0xb4],0x10
  a38b54:	00 00 10 
  a38b57:	c4 62 79 18 9f b8 00 	vbroadcastss xmm11,DWORD PTR [rdi+0xb8]
  a38b5e:	00 00 
  a38b60:	c4 43 21 0c c0 03    	vblendps xmm8,xmm11,xmm8,0x3
  a38b66:	c4 63 39 21 87 bc 00 	vinsertps xmm8,xmm8,DWORD PTR [rdi+0xbc],0x30
  a38b6d:	00 00 30 
  a38b70:	62 53 35 48 18 c8 02 	vinsertf32x4 zmm9,zmm9,xmm8,0x2
  a38b77:	62 51 7c 48 28 c1    	vmovaps zmm8,zmm9
  a38b7d:	62 72 4d 48 7f c2    	vpermt2ps zmm8,zmm6,zmm2
  a38b83:	62 72 7d 48 7f ca    	vpermt2ps zmm9,zmm0,zmm2
  a38b89:	c5 78 10 9f e0 00 00 	vmovups xmm11,XMMWORD PTR [rdi+0xe0]
  a38b90:	00 
  a38b91:	c4 63 21 21 9f e4 00 	vinsertps xmm11,xmm11,DWORD PTR [rdi+0xe4],0x10
  a38b98:	00 00 10 
  a38b9b:	c4 62 79 18 a7 e8 00 	vbroadcastss xmm12,DWORD PTR [rdi+0xe8]
  a38ba2:	00 00 
  a38ba4:	c5 7c 10 af c0 00 00 	vmovups ymm13,YMMWORD PTR [rdi+0xc0]
  a38bab:	00 
  a38bac:	c4 43 19 0c db 03    	vblendps xmm11,xmm12,xmm11,0x3
  a38bb2:	c4 63 21 21 9f ec 00 	vinsertps xmm11,xmm11,DWORD PTR [rdi+0xec],0x30
  a38bb9:	00 00 30 
  a38bbc:	62 53 15 48 18 e3 02 	vinsertf32x4 zmm12,zmm13,xmm11,0x2
  a38bc3:	62 51 7c 48 28 ec    	vmovaps zmm13,zmm12
  a38bc9:	62 72 4d 48 7f ea    	vpermt2ps zmm13,zmm6,zmm2
  a38bcf:	c5 78 10 9f 10 01 00 	vmovups xmm11,XMMWORD PTR [rdi+0x110]
  a38bd6:	00 
  a38bd7:	c4 63 21 21 9f 14 01 	vinsertps xmm11,xmm11,DWORD PTR [rdi+0x114],0x10
  a38bde:	00 00 10 
  a38be1:	c4 62 79 18 b7 18 01 	vbroadcastss xmm14,DWORD PTR [rdi+0x118]
  a38be8:	00 00 
  a38bea:	62 72 7d 48 7f e2    	vpermt2ps zmm12,zmm0,zmm2
  a38bf0:	c4 43 09 0c db 03    	vblendps xmm11,xmm14,xmm11,0x3
  a38bf6:	c4 63 21 21 9f 1c 01 	vinsertps xmm11,xmm11,DWORD PTR [rdi+0x11c],0x30
  a38bfd:	00 00 30 
  a38c00:	c5 7c 10 b7 f0 00 00 	vmovups ymm14,YMMWORD PTR [rdi+0xf0]
  a38c07:	00 
  a38c08:	62 53 0d 48 18 f3 02 	vinsertf32x4 zmm14,zmm14,xmm11,0x2
  a38c0f:	62 f2 0d 48 77 f2    	vpermi2ps zmm6,zmm14,zmm2
  a38c15:	62 72 7d 48 7f f2    	vpermt2ps zmm14,zmm0,zmm2
  a38c1b:	62 51 2c 48 58 fd    	vaddps zmm15,zmm10,zmm13
  a38c21:	62 c1 5c 48 58 c7    	vaddps zmm16,zmm4,zmm15
  a38c27:	62 e1 4c 48 58 cf    	vaddps zmm17,zmm6,zmm7
  a38c2d:	62 a1 3c 48 58 d1    	vaddps zmm18,zmm8,zmm17
  a38c33:	62 31 7c 40 58 da    	vaddps zmm11,zmm16,zmm18
  a38c39:	62 c1 54 48 58 dc    	vaddps zmm19,zmm5,zmm12
  a38c3f:	62 f2 7d 48 18 05 17 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff63c817]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a38c46:	c8 63 ff 
  a38c49:	62 d2 7d 48 bc e7    	vfnmadd231ps zmm4,zmm0,zmm15
  a38c4f:	62 31 64 48 58 fb    	vaddps zmm15,zmm3,zmm19
  a38c55:	62 51 54 48 5c e4    	vsubps zmm12,zmm5,zmm12
  a38c5b:	62 e1 0c 48 58 e1    	vaddps zmm20,zmm14,zmm1
  a38c61:	62 32 7d 48 bc c1    	vfnmadd231ps zmm8,zmm0,zmm17
  a38c67:	62 a1 34 48 58 cc    	vaddps zmm17,zmm9,zmm20
  a38c6d:	62 71 0c 48 5c f1    	vsubps zmm14,zmm14,zmm1
  a38c73:	62 b1 04 48 58 e9    	vaddps zmm5,zmm15,zmm17
  a38c79:	62 b2 7d 48 bc db    	vfnmadd231ps zmm3,zmm0,zmm19
  a38c7f:	62 f2 7d 48 18 0d 4b 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff63c64b]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a38c86:	c6 63 ff 
  a38c89:	62 71 1c 48 59 e1    	vmulps zmm12,zmm12,zmm1
  a38c8f:	62 51 2c 48 5c d5    	vsubps zmm10,zmm10,zmm13
  a38c95:	62 51 5c 48 58 ec    	vaddps zmm13,zmm4,zmm12
  a38c9b:	62 71 0c 48 59 f1    	vmulps zmm14,zmm14,zmm1
  a38ca1:	62 32 7d 48 bc cc    	vfnmadd231ps zmm9,zmm0,zmm20
  a38ca7:	62 c1 3c 48 58 de    	vaddps zmm19,zmm8,zmm14
  a38cad:	62 f1 4c 48 5c f7    	vsubps zmm6,zmm6,zmm7
  a38cb3:	62 b1 14 48 5c fb    	vsubps zmm7,zmm13,zmm19
  a38cb9:	62 71 2c 48 59 d1    	vmulps zmm10,zmm10,zmm1
  a38cbf:	62 d1 5c 48 5c e4    	vsubps zmm4,zmm4,zmm12
  a38cc5:	62 51 64 48 5c e2    	vsubps zmm12,zmm3,zmm10
  a38ccb:	62 f1 4c 48 59 f1    	vmulps zmm6,zmm6,zmm1
  a38cd1:	62 c1 3c 48 5c e6    	vsubps zmm20,zmm8,zmm14
  a38cd7:	62 71 34 48 5c f6    	vsubps zmm14,zmm9,zmm6
  a38cdd:	62 f1 2c 48 58 db    	vaddps zmm3,zmm10,zmm3
  a38ce3:	62 51 1c 48 5c c6    	vsubps zmm8,zmm12,zmm14
  a38ce9:	62 d1 4c 48 58 f1    	vaddps zmm6,zmm6,zmm9
  a38cef:	62 a1 5c 48 58 ec    	vaddps zmm21,zmm4,zmm20
  a38cf5:	62 a1 7c 40 5c d2    	vsubps zmm18,zmm16,zmm18
  a38cfb:	62 71 64 48 58 d6    	vaddps zmm10,zmm3,zmm6
  a38d01:	62 31 04 48 5c c9    	vsubps zmm9,zmm15,zmm17
  a38d07:	62 a1 14 48 58 cb    	vaddps zmm17,zmm13,zmm19
  a38d0d:	62 51 1c 48 58 f6    	vaddps zmm14,zmm12,zmm14
  a38d13:	62 b1 5c 48 5c e4    	vsubps zmm4,zmm4,zmm20
  a38d19:	62 71 64 48 5c e6    	vsubps zmm12,zmm3,zmm6
  a38d1f:	62 e1 7c 48 28 1d 57 	vmovaps zmm19,ZMMWORD PTR [rip+0xffffffffff68e257]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a38d26:	e2 68 ff 
  a38d29:	62 72 65 40 7f da    	vpermt2ps zmm11,zmm19,zmm2
  a38d2f:	62 f2 65 40 7f fa    	vpermt2ps zmm7,zmm19,zmm2
  a38d35:	62 e2 65 40 7f ea    	vpermt2ps zmm21,zmm19,zmm2
  a38d3b:	62 e2 65 40 7f d2    	vpermt2ps zmm18,zmm19,zmm2
  a38d41:	62 e2 65 40 7f ca    	vpermt2ps zmm17,zmm19,zmm2
  a38d47:	62 f2 65 40 7f e2    	vpermt2ps zmm4,zmm19,zmm2
  a38d4d:	c4 41 00 57 ff       	vxorps xmm15,xmm15,xmm15
  a38d52:	62 52 65 40 7f ff    	vpermt2ps zmm15,zmm19,zmm15
  a38d58:	62 71 7c 48 28 2d 9e 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff68e19e]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a38d5f:	e1 68 ff 
  a38d62:	62 d1 7c 48 28 f3    	vmovaps zmm6,zmm11
  a38d68:	62 b2 15 48 7f f1    	vpermt2ps zmm6,zmm13,zmm17
  a38d6e:	62 e1 7c 48 28 05 c8 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff68e1c8]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a38d75:	e1 68 ff 
  a38d78:	62 32 7d 40 7f d9    	vpermt2ps zmm11,zmm16,zmm17
  a38d7e:	62 e1 7c 48 28 cf    	vmovaps zmm17,zmm7
  a38d84:	62 e2 15 48 7f cc    	vpermt2ps zmm17,zmm13,zmm4
  a38d8a:	62 f2 7d 40 7f fc    	vpermt2ps zmm7,zmm16,zmm4
  a38d90:	62 a1 7c 48 28 e5    	vmovaps zmm20,zmm21
  a38d96:	62 c2 15 48 7f e7    	vpermt2ps zmm20,zmm13,zmm15
  a38d9c:	62 c2 7d 40 7f ef    	vpermt2ps zmm21,zmm16,zmm15
  a38da2:	62 b1 a5 48 14 e5    	vunpcklpd zmm4,zmm11,zmm21
  a38da8:	62 31 7c 48 28 da    	vmovaps zmm11,zmm18
  a38dae:	62 52 15 48 7f df    	vpermt2ps zmm11,zmm13,zmm15
  a38db4:	62 c2 7d 40 7f d7    	vpermt2ps zmm18,zmm16,zmm15
  a38dba:	62 a1 c5 48 14 d2    	vunpcklpd zmm18,zmm7,zmm18
  a38dc0:	62 b1 cd 48 14 dc    	vunpcklpd zmm3,zmm6,zmm20
  a38dc6:	62 b1 cd 48 15 f4    	vunpckhpd zmm6,zmm6,zmm20
  a38dcc:	62 c1 f5 40 14 e3    	vunpcklpd zmm20,zmm17,zmm11
  a38dd2:	62 51 f5 40 15 db    	vunpckhpd zmm11,zmm17,zmm11
  a38dd8:	62 f1 7c 48 28 3d 1e 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff68e01e]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a38ddf:	e0 68 ff 
  a38de2:	62 f2 65 40 7f ea    	vpermt2ps zmm5,zmm19,zmm2
  a38de8:	62 72 65 40 7f c2    	vpermt2ps zmm8,zmm19,zmm2
  a38dee:	62 72 65 40 7f d2    	vpermt2ps zmm10,zmm19,zmm2
  a38df4:	62 72 65 40 7f ca    	vpermt2ps zmm9,zmm19,zmm2
  a38dfa:	62 72 65 40 7f f2    	vpermt2ps zmm14,zmm19,zmm2
  a38e00:	62 72 65 40 7f e2    	vpermt2ps zmm12,zmm19,zmm2
  a38e06:	62 f1 7c 48 28 d3    	vmovaps zmm2,zmm3
  a38e0c:	62 b2 45 48 7f d4    	vpermt2ps zmm2,zmm7,zmm20
  a38e12:	62 e1 7c 48 28 1d 24 	vmovaps zmm19,ZMMWORD PTR [rip+0xffffffffff68e024]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a38e19:	e0 68 ff 
  a38e1c:	62 b2 65 40 7f dc    	vpermt2ps zmm3,zmm19,zmm20
  a38e22:	62 e1 7c 48 28 ce    	vmovaps zmm17,zmm6
  a38e28:	62 c2 45 48 7f cb    	vpermt2ps zmm17,zmm7,zmm11
  a38e2e:	62 d2 65 40 7f f3    	vpermt2ps zmm6,zmm19,zmm11
  a38e34:	62 71 7c 48 28 dc    	vmovaps zmm11,zmm4
  a38e3a:	62 32 45 48 7f da    	vpermt2ps zmm11,zmm7,zmm18
  a38e40:	62 b2 65 40 7f e2    	vpermt2ps zmm4,zmm19,zmm18
  a38e46:	62 e1 7c 48 28 d5    	vmovaps zmm18,zmm5
  a38e4c:	62 c2 15 48 7f d6    	vpermt2ps zmm18,zmm13,zmm14
  a38e52:	62 d2 7d 40 7f ee    	vpermt2ps zmm5,zmm16,zmm14
  a38e58:	62 51 7c 48 28 f0    	vmovaps zmm14,zmm8
  a38e5e:	62 52 15 48 7f f4    	vpermt2ps zmm14,zmm13,zmm12
  a38e64:	62 52 7d 40 7f c4    	vpermt2ps zmm8,zmm16,zmm12
  a38e6a:	62 51 7c 48 28 e2    	vmovaps zmm12,zmm10
  a38e70:	62 52 7d 40 7f d7    	vpermt2ps zmm10,zmm16,zmm15
  a38e76:	62 51 d5 48 14 d2    	vunpcklpd zmm10,zmm5,zmm10
  a38e7c:	62 52 15 48 7f e7    	vpermt2ps zmm12,zmm13,zmm15
  a38e82:	62 52 35 48 77 ef    	vpermi2ps zmm13,zmm9,zmm15
  a38e88:	62 52 7d 40 7f cf    	vpermt2ps zmm9,zmm16,zmm15
  a38e8e:	62 51 bd 48 14 c1    	vunpcklpd zmm8,zmm8,zmm9
  a38e94:	62 51 ed 40 14 cc    	vunpcklpd zmm9,zmm18,zmm12
  a38e9a:	62 51 ed 40 15 e4    	vunpckhpd zmm12,zmm18,zmm12
  a38ea0:	62 51 8d 48 14 fd    	vunpcklpd zmm15,zmm14,zmm13
  a38ea6:	62 51 8d 48 15 ed    	vunpckhpd zmm13,zmm14,zmm13
  a38eac:	62 d1 7c 48 28 e9    	vmovaps zmm5,zmm9
  a38eb2:	62 d2 45 48 7f ef    	vpermt2ps zmm5,zmm7,zmm15
  a38eb8:	62 52 65 40 7f cf    	vpermt2ps zmm9,zmm19,zmm15
  a38ebe:	62 51 7c 48 28 f4    	vmovaps zmm14,zmm12
  a38ec4:	62 52 45 48 7f f5    	vpermt2ps zmm14,zmm7,zmm13
  a38eca:	62 52 65 40 7f e5    	vpermt2ps zmm12,zmm19,zmm13
  a38ed0:	62 d2 2d 48 77 f8    	vpermi2ps zmm7,zmm10,zmm8
  a38ed6:	62 52 65 40 7f d0    	vpermt2ps zmm10,zmm19,zmm8
  a38edc:	62 71 7c 48 10 6a 02 	vmovups zmm13,ZMMWORD PTR [rdx+0x80]
  a38ee3:	62 71 7c 48 10 7a 03 	vmovups zmm15,ZMMWORD PTR [rdx+0xc0]
  a38eea:	62 e1 7c 48 10 42 04 	vmovups zmm16,ZMMWORD PTR [rdx+0x100]
  a38ef1:	62 e1 7c 48 10 52 05 	vmovups zmm18,ZMMWORD PTR [rdx+0x140]
  a38ef8:	62 31 74 40 59 c0    	vmulps zmm8,zmm17,zmm16
  a38efe:	62 32 0d 48 bc c2    	vfnmadd231ps zmm8,zmm14,zmm18
  a38f04:	62 31 0c 48 59 f0    	vmulps zmm14,zmm14,zmm16
  a38f0a:	62 e1 7c 48 10 42 08 	vmovups zmm16,ZMMWORD PTR [rdx+0x200]
  a38f11:	62 32 6d 40 b8 f1    	vfmadd231ps zmm14,zmm18,zmm17
  a38f17:	62 e1 7c 48 10 4a 09 	vmovups zmm17,ZMMWORD PTR [rdx+0x240]
  a38f1e:	62 a1 24 48 59 d0    	vmulps zmm18,zmm11,zmm16
  a38f24:	62 a2 45 48 bc d1    	vfnmadd231ps zmm18,zmm7,zmm17
  a38f2a:	62 b1 44 48 59 f8    	vmulps zmm7,zmm7,zmm16
  a38f30:	62 e1 7c 48 10 42 06 	vmovups zmm16,ZMMWORD PTR [rdx+0x180]
  a38f37:	62 d2 75 40 b8 fb    	vfmadd231ps zmm7,zmm17,zmm11
  a38f3d:	62 71 7c 48 10 5a 07 	vmovups zmm11,ZMMWORD PTR [rdx+0x1c0]
  a38f44:	62 a1 4c 48 59 c8    	vmulps zmm17,zmm6,zmm16
  a38f4a:	62 c2 1d 48 bc cb    	vfnmadd231ps zmm17,zmm12,zmm11
  a38f50:	62 31 1c 48 59 e0    	vmulps zmm12,zmm12,zmm16
  a38f56:	62 e1 7c 48 10 42 0a 	vmovups zmm16,ZMMWORD PTR [rdx+0x280]
  a38f5d:	62 72 25 48 b8 e6    	vfmadd231ps zmm12,zmm11,zmm6
  a38f63:	62 f1 7c 48 10 72 0b 	vmovups zmm6,ZMMWORD PTR [rdx+0x2c0]
  a38f6a:	62 31 5c 48 59 d8    	vmulps zmm11,zmm4,zmm16
  a38f70:	62 72 2d 48 bc de    	vfnmadd231ps zmm11,zmm10,zmm6
  a38f76:	62 31 2c 48 59 d0    	vmulps zmm10,zmm10,zmm16
  a38f7c:	62 a1 3c 48 58 c2    	vaddps zmm16,zmm8,zmm18
  a38f82:	62 72 4d 48 b8 d4    	vfmadd231ps zmm10,zmm6,zmm4
  a38f88:	62 b1 6c 48 58 e0    	vaddps zmm4,zmm2,zmm16
  a38f8e:	62 d1 64 48 59 f5    	vmulps zmm6,zmm3,zmm13
  a38f94:	62 d2 35 48 bc f7    	vfnmadd231ps zmm6,zmm9,zmm15
  a38f9a:	62 51 34 48 59 cd    	vmulps zmm9,zmm9,zmm13
  a38fa0:	62 71 24 48 58 ee    	vaddps zmm13,zmm11,zmm6
  a38fa6:	62 72 05 48 b8 cb    	vfmadd231ps zmm9,zmm15,zmm3
  a38fac:	62 d1 74 40 58 dd    	vaddps zmm3,zmm17,zmm13
  a38fb2:	62 71 0c 48 58 ff    	vaddps zmm15,zmm14,zmm7
  a38fb8:	62 b2 7d 48 bc d0    	vfnmadd231ps zmm2,zmm0,zmm16
  a38fbe:	62 e1 04 48 58 c5    	vaddps zmm16,zmm15,zmm5
  a38fc4:	62 c2 7d 48 bc cd    	vfnmadd231ps zmm17,zmm0,zmm13
  a38fca:	62 51 2c 48 58 e9    	vaddps zmm13,zmm10,zmm9
  a38fd0:	62 d2 7d 48 bc ef    	vfnmadd231ps zmm5,zmm0,zmm15
  a38fd6:	62 51 1c 48 58 fd    	vaddps zmm15,zmm12,zmm13
  a38fdc:	62 72 15 48 bc e0    	vfnmadd231ps zmm12,zmm13,zmm0
  a38fe2:	62 f1 0c 48 5c c7    	vsubps zmm0,zmm14,zmm7
  a38fe8:	62 d1 2c 48 5c f9    	vsubps zmm7,zmm10,zmm9
  a38fee:	62 31 3c 48 5c c2    	vsubps zmm8,zmm8,zmm18
  a38ff4:	62 f1 24 48 5c f6    	vsubps zmm6,zmm11,zmm6
  a38ffa:	62 f1 7c 48 59 c1    	vmulps zmm0,zmm0,zmm1
  a39000:	62 f1 44 48 59 f9    	vmulps zmm7,zmm7,zmm1
  a39006:	62 71 3c 48 59 c1    	vmulps zmm8,zmm8,zmm1
  a3900c:	62 f1 4c 48 59 c9    	vmulps zmm1,zmm6,zmm1
  a39012:	62 f1 6c 48 58 f0    	vaddps zmm6,zmm2,zmm0
  a39018:	62 f1 6c 48 5c c0    	vsubps zmm0,zmm2,zmm0
  a3901e:	62 f1 74 40 58 d7    	vaddps zmm2,zmm17,zmm7
  a39024:	62 f1 74 40 5c ff    	vsubps zmm7,zmm17,zmm7
  a3902a:	62 51 54 48 5c c8    	vsubps zmm9,zmm5,zmm8
  a39030:	62 f1 3c 48 58 ed    	vaddps zmm5,zmm8,zmm5
  a39036:	62 71 1c 48 5c c1    	vsubps zmm8,zmm12,zmm1
  a3903c:	62 f1 1c 48 58 c9    	vaddps zmm1,zmm12,zmm1
  a39042:	62 71 4c 48 5c d2    	vsubps zmm10,zmm6,zmm2
  a39048:	62 f1 4c 48 58 d2    	vaddps zmm2,zmm6,zmm2
  a3904e:	62 d1 34 48 5c f0    	vsubps zmm6,zmm9,zmm8
  a39054:	62 51 34 48 58 c0    	vaddps zmm8,zmm9,zmm8
  a3905a:	62 71 7c 48 58 cf    	vaddps zmm9,zmm0,zmm7
  a39060:	62 f1 7c 48 5c c7    	vsubps zmm0,zmm0,zmm7
  a39066:	62 f1 54 48 58 f9    	vaddps zmm7,zmm5,zmm1
  a3906c:	62 f1 54 48 5c c9    	vsubps zmm1,zmm5,zmm1
  a39072:	62 f1 5c 48 5c eb    	vsubps zmm5,zmm4,zmm3
  a39078:	62 f1 5c 48 58 db    	vaddps zmm3,zmm4,zmm3
  a3907e:	62 d1 7c 40 5c e7    	vsubps zmm4,zmm16,zmm15
  a39084:	62 51 7c 40 58 df    	vaddps zmm11,zmm16,zmm15
  a3908a:	62 71 7c 48 28 25 ec 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff6581ec]        # 91280 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e730>
  a39091:	81 65 ff 
  a39094:	62 d2 1d 48 7f db    	vpermt2ps zmm3,zmm12,zmm11
  a3909a:	62 72 1d 48 7f d6    	vpermt2ps zmm10,zmm12,zmm6
  a390a0:	62 72 1d 48 7f cf    	vpermt2ps zmm9,zmm12,zmm7
  a390a6:	62 f2 1d 48 7f ec    	vpermt2ps zmm5,zmm12,zmm4
  a390ac:	62 d2 1d 48 7f d0    	vpermt2ps zmm2,zmm12,zmm8
  a390b2:	62 f2 1d 48 7f c1    	vpermt2ps zmm0,zmm12,zmm1
  a390b8:	62 f3 7d 48 19 5e 02 	vextractf32x4 XMMWORD PTR [rsi+0x20],zmm3,0x2
  a390bf:	02 
  a390c0:	c5 fc 11 1e          	vmovups YMMWORD PTR [rsi],ymm3
  a390c4:	62 73 7d 48 19 56 05 	vextractf32x4 XMMWORD PTR [rsi+0x50],zmm10,0x2
  a390cb:	02 
  a390cc:	c5 7c 11 56 30       	vmovups YMMWORD PTR [rsi+0x30],ymm10
  a390d1:	62 73 7d 48 19 4e 08 	vextractf32x4 XMMWORD PTR [rsi+0x80],zmm9,0x2
  a390d8:	02 
  a390d9:	c5 7c 11 4e 60       	vmovups YMMWORD PTR [rsi+0x60],ymm9
  a390de:	62 f3 7d 48 19 6e 0b 	vextractf32x4 XMMWORD PTR [rsi+0xb0],zmm5,0x2
  a390e5:	02 
  a390e6:	c5 fc 11 ae 90 00 00 	vmovups YMMWORD PTR [rsi+0x90],ymm5
  a390ed:	00 
  a390ee:	62 f3 7d 48 19 56 0e 	vextractf32x4 XMMWORD PTR [rsi+0xe0],zmm2,0x2
  a390f5:	02 
  a390f6:	c5 fc 11 96 c0 00 00 	vmovups YMMWORD PTR [rsi+0xc0],ymm2
  a390fd:	00 
  a390fe:	62 f3 7d 48 19 46 11 	vextractf32x4 XMMWORD PTR [rsi+0x110],zmm0,0x2
  a39105:	02 
  a39106:	c5 fc 11 86 f0 00 00 	vmovups YMMWORD PTR [rsi+0xf0],ymm0
  a3910d:	00 
  a3910e:	48 89 ec             	mov    rsp,rbp
  a39111:	5d                   	pop    rbp
  a39112:	c5 f8 77             	vzeroupper
  a39115:	c3                   	ret
