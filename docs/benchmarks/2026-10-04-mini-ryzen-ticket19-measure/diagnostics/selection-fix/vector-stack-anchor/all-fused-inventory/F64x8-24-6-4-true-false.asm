
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000936940 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  936940:	62 f1 fd 48 28 1d b6 	vmovapd zmm3,ZMMWORD PTR [rip+0xffffffffff74bab6]        # 82400 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xf8b0>
  936947:	ba 74 ff 
  93694a:	62 f1 fd 48 10 17    	vmovupd zmm2,ZMMWORD PTR [rdi]
  936950:	62 f1 fd 48 10 67 01 	vmovupd zmm4,ZMMWORD PTR [rdi+0x40]
  936957:	62 f1 fd 48 10 6f 02 	vmovupd zmm5,ZMMWORD PTR [rdi+0x80]
  93695e:	62 f1 fd 48 10 77 03 	vmovupd zmm6,ZMMWORD PTR [rdi+0xc0]
  936965:	c5 f9 57 c0          	vxorpd xmm0,xmm0,xmm0
  936969:	62 f1 fd 48 28 fa    	vmovapd zmm7,zmm2
  93696f:	62 f2 e5 48 7f f8    	vpermt2pd zmm7,zmm3,zmm0
  936975:	62 f1 fd 48 28 0d c1 	vmovapd zmm1,ZMMWORD PTR [rip+0xffffffffff74bac1]        # 82440 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xf8f0>
  93697c:	ba 74 ff 
  93697f:	62 f2 f5 48 7f d0    	vpermt2pd zmm2,zmm1,zmm0
  936985:	62 71 fd 48 28 c4    	vmovapd zmm8,zmm4
  93698b:	62 72 e5 48 7f c0    	vpermt2pd zmm8,zmm3,zmm0
  936991:	62 f2 f5 48 7f e0    	vpermt2pd zmm4,zmm1,zmm0
  936997:	62 71 fd 48 28 cd    	vmovapd zmm9,zmm5
  93699d:	62 72 e5 48 7f c8    	vpermt2pd zmm9,zmm3,zmm0
  9369a3:	62 f2 f5 48 7f e8    	vpermt2pd zmm5,zmm1,zmm0
  9369a9:	62 71 fd 48 28 d6    	vmovapd zmm10,zmm6
  9369af:	62 72 e5 48 7f d0    	vpermt2pd zmm10,zmm3,zmm0
  9369b5:	62 f2 f5 48 7f f0    	vpermt2pd zmm6,zmm1,zmm0
  9369bb:	62 71 fd 48 10 5f 04 	vmovupd zmm11,ZMMWORD PTR [rdi+0x100]
  9369c2:	62 51 fd 48 28 e3    	vmovapd zmm12,zmm11
  9369c8:	62 72 e5 48 7f e0    	vpermt2pd zmm12,zmm3,zmm0
  9369ce:	62 72 f5 48 7f d8    	vpermt2pd zmm11,zmm1,zmm0
  9369d4:	62 71 fd 48 10 6f 05 	vmovupd zmm13,ZMMWORD PTR [rdi+0x140]
  9369db:	62 f2 95 48 77 d8    	vpermi2pd zmm3,zmm13,zmm0
  9369e1:	62 72 f5 48 7f e8    	vpermt2pd zmm13,zmm1,zmm0
  9369e7:	62 51 d5 48 58 f3    	vaddpd zmm14,zmm5,zmm11
  9369ed:	62 51 ed 48 58 fe    	vaddpd zmm15,zmm2,zmm14
  9369f3:	62 e1 95 48 58 c4    	vaddpd zmm16,zmm13,zmm4
  9369f9:	62 a1 cd 48 58 c8    	vaddpd zmm17,zmm6,zmm16
  9369ff:	62 a1 85 48 58 d1    	vaddpd zmm18,zmm15,zmm17
  936a05:	62 c1 b5 48 58 dc    	vaddpd zmm19,zmm9,zmm12
  936a0b:	62 a1 c5 48 58 e3    	vaddpd zmm20,zmm7,zmm19
  936a11:	62 c1 e5 48 58 e8    	vaddpd zmm21,zmm3,zmm8
  936a17:	62 a1 ad 48 58 f5    	vaddpd zmm22,zmm10,zmm21
  936a1d:	62 b1 dd 40 58 ce    	vaddpd zmm1,zmm20,zmm22
  936a23:	62 e2 fd 48 19 3d 6b 	vbroadcastsd zmm23,QWORD PTR [rip+0xffffffffff73e06b]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  936a2a:	e0 73 ff 
  936a2d:	62 d2 c5 40 bc d6    	vfnmadd231pd zmm2,zmm23,zmm14
  936a33:	62 51 b5 48 5c cc    	vsubpd zmm9,zmm9,zmm12
  936a39:	62 72 fd 48 19 25 dd 	vbroadcastsd zmm12,QWORD PTR [rip+0xffffffffff73e1dd]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  936a40:	e1 73 ff 
  936a43:	62 51 b5 48 59 cc    	vmulpd zmm9,zmm9,zmm12
  936a49:	62 51 ed 48 58 f1    	vaddpd zmm14,zmm2,zmm9
  936a4f:	62 b2 c5 40 bc f0    	vfnmadd231pd zmm6,zmm23,zmm16
  936a55:	62 d1 e5 48 5c d8    	vsubpd zmm3,zmm3,zmm8
  936a5b:	62 d1 e5 48 59 dc    	vmulpd zmm3,zmm3,zmm12
  936a61:	62 71 cd 48 58 c3    	vaddpd zmm8,zmm6,zmm3
  936a67:	62 c1 8d 48 5c c0    	vsubpd zmm16,zmm14,zmm8
  936a6d:	62 b2 c5 40 bc fb    	vfnmadd231pd zmm7,zmm23,zmm19
  936a73:	62 d1 d5 48 5c eb    	vsubpd zmm5,zmm5,zmm11
  936a79:	62 d1 d5 48 59 ec    	vmulpd zmm5,zmm5,zmm12
  936a7f:	62 71 c5 48 5c dd    	vsubpd zmm11,zmm7,zmm5
  936a85:	62 32 d5 40 bc d7    	vfnmadd231pd zmm10,zmm21,zmm23
  936a8b:	62 f1 95 48 5c e4    	vsubpd zmm4,zmm13,zmm4
  936a91:	62 d1 dd 48 59 e4    	vmulpd zmm4,zmm4,zmm12
  936a97:	62 71 ad 48 5c e4    	vsubpd zmm12,zmm10,zmm4
  936a9d:	62 51 a5 48 5c ec    	vsubpd zmm13,zmm11,zmm12
  936aa3:	62 d1 ed 48 5c d1    	vsubpd zmm2,zmm2,zmm9
  936aa9:	62 f1 cd 48 5c db    	vsubpd zmm3,zmm6,zmm3
  936aaf:	62 f1 ed 48 58 f3    	vaddpd zmm6,zmm2,zmm3
  936ab5:	62 f1 d5 48 58 ef    	vaddpd zmm5,zmm5,zmm7
  936abb:	62 d1 dd 48 58 e2    	vaddpd zmm4,zmm4,zmm10
  936ac1:	62 f1 d5 48 58 fc    	vaddpd zmm7,zmm5,zmm4
  936ac7:	62 31 85 48 5c c9    	vsubpd zmm9,zmm15,zmm17
  936acd:	62 31 dd 40 5c d6    	vsubpd zmm10,zmm20,zmm22
  936ad3:	62 51 8d 48 58 c0    	vaddpd zmm8,zmm14,zmm8
  936ad9:	62 51 a5 48 58 dc    	vaddpd zmm11,zmm11,zmm12
  936adf:	62 f1 ed 48 5c d3    	vsubpd zmm2,zmm2,zmm3
  936ae5:	62 f1 d5 48 5c dc    	vsubpd zmm3,zmm5,zmm4
  936aeb:	62 f1 fd 48 10 25 73 	vmovupd zmm4,ZMMWORD PTR [rip+0xffffffffff790273]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  936af2:	02 79 ff 
  936af5:	62 c2 dd 48 7f d0    	vpermt2pd zmm18,zmm4,zmm8
  936afb:	62 e2 dd 48 7f c2    	vpermt2pd zmm16,zmm4,zmm2
  936b01:	62 f2 dd 48 7f f0    	vpermt2pd zmm6,zmm4,zmm0
  936b07:	62 72 dd 48 7f c8    	vpermt2pd zmm9,zmm4,zmm0
  936b0d:	62 f1 fd 48 10 15 d1 	vmovupd zmm2,ZMMWORD PTR [rip+0xffffffffff7901d1]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  936b14:	01 79 ff 
  936b17:	62 b1 fd 48 28 ea    	vmovapd zmm5,zmm18
  936b1d:	62 f2 ed 48 7f ee    	vpermt2pd zmm5,zmm2,zmm6
  936b23:	62 71 fd 48 10 05 fb 	vmovupd zmm8,ZMMWORD PTR [rip+0xffffffffff7901fb]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  936b2a:	01 79 ff 
  936b2d:	62 e2 bd 48 7f d6    	vpermt2pd zmm18,zmm8,zmm6
  936b33:	62 b1 fd 48 28 f0    	vmovapd zmm6,zmm16
  936b39:	62 d2 ed 48 7f f1    	vpermt2pd zmm6,zmm2,zmm9
  936b3f:	62 c2 bd 48 7f c1    	vpermt2pd zmm16,zmm8,zmm9
  936b45:	62 71 d5 48 14 ce    	vunpcklpd zmm9,zmm5,zmm6
  936b4b:	62 f1 d5 48 15 ee    	vunpckhpd zmm5,zmm5,zmm6
  936b51:	62 b1 ed 40 14 f0    	vunpcklpd zmm6,zmm18,zmm16
  936b57:	62 31 ed 40 15 e0    	vunpckhpd zmm12,zmm18,zmm16
  936b5d:	62 d2 dd 48 7f cb    	vpermt2pd zmm1,zmm4,zmm11
  936b63:	62 72 dd 48 7f eb    	vpermt2pd zmm13,zmm4,zmm3
  936b69:	62 f2 dd 48 7f f8    	vpermt2pd zmm7,zmm4,zmm0
  936b6f:	62 72 dd 48 7f d0    	vpermt2pd zmm10,zmm4,zmm0
  936b75:	62 f1 fd 48 28 c1    	vmovapd zmm0,zmm1
  936b7b:	62 f2 ed 48 7f c7    	vpermt2pd zmm0,zmm2,zmm7
  936b81:	62 f2 bd 48 7f cf    	vpermt2pd zmm1,zmm8,zmm7
  936b87:	62 d2 95 48 77 d2    	vpermi2pd zmm2,zmm13,zmm10
  936b8d:	62 52 bd 48 7f ea    	vpermt2pd zmm13,zmm8,zmm10
  936b93:	62 f1 fd 48 14 da    	vunpcklpd zmm3,zmm0,zmm2
  936b99:	62 f1 fd 48 15 c2    	vunpckhpd zmm0,zmm0,zmm2
  936b9f:	62 d1 f5 48 14 d5    	vunpcklpd zmm2,zmm1,zmm13
  936ba5:	62 d1 f5 48 15 cd    	vunpckhpd zmm1,zmm1,zmm13
  936bab:	62 f1 fd 48 10 62 02 	vmovupd zmm4,ZMMWORD PTR [rdx+0x80]
  936bb2:	62 f1 fd 48 10 7a 03 	vmovupd zmm7,ZMMWORD PTR [rdx+0xc0]
  936bb9:	62 71 fd 48 10 42 04 	vmovupd zmm8,ZMMWORD PTR [rdx+0x100]
  936bc0:	62 71 fd 48 10 52 05 	vmovupd zmm10,ZMMWORD PTR [rdx+0x140]
  936bc7:	62 71 fd 48 10 5a 06 	vmovupd zmm11,ZMMWORD PTR [rdx+0x180]
  936bce:	62 71 fd 48 10 6a 07 	vmovupd zmm13,ZMMWORD PTR [rdx+0x1c0]
  936bd5:	62 51 cd 48 59 f0    	vmulpd zmm14,zmm6,zmm8
  936bdb:	62 52 ed 48 bc f2    	vfnmadd231pd zmm14,zmm2,zmm10
  936be1:	62 51 b5 48 58 fe    	vaddpd zmm15,zmm9,zmm14
  936be7:	62 e1 d5 48 59 c4    	vmulpd zmm16,zmm5,zmm4
  936bed:	62 e2 fd 48 bc c7    	vfnmadd231pd zmm16,zmm0,zmm7
  936bf3:	62 c1 9d 48 59 cb    	vmulpd zmm17,zmm12,zmm11
  936bf9:	62 c2 f5 48 bc cd    	vfnmadd231pd zmm17,zmm1,zmm13
  936bff:	62 a1 fd 40 58 d1    	vaddpd zmm18,zmm16,zmm17
  936c05:	62 d1 ed 48 59 d0    	vmulpd zmm2,zmm2,zmm8
  936c0b:	62 d2 cd 48 b8 d2    	vfmadd231pd zmm2,zmm6,zmm10
  936c11:	62 f1 ed 48 58 f3    	vaddpd zmm6,zmm2,zmm3
  936c17:	62 f1 fd 48 59 c4    	vmulpd zmm0,zmm0,zmm4
  936c1d:	62 f2 d5 48 b8 c7    	vfmadd231pd zmm0,zmm5,zmm7
  936c23:	62 d1 f5 48 59 cb    	vmulpd zmm1,zmm1,zmm11
  936c29:	62 d2 9d 48 b8 cd    	vfmadd231pd zmm1,zmm12,zmm13
  936c2f:	62 f1 fd 48 58 e1    	vaddpd zmm4,zmm0,zmm1
  936c35:	62 d1 b5 48 5c ee    	vsubpd zmm5,zmm9,zmm14
  936c3b:	62 f1 fd 48 5c c1    	vsubpd zmm0,zmm0,zmm1
  936c41:	62 f1 d5 48 58 c8    	vaddpd zmm1,zmm5,zmm0
  936c47:	62 f1 e5 48 5c d2    	vsubpd zmm2,zmm3,zmm2
  936c4d:	62 b1 f5 40 5c d8    	vsubpd zmm3,zmm17,zmm16
  936c53:	62 f1 ed 48 58 fb    	vaddpd zmm7,zmm2,zmm3
  936c59:	c5 7d 28 05 9f 00 74 	vmovapd ymm8,YMMWORD PTR [rip+0xffffffffff74009f]        # 76d00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x41b0>
  936c60:	ff 
  936c61:	62 71 fd 48 28 cf    	vmovapd zmm9,zmm7
  936c67:	62 72 bd 48 7f c9    	vpermt2pd zmm9,zmm8,zmm1
  936c6d:	62 31 85 48 5c d2    	vsubpd zmm10,zmm15,zmm18
  936c73:	62 71 cd 48 5c dc    	vsubpd zmm11,zmm6,zmm4
  936c79:	62 51 fd 48 28 e3    	vmovapd zmm12,zmm11
  936c7f:	62 52 bd 48 7f e2    	vpermt2pd zmm12,zmm8,zmm10
  936c85:	62 f1 d5 48 5c c0    	vsubpd zmm0,zmm5,zmm0
  936c8b:	62 f1 ed 48 5c d3    	vsubpd zmm2,zmm2,zmm3
  936c91:	62 f1 fd 48 28 da    	vmovapd zmm3,zmm2
  936c97:	62 f2 bd 48 7f d8    	vpermt2pd zmm3,zmm8,zmm0
  936c9d:	62 f1 cd 48 58 e4    	vaddpd zmm4,zmm6,zmm4
  936ca3:	62 b1 85 48 58 ea    	vaddpd zmm5,zmm15,zmm18
  936ca9:	62 72 dd 48 77 c5    	vpermi2pd zmm8,zmm4,zmm5
  936caf:	62 f1 fd 48 28 35 c7 	vmovapd zmm6,ZMMWORD PTR [rip+0xffffffffff74b7c7]        # 82480 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xf930>
  936cb6:	b7 74 ff 
  936cb9:	62 f2 cd 48 7f e5    	vpermt2pd zmm4,zmm6,zmm5
  936cbf:	62 f1 fd 48 11 26    	vmovupd ZMMWORD PTR [rsi],zmm4
  936cc5:	c5 7d 11 46 40       	vmovupd YMMWORD PTR [rsi+0x40],ymm8
  936cca:	62 f2 cd 48 7f f9    	vpermt2pd zmm7,zmm6,zmm1
  936cd0:	62 f1 fd 48 11 be 60 	vmovupd ZMMWORD PTR [rsi+0x60],zmm7
  936cd7:	00 00 00 
  936cda:	c5 7d 11 8e a0 00 00 	vmovupd YMMWORD PTR [rsi+0xa0],ymm9
  936ce1:	00 
  936ce2:	62 52 cd 48 7f da    	vpermt2pd zmm11,zmm6,zmm10
  936ce8:	62 71 fd 48 11 5e 03 	vmovupd ZMMWORD PTR [rsi+0xc0],zmm11
  936cef:	c5 7d 11 a6 00 01 00 	vmovupd YMMWORD PTR [rsi+0x100],ymm12
  936cf6:	00 
  936cf7:	62 f2 cd 48 7f d0    	vpermt2pd zmm2,zmm6,zmm0
  936cfd:	62 f1 fd 48 11 96 20 	vmovupd ZMMWORD PTR [rsi+0x120],zmm2
  936d04:	01 00 00 
  936d07:	c5 fd 11 9e 60 01 00 	vmovupd YMMWORD PTR [rsi+0x160],ymm3
  936d0e:	00 
  936d0f:	c5 f8 77             	vzeroupper
  936d12:	c3                   	ret
