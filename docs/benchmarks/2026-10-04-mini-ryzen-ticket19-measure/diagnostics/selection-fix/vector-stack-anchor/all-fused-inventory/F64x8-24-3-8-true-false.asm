
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000009498c0 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  9498c0:	62 f1 fd 48 28 05 36 	vmovapd zmm0,ZMMWORD PTR [rip+0xffffffffff73a736]        # 84000 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x114b0>
  9498c7:	a7 73 ff 
  9498ca:	62 f1 fd 48 10 0f    	vmovupd zmm1,ZMMWORD PTR [rdi]
  9498d0:	62 f1 fd 48 10 57 01 	vmovupd zmm2,ZMMWORD PTR [rdi+0x40]
  9498d7:	62 f1 fd 48 10 5f 02 	vmovupd zmm3,ZMMWORD PTR [rdi+0x80]
  9498de:	62 f1 fd 48 10 67 03 	vmovupd zmm4,ZMMWORD PTR [rdi+0xc0]
  9498e5:	62 f1 fd 48 28 e9    	vmovapd zmm5,zmm1
  9498eb:	62 f2 fd 48 7f ea    	vpermt2pd zmm5,zmm0,zmm2
  9498f1:	62 f1 fd 48 28 35 45 	vmovapd zmm6,ZMMWORD PTR [rip+0xffffffffff73a745]        # 84040 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x114f0>
  9498f8:	a7 73 ff 
  9498fb:	62 f2 cd 48 7f ca    	vpermt2pd zmm1,zmm6,zmm2
  949901:	62 f1 fd 48 28 d3    	vmovapd zmm2,zmm3
  949907:	62 f2 fd 48 7f d4    	vpermt2pd zmm2,zmm0,zmm4
  94990d:	62 f2 cd 48 7f dc    	vpermt2pd zmm3,zmm6,zmm4
  949913:	62 f1 fd 48 10 67 04 	vmovupd zmm4,ZMMWORD PTR [rdi+0x100]
  94991a:	62 f1 fd 48 10 7f 05 	vmovupd zmm7,ZMMWORD PTR [rdi+0x140]
  949921:	62 f2 dd 48 77 c7    	vpermi2pd zmm0,zmm4,zmm7
  949927:	62 f2 cd 48 7f e7    	vpermt2pd zmm4,zmm6,zmm7
  94992d:	62 f1 e5 48 58 f4    	vaddpd zmm6,zmm3,zmm4
  949933:	62 f1 f5 48 58 fe    	vaddpd zmm7,zmm1,zmm6
  949939:	62 71 ed 48 58 c0    	vaddpd zmm8,zmm2,zmm0
  94993f:	62 51 d5 48 58 c8    	vaddpd zmm9,zmm5,zmm8
  949945:	62 72 fd 48 19 15 49 	vbroadcastsd zmm10,QWORD PTR [rip+0xffffffffff72b149]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  94994c:	b1 72 ff 
  94994f:	62 f2 ad 48 bc ce    	vfnmadd231pd zmm1,zmm10,zmm6
  949955:	62 f1 ed 48 5c c0    	vsubpd zmm0,zmm2,zmm0
  94995b:	62 f2 fd 48 19 15 bb 	vbroadcastsd zmm2,QWORD PTR [rip+0xffffffffff72b2bb]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  949962:	b2 72 ff 
  949965:	62 f1 fd 48 59 c2    	vmulpd zmm0,zmm0,zmm2
  94996b:	62 71 f5 48 58 e0    	vaddpd zmm12,zmm1,zmm0
  949971:	62 d2 bd 48 bc ea    	vfnmadd231pd zmm5,zmm8,zmm10
  949977:	62 f1 e5 48 5c dc    	vsubpd zmm3,zmm3,zmm4
  94997d:	62 f1 e5 48 59 d2    	vmulpd zmm2,zmm3,zmm2
  949983:	62 71 d5 48 5c f2    	vsubpd zmm14,zmm5,zmm2
  949989:	62 f1 f5 48 5c d8    	vsubpd zmm3,zmm1,zmm0
  94998f:	62 71 ed 48 58 dd    	vaddpd zmm11,zmm2,zmm5
  949995:	62 71 fd 48 10 3d c9 	vmovupd zmm15,ZMMWORD PTR [rip+0xffffffffff77d3c9]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  94999c:	d3 77 ff 
  94999f:	c5 d9 57 e4          	vxorpd xmm4,xmm4,xmm4
  9499a3:	62 f1 fd 48 28 d7    	vmovapd zmm2,zmm7
  9499a9:	62 f2 85 48 7f d4    	vpermt2pd zmm2,zmm15,zmm4
  9499af:	62 e1 fd 48 10 05 ef 	vmovupd zmm16,ZMMWORD PTR [rip+0xffffffffff77d3ef]        # c6da8 <crc32fast::table::CRC32_TABLE+0x9124>
  9499b6:	d3 77 ff 
  9499b9:	62 f2 fd 40 7f fc    	vpermt2pd zmm7,zmm16,zmm4
  9499bf:	62 d1 fd 48 28 ec    	vmovapd zmm5,zmm12
  9499c5:	62 f2 85 48 7f ec    	vpermt2pd zmm5,zmm15,zmm4
  9499cb:	62 72 fd 40 7f e4    	vpermt2pd zmm12,zmm16,zmm4
  9499d1:	62 f1 fd 48 28 cb    	vmovapd zmm1,zmm3
  9499d7:	62 f2 85 48 7f cc    	vpermt2pd zmm1,zmm15,zmm4
  9499dd:	62 f2 fd 40 7f dc    	vpermt2pd zmm3,zmm16,zmm4
  9499e3:	62 a1 f5 00 57 c9    	vxorpd xmm17,xmm17,xmm17
  9499e9:	62 a2 85 48 7f c9    	vpermt2pd zmm17,zmm15,zmm17
  9499ef:	62 a1 ed 00 57 d2    	vxorpd xmm18,xmm18,xmm18
  9499f5:	62 a2 fd 40 7f d2    	vpermt2pd zmm18,zmm16,zmm18
  9499fb:	62 e1 fd 48 10 1d e3 	vmovupd zmm19,ZMMWORD PTR [rip+0xffffffffff77d2e3]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  949a02:	d2 77 ff 
  949a05:	62 f1 fd 48 28 c2    	vmovapd zmm0,zmm2
  949a0b:	62 f2 e5 40 7f c1    	vpermt2pd zmm0,zmm19,zmm1
  949a11:	62 e1 fd 48 10 25 0d 	vmovupd zmm20,ZMMWORD PTR [rip+0xffffffffff77d30d]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  949a18:	d3 77 ff 
  949a1b:	62 f2 dd 40 7f d1    	vpermt2pd zmm2,zmm20,zmm1
  949a21:	62 f1 fd 48 28 cd    	vmovapd zmm1,zmm5
  949a27:	62 b2 e5 40 7f c9    	vpermt2pd zmm1,zmm19,zmm17
  949a2d:	62 b2 dd 40 7f e9    	vpermt2pd zmm5,zmm20,zmm17
  949a33:	62 71 fd 48 28 c7    	vmovapd zmm8,zmm7
  949a39:	62 72 e5 40 7f c3    	vpermt2pd zmm8,zmm19,zmm3
  949a3f:	62 f2 dd 40 7f fb    	vpermt2pd zmm7,zmm20,zmm3
  949a45:	62 c1 fd 48 28 ec    	vmovapd zmm21,zmm12
  949a4b:	62 a2 e5 40 7f ea    	vpermt2pd zmm21,zmm19,zmm18
  949a51:	62 32 dd 40 7f e2    	vpermt2pd zmm12,zmm20,zmm18
  949a57:	62 f1 fd 48 15 f1    	vunpckhpd zmm6,zmm0,zmm1
  949a5d:	62 71 ed 48 14 d5    	vunpcklpd zmm10,zmm2,zmm5
  949a63:	62 f1 ed 48 15 dd    	vunpckhpd zmm3,zmm2,zmm5
  949a69:	62 31 bd 48 14 ed    	vunpcklpd zmm13,zmm8,zmm21
  949a6f:	62 b1 bd 48 15 ed    	vunpckhpd zmm5,zmm8,zmm21
  949a75:	62 51 c5 48 14 c4    	vunpcklpd zmm8,zmm7,zmm12
  949a7b:	62 d1 c5 48 15 d4    	vunpckhpd zmm2,zmm7,zmm12
  949a81:	62 51 fd 48 28 e1    	vmovapd zmm12,zmm9
  949a87:	62 72 85 48 7f e4    	vpermt2pd zmm12,zmm15,zmm4
  949a8d:	62 72 fd 40 7f cc    	vpermt2pd zmm9,zmm16,zmm4
  949a93:	62 c1 fd 48 28 ee    	vmovapd zmm21,zmm14
  949a99:	62 e2 85 48 7f ec    	vpermt2pd zmm21,zmm15,zmm4
  949a9f:	62 72 fd 40 7f f4    	vpermt2pd zmm14,zmm16,zmm4
  949aa5:	62 72 a5 48 77 fc    	vpermi2pd zmm15,zmm11,zmm4
  949aab:	62 72 fd 40 7f dc    	vpermt2pd zmm11,zmm16,zmm4
  949ab1:	62 d1 fd 48 28 e4    	vmovapd zmm4,zmm12
  949ab7:	62 d2 e5 40 7f e7    	vpermt2pd zmm4,zmm19,zmm15
  949abd:	62 52 dd 40 7f e7    	vpermt2pd zmm12,zmm20,zmm15
  949ac3:	62 b1 fd 48 28 fd    	vmovapd zmm7,zmm21
  949ac9:	62 b2 e5 40 7f f9    	vpermt2pd zmm7,zmm19,zmm17
  949acf:	62 a2 dd 40 7f e9    	vpermt2pd zmm21,zmm20,zmm17
  949ad5:	62 51 fd 48 28 f9    	vmovapd zmm15,zmm9
  949adb:	62 52 e5 40 7f fb    	vpermt2pd zmm15,zmm19,zmm11
  949ae1:	62 52 dd 40 7f cb    	vpermt2pd zmm9,zmm20,zmm11
  949ae7:	62 a2 8d 48 77 da    	vpermi2pd zmm19,zmm14,zmm18
  949aed:	62 32 dd 40 7f f2    	vpermt2pd zmm14,zmm20,zmm18
  949af3:	62 e1 dd 48 15 c7    	vunpckhpd zmm16,zmm4,zmm7
  949af9:	62 a1 9d 48 14 cd    	vunpcklpd zmm17,zmm12,zmm21
  949aff:	62 31 9d 48 15 e5    	vunpckhpd zmm12,zmm12,zmm21
  949b05:	62 a1 85 48 14 d3    	vunpcklpd zmm18,zmm15,zmm19
  949b0b:	62 31 85 48 15 fb    	vunpckhpd zmm15,zmm15,zmm19
  949b11:	62 51 b5 48 15 de    	vunpckhpd zmm11,zmm9,zmm14
  949b17:	62 c1 b5 48 14 de    	vunpcklpd zmm19,zmm9,zmm14
  949b1d:	62 71 fd 48 10 72 08 	vmovupd zmm14,ZMMWORD PTR [rdx+0x200]
  949b24:	62 e1 fd 48 10 62 09 	vmovupd zmm20,ZMMWORD PTR [rdx+0x240]
  949b2b:	62 51 95 48 59 ce    	vmulpd zmm9,zmm13,zmm14
  949b31:	62 32 ed 40 bc cc    	vfnmadd231pd zmm9,zmm18,zmm20
  949b37:	62 51 ed 40 59 f6    	vmulpd zmm14,zmm18,zmm14
  949b3d:	62 e1 fd 48 10 52 04 	vmovupd zmm18,ZMMWORD PTR [rdx+0x100]
  949b44:	62 32 95 48 b8 f4    	vfmadd231pd zmm14,zmm13,zmm20
  949b4a:	62 e1 fd 48 10 62 05 	vmovupd zmm20,ZMMWORD PTR [rdx+0x140]
  949b51:	62 31 ad 48 59 ea    	vmulpd zmm13,zmm10,zmm18
  949b57:	62 32 f5 40 bc ec    	vfnmadd231pd zmm13,zmm17,zmm20
  949b5d:	62 a1 f5 40 59 ca    	vmulpd zmm17,zmm17,zmm18
  949b63:	62 e1 fd 48 10 52 0c 	vmovupd zmm18,ZMMWORD PTR [rdx+0x300]
  949b6a:	62 a2 ad 48 b8 cc    	vfmadd231pd zmm17,zmm10,zmm20
  949b70:	62 71 fd 48 10 52 0d 	vmovupd zmm10,ZMMWORD PTR [rdx+0x340]
  949b77:	62 a1 bd 48 59 e2    	vmulpd zmm20,zmm8,zmm18
  949b7d:	62 c2 e5 40 bc e2    	vfnmadd231pd zmm20,zmm19,zmm10
  949b83:	62 a1 e5 40 59 d2    	vmulpd zmm18,zmm19,zmm18
  949b89:	62 e1 fd 48 10 5a 02 	vmovupd zmm19,ZMMWORD PTR [rdx+0x80]
  949b90:	62 c2 bd 48 b8 d2    	vfmadd231pd zmm18,zmm8,zmm10
  949b96:	62 71 fd 48 10 42 03 	vmovupd zmm8,ZMMWORD PTR [rdx+0xc0]
  949b9d:	62 31 cd 48 59 d3    	vmulpd zmm10,zmm6,zmm19
  949ba3:	62 52 fd 40 bc d0    	vfnmadd231pd zmm10,zmm16,zmm8
  949ba9:	62 a1 fd 40 59 c3    	vmulpd zmm16,zmm16,zmm19
  949baf:	62 e1 fd 48 10 5a 0a 	vmovupd zmm19,ZMMWORD PTR [rdx+0x280]
  949bb6:	62 c2 cd 48 b8 c0    	vfmadd231pd zmm16,zmm6,zmm8
  949bbc:	62 f1 fd 48 10 72 0b 	vmovupd zmm6,ZMMWORD PTR [rdx+0x2c0]
  949bc3:	62 31 d5 48 59 c3    	vmulpd zmm8,zmm5,zmm19
  949bc9:	62 72 85 48 bc c6    	vfnmadd231pd zmm8,zmm15,zmm6
  949bcf:	62 31 85 48 59 fb    	vmulpd zmm15,zmm15,zmm19
  949bd5:	62 e1 fd 48 10 5a 06 	vmovupd zmm19,ZMMWORD PTR [rdx+0x180]
  949bdc:	62 72 d5 48 b8 fe    	vfmadd231pd zmm15,zmm5,zmm6
  949be2:	62 f1 fd 48 10 6a 07 	vmovupd zmm5,ZMMWORD PTR [rdx+0x1c0]
  949be9:	62 b1 e5 48 59 f3    	vmulpd zmm6,zmm3,zmm19
  949bef:	62 f2 9d 48 bc f5    	vfnmadd231pd zmm6,zmm12,zmm5
  949bf5:	62 31 9d 48 59 e3    	vmulpd zmm12,zmm12,zmm19
  949bfb:	62 e1 fd 48 10 5a 0e 	vmovupd zmm19,ZMMWORD PTR [rdx+0x380]
  949c02:	62 72 e5 48 b8 e5    	vfmadd231pd zmm12,zmm3,zmm5
  949c08:	62 f1 fd 48 10 5a 0f 	vmovupd zmm3,ZMMWORD PTR [rdx+0x3c0]
  949c0f:	62 b1 ed 48 59 eb    	vmulpd zmm5,zmm2,zmm19
  949c15:	62 f2 a5 48 bc eb    	vfnmadd231pd zmm5,zmm11,zmm3
  949c1b:	62 31 a5 48 59 db    	vmulpd zmm11,zmm11,zmm19
  949c21:	62 72 ed 48 b8 db    	vfmadd231pd zmm11,zmm2,zmm3
  949c27:	62 f1 fd 48 14 c1    	vunpcklpd zmm0,zmm0,zmm1
  949c2d:	62 f1 dd 48 14 cf    	vunpcklpd zmm1,zmm4,zmm7
  949c33:	62 d1 fd 48 58 d1    	vaddpd zmm2,zmm0,zmm9
  949c39:	62 d1 fd 48 5c c1    	vsubpd zmm0,zmm0,zmm9
  949c3f:	62 b1 f5 40 58 da    	vaddpd zmm3,zmm17,zmm18
  949c45:	62 b1 f5 40 5c e2    	vsubpd zmm4,zmm17,zmm18
  949c4b:	62 d1 ad 48 58 f8    	vaddpd zmm7,zmm10,zmm8
  949c51:	62 51 ad 48 5c c0    	vsubpd zmm8,zmm10,zmm8
  949c57:	62 51 fd 40 58 cf    	vaddpd zmm9,zmm16,zmm15
  949c5d:	62 51 fd 40 5c d7    	vsubpd zmm10,zmm16,zmm15
  949c63:	62 51 9d 48 58 fb    	vaddpd zmm15,zmm12,zmm11
  949c69:	62 51 9d 48 5c db    	vsubpd zmm11,zmm12,zmm11
  949c6f:	62 71 cd 48 58 e5    	vaddpd zmm12,zmm6,zmm5
  949c75:	62 f1 cd 48 5c ed    	vsubpd zmm5,zmm6,zmm5
  949c7b:	62 f1 8d 48 58 f1    	vaddpd zmm6,zmm14,zmm1
  949c81:	62 d1 f5 48 5c ce    	vsubpd zmm1,zmm1,zmm14
  949c87:	62 31 95 48 58 f4    	vaddpd zmm14,zmm13,zmm20
  949c8d:	62 51 dd 40 5c ed    	vsubpd zmm13,zmm20,zmm13
  949c93:	62 c1 bd 48 58 c2    	vaddpd zmm16,zmm8,zmm10
  949c99:	62 51 ad 48 5c c0    	vsubpd zmm8,zmm10,zmm8
  949c9f:	62 71 a5 48 5c d5    	vsubpd zmm10,zmm11,zmm5
  949ca5:	62 d1 d5 48 58 eb    	vaddpd zmm5,zmm5,zmm11
  949cab:	62 72 fd 48 19 1d eb 	vbroadcastsd zmm11,QWORD PTR [rip+0xffffffffff72b1eb]        # 74ea0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2350>
  949cb2:	b1 72 ff 
  949cb5:	62 c1 fd 40 59 c3    	vmulpd zmm16,zmm16,zmm11
  949cbb:	62 51 ad 48 59 d3    	vmulpd zmm10,zmm10,zmm11
  949cc1:	62 51 bd 48 59 c3    	vmulpd zmm8,zmm8,zmm11
  949cc7:	62 d1 d5 48 59 eb    	vmulpd zmm5,zmm5,zmm11
  949ccd:	62 51 ed 48 58 de    	vaddpd zmm11,zmm2,zmm14
  949cd3:	62 d1 ed 48 5c d6    	vsubpd zmm2,zmm2,zmm14
  949cd9:	62 51 b5 48 58 f7    	vaddpd zmm14,zmm9,zmm15
  949cdf:	62 51 b5 48 5c cf    	vsubpd zmm9,zmm9,zmm15
  949ce5:	62 71 e5 48 58 fe    	vaddpd zmm15,zmm3,zmm6
  949ceb:	62 f1 cd 48 5c db    	vsubpd zmm3,zmm6,zmm3
  949cf1:	62 d1 c5 48 58 f4    	vaddpd zmm6,zmm7,zmm12
  949cf7:	62 f1 9d 48 5c ff    	vsubpd zmm7,zmm12,zmm7
  949cfd:	62 71 fd 48 58 e4    	vaddpd zmm12,zmm0,zmm4
  949d03:	62 f1 fd 48 5c c4    	vsubpd zmm0,zmm0,zmm4
  949d09:	62 f1 bd 48 5c e5    	vsubpd zmm4,zmm8,zmm5
  949d0f:	62 f1 bd 48 58 ed    	vaddpd zmm5,zmm8,zmm5
  949d15:	62 71 95 48 58 c1    	vaddpd zmm8,zmm13,zmm1
  949d1b:	62 d1 f5 48 5c cd    	vsubpd zmm1,zmm1,zmm13
  949d21:	62 51 fd 40 58 ea    	vaddpd zmm13,zmm16,zmm10
  949d27:	62 31 ad 48 5c d0    	vsubpd zmm10,zmm10,zmm16
  949d2d:	62 c1 9d 48 58 c5    	vaddpd zmm16,zmm12,zmm13
  949d33:	62 51 9d 48 5c e5    	vsubpd zmm12,zmm12,zmm13
  949d39:	62 71 bd 48 58 ec    	vaddpd zmm13,zmm8,zmm4
  949d3f:	62 f1 bd 48 5c e4    	vsubpd zmm4,zmm8,zmm4
  949d45:	62 51 ed 48 58 c1    	vaddpd zmm8,zmm2,zmm9
  949d4b:	62 d1 ed 48 5c d1    	vsubpd zmm2,zmm2,zmm9
  949d51:	62 71 e5 48 58 cf    	vaddpd zmm9,zmm3,zmm7
  949d57:	62 f1 e5 48 5c df    	vsubpd zmm3,zmm3,zmm7
  949d5d:	62 f1 fd 48 58 fd    	vaddpd zmm7,zmm0,zmm5
  949d63:	62 f1 fd 48 5c c5    	vsubpd zmm0,zmm0,zmm5
  949d69:	62 d1 f5 48 58 ea    	vaddpd zmm5,zmm1,zmm10
  949d6f:	62 d1 f5 48 5c ca    	vsubpd zmm1,zmm1,zmm10
  949d75:	62 51 85 48 5c d6    	vsubpd zmm10,zmm15,zmm14
  949d7b:	62 51 85 48 58 f6    	vaddpd zmm14,zmm15,zmm14
  949d81:	62 71 a5 48 5c fe    	vsubpd zmm15,zmm11,zmm6
  949d87:	62 f1 a5 48 58 f6    	vaddpd zmm6,zmm11,zmm6
  949d8d:	62 71 fd 48 28 1d e9 	vmovapd zmm11,ZMMWORD PTR [rip+0xffffffffff73a2e9]        # 84080 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x11530>
  949d94:	a2 73 ff 
  949d97:	62 72 a5 48 7f f6    	vpermt2pd zmm14,zmm11,zmm6
  949d9d:	62 32 a5 48 7f e8    	vpermt2pd zmm13,zmm11,zmm16
  949da3:	62 52 a5 48 7f c8    	vpermt2pd zmm9,zmm11,zmm8
  949da9:	62 f2 a5 48 7f ef    	vpermt2pd zmm5,zmm11,zmm7
  949daf:	62 52 a5 48 7f d7    	vpermt2pd zmm10,zmm11,zmm15
  949db5:	62 d2 a5 48 7f e4    	vpermt2pd zmm4,zmm11,zmm12
  949dbb:	62 f2 a5 48 7f da    	vpermt2pd zmm3,zmm11,zmm2
  949dc1:	62 f2 a5 48 7f c8    	vpermt2pd zmm1,zmm11,zmm0
  949dc7:	62 73 7d 48 19 76 02 	vextractf32x4 XMMWORD PTR [rsi+0x20],zmm14,0x2
  949dce:	02 
  949dcf:	c5 7d 11 36          	vmovupd YMMWORD PTR [rsi],ymm14
  949dd3:	62 73 7d 48 19 6e 05 	vextractf32x4 XMMWORD PTR [rsi+0x50],zmm13,0x2
  949dda:	02 
  949ddb:	c5 7d 11 6e 30       	vmovupd YMMWORD PTR [rsi+0x30],ymm13
  949de0:	62 73 7d 48 19 4e 08 	vextractf32x4 XMMWORD PTR [rsi+0x80],zmm9,0x2
  949de7:	02 
  949de8:	c5 7d 11 4e 60       	vmovupd YMMWORD PTR [rsi+0x60],ymm9
  949ded:	62 f3 7d 48 19 6e 0b 	vextractf32x4 XMMWORD PTR [rsi+0xb0],zmm5,0x2
  949df4:	02 
  949df5:	c5 fd 11 ae 90 00 00 	vmovupd YMMWORD PTR [rsi+0x90],ymm5
  949dfc:	00 
  949dfd:	62 73 7d 48 19 56 0e 	vextractf32x4 XMMWORD PTR [rsi+0xe0],zmm10,0x2
  949e04:	02 
  949e05:	c5 7d 11 96 c0 00 00 	vmovupd YMMWORD PTR [rsi+0xc0],ymm10
  949e0c:	00 
  949e0d:	62 f3 7d 48 19 66 11 	vextractf32x4 XMMWORD PTR [rsi+0x110],zmm4,0x2
  949e14:	02 
  949e15:	c5 fd 11 a6 f0 00 00 	vmovupd YMMWORD PTR [rsi+0xf0],ymm4
  949e1c:	00 
  949e1d:	62 f3 7d 48 19 5e 14 	vextractf32x4 XMMWORD PTR [rsi+0x140],zmm3,0x2
  949e24:	02 
  949e25:	c5 fd 11 9e 20 01 00 	vmovupd YMMWORD PTR [rsi+0x120],ymm3
  949e2c:	00 
  949e2d:	62 f3 7d 48 19 4e 17 	vextractf32x4 XMMWORD PTR [rsi+0x170],zmm1,0x2
  949e34:	02 
  949e35:	c5 fd 11 8e 50 01 00 	vmovupd YMMWORD PTR [rsi+0x150],ymm1
  949e3c:	00 
  949e3d:	c5 f8 77             	vzeroupper
  949e40:	c3                   	ret
