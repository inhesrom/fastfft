
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a32780 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a32780:	c5 f8 10 47 20       	vmovups xmm0,XMMWORD PTR [rdi+0x20]
  a32785:	c4 e3 79 21 47 24 10 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x24],0x10
  a3278c:	c4 e2 79 18 4f 28    	vbroadcastss xmm1,DWORD PTR [rdi+0x28]
  a32792:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a32798:	c4 e3 79 21 47 2c 30 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x2c],0x30
  a3279f:	c5 fc 10 0f          	vmovups ymm1,YMMWORD PTR [rdi]
  a327a3:	62 f3 75 48 18 c8 02 	vinsertf32x4 zmm1,zmm1,xmm0,0x2
  a327aa:	62 f1 7c 48 28 1d cc 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff65e6cc]        # 90e80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e330>
  a327b1:	e6 65 ff 
  a327b4:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a327b8:	62 e1 7c 48 28 c9    	vmovaps zmm17,zmm1
  a327be:	62 e2 65 48 7f c8    	vpermt2ps zmm17,zmm3,zmm0
  a327c4:	62 e1 7c 48 28 1d f2 	vmovaps zmm19,ZMMWORD PTR [rip+0xffffffffff65e6f2]        # 90ec0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e370>
  a327cb:	e6 65 ff 
  a327ce:	c5 f8 10 6f 50       	vmovups xmm5,XMMWORD PTR [rdi+0x50]
  a327d3:	c4 e3 51 21 6f 54 10 	vinsertps xmm5,xmm5,DWORD PTR [rdi+0x54],0x10
  a327da:	c4 e2 79 18 77 58    	vbroadcastss xmm6,DWORD PTR [rdi+0x58]
  a327e0:	62 f2 65 40 7f c8    	vpermt2ps zmm1,zmm19,zmm0
  a327e6:	c4 e3 49 0c ed 03    	vblendps xmm5,xmm6,xmm5,0x3
  a327ec:	c4 e3 51 21 6f 5c 30 	vinsertps xmm5,xmm5,DWORD PTR [rdi+0x5c],0x30
  a327f3:	c5 fc 10 77 30       	vmovups ymm6,YMMWORD PTR [rdi+0x30]
  a327f8:	62 f3 4d 48 18 ed 02 	vinsertf32x4 zmm5,zmm6,xmm5,0x2
  a327ff:	62 f1 7c 48 28 f5    	vmovaps zmm6,zmm5
  a32805:	62 f2 65 48 7f f0    	vpermt2ps zmm6,zmm3,zmm0
  a3280b:	62 f2 65 40 7f e8    	vpermt2ps zmm5,zmm19,zmm0
  a32811:	c5 f8 10 bf 80 00 00 	vmovups xmm7,XMMWORD PTR [rdi+0x80]
  a32818:	00 
  a32819:	c4 e3 41 21 bf 84 00 	vinsertps xmm7,xmm7,DWORD PTR [rdi+0x84],0x10
  a32820:	00 00 10 
  a32823:	c5 7c 10 47 60       	vmovups ymm8,YMMWORD PTR [rdi+0x60]
  a32828:	c4 62 79 18 8f 88 00 	vbroadcastss xmm9,DWORD PTR [rdi+0x88]
  a3282f:	00 00 
  a32831:	c4 e3 31 0c ff 03    	vblendps xmm7,xmm9,xmm7,0x3
  a32837:	c4 e3 41 21 bf 8c 00 	vinsertps xmm7,xmm7,DWORD PTR [rdi+0x8c],0x30
  a3283e:	00 00 30 
  a32841:	62 73 3d 48 18 c7 02 	vinsertf32x4 zmm8,zmm8,xmm7,0x2
  a32848:	62 d1 7c 48 28 f8    	vmovaps zmm7,zmm8
  a3284e:	62 f2 65 48 7f f8    	vpermt2ps zmm7,zmm3,zmm0
  a32854:	62 72 65 40 7f c0    	vpermt2ps zmm8,zmm19,zmm0
  a3285a:	c5 78 10 8f b0 00 00 	vmovups xmm9,XMMWORD PTR [rdi+0xb0]
  a32861:	00 
  a32862:	c5 7c 10 97 90 00 00 	vmovups ymm10,YMMWORD PTR [rdi+0x90]
  a32869:	00 
  a3286a:	c4 63 31 21 8f b4 00 	vinsertps xmm9,xmm9,DWORD PTR [rdi+0xb4],0x10
  a32871:	00 00 10 
  a32874:	c4 62 79 18 9f b8 00 	vbroadcastss xmm11,DWORD PTR [rdi+0xb8]
  a3287b:	00 00 
  a3287d:	c4 43 21 0c c9 03    	vblendps xmm9,xmm11,xmm9,0x3
  a32883:	c4 63 31 21 8f bc 00 	vinsertps xmm9,xmm9,DWORD PTR [rdi+0xbc],0x30
  a3288a:	00 00 30 
  a3288d:	62 53 2d 48 18 d9 02 	vinsertf32x4 zmm11,zmm10,xmm9,0x2
  a32894:	62 51 7c 48 28 d3    	vmovaps zmm10,zmm11
  a3289a:	62 72 65 48 7f d0    	vpermt2ps zmm10,zmm3,zmm0
  a328a0:	62 72 65 40 7f d8    	vpermt2ps zmm11,zmm19,zmm0
  a328a6:	c5 78 10 8f e0 00 00 	vmovups xmm9,XMMWORD PTR [rdi+0xe0]
  a328ad:	00 
  a328ae:	c4 63 31 21 8f e4 00 	vinsertps xmm9,xmm9,DWORD PTR [rdi+0xe4],0x10
  a328b5:	00 00 10 
  a328b8:	c4 62 79 18 a7 e8 00 	vbroadcastss xmm12,DWORD PTR [rdi+0xe8]
  a328bf:	00 00 
  a328c1:	c5 7c 10 af c0 00 00 	vmovups ymm13,YMMWORD PTR [rdi+0xc0]
  a328c8:	00 
  a328c9:	c4 43 19 0c c9 03    	vblendps xmm9,xmm12,xmm9,0x3
  a328cf:	c4 63 31 21 8f ec 00 	vinsertps xmm9,xmm9,DWORD PTR [rdi+0xec],0x30
  a328d6:	00 00 30 
  a328d9:	62 53 15 48 18 e1 02 	vinsertf32x4 zmm12,zmm13,xmm9,0x2
  a328e0:	62 51 7c 48 28 ec    	vmovaps zmm13,zmm12
  a328e6:	62 72 65 48 7f e8    	vpermt2ps zmm13,zmm3,zmm0
  a328ec:	c5 78 10 8f 10 01 00 	vmovups xmm9,XMMWORD PTR [rdi+0x110]
  a328f3:	00 
  a328f4:	c4 63 31 21 8f 14 01 	vinsertps xmm9,xmm9,DWORD PTR [rdi+0x114],0x10
  a328fb:	00 00 10 
  a328fe:	c4 62 79 18 b7 18 01 	vbroadcastss xmm14,DWORD PTR [rdi+0x118]
  a32905:	00 00 
  a32907:	62 72 65 40 7f e0    	vpermt2ps zmm12,zmm19,zmm0
  a3290d:	c4 43 09 0c c9 03    	vblendps xmm9,xmm14,xmm9,0x3
  a32913:	c4 63 31 21 8f 1c 01 	vinsertps xmm9,xmm9,DWORD PTR [rdi+0x11c],0x30
  a3291a:	00 00 30 
  a3291d:	c5 7c 10 b7 f0 00 00 	vmovups ymm14,YMMWORD PTR [rdi+0xf0]
  a32924:	00 
  a32925:	62 53 0d 48 18 f1 02 	vinsertf32x4 zmm14,zmm14,xmm9,0x2
  a3292c:	62 51 7c 48 28 fe    	vmovaps zmm15,zmm14
  a32932:	62 72 65 48 7f f8    	vpermt2ps zmm15,zmm3,zmm0
  a32938:	62 72 65 40 7f f0    	vpermt2ps zmm14,zmm19,zmm0
  a3293e:	c5 78 10 8f 40 01 00 	vmovups xmm9,XMMWORD PTR [rdi+0x140]
  a32945:	00 
  a32946:	c4 63 31 21 8f 44 01 	vinsertps xmm9,xmm9,DWORD PTR [rdi+0x144],0x10
  a3294d:	00 00 10 
  a32950:	62 e1 7c 28 10 47 09 	vmovups ymm16,YMMWORD PTR [rdi+0x120]
  a32957:	c4 e2 79 18 a7 48 01 	vbroadcastss xmm4,DWORD PTR [rdi+0x148]
  a3295e:	00 00 
  a32960:	c4 c3 59 0c e1 03    	vblendps xmm4,xmm4,xmm9,0x3
  a32966:	c4 e3 59 21 a7 4c 01 	vinsertps xmm4,xmm4,DWORD PTR [rdi+0x14c],0x30
  a3296d:	00 00 30 
  a32970:	62 f3 7d 40 18 e4 02 	vinsertf32x4 zmm4,zmm16,xmm4,0x2
  a32977:	62 e1 7c 48 28 c4    	vmovaps zmm16,zmm4
  a3297d:	62 e2 65 48 7f c0    	vpermt2ps zmm16,zmm3,zmm0
  a32983:	62 f2 65 40 7f e0    	vpermt2ps zmm4,zmm19,zmm0
  a32989:	c5 78 10 8f 70 01 00 	vmovups xmm9,XMMWORD PTR [rdi+0x170]
  a32990:	00 
  a32991:	62 e1 7c 28 10 97 50 	vmovups ymm18,YMMWORD PTR [rdi+0x150]
  a32998:	01 00 00 
  a3299b:	c4 63 31 21 8f 74 01 	vinsertps xmm9,xmm9,DWORD PTR [rdi+0x174],0x10
  a329a2:	00 00 10 
  a329a5:	c4 e2 79 18 97 78 01 	vbroadcastss xmm2,DWORD PTR [rdi+0x178]
  a329ac:	00 00 
  a329ae:	c4 c3 69 0c d1 03    	vblendps xmm2,xmm2,xmm9,0x3
  a329b4:	c4 e3 69 21 97 7c 01 	vinsertps xmm2,xmm2,DWORD PTR [rdi+0x17c],0x30
  a329bb:	00 00 30 
  a329be:	62 e3 6d 40 18 d2 02 	vinsertf32x4 zmm18,zmm18,xmm2,0x2
  a329c5:	62 f2 6d 40 77 d8    	vpermi2ps zmm3,zmm18,zmm0
  a329cb:	62 e2 65 40 7f d0    	vpermt2ps zmm18,zmm19,zmm0
  a329d1:	62 c1 74 40 58 dd    	vaddps zmm19,zmm17,zmm13
  a329d7:	62 a1 44 48 58 e0    	vaddps zmm20,zmm7,zmm16
  a329dd:	62 a1 64 40 58 ec    	vaddps zmm21,zmm19,zmm20
  a329e3:	62 c1 4c 48 58 f7    	vaddps zmm22,zmm6,zmm15
  a329e9:	62 e1 2c 48 58 fb    	vaddps zmm23,zmm10,zmm3
  a329ef:	62 21 4c 40 58 c7    	vaddps zmm24,zmm22,zmm23
  a329f5:	62 11 54 40 58 c8    	vaddps zmm9,zmm21,zmm24
  a329fb:	62 41 74 48 58 cc    	vaddps zmm25,zmm1,zmm12
  a32a01:	62 61 3c 48 58 d4    	vaddps zmm26,zmm8,zmm4
  a32a07:	62 01 34 40 58 da    	vaddps zmm27,zmm25,zmm26
  a32a0d:	62 41 54 48 58 e6    	vaddps zmm28,zmm5,zmm14
  a32a13:	62 21 24 48 58 ea    	vaddps zmm29,zmm11,zmm18
  a32a19:	62 01 1c 40 58 f5    	vaddps zmm30,zmm28,zmm29
  a32a1f:	62 91 24 40 58 d6    	vaddps zmm2,zmm27,zmm30
  a32a25:	62 51 74 40 5c ed    	vsubps zmm13,zmm17,zmm13
  a32a2b:	62 71 3c 48 5c c4    	vsubps zmm8,zmm8,zmm4
  a32a31:	62 c1 14 48 58 c8    	vaddps zmm17,zmm13,zmm8
  a32a37:	62 d1 4c 48 5c f7    	vsubps zmm6,zmm6,zmm15
  a32a3d:	62 d1 54 48 5c ee    	vsubps zmm5,zmm5,zmm14
  a32a43:	62 f1 4c 48 58 e5    	vaddps zmm4,zmm6,zmm5
  a32a49:	62 72 7d 48 18 35 49 	vbroadcastss zmm14,DWORD PTR [rip+0xffffffffff642949]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a32a50:	29 64 ff 
  a32a53:	62 51 5c 48 59 fe    	vmulps zmm15,zmm4,zmm14
  a32a59:	62 31 24 48 5c da    	vsubps zmm11,zmm11,zmm18
  a32a5f:	62 f1 2c 48 5c db    	vsubps zmm3,zmm10,zmm3
  a32a65:	62 f1 24 48 5c e3    	vsubps zmm4,zmm11,zmm3
  a32a6b:	62 51 5c 48 59 d6    	vmulps zmm10,zmm4,zmm14
  a32a71:	62 c1 04 48 58 d2    	vaddps zmm18,zmm15,zmm10
  a32a77:	62 b1 74 40 58 e2    	vaddps zmm4,zmm17,zmm18
  a32a7d:	62 d1 74 48 5c cc    	vsubps zmm1,zmm1,zmm12
  a32a83:	62 71 7c 40 5c e7    	vsubps zmm12,zmm16,zmm7
  a32a89:	62 e1 1c 48 58 c1    	vaddps zmm16,zmm12,zmm1
  a32a8f:	62 f1 54 48 5c ee    	vsubps zmm5,zmm5,zmm6
  a32a95:	62 d1 54 48 59 f6    	vmulps zmm6,zmm5,zmm14
  a32a9b:	62 d1 64 48 58 db    	vaddps zmm3,zmm3,zmm11
  a32aa1:	62 d1 64 48 59 de    	vmulps zmm3,zmm3,zmm14
  a32aa7:	62 71 4c 48 5c db    	vsubps zmm11,zmm6,zmm3
  a32aad:	62 d1 7c 40 58 eb    	vaddps zmm5,zmm16,zmm11
  a32ab3:	62 a1 64 40 5c dc    	vsubps zmm19,zmm19,zmm20
  a32ab9:	62 81 1c 40 5c e5    	vsubps zmm20,zmm28,zmm29
  a32abf:	62 21 64 40 58 e4    	vaddps zmm28,zmm19,zmm20
  a32ac5:	62 01 34 40 5c ca    	vsubps zmm25,zmm25,zmm26
  a32acb:	62 a1 44 40 5c f6    	vsubps zmm22,zmm23,zmm22
  a32ad1:	62 91 4c 40 58 f9    	vaddps zmm7,zmm22,zmm25
  a32ad7:	62 c1 14 48 5c f8    	vsubps zmm23,zmm13,zmm8
  a32add:	62 f1 4c 48 58 db    	vaddps zmm3,zmm6,zmm3
  a32ae3:	62 f1 44 40 58 f3    	vaddps zmm6,zmm23,zmm3
  a32ae9:	62 d1 74 48 5c cc    	vsubps zmm1,zmm1,zmm12
  a32aef:	62 51 2c 48 5c d7    	vsubps zmm10,zmm10,zmm15
  a32af5:	62 51 74 48 58 c2    	vaddps zmm8,zmm1,zmm10
  a32afb:	62 81 54 40 5c e8    	vsubps zmm21,zmm21,zmm24
  a32b01:	62 11 24 40 5c fe    	vsubps zmm15,zmm27,zmm30
  a32b07:	62 21 74 40 5c c2    	vsubps zmm24,zmm17,zmm18
  a32b0d:	62 51 7c 40 5c f3    	vsubps zmm14,zmm16,zmm11
  a32b13:	62 31 64 40 5c dc    	vsubps zmm11,zmm19,zmm20
  a32b19:	62 31 34 40 5c ee    	vsubps zmm13,zmm25,zmm22
  a32b1f:	62 e1 44 40 5c db    	vsubps zmm19,zmm23,zmm3
  a32b25:	62 51 74 48 5c e2    	vsubps zmm12,zmm1,zmm10
  a32b2b:	62 e1 7c 48 28 0d 4b 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff69444b]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a32b32:	44 69 ff 
  a32b35:	62 72 75 40 7f c8    	vpermt2ps zmm9,zmm17,zmm0
  a32b3b:	62 f2 75 40 7f e0    	vpermt2ps zmm4,zmm17,zmm0
  a32b41:	62 62 75 40 7f e0    	vpermt2ps zmm28,zmm17,zmm0
  a32b47:	62 f2 75 40 7f f0    	vpermt2ps zmm6,zmm17,zmm0
  a32b4d:	62 e2 75 40 7f e8    	vpermt2ps zmm21,zmm17,zmm0
  a32b53:	62 62 75 40 7f c0    	vpermt2ps zmm24,zmm17,zmm0
  a32b59:	62 72 75 40 7f d8    	vpermt2ps zmm11,zmm17,zmm0
  a32b5f:	62 e2 75 40 7f d8    	vpermt2ps zmm19,zmm17,zmm0
  a32b65:	62 e1 7c 48 28 05 91 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff694391]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a32b6c:	43 69 ff 
  a32b6f:	62 d1 7c 48 28 c9    	vmovaps zmm1,zmm9
  a32b75:	62 b2 7d 40 7f cd    	vpermt2ps zmm1,zmm16,zmm21
  a32b7b:	62 e1 7c 48 28 15 bb 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff6943bb]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a32b82:	43 69 ff 
  a32b85:	62 32 6d 40 7f cd    	vpermt2ps zmm9,zmm18,zmm21
  a32b8b:	62 71 7c 48 28 d4    	vmovaps zmm10,zmm4
  a32b91:	62 12 7d 40 7f d0    	vpermt2ps zmm10,zmm16,zmm24
  a32b97:	62 92 6d 40 7f e0    	vpermt2ps zmm4,zmm18,zmm24
  a32b9d:	62 81 7c 48 28 e4    	vmovaps zmm20,zmm28
  a32ba3:	62 c2 7d 40 7f e3    	vpermt2ps zmm20,zmm16,zmm11
  a32ba9:	62 42 6d 40 7f e3    	vpermt2ps zmm28,zmm18,zmm11
  a32baf:	62 91 b5 48 14 dc    	vunpcklpd zmm3,zmm9,zmm28
  a32bb5:	62 71 7c 48 28 ce    	vmovaps zmm9,zmm6
  a32bbb:	62 32 7d 40 7f cb    	vpermt2ps zmm9,zmm16,zmm19
  a32bc1:	62 b2 6d 40 7f f3    	vpermt2ps zmm6,zmm18,zmm19
  a32bc7:	62 e1 dd 48 14 de    	vunpcklpd zmm19,zmm4,zmm6
  a32bcd:	62 b1 f5 48 14 e4    	vunpcklpd zmm4,zmm1,zmm20
  a32bd3:	62 b1 f5 48 15 f4    	vunpckhpd zmm6,zmm1,zmm20
  a32bd9:	62 51 ad 48 14 d9    	vunpcklpd zmm11,zmm10,zmm9
  a32bdf:	62 c1 ad 48 15 e1    	vunpckhpd zmm20,zmm10,zmm9
  a32be5:	62 71 7c 48 28 0d 11 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff694211]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a32bec:	42 69 ff 
  a32bef:	62 f1 7c 48 28 cc    	vmovaps zmm1,zmm4
  a32bf5:	62 d2 35 48 7f cb    	vpermt2ps zmm1,zmm9,zmm11
  a32bfb:	62 e1 7c 48 28 2d 3b 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff69423b]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a32c02:	42 69 ff 
  a32c05:	62 d2 55 40 7f e3    	vpermt2ps zmm4,zmm21,zmm11
  a32c0b:	62 71 7c 48 28 d6    	vmovaps zmm10,zmm6
  a32c11:	62 32 35 48 7f d4    	vpermt2ps zmm10,zmm9,zmm20
  a32c17:	62 b2 55 40 7f f4    	vpermt2ps zmm6,zmm21,zmm20
  a32c1d:	62 71 7c 48 28 db    	vmovaps zmm11,zmm3
  a32c23:	62 32 35 48 7f db    	vpermt2ps zmm11,zmm9,zmm19
  a32c29:	62 b2 55 40 7f db    	vpermt2ps zmm3,zmm21,zmm19
  a32c2f:	62 f2 75 40 7f d0    	vpermt2ps zmm2,zmm17,zmm0
  a32c35:	62 f2 75 40 7f e8    	vpermt2ps zmm5,zmm17,zmm0
  a32c3b:	62 f2 75 40 7f f8    	vpermt2ps zmm7,zmm17,zmm0
  a32c41:	62 72 75 40 7f c0    	vpermt2ps zmm8,zmm17,zmm0
  a32c47:	62 72 75 40 7f f8    	vpermt2ps zmm15,zmm17,zmm0
  a32c4d:	62 72 75 40 7f f0    	vpermt2ps zmm14,zmm17,zmm0
  a32c53:	62 72 75 40 7f e8    	vpermt2ps zmm13,zmm17,zmm0
  a32c59:	62 72 75 40 7f e0    	vpermt2ps zmm12,zmm17,zmm0
  a32c5f:	62 f1 7c 48 28 c2    	vmovaps zmm0,zmm2
  a32c65:	62 d2 7d 40 7f c7    	vpermt2ps zmm0,zmm16,zmm15
  a32c6b:	62 d2 6d 40 7f d7    	vpermt2ps zmm2,zmm18,zmm15
  a32c71:	62 71 7c 48 28 fd    	vmovaps zmm15,zmm5
  a32c77:	62 52 7d 40 7f fe    	vpermt2ps zmm15,zmm16,zmm14
  a32c7d:	62 d2 6d 40 7f ee    	vpermt2ps zmm5,zmm18,zmm14
  a32c83:	62 71 7c 48 28 f7    	vmovaps zmm14,zmm7
  a32c89:	62 52 7d 40 7f f5    	vpermt2ps zmm14,zmm16,zmm13
  a32c8f:	62 d2 6d 40 7f fd    	vpermt2ps zmm7,zmm18,zmm13
  a32c95:	62 f1 ed 48 14 ff    	vunpcklpd zmm7,zmm2,zmm7
  a32c9b:	62 c2 3d 48 77 c4    	vpermi2ps zmm16,zmm8,zmm12
  a32ca1:	62 52 6d 40 7f c4    	vpermt2ps zmm8,zmm18,zmm12
  a32ca7:	62 d1 d5 48 14 d0    	vunpcklpd zmm2,zmm5,zmm8
  a32cad:	62 d1 fd 48 14 ee    	vunpcklpd zmm5,zmm0,zmm14
  a32cb3:	62 51 fd 48 15 c6    	vunpckhpd zmm8,zmm0,zmm14
  a32cb9:	62 31 85 48 14 e0    	vunpcklpd zmm12,zmm15,zmm16
  a32cbf:	62 31 85 48 15 e8    	vunpckhpd zmm13,zmm15,zmm16
  a32cc5:	62 f1 7c 48 28 c5    	vmovaps zmm0,zmm5
  a32ccb:	62 d2 35 48 7f c4    	vpermt2ps zmm0,zmm9,zmm12
  a32cd1:	62 d2 55 40 7f ec    	vpermt2ps zmm5,zmm21,zmm12
  a32cd7:	62 51 7c 48 28 e0    	vmovaps zmm12,zmm8
  a32cdd:	62 52 35 48 7f e5    	vpermt2ps zmm12,zmm9,zmm13
  a32ce3:	62 52 55 40 7f c5    	vpermt2ps zmm8,zmm21,zmm13
  a32ce9:	62 72 45 48 77 ca    	vpermi2ps zmm9,zmm7,zmm2
  a32cef:	62 f2 55 40 7f fa    	vpermt2ps zmm7,zmm21,zmm2
  a32cf5:	62 71 7c 48 10 6a 02 	vmovups zmm13,ZMMWORD PTR [rdx+0x80]
  a32cfc:	62 71 7c 48 10 72 03 	vmovups zmm14,ZMMWORD PTR [rdx+0xc0]
  a32d03:	62 71 7c 48 10 7a 04 	vmovups zmm15,ZMMWORD PTR [rdx+0x100]
  a32d0a:	62 e1 7c 48 10 42 05 	vmovups zmm16,ZMMWORD PTR [rdx+0x140]
  a32d11:	62 e1 7c 48 10 4a 06 	vmovups zmm17,ZMMWORD PTR [rdx+0x180]
  a32d18:	62 e1 7c 48 10 52 07 	vmovups zmm18,ZMMWORD PTR [rdx+0x1c0]
  a32d1f:	62 e1 7c 48 10 5a 08 	vmovups zmm19,ZMMWORD PTR [rdx+0x200]
  a32d26:	62 e1 7c 48 10 62 09 	vmovups zmm20,ZMMWORD PTR [rdx+0x240]
  a32d2d:	62 e1 7c 48 10 6a 0a 	vmovups zmm21,ZMMWORD PTR [rdx+0x280]
  a32d34:	62 e1 7c 48 10 72 0b 	vmovups zmm22,ZMMWORD PTR [rdx+0x2c0]
  a32d3b:	62 c1 2c 48 59 ff    	vmulps zmm23,zmm10,zmm15
  a32d41:	62 a2 1d 48 bc f8    	vfnmadd231ps zmm23,zmm12,zmm16
  a32d47:	62 21 24 48 59 c3    	vmulps zmm24,zmm11,zmm19
  a32d4d:	62 22 35 48 bc c4    	vfnmadd231ps zmm24,zmm9,zmm20
  a32d53:	62 01 44 40 58 c8    	vaddps zmm25,zmm23,zmm24
  a32d59:	62 91 74 48 58 d1    	vaddps zmm2,zmm1,zmm25
  a32d5f:	62 21 4c 48 59 d1    	vmulps zmm26,zmm6,zmm17
  a32d65:	62 22 3d 48 bc d2    	vfnmadd231ps zmm26,zmm8,zmm18
  a32d6b:	62 21 64 48 59 dd    	vmulps zmm27,zmm3,zmm21
  a32d71:	62 22 45 48 bc de    	vfnmadd231ps zmm27,zmm7,zmm22
  a32d77:	62 41 5c 48 59 e5    	vmulps zmm28,zmm4,zmm13
  a32d7d:	62 42 55 48 bc e6    	vfnmadd231ps zmm28,zmm5,zmm14
  a32d83:	62 01 24 40 58 ec    	vaddps zmm29,zmm27,zmm28
  a32d89:	62 01 2c 40 58 f5    	vaddps zmm30,zmm26,zmm29
  a32d8f:	62 51 1c 48 59 e7    	vmulps zmm12,zmm12,zmm15
  a32d95:	62 52 7d 40 b8 e2    	vfmadd231ps zmm12,zmm16,zmm10
  a32d9b:	62 31 34 48 59 cb    	vmulps zmm9,zmm9,zmm19
  a32da1:	62 52 5d 40 b8 cb    	vfmadd231ps zmm9,zmm20,zmm11
  a32da7:	62 51 1c 48 58 d1    	vaddps zmm10,zmm12,zmm9
  a32dad:	62 71 2c 48 58 d8    	vaddps zmm11,zmm10,zmm0
  a32db3:	62 31 3c 48 59 c1    	vmulps zmm8,zmm8,zmm17
  a32db9:	62 72 6d 40 b8 c6    	vfmadd231ps zmm8,zmm18,zmm6
  a32dbf:	62 b1 44 48 59 f5    	vmulps zmm6,zmm7,zmm21
  a32dc5:	62 f2 4d 40 b8 f3    	vfmadd231ps zmm6,zmm22,zmm3
  a32dcb:	62 d1 54 48 59 dd    	vmulps zmm3,zmm5,zmm13
  a32dd1:	62 f2 0d 48 b8 dc    	vfmadd231ps zmm3,zmm14,zmm4
  a32dd7:	62 f1 4c 48 58 e3    	vaddps zmm4,zmm6,zmm3
  a32ddd:	62 f2 7d 48 18 2d 79 	vbroadcastss zmm5,DWORD PTR [rip+0xffffffffff642679]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a32de4:	26 64 ff 
  a32de7:	62 f1 3c 48 58 fc    	vaddps zmm7,zmm8,zmm4
  a32ded:	62 92 55 48 bc c9    	vfnmadd231ps zmm1,zmm5,zmm25
  a32df3:	62 72 7d 48 18 2d d7 	vbroadcastss zmm13,DWORD PTR [rip+0xffffffffff6424d7]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a32dfa:	24 64 ff 
  a32dfd:	62 51 1c 48 5c c9    	vsubps zmm9,zmm12,zmm9
  a32e03:	62 51 34 48 59 cd    	vmulps zmm9,zmm9,zmm13
  a32e09:	62 51 74 48 58 e1    	vaddps zmm12,zmm1,zmm9
  a32e0f:	62 02 55 48 bc d5    	vfnmadd231ps zmm26,zmm5,zmm29
  a32e15:	62 f1 4c 48 5c db    	vsubps zmm3,zmm6,zmm3
  a32e1b:	62 d1 64 48 59 dd    	vmulps zmm3,zmm3,zmm13
  a32e21:	62 f1 2c 40 58 f3    	vaddps zmm6,zmm26,zmm3
  a32e27:	62 71 1c 48 5c f6    	vsubps zmm14,zmm12,zmm6
  a32e2d:	62 d2 55 48 bc c2    	vfnmadd231ps zmm0,zmm5,zmm10
  a32e33:	62 11 44 40 5c d0    	vsubps zmm10,zmm23,zmm24
  a32e39:	62 51 2c 48 59 d5    	vmulps zmm10,zmm10,zmm13
  a32e3f:	62 51 7c 48 5c fa    	vsubps zmm15,zmm0,zmm10
  a32e45:	62 72 5d 48 bc c5    	vfnmadd231ps zmm8,zmm4,zmm5
  a32e4b:	62 91 24 40 5c e4    	vsubps zmm4,zmm27,zmm28
  a32e51:	62 d1 5c 48 59 e5    	vmulps zmm4,zmm4,zmm13
  a32e57:	62 f1 3c 48 5c ec    	vsubps zmm5,zmm8,zmm4
  a32e5d:	62 71 04 48 5c ed    	vsubps zmm13,zmm15,zmm5
  a32e63:	62 d1 74 48 5c c9    	vsubps zmm1,zmm1,zmm9
  a32e69:	62 f1 2c 40 5c db    	vsubps zmm3,zmm26,zmm3
  a32e6f:	62 71 74 48 58 cb    	vaddps zmm9,zmm1,zmm3
  a32e75:	62 f1 2c 48 58 c0    	vaddps zmm0,zmm10,zmm0
  a32e7b:	62 f1 3c 48 58 e4    	vaddps zmm4,zmm8,zmm4
  a32e81:	62 71 7c 48 58 c4    	vaddps zmm8,zmm0,zmm4
  a32e87:	62 11 6c 48 5c d6    	vsubps zmm10,zmm2,zmm30
  a32e8d:	62 e1 24 48 5c c7    	vsubps zmm16,zmm11,zmm7
  a32e93:	62 f1 1c 48 58 f6    	vaddps zmm6,zmm12,zmm6
  a32e99:	62 f1 04 48 58 ed    	vaddps zmm5,zmm15,zmm5
  a32e9f:	62 f1 74 48 5c cb    	vsubps zmm1,zmm1,zmm3
  a32ea5:	62 f1 7c 48 5c c4    	vsubps zmm0,zmm0,zmm4
  a32eab:	62 91 6c 48 58 d6    	vaddps zmm2,zmm2,zmm30
  a32eb1:	62 f1 24 48 58 df    	vaddps zmm3,zmm11,zmm7
  a32eb7:	62 f1 7c 48 28 25 3f 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff65e03f]        # 90f00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e3b0>
  a32ebe:	e0 65 ff 
  a32ec1:	62 f2 5d 48 7f d3    	vpermt2ps zmm2,zmm4,zmm3
  a32ec7:	62 f1 7c 48 11 16    	vmovups ZMMWORD PTR [rsi],zmm2
  a32ecd:	62 52 5d 48 7f f5    	vpermt2ps zmm14,zmm4,zmm13
  a32ed3:	62 71 7c 48 11 76 01 	vmovups ZMMWORD PTR [rsi+0x40],zmm14
  a32eda:	62 52 5d 48 7f c8    	vpermt2ps zmm9,zmm4,zmm8
  a32ee0:	62 71 7c 48 11 4e 02 	vmovups ZMMWORD PTR [rsi+0x80],zmm9
  a32ee7:	62 32 5d 48 7f d0    	vpermt2ps zmm10,zmm4,zmm16
  a32eed:	62 71 7c 48 11 56 03 	vmovups ZMMWORD PTR [rsi+0xc0],zmm10
  a32ef4:	62 f2 5d 48 7f f5    	vpermt2ps zmm6,zmm4,zmm5
  a32efa:	62 f1 7c 48 11 76 04 	vmovups ZMMWORD PTR [rsi+0x100],zmm6
  a32f01:	62 f2 5d 48 7f c8    	vpermt2ps zmm1,zmm4,zmm0
  a32f07:	62 f1 7c 48 11 4e 05 	vmovups ZMMWORD PTR [rsi+0x140],zmm1
  a32f0e:	c5 f8 77             	vzeroupper
  a32f11:	c3                   	ret
