
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a11240 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a11240:	c5 fb 10 47 10       	vmovsd xmm0,QWORD PTR [rdi+0x10]
  a11245:	c5 f8 10 0f          	vmovups xmm1,XMMWORD PTR [rdi]
  a11249:	c5 f8 10 57 18       	vmovups xmm2,XMMWORD PTR [rdi+0x18]
  a1124e:	62 f3 75 48 18 c0 01 	vinsertf32x4 zmm0,zmm1,xmm0,0x1
  a11255:	62 f1 7c 48 28 0d 21 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff67dc21]        # 8ee80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c330>
  a1125c:	dc 67 ff 
  a1125f:	c5 e0 57 db          	vxorps xmm3,xmm3,xmm3
  a11263:	62 f1 7c 48 28 e0    	vmovaps zmm4,zmm0
  a11269:	62 f2 75 48 7f e3    	vpermt2ps zmm4,zmm1,zmm3
  a1126f:	62 f1 7c 48 28 2d 47 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff67dc47]        # 8eec0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c370>
  a11276:	dc 67 ff 
  a11279:	62 f2 55 48 7f c3    	vpermt2ps zmm0,zmm5,zmm3
  a1127f:	c5 fb 10 77 28       	vmovsd xmm6,QWORD PTR [rdi+0x28]
  a11284:	62 f3 6d 48 18 d6 01 	vinsertf32x4 zmm2,zmm2,xmm6,0x1
  a1128b:	62 f2 6d 48 77 cb    	vpermi2ps zmm1,zmm2,zmm3
  a11291:	62 f2 55 48 7f d3    	vpermt2ps zmm2,zmm5,zmm3
  a11297:	62 f1 7c 48 58 ea    	vaddps zmm5,zmm0,zmm2
  a1129d:	62 f1 5c 48 58 f1    	vaddps zmm6,zmm4,zmm1
  a112a3:	62 f1 7c 48 5c c2    	vsubps zmm0,zmm0,zmm2
  a112a9:	62 f1 5c 48 5c c9    	vsubps zmm1,zmm4,zmm1
  a112af:	62 f1 7c 48 28 15 c7 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff6b5cc7]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a112b6:	5c 6b ff 
  a112b9:	62 f2 6d 48 7f eb    	vpermt2ps zmm5,zmm2,zmm3
  a112bf:	62 f2 6d 48 7f c3    	vpermt2ps zmm0,zmm2,zmm3
  a112c5:	c5 d8 57 e4          	vxorps xmm4,xmm4,xmm4
  a112c9:	62 f2 6d 48 7f e4    	vpermt2ps zmm4,zmm2,zmm4
  a112cf:	62 f1 7c 48 28 3d 27 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff6b5c27]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a112d6:	5c 6b ff 
  a112d9:	62 f2 45 48 7f ec    	vpermt2ps zmm5,zmm7,zmm4
  a112df:	62 f2 45 48 7f c4    	vpermt2ps zmm0,zmm7,zmm4
  a112e5:	62 f2 6d 48 7f f3    	vpermt2ps zmm6,zmm2,zmm3
  a112eb:	62 f2 6d 48 7f cb    	vpermt2ps zmm1,zmm2,zmm3
  a112f1:	62 f2 45 48 7f f4    	vpermt2ps zmm6,zmm7,zmm4
  a112f7:	62 f2 45 48 7f cc    	vpermt2ps zmm1,zmm7,zmm4
  a112fd:	62 f2 45 48 7f e4    	vpermt2ps zmm4,zmm7,zmm4
  a11303:	62 f1 d5 48 14 d4    	vunpcklpd zmm2,zmm5,zmm4
  a11309:	62 f1 d5 48 15 dc    	vunpckhpd zmm3,zmm5,zmm4
  a1130f:	62 f1 fd 48 14 ec    	vunpcklpd zmm5,zmm0,zmm4
  a11315:	62 f1 fd 48 15 c4    	vunpckhpd zmm0,zmm0,zmm4
  a1131b:	62 f1 7c 48 28 3d db 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff6b5adb]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a11322:	5a 6b ff 
  a11325:	62 71 7c 48 28 c2    	vmovaps zmm8,zmm2
  a1132b:	62 72 45 48 7f c5    	vpermt2ps zmm8,zmm7,zmm5
  a11331:	62 71 7c 48 28 0d 05 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff6b5b05]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a11338:	5b 6b ff 
  a1133b:	62 f2 35 48 7f d5    	vpermt2ps zmm2,zmm9,zmm5
  a11341:	62 f2 45 48 7f d8    	vpermt2ps zmm3,zmm7,zmm0
  a11347:	62 f1 cd 48 14 c4    	vunpcklpd zmm0,zmm6,zmm4
  a1134d:	62 f1 cd 48 15 ec    	vunpckhpd zmm5,zmm6,zmm4
  a11353:	62 f1 f5 48 14 f4    	vunpcklpd zmm6,zmm1,zmm4
  a11359:	62 f1 f5 48 15 cc    	vunpckhpd zmm1,zmm1,zmm4
  a1135f:	62 f1 7c 48 28 e0    	vmovaps zmm4,zmm0
  a11365:	62 f2 45 48 7f e6    	vpermt2ps zmm4,zmm7,zmm6
  a1136b:	62 f2 35 48 7f c6    	vpermt2ps zmm0,zmm9,zmm6
  a11371:	62 f2 45 48 7f e9    	vpermt2ps zmm5,zmm7,zmm1
  a11377:	62 f1 7c 48 10 4a 02 	vmovups zmm1,ZMMWORD PTR [rdx+0x80]
  a1137e:	62 f1 7c 48 10 72 03 	vmovups zmm6,ZMMWORD PTR [rdx+0xc0]
  a11385:	62 f1 7c 48 10 7a 04 	vmovups zmm7,ZMMWORD PTR [rdx+0x100]
  a1138c:	62 71 7c 48 10 4a 05 	vmovups zmm9,ZMMWORD PTR [rdx+0x140]
  a11393:	62 71 6c 48 59 d1    	vmulps zmm10,zmm2,zmm1
  a11399:	62 72 7d 48 bc d6    	vfnmadd231ps zmm10,zmm0,zmm6
  a1139f:	62 71 64 48 59 df    	vmulps zmm11,zmm3,zmm7
  a113a5:	62 52 55 48 bc d9    	vfnmadd231ps zmm11,zmm5,zmm9
  a113ab:	62 51 2c 48 58 e3    	vaddps zmm12,zmm10,zmm11
  a113b1:	62 f1 7c 48 59 c1    	vmulps zmm0,zmm0,zmm1
  a113b7:	62 f2 4d 48 b8 c2    	vfmadd231ps zmm0,zmm6,zmm2
  a113bd:	62 f1 54 48 59 cf    	vmulps zmm1,zmm5,zmm7
  a113c3:	62 f2 35 48 b8 cb    	vfmadd231ps zmm1,zmm9,zmm3
  a113c9:	62 f1 7c 48 58 d1    	vaddps zmm2,zmm0,zmm1
  a113cf:	62 f2 7d 48 18 1d 87 	vbroadcastss zmm3,DWORD PTR [rip+0xffffffffff664087]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a113d6:	40 66 ff 
  a113d9:	62 f1 7c 48 28 eb    	vmovaps zmm5,zmm3
  a113df:	62 d2 1d 48 ac e8    	vfnmadd213ps zmm5,zmm12,zmm8
  a113e5:	62 f2 6d 48 ac dc    	vfnmadd213ps zmm3,zmm2,zmm4
  a113eb:	c4 c1 38 58 f4       	vaddps xmm6,xmm8,xmm12
  a113f0:	c5 d8 58 d2          	vaddps xmm2,xmm4,xmm2
  a113f4:	c5 e8 14 d6          	vunpcklps xmm2,xmm2,xmm6
  a113f8:	c5 f8 11 16          	vmovups XMMWORD PTR [rsi],xmm2
  a113fc:	c4 e2 79 18 15 cf 3e 	vbroadcastss xmm2,DWORD PTR [rip+0xffffffffff663ecf]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a11403:	66 ff 
  a11405:	c5 f8 5c c1          	vsubps xmm0,xmm0,xmm1
  a11409:	c5 f8 59 c2          	vmulps xmm0,xmm0,xmm2
  a1140d:	c5 d0 58 c8          	vaddps xmm1,xmm5,xmm0
  a11411:	c4 c1 28 5c e3       	vsubps xmm4,xmm10,xmm11
  a11416:	c5 d8 59 d2          	vmulps xmm2,xmm4,xmm2
  a1141a:	c5 e0 5c e2          	vsubps xmm4,xmm3,xmm2
  a1141e:	c5 d8 14 c9          	vunpcklps xmm1,xmm4,xmm1
  a11422:	c5 f8 11 4e 10       	vmovups XMMWORD PTR [rsi+0x10],xmm1
  a11427:	c5 d0 5c c0          	vsubps xmm0,xmm5,xmm0
  a1142b:	c5 e0 58 ca          	vaddps xmm1,xmm3,xmm2
  a1142f:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  a11433:	c5 f8 11 46 20       	vmovups XMMWORD PTR [rsi+0x20],xmm0
  a11438:	c5 f8 77             	vzeroupper
  a1143b:	c3                   	ret
