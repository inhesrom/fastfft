
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

000000000090c880 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  90c880:	62 f1 fd 48 10 07    	vmovupd zmm0,ZMMWORD PTR [rdi]
  90c886:	c5 fd 10 4f 40       	vmovupd ymm1,YMMWORD PTR [rdi+0x40]
  90c88b:	62 f1 fd 48 28 1d 2b 	vmovapd zmm3,ZMMWORD PTR [rip+0xffffffffff77252b]        # 7edc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xc270>
  90c892:	25 77 ff 
  90c895:	62 f1 fd 48 28 e0    	vmovapd zmm4,zmm0
  90c89b:	62 f2 e5 48 7f e1    	vpermt2pd zmm4,zmm3,zmm1
  90c8a1:	62 f1 fd 48 28 15 55 	vmovapd zmm2,ZMMWORD PTR [rip+0xffffffffff772555]        # 7ee00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xc2b0>
  90c8a8:	25 77 ff 
  90c8ab:	62 f2 ed 48 7f c1    	vpermt2pd zmm0,zmm2,zmm1
  90c8b1:	62 f1 fd 48 10 8f 60 	vmovupd zmm1,ZMMWORD PTR [rdi+0x60]
  90c8b8:	00 00 00 
  90c8bb:	c5 fd 10 af a0 00 00 	vmovupd ymm5,YMMWORD PTR [rdi+0xa0]
  90c8c2:	00 
  90c8c3:	62 f1 fd 48 28 f1    	vmovapd zmm6,zmm1
  90c8c9:	62 f2 e5 48 7f f5    	vpermt2pd zmm6,zmm3,zmm5
  90c8cf:	62 f2 ed 48 7f cd    	vpermt2pd zmm1,zmm2,zmm5
  90c8d5:	62 f1 fd 48 10 6f 03 	vmovupd zmm5,ZMMWORD PTR [rdi+0xc0]
  90c8dc:	c5 fd 10 bf 00 01 00 	vmovupd ymm7,YMMWORD PTR [rdi+0x100]
  90c8e3:	00 
  90c8e4:	62 71 fd 48 28 c5    	vmovapd zmm8,zmm5
  90c8ea:	62 72 e5 48 7f c7    	vpermt2pd zmm8,zmm3,zmm7
  90c8f0:	62 f2 ed 48 7f ef    	vpermt2pd zmm5,zmm2,zmm7
  90c8f6:	62 f1 fd 48 10 bf 20 	vmovupd zmm7,ZMMWORD PTR [rdi+0x120]
  90c8fd:	01 00 00 
  90c900:	c5 7d 10 8f 60 01 00 	vmovupd ymm9,YMMWORD PTR [rdi+0x160]
  90c907:	00 
  90c908:	62 d2 c5 48 77 d9    	vpermi2pd zmm3,zmm7,zmm9
  90c90e:	62 d2 ed 48 7f f9    	vpermt2pd zmm7,zmm2,zmm9
  90c914:	62 51 dd 48 58 c8    	vaddpd zmm9,zmm4,zmm8
  90c91a:	62 71 cd 48 58 d3    	vaddpd zmm10,zmm6,zmm3
  90c920:	62 51 b5 48 58 da    	vaddpd zmm11,zmm9,zmm10
  90c926:	62 71 fd 48 58 e5    	vaddpd zmm12,zmm0,zmm5
  90c92c:	62 71 f5 48 58 ef    	vaddpd zmm13,zmm1,zmm7
  90c932:	62 d1 9d 48 58 d5    	vaddpd zmm2,zmm12,zmm13
  90c938:	62 51 dd 48 5c c0    	vsubpd zmm8,zmm4,zmm8
  90c93e:	62 f1 f5 48 5c cf    	vsubpd zmm1,zmm1,zmm7
  90c944:	62 71 bd 48 58 f1    	vaddpd zmm14,zmm8,zmm1
  90c94a:	62 f1 fd 48 5c c5    	vsubpd zmm0,zmm0,zmm5
  90c950:	62 f1 e5 48 5c de    	vsubpd zmm3,zmm3,zmm6
  90c956:	62 f1 e5 48 58 e0    	vaddpd zmm4,zmm3,zmm0
  90c95c:	62 d1 b5 48 5c ea    	vsubpd zmm5,zmm9,zmm10
  90c962:	62 d1 9d 48 5c fd    	vsubpd zmm7,zmm12,zmm13
  90c968:	62 f1 bd 48 5c c9    	vsubpd zmm1,zmm8,zmm1
  90c96e:	62 71 fd 48 5c cb    	vsubpd zmm9,zmm0,zmm3
  90c974:	62 71 fd 48 10 15 ea 	vmovupd zmm10,ZMMWORD PTR [rip+0xffffffffff7ba3ea]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  90c97b:	a3 7b ff 
  90c97e:	c4 41 19 57 e4       	vxorpd xmm12,xmm12,xmm12
  90c983:	62 d1 fd 48 28 db    	vmovapd zmm3,zmm11
  90c989:	62 d2 ad 48 7f dc    	vpermt2pd zmm3,zmm10,zmm12
  90c98f:	62 71 fd 48 10 2d 0f 	vmovupd zmm13,ZMMWORD PTR [rip+0xffffffffff7ba40f]        # c6da8 <crc32fast::table::CRC32_TABLE+0x9124>
  90c996:	a4 7b ff 
  90c999:	62 52 95 48 7f dc    	vpermt2pd zmm11,zmm13,zmm12
  90c99f:	62 d1 fd 48 28 f6    	vmovapd zmm6,zmm14
  90c9a5:	62 d2 ad 48 7f f4    	vpermt2pd zmm6,zmm10,zmm12
  90c9ab:	62 52 95 48 7f f4    	vpermt2pd zmm14,zmm13,zmm12
  90c9b1:	62 f1 fd 48 28 c5    	vmovapd zmm0,zmm5
  90c9b7:	62 d2 ad 48 7f c4    	vpermt2pd zmm0,zmm10,zmm12
  90c9bd:	62 d2 95 48 7f ec    	vpermt2pd zmm5,zmm13,zmm12
  90c9c3:	62 71 fd 48 28 c1    	vmovapd zmm8,zmm1
  90c9c9:	62 52 ad 48 7f c4    	vpermt2pd zmm8,zmm10,zmm12
  90c9cf:	62 d2 95 48 7f cc    	vpermt2pd zmm1,zmm13,zmm12
  90c9d5:	62 71 fd 48 10 3d 09 	vmovupd zmm15,ZMMWORD PTR [rip+0xffffffffff7ba309]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  90c9dc:	a3 7b ff 
  90c9df:	62 e1 fd 48 28 c3    	vmovapd zmm16,zmm3
  90c9e5:	62 e2 85 48 7f c0    	vpermt2pd zmm16,zmm15,zmm0
  90c9eb:	62 e1 fd 48 10 0d 33 	vmovupd zmm17,ZMMWORD PTR [rip+0xffffffffff7ba333]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  90c9f2:	a3 7b ff 
  90c9f5:	62 f2 f5 40 7f d8    	vpermt2pd zmm3,zmm17,zmm0
  90c9fb:	62 e1 fd 48 28 d6    	vmovapd zmm18,zmm6
  90ca01:	62 c2 85 48 7f d0    	vpermt2pd zmm18,zmm15,zmm8
  90ca07:	62 d2 f5 40 7f f0    	vpermt2pd zmm6,zmm17,zmm8
  90ca0d:	62 72 85 48 7f dd    	vpermt2pd zmm11,zmm15,zmm5
  90ca13:	62 72 85 48 7f f1    	vpermt2pd zmm14,zmm15,zmm1
  90ca19:	62 b1 fd 40 14 c2    	vunpcklpd zmm0,zmm16,zmm18
  90ca1f:	62 b1 fd 40 15 ca    	vunpckhpd zmm1,zmm16,zmm18
  90ca25:	62 71 e5 48 14 c6    	vunpcklpd zmm8,zmm3,zmm6
  90ca2b:	62 f1 e5 48 15 ee    	vunpckhpd zmm5,zmm3,zmm6
  90ca31:	62 d1 a5 48 14 f6    	vunpcklpd zmm6,zmm11,zmm14
  90ca37:	62 d1 a5 48 15 de    	vunpckhpd zmm3,zmm11,zmm14
  90ca3d:	62 71 fd 48 28 da    	vmovapd zmm11,zmm2
  90ca43:	62 52 ad 48 7f dc    	vpermt2pd zmm11,zmm10,zmm12
  90ca49:	62 d2 95 48 7f d4    	vpermt2pd zmm2,zmm13,zmm12
  90ca4f:	62 71 fd 48 28 f4    	vmovapd zmm14,zmm4
  90ca55:	62 52 ad 48 7f f4    	vpermt2pd zmm14,zmm10,zmm12
  90ca5b:	62 d2 95 48 7f e4    	vpermt2pd zmm4,zmm13,zmm12
  90ca61:	62 e1 fd 48 28 c7    	vmovapd zmm16,zmm7
  90ca67:	62 c2 ad 48 7f c4    	vpermt2pd zmm16,zmm10,zmm12
  90ca6d:	62 d2 95 48 7f fc    	vpermt2pd zmm7,zmm13,zmm12
  90ca73:	62 52 b5 48 77 d4    	vpermi2pd zmm10,zmm9,zmm12
  90ca79:	62 52 95 48 7f cc    	vpermt2pd zmm9,zmm13,zmm12
  90ca7f:	62 51 fd 48 28 e3    	vmovapd zmm12,zmm11
  90ca85:	62 32 85 48 7f e0    	vpermt2pd zmm12,zmm15,zmm16
  90ca8b:	62 32 f5 40 7f d8    	vpermt2pd zmm11,zmm17,zmm16
  90ca91:	62 51 fd 48 28 ee    	vmovapd zmm13,zmm14
  90ca97:	62 52 85 48 7f ea    	vpermt2pd zmm13,zmm15,zmm10
  90ca9d:	62 52 f5 40 7f f2    	vpermt2pd zmm14,zmm17,zmm10
  90caa3:	62 f2 85 48 7f d7    	vpermt2pd zmm2,zmm15,zmm7
  90caa9:	62 d2 85 48 7f e1    	vpermt2pd zmm4,zmm15,zmm9
  90caaf:	62 d1 9d 48 14 fd    	vunpcklpd zmm7,zmm12,zmm13
  90cab5:	62 51 9d 48 15 cd    	vunpckhpd zmm9,zmm12,zmm13
  90cabb:	62 51 a5 48 14 d6    	vunpcklpd zmm10,zmm11,zmm14
  90cac1:	62 51 a5 48 15 de    	vunpckhpd zmm11,zmm11,zmm14
  90cac7:	62 71 ed 48 14 e4    	vunpcklpd zmm12,zmm2,zmm4
  90cacd:	62 f1 ed 48 15 e4    	vunpckhpd zmm4,zmm2,zmm4
  90cad3:	62 71 fd 48 10 6a 02 	vmovupd zmm13,ZMMWORD PTR [rdx+0x80]
  90cada:	62 71 fd 48 10 72 03 	vmovupd zmm14,ZMMWORD PTR [rdx+0xc0]
  90cae1:	62 71 fd 48 10 7a 04 	vmovupd zmm15,ZMMWORD PTR [rdx+0x100]
  90cae8:	62 e1 fd 48 10 42 05 	vmovupd zmm16,ZMMWORD PTR [rdx+0x140]
  90caef:	62 e1 fd 48 10 4a 06 	vmovupd zmm17,ZMMWORD PTR [rdx+0x180]
  90caf6:	62 e1 fd 48 10 52 07 	vmovupd zmm18,ZMMWORD PTR [rdx+0x1c0]
  90cafd:	62 e1 fd 48 10 5a 08 	vmovupd zmm19,ZMMWORD PTR [rdx+0x200]
  90cb04:	62 e1 fd 48 10 62 09 	vmovupd zmm20,ZMMWORD PTR [rdx+0x240]
  90cb0b:	62 e1 fd 48 10 6a 0a 	vmovupd zmm21,ZMMWORD PTR [rdx+0x280]
  90cb12:	62 e1 fd 48 10 72 0b 	vmovupd zmm22,ZMMWORD PTR [rdx+0x2c0]
  90cb19:	62 c1 bd 48 59 ff    	vmulpd zmm23,zmm8,zmm15
  90cb1f:	62 a2 ad 48 bc f8    	vfnmadd231pd zmm23,zmm10,zmm16
  90cb25:	62 21 cd 48 59 c3    	vmulpd zmm24,zmm6,zmm19
  90cb2b:	62 22 9d 48 bc c4    	vfnmadd231pd zmm24,zmm12,zmm20
  90cb31:	62 01 c5 40 58 c8    	vaddpd zmm25,zmm23,zmm24
  90cb37:	62 91 fd 48 58 d1    	vaddpd zmm2,zmm0,zmm25
  90cb3d:	62 21 d5 48 59 d1    	vmulpd zmm26,zmm5,zmm17
  90cb43:	62 22 a5 48 bc d2    	vfnmadd231pd zmm26,zmm11,zmm18
  90cb49:	62 21 e5 48 59 dd    	vmulpd zmm27,zmm3,zmm21
  90cb4f:	62 22 dd 48 bc de    	vfnmadd231pd zmm27,zmm4,zmm22
  90cb55:	62 41 f5 48 59 e5    	vmulpd zmm28,zmm1,zmm13
  90cb5b:	62 42 b5 48 bc e6    	vfnmadd231pd zmm28,zmm9,zmm14
  90cb61:	62 01 a5 40 58 ec    	vaddpd zmm29,zmm27,zmm28
  90cb67:	62 01 ad 40 58 f5    	vaddpd zmm30,zmm26,zmm29
  90cb6d:	62 51 ad 48 59 d7    	vmulpd zmm10,zmm10,zmm15
  90cb73:	62 32 bd 48 b8 d0    	vfmadd231pd zmm10,zmm8,zmm16
  90cb79:	62 31 9d 48 59 c3    	vmulpd zmm8,zmm12,zmm19
  90cb7f:	62 32 cd 48 b8 c4    	vfmadd231pd zmm8,zmm6,zmm20
  90cb85:	62 d1 ad 48 58 f0    	vaddpd zmm6,zmm10,zmm8
  90cb8b:	62 71 cd 48 58 e7    	vaddpd zmm12,zmm6,zmm7
  90cb91:	62 31 a5 48 59 d9    	vmulpd zmm11,zmm11,zmm17
  90cb97:	62 32 d5 48 b8 da    	vfmadd231pd zmm11,zmm5,zmm18
  90cb9d:	62 b1 dd 48 59 e5    	vmulpd zmm4,zmm4,zmm21
  90cba3:	62 b2 e5 48 b8 e6    	vfmadd231pd zmm4,zmm3,zmm22
  90cba9:	62 d1 b5 48 59 dd    	vmulpd zmm3,zmm9,zmm13
  90cbaf:	62 d2 f5 48 b8 de    	vfmadd231pd zmm3,zmm1,zmm14
  90cbb5:	62 f1 dd 48 58 cb    	vaddpd zmm1,zmm4,zmm3
  90cbbb:	62 f2 fd 48 19 2d d3 	vbroadcastsd zmm5,QWORD PTR [rip+0xffffffffff767ed3]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  90cbc2:	7e 76 ff 
  90cbc5:	62 71 a5 48 58 c9    	vaddpd zmm9,zmm11,zmm1
  90cbcb:	62 62 d5 48 ac c8    	vfnmadd213pd zmm25,zmm5,zmm0
  90cbd1:	62 f2 fd 48 19 05 45 	vbroadcastsd zmm0,QWORD PTR [rip+0xffffffffff768045]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  90cbd8:	80 76 ff 
  90cbdb:	62 51 ad 48 5c c0    	vsubpd zmm8,zmm10,zmm8
  90cbe1:	62 71 bd 48 59 c0    	vmulpd zmm8,zmm8,zmm0
  90cbe7:	62 51 b5 40 58 d0    	vaddpd zmm10,zmm25,zmm8
  90cbed:	62 02 d5 48 bc d5    	vfnmadd231pd zmm26,zmm5,zmm29
  90cbf3:	62 f1 dd 48 5c db    	vsubpd zmm3,zmm4,zmm3
  90cbf9:	62 f1 e5 48 59 d8    	vmulpd zmm3,zmm3,zmm0
  90cbff:	62 f1 ad 40 58 e3    	vaddpd zmm4,zmm26,zmm3
  90cc05:	62 71 ad 48 5c ec    	vsubpd zmm13,zmm10,zmm4
  90cc0b:	62 f2 d5 48 ac f7    	vfnmadd213pd zmm6,zmm5,zmm7
  90cc11:	62 91 c5 40 5c f8    	vsubpd zmm7,zmm23,zmm24
  90cc17:	62 f1 c5 48 59 f8    	vmulpd zmm7,zmm7,zmm0
  90cc1d:	62 71 cd 48 5c f7    	vsubpd zmm14,zmm6,zmm7
  90cc23:	62 72 f5 48 bc dd    	vfnmadd231pd zmm11,zmm1,zmm5
  90cc29:	62 91 a5 40 5c cc    	vsubpd zmm1,zmm27,zmm28
  90cc2f:	62 f1 f5 48 59 c0    	vmulpd zmm0,zmm1,zmm0
  90cc35:	62 f1 a5 48 5c c8    	vsubpd zmm1,zmm11,zmm0
  90cc3b:	62 f1 8d 48 5c e9    	vsubpd zmm5,zmm14,zmm1
  90cc41:	62 51 b5 40 5c c0    	vsubpd zmm8,zmm25,zmm8
  90cc47:	62 f1 ad 40 5c db    	vsubpd zmm3,zmm26,zmm3
  90cc4d:	62 71 bd 48 58 fb    	vaddpd zmm15,zmm8,zmm3
  90cc53:	62 f1 c5 48 58 f6    	vaddpd zmm6,zmm7,zmm6
  90cc59:	62 f1 a5 48 58 c0    	vaddpd zmm0,zmm11,zmm0
  90cc5f:	62 f1 cd 48 58 f8    	vaddpd zmm7,zmm6,zmm0
  90cc65:	62 11 ed 48 5c de    	vsubpd zmm11,zmm2,zmm30
  90cc6b:	62 c1 9d 48 5c c1    	vsubpd zmm16,zmm12,zmm9
  90cc71:	62 f1 ad 48 58 e4    	vaddpd zmm4,zmm10,zmm4
  90cc77:	62 f1 8d 48 58 c9    	vaddpd zmm1,zmm14,zmm1
  90cc7d:	62 f1 bd 48 5c db    	vsubpd zmm3,zmm8,zmm3
  90cc83:	62 f1 cd 48 5c c0    	vsubpd zmm0,zmm6,zmm0
  90cc89:	62 91 ed 48 58 d6    	vaddpd zmm2,zmm2,zmm30
  90cc8f:	62 d1 9d 48 58 f1    	vaddpd zmm6,zmm12,zmm9
  90cc95:	62 71 fd 48 28 05 a1 	vmovapd zmm8,ZMMWORD PTR [rip+0xffffffffff7721a1]        # 7ee40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xc2f0>
  90cc9c:	21 77 ff 
  90cc9f:	62 f2 bd 48 7f d6    	vpermt2pd zmm2,zmm8,zmm6
  90cca5:	62 f1 fd 48 11 16    	vmovupd ZMMWORD PTR [rsi],zmm2
  90ccab:	62 72 bd 48 7f ed    	vpermt2pd zmm13,zmm8,zmm5
  90ccb1:	62 71 fd 48 11 6e 01 	vmovupd ZMMWORD PTR [rsi+0x40],zmm13
  90ccb8:	62 72 bd 48 7f ff    	vpermt2pd zmm15,zmm8,zmm7
  90ccbe:	62 71 fd 48 11 7e 02 	vmovupd ZMMWORD PTR [rsi+0x80],zmm15
  90ccc5:	62 32 bd 48 7f d8    	vpermt2pd zmm11,zmm8,zmm16
  90cccb:	62 71 fd 48 11 5e 03 	vmovupd ZMMWORD PTR [rsi+0xc0],zmm11
  90ccd2:	62 f2 bd 48 7f e1    	vpermt2pd zmm4,zmm8,zmm1
  90ccd8:	62 f1 fd 48 11 66 04 	vmovupd ZMMWORD PTR [rsi+0x100],zmm4
  90ccdf:	62 f2 bd 48 7f d8    	vpermt2pd zmm3,zmm8,zmm0
  90cce5:	62 f1 fd 48 11 5e 05 	vmovupd ZMMWORD PTR [rsi+0x140],zmm3
  90ccec:	c5 f8 77             	vzeroupper
  90ccef:	c3                   	ret
