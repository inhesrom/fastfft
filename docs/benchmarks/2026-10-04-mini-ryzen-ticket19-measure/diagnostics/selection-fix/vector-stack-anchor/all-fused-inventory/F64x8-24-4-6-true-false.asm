
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000921980 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  921980:	62 f1 fd 48 10 07    	vmovupd zmm0,ZMMWORD PTR [rdi]
  921986:	c5 fd 10 4f 40       	vmovupd ymm1,YMMWORD PTR [rdi+0x40]
  92198b:	62 f1 fd 48 28 1d ab 	vmovapd zmm3,ZMMWORD PTR [rip+0xffffffffff75f0ab]        # 80a40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xdef0>
  921992:	f0 75 ff 
  921995:	62 f1 fd 48 28 e0    	vmovapd zmm4,zmm0
  92199b:	62 f2 e5 48 7f e1    	vpermt2pd zmm4,zmm3,zmm1
  9219a1:	62 f1 fd 48 28 15 d5 	vmovapd zmm2,ZMMWORD PTR [rip+0xffffffffff75f0d5]        # 80a80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xdf30>
  9219a8:	f0 75 ff 
  9219ab:	62 f2 ed 48 7f c1    	vpermt2pd zmm0,zmm2,zmm1
  9219b1:	62 f1 fd 48 10 8f 60 	vmovupd zmm1,ZMMWORD PTR [rdi+0x60]
  9219b8:	00 00 00 
  9219bb:	c5 fd 10 af a0 00 00 	vmovupd ymm5,YMMWORD PTR [rdi+0xa0]
  9219c2:	00 
  9219c3:	62 f1 fd 48 28 f1    	vmovapd zmm6,zmm1
  9219c9:	62 f2 e5 48 7f f5    	vpermt2pd zmm6,zmm3,zmm5
  9219cf:	62 f2 ed 48 7f cd    	vpermt2pd zmm1,zmm2,zmm5
  9219d5:	62 f1 fd 48 10 6f 03 	vmovupd zmm5,ZMMWORD PTR [rdi+0xc0]
  9219dc:	c5 fd 10 bf 00 01 00 	vmovupd ymm7,YMMWORD PTR [rdi+0x100]
  9219e3:	00 
  9219e4:	62 71 fd 48 28 c5    	vmovapd zmm8,zmm5
  9219ea:	62 72 e5 48 7f c7    	vpermt2pd zmm8,zmm3,zmm7
  9219f0:	62 f2 ed 48 7f ef    	vpermt2pd zmm5,zmm2,zmm7
  9219f6:	62 f1 fd 48 10 bf 20 	vmovupd zmm7,ZMMWORD PTR [rdi+0x120]
  9219fd:	01 00 00 
  921a00:	c5 7d 10 8f 60 01 00 	vmovupd ymm9,YMMWORD PTR [rdi+0x160]
  921a07:	00 
  921a08:	62 d2 c5 48 77 d9    	vpermi2pd zmm3,zmm7,zmm9
  921a0e:	62 d2 ed 48 7f f9    	vpermt2pd zmm7,zmm2,zmm9
  921a14:	62 71 fd 48 58 cd    	vaddpd zmm9,zmm0,zmm5
  921a1a:	62 71 f5 48 58 d7    	vaddpd zmm10,zmm1,zmm7
  921a20:	62 51 b5 48 58 da    	vaddpd zmm11,zmm9,zmm10
  921a26:	62 51 dd 48 58 e0    	vaddpd zmm12,zmm4,zmm8
  921a2c:	62 71 cd 48 58 eb    	vaddpd zmm13,zmm6,zmm3
  921a32:	62 d1 9d 48 58 d5    	vaddpd zmm2,zmm12,zmm13
  921a38:	62 f1 fd 48 5c c5    	vsubpd zmm0,zmm0,zmm5
  921a3e:	62 f1 cd 48 5c db    	vsubpd zmm3,zmm6,zmm3
  921a44:	62 71 fd 48 58 f3    	vaddpd zmm14,zmm0,zmm3
  921a4a:	62 d1 dd 48 5c e8    	vsubpd zmm5,zmm4,zmm8
  921a50:	62 f1 c5 48 5c c9    	vsubpd zmm1,zmm7,zmm1
  921a56:	62 f1 f5 48 58 e5    	vaddpd zmm4,zmm1,zmm5
  921a5c:	62 d1 b5 48 5c f2    	vsubpd zmm6,zmm9,zmm10
  921a62:	62 d1 9d 48 5c fd    	vsubpd zmm7,zmm12,zmm13
  921a68:	62 f1 fd 48 5c c3    	vsubpd zmm0,zmm0,zmm3
  921a6e:	62 71 d5 48 5c c9    	vsubpd zmm9,zmm5,zmm1
  921a74:	62 71 fd 48 10 15 ea 	vmovupd zmm10,ZMMWORD PTR [rip+0xffffffffff7a52ea]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  921a7b:	52 7a ff 
  921a7e:	c4 41 19 57 e4       	vxorpd xmm12,xmm12,xmm12
  921a83:	62 d1 fd 48 28 db    	vmovapd zmm3,zmm11
  921a89:	62 d2 ad 48 7f dc    	vpermt2pd zmm3,zmm10,zmm12
  921a8f:	62 71 fd 48 10 2d 0f 	vmovupd zmm13,ZMMWORD PTR [rip+0xffffffffff7a530f]        # c6da8 <crc32fast::table::CRC32_TABLE+0x9124>
  921a96:	53 7a ff 
  921a99:	62 52 95 48 7f dc    	vpermt2pd zmm11,zmm13,zmm12
  921a9f:	62 d1 fd 48 28 ee    	vmovapd zmm5,zmm14
  921aa5:	62 d2 ad 48 7f ec    	vpermt2pd zmm5,zmm10,zmm12
  921aab:	62 52 95 48 7f f4    	vpermt2pd zmm14,zmm13,zmm12
  921ab1:	62 f1 fd 48 28 ce    	vmovapd zmm1,zmm6
  921ab7:	62 d2 ad 48 7f cc    	vpermt2pd zmm1,zmm10,zmm12
  921abd:	62 d2 95 48 7f f4    	vpermt2pd zmm6,zmm13,zmm12
  921ac3:	62 71 fd 48 28 c0    	vmovapd zmm8,zmm0
  921ac9:	62 52 ad 48 7f c4    	vpermt2pd zmm8,zmm10,zmm12
  921acf:	62 d2 95 48 7f c4    	vpermt2pd zmm0,zmm13,zmm12
  921ad5:	62 71 fd 48 10 3d 09 	vmovupd zmm15,ZMMWORD PTR [rip+0xffffffffff7a5209]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  921adc:	52 7a ff 
  921adf:	62 e1 fd 48 28 c3    	vmovapd zmm16,zmm3
  921ae5:	62 e2 85 48 7f c1    	vpermt2pd zmm16,zmm15,zmm1
  921aeb:	62 e1 fd 48 10 0d 33 	vmovupd zmm17,ZMMWORD PTR [rip+0xffffffffff7a5233]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  921af2:	52 7a ff 
  921af5:	62 f2 f5 40 7f d9    	vpermt2pd zmm3,zmm17,zmm1
  921afb:	62 f1 fd 48 28 cd    	vmovapd zmm1,zmm5
  921b01:	62 d2 85 48 7f c8    	vpermt2pd zmm1,zmm15,zmm8
  921b07:	62 d2 f5 40 7f e8    	vpermt2pd zmm5,zmm17,zmm8
  921b0d:	62 72 85 48 7f de    	vpermt2pd zmm11,zmm15,zmm6
  921b13:	62 72 85 48 7f f0    	vpermt2pd zmm14,zmm15,zmm0
  921b19:	62 f1 fd 40 14 c1    	vunpcklpd zmm0,zmm16,zmm1
  921b1f:	62 f1 fd 40 15 c9    	vunpckhpd zmm1,zmm16,zmm1
  921b25:	62 71 e5 48 14 c5    	vunpcklpd zmm8,zmm3,zmm5
  921b2b:	62 f1 e5 48 15 ed    	vunpckhpd zmm5,zmm3,zmm5
  921b31:	62 d1 a5 48 14 f6    	vunpcklpd zmm6,zmm11,zmm14
  921b37:	62 d1 a5 48 15 de    	vunpckhpd zmm3,zmm11,zmm14
  921b3d:	62 71 fd 48 28 da    	vmovapd zmm11,zmm2
  921b43:	62 52 ad 48 7f dc    	vpermt2pd zmm11,zmm10,zmm12
  921b49:	62 d2 95 48 7f d4    	vpermt2pd zmm2,zmm13,zmm12
  921b4f:	62 71 fd 48 28 f4    	vmovapd zmm14,zmm4
  921b55:	62 52 ad 48 7f f4    	vpermt2pd zmm14,zmm10,zmm12
  921b5b:	62 d2 95 48 7f e4    	vpermt2pd zmm4,zmm13,zmm12
  921b61:	62 e1 fd 48 28 c7    	vmovapd zmm16,zmm7
  921b67:	62 c2 ad 48 7f c4    	vpermt2pd zmm16,zmm10,zmm12
  921b6d:	62 d2 95 48 7f fc    	vpermt2pd zmm7,zmm13,zmm12
  921b73:	62 52 b5 48 77 d4    	vpermi2pd zmm10,zmm9,zmm12
  921b79:	62 52 95 48 7f cc    	vpermt2pd zmm9,zmm13,zmm12
  921b7f:	62 51 fd 48 28 e3    	vmovapd zmm12,zmm11
  921b85:	62 32 85 48 7f e0    	vpermt2pd zmm12,zmm15,zmm16
  921b8b:	62 32 f5 40 7f d8    	vpermt2pd zmm11,zmm17,zmm16
  921b91:	62 51 fd 48 28 ee    	vmovapd zmm13,zmm14
  921b97:	62 52 85 48 7f ea    	vpermt2pd zmm13,zmm15,zmm10
  921b9d:	62 52 f5 40 7f f2    	vpermt2pd zmm14,zmm17,zmm10
  921ba3:	62 f2 85 48 7f d7    	vpermt2pd zmm2,zmm15,zmm7
  921ba9:	62 d2 85 48 7f e1    	vpermt2pd zmm4,zmm15,zmm9
  921baf:	62 d1 9d 48 14 fd    	vunpcklpd zmm7,zmm12,zmm13
  921bb5:	62 51 9d 48 15 cd    	vunpckhpd zmm9,zmm12,zmm13
  921bbb:	62 51 a5 48 14 d6    	vunpcklpd zmm10,zmm11,zmm14
  921bc1:	62 51 a5 48 15 de    	vunpckhpd zmm11,zmm11,zmm14
  921bc7:	62 71 ed 48 14 e4    	vunpcklpd zmm12,zmm2,zmm4
  921bcd:	62 f1 ed 48 15 e4    	vunpckhpd zmm4,zmm2,zmm4
  921bd3:	62 71 fd 48 10 6a 02 	vmovupd zmm13,ZMMWORD PTR [rdx+0x80]
  921bda:	62 71 fd 48 10 72 03 	vmovupd zmm14,ZMMWORD PTR [rdx+0xc0]
  921be1:	62 71 fd 48 10 7a 04 	vmovupd zmm15,ZMMWORD PTR [rdx+0x100]
  921be8:	62 e1 fd 48 10 42 05 	vmovupd zmm16,ZMMWORD PTR [rdx+0x140]
  921bef:	62 e1 fd 48 10 4a 06 	vmovupd zmm17,ZMMWORD PTR [rdx+0x180]
  921bf6:	62 e1 fd 48 10 52 07 	vmovupd zmm18,ZMMWORD PTR [rdx+0x1c0]
  921bfd:	62 e1 fd 48 10 5a 08 	vmovupd zmm19,ZMMWORD PTR [rdx+0x200]
  921c04:	62 e1 fd 48 10 62 09 	vmovupd zmm20,ZMMWORD PTR [rdx+0x240]
  921c0b:	62 e1 fd 48 10 6a 0a 	vmovupd zmm21,ZMMWORD PTR [rdx+0x280]
  921c12:	62 e1 fd 48 10 72 0b 	vmovupd zmm22,ZMMWORD PTR [rdx+0x2c0]
  921c19:	62 c1 bd 48 59 ff    	vmulpd zmm23,zmm8,zmm15
  921c1f:	62 a2 ad 48 bc f8    	vfnmadd231pd zmm23,zmm10,zmm16
  921c25:	62 21 cd 48 59 c3    	vmulpd zmm24,zmm6,zmm19
  921c2b:	62 22 9d 48 bc c4    	vfnmadd231pd zmm24,zmm12,zmm20
  921c31:	62 01 c5 40 58 c8    	vaddpd zmm25,zmm23,zmm24
  921c37:	62 91 fd 48 58 d1    	vaddpd zmm2,zmm0,zmm25
  921c3d:	62 21 d5 48 59 d1    	vmulpd zmm26,zmm5,zmm17
  921c43:	62 22 a5 48 bc d2    	vfnmadd231pd zmm26,zmm11,zmm18
  921c49:	62 21 e5 48 59 dd    	vmulpd zmm27,zmm3,zmm21
  921c4f:	62 22 dd 48 bc de    	vfnmadd231pd zmm27,zmm4,zmm22
  921c55:	62 41 f5 48 59 e5    	vmulpd zmm28,zmm1,zmm13
  921c5b:	62 42 b5 48 bc e6    	vfnmadd231pd zmm28,zmm9,zmm14
  921c61:	62 01 a5 40 58 ec    	vaddpd zmm29,zmm27,zmm28
  921c67:	62 01 ad 40 58 f5    	vaddpd zmm30,zmm26,zmm29
  921c6d:	62 51 ad 48 59 d7    	vmulpd zmm10,zmm10,zmm15
  921c73:	62 32 bd 48 b8 d0    	vfmadd231pd zmm10,zmm8,zmm16
  921c79:	62 31 9d 48 59 c3    	vmulpd zmm8,zmm12,zmm19
  921c7f:	62 32 cd 48 b8 c4    	vfmadd231pd zmm8,zmm6,zmm20
  921c85:	62 d1 ad 48 58 f0    	vaddpd zmm6,zmm10,zmm8
  921c8b:	62 71 cd 48 58 e7    	vaddpd zmm12,zmm6,zmm7
  921c91:	62 31 a5 48 59 d9    	vmulpd zmm11,zmm11,zmm17
  921c97:	62 32 d5 48 b8 da    	vfmadd231pd zmm11,zmm5,zmm18
  921c9d:	62 b1 dd 48 59 e5    	vmulpd zmm4,zmm4,zmm21
  921ca3:	62 b2 e5 48 b8 e6    	vfmadd231pd zmm4,zmm3,zmm22
  921ca9:	62 d1 b5 48 59 dd    	vmulpd zmm3,zmm9,zmm13
  921caf:	62 d2 f5 48 b8 de    	vfmadd231pd zmm3,zmm1,zmm14
  921cb5:	62 f1 dd 48 58 cb    	vaddpd zmm1,zmm4,zmm3
  921cbb:	62 f2 fd 48 19 2d d3 	vbroadcastsd zmm5,QWORD PTR [rip+0xffffffffff752dd3]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  921cc2:	2d 75 ff 
  921cc5:	62 71 a5 48 58 c9    	vaddpd zmm9,zmm11,zmm1
  921ccb:	62 62 d5 48 ac c8    	vfnmadd213pd zmm25,zmm5,zmm0
  921cd1:	62 f2 fd 48 19 05 45 	vbroadcastsd zmm0,QWORD PTR [rip+0xffffffffff752f45]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  921cd8:	2f 75 ff 
  921cdb:	62 51 ad 48 5c c0    	vsubpd zmm8,zmm10,zmm8
  921ce1:	62 71 bd 48 59 c0    	vmulpd zmm8,zmm8,zmm0
  921ce7:	62 51 b5 40 58 d0    	vaddpd zmm10,zmm25,zmm8
  921ced:	62 02 d5 48 bc d5    	vfnmadd231pd zmm26,zmm5,zmm29
  921cf3:	62 f1 dd 48 5c db    	vsubpd zmm3,zmm4,zmm3
  921cf9:	62 f1 e5 48 59 d8    	vmulpd zmm3,zmm3,zmm0
  921cff:	62 f1 ad 40 58 e3    	vaddpd zmm4,zmm26,zmm3
  921d05:	62 71 ad 48 5c ec    	vsubpd zmm13,zmm10,zmm4
  921d0b:	62 f2 d5 48 ac f7    	vfnmadd213pd zmm6,zmm5,zmm7
  921d11:	62 91 c5 40 5c f8    	vsubpd zmm7,zmm23,zmm24
  921d17:	62 f1 c5 48 59 f8    	vmulpd zmm7,zmm7,zmm0
  921d1d:	62 71 cd 48 5c f7    	vsubpd zmm14,zmm6,zmm7
  921d23:	62 72 f5 48 bc dd    	vfnmadd231pd zmm11,zmm1,zmm5
  921d29:	62 91 a5 40 5c cc    	vsubpd zmm1,zmm27,zmm28
  921d2f:	62 f1 f5 48 59 c0    	vmulpd zmm0,zmm1,zmm0
  921d35:	62 f1 a5 48 5c c8    	vsubpd zmm1,zmm11,zmm0
  921d3b:	62 f1 8d 48 5c e9    	vsubpd zmm5,zmm14,zmm1
  921d41:	62 51 b5 40 5c c0    	vsubpd zmm8,zmm25,zmm8
  921d47:	62 f1 ad 40 5c db    	vsubpd zmm3,zmm26,zmm3
  921d4d:	62 71 bd 48 58 fb    	vaddpd zmm15,zmm8,zmm3
  921d53:	62 f1 c5 48 58 f6    	vaddpd zmm6,zmm7,zmm6
  921d59:	62 f1 a5 48 58 c0    	vaddpd zmm0,zmm11,zmm0
  921d5f:	62 f1 cd 48 58 f8    	vaddpd zmm7,zmm6,zmm0
  921d65:	62 11 ed 48 5c de    	vsubpd zmm11,zmm2,zmm30
  921d6b:	62 c1 9d 48 5c c1    	vsubpd zmm16,zmm12,zmm9
  921d71:	62 f1 ad 48 58 e4    	vaddpd zmm4,zmm10,zmm4
  921d77:	62 f1 8d 48 58 c9    	vaddpd zmm1,zmm14,zmm1
  921d7d:	62 f1 bd 48 5c db    	vsubpd zmm3,zmm8,zmm3
  921d83:	62 f1 cd 48 5c c0    	vsubpd zmm0,zmm6,zmm0
  921d89:	62 d1 9d 48 58 f1    	vaddpd zmm6,zmm12,zmm9
  921d8f:	62 91 ed 48 58 d6    	vaddpd zmm2,zmm2,zmm30
  921d95:	62 71 fd 48 28 05 21 	vmovapd zmm8,ZMMWORD PTR [rip+0xffffffffff75ed21]        # 80ac0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xdf70>
  921d9c:	ed 75 ff 
  921d9f:	62 f2 bd 48 7f f2    	vpermt2pd zmm6,zmm8,zmm2
  921da5:	62 f1 fd 48 11 36    	vmovupd ZMMWORD PTR [rsi],zmm6
  921dab:	62 d2 bd 48 7f ed    	vpermt2pd zmm5,zmm8,zmm13
  921db1:	62 f1 fd 48 11 6e 01 	vmovupd ZMMWORD PTR [rsi+0x40],zmm5
  921db8:	62 d2 bd 48 7f ff    	vpermt2pd zmm7,zmm8,zmm15
  921dbe:	62 f1 fd 48 11 7e 02 	vmovupd ZMMWORD PTR [rsi+0x80],zmm7
  921dc5:	62 c2 bd 48 7f c3    	vpermt2pd zmm16,zmm8,zmm11
  921dcb:	62 e1 fd 48 11 46 03 	vmovupd ZMMWORD PTR [rsi+0xc0],zmm16
  921dd2:	62 f2 bd 48 7f cc    	vpermt2pd zmm1,zmm8,zmm4
  921dd8:	62 f1 fd 48 11 4e 04 	vmovupd ZMMWORD PTR [rsi+0x100],zmm1
  921ddf:	62 f2 bd 48 7f c3    	vpermt2pd zmm0,zmm8,zmm3
  921de5:	62 f1 fd 48 11 46 05 	vmovupd ZMMWORD PTR [rsi+0x140],zmm0
  921dec:	c5 f8 77             	vzeroupper
  921def:	c3                   	ret
