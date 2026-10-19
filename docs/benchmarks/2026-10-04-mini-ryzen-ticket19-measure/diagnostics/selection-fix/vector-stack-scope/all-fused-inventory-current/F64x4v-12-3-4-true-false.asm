
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b9dbc0 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle>:
  b9dbc0:	c5 fd 10 07          	vmovupd ymm0,YMMWORD PTR [rdi]
  b9dbc4:	c5 fd 10 4f 20       	vmovupd ymm1,YMMWORD PTR [rdi+0x20]
  b9dbc9:	c5 fd 10 57 40       	vmovupd ymm2,YMMWORD PTR [rdi+0x40]
  b9dbce:	c5 fd 10 5f 60       	vmovupd ymm3,YMMWORD PTR [rdi+0x60]
  b9dbd3:	c4 e3 7d 06 e1 31    	vperm2f128 ymm4,ymm0,ymm1,0x31
  b9dbd9:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  b9dbdf:	c5 fd 14 cc          	vunpcklpd ymm1,ymm0,ymm4
  b9dbe3:	c5 fd 15 c4          	vunpckhpd ymm0,ymm0,ymm4
  b9dbe7:	c4 e3 6d 06 e3 31    	vperm2f128 ymm4,ymm2,ymm3,0x31
  b9dbed:	c4 e3 6d 06 d3 20    	vperm2f128 ymm2,ymm2,ymm3,0x20
  b9dbf3:	c5 ed 14 dc          	vunpcklpd ymm3,ymm2,ymm4
  b9dbf7:	c5 ed 15 d4          	vunpckhpd ymm2,ymm2,ymm4
  b9dbfb:	c5 fd 10 a7 80 00 00 	vmovupd ymm4,YMMWORD PTR [rdi+0x80]
  b9dc02:	00 
  b9dc03:	c5 fd 10 af a0 00 00 	vmovupd ymm5,YMMWORD PTR [rdi+0xa0]
  b9dc0a:	00 
  b9dc0b:	c4 e3 5d 06 f5 31    	vperm2f128 ymm6,ymm4,ymm5,0x31
  b9dc11:	c4 e3 5d 06 e5 20    	vperm2f128 ymm4,ymm4,ymm5,0x20
  b9dc17:	c5 dd 14 ee          	vunpcklpd ymm5,ymm4,ymm6
  b9dc1b:	c5 dd 15 e6          	vunpckhpd ymm4,ymm4,ymm6
  b9dc1f:	c5 ed 58 f4          	vaddpd ymm6,ymm2,ymm4
  b9dc23:	c5 fd 58 fe          	vaddpd ymm7,ymm0,ymm6
  b9dc27:	c5 65 58 c5          	vaddpd ymm8,ymm3,ymm5
  b9dc2b:	c4 62 7d 19 0d 64 6e 	vbroadcastsd ymm9,QWORD PTR [rip+0xffffffffff4d6e64]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  b9dc32:	4d ff 
  b9dc34:	c5 3d 58 d1          	vaddpd ymm10,ymm8,ymm1
  b9dc38:	c4 e2 b5 ac f0       	vfnmadd213pd ymm6,ymm9,ymm0
  b9dc3d:	c4 e2 7d 19 05 da 6f 	vbroadcastsd ymm0,QWORD PTR [rip+0xffffffffff4d6fda]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  b9dc44:	4d ff 
  b9dc46:	c5 e5 5c dd          	vsubpd ymm3,ymm3,ymm5
  b9dc4a:	c5 e5 59 d8          	vmulpd ymm3,ymm3,ymm0
  b9dc4e:	c5 cd 58 eb          	vaddpd ymm5,ymm6,ymm3
  b9dc52:	c4 62 bd ac c9       	vfnmadd213pd ymm9,ymm8,ymm1
  b9dc57:	c5 ed 5c cc          	vsubpd ymm1,ymm2,ymm4
  b9dc5b:	c5 f5 59 c0          	vmulpd ymm0,ymm1,ymm0
  b9dc5f:	c5 b5 5c c8          	vsubpd ymm1,ymm9,ymm0
  b9dc63:	c5 cd 5c d3          	vsubpd ymm2,ymm6,ymm3
  b9dc67:	c5 b5 58 c0          	vaddpd ymm0,ymm9,ymm0
  b9dc6b:	c4 e3 45 18 da 01    	vinsertf128 ymm3,ymm7,xmm2,0x1
  b9dc71:	c4 e3 45 06 d2 31    	vperm2f128 ymm2,ymm7,ymm2,0x31
  b9dc77:	c5 f9 28 e5          	vmovapd xmm4,xmm5
  b9dc7b:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  b9dc81:	c5 e5 14 f4          	vunpcklpd ymm6,ymm3,ymm4
  b9dc85:	c5 e5 15 dc          	vunpckhpd ymm3,ymm3,ymm4
  b9dc89:	c5 ed 14 e5          	vunpcklpd ymm4,ymm2,ymm5
  b9dc8d:	c5 ed 15 d5          	vunpckhpd ymm2,ymm2,ymm5
  b9dc91:	c4 e3 2d 18 e8 01    	vinsertf128 ymm5,ymm10,xmm0,0x1
  b9dc97:	c4 e3 2d 06 c0 31    	vperm2f128 ymm0,ymm10,ymm0,0x31
  b9dc9d:	c5 f9 28 f9          	vmovapd xmm7,xmm1
  b9dca1:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  b9dca7:	c5 55 14 c7          	vunpcklpd ymm8,ymm5,ymm7
  b9dcab:	c5 d5 15 ef          	vunpckhpd ymm5,ymm5,ymm7
  b9dcaf:	c5 fd 15 f9          	vunpckhpd ymm7,ymm0,ymm1
  b9dcb3:	c5 fd 14 c1          	vunpcklpd ymm0,ymm0,ymm1
  b9dcb7:	c5 fd 10 4a 40       	vmovupd ymm1,YMMWORD PTR [rdx+0x40]
  b9dcbc:	c5 7d 10 4a 60       	vmovupd ymm9,YMMWORD PTR [rdx+0x60]
  b9dcc1:	c5 7d 10 92 80 00 00 	vmovupd ymm10,YMMWORD PTR [rdx+0x80]
  b9dcc8:	00 
  b9dcc9:	c5 7d 10 9a a0 00 00 	vmovupd ymm11,YMMWORD PTR [rdx+0xa0]
  b9dcd0:	00 
  b9dcd1:	c5 7d 10 a2 c0 00 00 	vmovupd ymm12,YMMWORD PTR [rdx+0xc0]
  b9dcd8:	00 
  b9dcd9:	c5 7d 10 aa e0 00 00 	vmovupd ymm13,YMMWORD PTR [rdx+0xe0]
  b9dce0:	00 
  b9dce1:	c5 2d 59 f4          	vmulpd ymm14,ymm10,ymm4
  b9dce5:	c4 42 fd bc f3       	vfnmadd231pd ymm14,ymm0,ymm11
  b9dcea:	c5 0d 58 fe          	vaddpd ymm15,ymm14,ymm6
  b9dcee:	62 e1 e5 28 59 c1    	vmulpd ymm16,ymm3,ymm1
  b9dcf4:	62 c2 d5 28 bc c1    	vfnmadd231pd ymm16,ymm5,ymm9
  b9dcfa:	62 c1 ed 28 59 cc    	vmulpd ymm17,ymm2,ymm12
  b9dd00:	62 c2 c5 28 bc cd    	vfnmadd231pd ymm17,ymm7,ymm13
  b9dd06:	62 a1 fd 20 58 d1    	vaddpd ymm18,ymm16,ymm17
  b9dd0c:	c5 ad 59 c0          	vmulpd ymm0,ymm10,ymm0
  b9dd10:	c4 c2 dd b8 c3       	vfmadd231pd ymm0,ymm4,ymm11
  b9dd15:	c5 bd 58 e0          	vaddpd ymm4,ymm8,ymm0
  b9dd19:	c5 d5 59 c9          	vmulpd ymm1,ymm5,ymm1
  b9dd1d:	c4 c2 e5 b8 c9       	vfmadd231pd ymm1,ymm3,ymm9
  b9dd22:	c5 9d 59 df          	vmulpd ymm3,ymm12,ymm7
  b9dd26:	c4 c2 ed b8 dd       	vfmadd231pd ymm3,ymm2,ymm13
  b9dd2b:	c5 f5 58 d3          	vaddpd ymm2,ymm1,ymm3
  b9dd2f:	c4 c1 4d 5c ee       	vsubpd ymm5,ymm6,ymm14
  b9dd34:	c5 f5 5c cb          	vsubpd ymm1,ymm1,ymm3
  b9dd38:	c5 d5 58 d9          	vaddpd ymm3,ymm5,ymm1
  b9dd3c:	c5 bd 5c c0          	vsubpd ymm0,ymm8,ymm0
  b9dd40:	62 b1 f5 20 5c f0    	vsubpd ymm6,ymm17,ymm16
  b9dd46:	c5 fd 58 fe          	vaddpd ymm7,ymm0,ymm6
  b9dd4a:	62 31 85 28 5c c2    	vsubpd ymm8,ymm15,ymm18
  b9dd50:	c5 5d 5c ca          	vsubpd ymm9,ymm4,ymm2
  b9dd54:	c5 d5 5c c9          	vsubpd ymm1,ymm5,ymm1
  b9dd58:	c5 fd 5c c6          	vsubpd ymm0,ymm0,ymm6
  b9dd5c:	c5 dd 58 d2          	vaddpd ymm2,ymm4,ymm2
  b9dd60:	62 b1 85 28 58 e2    	vaddpd ymm4,ymm15,ymm18
  b9dd66:	c5 fd 28 2d f2 8d 4d 	vmovapd ymm5,YMMWORD PTR [rip+0xffffffffff4d8df2]        # 76b60 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4010>
  b9dd6d:	ff 
  b9dd6e:	c4 e3 7d 19 d6 01    	vextractf128 xmm6,ymm2,0x1
  b9dd74:	62 f2 d5 28 7f d4    	vpermt2pd ymm2,ymm5,ymm4
  b9dd7a:	c5 fd 11 16          	vmovupd YMMWORD PTR [rsi],ymm2
  b9dd7e:	c4 e3 7d 19 e2 01    	vextractf128 xmm2,ymm4,0x1
  b9dd84:	c5 c9 14 d2          	vunpcklpd xmm2,xmm6,xmm2
  b9dd88:	c5 f9 11 56 20       	vmovupd XMMWORD PTR [rsi+0x20],xmm2
  b9dd8d:	c4 e3 7d 19 fa 01    	vextractf128 xmm2,ymm7,0x1
  b9dd93:	62 f2 d5 28 7f fb    	vpermt2pd ymm7,ymm5,ymm3
  b9dd99:	c5 fd 11 7e 30       	vmovupd YMMWORD PTR [rsi+0x30],ymm7
  b9dd9e:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  b9dda4:	c5 e9 14 d3          	vunpcklpd xmm2,xmm2,xmm3
  b9dda8:	c5 f9 11 56 50       	vmovupd XMMWORD PTR [rsi+0x50],xmm2
  b9ddad:	c4 63 7d 19 ca 01    	vextractf128 xmm2,ymm9,0x1
  b9ddb3:	62 52 d5 28 7f c8    	vpermt2pd ymm9,ymm5,ymm8
  b9ddb9:	c5 7d 11 4e 60       	vmovupd YMMWORD PTR [rsi+0x60],ymm9
  b9ddbe:	c4 63 7d 19 c3 01    	vextractf128 xmm3,ymm8,0x1
  b9ddc4:	c5 e9 14 d3          	vunpcklpd xmm2,xmm2,xmm3
  b9ddc8:	c5 f9 11 96 80 00 00 	vmovupd XMMWORD PTR [rsi+0x80],xmm2
  b9ddcf:	00 
  b9ddd0:	62 f2 fd 28 77 e9    	vpermi2pd ymm5,ymm0,ymm1
  b9ddd6:	c5 fd 11 ae 90 00 00 	vmovupd YMMWORD PTR [rsi+0x90],ymm5
  b9dddd:	00 
  b9ddde:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  b9dde4:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  b9ddea:	c5 f9 14 c1          	vunpcklpd xmm0,xmm0,xmm1
  b9ddee:	c5 f9 11 86 b0 00 00 	vmovupd XMMWORD PTR [rsi+0xb0],xmm0
  b9ddf5:	00 
  b9ddf6:	c5 f8 77             	vzeroupper
  b9ddf9:	c3                   	ret
