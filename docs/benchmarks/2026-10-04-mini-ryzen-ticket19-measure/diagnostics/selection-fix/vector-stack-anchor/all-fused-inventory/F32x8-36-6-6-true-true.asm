
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000006edf00 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  6edf00:	48 81 ec 88 00 00 00 	sub    rsp,0x88
  6edf07:	48 c1 e2 05          	shl    rdx,0x5
  6edf0b:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  6edf0f:	31 d2                	xor    edx,edx
  6edf11:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  6edf18:	0f 1f 84 00 00 00 00 
  6edf1f:	00 
  6edf20:	c5 fc 10 2c 17       	vmovups ymm5,YMMWORD PTR [rdi+rdx*1]
  6edf25:	c5 f8 10 7c 17 20    	vmovups xmm7,XMMWORD PTR [rdi+rdx*1+0x20]
  6edf2b:	c5 7c 10 44 17 30    	vmovups ymm8,YMMWORD PTR [rdi+rdx*1+0x30]
  6edf31:	c5 f8 10 44 17 50    	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x50]
  6edf37:	c5 7c 10 4c 17 60    	vmovups ymm9,YMMWORD PTR [rdi+rdx*1+0x60]
  6edf3d:	c5 78 10 94 17 80 00 	vmovups xmm10,XMMWORD PTR [rdi+rdx*1+0x80]
  6edf44:	00 00 
  6edf46:	c5 7c 10 a4 17 90 00 	vmovups ymm12,YMMWORD PTR [rdi+rdx*1+0x90]
  6edf4d:	00 00 
  6edf4f:	c5 78 10 ac 17 b0 00 	vmovups xmm13,XMMWORD PTR [rdi+rdx*1+0xb0]
  6edf56:	00 00 
  6edf58:	c5 7c 10 bc 17 c0 00 	vmovups ymm15,YMMWORD PTR [rdi+rdx*1+0xc0]
  6edf5f:	00 00 
  6edf61:	c5 f8 10 8c 17 e0 00 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0xe0]
  6edf68:	00 00 
  6edf6a:	c5 fc 10 9c 17 f0 00 	vmovups ymm3,YMMWORD PTR [rdi+rdx*1+0xf0]
  6edf71:	00 00 
  6edf73:	c5 f8 10 94 17 10 01 	vmovups xmm2,XMMWORD PTR [rdi+rdx*1+0x110]
  6edf7a:	00 00 
  6edf7c:	c5 d4 c6 e7 dd       	vshufps ymm4,ymm5,ymm7,0xdd
  6edf81:	c4 e3 fd 01 e4 d8    	vpermpd ymm4,ymm4,0xd8
  6edf87:	c5 fc 11 64 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm4
  6edf8d:	c4 c1 34 c6 e2 dd    	vshufps ymm4,ymm9,ymm10,0xdd
  6edf93:	c4 e3 fd 01 e4 d8    	vpermpd ymm4,ymm4,0xd8
  6edf99:	c5 fc 11 24 24       	vmovups YMMWORD PTR [rsp],ymm4
  6edf9e:	c5 84 c6 e1 dd       	vshufps ymm4,ymm15,ymm1,0xdd
  6edfa3:	c4 e3 fd 01 e4 d8    	vpermpd ymm4,ymm4,0xd8
  6edfa9:	c5 fc 11 64 24 e0    	vmovups YMMWORD PTR [rsp-0x20],ymm4
  6edfaf:	c4 41 1c c6 dd dd    	vshufps ymm11,ymm12,ymm13,0xdd
  6edfb5:	c4 43 fd 01 db d8    	vpermpd ymm11,ymm11,0xd8
  6edfbb:	c5 54 c6 f7 88       	vshufps ymm14,ymm5,ymm7,0x88
  6edfc0:	c5 e4 c6 ea dd       	vshufps ymm5,ymm3,ymm2,0xdd
  6edfc5:	c4 e3 fd 01 e5 d8    	vpermpd ymm4,ymm5,0xd8
  6edfcb:	c5 fc 11 64 24 20    	vmovups YMMWORD PTR [rsp+0x20],ymm4
  6edfd1:	c4 41 34 c6 ca 88    	vshufps ymm9,ymm9,ymm10,0x88
  6edfd7:	c5 fc 28 e8          	vmovaps ymm5,ymm0
  6edfdb:	c5 bc c6 f8 dd       	vshufps ymm7,ymm8,ymm0,0xdd
  6edfe0:	c4 e3 fd 01 c7 d8    	vpermpd ymm0,ymm7,0xd8
  6edfe6:	c5 fc 11 44 24 40    	vmovups YMMWORD PTR [rsp+0x40],ymm0
  6edfec:	c4 43 fd 01 f6 d8    	vpermpd ymm14,ymm14,0xd8
  6edff2:	c4 c3 fd 01 f1 d8    	vpermpd ymm6,ymm9,0xd8
  6edff8:	c5 84 c6 c9 88       	vshufps ymm1,ymm15,ymm1,0x88
  6edffd:	c4 e3 fd 01 c9 d8    	vpermpd ymm1,ymm1,0xd8
  6ee003:	c4 41 1c c6 cd 88    	vshufps ymm9,ymm12,ymm13,0x88
  6ee009:	c4 43 fd 01 e1 d8    	vpermpd ymm12,ymm9,0xd8
  6ee00f:	c5 e4 c6 d2 88       	vshufps ymm2,ymm3,ymm2,0x88
  6ee014:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  6ee01a:	c5 bc c6 dd 88       	vshufps ymm3,ymm8,ymm5,0x88
  6ee01f:	c4 63 fd 01 fb d8    	vpermpd ymm15,ymm3,0xd8
  6ee025:	c5 7c 10 04 24       	vmovups ymm8,YMMWORD PTR [rsp]
  6ee02a:	c5 fc 10 7c 24 e0    	vmovups ymm7,YMMWORD PTR [rsp-0x20]
  6ee030:	c5 3c 58 d7          	vaddps ymm10,ymm8,ymm7
  6ee034:	c5 7c 10 6c 24 80    	vmovups ymm13,YMMWORD PTR [rsp-0x80]
  6ee03a:	c4 c1 2c 58 ed       	vaddps ymm5,ymm10,ymm13
  6ee03f:	c5 fc 11 6c 24 60    	vmovups YMMWORD PTR [rsp+0x60],ymm5
  6ee045:	c5 5c 58 c8          	vaddps ymm9,ymm4,ymm0
  6ee049:	c4 c1 34 58 c3       	vaddps ymm0,ymm9,ymm11
  6ee04e:	c5 fc 11 44 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm0
  6ee054:	c4 e2 7d 18 1d 03 74 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff987403]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6ee05b:	98 ff 
  6ee05d:	c4 42 65 ac d5       	vfnmadd213ps ymm10,ymm3,ymm13
  6ee062:	c5 4c 58 e9          	vaddps ymm13,ymm6,ymm1
  6ee066:	c5 cc 5c f1          	vsubps ymm6,ymm6,ymm1
  6ee06a:	c5 d4 58 c8          	vaddps ymm1,ymm5,ymm0
  6ee06e:	c5 fc 11 4c 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm1
  6ee074:	c4 42 65 ac cb       	vfnmadd213ps ymm9,ymm3,ymm11
  6ee079:	c5 84 58 ca          	vaddps ymm1,ymm15,ymm2
  6ee07d:	c4 c1 6c 5c d7       	vsubps ymm2,ymm2,ymm15
  6ee082:	c4 41 14 58 de       	vaddps ymm11,ymm13,ymm14
  6ee087:	c4 42 65 ac ee       	vfnmadd213ps ymm13,ymm3,ymm14
  6ee08c:	c5 fc 28 eb          	vmovaps ymm5,ymm3
  6ee090:	c5 1c 58 f1          	vaddps ymm14,ymm12,ymm1
  6ee094:	c5 3c 5c ff          	vsubps ymm15,ymm8,ymm7
  6ee098:	c4 c1 24 58 de       	vaddps ymm3,ymm11,ymm14
  6ee09d:	c5 fc 11 5c 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm3
  6ee0a3:	c4 e2 7d 18 25 28 72 	vbroadcastss ymm4,DWORD PTR [rip+0xffffffffff987228]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6ee0aa:	98 ff 
  6ee0ac:	c5 cc 59 c4          	vmulps ymm0,ymm6,ymm4
  6ee0b0:	c4 c2 55 ac cc       	vfnmadd213ps ymm1,ymm5,ymm12
  6ee0b5:	c5 2c 58 e0          	vaddps ymm12,ymm10,ymm0
  6ee0b9:	c5 ec 59 d4          	vmulps ymm2,ymm2,ymm4
  6ee0bd:	c5 fc 10 5c 24 20    	vmovups ymm3,YMMWORD PTR [rsp+0x20]
  6ee0c3:	c5 e4 5c 6c 24 40    	vsubps ymm5,ymm3,YMMWORD PTR [rsp+0x40]
  6ee0c9:	c5 b4 58 fa          	vaddps ymm7,ymm9,ymm2
  6ee0cd:	c5 2c 5c d0          	vsubps ymm10,ymm10,ymm0
  6ee0d1:	c5 9c 5c df          	vsubps ymm3,ymm12,ymm7
  6ee0d5:	c5 04 59 fc          	vmulps ymm15,ymm15,ymm4
  6ee0d9:	c5 b4 5c d2          	vsubps ymm2,ymm9,ymm2
  6ee0dd:	c4 41 14 5c cf       	vsubps ymm9,ymm13,ymm15
  6ee0e2:	c5 d4 59 ec          	vmulps ymm5,ymm5,ymm4
  6ee0e6:	c4 41 04 58 ed       	vaddps ymm13,ymm15,ymm13
  6ee0eb:	c5 f4 5c c5          	vsubps ymm0,ymm1,ymm5
  6ee0ef:	c5 d4 58 e9          	vaddps ymm5,ymm5,ymm1
  6ee0f3:	c5 34 5c f8          	vsubps ymm15,ymm9,ymm0
  6ee0f7:	c5 fc 10 4c 24 60    	vmovups ymm1,YMMWORD PTR [rsp+0x60]
  6ee0fd:	c5 f4 5c 74 24 a0    	vsubps ymm6,ymm1,YMMWORD PTR [rsp-0x60]
  6ee103:	c5 ac 58 ca          	vaddps ymm1,ymm10,ymm2
  6ee107:	c4 c1 24 5c e6       	vsubps ymm4,ymm11,ymm14
  6ee10c:	c5 14 58 dd          	vaddps ymm11,ymm13,ymm5
  6ee110:	c5 9c 58 ff          	vaddps ymm7,ymm12,ymm7
  6ee114:	c5 34 58 f0          	vaddps ymm14,ymm9,ymm0
  6ee118:	c5 ac 5c c2          	vsubps ymm0,ymm10,ymm2
  6ee11c:	c5 14 5c ed          	vsubps ymm13,ymm13,ymm5
  6ee120:	c5 fc 10 54 24 c0    	vmovups ymm2,YMMWORD PTR [rsp-0x40]
  6ee126:	c4 e3 6d 18 ef 01    	vinsertf128 ymm5,ymm2,xmm7,0x1
  6ee12c:	c4 e3 6d 06 d7 31    	vperm2f128 ymm2,ymm2,ymm7,0x31
  6ee132:	c4 e3 65 18 f8 01    	vinsertf128 ymm7,ymm3,xmm0,0x1
  6ee138:	c4 e3 65 06 c0 31    	vperm2f128 ymm0,ymm3,ymm0,0x31
  6ee13e:	c5 ec 14 c0          	vunpcklps ymm0,ymm2,ymm0
  6ee142:	c5 78 28 c1          	vmovaps xmm8,xmm1
  6ee146:	c5 78 28 ce          	vmovaps xmm9,xmm6
  6ee14a:	c5 d4 14 df          	vunpcklps ymm3,ymm5,ymm7
  6ee14e:	c4 41 3c 14 d1       	vunpcklps ymm10,ymm8,ymm9
  6ee153:	c4 c1 65 14 d2       	vunpcklpd ymm2,ymm3,ymm10
  6ee158:	c4 c1 65 15 da       	vunpckhpd ymm3,ymm3,ymm10
  6ee15d:	c5 d4 15 ef          	vunpckhps ymm5,ymm5,ymm7
  6ee161:	c4 c1 3c 15 f9       	vunpckhps ymm7,ymm8,ymm9
  6ee166:	c5 55 14 cf          	vunpcklpd ymm9,ymm5,ymm7
  6ee16a:	c5 d5 15 ef          	vunpckhpd ymm5,ymm5,ymm7
  6ee16e:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  6ee174:	c4 e3 7d 19 f6 01    	vextractf128 xmm6,ymm6,0x1
  6ee17a:	c5 f4 14 ce          	vunpcklps ymm1,ymm1,ymm6
  6ee17e:	c5 7d 14 d1          	vunpcklpd ymm10,ymm0,ymm1
  6ee182:	c5 fd 15 f1          	vunpckhpd ymm6,ymm0,ymm1
  6ee186:	c5 fc 10 44 24 80    	vmovups ymm0,YMMWORD PTR [rsp-0x80]
  6ee18c:	c4 c3 7d 18 ce 01    	vinsertf128 ymm1,ymm0,xmm14,0x1
  6ee192:	c4 c3 7d 06 c6 31    	vperm2f128 ymm0,ymm0,ymm14,0x31
  6ee198:	c4 c3 05 18 fd 01    	vinsertf128 ymm7,ymm15,xmm13,0x1
  6ee19e:	c4 43 05 06 c5 31    	vperm2f128 ymm8,ymm15,ymm13,0x31
  6ee1a4:	c4 41 7c 14 f0       	vunpcklps ymm14,ymm0,ymm8
  6ee1a9:	c4 41 78 28 e3       	vmovaps xmm12,xmm11
  6ee1ae:	c5 78 28 ec          	vmovaps xmm13,xmm4
  6ee1b2:	c5 74 14 c7          	vunpcklps ymm8,ymm1,ymm7
  6ee1b6:	c4 41 1c 14 fd       	vunpcklps ymm15,ymm12,ymm13
  6ee1bb:	c4 c1 3d 14 c7       	vunpcklpd ymm0,ymm8,ymm15
  6ee1c0:	c5 fc 11 44 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm0
  6ee1c6:	c4 41 3d 15 c7       	vunpckhpd ymm8,ymm8,ymm15
  6ee1cb:	c5 f4 15 cf          	vunpckhps ymm1,ymm1,ymm7
  6ee1cf:	c4 c1 1c 15 fd       	vunpckhps ymm7,ymm12,ymm13
  6ee1d4:	c5 75 14 ef          	vunpcklpd ymm13,ymm1,ymm7
  6ee1d8:	c5 75 15 e7          	vunpckhpd ymm12,ymm1,ymm7
  6ee1dc:	c4 63 7d 19 d9 01    	vextractf128 xmm1,ymm11,0x1
  6ee1e2:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  6ee1e8:	c5 f4 14 cc          	vunpcklps ymm1,ymm1,ymm4
  6ee1ec:	c5 0d 14 f9          	vunpcklpd ymm15,ymm14,ymm1
  6ee1f0:	c5 0d 15 d9          	vunpckhpd ymm11,ymm14,ymm1
  6ee1f4:	c5 fc 10 89 80 00 00 	vmovups ymm1,YMMWORD PTR [rcx+0x80]
  6ee1fb:	00 
  6ee1fc:	c5 fc 10 a1 a0 00 00 	vmovups ymm4,YMMWORD PTR [rcx+0xa0]
  6ee203:	00 
  6ee204:	c5 b4 59 f9          	vmulps ymm7,ymm9,ymm1
  6ee208:	c4 e2 15 bc fc       	vfnmadd231ps ymm7,ymm13,ymm4
  6ee20d:	c5 14 59 f1          	vmulps ymm14,ymm13,ymm1
  6ee211:	c5 fc 10 89 00 01 00 	vmovups ymm1,YMMWORD PTR [rcx+0x100]
  6ee218:	00 
  6ee219:	c4 62 35 b8 f4       	vfmadd231ps ymm14,ymm9,ymm4
  6ee21e:	c5 fc 10 a1 20 01 00 	vmovups ymm4,YMMWORD PTR [rcx+0x120]
  6ee225:	00 
  6ee226:	c5 2c 59 e9          	vmulps ymm13,ymm10,ymm1
  6ee22a:	c4 62 05 bc ec       	vfnmadd231ps ymm13,ymm15,ymm4
  6ee22f:	c5 04 59 f9          	vmulps ymm15,ymm15,ymm1
  6ee233:	c5 fc 10 89 c0 00 00 	vmovups ymm1,YMMWORD PTR [rcx+0xc0]
  6ee23a:	00 
  6ee23b:	c4 62 2d b8 fc       	vfmadd231ps ymm15,ymm10,ymm4
  6ee240:	c5 fc 10 a1 e0 00 00 	vmovups ymm4,YMMWORD PTR [rcx+0xe0]
  6ee247:	00 
  6ee248:	c5 74 59 d5          	vmulps ymm10,ymm1,ymm5
  6ee24c:	c4 62 1d bc d4       	vfnmadd231ps ymm10,ymm12,ymm4
  6ee251:	c5 1c 59 c9          	vmulps ymm9,ymm12,ymm1
  6ee255:	c5 fc 10 89 40 01 00 	vmovups ymm1,YMMWORD PTR [rcx+0x140]
  6ee25c:	00 
  6ee25d:	c4 62 55 b8 cc       	vfmadd231ps ymm9,ymm5,ymm4
  6ee262:	c5 fc 10 a1 60 01 00 	vmovups ymm4,YMMWORD PTR [rcx+0x160]
  6ee269:	00 
  6ee26a:	c5 f4 59 ee          	vmulps ymm5,ymm1,ymm6
  6ee26e:	c4 e2 25 bc ec       	vfnmadd231ps ymm5,ymm11,ymm4
  6ee273:	c5 a4 59 c9          	vmulps ymm1,ymm11,ymm1
  6ee277:	c5 7c 10 61 40       	vmovups ymm12,YMMWORD PTR [rcx+0x40]
  6ee27c:	c4 e2 4d b8 cc       	vfmadd231ps ymm1,ymm6,ymm4
  6ee281:	c5 fc 10 61 60       	vmovups ymm4,YMMWORD PTR [rcx+0x60]
  6ee286:	c5 1c 59 db          	vmulps ymm11,ymm12,ymm3
  6ee28a:	c4 62 3d bc dc       	vfnmadd231ps ymm11,ymm8,ymm4
  6ee28f:	c4 41 1c 59 c0       	vmulps ymm8,ymm12,ymm8
  6ee294:	c5 94 58 f7          	vaddps ymm6,ymm13,ymm7
  6ee298:	c4 62 65 b8 c4       	vfmadd231ps ymm8,ymm3,ymm4
  6ee29d:	c5 cc 58 c2          	vaddps ymm0,ymm6,ymm2
  6ee2a1:	c5 fc 11 44 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm0
  6ee2a7:	c5 a4 58 e5          	vaddps ymm4,ymm11,ymm5
  6ee2ab:	c4 e2 7d 18 05 ac 71 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff9871ac]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6ee2b2:	98 ff 
  6ee2b4:	c4 e2 7d ac f2       	vfnmadd213ps ymm6,ymm0,ymm2
  6ee2b9:	c4 41 0c 58 e7       	vaddps ymm12,ymm14,ymm15
  6ee2be:	c4 41 0c 5c f7       	vsubps ymm14,ymm14,ymm15
  6ee2c3:	c5 ac 58 d4          	vaddps ymm2,ymm10,ymm4
  6ee2c7:	c5 fc 11 54 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm2
  6ee2cd:	c4 62 7d bc d4       	vfnmadd231ps ymm10,ymm0,ymm4
  6ee2d2:	c5 bc 58 e1          	vaddps ymm4,ymm8,ymm1
  6ee2d6:	c4 c1 74 5c c8       	vsubps ymm1,ymm1,ymm8
  6ee2db:	c5 fc 10 54 24 80    	vmovups ymm2,YMMWORD PTR [rsp-0x80]
  6ee2e1:	c5 1c 58 c2          	vaddps ymm8,ymm12,ymm2
  6ee2e5:	c4 62 7d ac e2       	vfnmadd213ps ymm12,ymm0,ymm2
  6ee2ea:	c4 c1 44 5c d5       	vsubps ymm2,ymm7,ymm13
  6ee2ef:	c5 34 58 ec          	vaddps ymm13,ymm9,ymm4
  6ee2f3:	c4 e2 7d 18 1d d8 6f 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff986fd8]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6ee2fa:	98 ff 
  6ee2fc:	c5 8c 59 fb          	vmulps ymm7,ymm14,ymm3
  6ee300:	c4 62 7d bc cc       	vfnmadd231ps ymm9,ymm0,ymm4
  6ee305:	c5 cc 58 e7          	vaddps ymm4,ymm6,ymm7
  6ee309:	c5 f4 59 cb          	vmulps ymm1,ymm1,ymm3
  6ee30d:	c4 c1 54 5c eb       	vsubps ymm5,ymm5,ymm11
  6ee312:	c5 2c 58 f1          	vaddps ymm14,ymm10,ymm1
  6ee316:	c5 4c 5c ff          	vsubps ymm15,ymm6,ymm7
  6ee31a:	c4 41 5c 5c de       	vsubps ymm11,ymm4,ymm14
  6ee31f:	c5 ec 59 c3          	vmulps ymm0,ymm2,ymm3
  6ee323:	c5 ac 5c c9          	vsubps ymm1,ymm10,ymm1
  6ee327:	c5 9c 5c f8          	vsubps ymm7,ymm12,ymm0
  6ee32b:	c5 d4 59 eb          	vmulps ymm5,ymm5,ymm3
  6ee32f:	c5 9c 58 c0          	vaddps ymm0,ymm12,ymm0
  6ee333:	c5 34 5c d5          	vsubps ymm10,ymm9,ymm5
  6ee337:	c5 b4 58 ed          	vaddps ymm5,ymm9,ymm5
  6ee33b:	c4 41 44 5c e2       	vsubps ymm12,ymm7,ymm10
  6ee340:	c5 8c 58 f4          	vaddps ymm6,ymm14,ymm4
  6ee344:	c5 04 58 f1          	vaddps ymm14,ymm15,ymm1
  6ee348:	c5 ac 58 ff          	vaddps ymm7,ymm10,ymm7
  6ee34c:	c5 7c 58 d5          	vaddps ymm10,ymm0,ymm5
  6ee350:	c5 84 5c e1          	vsubps ymm4,ymm15,ymm1
  6ee354:	c5 fc 10 54 24 c0    	vmovups ymm2,YMMWORD PTR [rsp-0x40]
  6ee35a:	c5 fc 10 5c 24 a0    	vmovups ymm3,YMMWORD PTR [rsp-0x60]
  6ee360:	c5 6c 5c cb          	vsubps ymm9,ymm2,ymm3
  6ee364:	c5 fc 5c ed          	vsubps ymm5,ymm0,ymm5
  6ee368:	c4 c1 3c 5c c5       	vsubps ymm0,ymm8,ymm13
  6ee36d:	c4 c1 3c 58 cd       	vaddps ymm1,ymm8,ymm13
  6ee372:	c5 ec 58 d3          	vaddps ymm2,ymm2,ymm3
  6ee376:	c5 f4 14 da          	vunpcklps ymm3,ymm1,ymm2
  6ee37a:	c5 70 14 c2          	vunpcklps xmm8,xmm1,xmm2
  6ee37e:	c5 f0 15 ca          	vunpckhps xmm1,xmm1,xmm2
  6ee382:	c5 f8 11 4c 16 10    	vmovups XMMWORD PTR [rsi+rdx*1+0x10],xmm1
  6ee388:	c5 78 11 04 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm8
  6ee38d:	c4 e3 7d 19 5c 16 20 	vextractf128 XMMWORD PTR [rsi+rdx*1+0x20],ymm3,0x1
  6ee394:	01 
  6ee395:	c4 c1 1c 14 cb       	vunpcklps ymm1,ymm12,ymm11
  6ee39a:	c4 c1 18 14 d3       	vunpcklps xmm2,xmm12,xmm11
  6ee39f:	c4 c1 18 15 db       	vunpckhps xmm3,xmm12,xmm11
  6ee3a4:	c5 f8 11 5c 16 40    	vmovups XMMWORD PTR [rsi+rdx*1+0x40],xmm3
  6ee3aa:	c5 f8 11 54 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm2
  6ee3b0:	c4 e3 7d 19 4c 16 50 	vextractf128 XMMWORD PTR [rsi+rdx*1+0x50],ymm1,0x1
  6ee3b7:	01 
  6ee3b8:	c4 c1 2c 14 ce       	vunpcklps ymm1,ymm10,ymm14
  6ee3bd:	c4 c1 28 14 d6       	vunpcklps xmm2,xmm10,xmm14
  6ee3c2:	c4 c1 28 15 de       	vunpckhps xmm3,xmm10,xmm14
  6ee3c7:	c5 f8 11 5c 16 70    	vmovups XMMWORD PTR [rsi+rdx*1+0x70],xmm3
  6ee3cd:	c5 f8 11 54 16 60    	vmovups XMMWORD PTR [rsi+rdx*1+0x60],xmm2
  6ee3d3:	c4 e3 7d 19 8c 16 80 	vextractf128 XMMWORD PTR [rsi+rdx*1+0x80],ymm1,0x1
  6ee3da:	00 00 00 01 
  6ee3de:	c4 c1 7c 14 c9       	vunpcklps ymm1,ymm0,ymm9
  6ee3e3:	c4 c1 78 14 d1       	vunpcklps xmm2,xmm0,xmm9
  6ee3e8:	c4 c1 78 15 c1       	vunpckhps xmm0,xmm0,xmm9
  6ee3ed:	c5 f8 11 84 16 a0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xa0],xmm0
  6ee3f4:	00 00 
  6ee3f6:	c5 f8 11 94 16 90 00 	vmovups XMMWORD PTR [rsi+rdx*1+0x90],xmm2
  6ee3fd:	00 00 
  6ee3ff:	c4 e3 7d 19 8c 16 b0 	vextractf128 XMMWORD PTR [rsi+rdx*1+0xb0],ymm1,0x1
  6ee406:	00 00 00 01 
  6ee40a:	c5 c4 14 c6          	vunpcklps ymm0,ymm7,ymm6
  6ee40e:	c5 c0 14 ce          	vunpcklps xmm1,xmm7,xmm6
  6ee412:	c5 c0 15 d6          	vunpckhps xmm2,xmm7,xmm6
  6ee416:	c5 f8 11 94 16 d0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xd0],xmm2
  6ee41d:	00 00 
  6ee41f:	c5 f8 11 8c 16 c0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xc0],xmm1
  6ee426:	00 00 
  6ee428:	c4 e3 7d 19 84 16 e0 	vextractf128 XMMWORD PTR [rsi+rdx*1+0xe0],ymm0,0x1
  6ee42f:	00 00 00 01 
  6ee433:	c5 d4 14 c4          	vunpcklps ymm0,ymm5,ymm4
  6ee437:	c5 d0 14 cc          	vunpcklps xmm1,xmm5,xmm4
  6ee43b:	c5 d0 15 d4          	vunpckhps xmm2,xmm5,xmm4
  6ee43f:	c5 f8 11 94 16 00 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x100],xmm2
  6ee446:	00 00 
  6ee448:	c5 f8 11 8c 16 f0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xf0],xmm1
  6ee44f:	00 00 
  6ee451:	c4 e3 7d 19 84 16 10 	vextractf128 XMMWORD PTR [rsi+rdx*1+0x110],ymm0,0x1
  6ee458:	01 00 00 01 
  6ee45c:	48 81 c2 20 01 00 00 	add    rdx,0x120
  6ee463:	48 39 d0             	cmp    rax,rdx
  6ee466:	0f 85 b4 fa ff ff    	jne    6edf20 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle+0x20>
  6ee46c:	48 81 c4 88 00 00 00 	add    rsp,0x88
  6ee473:	c5 f8 77             	vzeroupper
  6ee476:	c3                   	ret
