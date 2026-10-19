
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000009787c0 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  9787c0:	62 f1 fd 48 28 05 36 	vmovapd zmm0,ZMMWORD PTR [rip+0xffffffffff70f036]        # 87800 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x14cb0>
  9787c7:	f0 70 ff 
  9787ca:	62 f1 fd 48 10 0f    	vmovupd zmm1,ZMMWORD PTR [rdi]
  9787d0:	62 f1 fd 48 10 57 01 	vmovupd zmm2,ZMMWORD PTR [rdi+0x40]
  9787d7:	62 f1 fd 48 10 5f 02 	vmovupd zmm3,ZMMWORD PTR [rdi+0x80]
  9787de:	c5 d9 57 e4          	vxorpd xmm4,xmm4,xmm4
  9787e2:	62 f1 fd 48 28 e9    	vmovapd zmm5,zmm1
  9787e8:	62 f2 fd 48 7f ec    	vpermt2pd zmm5,zmm0,zmm4
  9787ee:	62 f1 fd 48 28 35 48 	vmovapd zmm6,ZMMWORD PTR [rip+0xffffffffff70f048]        # 87840 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x14cf0>
  9787f5:	f0 70 ff 
  9787f8:	62 f2 cd 48 7f cc    	vpermt2pd zmm1,zmm6,zmm4
  9787fe:	62 f1 fd 48 28 fa    	vmovapd zmm7,zmm2
  978804:	62 f2 fd 48 7f fc    	vpermt2pd zmm7,zmm0,zmm4
  97880a:	62 f2 cd 48 7f d4    	vpermt2pd zmm2,zmm6,zmm4
  978810:	62 f2 e5 48 77 c4    	vpermi2pd zmm0,zmm3,zmm4
  978816:	62 f2 cd 48 7f dc    	vpermt2pd zmm3,zmm6,zmm4
  97881c:	62 f1 c5 48 58 f0    	vaddpd zmm6,zmm7,zmm0
  978822:	62 71 d5 48 58 c6    	vaddpd zmm8,zmm5,zmm6
  978828:	62 71 ed 48 58 cb    	vaddpd zmm9,zmm2,zmm3
  97882e:	62 51 f5 48 58 d1    	vaddpd zmm10,zmm1,zmm9
  978834:	62 72 fd 48 19 1d 5a 	vbroadcastsd zmm11,QWORD PTR [rip+0xffffffffff6fc25a]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  97883b:	c2 6f ff 
  97883e:	62 f2 a5 48 bc ee    	vfnmadd231pd zmm5,zmm11,zmm6
  978844:	62 f1 ed 48 5c d3    	vsubpd zmm2,zmm2,zmm3
  97884a:	62 f2 fd 48 19 1d cc 	vbroadcastsd zmm3,QWORD PTR [rip+0xffffffffff6fc3cc]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  978851:	c3 6f ff 
  978854:	62 f1 ed 48 59 d3    	vmulpd zmm2,zmm2,zmm3
  97885a:	62 f1 d5 48 58 f2    	vaddpd zmm6,zmm5,zmm2
  978860:	62 d2 b5 48 bc cb    	vfnmadd231pd zmm1,zmm9,zmm11
  978866:	62 f1 c5 48 5c c0    	vsubpd zmm0,zmm7,zmm0
  97886c:	62 f1 fd 48 59 c3    	vmulpd zmm0,zmm0,zmm3
  978872:	62 f1 f5 48 5c d8    	vsubpd zmm3,zmm1,zmm0
  978878:	62 f1 d5 48 5c d2    	vsubpd zmm2,zmm5,zmm2
  97887e:	62 f1 fd 48 58 c1    	vaddpd zmm0,zmm0,zmm1
  978884:	62 f1 fd 48 10 0d da 	vmovupd zmm1,ZMMWORD PTR [rip+0xffffffffff74e4da]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  97888b:	e4 74 ff 
  97888e:	62 72 f5 48 7f c4    	vpermt2pd zmm8,zmm1,zmm4
  978894:	62 f2 f5 48 7f f4    	vpermt2pd zmm6,zmm1,zmm4
  97889a:	62 f2 f5 48 7f d4    	vpermt2pd zmm2,zmm1,zmm4
  9788a0:	c5 d1 57 ed          	vxorpd xmm5,xmm5,xmm5
  9788a4:	62 f2 f5 48 7f ed    	vpermt2pd zmm5,zmm1,zmm5
  9788aa:	62 f1 fd 48 10 3d 34 	vmovupd zmm7,ZMMWORD PTR [rip+0xffffffffff74e434]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  9788b1:	e4 74 ff 
  9788b4:	62 51 fd 48 28 c8    	vmovapd zmm9,zmm8
  9788ba:	62 72 c5 48 7f ca    	vpermt2pd zmm9,zmm7,zmm2
  9788c0:	62 71 fd 48 10 1d 5e 	vmovupd zmm11,ZMMWORD PTR [rip+0xffffffffff74e45e]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  9788c7:	e4 74 ff 
  9788ca:	62 72 a5 48 7f c2    	vpermt2pd zmm8,zmm11,zmm2
  9788d0:	62 f1 fd 48 28 d6    	vmovapd zmm2,zmm6
  9788d6:	62 f2 c5 48 7f d5    	vpermt2pd zmm2,zmm7,zmm5
  9788dc:	62 f2 a5 48 7f f5    	vpermt2pd zmm6,zmm11,zmm5
  9788e2:	62 71 b5 48 14 e2    	vunpcklpd zmm12,zmm9,zmm2
  9788e8:	62 f1 b5 48 15 d2    	vunpckhpd zmm2,zmm9,zmm2
  9788ee:	62 71 bd 48 14 ce    	vunpcklpd zmm9,zmm8,zmm6
  9788f4:	62 f1 bd 48 15 f6    	vunpckhpd zmm6,zmm8,zmm6
  9788fa:	62 72 f5 48 7f d4    	vpermt2pd zmm10,zmm1,zmm4
  978900:	62 f2 f5 48 7f dc    	vpermt2pd zmm3,zmm1,zmm4
  978906:	62 f2 f5 48 7f c4    	vpermt2pd zmm0,zmm1,zmm4
  97890c:	62 d1 fd 48 28 ca    	vmovapd zmm1,zmm10
  978912:	62 f2 c5 48 7f c8    	vpermt2pd zmm1,zmm7,zmm0
  978918:	62 72 a5 48 7f d0    	vpermt2pd zmm10,zmm11,zmm0
  97891e:	62 f2 e5 48 77 fd    	vpermi2pd zmm7,zmm3,zmm5
  978924:	62 f2 a5 48 7f dd    	vpermt2pd zmm3,zmm11,zmm5
  97892a:	62 f1 f5 48 14 c7    	vunpcklpd zmm0,zmm1,zmm7
  978930:	62 f1 f5 48 15 cf    	vunpckhpd zmm1,zmm1,zmm7
  978936:	62 f1 ad 48 14 e3    	vunpcklpd zmm4,zmm10,zmm3
  97893c:	62 f1 ad 48 15 db    	vunpckhpd zmm3,zmm10,zmm3
  978942:	62 f1 fd 48 10 6a 02 	vmovupd zmm5,ZMMWORD PTR [rdx+0x80]
  978949:	62 f1 fd 48 10 7a 03 	vmovupd zmm7,ZMMWORD PTR [rdx+0xc0]
  978950:	62 71 fd 48 10 42 04 	vmovupd zmm8,ZMMWORD PTR [rdx+0x100]
  978957:	62 71 fd 48 10 52 05 	vmovupd zmm10,ZMMWORD PTR [rdx+0x140]
  97895e:	62 71 fd 48 10 5a 06 	vmovupd zmm11,ZMMWORD PTR [rdx+0x180]
  978965:	62 71 fd 48 10 6a 07 	vmovupd zmm13,ZMMWORD PTR [rdx+0x1c0]
  97896c:	62 51 b5 48 59 f0    	vmulpd zmm14,zmm9,zmm8
  978972:	62 52 dd 48 bc f2    	vfnmadd231pd zmm14,zmm4,zmm10
  978978:	62 51 9d 48 58 fe    	vaddpd zmm15,zmm12,zmm14
  97897e:	62 e1 ed 48 59 c5    	vmulpd zmm16,zmm2,zmm5
  978984:	62 e2 f5 48 bc c7    	vfnmadd231pd zmm16,zmm1,zmm7
  97898a:	62 c1 cd 48 59 cb    	vmulpd zmm17,zmm6,zmm11
  978990:	62 c2 e5 48 bc cd    	vfnmadd231pd zmm17,zmm3,zmm13
  978996:	62 a1 fd 40 58 d1    	vaddpd zmm18,zmm16,zmm17
  97899c:	62 d1 dd 48 59 e0    	vmulpd zmm4,zmm4,zmm8
  9789a2:	62 d2 b5 48 b8 e2    	vfmadd231pd zmm4,zmm9,zmm10
  9789a8:	62 71 dd 48 58 c0    	vaddpd zmm8,zmm4,zmm0
  9789ae:	62 f1 f5 48 59 cd    	vmulpd zmm1,zmm1,zmm5
  9789b4:	62 f2 ed 48 b8 cf    	vfmadd231pd zmm1,zmm2,zmm7
  9789ba:	62 d1 e5 48 59 d3    	vmulpd zmm2,zmm3,zmm11
  9789c0:	62 d2 cd 48 b8 d5    	vfmadd231pd zmm2,zmm6,zmm13
  9789c6:	62 f1 f5 48 58 da    	vaddpd zmm3,zmm1,zmm2
  9789cc:	62 d1 9d 48 5c ee    	vsubpd zmm5,zmm12,zmm14
  9789d2:	62 f1 f5 48 5c ca    	vsubpd zmm1,zmm1,zmm2
  9789d8:	62 f1 d5 48 58 d1    	vaddpd zmm2,zmm5,zmm1
  9789de:	62 f1 fd 48 5c c4    	vsubpd zmm0,zmm0,zmm4
  9789e4:	62 b1 f5 40 5c e0    	vsubpd zmm4,zmm17,zmm16
  9789ea:	62 f1 fd 48 58 f4    	vaddpd zmm6,zmm0,zmm4
  9789f0:	62 b1 85 48 5c fa    	vsubpd zmm7,zmm15,zmm18
  9789f6:	62 71 bd 48 5c cb    	vsubpd zmm9,zmm8,zmm3
  9789fc:	62 f1 d5 48 5c c9    	vsubpd zmm1,zmm5,zmm1
  978a02:	62 f1 fd 48 5c c4    	vsubpd zmm0,zmm0,zmm4
  978a08:	62 b1 85 48 58 e2    	vaddpd zmm4,zmm15,zmm18
  978a0e:	62 f1 bd 48 58 db    	vaddpd zmm3,zmm8,zmm3
  978a14:	62 f1 fd 48 28 2d 62 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff70ee62]        # 87880 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x14d30>
  978a1b:	ee 70 ff 
  978a1e:	62 f2 d5 48 7f e3    	vpermt2pd zmm4,zmm5,zmm3
  978a24:	62 f3 7d 48 19 66 02 	vextractf32x4 XMMWORD PTR [rsi+0x20],zmm4,0x2
  978a2b:	02 
  978a2c:	c5 fd 11 26          	vmovupd YMMWORD PTR [rsi],ymm4
  978a30:	62 f2 d5 48 7f d6    	vpermt2pd zmm2,zmm5,zmm6
  978a36:	62 f3 7d 48 19 56 05 	vextractf32x4 XMMWORD PTR [rsi+0x50],zmm2,0x2
  978a3d:	02 
  978a3e:	c5 fd 11 56 30       	vmovupd YMMWORD PTR [rsi+0x30],ymm2
  978a43:	62 d2 d5 48 7f f9    	vpermt2pd zmm7,zmm5,zmm9
  978a49:	62 f3 7d 48 19 7e 08 	vextractf32x4 XMMWORD PTR [rsi+0x80],zmm7,0x2
  978a50:	02 
  978a51:	c5 fd 11 7e 60       	vmovupd YMMWORD PTR [rsi+0x60],ymm7
  978a56:	62 f2 d5 48 7f c8    	vpermt2pd zmm1,zmm5,zmm0
  978a5c:	62 f3 7d 48 19 4e 0b 	vextractf32x4 XMMWORD PTR [rsi+0xb0],zmm1,0x2
  978a63:	02 
  978a64:	c5 fd 11 8e 90 00 00 	vmovupd YMMWORD PTR [rsi+0x90],ymm1
  978a6b:	00 
  978a6c:	c5 f8 77             	vzeroupper
  978a6f:	c3                   	ret
