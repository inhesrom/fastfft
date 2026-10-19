
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a62980 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a62980:	55                   	push   rbp
  a62981:	48 89 e5             	mov    rbp,rsp
  a62984:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a62988:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  a6298f:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  a62994:	48 8d 44 24 40       	lea    rax,[rsp+0x40]
  a62999:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  a6299e:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  a629a3:	c5 fb 10 47 10       	vmovsd xmm0,QWORD PTR [rdi+0x10]
  a629a8:	c5 f8 10 0f          	vmovups xmm1,XMMWORD PTR [rdi]
  a629ac:	c5 f8 10 67 18       	vmovups xmm4,XMMWORD PTR [rdi+0x18]
  a629b1:	c5 f8 10 77 30       	vmovups xmm6,XMMWORD PTR [rdi+0x30]
  a629b6:	c5 78 10 4f 48       	vmovups xmm9,XMMWORD PTR [rdi+0x48]
  a629bb:	62 f3 75 48 18 d0 01 	vinsertf32x4 zmm2,zmm1,xmm0,0x1
  a629c2:	62 f1 7c 48 28 1d f4 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff6312f4]        # 93cc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21170>
  a629c9:	12 63 ff 
  a629cc:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a629d0:	62 f1 7c 48 28 ea    	vmovaps zmm5,zmm2
  a629d6:	62 f2 65 48 7f e8    	vpermt2ps zmm5,zmm3,zmm0
  a629dc:	62 f1 7c 48 28 0d 1a 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff63131a]        # 93d00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x211b0>
  a629e3:	13 63 ff 
  a629e6:	62 f2 75 48 7f d0    	vpermt2ps zmm2,zmm1,zmm0
  a629ec:	c5 fb 10 7f 28       	vmovsd xmm7,QWORD PTR [rdi+0x28]
  a629f1:	62 f3 5d 48 18 ff 01 	vinsertf32x4 zmm7,zmm4,xmm7,0x1
  a629f8:	62 71 7c 48 28 c7    	vmovaps zmm8,zmm7
  a629fe:	62 72 65 48 7f c0    	vpermt2ps zmm8,zmm3,zmm0
  a62a04:	62 f2 75 48 7f f8    	vpermt2ps zmm7,zmm1,zmm0
  a62a0a:	c5 fb 10 67 40       	vmovsd xmm4,QWORD PTR [rdi+0x40]
  a62a0f:	62 73 4d 48 18 d4 01 	vinsertf32x4 zmm10,zmm6,xmm4,0x1
  a62a16:	62 d1 7c 48 28 f2    	vmovaps zmm6,zmm10
  a62a1c:	62 f2 65 48 7f f0    	vpermt2ps zmm6,zmm3,zmm0
  a62a22:	62 72 75 48 7f d0    	vpermt2ps zmm10,zmm1,zmm0
  a62a28:	c5 fb 10 67 58       	vmovsd xmm4,QWORD PTR [rdi+0x58]
  a62a2d:	62 73 35 48 18 cc 01 	vinsertf32x4 zmm9,zmm9,xmm4,0x1
  a62a34:	62 51 7c 48 28 d9    	vmovaps zmm11,zmm9
  a62a3a:	62 72 65 48 7f d8    	vpermt2ps zmm11,zmm3,zmm0
  a62a40:	62 72 75 48 7f c8    	vpermt2ps zmm9,zmm1,zmm0
  a62a46:	c5 fb 10 67 70       	vmovsd xmm4,QWORD PTR [rdi+0x70]
  a62a4b:	c5 78 10 67 60       	vmovups xmm12,XMMWORD PTR [rdi+0x60]
  a62a50:	62 73 1d 48 18 e4 01 	vinsertf32x4 zmm12,zmm12,xmm4,0x1
  a62a57:	62 51 7c 48 28 ec    	vmovaps zmm13,zmm12
  a62a5d:	62 72 65 48 7f e8    	vpermt2ps zmm13,zmm3,zmm0
  a62a63:	62 72 75 48 7f e0    	vpermt2ps zmm12,zmm1,zmm0
  a62a69:	c5 fb 10 a7 88 00 00 	vmovsd xmm4,QWORD PTR [rdi+0x88]
  a62a70:	00 
  a62a71:	c5 78 10 77 78       	vmovups xmm14,XMMWORD PTR [rdi+0x78]
  a62a76:	62 73 0d 48 18 f4 01 	vinsertf32x4 zmm14,zmm14,xmm4,0x1
  a62a7d:	62 51 7c 48 28 fe    	vmovaps zmm15,zmm14
  a62a83:	62 72 65 48 7f f8    	vpermt2ps zmm15,zmm3,zmm0
  a62a89:	62 72 75 48 7f f0    	vpermt2ps zmm14,zmm1,zmm0
  a62a8f:	c5 fb 10 a7 a0 00 00 	vmovsd xmm4,QWORD PTR [rdi+0xa0]
  a62a96:	00 
  a62a97:	62 e1 7c 08 10 47 09 	vmovups xmm16,XMMWORD PTR [rdi+0x90]
  a62a9e:	62 e3 7d 40 18 c4 01 	vinsertf32x4 zmm16,zmm16,xmm4,0x1
  a62aa5:	62 a1 7c 48 28 c8    	vmovaps zmm17,zmm16
  a62aab:	62 e2 65 48 7f c8    	vpermt2ps zmm17,zmm3,zmm0
  a62ab1:	62 e2 75 48 7f c0    	vpermt2ps zmm16,zmm1,zmm0
  a62ab7:	c5 fb 10 a7 b8 00 00 	vmovsd xmm4,QWORD PTR [rdi+0xb8]
  a62abe:	00 
  a62abf:	62 e1 7c 08 10 97 a8 	vmovups xmm18,XMMWORD PTR [rdi+0xa8]
  a62ac6:	00 00 00 
  a62ac9:	62 e3 6d 40 18 d4 01 	vinsertf32x4 zmm18,zmm18,xmm4,0x1
  a62ad0:	62 f2 6d 40 77 d8    	vpermi2ps zmm3,zmm18,zmm0
  a62ad6:	62 e2 75 48 7f d0    	vpermt2ps zmm18,zmm1,zmm0
  a62adc:	62 c1 54 48 58 dd    	vaddps zmm19,zmm5,zmm13
  a62ae2:	62 a1 4c 48 58 e1    	vaddps zmm20,zmm6,zmm17
  a62ae8:	62 a1 64 40 58 ec    	vaddps zmm21,zmm19,zmm20
  a62aee:	62 c1 3c 48 58 f7    	vaddps zmm22,zmm8,zmm15
  a62af4:	62 e1 24 48 58 fb    	vaddps zmm23,zmm11,zmm3
  a62afa:	62 21 4c 40 58 c7    	vaddps zmm24,zmm22,zmm23
  a62b00:	62 91 54 40 58 e0    	vaddps zmm4,zmm21,zmm24
  a62b06:	62 41 6c 48 58 cc    	vaddps zmm25,zmm2,zmm12
  a62b0c:	62 21 2c 48 58 d0    	vaddps zmm26,zmm10,zmm16
  a62b12:	62 01 34 40 58 da    	vaddps zmm27,zmm25,zmm26
  a62b18:	62 41 44 48 58 e6    	vaddps zmm28,zmm7,zmm14
  a62b1e:	62 21 34 48 58 ea    	vaddps zmm29,zmm9,zmm18
  a62b24:	62 01 1c 40 58 f5    	vaddps zmm30,zmm28,zmm29
  a62b2a:	62 91 24 40 58 ce    	vaddps zmm1,zmm27,zmm30
  a62b30:	62 d1 54 48 5c ed    	vsubps zmm5,zmm5,zmm13
  a62b36:	62 31 2c 48 5c d0    	vsubps zmm10,zmm10,zmm16
  a62b3c:	62 51 54 48 58 ea    	vaddps zmm13,zmm5,zmm10
  a62b42:	62 51 3c 48 5c c7    	vsubps zmm8,zmm8,zmm15
  a62b48:	62 d1 44 48 5c fe    	vsubps zmm7,zmm7,zmm14
  a62b4e:	62 71 3c 48 58 f7    	vaddps zmm14,zmm8,zmm7
  a62b54:	62 72 7d 48 18 3d 3e 	vbroadcastss zmm15,DWORD PTR [rip+0xffffffffff61283e]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a62b5b:	28 61 ff 
  a62b5e:	62 51 0c 48 59 f7    	vmulps zmm14,zmm14,zmm15
  a62b64:	62 31 34 48 5c ca    	vsubps zmm9,zmm9,zmm18
  a62b6a:	62 f1 24 48 5c db    	vsubps zmm3,zmm11,zmm3
  a62b70:	62 71 34 48 5c db    	vsubps zmm11,zmm9,zmm3
  a62b76:	62 51 24 48 59 df    	vmulps zmm11,zmm11,zmm15
  a62b7c:	62 c1 0c 48 58 c3    	vaddps zmm16,zmm14,zmm11
  a62b82:	62 a1 14 48 58 d0    	vaddps zmm18,zmm13,zmm16
  a62b88:	62 51 6c 48 5c e4    	vsubps zmm12,zmm2,zmm12
  a62b8e:	62 f1 74 40 5c f6    	vsubps zmm6,zmm17,zmm6
  a62b94:	62 c1 4c 48 58 cc    	vaddps zmm17,zmm6,zmm12
  a62b9a:	62 d1 44 48 5c d0    	vsubps zmm2,zmm7,zmm8
  a62ba0:	62 d1 6c 48 59 ff    	vmulps zmm7,zmm2,zmm15
  a62ba6:	62 d1 64 48 58 d1    	vaddps zmm2,zmm3,zmm9
  a62bac:	62 51 6c 48 59 c7    	vmulps zmm8,zmm2,zmm15
  a62bb2:	62 51 44 48 5c c8    	vsubps zmm9,zmm7,zmm8
  a62bb8:	62 d1 74 40 58 d1    	vaddps zmm2,zmm17,zmm9
  a62bbe:	62 31 64 40 5c fc    	vsubps zmm15,zmm19,zmm20
  a62bc4:	62 81 1c 40 5c dd    	vsubps zmm19,zmm28,zmm29
  a62bca:	62 a1 04 48 58 e3    	vaddps zmm20,zmm15,zmm19
  a62bd0:	62 01 34 40 5c ca    	vsubps zmm25,zmm25,zmm26
  a62bd6:	62 a1 44 40 5c f6    	vsubps zmm22,zmm23,zmm22
  a62bdc:	62 91 4c 40 58 d9    	vaddps zmm3,zmm22,zmm25
  a62be2:	62 51 54 48 5c d2    	vsubps zmm10,zmm5,zmm10
  a62be8:	62 d1 44 48 58 f8    	vaddps zmm7,zmm7,zmm8
  a62bee:	62 71 2c 48 58 c7    	vaddps zmm8,zmm10,zmm7
  a62bf4:	62 f1 1c 48 5c f6    	vsubps zmm6,zmm12,zmm6
  a62bfa:	62 51 24 48 5c de    	vsubps zmm11,zmm11,zmm14
  a62c00:	62 d1 4c 48 58 eb    	vaddps zmm5,zmm6,zmm11
  a62c06:	62 11 54 40 5c e0    	vsubps zmm12,zmm21,zmm24
  a62c0c:	62 11 24 40 5c f6    	vsubps zmm14,zmm27,zmm30
  a62c12:	62 31 14 48 5c e8    	vsubps zmm13,zmm13,zmm16
  a62c18:	62 51 74 40 5c c9    	vsubps zmm9,zmm17,zmm9
  a62c1e:	62 31 04 48 5c fb    	vsubps zmm15,zmm15,zmm19
  a62c24:	62 a1 34 40 5c c6    	vsubps zmm16,zmm25,zmm22
  a62c2a:	62 f1 2c 48 5c ff    	vsubps zmm7,zmm10,zmm7
  a62c30:	62 d1 4c 48 5c f3    	vsubps zmm6,zmm6,zmm11
  a62c36:	62 71 7c 48 28 15 40 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff664340]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a62c3d:	43 66 ff 
  a62c40:	62 f2 2d 48 7f e0    	vpermt2ps zmm4,zmm10,zmm0
  a62c46:	62 e2 2d 48 7f d0    	vpermt2ps zmm18,zmm10,zmm0
  a62c4c:	62 e2 2d 48 7f e0    	vpermt2ps zmm20,zmm10,zmm0
  a62c52:	62 72 2d 48 7f c0    	vpermt2ps zmm8,zmm10,zmm0
  a62c58:	62 72 2d 48 7f e0    	vpermt2ps zmm12,zmm10,zmm0
  a62c5e:	62 72 2d 48 7f e8    	vpermt2ps zmm13,zmm10,zmm0
  a62c64:	62 72 2d 48 7f f8    	vpermt2ps zmm15,zmm10,zmm0
  a62c6a:	62 f2 2d 48 7f f8    	vpermt2ps zmm7,zmm10,zmm0
  a62c70:	62 71 7c 48 28 1d 86 	vmovaps zmm11,ZMMWORD PTR [rip+0xffffffffff664286]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a62c77:	42 66 ff 
  a62c7a:	62 d2 25 48 7f e4    	vpermt2ps zmm4,zmm11,zmm12
  a62c80:	62 c2 25 48 7f d5    	vpermt2ps zmm18,zmm11,zmm13
  a62c86:	62 c2 25 48 7f e7    	vpermt2ps zmm20,zmm11,zmm15
  a62c8c:	62 72 25 48 7f c7    	vpermt2ps zmm8,zmm11,zmm7
  a62c92:	62 b1 dd 48 14 fc    	vunpcklpd zmm7,zmm4,zmm20
  a62c98:	62 31 dd 48 15 e4    	vunpckhpd zmm12,zmm4,zmm20
  a62c9e:	62 51 ed 40 14 e8    	vunpcklpd zmm13,zmm18,zmm8
  a62ca4:	62 51 ed 40 15 c0    	vunpckhpd zmm8,zmm18,zmm8
  a62caa:	62 71 7c 48 28 3d 4c 	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff66414c]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a62cb1:	41 66 ff 
  a62cb4:	62 f1 7c 48 28 e7    	vmovaps zmm4,zmm7
  a62cba:	62 d2 05 48 7f e5    	vpermt2ps zmm4,zmm15,zmm13
  a62cc0:	62 e1 7c 48 28 0d 76 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff664176]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a62cc7:	41 66 ff 
  a62cca:	62 d2 75 40 7f fd    	vpermt2ps zmm7,zmm17,zmm13
  a62cd0:	62 52 05 48 7f e0    	vpermt2ps zmm12,zmm15,zmm8
  a62cd6:	62 f2 2d 48 7f c8    	vpermt2ps zmm1,zmm10,zmm0
  a62cdc:	62 f2 2d 48 7f d0    	vpermt2ps zmm2,zmm10,zmm0
  a62ce2:	62 f2 2d 48 7f d8    	vpermt2ps zmm3,zmm10,zmm0
  a62ce8:	62 f2 2d 48 7f e8    	vpermt2ps zmm5,zmm10,zmm0
  a62cee:	62 72 2d 48 7f f0    	vpermt2ps zmm14,zmm10,zmm0
  a62cf4:	62 72 2d 48 7f c8    	vpermt2ps zmm9,zmm10,zmm0
  a62cfa:	62 e2 2d 48 7f c0    	vpermt2ps zmm16,zmm10,zmm0
  a62d00:	62 f2 2d 48 7f f0    	vpermt2ps zmm6,zmm10,zmm0
  a62d06:	62 d2 25 48 7f ce    	vpermt2ps zmm1,zmm11,zmm14
  a62d0c:	62 d2 25 48 7f d1    	vpermt2ps zmm2,zmm11,zmm9
  a62d12:	62 b2 25 48 7f d8    	vpermt2ps zmm3,zmm11,zmm16
  a62d18:	62 f2 25 48 7f ee    	vpermt2ps zmm5,zmm11,zmm6
  a62d1e:	62 f1 f5 48 14 c3    	vunpcklpd zmm0,zmm1,zmm3
  a62d24:	62 f1 f5 48 15 cb    	vunpckhpd zmm1,zmm1,zmm3
  a62d2a:	62 f1 ed 48 14 dd    	vunpcklpd zmm3,zmm2,zmm5
  a62d30:	62 f1 ed 48 15 d5    	vunpckhpd zmm2,zmm2,zmm5
  a62d36:	62 f1 7c 48 28 e8    	vmovaps zmm5,zmm0
  a62d3c:	62 f2 05 48 7f eb    	vpermt2ps zmm5,zmm15,zmm3
  a62d42:	62 f2 75 40 7f c3    	vpermt2ps zmm0,zmm17,zmm3
  a62d48:	62 f2 05 48 7f ca    	vpermt2ps zmm1,zmm15,zmm2
  a62d4e:	62 f1 7c 48 10 52 02 	vmovups zmm2,ZMMWORD PTR [rdx+0x80]
  a62d55:	62 f1 7c 48 10 5a 03 	vmovups zmm3,ZMMWORD PTR [rdx+0xc0]
  a62d5c:	62 f1 7c 48 10 72 04 	vmovups zmm6,ZMMWORD PTR [rdx+0x100]
  a62d63:	62 71 7c 48 10 42 05 	vmovups zmm8,ZMMWORD PTR [rdx+0x140]
  a62d6a:	62 71 44 48 59 ca    	vmulps zmm9,zmm7,zmm2
  a62d70:	62 72 7d 48 bc cb    	vfnmadd231ps zmm9,zmm0,zmm3
  a62d76:	62 71 1c 48 59 d6    	vmulps zmm10,zmm12,zmm6
  a62d7c:	62 52 75 48 bc d0    	vfnmadd231ps zmm10,zmm1,zmm8
  a62d82:	62 51 34 48 58 da    	vaddps zmm11,zmm9,zmm10
  a62d88:	62 f1 7c 48 59 c2    	vmulps zmm0,zmm0,zmm2
  a62d8e:	62 f2 65 48 b8 c7    	vfmadd231ps zmm0,zmm3,zmm7
  a62d94:	62 f1 74 48 59 ce    	vmulps zmm1,zmm1,zmm6
  a62d9a:	62 d2 3d 48 b8 cc    	vfmadd231ps zmm1,zmm8,zmm12
  a62da0:	62 f1 7c 48 58 d1    	vaddps zmm2,zmm0,zmm1
  a62da6:	62 f2 7d 48 18 1d b0 	vbroadcastss zmm3,DWORD PTR [rip+0xffffffffff6126b0]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a62dad:	26 61 ff 
  a62db0:	62 f1 7c 48 28 f3    	vmovaps zmm6,zmm3
  a62db6:	62 f2 25 48 ac f4    	vfnmadd213ps zmm6,zmm11,zmm4
  a62dbc:	62 f1 7c 48 5c c1    	vsubps zmm0,zmm0,zmm1
  a62dc2:	62 f2 7d 48 18 0d 08 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff612508]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a62dc9:	25 61 ff 
  a62dcc:	62 f1 7c 48 59 c1    	vmulps zmm0,zmm0,zmm1
  a62dd2:	62 f1 4c 48 58 f8    	vaddps zmm7,zmm6,zmm0
  a62dd8:	62 f2 6d 48 ac dd    	vfnmadd213ps zmm3,zmm2,zmm5
  a62dde:	62 51 34 48 5c c2    	vsubps zmm8,zmm9,zmm10
  a62de4:	62 f1 3c 48 59 c9    	vmulps zmm1,zmm8,zmm1
  a62dea:	62 71 64 48 5c c1    	vsubps zmm8,zmm3,zmm1
  a62df0:	62 f1 4c 48 5c c0    	vsubps zmm0,zmm6,zmm0
  a62df6:	62 f1 64 48 58 c9    	vaddps zmm1,zmm3,zmm1
  a62dfc:	62 d1 5c 48 58 db    	vaddps zmm3,zmm4,zmm11
  a62e02:	62 f1 54 48 58 d2    	vaddps zmm2,zmm5,zmm2
  a62e08:	62 f1 7c 48 28 25 2e 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff630f2e]        # 93d40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x211f0>
  a62e0f:	0f 63 ff 
  a62e12:	62 f2 5d 48 7f da    	vpermt2ps zmm3,zmm4,zmm2
  a62e18:	62 f1 7c 48 11 1e    	vmovups ZMMWORD PTR [rsi],zmm3
  a62e1e:	62 d2 5d 48 7f f8    	vpermt2ps zmm7,zmm4,zmm8
  a62e24:	62 f1 7c 48 11 7e 01 	vmovups ZMMWORD PTR [rsi+0x40],zmm7
  a62e2b:	62 f2 5d 48 7f c1    	vpermt2ps zmm0,zmm4,zmm1
  a62e31:	62 f1 7c 48 11 46 02 	vmovups ZMMWORD PTR [rsi+0x80],zmm0
  a62e38:	48 89 ec             	mov    rsp,rbp
  a62e3b:	5d                   	pop    rbp
  a62e3c:	c5 f8 77             	vzeroupper
  a62e3f:	c3                   	ret
