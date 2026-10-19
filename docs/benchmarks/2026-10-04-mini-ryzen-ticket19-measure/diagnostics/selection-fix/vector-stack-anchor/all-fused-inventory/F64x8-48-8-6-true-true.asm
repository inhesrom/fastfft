
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

000000000096cd80 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  96cd80:	62 f1 fd 48 10 05 de 	vmovupd zmm0,ZMMWORD PTR [rip+0xffffffffff759fde]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  96cd87:	9f 75 ff 
  96cd8a:	62 f1 fd 48 10 0d 14 	vmovupd zmm1,ZMMWORD PTR [rip+0xffffffffff75a014]        # c6da8 <crc32fast::table::CRC32_TABLE+0x9124>
  96cd91:	a0 75 ff 
  96cd94:	62 f1 fd 48 10 15 4a 	vmovupd zmm2,ZMMWORD PTR [rip+0xffffffffff759f4a]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  96cd9b:	9f 75 ff 
  96cd9e:	62 f1 fd 48 10 1d 80 	vmovupd zmm3,ZMMWORD PTR [rip+0xffffffffff759f80]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  96cda5:	9f 75 ff 
  96cda8:	48 c1 e2 08          	shl    rdx,0x8
  96cdac:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  96cdb0:	31 d2                	xor    edx,edx
  96cdb2:	62 f1 fd 48 28 25 04 	vmovapd zmm4,ZMMWORD PTR [rip+0xffffffffff719c04]        # 869c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x13e70>
  96cdb9:	9c 71 ff 
  96cdbc:	62 f1 fd 48 28 2d 3a 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff719c3a]        # 86a00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x13eb0>
  96cdc3:	9c 71 ff 
  96cdc6:	62 f2 fd 48 19 35 d0 	vbroadcastsd zmm6,QWORD PTR [rip+0xffffffffff7080d0]        # 74ea0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2350>
  96cdcd:	80 70 ff 
  96cdd0:	62 f2 fd 48 19 3d 46 	vbroadcastsd zmm7,QWORD PTR [rip+0xffffffffff707e46]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  96cdd7:	7e 70 ff 
  96cdda:	62 72 fd 48 19 05 b4 	vbroadcastsd zmm8,QWORD PTR [rip+0xffffffffff707cb4]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  96cde1:	7c 70 ff 
  96cde4:	62 71 fd 48 28 0d 52 	vmovapd zmm9,ZMMWORD PTR [rip+0xffffffffff719c52]        # 86a40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x13ef0>
  96cdeb:	9c 71 ff 
  96cdee:	62 71 fd 48 28 15 88 	vmovapd zmm10,ZMMWORD PTR [rip+0xffffffffff719c88]        # 86a80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x13f30>
  96cdf5:	9c 71 ff 
  96cdf8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  96cdff:	00 
  96ce00:	62 71 fd 48 10 2c 17 	vmovupd zmm13,ZMMWORD PTR [rdi+rdx*1]
  96ce07:	c5 7d 10 64 17 40    	vmovupd ymm12,YMMWORD PTR [rdi+rdx*1+0x40]
  96ce0d:	62 51 fd 48 28 dd    	vmovapd zmm11,zmm13
  96ce13:	62 52 dd 48 7f dc    	vpermt2pd zmm11,zmm4,zmm12
  96ce19:	62 52 d5 48 7f ec    	vpermt2pd zmm13,zmm5,zmm12
  96ce1f:	62 71 fd 48 10 b4 17 	vmovupd zmm14,ZMMWORD PTR [rdi+rdx*1+0x60]
  96ce26:	60 00 00 00 
  96ce2a:	c5 7d 10 a4 17 a0 00 	vmovupd ymm12,YMMWORD PTR [rdi+rdx*1+0xa0]
  96ce31:	00 00 
  96ce33:	62 51 fd 48 28 fe    	vmovapd zmm15,zmm14
  96ce39:	62 52 dd 48 7f fc    	vpermt2pd zmm15,zmm4,zmm12
  96ce3f:	62 52 d5 48 7f f4    	vpermt2pd zmm14,zmm5,zmm12
  96ce45:	62 71 fd 48 10 64 17 	vmovupd zmm12,ZMMWORD PTR [rdi+rdx*1+0xc0]
  96ce4c:	03 
  96ce4d:	62 e1 fd 28 10 44 17 	vmovupd ymm16,YMMWORD PTR [rdi+rdx*1+0x100]
  96ce54:	08 
  96ce55:	62 c1 fd 48 28 cc    	vmovapd zmm17,zmm12
  96ce5b:	62 a2 dd 48 7f c8    	vpermt2pd zmm17,zmm4,zmm16
  96ce61:	62 32 d5 48 7f e0    	vpermt2pd zmm12,zmm5,zmm16
  96ce67:	62 e1 fd 48 10 84 17 	vmovupd zmm16,ZMMWORD PTR [rdi+rdx*1+0x120]
  96ce6e:	20 01 00 00 
  96ce72:	62 e1 fd 28 10 54 17 	vmovupd ymm18,YMMWORD PTR [rdi+rdx*1+0x160]
  96ce79:	0b 
  96ce7a:	62 a1 fd 48 28 d8    	vmovapd zmm19,zmm16
  96ce80:	62 a2 dd 48 7f da    	vpermt2pd zmm19,zmm4,zmm18
  96ce86:	62 a2 d5 48 7f c2    	vpermt2pd zmm16,zmm5,zmm18
  96ce8c:	62 e1 fd 48 10 54 17 	vmovupd zmm18,ZMMWORD PTR [rdi+rdx*1+0x180]
  96ce93:	06 
  96ce94:	62 e1 fd 28 10 64 17 	vmovupd ymm20,YMMWORD PTR [rdi+rdx*1+0x1c0]
  96ce9b:	0e 
  96ce9c:	62 a1 fd 48 28 ea    	vmovapd zmm21,zmm18
  96cea2:	62 a2 dd 48 7f ec    	vpermt2pd zmm21,zmm4,zmm20
  96cea8:	62 a2 d5 48 7f d4    	vpermt2pd zmm18,zmm5,zmm20
  96ceae:	62 e1 fd 48 10 a4 17 	vmovupd zmm20,ZMMWORD PTR [rdi+rdx*1+0x1e0]
  96ceb5:	e0 01 00 00 
  96ceb9:	62 e1 fd 28 10 74 17 	vmovupd ymm22,YMMWORD PTR [rdi+rdx*1+0x220]
  96cec0:	11 
  96cec1:	62 a1 fd 48 28 fc    	vmovapd zmm23,zmm20
  96cec7:	62 a2 dd 48 7f fe    	vpermt2pd zmm23,zmm4,zmm22
  96cecd:	62 a2 d5 48 7f e6    	vpermt2pd zmm20,zmm5,zmm22
  96ced3:	62 e1 fd 48 10 74 17 	vmovupd zmm22,ZMMWORD PTR [rdi+rdx*1+0x240]
  96ceda:	09 
  96cedb:	62 61 fd 28 10 44 17 	vmovupd ymm24,YMMWORD PTR [rdi+rdx*1+0x280]
  96cee2:	14 
  96cee3:	62 21 fd 48 28 ce    	vmovapd zmm25,zmm22
  96cee9:	62 02 dd 48 7f c8    	vpermt2pd zmm25,zmm4,zmm24
  96ceef:	62 82 d5 48 7f f0    	vpermt2pd zmm22,zmm5,zmm24
  96cef5:	62 61 fd 48 10 84 17 	vmovupd zmm24,ZMMWORD PTR [rdi+rdx*1+0x2a0]
  96cefc:	a0 02 00 00 
  96cf00:	62 61 fd 28 10 54 17 	vmovupd ymm26,YMMWORD PTR [rdi+rdx*1+0x2e0]
  96cf07:	17 
  96cf08:	62 01 fd 48 28 d8    	vmovapd zmm27,zmm24
  96cf0e:	62 02 dd 48 7f da    	vpermt2pd zmm27,zmm4,zmm26
  96cf14:	62 02 d5 48 7f c2    	vpermt2pd zmm24,zmm5,zmm26
  96cf1a:	62 21 95 48 58 d2    	vaddpd zmm26,zmm13,zmm18
  96cf20:	62 31 95 48 5c ea    	vsubpd zmm13,zmm13,zmm18
  96cf26:	62 81 f5 40 58 d1    	vaddpd zmm18,zmm17,zmm25
  96cf2c:	62 81 f5 40 5c c9    	vsubpd zmm17,zmm17,zmm25
  96cf32:	62 21 8d 48 58 cc    	vaddpd zmm25,zmm14,zmm20
  96cf38:	62 31 8d 48 5c f4    	vsubpd zmm14,zmm14,zmm20
  96cf3e:	62 a1 85 48 58 e7    	vaddpd zmm20,zmm15,zmm23
  96cf44:	62 31 85 48 5c ff    	vsubpd zmm15,zmm15,zmm23
  96cf4a:	62 81 e5 40 58 fb    	vaddpd zmm23,zmm19,zmm27
  96cf50:	62 81 e5 40 5c db    	vsubpd zmm19,zmm19,zmm27
  96cf56:	62 01 fd 40 58 d8    	vaddpd zmm27,zmm16,zmm24
  96cf5c:	62 81 fd 40 5c c0    	vsubpd zmm16,zmm16,zmm24
  96cf62:	62 21 a5 48 58 c5    	vaddpd zmm24,zmm11,zmm21
  96cf68:	62 31 a5 48 5c dd    	vsubpd zmm11,zmm11,zmm21
  96cf6e:	62 a1 9d 48 58 ee    	vaddpd zmm21,zmm12,zmm22
  96cf74:	62 51 cd 40 5c e4    	vsubpd zmm12,zmm22,zmm12
  96cf7a:	62 c1 8d 48 58 f7    	vaddpd zmm22,zmm14,zmm15
  96cf80:	62 51 85 48 5c f6    	vsubpd zmm14,zmm15,zmm14
  96cf86:	62 31 e5 40 5c f8    	vsubpd zmm15,zmm19,zmm16
  96cf8c:	62 a1 fd 40 58 c3    	vaddpd zmm16,zmm16,zmm19
  96cf92:	62 a1 ad 40 58 dd    	vaddpd zmm19,zmm26,zmm21
  96cf98:	62 a1 ad 40 5c ed    	vsubpd zmm21,zmm26,zmm21
  96cf9e:	62 21 dd 40 58 d7    	vaddpd zmm26,zmm20,zmm23
  96cfa4:	62 a1 dd 40 5c e7    	vsubpd zmm20,zmm20,zmm23
  96cfaa:	62 a1 bd 40 58 fa    	vaddpd zmm23,zmm24,zmm18
  96cfb0:	62 a1 bd 40 5c d2    	vsubpd zmm18,zmm24,zmm18
  96cfb6:	62 01 b5 40 58 c3    	vaddpd zmm24,zmm25,zmm27
  96cfbc:	62 01 a5 40 5c c9    	vsubpd zmm25,zmm27,zmm25
  96cfc2:	62 21 95 48 58 d9    	vaddpd zmm27,zmm13,zmm17
  96cfc8:	62 e1 cd 40 59 f6    	vmulpd zmm22,zmm22,zmm6
  96cfce:	62 71 85 48 59 fe    	vmulpd zmm15,zmm15,zmm6
  96cfd4:	62 71 8d 48 59 f6    	vmulpd zmm14,zmm14,zmm6
  96cfda:	62 e1 fd 40 59 c6    	vmulpd zmm16,zmm16,zmm6
  96cfe0:	62 31 95 48 5c e9    	vsubpd zmm13,zmm13,zmm17
  96cfe6:	62 21 8d 48 5c e0    	vsubpd zmm28,zmm14,zmm16
  96cfec:	62 31 8d 48 58 f0    	vaddpd zmm14,zmm14,zmm16
  96cff2:	62 c1 9d 48 58 c3    	vaddpd zmm16,zmm12,zmm11
  96cff8:	62 51 a5 48 5c dc    	vsubpd zmm11,zmm11,zmm12
  96cffe:	62 51 cd 40 58 e7    	vaddpd zmm12,zmm22,zmm15
  96d004:	62 a1 85 48 5c f6    	vsubpd zmm22,zmm15,zmm22
  96d00a:	62 01 e5 40 58 e8    	vaddpd zmm29,zmm19,zmm24
  96d010:	62 81 e5 40 5c d8    	vsubpd zmm19,zmm19,zmm24
  96d016:	62 11 c5 40 58 fa    	vaddpd zmm15,zmm23,zmm26
  96d01c:	62 81 c5 40 5c fa    	vsubpd zmm23,zmm23,zmm26
  96d022:	62 41 a5 40 58 c4    	vaddpd zmm24,zmm27,zmm12
  96d028:	62 41 a5 40 5c d4    	vsubpd zmm26,zmm27,zmm12
  96d02e:	62 81 fd 40 58 cc    	vaddpd zmm17,zmm16,zmm28
  96d034:	62 01 fd 40 5c dc    	vsubpd zmm27,zmm16,zmm28
  96d03a:	62 a1 d5 40 58 c4    	vaddpd zmm16,zmm21,zmm20
  96d040:	62 a1 d5 40 5c e4    	vsubpd zmm20,zmm21,zmm20
  96d046:	62 31 b5 40 58 e2    	vaddpd zmm12,zmm25,zmm18
  96d04c:	62 81 ed 40 5c d1    	vsubpd zmm18,zmm18,zmm25
  96d052:	62 c1 95 48 58 ee    	vaddpd zmm21,zmm13,zmm14
  96d058:	62 51 95 48 5c ee    	vsubpd zmm13,zmm13,zmm14
  96d05e:	62 21 a5 48 58 ce    	vaddpd zmm25,zmm11,zmm22
  96d064:	62 a1 a5 48 5c f6    	vsubpd zmm22,zmm11,zmm22
  96d06a:	62 01 fd 48 28 e5    	vmovapd zmm28,zmm29
  96d070:	62 22 fd 48 7f e3    	vpermt2pd zmm28,zmm0,zmm19
  96d076:	62 22 f5 48 7f eb    	vpermt2pd zmm29,zmm1,zmm19
  96d07c:	62 81 fd 48 28 d8    	vmovapd zmm19,zmm24
  96d082:	62 82 fd 48 7f da    	vpermt2pd zmm19,zmm0,zmm26
  96d088:	62 02 f5 48 7f c2    	vpermt2pd zmm24,zmm1,zmm26
  96d08e:	62 31 fd 48 28 d8    	vmovapd zmm11,zmm16
  96d094:	62 32 fd 48 7f dc    	vpermt2pd zmm11,zmm0,zmm20
  96d09a:	62 a2 f5 48 7f c4    	vpermt2pd zmm16,zmm1,zmm20
  96d0a0:	62 31 fd 48 28 f5    	vmovapd zmm14,zmm21
  96d0a6:	62 52 fd 48 7f f5    	vpermt2pd zmm14,zmm0,zmm13
  96d0ac:	62 c2 f5 48 7f ed    	vpermt2pd zmm21,zmm1,zmm13
  96d0b2:	62 11 fd 48 28 ec    	vmovapd zmm13,zmm28
  96d0b8:	62 52 ed 48 7f eb    	vpermt2pd zmm13,zmm2,zmm11
  96d0be:	62 42 e5 48 7f e3    	vpermt2pd zmm28,zmm3,zmm11
  96d0c4:	62 a1 fd 48 28 e3    	vmovapd zmm20,zmm19
  96d0ca:	62 c2 ed 48 7f e6    	vpermt2pd zmm20,zmm2,zmm14
  96d0d0:	62 c2 e5 48 7f de    	vpermt2pd zmm19,zmm3,zmm14
  96d0d6:	62 22 ed 48 7f e8    	vpermt2pd zmm29,zmm2,zmm16
  96d0dc:	62 22 ed 48 7f c5    	vpermt2pd zmm24,zmm2,zmm21
  96d0e2:	62 31 95 48 14 dc    	vunpcklpd zmm11,zmm13,zmm20
  96d0e8:	62 31 95 48 15 f4    	vunpckhpd zmm14,zmm13,zmm20
  96d0ee:	62 a1 9d 40 14 e3    	vunpcklpd zmm20,zmm28,zmm19
  96d0f4:	62 31 9d 40 15 eb    	vunpckhpd zmm13,zmm28,zmm19
  96d0fa:	62 81 95 40 14 d8    	vunpcklpd zmm19,zmm29,zmm24
  96d100:	62 81 95 40 15 c0    	vunpckhpd zmm16,zmm29,zmm24
  96d106:	62 c1 fd 48 28 ef    	vmovapd zmm21,zmm15
  96d10c:	62 a2 fd 48 7f ef    	vpermt2pd zmm21,zmm0,zmm23
  96d112:	62 32 f5 48 7f ff    	vpermt2pd zmm15,zmm1,zmm23
  96d118:	62 a1 fd 48 28 f9    	vmovapd zmm23,zmm17
  96d11e:	62 82 fd 48 7f fb    	vpermt2pd zmm23,zmm0,zmm27
  96d124:	62 82 f5 48 7f cb    	vpermt2pd zmm17,zmm1,zmm27
  96d12a:	62 41 fd 48 28 c4    	vmovapd zmm24,zmm12
  96d130:	62 22 fd 48 7f c2    	vpermt2pd zmm24,zmm0,zmm18
  96d136:	62 32 f5 48 7f e2    	vpermt2pd zmm12,zmm1,zmm18
  96d13c:	62 81 fd 48 28 d1    	vmovapd zmm18,zmm25
  96d142:	62 a2 fd 48 7f d6    	vpermt2pd zmm18,zmm0,zmm22
  96d148:	62 22 f5 48 7f ce    	vpermt2pd zmm25,zmm1,zmm22
  96d14e:	62 a1 fd 48 28 f5    	vmovapd zmm22,zmm21
  96d154:	62 82 ed 48 7f f0    	vpermt2pd zmm22,zmm2,zmm24
  96d15a:	62 82 e5 48 7f e8    	vpermt2pd zmm21,zmm3,zmm24
  96d160:	62 21 fd 48 28 c7    	vmovapd zmm24,zmm23
  96d166:	62 22 ed 48 7f c2    	vpermt2pd zmm24,zmm2,zmm18
  96d16c:	62 a2 e5 48 7f fa    	vpermt2pd zmm23,zmm3,zmm18
  96d172:	62 52 ed 48 7f fc    	vpermt2pd zmm15,zmm2,zmm12
  96d178:	62 82 ed 48 7f c9    	vpermt2pd zmm17,zmm2,zmm25
  96d17e:	62 11 cd 40 14 e0    	vunpcklpd zmm12,zmm22,zmm24
  96d184:	62 81 cd 40 15 f0    	vunpckhpd zmm22,zmm22,zmm24
  96d18a:	62 21 d5 40 14 c7    	vunpcklpd zmm24,zmm21,zmm23
  96d190:	62 a1 d5 40 15 d7    	vunpckhpd zmm18,zmm21,zmm23
  96d196:	62 a1 85 48 14 e9    	vunpcklpd zmm21,zmm15,zmm17
  96d19c:	62 a1 85 48 15 f9    	vunpckhpd zmm23,zmm15,zmm17
  96d1a2:	62 61 fd 48 10 49 02 	vmovupd zmm25,ZMMWORD PTR [rcx+0x80]
  96d1a9:	62 61 fd 48 10 51 03 	vmovupd zmm26,ZMMWORD PTR [rcx+0xc0]
  96d1b0:	62 e1 fd 48 10 49 04 	vmovupd zmm17,ZMMWORD PTR [rcx+0x100]
  96d1b7:	62 61 fd 48 10 59 05 	vmovupd zmm27,ZMMWORD PTR [rcx+0x140]
  96d1be:	62 31 dd 40 59 f9    	vmulpd zmm15,zmm20,zmm17
  96d1c4:	62 12 bd 40 bc fb    	vfnmadd231pd zmm15,zmm24,zmm27
  96d1ca:	62 a1 bd 40 59 c9    	vmulpd zmm17,zmm24,zmm17
  96d1d0:	62 61 fd 48 10 41 09 	vmovupd zmm24,ZMMWORD PTR [rcx+0x240]
  96d1d7:	62 82 dd 40 b8 cb    	vfmadd231pd zmm17,zmm20,zmm27
  96d1dd:	62 e1 fd 48 10 61 08 	vmovupd zmm20,ZMMWORD PTR [rcx+0x200]
  96d1e4:	62 21 e5 40 59 dc    	vmulpd zmm27,zmm19,zmm20
  96d1ea:	62 02 d5 40 bc d8    	vfnmadd231pd zmm27,zmm21,zmm24
  96d1f0:	62 a1 d5 40 59 e4    	vmulpd zmm20,zmm21,zmm20
  96d1f6:	62 82 e5 40 b8 e0    	vfmadd231pd zmm20,zmm19,zmm24
  96d1fc:	62 e1 fd 48 10 59 0b 	vmovupd zmm19,ZMMWORD PTR [rcx+0x2c0]
  96d203:	62 e1 fd 48 10 69 0a 	vmovupd zmm21,ZMMWORD PTR [rcx+0x280]
  96d20a:	62 21 c5 40 59 c5    	vmulpd zmm24,zmm23,zmm21
  96d210:	62 22 fd 40 b8 c3    	vfmadd231pd zmm24,zmm16,zmm19
  96d216:	62 a1 fd 40 59 c5    	vmulpd zmm16,zmm16,zmm21
  96d21c:	62 81 85 48 5c eb    	vsubpd zmm21,zmm15,zmm27
  96d222:	62 e1 d5 40 59 ef    	vmulpd zmm21,zmm21,zmm7
  96d228:	62 a2 c5 40 bc c3    	vfnmadd231pd zmm16,zmm23,zmm19
  96d22e:	62 a1 f5 40 58 dc    	vaddpd zmm19,zmm17,zmm20
  96d234:	62 81 cd 40 59 f9    	vmulpd zmm23,zmm22,zmm25
  96d23a:	62 82 8d 48 b8 fa    	vfmadd231pd zmm23,zmm14,zmm26
  96d240:	62 11 8d 48 59 f1    	vmulpd zmm14,zmm14,zmm25
  96d246:	62 61 fd 48 10 49 07 	vmovupd zmm25,ZMMWORD PTR [rcx+0x1c0]
  96d24d:	62 12 cd 40 bc f2    	vfnmadd231pd zmm14,zmm22,zmm26
  96d253:	62 e1 fd 48 10 71 06 	vmovupd zmm22,ZMMWORD PTR [rcx+0x180]
  96d25a:	62 21 ed 40 59 d6    	vmulpd zmm26,zmm18,zmm22
  96d260:	62 02 95 48 b8 d1    	vfmadd231pd zmm26,zmm13,zmm25
  96d266:	62 31 95 48 59 ee    	vmulpd zmm13,zmm13,zmm22
  96d26c:	62 c1 fd 48 28 f0    	vmovapd zmm22,zmm8
  96d272:	62 c2 e5 40 ac f4    	vfnmadd213pd zmm22,zmm19,zmm12
  96d278:	62 12 ed 40 bc e9    	vfnmadd231pd zmm13,zmm18,zmm25
  96d27e:	62 a1 d5 40 58 d6    	vaddpd zmm18,zmm21,zmm22
  96d284:	62 21 bd 40 58 cf    	vaddpd zmm25,zmm24,zmm23
  96d28a:	62 11 85 48 58 fb    	vaddpd zmm15,zmm15,zmm27
  96d290:	62 41 fd 48 28 d8    	vmovapd zmm27,zmm8
  96d296:	62 02 b5 40 ac da    	vfnmadd213pd zmm27,zmm25,zmm26
  96d29c:	62 a1 f5 40 5c cc    	vsubpd zmm17,zmm17,zmm20
  96d2a2:	62 c1 fd 40 5c e6    	vsubpd zmm20,zmm16,zmm14
  96d2a8:	62 e1 dd 40 59 e7    	vmulpd zmm20,zmm20,zmm7
  96d2ae:	62 51 fd 40 58 f6    	vaddpd zmm14,zmm16,zmm14
  96d2b4:	62 a1 a5 40 58 c4    	vaddpd zmm16,zmm27,zmm20
  96d2ba:	62 a1 bd 40 5c ff    	vsubpd zmm23,zmm24,zmm23
  96d2c0:	62 41 fd 48 28 c0    	vmovapd zmm24,zmm8
  96d2c6:	62 42 85 48 ac c3    	vfnmadd213pd zmm24,zmm15,zmm11
  96d2cc:	62 e1 f5 40 59 cf    	vmulpd zmm17,zmm17,zmm7
  96d2d2:	62 a1 cd 40 5c ed    	vsubpd zmm21,zmm22,zmm21
  96d2d8:	62 a1 bd 40 5c f1    	vsubpd zmm22,zmm24,zmm17
  96d2de:	62 a1 a5 40 5c e4    	vsubpd zmm20,zmm27,zmm20
  96d2e4:	62 41 fd 48 28 d8    	vmovapd zmm27,zmm8
  96d2ea:	62 42 8d 48 ac dd    	vfnmadd213pd zmm27,zmm14,zmm13
  96d2f0:	62 e1 c5 40 59 ff    	vmulpd zmm23,zmm23,zmm7
  96d2f6:	62 a1 bd 40 58 c9    	vaddpd zmm17,zmm24,zmm17
  96d2fc:	62 21 a5 40 5c c7    	vsubpd zmm24,zmm27,zmm23
  96d302:	62 a1 a5 40 58 ff    	vaddpd zmm23,zmm27,zmm23
  96d308:	62 51 e5 40 58 e4    	vaddpd zmm12,zmm19,zmm12
  96d30e:	62 81 ad 40 58 d9    	vaddpd zmm19,zmm26,zmm25
  96d314:	62 51 a5 48 58 df    	vaddpd zmm11,zmm11,zmm15
  96d31a:	62 51 95 48 58 ee    	vaddpd zmm13,zmm13,zmm14
  96d320:	62 31 ed 40 5c f0    	vsubpd zmm14,zmm18,zmm16
  96d326:	62 31 ed 40 58 f8    	vaddpd zmm15,zmm18,zmm16
  96d32c:	62 81 cd 40 5c c0    	vsubpd zmm16,zmm22,zmm24
  96d332:	62 81 cd 40 58 d0    	vaddpd zmm18,zmm22,zmm24
  96d338:	62 a1 d5 40 58 f4    	vaddpd zmm22,zmm21,zmm20
  96d33e:	62 a1 d5 40 5c e4    	vsubpd zmm20,zmm21,zmm20
  96d344:	62 a1 f5 40 58 ef    	vaddpd zmm21,zmm17,zmm23
  96d34a:	62 a1 f5 40 5c cf    	vsubpd zmm17,zmm17,zmm23
  96d350:	62 a1 9d 48 5c fb    	vsubpd zmm23,zmm12,zmm19
  96d356:	62 31 9d 48 58 e3    	vaddpd zmm12,zmm12,zmm19
  96d35c:	62 c1 a5 48 5c dd    	vsubpd zmm19,zmm11,zmm13
  96d362:	62 51 a5 48 58 dd    	vaddpd zmm11,zmm11,zmm13
  96d368:	62 51 fd 48 28 ec    	vmovapd zmm13,zmm12
  96d36e:	62 52 b5 48 7f eb    	vpermt2pd zmm13,zmm9,zmm11
  96d374:	62 52 ad 48 7f e3    	vpermt2pd zmm12,zmm10,zmm11
  96d37a:	62 71 fd 48 11 24 16 	vmovupd ZMMWORD PTR [rsi+rdx*1],zmm12
  96d381:	62 71 fd 48 11 6c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x40],zmm13
  96d388:	01 
  96d389:	62 31 fd 48 28 dc    	vmovapd zmm11,zmm20
  96d38f:	62 32 b5 48 7f d9    	vpermt2pd zmm11,zmm9,zmm17
  96d395:	62 a2 ad 48 7f e1    	vpermt2pd zmm20,zmm10,zmm17
  96d39b:	62 e1 fd 48 11 64 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x80],zmm20
  96d3a2:	02 
  96d3a3:	62 71 fd 48 11 5c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0xc0],zmm11
  96d3aa:	03 
  96d3ab:	62 51 fd 48 28 df    	vmovapd zmm11,zmm15
  96d3b1:	62 32 b5 48 7f da    	vpermt2pd zmm11,zmm9,zmm18
  96d3b7:	62 32 ad 48 7f fa    	vpermt2pd zmm15,zmm10,zmm18
  96d3bd:	62 71 fd 48 11 7c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x100],zmm15
  96d3c4:	04 
  96d3c5:	62 71 fd 48 11 5c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x140],zmm11
  96d3cc:	05 
  96d3cd:	62 31 fd 48 28 df    	vmovapd zmm11,zmm23
  96d3d3:	62 32 b5 48 7f db    	vpermt2pd zmm11,zmm9,zmm19
  96d3d9:	62 a2 ad 48 7f fb    	vpermt2pd zmm23,zmm10,zmm19
  96d3df:	62 e1 fd 48 11 7c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x180],zmm23
  96d3e6:	06 
  96d3e7:	62 71 fd 48 11 5c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x1c0],zmm11
  96d3ee:	07 
  96d3ef:	62 31 fd 48 28 de    	vmovapd zmm11,zmm22
  96d3f5:	62 32 b5 48 7f dd    	vpermt2pd zmm11,zmm9,zmm21
  96d3fb:	62 a2 ad 48 7f f5    	vpermt2pd zmm22,zmm10,zmm21
  96d401:	62 e1 fd 48 11 74 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x200],zmm22
  96d408:	08 
  96d409:	62 71 fd 48 11 5c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x240],zmm11
  96d410:	09 
  96d411:	62 51 fd 48 28 de    	vmovapd zmm11,zmm14
  96d417:	62 32 b5 48 7f d8    	vpermt2pd zmm11,zmm9,zmm16
  96d41d:	62 32 ad 48 7f f0    	vpermt2pd zmm14,zmm10,zmm16
  96d423:	62 71 fd 48 11 74 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x280],zmm14
  96d42a:	0a 
  96d42b:	62 71 fd 48 11 5c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x2c0],zmm11
  96d432:	0b 
  96d433:	48 81 c2 00 03 00 00 	add    rdx,0x300
  96d43a:	48 39 d0             	cmp    rax,rdx
  96d43d:	0f 85 bd f9 ff ff    	jne    96ce00 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle+0x80>
  96d443:	c5 f8 77             	vzeroupper
  96d446:	c3                   	ret
