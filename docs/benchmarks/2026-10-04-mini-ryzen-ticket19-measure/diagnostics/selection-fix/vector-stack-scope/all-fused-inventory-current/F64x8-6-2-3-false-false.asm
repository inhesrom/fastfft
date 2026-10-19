
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000978880 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  978880:	c5 fb 12 47 28       	vmovddup xmm0,QWORD PTR [rdi+0x28]
  978885:	c4 e3 79 0d 47 20 01 	vblendpd xmm0,xmm0,XMMWORD PTR [rdi+0x20],0x1
  97888c:	c5 fd 10 0f          	vmovupd ymm1,YMMWORD PTR [rdi]
  978890:	c5 fd 10 57 30       	vmovupd ymm2,YMMWORD PTR [rdi+0x30]
  978895:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  97889c:	62 f1 fd 48 28 0d 5a 	vmovapd zmm1,ZMMWORD PTR [rip+0xffffffffff70ec5a]        # 87500 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x149b0>
  9788a3:	ec 70 ff 
  9788a6:	c5 e1 57 db          	vxorpd xmm3,xmm3,xmm3
  9788aa:	62 f1 fd 48 28 e0    	vmovapd zmm4,zmm0
  9788b0:	62 f2 f5 48 7f e3    	vpermt2pd zmm4,zmm1,zmm3
  9788b6:	62 f1 fd 48 28 2d 80 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff70ec80]        # 87540 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x149f0>
  9788bd:	ec 70 ff 
  9788c0:	c5 fb 12 77 58       	vmovddup xmm6,QWORD PTR [rdi+0x58]
  9788c5:	c4 e3 49 0d 77 50 01 	vblendpd xmm6,xmm6,XMMWORD PTR [rdi+0x50],0x1
  9788cc:	62 f2 d5 48 7f c3    	vpermt2pd zmm0,zmm5,zmm3
  9788d2:	62 f3 6d 48 18 d6 02 	vinsertf32x4 zmm2,zmm2,xmm6,0x2
  9788d9:	62 f2 ed 48 77 cb    	vpermi2pd zmm1,zmm2,zmm3
  9788df:	62 f2 d5 48 7f d3    	vpermt2pd zmm2,zmm5,zmm3
  9788e5:	62 f1 dd 48 58 e9    	vaddpd zmm5,zmm4,zmm1
  9788eb:	62 f1 fd 48 58 f2    	vaddpd zmm6,zmm0,zmm2
  9788f1:	62 f1 dd 48 5c c9    	vsubpd zmm1,zmm4,zmm1
  9788f7:	62 f1 fd 48 5c c2    	vsubpd zmm0,zmm0,zmm2
  9788fd:	62 f1 fd 48 10 15 61 	vmovupd zmm2,ZMMWORD PTR [rip+0xffffffffff74e461]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  978904:	e4 74 ff 
  978907:	62 f2 ed 48 7f eb    	vpermt2pd zmm5,zmm2,zmm3
  97890d:	62 f2 ed 48 7f cb    	vpermt2pd zmm1,zmm2,zmm3
  978913:	c5 d9 57 e4          	vxorpd xmm4,xmm4,xmm4
  978917:	62 f2 ed 48 7f e4    	vpermt2pd zmm4,zmm2,zmm4
  97891d:	62 f1 fd 48 10 3d c1 	vmovupd zmm7,ZMMWORD PTR [rip+0xffffffffff74e3c1]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  978924:	e3 74 ff 
  978927:	62 71 fd 48 28 c5    	vmovapd zmm8,zmm5
  97892d:	62 72 c5 48 7f c4    	vpermt2pd zmm8,zmm7,zmm4
  978933:	62 71 fd 48 10 0d eb 	vmovupd zmm9,ZMMWORD PTR [rip+0xffffffffff74e3eb]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  97893a:	e3 74 ff 
  97893d:	62 f2 b5 48 7f ec    	vpermt2pd zmm5,zmm9,zmm4
  978943:	62 71 fd 48 28 d1    	vmovapd zmm10,zmm1
  978949:	62 72 c5 48 7f d4    	vpermt2pd zmm10,zmm7,zmm4
  97894f:	62 f2 b5 48 7f cc    	vpermt2pd zmm1,zmm9,zmm4
  978955:	62 f1 d5 48 14 c9    	vunpcklpd zmm1,zmm5,zmm1
  97895b:	62 d1 bd 48 14 ea    	vunpcklpd zmm5,zmm8,zmm10
  978961:	62 51 bd 48 15 c2    	vunpckhpd zmm8,zmm8,zmm10
  978967:	62 f2 ed 48 7f f3    	vpermt2pd zmm6,zmm2,zmm3
  97896d:	62 f2 ed 48 7f c3    	vpermt2pd zmm0,zmm2,zmm3
  978973:	62 f1 fd 48 28 d6    	vmovapd zmm2,zmm6
  978979:	62 f2 c5 48 7f d4    	vpermt2pd zmm2,zmm7,zmm4
  97897f:	62 f2 b5 48 7f f4    	vpermt2pd zmm6,zmm9,zmm4
  978985:	62 f2 fd 48 77 fc    	vpermi2pd zmm7,zmm0,zmm4
  97898b:	62 f2 b5 48 7f c4    	vpermt2pd zmm0,zmm9,zmm4
  978991:	62 f1 cd 48 14 c0    	vunpcklpd zmm0,zmm6,zmm0
  978997:	62 f1 ed 48 14 df    	vunpcklpd zmm3,zmm2,zmm7
  97899d:	62 f1 ed 48 15 d7    	vunpckhpd zmm2,zmm2,zmm7
  9789a3:	62 f1 fd 48 10 62 02 	vmovupd zmm4,ZMMWORD PTR [rdx+0x80]
  9789aa:	62 f1 fd 48 10 72 03 	vmovupd zmm6,ZMMWORD PTR [rdx+0xc0]
  9789b1:	62 f1 fd 48 10 7a 04 	vmovupd zmm7,ZMMWORD PTR [rdx+0x100]
  9789b8:	62 71 fd 48 10 4a 05 	vmovupd zmm9,ZMMWORD PTR [rdx+0x140]
  9789bf:	62 71 bd 48 59 d4    	vmulpd zmm10,zmm8,zmm4
  9789c5:	62 72 ed 48 bc d6    	vfnmadd231pd zmm10,zmm2,zmm6
  9789cb:	62 71 f5 48 59 df    	vmulpd zmm11,zmm1,zmm7
  9789d1:	62 52 fd 48 bc d9    	vfnmadd231pd zmm11,zmm0,zmm9
  9789d7:	62 51 ad 48 58 e3    	vaddpd zmm12,zmm10,zmm11
  9789dd:	62 f1 ed 48 59 d4    	vmulpd zmm2,zmm2,zmm4
  9789e3:	62 f2 bd 48 b8 d6    	vfmadd231pd zmm2,zmm8,zmm6
  9789e9:	62 f1 fd 48 59 c7    	vmulpd zmm0,zmm0,zmm7
  9789ef:	62 d2 f5 48 b8 c1    	vfmadd231pd zmm0,zmm1,zmm9
  9789f5:	62 f1 ed 48 58 c8    	vaddpd zmm1,zmm2,zmm0
  9789fb:	62 f2 fd 48 19 25 93 	vbroadcastsd zmm4,QWORD PTR [rip+0xffffffffff6fc093]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  978a02:	c0 6f ff 
  978a05:	62 f1 fd 48 28 f4    	vmovapd zmm6,zmm4
  978a0b:	62 f2 9d 48 ac f5    	vfnmadd213pd zmm6,zmm12,zmm5
  978a11:	62 f2 f5 48 ac e3    	vfnmadd213pd zmm4,zmm1,zmm3
  978a17:	c5 e5 58 c9          	vaddpd ymm1,ymm3,ymm1
  978a1b:	c5 9d 58 dd          	vaddpd ymm3,ymm12,ymm5
  978a1f:	c5 fd 28 2d 39 e1 6f 	vmovapd ymm5,YMMWORD PTR [rip+0xffffffffff6fe139]        # 76b60 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4010>
  978a26:	ff 
  978a27:	62 f2 d5 28 7f d9    	vpermt2pd ymm3,ymm5,ymm1
  978a2d:	c5 fd 11 1e          	vmovupd YMMWORD PTR [rsi],ymm3
  978a31:	c4 e2 7d 19 0d e6 c1 	vbroadcastsd ymm1,QWORD PTR [rip+0xffffffffff6fc1e6]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  978a38:	6f ff 
  978a3a:	c4 c1 2d 5c db       	vsubpd ymm3,ymm10,ymm11
  978a3f:	c5 e5 59 d9          	vmulpd ymm3,ymm3,ymm1
  978a43:	c5 dd 5c fb          	vsubpd ymm7,ymm4,ymm3
  978a47:	c5 ed 5c c0          	vsubpd ymm0,ymm2,ymm0
  978a4b:	c5 fd 59 c1          	vmulpd ymm0,ymm0,ymm1
  978a4f:	c5 cd 58 c8          	vaddpd ymm1,ymm6,ymm0
  978a53:	62 f2 d5 28 7f cf    	vpermt2pd ymm1,ymm5,ymm7
  978a59:	c5 fd 11 4e 20       	vmovupd YMMWORD PTR [rsi+0x20],ymm1
  978a5e:	c5 dd 58 cb          	vaddpd ymm1,ymm4,ymm3
  978a62:	c5 cd 5c c0          	vsubpd ymm0,ymm6,ymm0
  978a66:	62 f2 d5 28 7f c1    	vpermt2pd ymm0,ymm5,ymm1
  978a6c:	c5 fd 11 46 40       	vmovupd YMMWORD PTR [rsi+0x40],ymm0
  978a71:	c5 f8 77             	vzeroupper
  978a74:	c3                   	ret
