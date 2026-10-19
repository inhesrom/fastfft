
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000008ee700 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  8ee700:	62 f1 fd 48 10 05 5e 	vmovupd zmm0,ZMMWORD PTR [rip+0xffffffffff7d865e]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  8ee707:	86 7d ff 
  8ee70a:	62 f1 fd 48 10 0d 94 	vmovupd zmm1,ZMMWORD PTR [rip+0xffffffffff7d8694]        # c6da8 <crc32fast::table::CRC32_TABLE+0x9124>
  8ee711:	86 7d ff 
  8ee714:	62 f1 fd 48 10 15 ca 	vmovupd zmm2,ZMMWORD PTR [rip+0xffffffffff7d85ca]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  8ee71b:	85 7d ff 
  8ee71e:	62 f1 fd 48 10 1d 00 	vmovupd zmm3,ZMMWORD PTR [rip+0xffffffffff7d8600]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  8ee725:	86 7d ff 
  8ee728:	48 c1 e2 07          	shl    rdx,0x7
  8ee72c:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  8ee730:	31 d2                	xor    edx,edx
  8ee732:	62 f1 fd 48 28 25 84 	vmovapd zmm4,ZMMWORD PTR [rip+0xffffffffff78e684]        # 7cdc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xa270>
  8ee739:	e6 78 ff 
  8ee73c:	62 f1 fd 48 28 2d ba 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff78e6ba]        # 7ce00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xa2b0>
  8ee743:	e6 78 ff 
  8ee746:	62 f2 fd 48 19 35 48 	vbroadcastsd zmm6,QWORD PTR [rip+0xffffffffff786348]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  8ee74d:	63 78 ff 
  8ee750:	c5 c1 57 ff          	vxorpd xmm7,xmm7,xmm7
  8ee754:	62 72 fd 48 19 05 c2 	vbroadcastsd zmm8,QWORD PTR [rip+0xffffffffff7864c2]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  8ee75b:	64 78 ff 
  8ee75e:	62 71 fd 48 28 0d d8 	vmovapd zmm9,ZMMWORD PTR [rip+0xffffffffff78e6d8]        # 7ce40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xa2f0>
  8ee765:	e6 78 ff 
  8ee768:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  8ee76f:	00 
  8ee770:	62 71 fd 48 10 14 17 	vmovupd zmm10,ZMMWORD PTR [rdi+rdx*1]
  8ee777:	c5 7d 10 5c 17 40    	vmovupd ymm11,YMMWORD PTR [rdi+rdx*1+0x40]
  8ee77d:	62 51 fd 48 28 e2    	vmovapd zmm12,zmm10
  8ee783:	62 52 dd 48 7f e3    	vpermt2pd zmm12,zmm4,zmm11
  8ee789:	62 52 d5 48 7f d3    	vpermt2pd zmm10,zmm5,zmm11
  8ee78f:	62 71 fd 48 10 9c 17 	vmovupd zmm11,ZMMWORD PTR [rdi+rdx*1+0x60]
  8ee796:	60 00 00 00 
  8ee79a:	c5 7d 10 ac 17 a0 00 	vmovupd ymm13,YMMWORD PTR [rdi+rdx*1+0xa0]
  8ee7a1:	00 00 
  8ee7a3:	62 51 fd 48 28 f3    	vmovapd zmm14,zmm11
  8ee7a9:	62 52 dd 48 7f f5    	vpermt2pd zmm14,zmm4,zmm13
  8ee7af:	62 52 d5 48 7f dd    	vpermt2pd zmm11,zmm5,zmm13
  8ee7b5:	62 71 fd 48 10 6c 17 	vmovupd zmm13,ZMMWORD PTR [rdi+rdx*1+0xc0]
  8ee7bc:	03 
  8ee7bd:	c5 7d 10 bc 17 00 01 	vmovupd ymm15,YMMWORD PTR [rdi+rdx*1+0x100]
  8ee7c4:	00 00 
  8ee7c6:	62 c1 fd 48 28 c5    	vmovapd zmm16,zmm13
  8ee7cc:	62 c2 dd 48 7f c7    	vpermt2pd zmm16,zmm4,zmm15
  8ee7d2:	62 52 d5 48 7f ef    	vpermt2pd zmm13,zmm5,zmm15
  8ee7d8:	62 e1 fd 48 10 8c 17 	vmovupd zmm17,ZMMWORD PTR [rdi+rdx*1+0x120]
  8ee7df:	20 01 00 00 
  8ee7e3:	c5 7d 10 bc 17 60 01 	vmovupd ymm15,YMMWORD PTR [rdi+rdx*1+0x160]
  8ee7ea:	00 00 
  8ee7ec:	62 a1 fd 48 28 d1    	vmovapd zmm18,zmm17
  8ee7f2:	62 c2 dd 48 7f d7    	vpermt2pd zmm18,zmm4,zmm15
  8ee7f8:	62 c2 d5 48 7f cf    	vpermt2pd zmm17,zmm5,zmm15
  8ee7fe:	62 c1 ad 48 58 dd    	vaddpd zmm19,zmm10,zmm13
  8ee804:	62 a1 a5 48 58 e1    	vaddpd zmm20,zmm11,zmm17
  8ee80a:	62 a1 e5 40 58 ec    	vaddpd zmm21,zmm19,zmm20
  8ee810:	62 a1 9d 48 58 f0    	vaddpd zmm22,zmm12,zmm16
  8ee816:	62 a1 8d 48 58 fa    	vaddpd zmm23,zmm14,zmm18
  8ee81c:	62 31 cd 40 58 ff    	vaddpd zmm15,zmm22,zmm23
  8ee822:	62 51 ad 48 5c d5    	vsubpd zmm10,zmm10,zmm13
  8ee828:	62 31 8d 48 5c ea    	vsubpd zmm13,zmm14,zmm18
  8ee82e:	62 41 ad 48 58 c5    	vaddpd zmm24,zmm10,zmm13
  8ee834:	62 31 9d 48 5c e0    	vsubpd zmm12,zmm12,zmm16
  8ee83a:	62 51 f5 40 5c db    	vsubpd zmm11,zmm17,zmm11
  8ee840:	62 c1 a5 48 58 cc    	vaddpd zmm17,zmm11,zmm12
  8ee846:	62 31 e5 40 5c f4    	vsubpd zmm14,zmm19,zmm20
  8ee84c:	62 a1 cd 40 5c df    	vsubpd zmm19,zmm22,zmm23
  8ee852:	62 51 ad 48 5c d5    	vsubpd zmm10,zmm10,zmm13
  8ee858:	62 51 9d 48 5c eb    	vsubpd zmm13,zmm12,zmm11
  8ee85e:	62 31 fd 48 28 e5    	vmovapd zmm12,zmm21
  8ee864:	62 72 fd 48 7f e7    	vpermt2pd zmm12,zmm0,zmm7
  8ee86a:	62 e2 f5 48 7f ef    	vpermt2pd zmm21,zmm1,zmm7
  8ee870:	62 81 fd 48 28 c0    	vmovapd zmm16,zmm24
  8ee876:	62 e2 fd 48 7f c7    	vpermt2pd zmm16,zmm0,zmm7
  8ee87c:	62 62 f5 48 7f c7    	vpermt2pd zmm24,zmm1,zmm7
  8ee882:	62 51 fd 48 28 de    	vmovapd zmm11,zmm14
  8ee888:	62 72 fd 48 7f df    	vpermt2pd zmm11,zmm0,zmm7
  8ee88e:	62 72 f5 48 7f f7    	vpermt2pd zmm14,zmm1,zmm7
  8ee894:	62 c1 fd 48 28 d2    	vmovapd zmm18,zmm10
  8ee89a:	62 e2 fd 48 7f d7    	vpermt2pd zmm18,zmm0,zmm7
  8ee8a0:	62 72 f5 48 7f d7    	vpermt2pd zmm10,zmm1,zmm7
  8ee8a6:	62 c1 fd 48 28 e4    	vmovapd zmm20,zmm12
  8ee8ac:	62 c2 ed 48 7f e3    	vpermt2pd zmm20,zmm2,zmm11
  8ee8b2:	62 52 e5 48 7f e3    	vpermt2pd zmm12,zmm3,zmm11
  8ee8b8:	62 31 fd 48 28 d8    	vmovapd zmm11,zmm16
  8ee8be:	62 32 ed 48 7f da    	vpermt2pd zmm11,zmm2,zmm18
  8ee8c4:	62 a2 e5 48 7f c2    	vpermt2pd zmm16,zmm3,zmm18
  8ee8ca:	62 c2 ed 48 7f ee    	vpermt2pd zmm21,zmm2,zmm14
  8ee8d0:	62 42 ed 48 7f c2    	vpermt2pd zmm24,zmm2,zmm10
  8ee8d6:	62 51 dd 40 14 d3    	vunpcklpd zmm10,zmm20,zmm11
  8ee8dc:	62 51 dd 40 15 db    	vunpckhpd zmm11,zmm20,zmm11
  8ee8e2:	62 a1 9d 48 14 d0    	vunpcklpd zmm18,zmm12,zmm16
  8ee8e8:	62 31 9d 48 15 f0    	vunpckhpd zmm14,zmm12,zmm16
  8ee8ee:	62 81 d5 40 14 c0    	vunpcklpd zmm16,zmm21,zmm24
  8ee8f4:	62 11 d5 40 15 e0    	vunpckhpd zmm12,zmm21,zmm24
  8ee8fa:	62 c1 fd 48 28 e7    	vmovapd zmm20,zmm15
  8ee900:	62 e2 fd 48 7f e7    	vpermt2pd zmm20,zmm0,zmm7
  8ee906:	62 72 f5 48 7f ff    	vpermt2pd zmm15,zmm1,zmm7
  8ee90c:	62 a1 fd 48 28 e9    	vmovapd zmm21,zmm17
  8ee912:	62 e2 fd 48 7f ef    	vpermt2pd zmm21,zmm0,zmm7
  8ee918:	62 e2 f5 48 7f cf    	vpermt2pd zmm17,zmm1,zmm7
  8ee91e:	62 a1 fd 48 28 f3    	vmovapd zmm22,zmm19
  8ee924:	62 e2 fd 48 7f f7    	vpermt2pd zmm22,zmm0,zmm7
  8ee92a:	62 e2 f5 48 7f df    	vpermt2pd zmm19,zmm1,zmm7
  8ee930:	62 c1 fd 48 28 fd    	vmovapd zmm23,zmm13
  8ee936:	62 e2 fd 48 7f ff    	vpermt2pd zmm23,zmm0,zmm7
  8ee93c:	62 72 f5 48 7f ef    	vpermt2pd zmm13,zmm1,zmm7
  8ee942:	62 21 fd 48 28 c4    	vmovapd zmm24,zmm20
  8ee948:	62 22 ed 48 7f c6    	vpermt2pd zmm24,zmm2,zmm22
  8ee94e:	62 a2 e5 48 7f e6    	vpermt2pd zmm20,zmm3,zmm22
  8ee954:	62 a1 fd 48 28 f5    	vmovapd zmm22,zmm21
  8ee95a:	62 a2 ed 48 7f f7    	vpermt2pd zmm22,zmm2,zmm23
  8ee960:	62 a2 e5 48 7f ef    	vpermt2pd zmm21,zmm3,zmm23
  8ee966:	62 32 ed 48 7f fb    	vpermt2pd zmm15,zmm2,zmm19
  8ee96c:	62 c2 ed 48 7f cd    	vpermt2pd zmm17,zmm2,zmm13
  8ee972:	62 31 bd 40 14 ee    	vunpcklpd zmm13,zmm24,zmm22
  8ee978:	62 a1 bd 40 15 de    	vunpckhpd zmm19,zmm24,zmm22
  8ee97e:	62 a1 dd 40 14 f5    	vunpcklpd zmm22,zmm20,zmm21
  8ee984:	62 a1 dd 40 15 e5    	vunpckhpd zmm20,zmm20,zmm21
  8ee98a:	62 a1 85 48 14 e9    	vunpcklpd zmm21,zmm15,zmm17
  8ee990:	62 a1 85 48 15 c9    	vunpckhpd zmm17,zmm15,zmm17
  8ee996:	62 e1 fd 48 10 79 04 	vmovupd zmm23,ZMMWORD PTR [rcx+0x100]
  8ee99d:	62 61 fd 48 10 41 05 	vmovupd zmm24,ZMMWORD PTR [rcx+0x140]
  8ee9a4:	62 31 ed 40 59 ff    	vmulpd zmm15,zmm18,zmm23
  8ee9aa:	62 12 cd 40 bc f8    	vfnmadd231pd zmm15,zmm22,zmm24
  8ee9b0:	62 a1 cd 40 59 f7    	vmulpd zmm22,zmm22,zmm23
  8ee9b6:	62 e1 fd 48 10 79 08 	vmovupd zmm23,ZMMWORD PTR [rcx+0x200]
  8ee9bd:	62 82 ed 40 b8 f0    	vfmadd231pd zmm22,zmm18,zmm24
  8ee9c3:	62 e1 fd 48 10 51 09 	vmovupd zmm18,ZMMWORD PTR [rcx+0x240]
  8ee9ca:	62 21 fd 40 59 c7    	vmulpd zmm24,zmm16,zmm23
  8ee9d0:	62 22 d5 40 bc c2    	vfnmadd231pd zmm24,zmm21,zmm18
  8ee9d6:	62 a1 d5 40 59 ef    	vmulpd zmm21,zmm21,zmm23
  8ee9dc:	62 e1 fd 48 10 79 06 	vmovupd zmm23,ZMMWORD PTR [rcx+0x180]
  8ee9e3:	62 a2 fd 40 b8 ea    	vfmadd231pd zmm21,zmm16,zmm18
  8ee9e9:	62 e1 fd 48 10 41 07 	vmovupd zmm16,ZMMWORD PTR [rcx+0x1c0]
  8ee9f0:	62 a1 8d 48 59 d7    	vmulpd zmm18,zmm14,zmm23
  8ee9f6:	62 a2 dd 40 bc d0    	vfnmadd231pd zmm18,zmm20,zmm16
  8ee9fc:	62 a1 dd 40 59 e7    	vmulpd zmm20,zmm20,zmm23
  8eea02:	62 e1 fd 48 10 79 0a 	vmovupd zmm23,ZMMWORD PTR [rcx+0x280]
  8eea09:	62 a2 8d 48 b8 e0    	vfmadd231pd zmm20,zmm14,zmm16
  8eea0f:	62 71 fd 48 10 71 0b 	vmovupd zmm14,ZMMWORD PTR [rcx+0x2c0]
  8eea16:	62 a1 9d 48 59 c7    	vmulpd zmm16,zmm12,zmm23
  8eea1c:	62 c2 f5 40 bc c6    	vfnmadd231pd zmm16,zmm17,zmm14
  8eea22:	62 a1 f5 40 59 cf    	vmulpd zmm17,zmm17,zmm23
  8eea28:	62 e1 fd 48 10 79 02 	vmovupd zmm23,ZMMWORD PTR [rcx+0x80]
  8eea2f:	62 c2 9d 48 b8 ce    	vfmadd231pd zmm17,zmm12,zmm14
  8eea35:	62 71 fd 48 10 61 03 	vmovupd zmm12,ZMMWORD PTR [rcx+0xc0]
  8eea3c:	62 31 a5 48 59 f7    	vmulpd zmm14,zmm11,zmm23
  8eea42:	62 52 e5 40 bc f4    	vfnmadd231pd zmm14,zmm19,zmm12
  8eea48:	62 a1 e5 40 59 df    	vmulpd zmm19,zmm19,zmm23
  8eea4e:	62 81 85 48 58 f8    	vaddpd zmm23,zmm15,zmm24
  8eea54:	62 c2 a5 48 b8 dc    	vfmadd231pd zmm19,zmm11,zmm12
  8eea5a:	62 31 ad 48 58 df    	vaddpd zmm11,zmm10,zmm23
  8eea60:	62 51 fd 40 58 e6    	vaddpd zmm12,zmm16,zmm14
  8eea66:	62 c2 cd 48 ac fa    	vfnmadd213pd zmm23,zmm6,zmm10
  8eea6c:	62 31 cd 40 58 d5    	vaddpd zmm10,zmm22,zmm21
  8eea72:	62 a1 cd 40 5c ed    	vsubpd zmm21,zmm22,zmm21
  8eea78:	62 c1 ed 40 58 f4    	vaddpd zmm22,zmm18,zmm12
  8eea7e:	62 c2 cd 48 bc d4    	vfnmadd231pd zmm18,zmm6,zmm12
  8eea84:	62 31 f5 40 58 e3    	vaddpd zmm12,zmm17,zmm19
  8eea8a:	62 a1 f5 40 5c cb    	vsubpd zmm17,zmm17,zmm19
  8eea90:	62 c1 ad 48 58 dd    	vaddpd zmm19,zmm10,zmm13
  8eea96:	62 52 cd 48 ac d5    	vfnmadd213pd zmm10,zmm6,zmm13
  8eea9c:	62 11 85 48 5c e8    	vsubpd zmm13,zmm15,zmm24
  8eeaa2:	62 51 dd 40 58 fc    	vaddpd zmm15,zmm20,zmm12
  8eeaa8:	62 c2 cd 48 bc e4    	vfnmadd231pd zmm20,zmm6,zmm12
  8eeaae:	62 51 d5 40 59 e0    	vmulpd zmm12,zmm21,zmm8
  8eeab4:	62 51 fd 40 5c f6    	vsubpd zmm14,zmm16,zmm14
  8eeaba:	62 c1 c5 40 58 c4    	vaddpd zmm16,zmm23,zmm12
  8eeac0:	62 c1 f5 40 59 c8    	vmulpd zmm17,zmm17,zmm8
  8eeac6:	62 51 c5 40 5c e4    	vsubpd zmm12,zmm23,zmm12
  8eeacc:	62 a1 ed 40 58 e9    	vaddpd zmm21,zmm18,zmm17
  8eead2:	62 51 95 48 59 e8    	vmulpd zmm13,zmm13,zmm8
  8eead8:	62 a1 ed 40 5c c9    	vsubpd zmm17,zmm18,zmm17
  8eeade:	62 c1 ad 48 5c d5    	vsubpd zmm18,zmm10,zmm13
  8eeae4:	62 51 8d 48 59 f0    	vmulpd zmm14,zmm14,zmm8
  8eeaea:	62 51 95 48 58 d2    	vaddpd zmm10,zmm13,zmm10
  8eeaf0:	62 51 dd 40 5c ee    	vsubpd zmm13,zmm20,zmm14
  8eeaf6:	62 51 dd 40 58 f6    	vaddpd zmm14,zmm20,zmm14
  8eeafc:	62 a1 fd 40 5c e5    	vsubpd zmm20,zmm16,zmm21
  8eeb02:	62 a1 fd 40 58 c5    	vaddpd zmm16,zmm16,zmm21
  8eeb08:	62 c1 ed 40 5c ed    	vsubpd zmm21,zmm18,zmm13
  8eeb0e:	62 51 ed 40 58 ed    	vaddpd zmm13,zmm18,zmm13
  8eeb14:	62 a1 9d 48 58 d1    	vaddpd zmm18,zmm12,zmm17
  8eeb1a:	62 31 9d 48 5c e1    	vsubpd zmm12,zmm12,zmm17
  8eeb20:	62 c1 ad 48 58 ce    	vaddpd zmm17,zmm10,zmm14
  8eeb26:	62 51 ad 48 5c d6    	vsubpd zmm10,zmm10,zmm14
  8eeb2c:	62 51 e5 40 5c f7    	vsubpd zmm14,zmm19,zmm15
  8eeb32:	62 51 e5 40 58 ff    	vaddpd zmm15,zmm19,zmm15
  8eeb38:	62 a1 a5 48 5c de    	vsubpd zmm19,zmm11,zmm22
  8eeb3e:	62 31 a5 48 58 de    	vaddpd zmm11,zmm11,zmm22
  8eeb44:	62 52 b5 48 7f fb    	vpermt2pd zmm15,zmm9,zmm11
  8eeb4a:	62 71 fd 48 11 3c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1],zmm15
  8eeb51:	62 a2 b5 48 7f ec    	vpermt2pd zmm21,zmm9,zmm20
  8eeb57:	62 e1 fd 48 11 6c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x40],zmm21
  8eeb5e:	01 
  8eeb5f:	62 a2 b5 48 7f ca    	vpermt2pd zmm17,zmm9,zmm18
  8eeb65:	62 e1 fd 48 11 4c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x80],zmm17
  8eeb6c:	02 
  8eeb6d:	62 32 b5 48 7f f3    	vpermt2pd zmm14,zmm9,zmm19
  8eeb73:	62 71 fd 48 11 74 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0xc0],zmm14
  8eeb7a:	03 
  8eeb7b:	62 32 b5 48 7f e8    	vpermt2pd zmm13,zmm9,zmm16
  8eeb81:	62 71 fd 48 11 6c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x100],zmm13
  8eeb88:	04 
  8eeb89:	62 52 b5 48 7f d4    	vpermt2pd zmm10,zmm9,zmm12
  8eeb8f:	62 71 fd 48 11 54 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x140],zmm10
  8eeb96:	05 
  8eeb97:	48 81 c2 80 01 00 00 	add    rdx,0x180
  8eeb9e:	48 39 d0             	cmp    rax,rdx
  8eeba1:	0f 85 c9 fb ff ff    	jne    8ee770 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle+0x70>
  8eeba7:	c5 f8 77             	vzeroupper
  8eebaa:	c3                   	ret
