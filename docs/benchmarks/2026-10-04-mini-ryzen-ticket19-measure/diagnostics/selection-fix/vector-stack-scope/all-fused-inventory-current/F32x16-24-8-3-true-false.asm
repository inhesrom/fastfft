
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a5fc80 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a5fc80:	55                   	push   rbp
  a5fc81:	48 89 e5             	mov    rbp,rsp
  a5fc84:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a5fc88:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  a5fc8f:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  a5fc94:	48 8d 44 24 40       	lea    rax,[rsp+0x40]
  a5fc99:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  a5fc9e:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  a5fca3:	c5 fb 10 47 10       	vmovsd xmm0,QWORD PTR [rdi+0x10]
  a5fca8:	c5 f8 10 0f          	vmovups xmm1,XMMWORD PTR [rdi]
  a5fcac:	c5 f8 10 67 18       	vmovups xmm4,XMMWORD PTR [rdi+0x18]
  a5fcb1:	c5 f8 10 77 30       	vmovups xmm6,XMMWORD PTR [rdi+0x30]
  a5fcb6:	c5 78 10 4f 48       	vmovups xmm9,XMMWORD PTR [rdi+0x48]
  a5fcbb:	62 f3 75 48 18 e8 01 	vinsertf32x4 zmm5,zmm1,xmm0,0x1
  a5fcc2:	62 f1 7c 48 28 1d 34 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff633b34]        # 93800 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20cb0>
  a5fcc9:	3b 63 ff 
  a5fccc:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a5fcd0:	62 f1 7c 48 28 d5    	vmovaps zmm2,zmm5
  a5fcd6:	62 f2 65 48 7f d0    	vpermt2ps zmm2,zmm3,zmm0
  a5fcdc:	62 f1 7c 48 28 0d 5a 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff633b5a]        # 93840 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20cf0>
  a5fce3:	3b 63 ff 
  a5fce6:	62 f2 75 48 7f e8    	vpermt2ps zmm5,zmm1,zmm0
  a5fcec:	c5 fb 10 7f 28       	vmovsd xmm7,QWORD PTR [rdi+0x28]
  a5fcf1:	62 73 5d 48 18 c7 01 	vinsertf32x4 zmm8,zmm4,xmm7,0x1
  a5fcf8:	62 d1 7c 48 28 f8    	vmovaps zmm7,zmm8
  a5fcfe:	62 f2 65 48 7f f8    	vpermt2ps zmm7,zmm3,zmm0
  a5fd04:	62 72 75 48 7f c0    	vpermt2ps zmm8,zmm1,zmm0
  a5fd0a:	c5 fb 10 67 40       	vmovsd xmm4,QWORD PTR [rdi+0x40]
  a5fd0f:	62 f3 4d 48 18 f4 01 	vinsertf32x4 zmm6,zmm6,xmm4,0x1
  a5fd16:	62 71 7c 48 28 d6    	vmovaps zmm10,zmm6
  a5fd1c:	62 72 65 48 7f d0    	vpermt2ps zmm10,zmm3,zmm0
  a5fd22:	62 f2 75 48 7f f0    	vpermt2ps zmm6,zmm1,zmm0
  a5fd28:	c5 fb 10 67 58       	vmovsd xmm4,QWORD PTR [rdi+0x58]
  a5fd2d:	62 73 35 48 18 cc 01 	vinsertf32x4 zmm9,zmm9,xmm4,0x1
  a5fd34:	62 51 7c 48 28 d9    	vmovaps zmm11,zmm9
  a5fd3a:	62 72 65 48 7f d8    	vpermt2ps zmm11,zmm3,zmm0
  a5fd40:	62 72 75 48 7f c8    	vpermt2ps zmm9,zmm1,zmm0
  a5fd46:	c5 fb 10 67 70       	vmovsd xmm4,QWORD PTR [rdi+0x70]
  a5fd4b:	c5 78 10 67 60       	vmovups xmm12,XMMWORD PTR [rdi+0x60]
  a5fd50:	62 73 1d 48 18 e4 01 	vinsertf32x4 zmm12,zmm12,xmm4,0x1
  a5fd57:	62 51 7c 48 28 ec    	vmovaps zmm13,zmm12
  a5fd5d:	62 72 65 48 7f e8    	vpermt2ps zmm13,zmm3,zmm0
  a5fd63:	62 72 75 48 7f e0    	vpermt2ps zmm12,zmm1,zmm0
  a5fd69:	c5 fb 10 a7 88 00 00 	vmovsd xmm4,QWORD PTR [rdi+0x88]
  a5fd70:	00 
  a5fd71:	c5 78 10 77 78       	vmovups xmm14,XMMWORD PTR [rdi+0x78]
  a5fd76:	62 73 0d 48 18 f4 01 	vinsertf32x4 zmm14,zmm14,xmm4,0x1
  a5fd7d:	62 51 7c 48 28 fe    	vmovaps zmm15,zmm14
  a5fd83:	62 72 65 48 7f f8    	vpermt2ps zmm15,zmm3,zmm0
  a5fd89:	62 72 75 48 7f f0    	vpermt2ps zmm14,zmm1,zmm0
  a5fd8f:	c5 fb 10 a7 a0 00 00 	vmovsd xmm4,QWORD PTR [rdi+0xa0]
  a5fd96:	00 
  a5fd97:	62 e1 7c 08 10 47 09 	vmovups xmm16,XMMWORD PTR [rdi+0x90]
  a5fd9e:	62 e3 7d 40 18 c4 01 	vinsertf32x4 zmm16,zmm16,xmm4,0x1
  a5fda5:	62 a1 7c 48 28 c8    	vmovaps zmm17,zmm16
  a5fdab:	62 e2 65 48 7f c8    	vpermt2ps zmm17,zmm3,zmm0
  a5fdb1:	62 e2 75 48 7f c0    	vpermt2ps zmm16,zmm1,zmm0
  a5fdb7:	c5 fb 10 a7 b8 00 00 	vmovsd xmm4,QWORD PTR [rdi+0xb8]
  a5fdbe:	00 
  a5fdbf:	62 e1 7c 08 10 97 a8 	vmovups xmm18,XMMWORD PTR [rdi+0xa8]
  a5fdc6:	00 00 00 
  a5fdc9:	62 e3 6d 40 18 d4 01 	vinsertf32x4 zmm18,zmm18,xmm4,0x1
  a5fdd0:	62 f2 6d 40 77 d8    	vpermi2ps zmm3,zmm18,zmm0
  a5fdd6:	62 e2 75 48 7f d0    	vpermt2ps zmm18,zmm1,zmm0
  a5fddc:	62 c1 54 48 58 dc    	vaddps zmm19,zmm5,zmm12
  a5fde2:	62 a1 4c 48 58 e0    	vaddps zmm20,zmm6,zmm16
  a5fde8:	62 a1 64 40 58 ec    	vaddps zmm21,zmm19,zmm20
  a5fdee:	62 c1 3c 48 58 f6    	vaddps zmm22,zmm8,zmm14
  a5fdf4:	62 a1 34 48 58 fa    	vaddps zmm23,zmm9,zmm18
  a5fdfa:	62 21 4c 40 58 c7    	vaddps zmm24,zmm22,zmm23
  a5fe00:	62 91 54 40 58 e0    	vaddps zmm4,zmm21,zmm24
  a5fe06:	62 41 6c 48 58 cd    	vaddps zmm25,zmm2,zmm13
  a5fe0c:	62 21 2c 48 58 d1    	vaddps zmm26,zmm10,zmm17
  a5fe12:	62 01 34 40 58 da    	vaddps zmm27,zmm25,zmm26
  a5fe18:	62 41 44 48 58 e7    	vaddps zmm28,zmm7,zmm15
  a5fe1e:	62 61 24 48 58 eb    	vaddps zmm29,zmm11,zmm3
  a5fe24:	62 01 1c 40 58 f5    	vaddps zmm30,zmm28,zmm29
  a5fe2a:	62 91 24 40 58 ce    	vaddps zmm1,zmm27,zmm30
  a5fe30:	62 d1 54 48 5c ec    	vsubps zmm5,zmm5,zmm12
  a5fe36:	62 31 2c 48 5c d1    	vsubps zmm10,zmm10,zmm17
  a5fe3c:	62 51 54 48 58 e2    	vaddps zmm12,zmm5,zmm10
  a5fe42:	62 51 3c 48 5c c6    	vsubps zmm8,zmm8,zmm14
  a5fe48:	62 d1 44 48 5c ff    	vsubps zmm7,zmm7,zmm15
  a5fe4e:	62 71 3c 48 58 f7    	vaddps zmm14,zmm8,zmm7
  a5fe54:	62 72 7d 48 18 3d 3e 	vbroadcastss zmm15,DWORD PTR [rip+0xffffffffff61553e]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a5fe5b:	55 61 ff 
  a5fe5e:	62 51 0c 48 59 f7    	vmulps zmm14,zmm14,zmm15
  a5fe64:	62 f1 24 48 5c db    	vsubps zmm3,zmm11,zmm3
  a5fe6a:	62 31 34 48 5c ca    	vsubps zmm9,zmm9,zmm18
  a5fe70:	62 51 64 48 5c d9    	vsubps zmm11,zmm3,zmm9
  a5fe76:	62 51 24 48 59 df    	vmulps zmm11,zmm11,zmm15
  a5fe7c:	62 c1 0c 48 58 cb    	vaddps zmm17,zmm14,zmm11
  a5fe82:	62 a1 1c 48 58 d1    	vaddps zmm18,zmm12,zmm17
  a5fe88:	62 51 6c 48 5c ed    	vsubps zmm13,zmm2,zmm13
  a5fe8e:	62 f1 7c 40 5c f6    	vsubps zmm6,zmm16,zmm6
  a5fe94:	62 c1 4c 48 58 c5    	vaddps zmm16,zmm6,zmm13
  a5fe9a:	62 d1 44 48 5c d0    	vsubps zmm2,zmm7,zmm8
  a5fea0:	62 d1 6c 48 59 ff    	vmulps zmm7,zmm2,zmm15
  a5fea6:	62 f1 34 48 58 d3    	vaddps zmm2,zmm9,zmm3
  a5feac:	62 51 6c 48 59 c7    	vmulps zmm8,zmm2,zmm15
  a5feb2:	62 51 44 48 5c c8    	vsubps zmm9,zmm7,zmm8
  a5feb8:	62 d1 7c 40 58 d1    	vaddps zmm2,zmm16,zmm9
  a5febe:	62 31 64 40 5c fc    	vsubps zmm15,zmm19,zmm20
  a5fec4:	62 81 1c 40 5c dd    	vsubps zmm19,zmm28,zmm29
  a5feca:	62 a1 04 48 58 e3    	vaddps zmm20,zmm15,zmm19
  a5fed0:	62 01 34 40 5c ca    	vsubps zmm25,zmm25,zmm26
  a5fed6:	62 a1 44 40 5c f6    	vsubps zmm22,zmm23,zmm22
  a5fedc:	62 91 4c 40 58 d9    	vaddps zmm3,zmm22,zmm25
  a5fee2:	62 51 54 48 5c d2    	vsubps zmm10,zmm5,zmm10
  a5fee8:	62 d1 44 48 58 f8    	vaddps zmm7,zmm7,zmm8
  a5feee:	62 71 2c 48 58 c7    	vaddps zmm8,zmm10,zmm7
  a5fef4:	62 f1 14 48 5c f6    	vsubps zmm6,zmm13,zmm6
  a5fefa:	62 51 24 48 5c de    	vsubps zmm11,zmm11,zmm14
  a5ff00:	62 d1 4c 48 58 eb    	vaddps zmm5,zmm6,zmm11
  a5ff06:	62 11 54 40 5c e8    	vsubps zmm13,zmm21,zmm24
  a5ff0c:	62 11 24 40 5c f6    	vsubps zmm14,zmm27,zmm30
  a5ff12:	62 31 1c 48 5c e1    	vsubps zmm12,zmm12,zmm17
  a5ff18:	62 51 7c 40 5c c9    	vsubps zmm9,zmm16,zmm9
  a5ff1e:	62 31 04 48 5c fb    	vsubps zmm15,zmm15,zmm19
  a5ff24:	62 a1 34 40 5c c6    	vsubps zmm16,zmm25,zmm22
  a5ff2a:	62 f1 2c 48 5c ff    	vsubps zmm7,zmm10,zmm7
  a5ff30:	62 d1 4c 48 5c f3    	vsubps zmm6,zmm6,zmm11
  a5ff36:	62 71 7c 48 28 15 40 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff667040]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a5ff3d:	70 66 ff 
  a5ff40:	62 f2 2d 48 7f e0    	vpermt2ps zmm4,zmm10,zmm0
  a5ff46:	62 e2 2d 48 7f d0    	vpermt2ps zmm18,zmm10,zmm0
  a5ff4c:	62 e2 2d 48 7f e0    	vpermt2ps zmm20,zmm10,zmm0
  a5ff52:	62 72 2d 48 7f c0    	vpermt2ps zmm8,zmm10,zmm0
  a5ff58:	62 72 2d 48 7f e8    	vpermt2ps zmm13,zmm10,zmm0
  a5ff5e:	62 72 2d 48 7f e0    	vpermt2ps zmm12,zmm10,zmm0
  a5ff64:	62 72 2d 48 7f f8    	vpermt2ps zmm15,zmm10,zmm0
  a5ff6a:	62 f2 2d 48 7f f8    	vpermt2ps zmm7,zmm10,zmm0
  a5ff70:	62 71 7c 48 28 1d 86 	vmovaps zmm11,ZMMWORD PTR [rip+0xffffffffff666f86]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a5ff77:	6f 66 ff 
  a5ff7a:	62 d2 25 48 7f e5    	vpermt2ps zmm4,zmm11,zmm13
  a5ff80:	62 c2 25 48 7f d4    	vpermt2ps zmm18,zmm11,zmm12
  a5ff86:	62 c2 25 48 7f e7    	vpermt2ps zmm20,zmm11,zmm15
  a5ff8c:	62 72 25 48 7f c7    	vpermt2ps zmm8,zmm11,zmm7
  a5ff92:	62 b1 dd 48 14 fc    	vunpcklpd zmm7,zmm4,zmm20
  a5ff98:	62 31 dd 48 15 e4    	vunpckhpd zmm12,zmm4,zmm20
  a5ff9e:	62 51 ed 40 14 e8    	vunpcklpd zmm13,zmm18,zmm8
  a5ffa4:	62 51 ed 40 15 c0    	vunpckhpd zmm8,zmm18,zmm8
  a5ffaa:	62 71 7c 48 28 3d 4c 	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff666e4c]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a5ffb1:	6e 66 ff 
  a5ffb4:	62 f1 7c 48 28 e7    	vmovaps zmm4,zmm7
  a5ffba:	62 d2 05 48 7f e5    	vpermt2ps zmm4,zmm15,zmm13
  a5ffc0:	62 e1 7c 48 28 0d 76 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff666e76]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a5ffc7:	6e 66 ff 
  a5ffca:	62 d2 75 40 7f fd    	vpermt2ps zmm7,zmm17,zmm13
  a5ffd0:	62 52 05 48 7f e0    	vpermt2ps zmm12,zmm15,zmm8
  a5ffd6:	62 f2 2d 48 7f c8    	vpermt2ps zmm1,zmm10,zmm0
  a5ffdc:	62 f2 2d 48 7f d0    	vpermt2ps zmm2,zmm10,zmm0
  a5ffe2:	62 f2 2d 48 7f d8    	vpermt2ps zmm3,zmm10,zmm0
  a5ffe8:	62 f2 2d 48 7f e8    	vpermt2ps zmm5,zmm10,zmm0
  a5ffee:	62 72 2d 48 7f f0    	vpermt2ps zmm14,zmm10,zmm0
  a5fff4:	62 72 2d 48 7f c8    	vpermt2ps zmm9,zmm10,zmm0
  a5fffa:	62 e2 2d 48 7f c0    	vpermt2ps zmm16,zmm10,zmm0
  a60000:	62 f2 2d 48 7f f0    	vpermt2ps zmm6,zmm10,zmm0
  a60006:	62 d2 25 48 7f ce    	vpermt2ps zmm1,zmm11,zmm14
  a6000c:	62 d2 25 48 7f d1    	vpermt2ps zmm2,zmm11,zmm9
  a60012:	62 b2 25 48 7f d8    	vpermt2ps zmm3,zmm11,zmm16
  a60018:	62 f2 25 48 7f ee    	vpermt2ps zmm5,zmm11,zmm6
  a6001e:	62 f1 f5 48 14 c3    	vunpcklpd zmm0,zmm1,zmm3
  a60024:	62 f1 f5 48 15 cb    	vunpckhpd zmm1,zmm1,zmm3
  a6002a:	62 f1 ed 48 14 dd    	vunpcklpd zmm3,zmm2,zmm5
  a60030:	62 f1 ed 48 15 d5    	vunpckhpd zmm2,zmm2,zmm5
  a60036:	62 f1 7c 48 28 e8    	vmovaps zmm5,zmm0
  a6003c:	62 f2 05 48 7f eb    	vpermt2ps zmm5,zmm15,zmm3
  a60042:	62 f2 75 40 7f c3    	vpermt2ps zmm0,zmm17,zmm3
  a60048:	62 f2 05 48 7f ca    	vpermt2ps zmm1,zmm15,zmm2
  a6004e:	62 f1 7c 48 10 52 02 	vmovups zmm2,ZMMWORD PTR [rdx+0x80]
  a60055:	62 f1 7c 48 10 5a 03 	vmovups zmm3,ZMMWORD PTR [rdx+0xc0]
  a6005c:	62 f1 7c 48 10 72 04 	vmovups zmm6,ZMMWORD PTR [rdx+0x100]
  a60063:	62 71 7c 48 10 42 05 	vmovups zmm8,ZMMWORD PTR [rdx+0x140]
  a6006a:	62 71 44 48 59 ca    	vmulps zmm9,zmm7,zmm2
  a60070:	62 72 7d 48 bc cb    	vfnmadd231ps zmm9,zmm0,zmm3
  a60076:	62 71 1c 48 59 d6    	vmulps zmm10,zmm12,zmm6
  a6007c:	62 52 75 48 bc d0    	vfnmadd231ps zmm10,zmm1,zmm8
  a60082:	62 51 34 48 58 da    	vaddps zmm11,zmm9,zmm10
  a60088:	62 f1 7c 48 59 c2    	vmulps zmm0,zmm0,zmm2
  a6008e:	62 f2 65 48 b8 c7    	vfmadd231ps zmm0,zmm3,zmm7
  a60094:	62 f1 74 48 59 ce    	vmulps zmm1,zmm1,zmm6
  a6009a:	62 d2 3d 48 b8 cc    	vfmadd231ps zmm1,zmm8,zmm12
  a600a0:	62 f1 7c 48 58 d1    	vaddps zmm2,zmm0,zmm1
  a600a6:	62 f2 7d 48 18 1d b0 	vbroadcastss zmm3,DWORD PTR [rip+0xffffffffff6153b0]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a600ad:	53 61 ff 
  a600b0:	62 f1 7c 48 28 f3    	vmovaps zmm6,zmm3
  a600b6:	62 f2 25 48 ac f4    	vfnmadd213ps zmm6,zmm11,zmm4
  a600bc:	62 f1 7c 48 5c c1    	vsubps zmm0,zmm0,zmm1
  a600c2:	62 f2 7d 48 18 0d 08 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff615208]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a600c9:	52 61 ff 
  a600cc:	62 f1 7c 48 59 c1    	vmulps zmm0,zmm0,zmm1
  a600d2:	62 f1 4c 48 58 f8    	vaddps zmm7,zmm6,zmm0
  a600d8:	62 f2 6d 48 ac dd    	vfnmadd213ps zmm3,zmm2,zmm5
  a600de:	62 51 34 48 5c c2    	vsubps zmm8,zmm9,zmm10
  a600e4:	62 f1 3c 48 59 c9    	vmulps zmm1,zmm8,zmm1
  a600ea:	62 71 64 48 5c c1    	vsubps zmm8,zmm3,zmm1
  a600f0:	62 f1 4c 48 5c c0    	vsubps zmm0,zmm6,zmm0
  a600f6:	62 f1 64 48 58 c9    	vaddps zmm1,zmm3,zmm1
  a600fc:	62 f1 54 48 58 d2    	vaddps zmm2,zmm5,zmm2
  a60102:	62 d1 5c 48 58 db    	vaddps zmm3,zmm4,zmm11
  a60108:	62 f1 7c 48 28 25 6e 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff63376e]        # 93880 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d30>
  a6010f:	37 63 ff 
  a60112:	62 f2 5d 48 7f d3    	vpermt2ps zmm2,zmm4,zmm3
  a60118:	62 f1 7c 48 11 16    	vmovups ZMMWORD PTR [rsi],zmm2
  a6011e:	62 72 5d 48 7f c7    	vpermt2ps zmm8,zmm4,zmm7
  a60124:	62 71 7c 48 11 46 01 	vmovups ZMMWORD PTR [rsi+0x40],zmm8
  a6012b:	62 f2 5d 48 7f c8    	vpermt2ps zmm1,zmm4,zmm0
  a60131:	62 f1 7c 48 11 4e 02 	vmovups ZMMWORD PTR [rsi+0x80],zmm1
  a60138:	48 89 ec             	mov    rsp,rbp
  a6013b:	5d                   	pop    rbp
  a6013c:	c5 f8 77             	vzeroupper
  a6013f:	c3                   	ret
