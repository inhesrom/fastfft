
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a17780 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a17780:	c5 fc 10 17          	vmovups ymm2,YMMWORD PTR [rdi]
  a17784:	c5 fc 10 5f 20       	vmovups ymm3,YMMWORD PTR [rdi+0x20]
  a17789:	c5 fc 10 67 40       	vmovups ymm4,YMMWORD PTR [rdi+0x40]
  a1778e:	62 f1 7c 48 28 2d 68 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff677d68]        # 8f500 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c9b0>
  a17795:	7d 67 ff 
  a17798:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  a1779c:	62 f1 7c 48 28 f2    	vmovaps zmm6,zmm2
  a177a2:	62 f2 55 48 7f f1    	vpermt2ps zmm6,zmm5,zmm1
  a177a8:	62 f1 7c 48 28 05 8e 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff677d8e]        # 8f540 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c9f0>
  a177af:	7d 67 ff 
  a177b2:	62 f2 7d 48 7f d1    	vpermt2ps zmm2,zmm0,zmm1
  a177b8:	62 f1 7c 48 28 fb    	vmovaps zmm7,zmm3
  a177be:	62 f2 55 48 7f f9    	vpermt2ps zmm7,zmm5,zmm1
  a177c4:	62 f2 7d 48 7f d9    	vpermt2ps zmm3,zmm0,zmm1
  a177ca:	62 f2 5d 48 77 e9    	vpermi2ps zmm5,zmm4,zmm1
  a177d0:	62 f2 7d 48 7f e1    	vpermt2ps zmm4,zmm0,zmm1
  a177d6:	62 71 44 48 58 c5    	vaddps zmm8,zmm7,zmm5
  a177dc:	62 51 4c 48 58 c8    	vaddps zmm9,zmm6,zmm8
  a177e2:	62 71 64 48 58 d4    	vaddps zmm10,zmm3,zmm4
  a177e8:	62 d1 6c 48 58 c2    	vaddps zmm0,zmm2,zmm10
  a177ee:	62 72 7d 48 18 1d 68 	vbroadcastss zmm11,DWORD PTR [rip+0xffffffffff65dc68]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a177f5:	dc 65 ff 
  a177f8:	62 d2 25 48 bc f0    	vfnmadd231ps zmm6,zmm11,zmm8
  a177fe:	62 f1 64 48 5c dc    	vsubps zmm3,zmm3,zmm4
  a17804:	62 f2 7d 48 18 25 c6 	vbroadcastss zmm4,DWORD PTR [rip+0xffffffffff65dac6]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a1780b:	da 65 ff 
  a1780e:	62 f1 64 48 59 dc    	vmulps zmm3,zmm3,zmm4
  a17814:	62 71 4c 48 58 c3    	vaddps zmm8,zmm6,zmm3
  a1781a:	62 d2 2d 48 bc d3    	vfnmadd231ps zmm2,zmm10,zmm11
  a17820:	62 f1 44 48 5c ed    	vsubps zmm5,zmm7,zmm5
  a17826:	62 f1 54 48 59 e4    	vmulps zmm4,zmm5,zmm4
  a1782c:	62 f1 6c 48 5c ec    	vsubps zmm5,zmm2,zmm4
  a17832:	62 f1 4c 48 5c db    	vsubps zmm3,zmm6,zmm3
  a17838:	62 f1 5c 48 58 d2    	vaddps zmm2,zmm4,zmm2
  a1783e:	62 f1 7c 48 28 25 38 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff6af738]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a17845:	f7 6a ff 
  a17848:	62 72 5d 48 7f c9    	vpermt2ps zmm9,zmm4,zmm1
  a1784e:	62 72 5d 48 7f c1    	vpermt2ps zmm8,zmm4,zmm1
  a17854:	62 f2 5d 48 7f d9    	vpermt2ps zmm3,zmm4,zmm1
  a1785a:	c5 c8 57 f6          	vxorps xmm6,xmm6,xmm6
  a1785e:	62 f2 5d 48 7f f6    	vpermt2ps zmm6,zmm4,zmm6
  a17864:	62 f1 7c 48 28 3d 92 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff6af692]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a1786b:	f6 6a ff 
  a1786e:	62 72 45 48 7f ce    	vpermt2ps zmm9,zmm7,zmm6
  a17874:	62 72 45 48 7f c6    	vpermt2ps zmm8,zmm7,zmm6
  a1787a:	62 f2 45 48 7f de    	vpermt2ps zmm3,zmm7,zmm6
  a17880:	62 f2 5d 48 7f c1    	vpermt2ps zmm0,zmm4,zmm1
  a17886:	62 f2 5d 48 7f e9    	vpermt2ps zmm5,zmm4,zmm1
  a1788c:	62 f2 5d 48 7f d1    	vpermt2ps zmm2,zmm4,zmm1
  a17892:	62 f2 45 48 7f c6    	vpermt2ps zmm0,zmm7,zmm6
  a17898:	62 f2 45 48 7f ee    	vpermt2ps zmm5,zmm7,zmm6
  a1789e:	62 f2 45 48 7f d6    	vpermt2ps zmm2,zmm7,zmm6
  a178a4:	62 f2 45 48 7f f6    	vpermt2ps zmm6,zmm7,zmm6
  a178aa:	62 f1 b5 48 14 e3    	vunpcklpd zmm4,zmm9,zmm3
  a178b0:	62 f1 b5 48 15 db    	vunpckhpd zmm3,zmm9,zmm3
  a178b6:	62 f1 bd 48 14 fe    	vunpcklpd zmm7,zmm8,zmm6
  a178bc:	62 71 bd 48 15 c6    	vunpckhpd zmm8,zmm8,zmm6
  a178c2:	62 71 7c 48 28 0d 34 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff6af534]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a178c9:	f5 6a ff 
  a178cc:	62 f1 7c 48 28 cc    	vmovaps zmm1,zmm4
  a178d2:	62 f2 35 48 7f cf    	vpermt2ps zmm1,zmm9,zmm7
  a178d8:	62 71 7c 48 28 15 5e 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff6af55e]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a178df:	f5 6a ff 
  a178e2:	62 f2 2d 48 7f e7    	vpermt2ps zmm4,zmm10,zmm7
  a178e8:	62 f1 7c 48 28 fb    	vmovaps zmm7,zmm3
  a178ee:	62 d2 35 48 7f f8    	vpermt2ps zmm7,zmm9,zmm8
  a178f4:	62 d2 2d 48 7f d8    	vpermt2ps zmm3,zmm10,zmm8
  a178fa:	62 71 fd 48 14 c2    	vunpcklpd zmm8,zmm0,zmm2
  a17900:	62 f1 fd 48 15 c2    	vunpckhpd zmm0,zmm0,zmm2
  a17906:	62 f1 d5 48 14 d6    	vunpcklpd zmm2,zmm5,zmm6
  a1790c:	62 f1 d5 48 15 ee    	vunpckhpd zmm5,zmm5,zmm6
  a17912:	62 d1 7c 48 28 f0    	vmovaps zmm6,zmm8
  a17918:	62 f2 35 48 7f f2    	vpermt2ps zmm6,zmm9,zmm2
  a1791e:	62 72 2d 48 7f c2    	vpermt2ps zmm8,zmm10,zmm2
  a17924:	62 72 7d 48 77 cd    	vpermi2ps zmm9,zmm0,zmm5
  a1792a:	62 f2 2d 48 7f c5    	vpermt2ps zmm0,zmm10,zmm5
  a17930:	62 f1 7c 48 10 52 02 	vmovups zmm2,ZMMWORD PTR [rdx+0x80]
  a17937:	62 f1 7c 48 10 6a 03 	vmovups zmm5,ZMMWORD PTR [rdx+0xc0]
  a1793e:	62 71 7c 48 10 52 04 	vmovups zmm10,ZMMWORD PTR [rdx+0x100]
  a17945:	62 71 7c 48 10 5a 05 	vmovups zmm11,ZMMWORD PTR [rdx+0x140]
  a1794c:	62 71 7c 48 10 62 06 	vmovups zmm12,ZMMWORD PTR [rdx+0x180]
  a17953:	62 71 7c 48 10 6a 07 	vmovups zmm13,ZMMWORD PTR [rdx+0x1c0]
  a1795a:	62 51 44 48 59 f2    	vmulps zmm14,zmm7,zmm10
  a17960:	62 52 35 48 bc f3    	vfnmadd231ps zmm14,zmm9,zmm11
  a17966:	62 71 5c 48 59 fa    	vmulps zmm15,zmm4,zmm2
  a1796c:	62 72 3d 48 bc fd    	vfnmadd231ps zmm15,zmm8,zmm5
  a17972:	62 c1 64 48 59 c4    	vmulps zmm16,zmm3,zmm12
  a17978:	62 c2 7d 48 bc c5    	vfnmadd231ps zmm16,zmm0,zmm13
  a1797e:	62 51 34 48 59 ca    	vmulps zmm9,zmm9,zmm10
  a17984:	62 72 25 48 b8 cf    	vfmadd231ps zmm9,zmm11,zmm7
  a1798a:	62 f1 3c 48 59 d2    	vmulps zmm2,zmm8,zmm2
  a17990:	62 f2 55 48 b8 d4    	vfmadd231ps zmm2,zmm5,zmm4
  a17996:	62 d1 7c 48 59 c4    	vmulps zmm0,zmm0,zmm12
  a1799c:	62 f2 15 48 b8 c3    	vfmadd231ps zmm0,zmm13,zmm3
  a179a2:	c5 ec 58 d8          	vaddps ymm3,ymm2,ymm0
  a179a6:	c5 b4 58 e6          	vaddps ymm4,ymm9,ymm6
  a179aa:	c5 dc 58 eb          	vaddps ymm5,ymm4,ymm3
  a179ae:	62 b1 04 08 58 f8    	vaddps xmm7,xmm15,xmm16
  a179b4:	c5 08 58 c1          	vaddps xmm8,xmm14,xmm1
  a179b8:	c5 38 58 d7          	vaddps xmm10,xmm8,xmm7
  a179bc:	c5 7c 28 1d fc 08 66 	vmovaps ymm11,YMMWORD PTR [rip+0xffffffffff6608fc]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  a179c3:	ff 
  a179c4:	62 72 25 28 7f d5    	vpermt2ps ymm10,ymm11,ymm5
  a179ca:	c4 63 7d 19 d5 01    	vextractf128 xmm5,ymm10,0x1
  a179d0:	c5 f8 13 6e 10       	vmovlps QWORD PTR [rsi+0x10],xmm5
  a179d5:	c5 78 11 16          	vmovups XMMWORD PTR [rsi],xmm10
  a179d9:	62 d1 7c 20 5c ef    	vsubps ymm5,ymm16,ymm15
  a179df:	c4 c1 4c 5c f1       	vsubps ymm6,ymm6,ymm9
  a179e4:	c5 4c 58 cd          	vaddps ymm9,ymm6,ymm5
  a179e8:	c5 e8 5c c0          	vsubps xmm0,xmm2,xmm0
  a179ec:	c4 c1 70 5c ce       	vsubps xmm1,xmm1,xmm14
  a179f1:	c5 f0 58 d0          	vaddps xmm2,xmm1,xmm0
  a179f5:	62 d2 25 28 7f d1    	vpermt2ps ymm2,ymm11,ymm9
  a179fb:	c4 c3 7d 19 d1 01    	vextractf128 xmm9,ymm2,0x1
  a17a01:	c5 78 13 4e 28       	vmovlps QWORD PTR [rsi+0x28],xmm9
  a17a06:	c5 f8 11 56 18       	vmovups XMMWORD PTR [rsi+0x18],xmm2
  a17a0b:	c5 dc 5c d3          	vsubps ymm2,ymm4,ymm3
  a17a0f:	c5 b8 5c df          	vsubps xmm3,xmm8,xmm7
  a17a13:	62 f2 25 28 7f da    	vpermt2ps ymm3,ymm11,ymm2
  a17a19:	c4 e3 7d 19 da 01    	vextractf128 xmm2,ymm3,0x1
  a17a1f:	c5 f8 13 56 40       	vmovlps QWORD PTR [rsi+0x40],xmm2
  a17a24:	c5 f8 11 5e 30       	vmovups XMMWORD PTR [rsi+0x30],xmm3
  a17a29:	c5 cc 5c d5          	vsubps ymm2,ymm6,ymm5
  a17a2d:	c5 f0 5c c0          	vsubps xmm0,xmm1,xmm0
  a17a31:	62 f2 25 28 7f c2    	vpermt2ps ymm0,ymm11,ymm2
  a17a37:	c4 e3 7d 19 c1 01    	vextractf128 xmm1,ymm0,0x1
  a17a3d:	c5 f8 13 4e 58       	vmovlps QWORD PTR [rsi+0x58],xmm1
  a17a42:	c5 f8 11 46 48       	vmovups XMMWORD PTR [rsi+0x48],xmm0
  a17a47:	c5 f8 77             	vzeroupper
  a17a4a:	c3                   	ret
