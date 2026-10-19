
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a12680 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a12680:	c5 fb 10 47 10       	vmovsd xmm0,QWORD PTR [rdi+0x10]
  a12685:	c5 f8 10 0f          	vmovups xmm1,XMMWORD PTR [rdi]
  a12689:	c5 f8 10 57 18       	vmovups xmm2,XMMWORD PTR [rdi+0x18]
  a1268e:	c5 f8 10 5f 30       	vmovups xmm3,XMMWORD PTR [rdi+0x30]
  a12693:	c5 f8 10 7f 48       	vmovups xmm7,XMMWORD PTR [rdi+0x48]
  a12698:	62 f3 75 48 18 e0 01 	vinsertf32x4 zmm4,zmm1,xmm0,0x1
  a1269f:	62 71 7c 48 28 05 17 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff67cb17]        # 8f1c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c670>
  a126a6:	cb 67 ff 
  a126a9:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a126ad:	62 f1 7c 48 28 ec    	vmovaps zmm5,zmm4
  a126b3:	62 f2 3d 48 7f e8    	vpermt2ps zmm5,zmm8,zmm0
  a126b9:	62 f1 7c 48 28 0d 3d 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff67cb3d]        # 8f200 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c6b0>
  a126c0:	cb 67 ff 
  a126c3:	62 f2 75 48 7f e0    	vpermt2ps zmm4,zmm1,zmm0
  a126c9:	c5 fb 10 77 28       	vmovsd xmm6,QWORD PTR [rdi+0x28]
  a126ce:	62 f3 6d 48 18 f6 01 	vinsertf32x4 zmm6,zmm2,xmm6,0x1
  a126d5:	62 71 7c 48 28 ce    	vmovaps zmm9,zmm6
  a126db:	62 72 3d 48 7f c8    	vpermt2ps zmm9,zmm8,zmm0
  a126e1:	62 f2 75 48 7f f0    	vpermt2ps zmm6,zmm1,zmm0
  a126e7:	c5 fb 10 57 40       	vmovsd xmm2,QWORD PTR [rdi+0x40]
  a126ec:	62 73 65 48 18 d2 01 	vinsertf32x4 zmm10,zmm3,xmm2,0x1
  a126f3:	62 51 7c 48 28 da    	vmovaps zmm11,zmm10
  a126f9:	62 72 3d 48 7f d8    	vpermt2ps zmm11,zmm8,zmm0
  a126ff:	62 72 75 48 7f d0    	vpermt2ps zmm10,zmm1,zmm0
  a12705:	c5 fb 10 57 58       	vmovsd xmm2,QWORD PTR [rdi+0x58]
  a1270a:	62 73 45 48 18 e2 01 	vinsertf32x4 zmm12,zmm7,xmm2,0x1
  a12711:	62 51 7c 48 28 ec    	vmovaps zmm13,zmm12
  a12717:	62 72 3d 48 7f e8    	vpermt2ps zmm13,zmm8,zmm0
  a1271d:	62 72 75 48 7f e0    	vpermt2ps zmm12,zmm1,zmm0
  a12723:	c5 fb 10 57 70       	vmovsd xmm2,QWORD PTR [rdi+0x70]
  a12728:	c5 f8 10 5f 60       	vmovups xmm3,XMMWORD PTR [rdi+0x60]
  a1272d:	62 73 65 48 18 f2 01 	vinsertf32x4 zmm14,zmm3,xmm2,0x1
  a12734:	62 51 7c 48 28 fe    	vmovaps zmm15,zmm14
  a1273a:	62 72 3d 48 7f f8    	vpermt2ps zmm15,zmm8,zmm0
  a12740:	62 72 75 48 7f f0    	vpermt2ps zmm14,zmm1,zmm0
  a12746:	c5 fb 10 97 88 00 00 	vmovsd xmm2,QWORD PTR [rdi+0x88]
  a1274d:	00 
  a1274e:	c5 f8 10 5f 78       	vmovups xmm3,XMMWORD PTR [rdi+0x78]
  a12753:	62 e3 65 48 18 c2 01 	vinsertf32x4 zmm16,zmm3,xmm2,0x1
  a1275a:	62 72 7d 40 77 c0    	vpermi2ps zmm8,zmm16,zmm0
  a12760:	62 e2 75 48 7f c0    	vpermt2ps zmm16,zmm1,zmm0
  a12766:	62 d1 2c 48 58 d6    	vaddps zmm2,zmm10,zmm14
  a1276c:	62 e1 5c 48 58 ca    	vaddps zmm17,zmm4,zmm2
  a12772:	62 e1 7c 40 58 d6    	vaddps zmm18,zmm16,zmm6
  a12778:	62 a1 1c 48 58 da    	vaddps zmm19,zmm12,zmm18
  a1277e:	62 b1 74 40 58 fb    	vaddps zmm7,zmm17,zmm19
  a12784:	62 c1 24 48 58 e7    	vaddps zmm20,zmm11,zmm15
  a1278a:	62 a1 54 48 58 ec    	vaddps zmm21,zmm5,zmm20
  a12790:	62 c1 3c 48 58 f1    	vaddps zmm22,zmm8,zmm9
  a12796:	62 a1 14 48 58 fe    	vaddps zmm23,zmm13,zmm22
  a1279c:	62 f2 7d 48 18 0d ba 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff662cba]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a127a3:	2c 66 ff 
  a127a6:	62 b1 54 40 58 df    	vaddps zmm3,zmm21,zmm23
  a127ac:	62 f2 75 48 bc e2    	vfnmadd231ps zmm4,zmm1,zmm2
  a127b2:	62 f2 7d 48 18 15 18 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff662b18]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a127b9:	2b 66 ff 
  a127bc:	62 51 24 48 5c df    	vsubps zmm11,zmm11,zmm15
  a127c2:	62 71 24 48 59 da    	vmulps zmm11,zmm11,zmm2
  a127c8:	62 51 5c 48 58 fb    	vaddps zmm15,zmm4,zmm11
  a127ce:	62 32 75 48 bc e2    	vfnmadd231ps zmm12,zmm1,zmm18
  a127d4:	62 51 3c 48 5c c1    	vsubps zmm8,zmm8,zmm9
  a127da:	62 71 3c 48 59 c2    	vmulps zmm8,zmm8,zmm2
  a127e0:	62 51 1c 48 58 c8    	vaddps zmm9,zmm12,zmm8
  a127e6:	62 c1 04 48 5c d1    	vsubps zmm18,zmm15,zmm9
  a127ec:	62 b2 75 48 bc ec    	vfnmadd231ps zmm5,zmm1,zmm20
  a127f2:	62 51 2c 48 5c d6    	vsubps zmm10,zmm10,zmm14
  a127f8:	62 71 2c 48 59 d2    	vmulps zmm10,zmm10,zmm2
  a127fe:	62 51 54 48 5c f2    	vsubps zmm14,zmm5,zmm10
  a12804:	62 32 75 48 bc ee    	vfnmadd231ps zmm13,zmm1,zmm22
  a1280a:	62 f1 7c 40 5c f6    	vsubps zmm6,zmm16,zmm6
  a12810:	62 e1 4c 48 59 c2    	vmulps zmm16,zmm6,zmm2
  a12816:	62 a1 14 48 5c e0    	vsubps zmm20,zmm13,zmm16
  a1281c:	62 b1 0c 48 5c f4    	vsubps zmm6,zmm14,zmm20
  a12822:	62 d1 5c 48 5c e3    	vsubps zmm4,zmm4,zmm11
  a12828:	62 51 1c 48 5c c0    	vsubps zmm8,zmm12,zmm8
  a1282e:	62 51 5c 48 58 d8    	vaddps zmm11,zmm4,zmm8
  a12834:	62 f1 2c 48 58 ed    	vaddps zmm5,zmm10,zmm5
  a1283a:	62 51 7c 40 58 d5    	vaddps zmm10,zmm16,zmm13
  a12840:	62 51 54 48 58 e2    	vaddps zmm12,zmm5,zmm10
  a12846:	62 31 74 40 5c eb    	vsubps zmm13,zmm17,zmm19
  a1284c:	62 a1 54 40 5c c7    	vsubps zmm16,zmm21,zmm23
  a12852:	62 51 04 48 58 c9    	vaddps zmm9,zmm15,zmm9
  a12858:	62 31 0c 48 58 f4    	vaddps zmm14,zmm14,zmm20
  a1285e:	62 d1 5c 48 5c e0    	vsubps zmm4,zmm4,zmm8
  a12864:	62 d1 54 48 5c ea    	vsubps zmm5,zmm5,zmm10
  a1286a:	62 71 7c 48 28 05 0c 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff6b470c]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a12871:	47 6b ff 
  a12874:	62 f2 3d 48 7f f8    	vpermt2ps zmm7,zmm8,zmm0
  a1287a:	62 e2 3d 48 7f d0    	vpermt2ps zmm18,zmm8,zmm0
  a12880:	62 72 3d 48 7f d8    	vpermt2ps zmm11,zmm8,zmm0
  a12886:	62 72 3d 48 7f e8    	vpermt2ps zmm13,zmm8,zmm0
  a1288c:	62 72 3d 48 7f c8    	vpermt2ps zmm9,zmm8,zmm0
  a12892:	62 f2 3d 48 7f e0    	vpermt2ps zmm4,zmm8,zmm0
  a12898:	c4 41 28 57 d2       	vxorps xmm10,xmm10,xmm10
  a1289d:	62 52 3d 48 7f d2    	vpermt2ps zmm10,zmm8,zmm10
  a128a3:	62 71 7c 48 28 3d 53 	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff6b4653]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a128aa:	46 6b ff 
  a128ad:	62 d2 05 48 7f f9    	vpermt2ps zmm7,zmm15,zmm9
  a128b3:	62 e2 05 48 7f d4    	vpermt2ps zmm18,zmm15,zmm4
  a128b9:	62 52 05 48 7f da    	vpermt2ps zmm11,zmm15,zmm10
  a128bf:	62 52 05 48 7f ea    	vpermt2ps zmm13,zmm15,zmm10
  a128c5:	62 51 c5 48 14 cb    	vunpcklpd zmm9,zmm7,zmm11
  a128cb:	62 d1 c5 48 15 fb    	vunpckhpd zmm7,zmm7,zmm11
  a128d1:	62 51 ed 40 14 dd    	vunpcklpd zmm11,zmm18,zmm13
  a128d7:	62 51 ed 40 15 ed    	vunpckhpd zmm13,zmm18,zmm13
  a128dd:	62 e1 7c 48 28 0d 19 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff6b4519]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a128e4:	45 6b ff 
  a128e7:	62 d1 7c 48 28 e1    	vmovaps zmm4,zmm9
  a128ed:	62 d2 75 40 7f e3    	vpermt2ps zmm4,zmm17,zmm11
  a128f3:	62 e1 7c 48 28 15 43 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff6b4543]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a128fa:	45 6b ff 
  a128fd:	62 52 6d 40 7f cb    	vpermt2ps zmm9,zmm18,zmm11
  a12903:	62 d2 75 40 7f fd    	vpermt2ps zmm7,zmm17,zmm13
  a12909:	62 f2 3d 48 7f d8    	vpermt2ps zmm3,zmm8,zmm0
  a1290f:	62 f2 3d 48 7f f0    	vpermt2ps zmm6,zmm8,zmm0
  a12915:	62 72 3d 48 7f e0    	vpermt2ps zmm12,zmm8,zmm0
  a1291b:	62 e2 3d 48 7f c0    	vpermt2ps zmm16,zmm8,zmm0
  a12921:	62 72 3d 48 7f f0    	vpermt2ps zmm14,zmm8,zmm0
  a12927:	62 f2 3d 48 7f e8    	vpermt2ps zmm5,zmm8,zmm0
  a1292d:	62 d2 05 48 7f de    	vpermt2ps zmm3,zmm15,zmm14
  a12933:	62 f2 05 48 7f f5    	vpermt2ps zmm6,zmm15,zmm5
  a12939:	62 52 05 48 7f e2    	vpermt2ps zmm12,zmm15,zmm10
  a1293f:	62 c2 05 48 7f c2    	vpermt2ps zmm16,zmm15,zmm10
  a12945:	62 d1 e5 48 14 c4    	vunpcklpd zmm0,zmm3,zmm12
  a1294b:	62 d1 e5 48 15 dc    	vunpckhpd zmm3,zmm3,zmm12
  a12951:	62 b1 cd 48 14 e8    	vunpcklpd zmm5,zmm6,zmm16
  a12957:	62 b1 cd 48 15 f0    	vunpckhpd zmm6,zmm6,zmm16
  a1295d:	62 71 7c 48 28 c0    	vmovaps zmm8,zmm0
  a12963:	62 72 75 40 7f c5    	vpermt2ps zmm8,zmm17,zmm5
  a12969:	62 f2 6d 40 7f c5    	vpermt2ps zmm0,zmm18,zmm5
  a1296f:	62 f2 75 40 7f de    	vpermt2ps zmm3,zmm17,zmm6
  a12975:	62 f1 7c 48 10 6a 02 	vmovups zmm5,ZMMWORD PTR [rdx+0x80]
  a1297c:	62 f1 7c 48 10 72 03 	vmovups zmm6,ZMMWORD PTR [rdx+0xc0]
  a12983:	62 71 7c 48 10 52 04 	vmovups zmm10,ZMMWORD PTR [rdx+0x100]
  a1298a:	62 71 7c 48 10 5a 05 	vmovups zmm11,ZMMWORD PTR [rdx+0x140]
  a12991:	62 71 34 48 59 e5    	vmulps zmm12,zmm9,zmm5
  a12997:	62 72 7d 48 bc e6    	vfnmadd231ps zmm12,zmm0,zmm6
  a1299d:	62 51 44 48 59 ea    	vmulps zmm13,zmm7,zmm10
  a129a3:	62 52 65 48 bc eb    	vfnmadd231ps zmm13,zmm3,zmm11
  a129a9:	62 51 1c 48 58 f5    	vaddps zmm14,zmm12,zmm13
  a129af:	62 f1 7c 48 59 c5    	vmulps zmm0,zmm0,zmm5
  a129b5:	62 d2 4d 48 b8 c1    	vfmadd231ps zmm0,zmm6,zmm9
  a129bb:	62 d1 64 48 59 da    	vmulps zmm3,zmm3,zmm10
  a129c1:	62 f2 25 48 b8 df    	vfmadd231ps zmm3,zmm11,zmm7
  a129c7:	62 f1 7c 48 58 eb    	vaddps zmm5,zmm0,zmm3
  a129cd:	62 f1 7c 48 28 f1    	vmovaps zmm6,zmm1
  a129d3:	62 f2 0d 48 ac f4    	vfnmadd213ps zmm6,zmm14,zmm4
  a129d9:	62 f1 7c 48 5c c3    	vsubps zmm0,zmm0,zmm3
  a129df:	62 f1 7c 48 59 c2    	vmulps zmm0,zmm0,zmm2
  a129e5:	62 f1 4c 48 58 d8    	vaddps zmm3,zmm6,zmm0
  a129eb:	62 d2 55 48 ac c8    	vfnmadd213ps zmm1,zmm5,zmm8
  a129f1:	62 d1 1c 48 5c fd    	vsubps zmm7,zmm12,zmm13
  a129f7:	62 f1 44 48 59 d2    	vmulps zmm2,zmm7,zmm2
  a129fd:	62 f1 74 48 5c fa    	vsubps zmm7,zmm1,zmm2
  a12a03:	62 f1 4c 48 5c c0    	vsubps zmm0,zmm6,zmm0
  a12a09:	62 f1 74 48 58 ca    	vaddps zmm1,zmm1,zmm2
  a12a0f:	62 f1 3c 48 58 d5    	vaddps zmm2,zmm8,zmm5
  a12a15:	62 d1 5c 48 58 e6    	vaddps zmm4,zmm4,zmm14
  a12a1b:	62 f1 7c 48 28 2d 1b 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff67c81b]        # 8f240 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c6f0>
  a12a22:	c8 67 ff 
  a12a25:	62 f2 55 48 7f d4    	vpermt2ps zmm2,zmm5,zmm4
  a12a2b:	62 f3 7d 48 19 56 02 	vextractf32x4 XMMWORD PTR [rsi+0x20],zmm2,0x2
  a12a32:	02 
  a12a33:	c5 fc 11 16          	vmovups YMMWORD PTR [rsi],ymm2
  a12a37:	62 f2 55 48 7f fb    	vpermt2ps zmm7,zmm5,zmm3
  a12a3d:	62 f3 7d 48 19 7e 05 	vextractf32x4 XMMWORD PTR [rsi+0x50],zmm7,0x2
  a12a44:	02 
  a12a45:	c5 fc 11 7e 30       	vmovups YMMWORD PTR [rsi+0x30],ymm7
  a12a4a:	62 f2 55 48 7f c8    	vpermt2ps zmm1,zmm5,zmm0
  a12a50:	62 f3 7d 48 19 4e 08 	vextractf32x4 XMMWORD PTR [rsi+0x80],zmm1,0x2
  a12a57:	02 
  a12a58:	c5 fc 11 4e 60       	vmovups YMMWORD PTR [rsi+0x60],ymm1
  a12a5d:	c5 f8 77             	vzeroupper
  a12a60:	c3                   	ret
