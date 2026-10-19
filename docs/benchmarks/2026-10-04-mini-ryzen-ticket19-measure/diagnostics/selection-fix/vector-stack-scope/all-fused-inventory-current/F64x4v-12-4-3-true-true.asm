
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b87e80 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle>:
  b87e80:	48 c1 e2 06          	shl    rdx,0x6
  b87e84:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  b87e88:	31 d2                	xor    edx,edx
  b87e8a:	c4 e2 7d 19 05 05 cc 	vbroadcastsd ymm0,QWORD PTR [rip+0xffffffffff4ecc05]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  b87e91:	4e ff 
  b87e93:	c4 e2 7d 19 0d 84 cd 	vbroadcastsd ymm1,QWORD PTR [rip+0xffffffffff4ecd84]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  b87e9a:	4e ff 
  b87e9c:	c5 fd 28 15 9c f7 4e 	vmovapd ymm2,YMMWORD PTR [rip+0xffffffffff4ef79c]        # 77640 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4af0>
  b87ea3:	ff 
  b87ea4:	c5 fd 28 1d b4 ec 4e 	vmovapd ymm3,YMMWORD PTR [rip+0xffffffffff4eecb4]        # 76b60 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4010>
  b87eab:	ff 
  b87eac:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  b87eb0:	c5 fd 10 24 17       	vmovupd ymm4,YMMWORD PTR [rdi+rdx*1]
  b87eb5:	c5 f9 10 6c 17 20    	vmovupd xmm5,XMMWORD PTR [rdi+rdx*1+0x20]
  b87ebb:	c4 e3 5d 06 e5 20    	vperm2f128 ymm4,ymm4,ymm5,0x20
  b87ec1:	c5 f9 10 6c 17 10    	vmovupd xmm5,XMMWORD PTR [rdi+rdx*1+0x10]
  b87ec7:	c5 dd 14 f5          	vunpcklpd ymm6,ymm4,ymm5
  b87ecb:	c5 dd 15 e5          	vunpckhpd ymm4,ymm4,ymm5
  b87ecf:	c5 fd 10 6c 17 30    	vmovupd ymm5,YMMWORD PTR [rdi+rdx*1+0x30]
  b87ed5:	c5 f9 10 7c 17 50    	vmovupd xmm7,XMMWORD PTR [rdi+rdx*1+0x50]
  b87edb:	c4 e3 55 06 ef 20    	vperm2f128 ymm5,ymm5,ymm7,0x20
  b87ee1:	c5 f9 10 7c 17 40    	vmovupd xmm7,XMMWORD PTR [rdi+rdx*1+0x40]
  b87ee7:	c5 55 14 c7          	vunpcklpd ymm8,ymm5,ymm7
  b87eeb:	c5 d5 15 ef          	vunpckhpd ymm5,ymm5,ymm7
  b87eef:	c5 fd 10 7c 17 60    	vmovupd ymm7,YMMWORD PTR [rdi+rdx*1+0x60]
  b87ef5:	c5 79 10 8c 17 80 00 	vmovupd xmm9,XMMWORD PTR [rdi+rdx*1+0x80]
  b87efc:	00 00 
  b87efe:	c4 c3 45 06 f9 20    	vperm2f128 ymm7,ymm7,ymm9,0x20
  b87f04:	c5 79 10 4c 17 70    	vmovupd xmm9,XMMWORD PTR [rdi+rdx*1+0x70]
  b87f0a:	c4 41 45 14 d1       	vunpcklpd ymm10,ymm7,ymm9
  b87f0f:	c4 c1 45 15 f9       	vunpckhpd ymm7,ymm7,ymm9
  b87f14:	c5 7d 10 8c 17 90 00 	vmovupd ymm9,YMMWORD PTR [rdi+rdx*1+0x90]
  b87f1b:	00 00 
  b87f1d:	c5 79 10 9c 17 b0 00 	vmovupd xmm11,XMMWORD PTR [rdi+rdx*1+0xb0]
  b87f24:	00 00 
  b87f26:	c4 43 35 06 cb 20    	vperm2f128 ymm9,ymm9,ymm11,0x20
  b87f2c:	c5 79 10 9c 17 a0 00 	vmovupd xmm11,XMMWORD PTR [rdi+rdx*1+0xa0]
  b87f33:	00 00 
  b87f35:	c4 41 35 14 e3       	vunpcklpd ymm12,ymm9,ymm11
  b87f3a:	c4 41 35 15 cb       	vunpckhpd ymm9,ymm9,ymm11
  b87f3f:	c5 5d 58 df          	vaddpd ymm11,ymm4,ymm7
  b87f43:	c5 35 58 ed          	vaddpd ymm13,ymm9,ymm5
  b87f47:	c4 41 25 58 f5       	vaddpd ymm14,ymm11,ymm13
  b87f4c:	c5 2d 58 fe          	vaddpd ymm15,ymm10,ymm6
  b87f50:	62 c1 bd 28 58 c4    	vaddpd ymm16,ymm8,ymm12
  b87f56:	62 a1 85 28 58 c8    	vaddpd ymm17,ymm15,ymm16
  b87f5c:	c5 dd 5c e7          	vsubpd ymm4,ymm4,ymm7
  b87f60:	c4 c1 3d 5c fc       	vsubpd ymm7,ymm8,ymm12
  b87f65:	c5 5d 58 c7          	vaddpd ymm8,ymm4,ymm7
  b87f69:	c4 c1 4d 5c f2       	vsubpd ymm6,ymm6,ymm10
  b87f6e:	c5 b5 5c ed          	vsubpd ymm5,ymm9,ymm5
  b87f72:	c5 55 58 ce          	vaddpd ymm9,ymm5,ymm6
  b87f76:	c4 41 25 5c d5       	vsubpd ymm10,ymm11,ymm13
  b87f7b:	62 31 85 28 5c d8    	vsubpd ymm11,ymm15,ymm16
  b87f81:	c5 dd 5c e7          	vsubpd ymm4,ymm4,ymm7
  b87f85:	c5 cd 5c ed          	vsubpd ymm5,ymm6,ymm5
  b87f89:	c4 c3 0d 18 f2 01    	vinsertf128 ymm6,ymm14,xmm10,0x1
  b87f8f:	c4 c3 0d 06 fa 31    	vperm2f128 ymm7,ymm14,ymm10,0x31
  b87f95:	c4 63 3d 18 d4 01    	vinsertf128 ymm10,ymm8,xmm4,0x1
  b87f9b:	c4 e3 3d 06 e4 31    	vperm2f128 ymm4,ymm8,ymm4,0x31
  b87fa1:	c5 c5 14 e4          	vunpcklpd ymm4,ymm7,ymm4
  b87fa5:	c4 c1 4d 14 fa       	vunpcklpd ymm7,ymm6,ymm10
  b87faa:	c4 c1 4d 15 f2       	vunpckhpd ymm6,ymm6,ymm10
  b87faf:	62 53 75 20 18 c3 01 	vinsertf32x4 ymm8,ymm17,xmm11,0x1
  b87fb6:	62 53 f5 20 23 d3 03 	vshuff64x2 ymm10,ymm17,ymm11,0x3
  b87fbd:	c4 63 35 18 dd 01    	vinsertf128 ymm11,ymm9,xmm5,0x1
  b87fc3:	c4 e3 35 06 ed 31    	vperm2f128 ymm5,ymm9,ymm5,0x31
  b87fc9:	c5 ad 14 ed          	vunpcklpd ymm5,ymm10,ymm5
  b87fcd:	c4 41 3d 14 cb       	vunpcklpd ymm9,ymm8,ymm11
  b87fd2:	c4 41 3d 15 c3       	vunpckhpd ymm8,ymm8,ymm11
  b87fd7:	c5 7d 10 51 40       	vmovupd ymm10,YMMWORD PTR [rcx+0x40]
  b87fdc:	c5 7d 10 59 60       	vmovupd ymm11,YMMWORD PTR [rcx+0x60]
  b87fe1:	c5 7d 10 a1 80 00 00 	vmovupd ymm12,YMMWORD PTR [rcx+0x80]
  b87fe8:	00 
  b87fe9:	c5 7d 10 a9 a0 00 00 	vmovupd ymm13,YMMWORD PTR [rcx+0xa0]
  b87ff0:	00 
  b87ff1:	c4 41 3d 59 f2       	vmulpd ymm14,ymm8,ymm10
  b87ff6:	c4 42 cd b8 f3       	vfmadd231pd ymm14,ymm6,ymm11
  b87ffb:	c5 1d 59 fd          	vmulpd ymm15,ymm12,ymm5
  b87fff:	c4 42 dd b8 fd       	vfmadd231pd ymm15,ymm4,ymm13
  b88004:	62 c1 8d 28 58 c7    	vaddpd ymm16,ymm14,ymm15
  b8800a:	62 e1 fd 28 28 c8    	vmovapd ymm17,ymm0
  b88010:	62 c2 fd 20 ac c9    	vfnmadd213pd ymm17,ymm16,ymm9
  b88016:	c5 ad 59 f6          	vmulpd ymm6,ymm10,ymm6
  b8801a:	c4 c2 bd bc f3       	vfnmadd231pd ymm6,ymm8,ymm11
  b8801f:	c5 9d 59 e4          	vmulpd ymm4,ymm12,ymm4
  b88023:	c4 c2 d5 bc e5       	vfnmadd231pd ymm4,ymm5,ymm13
  b88028:	c5 cd 5c ec          	vsubpd ymm5,ymm6,ymm4
  b8802c:	c5 d5 59 e9          	vmulpd ymm5,ymm5,ymm1
  b88030:	62 71 f5 20 58 c5    	vaddpd ymm8,ymm17,ymm5
  b88036:	c5 cd 58 e4          	vaddpd ymm4,ymm6,ymm4
  b8803a:	c5 fd 28 f0          	vmovapd ymm6,ymm0
  b8803e:	c4 e2 dd ac f7       	vfnmadd213pd ymm6,ymm4,ymm7
  b88043:	c4 41 0d 5c d7       	vsubpd ymm10,ymm14,ymm15
  b88048:	c5 2d 59 d1          	vmulpd ymm10,ymm10,ymm1
  b8804c:	c4 41 4d 5c da       	vsubpd ymm11,ymm6,ymm10
  b88051:	62 f1 f5 20 5c ed    	vsubpd ymm5,ymm17,ymm5
  b88057:	c5 ad 58 f6          	vaddpd ymm6,ymm10,ymm6
  b8805b:	62 31 b5 28 58 c8    	vaddpd ymm9,ymm9,ymm16
  b88061:	c5 c5 58 e4          	vaddpd ymm4,ymm7,ymm4
  b88065:	c5 7d 29 cf          	vmovapd ymm7,ymm9
  b88069:	62 f2 ed 28 7f fc    	vpermt2pd ymm7,ymm2,ymm4
  b8806f:	62 72 e5 28 7f cc    	vpermt2pd ymm9,ymm3,ymm4
  b88075:	c5 7d 11 0c 16       	vmovupd YMMWORD PTR [rsi+rdx*1],ymm9
  b8807a:	c5 fd 11 7c 16 20    	vmovupd YMMWORD PTR [rsi+rdx*1+0x20],ymm7
  b88080:	c5 fd 28 e5          	vmovapd ymm4,ymm5
  b88084:	62 f2 ed 28 7f e6    	vpermt2pd ymm4,ymm2,ymm6
  b8808a:	62 f2 e5 28 7f ee    	vpermt2pd ymm5,ymm3,ymm6
  b88090:	c5 fd 11 6c 16 40    	vmovupd YMMWORD PTR [rsi+rdx*1+0x40],ymm5
  b88096:	c5 fd 11 64 16 60    	vmovupd YMMWORD PTR [rsi+rdx*1+0x60],ymm4
  b8809c:	c5 7d 29 c4          	vmovapd ymm4,ymm8
  b880a0:	62 d2 ed 28 7f e3    	vpermt2pd ymm4,ymm2,ymm11
  b880a6:	62 52 e5 28 7f c3    	vpermt2pd ymm8,ymm3,ymm11
  b880ac:	c5 7d 11 84 16 80 00 	vmovupd YMMWORD PTR [rsi+rdx*1+0x80],ymm8
  b880b3:	00 00 
  b880b5:	c5 fd 11 a4 16 a0 00 	vmovupd YMMWORD PTR [rsi+rdx*1+0xa0],ymm4
  b880bc:	00 00 
  b880be:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  b880c5:	48 39 d0             	cmp    rax,rdx
  b880c8:	0f 85 e2 fd ff ff    	jne    b87eb0 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x30>
  b880ce:	c5 f8 77             	vzeroupper
  b880d1:	c3                   	ret
