
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000928840 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  928840:	62 f1 fd 48 10 05 1e 	vmovupd zmm0,ZMMWORD PTR [rip+0xffffffffff79e51e]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  928847:	e5 79 ff 
  92884a:	62 f1 fd 48 10 0d 94 	vmovupd zmm1,ZMMWORD PTR [rip+0xffffffffff79e494]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  928851:	e4 79 ff 
  928854:	62 f1 fd 48 10 15 ca 	vmovupd zmm2,ZMMWORD PTR [rip+0xffffffffff79e4ca]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  92885b:	e4 79 ff 
  92885e:	48 69 c2 f0 00 00 00 	imul   rax,rdx,0xf0
  928865:	31 d2                	xor    edx,edx
  928867:	62 f1 fd 48 28 1d 8f 	vmovapd zmm3,ZMMWORD PTR [rip+0xffffffffff758b8f]        # 81400 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xe8b0>
  92886e:	8b 75 ff 
  928871:	c5 d9 57 e4          	vxorpd xmm4,xmm4,xmm4
  928875:	62 f2 fd 48 19 2d d9 	vbroadcastsd zmm5,QWORD PTR [rip+0xffffffffff74c1d9]        # 74a58 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f08>
  92887c:	c1 74 ff 
  92887f:	62 f2 fd 48 19 35 8f 	vbroadcastsd zmm6,QWORD PTR [rip+0xffffffffff74c78f]        # 75018 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x24c8>
  928886:	c7 74 ff 
  928889:	62 f2 fd 48 19 3d 35 	vbroadcastsd zmm7,QWORD PTR [rip+0xffffffffff74bf35]        # 747c8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c78>
  928890:	bf 74 ff 
  928893:	62 72 fd 48 19 05 33 	vbroadcastsd zmm8,QWORD PTR [rip+0xffffffffff74c333]        # 74bd0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2080>
  92889a:	c3 74 ff 
  92889d:	62 e2 fd 48 19 35 f1 	vbroadcastsd zmm22,QWORD PTR [rip+0xffffffffff74c1f1]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  9288a4:	c1 74 ff 
  9288a7:	62 71 fd 48 28 15 8f 	vmovapd zmm10,ZMMWORD PTR [rip+0xffffffffff758b8f]        # 81440 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xe8f0>
  9288ae:	8b 75 ff 
  9288b1:	62 e2 fd 48 19 15 65 	vbroadcastsd zmm18,QWORD PTR [rip+0xffffffffff74c365]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  9288b8:	c3 74 ff 
  9288bb:	62 71 fd 48 28 25 bb 	vmovapd zmm12,ZMMWORD PTR [rip+0xffffffffff758bbb]        # 81480 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xe930>
  9288c2:	8b 75 ff 
  9288c5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  9288cc:	00 00 00 00 
  9288d0:	c5 7b 12 6c 17 28    	vmovddup xmm13,QWORD PTR [rdi+rdx*1+0x28]
  9288d6:	c4 63 11 0d 6c 17 20 	vblendpd xmm13,xmm13,XMMWORD PTR [rdi+rdx*1+0x20],0x1
  9288dd:	01 
  9288de:	c5 7d 10 34 17       	vmovupd ymm14,YMMWORD PTR [rdi+rdx*1]
  9288e3:	c5 7d 10 7c 17 30    	vmovupd ymm15,YMMWORD PTR [rdi+rdx*1+0x30]
  9288e9:	62 e1 fd 28 10 44 17 	vmovupd ymm16,YMMWORD PTR [rdi+rdx*1+0x60]
  9288f0:	03 
  9288f1:	62 e1 fd 28 10 8c 17 	vmovupd ymm17,YMMWORD PTR [rdi+rdx*1+0x90]
  9288f8:	90 00 00 00 
  9288fc:	62 53 0d 48 18 ed 02 	vinsertf32x4 zmm13,zmm14,xmm13,0x2
  928903:	62 51 fd 48 28 f5    	vmovapd zmm14,zmm13
  928909:	62 72 e5 48 7f f4    	vpermt2pd zmm14,zmm3,zmm4
  92890f:	c5 7b 12 5c 17 58    	vmovddup xmm11,QWORD PTR [rdi+rdx*1+0x58]
  928915:	62 72 ad 48 7f ec    	vpermt2pd zmm13,zmm10,zmm4
  92891b:	c4 63 21 0d 5c 17 50 	vblendpd xmm11,xmm11,XMMWORD PTR [rdi+rdx*1+0x50],0x1
  928922:	01 
  928923:	62 53 05 48 18 db 02 	vinsertf32x4 zmm11,zmm15,xmm11,0x2
  92892a:	62 c1 fd 48 28 db    	vmovapd zmm19,zmm11
  928930:	62 e2 e5 48 7f dc    	vpermt2pd zmm19,zmm3,zmm4
  928936:	c5 7b 12 bc 17 88 00 	vmovddup xmm15,QWORD PTR [rdi+rdx*1+0x88]
  92893d:	00 00 
  92893f:	62 72 ad 48 7f dc    	vpermt2pd zmm11,zmm10,zmm4
  928945:	c4 63 01 0d bc 17 80 	vblendpd xmm15,xmm15,XMMWORD PTR [rdi+rdx*1+0x80],0x1
  92894c:	00 00 00 01 
  928950:	62 c3 7d 40 18 c7 02 	vinsertf32x4 zmm16,zmm16,xmm15,0x2
  928957:	62 a1 fd 48 28 e0    	vmovapd zmm20,zmm16
  92895d:	62 e2 e5 48 7f e4    	vpermt2pd zmm20,zmm3,zmm4
  928963:	c5 7b 12 bc 17 b8 00 	vmovddup xmm15,QWORD PTR [rdi+rdx*1+0xb8]
  92896a:	00 00 
  92896c:	62 e2 ad 48 7f c4    	vpermt2pd zmm16,zmm10,zmm4
  928972:	c4 63 01 0d bc 17 b0 	vblendpd xmm15,xmm15,XMMWORD PTR [rdi+rdx*1+0xb0],0x1
  928979:	00 00 00 01 
  92897d:	62 c3 75 40 18 cf 02 	vinsertf32x4 zmm17,zmm17,xmm15,0x2
  928984:	62 a1 fd 48 28 e9    	vmovapd zmm21,zmm17
  92898a:	62 e2 e5 48 7f ec    	vpermt2pd zmm21,zmm3,zmm4
  928990:	62 e2 ad 48 7f cc    	vpermt2pd zmm17,zmm10,zmm4
  928996:	c5 7d 10 bc 17 c0 00 	vmovupd ymm15,YMMWORD PTR [rdi+rdx*1+0xc0]
  92899d:	00 00 
  92899f:	c5 7b 12 8c 17 e8 00 	vmovddup xmm9,QWORD PTR [rdi+rdx*1+0xe8]
  9289a6:	00 00 
  9289a8:	c4 63 31 0d 8c 17 e0 	vblendpd xmm9,xmm9,XMMWORD PTR [rdi+rdx*1+0xe0],0x1
  9289af:	00 00 00 01 
  9289b3:	62 53 05 48 18 c9 02 	vinsertf32x4 zmm9,zmm15,xmm9,0x2
  9289ba:	62 c1 fd 48 28 f9    	vmovapd zmm23,zmm9
  9289c0:	62 e2 e5 48 7f fc    	vpermt2pd zmm23,zmm3,zmm4
  9289c6:	62 72 ad 48 7f cc    	vpermt2pd zmm9,zmm10,zmm4
  9289cc:	62 41 a5 48 58 c1    	vaddpd zmm24,zmm11,zmm9
  9289d2:	62 11 95 48 58 f8    	vaddpd zmm15,zmm13,zmm24
  9289d8:	62 21 fd 40 58 c9    	vaddpd zmm25,zmm16,zmm17
  9289de:	62 01 85 48 58 d1    	vaddpd zmm26,zmm15,zmm25
  9289e4:	62 21 e5 40 58 df    	vaddpd zmm27,zmm19,zmm23
  9289ea:	62 11 8d 48 58 fb    	vaddpd zmm15,zmm14,zmm27
  9289f0:	62 21 dd 40 58 e5    	vaddpd zmm28,zmm20,zmm21
  9289f6:	62 11 85 48 58 fc    	vaddpd zmm15,zmm15,zmm28
  9289fc:	62 61 fd 48 28 ed    	vmovapd zmm29,zmm5
  928a02:	62 42 bd 40 a8 ed    	vfmadd213pd zmm29,zmm24,zmm13
  928a08:	62 62 b5 40 bc ee    	vfnmadd231pd zmm29,zmm25,zmm6
  928a0e:	62 a1 e5 40 5c df    	vsubpd zmm19,zmm19,zmm23
  928a14:	62 a1 dd 40 5c e5    	vsubpd zmm20,zmm20,zmm21
  928a1a:	62 e1 dd 40 59 ef    	vmulpd zmm21,zmm20,zmm7
  928a20:	62 c2 e5 40 b8 e8    	vfmadd231pd zmm21,zmm19,zmm8
  928a26:	62 a1 95 40 58 fd    	vaddpd zmm23,zmm29,zmm21
  928a2c:	62 61 fd 48 28 f5    	vmovapd zmm30,zmm5
  928a32:	62 42 a5 40 a8 f6    	vfmadd213pd zmm30,zmm27,zmm14
  928a38:	62 62 9d 40 bc f6    	vfnmadd231pd zmm30,zmm28,zmm6
  928a3e:	62 51 a5 48 5c c9    	vsubpd zmm9,zmm11,zmm9
  928a44:	62 31 fd 40 5c d9    	vsubpd zmm11,zmm16,zmm17
  928a4a:	62 e1 a5 48 59 c7    	vmulpd zmm16,zmm11,zmm7
  928a50:	62 c2 b5 48 b8 c0    	vfmadd231pd zmm16,zmm9,zmm8
  928a56:	62 a1 8d 40 5c c8    	vsubpd zmm17,zmm30,zmm16
  928a5c:	62 12 cd 48 bc e8    	vfnmadd231pd zmm13,zmm6,zmm24
  928a62:	62 12 d5 48 b8 e9    	vfmadd231pd zmm13,zmm5,zmm25
  928a68:	62 e1 e5 40 59 df    	vmulpd zmm19,zmm19,zmm7
  928a6e:	62 a2 bd 48 bc dc    	vfnmadd231pd zmm19,zmm8,zmm20
  928a74:	62 a1 95 48 58 e3    	vaddpd zmm20,zmm13,zmm19
  928a7a:	62 12 cd 48 bc f3    	vfnmadd231pd zmm14,zmm6,zmm27
  928a80:	62 12 d5 48 b8 f4    	vfmadd231pd zmm14,zmm5,zmm28
  928a86:	62 71 b5 48 59 cf    	vmulpd zmm9,zmm9,zmm7
  928a8c:	62 52 bd 48 bc cb    	vfnmadd231pd zmm9,zmm8,zmm11
  928a92:	62 51 8d 48 5c d9    	vsubpd zmm11,zmm14,zmm9
  928a98:	62 31 95 48 5c eb    	vsubpd zmm13,zmm13,zmm19
  928a9e:	62 51 b5 48 58 ce    	vaddpd zmm9,zmm9,zmm14
  928aa4:	62 31 95 40 5c f5    	vsubpd zmm14,zmm29,zmm21
  928aaa:	62 81 fd 40 58 c6    	vaddpd zmm16,zmm16,zmm30
  928ab0:	62 42 fd 48 7f d6    	vpermt2pd zmm26,zmm0,zmm14
  928ab6:	62 e2 fd 48 7f fc    	vpermt2pd zmm23,zmm0,zmm4
  928abc:	62 e2 fd 48 7f e4    	vpermt2pd zmm20,zmm0,zmm4
  928ac2:	62 72 fd 48 7f ec    	vpermt2pd zmm13,zmm0,zmm4
  928ac8:	62 11 fd 48 28 f2    	vmovapd zmm14,zmm26
  928ace:	62 32 f5 48 7f f4    	vpermt2pd zmm14,zmm1,zmm20
  928ad4:	62 22 ed 48 7f d4    	vpermt2pd zmm26,zmm2,zmm20
  928ada:	62 a1 fd 48 28 df    	vmovapd zmm19,zmm23
  928ae0:	62 c2 f5 48 7f dd    	vpermt2pd zmm19,zmm1,zmm13
  928ae6:	62 c2 ed 48 7f fd    	vpermt2pd zmm23,zmm2,zmm13
  928aec:	62 31 ad 40 14 ef    	vunpcklpd zmm13,zmm26,zmm23
  928af2:	62 a1 8d 48 14 e3    	vunpcklpd zmm20,zmm14,zmm19
  928af8:	62 31 8d 48 15 f3    	vunpckhpd zmm14,zmm14,zmm19
  928afe:	62 32 fd 48 7f f8    	vpermt2pd zmm15,zmm0,zmm16
  928b04:	62 e2 fd 48 7f cc    	vpermt2pd zmm17,zmm0,zmm4
  928b0a:	62 72 fd 48 7f dc    	vpermt2pd zmm11,zmm0,zmm4
  928b10:	62 72 fd 48 7f cc    	vpermt2pd zmm9,zmm0,zmm4
  928b16:	62 c1 fd 48 28 c7    	vmovapd zmm16,zmm15
  928b1c:	62 c2 f5 48 7f c3    	vpermt2pd zmm16,zmm1,zmm11
  928b22:	62 52 ed 48 7f fb    	vpermt2pd zmm15,zmm2,zmm11
  928b28:	62 31 fd 48 28 d9    	vmovapd zmm11,zmm17
  928b2e:	62 52 f5 48 7f d9    	vpermt2pd zmm11,zmm1,zmm9
  928b34:	62 c2 ed 48 7f c9    	vpermt2pd zmm17,zmm2,zmm9
  928b3a:	62 31 85 48 14 c9    	vunpcklpd zmm9,zmm15,zmm17
  928b40:	62 51 fd 40 14 fb    	vunpcklpd zmm15,zmm16,zmm11
  928b46:	62 51 fd 40 15 db    	vunpckhpd zmm11,zmm16,zmm11
  928b4c:	62 e1 fd 48 10 41 02 	vmovupd zmm16,ZMMWORD PTR [rcx+0x80]
  928b53:	62 e1 fd 48 10 49 03 	vmovupd zmm17,ZMMWORD PTR [rcx+0xc0]
  928b5a:	62 e1 fd 48 10 59 04 	vmovupd zmm19,ZMMWORD PTR [rcx+0x100]
  928b61:	62 e1 fd 48 10 69 05 	vmovupd zmm21,ZMMWORD PTR [rcx+0x140]
  928b68:	62 a1 8d 48 59 f8    	vmulpd zmm23,zmm14,zmm16
  928b6e:	62 a2 a5 48 bc f9    	vfnmadd231pd zmm23,zmm11,zmm17
  928b74:	62 21 95 48 59 c3    	vmulpd zmm24,zmm13,zmm19
  928b7a:	62 22 b5 48 bc c5    	vfnmadd231pd zmm24,zmm9,zmm21
  928b80:	62 01 c5 40 58 c8    	vaddpd zmm25,zmm23,zmm24
  928b86:	62 31 a5 48 59 d8    	vmulpd zmm11,zmm11,zmm16
  928b8c:	62 32 8d 48 b8 d9    	vfmadd231pd zmm11,zmm14,zmm17
  928b92:	62 31 b5 48 59 cb    	vmulpd zmm9,zmm9,zmm19
  928b98:	62 32 95 48 b8 cd    	vfmadd231pd zmm9,zmm13,zmm21
  928b9e:	62 51 a5 48 58 e9    	vaddpd zmm13,zmm11,zmm9
  928ba4:	62 31 fd 48 28 f6    	vmovapd zmm14,zmm22
  928baa:	62 32 b5 40 ac f4    	vfnmadd213pd zmm14,zmm25,zmm20
  928bb0:	62 51 a5 48 5c c9    	vsubpd zmm9,zmm11,zmm9
  928bb6:	62 31 b5 48 59 ca    	vmulpd zmm9,zmm9,zmm18
  928bbc:	62 51 8d 48 58 d9    	vaddpd zmm11,zmm14,zmm9
  928bc2:	62 a1 fd 48 28 c6    	vmovapd zmm16,zmm22
  928bc8:	62 c2 95 48 ac c7    	vfnmadd213pd zmm16,zmm13,zmm15
  928bce:	62 81 c5 40 5c c8    	vsubpd zmm17,zmm23,zmm24
  928bd4:	62 a1 f5 40 59 ca    	vmulpd zmm17,zmm17,zmm18
  928bda:	62 a1 fd 40 5c d9    	vsubpd zmm19,zmm16,zmm17
  928be0:	62 51 8d 48 5c c9    	vsubpd zmm9,zmm14,zmm9
  928be6:	62 31 fd 40 58 f1    	vaddpd zmm14,zmm16,zmm17
  928bec:	62 51 85 48 58 ed    	vaddpd zmm13,zmm15,zmm13
  928bf2:	62 11 dd 40 58 f9    	vaddpd zmm15,zmm20,zmm25
  928bf8:	62 33 7d 48 19 e8 02 	vextractf32x4 xmm16,zmm13,0x2
  928bff:	62 52 9d 48 7f ef    	vpermt2pd zmm13,zmm12,zmm15
  928c05:	62 71 fd 48 11 2c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1],zmm13
  928c0c:	62 53 7d 48 19 fd 02 	vextractf32x4 xmm13,zmm15,0x2
  928c13:	62 51 fd 00 14 ed    	vunpcklpd xmm13,xmm16,xmm13
  928c19:	c5 79 11 6c 16 40    	vmovupd XMMWORD PTR [rsi+rdx*1+0x40],xmm13
  928c1f:	62 c3 7d 48 19 dd 02 	vextractf32x4 xmm13,zmm19,0x2
  928c26:	62 c2 9d 48 7f db    	vpermt2pd zmm19,zmm12,zmm11
  928c2c:	62 e1 fd 48 11 9c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x50],zmm19
  928c33:	50 00 00 00 
  928c37:	62 53 7d 48 19 db 02 	vextractf32x4 xmm11,zmm11,0x2
  928c3e:	c4 41 11 14 db       	vunpcklpd xmm11,xmm13,xmm11
  928c43:	c5 79 11 9c 16 90 00 	vmovupd XMMWORD PTR [rsi+rdx*1+0x90],xmm11
  928c4a:	00 00 
  928c4c:	62 53 7d 48 19 f3 02 	vextractf32x4 xmm11,zmm14,0x2
  928c53:	62 52 9d 48 7f f1    	vpermt2pd zmm14,zmm12,zmm9
  928c59:	62 71 fd 48 11 b4 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0xa0],zmm14
  928c60:	a0 00 00 00 
  928c64:	62 53 7d 48 19 c9 02 	vextractf32x4 xmm9,zmm9,0x2
  928c6b:	c4 41 21 14 c9       	vunpcklpd xmm9,xmm11,xmm9
  928c70:	c5 79 11 8c 16 e0 00 	vmovupd XMMWORD PTR [rsi+rdx*1+0xe0],xmm9
  928c77:	00 00 
  928c79:	48 81 c2 f0 00 00 00 	add    rdx,0xf0
  928c80:	48 39 d0             	cmp    rax,rdx
  928c83:	0f 85 47 fc ff ff    	jne    9288d0 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle+0x90>
  928c89:	c5 f8 77             	vzeroupper
  928c8c:	c3                   	ret
