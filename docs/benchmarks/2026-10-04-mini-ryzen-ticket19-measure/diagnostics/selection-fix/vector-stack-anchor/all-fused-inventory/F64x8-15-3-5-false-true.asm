
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000009525c0 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  9525c0:	62 f1 fd 48 10 05 9e 	vmovupd zmm0,ZMMWORD PTR [rip+0xffffffffff77479e]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  9525c7:	47 77 ff 
  9525ca:	62 f1 fd 48 10 0d d4 	vmovupd zmm1,ZMMWORD PTR [rip+0xffffffffff7747d4]        # c6da8 <crc32fast::table::CRC32_TABLE+0x9124>
  9525d1:	47 77 ff 
  9525d4:	c5 e9 57 d2          	vxorpd xmm2,xmm2,xmm2
  9525d8:	c5 e1 57 db          	vxorpd xmm3,xmm3,xmm3
  9525dc:	62 f2 fd 48 7f db    	vpermt2pd zmm3,zmm0,zmm3
  9525e2:	c5 d9 57 e4          	vxorpd xmm4,xmm4,xmm4
  9525e6:	62 f2 f5 48 7f e4    	vpermt2pd zmm4,zmm1,zmm4
  9525ec:	62 f1 fd 48 10 2d f2 	vmovupd zmm5,ZMMWORD PTR [rip+0xffffffffff7746f2]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  9525f3:	46 77 ff 
  9525f6:	62 f1 fd 48 10 35 28 	vmovupd zmm6,ZMMWORD PTR [rip+0xffffffffff774728]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  9525fd:	47 77 ff 
  952600:	48 69 c2 f0 00 00 00 	imul   rax,rdx,0xf0
  952607:	31 d2                	xor    edx,edx
  952609:	62 f1 fd 48 28 3d ed 	vmovapd zmm7,ZMMWORD PTR [rip+0xffffffffff7322ed]        # 84900 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x11db0>
  952610:	22 73 ff 
  952613:	62 72 fd 48 19 05 7b 	vbroadcastsd zmm8,QWORD PTR [rip+0xffffffffff72247b]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  95261a:	24 72 ff 
  95261d:	62 72 fd 48 19 0d f9 	vbroadcastsd zmm9,QWORD PTR [rip+0xffffffffff7225f9]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  952624:	25 72 ff 
  952627:	62 72 fd 48 19 15 27 	vbroadcastsd zmm10,QWORD PTR [rip+0xffffffffff722427]        # 74a58 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f08>
  95262e:	24 72 ff 
  952631:	62 72 fd 48 19 1d dd 	vbroadcastsd zmm11,QWORD PTR [rip+0xffffffffff7229dd]        # 75018 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x24c8>
  952638:	29 72 ff 
  95263b:	62 72 fd 48 19 25 83 	vbroadcastsd zmm12,QWORD PTR [rip+0xffffffffff722183]        # 747c8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c78>
  952642:	21 72 ff 
  952645:	62 71 fd 48 28 2d f1 	vmovapd zmm13,ZMMWORD PTR [rip+0xffffffffff7322f1]        # 84940 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x11df0>
  95264c:	22 73 ff 
  95264f:	62 72 fd 48 19 35 77 	vbroadcastsd zmm14,QWORD PTR [rip+0xffffffffff722577]        # 74bd0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2080>
  952656:	25 72 ff 
  952659:	62 71 fd 48 28 3d 1d 	vmovapd zmm15,ZMMWORD PTR [rip+0xffffffffff73231d]        # 84980 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x11e30>
  952660:	23 73 ff 
  952663:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  95266a:	84 00 00 00 00 00 
  952670:	62 e1 fd 48 10 04 17 	vmovupd zmm16,ZMMWORD PTR [rdi+rdx*1]
  952677:	62 e1 fd 08 10 4c 17 	vmovupd xmm17,XMMWORD PTR [rdi+rdx*1+0x40]
  95267e:	04 
  95267f:	62 a1 fd 48 28 d0    	vmovapd zmm18,zmm16
  952685:	62 a2 c5 48 7f d1    	vpermt2pd zmm18,zmm7,zmm17
  95268b:	62 a2 95 48 7f c1    	vpermt2pd zmm16,zmm13,zmm17
  952691:	62 e1 fd 48 10 9c 17 	vmovupd zmm19,ZMMWORD PTR [rdi+rdx*1+0x50]
  952698:	50 00 00 00 
  95269c:	62 e1 fd 08 10 4c 17 	vmovupd xmm17,XMMWORD PTR [rdi+rdx*1+0x90]
  9526a3:	09 
  9526a4:	62 a1 fd 48 28 e3    	vmovapd zmm20,zmm19
  9526aa:	62 a2 c5 48 7f e1    	vpermt2pd zmm20,zmm7,zmm17
  9526b0:	62 a2 95 48 7f d9    	vpermt2pd zmm19,zmm13,zmm17
  9526b6:	62 e1 fd 48 10 ac 17 	vmovupd zmm21,ZMMWORD PTR [rdi+rdx*1+0xa0]
  9526bd:	a0 00 00 00 
  9526c1:	62 e1 fd 08 10 4c 17 	vmovupd xmm17,XMMWORD PTR [rdi+rdx*1+0xe0]
  9526c8:	0e 
  9526c9:	62 a1 fd 48 28 f5    	vmovapd zmm22,zmm21
  9526cf:	62 a2 c5 48 7f f1    	vpermt2pd zmm22,zmm7,zmm17
  9526d5:	62 a2 95 48 7f e9    	vpermt2pd zmm21,zmm13,zmm17
  9526db:	62 a1 dd 40 58 fe    	vaddpd zmm23,zmm20,zmm22
  9526e1:	62 21 ed 40 58 c7    	vaddpd zmm24,zmm18,zmm23
  9526e7:	62 21 e5 40 58 cd    	vaddpd zmm25,zmm19,zmm21
  9526ed:	62 81 fd 40 58 c9    	vaddpd zmm17,zmm16,zmm25
  9526f3:	62 a2 bd 48 bc d7    	vfnmadd231pd zmm18,zmm8,zmm23
  9526f9:	62 a1 e5 40 5c dd    	vsubpd zmm19,zmm19,zmm21
  9526ff:	62 c1 e5 40 59 d9    	vmulpd zmm19,zmm19,zmm9
  952705:	62 a1 ed 40 58 eb    	vaddpd zmm21,zmm18,zmm19
  95270b:	62 82 bd 48 bc c1    	vfnmadd231pd zmm16,zmm8,zmm25
  952711:	62 a1 dd 40 5c e6    	vsubpd zmm20,zmm20,zmm22
  952717:	62 c1 dd 40 59 e1    	vmulpd zmm20,zmm20,zmm9
  95271d:	62 a1 fd 40 5c f4    	vsubpd zmm22,zmm16,zmm20
  952723:	62 a1 ed 40 5c d3    	vsubpd zmm18,zmm18,zmm19
  952729:	62 a1 dd 40 58 f8    	vaddpd zmm23,zmm20,zmm16
  95272f:	62 01 fd 48 28 c8    	vmovapd zmm25,zmm24
  952735:	62 62 fd 48 7f ca    	vpermt2pd zmm25,zmm0,zmm2
  95273b:	62 62 f5 48 7f c2    	vpermt2pd zmm24,zmm1,zmm2
  952741:	62 21 fd 48 28 d5    	vmovapd zmm26,zmm21
  952747:	62 62 fd 48 7f d2    	vpermt2pd zmm26,zmm0,zmm2
  95274d:	62 e2 f5 48 7f ea    	vpermt2pd zmm21,zmm1,zmm2
  952753:	62 a1 fd 48 28 c2    	vmovapd zmm16,zmm18
  952759:	62 e2 fd 48 7f c2    	vpermt2pd zmm16,zmm0,zmm2
  95275f:	62 e2 f5 48 7f d2    	vpermt2pd zmm18,zmm1,zmm2
  952765:	62 81 fd 48 28 d9    	vmovapd zmm19,zmm25
  95276b:	62 a2 d5 48 7f d8    	vpermt2pd zmm19,zmm5,zmm16
  952771:	62 22 cd 48 7f c8    	vpermt2pd zmm25,zmm6,zmm16
  952777:	62 01 fd 48 28 da    	vmovapd zmm27,zmm26
  95277d:	62 62 d5 48 7f db    	vpermt2pd zmm27,zmm5,zmm3
  952783:	62 62 cd 48 7f d3    	vpermt2pd zmm26,zmm6,zmm3
  952789:	62 22 d5 48 7f c2    	vpermt2pd zmm24,zmm5,zmm18
  95278f:	62 e2 d5 48 7f ec    	vpermt2pd zmm21,zmm5,zmm4
  952795:	62 a1 bd 40 14 e5    	vunpcklpd zmm20,zmm24,zmm21
  95279b:	62 81 e5 40 14 c3    	vunpcklpd zmm16,zmm19,zmm27
  9527a1:	62 81 e5 40 15 eb    	vunpckhpd zmm21,zmm19,zmm27
  9527a7:	62 81 b5 40 14 da    	vunpcklpd zmm19,zmm25,zmm26
  9527ad:	62 81 b5 40 15 d2    	vunpckhpd zmm18,zmm25,zmm26
  9527b3:	62 21 fd 48 28 c1    	vmovapd zmm24,zmm17
  9527b9:	62 62 fd 48 7f c2    	vpermt2pd zmm24,zmm0,zmm2
  9527bf:	62 e2 f5 48 7f ca    	vpermt2pd zmm17,zmm1,zmm2
  9527c5:	62 21 fd 48 28 ce    	vmovapd zmm25,zmm22
  9527cb:	62 62 fd 48 7f ca    	vpermt2pd zmm25,zmm0,zmm2
  9527d1:	62 e2 f5 48 7f f2    	vpermt2pd zmm22,zmm1,zmm2
  9527d7:	62 21 fd 48 28 d7    	vmovapd zmm26,zmm23
  9527dd:	62 62 fd 48 7f d2    	vpermt2pd zmm26,zmm0,zmm2
  9527e3:	62 e2 f5 48 7f fa    	vpermt2pd zmm23,zmm1,zmm2
  9527e9:	62 01 fd 48 28 d8    	vmovapd zmm27,zmm24
  9527ef:	62 02 d5 48 7f da    	vpermt2pd zmm27,zmm5,zmm26
  9527f5:	62 02 cd 48 7f c2    	vpermt2pd zmm24,zmm6,zmm26
  9527fb:	62 01 fd 48 28 d1    	vmovapd zmm26,zmm25
  952801:	62 62 d5 48 7f d3    	vpermt2pd zmm26,zmm5,zmm3
  952807:	62 62 cd 48 7f cb    	vpermt2pd zmm25,zmm6,zmm3
  95280d:	62 a2 d5 48 7f cf    	vpermt2pd zmm17,zmm5,zmm23
  952813:	62 e2 d5 48 7f f4    	vpermt2pd zmm22,zmm5,zmm4
  952819:	62 a1 f5 40 14 f6    	vunpcklpd zmm22,zmm17,zmm22
  95281f:	62 81 a5 40 14 ca    	vunpcklpd zmm17,zmm27,zmm26
  952825:	62 81 a5 40 15 fa    	vunpckhpd zmm23,zmm27,zmm26
  95282b:	62 01 bd 40 14 d1    	vunpcklpd zmm26,zmm24,zmm25
  952831:	62 01 bd 40 15 c1    	vunpckhpd zmm24,zmm24,zmm25
  952837:	62 61 fd 48 10 49 02 	vmovupd zmm25,ZMMWORD PTR [rcx+0x80]
  95283e:	62 61 fd 48 10 59 03 	vmovupd zmm27,ZMMWORD PTR [rcx+0xc0]
  952845:	62 61 fd 48 10 61 04 	vmovupd zmm28,ZMMWORD PTR [rcx+0x100]
  95284c:	62 61 fd 48 10 69 05 	vmovupd zmm29,ZMMWORD PTR [rcx+0x140]
  952853:	62 01 d5 40 59 f1    	vmulpd zmm30,zmm21,zmm25
  952859:	62 02 c5 40 bc f3    	vfnmadd231pd zmm30,zmm23,zmm27
  95285f:	62 81 c5 40 59 f9    	vmulpd zmm23,zmm23,zmm25
  952865:	62 61 fd 48 10 49 08 	vmovupd zmm25,ZMMWORD PTR [rcx+0x200]
  95286c:	62 82 d5 40 b8 fb    	vfmadd231pd zmm23,zmm21,zmm27
  952872:	62 e1 fd 48 10 69 09 	vmovupd zmm21,ZMMWORD PTR [rcx+0x240]
  952879:	62 01 dd 40 59 d9    	vmulpd zmm27,zmm20,zmm25
  95287f:	62 22 cd 40 bc dd    	vfnmadd231pd zmm27,zmm22,zmm21
  952885:	62 81 cd 40 59 f1    	vmulpd zmm22,zmm22,zmm25
  95288b:	62 61 fd 48 10 49 06 	vmovupd zmm25,ZMMWORD PTR [rcx+0x180]
  952892:	62 a2 dd 40 b8 f5    	vfmadd231pd zmm22,zmm20,zmm21
  952898:	62 e1 fd 48 10 61 07 	vmovupd zmm20,ZMMWORD PTR [rcx+0x1c0]
  95289f:	62 81 e5 40 59 ec    	vmulpd zmm21,zmm19,zmm28
  9528a5:	62 82 ad 40 bc ed    	vfnmadd231pd zmm21,zmm26,zmm29
  9528ab:	62 01 ad 40 59 d4    	vmulpd zmm26,zmm26,zmm28
  9528b1:	62 01 8d 40 58 e3    	vaddpd zmm28,zmm30,zmm27
  9528b7:	62 02 e5 40 b8 d5    	vfmadd231pd zmm26,zmm19,zmm29
  9528bd:	62 81 ed 40 59 d9    	vmulpd zmm19,zmm18,zmm25
  9528c3:	62 a2 bd 40 bc dc    	vfnmadd231pd zmm19,zmm24,zmm20
  9528c9:	62 21 d5 40 58 eb    	vaddpd zmm29,zmm21,zmm19
  9528cf:	62 01 bd 40 59 c1    	vmulpd zmm24,zmm24,zmm25
  9528d5:	62 21 c5 40 58 ce    	vaddpd zmm25,zmm23,zmm22
  9528db:	62 22 ed 40 b8 c4    	vfmadd231pd zmm24,zmm18,zmm20
  9528e1:	62 81 ad 40 58 d0    	vaddpd zmm18,zmm26,zmm24
  9528e7:	62 c1 fd 48 28 e2    	vmovapd zmm20,zmm10
  9528ed:	62 a2 9d 40 a8 e0    	vfmadd213pd zmm20,zmm28,zmm16
  9528f3:	62 c2 95 40 bc e3    	vfnmadd231pd zmm20,zmm29,zmm11
  9528f9:	62 a1 c5 40 5c f6    	vsubpd zmm22,zmm23,zmm22
  9528ff:	62 81 ad 40 5c f8    	vsubpd zmm23,zmm26,zmm24
  952905:	62 41 c5 40 59 c4    	vmulpd zmm24,zmm23,zmm12
  95290b:	62 42 cd 40 b8 c6    	vfmadd231pd zmm24,zmm22,zmm14
  952911:	62 01 dd 40 58 d0    	vaddpd zmm26,zmm20,zmm24
  952917:	62 01 8d 40 5c db    	vsubpd zmm27,zmm30,zmm27
  95291d:	62 a1 d5 40 5c db    	vsubpd zmm19,zmm21,zmm19
  952923:	62 c1 e5 40 59 ec    	vmulpd zmm21,zmm19,zmm12
  952929:	62 c2 a5 40 b8 ee    	vfmadd231pd zmm21,zmm27,zmm14
  95292f:	62 41 fd 48 28 f3    	vmovapd zmm30,zmm11
  952935:	62 22 9d 40 ac f0    	vfnmadd213pd zmm30,zmm28,zmm16
  95293b:	62 42 95 40 b8 f2    	vfmadd231pd zmm30,zmm29,zmm10
  952941:	62 c1 cd 40 59 f4    	vmulpd zmm22,zmm22,zmm12
  952947:	62 a2 8d 48 bc f7    	vfnmadd231pd zmm22,zmm14,zmm23
  95294d:	62 a1 8d 40 58 fe    	vaddpd zmm23,zmm30,zmm22
  952953:	62 41 a5 40 59 dc    	vmulpd zmm27,zmm27,zmm12
  952959:	62 22 8d 48 bc db    	vfnmadd231pd zmm27,zmm14,zmm19
  95295f:	62 c1 fd 48 28 db    	vmovapd zmm19,zmm11
  952965:	62 a2 b5 40 ac d9    	vfnmadd213pd zmm19,zmm25,zmm17
  95296b:	62 c2 ed 40 b8 da    	vfmadd231pd zmm19,zmm18,zmm10
  952971:	62 a1 8d 40 5c f6    	vsubpd zmm22,zmm30,zmm22
  952977:	62 01 e5 40 5c f3    	vsubpd zmm30,zmm19,zmm27
  95297d:	62 81 e5 40 58 db    	vaddpd zmm19,zmm19,zmm27
  952983:	62 41 fd 48 28 da    	vmovapd zmm27,zmm10
  952989:	62 22 b5 40 a8 d9    	vfmadd213pd zmm27,zmm25,zmm17
  95298f:	62 42 ed 40 bc db    	vfnmadd231pd zmm27,zmm18,zmm11
  952995:	62 81 dd 40 5c e0    	vsubpd zmm20,zmm20,zmm24
  95299b:	62 21 a5 40 5c c5    	vsubpd zmm24,zmm27,zmm21
  9529a1:	62 a1 a5 40 58 ed    	vaddpd zmm21,zmm27,zmm21
  9529a7:	62 81 fd 40 58 c4    	vaddpd zmm16,zmm16,zmm28
  9529ad:	62 81 fd 40 58 c5    	vaddpd zmm16,zmm16,zmm29
  9529b3:	62 a1 b5 40 58 c9    	vaddpd zmm17,zmm25,zmm17
  9529b9:	62 a1 f5 40 58 ca    	vaddpd zmm17,zmm17,zmm18
  9529bf:	62 a2 85 48 7f c1    	vpermt2pd zmm16,zmm15,zmm17
  9529c5:	62 e3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x20],zmm16,0x2
  9529cc:	02 02 
  9529ce:	62 e1 fd 28 11 04 16 	vmovupd YMMWORD PTR [rsi+rdx*1],ymm16
  9529d5:	62 02 85 48 7f d0    	vpermt2pd zmm26,zmm15,zmm24
  9529db:	62 63 7d 48 19 54 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x50],zmm26,0x2
  9529e2:	05 02 
  9529e4:	62 61 fd 28 11 94 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x30],ymm26
  9529eb:	30 00 00 00 
  9529ef:	62 82 85 48 7f fe    	vpermt2pd zmm23,zmm15,zmm30
  9529f5:	62 e3 7d 48 19 7c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x80],zmm23,0x2
  9529fc:	08 02 
  9529fe:	62 e1 fd 28 11 7c 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x60],ymm23
  952a05:	03 
  952a06:	62 a2 85 48 7f f3    	vpermt2pd zmm22,zmm15,zmm19
  952a0c:	62 e3 7d 48 19 74 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xb0],zmm22,0x2
  952a13:	0b 02 
  952a15:	62 e1 fd 28 11 b4 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x90],ymm22
  952a1c:	90 00 00 00 
  952a20:	62 a2 85 48 7f e5    	vpermt2pd zmm20,zmm15,zmm21
  952a26:	62 e3 7d 48 19 64 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xe0],zmm20,0x2
  952a2d:	0e 02 
  952a2f:	62 e1 fd 28 11 64 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0xc0],ymm20
  952a36:	06 
  952a37:	48 81 c2 f0 00 00 00 	add    rdx,0xf0
  952a3e:	48 39 d0             	cmp    rax,rdx
  952a41:	0f 85 29 fc ff ff    	jne    952670 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle+0xb0>
  952a47:	c5 f8 77             	vzeroupper
  952a4a:	c3                   	ret
