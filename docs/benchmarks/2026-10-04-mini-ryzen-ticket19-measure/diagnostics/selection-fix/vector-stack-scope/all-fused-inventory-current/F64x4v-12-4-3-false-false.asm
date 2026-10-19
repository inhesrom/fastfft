
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b68a40 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle>:
  b68a40:	c5 fd 10 07          	vmovupd ymm0,YMMWORD PTR [rdi]
  b68a44:	c5 f9 10 4f 20       	vmovupd xmm1,XMMWORD PTR [rdi+0x20]
  b68a49:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  b68a4f:	c5 f9 10 4f 10       	vmovupd xmm1,XMMWORD PTR [rdi+0x10]
  b68a54:	c5 fd 14 d1          	vunpcklpd ymm2,ymm0,ymm1
  b68a58:	c5 fd 15 c1          	vunpckhpd ymm0,ymm0,ymm1
  b68a5c:	c5 fd 10 4f 30       	vmovupd ymm1,YMMWORD PTR [rdi+0x30]
  b68a61:	c5 f9 10 5f 50       	vmovupd xmm3,XMMWORD PTR [rdi+0x50]
  b68a66:	c4 e3 75 06 cb 20    	vperm2f128 ymm1,ymm1,ymm3,0x20
  b68a6c:	c5 f9 10 5f 40       	vmovupd xmm3,XMMWORD PTR [rdi+0x40]
  b68a71:	c5 f5 14 e3          	vunpcklpd ymm4,ymm1,ymm3
  b68a75:	c5 f5 15 cb          	vunpckhpd ymm1,ymm1,ymm3
  b68a79:	c5 fd 10 5f 60       	vmovupd ymm3,YMMWORD PTR [rdi+0x60]
  b68a7e:	c5 f9 10 af 80 00 00 	vmovupd xmm5,XMMWORD PTR [rdi+0x80]
  b68a85:	00 
  b68a86:	c4 e3 65 06 dd 20    	vperm2f128 ymm3,ymm3,ymm5,0x20
  b68a8c:	c5 f9 10 6f 70       	vmovupd xmm5,XMMWORD PTR [rdi+0x70]
  b68a91:	c5 e5 14 f5          	vunpcklpd ymm6,ymm3,ymm5
  b68a95:	c5 e5 15 dd          	vunpckhpd ymm3,ymm3,ymm5
  b68a99:	c5 fd 10 af 90 00 00 	vmovupd ymm5,YMMWORD PTR [rdi+0x90]
  b68aa0:	00 
  b68aa1:	c5 f9 10 bf b0 00 00 	vmovupd xmm7,XMMWORD PTR [rdi+0xb0]
  b68aa8:	00 
  b68aa9:	c4 e3 55 06 ef 20    	vperm2f128 ymm5,ymm5,ymm7,0x20
  b68aaf:	c5 f9 10 bf a0 00 00 	vmovupd xmm7,XMMWORD PTR [rdi+0xa0]
  b68ab6:	00 
  b68ab7:	c5 55 14 c7          	vunpcklpd ymm8,ymm5,ymm7
  b68abb:	c5 d5 15 ef          	vunpckhpd ymm5,ymm5,ymm7
  b68abf:	c5 ed 58 fe          	vaddpd ymm7,ymm2,ymm6
  b68ac3:	c5 3d 58 cc          	vaddpd ymm9,ymm8,ymm4
  b68ac7:	c5 35 58 d7          	vaddpd ymm10,ymm9,ymm7
  b68acb:	c5 7d 58 db          	vaddpd ymm11,ymm0,ymm3
  b68acf:	c5 75 58 e5          	vaddpd ymm12,ymm1,ymm5
  b68ad3:	c4 41 25 58 ec       	vaddpd ymm13,ymm11,ymm12
  b68ad8:	c5 ed 5c d6          	vsubpd ymm2,ymm2,ymm6
  b68adc:	c5 f5 5c cd          	vsubpd ymm1,ymm1,ymm5
  b68ae0:	c5 ed 58 e9          	vaddpd ymm5,ymm2,ymm1
  b68ae4:	c5 fd 5c c3          	vsubpd ymm0,ymm0,ymm3
  b68ae8:	c5 bd 5c dc          	vsubpd ymm3,ymm8,ymm4
  b68aec:	c5 e5 58 e0          	vaddpd ymm4,ymm3,ymm0
  b68af0:	c4 c1 45 5c f1       	vsubpd ymm6,ymm7,ymm9
  b68af5:	c4 c1 25 5c fc       	vsubpd ymm7,ymm11,ymm12
  b68afa:	c5 ed 5c c9          	vsubpd ymm1,ymm2,ymm1
  b68afe:	c5 fd 5c c3          	vsubpd ymm0,ymm0,ymm3
  b68b02:	c4 e3 2d 18 d6 01    	vinsertf128 ymm2,ymm10,xmm6,0x1
  b68b08:	c4 e3 2d 06 de 31    	vperm2f128 ymm3,ymm10,ymm6,0x31
  b68b0e:	c4 e3 55 18 f1 01    	vinsertf128 ymm6,ymm5,xmm1,0x1
  b68b14:	c4 e3 55 06 c9 31    	vperm2f128 ymm1,ymm5,ymm1,0x31
  b68b1a:	c5 e5 14 c9          	vunpcklpd ymm1,ymm3,ymm1
  b68b1e:	c5 ed 14 de          	vunpcklpd ymm3,ymm2,ymm6
  b68b22:	c5 ed 15 d6          	vunpckhpd ymm2,ymm2,ymm6
  b68b26:	c4 e3 15 18 ef 01    	vinsertf128 ymm5,ymm13,xmm7,0x1
  b68b2c:	c4 e3 15 06 f7 31    	vperm2f128 ymm6,ymm13,ymm7,0x31
  b68b32:	c4 e3 5d 18 f8 01    	vinsertf128 ymm7,ymm4,xmm0,0x1
  b68b38:	c4 e3 5d 06 c0 31    	vperm2f128 ymm0,ymm4,ymm0,0x31
  b68b3e:	c5 cd 14 c0          	vunpcklpd ymm0,ymm6,ymm0
  b68b42:	c5 d5 14 e7          	vunpcklpd ymm4,ymm5,ymm7
  b68b46:	c5 d5 15 ef          	vunpckhpd ymm5,ymm5,ymm7
  b68b4a:	c5 fd 10 72 40       	vmovupd ymm6,YMMWORD PTR [rdx+0x40]
  b68b4f:	c5 fd 10 7a 60       	vmovupd ymm7,YMMWORD PTR [rdx+0x60]
  b68b54:	c5 7d 10 82 80 00 00 	vmovupd ymm8,YMMWORD PTR [rdx+0x80]
  b68b5b:	00 
  b68b5c:	c5 7d 10 8a a0 00 00 	vmovupd ymm9,YMMWORD PTR [rdx+0xa0]
  b68b63:	00 
  b68b64:	c5 55 59 d6          	vmulpd ymm10,ymm5,ymm6
  b68b68:	c4 62 ed b8 d7       	vfmadd231pd ymm10,ymm2,ymm7
  b68b6d:	c5 3d 59 d8          	vmulpd ymm11,ymm8,ymm0
  b68b71:	c4 42 f5 b8 d9       	vfmadd231pd ymm11,ymm1,ymm9
  b68b76:	c4 41 2d 58 e3       	vaddpd ymm12,ymm10,ymm11
  b68b7b:	c4 62 7d 19 2d 14 bf 	vbroadcastsd ymm13,QWORD PTR [rip+0xffffffffff50bf14]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  b68b82:	50 ff 
  b68b84:	c4 41 7d 28 f5       	vmovapd ymm14,ymm13
  b68b89:	c4 62 9d ac f4       	vfnmadd213pd ymm14,ymm12,ymm4
  b68b8e:	c5 ed 59 d6          	vmulpd ymm2,ymm2,ymm6
  b68b92:	c4 e2 d5 bc d7       	vfnmadd231pd ymm2,ymm5,ymm7
  b68b97:	c5 bd 59 c9          	vmulpd ymm1,ymm8,ymm1
  b68b9b:	c4 c2 fd bc c9       	vfnmadd231pd ymm1,ymm0,ymm9
  b68ba0:	c4 e2 7d 19 05 77 c0 	vbroadcastsd ymm0,QWORD PTR [rip+0xffffffffff50c077]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  b68ba7:	50 ff 
  b68ba9:	c5 ed 5c e9          	vsubpd ymm5,ymm2,ymm1
  b68bad:	c5 d5 59 e8          	vmulpd ymm5,ymm5,ymm0
  b68bb1:	c5 8d 58 f5          	vaddpd ymm6,ymm14,ymm5
  b68bb5:	c5 ed 58 c9          	vaddpd ymm1,ymm2,ymm1
  b68bb9:	c4 62 f5 ac eb       	vfnmadd213pd ymm13,ymm1,ymm3
  b68bbe:	c4 c1 2d 5c d3       	vsubpd ymm2,ymm10,ymm11
  b68bc3:	c5 ed 59 c0          	vmulpd ymm0,ymm2,ymm0
  b68bc7:	c5 95 5c d0          	vsubpd ymm2,ymm13,ymm0
  b68bcb:	c5 8d 5c ed          	vsubpd ymm5,ymm14,ymm5
  b68bcf:	c5 95 58 c0          	vaddpd ymm0,ymm13,ymm0
  b68bd3:	c5 9d 58 e4          	vaddpd ymm4,ymm12,ymm4
  b68bd7:	c5 e5 58 c9          	vaddpd ymm1,ymm3,ymm1
  b68bdb:	c5 fd 28 1d 5d ea 50 	vmovapd ymm3,YMMWORD PTR [rip+0xffffffffff50ea5d]        # 77640 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4af0>
  b68be2:	ff 
  b68be3:	c5 fd 28 f9          	vmovapd ymm7,ymm1
  b68be7:	62 f2 e5 28 7f fc    	vpermt2pd ymm7,ymm3,ymm4
  b68bed:	c5 7d 28 05 6b df 50 	vmovapd ymm8,YMMWORD PTR [rip+0xffffffffff50df6b]        # 76b60 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4010>
  b68bf4:	ff 
  b68bf5:	62 f2 bd 28 7f cc    	vpermt2pd ymm1,ymm8,ymm4
  b68bfb:	c5 fd 11 0e          	vmovupd YMMWORD PTR [rsi],ymm1
  b68bff:	c5 fd 11 7e 20       	vmovupd YMMWORD PTR [rsi+0x20],ymm7
  b68c04:	c5 fd 28 c8          	vmovapd ymm1,ymm0
  b68c08:	62 f2 e5 28 7f cd    	vpermt2pd ymm1,ymm3,ymm5
  b68c0e:	62 f2 bd 28 7f c5    	vpermt2pd ymm0,ymm8,ymm5
  b68c14:	c5 fd 11 46 40       	vmovupd YMMWORD PTR [rsi+0x40],ymm0
  b68c19:	c5 fd 11 4e 60       	vmovupd YMMWORD PTR [rsi+0x60],ymm1
  b68c1e:	62 f2 ed 28 77 de    	vpermi2pd ymm3,ymm2,ymm6
  b68c24:	62 f2 bd 28 7f d6    	vpermt2pd ymm2,ymm8,ymm6
  b68c2a:	c5 fd 11 96 80 00 00 	vmovupd YMMWORD PTR [rsi+0x80],ymm2
  b68c31:	00 
  b68c32:	c5 fd 11 9e a0 00 00 	vmovupd YMMWORD PTR [rsi+0xa0],ymm3
  b68c39:	00 
  b68c3a:	c5 f8 77             	vzeroupper
  b68c3d:	c3                   	ret
