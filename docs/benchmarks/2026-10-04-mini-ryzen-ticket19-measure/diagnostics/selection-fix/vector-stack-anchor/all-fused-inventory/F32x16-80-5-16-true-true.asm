
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a26000 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a26000:	48 81 ec 08 09 00 00 	sub    rsp,0x908
  a26007:	62 f1 7c 48 28 05 6f 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6a0f6f]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a2600e:	0f 6a ff 
  a26011:	62 f1 7c 48 28 0d a5 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff6a0fa5]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a26018:	0f 6a ff 
  a2601b:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a2601f:	62 f2 7d 48 7f d2    	vpermt2ps zmm2,zmm0,zmm2
  a26025:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x7c0],zmm2
  a2602c:	1f 
  a2602d:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a26031:	62 f2 75 48 7f c0    	vpermt2ps zmm0,zmm1,zmm0
  a26037:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x780],zmm0
  a2603e:	1e 
  a2603f:	48 c1 e2 07          	shl    rdx,0x7
  a26043:	48 8d 04 92          	lea    rax,[rdx+rdx*4]
  a26047:	31 d2                	xor    edx,edx
  a26049:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  a26050:	62 f1 7c 48 10 14 17 	vmovups zmm2,ZMMWORD PTR [rdi+rdx*1]
  a26057:	62 f1 7c 48 10 6c 17 	vmovups zmm5,ZMMWORD PTR [rdi+rdx*1+0x40]
  a2605e:	01 
  a2605f:	62 f1 7c 48 10 74 17 	vmovups zmm6,ZMMWORD PTR [rdi+rdx*1+0x80]
  a26066:	02 
  a26067:	62 f1 7c 48 10 44 17 	vmovups zmm0,ZMMWORD PTR [rdi+rdx*1+0xc0]
  a2606e:	03 
  a2606f:	62 71 7c 48 28 d2    	vmovaps zmm10,zmm2
  a26075:	62 e1 7c 48 28 0d 41 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff66a441]        # 904c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d970>
  a2607c:	a4 66 ff 
  a2607f:	62 72 75 40 7f d5    	vpermt2ps zmm10,zmm17,zmm5
  a26085:	62 f1 7c 48 28 de    	vmovaps zmm3,zmm6
  a2608b:	62 f2 75 40 7f d8    	vpermt2ps zmm3,zmm17,zmm0
  a26091:	62 71 7c 48 10 44 17 	vmovups zmm8,ZMMWORD PTR [rdi+rdx*1+0x200]
  a26098:	08 
  a26099:	62 f1 7c 48 10 4c 17 	vmovups zmm1,ZMMWORD PTR [rdi+rdx*1+0x240]
  a260a0:	09 
  a260a1:	62 d1 7c 48 28 e0    	vmovaps zmm4,zmm8
  a260a7:	62 f2 75 40 7f e1    	vpermt2ps zmm4,zmm17,zmm1
  a260ad:	62 71 64 48 58 dc    	vaddps zmm11,zmm3,zmm4
  a260b3:	62 51 2c 48 58 e3    	vaddps zmm12,zmm10,zmm11
  a260b9:	62 71 7c 48 10 6c 17 	vmovups zmm13,ZMMWORD PTR [rdi+rdx*1+0x100]
  a260c0:	04 
  a260c1:	62 71 7c 48 10 74 17 	vmovups zmm14,ZMMWORD PTR [rdi+rdx*1+0x140]
  a260c8:	05 
  a260c9:	62 d1 7c 48 28 fd    	vmovaps zmm7,zmm13
  a260cf:	62 d2 75 40 7f fe    	vpermt2ps zmm7,zmm17,zmm14
  a260d5:	62 71 7c 48 10 7c 17 	vmovups zmm15,ZMMWORD PTR [rdi+rdx*1+0x180]
  a260dc:	06 
  a260dd:	62 e1 7c 48 10 44 17 	vmovups zmm16,ZMMWORD PTR [rdi+rdx*1+0x1c0]
  a260e4:	07 
  a260e5:	62 51 7c 48 28 cf    	vmovaps zmm9,zmm15
  a260eb:	62 32 75 40 7f c8    	vpermt2ps zmm9,zmm17,zmm16
  a260f1:	62 c1 44 48 58 c9    	vaddps zmm17,zmm7,zmm9
  a260f7:	62 31 1c 48 58 e1    	vaddps zmm12,zmm12,zmm17
  a260fd:	62 71 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm12
  a26104:	ff 
  a26105:	62 e1 7c 48 28 25 71 	vmovaps zmm20,ZMMWORD PTR [rip+0xffffffffff6a0e71]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a2610c:	0e 6a ff 
  a2610f:	62 a1 54 00 57 ed    	vxorps xmm21,xmm21,xmm21
  a26115:	62 32 5d 40 7f e5    	vpermt2ps zmm12,zmm20,zmm21
  a2611b:	62 c1 7c 48 28 fc    	vmovaps zmm23,zmm12
  a26121:	62 61 7c 48 28 15 d5 	vmovaps zmm26,ZMMWORD PTR [rip+0xffffffffff66a3d5]        # 90500 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d9b0>
  a26128:	a3 66 ff 
  a2612b:	62 f2 2d 40 7f f0    	vpermt2ps zmm6,zmm26,zmm0
  a26131:	62 72 2d 40 7f c1    	vpermt2ps zmm8,zmm26,zmm1
  a26137:	62 51 4c 48 5c e0    	vsubps zmm12,zmm6,zmm8
  a2613d:	62 52 2d 40 7f ee    	vpermt2ps zmm13,zmm26,zmm14
  a26143:	62 32 2d 40 7f f8    	vpermt2ps zmm15,zmm26,zmm16
  a26149:	62 51 14 48 5c f7    	vsubps zmm14,zmm13,zmm15
  a2614f:	62 f2 7d 48 18 05 ff 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff64f5ff]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a26156:	f5 64 ff 
  a26159:	62 e1 0c 48 59 c0    	vmulps zmm16,zmm14,zmm0
  a2615f:	62 f2 7d 48 18 0d 37 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff64f237]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a26166:	f2 64 ff 
  a26169:	62 e2 1d 48 b8 c1    	vfmadd231ps zmm16,zmm12,zmm1
  a2616f:	62 e2 7d 48 18 1d 6f 	vbroadcastss zmm19,DWORD PTR [rip+0xffffffffff64f56f]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a26176:	f5 64 ff 
  a26179:	62 a1 7c 48 28 d3    	vmovaps zmm18,zmm19
  a2617f:	62 c2 25 48 a8 d2    	vfmadd213ps zmm18,zmm11,zmm10
  a26185:	62 62 7d 48 18 0d b5 	vbroadcastss zmm25,DWORD PTR [rip+0xffffffffff64f4b5]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a2618c:	f4 64 ff 
  a2618f:	62 82 75 40 bc d1    	vfnmadd231ps zmm18,zmm17,zmm25
  a26195:	62 a1 7c 40 58 f2    	vaddps zmm22,zmm16,zmm18
  a2619b:	62 e1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm22
  a261a2:	fe 
  a261a3:	62 a2 5d 40 7f f5    	vpermt2ps zmm22,zmm20,zmm21
  a261a9:	62 e1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm22
  a261b0:	0e 
  a261b1:	62 e1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm23
  a261b8:	01 
  a261b9:	62 21 7c 48 28 df    	vmovaps zmm27,zmm23
  a261bf:	62 52 35 40 bc d3    	vfnmadd231ps zmm10,zmm25,zmm11
  a261c5:	62 32 65 40 b8 d1    	vfmadd231ps zmm10,zmm19,zmm17
  a261cb:	62 71 1c 48 59 d8    	vmulps zmm11,zmm12,zmm0
  a261d1:	62 52 75 48 bc de    	vfnmadd231ps zmm11,zmm1,zmm14
  a261d7:	62 41 2c 48 5c fb    	vsubps zmm31,zmm10,zmm11
  a261dd:	62 11 7c 48 28 e7    	vmovaps zmm12,zmm31
  a261e3:	62 32 5d 40 7f e5    	vpermt2ps zmm12,zmm20,zmm21
  a261e9:	62 71 7c 48 11 24 24 	vmovups ZMMWORD PTR [rsp],zmm12
  a261f0:	62 51 7c 48 28 f4    	vmovaps zmm14,zmm12
  a261f6:	62 a1 6c 40 5c f8    	vsubps zmm23,zmm18,zmm16
  a261fc:	62 31 7c 48 28 e7    	vmovaps zmm12,zmm23
  a26202:	62 32 5d 40 7f e5    	vpermt2ps zmm12,zmm20,zmm21
  a26208:	62 c1 7c 48 28 c4    	vmovaps zmm16,zmm12
  a2620e:	62 c1 7c 48 28 d4    	vmovaps zmm18,zmm12
  a26214:	62 41 24 48 58 c2    	vaddps zmm24,zmm11,zmm10
  a2621a:	62 11 7c 48 28 d0    	vmovaps zmm10,zmm24
  a26220:	62 32 5d 40 7f d5    	vpermt2ps zmm10,zmm20,zmm21
  a26226:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm10
  a2622d:	17 
  a2622e:	62 41 7c 48 28 e2    	vmovaps zmm28,zmm10
  a26234:	62 f2 2d 40 7f d5    	vpermt2ps zmm2,zmm26,zmm5
  a2623a:	62 d1 4c 48 58 e8    	vaddps zmm5,zmm6,zmm8
  a26240:	62 f1 6c 48 58 f5    	vaddps zmm6,zmm2,zmm5
  a26246:	62 51 14 48 58 c7    	vaddps zmm8,zmm13,zmm15
  a2624c:	62 41 4c 48 58 f0    	vaddps zmm30,zmm6,zmm8
  a26252:	62 11 7c 48 28 e6    	vmovaps zmm12,zmm30
  a26258:	62 b1 7c 48 28 f3    	vmovaps zmm6,zmm19
  a2625e:	62 f2 55 48 a8 f2    	vfmadd213ps zmm6,zmm5,zmm2
  a26264:	62 92 3d 48 bc f1    	vfnmadd231ps zmm6,zmm8,zmm25
  a2626a:	62 f1 64 48 5c dc    	vsubps zmm3,zmm3,zmm4
  a26270:	62 d1 44 48 5c e1    	vsubps zmm4,zmm7,zmm9
  a26276:	62 71 5c 48 59 c8    	vmulps zmm9,zmm4,zmm0
  a2627c:	62 72 65 48 b8 c9    	vfmadd231ps zmm9,zmm3,zmm1
  a26282:	62 41 4c 48 5c e9    	vsubps zmm29,zmm6,zmm9
  a26288:	62 11 7c 48 28 fd    	vmovaps zmm15,zmm29
  a2628e:	62 f2 35 40 bc d5    	vfnmadd231ps zmm2,zmm25,zmm5
  a26294:	62 d2 65 40 b8 d0    	vfmadd231ps zmm2,zmm19,zmm8
  a2629a:	62 f1 64 48 59 d8    	vmulps zmm3,zmm3,zmm0
  a262a0:	62 f2 75 48 bc dc    	vfnmadd231ps zmm3,zmm1,zmm4
  a262a6:	62 71 6c 48 58 d3    	vaddps zmm10,zmm2,zmm3
  a262ac:	62 41 7c 48 28 d2    	vmovaps zmm26,zmm10
  a262b2:	62 51 4c 48 58 d9    	vaddps zmm11,zmm6,zmm9
  a262b8:	62 c1 7c 48 28 f3    	vmovaps zmm22,zmm11
  a262be:	62 71 6c 48 5c eb    	vsubps zmm13,zmm2,zmm3
  a262c4:	62 c1 7c 48 28 cd    	vmovaps zmm17,zmm13
  a262ca:	62 f1 7c 48 28 0d 6c 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff6a0c6c]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a262d1:	0c 6a ff 
  a262d4:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp+0x380]
  a262db:	0e 
  a262dc:	62 42 75 48 7f d9    	vpermt2ps zmm27,zmm1,zmm9
  a262e2:	62 61 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm27
  a262e9:	10 
  a262ea:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x7c0]
  a262f1:	1f 
  a262f2:	62 72 75 48 7f f5    	vpermt2ps zmm14,zmm1,zmm5
  a262f8:	62 71 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm14
  a262ff:	12 
  a26300:	62 e2 75 48 7f d5    	vpermt2ps zmm18,zmm1,zmm5
  a26306:	62 e1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm18
  a2630d:	0f 
  a2630e:	62 62 75 48 7f e5    	vpermt2ps zmm28,zmm1,zmm5
  a26314:	62 61 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm28
  a2631b:	11 
  a2631c:	62 22 5d 40 7f f5    	vpermt2ps zmm30,zmm20,zmm21
  a26322:	62 22 5d 40 7f ed    	vpermt2ps zmm29,zmm20,zmm21
  a26328:	62 91 7c 48 28 c6    	vmovaps zmm0,zmm30
  a2632e:	62 92 75 48 7f c5    	vpermt2ps zmm0,zmm1,zmm29
  a26334:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm0
  a2633b:	16 
  a2633c:	62 32 5d 40 7f d5    	vpermt2ps zmm10,zmm20,zmm21
  a26342:	62 d1 7c 48 28 d2    	vmovaps zmm2,zmm10
  a26348:	62 f2 75 48 7f d5    	vpermt2ps zmm2,zmm1,zmm5
  a2634e:	62 f1 7c 48 28 da    	vmovaps zmm3,zmm2
  a26354:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm2
  a2635b:	15 
  a2635c:	62 32 5d 40 7f dd    	vpermt2ps zmm11,zmm20,zmm21
  a26362:	62 d1 7c 48 28 d3    	vmovaps zmm2,zmm11
  a26368:	62 f2 75 48 7f d5    	vpermt2ps zmm2,zmm1,zmm5
  a2636e:	62 f1 7c 48 28 e2    	vmovaps zmm4,zmm2
  a26374:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm2
  a2637b:	14 
  a2637c:	62 32 5d 40 7f ed    	vpermt2ps zmm13,zmm20,zmm21
  a26382:	62 d1 7c 48 28 d5    	vmovaps zmm2,zmm13
  a26388:	62 f2 75 48 7f d5    	vpermt2ps zmm2,zmm1,zmm5
  a2638e:	62 f1 7c 48 28 f2    	vmovaps zmm6,zmm2
  a26394:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm2
  a2639b:	13 
  a2639c:	62 f1 fd 48 15 d3    	vunpckhpd zmm2,zmm0,zmm3
  a263a2:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x740],zmm2
  a263a9:	1d 
  a263aa:	62 f1 dd 48 15 c6    	vunpckhpd zmm0,zmm4,zmm6
  a263b0:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm0
  a263b7:	04 
  a263b8:	62 e1 7c 48 28 1d 3e 	vmovaps zmm19,ZMMWORD PTR [rip+0xffffffffff6a0a3e]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a263bf:	0a 6a ff 
  a263c2:	62 f2 65 40 7f d0    	vpermt2ps zmm2,zmm19,zmm0
  a263c8:	62 d1 a5 40 15 de    	vunpckhpd zmm3,zmm27,zmm14
  a263ce:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x700],zmm3
  a263d5:	1c 
  a263d6:	62 91 ed 40 15 c4    	vunpckhpd zmm0,zmm18,zmm28
  a263dc:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm0
  a263e3:	03 
  a263e4:	62 f2 65 40 7f d8    	vpermt2ps zmm3,zmm19,zmm0
  a263ea:	62 f1 7c 48 10 61 0d 	vmovups zmm4,ZMMWORD PTR [rcx+0x340]
  a263f1:	62 71 7c 48 10 41 0c 	vmovups zmm8,ZMMWORD PTR [rcx+0x300]
  a263f8:	62 d1 64 48 59 c0    	vmulps zmm0,zmm3,zmm8
  a263fe:	62 f2 6d 48 b8 c4    	vfmadd231ps zmm0,zmm2,zmm4
  a26404:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm0
  a2640b:	07 
  a2640c:	62 d1 6c 48 59 c0    	vmulps zmm0,zmm2,zmm8
  a26412:	62 f2 5d 48 bc c3    	vfnmadd231ps zmm0,zmm4,zmm3
  a26418:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm0
  a2641f:	05 
  a26420:	62 f1 7c 48 28 05 96 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6a0b96]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a26427:	0b 6a ff 
  a2642a:	62 32 7d 48 7f e5    	vpermt2ps zmm12,zmm0,zmm21
  a26430:	62 32 7d 48 7f fd    	vpermt2ps zmm15,zmm0,zmm21
  a26436:	62 22 7d 48 7f d5    	vpermt2ps zmm26,zmm0,zmm21
  a2643c:	62 a2 7d 48 7f f5    	vpermt2ps zmm22,zmm0,zmm21
  a26442:	62 a2 7d 48 7f cd    	vpermt2ps zmm17,zmm0,zmm21
  a26448:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp-0x40]
  a2644f:	ff 
  a26450:	62 b2 7d 48 7f d5    	vpermt2ps zmm2,zmm0,zmm21
  a26456:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp-0x80]
  a2645d:	fe 
  a2645e:	62 b2 7d 48 7f dd    	vpermt2ps zmm3,zmm0,zmm21
  a26464:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm3
  a2646b:	fe 
  a2646c:	62 22 7d 48 7f fd    	vpermt2ps zmm31,zmm0,zmm21
  a26472:	62 a2 7d 48 7f fd    	vpermt2ps zmm23,zmm0,zmm21
  a26478:	62 22 7d 48 7f c5    	vpermt2ps zmm24,zmm0,zmm21
  a2647e:	62 e1 7c 48 28 ea    	vmovaps zmm21,zmm2
  a26484:	62 f2 75 48 7f d3    	vpermt2ps zmm2,zmm1,zmm3
  a2648a:	62 f1 7c 48 28 da    	vmovaps zmm3,zmm2
  a26490:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm2
  a26497:	ff 
  a26498:	62 01 7c 48 28 cf    	vmovaps zmm25,zmm31
  a2649e:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x780]
  a264a5:	1e 
  a264a6:	62 62 75 48 7f f8    	vpermt2ps zmm31,zmm1,zmm0
  a264ac:	62 21 7c 48 28 df    	vmovaps zmm27,zmm23
  a264b2:	62 e2 75 48 7f f8    	vpermt2ps zmm23,zmm1,zmm0
  a264b8:	62 01 7c 48 28 e0    	vmovaps zmm28,zmm24
  a264be:	62 62 75 48 7f c0    	vpermt2ps zmm24,zmm1,zmm0
  a264c4:	62 51 7c 48 28 c4    	vmovaps zmm8,zmm12
  a264ca:	62 52 75 48 7f e7    	vpermt2ps zmm12,zmm1,zmm15
  a264d0:	62 71 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm12
  a264d7:	0b 
  a264d8:	62 81 7c 48 28 d2    	vmovaps zmm18,zmm26
  a264de:	62 62 75 48 7f d0    	vpermt2ps zmm26,zmm1,zmm0
  a264e4:	62 b1 7c 48 28 e6    	vmovaps zmm4,zmm22
  a264ea:	62 e2 75 48 7f f0    	vpermt2ps zmm22,zmm1,zmm0
  a264f0:	62 31 7c 48 28 f1    	vmovaps zmm14,zmm17
  a264f6:	62 e2 75 48 7f c8    	vpermt2ps zmm17,zmm1,zmm0
  a264fc:	62 91 9d 48 15 d2    	vunpckhpd zmm2,zmm12,zmm26
  a26502:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x6c0],zmm2
  a26509:	1b 
  a2650a:	62 b1 cd 40 15 c9    	vunpckhpd zmm1,zmm22,zmm17
  a26510:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x680],zmm1
  a26517:	1a 
  a26518:	62 f2 65 40 7f d1    	vpermt2ps zmm2,zmm19,zmm1
  a2651e:	62 91 e5 48 15 df    	vunpckhpd zmm3,zmm3,zmm31
  a26524:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x640],zmm3
  a2652b:	19 
  a2652c:	62 91 c5 40 15 c8    	vunpckhpd zmm1,zmm23,zmm24
  a26532:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x600],zmm1
  a26539:	18 
  a2653a:	62 f2 65 40 7f d9    	vpermt2ps zmm3,zmm19,zmm1
  a26540:	62 e1 7c 48 10 61 1d 	vmovups zmm20,ZMMWORD PTR [rcx+0x740]
  a26547:	62 f1 7c 48 10 49 1c 	vmovups zmm1,ZMMWORD PTR [rcx+0x700]
  a2654e:	62 f1 64 48 59 f1    	vmulps zmm6,zmm3,zmm1
  a26554:	62 b2 6d 48 b8 f4    	vfmadd231ps zmm6,zmm2,zmm20
  a2655a:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm6
  a26561:	06 
  a26562:	62 f1 6c 48 59 c9    	vmulps zmm1,zmm2,zmm1
  a26568:	62 f2 5d 40 bc cb    	vfnmadd231ps zmm1,zmm20,zmm3
  a2656e:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm1
  a26575:	02 
  a26576:	62 f1 7c 48 28 15 80 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff6a0980]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a2657d:	09 6a ff 
  a26580:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x40]
  a26587:	01 
  a26588:	62 d2 6d 48 7f f1    	vpermt2ps zmm6,zmm2,zmm9
  a2658e:	62 02 6d 48 7f f5    	vpermt2ps zmm30,zmm2,zmm29
  a26594:	62 71 7c 48 10 24 24 	vmovups zmm12,ZMMWORD PTR [rsp]
  a2659b:	62 72 6d 48 7f e5    	vpermt2ps zmm12,zmm2,zmm5
  a265a1:	62 a1 7c 48 28 e0    	vmovaps zmm20,zmm16
  a265a7:	62 e2 6d 48 7f e5    	vpermt2ps zmm20,zmm2,zmm5
  a265ad:	62 e1 7c 48 10 44 24 	vmovups zmm16,ZMMWORD PTR [rsp+0x5c0]
  a265b4:	17 
  a265b5:	62 e2 6d 48 7f c5    	vpermt2ps zmm16,zmm2,zmm5
  a265bb:	62 51 cd 48 15 cc    	vunpckhpd zmm9,zmm6,zmm12
  a265c1:	62 b1 dd 40 15 c8    	vunpckhpd zmm1,zmm20,zmm16
  a265c7:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm1
  a265ce:	0a 
  a265cf:	62 b1 7c 48 28 fc    	vmovaps zmm7,zmm20
  a265d5:	62 d1 7c 48 28 d9    	vmovaps zmm3,zmm9
  a265db:	62 a1 7c 48 28 e3    	vmovaps zmm20,zmm19
  a265e1:	62 f2 65 40 7f d9    	vpermt2ps zmm3,zmm19,zmm1
  a265e7:	62 72 6d 48 7f d5    	vpermt2ps zmm10,zmm2,zmm5
  a265ed:	62 72 6d 48 7f dd    	vpermt2ps zmm11,zmm2,zmm5
  a265f3:	62 72 6d 48 7f ed    	vpermt2ps zmm13,zmm2,zmm5
  a265f9:	62 d1 8d 40 15 ea    	vunpckhpd zmm5,zmm30,zmm10
  a265ff:	62 c1 a5 48 15 dd    	vunpckhpd zmm19,zmm11,zmm13
  a26605:	62 e1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x840],zmm19
  a2660c:	21 
  a2660d:	62 f1 7c 48 28 cd    	vmovaps zmm1,zmm5
  a26613:	62 b2 5d 40 7f cb    	vpermt2ps zmm1,zmm20,zmm19
  a26619:	62 e1 7c 48 10 61 04 	vmovups zmm20,ZMMWORD PTR [rcx+0x100]
  a26620:	62 61 7c 48 10 69 05 	vmovups zmm29,ZMMWORD PTR [rcx+0x140]
  a26627:	62 a1 74 48 59 dc    	vmulps zmm19,zmm1,zmm20
  a2662d:	62 82 65 48 bc dd    	vfnmadd231ps zmm19,zmm3,zmm29
  a26633:	62 e1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm19
  a2663a:	01 
  a2663b:	62 b1 64 48 59 dc    	vmulps zmm3,zmm3,zmm20
  a26641:	62 f2 15 40 b8 d9    	vfmadd231ps zmm3,zmm29,zmm1
  a26647:	62 f1 7c 48 11 1c 24 	vmovups ZMMWORD PTR [rsp],zmm3
  a2664e:	62 52 6d 48 7f c7    	vpermt2ps zmm8,zmm2,zmm15
  a26654:	62 e2 6d 48 7f 6c 24 	vpermt2ps zmm21,zmm2,ZMMWORD PTR [rsp-0x80]
  a2665b:	fe 
  a2665c:	62 e2 6d 48 7f d0    	vpermt2ps zmm18,zmm2,zmm0
  a26662:	62 f2 6d 48 7f e0    	vpermt2ps zmm4,zmm2,zmm0
  a26668:	62 72 6d 48 7f f0    	vpermt2ps zmm14,zmm2,zmm0
  a2666e:	62 62 6d 48 7f c8    	vpermt2ps zmm25,zmm2,zmm0
  a26674:	62 62 6d 48 7f d8    	vpermt2ps zmm27,zmm2,zmm0
  a2667a:	62 62 6d 48 7f e0    	vpermt2ps zmm28,zmm2,zmm0
  a26680:	62 91 d5 40 15 d1    	vunpckhpd zmm2,zmm21,zmm25
  a26686:	62 91 a5 40 15 cc    	vunpckhpd zmm1,zmm27,zmm28
  a2668c:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm1
  a26693:	09 
  a26694:	62 71 7c 48 28 fa    	vmovaps zmm15,zmm2
  a2669a:	62 f1 7c 48 28 05 5c 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6a075c]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a266a1:	07 6a ff 
  a266a4:	62 72 7d 48 7f f9    	vpermt2ps zmm15,zmm0,zmm1
  a266aa:	62 b1 bd 48 15 ca    	vunpckhpd zmm1,zmm8,zmm18
  a266b0:	62 d1 dd 48 15 de    	vunpckhpd zmm3,zmm4,zmm14
  a266b6:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm3
  a266bd:	08 
  a266be:	62 e1 7c 48 28 e1    	vmovaps zmm20,zmm1
  a266c4:	62 e2 7d 48 7f e3    	vpermt2ps zmm20,zmm0,zmm3
  a266ca:	62 61 7c 48 10 69 15 	vmovups zmm29,ZMMWORD PTR [rcx+0x540]
  a266d1:	62 f1 7c 48 10 41 14 	vmovups zmm0,ZMMWORD PTR [rcx+0x500]
  a266d8:	62 f1 5c 40 59 d8    	vmulps zmm3,zmm20,zmm0
  a266de:	62 92 05 48 bc dd    	vfnmadd231ps zmm3,zmm15,zmm29
  a266e4:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm3
  a266eb:	17 
  a266ec:	62 f1 04 48 59 c0    	vmulps zmm0,zmm15,zmm0
  a266f2:	62 b2 15 40 b8 c4    	vfmadd231ps zmm0,zmm29,zmm20
  a266f8:	62 61 7c 48 28 e8    	vmovaps zmm29,zmm0
  a266fe:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x800],zmm0
  a26705:	20 
  a26706:	62 d1 cd 48 14 c4    	vunpcklpd zmm0,zmm6,zmm12
  a2670c:	62 b1 c5 48 14 f0    	vunpcklpd zmm6,zmm7,zmm16
  a26712:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm6
  a26719:	0c 
  a2671a:	62 c1 8d 40 14 da    	vunpcklpd zmm19,zmm30,zmm10
  a26720:	62 41 a5 48 14 f5    	vunpcklpd zmm30,zmm11,zmm13
  a26726:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm0
  a2672d:	0d 
  a2672e:	62 e1 7c 48 28 25 08 	vmovaps zmm20,ZMMWORD PTR [rip+0xffffffffff6a0708]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a26735:	07 6a ff 
  a26738:	62 f2 5d 40 7f c6    	vpermt2ps zmm0,zmm20,zmm6
  a2673e:	62 31 7c 48 28 d3    	vmovaps zmm10,zmm19
  a26744:	62 12 5d 40 7f d6    	vpermt2ps zmm10,zmm20,zmm30
  a2674a:	62 71 7c 48 10 59 02 	vmovups zmm11,ZMMWORD PTR [rcx+0x80]
  a26751:	62 71 7c 48 10 69 03 	vmovups zmm13,ZMMWORD PTR [rcx+0xc0]
  a26758:	62 d1 2c 48 59 db    	vmulps zmm3,zmm10,zmm11
  a2675e:	62 d2 7d 48 bc dd    	vfnmadd231ps zmm3,zmm0,zmm13
  a26764:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm3
  a2676b:	0e 
  a2676c:	62 d1 7c 48 59 c3    	vmulps zmm0,zmm0,zmm11
  a26772:	62 d2 15 48 b8 c2    	vfmadd231ps zmm0,zmm13,zmm10
  a26778:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x8c0],zmm0
  a2677f:	23 
  a26780:	62 b1 bd 48 14 c2    	vunpcklpd zmm0,zmm8,zmm18
  a26786:	62 d1 dd 48 14 e6    	vunpcklpd zmm4,zmm4,zmm14
  a2678c:	62 11 d5 40 14 c1    	vunpcklpd zmm8,zmm21,zmm25
  a26792:	62 11 a5 40 14 fc    	vunpcklpd zmm15,zmm27,zmm28
  a26798:	62 51 7c 48 28 f0    	vmovaps zmm14,zmm8
  a2679e:	62 52 5d 40 7f c7    	vpermt2ps zmm8,zmm20,zmm15
  a267a4:	62 61 7c 48 28 c8    	vmovaps zmm25,zmm0
  a267aa:	62 f2 5d 40 7f c4    	vpermt2ps zmm0,zmm20,zmm4
  a267b0:	62 71 7c 48 10 51 13 	vmovups zmm10,ZMMWORD PTR [rcx+0x4c0]
  a267b7:	62 71 7c 48 10 59 12 	vmovups zmm11,ZMMWORD PTR [rcx+0x480]
  a267be:	62 d1 7c 48 59 db    	vmulps zmm3,zmm0,zmm11
  a267c4:	62 d2 3d 48 bc da    	vfnmadd231ps zmm3,zmm8,zmm10
  a267ca:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x880],zmm3
  a267d1:	22 
  a267d2:	62 d1 3c 48 59 db    	vmulps zmm3,zmm8,zmm11
  a267d8:	62 f2 2d 48 b8 d8    	vfmadd231ps zmm3,zmm10,zmm0
  a267de:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm3
  a267e5:	fe 
  a267e6:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x40]
  a267ed:	ff 
  a267ee:	62 91 fd 48 14 c7    	vunpcklpd zmm0,zmm0,zmm31
  a267f4:	62 11 c5 40 14 d8    	vunpcklpd zmm11,zmm23,zmm24
  a267fa:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x2c0]
  a26801:	0b 
  a26802:	62 11 e5 48 14 c2    	vunpcklpd zmm8,zmm3,zmm26
  a26808:	62 a1 cd 40 14 e9    	vunpcklpd zmm21,zmm22,zmm17
  a2680e:	62 d1 7c 48 28 f8    	vmovaps zmm7,zmm8
  a26814:	62 32 5d 40 7f c5    	vpermt2ps zmm8,zmm20,zmm21
  a2681a:	62 71 7c 48 28 e0    	vmovaps zmm12,zmm0
  a26820:	62 d2 5d 40 7f c3    	vpermt2ps zmm0,zmm20,zmm11
  a26826:	62 f1 7c 48 10 71 1b 	vmovups zmm6,ZMMWORD PTR [rcx+0x6c0]
  a2682d:	62 71 7c 48 10 51 1a 	vmovups zmm10,ZMMWORD PTR [rcx+0x680]
  a26834:	62 d1 7c 48 59 da    	vmulps zmm3,zmm0,zmm10
  a2683a:	62 f2 3d 48 b8 de    	vfmadd231ps zmm3,zmm8,zmm6
  a26840:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm3
  a26847:	ff 
  a26848:	62 d1 3c 48 59 da    	vmulps zmm3,zmm8,zmm10
  a2684e:	62 f2 4d 48 bc d8    	vfnmadd231ps zmm3,zmm6,zmm0
  a26854:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm3
  a2685b:	0b 
  a2685c:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x400]
  a26863:	10 
  a26864:	62 f1 fd 48 14 44 24 	vunpcklpd zmm0,zmm0,ZMMWORD PTR [rsp+0x480]
  a2686b:	12 
  a2686c:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x3c0]
  a26873:	0f 
  a26874:	62 e1 e5 48 14 7c 24 	vunpcklpd zmm23,zmm3,ZMMWORD PTR [rsp+0x440]
  a2687b:	11 
  a2687c:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x580]
  a26883:	16 
  a26884:	62 f1 e5 48 14 74 24 	vunpcklpd zmm6,zmm3,ZMMWORD PTR [rsp+0x540]
  a2688b:	15 
  a2688c:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x500]
  a26893:	14 
  a26894:	62 f1 e5 48 14 5c 24 	vunpcklpd zmm3,zmm3,ZMMWORD PTR [rsp+0x4c0]
  a2689b:	13 
  a2689c:	62 e1 7c 48 28 c6    	vmovaps zmm16,zmm6
  a268a2:	62 f2 5d 40 7f f3    	vpermt2ps zmm6,zmm20,zmm3
  a268a8:	62 e1 7c 48 28 f0    	vmovaps zmm22,zmm0
  a268ae:	62 b2 5d 40 7f c7    	vpermt2ps zmm0,zmm20,zmm23
  a268b4:	62 71 7c 48 10 41 0b 	vmovups zmm8,ZMMWORD PTR [rcx+0x2c0]
  a268bb:	62 71 7c 48 10 51 0a 	vmovups zmm10,ZMMWORD PTR [rcx+0x280]
  a268c2:	62 51 7c 48 59 ea    	vmulps zmm13,zmm0,zmm10
  a268c8:	62 52 4d 48 b8 e8    	vfmadd231ps zmm13,zmm6,zmm8
  a268ce:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm13
  a268d5:	15 
  a268d6:	62 d1 4c 48 59 f2    	vmulps zmm6,zmm6,zmm10
  a268dc:	62 f2 3d 48 bc f0    	vfnmadd231ps zmm6,zmm8,zmm0
  a268e2:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm6
  a268e9:	16 
  a268ea:	62 72 5d 40 7f 4c 24 	vpermt2ps zmm9,zmm20,ZMMWORD PTR [rsp+0x280]
  a268f1:	0a 
  a268f2:	62 f2 5d 40 7f 6c 24 	vpermt2ps zmm5,zmm20,ZMMWORD PTR [rsp+0x840]
  a268f9:	21 
  a268fa:	62 f1 7c 48 10 41 07 	vmovups zmm0,ZMMWORD PTR [rcx+0x1c0]
  a26901:	62 f1 7c 48 10 71 06 	vmovups zmm6,ZMMWORD PTR [rcx+0x180]
  a26908:	62 71 54 48 59 c6    	vmulps zmm8,zmm5,zmm6
  a2690e:	62 72 35 48 bc c0    	vfnmadd231ps zmm8,zmm9,zmm0
  a26914:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm8
  a2691b:	14 
  a2691c:	62 61 34 48 59 e6    	vmulps zmm28,zmm9,zmm6
  a26922:	62 62 7d 48 b8 e5    	vfmadd231ps zmm28,zmm0,zmm5
  a26928:	62 f2 5d 40 7f 54 24 	vpermt2ps zmm2,zmm20,ZMMWORD PTR [rsp+0x240]
  a2692f:	09 
  a26930:	62 f2 5d 40 7f 4c 24 	vpermt2ps zmm1,zmm20,ZMMWORD PTR [rsp+0x200]
  a26937:	08 
  a26938:	62 f1 7c 48 10 41 17 	vmovups zmm0,ZMMWORD PTR [rcx+0x5c0]
  a2693f:	62 f1 7c 48 10 69 16 	vmovups zmm5,ZMMWORD PTR [rcx+0x580]
  a26946:	62 61 74 48 59 dd    	vmulps zmm27,zmm1,zmm5
  a2694c:	62 62 6d 48 bc d8    	vfnmadd231ps zmm27,zmm2,zmm0
  a26952:	62 61 6c 48 59 c5    	vmulps zmm24,zmm2,zmm5
  a26958:	62 62 7d 48 b8 c1    	vfmadd231ps zmm24,zmm0,zmm1
  a2695e:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x6c0]
  a26965:	1b 
  a26966:	62 f2 5d 40 7f 54 24 	vpermt2ps zmm2,zmm20,ZMMWORD PTR [rsp+0x680]
  a2696d:	1a 
  a2696e:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x640]
  a26975:	19 
  a26976:	62 f2 5d 40 7f 6c 24 	vpermt2ps zmm5,zmm20,ZMMWORD PTR [rsp+0x600]
  a2697d:	18 
  a2697e:	62 f1 7c 48 10 41 1f 	vmovups zmm0,ZMMWORD PTR [rcx+0x7c0]
  a26985:	62 f1 7c 48 10 49 1e 	vmovups zmm1,ZMMWORD PTR [rcx+0x780]
  a2698c:	62 61 54 48 59 f9    	vmulps zmm31,zmm5,zmm1
  a26992:	62 62 6d 48 b8 f8    	vfmadd231ps zmm31,zmm2,zmm0
  a26998:	62 61 6c 48 59 d1    	vmulps zmm26,zmm2,zmm1
  a2699e:	62 62 7d 48 bc d5    	vfnmadd231ps zmm26,zmm0,zmm5
  a269a4:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x740]
  a269ab:	1d 
  a269ac:	62 f2 5d 40 7f 4c 24 	vpermt2ps zmm1,zmm20,ZMMWORD PTR [rsp+0x100]
  a269b3:	04 
  a269b4:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x700]
  a269bb:	1c 
  a269bc:	62 f2 5d 40 7f 6c 24 	vpermt2ps zmm5,zmm20,ZMMWORD PTR [rsp+0xc0]
  a269c3:	03 
  a269c4:	62 f1 7c 48 10 41 0f 	vmovups zmm0,ZMMWORD PTR [rcx+0x3c0]
  a269cb:	62 f1 7c 48 10 51 0e 	vmovups zmm2,ZMMWORD PTR [rcx+0x380]
  a269d2:	62 e1 54 48 59 d2    	vmulps zmm18,zmm5,zmm2
  a269d8:	62 e2 75 48 b8 d0    	vfmadd231ps zmm18,zmm1,zmm0
  a269de:	62 e1 74 48 59 e2    	vmulps zmm20,zmm1,zmm2
  a269e4:	62 e2 7d 48 bc e5    	vfnmadd231ps zmm20,zmm0,zmm5
  a269ea:	62 f1 7c 48 28 0d 0c 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff6a040c]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a269f1:	04 6a ff 
  a269f4:	62 62 75 48 7f cc    	vpermt2ps zmm25,zmm1,zmm4
  a269fa:	62 52 75 48 7f f7    	vpermt2ps zmm14,zmm1,zmm15
  a26a00:	62 f1 7c 48 10 41 11 	vmovups zmm0,ZMMWORD PTR [rcx+0x440]
  a26a07:	62 f1 7c 48 10 51 10 	vmovups zmm2,ZMMWORD PTR [rcx+0x400]
  a26a0e:	62 f1 0c 48 59 ea    	vmulps zmm5,zmm14,zmm2
  a26a14:	62 f2 35 40 b8 e8    	vfmadd231ps zmm5,zmm25,zmm0
  a26a1a:	62 61 34 40 59 ca    	vmulps zmm25,zmm25,zmm2
  a26a20:	62 42 7d 48 bc ce    	vfnmadd231ps zmm25,zmm0,zmm14
  a26a26:	62 a2 75 48 7f f7    	vpermt2ps zmm22,zmm1,zmm23
  a26a2c:	62 e2 75 48 7f c3    	vpermt2ps zmm16,zmm1,zmm3
  a26a32:	62 f1 7c 48 10 41 09 	vmovups zmm0,ZMMWORD PTR [rcx+0x240]
  a26a39:	62 f1 7c 48 10 51 08 	vmovups zmm2,ZMMWORD PTR [rcx+0x200]
  a26a40:	62 e1 7c 40 59 fa    	vmulps zmm23,zmm16,zmm2
  a26a46:	62 e2 4d 40 bc f8    	vfnmadd231ps zmm23,zmm22,zmm0
  a26a4c:	62 71 4c 40 59 f2    	vmulps zmm14,zmm22,zmm2
  a26a52:	62 32 7d 48 b8 f0    	vfmadd231ps zmm14,zmm0,zmm16
  a26a58:	62 52 75 48 7f e3    	vpermt2ps zmm12,zmm1,zmm11
  a26a5e:	62 b2 75 48 7f fd    	vpermt2ps zmm7,zmm1,zmm21
  a26a64:	62 f1 7c 48 10 51 19 	vmovups zmm2,ZMMWORD PTR [rcx+0x640]
  a26a6b:	62 f1 7c 48 10 61 18 	vmovups zmm4,ZMMWORD PTR [rcx+0x600]
  a26a72:	62 71 44 48 59 c4    	vmulps zmm8,zmm7,zmm4
  a26a78:	62 72 1d 48 bc c2    	vfnmadd231ps zmm8,zmm12,zmm2
  a26a7e:	62 e1 1c 48 59 c4    	vmulps zmm16,zmm12,zmm4
  a26a84:	62 e2 6d 48 b8 c7    	vfmadd231ps zmm16,zmm2,zmm7
  a26a8a:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x340]
  a26a91:	0d 
  a26a92:	62 f2 75 48 7f 5c 24 	vpermt2ps zmm3,zmm1,ZMMWORD PTR [rsp+0x300]
  a26a99:	0c 
  a26a9a:	62 82 75 48 7f de    	vpermt2ps zmm19,zmm1,zmm30
  a26aa0:	62 e1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm19
  a26aa7:	08 
  a26aa8:	62 e1 7c 48 10 4c 24 	vmovups zmm17,ZMMWORD PTR [rsp+0x40]
  a26aaf:	01 
  a26ab0:	62 71 7c 48 10 64 24 	vmovups zmm12,ZMMWORD PTR [rsp+0x5c0]
  a26ab7:	17 
  a26ab8:	62 d1 74 40 5c d4    	vsubps zmm2,zmm17,zmm12
  a26abe:	62 f1 7c 48 10 0c 24 	vmovups zmm1,ZMMWORD PTR [rsp]
  a26ac5:	62 91 74 48 5c e5    	vsubps zmm4,zmm1,zmm29
  a26acb:	62 f1 6c 48 58 cc    	vaddps zmm1,zmm2,zmm4
  a26ad1:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm1
  a26ad8:	03 
  a26ad9:	62 f1 5c 48 5c ca    	vsubps zmm1,zmm4,zmm2
  a26adf:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x600],zmm1
  a26ae6:	18 
  a26ae7:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x1c0]
  a26aee:	07 
  a26aef:	62 f1 74 48 5c 54 24 	vsubps zmm2,zmm1,ZMMWORD PTR [rsp+0x180]
  a26af6:	06 
  a26af7:	62 61 7c 48 10 6c 24 	vmovups zmm29,ZMMWORD PTR [rsp+0x140]
  a26afe:	05 
  a26aff:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp+0x80]
  a26b06:	02 
  a26b07:	62 d1 14 40 5c e1    	vsubps zmm4,zmm29,zmm9
  a26b0d:	62 f1 6c 48 5c cc    	vsubps zmm1,zmm2,zmm4
  a26b13:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x6c0],zmm1
  a26b1a:	1b 
  a26b1b:	62 f1 5c 48 58 ca    	vaddps zmm1,zmm4,zmm2
  a26b21:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm1
  a26b28:	0f 
  a26b29:	62 61 7c 48 10 74 24 	vmovups zmm30,ZMMWORD PTR [rsp+0x380]
  a26b30:	0e 
  a26b31:	62 71 7c 48 10 6c 24 	vmovups zmm13,ZMMWORD PTR [rsp+0x880]
  a26b38:	22 
  a26b39:	62 d1 0c 40 5c cd    	vsubps zmm1,zmm30,zmm13
  a26b3f:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x680],zmm1
  a26b46:	1a 
  a26b47:	62 e1 7c 48 10 74 24 	vmovups zmm22,ZMMWORD PTR [rsp-0x40]
  a26b4e:	ff 
  a26b4f:	62 e1 7c 48 10 6c 24 	vmovups zmm21,ZMMWORD PTR [rsp+0x540]
  a26b56:	15 
  a26b57:	62 b1 54 40 5c d6    	vsubps zmm2,zmm21,zmm22
  a26b5d:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x640],zmm2
  a26b64:	19 
  a26b65:	62 f1 74 48 5c d2    	vsubps zmm2,zmm1,zmm2
  a26b6b:	62 71 7c 48 10 7c 24 	vmovups zmm15,ZMMWORD PTR [rsp+0x8c0]
  a26b72:	23 
  a26b73:	62 f1 04 48 5c 4c 24 	vsubps zmm1,zmm15,ZMMWORD PTR [rsp-0x80]
  a26b7a:	fe 
  a26b7b:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm1
  a26b82:	12 
  a26b83:	62 71 7c 48 10 5c 24 	vmovups zmm11,ZMMWORD PTR [rsp+0x2c0]
  a26b8a:	0b 
  a26b8b:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x580]
  a26b92:	16 
  a26b93:	62 d1 24 48 5c e2    	vsubps zmm4,zmm11,zmm10
  a26b99:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm4
  a26ba0:	11 
  a26ba1:	62 f1 74 48 5c e4    	vsubps zmm4,zmm1,zmm4
  a26ba7:	62 f2 7d 48 18 3d 4f 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff64eb4f]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a26bae:	eb 64 ff 
  a26bb1:	62 f1 5c 48 59 cf    	vmulps zmm1,zmm4,zmm7
  a26bb7:	62 f2 7d 48 18 35 a3 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff64eaa3]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a26bbe:	ea 64 ff 
  a26bc1:	62 f2 6d 48 b8 ce    	vfmadd231ps zmm1,zmm2,zmm6
  a26bc7:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x740],zmm1
  a26bce:	1d 
  a26bcf:	62 f1 5c 48 59 ce    	vmulps zmm1,zmm4,zmm6
  a26bd5:	62 f2 45 48 bc ca    	vfnmadd231ps zmm1,zmm7,zmm2
  a26bdb:	62 f1 7c 48 28 e7    	vmovaps zmm4,zmm7
  a26be1:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm1
  a26be8:	04 
  a26be9:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x500]
  a26bf0:	14 
  a26bf1:	62 91 74 48 5c c3    	vsubps zmm0,zmm1,zmm27
  a26bf7:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm0
  a26bfe:	0d 
  a26bff:	62 91 6c 40 5c d7    	vsubps zmm2,zmm18,zmm31
  a26c05:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm2
  a26c0c:	0c 
  a26c0d:	62 f1 7c 48 5c fa    	vsubps zmm7,zmm0,zmm2
  a26c13:	62 91 1c 40 5c d0    	vsubps zmm2,zmm28,zmm24
  a26c19:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm2
  a26c20:	0a 
  a26c21:	62 b1 2c 40 5c c4    	vsubps zmm0,zmm26,zmm20
  a26c27:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm0
  a26c2e:	09 
  a26c2f:	62 e1 6c 48 5c d8    	vsubps zmm19,zmm2,zmm0
  a26c35:	62 f1 64 40 59 d6    	vmulps zmm2,zmm19,zmm6
  a26c3b:	62 f2 45 48 b8 d4    	vfmadd231ps zmm2,zmm7,zmm4
  a26c41:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x700],zmm2
  a26c48:	1c 
  a26c49:	62 f1 44 48 59 fe    	vmulps zmm7,zmm7,zmm6
  a26c4f:	62 b2 5d 48 bc fb    	vfnmadd231ps zmm7,zmm4,zmm19
  a26c55:	62 f1 64 48 5c d5    	vsubps zmm2,zmm3,zmm5
  a26c5b:	62 f1 54 48 58 c3    	vaddps zmm0,zmm5,zmm3
  a26c61:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm0
  a26c68:	13 
  a26c69:	62 a1 0c 48 5c d8    	vsubps zmm19,zmm14,zmm16
  a26c6f:	62 b1 0c 48 58 c0    	vaddps zmm0,zmm14,zmm16
  a26c75:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm0
  a26c7c:	10 
  a26c7d:	62 d1 14 40 58 c1    	vaddps zmm0,zmm29,zmm9
  a26c83:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm0
  a26c8a:	05 
  a26c8b:	62 d1 74 40 58 c4    	vaddps zmm0,zmm17,zmm12
  a26c91:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm0
  a26c98:	02 
  a26c99:	62 01 1c 40 58 e0    	vaddps zmm28,zmm28,zmm24
  a26c9f:	62 91 6c 40 58 c7    	vaddps zmm0,zmm18,zmm31
  a26ca5:	62 81 74 48 58 cb    	vaddps zmm17,zmm1,zmm27
  a26cab:	62 01 5c 40 58 ea    	vaddps zmm29,zmm20,zmm26
  a26cb1:	62 41 0c 40 58 c5    	vaddps zmm24,zmm30,zmm13
  a26cb7:	62 41 2c 48 58 d3    	vaddps zmm26,zmm10,zmm11
  a26cbd:	62 e1 04 48 58 54 24 	vaddps zmm18,zmm15,ZMMWORD PTR [rsp-0x80]
  a26cc4:	fe 
  a26cc5:	62 31 54 40 58 de    	vaddps zmm11,zmm21,zmm22
  a26ccb:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x200]
  a26cd2:	08 
  a26cd3:	62 11 74 48 5c c9    	vsubps zmm9,zmm1,zmm25
  a26cd9:	62 01 74 48 58 c9    	vaddps zmm25,zmm1,zmm25
  a26cdf:	62 31 3c 48 5c ef    	vsubps zmm13,zmm8,zmm23
  a26ce5:	62 c1 44 40 58 c0    	vaddps zmm16,zmm23,zmm8
  a26ceb:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x800]
  a26cf2:	20 
  a26cf3:	62 f1 74 48 58 24 24 	vaddps zmm4,zmm1,ZMMWORD PTR [rsp]
  a26cfa:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x180]
  a26d01:	06 
  a26d02:	62 f1 74 48 58 5c 24 	vaddps zmm3,zmm1,ZMMWORD PTR [rsp+0x1c0]
  a26d09:	07 
  a26d0a:	62 81 3c 40 5c fa    	vsubps zmm23,zmm24,zmm26
  a26d10:	62 41 6c 40 5c fb    	vsubps zmm31,zmm18,zmm11
  a26d16:	62 91 44 40 58 cf    	vaddps zmm1,zmm23,zmm31
  a26d1c:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a26d23:	ff 
  a26d24:	62 21 04 40 5c ff    	vsubps zmm31,zmm31,zmm23
  a26d2a:	62 e1 1c 40 5c f8    	vsubps zmm23,zmm28,zmm0
  a26d30:	62 71 7c 48 28 c0    	vmovaps zmm8,zmm0
  a26d36:	62 91 74 40 5c c5    	vsubps zmm0,zmm17,zmm29
  a26d3c:	62 f1 44 40 5c c8    	vsubps zmm1,zmm23,zmm0
  a26d42:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a26d49:	fe 
  a26d4a:	62 a1 7c 48 58 ff    	vaddps zmm23,zmm0,zmm23
  a26d50:	62 d1 6c 48 5c ed    	vsubps zmm5,zmm2,zmm13
  a26d56:	62 f1 14 48 58 c2    	vaddps zmm0,zmm13,zmm2
  a26d5c:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm0
  a26d63:	07 
  a26d64:	62 f2 7d 48 18 0d 2e 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff64e62e]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a26d6b:	e6 64 ff 
  a26d6e:	62 71 74 48 59 6c 24 	vmulps zmm13,zmm1,ZMMWORD PTR [rsp+0x600]
  a26d75:	18 
  a26d76:	62 f1 74 48 59 44 24 	vmulps zmm0,zmm1,ZMMWORD PTR [rsp+0x3c0]
  a26d7d:	0f 
  a26d7e:	62 f1 14 48 58 d0    	vaddps zmm2,zmm13,zmm0
  a26d84:	62 f1 14 48 5c c0    	vsubps zmm0,zmm13,zmm0
  a26d8a:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm0
  a26d91:	06 
  a26d92:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x300]
  a26d99:	0c 
  a26d9a:	62 f1 7c 48 58 44 24 	vaddps zmm0,zmm0,ZMMWORD PTR [rsp+0x340]
  a26da1:	0d 
  a26da2:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x240]
  a26da9:	09 
  a26daa:	62 71 2c 48 58 54 24 	vaddps zmm10,zmm10,ZMMWORD PTR [rsp+0x280]
  a26db1:	0a 
  a26db2:	62 71 7c 48 10 64 24 	vmovups zmm12,ZMMWORD PTR [rsp+0x640]
  a26db9:	19 
  a26dba:	62 71 1c 48 58 64 24 	vaddps zmm12,zmm12,ZMMWORD PTR [rsp+0x680]
  a26dc1:	1a 
  a26dc2:	62 71 7c 48 10 6c 24 	vmovups zmm13,ZMMWORD PTR [rsp+0x440]
  a26dc9:	11 
  a26dca:	62 71 14 48 58 7c 24 	vaddps zmm15,zmm13,ZMMWORD PTR [rsp+0x480]
  a26dd1:	12 
  a26dd2:	62 31 34 48 5c f3    	vsubps zmm14,zmm9,zmm19
  a26dd8:	62 31 34 48 58 cb    	vaddps zmm9,zmm9,zmm19
  a26dde:	62 71 7c 48 11 0c 24 	vmovups ZMMWORD PTR [rsp],zmm9
  a26de5:	62 71 74 48 59 4c 24 	vmulps zmm9,zmm1,ZMMWORD PTR [rsp+0x6c0]
  a26dec:	1b 
  a26ded:	62 e1 74 48 59 74 24 	vmulps zmm22,zmm1,ZMMWORD PTR [rsp+0xc0]
  a26df4:	03 
  a26df5:	62 21 34 48 5c de    	vsubps zmm27,zmm9,zmm22
  a26dfb:	62 51 4c 40 58 c9    	vaddps zmm9,zmm22,zmm9
  a26e01:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm9
  a26e08:	03 
  a26e09:	62 e1 04 48 59 f6    	vmulps zmm22,zmm15,zmm6
  a26e0f:	62 72 7d 48 18 0d e7 	vbroadcastss zmm9,DWORD PTR [rip+0xffffffffff64e8e7]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a26e16:	e8 64 ff 
  a26e19:	62 c2 1d 48 b8 f1    	vfmadd231ps zmm22,zmm12,zmm9
  a26e1f:	62 51 04 48 59 f9    	vmulps zmm15,zmm15,zmm9
  a26e25:	62 52 4d 48 bc fc    	vfnmadd231ps zmm15,zmm6,zmm12
  a26e2b:	62 51 2c 48 59 e1    	vmulps zmm12,zmm10,zmm9
  a26e31:	62 72 7d 48 b8 e6    	vfmadd231ps zmm12,zmm0,zmm6
  a26e37:	62 71 2c 48 59 d6    	vmulps zmm10,zmm10,zmm6
  a26e3d:	62 72 35 48 bc d0    	vfnmadd231ps zmm10,zmm9,zmm0
  a26e43:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x4c0]
  a26e4a:	13 
  a26e4b:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp+0x400]
  a26e52:	10 
  a26e53:	62 d1 4c 48 5c c1    	vsubps zmm0,zmm6,zmm9
  a26e59:	62 e1 34 48 58 de    	vaddps zmm19,zmm9,zmm6
  a26e5f:	62 e1 5c 48 5c eb    	vsubps zmm21,zmm4,zmm3
  a26e65:	62 71 5c 48 58 eb    	vaddps zmm13,zmm4,zmm3
  a26e6b:	62 91 74 40 58 dd    	vaddps zmm3,zmm17,zmm29
  a26e71:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm3
  a26e78:	01 
  a26e79:	62 01 3c 40 58 f2    	vaddps zmm30,zmm24,zmm26
  a26e7f:	62 a1 34 40 5c c8    	vsubps zmm17,zmm25,zmm16
  a26e85:	62 a1 34 40 58 e0    	vaddps zmm20,zmm25,zmm16
  a26e8b:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x140]
  a26e92:	05 
  a26e93:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x80]
  a26e9a:	02 
  a26e9b:	62 61 64 48 5c c4    	vsubps zmm24,zmm3,zmm4
  a26ea1:	62 61 5c 48 58 cb    	vaddps zmm25,zmm4,zmm3
  a26ea7:	62 41 6c 40 58 d3    	vaddps zmm26,zmm18,zmm11
  a26ead:	62 41 1c 40 58 e0    	vaddps zmm28,zmm28,zmm8
  a26eb3:	62 01 54 48 5c eb    	vsubps zmm29,zmm5,zmm27
  a26eb9:	62 f1 24 40 58 dd    	vaddps zmm3,zmm27,zmm5
  a26ebf:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm3
  a26ec6:	05 
  a26ec7:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x100]
  a26ece:	04 
  a26ecf:	62 e1 64 48 5c d7    	vsubps zmm18,zmm3,zmm7
  a26ed5:	62 f1 64 48 58 df    	vaddps zmm3,zmm3,zmm7
  a26edb:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm3
  a26ee2:	04 
  a26ee3:	62 71 0c 48 5c da    	vsubps zmm11,zmm14,zmm2
  a26ee9:	62 f1 0c 48 58 d2    	vaddps zmm2,zmm14,zmm2
  a26eef:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm2
  a26ef6:	02 
  a26ef7:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x740]
  a26efe:	1d 
  a26eff:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x700]
  a26f06:	1c 
  a26f07:	62 71 6c 48 58 f3    	vaddps zmm14,zmm2,zmm3
  a26f0d:	62 61 6c 48 5c db    	vsubps zmm27,zmm2,zmm3
  a26f13:	62 91 7c 48 5c f0    	vsubps zmm6,zmm0,zmm24
  a26f19:	62 61 3c 40 58 c0    	vaddps zmm24,zmm24,zmm0
  a26f1f:	62 f1 04 40 59 c1    	vmulps zmm0,zmm31,zmm1
  a26f25:	62 71 44 40 59 c1    	vmulps zmm8,zmm23,zmm1
  a26f2b:	62 c1 7c 48 58 f8    	vaddps zmm23,zmm0,zmm8
  a26f31:	62 41 7c 48 5c f8    	vsubps zmm31,zmm0,zmm8
  a26f37:	62 31 74 40 5c c5    	vsubps zmm8,zmm17,zmm21
  a26f3d:	62 a1 74 40 58 cd    	vaddps zmm17,zmm17,zmm21
  a26f43:	62 f1 74 48 59 44 24 	vmulps zmm0,zmm1,ZMMWORD PTR [rsp-0x80]
  a26f4a:	fe 
  a26f4b:	62 e1 74 48 59 6c 24 	vmulps zmm21,zmm1,ZMMWORD PTR [rsp-0x40]
  a26f52:	ff 
  a26f53:	62 b1 7c 48 5c cd    	vsubps zmm1,zmm0,zmm21
  a26f59:	62 e1 54 40 58 e8    	vaddps zmm21,zmm21,zmm0
  a26f5f:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x1c0]
  a26f66:	07 
  a26f67:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x180]
  a26f6e:	06 
  a26f6f:	62 f1 7c 48 5c da    	vsubps zmm3,zmm0,zmm2
  a26f75:	62 e1 6c 48 58 c0    	vaddps zmm16,zmm2,zmm0
  a26f7b:	62 d1 04 48 5c d2    	vsubps zmm2,zmm15,zmm10
  a26f81:	62 51 04 48 58 ca    	vaddps zmm9,zmm15,zmm10
  a26f87:	62 f1 7c 48 10 04 24 	vmovups zmm0,ZMMWORD PTR [rsp]
  a26f8e:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0xc0]
  a26f95:	03 
  a26f96:	62 71 7c 48 5c fc    	vsubps zmm15,zmm0,zmm4
  a26f9c:	62 f1 7c 48 58 fc    	vaddps zmm7,zmm0,zmm4
  a26fa2:	62 31 1c 48 5c d6    	vsubps zmm10,zmm12,zmm22
  a26fa8:	62 c1 4c 40 58 f4    	vaddps zmm22,zmm22,zmm12
  a26fae:	62 51 64 40 5c e5    	vsubps zmm12,zmm19,zmm13
  a26fb4:	62 31 14 48 58 eb    	vaddps zmm13,zmm13,zmm19
  a26fba:	62 81 2c 40 5c dc    	vsubps zmm19,zmm26,zmm28
  a26fc0:	62 91 2c 40 58 ec    	vaddps zmm5,zmm26,zmm28
  a26fc6:	62 01 5c 40 5c e1    	vsubps zmm28,zmm20,zmm25
  a26fcc:	62 91 5c 40 58 e1    	vaddps zmm4,zmm20,zmm25
  a26fd2:	62 e1 7c 48 10 64 24 	vmovups zmm20,ZMMWORD PTR [rsp+0x40]
  a26fd9:	01 
  a26fda:	62 91 5c 40 5c c6    	vsubps zmm0,zmm20,zmm30
  a26fe0:	62 a1 0c 40 58 e4    	vaddps zmm20,zmm30,zmm20
  a26fe6:	62 41 14 40 58 f6    	vaddps zmm30,zmm29,zmm14
  a26fec:	62 41 14 40 5c d6    	vsubps zmm26,zmm29,zmm14
  a26ff2:	62 31 24 48 5c f2    	vsubps zmm14,zmm11,zmm18
  a26ff8:	62 71 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm14
  a26fff:	ff 
  a27000:	62 21 24 48 58 ea    	vaddps zmm29,zmm11,zmm18
  a27006:	62 61 4c 48 5c c9    	vsubps zmm25,zmm6,zmm1
  a2700c:	62 71 4c 48 58 f1    	vaddps zmm14,zmm6,zmm1
  a27012:	62 b1 3c 48 5c cf    	vsubps zmm1,zmm8,zmm23
  a27018:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a2701f:	fe 
  a27020:	62 a1 3c 48 58 d7    	vaddps zmm18,zmm8,zmm23
  a27026:	62 d1 64 48 5c ca    	vsubps zmm1,zmm3,zmm10
  a2702c:	62 d1 64 48 58 da    	vaddps zmm3,zmm3,zmm10
  a27032:	62 e1 04 48 5c fa    	vsubps zmm23,zmm15,zmm2
  a27038:	62 71 04 48 58 d2    	vaddps zmm10,zmm15,zmm2
  a2703e:	62 f1 1c 48 5c f0    	vsubps zmm6,zmm12,zmm0
  a27044:	62 f1 1c 48 58 d0    	vaddps zmm2,zmm12,zmm0
  a2704a:	62 31 1c 40 5c e3    	vsubps zmm12,zmm28,zmm19
  a27050:	62 21 1c 40 58 e3    	vaddps zmm28,zmm28,zmm19
  a27056:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x140]
  a2705d:	05 
  a2705e:	62 71 7c 48 10 5c 24 	vmovups zmm11,ZMMWORD PTR [rsp+0x100]
  a27065:	04 
  a27066:	62 51 7c 48 5c c3    	vsubps zmm8,zmm0,zmm11
  a2706c:	62 d1 7c 48 58 c3    	vaddps zmm0,zmm0,zmm11
  a27072:	62 71 7c 48 10 5c 24 	vmovups zmm11,ZMMWORD PTR [rsp+0x80]
  a27079:	02 
  a2707a:	62 81 24 48 5c db    	vsubps zmm19,zmm11,zmm27
  a27080:	62 01 24 48 58 db    	vaddps zmm27,zmm11,zmm27
  a27086:	62 11 3c 40 5c df    	vsubps zmm11,zmm24,zmm31
  a2708c:	62 01 3c 40 58 ff    	vaddps zmm31,zmm24,zmm31
  a27092:	62 21 74 40 5c c5    	vsubps zmm24,zmm17,zmm21
  a27098:	62 a1 74 40 58 cd    	vaddps zmm17,zmm17,zmm21
  a2709e:	62 51 7c 40 5c f9    	vsubps zmm15,zmm16,zmm9
  a270a4:	62 51 7c 40 58 c9    	vaddps zmm9,zmm16,zmm9
  a270aa:	62 a1 44 48 5c c6    	vsubps zmm16,zmm7,zmm22
  a270b0:	62 b1 44 48 58 fe    	vaddps zmm7,zmm7,zmm22
  a270b6:	62 e1 14 48 5c ed    	vsubps zmm21,zmm13,zmm5
  a270bc:	62 f1 14 48 58 ed    	vaddps zmm5,zmm13,zmm5
  a270c2:	62 31 5c 48 5c ec    	vsubps zmm13,zmm4,zmm20
  a270c8:	62 b1 5c 48 58 e4    	vaddps zmm4,zmm4,zmm20
  a270ce:	62 e1 7c 48 28 25 68 	vmovaps zmm20,ZMMWORD PTR [rip+0xffffffffff669468]        # 90540 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d9f0>
  a270d5:	94 66 ff 
  a270d8:	62 f2 5d 40 7f ec    	vpermt2ps zmm5,zmm20,zmm4
  a270de:	62 f3 7d 48 19 ec 02 	vextractf32x4 xmm4,zmm5,0x2
  a270e5:	c5 f8 13 64 16 20    	vmovlps QWORD PTR [rsi+rdx*1+0x20],xmm4
  a270eb:	c5 fc 11 2c 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm5
  a270f0:	62 72 5d 40 7f cf    	vpermt2ps zmm9,zmm20,zmm7
  a270f6:	62 73 7d 48 19 cc 02 	vextractf32x4 xmm4,zmm9,0x2
  a270fd:	c5 f8 13 64 16 48    	vmovlps QWORD PTR [rsi+rdx*1+0x48],xmm4
  a27103:	c5 7c 11 4c 16 28    	vmovups YMMWORD PTR [rsi+rdx*1+0x28],ymm9
  a27109:	62 22 5d 40 7f f9    	vpermt2ps zmm31,zmm20,zmm17
  a2710f:	62 63 7d 48 19 fc 02 	vextractf32x4 xmm4,zmm31,0x2
  a27116:	c5 f8 13 64 16 70    	vmovlps QWORD PTR [rsi+rdx*1+0x70],xmm4
  a2711c:	62 61 7c 28 11 bc 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x50],ymm31
  a27123:	50 00 00 00 
  a27127:	62 92 5d 40 7f c3    	vpermt2ps zmm0,zmm20,zmm27
  a2712d:	62 f3 7d 48 19 c4 02 	vextractf32x4 xmm4,zmm0,0x2
  a27134:	c5 f8 13 a4 16 98 00 	vmovlps QWORD PTR [rsi+rdx*1+0x98],xmm4
  a2713b:	00 00 
  a2713d:	c5 fc 11 44 16 78    	vmovups YMMWORD PTR [rsi+rdx*1+0x78],ymm0
  a27143:	62 92 5d 40 7f d4    	vpermt2ps zmm2,zmm20,zmm28
  a27149:	62 f3 7d 48 19 d0 02 	vextractf32x4 xmm0,zmm2,0x2
  a27150:	c5 f8 13 84 16 c0 00 	vmovlps QWORD PTR [rsi+rdx*1+0xc0],xmm0
  a27157:	00 00 
  a27159:	c5 fc 11 94 16 a0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xa0],ymm2
  a27160:	00 00 
  a27162:	62 d2 5d 40 7f da    	vpermt2ps zmm3,zmm20,zmm10
  a27168:	62 f3 7d 48 19 d8 02 	vextractf32x4 xmm0,zmm3,0x2
  a2716f:	c5 f8 13 84 16 e8 00 	vmovlps QWORD PTR [rsi+rdx*1+0xe8],xmm0
  a27176:	00 00 
  a27178:	c5 fc 11 9c 16 c8 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xc8],ymm3
  a2717f:	00 00 
  a27181:	62 32 5d 40 7f f2    	vpermt2ps zmm14,zmm20,zmm18
  a27187:	62 73 7d 48 19 f0 02 	vextractf32x4 xmm0,zmm14,0x2
  a2718e:	c5 f8 13 84 16 10 01 	vmovlps QWORD PTR [rsi+rdx*1+0x110],xmm0
  a27195:	00 00 
  a27197:	c5 7c 11 b4 16 f0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xf0],ymm14
  a2719e:	00 00 
  a271a0:	62 02 5d 40 7f d5    	vpermt2ps zmm26,zmm20,zmm29
  a271a6:	62 63 7d 48 19 d0 02 	vextractf32x4 xmm0,zmm26,0x2
  a271ad:	c5 f8 13 84 16 38 01 	vmovlps QWORD PTR [rsi+rdx*1+0x138],xmm0
  a271b4:	00 00 
  a271b6:	62 61 7c 28 11 94 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x118],ymm26
  a271bd:	18 01 00 00 
  a271c1:	62 c2 5d 40 7f ed    	vpermt2ps zmm21,zmm20,zmm13
  a271c7:	62 e3 7d 48 19 e8 02 	vextractf32x4 xmm0,zmm21,0x2
  a271ce:	c5 f8 13 84 16 60 01 	vmovlps QWORD PTR [rsi+rdx*1+0x160],xmm0
  a271d5:	00 00 
  a271d7:	62 e1 7c 28 11 6c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x140],ymm21
  a271de:	0a 
  a271df:	62 32 5d 40 7f f8    	vpermt2ps zmm15,zmm20,zmm16
  a271e5:	62 73 7d 48 19 f8 02 	vextractf32x4 xmm0,zmm15,0x2
  a271ec:	c5 f8 13 84 16 88 01 	vmovlps QWORD PTR [rsi+rdx*1+0x188],xmm0
  a271f3:	00 00 
  a271f5:	c5 7c 11 bc 16 68 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x168],ymm15
  a271fc:	00 00 
  a271fe:	62 12 5d 40 7f d8    	vpermt2ps zmm11,zmm20,zmm24
  a27204:	62 73 7d 48 19 d8 02 	vextractf32x4 xmm0,zmm11,0x2
  a2720b:	c5 f8 13 84 16 b0 01 	vmovlps QWORD PTR [rsi+rdx*1+0x1b0],xmm0
  a27212:	00 00 
  a27214:	c5 7c 11 9c 16 90 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x190],ymm11
  a2721b:	00 00 
  a2721d:	62 32 5d 40 7f c3    	vpermt2ps zmm8,zmm20,zmm19
  a27223:	62 73 7d 48 19 c0 02 	vextractf32x4 xmm0,zmm8,0x2
  a2722a:	c5 f8 13 84 16 d8 01 	vmovlps QWORD PTR [rsi+rdx*1+0x1d8],xmm0
  a27231:	00 00 
  a27233:	c5 7c 11 84 16 b8 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x1b8],ymm8
  a2723a:	00 00 
  a2723c:	62 d2 5d 40 7f f4    	vpermt2ps zmm6,zmm20,zmm12
  a27242:	62 f3 7d 48 19 f0 02 	vextractf32x4 xmm0,zmm6,0x2
  a27249:	c5 f8 13 84 16 00 02 	vmovlps QWORD PTR [rsi+rdx*1+0x200],xmm0
  a27250:	00 00 
  a27252:	c5 fc 11 b4 16 e0 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x1e0],ymm6
  a27259:	00 00 
  a2725b:	62 b2 5d 40 7f cf    	vpermt2ps zmm1,zmm20,zmm23
  a27261:	62 f3 7d 48 19 c8 02 	vextractf32x4 xmm0,zmm1,0x2
  a27268:	c5 f8 13 84 16 28 02 	vmovlps QWORD PTR [rsi+rdx*1+0x228],xmm0
  a2726f:	00 00 
  a27271:	c5 fc 11 8c 16 08 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x208],ymm1
  a27278:	00 00 
  a2727a:	62 62 5d 40 7f 4c 24 	vpermt2ps zmm25,zmm20,ZMMWORD PTR [rsp-0x80]
  a27281:	fe 
  a27282:	62 63 7d 48 19 c8 02 	vextractf32x4 xmm0,zmm25,0x2
  a27289:	c5 f8 13 84 16 50 02 	vmovlps QWORD PTR [rsi+rdx*1+0x250],xmm0
  a27290:	00 00 
  a27292:	62 61 7c 28 11 8c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x230],ymm25
  a27299:	30 02 00 00 
  a2729d:	62 62 5d 40 7f 74 24 	vpermt2ps zmm30,zmm20,ZMMWORD PTR [rsp-0x40]
  a272a4:	ff 
  a272a5:	62 63 7d 48 19 f0 02 	vextractf32x4 xmm0,zmm30,0x2
  a272ac:	c5 f8 13 84 16 78 02 	vmovlps QWORD PTR [rsi+rdx*1+0x278],xmm0
  a272b3:	00 00 
  a272b5:	62 61 7c 28 11 b4 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x258],ymm30
  a272bc:	58 02 00 00 
  a272c0:	48 81 c2 80 02 00 00 	add    rdx,0x280
  a272c7:	48 39 d0             	cmp    rax,rdx
  a272ca:	0f 85 80 ed ff ff    	jne    a26050 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x50>
  a272d0:	48 81 c4 08 09 00 00 	add    rsp,0x908
  a272d7:	c5 f8 77             	vzeroupper
  a272da:	c3                   	ret
