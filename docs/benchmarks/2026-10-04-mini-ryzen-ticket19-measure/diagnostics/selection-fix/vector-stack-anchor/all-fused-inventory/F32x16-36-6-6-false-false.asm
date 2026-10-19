
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a37840 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a37840:	c5 f8 10 47 20       	vmovups xmm0,XMMWORD PTR [rdi+0x20]
  a37845:	c4 e3 79 21 47 24 10 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x24],0x10
  a3784c:	c4 e2 79 18 4f 28    	vbroadcastss xmm1,DWORD PTR [rdi+0x28]
  a37852:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a37858:	c4 e3 79 21 47 2c 30 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x2c],0x30
  a3785f:	c5 fc 10 0f          	vmovups ymm1,YMMWORD PTR [rdi]
  a37863:	62 f3 75 48 18 d8 02 	vinsertf32x4 zmm3,zmm1,xmm0,0x2
  a3786a:	62 f1 7c 48 28 35 8c 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff65998c]        # 91200 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e6b0>
  a37871:	99 65 ff 
  a37874:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a37878:	62 f1 7c 48 28 e3    	vmovaps zmm4,zmm3
  a3787e:	62 f2 4d 48 7f e2    	vpermt2ps zmm4,zmm6,zmm2
  a37884:	62 f1 7c 48 28 05 b2 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6599b2]        # 91240 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e6f0>
  a3788b:	99 65 ff 
  a3788e:	c5 f8 10 4f 50       	vmovups xmm1,XMMWORD PTR [rdi+0x50]
  a37893:	c4 e3 71 21 4f 54 10 	vinsertps xmm1,xmm1,DWORD PTR [rdi+0x54],0x10
  a3789a:	c4 e2 79 18 6f 58    	vbroadcastss xmm5,DWORD PTR [rdi+0x58]
  a378a0:	62 f2 7d 48 7f da    	vpermt2ps zmm3,zmm0,zmm2
  a378a6:	c4 e3 51 0c c9 03    	vblendps xmm1,xmm5,xmm1,0x3
  a378ac:	c4 e3 71 21 4f 5c 30 	vinsertps xmm1,xmm1,DWORD PTR [rdi+0x5c],0x30
  a378b3:	c5 fc 10 6f 30       	vmovups ymm5,YMMWORD PTR [rdi+0x30]
  a378b8:	62 f3 55 48 18 c9 02 	vinsertf32x4 zmm1,zmm5,xmm1,0x2
  a378bf:	62 f1 7c 48 28 f9    	vmovaps zmm7,zmm1
  a378c5:	62 f2 4d 48 7f fa    	vpermt2ps zmm7,zmm6,zmm2
  a378cb:	62 f2 7d 48 7f ca    	vpermt2ps zmm1,zmm0,zmm2
  a378d1:	c5 f8 10 af 80 00 00 	vmovups xmm5,XMMWORD PTR [rdi+0x80]
  a378d8:	00 
  a378d9:	c4 e3 51 21 af 84 00 	vinsertps xmm5,xmm5,DWORD PTR [rdi+0x84],0x10
  a378e0:	00 00 10 
  a378e3:	c5 7c 10 47 60       	vmovups ymm8,YMMWORD PTR [rdi+0x60]
  a378e8:	c4 62 79 18 8f 88 00 	vbroadcastss xmm9,DWORD PTR [rdi+0x88]
  a378ef:	00 00 
  a378f1:	c4 e3 31 0c ed 03    	vblendps xmm5,xmm9,xmm5,0x3
  a378f7:	c4 e3 51 21 af 8c 00 	vinsertps xmm5,xmm5,DWORD PTR [rdi+0x8c],0x30
  a378fe:	00 00 30 
  a37901:	62 f3 3d 48 18 ed 02 	vinsertf32x4 zmm5,zmm8,xmm5,0x2
  a37908:	62 71 7c 48 28 d5    	vmovaps zmm10,zmm5
  a3790e:	62 72 4d 48 7f d2    	vpermt2ps zmm10,zmm6,zmm2
  a37914:	62 f2 7d 48 7f ea    	vpermt2ps zmm5,zmm0,zmm2
  a3791a:	c5 78 10 87 b0 00 00 	vmovups xmm8,XMMWORD PTR [rdi+0xb0]
  a37921:	00 
  a37922:	c5 7c 10 8f 90 00 00 	vmovups ymm9,YMMWORD PTR [rdi+0x90]
  a37929:	00 
  a3792a:	c4 63 39 21 87 b4 00 	vinsertps xmm8,xmm8,DWORD PTR [rdi+0xb4],0x10
  a37931:	00 00 10 
  a37934:	c4 62 79 18 9f b8 00 	vbroadcastss xmm11,DWORD PTR [rdi+0xb8]
  a3793b:	00 00 
  a3793d:	c4 43 21 0c c0 03    	vblendps xmm8,xmm11,xmm8,0x3
  a37943:	c4 63 39 21 87 bc 00 	vinsertps xmm8,xmm8,DWORD PTR [rdi+0xbc],0x30
  a3794a:	00 00 30 
  a3794d:	62 53 35 48 18 c8 02 	vinsertf32x4 zmm9,zmm9,xmm8,0x2
  a37954:	62 51 7c 48 28 c1    	vmovaps zmm8,zmm9
  a3795a:	62 72 4d 48 7f c2    	vpermt2ps zmm8,zmm6,zmm2
  a37960:	62 72 7d 48 7f ca    	vpermt2ps zmm9,zmm0,zmm2
  a37966:	c5 78 10 9f e0 00 00 	vmovups xmm11,XMMWORD PTR [rdi+0xe0]
  a3796d:	00 
  a3796e:	c4 63 21 21 9f e4 00 	vinsertps xmm11,xmm11,DWORD PTR [rdi+0xe4],0x10
  a37975:	00 00 10 
  a37978:	c4 62 79 18 a7 e8 00 	vbroadcastss xmm12,DWORD PTR [rdi+0xe8]
  a3797f:	00 00 
  a37981:	c5 7c 10 af c0 00 00 	vmovups ymm13,YMMWORD PTR [rdi+0xc0]
  a37988:	00 
  a37989:	c4 43 19 0c db 03    	vblendps xmm11,xmm12,xmm11,0x3
  a3798f:	c4 63 21 21 9f ec 00 	vinsertps xmm11,xmm11,DWORD PTR [rdi+0xec],0x30
  a37996:	00 00 30 
  a37999:	62 53 15 48 18 e3 02 	vinsertf32x4 zmm12,zmm13,xmm11,0x2
  a379a0:	62 51 7c 48 28 ec    	vmovaps zmm13,zmm12
  a379a6:	62 72 4d 48 7f ea    	vpermt2ps zmm13,zmm6,zmm2
  a379ac:	c5 78 10 9f 10 01 00 	vmovups xmm11,XMMWORD PTR [rdi+0x110]
  a379b3:	00 
  a379b4:	c4 63 21 21 9f 14 01 	vinsertps xmm11,xmm11,DWORD PTR [rdi+0x114],0x10
  a379bb:	00 00 10 
  a379be:	c4 62 79 18 b7 18 01 	vbroadcastss xmm14,DWORD PTR [rdi+0x118]
  a379c5:	00 00 
  a379c7:	62 72 7d 48 7f e2    	vpermt2ps zmm12,zmm0,zmm2
  a379cd:	c4 43 09 0c db 03    	vblendps xmm11,xmm14,xmm11,0x3
  a379d3:	c4 63 21 21 9f 1c 01 	vinsertps xmm11,xmm11,DWORD PTR [rdi+0x11c],0x30
  a379da:	00 00 30 
  a379dd:	c5 7c 10 b7 f0 00 00 	vmovups ymm14,YMMWORD PTR [rdi+0xf0]
  a379e4:	00 
  a379e5:	62 53 0d 48 18 f3 02 	vinsertf32x4 zmm14,zmm14,xmm11,0x2
  a379ec:	62 f2 0d 48 77 f2    	vpermi2ps zmm6,zmm14,zmm2
  a379f2:	62 72 7d 48 7f f2    	vpermt2ps zmm14,zmm0,zmm2
  a379f8:	62 51 2c 48 58 fd    	vaddps zmm15,zmm10,zmm13
  a379fe:	62 c1 5c 48 58 c7    	vaddps zmm16,zmm4,zmm15
  a37a04:	62 e1 4c 48 58 cf    	vaddps zmm17,zmm6,zmm7
  a37a0a:	62 a1 3c 48 58 d1    	vaddps zmm18,zmm8,zmm17
  a37a10:	62 31 7c 40 58 da    	vaddps zmm11,zmm16,zmm18
  a37a16:	62 c1 54 48 58 dc    	vaddps zmm19,zmm5,zmm12
  a37a1c:	62 f2 7d 48 18 05 3a 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff63da3a]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a37a23:	da 63 ff 
  a37a26:	62 d2 7d 48 bc e7    	vfnmadd231ps zmm4,zmm0,zmm15
  a37a2c:	62 31 64 48 58 fb    	vaddps zmm15,zmm3,zmm19
  a37a32:	62 51 54 48 5c e4    	vsubps zmm12,zmm5,zmm12
  a37a38:	62 e1 0c 48 58 e1    	vaddps zmm20,zmm14,zmm1
  a37a3e:	62 32 7d 48 bc c1    	vfnmadd231ps zmm8,zmm0,zmm17
  a37a44:	62 a1 34 48 58 cc    	vaddps zmm17,zmm9,zmm20
  a37a4a:	62 71 0c 48 5c f1    	vsubps zmm14,zmm14,zmm1
  a37a50:	62 b1 04 48 58 e9    	vaddps zmm5,zmm15,zmm17
  a37a56:	62 b2 7d 48 bc db    	vfnmadd231ps zmm3,zmm0,zmm19
  a37a5c:	62 f2 7d 48 18 0d 6e 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff63d86e]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a37a63:	d8 63 ff 
  a37a66:	62 71 1c 48 59 e1    	vmulps zmm12,zmm12,zmm1
  a37a6c:	62 51 2c 48 5c d5    	vsubps zmm10,zmm10,zmm13
  a37a72:	62 51 5c 48 58 ec    	vaddps zmm13,zmm4,zmm12
  a37a78:	62 71 0c 48 59 f1    	vmulps zmm14,zmm14,zmm1
  a37a7e:	62 32 7d 48 bc cc    	vfnmadd231ps zmm9,zmm0,zmm20
  a37a84:	62 c1 3c 48 58 de    	vaddps zmm19,zmm8,zmm14
  a37a8a:	62 f1 4c 48 5c f7    	vsubps zmm6,zmm6,zmm7
  a37a90:	62 b1 14 48 5c fb    	vsubps zmm7,zmm13,zmm19
  a37a96:	62 71 2c 48 59 d1    	vmulps zmm10,zmm10,zmm1
  a37a9c:	62 d1 5c 48 5c e4    	vsubps zmm4,zmm4,zmm12
  a37aa2:	62 51 64 48 5c e2    	vsubps zmm12,zmm3,zmm10
  a37aa8:	62 f1 4c 48 59 f1    	vmulps zmm6,zmm6,zmm1
  a37aae:	62 c1 3c 48 5c e6    	vsubps zmm20,zmm8,zmm14
  a37ab4:	62 71 34 48 5c f6    	vsubps zmm14,zmm9,zmm6
  a37aba:	62 f1 2c 48 58 db    	vaddps zmm3,zmm10,zmm3
  a37ac0:	62 51 1c 48 5c c6    	vsubps zmm8,zmm12,zmm14
  a37ac6:	62 d1 4c 48 58 f1    	vaddps zmm6,zmm6,zmm9
  a37acc:	62 a1 5c 48 58 ec    	vaddps zmm21,zmm4,zmm20
  a37ad2:	62 a1 7c 40 5c d2    	vsubps zmm18,zmm16,zmm18
  a37ad8:	62 71 64 48 58 d6    	vaddps zmm10,zmm3,zmm6
  a37ade:	62 31 04 48 5c c9    	vsubps zmm9,zmm15,zmm17
  a37ae4:	62 a1 14 48 58 cb    	vaddps zmm17,zmm13,zmm19
  a37aea:	62 51 1c 48 58 f6    	vaddps zmm14,zmm12,zmm14
  a37af0:	62 b1 5c 48 5c e4    	vsubps zmm4,zmm4,zmm20
  a37af6:	62 71 64 48 5c e6    	vsubps zmm12,zmm3,zmm6
  a37afc:	62 e1 7c 48 28 1d 7a 	vmovaps zmm19,ZMMWORD PTR [rip+0xffffffffff68f47a]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a37b03:	f4 68 ff 
  a37b06:	62 72 65 40 7f da    	vpermt2ps zmm11,zmm19,zmm2
  a37b0c:	62 f2 65 40 7f fa    	vpermt2ps zmm7,zmm19,zmm2
  a37b12:	62 e2 65 40 7f ea    	vpermt2ps zmm21,zmm19,zmm2
  a37b18:	62 e2 65 40 7f d2    	vpermt2ps zmm18,zmm19,zmm2
  a37b1e:	62 e2 65 40 7f ca    	vpermt2ps zmm17,zmm19,zmm2
  a37b24:	62 f2 65 40 7f e2    	vpermt2ps zmm4,zmm19,zmm2
  a37b2a:	c4 41 00 57 ff       	vxorps xmm15,xmm15,xmm15
  a37b2f:	62 52 65 40 7f ff    	vpermt2ps zmm15,zmm19,zmm15
  a37b35:	62 71 7c 48 28 2d c1 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff68f3c1]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a37b3c:	f3 68 ff 
  a37b3f:	62 d1 7c 48 28 f3    	vmovaps zmm6,zmm11
  a37b45:	62 b2 15 48 7f f1    	vpermt2ps zmm6,zmm13,zmm17
  a37b4b:	62 e1 7c 48 28 05 eb 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff68f3eb]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a37b52:	f3 68 ff 
  a37b55:	62 32 7d 40 7f d9    	vpermt2ps zmm11,zmm16,zmm17
  a37b5b:	62 e1 7c 48 28 cf    	vmovaps zmm17,zmm7
  a37b61:	62 e2 15 48 7f cc    	vpermt2ps zmm17,zmm13,zmm4
  a37b67:	62 f2 7d 40 7f fc    	vpermt2ps zmm7,zmm16,zmm4
  a37b6d:	62 a1 7c 48 28 e5    	vmovaps zmm20,zmm21
  a37b73:	62 c2 15 48 7f e7    	vpermt2ps zmm20,zmm13,zmm15
  a37b79:	62 c2 7d 40 7f ef    	vpermt2ps zmm21,zmm16,zmm15
  a37b7f:	62 b1 a5 48 14 e5    	vunpcklpd zmm4,zmm11,zmm21
  a37b85:	62 31 7c 48 28 da    	vmovaps zmm11,zmm18
  a37b8b:	62 52 15 48 7f df    	vpermt2ps zmm11,zmm13,zmm15
  a37b91:	62 c2 7d 40 7f d7    	vpermt2ps zmm18,zmm16,zmm15
  a37b97:	62 a1 c5 48 14 d2    	vunpcklpd zmm18,zmm7,zmm18
  a37b9d:	62 b1 cd 48 14 dc    	vunpcklpd zmm3,zmm6,zmm20
  a37ba3:	62 b1 cd 48 15 f4    	vunpckhpd zmm6,zmm6,zmm20
  a37ba9:	62 c1 f5 40 14 e3    	vunpcklpd zmm20,zmm17,zmm11
  a37baf:	62 51 f5 40 15 db    	vunpckhpd zmm11,zmm17,zmm11
  a37bb5:	62 f1 7c 48 28 3d 41 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff68f241]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a37bbc:	f2 68 ff 
  a37bbf:	62 f2 65 40 7f ea    	vpermt2ps zmm5,zmm19,zmm2
  a37bc5:	62 72 65 40 7f c2    	vpermt2ps zmm8,zmm19,zmm2
  a37bcb:	62 72 65 40 7f d2    	vpermt2ps zmm10,zmm19,zmm2
  a37bd1:	62 72 65 40 7f ca    	vpermt2ps zmm9,zmm19,zmm2
  a37bd7:	62 72 65 40 7f f2    	vpermt2ps zmm14,zmm19,zmm2
  a37bdd:	62 72 65 40 7f e2    	vpermt2ps zmm12,zmm19,zmm2
  a37be3:	62 f1 7c 48 28 d3    	vmovaps zmm2,zmm3
  a37be9:	62 b2 45 48 7f d4    	vpermt2ps zmm2,zmm7,zmm20
  a37bef:	62 e1 7c 48 28 1d 47 	vmovaps zmm19,ZMMWORD PTR [rip+0xffffffffff68f247]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a37bf6:	f2 68 ff 
  a37bf9:	62 b2 65 40 7f dc    	vpermt2ps zmm3,zmm19,zmm20
  a37bff:	62 e1 7c 48 28 ce    	vmovaps zmm17,zmm6
  a37c05:	62 c2 45 48 7f cb    	vpermt2ps zmm17,zmm7,zmm11
  a37c0b:	62 d2 65 40 7f f3    	vpermt2ps zmm6,zmm19,zmm11
  a37c11:	62 71 7c 48 28 dc    	vmovaps zmm11,zmm4
  a37c17:	62 32 45 48 7f da    	vpermt2ps zmm11,zmm7,zmm18
  a37c1d:	62 b2 65 40 7f e2    	vpermt2ps zmm4,zmm19,zmm18
  a37c23:	62 e1 7c 48 28 d5    	vmovaps zmm18,zmm5
  a37c29:	62 c2 15 48 7f d6    	vpermt2ps zmm18,zmm13,zmm14
  a37c2f:	62 d2 7d 40 7f ee    	vpermt2ps zmm5,zmm16,zmm14
  a37c35:	62 51 7c 48 28 f0    	vmovaps zmm14,zmm8
  a37c3b:	62 52 15 48 7f f4    	vpermt2ps zmm14,zmm13,zmm12
  a37c41:	62 52 7d 40 7f c4    	vpermt2ps zmm8,zmm16,zmm12
  a37c47:	62 51 7c 48 28 e2    	vmovaps zmm12,zmm10
  a37c4d:	62 52 7d 40 7f d7    	vpermt2ps zmm10,zmm16,zmm15
  a37c53:	62 51 d5 48 14 d2    	vunpcklpd zmm10,zmm5,zmm10
  a37c59:	62 52 15 48 7f e7    	vpermt2ps zmm12,zmm13,zmm15
  a37c5f:	62 52 35 48 77 ef    	vpermi2ps zmm13,zmm9,zmm15
  a37c65:	62 52 7d 40 7f cf    	vpermt2ps zmm9,zmm16,zmm15
  a37c6b:	62 51 bd 48 14 c1    	vunpcklpd zmm8,zmm8,zmm9
  a37c71:	62 51 ed 40 14 cc    	vunpcklpd zmm9,zmm18,zmm12
  a37c77:	62 51 ed 40 15 e4    	vunpckhpd zmm12,zmm18,zmm12
  a37c7d:	62 51 8d 48 14 fd    	vunpcklpd zmm15,zmm14,zmm13
  a37c83:	62 51 8d 48 15 ed    	vunpckhpd zmm13,zmm14,zmm13
  a37c89:	62 d1 7c 48 28 e9    	vmovaps zmm5,zmm9
  a37c8f:	62 d2 45 48 7f ef    	vpermt2ps zmm5,zmm7,zmm15
  a37c95:	62 52 65 40 7f cf    	vpermt2ps zmm9,zmm19,zmm15
  a37c9b:	62 51 7c 48 28 f4    	vmovaps zmm14,zmm12
  a37ca1:	62 52 45 48 7f f5    	vpermt2ps zmm14,zmm7,zmm13
  a37ca7:	62 52 65 40 7f e5    	vpermt2ps zmm12,zmm19,zmm13
  a37cad:	62 d2 2d 48 77 f8    	vpermi2ps zmm7,zmm10,zmm8
  a37cb3:	62 52 65 40 7f d0    	vpermt2ps zmm10,zmm19,zmm8
  a37cb9:	62 71 7c 48 10 6a 02 	vmovups zmm13,ZMMWORD PTR [rdx+0x80]
  a37cc0:	62 71 7c 48 10 7a 03 	vmovups zmm15,ZMMWORD PTR [rdx+0xc0]
  a37cc7:	62 e1 7c 48 10 42 04 	vmovups zmm16,ZMMWORD PTR [rdx+0x100]
  a37cce:	62 e1 7c 48 10 52 05 	vmovups zmm18,ZMMWORD PTR [rdx+0x140]
  a37cd5:	62 31 74 40 59 c0    	vmulps zmm8,zmm17,zmm16
  a37cdb:	62 32 0d 48 bc c2    	vfnmadd231ps zmm8,zmm14,zmm18
  a37ce1:	62 31 0c 48 59 f0    	vmulps zmm14,zmm14,zmm16
  a37ce7:	62 e1 7c 48 10 42 08 	vmovups zmm16,ZMMWORD PTR [rdx+0x200]
  a37cee:	62 32 6d 40 b8 f1    	vfmadd231ps zmm14,zmm18,zmm17
  a37cf4:	62 e1 7c 48 10 4a 09 	vmovups zmm17,ZMMWORD PTR [rdx+0x240]
  a37cfb:	62 a1 24 48 59 d0    	vmulps zmm18,zmm11,zmm16
  a37d01:	62 a2 45 48 bc d1    	vfnmadd231ps zmm18,zmm7,zmm17
  a37d07:	62 b1 44 48 59 f8    	vmulps zmm7,zmm7,zmm16
  a37d0d:	62 e1 7c 48 10 42 06 	vmovups zmm16,ZMMWORD PTR [rdx+0x180]
  a37d14:	62 d2 75 40 b8 fb    	vfmadd231ps zmm7,zmm17,zmm11
  a37d1a:	62 71 7c 48 10 5a 07 	vmovups zmm11,ZMMWORD PTR [rdx+0x1c0]
  a37d21:	62 a1 4c 48 59 c8    	vmulps zmm17,zmm6,zmm16
  a37d27:	62 c2 1d 48 bc cb    	vfnmadd231ps zmm17,zmm12,zmm11
  a37d2d:	62 31 1c 48 59 e0    	vmulps zmm12,zmm12,zmm16
  a37d33:	62 e1 7c 48 10 42 0a 	vmovups zmm16,ZMMWORD PTR [rdx+0x280]
  a37d3a:	62 72 25 48 b8 e6    	vfmadd231ps zmm12,zmm11,zmm6
  a37d40:	62 f1 7c 48 10 72 0b 	vmovups zmm6,ZMMWORD PTR [rdx+0x2c0]
  a37d47:	62 31 5c 48 59 d8    	vmulps zmm11,zmm4,zmm16
  a37d4d:	62 72 2d 48 bc de    	vfnmadd231ps zmm11,zmm10,zmm6
  a37d53:	62 31 2c 48 59 d0    	vmulps zmm10,zmm10,zmm16
  a37d59:	62 a1 3c 48 58 c2    	vaddps zmm16,zmm8,zmm18
  a37d5f:	62 72 4d 48 b8 d4    	vfmadd231ps zmm10,zmm6,zmm4
  a37d65:	62 b1 6c 48 58 e0    	vaddps zmm4,zmm2,zmm16
  a37d6b:	62 d1 64 48 59 f5    	vmulps zmm6,zmm3,zmm13
  a37d71:	62 d2 35 48 bc f7    	vfnmadd231ps zmm6,zmm9,zmm15
  a37d77:	62 51 34 48 59 cd    	vmulps zmm9,zmm9,zmm13
  a37d7d:	62 71 24 48 58 ee    	vaddps zmm13,zmm11,zmm6
  a37d83:	62 72 05 48 b8 cb    	vfmadd231ps zmm9,zmm15,zmm3
  a37d89:	62 d1 74 40 58 dd    	vaddps zmm3,zmm17,zmm13
  a37d8f:	62 71 0c 48 58 ff    	vaddps zmm15,zmm14,zmm7
  a37d95:	62 b2 7d 48 bc d0    	vfnmadd231ps zmm2,zmm0,zmm16
  a37d9b:	62 e1 04 48 58 c5    	vaddps zmm16,zmm15,zmm5
  a37da1:	62 c2 7d 48 bc cd    	vfnmadd231ps zmm17,zmm0,zmm13
  a37da7:	62 51 2c 48 58 e9    	vaddps zmm13,zmm10,zmm9
  a37dad:	62 d2 7d 48 bc ef    	vfnmadd231ps zmm5,zmm0,zmm15
  a37db3:	62 51 1c 48 58 fd    	vaddps zmm15,zmm12,zmm13
  a37db9:	62 72 15 48 bc e0    	vfnmadd231ps zmm12,zmm13,zmm0
  a37dbf:	62 f1 0c 48 5c c7    	vsubps zmm0,zmm14,zmm7
  a37dc5:	62 d1 2c 48 5c f9    	vsubps zmm7,zmm10,zmm9
  a37dcb:	62 31 3c 48 5c c2    	vsubps zmm8,zmm8,zmm18
  a37dd1:	62 f1 24 48 5c f6    	vsubps zmm6,zmm11,zmm6
  a37dd7:	62 f1 7c 48 59 c1    	vmulps zmm0,zmm0,zmm1
  a37ddd:	62 f1 44 48 59 f9    	vmulps zmm7,zmm7,zmm1
  a37de3:	62 71 3c 48 59 c1    	vmulps zmm8,zmm8,zmm1
  a37de9:	62 f1 4c 48 59 c9    	vmulps zmm1,zmm6,zmm1
  a37def:	62 f1 6c 48 58 f0    	vaddps zmm6,zmm2,zmm0
  a37df5:	62 f1 6c 48 5c c0    	vsubps zmm0,zmm2,zmm0
  a37dfb:	62 f1 74 40 58 d7    	vaddps zmm2,zmm17,zmm7
  a37e01:	62 f1 74 40 5c ff    	vsubps zmm7,zmm17,zmm7
  a37e07:	62 51 54 48 5c c8    	vsubps zmm9,zmm5,zmm8
  a37e0d:	62 f1 3c 48 58 ed    	vaddps zmm5,zmm8,zmm5
  a37e13:	62 71 1c 48 5c c1    	vsubps zmm8,zmm12,zmm1
  a37e19:	62 f1 1c 48 58 c9    	vaddps zmm1,zmm12,zmm1
  a37e1f:	62 71 4c 48 5c d2    	vsubps zmm10,zmm6,zmm2
  a37e25:	62 f1 4c 48 58 d2    	vaddps zmm2,zmm6,zmm2
  a37e2b:	62 d1 34 48 5c f0    	vsubps zmm6,zmm9,zmm8
  a37e31:	62 51 34 48 58 c0    	vaddps zmm8,zmm9,zmm8
  a37e37:	62 71 7c 48 58 cf    	vaddps zmm9,zmm0,zmm7
  a37e3d:	62 f1 7c 48 5c c7    	vsubps zmm0,zmm0,zmm7
  a37e43:	62 f1 54 48 58 f9    	vaddps zmm7,zmm5,zmm1
  a37e49:	62 f1 54 48 5c c9    	vsubps zmm1,zmm5,zmm1
  a37e4f:	62 f1 5c 48 5c eb    	vsubps zmm5,zmm4,zmm3
  a37e55:	62 f1 5c 48 58 db    	vaddps zmm3,zmm4,zmm3
  a37e5b:	62 d1 7c 40 5c e7    	vsubps zmm4,zmm16,zmm15
  a37e61:	62 51 7c 40 58 df    	vaddps zmm11,zmm16,zmm15
  a37e67:	62 71 7c 48 28 25 0f 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff65940f]        # 91280 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e730>
  a37e6e:	94 65 ff 
  a37e71:	62 d2 1d 48 7f db    	vpermt2ps zmm3,zmm12,zmm11
  a37e77:	62 72 1d 48 7f d6    	vpermt2ps zmm10,zmm12,zmm6
  a37e7d:	62 72 1d 48 7f cf    	vpermt2ps zmm9,zmm12,zmm7
  a37e83:	62 f2 1d 48 7f ec    	vpermt2ps zmm5,zmm12,zmm4
  a37e89:	62 d2 1d 48 7f d0    	vpermt2ps zmm2,zmm12,zmm8
  a37e8f:	62 f2 1d 48 7f c1    	vpermt2ps zmm0,zmm12,zmm1
  a37e95:	62 f3 7d 48 19 5e 02 	vextractf32x4 XMMWORD PTR [rsi+0x20],zmm3,0x2
  a37e9c:	02 
  a37e9d:	c5 fc 11 1e          	vmovups YMMWORD PTR [rsi],ymm3
  a37ea1:	62 73 7d 48 19 56 05 	vextractf32x4 XMMWORD PTR [rsi+0x50],zmm10,0x2
  a37ea8:	02 
  a37ea9:	c5 7c 11 56 30       	vmovups YMMWORD PTR [rsi+0x30],ymm10
  a37eae:	62 73 7d 48 19 4e 08 	vextractf32x4 XMMWORD PTR [rsi+0x80],zmm9,0x2
  a37eb5:	02 
  a37eb6:	c5 7c 11 4e 60       	vmovups YMMWORD PTR [rsi+0x60],ymm9
  a37ebb:	62 f3 7d 48 19 6e 0b 	vextractf32x4 XMMWORD PTR [rsi+0xb0],zmm5,0x2
  a37ec2:	02 
  a37ec3:	c5 fc 11 ae 90 00 00 	vmovups YMMWORD PTR [rsi+0x90],ymm5
  a37eca:	00 
  a37ecb:	62 f3 7d 48 19 56 0e 	vextractf32x4 XMMWORD PTR [rsi+0xe0],zmm2,0x2
  a37ed2:	02 
  a37ed3:	c5 fc 11 96 c0 00 00 	vmovups YMMWORD PTR [rsi+0xc0],ymm2
  a37eda:	00 
  a37edb:	62 f3 7d 48 19 46 11 	vextractf32x4 XMMWORD PTR [rsi+0x110],zmm0,0x2
  a37ee2:	02 
  a37ee3:	c5 fc 11 86 f0 00 00 	vmovups YMMWORD PTR [rsi+0xf0],ymm0
  a37eea:	00 
  a37eeb:	c5 f8 77             	vzeroupper
  a37eee:	c3                   	ret
