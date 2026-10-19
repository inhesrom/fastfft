
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a5ffc0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a5ffc0:	62 f1 7c 48 10 07    	vmovups zmm0,ZMMWORD PTR [rdi]
  a5ffc6:	c5 fb 10 4f 40       	vmovsd xmm1,QWORD PTR [rdi+0x40]
  a5ffcb:	62 f1 7c 48 28 15 ab 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff633bab]        # 93b80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21030>
  a5ffd2:	3b 63 ff 
  a5ffd5:	62 f1 7c 48 28 d8    	vmovaps zmm3,zmm0
  a5ffdb:	62 f2 6d 48 7f d9    	vpermt2ps zmm3,zmm2,zmm1
  a5ffe1:	62 f1 7c 48 28 25 d5 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff633bd5]        # 93bc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21070>
  a5ffe8:	3b 63 ff 
  a5ffeb:	62 f2 5d 48 7f c1    	vpermt2ps zmm0,zmm4,zmm1
  a5fff1:	62 f1 7c 48 10 8f 48 	vmovups zmm1,ZMMWORD PTR [rdi+0x48]
  a5fff8:	00 00 00 
  a5fffb:	c5 fb 10 af 88 00 00 	vmovsd xmm5,QWORD PTR [rdi+0x88]
  a60002:	00 
  a60003:	62 f1 7c 48 28 f1    	vmovaps zmm6,zmm1
  a60009:	62 f2 6d 48 7f f5    	vpermt2ps zmm6,zmm2,zmm5
  a6000f:	62 f2 5d 48 7f cd    	vpermt2ps zmm1,zmm4,zmm5
  a60015:	62 f1 7c 48 10 af 90 	vmovups zmm5,ZMMWORD PTR [rdi+0x90]
  a6001c:	00 00 00 
  a6001f:	c5 fb 10 bf d0 00 00 	vmovsd xmm7,QWORD PTR [rdi+0xd0]
  a60026:	00 
  a60027:	62 71 7c 48 28 c5    	vmovaps zmm8,zmm5
  a6002d:	62 72 6d 48 7f c7    	vpermt2ps zmm8,zmm2,zmm7
  a60033:	62 f2 5d 48 7f ef    	vpermt2ps zmm5,zmm4,zmm7
  a60039:	62 f1 7c 48 10 bf d8 	vmovups zmm7,ZMMWORD PTR [rdi+0xd8]
  a60040:	00 00 00 
  a60043:	c5 7b 10 8f 18 01 00 	vmovsd xmm9,QWORD PTR [rdi+0x118]
  a6004a:	00 
  a6004b:	62 d2 45 48 77 d1    	vpermi2ps zmm2,zmm7,zmm9
  a60051:	62 d2 5d 48 7f f9    	vpermt2ps zmm7,zmm4,zmm9
  a60057:	62 51 64 48 58 c8    	vaddps zmm9,zmm3,zmm8
  a6005d:	62 71 4c 48 58 da    	vaddps zmm11,zmm6,zmm2
  a60063:	62 51 34 48 58 eb    	vaddps zmm13,zmm9,zmm11
  a60069:	62 71 7c 48 58 e5    	vaddps zmm12,zmm0,zmm5
  a6006f:	62 71 74 48 58 f7    	vaddps zmm14,zmm1,zmm7
  a60075:	62 d1 1c 48 58 e6    	vaddps zmm4,zmm12,zmm14
  a6007b:	62 d1 64 48 5c d8    	vsubps zmm3,zmm3,zmm8
  a60081:	62 f1 74 48 5c cf    	vsubps zmm1,zmm1,zmm7
  a60087:	62 f1 64 48 58 f9    	vaddps zmm7,zmm3,zmm1
  a6008d:	62 f1 7c 48 5c c5    	vsubps zmm0,zmm0,zmm5
  a60093:	62 f1 6c 48 5c d6    	vsubps zmm2,zmm2,zmm6
  a60099:	62 71 6c 48 58 d0    	vaddps zmm10,zmm2,zmm0
  a6009f:	62 d1 34 48 5c eb    	vsubps zmm5,zmm9,zmm11
  a600a5:	62 51 1c 48 5c e6    	vsubps zmm12,zmm12,zmm14
  a600ab:	62 f1 64 48 5c d9    	vsubps zmm3,zmm3,zmm1
  a600b1:	62 71 7c 48 5c da    	vsubps zmm11,zmm0,zmm2
  a600b7:	62 f1 7c 48 28 0d bf 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff666ebf]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a600be:	6e 66 ff 
  a600c1:	c4 41 08 57 f6       	vxorps xmm14,xmm14,xmm14
  a600c6:	62 d1 7c 48 28 c5    	vmovaps zmm0,zmm13
  a600cc:	62 d2 75 48 7f c6    	vpermt2ps zmm0,zmm1,zmm14
  a600d2:	62 e1 7c 48 28 15 e4 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff666ee4]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a600d9:	6e 66 ff 
  a600dc:	62 52 6d 40 7f ee    	vpermt2ps zmm13,zmm18,zmm14
  a600e2:	62 f1 7c 48 28 f7    	vmovaps zmm6,zmm7
  a600e8:	62 d2 75 48 7f f6    	vpermt2ps zmm6,zmm1,zmm14
  a600ee:	62 d2 6d 40 7f fe    	vpermt2ps zmm7,zmm18,zmm14
  a600f4:	62 71 7c 48 28 c5    	vmovaps zmm8,zmm5
  a600fa:	62 52 75 48 7f c6    	vpermt2ps zmm8,zmm1,zmm14
  a60100:	62 d2 6d 40 7f ee    	vpermt2ps zmm5,zmm18,zmm14
  a60106:	62 e1 7c 48 28 e3    	vmovaps zmm20,zmm3
  a6010c:	62 c2 75 48 7f e6    	vpermt2ps zmm20,zmm1,zmm14
  a60112:	62 d2 6d 40 7f de    	vpermt2ps zmm3,zmm18,zmm14
  a60118:	62 a1 74 00 57 c9    	vxorps xmm17,xmm17,xmm17
  a6011e:	62 a2 75 48 7f c9    	vpermt2ps zmm17,zmm1,zmm17
  a60124:	c4 41 00 57 ff       	vxorps xmm15,xmm15,xmm15
  a60129:	62 52 6d 40 7f ff    	vpermt2ps zmm15,zmm18,zmm15
  a6012f:	62 e1 7c 48 28 05 c7 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff666dc7]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a60136:	6d 66 ff 
  a60139:	62 71 7c 48 28 c8    	vmovaps zmm9,zmm0
  a6013f:	62 32 7d 40 7f c9    	vpermt2ps zmm9,zmm16,zmm17
  a60145:	62 e1 7c 48 28 1d f1 	vmovaps zmm19,ZMMWORD PTR [rip+0xffffffffff666df1]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a6014c:	6d 66 ff 
  a6014f:	62 b2 65 40 7f c1    	vpermt2ps zmm0,zmm19,zmm17
  a60155:	62 e1 7c 48 28 ee    	vmovaps zmm21,zmm6
  a6015b:	62 a2 7d 40 7f e9    	vpermt2ps zmm21,zmm16,zmm17
  a60161:	62 b2 65 40 7f f1    	vpermt2ps zmm6,zmm19,zmm17
  a60167:	62 c1 7c 48 28 f0    	vmovaps zmm22,zmm8
  a6016d:	62 a2 7d 40 7f f1    	vpermt2ps zmm22,zmm16,zmm17
  a60173:	62 32 65 40 7f c1    	vpermt2ps zmm8,zmm19,zmm17
  a60179:	62 a1 7c 48 28 fc    	vmovaps zmm23,zmm20
  a6017f:	62 a2 7d 40 7f f9    	vpermt2ps zmm23,zmm16,zmm17
  a60185:	62 a2 65 40 7f e1    	vpermt2ps zmm20,zmm19,zmm17
  a6018b:	62 52 7d 40 7f ef    	vpermt2ps zmm13,zmm16,zmm15
  a60191:	62 d2 7d 40 7f ff    	vpermt2ps zmm7,zmm16,zmm15
  a60197:	62 d2 7d 40 7f ef    	vpermt2ps zmm5,zmm16,zmm15
  a6019d:	62 f1 95 48 14 d5    	vunpcklpd zmm2,zmm13,zmm5
  a601a3:	62 d2 7d 40 7f df    	vpermt2ps zmm3,zmm16,zmm15
  a601a9:	62 61 c5 48 14 c3    	vunpcklpd zmm24,zmm7,zmm3
  a601af:	62 b1 b5 48 14 fe    	vunpcklpd zmm7,zmm9,zmm22
  a601b5:	62 31 b5 48 15 ce    	vunpckhpd zmm9,zmm9,zmm22
  a601bb:	62 31 d5 40 14 ef    	vunpcklpd zmm13,zmm21,zmm23
  a601c1:	62 a1 d5 40 15 f7    	vunpckhpd zmm22,zmm21,zmm23
  a601c7:	62 d1 fd 48 14 d8    	vunpcklpd zmm3,zmm0,zmm8
  a601cd:	62 d1 fd 48 15 e8    	vunpckhpd zmm5,zmm0,zmm8
  a601d3:	62 a1 cd 48 14 fc    	vunpcklpd zmm23,zmm6,zmm20
  a601d9:	62 21 cd 48 15 cc    	vunpckhpd zmm25,zmm6,zmm20
  a601df:	62 e1 7c 48 28 25 17 	vmovaps zmm20,ZMMWORD PTR [rip+0xffffffffff666c17]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a601e6:	6c 66 ff 
  a601e9:	62 f1 7c 48 28 c7    	vmovaps zmm0,zmm7
  a601ef:	62 d2 5d 40 7f c5    	vpermt2ps zmm0,zmm20,zmm13
  a601f5:	62 e1 7c 48 28 2d 41 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff666c41]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a601fc:	6c 66 ff 
  a601ff:	62 d2 55 40 7f fd    	vpermt2ps zmm7,zmm21,zmm13
  a60205:	62 d1 7c 48 28 f1    	vmovaps zmm6,zmm9
  a6020b:	62 b2 5d 40 7f f6    	vpermt2ps zmm6,zmm20,zmm22
  a60211:	62 32 55 40 7f ce    	vpermt2ps zmm9,zmm21,zmm22
  a60217:	62 71 7c 48 28 c3    	vmovaps zmm8,zmm3
  a6021d:	62 32 5d 40 7f c7    	vpermt2ps zmm8,zmm20,zmm23
  a60223:	62 b2 55 40 7f df    	vpermt2ps zmm3,zmm21,zmm23
  a60229:	62 71 7c 48 28 ed    	vmovaps zmm13,zmm5
  a6022f:	62 12 5d 40 7f e9    	vpermt2ps zmm13,zmm20,zmm25
  a60235:	62 92 55 40 7f e9    	vpermt2ps zmm5,zmm21,zmm25
  a6023b:	62 92 5d 40 7f d0    	vpermt2ps zmm2,zmm20,zmm24
  a60241:	62 e1 7c 48 28 f4    	vmovaps zmm22,zmm4
  a60247:	62 c2 75 48 7f f6    	vpermt2ps zmm22,zmm1,zmm14
  a6024d:	62 d2 6d 40 7f e6    	vpermt2ps zmm4,zmm18,zmm14
  a60253:	62 c1 7c 48 28 fa    	vmovaps zmm23,zmm10
  a60259:	62 c2 75 48 7f fe    	vpermt2ps zmm23,zmm1,zmm14
  a6025f:	62 52 6d 40 7f d6    	vpermt2ps zmm10,zmm18,zmm14
  a60265:	62 41 7c 48 28 c4    	vmovaps zmm24,zmm12
  a6026b:	62 42 75 48 7f c6    	vpermt2ps zmm24,zmm1,zmm14
  a60271:	62 52 6d 40 7f e6    	vpermt2ps zmm12,zmm18,zmm14
  a60277:	62 d2 25 48 77 ce    	vpermi2ps zmm1,zmm11,zmm14
  a6027d:	62 52 6d 40 7f de    	vpermt2ps zmm11,zmm18,zmm14
  a60283:	62 21 7c 48 28 ce    	vmovaps zmm25,zmm22
  a60289:	62 22 7d 40 7f c9    	vpermt2ps zmm25,zmm16,zmm17
  a6028f:	62 a2 65 40 7f f1    	vpermt2ps zmm22,zmm19,zmm17
  a60295:	62 21 7c 48 28 d7    	vmovaps zmm26,zmm23
  a6029b:	62 22 7d 40 7f d1    	vpermt2ps zmm26,zmm16,zmm17
  a602a1:	62 a2 65 40 7f f9    	vpermt2ps zmm23,zmm19,zmm17
  a602a7:	62 01 7c 48 28 d8    	vmovaps zmm27,zmm24
  a602ad:	62 22 7d 40 7f d9    	vpermt2ps zmm27,zmm16,zmm17
  a602b3:	62 22 65 40 7f c1    	vpermt2ps zmm24,zmm19,zmm17
  a602b9:	62 61 7c 48 28 e1    	vmovaps zmm28,zmm1
  a602bf:	62 22 7d 40 7f e1    	vpermt2ps zmm28,zmm16,zmm17
  a602c5:	62 b2 65 40 7f c9    	vpermt2ps zmm1,zmm19,zmm17
  a602cb:	62 d2 7d 40 7f e7    	vpermt2ps zmm4,zmm16,zmm15
  a602d1:	62 52 7d 40 7f d7    	vpermt2ps zmm10,zmm16,zmm15
  a602d7:	62 52 7d 40 7f e7    	vpermt2ps zmm12,zmm16,zmm15
  a602dd:	62 51 dd 48 14 f4    	vunpcklpd zmm14,zmm4,zmm12
  a602e3:	62 52 7d 40 7f df    	vpermt2ps zmm11,zmm16,zmm15
  a602e9:	62 d1 ad 48 14 e3    	vunpcklpd zmm4,zmm10,zmm11
  a602ef:	62 81 b5 40 14 d3    	vunpcklpd zmm18,zmm25,zmm27
  a602f5:	62 11 b5 40 15 d3    	vunpckhpd zmm10,zmm25,zmm27
  a602fb:	62 11 ad 40 14 dc    	vunpcklpd zmm11,zmm26,zmm28
  a60301:	62 11 ad 40 15 e4    	vunpckhpd zmm12,zmm26,zmm28
  a60307:	62 11 cd 40 14 f8    	vunpcklpd zmm15,zmm22,zmm24
  a6030d:	62 81 cd 40 15 d8    	vunpckhpd zmm19,zmm22,zmm24
  a60313:	62 e1 c5 40 14 c9    	vunpcklpd zmm17,zmm23,zmm1
  a60319:	62 e1 c5 40 15 f9    	vunpckhpd zmm23,zmm23,zmm1
  a6031f:	62 b1 7c 48 28 ca    	vmovaps zmm1,zmm18
  a60325:	62 d2 5d 40 7f cb    	vpermt2ps zmm1,zmm20,zmm11
  a6032b:	62 c2 55 40 7f d3    	vpermt2ps zmm18,zmm21,zmm11
  a60331:	62 c1 7c 48 28 c2    	vmovaps zmm16,zmm10
  a60337:	62 c2 5d 40 7f c4    	vpermt2ps zmm16,zmm20,zmm12
  a6033d:	62 52 55 40 7f d4    	vpermt2ps zmm10,zmm21,zmm12
  a60343:	62 c1 7c 48 28 f7    	vmovaps zmm22,zmm15
  a60349:	62 a2 5d 40 7f f1    	vpermt2ps zmm22,zmm20,zmm17
  a6034f:	62 32 55 40 7f f9    	vpermt2ps zmm15,zmm21,zmm17
  a60355:	62 31 7c 48 28 e3    	vmovaps zmm12,zmm19
  a6035b:	62 32 5d 40 7f e7    	vpermt2ps zmm12,zmm20,zmm23
  a60361:	62 a2 55 40 7f df    	vpermt2ps zmm19,zmm21,zmm23
  a60367:	62 72 5d 40 7f f4    	vpermt2ps zmm14,zmm20,zmm4
  a6036d:	62 61 7c 48 10 4a 02 	vmovups zmm25,ZMMWORD PTR [rdx+0x80]
  a60374:	62 61 7c 48 10 42 03 	vmovups zmm24,ZMMWORD PTR [rdx+0xc0]
  a6037b:	62 e1 7c 48 10 62 04 	vmovups zmm20,ZMMWORD PTR [rdx+0x100]
  a60382:	62 e1 7c 48 10 6a 05 	vmovups zmm21,ZMMWORD PTR [rdx+0x140]
  a60389:	62 71 7c 48 10 5a 06 	vmovups zmm11,ZMMWORD PTR [rdx+0x180]
  a60390:	62 e1 7c 48 10 4a 07 	vmovups zmm17,ZMMWORD PTR [rdx+0x1c0]
  a60397:	62 61 7c 48 10 52 08 	vmovups zmm26,ZMMWORD PTR [rdx+0x200]
  a6039e:	62 e1 7c 48 10 7a 09 	vmovups zmm23,ZMMWORD PTR [rdx+0x240]
  a603a5:	62 d1 34 48 59 e3    	vmulps zmm4,zmm9,zmm11
  a603ab:	62 b2 2d 48 bc e1    	vfnmadd231ps zmm4,zmm10,zmm17
  a603b1:	62 51 2c 48 59 db    	vmulps zmm11,zmm10,zmm11
  a603b7:	62 61 7c 48 10 5a 0c 	vmovups zmm27,ZMMWORD PTR [rdx+0x300]
  a603be:	62 52 75 40 b8 d9    	vfmadd231ps zmm11,zmm17,zmm9
  a603c4:	62 71 7c 48 10 4a 0d 	vmovups zmm9,ZMMWORD PTR [rdx+0x340]
  a603cb:	62 11 14 48 59 d3    	vmulps zmm10,zmm13,zmm27
  a603d1:	62 52 1d 48 bc d1    	vfnmadd231ps zmm10,zmm12,zmm9
  a603d7:	62 11 1c 48 59 e3    	vmulps zmm12,zmm12,zmm27
  a603dd:	62 61 7c 48 10 5a 0a 	vmovups zmm27,ZMMWORD PTR [rdx+0x280]
  a603e4:	62 52 35 48 b8 e5    	vfmadd231ps zmm12,zmm9,zmm13
  a603ea:	62 71 7c 48 10 4a 0b 	vmovups zmm9,ZMMWORD PTR [rdx+0x2c0]
  a603f1:	62 81 44 48 59 c9    	vmulps zmm17,zmm7,zmm25
  a603f7:	62 82 6d 40 bc c8    	vfnmadd231ps zmm17,zmm18,zmm24
  a603fd:	62 81 6c 40 59 d1    	vmulps zmm18,zmm18,zmm25
  a60403:	62 71 7c 48 10 6a 0e 	vmovups zmm13,ZMMWORD PTR [rdx+0x380]
  a6040a:	62 e2 3d 40 b8 d7    	vfmadd231ps zmm18,zmm24,zmm7
  a60410:	62 f1 7c 48 10 7a 0f 	vmovups zmm7,ZMMWORD PTR [rdx+0x3c0]
  a60417:	62 01 3c 48 59 c2    	vmulps zmm24,zmm8,zmm26
  a6041d:	62 22 4d 40 bc c7    	vfnmadd231ps zmm24,zmm22,zmm23
  a60423:	62 81 4c 40 59 f2    	vmulps zmm22,zmm22,zmm26
  a60429:	62 61 7c 48 10 4a 10 	vmovups zmm25,ZMMWORD PTR [rdx+0x400]
  a60430:	62 c2 45 40 b8 f0    	vfmadd231ps zmm22,zmm23,zmm8
  a60436:	62 71 7c 48 10 42 11 	vmovups zmm8,ZMMWORD PTR [rdx+0x440]
  a6043d:	62 c1 54 48 59 fd    	vmulps zmm23,zmm5,zmm13
  a60443:	62 e2 65 40 bc ff    	vfnmadd231ps zmm23,zmm19,zmm7
  a60449:	62 51 64 40 59 ed    	vmulps zmm13,zmm19,zmm13
  a6044f:	62 21 3c 40 58 d7    	vaddps zmm26,zmm24,zmm23
  a60455:	62 72 45 48 b8 ed    	vfmadd231ps zmm13,zmm7,zmm5
  a6045b:	62 91 74 40 58 ea    	vaddps zmm5,zmm17,zmm26
  a60461:	62 a1 4c 48 59 dc    	vmulps zmm19,zmm6,zmm20
  a60467:	62 a2 7d 40 bc dd    	vfnmadd231ps zmm19,zmm16,zmm21
  a6046d:	62 a1 7c 40 59 e4    	vmulps zmm20,zmm16,zmm20
  a60473:	62 81 64 48 59 c3    	vmulps zmm16,zmm3,zmm27
  a60479:	62 c2 05 48 bc c1    	vfnmadd231ps zmm16,zmm15,zmm9
  a6047f:	62 e2 55 40 b8 e6    	vfmadd231ps zmm20,zmm21,zmm6
  a60485:	62 81 6c 48 59 e9    	vmulps zmm21,zmm2,zmm25
  a6048b:	62 c2 0d 48 bc e8    	vfnmadd231ps zmm21,zmm14,zmm8
  a60491:	62 21 7c 40 58 e5    	vaddps zmm28,zmm16,zmm21
  a60497:	62 11 04 48 59 fb    	vmulps zmm15,zmm15,zmm27
  a6049d:	62 91 64 40 58 fc    	vaddps zmm7,zmm19,zmm28
  a604a3:	62 72 35 48 b8 fb    	vfmadd231ps zmm15,zmm9,zmm3
  a604a9:	62 51 4c 40 58 cd    	vaddps zmm9,zmm22,zmm13
  a604af:	62 d1 6c 40 58 f1    	vaddps zmm6,zmm18,zmm9
  a604b5:	62 11 0c 48 59 f1    	vmulps zmm14,zmm14,zmm25
  a604bb:	62 72 3d 48 b8 f2    	vfmadd231ps zmm14,zmm8,zmm2
  a604c1:	62 f2 7d 48 18 15 95 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff614f95]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a604c8:	4f 61 ff 
  a604cb:	62 41 04 48 58 ce    	vaddps zmm25,zmm15,zmm14
  a604d1:	62 f2 7d 48 18 1d f9 	vbroadcastss zmm3,DWORD PTR [rip+0xffffffffff614df9]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a604d8:	4d 61 ff 
  a604db:	62 82 6d 48 bc ca    	vfnmadd231ps zmm17,zmm2,zmm26
  a604e1:	62 11 5c 40 58 c1    	vaddps zmm8,zmm20,zmm25
  a604e7:	62 51 4c 40 5c ed    	vsubps zmm13,zmm22,zmm13
  a604ed:	62 e1 14 48 59 f3    	vmulps zmm22,zmm13,zmm3
  a604f3:	62 21 74 40 58 d6    	vaddps zmm26,zmm17,zmm22
  a604f9:	62 c2 6d 48 bc d1    	vfnmadd231ps zmm18,zmm2,zmm9
  a604ff:	62 31 3c 40 5c cf    	vsubps zmm9,zmm24,zmm23
  a60505:	62 e1 34 48 59 fb    	vmulps zmm23,zmm9,zmm3
  a6050b:	62 31 6c 40 5c ef    	vsubps zmm13,zmm18,zmm23
  a60511:	62 62 7d 48 18 05 4d 	vbroadcastss zmm24,DWORD PTR [rip+0xffffffffff61514d]        # 75668 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b18>
  a60518:	51 61 ff 
  a6051b:	62 82 6d 48 bc dc    	vfnmadd231ps zmm19,zmm2,zmm28
  a60521:	62 11 14 48 59 c8    	vmulps zmm9,zmm13,zmm24
  a60527:	62 51 04 48 5c f6    	vsubps zmm14,zmm15,zmm14
  a6052d:	62 72 7d 48 18 3d a1 	vbroadcastss zmm15,DWORD PTR [rip+0xffffffffff614fa1]        # 754d8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2988>
  a60534:	4f 61 ff 
  a60537:	62 52 2d 40 b8 cf    	vfmadd231ps zmm9,zmm26,zmm15
  a6053d:	62 61 0c 48 59 db    	vmulps zmm27,zmm14,zmm3
  a60543:	62 82 6d 48 bc e1    	vfnmadd231ps zmm20,zmm2,zmm25
  a60549:	62 01 64 40 58 cb    	vaddps zmm25,zmm19,zmm27
  a6054f:	62 31 7c 40 5c f5    	vsubps zmm14,zmm16,zmm21
  a60555:	62 e1 0c 48 59 eb    	vmulps zmm21,zmm14,zmm3
  a6055b:	62 62 7d 48 18 25 b3 	vbroadcastss zmm28,DWORD PTR [rip+0xffffffffff614db3]        # 75318 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x27c8>
  a60562:	4d 61 ff 
  a60565:	62 51 14 48 59 ef    	vmulps zmm13,zmm13,zmm15
  a6056b:	62 31 5c 40 5c f5    	vsubps zmm14,zmm20,zmm21
  a60571:	62 12 2d 40 bc e8    	vfnmadd231ps zmm13,zmm26,zmm24
  a60577:	62 62 7d 48 18 05 5b 	vbroadcastss zmm24,DWORD PTR [rip+0xffffffffff614f5b]        # 754dc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x298c>
  a6057e:	4f 61 ff 
  a60581:	62 81 0c 48 59 c4    	vmulps zmm16,zmm14,zmm28
  a60587:	62 82 35 40 b8 c0    	vfmadd231ps zmm16,zmm25,zmm24
  a6058d:	62 11 0c 48 59 f0    	vmulps zmm14,zmm14,zmm24
  a60593:	62 12 1d 40 bc f1    	vfnmadd231ps zmm14,zmm28,zmm25
  a60599:	62 a1 74 40 5c f6    	vsubps zmm22,zmm17,zmm22
  a6059f:	62 a1 6c 40 58 cf    	vaddps zmm17,zmm18,zmm23
  a605a5:	62 c1 5c 48 58 fa    	vaddps zmm23,zmm4,zmm10
  a605ab:	62 01 64 40 5c cb    	vsubps zmm25,zmm19,zmm27
  a605b1:	62 21 7c 48 58 d7    	vaddps zmm26,zmm0,zmm23
  a605b7:	62 a1 5c 40 58 d5    	vaddps zmm18,zmm20,zmm21
  a605bd:	62 11 74 40 59 fc    	vmulps zmm15,zmm17,zmm28
  a605c3:	62 12 4d 40 b8 f8    	vfmadd231ps zmm15,zmm22,zmm24
  a605c9:	62 81 74 40 59 c8    	vmulps zmm17,zmm17,zmm24
  a605cf:	62 e2 7d 48 18 25 17 	vbroadcastss zmm20,DWORD PTR [rip+0xffffffffff614f17]        # 754f0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x29a0>
  a605d6:	4f 61 ff 
  a605d9:	62 82 4d 40 bc cc    	vfnmadd231ps zmm17,zmm22,zmm28
  a605df:	62 a1 6c 40 59 dc    	vmulps zmm19,zmm18,zmm20
  a605e5:	62 e2 7d 48 18 2d 09 	vbroadcastss zmm21,DWORD PTR [rip+0xffffffffff615009]        # 755f8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2aa8>
  a605ec:	50 61 ff 
  a605ef:	62 a2 35 40 bc dd    	vfnmadd231ps zmm19,zmm25,zmm21
  a605f5:	62 a1 6c 40 59 d5    	vmulps zmm18,zmm18,zmm21
  a605fb:	62 e1 54 48 58 ef    	vaddps zmm21,zmm5,zmm7
  a60601:	62 a2 35 40 b8 d4    	vfmadd231ps zmm18,zmm25,zmm20
  a60607:	62 c1 24 48 58 e4    	vaddps zmm20,zmm11,zmm12
  a6060d:	62 e1 5c 40 58 f1    	vaddps zmm22,zmm20,zmm1
  a60613:	62 b2 6d 48 bc c7    	vfnmadd231ps zmm0,zmm2,zmm23
  a60619:	62 c1 4c 48 58 f8    	vaddps zmm23,zmm6,zmm8
  a6061f:	62 51 24 48 5c dc    	vsubps zmm11,zmm11,zmm12
  a60625:	62 71 24 48 59 db    	vmulps zmm11,zmm11,zmm3
  a6062b:	62 41 7c 48 58 c3    	vaddps zmm24,zmm0,zmm11
  a60631:	62 b2 6d 48 bc cc    	vfnmadd231ps zmm1,zmm2,zmm20
  a60637:	62 21 34 48 58 c8    	vaddps zmm25,zmm9,zmm16
  a6063d:	62 d1 5c 48 5c e2    	vsubps zmm4,zmm4,zmm10
  a60643:	62 f1 5c 48 59 e3    	vmulps zmm4,zmm4,zmm3
  a60649:	62 e1 74 48 5c e4    	vsubps zmm20,zmm1,zmm4
  a6064f:	62 41 7c 48 5c db    	vsubps zmm27,zmm0,zmm11
  a60655:	62 51 14 48 58 de    	vaddps zmm11,zmm13,zmm14
  a6065b:	62 61 5c 48 58 e1    	vaddps zmm28,zmm4,zmm1
  a60661:	62 f1 7c 48 28 c2    	vmovaps zmm0,zmm2
  a60667:	62 b2 45 40 ac c6    	vfnmadd213ps zmm0,zmm23,zmm22
  a6066d:	62 31 4c 20 58 e7    	vaddps ymm12,ymm22,ymm23
  a60673:	62 71 7c 48 28 d2    	vmovaps zmm10,zmm2
  a60679:	62 12 55 40 ac d2    	vfnmadd213ps zmm10,zmm21,zmm26
  a6067f:	62 b1 2c 00 58 cd    	vaddps xmm1,xmm26,xmm21
  a60685:	c5 fc 28 25 53 6b 61 	vmovaps ymm4,YMMWORD PTR [rip+0xffffffffff616b53]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  a6068c:	ff 
  a6068d:	62 d2 5d 28 7f cc    	vpermt2ps ymm1,ymm4,ymm12
  a60693:	62 71 7c 48 28 e2    	vmovaps zmm12,zmm2
  a60699:	62 32 25 48 ac e4    	vfnmadd213ps zmm12,zmm11,zmm20
  a6069f:	62 c1 5c 20 58 eb    	vaddps ymm21,ymm20,ymm11
  a606a5:	62 e1 7c 48 28 e2    	vmovaps zmm20,zmm2
  a606ab:	62 82 35 40 ac e0    	vfnmadd213ps zmm20,zmm25,zmm24
  a606b1:	62 11 3c 00 58 d9    	vaddps xmm11,xmm24,xmm25
  a606b7:	62 a1 74 40 5c f2    	vsubps zmm22,zmm17,zmm18
  a606bd:	62 32 5d 28 7f dd    	vpermt2ps ymm11,ymm4,ymm21
  a606c3:	62 e1 7c 48 28 ea    	vmovaps zmm21,zmm2
  a606c9:	62 92 4d 40 ac d4    	vfnmadd213ps zmm2,zmm22,zmm28
  a606cf:	62 a1 1c 20 58 fe    	vaddps ymm23,ymm28,ymm22
  a606d5:	62 a1 04 48 58 f3    	vaddps zmm22,zmm15,zmm19
  a606db:	62 82 4d 40 ac eb    	vfnmadd213ps zmm21,zmm22,zmm27
  a606e1:	62 a1 24 00 58 f6    	vaddps xmm22,xmm27,xmm22
  a606e7:	62 a2 5d 28 7f f7    	vpermt2ps ymm22,ymm4,ymm23
  a606ed:	c5 d4 5c ef          	vsubps ymm5,ymm5,ymm7
  a606f1:	c5 d4 59 eb          	vmulps ymm5,ymm5,ymm3
  a606f5:	c5 fc 5c fd          	vsubps ymm7,ymm0,ymm5
  a606f9:	c4 c1 4c 5c f0       	vsubps ymm6,ymm6,ymm8
  a606fe:	c5 cc 59 f3          	vmulps ymm6,ymm6,ymm3
  a60702:	c5 28 58 c6          	vaddps xmm8,xmm10,xmm6
  a60706:	62 72 5d 28 7f c7    	vpermt2ps ymm8,ymm4,ymm7
  a6070c:	62 b1 34 28 5c f8    	vsubps ymm7,ymm9,ymm16
  a60712:	c5 c4 59 fb          	vmulps ymm7,ymm7,ymm3
  a60716:	c5 1c 5c cf          	vsubps ymm9,ymm12,ymm7
  a6071a:	c4 41 14 5c ee       	vsubps ymm13,ymm13,ymm14
  a6071f:	c5 14 59 eb          	vmulps ymm13,ymm13,ymm3
  a60723:	62 51 5c 00 58 f5    	vaddps xmm14,xmm20,xmm13
  a60729:	62 52 5d 28 7f f1    	vpermt2ps ymm14,ymm4,ymm9
  a6072f:	62 31 04 28 5c cb    	vsubps ymm9,ymm15,ymm19
  a60735:	c5 34 59 cb          	vmulps ymm9,ymm9,ymm3
  a60739:	62 31 74 20 58 fa    	vaddps ymm15,ymm17,ymm18
  a6073f:	62 c1 6c 28 5c c1    	vsubps ymm16,ymm2,ymm9
  a60745:	c5 84 59 db          	vmulps ymm3,ymm15,ymm3
  a60749:	62 71 54 00 58 fb    	vaddps xmm15,xmm21,xmm3
  a6074f:	62 32 5d 28 7f f8    	vpermt2ps ymm15,ymm4,ymm16
  a60755:	c5 fc 58 c5          	vaddps ymm0,ymm0,ymm5
  a60759:	c5 a8 5c ee          	vsubps xmm5,xmm10,xmm6
  a6075d:	62 f2 5d 28 7f e8    	vpermt2ps ymm5,ymm4,ymm0
  a60763:	c5 9c 58 c7          	vaddps ymm0,ymm12,ymm7
  a60767:	62 d1 5c 00 5c f5    	vsubps xmm6,xmm20,xmm13
  a6076d:	62 f2 5d 28 7f f0    	vpermt2ps ymm6,ymm4,ymm0
  a60773:	c5 b4 58 c2          	vaddps ymm0,ymm9,ymm2
  a60777:	62 f1 54 00 5c d3    	vsubps xmm2,xmm21,xmm3
  a6077d:	62 f2 5d 28 7f d0    	vpermt2ps ymm2,ymm4,ymm0
  a60783:	c5 fc 11 0e          	vmovups YMMWORD PTR [rsi],ymm1
  a60787:	c5 7c 11 5e 20       	vmovups YMMWORD PTR [rsi+0x20],ymm11
  a6078c:	62 e1 7c 28 11 76 02 	vmovups YMMWORD PTR [rsi+0x40],ymm22
  a60793:	c5 7c 11 46 60       	vmovups YMMWORD PTR [rsi+0x60],ymm8
  a60798:	c5 7c 11 b6 80 00 00 	vmovups YMMWORD PTR [rsi+0x80],ymm14
  a6079f:	00 
  a607a0:	c5 7c 11 be a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm15
  a607a7:	00 
  a607a8:	c5 fc 11 ae c0 00 00 	vmovups YMMWORD PTR [rsi+0xc0],ymm5
  a607af:	00 
  a607b0:	c5 fc 11 b6 e0 00 00 	vmovups YMMWORD PTR [rsi+0xe0],ymm6
  a607b7:	00 
  a607b8:	c5 fc 11 96 00 01 00 	vmovups YMMWORD PTR [rsi+0x100],ymm2
  a607bf:	00 
  a607c0:	c5 f8 77             	vzeroupper
  a607c3:	c3                   	ret
