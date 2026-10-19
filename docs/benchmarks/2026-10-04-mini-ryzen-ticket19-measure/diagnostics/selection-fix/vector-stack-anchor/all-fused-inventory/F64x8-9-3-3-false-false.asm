
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000009337c0 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  9337c0:	c5 fb 12 47 28       	vmovddup xmm0,QWORD PTR [rdi+0x28]
  9337c5:	c4 e3 79 0d 47 20 01 	vblendpd xmm0,xmm0,XMMWORD PTR [rdi+0x20],0x1
  9337cc:	c5 fd 10 0f          	vmovupd ymm1,YMMWORD PTR [rdi]
  9337d0:	c5 fd 10 5f 30       	vmovupd ymm3,YMMWORD PTR [rdi+0x30]
  9337d5:	c5 fd 10 67 60       	vmovupd ymm4,YMMWORD PTR [rdi+0x60]
  9337da:	62 f3 75 48 18 e8 02 	vinsertf32x4 zmm5,zmm1,xmm0,0x2
  9337e1:	62 f1 fd 48 28 35 d5 	vmovapd zmm6,ZMMWORD PTR [rip+0xffffffffff74e8d5]        # 820c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xf570>
  9337e8:	e8 74 ff 
  9337eb:	c5 e9 57 d2          	vxorpd xmm2,xmm2,xmm2
  9337ef:	62 f1 fd 48 28 fd    	vmovapd zmm7,zmm5
  9337f5:	62 f2 cd 48 7f fa    	vpermt2pd zmm7,zmm6,zmm2
  9337fb:	62 f1 fd 48 28 05 fb 	vmovapd zmm0,ZMMWORD PTR [rip+0xffffffffff74e8fb]        # 82100 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xf5b0>
  933802:	e8 74 ff 
  933805:	62 f2 fd 48 7f ea    	vpermt2pd zmm5,zmm0,zmm2
  93380b:	c5 fb 12 4f 58       	vmovddup xmm1,QWORD PTR [rdi+0x58]
  933810:	c4 e3 71 0d 4f 50 01 	vblendpd xmm1,xmm1,XMMWORD PTR [rdi+0x50],0x1
  933817:	62 f3 65 48 18 c9 02 	vinsertf32x4 zmm1,zmm3,xmm1,0x2
  93381e:	62 f1 fd 48 28 d9    	vmovapd zmm3,zmm1
  933824:	62 f2 cd 48 7f da    	vpermt2pd zmm3,zmm6,zmm2
  93382a:	62 f2 fd 48 7f ca    	vpermt2pd zmm1,zmm0,zmm2
  933830:	c5 7b 12 87 88 00 00 	vmovddup xmm8,QWORD PTR [rdi+0x88]
  933837:	00 
  933838:	c4 63 39 0d 87 80 00 	vblendpd xmm8,xmm8,XMMWORD PTR [rdi+0x80],0x1
  93383f:	00 00 01 
  933842:	62 d3 5d 48 18 e0 02 	vinsertf32x4 zmm4,zmm4,xmm8,0x2
  933849:	62 f2 dd 48 77 f2    	vpermi2pd zmm6,zmm4,zmm2
  93384f:	62 f2 fd 48 7f e2    	vpermt2pd zmm4,zmm0,zmm2
  933855:	62 71 e5 48 58 c6    	vaddpd zmm8,zmm3,zmm6
  93385b:	62 51 c5 48 58 c8    	vaddpd zmm9,zmm7,zmm8
  933861:	62 71 f5 48 58 d4    	vaddpd zmm10,zmm1,zmm4
  933867:	62 51 d5 48 58 da    	vaddpd zmm11,zmm5,zmm10
  93386d:	62 f2 fd 48 19 05 21 	vbroadcastsd zmm0,QWORD PTR [rip+0xffffffffff741221]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  933874:	12 74 ff 
  933877:	62 d2 fd 48 bc f8    	vfnmadd231pd zmm7,zmm0,zmm8
  93387d:	62 f1 f5 48 5c e4    	vsubpd zmm4,zmm1,zmm4
  933883:	62 f2 fd 48 19 0d 93 	vbroadcastsd zmm1,QWORD PTR [rip+0xffffffffff741393]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  93388a:	13 74 ff 
  93388d:	62 f1 dd 48 59 e1    	vmulpd zmm4,zmm4,zmm1
  933893:	62 71 c5 48 58 c4    	vaddpd zmm8,zmm7,zmm4
  933899:	62 d2 fd 48 bc ea    	vfnmadd231pd zmm5,zmm0,zmm10
  93389f:	62 f1 e5 48 5c de    	vsubpd zmm3,zmm3,zmm6
  9338a5:	62 f1 e5 48 59 d9    	vmulpd zmm3,zmm3,zmm1
  9338ab:	62 f1 d5 48 5c f3    	vsubpd zmm6,zmm5,zmm3
  9338b1:	62 f1 c5 48 5c e4    	vsubpd zmm4,zmm7,zmm4
  9338b7:	62 f1 e5 48 58 dd    	vaddpd zmm3,zmm3,zmm5
  9338bd:	62 f1 fd 48 10 2d a1 	vmovupd zmm5,ZMMWORD PTR [rip+0xffffffffff7934a1]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  9338c4:	34 79 ff 
  9338c7:	62 72 d5 48 7f ca    	vpermt2pd zmm9,zmm5,zmm2
  9338cd:	62 72 d5 48 7f c2    	vpermt2pd zmm8,zmm5,zmm2
  9338d3:	62 f2 d5 48 7f e2    	vpermt2pd zmm4,zmm5,zmm2
  9338d9:	c5 c1 57 ff          	vxorpd xmm7,xmm7,xmm7
  9338dd:	62 f2 d5 48 7f ff    	vpermt2pd zmm7,zmm5,zmm7
  9338e3:	62 71 fd 48 10 15 fb 	vmovupd zmm10,ZMMWORD PTR [rip+0xffffffffff7933fb]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  9338ea:	33 79 ff 
  9338ed:	62 51 fd 48 28 e1    	vmovapd zmm12,zmm9
  9338f3:	62 72 ad 48 7f e4    	vpermt2pd zmm12,zmm10,zmm4
  9338f9:	62 71 fd 48 10 2d 25 	vmovupd zmm13,ZMMWORD PTR [rip+0xffffffffff793425]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  933900:	34 79 ff 
  933903:	62 72 95 48 7f cc    	vpermt2pd zmm9,zmm13,zmm4
  933909:	62 d1 fd 48 28 e0    	vmovapd zmm4,zmm8
  93390f:	62 f2 ad 48 7f e7    	vpermt2pd zmm4,zmm10,zmm7
  933915:	62 72 95 48 7f c7    	vpermt2pd zmm8,zmm13,zmm7
  93391b:	62 51 b5 48 14 c0    	vunpcklpd zmm8,zmm9,zmm8
  933921:	62 71 9d 48 14 cc    	vunpcklpd zmm9,zmm12,zmm4
  933927:	62 f1 9d 48 15 e4    	vunpckhpd zmm4,zmm12,zmm4
  93392d:	62 72 d5 48 7f da    	vpermt2pd zmm11,zmm5,zmm2
  933933:	62 f2 d5 48 7f f2    	vpermt2pd zmm6,zmm5,zmm2
  933939:	62 f2 d5 48 7f da    	vpermt2pd zmm3,zmm5,zmm2
  93393f:	62 d1 fd 48 28 d3    	vmovapd zmm2,zmm11
  933945:	62 f2 ad 48 7f d3    	vpermt2pd zmm2,zmm10,zmm3
  93394b:	62 72 95 48 7f db    	vpermt2pd zmm11,zmm13,zmm3
  933951:	62 72 cd 48 77 d7    	vpermi2pd zmm10,zmm6,zmm7
  933957:	62 f2 95 48 7f f7    	vpermt2pd zmm6,zmm13,zmm7
  93395d:	62 f1 a5 48 14 de    	vunpcklpd zmm3,zmm11,zmm6
  933963:	62 d1 ed 48 14 ea    	vunpcklpd zmm5,zmm2,zmm10
  933969:	62 d1 ed 48 15 d2    	vunpckhpd zmm2,zmm2,zmm10
  93396f:	62 f1 fd 48 10 72 02 	vmovupd zmm6,ZMMWORD PTR [rdx+0x80]
  933976:	62 f1 fd 48 10 7a 03 	vmovupd zmm7,ZMMWORD PTR [rdx+0xc0]
  93397d:	62 71 fd 48 10 52 04 	vmovupd zmm10,ZMMWORD PTR [rdx+0x100]
  933984:	62 71 fd 48 10 5a 05 	vmovupd zmm11,ZMMWORD PTR [rdx+0x140]
  93398b:	62 71 dd 48 59 e6    	vmulpd zmm12,zmm4,zmm6
  933991:	62 72 ed 48 bc e7    	vfnmadd231pd zmm12,zmm2,zmm7
  933997:	62 51 bd 48 59 ea    	vmulpd zmm13,zmm8,zmm10
  93399d:	62 52 e5 48 bc eb    	vfnmadd231pd zmm13,zmm3,zmm11
  9339a3:	62 51 9d 48 58 f5    	vaddpd zmm14,zmm12,zmm13
  9339a9:	62 f1 ed 48 59 d6    	vmulpd zmm2,zmm2,zmm6
  9339af:	62 f2 dd 48 b8 d7    	vfmadd231pd zmm2,zmm4,zmm7
  9339b5:	62 d1 e5 48 59 da    	vmulpd zmm3,zmm3,zmm10
  9339bb:	62 d2 bd 48 b8 db    	vfmadd231pd zmm3,zmm8,zmm11
  9339c1:	62 f1 ed 48 58 e3    	vaddpd zmm4,zmm2,zmm3
  9339c7:	62 f1 fd 48 28 f0    	vmovapd zmm6,zmm0
  9339cd:	62 d2 8d 48 ac f1    	vfnmadd213pd zmm6,zmm14,zmm9
  9339d3:	62 f1 ed 48 5c d3    	vsubpd zmm2,zmm2,zmm3
  9339d9:	62 f1 ed 48 59 d1    	vmulpd zmm2,zmm2,zmm1
  9339df:	62 f1 cd 48 58 da    	vaddpd zmm3,zmm6,zmm2
  9339e5:	62 f2 dd 48 ac c5    	vfnmadd213pd zmm0,zmm4,zmm5
  9339eb:	62 d1 9d 48 5c fd    	vsubpd zmm7,zmm12,zmm13
  9339f1:	62 f1 c5 48 59 c9    	vmulpd zmm1,zmm7,zmm1
  9339f7:	62 f1 fd 48 5c f9    	vsubpd zmm7,zmm0,zmm1
  9339fd:	62 f1 cd 48 5c d2    	vsubpd zmm2,zmm6,zmm2
  933a03:	62 f1 fd 48 58 c1    	vaddpd zmm0,zmm0,zmm1
  933a09:	62 d1 b5 48 58 ce    	vaddpd zmm1,zmm9,zmm14
  933a0f:	62 f1 d5 48 58 e4    	vaddpd zmm4,zmm5,zmm4
  933a15:	62 f1 fd 48 28 2d 21 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff74e721]        # 82140 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xf5f0>
  933a1c:	e7 74 ff 
  933a1f:	62 f2 d5 48 7f cc    	vpermt2pd zmm1,zmm5,zmm4
  933a25:	62 f3 7d 48 19 4e 02 	vextractf32x4 XMMWORD PTR [rsi+0x20],zmm1,0x2
  933a2c:	02 
  933a2d:	c5 fd 11 0e          	vmovupd YMMWORD PTR [rsi],ymm1
  933a31:	62 f2 d5 48 7f df    	vpermt2pd zmm3,zmm5,zmm7
  933a37:	62 f3 7d 48 19 5e 05 	vextractf32x4 XMMWORD PTR [rsi+0x50],zmm3,0x2
  933a3e:	02 
  933a3f:	c5 fd 11 5e 30       	vmovupd YMMWORD PTR [rsi+0x30],ymm3
  933a44:	62 f2 d5 48 7f d0    	vpermt2pd zmm2,zmm5,zmm0
  933a4a:	62 f3 7d 48 19 56 08 	vextractf32x4 XMMWORD PTR [rsi+0x80],zmm2,0x2
  933a51:	02 
  933a52:	c5 fd 11 56 60       	vmovupd YMMWORD PTR [rsi+0x60],ymm2
  933a57:	c5 f8 77             	vzeroupper
  933a5a:	c3                   	ret
