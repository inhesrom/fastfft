
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b04f80 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  b04f80:	48 c1 e2 06          	shl    rdx,0x6
  b04f84:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  b04f88:	c4 e2 7d 18 05 cf 04 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff5704cf]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  b04f8f:	57 ff 
  b04f91:	31 d2                	xor    edx,edx
  b04f93:	c4 e2 7d 18 0d 38 03 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff570338]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  b04f9a:	57 ff 
  b04f9c:	c5 fc 28 15 3c 22 57 	vmovaps ymm2,YMMWORD PTR [rip+0xffffffffff57223c]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  b04fa3:	ff 
  b04fa4:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  b04fab:	00 00 00 00 00 
  b04fb0:	c5 fc 10 1c 17       	vmovups ymm3,YMMWORD PTR [rdi+rdx*1]
  b04fb5:	c5 f8 10 64 17 20    	vmovups xmm4,XMMWORD PTR [rdi+rdx*1+0x20]
  b04fbb:	c5 e4 c6 ec dd       	vshufps ymm5,ymm3,ymm4,0xdd
  b04fc0:	c4 e3 fd 01 ed d8    	vpermpd ymm5,ymm5,0xd8
  b04fc6:	c5 fc 10 7c 17 60    	vmovups ymm7,YMMWORD PTR [rdi+rdx*1+0x60]
  b04fcc:	c5 78 10 84 17 80 00 	vmovups xmm8,XMMWORD PTR [rdi+rdx*1+0x80]
  b04fd3:	00 00 
  b04fd5:	c4 c1 44 c6 f0 dd    	vshufps ymm6,ymm7,ymm8,0xdd
  b04fdb:	c4 63 fd 01 ce d8    	vpermpd ymm9,ymm6,0xd8
  b04fe1:	c4 41 54 5c d1       	vsubps ymm10,ymm5,ymm9
  b04fe6:	c5 7c 10 9c 17 90 00 	vmovups ymm11,YMMWORD PTR [rdi+rdx*1+0x90]
  b04fed:	00 00 
  b04fef:	c5 78 10 a4 17 b0 00 	vmovups xmm12,XMMWORD PTR [rdi+rdx*1+0xb0]
  b04ff6:	00 00 
  b04ff8:	c4 c1 24 c6 f4 88    	vshufps ymm6,ymm11,ymm12,0x88
  b04ffe:	c4 63 fd 01 ee d8    	vpermpd ymm13,ymm6,0xd8
  b05004:	c5 7c 10 74 17 30    	vmovups ymm14,YMMWORD PTR [rdi+rdx*1+0x30]
  b0500a:	c5 78 10 7c 17 50    	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x50]
  b05010:	c4 c1 0c c6 f7 88    	vshufps ymm6,ymm14,ymm15,0x88
  b05016:	62 e3 fd 28 01 c6 d8 	vpermpd ymm16,ymm6,0xd8
  b0501d:	62 a1 14 28 5c c8    	vsubps ymm17,ymm13,ymm16
  b05023:	62 b1 2c 28 5c f1    	vsubps ymm6,ymm10,ymm17
  b05029:	c5 e4 c6 dc 88       	vshufps ymm3,ymm3,ymm4,0x88
  b0502e:	c4 e3 fd 01 db d8    	vpermpd ymm3,ymm3,0xd8
  b05034:	c4 c1 44 c6 e0 88    	vshufps ymm4,ymm7,ymm8,0x88
  b0503a:	c4 e3 fd 01 e4 d8    	vpermpd ymm4,ymm4,0xd8
  b05040:	c5 e4 5c fc          	vsubps ymm7,ymm3,ymm4
  b05044:	c4 41 0c c6 c7 dd    	vshufps ymm8,ymm14,ymm15,0xdd
  b0504a:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  b05050:	c4 41 24 c6 dc dd    	vshufps ymm11,ymm11,ymm12,0xdd
  b05056:	c4 43 fd 01 db d8    	vpermpd ymm11,ymm11,0xd8
  b0505c:	c4 41 3c 5c e3       	vsubps ymm12,ymm8,ymm11
  b05061:	c4 41 44 5c f4       	vsubps ymm14,ymm7,ymm12
  b05066:	c5 b4 58 ed          	vaddps ymm5,ymm9,ymm5
  b0506a:	c4 41 3c 58 c3       	vaddps ymm8,ymm8,ymm11
  b0506f:	c4 41 54 5c d8       	vsubps ymm11,ymm5,ymm8
  b05074:	c5 e4 58 dc          	vaddps ymm3,ymm3,ymm4
  b05078:	62 d1 7c 20 58 e5    	vaddps ymm4,ymm16,ymm13
  b0507e:	c5 64 5c cc          	vsubps ymm9,ymm3,ymm4
  b05082:	62 51 74 20 58 d2    	vaddps ymm10,ymm17,ymm10
  b05088:	c5 9c 58 ff          	vaddps ymm7,ymm12,ymm7
  b0508c:	c5 3c 58 e5          	vaddps ymm12,ymm8,ymm5
  b05090:	c5 e4 58 dc          	vaddps ymm3,ymm3,ymm4
  b05094:	c5 f8 28 e3          	vmovaps xmm4,xmm3
  b05098:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  b0509e:	c5 f8 28 ef          	vmovaps xmm5,xmm7
  b050a2:	c4 e3 7d 19 ff 01    	vextractf128 xmm7,ymm7,0x1
  b050a8:	c4 41 78 28 c1       	vmovaps xmm8,xmm9
  b050ad:	c4 43 7d 19 c9 01    	vextractf128 xmm9,ymm9,0x1
  b050b3:	c4 41 65 14 e9       	vunpcklpd ymm13,ymm3,ymm9
  b050b8:	c5 78 29 f3          	vmovaps xmm3,xmm14
  b050bc:	c4 43 7d 19 f1 01    	vextractf128 xmm9,ymm14,0x1
  b050c2:	c4 41 45 14 f1       	vunpcklpd ymm14,ymm7,ymm9
  b050c7:	c4 c1 5d 15 f8       	vunpckhpd ymm7,ymm4,ymm8
  b050cc:	c4 c1 5d 14 e0       	vunpcklpd ymm4,ymm4,ymm8
  b050d1:	c5 55 15 c3          	vunpckhpd ymm8,ymm5,ymm3
  b050d5:	c5 d5 14 eb          	vunpcklpd ymm5,ymm5,ymm3
  b050d9:	c5 dc c6 dd 88       	vshufps ymm3,ymm4,ymm5,0x88
  b050de:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  b050e3:	c5 dc c6 e5 dd       	vshufps ymm4,ymm4,ymm5,0xdd
  b050e8:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  b050ed:	c4 c1 44 c6 e8 88    	vshufps ymm5,ymm7,ymm8,0x88
  b050f3:	c5 54 c6 cd d8       	vshufps ymm9,ymm5,ymm5,0xd8
  b050f8:	c4 c1 44 c6 e8 dd    	vshufps ymm5,ymm7,ymm8,0xdd
  b050fe:	c5 d4 c6 fd d8       	vshufps ymm7,ymm5,ymm5,0xd8
  b05103:	c4 c1 14 c6 ee 88    	vshufps ymm5,ymm13,ymm14,0x88
  b05109:	c5 54 c6 c5 d8       	vshufps ymm8,ymm5,ymm5,0xd8
  b0510e:	c4 c1 14 c6 ee dd    	vshufps ymm5,ymm13,ymm14,0xdd
  b05114:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  b05119:	c4 41 78 28 ec       	vmovaps xmm13,xmm12
  b0511e:	c4 43 7d 19 e4 01    	vextractf128 xmm12,ymm12,0x1
  b05124:	c4 41 78 28 f2       	vmovaps xmm14,xmm10
  b05129:	c4 43 7d 19 d2 01    	vextractf128 xmm10,ymm10,0x1
  b0512f:	c4 41 78 28 fb       	vmovaps xmm15,xmm11
  b05134:	c4 43 7d 19 db 01    	vextractf128 xmm11,ymm11,0x1
  b0513a:	c4 41 1d 14 e3       	vunpcklpd ymm12,ymm12,ymm11
  b0513f:	c5 78 28 de          	vmovaps xmm11,xmm6
  b05143:	c4 e3 7d 19 f6 01    	vextractf128 xmm6,ymm6,0x1
  b05149:	c5 2d 14 d6          	vunpcklpd ymm10,ymm10,ymm6
  b0514d:	62 c1 95 28 15 c7    	vunpckhpd ymm16,ymm13,ymm15
  b05153:	c4 41 15 14 ef       	vunpcklpd ymm13,ymm13,ymm15
  b05158:	c4 41 0d 15 fb       	vunpckhpd ymm15,ymm14,ymm11
  b0515d:	c4 41 0d 14 db       	vunpcklpd ymm11,ymm14,ymm11
  b05162:	c4 c1 14 c6 f3 88    	vshufps ymm6,ymm13,ymm11,0x88
  b05168:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  b0516d:	c4 41 14 c6 db dd    	vshufps ymm11,ymm13,ymm11,0xdd
  b05173:	c4 41 24 c6 db d8    	vshufps ymm11,ymm11,ymm11,0xd8
  b05179:	62 51 7c 20 c6 ef 88 	vshufps ymm13,ymm16,ymm15,0x88
  b05180:	c4 41 14 c6 ed d8    	vshufps ymm13,ymm13,ymm13,0xd8
  b05186:	62 51 7c 20 c6 f7 dd 	vshufps ymm14,ymm16,ymm15,0xdd
  b0518d:	c4 41 0c c6 f6 d8    	vshufps ymm14,ymm14,ymm14,0xd8
  b05193:	c4 41 1c c6 fa 88    	vshufps ymm15,ymm12,ymm10,0x88
  b05199:	c4 41 04 c6 ff d8    	vshufps ymm15,ymm15,ymm15,0xd8
  b0519f:	c4 41 1c c6 d2 dd    	vshufps ymm10,ymm12,ymm10,0xdd
  b051a5:	c4 41 2c c6 e2 d8    	vshufps ymm12,ymm10,ymm10,0xd8
  b051ab:	62 e1 7c 28 10 41 04 	vmovups ymm16,YMMWORD PTR [rcx+0x80]
  b051b2:	62 e1 7c 28 10 49 05 	vmovups ymm17,YMMWORD PTR [rcx+0xa0]
  b051b9:	62 31 34 28 59 d0    	vmulps ymm10,ymm9,ymm16
  b051bf:	62 32 15 28 bc d1    	vfnmadd231ps ymm10,ymm13,ymm17
  b051c5:	62 31 14 28 59 e8    	vmulps ymm13,ymm13,ymm16
  b051cb:	62 e1 7c 28 10 41 08 	vmovups ymm16,YMMWORD PTR [rcx+0x100]
  b051d2:	62 32 35 28 b8 e9    	vfmadd231ps ymm13,ymm9,ymm17
  b051d8:	c5 7c 10 89 20 01 00 	vmovups ymm9,YMMWORD PTR [rcx+0x120]
  b051df:	00 
  b051e0:	62 a1 3c 28 59 c8    	vmulps ymm17,ymm8,ymm16
  b051e6:	62 c2 05 28 bc c9    	vfnmadd231ps ymm17,ymm15,ymm9
  b051ec:	62 31 04 28 59 f8    	vmulps ymm15,ymm15,ymm16
  b051f2:	62 e1 7c 28 10 41 06 	vmovups ymm16,YMMWORD PTR [rcx+0xc0]
  b051f9:	c4 42 3d b8 f9       	vfmadd231ps ymm15,ymm8,ymm9
  b051fe:	c5 7c 10 81 e0 00 00 	vmovups ymm8,YMMWORD PTR [rcx+0xe0]
  b05205:	00 
  b05206:	62 31 44 28 59 c8    	vmulps ymm9,ymm7,ymm16
  b0520c:	c4 42 0d bc c8       	vfnmadd231ps ymm9,ymm14,ymm8
  b05211:	62 31 0c 28 59 f0    	vmulps ymm14,ymm14,ymm16
  b05217:	62 e1 7c 28 10 41 0a 	vmovups ymm16,YMMWORD PTR [rcx+0x140]
  b0521e:	c4 42 45 b8 f0       	vfmadd231ps ymm14,ymm7,ymm8
  b05223:	c5 fc 10 b9 60 01 00 	vmovups ymm7,YMMWORD PTR [rcx+0x160]
  b0522a:	00 
  b0522b:	62 31 54 28 59 c0    	vmulps ymm8,ymm5,ymm16
  b05231:	c4 62 1d bc c7       	vfnmadd231ps ymm8,ymm12,ymm7
  b05236:	62 31 1c 28 59 e0    	vmulps ymm12,ymm12,ymm16
  b0523c:	62 e1 7c 28 10 41 02 	vmovups ymm16,YMMWORD PTR [rcx+0x40]
  b05243:	c4 62 55 b8 e7       	vfmadd231ps ymm12,ymm5,ymm7
  b05248:	c5 fc 10 69 60       	vmovups ymm5,YMMWORD PTR [rcx+0x60]
  b0524d:	62 b1 5c 28 59 f8    	vmulps ymm7,ymm4,ymm16
  b05253:	c4 e2 25 bc fd       	vfnmadd231ps ymm7,ymm11,ymm5
  b05258:	62 31 24 28 59 d8    	vmulps ymm11,ymm11,ymm16
  b0525e:	62 a1 2c 28 58 c1    	vaddps ymm16,ymm10,ymm17
  b05264:	c4 62 5d b8 dd       	vfmadd231ps ymm11,ymm4,ymm5
  b05269:	62 b1 64 28 58 e0    	vaddps ymm4,ymm3,ymm16
  b0526f:	c5 bc 58 ef          	vaddps ymm5,ymm8,ymm7
  b05273:	62 e2 7d 28 ac c3    	vfnmadd213ps ymm16,ymm0,ymm3
  b05279:	c4 c1 14 58 df       	vaddps ymm3,ymm13,ymm15
  b0527e:	c4 41 14 5c ef       	vsubps ymm13,ymm13,ymm15
  b05283:	c5 34 58 fd          	vaddps ymm15,ymm9,ymm5
  b05287:	c4 62 7d bc cd       	vfnmadd231ps ymm9,ymm0,ymm5
  b0528c:	c4 c1 1c 58 eb       	vaddps ymm5,ymm12,ymm11
  b05291:	c4 41 1c 5c db       	vsubps ymm11,ymm12,ymm11
  b05296:	c5 64 58 e6          	vaddps ymm12,ymm3,ymm6
  b0529a:	c4 e2 7d ac de       	vfnmadd213ps ymm3,ymm0,ymm6
  b0529f:	62 b1 2c 28 5c f1    	vsubps ymm6,ymm10,ymm17
  b052a5:	c5 0c 58 d5          	vaddps ymm10,ymm14,ymm5
  b052a9:	c4 62 7d bc f5       	vfnmadd231ps ymm14,ymm0,ymm5
  b052ae:	c5 94 59 e9          	vmulps ymm5,ymm13,ymm1
  b052b2:	c5 bc 5c ff          	vsubps ymm7,ymm8,ymm7
  b052b6:	62 71 7c 20 58 c5    	vaddps ymm8,ymm16,ymm5
  b052bc:	c5 24 59 d9          	vmulps ymm11,ymm11,ymm1
  b052c0:	62 f1 7c 20 5c ed    	vsubps ymm5,ymm16,ymm5
  b052c6:	c4 41 34 58 eb       	vaddps ymm13,ymm9,ymm11
  b052cb:	c5 cc 59 f1          	vmulps ymm6,ymm6,ymm1
  b052cf:	c4 41 34 5c cb       	vsubps ymm9,ymm9,ymm11
  b052d4:	c5 64 5c de          	vsubps ymm11,ymm3,ymm6
  b052d8:	c5 c4 59 f9          	vmulps ymm7,ymm7,ymm1
  b052dc:	c5 cc 58 db          	vaddps ymm3,ymm6,ymm3
  b052e0:	c5 8c 5c f7          	vsubps ymm6,ymm14,ymm7
  b052e4:	c5 8c 58 ff          	vaddps ymm7,ymm14,ymm7
  b052e8:	c5 24 5c f6          	vsubps ymm14,ymm11,ymm6
  b052ec:	c5 a4 58 f6          	vaddps ymm6,ymm11,ymm6
  b052f0:	c5 64 58 df          	vaddps ymm11,ymm3,ymm7
  b052f4:	c5 e4 5c df          	vsubps ymm3,ymm3,ymm7
  b052f8:	c4 c1 1c 5c fa       	vsubps ymm7,ymm12,ymm10
  b052fd:	c4 41 1c 58 d2       	vaddps ymm10,ymm12,ymm10
  b05302:	c5 00 58 e4          	vaddps xmm12,xmm15,xmm4
  b05306:	62 52 6d 28 7f e2    	vpermt2ps ymm12,ymm2,ymm10
  b0530c:	c5 7c 11 24 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm12
  b05311:	c4 41 38 5c d5       	vsubps xmm10,xmm8,xmm13
  b05316:	62 52 6d 28 7f d6    	vpermt2ps ymm10,ymm2,ymm14
  b0531c:	c5 7c 11 54 16 20    	vmovups YMMWORD PTR [rsi+rdx*1+0x20],ymm10
  b05322:	c5 30 58 d5          	vaddps xmm10,xmm9,xmm5
  b05326:	62 52 6d 28 7f d3    	vpermt2ps ymm10,ymm2,ymm11
  b0532c:	c5 7c 11 54 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm10
  b05332:	c4 c1 58 5c e7       	vsubps xmm4,xmm4,xmm15
  b05337:	62 f2 6d 28 7f e7    	vpermt2ps ymm4,ymm2,ymm7
  b0533d:	c5 fc 11 64 16 60    	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm4
  b05343:	c4 c1 38 58 e5       	vaddps xmm4,xmm8,xmm13
  b05348:	62 f2 6d 28 7f e6    	vpermt2ps ymm4,ymm2,ymm6
  b0534e:	c5 fc 11 a4 16 80 00 	vmovups YMMWORD PTR [rsi+rdx*1+0x80],ymm4
  b05355:	00 00 
  b05357:	c4 c1 50 5c e1       	vsubps xmm4,xmm5,xmm9
  b0535c:	62 f2 6d 28 7f e3    	vpermt2ps ymm4,ymm2,ymm3
  b05362:	c5 fc 11 a4 16 a0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xa0],ymm4
  b05369:	00 00 
  b0536b:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  b05372:	48 39 d0             	cmp    rax,rdx
  b05375:	0f 85 35 fc ff ff    	jne    b04fb0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x30>
  b0537b:	c5 f8 77             	vzeroupper
  b0537e:	c3                   	ret
