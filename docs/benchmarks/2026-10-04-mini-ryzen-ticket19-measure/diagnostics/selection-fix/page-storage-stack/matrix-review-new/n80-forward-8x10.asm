
target/ticket19/selection-fix/page-storage-stack/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b11e80 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  b11e80:	48 81 ec 08 01 00 00 	sub    rsp,0x108
  b11e87:	c5 fc 10 07          	vmovups ymm0,YMMWORD PTR [rdi]
  b11e8b:	c5 fc 10 4f 20       	vmovups ymm1,YMMWORD PTR [rdi+0x20]
  b11e90:	c5 fc c6 d1 88       	vshufps ymm2,ymm0,ymm1,0x88
  b11e95:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  b11e9b:	c5 fc c6 c1 dd       	vshufps ymm0,ymm0,ymm1,0xdd
  b11ea0:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  b11ea6:	c5 fc 10 4f 50       	vmovups ymm1,YMMWORD PTR [rdi+0x50]
  b11eab:	c5 fc 10 5f 70       	vmovups ymm3,YMMWORD PTR [rdi+0x70]
  b11eb0:	c5 f4 c6 e3 88       	vshufps ymm4,ymm1,ymm3,0x88
  b11eb5:	c4 e3 fd 01 e4 d8    	vpermpd ymm4,ymm4,0xd8
  b11ebb:	c5 f4 c6 cb dd       	vshufps ymm1,ymm1,ymm3,0xdd
  b11ec0:	c4 e3 fd 01 c9 d8    	vpermpd ymm1,ymm1,0xd8
  b11ec6:	c5 fc 10 9f a0 00 00 	vmovups ymm3,YMMWORD PTR [rdi+0xa0]
  b11ecd:	00 
  b11ece:	c5 fc 10 af c0 00 00 	vmovups ymm5,YMMWORD PTR [rdi+0xc0]
  b11ed5:	00 
  b11ed6:	c5 e4 c6 f5 88       	vshufps ymm6,ymm3,ymm5,0x88
  b11edb:	c4 e3 fd 01 f6 d8    	vpermpd ymm6,ymm6,0xd8
  b11ee1:	c5 e4 c6 dd dd       	vshufps ymm3,ymm3,ymm5,0xdd
  b11ee6:	c4 e3 fd 01 db d8    	vpermpd ymm3,ymm3,0xd8
  b11eec:	c5 fc 10 af f0 00 00 	vmovups ymm5,YMMWORD PTR [rdi+0xf0]
  b11ef3:	00 
  b11ef4:	c5 fc 10 bf 10 01 00 	vmovups ymm7,YMMWORD PTR [rdi+0x110]
  b11efb:	00 
  b11efc:	c5 54 c6 c7 88       	vshufps ymm8,ymm5,ymm7,0x88
  b11f01:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  b11f07:	c5 d4 c6 ef dd       	vshufps ymm5,ymm5,ymm7,0xdd
  b11f0c:	c4 63 fd 01 cd d8    	vpermpd ymm9,ymm5,0xd8
  b11f12:	c5 fc 10 af 40 01 00 	vmovups ymm5,YMMWORD PTR [rdi+0x140]
  b11f19:	00 
  b11f1a:	c5 fc 10 bf 60 01 00 	vmovups ymm7,YMMWORD PTR [rdi+0x160]
  b11f21:	00 
  b11f22:	c5 54 c6 d7 88       	vshufps ymm10,ymm5,ymm7,0x88
  b11f27:	c4 43 fd 01 d2 d8    	vpermpd ymm10,ymm10,0xd8
  b11f2d:	c5 d4 c6 ef dd       	vshufps ymm5,ymm5,ymm7,0xdd
  b11f32:	c4 63 fd 01 dd d8    	vpermpd ymm11,ymm5,0xd8
  b11f38:	c5 fc 10 af 90 01 00 	vmovups ymm5,YMMWORD PTR [rdi+0x190]
  b11f3f:	00 
  b11f40:	c5 fc 10 bf b0 01 00 	vmovups ymm7,YMMWORD PTR [rdi+0x1b0]
  b11f47:	00 
  b11f48:	c5 54 c6 e7 88       	vshufps ymm12,ymm5,ymm7,0x88
  b11f4d:	c4 43 fd 01 e4 d8    	vpermpd ymm12,ymm12,0xd8
  b11f53:	c5 d4 c6 ef dd       	vshufps ymm5,ymm5,ymm7,0xdd
  b11f58:	c4 e3 fd 01 fd d8    	vpermpd ymm7,ymm5,0xd8
  b11f5e:	c5 fc 10 af e0 01 00 	vmovups ymm5,YMMWORD PTR [rdi+0x1e0]
  b11f65:	00 
  b11f66:	c5 7c 10 af 00 02 00 	vmovups ymm13,YMMWORD PTR [rdi+0x200]
  b11f6d:	00 
  b11f6e:	c4 41 54 c6 f5 88    	vshufps ymm14,ymm5,ymm13,0x88
  b11f74:	c4 43 fd 01 f6 d8    	vpermpd ymm14,ymm14,0xd8
  b11f7a:	c4 c1 54 c6 ed dd    	vshufps ymm5,ymm5,ymm13,0xdd
  b11f80:	c4 63 fd 01 ed d8    	vpermpd ymm13,ymm5,0xd8
  b11f86:	c5 fc 10 af 30 02 00 	vmovups ymm5,YMMWORD PTR [rdi+0x230]
  b11f8d:	00 
  b11f8e:	c5 7c 10 bf 50 02 00 	vmovups ymm15,YMMWORD PTR [rdi+0x250]
  b11f95:	00 
  b11f96:	62 c1 54 28 c6 c7 88 	vshufps ymm16,ymm5,ymm15,0x88
  b11f9d:	62 a3 fd 28 01 c0 d8 	vpermpd ymm16,ymm16,0xd8
  b11fa4:	c4 c1 54 c6 ef dd    	vshufps ymm5,ymm5,ymm15,0xdd
  b11faa:	c4 63 fd 01 fd d8    	vpermpd ymm15,ymm5,0xd8
  b11fb0:	62 c1 6c 28 58 ca    	vaddps ymm17,ymm2,ymm10
  b11fb6:	62 c1 4c 28 58 d6    	vaddps ymm18,ymm6,ymm14
  b11fbc:	62 a1 74 20 58 da    	vaddps ymm19,ymm17,ymm18
  b11fc2:	62 c1 5c 28 58 e4    	vaddps ymm20,ymm4,ymm12
  b11fc8:	62 a1 3c 28 58 e8    	vaddps ymm21,ymm8,ymm16
  b11fce:	62 a1 5c 20 58 f5    	vaddps ymm22,ymm20,ymm21
  b11fd4:	62 a1 64 20 58 fe    	vaddps ymm23,ymm19,ymm22
  b11fda:	62 41 7c 28 58 c3    	vaddps ymm24,ymm0,ymm11
  b11fe0:	62 41 64 28 58 cd    	vaddps ymm25,ymm3,ymm13
  b11fe6:	62 01 3c 20 58 d1    	vaddps ymm26,ymm24,ymm25
  b11fec:	62 61 74 28 58 df    	vaddps ymm27,ymm1,ymm7
  b11ff2:	62 41 34 28 58 e7    	vaddps ymm28,ymm9,ymm15
  b11ff8:	62 01 24 20 58 ec    	vaddps ymm29,ymm27,ymm28
  b11ffe:	62 91 2c 20 58 ed    	vaddps ymm5,ymm26,ymm29
  b12004:	c4 c1 6c 5c d2       	vsubps ymm2,ymm2,ymm10
  b12009:	c4 c1 64 5c dd       	vsubps ymm3,ymm3,ymm13
  b1200e:	c5 6c 58 d3          	vaddps ymm10,ymm2,ymm3
  b12012:	c4 c1 5c 5c e4       	vsubps ymm4,ymm4,ymm12
  b12017:	c5 f4 5c cf          	vsubps ymm1,ymm1,ymm7
  b1201b:	c5 5c 58 e1          	vaddps ymm12,ymm4,ymm1
  b1201f:	c4 e2 7d 18 3d 34 32 	vbroadcastss ymm7,DWORD PTR [rip+0xffffffffff563234]        # 7525c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x283c>
  b12026:	56 ff 
  b12028:	c5 1c 59 e7          	vmulps ymm12,ymm12,ymm7
  b1202c:	c4 41 34 5c cf       	vsubps ymm9,ymm9,ymm15
  b12031:	62 31 3c 28 5c c0    	vsubps ymm8,ymm8,ymm16
  b12037:	c4 41 34 5c e8       	vsubps ymm13,ymm9,ymm8
  b1203c:	c5 14 59 ef          	vmulps ymm13,ymm13,ymm7
  b12040:	c4 41 1c 58 fd       	vaddps ymm15,ymm12,ymm13
  b12045:	62 c1 2c 28 58 c7    	vaddps ymm16,ymm10,ymm15
  b1204b:	c4 c1 7c 5c c3       	vsubps ymm0,ymm0,ymm11
  b12050:	c5 8c 5c f6          	vsubps ymm6,ymm14,ymm6
  b12054:	c5 4c 58 d8          	vaddps ymm11,ymm6,ymm0
  b12058:	c5 f4 5c cc          	vsubps ymm1,ymm1,ymm4
  b1205c:	c5 f4 59 cf          	vmulps ymm1,ymm1,ymm7
  b12060:	c4 c1 3c 58 e1       	vaddps ymm4,ymm8,ymm9
  b12065:	c5 dc 59 e7          	vmulps ymm4,ymm4,ymm7
  b12069:	c5 74 5c c4          	vsubps ymm8,ymm1,ymm4
  b1206d:	c4 41 24 58 f0       	vaddps ymm14,ymm11,ymm8
  b12072:	62 31 74 20 5c ca    	vsubps ymm9,ymm17,ymm18
  b12078:	62 81 24 20 5c cc    	vsubps ymm17,ymm27,ymm28
  b1207e:	62 a1 34 28 58 d1    	vaddps ymm18,ymm9,ymm17
  b12084:	62 01 3c 20 5c c1    	vsubps ymm24,ymm24,ymm25
  b1208a:	62 a1 54 20 5c e4    	vsubps ymm20,ymm21,ymm20
  b12090:	62 81 5c 20 58 e8    	vaddps ymm21,ymm20,ymm24
  b12096:	c5 ec 5c d3          	vsubps ymm2,ymm2,ymm3
  b1209a:	c5 f4 58 cc          	vaddps ymm1,ymm1,ymm4
  b1209e:	c5 ec 58 e1          	vaddps ymm4,ymm2,ymm1
  b120a2:	c5 fc 5c c6          	vsubps ymm0,ymm0,ymm6
  b120a6:	c4 c1 14 5c dc       	vsubps ymm3,ymm13,ymm12
  b120ab:	c5 7c 58 eb          	vaddps ymm13,ymm0,ymm3
  b120af:	62 b1 64 20 5c f6    	vsubps ymm6,ymm19,ymm22
  b120b5:	62 81 2c 20 5c dd    	vsubps ymm19,ymm26,ymm29
  b120bb:	c4 41 2c 5c d7       	vsubps ymm10,ymm10,ymm15
  b120c0:	c4 41 24 5c c0       	vsubps ymm8,ymm11,ymm8
  b120c5:	62 31 34 28 5c c9    	vsubps ymm9,ymm9,ymm17
  b120cb:	62 31 3c 20 5c fc    	vsubps ymm15,ymm24,ymm20
  b120d1:	c5 6c 5c d9          	vsubps ymm11,ymm2,ymm1
  b120d5:	62 e1 7c 28 5c cb    	vsubps ymm17,ymm0,ymm3
  b120db:	62 f3 45 20 18 c6 01 	vinsertf32x4 ymm0,ymm23,xmm6,0x1
  b120e2:	c5 fc 11 04 24       	vmovups YMMWORD PTR [rsp],ymm0
  b120e7:	62 f3 c5 20 23 f6 03 	vshuff64x2 ymm6,ymm23,ymm6,0x3
  b120ee:	62 d3 7d 20 18 ca 01 	vinsertf32x4 ymm1,ymm16,xmm10,0x1
  b120f5:	c5 fc 11 4c 24 e0    	vmovups YMMWORD PTR [rsp-0x20],ymm1
  b120fb:	62 53 fd 20 23 d2 03 	vshuff64x2 ymm10,ymm16,ymm10,0x3
  b12102:	62 d3 6d 20 18 d1 01 	vinsertf32x4 ymm2,ymm18,xmm9,0x1
  b12109:	c5 fc 11 54 24 40    	vmovups YMMWORD PTR [rsp+0x40],ymm2
  b1210f:	62 53 ed 20 23 c9 03 	vshuff64x2 ymm9,ymm18,ymm9,0x3
  b12116:	c4 c3 5d 18 db 01    	vinsertf128 ymm3,ymm4,xmm11,0x1
  b1211c:	c5 fc 11 5c 24 20    	vmovups YMMWORD PTR [rsp+0x20],ymm3
  b12122:	c4 c3 5d 06 e3 31    	vperm2f128 ymm4,ymm4,ymm11,0x31
  b12128:	c4 41 4d 14 d9       	vunpcklpd ymm11,ymm6,ymm9
  b1212d:	c4 c1 4d 15 f1       	vunpckhpd ymm6,ymm6,ymm9
  b12132:	c5 2d 14 e4          	vunpcklpd ymm12,ymm10,ymm4
  b12136:	c5 ad 15 e4          	vunpckhpd ymm4,ymm10,ymm4
  b1213a:	c4 c1 24 c6 fc 88    	vshufps ymm7,ymm11,ymm12,0x88
  b12140:	c5 fc 11 bc 24 c0 00 	vmovups YMMWORD PTR [rsp+0xc0],ymm7
  b12147:	00 00 
  b12149:	c4 c1 24 c6 fc dd    	vshufps ymm7,ymm11,ymm12,0xdd
  b1214f:	c5 fc 11 bc 24 a0 00 	vmovups YMMWORD PTR [rsp+0xa0],ymm7
  b12156:	00 00 
  b12158:	c5 cc c6 fc 88       	vshufps ymm7,ymm6,ymm4,0x88
  b1215d:	c5 fc 11 bc 24 80 00 	vmovups YMMWORD PTR [rsp+0x80],ymm7
  b12164:	00 00 
  b12166:	c5 cc c6 e4 dd       	vshufps ymm4,ymm6,ymm4,0xdd
  b1216b:	c5 fc 11 64 24 60    	vmovups YMMWORD PTR [rsp+0x60],ymm4
  b12171:	62 b3 55 28 18 e3 01 	vinsertf32x4 ymm4,ymm5,xmm19,0x1
  b12178:	c5 fc 11 64 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm4
  b1217e:	62 a3 d5 28 23 c3 03 	vshuff64x2 ymm16,ymm5,ymm19,0x3
  b12185:	c4 c3 0d 18 e8 01    	vinsertf128 ymm5,ymm14,xmm8,0x1
  b1218b:	c5 fc 11 ac 24 e0 00 	vmovups YMMWORD PTR [rsp+0xe0],ymm5
  b12192:	00 00 
  b12194:	c4 43 0d 06 f0 31    	vperm2f128 ymm14,ymm14,ymm8,0x31
  b1219a:	62 d3 55 20 18 f7 01 	vinsertf32x4 ymm6,ymm21,xmm15,0x1
  b121a1:	c5 fc 11 74 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm6
  b121a7:	62 53 d5 20 23 ff 03 	vshuff64x2 ymm15,ymm21,ymm15,0x3
  b121ae:	62 b3 15 28 18 f9 01 	vinsertf32x4 ymm7,ymm13,xmm17,0x1
  b121b5:	c5 fc 11 7c 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm7
  b121bb:	62 33 95 28 23 e9 03 	vshuff64x2 ymm13,ymm13,ymm17,0x3
  b121c2:	62 c1 fd 20 14 cf    	vunpcklpd ymm17,ymm16,ymm15
  b121c8:	62 c1 fd 20 15 c7    	vunpckhpd ymm16,ymm16,ymm15
  b121ce:	c4 41 0d 14 fd       	vunpcklpd ymm15,ymm14,ymm13
  b121d3:	62 c1 8d 28 15 d5    	vunpckhpd ymm18,ymm14,ymm13
  b121d9:	62 51 74 20 c6 ef 88 	vshufps ymm13,ymm17,ymm15,0x88
  b121e0:	62 51 74 20 c6 f7 dd 	vshufps ymm14,ymm17,ymm15,0xdd
  b121e7:	62 31 7c 20 c6 fa 88 	vshufps ymm15,ymm16,ymm18,0x88
  b121ee:	62 a1 7c 20 c6 c2 dd 	vshufps ymm16,ymm16,ymm18,0xdd
  b121f5:	62 e1 dd 28 15 d6    	vunpckhpd ymm18,ymm4,ymm6
  b121fb:	62 e1 d5 28 15 df    	vunpckhpd ymm19,ymm5,ymm7
  b12201:	62 a1 6c 20 c6 cb dd 	vshufps ymm17,ymm18,ymm19,0xdd
  b12208:	62 a1 6c 20 c6 d3 88 	vshufps ymm18,ymm18,ymm19,0x88
  b1220f:	62 e1 fd 28 15 e2    	vunpckhpd ymm20,ymm0,ymm2
  b12215:	62 e1 f5 28 15 eb    	vunpckhpd ymm21,ymm1,ymm3
  b1221b:	62 a1 5c 20 c6 dd dd 	vshufps ymm19,ymm20,ymm21,0xdd
  b12222:	62 a1 5c 20 c6 e5 88 	vshufps ymm20,ymm20,ymm21,0x88
  b12229:	62 e1 7c 08 10 6f 04 	vmovups xmm21,XMMWORD PTR [rdi+0x40]
  b12230:	62 23 55 00 21 e5 9c 	vinsertps xmm28,xmm21,xmm21,0x9c
  b12237:	62 01 3c 00 57 c0    	vxorps xmm24,xmm24,xmm24
  b1223d:	62 81 54 00 c6 e8 dd 	vshufps xmm21,xmm21,xmm24,0xdd
  b12244:	62 e1 7c 08 10 77 09 	vmovups xmm22,XMMWORD PTR [rdi+0x90]
  b1224b:	62 23 4d 00 21 f6 9c 	vinsertps xmm30,xmm22,xmm22,0x9c
  b12252:	62 01 4c 00 c6 f8 dd 	vshufps xmm31,xmm22,xmm24,0xdd
  b12259:	62 e1 7c 08 10 7f 0e 	vmovups xmm23,XMMWORD PTR [rdi+0xe0]
  b12260:	62 a3 45 00 21 f7 9c 	vinsertps xmm22,xmm23,xmm23,0x9c
  b12267:	62 01 44 00 c6 c8 dd 	vshufps xmm25,xmm23,xmm24,0xdd
  b1226e:	62 e1 7c 08 10 7f 13 	vmovups xmm23,XMMWORD PTR [rdi+0x130]
  b12275:	62 33 45 00 21 df 9c 	vinsertps xmm11,xmm23,xmm23,0x9c
  b1227c:	62 11 44 00 c6 d0 dd 	vshufps xmm10,xmm23,xmm24,0xdd
  b12283:	62 e1 7c 08 10 7f 18 	vmovups xmm23,XMMWORD PTR [rdi+0x180]
  b1228a:	62 33 45 00 21 c7 9c 	vinsertps xmm8,xmm23,xmm23,0x9c
  b12291:	62 81 44 00 c6 f8 dd 	vshufps xmm23,xmm23,xmm24,0xdd
  b12298:	62 61 7c 08 10 57 1d 	vmovups xmm26,XMMWORD PTR [rdi+0x1d0]
  b1229f:	62 93 2d 00 21 fa 9c 	vinsertps xmm7,xmm26,xmm26,0x9c
  b122a6:	62 91 2c 00 c6 f0 dd 	vshufps xmm6,xmm26,xmm24,0xdd
  b122ad:	62 61 7c 08 10 5f 22 	vmovups xmm27,XMMWORD PTR [rdi+0x220]
  b122b4:	62 03 25 00 21 d3 9c 	vinsertps xmm26,xmm27,xmm27,0x9c
  b122bb:	62 01 24 00 c6 d8 dd 	vshufps xmm27,xmm27,xmm24,0xdd
  b122c2:	62 61 7c 08 10 6f 27 	vmovups xmm29,XMMWORD PTR [rdi+0x270]
  b122c9:	62 91 14 00 c6 e0 dd 	vshufps xmm4,xmm29,xmm24,0xdd
  b122d0:	62 93 15 00 21 ed 9c 	vinsertps xmm5,xmm29,xmm29,0x9c
  b122d7:	62 41 1c 20 58 c0    	vaddps ymm24,ymm28,ymm8
  b122dd:	62 91 4c 20 58 d2    	vaddps ymm2,ymm22,ymm26
  b122e3:	62 f1 3c 20 58 ca    	vaddps ymm1,ymm24,ymm2
  b122e9:	62 61 0c 20 58 ef    	vaddps ymm29,ymm30,ymm7
  b122ef:	c5 24 58 e5          	vaddps ymm12,ymm11,ymm5
  b122f3:	62 d1 14 20 58 c4    	vaddps ymm0,ymm29,ymm12
  b122f9:	c5 f4 58 d8          	vaddps ymm3,ymm1,ymm0
  b122fd:	c5 f0 5c c0          	vsubps xmm0,xmm1,xmm0
  b12301:	c4 e3 65 18 d8 01    	vinsertf128 ymm3,ymm3,xmm0,0x1
  b12307:	62 f1 3c 20 5c ca    	vsubps ymm1,ymm24,ymm2
  b1230d:	62 71 04 20 58 ce    	vaddps ymm9,ymm31,ymm6
  b12313:	c5 ac 58 d4          	vaddps ymm2,ymm10,ymm4
  b12317:	62 61 34 28 5c c2    	vsubps ymm24,ymm9,ymm2
  b1231d:	62 91 74 28 58 c0    	vaddps ymm0,ymm1,ymm24
  b12323:	62 91 74 08 5c c8    	vsubps xmm1,xmm1,xmm24
  b12329:	c4 e3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm1,0x1
  b1232f:	62 61 e5 28 14 c0    	vunpcklpd ymm24,ymm3,ymm0
  b12335:	62 d1 1c 20 5c c0    	vsubps ymm0,ymm28,ymm8
  b1233b:	62 f1 0c 20 5c cf    	vsubps ymm1,ymm30,ymm7
  b12341:	62 f1 04 20 5c de    	vsubps ymm3,ymm31,ymm6
  b12347:	c5 ac 5c e4          	vsubps ymm4,ymm10,ymm4
  b1234b:	c5 a4 5c ed          	vsubps ymm5,ymm11,ymm5
  b1234f:	c5 f4 58 f3          	vaddps ymm6,ymm1,ymm3
  b12353:	c4 62 7d 18 1d 00 2f 	vbroadcastss ymm11,DWORD PTR [rip+0xffffffffff562f00]        # 7525c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x283c>
  b1235a:	56 ff 
  b1235c:	62 41 4c 28 59 e3    	vmulps ymm28,ymm6,ymm11
  b12362:	c5 dc 5c f5          	vsubps ymm6,ymm4,ymm5
  b12366:	62 41 4c 28 59 f3    	vmulps ymm30,ymm6,ymm11
  b1236c:	62 91 34 20 5c f3    	vsubps ymm6,ymm25,ymm27
  b12372:	c5 fc 58 fe          	vaddps ymm7,ymm0,ymm6
  b12376:	62 11 1c 20 58 c6    	vaddps ymm8,ymm28,ymm30
  b1237c:	c5 3c 58 d7          	vaddps ymm10,ymm8,ymm7
  b12380:	c4 c1 40 5c f8       	vsubps xmm7,xmm7,xmm8
  b12385:	c4 e3 2d 18 ff 01    	vinsertf128 ymm7,ymm10,xmm7,0x1
  b1238b:	c5 fc 5c c6          	vsubps ymm0,ymm0,ymm6
  b1238f:	c5 e4 5c c9          	vsubps ymm1,ymm3,ymm1
  b12393:	c5 d4 58 dc          	vaddps ymm3,ymm5,ymm4
  b12397:	c5 a4 59 c9          	vmulps ymm1,ymm11,ymm1
  b1239b:	c5 a4 59 db          	vmulps ymm3,ymm11,ymm3
  b1239f:	c5 f4 58 e3          	vaddps ymm4,ymm1,ymm3
  b123a3:	c5 fc 58 ec          	vaddps ymm5,ymm0,ymm4
  b123a7:	c5 f8 5c c4          	vsubps xmm0,xmm0,xmm4
  b123ab:	c4 e3 55 18 c0 01    	vinsertf128 ymm0,ymm5,xmm0,0x1
  b123b1:	c5 c5 14 c0          	vunpcklpd ymm0,ymm7,ymm0
  b123b5:	62 91 34 20 58 e3    	vaddps ymm4,ymm25,ymm27
  b123bb:	c5 b4 58 d2          	vaddps ymm2,ymm9,ymm2
  b123bf:	62 b1 54 20 58 ef    	vaddps ymm5,ymm21,ymm23
  b123c5:	c5 d4 58 f4          	vaddps ymm6,ymm5,ymm4
  b123c9:	c5 cc 58 fa          	vaddps ymm7,ymm6,ymm2
  b123cd:	c5 c8 5c d2          	vsubps xmm2,xmm6,xmm2
  b123d1:	c4 e3 45 18 d2 01    	vinsertf128 ymm2,ymm7,xmm2,0x1
  b123d7:	62 91 1c 28 5c f5    	vsubps ymm6,ymm12,ymm29
  b123dd:	c5 d4 5c e4          	vsubps ymm4,ymm5,ymm4
  b123e1:	c5 cc 58 ec          	vaddps ymm5,ymm6,ymm4
  b123e5:	c5 d8 5c e6          	vsubps xmm4,xmm4,xmm6
  b123e9:	c4 e3 55 18 e4 01    	vinsertf128 ymm4,ymm5,xmm4,0x1
  b123ef:	c5 ed 14 d4          	vunpcklpd ymm2,ymm2,ymm4
  b123f3:	62 b1 2c 20 5c e6    	vsubps ymm4,ymm26,ymm22
  b123f9:	62 b1 54 20 5c ef    	vsubps ymm5,ymm21,ymm23
  b123ff:	c5 dc 58 f5          	vaddps ymm6,ymm4,ymm5
  b12403:	c5 f4 5c cb          	vsubps ymm1,ymm1,ymm3
  b12407:	c5 cc 58 d9          	vaddps ymm3,ymm6,ymm1
  b1240b:	c5 c8 5c c9          	vsubps xmm1,xmm6,xmm1
  b1240f:	62 e3 7d 28 04 74 24 	vpermilps ymm22,YMMWORD PTR [rsp+0xc0],0xd8
  b12416:	06 d8 
  b12418:	c4 e3 7d 04 bc 24 a0 	vpermilps ymm7,YMMWORD PTR [rsp+0xa0],0xd8
  b1241f:	00 00 00 d8 
  b12423:	62 e3 7d 28 04 6c 24 	vpermilps ymm21,YMMWORD PTR [rsp+0x80],0xd8
  b1242a:	04 d8 
  b1242c:	c4 63 7d 04 64 24 60 	vpermilps ymm12,YMMWORD PTR [rsp+0x60],0xd8
  b12433:	d8 
  b12434:	62 41 14 28 c6 ed d8 	vshufps ymm29,ymm13,ymm13,0xd8
  b1243b:	c4 41 0c c6 ce d8    	vshufps ymm9,ymm14,ymm14,0xd8
  b12441:	62 c1 04 28 c6 ff d8 	vshufps ymm23,ymm15,ymm15,0xd8
  b12448:	62 31 7c 20 c6 f0 d8 	vshufps ymm14,ymm16,ymm16,0xd8
  b1244f:	62 31 74 20 c6 d1 d8 	vshufps ymm10,ymm17,ymm17,0xd8
  b12456:	62 21 6c 20 c6 da d8 	vshufps ymm27,ymm18,ymm18,0xd8
  b1245d:	62 31 64 20 c6 eb d8 	vshufps ymm13,ymm19,ymm19,0xd8
  b12464:	62 21 5c 20 c6 cc d8 	vshufps ymm25,ymm20,ymm20,0xd8
  b1246b:	c4 e3 65 18 c9 01    	vinsertf128 ymm1,ymm3,xmm1,0x1
  b12471:	62 f1 3c 20 c6 d8 dd 	vshufps ymm3,ymm24,ymm0,0xdd
  b12478:	c5 64 c6 db d8       	vshufps ymm11,ymm3,ymm3,0xd8
  b1247d:	c5 d4 5c dc          	vsubps ymm3,ymm5,ymm4
  b12481:	62 91 0c 20 5c e4    	vsubps ymm4,ymm30,ymm28
  b12487:	c5 e4 58 ec          	vaddps ymm5,ymm3,ymm4
  b1248b:	c5 e0 5c dc          	vsubps xmm3,xmm3,xmm4
  b1248f:	c4 e3 55 18 db 01    	vinsertf128 ymm3,ymm5,xmm3,0x1
  b12495:	c5 f5 14 cb          	vunpcklpd ymm1,ymm1,ymm3
  b12499:	c5 ec c6 d9 dd       	vshufps ymm3,ymm2,ymm1,0xdd
  b1249e:	c5 64 c6 fb d8       	vshufps ymm15,ymm3,ymm3,0xd8
  b124a3:	62 f1 3c 20 c6 c0 88 	vshufps ymm0,ymm24,ymm0,0x88
  b124aa:	62 61 7c 28 c6 e0 d8 	vshufps ymm28,ymm0,ymm0,0xd8
  b124b1:	c5 ec c6 c1 88       	vshufps ymm0,ymm2,ymm1,0x88
  b124b6:	62 61 7c 28 c6 f0 d8 	vshufps ymm30,ymm0,ymm0,0xd8
  b124bd:	c5 fc 10 04 24       	vmovups ymm0,YMMWORD PTR [rsp]
  b124c2:	c5 fd 14 44 24 40    	vunpcklpd ymm0,ymm0,YMMWORD PTR [rsp+0x40]
  b124c8:	c5 fc 10 4c 24 e0    	vmovups ymm1,YMMWORD PTR [rsp-0x20]
  b124ce:	c5 f5 14 4c 24 20    	vunpcklpd ymm1,ymm1,YMMWORD PTR [rsp+0x20]
  b124d4:	c5 fc c6 d1 dd       	vshufps ymm2,ymm0,ymm1,0xdd
  b124d9:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  b124de:	c5 fc 10 5c 24 80    	vmovups ymm3,YMMWORD PTR [rsp-0x80]
  b124e4:	c5 e5 14 64 24 c0    	vunpcklpd ymm4,ymm3,YMMWORD PTR [rsp-0x40]
  b124ea:	c5 fc 10 9c 24 e0 00 	vmovups ymm3,YMMWORD PTR [rsp+0xe0]
  b124f1:	00 00 
  b124f3:	c5 e5 14 6c 24 a0    	vunpcklpd ymm5,ymm3,YMMWORD PTR [rsp-0x60]
  b124f9:	c5 dc c6 dd dd       	vshufps ymm3,ymm4,ymm5,0xdd
  b124fe:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  b12503:	c5 fc c6 c1 88       	vshufps ymm0,ymm0,ymm1,0x88
  b12508:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  b1250d:	c5 fc 11 44 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm0
  b12513:	c5 dc c6 cd 88       	vshufps ymm1,ymm4,ymm5,0x88
  b12518:	c5 f4 c6 c1 d8       	vshufps ymm0,ymm1,ymm1,0xd8
  b1251d:	c5 fc 11 44 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm0
  b12523:	62 e1 7c 28 10 4a 02 	vmovups ymm17,YMMWORD PTR [rdx+0x40]
  b1252a:	62 e1 7c 28 10 42 03 	vmovups ymm16,YMMWORD PTR [rdx+0x60]
  b12531:	c5 7c 10 82 80 00 00 	vmovups ymm8,YMMWORD PTR [rdx+0x80]
  b12538:	00 
  b12539:	62 61 7c 28 10 42 05 	vmovups ymm24,YMMWORD PTR [rdx+0xa0]
  b12540:	62 61 7c 28 10 52 06 	vmovups ymm26,YMMWORD PTR [rdx+0xc0]
  b12547:	c5 fc 10 a2 e0 00 00 	vmovups ymm4,YMMWORD PTR [rdx+0xe0]
  b1254e:	00 
  b1254f:	c5 fc 10 b2 00 01 00 	vmovups ymm6,YMMWORD PTR [rdx+0x100]
  b12556:	00 
  b12557:	62 e1 7c 28 10 52 09 	vmovups ymm18,YMMWORD PTR [rdx+0x120]
  b1255e:	62 f1 4c 20 59 ee    	vmulps ymm5,ymm22,ymm6
  b12564:	62 b2 15 20 bc ea    	vfnmadd231ps ymm5,ymm29,ymm18
  b1256a:	62 f1 14 20 59 f6    	vmulps ymm6,ymm29,ymm6
  b12570:	62 e1 7c 28 10 62 0c 	vmovups ymm20,YMMWORD PTR [rdx+0x180]
  b12577:	62 b2 4d 20 b8 f2    	vfmadd231ps ymm6,ymm22,ymm18
  b1257d:	62 61 7c 28 10 6a 0d 	vmovups ymm29,YMMWORD PTR [rdx+0x1a0]
  b12584:	62 a1 54 20 59 dc    	vmulps ymm19,ymm21,ymm20
  b1258a:	62 82 45 20 bc dd    	vfnmadd231ps ymm19,ymm23,ymm29
  b12590:	62 a1 44 20 59 d4    	vmulps ymm18,ymm23,ymm20
  b12596:	62 e1 7c 28 10 72 0a 	vmovups ymm22,YMMWORD PTR [rdx+0x140]
  b1259d:	62 82 55 20 b8 d5    	vfmadd231ps ymm18,ymm21,ymm29
  b125a3:	62 e1 7c 28 10 7a 0b 	vmovups ymm23,YMMWORD PTR [rdx+0x160]
  b125aa:	62 c1 34 20 59 e0    	vmulps ymm20,ymm25,ymm8
  b125b0:	62 82 25 20 bc e0    	vfnmadd231ps ymm20,ymm27,ymm24
  b125b6:	62 c1 24 20 59 e8    	vmulps ymm21,ymm27,ymm8
  b125bc:	c5 7c 10 82 00 02 00 	vmovups ymm8,YMMWORD PTR [rdx+0x200]
  b125c3:	00 
  b125c4:	62 82 35 20 b8 e8    	vfmadd231ps ymm21,ymm25,ymm24
  b125ca:	62 61 7c 28 10 5a 11 	vmovups ymm27,YMMWORD PTR [rdx+0x220]
  b125d1:	62 41 1c 20 59 c0    	vmulps ymm24,ymm28,ymm8
  b125d7:	62 02 0d 20 bc c3    	vfnmadd231ps ymm24,ymm30,ymm27
  b125dd:	62 41 0c 20 59 c8    	vmulps ymm25,ymm30,ymm8
  b125e3:	c5 7c 10 82 c0 01 00 	vmovups ymm8,YMMWORD PTR [rdx+0x1c0]
  b125ea:	00 
  b125eb:	62 02 1d 20 b8 cb    	vfmadd231ps ymm25,ymm28,ymm27
  b125f1:	62 61 7c 28 10 6a 0f 	vmovups ymm29,YMMWORD PTR [rdx+0x1e0]
  b125f8:	62 41 0c 28 59 d8    	vmulps ymm27,ymm14,ymm8
  b125fe:	62 02 1d 28 b8 dd    	vfmadd231ps ymm27,ymm12,ymm29
  b12604:	62 41 1c 28 59 f0    	vmulps ymm30,ymm12,ymm8
  b1260a:	62 01 5c 20 5c e0    	vsubps ymm28,ymm20,ymm24
  b12610:	62 02 0d 28 bc f5    	vfnmadd231ps ymm30,ymm14,ymm29
  b12616:	c4 62 7d 18 05 f9 2f 	vbroadcastss ymm8,DWORD PTR [rip+0xffffffffff562ff9]        # 75618 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bf8>
  b1261d:	56 ff 
  b1261f:	62 01 2c 28 59 ea    	vmulps ymm29,ymm10,ymm26
  b12625:	62 62 15 28 b8 ec    	vfmadd231ps ymm29,ymm13,ymm4
  b1262b:	62 11 14 28 59 ea    	vmulps ymm13,ymm13,ymm26
  b12631:	c5 7c 10 a2 60 02 00 	vmovups ymm12,YMMWORD PTR [rdx+0x260]
  b12638:	00 
  b12639:	c4 62 2d bc ec       	vfnmadd231ps ymm13,ymm10,ymm4
  b1263e:	c5 fc 10 a2 40 02 00 	vmovups ymm4,YMMWORD PTR [rdx+0x240]
  b12645:	00 
  b12646:	62 61 04 28 59 fc    	vmulps ymm31,ymm15,ymm4
  b1264c:	62 42 25 28 b8 fc    	vfmadd231ps ymm31,ymm11,ymm12
  b12652:	c5 a4 59 c4          	vmulps ymm0,ymm11,ymm4
  b12656:	62 21 54 28 5c d3    	vsubps ymm26,ymm5,ymm19
  b1265c:	c4 c2 05 bc c4       	vfnmadd231ps ymm0,ymm15,ymm12
  b12661:	62 d1 2c 20 59 e0    	vmulps ymm4,ymm26,ymm8
  b12667:	62 b1 64 28 59 c9    	vmulps ymm1,ymm3,ymm17
  b1266d:	62 b2 6d 28 b8 c8    	vfmadd231ps ymm1,ymm2,ymm16
  b12673:	62 a1 6c 28 59 c9    	vmulps ymm17,ymm2,ymm17
  b12679:	c4 62 7d 18 1d de 2b 	vbroadcastss ymm11,DWORD PTR [rip+0xffffffffff562bde]        # 75260 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2840>
  b12680:	56 ff 
  b12682:	62 d2 1d 20 b8 e3    	vfmadd231ps ymm4,ymm28,ymm11
  b12688:	62 a2 65 28 bc c8    	vfnmadd231ps ymm17,ymm3,ymm16
  b1268e:	62 31 4c 28 58 e2    	vaddps ymm12,ymm6,ymm18
  b12694:	c5 7c 11 64 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm12
  b1269a:	62 b1 34 28 59 de    	vmulps ymm3,ymm9,ymm22
  b126a0:	62 b2 45 28 b8 df    	vfmadd231ps ymm3,ymm7,ymm23
  b126a6:	62 b1 44 28 59 fe    	vmulps ymm7,ymm7,ymm22
  b126ac:	62 11 54 20 58 d1    	vaddps ymm10,ymm21,ymm25
  b126b2:	62 b2 35 28 bc ff    	vfnmadd231ps ymm7,ymm9,ymm23
  b126b8:	62 e2 7d 28 18 35 e6 	vbroadcastss ymm22,DWORD PTR [rip+0xffffffffff562ee6]        # 755a8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b88>
  b126bf:	2e 56 ff 
  b126c2:	62 31 7c 28 28 fe    	vmovaps ymm15,ymm22
  b126c8:	c5 fc 10 54 24 a0    	vmovups ymm2,YMMWORD PTR [rsp-0x60]
  b126ce:	c4 62 2d a8 fa       	vfmadd213ps ymm15,ymm10,ymm2
  b126d3:	62 b1 54 28 58 eb    	vaddps ymm5,ymm5,ymm19
  b126d9:	62 e2 7d 28 18 05 21 	vbroadcastss ymm16,DWORD PTR [rip+0xffffffffff562e21]        # 75504 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2ae4>
  b126e0:	2e 56 ff 
  b126e3:	62 32 1d 28 bc f8    	vfnmadd231ps ymm15,ymm12,ymm16
  b126e9:	62 11 5c 20 58 c8    	vaddps ymm9,ymm20,ymm24
  b126ef:	62 71 04 20 58 e1    	vaddps ymm12,ymm31,ymm1
  b126f5:	62 81 54 20 5c e9    	vsubps ymm21,ymm21,ymm25
  b126fb:	62 11 24 20 58 f5    	vaddps ymm14,ymm27,ymm29
  b12701:	62 a1 4c 28 5c fa    	vsubps ymm23,ymm6,ymm18
  b12707:	62 21 7c 28 5c c1    	vsubps ymm24,ymm0,ymm17
  b1270d:	62 b1 7c 28 58 f1    	vaddps ymm6,ymm0,ymm17
  b12713:	62 d1 0c 20 5c c5    	vsubps ymm0,ymm30,ymm13
  b12719:	62 51 0c 20 58 ed    	vaddps ymm13,ymm30,ymm13
  b1271f:	62 a1 7c 28 28 ce    	vmovaps ymm17,ymm22
  b12725:	62 e2 0d 28 a8 cb    	vfmadd213ps ymm17,ymm14,ymm3
  b1272b:	62 a2 1d 28 bc c8    	vfnmadd231ps ymm17,ymm12,ymm16
  b12731:	62 01 24 20 5c cd    	vsubps ymm25,ymm27,ymm29
  b12737:	62 c1 3c 20 59 d0    	vmulps ymm18,ymm24,ymm8
  b1273d:	62 c2 7d 28 b8 d3    	vfmadd231ps ymm18,ymm0,ymm11
  b12743:	62 f1 04 20 5c c9    	vsubps ymm1,ymm31,ymm1
  b12749:	62 a1 7c 28 28 de    	vmovaps ymm19,ymm22
  b1274f:	62 61 7c 28 10 6c 24 	vmovups ymm29,YMMWORD PTR [rsp-0x40]
  b12756:	fe 
  b12757:	62 82 35 28 a8 dd    	vfmadd213ps ymm19,ymm9,ymm29
  b1275d:	62 a2 55 28 bc d8    	vfnmadd231ps ymm19,ymm5,ymm16
  b12763:	62 41 1c 20 59 d8    	vmulps ymm27,ymm28,ymm8
  b12769:	62 02 25 28 bc da    	vfnmadd231ps ymm27,ymm11,ymm26
  b1276f:	62 c1 44 20 59 e0    	vmulps ymm20,ymm23,ymm8
  b12775:	62 c2 55 20 b8 e3    	vfmadd231ps ymm20,ymm21,ymm11
  b1277b:	c5 bc 59 c0          	vmulps ymm0,ymm8,ymm0
  b1277f:	62 92 25 28 bc c0    	vfnmadd231ps ymm0,ymm11,ymm24
  b12785:	62 21 7c 28 28 c6    	vmovaps ymm24,ymm22
  b1278b:	62 62 15 28 a8 c7    	vfmadd213ps ymm24,ymm13,ymm7
  b12791:	62 22 4d 28 bc c0    	vfnmadd231ps ymm24,ymm6,ymm16
  b12797:	62 c1 54 20 59 e8    	vmulps ymm21,ymm21,ymm8
  b1279d:	62 a2 25 28 bc ef    	vfnmadd231ps ymm21,ymm11,ymm23
  b127a3:	62 c1 74 28 59 f8    	vmulps ymm23,ymm1,ymm8
  b127a9:	62 c2 35 20 b8 fb    	vfmadd231ps ymm23,ymm25,ymm11
  b127af:	62 51 34 20 59 c0    	vmulps ymm8,ymm25,ymm8
  b127b5:	62 21 7c 28 28 c8    	vmovaps ymm25,ymm16
  b127bb:	62 61 7c 28 28 f2    	vmovaps ymm30,ymm2
  b127c1:	62 62 2d 28 ac ca    	vfnmadd213ps ymm25,ymm10,ymm2
  b127c7:	c5 fc 10 54 24 80    	vmovups ymm2,YMMWORD PTR [rsp-0x80]
  b127cd:	62 22 6d 28 b8 ce    	vfmadd231ps ymm25,ymm2,ymm22
  b127d3:	c4 42 75 bc c3       	vfnmadd231ps ymm8,ymm1,ymm11
  b127d8:	62 b1 7c 28 28 c8    	vmovaps ymm1,ymm16
  b127de:	c4 e2 0d ac cb       	vfnmadd213ps ymm1,ymm14,ymm3
  b127e3:	62 b2 1d 28 b8 ce    	vfmadd231ps ymm1,ymm12,ymm22
  b127e9:	62 31 7c 28 28 d8    	vmovaps ymm11,ymm16
  b127ef:	62 12 35 28 ac dd    	vfnmadd213ps ymm11,ymm9,ymm29
  b127f5:	62 32 55 28 b8 de    	vfmadd231ps ymm11,ymm5,ymm22
  b127fb:	62 e2 15 28 ac c7    	vfnmadd213ps ymm16,ymm13,ymm7
  b12801:	62 a2 4d 28 b8 c6    	vfmadd231ps ymm16,ymm6,ymm22
  b12807:	62 81 24 20 58 f1    	vaddps ymm22,ymm27,ymm25
  b1280d:	62 01 34 20 5c cb    	vsubps ymm25,ymm25,ymm27
  b12813:	62 61 74 28 58 d0    	vaddps ymm26,ymm1,ymm0
  b12819:	62 61 74 28 5c d8    	vsubps ymm27,ymm1,ymm0
  b1281f:	62 21 24 28 5c e5    	vsubps ymm28,ymm11,ymm21
  b12825:	62 31 24 28 58 dd    	vaddps ymm11,ymm11,ymm21
  b1282b:	62 c1 7c 20 5c e8    	vsubps ymm21,ymm16,ymm8
  b12831:	62 51 7c 20 58 c0    	vaddps ymm8,ymm16,ymm8
  b12837:	c5 84 58 cc          	vaddps ymm1,ymm15,ymm4
  b1283b:	c5 04 5c fc          	vsubps ymm15,ymm15,ymm4
  b1283f:	62 a1 74 20 58 c2    	vaddps ymm16,ymm17,ymm18
  b12845:	62 a1 74 20 5c ca    	vsubps ymm17,ymm17,ymm18
  b1284b:	62 a1 64 20 5c d4    	vsubps ymm18,ymm19,ymm20
  b12851:	62 a1 64 20 58 dc    	vaddps ymm19,ymm19,ymm20
  b12857:	62 a1 3c 20 5c e7    	vsubps ymm20,ymm24,ymm23
  b1285d:	62 a1 3c 20 58 ff    	vaddps ymm23,ymm24,ymm23
  b12863:	62 91 2c 28 58 c6    	vaddps ymm0,ymm10,ymm30
  b12869:	62 61 6c 28 58 c0    	vaddps ymm24,ymm2,ymm0
  b1286f:	c5 8c 58 c3          	vaddps ymm0,ymm14,ymm3
  b12873:	c5 1c 58 e0          	vaddps ymm12,ymm12,ymm0
  b12877:	62 d1 14 20 58 c1    	vaddps ymm0,ymm29,ymm9
  b1287d:	c5 7c 58 f5          	vaddps ymm14,ymm0,ymm5
  b12881:	62 b1 74 28 5c e0    	vsubps ymm4,ymm1,ymm16
  b12887:	c5 94 58 d7          	vaddps ymm2,ymm13,ymm7
  b1288b:	62 b1 6c 20 5c c4    	vsubps ymm0,ymm18,ymm20
  b12891:	c5 ec 58 f6          	vaddps ymm6,ymm2,ymm6
  b12895:	62 11 4c 20 58 ca    	vaddps ymm9,ymm22,ymm26
  b1289b:	62 31 74 28 58 e8    	vaddps ymm13,ymm1,ymm16
  b128a1:	62 b1 1c 20 58 cd    	vaddps ymm1,ymm28,ymm21
  b128a7:	62 b1 6c 20 58 dc    	vaddps ymm3,ymm18,ymm20
  b128ad:	62 81 34 20 5c c3    	vsubps ymm16,ymm25,ymm27
  b128b3:	62 81 4c 20 5c d2    	vsubps ymm18,ymm22,ymm26
  b128b9:	c4 c1 24 5c d0       	vsubps ymm2,ymm11,ymm8
  b128be:	62 b1 1c 20 5c fd    	vsubps ymm7,ymm28,ymm21
  b128c4:	62 a1 04 28 58 e1    	vaddps ymm20,ymm15,ymm17
  b128ca:	62 81 34 20 58 eb    	vaddps ymm21,ymm25,ymm27
  b128d0:	62 b1 64 20 58 ef    	vaddps ymm5,ymm19,ymm23
  b128d6:	c4 41 24 58 d0       	vaddps ymm10,ymm11,ymm8
  b128db:	62 c1 3c 20 5c f4    	vsubps ymm22,ymm24,ymm12
  b128e1:	62 31 04 28 5c f9    	vsubps ymm15,ymm15,ymm17
  b128e7:	c5 0c 5c c6          	vsubps ymm8,ymm14,ymm6
  b128eb:	62 31 64 20 5c df    	vsubps ymm11,ymm19,ymm23
  b128f1:	62 51 3c 20 58 e4    	vaddps ymm12,ymm24,ymm12
  b128f7:	c5 0c 58 f6          	vaddps ymm14,ymm14,ymm6
  b128fb:	c5 fc 28 35 5d 2e 56 	vmovaps ymm6,YMMWORD PTR [rip+0xffffffffff562e5d]        # 75760 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2d40>
  b12902:	ff 
  b12903:	62 c1 7c 28 28 ce    	vmovaps ymm17,ymm14
  b12909:	62 c2 4d 28 7f cc    	vpermt2ps ymm17,ymm6,ymm12
  b1290f:	62 e1 7c 28 28 1d 87 	vmovaps ymm19,YMMWORD PTR [rip+0xffffffffff564787]        # 770a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4680>
  b12916:	47 56 ff 
  b12919:	62 52 65 20 7f f4    	vpermt2ps ymm14,ymm19,ymm12
  b1291f:	c4 41 7c 28 e3       	vmovaps ymm12,ymm11
  b12924:	62 52 4d 28 7f e7    	vpermt2ps ymm12,ymm6,ymm15
  b1292a:	62 52 65 20 7f df    	vpermt2ps ymm11,ymm19,ymm15
  b12930:	c4 41 7c 28 fa       	vmovaps ymm15,ymm10
  b12935:	62 32 4d 28 7f fd    	vpermt2ps ymm15,ymm6,ymm21
  b1293b:	62 32 65 20 7f d5    	vpermt2ps ymm10,ymm19,ymm21
  b12941:	62 e1 7c 28 28 ef    	vmovaps ymm21,ymm7
  b12947:	62 a2 4d 28 7f ea    	vpermt2ps ymm21,ymm6,ymm18
  b1294d:	62 b2 65 20 7f fa    	vpermt2ps ymm7,ymm19,ymm18
  b12953:	62 e1 7c 28 28 d3    	vmovaps ymm18,ymm3
  b12959:	62 c2 4d 28 7f d5    	vpermt2ps ymm18,ymm6,ymm13
  b1295f:	62 d2 65 20 7f dd    	vpermt2ps ymm3,ymm19,ymm13
  b12965:	c4 41 7c 28 e8       	vmovaps ymm13,ymm8
  b1296a:	62 32 4d 28 7f ee    	vpermt2ps ymm13,ymm6,ymm22
  b12970:	62 32 65 20 7f c6    	vpermt2ps ymm8,ymm19,ymm22
  b12976:	62 e1 7c 28 28 f5    	vmovaps ymm22,ymm5
  b1297c:	62 a2 4d 28 7f f4    	vpermt2ps ymm22,ymm6,ymm20
  b12982:	62 b2 65 20 7f ec    	vpermt2ps ymm5,ymm19,ymm20
  b12988:	62 e1 7c 28 28 e2    	vmovaps ymm20,ymm2
  b1298e:	62 a2 4d 28 7f e0    	vpermt2ps ymm20,ymm6,ymm16
  b12994:	62 b2 65 20 7f d0    	vpermt2ps ymm2,ymm19,ymm16
  b1299a:	62 e1 7c 28 28 c1    	vmovaps ymm16,ymm1
  b129a0:	62 c2 4d 28 7f c1    	vpermt2ps ymm16,ymm6,ymm9
  b129a6:	62 d2 65 20 7f c9    	vpermt2ps ymm1,ymm19,ymm9
  b129ac:	62 f2 7d 28 77 f4    	vpermi2ps ymm6,ymm0,ymm4
  b129b2:	62 f2 65 20 7f c4    	vpermt2ps ymm0,ymm19,ymm4
  b129b8:	c5 7c 11 36          	vmovups YMMWORD PTR [rsi],ymm14
  b129bc:	62 e1 7c 28 11 4e 01 	vmovups YMMWORD PTR [rsi+0x20],ymm17
  b129c3:	c5 7c 11 5e 40       	vmovups YMMWORD PTR [rsi+0x40],ymm11
  b129c8:	c5 7c 11 66 60       	vmovups YMMWORD PTR [rsi+0x60],ymm12
  b129cd:	c5 7c 11 96 80 00 00 	vmovups YMMWORD PTR [rsi+0x80],ymm10
  b129d4:	00 
  b129d5:	c5 7c 11 be a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm15
  b129dc:	00 
  b129dd:	c5 fc 11 be c0 00 00 	vmovups YMMWORD PTR [rsi+0xc0],ymm7
  b129e4:	00 
  b129e5:	62 e1 7c 28 11 6e 07 	vmovups YMMWORD PTR [rsi+0xe0],ymm21
  b129ec:	c5 fc 11 9e 00 01 00 	vmovups YMMWORD PTR [rsi+0x100],ymm3
  b129f3:	00 
  b129f4:	62 e1 7c 28 11 56 09 	vmovups YMMWORD PTR [rsi+0x120],ymm18
  b129fb:	c5 7c 11 86 40 01 00 	vmovups YMMWORD PTR [rsi+0x140],ymm8
  b12a02:	00 
  b12a03:	c5 7c 11 ae 60 01 00 	vmovups YMMWORD PTR [rsi+0x160],ymm13
  b12a0a:	00 
  b12a0b:	c5 fc 11 ae 80 01 00 	vmovups YMMWORD PTR [rsi+0x180],ymm5
  b12a12:	00 
  b12a13:	62 e1 7c 28 11 76 0d 	vmovups YMMWORD PTR [rsi+0x1a0],ymm22
  b12a1a:	c5 fc 11 96 c0 01 00 	vmovups YMMWORD PTR [rsi+0x1c0],ymm2
  b12a21:	00 
  b12a22:	62 e1 7c 28 11 66 0f 	vmovups YMMWORD PTR [rsi+0x1e0],ymm20
  b12a29:	c5 fc 11 8e 00 02 00 	vmovups YMMWORD PTR [rsi+0x200],ymm1
  b12a30:	00 
  b12a31:	62 e1 7c 28 11 46 11 	vmovups YMMWORD PTR [rsi+0x220],ymm16
  b12a38:	c5 fc 11 86 40 02 00 	vmovups YMMWORD PTR [rsi+0x240],ymm0
  b12a3f:	00 
  b12a40:	c5 fc 11 b6 60 02 00 	vmovups YMMWORD PTR [rsi+0x260],ymm6
  b12a47:	00 
  b12a48:	48 81 c4 08 01 00 00 	add    rsp,0x108
  b12a4f:	c5 f8 77             	vzeroupper
  b12a52:	c3                   	ret
  b12a53:	cc                   	int3
  b12a54:	cc                   	int3
  b12a55:	cc                   	int3
  b12a56:	cc                   	int3
  b12a57:	cc                   	int3
  b12a58:	cc                   	int3
  b12a59:	cc                   	int3
  b12a5a:	cc                   	int3
  b12a5b:	cc                   	int3
  b12a5c:	cc                   	int3
  b12a5d:	cc                   	int3
  b12a5e:	cc                   	int3
  b12a5f:	cc                   	int3
  b12a60:	cc                   	int3
  b12a61:	cc                   	int3
  b12a62:	cc                   	int3
  b12a63:	cc                   	int3
  b12a64:	cc                   	int3
  b12a65:	cc                   	int3
  b12a66:	cc                   	int3
  b12a67:	cc                   	int3
  b12a68:	cc                   	int3
  b12a69:	cc                   	int3
  b12a6a:	cc                   	int3
  b12a6b:	cc                   	int3
  b12a6c:	cc                   	int3
  b12a6d:	cc                   	int3
  b12a6e:	cc                   	int3
  b12a6f:	cc                   	int3
  b12a70:	cc                   	int3
  b12a71:	cc                   	int3
  b12a72:	cc                   	int3
  b12a73:	cc                   	int3
  b12a74:	cc                   	int3
  b12a75:	cc                   	int3
  b12a76:	cc                   	int3
  b12a77:	cc                   	int3
  b12a78:	cc                   	int3
  b12a79:	cc                   	int3
  b12a7a:	cc                   	int3
  b12a7b:	cc                   	int3
  b12a7c:	cc                   	int3
  b12a7d:	cc                   	int3
  b12a7e:	cc                   	int3
  b12a7f:	cc                   	int3
