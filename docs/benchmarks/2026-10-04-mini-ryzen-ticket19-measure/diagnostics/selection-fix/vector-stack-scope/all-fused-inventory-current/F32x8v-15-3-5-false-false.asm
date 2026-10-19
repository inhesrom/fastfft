
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000ac3080 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  ac3080:	c5 fc 10 47 28       	vmovups ymm0,YMMWORD PTR [rdi+0x28]
  ac3085:	c5 fb 10 4f 48       	vmovsd xmm1,QWORD PTR [rdi+0x48]
  ac308a:	c5 fc c6 d1 88       	vshufps ymm2,ymm0,ymm1,0x88
  ac308f:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  ac3095:	c5 fc 10 5f 50       	vmovups ymm3,YMMWORD PTR [rdi+0x50]
  ac309a:	c5 fb 10 67 70       	vmovsd xmm4,QWORD PTR [rdi+0x70]
  ac309f:	c5 e4 c6 ec 88       	vshufps ymm5,ymm3,ymm4,0x88
  ac30a4:	c4 e3 fd 01 ed d8    	vpermpd ymm5,ymm5,0xd8
  ac30aa:	c4 e2 7d 18 35 21 22 	vbroadcastss ymm6,DWORD PTR [rip+0xffffffffff5b2221]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  ac30b1:	5b ff 
  ac30b3:	c5 ec 5c fd          	vsubps ymm7,ymm2,ymm5
  ac30b7:	c5 c4 59 fe          	vmulps ymm7,ymm7,ymm6
  ac30bb:	c5 fc c6 c1 dd       	vshufps ymm0,ymm0,ymm1,0xdd
  ac30c0:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  ac30c6:	c5 e4 c6 cc dd       	vshufps ymm1,ymm3,ymm4,0xdd
  ac30cb:	c4 e3 fd 01 c9 d8    	vpermpd ymm1,ymm1,0xd8
  ac30d1:	c5 fc 58 d9          	vaddps ymm3,ymm0,ymm1
  ac30d5:	c5 fc 10 27          	vmovups ymm4,YMMWORD PTR [rdi]
  ac30d9:	c5 7b 10 47 20       	vmovsd xmm8,QWORD PTR [rdi+0x20]
  ac30de:	c4 41 5c c6 c8 dd    	vshufps ymm9,ymm4,ymm8,0xdd
  ac30e4:	c4 62 7d 18 15 73 23 	vbroadcastss ymm10,DWORD PTR [rip+0xffffffffff5b2373]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  ac30eb:	5b ff 
  ac30ed:	c4 43 fd 01 c9 d8    	vpermpd ymm9,ymm9,0xd8
  ac30f3:	c4 41 7c 28 da       	vmovaps ymm11,ymm10
  ac30f8:	c4 42 65 ac d9       	vfnmadd213ps ymm11,ymm3,ymm9
  ac30fd:	c5 24 58 e7          	vaddps ymm12,ymm11,ymm7
  ac3101:	c5 ec 58 d5          	vaddps ymm2,ymm2,ymm5
  ac3105:	c4 c1 5c c6 e0 88    	vshufps ymm4,ymm4,ymm8,0x88
  ac310b:	c4 e3 fd 01 e4 d8    	vpermpd ymm4,ymm4,0xd8
  ac3111:	c4 62 6d ac d4       	vfnmadd213ps ymm10,ymm2,ymm4
  ac3116:	c5 fc 5c c1          	vsubps ymm0,ymm0,ymm1
  ac311a:	c5 fc 59 c6          	vmulps ymm0,ymm0,ymm6
  ac311e:	c5 ac 5c c8          	vsubps ymm1,ymm10,ymm0
  ac3122:	c5 a4 5c ef          	vsubps ymm5,ymm11,ymm7
  ac3126:	c5 ac 58 c0          	vaddps ymm0,ymm10,ymm0
  ac312a:	c5 b4 58 f3          	vaddps ymm6,ymm9,ymm3
  ac312e:	c5 dc 58 d2          	vaddps ymm2,ymm4,ymm2
  ac3132:	c5 f8 28 da          	vmovaps xmm3,xmm2
  ac3136:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  ac313c:	c5 f8 28 e0          	vmovaps xmm4,xmm0
  ac3140:	c4 e3 7d 19 c7 01    	vextractf128 xmm7,ymm0,0x1
  ac3146:	c5 78 28 c1          	vmovaps xmm8,xmm1
  ac314a:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  ac3150:	c5 6d 14 c9          	vunpcklpd ymm9,ymm2,ymm1
  ac3154:	c4 c1 65 15 d0       	vunpckhpd ymm2,ymm3,ymm8
  ac3159:	c4 c1 65 14 d8       	vunpcklpd ymm3,ymm3,ymm8
  ac315e:	c5 7a 7e c0          	vmovq  xmm8,xmm0
  ac3162:	c5 dd 73 dc 08       	vpsrldq ymm4,ymm4,0x8
  ac3167:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  ac316b:	c4 e3 45 0c f9 cc    	vblendps ymm7,ymm7,ymm1,0xcc
  ac3171:	c4 c1 64 c6 c0 88    	vshufps ymm0,ymm3,ymm8,0x88
  ac3177:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  ac317c:	c4 c1 64 c6 d8 dd    	vshufps ymm3,ymm3,ymm8,0xdd
  ac3182:	c5 64 c6 c3 d8       	vshufps ymm8,ymm3,ymm3,0xd8
  ac3187:	c5 ec c6 dc 88       	vshufps ymm3,ymm2,ymm4,0x88
  ac318c:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  ac3191:	c5 ec c6 d4 dd       	vshufps ymm2,ymm2,ymm4,0xdd
  ac3196:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  ac319b:	c5 b4 c6 e7 88       	vshufps ymm4,ymm9,ymm7,0x88
  ac31a0:	c5 dc c6 fc d8       	vshufps ymm7,ymm4,ymm4,0xd8
  ac31a5:	c5 f8 28 e6          	vmovaps xmm4,xmm6
  ac31a9:	c4 e3 7d 19 f6 01    	vextractf128 xmm6,ymm6,0x1
  ac31af:	c5 78 28 cd          	vmovaps xmm9,xmm5
  ac31b3:	c4 c3 7d 19 ea 01    	vextractf128 xmm10,ymm5,0x1
  ac31b9:	c4 41 78 28 dc       	vmovaps xmm11,xmm12
  ac31be:	c4 43 7d 19 e4 01    	vextractf128 xmm12,ymm12,0x1
  ac31c4:	c4 c1 4d 14 f4       	vunpcklpd ymm6,ymm6,ymm12
  ac31c9:	c4 41 5d 15 e3       	vunpckhpd ymm12,ymm4,ymm11
  ac31ce:	c4 c1 5d 14 e3       	vunpcklpd ymm4,ymm4,ymm11
  ac31d3:	c5 fa 7e ed          	vmovq  xmm5,xmm5
  ac31d7:	c4 c1 35 73 d9 08    	vpsrldq ymm9,ymm9,0x8
  ac31dd:	c4 63 2d 0c d1 cc    	vblendps ymm10,ymm10,ymm1,0xcc
  ac31e3:	c5 dc c6 cd 88       	vshufps ymm1,ymm4,ymm5,0x88
  ac31e8:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  ac31ed:	c5 dc c6 e5 dd       	vshufps ymm4,ymm4,ymm5,0xdd
  ac31f2:	c5 dc c6 ec d8       	vshufps ymm5,ymm4,ymm4,0xd8
  ac31f7:	c4 c1 1c c6 e1 88    	vshufps ymm4,ymm12,ymm9,0x88
  ac31fd:	c5 5c c6 dc d8       	vshufps ymm11,ymm4,ymm4,0xd8
  ac3202:	c4 c1 1c c6 e1 dd    	vshufps ymm4,ymm12,ymm9,0xdd
  ac3208:	c5 5c c6 cc d8       	vshufps ymm9,ymm4,ymm4,0xd8
  ac320d:	c4 c1 4c c6 e2 88    	vshufps ymm4,ymm6,ymm10,0x88
  ac3213:	c5 dc c6 f4 d8       	vshufps ymm6,ymm4,ymm4,0xd8
  ac3218:	c5 7c 10 52 40       	vmovups ymm10,YMMWORD PTR [rdx+0x40]
  ac321d:	c5 7c 10 62 60       	vmovups ymm12,YMMWORD PTR [rdx+0x60]
  ac3222:	c5 7c 10 aa 80 00 00 	vmovups ymm13,YMMWORD PTR [rdx+0x80]
  ac3229:	00 
  ac322a:	c5 7c 10 b2 a0 00 00 	vmovups ymm14,YMMWORD PTR [rdx+0xa0]
  ac3231:	00 
  ac3232:	c5 7c 10 ba c0 00 00 	vmovups ymm15,YMMWORD PTR [rdx+0xc0]
  ac3239:	00 
  ac323a:	62 e1 7c 28 10 42 07 	vmovups ymm16,YMMWORD PTR [rdx+0xe0]
  ac3241:	62 e1 7c 28 10 4a 08 	vmovups ymm17,YMMWORD PTR [rdx+0x100]
  ac3248:	62 e1 7c 28 10 52 09 	vmovups ymm18,YMMWORD PTR [rdx+0x120]
  ac324f:	62 c1 3c 28 59 da    	vmulps ymm19,ymm8,ymm10
  ac3255:	62 c2 55 28 bc dc    	vfnmadd231ps ymm19,ymm5,ymm12
  ac325b:	62 a1 44 28 59 e1    	vmulps ymm20,ymm7,ymm17
  ac3261:	62 a2 4d 28 bc e2    	vfnmadd231ps ymm20,ymm6,ymm18
  ac3267:	62 b1 64 20 58 e4    	vaddps ymm4,ymm19,ymm20
  ac326d:	62 c1 64 28 59 ed    	vmulps ymm21,ymm3,ymm13
  ac3273:	62 c2 25 28 bc ee    	vfnmadd231ps ymm21,ymm11,ymm14
  ac3279:	62 c1 6c 28 59 f7    	vmulps ymm22,ymm2,ymm15
  ac327f:	62 a2 35 28 bc f0    	vfnmadd231ps ymm22,ymm9,ymm16
  ac3285:	62 a1 54 20 58 fe    	vaddps ymm23,ymm21,ymm22
  ac328b:	c5 ac 59 ed          	vmulps ymm5,ymm10,ymm5
  ac328f:	c4 c2 3d b8 ec       	vfmadd231ps ymm5,ymm8,ymm12
  ac3294:	62 b1 4c 28 59 f1    	vmulps ymm6,ymm6,ymm17
  ac329a:	62 b2 45 28 b8 f2    	vfmadd231ps ymm6,ymm7,ymm18
  ac32a0:	c5 d4 58 fe          	vaddps ymm7,ymm5,ymm6
  ac32a4:	c4 41 24 59 c5       	vmulps ymm8,ymm11,ymm13
  ac32a9:	c4 42 65 b8 c6       	vfmadd231ps ymm8,ymm3,ymm14
  ac32ae:	c4 c1 34 59 df       	vmulps ymm3,ymm9,ymm15
  ac32b3:	62 b2 6d 28 b8 d8    	vfmadd231ps ymm3,ymm2,ymm16
  ac32b9:	c5 3c 58 cb          	vaddps ymm9,ymm8,ymm3
  ac32bd:	c4 62 7d 18 15 22 24 	vbroadcastss ymm10,DWORD PTR [rip+0xffffffffff5b2422]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  ac32c4:	5b ff 
  ac32c6:	c5 7c 29 d2          	vmovaps ymm2,ymm10
  ac32ca:	c4 e2 5d a8 d0       	vfmadd213ps ymm2,ymm4,ymm0
  ac32cf:	c4 62 7d 18 1d 6c 23 	vbroadcastss ymm11,DWORD PTR [rip+0xffffffffff5b236c]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  ac32d6:	5b ff 
  ac32d8:	62 d2 45 20 bc d3    	vfnmadd231ps ymm2,ymm23,ymm11
  ac32de:	c5 d4 5c ee          	vsubps ymm5,ymm5,ymm6
  ac32e2:	c5 bc 5c f3          	vsubps ymm6,ymm8,ymm3
  ac32e6:	c4 62 7d 18 05 69 24 	vbroadcastss ymm8,DWORD PTR [rip+0xffffffffff5b2469]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  ac32ed:	5b ff 
  ac32ef:	c5 bc 59 de          	vmulps ymm3,ymm8,ymm6
  ac32f3:	c4 62 7d 18 25 a4 20 	vbroadcastss ymm12,DWORD PTR [rip+0xffffffffff5b20a4]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  ac32fa:	5b ff 
  ac32fc:	c4 c2 55 b8 dc       	vfmadd231ps ymm3,ymm5,ymm12
  ac3301:	c4 41 7c 28 ea       	vmovaps ymm13,ymm10
  ac3306:	c4 62 45 a8 e9       	vfmadd213ps ymm13,ymm7,ymm1
  ac330b:	c4 42 35 bc eb       	vfnmadd231ps ymm13,ymm9,ymm11
  ac3310:	62 31 64 20 5c f4    	vsubps ymm14,ymm19,ymm20
  ac3316:	62 31 54 20 5c fe    	vsubps ymm15,ymm21,ymm22
  ac331c:	62 c1 04 28 59 c0    	vmulps ymm16,ymm15,ymm8
  ac3322:	62 c2 0d 28 b8 c4    	vfmadd231ps ymm16,ymm14,ymm12
  ac3328:	62 a1 14 28 5c c8    	vsubps ymm17,ymm13,ymm16
  ac332e:	62 c1 7c 28 28 d3    	vmovaps ymm18,ymm11
  ac3334:	62 e2 5d 28 ac d0    	vfnmadd213ps ymm18,ymm4,ymm0
  ac333a:	62 c2 45 20 b8 d2    	vfmadd231ps ymm18,ymm23,ymm10
  ac3340:	c5 bc 59 ed          	vmulps ymm5,ymm8,ymm5
  ac3344:	c4 e2 1d bc ee       	vfnmadd231ps ymm5,ymm12,ymm6
  ac3349:	c4 62 45 ac d9       	vfnmadd213ps ymm11,ymm7,ymm1
  ac334e:	c4 42 35 b8 da       	vfmadd231ps ymm11,ymm9,ymm10
  ac3353:	c4 c1 0c 59 f0       	vmulps ymm6,ymm14,ymm8
  ac3358:	c4 c2 05 bc f4       	vfnmadd231ps ymm6,ymm15,ymm12
  ac335d:	c5 24 5c c6          	vsubps ymm8,ymm11,ymm6
  ac3361:	c5 a4 58 f6          	vaddps ymm6,ymm11,ymm6
  ac3365:	62 31 14 28 58 d0    	vaddps ymm10,ymm13,ymm16
  ac336b:	c5 c4 58 c9          	vaddps ymm1,ymm7,ymm1
  ac336f:	c5 b4 58 c9          	vaddps ymm1,ymm9,ymm1
  ac3373:	c5 f8 58 c4          	vaddps xmm0,xmm0,xmm4
  ac3377:	62 b1 7c 08 58 c7    	vaddps xmm0,xmm0,xmm23
  ac337d:	c5 fc 28 25 3b 4f 5b 	vmovaps ymm4,YMMWORD PTR [rip+0xffffffffff5b4f3b]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  ac3384:	ff 
  ac3385:	62 f2 5d 28 7f c1    	vpermt2ps ymm0,ymm4,ymm1
  ac338b:	c4 e3 7d 19 c1 01    	vextractf128 xmm1,ymm0,0x1
  ac3391:	c5 f8 13 4e 10       	vmovlps QWORD PTR [rsi+0x10],xmm1
  ac3396:	c5 f8 11 06          	vmovups XMMWORD PTR [rsi],xmm0
  ac339a:	c5 e8 58 c3          	vaddps xmm0,xmm2,xmm3
  ac339e:	62 b2 5d 28 7f c1    	vpermt2ps ymm0,ymm4,ymm17
  ac33a4:	c5 f8 11 46 18       	vmovups XMMWORD PTR [rsi+0x18],xmm0
  ac33a9:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  ac33af:	c5 f8 13 46 28       	vmovlps QWORD PTR [rsi+0x28],xmm0
  ac33b4:	62 f1 6c 00 58 c5    	vaddps xmm0,xmm18,xmm5
  ac33ba:	62 d2 5d 28 7f c0    	vpermt2ps ymm0,ymm4,ymm8
  ac33c0:	c5 f8 11 46 30       	vmovups XMMWORD PTR [rsi+0x30],xmm0
  ac33c5:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  ac33cb:	c5 f8 13 46 40       	vmovlps QWORD PTR [rsi+0x40],xmm0
  ac33d0:	62 f1 6c 00 5c c5    	vsubps xmm0,xmm18,xmm5
  ac33d6:	62 f2 5d 28 7f c6    	vpermt2ps ymm0,ymm4,ymm6
  ac33dc:	c5 f8 11 46 48       	vmovups XMMWORD PTR [rsi+0x48],xmm0
  ac33e1:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  ac33e7:	c5 f8 13 46 58       	vmovlps QWORD PTR [rsi+0x58],xmm0
  ac33ec:	c5 e8 5c c3          	vsubps xmm0,xmm2,xmm3
  ac33f0:	62 d2 5d 28 7f c2    	vpermt2ps ymm0,ymm4,ymm10
  ac33f6:	c5 f8 11 46 60       	vmovups XMMWORD PTR [rsi+0x60],xmm0
  ac33fb:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  ac3401:	c5 f8 13 46 70       	vmovlps QWORD PTR [rsi+0x70],xmm0
  ac3406:	c5 f8 77             	vzeroupper
  ac3409:	c3                   	ret
