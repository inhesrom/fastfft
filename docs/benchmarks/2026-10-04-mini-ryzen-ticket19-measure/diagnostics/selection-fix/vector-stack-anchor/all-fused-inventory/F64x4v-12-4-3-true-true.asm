
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b860c0 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle>:
  b860c0:	48 c1 e2 06          	shl    rdx,0x6
  b860c4:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  b860c8:	31 d2                	xor    edx,edx
  b860ca:	c4 e2 7d 19 05 c5 e9 	vbroadcastsd ymm0,QWORD PTR [rip+0xffffffffff4ee9c5]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  b860d1:	4e ff 
  b860d3:	c4 e2 7d 19 0d 44 eb 	vbroadcastsd ymm1,QWORD PTR [rip+0xffffffffff4eeb44]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  b860da:	4e ff 
  b860dc:	c5 fd 28 15 5c 15 4f 	vmovapd ymm2,YMMWORD PTR [rip+0xffffffffff4f155c]        # 77640 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4af0>
  b860e3:	ff 
  b860e4:	c5 fd 28 1d 74 0a 4f 	vmovapd ymm3,YMMWORD PTR [rip+0xffffffffff4f0a74]        # 76b60 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4010>
  b860eb:	ff 
  b860ec:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  b860f0:	c5 fd 10 24 17       	vmovupd ymm4,YMMWORD PTR [rdi+rdx*1]
  b860f5:	c5 f9 10 6c 17 20    	vmovupd xmm5,XMMWORD PTR [rdi+rdx*1+0x20]
  b860fb:	c4 e3 5d 06 e5 20    	vperm2f128 ymm4,ymm4,ymm5,0x20
  b86101:	c5 f9 10 6c 17 10    	vmovupd xmm5,XMMWORD PTR [rdi+rdx*1+0x10]
  b86107:	c5 dd 14 f5          	vunpcklpd ymm6,ymm4,ymm5
  b8610b:	c5 dd 15 e5          	vunpckhpd ymm4,ymm4,ymm5
  b8610f:	c5 fd 10 6c 17 30    	vmovupd ymm5,YMMWORD PTR [rdi+rdx*1+0x30]
  b86115:	c5 f9 10 7c 17 50    	vmovupd xmm7,XMMWORD PTR [rdi+rdx*1+0x50]
  b8611b:	c4 e3 55 06 ef 20    	vperm2f128 ymm5,ymm5,ymm7,0x20
  b86121:	c5 f9 10 7c 17 40    	vmovupd xmm7,XMMWORD PTR [rdi+rdx*1+0x40]
  b86127:	c5 55 14 c7          	vunpcklpd ymm8,ymm5,ymm7
  b8612b:	c5 d5 15 ef          	vunpckhpd ymm5,ymm5,ymm7
  b8612f:	c5 fd 10 7c 17 60    	vmovupd ymm7,YMMWORD PTR [rdi+rdx*1+0x60]
  b86135:	c5 79 10 8c 17 80 00 	vmovupd xmm9,XMMWORD PTR [rdi+rdx*1+0x80]
  b8613c:	00 00 
  b8613e:	c4 c3 45 06 f9 20    	vperm2f128 ymm7,ymm7,ymm9,0x20
  b86144:	c5 79 10 4c 17 70    	vmovupd xmm9,XMMWORD PTR [rdi+rdx*1+0x70]
  b8614a:	c4 41 45 14 d1       	vunpcklpd ymm10,ymm7,ymm9
  b8614f:	c4 c1 45 15 f9       	vunpckhpd ymm7,ymm7,ymm9
  b86154:	c5 7d 10 8c 17 90 00 	vmovupd ymm9,YMMWORD PTR [rdi+rdx*1+0x90]
  b8615b:	00 00 
  b8615d:	c5 79 10 9c 17 b0 00 	vmovupd xmm11,XMMWORD PTR [rdi+rdx*1+0xb0]
  b86164:	00 00 
  b86166:	c4 43 35 06 cb 20    	vperm2f128 ymm9,ymm9,ymm11,0x20
  b8616c:	c5 79 10 9c 17 a0 00 	vmovupd xmm11,XMMWORD PTR [rdi+rdx*1+0xa0]
  b86173:	00 00 
  b86175:	c4 41 35 14 e3       	vunpcklpd ymm12,ymm9,ymm11
  b8617a:	c4 41 35 15 cb       	vunpckhpd ymm9,ymm9,ymm11
  b8617f:	c5 5d 58 df          	vaddpd ymm11,ymm4,ymm7
  b86183:	c5 35 58 ed          	vaddpd ymm13,ymm9,ymm5
  b86187:	c4 41 25 58 f5       	vaddpd ymm14,ymm11,ymm13
  b8618c:	c5 2d 58 fe          	vaddpd ymm15,ymm10,ymm6
  b86190:	62 c1 bd 28 58 c4    	vaddpd ymm16,ymm8,ymm12
  b86196:	62 a1 85 28 58 c8    	vaddpd ymm17,ymm15,ymm16
  b8619c:	c5 dd 5c e7          	vsubpd ymm4,ymm4,ymm7
  b861a0:	c4 c1 3d 5c fc       	vsubpd ymm7,ymm8,ymm12
  b861a5:	c5 5d 58 c7          	vaddpd ymm8,ymm4,ymm7
  b861a9:	c4 c1 4d 5c f2       	vsubpd ymm6,ymm6,ymm10
  b861ae:	c5 b5 5c ed          	vsubpd ymm5,ymm9,ymm5
  b861b2:	c5 55 58 ce          	vaddpd ymm9,ymm5,ymm6
  b861b6:	c4 41 25 5c d5       	vsubpd ymm10,ymm11,ymm13
  b861bb:	62 31 85 28 5c d8    	vsubpd ymm11,ymm15,ymm16
  b861c1:	c5 dd 5c e7          	vsubpd ymm4,ymm4,ymm7
  b861c5:	c5 cd 5c ed          	vsubpd ymm5,ymm6,ymm5
  b861c9:	c4 c3 0d 18 f2 01    	vinsertf128 ymm6,ymm14,xmm10,0x1
  b861cf:	c4 c3 0d 06 fa 31    	vperm2f128 ymm7,ymm14,ymm10,0x31
  b861d5:	c4 63 3d 18 d4 01    	vinsertf128 ymm10,ymm8,xmm4,0x1
  b861db:	c4 e3 3d 06 e4 31    	vperm2f128 ymm4,ymm8,ymm4,0x31
  b861e1:	c5 c5 14 e4          	vunpcklpd ymm4,ymm7,ymm4
  b861e5:	c4 c1 4d 14 fa       	vunpcklpd ymm7,ymm6,ymm10
  b861ea:	c4 c1 4d 15 f2       	vunpckhpd ymm6,ymm6,ymm10
  b861ef:	62 53 75 20 18 c3 01 	vinsertf32x4 ymm8,ymm17,xmm11,0x1
  b861f6:	62 53 f5 20 23 d3 03 	vshuff64x2 ymm10,ymm17,ymm11,0x3
  b861fd:	c4 63 35 18 dd 01    	vinsertf128 ymm11,ymm9,xmm5,0x1
  b86203:	c4 e3 35 06 ed 31    	vperm2f128 ymm5,ymm9,ymm5,0x31
  b86209:	c5 ad 14 ed          	vunpcklpd ymm5,ymm10,ymm5
  b8620d:	c4 41 3d 14 cb       	vunpcklpd ymm9,ymm8,ymm11
  b86212:	c4 41 3d 15 c3       	vunpckhpd ymm8,ymm8,ymm11
  b86217:	c5 7d 10 51 40       	vmovupd ymm10,YMMWORD PTR [rcx+0x40]
  b8621c:	c5 7d 10 59 60       	vmovupd ymm11,YMMWORD PTR [rcx+0x60]
  b86221:	c5 7d 10 a1 80 00 00 	vmovupd ymm12,YMMWORD PTR [rcx+0x80]
  b86228:	00 
  b86229:	c5 7d 10 a9 a0 00 00 	vmovupd ymm13,YMMWORD PTR [rcx+0xa0]
  b86230:	00 
  b86231:	c4 41 3d 59 f2       	vmulpd ymm14,ymm8,ymm10
  b86236:	c4 42 cd b8 f3       	vfmadd231pd ymm14,ymm6,ymm11
  b8623b:	c5 1d 59 fd          	vmulpd ymm15,ymm12,ymm5
  b8623f:	c4 42 dd b8 fd       	vfmadd231pd ymm15,ymm4,ymm13
  b86244:	62 c1 8d 28 58 c7    	vaddpd ymm16,ymm14,ymm15
  b8624a:	62 e1 fd 28 28 c8    	vmovapd ymm17,ymm0
  b86250:	62 c2 fd 20 ac c9    	vfnmadd213pd ymm17,ymm16,ymm9
  b86256:	c5 ad 59 f6          	vmulpd ymm6,ymm10,ymm6
  b8625a:	c4 c2 bd bc f3       	vfnmadd231pd ymm6,ymm8,ymm11
  b8625f:	c5 9d 59 e4          	vmulpd ymm4,ymm12,ymm4
  b86263:	c4 c2 d5 bc e5       	vfnmadd231pd ymm4,ymm5,ymm13
  b86268:	c5 cd 5c ec          	vsubpd ymm5,ymm6,ymm4
  b8626c:	c5 d5 59 e9          	vmulpd ymm5,ymm5,ymm1
  b86270:	62 71 f5 20 58 c5    	vaddpd ymm8,ymm17,ymm5
  b86276:	c5 cd 58 e4          	vaddpd ymm4,ymm6,ymm4
  b8627a:	c5 fd 28 f0          	vmovapd ymm6,ymm0
  b8627e:	c4 e2 dd ac f7       	vfnmadd213pd ymm6,ymm4,ymm7
  b86283:	c4 41 0d 5c d7       	vsubpd ymm10,ymm14,ymm15
  b86288:	c5 2d 59 d1          	vmulpd ymm10,ymm10,ymm1
  b8628c:	c4 41 4d 5c da       	vsubpd ymm11,ymm6,ymm10
  b86291:	62 f1 f5 20 5c ed    	vsubpd ymm5,ymm17,ymm5
  b86297:	c5 ad 58 f6          	vaddpd ymm6,ymm10,ymm6
  b8629b:	62 31 b5 28 58 c8    	vaddpd ymm9,ymm9,ymm16
  b862a1:	c5 c5 58 e4          	vaddpd ymm4,ymm7,ymm4
  b862a5:	c5 7d 29 cf          	vmovapd ymm7,ymm9
  b862a9:	62 f2 ed 28 7f fc    	vpermt2pd ymm7,ymm2,ymm4
  b862af:	62 72 e5 28 7f cc    	vpermt2pd ymm9,ymm3,ymm4
  b862b5:	c5 7d 11 0c 16       	vmovupd YMMWORD PTR [rsi+rdx*1],ymm9
  b862ba:	c5 fd 11 7c 16 20    	vmovupd YMMWORD PTR [rsi+rdx*1+0x20],ymm7
  b862c0:	c5 fd 28 e5          	vmovapd ymm4,ymm5
  b862c4:	62 f2 ed 28 7f e6    	vpermt2pd ymm4,ymm2,ymm6
  b862ca:	62 f2 e5 28 7f ee    	vpermt2pd ymm5,ymm3,ymm6
  b862d0:	c5 fd 11 6c 16 40    	vmovupd YMMWORD PTR [rsi+rdx*1+0x40],ymm5
  b862d6:	c5 fd 11 64 16 60    	vmovupd YMMWORD PTR [rsi+rdx*1+0x60],ymm4
  b862dc:	c5 7d 29 c4          	vmovapd ymm4,ymm8
  b862e0:	62 d2 ed 28 7f e3    	vpermt2pd ymm4,ymm2,ymm11
  b862e6:	62 52 e5 28 7f c3    	vpermt2pd ymm8,ymm3,ymm11
  b862ec:	c5 7d 11 84 16 80 00 	vmovupd YMMWORD PTR [rsi+rdx*1+0x80],ymm8
  b862f3:	00 00 
  b862f5:	c5 fd 11 a4 16 a0 00 	vmovupd YMMWORD PTR [rsi+rdx*1+0xa0],ymm4
  b862fc:	00 00 
  b862fe:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  b86305:	48 39 d0             	cmp    rax,rdx
  b86308:	0f 85 e2 fd ff ff    	jne    b860f0 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x30>
  b8630e:	c5 f8 77             	vzeroupper
  b86311:	c3                   	ret
