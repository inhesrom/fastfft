
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a29dc0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a29dc0:	48 81 ec 88 09 00 00 	sub    rsp,0x988
  a29dc7:	62 f1 7c 48 28 15 2f 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff66692f]        # 90700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1dbb0>
  a29dce:	69 66 ff 
  a29dd1:	62 f1 7c 48 10 0f    	vmovups zmm1,ZMMWORD PTR [rdi]
  a29dd7:	62 71 7c 48 10 47 01 	vmovups zmm8,ZMMWORD PTR [rdi+0x40]
  a29dde:	62 f1 7c 48 10 77 02 	vmovups zmm6,ZMMWORD PTR [rdi+0x80]
  a29de5:	62 71 7c 48 10 57 03 	vmovups zmm10,ZMMWORD PTR [rdi+0xc0]
  a29dec:	62 71 7c 48 28 e9    	vmovaps zmm13,zmm1
  a29df2:	62 52 6d 48 7f e8    	vpermt2ps zmm13,zmm2,zmm8
  a29df8:	62 71 7c 48 10 67 04 	vmovups zmm12,ZMMWORD PTR [rdi+0x100]
  a29dff:	62 e1 7c 48 10 57 05 	vmovups zmm18,ZMMWORD PTR [rdi+0x140]
  a29e06:	62 d1 7c 48 28 ec    	vmovaps zmm5,zmm12
  a29e0c:	62 b2 6d 48 7f ea    	vpermt2ps zmm5,zmm2,zmm18
  a29e12:	62 71 7c 48 10 77 08 	vmovups zmm14,ZMMWORD PTR [rdi+0x200]
  a29e19:	62 e1 7c 48 10 5f 09 	vmovups zmm19,ZMMWORD PTR [rdi+0x240]
  a29e20:	62 d1 7c 48 28 fe    	vmovaps zmm7,zmm14
  a29e26:	62 b2 6d 48 7f fb    	vpermt2ps zmm7,zmm2,zmm19
  a29e2c:	62 e1 54 48 58 e7    	vaddps zmm20,zmm5,zmm7
  a29e32:	62 31 14 48 58 dc    	vaddps zmm11,zmm13,zmm20
  a29e38:	62 f1 7c 48 10 67 06 	vmovups zmm4,ZMMWORD PTR [rdi+0x180]
  a29e3f:	62 71 7c 48 10 7f 07 	vmovups zmm15,ZMMWORD PTR [rdi+0x1c0]
  a29e46:	62 e1 7c 48 28 ec    	vmovaps zmm21,zmm4
  a29e4c:	62 c2 6d 48 7f ef    	vpermt2ps zmm21,zmm2,zmm15
  a29e52:	62 e1 7c 48 10 47 0a 	vmovups zmm16,ZMMWORD PTR [rdi+0x280]
  a29e59:	62 e1 7c 48 10 77 0b 	vmovups zmm22,ZMMWORD PTR [rdi+0x2c0]
  a29e60:	62 31 7c 48 28 c8    	vmovaps zmm9,zmm16
  a29e66:	62 32 6d 48 7f ce    	vpermt2ps zmm9,zmm2,zmm22
  a29e6c:	62 d2 4d 48 77 d2    	vpermi2ps zmm2,zmm6,zmm10
  a29e72:	62 e1 34 48 58 fa    	vaddps zmm23,zmm9,zmm2
  a29e78:	62 21 54 40 58 cf    	vaddps zmm25,zmm21,zmm23
  a29e7e:	62 01 24 48 58 d1    	vaddps zmm26,zmm11,zmm25
  a29e84:	62 f1 7c 48 28 05 f2 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff69d0f2]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a29e8b:	d0 69 ff 
  a29e8e:	c5 e0 57 db          	vxorps xmm3,xmm3,xmm3
  a29e92:	62 01 7c 48 28 c2    	vmovaps zmm24,zmm26
  a29e98:	62 e2 7d 48 18 0d be 	vbroadcastss zmm17,DWORD PTR [rip+0xffffffffff64b5be]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a29e9f:	b5 64 ff 
  a29ea2:	62 62 7d 48 7f c3    	vpermt2ps zmm24,zmm0,zmm3
  a29ea8:	62 61 7c 48 11 04 24 	vmovups ZMMWORD PTR [rsp],zmm24
  a29eaf:	62 32 75 40 bc ec    	vfnmadd231ps zmm13,zmm17,zmm20
  a29eb5:	62 61 7c 48 28 1d 81 	vmovaps zmm27,ZMMWORD PTR [rip+0xffffffffff666881]        # 90740 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1dbf0>
  a29ebc:	68 66 ff 
  a29ebf:	62 32 25 40 7f e2    	vpermt2ps zmm12,zmm27,zmm18
  a29ec5:	62 32 25 40 7f f3    	vpermt2ps zmm14,zmm27,zmm19
  a29ecb:	62 c1 1c 48 5c d6    	vsubps zmm18,zmm12,zmm14
  a29ed1:	62 e2 7d 48 18 1d f9 	vbroadcastss zmm19,DWORD PTR [rip+0xffffffffff64b3f9]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a29ed8:	b3 64 ff 
  a29edb:	62 a1 6c 40 59 d3    	vmulps zmm18,zmm18,zmm19
  a29ee1:	62 a1 14 48 5c e2    	vsubps zmm20,zmm13,zmm18
  a29ee7:	62 a2 75 40 bc ef    	vfnmadd231ps zmm21,zmm17,zmm23
  a29eed:	62 a2 25 40 7f c6    	vpermt2ps zmm16,zmm27,zmm22
  a29ef3:	62 d2 25 40 7f f2    	vpermt2ps zmm6,zmm27,zmm10
  a29ef9:	62 71 7c 40 5c d6    	vsubps zmm10,zmm16,zmm6
  a29eff:	62 31 2c 48 59 d3    	vmulps zmm10,zmm10,zmm19
  a29f05:	62 c1 54 40 5c f2    	vsubps zmm22,zmm21,zmm10
  a29f0b:	62 21 5c 40 58 c6    	vaddps zmm24,zmm20,zmm22
  a29f11:	62 61 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm24
  a29f18:	fe 
  a29f19:	62 62 7d 48 7f c3    	vpermt2ps zmm24,zmm0,zmm3
  a29f1f:	62 61 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm24
  a29f26:	07 
  a29f27:	62 c1 6c 40 58 d5    	vaddps zmm18,zmm18,zmm13
  a29f2d:	62 a1 2c 48 58 ed    	vaddps zmm21,zmm10,zmm21
  a29f33:	62 21 6c 40 58 fd    	vaddps zmm31,zmm18,zmm21
  a29f39:	62 11 7c 48 28 d7    	vmovaps zmm10,zmm31
  a29f3f:	62 72 7d 48 7f d3    	vpermt2ps zmm10,zmm0,zmm3
  a29f45:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm10
  a29f4c:	03 
  a29f4d:	c4 41 10 57 ed       	vxorps xmm13,xmm13,xmm13
  a29f52:	62 52 7d 48 7f ed    	vpermt2ps zmm13,zmm0,zmm13
  a29f58:	62 21 5c 40 5c ee    	vsubps zmm29,zmm20,zmm22
  a29f5e:	62 11 7c 48 28 d5    	vmovaps zmm10,zmm29
  a29f64:	62 72 7d 48 7f d3    	vpermt2ps zmm10,zmm0,zmm3
  a29f6a:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm10
  a29f71:	02 
  a29f72:	62 a1 6c 40 5c d5    	vsubps zmm18,zmm18,zmm21
  a29f78:	62 31 7c 48 28 d2    	vmovaps zmm10,zmm18
  a29f7e:	62 a1 7c 48 28 f2    	vmovaps zmm22,zmm18
  a29f84:	62 72 7d 48 7f d3    	vpermt2ps zmm10,zmm0,zmm3
  a29f8a:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm10
  a29f91:	05 
  a29f92:	62 11 24 48 5c d9    	vsubps zmm11,zmm11,zmm25
  a29f98:	62 51 7c 48 28 d3    	vmovaps zmm10,zmm11
  a29f9e:	62 72 7d 48 7f d3    	vpermt2ps zmm10,zmm0,zmm3
  a29fa4:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm10
  a29fab:	01 
  a29fac:	62 d2 25 40 7f c8    	vpermt2ps zmm1,zmm27,zmm8
  a29fb2:	62 51 1c 48 58 c6    	vaddps zmm8,zmm12,zmm14
  a29fb8:	62 51 74 48 58 f0    	vaddps zmm14,zmm1,zmm8
  a29fbe:	62 d2 25 40 7f e7    	vpermt2ps zmm4,zmm27,zmm15
  a29fc4:	62 f1 7c 40 58 f6    	vaddps zmm6,zmm16,zmm6
  a29fca:	62 e1 5c 48 58 d6    	vaddps zmm18,zmm4,zmm6
  a29fd0:	62 21 0c 48 58 da    	vaddps zmm27,zmm14,zmm18
  a29fd6:	62 e1 7c 48 28 2d e0 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff69cfe0]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a29fdd:	cf 69 ff 
  a29fe0:	62 81 7c 48 28 c3    	vmovaps zmm16,zmm27
  a29fe6:	62 e2 55 40 7f c3    	vpermt2ps zmm16,zmm21,zmm3
  a29fec:	62 d2 75 40 bc c8    	vfnmadd231ps zmm1,zmm17,zmm8
  a29ff2:	62 f1 54 48 5c ef    	vsubps zmm5,zmm5,zmm7
  a29ff8:	62 b1 54 48 59 eb    	vmulps zmm5,zmm5,zmm19
  a29ffe:	62 f1 74 48 58 fd    	vaddps zmm7,zmm1,zmm5
  a2a004:	62 b2 4d 48 bc e1    	vfnmadd231ps zmm4,zmm6,zmm17
  a2a00a:	62 f1 34 48 5c d2    	vsubps zmm2,zmm9,zmm2
  a2a010:	62 b1 6c 48 59 d3    	vmulps zmm2,zmm2,zmm19
  a2a016:	62 f1 5c 48 58 f2    	vaddps zmm6,zmm4,zmm2
  a2a01c:	62 71 44 48 58 c6    	vaddps zmm8,zmm7,zmm6
  a2a022:	62 51 7c 48 28 e0    	vmovaps zmm12,zmm8
  a2a028:	62 51 7c 48 28 c8    	vmovaps zmm9,zmm8
  a2a02e:	62 72 55 40 7f e3    	vpermt2ps zmm12,zmm21,zmm3
  a2a034:	62 c1 7c 48 28 cc    	vmovaps zmm17,zmm12
  a2a03a:	62 71 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm12
  a2a041:	0a 
  a2a042:	62 e1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm16
  a2a049:	04 
  a2a04a:	62 f1 74 48 5c ed    	vsubps zmm5,zmm1,zmm5
  a2a050:	62 f1 5c 48 5c d2    	vsubps zmm2,zmm4,zmm2
  a2a056:	62 e1 54 48 58 fa    	vaddps zmm23,zmm5,zmm2
  a2a05c:	62 31 7c 48 28 ff    	vmovaps zmm15,zmm23
  a2a062:	62 72 55 40 7f fb    	vpermt2ps zmm15,zmm21,zmm3
  a2a068:	c4 41 38 57 c0       	vxorps xmm8,xmm8,xmm8
  a2a06d:	62 52 55 40 7f c0    	vpermt2ps zmm8,zmm21,zmm8
  a2a073:	62 61 44 48 5c ce    	vsubps zmm25,zmm7,zmm6
  a2a079:	62 91 7c 48 28 f1    	vmovaps zmm6,zmm25
  a2a07f:	62 f2 55 40 7f f3    	vpermt2ps zmm6,zmm21,zmm3
  a2a085:	62 61 54 48 5c e2    	vsubps zmm28,zmm5,zmm2
  a2a08b:	62 91 7c 48 28 cc    	vmovaps zmm1,zmm28
  a2a091:	62 f2 55 40 7f cb    	vpermt2ps zmm1,zmm21,zmm3
  a2a097:	62 f1 7c 48 28 e9    	vmovaps zmm5,zmm1
  a2a09d:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm1
  a2a0a4:	08 
  a2a0a5:	62 21 0c 48 5c f2    	vsubps zmm30,zmm14,zmm18
  a2a0ab:	62 81 7c 48 28 e6    	vmovaps zmm20,zmm30
  a2a0b1:	62 e2 55 40 7f e3    	vpermt2ps zmm20,zmm21,zmm3
  a2a0b7:	62 62 55 40 7f d3    	vpermt2ps zmm26,zmm21,zmm3
  a2a0bd:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x80]
  a2a0c4:	fe 
  a2a0c5:	62 f2 55 40 7f cb    	vpermt2ps zmm1,zmm21,zmm3
  a2a0cb:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a2a0d2:	fe 
  a2a0d3:	62 61 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm26
  a2a0da:	06 
  a2a0db:	62 62 55 40 7f fb    	vpermt2ps zmm31,zmm21,zmm3
  a2a0e1:	62 61 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm31
  a2a0e8:	ff 
  a2a0e9:	62 11 7c 48 28 e5    	vmovaps zmm12,zmm29
  a2a0ef:	62 72 55 40 7f e3    	vpermt2ps zmm12,zmm21,zmm3
  a2a0f5:	62 e2 55 40 7f f3    	vpermt2ps zmm22,zmm21,zmm3
  a2a0fb:	62 e1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm22
  a2a102:	13 
  a2a103:	62 72 55 40 7f db    	vpermt2ps zmm11,zmm21,zmm3
  a2a109:	62 71 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm12
  a2a110:	16 
  a2a111:	62 62 7d 48 7f db    	vpermt2ps zmm27,zmm0,zmm3
  a2a117:	62 51 7c 48 28 f1    	vmovaps zmm14,zmm9
  a2a11d:	62 72 7d 48 7f f3    	vpermt2ps zmm14,zmm0,zmm3
  a2a123:	62 71 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm14
  a2a12a:	14 
  a2a12b:	62 e2 7d 48 7f fb    	vpermt2ps zmm23,zmm0,zmm3
  a2a131:	62 62 7d 48 7f cb    	vpermt2ps zmm25,zmm0,zmm3
  a2a137:	62 62 7d 48 7f e3    	vpermt2ps zmm28,zmm0,zmm3
  a2a13d:	62 62 7d 48 7f f3    	vpermt2ps zmm30,zmm0,zmm3
  a2a143:	62 51 7c 48 28 d3    	vmovaps zmm10,zmm11
  a2a149:	62 71 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm11
  a2a150:	15 
  a2a151:	62 f1 7c 48 28 25 e5 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff69cde5]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a2a158:	cd 69 ff 
  a2a15b:	62 62 5d 48 7f d1    	vpermt2ps zmm26,zmm4,zmm1
  a2a161:	62 81 7c 48 28 da    	vmovaps zmm19,zmm26
  a2a167:	62 61 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x700],zmm26
  a2a16e:	1c 
  a2a16f:	62 42 5d 48 7f f8    	vpermt2ps zmm31,zmm4,zmm8
  a2a175:	62 11 7c 48 28 cf    	vmovaps zmm9,zmm31
  a2a17b:	62 61 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x740],zmm31
  a2a182:	1d 
  a2a183:	62 32 5d 48 7f e6    	vpermt2ps zmm12,zmm4,zmm22
  a2a189:	62 71 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x6c0],zmm12
  a2a190:	1b 
  a2a191:	62 52 5d 48 7f d0    	vpermt2ps zmm10,zmm4,zmm8
  a2a197:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x680],zmm10
  a2a19e:	1a 
  a2a19f:	62 a2 5d 48 7f c1    	vpermt2ps zmm16,zmm4,zmm17
  a2a1a5:	62 e1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x800],zmm16
  a2a1ac:	20 
  a2a1ad:	62 51 7c 48 28 df    	vmovaps zmm11,zmm15
  a2a1b3:	62 71 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm15
  a2a1ba:	0b 
  a2a1bb:	62 52 5d 48 7f d8    	vpermt2ps zmm11,zmm4,zmm8
  a2a1c1:	62 71 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x7c0],zmm11
  a2a1c8:	1f 
  a2a1c9:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm6
  a2a1d0:	09 
  a2a1d1:	62 f2 5d 48 7f f5    	vpermt2ps zmm6,zmm4,zmm5
  a2a1d7:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x780],zmm6
  a2a1de:	1e 
  a2a1df:	62 21 7c 48 28 d4    	vmovaps zmm26,zmm20
  a2a1e5:	62 c2 5d 48 7f e0    	vpermt2ps zmm20,zmm4,zmm8
  a2a1eb:	62 f1 7c 48 10 2c 24 	vmovups zmm5,ZMMWORD PTR [rsp]
  a2a1f2:	62 61 7c 48 28 c5    	vmovaps zmm24,zmm5
  a2a1f8:	62 71 7c 48 10 7c 24 	vmovups zmm15,ZMMWORD PTR [rsp+0x1c0]
  a2a1ff:	07 
  a2a200:	62 d2 5d 48 7f ef    	vpermt2ps zmm5,zmm4,zmm15
  a2a206:	62 f1 7c 48 11 2c 24 	vmovups ZMMWORD PTR [rsp],zmm5
  a2a20d:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0xc0]
  a2a214:	03 
  a2a215:	62 e1 7c 48 28 f3    	vmovaps zmm22,zmm3
  a2a21b:	62 d2 5d 48 7f dd    	vpermt2ps zmm3,zmm4,zmm13
  a2a221:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm3
  a2a228:	03 
  a2a229:	62 61 7c 48 10 6c 24 	vmovups zmm29,ZMMWORD PTR [rsp+0x80]
  a2a230:	02 
  a2a231:	62 81 7c 48 28 ed    	vmovaps zmm21,zmm29
  a2a237:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0x140]
  a2a23e:	05 
  a2a23f:	62 62 5d 48 7f ef    	vpermt2ps zmm29,zmm4,zmm7
  a2a245:	62 61 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm29
  a2a24c:	02 
  a2a24d:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x40]
  a2a254:	01 
  a2a255:	62 e1 7c 48 28 d2    	vmovaps zmm18,zmm2
  a2a25b:	62 d2 5d 48 7f d5    	vpermt2ps zmm2,zmm4,zmm13
  a2a261:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm2
  a2a268:	01 
  a2a269:	62 91 7c 48 28 c3    	vmovaps zmm0,zmm27
  a2a26f:	62 d2 5d 48 7f c6    	vpermt2ps zmm0,zmm4,zmm14
  a2a275:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm0
  a2a27c:	0c 
  a2a27d:	62 31 7c 48 28 f7    	vmovaps zmm14,zmm23
  a2a283:	62 52 5d 48 7f f5    	vpermt2ps zmm14,zmm4,zmm13
  a2a289:	62 71 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x880],zmm14
  a2a290:	22 
  a2a291:	62 91 7c 48 28 c9    	vmovaps zmm1,zmm25
  a2a297:	62 92 5d 48 7f cc    	vpermt2ps zmm1,zmm4,zmm28
  a2a29d:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x840],zmm1
  a2a2a4:	21 
  a2a2a5:	62 d2 0d 40 77 e5    	vpermi2ps zmm4,zmm30,zmm13
  a2a2ab:	62 e1 7c 48 28 0d 4b 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff69cb4b]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a2a2b2:	cb 69 ff 
  a2a2b5:	62 51 fd 48 15 f6    	vunpckhpd zmm14,zmm0,zmm14
  a2a2bb:	62 71 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm14
  a2a2c2:	12 
  a2a2c3:	62 f1 f5 48 15 c4    	vunpckhpd zmm0,zmm1,zmm4
  a2a2c9:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm0
  a2a2d0:	11 
  a2a2d1:	62 72 75 40 7f f0    	vpermt2ps zmm14,zmm17,zmm0
  a2a2d7:	62 61 d5 48 15 fb    	vunpckhpd zmm31,zmm5,zmm3
  a2a2dd:	62 61 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm31
  a2a2e4:	10 
  a2a2e5:	62 f1 95 40 15 c2    	vunpckhpd zmm0,zmm29,zmm2
  a2a2eb:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm0
  a2a2f2:	0f 
  a2a2f3:	62 62 75 40 7f f8    	vpermt2ps zmm31,zmm17,zmm0
  a2a2f9:	62 f1 7c 48 10 52 0d 	vmovups zmm2,ZMMWORD PTR [rdx+0x340]
  a2a300:	62 f1 7c 48 10 4a 0c 	vmovups zmm1,ZMMWORD PTR [rdx+0x300]
  a2a307:	62 f1 04 40 59 c1    	vmulps zmm0,zmm31,zmm1
  a2a30d:	62 f2 0d 48 b8 c2    	vfmadd231ps zmm0,zmm14,zmm2
  a2a313:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x940],zmm0
  a2a31a:	25 
  a2a31b:	62 f1 0c 48 59 c1    	vmulps zmm0,zmm14,zmm1
  a2a321:	62 92 6d 48 bc c7    	vfnmadd231ps zmm0,zmm2,zmm31
  a2a327:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm0
  a2a32e:	17 
  a2a32f:	62 d1 fd 40 15 cb    	vunpckhpd zmm1,zmm16,zmm11
  a2a335:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm1
  a2a33c:	0e 
  a2a33d:	62 a1 7c 48 28 c4    	vmovaps zmm16,zmm20
  a2a343:	62 b1 cd 48 15 c4    	vunpckhpd zmm0,zmm6,zmm20
  a2a349:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm0
  a2a350:	0d 
  a2a351:	62 f2 75 40 7f c8    	vpermt2ps zmm1,zmm17,zmm0
  a2a357:	62 41 e5 40 15 f9    	vunpckhpd zmm31,zmm19,zmm9
  a2a35d:	62 d1 9d 48 15 c2    	vunpckhpd zmm0,zmm12,zmm10
  a2a363:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x640],zmm0
  a2a36a:	19 
  a2a36b:	62 91 7c 48 28 d7    	vmovaps zmm2,zmm31
  a2a371:	62 f2 75 40 7f d0    	vpermt2ps zmm2,zmm17,zmm0
  a2a377:	62 b1 7c 48 28 f1    	vmovaps zmm6,zmm17
  a2a37d:	62 f1 7c 48 10 5a 1d 	vmovups zmm3,ZMMWORD PTR [rdx+0x740]
  a2a384:	62 f1 7c 48 10 42 1c 	vmovups zmm0,ZMMWORD PTR [rdx+0x700]
  a2a38b:	62 61 6c 48 59 e8    	vmulps zmm29,zmm2,zmm0
  a2a391:	62 62 75 48 b8 eb    	vfmadd231ps zmm29,zmm1,zmm3
  a2a397:	62 61 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x900],zmm29
  a2a39e:	24 
  a2a39f:	62 f1 74 48 59 c0    	vmulps zmm0,zmm1,zmm0
  a2a3a5:	62 f2 65 48 bc c2    	vfnmadd231ps zmm0,zmm3,zmm2
  a2a3ab:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x8c0],zmm0
  a2a3b2:	23 
  a2a3b3:	62 f1 7c 48 28 05 43 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff69cb43]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a2a3ba:	cb 69 ff 
  a2a3bd:	62 42 7d 48 7f c7    	vpermt2ps zmm24,zmm0,zmm15
  a2a3c3:	62 e2 7d 48 7f ef    	vpermt2ps zmm21,zmm0,zmm7
  a2a3c9:	62 61 7c 48 10 6c 24 	vmovups zmm29,ZMMWORD PTR [rsp+0x100]
  a2a3d0:	04 
  a2a3d1:	62 62 7d 48 7f 6c 24 	vpermt2ps zmm29,zmm0,ZMMWORD PTR [rsp+0x280]
  a2a3d8:	0a 
  a2a3d9:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0x240]
  a2a3e0:	09 
  a2a3e1:	62 f2 7d 48 7f 7c 24 	vpermt2ps zmm7,zmm0,ZMMWORD PTR [rsp+0x200]
  a2a3e8:	08 
  a2a3e9:	62 e1 7c 48 10 4c 24 	vmovups zmm17,ZMMWORD PTR [rsp+0x180]
  a2a3f0:	06 
  a2a3f1:	62 e2 7d 48 7f 4c 24 	vpermt2ps zmm17,zmm0,ZMMWORD PTR [rsp-0x80]
  a2a3f8:	fe 
  a2a3f9:	62 e1 7c 48 10 64 24 	vmovups zmm20,ZMMWORD PTR [rsp+0x580]
  a2a400:	16 
  a2a401:	62 e2 7d 48 7f 64 24 	vpermt2ps zmm20,zmm0,ZMMWORD PTR [rsp+0x4c0]
  a2a408:	13 
  a2a409:	62 71 7c 48 10 7c 24 	vmovups zmm15,ZMMWORD PTR [rsp+0x2c0]
  a2a410:	0b 
  a2a411:	62 52 7d 48 7f f8    	vpermt2ps zmm15,zmm0,zmm8
  a2a417:	62 42 7d 48 7f d0    	vpermt2ps zmm26,zmm0,zmm8
  a2a41d:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp-0x40]
  a2a424:	ff 
  a2a425:	62 52 7d 48 7f d0    	vpermt2ps zmm10,zmm0,zmm8
  a2a42b:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm10
  a2a432:	ff 
  a2a433:	62 71 7c 48 10 5c 24 	vmovups zmm11,ZMMWORD PTR [rsp+0x540]
  a2a43a:	15 
  a2a43b:	62 52 7d 48 7f d8    	vpermt2ps zmm11,zmm0,zmm8
  a2a441:	62 62 7d 48 7f 5c 24 	vpermt2ps zmm27,zmm0,ZMMWORD PTR [rsp+0x500]
  a2a448:	14 
  a2a449:	62 02 7d 48 7f cc    	vpermt2ps zmm25,zmm0,zmm28
  a2a44f:	62 c2 7d 48 7f f5    	vpermt2ps zmm22,zmm0,zmm13
  a2a455:	62 c2 7d 48 7f d5    	vpermt2ps zmm18,zmm0,zmm13
  a2a45b:	62 c2 7d 48 7f fd    	vpermt2ps zmm23,zmm0,zmm13
  a2a461:	62 42 7d 48 7f f5    	vpermt2ps zmm30,zmm0,zmm13
  a2a467:	62 a1 bd 40 15 de    	vunpckhpd zmm19,zmm24,zmm22
  a2a46d:	62 b1 d5 40 15 ca    	vunpckhpd zmm1,zmm21,zmm18
  a2a473:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm1
  a2a47a:	09 
  a2a47b:	62 b1 7c 48 28 c3    	vmovaps zmm0,zmm19
  a2a481:	62 f2 4d 48 7f c1    	vpermt2ps zmm0,zmm6,zmm1
  a2a487:	62 31 a5 40 15 f7    	vunpckhpd zmm14,zmm27,zmm23
  a2a48d:	62 91 b5 40 15 d6    	vunpckhpd zmm2,zmm25,zmm30
  a2a493:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm2
  a2a49a:	08 
  a2a49b:	62 d1 7c 48 28 ce    	vmovaps zmm1,zmm14
  a2a4a1:	62 f2 4d 48 7f ca    	vpermt2ps zmm1,zmm6,zmm2
  a2a4a7:	62 f1 7c 48 10 52 04 	vmovups zmm2,ZMMWORD PTR [rdx+0x100]
  a2a4ae:	62 f1 7c 48 10 5a 05 	vmovups zmm3,ZMMWORD PTR [rdx+0x140]
  a2a4b5:	62 71 74 48 59 c2    	vmulps zmm8,zmm1,zmm2
  a2a4bb:	62 72 7d 48 bc c3    	vfnmadd231ps zmm8,zmm0,zmm3
  a2a4c1:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm8
  a2a4c8:	16 
  a2a4c9:	62 f1 7c 48 59 c2    	vmulps zmm0,zmm0,zmm2
  a2a4cf:	62 f2 65 48 b8 c1    	vfmadd231ps zmm0,zmm3,zmm1
  a2a4d5:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm0
  a2a4dc:	15 
  a2a4dd:	62 d1 f5 40 15 d2    	vunpckhpd zmm2,zmm17,zmm10
  a2a4e3:	62 d1 dd 40 15 cb    	vunpckhpd zmm1,zmm20,zmm11
  a2a4e9:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x600],zmm1
  a2a4f0:	18 
  a2a4f1:	62 f1 7c 48 28 c2    	vmovaps zmm0,zmm2
  a2a4f7:	62 f2 4d 48 7f c1    	vpermt2ps zmm0,zmm6,zmm1
  a2a4fd:	62 d1 95 40 15 cf    	vunpckhpd zmm1,zmm29,zmm15
  a2a503:	62 11 c5 48 15 e2    	vunpckhpd zmm12,zmm7,zmm26
  a2a509:	62 71 7c 48 28 cf    	vmovaps zmm9,zmm7
  a2a50f:	62 f1 7c 48 28 d9    	vmovaps zmm3,zmm1
  a2a515:	62 d2 4d 48 7f dc    	vpermt2ps zmm3,zmm6,zmm12
  a2a51b:	62 71 7c 48 10 42 15 	vmovups zmm8,ZMMWORD PTR [rdx+0x540]
  a2a522:	62 71 7c 48 10 52 14 	vmovups zmm10,ZMMWORD PTR [rdx+0x500]
  a2a529:	62 51 64 48 59 ea    	vmulps zmm13,zmm3,zmm10
  a2a52f:	62 52 7d 48 bc e8    	vfnmadd231ps zmm13,zmm0,zmm8
  a2a535:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm13
  a2a53c:	14 
  a2a53d:	62 d1 7c 48 59 c2    	vmulps zmm0,zmm0,zmm10
  a2a543:	62 f2 3d 48 b8 c3    	vfmadd231ps zmm0,zmm8,zmm3
  a2a549:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm0
  a2a550:	13 
  a2a551:	62 b1 bd 40 14 c6    	vunpcklpd zmm0,zmm24,zmm22
  a2a557:	62 21 d5 40 14 e2    	vunpcklpd zmm28,zmm21,zmm18
  a2a55d:	62 b1 a5 40 14 df    	vunpcklpd zmm3,zmm27,zmm23
  a2a563:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm3
  a2a56a:	fe 
  a2a56b:	62 01 b5 40 14 de    	vunpcklpd zmm27,zmm25,zmm30
  a2a571:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm0
  a2a578:	0a 
  a2a579:	62 f1 7c 48 28 2d bd 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff69c8bd]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a2a580:	c8 69 ff 
  a2a583:	62 92 55 48 7f c4    	vpermt2ps zmm0,zmm5,zmm28
  a2a589:	62 92 55 48 7f db    	vpermt2ps zmm3,zmm5,zmm27
  a2a58f:	62 f1 7c 48 10 72 02 	vmovups zmm6,ZMMWORD PTR [rdx+0x80]
  a2a596:	62 f1 7c 48 10 7a 03 	vmovups zmm7,ZMMWORD PTR [rdx+0xc0]
  a2a59d:	62 71 64 48 59 c6    	vmulps zmm8,zmm3,zmm6
  a2a5a3:	62 72 7d 48 bc c7    	vfnmadd231ps zmm8,zmm0,zmm7
  a2a5a9:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm8
  a2a5b0:	0b 
  a2a5b1:	62 f1 7c 48 59 c6    	vmulps zmm0,zmm0,zmm6
  a2a5b7:	62 f2 45 48 b8 c3    	vfmadd231ps zmm0,zmm7,zmm3
  a2a5bd:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm0
  a2a5c4:	04 
  a2a5c5:	62 d1 95 40 14 c7    	vunpcklpd zmm0,zmm29,zmm15
  a2a5cb:	62 81 b5 48 14 ea    	vunpcklpd zmm21,zmm9,zmm26
  a2a5d1:	62 f1 f5 40 14 5c 24 	vunpcklpd zmm3,zmm17,ZMMWORD PTR [rsp-0x40]
  a2a5d8:	ff 
  a2a5d9:	62 c1 dd 40 14 cb    	vunpcklpd zmm17,zmm20,zmm11
  a2a5df:	62 71 7c 48 28 c3    	vmovaps zmm8,zmm3
  a2a5e5:	62 b2 55 48 7f d9    	vpermt2ps zmm3,zmm5,zmm17
  a2a5eb:	62 61 7c 48 28 d0    	vmovaps zmm26,zmm0
  a2a5f1:	62 b2 55 48 7f c5    	vpermt2ps zmm0,zmm5,zmm21
  a2a5f7:	62 f1 7c 48 10 72 13 	vmovups zmm6,ZMMWORD PTR [rdx+0x4c0]
  a2a5fe:	62 f1 7c 48 10 7a 12 	vmovups zmm7,ZMMWORD PTR [rdx+0x480]
  a2a605:	62 71 7c 48 59 cf    	vmulps zmm9,zmm0,zmm7
  a2a60b:	62 72 65 48 bc ce    	vfnmadd231ps zmm9,zmm3,zmm6
  a2a611:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm9
  a2a618:	07 
  a2a619:	62 f1 64 48 59 df    	vmulps zmm3,zmm3,zmm7
  a2a61f:	62 f2 4d 48 b8 d8    	vfmadd231ps zmm3,zmm6,zmm0
  a2a625:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm3
  a2a62c:	ff 
  a2a62d:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x700]
  a2a634:	1c 
  a2a635:	62 f1 fd 48 14 44 24 	vunpcklpd zmm0,zmm0,ZMMWORD PTR [rsp+0x740]
  a2a63c:	1d 
  a2a63d:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x6c0]
  a2a644:	1b 
  a2a645:	62 71 e5 48 14 54 24 	vunpcklpd zmm10,zmm3,ZMMWORD PTR [rsp+0x680]
  a2a64c:	1a 
  a2a64d:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x800]
  a2a654:	20 
  a2a655:	62 f1 e5 48 14 5c 24 	vunpcklpd zmm3,zmm3,ZMMWORD PTR [rsp+0x7c0]
  a2a65c:	1f 
  a2a65d:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x780]
  a2a664:	1e 
  a2a665:	62 a1 cd 48 14 e0    	vunpcklpd zmm20,zmm6,zmm16
  a2a66b:	62 e1 7c 48 28 d3    	vmovaps zmm18,zmm3
  a2a671:	62 b2 55 48 7f dc    	vpermt2ps zmm3,zmm5,zmm20
  a2a677:	62 61 7c 48 28 c0    	vmovaps zmm24,zmm0
  a2a67d:	62 d2 55 48 7f c2    	vpermt2ps zmm0,zmm5,zmm10
  a2a683:	62 f1 7c 48 10 72 1b 	vmovups zmm6,ZMMWORD PTR [rdx+0x6c0]
  a2a68a:	62 f1 7c 48 10 7a 1a 	vmovups zmm7,ZMMWORD PTR [rdx+0x680]
  a2a691:	62 71 7c 48 59 cf    	vmulps zmm9,zmm0,zmm7
  a2a697:	62 72 65 48 b8 ce    	vfmadd231ps zmm9,zmm3,zmm6
  a2a69d:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm9
  a2a6a4:	05 
  a2a6a5:	62 f1 64 48 59 df    	vmulps zmm3,zmm3,zmm7
  a2a6ab:	62 f2 4d 48 bc d8    	vfnmadd231ps zmm3,zmm6,zmm0
  a2a6b1:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm3
  a2a6b8:	06 
  a2a6b9:	62 f1 7c 48 10 04 24 	vmovups zmm0,ZMMWORD PTR [rsp]
  a2a6c0:	62 f1 fd 48 14 74 24 	vunpcklpd zmm6,zmm0,ZMMWORD PTR [rsp+0xc0]
  a2a6c7:	03 
  a2a6c8:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x80]
  a2a6cf:	02 
  a2a6d0:	62 71 fd 48 14 4c 24 	vunpcklpd zmm9,zmm0,ZMMWORD PTR [rsp+0x40]
  a2a6d7:	01 
  a2a6d8:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x300]
  a2a6df:	0c 
  a2a6e0:	62 f1 fd 48 14 7c 24 	vunpcklpd zmm7,zmm0,ZMMWORD PTR [rsp+0x880]
  a2a6e7:	22 
  a2a6e8:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x840]
  a2a6ef:	21 
  a2a6f0:	62 f1 fd 48 14 dc    	vunpcklpd zmm3,zmm0,zmm4
  a2a6f6:	62 61 7c 48 28 ef    	vmovaps zmm29,zmm7
  a2a6fc:	62 f2 55 48 7f fb    	vpermt2ps zmm7,zmm5,zmm3
  a2a702:	62 f1 7c 48 28 c6    	vmovaps zmm0,zmm6
  a2a708:	62 d2 55 48 7f f1    	vpermt2ps zmm6,zmm5,zmm9
  a2a70e:	62 f1 7c 48 10 62 0b 	vmovups zmm4,ZMMWORD PTR [rdx+0x2c0]
  a2a715:	62 71 7c 48 10 7a 0a 	vmovups zmm15,ZMMWORD PTR [rdx+0x280]
  a2a71c:	62 51 4c 48 59 ef    	vmulps zmm13,zmm6,zmm15
  a2a722:	62 72 45 48 b8 ec    	vfmadd231ps zmm13,zmm7,zmm4
  a2a728:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm13
  a2a72f:	0c 
  a2a730:	62 d1 44 48 59 ff    	vmulps zmm7,zmm7,zmm15
  a2a736:	62 f2 5d 48 bc fe    	vfnmadd231ps zmm7,zmm4,zmm6
  a2a73c:	62 f1 7c 48 11 3c 24 	vmovups ZMMWORD PTR [rsp],zmm7
  a2a743:	62 e2 55 48 7f 5c 24 	vpermt2ps zmm19,zmm5,ZMMWORD PTR [rsp+0x240]
  a2a74a:	09 
  a2a74b:	62 72 55 48 7f 74 24 	vpermt2ps zmm14,zmm5,ZMMWORD PTR [rsp+0x200]
  a2a752:	08 
  a2a753:	62 f2 55 48 7f 54 24 	vpermt2ps zmm2,zmm5,ZMMWORD PTR [rsp+0x600]
  a2a75a:	18 
  a2a75b:	62 d2 55 48 7f cc    	vpermt2ps zmm1,zmm5,zmm12
  a2a761:	62 71 7c 48 10 7c 24 	vmovups zmm15,ZMMWORD PTR [rsp+0x480]
  a2a768:	12 
  a2a769:	62 72 55 48 7f 7c 24 	vpermt2ps zmm15,zmm5,ZMMWORD PTR [rsp+0x440]
  a2a770:	11 
  a2a771:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x400]
  a2a778:	10 
  a2a779:	62 f2 55 48 7f 74 24 	vpermt2ps zmm6,zmm5,ZMMWORD PTR [rsp+0x3c0]
  a2a780:	0f 
  a2a781:	62 e1 7c 48 10 44 24 	vmovups zmm16,ZMMWORD PTR [rsp+0x380]
  a2a788:	0e 
  a2a789:	62 e2 55 48 7f 44 24 	vpermt2ps zmm16,zmm5,ZMMWORD PTR [rsp+0x340]
  a2a790:	0d 
  a2a791:	62 62 55 48 7f 7c 24 	vpermt2ps zmm31,zmm5,ZMMWORD PTR [rsp+0x640]
  a2a798:	19 
  a2a799:	62 f1 7c 48 10 62 07 	vmovups zmm4,ZMMWORD PTR [rdx+0x1c0]
  a2a7a0:	62 f1 7c 48 10 6a 06 	vmovups zmm5,ZMMWORD PTR [rdx+0x180]
  a2a7a7:	62 61 0c 48 59 f5    	vmulps zmm30,zmm14,zmm5
  a2a7ad:	62 62 65 40 bc f4    	vfnmadd231ps zmm30,zmm19,zmm4
  a2a7b3:	62 61 64 40 59 cd    	vmulps zmm25,zmm19,zmm5
  a2a7b9:	62 42 5d 48 b8 ce    	vfmadd231ps zmm25,zmm4,zmm14
  a2a7bf:	62 f1 7c 48 10 62 17 	vmovups zmm4,ZMMWORD PTR [rdx+0x5c0]
  a2a7c6:	62 f1 7c 48 10 7a 16 	vmovups zmm7,ZMMWORD PTR [rdx+0x580]
  a2a7cd:	62 e1 74 48 59 ff    	vmulps zmm23,zmm1,zmm7
  a2a7d3:	62 e2 6d 48 bc fc    	vfnmadd231ps zmm23,zmm2,zmm4
  a2a7d9:	62 e1 6c 48 59 f7    	vmulps zmm22,zmm2,zmm7
  a2a7df:	62 e2 5d 48 b8 f1    	vfmadd231ps zmm22,zmm4,zmm1
  a2a7e5:	62 f1 7c 48 10 4a 1f 	vmovups zmm1,ZMMWORD PTR [rdx+0x7c0]
  a2a7ec:	62 f1 7c 48 10 62 1e 	vmovups zmm4,ZMMWORD PTR [rdx+0x780]
  a2a7f3:	62 71 04 40 59 dc    	vmulps zmm11,zmm31,zmm4
  a2a7f9:	62 72 7d 40 b8 d9    	vfmadd231ps zmm11,zmm16,zmm1
  a2a7ff:	62 71 7c 40 59 e4    	vmulps zmm12,zmm16,zmm4
  a2a805:	62 12 75 48 bc e7    	vfnmadd231ps zmm12,zmm1,zmm31
  a2a80b:	62 f1 7c 48 10 4a 0f 	vmovups zmm1,ZMMWORD PTR [rdx+0x3c0]
  a2a812:	62 f1 7c 48 10 62 0e 	vmovups zmm4,ZMMWORD PTR [rdx+0x380]
  a2a819:	62 f1 7c 48 28 ee    	vmovaps zmm5,zmm6
  a2a81f:	62 f1 4c 48 59 f4    	vmulps zmm6,zmm6,zmm4
  a2a825:	62 f2 05 48 b8 f1    	vfmadd231ps zmm6,zmm15,zmm1
  a2a82b:	62 71 04 48 59 fc    	vmulps zmm15,zmm15,zmm4
  a2a831:	62 72 75 48 bc fd    	vfnmadd231ps zmm15,zmm1,zmm5
  a2a837:	62 e1 7c 48 10 44 24 	vmovups zmm16,ZMMWORD PTR [rsp+0x280]
  a2a83e:	0a 
  a2a83f:	62 f1 7c 48 28 15 b7 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff69c5b7]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a2a846:	c5 69 ff 
  a2a849:	62 82 6d 48 7f c4    	vpermt2ps zmm16,zmm2,zmm28
  a2a84f:	62 22 6d 48 7f d5    	vpermt2ps zmm26,zmm2,zmm21
  a2a855:	62 32 6d 48 7f c1    	vpermt2ps zmm8,zmm2,zmm17
  a2a85b:	62 42 6d 48 7f c2    	vpermt2ps zmm24,zmm2,zmm10
  a2a861:	62 a2 6d 48 7f d4    	vpermt2ps zmm18,zmm2,zmm20
  a2a867:	62 d2 6d 48 7f c1    	vpermt2ps zmm0,zmm2,zmm9
  a2a86d:	62 62 6d 48 7f eb    	vpermt2ps zmm29,zmm2,zmm3
  a2a873:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x80]
  a2a87a:	fe 
  a2a87b:	62 92 6d 48 7f cb    	vpermt2ps zmm1,zmm2,zmm27
  a2a881:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a2a888:	fe 
  a2a889:	62 f1 7c 48 10 4a 11 	vmovups zmm1,ZMMWORD PTR [rdx+0x440]
  a2a890:	62 f1 7c 48 10 5a 10 	vmovups zmm3,ZMMWORD PTR [rdx+0x400]
  a2a897:	62 61 3c 48 59 db    	vmulps zmm27,zmm8,zmm3
  a2a89d:	62 62 2d 40 b8 d9    	vfmadd231ps zmm27,zmm26,zmm1
  a2a8a3:	62 e1 2c 40 59 db    	vmulps zmm19,zmm26,zmm3
  a2a8a9:	62 c2 75 48 bc d8    	vfnmadd231ps zmm19,zmm1,zmm8
  a2a8af:	62 f1 7c 48 10 4a 09 	vmovups zmm1,ZMMWORD PTR [rdx+0x240]
  a2a8b6:	62 f1 7c 48 10 5a 08 	vmovups zmm3,ZMMWORD PTR [rdx+0x200]
  a2a8bd:	62 e1 14 40 59 e3    	vmulps zmm20,zmm29,zmm3
  a2a8c3:	62 e2 7d 48 bc e1    	vfnmadd231ps zmm20,zmm0,zmm1
  a2a8c9:	62 f1 7c 48 59 db    	vmulps zmm3,zmm0,zmm3
  a2a8cf:	62 92 75 48 b8 dd    	vfmadd231ps zmm3,zmm1,zmm29
  a2a8d5:	62 f1 7c 48 10 4a 19 	vmovups zmm1,ZMMWORD PTR [rdx+0x640]
  a2a8dc:	62 f1 7c 48 10 42 18 	vmovups zmm0,ZMMWORD PTR [rdx+0x600]
  a2a8e3:	62 e1 6c 40 59 e8    	vmulps zmm21,zmm18,zmm0
  a2a8e9:	62 e2 3d 40 bc e9    	vfnmadd231ps zmm21,zmm24,zmm1
  a2a8ef:	62 f1 3c 40 59 d0    	vmulps zmm2,zmm24,zmm0
  a2a8f5:	62 b2 75 48 b8 d2    	vfmadd231ps zmm2,zmm1,zmm18
  a2a8fb:	62 61 7c 48 10 64 24 	vmovups zmm28,ZMMWORD PTR [rsp+0x2c0]
  a2a902:	0b 
  a2a903:	62 f1 1c 40 5c 64 24 	vsubps zmm4,zmm28,ZMMWORD PTR [rsp+0x1c0]
  a2a90a:	07 
  a2a90b:	62 e1 14 48 5c 54 24 	vsubps zmm18,zmm13,ZMMWORD PTR [rsp+0x140]
  a2a912:	05 
  a2a913:	62 31 5c 48 5c c2    	vsubps zmm8,zmm4,zmm18
  a2a919:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x100]
  a2a920:	04 
  a2a921:	62 61 7c 48 5c 44 24 	vsubps zmm24,zmm0,ZMMWORD PTR [rsp-0x40]
  a2a928:	ff 
  a2a929:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x180]
  a2a930:	06 
  a2a931:	62 61 7c 48 5c 2c 24 	vsubps zmm29,zmm0,ZMMWORD PTR [rsp]
  a2a938:	62 72 7d 48 18 15 be 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff64adbe]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a2a93f:	ad 64 ff 
  a2a942:	62 11 3c 40 5c cd    	vsubps zmm9,zmm24,zmm29
  a2a948:	62 d1 34 48 59 c2    	vmulps zmm0,zmm9,zmm10
  a2a94e:	62 62 7d 48 18 15 0c 	vbroadcastss zmm26,DWORD PTR [rip+0xffffffffff64ad0c]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a2a955:	ad 64 ff 
  a2a958:	62 92 3d 48 b8 c2    	vfmadd231ps zmm0,zmm8,zmm26
  a2a95e:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm0
  a2a965:	03 
  a2a966:	62 91 34 48 59 c2    	vmulps zmm0,zmm9,zmm26
  a2a96c:	62 d2 2d 48 bc c0    	vfnmadd231ps zmm0,zmm10,zmm8
  a2a972:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm0
  a2a979:	02 
  a2a97a:	62 31 0c 40 5c cf    	vsubps zmm9,zmm30,zmm23
  a2a980:	62 c1 4c 48 5c cb    	vsubps zmm17,zmm6,zmm11
  a2a986:	62 31 34 48 5c f1    	vsubps zmm14,zmm9,zmm17
  a2a98c:	62 21 34 40 5c fe    	vsubps zmm31,zmm25,zmm22
  a2a992:	62 d1 1c 48 5c cf    	vsubps zmm1,zmm12,zmm15
  a2a998:	62 f1 04 40 5c c1    	vsubps zmm0,zmm31,zmm1
  a2a99e:	62 91 7c 48 59 ea    	vmulps zmm5,zmm0,zmm26
  a2a9a4:	62 d2 0d 48 b8 ea    	vfmadd231ps zmm5,zmm14,zmm10
  a2a9aa:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm5
  a2a9b1:	01 
  a2a9b2:	62 91 0c 48 59 ea    	vmulps zmm5,zmm14,zmm26
  a2a9b8:	62 f2 2d 48 bc e8    	vfnmadd231ps zmm5,zmm10,zmm0
  a2a9be:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm5
  a2a9c5:	12 
  a2a9c6:	62 b1 34 48 58 c1    	vaddps zmm0,zmm9,zmm17
  a2a9cc:	62 f1 04 40 58 c9    	vaddps zmm1,zmm31,zmm1
  a2a9d2:	62 b1 5c 48 58 e2    	vaddps zmm4,zmm4,zmm18
  a2a9d8:	62 11 3c 40 58 cd    	vaddps zmm9,zmm24,zmm29
  a2a9de:	62 91 34 48 59 ea    	vmulps zmm5,zmm9,zmm26
  a2a9e4:	62 d2 5d 48 b8 ea    	vfmadd231ps zmm5,zmm4,zmm10
  a2a9ea:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm5
  a2a9f1:	11 
  a2a9f2:	62 d1 34 48 59 ea    	vmulps zmm5,zmm9,zmm10
  a2a9f8:	62 f2 2d 40 bc ec    	vfnmadd231ps zmm5,zmm26,zmm4
  a2a9fe:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm5
  a2aa05:	0f 
  a2aa06:	62 d1 74 48 59 e2    	vmulps zmm4,zmm1,zmm10
  a2aa0c:	62 92 7d 48 b8 e2    	vfmadd231ps zmm4,zmm0,zmm26
  a2aa12:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm4
  a2aa19:	10 
  a2aa1a:	62 01 74 48 59 d2    	vmulps zmm26,zmm1,zmm26
  a2aa20:	62 42 7d 48 bc d2    	vfnmadd231ps zmm26,zmm0,zmm10
  a2aa26:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp+0x580]
  a2aa2d:	16 
  a2aa2e:	62 71 7c 48 10 74 24 	vmovups zmm14,ZMMWORD PTR [rsp+0x500]
  a2aa35:	14 
  a2aa36:	62 d1 3c 48 5c c6    	vsubps zmm0,zmm8,zmm14
  a2aa3c:	62 71 7c 48 10 6c 24 	vmovups zmm13,ZMMWORD PTR [rsp+0x540]
  a2aa43:	15 
  a2aa44:	62 61 7c 48 10 44 24 	vmovups zmm24,ZMMWORD PTR [rsp+0x4c0]
  a2aa4b:	13 
  a2aa4c:	62 91 14 48 5c c8    	vsubps zmm1,zmm13,zmm24
  a2aa52:	62 61 7c 48 58 f9    	vaddps zmm31,zmm0,zmm1
  a2aa58:	62 f1 74 48 5c c0    	vsubps zmm0,zmm1,zmm0
  a2aa5e:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm0
  a2aa65:	0e 
  a2aa66:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x940]
  a2aa6d:	25 
  a2aa6e:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x900]
  a2aa75:	24 
  a2aa76:	62 f1 7c 48 5c cc    	vsubps zmm1,zmm0,zmm4
  a2aa7c:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x5c0]
  a2aa83:	17 
  a2aa84:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0x8c0]
  a2aa8b:	23 
  a2aa8c:	62 71 54 48 5c d7    	vsubps zmm10,zmm5,zmm7
  a2aa92:	62 c1 74 48 5c ca    	vsubps zmm17,zmm1,zmm10
  a2aa98:	62 f1 2c 48 58 c9    	vaddps zmm1,zmm10,zmm1
  a2aa9e:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm1
  a2aaa5:	0d 
  a2aaa6:	62 11 7c 40 5c d3    	vsubps zmm10,zmm16,zmm27
  a2aaac:	62 21 24 40 58 d8    	vaddps zmm27,zmm27,zmm16
  a2aab2:	62 61 64 48 5c ea    	vsubps zmm29,zmm3,zmm2
  a2aab8:	62 71 64 48 58 ca    	vaddps zmm9,zmm3,zmm2
  a2aabe:	62 e1 54 48 58 c7    	vaddps zmm16,zmm5,zmm7
  a2aac4:	62 51 3c 48 58 f6    	vaddps zmm14,zmm8,zmm14
  a2aaca:	62 b1 34 40 58 d6    	vaddps zmm2,zmm25,zmm22
  a2aad0:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm2
  a2aad7:	17 
  a2aad8:	62 c1 4c 48 58 d3    	vaddps zmm18,zmm6,zmm11
  a2aade:	62 31 0c 40 58 c7    	vaddps zmm8,zmm30,zmm23
  a2aae4:	62 51 04 48 58 dc    	vaddps zmm11,zmm15,zmm12
  a2aaea:	62 71 1c 40 58 64 24 	vaddps zmm12,zmm28,ZMMWORD PTR [rsp+0x1c0]
  a2aaf1:	07 
  a2aaf2:	62 f1 7c 48 10 0c 24 	vmovups zmm1,ZMMWORD PTR [rsp]
  a2aaf9:	62 71 74 48 58 7c 24 	vaddps zmm15,zmm1,ZMMWORD PTR [rsp+0x180]
  a2ab00:	06 
  a2ab01:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x40]
  a2ab08:	ff 
  a2ab09:	62 e1 74 48 58 74 24 	vaddps zmm22,zmm1,ZMMWORD PTR [rsp+0x100]
  a2ab10:	04 
  a2ab11:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x300]
  a2ab18:	0c 
  a2ab19:	62 e1 74 48 58 7c 24 	vaddps zmm23,zmm1,ZMMWORD PTR [rsp+0x140]
  a2ab20:	05 
  a2ab21:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x80]
  a2ab28:	fe 
  a2ab29:	62 21 74 48 5c cb    	vsubps zmm25,zmm1,zmm19
  a2ab2f:	62 a1 74 48 58 db    	vaddps zmm19,zmm1,zmm19
  a2ab35:	62 21 54 40 5c e4    	vsubps zmm28,zmm21,zmm20
  a2ab3b:	62 a1 5c 40 58 e5    	vaddps zmm20,zmm20,zmm21
  a2ab41:	62 81 14 48 58 e8    	vaddps zmm21,zmm13,zmm24
  a2ab47:	62 61 7c 48 58 f4    	vaddps zmm30,zmm0,zmm4
  a2ab4d:	62 d1 1c 48 5c cf    	vsubps zmm1,zmm12,zmm15
  a2ab53:	62 b1 4c 40 5c c7    	vsubps zmm0,zmm22,zmm23
  a2ab59:	62 f1 74 48 58 f0    	vaddps zmm6,zmm1,zmm0
  a2ab5f:	62 f1 7c 48 5c f9    	vsubps zmm7,zmm0,zmm1
  a2ab65:	62 b1 6c 48 5c ca    	vsubps zmm1,zmm2,zmm18
  a2ab6b:	62 d1 3c 48 5c c3    	vsubps zmm0,zmm8,zmm11
  a2ab71:	62 f1 74 48 5c e0    	vsubps zmm4,zmm1,zmm0
  a2ab77:	62 f1 7c 48 58 e9    	vaddps zmm5,zmm0,zmm1
  a2ab7d:	62 f2 7d 48 18 0d 15 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff64a815]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a2ab84:	a8 64 ff 
  a2ab87:	62 e1 74 40 59 c9    	vmulps zmm17,zmm17,zmm1
  a2ab8d:	62 f1 04 40 59 d9    	vmulps zmm3,zmm31,zmm1
  a2ab93:	62 f1 74 48 59 54 24 	vmulps zmm2,zmm1,ZMMWORD PTR [rsp+0x380]
  a2ab9a:	0e 
  a2ab9b:	62 f1 74 48 59 44 24 	vmulps zmm0,zmm1,ZMMWORD PTR [rsp+0x340]
  a2aba2:	0d 
  a2aba3:	62 61 5c 48 59 f9    	vmulps zmm31,zmm4,zmm1
  a2aba9:	62 f1 4c 48 59 f1    	vmulps zmm6,zmm6,zmm1
  a2abaf:	62 f1 44 48 59 e1    	vmulps zmm4,zmm7,zmm1
  a2abb5:	62 f1 54 48 59 c9    	vmulps zmm1,zmm5,zmm1
  a2abbb:	62 91 2c 48 5c ec    	vsubps zmm5,zmm10,zmm28
  a2abc1:	62 51 1c 40 58 d2    	vaddps zmm10,zmm28,zmm10
  a2abc7:	62 61 6c 48 58 e0    	vaddps zmm28,zmm2,zmm0
  a2abcd:	62 f1 6c 48 5c c0    	vsubps zmm0,zmm2,zmm0
  a2abd3:	62 91 34 40 5c d5    	vsubps zmm2,zmm25,zmm29
  a2abd9:	62 01 34 40 58 cd    	vaddps zmm25,zmm25,zmm29
  a2abdf:	62 61 74 40 5c eb    	vsubps zmm29,zmm17,zmm3
  a2abe5:	62 31 64 48 58 e9    	vaddps zmm13,zmm3,zmm17
  a2abeb:	62 c1 24 40 5c c9    	vsubps zmm17,zmm27,zmm9
  a2abf1:	62 11 34 48 58 cb    	vaddps zmm9,zmm9,zmm27
  a2abf7:	62 01 54 40 5c de    	vsubps zmm27,zmm21,zmm30
  a2abfd:	62 81 54 40 58 ee    	vaddps zmm21,zmm21,zmm30
  a2ac03:	62 d1 3c 48 58 db    	vaddps zmm3,zmm8,zmm11
  a2ac09:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm3
  a2ac10:	fe 
  a2ac11:	62 41 1c 48 58 c7    	vaddps zmm24,zmm12,zmm15
  a2ac17:	62 31 64 40 5c e4    	vsubps zmm12,zmm19,zmm20
  a2ac1d:	62 31 64 40 58 fc    	vaddps zmm15,zmm19,zmm20
  a2ac23:	62 c1 7c 40 5c de    	vsubps zmm19,zmm16,zmm14
  a2ac29:	62 a1 0c 48 58 c0    	vaddps zmm16,zmm14,zmm16
  a2ac2f:	62 a1 4c 40 58 e7    	vaddps zmm20,zmm22,zmm23
  a2ac35:	62 71 6c 40 58 74 24 	vaddps zmm14,zmm18,ZMMWORD PTR [rsp+0x5c0]
  a2ac3c:	17 
  a2ac3d:	62 81 54 48 5c d5    	vsubps zmm18,zmm5,zmm29
  a2ac43:	62 f1 14 40 58 dd    	vaddps zmm3,zmm29,zmm5
  a2ac49:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm3
  a2ac50:	ff 
  a2ac51:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x80]
  a2ac58:	02 
  a2ac59:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x480]
  a2ac60:	12 
  a2ac61:	62 f1 64 48 5c fd    	vsubps zmm7,zmm3,zmm5
  a2ac67:	62 f1 64 48 58 dd    	vaddps zmm3,zmm3,zmm5
  a2ac6d:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm3
  a2ac74:	04 
  a2ac75:	62 01 6c 48 5c f4    	vsubps zmm30,zmm2,zmm28
  a2ac7b:	62 01 6c 48 58 ec    	vaddps zmm29,zmm2,zmm28
  a2ac81:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0xc0]
  a2ac88:	03 
  a2ac89:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x40]
  a2ac90:	01 
  a2ac91:	62 f1 6c 48 58 eb    	vaddps zmm5,zmm2,zmm3
  a2ac97:	62 e1 6c 48 5c fb    	vsubps zmm23,zmm2,zmm3
  a2ac9d:	62 a1 74 40 5c f3    	vsubps zmm22,zmm17,zmm19
  a2aca3:	62 21 64 40 58 e1    	vaddps zmm28,zmm19,zmm17
  a2aca9:	62 e1 5c 48 58 d9    	vaddps zmm19,zmm4,zmm1
  a2acaf:	62 e1 5c 48 5c c9    	vsubps zmm17,zmm4,zmm1
  a2acb5:	62 91 1c 48 5c e3    	vsubps zmm4,zmm12,zmm27
  a2acbb:	62 01 1c 48 58 db    	vaddps zmm27,zmm12,zmm27
  a2acc1:	62 71 04 40 5c e6    	vsubps zmm12,zmm31,zmm6
  a2acc7:	62 11 4c 48 58 df    	vaddps zmm11,zmm6,zmm31
  a2accd:	62 f1 2c 48 5c f0    	vsubps zmm6,zmm10,zmm0
  a2acd3:	62 51 7c 48 58 c2    	vaddps zmm8,zmm0,zmm10
  a2acd9:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x3c0]
  a2ace0:	0f 
  a2ace1:	62 11 7c 48 5c d2    	vsubps zmm10,zmm0,zmm26
  a2ace7:	62 01 7c 48 58 d2    	vaddps zmm26,zmm0,zmm26
  a2aced:	62 d1 34 40 5c d5    	vsubps zmm2,zmm25,zmm13
  a2acf3:	62 51 34 40 58 ed    	vaddps zmm13,zmm25,zmm13
  a2acf9:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x440]
  a2ad00:	11 
  a2ad01:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x400]
  a2ad08:	10 
  a2ad09:	62 f1 64 48 5c c8    	vsubps zmm1,zmm3,zmm0
  a2ad0f:	62 61 7c 48 58 fb    	vaddps zmm31,zmm0,zmm3
  a2ad15:	62 b1 34 48 5c dd    	vsubps zmm3,zmm9,zmm21
  a2ad1b:	62 c1 54 40 58 e9    	vaddps zmm21,zmm21,zmm9
  a2ad21:	62 51 5c 40 5c ce    	vsubps zmm9,zmm20,zmm14
  a2ad27:	62 51 5c 40 58 f6    	vaddps zmm14,zmm20,zmm14
  a2ad2d:	62 a1 04 48 5c e0    	vsubps zmm20,zmm15,zmm16
  a2ad33:	62 31 04 48 58 f8    	vaddps zmm15,zmm15,zmm16
  a2ad39:	62 e1 7c 48 10 44 24 	vmovups zmm16,ZMMWORD PTR [rsp-0x80]
  a2ad40:	fe 
  a2ad41:	62 91 7c 40 5c c0    	vsubps zmm0,zmm16,zmm24
  a2ad47:	62 21 3c 40 58 c8    	vaddps zmm25,zmm24,zmm16
  a2ad4d:	62 e1 6c 40 58 c5    	vaddps zmm16,zmm18,zmm5
  a2ad53:	62 e1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm16
  a2ad5a:	fe 
  a2ad5b:	62 f1 6c 40 5c ed    	vsubps zmm5,zmm18,zmm5
  a2ad61:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm5
  a2ad68:	01 
  a2ad69:	62 61 0c 40 5c c7    	vsubps zmm24,zmm30,zmm7
  a2ad6f:	62 e1 0c 40 58 c7    	vaddps zmm16,zmm30,zmm7
  a2ad75:	62 d1 4c 40 5c ec    	vsubps zmm5,zmm22,zmm12
  a2ad7b:	62 f1 7c 48 11 2c 24 	vmovups ZMMWORD PTR [rsp],zmm5
  a2ad82:	62 51 4c 40 58 e4    	vaddps zmm12,zmm22,zmm12
  a2ad88:	62 a1 5c 48 5c f3    	vsubps zmm22,zmm4,zmm19
  a2ad8e:	62 b1 5c 48 58 eb    	vaddps zmm5,zmm4,zmm19
  a2ad94:	62 f1 4c 48 5c e1    	vsubps zmm4,zmm6,zmm1
  a2ad9a:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm4
  a2ada1:	03 
  a2ada2:	62 f1 4c 48 58 f9    	vaddps zmm7,zmm6,zmm1
  a2ada8:	62 c1 6c 48 5c d2    	vsubps zmm18,zmm2,zmm10
  a2adae:	62 d1 6c 48 58 d2    	vaddps zmm2,zmm2,zmm10
  a2adb4:	62 f1 64 48 5c c8    	vsubps zmm1,zmm3,zmm0
  a2adba:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm1
  a2adc1:	02 
  a2adc2:	62 f1 64 48 58 e0    	vaddps zmm4,zmm3,zmm0
  a2adc8:	62 d1 5c 40 5c d9    	vsubps zmm3,zmm20,zmm9
  a2adce:	62 51 5c 40 58 d1    	vaddps zmm10,zmm20,zmm9
  a2add4:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x40]
  a2addb:	ff 
  a2addc:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x100]
  a2ade3:	04 
  a2ade4:	62 61 7c 48 5c f1    	vsubps zmm30,zmm0,zmm1
  a2adea:	62 f1 7c 48 58 c9    	vaddps zmm1,zmm0,zmm1
  a2adf0:	62 b1 14 40 5c f7    	vsubps zmm6,zmm29,zmm23
  a2adf6:	62 a1 14 40 58 ff    	vaddps zmm23,zmm29,zmm23
  a2adfc:	62 21 1c 40 5c e9    	vsubps zmm29,zmm28,zmm17
  a2ae02:	62 21 1c 40 58 e1    	vaddps zmm28,zmm28,zmm17
  a2ae08:	62 51 24 40 5c cb    	vsubps zmm9,zmm27,zmm11
  a2ae0e:	62 d1 24 40 58 c3    	vaddps zmm0,zmm27,zmm11
  a2ae14:	62 01 3c 48 5c da    	vsubps zmm27,zmm8,zmm26
  a2ae1a:	62 11 3c 48 58 c2    	vaddps zmm8,zmm8,zmm26
  a2ae20:	62 11 14 48 5c df    	vsubps zmm11,zmm13,zmm31
  a2ae26:	62 81 14 48 58 cf    	vaddps zmm17,zmm13,zmm31
  a2ae2c:	62 51 54 40 5c ee    	vsubps zmm13,zmm21,zmm14
  a2ae32:	62 c1 54 40 58 ee    	vaddps zmm21,zmm21,zmm14
  a2ae38:	62 11 04 48 5c f1    	vsubps zmm14,zmm15,zmm25
  a2ae3e:	62 81 04 48 58 d9    	vaddps zmm19,zmm15,zmm25
  a2ae44:	62 e1 7c 48 28 25 32 	vmovaps zmm20,ZMMWORD PTR [rip+0xffffffffff665932]        # 90780 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1dc30>
  a2ae4b:	59 66 ff 
  a2ae4e:	62 a2 5d 40 7f dd    	vpermt2ps zmm19,zmm20,zmm21
  a2ae54:	62 c2 5d 40 7f c8    	vpermt2ps zmm17,zmm20,zmm8
  a2ae5a:	62 92 5d 40 7f c4    	vpermt2ps zmm0,zmm20,zmm28
  a2ae60:	62 e2 5d 40 7f f9    	vpermt2ps zmm23,zmm20,zmm1
  a2ae66:	62 72 5d 40 7f d4    	vpermt2ps zmm10,zmm20,zmm4
  a2ae6c:	62 f2 5d 40 7f d7    	vpermt2ps zmm2,zmm20,zmm7
  a2ae72:	62 d2 5d 40 7f ec    	vpermt2ps zmm5,zmm20,zmm12
  a2ae78:	62 e2 5d 40 7f 44 24 	vpermt2ps zmm16,zmm20,ZMMWORD PTR [rsp+0x40]
  a2ae7f:	01 
  a2ae80:	62 52 5d 40 7f f5    	vpermt2ps zmm14,zmm20,zmm13
  a2ae86:	62 12 5d 40 7f db    	vpermt2ps zmm11,zmm20,zmm27
  a2ae8c:	62 12 5d 40 7f cd    	vpermt2ps zmm9,zmm20,zmm29
  a2ae92:	62 92 5d 40 7f f6    	vpermt2ps zmm6,zmm20,zmm30
  a2ae98:	62 f2 5d 40 7f 5c 24 	vpermt2ps zmm3,zmm20,ZMMWORD PTR [rsp+0x80]
  a2ae9f:	02 
  a2aea0:	62 e2 5d 40 7f 54 24 	vpermt2ps zmm18,zmm20,ZMMWORD PTR [rsp+0xc0]
  a2aea7:	03 
  a2aea8:	62 e2 5d 40 7f 34 24 	vpermt2ps zmm22,zmm20,ZMMWORD PTR [rsp]
  a2aeaf:	62 62 5d 40 7f 44 24 	vpermt2ps zmm24,zmm20,ZMMWORD PTR [rsp-0x80]
  a2aeb6:	fe 
  a2aeb7:	62 e3 7d 48 19 5e 02 	vextractf32x4 XMMWORD PTR [rsi+0x20],zmm19,0x2
  a2aebe:	02 
  a2aebf:	62 e1 7c 28 11 1e    	vmovups YMMWORD PTR [rsi],ymm19
  a2aec5:	62 e3 7d 48 19 4e 05 	vextractf32x4 XMMWORD PTR [rsi+0x50],zmm17,0x2
  a2aecc:	02 
  a2aecd:	62 e1 7c 28 11 8e 30 	vmovups YMMWORD PTR [rsi+0x30],ymm17
  a2aed4:	00 00 00 
  a2aed7:	62 f3 7d 48 19 46 08 	vextractf32x4 XMMWORD PTR [rsi+0x80],zmm0,0x2
  a2aede:	02 
  a2aedf:	c5 fc 11 46 60       	vmovups YMMWORD PTR [rsi+0x60],ymm0
  a2aee4:	62 e3 7d 48 19 7e 0b 	vextractf32x4 XMMWORD PTR [rsi+0xb0],zmm23,0x2
  a2aeeb:	02 
  a2aeec:	62 e1 7c 28 11 be 90 	vmovups YMMWORD PTR [rsi+0x90],ymm23
  a2aef3:	00 00 00 
  a2aef6:	62 73 7d 48 19 56 0e 	vextractf32x4 XMMWORD PTR [rsi+0xe0],zmm10,0x2
  a2aefd:	02 
  a2aefe:	c5 7c 11 96 c0 00 00 	vmovups YMMWORD PTR [rsi+0xc0],ymm10
  a2af05:	00 
  a2af06:	62 f3 7d 48 19 56 11 	vextractf32x4 XMMWORD PTR [rsi+0x110],zmm2,0x2
  a2af0d:	02 
  a2af0e:	c5 fc 11 96 f0 00 00 	vmovups YMMWORD PTR [rsi+0xf0],ymm2
  a2af15:	00 
  a2af16:	62 f3 7d 48 19 6e 14 	vextractf32x4 XMMWORD PTR [rsi+0x140],zmm5,0x2
  a2af1d:	02 
  a2af1e:	c5 fc 11 ae 20 01 00 	vmovups YMMWORD PTR [rsi+0x120],ymm5
  a2af25:	00 
  a2af26:	62 e3 7d 48 19 46 17 	vextractf32x4 XMMWORD PTR [rsi+0x170],zmm16,0x2
  a2af2d:	02 
  a2af2e:	62 e1 7c 28 11 86 50 	vmovups YMMWORD PTR [rsi+0x150],ymm16
  a2af35:	01 00 00 
  a2af38:	62 73 7d 48 19 76 1a 	vextractf32x4 XMMWORD PTR [rsi+0x1a0],zmm14,0x2
  a2af3f:	02 
  a2af40:	c5 7c 11 b6 80 01 00 	vmovups YMMWORD PTR [rsi+0x180],ymm14
  a2af47:	00 
  a2af48:	62 73 7d 48 19 5e 1d 	vextractf32x4 XMMWORD PTR [rsi+0x1d0],zmm11,0x2
  a2af4f:	02 
  a2af50:	c5 7c 11 9e b0 01 00 	vmovups YMMWORD PTR [rsi+0x1b0],ymm11
  a2af57:	00 
  a2af58:	62 73 7d 48 19 4e 20 	vextractf32x4 XMMWORD PTR [rsi+0x200],zmm9,0x2
  a2af5f:	02 
  a2af60:	c5 7c 11 8e e0 01 00 	vmovups YMMWORD PTR [rsi+0x1e0],ymm9
  a2af67:	00 
  a2af68:	62 f3 7d 48 19 76 23 	vextractf32x4 XMMWORD PTR [rsi+0x230],zmm6,0x2
  a2af6f:	02 
  a2af70:	c5 fc 11 b6 10 02 00 	vmovups YMMWORD PTR [rsi+0x210],ymm6
  a2af77:	00 
  a2af78:	62 f3 7d 48 19 5e 26 	vextractf32x4 XMMWORD PTR [rsi+0x260],zmm3,0x2
  a2af7f:	02 
  a2af80:	c5 fc 11 9e 40 02 00 	vmovups YMMWORD PTR [rsi+0x240],ymm3
  a2af87:	00 
  a2af88:	62 e3 7d 48 19 56 29 	vextractf32x4 XMMWORD PTR [rsi+0x290],zmm18,0x2
  a2af8f:	02 
  a2af90:	62 e1 7c 28 11 96 70 	vmovups YMMWORD PTR [rsi+0x270],ymm18
  a2af97:	02 00 00 
  a2af9a:	62 e3 7d 48 19 76 2c 	vextractf32x4 XMMWORD PTR [rsi+0x2c0],zmm22,0x2
  a2afa1:	02 
  a2afa2:	62 e1 7c 28 11 76 15 	vmovups YMMWORD PTR [rsi+0x2a0],ymm22
  a2afa9:	62 63 7d 48 19 46 2f 	vextractf32x4 XMMWORD PTR [rsi+0x2f0],zmm24,0x2
  a2afb0:	02 
  a2afb1:	62 61 7c 28 11 86 d0 	vmovups YMMWORD PTR [rsi+0x2d0],ymm24
  a2afb8:	02 00 00 
  a2afbb:	48 81 c4 88 09 00 00 	add    rsp,0x988
  a2afc2:	c5 f8 77             	vzeroupper
  a2afc5:	c3                   	ret
