
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a5e980 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a5e980:	55                   	push   rbp
  a5e981:	48 89 e5             	mov    rbp,rsp
  a5e984:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a5e988:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  a5e98f:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  a5e994:	48 8d 44 24 40       	lea    rax,[rsp+0x40]
  a5e999:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  a5e99e:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  a5e9a3:	c5 f8 10 47 20       	vmovups xmm0,XMMWORD PTR [rdi+0x20]
  a5e9a8:	c4 e3 79 21 47 24 10 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x24],0x10
  a5e9af:	c5 fc 10 0f          	vmovups ymm1,YMMWORD PTR [rdi]
  a5e9b3:	c4 e2 79 18 57 28    	vbroadcastss xmm2,DWORD PTR [rdi+0x28]
  a5e9b9:	c4 e3 69 0c c0 03    	vblendps xmm0,xmm2,xmm0,0x3
  a5e9bf:	c4 e3 79 21 47 2c 30 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x2c],0x30
  a5e9c6:	62 f3 75 48 18 c8 02 	vinsertf32x4 zmm1,zmm1,xmm0,0x2
  a5e9cd:	62 f1 7c 48 28 15 69 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff634c69]        # 93640 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20af0>
  a5e9d4:	4c 63 ff 
  a5e9d7:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a5e9db:	62 f1 7c 48 28 d9    	vmovaps zmm3,zmm1
  a5e9e1:	62 f2 6d 48 7f d8    	vpermt2ps zmm3,zmm2,zmm0
  a5e9e7:	62 f1 7c 48 28 25 8f 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff634c8f]        # 93680 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20b30>
  a5e9ee:	4c 63 ff 
  a5e9f1:	62 f2 5d 48 7f c8    	vpermt2ps zmm1,zmm4,zmm0
  a5e9f7:	c5 f8 10 6f 50       	vmovups xmm5,XMMWORD PTR [rdi+0x50]
  a5e9fc:	c4 e3 51 21 6f 54 10 	vinsertps xmm5,xmm5,DWORD PTR [rdi+0x54],0x10
  a5ea03:	c5 fc 10 77 30       	vmovups ymm6,YMMWORD PTR [rdi+0x30]
  a5ea08:	c4 e2 79 18 7f 58    	vbroadcastss xmm7,DWORD PTR [rdi+0x58]
  a5ea0e:	c4 e3 41 0c ed 03    	vblendps xmm5,xmm7,xmm5,0x3
  a5ea14:	c4 e3 51 21 6f 5c 30 	vinsertps xmm5,xmm5,DWORD PTR [rdi+0x5c],0x30
  a5ea1b:	62 f3 4d 48 18 ed 02 	vinsertf32x4 zmm5,zmm6,xmm5,0x2
  a5ea22:	62 f1 7c 48 28 fd    	vmovaps zmm7,zmm5
  a5ea28:	62 f2 6d 48 7f f8    	vpermt2ps zmm7,zmm2,zmm0
  a5ea2e:	62 f2 5d 48 7f e8    	vpermt2ps zmm5,zmm4,zmm0
  a5ea34:	c5 f8 10 b7 80 00 00 	vmovups xmm6,XMMWORD PTR [rdi+0x80]
  a5ea3b:	00 
  a5ea3c:	c5 7c 10 47 60       	vmovups ymm8,YMMWORD PTR [rdi+0x60]
  a5ea41:	c4 e3 49 21 b7 84 00 	vinsertps xmm6,xmm6,DWORD PTR [rdi+0x84],0x10
  a5ea48:	00 00 10 
  a5ea4b:	c4 62 79 18 8f 88 00 	vbroadcastss xmm9,DWORD PTR [rdi+0x88]
  a5ea52:	00 00 
  a5ea54:	c4 e3 31 0c f6 03    	vblendps xmm6,xmm9,xmm6,0x3
  a5ea5a:	c4 e3 49 21 b7 8c 00 	vinsertps xmm6,xmm6,DWORD PTR [rdi+0x8c],0x30
  a5ea61:	00 00 30 
  a5ea64:	62 73 3d 48 18 c6 02 	vinsertf32x4 zmm8,zmm8,xmm6,0x2
  a5ea6b:	62 51 7c 48 28 c8    	vmovaps zmm9,zmm8
  a5ea71:	62 72 6d 48 7f c8    	vpermt2ps zmm9,zmm2,zmm0
  a5ea77:	62 72 5d 48 7f c0    	vpermt2ps zmm8,zmm4,zmm0
  a5ea7d:	c5 f8 10 b7 b0 00 00 	vmovups xmm6,XMMWORD PTR [rdi+0xb0]
  a5ea84:	00 
  a5ea85:	c4 e3 49 21 b7 b4 00 	vinsertps xmm6,xmm6,DWORD PTR [rdi+0xb4],0x10
  a5ea8c:	00 00 10 
  a5ea8f:	c4 62 79 18 97 b8 00 	vbroadcastss xmm10,DWORD PTR [rdi+0xb8]
  a5ea96:	00 00 
  a5ea98:	c5 7c 10 9f 90 00 00 	vmovups ymm11,YMMWORD PTR [rdi+0x90]
  a5ea9f:	00 
  a5eaa0:	c4 e3 29 0c f6 03    	vblendps xmm6,xmm10,xmm6,0x3
  a5eaa6:	c4 e3 49 21 b7 bc 00 	vinsertps xmm6,xmm6,DWORD PTR [rdi+0xbc],0x30
  a5eaad:	00 00 30 
  a5eab0:	62 73 25 48 18 d6 02 	vinsertf32x4 zmm10,zmm11,xmm6,0x2
  a5eab7:	62 f2 2d 48 77 d0    	vpermi2ps zmm2,zmm10,zmm0
  a5eabd:	62 72 5d 48 7f d0    	vpermt2ps zmm10,zmm4,zmm0
  a5eac3:	62 d1 74 48 58 e0    	vaddps zmm4,zmm1,zmm8
  a5eac9:	62 51 54 48 58 da    	vaddps zmm11,zmm5,zmm10
  a5eacf:	62 51 5c 48 58 eb    	vaddps zmm13,zmm4,zmm11
  a5ead5:	62 51 64 48 58 e1    	vaddps zmm12,zmm3,zmm9
  a5eadb:	62 71 44 48 58 f2    	vaddps zmm14,zmm7,zmm2
  a5eae1:	62 d1 1c 48 58 f6    	vaddps zmm6,zmm12,zmm14
  a5eae7:	62 d1 74 48 5c c8    	vsubps zmm1,zmm1,zmm8
  a5eaed:	62 f1 44 48 5c d2    	vsubps zmm2,zmm7,zmm2
  a5eaf3:	62 f1 74 48 58 fa    	vaddps zmm7,zmm1,zmm2
  a5eaf9:	62 d1 64 48 5c d9    	vsubps zmm3,zmm3,zmm9
  a5eaff:	62 f1 2c 48 5c ed    	vsubps zmm5,zmm10,zmm5
  a5eb05:	62 71 54 48 58 c3    	vaddps zmm8,zmm5,zmm3
  a5eb0b:	62 d1 5c 48 5c e3    	vsubps zmm4,zmm4,zmm11
  a5eb11:	62 51 1c 48 5c de    	vsubps zmm11,zmm12,zmm14
  a5eb17:	62 f1 74 48 5c ca    	vsubps zmm1,zmm1,zmm2
  a5eb1d:	62 71 64 48 5c d5    	vsubps zmm10,zmm3,zmm5
  a5eb23:	62 71 7c 48 28 35 53 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff668453]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a5eb2a:	84 66 ff 
  a5eb2d:	62 72 0d 48 7f e8    	vpermt2ps zmm13,zmm14,zmm0
  a5eb33:	62 f2 0d 48 7f f8    	vpermt2ps zmm7,zmm14,zmm0
  a5eb39:	62 f2 0d 48 7f e0    	vpermt2ps zmm4,zmm14,zmm0
  a5eb3f:	62 f2 0d 48 7f c8    	vpermt2ps zmm1,zmm14,zmm0
  a5eb45:	c4 41 00 57 ff       	vxorps xmm15,xmm15,xmm15
  a5eb4a:	62 52 0d 48 7f ff    	vpermt2ps zmm15,zmm14,zmm15
  a5eb50:	62 71 7c 48 28 25 a6 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff6683a6]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a5eb57:	83 66 ff 
  a5eb5a:	62 d1 7c 48 28 ed    	vmovaps zmm5,zmm13
  a5eb60:	62 d2 1d 48 7f ef    	vpermt2ps zmm5,zmm12,zmm15
  a5eb66:	62 e1 7c 48 28 05 d0 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff6683d0]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a5eb6d:	83 66 ff 
  a5eb70:	62 52 7d 40 7f ef    	vpermt2ps zmm13,zmm16,zmm15
  a5eb76:	62 71 7c 48 28 cf    	vmovaps zmm9,zmm7
  a5eb7c:	62 52 1d 48 7f cf    	vpermt2ps zmm9,zmm12,zmm15
  a5eb82:	62 d2 7d 40 7f ff    	vpermt2ps zmm7,zmm16,zmm15
  a5eb88:	62 e1 7c 48 28 cc    	vmovaps zmm17,zmm4
  a5eb8e:	62 c2 1d 48 7f cf    	vpermt2ps zmm17,zmm12,zmm15
  a5eb94:	62 d2 7d 40 7f e7    	vpermt2ps zmm4,zmm16,zmm15
  a5eb9a:	62 f1 95 48 14 d4    	vunpcklpd zmm2,zmm13,zmm4
  a5eba0:	62 71 7c 48 28 e9    	vmovaps zmm13,zmm1
  a5eba6:	62 52 1d 48 7f ef    	vpermt2ps zmm13,zmm12,zmm15
  a5ebac:	62 d2 7d 40 7f cf    	vpermt2ps zmm1,zmm16,zmm15
  a5ebb2:	62 e1 c5 48 14 d1    	vunpcklpd zmm18,zmm7,zmm1
  a5ebb8:	62 b1 d5 48 14 d9    	vunpcklpd zmm3,zmm5,zmm17
  a5ebbe:	62 b1 d5 48 15 e1    	vunpckhpd zmm4,zmm5,zmm17
  a5ebc4:	62 d1 b5 48 14 fd    	vunpcklpd zmm7,zmm9,zmm13
  a5ebca:	62 51 b5 48 15 cd    	vunpckhpd zmm9,zmm9,zmm13
  a5ebd0:	62 f1 7c 48 28 2d 26 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff668226]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a5ebd7:	82 66 ff 
  a5ebda:	62 f1 7c 48 28 cb    	vmovaps zmm1,zmm3
  a5ebe0:	62 f2 55 48 7f cf    	vpermt2ps zmm1,zmm5,zmm7
  a5ebe6:	62 71 7c 48 28 2d 50 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff668250]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a5ebed:	82 66 ff 
  a5ebf0:	62 f2 15 48 7f df    	vpermt2ps zmm3,zmm13,zmm7
  a5ebf6:	62 f1 7c 48 28 fc    	vmovaps zmm7,zmm4
  a5ebfc:	62 d2 55 48 7f f9    	vpermt2ps zmm7,zmm5,zmm9
  a5ec02:	62 d2 15 48 7f e1    	vpermt2ps zmm4,zmm13,zmm9
  a5ec08:	62 71 7c 48 28 ca    	vmovaps zmm9,zmm2
  a5ec0e:	62 32 55 48 7f ca    	vpermt2ps zmm9,zmm5,zmm18
  a5ec14:	62 b2 15 48 7f d2    	vpermt2ps zmm2,zmm13,zmm18
  a5ec1a:	62 f2 0d 48 7f f0    	vpermt2ps zmm6,zmm14,zmm0
  a5ec20:	62 72 0d 48 7f c0    	vpermt2ps zmm8,zmm14,zmm0
  a5ec26:	62 72 0d 48 7f d8    	vpermt2ps zmm11,zmm14,zmm0
  a5ec2c:	62 72 0d 48 7f d0    	vpermt2ps zmm10,zmm14,zmm0
  a5ec32:	62 f1 7c 48 28 c6    	vmovaps zmm0,zmm6
  a5ec38:	62 d2 1d 48 7f c7    	vpermt2ps zmm0,zmm12,zmm15
  a5ec3e:	62 d2 7d 40 7f f7    	vpermt2ps zmm6,zmm16,zmm15
  a5ec44:	62 51 7c 48 28 f0    	vmovaps zmm14,zmm8
  a5ec4a:	62 52 1d 48 7f f7    	vpermt2ps zmm14,zmm12,zmm15
  a5ec50:	62 52 7d 40 7f c7    	vpermt2ps zmm8,zmm16,zmm15
  a5ec56:	62 c1 7c 48 28 cb    	vmovaps zmm17,zmm11
  a5ec5c:	62 c2 1d 48 7f cf    	vpermt2ps zmm17,zmm12,zmm15
  a5ec62:	62 52 7d 40 7f df    	vpermt2ps zmm11,zmm16,zmm15
  a5ec68:	62 c1 cd 48 14 d3    	vunpcklpd zmm18,zmm6,zmm11
  a5ec6e:	62 52 2d 48 77 e7    	vpermi2ps zmm12,zmm10,zmm15
  a5ec74:	62 52 7d 40 7f d7    	vpermt2ps zmm10,zmm16,zmm15
  a5ec7a:	62 d1 bd 48 14 f2    	vunpcklpd zmm6,zmm8,zmm10
  a5ec80:	62 31 fd 48 14 f9    	vunpcklpd zmm15,zmm0,zmm17
  a5ec86:	62 a1 fd 48 15 c1    	vunpckhpd zmm16,zmm0,zmm17
  a5ec8c:	62 d1 8d 48 14 c4    	vunpcklpd zmm0,zmm14,zmm12
  a5ec92:	62 51 8d 48 15 d4    	vunpckhpd zmm10,zmm14,zmm12
  a5ec98:	62 51 7c 48 28 c7    	vmovaps zmm8,zmm15
  a5ec9e:	62 72 55 48 7f c0    	vpermt2ps zmm8,zmm5,zmm0
  a5eca4:	62 72 15 48 7f f8    	vpermt2ps zmm15,zmm13,zmm0
  a5ecaa:	62 31 7c 48 28 e0    	vmovaps zmm12,zmm16
  a5ecb0:	62 52 55 48 7f e2    	vpermt2ps zmm12,zmm5,zmm10
  a5ecb6:	62 c2 15 48 7f c2    	vpermt2ps zmm16,zmm13,zmm10
  a5ecbc:	62 f2 6d 40 77 ee    	vpermi2ps zmm5,zmm18,zmm6
  a5ecc2:	62 e2 15 48 7f d6    	vpermt2ps zmm18,zmm13,zmm6
  a5ecc8:	62 71 7c 48 10 6a 02 	vmovups zmm13,ZMMWORD PTR [rdx+0x80]
  a5eccf:	62 71 7c 48 10 72 03 	vmovups zmm14,ZMMWORD PTR [rdx+0xc0]
  a5ecd6:	62 e1 7c 48 10 4a 04 	vmovups zmm17,ZMMWORD PTR [rdx+0x100]
  a5ecdd:	62 e1 7c 48 10 5a 05 	vmovups zmm19,ZMMWORD PTR [rdx+0x140]
  a5ece4:	62 e1 7c 48 10 62 06 	vmovups zmm20,ZMMWORD PTR [rdx+0x180]
  a5eceb:	62 e1 7c 48 10 6a 07 	vmovups zmm21,ZMMWORD PTR [rdx+0x1c0]
  a5ecf2:	62 e1 7c 48 10 72 08 	vmovups zmm22,ZMMWORD PTR [rdx+0x200]
  a5ecf9:	62 e1 7c 48 10 7a 09 	vmovups zmm23,ZMMWORD PTR [rdx+0x240]
  a5ed00:	62 61 7c 48 10 42 0a 	vmovups zmm24,ZMMWORD PTR [rdx+0x280]
  a5ed07:	62 61 7c 48 10 4a 0b 	vmovups zmm25,ZMMWORD PTR [rdx+0x2c0]
  a5ed0e:	62 b1 44 48 59 c1    	vmulps zmm0,zmm7,zmm17
  a5ed14:	62 b2 1d 48 bc c3    	vfnmadd231ps zmm0,zmm12,zmm19
  a5ed1a:	62 b1 34 48 59 f6    	vmulps zmm6,zmm9,zmm22
  a5ed20:	62 b2 55 48 bc f7    	vfnmadd231ps zmm6,zmm5,zmm23
  a5ed26:	62 61 7c 48 58 d6    	vaddps zmm26,zmm0,zmm6
  a5ed2c:	62 21 5c 48 59 dc    	vmulps zmm27,zmm4,zmm20
  a5ed32:	62 22 7d 40 bc dd    	vfnmadd231ps zmm27,zmm16,zmm21
  a5ed38:	62 11 6c 48 59 d0    	vmulps zmm10,zmm2,zmm24
  a5ed3e:	62 12 6d 40 bc d1    	vfnmadd231ps zmm10,zmm18,zmm25
  a5ed44:	62 51 64 48 59 dd    	vmulps zmm11,zmm3,zmm13
  a5ed4a:	62 52 05 48 bc de    	vfnmadd231ps zmm11,zmm15,zmm14
  a5ed50:	62 41 2c 48 58 e3    	vaddps zmm28,zmm10,zmm11
  a5ed56:	62 31 1c 48 59 e1    	vmulps zmm12,zmm12,zmm17
  a5ed5c:	62 72 65 40 b8 e7    	vfmadd231ps zmm12,zmm19,zmm7
  a5ed62:	62 b1 54 48 59 ee    	vmulps zmm5,zmm5,zmm22
  a5ed68:	62 d2 45 40 b8 e9    	vfmadd231ps zmm5,zmm23,zmm9
  a5ed6e:	62 f1 1c 48 58 fd    	vaddps zmm7,zmm12,zmm5
  a5ed74:	62 31 7c 40 59 cc    	vmulps zmm9,zmm16,zmm20
  a5ed7a:	62 72 55 40 b8 cc    	vfmadd231ps zmm9,zmm21,zmm4
  a5ed80:	62 91 6c 40 59 e0    	vmulps zmm4,zmm18,zmm24
  a5ed86:	62 f2 35 40 b8 e2    	vfmadd231ps zmm4,zmm25,zmm2
  a5ed8c:	62 51 04 48 59 ed    	vmulps zmm13,zmm15,zmm13
  a5ed92:	62 72 0d 48 b8 eb    	vfmadd231ps zmm13,zmm14,zmm3
  a5ed98:	62 d1 5c 48 58 dd    	vaddps zmm3,zmm4,zmm13
  a5ed9e:	62 f2 7d 48 18 15 b8 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff6166b8]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a5eda5:	66 61 ff 
  a5eda8:	62 71 7c 48 28 f2    	vmovaps zmm14,zmm2
  a5edae:	62 72 2d 40 ac f1    	vfnmadd213ps zmm14,zmm26,zmm1
  a5edb4:	62 72 7d 48 18 3d 16 	vbroadcastss zmm15,DWORD PTR [rip+0xffffffffff616516]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a5edbb:	65 61 ff 
  a5edbe:	62 e1 7c 48 28 c2    	vmovaps zmm16,zmm2
  a5edc4:	62 82 1d 40 ac c3    	vfnmadd213ps zmm16,zmm28,zmm27
  a5edca:	62 e1 7c 48 28 ca    	vmovaps zmm17,zmm2
  a5edd0:	62 c2 45 48 ac c8    	vfnmadd213ps zmm17,zmm7,zmm8
  a5edd6:	62 d2 65 48 ac d1    	vfnmadd213ps zmm2,zmm3,zmm9
  a5eddc:	62 81 24 20 58 d4    	vaddps ymm18,ymm27,ymm28
  a5ede2:	62 81 74 28 58 da    	vaddps ymm19,ymm1,ymm26
  a5ede8:	62 a1 64 20 58 e2    	vaddps ymm20,ymm19,ymm18
  a5edee:	c5 b4 58 db          	vaddps ymm3,ymm9,ymm3
  a5edf2:	c5 bc 58 ff          	vaddps ymm7,ymm8,ymm7
  a5edf6:	c5 40 58 c3          	vaddps xmm8,xmm7,xmm3
  a5edfa:	c5 fc 28 0d de 83 61 	vmovaps ymm1,YMMWORD PTR [rip+0xffffffffff6183de]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  a5ee01:	ff 
  a5ee02:	62 32 75 28 7f c4    	vpermt2ps ymm8,ymm1,ymm20
  a5ee08:	c5 7c 11 06          	vmovups YMMWORD PTR [rsi],ymm8
  a5ee0c:	c4 c1 5c 5c e5       	vsubps ymm4,ymm4,ymm13
  a5ee11:	c5 84 59 e4          	vmulps ymm4,ymm15,ymm4
  a5ee15:	62 71 7c 20 58 c4    	vaddps ymm8,ymm16,ymm4
  a5ee1b:	c5 9c 5c ed          	vsubps ymm5,ymm12,ymm5
  a5ee1f:	c5 84 59 ed          	vmulps ymm5,ymm15,ymm5
  a5ee23:	c5 0c 58 cd          	vaddps ymm9,ymm14,ymm5
  a5ee27:	c4 41 34 5c e0       	vsubps ymm12,ymm9,ymm8
  a5ee2c:	c4 41 2c 5c d3       	vsubps ymm10,ymm10,ymm11
  a5ee31:	c4 41 2c 59 d7       	vmulps ymm10,ymm10,ymm15
  a5ee36:	c4 41 6c 5c da       	vsubps ymm11,ymm2,ymm10
  a5ee3b:	c5 fc 5c c6          	vsubps ymm0,ymm0,ymm6
  a5ee3f:	c5 84 59 c0          	vmulps ymm0,ymm15,ymm0
  a5ee43:	62 f1 74 20 5c f0    	vsubps ymm6,ymm17,ymm0
  a5ee49:	c4 41 48 5c eb       	vsubps xmm13,xmm6,xmm11
  a5ee4e:	62 52 75 28 7f ec    	vpermt2ps ymm13,ymm1,ymm12
  a5ee54:	c5 7c 11 6e 20       	vmovups YMMWORD PTR [rsi+0x20],ymm13
  a5ee59:	62 f1 7c 20 5c e4    	vsubps ymm4,ymm16,ymm4
  a5ee5f:	c5 8c 5c ed          	vsubps ymm5,ymm14,ymm5
  a5ee63:	c5 54 58 e4          	vaddps ymm12,ymm5,ymm4
  a5ee67:	c5 ac 58 d2          	vaddps ymm2,ymm10,ymm2
  a5ee6b:	62 b1 7c 28 58 c1    	vaddps ymm0,ymm0,ymm17
  a5ee71:	c5 78 58 d2          	vaddps xmm10,xmm0,xmm2
  a5ee75:	62 52 75 28 7f d4    	vpermt2ps ymm10,ymm1,ymm12
  a5ee7b:	c5 7c 11 56 40       	vmovups YMMWORD PTR [rsi+0x40],ymm10
  a5ee80:	62 31 64 20 5c d2    	vsubps ymm10,ymm19,ymm18
  a5ee86:	c5 c0 5c db          	vsubps xmm3,xmm7,xmm3
  a5ee8a:	62 d2 75 28 7f da    	vpermt2ps ymm3,ymm1,ymm10
  a5ee90:	c5 fc 11 5e 60       	vmovups YMMWORD PTR [rsi+0x60],ymm3
  a5ee95:	c4 c1 34 58 d8       	vaddps ymm3,ymm9,ymm8
  a5ee9a:	c5 a0 58 f6          	vaddps xmm6,xmm11,xmm6
  a5ee9e:	62 f2 75 28 7f f3    	vpermt2ps ymm6,ymm1,ymm3
  a5eea4:	c5 fc 11 b6 80 00 00 	vmovups YMMWORD PTR [rsi+0x80],ymm6
  a5eeab:	00 
  a5eeac:	c5 d4 5c dc          	vsubps ymm3,ymm5,ymm4
  a5eeb0:	c5 f8 5c c2          	vsubps xmm0,xmm0,xmm2
  a5eeb4:	62 f2 75 28 7f c3    	vpermt2ps ymm0,ymm1,ymm3
  a5eeba:	c5 fc 11 86 a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm0
  a5eec1:	00 
  a5eec2:	48 89 ec             	mov    rsp,rbp
  a5eec5:	5d                   	pop    rbp
  a5eec6:	c5 f8 77             	vzeroupper
  a5eec9:	c3                   	ret
