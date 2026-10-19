
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a6d980 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a6d980:	62 f1 7c 48 28 25 f6 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff626df6]        # 94780 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21c30>
  a6d987:	6d 62 ff 
  a6d98a:	62 f1 7c 48 10 0f    	vmovups zmm1,ZMMWORD PTR [rdi]
  a6d990:	62 f1 7c 48 10 7f 01 	vmovups zmm7,ZMMWORD PTR [rdi+0x40]
  a6d997:	62 71 7c 48 10 4f 02 	vmovups zmm9,ZMMWORD PTR [rdi+0x80]
  a6d99e:	62 f1 7c 48 10 57 03 	vmovups zmm2,ZMMWORD PTR [rdi+0xc0]
  a6d9a5:	c5 e0 57 db          	vxorps xmm3,xmm3,xmm3
  a6d9a9:	62 f1 7c 48 28 f1    	vmovaps zmm6,zmm1
  a6d9af:	62 f2 5d 48 7f f3    	vpermt2ps zmm6,zmm4,zmm3
  a6d9b5:	62 f1 7c 48 28 05 01 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff626e01]        # 947c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21c70>
  a6d9bc:	6e 62 ff 
  a6d9bf:	62 f2 7d 48 7f cb    	vpermt2ps zmm1,zmm0,zmm3
  a6d9c5:	62 71 7c 48 28 c7    	vmovaps zmm8,zmm7
  a6d9cb:	62 72 5d 48 7f c3    	vpermt2ps zmm8,zmm4,zmm3
  a6d9d1:	62 f2 7d 48 7f fb    	vpermt2ps zmm7,zmm0,zmm3
  a6d9d7:	62 51 7c 48 28 d9    	vmovaps zmm11,zmm9
  a6d9dd:	62 72 5d 48 7f db    	vpermt2ps zmm11,zmm4,zmm3
  a6d9e3:	62 72 7d 48 7f cb    	vpermt2ps zmm9,zmm0,zmm3
  a6d9e9:	62 71 7c 48 28 d2    	vmovaps zmm10,zmm2
  a6d9ef:	62 72 5d 48 7f d3    	vpermt2ps zmm10,zmm4,zmm3
  a6d9f5:	62 f2 7d 48 7f d3    	vpermt2ps zmm2,zmm0,zmm3
  a6d9fb:	62 71 7c 48 10 67 04 	vmovups zmm12,ZMMWORD PTR [rdi+0x100]
  a6da02:	62 51 7c 48 28 ec    	vmovaps zmm13,zmm12
  a6da08:	62 72 5d 48 7f eb    	vpermt2ps zmm13,zmm4,zmm3
  a6da0e:	62 72 7d 48 7f e3    	vpermt2ps zmm12,zmm0,zmm3
  a6da14:	62 71 7c 48 10 77 05 	vmovups zmm14,ZMMWORD PTR [rdi+0x140]
  a6da1b:	62 f2 0d 48 77 e3    	vpermi2ps zmm4,zmm14,zmm3
  a6da21:	62 72 7d 48 7f f3    	vpermt2ps zmm14,zmm0,zmm3
  a6da27:	62 d1 24 48 58 ed    	vaddps zmm5,zmm11,zmm13
  a6da2d:	62 71 4c 48 58 fd    	vaddps zmm15,zmm6,zmm5
  a6da33:	62 c1 5c 48 58 c0    	vaddps zmm16,zmm4,zmm8
  a6da39:	62 a1 2c 48 58 c8    	vaddps zmm17,zmm10,zmm16
  a6da3f:	62 b1 04 48 58 c1    	vaddps zmm0,zmm15,zmm17
  a6da45:	62 c1 34 48 58 d4    	vaddps zmm18,zmm9,zmm12
  a6da4b:	62 e2 7d 48 18 1d 0b 	vbroadcastss zmm19,DWORD PTR [rip+0xffffffffff607a0b]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a6da52:	7a 60 ff 
  a6da55:	62 f2 65 40 bc f5    	vfnmadd231ps zmm6,zmm19,zmm5
  a6da5b:	62 a1 74 48 58 e2    	vaddps zmm20,zmm1,zmm18
  a6da61:	62 32 65 40 bc d0    	vfnmadd231ps zmm10,zmm19,zmm16
  a6da67:	62 f1 0c 48 58 ef    	vaddps zmm5,zmm14,zmm7
  a6da6d:	62 b2 65 40 bc ca    	vfnmadd231ps zmm1,zmm19,zmm18
  a6da73:	62 e1 6c 48 58 c5    	vaddps zmm16,zmm2,zmm5
  a6da79:	62 b2 55 48 bc d3    	vfnmadd231ps zmm2,zmm5,zmm19
  a6da7f:	62 b1 5c 40 58 e8    	vaddps zmm5,zmm20,zmm16
  a6da85:	62 e2 7d 48 18 15 45 	vbroadcastss zmm18,DWORD PTR [rip+0xffffffffff607845]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a6da8c:	78 60 ff 
  a6da8f:	62 51 34 48 5c cc    	vsubps zmm9,zmm9,zmm12
  a6da95:	62 31 34 48 59 ca    	vmulps zmm9,zmm9,zmm18
  a6da9b:	62 51 4c 48 58 e1    	vaddps zmm12,zmm6,zmm9
  a6daa1:	62 f1 0c 48 5c ff    	vsubps zmm7,zmm14,zmm7
  a6daa7:	62 b1 44 48 59 fa    	vmulps zmm7,zmm7,zmm18
  a6daad:	62 71 2c 48 58 f7    	vaddps zmm14,zmm10,zmm7
  a6dab3:	62 51 24 48 5c dd    	vsubps zmm11,zmm11,zmm13
  a6dab9:	62 c1 1c 48 5c de    	vsubps zmm19,zmm12,zmm14
  a6dabf:	62 31 24 48 59 da    	vmulps zmm11,zmm11,zmm18
  a6dac5:	62 d1 5c 48 5c e0    	vsubps zmm4,zmm4,zmm8
  a6dacb:	62 51 74 48 5c eb    	vsubps zmm13,zmm1,zmm11
  a6dad1:	62 b1 5c 48 59 e2    	vmulps zmm4,zmm4,zmm18
  a6dad7:	62 e1 6c 48 5c d4    	vsubps zmm18,zmm2,zmm4
  a6dadd:	62 51 4c 48 5c c9    	vsubps zmm9,zmm6,zmm9
  a6dae3:	62 b1 14 48 5c f2    	vsubps zmm6,zmm13,zmm18
  a6dae9:	62 71 2c 48 5c d7    	vsubps zmm10,zmm10,zmm7
  a6daef:	62 c1 34 48 58 ea    	vaddps zmm21,zmm9,zmm10
  a6daf5:	62 f1 24 48 58 c9    	vaddps zmm1,zmm11,zmm1
  a6dafb:	62 f1 5c 48 58 d2    	vaddps zmm2,zmm4,zmm2
  a6db01:	62 f1 74 48 58 fa    	vaddps zmm7,zmm1,zmm2
  a6db07:	62 31 04 48 5c f9    	vsubps zmm15,zmm15,zmm17
  a6db0d:	62 31 5c 40 5c c0    	vsubps zmm8,zmm20,zmm16
  a6db13:	62 d1 1c 48 58 e6    	vaddps zmm4,zmm12,zmm14
  a6db19:	62 31 14 48 58 e2    	vaddps zmm12,zmm13,zmm18
  a6db1f:	62 c1 34 48 5c c2    	vsubps zmm16,zmm9,zmm10
  a6db25:	62 71 74 48 5c d2    	vsubps zmm10,zmm1,zmm2
  a6db2b:	62 71 7c 48 28 0d 4b 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff65944b]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a6db32:	94 65 ff 
  a6db35:	62 f2 35 48 7f c3    	vpermt2ps zmm0,zmm9,zmm3
  a6db3b:	62 e2 35 48 7f db    	vpermt2ps zmm19,zmm9,zmm3
  a6db41:	62 e2 35 48 7f eb    	vpermt2ps zmm21,zmm9,zmm3
  a6db47:	62 72 35 48 7f fb    	vpermt2ps zmm15,zmm9,zmm3
  a6db4d:	62 f2 35 48 7f e3    	vpermt2ps zmm4,zmm9,zmm3
  a6db53:	62 e2 35 48 7f c3    	vpermt2ps zmm16,zmm9,zmm3
  a6db59:	c4 41 10 57 ed       	vxorps xmm13,xmm13,xmm13
  a6db5e:	62 52 35 48 7f ed    	vpermt2ps zmm13,zmm9,zmm13
  a6db64:	62 71 7c 48 28 1d 92 	vmovaps zmm11,ZMMWORD PTR [rip+0xffffffffff659392]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a6db6b:	93 65 ff 
  a6db6e:	62 f1 7c 48 28 c8    	vmovaps zmm1,zmm0
  a6db74:	62 f2 25 48 7f cc    	vpermt2ps zmm1,zmm11,zmm4
  a6db7a:	62 71 7c 48 28 35 bc 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff6593bc]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a6db81:	93 65 ff 
  a6db84:	62 f2 0d 48 7f c4    	vpermt2ps zmm0,zmm14,zmm4
  a6db8a:	62 b1 7c 48 28 d3    	vmovaps zmm2,zmm19
  a6db90:	62 b2 25 48 7f d0    	vpermt2ps zmm2,zmm11,zmm16
  a6db96:	62 a2 0d 48 7f d8    	vpermt2ps zmm19,zmm14,zmm16
  a6db9c:	62 a1 7c 48 28 c5    	vmovaps zmm16,zmm21
  a6dba2:	62 c2 25 48 7f c5    	vpermt2ps zmm16,zmm11,zmm13
  a6dba8:	62 c2 0d 48 7f ed    	vpermt2ps zmm21,zmm14,zmm13
  a6dbae:	62 c1 7c 48 28 cf    	vmovaps zmm17,zmm15
  a6dbb4:	62 c2 25 48 7f cd    	vpermt2ps zmm17,zmm11,zmm13
  a6dbba:	62 52 0d 48 7f fd    	vpermt2ps zmm15,zmm14,zmm13
  a6dbc0:	62 b1 f5 48 14 e0    	vunpcklpd zmm4,zmm1,zmm16
  a6dbc6:	62 b1 f5 48 15 c8    	vunpckhpd zmm1,zmm1,zmm16
  a6dbcc:	62 a1 ed 48 14 c1    	vunpcklpd zmm16,zmm2,zmm17
  a6dbd2:	62 a1 ed 48 15 c9    	vunpckhpd zmm17,zmm2,zmm17
  a6dbd8:	62 b1 fd 48 14 d5    	vunpcklpd zmm2,zmm0,zmm21
  a6dbde:	62 b1 fd 48 15 c5    	vunpckhpd zmm0,zmm0,zmm21
  a6dbe4:	62 c1 e5 40 14 d7    	vunpcklpd zmm18,zmm19,zmm15
  a6dbea:	62 c1 e5 40 15 df    	vunpckhpd zmm19,zmm19,zmm15
  a6dbf0:	62 f2 35 48 7f eb    	vpermt2ps zmm5,zmm9,zmm3
  a6dbf6:	62 f2 35 48 7f f3    	vpermt2ps zmm6,zmm9,zmm3
  a6dbfc:	62 f2 35 48 7f fb    	vpermt2ps zmm7,zmm9,zmm3
  a6dc02:	62 72 35 48 7f c3    	vpermt2ps zmm8,zmm9,zmm3
  a6dc08:	62 72 35 48 7f e3    	vpermt2ps zmm12,zmm9,zmm3
  a6dc0e:	62 72 35 48 7f d3    	vpermt2ps zmm10,zmm9,zmm3
  a6dc14:	62 71 7c 48 28 0d e2 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff6591e2]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a6dc1b:	91 65 ff 
  a6dc1e:	62 e1 7c 48 28 e5    	vmovaps zmm20,zmm5
  a6dc24:	62 c2 25 48 7f e4    	vpermt2ps zmm20,zmm11,zmm12
  a6dc2a:	62 d2 0d 48 7f ec    	vpermt2ps zmm5,zmm14,zmm12
  a6dc30:	62 e1 7c 48 28 ee    	vmovaps zmm21,zmm6
  a6dc36:	62 c2 25 48 7f ea    	vpermt2ps zmm21,zmm11,zmm10
  a6dc3c:	62 d2 0d 48 7f f2    	vpermt2ps zmm6,zmm14,zmm10
  a6dc42:	62 71 7c 48 28 d7    	vmovaps zmm10,zmm7
  a6dc48:	62 52 25 48 7f d5    	vpermt2ps zmm10,zmm11,zmm13
  a6dc4e:	62 d2 0d 48 7f fd    	vpermt2ps zmm7,zmm14,zmm13
  a6dc54:	62 52 3d 48 77 dd    	vpermi2ps zmm11,zmm8,zmm13
  a6dc5a:	62 52 0d 48 7f c5    	vpermt2ps zmm8,zmm14,zmm13
  a6dc60:	62 f1 7c 48 28 dc    	vmovaps zmm3,zmm4
  a6dc66:	62 b2 35 48 7f d8    	vpermt2ps zmm3,zmm9,zmm16
  a6dc6c:	62 e1 7c 48 28 35 ca 	vmovaps zmm22,ZMMWORD PTR [rip+0xffffffffff6591ca]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a6dc73:	91 65 ff 
  a6dc76:	62 b2 4d 40 7f e0    	vpermt2ps zmm4,zmm22,zmm16
  a6dc7c:	62 71 7c 48 28 f1    	vmovaps zmm14,zmm1
  a6dc82:	62 32 35 48 7f f1    	vpermt2ps zmm14,zmm9,zmm17
  a6dc88:	62 b2 4d 40 7f c9    	vpermt2ps zmm1,zmm22,zmm17
  a6dc8e:	62 71 7c 48 28 fa    	vmovaps zmm15,zmm2
  a6dc94:	62 32 35 48 7f fa    	vpermt2ps zmm15,zmm9,zmm18
  a6dc9a:	62 b2 4d 40 7f d2    	vpermt2ps zmm2,zmm22,zmm18
  a6dca0:	62 71 7c 48 28 e8    	vmovaps zmm13,zmm0
  a6dca6:	62 32 35 48 7f eb    	vpermt2ps zmm13,zmm9,zmm19
  a6dcac:	62 b2 4d 40 7f c3    	vpermt2ps zmm0,zmm22,zmm19
  a6dcb2:	62 51 dd 40 14 e2    	vunpcklpd zmm12,zmm20,zmm10
  a6dcb8:	62 51 dd 40 15 d2    	vunpckhpd zmm10,zmm20,zmm10
  a6dcbe:	62 c1 d5 40 14 c3    	vunpcklpd zmm16,zmm21,zmm11
  a6dcc4:	62 c1 d5 40 15 cb    	vunpckhpd zmm17,zmm21,zmm11
  a6dcca:	62 71 d5 48 14 df    	vunpcklpd zmm11,zmm5,zmm7
  a6dcd0:	62 f1 d5 48 15 ff    	vunpckhpd zmm7,zmm5,zmm7
  a6dcd6:	62 c1 cd 48 14 d0    	vunpcklpd zmm18,zmm6,zmm8
  a6dcdc:	62 d1 cd 48 15 f0    	vunpckhpd zmm6,zmm6,zmm8
  a6dce2:	62 d1 7c 48 28 ec    	vmovaps zmm5,zmm12
  a6dce8:	62 b2 35 48 7f e8    	vpermt2ps zmm5,zmm9,zmm16
  a6dcee:	62 32 4d 40 7f e0    	vpermt2ps zmm12,zmm22,zmm16
  a6dcf4:	62 c1 7c 48 28 c2    	vmovaps zmm16,zmm10
  a6dcfa:	62 a2 35 48 7f c1    	vpermt2ps zmm16,zmm9,zmm17
  a6dd00:	62 32 4d 40 7f d1    	vpermt2ps zmm10,zmm22,zmm17
  a6dd06:	62 51 7c 48 28 c3    	vmovaps zmm8,zmm11
  a6dd0c:	62 32 35 48 7f c2    	vpermt2ps zmm8,zmm9,zmm18
  a6dd12:	62 32 4d 40 7f da    	vpermt2ps zmm11,zmm22,zmm18
  a6dd18:	62 72 45 48 77 ce    	vpermi2ps zmm9,zmm7,zmm6
  a6dd1e:	62 f2 4d 40 7f fe    	vpermt2ps zmm7,zmm22,zmm6
  a6dd24:	62 e1 7c 48 10 4a 08 	vmovups zmm17,ZMMWORD PTR [rdx+0x200]
  a6dd2b:	62 e1 7c 48 10 52 09 	vmovups zmm18,ZMMWORD PTR [rdx+0x240]
  a6dd32:	62 b1 04 48 59 f1    	vmulps zmm6,zmm15,zmm17
  a6dd38:	62 b2 3d 48 bc f2    	vfnmadd231ps zmm6,zmm8,zmm18
  a6dd3e:	62 31 3c 48 59 c1    	vmulps zmm8,zmm8,zmm17
  a6dd44:	62 e1 7c 48 10 4a 04 	vmovups zmm17,ZMMWORD PTR [rdx+0x100]
  a6dd4b:	62 52 6d 40 b8 c7    	vfmadd231ps zmm8,zmm18,zmm15
  a6dd51:	62 e1 7c 48 10 52 05 	vmovups zmm18,ZMMWORD PTR [rdx+0x140]
  a6dd58:	62 31 0c 48 59 f9    	vmulps zmm15,zmm14,zmm17
  a6dd5e:	62 32 7d 40 bc fa    	vfnmadd231ps zmm15,zmm16,zmm18
  a6dd64:	62 a1 7c 40 59 c1    	vmulps zmm16,zmm16,zmm17
  a6dd6a:	62 e1 7c 48 10 4a 0c 	vmovups zmm17,ZMMWORD PTR [rdx+0x300]
  a6dd71:	62 c2 6d 40 b8 c6    	vfmadd231ps zmm16,zmm18,zmm14
  a6dd77:	62 71 7c 48 10 72 0d 	vmovups zmm14,ZMMWORD PTR [rdx+0x340]
  a6dd7e:	62 a1 14 48 59 d1    	vmulps zmm18,zmm13,zmm17
  a6dd84:	62 c2 35 48 bc d6    	vfnmadd231ps zmm18,zmm9,zmm14
  a6dd8a:	62 31 34 48 59 c9    	vmulps zmm9,zmm9,zmm17
  a6dd90:	62 e1 7c 48 10 4a 02 	vmovups zmm17,ZMMWORD PTR [rdx+0x80]
  a6dd97:	62 52 0d 48 b8 cd    	vfmadd231ps zmm9,zmm14,zmm13
  a6dd9d:	62 71 7c 48 10 6a 03 	vmovups zmm13,ZMMWORD PTR [rdx+0xc0]
  a6dda4:	62 31 5c 48 59 f1    	vmulps zmm14,zmm4,zmm17
  a6ddaa:	62 52 1d 48 bc f5    	vfnmadd231ps zmm14,zmm12,zmm13
  a6ddb0:	62 31 1c 48 59 e1    	vmulps zmm12,zmm12,zmm17
  a6ddb6:	62 e1 7c 48 10 4a 0a 	vmovups zmm17,ZMMWORD PTR [rdx+0x280]
  a6ddbd:	62 72 15 48 b8 e4    	vfmadd231ps zmm12,zmm13,zmm4
  a6ddc3:	62 f1 7c 48 10 62 0b 	vmovups zmm4,ZMMWORD PTR [rdx+0x2c0]
  a6ddca:	62 31 6c 48 59 e9    	vmulps zmm13,zmm2,zmm17
  a6ddd0:	62 72 25 48 bc ec    	vfnmadd231ps zmm13,zmm11,zmm4
  a6ddd6:	62 31 24 48 59 d9    	vmulps zmm11,zmm11,zmm17
  a6dddc:	62 e1 7c 48 10 4a 06 	vmovups zmm17,ZMMWORD PTR [rdx+0x180]
  a6dde3:	62 72 5d 48 b8 da    	vfmadd231ps zmm11,zmm4,zmm2
  a6dde9:	62 f1 7c 48 10 52 07 	vmovups zmm2,ZMMWORD PTR [rdx+0x1c0]
  a6ddf0:	62 b1 74 48 59 e1    	vmulps zmm4,zmm1,zmm17
  a6ddf6:	62 f2 2d 48 bc e2    	vfnmadd231ps zmm4,zmm10,zmm2
  a6ddfc:	62 31 2c 48 59 d1    	vmulps zmm10,zmm10,zmm17
  a6de02:	62 e1 7c 48 10 4a 0e 	vmovups zmm17,ZMMWORD PTR [rdx+0x380]
  a6de09:	62 72 6d 48 b8 d1    	vfmadd231ps zmm10,zmm2,zmm1
  a6de0f:	62 f1 7c 48 10 4a 0f 	vmovups zmm1,ZMMWORD PTR [rdx+0x3c0]
  a6de16:	62 b1 7c 48 59 d1    	vmulps zmm2,zmm0,zmm17
  a6de1c:	62 f2 45 48 bc d1    	vfnmadd231ps zmm2,zmm7,zmm1
  a6de22:	62 b1 44 48 59 f9    	vmulps zmm7,zmm7,zmm17
  a6de28:	62 f2 75 48 b8 f8    	vfmadd231ps zmm7,zmm1,zmm0
  a6de2e:	62 f1 64 48 58 c6    	vaddps zmm0,zmm3,zmm6
  a6de34:	62 f1 64 48 5c ce    	vsubps zmm1,zmm3,zmm6
  a6de3a:	62 d1 7c 40 58 d9    	vaddps zmm3,zmm16,zmm9
  a6de40:	62 d1 7c 40 5c f1    	vsubps zmm6,zmm16,zmm9
  a6de46:	62 51 0c 48 58 cd    	vaddps zmm9,zmm14,zmm13
  a6de4c:	62 51 0c 48 5c ed    	vsubps zmm13,zmm14,zmm13
  a6de52:	62 51 1c 48 58 f3    	vaddps zmm14,zmm12,zmm11
  a6de58:	62 51 1c 48 5c db    	vsubps zmm11,zmm12,zmm11
  a6de5e:	62 71 2c 48 58 e7    	vaddps zmm12,zmm10,zmm7
  a6de64:	62 f1 2c 48 5c ff    	vsubps zmm7,zmm10,zmm7
  a6de6a:	62 71 5c 48 58 d2    	vaddps zmm10,zmm4,zmm2
  a6de70:	62 f1 5c 48 5c d2    	vsubps zmm2,zmm4,zmm2
  a6de76:	62 f1 3c 48 58 e5    	vaddps zmm4,zmm8,zmm5
  a6de7c:	62 d1 54 48 5c e8    	vsubps zmm5,zmm5,zmm8
  a6de82:	62 31 04 48 58 c2    	vaddps zmm8,zmm15,zmm18
  a6de88:	62 51 6c 40 5c ff    	vsubps zmm15,zmm18,zmm15
  a6de8e:	62 c1 14 48 58 c3    	vaddps zmm16,zmm13,zmm11
  a6de94:	62 51 24 48 5c dd    	vsubps zmm11,zmm11,zmm13
  a6de9a:	62 71 44 48 5c ea    	vsubps zmm13,zmm7,zmm2
  a6dea0:	62 f1 6c 48 58 d7    	vaddps zmm2,zmm2,zmm7
  a6dea6:	62 f2 7d 48 18 3d ec 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff6074ec]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a6dead:	74 60 ff 
  a6deb0:	62 e1 7c 40 59 c7    	vmulps zmm16,zmm16,zmm7
  a6deb6:	62 71 14 48 59 ef    	vmulps zmm13,zmm13,zmm7
  a6debc:	62 71 24 48 59 df    	vmulps zmm11,zmm11,zmm7
  a6dec2:	62 f1 6c 48 59 d7    	vmulps zmm2,zmm2,zmm7
  a6dec8:	62 d1 7c 48 58 f8    	vaddps zmm7,zmm0,zmm8
  a6dece:	62 d1 7c 48 5c c0    	vsubps zmm0,zmm0,zmm8
  a6ded4:	62 51 0c 48 58 c4    	vaddps zmm8,zmm14,zmm12
  a6deda:	62 51 0c 48 5c e4    	vsubps zmm12,zmm14,zmm12
  a6dee0:	62 71 64 48 58 f4    	vaddps zmm14,zmm3,zmm4
  a6dee6:	62 f1 5c 48 5c db    	vsubps zmm3,zmm4,zmm3
  a6deec:	62 d1 34 48 58 e2    	vaddps zmm4,zmm9,zmm10
  a6def2:	62 51 2c 48 5c c9    	vsubps zmm9,zmm10,zmm9
  a6def8:	62 71 74 48 58 d6    	vaddps zmm10,zmm1,zmm6
  a6defe:	62 f1 74 48 5c ce    	vsubps zmm1,zmm1,zmm6
  a6df04:	62 f1 24 48 5c f2    	vsubps zmm6,zmm11,zmm2
  a6df0a:	62 f1 24 48 58 d2    	vaddps zmm2,zmm11,zmm2
  a6df10:	62 71 04 48 58 dd    	vaddps zmm11,zmm15,zmm5
  a6df16:	62 d1 54 48 5c ef    	vsubps zmm5,zmm5,zmm15
  a6df1c:	62 51 7c 40 58 fd    	vaddps zmm15,zmm16,zmm13
  a6df22:	62 31 14 48 5c e8    	vsubps zmm13,zmm13,zmm16
  a6df28:	62 c1 2c 48 58 c7    	vaddps zmm16,zmm10,zmm15
  a6df2e:	62 51 2c 48 5c d7    	vsubps zmm10,zmm10,zmm15
  a6df34:	62 71 24 48 58 fe    	vaddps zmm15,zmm11,zmm6
  a6df3a:	62 f1 24 48 5c f6    	vsubps zmm6,zmm11,zmm6
  a6df40:	62 51 7c 48 58 dc    	vaddps zmm11,zmm0,zmm12
  a6df46:	62 d1 7c 48 5c c4    	vsubps zmm0,zmm0,zmm12
  a6df4c:	62 51 64 48 58 e1    	vaddps zmm12,zmm3,zmm9
  a6df52:	62 d1 64 48 5c d9    	vsubps zmm3,zmm3,zmm9
  a6df58:	62 71 74 48 58 ca    	vaddps zmm9,zmm1,zmm2
  a6df5e:	62 f1 74 48 5c ca    	vsubps zmm1,zmm1,zmm2
  a6df64:	62 d1 54 48 58 d5    	vaddps zmm2,zmm5,zmm13
  a6df6a:	62 d1 54 48 5c ed    	vsubps zmm5,zmm5,zmm13
  a6df70:	62 71 44 48 5c ec    	vsubps zmm13,zmm7,zmm4
  a6df76:	62 f1 44 48 58 e4    	vaddps zmm4,zmm7,zmm4
  a6df7c:	62 d1 0c 48 5c f8    	vsubps zmm7,zmm14,zmm8
  a6df82:	62 51 0c 48 58 c0    	vaddps zmm8,zmm14,zmm8
  a6df88:	62 71 7c 48 28 35 6e 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff62686e]        # 94800 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21cb0>
  a6df8f:	68 62 ff 
  a6df92:	62 d2 0d 48 7f e0    	vpermt2ps zmm4,zmm14,zmm8
  a6df98:	62 c2 0d 48 7f c7    	vpermt2ps zmm16,zmm14,zmm15
  a6df9e:	62 52 0d 48 7f dc    	vpermt2ps zmm11,zmm14,zmm12
  a6dfa4:	62 72 0d 48 7f ca    	vpermt2ps zmm9,zmm14,zmm2
  a6dfaa:	62 72 0d 48 7f ef    	vpermt2ps zmm13,zmm14,zmm7
  a6dfb0:	62 72 0d 48 7f d6    	vpermt2ps zmm10,zmm14,zmm6
  a6dfb6:	62 f2 0d 48 7f c3    	vpermt2ps zmm0,zmm14,zmm3
  a6dfbc:	62 f2 0d 48 7f cd    	vpermt2ps zmm1,zmm14,zmm5
  a6dfc2:	62 f3 7d 48 19 66 02 	vextractf32x4 XMMWORD PTR [rsi+0x20],zmm4,0x2
  a6dfc9:	02 
  a6dfca:	c5 fc 11 26          	vmovups YMMWORD PTR [rsi],ymm4
  a6dfce:	62 e3 7d 48 19 46 05 	vextractf32x4 XMMWORD PTR [rsi+0x50],zmm16,0x2
  a6dfd5:	02 
  a6dfd6:	62 e1 7c 28 11 86 30 	vmovups YMMWORD PTR [rsi+0x30],ymm16
  a6dfdd:	00 00 00 
  a6dfe0:	62 73 7d 48 19 5e 08 	vextractf32x4 XMMWORD PTR [rsi+0x80],zmm11,0x2
  a6dfe7:	02 
  a6dfe8:	c5 7c 11 5e 60       	vmovups YMMWORD PTR [rsi+0x60],ymm11
  a6dfed:	62 73 7d 48 19 4e 0b 	vextractf32x4 XMMWORD PTR [rsi+0xb0],zmm9,0x2
  a6dff4:	02 
  a6dff5:	c5 7c 11 8e 90 00 00 	vmovups YMMWORD PTR [rsi+0x90],ymm9
  a6dffc:	00 
  a6dffd:	62 73 7d 48 19 6e 0e 	vextractf32x4 XMMWORD PTR [rsi+0xe0],zmm13,0x2
  a6e004:	02 
  a6e005:	c5 7c 11 ae c0 00 00 	vmovups YMMWORD PTR [rsi+0xc0],ymm13
  a6e00c:	00 
  a6e00d:	62 73 7d 48 19 56 11 	vextractf32x4 XMMWORD PTR [rsi+0x110],zmm10,0x2
  a6e014:	02 
  a6e015:	c5 7c 11 96 f0 00 00 	vmovups YMMWORD PTR [rsi+0xf0],ymm10
  a6e01c:	00 
  a6e01d:	62 f3 7d 48 19 46 14 	vextractf32x4 XMMWORD PTR [rsi+0x140],zmm0,0x2
  a6e024:	02 
  a6e025:	c5 fc 11 86 20 01 00 	vmovups YMMWORD PTR [rsi+0x120],ymm0
  a6e02c:	00 
  a6e02d:	62 f3 7d 48 19 4e 17 	vextractf32x4 XMMWORD PTR [rsi+0x170],zmm1,0x2
  a6e034:	02 
  a6e035:	c5 fc 11 8e 50 01 00 	vmovups YMMWORD PTR [rsi+0x150],ymm1
  a6e03c:	00 
  a6e03d:	c5 f8 77             	vzeroupper
  a6e040:	c3                   	ret
