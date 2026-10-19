
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a09dc0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a09dc0:	55                   	push   rbp
  a09dc1:	48 89 e5             	mov    rbp,rsp
  a09dc4:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a09dc8:	48 81 ec 40 02 00 00 	sub    rsp,0x240
  a09dcf:	c6 84 24 c0 01 00 00 	mov    BYTE PTR [rsp+0x1c0],0x0
  a09dd6:	00 
  a09dd7:	48 8d 84 24 c0 01 00 	lea    rax,[rsp+0x1c0]
  a09dde:	00 
  a09ddf:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  a09de4:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  a09de9:	62 f1 7c 48 10 17    	vmovups zmm2,ZMMWORD PTR [rdi]
  a09def:	c5 fc 10 47 40       	vmovups ymm0,YMMWORD PTR [rdi+0x40]
  a09df4:	62 f1 7c 48 28 25 42 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff684a42]        # 8e840 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1bcf0>
  a09dfb:	4a 68 ff 
  a09dfe:	62 71 7c 48 28 c2    	vmovaps zmm8,zmm2
  a09e04:	62 72 5d 48 7f c0    	vpermt2ps zmm8,zmm4,zmm0
  a09e0a:	62 f1 7c 48 28 0d 6c 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff684a6c]        # 8e880 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1bd30>
  a09e11:	4a 68 ff 
  a09e14:	62 f2 75 48 7f d0    	vpermt2ps zmm2,zmm1,zmm0
  a09e1a:	62 f1 7c 48 10 9f 60 	vmovups zmm3,ZMMWORD PTR [rdi+0x60]
  a09e21:	00 00 00 
  a09e24:	c5 fc 10 87 a0 00 00 	vmovups ymm0,YMMWORD PTR [rdi+0xa0]
  a09e2b:	00 
  a09e2c:	62 71 7c 48 28 e3    	vmovaps zmm12,zmm3
  a09e32:	62 72 5d 48 7f e0    	vpermt2ps zmm12,zmm4,zmm0
  a09e38:	62 f2 75 48 7f d8    	vpermt2ps zmm3,zmm1,zmm0
  a09e3e:	62 e1 7c 48 10 47 03 	vmovups zmm16,ZMMWORD PTR [rdi+0xc0]
  a09e45:	c5 fc 10 87 00 01 00 	vmovups ymm0,YMMWORD PTR [rdi+0x100]
  a09e4c:	00 
  a09e4d:	62 b1 7c 48 28 f0    	vmovaps zmm6,zmm16
  a09e53:	62 f2 5d 48 7f f0    	vpermt2ps zmm6,zmm4,zmm0
  a09e59:	62 e2 75 48 7f c0    	vpermt2ps zmm16,zmm1,zmm0
  a09e5f:	62 e1 7c 48 10 97 20 	vmovups zmm18,ZMMWORD PTR [rdi+0x120]
  a09e66:	01 00 00 
  a09e69:	c5 fc 10 87 60 01 00 	vmovups ymm0,YMMWORD PTR [rdi+0x160]
  a09e70:	00 
  a09e71:	62 31 7c 48 28 ca    	vmovaps zmm9,zmm18
  a09e77:	62 72 5d 48 7f c8    	vpermt2ps zmm9,zmm4,zmm0
  a09e7d:	62 e2 75 48 7f d0    	vpermt2ps zmm18,zmm1,zmm0
  a09e83:	62 e1 7c 48 10 77 06 	vmovups zmm22,ZMMWORD PTR [rdi+0x180]
  a09e8a:	c5 fc 10 87 c0 01 00 	vmovups ymm0,YMMWORD PTR [rdi+0x1c0]
  a09e91:	00 
  a09e92:	62 31 7c 48 28 d6    	vmovaps zmm10,zmm22
  a09e98:	62 72 5d 48 7f d0    	vpermt2ps zmm10,zmm4,zmm0
  a09e9e:	62 e2 75 48 7f f0    	vpermt2ps zmm22,zmm1,zmm0
  a09ea4:	62 f1 7c 48 10 af e0 	vmovups zmm5,ZMMWORD PTR [rdi+0x1e0]
  a09eab:	01 00 00 
  a09eae:	c5 fc 10 87 20 02 00 	vmovups ymm0,YMMWORD PTR [rdi+0x220]
  a09eb5:	00 
  a09eb6:	62 f1 7c 48 28 fd    	vmovaps zmm7,zmm5
  a09ebc:	62 f2 5d 48 7f f8    	vpermt2ps zmm7,zmm4,zmm0
  a09ec2:	62 f2 75 48 7f e8    	vpermt2ps zmm5,zmm1,zmm0
  a09ec8:	62 f1 7c 48 10 47 09 	vmovups zmm0,ZMMWORD PTR [rdi+0x240]
  a09ecf:	c5 7c 10 af 80 02 00 	vmovups ymm13,YMMWORD PTR [rdi+0x280]
  a09ed6:	00 
  a09ed7:	62 71 7c 48 28 d8    	vmovaps zmm11,zmm0
  a09edd:	62 52 5d 48 7f dd    	vpermt2ps zmm11,zmm4,zmm13
  a09ee3:	62 d2 75 48 7f c5    	vpermt2ps zmm0,zmm1,zmm13
  a09ee9:	62 61 7c 48 10 87 a0 	vmovups zmm24,ZMMWORD PTR [rdi+0x2a0]
  a09ef0:	02 00 00 
  a09ef3:	c5 7c 10 b7 e0 02 00 	vmovups ymm14,YMMWORD PTR [rdi+0x2e0]
  a09efa:	00 
  a09efb:	62 11 7c 48 28 e8    	vmovaps zmm13,zmm24
  a09f01:	62 52 5d 48 7f ee    	vpermt2ps zmm13,zmm4,zmm14
  a09f07:	62 42 75 48 7f c6    	vpermt2ps zmm24,zmm1,zmm14
  a09f0d:	62 e1 7c 48 10 67 0c 	vmovups zmm20,ZMMWORD PTR [rdi+0x300]
  a09f14:	c5 7c 10 b7 40 03 00 	vmovups ymm14,YMMWORD PTR [rdi+0x340]
  a09f1b:	00 
  a09f1c:	62 a1 7c 48 28 cc    	vmovaps zmm17,zmm20
  a09f22:	62 c2 5d 48 7f ce    	vpermt2ps zmm17,zmm4,zmm14
  a09f28:	62 c2 75 48 7f e6    	vpermt2ps zmm20,zmm1,zmm14
  a09f2e:	62 61 7c 48 10 8f 60 	vmovups zmm25,ZMMWORD PTR [rdi+0x360]
  a09f35:	03 00 00 
  a09f38:	c5 7c 10 b7 a0 03 00 	vmovups ymm14,YMMWORD PTR [rdi+0x3a0]
  a09f3f:	00 
  a09f40:	62 d2 35 40 77 e6    	vpermi2ps zmm4,zmm25,zmm14
  a09f46:	62 42 75 48 7f ce    	vpermt2ps zmm25,zmm1,zmm14
  a09f4c:	62 21 4c 48 58 e9    	vaddps zmm29,zmm6,zmm17
  a09f52:	62 91 3c 48 58 cd    	vaddps zmm1,zmm8,zmm29
  a09f58:	62 c1 2c 48 58 db    	vaddps zmm19,zmm10,zmm11
  a09f5e:	62 31 74 48 58 f3    	vaddps zmm14,zmm1,zmm19
  a09f64:	62 71 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm14
  a09f6b:	02 
  a09f6c:	62 41 14 48 58 f9    	vaddps zmm31,zmm13,zmm9
  a09f72:	62 91 44 48 58 cf    	vaddps zmm1,zmm7,zmm31
  a09f78:	62 c1 5c 48 58 ec    	vaddps zmm21,zmm4,zmm12
  a09f7e:	62 b1 74 48 58 cd    	vaddps zmm1,zmm1,zmm21
  a09f84:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm1
  a09f8b:	03 
  a09f8c:	62 71 0c 48 58 f1    	vaddps zmm14,zmm14,zmm1
  a09f92:	62 21 7c 40 58 f4    	vaddps zmm30,zmm16,zmm20
  a09f98:	62 11 6c 48 58 fe    	vaddps zmm15,zmm2,zmm30
  a09f9e:	62 e1 4c 40 58 f8    	vaddps zmm23,zmm22,zmm0
  a09fa4:	62 b1 04 48 58 cf    	vaddps zmm1,zmm15,zmm23
  a09faa:	62 21 3c 40 58 da    	vaddps zmm27,zmm24,zmm18
  a09fb0:	62 01 54 48 58 e3    	vaddps zmm28,zmm5,zmm27
  a09fb6:	62 a1 7c 40 5c e4    	vsubps zmm20,zmm16,zmm20
  a09fbc:	62 61 34 40 58 d3    	vaddps zmm26,zmm25,zmm3
  a09fc2:	62 11 1c 40 58 fa    	vaddps zmm15,zmm28,zmm26
  a09fc8:	62 71 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm15
  a09fcf:	01 
  a09fd0:	62 e1 4c 40 5c f0    	vsubps zmm22,zmm22,zmm0
  a09fd6:	62 62 7d 48 18 25 08 	vbroadcastss zmm28,DWORD PTR [rip+0xffffffffff66b708]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a09fdd:	b7 66 ff 
  a09fe0:	62 21 3c 40 5c c2    	vsubps zmm24,zmm24,zmm18
  a09fe6:	62 81 7c 48 28 d4    	vmovaps zmm18,zmm28
  a09fec:	62 61 34 40 5c cb    	vsubps zmm25,zmm25,zmm3
  a09ff2:	62 f2 7d 48 18 05 48 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff66b648]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a09ff9:	b6 66 ff 
  a09ffc:	62 c2 15 40 a8 d0    	vfmadd213ps zmm18,zmm29,zmm8
  a0a002:	62 12 7d 48 bc c5    	vfnmadd231ps zmm8,zmm0,zmm29
  a0a008:	62 01 7c 48 28 ec    	vmovaps zmm29,zmm28
  a0a00e:	62 62 05 40 a8 ef    	vfmadd213ps zmm29,zmm31,zmm7
  a0a014:	62 92 7d 48 bc ff    	vfnmadd231ps zmm7,zmm0,zmm31
  a0a01a:	62 01 7c 48 28 fc    	vmovaps zmm31,zmm28
  a0a020:	62 62 0d 40 a8 fa    	vfmadd213ps zmm31,zmm30,zmm2
  a0a026:	62 92 7d 48 bc d6    	vfnmadd231ps zmm2,zmm0,zmm30
  a0a02c:	62 01 7c 48 28 f4    	vmovaps zmm30,zmm28
  a0a032:	62 62 25 40 a8 f5    	vfmadd213ps zmm30,zmm27,zmm5
  a0a038:	62 f2 25 40 bc e8    	vfnmadd231ps zmm5,zmm27,zmm0
  a0a03e:	62 c1 74 48 58 c7    	vaddps zmm16,zmm1,zmm15
  a0a044:	62 71 7c 48 28 f9    	vmovaps zmm15,zmm1
  a0a04a:	62 e2 65 40 bc d0    	vfnmadd231ps zmm18,zmm19,zmm0
  a0a050:	62 62 55 40 bc e8    	vfnmadd231ps zmm29,zmm21,zmm0
  a0a056:	62 62 45 40 bc f8    	vfnmadd231ps zmm31,zmm23,zmm0
  a0a05c:	62 62 2d 40 bc f0    	vfnmadd231ps zmm30,zmm26,zmm0
  a0a062:	62 f2 7d 48 18 05 ec 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff66b6ec]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a0a069:	b6 66 ff 
  a0a06c:	62 32 1d 40 b8 c3    	vfmadd231ps zmm8,zmm28,zmm19
  a0a072:	62 61 4c 40 59 d8    	vmulps zmm27,zmm22,zmm0
  a0a078:	62 b2 1d 40 b8 fd    	vfmadd231ps zmm7,zmm28,zmm21
  a0a07e:	62 e2 7d 48 18 1d 18 	vbroadcastss zmm19,DWORD PTR [rip+0xffffffffff66b318]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a0a085:	b3 66 ff 
  a0a088:	62 22 5d 40 b8 db    	vfmadd231ps zmm27,zmm20,zmm19
  a0a08e:	62 b2 1d 40 b8 d7    	vfmadd231ps zmm2,zmm28,zmm23
  a0a094:	62 81 6c 40 58 eb    	vaddps zmm21,zmm18,zmm27
  a0a09a:	62 92 2d 40 b8 ec    	vfmadd231ps zmm5,zmm26,zmm28
  a0a0a0:	62 e1 34 40 59 f8    	vmulps zmm23,zmm25,zmm0
  a0a0a6:	62 a2 3d 40 b8 fb    	vfmadd231ps zmm23,zmm24,zmm19
  a0a0ac:	62 21 14 40 58 d7    	vaddps zmm26,zmm29,zmm23
  a0a0b2:	62 21 4c 48 5c e1    	vsubps zmm28,zmm6,zmm17
  a0a0b8:	62 91 54 40 5c da    	vsubps zmm3,zmm21,zmm26
  a0a0be:	62 51 2c 48 5c d3    	vsubps zmm10,zmm10,zmm11
  a0a0c4:	62 71 2c 48 59 d8    	vmulps zmm11,zmm10,zmm0
  a0a0ca:	62 32 1d 40 b8 db    	vfmadd231ps zmm11,zmm28,zmm19
  a0a0d0:	62 51 14 48 5c c9    	vsubps zmm9,zmm13,zmm9
  a0a0d6:	62 d1 04 40 5c f3    	vsubps zmm6,zmm31,zmm11
  a0a0dc:	62 d1 5c 48 5c e4    	vsubps zmm4,zmm4,zmm12
  a0a0e2:	62 71 5c 48 59 e8    	vmulps zmm13,zmm4,zmm0
  a0a0e8:	62 32 35 48 b8 eb    	vfmadd231ps zmm13,zmm9,zmm19
  a0a0ee:	62 e1 5c 40 59 e0    	vmulps zmm20,zmm20,zmm0
  a0a0f4:	62 a2 65 40 bc e6    	vfnmadd231ps zmm20,zmm19,zmm22
  a0a0fa:	62 c1 0c 40 5c cd    	vsubps zmm17,zmm30,zmm13
  a0a100:	62 e1 3c 40 59 f0    	vmulps zmm22,zmm24,zmm0
  a0a106:	62 82 65 40 bc f1    	vfnmadd231ps zmm22,zmm19,zmm25
  a0a10c:	62 31 4c 48 5c e1    	vsubps zmm12,zmm6,zmm17
  a0a112:	62 61 1c 40 59 c8    	vmulps zmm25,zmm28,zmm0
  a0a118:	62 42 65 40 bc ca    	vfnmadd231ps zmm25,zmm19,zmm10
  a0a11e:	62 31 3c 48 58 d4    	vaddps zmm10,zmm8,zmm20
  a0a124:	62 f1 34 48 59 c0    	vmulps zmm0,zmm9,zmm0
  a0a12a:	62 21 44 48 58 e6    	vaddps zmm28,zmm7,zmm22
  a0a130:	62 b2 5d 48 bc c3    	vfnmadd231ps zmm0,zmm4,zmm19
  a0a136:	62 01 2c 48 58 c4    	vaddps zmm24,zmm10,zmm28
  a0a13c:	62 91 6c 48 5c c9    	vsubps zmm1,zmm2,zmm25
  a0a142:	62 a1 3c 48 5c e4    	vsubps zmm20,zmm8,zmm20
  a0a148:	62 f1 54 48 5c e0    	vsubps zmm4,zmm5,zmm0
  a0a14e:	62 b1 44 48 5c fe    	vsubps zmm7,zmm7,zmm22
  a0a154:	62 71 74 48 58 cc    	vaddps zmm9,zmm1,zmm4
  a0a15a:	62 f1 34 40 58 d2    	vaddps zmm2,zmm25,zmm2
  a0a160:	62 e1 5c 40 5c f7    	vsubps zmm22,zmm20,zmm7
  a0a166:	62 f1 7c 48 58 ed    	vaddps zmm5,zmm0,zmm5
  a0a16c:	62 e1 6c 48 5c dd    	vsubps zmm19,zmm2,zmm5
  a0a172:	62 81 6c 40 5c d3    	vsubps zmm18,zmm18,zmm27
  a0a178:	62 a1 14 40 5c ff    	vsubps zmm23,zmm29,zmm23
  a0a17e:	62 b1 6c 40 58 c7    	vaddps zmm0,zmm18,zmm23
  a0a184:	62 01 24 48 58 ef    	vaddps zmm29,zmm11,zmm31
  a0a18a:	62 01 14 48 58 f6    	vaddps zmm30,zmm13,zmm30
  a0a190:	62 11 14 40 58 ee    	vaddps zmm13,zmm29,zmm30
  a0a196:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x80]
  a0a19d:	02 
  a0a19e:	62 61 3c 48 5c 5c 24 	vsubps zmm27,zmm8,ZMMWORD PTR [rsp+0xc0]
  a0a1a5:	03 
  a0a1a6:	62 71 04 48 5c 44 24 	vsubps zmm8,zmm15,ZMMWORD PTR [rsp+0x40]
  a0a1ad:	01 
  a0a1ae:	62 01 54 40 58 ca    	vaddps zmm25,zmm21,zmm26
  a0a1b4:	62 31 4c 48 58 f9    	vaddps zmm15,zmm6,zmm17
  a0a1ba:	62 91 2c 48 5c f4    	vsubps zmm6,zmm10,zmm28
  a0a1c0:	62 f1 74 48 5c cc    	vsubps zmm1,zmm1,zmm4
  a0a1c6:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm1
  a0a1cd:	01 
  a0a1ce:	62 f1 5c 40 58 cf    	vaddps zmm1,zmm20,zmm7
  a0a1d4:	62 71 6c 48 58 dd    	vaddps zmm11,zmm2,zmm5
  a0a1da:	62 b1 6c 40 5c d7    	vsubps zmm2,zmm18,zmm23
  a0a1e0:	62 01 14 40 5c ee    	vsubps zmm29,zmm29,zmm30
  a0a1e6:	62 e1 7c 48 28 15 90 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff6bcd90]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a0a1ed:	cd 6b ff 
  a0a1f0:	62 d1 7c 48 28 fe    	vmovaps zmm7,zmm14
  a0a1f6:	62 f2 6d 40 7f f9    	vpermt2ps zmm7,zmm18,zmm1
  a0a1fc:	62 f1 7c 48 28 2d ba 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff6bcdba]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a0a203:	cd 6b ff 
  a0a206:	62 72 55 48 7f f1    	vpermt2ps zmm14,zmm5,zmm1
  a0a20c:	62 e1 7c 48 28 cb    	vmovaps zmm17,zmm3
  a0a212:	62 e2 6d 40 7f ca    	vpermt2ps zmm17,zmm18,zmm2
  a0a218:	62 f2 55 48 7f da    	vpermt2ps zmm3,zmm5,zmm2
  a0a21e:	c4 41 28 57 d2       	vxorps xmm10,xmm10,xmm10
  a0a223:	62 91 7c 48 28 e0    	vmovaps zmm4,zmm24
  a0a229:	62 d2 6d 40 7f e2    	vpermt2ps zmm4,zmm18,zmm10
  a0a22f:	62 42 55 48 7f c2    	vpermt2ps zmm24,zmm5,zmm10
  a0a235:	62 a1 7c 48 28 e6    	vmovaps zmm20,zmm22
  a0a23b:	62 c2 6d 40 7f e2    	vpermt2ps zmm20,zmm18,zmm10
  a0a241:	62 c2 55 48 7f f2    	vpermt2ps zmm22,zmm5,zmm10
  a0a247:	62 f1 7c 48 28 d0    	vmovaps zmm2,zmm0
  a0a24d:	62 d2 6d 40 7f d2    	vpermt2ps zmm2,zmm18,zmm10
  a0a253:	62 d2 55 48 7f c2    	vpermt2ps zmm0,zmm5,zmm10
  a0a259:	62 01 7c 48 28 d3    	vmovaps zmm26,zmm27
  a0a25f:	62 42 6d 40 7f d2    	vpermt2ps zmm26,zmm18,zmm10
  a0a265:	62 42 55 48 7f da    	vpermt2ps zmm27,zmm5,zmm10
  a0a26b:	62 01 7c 48 28 e1    	vmovaps zmm28,zmm25
  a0a271:	62 42 6d 40 7f e2    	vpermt2ps zmm28,zmm18,zmm10
  a0a277:	62 42 55 48 7f ca    	vpermt2ps zmm25,zmm5,zmm10
  a0a27d:	62 61 7c 48 28 f6    	vmovaps zmm30,zmm6
  a0a283:	62 42 6d 40 7f f2    	vpermt2ps zmm30,zmm18,zmm10
  a0a289:	62 d2 55 48 7f f2    	vpermt2ps zmm6,zmm5,zmm10
  a0a28f:	62 e1 7c 48 28 2d 67 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff6bcc67]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a0a296:	cc 6b ff 
  a0a299:	62 61 7c 48 28 ff    	vmovaps zmm31,zmm7
  a0a29f:	62 62 55 40 7f fa    	vpermt2ps zmm31,zmm21,zmm2
  a0a2a5:	62 e1 7c 48 28 3d 91 	vmovaps zmm23,ZMMWORD PTR [rip+0xffffffffff6bcc91]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a0a2ac:	cc 6b ff 
  a0a2af:	62 f2 45 40 7f fa    	vpermt2ps zmm7,zmm23,zmm2
  a0a2b5:	62 b1 7c 48 28 c9    	vmovaps zmm1,zmm17
  a0a2bb:	62 92 55 40 7f ca    	vpermt2ps zmm1,zmm21,zmm26
  a0a2c1:	62 82 45 40 7f ca    	vpermt2ps zmm17,zmm23,zmm26
  a0a2c7:	62 61 7c 48 28 d4    	vmovaps zmm26,zmm4
  a0a2cd:	62 02 55 40 7f d4    	vpermt2ps zmm26,zmm21,zmm28
  a0a2d3:	62 92 45 40 7f e4    	vpermt2ps zmm4,zmm23,zmm28
  a0a2d9:	62 21 7c 48 28 e4    	vmovaps zmm28,zmm20
  a0a2df:	62 02 55 40 7f e6    	vpermt2ps zmm28,zmm21,zmm30
  a0a2e5:	62 82 45 40 7f e6    	vpermt2ps zmm20,zmm23,zmm30
  a0a2eb:	62 72 55 40 7f f0    	vpermt2ps zmm14,zmm21,zmm0
  a0a2f1:	62 92 55 40 7f db    	vpermt2ps zmm3,zmm21,zmm27
  a0a2f7:	62 02 55 40 7f c1    	vpermt2ps zmm24,zmm21,zmm25
  a0a2fd:	62 e2 55 40 7f f6    	vpermt2ps zmm22,zmm21,zmm6
  a0a303:	62 91 85 40 14 c2    	vunpcklpd zmm0,zmm31,zmm26
  a0a309:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm0
  a0a310:	03 
  a0a311:	62 91 85 40 15 f2    	vunpckhpd zmm6,zmm31,zmm26
  a0a317:	62 91 f5 48 14 c4    	vunpcklpd zmm0,zmm1,zmm28
  a0a31d:	62 01 f5 48 15 e4    	vunpckhpd zmm28,zmm1,zmm28
  a0a323:	62 f1 c5 48 14 cc    	vunpcklpd zmm1,zmm7,zmm4
  a0a329:	62 f1 c5 48 15 d4    	vunpckhpd zmm2,zmm7,zmm4
  a0a32f:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm2
  a0a336:	02 
  a0a337:	62 21 f5 40 14 f4    	vunpcklpd zmm30,zmm17,zmm20
  a0a33d:	62 21 f5 40 15 dc    	vunpckhpd zmm27,zmm17,zmm20
  a0a343:	62 91 8d 48 14 f8    	vunpcklpd zmm7,zmm14,zmm24
  a0a349:	62 91 8d 48 15 d0    	vunpckhpd zmm2,zmm14,zmm24
  a0a34f:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm2
  a0a356:	04 
  a0a357:	62 a1 e5 48 14 e6    	vunpcklpd zmm20,zmm3,zmm22
  a0a35d:	62 21 e5 48 15 d6    	vunpckhpd zmm26,zmm3,zmm22
  a0a363:	62 21 7c 48 28 c0    	vmovaps zmm24,zmm16
  a0a369:	62 42 6d 40 7f c3    	vpermt2ps zmm24,zmm18,zmm11
  a0a36f:	62 c2 55 48 7f c3    	vpermt2ps zmm16,zmm5,zmm11
  a0a375:	62 41 7c 48 28 cc    	vmovaps zmm25,zmm12
  a0a37b:	62 02 6d 40 7f cd    	vpermt2ps zmm25,zmm18,zmm29
  a0a381:	62 12 55 48 7f e5    	vpermt2ps zmm12,zmm5,zmm29
  a0a387:	62 41 7c 48 28 f9    	vmovaps zmm31,zmm9
  a0a38d:	62 42 6d 40 7f fa    	vpermt2ps zmm31,zmm18,zmm10
  a0a393:	62 52 55 48 7f ca    	vpermt2ps zmm9,zmm5,zmm10
  a0a399:	62 31 7c 48 28 db    	vmovaps zmm11,zmm19
  a0a39f:	62 52 6d 40 7f da    	vpermt2ps zmm11,zmm18,zmm10
  a0a3a5:	62 c2 55 48 7f da    	vpermt2ps zmm19,zmm5,zmm10
  a0a3ab:	62 d1 7c 48 28 dd    	vmovaps zmm3,zmm13
  a0a3b1:	62 d2 6d 40 7f da    	vpermt2ps zmm3,zmm18,zmm10
  a0a3b7:	62 52 55 48 7f ea    	vpermt2ps zmm13,zmm5,zmm10
  a0a3bd:	62 51 7c 48 28 f0    	vmovaps zmm14,zmm8
  a0a3c3:	62 52 6d 40 7f f2    	vpermt2ps zmm14,zmm18,zmm10
  a0a3c9:	62 52 55 48 7f c2    	vpermt2ps zmm8,zmm5,zmm10
  a0a3cf:	62 d1 7c 48 28 e7    	vmovaps zmm4,zmm15
  a0a3d5:	62 52 6d 40 7f fa    	vpermt2ps zmm15,zmm18,zmm10
  a0a3db:	62 d2 55 48 7f e2    	vpermt2ps zmm4,zmm5,zmm10
  a0a3e1:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x40]
  a0a3e8:	01 
  a0a3e9:	62 c2 6d 48 77 d2    	vpermi2ps zmm18,zmm2,zmm10
  a0a3ef:	62 d2 55 48 7f d2    	vpermt2ps zmm2,zmm5,zmm10
  a0a3f5:	62 e1 7c 48 28 0d 01 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff6bca01]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a0a3fc:	ca 6b ff 
  a0a3ff:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0xc0]
  a0a406:	03 
  a0a407:	62 d1 7c 48 28 ea    	vmovaps zmm5,zmm10
  a0a40d:	62 f2 75 40 7f e8    	vpermt2ps zmm5,zmm17,zmm0
  a0a413:	62 61 7c 48 28 2d 23 	vmovaps zmm29,ZMMWORD PTR [rip+0xffffffffff6bca23]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a0a41a:	ca 6b ff 
  a0a41d:	62 72 15 40 7f d0    	vpermt2ps zmm10,zmm29,zmm0
  a0a423:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm10
  a0a42a:	03 
  a0a42b:	62 71 7c 48 28 d6    	vmovaps zmm10,zmm6
  a0a431:	62 12 75 40 7f d4    	vpermt2ps zmm10,zmm17,zmm28
  a0a437:	62 92 15 40 7f f4    	vpermt2ps zmm6,zmm29,zmm28
  a0a43d:	62 f1 7c 48 28 c1    	vmovaps zmm0,zmm1
  a0a443:	62 92 75 40 7f c6    	vpermt2ps zmm0,zmm17,zmm30
  a0a449:	62 92 15 40 7f ce    	vpermt2ps zmm1,zmm29,zmm30
  a0a44f:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm1
  a0a456:	01 
  a0a457:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x80]
  a0a45e:	02 
  a0a45f:	62 e1 7c 48 28 f1    	vmovaps zmm22,zmm1
  a0a465:	62 82 75 40 7f f3    	vpermt2ps zmm22,zmm17,zmm27
  a0a46b:	62 92 15 40 7f cb    	vpermt2ps zmm1,zmm29,zmm27
  a0a471:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm1
  a0a478:	02 
  a0a479:	62 61 7c 48 28 f7    	vmovaps zmm30,zmm7
  a0a47f:	62 22 75 40 7f f4    	vpermt2ps zmm30,zmm17,zmm20
  a0a485:	62 b2 15 40 7f fc    	vpermt2ps zmm7,zmm29,zmm20
  a0a48b:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x100]
  a0a492:	04 
  a0a493:	62 e1 7c 48 28 e1    	vmovaps zmm20,zmm1
  a0a499:	62 82 75 40 7f e2    	vpermt2ps zmm20,zmm17,zmm26
  a0a49f:	62 92 15 40 7f ca    	vpermt2ps zmm1,zmm29,zmm26
  a0a4a5:	62 01 7c 48 28 d0    	vmovaps zmm26,zmm24
  a0a4ab:	62 62 55 40 7f d3    	vpermt2ps zmm26,zmm21,zmm3
  a0a4b1:	62 62 45 40 7f c3    	vpermt2ps zmm24,zmm23,zmm3
  a0a4b7:	62 91 7c 48 28 d9    	vmovaps zmm3,zmm25
  a0a4bd:	62 d2 55 40 7f de    	vpermt2ps zmm3,zmm21,zmm14
  a0a4c3:	62 42 45 40 7f ce    	vpermt2ps zmm25,zmm23,zmm14
  a0a4c9:	62 01 7c 48 28 df    	vmovaps zmm27,zmm31
  a0a4cf:	62 42 55 40 7f df    	vpermt2ps zmm27,zmm21,zmm15
  a0a4d5:	62 42 45 40 7f ff    	vpermt2ps zmm31,zmm23,zmm15
  a0a4db:	62 51 7c 48 28 fb    	vmovaps zmm15,zmm11
  a0a4e1:	62 32 45 40 7f da    	vpermt2ps zmm11,zmm23,zmm18
  a0a4e7:	62 32 55 40 7f fa    	vpermt2ps zmm15,zmm21,zmm18
  a0a4ed:	62 c2 55 40 7f c5    	vpermt2ps zmm16,zmm21,zmm13
  a0a4f3:	62 52 55 40 7f e0    	vpermt2ps zmm12,zmm21,zmm8
  a0a4f9:	62 72 55 40 7f cc    	vpermt2ps zmm9,zmm21,zmm4
  a0a4ff:	62 e2 55 40 7f da    	vpermt2ps zmm19,zmm21,zmm2
  a0a505:	62 11 ad 40 14 f3    	vunpcklpd zmm14,zmm26,zmm27
  a0a50b:	62 01 ad 40 15 d3    	vunpckhpd zmm26,zmm26,zmm27
  a0a511:	62 51 e5 48 14 c7    	vunpcklpd zmm8,zmm3,zmm15
  a0a517:	62 c1 e5 48 15 d7    	vunpckhpd zmm18,zmm3,zmm15
  a0a51d:	62 11 bd 40 14 ef    	vunpcklpd zmm13,zmm24,zmm31
  a0a523:	62 11 bd 40 15 ff    	vunpckhpd zmm15,zmm24,zmm31
  a0a529:	62 c1 b5 40 14 eb    	vunpcklpd zmm21,zmm25,zmm11
  a0a52f:	62 51 b5 40 15 db    	vunpckhpd zmm11,zmm25,zmm11
  a0a535:	62 41 fd 40 14 d9    	vunpcklpd zmm27,zmm16,zmm9
  a0a53b:	62 51 fd 40 15 c9    	vunpckhpd zmm9,zmm16,zmm9
  a0a541:	62 21 9d 48 14 c3    	vunpcklpd zmm24,zmm12,zmm19
  a0a547:	62 31 9d 48 15 e3    	vunpckhpd zmm12,zmm12,zmm19
  a0a54d:	62 d1 7c 48 28 de    	vmovaps zmm3,zmm14
  a0a553:	62 d2 75 40 7f d8    	vpermt2ps zmm3,zmm17,zmm8
  a0a559:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm3
  a0a560:	04 
  a0a561:	62 52 15 40 7f f0    	vpermt2ps zmm14,zmm29,zmm8
  a0a567:	62 11 7c 48 28 c2    	vmovaps zmm8,zmm26
  a0a56d:	62 32 75 40 7f c2    	vpermt2ps zmm8,zmm17,zmm18
  a0a573:	62 22 15 40 7f d2    	vpermt2ps zmm26,zmm29,zmm18
  a0a579:	62 41 7c 48 28 e5    	vmovaps zmm28,zmm13
  a0a57f:	62 22 75 40 7f e5    	vpermt2ps zmm28,zmm17,zmm21
  a0a585:	62 32 15 40 7f ed    	vpermt2ps zmm13,zmm29,zmm21
  a0a58b:	62 c1 7c 48 28 ff    	vmovaps zmm23,zmm15
  a0a591:	62 c2 75 40 7f fb    	vpermt2ps zmm23,zmm17,zmm11
  a0a597:	62 52 15 40 7f fb    	vpermt2ps zmm15,zmm29,zmm11
  a0a59d:	62 81 7c 48 28 c3    	vmovaps zmm16,zmm27
  a0a5a3:	62 82 75 40 7f c0    	vpermt2ps zmm16,zmm17,zmm24
  a0a5a9:	62 02 15 40 7f d8    	vpermt2ps zmm27,zmm29,zmm24
  a0a5af:	62 c2 35 48 77 cc    	vpermi2ps zmm17,zmm9,zmm12
  a0a5b5:	62 52 15 40 7f cc    	vpermt2ps zmm9,zmm29,zmm12
  a0a5bb:	62 61 7c 48 10 4a 02 	vmovups zmm25,ZMMWORD PTR [rdx+0x80]
  a0a5c2:	62 61 7c 48 10 42 03 	vmovups zmm24,ZMMWORD PTR [rdx+0xc0]
  a0a5c9:	62 e1 7c 48 10 6a 04 	vmovups zmm21,ZMMWORD PTR [rdx+0x100]
  a0a5d0:	62 e1 7c 48 10 52 05 	vmovups zmm18,ZMMWORD PTR [rdx+0x140]
  a0a5d7:	62 e1 7c 48 10 5a 06 	vmovups zmm19,ZMMWORD PTR [rdx+0x180]
  a0a5de:	62 71 7c 48 10 62 0c 	vmovups zmm12,ZMMWORD PTR [rdx+0x300]
  a0a5e5:	62 61 7c 48 10 6a 0d 	vmovups zmm29,ZMMWORD PTR [rdx+0x340]
  a0a5ec:	62 51 4c 40 59 dc    	vmulps zmm11,zmm22,zmm12
  a0a5f2:	62 12 45 40 bc dd    	vfnmadd231ps zmm11,zmm23,zmm29
  a0a5f8:	62 c1 44 40 59 fc    	vmulps zmm23,zmm23,zmm12
  a0a5fe:	62 71 7c 48 10 62 07 	vmovups zmm12,ZMMWORD PTR [rdx+0x1c0]
  a0a605:	62 a2 15 40 b8 fe    	vfmadd231ps zmm23,zmm29,zmm22
  a0a60b:	62 61 7c 48 10 6a 08 	vmovups zmm29,ZMMWORD PTR [rdx+0x200]
  a0a612:	62 a1 4c 48 59 f3    	vmulps zmm22,zmm6,zmm19
  a0a618:	62 c2 2d 40 bc f4    	vfnmadd231ps zmm22,zmm26,zmm12
  a0a61e:	62 21 2c 40 59 d3    	vmulps zmm26,zmm26,zmm19
  a0a624:	62 e1 7c 48 10 5a 12 	vmovups zmm19,ZMMWORD PTR [rdx+0x480]
  a0a62b:	62 62 1d 48 b8 d6    	vfmadd231ps zmm26,zmm12,zmm6
  a0a631:	62 71 7c 48 10 62 13 	vmovups zmm12,ZMMWORD PTR [rdx+0x4c0]
  a0a638:	62 b1 44 48 59 f3    	vmulps zmm6,zmm7,zmm19
  a0a63e:	62 d2 25 40 bc f4    	vfnmadd231ps zmm6,zmm27,zmm12
  a0a644:	62 21 24 40 59 db    	vmulps zmm27,zmm27,zmm19
  a0a64a:	62 e1 7c 48 10 5a 09 	vmovups zmm19,ZMMWORD PTR [rdx+0x240]
  a0a651:	62 62 1d 48 b8 df    	vfmadd231ps zmm27,zmm12,zmm7
  a0a657:	62 61 7c 48 10 7a 0a 	vmovups zmm31,ZMMWORD PTR [rdx+0x280]
  a0a65e:	62 91 7c 48 59 fd    	vmulps zmm7,zmm0,zmm29
  a0a664:	62 b2 1d 40 bc fb    	vfnmadd231ps zmm7,zmm28,zmm19
  a0a66a:	62 01 1c 40 59 e5    	vmulps zmm28,zmm28,zmm29
  a0a670:	62 71 7c 48 10 62 14 	vmovups zmm12,ZMMWORD PTR [rdx+0x500]
  a0a677:	62 62 65 40 b8 e0    	vfmadd231ps zmm28,zmm19,zmm0
  a0a67d:	62 f1 7c 48 10 42 15 	vmovups zmm0,ZMMWORD PTR [rdx+0x540]
  a0a684:	62 c1 5c 40 59 dc    	vmulps zmm19,zmm20,zmm12
  a0a68a:	62 e2 75 40 bc d8    	vfnmadd231ps zmm19,zmm17,zmm0
  a0a690:	62 c1 74 40 59 cc    	vmulps zmm17,zmm17,zmm12
  a0a696:	62 71 7c 48 10 62 0e 	vmovups zmm12,ZMMWORD PTR [rdx+0x380]
  a0a69d:	62 a2 7d 48 b8 cc    	vfmadd231ps zmm17,zmm0,zmm20
  a0a6a3:	62 e1 7c 48 10 62 0f 	vmovups zmm20,ZMMWORD PTR [rdx+0x3c0]
  a0a6aa:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x80]
  a0a6b1:	02 
  a0a6b2:	62 d1 6c 48 59 c4    	vmulps zmm0,zmm2,zmm12
  a0a6b8:	62 b2 05 48 bc c4    	vfnmadd231ps zmm0,zmm15,zmm20
  a0a6be:	62 51 04 48 59 fc    	vmulps zmm15,zmm15,zmm12
  a0a6c4:	62 61 7c 48 10 6a 0b 	vmovups zmm29,ZMMWORD PTR [rdx+0x2c0]
  a0a6cb:	62 72 5d 40 b8 fa    	vfmadd231ps zmm15,zmm20,zmm2
  a0a6d1:	62 f1 7c 48 10 62 10 	vmovups zmm4,ZMMWORD PTR [rdx+0x400]
  a0a6d8:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0xc0]
  a0a6df:	03 
  a0a6e0:	62 81 6c 48 59 e1    	vmulps zmm20,zmm2,zmm25
  a0a6e6:	62 82 0d 48 bc e0    	vfnmadd231ps zmm20,zmm14,zmm24
  a0a6ec:	62 11 0c 48 59 f1    	vmulps zmm14,zmm14,zmm25
  a0a6f2:	62 71 7c 48 10 62 11 	vmovups zmm12,ZMMWORD PTR [rdx+0x440]
  a0a6f9:	62 72 3d 40 b8 f2    	vfmadd231ps zmm14,zmm24,zmm2
  a0a6ff:	62 61 7c 48 10 42 16 	vmovups zmm24,ZMMWORD PTR [rdx+0x580]
  a0a706:	62 61 0c 40 59 cc    	vmulps zmm25,zmm30,zmm4
  a0a70c:	62 42 7d 40 bc cc    	vfnmadd231ps zmm25,zmm16,zmm12
  a0a712:	62 f1 7c 40 59 e4    	vmulps zmm4,zmm16,zmm4
  a0a718:	62 e1 7c 48 10 42 17 	vmovups zmm16,ZMMWORD PTR [rdx+0x5c0]
  a0a71f:	62 92 1d 48 b8 e6    	vfmadd231ps zmm4,zmm12,zmm30
  a0a725:	62 51 54 48 58 e3    	vaddps zmm12,zmm5,zmm11
  a0a72b:	62 21 2c 48 59 f5    	vmulps zmm30,zmm10,zmm21
  a0a731:	62 22 3d 48 bc f2    	vfnmadd231ps zmm30,zmm8,zmm18
  a0a737:	62 a1 3c 48 59 ed    	vmulps zmm21,zmm8,zmm21
  a0a73d:	62 71 4c 40 58 c6    	vaddps zmm8,zmm22,zmm6
  a0a743:	62 c2 6d 40 b8 ea    	vfmadd231ps zmm21,zmm18,zmm10
  a0a749:	62 d1 1c 48 58 d0    	vaddps zmm2,zmm12,zmm8
  a0a74f:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm2
  a0a756:	03 
  a0a757:	62 11 74 48 59 d0    	vmulps zmm10,zmm1,zmm24
  a0a75d:	62 32 35 48 bc d0    	vfnmadd231ps zmm10,zmm9,zmm16
  a0a763:	62 11 34 48 59 c8    	vmulps zmm9,zmm9,zmm24
  a0a769:	62 21 44 48 58 c3    	vaddps zmm24,zmm7,zmm19
  a0a76f:	62 72 7d 40 b8 c9    	vfmadd231ps zmm9,zmm16,zmm1
  a0a775:	62 b1 7c 48 58 dc    	vaddps zmm3,zmm0,zmm20
  a0a77b:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x40]
  a0a782:	01 
  a0a783:	62 81 74 48 59 c7    	vmulps zmm16,zmm1,zmm31
  a0a789:	62 82 15 48 bc c5    	vfnmadd231ps zmm16,zmm13,zmm29
  a0a78f:	62 81 14 48 59 d7    	vmulps zmm18,zmm13,zmm31
  a0a795:	62 f1 3c 40 58 d3    	vaddps zmm2,zmm24,zmm3
  a0a79b:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm2
  a0a7a2:	02 
  a0a7a3:	62 e2 15 40 b8 d1    	vfmadd231ps zmm18,zmm29,zmm1
  a0a7a9:	62 01 34 40 58 ee    	vaddps zmm29,zmm25,zmm30
  a0a7af:	62 b1 2c 48 58 d0    	vaddps zmm2,zmm10,zmm16
  a0a7b5:	62 31 44 48 5c eb    	vsubps zmm13,zmm7,zmm19
  a0a7bb:	62 c1 04 48 58 de    	vaddps zmm19,zmm15,zmm14
  a0a7c1:	62 51 04 48 5c fe    	vsubps zmm15,zmm15,zmm14
  a0a7c7:	62 61 14 40 58 fa    	vaddps zmm31,zmm29,zmm2
  a0a7cd:	62 01 34 40 5c ce    	vsubps zmm25,zmm25,zmm30
  a0a7d3:	62 31 34 48 58 f2    	vaddps zmm14,zmm9,zmm18
  a0a7d9:	62 a1 34 48 5c d2    	vsubps zmm18,zmm9,zmm18
  a0a7df:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x100]
  a0a7e6:	04 
  a0a7e7:	62 61 44 40 58 f1    	vaddps zmm30,zmm23,zmm1
  a0a7ed:	62 d1 54 48 5c eb    	vsubps zmm5,zmm5,zmm11
  a0a7f3:	62 11 2c 40 58 db    	vaddps zmm11,zmm26,zmm27
  a0a7f9:	62 01 2c 40 5c d3    	vsubps zmm26,zmm26,zmm27
  a0a7ff:	62 21 1c 40 58 d9    	vaddps zmm27,zmm28,zmm17
  a0a805:	62 21 1c 40 5c e1    	vsubps zmm28,zmm28,zmm17
  a0a80b:	62 a1 5c 48 58 cd    	vaddps zmm17,zmm4,zmm21
  a0a811:	62 71 5c 40 5c c8    	vsubps zmm9,zmm20,zmm0
  a0a817:	62 d1 1c 40 58 c1    	vaddps zmm0,zmm28,zmm9
  a0a81d:	62 b1 5c 48 5c fd    	vsubps zmm7,zmm4,zmm21
  a0a823:	62 51 7c 40 5c d2    	vsubps zmm10,zmm16,zmm10
  a0a829:	62 d1 44 48 58 e2    	vaddps zmm4,zmm7,zmm10
  a0a82f:	62 e1 7c 48 5c c4    	vsubps zmm16,zmm0,zmm4
  a0a835:	62 e1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm16
  a0a83c:	06 
  a0a83d:	62 f1 7c 48 58 c4    	vaddps zmm0,zmm0,zmm4
  a0a843:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm0
  a0a84a:	05 
  a0a84b:	62 d1 14 48 58 c7    	vaddps zmm0,zmm13,zmm15
  a0a851:	62 a1 74 48 5c e7    	vsubps zmm20,zmm1,zmm23
  a0a857:	62 a1 34 40 58 ea    	vaddps zmm21,zmm25,zmm18
  a0a85d:	62 b1 4c 48 5c ce    	vsubps zmm1,zmm6,zmm22
  a0a863:	62 a1 7c 48 58 fd    	vaddps zmm23,zmm0,zmm21
  a0a869:	62 a1 7c 48 5c c5    	vsubps zmm16,zmm0,zmm21
  a0a86f:	62 91 24 48 58 c6    	vaddps zmm0,zmm11,zmm30
  a0a875:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a0a87c:	01 
  a0a87d:	62 f1 3c 40 5c db    	vsubps zmm3,zmm24,zmm3
  a0a883:	62 21 24 40 58 c3    	vaddps zmm24,zmm27,zmm19
  a0a889:	62 f1 14 40 5c d2    	vsubps zmm2,zmm29,zmm2
  a0a88f:	62 41 74 40 58 ee    	vaddps zmm29,zmm17,zmm14
  a0a895:	62 51 1c 48 5c e0    	vsubps zmm12,zmm12,zmm8
  a0a89b:	62 81 54 48 58 f2    	vaddps zmm22,zmm5,zmm26
  a0a8a1:	62 a1 24 40 5c db    	vsubps zmm19,zmm27,zmm19
  a0a8a7:	62 f2 7d 48 18 35 af 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff66abaf]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a0a8ae:	ab 66 ff 
  a0a8b1:	62 c1 74 40 5c ce    	vsubps zmm17,zmm17,zmm14
  a0a8b7:	62 b1 64 40 5c c1    	vsubps zmm0,zmm19,zmm17
  a0a8bd:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  a0a8c4:	04 
  a0a8c5:	62 a1 64 40 58 e9    	vaddps zmm21,zmm19,zmm17
  a0a8cb:	62 61 7c 48 28 de    	vmovaps zmm27,zmm6
  a0a8d1:	62 41 0c 40 5c f3    	vsubps zmm30,zmm30,zmm11
  a0a8d7:	62 f1 64 48 58 e2    	vaddps zmm4,zmm3,zmm2
  a0a8dd:	62 71 64 48 5c f2    	vsubps zmm14,zmm3,zmm2
  a0a8e3:	62 31 74 48 58 dc    	vaddps zmm11,zmm1,zmm20
  a0a8e9:	62 91 54 48 5c da    	vsubps zmm3,zmm5,zmm26
  a0a8ef:	62 61 7c 48 28 d6    	vmovaps zmm26,zmm6
  a0a8f5:	62 51 14 48 5c ff    	vsubps zmm15,zmm13,zmm15
  a0a8fb:	62 e1 7c 48 28 ce    	vmovaps zmm17,zmm6
  a0a901:	62 21 34 40 5c ca    	vsubps zmm25,zmm25,zmm18
  a0a907:	62 e1 7c 48 28 d6    	vmovaps zmm18,zmm6
  a0a90d:	62 f1 5c 40 5c c9    	vsubps zmm1,zmm20,zmm1
  a0a913:	62 81 04 48 58 e1    	vaddps zmm20,zmm15,zmm25
  a0a919:	62 51 1c 40 5c c9    	vsubps zmm9,zmm28,zmm9
  a0a91f:	62 31 64 48 58 c4    	vaddps zmm8,zmm3,zmm20
  a0a925:	62 d1 44 48 5c fa    	vsubps zmm7,zmm7,zmm10
  a0a92b:	62 71 34 48 58 d7    	vaddps zmm10,zmm9,zmm7
  a0a931:	62 e2 4d 48 ac e3    	vfnmadd213ps zmm20,zmm6,zmm3
  a0a937:	62 f1 7c 48 28 de    	vmovaps zmm3,zmm6
  a0a93d:	62 61 7c 48 28 e6    	vmovaps zmm28,zmm6
  a0a943:	62 f2 2d 48 ac f1    	vfnmadd213ps zmm6,zmm10,zmm1
  a0a949:	62 c1 74 48 58 da    	vaddps zmm19,zmm1,zmm10
  a0a94f:	62 91 3c 40 58 ed    	vaddps zmm5,zmm24,zmm29
  a0a955:	62 01 3c 40 5c c5    	vsubps zmm24,zmm24,zmm29
  a0a95b:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x80]
  a0a962:	02 
  a0a963:	62 01 7c 48 58 ef    	vaddps zmm29,zmm0,zmm31
  a0a969:	62 01 7c 48 5c ff    	vsubps zmm31,zmm0,zmm31
  a0a96f:	62 22 45 40 ac de    	vfnmadd213ps zmm27,zmm23,zmm22
  a0a975:	62 f2 7d 48 18 05 55 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff66a955]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a0a97c:	a9 66 ff 
  a0a97f:	62 71 7c 48 59 54 24 	vmulps zmm10,zmm0,ZMMWORD PTR [rsp+0x180]
  a0a986:	06 
  a0a987:	62 d1 24 40 58 ca    	vaddps zmm1,zmm27,zmm10
  a0a98d:	62 51 24 40 5c ea    	vsubps zmm13,zmm27,zmm10
  a0a993:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x140]
  a0a99a:	05 
  a0a99b:	62 42 6d 48 ac d3    	vfnmadd213ps zmm26,zmm2,zmm11
  a0a9a1:	62 71 7c 40 59 d0    	vmulps zmm10,zmm16,zmm0
  a0a9a7:	62 41 2c 40 5c da    	vsubps zmm27,zmm26,zmm10
  a0a9ad:	62 c1 2c 40 58 c2    	vaddps zmm16,zmm26,zmm10
  a0a9b3:	62 c2 5d 48 ac cc    	vfnmadd213ps zmm17,zmm4,zmm12
  a0a9b9:	62 71 1c 48 58 d4    	vaddps zmm10,zmm12,zmm4
  a0a9bf:	62 82 55 40 ac d6    	vfnmadd213ps zmm18,zmm21,zmm30
  a0a9c5:	62 31 0c 40 58 e5    	vaddps zmm12,zmm30,zmm21
  a0a9cb:	62 f1 34 48 5c e7    	vsubps zmm4,zmm9,zmm7
  a0a9d1:	62 91 04 48 5c f9    	vsubps zmm7,zmm15,zmm25
  a0a9d7:	62 e1 7c 48 59 6c 24 	vmulps zmm21,zmm0,ZMMWORD PTR [rsp+0x100]
  a0a9de:	04 
  a0a9df:	62 61 0c 48 59 c8    	vmulps zmm25,zmm14,zmm0
  a0a9e5:	62 61 7c 48 28 74 24 	vmovaps zmm30,ZMMWORD PTR [rsp+0xc0]
  a0a9ec:	03 
  a0a9ed:	62 92 15 40 ac de    	vfnmadd213ps zmm3,zmm29,zmm30
  a0a9f3:	62 71 3c 40 59 c8    	vmulps zmm9,zmm24,zmm0
  a0a9f9:	62 71 04 40 59 f8    	vmulps zmm15,zmm31,zmm0
  a0a9ff:	62 61 5c 48 59 c0    	vmulps zmm24,zmm4,zmm0
  a0aa05:	62 f1 44 48 59 c0    	vmulps zmm0,zmm7,zmm0
  a0aa0b:	62 41 64 48 58 d1    	vaddps zmm26,zmm3,zmm9
  a0aa11:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x40]
  a0aa18:	01 
  a0aa19:	62 62 55 48 ac e7    	vfnmadd213ps zmm28,zmm5,zmm7
  a0aa1f:	62 51 64 48 5c f1    	vsubps zmm14,zmm3,zmm9
  a0aa25:	62 41 1c 40 5c ff    	vsubps zmm31,zmm28,zmm15
  a0aa2b:	62 51 1c 40 58 ff    	vaddps zmm15,zmm28,zmm15
  a0aa31:	62 31 4c 40 58 cf    	vaddps zmm9,zmm22,zmm23
  a0aa37:	62 e1 24 48 58 fa    	vaddps zmm23,zmm11,zmm2
  a0aa3d:	62 a1 74 40 5c f5    	vsubps zmm22,zmm17,zmm21
  a0aa43:	62 b1 74 40 58 e5    	vaddps zmm4,zmm17,zmm21
  a0aa49:	62 81 6c 40 58 c9    	vaddps zmm17,zmm18,zmm25
  a0aa4f:	62 01 6c 40 5c c9    	vsubps zmm25,zmm18,zmm25
  a0aa55:	62 81 5c 40 58 d0    	vaddps zmm18,zmm20,zmm24
  a0aa5b:	62 11 5c 40 5c d8    	vsubps zmm11,zmm20,zmm24
  a0aa61:	62 e1 4c 48 5c e0    	vsubps zmm20,zmm6,zmm0
  a0aa67:	62 f1 4c 48 58 d8    	vaddps zmm3,zmm6,zmm0
  a0aa6d:	62 91 0c 40 58 f5    	vaddps zmm6,zmm30,zmm29
  a0aa73:	62 f1 44 48 58 d5    	vaddps zmm2,zmm7,zmm5
  a0aa79:	62 f1 7c 48 28 05 3d 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff683e3d]        # 8e8c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1bd70>
  a0aa80:	3e 68 ff 
  a0aa83:	62 b3 7d 48 19 f5 02 	vextractf32x4 xmm21,zmm6,0x2
  a0aa8a:	62 f2 7d 48 7f f2    	vpermt2ps zmm6,zmm0,zmm2
  a0aa90:	62 f1 7c 48 11 36    	vmovups ZMMWORD PTR [rsi],zmm6
  a0aa96:	62 f3 7d 48 19 d2 02 	vextractf32x4 xmm2,zmm2,0x2
  a0aa9d:	62 f1 54 00 14 d2    	vunpcklps xmm2,xmm21,xmm2
  a0aaa3:	c5 f8 11 56 40       	vmovups XMMWORD PTR [rsi+0x40],xmm2
  a0aaa8:	62 f3 7d 48 19 ca 02 	vextractf32x4 xmm2,zmm1,0x2
  a0aaaf:	62 92 7d 48 7f cb    	vpermt2ps zmm1,zmm0,zmm27
  a0aab5:	62 f1 7c 48 11 8e 50 	vmovups ZMMWORD PTR [rsi+0x50],zmm1
  a0aabc:	00 00 00 
  a0aabf:	62 63 7d 48 19 d9 02 	vextractf32x4 xmm1,zmm27,0x2
  a0aac6:	c5 e8 14 c9          	vunpcklps xmm1,xmm2,xmm1
  a0aaca:	c5 f8 11 8e 90 00 00 	vmovups XMMWORD PTR [rsi+0x90],xmm1
  a0aad1:	00 
  a0aad2:	62 e3 7d 48 19 f1 02 	vextractf32x4 xmm1,zmm22,0x2
  a0aad9:	62 a2 7d 48 7f f1    	vpermt2ps zmm22,zmm0,zmm17
  a0aadf:	62 e1 7c 48 11 b6 a0 	vmovups ZMMWORD PTR [rsi+0xa0],zmm22
  a0aae6:	00 00 00 
  a0aae9:	62 e3 7d 48 19 ca 02 	vextractf32x4 xmm2,zmm17,0x2
  a0aaf0:	c5 f0 14 ca          	vunpcklps xmm1,xmm1,xmm2
  a0aaf4:	c5 f8 11 8e e0 00 00 	vmovups XMMWORD PTR [rsi+0xe0],xmm1
  a0aafb:	00 
  a0aafc:	62 73 7d 48 19 c1 02 	vextractf32x4 xmm1,zmm8,0x2
  a0ab03:	62 32 7d 48 7f c3    	vpermt2ps zmm8,zmm0,zmm19
  a0ab09:	62 71 7c 48 11 86 f0 	vmovups ZMMWORD PTR [rsi+0xf0],zmm8
  a0ab10:	00 00 00 
  a0ab13:	62 e3 7d 48 19 da 02 	vextractf32x4 xmm2,zmm19,0x2
  a0ab1a:	c5 f0 14 ca          	vunpcklps xmm1,xmm1,xmm2
  a0ab1e:	c5 f8 11 8e 30 01 00 	vmovups XMMWORD PTR [rsi+0x130],xmm1
  a0ab25:	00 
  a0ab26:	62 63 7d 48 19 d1 02 	vextractf32x4 xmm1,zmm26,0x2
  a0ab2d:	62 02 7d 48 7f d7    	vpermt2ps zmm26,zmm0,zmm31
  a0ab33:	62 61 7c 48 11 56 05 	vmovups ZMMWORD PTR [rsi+0x140],zmm26
  a0ab3a:	62 63 7d 48 19 fa 02 	vextractf32x4 xmm2,zmm31,0x2
  a0ab41:	c5 f0 14 ca          	vunpcklps xmm1,xmm1,xmm2
  a0ab45:	c5 f8 11 8e 80 01 00 	vmovups XMMWORD PTR [rsi+0x180],xmm1
  a0ab4c:	00 
  a0ab4d:	62 73 7d 48 19 e9 02 	vextractf32x4 xmm1,zmm13,0x2
  a0ab54:	62 32 7d 48 7f e8    	vpermt2ps zmm13,zmm0,zmm16
  a0ab5a:	62 71 7c 48 11 ae 90 	vmovups ZMMWORD PTR [rsi+0x190],zmm13
  a0ab61:	01 00 00 
  a0ab64:	62 e3 7d 48 19 c2 02 	vextractf32x4 xmm2,zmm16,0x2
  a0ab6b:	c5 f0 14 ca          	vunpcklps xmm1,xmm1,xmm2
  a0ab6f:	c5 f8 11 8e d0 01 00 	vmovups XMMWORD PTR [rsi+0x1d0],xmm1
  a0ab76:	00 
  a0ab77:	62 73 7d 48 19 d1 02 	vextractf32x4 xmm1,zmm10,0x2
  a0ab7e:	62 52 7d 48 7f d4    	vpermt2ps zmm10,zmm0,zmm12
  a0ab84:	62 71 7c 48 11 96 e0 	vmovups ZMMWORD PTR [rsi+0x1e0],zmm10
  a0ab8b:	01 00 00 
  a0ab8e:	62 73 7d 48 19 e2 02 	vextractf32x4 xmm2,zmm12,0x2
  a0ab95:	c5 f0 14 ca          	vunpcklps xmm1,xmm1,xmm2
  a0ab99:	c5 f8 11 8e 20 02 00 	vmovups XMMWORD PTR [rsi+0x220],xmm1
  a0aba0:	00 
  a0aba1:	62 e3 7d 48 19 d1 02 	vextractf32x4 xmm1,zmm18,0x2
  a0aba8:	62 a2 7d 48 7f d4    	vpermt2ps zmm18,zmm0,zmm20
  a0abae:	62 e1 7c 48 11 96 30 	vmovups ZMMWORD PTR [rsi+0x230],zmm18
  a0abb5:	02 00 00 
  a0abb8:	62 e3 7d 48 19 e2 02 	vextractf32x4 xmm2,zmm20,0x2
  a0abbf:	c5 f0 14 ca          	vunpcklps xmm1,xmm1,xmm2
  a0abc3:	c5 f8 11 8e 70 02 00 	vmovups XMMWORD PTR [rsi+0x270],xmm1
  a0abca:	00 
  a0abcb:	62 73 7d 48 19 f1 02 	vextractf32x4 xmm1,zmm14,0x2
  a0abd2:	62 52 7d 48 7f f7    	vpermt2ps zmm14,zmm0,zmm15
  a0abd8:	62 71 7c 48 11 76 0a 	vmovups ZMMWORD PTR [rsi+0x280],zmm14
  a0abdf:	62 73 7d 48 19 fa 02 	vextractf32x4 xmm2,zmm15,0x2
  a0abe6:	c5 f0 14 ca          	vunpcklps xmm1,xmm1,xmm2
  a0abea:	c5 f8 11 8e c0 02 00 	vmovups XMMWORD PTR [rsi+0x2c0],xmm1
  a0abf1:	00 
  a0abf2:	62 73 7d 48 19 c9 02 	vextractf32x4 xmm1,zmm9,0x2
  a0abf9:	62 32 7d 48 7f cf    	vpermt2ps zmm9,zmm0,zmm23
  a0abff:	62 71 7c 48 11 8e d0 	vmovups ZMMWORD PTR [rsi+0x2d0],zmm9
  a0ac06:	02 00 00 
  a0ac09:	62 e3 7d 48 19 fa 02 	vextractf32x4 xmm2,zmm23,0x2
  a0ac10:	c5 f0 14 ca          	vunpcklps xmm1,xmm1,xmm2
  a0ac14:	c5 f8 11 8e 10 03 00 	vmovups XMMWORD PTR [rsi+0x310],xmm1
  a0ac1b:	00 
  a0ac1c:	62 f3 7d 48 19 e1 02 	vextractf32x4 xmm1,zmm4,0x2
  a0ac23:	62 92 7d 48 7f e1    	vpermt2ps zmm4,zmm0,zmm25
  a0ac29:	62 f1 7c 48 11 a6 20 	vmovups ZMMWORD PTR [rsi+0x320],zmm4
  a0ac30:	03 00 00 
  a0ac33:	62 63 7d 48 19 ca 02 	vextractf32x4 xmm2,zmm25,0x2
  a0ac3a:	c5 f0 14 ca          	vunpcklps xmm1,xmm1,xmm2
  a0ac3e:	c5 f8 11 8e 60 03 00 	vmovups XMMWORD PTR [rsi+0x360],xmm1
  a0ac45:	00 
  a0ac46:	62 f2 25 48 77 c3    	vpermi2ps zmm0,zmm11,zmm3
  a0ac4c:	62 f1 7c 48 11 86 70 	vmovups ZMMWORD PTR [rsi+0x370],zmm0
  a0ac53:	03 00 00 
  a0ac56:	62 f3 7d 48 19 d8 02 	vextractf32x4 xmm0,zmm3,0x2
  a0ac5d:	62 73 7d 48 19 d9 02 	vextractf32x4 xmm1,zmm11,0x2
  a0ac64:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  a0ac68:	c5 f8 11 86 b0 03 00 	vmovups XMMWORD PTR [rsi+0x3b0],xmm0
  a0ac6f:	00 
  a0ac70:	48 89 ec             	mov    rsp,rbp
  a0ac73:	5d                   	pop    rbp
  a0ac74:	c5 f8 77             	vzeroupper
  a0ac77:	c3                   	ret
