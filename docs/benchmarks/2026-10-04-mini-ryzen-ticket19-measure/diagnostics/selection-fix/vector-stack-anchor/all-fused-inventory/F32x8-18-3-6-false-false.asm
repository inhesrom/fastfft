
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000743f00 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  743f00:	c5 fc 10 07          	vmovups ymm0,YMMWORD PTR [rdi]
  743f04:	c5 f8 10 4f 20       	vmovups xmm1,XMMWORD PTR [rdi+0x20]
  743f09:	c5 fc 10 57 30       	vmovups ymm2,YMMWORD PTR [rdi+0x30]
  743f0e:	c5 f8 10 5f 50       	vmovups xmm3,XMMWORD PTR [rdi+0x50]
  743f13:	c5 fc 10 67 60       	vmovups ymm4,YMMWORD PTR [rdi+0x60]
  743f18:	c5 f8 10 af 80 00 00 	vmovups xmm5,XMMWORD PTR [rdi+0x80]
  743f1f:	00 
  743f20:	c5 fc c6 f1 88       	vshufps ymm6,ymm0,ymm1,0x88
  743f25:	c4 e3 fd 01 f6 d8    	vpermpd ymm6,ymm6,0xd8
  743f2b:	c5 ec c6 fb 88       	vshufps ymm7,ymm2,ymm3,0x88
  743f30:	c4 e3 fd 01 ff d8    	vpermpd ymm7,ymm7,0xd8
  743f36:	c5 5c c6 c5 88       	vshufps ymm8,ymm4,ymm5,0x88
  743f3b:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  743f41:	c5 fc c6 c1 dd       	vshufps ymm0,ymm0,ymm1,0xdd
  743f46:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  743f4c:	c5 ec c6 cb dd       	vshufps ymm1,ymm2,ymm3,0xdd
  743f51:	c4 e3 fd 01 d1 d8    	vpermpd ymm2,ymm1,0xd8
  743f57:	c5 dc c6 cd dd       	vshufps ymm1,ymm4,ymm5,0xdd
  743f5c:	c4 e3 fd 01 d9 d8    	vpermpd ymm3,ymm1,0xd8
  743f62:	c5 3c 58 cf          	vaddps ymm9,ymm8,ymm7
  743f66:	c5 34 58 d6          	vaddps ymm10,ymm9,ymm6
  743f6a:	c5 6c 58 db          	vaddps ymm11,ymm2,ymm3
  743f6e:	c4 e2 7d 18 25 e9 14 	vbroadcastss ymm4,DWORD PTR [rip+0xffffffffff9314e9]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  743f75:	93 ff 
  743f77:	c5 a4 58 e8          	vaddps ymm5,ymm11,ymm0
  743f7b:	c4 62 5d ac ce       	vfnmadd213ps ymm9,ymm4,ymm6
  743f80:	c4 e2 7d 18 0d 4b 13 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff93134b]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  743f87:	93 ff 
  743f89:	c5 ec 5c d3          	vsubps ymm2,ymm2,ymm3
  743f8d:	c5 ec 59 d1          	vmulps ymm2,ymm2,ymm1
  743f91:	c5 b4 58 da          	vaddps ymm3,ymm9,ymm2
  743f95:	c4 62 5d ac d8       	vfnmadd213ps ymm11,ymm4,ymm0
  743f9a:	c4 c1 44 5c c0       	vsubps ymm0,ymm7,ymm8
  743f9f:	c5 fc 59 c1          	vmulps ymm0,ymm0,ymm1
  743fa3:	c5 a4 5c e0          	vsubps ymm4,ymm11,ymm0
  743fa7:	c5 b4 5c d2          	vsubps ymm2,ymm9,ymm2
  743fab:	c5 24 58 c8          	vaddps ymm9,ymm11,ymm0
  743faf:	c5 78 29 d0          	vmovaps xmm0,xmm10
  743fb3:	c4 63 7d 19 d6 01    	vextractf128 xmm6,ymm10,0x1
  743fb9:	c5 f8 28 fb          	vmovaps xmm7,xmm3
  743fbd:	c4 c3 7d 19 d8 01    	vextractf128 xmm8,ymm3,0x1
  743fc3:	c5 78 28 d2          	vmovaps xmm10,xmm2
  743fc7:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  743fcd:	c5 cd 14 f2          	vunpcklpd ymm6,ymm6,ymm2
  743fd1:	c4 41 7d 15 da       	vunpckhpd ymm11,ymm0,ymm10
  743fd6:	c4 c1 7d 14 c2       	vunpcklpd ymm0,ymm0,ymm10
  743fdb:	c5 fa 7e db          	vmovq  xmm3,xmm3
  743fdf:	c5 c5 73 df 08       	vpsrldq ymm7,ymm7,0x8
  743fe4:	c4 41 28 57 d2       	vxorps xmm10,xmm10,xmm10
  743fe9:	c4 43 3d 0c e2 cc    	vblendps ymm12,ymm8,ymm10,0xcc
  743fef:	c5 fc c6 cb 88       	vshufps ymm1,ymm0,ymm3,0x88
  743ff4:	c5 fc 11 4c 24 b8    	vmovups YMMWORD PTR [rsp-0x48],ymm1
  743ffa:	c5 fc c6 db dd       	vshufps ymm3,ymm0,ymm3,0xdd
  743fff:	c5 a4 c6 c7 88       	vshufps ymm0,ymm11,ymm7,0x88
  744004:	c5 7c c6 c0 d8       	vshufps ymm8,ymm0,ymm0,0xd8
  744009:	c5 a4 c6 ff dd       	vshufps ymm7,ymm11,ymm7,0xdd
  74400e:	c4 41 4c c6 dc 88    	vshufps ymm11,ymm6,ymm12,0x88
  744014:	c4 c1 4c c6 f4 dd    	vshufps ymm6,ymm6,ymm12,0xdd
  74401a:	c5 f8 28 c5          	vmovaps xmm0,xmm5
  74401e:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  744024:	c5 78 28 e4          	vmovaps xmm12,xmm4
  744028:	c4 c3 7d 19 e5 01    	vextractf128 xmm13,ymm4,0x1
  74402e:	c4 41 78 28 f1       	vmovaps xmm14,xmm9
  744033:	c4 43 7d 19 c9 01    	vextractf128 xmm9,ymm9,0x1
  744039:	c4 c1 55 14 e9       	vunpcklpd ymm5,ymm5,ymm9
  74403e:	c4 41 7d 15 fe       	vunpckhpd ymm15,ymm0,ymm14
  744043:	c4 c1 7d 14 c6       	vunpcklpd ymm0,ymm0,ymm14
  744048:	c5 7a 7e cc          	vmovq  xmm9,xmm4
  74404c:	c4 c1 1d 73 dc 08    	vpsrldq ymm12,ymm12,0x8
  744052:	c4 43 15 0c ea cc    	vblendps ymm13,ymm13,ymm10,0xcc
  744058:	c4 c1 7c c6 e1 88    	vshufps ymm4,ymm0,ymm9,0x88
  74405e:	c4 41 7c c6 c9 dd    	vshufps ymm9,ymm0,ymm9,0xdd
  744064:	c4 c1 04 c6 c4 88    	vshufps ymm0,ymm15,ymm12,0x88
  74406a:	c5 7c c6 d0 d8       	vshufps ymm10,ymm0,ymm0,0xd8
  74406f:	c4 41 04 c6 f4 dd    	vshufps ymm14,ymm15,ymm12,0xdd
  744075:	c4 41 54 c6 e5 88    	vshufps ymm12,ymm5,ymm13,0x88
  74407b:	c4 41 54 c6 ed dd    	vshufps ymm13,ymm5,ymm13,0xdd
  744081:	c5 fc 10 82 80 00 00 	vmovups ymm0,YMMWORD PTR [rdx+0x80]
  744088:	00 
  744089:	c5 7c 10 ba a0 00 00 	vmovups ymm15,YMMWORD PTR [rdx+0xa0]
  744090:	00 
  744091:	c5 bc 59 e8          	vmulps ymm5,ymm8,ymm0
  744095:	c4 c2 2d bc ef       	vfnmadd231ps ymm5,ymm10,ymm15
  74409a:	c5 2c 59 d0          	vmulps ymm10,ymm10,ymm0
  74409e:	c4 c1 24 c6 c3 d8    	vshufps ymm0,ymm11,ymm11,0xd8
  7440a4:	c4 41 1c c6 dc d8    	vshufps ymm11,ymm12,ymm12,0xd8
  7440aa:	c4 42 3d b8 d7       	vfmadd231ps ymm10,ymm8,ymm15
  7440af:	c5 7c 10 a2 00 01 00 	vmovups ymm12,YMMWORD PTR [rdx+0x100]
  7440b6:	00 
  7440b7:	c5 7c 10 ba 20 01 00 	vmovups ymm15,YMMWORD PTR [rdx+0x120]
  7440be:	00 
  7440bf:	c5 1c 59 c0          	vmulps ymm8,ymm12,ymm0
  7440c3:	c4 42 25 bc c7       	vfnmadd231ps ymm8,ymm11,ymm15
  7440c8:	c4 41 1c 59 e3       	vmulps ymm12,ymm12,ymm11
  7440cd:	c5 c4 c6 cf d8       	vshufps ymm1,ymm7,ymm7,0xd8
  7440d2:	c4 41 0c c6 de d8    	vshufps ymm11,ymm14,ymm14,0xd8
  7440d8:	c4 42 7d b8 e7       	vfmadd231ps ymm12,ymm0,ymm15
  7440dd:	c5 fc 10 82 c0 00 00 	vmovups ymm0,YMMWORD PTR [rdx+0xc0]
  7440e4:	00 
  7440e5:	c5 7c 10 b2 e0 00 00 	vmovups ymm14,YMMWORD PTR [rdx+0xe0]
  7440ec:	00 
  7440ed:	c5 fc 59 f9          	vmulps ymm7,ymm0,ymm1
  7440f1:	c4 c2 25 bc fe       	vfnmadd231ps ymm7,ymm11,ymm14
  7440f6:	c5 24 59 d8          	vmulps ymm11,ymm11,ymm0
  7440fa:	c5 cc c6 c6 d8       	vshufps ymm0,ymm6,ymm6,0xd8
  7440ff:	c4 c1 14 c6 f5 d8    	vshufps ymm6,ymm13,ymm13,0xd8
  744105:	c4 42 75 b8 de       	vfmadd231ps ymm11,ymm1,ymm14
  74410a:	c5 fc 10 8a 40 01 00 	vmovups ymm1,YMMWORD PTR [rdx+0x140]
  744111:	00 
  744112:	c5 7c 10 ba 60 01 00 	vmovups ymm15,YMMWORD PTR [rdx+0x160]
  744119:	00 
  74411a:	c5 74 59 e8          	vmulps ymm13,ymm1,ymm0
  74411e:	c4 42 4d bc ef       	vfnmadd231ps ymm13,ymm6,ymm15
  744123:	c5 74 59 f6          	vmulps ymm14,ymm1,ymm6
  744127:	c5 e4 c6 cb d8       	vshufps ymm1,ymm3,ymm3,0xd8
  74412c:	c4 c1 34 c6 d9 d8    	vshufps ymm3,ymm9,ymm9,0xd8
  744132:	c4 42 7d b8 f7       	vfmadd231ps ymm14,ymm0,ymm15
  744137:	c5 fc 10 42 40       	vmovups ymm0,YMMWORD PTR [rdx+0x40]
  74413c:	c5 fc 10 72 60       	vmovups ymm6,YMMWORD PTR [rdx+0x60]
  744141:	c5 7c 59 c9          	vmulps ymm9,ymm0,ymm1
  744145:	c4 62 65 bc ce       	vfnmadd231ps ymm9,ymm3,ymm6
  74414a:	c5 fc 59 d3          	vmulps ymm2,ymm0,ymm3
  74414e:	c4 e3 7d 04 5c 24 b8 	vpermilps ymm3,YMMWORD PTR [rsp-0x48],0xd8
  744155:	d8 
  744156:	c4 e2 75 b8 d6       	vfmadd231ps ymm2,ymm1,ymm6
  74415b:	c5 3c 58 fd          	vaddps ymm15,ymm8,ymm5
  74415f:	c5 84 58 c3          	vaddps ymm0,ymm15,ymm3
  744163:	c5 fc 11 44 24 b8    	vmovups YMMWORD PTR [rsp-0x48],ymm0
  744169:	c4 e2 7d 18 35 ee 12 	vbroadcastss ymm6,DWORD PTR [rip+0xffffffffff9312ee]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  744170:	93 ff 
  744172:	c4 62 4d ac fb       	vfnmadd213ps ymm15,ymm6,ymm3
  744177:	c4 c1 14 58 c9       	vaddps ymm1,ymm13,ymm9
  74417c:	c5 c4 58 c1          	vaddps ymm0,ymm7,ymm1
  744180:	c5 fc 11 44 24 d8    	vmovups YMMWORD PTR [rsp-0x28],ymm0
  744186:	c4 e2 4d bc f9       	vfnmadd231ps ymm7,ymm6,ymm1
  74418b:	c5 dc c6 cc d8       	vshufps ymm1,ymm4,ymm4,0xd8
  744190:	c4 c1 2c 58 c4       	vaddps ymm0,ymm10,ymm12
  744195:	c5 fc 58 e1          	vaddps ymm4,ymm0,ymm1
  744199:	c4 e2 4d ac c1       	vfnmadd213ps ymm0,ymm6,ymm1
  74419e:	c5 fc 28 de          	vmovaps ymm3,ymm6
  7441a2:	c5 8c 58 ca          	vaddps ymm1,ymm14,ymm2
  7441a6:	c5 a4 58 f1          	vaddps ymm6,ymm11,ymm1
  7441aa:	c4 62 75 bc db       	vfnmadd231ps ymm11,ymm1,ymm3
  7441af:	c4 c1 2c 5c cc       	vsubps ymm1,ymm10,ymm12
  7441b4:	c5 8c 5c d2          	vsubps ymm2,ymm14,ymm2
  7441b8:	c4 62 7d 18 25 13 11 	vbroadcastss ymm12,DWORD PTR [rip+0xffffffffff931113]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  7441bf:	93 ff 
  7441c1:	c5 1c 59 d1          	vmulps ymm10,ymm12,ymm1
  7441c5:	c4 41 54 5c c0       	vsubps ymm8,ymm5,ymm8
  7441ca:	c4 c1 04 58 ca       	vaddps ymm1,ymm15,ymm10
  7441cf:	c5 9c 59 d2          	vmulps ymm2,ymm12,ymm2
  7441d3:	c4 41 14 5c c9       	vsubps ymm9,ymm13,ymm9
  7441d8:	c5 c4 58 ea          	vaddps ymm5,ymm7,ymm2
  7441dc:	c4 41 3c 59 c4       	vmulps ymm8,ymm8,ymm12
  7441e1:	c4 41 34 59 f4       	vmulps ymm14,ymm9,ymm12
  7441e6:	c4 41 7c 5c c8       	vsubps ymm9,ymm0,ymm8
  7441eb:	c4 41 04 5c ea       	vsubps ymm13,ymm15,ymm10
  7441f0:	c4 41 24 5c e6       	vsubps ymm12,ymm11,ymm14
  7441f5:	c5 c4 5c fa          	vsubps ymm7,ymm7,ymm2
  7441f9:	c5 3c 58 c0          	vaddps ymm8,ymm8,ymm0
  7441fd:	c4 41 24 58 d6       	vaddps ymm10,ymm11,ymm14
  744202:	c5 d8 58 c6          	vaddps xmm0,xmm4,xmm6
  744206:	c5 fc 10 5c 24 b8    	vmovups ymm3,YMMWORD PTR [rsp-0x48]
  74420c:	c5 7c 10 74 24 d8    	vmovups ymm14,YMMWORD PTR [rsp-0x28]
  744212:	c5 88 58 d3          	vaddps xmm2,xmm14,xmm3
  744216:	c5 68 14 d8          	vunpcklps xmm11,xmm2,xmm0
  74421a:	c5 e8 15 c0          	vunpckhps xmm0,xmm2,xmm0
  74421e:	c5 f8 13 46 10       	vmovlps QWORD PTR [rsi+0x10],xmm0
  744223:	c5 78 11 1e          	vmovups XMMWORD PTR [rsi],xmm11
  744227:	c4 c1 30 5c c4       	vsubps xmm0,xmm9,xmm12
  74422c:	c5 f0 5c d5          	vsubps xmm2,xmm1,xmm5
  744230:	c5 68 14 d8          	vunpcklps xmm11,xmm2,xmm0
  744234:	c5 e8 15 c0          	vunpckhps xmm0,xmm2,xmm0
  744238:	c5 f8 13 46 28       	vmovlps QWORD PTR [rsi+0x28],xmm0
  74423d:	c5 78 11 5e 18       	vmovups XMMWORD PTR [rsi+0x18],xmm11
  744242:	c4 c1 38 58 c2       	vaddps xmm0,xmm8,xmm10
  744247:	c5 90 58 d7          	vaddps xmm2,xmm13,xmm7
  74424b:	c5 68 14 d8          	vunpcklps xmm11,xmm2,xmm0
  74424f:	c5 e8 15 c0          	vunpckhps xmm0,xmm2,xmm0
  744253:	c5 f8 13 46 40       	vmovlps QWORD PTR [rsi+0x40],xmm0
  744258:	c5 78 11 5e 30       	vmovups XMMWORD PTR [rsi+0x30],xmm11
  74425d:	c5 d8 5c c6          	vsubps xmm0,xmm4,xmm6
  744261:	c4 c1 60 5c d6       	vsubps xmm2,xmm3,xmm14
  744266:	c5 e8 14 d8          	vunpcklps xmm3,xmm2,xmm0
  74426a:	c5 e8 15 c0          	vunpckhps xmm0,xmm2,xmm0
  74426e:	c5 f8 13 46 58       	vmovlps QWORD PTR [rsi+0x58],xmm0
  744273:	c5 f8 11 5e 48       	vmovups XMMWORD PTR [rsi+0x48],xmm3
  744278:	c4 c1 30 58 c4       	vaddps xmm0,xmm9,xmm12
  74427d:	c5 f0 58 cd          	vaddps xmm1,xmm1,xmm5
  744281:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  744285:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  744289:	c5 f8 13 46 70       	vmovlps QWORD PTR [rsi+0x70],xmm0
  74428e:	c5 f8 11 56 60       	vmovups XMMWORD PTR [rsi+0x60],xmm2
  744293:	c4 c1 38 5c c2       	vsubps xmm0,xmm8,xmm10
  744298:	c5 90 5c cf          	vsubps xmm1,xmm13,xmm7
  74429c:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  7442a0:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  7442a4:	c5 f8 13 86 88 00 00 	vmovlps QWORD PTR [rsi+0x88],xmm0
  7442ab:	00 
  7442ac:	c5 f8 11 56 78       	vmovups XMMWORD PTR [rsi+0x78],xmm2
  7442b1:	c5 f8 77             	vzeroupper
  7442b4:	c3                   	ret
