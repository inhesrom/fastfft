
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000008fc6c0 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  8fc6c0:	c5 fb 12 47 28       	vmovddup xmm0,QWORD PTR [rdi+0x28]
  8fc6c5:	c4 e3 79 0d 47 20 01 	vblendpd xmm0,xmm0,XMMWORD PTR [rdi+0x20],0x1
  8fc6cc:	c5 fd 10 0f          	vmovupd ymm1,YMMWORD PTR [rdi]
  8fc6d0:	c5 fd 10 5f 30       	vmovupd ymm3,YMMWORD PTR [rdi+0x30]
  8fc6d5:	c5 fd 10 67 60       	vmovupd ymm4,YMMWORD PTR [rdi+0x60]
  8fc6da:	c5 fd 10 af 90 00 00 	vmovupd ymm5,YMMWORD PTR [rdi+0x90]
  8fc6e1:	00 
  8fc6e2:	62 f3 75 48 18 c8 02 	vinsertf32x4 zmm1,zmm1,xmm0,0x2
  8fc6e9:	62 f1 fd 48 28 35 4d 	vmovapd zmm6,ZMMWORD PTR [rip+0xffffffffff78164d]        # 7dd40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xb1f0>
  8fc6f0:	16 78 ff 
  8fc6f3:	c5 f9 57 c0          	vxorpd xmm0,xmm0,xmm0
  8fc6f7:	62 f1 fd 48 28 d1    	vmovapd zmm2,zmm1
  8fc6fd:	62 f2 cd 48 7f d0    	vpermt2pd zmm2,zmm6,zmm0
  8fc703:	62 f1 fd 48 28 3d 73 	vmovapd zmm7,ZMMWORD PTR [rip+0xffffffffff781673]        # 7dd80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xb230>
  8fc70a:	16 78 ff 
  8fc70d:	62 f2 c5 48 7f c8    	vpermt2pd zmm1,zmm7,zmm0
  8fc713:	c5 7b 12 47 58       	vmovddup xmm8,QWORD PTR [rdi+0x58]
  8fc718:	c4 63 39 0d 47 50 01 	vblendpd xmm8,xmm8,XMMWORD PTR [rdi+0x50],0x1
  8fc71f:	62 53 65 48 18 c0 02 	vinsertf32x4 zmm8,zmm3,xmm8,0x2
  8fc726:	62 51 fd 48 28 c8    	vmovapd zmm9,zmm8
  8fc72c:	62 72 cd 48 7f c8    	vpermt2pd zmm9,zmm6,zmm0
  8fc732:	62 72 c5 48 7f c0    	vpermt2pd zmm8,zmm7,zmm0
  8fc738:	c5 fb 12 9f 88 00 00 	vmovddup xmm3,QWORD PTR [rdi+0x88]
  8fc73f:	00 
  8fc740:	c4 e3 61 0d 9f 80 00 	vblendpd xmm3,xmm3,XMMWORD PTR [rdi+0x80],0x1
  8fc747:	00 00 01 
  8fc74a:	62 73 5d 48 18 d3 02 	vinsertf32x4 zmm10,zmm4,xmm3,0x2
  8fc751:	62 51 fd 48 28 da    	vmovapd zmm11,zmm10
  8fc757:	62 72 cd 48 7f d8    	vpermt2pd zmm11,zmm6,zmm0
  8fc75d:	62 72 c5 48 7f d0    	vpermt2pd zmm10,zmm7,zmm0
  8fc763:	c5 fb 12 9f b8 00 00 	vmovddup xmm3,QWORD PTR [rdi+0xb8]
  8fc76a:	00 
  8fc76b:	c4 e3 61 0d 9f b0 00 	vblendpd xmm3,xmm3,XMMWORD PTR [rdi+0xb0],0x1
  8fc772:	00 00 01 
  8fc775:	62 f3 55 48 18 eb 02 	vinsertf32x4 zmm5,zmm5,xmm3,0x2
  8fc77c:	62 71 fd 48 28 e5    	vmovapd zmm12,zmm5
  8fc782:	62 72 cd 48 7f e0    	vpermt2pd zmm12,zmm6,zmm0
  8fc788:	62 f2 c5 48 7f e8    	vpermt2pd zmm5,zmm7,zmm0
  8fc78e:	c5 fb 12 9f e8 00 00 	vmovddup xmm3,QWORD PTR [rdi+0xe8]
  8fc795:	00 
  8fc796:	c4 e3 61 0d 9f e0 00 	vblendpd xmm3,xmm3,XMMWORD PTR [rdi+0xe0],0x1
  8fc79d:	00 00 01 
  8fc7a0:	c5 fd 10 a7 c0 00 00 	vmovupd ymm4,YMMWORD PTR [rdi+0xc0]
  8fc7a7:	00 
  8fc7a8:	62 73 5d 48 18 eb 02 	vinsertf32x4 zmm13,zmm4,xmm3,0x2
  8fc7af:	62 f2 95 48 77 f0    	vpermi2pd zmm6,zmm13,zmm0
  8fc7b5:	62 72 c5 48 7f e8    	vpermt2pd zmm13,zmm7,zmm0
  8fc7bb:	62 d1 bd 48 58 fd    	vaddpd zmm7,zmm8,zmm13
  8fc7c1:	62 f1 f5 48 58 df    	vaddpd zmm3,zmm1,zmm7
  8fc7c7:	62 71 ad 48 58 f5    	vaddpd zmm14,zmm10,zmm5
  8fc7cd:	62 d1 e5 48 58 e6    	vaddpd zmm4,zmm3,zmm14
  8fc7d3:	62 71 b5 48 58 fe    	vaddpd zmm15,zmm9,zmm6
  8fc7d9:	62 d1 ed 48 58 df    	vaddpd zmm3,zmm2,zmm15
  8fc7df:	62 c1 a5 48 58 c4    	vaddpd zmm16,zmm11,zmm12
  8fc7e5:	62 b1 e5 48 58 d8    	vaddpd zmm3,zmm3,zmm16
  8fc7eb:	62 e2 fd 48 19 0d 63 	vbroadcastsd zmm17,QWORD PTR [rip+0xffffffffff778263]        # 74a58 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f08>
  8fc7f2:	82 77 ff 
  8fc7f5:	62 a1 fd 48 28 d1    	vmovapd zmm18,zmm17
  8fc7fb:	62 e2 c5 48 a8 d1    	vfmadd213pd zmm18,zmm7,zmm1
  8fc801:	62 e2 fd 48 19 1d 0d 	vbroadcastsd zmm19,QWORD PTR [rip+0xffffffffff77880d]        # 75018 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x24c8>
  8fc808:	88 77 ff 
  8fc80b:	62 a2 8d 48 bc d3    	vfnmadd231pd zmm18,zmm14,zmm19
  8fc811:	62 f1 b5 48 5c f6    	vsubpd zmm6,zmm9,zmm6
  8fc817:	62 51 a5 48 5c cc    	vsubpd zmm9,zmm11,zmm12
  8fc81d:	62 72 fd 48 19 1d a1 	vbroadcastsd zmm11,QWORD PTR [rip+0xffffffffff777fa1]        # 747c8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c78>
  8fc824:	7f 77 ff 
  8fc827:	62 51 b5 48 59 e3    	vmulpd zmm12,zmm9,zmm11
  8fc82d:	62 e2 fd 48 19 25 99 	vbroadcastsd zmm20,QWORD PTR [rip+0xffffffffff778399]        # 74bd0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2080>
  8fc834:	83 77 ff 
  8fc837:	62 32 cd 48 b8 e4    	vfmadd231pd zmm12,zmm6,zmm20
  8fc83d:	62 c1 ed 40 58 ec    	vaddpd zmm21,zmm18,zmm12
  8fc843:	62 a1 fd 48 28 f1    	vmovapd zmm22,zmm17
  8fc849:	62 e2 85 48 a8 f2    	vfmadd213pd zmm22,zmm15,zmm2
  8fc84f:	62 a2 fd 40 bc f3    	vfnmadd231pd zmm22,zmm16,zmm19
  8fc855:	62 51 bd 48 5c c5    	vsubpd zmm8,zmm8,zmm13
  8fc85b:	62 f1 ad 48 5c ed    	vsubpd zmm5,zmm10,zmm5
  8fc861:	62 51 d5 48 59 d3    	vmulpd zmm10,zmm5,zmm11
  8fc867:	62 32 bd 48 b8 d4    	vfmadd231pd zmm10,zmm8,zmm20
  8fc86d:	62 51 cd 40 5c ea    	vsubpd zmm13,zmm22,zmm10
  8fc873:	62 f2 e5 40 bc cf    	vfnmadd231pd zmm1,zmm19,zmm7
  8fc879:	62 d2 f5 40 b8 ce    	vfmadd231pd zmm1,zmm17,zmm14
  8fc87f:	62 d1 cd 48 59 f3    	vmulpd zmm6,zmm6,zmm11
  8fc885:	62 d2 dd 40 bc f1    	vfnmadd231pd zmm6,zmm20,zmm9
  8fc88b:	62 f1 f5 48 58 fe    	vaddpd zmm7,zmm1,zmm6
  8fc891:	62 b2 85 48 bc d3    	vfnmadd231pd zmm2,zmm15,zmm19
  8fc897:	62 b2 fd 40 b8 d1    	vfmadd231pd zmm2,zmm16,zmm17
  8fc89d:	62 51 bd 48 59 c3    	vmulpd zmm8,zmm8,zmm11
  8fc8a3:	62 32 d5 48 bc c4    	vfnmadd231pd zmm8,zmm5,zmm20
  8fc8a9:	62 d1 ed 48 5c e8    	vsubpd zmm5,zmm2,zmm8
  8fc8af:	62 f1 f5 48 5c ce    	vsubpd zmm1,zmm1,zmm6
  8fc8b5:	62 f1 bd 48 58 d2    	vaddpd zmm2,zmm8,zmm2
  8fc8bb:	62 d1 ed 40 5c f4    	vsubpd zmm6,zmm18,zmm12
  8fc8c1:	62 31 ad 48 58 c6    	vaddpd zmm8,zmm10,zmm22
  8fc8c7:	62 71 fd 48 10 0d 97 	vmovupd zmm9,ZMMWORD PTR [rip+0xffffffffff7ca497]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  8fc8ce:	a4 7c ff 
  8fc8d1:	62 f2 b5 48 7f e6    	vpermt2pd zmm4,zmm9,zmm6
  8fc8d7:	62 e2 b5 48 7f e8    	vpermt2pd zmm21,zmm9,zmm0
  8fc8dd:	62 f2 b5 48 7f f8    	vpermt2pd zmm7,zmm9,zmm0
  8fc8e3:	62 f2 b5 48 7f c8    	vpermt2pd zmm1,zmm9,zmm0
  8fc8e9:	62 f1 fd 48 10 35 f5 	vmovupd zmm6,ZMMWORD PTR [rip+0xffffffffff7ca3f5]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  8fc8f0:	a3 7c ff 
  8fc8f3:	62 71 fd 48 28 d4    	vmovapd zmm10,zmm4
  8fc8f9:	62 72 cd 48 7f d7    	vpermt2pd zmm10,zmm6,zmm7
  8fc8ff:	62 71 fd 48 10 1d 1f 	vmovupd zmm11,ZMMWORD PTR [rip+0xffffffffff7ca41f]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  8fc906:	a4 7c ff 
  8fc909:	62 f2 a5 48 7f e7    	vpermt2pd zmm4,zmm11,zmm7
  8fc90f:	62 b1 fd 48 28 fd    	vmovapd zmm7,zmm21
  8fc915:	62 f2 cd 48 7f f9    	vpermt2pd zmm7,zmm6,zmm1
  8fc91b:	62 e2 a5 48 7f e9    	vpermt2pd zmm21,zmm11,zmm1
  8fc921:	62 b1 dd 48 14 cd    	vunpcklpd zmm1,zmm4,zmm21
  8fc927:	62 f1 ad 48 14 e7    	vunpcklpd zmm4,zmm10,zmm7
  8fc92d:	62 f1 ad 48 15 ff    	vunpckhpd zmm7,zmm10,zmm7
  8fc933:	62 d2 b5 48 7f d8    	vpermt2pd zmm3,zmm9,zmm8
  8fc939:	62 72 b5 48 7f e8    	vpermt2pd zmm13,zmm9,zmm0
  8fc93f:	62 f2 b5 48 7f e8    	vpermt2pd zmm5,zmm9,zmm0
  8fc945:	62 f2 b5 48 7f d0    	vpermt2pd zmm2,zmm9,zmm0
  8fc94b:	62 f1 fd 48 28 c3    	vmovapd zmm0,zmm3
  8fc951:	62 f2 cd 48 7f c5    	vpermt2pd zmm0,zmm6,zmm5
  8fc957:	62 f2 a5 48 7f dd    	vpermt2pd zmm3,zmm11,zmm5
  8fc95d:	62 f2 95 48 77 f2    	vpermi2pd zmm6,zmm13,zmm2
  8fc963:	62 72 a5 48 7f ea    	vpermt2pd zmm13,zmm11,zmm2
  8fc969:	62 d1 e5 48 14 d5    	vunpcklpd zmm2,zmm3,zmm13
  8fc96f:	62 f1 fd 48 14 de    	vunpcklpd zmm3,zmm0,zmm6
  8fc975:	62 f1 fd 48 15 c6    	vunpckhpd zmm0,zmm0,zmm6
  8fc97b:	62 f1 fd 48 10 6a 02 	vmovupd zmm5,ZMMWORD PTR [rdx+0x80]
  8fc982:	62 f1 fd 48 10 72 03 	vmovupd zmm6,ZMMWORD PTR [rdx+0xc0]
  8fc989:	62 71 fd 48 10 42 04 	vmovupd zmm8,ZMMWORD PTR [rdx+0x100]
  8fc990:	62 71 fd 48 10 4a 05 	vmovupd zmm9,ZMMWORD PTR [rdx+0x140]
  8fc997:	62 71 c5 48 59 d5    	vmulpd zmm10,zmm7,zmm5
  8fc99d:	62 72 fd 48 bc d6    	vfnmadd231pd zmm10,zmm0,zmm6
  8fc9a3:	62 51 f5 48 59 d8    	vmulpd zmm11,zmm1,zmm8
  8fc9a9:	62 52 ed 48 bc d9    	vfnmadd231pd zmm11,zmm2,zmm9
  8fc9af:	62 51 ad 48 58 e3    	vaddpd zmm12,zmm10,zmm11
  8fc9b5:	62 f1 fd 48 59 c5    	vmulpd zmm0,zmm0,zmm5
  8fc9bb:	62 f2 c5 48 b8 c6    	vfmadd231pd zmm0,zmm7,zmm6
  8fc9c1:	62 d1 ed 48 59 d0    	vmulpd zmm2,zmm2,zmm8
  8fc9c7:	62 d2 f5 48 b8 d1    	vfmadd231pd zmm2,zmm1,zmm9
  8fc9cd:	62 f1 fd 48 58 ca    	vaddpd zmm1,zmm0,zmm2
  8fc9d3:	62 f2 fd 48 19 2d bb 	vbroadcastsd zmm5,QWORD PTR [rip+0xffffffffff7780bb]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  8fc9da:	80 77 ff 
  8fc9dd:	62 f1 fd 48 28 f5    	vmovapd zmm6,zmm5
  8fc9e3:	62 f2 9d 48 ac f4    	vfnmadd213pd zmm6,zmm12,zmm4
  8fc9e9:	62 f1 fd 48 5c c2    	vsubpd zmm0,zmm0,zmm2
  8fc9ef:	62 f2 fd 48 19 15 27 	vbroadcastsd zmm2,QWORD PTR [rip+0xffffffffff778227]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  8fc9f6:	82 77 ff 
  8fc9f9:	62 f1 fd 48 59 c2    	vmulpd zmm0,zmm0,zmm2
  8fc9ff:	62 f1 cd 48 58 f8    	vaddpd zmm7,zmm6,zmm0
  8fca05:	62 f2 f5 48 ac eb    	vfnmadd213pd zmm5,zmm1,zmm3
  8fca0b:	62 51 ad 48 5c c3    	vsubpd zmm8,zmm10,zmm11
  8fca11:	62 f1 bd 48 59 d2    	vmulpd zmm2,zmm8,zmm2
  8fca17:	62 71 d5 48 5c c2    	vsubpd zmm8,zmm5,zmm2
  8fca1d:	62 f1 cd 48 5c c0    	vsubpd zmm0,zmm6,zmm0
  8fca23:	62 f1 d5 48 58 d2    	vaddpd zmm2,zmm5,zmm2
  8fca29:	62 f1 e5 48 58 c9    	vaddpd zmm1,zmm3,zmm1
  8fca2f:	62 d1 dd 48 58 dc    	vaddpd zmm3,zmm4,zmm12
  8fca35:	62 f1 fd 48 28 25 81 	vmovapd zmm4,ZMMWORD PTR [rip+0xffffffffff781381]        # 7ddc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xb270>
  8fca3c:	13 78 ff 
  8fca3f:	62 f3 7d 48 19 cd 02 	vextractf32x4 xmm5,zmm1,0x2
  8fca46:	62 f2 dd 48 7f cb    	vpermt2pd zmm1,zmm4,zmm3
  8fca4c:	62 f1 fd 48 11 0e    	vmovupd ZMMWORD PTR [rsi],zmm1
  8fca52:	62 f3 7d 48 19 d9 02 	vextractf32x4 xmm1,zmm3,0x2
  8fca59:	c5 d1 14 c9          	vunpcklpd xmm1,xmm5,xmm1
  8fca5d:	c5 f9 11 4e 40       	vmovupd XMMWORD PTR [rsi+0x40],xmm1
  8fca62:	62 73 7d 48 19 c1 02 	vextractf32x4 xmm1,zmm8,0x2
  8fca69:	62 72 dd 48 7f c7    	vpermt2pd zmm8,zmm4,zmm7
  8fca6f:	62 71 fd 48 11 86 50 	vmovupd ZMMWORD PTR [rsi+0x50],zmm8
  8fca76:	00 00 00 
  8fca79:	62 f3 7d 48 19 fb 02 	vextractf32x4 xmm3,zmm7,0x2
  8fca80:	c5 f1 14 cb          	vunpcklpd xmm1,xmm1,xmm3
  8fca84:	c5 f9 11 8e 90 00 00 	vmovupd XMMWORD PTR [rsi+0x90],xmm1
  8fca8b:	00 
  8fca8c:	62 f2 ed 48 77 e0    	vpermi2pd zmm4,zmm2,zmm0
  8fca92:	62 f1 fd 48 11 a6 a0 	vmovupd ZMMWORD PTR [rsi+0xa0],zmm4
  8fca99:	00 00 00 
  8fca9c:	62 f3 7d 48 19 c0 02 	vextractf32x4 xmm0,zmm0,0x2
  8fcaa3:	62 f3 7d 48 19 d1 02 	vextractf32x4 xmm1,zmm2,0x2
  8fcaaa:	c5 f1 14 c0          	vunpcklpd xmm0,xmm1,xmm0
  8fcaae:	c5 f9 11 86 e0 00 00 	vmovupd XMMWORD PTR [rsi+0xe0],xmm0
  8fcab5:	00 
  8fcab6:	c5 f8 77             	vzeroupper
  8fcab9:	c3                   	ret
