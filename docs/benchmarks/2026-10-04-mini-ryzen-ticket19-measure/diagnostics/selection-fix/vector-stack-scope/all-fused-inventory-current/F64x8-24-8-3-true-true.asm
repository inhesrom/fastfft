
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000961780 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  961780:	62 f1 fd 48 10 05 de 	vmovupd zmm0,ZMMWORD PTR [rip+0xffffffffff7655de]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  961787:	55 76 ff 
  96178a:	62 f1 fd 48 10 0d 54 	vmovupd zmm1,ZMMWORD PTR [rip+0xffffffffff765554]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  961791:	55 76 ff 
  961794:	62 f1 fd 48 10 15 8a 	vmovupd zmm2,ZMMWORD PTR [rip+0xffffffffff76558a]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  96179b:	55 76 ff 
  96179e:	48 c1 e2 07          	shl    rdx,0x7
  9617a2:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  9617a6:	31 d2                	xor    edx,edx
  9617a8:	62 f1 fd 48 28 1d 8e 	vmovapd zmm3,ZMMWORD PTR [rip+0xffffffffff723f8e]        # 85740 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x12bf0>
  9617af:	3f 72 ff 
  9617b2:	c5 d9 57 e4          	vxorpd xmm4,xmm4,xmm4
  9617b6:	62 f1 fd 48 28 2d c0 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff723fc0]        # 85780 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x12c30>
  9617bd:	3f 72 ff 
  9617c0:	62 f2 fd 48 19 35 d6 	vbroadcastsd zmm6,QWORD PTR [rip+0xffffffffff7136d6]        # 74ea0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2350>
  9617c7:	36 71 ff 
  9617ca:	62 e2 fd 48 19 2d c4 	vbroadcastsd zmm21,QWORD PTR [rip+0xffffffffff7132c4]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  9617d1:	32 71 ff 
  9617d4:	62 e2 fd 48 19 25 42 	vbroadcastsd zmm20,QWORD PTR [rip+0xffffffffff713442]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  9617db:	34 71 ff 
  9617de:	62 61 fd 48 28 05 d8 	vmovapd zmm24,ZMMWORD PTR [rip+0xffffffffff723fd8]        # 857c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x12c70>
  9617e5:	3f 72 ff 
  9617e8:	62 61 fd 48 28 0d 0e 	vmovapd zmm25,ZMMWORD PTR [rip+0xffffffffff72400e]        # 85800 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x12cb0>
  9617ef:	40 72 ff 
  9617f2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  9617f9:	1f 84 00 00 00 00 00 
  961800:	c5 7b 12 5c 17 28    	vmovddup xmm11,QWORD PTR [rdi+rdx*1+0x28]
  961806:	c4 63 21 0d 5c 17 20 	vblendpd xmm11,xmm11,XMMWORD PTR [rdi+rdx*1+0x20],0x1
  96180d:	01 
  96180e:	c5 7d 10 24 17       	vmovupd ymm12,YMMWORD PTR [rdi+rdx*1]
  961813:	c5 7d 10 74 17 30    	vmovupd ymm14,YMMWORD PTR [rdi+rdx*1+0x30]
  961819:	62 e1 fd 28 10 44 17 	vmovupd ymm16,YMMWORD PTR [rdi+rdx*1+0x60]
  961820:	03 
  961821:	62 e1 fd 28 10 94 17 	vmovupd ymm18,YMMWORD PTR [rdi+rdx*1+0x90]
  961828:	90 00 00 00 
  96182c:	62 53 1d 48 18 eb 02 	vinsertf32x4 zmm13,zmm12,xmm11,0x2
  961833:	62 51 fd 48 28 dd    	vmovapd zmm11,zmm13
  961839:	62 72 e5 48 7f dc    	vpermt2pd zmm11,zmm3,zmm4
  96183f:	c5 7b 12 64 17 58    	vmovddup xmm12,QWORD PTR [rdi+rdx*1+0x58]
  961845:	c4 63 19 0d 64 17 50 	vblendpd xmm12,xmm12,XMMWORD PTR [rdi+rdx*1+0x50],0x1
  96184c:	01 
  96184d:	62 72 d5 48 7f ec    	vpermt2pd zmm13,zmm5,zmm4
  961853:	62 53 0d 48 18 fc 02 	vinsertf32x4 zmm15,zmm14,xmm12,0x2
  96185a:	62 51 fd 48 28 f7    	vmovapd zmm14,zmm15
  961860:	62 72 e5 48 7f f4    	vpermt2pd zmm14,zmm3,zmm4
  961866:	c5 7b 12 a4 17 88 00 	vmovddup xmm12,QWORD PTR [rdi+rdx*1+0x88]
  96186d:	00 00 
  96186f:	c4 63 19 0d a4 17 80 	vblendpd xmm12,xmm12,XMMWORD PTR [rdi+rdx*1+0x80],0x1
  961876:	00 00 00 01 
  96187a:	62 72 d5 48 7f fc    	vpermt2pd zmm15,zmm5,zmm4
  961880:	62 53 7d 40 18 e4 02 	vinsertf32x4 zmm12,zmm16,xmm12,0x2
  961887:	62 c1 fd 48 28 cc    	vmovapd zmm17,zmm12
  96188d:	62 e2 e5 48 7f cc    	vpermt2pd zmm17,zmm3,zmm4
  961893:	c5 7b 12 84 17 b8 00 	vmovddup xmm8,QWORD PTR [rdi+rdx*1+0xb8]
  96189a:	00 00 
  96189c:	c4 63 39 0d 84 17 b0 	vblendpd xmm8,xmm8,XMMWORD PTR [rdi+rdx*1+0xb0],0x1
  9618a3:	00 00 00 01 
  9618a7:	62 72 d5 48 7f e4    	vpermt2pd zmm12,zmm5,zmm4
  9618ad:	62 c3 6d 40 18 c0 02 	vinsertf32x4 zmm16,zmm18,xmm8,0x2
  9618b4:	62 a1 fd 48 28 d0    	vmovapd zmm18,zmm16
  9618ba:	62 e2 e5 48 7f d4    	vpermt2pd zmm18,zmm3,zmm4
  9618c0:	62 e2 d5 48 7f c4    	vpermt2pd zmm16,zmm5,zmm4
  9618c6:	c5 7d 10 84 17 c0 00 	vmovupd ymm8,YMMWORD PTR [rdi+rdx*1+0xc0]
  9618cd:	00 00 
  9618cf:	c5 fb 12 bc 17 e8 00 	vmovddup xmm7,QWORD PTR [rdi+rdx*1+0xe8]
  9618d6:	00 00 
  9618d8:	c4 e3 41 0d bc 17 e0 	vblendpd xmm7,xmm7,XMMWORD PTR [rdi+rdx*1+0xe0],0x1
  9618df:	00 00 00 01 
  9618e3:	62 f3 3d 48 18 ff 02 	vinsertf32x4 zmm7,zmm8,xmm7,0x2
  9618ea:	62 e1 fd 48 28 df    	vmovapd zmm19,zmm7
  9618f0:	62 e2 e5 48 7f dc    	vpermt2pd zmm19,zmm3,zmm4
  9618f6:	62 f2 d5 48 7f fc    	vpermt2pd zmm7,zmm5,zmm4
  9618fc:	c5 7b 12 84 17 18 01 	vmovddup xmm8,QWORD PTR [rdi+rdx*1+0x118]
  961903:	00 00 
  961905:	62 e1 fd 28 10 b4 17 	vmovupd ymm22,YMMWORD PTR [rdi+rdx*1+0xf0]
  96190c:	f0 00 00 00 
  961910:	c4 63 39 0d 84 17 10 	vblendpd xmm8,xmm8,XMMWORD PTR [rdi+rdx*1+0x110],0x1
  961917:	01 00 00 01 
  96191b:	62 53 4d 40 18 c0 02 	vinsertf32x4 zmm8,zmm22,xmm8,0x2
  961922:	62 c1 fd 48 28 f0    	vmovapd zmm22,zmm8
  961928:	62 e2 e5 48 7f f4    	vpermt2pd zmm22,zmm3,zmm4
  96192e:	62 72 d5 48 7f c4    	vpermt2pd zmm8,zmm5,zmm4
  961934:	62 e1 fd 28 10 7c 17 	vmovupd ymm23,YMMWORD PTR [rdi+rdx*1+0x120]
  96193b:	09 
  96193c:	c5 7b 12 8c 17 48 01 	vmovddup xmm9,QWORD PTR [rdi+rdx*1+0x148]
  961943:	00 00 
  961945:	c4 63 31 0d 8c 17 40 	vblendpd xmm9,xmm9,XMMWORD PTR [rdi+rdx*1+0x140],0x1
  96194c:	01 00 00 01 
  961950:	62 53 45 40 18 c9 02 	vinsertf32x4 zmm9,zmm23,xmm9,0x2
  961957:	62 c1 fd 48 28 f9    	vmovapd zmm23,zmm9
  96195d:	62 e2 e5 48 7f fc    	vpermt2pd zmm23,zmm3,zmm4
  961963:	62 72 d5 48 7f cc    	vpermt2pd zmm9,zmm5,zmm4
  961969:	c5 7b 12 94 17 78 01 	vmovddup xmm10,QWORD PTR [rdi+rdx*1+0x178]
  961970:	00 00 
  961972:	c4 63 29 0d 94 17 70 	vblendpd xmm10,xmm10,XMMWORD PTR [rdi+rdx*1+0x170],0x1
  961979:	01 00 00 01 
  96197d:	62 61 fd 28 10 94 17 	vmovupd ymm26,YMMWORD PTR [rdi+rdx*1+0x150]
  961984:	50 01 00 00 
  961988:	62 53 2d 40 18 d2 02 	vinsertf32x4 zmm10,zmm26,xmm10,0x2
  96198f:	62 41 fd 48 28 d2    	vmovapd zmm26,zmm10
  961995:	62 62 e5 48 7f d4    	vpermt2pd zmm26,zmm3,zmm4
  96199b:	62 72 d5 48 7f d4    	vpermt2pd zmm10,zmm5,zmm4
  9619a1:	62 61 95 48 58 df    	vaddpd zmm27,zmm13,zmm7
  9619a7:	62 f1 95 48 5c ff    	vsubpd zmm7,zmm13,zmm7
  9619ad:	62 31 f5 40 58 ef    	vaddpd zmm13,zmm17,zmm23
  9619b3:	62 a1 f5 40 5c cf    	vsubpd zmm17,zmm17,zmm23
  9619b9:	62 c1 85 48 58 f8    	vaddpd zmm23,zmm15,zmm8
  9619bf:	62 51 85 48 5c c0    	vsubpd zmm8,zmm15,zmm8
  9619c5:	62 31 8d 48 58 fe    	vaddpd zmm15,zmm14,zmm22
  9619cb:	62 31 8d 48 5c f6    	vsubpd zmm14,zmm14,zmm22
  9619d1:	62 81 ed 40 58 f2    	vaddpd zmm22,zmm18,zmm26
  9619d7:	62 81 ed 40 5c d2    	vsubpd zmm18,zmm18,zmm26
  9619dd:	62 41 fd 40 58 d2    	vaddpd zmm26,zmm16,zmm10
  9619e3:	62 51 fd 40 5c d2    	vsubpd zmm10,zmm16,zmm10
  9619e9:	62 a1 a5 48 58 c3    	vaddpd zmm16,zmm11,zmm19
  9619ef:	62 31 a5 48 5c db    	vsubpd zmm11,zmm11,zmm19
  9619f5:	62 c1 9d 48 58 d9    	vaddpd zmm19,zmm12,zmm9
  9619fb:	62 51 b5 48 5c cc    	vsubpd zmm9,zmm9,zmm12
  961a01:	62 51 bd 48 58 e6    	vaddpd zmm12,zmm8,zmm14
  961a07:	62 51 8d 48 5c c0    	vsubpd zmm8,zmm14,zmm8
  961a0d:	62 51 ed 40 5c f2    	vsubpd zmm14,zmm18,zmm10
  961a13:	62 31 ad 48 58 d2    	vaddpd zmm10,zmm10,zmm18
  961a19:	62 a1 a5 40 58 d3    	vaddpd zmm18,zmm27,zmm19
  961a1f:	62 a1 a5 40 5c db    	vsubpd zmm19,zmm27,zmm19
  961a25:	62 21 85 48 58 de    	vaddpd zmm27,zmm15,zmm22
  961a2b:	62 31 85 48 5c fe    	vsubpd zmm15,zmm15,zmm22
  961a31:	62 c1 fd 40 58 f5    	vaddpd zmm22,zmm16,zmm13
  961a37:	62 51 fd 40 5c ed    	vsubpd zmm13,zmm16,zmm13
  961a3d:	62 81 c5 40 58 c2    	vaddpd zmm16,zmm23,zmm26
  961a43:	62 a1 ad 40 5c ff    	vsubpd zmm23,zmm26,zmm23
  961a49:	62 21 c5 48 58 d1    	vaddpd zmm26,zmm7,zmm17
  961a4f:	62 71 9d 48 59 e6    	vmulpd zmm12,zmm12,zmm6
  961a55:	62 71 8d 48 59 f6    	vmulpd zmm14,zmm14,zmm6
  961a5b:	62 71 bd 48 59 c6    	vmulpd zmm8,zmm8,zmm6
  961a61:	62 71 ad 48 59 d6    	vmulpd zmm10,zmm10,zmm6
  961a67:	62 b1 c5 48 5c f9    	vsubpd zmm7,zmm7,zmm17
  961a6d:	62 c1 bd 48 5c ca    	vsubpd zmm17,zmm8,zmm10
  961a73:	62 51 bd 48 58 c2    	vaddpd zmm8,zmm8,zmm10
  961a79:	62 51 b5 48 58 d3    	vaddpd zmm10,zmm9,zmm11
  961a7f:	62 51 a5 48 5c c9    	vsubpd zmm9,zmm11,zmm9
  961a85:	62 51 9d 48 58 de    	vaddpd zmm11,zmm12,zmm14
  961a8b:	62 51 8d 48 5c e4    	vsubpd zmm12,zmm14,zmm12
  961a91:	62 31 ed 40 58 f0    	vaddpd zmm14,zmm18,zmm16
  961a97:	62 a1 ed 40 5c c0    	vsubpd zmm16,zmm18,zmm16
  961a9d:	62 81 cd 40 58 d3    	vaddpd zmm18,zmm22,zmm27
  961aa3:	62 81 cd 40 5c f3    	vsubpd zmm22,zmm22,zmm27
  961aa9:	62 41 ad 40 58 db    	vaddpd zmm27,zmm26,zmm11
  961aaf:	62 51 ad 40 5c db    	vsubpd zmm11,zmm26,zmm11
  961ab5:	62 21 ad 48 58 d1    	vaddpd zmm26,zmm10,zmm17
  961abb:	62 31 ad 48 5c d1    	vsubpd zmm10,zmm10,zmm17
  961ac1:	62 c1 e5 40 58 cf    	vaddpd zmm17,zmm19,zmm15
  961ac7:	62 51 e5 40 5c ff    	vsubpd zmm15,zmm19,zmm15
  961acd:	62 c1 c5 40 58 dd    	vaddpd zmm19,zmm23,zmm13
  961ad3:	62 31 95 48 5c ef    	vsubpd zmm13,zmm13,zmm23
  961ad9:	62 c1 c5 48 58 f8    	vaddpd zmm23,zmm7,zmm8
  961adf:	62 d1 c5 48 5c f8    	vsubpd zmm7,zmm7,zmm8
  961ae5:	62 51 b5 48 58 c4    	vaddpd zmm8,zmm9,zmm12
  961aeb:	62 51 b5 48 5c cc    	vsubpd zmm9,zmm9,zmm12
  961af1:	62 32 fd 48 7f f0    	vpermt2pd zmm14,zmm0,zmm16
  961af7:	62 42 fd 48 7f db    	vpermt2pd zmm27,zmm0,zmm11
  961afd:	62 c2 fd 48 7f cf    	vpermt2pd zmm17,zmm0,zmm15
  961b03:	62 e2 fd 48 7f ff    	vpermt2pd zmm23,zmm0,zmm7
  961b09:	62 d1 fd 48 28 fe    	vmovapd zmm7,zmm14
  961b0f:	62 b2 f5 48 7f f9    	vpermt2pd zmm7,zmm1,zmm17
  961b15:	62 32 ed 48 7f f1    	vpermt2pd zmm14,zmm2,zmm17
  961b1b:	62 11 fd 48 28 db    	vmovapd zmm11,zmm27
  961b21:	62 32 f5 48 7f df    	vpermt2pd zmm11,zmm1,zmm23
  961b27:	62 22 ed 48 7f df    	vpermt2pd zmm27,zmm2,zmm23
  961b2d:	62 11 8d 48 14 e3    	vunpcklpd zmm12,zmm14,zmm27
  961b33:	62 51 c5 48 14 f3    	vunpcklpd zmm14,zmm7,zmm11
  961b39:	62 d1 c5 48 15 fb    	vunpckhpd zmm7,zmm7,zmm11
  961b3f:	62 a2 fd 48 7f d6    	vpermt2pd zmm18,zmm0,zmm22
  961b45:	62 42 fd 48 7f d2    	vpermt2pd zmm26,zmm0,zmm10
  961b4b:	62 c2 fd 48 7f dd    	vpermt2pd zmm19,zmm0,zmm13
  961b51:	62 52 fd 48 7f c1    	vpermt2pd zmm8,zmm0,zmm9
  961b57:	62 31 fd 48 28 ca    	vmovapd zmm9,zmm18
  961b5d:	62 32 f5 48 7f cb    	vpermt2pd zmm9,zmm1,zmm19
  961b63:	62 a2 ed 48 7f d3    	vpermt2pd zmm18,zmm2,zmm19
  961b69:	62 11 fd 48 28 d2    	vmovapd zmm10,zmm26
  961b6f:	62 52 f5 48 7f d0    	vpermt2pd zmm10,zmm1,zmm8
  961b75:	62 42 ed 48 7f d0    	vpermt2pd zmm26,zmm2,zmm8
  961b7b:	62 11 ed 40 14 c2    	vunpcklpd zmm8,zmm18,zmm26
  961b81:	62 51 b5 48 14 da    	vunpcklpd zmm11,zmm9,zmm10
  961b87:	62 51 b5 48 15 ca    	vunpckhpd zmm9,zmm9,zmm10
  961b8d:	62 71 fd 48 10 51 02 	vmovupd zmm10,ZMMWORD PTR [rcx+0x80]
  961b94:	62 71 fd 48 10 69 03 	vmovupd zmm13,ZMMWORD PTR [rcx+0xc0]
  961b9b:	62 51 b5 48 59 fa    	vmulpd zmm15,zmm9,zmm10
  961ba1:	62 52 c5 48 b8 fd    	vfmadd231pd zmm15,zmm7,zmm13
  961ba7:	62 d1 c5 48 59 fa    	vmulpd zmm7,zmm7,zmm10
  961bad:	62 71 fd 48 10 51 04 	vmovupd zmm10,ZMMWORD PTR [rcx+0x100]
  961bb4:	62 d2 b5 48 bc fd    	vfnmadd231pd zmm7,zmm9,zmm13
  961bba:	62 71 fd 48 10 49 05 	vmovupd zmm9,ZMMWORD PTR [rcx+0x140]
  961bc1:	62 51 bd 48 59 ea    	vmulpd zmm13,zmm8,zmm10
  961bc7:	62 52 9d 48 b8 e9    	vfmadd231pd zmm13,zmm12,zmm9
  961bcd:	62 51 9d 48 59 d2    	vmulpd zmm10,zmm12,zmm10
  961bd3:	62 51 85 48 58 e5    	vaddpd zmm12,zmm15,zmm13
  961bd9:	62 52 bd 48 bc d1    	vfnmadd231pd zmm10,zmm8,zmm9
  961bdf:	62 31 fd 48 28 c5    	vmovapd zmm8,zmm21
  961be5:	62 52 9d 48 ac c3    	vfnmadd213pd zmm8,zmm12,zmm11
  961beb:	62 51 c5 48 5c ca    	vsubpd zmm9,zmm7,zmm10
  961bf1:	62 31 b5 48 59 cc    	vmulpd zmm9,zmm9,zmm20
  961bf7:	62 d1 c5 48 58 fa    	vaddpd zmm7,zmm7,zmm10
  961bfd:	62 51 bd 48 58 d1    	vaddpd zmm10,zmm8,zmm9
  961c03:	62 51 85 48 5c ed    	vsubpd zmm13,zmm15,zmm13
  961c09:	62 31 fd 48 28 fd    	vmovapd zmm15,zmm21
  961c0f:	62 52 c5 48 ac fe    	vfnmadd213pd zmm15,zmm7,zmm14
  961c15:	62 31 95 48 59 ec    	vmulpd zmm13,zmm13,zmm20
  961c1b:	62 51 bd 48 5c c1    	vsubpd zmm8,zmm8,zmm9
  961c21:	62 51 85 48 5c cd    	vsubpd zmm9,zmm15,zmm13
  961c27:	62 51 85 48 58 ed    	vaddpd zmm13,zmm15,zmm13
  961c2d:	62 51 a5 48 58 dc    	vaddpd zmm11,zmm11,zmm12
  961c33:	62 f1 8d 48 58 ff    	vaddpd zmm7,zmm14,zmm7
  961c39:	62 51 fd 48 28 e3    	vmovapd zmm12,zmm11
  961c3f:	62 72 bd 40 7f e7    	vpermt2pd zmm12,zmm24,zmm7
  961c45:	62 72 b5 40 7f df    	vpermt2pd zmm11,zmm25,zmm7
  961c4b:	62 71 fd 48 11 1c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1],zmm11
  961c52:	62 71 fd 48 11 64 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x40],zmm12
  961c59:	01 
  961c5a:	62 d1 fd 48 28 f8    	vmovapd zmm7,zmm8
  961c60:	62 d2 bd 40 7f fd    	vpermt2pd zmm7,zmm24,zmm13
  961c66:	62 52 b5 40 7f c5    	vpermt2pd zmm8,zmm25,zmm13
  961c6c:	62 71 fd 48 11 44 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x80],zmm8
  961c73:	02 
  961c74:	62 f1 fd 48 11 7c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0xc0],zmm7
  961c7b:	03 
  961c7c:	62 d1 fd 48 28 fa    	vmovapd zmm7,zmm10
  961c82:	62 d2 bd 40 7f f9    	vpermt2pd zmm7,zmm24,zmm9
  961c88:	62 52 b5 40 7f d1    	vpermt2pd zmm10,zmm25,zmm9
  961c8e:	62 71 fd 48 11 54 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x100],zmm10
  961c95:	04 
  961c96:	62 f1 fd 48 11 7c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x140],zmm7
  961c9d:	05 
  961c9e:	48 81 c2 80 01 00 00 	add    rdx,0x180
  961ca5:	48 39 d0             	cmp    rax,rdx
  961ca8:	0f 85 52 fb ff ff    	jne    961800 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle+0x80>
  961cae:	c5 f8 77             	vzeroupper
  961cb1:	c3                   	ret
