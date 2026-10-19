
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a0ff00 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a0ff00:	62 f1 7c 48 28 05 76 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6b7076]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a0ff07:	70 6b ff 
  a0ff0a:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  a0ff0e:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a0ff12:	62 f2 7d 48 7f d2    	vpermt2ps zmm2,zmm0,zmm2
  a0ff18:	62 f1 7c 48 28 1d de 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff6b6fde]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a0ff1f:	6f 6b ff 
  a0ff22:	62 f1 7c 48 28 25 14 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff6b7014]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a0ff29:	70 6b ff 
  a0ff2c:	62 f1 7c 48 28 ea    	vmovaps zmm5,zmm2
  a0ff32:	62 f2 65 48 7f ea    	vpermt2ps zmm5,zmm3,zmm2
  a0ff38:	62 f1 7c 48 28 f2    	vmovaps zmm6,zmm2
  a0ff3e:	62 f2 5d 48 7f f2    	vpermt2ps zmm6,zmm4,zmm2
  a0ff44:	62 f1 7c 48 28 3d b2 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff6b6eb2]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a0ff4b:	6e 6b ff 
  a0ff4e:	62 71 7c 48 28 05 e8 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff6b6ee8]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a0ff55:	6e 6b ff 
  a0ff58:	48 6b c2 78          	imul   rax,rdx,0x78
  a0ff5c:	31 d2                	xor    edx,edx
  a0ff5e:	62 71 7c 48 28 0d 98 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff67ef98]        # 8ef00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c3b0>
  a0ff65:	ef 67 ff 
  a0ff68:	62 72 7d 48 18 15 ee 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff6654ee]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a0ff6f:	54 66 ff 
  a0ff72:	62 72 7d 48 18 1d 58 	vbroadcastss zmm11,DWORD PTR [rip+0xffffffffff665358]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a0ff79:	53 66 ff 
  a0ff7c:	62 72 7d 48 18 25 62 	vbroadcastss zmm12,DWORD PTR [rip+0xffffffffff665762]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a0ff83:	57 66 ff 
  a0ff86:	62 72 7d 48 18 2d b4 	vbroadcastss zmm13,DWORD PTR [rip+0xffffffffff6656b4]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a0ff8d:	56 66 ff 
  a0ff90:	62 72 7d 48 18 35 be 	vbroadcastss zmm14,DWORD PTR [rip+0xffffffffff6657be]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a0ff97:	57 66 ff 
  a0ff9a:	62 71 7c 48 28 3d 9c 	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff67ef9c]        # 8ef40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c3f0>
  a0ffa1:	ef 67 ff 
  a0ffa4:	62 e2 7d 48 18 05 f2 	vbroadcastss zmm16,DWORD PTR [rip+0xffffffffff6653f2]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a0ffab:	53 66 ff 
  a0ffae:	62 e1 7c 28 28 0d 08 	vmovaps ymm17,YMMWORD PTR [rip+0xffffffffff668308]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  a0ffb5:	83 66 ff 
  a0ffb8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  a0ffbf:	00 
  a0ffc0:	62 e1 ff 08 10 54 17 	vmovsd xmm18,QWORD PTR [rdi+rdx*1+0x20]
  a0ffc7:	04 
  a0ffc8:	62 e1 7c 28 10 1c 17 	vmovups ymm19,YMMWORD PTR [rdi+rdx*1]
  a0ffcf:	62 e1 7c 28 10 a4 17 	vmovups ymm20,YMMWORD PTR [rdi+rdx*1+0x28]
  a0ffd6:	28 00 00 00 
  a0ffda:	62 e1 7c 28 10 ac 17 	vmovups ymm21,YMMWORD PTR [rdi+rdx*1+0x50]
  a0ffe1:	50 00 00 00 
  a0ffe5:	62 a3 e5 40 1a d2 01 	vinsertf64x4 zmm18,zmm19,ymm18,0x1
  a0ffec:	62 a1 7c 48 28 f2    	vmovaps zmm22,zmm18
  a0fff2:	62 e2 35 48 7f f1    	vpermt2ps zmm22,zmm9,zmm1
  a0fff8:	62 e2 05 48 7f d1    	vpermt2ps zmm18,zmm15,zmm1
  a0fffe:	62 e1 ff 08 10 5c 17 	vmovsd xmm19,QWORD PTR [rdi+rdx*1+0x48]
  a10005:	09 
  a10006:	62 a3 dd 40 1a e3 01 	vinsertf64x4 zmm20,zmm20,ymm19,0x1
  a1000d:	62 a1 7c 48 28 fc    	vmovaps zmm23,zmm20
  a10013:	62 e2 35 48 7f f9    	vpermt2ps zmm23,zmm9,zmm1
  a10019:	62 e2 05 48 7f e1    	vpermt2ps zmm20,zmm15,zmm1
  a1001f:	62 e1 ff 08 10 5c 17 	vmovsd xmm19,QWORD PTR [rdi+rdx*1+0x70]
  a10026:	0e 
  a10027:	62 a3 d5 40 1a eb 01 	vinsertf64x4 zmm21,zmm21,ymm19,0x1
  a1002e:	62 21 7c 48 28 c5    	vmovaps zmm24,zmm21
  a10034:	62 62 35 48 7f c1    	vpermt2ps zmm24,zmm9,zmm1
  a1003a:	62 e2 05 48 7f e9    	vpermt2ps zmm21,zmm15,zmm1
  a10040:	62 21 5c 40 58 cd    	vaddps zmm25,zmm20,zmm21
  a10046:	62 01 6c 40 58 d1    	vaddps zmm26,zmm18,zmm25
  a1004c:	62 01 44 40 58 d8    	vaddps zmm27,zmm23,zmm24
  a10052:	62 81 4c 40 58 db    	vaddps zmm19,zmm22,zmm27
  a10058:	62 82 2d 48 bc d1    	vfnmadd231ps zmm18,zmm10,zmm25
  a1005e:	62 81 44 40 5c f8    	vsubps zmm23,zmm23,zmm24
  a10064:	62 c1 44 40 59 fb    	vmulps zmm23,zmm23,zmm11
  a1006a:	62 21 6c 40 58 c7    	vaddps zmm24,zmm18,zmm23
  a10070:	62 82 2d 48 bc f3    	vfnmadd231ps zmm22,zmm10,zmm27
  a10076:	62 a1 5c 40 5c e5    	vsubps zmm20,zmm20,zmm21
  a1007c:	62 c1 5c 40 59 e3    	vmulps zmm20,zmm20,zmm11
  a10082:	62 21 4c 40 5c cc    	vsubps zmm25,zmm22,zmm20
  a10088:	62 a1 6c 40 5c d7    	vsubps zmm18,zmm18,zmm23
  a1008e:	62 21 5c 40 58 de    	vaddps zmm27,zmm20,zmm22
  a10094:	62 62 7d 48 7f d1    	vpermt2ps zmm26,zmm0,zmm1
  a1009a:	62 62 7d 48 7f c1    	vpermt2ps zmm24,zmm0,zmm1
  a100a0:	62 e2 7d 48 7f d1    	vpermt2ps zmm18,zmm0,zmm1
  a100a6:	62 81 7c 48 28 e2    	vmovaps zmm20,zmm26
  a100ac:	62 e2 65 48 7f e2    	vpermt2ps zmm20,zmm3,zmm2
  a100b2:	62 62 5d 48 7f d2    	vpermt2ps zmm26,zmm4,zmm2
  a100b8:	62 81 7c 48 28 f0    	vmovaps zmm22,zmm24
  a100be:	62 e2 65 48 7f f2    	vpermt2ps zmm22,zmm3,zmm2
  a100c4:	62 62 5d 48 7f c2    	vpermt2ps zmm24,zmm4,zmm2
  a100ca:	62 21 7c 48 28 e2    	vmovaps zmm28,zmm18
  a100d0:	62 62 65 48 7f e2    	vpermt2ps zmm28,zmm3,zmm2
  a100d6:	62 e2 5d 48 7f d2    	vpermt2ps zmm18,zmm4,zmm2
  a100dc:	62 a1 ad 40 14 ea    	vunpcklpd zmm21,zmm26,zmm18
  a100e2:	62 81 dd 40 14 fc    	vunpcklpd zmm23,zmm20,zmm28
  a100e8:	62 81 dd 40 15 e4    	vunpckhpd zmm20,zmm20,zmm28
  a100ee:	62 61 cd 40 14 d5    	vunpcklpd zmm26,zmm22,zmm5
  a100f4:	62 61 cd 40 15 e5    	vunpckhpd zmm28,zmm22,zmm5
  a100fa:	62 61 bd 40 14 c6    	vunpcklpd zmm24,zmm24,zmm6
  a10100:	62 a1 7c 48 28 d7    	vmovaps zmm18,zmm23
  a10106:	62 82 45 48 7f d2    	vpermt2ps zmm18,zmm7,zmm26
  a1010c:	62 82 3d 48 7f fa    	vpermt2ps zmm23,zmm8,zmm26
  a10112:	62 a1 7c 48 28 f4    	vmovaps zmm22,zmm20
  a10118:	62 82 45 48 7f f4    	vpermt2ps zmm22,zmm7,zmm28
  a1011e:	62 82 3d 48 7f e4    	vpermt2ps zmm20,zmm8,zmm28
  a10124:	62 82 45 48 7f e8    	vpermt2ps zmm21,zmm7,zmm24
  a1012a:	62 e2 7d 48 7f d9    	vpermt2ps zmm19,zmm0,zmm1
  a10130:	62 62 7d 48 7f c9    	vpermt2ps zmm25,zmm0,zmm1
  a10136:	62 62 7d 48 7f d9    	vpermt2ps zmm27,zmm0,zmm1
  a1013c:	62 21 7c 48 28 c3    	vmovaps zmm24,zmm19
  a10142:	62 62 65 48 7f c2    	vpermt2ps zmm24,zmm3,zmm2
  a10148:	62 e2 5d 48 7f da    	vpermt2ps zmm19,zmm4,zmm2
  a1014e:	62 01 7c 48 28 d1    	vmovaps zmm26,zmm25
  a10154:	62 62 65 48 7f d2    	vpermt2ps zmm26,zmm3,zmm2
  a1015a:	62 62 5d 48 7f ca    	vpermt2ps zmm25,zmm4,zmm2
  a10160:	62 01 7c 48 28 e3    	vmovaps zmm28,zmm27
  a10166:	62 62 65 48 7f e2    	vpermt2ps zmm28,zmm3,zmm2
  a1016c:	62 62 5d 48 7f da    	vpermt2ps zmm27,zmm4,zmm2
  a10172:	62 01 e5 40 14 db    	vunpcklpd zmm27,zmm19,zmm27
  a10178:	62 01 bd 40 14 ec    	vunpcklpd zmm29,zmm24,zmm28
  a1017e:	62 01 bd 40 15 c4    	vunpckhpd zmm24,zmm24,zmm28
  a10184:	62 61 ad 40 14 e5    	vunpcklpd zmm28,zmm26,zmm5
  a1018a:	62 61 ad 40 15 d5    	vunpckhpd zmm26,zmm26,zmm5
  a10190:	62 61 b5 40 14 ce    	vunpcklpd zmm25,zmm25,zmm6
  a10196:	62 81 7c 48 28 dd    	vmovaps zmm19,zmm29
  a1019c:	62 82 45 48 7f dc    	vpermt2ps zmm19,zmm7,zmm28
  a101a2:	62 02 3d 48 7f ec    	vpermt2ps zmm29,zmm8,zmm28
  a101a8:	62 01 7c 48 28 e0    	vmovaps zmm28,zmm24
  a101ae:	62 02 45 48 7f e2    	vpermt2ps zmm28,zmm7,zmm26
  a101b4:	62 02 3d 48 7f c2    	vpermt2ps zmm24,zmm8,zmm26
  a101ba:	62 02 45 48 7f d9    	vpermt2ps zmm27,zmm7,zmm25
  a101c0:	62 61 7c 48 10 49 02 	vmovups zmm25,ZMMWORD PTR [rcx+0x80]
  a101c7:	62 61 7c 48 10 51 03 	vmovups zmm26,ZMMWORD PTR [rcx+0xc0]
  a101ce:	62 01 44 40 59 f1    	vmulps zmm30,zmm23,zmm25
  a101d4:	62 02 15 40 bc f2    	vfnmadd231ps zmm30,zmm29,zmm26
  a101da:	62 01 14 40 59 c9    	vmulps zmm25,zmm29,zmm25
  a101e0:	62 61 7c 48 10 69 08 	vmovups zmm29,ZMMWORD PTR [rcx+0x200]
  a101e7:	62 22 2d 40 b8 cf    	vfmadd231ps zmm25,zmm26,zmm23
  a101ed:	62 e1 7c 48 10 79 09 	vmovups zmm23,ZMMWORD PTR [rcx+0x240]
  a101f4:	62 01 54 40 59 d5    	vmulps zmm26,zmm21,zmm29
  a101fa:	62 22 25 40 bc d7    	vfnmadd231ps zmm26,zmm27,zmm23
  a10200:	62 01 24 40 59 dd    	vmulps zmm27,zmm27,zmm29
  a10206:	62 61 7c 48 10 69 04 	vmovups zmm29,ZMMWORD PTR [rcx+0x100]
  a1020d:	62 22 45 40 b8 dd    	vfmadd231ps zmm27,zmm23,zmm21
  a10213:	62 e1 7c 48 10 69 05 	vmovups zmm21,ZMMWORD PTR [rcx+0x140]
  a1021a:	62 81 4c 40 59 fd    	vmulps zmm23,zmm22,zmm29
  a10220:	62 a2 1d 40 bc fd    	vfnmadd231ps zmm23,zmm28,zmm21
  a10226:	62 01 1c 40 59 e5    	vmulps zmm28,zmm28,zmm29
  a1022c:	62 61 7c 48 10 69 06 	vmovups zmm29,ZMMWORD PTR [rcx+0x180]
  a10233:	62 22 55 40 b8 e6    	vfmadd231ps zmm28,zmm21,zmm22
  a10239:	62 e1 7c 48 10 69 07 	vmovups zmm21,ZMMWORD PTR [rcx+0x1c0]
  a10240:	62 81 5c 40 59 f5    	vmulps zmm22,zmm20,zmm29
  a10246:	62 a2 3d 40 bc f5    	vfnmadd231ps zmm22,zmm24,zmm21
  a1024c:	62 01 3c 40 59 c5    	vmulps zmm24,zmm24,zmm29
  a10252:	62 22 55 40 b8 c4    	vfmadd231ps zmm24,zmm21,zmm20
  a10258:	62 01 0c 40 58 ea    	vaddps zmm29,zmm30,zmm26
  a1025e:	62 01 34 40 58 fb    	vaddps zmm31,zmm25,zmm27
  a10264:	62 01 34 40 5c cb    	vsubps zmm25,zmm25,zmm27
  a1026a:	62 01 1c 40 58 d8    	vaddps zmm27,zmm28,zmm24
  a10270:	62 01 1c 40 5c c0    	vsubps zmm24,zmm28,zmm24
  a10276:	62 21 44 40 58 e6    	vaddps zmm28,zmm23,zmm22
  a1027c:	62 01 0c 40 5c d2    	vsubps zmm26,zmm30,zmm26
  a10282:	62 c1 7c 48 28 e4    	vmovaps zmm20,zmm12
  a10288:	62 a2 15 40 a8 e2    	vfmadd213ps zmm20,zmm29,zmm18
  a1028e:	62 c2 1d 40 bc e5    	vfnmadd231ps zmm20,zmm28,zmm13
  a10294:	62 a1 44 40 5c fe    	vsubps zmm23,zmm23,zmm22
  a1029a:	62 c1 3c 40 59 ee    	vmulps zmm21,zmm24,zmm14
  a102a0:	62 a2 35 40 b8 e8    	vfmadd231ps zmm21,zmm25,zmm16
  a102a6:	62 41 34 40 59 ce    	vmulps zmm25,zmm25,zmm14
  a102ac:	62 02 7d 40 bc c8    	vfnmadd231ps zmm25,zmm16,zmm24
  a102b2:	62 c1 44 40 59 f6    	vmulps zmm22,zmm23,zmm14
  a102b8:	62 a2 2d 40 b8 f0    	vfmadd231ps zmm22,zmm26,zmm16
  a102be:	62 41 2c 40 59 c6    	vmulps zmm24,zmm26,zmm14
  a102c4:	62 22 7d 40 bc c7    	vfnmadd231ps zmm24,zmm16,zmm23
  a102ca:	62 c1 7c 48 28 fd    	vmovaps zmm23,zmm13
  a102d0:	62 a2 15 40 ac fa    	vfnmadd213ps zmm23,zmm29,zmm18
  a102d6:	62 81 6c 20 58 d5    	vaddps ymm18,ymm18,ymm29
  a102dc:	62 41 7c 48 28 d4    	vmovaps zmm26,zmm12
  a102e2:	62 22 05 40 a8 d3    	vfmadd213ps zmm26,zmm31,zmm19
  a102e8:	62 c2 1d 40 b8 fc    	vfmadd231ps zmm23,zmm28,zmm12
  a102ee:	62 81 6c 20 58 d4    	vaddps ymm18,ymm18,ymm28
  a102f4:	62 41 7c 48 28 e5    	vmovaps zmm28,zmm13
  a102fa:	62 22 05 40 ac e3    	vfnmadd213ps zmm28,zmm31,zmm19
  a10300:	62 a1 04 00 58 db    	vaddps xmm19,xmm31,xmm19
  a10306:	62 42 25 40 bc d5    	vfnmadd231ps zmm26,zmm27,zmm13
  a1030c:	62 42 25 40 b8 e4    	vfmadd231ps zmm28,zmm27,zmm12
  a10312:	62 81 64 00 58 db    	vaddps xmm19,xmm19,xmm27
  a10318:	62 a2 75 20 7f da    	vpermt2ps ymm19,ymm17,ymm18
  a1031e:	62 e1 7c 08 11 1c 16 	vmovups XMMWORD PTR [rsi+rdx*1],xmm19
  a10325:	62 a3 7d 28 19 da 01 	vextractf32x4 xmm18,ymm19,0x1
  a1032c:	62 e1 7c 08 13 54 16 	vmovlps QWORD PTR [rsi+rdx*1+0x10],xmm18
  a10333:	02 
  a10334:	62 a1 5c 20 58 d5    	vaddps ymm18,ymm20,ymm21
  a1033a:	62 a1 2c 00 5c de    	vsubps xmm19,xmm26,xmm22
  a10340:	62 a2 75 20 7f da    	vpermt2ps ymm19,ymm17,ymm18
  a10346:	62 e1 7c 08 11 9c 16 	vmovups XMMWORD PTR [rsi+rdx*1+0x18],xmm19
  a1034d:	18 00 00 00 
  a10351:	62 a3 7d 28 19 da 01 	vextractf32x4 xmm18,ymm19,0x1
  a10358:	62 e1 7c 08 13 54 16 	vmovlps QWORD PTR [rsi+rdx*1+0x28],xmm18
  a1035f:	05 
  a10360:	62 81 44 20 58 d1    	vaddps ymm18,ymm23,ymm25
  a10366:	62 81 1c 00 5c d8    	vsubps xmm19,xmm28,xmm24
  a1036c:	62 a2 75 20 7f da    	vpermt2ps ymm19,ymm17,ymm18
  a10372:	62 e1 7c 08 11 5c 16 	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm19
  a10379:	03 
  a1037a:	62 a3 7d 28 19 da 01 	vextractf32x4 xmm18,ymm19,0x1
  a10381:	62 e1 7c 08 13 54 16 	vmovlps QWORD PTR [rsi+rdx*1+0x40],xmm18
  a10388:	08 
  a10389:	62 81 44 20 5c d1    	vsubps ymm18,ymm23,ymm25
  a1038f:	62 81 1c 00 58 d8    	vaddps xmm19,xmm28,xmm24
  a10395:	62 a2 75 20 7f da    	vpermt2ps ymm19,ymm17,ymm18
  a1039b:	62 e1 7c 08 11 9c 16 	vmovups XMMWORD PTR [rsi+rdx*1+0x48],xmm19
  a103a2:	48 00 00 00 
  a103a6:	62 a3 7d 28 19 da 01 	vextractf32x4 xmm18,ymm19,0x1
  a103ad:	62 e1 7c 08 13 54 16 	vmovlps QWORD PTR [rsi+rdx*1+0x58],xmm18
  a103b4:	0b 
  a103b5:	62 a1 5c 20 5c d5    	vsubps ymm18,ymm20,ymm21
  a103bb:	62 a1 2c 00 58 de    	vaddps xmm19,xmm26,xmm22
  a103c1:	62 a2 75 20 7f da    	vpermt2ps ymm19,ymm17,ymm18
  a103c7:	62 e1 7c 08 11 5c 16 	vmovups XMMWORD PTR [rsi+rdx*1+0x60],xmm19
  a103ce:	06 
  a103cf:	62 a3 7d 28 19 da 01 	vextractf32x4 xmm18,ymm19,0x1
  a103d6:	62 e1 7c 08 13 54 16 	vmovlps QWORD PTR [rsi+rdx*1+0x70],xmm18
  a103dd:	0e 
  a103de:	48 83 c2 78          	add    rdx,0x78
  a103e2:	48 39 d0             	cmp    rax,rdx
  a103e5:	0f 85 d5 fb ff ff    	jne    a0ffc0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0xc0>
  a103eb:	c5 f8 77             	vzeroupper
  a103ee:	c3                   	ret
