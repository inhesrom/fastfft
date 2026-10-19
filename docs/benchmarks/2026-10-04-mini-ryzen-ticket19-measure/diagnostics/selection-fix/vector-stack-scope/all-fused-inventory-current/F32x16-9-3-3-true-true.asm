
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a61740 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a61740:	62 f1 7c 48 28 05 36 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff665836]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a61747:	58 66 ff 
  a6174a:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  a6174e:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a61752:	62 f2 7d 48 7f d2    	vpermt2ps zmm2,zmm0,zmm2
  a61758:	62 f1 7c 48 28 1d 9e 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff66579e]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a6175f:	57 66 ff 
  a61762:	62 f1 7c 48 28 e2    	vmovaps zmm4,zmm2
  a61768:	62 f2 65 48 7f e2    	vpermt2ps zmm4,zmm3,zmm2
  a6176e:	62 f1 7c 48 28 2d 88 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff665688]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a61775:	56 66 ff 
  a61778:	62 f1 7c 48 28 35 be 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff6656be]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a6177f:	56 66 ff 
  a61782:	48 c1 e2 03          	shl    rdx,0x3
  a61786:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  a6178a:	31 d2                	xor    edx,edx
  a6178c:	62 f1 7c 48 28 3d 6a 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff63236a]        # 93b00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20fb0>
  a61793:	23 63 ff 
  a61796:	62 72 7d 48 18 05 c0 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff613cc0]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a6179d:	3c 61 ff 
  a617a0:	62 71 7c 48 28 0d 96 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff632396]        # 93b40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20ff0>
  a617a7:	23 63 ff 
  a617aa:	62 72 7d 48 18 15 20 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff613b20]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a617b1:	3b 61 ff 
  a617b4:	c5 7c 28 1d 04 6b 61 	vmovaps ymm11,YMMWORD PTR [rip+0xffffffffff616b04]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  a617bb:	ff 
  a617bc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  a617c0:	c5 7b 10 64 17 10    	vmovsd xmm12,QWORD PTR [rdi+rdx*1+0x10]
  a617c6:	c5 78 10 2c 17       	vmovups xmm13,XMMWORD PTR [rdi+rdx*1]
  a617cb:	c5 78 10 74 17 18    	vmovups xmm14,XMMWORD PTR [rdi+rdx*1+0x18]
  a617d1:	c5 78 10 7c 17 30    	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x30]
  a617d7:	62 53 15 48 18 e4 01 	vinsertf32x4 zmm12,zmm13,xmm12,0x1
  a617de:	62 51 7c 48 28 ec    	vmovaps zmm13,zmm12
  a617e4:	62 72 45 48 7f e9    	vpermt2ps zmm13,zmm7,zmm1
  a617ea:	62 72 35 48 7f e1    	vpermt2ps zmm12,zmm9,zmm1
  a617f0:	62 e1 ff 08 10 44 17 	vmovsd xmm16,QWORD PTR [rdi+rdx*1+0x28]
  a617f7:	05 
  a617f8:	62 33 0d 48 18 f0 01 	vinsertf32x4 zmm14,zmm14,xmm16,0x1
  a617ff:	62 c1 7c 48 28 c6    	vmovaps zmm16,zmm14
  a61805:	62 e2 45 48 7f c1    	vpermt2ps zmm16,zmm7,zmm1
  a6180b:	62 72 35 48 7f f1    	vpermt2ps zmm14,zmm9,zmm1
  a61811:	62 e1 ff 08 10 4c 17 	vmovsd xmm17,QWORD PTR [rdi+rdx*1+0x40]
  a61818:	08 
  a61819:	62 33 05 48 18 f9 01 	vinsertf32x4 zmm15,zmm15,xmm17,0x1
  a61820:	62 c1 7c 48 28 cf    	vmovaps zmm17,zmm15
  a61826:	62 e2 45 48 7f c9    	vpermt2ps zmm17,zmm7,zmm1
  a6182c:	62 72 35 48 7f f9    	vpermt2ps zmm15,zmm9,zmm1
  a61832:	62 c1 0c 48 58 d7    	vaddps zmm18,zmm14,zmm15
  a61838:	62 a1 1c 48 58 da    	vaddps zmm19,zmm12,zmm18
  a6183e:	62 a1 7c 40 58 e1    	vaddps zmm20,zmm16,zmm17
  a61844:	62 a1 14 48 58 ec    	vaddps zmm21,zmm13,zmm20
  a6184a:	62 32 3d 48 bc e2    	vfnmadd231ps zmm12,zmm8,zmm18
  a61850:	62 a1 7c 40 5c c1    	vsubps zmm16,zmm16,zmm17
  a61856:	62 c1 7c 40 59 c2    	vmulps zmm16,zmm16,zmm10
  a6185c:	62 a1 1c 48 58 c8    	vaddps zmm17,zmm12,zmm16
  a61862:	62 32 3d 48 bc ec    	vfnmadd231ps zmm13,zmm8,zmm20
  a61868:	62 51 0c 48 5c f7    	vsubps zmm14,zmm14,zmm15
  a6186e:	62 51 0c 48 59 f2    	vmulps zmm14,zmm14,zmm10
  a61874:	62 51 14 48 5c fe    	vsubps zmm15,zmm13,zmm14
  a6187a:	62 31 1c 48 5c e0    	vsubps zmm12,zmm12,zmm16
  a61880:	62 51 0c 48 58 ed    	vaddps zmm13,zmm14,zmm13
  a61886:	62 e2 7d 48 7f d9    	vpermt2ps zmm19,zmm0,zmm1
  a6188c:	62 e2 7d 48 7f c9    	vpermt2ps zmm17,zmm0,zmm1
  a61892:	62 72 7d 48 7f e1    	vpermt2ps zmm12,zmm0,zmm1
  a61898:	62 e2 65 48 7f da    	vpermt2ps zmm19,zmm3,zmm2
  a6189e:	62 e2 65 48 7f ca    	vpermt2ps zmm17,zmm3,zmm2
  a618a4:	62 72 65 48 7f e2    	vpermt2ps zmm12,zmm3,zmm2
  a618aa:	62 51 e5 40 14 f4    	vunpcklpd zmm14,zmm19,zmm12
  a618b0:	62 51 e5 40 15 e4    	vunpckhpd zmm12,zmm19,zmm12
  a618b6:	62 e1 f5 40 14 c4    	vunpcklpd zmm16,zmm17,zmm4
  a618bc:	62 e1 f5 40 15 cc    	vunpckhpd zmm17,zmm17,zmm4
  a618c2:	62 c1 7c 48 28 d6    	vmovaps zmm18,zmm14
  a618c8:	62 a2 55 48 7f d0    	vpermt2ps zmm18,zmm5,zmm16
  a618ce:	62 32 4d 48 7f f0    	vpermt2ps zmm14,zmm6,zmm16
  a618d4:	62 32 55 48 7f e1    	vpermt2ps zmm12,zmm5,zmm17
  a618da:	62 e2 7d 48 7f e9    	vpermt2ps zmm21,zmm0,zmm1
  a618e0:	62 72 7d 48 7f f9    	vpermt2ps zmm15,zmm0,zmm1
  a618e6:	62 72 7d 48 7f e9    	vpermt2ps zmm13,zmm0,zmm1
  a618ec:	62 e2 65 48 7f ea    	vpermt2ps zmm21,zmm3,zmm2
  a618f2:	62 72 65 48 7f fa    	vpermt2ps zmm15,zmm3,zmm2
  a618f8:	62 72 65 48 7f ea    	vpermt2ps zmm13,zmm3,zmm2
  a618fe:	62 c1 d5 40 14 c5    	vunpcklpd zmm16,zmm21,zmm13
  a61904:	62 51 d5 40 15 ed    	vunpckhpd zmm13,zmm21,zmm13
  a6190a:	62 e1 85 48 14 cc    	vunpcklpd zmm17,zmm15,zmm4
  a61910:	62 71 85 48 15 fc    	vunpckhpd zmm15,zmm15,zmm4
  a61916:	62 a1 7c 48 28 d8    	vmovaps zmm19,zmm16
  a6191c:	62 a2 55 48 7f d9    	vpermt2ps zmm19,zmm5,zmm17
  a61922:	62 a2 4d 48 7f c1    	vpermt2ps zmm16,zmm6,zmm17
  a61928:	62 52 55 48 7f ef    	vpermt2ps zmm13,zmm5,zmm15
  a6192e:	62 71 7c 48 10 79 02 	vmovups zmm15,ZMMWORD PTR [rcx+0x80]
  a61935:	62 e1 7c 48 10 49 03 	vmovups zmm17,ZMMWORD PTR [rcx+0xc0]
  a6193c:	62 e1 7c 48 10 61 04 	vmovups zmm20,ZMMWORD PTR [rcx+0x100]
  a61943:	62 e1 7c 48 10 69 05 	vmovups zmm21,ZMMWORD PTR [rcx+0x140]
  a6194a:	62 c1 0c 48 59 f7    	vmulps zmm22,zmm14,zmm15
  a61950:	62 a2 7d 40 bc f1    	vfnmadd231ps zmm22,zmm16,zmm17
  a61956:	62 a1 1c 48 59 fc    	vmulps zmm23,zmm12,zmm20
  a6195c:	62 a2 15 48 bc fd    	vfnmadd231ps zmm23,zmm13,zmm21
  a61962:	62 21 4c 40 58 c7    	vaddps zmm24,zmm22,zmm23
  a61968:	62 51 7c 40 59 ff    	vmulps zmm15,zmm16,zmm15
  a6196e:	62 52 75 40 b8 fe    	vfmadd231ps zmm15,zmm17,zmm14
  a61974:	62 31 14 48 59 ec    	vmulps zmm13,zmm13,zmm20
  a6197a:	62 52 55 40 b8 ec    	vfmadd231ps zmm13,zmm21,zmm12
  a61980:	62 51 04 48 58 e5    	vaddps zmm12,zmm15,zmm13
  a61986:	62 51 7c 48 28 f0    	vmovaps zmm14,zmm8
  a6198c:	62 32 3d 40 ac f2    	vfnmadd213ps zmm14,zmm24,zmm18
  a61992:	62 c1 7c 48 28 c0    	vmovaps zmm16,zmm8
  a61998:	62 a2 1d 48 ac c3    	vfnmadd213ps zmm16,zmm12,zmm19
  a6199e:	62 81 6c 20 58 c8    	vaddps ymm17,ymm18,ymm24
  a619a4:	62 51 64 00 58 e4    	vaddps xmm12,xmm19,xmm12
  a619aa:	62 32 25 28 7f e1    	vpermt2ps ymm12,ymm11,ymm17
  a619b0:	c5 78 11 24 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm12
  a619b5:	c4 43 7d 19 e4 01    	vextractf128 xmm12,ymm12,0x1
  a619bb:	c5 78 13 64 16 10    	vmovlps QWORD PTR [rsi+rdx*1+0x10],xmm12
  a619c1:	c4 41 04 5c e5       	vsubps ymm12,ymm15,ymm13
  a619c6:	c4 41 1c 59 e2       	vmulps ymm12,ymm12,ymm10
  a619cb:	c4 41 0c 58 ec       	vaddps ymm13,ymm14,ymm12
  a619d0:	62 31 4c 00 5c ff    	vsubps xmm15,xmm22,xmm23
  a619d6:	c4 41 00 59 fa       	vmulps xmm15,xmm15,xmm10
  a619db:	62 c1 7c 00 5c cf    	vsubps xmm17,xmm16,xmm15
  a619e1:	62 c2 25 28 7f cd    	vpermt2ps ymm17,ymm11,ymm13
  a619e7:	62 e1 7c 08 11 8c 16 	vmovups XMMWORD PTR [rsi+rdx*1+0x18],xmm17
  a619ee:	18 00 00 00 
  a619f2:	62 c3 7d 28 19 cd 01 	vextractf32x4 xmm13,ymm17,0x1
  a619f9:	c5 78 13 6c 16 28    	vmovlps QWORD PTR [rsi+rdx*1+0x28],xmm13
  a619ff:	c4 41 0c 5c e4       	vsubps ymm12,ymm14,ymm12
  a61a04:	62 51 7c 00 58 ef    	vaddps xmm13,xmm16,xmm15
  a61a0a:	62 52 25 28 7f ec    	vpermt2ps ymm13,ymm11,ymm12
  a61a10:	c5 78 11 6c 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm13
  a61a16:	c4 43 7d 19 ec 01    	vextractf128 xmm12,ymm13,0x1
  a61a1c:	c5 78 13 64 16 40    	vmovlps QWORD PTR [rsi+rdx*1+0x40],xmm12
  a61a22:	48 83 c2 48          	add    rdx,0x48
  a61a26:	48 39 d0             	cmp    rax,rdx
  a61a29:	0f 85 91 fd ff ff    	jne    a617c0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x80>
  a61a2f:	c5 f8 77             	vzeroupper
  a61a32:	c3                   	ret
