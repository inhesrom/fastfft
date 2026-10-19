
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000979a40 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  979a40:	62 f1 fd 48 28 05 b6 	vmovapd zmm0,ZMMWORD PTR [rip+0xffffffffff70ddb6]        # 87800 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x14cb0>
  979a47:	dd 70 ff 
  979a4a:	62 f1 fd 48 10 0f    	vmovupd zmm1,ZMMWORD PTR [rdi]
  979a50:	62 f1 fd 48 10 57 01 	vmovupd zmm2,ZMMWORD PTR [rdi+0x40]
  979a57:	62 f1 fd 48 10 5f 02 	vmovupd zmm3,ZMMWORD PTR [rdi+0x80]
  979a5e:	c5 d9 57 e4          	vxorpd xmm4,xmm4,xmm4
  979a62:	62 f1 fd 48 28 e9    	vmovapd zmm5,zmm1
  979a68:	62 f2 fd 48 7f ec    	vpermt2pd zmm5,zmm0,zmm4
  979a6e:	62 f1 fd 48 28 35 c8 	vmovapd zmm6,ZMMWORD PTR [rip+0xffffffffff70ddc8]        # 87840 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x14cf0>
  979a75:	dd 70 ff 
  979a78:	62 f2 cd 48 7f cc    	vpermt2pd zmm1,zmm6,zmm4
  979a7e:	62 f1 fd 48 28 fa    	vmovapd zmm7,zmm2
  979a84:	62 f2 fd 48 7f fc    	vpermt2pd zmm7,zmm0,zmm4
  979a8a:	62 f2 cd 48 7f d4    	vpermt2pd zmm2,zmm6,zmm4
  979a90:	62 f2 e5 48 77 c4    	vpermi2pd zmm0,zmm3,zmm4
  979a96:	62 f2 cd 48 7f dc    	vpermt2pd zmm3,zmm6,zmm4
  979a9c:	62 f1 c5 48 58 f0    	vaddpd zmm6,zmm7,zmm0
  979aa2:	62 71 d5 48 58 c6    	vaddpd zmm8,zmm5,zmm6
  979aa8:	62 71 ed 48 58 cb    	vaddpd zmm9,zmm2,zmm3
  979aae:	62 51 f5 48 58 d1    	vaddpd zmm10,zmm1,zmm9
  979ab4:	62 72 fd 48 19 1d da 	vbroadcastsd zmm11,QWORD PTR [rip+0xffffffffff6fafda]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  979abb:	af 6f ff 
  979abe:	62 f2 a5 48 bc ee    	vfnmadd231pd zmm5,zmm11,zmm6
  979ac4:	62 f1 ed 48 5c d3    	vsubpd zmm2,zmm2,zmm3
  979aca:	62 f2 fd 48 19 1d 4c 	vbroadcastsd zmm3,QWORD PTR [rip+0xffffffffff6fb14c]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  979ad1:	b1 6f ff 
  979ad4:	62 f1 ed 48 59 d3    	vmulpd zmm2,zmm2,zmm3
  979ada:	62 f1 d5 48 58 f2    	vaddpd zmm6,zmm5,zmm2
  979ae0:	62 d2 b5 48 bc cb    	vfnmadd231pd zmm1,zmm9,zmm11
  979ae6:	62 f1 c5 48 5c c0    	vsubpd zmm0,zmm7,zmm0
  979aec:	62 f1 fd 48 59 c3    	vmulpd zmm0,zmm0,zmm3
  979af2:	62 f1 f5 48 5c d8    	vsubpd zmm3,zmm1,zmm0
  979af8:	62 f1 d5 48 5c d2    	vsubpd zmm2,zmm5,zmm2
  979afe:	62 f1 fd 48 58 c1    	vaddpd zmm0,zmm0,zmm1
  979b04:	62 f1 fd 48 10 0d 5a 	vmovupd zmm1,ZMMWORD PTR [rip+0xffffffffff74d25a]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  979b0b:	d2 74 ff 
  979b0e:	62 72 f5 48 7f c4    	vpermt2pd zmm8,zmm1,zmm4
  979b14:	62 f2 f5 48 7f f4    	vpermt2pd zmm6,zmm1,zmm4
  979b1a:	62 f2 f5 48 7f d4    	vpermt2pd zmm2,zmm1,zmm4
  979b20:	c5 d1 57 ed          	vxorpd xmm5,xmm5,xmm5
  979b24:	62 f2 f5 48 7f ed    	vpermt2pd zmm5,zmm1,zmm5
  979b2a:	62 f1 fd 48 10 3d b4 	vmovupd zmm7,ZMMWORD PTR [rip+0xffffffffff74d1b4]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  979b31:	d1 74 ff 
  979b34:	62 51 fd 48 28 c8    	vmovapd zmm9,zmm8
  979b3a:	62 72 c5 48 7f ca    	vpermt2pd zmm9,zmm7,zmm2
  979b40:	62 71 fd 48 10 1d de 	vmovupd zmm11,ZMMWORD PTR [rip+0xffffffffff74d1de]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  979b47:	d1 74 ff 
  979b4a:	62 72 a5 48 7f c2    	vpermt2pd zmm8,zmm11,zmm2
  979b50:	62 f1 fd 48 28 d6    	vmovapd zmm2,zmm6
  979b56:	62 f2 c5 48 7f d5    	vpermt2pd zmm2,zmm7,zmm5
  979b5c:	62 f2 a5 48 7f f5    	vpermt2pd zmm6,zmm11,zmm5
  979b62:	62 71 b5 48 14 e2    	vunpcklpd zmm12,zmm9,zmm2
  979b68:	62 f1 b5 48 15 d2    	vunpckhpd zmm2,zmm9,zmm2
  979b6e:	62 71 bd 48 14 ce    	vunpcklpd zmm9,zmm8,zmm6
  979b74:	62 f1 bd 48 15 f6    	vunpckhpd zmm6,zmm8,zmm6
  979b7a:	62 72 f5 48 7f d4    	vpermt2pd zmm10,zmm1,zmm4
  979b80:	62 f2 f5 48 7f dc    	vpermt2pd zmm3,zmm1,zmm4
  979b86:	62 f2 f5 48 7f c4    	vpermt2pd zmm0,zmm1,zmm4
  979b8c:	62 d1 fd 48 28 ca    	vmovapd zmm1,zmm10
  979b92:	62 f2 c5 48 7f c8    	vpermt2pd zmm1,zmm7,zmm0
  979b98:	62 72 a5 48 7f d0    	vpermt2pd zmm10,zmm11,zmm0
  979b9e:	62 f2 e5 48 77 fd    	vpermi2pd zmm7,zmm3,zmm5
  979ba4:	62 f2 a5 48 7f dd    	vpermt2pd zmm3,zmm11,zmm5
  979baa:	62 f1 f5 48 14 c7    	vunpcklpd zmm0,zmm1,zmm7
  979bb0:	62 f1 f5 48 15 cf    	vunpckhpd zmm1,zmm1,zmm7
  979bb6:	62 f1 ad 48 14 e3    	vunpcklpd zmm4,zmm10,zmm3
  979bbc:	62 f1 ad 48 15 db    	vunpckhpd zmm3,zmm10,zmm3
  979bc2:	62 f1 fd 48 10 6a 02 	vmovupd zmm5,ZMMWORD PTR [rdx+0x80]
  979bc9:	62 f1 fd 48 10 7a 03 	vmovupd zmm7,ZMMWORD PTR [rdx+0xc0]
  979bd0:	62 71 fd 48 10 42 04 	vmovupd zmm8,ZMMWORD PTR [rdx+0x100]
  979bd7:	62 71 fd 48 10 52 05 	vmovupd zmm10,ZMMWORD PTR [rdx+0x140]
  979bde:	62 71 fd 48 10 5a 06 	vmovupd zmm11,ZMMWORD PTR [rdx+0x180]
  979be5:	62 71 fd 48 10 6a 07 	vmovupd zmm13,ZMMWORD PTR [rdx+0x1c0]
  979bec:	62 51 b5 48 59 f0    	vmulpd zmm14,zmm9,zmm8
  979bf2:	62 52 dd 48 bc f2    	vfnmadd231pd zmm14,zmm4,zmm10
  979bf8:	62 51 9d 48 58 fe    	vaddpd zmm15,zmm12,zmm14
  979bfe:	62 e1 ed 48 59 c5    	vmulpd zmm16,zmm2,zmm5
  979c04:	62 e2 f5 48 bc c7    	vfnmadd231pd zmm16,zmm1,zmm7
  979c0a:	62 c1 cd 48 59 cb    	vmulpd zmm17,zmm6,zmm11
  979c10:	62 c2 e5 48 bc cd    	vfnmadd231pd zmm17,zmm3,zmm13
  979c16:	62 a1 fd 40 58 d1    	vaddpd zmm18,zmm16,zmm17
  979c1c:	62 d1 dd 48 59 e0    	vmulpd zmm4,zmm4,zmm8
  979c22:	62 d2 b5 48 b8 e2    	vfmadd231pd zmm4,zmm9,zmm10
  979c28:	62 71 dd 48 58 c0    	vaddpd zmm8,zmm4,zmm0
  979c2e:	62 f1 f5 48 59 cd    	vmulpd zmm1,zmm1,zmm5
  979c34:	62 f2 ed 48 b8 cf    	vfmadd231pd zmm1,zmm2,zmm7
  979c3a:	62 d1 e5 48 59 d3    	vmulpd zmm2,zmm3,zmm11
  979c40:	62 d2 cd 48 b8 d5    	vfmadd231pd zmm2,zmm6,zmm13
  979c46:	62 f1 f5 48 58 da    	vaddpd zmm3,zmm1,zmm2
  979c4c:	62 d1 9d 48 5c ee    	vsubpd zmm5,zmm12,zmm14
  979c52:	62 f1 f5 48 5c ca    	vsubpd zmm1,zmm1,zmm2
  979c58:	62 f1 d5 48 58 d1    	vaddpd zmm2,zmm5,zmm1
  979c5e:	62 f1 fd 48 5c c4    	vsubpd zmm0,zmm0,zmm4
  979c64:	62 b1 f5 40 5c e0    	vsubpd zmm4,zmm17,zmm16
  979c6a:	62 f1 fd 48 58 f4    	vaddpd zmm6,zmm0,zmm4
  979c70:	62 b1 85 48 5c fa    	vsubpd zmm7,zmm15,zmm18
  979c76:	62 71 bd 48 5c cb    	vsubpd zmm9,zmm8,zmm3
  979c7c:	62 f1 d5 48 5c c9    	vsubpd zmm1,zmm5,zmm1
  979c82:	62 f1 fd 48 5c c4    	vsubpd zmm0,zmm0,zmm4
  979c88:	62 b1 85 48 58 e2    	vaddpd zmm4,zmm15,zmm18
  979c8e:	62 f1 bd 48 58 db    	vaddpd zmm3,zmm8,zmm3
  979c94:	62 f1 fd 48 28 2d e2 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff70dbe2]        # 87880 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x14d30>
  979c9b:	db 70 ff 
  979c9e:	62 f2 d5 48 7f e3    	vpermt2pd zmm4,zmm5,zmm3
  979ca4:	62 f3 7d 48 19 66 02 	vextractf32x4 XMMWORD PTR [rsi+0x20],zmm4,0x2
  979cab:	02 
  979cac:	c5 fd 11 26          	vmovupd YMMWORD PTR [rsi],ymm4
  979cb0:	62 f2 d5 48 7f d6    	vpermt2pd zmm2,zmm5,zmm6
  979cb6:	62 f3 7d 48 19 56 05 	vextractf32x4 XMMWORD PTR [rsi+0x50],zmm2,0x2
  979cbd:	02 
  979cbe:	c5 fd 11 56 30       	vmovupd YMMWORD PTR [rsi+0x30],ymm2
  979cc3:	62 d2 d5 48 7f f9    	vpermt2pd zmm7,zmm5,zmm9
  979cc9:	62 f3 7d 48 19 7e 08 	vextractf32x4 XMMWORD PTR [rsi+0x80],zmm7,0x2
  979cd0:	02 
  979cd1:	c5 fd 11 7e 60       	vmovupd YMMWORD PTR [rsi+0x60],ymm7
  979cd6:	62 f2 d5 48 7f c8    	vpermt2pd zmm1,zmm5,zmm0
  979cdc:	62 f3 7d 48 19 4e 0b 	vextractf32x4 XMMWORD PTR [rsi+0xb0],zmm1,0x2
  979ce3:	02 
  979ce4:	c5 fd 11 8e 90 00 00 	vmovupd YMMWORD PTR [rsi+0x90],ymm1
  979ceb:	00 
  979cec:	c5 f8 77             	vzeroupper
  979cef:	c3                   	ret
