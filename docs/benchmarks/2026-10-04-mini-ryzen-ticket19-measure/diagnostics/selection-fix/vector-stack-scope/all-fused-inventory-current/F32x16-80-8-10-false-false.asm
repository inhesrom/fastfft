
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a00f40 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a00f40:	55                   	push   rbp
  a00f41:	48 89 e5             	mov    rbp,rsp
  a00f44:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a00f48:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  a00f4f:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  a00f54:	48 8d 44 24 40       	lea    rax,[rsp+0x40]
  a00f59:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  a00f5e:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  a00f63:	62 f1 7c 48 10 07    	vmovups zmm0,ZMMWORD PTR [rdi]
  a00f69:	c5 f8 10 4f 40       	vmovups xmm1,XMMWORD PTR [rdi+0x40]
  a00f6e:	62 f1 7c 48 28 1d 48 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff68ce48]        # 8ddc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b270>
  a00f75:	ce 68 ff 
  a00f78:	62 f1 7c 48 28 e0    	vmovaps zmm4,zmm0
  a00f7e:	62 f2 65 48 7f e1    	vpermt2ps zmm4,zmm3,zmm1
  a00f84:	62 f1 7c 48 28 15 72 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff68ce72]        # 8de00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b2b0>
  a00f8b:	ce 68 ff 
  a00f8e:	62 f2 6d 48 7f c1    	vpermt2ps zmm0,zmm2,zmm1
  a00f94:	62 f1 7c 48 10 b7 50 	vmovups zmm6,ZMMWORD PTR [rdi+0x50]
  a00f9b:	00 00 00 
  a00f9e:	c5 f8 10 8f 90 00 00 	vmovups xmm1,XMMWORD PTR [rdi+0x90]
  a00fa5:	00 
  a00fa6:	62 f1 7c 48 28 fe    	vmovaps zmm7,zmm6
  a00fac:	62 f2 65 48 7f f9    	vpermt2ps zmm7,zmm3,zmm1
  a00fb2:	62 f2 6d 48 7f f1    	vpermt2ps zmm6,zmm2,zmm1
  a00fb8:	62 71 7c 48 10 87 a0 	vmovups zmm8,ZMMWORD PTR [rdi+0xa0]
  a00fbf:	00 00 00 
  a00fc2:	c5 f8 10 8f e0 00 00 	vmovups xmm1,XMMWORD PTR [rdi+0xe0]
  a00fc9:	00 
  a00fca:	62 d1 7c 48 28 e8    	vmovaps zmm5,zmm8
  a00fd0:	62 f2 65 48 7f e9    	vpermt2ps zmm5,zmm3,zmm1
  a00fd6:	62 72 6d 48 7f c1    	vpermt2ps zmm8,zmm2,zmm1
  a00fdc:	62 71 7c 48 10 8f f0 	vmovups zmm9,ZMMWORD PTR [rdi+0xf0]
  a00fe3:	00 00 00 
  a00fe6:	c5 f8 10 8f 30 01 00 	vmovups xmm1,XMMWORD PTR [rdi+0x130]
  a00fed:	00 
  a00fee:	62 51 7c 48 28 d1    	vmovaps zmm10,zmm9
  a00ff4:	62 72 65 48 7f d1    	vpermt2ps zmm10,zmm3,zmm1
  a00ffa:	62 72 6d 48 7f c9    	vpermt2ps zmm9,zmm2,zmm1
  a01000:	62 71 7c 48 10 5f 05 	vmovups zmm11,ZMMWORD PTR [rdi+0x140]
  a01007:	c5 f8 10 8f 80 01 00 	vmovups xmm1,XMMWORD PTR [rdi+0x180]
  a0100e:	00 
  a0100f:	62 51 7c 48 28 e3    	vmovaps zmm12,zmm11
  a01015:	62 72 65 48 7f e1    	vpermt2ps zmm12,zmm3,zmm1
  a0101b:	62 72 6d 48 7f d9    	vpermt2ps zmm11,zmm2,zmm1
  a01021:	62 71 7c 48 10 af 90 	vmovups zmm13,ZMMWORD PTR [rdi+0x190]
  a01028:	01 00 00 
  a0102b:	c5 f8 10 8f d0 01 00 	vmovups xmm1,XMMWORD PTR [rdi+0x1d0]
  a01032:	00 
  a01033:	62 51 7c 48 28 f5    	vmovaps zmm14,zmm13
  a01039:	62 72 65 48 7f f1    	vpermt2ps zmm14,zmm3,zmm1
  a0103f:	62 72 6d 48 7f e9    	vpermt2ps zmm13,zmm2,zmm1
  a01045:	62 71 7c 48 10 bf e0 	vmovups zmm15,ZMMWORD PTR [rdi+0x1e0]
  a0104c:	01 00 00 
  a0104f:	c5 f8 10 8f 20 02 00 	vmovups xmm1,XMMWORD PTR [rdi+0x220]
  a01056:	00 
  a01057:	62 c1 7c 48 28 c7    	vmovaps zmm16,zmm15
  a0105d:	62 e2 65 48 7f c1    	vpermt2ps zmm16,zmm3,zmm1
  a01063:	62 72 6d 48 7f f9    	vpermt2ps zmm15,zmm2,zmm1
  a01069:	62 e1 7c 48 10 8f 30 	vmovups zmm17,ZMMWORD PTR [rdi+0x230]
  a01070:	02 00 00 
  a01073:	c5 f8 10 8f 70 02 00 	vmovups xmm1,XMMWORD PTR [rdi+0x270]
  a0107a:	00 
  a0107b:	62 f2 75 40 77 d9    	vpermi2ps zmm3,zmm17,zmm1
  a01081:	62 e2 6d 48 7f c9    	vpermt2ps zmm17,zmm2,zmm1
  a01087:	62 c1 5c 48 58 d4    	vaddps zmm18,zmm4,zmm12
  a0108d:	62 a1 54 48 58 d8    	vaddps zmm19,zmm5,zmm16
  a01093:	62 a1 6c 40 58 e3    	vaddps zmm20,zmm18,zmm19
  a01099:	62 c1 44 48 58 ee    	vaddps zmm21,zmm7,zmm14
  a0109f:	62 e1 2c 48 58 f3    	vaddps zmm22,zmm10,zmm3
  a010a5:	62 a1 54 40 58 fe    	vaddps zmm23,zmm21,zmm22
  a010ab:	62 b1 5c 40 58 d7    	vaddps zmm2,zmm20,zmm23
  a010b1:	62 41 7c 48 58 c3    	vaddps zmm24,zmm0,zmm11
  a010b7:	62 41 3c 48 58 cf    	vaddps zmm25,zmm8,zmm15
  a010bd:	62 01 3c 40 58 d1    	vaddps zmm26,zmm24,zmm25
  a010c3:	62 41 4c 48 58 dd    	vaddps zmm27,zmm6,zmm13
  a010c9:	62 21 34 48 58 e1    	vaddps zmm28,zmm9,zmm17
  a010cf:	62 01 24 40 58 ec    	vaddps zmm29,zmm27,zmm28
  a010d5:	62 91 2c 40 58 cd    	vaddps zmm1,zmm26,zmm29
  a010db:	62 51 5c 48 5c e4    	vsubps zmm12,zmm4,zmm12
  a010e1:	62 51 3c 48 5c c7    	vsubps zmm8,zmm8,zmm15
  a010e7:	62 51 1c 48 58 f8    	vaddps zmm15,zmm12,zmm8
  a010ed:	62 d1 44 48 5c fe    	vsubps zmm7,zmm7,zmm14
  a010f3:	62 d1 4c 48 5c f5    	vsubps zmm6,zmm6,zmm13
  a010f9:	62 f1 44 48 58 e6    	vaddps zmm4,zmm7,zmm6
  a010ff:	62 72 7d 48 18 2d 93 	vbroadcastss zmm13,DWORD PTR [rip+0xffffffffff674293]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a01106:	42 67 ff 
  a01109:	62 51 5c 48 59 f5    	vmulps zmm14,zmm4,zmm13
  a0110f:	62 31 34 48 5c c9    	vsubps zmm9,zmm9,zmm17
  a01115:	62 f1 2c 48 5c db    	vsubps zmm3,zmm10,zmm3
  a0111b:	62 f1 34 48 5c e3    	vsubps zmm4,zmm9,zmm3
  a01121:	62 51 5c 48 59 d5    	vmulps zmm10,zmm4,zmm13
  a01127:	62 c1 0c 48 58 ca    	vaddps zmm17,zmm14,zmm10
  a0112d:	62 b1 04 48 58 e1    	vaddps zmm4,zmm15,zmm17
  a01133:	62 d1 7c 48 5c c3    	vsubps zmm0,zmm0,zmm11
  a01139:	62 71 7c 40 5c dd    	vsubps zmm11,zmm16,zmm5
  a0113f:	62 e1 24 48 58 c0    	vaddps zmm16,zmm11,zmm0
  a01145:	62 f1 4c 48 5c ef    	vsubps zmm5,zmm6,zmm7
  a0114b:	62 d1 54 48 59 ed    	vmulps zmm5,zmm5,zmm13
  a01151:	62 d1 64 48 58 d9    	vaddps zmm3,zmm3,zmm9
  a01157:	62 d1 64 48 59 f5    	vmulps zmm6,zmm3,zmm13
  a0115d:	62 71 54 48 5c ee    	vsubps zmm13,zmm5,zmm6
  a01163:	62 d1 7c 40 58 fd    	vaddps zmm7,zmm16,zmm13
  a01169:	62 a1 6c 40 5c d3    	vsubps zmm18,zmm18,zmm19
  a0116f:	62 81 24 40 5c dc    	vsubps zmm19,zmm27,zmm28
  a01175:	62 b1 6c 40 58 db    	vaddps zmm3,zmm18,zmm19
  a0117b:	62 01 3c 40 5c c1    	vsubps zmm24,zmm24,zmm25
  a01181:	62 a1 4c 40 5c ed    	vsubps zmm21,zmm22,zmm21
  a01187:	62 11 54 40 58 c8    	vaddps zmm9,zmm21,zmm24
  a0118d:	62 51 1c 48 5c c0    	vsubps zmm8,zmm12,zmm8
  a01193:	62 f1 54 48 58 f6    	vaddps zmm6,zmm5,zmm6
  a01199:	62 f1 3c 48 58 ee    	vaddps zmm5,zmm8,zmm6
  a0119f:	62 d1 7c 48 5c c3    	vsubps zmm0,zmm0,zmm11
  a011a5:	62 51 2c 48 5c de    	vsubps zmm11,zmm10,zmm14
  a011ab:	62 51 7c 48 58 d3    	vaddps zmm10,zmm0,zmm11
  a011b1:	62 a1 5c 40 5c e7    	vsubps zmm20,zmm20,zmm23
  a011b7:	62 11 2c 40 5c e5    	vsubps zmm12,zmm26,zmm29
  a011bd:	62 a1 04 48 5c c9    	vsubps zmm17,zmm15,zmm17
  a011c3:	62 51 7c 40 5c ed    	vsubps zmm13,zmm16,zmm13
  a011c9:	62 a1 6c 40 5c db    	vsubps zmm19,zmm18,zmm19
  a011cf:	62 31 3c 40 5c f5    	vsubps zmm14,zmm24,zmm21
  a011d5:	62 f1 3c 48 5c f6    	vsubps zmm6,zmm8,zmm6
  a011db:	62 51 7c 48 5c db    	vsubps zmm11,zmm0,zmm11
  a011e1:	62 71 7c 48 28 3d 95 	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff6c5d95]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a011e8:	5d 6c ff 
  a011eb:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a011ef:	62 71 7c 48 28 c2    	vmovaps zmm8,zmm2
  a011f5:	62 72 05 48 7f c0    	vpermt2ps zmm8,zmm15,zmm0
  a011fb:	62 e1 7c 48 28 05 bb 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff6c5dbb]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a01202:	5d 6c ff 
  a01205:	62 f2 7d 40 7f d0    	vpermt2ps zmm2,zmm16,zmm0
  a0120b:	62 e1 7c 48 28 f4    	vmovaps zmm22,zmm4
  a01211:	62 e2 05 48 7f f0    	vpermt2ps zmm22,zmm15,zmm0
  a01217:	62 f2 7d 40 7f e0    	vpermt2ps zmm4,zmm16,zmm0
  a0121d:	62 61 7c 48 28 c3    	vmovaps zmm24,zmm3
  a01223:	62 62 05 48 7f c0    	vpermt2ps zmm24,zmm15,zmm0
  a01229:	62 f2 7d 40 7f d8    	vpermt2ps zmm3,zmm16,zmm0
  a0122f:	62 61 7c 48 28 cd    	vmovaps zmm25,zmm5
  a01235:	62 62 05 48 7f c8    	vpermt2ps zmm25,zmm15,zmm0
  a0123b:	62 f2 7d 40 7f e8    	vpermt2ps zmm5,zmm16,zmm0
  a01241:	62 a1 7c 48 28 fc    	vmovaps zmm23,zmm20
  a01247:	62 e2 05 48 7f f8    	vpermt2ps zmm23,zmm15,zmm0
  a0124d:	62 e2 7d 40 7f e0    	vpermt2ps zmm20,zmm16,zmm0
  a01253:	62 21 7c 48 28 d1    	vmovaps zmm26,zmm17
  a01259:	62 62 05 48 7f d0    	vpermt2ps zmm26,zmm15,zmm0
  a0125f:	62 e2 7d 40 7f c8    	vpermt2ps zmm17,zmm16,zmm0
  a01265:	62 21 7c 48 28 db    	vmovaps zmm27,zmm19
  a0126b:	62 62 05 48 7f d8    	vpermt2ps zmm27,zmm15,zmm0
  a01271:	62 e2 7d 40 7f d8    	vpermt2ps zmm19,zmm16,zmm0
  a01277:	62 61 7c 48 28 e6    	vmovaps zmm28,zmm6
  a0127d:	62 62 05 48 7f e0    	vpermt2ps zmm28,zmm15,zmm0
  a01283:	62 f2 7d 40 7f f0    	vpermt2ps zmm6,zmm16,zmm0
  a01289:	62 e1 7c 48 28 15 6d 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff6c5c6d]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a01290:	5c 6c ff 
  a01293:	62 41 7c 48 28 e8    	vmovaps zmm29,zmm8
  a01299:	62 22 6d 40 7f ef    	vpermt2ps zmm29,zmm18,zmm23
  a0129f:	62 e1 7c 48 28 2d 97 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff6c5c97]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a012a6:	5c 6c ff 
  a012a9:	62 32 55 40 7f c7    	vpermt2ps zmm8,zmm21,zmm23
  a012af:	62 21 7c 48 28 f6    	vmovaps zmm30,zmm22
  a012b5:	62 02 6d 40 7f f2    	vpermt2ps zmm30,zmm18,zmm26
  a012bb:	62 82 55 40 7f f2    	vpermt2ps zmm22,zmm21,zmm26
  a012c1:	62 01 7c 48 28 d0    	vmovaps zmm26,zmm24
  a012c7:	62 02 6d 40 7f d3    	vpermt2ps zmm26,zmm18,zmm27
  a012cd:	62 02 55 40 7f c3    	vpermt2ps zmm24,zmm21,zmm27
  a012d3:	62 01 7c 48 28 d9    	vmovaps zmm27,zmm25
  a012d9:	62 02 6d 40 7f dc    	vpermt2ps zmm27,zmm18,zmm28
  a012df:	62 02 55 40 7f cc    	vpermt2ps zmm25,zmm21,zmm28
  a012e5:	62 b2 6d 40 7f d4    	vpermt2ps zmm2,zmm18,zmm20
  a012eb:	62 b2 6d 40 7f e1    	vpermt2ps zmm4,zmm18,zmm17
  a012f1:	62 b2 6d 40 7f db    	vpermt2ps zmm3,zmm18,zmm19
  a012f7:	62 f1 ed 48 14 db    	vunpcklpd zmm3,zmm2,zmm3
  a012fd:	62 f2 6d 40 7f ee    	vpermt2ps zmm5,zmm18,zmm6
  a01303:	62 e1 dd 48 14 fd    	vunpcklpd zmm23,zmm4,zmm5
  a01309:	62 91 95 40 14 d2    	vunpcklpd zmm2,zmm29,zmm26
  a0130f:	62 91 95 40 15 e2    	vunpckhpd zmm4,zmm29,zmm26
  a01315:	62 81 8d 40 14 db    	vunpcklpd zmm19,zmm30,zmm27
  a0131b:	62 81 8d 40 15 cb    	vunpckhpd zmm17,zmm30,zmm27
  a01321:	62 91 bd 48 14 f0    	vunpcklpd zmm6,zmm8,zmm24
  a01327:	62 91 bd 48 15 e8    	vunpckhpd zmm5,zmm8,zmm24
  a0132d:	62 01 cd 40 14 e1    	vunpcklpd zmm28,zmm22,zmm25
  a01333:	62 81 cd 40 15 e1    	vunpckhpd zmm20,zmm22,zmm25
  a01339:	62 71 7c 48 28 05 bd 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff6c5abd]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a01340:	5a 6c ff 
  a01343:	62 e1 7c 48 28 f1    	vmovaps zmm22,zmm1
  a01349:	62 e2 05 48 7f f0    	vpermt2ps zmm22,zmm15,zmm0
  a0134f:	62 f2 7d 40 7f c8    	vpermt2ps zmm1,zmm16,zmm0
  a01355:	62 61 7c 48 28 c7    	vmovaps zmm24,zmm7
  a0135b:	62 62 05 48 7f c0    	vpermt2ps zmm24,zmm15,zmm0
  a01361:	62 f2 7d 40 7f f8    	vpermt2ps zmm7,zmm16,zmm0
  a01367:	62 41 7c 48 28 c9    	vmovaps zmm25,zmm9
  a0136d:	62 62 05 48 7f c8    	vpermt2ps zmm25,zmm15,zmm0
  a01373:	62 72 7d 40 7f c8    	vpermt2ps zmm9,zmm16,zmm0
  a01379:	62 41 7c 48 28 d2    	vmovaps zmm26,zmm10
  a0137f:	62 62 05 48 7f d0    	vpermt2ps zmm26,zmm15,zmm0
  a01385:	62 72 7d 40 7f d0    	vpermt2ps zmm10,zmm16,zmm0
  a0138b:	62 41 7c 48 28 ec    	vmovaps zmm29,zmm12
  a01391:	62 62 05 48 7f e8    	vpermt2ps zmm29,zmm15,zmm0
  a01397:	62 72 7d 40 7f e0    	vpermt2ps zmm12,zmm16,zmm0
  a0139d:	62 41 7c 48 28 f5    	vmovaps zmm30,zmm13
  a013a3:	62 62 05 48 7f f0    	vpermt2ps zmm30,zmm15,zmm0
  a013a9:	62 72 7d 40 7f e8    	vpermt2ps zmm13,zmm16,zmm0
  a013af:	62 41 7c 48 28 fe    	vmovaps zmm31,zmm14
  a013b5:	62 62 05 48 7f f8    	vpermt2ps zmm31,zmm15,zmm0
  a013bb:	62 72 7d 40 7f f0    	vpermt2ps zmm14,zmm16,zmm0
  a013c1:	62 72 25 48 77 f8    	vpermi2ps zmm15,zmm11,zmm0
  a013c7:	62 72 7d 40 7f d8    	vpermt2ps zmm11,zmm16,zmm0
  a013cd:	62 f1 7c 48 28 c2    	vmovaps zmm0,zmm2
  a013d3:	62 b2 3d 48 7f c3    	vpermt2ps zmm0,zmm8,zmm19
  a013d9:	62 61 7c 48 28 1d 5d 	vmovaps zmm27,ZMMWORD PTR [rip+0xffffffffff6c5a5d]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a013e0:	5a 6c ff 
  a013e3:	62 b2 25 40 7f d3    	vpermt2ps zmm2,zmm27,zmm19
  a013e9:	62 e1 7c 48 28 dc    	vmovaps zmm19,zmm4
  a013ef:	62 a2 3d 48 7f d9    	vpermt2ps zmm19,zmm8,zmm17
  a013f5:	62 b2 25 40 7f e1    	vpermt2ps zmm4,zmm27,zmm17
  a013fb:	62 e1 7c 48 28 ce    	vmovaps zmm17,zmm6
  a01401:	62 82 3d 48 7f cc    	vpermt2ps zmm17,zmm8,zmm28
  a01407:	62 92 25 40 7f f4    	vpermt2ps zmm6,zmm27,zmm28
  a0140d:	62 e1 7c 48 28 c5    	vmovaps zmm16,zmm5
  a01413:	62 a2 3d 48 7f c4    	vpermt2ps zmm16,zmm8,zmm20
  a01419:	62 b2 25 40 7f ec    	vpermt2ps zmm5,zmm27,zmm20
  a0141f:	62 e1 7c 48 28 e3    	vmovaps zmm20,zmm3
  a01425:	62 a2 3d 48 7f e7    	vpermt2ps zmm20,zmm8,zmm23
  a0142b:	62 b2 25 40 7f df    	vpermt2ps zmm3,zmm27,zmm23
  a01431:	62 a1 7c 48 28 fe    	vmovaps zmm23,zmm22
  a01437:	62 82 6d 40 7f fd    	vpermt2ps zmm23,zmm18,zmm29
  a0143d:	62 82 55 40 7f f5    	vpermt2ps zmm22,zmm21,zmm29
  a01443:	62 01 7c 48 28 e0    	vmovaps zmm28,zmm24
  a01449:	62 02 6d 40 7f e6    	vpermt2ps zmm28,zmm18,zmm30
  a0144f:	62 02 55 40 7f c6    	vpermt2ps zmm24,zmm21,zmm30
  a01455:	62 01 7c 48 28 e9    	vmovaps zmm29,zmm25
  a0145b:	62 02 6d 40 7f ef    	vpermt2ps zmm29,zmm18,zmm31
  a01461:	62 02 55 40 7f cf    	vpermt2ps zmm25,zmm21,zmm31
  a01467:	62 01 7c 48 28 f2    	vmovaps zmm30,zmm26
  a0146d:	62 42 55 40 7f d7    	vpermt2ps zmm26,zmm21,zmm15
  a01473:	62 42 6d 40 7f f7    	vpermt2ps zmm30,zmm18,zmm15
  a01479:	62 d2 6d 40 7f cc    	vpermt2ps zmm1,zmm18,zmm12
  a0147f:	62 d2 6d 40 7f fd    	vpermt2ps zmm7,zmm18,zmm13
  a01485:	62 52 6d 40 7f ce    	vpermt2ps zmm9,zmm18,zmm14
  a0148b:	62 51 f5 48 14 e1    	vunpcklpd zmm12,zmm1,zmm9
  a01491:	62 52 6d 40 7f d3    	vpermt2ps zmm10,zmm18,zmm11
  a01497:	62 51 c5 48 14 d2    	vunpcklpd zmm10,zmm7,zmm10
  a0149d:	62 11 c5 40 14 cd    	vunpcklpd zmm9,zmm23,zmm29
  a014a3:	62 11 c5 40 15 dd    	vunpckhpd zmm11,zmm23,zmm29
  a014a9:	62 11 9d 40 14 ee    	vunpcklpd zmm13,zmm28,zmm30
  a014af:	62 11 9d 40 15 fe    	vunpckhpd zmm15,zmm28,zmm30
  a014b5:	62 91 cd 40 14 f9    	vunpcklpd zmm7,zmm22,zmm25
  a014bb:	62 11 cd 40 15 f1    	vunpckhpd zmm14,zmm22,zmm25
  a014c1:	62 81 bd 40 14 ea    	vunpcklpd zmm21,zmm24,zmm26
  a014c7:	62 81 bd 40 15 f2    	vunpckhpd zmm22,zmm24,zmm26
  a014cd:	62 d1 7c 48 28 c9    	vmovaps zmm1,zmm9
  a014d3:	62 d2 3d 48 7f cd    	vpermt2ps zmm1,zmm8,zmm13
  a014d9:	62 52 25 40 7f cd    	vpermt2ps zmm9,zmm27,zmm13
  a014df:	62 c1 7c 48 28 d3    	vmovaps zmm18,zmm11
  a014e5:	62 c2 3d 48 7f d7    	vpermt2ps zmm18,zmm8,zmm15
  a014eb:	62 52 25 40 7f df    	vpermt2ps zmm11,zmm27,zmm15
  a014f1:	62 61 7c 48 28 c7    	vmovaps zmm24,zmm7
  a014f7:	62 22 3d 48 7f c5    	vpermt2ps zmm24,zmm8,zmm21
  a014fd:	62 b2 25 40 7f fd    	vpermt2ps zmm7,zmm27,zmm21
  a01503:	62 c1 7c 48 28 fe    	vmovaps zmm23,zmm14
  a01509:	62 a2 3d 48 7f fe    	vpermt2ps zmm23,zmm8,zmm22
  a0150f:	62 32 25 40 7f f6    	vpermt2ps zmm14,zmm27,zmm22
  a01515:	62 52 1d 48 77 c2    	vpermi2ps zmm8,zmm12,zmm10
  a0151b:	62 52 25 40 7f e2    	vpermt2ps zmm12,zmm27,zmm10
  a01521:	62 71 7c 48 10 7a 02 	vmovups zmm15,ZMMWORD PTR [rdx+0x80]
  a01528:	62 71 7c 48 10 6a 03 	vmovups zmm13,ZMMWORD PTR [rdx+0xc0]
  a0152f:	62 61 7c 48 10 4a 04 	vmovups zmm25,ZMMWORD PTR [rdx+0x100]
  a01536:	62 61 7c 48 10 52 05 	vmovups zmm26,ZMMWORD PTR [rdx+0x140]
  a0153d:	62 e1 7c 48 10 72 06 	vmovups zmm22,ZMMWORD PTR [rdx+0x180]
  a01544:	62 e1 7c 48 10 6a 07 	vmovups zmm21,ZMMWORD PTR [rdx+0x1c0]
  a0154b:	62 11 64 40 59 d1    	vmulps zmm10,zmm19,zmm25
  a01551:	62 12 6d 40 bc d2    	vfnmadd231ps zmm10,zmm18,zmm26
  a01557:	62 01 6c 40 59 c9    	vmulps zmm25,zmm18,zmm25
  a0155d:	62 61 7c 48 10 5a 10 	vmovups zmm27,ZMMWORD PTR [rdx+0x400]
  a01564:	62 22 2d 40 b8 cb    	vfmadd231ps zmm25,zmm26,zmm19
  a0156a:	62 e1 7c 48 10 5a 11 	vmovups zmm19,ZMMWORD PTR [rdx+0x440]
  a01571:	62 81 5c 40 59 d3    	vmulps zmm18,zmm20,zmm27
  a01577:	62 a2 3d 48 bc d3    	vfnmadd231ps zmm18,zmm8,zmm19
  a0157d:	62 01 3c 48 59 d3    	vmulps zmm26,zmm8,zmm27
  a01583:	62 71 7c 48 10 42 08 	vmovups zmm8,ZMMWORD PTR [rdx+0x200]
  a0158a:	62 22 65 40 b8 d4    	vfmadd231ps zmm26,zmm19,zmm20
  a01590:	62 e1 7c 48 10 62 09 	vmovups zmm20,ZMMWORD PTR [rdx+0x240]
  a01597:	62 c1 74 40 59 d8    	vmulps zmm19,zmm17,zmm8
  a0159d:	62 a2 3d 40 bc dc    	vfnmadd231ps zmm19,zmm24,zmm20
  a015a3:	62 41 3c 40 59 c0    	vmulps zmm24,zmm24,zmm8
  a015a9:	62 71 7c 48 10 42 0c 	vmovups zmm8,ZMMWORD PTR [rdx+0x300]
  a015b0:	62 22 5d 40 b8 c1    	vfmadd231ps zmm24,zmm20,zmm17
  a015b6:	62 e1 7c 48 10 62 0d 	vmovups zmm20,ZMMWORD PTR [rdx+0x340]
  a015bd:	62 c1 7c 40 59 c8    	vmulps zmm17,zmm16,zmm8
  a015c3:	62 a2 45 40 bc cc    	vfnmadd231ps zmm17,zmm23,zmm20
  a015c9:	62 41 44 40 59 d8    	vmulps zmm27,zmm23,zmm8
  a015cf:	62 e1 7c 48 10 7a 0a 	vmovups zmm23,ZMMWORD PTR [rdx+0x280]
  a015d6:	62 22 5d 40 b8 d8    	vfmadd231ps zmm27,zmm20,zmm16
  a015dc:	62 e1 7c 48 10 42 0b 	vmovups zmm16,ZMMWORD PTR [rdx+0x2c0]
  a015e3:	62 31 4c 48 59 c7    	vmulps zmm8,zmm6,zmm23
  a015e9:	62 32 45 48 bc c0    	vfnmadd231ps zmm8,zmm7,zmm16
  a015ef:	62 b1 44 48 59 ff    	vmulps zmm7,zmm7,zmm23
  a015f5:	62 e1 7c 48 10 7a 0e 	vmovups zmm23,ZMMWORD PTR [rdx+0x380]
  a015fc:	62 f2 7d 40 b8 fe    	vfmadd231ps zmm7,zmm16,zmm6
  a01602:	62 f1 7c 48 10 72 0f 	vmovups zmm6,ZMMWORD PTR [rdx+0x3c0]
  a01609:	62 a1 54 48 59 e7    	vmulps zmm20,zmm5,zmm23
  a0160f:	62 e2 0d 48 bc e6    	vfnmadd231ps zmm20,zmm14,zmm6
  a01615:	62 31 0c 48 59 f7    	vmulps zmm14,zmm14,zmm23
  a0161b:	62 e1 7c 48 10 42 12 	vmovups zmm16,ZMMWORD PTR [rdx+0x480]
  a01622:	62 72 4d 48 b8 f5    	vfmadd231ps zmm14,zmm6,zmm5
  a01628:	62 61 7c 48 10 62 13 	vmovups zmm28,ZMMWORD PTR [rdx+0x4c0]
  a0162f:	62 a1 5c 48 59 fe    	vmulps zmm23,zmm4,zmm22
  a01635:	62 a2 25 48 bc fd    	vfnmadd231ps zmm23,zmm11,zmm21
  a0163b:	62 a1 24 48 59 f6    	vmulps zmm22,zmm11,zmm22
  a01641:	62 b1 2c 48 58 f2    	vaddps zmm6,zmm10,zmm18
  a01647:	62 e2 55 40 b8 f4    	vfmadd231ps zmm22,zmm21,zmm4
  a0164d:	62 f1 7c 48 58 e6    	vaddps zmm4,zmm0,zmm6
  a01653:	62 a1 64 48 59 e8    	vmulps zmm21,zmm3,zmm16
  a01659:	62 82 1d 48 bc ec    	vfnmadd231ps zmm21,zmm12,zmm28
  a0165f:	62 a1 1c 48 59 c0    	vmulps zmm16,zmm12,zmm16
  a01665:	62 b1 64 40 58 e9    	vaddps zmm5,zmm19,zmm17
  a0166b:	62 e2 1d 40 b8 c3    	vfmadd231ps zmm16,zmm28,zmm3
  a01671:	62 31 5c 40 58 df    	vaddps zmm11,zmm20,zmm23
  a01677:	62 41 6c 48 59 e7    	vmulps zmm28,zmm2,zmm15
  a0167d:	62 42 35 48 bc e5    	vfnmadd231ps zmm28,zmm9,zmm13
  a01683:	62 51 34 48 59 ff    	vmulps zmm15,zmm9,zmm15
  a01689:	62 d1 3c 48 58 db    	vaddps zmm3,zmm8,zmm11
  a0168f:	62 72 15 48 b8 fa    	vfmadd231ps zmm15,zmm13,zmm2
  a01695:	62 91 54 40 58 d4    	vaddps zmm2,zmm21,zmm28
  a0169b:	62 11 34 40 58 e2    	vaddps zmm12,zmm25,zmm26
  a016a1:	62 01 34 40 5c ca    	vsubps zmm25,zmm25,zmm26
  a016a7:	62 11 3c 40 58 cb    	vaddps zmm9,zmm24,zmm27
  a016ad:	62 01 3c 40 5c c3    	vsubps zmm24,zmm24,zmm27
  a016b3:	62 31 0c 48 58 ee    	vaddps zmm13,zmm14,zmm22
  a016b9:	62 a1 0c 48 5c f6    	vsubps zmm22,zmm14,zmm22
  a016bf:	62 51 7c 40 58 f7    	vaddps zmm14,zmm16,zmm15
  a016c5:	62 41 7c 40 5c d7    	vsubps zmm26,zmm16,zmm15
  a016cb:	62 71 1c 48 58 f9    	vaddps zmm15,zmm12,zmm1
  a016d1:	62 21 2c 48 5c da    	vsubps zmm27,zmm10,zmm18
  a016d7:	62 c1 44 48 58 c5    	vaddps zmm16,zmm7,zmm13
  a016dd:	62 a1 64 40 5c d9    	vsubps zmm19,zmm19,zmm17
  a016e3:	62 62 7d 48 18 2d 6b 	vbroadcastss zmm29,DWORD PTR [rip+0xffffffffff67406b]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a016ea:	40 67 ff 
  a016ed:	62 a1 5c 40 5c e7    	vsubps zmm20,zmm20,zmm23
  a016f3:	62 11 3c 40 59 d5    	vmulps zmm10,zmm24,zmm29
  a016f9:	62 81 54 40 5c ec    	vsubps zmm21,zmm21,zmm28
  a016ff:	62 e2 7d 48 18 3d 97 	vbroadcastss zmm23,DWORD PTR [rip+0xffffffffff673c97]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a01706:	3c 67 ff 
  a01709:	62 32 35 40 b8 d7    	vfmadd231ps zmm10,zmm25,zmm23
  a0170f:	62 01 34 40 59 cd    	vmulps zmm25,zmm25,zmm29
  a01715:	62 02 45 40 bc c8    	vfnmadd231ps zmm25,zmm23,zmm24
  a0171b:	62 81 2c 40 59 cd    	vmulps zmm17,zmm26,zmm29
  a01721:	62 a2 4d 40 b8 cf    	vfmadd231ps zmm17,zmm22,zmm23
  a01727:	62 81 4c 40 59 f5    	vmulps zmm22,zmm22,zmm29
  a0172d:	62 82 45 40 bc f2    	vfnmadd231ps zmm22,zmm23,zmm26
  a01733:	62 81 64 40 59 d5    	vmulps zmm18,zmm19,zmm29
  a01739:	62 a2 25 40 b8 d7    	vfmadd231ps zmm18,zmm27,zmm23
  a0173f:	62 01 24 40 59 c5    	vmulps zmm24,zmm27,zmm29
  a01745:	62 22 45 40 bc c3    	vfnmadd231ps zmm24,zmm23,zmm19
  a0174b:	62 81 54 40 59 dd    	vmulps zmm19,zmm21,zmm29
  a01751:	62 a2 5d 40 b8 df    	vfmadd231ps zmm19,zmm20,zmm23
  a01757:	62 81 5c 40 59 e5    	vmulps zmm20,zmm20,zmm29
  a0175d:	62 62 7d 48 18 15 81 	vbroadcastss zmm26,DWORD PTR [rip+0xffffffffff673f81]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a01764:	3f 67 ff 
  a01767:	62 a2 55 40 bc e7    	vfnmadd231ps zmm20,zmm21,zmm23
  a0176d:	62 81 7c 48 28 ea    	vmovaps zmm21,zmm26
  a01773:	62 e2 7d 48 18 3d c7 	vbroadcastss zmm23,DWORD PTR [rip+0xffffffffff673ec7]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a0177a:	3e 67 ff 
  a0177d:	62 e2 4d 48 a8 e8    	vfmadd213ps zmm21,zmm6,zmm0
  a01783:	62 f2 45 40 bc c6    	vfnmadd231ps zmm0,zmm23,zmm6
  a01789:	62 91 7c 48 28 f2    	vmovaps zmm6,zmm26
  a0178f:	62 d2 25 48 a8 f0    	vfmadd213ps zmm6,zmm11,zmm8
  a01795:	62 52 45 40 bc c3    	vfnmadd231ps zmm8,zmm23,zmm11
  a0179b:	62 11 7c 48 28 da    	vmovaps zmm11,zmm26
  a017a1:	62 72 1d 48 a8 d9    	vfmadd213ps zmm11,zmm12,zmm1
  a017a7:	62 d2 45 40 bc cc    	vfnmadd231ps zmm1,zmm23,zmm12
  a017ad:	62 11 7c 48 28 e2    	vmovaps zmm12,zmm26
  a017b3:	62 72 15 48 a8 e7    	vfmadd213ps zmm12,zmm13,zmm7
  a017b9:	62 b2 15 48 bc ff    	vfnmadd231ps zmm7,zmm13,zmm23
  a017bf:	62 a2 55 48 bc ef    	vfnmadd231ps zmm21,zmm5,zmm23
  a017c5:	62 b2 6d 48 bc f7    	vfnmadd231ps zmm6,zmm2,zmm23
  a017cb:	62 32 35 48 bc df    	vfnmadd231ps zmm11,zmm9,zmm23
  a017d1:	62 32 0d 48 bc e7    	vfnmadd231ps zmm12,zmm14,zmm23
  a017d7:	62 f1 5c 48 58 e5    	vaddps zmm4,zmm4,zmm5
  a017dd:	62 f2 2d 40 b8 c5    	vfmadd231ps zmm0,zmm26,zmm5
  a017e3:	62 f1 64 48 58 da    	vaddps zmm3,zmm3,zmm2
  a017e9:	62 72 2d 40 b8 c2    	vfmadd231ps zmm8,zmm26,zmm2
  a017ef:	62 d1 34 48 58 d7    	vaddps zmm2,zmm9,zmm15
  a017f5:	62 d2 2d 40 b8 c9    	vfmadd231ps zmm1,zmm26,zmm9
  a017fb:	62 92 0d 48 b8 fa    	vfmadd231ps zmm7,zmm14,zmm26
  a01801:	62 d1 7c 40 58 ee    	vaddps zmm5,zmm16,zmm14
  a01807:	62 11 7c 48 58 c9    	vaddps zmm9,zmm0,zmm25
  a0180d:	62 91 7c 48 5c c1    	vsubps zmm0,zmm0,zmm25
  a01813:	62 31 3c 48 58 ee    	vaddps zmm13,zmm8,zmm22
  a01819:	62 31 3c 48 5c c6    	vsubps zmm8,zmm8,zmm22
  a0181f:	62 11 74 48 5c f0    	vsubps zmm14,zmm1,zmm24
  a01825:	62 f1 3c 40 58 c9    	vaddps zmm1,zmm24,zmm1
  a0182b:	62 31 44 48 5c fc    	vsubps zmm15,zmm7,zmm20
  a01831:	62 b1 44 48 58 fc    	vaddps zmm7,zmm7,zmm20
  a01837:	62 c1 54 40 58 c2    	vaddps zmm16,zmm21,zmm10
  a0183d:	62 51 54 40 5c d2    	vsubps zmm10,zmm21,zmm10
  a01843:	62 a1 4c 48 58 e1    	vaddps zmm20,zmm6,zmm17
  a01849:	62 b1 4c 48 5c f1    	vsubps zmm6,zmm6,zmm17
  a0184f:	62 a1 24 48 5c ca    	vsubps zmm17,zmm11,zmm18
  a01855:	62 51 6c 40 58 db    	vaddps zmm11,zmm18,zmm11
  a0185b:	62 a1 1c 48 5c d3    	vsubps zmm18,zmm12,zmm19
  a01861:	62 31 1c 48 58 e3    	vaddps zmm12,zmm12,zmm19
  a01867:	62 a1 7c 40 5c dc    	vsubps zmm19,zmm16,zmm20
  a0186d:	62 a1 7c 40 58 c4    	vaddps zmm16,zmm16,zmm20
  a01873:	62 a1 74 40 5c e2    	vsubps zmm20,zmm17,zmm18
  a01879:	62 a1 74 40 58 ca    	vaddps zmm17,zmm17,zmm18
  a0187f:	62 c1 34 48 58 d5    	vaddps zmm18,zmm9,zmm13
  a01885:	62 51 34 48 5c cd    	vsubps zmm9,zmm9,zmm13
  a0188b:	62 51 0c 48 58 ef    	vaddps zmm13,zmm14,zmm15
  a01891:	62 51 0c 48 5c f7    	vsubps zmm14,zmm14,zmm15
  a01897:	62 51 7c 48 5c f8    	vsubps zmm15,zmm0,zmm8
  a0189d:	62 d1 7c 48 58 c0    	vaddps zmm0,zmm0,zmm8
  a018a3:	62 71 74 48 5c c7    	vsubps zmm8,zmm1,zmm7
  a018a9:	62 f1 74 48 58 cf    	vaddps zmm1,zmm1,zmm7
  a018af:	62 f1 2c 48 58 fe    	vaddps zmm7,zmm10,zmm6
  a018b5:	62 f1 2c 48 5c f6    	vsubps zmm6,zmm10,zmm6
  a018bb:	62 51 24 48 58 d4    	vaddps zmm10,zmm11,zmm12
  a018c1:	62 51 24 48 5c dc    	vsubps zmm11,zmm11,zmm12
  a018c7:	62 71 5c 48 5c e3    	vsubps zmm12,zmm4,zmm3
  a018cd:	62 f1 5c 48 58 db    	vaddps zmm3,zmm4,zmm3
  a018d3:	62 f1 6c 48 5c e5    	vsubps zmm4,zmm2,zmm5
  a018d9:	62 f1 6c 48 58 d5    	vaddps zmm2,zmm2,zmm5
  a018df:	62 f1 7c 48 28 2d 57 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff68c557]        # 8de40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b2f0>
  a018e6:	c5 68 ff 
  a018e9:	62 f2 55 48 7f da    	vpermt2ps zmm3,zmm5,zmm2
  a018ef:	62 a2 55 48 7f dc    	vpermt2ps zmm19,zmm5,zmm20
  a018f5:	62 c2 55 48 7f d5    	vpermt2ps zmm18,zmm5,zmm13
  a018fb:	62 52 55 48 7f f8    	vpermt2ps zmm15,zmm5,zmm8
  a01901:	62 d2 55 48 7f fa    	vpermt2ps zmm7,zmm5,zmm10
  a01907:	62 72 55 48 7f e4    	vpermt2ps zmm12,zmm5,zmm4
  a0190d:	62 a2 55 48 7f c1    	vpermt2ps zmm16,zmm5,zmm17
  a01913:	62 52 55 48 7f ce    	vpermt2ps zmm9,zmm5,zmm14
  a01919:	62 f2 55 48 7f c1    	vpermt2ps zmm0,zmm5,zmm1
  a0191f:	62 d2 55 48 7f f3    	vpermt2ps zmm6,zmm5,zmm11
  a01925:	62 f1 7c 48 11 1e    	vmovups ZMMWORD PTR [rsi],zmm3
  a0192b:	62 e1 7c 48 11 5e 01 	vmovups ZMMWORD PTR [rsi+0x40],zmm19
  a01932:	62 e1 7c 48 11 56 02 	vmovups ZMMWORD PTR [rsi+0x80],zmm18
  a01939:	62 71 7c 48 11 7e 03 	vmovups ZMMWORD PTR [rsi+0xc0],zmm15
  a01940:	62 f1 7c 48 11 7e 04 	vmovups ZMMWORD PTR [rsi+0x100],zmm7
  a01947:	62 71 7c 48 11 66 05 	vmovups ZMMWORD PTR [rsi+0x140],zmm12
  a0194e:	62 e1 7c 48 11 46 06 	vmovups ZMMWORD PTR [rsi+0x180],zmm16
  a01955:	62 71 7c 48 11 4e 07 	vmovups ZMMWORD PTR [rsi+0x1c0],zmm9
  a0195c:	62 f1 7c 48 11 46 08 	vmovups ZMMWORD PTR [rsi+0x200],zmm0
  a01963:	62 f1 7c 48 11 76 09 	vmovups ZMMWORD PTR [rsi+0x240],zmm6
  a0196a:	48 89 ec             	mov    rsp,rbp
  a0196d:	5d                   	pop    rbp
  a0196e:	c5 f8 77             	vzeroupper
  a01971:	c3                   	ret
