
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a1fd40 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a1fd40:	48 81 ec 88 0a 00 00 	sub    rsp,0xa88
  a1fd47:	62 71 7c 48 28 05 af 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff6701af]        # 8ff00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d3b0>
  a1fd4e:	01 67 ff 
  a1fd51:	62 f1 7c 48 10 2f    	vmovups zmm5,ZMMWORD PTR [rdi]
  a1fd57:	62 61 7c 48 10 47 01 	vmovups zmm24,ZMMWORD PTR [rdi+0x40]
  a1fd5e:	62 f1 7c 48 10 77 02 	vmovups zmm6,ZMMWORD PTR [rdi+0x80]
  a1fd65:	62 71 7c 48 10 77 03 	vmovups zmm14,ZMMWORD PTR [rdi+0xc0]
  a1fd6c:	62 e1 7c 48 28 c5    	vmovaps zmm16,zmm5
  a1fd72:	62 82 3d 48 7f c0    	vpermt2ps zmm16,zmm8,zmm24
  a1fd78:	62 f1 7c 48 10 57 04 	vmovups zmm2,ZMMWORD PTR [rdi+0x100]
  a1fd7f:	62 f1 7c 48 10 67 05 	vmovups zmm4,ZMMWORD PTR [rdi+0x140]
  a1fd86:	62 f1 7c 48 28 c2    	vmovaps zmm0,zmm2
  a1fd8c:	62 f2 3d 48 7f c4    	vpermt2ps zmm0,zmm8,zmm4
  a1fd92:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm0
  a1fd99:	04 
  a1fd9a:	62 71 7c 48 10 67 10 	vmovups zmm12,ZMMWORD PTR [rdi+0x400]
  a1fda1:	62 71 7c 48 10 7f 11 	vmovups zmm15,ZMMWORD PTR [rdi+0x440]
  a1fda8:	62 d1 7c 48 28 cc    	vmovaps zmm1,zmm12
  a1fdae:	62 d2 3d 48 7f cf    	vpermt2ps zmm1,zmm8,zmm15
  a1fdb4:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm1
  a1fdbb:	03 
  a1fdbc:	62 e1 7c 48 58 f1    	vaddps zmm22,zmm0,zmm1
  a1fdc2:	62 b1 7c 40 58 de    	vaddps zmm3,zmm16,zmm22
  a1fdc8:	62 71 7c 48 10 6f 08 	vmovups zmm13,ZMMWORD PTR [rdi+0x200]
  a1fdcf:	62 e1 7c 48 10 7f 09 	vmovups zmm23,ZMMWORD PTR [rdi+0x240]
  a1fdd6:	62 c1 7c 48 28 dd    	vmovaps zmm19,zmm13
  a1fddc:	62 a2 3d 48 7f df    	vpermt2ps zmm19,zmm8,zmm23
  a1fde2:	62 e1 7c 48 10 4f 0c 	vmovups zmm17,ZMMWORD PTR [rdi+0x300]
  a1fde9:	62 61 7c 48 10 6f 0d 	vmovups zmm29,ZMMWORD PTR [rdi+0x340]
  a1fdf0:	62 31 7c 48 28 c9    	vmovaps zmm9,zmm17
  a1fdf6:	62 12 3d 48 7f cd    	vpermt2ps zmm9,zmm8,zmm29
  a1fdfc:	62 41 64 40 58 c9    	vaddps zmm25,zmm19,zmm9
  a1fe02:	62 91 64 48 58 c1    	vaddps zmm0,zmm3,zmm25
  a1fe08:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a1fe0f:	fe 
  a1fe10:	62 f1 7c 48 10 7f 0a 	vmovups zmm7,ZMMWORD PTR [rdi+0x280]
  a1fe17:	62 61 7c 48 10 5f 0b 	vmovups zmm27,ZMMWORD PTR [rdi+0x2c0]
  a1fe1e:	62 e1 7c 48 28 ef    	vmovaps zmm21,zmm7
  a1fe24:	62 82 3d 48 7f eb    	vpermt2ps zmm21,zmm8,zmm27
  a1fe2a:	62 e1 7c 48 10 57 0e 	vmovups zmm18,ZMMWORD PTR [rdi+0x380]
  a1fe31:	62 61 7c 48 10 77 0f 	vmovups zmm30,ZMMWORD PTR [rdi+0x3c0]
  a1fe38:	62 31 7c 48 28 d2    	vmovaps zmm10,zmm18
  a1fe3e:	62 12 3d 48 7f d6    	vpermt2ps zmm10,zmm8,zmm30
  a1fe44:	62 e1 7c 48 10 67 06 	vmovups zmm20,ZMMWORD PTR [rdi+0x180]
  a1fe4b:	62 f1 7c 48 10 47 07 	vmovups zmm0,ZMMWORD PTR [rdi+0x1c0]
  a1fe52:	62 31 7c 48 28 dc    	vmovaps zmm11,zmm20
  a1fe58:	62 72 3d 48 7f d8    	vpermt2ps zmm11,zmm8,zmm0
  a1fe5e:	62 41 2c 48 58 d3    	vaddps zmm26,zmm10,zmm11
  a1fe64:	62 61 7c 48 28 25 d2 	vmovaps zmm28,ZMMWORD PTR [rip+0xffffffffff6700d2]        # 8ff40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d3f0>
  a1fe6b:	00 67 ff 
  a1fe6e:	62 32 1d 40 7f ef    	vpermt2ps zmm13,zmm28,zmm23
  a1fe74:	62 e1 7c 48 10 7f 12 	vmovups zmm23,ZMMWORD PTR [rdi+0x480]
  a1fe7b:	62 82 1d 40 7f cd    	vpermt2ps zmm17,zmm28,zmm29
  a1fe81:	62 61 7c 48 10 7f 13 	vmovups zmm31,ZMMWORD PTR [rdi+0x4c0]
  a1fe88:	62 f2 1d 40 7f d4    	vpermt2ps zmm2,zmm28,zmm4
  a1fe8e:	62 b1 7c 48 28 e7    	vmovaps zmm4,zmm23
  a1fe94:	62 92 3d 48 7f e7    	vpermt2ps zmm4,zmm8,zmm31
  a1fe9a:	62 52 4d 48 77 c6    	vpermi2ps zmm8,zmm6,zmm14
  a1fea0:	62 52 1d 40 7f e7    	vpermt2ps zmm12,zmm28,zmm15
  a1fea6:	62 21 14 48 5c e9    	vsubps zmm29,zmm13,zmm17
  a1feac:	62 82 1d 40 7f ff    	vpermt2ps zmm23,zmm28,zmm31
  a1feb2:	62 41 6c 48 5c fc    	vsubps zmm31,zmm2,zmm12
  a1feb8:	62 d2 1d 40 7f f6    	vpermt2ps zmm6,zmm28,zmm14
  a1febe:	62 f2 7d 48 18 0d 90 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff655890]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a1fec5:	58 65 ff 
  a1fec8:	62 82 1d 40 7f d6    	vpermt2ps zmm18,zmm28,zmm30
  a1fece:	62 61 04 40 59 f1    	vmulps zmm30,zmm31,zmm1
  a1fed4:	62 e2 1d 40 7f e0    	vpermt2ps zmm20,zmm28,zmm0
  a1feda:	62 72 7d 48 18 3d bc 	vbroadcastss zmm15,DWORD PTR [rip+0xffffffffff6554bc]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a1fee1:	54 65 ff 
  a1fee4:	62 42 15 40 bc f7    	vfnmadd231ps zmm30,zmm29,zmm15
  a1feea:	62 92 1d 40 7f e8    	vpermt2ps zmm5,zmm28,zmm24
  a1fef0:	62 62 7d 48 18 05 4a 	vbroadcastss zmm24,DWORD PTR [rip+0xffffffffff65574a]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a1fef7:	57 65 ff 
  a1fefa:	62 92 1d 40 7f fb    	vpermt2ps zmm7,zmm28,zmm27
  a1ff00:	62 91 7c 48 28 c0    	vmovaps zmm0,zmm24
  a1ff06:	62 b2 4d 40 ac c0    	vfnmadd213ps zmm0,zmm22,zmm16
  a1ff0c:	62 62 7d 48 18 1d d2 	vbroadcastss zmm27,DWORD PTR [rip+0xffffffffff6557d2]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a1ff13:	57 65 ff 
  a1ff16:	62 92 35 40 b8 c3    	vfmadd231ps zmm0,zmm25,zmm27
  a1ff1c:	62 61 14 40 59 e1    	vmulps zmm28,zmm29,zmm1
  a1ff22:	62 02 05 48 b8 e7    	vfmadd231ps zmm28,zmm15,zmm31
  a1ff28:	62 61 44 40 5c ee    	vsubps zmm29,zmm23,zmm6
  a1ff2e:	62 a2 25 40 b8 c6    	vfmadd231ps zmm16,zmm27,zmm22
  a1ff34:	62 a1 6c 40 5c f4    	vsubps zmm22,zmm18,zmm20
  a1ff3a:	62 82 3d 40 bc c1    	vfnmadd231ps zmm16,zmm24,zmm25
  a1ff40:	62 61 4c 40 59 c9    	vmulps zmm25,zmm22,zmm1
  a1ff46:	62 42 15 40 bc cf    	vfnmadd231ps zmm25,zmm29,zmm15
  a1ff4c:	62 61 14 40 59 e9    	vmulps zmm29,zmm29,zmm1
  a1ff52:	62 22 05 48 b8 ee    	vfmadd231ps zmm29,zmm15,zmm22
  a1ff58:	62 81 7c 48 28 f0    	vmovaps zmm22,zmm24
  a1ff5e:	62 a2 2d 40 ac f5    	vfnmadd213ps zmm22,zmm26,zmm21
  a1ff64:	62 01 54 40 58 fa    	vaddps zmm31,zmm21,zmm26
  a1ff6a:	62 82 25 40 b8 ea    	vfmadd231ps zmm21,zmm27,zmm26
  a1ff70:	62 41 5c 48 58 d0    	vaddps zmm26,zmm4,zmm8
  a1ff76:	62 01 04 40 58 fa    	vaddps zmm31,zmm31,zmm26
  a1ff7c:	62 82 2d 40 b8 f3    	vfmadd231ps zmm22,zmm26,zmm27
  a1ff82:	62 82 3d 40 bc ea    	vfnmadd231ps zmm21,zmm24,zmm26
  a1ff88:	62 61 0c 40 58 d0    	vaddps zmm26,zmm30,zmm0
  a1ff8e:	62 91 7c 48 5c c6    	vsubps zmm0,zmm0,zmm30
  a1ff94:	62 21 34 40 58 f6    	vaddps zmm30,zmm25,zmm22
  a1ff9a:	62 81 4c 40 5c f1    	vsubps zmm22,zmm22,zmm25
  a1ffa0:	62 21 1c 40 58 c8    	vaddps zmm25,zmm28,zmm16
  a1ffa6:	62 81 7c 40 5c c4    	vsubps zmm16,zmm16,zmm28
  a1ffac:	62 21 14 40 58 e5    	vaddps zmm28,zmm29,zmm21
  a1ffb2:	62 81 54 40 5c ed    	vsubps zmm21,zmm21,zmm29
  a1ffb8:	62 b1 7c 40 58 cd    	vaddps zmm1,zmm16,zmm21
  a1ffbe:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a1ffc5:	ff 
  a1ffc6:	62 21 7c 40 5c ed    	vsubps zmm29,zmm16,zmm21
  a1ffcc:	62 91 34 40 58 cc    	vaddps zmm1,zmm25,zmm28
  a1ffd2:	62 91 34 40 5c dc    	vsubps zmm3,zmm25,zmm28
  a1ffd8:	62 71 7c 48 10 74 24 	vmovups zmm14,ZMMWORD PTR [rsp-0x80]
  a1ffdf:	fe 
  a1ffe0:	62 01 0c 48 58 cf    	vaddps zmm25,zmm14,zmm31
  a1ffe6:	62 11 0c 48 5c f7    	vsubps zmm14,zmm14,zmm31
  a1ffec:	62 71 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm14
  a1fff3:	05 
  a1fff4:	62 81 2c 40 58 c6    	vaddps zmm16,zmm26,zmm30
  a1fffa:	62 11 2c 40 5c f6    	vsubps zmm14,zmm26,zmm30
  a20000:	62 71 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm14
  a20007:	06 
  a20008:	62 21 7c 48 58 fe    	vaddps zmm31,zmm0,zmm22
  a2000e:	62 b1 7c 48 5c c6    	vsubps zmm0,zmm0,zmm22
  a20014:	62 f1 7c 48 11 04 24 	vmovups ZMMWORD PTR [rsp],zmm0
  a2001b:	62 d1 6c 48 58 c4    	vaddps zmm0,zmm2,zmm12
  a20021:	62 71 7c 48 28 35 55 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff6a6f55]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a20028:	6f 6a ff 
  a2002b:	62 31 14 48 58 e9    	vaddps zmm13,zmm13,zmm17
  a20031:	62 e1 54 48 58 c8    	vaddps zmm17,zmm5,zmm0
  a20037:	62 31 6c 40 58 e4    	vaddps zmm12,zmm18,zmm20
  a2003d:	62 c1 44 48 58 d4    	vaddps zmm18,zmm7,zmm12
  a20043:	62 e1 44 40 58 e6    	vaddps zmm20,zmm23,zmm6
  a20049:	62 91 7c 48 28 f0    	vmovaps zmm6,zmm24
  a2004f:	62 f2 7d 48 ac f5    	vfnmadd213ps zmm6,zmm0,zmm5
  a20055:	62 f2 25 40 b8 e8    	vfmadd231ps zmm5,zmm27,zmm0
  a2005b:	62 81 7c 48 28 e8    	vmovaps zmm21,zmm24
  a20061:	62 e2 1d 48 ac ef    	vfnmadd213ps zmm21,zmm12,zmm7
  a20067:	62 92 1d 48 b8 fb    	vfmadd231ps zmm7,zmm12,zmm27
  a2006d:	62 91 7c 48 28 c1    	vmovaps zmm0,zmm25
  a20073:	62 b2 0d 48 7f c0    	vpermt2ps zmm0,zmm14,zmm16
  a20079:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm0
  a20080:	02 
  a20081:	62 92 15 48 b8 f3    	vfmadd231ps zmm6,zmm13,zmm27
  a20087:	62 82 5d 40 b8 eb    	vfmadd231ps zmm21,zmm20,zmm27
  a2008d:	c4 41 18 57 e4       	vxorps xmm12,xmm12,xmm12
  a20092:	62 c1 74 40 58 fd    	vaddps zmm23,zmm17,zmm13
  a20098:	62 d2 3d 40 bc ed    	vfnmadd231ps zmm5,zmm24,zmm13
  a2009e:	62 61 7c 48 28 e1    	vmovaps zmm28,zmm1
  a200a4:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a200ab:	fe 
  a200ac:	62 92 5d 40 bc f8    	vfnmadd231ps zmm7,zmm20,zmm24
  a200b2:	62 91 7c 48 28 c5    	vmovaps zmm0,zmm29
  a200b8:	62 81 7c 48 28 f5    	vmovaps zmm22,zmm29
  a200be:	62 61 7c 48 28 d3    	vmovaps zmm26,zmm3
  a200c4:	62 f2 0d 48 7f c3    	vpermt2ps zmm0,zmm14,zmm3
  a200ca:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm0
  a200d1:	01 
  a200d2:	62 a1 6c 40 58 d4    	vaddps zmm18,zmm18,zmm20
  a200d8:	62 31 44 40 58 ea    	vaddps zmm13,zmm23,zmm18
  a200de:	62 d1 64 40 5c c1    	vsubps zmm0,zmm19,zmm9
  a200e4:	62 e1 7c 48 28 0d d2 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff6a6ed2]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a200eb:	6e 6a ff 
  a200ee:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x100]
  a200f5:	04 
  a200f6:	62 f1 74 48 5c 4c 24 	vsubps zmm1,zmm1,ZMMWORD PTR [rsp+0xc0]
  a200fd:	03 
  a200fe:	62 f2 7d 48 18 15 50 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff655650]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a20105:	56 65 ff 
  a20108:	62 71 74 48 59 ca    	vmulps zmm9,zmm1,zmm2
  a2010e:	62 52 7d 48 bc cf    	vfnmadd231ps zmm9,zmm0,zmm15
  a20114:	62 d1 5c 48 5c e0    	vsubps zmm4,zmm4,zmm8
  a2011a:	62 51 4c 48 5c c1    	vsubps zmm8,zmm6,zmm9
  a20120:	62 d1 2c 48 5c db    	vsubps zmm3,zmm10,zmm11
  a20126:	62 71 64 48 59 d2    	vmulps zmm10,zmm3,zmm2
  a2012c:	62 52 5d 48 bc d7    	vfnmadd231ps zmm10,zmm4,zmm15
  a20132:	62 71 7c 48 59 da    	vmulps zmm11,zmm0,zmm2
  a20138:	62 72 05 48 b8 d9    	vfmadd231ps zmm11,zmm15,zmm1
  a2013e:	62 c1 54 40 5c da    	vsubps zmm19,zmm21,zmm10
  a20144:	62 f1 5c 48 59 ca    	vmulps zmm1,zmm4,zmm2
  a2014a:	62 21 3c 48 58 f3    	vaddps zmm30,zmm8,zmm19
  a20150:	62 d2 65 48 b8 cf    	vfmadd231ps zmm1,zmm3,zmm15
  a20156:	62 51 7c 48 28 fd    	vmovaps zmm15,zmm13
  a2015c:	62 d1 7c 48 28 d5    	vmovaps zmm2,zmm13
  a20162:	62 12 75 40 7f fe    	vpermt2ps zmm15,zmm17,zmm30
  a20168:	62 d1 54 48 5c db    	vsubps zmm3,zmm5,zmm11
  a2016e:	62 d1 4c 48 58 e1    	vaddps zmm4,zmm6,zmm9
  a20174:	62 f1 44 48 5c f1    	vsubps zmm6,zmm7,zmm1
  a2017a:	62 51 54 40 58 ca    	vaddps zmm9,zmm21,zmm10
  a20180:	62 71 64 48 58 d6    	vaddps zmm10,zmm3,zmm6
  a20186:	62 d1 54 48 58 eb    	vaddps zmm5,zmm5,zmm11
  a2018c:	62 51 7c 48 28 ea    	vmovaps zmm13,zmm10
  a20192:	62 51 7c 48 28 da    	vmovaps zmm11,zmm10
  a20198:	62 52 75 40 7f ec    	vpermt2ps zmm13,zmm17,zmm12
  a2019e:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm13
  a201a5:	04 
  a201a6:	62 f1 44 48 58 c9    	vaddps zmm1,zmm7,zmm1
  a201ac:	62 f1 54 48 58 f9    	vaddps zmm7,zmm5,zmm1
  a201b2:	62 61 54 48 5c e9    	vsubps zmm29,zmm5,zmm1
  a201b8:	62 41 5c 48 58 d9    	vaddps zmm27,zmm4,zmm9
  a201be:	62 f1 64 48 5c ce    	vsubps zmm1,zmm3,zmm6
  a201c4:	62 81 7c 48 28 eb    	vmovaps zmm21,zmm27
  a201ca:	62 c2 75 40 7f ec    	vpermt2ps zmm21,zmm17,zmm12
  a201d0:	62 31 44 40 5c d2    	vsubps zmm10,zmm23,zmm18
  a201d6:	62 f1 7c 48 28 c7    	vmovaps zmm0,zmm7
  a201dc:	62 f1 7c 48 28 f7    	vmovaps zmm6,zmm7
  a201e2:	62 d2 75 40 7f c4    	vpermt2ps zmm0,zmm17,zmm12
  a201e8:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm0
  a201ef:	03 
  a201f0:	62 21 3c 48 5c c3    	vsubps zmm24,zmm8,zmm19
  a201f6:	62 81 7c 48 28 d5    	vmovaps zmm18,zmm29
  a201fc:	62 e2 75 40 7f d1    	vpermt2ps zmm18,zmm17,zmm1
  a20202:	62 d1 5c 48 5c d9    	vsubps zmm3,zmm4,zmm9
  a20208:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x700],zmm3
  a2020f:	1c 
  a20210:	62 d1 7c 48 28 c2    	vmovaps zmm0,zmm10
  a20216:	62 d1 7c 48 28 fa    	vmovaps zmm7,zmm10
  a2021c:	62 d2 75 40 7f c4    	vpermt2ps zmm0,zmm17,zmm12
  a20222:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x6c0],zmm0
  a20229:	1b 
  a2022a:	62 22 75 40 7f c8    	vpermt2ps zmm25,zmm17,zmm16
  a20230:	62 11 7c 48 28 c8    	vmovaps zmm9,zmm24
  a20236:	62 52 75 40 7f cc    	vpermt2ps zmm9,zmm17,zmm12
  a2023c:	62 a1 7c 48 28 de    	vmovaps zmm19,zmm22
  a20242:	62 82 75 40 7f da    	vpermt2ps zmm19,zmm17,zmm26
  a20248:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a2024e:	62 d2 75 40 7f c4    	vpermt2ps zmm0,zmm17,zmm12
  a20254:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm0
  a2025b:	07 
  a2025c:	62 42 75 40 7f e4    	vpermt2ps zmm28,zmm17,zmm12
  a20262:	62 61 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm28
  a20269:	0e 
  a2026a:	62 11 7c 48 28 ef    	vmovaps zmm13,zmm31
  a20270:	62 42 75 40 7f fc    	vpermt2ps zmm31,zmm17,zmm12
  a20276:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp-0x40]
  a2027d:	ff 
  a2027e:	62 f1 7c 48 28 c4    	vmovaps zmm0,zmm4
  a20284:	62 d2 75 40 7f e4    	vpermt2ps zmm4,zmm17,zmm12
  a2028a:	62 e1 7c 48 28 f4    	vmovaps zmm22,zmm4
  a20290:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm4
  a20297:	ff 
  a20298:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x140]
  a2029f:	05 
  a202a0:	62 61 7c 48 28 d5    	vmovaps zmm26,zmm5
  a202a6:	62 d2 75 40 7f ec    	vpermt2ps zmm5,zmm17,zmm12
  a202ac:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm5
  a202b3:	05 
  a202b4:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x180]
  a202bb:	06 
  a202bc:	62 c1 7c 48 28 e2    	vmovaps zmm20,zmm10
  a202c2:	62 52 75 40 7f d4    	vpermt2ps zmm10,zmm17,zmm12
  a202c8:	62 f1 7c 48 10 1c 24 	vmovups zmm3,ZMMWORD PTR [rsp]
  a202cf:	62 e1 7c 48 28 fb    	vmovaps zmm23,zmm3
  a202d5:	62 d2 75 40 7f dc    	vpermt2ps zmm3,zmm17,zmm12
  a202db:	62 f1 7c 48 11 1c 24 	vmovups ZMMWORD PTR [rsp],zmm3
  a202e2:	62 71 7c 48 28 c2    	vmovaps zmm8,zmm2
  a202e8:	62 12 0d 48 7f c6    	vpermt2ps zmm8,zmm14,zmm30
  a202ee:	62 62 0d 48 7f e9    	vpermt2ps zmm29,zmm14,zmm1
  a202f4:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x80]
  a202fb:	fe 
  a202fc:	62 d2 0d 48 7f cc    	vpermt2ps zmm1,zmm14,zmm12
  a20302:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a20309:	fe 
  a2030a:	62 52 0d 48 7f ec    	vpermt2ps zmm13,zmm14,zmm12
  a20310:	62 d2 0d 48 7f c4    	vpermt2ps zmm0,zmm14,zmm12
  a20316:	62 42 0d 48 7f d4    	vpermt2ps zmm26,zmm14,zmm12
  a2031c:	62 c2 0d 48 7f e4    	vpermt2ps zmm20,zmm14,zmm12
  a20322:	62 c2 0d 48 7f fc    	vpermt2ps zmm23,zmm14,zmm12
  a20328:	62 52 0d 48 7f dc    	vpermt2ps zmm11,zmm14,zmm12
  a2032e:	62 71 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm11
  a20335:	0a 
  a20336:	62 42 0d 48 7f dc    	vpermt2ps zmm27,zmm14,zmm12
  a2033c:	62 d2 0d 48 7f f4    	vpermt2ps zmm6,zmm14,zmm12
  a20342:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm6
  a20349:	09 
  a2034a:	62 d2 0d 48 7f fc    	vpermt2ps zmm7,zmm14,zmm12
  a20350:	62 42 0d 48 7f c4    	vpermt2ps zmm24,zmm14,zmm12
  a20356:	62 61 7c 48 10 74 24 	vmovups zmm30,ZMMWORD PTR [rsp+0x700]
  a2035d:	1c 
  a2035e:	62 42 0d 48 7f f4    	vpermt2ps zmm30,zmm14,zmm12
  a20364:	62 61 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm25
  a2036b:	0f 
  a2036c:	62 f1 7c 48 28 25 ca 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff6a6bca]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a20373:	6b 6a ff 
  a20376:	62 02 5d 48 7f cc    	vpermt2ps zmm25,zmm4,zmm28
  a2037c:	62 01 7c 48 28 e1    	vmovaps zmm28,zmm25
  a20382:	62 61 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x840],zmm25
  a20389:	21 
  a2038a:	62 81 7c 48 28 cf    	vmovaps zmm17,zmm31
  a20390:	62 61 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm31
  a20397:	0d 
  a20398:	62 a2 5d 48 7f ce    	vpermt2ps zmm17,zmm4,zmm22
  a2039e:	62 e1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x880],zmm17
  a203a5:	22 
  a203a6:	62 a1 7c 48 28 c3    	vmovaps zmm16,zmm19
  a203ac:	62 e1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm19
  a203b3:	0c 
  a203b4:	62 e2 5d 48 7f c5    	vpermt2ps zmm16,zmm4,zmm5
  a203ba:	62 e1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x800],zmm16
  a203c1:	20 
  a203c2:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm10
  a203c9:	0b 
  a203ca:	62 72 5d 48 7f d3    	vpermt2ps zmm10,zmm4,zmm3
  a203d0:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm10
  a203d7:	06 
  a203d8:	62 71 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm15
  a203df:	08 
  a203e0:	62 72 5d 48 7f 7c 24 	vpermt2ps zmm15,zmm4,ZMMWORD PTR [rsp+0x100]
  a203e7:	04 
  a203e8:	62 e1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x7c0],zmm21
  a203ef:	1f 
  a203f0:	62 e2 5d 48 7f 6c 24 	vpermt2ps zmm21,zmm4,ZMMWORD PTR [rsp+0xc0]
  a203f7:	03 
  a203f8:	62 31 7c 48 28 e5    	vmovaps zmm12,zmm21
  a203fe:	62 e1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x940],zmm21
  a20405:	25 
  a20406:	62 e1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x780],zmm18
  a2040d:	1e 
  a2040e:	62 e1 7c 48 10 74 24 	vmovups zmm22,ZMMWORD PTR [rsp+0x6c0]
  a20415:	1b 
  a20416:	62 a2 5d 48 7f d6    	vpermt2ps zmm18,zmm4,zmm22
  a2041c:	62 31 7c 48 28 d2    	vmovaps zmm10,zmm18
  a20422:	62 e1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x900],zmm18
  a20429:	24 
  a2042a:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x740],zmm9
  a20431:	1d 
  a20432:	62 72 5d 48 7f 4c 24 	vpermt2ps zmm9,zmm4,ZMMWORD PTR [rsp+0x1c0]
  a20439:	07 
  a2043a:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x8c0],zmm9
  a20441:	23 
  a20442:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x80]
  a20449:	02 
  a2044a:	62 e1 7c 48 28 ed    	vmovaps zmm21,zmm5
  a20450:	62 f2 5d 48 7f e9    	vpermt2ps zmm5,zmm4,zmm1
  a20456:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm5
  a2045d:	02 
  a2045e:	62 c1 7c 48 28 dd    	vmovaps zmm19,zmm13
  a20464:	62 72 5d 48 7f e8    	vpermt2ps zmm13,zmm4,zmm0
  a2046a:	62 61 7c 48 28 c8    	vmovaps zmm25,zmm0
  a20470:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm13
  a20477:	10 
  a20478:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x40]
  a2047f:	01 
  a20480:	62 e1 7c 48 28 d1    	vmovaps zmm18,zmm1
  a20486:	62 92 5d 48 7f ca    	vpermt2ps zmm1,zmm4,zmm26
  a2048c:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm1
  a20493:	01 
  a20494:	62 31 7c 48 28 f4    	vmovaps zmm14,zmm20
  a2049a:	62 32 5d 48 7f f7    	vpermt2ps zmm14,zmm4,zmm23
  a204a0:	62 71 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x980],zmm14
  a204a7:	26 
  a204a8:	62 d1 7c 48 28 c0    	vmovaps zmm0,zmm8
  a204ae:	62 d2 5d 48 7f c3    	vpermt2ps zmm0,zmm4,zmm11
  a204b4:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm0
  a204bb:	14 
  a204bc:	62 91 7c 48 28 db    	vmovaps zmm3,zmm27
  a204c2:	62 f2 5d 48 7f de    	vpermt2ps zmm3,zmm4,zmm6
  a204c8:	62 f1 7c 48 28 d3    	vmovaps zmm2,zmm3
  a204ce:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm3
  a204d5:	13 
  a204d6:	62 91 7c 48 28 dd    	vmovaps zmm3,zmm29
  a204dc:	62 f2 5d 48 7f df    	vpermt2ps zmm3,zmm4,zmm7
  a204e2:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm3
  a204e9:	12 
  a204ea:	62 f1 7c 48 28 f7    	vmovaps zmm6,zmm7
  a204f0:	62 92 3d 40 77 e6    	vpermi2ps zmm4,zmm24,zmm30
  a204f6:	62 91 7c 48 28 fe    	vmovaps zmm7,zmm30
  a204fc:	62 61 7c 48 28 35 fa 	vmovaps zmm30,ZMMWORD PTR [rip+0xffffffffff6a68fa]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a20503:	68 6a ff 
  a20506:	62 71 fd 48 15 da    	vunpckhpd zmm11,zmm0,zmm2
  a2050c:	62 71 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x680],zmm11
  a20513:	1a 
  a20514:	62 f1 e5 48 15 c4    	vunpckhpd zmm0,zmm3,zmm4
  a2051a:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x640],zmm0
  a20521:	19 
  a20522:	62 72 0d 40 7f d8    	vpermt2ps zmm11,zmm30,zmm0
  a20528:	62 41 d5 48 15 fd    	vunpckhpd zmm31,zmm5,zmm13
  a2052e:	62 61 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x600],zmm31
  a20535:	18 
  a20536:	62 d1 f5 48 15 c6    	vunpckhpd zmm0,zmm1,zmm14
  a2053c:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm0
  a20543:	17 
  a20544:	62 62 0d 40 7f f8    	vpermt2ps zmm31,zmm30,zmm0
  a2054a:	62 f1 7c 48 10 52 0d 	vmovups zmm2,ZMMWORD PTR [rdx+0x340]
  a20551:	62 f1 7c 48 10 4a 0c 	vmovups zmm1,ZMMWORD PTR [rdx+0x300]
  a20558:	62 f1 04 40 59 c1    	vmulps zmm0,zmm31,zmm1
  a2055e:	62 f2 25 48 b8 c2    	vfmadd231ps zmm0,zmm11,zmm2
  a20564:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x700],zmm0
  a2056b:	1c 
  a2056c:	62 f1 24 48 59 c1    	vmulps zmm0,zmm11,zmm1
  a20572:	62 92 6d 48 bc c7    	vfnmadd231ps zmm0,zmm2,zmm31
  a20578:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xa40],zmm0
  a2057f:	29 
  a20580:	62 d1 85 48 15 cc    	vunpckhpd zmm1,zmm15,zmm12
  a20586:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm1
  a2058d:	11 
  a2058e:	62 d1 ad 48 15 c1    	vunpckhpd zmm0,zmm10,zmm9
  a20594:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm0
  a2059b:	16 
  a2059c:	62 f2 0d 40 7f c8    	vpermt2ps zmm1,zmm30,zmm0
  a205a2:	62 21 9d 40 15 f9    	vunpckhpd zmm31,zmm28,zmm17
  a205a8:	62 71 7c 48 10 74 24 	vmovups zmm14,ZMMWORD PTR [rsp+0x180]
  a205af:	06 
  a205b0:	62 d1 fd 40 15 c6    	vunpckhpd zmm0,zmm16,zmm14
  a205b6:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm0
  a205bd:	15 
  a205be:	62 91 7c 48 28 d7    	vmovaps zmm2,zmm31
  a205c4:	62 f2 0d 40 7f d0    	vpermt2ps zmm2,zmm30,zmm0
  a205ca:	62 f1 7c 48 10 5a 1d 	vmovups zmm3,ZMMWORD PTR [rdx+0x740]
  a205d1:	62 f1 7c 48 10 42 1c 	vmovups zmm0,ZMMWORD PTR [rdx+0x700]
  a205d8:	62 61 6c 48 59 e0    	vmulps zmm28,zmm2,zmm0
  a205de:	62 62 75 48 b8 e3    	vfmadd231ps zmm28,zmm1,zmm3
  a205e4:	62 61 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0xa00],zmm28
  a205eb:	28 
  a205ec:	62 f1 74 48 59 c0    	vmulps zmm0,zmm1,zmm0
  a205f2:	62 f2 65 48 bc c2    	vfnmadd231ps zmm0,zmm3,zmm2
  a205f8:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x9c0],zmm0
  a205ff:	27 
  a20600:	62 f1 7c 48 28 05 f6 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6a68f6]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a20607:	68 6a ff 
  a2060a:	62 e2 7d 48 7f 6c 24 	vpermt2ps zmm21,zmm0,ZMMWORD PTR [rsp-0x80]
  a20611:	fe 
  a20612:	62 82 7d 48 7f d9    	vpermt2ps zmm19,zmm0,zmm25
  a20618:	62 82 7d 48 7f d2    	vpermt2ps zmm18,zmm0,zmm26
  a2061e:	62 a2 7d 48 7f e7    	vpermt2ps zmm20,zmm0,zmm23
  a20624:	62 71 7c 48 10 6c 24 	vmovups zmm13,ZMMWORD PTR [rsp+0x200]
  a2062b:	08 
  a2062c:	62 72 7d 48 7f 6c 24 	vpermt2ps zmm13,zmm0,ZMMWORD PTR [rsp+0x100]
  a20633:	04 
  a20634:	62 71 7c 48 10 5c 24 	vmovups zmm11,ZMMWORD PTR [rsp+0x7c0]
  a2063b:	1f 
  a2063c:	62 72 7d 48 7f 5c 24 	vpermt2ps zmm11,zmm0,ZMMWORD PTR [rsp+0xc0]
  a20643:	03 
  a20644:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x780]
  a2064b:	1e 
  a2064c:	62 32 7d 48 7f d6    	vpermt2ps zmm10,zmm0,zmm22
  a20652:	62 61 7c 48 10 4c 24 	vmovups zmm25,ZMMWORD PTR [rsp+0x740]
  a20659:	1d 
  a2065a:	62 62 7d 48 7f 4c 24 	vpermt2ps zmm25,zmm0,ZMMWORD PTR [rsp+0x1c0]
  a20661:	07 
  a20662:	62 71 7c 48 10 64 24 	vmovups zmm12,ZMMWORD PTR [rsp+0x3c0]
  a20669:	0f 
  a2066a:	62 72 7d 48 7f 64 24 	vpermt2ps zmm12,zmm0,ZMMWORD PTR [rsp+0x380]
  a20671:	0e 
  a20672:	62 e1 7c 48 10 44 24 	vmovups zmm16,ZMMWORD PTR [rsp+0x340]
  a20679:	0d 
  a2067a:	62 e2 7d 48 7f 44 24 	vpermt2ps zmm16,zmm0,ZMMWORD PTR [rsp-0x40]
  a20681:	ff 
  a20682:	62 e1 7c 48 10 4c 24 	vmovups zmm17,ZMMWORD PTR [rsp+0x300]
  a20689:	0c 
  a2068a:	62 e2 7d 48 7f 4c 24 	vpermt2ps zmm17,zmm0,ZMMWORD PTR [rsp+0x140]
  a20691:	05 
  a20692:	62 e1 7c 48 10 7c 24 	vmovups zmm23,ZMMWORD PTR [rsp+0x2c0]
  a20699:	0b 
  a2069a:	62 e2 7d 48 7f 3c 24 	vpermt2ps zmm23,zmm0,ZMMWORD PTR [rsp]
  a206a1:	62 72 7d 48 7f 44 24 	vpermt2ps zmm8,zmm0,ZMMWORD PTR [rsp+0x280]
  a206a8:	0a 
  a206a9:	62 62 7d 48 7f 5c 24 	vpermt2ps zmm27,zmm0,ZMMWORD PTR [rsp+0x240]
  a206b0:	09 
  a206b1:	62 62 7d 48 7f ee    	vpermt2ps zmm29,zmm0,zmm6
  a206b7:	62 62 7d 48 7f c7    	vpermt2ps zmm24,zmm0,zmm7
  a206bd:	62 21 d5 40 15 d3    	vunpckhpd zmm26,zmm21,zmm19
  a206c3:	62 b1 ed 40 15 d4    	vunpckhpd zmm2,zmm18,zmm20
  a206c9:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm2
  a206d0:	0b 
  a206d1:	62 91 7c 48 28 c2    	vmovaps zmm0,zmm26
  a206d7:	62 f2 0d 40 7f c2    	vpermt2ps zmm0,zmm30,zmm2
  a206dd:	62 91 bd 48 15 db    	vunpckhpd zmm3,zmm8,zmm27
  a206e3:	62 d1 7c 48 28 e8    	vmovaps zmm5,zmm8
  a206e9:	62 91 95 40 15 d0    	vunpckhpd zmm2,zmm29,zmm24
  a206ef:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm2
  a206f6:	0a 
  a206f7:	62 f1 7c 48 28 cb    	vmovaps zmm1,zmm3
  a206fd:	62 f2 0d 40 7f ca    	vpermt2ps zmm1,zmm30,zmm2
  a20703:	62 f1 7c 48 10 52 04 	vmovups zmm2,ZMMWORD PTR [rdx+0x100]
  a2070a:	62 f1 7c 48 10 7a 05 	vmovups zmm7,ZMMWORD PTR [rdx+0x140]
  a20711:	62 71 74 48 59 c2    	vmulps zmm8,zmm1,zmm2
  a20717:	62 72 7d 48 bc c7    	vfnmadd231ps zmm8,zmm0,zmm7
  a2071d:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm8
  a20724:	04 
  a20725:	62 f1 7c 48 59 c2    	vmulps zmm0,zmm0,zmm2
  a2072b:	62 f2 45 48 b8 c1    	vfmadd231ps zmm0,zmm7,zmm1
  a20731:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm0
  a20738:	03 
  a20739:	62 21 9d 48 15 e0    	vunpckhpd zmm28,zmm12,zmm16
  a2073f:	62 b1 f5 40 15 cf    	vunpckhpd zmm1,zmm17,zmm23
  a20745:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm1
  a2074c:	09 
  a2074d:	62 91 7c 48 28 c4    	vmovaps zmm0,zmm28
  a20753:	62 f2 0d 40 7f c1    	vpermt2ps zmm0,zmm30,zmm1
  a20759:	62 d1 95 48 15 cb    	vunpckhpd zmm1,zmm13,zmm11
  a2075f:	62 91 ad 48 15 f1    	vunpckhpd zmm6,zmm10,zmm25
  a20765:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm6
  a2076c:	08 
  a2076d:	62 d1 7c 48 28 fa    	vmovaps zmm7,zmm10
  a20773:	62 f1 7c 48 28 d1    	vmovaps zmm2,zmm1
  a20779:	62 f2 0d 40 7f d6    	vpermt2ps zmm2,zmm30,zmm6
  a2077f:	62 71 7c 48 10 42 15 	vmovups zmm8,ZMMWORD PTR [rdx+0x540]
  a20786:	62 71 7c 48 10 4a 14 	vmovups zmm9,ZMMWORD PTR [rdx+0x500]
  a2078d:	62 51 6c 48 59 d1    	vmulps zmm10,zmm2,zmm9
  a20793:	62 52 7d 48 bc d0    	vfnmadd231ps zmm10,zmm0,zmm8
  a20799:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm10
  a207a0:	07 
  a207a1:	62 d1 7c 48 59 c1    	vmulps zmm0,zmm0,zmm9
  a207a7:	62 f2 3d 48 b8 c2    	vfmadd231ps zmm0,zmm8,zmm2
  a207ad:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x6c0],zmm0
  a207b4:	1b 
  a207b5:	62 b1 d5 40 14 c3    	vunpcklpd zmm0,zmm21,zmm19
  a207bb:	62 31 ed 40 14 c4    	vunpcklpd zmm8,zmm18,zmm20
  a207c1:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm8
  a207c8:	0c 
  a207c9:	62 91 d5 48 14 eb    	vunpcklpd zmm5,zmm5,zmm27
  a207cf:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm5
  a207d6:	fe 
  a207d7:	62 91 95 40 14 f0    	vunpcklpd zmm6,zmm29,zmm24
  a207dd:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm6
  a207e4:	0e 
  a207e5:	62 e1 7c 48 28 f0    	vmovaps zmm22,zmm0
  a207eb:	62 f1 7c 48 28 15 4b 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff6a664b]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a207f2:	66 6a ff 
  a207f5:	62 d2 6d 48 7f c0    	vpermt2ps zmm0,zmm2,zmm8
  a207fb:	62 f2 6d 48 7f ee    	vpermt2ps zmm5,zmm2,zmm6
  a20801:	62 f1 7c 48 10 72 02 	vmovups zmm6,ZMMWORD PTR [rdx+0x80]
  a20808:	62 71 7c 48 10 42 03 	vmovups zmm8,ZMMWORD PTR [rdx+0xc0]
  a2080f:	62 71 54 48 59 ce    	vmulps zmm9,zmm5,zmm6
  a20815:	62 52 7d 48 bc c8    	vfnmadd231ps zmm9,zmm0,zmm8
  a2081b:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm9
  a20822:	0f 
  a20823:	62 f1 7c 48 59 c6    	vmulps zmm0,zmm0,zmm6
  a20829:	62 f2 3d 48 b8 c5    	vfmadd231ps zmm0,zmm8,zmm5
  a2082f:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm0
  a20836:	0d 
  a20837:	62 d1 95 48 14 c3    	vunpcklpd zmm0,zmm13,zmm11
  a2083d:	62 11 c5 48 14 e9    	vunpcklpd zmm13,zmm7,zmm25
  a20843:	62 b1 9d 48 14 e8    	vunpcklpd zmm5,zmm12,zmm16
  a20849:	62 31 f5 40 14 e7    	vunpcklpd zmm12,zmm17,zmm23
  a2084f:	62 e1 7c 48 28 e5    	vmovaps zmm20,zmm5
  a20855:	62 d2 6d 48 7f ec    	vpermt2ps zmm5,zmm2,zmm12
  a2085b:	62 61 7c 48 28 c8    	vmovaps zmm25,zmm0
  a20861:	62 d2 6d 48 7f c5    	vpermt2ps zmm0,zmm2,zmm13
  a20867:	62 f1 7c 48 10 72 13 	vmovups zmm6,ZMMWORD PTR [rdx+0x4c0]
  a2086e:	62 71 7c 48 10 42 12 	vmovups zmm8,ZMMWORD PTR [rdx+0x480]
  a20875:	62 51 7c 48 59 c8    	vmulps zmm9,zmm0,zmm8
  a2087b:	62 72 55 48 bc ce    	vfnmadd231ps zmm9,zmm5,zmm6
  a20881:	62 71 7c 48 11 0c 24 	vmovups ZMMWORD PTR [rsp],zmm9
  a20888:	62 d1 54 48 59 e8    	vmulps zmm5,zmm5,zmm8
  a2088e:	62 f2 4d 48 b8 e8    	vfmadd231ps zmm5,zmm6,zmm0
  a20894:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm5
  a2089b:	ff 
  a2089c:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x840]
  a208a3:	21 
  a208a4:	62 f1 fd 48 14 44 24 	vunpcklpd zmm0,zmm0,ZMMWORD PTR [rsp+0x880]
  a208ab:	22 
  a208ac:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x800]
  a208b3:	20 
  a208b4:	62 51 d5 48 14 ce    	vunpcklpd zmm9,zmm5,zmm14
  a208ba:	62 f1 85 48 14 6c 24 	vunpcklpd zmm5,zmm15,ZMMWORD PTR [rsp+0x940]
  a208c1:	25 
  a208c2:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x900]
  a208c9:	24 
  a208ca:	62 71 cd 48 14 44 24 	vunpcklpd zmm8,zmm6,ZMMWORD PTR [rsp+0x8c0]
  a208d1:	23 
  a208d2:	62 e1 7c 48 28 c5    	vmovaps zmm16,zmm5
  a208d8:	62 d2 6d 48 7f e8    	vpermt2ps zmm5,zmm2,zmm8
  a208de:	62 61 7c 48 28 d8    	vmovaps zmm27,zmm0
  a208e4:	62 d2 6d 48 7f c1    	vpermt2ps zmm0,zmm2,zmm9
  a208ea:	62 f1 7c 48 10 72 1b 	vmovups zmm6,ZMMWORD PTR [rdx+0x6c0]
  a208f1:	62 71 7c 48 10 52 1a 	vmovups zmm10,ZMMWORD PTR [rdx+0x680]
  a208f8:	62 51 7c 48 59 f2    	vmulps zmm14,zmm0,zmm10
  a208fe:	62 72 55 48 b8 f6    	vfmadd231ps zmm14,zmm5,zmm6
  a20904:	62 71 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm14
  a2090b:	06 
  a2090c:	62 d1 54 48 59 ea    	vmulps zmm5,zmm5,zmm10
  a20912:	62 f2 4d 48 bc e8    	vfnmadd231ps zmm5,zmm6,zmm0
  a20918:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm5
  a2091f:	05 
  a20920:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x80]
  a20927:	02 
  a20928:	62 71 fd 48 14 7c 24 	vunpcklpd zmm15,zmm0,ZMMWORD PTR [rsp+0x400]
  a2092f:	10 
  a20930:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x40]
  a20937:	01 
  a20938:	62 f1 fd 48 14 74 24 	vunpcklpd zmm6,zmm0,ZMMWORD PTR [rsp+0x980]
  a2093f:	26 
  a20940:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x500]
  a20947:	14 
  a20948:	62 71 fd 48 14 74 24 	vunpcklpd zmm14,zmm0,ZMMWORD PTR [rsp+0x4c0]
  a2094f:	13 
  a20950:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x480]
  a20957:	12 
  a20958:	62 f1 fd 48 14 ec    	vunpcklpd zmm5,zmm0,zmm4
  a2095e:	62 d1 7c 48 28 c6    	vmovaps zmm0,zmm14
  a20964:	62 72 6d 48 7f f5    	vpermt2ps zmm14,zmm2,zmm5
  a2096a:	62 51 7c 48 28 d7    	vmovaps zmm10,zmm15
  a20970:	62 72 6d 48 7f fe    	vpermt2ps zmm15,zmm2,zmm6
  a20976:	62 f1 7c 48 10 62 0b 	vmovups zmm4,ZMMWORD PTR [rdx+0x2c0]
  a2097d:	62 e1 7c 48 10 4a 0a 	vmovups zmm17,ZMMWORD PTR [rdx+0x280]
  a20984:	62 a1 04 48 59 d1    	vmulps zmm18,zmm15,zmm17
  a2098a:	62 e2 0d 48 b8 d4    	vfmadd231ps zmm18,zmm14,zmm4
  a20990:	62 e1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm18
  a20997:	02 
  a20998:	62 31 0c 48 59 f1    	vmulps zmm14,zmm14,zmm17
  a2099e:	62 52 5d 48 bc f7    	vfnmadd231ps zmm14,zmm4,zmm15
  a209a4:	62 71 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm14
  a209ab:	01 
  a209ac:	62 62 6d 48 7f 54 24 	vpermt2ps zmm26,zmm2,ZMMWORD PTR [rsp+0x2c0]
  a209b3:	0b 
  a209b4:	62 f2 6d 48 7f 5c 24 	vpermt2ps zmm3,zmm2,ZMMWORD PTR [rsp+0x280]
  a209bb:	0a 
  a209bc:	62 62 6d 48 7f 64 24 	vpermt2ps zmm28,zmm2,ZMMWORD PTR [rsp+0x240]
  a209c3:	09 
  a209c4:	62 f2 6d 48 7f 4c 24 	vpermt2ps zmm1,zmm2,ZMMWORD PTR [rsp+0x200]
  a209cb:	08 
  a209cc:	62 71 7c 48 10 74 24 	vmovups zmm14,ZMMWORD PTR [rsp+0x680]
  a209d3:	1a 
  a209d4:	62 72 6d 48 7f 74 24 	vpermt2ps zmm14,zmm2,ZMMWORD PTR [rsp+0x640]
  a209db:	19 
  a209dc:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0x600]
  a209e3:	18 
  a209e4:	62 f2 6d 48 7f 7c 24 	vpermt2ps zmm7,zmm2,ZMMWORD PTR [rsp+0x5c0]
  a209eb:	17 
  a209ec:	62 71 7c 48 10 5c 24 	vmovups zmm11,ZMMWORD PTR [rsp+0x440]
  a209f3:	11 
  a209f4:	62 72 6d 48 7f 5c 24 	vpermt2ps zmm11,zmm2,ZMMWORD PTR [rsp+0x580]
  a209fb:	16 
  a209fc:	62 62 6d 48 7f 7c 24 	vpermt2ps zmm31,zmm2,ZMMWORD PTR [rsp+0x540]
  a20a03:	15 
  a20a04:	62 f1 7c 48 10 52 07 	vmovups zmm2,ZMMWORD PTR [rdx+0x1c0]
  a20a0b:	62 f1 7c 48 10 62 06 	vmovups zmm4,ZMMWORD PTR [rdx+0x180]
  a20a12:	62 61 64 48 59 c4    	vmulps zmm24,zmm3,zmm4
  a20a18:	62 62 2d 40 bc c2    	vfnmadd231ps zmm24,zmm26,zmm2
  a20a1e:	62 e1 2c 40 59 ec    	vmulps zmm21,zmm26,zmm4
  a20a24:	62 e2 6d 48 b8 eb    	vfmadd231ps zmm21,zmm2,zmm3
  a20a2a:	62 f1 7c 48 10 52 17 	vmovups zmm2,ZMMWORD PTR [rdx+0x5c0]
  a20a31:	62 f1 7c 48 10 5a 16 	vmovups zmm3,ZMMWORD PTR [rdx+0x580]
  a20a38:	62 61 74 48 59 eb    	vmulps zmm29,zmm1,zmm3
  a20a3e:	62 62 1d 40 bc ea    	vfnmadd231ps zmm29,zmm28,zmm2
  a20a44:	62 71 1c 40 59 fb    	vmulps zmm15,zmm28,zmm3
  a20a4a:	62 72 6d 48 b8 f9    	vfmadd231ps zmm15,zmm2,zmm1
  a20a50:	62 f1 7c 48 10 4a 1f 	vmovups zmm1,ZMMWORD PTR [rdx+0x7c0]
  a20a57:	62 f1 7c 48 10 52 1e 	vmovups zmm2,ZMMWORD PTR [rdx+0x780]
  a20a5e:	62 e1 04 40 59 da    	vmulps zmm19,zmm31,zmm2
  a20a64:	62 e2 25 48 b8 d9    	vfmadd231ps zmm19,zmm11,zmm1
  a20a6a:	62 e1 24 48 59 ca    	vmulps zmm17,zmm11,zmm2
  a20a70:	62 82 75 48 bc cf    	vfnmadd231ps zmm17,zmm1,zmm31
  a20a76:	62 f1 7c 48 10 4a 0f 	vmovups zmm1,ZMMWORD PTR [rdx+0x3c0]
  a20a7d:	62 f1 7c 48 10 62 0e 	vmovups zmm4,ZMMWORD PTR [rdx+0x380]
  a20a84:	62 f1 7c 48 28 df    	vmovaps zmm3,zmm7
  a20a8a:	62 f1 44 48 59 fc    	vmulps zmm7,zmm7,zmm4
  a20a90:	62 f2 0d 48 b8 f9    	vfmadd231ps zmm7,zmm14,zmm1
  a20a96:	62 e1 0c 48 59 d4    	vmulps zmm18,zmm14,zmm4
  a20a9c:	62 e2 75 48 bc d3    	vfnmadd231ps zmm18,zmm1,zmm3
  a20aa2:	62 e2 0d 40 7f 74 24 	vpermt2ps zmm22,zmm30,ZMMWORD PTR [rsp+0x300]
  a20aa9:	0c 
  a20aaa:	62 e1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm22
  a20ab1:	17 
  a20ab2:	62 42 0d 40 7f cd    	vpermt2ps zmm25,zmm30,zmm13
  a20ab8:	62 c2 0d 40 7f e4    	vpermt2ps zmm20,zmm30,zmm12
  a20abe:	62 42 0d 40 7f d9    	vpermt2ps zmm27,zmm30,zmm9
  a20ac4:	62 c2 0d 40 7f c0    	vpermt2ps zmm16,zmm30,zmm8
  a20aca:	62 72 0d 40 7f d6    	vpermt2ps zmm10,zmm30,zmm6
  a20ad0:	62 f2 0d 40 7f c5    	vpermt2ps zmm0,zmm30,zmm5
  a20ad6:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x80]
  a20add:	fe 
  a20ade:	62 f2 0d 40 7f 4c 24 	vpermt2ps zmm1,zmm30,ZMMWORD PTR [rsp+0x380]
  a20ae5:	0e 
  a20ae6:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a20aed:	fe 
  a20aee:	62 f1 7c 48 10 4a 11 	vmovups zmm1,ZMMWORD PTR [rdx+0x440]
  a20af5:	62 f1 7c 48 10 62 10 	vmovups zmm4,ZMMWORD PTR [rdx+0x400]
  a20afc:	62 61 5c 40 59 d4    	vmulps zmm26,zmm20,zmm4
  a20b02:	62 62 35 40 b8 d1    	vfmadd231ps zmm26,zmm25,zmm1
  a20b08:	62 e1 34 40 59 fc    	vmulps zmm23,zmm25,zmm4
  a20b0e:	62 a2 75 48 bc fc    	vfnmadd231ps zmm23,zmm1,zmm20
  a20b14:	62 f1 7c 48 10 4a 09 	vmovups zmm1,ZMMWORD PTR [rdx+0x240]
  a20b1b:	62 f1 7c 48 10 62 08 	vmovups zmm4,ZMMWORD PTR [rdx+0x200]
  a20b22:	62 e1 7c 48 59 e4    	vmulps zmm20,zmm0,zmm4
  a20b28:	62 e2 2d 48 bc e1    	vfnmadd231ps zmm20,zmm10,zmm1
  a20b2e:	62 61 2c 48 59 e4    	vmulps zmm28,zmm10,zmm4
  a20b34:	62 62 75 48 b8 e0    	vfmadd231ps zmm28,zmm1,zmm0
  a20b3a:	62 f1 7c 48 10 4a 19 	vmovups zmm1,ZMMWORD PTR [rdx+0x640]
  a20b41:	62 f1 7c 48 10 42 18 	vmovups zmm0,ZMMWORD PTR [rdx+0x600]
  a20b48:	62 61 7c 40 59 c8    	vmulps zmm25,zmm16,zmm0
  a20b4e:	62 62 25 40 bc c9    	vfnmadd231ps zmm25,zmm27,zmm1
  a20b54:	62 f1 24 40 59 d0    	vmulps zmm2,zmm27,zmm0
  a20b5a:	62 b2 75 48 b8 d0    	vfmadd231ps zmm2,zmm1,zmm16
  a20b60:	62 61 7c 48 10 74 24 	vmovups zmm30,ZMMWORD PTR [rsp+0x3c0]
  a20b67:	0f 
  a20b68:	62 71 0c 40 5c 14 24 	vsubps zmm10,zmm30,ZMMWORD PTR [rsp]
  a20b6f:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x80]
  a20b76:	02 
  a20b77:	62 71 7c 48 5c 5c 24 	vsubps zmm11,zmm0,ZMMWORD PTR [rsp+0x180]
  a20b7e:	06 
  a20b7f:	62 d1 2c 48 5c e3    	vsubps zmm4,zmm10,zmm11
  a20b85:	62 e1 7c 48 10 74 24 	vmovups zmm22,ZMMWORD PTR [rsp+0x340]
  a20b8c:	0d 
  a20b8d:	62 71 4c 40 5c 6c 24 	vsubps zmm13,zmm22,ZMMWORD PTR [rsp-0x40]
  a20b94:	ff 
  a20b95:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x140]
  a20b9c:	05 
  a20b9d:	62 e1 7c 48 5c 44 24 	vsubps zmm16,zmm0,ZMMWORD PTR [rsp+0x40]
  a20ba4:	01 
  a20ba5:	62 72 7d 48 18 05 51 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff654b51]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a20bac:	4b 65 ff 
  a20baf:	62 b1 14 48 5c e8    	vsubps zmm5,zmm13,zmm16
  a20bb5:	62 d1 54 48 59 c0    	vmulps zmm0,zmm5,zmm8
  a20bbb:	62 72 7d 48 18 25 9f 	vbroadcastss zmm12,DWORD PTR [rip+0xffffffffff654a9f]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a20bc2:	4a 65 ff 
  a20bc5:	62 d2 5d 48 b8 c4    	vfmadd231ps zmm0,zmm4,zmm12
  a20bcb:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x680],zmm0
  a20bd2:	1a 
  a20bd3:	62 d1 54 48 59 c4    	vmulps zmm0,zmm5,zmm12
  a20bd9:	62 f2 3d 48 bc c4    	vfnmadd231ps zmm0,zmm8,zmm4
  a20bdf:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x640],zmm0
  a20be6:	19 
  a20be7:	62 91 3c 40 5c ed    	vsubps zmm5,zmm24,zmm29
  a20bed:	62 21 44 48 5c db    	vsubps zmm27,zmm7,zmm19
  a20bf3:	62 11 54 48 5c cb    	vsubps zmm9,zmm5,zmm27
  a20bf9:	62 41 54 40 5c ff    	vsubps zmm31,zmm21,zmm15
  a20bff:	62 b1 74 40 5c ca    	vsubps zmm1,zmm17,zmm18
  a20c05:	62 f1 04 40 5c c1    	vsubps zmm0,zmm31,zmm1
  a20c0b:	62 d1 7c 48 59 dc    	vmulps zmm3,zmm0,zmm12
  a20c11:	62 d2 35 48 b8 d8    	vfmadd231ps zmm3,zmm9,zmm8
  a20c17:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x600],zmm3
  a20c1e:	18 
  a20c1f:	62 d1 34 48 59 dc    	vmulps zmm3,zmm9,zmm12
  a20c25:	62 f2 3d 48 bc d8    	vfnmadd231ps zmm3,zmm8,zmm0
  a20c2b:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm3
  a20c32:	16 
  a20c33:	62 91 54 48 58 c3    	vaddps zmm0,zmm5,zmm27
  a20c39:	62 f1 04 40 58 c9    	vaddps zmm1,zmm31,zmm1
  a20c3f:	62 d1 2c 48 58 eb    	vaddps zmm5,zmm10,zmm11
  a20c45:	62 31 14 48 58 d0    	vaddps zmm10,zmm13,zmm16
  a20c4b:	62 d1 2c 48 59 dc    	vmulps zmm3,zmm10,zmm12
  a20c51:	62 d2 55 48 b8 d8    	vfmadd231ps zmm3,zmm5,zmm8
  a20c57:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm3
  a20c5e:	15 
  a20c5f:	62 d1 2c 48 59 d8    	vmulps zmm3,zmm10,zmm8
  a20c65:	62 f2 1d 48 bc dd    	vfnmadd231ps zmm3,zmm12,zmm5
  a20c6b:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm3
  a20c72:	13 
  a20c73:	62 d1 74 48 59 d8    	vmulps zmm3,zmm1,zmm8
  a20c79:	62 d2 7d 48 b8 dc    	vfmadd231ps zmm3,zmm0,zmm12
  a20c7f:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm3
  a20c86:	14 
  a20c87:	62 51 74 48 59 f4    	vmulps zmm14,zmm1,zmm12
  a20c8d:	62 52 7d 48 bc f0    	vfnmadd231ps zmm14,zmm0,zmm8
  a20c93:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x100]
  a20c9a:	04 
  a20c9b:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp+0x1c0]
  a20ca2:	07 
  a20ca3:	62 d1 4c 48 5c c1    	vsubps zmm0,zmm6,zmm9
  a20ca9:	62 71 7c 48 10 5c 24 	vmovups zmm11,ZMMWORD PTR [rsp+0xc0]
  a20cb0:	03 
  a20cb1:	62 71 7c 48 10 64 24 	vmovups zmm12,ZMMWORD PTR [rsp+0x6c0]
  a20cb8:	1b 
  a20cb9:	62 d1 24 48 5c cc    	vsubps zmm1,zmm11,zmm12
  a20cbf:	62 f1 7c 48 58 d9    	vaddps zmm3,zmm0,zmm1
  a20cc5:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm3
  a20ccc:	12 
  a20ccd:	62 f1 74 48 5c c0    	vsubps zmm0,zmm1,zmm0
  a20cd3:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm0
  a20cda:	11 
  a20cdb:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x700]
  a20ce2:	1c 
  a20ce3:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0xa00]
  a20cea:	28 
  a20ceb:	62 f1 7c 48 5c cb    	vsubps zmm1,zmm0,zmm3
  a20cf1:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0xa40]
  a20cf8:	29 
  a20cf9:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x9c0]
  a20d00:	27 
  a20d01:	62 71 5c 48 5c c5    	vsubps zmm8,zmm4,zmm5
  a20d07:	62 51 74 48 5c e8    	vsubps zmm13,zmm1,zmm8
  a20d0d:	62 f1 3c 48 58 c9    	vaddps zmm1,zmm8,zmm1
  a20d13:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm1
  a20d1a:	10 
  a20d1b:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x5c0]
  a20d22:	17 
  a20d23:	62 11 74 48 5c c2    	vsubps zmm8,zmm1,zmm26
  a20d29:	62 61 2c 40 58 d1    	vaddps zmm26,zmm26,zmm1
  a20d2f:	62 61 1c 40 5c da    	vsubps zmm27,zmm28,zmm2
  a20d35:	62 71 1c 40 58 d2    	vaddps zmm10,zmm28,zmm2
  a20d3b:	62 61 5c 48 58 e5    	vaddps zmm28,zmm4,zmm5
  a20d41:	62 41 4c 48 58 f9    	vaddps zmm31,zmm6,zmm9
  a20d47:	62 c1 54 40 58 c7    	vaddps zmm16,zmm21,zmm15
  a20d4d:	62 31 44 48 58 fb    	vaddps zmm15,zmm7,zmm19
  a20d53:	62 11 3c 40 58 cd    	vaddps zmm9,zmm24,zmm29
  a20d59:	62 a1 6c 40 58 c9    	vaddps zmm17,zmm18,zmm17
  a20d5f:	62 e1 0c 40 58 14 24 	vaddps zmm18,zmm30,ZMMWORD PTR [rsp]
  a20d66:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x40]
  a20d6d:	01 
  a20d6e:	62 e1 74 48 58 5c 24 	vaddps zmm19,zmm1,ZMMWORD PTR [rsp+0x140]
  a20d75:	05 
  a20d76:	62 e1 4c 40 58 6c 24 	vaddps zmm21,zmm22,ZMMWORD PTR [rsp-0x40]
  a20d7d:	ff 
  a20d7e:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x80]
  a20d85:	02 
  a20d86:	62 e1 74 48 58 74 24 	vaddps zmm22,zmm1,ZMMWORD PTR [rsp+0x180]
  a20d8d:	06 
  a20d8e:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x80]
  a20d95:	fe 
  a20d96:	62 21 74 48 5c c7    	vsubps zmm24,zmm1,zmm23
  a20d9c:	62 a1 74 48 58 ff    	vaddps zmm23,zmm1,zmm23
  a20da2:	62 21 34 40 5c ec    	vsubps zmm29,zmm25,zmm20
  a20da8:	62 81 5c 40 58 e1    	vaddps zmm20,zmm20,zmm25
  a20dae:	62 41 24 48 58 cc    	vaddps zmm25,zmm11,zmm12
  a20db4:	62 61 7c 48 58 f3    	vaddps zmm30,zmm0,zmm3
  a20dba:	62 b1 6c 40 5c cb    	vsubps zmm1,zmm18,zmm19
  a20dc0:	62 b1 54 40 5c c6    	vsubps zmm0,zmm21,zmm22
  a20dc6:	62 f1 74 48 58 f0    	vaddps zmm6,zmm1,zmm0
  a20dcc:	62 f1 7c 48 5c f9    	vsubps zmm7,zmm0,zmm1
  a20dd2:	62 d1 7c 40 5c cf    	vsubps zmm1,zmm16,zmm15
  a20dd8:	62 b1 34 48 5c c1    	vsubps zmm0,zmm9,zmm17
  a20dde:	62 f1 74 48 5c e0    	vsubps zmm4,zmm1,zmm0
  a20de4:	62 f1 7c 48 58 e9    	vaddps zmm5,zmm0,zmm1
  a20dea:	62 f2 7d 48 18 0d a8 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff6545a8]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a20df1:	45 65 ff 
  a20df4:	62 71 14 48 59 e9    	vmulps zmm13,zmm13,zmm1
  a20dfa:	62 f1 74 48 59 5c 24 	vmulps zmm3,zmm1,ZMMWORD PTR [rsp+0x480]
  a20e01:	12 
  a20e02:	62 f1 74 48 59 54 24 	vmulps zmm2,zmm1,ZMMWORD PTR [rsp+0x440]
  a20e09:	11 
  a20e0a:	62 f1 74 48 59 44 24 	vmulps zmm0,zmm1,ZMMWORD PTR [rsp+0x400]
  a20e11:	10 
  a20e12:	62 71 5c 48 59 d9    	vmulps zmm11,zmm4,zmm1
  a20e18:	62 71 4c 48 59 e1    	vmulps zmm12,zmm6,zmm1
  a20e1e:	62 f1 44 48 59 f1    	vmulps zmm6,zmm7,zmm1
  a20e24:	62 f1 54 48 59 c9    	vmulps zmm1,zmm5,zmm1
  a20e2a:	62 91 3c 48 5c ed    	vsubps zmm5,zmm8,zmm29
  a20e30:	62 51 14 40 58 c0    	vaddps zmm8,zmm29,zmm8
  a20e36:	62 61 6c 48 58 e8    	vaddps zmm29,zmm2,zmm0
  a20e3c:	62 f1 6c 48 5c c0    	vsubps zmm0,zmm2,zmm0
  a20e42:	62 91 3c 40 5c d3    	vsubps zmm2,zmm24,zmm27
  a20e48:	62 01 3c 40 58 c3    	vaddps zmm24,zmm24,zmm27
  a20e4e:	62 61 14 48 5c db    	vsubps zmm27,zmm13,zmm3
  a20e54:	62 d1 64 48 58 dd    	vaddps zmm3,zmm3,zmm13
  a20e5a:	62 51 2c 40 5c ea    	vsubps zmm13,zmm26,zmm10
  a20e60:	62 11 2c 48 58 d2    	vaddps zmm10,zmm10,zmm26
  a20e66:	62 01 34 40 5c d6    	vsubps zmm26,zmm25,zmm30
  a20e6c:	62 01 34 40 58 ce    	vaddps zmm25,zmm25,zmm30
  a20e72:	62 b1 34 48 58 e1    	vaddps zmm4,zmm9,zmm17
  a20e78:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm4
  a20e7f:	fe 
  a20e80:	62 b1 6c 40 58 e3    	vaddps zmm4,zmm18,zmm19
  a20e86:	62 a1 44 40 5c d4    	vsubps zmm18,zmm23,zmm20
  a20e8c:	62 a1 44 40 58 dc    	vaddps zmm19,zmm23,zmm20
  a20e92:	62 81 1c 40 5c e7    	vsubps zmm20,zmm28,zmm31
  a20e98:	62 81 04 40 58 fc    	vaddps zmm23,zmm31,zmm28
  a20e9e:	62 a1 54 40 58 ee    	vaddps zmm21,zmm21,zmm22
  a20ea4:	62 51 7c 40 58 ff    	vaddps zmm15,zmm16,zmm15
  a20eaa:	62 81 54 48 5c c3    	vsubps zmm16,zmm5,zmm27
  a20eb0:	62 f1 24 40 58 ed    	vaddps zmm5,zmm27,zmm5
  a20eb6:	62 f1 7c 48 11 2c 24 	vmovups ZMMWORD PTR [rsp],zmm5
  a20ebd:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x640]
  a20ec4:	19 
  a20ec5:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp+0x580]
  a20ecc:	16 
  a20ecd:	62 d1 54 48 5c f9    	vsubps zmm7,zmm5,zmm9
  a20ed3:	62 d1 54 48 58 e9    	vaddps zmm5,zmm5,zmm9
  a20ed9:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm5
  a20ee0:	ff 
  a20ee1:	62 01 6c 48 5c e5    	vsubps zmm28,zmm2,zmm29
  a20ee7:	62 01 6c 48 58 ed    	vaddps zmm29,zmm2,zmm29
  a20eed:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x680]
  a20ef4:	1a 
  a20ef5:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x600]
  a20efc:	18 
  a20efd:	62 61 6c 48 58 f5    	vaddps zmm30,zmm2,zmm5
  a20f03:	62 61 6c 48 5c dd    	vsubps zmm27,zmm2,zmm5
  a20f09:	62 21 14 48 5c fc    	vsubps zmm31,zmm13,zmm20
  a20f0f:	62 c1 5c 40 58 f5    	vaddps zmm22,zmm20,zmm13
  a20f15:	62 e1 4c 48 58 e1    	vaddps zmm20,zmm6,zmm1
  a20f1b:	62 71 4c 48 5c e9    	vsubps zmm13,zmm6,zmm1
  a20f21:	62 91 6c 40 5c d2    	vsubps zmm2,zmm18,zmm26
  a20f27:	62 01 6c 40 58 d2    	vaddps zmm26,zmm18,zmm26
  a20f2d:	62 c1 24 48 5c d4    	vsubps zmm18,zmm11,zmm12
  a20f33:	62 c1 1c 48 58 cb    	vaddps zmm17,zmm12,zmm11
  a20f39:	62 f1 3c 48 5c f0    	vsubps zmm6,zmm8,zmm0
  a20f3f:	62 51 7c 48 58 c8    	vaddps zmm9,zmm0,zmm8
  a20f45:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x4c0]
  a20f4c:	13 
  a20f4d:	62 51 7c 48 5c c6    	vsubps zmm8,zmm0,zmm14
  a20f53:	62 51 7c 48 58 de    	vaddps zmm11,zmm0,zmm14
  a20f59:	62 71 3c 40 5c e3    	vsubps zmm12,zmm24,zmm3
  a20f5f:	62 61 3c 40 58 c3    	vaddps zmm24,zmm24,zmm3
  a20f65:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x540]
  a20f6c:	15 
  a20f6d:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x500]
  a20f74:	14 
  a20f75:	62 f1 74 48 5c d8    	vsubps zmm3,zmm1,zmm0
  a20f7b:	62 f1 7c 48 58 e9    	vaddps zmm5,zmm0,zmm1
  a20f81:	62 91 2c 48 5c c9    	vsubps zmm1,zmm10,zmm25
  a20f87:	62 51 34 40 58 d2    	vaddps zmm10,zmm25,zmm10
  a20f8d:	62 d1 54 40 5c c7    	vsubps zmm0,zmm21,zmm15
  a20f93:	62 c1 54 40 58 ef    	vaddps zmm21,zmm21,zmm15
  a20f99:	62 31 64 40 5c ff    	vsubps zmm15,zmm19,zmm23
  a20f9f:	62 a1 64 40 58 ff    	vaddps zmm23,zmm19,zmm23
  a20fa5:	62 71 7c 48 10 74 24 	vmovups zmm14,ZMMWORD PTR [rsp-0x80]
  a20fac:	fe 
  a20fad:	62 e1 0c 48 5c dc    	vsubps zmm19,zmm14,zmm4
  a20fb3:	62 d1 5c 48 58 e6    	vaddps zmm4,zmm4,zmm14
  a20fb9:	62 11 7c 40 58 f6    	vaddps zmm14,zmm16,zmm30
  a20fbf:	62 71 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm14
  a20fc6:	fe 
  a20fc7:	62 01 7c 40 5c ce    	vsubps zmm25,zmm16,zmm30
  a20fcd:	62 71 1c 40 5c f7    	vsubps zmm14,zmm28,zmm7
  a20fd3:	62 71 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm14
  a20fda:	02 
  a20fdb:	62 71 1c 40 58 f7    	vaddps zmm14,zmm28,zmm7
  a20fe1:	62 b1 04 40 5c fa    	vsubps zmm7,zmm31,zmm18
  a20fe7:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm7
  a20fee:	01 
  a20fef:	62 a1 04 40 58 c2    	vaddps zmm16,zmm31,zmm18
  a20ff5:	62 21 6c 48 5c e4    	vsubps zmm28,zmm2,zmm20
  a20ffb:	62 a1 6c 48 58 d4    	vaddps zmm18,zmm2,zmm20
  a21001:	62 61 4c 48 5c fb    	vsubps zmm31,zmm6,zmm3
  a21007:	62 f1 4c 48 58 f3    	vaddps zmm6,zmm6,zmm3
  a2100d:	62 d1 1c 48 5c d0    	vsubps zmm2,zmm12,zmm8
  a21013:	62 d1 1c 48 58 d8    	vaddps zmm3,zmm12,zmm8
  a21019:	62 21 74 48 5c f3    	vsubps zmm30,zmm1,zmm19
  a2101f:	62 b1 74 48 58 cb    	vaddps zmm1,zmm1,zmm19
  a21025:	62 71 04 48 5c c0    	vsubps zmm8,zmm15,zmm0
  a2102b:	62 e1 04 48 58 e0    	vaddps zmm20,zmm15,zmm0
  a21031:	62 f1 7c 48 10 04 24 	vmovups zmm0,ZMMWORD PTR [rsp]
  a21038:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp-0x40]
  a2103f:	ff 
  a21040:	62 71 7c 48 5c e7    	vsubps zmm12,zmm0,zmm7
  a21046:	62 71 7c 48 58 ff    	vaddps zmm15,zmm0,zmm7
  a2104c:	62 91 14 40 5c c3    	vsubps zmm0,zmm29,zmm27
  a21052:	62 01 14 40 58 eb    	vaddps zmm29,zmm29,zmm27
  a21058:	62 41 4c 40 5c dd    	vsubps zmm27,zmm22,zmm13
  a2105e:	62 c1 4c 40 58 f5    	vaddps zmm22,zmm22,zmm13
  a21064:	62 31 2c 40 5c e9    	vsubps zmm13,zmm26,zmm17
  a2106a:	62 a1 2c 40 58 d9    	vaddps zmm19,zmm26,zmm17
  a21070:	62 41 34 48 5c d3    	vsubps zmm26,zmm9,zmm11
  a21076:	62 51 34 48 58 cb    	vaddps zmm9,zmm9,zmm11
  a2107c:	62 e1 3c 40 5c cd    	vsubps zmm17,zmm24,zmm5
  a21082:	62 71 3c 40 58 dd    	vaddps zmm11,zmm24,zmm5
  a21088:	62 b1 2c 48 5c ed    	vsubps zmm5,zmm10,zmm21
  a2108e:	62 31 2c 48 58 d5    	vaddps zmm10,zmm10,zmm21
  a21094:	62 e1 44 40 5c ec    	vsubps zmm21,zmm23,zmm4
  a2109a:	62 f1 44 40 58 e4    	vaddps zmm4,zmm23,zmm4
  a210a0:	62 f1 7c 48 28 3d d6 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff66eed6]        # 8ff80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d430>
  a210a7:	ee 66 ff 
  a210aa:	62 b3 7d 48 19 e7 02 	vextractf32x4 xmm23,zmm4,0x2
  a210b1:	62 d2 45 48 7f e2    	vpermt2ps zmm4,zmm7,zmm10
  a210b7:	62 f1 7c 48 11 26    	vmovups ZMMWORD PTR [rsi],zmm4
  a210bd:	62 73 7d 48 19 d4 02 	vextractf32x4 xmm4,zmm10,0x2
  a210c4:	62 f1 44 00 14 e4    	vunpcklps xmm4,xmm23,xmm4
  a210ca:	c5 f8 11 66 40       	vmovups XMMWORD PTR [rsi+0x40],xmm4
  a210cf:	62 73 7d 48 19 dc 02 	vextractf32x4 xmm4,zmm11,0x2
  a210d6:	62 52 45 48 7f d9    	vpermt2ps zmm11,zmm7,zmm9
  a210dc:	62 71 7c 48 11 9e 50 	vmovups ZMMWORD PTR [rsi+0x50],zmm11
  a210e3:	00 00 00 
  a210e6:	62 53 7d 48 19 c9 02 	vextractf32x4 xmm9,zmm9,0x2
  a210ed:	c4 c1 58 14 e1       	vunpcklps xmm4,xmm4,xmm9
  a210f2:	c5 f8 11 a6 90 00 00 	vmovups XMMWORD PTR [rsi+0x90],xmm4
  a210f9:	00 
  a210fa:	62 e3 7d 48 19 dc 02 	vextractf32x4 xmm4,zmm19,0x2
  a21101:	62 a2 45 48 7f de    	vpermt2ps zmm19,zmm7,zmm22
  a21107:	62 e1 7c 48 11 9e a0 	vmovups ZMMWORD PTR [rsi+0xa0],zmm19
  a2110e:	00 00 00 
  a21111:	62 c3 7d 48 19 f1 02 	vextractf32x4 xmm9,zmm22,0x2
  a21118:	c4 c1 58 14 e1       	vunpcklps xmm4,xmm4,xmm9
  a2111d:	c5 f8 11 a6 e0 00 00 	vmovups XMMWORD PTR [rsi+0xe0],xmm4
  a21124:	00 
  a21125:	62 63 7d 48 19 ec 02 	vextractf32x4 xmm4,zmm29,0x2
  a2112c:	62 42 45 48 7f ef    	vpermt2ps zmm29,zmm7,zmm15
  a21132:	62 61 7c 48 11 ae f0 	vmovups ZMMWORD PTR [rsi+0xf0],zmm29
  a21139:	00 00 00 
  a2113c:	62 53 7d 48 19 f9 02 	vextractf32x4 xmm9,zmm15,0x2
  a21143:	c4 c1 58 14 e1       	vunpcklps xmm4,xmm4,xmm9
  a21148:	c5 f8 11 a6 30 01 00 	vmovups XMMWORD PTR [rsi+0x130],xmm4
  a2114f:	00 
  a21150:	62 e3 7d 48 19 e4 02 	vextractf32x4 xmm4,zmm20,0x2
  a21157:	62 e2 45 48 7f e1    	vpermt2ps zmm20,zmm7,zmm1
  a2115d:	62 e1 7c 48 11 66 05 	vmovups ZMMWORD PTR [rsi+0x140],zmm20
  a21164:	62 f3 7d 48 19 c9 02 	vextractf32x4 xmm1,zmm1,0x2
  a2116b:	c5 d8 14 c9          	vunpcklps xmm1,xmm4,xmm1
  a2116f:	c5 f8 11 8e 80 01 00 	vmovups XMMWORD PTR [rsi+0x180],xmm1
  a21176:	00 
  a21177:	62 f3 7d 48 19 d9 02 	vextractf32x4 xmm1,zmm3,0x2
  a2117e:	62 f2 45 48 7f de    	vpermt2ps zmm3,zmm7,zmm6
  a21184:	62 f1 7c 48 11 9e 90 	vmovups ZMMWORD PTR [rsi+0x190],zmm3
  a2118b:	01 00 00 
  a2118e:	62 f3 7d 48 19 f3 02 	vextractf32x4 xmm3,zmm6,0x2
  a21195:	c5 f0 14 cb          	vunpcklps xmm1,xmm1,xmm3
  a21199:	c5 f8 11 8e d0 01 00 	vmovups XMMWORD PTR [rsi+0x1d0],xmm1
  a211a0:	00 
  a211a1:	62 e3 7d 48 19 d1 02 	vextractf32x4 xmm1,zmm18,0x2
  a211a8:	62 a2 45 48 7f d0    	vpermt2ps zmm18,zmm7,zmm16
  a211ae:	62 e1 7c 48 11 96 e0 	vmovups ZMMWORD PTR [rsi+0x1e0],zmm18
  a211b5:	01 00 00 
  a211b8:	62 e3 7d 48 19 c3 02 	vextractf32x4 xmm3,zmm16,0x2
  a211bf:	c5 f0 14 cb          	vunpcklps xmm1,xmm1,xmm3
  a211c3:	c5 f8 11 8e 20 02 00 	vmovups XMMWORD PTR [rsi+0x220],xmm1
  a211ca:	00 
  a211cb:	62 73 7d 48 19 f1 02 	vextractf32x4 xmm1,zmm14,0x2
  a211d2:	62 12 45 48 7f f1    	vpermt2ps zmm14,zmm7,zmm25
  a211d8:	62 71 7c 48 11 b6 30 	vmovups ZMMWORD PTR [rsi+0x230],zmm14
  a211df:	02 00 00 
  a211e2:	62 63 7d 48 19 cb 02 	vextractf32x4 xmm3,zmm25,0x2
  a211e9:	c5 f0 14 cb          	vunpcklps xmm1,xmm1,xmm3
  a211ed:	c5 f8 11 8e 70 02 00 	vmovups XMMWORD PTR [rsi+0x270],xmm1
  a211f4:	00 
  a211f5:	62 e3 7d 48 19 e9 02 	vextractf32x4 xmm1,zmm21,0x2
  a211fc:	62 e2 45 48 7f ed    	vpermt2ps zmm21,zmm7,zmm5
  a21202:	62 e1 7c 48 11 6e 0a 	vmovups ZMMWORD PTR [rsi+0x280],zmm21
  a21209:	62 f3 7d 48 19 eb 02 	vextractf32x4 xmm3,zmm5,0x2
  a21210:	c5 f0 14 cb          	vunpcklps xmm1,xmm1,xmm3
  a21214:	c5 f8 11 8e c0 02 00 	vmovups XMMWORD PTR [rsi+0x2c0],xmm1
  a2121b:	00 
  a2121c:	62 e3 7d 48 19 c9 02 	vextractf32x4 xmm1,zmm17,0x2
  a21223:	62 82 45 48 7f ca    	vpermt2ps zmm17,zmm7,zmm26
  a21229:	62 e1 7c 48 11 8e d0 	vmovups ZMMWORD PTR [rsi+0x2d0],zmm17
  a21230:	02 00 00 
  a21233:	62 63 7d 48 19 d3 02 	vextractf32x4 xmm3,zmm26,0x2
  a2123a:	c5 f0 14 cb          	vunpcklps xmm1,xmm1,xmm3
  a2123e:	c5 f8 11 8e 10 03 00 	vmovups XMMWORD PTR [rsi+0x310],xmm1
  a21245:	00 
  a21246:	62 73 7d 48 19 e9 02 	vextractf32x4 xmm1,zmm13,0x2
  a2124d:	62 12 45 48 7f eb    	vpermt2ps zmm13,zmm7,zmm27
  a21253:	62 71 7c 48 11 ae 20 	vmovups ZMMWORD PTR [rsi+0x320],zmm13
  a2125a:	03 00 00 
  a2125d:	62 63 7d 48 19 db 02 	vextractf32x4 xmm3,zmm27,0x2
  a21264:	c5 f0 14 cb          	vunpcklps xmm1,xmm1,xmm3
  a21268:	c5 f8 11 8e 60 03 00 	vmovups XMMWORD PTR [rsi+0x360],xmm1
  a2126f:	00 
  a21270:	62 f3 7d 48 19 c1 02 	vextractf32x4 xmm1,zmm0,0x2
  a21277:	62 d2 45 48 7f c4    	vpermt2ps zmm0,zmm7,zmm12
  a2127d:	62 f1 7c 48 11 86 70 	vmovups ZMMWORD PTR [rsi+0x370],zmm0
  a21284:	03 00 00 
  a21287:	62 73 7d 48 19 e0 02 	vextractf32x4 xmm0,zmm12,0x2
  a2128e:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  a21292:	c5 f8 11 86 b0 03 00 	vmovups XMMWORD PTR [rsi+0x3b0],xmm0
  a21299:	00 
  a2129a:	62 73 7d 48 19 c0 02 	vextractf32x4 xmm0,zmm8,0x2
  a212a1:	62 12 45 48 7f c6    	vpermt2ps zmm8,zmm7,zmm30
  a212a7:	62 71 7c 48 11 46 0f 	vmovups ZMMWORD PTR [rsi+0x3c0],zmm8
  a212ae:	62 63 7d 48 19 f1 02 	vextractf32x4 xmm1,zmm30,0x2
  a212b5:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a212b9:	c5 f8 11 86 00 04 00 	vmovups XMMWORD PTR [rsi+0x400],xmm0
  a212c0:	00 
  a212c1:	62 f3 7d 48 19 d0 02 	vextractf32x4 xmm0,zmm2,0x2
  a212c8:	62 92 45 48 7f d7    	vpermt2ps zmm2,zmm7,zmm31
  a212ce:	62 f1 7c 48 11 96 10 	vmovups ZMMWORD PTR [rsi+0x410],zmm2
  a212d5:	04 00 00 
  a212d8:	62 63 7d 48 19 f9 02 	vextractf32x4 xmm1,zmm31,0x2
  a212df:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a212e3:	c5 f8 11 86 50 04 00 	vmovups XMMWORD PTR [rsi+0x450],xmm0
  a212ea:	00 
  a212eb:	62 63 7d 48 19 e0 02 	vextractf32x4 xmm0,zmm28,0x2
  a212f2:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x40]
  a212f9:	01 
  a212fa:	62 62 45 48 7f e1    	vpermt2ps zmm28,zmm7,zmm1
  a21300:	62 61 7c 48 11 a6 60 	vmovups ZMMWORD PTR [rsi+0x460],zmm28
  a21307:	04 00 00 
  a2130a:	62 f3 7d 48 19 c9 02 	vextractf32x4 xmm1,zmm1,0x2
  a21311:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a21315:	c5 f8 11 86 a0 04 00 	vmovups XMMWORD PTR [rsi+0x4a0],xmm0
  a2131c:	00 
  a2131d:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x80]
  a21324:	fe 
  a21325:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x80]
  a2132c:	02 
  a2132d:	62 f2 75 48 77 f8    	vpermi2ps zmm7,zmm1,zmm0
  a21333:	62 f1 7c 48 11 be b0 	vmovups ZMMWORD PTR [rsi+0x4b0],zmm7
  a2133a:	04 00 00 
  a2133d:	62 f3 7d 48 19 c0 02 	vextractf32x4 xmm0,zmm0,0x2
  a21344:	62 f3 7d 48 19 c9 02 	vextractf32x4 xmm1,zmm1,0x2
  a2134b:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  a2134f:	c5 f8 11 86 f0 04 00 	vmovups XMMWORD PTR [rsi+0x4f0],xmm0
  a21356:	00 
  a21357:	48 81 c4 88 0a 00 00 	add    rsp,0xa88
  a2135e:	c5 f8 77             	vzeroupper
  a21361:	c3                   	ret
