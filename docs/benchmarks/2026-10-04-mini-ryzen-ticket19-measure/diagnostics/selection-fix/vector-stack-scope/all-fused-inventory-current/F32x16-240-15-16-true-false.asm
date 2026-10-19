
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a186c0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a186c0:	55                   	push   rbp
  a186c1:	48 89 e5             	mov    rbp,rsp
  a186c4:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a186c8:	48 81 ec c0 0c 00 00 	sub    rsp,0xcc0
  a186cf:	c6 84 24 40 0c 00 00 	mov    BYTE PTR [rsp+0xc40],0x0
  a186d6:	00 
  a186d7:	48 8d 84 24 40 0c 00 	lea    rax,[rsp+0xc40]
  a186de:	00 
  a186df:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  a186e4:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  a186e9:	62 71 7c 48 28 05 4d 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff67704d]        # 8f740 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1cbf0>
  a186f0:	70 67 ff 
  a186f3:	62 f1 7c 48 10 0f    	vmovups zmm1,ZMMWORD PTR [rdi]
  a186f9:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm1
  a18700:	04 
  a18701:	62 e1 7c 48 10 77 01 	vmovups zmm22,ZMMWORD PTR [rdi+0x40]
  a18708:	62 71 7c 48 10 67 02 	vmovups zmm12,ZMMWORD PTR [rdi+0x80]
  a1870f:	62 f1 7c 48 10 5f 03 	vmovups zmm3,ZMMWORD PTR [rdi+0xc0]
  a18716:	62 b2 3d 48 7f ce    	vpermt2ps zmm1,zmm8,zmm22
  a1871c:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm1
  a18723:	08 
  a18724:	62 e1 7c 48 10 5f 06 	vmovups zmm19,ZMMWORD PTR [rdi+0x180]
  a1872b:	62 f1 7c 48 10 6f 07 	vmovups zmm5,ZMMWORD PTR [rdi+0x1c0]
  a18732:	62 b1 7c 48 28 c3    	vmovaps zmm0,zmm19
  a18738:	62 31 7c 48 28 eb    	vmovaps zmm13,zmm19
  a1873e:	62 f2 3d 48 7f c5    	vpermt2ps zmm0,zmm8,zmm5
  a18744:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm0
  a1874b:	03 
  a1874c:	62 e1 7c 48 10 5f 18 	vmovups zmm19,ZMMWORD PTR [rdi+0x600]
  a18753:	62 f1 7c 48 10 4f 19 	vmovups zmm1,ZMMWORD PTR [rdi+0x640]
  a1875a:	62 b1 7c 48 28 c3    	vmovaps zmm0,zmm19
  a18760:	62 f2 3d 48 7f c1    	vpermt2ps zmm0,zmm8,zmm1
  a18766:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm0
  a1876d:	0a 
  a1876e:	62 f1 7c 48 10 57 0c 	vmovups zmm2,ZMMWORD PTR [rdi+0x300]
  a18775:	62 f1 7c 48 10 47 0d 	vmovups zmm0,ZMMWORD PTR [rdi+0x340]
  a1877c:	62 f1 7c 48 28 e2    	vmovaps zmm4,zmm2
  a18782:	62 71 7c 48 28 f2    	vmovaps zmm14,zmm2
  a18788:	62 f2 3d 48 7f e0    	vpermt2ps zmm4,zmm8,zmm0
  a1878e:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm4
  a18795:	02 
  a18796:	62 f1 7c 48 10 67 12 	vmovups zmm4,ZMMWORD PTR [rdi+0x480]
  a1879d:	62 f1 7c 48 10 57 13 	vmovups zmm2,ZMMWORD PTR [rdi+0x4c0]
  a187a4:	62 f1 7c 48 28 f4    	vmovaps zmm6,zmm4
  a187aa:	62 71 7c 48 28 fc    	vmovaps zmm15,zmm4
  a187b0:	62 f2 3d 48 7f f2    	vpermt2ps zmm6,zmm8,zmm2
  a187b6:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm6
  a187bd:	01 
  a187be:	62 f1 7c 48 10 77 0a 	vmovups zmm6,ZMMWORD PTR [rdi+0x280]
  a187c5:	62 f1 7c 48 10 67 0b 	vmovups zmm4,ZMMWORD PTR [rdi+0x2c0]
  a187cc:	62 f1 7c 48 28 fe    	vmovaps zmm7,zmm6
  a187d2:	62 e1 7c 48 28 c6    	vmovaps zmm16,zmm6
  a187d8:	62 f2 3d 48 7f fc    	vpermt2ps zmm7,zmm8,zmm4
  a187de:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm7
  a187e5:	06 
  a187e6:	62 61 7c 48 10 47 10 	vmovups zmm24,ZMMWORD PTR [rdi+0x400]
  a187ed:	62 f1 7c 48 10 77 11 	vmovups zmm6,ZMMWORD PTR [rdi+0x440]
  a187f4:	62 91 7c 48 28 f8    	vmovaps zmm7,zmm24
  a187fa:	62 f2 3d 48 7f fe    	vpermt2ps zmm7,zmm8,zmm6
  a18800:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm7
  a18807:	07 
  a18808:	62 e1 7c 48 10 4f 04 	vmovups zmm17,ZMMWORD PTR [rdi+0x100]
  a1880f:	62 f1 7c 48 10 7f 05 	vmovups zmm7,ZMMWORD PTR [rdi+0x140]
  a18816:	62 61 7c 48 10 77 16 	vmovups zmm30,ZMMWORD PTR [rdi+0x580]
  a1881d:	62 71 7c 48 10 4f 17 	vmovups zmm9,ZMMWORD PTR [rdi+0x5c0]
  a18824:	62 01 7c 48 28 de    	vmovaps zmm27,zmm30
  a1882a:	62 42 3d 48 7f d9    	vpermt2ps zmm27,zmm8,zmm9
  a18830:	62 e1 7c 48 10 67 1c 	vmovups zmm20,ZMMWORD PTR [rdi+0x700]
  a18837:	62 71 7c 48 10 57 1d 	vmovups zmm10,ZMMWORD PTR [rdi+0x740]
  a1883e:	62 61 7c 48 28 3d 38 	vmovaps zmm31,ZMMWORD PTR [rip+0xffffffffff676f38]        # 8f780 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1cc30>
  a18845:	6f 67 ff 
  a18848:	62 42 05 40 7f f1    	vpermt2ps zmm30,zmm31,zmm9
  a1884e:	62 31 7c 48 28 cc    	vmovaps zmm9,zmm20
  a18854:	62 52 3d 48 7f ca    	vpermt2ps zmm9,zmm8,zmm10
  a1885a:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm9
  a18861:	0b 
  a18862:	62 c2 05 40 7f e2    	vpermt2ps zmm20,zmm31,zmm10
  a18868:	62 a1 7c 48 28 f9    	vmovaps zmm23,zmm17
  a1886e:	62 e2 3d 48 7f ff    	vpermt2ps zmm23,zmm8,zmm7
  a18874:	62 62 05 40 7f c6    	vpermt2ps zmm24,zmm31,zmm6
  a1887a:	62 f1 7c 48 10 77 14 	vmovups zmm6,ZMMWORD PTR [rdi+0x500]
  a18881:	62 e2 05 40 7f cf    	vpermt2ps zmm17,zmm31,zmm7
  a18887:	62 d1 7c 48 28 fc    	vmovaps zmm7,zmm12
  a1888d:	62 f2 3d 48 7f fb    	vpermt2ps zmm7,zmm8,zmm3
  a18893:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm7
  a1889a:	18 
  a1889b:	62 72 05 40 7f e3    	vpermt2ps zmm12,zmm31,zmm3
  a188a1:	62 f1 7c 48 10 5f 15 	vmovups zmm3,ZMMWORD PTR [rdi+0x540]
  a188a8:	62 f1 7c 48 28 fe    	vmovaps zmm7,zmm6
  a188ae:	62 71 7c 48 28 d6    	vmovaps zmm10,zmm6
  a188b4:	62 f2 3d 48 7f fb    	vpermt2ps zmm7,zmm8,zmm3
  a188ba:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm7
  a188c1:	09 
  a188c2:	62 61 7c 48 10 57 1a 	vmovups zmm26,ZMMWORD PTR [rdi+0x680]
  a188c9:	62 f1 7c 48 10 77 1b 	vmovups zmm6,ZMMWORD PTR [rdi+0x6c0]
  a188d0:	62 91 7c 48 28 fa    	vmovaps zmm7,zmm26
  a188d6:	62 f2 3d 48 7f fe    	vpermt2ps zmm7,zmm8,zmm6
  a188dc:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm7
  a188e3:	17 
  a188e4:	62 61 7c 48 10 4f 0e 	vmovups zmm25,ZMMWORD PTR [rdi+0x380]
  a188eb:	62 f1 7c 48 10 7f 0f 	vmovups zmm7,ZMMWORD PTR [rdi+0x3c0]
  a188f2:	62 01 7c 48 28 e1    	vmovaps zmm28,zmm25
  a188f8:	62 62 3d 48 7f e7    	vpermt2ps zmm28,zmm8,zmm7
  a188fe:	62 61 7c 48 10 6f 08 	vmovups zmm29,ZMMWORD PTR [rdi+0x200]
  a18905:	62 71 7c 48 10 4f 09 	vmovups zmm9,ZMMWORD PTR [rdi+0x240]
  a1890c:	62 52 15 40 77 c1    	vpermi2ps zmm8,zmm29,zmm9
  a18912:	62 42 05 40 7f e9    	vpermt2ps zmm29,zmm31,zmm9
  a18918:	62 62 05 40 7f d6    	vpermt2ps zmm26,zmm31,zmm6
  a1891e:	62 62 05 40 7f cf    	vpermt2ps zmm25,zmm31,zmm7
  a18924:	62 72 05 40 7f f0    	vpermt2ps zmm14,zmm31,zmm0
  a1892a:	62 71 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm14
  a18931:	13 
  a18932:	62 72 05 40 7f fa    	vpermt2ps zmm15,zmm31,zmm2
  a18938:	62 51 7c 48 28 cf    	vmovaps zmm9,zmm15
  a1893e:	62 71 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm15
  a18945:	0c 
  a18946:	62 d1 7c 48 28 f5    	vmovaps zmm6,zmm13
  a1894c:	62 f2 05 40 7f f5    	vpermt2ps zmm6,zmm31,zmm5
  a18952:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm6
  a18959:	11 
  a1895a:	62 b1 7c 48 28 eb    	vmovaps zmm5,zmm19
  a18960:	62 f2 05 40 7f e9    	vpermt2ps zmm5,zmm31,zmm1
  a18966:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm5
  a1896d:	12 
  a1896e:	62 e2 05 40 7f c4    	vpermt2ps zmm16,zmm31,zmm4
  a18974:	62 e1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm16
  a1897b:	05 
  a1897c:	62 72 05 40 7f d3    	vpermt2ps zmm10,zmm31,zmm3
  a18982:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm10
  a18989:	0e 
  a1898a:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x100]
  a18991:	04 
  a18992:	62 b2 05 40 7f c6    	vpermt2ps zmm0,zmm31,zmm22
  a18998:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  a1899f:	04 
  a189a0:	62 81 7c 48 28 de    	vmovaps zmm19,zmm30
  a189a6:	62 b1 0c 40 5c c4    	vsubps zmm0,zmm30,zmm20
  a189ac:	62 b1 3c 40 5c c9    	vsubps zmm1,zmm24,zmm17
  a189b2:	62 e2 7d 48 18 35 9c 	vbroadcastss zmm22,DWORD PTR [rip+0xffffffffff65cd9c]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a189b9:	cd 65 ff 
  a189bc:	62 31 74 48 59 fe    	vmulps zmm15,zmm1,zmm22
  a189c2:	62 f2 7d 48 18 15 d4 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff65c9d4]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a189c9:	c9 65 ff 
  a189cc:	62 72 7d 48 bc fa    	vfnmadd231ps zmm15,zmm0,zmm2
  a189d2:	62 21 7c 48 59 f6    	vmulps zmm30,zmm0,zmm22
  a189d8:	62 62 6d 48 b8 f1    	vfmadd231ps zmm30,zmm2,zmm1
  a189de:	62 91 1c 48 5c c5    	vsubps zmm0,zmm12,zmm29
  a189e4:	62 91 2c 40 5c c9    	vsubps zmm1,zmm26,zmm25
  a189ea:	62 31 74 48 59 ee    	vmulps zmm13,zmm1,zmm22
  a189f0:	62 72 7d 48 bc ea    	vfnmadd231ps zmm13,zmm0,zmm2
  a189f6:	62 b1 7c 48 59 c6    	vmulps zmm0,zmm0,zmm22
  a189fc:	62 f2 6d 48 b8 c1    	vfmadd231ps zmm0,zmm2,zmm1
  a18a02:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm0
  a18a09:	15 
  a18a0a:	62 d1 0c 48 5c c9    	vsubps zmm1,zmm14,zmm9
  a18a10:	62 f1 4c 48 5c ed    	vsubps zmm5,zmm6,zmm5
  a18a16:	62 b1 54 48 59 e6    	vmulps zmm4,zmm5,zmm22
  a18a1c:	62 f2 75 48 bc e2    	vfnmadd231ps zmm4,zmm1,zmm2
  a18a22:	62 a1 74 48 59 d6    	vmulps zmm18,zmm1,zmm22
  a18a28:	62 e2 6d 48 b8 d5    	vfmadd231ps zmm18,zmm2,zmm5
  a18a2e:	62 e1 7c 48 28 6c 24 	vmovaps zmm21,ZMMWORD PTR [rsp+0x2c0]
  a18a35:	0b 
  a18a36:	62 b1 24 40 5c ed    	vsubps zmm5,zmm27,zmm21
  a18a3c:	62 71 7c 48 28 74 24 	vmovaps zmm14,ZMMWORD PTR [rsp+0x1c0]
  a18a43:	07 
  a18a44:	62 b1 0c 48 5c ff    	vsubps zmm7,zmm14,zmm23
  a18a4a:	62 31 44 48 59 d6    	vmulps zmm10,zmm7,zmm22
  a18a50:	62 72 55 48 bc d2    	vfnmadd231ps zmm10,zmm5,zmm2
  a18a56:	62 b1 54 48 59 c6    	vmulps zmm0,zmm5,zmm22
  a18a5c:	62 f2 6d 48 b8 c7    	vfmadd231ps zmm0,zmm2,zmm7
  a18a62:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm0
  a18a69:	0d 
  a18a6a:	62 71 7c 48 28 5c 24 	vmovaps zmm11,ZMMWORD PTR [rsp+0x600]
  a18a71:	18 
  a18a72:	62 d1 24 48 5c f8    	vsubps zmm7,zmm11,zmm8
  a18a78:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x5c0]
  a18a7f:	17 
  a18a80:	62 01 34 48 5c fc    	vsubps zmm31,zmm9,zmm28
  a18a86:	62 a1 04 40 59 c6    	vmulps zmm16,zmm31,zmm22
  a18a8c:	62 e2 45 48 bc c2    	vfnmadd231ps zmm16,zmm7,zmm2
  a18a92:	62 b1 44 48 59 c6    	vmulps zmm0,zmm7,zmm22
  a18a98:	62 92 6d 48 b8 c7    	vfmadd231ps zmm0,zmm2,zmm31
  a18a9e:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm0
  a18aa5:	14 
  a18aa6:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x80]
  a18aad:	02 
  a18aae:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x40]
  a18ab5:	01 
  a18ab6:	62 f1 44 48 5c c3    	vsubps zmm0,zmm7,zmm3
  a18abc:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0xc0]
  a18ac3:	03 
  a18ac4:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x280]
  a18acb:	0a 
  a18acc:	62 f1 54 48 5c ce    	vsubps zmm1,zmm5,zmm6
  a18ad2:	62 21 74 48 59 fe    	vmulps zmm31,zmm1,zmm22
  a18ad8:	62 62 7d 48 bc fa    	vfnmadd231ps zmm31,zmm0,zmm2
  a18ade:	62 b1 7c 48 59 c6    	vmulps zmm0,zmm0,zmm22
  a18ae4:	62 f2 75 48 b8 c2    	vfmadd231ps zmm0,zmm1,zmm2
  a18aea:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm0
  a18af1:	16 
  a18af2:	62 f1 54 48 58 c6    	vaddps zmm0,zmm5,zmm6
  a18af8:	62 f1 44 48 58 cb    	vaddps zmm1,zmm7,zmm3
  a18afe:	62 b1 0c 48 58 d7    	vaddps zmm2,zmm14,zmm23
  a18b04:	62 a1 24 40 58 fd    	vaddps zmm23,zmm27,zmm21
  a18b0a:	62 01 34 48 58 e4    	vaddps zmm28,zmm9,zmm28
  a18b10:	62 51 24 48 58 c0    	vaddps zmm8,zmm11,zmm8
  a18b16:	62 b1 64 40 58 f4    	vaddps zmm6,zmm19,zmm20
  a18b1c:	62 a1 3c 40 58 e1    	vaddps zmm20,zmm24,zmm17
  a18b22:	62 91 1c 48 58 fd    	vaddps zmm7,zmm12,zmm29
  a18b28:	62 91 2c 40 58 e9    	vaddps zmm5,zmm26,zmm25
  a18b2e:	62 62 7d 48 18 0d 0c 	vbroadcastss zmm25,DWORD PTR [rip+0xffffffffff65cb0c]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a18b35:	cb 65 ff 
  a18b38:	62 01 7c 48 28 c1    	vmovaps zmm24,zmm25
  a18b3e:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x180]
  a18b45:	06 
  a18b46:	62 62 6d 48 ac c3    	vfnmadd213ps zmm24,zmm2,zmm3
  a18b4c:	62 61 64 48 58 d2    	vaddps zmm26,zmm3,zmm2
  a18b52:	62 72 7d 48 18 25 8c 	vbroadcastss zmm12,DWORD PTR [rip+0xffffffffff65cb8c]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a18b59:	cb 65 ff 
  a18b5c:	62 f2 1d 48 b8 da    	vfmadd231ps zmm3,zmm12,zmm2
  a18b62:	62 31 2c 40 58 cf    	vaddps zmm9,zmm26,zmm23
  a18b68:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x800],zmm9
  a18b6f:	20 
  a18b70:	62 42 45 40 b8 c4    	vfmadd231ps zmm24,zmm23,zmm12
  a18b76:	62 b2 35 40 bc df    	vfnmadd231ps zmm3,zmm25,zmm23
  a18b7c:	62 e1 7c 48 28 eb    	vmovaps zmm21,zmm3
  a18b82:	62 91 7c 48 28 d1    	vmovaps zmm2,zmm25
  a18b88:	62 71 7c 48 28 74 24 	vmovaps zmm14,ZMMWORD PTR [rsp+0x240]
  a18b8f:	09 
  a18b90:	62 d2 1d 40 ac d6    	vfnmadd213ps zmm2,zmm28,zmm14
  a18b96:	62 81 0c 48 58 fc    	vaddps zmm23,zmm14,zmm28
  a18b9c:	62 12 1d 48 b8 f4    	vfmadd231ps zmm14,zmm12,zmm28
  a18ba2:	62 41 44 40 58 d8    	vaddps zmm27,zmm23,zmm8
  a18ba8:	62 61 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm27
  a18baf:	0f 
  a18bb0:	62 d2 3d 48 b8 d4    	vfmadd231ps zmm2,zmm8,zmm12
  a18bb6:	62 52 35 40 bc f0    	vfnmadd231ps zmm14,zmm25,zmm8
  a18bbc:	62 11 7c 48 28 c1    	vmovaps zmm8,zmm25
  a18bc2:	62 e1 7c 48 28 4c 24 	vmovaps zmm17,ZMMWORD PTR [rsp+0x200]
  a18bc9:	08 
  a18bca:	62 32 7d 48 ac c1    	vfnmadd213ps zmm8,zmm0,zmm17
  a18bd0:	62 e1 74 40 58 f8    	vaddps zmm23,zmm17,zmm0
  a18bd6:	62 e2 1d 48 b8 c8    	vfmadd231ps zmm17,zmm12,zmm0
  a18bdc:	62 f1 44 40 58 c1    	vaddps zmm0,zmm23,zmm1
  a18be2:	62 52 75 48 b8 c4    	vfmadd231ps zmm8,zmm1,zmm12
  a18be8:	62 e2 35 40 bc c9    	vfnmadd231ps zmm17,zmm25,zmm1
  a18bee:	62 c1 5c 48 58 f8    	vaddps zmm23,zmm4,zmm8
  a18bf4:	62 f1 3c 48 5c cc    	vsubps zmm1,zmm8,zmm4
  a18bfa:	62 91 04 48 58 d8    	vaddps zmm3,zmm15,zmm24
  a18c00:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x7c0],zmm3
  a18c07:	1f 
  a18c08:	62 d1 3c 40 5c df    	vsubps zmm3,zmm24,zmm15
  a18c0e:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm3
  a18c15:	10 
  a18c16:	62 f1 14 48 58 e2    	vaddps zmm4,zmm13,zmm2
  a18c1c:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x780],zmm4
  a18c23:	1e 
  a18c24:	62 d1 6c 48 5c d5    	vsubps zmm2,zmm2,zmm13
  a18c2a:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm2
  a18c31:	02 
  a18c32:	62 72 7d 48 18 05 24 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff65c824]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a18c39:	c8 65 ff 
  a18c3c:	62 61 64 48 58 d2    	vaddps zmm26,zmm3,zmm2
  a18c42:	62 91 74 48 58 d2    	vaddps zmm2,zmm1,zmm26
  a18c48:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm2
  a18c4f:	01 
  a18c50:	62 62 3d 48 ac d1    	vfnmadd213ps zmm26,zmm8,zmm1
  a18c56:	62 91 7c 48 28 c9    	vmovaps zmm1,zmm25
  a18c5c:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x140]
  a18c63:	05 
  a18c64:	62 f2 5d 40 ac cb    	vfnmadd213ps zmm1,zmm20,zmm3
  a18c6a:	62 d2 4d 48 b8 cc    	vfmadd231ps zmm1,zmm6,zmm12
  a18c70:	62 41 74 48 5c e2    	vsubps zmm28,zmm1,zmm10
  a18c76:	62 41 74 48 58 c2    	vaddps zmm24,zmm1,zmm10
  a18c7c:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x440]
  a18c83:	11 
  a18c84:	62 f1 74 48 58 54 24 	vaddps zmm2,zmm1,ZMMWORD PTR [rsp+0x480]
  a18c8b:	12 
  a18c8c:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x4c0]
  a18c93:	13 
  a18c94:	62 61 74 48 58 6c 24 	vaddps zmm29,zmm1,ZMMWORD PTR [rsp+0x300]
  a18c9b:	0c 
  a18c9c:	62 91 7c 48 28 e1    	vmovaps zmm4,zmm25
  a18ca2:	62 e1 7c 48 28 5c 24 	vmovaps zmm19,ZMMWORD PTR [rsp+0x100]
  a18ca9:	04 
  a18caa:	62 b2 6d 48 ac e3    	vfnmadd213ps zmm4,zmm2,zmm19
  a18cb0:	62 f1 64 40 58 ca    	vaddps zmm1,zmm19,zmm2
  a18cb6:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm1
  a18cbd:	0c 
  a18cbe:	62 c2 6d 48 b8 dc    	vfmadd231ps zmm19,zmm2,zmm12
  a18cc4:	62 51 7c 48 28 dc    	vmovaps zmm11,zmm12
  a18cca:	62 72 5d 40 a8 db    	vfmadd213ps zmm11,zmm20,zmm3
  a18cd0:	62 f1 7c 48 28 cb    	vmovaps zmm1,zmm3
  a18cd6:	62 12 4d 48 bc d9    	vfnmadd231ps zmm11,zmm6,zmm25
  a18cdc:	62 d1 7c 48 28 dc    	vmovaps zmm3,zmm12
  a18ce2:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x380]
  a18ce9:	0e 
  a18cea:	62 f2 55 48 a8 da    	vfmadd213ps zmm3,zmm5,zmm2
  a18cf0:	62 92 45 48 bc d9    	vfnmadd231ps zmm3,zmm7,zmm25
  a18cf6:	62 82 15 40 bc d9    	vfnmadd231ps zmm19,zmm29,zmm25
  a18cfc:	62 62 55 48 ac ca    	vfnmadd213ps zmm25,zmm5,zmm2
  a18d02:	62 42 45 48 b8 cc    	vfmadd231ps zmm25,zmm7,zmm12
  a18d08:	62 a1 34 40 5c f0    	vsubps zmm22,zmm25,zmm16
  a18d0e:	62 21 34 40 58 c8    	vaddps zmm25,zmm25,zmm16
  a18d14:	62 11 34 48 58 eb    	vaddps zmm13,zmm9,zmm27
  a18d1a:	62 51 7c 48 58 cd    	vaddps zmm9,zmm0,zmm13
  a18d20:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm9
  a18d27:	08 
  a18d28:	62 72 3d 48 ac e8    	vfnmadd213ps zmm13,zmm8,zmm0
  a18d2e:	62 b1 74 48 58 c4    	vaddps zmm0,zmm1,zmm20
  a18d34:	62 e1 7c 48 58 e6    	vaddps zmm20,zmm0,zmm6
  a18d3a:	62 f1 6c 48 58 c5    	vaddps zmm0,zmm2,zmm5
  a18d40:	62 71 7c 48 58 d7    	vaddps zmm10,zmm0,zmm7
  a18d46:	62 b1 6c 40 58 d1    	vaddps zmm2,zmm18,zmm17
  a18d4c:	62 b1 74 40 5c fa    	vsubps zmm7,zmm17,zmm18
  a18d52:	62 31 0c 40 58 cd    	vaddps zmm9,zmm30,zmm21
  a18d58:	62 81 54 40 5c ce    	vsubps zmm17,zmm21,zmm30
  a18d5e:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x540]
  a18d65:	15 
  a18d66:	62 41 74 48 58 f6    	vaddps zmm30,zmm1,zmm14
  a18d6c:	62 f1 0c 48 5c c1    	vsubps zmm0,zmm14,zmm1
  a18d72:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm0
  a18d79:	05 
  a18d7a:	62 81 34 48 58 c6    	vaddps zmm16,zmm9,zmm30
  a18d80:	62 c1 7c 48 28 d0    	vmovaps zmm18,zmm8
  a18d86:	62 e2 7d 40 ac d2    	vfnmadd213ps zmm18,zmm16,zmm2
  a18d8c:	62 f2 7d 48 18 35 3e 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff65c53e]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a18d93:	c5 65 ff 
  a18d96:	62 71 7c 48 28 7c 24 	vmovaps zmm15,ZMMWORD PTR [rsp+0x340]
  a18d9d:	0d 
  a18d9e:	62 d1 24 48 5c ef    	vsubps zmm5,zmm11,zmm15
  a18da4:	62 e1 7c 48 28 6c 24 	vmovaps zmm21,ZMMWORD PTR [rsp+0x500]
  a18dab:	14 
  a18dac:	62 b1 64 48 5c cd    	vsubps zmm1,zmm3,zmm21
  a18db2:	62 71 54 48 5c f1    	vsubps zmm14,zmm5,zmm1
  a18db8:	62 71 0c 48 59 f6    	vmulps zmm14,zmm14,zmm6
  a18dbe:	62 41 6c 40 5c de    	vsubps zmm27,zmm18,zmm14
  a18dc4:	62 61 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm27
  a18dcb:	03 
  a18dcc:	62 51 6c 40 58 f6    	vaddps zmm14,zmm18,zmm14
  a18dd2:	62 71 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm14
  a18dd9:	0b 
  a18dda:	62 71 74 40 58 f0    	vaddps zmm14,zmm17,zmm0
  a18de0:	62 c1 44 48 58 d6    	vaddps zmm18,zmm7,zmm14
  a18de6:	62 e1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm18
  a18ded:	06 
  a18dee:	62 72 3d 48 ac f7    	vfnmadd213ps zmm14,zmm8,zmm7
  a18df4:	62 51 24 48 58 df    	vaddps zmm11,zmm11,zmm15
  a18dfa:	62 b1 64 48 58 dd    	vaddps zmm3,zmm3,zmm21
  a18e00:	62 b1 6c 48 58 c0    	vaddps zmm0,zmm2,zmm16
  a18e06:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm0
  a18e0d:	18 
  a18e0e:	62 d1 5c 40 5c c2    	vsubps zmm0,zmm20,zmm10
  a18e14:	62 f1 7c 48 59 fe    	vmulps zmm7,zmm0,zmm6
  a18e1a:	62 61 14 48 5c df    	vsubps zmm27,zmm13,zmm7
  a18e20:	62 d1 44 48 58 c5    	vaddps zmm0,zmm7,zmm13
  a18e26:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm0
  a18e2d:	0a 
  a18e2e:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x7c0]
  a18e35:	1f 
  a18e36:	62 e1 7c 48 28 54 24 	vmovaps zmm18,ZMMWORD PTR [rsp+0x780]
  a18e3d:	1e 
  a18e3e:	62 b1 6c 48 58 fa    	vaddps zmm7,zmm2,zmm18
  a18e44:	62 51 7c 48 28 e8    	vmovaps zmm13,zmm8
  a18e4a:	62 32 45 48 ac ef    	vfnmadd213ps zmm13,zmm7,zmm23
  a18e50:	62 31 1c 40 5c fe    	vsubps zmm15,zmm28,zmm22
  a18e56:	62 71 04 48 59 fe    	vmulps zmm15,zmm15,zmm6
  a18e5c:	62 d1 14 48 58 c7    	vaddps zmm0,zmm13,zmm15
  a18e62:	62 51 14 48 5c ef    	vsubps zmm13,zmm13,zmm15
  a18e68:	62 71 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm13
  a18e6f:	17 
  a18e70:	62 f1 44 40 58 ff    	vaddps zmm7,zmm23,zmm7
  a18e76:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm7
  a18e7d:	04 
  a18e7e:	62 f1 24 48 5c fb    	vsubps zmm7,zmm11,zmm3
  a18e84:	62 f1 44 48 59 fe    	vmulps zmm7,zmm7,zmm6
  a18e8a:	62 71 0c 48 5c ef    	vsubps zmm13,zmm14,zmm7
  a18e90:	62 71 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm13
  a18e97:	09 
  a18e98:	62 f1 0c 48 58 ff    	vaddps zmm7,zmm14,zmm7
  a18e9e:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm7
  a18ea5:	0d 
  a18ea6:	62 91 3c 40 5c f9    	vsubps zmm7,zmm24,zmm25
  a18eac:	62 f1 44 48 59 fe    	vmulps zmm7,zmm7,zmm6
  a18eb2:	62 71 2c 40 58 ff    	vaddps zmm15,zmm26,zmm7
  a18eb8:	62 f1 2c 40 5c ff    	vsubps zmm7,zmm26,zmm7
  a18ebe:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm7
  a18ec5:	07 
  a18ec6:	62 d2 15 40 b8 e4    	vfmadd231ps zmm4,zmm29,zmm12
  a18ecc:	62 71 14 40 58 64 24 	vaddps zmm12,zmm29,ZMMWORD PTR [rsp+0x300]
  a18ed3:	0c 
  a18ed4:	62 51 5c 40 58 ea    	vaddps zmm13,zmm20,zmm10
  a18eda:	62 a1 1c 40 58 c6    	vaddps zmm16,zmm28,zmm22
  a18ee0:	62 31 6c 48 5c f2    	vsubps zmm14,zmm2,zmm18
  a18ee6:	62 11 34 48 5c ce    	vsubps zmm9,zmm9,zmm30
  a18eec:	62 f1 54 48 58 d1    	vaddps zmm2,zmm5,zmm1
  a18ef2:	62 91 5c 48 5c ff    	vsubps zmm7,zmm4,zmm31
  a18ef8:	62 91 5c 48 58 e7    	vaddps zmm4,zmm4,zmm31
  a18efe:	62 01 3c 40 58 c9    	vaddps zmm25,zmm24,zmm25
  a18f04:	62 81 5c 48 58 d1    	vaddps zmm18,zmm4,zmm25
  a18f0a:	62 62 3d 48 ac cc    	vfnmadd213ps zmm25,zmm8,zmm4
  a18f10:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x400]
  a18f17:	10 
  a18f18:	62 f1 74 48 5c 64 24 	vsubps zmm4,zmm1,ZMMWORD PTR [rsp+0x80]
  a18f1f:	02 
  a18f20:	62 41 1c 48 58 f5    	vaddps zmm30,zmm12,zmm13
  a18f26:	62 52 3d 48 ac ec    	vfnmadd213ps zmm13,zmm8,zmm12
  a18f2c:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x800]
  a18f33:	20 
  a18f34:	62 71 74 48 5c 64 24 	vsubps zmm12,zmm1,ZMMWORD PTR [rsp+0x3c0]
  a18f3b:	0f 
  a18f3c:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x580]
  a18f43:	16 
  a18f44:	62 e1 64 40 5c e1    	vsubps zmm20,zmm19,zmm1
  a18f4a:	62 e1 64 40 58 e9    	vaddps zmm21,zmm19,zmm1
  a18f50:	62 f1 24 48 58 db    	vaddps zmm3,zmm11,zmm3
  a18f56:	62 51 7c 48 28 d8    	vmovaps zmm11,zmm8
  a18f5c:	62 c1 7c 48 28 f0    	vmovaps zmm22,zmm8
  a18f62:	62 32 65 48 ac c5    	vfnmadd213ps zmm8,zmm3,zmm21
  a18f68:	62 61 54 40 58 c3    	vaddps zmm24,zmm21,zmm3
  a18f6e:	62 f1 34 48 59 de    	vmulps zmm3,zmm9,zmm6
  a18f74:	62 a2 6d 48 ac f4    	vfnmadd213ps zmm22,zmm2,zmm20
  a18f7a:	62 a1 64 48 58 ee    	vaddps zmm21,zmm3,zmm22
  a18f80:	62 61 4c 40 5c eb    	vsubps zmm29,zmm22,zmm3
  a18f86:	62 f1 74 40 5c 5c 24 	vsubps zmm3,zmm17,ZMMWORD PTR [rsp+0x140]
  a18f8d:	05 
  a18f8e:	62 71 0c 48 59 ce    	vmulps zmm9,zmm14,zmm6
  a18f94:	62 f1 5c 48 59 e6    	vmulps zmm4,zmm4,zmm6
  a18f9a:	62 71 1c 48 59 f6    	vmulps zmm14,zmm12,zmm6
  a18fa0:	62 f1 64 48 59 de    	vmulps zmm3,zmm3,zmm6
  a18fa6:	62 72 7d 40 ac df    	vfnmadd213ps zmm11,zmm16,zmm7
  a18fac:	62 71 5c 40 58 e2    	vaddps zmm12,zmm20,zmm2
  a18fb2:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm12
  a18fb9:	16 
  a18fba:	62 51 14 48 58 d6    	vaddps zmm10,zmm13,zmm14
  a18fc0:	62 c1 14 48 5c fe    	vsubps zmm23,zmm13,zmm14
  a18fc6:	62 51 24 48 5c e9    	vsubps zmm13,zmm11,zmm9
  a18fcc:	62 c1 24 48 58 f1    	vaddps zmm22,zmm11,zmm9
  a18fd2:	62 f1 7c 48 28 35 a4 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff6adfa4]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a18fd9:	df 6a ff 
  a18fdc:	62 b1 44 48 58 d0    	vaddps zmm2,zmm7,zmm16
  a18fe2:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm2
  a18fe9:	05 
  a18fea:	62 c1 64 48 58 c0    	vaddps zmm16,zmm3,zmm8
  a18ff0:	62 61 3c 48 5c d3    	vsubps zmm26,zmm8,zmm3
  a18ff6:	62 f1 34 40 5c ec    	vsubps zmm5,zmm25,zmm4
  a18ffc:	62 61 34 40 58 e4    	vaddps zmm28,zmm25,zmm4
  a19002:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x200]
  a19009:	08 
  a1900a:	62 f1 7c 48 28 d9    	vmovaps zmm3,zmm1
  a19010:	62 f2 4d 48 7f d8    	vpermt2ps zmm3,zmm6,zmm0
  a19016:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm3
  a1901d:	02 
  a1901e:	62 61 7c 48 28 0d 98 	vmovaps zmm25,ZMMWORD PTR [rip+0xffffffffff6adf98]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a19025:	df 6a ff 
  a19028:	62 f2 35 40 7f c8    	vpermt2ps zmm1,zmm25,zmm0
  a1902e:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm1
  a19035:	08 
  a19036:	62 e1 7c 48 28 4c 24 	vmovaps zmm17,ZMMWORD PTR [rsp+0xc0]
  a1903d:	03 
  a1903e:	62 b1 7c 48 28 c1    	vmovaps zmm0,zmm17
  a19044:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x40]
  a1904b:	01 
  a1904c:	62 f2 4d 48 7f c1    	vpermt2ps zmm0,zmm6,zmm1
  a19052:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm0
  a19059:	15 
  a1905a:	62 e2 35 40 7f c9    	vpermt2ps zmm17,zmm25,zmm1
  a19060:	62 e1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm17
  a19067:	03 
  a19068:	62 c1 7c 48 28 df    	vmovaps zmm19,zmm15
  a1906e:	62 82 4d 48 7f db    	vpermt2ps zmm19,zmm6,zmm27
  a19074:	62 12 35 40 7f fb    	vpermt2ps zmm15,zmm25,zmm27
  a1907a:	62 71 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm15
  a19081:	01 
  a19082:	62 71 7c 48 28 74 24 	vmovaps zmm14,ZMMWORD PTR [rsp+0x180]
  a19089:	06 
  a1908a:	62 d1 7c 48 28 ce    	vmovaps zmm1,zmm14
  a19090:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x2c0]
  a19097:	0b 
  a19098:	62 f2 4d 48 7f cb    	vpermt2ps zmm1,zmm6,zmm3
  a1909e:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm1
  a190a5:	0e 
  a190a6:	62 72 35 40 7f f3    	vpermt2ps zmm14,zmm25,zmm3
  a190ac:	62 71 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm14
  a190b3:	06 
  a190b4:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x240]
  a190bb:	09 
  a190bc:	62 61 7c 48 28 f8    	vmovaps zmm31,zmm0
  a190c2:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x600]
  a190c9:	18 
  a190ca:	62 62 4d 48 7f f9    	vpermt2ps zmm31,zmm6,zmm1
  a190d0:	62 f2 35 40 7f c1    	vpermt2ps zmm0,zmm25,zmm1
  a190d6:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm0
  a190dd:	09 
  a190de:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x280]
  a190e5:	0a 
  a190e6:	62 f1 7c 48 28 c8    	vmovaps zmm1,zmm0
  a190ec:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x5c0]
  a190f3:	17 
  a190f4:	62 f2 4d 48 7f cb    	vpermt2ps zmm1,zmm6,zmm3
  a190fa:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x740],zmm1
  a19101:	1d 
  a19102:	62 f2 35 40 7f c3    	vpermt2ps zmm0,zmm25,zmm3
  a19108:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm0
  a1910f:	0a 
  a19110:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x100]
  a19117:	04 
  a19118:	62 e1 7c 48 28 e0    	vmovaps zmm20,zmm0
  a1911e:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x340]
  a19125:	0d 
  a19126:	62 e2 4d 48 7f e1    	vpermt2ps zmm20,zmm6,zmm1
  a1912c:	62 f2 35 40 7f c1    	vpermt2ps zmm0,zmm25,zmm1
  a19132:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  a19139:	04 
  a1913a:	62 11 7c 48 28 c6    	vmovaps zmm8,zmm30
  a19140:	62 11 7c 48 28 ce    	vmovaps zmm9,zmm30
  a19146:	62 52 35 40 7f cd    	vpermt2ps zmm9,zmm25,zmm13
  a1914c:	62 d1 7c 48 28 cd    	vmovaps zmm1,zmm13
  a19152:	62 b1 7c 48 28 c5    	vmovaps zmm0,zmm21
  a19158:	62 b2 35 40 7f c2    	vpermt2ps zmm0,zmm25,zmm18
  a1915e:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm0
  a19165:	0b 
  a19166:	62 71 7c 48 28 ed    	vmovaps zmm13,zmm5
  a1916c:	62 61 7c 48 28 f5    	vmovaps zmm30,zmm5
  a19172:	62 52 35 40 7f ea    	vpermt2ps zmm13,zmm25,zmm10
  a19178:	62 51 7c 48 28 fa    	vmovaps zmm15,zmm10
  a1917e:	62 91 7c 48 28 e0    	vmovaps zmm4,zmm24
  a19184:	62 11 7c 48 28 d0    	vmovaps zmm10,zmm24
  a1918a:	62 12 35 40 7f d5    	vpermt2ps zmm10,zmm25,zmm29
  a19190:	62 91 7c 48 28 dd    	vmovaps zmm3,zmm29
  a19196:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0xb80],zmm10
  a1919d:	2e 
  a1919e:	62 b1 7c 48 28 e8    	vmovaps zmm5,zmm16
  a191a4:	62 21 7c 48 28 c0    	vmovaps zmm24,zmm16
  a191aa:	62 d2 35 40 7f ec    	vpermt2ps zmm5,zmm25,zmm12
  a191b0:	62 b1 7c 48 28 c7    	vmovaps zmm0,zmm23
  a191b6:	62 b2 35 40 7f c6    	vpermt2ps zmm0,zmm25,zmm22
  a191bc:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x700],zmm0
  a191c3:	1c 
  a191c4:	62 e1 7c 48 28 ca    	vmovaps zmm17,zmm2
  a191ca:	62 82 35 40 7f ca    	vpermt2ps zmm17,zmm25,zmm26
  a191d0:	c4 41 20 57 db       	vxorps xmm11,xmm11,xmm11
  a191d5:	62 01 7c 48 28 ec    	vmovaps zmm29,zmm28
  a191db:	62 42 35 40 7f eb    	vpermt2ps zmm29,zmm25,zmm11
  a191e1:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x1c0]
  a191e8:	07 
  a191e9:	62 61 7c 48 28 d8    	vmovaps zmm27,zmm0
  a191ef:	62 d2 35 40 7f c3    	vpermt2ps zmm0,zmm25,zmm11
  a191f5:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm0
  a191fc:	07 
  a191fd:	62 72 4d 48 7f c1    	vpermt2ps zmm8,zmm6,zmm1
  a19203:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xac0],zmm8
  a1920a:	2b 
  a1920b:	62 a2 4d 48 7f ea    	vpermt2ps zmm21,zmm6,zmm18
  a19211:	62 e1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x840],zmm21
  a19218:	21 
  a19219:	62 42 4d 48 7f f7    	vpermt2ps zmm30,zmm6,zmm15
  a1921f:	62 61 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0xa80],zmm30
  a19226:	2a 
  a19227:	62 f2 4d 48 7f e3    	vpermt2ps zmm4,zmm6,zmm3
  a1922d:	62 f1 7c 48 28 cc    	vmovaps zmm1,zmm4
  a19233:	62 62 4d 48 7f 44 24 	vpermt2ps zmm24,zmm6,ZMMWORD PTR [rsp+0x580]
  a1923a:	16 
  a1923b:	62 b1 7c 48 28 d7    	vmovaps zmm2,zmm23
  a19241:	62 b2 4d 48 7f d6    	vpermt2ps zmm2,zmm6,zmm22
  a19247:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x880],zmm2
  a1924e:	22 
  a1924f:	62 e1 7c 48 28 7c 24 	vmovaps zmm23,ZMMWORD PTR [rsp+0x140]
  a19256:	05 
  a19257:	62 82 4d 48 7f fa    	vpermt2ps zmm23,zmm6,zmm26
  a1925d:	62 e1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm23
  a19264:	05 
  a19265:	62 42 4d 48 7f db    	vpermt2ps zmm27,zmm6,zmm11
  a1926b:	62 91 7c 48 28 dc    	vmovaps zmm3,zmm28
  a19271:	62 d2 4d 48 7f db    	vpermt2ps zmm3,zmm6,zmm11
  a19277:	62 e1 7c 48 28 74 24 	vmovaps zmm22,ZMMWORD PTR [rsp+0x200]
  a1927e:	08 
  a1927f:	62 e1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x6c0],zmm22
  a19286:	1b 
  a19287:	62 f1 7c 48 28 25 af 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff6adcaf]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a1928e:	dc 6a ff 
  a19291:	62 e2 5d 48 7f 74 24 	vpermt2ps zmm22,zmm4,ZMMWORD PTR [rsp+0xc0]
  a19298:	03 
  a19299:	62 e1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm22
  a192a0:	08 
  a192a1:	62 e1 7c 48 28 54 24 	vmovaps zmm18,ZMMWORD PTR [rsp+0x40]
  a192a8:	01 
  a192a9:	62 e1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm18
  a192b0:	1a 
  a192b1:	62 c2 5d 48 7f d6    	vpermt2ps zmm18,zmm4,zmm14
  a192b7:	62 e1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm18
  a192be:	01 
  a192bf:	62 71 7c 48 28 7c 24 	vmovaps zmm15,ZMMWORD PTR [rsp+0x240]
  a192c6:	09 
  a192c7:	62 71 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm15
  a192ce:	19 
  a192cf:	62 72 5d 48 7f 7c 24 	vpermt2ps zmm15,zmm4,ZMMWORD PTR [rsp+0x280]
  a192d6:	0a 
  a192d7:	62 71 7c 48 28 5c 24 	vmovaps zmm11,ZMMWORD PTR [rsp+0x100]
  a192de:	04 
  a192df:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x8c0],zmm11
  a192e6:	23 
  a192e7:	62 72 5d 48 7f d8    	vpermt2ps zmm11,zmm4,zmm0
  a192ed:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm11
  a192f4:	04 
  a192f5:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc00],zmm9
  a192fc:	30 
  a192fd:	62 72 5d 48 7f 4c 24 	vpermt2ps zmm9,zmm4,ZMMWORD PTR [rsp+0x2c0]
  a19304:	0b 
  a19305:	62 51 7c 48 28 e1    	vmovaps zmm12,zmm9
  a1930b:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x980],zmm9
  a19312:	26 
  a19313:	62 71 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0xbc0],zmm13
  a1931a:	2f 
  a1931b:	62 52 5d 48 7f ea    	vpermt2ps zmm13,zmm4,zmm10
  a19321:	62 71 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x940],zmm13
  a19328:	25 
  a19329:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0xb40],zmm5
  a19330:	2d 
  a19331:	62 61 7c 48 28 64 24 	vmovaps zmm28,ZMMWORD PTR [rsp+0x700]
  a19338:	1c 
  a19339:	62 92 5d 48 7f ec    	vpermt2ps zmm5,zmm4,zmm28
  a1933f:	62 e1 7c 48 28 c5    	vmovaps zmm16,zmm5
  a19345:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x900],zmm5
  a1934c:	24 
  a1934d:	62 e1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xb00],zmm17
  a19354:	2c 
  a19355:	62 82 5d 48 7f cd    	vpermt2ps zmm17,zmm4,zmm29
  a1935b:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x80]
  a19362:	02 
  a19363:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0xa40],zmm7
  a1936a:	29 
  a1936b:	62 71 7c 48 28 74 24 	vmovaps zmm14,ZMMWORD PTR [rsp+0x540]
  a19372:	15 
  a19373:	62 d2 5d 48 7f fe    	vpermt2ps zmm7,zmm4,zmm14
  a19379:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm7
  a19380:	02 
  a19381:	62 21 7c 48 28 cb    	vmovaps zmm25,zmm19
  a19387:	62 e2 5d 48 7f 5c 24 	vpermt2ps zmm19,zmm4,ZMMWORD PTR [rsp+0x380]
  a1938e:	0e 
  a1938f:	62 e1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x780],zmm19
  a19396:	1e 
  a19397:	62 91 7c 48 28 f7    	vmovaps zmm6,zmm31
  a1939d:	62 01 7c 48 28 d7    	vmovaps zmm26,zmm31
  a193a3:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x740]
  a193aa:	1d 
  a193ab:	62 d2 5d 48 7f f2    	vpermt2ps zmm6,zmm4,zmm10
  a193b1:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0xa00],zmm6
  a193b8:	28 
  a193b9:	62 b1 7c 48 28 ec    	vmovaps zmm5,zmm20
  a193bf:	62 92 5d 48 7f eb    	vpermt2ps zmm5,zmm4,zmm27
  a193c5:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x9c0],zmm5
  a193cc:	27 
  a193cd:	62 32 5d 48 7f c5    	vpermt2ps zmm8,zmm4,zmm21
  a193d3:	62 d1 7c 48 28 c0    	vmovaps zmm0,zmm8
  a193d9:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm8
  a193e0:	0f 
  a193e1:	62 62 5d 48 7f f1    	vpermt2ps zmm30,zmm4,zmm1
  a193e7:	62 71 7c 48 28 c1    	vmovaps zmm8,zmm1
  a193ed:	62 01 7c 48 28 fe    	vmovaps zmm31,zmm30
  a193f3:	62 61 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x800],zmm30
  a193fa:	20 
  a193fb:	62 91 7c 48 28 c8    	vmovaps zmm1,zmm24
  a19401:	62 01 7c 48 28 f0    	vmovaps zmm30,zmm24
  a19407:	62 f2 5d 48 7f ca    	vpermt2ps zmm1,zmm4,zmm2
  a1940d:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x7c0],zmm1
  a19414:	1f 
  a19415:	62 f2 45 40 77 e3    	vpermi2ps zmm4,zmm23,zmm3
  a1941b:	62 e1 7c 48 28 fb    	vmovaps zmm23,zmm3
  a19421:	62 e1 7c 48 28 2d d5 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff6ad9d5]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a19428:	d9 6a ff 
  a1942b:	62 11 fd 48 15 cf    	vunpckhpd zmm9,zmm0,zmm31
  a19431:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm9
  a19438:	0d 
  a19439:	62 f1 f5 48 15 c4    	vunpckhpd zmm0,zmm1,zmm4
  a1943f:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm0
  a19446:	14 
  a19447:	62 72 55 40 7f c8    	vpermt2ps zmm9,zmm21,zmm0
  a1944d:	62 21 c5 48 15 fb    	vunpckhpd zmm31,zmm7,zmm19
  a19453:	62 61 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm31
  a1945a:	0c 
  a1945b:	62 f1 cd 48 15 c5    	vunpckhpd zmm0,zmm6,zmm5
  a19461:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm0
  a19468:	13 
  a19469:	62 62 55 40 7f f8    	vpermt2ps zmm31,zmm21,zmm0
  a1946f:	62 f1 7c 48 10 52 0d 	vmovups zmm2,ZMMWORD PTR [rdx+0x340]
  a19476:	62 f1 7c 48 10 4a 0c 	vmovups zmm1,ZMMWORD PTR [rdx+0x300]
  a1947d:	62 f1 04 40 59 c1    	vmulps zmm0,zmm31,zmm1
  a19483:	62 f2 35 48 b8 c2    	vfmadd231ps zmm0,zmm9,zmm2
  a19489:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm0
  a19490:	09 
  a19491:	62 f1 34 48 59 c1    	vmulps zmm0,zmm9,zmm1
  a19497:	62 92 6d 48 bc c7    	vfnmadd231ps zmm0,zmm2,zmm31
  a1949d:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm0
  a194a4:	18 
  a194a5:	62 d1 9d 48 15 cd    	vunpckhpd zmm1,zmm12,zmm13
  a194ab:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm1
  a194b2:	12 
  a194b3:	62 b1 fd 40 15 c1    	vunpckhpd zmm0,zmm16,zmm17
  a194b9:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm0
  a194c0:	11 
  a194c1:	62 f2 55 40 7f c8    	vpermt2ps zmm1,zmm21,zmm0
  a194c7:	62 21 cd 40 15 fa    	vunpckhpd zmm31,zmm22,zmm18
  a194cd:	62 d1 85 48 15 c3    	vunpckhpd zmm0,zmm15,zmm11
  a194d3:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm0
  a194da:	10 
  a194db:	62 c1 7c 48 28 c7    	vmovaps zmm16,zmm15
  a194e1:	62 91 7c 48 28 d7    	vmovaps zmm2,zmm31
  a194e7:	62 f2 55 40 7f d0    	vpermt2ps zmm2,zmm21,zmm0
  a194ed:	62 f1 7c 48 10 5a 1d 	vmovups zmm3,ZMMWORD PTR [rdx+0x740]
  a194f4:	62 f1 7c 48 10 42 1c 	vmovups zmm0,ZMMWORD PTR [rdx+0x700]
  a194fb:	62 e1 6c 48 59 d8    	vmulps zmm19,zmm2,zmm0
  a19501:	62 e2 75 48 b8 db    	vfmadd231ps zmm19,zmm1,zmm3
  a19507:	62 e1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm19
  a1950e:	17 
  a1950f:	62 f1 74 48 59 c0    	vmulps zmm0,zmm1,zmm0
  a19515:	62 f2 65 48 bc c2    	vfnmadd231ps zmm0,zmm3,zmm2
  a1951b:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm0
  a19522:	16 
  a19523:	62 f1 7c 48 28 05 d3 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6ad9d3]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a1952a:	d9 6a ff 
  a1952d:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0xa40]
  a19534:	29 
  a19535:	62 d2 7d 48 7f ee    	vpermt2ps zmm5,zmm0,zmm14
  a1953b:	62 62 7d 48 7f 4c 24 	vpermt2ps zmm25,zmm0,ZMMWORD PTR [rsp+0x380]
  a19542:	0e 
  a19543:	62 42 7d 48 7f d2    	vpermt2ps zmm26,zmm0,zmm10
  a19549:	62 82 7d 48 7f e3    	vpermt2ps zmm20,zmm0,zmm27
  a1954f:	62 71 7c 48 28 74 24 	vmovaps zmm14,ZMMWORD PTR [rsp+0xc00]
  a19556:	30 
  a19557:	62 72 7d 48 7f 74 24 	vpermt2ps zmm14,zmm0,ZMMWORD PTR [rsp+0x2c0]
  a1955e:	0b 
  a1955f:	62 71 7c 48 28 5c 24 	vmovaps zmm11,ZMMWORD PTR [rsp+0xbc0]
  a19566:	2f 
  a19567:	62 72 7d 48 7f 5c 24 	vpermt2ps zmm11,zmm0,ZMMWORD PTR [rsp+0xb80]
  a1956e:	2e 
  a1956f:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0xb40]
  a19576:	2d 
  a19577:	62 92 7d 48 7f f4    	vpermt2ps zmm6,zmm0,zmm28
  a1957d:	62 61 7c 48 28 44 24 	vmovaps zmm24,ZMMWORD PTR [rsp+0xb00]
  a19584:	2c 
  a19585:	62 02 7d 48 7f c5    	vpermt2ps zmm24,zmm0,zmm29
  a1958b:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x6c0]
  a19592:	1b 
  a19593:	62 72 7d 48 7f 54 24 	vpermt2ps zmm10,zmm0,ZMMWORD PTR [rsp+0xc0]
  a1959a:	03 
  a1959b:	62 71 7c 48 28 7c 24 	vmovaps zmm15,ZMMWORD PTR [rsp+0x680]
  a195a2:	1a 
  a195a3:	62 72 7d 48 7f 7c 24 	vpermt2ps zmm15,zmm0,ZMMWORD PTR [rsp+0x180]
  a195aa:	06 
  a195ab:	62 61 7c 48 28 5c 24 	vmovaps zmm27,ZMMWORD PTR [rsp+0x640]
  a195b2:	19 
  a195b3:	62 62 7d 48 7f 5c 24 	vpermt2ps zmm27,zmm0,ZMMWORD PTR [rsp+0x280]
  a195ba:	0a 
  a195bb:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x8c0]
  a195c2:	23 
  a195c3:	62 f2 7d 48 7f 7c 24 	vpermt2ps zmm7,zmm0,ZMMWORD PTR [rsp+0x1c0]
  a195ca:	07 
  a195cb:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0xac0]
  a195d2:	2b 
  a195d3:	62 f2 7d 48 7f 4c 24 	vpermt2ps zmm1,zmm0,ZMMWORD PTR [rsp+0x840]
  a195da:	21 
  a195db:	62 71 7c 48 28 6c 24 	vmovaps zmm13,ZMMWORD PTR [rsp+0xa80]
  a195e2:	2a 
  a195e3:	62 52 7d 48 7f e8    	vpermt2ps zmm13,zmm0,zmm8
  a195e9:	62 91 7c 48 28 de    	vmovaps zmm3,zmm30
  a195ef:	62 f2 7d 48 7f 5c 24 	vpermt2ps zmm3,zmm0,ZMMWORD PTR [rsp+0x880]
  a195f6:	22 
  a195f7:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x140]
  a195fe:	05 
  a195ff:	62 b2 7d 48 7f d7    	vpermt2ps zmm2,zmm0,zmm23
  a19605:	62 11 d5 48 15 c9    	vunpckhpd zmm9,zmm5,zmm25
  a1960b:	62 61 7c 48 28 f5    	vmovaps zmm30,zmm5
  a19611:	62 b1 ad 40 15 ec    	vunpckhpd zmm5,zmm26,zmm20
  a19617:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm5
  a1961e:	19 
  a1961f:	62 d1 7c 48 28 c1    	vmovaps zmm0,zmm9
  a19625:	62 f2 55 40 7f c5    	vpermt2ps zmm0,zmm21,zmm5
  a1962b:	62 c1 f5 48 15 dd    	vunpckhpd zmm19,zmm1,zmm13
  a19631:	62 c1 7c 48 28 f5    	vmovaps zmm22,zmm13
  a19637:	62 71 7c 48 28 c1    	vmovaps zmm8,zmm1
  a1963d:	62 f1 e5 48 15 ea    	vunpckhpd zmm5,zmm3,zmm2
  a19643:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x8c0],zmm5
  a1964a:	23 
  a1964b:	62 e1 7c 48 28 fb    	vmovaps zmm23,zmm3
  a19651:	62 e1 7c 48 28 d2    	vmovaps zmm18,zmm2
  a19657:	62 b1 7c 48 28 cb    	vmovaps zmm1,zmm19
  a1965d:	62 f2 55 40 7f cd    	vpermt2ps zmm1,zmm21,zmm5
  a19663:	62 f1 7c 48 10 52 04 	vmovups zmm2,ZMMWORD PTR [rdx+0x100]
  a1966a:	62 f1 7c 48 10 5a 05 	vmovups zmm3,ZMMWORD PTR [rdx+0x140]
  a19671:	62 f1 74 48 59 ea    	vmulps zmm5,zmm1,zmm2
  a19677:	62 f2 7d 48 bc eb    	vfnmadd231ps zmm5,zmm0,zmm3
  a1967d:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm5
  a19684:	05 
  a19685:	62 f1 7c 48 59 c2    	vmulps zmm0,zmm0,zmm2
  a1968b:	62 f2 65 48 b8 c1    	vfmadd231ps zmm0,zmm3,zmm1
  a19691:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm0
  a19698:	0e 
  a19699:	62 d1 ad 48 15 ef    	vunpckhpd zmm5,zmm10,zmm15
  a1969f:	62 51 7c 48 28 e2    	vmovaps zmm12,zmm10
  a196a5:	62 f1 a5 40 15 cf    	vunpckhpd zmm1,zmm27,zmm7
  a196ab:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x880],zmm1
  a196b2:	22 
  a196b3:	62 71 7c 48 28 ef    	vmovaps zmm13,zmm7
  a196b9:	62 f1 7c 48 28 c5    	vmovaps zmm0,zmm5
  a196bf:	62 f2 55 40 7f c1    	vpermt2ps zmm0,zmm21,zmm1
  a196c5:	62 41 8d 48 15 e3    	vunpckhpd zmm28,zmm14,zmm11
  a196cb:	62 51 7c 48 28 d3    	vmovaps zmm10,zmm11
  a196d1:	62 91 cd 48 15 d0    	vunpckhpd zmm2,zmm6,zmm24
  a196d7:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x840],zmm2
  a196de:	21 
  a196df:	62 f1 7c 48 28 de    	vmovaps zmm3,zmm6
  a196e5:	62 91 7c 48 28 cc    	vmovaps zmm1,zmm28
  a196eb:	62 f2 55 40 7f ca    	vpermt2ps zmm1,zmm21,zmm2
  a196f1:	62 f1 7c 48 10 52 15 	vmovups zmm2,ZMMWORD PTR [rdx+0x540]
  a196f8:	62 71 7c 48 10 5a 14 	vmovups zmm11,ZMMWORD PTR [rdx+0x500]
  a196ff:	62 41 74 48 59 eb    	vmulps zmm29,zmm1,zmm11
  a19705:	62 62 7d 48 bc ea    	vfnmadd231ps zmm29,zmm0,zmm2
  a1970b:	62 61 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm29
  a19712:	0b 
  a19713:	62 d1 7c 48 59 c3    	vmulps zmm0,zmm0,zmm11
  a19719:	62 f2 6d 48 b8 c1    	vfmadd231ps zmm0,zmm2,zmm1
  a1971f:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm0
  a19726:	15 
  a19727:	62 91 8d 40 14 c1    	vunpcklpd zmm0,zmm30,zmm25
  a1972d:	62 b1 ad 40 14 fc    	vunpcklpd zmm7,zmm26,zmm20
  a19733:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm7
  a1973a:	1a 
  a1973b:	62 b1 bd 48 14 d6    	vunpcklpd zmm2,zmm8,zmm22
  a19741:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm2
  a19748:	03 
  a19749:	62 b1 c5 40 14 f2    	vunpcklpd zmm6,zmm23,zmm18
  a1974f:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x700],zmm6
  a19756:	1c 
  a19757:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x6c0],zmm0
  a1975e:	1b 
  a1975f:	62 f1 7c 48 28 0d d7 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff6ad6d7]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a19766:	d6 6a ff 
  a19769:	62 f2 75 48 7f c7    	vpermt2ps zmm0,zmm1,zmm7
  a1976f:	62 f2 75 48 7f d6    	vpermt2ps zmm2,zmm1,zmm6
  a19775:	62 f1 7c 48 10 72 02 	vmovups zmm6,ZMMWORD PTR [rdx+0x80]
  a1977c:	62 f1 7c 48 10 7a 03 	vmovups zmm7,ZMMWORD PTR [rdx+0xc0]
  a19783:	62 71 6c 48 59 c6    	vmulps zmm8,zmm2,zmm6
  a19789:	62 72 7d 48 bc c7    	vfnmadd231ps zmm8,zmm0,zmm7
  a1978f:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x740],zmm8
  a19796:	1d 
  a19797:	62 f1 7c 48 59 c6    	vmulps zmm0,zmm0,zmm6
  a1979d:	62 f2 45 48 b8 c2    	vfmadd231ps zmm0,zmm7,zmm2
  a197a3:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm0
  a197aa:	0a 
  a197ab:	62 d1 8d 48 14 c2    	vunpcklpd zmm0,zmm14,zmm10
  a197b1:	62 81 e5 48 14 f8    	vunpcklpd zmm23,zmm3,zmm24
  a197b7:	62 d1 9d 48 14 d7    	vunpcklpd zmm2,zmm12,zmm15
  a197bd:	62 51 a5 40 14 d5    	vunpcklpd zmm10,zmm27,zmm13
  a197c3:	62 71 7c 48 28 e2    	vmovaps zmm12,zmm2
  a197c9:	62 d2 75 48 7f d2    	vpermt2ps zmm2,zmm1,zmm10
  a197cf:	62 61 7c 48 28 d0    	vmovaps zmm26,zmm0
  a197d5:	62 b2 75 48 7f c7    	vpermt2ps zmm0,zmm1,zmm23
  a197db:	62 f1 7c 48 10 72 13 	vmovups zmm6,ZMMWORD PTR [rdx+0x4c0]
  a197e2:	62 f1 7c 48 10 7a 12 	vmovups zmm7,ZMMWORD PTR [rdx+0x480]
  a197e9:	62 71 7c 48 59 df    	vmulps zmm11,zmm0,zmm7
  a197ef:	62 72 6d 48 bc de    	vfnmadd231ps zmm11,zmm2,zmm6
  a197f5:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm11
  a197fc:	07 
  a197fd:	62 f1 6c 48 59 d7    	vmulps zmm2,zmm2,zmm7
  a19803:	62 f2 4d 48 b8 d0    	vfmadd231ps zmm2,zmm6,zmm0
  a19809:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm2
  a19810:	06 
  a19811:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x200]
  a19818:	08 
  a19819:	62 f1 fd 48 14 44 24 	vunpcklpd zmm0,zmm0,ZMMWORD PTR [rsp+0x40]
  a19820:	01 
  a19821:	62 61 fd 40 14 6c 24 	vunpcklpd zmm29,zmm16,ZMMWORD PTR [rsp+0x100]
  a19828:	04 
  a19829:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x980]
  a19830:	26 
  a19831:	62 f1 ed 48 14 54 24 	vunpcklpd zmm2,zmm2,ZMMWORD PTR [rsp+0x940]
  a19838:	25 
  a19839:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x900]
  a19840:	24 
  a19841:	62 a1 e5 48 14 d1    	vunpcklpd zmm18,zmm3,zmm17
  a19847:	62 71 7c 48 28 f2    	vmovaps zmm14,zmm2
  a1984d:	62 b2 75 48 7f d2    	vpermt2ps zmm2,zmm1,zmm18
  a19853:	62 e1 7c 48 28 c8    	vmovaps zmm17,zmm0
  a19859:	62 92 75 48 7f c5    	vpermt2ps zmm0,zmm1,zmm29
  a1985f:	62 f1 7c 48 10 72 1b 	vmovups zmm6,ZMMWORD PTR [rdx+0x6c0]
  a19866:	62 f1 7c 48 10 7a 1a 	vmovups zmm7,ZMMWORD PTR [rdx+0x680]
  a1986d:	62 71 7c 48 59 df    	vmulps zmm11,zmm0,zmm7
  a19873:	62 72 6d 48 b8 de    	vfmadd231ps zmm11,zmm2,zmm6
  a19879:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm11
  a19880:	04 
  a19881:	62 f1 6c 48 59 d7    	vmulps zmm2,zmm2,zmm7
  a19887:	62 f2 4d 48 bc d0    	vfnmadd231ps zmm2,zmm6,zmm0
  a1988d:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm2
  a19894:	08 
  a19895:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x80]
  a1989c:	02 
  a1989d:	62 f1 fd 48 14 74 24 	vunpcklpd zmm6,zmm0,ZMMWORD PTR [rsp+0x780]
  a198a4:	1e 
  a198a5:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0xa00]
  a198ac:	28 
  a198ad:	62 e1 fd 48 14 74 24 	vunpcklpd zmm22,zmm0,ZMMWORD PTR [rsp+0x9c0]
  a198b4:	27 
  a198b5:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x3c0]
  a198bc:	0f 
  a198bd:	62 f1 fd 48 14 7c 24 	vunpcklpd zmm7,zmm0,ZMMWORD PTR [rsp+0x800]
  a198c4:	20 
  a198c5:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x7c0]
  a198cc:	1f 
  a198cd:	62 f1 fd 48 14 d4    	vunpcklpd zmm2,zmm0,zmm4
  a198d3:	62 f1 7c 48 28 c7    	vmovaps zmm0,zmm7
  a198d9:	62 f2 75 48 7f fa    	vpermt2ps zmm7,zmm1,zmm2
  a198df:	62 71 7c 48 28 de    	vmovaps zmm11,zmm6
  a198e5:	62 b2 75 48 7f f6    	vpermt2ps zmm6,zmm1,zmm22
  a198eb:	62 f1 7c 48 10 62 0b 	vmovups zmm4,ZMMWORD PTR [rdx+0x2c0]
  a198f2:	62 71 7c 48 10 7a 0a 	vmovups zmm15,ZMMWORD PTR [rdx+0x280]
  a198f9:	62 c1 4c 48 59 c7    	vmulps zmm16,zmm6,zmm15
  a198ff:	62 e2 45 48 b8 c4    	vfmadd231ps zmm16,zmm7,zmm4
  a19905:	62 e1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm16
  a1990c:	02 
  a1990d:	62 d1 44 48 59 ff    	vmulps zmm7,zmm7,zmm15
  a19913:	62 f2 5d 48 bc fe    	vfnmadd231ps zmm7,zmm4,zmm6
  a19919:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm7
  a19920:	01 
  a19921:	62 72 75 48 7f 4c 24 	vpermt2ps zmm9,zmm1,ZMMWORD PTR [rsp+0x640]
  a19928:	19 
  a19929:	62 e2 75 48 7f 5c 24 	vpermt2ps zmm19,zmm1,ZMMWORD PTR [rsp+0x8c0]
  a19930:	23 
  a19931:	62 f2 75 48 7f 6c 24 	vpermt2ps zmm5,zmm1,ZMMWORD PTR [rsp+0x880]
  a19938:	22 
  a19939:	62 62 75 48 7f 64 24 	vpermt2ps zmm28,zmm1,ZMMWORD PTR [rsp+0x840]
  a19940:	21 
  a19941:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x340]
  a19948:	0d 
  a19949:	62 f2 75 48 7f 64 24 	vpermt2ps zmm4,zmm1,ZMMWORD PTR [rsp+0x500]
  a19950:	14 
  a19951:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x300]
  a19958:	0c 
  a19959:	62 f2 75 48 7f 74 24 	vpermt2ps zmm6,zmm1,ZMMWORD PTR [rsp+0x4c0]
  a19960:	13 
  a19961:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x480]
  a19968:	12 
  a19969:	62 f2 75 48 7f 7c 24 	vpermt2ps zmm7,zmm1,ZMMWORD PTR [rsp+0x440]
  a19970:	11 
  a19971:	62 62 75 48 7f 7c 24 	vpermt2ps zmm31,zmm1,ZMMWORD PTR [rsp+0x400]
  a19978:	10 
  a19979:	62 f1 7c 48 10 4a 07 	vmovups zmm1,ZMMWORD PTR [rdx+0x1c0]
  a19980:	62 f1 7c 48 10 5a 06 	vmovups zmm3,ZMMWORD PTR [rdx+0x180]
  a19987:	62 61 64 40 59 cb    	vmulps zmm25,zmm19,zmm3
  a1998d:	62 62 35 48 bc c9    	vfnmadd231ps zmm25,zmm9,zmm1
  a19993:	62 61 34 48 59 c3    	vmulps zmm24,zmm9,zmm3
  a19999:	62 22 75 48 b8 c3    	vfmadd231ps zmm24,zmm1,zmm19
  a1999f:	62 f1 7c 48 10 4a 17 	vmovups zmm1,ZMMWORD PTR [rdx+0x5c0]
  a199a6:	62 f1 7c 48 10 5a 16 	vmovups zmm3,ZMMWORD PTR [rdx+0x580]
  a199ad:	62 61 1c 40 59 f3    	vmulps zmm30,zmm28,zmm3
  a199b3:	62 62 55 48 bc f1    	vfnmadd231ps zmm30,zmm5,zmm1
  a199b9:	62 e1 54 48 59 e3    	vmulps zmm20,zmm5,zmm3
  a199bf:	62 82 75 48 b8 e4    	vfmadd231ps zmm20,zmm1,zmm28
  a199c5:	62 f1 7c 48 10 4a 1f 	vmovups zmm1,ZMMWORD PTR [rdx+0x7c0]
  a199cc:	62 f1 7c 48 10 5a 1e 	vmovups zmm3,ZMMWORD PTR [rdx+0x780]
  a199d3:	62 71 04 40 59 eb    	vmulps zmm13,zmm31,zmm3
  a199d9:	62 72 45 48 b8 e9    	vfmadd231ps zmm13,zmm7,zmm1
  a199df:	62 71 44 48 59 fb    	vmulps zmm15,zmm7,zmm3
  a199e5:	62 12 75 48 bc ff    	vfnmadd231ps zmm15,zmm1,zmm31
  a199eb:	62 f1 7c 48 10 4a 0f 	vmovups zmm1,ZMMWORD PTR [rdx+0x3c0]
  a199f2:	62 f1 7c 48 10 5a 0e 	vmovups zmm3,ZMMWORD PTR [rdx+0x380]
  a199f9:	62 71 4c 48 59 c3    	vmulps zmm8,zmm6,zmm3
  a199ff:	62 72 5d 48 b8 c1    	vfmadd231ps zmm8,zmm4,zmm1
  a19a05:	62 e1 5c 48 59 c3    	vmulps zmm16,zmm4,zmm3
  a19a0b:	62 e2 75 48 bc c6    	vfnmadd231ps zmm16,zmm1,zmm6
  a19a11:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x6c0]
  a19a18:	1b 
  a19a19:	62 f2 55 40 7f 7c 24 	vpermt2ps zmm7,zmm21,ZMMWORD PTR [rsp+0x680]
  a19a20:	1a 
  a19a21:	62 22 55 40 7f d7    	vpermt2ps zmm26,zmm21,zmm23
  a19a27:	62 52 55 40 7f e2    	vpermt2ps zmm12,zmm21,zmm10
  a19a2d:	62 82 55 40 7f cd    	vpermt2ps zmm17,zmm21,zmm29
  a19a33:	62 32 55 40 7f f2    	vpermt2ps zmm14,zmm21,zmm18
  a19a39:	62 32 55 40 7f de    	vpermt2ps zmm11,zmm21,zmm22
  a19a3f:	62 f2 55 40 7f c2    	vpermt2ps zmm0,zmm21,zmm2
  a19a45:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0xc0]
  a19a4c:	03 
  a19a4d:	62 f2 55 40 7f 4c 24 	vpermt2ps zmm1,zmm21,ZMMWORD PTR [rsp+0x700]
  a19a54:	1c 
  a19a55:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm1
  a19a5c:	03 
  a19a5d:	62 f1 7c 48 10 4a 11 	vmovups zmm1,ZMMWORD PTR [rdx+0x440]
  a19a64:	62 f1 7c 48 10 52 10 	vmovups zmm2,ZMMWORD PTR [rdx+0x400]
  a19a6b:	62 e1 1c 48 59 f2    	vmulps zmm22,zmm12,zmm2
  a19a71:	62 e2 2d 40 b8 f1    	vfmadd231ps zmm22,zmm26,zmm1
  a19a77:	62 e1 2c 40 59 d2    	vmulps zmm18,zmm26,zmm2
  a19a7d:	62 c2 75 48 bc d4    	vfnmadd231ps zmm18,zmm1,zmm12
  a19a83:	62 f1 7c 48 10 52 09 	vmovups zmm2,ZMMWORD PTR [rdx+0x240]
  a19a8a:	62 f1 7c 48 10 4a 08 	vmovups zmm1,ZMMWORD PTR [rdx+0x200]
  a19a91:	62 e1 7c 48 59 e9    	vmulps zmm21,zmm0,zmm1
  a19a97:	62 e2 25 48 bc ea    	vfnmadd231ps zmm21,zmm11,zmm2
  a19a9d:	62 f1 24 48 59 d9    	vmulps zmm3,zmm11,zmm1
  a19aa3:	62 f2 6d 48 b8 d8    	vfmadd231ps zmm3,zmm2,zmm0
  a19aa9:	62 f1 7c 48 10 52 19 	vmovups zmm2,ZMMWORD PTR [rdx+0x640]
  a19ab0:	62 f1 7c 48 10 42 18 	vmovups zmm0,ZMMWORD PTR [rdx+0x600]
  a19ab7:	62 e1 0c 48 59 d8    	vmulps zmm19,zmm14,zmm0
  a19abd:	62 e2 75 40 bc da    	vfnmadd231ps zmm19,zmm17,zmm2
  a19ac3:	62 f1 74 40 59 c8    	vmulps zmm1,zmm17,zmm0
  a19ac9:	62 d2 6d 48 b8 ce    	vfmadd231ps zmm1,zmm2,zmm14
  a19acf:	62 61 7c 48 28 5c 24 	vmovaps zmm27,ZMMWORD PTR [rsp+0x740]
  a19ad6:	1d 
  a19ad7:	62 f1 24 40 5c 54 24 	vsubps zmm2,zmm27,ZMMWORD PTR [rsp+0x1c0]
  a19ade:	07 
  a19adf:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x80]
  a19ae6:	02 
  a19ae7:	62 f1 7c 48 5c 64 24 	vsubps zmm4,zmm0,ZMMWORD PTR [rsp+0x100]
  a19aee:	04 
  a19aef:	62 71 6c 48 5c cc    	vsubps zmm9,zmm2,zmm4
  a19af5:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x280]
  a19afc:	0a 
  a19afd:	62 71 7c 48 5c 54 24 	vsubps zmm10,zmm0,ZMMWORD PTR [rsp+0x180]
  a19b04:	06 
  a19b05:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x200]
  a19b0c:	08 
  a19b0d:	62 61 7c 48 5c 54 24 	vsubps zmm26,zmm0,ZMMWORD PTR [rsp+0x40]
  a19b14:	01 
  a19b15:	62 72 7d 48 18 35 e1 	vbroadcastss zmm14,DWORD PTR [rip+0xffffffffff65bbe1]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a19b1c:	bb 65 ff 
  a19b1f:	62 11 2c 48 5c e2    	vsubps zmm12,zmm10,zmm26
  a19b25:	62 d1 1c 48 59 c6    	vmulps zmm0,zmm12,zmm14
  a19b2b:	62 72 7d 48 18 1d 2f 	vbroadcastss zmm11,DWORD PTR [rip+0xffffffffff65bb2f]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a19b32:	bb 65 ff 
  a19b35:	62 d2 35 48 b8 c3    	vfmadd231ps zmm0,zmm9,zmm11
  a19b3b:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm0
  a19b42:	0d 
  a19b43:	62 d1 1c 48 59 c3    	vmulps zmm0,zmm12,zmm11
  a19b49:	62 d2 0d 48 bc c1    	vfnmadd231ps zmm0,zmm14,zmm9
  a19b4f:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm0
  a19b56:	14 
  a19b57:	62 81 34 40 5c fe    	vsubps zmm23,zmm25,zmm30
  a19b5d:	62 41 3c 48 5c e5    	vsubps zmm28,zmm8,zmm13
  a19b63:	62 11 44 40 5c cc    	vsubps zmm9,zmm23,zmm28
  a19b69:	62 21 3c 40 5c ec    	vsubps zmm29,zmm24,zmm20
  a19b6f:	62 21 04 48 5c f8    	vsubps zmm31,zmm15,zmm16
  a19b75:	62 91 14 40 5c c7    	vsubps zmm0,zmm29,zmm31
  a19b7b:	62 d1 7c 48 59 eb    	vmulps zmm5,zmm0,zmm11
  a19b81:	62 d2 35 48 b8 ee    	vfmadd231ps zmm5,zmm9,zmm14
  a19b87:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm5
  a19b8e:	0c 
  a19b8f:	62 d1 34 48 59 eb    	vmulps zmm5,zmm9,zmm11
  a19b95:	62 f2 0d 48 bc e8    	vfnmadd231ps zmm5,zmm14,zmm0
  a19b9b:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm5
  a19ba2:	13 
  a19ba3:	62 91 44 40 58 c4    	vaddps zmm0,zmm23,zmm28
  a19ba9:	62 81 14 40 58 ff    	vaddps zmm23,zmm29,zmm31
  a19baf:	62 f1 6c 48 58 e4    	vaddps zmm4,zmm2,zmm4
  a19bb5:	62 11 2c 48 58 d2    	vaddps zmm10,zmm10,zmm26
  a19bbb:	62 d1 2c 48 59 d3    	vmulps zmm2,zmm10,zmm11
  a19bc1:	62 d2 5d 48 b8 d6    	vfmadd231ps zmm2,zmm4,zmm14
  a19bc7:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm2
  a19bce:	12 
  a19bcf:	62 d1 2c 48 59 d6    	vmulps zmm2,zmm10,zmm14
  a19bd5:	62 f2 25 48 bc d4    	vfnmadd231ps zmm2,zmm11,zmm4
  a19bdb:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm2
  a19be2:	10 
  a19be3:	62 d1 44 40 59 d6    	vmulps zmm2,zmm23,zmm14
  a19be9:	62 d2 7d 48 b8 d3    	vfmadd231ps zmm2,zmm0,zmm11
  a19bef:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm2
  a19bf6:	11 
  a19bf7:	62 51 44 40 59 db    	vmulps zmm11,zmm23,zmm11
  a19bfd:	62 52 7d 48 bc de    	vfnmadd231ps zmm11,zmm0,zmm14
  a19c03:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x140]
  a19c0a:	05 
  a19c0b:	62 71 7c 48 28 64 24 	vmovaps zmm12,ZMMWORD PTR [rsp+0x2c0]
  a19c12:	0b 
  a19c13:	62 d1 4c 48 5c c4    	vsubps zmm0,zmm6,zmm12
  a19c19:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x380]
  a19c20:	0e 
  a19c21:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x540]
  a19c28:	15 
  a19c29:	62 51 34 48 5c f2    	vsubps zmm14,zmm9,zmm10
  a19c2f:	62 c1 7c 48 58 fe    	vaddps zmm23,zmm0,zmm14
  a19c35:	62 61 0c 48 5c f8    	vsubps zmm31,zmm14,zmm0
  a19c3b:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x240]
  a19c42:	09 
  a19c43:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x5c0]
  a19c4a:	17 
  a19c4b:	62 71 7c 48 5c f2    	vsubps zmm14,zmm0,zmm2
  a19c51:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x600]
  a19c58:	18 
  a19c59:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x580]
  a19c60:	16 
  a19c61:	62 61 5c 48 5c d5    	vsubps zmm26,zmm4,zmm5
  a19c67:	62 01 0c 48 5c e2    	vsubps zmm28,zmm14,zmm26
  a19c6d:	62 51 2c 40 58 f6    	vaddps zmm14,zmm26,zmm14
  a19c73:	62 71 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm14
  a19c7a:	0f 
  a19c7b:	62 21 44 48 5c d6    	vsubps zmm26,zmm7,zmm22
  a19c81:	62 e1 4c 40 58 f7    	vaddps zmm22,zmm22,zmm7
  a19c87:	62 61 64 48 5c e9    	vsubps zmm29,zmm3,zmm1
  a19c8d:	62 f1 64 48 58 f9    	vaddps zmm7,zmm3,zmm1
  a19c93:	62 e1 5c 48 58 cd    	vaddps zmm17,zmm4,zmm5
  a19c99:	62 51 4c 48 58 e4    	vaddps zmm12,zmm6,zmm12
  a19c9f:	62 b1 3c 40 58 dc    	vaddps zmm3,zmm24,zmm20
  a19ca5:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm3
  a19cac:	05 
  a19cad:	62 51 3c 48 58 f5    	vaddps zmm14,zmm8,zmm13
  a19cb3:	62 11 34 40 58 c6    	vaddps zmm8,zmm25,zmm30
  a19cb9:	62 51 7c 40 58 ef    	vaddps zmm13,zmm16,zmm15
  a19cbf:	62 71 24 40 58 7c 24 	vaddps zmm15,zmm27,ZMMWORD PTR [rsp+0x1c0]
  a19cc6:	07 
  a19cc7:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x40]
  a19cce:	01 
  a19ccf:	62 e1 74 48 58 44 24 	vaddps zmm16,zmm1,ZMMWORD PTR [rsp+0x200]
  a19cd6:	08 
  a19cd7:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x180]
  a19cde:	06 
  a19cdf:	62 e1 74 48 58 64 24 	vaddps zmm20,zmm1,ZMMWORD PTR [rsp+0x280]
  a19ce6:	0a 
  a19ce7:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x80]
  a19cee:	02 
  a19cef:	62 61 74 48 58 44 24 	vaddps zmm24,zmm1,ZMMWORD PTR [rsp+0x100]
  a19cf6:	04 
  a19cf7:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0xc0]
  a19cfe:	03 
  a19cff:	62 21 74 48 5c ca    	vsubps zmm25,zmm1,zmm18
  a19d05:	62 a1 74 48 58 d2    	vaddps zmm18,zmm1,zmm18
  a19d0b:	62 21 64 40 5c dd    	vsubps zmm27,zmm19,zmm21
  a19d11:	62 a1 54 40 58 db    	vaddps zmm19,zmm21,zmm19
  a19d17:	62 c1 34 48 58 ea    	vaddps zmm21,zmm9,zmm10
  a19d1d:	62 61 7c 48 58 f2    	vaddps zmm30,zmm0,zmm2
  a19d23:	62 b1 04 48 5c c8    	vsubps zmm1,zmm15,zmm16
  a19d29:	62 91 5c 40 5c c0    	vsubps zmm0,zmm20,zmm24
  a19d2f:	62 f1 74 48 58 f0    	vaddps zmm6,zmm1,zmm0
  a19d35:	62 f1 7c 48 5c e9    	vsubps zmm5,zmm0,zmm1
  a19d3b:	62 d1 64 48 5c ce    	vsubps zmm1,zmm3,zmm14
  a19d41:	62 d1 3c 48 5c c5    	vsubps zmm0,zmm8,zmm13
  a19d47:	62 f1 74 48 5c d8    	vsubps zmm3,zmm1,zmm0
  a19d4d:	62 f1 7c 48 58 e1    	vaddps zmm4,zmm0,zmm1
  a19d53:	62 f2 7d 48 18 0d 3f 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff65b63f]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a19d5a:	b6 65 ff 
  a19d5d:	62 61 1c 40 59 e1    	vmulps zmm28,zmm28,zmm1
  a19d63:	62 e1 44 40 59 f9    	vmulps zmm23,zmm23,zmm1
  a19d69:	62 f1 04 40 59 d1    	vmulps zmm2,zmm31,zmm1
  a19d6f:	62 f1 74 48 59 44 24 	vmulps zmm0,zmm1,ZMMWORD PTR [rsp+0x3c0]
  a19d76:	0f 
  a19d77:	62 71 64 48 59 d1    	vmulps zmm10,zmm3,zmm1
  a19d7d:	62 f1 4c 48 59 d9    	vmulps zmm3,zmm6,zmm1
  a19d83:	62 f1 54 48 59 e9    	vmulps zmm5,zmm5,zmm1
  a19d89:	62 f1 5c 48 59 c9    	vmulps zmm1,zmm4,zmm1
  a19d8f:	62 91 2c 40 5c e3    	vsubps zmm4,zmm26,zmm27
  a19d95:	62 01 24 40 58 fa    	vaddps zmm31,zmm27,zmm26
  a19d9b:	62 61 6c 48 58 d8    	vaddps zmm27,zmm2,zmm0
  a19da1:	62 f1 6c 48 5c c0    	vsubps zmm0,zmm2,zmm0
  a19da7:	62 91 34 40 5c d5    	vsubps zmm2,zmm25,zmm29
  a19dad:	62 01 34 40 58 cd    	vaddps zmm25,zmm25,zmm29
  a19db3:	62 21 1c 40 5c ef    	vsubps zmm29,zmm28,zmm23
  a19db9:	62 81 44 40 58 fc    	vaddps zmm23,zmm23,zmm28
  a19dbf:	62 61 4c 40 5c e7    	vsubps zmm28,zmm22,zmm7
  a19dc5:	62 31 44 48 58 ce    	vaddps zmm9,zmm7,zmm22
  a19dcb:	62 81 54 40 5c f6    	vsubps zmm22,zmm21,zmm30
  a19dd1:	62 81 54 40 58 ee    	vaddps zmm21,zmm21,zmm30
  a19dd7:	62 d1 3c 48 58 fd    	vaddps zmm7,zmm8,zmm13
  a19ddd:	62 21 04 48 58 f0    	vaddps zmm30,zmm15,zmm16
  a19de3:	62 31 6c 40 5c fb    	vsubps zmm15,zmm18,zmm19
  a19de9:	62 a1 6c 40 58 c3    	vaddps zmm16,zmm18,zmm19
  a19def:	62 c1 74 40 5c d4    	vsubps zmm18,zmm17,zmm12
  a19df5:	62 31 1c 48 58 e1    	vaddps zmm12,zmm12,zmm17
  a19dfb:	62 81 5c 40 58 d8    	vaddps zmm19,zmm20,zmm24
  a19e01:	62 71 0c 48 58 74 24 	vaddps zmm14,zmm14,ZMMWORD PTR [rsp+0x140]
  a19e08:	05 
  a19e09:	62 81 5c 48 5c cd    	vsubps zmm17,zmm4,zmm29
  a19e0f:	62 f1 14 40 58 e4    	vaddps zmm4,zmm29,zmm4
  a19e15:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm4
  a19e1c:	02 
  a19e1d:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x500]
  a19e24:	14 
  a19e25:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x4c0]
  a19e2c:	13 
  a19e2d:	62 61 5c 48 5c d6    	vsubps zmm26,zmm4,zmm6
  a19e33:	62 f1 5c 48 58 e6    	vaddps zmm4,zmm4,zmm6
  a19e39:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm4
  a19e40:	01 
  a19e41:	62 81 6c 48 5c e3    	vsubps zmm20,zmm2,zmm27
  a19e47:	62 91 6c 48 58 d3    	vaddps zmm2,zmm2,zmm27
  a19e4d:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm2
  a19e54:	07 
  a19e55:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x340]
  a19e5c:	0d 
  a19e5d:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x300]
  a19e64:	0c 
  a19e65:	62 61 6c 48 58 c4    	vaddps zmm24,zmm2,zmm4
  a19e6b:	62 f1 6c 48 5c d4    	vsubps zmm2,zmm2,zmm4
  a19e71:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm2
  a19e78:	06 
  a19e79:	62 21 1c 40 5c da    	vsubps zmm27,zmm28,zmm18
  a19e7f:	62 91 6c 40 58 d4    	vaddps zmm2,zmm18,zmm28
  a19e85:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm2
  a19e8c:	09 
  a19e8d:	62 61 54 48 58 e1    	vaddps zmm28,zmm5,zmm1
  a19e93:	62 61 54 48 5c e9    	vsubps zmm29,zmm5,zmm1
  a19e99:	62 b1 04 48 5c f6    	vsubps zmm6,zmm15,zmm22
  a19e9f:	62 a1 04 48 58 d6    	vaddps zmm18,zmm15,zmm22
  a19ea5:	62 71 2c 48 5c fb    	vsubps zmm15,zmm10,zmm3
  a19eab:	62 51 64 48 58 ea    	vaddps zmm13,zmm3,zmm10
  a19eb1:	62 f1 04 40 5c e8    	vsubps zmm5,zmm31,zmm0
  a19eb7:	62 11 7c 48 58 d7    	vaddps zmm10,zmm0,zmm31
  a19ebd:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x400]
  a19ec4:	10 
  a19ec5:	62 c1 7c 48 5c f3    	vsubps zmm22,zmm0,zmm11
  a19ecb:	62 51 7c 48 58 db    	vaddps zmm11,zmm0,zmm11
  a19ed1:	62 b1 34 40 5c e7    	vsubps zmm4,zmm25,zmm23
  a19ed7:	62 a1 34 40 58 ff    	vaddps zmm23,zmm25,zmm23
  a19edd:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x480]
  a19ee4:	12 
  a19ee5:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x440]
  a19eec:	11 
  a19eed:	62 61 74 48 5c c8    	vsubps zmm25,zmm1,zmm0
  a19ef3:	62 71 7c 48 58 c1    	vaddps zmm8,zmm0,zmm1
  a19ef9:	62 b1 34 48 5c dd    	vsubps zmm3,zmm9,zmm21
  a19eff:	62 51 54 40 58 c9    	vaddps zmm9,zmm21,zmm9
  a19f05:	62 d1 64 40 5c d6    	vsubps zmm2,zmm19,zmm14
  a19f0b:	62 c1 64 40 58 ee    	vaddps zmm21,zmm19,zmm14
  a19f11:	62 d1 7c 40 5c cc    	vsubps zmm1,zmm16,zmm12
  a19f17:	62 c1 7c 40 58 c4    	vaddps zmm16,zmm16,zmm12
  a19f1d:	62 91 44 48 5c c6    	vsubps zmm0,zmm7,zmm30
  a19f23:	62 f1 0c 40 58 ff    	vaddps zmm7,zmm30,zmm7
  a19f29:	62 11 74 40 58 e0    	vaddps zmm12,zmm17,zmm24
  a19f2f:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm12
  a19f36:	04 
  a19f37:	62 01 74 40 5c f8    	vsubps zmm31,zmm17,zmm24
  a19f3d:	62 11 5c 40 5c e2    	vsubps zmm12,zmm20,zmm26
  a19f43:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm12
  a19f4a:	08 
  a19f4b:	62 11 5c 40 58 e2    	vaddps zmm12,zmm20,zmm26
  a19f51:	62 51 24 40 5c f7    	vsubps zmm14,zmm27,zmm15
  a19f57:	62 71 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm14
  a19f5e:	03 
  a19f5f:	62 41 24 40 58 d7    	vaddps zmm26,zmm27,zmm15
  a19f65:	62 11 4c 48 5c f4    	vsubps zmm14,zmm6,zmm28
  a19f6b:	62 71 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm14
  a19f72:	0a 
  a19f73:	62 11 4c 48 58 f4    	vaddps zmm14,zmm6,zmm28
  a19f79:	62 01 54 48 5c d9    	vsubps zmm27,zmm5,zmm25
  a19f7f:	62 81 54 48 58 d9    	vaddps zmm19,zmm5,zmm25
  a19f85:	62 b1 5c 48 5c f6    	vsubps zmm6,zmm4,zmm22
  a19f8b:	62 a1 5c 48 58 e6    	vaddps zmm20,zmm4,zmm22
  a19f91:	62 61 64 48 5c c8    	vsubps zmm25,zmm3,zmm0
  a19f97:	62 e1 64 48 58 c8    	vaddps zmm17,zmm3,zmm0
  a19f9d:	62 61 74 48 5c e2    	vsubps zmm28,zmm1,zmm2
  a19fa3:	62 61 74 48 58 c2    	vaddps zmm24,zmm1,zmm2
  a19fa9:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x80]
  a19fb0:	02 
  a19fb1:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x40]
  a19fb8:	01 
  a19fb9:	62 e1 7c 48 5c f1    	vsubps zmm22,zmm0,zmm1
  a19fbf:	62 f1 7c 48 58 d9    	vaddps zmm3,zmm0,zmm1
  a19fc5:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x1c0]
  a19fcc:	07 
  a19fcd:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x180]
  a19fd4:	06 
  a19fd5:	62 f1 7c 48 5c d1    	vsubps zmm2,zmm0,zmm1
  a19fdb:	62 f1 7c 48 58 c9    	vaddps zmm1,zmm0,zmm1
  a19fe1:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x240]
  a19fe8:	09 
  a19fe9:	62 01 7c 48 5c f5    	vsubps zmm30,zmm0,zmm29
  a19fef:	62 11 7c 48 58 fd    	vaddps zmm15,zmm0,zmm29
  a19ff5:	62 41 6c 40 5c ed    	vsubps zmm29,zmm18,zmm13
  a19ffb:	62 d1 6c 40 58 c5    	vaddps zmm0,zmm18,zmm13
  a1a001:	62 d1 2c 48 5c e3    	vsubps zmm4,zmm10,zmm11
  a1a007:	62 51 2c 48 58 eb    	vaddps zmm13,zmm10,zmm11
  a1a00d:	62 51 44 40 5c d0    	vsubps zmm10,zmm23,zmm8
  a1a013:	62 51 44 40 58 c0    	vaddps zmm8,zmm23,zmm8
  a1a019:	62 31 34 48 5c dd    	vsubps zmm11,zmm9,zmm21
  a1a01f:	62 a1 34 48 58 d5    	vaddps zmm18,zmm9,zmm21
  a1a025:	62 71 7c 40 5c cf    	vsubps zmm9,zmm16,zmm7
  a1a02b:	62 f1 7c 40 58 ff    	vaddps zmm7,zmm16,zmm7
  a1a031:	62 f1 7c 48 28 2d 85 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff675785]        # 8f7c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1cc70>
  a1a038:	57 67 ff 
  a1a03b:	62 a1 7c 48 28 c2    	vmovaps zmm16,zmm18
  a1a041:	62 e2 55 48 7f c7    	vpermt2ps zmm16,zmm5,zmm7
  a1a047:	62 e1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm16
  a1a04e:	01 
  a1a04f:	62 e1 6c 40 15 c7    	vunpckhps zmm16,zmm18,zmm7
  a1a055:	62 e1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm16
  a1a05c:	02 
  a1a05d:	62 e1 6c 40 14 c7    	vunpcklps zmm16,zmm18,zmm7
  a1a063:	62 e1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm16
  a1a06a:	07 
  a1a06b:	62 e1 7c 28 28 3d 8b 	vmovaps ymm23,YMMWORD PTR [rip+0xffffffffff67578b]        # 8f800 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1ccb0>
  a1a072:	57 67 ff 
  a1a075:	62 e2 45 40 7f d7    	vpermt2ps zmm18,zmm23,zmm7
  a1a07b:	62 d1 7c 48 28 fd    	vmovaps zmm7,zmm13
  a1a081:	62 d2 55 48 7f f8    	vpermt2ps zmm7,zmm5,zmm8
  a1a087:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm7
  a1a08e:	09 
  a1a08f:	62 d1 14 48 15 f8    	vunpckhps zmm7,zmm13,zmm8
  a1a095:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm7
  a1a09c:	06 
  a1a09d:	62 d1 14 48 14 f8    	vunpcklps zmm7,zmm13,zmm8
  a1a0a3:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm7
  a1a0aa:	05 
  a1a0ab:	62 52 45 40 7f e8    	vpermt2ps zmm13,zmm23,zmm8
  a1a0b1:	62 d1 7c 48 28 ff    	vmovaps zmm7,zmm15
  a1a0b7:	62 f2 55 48 7f f8    	vpermt2ps zmm7,zmm5,zmm0
  a1a0bd:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm7
  a1a0c4:	0b 
  a1a0c5:	62 f1 04 48 15 f8    	vunpckhps zmm7,zmm15,zmm0
  a1a0cb:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm7
  a1a0d2:	0e 
  a1a0d3:	62 f1 04 48 14 f8    	vunpcklps zmm7,zmm15,zmm0
  a1a0d9:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm7
  a1a0e0:	18 
  a1a0e1:	62 72 45 40 7f f8    	vpermt2ps zmm15,zmm23,zmm0
  a1a0e7:	62 f1 7c 48 28 fb    	vmovaps zmm7,zmm3
  a1a0ed:	62 f2 55 48 7f f9    	vpermt2ps zmm7,zmm5,zmm1
  a1a0f3:	62 f1 64 48 15 c1    	vunpckhps zmm0,zmm3,zmm1
  a1a0f9:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm0
  a1a100:	17 
  a1a101:	62 f1 64 48 14 c1    	vunpcklps zmm0,zmm3,zmm1
  a1a107:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm0
  a1a10e:	16 
  a1a10f:	62 f2 45 40 7f d9    	vpermt2ps zmm3,zmm23,zmm1
  a1a115:	62 31 7c 48 28 c1    	vmovaps zmm8,zmm17
  a1a11b:	62 12 55 48 7f c0    	vpermt2ps zmm8,zmm5,zmm24
  a1a121:	62 91 74 40 15 c0    	vunpckhps zmm0,zmm17,zmm24
  a1a127:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm0
  a1a12e:	15 
  a1a12f:	62 91 74 40 14 c0    	vunpcklps zmm0,zmm17,zmm24
  a1a135:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm0
  a1a13c:	0d 
  a1a13d:	62 82 45 40 7f c8    	vpermt2ps zmm17,zmm23,zmm24
  a1a143:	62 21 7c 48 28 c3    	vmovaps zmm24,zmm19
  a1a149:	62 22 55 48 7f c4    	vpermt2ps zmm24,zmm5,zmm20
  a1a14f:	62 b1 64 40 15 c4    	vunpckhps zmm0,zmm19,zmm20
  a1a155:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm0
  a1a15c:	14 
  a1a15d:	62 b1 64 40 14 c4    	vunpcklps zmm0,zmm19,zmm20
  a1a163:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm0
  a1a16a:	0c 
  a1a16b:	62 a2 45 40 7f dc    	vpermt2ps zmm19,zmm23,zmm20
  a1a171:	62 81 7c 48 28 e2    	vmovaps zmm20,zmm26
  a1a177:	62 c2 55 48 7f e6    	vpermt2ps zmm20,zmm5,zmm14
  a1a17d:	62 d1 2c 40 15 c6    	vunpckhps zmm0,zmm26,zmm14
  a1a183:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm0
  a1a18a:	13 
  a1a18b:	62 d1 2c 40 14 c6    	vunpcklps zmm0,zmm26,zmm14
  a1a191:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm0
  a1a198:	12 
  a1a199:	62 42 45 40 7f d6    	vpermt2ps zmm26,zmm23,zmm14
  a1a19f:	62 11 7c 48 28 f7    	vmovaps zmm14,zmm31
  a1a1a5:	62 52 55 48 7f f4    	vpermt2ps zmm14,zmm5,zmm12
  a1a1ab:	62 d1 04 40 15 c4    	vunpckhps zmm0,zmm31,zmm12
  a1a1b1:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm0
  a1a1b8:	11 
  a1a1b9:	62 d1 04 40 14 c4    	vunpcklps zmm0,zmm31,zmm12
  a1a1bf:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm0
  a1a1c6:	10 
  a1a1c7:	62 42 45 40 7f fc    	vpermt2ps zmm31,zmm23,zmm12
  a1a1cd:	62 51 7c 48 28 e3    	vmovaps zmm12,zmm11
  a1a1d3:	62 52 55 48 7f e1    	vpermt2ps zmm12,zmm5,zmm9
  a1a1d9:	62 d1 24 48 15 c1    	vunpckhps zmm0,zmm11,zmm9
  a1a1df:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm0
  a1a1e6:	0f 
  a1a1e7:	62 d1 24 48 14 c1    	vunpcklps zmm0,zmm11,zmm9
  a1a1ed:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x800],zmm0
  a1a1f4:	20 
  a1a1f5:	62 52 45 40 7f d9    	vpermt2ps zmm11,zmm23,zmm9
  a1a1fb:	62 71 7c 48 28 cc    	vmovaps zmm9,zmm4
  a1a201:	62 52 55 48 7f ca    	vpermt2ps zmm9,zmm5,zmm10
  a1a207:	62 d1 5c 48 15 c2    	vunpckhps zmm0,zmm4,zmm10
  a1a20d:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x7c0],zmm0
  a1a214:	1f 
  a1a215:	62 d1 5c 48 14 c2    	vunpcklps zmm0,zmm4,zmm10
  a1a21b:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x780],zmm0
  a1a222:	1e 
  a1a223:	62 d2 45 40 7f e2    	vpermt2ps zmm4,zmm23,zmm10
  a1a229:	62 91 7c 48 28 c6    	vmovaps zmm0,zmm30
  a1a22f:	62 92 55 48 7f c5    	vpermt2ps zmm0,zmm5,zmm29
  a1a235:	62 91 0c 40 15 cd    	vunpckhps zmm1,zmm30,zmm29
  a1a23b:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xa00],zmm1
  a1a242:	28 
  a1a243:	62 91 0c 40 14 cd    	vunpcklps zmm1,zmm30,zmm29
  a1a249:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x9c0],zmm1
  a1a250:	27 
  a1a251:	62 02 45 40 7f f5    	vpermt2ps zmm30,zmm23,zmm29
  a1a257:	62 b1 7c 48 28 ce    	vmovaps zmm1,zmm22
  a1a25d:	62 f2 55 48 7f ca    	vpermt2ps zmm1,zmm5,zmm2
  a1a263:	62 71 4c 40 15 d2    	vunpckhps zmm10,zmm22,zmm2
  a1a269:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x740],zmm10
  a1a270:	1d 
  a1a271:	62 71 4c 40 14 d2    	vunpcklps zmm10,zmm22,zmm2
  a1a277:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x700],zmm10
  a1a27e:	1c 
  a1a27f:	62 e2 45 40 7f f2    	vpermt2ps zmm22,zmm23,zmm2
  a1a285:	62 91 7c 48 28 d1    	vmovaps zmm2,zmm25
  a1a28b:	62 92 55 48 7f d4    	vpermt2ps zmm2,zmm5,zmm28
  a1a291:	62 11 34 40 15 d4    	vunpckhps zmm10,zmm25,zmm28
  a1a297:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x980],zmm10
  a1a29e:	26 
  a1a29f:	62 11 34 40 14 d4    	vunpcklps zmm10,zmm25,zmm28
  a1a2a5:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x940],zmm10
  a1a2ac:	25 
  a1a2ad:	62 02 45 40 7f cc    	vpermt2ps zmm25,zmm23,zmm28
  a1a2b3:	62 01 7c 48 28 eb    	vmovaps zmm29,zmm27
  a1a2b9:	62 62 55 48 7f ee    	vpermt2ps zmm29,zmm5,zmm6
  a1a2bf:	62 71 24 40 15 d6    	vunpckhps zmm10,zmm27,zmm6
  a1a2c5:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x900],zmm10
  a1a2cc:	24 
  a1a2cd:	62 71 24 40 14 d6    	vunpcklps zmm10,zmm27,zmm6
  a1a2d3:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x6c0],zmm10
  a1a2da:	1b 
  a1a2db:	62 62 45 40 7f de    	vpermt2ps zmm27,zmm23,zmm6
  a1a2e1:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0xc0]
  a1a2e8:	03 
  a1a2e9:	62 e1 7c 48 28 ee    	vmovaps zmm21,zmm6
  a1a2ef:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x280]
  a1a2f6:	0a 
  a1a2f7:	62 c2 55 48 7f ea    	vpermt2ps zmm21,zmm5,zmm10
  a1a2fd:	62 c1 4c 48 15 c2    	vunpckhps zmm16,zmm6,zmm10
  a1a303:	62 e1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm16
  a1a30a:	1a 
  a1a30b:	62 c1 4c 48 14 c2    	vunpcklps zmm16,zmm6,zmm10
  a1a311:	62 e1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm16
  a1a318:	19 
  a1a319:	62 d2 45 40 7f f2    	vpermt2ps zmm6,zmm23,zmm10
  a1a31f:	62 61 7c 48 28 e6    	vmovaps zmm28,zmm6
  a1a325:	62 e1 7c 48 28 44 24 	vmovaps zmm16,ZMMWORD PTR [rsp+0x100]
  a1a32c:	04 
  a1a32d:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x200]
  a1a334:	08 
  a1a335:	62 d2 7d 40 77 ea    	vpermi2ps zmm5,zmm16,zmm10
  a1a33b:	62 d1 7c 40 15 f2    	vunpckhps zmm6,zmm16,zmm10
  a1a341:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm6
  a1a348:	03 
  a1a349:	62 d1 7c 40 14 f2    	vunpcklps zmm6,zmm16,zmm10
  a1a34f:	62 c2 45 40 7f c2    	vpermt2ps zmm16,zmm23,zmm10
  a1a355:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x40]
  a1a35c:	01 
  a1a35d:	62 71 7c 48 11 16    	vmovups ZMMWORD PTR [rsi],zmm10
  a1a363:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x1c0]
  a1a36a:	07 
  a1a36b:	62 73 7d 48 19 56 06 	vextractf32x4 XMMWORD PTR [rsi+0x60],zmm10,0x3
  a1a372:	03 
  a1a373:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x80]
  a1a37a:	02 
  a1a37b:	62 53 7d 48 19 d2 03 	vextractf32x4 xmm10,zmm10,0x3
  a1a382:	c5 78 13 56 70       	vmovlps QWORD PTR [rsi+0x70],xmm10
  a1a387:	62 e1 7c 28 11 56 02 	vmovups YMMWORD PTR [rsi+0x40],ymm18
  a1a38e:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x240]
  a1a395:	09 
  a1a396:	62 71 7c 48 11 96 78 	vmovups ZMMWORD PTR [rsi+0x78],zmm10
  a1a39d:	00 00 00 
  a1a3a0:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x140]
  a1a3a7:	05 
  a1a3a8:	62 73 7d 48 19 96 d8 	vextractf32x4 XMMWORD PTR [rsi+0xd8],zmm10,0x3
  a1a3af:	00 00 00 03 
  a1a3b3:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x180]
  a1a3ba:	06 
  a1a3bb:	62 53 7d 48 19 d2 03 	vextractf32x4 xmm10,zmm10,0x3
  a1a3c2:	c5 78 13 96 e8 00 00 	vmovlps QWORD PTR [rsi+0xe8],xmm10
  a1a3c9:	00 
  a1a3ca:	c5 7c 11 ae b8 00 00 	vmovups YMMWORD PTR [rsi+0xb8],ymm13
  a1a3d1:	00 
  a1a3d2:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x2c0]
  a1a3d9:	0b 
  a1a3da:	62 71 7c 48 11 96 f0 	vmovups ZMMWORD PTR [rsi+0xf0],zmm10
  a1a3e1:	00 00 00 
  a1a3e4:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x600]
  a1a3eb:	18 
  a1a3ec:	62 73 7d 48 19 56 15 	vextractf32x4 XMMWORD PTR [rsi+0x150],zmm10,0x3
  a1a3f3:	03 
  a1a3f4:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x380]
  a1a3fb:	0e 
  a1a3fc:	62 53 7d 48 19 d2 03 	vextractf32x4 xmm10,zmm10,0x3
  a1a403:	c5 78 13 96 60 01 00 	vmovlps QWORD PTR [rsi+0x160],xmm10
  a1a40a:	00 
  a1a40b:	c5 7c 11 be 30 01 00 	vmovups YMMWORD PTR [rsi+0x130],ymm15
  a1a412:	00 
  a1a413:	62 f1 7c 48 11 be 68 	vmovups ZMMWORD PTR [rsi+0x168],zmm7
  a1a41a:	01 00 00 
  a1a41d:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x580]
  a1a424:	16 
  a1a425:	62 f3 7d 48 19 be c8 	vextractf32x4 XMMWORD PTR [rsi+0x1c8],zmm7,0x3
  a1a42c:	01 00 00 03 
  a1a430:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x5c0]
  a1a437:	17 
  a1a438:	62 f3 7d 48 19 ff 03 	vextractf32x4 xmm7,zmm7,0x3
  a1a43f:	c5 f8 13 be d8 01 00 	vmovlps QWORD PTR [rsi+0x1d8],xmm7
  a1a446:	00 
  a1a447:	c5 fc 11 9e a8 01 00 	vmovups YMMWORD PTR [rsi+0x1a8],ymm3
  a1a44e:	00 
  a1a44f:	62 71 7c 48 11 86 e0 	vmovups ZMMWORD PTR [rsi+0x1e0],zmm8
  a1a456:	01 00 00 
  a1a459:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x340]
  a1a460:	0d 
  a1a461:	62 f3 7d 48 19 5e 24 	vextractf32x4 XMMWORD PTR [rsi+0x240],zmm3,0x3
  a1a468:	03 
  a1a469:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x540]
  a1a470:	15 
  a1a471:	62 f3 7d 48 19 db 03 	vextractf32x4 xmm3,zmm3,0x3
  a1a478:	c5 f8 13 9e 50 02 00 	vmovlps QWORD PTR [rsi+0x250],xmm3
  a1a47f:	00 
  a1a480:	62 e1 7c 28 11 4e 11 	vmovups YMMWORD PTR [rsi+0x220],ymm17
  a1a487:	62 61 7c 48 11 86 58 	vmovups ZMMWORD PTR [rsi+0x258],zmm24
  a1a48e:	02 00 00 
  a1a491:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x300]
  a1a498:	0c 
  a1a499:	62 f3 7d 48 19 9e b8 	vextractf32x4 XMMWORD PTR [rsi+0x2b8],zmm3,0x3
  a1a4a0:	02 00 00 03 
  a1a4a4:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x500]
  a1a4ab:	14 
  a1a4ac:	62 f3 7d 48 19 db 03 	vextractf32x4 xmm3,zmm3,0x3
  a1a4b3:	c5 f8 13 9e c8 02 00 	vmovlps QWORD PTR [rsi+0x2c8],xmm3
  a1a4ba:	00 
  a1a4bb:	62 e1 7c 28 11 9e 98 	vmovups YMMWORD PTR [rsi+0x298],ymm19
  a1a4c2:	02 00 00 
  a1a4c5:	62 e1 7c 48 11 a6 d0 	vmovups ZMMWORD PTR [rsi+0x2d0],zmm20
  a1a4cc:	02 00 00 
  a1a4cf:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x480]
  a1a4d6:	12 
  a1a4d7:	62 f3 7d 48 19 5e 33 	vextractf32x4 XMMWORD PTR [rsi+0x330],zmm3,0x3
  a1a4de:	03 
  a1a4df:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x4c0]
  a1a4e6:	13 
  a1a4e7:	62 f3 7d 48 19 db 03 	vextractf32x4 xmm3,zmm3,0x3
  a1a4ee:	c5 f8 13 9e 40 03 00 	vmovlps QWORD PTR [rsi+0x340],xmm3
  a1a4f5:	00 
  a1a4f6:	62 61 7c 28 11 96 10 	vmovups YMMWORD PTR [rsi+0x310],ymm26
  a1a4fd:	03 00 00 
  a1a500:	62 71 7c 48 11 b6 48 	vmovups ZMMWORD PTR [rsi+0x348],zmm14
  a1a507:	03 00 00 
  a1a50a:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x400]
  a1a511:	10 
  a1a512:	62 f3 7d 48 19 9e a8 	vextractf32x4 XMMWORD PTR [rsi+0x3a8],zmm3,0x3
  a1a519:	03 00 00 03 
  a1a51d:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x440]
  a1a524:	11 
  a1a525:	62 f3 7d 48 19 db 03 	vextractf32x4 xmm3,zmm3,0x3
  a1a52c:	c5 f8 13 9e b8 03 00 	vmovlps QWORD PTR [rsi+0x3b8],xmm3
  a1a533:	00 
  a1a534:	62 61 7c 28 11 be 88 	vmovups YMMWORD PTR [rsi+0x388],ymm31
  a1a53b:	03 00 00 
  a1a53e:	62 71 7c 48 11 66 0f 	vmovups ZMMWORD PTR [rsi+0x3c0],zmm12
  a1a545:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x800]
  a1a54c:	20 
  a1a54d:	62 f3 7d 48 19 5e 42 	vextractf32x4 XMMWORD PTR [rsi+0x420],zmm3,0x3
  a1a554:	03 
  a1a555:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x3c0]
  a1a55c:	0f 
  a1a55d:	62 f3 7d 48 19 db 03 	vextractf32x4 xmm3,zmm3,0x3
  a1a564:	c5 f8 13 9e 30 04 00 	vmovlps QWORD PTR [rsi+0x430],xmm3
  a1a56b:	00 
  a1a56c:	c5 7c 11 9e 00 04 00 	vmovups YMMWORD PTR [rsi+0x400],ymm11
  a1a573:	00 
  a1a574:	62 71 7c 48 11 8e 38 	vmovups ZMMWORD PTR [rsi+0x438],zmm9
  a1a57b:	04 00 00 
  a1a57e:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x780]
  a1a585:	1e 
  a1a586:	62 f3 7d 48 19 9e 98 	vextractf32x4 XMMWORD PTR [rsi+0x498],zmm3,0x3
  a1a58d:	04 00 00 03 
  a1a591:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x7c0]
  a1a598:	1f 
  a1a599:	62 f3 7d 48 19 db 03 	vextractf32x4 xmm3,zmm3,0x3
  a1a5a0:	c5 f8 13 9e a8 04 00 	vmovlps QWORD PTR [rsi+0x4a8],xmm3
  a1a5a7:	00 
  a1a5a8:	c5 fc 11 a6 78 04 00 	vmovups YMMWORD PTR [rsi+0x478],ymm4
  a1a5af:	00 
  a1a5b0:	62 f1 7c 48 11 86 b0 	vmovups ZMMWORD PTR [rsi+0x4b0],zmm0
  a1a5b7:	04 00 00 
  a1a5ba:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x9c0]
  a1a5c1:	27 
  a1a5c2:	62 f3 7d 48 19 46 51 	vextractf32x4 XMMWORD PTR [rsi+0x510],zmm0,0x3
  a1a5c9:	03 
  a1a5ca:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0xa00]
  a1a5d1:	28 
  a1a5d2:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a1a5d9:	c5 f8 13 86 20 05 00 	vmovlps QWORD PTR [rsi+0x520],xmm0
  a1a5e0:	00 
  a1a5e1:	62 61 7c 28 11 b6 f0 	vmovups YMMWORD PTR [rsi+0x4f0],ymm30
  a1a5e8:	04 00 00 
  a1a5eb:	62 f1 7c 48 11 8e 28 	vmovups ZMMWORD PTR [rsi+0x528],zmm1
  a1a5f2:	05 00 00 
  a1a5f5:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x700]
  a1a5fc:	1c 
  a1a5fd:	62 f3 7d 48 19 86 88 	vextractf32x4 XMMWORD PTR [rsi+0x588],zmm0,0x3
  a1a604:	05 00 00 03 
  a1a608:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x740]
  a1a60f:	1d 
  a1a610:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a1a617:	c5 f8 13 86 98 05 00 	vmovlps QWORD PTR [rsi+0x598],xmm0
  a1a61e:	00 
  a1a61f:	62 e1 7c 28 11 b6 68 	vmovups YMMWORD PTR [rsi+0x568],ymm22
  a1a626:	05 00 00 
  a1a629:	62 f1 7c 48 11 96 a0 	vmovups ZMMWORD PTR [rsi+0x5a0],zmm2
  a1a630:	05 00 00 
  a1a633:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x940]
  a1a63a:	25 
  a1a63b:	62 f3 7d 48 19 46 60 	vextractf32x4 XMMWORD PTR [rsi+0x600],zmm0,0x3
  a1a642:	03 
  a1a643:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x980]
  a1a64a:	26 
  a1a64b:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a1a652:	c5 f8 13 86 10 06 00 	vmovlps QWORD PTR [rsi+0x610],xmm0
  a1a659:	00 
  a1a65a:	62 61 7c 28 11 4e 2f 	vmovups YMMWORD PTR [rsi+0x5e0],ymm25
  a1a661:	62 61 7c 48 11 ae 18 	vmovups ZMMWORD PTR [rsi+0x618],zmm29
  a1a668:	06 00 00 
  a1a66b:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x6c0]
  a1a672:	1b 
  a1a673:	62 f3 7d 48 19 86 78 	vextractf32x4 XMMWORD PTR [rsi+0x678],zmm0,0x3
  a1a67a:	06 00 00 03 
  a1a67e:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x900]
  a1a685:	24 
  a1a686:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a1a68d:	c5 f8 13 86 88 06 00 	vmovlps QWORD PTR [rsi+0x688],xmm0
  a1a694:	00 
  a1a695:	62 61 7c 28 11 9e 58 	vmovups YMMWORD PTR [rsi+0x658],ymm27
  a1a69c:	06 00 00 
  a1a69f:	62 e1 7c 48 11 ae 90 	vmovups ZMMWORD PTR [rsi+0x690],zmm21
  a1a6a6:	06 00 00 
  a1a6a9:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x640]
  a1a6b0:	19 
  a1a6b1:	62 f3 7d 48 19 46 6f 	vextractf32x4 XMMWORD PTR [rsi+0x6f0],zmm0,0x3
  a1a6b8:	03 
  a1a6b9:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x680]
  a1a6c0:	1a 
  a1a6c1:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a1a6c8:	c5 f8 13 86 00 07 00 	vmovlps QWORD PTR [rsi+0x700],xmm0
  a1a6cf:	00 
  a1a6d0:	62 61 7c 28 11 a6 d0 	vmovups YMMWORD PTR [rsi+0x6d0],ymm28
  a1a6d7:	06 00 00 
  a1a6da:	62 f1 7c 48 11 ae 08 	vmovups ZMMWORD PTR [rsi+0x708],zmm5
  a1a6e1:	07 00 00 
  a1a6e4:	62 f3 7d 48 19 b6 68 	vextractf32x4 XMMWORD PTR [rsi+0x768],zmm6,0x3
  a1a6eb:	07 00 00 03 
  a1a6ef:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0xc0]
  a1a6f6:	03 
  a1a6f7:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a1a6fe:	c5 f8 13 86 78 07 00 	vmovlps QWORD PTR [rsi+0x778],xmm0
  a1a705:	00 
  a1a706:	62 e1 7c 28 11 86 48 	vmovups YMMWORD PTR [rsi+0x748],ymm16
  a1a70d:	07 00 00 
  a1a710:	48 89 ec             	mov    rsp,rbp
  a1a713:	5d                   	pop    rbp
  a1a714:	c5 f8 77             	vzeroupper
  a1a717:	c3                   	ret
