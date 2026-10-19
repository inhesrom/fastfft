
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a50680 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a50680:	48 81 ec 88 0b 00 00 	sub    rsp,0xb88
  a50687:	62 71 7c 48 28 05 ef 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff6424ef]        # 92b80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20030>
  a5068e:	24 64 ff 
  a50691:	62 f1 7c 48 10 0f    	vmovups zmm1,ZMMWORD PTR [rdi]
  a50697:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a5069e:	fe 
  a5069f:	62 e1 7c 48 10 77 01 	vmovups zmm22,ZMMWORD PTR [rdi+0x40]
  a506a6:	62 71 7c 48 10 67 02 	vmovups zmm12,ZMMWORD PTR [rdi+0x80]
  a506ad:	62 f1 7c 48 10 5f 03 	vmovups zmm3,ZMMWORD PTR [rdi+0xc0]
  a506b4:	62 b2 3d 48 7f ce    	vpermt2ps zmm1,zmm8,zmm22
  a506ba:	62 f1 7c 48 11 0c 24 	vmovups ZMMWORD PTR [rsp],zmm1
  a506c1:	62 e1 7c 48 10 5f 06 	vmovups zmm19,ZMMWORD PTR [rdi+0x180]
  a506c8:	62 f1 7c 48 10 6f 07 	vmovups zmm5,ZMMWORD PTR [rdi+0x1c0]
  a506cf:	62 b1 7c 48 28 c3    	vmovaps zmm0,zmm19
  a506d5:	62 31 7c 48 28 eb    	vmovaps zmm13,zmm19
  a506db:	62 f2 3d 48 7f c5    	vpermt2ps zmm0,zmm8,zmm5
  a506e1:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm0
  a506e8:	06 
  a506e9:	62 e1 7c 48 10 5f 18 	vmovups zmm19,ZMMWORD PTR [rdi+0x600]
  a506f0:	62 f1 7c 48 10 4f 19 	vmovups zmm1,ZMMWORD PTR [rdi+0x640]
  a506f7:	62 b1 7c 48 28 c3    	vmovaps zmm0,zmm19
  a506fd:	62 f2 3d 48 7f c1    	vpermt2ps zmm0,zmm8,zmm1
  a50703:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm0
  a5070a:	02 
  a5070b:	62 f1 7c 48 10 57 0c 	vmovups zmm2,ZMMWORD PTR [rdi+0x300]
  a50712:	62 f1 7c 48 10 47 0d 	vmovups zmm0,ZMMWORD PTR [rdi+0x340]
  a50719:	62 f1 7c 48 28 e2    	vmovaps zmm4,zmm2
  a5071f:	62 71 7c 48 28 f2    	vmovaps zmm14,zmm2
  a50725:	62 f2 3d 48 7f e0    	vpermt2ps zmm4,zmm8,zmm0
  a5072b:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm4
  a50732:	05 
  a50733:	62 f1 7c 48 10 67 12 	vmovups zmm4,ZMMWORD PTR [rdi+0x480]
  a5073a:	62 f1 7c 48 10 57 13 	vmovups zmm2,ZMMWORD PTR [rdi+0x4c0]
  a50741:	62 f1 7c 48 28 f4    	vmovaps zmm6,zmm4
  a50747:	62 71 7c 48 28 fc    	vmovaps zmm15,zmm4
  a5074d:	62 f2 3d 48 7f f2    	vpermt2ps zmm6,zmm8,zmm2
  a50753:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm6
  a5075a:	ff 
  a5075b:	62 f1 7c 48 10 77 0a 	vmovups zmm6,ZMMWORD PTR [rdi+0x280]
  a50762:	62 f1 7c 48 10 67 0b 	vmovups zmm4,ZMMWORD PTR [rdi+0x2c0]
  a50769:	62 f1 7c 48 28 fe    	vmovaps zmm7,zmm6
  a5076f:	62 e1 7c 48 28 c6    	vmovaps zmm16,zmm6
  a50775:	62 f2 3d 48 7f fc    	vpermt2ps zmm7,zmm8,zmm4
  a5077b:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm7
  a50782:	03 
  a50783:	62 61 7c 48 10 47 10 	vmovups zmm24,ZMMWORD PTR [rdi+0x400]
  a5078a:	62 f1 7c 48 10 77 11 	vmovups zmm6,ZMMWORD PTR [rdi+0x440]
  a50791:	62 91 7c 48 28 f8    	vmovaps zmm7,zmm24
  a50797:	62 f2 3d 48 7f fe    	vpermt2ps zmm7,zmm8,zmm6
  a5079d:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm7
  a507a4:	04 
  a507a5:	62 e1 7c 48 10 4f 04 	vmovups zmm17,ZMMWORD PTR [rdi+0x100]
  a507ac:	62 f1 7c 48 10 7f 05 	vmovups zmm7,ZMMWORD PTR [rdi+0x140]
  a507b3:	62 61 7c 48 10 77 16 	vmovups zmm30,ZMMWORD PTR [rdi+0x580]
  a507ba:	62 71 7c 48 10 4f 17 	vmovups zmm9,ZMMWORD PTR [rdi+0x5c0]
  a507c1:	62 01 7c 48 28 de    	vmovaps zmm27,zmm30
  a507c7:	62 42 3d 48 7f d9    	vpermt2ps zmm27,zmm8,zmm9
  a507cd:	62 e1 7c 48 10 67 1c 	vmovups zmm20,ZMMWORD PTR [rdi+0x700]
  a507d4:	62 71 7c 48 10 57 1d 	vmovups zmm10,ZMMWORD PTR [rdi+0x740]
  a507db:	62 61 7c 48 28 3d db 	vmovaps zmm31,ZMMWORD PTR [rip+0xffffffffff6423db]        # 92bc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20070>
  a507e2:	23 64 ff 
  a507e5:	62 42 05 40 7f f1    	vpermt2ps zmm30,zmm31,zmm9
  a507eb:	62 31 7c 48 28 cc    	vmovaps zmm9,zmm20
  a507f1:	62 52 3d 48 7f ca    	vpermt2ps zmm9,zmm8,zmm10
  a507f7:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm9
  a507fe:	08 
  a507ff:	62 c2 05 40 7f e2    	vpermt2ps zmm20,zmm31,zmm10
  a50805:	62 a1 7c 48 28 f9    	vmovaps zmm23,zmm17
  a5080b:	62 e2 3d 48 7f ff    	vpermt2ps zmm23,zmm8,zmm7
  a50811:	62 62 05 40 7f c6    	vpermt2ps zmm24,zmm31,zmm6
  a50817:	62 f1 7c 48 10 77 14 	vmovups zmm6,ZMMWORD PTR [rdi+0x500]
  a5081e:	62 e2 05 40 7f cf    	vpermt2ps zmm17,zmm31,zmm7
  a50824:	62 d1 7c 48 28 fc    	vmovaps zmm7,zmm12
  a5082a:	62 f2 3d 48 7f fb    	vpermt2ps zmm7,zmm8,zmm3
  a50830:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm7
  a50837:	15 
  a50838:	62 72 05 40 7f e3    	vpermt2ps zmm12,zmm31,zmm3
  a5083e:	62 f1 7c 48 10 5f 15 	vmovups zmm3,ZMMWORD PTR [rdi+0x540]
  a50845:	62 f1 7c 48 28 fe    	vmovaps zmm7,zmm6
  a5084b:	62 71 7c 48 28 d6    	vmovaps zmm10,zmm6
  a50851:	62 f2 3d 48 7f fb    	vpermt2ps zmm7,zmm8,zmm3
  a50857:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm7
  a5085e:	07 
  a5085f:	62 61 7c 48 10 57 1a 	vmovups zmm26,ZMMWORD PTR [rdi+0x680]
  a50866:	62 f1 7c 48 10 77 1b 	vmovups zmm6,ZMMWORD PTR [rdi+0x6c0]
  a5086d:	62 91 7c 48 28 fa    	vmovaps zmm7,zmm26
  a50873:	62 f2 3d 48 7f fe    	vpermt2ps zmm7,zmm8,zmm6
  a50879:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm7
  a50880:	14 
  a50881:	62 61 7c 48 10 4f 0e 	vmovups zmm25,ZMMWORD PTR [rdi+0x380]
  a50888:	62 f1 7c 48 10 7f 0f 	vmovups zmm7,ZMMWORD PTR [rdi+0x3c0]
  a5088f:	62 01 7c 48 28 e1    	vmovaps zmm28,zmm25
  a50895:	62 62 3d 48 7f e7    	vpermt2ps zmm28,zmm8,zmm7
  a5089b:	62 61 7c 48 10 6f 08 	vmovups zmm29,ZMMWORD PTR [rdi+0x200]
  a508a2:	62 71 7c 48 10 4f 09 	vmovups zmm9,ZMMWORD PTR [rdi+0x240]
  a508a9:	62 52 15 40 77 c1    	vpermi2ps zmm8,zmm29,zmm9
  a508af:	62 42 05 40 7f e9    	vpermt2ps zmm29,zmm31,zmm9
  a508b5:	62 62 05 40 7f d6    	vpermt2ps zmm26,zmm31,zmm6
  a508bb:	62 62 05 40 7f cf    	vpermt2ps zmm25,zmm31,zmm7
  a508c1:	62 72 05 40 7f f0    	vpermt2ps zmm14,zmm31,zmm0
  a508c7:	62 71 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm14
  a508ce:	10 
  a508cf:	62 72 05 40 7f fa    	vpermt2ps zmm15,zmm31,zmm2
  a508d5:	62 51 7c 48 28 cf    	vmovaps zmm9,zmm15
  a508db:	62 71 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm15
  a508e2:	0a 
  a508e3:	62 d1 7c 48 28 f5    	vmovaps zmm6,zmm13
  a508e9:	62 f2 05 40 7f f5    	vpermt2ps zmm6,zmm31,zmm5
  a508ef:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm6
  a508f6:	0e 
  a508f7:	62 b1 7c 48 28 eb    	vmovaps zmm5,zmm19
  a508fd:	62 f2 05 40 7f e9    	vpermt2ps zmm5,zmm31,zmm1
  a50903:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm5
  a5090a:	0f 
  a5090b:	62 e2 05 40 7f c4    	vpermt2ps zmm16,zmm31,zmm4
  a50911:	62 e1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm16
  a50918:	01 
  a50919:	62 72 05 40 7f d3    	vpermt2ps zmm10,zmm31,zmm3
  a5091f:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm10
  a50926:	09 
  a50927:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x80]
  a5092e:	fe 
  a5092f:	62 b2 05 40 7f c6    	vpermt2ps zmm0,zmm31,zmm22
  a50935:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a5093c:	fe 
  a5093d:	62 81 7c 48 28 de    	vmovaps zmm19,zmm30
  a50943:	62 b1 0c 40 5c c4    	vsubps zmm0,zmm30,zmm20
  a50949:	62 b1 3c 40 5c c9    	vsubps zmm1,zmm24,zmm17
  a5094f:	62 e2 7d 48 18 35 ff 	vbroadcastss zmm22,DWORD PTR [rip+0xffffffffff624dff]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a50956:	4d 62 ff 
  a50959:	62 31 74 48 59 fe    	vmulps zmm15,zmm1,zmm22
  a5095f:	62 f2 7d 48 18 15 37 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff624a37]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a50966:	4a 62 ff 
  a50969:	62 72 7d 48 bc fa    	vfnmadd231ps zmm15,zmm0,zmm2
  a5096f:	62 21 7c 48 59 f6    	vmulps zmm30,zmm0,zmm22
  a50975:	62 62 6d 48 b8 f1    	vfmadd231ps zmm30,zmm2,zmm1
  a5097b:	62 91 1c 48 5c c5    	vsubps zmm0,zmm12,zmm29
  a50981:	62 91 2c 40 5c c9    	vsubps zmm1,zmm26,zmm25
  a50987:	62 31 74 48 59 ee    	vmulps zmm13,zmm1,zmm22
  a5098d:	62 72 7d 48 bc ea    	vfnmadd231ps zmm13,zmm0,zmm2
  a50993:	62 b1 7c 48 59 c6    	vmulps zmm0,zmm0,zmm22
  a50999:	62 f2 6d 48 b8 c1    	vfmadd231ps zmm0,zmm2,zmm1
  a5099f:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm0
  a509a6:	12 
  a509a7:	62 d1 0c 48 5c c9    	vsubps zmm1,zmm14,zmm9
  a509ad:	62 f1 4c 48 5c ed    	vsubps zmm5,zmm6,zmm5
  a509b3:	62 b1 54 48 59 e6    	vmulps zmm4,zmm5,zmm22
  a509b9:	62 f2 75 48 bc e2    	vfnmadd231ps zmm4,zmm1,zmm2
  a509bf:	62 a1 74 48 59 d6    	vmulps zmm18,zmm1,zmm22
  a509c5:	62 e2 6d 48 b8 d5    	vfmadd231ps zmm18,zmm2,zmm5
  a509cb:	62 e1 7c 48 10 6c 24 	vmovups zmm21,ZMMWORD PTR [rsp+0x200]
  a509d2:	08 
  a509d3:	62 b1 24 40 5c ed    	vsubps zmm5,zmm27,zmm21
  a509d9:	62 71 7c 48 10 74 24 	vmovups zmm14,ZMMWORD PTR [rsp+0x100]
  a509e0:	04 
  a509e1:	62 b1 0c 48 5c ff    	vsubps zmm7,zmm14,zmm23
  a509e7:	62 31 44 48 59 d6    	vmulps zmm10,zmm7,zmm22
  a509ed:	62 72 55 48 bc d2    	vfnmadd231ps zmm10,zmm5,zmm2
  a509f3:	62 b1 54 48 59 c6    	vmulps zmm0,zmm5,zmm22
  a509f9:	62 f2 6d 48 b8 c7    	vfmadd231ps zmm0,zmm2,zmm7
  a509ff:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm0
  a50a06:	0b 
  a50a07:	62 71 7c 48 10 5c 24 	vmovups zmm11,ZMMWORD PTR [rsp+0x540]
  a50a0e:	15 
  a50a0f:	62 d1 24 48 5c f8    	vsubps zmm7,zmm11,zmm8
  a50a15:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp+0x500]
  a50a1c:	14 
  a50a1d:	62 01 34 48 5c fc    	vsubps zmm31,zmm9,zmm28
  a50a23:	62 a1 04 40 59 c6    	vmulps zmm16,zmm31,zmm22
  a50a29:	62 e2 45 48 bc c2    	vfnmadd231ps zmm16,zmm7,zmm2
  a50a2f:	62 b1 44 48 59 c6    	vmulps zmm0,zmm7,zmm22
  a50a35:	62 92 6d 48 b8 c7    	vfmadd231ps zmm0,zmm2,zmm31
  a50a3b:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm0
  a50a42:	11 
  a50a43:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0x140]
  a50a4a:	05 
  a50a4b:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp-0x40]
  a50a52:	ff 
  a50a53:	62 f1 44 48 5c c3    	vsubps zmm0,zmm7,zmm3
  a50a59:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x180]
  a50a60:	06 
  a50a61:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x80]
  a50a68:	02 
  a50a69:	62 f1 54 48 5c ce    	vsubps zmm1,zmm5,zmm6
  a50a6f:	62 21 74 48 59 fe    	vmulps zmm31,zmm1,zmm22
  a50a75:	62 62 7d 48 bc fa    	vfnmadd231ps zmm31,zmm0,zmm2
  a50a7b:	62 b1 7c 48 59 c6    	vmulps zmm0,zmm0,zmm22
  a50a81:	62 f2 75 48 b8 c2    	vfmadd231ps zmm0,zmm1,zmm2
  a50a87:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm0
  a50a8e:	13 
  a50a8f:	62 f1 54 48 58 c6    	vaddps zmm0,zmm5,zmm6
  a50a95:	62 f1 44 48 58 cb    	vaddps zmm1,zmm7,zmm3
  a50a9b:	62 b1 0c 48 58 d7    	vaddps zmm2,zmm14,zmm23
  a50aa1:	62 a1 24 40 58 fd    	vaddps zmm23,zmm27,zmm21
  a50aa7:	62 01 34 48 58 e4    	vaddps zmm28,zmm9,zmm28
  a50aad:	62 51 24 48 58 c0    	vaddps zmm8,zmm11,zmm8
  a50ab3:	62 b1 64 40 58 f4    	vaddps zmm6,zmm19,zmm20
  a50ab9:	62 a1 3c 40 58 e1    	vaddps zmm20,zmm24,zmm17
  a50abf:	62 91 1c 48 58 fd    	vaddps zmm7,zmm12,zmm29
  a50ac5:	62 91 2c 40 58 e9    	vaddps zmm5,zmm26,zmm25
  a50acb:	62 62 7d 48 18 0d 6f 	vbroadcastss zmm25,DWORD PTR [rip+0xffffffffff624b6f]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a50ad2:	4b 62 ff 
  a50ad5:	62 01 7c 48 28 c1    	vmovaps zmm24,zmm25
  a50adb:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0xc0]
  a50ae2:	03 
  a50ae3:	62 62 6d 48 ac c3    	vfnmadd213ps zmm24,zmm2,zmm3
  a50ae9:	62 61 64 48 58 d2    	vaddps zmm26,zmm3,zmm2
  a50aef:	62 72 7d 48 18 25 ef 	vbroadcastss zmm12,DWORD PTR [rip+0xffffffffff624bef]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a50af6:	4b 62 ff 
  a50af9:	62 f2 1d 48 b8 da    	vfmadd231ps zmm3,zmm12,zmm2
  a50aff:	62 31 2c 40 58 cf    	vaddps zmm9,zmm26,zmm23
  a50b05:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x740],zmm9
  a50b0c:	1d 
  a50b0d:	62 42 45 40 b8 c4    	vfmadd231ps zmm24,zmm23,zmm12
  a50b13:	62 b2 35 40 bc df    	vfnmadd231ps zmm3,zmm25,zmm23
  a50b19:	62 e1 7c 48 28 eb    	vmovaps zmm21,zmm3
  a50b1f:	62 91 7c 48 28 d1    	vmovaps zmm2,zmm25
  a50b25:	62 71 7c 48 10 74 24 	vmovups zmm14,ZMMWORD PTR [rsp+0x1c0]
  a50b2c:	07 
  a50b2d:	62 d2 1d 40 ac d6    	vfnmadd213ps zmm2,zmm28,zmm14
  a50b33:	62 81 0c 48 58 fc    	vaddps zmm23,zmm14,zmm28
  a50b39:	62 12 1d 48 b8 f4    	vfmadd231ps zmm14,zmm12,zmm28
  a50b3f:	62 41 44 40 58 d8    	vaddps zmm27,zmm23,zmm8
  a50b45:	62 61 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm27
  a50b4c:	0c 
  a50b4d:	62 d2 3d 48 b8 d4    	vfmadd231ps zmm2,zmm8,zmm12
  a50b53:	62 52 35 40 bc f0    	vfnmadd231ps zmm14,zmm25,zmm8
  a50b59:	62 11 7c 48 28 c1    	vmovaps zmm8,zmm25
  a50b5f:	62 e1 7c 48 10 0c 24 	vmovups zmm17,ZMMWORD PTR [rsp]
  a50b66:	62 32 7d 48 ac c1    	vfnmadd213ps zmm8,zmm0,zmm17
  a50b6c:	62 e1 74 40 58 f8    	vaddps zmm23,zmm17,zmm0
  a50b72:	62 e2 1d 48 b8 c8    	vfmadd231ps zmm17,zmm12,zmm0
  a50b78:	62 f1 44 40 58 c1    	vaddps zmm0,zmm23,zmm1
  a50b7e:	62 52 75 48 b8 c4    	vfmadd231ps zmm8,zmm1,zmm12
  a50b84:	62 e2 35 40 bc c9    	vfnmadd231ps zmm17,zmm25,zmm1
  a50b8a:	62 c1 5c 48 58 f8    	vaddps zmm23,zmm4,zmm8
  a50b90:	62 f1 3c 48 5c cc    	vsubps zmm1,zmm8,zmm4
  a50b96:	62 91 04 48 58 d8    	vaddps zmm3,zmm15,zmm24
  a50b9c:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x700],zmm3
  a50ba3:	1c 
  a50ba4:	62 d1 3c 40 5c df    	vsubps zmm3,zmm24,zmm15
  a50baa:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm3
  a50bb1:	0d 
  a50bb2:	62 f1 14 48 58 e2    	vaddps zmm4,zmm13,zmm2
  a50bb8:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x6c0],zmm4
  a50bbf:	1b 
  a50bc0:	62 d1 6c 48 5c d5    	vsubps zmm2,zmm2,zmm13
  a50bc6:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm2
  a50bcd:	05 
  a50bce:	62 72 7d 48 18 05 88 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff624888]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a50bd5:	48 62 ff 
  a50bd8:	62 61 64 48 58 d2    	vaddps zmm26,zmm3,zmm2
  a50bde:	62 91 74 48 58 d2    	vaddps zmm2,zmm1,zmm26
  a50be4:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm2
  a50beb:	ff 
  a50bec:	62 62 3d 48 ac d1    	vfnmadd213ps zmm26,zmm8,zmm1
  a50bf2:	62 91 7c 48 28 c9    	vmovaps zmm1,zmm25
  a50bf8:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x40]
  a50bff:	01 
  a50c00:	62 f2 5d 40 ac cb    	vfnmadd213ps zmm1,zmm20,zmm3
  a50c06:	62 d2 4d 48 b8 cc    	vfmadd231ps zmm1,zmm6,zmm12
  a50c0c:	62 41 74 48 5c e2    	vsubps zmm28,zmm1,zmm10
  a50c12:	62 41 74 48 58 c2    	vaddps zmm24,zmm1,zmm10
  a50c18:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x380]
  a50c1f:	0e 
  a50c20:	62 f1 74 48 58 54 24 	vaddps zmm2,zmm1,ZMMWORD PTR [rsp+0x3c0]
  a50c27:	0f 
  a50c28:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x400]
  a50c2f:	10 
  a50c30:	62 61 74 48 58 6c 24 	vaddps zmm29,zmm1,ZMMWORD PTR [rsp+0x280]
  a50c37:	0a 
  a50c38:	62 91 7c 48 28 e1    	vmovaps zmm4,zmm25
  a50c3e:	62 e1 7c 48 10 5c 24 	vmovups zmm19,ZMMWORD PTR [rsp-0x80]
  a50c45:	fe 
  a50c46:	62 b2 6d 48 ac e3    	vfnmadd213ps zmm4,zmm2,zmm19
  a50c4c:	62 f1 64 40 58 ca    	vaddps zmm1,zmm19,zmm2
  a50c52:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm1
  a50c59:	0a 
  a50c5a:	62 c2 6d 48 b8 dc    	vfmadd231ps zmm19,zmm2,zmm12
  a50c60:	62 51 7c 48 28 dc    	vmovaps zmm11,zmm12
  a50c66:	62 72 5d 40 a8 db    	vfmadd213ps zmm11,zmm20,zmm3
  a50c6c:	62 f1 7c 48 28 cb    	vmovaps zmm1,zmm3
  a50c72:	62 12 4d 48 bc d9    	vfnmadd231ps zmm11,zmm6,zmm25
  a50c78:	62 d1 7c 48 28 dc    	vmovaps zmm3,zmm12
  a50c7e:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x240]
  a50c85:	09 
  a50c86:	62 f2 55 48 a8 da    	vfmadd213ps zmm3,zmm5,zmm2
  a50c8c:	62 92 45 48 bc d9    	vfnmadd231ps zmm3,zmm7,zmm25
  a50c92:	62 82 15 40 bc d9    	vfnmadd231ps zmm19,zmm29,zmm25
  a50c98:	62 62 55 48 ac ca    	vfnmadd213ps zmm25,zmm5,zmm2
  a50c9e:	62 42 45 48 b8 cc    	vfmadd231ps zmm25,zmm7,zmm12
  a50ca4:	62 a1 34 40 5c f0    	vsubps zmm22,zmm25,zmm16
  a50caa:	62 21 34 40 58 c8    	vaddps zmm25,zmm25,zmm16
  a50cb0:	62 11 34 48 58 eb    	vaddps zmm13,zmm9,zmm27
  a50cb6:	62 51 7c 48 58 cd    	vaddps zmm9,zmm0,zmm13
  a50cbc:	62 71 7c 48 11 0c 24 	vmovups ZMMWORD PTR [rsp],zmm9
  a50cc3:	62 72 3d 48 ac e8    	vfnmadd213ps zmm13,zmm8,zmm0
  a50cc9:	62 b1 74 48 58 c4    	vaddps zmm0,zmm1,zmm20
  a50ccf:	62 e1 7c 48 58 e6    	vaddps zmm20,zmm0,zmm6
  a50cd5:	62 f1 6c 48 58 c5    	vaddps zmm0,zmm2,zmm5
  a50cdb:	62 71 7c 48 58 d7    	vaddps zmm10,zmm0,zmm7
  a50ce1:	62 b1 6c 40 58 d1    	vaddps zmm2,zmm18,zmm17
  a50ce7:	62 b1 74 40 5c fa    	vsubps zmm7,zmm17,zmm18
  a50ced:	62 31 0c 40 58 cd    	vaddps zmm9,zmm30,zmm21
  a50cf3:	62 81 54 40 5c ce    	vsubps zmm17,zmm21,zmm30
  a50cf9:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x480]
  a50d00:	12 
  a50d01:	62 41 74 48 58 f6    	vaddps zmm30,zmm1,zmm14
  a50d07:	62 f1 0c 48 5c c1    	vsubps zmm0,zmm14,zmm1
  a50d0d:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm0
  a50d14:	01 
  a50d15:	62 81 34 48 58 c6    	vaddps zmm16,zmm9,zmm30
  a50d1b:	62 c1 7c 48 28 d0    	vmovaps zmm18,zmm8
  a50d21:	62 e2 7d 40 ac d2    	vfnmadd213ps zmm18,zmm16,zmm2
  a50d27:	62 f2 7d 48 18 35 a3 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff6245a3]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a50d2e:	45 62 ff 
  a50d31:	62 71 7c 48 10 7c 24 	vmovups zmm15,ZMMWORD PTR [rsp+0x2c0]
  a50d38:	0b 
  a50d39:	62 d1 24 48 5c ef    	vsubps zmm5,zmm11,zmm15
  a50d3f:	62 e1 7c 48 10 6c 24 	vmovups zmm21,ZMMWORD PTR [rsp+0x440]
  a50d46:	11 
  a50d47:	62 b1 64 48 5c cd    	vsubps zmm1,zmm3,zmm21
  a50d4d:	62 71 54 48 5c f1    	vsubps zmm14,zmm5,zmm1
  a50d53:	62 71 0c 48 59 f6    	vmulps zmm14,zmm14,zmm6
  a50d59:	62 41 6c 40 5c de    	vsubps zmm27,zmm18,zmm14
  a50d5f:	62 61 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm27
  a50d66:	06 
  a50d67:	62 51 6c 40 58 f6    	vaddps zmm14,zmm18,zmm14
  a50d6d:	62 71 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm14
  a50d74:	08 
  a50d75:	62 71 74 40 58 f0    	vaddps zmm14,zmm17,zmm0
  a50d7b:	62 c1 44 48 58 d6    	vaddps zmm18,zmm7,zmm14
  a50d81:	62 e1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm18
  a50d88:	03 
  a50d89:	62 72 3d 48 ac f7    	vfnmadd213ps zmm14,zmm8,zmm7
  a50d8f:	62 51 24 48 58 df    	vaddps zmm11,zmm11,zmm15
  a50d95:	62 b1 64 48 58 dd    	vaddps zmm3,zmm3,zmm21
  a50d9b:	62 b1 6c 48 58 c0    	vaddps zmm0,zmm2,zmm16
  a50da1:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm0
  a50da8:	15 
  a50da9:	62 d1 5c 40 5c c2    	vsubps zmm0,zmm20,zmm10
  a50daf:	62 f1 7c 48 59 fe    	vmulps zmm7,zmm0,zmm6
  a50db5:	62 61 14 48 5c df    	vsubps zmm27,zmm13,zmm7
  a50dbb:	62 d1 44 48 58 c5    	vaddps zmm0,zmm7,zmm13
  a50dc1:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm0
  a50dc8:	02 
  a50dc9:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x700]
  a50dd0:	1c 
  a50dd1:	62 e1 7c 48 10 54 24 	vmovups zmm18,ZMMWORD PTR [rsp+0x6c0]
  a50dd8:	1b 
  a50dd9:	62 b1 6c 48 58 fa    	vaddps zmm7,zmm2,zmm18
  a50ddf:	62 51 7c 48 28 e8    	vmovaps zmm13,zmm8
  a50de5:	62 32 45 48 ac ef    	vfnmadd213ps zmm13,zmm7,zmm23
  a50deb:	62 31 1c 40 5c fe    	vsubps zmm15,zmm28,zmm22
  a50df1:	62 71 04 48 59 fe    	vmulps zmm15,zmm15,zmm6
  a50df7:	62 d1 14 48 58 c7    	vaddps zmm0,zmm13,zmm15
  a50dfd:	62 51 14 48 5c ef    	vsubps zmm13,zmm13,zmm15
  a50e03:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm13
  a50e0a:	14 
  a50e0b:	62 f1 44 40 58 ff    	vaddps zmm7,zmm23,zmm7
  a50e11:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm7
  a50e18:	fe 
  a50e19:	62 f1 24 48 5c fb    	vsubps zmm7,zmm11,zmm3
  a50e1f:	62 f1 44 48 59 fe    	vmulps zmm7,zmm7,zmm6
  a50e25:	62 71 0c 48 5c ef    	vsubps zmm13,zmm14,zmm7
  a50e2b:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm13
  a50e32:	07 
  a50e33:	62 f1 0c 48 58 ff    	vaddps zmm7,zmm14,zmm7
  a50e39:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm7
  a50e40:	0b 
  a50e41:	62 91 3c 40 5c f9    	vsubps zmm7,zmm24,zmm25
  a50e47:	62 f1 44 48 59 fe    	vmulps zmm7,zmm7,zmm6
  a50e4d:	62 71 2c 40 58 ff    	vaddps zmm15,zmm26,zmm7
  a50e53:	62 f1 2c 40 5c ff    	vsubps zmm7,zmm26,zmm7
  a50e59:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm7
  a50e60:	04 
  a50e61:	62 d2 15 40 b8 e4    	vfmadd231ps zmm4,zmm29,zmm12
  a50e67:	62 71 14 40 58 64 24 	vaddps zmm12,zmm29,ZMMWORD PTR [rsp+0x280]
  a50e6e:	0a 
  a50e6f:	62 51 5c 40 58 ea    	vaddps zmm13,zmm20,zmm10
  a50e75:	62 a1 1c 40 58 c6    	vaddps zmm16,zmm28,zmm22
  a50e7b:	62 31 6c 48 5c f2    	vsubps zmm14,zmm2,zmm18
  a50e81:	62 11 34 48 5c ce    	vsubps zmm9,zmm9,zmm30
  a50e87:	62 f1 54 48 58 d1    	vaddps zmm2,zmm5,zmm1
  a50e8d:	62 91 5c 48 5c ff    	vsubps zmm7,zmm4,zmm31
  a50e93:	62 91 5c 48 58 e7    	vaddps zmm4,zmm4,zmm31
  a50e99:	62 01 3c 40 58 c9    	vaddps zmm25,zmm24,zmm25
  a50e9f:	62 81 5c 48 58 d1    	vaddps zmm18,zmm4,zmm25
  a50ea5:	62 62 3d 48 ac cc    	vfnmadd213ps zmm25,zmm8,zmm4
  a50eab:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x340]
  a50eb2:	0d 
  a50eb3:	62 f1 74 48 5c 64 24 	vsubps zmm4,zmm1,ZMMWORD PTR [rsp+0x140]
  a50eba:	05 
  a50ebb:	62 41 1c 48 58 f5    	vaddps zmm30,zmm12,zmm13
  a50ec1:	62 52 3d 48 ac ec    	vfnmadd213ps zmm13,zmm8,zmm12
  a50ec7:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x740]
  a50ece:	1d 
  a50ecf:	62 71 74 48 5c 64 24 	vsubps zmm12,zmm1,ZMMWORD PTR [rsp+0x300]
  a50ed6:	0c 
  a50ed7:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x4c0]
  a50ede:	13 
  a50edf:	62 e1 64 40 5c e1    	vsubps zmm20,zmm19,zmm1
  a50ee5:	62 e1 64 40 58 e9    	vaddps zmm21,zmm19,zmm1
  a50eeb:	62 f1 24 48 58 db    	vaddps zmm3,zmm11,zmm3
  a50ef1:	62 51 7c 48 28 d8    	vmovaps zmm11,zmm8
  a50ef7:	62 c1 7c 48 28 f0    	vmovaps zmm22,zmm8
  a50efd:	62 32 65 48 ac c5    	vfnmadd213ps zmm8,zmm3,zmm21
  a50f03:	62 61 54 40 58 c3    	vaddps zmm24,zmm21,zmm3
  a50f09:	62 f1 34 48 59 de    	vmulps zmm3,zmm9,zmm6
  a50f0f:	62 a2 6d 48 ac f4    	vfnmadd213ps zmm22,zmm2,zmm20
  a50f15:	62 a1 64 48 58 ee    	vaddps zmm21,zmm3,zmm22
  a50f1b:	62 61 4c 40 5c eb    	vsubps zmm29,zmm22,zmm3
  a50f21:	62 f1 74 40 5c 5c 24 	vsubps zmm3,zmm17,ZMMWORD PTR [rsp+0x40]
  a50f28:	01 
  a50f29:	62 71 0c 48 59 ce    	vmulps zmm9,zmm14,zmm6
  a50f2f:	62 f1 5c 48 59 e6    	vmulps zmm4,zmm4,zmm6
  a50f35:	62 71 1c 48 59 f6    	vmulps zmm14,zmm12,zmm6
  a50f3b:	62 f1 64 48 59 de    	vmulps zmm3,zmm3,zmm6
  a50f41:	62 72 7d 40 ac df    	vfnmadd213ps zmm11,zmm16,zmm7
  a50f47:	62 71 5c 40 58 e2    	vaddps zmm12,zmm20,zmm2
  a50f4d:	62 71 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm12
  a50f54:	13 
  a50f55:	62 51 14 48 58 d6    	vaddps zmm10,zmm13,zmm14
  a50f5b:	62 c1 14 48 5c fe    	vsubps zmm23,zmm13,zmm14
  a50f61:	62 51 24 48 5c e9    	vsubps zmm13,zmm11,zmm9
  a50f67:	62 c1 24 48 58 f1    	vaddps zmm22,zmm11,zmm9
  a50f6d:	62 f1 7c 48 28 35 09 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff676009]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a50f74:	60 67 ff 
  a50f77:	62 b1 44 48 58 d0    	vaddps zmm2,zmm7,zmm16
  a50f7d:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm2
  a50f84:	01 
  a50f85:	62 c1 64 48 58 c0    	vaddps zmm16,zmm3,zmm8
  a50f8b:	62 61 3c 48 5c d3    	vsubps zmm26,zmm8,zmm3
  a50f91:	62 f1 34 40 5c ec    	vsubps zmm5,zmm25,zmm4
  a50f97:	62 61 34 40 58 e4    	vaddps zmm28,zmm25,zmm4
  a50f9d:	62 f1 7c 48 10 0c 24 	vmovups zmm1,ZMMWORD PTR [rsp]
  a50fa4:	62 f1 7c 48 28 d9    	vmovaps zmm3,zmm1
  a50faa:	62 f2 4d 48 7f d8    	vpermt2ps zmm3,zmm6,zmm0
  a50fb0:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm3
  a50fb7:	05 
  a50fb8:	62 61 7c 48 28 0d fe 	vmovaps zmm25,ZMMWORD PTR [rip+0xffffffffff675ffe]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a50fbf:	5f 67 ff 
  a50fc2:	62 f2 35 40 7f c8    	vpermt2ps zmm1,zmm25,zmm0
  a50fc8:	62 f1 7c 48 11 0c 24 	vmovups ZMMWORD PTR [rsp],zmm1
  a50fcf:	62 e1 7c 48 10 4c 24 	vmovups zmm17,ZMMWORD PTR [rsp+0x180]
  a50fd6:	06 
  a50fd7:	62 b1 7c 48 28 c1    	vmovaps zmm0,zmm17
  a50fdd:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x40]
  a50fe4:	ff 
  a50fe5:	62 f2 4d 48 7f c1    	vpermt2ps zmm0,zmm6,zmm1
  a50feb:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm0
  a50ff2:	12 
  a50ff3:	62 e2 35 40 7f c9    	vpermt2ps zmm17,zmm25,zmm1
  a50ff9:	62 e1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm17
  a51000:	06 
  a51001:	62 c1 7c 48 28 df    	vmovaps zmm19,zmm15
  a51007:	62 82 4d 48 7f db    	vpermt2ps zmm19,zmm6,zmm27
  a5100d:	62 12 35 40 7f fb    	vpermt2ps zmm15,zmm25,zmm27
  a51013:	62 71 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm15
  a5101a:	ff 
  a5101b:	62 71 7c 48 10 74 24 	vmovups zmm14,ZMMWORD PTR [rsp+0xc0]
  a51022:	03 
  a51023:	62 d1 7c 48 28 ce    	vmovaps zmm1,zmm14
  a51029:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x200]
  a51030:	08 
  a51031:	62 f2 4d 48 7f cb    	vpermt2ps zmm1,zmm6,zmm3
  a51037:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm1
  a5103e:	09 
  a5103f:	62 72 35 40 7f f3    	vpermt2ps zmm14,zmm25,zmm3
  a51045:	62 71 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm14
  a5104c:	03 
  a5104d:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x1c0]
  a51054:	07 
  a51055:	62 61 7c 48 28 f8    	vmovaps zmm31,zmm0
  a5105b:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x540]
  a51062:	15 
  a51063:	62 62 4d 48 7f f9    	vpermt2ps zmm31,zmm6,zmm1
  a51069:	62 f2 35 40 7f c1    	vpermt2ps zmm0,zmm25,zmm1
  a5106f:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm0
  a51076:	07 
  a51077:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x80]
  a5107e:	02 
  a5107f:	62 f1 7c 48 28 c8    	vmovaps zmm1,zmm0
  a51085:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x500]
  a5108c:	14 
  a5108d:	62 f2 4d 48 7f cb    	vpermt2ps zmm1,zmm6,zmm3
  a51093:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x680],zmm1
  a5109a:	1a 
  a5109b:	62 f2 35 40 7f c3    	vpermt2ps zmm0,zmm25,zmm3
  a510a1:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm0
  a510a8:	02 
  a510a9:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x80]
  a510b0:	fe 
  a510b1:	62 e1 7c 48 28 e0    	vmovaps zmm20,zmm0
  a510b7:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x2c0]
  a510be:	0b 
  a510bf:	62 e2 4d 48 7f e1    	vpermt2ps zmm20,zmm6,zmm1
  a510c5:	62 f2 35 40 7f c1    	vpermt2ps zmm0,zmm25,zmm1
  a510cb:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a510d2:	fe 
  a510d3:	62 11 7c 48 28 c6    	vmovaps zmm8,zmm30
  a510d9:	62 11 7c 48 28 ce    	vmovaps zmm9,zmm30
  a510df:	62 52 35 40 7f cd    	vpermt2ps zmm9,zmm25,zmm13
  a510e5:	62 d1 7c 48 28 cd    	vmovaps zmm1,zmm13
  a510eb:	62 b1 7c 48 28 c5    	vmovaps zmm0,zmm21
  a510f1:	62 b2 35 40 7f c2    	vpermt2ps zmm0,zmm25,zmm18
  a510f7:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm0
  a510fe:	08 
  a510ff:	62 71 7c 48 28 ed    	vmovaps zmm13,zmm5
  a51105:	62 61 7c 48 28 f5    	vmovaps zmm30,zmm5
  a5110b:	62 52 35 40 7f ea    	vpermt2ps zmm13,zmm25,zmm10
  a51111:	62 51 7c 48 28 fa    	vmovaps zmm15,zmm10
  a51117:	62 91 7c 48 28 e0    	vmovaps zmm4,zmm24
  a5111d:	62 11 7c 48 28 d0    	vmovaps zmm10,zmm24
  a51123:	62 12 35 40 7f d5    	vpermt2ps zmm10,zmm25,zmm29
  a51129:	62 91 7c 48 28 dd    	vmovaps zmm3,zmm29
  a5112f:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0xac0],zmm10
  a51136:	2b 
  a51137:	62 b1 7c 48 28 e8    	vmovaps zmm5,zmm16
  a5113d:	62 21 7c 48 28 c0    	vmovaps zmm24,zmm16
  a51143:	62 d2 35 40 7f ec    	vpermt2ps zmm5,zmm25,zmm12
  a51149:	62 b1 7c 48 28 c7    	vmovaps zmm0,zmm23
  a5114f:	62 b2 35 40 7f c6    	vpermt2ps zmm0,zmm25,zmm22
  a51155:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x640],zmm0
  a5115c:	19 
  a5115d:	62 e1 7c 48 28 ca    	vmovaps zmm17,zmm2
  a51163:	62 82 35 40 7f ca    	vpermt2ps zmm17,zmm25,zmm26
  a51169:	c4 41 20 57 db       	vxorps xmm11,xmm11,xmm11
  a5116e:	62 01 7c 48 28 ec    	vmovaps zmm29,zmm28
  a51174:	62 42 35 40 7f eb    	vpermt2ps zmm29,zmm25,zmm11
  a5117a:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x100]
  a51181:	04 
  a51182:	62 61 7c 48 28 d8    	vmovaps zmm27,zmm0
  a51188:	62 d2 35 40 7f c3    	vpermt2ps zmm0,zmm25,zmm11
  a5118e:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm0
  a51195:	04 
  a51196:	62 72 4d 48 7f c1    	vpermt2ps zmm8,zmm6,zmm1
  a5119c:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xa00],zmm8
  a511a3:	28 
  a511a4:	62 a2 4d 48 7f ea    	vpermt2ps zmm21,zmm6,zmm18
  a511aa:	62 e1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x780],zmm21
  a511b1:	1e 
  a511b2:	62 42 4d 48 7f f7    	vpermt2ps zmm30,zmm6,zmm15
  a511b8:	62 61 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x9c0],zmm30
  a511bf:	27 
  a511c0:	62 f2 4d 48 7f e3    	vpermt2ps zmm4,zmm6,zmm3
  a511c6:	62 f1 7c 48 28 cc    	vmovaps zmm1,zmm4
  a511cc:	62 62 4d 48 7f 44 24 	vpermt2ps zmm24,zmm6,ZMMWORD PTR [rsp+0x4c0]
  a511d3:	13 
  a511d4:	62 b1 7c 48 28 d7    	vmovaps zmm2,zmm23
  a511da:	62 b2 4d 48 7f d6    	vpermt2ps zmm2,zmm6,zmm22
  a511e0:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x7c0],zmm2
  a511e7:	1f 
  a511e8:	62 e1 7c 48 10 7c 24 	vmovups zmm23,ZMMWORD PTR [rsp+0x40]
  a511ef:	01 
  a511f0:	62 82 4d 48 7f fa    	vpermt2ps zmm23,zmm6,zmm26
  a511f6:	62 e1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm23
  a511fd:	01 
  a511fe:	62 42 4d 48 7f db    	vpermt2ps zmm27,zmm6,zmm11
  a51204:	62 91 7c 48 28 dc    	vmovaps zmm3,zmm28
  a5120a:	62 d2 4d 48 7f db    	vpermt2ps zmm3,zmm6,zmm11
  a51210:	62 e1 7c 48 10 34 24 	vmovups zmm22,ZMMWORD PTR [rsp]
  a51217:	62 e1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x600],zmm22
  a5121e:	18 
  a5121f:	62 f1 7c 48 28 25 17 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff675d17]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a51226:	5d 67 ff 
  a51229:	62 e2 5d 48 7f 74 24 	vpermt2ps zmm22,zmm4,ZMMWORD PTR [rsp+0x180]
  a51230:	06 
  a51231:	62 e1 7c 48 11 34 24 	vmovups ZMMWORD PTR [rsp],zmm22
  a51238:	62 e1 7c 48 10 54 24 	vmovups zmm18,ZMMWORD PTR [rsp-0x40]
  a5123f:	ff 
  a51240:	62 e1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm18
  a51247:	17 
  a51248:	62 c2 5d 48 7f d6    	vpermt2ps zmm18,zmm4,zmm14
  a5124e:	62 e1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm18
  a51255:	ff 
  a51256:	62 71 7c 48 10 7c 24 	vmovups zmm15,ZMMWORD PTR [rsp+0x1c0]
  a5125d:	07 
  a5125e:	62 71 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm15
  a51265:	16 
  a51266:	62 72 5d 48 7f 7c 24 	vpermt2ps zmm15,zmm4,ZMMWORD PTR [rsp+0x80]
  a5126d:	02 
  a5126e:	62 71 7c 48 10 5c 24 	vmovups zmm11,ZMMWORD PTR [rsp-0x80]
  a51275:	fe 
  a51276:	62 71 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x800],zmm11
  a5127d:	20 
  a5127e:	62 72 5d 48 7f d8    	vpermt2ps zmm11,zmm4,zmm0
  a51284:	62 71 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm11
  a5128b:	fe 
  a5128c:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0xb40],zmm9
  a51293:	2d 
  a51294:	62 72 5d 48 7f 4c 24 	vpermt2ps zmm9,zmm4,ZMMWORD PTR [rsp+0x200]
  a5129b:	08 
  a5129c:	62 51 7c 48 28 e1    	vmovaps zmm12,zmm9
  a512a2:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x8c0],zmm9
  a512a9:	23 
  a512aa:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0xb00],zmm13
  a512b1:	2c 
  a512b2:	62 52 5d 48 7f ea    	vpermt2ps zmm13,zmm4,zmm10
  a512b8:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x880],zmm13
  a512bf:	22 
  a512c0:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0xa80],zmm5
  a512c7:	2a 
  a512c8:	62 61 7c 48 10 64 24 	vmovups zmm28,ZMMWORD PTR [rsp+0x640]
  a512cf:	19 
  a512d0:	62 92 5d 48 7f ec    	vpermt2ps zmm5,zmm4,zmm28
  a512d6:	62 e1 7c 48 28 c5    	vmovaps zmm16,zmm5
  a512dc:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x840],zmm5
  a512e3:	21 
  a512e4:	62 e1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0xa40],zmm17
  a512eb:	29 
  a512ec:	62 82 5d 48 7f cd    	vpermt2ps zmm17,zmm4,zmm29
  a512f2:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0x140]
  a512f9:	05 
  a512fa:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x980],zmm7
  a51301:	26 
  a51302:	62 71 7c 48 10 74 24 	vmovups zmm14,ZMMWORD PTR [rsp+0x480]
  a51309:	12 
  a5130a:	62 d2 5d 48 7f fe    	vpermt2ps zmm7,zmm4,zmm14
  a51310:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm7
  a51317:	05 
  a51318:	62 21 7c 48 28 cb    	vmovaps zmm25,zmm19
  a5131e:	62 e2 5d 48 7f 5c 24 	vpermt2ps zmm19,zmm4,ZMMWORD PTR [rsp+0x240]
  a51325:	09 
  a51326:	62 e1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x6c0],zmm19
  a5132d:	1b 
  a5132e:	62 91 7c 48 28 f7    	vmovaps zmm6,zmm31
  a51334:	62 01 7c 48 28 d7    	vmovaps zmm26,zmm31
  a5133a:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x680]
  a51341:	1a 
  a51342:	62 d2 5d 48 7f f2    	vpermt2ps zmm6,zmm4,zmm10
  a51348:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x940],zmm6
  a5134f:	25 
  a51350:	62 b1 7c 48 28 ec    	vmovaps zmm5,zmm20
  a51356:	62 92 5d 48 7f eb    	vpermt2ps zmm5,zmm4,zmm27
  a5135c:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x900],zmm5
  a51363:	24 
  a51364:	62 32 5d 48 7f c5    	vpermt2ps zmm8,zmm4,zmm21
  a5136a:	62 d1 7c 48 28 c0    	vmovaps zmm0,zmm8
  a51370:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm8
  a51377:	0c 
  a51378:	62 62 5d 48 7f f1    	vpermt2ps zmm30,zmm4,zmm1
  a5137e:	62 71 7c 48 28 c1    	vmovaps zmm8,zmm1
  a51384:	62 01 7c 48 28 fe    	vmovaps zmm31,zmm30
  a5138a:	62 61 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x740],zmm30
  a51391:	1d 
  a51392:	62 91 7c 48 28 c8    	vmovaps zmm1,zmm24
  a51398:	62 01 7c 48 28 f0    	vmovaps zmm30,zmm24
  a5139e:	62 f2 5d 48 7f ca    	vpermt2ps zmm1,zmm4,zmm2
  a513a4:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x700],zmm1
  a513ab:	1c 
  a513ac:	62 f2 45 40 77 e3    	vpermi2ps zmm4,zmm23,zmm3
  a513b2:	62 e1 7c 48 28 fb    	vmovaps zmm23,zmm3
  a513b8:	62 e1 7c 48 28 2d 3e 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff675a3e]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a513bf:	5a 67 ff 
  a513c2:	62 11 fd 48 15 cf    	vunpckhpd zmm9,zmm0,zmm31
  a513c8:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm9
  a513cf:	0b 
  a513d0:	62 f1 f5 48 15 c4    	vunpckhpd zmm0,zmm1,zmm4
  a513d6:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm0
  a513dd:	11 
  a513de:	62 72 55 40 7f c8    	vpermt2ps zmm9,zmm21,zmm0
  a513e4:	62 21 c5 48 15 fb    	vunpckhpd zmm31,zmm7,zmm19
  a513ea:	62 61 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm31
  a513f1:	0a 
  a513f2:	62 f1 cd 48 15 c5    	vunpckhpd zmm0,zmm6,zmm5
  a513f8:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm0
  a513ff:	10 
  a51400:	62 62 55 40 7f f8    	vpermt2ps zmm31,zmm21,zmm0
  a51406:	62 f1 7c 48 10 52 0d 	vmovups zmm2,ZMMWORD PTR [rdx+0x340]
  a5140d:	62 f1 7c 48 10 4a 0c 	vmovups zmm1,ZMMWORD PTR [rdx+0x300]
  a51414:	62 f1 04 40 59 c1    	vmulps zmm0,zmm31,zmm1
  a5141a:	62 f2 35 48 b8 c2    	vfmadd231ps zmm0,zmm9,zmm2
  a51420:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm0
  a51427:	07 
  a51428:	62 f1 34 48 59 c1    	vmulps zmm0,zmm9,zmm1
  a5142e:	62 92 6d 48 bc c7    	vfnmadd231ps zmm0,zmm2,zmm31
  a51434:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm0
  a5143b:	15 
  a5143c:	62 d1 9d 48 15 cd    	vunpckhpd zmm1,zmm12,zmm13
  a51442:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm1
  a51449:	0f 
  a5144a:	62 b1 fd 40 15 c1    	vunpckhpd zmm0,zmm16,zmm17
  a51450:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm0
  a51457:	0e 
  a51458:	62 f2 55 40 7f c8    	vpermt2ps zmm1,zmm21,zmm0
  a5145e:	62 21 cd 40 15 fa    	vunpckhpd zmm31,zmm22,zmm18
  a51464:	62 d1 85 48 15 c3    	vunpckhpd zmm0,zmm15,zmm11
  a5146a:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm0
  a51471:	0d 
  a51472:	62 c1 7c 48 28 c7    	vmovaps zmm16,zmm15
  a51478:	62 91 7c 48 28 d7    	vmovaps zmm2,zmm31
  a5147e:	62 f2 55 40 7f d0    	vpermt2ps zmm2,zmm21,zmm0
  a51484:	62 f1 7c 48 10 5a 1d 	vmovups zmm3,ZMMWORD PTR [rdx+0x740]
  a5148b:	62 f1 7c 48 10 42 1c 	vmovups zmm0,ZMMWORD PTR [rdx+0x700]
  a51492:	62 e1 6c 48 59 d8    	vmulps zmm19,zmm2,zmm0
  a51498:	62 e2 75 48 b8 db    	vfmadd231ps zmm19,zmm1,zmm3
  a5149e:	62 e1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm19
  a514a5:	14 
  a514a6:	62 f1 74 48 59 c0    	vmulps zmm0,zmm1,zmm0
  a514ac:	62 f2 65 48 bc c2    	vfnmadd231ps zmm0,zmm3,zmm2
  a514b2:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm0
  a514b9:	13 
  a514ba:	62 f1 7c 48 28 05 3c 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff675a3c]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a514c1:	5a 67 ff 
  a514c4:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x980]
  a514cb:	26 
  a514cc:	62 d2 7d 48 7f ee    	vpermt2ps zmm5,zmm0,zmm14
  a514d2:	62 62 7d 48 7f 4c 24 	vpermt2ps zmm25,zmm0,ZMMWORD PTR [rsp+0x240]
  a514d9:	09 
  a514da:	62 42 7d 48 7f d2    	vpermt2ps zmm26,zmm0,zmm10
  a514e0:	62 82 7d 48 7f e3    	vpermt2ps zmm20,zmm0,zmm27
  a514e6:	62 71 7c 48 10 74 24 	vmovups zmm14,ZMMWORD PTR [rsp+0xb40]
  a514ed:	2d 
  a514ee:	62 72 7d 48 7f 74 24 	vpermt2ps zmm14,zmm0,ZMMWORD PTR [rsp+0x200]
  a514f5:	08 
  a514f6:	62 71 7c 48 10 5c 24 	vmovups zmm11,ZMMWORD PTR [rsp+0xb00]
  a514fd:	2c 
  a514fe:	62 72 7d 48 7f 5c 24 	vpermt2ps zmm11,zmm0,ZMMWORD PTR [rsp+0xac0]
  a51505:	2b 
  a51506:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0xa80]
  a5150d:	2a 
  a5150e:	62 92 7d 48 7f f4    	vpermt2ps zmm6,zmm0,zmm28
  a51514:	62 61 7c 48 10 44 24 	vmovups zmm24,ZMMWORD PTR [rsp+0xa40]
  a5151b:	29 
  a5151c:	62 02 7d 48 7f c5    	vpermt2ps zmm24,zmm0,zmm29
  a51522:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x600]
  a51529:	18 
  a5152a:	62 72 7d 48 7f 54 24 	vpermt2ps zmm10,zmm0,ZMMWORD PTR [rsp+0x180]
  a51531:	06 
  a51532:	62 71 7c 48 10 7c 24 	vmovups zmm15,ZMMWORD PTR [rsp+0x5c0]
  a51539:	17 
  a5153a:	62 72 7d 48 7f 7c 24 	vpermt2ps zmm15,zmm0,ZMMWORD PTR [rsp+0xc0]
  a51541:	03 
  a51542:	62 61 7c 48 10 5c 24 	vmovups zmm27,ZMMWORD PTR [rsp+0x580]
  a51549:	16 
  a5154a:	62 62 7d 48 7f 5c 24 	vpermt2ps zmm27,zmm0,ZMMWORD PTR [rsp+0x80]
  a51551:	02 
  a51552:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0x800]
  a51559:	20 
  a5155a:	62 f2 7d 48 7f 7c 24 	vpermt2ps zmm7,zmm0,ZMMWORD PTR [rsp+0x100]
  a51561:	04 
  a51562:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0xa00]
  a51569:	28 
  a5156a:	62 f2 7d 48 7f 4c 24 	vpermt2ps zmm1,zmm0,ZMMWORD PTR [rsp+0x780]
  a51571:	1e 
  a51572:	62 71 7c 48 10 6c 24 	vmovups zmm13,ZMMWORD PTR [rsp+0x9c0]
  a51579:	27 
  a5157a:	62 52 7d 48 7f e8    	vpermt2ps zmm13,zmm0,zmm8
  a51580:	62 91 7c 48 28 de    	vmovaps zmm3,zmm30
  a51586:	62 f2 7d 48 7f 5c 24 	vpermt2ps zmm3,zmm0,ZMMWORD PTR [rsp+0x7c0]
  a5158d:	1f 
  a5158e:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x40]
  a51595:	01 
  a51596:	62 b2 7d 48 7f d7    	vpermt2ps zmm2,zmm0,zmm23
  a5159c:	62 11 d5 48 15 c9    	vunpckhpd zmm9,zmm5,zmm25
  a515a2:	62 61 7c 48 28 f5    	vmovaps zmm30,zmm5
  a515a8:	62 b1 ad 40 15 ec    	vunpckhpd zmm5,zmm26,zmm20
  a515ae:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm5
  a515b5:	16 
  a515b6:	62 d1 7c 48 28 c1    	vmovaps zmm0,zmm9
  a515bc:	62 f2 55 40 7f c5    	vpermt2ps zmm0,zmm21,zmm5
  a515c2:	62 c1 f5 48 15 dd    	vunpckhpd zmm19,zmm1,zmm13
  a515c8:	62 c1 7c 48 28 f5    	vmovaps zmm22,zmm13
  a515ce:	62 71 7c 48 28 c1    	vmovaps zmm8,zmm1
  a515d4:	62 f1 e5 48 15 ea    	vunpckhpd zmm5,zmm3,zmm2
  a515da:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x800],zmm5
  a515e1:	20 
  a515e2:	62 e1 7c 48 28 fb    	vmovaps zmm23,zmm3
  a515e8:	62 e1 7c 48 28 d2    	vmovaps zmm18,zmm2
  a515ee:	62 b1 7c 48 28 cb    	vmovaps zmm1,zmm19
  a515f4:	62 f2 55 40 7f cd    	vpermt2ps zmm1,zmm21,zmm5
  a515fa:	62 f1 7c 48 10 52 04 	vmovups zmm2,ZMMWORD PTR [rdx+0x100]
  a51601:	62 f1 7c 48 10 5a 05 	vmovups zmm3,ZMMWORD PTR [rdx+0x140]
  a51608:	62 f1 74 48 59 ea    	vmulps zmm5,zmm1,zmm2
  a5160e:	62 f2 7d 48 bc eb    	vfnmadd231ps zmm5,zmm0,zmm3
  a51614:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm5
  a5161b:	01 
  a5161c:	62 f1 7c 48 59 c2    	vmulps zmm0,zmm0,zmm2
  a51622:	62 f2 65 48 b8 c1    	vfmadd231ps zmm0,zmm3,zmm1
  a51628:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm0
  a5162f:	09 
  a51630:	62 d1 ad 48 15 ef    	vunpckhpd zmm5,zmm10,zmm15
  a51636:	62 51 7c 48 28 e2    	vmovaps zmm12,zmm10
  a5163c:	62 f1 a5 40 15 cf    	vunpckhpd zmm1,zmm27,zmm7
  a51642:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x7c0],zmm1
  a51649:	1f 
  a5164a:	62 71 7c 48 28 ef    	vmovaps zmm13,zmm7
  a51650:	62 f1 7c 48 28 c5    	vmovaps zmm0,zmm5
  a51656:	62 f2 55 40 7f c1    	vpermt2ps zmm0,zmm21,zmm1
  a5165c:	62 41 8d 48 15 e3    	vunpckhpd zmm28,zmm14,zmm11
  a51662:	62 51 7c 48 28 d3    	vmovaps zmm10,zmm11
  a51668:	62 91 cd 48 15 d0    	vunpckhpd zmm2,zmm6,zmm24
  a5166e:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x780],zmm2
  a51675:	1e 
  a51676:	62 f1 7c 48 28 de    	vmovaps zmm3,zmm6
  a5167c:	62 91 7c 48 28 cc    	vmovaps zmm1,zmm28
  a51682:	62 f2 55 40 7f ca    	vpermt2ps zmm1,zmm21,zmm2
  a51688:	62 f1 7c 48 10 52 15 	vmovups zmm2,ZMMWORD PTR [rdx+0x540]
  a5168f:	62 71 7c 48 10 5a 14 	vmovups zmm11,ZMMWORD PTR [rdx+0x500]
  a51696:	62 41 74 48 59 eb    	vmulps zmm29,zmm1,zmm11
  a5169c:	62 62 7d 48 bc ea    	vfnmadd231ps zmm29,zmm0,zmm2
  a516a2:	62 61 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm29
  a516a9:	08 
  a516aa:	62 d1 7c 48 59 c3    	vmulps zmm0,zmm0,zmm11
  a516b0:	62 f2 6d 48 b8 c1    	vfmadd231ps zmm0,zmm2,zmm1
  a516b6:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm0
  a516bd:	12 
  a516be:	62 91 8d 40 14 c1    	vunpcklpd zmm0,zmm30,zmm25
  a516c4:	62 b1 ad 40 14 fc    	vunpcklpd zmm7,zmm26,zmm20
  a516ca:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm7
  a516d1:	17 
  a516d2:	62 b1 bd 48 14 d6    	vunpcklpd zmm2,zmm8,zmm22
  a516d8:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm2
  a516df:	06 
  a516e0:	62 b1 c5 40 14 f2    	vunpcklpd zmm6,zmm23,zmm18
  a516e6:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x640],zmm6
  a516ed:	19 
  a516ee:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x600],zmm0
  a516f5:	18 
  a516f6:	62 f1 7c 48 28 0d 40 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff675740]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a516fd:	57 67 ff 
  a51700:	62 f2 75 48 7f c7    	vpermt2ps zmm0,zmm1,zmm7
  a51706:	62 f2 75 48 7f d6    	vpermt2ps zmm2,zmm1,zmm6
  a5170c:	62 f1 7c 48 10 72 02 	vmovups zmm6,ZMMWORD PTR [rdx+0x80]
  a51713:	62 f1 7c 48 10 7a 03 	vmovups zmm7,ZMMWORD PTR [rdx+0xc0]
  a5171a:	62 71 6c 48 59 c6    	vmulps zmm8,zmm2,zmm6
  a51720:	62 72 7d 48 bc c7    	vfnmadd231ps zmm8,zmm0,zmm7
  a51726:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x680],zmm8
  a5172d:	1a 
  a5172e:	62 f1 7c 48 59 c6    	vmulps zmm0,zmm0,zmm6
  a51734:	62 f2 45 48 b8 c2    	vfmadd231ps zmm0,zmm7,zmm2
  a5173a:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm0
  a51741:	02 
  a51742:	62 d1 8d 48 14 c2    	vunpcklpd zmm0,zmm14,zmm10
  a51748:	62 81 e5 48 14 f8    	vunpcklpd zmm23,zmm3,zmm24
  a5174e:	62 d1 9d 48 14 d7    	vunpcklpd zmm2,zmm12,zmm15
  a51754:	62 51 a5 40 14 d5    	vunpcklpd zmm10,zmm27,zmm13
  a5175a:	62 71 7c 48 28 e2    	vmovaps zmm12,zmm2
  a51760:	62 d2 75 48 7f d2    	vpermt2ps zmm2,zmm1,zmm10
  a51766:	62 61 7c 48 28 d0    	vmovaps zmm26,zmm0
  a5176c:	62 b2 75 48 7f c7    	vpermt2ps zmm0,zmm1,zmm23
  a51772:	62 f1 7c 48 10 72 13 	vmovups zmm6,ZMMWORD PTR [rdx+0x4c0]
  a51779:	62 f1 7c 48 10 7a 12 	vmovups zmm7,ZMMWORD PTR [rdx+0x480]
  a51780:	62 71 7c 48 59 df    	vmulps zmm11,zmm0,zmm7
  a51786:	62 72 6d 48 bc de    	vfnmadd231ps zmm11,zmm2,zmm6
  a5178c:	62 71 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm11
  a51793:	04 
  a51794:	62 f1 6c 48 59 d7    	vmulps zmm2,zmm2,zmm7
  a5179a:	62 f2 4d 48 b8 d0    	vfmadd231ps zmm2,zmm6,zmm0
  a517a0:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm2
  a517a7:	03 
  a517a8:	62 f1 7c 48 10 04 24 	vmovups zmm0,ZMMWORD PTR [rsp]
  a517af:	62 f1 fd 48 14 44 24 	vunpcklpd zmm0,zmm0,ZMMWORD PTR [rsp-0x40]
  a517b6:	ff 
  a517b7:	62 61 fd 40 14 6c 24 	vunpcklpd zmm29,zmm16,ZMMWORD PTR [rsp-0x80]
  a517be:	fe 
  a517bf:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x8c0]
  a517c6:	23 
  a517c7:	62 f1 ed 48 14 54 24 	vunpcklpd zmm2,zmm2,ZMMWORD PTR [rsp+0x880]
  a517ce:	22 
  a517cf:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x840]
  a517d6:	21 
  a517d7:	62 a1 e5 48 14 d1    	vunpcklpd zmm18,zmm3,zmm17
  a517dd:	62 71 7c 48 28 f2    	vmovaps zmm14,zmm2
  a517e3:	62 b2 75 48 7f d2    	vpermt2ps zmm2,zmm1,zmm18
  a517e9:	62 e1 7c 48 28 c8    	vmovaps zmm17,zmm0
  a517ef:	62 92 75 48 7f c5    	vpermt2ps zmm0,zmm1,zmm29
  a517f5:	62 f1 7c 48 10 72 1b 	vmovups zmm6,ZMMWORD PTR [rdx+0x6c0]
  a517fc:	62 f1 7c 48 10 7a 1a 	vmovups zmm7,ZMMWORD PTR [rdx+0x680]
  a51803:	62 71 7c 48 59 df    	vmulps zmm11,zmm0,zmm7
  a51809:	62 72 6d 48 b8 de    	vfmadd231ps zmm11,zmm2,zmm6
  a5180f:	62 71 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm11
  a51816:	fe 
  a51817:	62 f1 6c 48 59 d7    	vmulps zmm2,zmm2,zmm7
  a5181d:	62 f2 4d 48 bc d0    	vfnmadd231ps zmm2,zmm6,zmm0
  a51823:	62 f1 7c 48 11 14 24 	vmovups ZMMWORD PTR [rsp],zmm2
  a5182a:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x140]
  a51831:	05 
  a51832:	62 f1 fd 48 14 74 24 	vunpcklpd zmm6,zmm0,ZMMWORD PTR [rsp+0x6c0]
  a51839:	1b 
  a5183a:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x940]
  a51841:	25 
  a51842:	62 e1 fd 48 14 74 24 	vunpcklpd zmm22,zmm0,ZMMWORD PTR [rsp+0x900]
  a51849:	24 
  a5184a:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x300]
  a51851:	0c 
  a51852:	62 f1 fd 48 14 7c 24 	vunpcklpd zmm7,zmm0,ZMMWORD PTR [rsp+0x740]
  a51859:	1d 
  a5185a:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x700]
  a51861:	1c 
  a51862:	62 f1 fd 48 14 d4    	vunpcklpd zmm2,zmm0,zmm4
  a51868:	62 f1 7c 48 28 c7    	vmovaps zmm0,zmm7
  a5186e:	62 f2 75 48 7f fa    	vpermt2ps zmm7,zmm1,zmm2
  a51874:	62 71 7c 48 28 de    	vmovaps zmm11,zmm6
  a5187a:	62 b2 75 48 7f f6    	vpermt2ps zmm6,zmm1,zmm22
  a51880:	62 f1 7c 48 10 62 0b 	vmovups zmm4,ZMMWORD PTR [rdx+0x2c0]
  a51887:	62 71 7c 48 10 7a 0a 	vmovups zmm15,ZMMWORD PTR [rdx+0x280]
  a5188e:	62 c1 4c 48 59 c7    	vmulps zmm16,zmm6,zmm15
  a51894:	62 e2 45 48 b8 c4    	vfmadd231ps zmm16,zmm7,zmm4
  a5189a:	62 e1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm16
  a518a1:	05 
  a518a2:	62 d1 44 48 59 ff    	vmulps zmm7,zmm7,zmm15
  a518a8:	62 f2 5d 48 bc fe    	vfnmadd231ps zmm7,zmm4,zmm6
  a518ae:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm7
  a518b5:	ff 
  a518b6:	62 72 75 48 7f 4c 24 	vpermt2ps zmm9,zmm1,ZMMWORD PTR [rsp+0x580]
  a518bd:	16 
  a518be:	62 e2 75 48 7f 5c 24 	vpermt2ps zmm19,zmm1,ZMMWORD PTR [rsp+0x800]
  a518c5:	20 
  a518c6:	62 f2 75 48 7f 6c 24 	vpermt2ps zmm5,zmm1,ZMMWORD PTR [rsp+0x7c0]
  a518cd:	1f 
  a518ce:	62 62 75 48 7f 64 24 	vpermt2ps zmm28,zmm1,ZMMWORD PTR [rsp+0x780]
  a518d5:	1e 
  a518d6:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x2c0]
  a518dd:	0b 
  a518de:	62 f2 75 48 7f 64 24 	vpermt2ps zmm4,zmm1,ZMMWORD PTR [rsp+0x440]
  a518e5:	11 
  a518e6:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x280]
  a518ed:	0a 
  a518ee:	62 f2 75 48 7f 74 24 	vpermt2ps zmm6,zmm1,ZMMWORD PTR [rsp+0x400]
  a518f5:	10 
  a518f6:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0x3c0]
  a518fd:	0f 
  a518fe:	62 f2 75 48 7f 7c 24 	vpermt2ps zmm7,zmm1,ZMMWORD PTR [rsp+0x380]
  a51905:	0e 
  a51906:	62 62 75 48 7f 7c 24 	vpermt2ps zmm31,zmm1,ZMMWORD PTR [rsp+0x340]
  a5190d:	0d 
  a5190e:	62 f1 7c 48 10 4a 07 	vmovups zmm1,ZMMWORD PTR [rdx+0x1c0]
  a51915:	62 f1 7c 48 10 5a 06 	vmovups zmm3,ZMMWORD PTR [rdx+0x180]
  a5191c:	62 61 64 40 59 cb    	vmulps zmm25,zmm19,zmm3
  a51922:	62 62 35 48 bc c9    	vfnmadd231ps zmm25,zmm9,zmm1
  a51928:	62 61 34 48 59 c3    	vmulps zmm24,zmm9,zmm3
  a5192e:	62 22 75 48 b8 c3    	vfmadd231ps zmm24,zmm1,zmm19
  a51934:	62 f1 7c 48 10 4a 17 	vmovups zmm1,ZMMWORD PTR [rdx+0x5c0]
  a5193b:	62 f1 7c 48 10 5a 16 	vmovups zmm3,ZMMWORD PTR [rdx+0x580]
  a51942:	62 61 1c 40 59 f3    	vmulps zmm30,zmm28,zmm3
  a51948:	62 62 55 48 bc f1    	vfnmadd231ps zmm30,zmm5,zmm1
  a5194e:	62 e1 54 48 59 e3    	vmulps zmm20,zmm5,zmm3
  a51954:	62 82 75 48 b8 e4    	vfmadd231ps zmm20,zmm1,zmm28
  a5195a:	62 f1 7c 48 10 4a 1f 	vmovups zmm1,ZMMWORD PTR [rdx+0x7c0]
  a51961:	62 f1 7c 48 10 5a 1e 	vmovups zmm3,ZMMWORD PTR [rdx+0x780]
  a51968:	62 71 04 40 59 eb    	vmulps zmm13,zmm31,zmm3
  a5196e:	62 72 45 48 b8 e9    	vfmadd231ps zmm13,zmm7,zmm1
  a51974:	62 71 44 48 59 fb    	vmulps zmm15,zmm7,zmm3
  a5197a:	62 12 75 48 bc ff    	vfnmadd231ps zmm15,zmm1,zmm31
  a51980:	62 f1 7c 48 10 4a 0f 	vmovups zmm1,ZMMWORD PTR [rdx+0x3c0]
  a51987:	62 f1 7c 48 10 5a 0e 	vmovups zmm3,ZMMWORD PTR [rdx+0x380]
  a5198e:	62 71 4c 48 59 c3    	vmulps zmm8,zmm6,zmm3
  a51994:	62 72 5d 48 b8 c1    	vfmadd231ps zmm8,zmm4,zmm1
  a5199a:	62 e1 5c 48 59 c3    	vmulps zmm16,zmm4,zmm3
  a519a0:	62 e2 75 48 bc c6    	vfnmadd231ps zmm16,zmm1,zmm6
  a519a6:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0x600]
  a519ad:	18 
  a519ae:	62 f2 55 40 7f 7c 24 	vpermt2ps zmm7,zmm21,ZMMWORD PTR [rsp+0x5c0]
  a519b5:	17 
  a519b6:	62 22 55 40 7f d7    	vpermt2ps zmm26,zmm21,zmm23
  a519bc:	62 52 55 40 7f e2    	vpermt2ps zmm12,zmm21,zmm10
  a519c2:	62 82 55 40 7f cd    	vpermt2ps zmm17,zmm21,zmm29
  a519c8:	62 32 55 40 7f f2    	vpermt2ps zmm14,zmm21,zmm18
  a519ce:	62 32 55 40 7f de    	vpermt2ps zmm11,zmm21,zmm22
  a519d4:	62 f2 55 40 7f c2    	vpermt2ps zmm0,zmm21,zmm2
  a519da:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x180]
  a519e1:	06 
  a519e2:	62 f2 55 40 7f 4c 24 	vpermt2ps zmm1,zmm21,ZMMWORD PTR [rsp+0x640]
  a519e9:	19 
  a519ea:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm1
  a519f1:	06 
  a519f2:	62 f1 7c 48 10 4a 11 	vmovups zmm1,ZMMWORD PTR [rdx+0x440]
  a519f9:	62 f1 7c 48 10 52 10 	vmovups zmm2,ZMMWORD PTR [rdx+0x400]
  a51a00:	62 e1 1c 48 59 f2    	vmulps zmm22,zmm12,zmm2
  a51a06:	62 e2 2d 40 b8 f1    	vfmadd231ps zmm22,zmm26,zmm1
  a51a0c:	62 e1 2c 40 59 d2    	vmulps zmm18,zmm26,zmm2
  a51a12:	62 c2 75 48 bc d4    	vfnmadd231ps zmm18,zmm1,zmm12
  a51a18:	62 f1 7c 48 10 52 09 	vmovups zmm2,ZMMWORD PTR [rdx+0x240]
  a51a1f:	62 f1 7c 48 10 4a 08 	vmovups zmm1,ZMMWORD PTR [rdx+0x200]
  a51a26:	62 e1 7c 48 59 e9    	vmulps zmm21,zmm0,zmm1
  a51a2c:	62 e2 25 48 bc ea    	vfnmadd231ps zmm21,zmm11,zmm2
  a51a32:	62 f1 24 48 59 d9    	vmulps zmm3,zmm11,zmm1
  a51a38:	62 f2 6d 48 b8 d8    	vfmadd231ps zmm3,zmm2,zmm0
  a51a3e:	62 f1 7c 48 10 52 19 	vmovups zmm2,ZMMWORD PTR [rdx+0x640]
  a51a45:	62 f1 7c 48 10 42 18 	vmovups zmm0,ZMMWORD PTR [rdx+0x600]
  a51a4c:	62 e1 0c 48 59 d8    	vmulps zmm19,zmm14,zmm0
  a51a52:	62 e2 75 40 bc da    	vfnmadd231ps zmm19,zmm17,zmm2
  a51a58:	62 f1 74 40 59 c8    	vmulps zmm1,zmm17,zmm0
  a51a5e:	62 d2 6d 48 b8 ce    	vfmadd231ps zmm1,zmm2,zmm14
  a51a64:	62 61 7c 48 10 5c 24 	vmovups zmm27,ZMMWORD PTR [rsp+0x680]
  a51a6b:	1a 
  a51a6c:	62 f1 24 40 5c 54 24 	vsubps zmm2,zmm27,ZMMWORD PTR [rsp+0x100]
  a51a73:	04 
  a51a74:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x140]
  a51a7b:	05 
  a51a7c:	62 f1 7c 48 5c 64 24 	vsubps zmm4,zmm0,ZMMWORD PTR [rsp-0x80]
  a51a83:	fe 
  a51a84:	62 71 6c 48 5c cc    	vsubps zmm9,zmm2,zmm4
  a51a8a:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x80]
  a51a91:	02 
  a51a92:	62 71 7c 48 5c 54 24 	vsubps zmm10,zmm0,ZMMWORD PTR [rsp+0xc0]
  a51a99:	03 
  a51a9a:	62 f1 7c 48 10 04 24 	vmovups zmm0,ZMMWORD PTR [rsp]
  a51aa1:	62 61 7c 48 5c 54 24 	vsubps zmm26,zmm0,ZMMWORD PTR [rsp-0x40]
  a51aa8:	ff 
  a51aa9:	62 72 7d 48 18 35 4d 	vbroadcastss zmm14,DWORD PTR [rip+0xffffffffff623c4d]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a51ab0:	3c 62 ff 
  a51ab3:	62 11 2c 48 5c e2    	vsubps zmm12,zmm10,zmm26
  a51ab9:	62 d1 1c 48 59 c6    	vmulps zmm0,zmm12,zmm14
  a51abf:	62 72 7d 48 18 1d 9b 	vbroadcastss zmm11,DWORD PTR [rip+0xffffffffff623b9b]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a51ac6:	3b 62 ff 
  a51ac9:	62 d2 35 48 b8 c3    	vfmadd231ps zmm0,zmm9,zmm11
  a51acf:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm0
  a51ad6:	0b 
  a51ad7:	62 d1 1c 48 59 c3    	vmulps zmm0,zmm12,zmm11
  a51add:	62 d2 0d 48 bc c1    	vfnmadd231ps zmm0,zmm14,zmm9
  a51ae3:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm0
  a51aea:	11 
  a51aeb:	62 81 34 40 5c fe    	vsubps zmm23,zmm25,zmm30
  a51af1:	62 41 3c 48 5c e5    	vsubps zmm28,zmm8,zmm13
  a51af7:	62 11 44 40 5c cc    	vsubps zmm9,zmm23,zmm28
  a51afd:	62 21 3c 40 5c ec    	vsubps zmm29,zmm24,zmm20
  a51b03:	62 21 04 48 5c f8    	vsubps zmm31,zmm15,zmm16
  a51b09:	62 91 14 40 5c c7    	vsubps zmm0,zmm29,zmm31
  a51b0f:	62 d1 7c 48 59 eb    	vmulps zmm5,zmm0,zmm11
  a51b15:	62 d2 35 48 b8 ee    	vfmadd231ps zmm5,zmm9,zmm14
  a51b1b:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm5
  a51b22:	0a 
  a51b23:	62 d1 34 48 59 eb    	vmulps zmm5,zmm9,zmm11
  a51b29:	62 f2 0d 48 bc e8    	vfnmadd231ps zmm5,zmm14,zmm0
  a51b2f:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm5
  a51b36:	10 
  a51b37:	62 91 44 40 58 c4    	vaddps zmm0,zmm23,zmm28
  a51b3d:	62 81 14 40 58 ff    	vaddps zmm23,zmm29,zmm31
  a51b43:	62 f1 6c 48 58 e4    	vaddps zmm4,zmm2,zmm4
  a51b49:	62 11 2c 48 58 d2    	vaddps zmm10,zmm10,zmm26
  a51b4f:	62 d1 2c 48 59 d3    	vmulps zmm2,zmm10,zmm11
  a51b55:	62 d2 5d 48 b8 d6    	vfmadd231ps zmm2,zmm4,zmm14
  a51b5b:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm2
  a51b62:	0f 
  a51b63:	62 41 2c 48 59 fe    	vmulps zmm31,zmm10,zmm14
  a51b69:	62 62 25 48 bc fc    	vfnmadd231ps zmm31,zmm11,zmm4
  a51b6f:	62 d1 44 40 59 d6    	vmulps zmm2,zmm23,zmm14
  a51b75:	62 d2 7d 48 b8 d3    	vfmadd231ps zmm2,zmm0,zmm11
  a51b7b:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm2
  a51b82:	0e 
  a51b83:	62 51 44 40 59 db    	vmulps zmm11,zmm23,zmm11
  a51b89:	62 52 7d 48 bc de    	vfnmadd231ps zmm11,zmm0,zmm14
  a51b8f:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x40]
  a51b96:	01 
  a51b97:	62 71 7c 48 10 64 24 	vmovups zmm12,ZMMWORD PTR [rsp+0x200]
  a51b9e:	08 
  a51b9f:	62 d1 4c 48 5c c4    	vsubps zmm0,zmm6,zmm12
  a51ba5:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp+0x240]
  a51bac:	09 
  a51bad:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x480]
  a51bb4:	12 
  a51bb5:	62 51 34 48 5c f2    	vsubps zmm14,zmm9,zmm10
  a51bbb:	62 c1 7c 48 58 fe    	vaddps zmm23,zmm0,zmm14
  a51bc1:	62 f1 0c 48 5c c0    	vsubps zmm0,zmm14,zmm0
  a51bc7:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm0
  a51bce:	0d 
  a51bcf:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x1c0]
  a51bd6:	07 
  a51bd7:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x500]
  a51bde:	14 
  a51bdf:	62 71 7c 48 5c f2    	vsubps zmm14,zmm0,zmm2
  a51be5:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x540]
  a51bec:	15 
  a51bed:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x4c0]
  a51bf4:	13 
  a51bf5:	62 61 5c 48 5c d5    	vsubps zmm26,zmm4,zmm5
  a51bfb:	62 01 0c 48 5c e2    	vsubps zmm28,zmm14,zmm26
  a51c01:	62 51 2c 40 58 f6    	vaddps zmm14,zmm26,zmm14
  a51c07:	62 71 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm14
  a51c0e:	0c 
  a51c0f:	62 21 44 48 5c d6    	vsubps zmm26,zmm7,zmm22
  a51c15:	62 e1 4c 40 58 f7    	vaddps zmm22,zmm22,zmm7
  a51c1b:	62 61 64 48 5c e9    	vsubps zmm29,zmm3,zmm1
  a51c21:	62 f1 64 48 58 f9    	vaddps zmm7,zmm3,zmm1
  a51c27:	62 e1 5c 48 58 cd    	vaddps zmm17,zmm4,zmm5
  a51c2d:	62 51 4c 48 58 e4    	vaddps zmm12,zmm6,zmm12
  a51c33:	62 b1 3c 40 58 dc    	vaddps zmm3,zmm24,zmm20
  a51c39:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm3
  a51c40:	01 
  a51c41:	62 51 3c 48 58 f5    	vaddps zmm14,zmm8,zmm13
  a51c47:	62 11 34 40 58 c6    	vaddps zmm8,zmm25,zmm30
  a51c4d:	62 51 7c 40 58 ef    	vaddps zmm13,zmm16,zmm15
  a51c53:	62 71 24 40 58 7c 24 	vaddps zmm15,zmm27,ZMMWORD PTR [rsp+0x100]
  a51c5a:	04 
  a51c5b:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x40]
  a51c62:	ff 
  a51c63:	62 e1 74 48 58 04 24 	vaddps zmm16,zmm1,ZMMWORD PTR [rsp]
  a51c6a:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0xc0]
  a51c71:	03 
  a51c72:	62 e1 74 48 58 64 24 	vaddps zmm20,zmm1,ZMMWORD PTR [rsp+0x80]
  a51c79:	02 
  a51c7a:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x140]
  a51c81:	05 
  a51c82:	62 61 74 48 58 44 24 	vaddps zmm24,zmm1,ZMMWORD PTR [rsp-0x80]
  a51c89:	fe 
  a51c8a:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x180]
  a51c91:	06 
  a51c92:	62 21 74 48 5c ca    	vsubps zmm25,zmm1,zmm18
  a51c98:	62 a1 74 48 58 d2    	vaddps zmm18,zmm1,zmm18
  a51c9e:	62 21 64 40 5c dd    	vsubps zmm27,zmm19,zmm21
  a51ca4:	62 a1 54 40 58 db    	vaddps zmm19,zmm21,zmm19
  a51caa:	62 c1 34 48 58 ea    	vaddps zmm21,zmm9,zmm10
  a51cb0:	62 61 7c 48 58 f2    	vaddps zmm30,zmm0,zmm2
  a51cb6:	62 b1 04 48 5c c8    	vsubps zmm1,zmm15,zmm16
  a51cbc:	62 91 5c 40 5c c0    	vsubps zmm0,zmm20,zmm24
  a51cc2:	62 f1 74 48 58 f0    	vaddps zmm6,zmm1,zmm0
  a51cc8:	62 f1 7c 48 5c e9    	vsubps zmm5,zmm0,zmm1
  a51cce:	62 d1 64 48 5c ce    	vsubps zmm1,zmm3,zmm14
  a51cd4:	62 d1 3c 48 5c c5    	vsubps zmm0,zmm8,zmm13
  a51cda:	62 f1 74 48 5c d8    	vsubps zmm3,zmm1,zmm0
  a51ce0:	62 f1 7c 48 58 e1    	vaddps zmm4,zmm0,zmm1
  a51ce6:	62 f2 7d 48 18 0d ac 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff6236ac]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a51ced:	36 62 ff 
  a51cf0:	62 61 1c 40 59 e1    	vmulps zmm28,zmm28,zmm1
  a51cf6:	62 e1 44 40 59 f9    	vmulps zmm23,zmm23,zmm1
  a51cfc:	62 f1 74 48 59 54 24 	vmulps zmm2,zmm1,ZMMWORD PTR [rsp+0x340]
  a51d03:	0d 
  a51d04:	62 f1 74 48 59 44 24 	vmulps zmm0,zmm1,ZMMWORD PTR [rsp+0x300]
  a51d0b:	0c 
  a51d0c:	62 71 64 48 59 d1    	vmulps zmm10,zmm3,zmm1
  a51d12:	62 71 4c 48 59 c9    	vmulps zmm9,zmm6,zmm1
  a51d18:	62 f1 54 48 59 d9    	vmulps zmm3,zmm5,zmm1
  a51d1e:	62 f1 5c 48 59 c9    	vmulps zmm1,zmm4,zmm1
  a51d24:	62 91 2c 40 5c e3    	vsubps zmm4,zmm26,zmm27
  a51d2a:	62 01 24 40 58 d2    	vaddps zmm26,zmm27,zmm26
  a51d30:	62 61 6c 48 58 d8    	vaddps zmm27,zmm2,zmm0
  a51d36:	62 f1 6c 48 5c f0    	vsubps zmm6,zmm2,zmm0
  a51d3c:	62 91 34 40 5c d5    	vsubps zmm2,zmm25,zmm29
  a51d42:	62 91 34 40 58 c5    	vaddps zmm0,zmm25,zmm29
  a51d48:	62 21 1c 40 5c ef    	vsubps zmm29,zmm28,zmm23
  a51d4e:	62 81 44 40 58 fc    	vaddps zmm23,zmm23,zmm28
  a51d54:	62 61 4c 40 5c e7    	vsubps zmm28,zmm22,zmm7
  a51d5a:	62 b1 44 48 58 ee    	vaddps zmm5,zmm7,zmm22
  a51d60:	62 f1 7c 48 11 2c 24 	vmovups ZMMWORD PTR [rsp],zmm5
  a51d67:	62 81 54 40 5c f6    	vsubps zmm22,zmm21,zmm30
  a51d6d:	62 91 54 40 58 fe    	vaddps zmm7,zmm21,zmm30
  a51d73:	62 d1 3c 48 58 ed    	vaddps zmm5,zmm8,zmm13
  a51d79:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm5
  a51d80:	fe 
  a51d81:	62 21 04 48 58 f0    	vaddps zmm30,zmm15,zmm16
  a51d87:	62 31 6c 40 5c fb    	vsubps zmm15,zmm18,zmm19
  a51d8d:	62 a1 6c 40 58 c3    	vaddps zmm16,zmm18,zmm19
  a51d93:	62 c1 74 40 5c d4    	vsubps zmm18,zmm17,zmm12
  a51d99:	62 31 1c 48 58 e1    	vaddps zmm12,zmm12,zmm17
  a51d9f:	62 81 5c 40 58 d8    	vaddps zmm19,zmm20,zmm24
  a51da5:	62 71 0c 48 58 74 24 	vaddps zmm14,zmm14,ZMMWORD PTR [rsp+0x40]
  a51dac:	01 
  a51dad:	62 81 5c 48 5c cd    	vsubps zmm17,zmm4,zmm29
  a51db3:	62 f1 14 40 58 e4    	vaddps zmm4,zmm29,zmm4
  a51db9:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm4
  a51dc0:	ff 
  a51dc1:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x440]
  a51dc8:	11 
  a51dc9:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x400]
  a51dd0:	10 
  a51dd1:	62 e1 5c 48 5c e5    	vsubps zmm20,zmm4,zmm5
  a51dd7:	62 f1 5c 48 58 e5    	vaddps zmm4,zmm4,zmm5
  a51ddd:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm4
  a51de4:	04 
  a51de5:	62 01 6c 48 5c c3    	vsubps zmm24,zmm2,zmm27
  a51deb:	62 91 6c 48 58 d3    	vaddps zmm2,zmm2,zmm27
  a51df1:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm2
  a51df8:	03 
  a51df9:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x2c0]
  a51e00:	0b 
  a51e01:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x280]
  a51e08:	0a 
  a51e09:	62 61 6c 48 58 cc    	vaddps zmm25,zmm2,zmm4
  a51e0f:	62 f1 6c 48 5c d4    	vsubps zmm2,zmm2,zmm4
  a51e15:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm2
  a51e1c:	07 
  a51e1d:	62 21 1c 40 5c da    	vsubps zmm27,zmm28,zmm18
  a51e23:	62 01 6c 40 58 ec    	vaddps zmm29,zmm18,zmm28
  a51e29:	62 f1 64 48 58 e9    	vaddps zmm5,zmm3,zmm1
  a51e2f:	62 61 64 48 5c e1    	vsubps zmm28,zmm3,zmm1
  a51e35:	62 a1 04 48 5c ee    	vsubps zmm21,zmm15,zmm22
  a51e3b:	62 a1 04 48 58 d6    	vaddps zmm18,zmm15,zmm22
  a51e41:	62 c1 2c 48 5c f1    	vsubps zmm22,zmm10,zmm9
  a51e47:	62 51 34 48 58 fa    	vaddps zmm15,zmm9,zmm10
  a51e4d:	62 f1 2c 40 5c e6    	vsubps zmm4,zmm26,zmm6
  a51e53:	62 11 4c 48 58 ea    	vaddps zmm13,zmm6,zmm26
  a51e59:	62 51 04 40 5c d3    	vsubps zmm10,zmm31,zmm11
  a51e5f:	62 51 04 40 58 db    	vaddps zmm11,zmm31,zmm11
  a51e65:	62 21 7c 48 5c ff    	vsubps zmm31,zmm0,zmm23
  a51e6b:	62 a1 7c 48 58 ff    	vaddps zmm23,zmm0,zmm23
  a51e71:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x3c0]
  a51e78:	0f 
  a51e79:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x380]
  a51e80:	0e 
  a51e81:	62 f1 6c 48 5c c8    	vsubps zmm1,zmm2,zmm0
  a51e87:	62 71 7c 48 58 ca    	vaddps zmm9,zmm0,zmm2
  a51e8d:	62 f1 7c 48 10 04 24 	vmovups zmm0,ZMMWORD PTR [rsp]
  a51e94:	62 f1 7c 48 5c df    	vsubps zmm3,zmm0,zmm7
  a51e9a:	62 71 44 48 58 c0    	vaddps zmm8,zmm7,zmm0
  a51ea0:	62 d1 64 40 5c d6    	vsubps zmm2,zmm19,zmm14
  a51ea6:	62 d1 64 40 58 fe    	vaddps zmm7,zmm19,zmm14
  a51eac:	62 51 7c 40 5c f4    	vsubps zmm14,zmm16,zmm12
  a51eb2:	62 d1 7c 40 58 f4    	vaddps zmm6,zmm16,zmm12
  a51eb8:	62 71 7c 48 10 64 24 	vmovups zmm12,ZMMWORD PTR [rsp-0x80]
  a51ebf:	fe 
  a51ec0:	62 91 1c 48 5c c6    	vsubps zmm0,zmm12,zmm30
  a51ec6:	62 41 0c 40 58 f4    	vaddps zmm30,zmm30,zmm12
  a51ecc:	62 11 74 40 58 e1    	vaddps zmm12,zmm17,zmm25
  a51ed2:	62 71 7c 48 11 24 24 	vmovups ZMMWORD PTR [rsp],zmm12
  a51ed9:	62 01 74 40 5c d1    	vsubps zmm26,zmm17,zmm25
  a51edf:	62 31 3c 40 5c e4    	vsubps zmm12,zmm24,zmm20
  a51ee5:	62 71 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm12
  a51eec:	06 
  a51eed:	62 21 3c 40 58 cc    	vaddps zmm25,zmm24,zmm20
  a51ef3:	62 31 24 40 5c e6    	vsubps zmm12,zmm27,zmm22
  a51ef9:	62 71 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm12
  a51f00:	02 
  a51f01:	62 31 24 40 58 e6    	vaddps zmm12,zmm27,zmm22
  a51f07:	62 e1 54 40 5c c5    	vsubps zmm16,zmm21,zmm5
  a51f0d:	62 e1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm16
  a51f14:	05 
  a51f15:	62 e1 54 40 58 f5    	vaddps zmm22,zmm21,zmm5
  a51f1b:	62 e1 5c 48 5c e9    	vsubps zmm21,zmm4,zmm1
  a51f21:	62 e1 5c 48 58 e1    	vaddps zmm20,zmm4,zmm1
  a51f27:	62 d1 04 40 5c ca    	vsubps zmm1,zmm31,zmm10
  a51f2d:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm1
  a51f34:	09 
  a51f35:	62 c1 04 40 58 c2    	vaddps zmm16,zmm31,zmm10
  a51f3b:	62 61 64 48 5c d8    	vsubps zmm27,zmm3,zmm0
  a51f41:	62 61 64 48 58 c0    	vaddps zmm24,zmm3,zmm0
  a51f47:	62 f1 0c 48 5c c2    	vsubps zmm0,zmm14,zmm2
  a51f4d:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a51f54:	fe 
  a51f55:	62 71 0c 48 58 d2    	vaddps zmm10,zmm14,zmm2
  a51f5b:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x40]
  a51f62:	ff 
  a51f63:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x100]
  a51f6a:	04 
  a51f6b:	62 f1 7c 48 5c d1    	vsubps zmm2,zmm0,zmm1
  a51f71:	62 f1 7c 48 58 e9    	vaddps zmm5,zmm0,zmm1
  a51f77:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0xc0]
  a51f7e:	03 
  a51f7f:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x1c0]
  a51f86:	07 
  a51f87:	62 61 7c 48 5c f9    	vsubps zmm31,zmm0,zmm1
  a51f8d:	62 71 7c 48 58 f1    	vaddps zmm14,zmm0,zmm1
  a51f93:	62 91 14 40 5c cc    	vsubps zmm1,zmm29,zmm28
  a51f99:	62 01 14 40 58 ec    	vaddps zmm29,zmm29,zmm28
  a51f9f:	62 c1 6c 40 5c df    	vsubps zmm19,zmm18,zmm15
  a51fa5:	62 51 6c 40 58 ff    	vaddps zmm15,zmm18,zmm15
  a51fab:	62 d1 14 48 5c c3    	vsubps zmm0,zmm13,zmm11
  a51fb1:	62 51 14 48 58 eb    	vaddps zmm13,zmm13,zmm11
  a51fb7:	62 d1 44 40 5c d9    	vsubps zmm3,zmm23,zmm9
  a51fbd:	62 c1 44 40 58 c9    	vaddps zmm17,zmm23,zmm9
  a51fc3:	62 71 3c 48 5c cf    	vsubps zmm9,zmm8,zmm7
  a51fc9:	62 f1 3c 48 58 ff    	vaddps zmm7,zmm8,zmm7
  a51fcf:	62 11 4c 48 5c de    	vsubps zmm11,zmm6,zmm30
  a51fd5:	62 81 4c 48 58 d6    	vaddps zmm18,zmm6,zmm30
  a51fdb:	62 f1 7c 48 28 25 1b 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff640c1b]        # 92c00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x200b0>
  a51fe2:	0c 64 ff 
  a51fe5:	62 b1 7c 48 28 f2    	vmovaps zmm6,zmm18
  a51feb:	62 f2 5d 48 7f f7    	vpermt2ps zmm6,zmm4,zmm7
  a51ff1:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm6
  a51ff8:	04 
  a51ff9:	62 f1 6c 40 15 f7    	vunpckhps zmm6,zmm18,zmm7
  a51fff:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm6
  a52006:	ff 
  a52007:	62 f1 6c 40 14 f7    	vunpcklps zmm6,zmm18,zmm7
  a5200d:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm6
  a52014:	03 
  a52015:	62 e1 7c 28 28 3d 21 	vmovaps ymm23,YMMWORD PTR [rip+0xffffffffff640c21]        # 92c40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x200f0>
  a5201c:	0c 64 ff 
  a5201f:	62 e2 45 40 7f d7    	vpermt2ps zmm18,zmm23,zmm7
  a52025:	62 b1 7c 48 28 f1    	vmovaps zmm6,zmm17
  a5202b:	62 d2 5d 48 7f f5    	vpermt2ps zmm6,zmm4,zmm13
  a52031:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm6
  a52038:	01 
  a52039:	62 d1 74 40 15 f5    	vunpckhps zmm6,zmm17,zmm13
  a5203f:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm6
  a52046:	07 
  a52047:	62 d1 74 40 14 f5    	vunpcklps zmm6,zmm17,zmm13
  a5204d:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm6
  a52054:	08 
  a52055:	62 c2 45 40 7f cd    	vpermt2ps zmm17,zmm23,zmm13
  a5205b:	62 51 7c 48 28 c7    	vmovaps zmm8,zmm15
  a52061:	62 12 5d 48 7f c5    	vpermt2ps zmm8,zmm4,zmm29
  a52067:	62 91 04 48 15 f5    	vunpckhps zmm6,zmm15,zmm29
  a5206d:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm6
  a52074:	15 
  a52075:	62 91 04 48 14 f5    	vunpcklps zmm6,zmm15,zmm29
  a5207b:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm6
  a52082:	14 
  a52083:	62 12 45 40 7f fd    	vpermt2ps zmm15,zmm23,zmm29
  a52089:	62 d1 7c 48 28 f6    	vmovaps zmm6,zmm14
  a5208f:	62 f2 5d 48 7f f5    	vpermt2ps zmm6,zmm4,zmm5
  a52095:	62 f1 0c 48 15 fd    	vunpckhps zmm7,zmm14,zmm5
  a5209b:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm7
  a520a2:	13 
  a520a3:	62 f1 0c 48 14 fd    	vunpcklps zmm7,zmm14,zmm5
  a520a9:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm7
  a520b0:	12 
  a520b1:	62 72 45 40 7f f5    	vpermt2ps zmm14,zmm23,zmm5
  a520b7:	62 41 7c 48 28 ea    	vmovaps zmm29,zmm10
  a520bd:	62 02 5d 48 7f e8    	vpermt2ps zmm29,zmm4,zmm24
  a520c3:	62 91 2c 48 15 e8    	vunpckhps zmm5,zmm10,zmm24
  a520c9:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm5
  a520d0:	0b 
  a520d1:	62 91 2c 48 14 e8    	vunpcklps zmm5,zmm10,zmm24
  a520d7:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm5
  a520de:	11 
  a520df:	62 12 45 40 7f d0    	vpermt2ps zmm10,zmm23,zmm24
  a520e5:	62 21 7c 48 28 c0    	vmovaps zmm24,zmm16
  a520eb:	62 22 5d 48 7f c4    	vpermt2ps zmm24,zmm4,zmm20
  a520f1:	62 b1 7c 40 15 ec    	vunpckhps zmm5,zmm16,zmm20
  a520f7:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm5
  a520fe:	0a 
  a520ff:	62 b1 7c 40 14 ec    	vunpcklps zmm5,zmm16,zmm20
  a52105:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm5
  a5210c:	10 
  a5210d:	62 a2 45 40 7f c4    	vpermt2ps zmm16,zmm23,zmm20
  a52113:	62 a1 7c 48 28 e6    	vmovaps zmm20,zmm22
  a52119:	62 c2 5d 48 7f e4    	vpermt2ps zmm20,zmm4,zmm12
  a5211f:	62 d1 4c 40 15 ec    	vunpckhps zmm5,zmm22,zmm12
  a52125:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm5
  a5212c:	0f 
  a5212d:	62 d1 4c 40 14 ec    	vunpcklps zmm5,zmm22,zmm12
  a52133:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm5
  a5213a:	0e 
  a5213b:	62 c2 45 40 7f f4    	vpermt2ps zmm22,zmm23,zmm12
  a52141:	62 11 7c 48 28 e9    	vmovaps zmm13,zmm25
  a52147:	62 12 5d 48 7f ea    	vpermt2ps zmm13,zmm4,zmm26
  a5214d:	62 91 34 40 15 ea    	vunpckhps zmm5,zmm25,zmm26
  a52153:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm5
  a5215a:	0d 
  a5215b:	62 91 34 40 14 ea    	vunpcklps zmm5,zmm25,zmm26
  a52161:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm5
  a52168:	0c 
  a52169:	62 02 45 40 7f ca    	vpermt2ps zmm25,zmm23,zmm26
  a5216f:	62 d1 7c 48 28 fb    	vmovaps zmm7,zmm11
  a52175:	62 d2 5d 48 7f f9    	vpermt2ps zmm7,zmm4,zmm9
  a5217b:	62 d1 24 48 15 e9    	vunpckhps zmm5,zmm11,zmm9
  a52181:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x740],zmm5
  a52188:	1d 
  a52189:	62 d1 24 48 14 e9    	vunpcklps zmm5,zmm11,zmm9
  a5218f:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x700],zmm5
  a52196:	1c 
  a52197:	62 52 45 40 7f d9    	vpermt2ps zmm11,zmm23,zmm9
  a5219d:	62 71 7c 48 28 cb    	vmovaps zmm9,zmm3
  a521a3:	62 72 5d 48 7f c8    	vpermt2ps zmm9,zmm4,zmm0
  a521a9:	62 f1 64 48 15 e8    	vunpckhps zmm5,zmm3,zmm0
  a521af:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x6c0],zmm5
  a521b6:	1b 
  a521b7:	62 f1 64 48 14 e8    	vunpcklps zmm5,zmm3,zmm0
  a521bd:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x940],zmm5
  a521c4:	25 
  a521c5:	62 f2 45 40 7f d8    	vpermt2ps zmm3,zmm23,zmm0
  a521cb:	62 21 7c 48 28 e3    	vmovaps zmm28,zmm19
  a521d1:	62 62 5d 48 7f e1    	vpermt2ps zmm28,zmm4,zmm1
  a521d7:	62 f1 64 40 15 c1    	vunpckhps zmm0,zmm19,zmm1
  a521dd:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x900],zmm0
  a521e4:	24 
  a521e5:	62 f1 64 40 14 c1    	vunpcklps zmm0,zmm19,zmm1
  a521eb:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x680],zmm0
  a521f2:	1a 
  a521f3:	62 e2 45 40 7f d9    	vpermt2ps zmm19,zmm23,zmm1
  a521f9:	62 91 7c 48 28 cf    	vmovaps zmm1,zmm31
  a521ff:	62 f2 5d 48 7f ca    	vpermt2ps zmm1,zmm4,zmm2
  a52205:	62 f1 04 40 15 c2    	vunpckhps zmm0,zmm31,zmm2
  a5220b:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x640],zmm0
  a52212:	19 
  a52213:	62 f1 04 40 14 c2    	vunpcklps zmm0,zmm31,zmm2
  a52219:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x8c0],zmm0
  a52220:	23 
  a52221:	62 62 45 40 7f fa    	vpermt2ps zmm31,zmm23,zmm2
  a52227:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x80]
  a5222e:	fe 
  a5222f:	62 f1 7c 48 28 d0    	vmovaps zmm2,zmm0
  a52235:	62 92 5d 48 7f d3    	vpermt2ps zmm2,zmm4,zmm27
  a5223b:	62 91 7c 48 15 eb    	vunpckhps zmm5,zmm0,zmm27
  a52241:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x880],zmm5
  a52248:	22 
  a52249:	62 91 7c 48 14 eb    	vunpcklps zmm5,zmm0,zmm27
  a5224f:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x840],zmm5
  a52256:	21 
  a52257:	62 92 45 40 7f c3    	vpermt2ps zmm0,zmm23,zmm27
  a5225d:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a52264:	fe 
  a52265:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x240]
  a5226c:	09 
  a5226d:	62 61 7c 48 28 dd    	vmovaps zmm27,zmm5
  a52273:	62 22 5d 48 7f dd    	vpermt2ps zmm27,zmm4,zmm21
  a52279:	62 b1 54 48 15 c5    	vunpckhps zmm0,zmm5,zmm21
  a5227f:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x600],zmm0
  a52286:	18 
  a52287:	62 b1 54 48 14 c5    	vunpcklps zmm0,zmm5,zmm21
  a5228d:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm0
  a52294:	17 
  a52295:	62 b2 45 40 7f ed    	vpermt2ps zmm5,zmm23,zmm21
  a5229b:	62 61 7c 48 28 f5    	vmovaps zmm30,zmm5
  a522a1:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x140]
  a522a8:	05 
  a522a9:	62 e1 7c 48 28 ed    	vmovaps zmm21,zmm5
  a522af:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x80]
  a522b6:	02 
  a522b7:	62 e2 5d 48 7f e8    	vpermt2ps zmm21,zmm4,zmm0
  a522bd:	62 71 54 48 15 e0    	vunpckhps zmm12,zmm5,zmm0
  a522c3:	62 71 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm12
  a522ca:	09 
  a522cb:	62 71 54 48 14 e0    	vunpcklps zmm12,zmm5,zmm0
  a522d1:	62 71 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm12
  a522d8:	16 
  a522d9:	62 f2 45 40 7f e8    	vpermt2ps zmm5,zmm23,zmm0
  a522df:	62 61 7c 48 28 d5    	vmovaps zmm26,zmm5
  a522e5:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x180]
  a522ec:	06 
  a522ed:	62 f1 7c 48 10 04 24 	vmovups zmm0,ZMMWORD PTR [rsp]
  a522f4:	62 f2 55 48 77 e0    	vpermi2ps zmm4,zmm5,zmm0
  a522fa:	62 71 54 48 15 e0    	vunpckhps zmm12,zmm5,zmm0
  a52300:	62 71 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm12
  a52307:	02 
  a52308:	62 71 54 48 14 e0    	vunpcklps zmm12,zmm5,zmm0
  a5230e:	62 f2 45 40 7f e8    	vpermt2ps zmm5,zmm23,zmm0
  a52314:	62 e1 7c 48 28 fd    	vmovaps zmm23,zmm5
  a5231a:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x100]
  a52321:	04 
  a52322:	62 f1 7c 48 11 06    	vmovups ZMMWORD PTR [rsi],zmm0
  a52328:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0xc0]
  a5232f:	03 
  a52330:	62 f3 7d 48 19 46 06 	vextractf32x4 XMMWORD PTR [rsi+0x60],zmm0,0x3
  a52337:	03 
  a52338:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x40]
  a5233f:	ff 
  a52340:	62 f3 7d 48 19 c5 03 	vextractf32x4 xmm5,zmm0,0x3
  a52347:	c5 f8 13 6e 70       	vmovlps QWORD PTR [rsi+0x70],xmm5
  a5234c:	62 e1 7c 28 11 56 02 	vmovups YMMWORD PTR [rsi+0x40],ymm18
  a52353:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x40]
  a5235a:	01 
  a5235b:	62 f1 7c 48 11 86 78 	vmovups ZMMWORD PTR [rsi+0x78],zmm0
  a52362:	00 00 00 
  a52365:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x200]
  a5236c:	08 
  a5236d:	62 f3 7d 48 19 86 d8 	vextractf32x4 XMMWORD PTR [rsi+0xd8],zmm0,0x3
  a52374:	00 00 00 03 
  a52378:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x1c0]
  a5237f:	07 
  a52380:	62 f3 7d 48 19 c5 03 	vextractf32x4 xmm5,zmm0,0x3
  a52387:	c5 f8 13 ae e8 00 00 	vmovlps QWORD PTR [rsi+0xe8],xmm5
  a5238e:	00 
  a5238f:	62 e1 7c 28 11 8e b8 	vmovups YMMWORD PTR [rsi+0xb8],ymm17
  a52396:	00 00 00 
  a52399:	62 71 7c 48 11 86 f0 	vmovups ZMMWORD PTR [rsi+0xf0],zmm8
  a523a0:	00 00 00 
  a523a3:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x500]
  a523aa:	14 
  a523ab:	62 f3 7d 48 19 46 15 	vextractf32x4 XMMWORD PTR [rsi+0x150],zmm0,0x3
  a523b2:	03 
  a523b3:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x540]
  a523ba:	15 
  a523bb:	62 f3 7d 48 19 c5 03 	vextractf32x4 xmm5,zmm0,0x3
  a523c2:	c5 f8 13 ae 60 01 00 	vmovlps QWORD PTR [rsi+0x160],xmm5
  a523c9:	00 
  a523ca:	c5 7c 11 be 30 01 00 	vmovups YMMWORD PTR [rsi+0x130],ymm15
  a523d1:	00 
  a523d2:	62 f1 7c 48 11 b6 68 	vmovups ZMMWORD PTR [rsi+0x168],zmm6
  a523d9:	01 00 00 
  a523dc:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x480]
  a523e3:	12 
  a523e4:	62 f3 7d 48 19 86 c8 	vextractf32x4 XMMWORD PTR [rsi+0x1c8],zmm0,0x3
  a523eb:	01 00 00 03 
  a523ef:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x4c0]
  a523f6:	13 
  a523f7:	62 f3 7d 48 19 c5 03 	vextractf32x4 xmm5,zmm0,0x3
  a523fe:	c5 f8 13 ae d8 01 00 	vmovlps QWORD PTR [rsi+0x1d8],xmm5
  a52405:	00 
  a52406:	c5 7c 11 b6 a8 01 00 	vmovups YMMWORD PTR [rsi+0x1a8],ymm14
  a5240d:	00 
  a5240e:	62 61 7c 48 11 ae e0 	vmovups ZMMWORD PTR [rsi+0x1e0],zmm29
  a52415:	01 00 00 
  a52418:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x440]
  a5241f:	11 
  a52420:	62 f3 7d 48 19 46 24 	vextractf32x4 XMMWORD PTR [rsi+0x240],zmm0,0x3
  a52427:	03 
  a52428:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x2c0]
  a5242f:	0b 
  a52430:	62 f3 7d 48 19 c5 03 	vextractf32x4 xmm5,zmm0,0x3
  a52437:	c5 f8 13 ae 50 02 00 	vmovlps QWORD PTR [rsi+0x250],xmm5
  a5243e:	00 
  a5243f:	c5 7c 11 96 20 02 00 	vmovups YMMWORD PTR [rsi+0x220],ymm10
  a52446:	00 
  a52447:	62 61 7c 48 11 86 58 	vmovups ZMMWORD PTR [rsi+0x258],zmm24
  a5244e:	02 00 00 
  a52451:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x400]
  a52458:	10 
  a52459:	62 f3 7d 48 19 86 b8 	vextractf32x4 XMMWORD PTR [rsi+0x2b8],zmm0,0x3
  a52460:	02 00 00 03 
  a52464:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x280]
  a5246b:	0a 
  a5246c:	62 f3 7d 48 19 c5 03 	vextractf32x4 xmm5,zmm0,0x3
  a52473:	c5 f8 13 ae c8 02 00 	vmovlps QWORD PTR [rsi+0x2c8],xmm5
  a5247a:	00 
  a5247b:	62 e1 7c 28 11 86 98 	vmovups YMMWORD PTR [rsi+0x298],ymm16
  a52482:	02 00 00 
  a52485:	62 e1 7c 48 11 a6 d0 	vmovups ZMMWORD PTR [rsi+0x2d0],zmm20
  a5248c:	02 00 00 
  a5248f:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x380]
  a52496:	0e 
  a52497:	62 f3 7d 48 19 46 33 	vextractf32x4 XMMWORD PTR [rsi+0x330],zmm0,0x3
  a5249e:	03 
  a5249f:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x3c0]
  a524a6:	0f 
  a524a7:	62 f3 7d 48 19 c5 03 	vextractf32x4 xmm5,zmm0,0x3
  a524ae:	c5 f8 13 ae 40 03 00 	vmovlps QWORD PTR [rsi+0x340],xmm5
  a524b5:	00 
  a524b6:	62 e1 7c 28 11 b6 10 	vmovups YMMWORD PTR [rsi+0x310],ymm22
  a524bd:	03 00 00 
  a524c0:	62 71 7c 48 11 ae 48 	vmovups ZMMWORD PTR [rsi+0x348],zmm13
  a524c7:	03 00 00 
  a524ca:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x300]
  a524d1:	0c 
  a524d2:	62 f3 7d 48 19 86 a8 	vextractf32x4 XMMWORD PTR [rsi+0x3a8],zmm0,0x3
  a524d9:	03 00 00 03 
  a524dd:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x340]
  a524e4:	0d 
  a524e5:	62 f3 7d 48 19 c5 03 	vextractf32x4 xmm5,zmm0,0x3
  a524ec:	c5 f8 13 ae b8 03 00 	vmovlps QWORD PTR [rsi+0x3b8],xmm5
  a524f3:	00 
  a524f4:	62 61 7c 28 11 8e 88 	vmovups YMMWORD PTR [rsi+0x388],ymm25
  a524fb:	03 00 00 
  a524fe:	62 f1 7c 48 11 7e 0f 	vmovups ZMMWORD PTR [rsi+0x3c0],zmm7
  a52505:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x700]
  a5250c:	1c 
  a5250d:	62 f3 7d 48 19 46 42 	vextractf32x4 XMMWORD PTR [rsi+0x420],zmm0,0x3
  a52514:	03 
  a52515:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x740]
  a5251c:	1d 
  a5251d:	62 f3 7d 48 19 c5 03 	vextractf32x4 xmm5,zmm0,0x3
  a52524:	c5 f8 13 ae 30 04 00 	vmovlps QWORD PTR [rsi+0x430],xmm5
  a5252b:	00 
  a5252c:	c5 7c 11 9e 00 04 00 	vmovups YMMWORD PTR [rsi+0x400],ymm11
  a52533:	00 
  a52534:	62 71 7c 48 11 8e 38 	vmovups ZMMWORD PTR [rsi+0x438],zmm9
  a5253b:	04 00 00 
  a5253e:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x940]
  a52545:	25 
  a52546:	62 f3 7d 48 19 86 98 	vextractf32x4 XMMWORD PTR [rsi+0x498],zmm0,0x3
  a5254d:	04 00 00 03 
  a52551:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x6c0]
  a52558:	1b 
  a52559:	62 f3 7d 48 19 c5 03 	vextractf32x4 xmm5,zmm0,0x3
  a52560:	c5 f8 13 ae a8 04 00 	vmovlps QWORD PTR [rsi+0x4a8],xmm5
  a52567:	00 
  a52568:	c5 fc 11 9e 78 04 00 	vmovups YMMWORD PTR [rsi+0x478],ymm3
  a5256f:	00 
  a52570:	62 61 7c 48 11 a6 b0 	vmovups ZMMWORD PTR [rsi+0x4b0],zmm28
  a52577:	04 00 00 
  a5257a:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x680]
  a52581:	1a 
  a52582:	62 f3 7d 48 19 46 51 	vextractf32x4 XMMWORD PTR [rsi+0x510],zmm0,0x3
  a52589:	03 
  a5258a:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x900]
  a52591:	24 
  a52592:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a52599:	c5 f8 13 86 20 05 00 	vmovlps QWORD PTR [rsi+0x520],xmm0
  a525a0:	00 
  a525a1:	62 e1 7c 28 11 9e f0 	vmovups YMMWORD PTR [rsi+0x4f0],ymm19
  a525a8:	04 00 00 
  a525ab:	62 f1 7c 48 11 8e 28 	vmovups ZMMWORD PTR [rsi+0x528],zmm1
  a525b2:	05 00 00 
  a525b5:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x8c0]
  a525bc:	23 
  a525bd:	62 f3 7d 48 19 86 88 	vextractf32x4 XMMWORD PTR [rsi+0x588],zmm0,0x3
  a525c4:	05 00 00 03 
  a525c8:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x640]
  a525cf:	19 
  a525d0:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a525d7:	c5 f8 13 86 98 05 00 	vmovlps QWORD PTR [rsi+0x598],xmm0
  a525de:	00 
  a525df:	62 61 7c 28 11 be 68 	vmovups YMMWORD PTR [rsi+0x568],ymm31
  a525e6:	05 00 00 
  a525e9:	62 f1 7c 48 11 96 a0 	vmovups ZMMWORD PTR [rsi+0x5a0],zmm2
  a525f0:	05 00 00 
  a525f3:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x840]
  a525fa:	21 
  a525fb:	62 f3 7d 48 19 46 60 	vextractf32x4 XMMWORD PTR [rsi+0x600],zmm0,0x3
  a52602:	03 
  a52603:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x880]
  a5260a:	22 
  a5260b:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a52612:	c5 f8 13 86 10 06 00 	vmovlps QWORD PTR [rsi+0x610],xmm0
  a52619:	00 
  a5261a:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x80]
  a52621:	fe 
  a52622:	c5 fc 11 86 e0 05 00 	vmovups YMMWORD PTR [rsi+0x5e0],ymm0
  a52629:	00 
  a5262a:	62 61 7c 48 11 9e 18 	vmovups ZMMWORD PTR [rsi+0x618],zmm27
  a52631:	06 00 00 
  a52634:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x5c0]
  a5263b:	17 
  a5263c:	62 f3 7d 48 19 86 78 	vextractf32x4 XMMWORD PTR [rsi+0x678],zmm0,0x3
  a52643:	06 00 00 03 
  a52647:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x600]
  a5264e:	18 
  a5264f:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a52656:	c5 f8 13 86 88 06 00 	vmovlps QWORD PTR [rsi+0x688],xmm0
  a5265d:	00 
  a5265e:	62 61 7c 28 11 b6 58 	vmovups YMMWORD PTR [rsi+0x658],ymm30
  a52665:	06 00 00 
  a52668:	62 e1 7c 48 11 ae 90 	vmovups ZMMWORD PTR [rsi+0x690],zmm21
  a5266f:	06 00 00 
  a52672:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x580]
  a52679:	16 
  a5267a:	62 f3 7d 48 19 46 6f 	vextractf32x4 XMMWORD PTR [rsi+0x6f0],zmm0,0x3
  a52681:	03 
  a52682:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x240]
  a52689:	09 
  a5268a:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a52691:	c5 f8 13 86 00 07 00 	vmovlps QWORD PTR [rsi+0x700],xmm0
  a52698:	00 
  a52699:	62 61 7c 28 11 96 d0 	vmovups YMMWORD PTR [rsi+0x6d0],ymm26
  a526a0:	06 00 00 
  a526a3:	62 f1 7c 48 11 a6 08 	vmovups ZMMWORD PTR [rsi+0x708],zmm4
  a526aa:	07 00 00 
  a526ad:	62 73 7d 48 19 a6 68 	vextractf32x4 XMMWORD PTR [rsi+0x768],zmm12,0x3
  a526b4:	07 00 00 03 
  a526b8:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x80]
  a526bf:	02 
  a526c0:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a526c7:	c5 f8 13 86 78 07 00 	vmovlps QWORD PTR [rsi+0x778],xmm0
  a526ce:	00 
  a526cf:	62 e1 7c 28 11 be 48 	vmovups YMMWORD PTR [rsi+0x748],ymm23
  a526d6:	07 00 00 
  a526d9:	48 81 c4 88 0b 00 00 	add    rsp,0xb88
  a526e0:	c5 f8 77             	vzeroupper
  a526e3:	c3                   	ret
