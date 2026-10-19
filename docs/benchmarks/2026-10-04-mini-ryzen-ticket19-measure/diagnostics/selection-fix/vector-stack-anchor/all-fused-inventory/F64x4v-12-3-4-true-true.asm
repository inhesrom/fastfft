
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b53340 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle>:
  b53340:	48 c1 e2 06          	shl    rdx,0x6
  b53344:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  b53348:	c4 e2 7d 19 05 47 17 	vbroadcastsd ymm0,QWORD PTR [rip+0xffffffffff521747]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  b5334f:	52 ff 
  b53351:	31 d2                	xor    edx,edx
  b53353:	c4 e2 7d 19 0d c4 18 	vbroadcastsd ymm1,QWORD PTR [rip+0xffffffffff5218c4]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  b5335a:	52 ff 
  b5335c:	c5 fd 28 15 fc 37 52 	vmovapd ymm2,YMMWORD PTR [rip+0xffffffffff5237fc]        # 76b60 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4010>
  b53363:	ff 
  b53364:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  b5336b:	00 00 00 00 00 
  b53370:	c5 fd 10 1c 17       	vmovupd ymm3,YMMWORD PTR [rdi+rdx*1]
  b53375:	c5 fd 10 64 17 20    	vmovupd ymm4,YMMWORD PTR [rdi+rdx*1+0x20]
  b5337b:	c5 fd 10 6c 17 40    	vmovupd ymm5,YMMWORD PTR [rdi+rdx*1+0x40]
  b53381:	c5 fd 10 74 17 60    	vmovupd ymm6,YMMWORD PTR [rdi+rdx*1+0x60]
  b53387:	c4 e3 65 06 fc 31    	vperm2f128 ymm7,ymm3,ymm4,0x31
  b5338d:	c4 e3 65 06 dc 20    	vperm2f128 ymm3,ymm3,ymm4,0x20
  b53393:	c5 e5 14 e7          	vunpcklpd ymm4,ymm3,ymm7
  b53397:	c5 e5 15 df          	vunpckhpd ymm3,ymm3,ymm7
  b5339b:	c4 e3 55 06 fe 31    	vperm2f128 ymm7,ymm5,ymm6,0x31
  b533a1:	c4 e3 55 06 ee 20    	vperm2f128 ymm5,ymm5,ymm6,0x20
  b533a7:	c5 d5 14 f7          	vunpcklpd ymm6,ymm5,ymm7
  b533ab:	c5 d5 15 ef          	vunpckhpd ymm5,ymm5,ymm7
  b533af:	c5 fd 10 bc 17 80 00 	vmovupd ymm7,YMMWORD PTR [rdi+rdx*1+0x80]
  b533b6:	00 00 
  b533b8:	c5 7d 10 84 17 a0 00 	vmovupd ymm8,YMMWORD PTR [rdi+rdx*1+0xa0]
  b533bf:	00 00 
  b533c1:	c4 43 45 06 c8 31    	vperm2f128 ymm9,ymm7,ymm8,0x31
  b533c7:	c4 c3 45 06 f8 20    	vperm2f128 ymm7,ymm7,ymm8,0x20
  b533cd:	c4 41 45 14 c1       	vunpcklpd ymm8,ymm7,ymm9
  b533d2:	c4 c1 45 15 f9       	vunpckhpd ymm7,ymm7,ymm9
  b533d7:	c5 55 58 cf          	vaddpd ymm9,ymm5,ymm7
  b533db:	c5 35 58 d3          	vaddpd ymm10,ymm9,ymm3
  b533df:	c5 3d 58 de          	vaddpd ymm11,ymm8,ymm6
  b533e3:	c5 25 58 e4          	vaddpd ymm12,ymm11,ymm4
  b533e7:	c4 62 fd ac cb       	vfnmadd213pd ymm9,ymm0,ymm3
  b533ec:	c4 c1 4d 5c d8       	vsubpd ymm3,ymm6,ymm8
  b533f1:	c5 e5 59 d9          	vmulpd ymm3,ymm3,ymm1
  b533f5:	c5 b5 58 f3          	vaddpd ymm6,ymm9,ymm3
  b533f9:	c4 62 fd ac dc       	vfnmadd213pd ymm11,ymm0,ymm4
  b533fe:	c5 d5 5c e7          	vsubpd ymm4,ymm5,ymm7
  b53402:	c5 dd 59 e1          	vmulpd ymm4,ymm4,ymm1
  b53406:	c5 a5 5c ec          	vsubpd ymm5,ymm11,ymm4
  b5340a:	c5 b5 5c db          	vsubpd ymm3,ymm9,ymm3
  b5340e:	c5 a5 58 e4          	vaddpd ymm4,ymm11,ymm4
  b53412:	c4 e3 2d 18 fb 01    	vinsertf128 ymm7,ymm10,xmm3,0x1
  b53418:	c4 e3 2d 06 db 31    	vperm2f128 ymm3,ymm10,ymm3,0x31
  b5341e:	c5 79 28 c6          	vmovapd xmm8,xmm6
  b53422:	c4 e3 7d 19 f6 01    	vextractf128 xmm6,ymm6,0x1
  b53428:	c4 41 45 14 c8       	vunpcklpd ymm9,ymm7,ymm8
  b5342d:	c4 c1 45 15 f8       	vunpckhpd ymm7,ymm7,ymm8
  b53432:	c5 65 14 c6          	vunpcklpd ymm8,ymm3,ymm6
  b53436:	c5 e5 15 de          	vunpckhpd ymm3,ymm3,ymm6
  b5343a:	c4 e3 1d 18 f4 01    	vinsertf128 ymm6,ymm12,xmm4,0x1
  b53440:	c4 e3 1d 06 e4 31    	vperm2f128 ymm4,ymm12,ymm4,0x31
  b53446:	c5 79 28 d5          	vmovapd xmm10,xmm5
  b5344a:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  b53450:	c4 41 4d 14 da       	vunpcklpd ymm11,ymm6,ymm10
  b53455:	c4 c1 4d 15 f2       	vunpckhpd ymm6,ymm6,ymm10
  b5345a:	c5 5d 15 d5          	vunpckhpd ymm10,ymm4,ymm5
  b5345e:	c5 dd 14 e5          	vunpcklpd ymm4,ymm4,ymm5
  b53462:	c5 fd 10 69 40       	vmovupd ymm5,YMMWORD PTR [rcx+0x40]
  b53467:	c5 7d 10 61 60       	vmovupd ymm12,YMMWORD PTR [rcx+0x60]
  b5346c:	c5 7d 10 a9 80 00 00 	vmovupd ymm13,YMMWORD PTR [rcx+0x80]
  b53473:	00 
  b53474:	c5 7d 10 b1 a0 00 00 	vmovupd ymm14,YMMWORD PTR [rcx+0xa0]
  b5347b:	00 
  b5347c:	c5 7d 10 b9 c0 00 00 	vmovupd ymm15,YMMWORD PTR [rcx+0xc0]
  b53483:	00 
  b53484:	62 e1 fd 28 10 41 07 	vmovupd ymm16,YMMWORD PTR [rcx+0xe0]
  b5348b:	62 c1 bd 28 59 cd    	vmulpd ymm17,ymm8,ymm13
  b53491:	62 c2 dd 28 bc ce    	vfnmadd231pd ymm17,ymm4,ymm14
  b53497:	62 a1 b5 28 58 d1    	vaddpd ymm18,ymm9,ymm17
  b5349d:	62 e1 c5 28 59 dd    	vmulpd ymm19,ymm7,ymm5
  b534a3:	62 c2 cd 28 bc dc    	vfnmadd231pd ymm19,ymm6,ymm12
  b534a9:	62 c1 e5 28 59 e7    	vmulpd ymm20,ymm3,ymm15
  b534af:	62 a2 ad 28 bc e0    	vfnmadd231pd ymm20,ymm10,ymm16
  b534b5:	62 a1 e5 20 58 ec    	vaddpd ymm21,ymm19,ymm20
  b534bb:	c5 95 59 e4          	vmulpd ymm4,ymm13,ymm4
  b534bf:	c4 c2 bd b8 e6       	vfmadd231pd ymm4,ymm8,ymm14
  b534c4:	c5 25 58 c4          	vaddpd ymm8,ymm11,ymm4
  b534c8:	c5 cd 59 ed          	vmulpd ymm5,ymm6,ymm5
  b534cc:	c4 c2 c5 b8 ec       	vfmadd231pd ymm5,ymm7,ymm12
  b534d1:	c4 c1 2d 59 f7       	vmulpd ymm6,ymm10,ymm15
  b534d6:	62 b2 e5 28 b8 f0    	vfmadd231pd ymm6,ymm3,ymm16
  b534dc:	c5 d5 58 de          	vaddpd ymm3,ymm5,ymm6
  b534e0:	62 b1 b5 28 5c f9    	vsubpd ymm7,ymm9,ymm17
  b534e6:	c5 d5 5c ee          	vsubpd ymm5,ymm5,ymm6
  b534ea:	c5 c5 58 f5          	vaddpd ymm6,ymm7,ymm5
  b534ee:	c5 a5 5c e4          	vsubpd ymm4,ymm11,ymm4
  b534f2:	62 31 dd 20 5c cb    	vsubpd ymm9,ymm20,ymm19
  b534f8:	c5 35 58 d4          	vaddpd ymm10,ymm9,ymm4
  b534fc:	62 31 ed 20 5c dd    	vsubpd ymm11,ymm18,ymm21
  b53502:	c5 3d 5c e3          	vsubpd ymm12,ymm8,ymm3
  b53506:	c5 c5 5c ed          	vsubpd ymm5,ymm7,ymm5
  b5350a:	c4 c1 5d 5c e1       	vsubpd ymm4,ymm4,ymm9
  b5350f:	c5 bd 58 db          	vaddpd ymm3,ymm8,ymm3
  b53513:	62 b1 ed 20 58 fd    	vaddpd ymm7,ymm18,ymm21
  b53519:	c4 c3 7d 19 d8 01    	vextractf128 xmm8,ymm3,0x1
  b5351f:	62 f2 ed 28 7f df    	vpermt2pd ymm3,ymm2,ymm7
  b53525:	c5 fd 11 1c 16       	vmovupd YMMWORD PTR [rsi+rdx*1],ymm3
  b5352a:	c4 e3 7d 19 fb 01    	vextractf128 xmm3,ymm7,0x1
  b53530:	c5 b9 14 db          	vunpcklpd xmm3,xmm8,xmm3
  b53534:	c5 f9 11 5c 16 20    	vmovupd XMMWORD PTR [rsi+rdx*1+0x20],xmm3
  b5353a:	c4 63 7d 19 d3 01    	vextractf128 xmm3,ymm10,0x1
  b53540:	62 72 ed 28 7f d6    	vpermt2pd ymm10,ymm2,ymm6
  b53546:	c5 7d 11 54 16 30    	vmovupd YMMWORD PTR [rsi+rdx*1+0x30],ymm10
  b5354c:	c4 e3 7d 19 f6 01    	vextractf128 xmm6,ymm6,0x1
  b53552:	c5 e1 14 de          	vunpcklpd xmm3,xmm3,xmm6
  b53556:	c5 f9 11 5c 16 50    	vmovupd XMMWORD PTR [rsi+rdx*1+0x50],xmm3
  b5355c:	c4 63 7d 19 e3 01    	vextractf128 xmm3,ymm12,0x1
  b53562:	62 52 ed 28 7f e3    	vpermt2pd ymm12,ymm2,ymm11
  b53568:	c5 7d 11 64 16 60    	vmovupd YMMWORD PTR [rsi+rdx*1+0x60],ymm12
  b5356e:	c4 63 7d 19 de 01    	vextractf128 xmm6,ymm11,0x1
  b53574:	c5 e1 14 de          	vunpcklpd xmm3,xmm3,xmm6
  b53578:	c5 f9 11 9c 16 80 00 	vmovupd XMMWORD PTR [rsi+rdx*1+0x80],xmm3
  b5357f:	00 00 
  b53581:	c4 e3 7d 19 e3 01    	vextractf128 xmm3,ymm4,0x1
  b53587:	62 f2 ed 28 7f e5    	vpermt2pd ymm4,ymm2,ymm5
  b5358d:	c5 fd 11 a4 16 90 00 	vmovupd YMMWORD PTR [rsi+rdx*1+0x90],ymm4
  b53594:	00 00 
  b53596:	c4 e3 7d 19 ec 01    	vextractf128 xmm4,ymm5,0x1
  b5359c:	c5 e1 14 dc          	vunpcklpd xmm3,xmm3,xmm4
  b535a0:	c5 f9 11 9c 16 b0 00 	vmovupd XMMWORD PTR [rsi+rdx*1+0xb0],xmm3
  b535a7:	00 00 
  b535a9:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  b535b0:	48 39 d0             	cmp    rax,rdx
  b535b3:	0f 85 b7 fd ff ff    	jne    b53370 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x30>
  b535b9:	c5 f8 77             	vzeroupper
  b535bc:	c3                   	ret
