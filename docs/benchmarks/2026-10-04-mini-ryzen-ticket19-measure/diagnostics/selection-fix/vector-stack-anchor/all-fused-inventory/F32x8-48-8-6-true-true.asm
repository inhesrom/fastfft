
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000702f00 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  702f00:	48 83 ec 68          	sub    rsp,0x68
  702f04:	48 c1 e2 07          	shl    rdx,0x7
  702f08:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  702f0c:	31 d2                	xor    edx,edx
  702f0e:	66 90                	xchg   ax,ax
  702f10:	c5 fc 10 1c 17       	vmovups ymm3,YMMWORD PTR [rdi+rdx*1]
  702f15:	c5 f8 10 6c 17 20    	vmovups xmm5,XMMWORD PTR [rdi+rdx*1+0x20]
  702f1b:	c5 fc 10 7c 17 30    	vmovups ymm7,YMMWORD PTR [rdi+rdx*1+0x30]
  702f21:	c5 78 10 4c 17 50    	vmovups xmm9,XMMWORD PTR [rdi+rdx*1+0x50]
  702f27:	c5 fc 10 64 17 60    	vmovups ymm4,YMMWORD PTR [rdi+rdx*1+0x60]
  702f2d:	c5 78 10 a4 17 80 00 	vmovups xmm12,XMMWORD PTR [rdi+rdx*1+0x80]
  702f34:	00 00 
  702f36:	c5 7c 10 84 17 90 00 	vmovups ymm8,YMMWORD PTR [rdi+rdx*1+0x90]
  702f3d:	00 00 
  702f3f:	c5 78 10 94 17 b0 00 	vmovups xmm10,XMMWORD PTR [rdi+rdx*1+0xb0]
  702f46:	00 00 
  702f48:	c5 fc 10 8c 17 c0 00 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0xc0]
  702f4f:	00 00 
  702f51:	c5 f8 10 94 17 e0 00 	vmovups xmm2,XMMWORD PTR [rdi+rdx*1+0xe0]
  702f58:	00 00 
  702f5a:	c5 7c 10 9c 17 f0 00 	vmovups ymm11,YMMWORD PTR [rdi+rdx*1+0xf0]
  702f61:	00 00 
  702f63:	c5 78 10 ac 17 10 01 	vmovups xmm13,XMMWORD PTR [rdi+rdx*1+0x110]
  702f6a:	00 00 
  702f6c:	c5 fc 10 b4 17 20 01 	vmovups ymm6,YMMWORD PTR [rdi+rdx*1+0x120]
  702f73:	00 00 
  702f75:	c5 78 10 bc 17 40 01 	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x140]
  702f7c:	00 00 
  702f7e:	c5 fc 10 84 17 50 01 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x150]
  702f85:	00 00 
  702f87:	c5 64 c6 f5 dd       	vshufps ymm14,ymm3,ymm5,0xdd
  702f8c:	c5 e4 c6 dd 88       	vshufps ymm3,ymm3,ymm5,0x88
  702f91:	c5 fc 11 5c 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm3
  702f97:	c5 f4 c6 da dd       	vshufps ymm3,ymm1,ymm2,0xdd
  702f9c:	c5 f4 c6 ca 88       	vshufps ymm1,ymm1,ymm2,0x88
  702fa1:	c5 fc 11 4c 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm1
  702fa7:	c4 c1 5c c6 cc dd    	vshufps ymm1,ymm4,ymm12,0xdd
  702fad:	c5 fc 11 4c 24 e0    	vmovups YMMWORD PTR [rsp-0x20],ymm1
  702fb3:	c4 c1 5c c6 ec 88    	vshufps ymm5,ymm4,ymm12,0x88
  702fb9:	c4 c1 4c c6 cf dd    	vshufps ymm1,ymm6,ymm15,0xdd
  702fbf:	c5 fc 11 4c 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm1
  702fc5:	c4 c1 4c c6 d7 88    	vshufps ymm2,ymm6,ymm15,0x88
  702fcb:	c4 c1 44 c6 f1 dd    	vshufps ymm6,ymm7,ymm9,0xdd
  702fd1:	c4 41 44 c6 f9 88    	vshufps ymm15,ymm7,ymm9,0x88
  702fd7:	c4 c1 24 c6 cd dd    	vshufps ymm1,ymm11,ymm13,0xdd
  702fdd:	c4 41 24 c6 dd 88    	vshufps ymm11,ymm11,ymm13,0x88
  702fe3:	c4 c1 3c c6 e2 dd    	vshufps ymm4,ymm8,ymm10,0xdd
  702fe9:	c5 fc 11 24 24       	vmovups YMMWORD PTR [rsp],ymm4
  702fee:	c4 41 3c c6 ea 88    	vshufps ymm13,ymm8,ymm10,0x88
  702ff4:	c5 f8 10 a4 17 70 01 	vmovups xmm4,XMMWORD PTR [rdi+rdx*1+0x170]
  702ffb:	00 00 
  702ffd:	c5 7c c6 e4 dd       	vshufps ymm12,ymm0,ymm4,0xdd
  703002:	c5 fc c6 e4 88       	vshufps ymm4,ymm0,ymm4,0x88
  703007:	c4 c3 fd 01 c6 d8    	vpermpd ymm0,ymm14,0xd8
  70300d:	c4 e3 fd 01 db d8    	vpermpd ymm3,ymm3,0xd8
  703013:	c5 7c 58 c3          	vaddps ymm8,ymm0,ymm3
  703017:	c5 fc 5c c3          	vsubps ymm0,ymm0,ymm3
  70301b:	c5 fc 11 44 24 40    	vmovups YMMWORD PTR [rsp+0x40],ymm0
  703021:	c4 e3 fd 01 c5 d8    	vpermpd ymm0,ymm5,0xd8
  703027:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  70302d:	c5 7c 58 ca          	vaddps ymm9,ymm0,ymm2
  703031:	c5 fc 5c c2          	vsubps ymm0,ymm0,ymm2
  703035:	c5 fc 11 44 24 20    	vmovups YMMWORD PTR [rsp+0x20],ymm0
  70303b:	c4 e3 fd 01 d6 d8    	vpermpd ymm2,ymm6,0xd8
  703041:	c4 e3 fd 01 c9 d8    	vpermpd ymm1,ymm1,0xd8
  703047:	c5 ec 58 f1          	vaddps ymm6,ymm2,ymm1
  70304b:	c5 ec 5c d1          	vsubps ymm2,ymm2,ymm1
  70304f:	c4 c3 fd 01 df d8    	vpermpd ymm3,ymm15,0xd8
  703055:	c4 c3 fd 01 eb d8    	vpermpd ymm5,ymm11,0xd8
  70305b:	c5 e4 58 fd          	vaddps ymm7,ymm3,ymm5
  70305f:	c5 e4 5c dd          	vsubps ymm3,ymm3,ymm5
  703063:	c4 c3 fd 01 ed d8    	vpermpd ymm5,ymm13,0xd8
  703069:	c4 e3 fd 01 e4 d8    	vpermpd ymm4,ymm4,0xd8
  70306f:	c5 d4 58 cc          	vaddps ymm1,ymm5,ymm4
  703073:	c5 d4 5c e4          	vsubps ymm4,ymm5,ymm4
  703077:	c4 e3 fd 01 2c 24 d8 	vpermpd ymm5,YMMWORD PTR [rsp],0xd8
  70307e:	c4 43 fd 01 dc d8    	vpermpd ymm11,ymm12,0xd8
  703084:	c5 24 58 e5          	vaddps ymm12,ymm11,ymm5
  703088:	c4 c1 54 5c eb       	vsubps ymm5,ymm5,ymm11
  70308d:	c4 63 fd 01 5c 24 a0 	vpermpd ymm11,YMMWORD PTR [rsp-0x60],0xd8
  703094:	d8 
  703095:	c4 63 fd 01 6c 24 80 	vpermpd ymm13,YMMWORD PTR [rsp-0x80],0xd8
  70309c:	d8 
  70309d:	c4 41 24 58 f5       	vaddps ymm14,ymm11,ymm13
  7030a2:	c4 41 24 5c dd       	vsubps ymm11,ymm11,ymm13
  7030a7:	c4 63 fd 01 6c 24 e0 	vpermpd ymm13,YMMWORD PTR [rsp-0x20],0xd8
  7030ae:	d8 
  7030af:	c4 63 fd 01 7c 24 c0 	vpermpd ymm15,YMMWORD PTR [rsp-0x40],0xd8
  7030b6:	d8 
  7030b7:	c4 c1 14 58 c7       	vaddps ymm0,ymm13,ymm15
  7030bc:	c4 41 04 5c ed       	vsubps ymm13,ymm15,ymm13
  7030c1:	c5 6c 58 d3          	vaddps ymm10,ymm2,ymm3
  7030c5:	c5 7c 11 54 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm10
  7030cb:	c5 e4 5c d2          	vsubps ymm2,ymm3,ymm2
  7030cf:	c5 dc 5c dd          	vsubps ymm3,ymm4,ymm5
  7030d3:	c5 fc 11 5c 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm3
  7030d9:	c5 d4 58 e4          	vaddps ymm4,ymm5,ymm4
  7030dd:	c5 3c 58 d0          	vaddps ymm10,ymm8,ymm0
  7030e1:	c5 bc 5c c0          	vsubps ymm0,ymm8,ymm0
  7030e5:	c5 fc 11 44 24 e0    	vmovups YMMWORD PTR [rsp-0x20],ymm0
  7030eb:	c5 44 58 c1          	vaddps ymm8,ymm7,ymm1
  7030ef:	c5 c4 5c c1          	vsubps ymm0,ymm7,ymm1
  7030f3:	c5 fc 11 44 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm0
  7030f9:	c4 c1 0c 58 f9       	vaddps ymm7,ymm14,ymm9
  7030fe:	c4 c1 0c 5c c1       	vsubps ymm0,ymm14,ymm9
  703103:	c5 fc 11 04 24       	vmovups YMMWORD PTR [rsp],ymm0
  703108:	c5 1c 58 f6          	vaddps ymm14,ymm12,ymm6
  70310c:	c5 1c 5c fe          	vsubps ymm15,ymm12,ymm6
  703110:	c5 fc 10 44 24 40    	vmovups ymm0,YMMWORD PTR [rsp+0x40]
  703116:	c5 fc 10 4c 24 20    	vmovups ymm1,YMMWORD PTR [rsp+0x20]
  70311c:	c5 7c 58 e1          	vaddps ymm12,ymm0,ymm1
  703120:	c5 7c 5c c9          	vsubps ymm9,ymm0,ymm1
  703124:	c4 e2 7d 18 05 6f 22 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff97226f]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  70312b:	97 ff 
  70312d:	c5 ec 59 d0          	vmulps ymm2,ymm2,ymm0
  703131:	c5 dc 59 e0          	vmulps ymm4,ymm4,ymm0
  703135:	c5 ec 5c dc          	vsubps ymm3,ymm2,ymm4
  703139:	c5 ec 58 f4          	vaddps ymm6,ymm2,ymm4
  70313d:	c4 c1 14 58 cb       	vaddps ymm1,ymm13,ymm11
  703142:	c4 c1 24 5c ed       	vsubps ymm5,ymm11,ymm13
  703147:	c5 7c 59 5c 24 a0    	vmulps ymm11,ymm0,YMMWORD PTR [rsp-0x60]
  70314d:	c5 7c 59 6c 24 80    	vmulps ymm13,ymm0,YMMWORD PTR [rsp-0x80]
  703153:	c4 c1 24 58 c5       	vaddps ymm0,ymm11,ymm13
  703158:	c4 41 14 5c db       	vsubps ymm11,ymm13,ymm11
  70315d:	c4 c1 2c 58 e6       	vaddps ymm4,ymm10,ymm14
  703162:	c4 41 2c 5c d6       	vsubps ymm10,ymm10,ymm14
  703167:	c5 bc 58 d7          	vaddps ymm2,ymm8,ymm7
  70316b:	c5 fc 11 54 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm2
  703171:	c4 c1 44 5c d0       	vsubps ymm2,ymm7,ymm8
  703176:	c5 fc 11 54 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm2
  70317c:	c5 9c 58 d0          	vaddps ymm2,ymm12,ymm0
  703180:	c5 1c 5c c0          	vsubps ymm8,ymm12,ymm0
  703184:	c5 74 58 f3          	vaddps ymm14,ymm1,ymm3
  703188:	c5 f4 5c cb          	vsubps ymm1,ymm1,ymm3
  70318c:	c5 fc 10 44 24 e0    	vmovups ymm0,YMMWORD PTR [rsp-0x20]
  703192:	c5 fc 10 7c 24 c0    	vmovups ymm7,YMMWORD PTR [rsp-0x40]
  703198:	c5 fc 58 df          	vaddps ymm3,ymm0,ymm7
  70319c:	c5 7c 5c e7          	vsubps ymm12,ymm0,ymm7
  7031a0:	c5 fc 10 04 24       	vmovups ymm0,YMMWORD PTR [rsp]
  7031a5:	c5 84 58 f8          	vaddps ymm7,ymm15,ymm0
  7031a9:	c4 41 7c 5c ef       	vsubps ymm13,ymm0,ymm15
  7031ae:	c5 b4 58 c6          	vaddps ymm0,ymm9,ymm6
  7031b2:	c5 b4 5c f6          	vsubps ymm6,ymm9,ymm6
  7031b6:	c5 24 58 cd          	vaddps ymm9,ymm11,ymm5
  7031ba:	c4 41 54 5c fb       	vsubps ymm15,ymm5,ymm11
  7031bf:	c4 c3 5d 18 ea 01    	vinsertf128 ymm5,ymm4,xmm10,0x1
  7031c5:	c4 c3 5d 06 e2 31    	vperm2f128 ymm4,ymm4,ymm10,0x31
  7031cb:	c4 43 6d 18 d0 01    	vinsertf128 ymm10,ymm2,xmm8,0x1
  7031d1:	c4 c3 6d 06 d0 31    	vperm2f128 ymm2,ymm2,ymm8,0x31
  7031d7:	c4 43 65 18 c4 01    	vinsertf128 ymm8,ymm3,xmm12,0x1
  7031dd:	c4 c3 65 06 dc 31    	vperm2f128 ymm3,ymm3,ymm12,0x31
  7031e3:	c5 dd 14 e3          	vunpcklpd ymm4,ymm4,ymm3
  7031e7:	c4 e3 7d 18 de 01    	vinsertf128 ymm3,ymm0,xmm6,0x1
  7031ed:	c4 e3 7d 06 c6 31    	vperm2f128 ymm0,ymm0,ymm6,0x31
  7031f3:	c5 ed 14 c0          	vunpcklpd ymm0,ymm2,ymm0
  7031f7:	c4 c1 55 15 d0       	vunpckhpd ymm2,ymm5,ymm8
  7031fc:	c4 c1 55 14 e8       	vunpcklpd ymm5,ymm5,ymm8
  703201:	c5 ad 15 f3          	vunpckhpd ymm6,ymm10,ymm3
  703205:	c5 2d 14 c3          	vunpcklpd ymm8,ymm10,ymm3
  703209:	c4 c1 54 c6 d8 88    	vshufps ymm3,ymm5,ymm8,0x88
  70320f:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  703214:	c5 fc 11 5c 24 e0    	vmovups YMMWORD PTR [rsp-0x20],ymm3
  70321a:	c4 c1 54 c6 e8 dd    	vshufps ymm5,ymm5,ymm8,0xdd
  703220:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  703225:	c5 6c c6 c6 88       	vshufps ymm8,ymm2,ymm6,0x88
  70322a:	c4 41 3c c6 e0 d8    	vshufps ymm12,ymm8,ymm8,0xd8
  703230:	c5 ec c6 d6 dd       	vshufps ymm2,ymm2,ymm6,0xdd
  703235:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  70323a:	c5 fc 11 54 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm2
  703240:	c5 dc c6 f0 88       	vshufps ymm6,ymm4,ymm0,0x88
  703245:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  70324a:	c5 dc c6 c0 dd       	vshufps ymm0,ymm4,ymm0,0xdd
  70324f:	c5 7c c6 c0 d8       	vshufps ymm8,ymm0,ymm0,0xd8
  703254:	c5 fc 10 54 24 a0    	vmovups ymm2,YMMWORD PTR [rsp-0x60]
  70325a:	c5 fc 10 5c 24 80    	vmovups ymm3,YMMWORD PTR [rsp-0x80]
  703260:	c4 e3 6d 18 c3 01    	vinsertf128 ymm0,ymm2,xmm3,0x1
  703266:	c4 e3 6d 06 e3 31    	vperm2f128 ymm4,ymm2,ymm3,0x31
  70326c:	c4 63 0d 18 d1 01    	vinsertf128 ymm10,ymm14,xmm1,0x1
  703272:	c4 e3 0d 06 c9 31    	vperm2f128 ymm1,ymm14,ymm1,0x31
  703278:	c4 43 45 18 dd 01    	vinsertf128 ymm11,ymm7,xmm13,0x1
  70327e:	c4 c3 45 06 fd 31    	vperm2f128 ymm7,ymm7,ymm13,0x31
  703284:	c5 5d 14 ef          	vunpcklpd ymm13,ymm4,ymm7
  703288:	c4 c3 35 18 e7 01    	vinsertf128 ymm4,ymm9,xmm15,0x1
  70328e:	c4 c3 35 06 ff 31    	vperm2f128 ymm7,ymm9,ymm15,0x31
  703294:	c5 f5 14 cf          	vunpcklpd ymm1,ymm1,ymm7
  703298:	c4 c1 7d 15 fb       	vunpckhpd ymm7,ymm0,ymm11
  70329d:	c4 c1 7d 14 c3       	vunpcklpd ymm0,ymm0,ymm11
  7032a2:	c5 2d 15 cc          	vunpckhpd ymm9,ymm10,ymm4
  7032a6:	c5 2d 14 d4          	vunpcklpd ymm10,ymm10,ymm4
  7032aa:	c4 c1 7c c6 e2 88    	vshufps ymm4,ymm0,ymm10,0x88
  7032b0:	c5 dc c6 dc d8       	vshufps ymm3,ymm4,ymm4,0xd8
  7032b5:	c5 fc 11 5c 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm3
  7032bb:	c4 c1 7c c6 c2 dd    	vshufps ymm0,ymm0,ymm10,0xdd
  7032c1:	c5 7c c6 d8 d8       	vshufps ymm11,ymm0,ymm0,0xd8
  7032c6:	c4 c1 44 c6 c1 88    	vshufps ymm0,ymm7,ymm9,0x88
  7032cc:	c5 7c c6 d0 d8       	vshufps ymm10,ymm0,ymm0,0xd8
  7032d1:	c4 c1 44 c6 c1 dd    	vshufps ymm0,ymm7,ymm9,0xdd
  7032d7:	c5 fc c6 f8 d8       	vshufps ymm7,ymm0,ymm0,0xd8
  7032dc:	c5 94 c6 c1 88       	vshufps ymm0,ymm13,ymm1,0x88
  7032e1:	c5 7c c6 f0 d8       	vshufps ymm14,ymm0,ymm0,0xd8
  7032e6:	c5 94 c6 c1 dd       	vshufps ymm0,ymm13,ymm1,0xdd
  7032eb:	c5 fc c6 d0 d8       	vshufps ymm2,ymm0,ymm0,0xd8
  7032f0:	c5 7c 10 79 40       	vmovups ymm15,YMMWORD PTR [rcx+0x40]
  7032f5:	c5 fc 10 89 80 00 00 	vmovups ymm1,YMMWORD PTR [rcx+0x80]
  7032fc:	00 
  7032fd:	c5 7c 10 a9 a0 00 00 	vmovups ymm13,YMMWORD PTR [rcx+0xa0]
  703304:	00 
  703305:	c5 1c 59 c9          	vmulps ymm9,ymm12,ymm1
  703309:	c4 42 2d bc cd       	vfnmadd231ps ymm9,ymm10,ymm13
  70330e:	c5 2c 59 d1          	vmulps ymm10,ymm10,ymm1
  703312:	c5 fc 10 89 20 01 00 	vmovups ymm1,YMMWORD PTR [rcx+0x120]
  703319:	00 
  70331a:	c4 42 1d b8 d5       	vfmadd231ps ymm10,ymm12,ymm13
  70331f:	c5 7c 10 a9 00 01 00 	vmovups ymm13,YMMWORD PTR [rcx+0x100]
  703326:	00 
  703327:	c5 14 59 e6          	vmulps ymm12,ymm13,ymm6
  70332b:	c4 62 0d bc e1       	vfnmadd231ps ymm12,ymm14,ymm1
  703330:	c4 41 14 59 ee       	vmulps ymm13,ymm13,ymm14
  703335:	c4 62 4d b8 e9       	vfmadd231ps ymm13,ymm6,ymm1
  70333a:	c5 fc 10 b1 60 01 00 	vmovups ymm6,YMMWORD PTR [rcx+0x160]
  703341:	00 
  703342:	c5 fc 10 89 40 01 00 	vmovups ymm1,YMMWORD PTR [rcx+0x140]
  703349:	00 
  70334a:	c5 74 59 f2          	vmulps ymm14,ymm1,ymm2
  70334e:	c4 62 3d b8 f6       	vfmadd231ps ymm14,ymm8,ymm6
  703353:	c5 bc 59 c9          	vmulps ymm1,ymm8,ymm1
  703357:	c5 fc 10 41 60       	vmovups ymm0,YMMWORD PTR [rcx+0x60]
  70335c:	c4 e2 6d bc ce       	vfnmadd231ps ymm1,ymm2,ymm6
  703361:	c4 c1 34 5c d4       	vsubps ymm2,ymm9,ymm12
  703366:	c4 e2 7d 18 25 65 1f 	vbroadcastss ymm4,DWORD PTR [rip+0xffffffffff971f65]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  70336d:	97 ff 
  70336f:	c5 ec 59 e4          	vmulps ymm4,ymm2,ymm4
  703373:	c4 41 04 59 c3       	vmulps ymm8,ymm15,ymm11
  703378:	c4 62 55 b8 c0       	vfmadd231ps ymm8,ymm5,ymm0
  70337d:	c5 04 59 fd          	vmulps ymm15,ymm15,ymm5
  703381:	c5 fc 10 91 e0 00 00 	vmovups ymm2,YMMWORD PTR [rcx+0xe0]
  703388:	00 
  703389:	c4 62 25 bc f8       	vfnmadd231ps ymm15,ymm11,ymm0
  70338e:	c5 fc 10 81 c0 00 00 	vmovups ymm0,YMMWORD PTR [rcx+0xc0]
  703395:	00 
  703396:	c5 fc 59 f7          	vmulps ymm6,ymm0,ymm7
  70339a:	c5 fc 10 6c 24 c0    	vmovups ymm5,YMMWORD PTR [rsp-0x40]
  7033a0:	c4 e2 55 b8 f2       	vfmadd231ps ymm6,ymm5,ymm2
  7033a5:	c5 fc 59 ed          	vmulps ymm5,ymm0,ymm5
  7033a9:	c4 c1 2c 58 c5       	vaddps ymm0,ymm10,ymm13
  7033ae:	c5 fc 11 44 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm0
  7033b4:	c4 e2 45 bc ea       	vfnmadd231ps ymm5,ymm7,ymm2
  7033b9:	c4 e2 7d 18 3d 9e 20 	vbroadcastss ymm7,DWORD PTR [rip+0xffffffffff97209e]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  7033c0:	97 ff 
  7033c2:	c5 fc 28 d7          	vmovaps ymm2,ymm7
  7033c6:	c4 e2 7d ac d3       	vfnmadd213ps ymm2,ymm0,ymm3
  7033cb:	c5 dc 58 c2          	vaddps ymm0,ymm4,ymm2
  7033cf:	c5 fc 11 44 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm0
  7033d5:	c4 c1 34 58 dc       	vaddps ymm3,ymm9,ymm12
  7033da:	c4 41 0c 58 c8       	vaddps ymm9,ymm14,ymm8
  7033df:	c4 41 2c 5c d5       	vsubps ymm10,ymm10,ymm13
  7033e4:	c4 41 74 5c df       	vsubps ymm11,ymm1,ymm15
  7033e9:	c5 84 58 c9          	vaddps ymm1,ymm15,ymm1
  7033ed:	c5 7c 28 e7          	vmovaps ymm12,ymm7
  7033f1:	c4 62 35 ac e6       	vfnmadd213ps ymm12,ymm9,ymm6
  7033f6:	c4 e2 7d 18 05 d5 1e 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff971ed5]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  7033fd:	97 ff 
  7033ff:	c5 24 59 d8          	vmulps ymm11,ymm11,ymm0
  703403:	c4 41 0c 5c c0       	vsubps ymm8,ymm14,ymm8
  703408:	c4 41 1c 58 eb       	vaddps ymm13,ymm12,ymm11
  70340d:	c5 ec 5c d4          	vsubps ymm2,ymm2,ymm4
  703411:	c5 fc 28 e7          	vmovaps ymm4,ymm7
  703415:	c5 7c 10 7c 24 e0    	vmovups ymm15,YMMWORD PTR [rsp-0x20]
  70341b:	c4 c2 65 ac e7       	vfnmadd213ps ymm4,ymm3,ymm15
  703420:	c5 2c 59 d0          	vmulps ymm10,ymm10,ymm0
  703424:	c4 41 1c 5c db       	vsubps ymm11,ymm12,ymm11
  703429:	c4 41 5c 5c e2       	vsubps ymm12,ymm4,ymm10
  70342e:	c5 ac 58 e4          	vaddps ymm4,ymm10,ymm4
  703432:	c4 e2 75 ac fd       	vfnmadd213ps ymm7,ymm1,ymm5
  703437:	c5 3c 59 c0          	vmulps ymm8,ymm8,ymm0
  70343b:	c4 41 44 5c f0       	vsubps ymm14,ymm7,ymm8
  703440:	c5 3c 58 c7          	vaddps ymm8,ymm8,ymm7
  703444:	c5 fc 10 44 24 80    	vmovups ymm0,YMMWORD PTR [rsp-0x80]
  70344a:	c5 7c 58 54 24 a0    	vaddps ymm10,ymm0,YMMWORD PTR [rsp-0x60]
  703450:	c5 b4 58 f6          	vaddps ymm6,ymm9,ymm6
  703454:	c5 04 58 cb          	vaddps ymm9,ymm15,ymm3
  703458:	c5 d4 58 e9          	vaddps ymm5,ymm5,ymm1
  70345c:	c5 fc 10 4c 24 c0    	vmovups ymm1,YMMWORD PTR [rsp-0x40]
  703462:	c4 c1 74 5c c5       	vsubps ymm0,ymm1,ymm13
  703467:	c5 94 58 f9          	vaddps ymm7,ymm13,ymm1
  70346b:	c4 c1 1c 5c de       	vsubps ymm3,ymm12,ymm14
  703470:	c4 41 1c 58 e6       	vaddps ymm12,ymm12,ymm14
  703475:	c5 a4 58 ca          	vaddps ymm1,ymm11,ymm2
  703479:	c4 c1 6c 5c d3       	vsubps ymm2,ymm2,ymm11
  70347e:	c5 3c 58 dc          	vaddps ymm11,ymm8,ymm4
  703482:	c4 c1 5c 5c e0       	vsubps ymm4,ymm4,ymm8
  703487:	c5 2c 5c c6          	vsubps ymm8,ymm10,ymm6
  70348b:	c5 ac 58 f6          	vaddps ymm6,ymm10,ymm6
  70348f:	c5 34 5c d5          	vsubps ymm10,ymm9,ymm5
  703493:	c5 b4 58 ed          	vaddps ymm5,ymm9,ymm5
  703497:	c5 4c 15 cd          	vunpckhps ymm9,ymm6,ymm5
  70349b:	c5 cc 14 ed          	vunpcklps ymm5,ymm6,ymm5
  70349f:	c4 c3 55 06 f1 31    	vperm2f128 ymm6,ymm5,ymm9,0x31
  7034a5:	c4 c3 55 06 e9 20    	vperm2f128 ymm5,ymm5,ymm9,0x20
  7034ab:	c5 fc 11 2c 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm5
  7034b0:	c5 fc 11 74 16 20    	vmovups YMMWORD PTR [rsi+rdx*1+0x20],ymm6
  7034b6:	c5 ec 15 ec          	vunpckhps ymm5,ymm2,ymm4
  7034ba:	c5 ec 14 d4          	vunpcklps ymm2,ymm2,ymm4
  7034be:	c4 e3 6d 06 e5 31    	vperm2f128 ymm4,ymm2,ymm5,0x31
  7034c4:	c4 e3 6d 06 d5 20    	vperm2f128 ymm2,ymm2,ymm5,0x20
  7034ca:	c5 fc 11 54 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm2
  7034d0:	c5 fc 11 64 16 60    	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm4
  7034d6:	c4 c1 44 15 d4       	vunpckhps ymm2,ymm7,ymm12
  7034db:	c4 c1 44 14 e4       	vunpcklps ymm4,ymm7,ymm12
  7034e0:	c4 e3 5d 06 ea 31    	vperm2f128 ymm5,ymm4,ymm2,0x31
  7034e6:	c4 e3 5d 06 d2 20    	vperm2f128 ymm2,ymm4,ymm2,0x20
  7034ec:	c5 fc 11 94 16 80 00 	vmovups YMMWORD PTR [rsi+rdx*1+0x80],ymm2
  7034f3:	00 00 
  7034f5:	c5 fc 11 ac 16 a0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xa0],ymm5
  7034fc:	00 00 
  7034fe:	c4 c1 3c 15 d2       	vunpckhps ymm2,ymm8,ymm10
  703503:	c4 c1 3c 14 e2       	vunpcklps ymm4,ymm8,ymm10
  703508:	c4 e3 5d 06 ea 31    	vperm2f128 ymm5,ymm4,ymm2,0x31
  70350e:	c4 e3 5d 06 d2 20    	vperm2f128 ymm2,ymm4,ymm2,0x20
  703514:	c5 fc 11 94 16 c0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xc0],ymm2
  70351b:	00 00 
  70351d:	c5 fc 11 ac 16 e0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xe0],ymm5
  703524:	00 00 
  703526:	c4 c1 74 15 d3       	vunpckhps ymm2,ymm1,ymm11
  70352b:	c4 c1 74 14 cb       	vunpcklps ymm1,ymm1,ymm11
  703530:	c4 e3 75 06 e2 31    	vperm2f128 ymm4,ymm1,ymm2,0x31
  703536:	c4 e3 75 06 ca 20    	vperm2f128 ymm1,ymm1,ymm2,0x20
  70353c:	c5 fc 11 8c 16 00 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x100],ymm1
  703543:	00 00 
  703545:	c5 fc 11 a4 16 20 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x120],ymm4
  70354c:	00 00 
  70354e:	c5 fc 15 cb          	vunpckhps ymm1,ymm0,ymm3
  703552:	c5 fc 14 c3          	vunpcklps ymm0,ymm0,ymm3
  703556:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  70355c:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  703562:	c5 fc 11 84 16 40 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x140],ymm0
  703569:	00 00 
  70356b:	c5 fc 11 94 16 60 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x160],ymm2
  703572:	00 00 
  703574:	48 81 c2 80 01 00 00 	add    rdx,0x180
  70357b:	48 39 d0             	cmp    rax,rdx
  70357e:	0f 85 8c f9 ff ff    	jne    702f10 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle+0x10>
  703584:	48 83 c4 68          	add    rsp,0x68
  703588:	c5 f8 77             	vzeroupper
  70358b:	c3                   	ret
