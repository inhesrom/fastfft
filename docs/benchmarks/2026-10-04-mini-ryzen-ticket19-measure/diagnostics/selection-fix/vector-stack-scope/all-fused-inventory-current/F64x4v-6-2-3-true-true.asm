
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b46580 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle>:
  b46580:	48 c1 e2 05          	shl    rdx,0x5
  b46584:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  b46588:	c4 e2 7d 19 05 07 e5 	vbroadcastsd ymm0,QWORD PTR [rip+0xffffffffff52e507]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  b4658f:	52 ff 
  b46591:	31 d2                	xor    edx,edx
  b46593:	c4 e2 7d 19 0d 84 e6 	vbroadcastsd ymm1,QWORD PTR [rip+0xffffffffff52e684]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  b4659a:	52 ff 
  b4659c:	c5 fd 28 15 bc 05 53 	vmovapd ymm2,YMMWORD PTR [rip+0xffffffffff5305bc]        # 76b60 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4010>
  b465a3:	ff 
  b465a4:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  b465ab:	00 00 00 00 00 
  b465b0:	c5 fd 10 1c 17       	vmovupd ymm3,YMMWORD PTR [rdi+rdx*1]
  b465b5:	c5 f9 10 64 17 20    	vmovupd xmm4,XMMWORD PTR [rdi+rdx*1+0x20]
  b465bb:	c4 e3 65 06 dc 20    	vperm2f128 ymm3,ymm3,ymm4,0x20
  b465c1:	c5 f9 10 64 17 10    	vmovupd xmm4,XMMWORD PTR [rdi+rdx*1+0x10]
  b465c7:	c5 e5 14 ec          	vunpcklpd ymm5,ymm3,ymm4
  b465cb:	c5 e5 15 dc          	vunpckhpd ymm3,ymm3,ymm4
  b465cf:	c5 fd 10 64 17 30    	vmovupd ymm4,YMMWORD PTR [rdi+rdx*1+0x30]
  b465d5:	c5 f9 10 74 17 50    	vmovupd xmm6,XMMWORD PTR [rdi+rdx*1+0x50]
  b465db:	c4 e3 5d 06 e6 20    	vperm2f128 ymm4,ymm4,ymm6,0x20
  b465e1:	c5 f9 10 74 17 40    	vmovupd xmm6,XMMWORD PTR [rdi+rdx*1+0x40]
  b465e7:	c5 dd 14 fe          	vunpcklpd ymm7,ymm4,ymm6
  b465eb:	c5 dd 15 e6          	vunpckhpd ymm4,ymm4,ymm6
  b465ef:	c5 e5 58 f4          	vaddpd ymm6,ymm3,ymm4
  b465f3:	c5 55 58 c7          	vaddpd ymm8,ymm5,ymm7
  b465f7:	c5 e5 5c dc          	vsubpd ymm3,ymm3,ymm4
  b465fb:	c5 d5 5c e7          	vsubpd ymm4,ymm5,ymm7
  b465ff:	c5 f9 28 ee          	vmovapd xmm5,xmm6
  b46603:	c4 e3 7d 19 f6 01    	vextractf128 xmm6,ymm6,0x1
  b46609:	c5 f9 28 fb          	vmovapd xmm7,xmm3
  b4660d:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  b46613:	c5 cd 14 db          	vunpcklpd ymm3,ymm6,ymm3
  b46617:	c5 d5 14 f7          	vunpcklpd ymm6,ymm5,ymm7
  b4661b:	c5 d5 15 ef          	vunpckhpd ymm5,ymm5,ymm7
  b4661f:	c5 79 29 c7          	vmovapd xmm7,xmm8
  b46623:	c4 43 7d 19 c0 01    	vextractf128 xmm8,ymm8,0x1
  b46629:	c5 79 28 cc          	vmovapd xmm9,xmm4
  b4662d:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  b46633:	c5 bd 14 e4          	vunpcklpd ymm4,ymm8,ymm4
  b46637:	c4 41 45 14 c1       	vunpcklpd ymm8,ymm7,ymm9
  b4663c:	c4 c1 45 15 f9       	vunpckhpd ymm7,ymm7,ymm9
  b46641:	c5 7d 10 49 40       	vmovupd ymm9,YMMWORD PTR [rcx+0x40]
  b46646:	c5 7d 10 51 60       	vmovupd ymm10,YMMWORD PTR [rcx+0x60]
  b4664b:	c5 7d 10 99 80 00 00 	vmovupd ymm11,YMMWORD PTR [rcx+0x80]
  b46652:	00 
  b46653:	c5 7d 10 a1 a0 00 00 	vmovupd ymm12,YMMWORD PTR [rcx+0xa0]
  b4665a:	00 
  b4665b:	c5 35 59 ed          	vmulpd ymm13,ymm9,ymm5
  b4665f:	c4 42 c5 bc ea       	vfnmadd231pd ymm13,ymm7,ymm10
  b46664:	c5 25 59 f3          	vmulpd ymm14,ymm11,ymm3
  b46668:	c4 42 dd bc f4       	vfnmadd231pd ymm14,ymm4,ymm12
  b4666d:	c4 41 15 58 fe       	vaddpd ymm15,ymm13,ymm14
  b46672:	c5 b5 59 ff          	vmulpd ymm7,ymm9,ymm7
  b46676:	c4 c2 d5 b8 fa       	vfmadd231pd ymm7,ymm5,ymm10
  b4667b:	c5 a5 59 e4          	vmulpd ymm4,ymm11,ymm4
  b4667f:	c4 c2 e5 b8 e4       	vfmadd231pd ymm4,ymm3,ymm12
  b46684:	c5 c5 58 dc          	vaddpd ymm3,ymm7,ymm4
  b46688:	c5 fd 28 e8          	vmovapd ymm5,ymm0
  b4668c:	c4 e2 85 ac ee       	vfnmadd213pd ymm5,ymm15,ymm6
  b46691:	c5 c5 5c e4          	vsubpd ymm4,ymm7,ymm4
  b46695:	c5 dd 59 e1          	vmulpd ymm4,ymm4,ymm1
  b46699:	c5 d5 58 fc          	vaddpd ymm7,ymm5,ymm4
  b4669d:	c5 7d 28 c8          	vmovapd ymm9,ymm0
  b466a1:	c4 42 e5 ac c8       	vfnmadd213pd ymm9,ymm3,ymm8
  b466a6:	c4 41 15 5c d6       	vsubpd ymm10,ymm13,ymm14
  b466ab:	c5 2d 59 d1          	vmulpd ymm10,ymm10,ymm1
  b466af:	c4 41 35 5c da       	vsubpd ymm11,ymm9,ymm10
  b466b4:	c5 d5 5c e4          	vsubpd ymm4,ymm5,ymm4
  b466b8:	c4 c1 35 58 ea       	vaddpd ymm5,ymm9,ymm10
  b466bd:	c5 bd 58 db          	vaddpd ymm3,ymm8,ymm3
  b466c1:	c5 85 58 f6          	vaddpd ymm6,ymm15,ymm6
  b466c5:	62 f2 ed 28 7f de    	vpermt2pd ymm3,ymm2,ymm6
  b466cb:	c5 fd 11 1c 16       	vmovupd YMMWORD PTR [rsi+rdx*1],ymm3
  b466d0:	62 72 ed 28 7f df    	vpermt2pd ymm11,ymm2,ymm7
  b466d6:	c5 7d 11 5c 16 20    	vmovupd YMMWORD PTR [rsi+rdx*1+0x20],ymm11
  b466dc:	62 f2 ed 28 7f ec    	vpermt2pd ymm5,ymm2,ymm4
  b466e2:	c5 fd 11 6c 16 40    	vmovupd YMMWORD PTR [rsi+rdx*1+0x40],ymm5
  b466e8:	48 83 c2 60          	add    rdx,0x60
  b466ec:	48 39 d0             	cmp    rax,rdx
  b466ef:	0f 85 bb fe ff ff    	jne    b465b0 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x30>
  b466f5:	c5 f8 77             	vzeroupper
  b466f8:	c3                   	ret
