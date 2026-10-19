
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a037c0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a037c0:	c5 fc 10 1f          	vmovups ymm3,YMMWORD PTR [rdi]
  a037c4:	c5 fc 10 57 20       	vmovups ymm2,YMMWORD PTR [rdi+0x20]
  a037c9:	c5 fc 10 7f 40       	vmovups ymm7,YMMWORD PTR [rdi+0x40]
  a037ce:	c5 fc 10 67 60       	vmovups ymm4,YMMWORD PTR [rdi+0x60]
  a037d3:	62 71 7c 48 28 05 63 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff68ab63]        # 8e340 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b7f0>
  a037da:	ab 68 ff 
  a037dd:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a037e1:	62 f1 7c 48 28 eb    	vmovaps zmm5,zmm3
  a037e7:	62 f2 3d 48 7f e8    	vpermt2ps zmm5,zmm8,zmm0
  a037ed:	62 f1 7c 48 28 0d 89 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff68ab89]        # 8e380 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b830>
  a037f4:	ab 68 ff 
  a037f7:	62 f2 75 48 7f d8    	vpermt2ps zmm3,zmm1,zmm0
  a037fd:	62 71 7c 48 28 ca    	vmovaps zmm9,zmm2
  a03803:	62 72 3d 48 7f c8    	vpermt2ps zmm9,zmm8,zmm0
  a03809:	62 f2 75 48 7f d0    	vpermt2ps zmm2,zmm1,zmm0
  a0380f:	62 71 7c 48 28 d7    	vmovaps zmm10,zmm7
  a03815:	62 72 3d 48 7f d0    	vpermt2ps zmm10,zmm8,zmm0
  a0381b:	62 f2 75 48 7f f8    	vpermt2ps zmm7,zmm1,zmm0
  a03821:	62 71 7c 48 28 dc    	vmovaps zmm11,zmm4
  a03827:	62 72 3d 48 7f d8    	vpermt2ps zmm11,zmm8,zmm0
  a0382d:	62 f2 75 48 7f e0    	vpermt2ps zmm4,zmm1,zmm0
  a03833:	c5 7c 10 a7 80 00 00 	vmovups ymm12,YMMWORD PTR [rdi+0x80]
  a0383a:	00 
  a0383b:	62 51 7c 48 28 ec    	vmovaps zmm13,zmm12
  a03841:	62 72 3d 48 7f e8    	vpermt2ps zmm13,zmm8,zmm0
  a03847:	62 72 75 48 7f e0    	vpermt2ps zmm12,zmm1,zmm0
  a0384d:	c5 7c 10 b7 a0 00 00 	vmovups ymm14,YMMWORD PTR [rdi+0xa0]
  a03854:	00 
  a03855:	62 72 0d 48 77 c0    	vpermi2ps zmm8,zmm14,zmm0
  a0385b:	62 72 75 48 7f f0    	vpermt2ps zmm14,zmm1,zmm0
  a03861:	62 51 44 48 58 fc    	vaddps zmm15,zmm7,zmm12
  a03867:	62 c1 64 48 58 c7    	vaddps zmm16,zmm3,zmm15
  a0386d:	62 e1 0c 48 58 ca    	vaddps zmm17,zmm14,zmm2
  a03873:	62 a1 5c 48 58 d1    	vaddps zmm18,zmm4,zmm17
  a03879:	62 b1 7c 40 58 f2    	vaddps zmm6,zmm16,zmm18
  a0387f:	62 c1 2c 48 58 dd    	vaddps zmm19,zmm10,zmm13
  a03885:	62 a1 54 48 58 e3    	vaddps zmm20,zmm5,zmm19
  a0388b:	62 c1 3c 48 58 e9    	vaddps zmm21,zmm8,zmm9
  a03891:	62 a1 24 48 58 f5    	vaddps zmm22,zmm11,zmm21
  a03897:	62 b1 5c 40 58 ce    	vaddps zmm1,zmm20,zmm22
  a0389d:	62 e2 7d 48 18 3d b9 	vbroadcastss zmm23,DWORD PTR [rip+0xffffffffff671bb9]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a038a4:	1b 67 ff 
  a038a7:	62 d2 45 40 bc df    	vfnmadd231ps zmm3,zmm23,zmm15
  a038ad:	62 51 2c 48 5c d5    	vsubps zmm10,zmm10,zmm13
  a038b3:	62 72 7d 48 18 2d 17 	vbroadcastss zmm13,DWORD PTR [rip+0xffffffffff671a17]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a038ba:	1a 67 ff 
  a038bd:	62 51 2c 48 59 d5    	vmulps zmm10,zmm10,zmm13
  a038c3:	62 51 64 48 58 fa    	vaddps zmm15,zmm3,zmm10
  a038c9:	62 b2 45 40 bc e1    	vfnmadd231ps zmm4,zmm23,zmm17
  a038cf:	62 51 3c 48 5c c1    	vsubps zmm8,zmm8,zmm9
  a038d5:	62 51 3c 48 59 c5    	vmulps zmm8,zmm8,zmm13
  a038db:	62 51 5c 48 58 c8    	vaddps zmm9,zmm4,zmm8
  a038e1:	62 c1 04 48 5c c9    	vsubps zmm17,zmm15,zmm9
  a038e7:	62 b2 45 40 bc eb    	vfnmadd231ps zmm5,zmm23,zmm19
  a038ed:	62 d1 44 48 5c fc    	vsubps zmm7,zmm7,zmm12
  a038f3:	62 d1 44 48 59 fd    	vmulps zmm7,zmm7,zmm13
  a038f9:	62 71 54 48 5c e7    	vsubps zmm12,zmm5,zmm7
  a038ff:	62 32 55 40 bc df    	vfnmadd231ps zmm11,zmm21,zmm23
  a03905:	62 f1 0c 48 5c d2    	vsubps zmm2,zmm14,zmm2
  a0390b:	62 51 6c 48 59 ed    	vmulps zmm13,zmm2,zmm13
  a03911:	62 51 24 48 5c f5    	vsubps zmm14,zmm11,zmm13
  a03917:	62 d1 1c 48 5c d6    	vsubps zmm2,zmm12,zmm14
  a0391d:	62 d1 64 48 5c da    	vsubps zmm3,zmm3,zmm10
  a03923:	62 d1 5c 48 5c e0    	vsubps zmm4,zmm4,zmm8
  a03929:	62 71 64 48 58 d4    	vaddps zmm10,zmm3,zmm4
  a0392f:	62 f1 44 48 58 ed    	vaddps zmm5,zmm7,zmm5
  a03935:	62 51 14 48 58 db    	vaddps zmm11,zmm13,zmm11
  a0393b:	62 d1 54 48 58 fb    	vaddps zmm7,zmm5,zmm11
  a03941:	62 31 7c 40 5c ea    	vsubps zmm13,zmm16,zmm18
  a03947:	62 31 5c 40 5c c6    	vsubps zmm8,zmm20,zmm22
  a0394d:	62 51 04 48 58 c9    	vaddps zmm9,zmm15,zmm9
  a03953:	62 51 1c 48 58 e6    	vaddps zmm12,zmm12,zmm14
  a03959:	62 f1 64 48 5c dc    	vsubps zmm3,zmm3,zmm4
  a0395f:	62 51 54 48 5c db    	vsubps zmm11,zmm5,zmm11
  a03965:	62 71 7c 48 28 35 11 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff6c3611]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a0396c:	36 6c ff 
  a0396f:	62 f2 0d 48 7f f0    	vpermt2ps zmm6,zmm14,zmm0
  a03975:	62 e2 0d 48 7f c8    	vpermt2ps zmm17,zmm14,zmm0
  a0397b:	62 72 0d 48 7f d0    	vpermt2ps zmm10,zmm14,zmm0
  a03981:	62 72 0d 48 7f e8    	vpermt2ps zmm13,zmm14,zmm0
  a03987:	62 72 0d 48 7f c8    	vpermt2ps zmm9,zmm14,zmm0
  a0398d:	62 f2 0d 48 7f d8    	vpermt2ps zmm3,zmm14,zmm0
  a03993:	c4 41 00 57 ff       	vxorps xmm15,xmm15,xmm15
  a03998:	62 52 0d 48 7f ff    	vpermt2ps zmm15,zmm14,zmm15
  a0399e:	62 e1 7c 48 28 05 58 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff6c3558]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a039a5:	35 6c ff 
  a039a8:	62 d2 7d 40 7f f1    	vpermt2ps zmm6,zmm16,zmm9
  a039ae:	62 e2 7d 40 7f cb    	vpermt2ps zmm17,zmm16,zmm3
  a039b4:	62 52 7d 40 7f d7    	vpermt2ps zmm10,zmm16,zmm15
  a039ba:	62 52 7d 40 7f ef    	vpermt2ps zmm13,zmm16,zmm15
  a039c0:	62 d1 cd 48 14 ea    	vunpcklpd zmm5,zmm6,zmm10
  a039c6:	62 d1 cd 48 15 da    	vunpckhpd zmm3,zmm6,zmm10
  a039cc:	62 d1 f5 40 14 f5    	vunpcklpd zmm6,zmm17,zmm13
  a039d2:	62 51 f5 40 15 cd    	vunpckhpd zmm9,zmm17,zmm13
  a039d8:	62 71 7c 48 28 15 1e 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff6c341e]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a039df:	34 6c ff 
  a039e2:	62 f1 7c 48 28 e5    	vmovaps zmm4,zmm5
  a039e8:	62 f2 2d 48 7f e6    	vpermt2ps zmm4,zmm10,zmm6
  a039ee:	62 71 7c 48 28 2d 48 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff6c3448]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a039f5:	34 6c ff 
  a039f8:	62 f2 15 48 7f ee    	vpermt2ps zmm5,zmm13,zmm6
  a039fe:	62 f1 7c 48 28 f3    	vmovaps zmm6,zmm3
  a03a04:	62 d2 2d 48 7f f1    	vpermt2ps zmm6,zmm10,zmm9
  a03a0a:	62 d2 15 48 7f d9    	vpermt2ps zmm3,zmm13,zmm9
  a03a10:	62 f2 0d 48 7f c8    	vpermt2ps zmm1,zmm14,zmm0
  a03a16:	62 f2 0d 48 7f d0    	vpermt2ps zmm2,zmm14,zmm0
  a03a1c:	62 f2 0d 48 7f f8    	vpermt2ps zmm7,zmm14,zmm0
  a03a22:	62 72 0d 48 7f c0    	vpermt2ps zmm8,zmm14,zmm0
  a03a28:	62 72 0d 48 7f e0    	vpermt2ps zmm12,zmm14,zmm0
  a03a2e:	62 72 0d 48 7f d8    	vpermt2ps zmm11,zmm14,zmm0
  a03a34:	62 d2 7d 40 7f cc    	vpermt2ps zmm1,zmm16,zmm12
  a03a3a:	62 d2 7d 40 7f d3    	vpermt2ps zmm2,zmm16,zmm11
  a03a40:	62 d2 7d 40 7f ff    	vpermt2ps zmm7,zmm16,zmm15
  a03a46:	62 52 7d 40 7f c7    	vpermt2ps zmm8,zmm16,zmm15
  a03a4c:	62 f1 f5 48 14 c7    	vunpcklpd zmm0,zmm1,zmm7
  a03a52:	62 f1 f5 48 15 cf    	vunpckhpd zmm1,zmm1,zmm7
  a03a58:	62 d1 ed 48 14 f8    	vunpcklpd zmm7,zmm2,zmm8
  a03a5e:	62 d1 ed 48 15 d0    	vunpckhpd zmm2,zmm2,zmm8
  a03a64:	62 71 7c 48 28 c0    	vmovaps zmm8,zmm0
  a03a6a:	62 72 2d 48 7f c7    	vpermt2ps zmm8,zmm10,zmm7
  a03a70:	62 f2 15 48 7f c7    	vpermt2ps zmm0,zmm13,zmm7
  a03a76:	62 72 75 48 77 d2    	vpermi2ps zmm10,zmm1,zmm2
  a03a7c:	62 f2 15 48 7f ca    	vpermt2ps zmm1,zmm13,zmm2
  a03a82:	62 f1 7c 48 10 52 02 	vmovups zmm2,ZMMWORD PTR [rdx+0x80]
  a03a89:	62 f1 7c 48 10 7a 03 	vmovups zmm7,ZMMWORD PTR [rdx+0xc0]
  a03a90:	62 71 7c 48 10 4a 04 	vmovups zmm9,ZMMWORD PTR [rdx+0x100]
  a03a97:	62 71 7c 48 10 5a 05 	vmovups zmm11,ZMMWORD PTR [rdx+0x140]
  a03a9e:	62 71 7c 48 10 62 06 	vmovups zmm12,ZMMWORD PTR [rdx+0x180]
  a03aa5:	62 71 7c 48 10 6a 07 	vmovups zmm13,ZMMWORD PTR [rdx+0x1c0]
  a03aac:	62 51 4c 48 59 f1    	vmulps zmm14,zmm6,zmm9
  a03ab2:	62 52 2d 48 bc f3    	vfnmadd231ps zmm14,zmm10,zmm11
  a03ab8:	62 51 5c 48 58 fe    	vaddps zmm15,zmm4,zmm14
  a03abe:	62 e1 54 48 59 c2    	vmulps zmm16,zmm5,zmm2
  a03ac4:	62 e2 7d 48 bc c7    	vfnmadd231ps zmm16,zmm0,zmm7
  a03aca:	62 c1 64 48 59 cc    	vmulps zmm17,zmm3,zmm12
  a03ad0:	62 c2 75 48 bc cd    	vfnmadd231ps zmm17,zmm1,zmm13
  a03ad6:	62 a1 7c 40 58 d1    	vaddps zmm18,zmm16,zmm17
  a03adc:	62 51 2c 48 59 c9    	vmulps zmm9,zmm10,zmm9
  a03ae2:	62 72 25 48 b8 ce    	vfmadd231ps zmm9,zmm11,zmm6
  a03ae8:	62 d1 34 48 58 f0    	vaddps zmm6,zmm9,zmm8
  a03aee:	62 f1 7c 48 59 c2    	vmulps zmm0,zmm0,zmm2
  a03af4:	62 f2 45 48 b8 c5    	vfmadd231ps zmm0,zmm7,zmm5
  a03afa:	62 d1 74 48 59 cc    	vmulps zmm1,zmm1,zmm12
  a03b00:	62 f2 15 48 b8 cb    	vfmadd231ps zmm1,zmm13,zmm3
  a03b06:	62 f1 7c 48 58 d1    	vaddps zmm2,zmm0,zmm1
  a03b0c:	62 d1 5c 48 5c de    	vsubps zmm3,zmm4,zmm14
  a03b12:	62 f1 7c 48 5c c1    	vsubps zmm0,zmm0,zmm1
  a03b18:	62 f1 64 48 58 c8    	vaddps zmm1,zmm3,zmm0
  a03b1e:	62 d1 3c 48 5c e1    	vsubps zmm4,zmm8,zmm9
  a03b24:	62 b1 74 40 5c e8    	vsubps zmm5,zmm17,zmm16
  a03b2a:	62 f1 5c 48 58 fd    	vaddps zmm7,zmm4,zmm5
  a03b30:	62 31 04 48 5c c2    	vsubps zmm8,zmm15,zmm18
  a03b36:	62 71 4c 48 5c ca    	vsubps zmm9,zmm6,zmm2
  a03b3c:	62 f1 64 48 5c c0    	vsubps zmm0,zmm3,zmm0
  a03b42:	62 f1 5c 48 5c dd    	vsubps zmm3,zmm4,zmm5
  a03b48:	62 f1 4c 48 58 d2    	vaddps zmm2,zmm6,zmm2
  a03b4e:	62 b1 04 48 58 e2    	vaddps zmm4,zmm15,zmm18
  a03b54:	62 f1 7c 48 28 2d 62 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff68a862]        # 8e3c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b870>
  a03b5b:	a8 68 ff 
  a03b5e:	62 f2 55 48 7f d4    	vpermt2ps zmm2,zmm5,zmm4
  a03b64:	62 f3 7d 48 19 56 02 	vextractf32x4 XMMWORD PTR [rsi+0x20],zmm2,0x2
  a03b6b:	02 
  a03b6c:	c5 fc 11 16          	vmovups YMMWORD PTR [rsi],ymm2
  a03b70:	62 f2 55 48 7f f9    	vpermt2ps zmm7,zmm5,zmm1
  a03b76:	62 f3 7d 48 19 7e 05 	vextractf32x4 XMMWORD PTR [rsi+0x50],zmm7,0x2
  a03b7d:	02 
  a03b7e:	c5 fc 11 7e 30       	vmovups YMMWORD PTR [rsi+0x30],ymm7
  a03b83:	62 52 55 48 7f c8    	vpermt2ps zmm9,zmm5,zmm8
  a03b89:	62 73 7d 48 19 4e 08 	vextractf32x4 XMMWORD PTR [rsi+0x80],zmm9,0x2
  a03b90:	02 
  a03b91:	c5 7c 11 4e 60       	vmovups YMMWORD PTR [rsi+0x60],ymm9
  a03b96:	62 f2 55 48 7f d8    	vpermt2ps zmm3,zmm5,zmm0
  a03b9c:	62 f3 7d 48 19 5e 0b 	vextractf32x4 XMMWORD PTR [rsi+0xb0],zmm3,0x2
  a03ba3:	02 
  a03ba4:	c5 fc 11 9e 90 00 00 	vmovups YMMWORD PTR [rsi+0x90],ymm3
  a03bab:	00 
  a03bac:	c5 f8 77             	vzeroupper
  a03baf:	c3                   	ret
