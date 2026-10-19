
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a5c8c0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a5c8c0:	c5 f8 10 47 20       	vmovups xmm0,XMMWORD PTR [rdi+0x20]
  a5c8c5:	c4 e3 79 21 47 24 10 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x24],0x10
  a5c8cc:	c4 e2 79 18 4f 28    	vbroadcastss xmm1,DWORD PTR [rdi+0x28]
  a5c8d2:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a5c8d8:	c4 e3 79 21 47 2c 30 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x2c],0x30
  a5c8df:	c5 fc 10 0f          	vmovups ymm1,YMMWORD PTR [rdi]
  a5c8e3:	62 f3 75 48 18 e0 02 	vinsertf32x4 zmm4,zmm1,xmm0,0x2
  a5c8ea:	62 f1 7c 48 28 0d 8c 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff636c8c]        # 93580 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20a30>
  a5c8f1:	6c 63 ff 
  a5c8f4:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a5c8f8:	62 f1 7c 48 28 dc    	vmovaps zmm3,zmm4
  a5c8fe:	62 f2 75 48 7f da    	vpermt2ps zmm3,zmm1,zmm2
  a5c904:	62 f1 7c 48 28 05 b2 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff636cb2]        # 935c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20a70>
  a5c90b:	6c 63 ff 
  a5c90e:	c5 f8 10 6f 50       	vmovups xmm5,XMMWORD PTR [rdi+0x50]
  a5c913:	c4 e3 51 21 6f 54 10 	vinsertps xmm5,xmm5,DWORD PTR [rdi+0x54],0x10
  a5c91a:	c4 e2 79 18 77 58    	vbroadcastss xmm6,DWORD PTR [rdi+0x58]
  a5c920:	62 f2 7d 48 7f e2    	vpermt2ps zmm4,zmm0,zmm2
  a5c926:	c4 e3 49 0c ed 03    	vblendps xmm5,xmm6,xmm5,0x3
  a5c92c:	c4 e3 51 21 6f 5c 30 	vinsertps xmm5,xmm5,DWORD PTR [rdi+0x5c],0x30
  a5c933:	c5 fc 10 77 30       	vmovups ymm6,YMMWORD PTR [rdi+0x30]
  a5c938:	62 f3 4d 48 18 f5 02 	vinsertf32x4 zmm6,zmm6,xmm5,0x2
  a5c93f:	62 f1 7c 48 28 ee    	vmovaps zmm5,zmm6
  a5c945:	62 f2 75 48 7f ea    	vpermt2ps zmm5,zmm1,zmm2
  a5c94b:	62 f2 7d 48 7f f2    	vpermt2ps zmm6,zmm0,zmm2
  a5c951:	c5 f8 10 bf 80 00 00 	vmovups xmm7,XMMWORD PTR [rdi+0x80]
  a5c958:	00 
  a5c959:	c4 e3 41 21 bf 84 00 	vinsertps xmm7,xmm7,DWORD PTR [rdi+0x84],0x10
  a5c960:	00 00 10 
  a5c963:	c5 7c 10 47 60       	vmovups ymm8,YMMWORD PTR [rdi+0x60]
  a5c968:	c4 62 79 18 8f 88 00 	vbroadcastss xmm9,DWORD PTR [rdi+0x88]
  a5c96f:	00 00 
  a5c971:	c4 e3 31 0c ff 03    	vblendps xmm7,xmm9,xmm7,0x3
  a5c977:	c4 e3 41 21 bf 8c 00 	vinsertps xmm7,xmm7,DWORD PTR [rdi+0x8c],0x30
  a5c97e:	00 00 30 
  a5c981:	62 73 3d 48 18 d7 02 	vinsertf32x4 zmm10,zmm8,xmm7,0x2
  a5c988:	62 51 7c 48 28 da    	vmovaps zmm11,zmm10
  a5c98e:	62 72 75 48 7f da    	vpermt2ps zmm11,zmm1,zmm2
  a5c994:	62 72 7d 48 7f d2    	vpermt2ps zmm10,zmm0,zmm2
  a5c99a:	c5 f8 10 bf b0 00 00 	vmovups xmm7,XMMWORD PTR [rdi+0xb0]
  a5c9a1:	00 
  a5c9a2:	c5 7c 10 87 90 00 00 	vmovups ymm8,YMMWORD PTR [rdi+0x90]
  a5c9a9:	00 
  a5c9aa:	c4 e3 41 21 bf b4 00 	vinsertps xmm7,xmm7,DWORD PTR [rdi+0xb4],0x10
  a5c9b1:	00 00 10 
  a5c9b4:	c4 62 79 18 8f b8 00 	vbroadcastss xmm9,DWORD PTR [rdi+0xb8]
  a5c9bb:	00 00 
  a5c9bd:	c4 e3 31 0c ff 03    	vblendps xmm7,xmm9,xmm7,0x3
  a5c9c3:	c4 e3 41 21 bf bc 00 	vinsertps xmm7,xmm7,DWORD PTR [rdi+0xbc],0x30
  a5c9ca:	00 00 30 
  a5c9cd:	62 73 3d 48 18 c7 02 	vinsertf32x4 zmm8,zmm8,xmm7,0x2
  a5c9d4:	62 51 7c 48 28 c8    	vmovaps zmm9,zmm8
  a5c9da:	62 72 75 48 7f ca    	vpermt2ps zmm9,zmm1,zmm2
  a5c9e0:	62 72 7d 48 7f c2    	vpermt2ps zmm8,zmm0,zmm2
  a5c9e6:	c5 f8 10 bf e0 00 00 	vmovups xmm7,XMMWORD PTR [rdi+0xe0]
  a5c9ed:	00 
  a5c9ee:	c4 e3 41 21 bf e4 00 	vinsertps xmm7,xmm7,DWORD PTR [rdi+0xe4],0x10
  a5c9f5:	00 00 10 
  a5c9f8:	c4 62 79 18 a7 e8 00 	vbroadcastss xmm12,DWORD PTR [rdi+0xe8]
  a5c9ff:	00 00 
  a5ca01:	c5 7c 10 af c0 00 00 	vmovups ymm13,YMMWORD PTR [rdi+0xc0]
  a5ca08:	00 
  a5ca09:	c4 e3 19 0c ff 03    	vblendps xmm7,xmm12,xmm7,0x3
  a5ca0f:	c4 e3 41 21 bf ec 00 	vinsertps xmm7,xmm7,DWORD PTR [rdi+0xec],0x30
  a5ca16:	00 00 30 
  a5ca19:	62 73 15 48 18 e7 02 	vinsertf32x4 zmm12,zmm13,xmm7,0x2
  a5ca20:	62 51 7c 48 28 ec    	vmovaps zmm13,zmm12
  a5ca26:	62 72 75 48 7f ea    	vpermt2ps zmm13,zmm1,zmm2
  a5ca2c:	c5 f8 10 bf 10 01 00 	vmovups xmm7,XMMWORD PTR [rdi+0x110]
  a5ca33:	00 
  a5ca34:	c4 e3 41 21 bf 14 01 	vinsertps xmm7,xmm7,DWORD PTR [rdi+0x114],0x10
  a5ca3b:	00 00 10 
  a5ca3e:	c4 62 79 18 b7 18 01 	vbroadcastss xmm14,DWORD PTR [rdi+0x118]
  a5ca45:	00 00 
  a5ca47:	62 72 7d 48 7f e2    	vpermt2ps zmm12,zmm0,zmm2
  a5ca4d:	c4 e3 09 0c ff 03    	vblendps xmm7,xmm14,xmm7,0x3
  a5ca53:	c4 e3 41 21 bf 1c 01 	vinsertps xmm7,xmm7,DWORD PTR [rdi+0x11c],0x30
  a5ca5a:	00 00 30 
  a5ca5d:	c5 7c 10 b7 f0 00 00 	vmovups ymm14,YMMWORD PTR [rdi+0xf0]
  a5ca64:	00 
  a5ca65:	62 73 0d 48 18 f7 02 	vinsertf32x4 zmm14,zmm14,xmm7,0x2
  a5ca6c:	62 f2 0d 48 77 ca    	vpermi2ps zmm1,zmm14,zmm2
  a5ca72:	62 72 7d 48 7f f2    	vpermt2ps zmm14,zmm0,zmm2
  a5ca78:	62 51 2c 48 58 fc    	vaddps zmm15,zmm10,zmm12
  a5ca7e:	62 c1 5c 48 58 c7    	vaddps zmm16,zmm4,zmm15
  a5ca84:	62 e1 0c 48 58 ce    	vaddps zmm17,zmm14,zmm6
  a5ca8a:	62 a1 3c 48 58 d1    	vaddps zmm18,zmm8,zmm17
  a5ca90:	62 b1 7c 40 58 fa    	vaddps zmm7,zmm16,zmm18
  a5ca96:	62 c1 24 48 58 dd    	vaddps zmm19,zmm11,zmm13
  a5ca9c:	62 f2 7d 48 18 05 ba 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff6189ba]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a5caa3:	89 61 ff 
  a5caa6:	62 d2 7d 48 bc e7    	vfnmadd231ps zmm4,zmm0,zmm15
  a5caac:	62 31 64 48 58 fb    	vaddps zmm15,zmm3,zmm19
  a5cab2:	62 51 24 48 5c dd    	vsubps zmm11,zmm11,zmm13
  a5cab8:	62 71 74 48 58 ed    	vaddps zmm13,zmm1,zmm5
  a5cabe:	62 32 7d 48 bc c1    	vfnmadd231ps zmm8,zmm0,zmm17
  a5cac4:	62 c1 34 48 58 cd    	vaddps zmm17,zmm9,zmm13
  a5caca:	62 e1 74 48 5c e5    	vsubps zmm20,zmm1,zmm5
  a5cad0:	62 b1 04 48 58 e9    	vaddps zmm5,zmm15,zmm17
  a5cad6:	62 b2 7d 48 bc db    	vfnmadd231ps zmm3,zmm0,zmm19
  a5cadc:	62 f2 7d 48 18 0d ee 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff6187ee]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a5cae3:	87 61 ff 
  a5cae6:	62 71 24 48 59 d9    	vmulps zmm11,zmm11,zmm1
  a5caec:	62 51 2c 48 5c d4    	vsubps zmm10,zmm10,zmm12
  a5caf2:	62 51 5c 48 58 e3    	vaddps zmm12,zmm4,zmm11
  a5caf8:	62 e1 5c 40 59 d9    	vmulps zmm19,zmm20,zmm1
  a5cafe:	62 52 7d 48 bc cd    	vfnmadd231ps zmm9,zmm0,zmm13
  a5cb04:	62 31 3c 48 58 eb    	vaddps zmm13,zmm8,zmm19
  a5cb0a:	62 f1 0c 48 5c f6    	vsubps zmm6,zmm14,zmm6
  a5cb10:	62 c1 1c 48 5c e5    	vsubps zmm20,zmm12,zmm13
  a5cb16:	62 71 2c 48 59 d1    	vmulps zmm10,zmm10,zmm1
  a5cb1c:	62 d1 5c 48 5c e3    	vsubps zmm4,zmm4,zmm11
  a5cb22:	62 51 64 48 5c da    	vsubps zmm11,zmm3,zmm10
  a5cb28:	62 f1 4c 48 59 f1    	vmulps zmm6,zmm6,zmm1
  a5cb2e:	62 31 3c 48 5c f3    	vsubps zmm14,zmm8,zmm19
  a5cb34:	62 e1 34 48 5c de    	vsubps zmm19,zmm9,zmm6
  a5cb3a:	62 f1 2c 48 58 db    	vaddps zmm3,zmm10,zmm3
  a5cb40:	62 31 24 48 5c c3    	vsubps zmm8,zmm11,zmm19
  a5cb46:	62 d1 4c 48 58 f1    	vaddps zmm6,zmm6,zmm9
  a5cb4c:	62 c1 5c 48 58 ee    	vaddps zmm21,zmm4,zmm14
  a5cb52:	62 a1 7c 40 5c d2    	vsubps zmm18,zmm16,zmm18
  a5cb58:	62 71 64 48 58 d6    	vaddps zmm10,zmm3,zmm6
  a5cb5e:	62 31 04 48 5c c9    	vsubps zmm9,zmm15,zmm17
  a5cb64:	62 51 1c 48 58 fd    	vaddps zmm15,zmm12,zmm13
  a5cb6a:	62 31 24 48 58 eb    	vaddps zmm13,zmm11,zmm19
  a5cb70:	62 d1 5c 48 5c e6    	vsubps zmm4,zmm4,zmm14
  a5cb76:	62 71 64 48 5c de    	vsubps zmm11,zmm3,zmm6
  a5cb7c:	62 e1 7c 48 28 0d fa 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff66a3fa]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a5cb83:	a3 66 ff 
  a5cb86:	62 f2 75 40 7f fa    	vpermt2ps zmm7,zmm17,zmm2
  a5cb8c:	62 e2 75 40 7f e2    	vpermt2ps zmm20,zmm17,zmm2
  a5cb92:	62 e2 75 40 7f ea    	vpermt2ps zmm21,zmm17,zmm2
  a5cb98:	62 e2 75 40 7f d2    	vpermt2ps zmm18,zmm17,zmm2
  a5cb9e:	62 72 75 40 7f fa    	vpermt2ps zmm15,zmm17,zmm2
  a5cba4:	62 f2 75 40 7f e2    	vpermt2ps zmm4,zmm17,zmm2
  a5cbaa:	c4 41 08 57 f6       	vxorps xmm14,xmm14,xmm14
  a5cbaf:	62 52 75 40 7f f6    	vpermt2ps zmm14,zmm17,zmm14
  a5cbb5:	62 71 7c 48 28 25 41 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff66a341]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a5cbbc:	a3 66 ff 
  a5cbbf:	62 f1 7c 48 28 f7    	vmovaps zmm6,zmm7
  a5cbc5:	62 d2 1d 48 7f f7    	vpermt2ps zmm6,zmm12,zmm15
  a5cbcb:	62 e1 7c 48 28 05 6b 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff66a36b]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a5cbd2:	a3 66 ff 
  a5cbd5:	62 d2 7d 40 7f ff    	vpermt2ps zmm7,zmm16,zmm15
  a5cbdb:	62 31 7c 48 28 fc    	vmovaps zmm15,zmm20
  a5cbe1:	62 72 1d 48 7f fc    	vpermt2ps zmm15,zmm12,zmm4
  a5cbe7:	62 e2 7d 40 7f e4    	vpermt2ps zmm20,zmm16,zmm4
  a5cbed:	62 a1 7c 48 28 dd    	vmovaps zmm19,zmm21
  a5cbf3:	62 c2 1d 48 7f de    	vpermt2ps zmm19,zmm12,zmm14
  a5cbf9:	62 c2 7d 40 7f ee    	vpermt2ps zmm21,zmm16,zmm14
  a5cbff:	62 b1 c5 48 14 e5    	vunpcklpd zmm4,zmm7,zmm21
  a5cc05:	62 b1 7c 48 28 fa    	vmovaps zmm7,zmm18
  a5cc0b:	62 d2 1d 48 7f fe    	vpermt2ps zmm7,zmm12,zmm14
  a5cc11:	62 c2 7d 40 7f d6    	vpermt2ps zmm18,zmm16,zmm14
  a5cc17:	62 a1 dd 40 14 d2    	vunpcklpd zmm18,zmm20,zmm18
  a5cc1d:	62 b1 cd 48 14 db    	vunpcklpd zmm3,zmm6,zmm19
  a5cc23:	62 b1 cd 48 15 f3    	vunpckhpd zmm6,zmm6,zmm19
  a5cc29:	62 e1 85 48 14 df    	vunpcklpd zmm19,zmm15,zmm7
  a5cc2f:	62 71 85 48 15 ff    	vunpckhpd zmm15,zmm15,zmm7
  a5cc35:	62 f1 7c 48 28 3d c1 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff66a1c1]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a5cc3c:	a1 66 ff 
  a5cc3f:	62 f2 75 40 7f ea    	vpermt2ps zmm5,zmm17,zmm2
  a5cc45:	62 72 75 40 7f c2    	vpermt2ps zmm8,zmm17,zmm2
  a5cc4b:	62 72 75 40 7f d2    	vpermt2ps zmm10,zmm17,zmm2
  a5cc51:	62 72 75 40 7f ca    	vpermt2ps zmm9,zmm17,zmm2
  a5cc57:	62 72 75 40 7f ea    	vpermt2ps zmm13,zmm17,zmm2
  a5cc5d:	62 72 75 40 7f da    	vpermt2ps zmm11,zmm17,zmm2
  a5cc63:	62 f1 7c 48 28 d3    	vmovaps zmm2,zmm3
  a5cc69:	62 b2 45 48 7f d3    	vpermt2ps zmm2,zmm7,zmm19
  a5cc6f:	62 e1 7c 48 28 25 c7 	vmovaps zmm20,ZMMWORD PTR [rip+0xffffffffff66a1c7]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a5cc76:	a1 66 ff 
  a5cc79:	62 b2 5d 40 7f db    	vpermt2ps zmm3,zmm20,zmm19
  a5cc7f:	62 e1 7c 48 28 ce    	vmovaps zmm17,zmm6
  a5cc85:	62 c2 45 48 7f cf    	vpermt2ps zmm17,zmm7,zmm15
  a5cc8b:	62 d2 5d 40 7f f7    	vpermt2ps zmm6,zmm20,zmm15
  a5cc91:	62 71 7c 48 28 fc    	vmovaps zmm15,zmm4
  a5cc97:	62 32 45 48 7f fa    	vpermt2ps zmm15,zmm7,zmm18
  a5cc9d:	62 b2 5d 40 7f e2    	vpermt2ps zmm4,zmm20,zmm18
  a5cca3:	62 e1 7c 48 28 d5    	vmovaps zmm18,zmm5
  a5cca9:	62 c2 1d 48 7f d5    	vpermt2ps zmm18,zmm12,zmm13
  a5ccaf:	62 d2 7d 40 7f ed    	vpermt2ps zmm5,zmm16,zmm13
  a5ccb5:	62 51 7c 48 28 e8    	vmovaps zmm13,zmm8
  a5ccbb:	62 52 1d 48 7f eb    	vpermt2ps zmm13,zmm12,zmm11
  a5ccc1:	62 52 7d 40 7f c3    	vpermt2ps zmm8,zmm16,zmm11
  a5ccc7:	62 51 7c 48 28 da    	vmovaps zmm11,zmm10
  a5cccd:	62 52 7d 40 7f d6    	vpermt2ps zmm10,zmm16,zmm14
  a5ccd3:	62 51 d5 48 14 d2    	vunpcklpd zmm10,zmm5,zmm10
  a5ccd9:	62 52 1d 48 7f de    	vpermt2ps zmm11,zmm12,zmm14
  a5ccdf:	62 52 35 48 77 e6    	vpermi2ps zmm12,zmm9,zmm14
  a5cce5:	62 52 7d 40 7f ce    	vpermt2ps zmm9,zmm16,zmm14
  a5cceb:	62 51 bd 48 14 c1    	vunpcklpd zmm8,zmm8,zmm9
  a5ccf1:	62 51 ed 40 14 cb    	vunpcklpd zmm9,zmm18,zmm11
  a5ccf7:	62 51 ed 40 15 db    	vunpckhpd zmm11,zmm18,zmm11
  a5ccfd:	62 51 95 48 14 f4    	vunpcklpd zmm14,zmm13,zmm12
  a5cd03:	62 51 95 48 15 e4    	vunpckhpd zmm12,zmm13,zmm12
  a5cd09:	62 d1 7c 48 28 e9    	vmovaps zmm5,zmm9
  a5cd0f:	62 d2 45 48 7f ee    	vpermt2ps zmm5,zmm7,zmm14
  a5cd15:	62 52 5d 40 7f ce    	vpermt2ps zmm9,zmm20,zmm14
  a5cd1b:	62 51 7c 48 28 eb    	vmovaps zmm13,zmm11
  a5cd21:	62 52 45 48 7f ec    	vpermt2ps zmm13,zmm7,zmm12
  a5cd27:	62 52 5d 40 7f dc    	vpermt2ps zmm11,zmm20,zmm12
  a5cd2d:	62 d2 2d 48 77 f8    	vpermi2ps zmm7,zmm10,zmm8
  a5cd33:	62 52 5d 40 7f d0    	vpermt2ps zmm10,zmm20,zmm8
  a5cd39:	62 71 7c 48 10 62 02 	vmovups zmm12,ZMMWORD PTR [rdx+0x80]
  a5cd40:	62 71 7c 48 10 72 03 	vmovups zmm14,ZMMWORD PTR [rdx+0xc0]
  a5cd47:	62 e1 7c 48 10 42 04 	vmovups zmm16,ZMMWORD PTR [rdx+0x100]
  a5cd4e:	62 e1 7c 48 10 52 05 	vmovups zmm18,ZMMWORD PTR [rdx+0x140]
  a5cd55:	62 31 74 40 59 c0    	vmulps zmm8,zmm17,zmm16
  a5cd5b:	62 32 15 48 bc c2    	vfnmadd231ps zmm8,zmm13,zmm18
  a5cd61:	62 31 14 48 59 e8    	vmulps zmm13,zmm13,zmm16
  a5cd67:	62 e1 7c 48 10 42 08 	vmovups zmm16,ZMMWORD PTR [rdx+0x200]
  a5cd6e:	62 32 6d 40 b8 e9    	vfmadd231ps zmm13,zmm18,zmm17
  a5cd74:	62 e1 7c 48 10 4a 09 	vmovups zmm17,ZMMWORD PTR [rdx+0x240]
  a5cd7b:	62 a1 04 48 59 d0    	vmulps zmm18,zmm15,zmm16
  a5cd81:	62 a2 45 48 bc d1    	vfnmadd231ps zmm18,zmm7,zmm17
  a5cd87:	62 b1 44 48 59 f8    	vmulps zmm7,zmm7,zmm16
  a5cd8d:	62 e1 7c 48 10 42 06 	vmovups zmm16,ZMMWORD PTR [rdx+0x180]
  a5cd94:	62 d2 75 40 b8 ff    	vfmadd231ps zmm7,zmm17,zmm15
  a5cd9a:	62 71 7c 48 10 7a 07 	vmovups zmm15,ZMMWORD PTR [rdx+0x1c0]
  a5cda1:	62 a1 4c 48 59 c8    	vmulps zmm17,zmm6,zmm16
  a5cda7:	62 c2 25 48 bc cf    	vfnmadd231ps zmm17,zmm11,zmm15
  a5cdad:	62 31 24 48 59 d8    	vmulps zmm11,zmm11,zmm16
  a5cdb3:	62 e1 7c 48 10 42 0a 	vmovups zmm16,ZMMWORD PTR [rdx+0x280]
  a5cdba:	62 72 05 48 b8 de    	vfmadd231ps zmm11,zmm15,zmm6
  a5cdc0:	62 f1 7c 48 10 72 0b 	vmovups zmm6,ZMMWORD PTR [rdx+0x2c0]
  a5cdc7:	62 31 5c 48 59 f8    	vmulps zmm15,zmm4,zmm16
  a5cdcd:	62 72 2d 48 bc fe    	vfnmadd231ps zmm15,zmm10,zmm6
  a5cdd3:	62 31 2c 48 59 d0    	vmulps zmm10,zmm10,zmm16
  a5cdd9:	62 a1 3c 48 58 c2    	vaddps zmm16,zmm8,zmm18
  a5cddf:	62 72 4d 48 b8 d4    	vfmadd231ps zmm10,zmm6,zmm4
  a5cde5:	62 b1 6c 48 58 e0    	vaddps zmm4,zmm2,zmm16
  a5cdeb:	62 d1 64 48 59 f4    	vmulps zmm6,zmm3,zmm12
  a5cdf1:	62 d2 35 48 bc f6    	vfnmadd231ps zmm6,zmm9,zmm14
  a5cdf7:	62 51 34 48 59 cc    	vmulps zmm9,zmm9,zmm12
  a5cdfd:	62 71 04 48 58 e6    	vaddps zmm12,zmm15,zmm6
  a5ce03:	62 72 0d 48 b8 cb    	vfmadd231ps zmm9,zmm14,zmm3
  a5ce09:	62 d1 74 40 58 dc    	vaddps zmm3,zmm17,zmm12
  a5ce0f:	62 71 14 48 58 f7    	vaddps zmm14,zmm13,zmm7
  a5ce15:	62 b2 7d 48 bc d0    	vfnmadd231ps zmm2,zmm0,zmm16
  a5ce1b:	62 e1 0c 48 58 c5    	vaddps zmm16,zmm14,zmm5
  a5ce21:	62 c2 7d 48 bc cc    	vfnmadd231ps zmm17,zmm0,zmm12
  a5ce27:	62 51 2c 48 58 e1    	vaddps zmm12,zmm10,zmm9
  a5ce2d:	62 d2 7d 48 bc ee    	vfnmadd231ps zmm5,zmm0,zmm14
  a5ce33:	62 51 24 48 58 f4    	vaddps zmm14,zmm11,zmm12
  a5ce39:	62 72 1d 48 bc d8    	vfnmadd231ps zmm11,zmm12,zmm0
  a5ce3f:	62 f1 14 48 5c c7    	vsubps zmm0,zmm13,zmm7
  a5ce45:	62 d1 2c 48 5c f9    	vsubps zmm7,zmm10,zmm9
  a5ce4b:	62 31 3c 48 5c c2    	vsubps zmm8,zmm8,zmm18
  a5ce51:	62 f1 04 48 5c f6    	vsubps zmm6,zmm15,zmm6
  a5ce57:	62 f1 7c 48 59 c1    	vmulps zmm0,zmm0,zmm1
  a5ce5d:	62 f1 44 48 59 f9    	vmulps zmm7,zmm7,zmm1
  a5ce63:	62 71 3c 48 59 c1    	vmulps zmm8,zmm8,zmm1
  a5ce69:	62 f1 4c 48 59 c9    	vmulps zmm1,zmm6,zmm1
  a5ce6f:	62 f1 6c 48 58 f0    	vaddps zmm6,zmm2,zmm0
  a5ce75:	62 f1 6c 48 5c c0    	vsubps zmm0,zmm2,zmm0
  a5ce7b:	62 f1 74 40 58 d7    	vaddps zmm2,zmm17,zmm7
  a5ce81:	62 f1 74 40 5c ff    	vsubps zmm7,zmm17,zmm7
  a5ce87:	62 51 54 48 5c c8    	vsubps zmm9,zmm5,zmm8
  a5ce8d:	62 f1 3c 48 58 ed    	vaddps zmm5,zmm8,zmm5
  a5ce93:	62 71 24 48 5c c1    	vsubps zmm8,zmm11,zmm1
  a5ce99:	62 f1 24 48 58 c9    	vaddps zmm1,zmm11,zmm1
  a5ce9f:	62 71 4c 48 5c d2    	vsubps zmm10,zmm6,zmm2
  a5cea5:	62 f1 4c 48 58 d2    	vaddps zmm2,zmm6,zmm2
  a5ceab:	62 d1 34 48 5c f0    	vsubps zmm6,zmm9,zmm8
  a5ceb1:	62 51 34 48 58 c0    	vaddps zmm8,zmm9,zmm8
  a5ceb7:	62 71 7c 48 58 cf    	vaddps zmm9,zmm0,zmm7
  a5cebd:	62 f1 7c 48 5c c7    	vsubps zmm0,zmm0,zmm7
  a5cec3:	62 f1 54 48 58 f9    	vaddps zmm7,zmm5,zmm1
  a5cec9:	62 f1 54 48 5c c9    	vsubps zmm1,zmm5,zmm1
  a5cecf:	62 d1 7c 40 5c ee    	vsubps zmm5,zmm16,zmm14
  a5ced5:	62 51 7c 40 58 de    	vaddps zmm11,zmm16,zmm14
  a5cedb:	62 71 5c 48 5c e3    	vsubps zmm12,zmm4,zmm3
  a5cee1:	62 f1 5c 48 58 db    	vaddps zmm3,zmm4,zmm3
  a5cee7:	62 f1 7c 48 28 25 0f 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff63670f]        # 93600 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20ab0>
  a5ceee:	67 63 ff 
  a5cef1:	62 72 5d 48 7f db    	vpermt2ps zmm11,zmm4,zmm3
  a5cef7:	62 d2 5d 48 7f f2    	vpermt2ps zmm6,zmm4,zmm10
  a5cefd:	62 d2 5d 48 7f f9    	vpermt2ps zmm7,zmm4,zmm9
  a5cf03:	62 d2 5d 48 7f ec    	vpermt2ps zmm5,zmm4,zmm12
  a5cf09:	62 72 5d 48 7f c2    	vpermt2ps zmm8,zmm4,zmm2
  a5cf0f:	62 f2 5d 48 7f c8    	vpermt2ps zmm1,zmm4,zmm0
  a5cf15:	62 73 7d 48 19 5e 02 	vextractf32x4 XMMWORD PTR [rsi+0x20],zmm11,0x2
  a5cf1c:	02 
  a5cf1d:	c5 7c 11 1e          	vmovups YMMWORD PTR [rsi],ymm11
  a5cf21:	62 f3 7d 48 19 76 05 	vextractf32x4 XMMWORD PTR [rsi+0x50],zmm6,0x2
  a5cf28:	02 
  a5cf29:	c5 fc 11 76 30       	vmovups YMMWORD PTR [rsi+0x30],ymm6
  a5cf2e:	62 f3 7d 48 19 7e 08 	vextractf32x4 XMMWORD PTR [rsi+0x80],zmm7,0x2
  a5cf35:	02 
  a5cf36:	c5 fc 11 7e 60       	vmovups YMMWORD PTR [rsi+0x60],ymm7
  a5cf3b:	62 f3 7d 48 19 6e 0b 	vextractf32x4 XMMWORD PTR [rsi+0xb0],zmm5,0x2
  a5cf42:	02 
  a5cf43:	c5 fc 11 ae 90 00 00 	vmovups YMMWORD PTR [rsi+0x90],ymm5
  a5cf4a:	00 
  a5cf4b:	62 73 7d 48 19 46 0e 	vextractf32x4 XMMWORD PTR [rsi+0xe0],zmm8,0x2
  a5cf52:	02 
  a5cf53:	c5 7c 11 86 c0 00 00 	vmovups YMMWORD PTR [rsi+0xc0],ymm8
  a5cf5a:	00 
  a5cf5b:	62 f3 7d 48 19 4e 11 	vextractf32x4 XMMWORD PTR [rsi+0x110],zmm1,0x2
  a5cf62:	02 
  a5cf63:	c5 fc 11 8e f0 00 00 	vmovups YMMWORD PTR [rsi+0xf0],ymm1
  a5cf6a:	00 
  a5cf6b:	c5 f8 77             	vzeroupper
  a5cf6e:	c3                   	ret
