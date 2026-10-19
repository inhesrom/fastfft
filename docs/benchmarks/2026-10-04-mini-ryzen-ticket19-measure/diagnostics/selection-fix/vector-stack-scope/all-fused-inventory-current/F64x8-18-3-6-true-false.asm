
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000969780 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  969780:	62 f1 fd 48 10 1f    	vmovupd zmm3,ZMMWORD PTR [rdi]
  969786:	c5 fd 10 47 40       	vmovupd ymm0,YMMWORD PTR [rdi+0x40]
  96978b:	62 f1 fd 48 28 2d ab 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff71c9ab]        # 86140 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x135f0>
  969792:	c9 71 ff 
  969795:	62 f1 fd 48 28 f3    	vmovapd zmm6,zmm3
  96979b:	62 f2 d5 48 7f f0    	vpermt2pd zmm6,zmm5,zmm0
  9697a1:	62 f1 fd 48 28 0d d5 	vmovapd zmm1,ZMMWORD PTR [rip+0xffffffffff71c9d5]        # 86180 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x13630>
  9697a8:	c9 71 ff 
  9697ab:	62 f2 f5 48 7f d8    	vpermt2pd zmm3,zmm1,zmm0
  9697b1:	62 f1 fd 48 10 bf 60 	vmovupd zmm7,ZMMWORD PTR [rdi+0x60]
  9697b8:	00 00 00 
  9697bb:	c5 fd 10 87 a0 00 00 	vmovupd ymm0,YMMWORD PTR [rdi+0xa0]
  9697c2:	00 
  9697c3:	62 71 fd 48 28 c7    	vmovapd zmm8,zmm7
  9697c9:	62 72 d5 48 7f c0    	vpermt2pd zmm8,zmm5,zmm0
  9697cf:	62 f2 f5 48 7f f8    	vpermt2pd zmm7,zmm1,zmm0
  9697d5:	62 71 fd 48 10 4f 03 	vmovupd zmm9,ZMMWORD PTR [rdi+0xc0]
  9697dc:	c5 fd 10 87 00 01 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x100]
  9697e3:	00 
  9697e4:	62 f2 b5 48 77 e8    	vpermi2pd zmm5,zmm9,zmm0
  9697ea:	62 72 f5 48 7f c8    	vpermt2pd zmm9,zmm1,zmm0
  9697f0:	62 d1 c5 48 58 c1    	vaddpd zmm0,zmm7,zmm9
  9697f6:	62 f1 e5 48 58 e0    	vaddpd zmm4,zmm3,zmm0
  9697fc:	62 71 bd 48 58 d5    	vaddpd zmm10,zmm8,zmm5
  969802:	62 f2 fd 48 19 0d 8c 	vbroadcastsd zmm1,QWORD PTR [rip+0xffffffffff70b28c]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  969809:	b2 70 ff 
  96980c:	62 d1 cd 48 58 d2    	vaddpd zmm2,zmm6,zmm10
  969812:	62 f2 f5 48 bc d8    	vfnmadd231pd zmm3,zmm1,zmm0
  969818:	62 f2 fd 48 19 05 fe 	vbroadcastsd zmm0,QWORD PTR [rip+0xffffffffff70b3fe]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  96981f:	b3 70 ff 
  969822:	62 f1 bd 48 5c ed    	vsubpd zmm5,zmm8,zmm5
  969828:	62 71 d5 48 59 d8    	vmulpd zmm11,zmm5,zmm0
  96982e:	62 51 e5 48 58 c3    	vaddpd zmm8,zmm3,zmm11
  969834:	62 d2 f5 48 bc f2    	vfnmadd231pd zmm6,zmm1,zmm10
  96983a:	62 d1 c5 48 5c e9    	vsubpd zmm5,zmm7,zmm9
  969840:	62 f1 d5 48 59 f8    	vmulpd zmm7,zmm5,zmm0
  969846:	62 f1 cd 48 5c ef    	vsubpd zmm5,zmm6,zmm7
  96984c:	62 d1 e5 48 5c db    	vsubpd zmm3,zmm3,zmm11
  969852:	62 f1 c5 48 58 fe    	vaddpd zmm7,zmm7,zmm6
  969858:	62 71 fd 48 10 15 06 	vmovupd zmm10,ZMMWORD PTR [rip+0xffffffffff75d506]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  96985f:	d5 75 ff 
  969862:	c5 c9 57 f6          	vxorpd xmm6,xmm6,xmm6
  969866:	62 71 fd 48 28 cc    	vmovapd zmm9,zmm4
  96986c:	62 72 ad 48 7f ce    	vpermt2pd zmm9,zmm10,zmm6
  969872:	62 71 fd 48 10 1d 2c 	vmovupd zmm11,ZMMWORD PTR [rip+0xffffffffff75d52c]        # c6da8 <crc32fast::table::CRC32_TABLE+0x9124>
  969879:	d5 75 ff 
  96987c:	62 f2 a5 48 7f e6    	vpermt2pd zmm4,zmm11,zmm6
  969882:	62 51 fd 48 28 e0    	vmovapd zmm12,zmm8
  969888:	62 72 ad 48 7f e6    	vpermt2pd zmm12,zmm10,zmm6
  96988e:	62 72 a5 48 7f c6    	vpermt2pd zmm8,zmm11,zmm6
  969894:	62 71 fd 48 28 eb    	vmovapd zmm13,zmm3
  96989a:	62 72 ad 48 7f ee    	vpermt2pd zmm13,zmm10,zmm6
  9698a0:	62 f2 a5 48 7f de    	vpermt2pd zmm3,zmm11,zmm6
  9698a6:	c4 41 09 57 f6       	vxorpd xmm14,xmm14,xmm14
  9698ab:	62 52 ad 48 7f f6    	vpermt2pd zmm14,zmm10,zmm14
  9698b1:	c4 41 01 57 ff       	vxorpd xmm15,xmm15,xmm15
  9698b6:	62 52 a5 48 7f ff    	vpermt2pd zmm15,zmm11,zmm15
  9698bc:	62 e1 fd 48 10 05 22 	vmovupd zmm16,ZMMWORD PTR [rip+0xffffffffff75d422]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  9698c3:	d4 75 ff 
  9698c6:	62 e1 fd 48 28 ca    	vmovapd zmm17,zmm2
  9698cc:	62 e2 ad 48 7f ce    	vpermt2pd zmm17,zmm10,zmm6
  9698d2:	62 f2 a5 48 7f d6    	vpermt2pd zmm2,zmm11,zmm6
  9698d8:	62 e1 fd 48 28 d5    	vmovapd zmm18,zmm5
  9698de:	62 e2 ad 48 7f d6    	vpermt2pd zmm18,zmm10,zmm6
  9698e4:	62 f2 a5 48 7f ee    	vpermt2pd zmm5,zmm11,zmm6
  9698ea:	62 72 c5 48 77 d6    	vpermi2pd zmm10,zmm7,zmm6
  9698f0:	62 f2 a5 48 7f fe    	vpermt2pd zmm7,zmm11,zmm6
  9698f6:	62 d1 fd 48 28 f1    	vmovapd zmm6,zmm9
  9698fc:	62 d2 fd 40 7f f5    	vpermt2pd zmm6,zmm16,zmm13
  969902:	62 71 fd 48 10 1d 1c 	vmovupd zmm11,ZMMWORD PTR [rip+0xffffffffff75d41c]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  969909:	d4 75 ff 
  96990c:	62 52 a5 48 7f cd    	vpermt2pd zmm9,zmm11,zmm13
  969912:	62 51 fd 48 28 ec    	vmovapd zmm13,zmm12
  969918:	62 52 fd 40 7f ee    	vpermt2pd zmm13,zmm16,zmm14
  96991e:	62 52 a5 48 7f e6    	vpermt2pd zmm12,zmm11,zmm14
  969924:	62 f2 fd 40 7f e3    	vpermt2pd zmm4,zmm16,zmm3
  96992a:	62 52 fd 40 7f c7    	vpermt2pd zmm8,zmm16,zmm15
  969930:	62 d1 cd 48 14 dd    	vunpcklpd zmm3,zmm6,zmm13
  969936:	62 d1 cd 48 15 f5    	vunpckhpd zmm6,zmm6,zmm13
  96993c:	62 51 b5 48 14 ec    	vunpcklpd zmm13,zmm9,zmm12
  969942:	62 51 b5 48 15 cc    	vunpckhpd zmm9,zmm9,zmm12
  969948:	62 51 dd 48 14 e0    	vunpcklpd zmm12,zmm4,zmm8
  96994e:	62 51 dd 48 15 c0    	vunpckhpd zmm8,zmm4,zmm8
  969954:	62 a1 fd 48 28 d9    	vmovapd zmm19,zmm17
  96995a:	62 c2 fd 40 7f da    	vpermt2pd zmm19,zmm16,zmm10
  969960:	62 c2 a5 48 7f ca    	vpermt2pd zmm17,zmm11,zmm10
  969966:	62 31 fd 48 28 d2    	vmovapd zmm10,zmm18
  96996c:	62 52 fd 40 7f d6    	vpermt2pd zmm10,zmm16,zmm14
  969972:	62 c2 a5 48 7f d6    	vpermt2pd zmm18,zmm11,zmm14
  969978:	62 f2 fd 40 7f d7    	vpermt2pd zmm2,zmm16,zmm7
  96997e:	62 d2 fd 40 7f ef    	vpermt2pd zmm5,zmm16,zmm15
  969984:	62 d1 e5 40 14 e2    	vunpcklpd zmm4,zmm19,zmm10
  96998a:	62 d1 e5 40 15 fa    	vunpckhpd zmm7,zmm19,zmm10
  969990:	62 31 f5 40 14 d2    	vunpcklpd zmm10,zmm17,zmm18
  969996:	62 31 f5 40 15 da    	vunpckhpd zmm11,zmm17,zmm18
  96999c:	62 71 ed 48 14 f5    	vunpcklpd zmm14,zmm2,zmm5
  9699a2:	62 f1 ed 48 15 ed    	vunpckhpd zmm5,zmm2,zmm5
  9699a8:	62 71 fd 48 10 7a 02 	vmovupd zmm15,ZMMWORD PTR [rdx+0x80]
  9699af:	62 e1 fd 48 10 42 03 	vmovupd zmm16,ZMMWORD PTR [rdx+0xc0]
  9699b6:	62 e1 fd 48 10 4a 04 	vmovupd zmm17,ZMMWORD PTR [rdx+0x100]
  9699bd:	62 e1 fd 48 10 52 05 	vmovupd zmm18,ZMMWORD PTR [rdx+0x140]
  9699c4:	62 b1 95 48 59 d1    	vmulpd zmm2,zmm13,zmm17
  9699ca:	62 b2 ad 48 bc d2    	vfnmadd231pd zmm2,zmm10,zmm18
  9699d0:	62 31 ad 48 59 d1    	vmulpd zmm10,zmm10,zmm17
  9699d6:	62 e1 fd 48 10 4a 08 	vmovupd zmm17,ZMMWORD PTR [rdx+0x200]
  9699dd:	62 32 95 48 b8 d2    	vfmadd231pd zmm10,zmm13,zmm18
  9699e3:	62 71 fd 48 10 6a 09 	vmovupd zmm13,ZMMWORD PTR [rdx+0x240]
  9699ea:	62 a1 9d 48 59 d1    	vmulpd zmm18,zmm12,zmm17
  9699f0:	62 c2 8d 48 bc d5    	vfnmadd231pd zmm18,zmm14,zmm13
  9699f6:	62 31 8d 48 59 f1    	vmulpd zmm14,zmm14,zmm17
  9699fc:	62 e1 fd 48 10 4a 06 	vmovupd zmm17,ZMMWORD PTR [rdx+0x180]
  969a03:	62 52 9d 48 b8 f5    	vfmadd231pd zmm14,zmm12,zmm13
  969a09:	62 71 fd 48 10 62 07 	vmovupd zmm12,ZMMWORD PTR [rdx+0x1c0]
  969a10:	62 31 b5 48 59 e9    	vmulpd zmm13,zmm9,zmm17
  969a16:	62 52 a5 48 bc ec    	vfnmadd231pd zmm13,zmm11,zmm12
  969a1c:	62 31 a5 48 59 d9    	vmulpd zmm11,zmm11,zmm17
  969a22:	62 e1 fd 48 10 4a 0a 	vmovupd zmm17,ZMMWORD PTR [rdx+0x280]
  969a29:	62 52 b5 48 b8 dc    	vfmadd231pd zmm11,zmm9,zmm12
  969a2f:	62 71 fd 48 10 4a 0b 	vmovupd zmm9,ZMMWORD PTR [rdx+0x2c0]
  969a36:	62 31 bd 48 59 e1    	vmulpd zmm12,zmm8,zmm17
  969a3c:	62 52 d5 48 bc e1    	vfnmadd231pd zmm12,zmm5,zmm9
  969a42:	62 a1 d5 48 59 c9    	vmulpd zmm17,zmm5,zmm17
  969a48:	62 a1 ed 48 58 da    	vaddpd zmm19,zmm2,zmm18
  969a4e:	62 c2 bd 48 b8 c9    	vfmadd231pd zmm17,zmm8,zmm9
  969a54:	62 b1 e5 48 58 eb    	vaddpd zmm5,zmm3,zmm19
  969a5a:	62 51 cd 48 59 c7    	vmulpd zmm8,zmm6,zmm15
  969a60:	62 32 c5 48 bc c0    	vfnmadd231pd zmm8,zmm7,zmm16
  969a66:	62 d1 c5 48 59 ff    	vmulpd zmm7,zmm7,zmm15
  969a6c:	62 51 9d 48 58 c8    	vaddpd zmm9,zmm12,zmm8
  969a72:	62 b2 cd 48 b8 f8    	vfmadd231pd zmm7,zmm6,zmm16
  969a78:	62 d1 95 48 58 f1    	vaddpd zmm6,zmm13,zmm9
  969a7e:	62 51 ad 48 58 fe    	vaddpd zmm15,zmm10,zmm14
  969a84:	62 e2 f5 48 ac db    	vfnmadd213pd zmm19,zmm1,zmm3
  969a8a:	62 f1 85 48 58 dc    	vaddpd zmm3,zmm15,zmm4
  969a90:	62 52 f5 48 bc e9    	vfnmadd231pd zmm13,zmm1,zmm9
  969a96:	62 71 f5 40 58 cf    	vaddpd zmm9,zmm17,zmm7
  969a9c:	62 72 f5 48 ac fc    	vfnmadd213pd zmm15,zmm1,zmm4
  969aa2:	62 d1 a5 48 58 e1    	vaddpd zmm4,zmm11,zmm9
  969aa8:	62 72 b5 48 bc d9    	vfnmadd231pd zmm11,zmm9,zmm1
  969aae:	62 d1 ad 48 5c ce    	vsubpd zmm1,zmm10,zmm14
  969ab4:	62 f1 f5 40 5c ff    	vsubpd zmm7,zmm17,zmm7
  969aba:	62 b1 ed 48 5c d2    	vsubpd zmm2,zmm2,zmm18
  969ac0:	62 51 9d 48 5c c0    	vsubpd zmm8,zmm12,zmm8
  969ac6:	62 f1 f5 48 59 c8    	vmulpd zmm1,zmm1,zmm0
  969acc:	62 f1 c5 48 59 f8    	vmulpd zmm7,zmm7,zmm0
  969ad2:	62 f1 ed 48 59 d0    	vmulpd zmm2,zmm2,zmm0
  969ad8:	62 f1 bd 48 59 c0    	vmulpd zmm0,zmm8,zmm0
  969ade:	62 71 e5 40 58 c1    	vaddpd zmm8,zmm19,zmm1
  969ae4:	62 f1 e5 40 5c c9    	vsubpd zmm1,zmm19,zmm1
  969aea:	62 71 95 48 58 cf    	vaddpd zmm9,zmm13,zmm7
  969af0:	62 f1 95 48 5c ff    	vsubpd zmm7,zmm13,zmm7
  969af6:	62 71 85 48 5c d2    	vsubpd zmm10,zmm15,zmm2
  969afc:	62 d1 ed 48 58 d7    	vaddpd zmm2,zmm2,zmm15
  969b02:	62 71 a5 48 5c e0    	vsubpd zmm12,zmm11,zmm0
  969b08:	62 f1 a5 48 58 c0    	vaddpd zmm0,zmm11,zmm0
  969b0e:	62 51 bd 48 5c d9    	vsubpd zmm11,zmm8,zmm9
  969b14:	62 51 bd 48 58 c1    	vaddpd zmm8,zmm8,zmm9
  969b1a:	62 51 ad 48 5c cc    	vsubpd zmm9,zmm10,zmm12
  969b20:	62 51 ad 48 58 d4    	vaddpd zmm10,zmm10,zmm12
  969b26:	62 71 f5 48 58 e7    	vaddpd zmm12,zmm1,zmm7
  969b2c:	62 f1 f5 48 5c cf    	vsubpd zmm1,zmm1,zmm7
  969b32:	62 f1 ed 48 58 f8    	vaddpd zmm7,zmm2,zmm0
  969b38:	62 f1 ed 48 5c c0    	vsubpd zmm0,zmm2,zmm0
  969b3e:	62 f1 e5 48 5c d4    	vsubpd zmm2,zmm3,zmm4
  969b44:	62 f1 e5 48 58 dc    	vaddpd zmm3,zmm3,zmm4
  969b4a:	62 f1 d5 48 5c e6    	vsubpd zmm4,zmm5,zmm6
  969b50:	62 f1 d5 48 58 ee    	vaddpd zmm5,zmm5,zmm6
  969b56:	62 f1 fd 48 28 35 60 	vmovapd zmm6,ZMMWORD PTR [rip+0xffffffffff71c660]        # 861c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x13670>
  969b5d:	c6 71 ff 
  969b60:	62 f2 cd 48 7f dd    	vpermt2pd zmm3,zmm6,zmm5
  969b66:	62 52 cd 48 7f cb    	vpermt2pd zmm9,zmm6,zmm11
  969b6c:	62 d2 cd 48 7f fc    	vpermt2pd zmm7,zmm6,zmm12
  969b72:	62 f2 cd 48 7f d4    	vpermt2pd zmm2,zmm6,zmm4
  969b78:	62 52 cd 48 7f d0    	vpermt2pd zmm10,zmm6,zmm8
  969b7e:	62 f2 cd 48 7f c1    	vpermt2pd zmm0,zmm6,zmm1
  969b84:	62 f3 7d 48 19 5e 02 	vextractf32x4 XMMWORD PTR [rsi+0x20],zmm3,0x2
  969b8b:	02 
  969b8c:	c5 fd 11 1e          	vmovupd YMMWORD PTR [rsi],ymm3
  969b90:	62 73 7d 48 19 4e 05 	vextractf32x4 XMMWORD PTR [rsi+0x50],zmm9,0x2
  969b97:	02 
  969b98:	c5 7d 11 4e 30       	vmovupd YMMWORD PTR [rsi+0x30],ymm9
  969b9d:	62 f3 7d 48 19 7e 08 	vextractf32x4 XMMWORD PTR [rsi+0x80],zmm7,0x2
  969ba4:	02 
  969ba5:	c5 fd 11 7e 60       	vmovupd YMMWORD PTR [rsi+0x60],ymm7
  969baa:	62 f3 7d 48 19 56 0b 	vextractf32x4 XMMWORD PTR [rsi+0xb0],zmm2,0x2
  969bb1:	02 
  969bb2:	c5 fd 11 96 90 00 00 	vmovupd YMMWORD PTR [rsi+0x90],ymm2
  969bb9:	00 
  969bba:	62 73 7d 48 19 56 0e 	vextractf32x4 XMMWORD PTR [rsi+0xe0],zmm10,0x2
  969bc1:	02 
  969bc2:	c5 7d 11 96 c0 00 00 	vmovupd YMMWORD PTR [rsi+0xc0],ymm10
  969bc9:	00 
  969bca:	62 f3 7d 48 19 46 11 	vextractf32x4 XMMWORD PTR [rsi+0x110],zmm0,0x2
  969bd1:	02 
  969bd2:	c5 fd 11 86 f0 00 00 	vmovupd YMMWORD PTR [rsi+0xf0],ymm0
  969bd9:	00 
  969bda:	c5 f8 77             	vzeroupper
  969bdd:	c3                   	ret
