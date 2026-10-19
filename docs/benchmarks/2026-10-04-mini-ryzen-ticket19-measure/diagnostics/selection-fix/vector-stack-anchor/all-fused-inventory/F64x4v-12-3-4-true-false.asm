
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b9be00 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle>:
  b9be00:	c5 fd 10 07          	vmovupd ymm0,YMMWORD PTR [rdi]
  b9be04:	c5 fd 10 4f 20       	vmovupd ymm1,YMMWORD PTR [rdi+0x20]
  b9be09:	c5 fd 10 57 40       	vmovupd ymm2,YMMWORD PTR [rdi+0x40]
  b9be0e:	c5 fd 10 5f 60       	vmovupd ymm3,YMMWORD PTR [rdi+0x60]
  b9be13:	c4 e3 7d 06 e1 31    	vperm2f128 ymm4,ymm0,ymm1,0x31
  b9be19:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  b9be1f:	c5 fd 14 cc          	vunpcklpd ymm1,ymm0,ymm4
  b9be23:	c5 fd 15 c4          	vunpckhpd ymm0,ymm0,ymm4
  b9be27:	c4 e3 6d 06 e3 31    	vperm2f128 ymm4,ymm2,ymm3,0x31
  b9be2d:	c4 e3 6d 06 d3 20    	vperm2f128 ymm2,ymm2,ymm3,0x20
  b9be33:	c5 ed 14 dc          	vunpcklpd ymm3,ymm2,ymm4
  b9be37:	c5 ed 15 d4          	vunpckhpd ymm2,ymm2,ymm4
  b9be3b:	c5 fd 10 a7 80 00 00 	vmovupd ymm4,YMMWORD PTR [rdi+0x80]
  b9be42:	00 
  b9be43:	c5 fd 10 af a0 00 00 	vmovupd ymm5,YMMWORD PTR [rdi+0xa0]
  b9be4a:	00 
  b9be4b:	c4 e3 5d 06 f5 31    	vperm2f128 ymm6,ymm4,ymm5,0x31
  b9be51:	c4 e3 5d 06 e5 20    	vperm2f128 ymm4,ymm4,ymm5,0x20
  b9be57:	c5 dd 14 ee          	vunpcklpd ymm5,ymm4,ymm6
  b9be5b:	c5 dd 15 e6          	vunpckhpd ymm4,ymm4,ymm6
  b9be5f:	c5 ed 58 f4          	vaddpd ymm6,ymm2,ymm4
  b9be63:	c5 fd 58 fe          	vaddpd ymm7,ymm0,ymm6
  b9be67:	c5 65 58 c5          	vaddpd ymm8,ymm3,ymm5
  b9be6b:	c4 62 7d 19 0d 24 8c 	vbroadcastsd ymm9,QWORD PTR [rip+0xffffffffff4d8c24]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  b9be72:	4d ff 
  b9be74:	c5 3d 58 d1          	vaddpd ymm10,ymm8,ymm1
  b9be78:	c4 e2 b5 ac f0       	vfnmadd213pd ymm6,ymm9,ymm0
  b9be7d:	c4 e2 7d 19 05 9a 8d 	vbroadcastsd ymm0,QWORD PTR [rip+0xffffffffff4d8d9a]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  b9be84:	4d ff 
  b9be86:	c5 e5 5c dd          	vsubpd ymm3,ymm3,ymm5
  b9be8a:	c5 e5 59 d8          	vmulpd ymm3,ymm3,ymm0
  b9be8e:	c5 cd 58 eb          	vaddpd ymm5,ymm6,ymm3
  b9be92:	c4 62 bd ac c9       	vfnmadd213pd ymm9,ymm8,ymm1
  b9be97:	c5 ed 5c cc          	vsubpd ymm1,ymm2,ymm4
  b9be9b:	c5 f5 59 c0          	vmulpd ymm0,ymm1,ymm0
  b9be9f:	c5 b5 5c c8          	vsubpd ymm1,ymm9,ymm0
  b9bea3:	c5 cd 5c d3          	vsubpd ymm2,ymm6,ymm3
  b9bea7:	c5 b5 58 c0          	vaddpd ymm0,ymm9,ymm0
  b9beab:	c4 e3 45 18 da 01    	vinsertf128 ymm3,ymm7,xmm2,0x1
  b9beb1:	c4 e3 45 06 d2 31    	vperm2f128 ymm2,ymm7,ymm2,0x31
  b9beb7:	c5 f9 28 e5          	vmovapd xmm4,xmm5
  b9bebb:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  b9bec1:	c5 e5 14 f4          	vunpcklpd ymm6,ymm3,ymm4
  b9bec5:	c5 e5 15 dc          	vunpckhpd ymm3,ymm3,ymm4
  b9bec9:	c5 ed 14 e5          	vunpcklpd ymm4,ymm2,ymm5
  b9becd:	c5 ed 15 d5          	vunpckhpd ymm2,ymm2,ymm5
  b9bed1:	c4 e3 2d 18 e8 01    	vinsertf128 ymm5,ymm10,xmm0,0x1
  b9bed7:	c4 e3 2d 06 c0 31    	vperm2f128 ymm0,ymm10,ymm0,0x31
  b9bedd:	c5 f9 28 f9          	vmovapd xmm7,xmm1
  b9bee1:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  b9bee7:	c5 55 14 c7          	vunpcklpd ymm8,ymm5,ymm7
  b9beeb:	c5 d5 15 ef          	vunpckhpd ymm5,ymm5,ymm7
  b9beef:	c5 fd 15 f9          	vunpckhpd ymm7,ymm0,ymm1
  b9bef3:	c5 fd 14 c1          	vunpcklpd ymm0,ymm0,ymm1
  b9bef7:	c5 fd 10 4a 40       	vmovupd ymm1,YMMWORD PTR [rdx+0x40]
  b9befc:	c5 7d 10 4a 60       	vmovupd ymm9,YMMWORD PTR [rdx+0x60]
  b9bf01:	c5 7d 10 92 80 00 00 	vmovupd ymm10,YMMWORD PTR [rdx+0x80]
  b9bf08:	00 
  b9bf09:	c5 7d 10 9a a0 00 00 	vmovupd ymm11,YMMWORD PTR [rdx+0xa0]
  b9bf10:	00 
  b9bf11:	c5 7d 10 a2 c0 00 00 	vmovupd ymm12,YMMWORD PTR [rdx+0xc0]
  b9bf18:	00 
  b9bf19:	c5 7d 10 aa e0 00 00 	vmovupd ymm13,YMMWORD PTR [rdx+0xe0]
  b9bf20:	00 
  b9bf21:	c5 2d 59 f4          	vmulpd ymm14,ymm10,ymm4
  b9bf25:	c4 42 fd bc f3       	vfnmadd231pd ymm14,ymm0,ymm11
  b9bf2a:	c5 0d 58 fe          	vaddpd ymm15,ymm14,ymm6
  b9bf2e:	62 e1 e5 28 59 c1    	vmulpd ymm16,ymm3,ymm1
  b9bf34:	62 c2 d5 28 bc c1    	vfnmadd231pd ymm16,ymm5,ymm9
  b9bf3a:	62 c1 ed 28 59 cc    	vmulpd ymm17,ymm2,ymm12
  b9bf40:	62 c2 c5 28 bc cd    	vfnmadd231pd ymm17,ymm7,ymm13
  b9bf46:	62 a1 fd 20 58 d1    	vaddpd ymm18,ymm16,ymm17
  b9bf4c:	c5 ad 59 c0          	vmulpd ymm0,ymm10,ymm0
  b9bf50:	c4 c2 dd b8 c3       	vfmadd231pd ymm0,ymm4,ymm11
  b9bf55:	c5 bd 58 e0          	vaddpd ymm4,ymm8,ymm0
  b9bf59:	c5 d5 59 c9          	vmulpd ymm1,ymm5,ymm1
  b9bf5d:	c4 c2 e5 b8 c9       	vfmadd231pd ymm1,ymm3,ymm9
  b9bf62:	c5 9d 59 df          	vmulpd ymm3,ymm12,ymm7
  b9bf66:	c4 c2 ed b8 dd       	vfmadd231pd ymm3,ymm2,ymm13
  b9bf6b:	c5 f5 58 d3          	vaddpd ymm2,ymm1,ymm3
  b9bf6f:	c4 c1 4d 5c ee       	vsubpd ymm5,ymm6,ymm14
  b9bf74:	c5 f5 5c cb          	vsubpd ymm1,ymm1,ymm3
  b9bf78:	c5 d5 58 d9          	vaddpd ymm3,ymm5,ymm1
  b9bf7c:	c5 bd 5c c0          	vsubpd ymm0,ymm8,ymm0
  b9bf80:	62 b1 f5 20 5c f0    	vsubpd ymm6,ymm17,ymm16
  b9bf86:	c5 fd 58 fe          	vaddpd ymm7,ymm0,ymm6
  b9bf8a:	62 31 85 28 5c c2    	vsubpd ymm8,ymm15,ymm18
  b9bf90:	c5 5d 5c ca          	vsubpd ymm9,ymm4,ymm2
  b9bf94:	c5 d5 5c c9          	vsubpd ymm1,ymm5,ymm1
  b9bf98:	c5 fd 5c c6          	vsubpd ymm0,ymm0,ymm6
  b9bf9c:	c5 dd 58 d2          	vaddpd ymm2,ymm4,ymm2
  b9bfa0:	62 b1 85 28 58 e2    	vaddpd ymm4,ymm15,ymm18
  b9bfa6:	c5 fd 28 2d b2 ab 4d 	vmovapd ymm5,YMMWORD PTR [rip+0xffffffffff4dabb2]        # 76b60 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4010>
  b9bfad:	ff 
  b9bfae:	c4 e3 7d 19 d6 01    	vextractf128 xmm6,ymm2,0x1
  b9bfb4:	62 f2 d5 28 7f d4    	vpermt2pd ymm2,ymm5,ymm4
  b9bfba:	c5 fd 11 16          	vmovupd YMMWORD PTR [rsi],ymm2
  b9bfbe:	c4 e3 7d 19 e2 01    	vextractf128 xmm2,ymm4,0x1
  b9bfc4:	c5 c9 14 d2          	vunpcklpd xmm2,xmm6,xmm2
  b9bfc8:	c5 f9 11 56 20       	vmovupd XMMWORD PTR [rsi+0x20],xmm2
  b9bfcd:	c4 e3 7d 19 fa 01    	vextractf128 xmm2,ymm7,0x1
  b9bfd3:	62 f2 d5 28 7f fb    	vpermt2pd ymm7,ymm5,ymm3
  b9bfd9:	c5 fd 11 7e 30       	vmovupd YMMWORD PTR [rsi+0x30],ymm7
  b9bfde:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  b9bfe4:	c5 e9 14 d3          	vunpcklpd xmm2,xmm2,xmm3
  b9bfe8:	c5 f9 11 56 50       	vmovupd XMMWORD PTR [rsi+0x50],xmm2
  b9bfed:	c4 63 7d 19 ca 01    	vextractf128 xmm2,ymm9,0x1
  b9bff3:	62 52 d5 28 7f c8    	vpermt2pd ymm9,ymm5,ymm8
  b9bff9:	c5 7d 11 4e 60       	vmovupd YMMWORD PTR [rsi+0x60],ymm9
  b9bffe:	c4 63 7d 19 c3 01    	vextractf128 xmm3,ymm8,0x1
  b9c004:	c5 e9 14 d3          	vunpcklpd xmm2,xmm2,xmm3
  b9c008:	c5 f9 11 96 80 00 00 	vmovupd XMMWORD PTR [rsi+0x80],xmm2
  b9c00f:	00 
  b9c010:	62 f2 fd 28 77 e9    	vpermi2pd ymm5,ymm0,ymm1
  b9c016:	c5 fd 11 ae 90 00 00 	vmovupd YMMWORD PTR [rsi+0x90],ymm5
  b9c01d:	00 
  b9c01e:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  b9c024:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  b9c02a:	c5 f9 14 c1          	vunpcklpd xmm0,xmm0,xmm1
  b9c02e:	c5 f9 11 86 b0 00 00 	vmovupd XMMWORD PTR [rsi+0xb0],xmm0
  b9c035:	00 
  b9c036:	c5 f8 77             	vzeroupper
  b9c039:	c3                   	ret
