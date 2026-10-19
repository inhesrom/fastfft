
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000008eff40 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  8eff40:	62 f1 fd 48 10 05 1e 	vmovupd zmm0,ZMMWORD PTR [rip+0xffffffffff7d6e1e]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  8eff47:	6e 7d ff 
  8eff4a:	62 f1 fd 48 10 0d 94 	vmovupd zmm1,ZMMWORD PTR [rip+0xffffffffff7d6d94]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  8eff51:	6d 7d ff 
  8eff54:	62 f1 fd 48 10 15 ca 	vmovupd zmm2,ZMMWORD PTR [rip+0xffffffffff7d6dca]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  8eff5b:	6d 7d ff 
  8eff5e:	48 c1 e2 07          	shl    rdx,0x7
  8eff62:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  8eff66:	31 d2                	xor    edx,edx
  8eff68:	62 f1 fd 48 28 1d 0e 	vmovapd zmm3,ZMMWORD PTR [rip+0xffffffffff78d00e]        # 7cf80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xa430>
  8eff6f:	d0 78 ff 
  8eff72:	c5 d9 57 e4          	vxorpd xmm4,xmm4,xmm4
  8eff76:	62 f1 fd 48 28 2d 40 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff78d040]        # 7cfc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xa470>
  8eff7d:	d0 78 ff 
  8eff80:	62 f2 fd 48 19 35 0e 	vbroadcastsd zmm6,QWORD PTR [rip+0xffffffffff784b0e]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  8eff87:	4b 78 ff 
  8eff8a:	62 f2 fd 48 19 3d 8c 	vbroadcastsd zmm7,QWORD PTR [rip+0xffffffffff784c8c]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  8eff91:	4c 78 ff 
  8eff94:	c5 7d 28 05 64 6d 78 	vmovapd ymm8,YMMWORD PTR [rip+0xffffffffff786d64]        # 76d00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x41b0>
  8eff9b:	ff 
  8eff9c:	62 71 fd 48 28 0d 5a 	vmovapd zmm9,ZMMWORD PTR [rip+0xffffffffff78d05a]        # 7d000 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xa4b0>
  8effa3:	d0 78 ff 
  8effa6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  8effad:	00 00 00 
  8effb0:	62 71 fd 48 10 1c 17 	vmovupd zmm11,ZMMWORD PTR [rdi+rdx*1]
  8effb7:	62 71 fd 48 10 64 17 	vmovupd zmm12,ZMMWORD PTR [rdi+rdx*1+0x40]
  8effbe:	01 
  8effbf:	62 71 fd 48 10 6c 17 	vmovupd zmm13,ZMMWORD PTR [rdi+rdx*1+0x80]
  8effc6:	02 
  8effc7:	62 71 fd 48 10 74 17 	vmovupd zmm14,ZMMWORD PTR [rdi+rdx*1+0xc0]
  8effce:	03 
  8effcf:	62 51 fd 48 28 fb    	vmovapd zmm15,zmm11
  8effd5:	62 72 e5 48 7f fc    	vpermt2pd zmm15,zmm3,zmm4
  8effdb:	62 72 d5 48 7f dc    	vpermt2pd zmm11,zmm5,zmm4
  8effe1:	62 c1 fd 48 28 c4    	vmovapd zmm16,zmm12
  8effe7:	62 e2 e5 48 7f c4    	vpermt2pd zmm16,zmm3,zmm4
  8effed:	62 72 d5 48 7f e4    	vpermt2pd zmm12,zmm5,zmm4
  8efff3:	62 c1 fd 48 28 cd    	vmovapd zmm17,zmm13
  8efff9:	62 e2 e5 48 7f cc    	vpermt2pd zmm17,zmm3,zmm4
  8effff:	62 72 d5 48 7f ec    	vpermt2pd zmm13,zmm5,zmm4
  8f0005:	62 c1 fd 48 28 d6    	vmovapd zmm18,zmm14
  8f000b:	62 e2 e5 48 7f d4    	vpermt2pd zmm18,zmm3,zmm4
  8f0011:	62 72 d5 48 7f f4    	vpermt2pd zmm14,zmm5,zmm4
  8f0017:	62 e1 fd 48 10 5c 17 	vmovupd zmm19,ZMMWORD PTR [rdi+rdx*1+0x100]
  8f001e:	04 
  8f001f:	62 a1 fd 48 28 e3    	vmovapd zmm20,zmm19
  8f0025:	62 e2 e5 48 7f e4    	vpermt2pd zmm20,zmm3,zmm4
  8f002b:	62 e2 d5 48 7f dc    	vpermt2pd zmm19,zmm5,zmm4
  8f0031:	62 e1 fd 48 10 6c 17 	vmovupd zmm21,ZMMWORD PTR [rdi+rdx*1+0x140]
  8f0038:	05 
  8f0039:	62 a1 fd 48 28 f5    	vmovapd zmm22,zmm21
  8f003f:	62 e2 e5 48 7f f4    	vpermt2pd zmm22,zmm3,zmm4
  8f0045:	62 e2 d5 48 7f ec    	vpermt2pd zmm21,zmm5,zmm4
  8f004b:	62 a1 95 48 58 fb    	vaddpd zmm23,zmm13,zmm19
  8f0051:	62 21 a5 48 58 c7    	vaddpd zmm24,zmm11,zmm23
  8f0057:	62 41 d5 40 58 cc    	vaddpd zmm25,zmm21,zmm12
  8f005d:	62 01 8d 48 58 d1    	vaddpd zmm26,zmm14,zmm25
  8f0063:	62 01 bd 40 58 da    	vaddpd zmm27,zmm24,zmm26
  8f0069:	62 21 f5 40 58 e4    	vaddpd zmm28,zmm17,zmm20
  8f006f:	62 01 85 48 58 ec    	vaddpd zmm29,zmm15,zmm28
  8f0075:	62 21 cd 40 58 f0    	vaddpd zmm30,zmm22,zmm16
  8f007b:	62 01 ed 40 58 fe    	vaddpd zmm31,zmm18,zmm30
  8f0081:	62 11 95 40 58 d7    	vaddpd zmm10,zmm29,zmm31
  8f0087:	62 32 cd 48 bc df    	vfnmadd231pd zmm11,zmm6,zmm23
  8f008d:	62 a1 f5 40 5c cc    	vsubpd zmm17,zmm17,zmm20
  8f0093:	62 e1 f5 40 59 cf    	vmulpd zmm17,zmm17,zmm7
  8f0099:	62 a1 a5 48 58 e1    	vaddpd zmm20,zmm11,zmm17
  8f009f:	62 12 cd 48 bc f1    	vfnmadd231pd zmm14,zmm6,zmm25
  8f00a5:	62 a1 cd 40 5c c0    	vsubpd zmm16,zmm22,zmm16
  8f00ab:	62 e1 fd 40 59 c7    	vmulpd zmm16,zmm16,zmm7
  8f00b1:	62 a1 8d 48 58 f0    	vaddpd zmm22,zmm14,zmm16
  8f00b7:	62 a1 dd 40 5c fe    	vsubpd zmm23,zmm20,zmm22
  8f00bd:	62 12 cd 48 bc fc    	vfnmadd231pd zmm15,zmm6,zmm28
  8f00c3:	62 31 95 48 5c eb    	vsubpd zmm13,zmm13,zmm19
  8f00c9:	62 71 95 48 59 ef    	vmulpd zmm13,zmm13,zmm7
  8f00cf:	62 c1 85 48 5c dd    	vsubpd zmm19,zmm15,zmm13
  8f00d5:	62 82 cd 48 bc d6    	vfnmadd231pd zmm18,zmm6,zmm30
  8f00db:	62 51 d5 40 5c e4    	vsubpd zmm12,zmm21,zmm12
  8f00e1:	62 71 9d 48 59 e7    	vmulpd zmm12,zmm12,zmm7
  8f00e7:	62 c1 ed 40 5c ec    	vsubpd zmm21,zmm18,zmm12
  8f00ed:	62 21 e5 40 5c cd    	vsubpd zmm25,zmm19,zmm21
  8f00f3:	62 31 a5 48 5c d9    	vsubpd zmm11,zmm11,zmm17
  8f00f9:	62 31 8d 48 5c f0    	vsubpd zmm14,zmm14,zmm16
  8f00ff:	62 c1 a5 48 58 c6    	vaddpd zmm16,zmm11,zmm14
  8f0105:	62 51 95 48 58 ef    	vaddpd zmm13,zmm13,zmm15
  8f010b:	62 31 9d 48 58 e2    	vaddpd zmm12,zmm12,zmm18
  8f0111:	62 51 95 48 58 fc    	vaddpd zmm15,zmm13,zmm12
  8f0117:	62 81 bd 40 5c ca    	vsubpd zmm17,zmm24,zmm26
  8f011d:	62 81 95 40 5c d7    	vsubpd zmm18,zmm29,zmm31
  8f0123:	62 a1 dd 40 58 e6    	vaddpd zmm20,zmm20,zmm22
  8f0129:	62 a1 e5 40 58 dd    	vaddpd zmm19,zmm19,zmm21
  8f012f:	62 51 a5 48 5c de    	vsubpd zmm11,zmm11,zmm14
  8f0135:	62 51 95 48 5c e4    	vsubpd zmm12,zmm13,zmm12
  8f013b:	62 22 fd 48 7f dc    	vpermt2pd zmm27,zmm0,zmm20
  8f0141:	62 c2 fd 48 7f fb    	vpermt2pd zmm23,zmm0,zmm11
  8f0147:	62 e2 fd 48 7f c4    	vpermt2pd zmm16,zmm0,zmm4
  8f014d:	62 e2 fd 48 7f cc    	vpermt2pd zmm17,zmm0,zmm4
  8f0153:	62 11 fd 48 28 db    	vmovapd zmm11,zmm27
  8f0159:	62 32 f5 48 7f d8    	vpermt2pd zmm11,zmm1,zmm16
  8f015f:	62 22 ed 48 7f d8    	vpermt2pd zmm27,zmm2,zmm16
  8f0165:	62 31 fd 48 28 ef    	vmovapd zmm13,zmm23
  8f016b:	62 32 f5 48 7f e9    	vpermt2pd zmm13,zmm1,zmm17
  8f0171:	62 a2 ed 48 7f f9    	vpermt2pd zmm23,zmm2,zmm17
  8f0177:	62 51 a5 48 14 f5    	vunpcklpd zmm14,zmm11,zmm13
  8f017d:	62 51 a5 48 15 dd    	vunpckhpd zmm11,zmm11,zmm13
  8f0183:	62 31 a5 40 14 ef    	vunpcklpd zmm13,zmm27,zmm23
  8f0189:	62 a1 a5 40 15 c7    	vunpckhpd zmm16,zmm27,zmm23
  8f018f:	62 32 fd 48 7f d3    	vpermt2pd zmm10,zmm0,zmm19
  8f0195:	62 42 fd 48 7f cc    	vpermt2pd zmm25,zmm0,zmm12
  8f019b:	62 72 fd 48 7f fc    	vpermt2pd zmm15,zmm0,zmm4
  8f01a1:	62 e2 fd 48 7f d4    	vpermt2pd zmm18,zmm0,zmm4
  8f01a7:	62 51 fd 48 28 e2    	vmovapd zmm12,zmm10
  8f01ad:	62 52 f5 48 7f e7    	vpermt2pd zmm12,zmm1,zmm15
  8f01b3:	62 52 ed 48 7f d7    	vpermt2pd zmm10,zmm2,zmm15
  8f01b9:	62 11 fd 48 28 f9    	vmovapd zmm15,zmm25
  8f01bf:	62 32 f5 48 7f fa    	vpermt2pd zmm15,zmm1,zmm18
  8f01c5:	62 22 ed 48 7f ca    	vpermt2pd zmm25,zmm2,zmm18
  8f01cb:	62 c1 9d 48 14 cf    	vunpcklpd zmm17,zmm12,zmm15
  8f01d1:	62 51 9d 48 15 e7    	vunpckhpd zmm12,zmm12,zmm15
  8f01d7:	62 11 ad 48 14 f9    	vunpcklpd zmm15,zmm10,zmm25
  8f01dd:	62 11 ad 48 15 d1    	vunpckhpd zmm10,zmm10,zmm25
  8f01e3:	62 e1 fd 48 10 51 02 	vmovupd zmm18,ZMMWORD PTR [rcx+0x80]
  8f01ea:	62 e1 fd 48 10 59 03 	vmovupd zmm19,ZMMWORD PTR [rcx+0xc0]
  8f01f1:	62 e1 fd 48 10 61 04 	vmovupd zmm20,ZMMWORD PTR [rcx+0x100]
  8f01f8:	62 e1 fd 48 10 69 05 	vmovupd zmm21,ZMMWORD PTR [rcx+0x140]
  8f01ff:	62 e1 fd 48 10 71 06 	vmovupd zmm22,ZMMWORD PTR [rcx+0x180]
  8f0206:	62 e1 fd 48 10 79 07 	vmovupd zmm23,ZMMWORD PTR [rcx+0x1c0]
  8f020d:	62 21 95 48 59 c4    	vmulpd zmm24,zmm13,zmm20
  8f0213:	62 22 85 48 bc c5    	vfnmadd231pd zmm24,zmm15,zmm21
  8f0219:	62 01 8d 48 58 c8    	vaddpd zmm25,zmm14,zmm24
  8f021f:	62 21 a5 48 59 d2    	vmulpd zmm26,zmm11,zmm18
  8f0225:	62 22 9d 48 bc d3    	vfnmadd231pd zmm26,zmm12,zmm19
  8f022b:	62 21 fd 40 59 de    	vmulpd zmm27,zmm16,zmm22
  8f0231:	62 22 ad 48 bc df    	vfnmadd231pd zmm27,zmm10,zmm23
  8f0237:	62 01 ad 40 58 e3    	vaddpd zmm28,zmm26,zmm27
  8f023d:	62 31 85 48 59 fc    	vmulpd zmm15,zmm15,zmm20
  8f0243:	62 32 95 48 b8 fd    	vfmadd231pd zmm15,zmm13,zmm21
  8f0249:	62 31 85 48 58 e9    	vaddpd zmm13,zmm15,zmm17
  8f024f:	62 31 9d 48 59 e2    	vmulpd zmm12,zmm12,zmm18
  8f0255:	62 32 a5 48 b8 e3    	vfmadd231pd zmm12,zmm11,zmm19
  8f025b:	62 31 ad 48 59 d6    	vmulpd zmm10,zmm10,zmm22
  8f0261:	62 32 fd 40 b8 d7    	vfmadd231pd zmm10,zmm16,zmm23
  8f0267:	62 51 9d 48 58 da    	vaddpd zmm11,zmm12,zmm10
  8f026d:	62 11 8d 48 5c f0    	vsubpd zmm14,zmm14,zmm24
  8f0273:	62 51 9d 48 5c d2    	vsubpd zmm10,zmm12,zmm10
  8f0279:	62 51 8d 48 58 e2    	vaddpd zmm12,zmm14,zmm10
  8f027f:	62 51 f5 40 5c ff    	vsubpd zmm15,zmm17,zmm15
  8f0285:	62 81 a5 40 5c c2    	vsubpd zmm16,zmm27,zmm26
  8f028b:	62 a1 85 48 58 c8    	vaddpd zmm17,zmm15,zmm16
  8f0291:	62 a1 fd 48 28 d1    	vmovapd zmm18,zmm17
  8f0297:	62 c2 bd 48 7f d4    	vpermt2pd zmm18,zmm8,zmm12
  8f029d:	62 81 b5 40 5c dc    	vsubpd zmm19,zmm25,zmm28
  8f02a3:	62 c1 95 48 5c e3    	vsubpd zmm20,zmm13,zmm11
  8f02a9:	62 a1 fd 48 28 ec    	vmovapd zmm21,zmm20
  8f02af:	62 a2 bd 48 7f eb    	vpermt2pd zmm21,zmm8,zmm19
  8f02b5:	62 51 8d 48 5c d2    	vsubpd zmm10,zmm14,zmm10
  8f02bb:	62 31 85 48 5c f0    	vsubpd zmm14,zmm15,zmm16
  8f02c1:	62 51 fd 48 28 fe    	vmovapd zmm15,zmm14
  8f02c7:	62 52 bd 48 7f fa    	vpermt2pd zmm15,zmm8,zmm10
  8f02cd:	62 51 95 48 58 db    	vaddpd zmm11,zmm13,zmm11
  8f02d3:	62 11 b5 40 58 ec    	vaddpd zmm13,zmm25,zmm28
  8f02d9:	62 c1 fd 48 28 c3    	vmovapd zmm16,zmm11
  8f02df:	62 c2 bd 48 7f c5    	vpermt2pd zmm16,zmm8,zmm13
  8f02e5:	62 52 b5 48 7f dd    	vpermt2pd zmm11,zmm9,zmm13
  8f02eb:	62 71 fd 48 11 1c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1],zmm11
  8f02f2:	62 e1 fd 28 11 44 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x40],ymm16
  8f02f9:	02 
  8f02fa:	62 c2 b5 48 7f cc    	vpermt2pd zmm17,zmm9,zmm12
  8f0300:	62 e1 fd 48 11 8c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x60],zmm17
  8f0307:	60 00 00 00 
  8f030b:	62 e1 fd 28 11 54 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0xa0],ymm18
  8f0312:	05 
  8f0313:	62 a2 b5 48 7f e3    	vpermt2pd zmm20,zmm9,zmm19
  8f0319:	62 e1 fd 48 11 64 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0xc0],zmm20
  8f0320:	03 
  8f0321:	62 e1 fd 28 11 6c 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x100],ymm21
  8f0328:	08 
  8f0329:	62 52 b5 48 7f f2    	vpermt2pd zmm14,zmm9,zmm10
  8f032f:	62 71 fd 48 11 b4 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x120],zmm14
  8f0336:	20 01 00 00 
  8f033a:	c5 7d 11 bc 16 60 01 	vmovupd YMMWORD PTR [rsi+rdx*1+0x160],ymm15
  8f0341:	00 00 
  8f0343:	48 81 c2 80 01 00 00 	add    rdx,0x180
  8f034a:	48 39 d0             	cmp    rax,rdx
  8f034d:	0f 85 5d fc ff ff    	jne    8effb0 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle+0x70>
  8f0353:	c5 f8 77             	vzeroupper
  8f0356:	c3                   	ret
