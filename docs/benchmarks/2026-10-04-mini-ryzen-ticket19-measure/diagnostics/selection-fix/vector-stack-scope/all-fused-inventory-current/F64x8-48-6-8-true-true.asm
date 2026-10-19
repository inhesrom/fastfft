
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

000000000092cb80 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  92cb80:	62 f1 fd 48 10 05 de 	vmovupd zmm0,ZMMWORD PTR [rip+0xffffffffff79a1de]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  92cb87:	a1 79 ff 
  92cb8a:	62 f1 fd 48 10 0d 14 	vmovupd zmm1,ZMMWORD PTR [rip+0xffffffffff79a214]        # c6da8 <crc32fast::table::CRC32_TABLE+0x9124>
  92cb91:	a2 79 ff 
  92cb94:	62 f1 fd 48 10 15 4a 	vmovupd zmm2,ZMMWORD PTR [rip+0xffffffffff79a14a]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  92cb9b:	a1 79 ff 
  92cb9e:	62 f1 fd 48 10 1d 80 	vmovupd zmm3,ZMMWORD PTR [rip+0xffffffffff79a180]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  92cba5:	a1 79 ff 
  92cba8:	48 c1 e2 08          	shl    rdx,0x8
  92cbac:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  92cbb0:	31 d2                	xor    edx,edx
  92cbb2:	62 f1 fd 48 28 35 44 	vmovapd zmm6,ZMMWORD PTR [rip+0xffffffffff754c44]        # 81800 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xecb0>
  92cbb9:	4c 75 ff 
  92cbbc:	c4 41 39 57 c0       	vxorpd xmm8,xmm8,xmm8
  92cbc1:	c5 7d 28 15 37 a1 74 	vmovapd ymm10,YMMWORD PTR [rip+0xffffffffff74a137]        # 76d00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x41b0>
  92cbc8:	ff 
  92cbc9:	62 71 fd 48 28 1d 6d 	vmovapd zmm11,ZMMWORD PTR [rip+0xffffffffff754c6d]        # 81840 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xecf0>
  92cbd0:	4c 75 ff 
  92cbd3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  92cbda:	84 00 00 00 00 00 
  92cbe0:	62 71 fd 48 10 24 17 	vmovupd zmm12,ZMMWORD PTR [rdi+rdx*1]
  92cbe7:	62 71 fd 48 10 74 17 	vmovupd zmm14,ZMMWORD PTR [rdi+rdx*1+0x40]
  92cbee:	01 
  92cbef:	62 71 fd 48 10 7c 17 	vmovupd zmm15,ZMMWORD PTR [rdi+rdx*1+0x80]
  92cbf6:	02 
  92cbf7:	62 e1 fd 48 10 44 17 	vmovupd zmm16,ZMMWORD PTR [rdi+rdx*1+0xc0]
  92cbfe:	03 
  92cbff:	62 51 fd 48 28 ec    	vmovapd zmm13,zmm12
  92cc05:	62 f1 fd 48 28 25 b1 	vmovapd zmm4,ZMMWORD PTR [rip+0xffffffffff754bb1]        # 817c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xec70>
  92cc0c:	4b 75 ff 
  92cc0f:	62 52 dd 48 7f ee    	vpermt2pd zmm13,zmm4,zmm14
  92cc15:	62 52 cd 48 7f e6    	vpermt2pd zmm12,zmm6,zmm14
  92cc1b:	62 c1 fd 48 28 cf    	vmovapd zmm17,zmm15
  92cc21:	62 a2 dd 48 7f c8    	vpermt2pd zmm17,zmm4,zmm16
  92cc27:	62 32 cd 48 7f f8    	vpermt2pd zmm15,zmm6,zmm16
  92cc2d:	62 e1 fd 48 10 44 17 	vmovupd zmm16,ZMMWORD PTR [rdi+rdx*1+0x100]
  92cc34:	04 
  92cc35:	62 71 fd 48 10 74 17 	vmovupd zmm14,ZMMWORD PTR [rdi+rdx*1+0x140]
  92cc3c:	05 
  92cc3d:	62 a1 fd 48 28 d0    	vmovapd zmm18,zmm16
  92cc43:	62 c2 dd 48 7f d6    	vpermt2pd zmm18,zmm4,zmm14
  92cc49:	62 c2 cd 48 7f c6    	vpermt2pd zmm16,zmm6,zmm14
  92cc4f:	62 e1 fd 48 10 64 17 	vmovupd zmm20,ZMMWORD PTR [rdi+rdx*1+0x180]
  92cc56:	06 
  92cc57:	62 71 fd 48 10 74 17 	vmovupd zmm14,ZMMWORD PTR [rdi+rdx*1+0x1c0]
  92cc5e:	07 
  92cc5f:	62 a1 fd 48 28 ec    	vmovapd zmm21,zmm20
  92cc65:	62 c2 dd 48 7f ee    	vpermt2pd zmm21,zmm4,zmm14
  92cc6b:	62 c2 cd 48 7f e6    	vpermt2pd zmm20,zmm6,zmm14
  92cc71:	62 e1 fd 48 10 74 17 	vmovupd zmm22,ZMMWORD PTR [rdi+rdx*1+0x200]
  92cc78:	08 
  92cc79:	62 71 fd 48 10 74 17 	vmovupd zmm14,ZMMWORD PTR [rdi+rdx*1+0x240]
  92cc80:	09 
  92cc81:	62 a1 fd 48 28 fe    	vmovapd zmm23,zmm22
  92cc87:	62 c2 dd 48 7f fe    	vpermt2pd zmm23,zmm4,zmm14
  92cc8d:	62 c2 cd 48 7f f6    	vpermt2pd zmm22,zmm6,zmm14
  92cc93:	62 61 fd 48 10 44 17 	vmovupd zmm24,ZMMWORD PTR [rdi+rdx*1+0x280]
  92cc9a:	0a 
  92cc9b:	62 71 fd 48 10 74 17 	vmovupd zmm14,ZMMWORD PTR [rdi+rdx*1+0x2c0]
  92cca2:	0b 
  92cca3:	62 01 fd 48 28 c8    	vmovapd zmm25,zmm24
  92cca9:	62 42 dd 48 7f ce    	vpermt2pd zmm25,zmm4,zmm14
  92ccaf:	62 42 cd 48 7f c6    	vpermt2pd zmm24,zmm6,zmm14
  92ccb5:	62 a1 fd 40 58 de    	vaddpd zmm19,zmm16,zmm22
  92ccbb:	62 21 9d 48 58 db    	vaddpd zmm27,zmm12,zmm19
  92ccc1:	62 41 bd 40 58 d7    	vaddpd zmm26,zmm24,zmm15
  92ccc7:	62 01 dd 40 58 e2    	vaddpd zmm28,zmm20,zmm26
  92cccd:	62 11 a5 40 58 f4    	vaddpd zmm14,zmm27,zmm28
  92ccd3:	62 21 ed 40 58 ef    	vaddpd zmm29,zmm18,zmm23
  92ccd9:	62 01 95 48 58 f5    	vaddpd zmm30,zmm13,zmm29
  92ccdf:	62 21 b5 40 58 f9    	vaddpd zmm31,zmm25,zmm17
  92cce5:	62 91 d5 40 58 ef    	vaddpd zmm5,zmm21,zmm31
  92cceb:	62 f2 fd 48 19 25 a3 	vbroadcastsd zmm4,QWORD PTR [rip+0xffffffffff747da3]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  92ccf2:	7d 74 ff 
  92ccf5:	62 32 dd 48 bc e3    	vfnmadd231pd zmm12,zmm4,zmm19
  92ccfb:	62 e1 8d 40 58 dd    	vaddpd zmm19,zmm30,zmm5
  92cd01:	62 a1 ed 40 5c d7    	vsubpd zmm18,zmm18,zmm23
  92cd07:	62 e2 fd 48 19 3d 0f 	vbroadcastsd zmm23,QWORD PTR [rip+0xffffffffff747f0f]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  92cd0e:	7f 74 ff 
  92cd11:	62 a1 ed 40 59 d7    	vmulpd zmm18,zmm18,zmm23
  92cd17:	62 b1 9d 48 58 fa    	vaddpd zmm7,zmm12,zmm18
  92cd1d:	62 82 dd 48 bc e2    	vfnmadd231pd zmm20,zmm4,zmm26
  92cd23:	62 a1 b5 40 5c c9    	vsubpd zmm17,zmm25,zmm17
  92cd29:	62 a1 f5 40 59 cf    	vmulpd zmm17,zmm17,zmm23
  92cd2f:	62 21 dd 40 58 c9    	vaddpd zmm25,zmm20,zmm17
  92cd35:	62 11 c5 48 5c c9    	vsubpd zmm9,zmm7,zmm25
  92cd3b:	62 12 dd 48 bc ed    	vfnmadd231pd zmm13,zmm4,zmm29
  92cd41:	62 a1 fd 40 5c c6    	vsubpd zmm16,zmm16,zmm22
  92cd47:	62 a1 fd 40 59 c7    	vmulpd zmm16,zmm16,zmm23
  92cd4d:	62 a1 95 48 5c f0    	vsubpd zmm22,zmm13,zmm16
  92cd53:	62 82 dd 48 bc ef    	vfnmadd231pd zmm21,zmm4,zmm31
  92cd59:	62 51 bd 40 5c ff    	vsubpd zmm15,zmm24,zmm15
  92cd5f:	62 31 85 48 59 ff    	vmulpd zmm15,zmm15,zmm23
  92cd65:	62 41 d5 40 5c ef    	vsubpd zmm29,zmm21,zmm15
  92cd6b:	62 81 cd 40 5c fd    	vsubpd zmm23,zmm22,zmm29
  92cd71:	62 31 9d 48 5c e2    	vsubpd zmm12,zmm12,zmm18
  92cd77:	62 a1 dd 40 5c c9    	vsubpd zmm17,zmm20,zmm17
  92cd7d:	62 a1 9d 48 58 d1    	vaddpd zmm18,zmm12,zmm17
  92cd83:	62 51 fd 40 58 ed    	vaddpd zmm13,zmm16,zmm13
  92cd89:	62 31 85 48 58 fd    	vaddpd zmm15,zmm15,zmm21
  92cd8f:	62 41 95 48 58 d7    	vaddpd zmm26,zmm13,zmm15
  92cd95:	62 81 a5 40 5c c4    	vsubpd zmm16,zmm27,zmm28
  92cd9b:	62 61 8d 40 5c c5    	vsubpd zmm24,zmm30,zmm5
  92cda1:	62 91 c5 48 58 e9    	vaddpd zmm5,zmm7,zmm25
  92cda7:	62 91 cd 40 58 fd    	vaddpd zmm7,zmm22,zmm29
  92cdad:	62 31 9d 48 5c e1    	vsubpd zmm12,zmm12,zmm17
  92cdb3:	62 c1 95 48 5c e7    	vsubpd zmm20,zmm13,zmm15
  92cdb9:	62 51 fd 48 28 fe    	vmovapd zmm15,zmm14
  92cdbf:	62 72 fd 48 7f fd    	vpermt2pd zmm15,zmm0,zmm5
  92cdc5:	62 72 f5 48 7f f5    	vpermt2pd zmm14,zmm1,zmm5
  92cdcb:	62 d1 fd 48 28 e9    	vmovapd zmm5,zmm9
  92cdd1:	62 d2 fd 48 7f ec    	vpermt2pd zmm5,zmm0,zmm12
  92cdd7:	62 52 f5 48 7f cc    	vpermt2pd zmm9,zmm1,zmm12
  92cddd:	62 31 fd 48 28 ea    	vmovapd zmm13,zmm18
  92cde3:	62 52 fd 48 7f e8    	vpermt2pd zmm13,zmm0,zmm8
  92cde9:	62 c2 f5 48 7f d0    	vpermt2pd zmm18,zmm1,zmm8
  92cdef:	62 a1 fd 48 28 c8    	vmovapd zmm17,zmm16
  92cdf5:	62 c2 fd 48 7f c8    	vpermt2pd zmm17,zmm0,zmm8
  92cdfb:	62 c2 f5 48 7f c0    	vpermt2pd zmm16,zmm1,zmm8
  92ce01:	62 51 fd 48 28 e7    	vmovapd zmm12,zmm15
  92ce07:	62 52 ed 48 7f e5    	vpermt2pd zmm12,zmm2,zmm13
  92ce0d:	62 52 e5 48 7f fd    	vpermt2pd zmm15,zmm3,zmm13
  92ce13:	62 71 fd 48 28 ed    	vmovapd zmm13,zmm5
  92ce19:	62 32 ed 48 7f e9    	vpermt2pd zmm13,zmm2,zmm17
  92ce1f:	62 b2 e5 48 7f e9    	vpermt2pd zmm5,zmm3,zmm17
  92ce25:	62 c1 fd 48 28 ee    	vmovapd zmm21,zmm14
  92ce2b:	62 a2 ed 48 7f ea    	vpermt2pd zmm21,zmm2,zmm18
  92ce31:	62 32 e5 48 7f f2    	vpermt2pd zmm14,zmm3,zmm18
  92ce37:	62 c1 fd 48 28 d1    	vmovapd zmm18,zmm9
  92ce3d:	62 a2 ed 48 7f d0    	vpermt2pd zmm18,zmm2,zmm16
  92ce43:	62 32 e5 48 7f c8    	vpermt2pd zmm9,zmm3,zmm16
  92ce49:	62 c1 9d 48 15 cd    	vunpckhpd zmm17,zmm12,zmm13
  92ce4f:	62 e1 85 48 14 f5    	vunpcklpd zmm22,zmm15,zmm5
  92ce55:	62 71 85 48 15 fd    	vunpckhpd zmm15,zmm15,zmm5
  92ce5b:	62 21 d5 40 14 ca    	vunpcklpd zmm25,zmm21,zmm18
  92ce61:	62 a1 d5 40 15 c2    	vunpckhpd zmm16,zmm21,zmm18
  92ce67:	62 c1 8d 48 14 e9    	vunpcklpd zmm21,zmm14,zmm9
  92ce6d:	62 51 8d 48 15 f1    	vunpckhpd zmm14,zmm14,zmm9
  92ce73:	62 b1 fd 48 28 eb    	vmovapd zmm5,zmm19
  92ce79:	62 f2 fd 48 7f ef    	vpermt2pd zmm5,zmm0,zmm7
  92ce7f:	62 e2 f5 48 7f df    	vpermt2pd zmm19,zmm1,zmm7
  92ce85:	62 b1 fd 48 28 ff    	vmovapd zmm7,zmm23
  92ce8b:	62 b2 fd 48 7f fc    	vpermt2pd zmm7,zmm0,zmm20
  92ce91:	62 a2 f5 48 7f fc    	vpermt2pd zmm23,zmm1,zmm20
  92ce97:	62 11 fd 48 28 ca    	vmovapd zmm9,zmm26
  92ce9d:	62 52 fd 48 7f c8    	vpermt2pd zmm9,zmm0,zmm8
  92cea3:	62 42 f5 48 7f d0    	vpermt2pd zmm26,zmm1,zmm8
  92cea9:	62 01 fd 48 28 d8    	vmovapd zmm27,zmm24
  92ceaf:	62 42 fd 48 7f d8    	vpermt2pd zmm27,zmm0,zmm8
  92ceb5:	62 42 f5 48 7f c0    	vpermt2pd zmm24,zmm1,zmm8
  92cebb:	62 e1 fd 48 28 d5    	vmovapd zmm18,zmm5
  92cec1:	62 c2 ed 48 7f d1    	vpermt2pd zmm18,zmm2,zmm9
  92cec7:	62 d2 e5 48 7f e9    	vpermt2pd zmm5,zmm3,zmm9
  92cecd:	62 e1 fd 48 28 e7    	vmovapd zmm20,zmm7
  92ced3:	62 82 ed 48 7f e3    	vpermt2pd zmm20,zmm2,zmm27
  92ced9:	62 92 e5 48 7f fb    	vpermt2pd zmm7,zmm3,zmm27
  92cedf:	62 31 fd 48 28 cb    	vmovapd zmm9,zmm19
  92cee5:	62 12 ed 48 7f ca    	vpermt2pd zmm9,zmm2,zmm26
  92ceeb:	62 82 e5 48 7f da    	vpermt2pd zmm19,zmm3,zmm26
  92cef1:	62 21 fd 48 28 df    	vmovapd zmm27,zmm23
  92cef7:	62 02 ed 48 7f d8    	vpermt2pd zmm27,zmm2,zmm24
  92cefd:	62 82 e5 48 7f f8    	vpermt2pd zmm23,zmm3,zmm24
  92cf03:	62 21 ed 40 15 e4    	vunpckhpd zmm28,zmm18,zmm20
  92cf09:	62 61 d5 48 14 ef    	vunpcklpd zmm29,zmm5,zmm7
  92cf0f:	62 61 d5 48 15 d7    	vunpckhpd zmm26,zmm5,zmm7
  92cf15:	62 91 b5 48 14 eb    	vunpcklpd zmm5,zmm9,zmm27
  92cf1b:	62 01 b5 48 15 db    	vunpckhpd zmm27,zmm9,zmm27
  92cf21:	62 21 e5 40 15 c7    	vunpckhpd zmm24,zmm19,zmm23
  92cf27:	62 b1 e5 40 14 ff    	vunpcklpd zmm7,zmm19,zmm23
  92cf2d:	62 71 fd 48 10 49 08 	vmovupd zmm9,ZMMWORD PTR [rcx+0x200]
  92cf34:	62 61 fd 48 10 71 09 	vmovupd zmm30,ZMMWORD PTR [rcx+0x240]
  92cf3b:	62 c1 b5 40 59 d9    	vmulpd zmm19,zmm25,zmm9
  92cf41:	62 82 d5 48 bc de    	vfnmadd231pd zmm19,zmm5,zmm30
  92cf47:	62 c1 d5 48 59 f9    	vmulpd zmm23,zmm5,zmm9
  92cf4d:	62 f1 fd 48 10 69 04 	vmovupd zmm5,ZMMWORD PTR [rcx+0x100]
  92cf54:	62 82 b5 40 b8 fe    	vfmadd231pd zmm23,zmm25,zmm30
  92cf5a:	62 71 fd 48 10 49 05 	vmovupd zmm9,ZMMWORD PTR [rcx+0x140]
  92cf61:	62 61 cd 40 59 cd    	vmulpd zmm25,zmm22,zmm5
  92cf67:	62 42 95 40 bc c9    	vfnmadd231pd zmm25,zmm29,zmm9
  92cf6d:	62 f1 95 40 59 ed    	vmulpd zmm5,zmm29,zmm5
  92cf73:	62 61 fd 48 10 69 0c 	vmovupd zmm29,ZMMWORD PTR [rcx+0x300]
  92cf7a:	62 d2 cd 40 b8 e9    	vfmadd231pd zmm5,zmm22,zmm9
  92cf80:	62 71 fd 48 10 49 0d 	vmovupd zmm9,ZMMWORD PTR [rcx+0x340]
  92cf87:	62 81 d5 40 59 f5    	vmulpd zmm22,zmm21,zmm29
  92cf8d:	62 c2 c5 48 bc f1    	vfnmadd231pd zmm22,zmm7,zmm9
  92cf93:	62 91 c5 48 59 fd    	vmulpd zmm7,zmm7,zmm29
  92cf99:	62 61 fd 48 10 69 02 	vmovupd zmm29,ZMMWORD PTR [rcx+0x80]
  92cfa0:	62 d2 d5 40 b8 f9    	vfmadd231pd zmm7,zmm21,zmm9
  92cfa6:	62 71 fd 48 10 49 03 	vmovupd zmm9,ZMMWORD PTR [rcx+0xc0]
  92cfad:	62 81 f5 40 59 ed    	vmulpd zmm21,zmm17,zmm29
  92cfb3:	62 c2 9d 40 bc e9    	vfnmadd231pd zmm21,zmm28,zmm9
  92cfb9:	62 01 9d 40 59 e5    	vmulpd zmm28,zmm28,zmm29
  92cfbf:	62 61 fd 48 10 69 0a 	vmovupd zmm29,ZMMWORD PTR [rcx+0x280]
  92cfc6:	62 42 f5 40 b8 e1    	vfmadd231pd zmm28,zmm17,zmm9
  92cfcc:	62 71 fd 48 10 49 0b 	vmovupd zmm9,ZMMWORD PTR [rcx+0x2c0]
  92cfd3:	62 81 fd 40 59 cd    	vmulpd zmm17,zmm16,zmm29
  92cfd9:	62 c2 a5 40 bc c9    	vfnmadd231pd zmm17,zmm27,zmm9
  92cfdf:	62 01 a5 40 59 dd    	vmulpd zmm27,zmm27,zmm29
  92cfe5:	62 61 fd 48 10 69 06 	vmovupd zmm29,ZMMWORD PTR [rcx+0x180]
  92cfec:	62 42 fd 40 b8 d9    	vfmadd231pd zmm27,zmm16,zmm9
  92cff2:	62 71 fd 48 10 49 07 	vmovupd zmm9,ZMMWORD PTR [rcx+0x1c0]
  92cff9:	62 81 85 48 59 c5    	vmulpd zmm16,zmm15,zmm29
  92cfff:	62 c2 ad 40 bc c1    	vfnmadd231pd zmm16,zmm26,zmm9
  92d005:	62 01 ad 40 59 d5    	vmulpd zmm26,zmm26,zmm29
  92d00b:	62 61 fd 48 10 69 0e 	vmovupd zmm29,ZMMWORD PTR [rcx+0x380]
  92d012:	62 42 85 48 b8 d1    	vfmadd231pd zmm26,zmm15,zmm9
  92d018:	62 71 fd 48 10 49 0f 	vmovupd zmm9,ZMMWORD PTR [rcx+0x3c0]
  92d01f:	62 11 8d 48 59 fd    	vmulpd zmm15,zmm14,zmm29
  92d025:	62 52 bd 40 bc f9    	vfnmadd231pd zmm15,zmm24,zmm9
  92d02b:	62 01 bd 40 59 c5    	vmulpd zmm24,zmm24,zmm29
  92d031:	62 42 8d 48 b8 c1    	vfmadd231pd zmm24,zmm14,zmm9
  92d037:	62 51 9d 48 14 cd    	vunpcklpd zmm9,zmm12,zmm13
  92d03d:	62 31 ed 40 14 e4    	vunpcklpd zmm12,zmm18,zmm20
  92d043:	62 31 b5 48 58 eb    	vaddpd zmm13,zmm9,zmm19
  92d049:	62 31 b5 48 5c cb    	vsubpd zmm9,zmm9,zmm19
  92d04f:	62 71 d5 48 58 f7    	vaddpd zmm14,zmm5,zmm7
  92d055:	62 f1 d5 48 5c ef    	vsubpd zmm5,zmm5,zmm7
  92d05b:	62 b1 d5 40 58 f9    	vaddpd zmm7,zmm21,zmm17
  92d061:	62 a1 d5 40 5c c9    	vsubpd zmm17,zmm21,zmm17
  92d067:	62 81 9d 40 58 d3    	vaddpd zmm18,zmm28,zmm27
  92d06d:	62 81 9d 40 5c db    	vsubpd zmm19,zmm28,zmm27
  92d073:	62 81 ad 40 58 e0    	vaddpd zmm20,zmm26,zmm24
  92d079:	62 81 ad 40 5c e8    	vsubpd zmm21,zmm26,zmm24
  92d07f:	62 41 fd 40 58 c7    	vaddpd zmm24,zmm16,zmm15
  92d085:	62 51 fd 40 5c ff    	vsubpd zmm15,zmm16,zmm15
  92d08b:	62 c1 c5 40 58 c4    	vaddpd zmm16,zmm23,zmm12
  92d091:	62 31 9d 48 5c e7    	vsubpd zmm12,zmm12,zmm23
  92d097:	62 a1 b5 40 58 fe    	vaddpd zmm23,zmm25,zmm22
  92d09d:	62 81 cd 40 5c f1    	vsubpd zmm22,zmm22,zmm25
  92d0a3:	62 21 f5 40 58 cb    	vaddpd zmm25,zmm17,zmm19
  92d0a9:	62 a1 e5 40 5c c9    	vsubpd zmm17,zmm19,zmm17
  92d0af:	62 c1 d5 40 5c df    	vsubpd zmm19,zmm21,zmm15
  92d0b5:	62 31 85 48 58 fd    	vaddpd zmm15,zmm15,zmm21
  92d0bb:	62 a1 95 48 58 ef    	vaddpd zmm21,zmm13,zmm23
  92d0c1:	62 31 95 48 5c ef    	vsubpd zmm13,zmm13,zmm23
  92d0c7:	62 a1 ed 40 58 fc    	vaddpd zmm23,zmm18,zmm20
  92d0cd:	62 a1 ed 40 5c d4    	vsubpd zmm18,zmm18,zmm20
  92d0d3:	62 a1 8d 48 58 e0    	vaddpd zmm20,zmm14,zmm16
  92d0d9:	62 51 fd 40 5c f6    	vsubpd zmm14,zmm16,zmm14
  92d0df:	62 81 c5 48 58 c0    	vaddpd zmm16,zmm7,zmm24
  92d0e5:	62 f1 bd 40 5c ff    	vsubpd zmm7,zmm24,zmm7
  92d0eb:	62 61 b5 48 58 c5    	vaddpd zmm24,zmm9,zmm5
  92d0f1:	62 f2 fd 48 19 25 a5 	vbroadcastsd zmm4,QWORD PTR [rip+0xffffffffff747da5]        # 74ea0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2350>
  92d0f8:	7d 74 ff 
  92d0fb:	62 61 b5 40 59 cc    	vmulpd zmm25,zmm25,zmm4
  92d101:	62 e1 e5 40 59 dc    	vmulpd zmm19,zmm19,zmm4
  92d107:	62 e1 f5 40 59 cc    	vmulpd zmm17,zmm17,zmm4
  92d10d:	62 71 85 48 59 fc    	vmulpd zmm15,zmm15,zmm4
  92d113:	62 f1 b5 48 5c ed    	vsubpd zmm5,zmm9,zmm5
  92d119:	62 51 f5 40 5c cf    	vsubpd zmm9,zmm17,zmm15
  92d11f:	62 51 f5 40 58 ff    	vaddpd zmm15,zmm17,zmm15
  92d125:	62 c1 cd 40 58 cc    	vaddpd zmm17,zmm22,zmm12
  92d12b:	62 31 9d 48 5c e6    	vsubpd zmm12,zmm12,zmm22
  92d131:	62 a1 b5 40 58 f3    	vaddpd zmm22,zmm25,zmm19
  92d137:	62 81 e5 40 5c d9    	vsubpd zmm19,zmm19,zmm25
  92d13d:	62 21 bd 40 58 ce    	vaddpd zmm25,zmm24,zmm22
  92d143:	62 a1 bd 40 5c f6    	vsubpd zmm22,zmm24,zmm22
  92d149:	62 41 f5 40 58 c1    	vaddpd zmm24,zmm17,zmm9
  92d14f:	62 51 f5 40 5c c9    	vsubpd zmm9,zmm17,zmm9
  92d155:	62 a1 95 48 58 ca    	vaddpd zmm17,zmm13,zmm18
  92d15b:	62 31 95 48 5c ea    	vsubpd zmm13,zmm13,zmm18
  92d161:	62 e1 8d 48 58 d7    	vaddpd zmm18,zmm14,zmm7
  92d167:	62 f1 8d 48 5c ff    	vsubpd zmm7,zmm14,zmm7
  92d16d:	62 51 d5 48 58 f7    	vaddpd zmm14,zmm5,zmm15
  92d173:	62 d1 d5 48 5c ef    	vsubpd zmm5,zmm5,zmm15
  92d179:	62 31 9d 48 58 fb    	vaddpd zmm15,zmm12,zmm19
  92d17f:	62 31 9d 48 5c e3    	vsubpd zmm12,zmm12,zmm19
  92d185:	62 a1 dd 40 5c df    	vsubpd zmm19,zmm20,zmm23
  92d18b:	62 a1 dd 40 58 e7    	vaddpd zmm20,zmm20,zmm23
  92d191:	62 a1 d5 40 5c f8    	vsubpd zmm23,zmm21,zmm16
  92d197:	62 a1 d5 40 58 c0    	vaddpd zmm16,zmm21,zmm16
  92d19d:	62 a1 fd 48 28 ec    	vmovapd zmm21,zmm20
  92d1a3:	62 a2 ad 48 7f e8    	vpermt2pd zmm21,zmm10,zmm16
  92d1a9:	62 a2 a5 48 7f e0    	vpermt2pd zmm20,zmm11,zmm16
  92d1af:	62 e1 fd 48 11 24 16 	vmovupd ZMMWORD PTR [rsi+rdx*1],zmm20
  92d1b6:	62 e1 fd 28 11 6c 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x40],ymm21
  92d1bd:	02 
  92d1be:	62 81 fd 48 28 c0    	vmovapd zmm16,zmm24
  92d1c4:	62 82 ad 48 7f c1    	vpermt2pd zmm16,zmm10,zmm25
  92d1ca:	62 02 a5 48 7f c1    	vpermt2pd zmm24,zmm11,zmm25
  92d1d0:	62 61 fd 48 11 84 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x60],zmm24
  92d1d7:	60 00 00 00 
  92d1db:	62 e1 fd 28 11 44 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0xa0],ymm16
  92d1e2:	05 
  92d1e3:	62 a1 fd 48 28 c2    	vmovapd zmm16,zmm18
  92d1e9:	62 a2 ad 48 7f c1    	vpermt2pd zmm16,zmm10,zmm17
  92d1ef:	62 a2 a5 48 7f d1    	vpermt2pd zmm18,zmm11,zmm17
  92d1f5:	62 e1 fd 48 11 54 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0xc0],zmm18
  92d1fc:	03 
  92d1fd:	62 e1 fd 28 11 44 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x100],ymm16
  92d204:	08 
  92d205:	62 c1 fd 48 28 c7    	vmovapd zmm16,zmm15
  92d20b:	62 c2 ad 48 7f c6    	vpermt2pd zmm16,zmm10,zmm14
  92d211:	62 52 a5 48 7f fe    	vpermt2pd zmm15,zmm11,zmm14
  92d217:	62 71 fd 48 11 bc 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x120],zmm15
  92d21e:	20 01 00 00 
  92d222:	62 e1 fd 28 11 44 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x160],ymm16
  92d229:	0b 
  92d22a:	62 31 fd 48 28 f3    	vmovapd zmm14,zmm19
  92d230:	62 32 ad 48 7f f7    	vpermt2pd zmm14,zmm10,zmm23
  92d236:	62 a2 a5 48 7f df    	vpermt2pd zmm19,zmm11,zmm23
  92d23c:	62 e1 fd 48 11 5c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x180],zmm19
  92d243:	06 
  92d244:	c5 7d 11 b4 16 c0 01 	vmovupd YMMWORD PTR [rsi+rdx*1+0x1c0],ymm14
  92d24b:	00 00 
  92d24d:	62 51 fd 48 28 f1    	vmovapd zmm14,zmm9
  92d253:	62 32 ad 48 7f f6    	vpermt2pd zmm14,zmm10,zmm22
  92d259:	62 32 a5 48 7f ce    	vpermt2pd zmm9,zmm11,zmm22
  92d25f:	62 71 fd 48 11 8c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x1e0],zmm9
  92d266:	e0 01 00 00 
  92d26a:	c5 7d 11 b4 16 20 02 	vmovupd YMMWORD PTR [rsi+rdx*1+0x220],ymm14
  92d271:	00 00 
  92d273:	62 71 fd 48 28 cf    	vmovapd zmm9,zmm7
  92d279:	62 52 ad 48 7f cd    	vpermt2pd zmm9,zmm10,zmm13
  92d27f:	62 d2 a5 48 7f fd    	vpermt2pd zmm7,zmm11,zmm13
  92d285:	62 f1 fd 48 11 7c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x240],zmm7
  92d28c:	09 
  92d28d:	c5 7d 11 8c 16 80 02 	vmovupd YMMWORD PTR [rsi+rdx*1+0x280],ymm9
  92d294:	00 00 
  92d296:	62 d1 fd 48 28 fc    	vmovapd zmm7,zmm12
  92d29c:	62 f2 ad 48 7f fd    	vpermt2pd zmm7,zmm10,zmm5
  92d2a2:	62 72 a5 48 7f e5    	vpermt2pd zmm12,zmm11,zmm5
  92d2a8:	62 71 fd 48 11 a4 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x2a0],zmm12
  92d2af:	a0 02 00 00 
  92d2b3:	c5 fd 11 bc 16 e0 02 	vmovupd YMMWORD PTR [rsi+rdx*1+0x2e0],ymm7
  92d2ba:	00 00 
  92d2bc:	48 81 c2 00 03 00 00 	add    rdx,0x300
  92d2c3:	48 39 d0             	cmp    rax,rdx
  92d2c6:	0f 85 14 f9 ff ff    	jne    92cbe0 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle+0x60>
  92d2cc:	c5 f8 77             	vzeroupper
  92d2cf:	c3                   	ret
