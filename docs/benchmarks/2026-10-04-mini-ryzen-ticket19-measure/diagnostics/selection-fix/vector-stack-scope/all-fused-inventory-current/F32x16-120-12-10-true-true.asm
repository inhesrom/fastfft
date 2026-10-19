
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a1a740 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a1a740:	55                   	push   rbp
  a1a741:	48 89 e5             	mov    rbp,rsp
  a1a744:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a1a748:	48 81 ec 80 02 00 00 	sub    rsp,0x280
  a1a74f:	48 69 c2 c0 03 00 00 	imul   rax,rdx,0x3c0
  a1a756:	31 d2                	xor    edx,edx
  a1a758:	4c 8d 84 24 00 02 00 	lea    r8,[rsp+0x200]
  a1a75f:	00 
  a1a760:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  a1a765:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  a1a76c:	00 00 00 00 
  a1a770:	c6 84 24 00 02 00 00 	mov    BYTE PTR [rsp+0x200],0x0
  a1a777:	00 
  a1a778:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  a1a77d:	62 e1 7c 48 10 24 17 	vmovups zmm20,ZMMWORD PTR [rdi+rdx*1]
  a1a784:	c5 f8 10 44 17 40    	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x40]
  a1a78a:	62 a1 7c 48 28 cc    	vmovaps zmm17,zmm20
  a1a790:	62 f1 7c 48 28 15 e6 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff6750e6]        # 8f880 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1cd30>
  a1a797:	50 67 ff 
  a1a79a:	62 e2 6d 48 7f e0    	vpermt2ps zmm20,zmm2,zmm0
  a1a7a0:	62 e1 7c 48 10 94 17 	vmovups zmm18,ZMMWORD PTR [rdi+rdx*1+0x50]
  a1a7a7:	50 00 00 00 
  a1a7ab:	c5 f8 10 a4 17 90 00 	vmovups xmm4,XMMWORD PTR [rdi+rdx*1+0x90]
  a1a7b2:	00 00 
  a1a7b4:	62 b1 7c 48 28 da    	vmovaps zmm3,zmm18
  a1a7ba:	62 e2 6d 48 7f d4    	vpermt2ps zmm18,zmm2,zmm4
  a1a7c0:	62 71 7c 48 10 84 17 	vmovups zmm8,ZMMWORD PTR [rdi+rdx*1+0xa0]
  a1a7c7:	a0 00 00 00 
  a1a7cb:	c5 f8 10 ac 17 e0 00 	vmovups xmm5,XMMWORD PTR [rdi+rdx*1+0xe0]
  a1a7d2:	00 00 
  a1a7d4:	62 c1 7c 48 28 e8    	vmovaps zmm21,zmm8
  a1a7da:	62 72 6d 48 7f c5    	vpermt2ps zmm8,zmm2,zmm5
  a1a7e0:	62 e1 7c 48 10 9c 17 	vmovups zmm19,ZMMWORD PTR [rdi+rdx*1+0xf0]
  a1a7e7:	f0 00 00 00 
  a1a7eb:	c5 f8 10 b4 17 30 01 	vmovups xmm6,XMMWORD PTR [rdi+rdx*1+0x130]
  a1a7f2:	00 00 
  a1a7f4:	62 31 7c 48 28 e3    	vmovaps zmm12,zmm19
  a1a7fa:	62 f1 7c 48 28 0d 3c 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff67503c]        # 8f840 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1ccf0>
  a1a801:	50 67 ff 
  a1a804:	62 e2 75 48 7f c8    	vpermt2ps zmm17,zmm1,zmm0
  a1a80a:	62 e2 6d 48 7f de    	vpermt2ps zmm19,zmm2,zmm6
  a1a810:	62 f1 7c 48 10 7c 17 	vmovups zmm7,ZMMWORD PTR [rdi+rdx*1+0x140]
  a1a817:	05 
  a1a818:	c5 f8 10 84 17 80 01 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x180]
  a1a81f:	00 00 
  a1a821:	62 f2 75 48 7f dc    	vpermt2ps zmm3,zmm1,zmm4
  a1a827:	62 71 7c 48 28 f7    	vmovaps zmm14,zmm7
  a1a82d:	62 f2 6d 48 7f f8    	vpermt2ps zmm7,zmm2,zmm0
  a1a833:	62 71 7c 48 10 ac 17 	vmovups zmm13,ZMMWORD PTR [rdi+rdx*1+0x190]
  a1a83a:	90 01 00 00 
  a1a83e:	62 e2 75 48 7f ed    	vpermt2ps zmm21,zmm1,zmm5
  a1a844:	c5 f8 10 ac 17 d0 01 	vmovups xmm5,XMMWORD PTR [rdi+rdx*1+0x1d0]
  a1a84b:	00 00 
  a1a84d:	62 d1 7c 48 28 e5    	vmovaps zmm4,zmm13
  a1a853:	62 72 6d 48 7f ed    	vpermt2ps zmm13,zmm2,zmm5
  a1a859:	62 72 75 48 7f e6    	vpermt2ps zmm12,zmm1,zmm6
  a1a85f:	62 71 7c 48 10 9c 17 	vmovups zmm11,ZMMWORD PTR [rdi+rdx*1+0x1e0]
  a1a866:	e0 01 00 00 
  a1a86a:	c5 f8 10 b4 17 20 02 	vmovups xmm6,XMMWORD PTR [rdi+rdx*1+0x220]
  a1a871:	00 00 
  a1a873:	62 c1 7c 48 28 f3    	vmovaps zmm22,zmm11
  a1a879:	62 72 75 48 7f f0    	vpermt2ps zmm14,zmm1,zmm0
  a1a87f:	62 72 6d 48 7f de    	vpermt2ps zmm11,zmm2,zmm6
  a1a885:	62 e1 7c 48 10 bc 17 	vmovups zmm23,ZMMWORD PTR [rdi+rdx*1+0x230]
  a1a88c:	30 02 00 00 
  a1a890:	c5 f8 10 84 17 70 02 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x270]
  a1a897:	00 00 
  a1a899:	62 f2 75 48 7f e5    	vpermt2ps zmm4,zmm1,zmm5
  a1a89f:	62 31 7c 48 28 cf    	vmovaps zmm9,zmm23
  a1a8a5:	62 e2 6d 48 7f f8    	vpermt2ps zmm23,zmm2,zmm0
  a1a8ab:	62 e1 7c 48 10 44 17 	vmovups zmm16,ZMMWORD PTR [rdi+rdx*1+0x280]
  a1a8b2:	0a 
  a1a8b3:	62 e2 75 48 7f f6    	vpermt2ps zmm22,zmm1,zmm6
  a1a8b9:	c5 f8 10 b4 17 c0 02 	vmovups xmm6,XMMWORD PTR [rdi+rdx*1+0x2c0]
  a1a8c0:	00 00 
  a1a8c2:	62 31 7c 48 28 f8    	vmovaps zmm15,zmm16
  a1a8c8:	62 e2 6d 48 7f c6    	vpermt2ps zmm16,zmm2,zmm6
  a1a8ce:	62 72 75 48 7f c8    	vpermt2ps zmm9,zmm1,zmm0
  a1a8d4:	62 f1 7c 48 10 ac 17 	vmovups zmm5,ZMMWORD PTR [rdi+rdx*1+0x2d0]
  a1a8db:	d0 02 00 00 
  a1a8df:	c5 f8 10 84 17 10 03 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x310]
  a1a8e6:	00 00 
  a1a8e8:	62 61 7c 48 28 dd    	vmovaps zmm27,zmm5
  a1a8ee:	62 72 75 48 7f fe    	vpermt2ps zmm15,zmm1,zmm6
  a1a8f4:	62 f2 6d 48 7f e8    	vpermt2ps zmm5,zmm2,zmm0
  a1a8fa:	62 f1 7c 48 10 b4 17 	vmovups zmm6,ZMMWORD PTR [rdi+rdx*1+0x320]
  a1a901:	20 03 00 00 
  a1a905:	62 61 7c 08 10 44 17 	vmovups xmm24,XMMWORD PTR [rdi+rdx*1+0x360]
  a1a90c:	36 
  a1a90d:	62 62 75 48 7f d8    	vpermt2ps zmm27,zmm1,zmm0
  a1a913:	62 f1 7c 48 28 c6    	vmovaps zmm0,zmm6
  a1a919:	62 92 6d 48 7f f0    	vpermt2ps zmm6,zmm2,zmm24
  a1a91f:	62 61 7c 48 10 a4 17 	vmovups zmm28,ZMMWORD PTR [rdi+rdx*1+0x370]
  a1a926:	70 03 00 00 
  a1a92a:	62 92 75 48 7f c0    	vpermt2ps zmm0,zmm1,zmm24
  a1a930:	62 61 7c 08 10 44 17 	vmovups xmm24,XMMWORD PTR [rdi+rdx*1+0x3b0]
  a1a937:	3b 
  a1a938:	62 01 7c 48 28 cc    	vmovaps zmm25,zmm28
  a1a93e:	62 02 6d 48 7f e0    	vpermt2ps zmm28,zmm2,zmm24
  a1a944:	62 02 75 48 7f c8    	vpermt2ps zmm25,zmm1,zmm24
  a1a94a:	62 41 5c 40 58 c3    	vaddps zmm24,zmm20,zmm11
  a1a950:	62 61 64 40 58 d5    	vaddps zmm26,zmm19,zmm5
  a1a956:	62 61 44 48 58 ee    	vaddps zmm29,zmm7,zmm6
  a1a95c:	62 21 44 40 58 f2    	vaddps zmm30,zmm23,zmm18
  a1a962:	62 41 7c 40 58 f8    	vaddps zmm31,zmm16,zmm8
  a1a968:	62 f1 44 48 5c f6    	vsubps zmm6,zmm7,zmm6
  a1a96e:	62 f1 34 48 58 fb    	vaddps zmm7,zmm9,zmm3
  a1a974:	62 71 34 48 5c cb    	vsubps zmm9,zmm9,zmm3
  a1a97a:	62 d1 1c 40 58 cd    	vaddps zmm1,zmm28,zmm13
  a1a980:	62 c1 7c 40 5c c0    	vsubps zmm16,zmm16,zmm8
  a1a986:	62 f1 34 40 58 d4    	vaddps zmm2,zmm25,zmm4
  a1a98c:	62 61 34 40 5c cc    	vsubps zmm25,zmm25,zmm4
  a1a992:	62 11 1c 48 58 d3    	vaddps zmm10,zmm12,zmm27
  a1a998:	62 51 5c 40 5c db    	vsubps zmm11,zmm20,zmm11
  a1a99e:	62 81 1c 48 5c e3    	vsubps zmm20,zmm12,zmm27
  a1a9a4:	62 91 3c 40 58 e2    	vaddps zmm4,zmm24,zmm26
  a1a9aa:	62 71 0c 48 58 e0    	vaddps zmm12,zmm14,zmm0
  a1a9b0:	62 f1 0c 48 5c c0    	vsubps zmm0,zmm14,zmm0
  a1a9b6:	62 31 6c 40 5c f7    	vsubps zmm14,zmm18,zmm23
  a1a9bc:	62 91 14 40 58 de    	vaddps zmm3,zmm29,zmm30
  a1a9c2:	62 a1 04 48 58 d5    	vaddps zmm18,zmm15,zmm21
  a1a9c8:	62 a1 04 48 5c ed    	vsubps zmm21,zmm15,zmm21
  a1a9ce:	62 11 14 48 5c ec    	vsubps zmm13,zmm13,zmm28
  a1a9d4:	62 71 04 40 58 c1    	vaddps zmm8,zmm31,zmm1
  a1a9da:	62 31 74 40 58 fe    	vaddps zmm15,zmm17,zmm22
  a1a9e0:	62 a1 74 40 5c ce    	vsubps zmm17,zmm17,zmm22
  a1a9e6:	62 a1 54 48 5c db    	vsubps zmm19,zmm5,zmm19
  a1a9ec:	62 c1 04 48 58 f2    	vaddps zmm22,zmm15,zmm10
  a1a9f2:	62 e1 1c 48 58 ff    	vaddps zmm23,zmm12,zmm7
  a1a9f8:	62 01 14 40 5c de    	vsubps zmm27,zmm29,zmm30
  a1a9fe:	62 f1 04 40 5c c9    	vsubps zmm1,zmm31,zmm1
  a1aa04:	62 61 6c 40 58 e2    	vaddps zmm28,zmm18,zmm2
  a1aa0a:	62 41 4c 48 58 e9    	vaddps zmm29,zmm6,zmm9
  a1aa10:	62 01 3c 40 5c c2    	vsubps zmm24,zmm24,zmm26
  a1aa16:	62 f1 0c 48 58 e8    	vaddps zmm5,zmm14,zmm0
  a1aa1c:	62 71 1c 48 5c e7    	vsubps zmm12,zmm12,zmm7
  a1aa22:	62 b1 14 48 58 fd    	vaddps zmm7,zmm13,zmm21
  a1aa28:	62 f1 6c 40 5c d2    	vsubps zmm2,zmm18,zmm2
  a1aa2e:	62 61 54 48 5c d7    	vsubps zmm26,zmm5,zmm7
  a1aa34:	62 f1 54 48 58 ff    	vaddps zmm7,zmm5,zmm7
  a1aa3a:	62 81 7c 40 58 d1    	vaddps zmm18,zmm16,zmm25
  a1aa40:	62 51 04 48 5c d2    	vsubps zmm10,zmm15,zmm10
  a1aa46:	62 b1 14 40 58 ea    	vaddps zmm5,zmm29,zmm18
  a1aa4c:	62 21 14 40 5c ea    	vsubps zmm29,zmm29,zmm18
  a1aa52:	62 61 24 40 58 f1    	vaddps zmm30,zmm27,zmm1
  a1aa58:	62 f1 24 40 5c c9    	vsubps zmm1,zmm27,zmm1
  a1aa5e:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm1
  a1aa65:	02 
  a1aa66:	62 61 1c 48 5c da    	vsubps zmm27,zmm12,zmm2
  a1aa6c:	62 f1 1c 48 58 d2    	vaddps zmm2,zmm12,zmm2
  a1aa72:	62 31 24 48 58 e4    	vaddps zmm12,zmm11,zmm20
  a1aa78:	62 31 24 48 5c dc    	vsubps zmm11,zmm11,zmm20
  a1aa7e:	62 51 4c 48 5c c9    	vsubps zmm9,zmm6,zmm9
  a1aa84:	62 c1 64 48 58 e0    	vaddps zmm20,zmm3,zmm8
  a1aa8a:	62 81 7c 40 5c c1    	vsubps zmm16,zmm16,zmm25
  a1aa90:	62 31 64 40 58 f9    	vaddps zmm15,zmm19,zmm17
  a1aa96:	62 a1 74 40 5c cb    	vsubps zmm17,zmm17,zmm19
  a1aa9c:	62 a1 5c 48 58 d4    	vaddps zmm18,zmm4,zmm20
  a1aaa2:	62 d1 7c 48 5c c6    	vsubps zmm0,zmm0,zmm14
  a1aaa8:	62 81 44 40 58 dc    	vaddps zmm19,zmm23,zmm28
  a1aaae:	62 d1 54 40 5c f5    	vsubps zmm6,zmm21,zmm13
  a1aab4:	62 b1 4c 40 58 cb    	vaddps zmm1,zmm22,zmm19
  a1aaba:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm1
  a1aac1:	01 
  a1aac2:	62 72 7d 48 18 35 94 	vbroadcastss zmm14,DWORD PTR [rip+0xffffffffff65a994]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a1aac9:	a9 65 ff 
  a1aacc:	62 e2 0d 48 ac e4    	vfnmadd213ps zmm20,zmm14,zmm4
  a1aad2:	62 d1 7c 48 28 e6    	vmovaps zmm4,zmm14
  a1aad8:	62 11 44 40 5c ec    	vsubps zmm13,zmm23,zmm28
  a1aade:	62 d2 55 48 ac e4    	vfnmadd213ps zmm4,zmm5,zmm12
  a1aae4:	62 c1 7c 48 28 ee    	vmovaps zmm21,zmm14
  a1aaea:	62 a2 0d 48 ac de    	vfnmadd213ps zmm19,zmm14,zmm22
  a1aaf0:	62 c1 7c 48 28 f6    	vmovaps zmm22,zmm14
  a1aaf6:	62 f2 7d 48 18 0d d4 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff65a7d4]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a1aafd:	a7 65 ff 
  a1ab00:	62 61 2c 40 59 d1    	vmulps zmm26,zmm26,zmm1
  a1ab06:	62 82 0d 40 ac f0    	vfnmadd213ps zmm22,zmm30,zmm24
  a1ab0c:	62 41 64 48 5c e0    	vsubps zmm28,zmm3,zmm8
  a1ab12:	62 c1 7c 48 28 fe    	vmovaps zmm23,zmm14
  a1ab18:	62 c2 45 48 ac ef    	vfnmadd213ps zmm21,zmm7,zmm15
  a1ab1e:	62 c2 6d 48 ac fa    	vfnmadd213ps zmm23,zmm2,zmm10
  a1ab24:	62 01 3c 40 58 ce    	vaddps zmm25,zmm24,zmm30
  a1ab2a:	62 21 34 48 58 c0    	vaddps zmm24,zmm9,zmm16
  a1ab30:	62 f1 2c 48 58 d2    	vaddps zmm2,zmm10,zmm2
  a1ab36:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm2
  a1ab3d:	07 
  a1ab3e:	62 91 24 48 58 d8    	vaddps zmm3,zmm11,zmm24
  a1ab44:	62 42 0d 48 ac c3    	vfnmadd213ps zmm24,zmm14,zmm11
  a1ab4a:	62 71 7c 48 58 d6    	vaddps zmm10,zmm0,zmm6
  a1ab50:	62 61 14 40 59 e9    	vmulps zmm29,zmm29,zmm1
  a1ab56:	62 f1 7c 48 5c c6    	vsubps zmm0,zmm0,zmm6
  a1ab5c:	62 d1 74 40 58 d2    	vaddps zmm2,zmm17,zmm10
  a1ab62:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm2
  a1ab69:	03 
  a1ab6a:	62 32 0d 48 ac d1    	vfnmadd213ps zmm10,zmm14,zmm17
  a1ab70:	62 71 2c 40 58 f4    	vaddps zmm14,zmm26,zmm4
  a1ab76:	62 21 34 48 5c f0    	vsubps zmm30,zmm9,zmm16
  a1ab7c:	62 01 54 40 5c fd    	vsubps zmm31,zmm21,zmm29
  a1ab82:	62 61 24 40 59 d9    	vmulps zmm27,zmm27,zmm1
  a1ab88:	62 91 5c 48 5c e2    	vsubps zmm4,zmm4,zmm26
  a1ab8e:	62 11 4c 40 5c db    	vsubps zmm11,zmm22,zmm27
  a1ab94:	62 61 74 48 59 54 24 	vmulps zmm26,zmm1,ZMMWORD PTR [rsp+0x80]
  a1ab9b:	02 
  a1ab9c:	62 71 14 48 59 e9    	vmulps zmm13,zmm13,zmm1
  a1aba2:	62 91 54 40 58 d5    	vaddps zmm2,zmm21,zmm29
  a1aba8:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm2
  a1abaf:	02 
  a1abb0:	62 51 5c 40 58 cd    	vaddps zmm9,zmm20,zmm13
  a1abb6:	62 e1 1c 40 59 c9    	vmulps zmm17,zmm28,zmm1
  a1abbc:	62 c1 5c 40 5c ed    	vsubps zmm21,zmm20,zmm13
  a1abc2:	62 a1 2c 40 58 c7    	vaddps zmm16,zmm26,zmm23
  a1abc8:	62 f1 1c 48 58 ed    	vaddps zmm5,zmm12,zmm5
  a1abce:	62 21 64 40 5c e9    	vsubps zmm29,zmm19,zmm17
  a1abd4:	62 f1 7c 48 59 c1    	vmulps zmm0,zmm0,zmm1
  a1abda:	62 31 74 40 58 eb    	vaddps zmm13,zmm17,zmm19
  a1abe0:	62 81 7c 48 58 c8    	vaddps zmm17,zmm0,zmm24
  a1abe6:	62 71 0c 40 59 e1    	vmulps zmm12,zmm30,zmm1
  a1abec:	62 e1 04 48 58 df    	vaddps zmm19,zmm15,zmm7
  a1abf2:	62 41 2c 48 5c e4    	vsubps zmm28,zmm10,zmm12
  a1abf8:	62 91 4c 40 58 fb    	vaddps zmm7,zmm22,zmm27
  a1abfe:	62 91 44 40 5c ca    	vsubps zmm1,zmm23,zmm26
  a1ac04:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm1
  a1ac0b:	06 
  a1ac0c:	62 f1 3c 40 5c c0    	vsubps zmm0,zmm24,zmm0
  a1ac12:	62 51 2c 48 58 e4    	vaddps zmm12,zmm10,zmm12
  a1ac18:	62 21 7c 48 28 d2    	vmovaps zmm26,zmm18
  a1ac1e:	62 61 7c 48 28 1d 58 	vmovaps zmm27,ZMMWORD PTR [rip+0xffffffffff6ac358]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a1ac25:	c3 6a ff 
  a1ac28:	62 22 25 40 7f d5    	vpermt2ps zmm26,zmm27,zmm21
  a1ac2e:	62 71 7c 48 28 05 88 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff6ac388]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a1ac35:	c3 6a ff 
  a1ac38:	62 a2 3d 48 7f d5    	vpermt2ps zmm18,zmm8,zmm21
  a1ac3e:	62 c1 7c 48 28 ee    	vmovaps zmm21,zmm14
  a1ac44:	62 72 3d 48 7f f5    	vpermt2ps zmm14,zmm8,zmm5
  a1ac4a:	62 c1 7c 48 28 f3    	vmovaps zmm22,zmm11
  a1ac50:	62 72 3d 48 7f df    	vpermt2ps zmm11,zmm8,zmm7
  a1ac56:	62 e2 25 40 7f ed    	vpermt2ps zmm21,zmm27,zmm5
  a1ac5c:	62 61 7c 48 28 c3    	vmovaps zmm24,zmm3
  a1ac62:	62 62 25 40 7f c0    	vpermt2ps zmm24,zmm27,zmm0
  a1ac68:	62 f2 3d 48 7f d8    	vpermt2ps zmm3,zmm8,zmm0
  a1ac6e:	62 e2 25 40 7f f7    	vpermt2ps zmm22,zmm27,zmm7
  a1ac74:	62 d1 7c 48 28 c1    	vmovaps zmm0,zmm9
  a1ac7a:	c5 d0 57 ed          	vxorps xmm5,xmm5,xmm5
  a1ac7e:	62 f2 25 40 7f c5    	vpermt2ps zmm0,zmm27,zmm5
  a1ac84:	62 71 7c 48 28 d4    	vmovaps zmm10,zmm4
  a1ac8a:	62 72 25 40 7f d5    	vpermt2ps zmm10,zmm27,zmm5
  a1ac90:	62 a1 7c 48 28 f9    	vmovaps zmm23,zmm17
  a1ac96:	62 e2 25 40 7f fd    	vpermt2ps zmm23,zmm27,zmm5
  a1ac9c:	62 91 7c 48 28 d2    	vmovaps zmm2,zmm26
  a1aca2:	62 f1 7c 48 28 0d 54 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff6ac254]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a1aca9:	c2 6a ff 
  a1acac:	62 f2 75 48 7f d0    	vpermt2ps zmm2,zmm1,zmm0
  a1acb2:	62 f1 7c 48 28 35 84 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff6ac284]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a1acb9:	c2 6a ff 
  a1acbc:	62 62 4d 48 7f d0    	vpermt2ps zmm26,zmm6,zmm0
  a1acc2:	62 b1 7c 48 28 fd    	vmovaps zmm7,zmm21
  a1acc8:	62 c2 4d 48 7f ea    	vpermt2ps zmm21,zmm6,zmm10
  a1acce:	62 d2 75 48 7f fa    	vpermt2ps zmm7,zmm1,zmm10
  a1acd4:	62 11 7c 48 28 f8    	vmovaps zmm15,zmm24
  a1acda:	62 32 75 48 7f ff    	vpermt2ps zmm15,zmm1,zmm23
  a1ace0:	62 22 4d 48 7f c7    	vpermt2ps zmm24,zmm6,zmm23
  a1ace6:	62 72 3d 48 7f cd    	vpermt2ps zmm9,zmm8,zmm5
  a1acec:	62 c2 75 48 7f d1    	vpermt2ps zmm18,zmm1,zmm9
  a1acf2:	62 91 7c 48 28 c1    	vmovaps zmm0,zmm25
  a1acf8:	62 f2 25 40 7f c5    	vpermt2ps zmm0,zmm27,zmm5
  a1acfe:	62 f2 3d 48 7f e5    	vpermt2ps zmm4,zmm8,zmm5
  a1ad04:	62 62 3d 48 7f cd    	vpermt2ps zmm25,zmm8,zmm5
  a1ad0a:	62 e2 3d 48 7f cd    	vpermt2ps zmm17,zmm8,zmm5
  a1ad10:	62 72 75 48 7f f4    	vpermt2ps zmm14,zmm1,zmm4
  a1ad16:	62 31 7c 48 28 d6    	vmovaps zmm10,zmm22
  a1ad1c:	62 e2 4d 48 7f f0    	vpermt2ps zmm22,zmm6,zmm0
  a1ad22:	62 12 75 48 7f d9    	vpermt2ps zmm11,zmm1,zmm25
  a1ad28:	62 d1 ed 40 14 e3    	vunpcklpd zmm4,zmm18,zmm11
  a1ad2e:	62 72 75 48 7f d0    	vpermt2ps zmm10,zmm1,zmm0
  a1ad34:	62 b2 75 48 7f d9    	vpermt2ps zmm3,zmm1,zmm17
  a1ad3a:	62 71 8d 48 14 cb    	vunpcklpd zmm9,zmm14,zmm3
  a1ad40:	62 b1 ad 40 14 c6    	vunpcklpd zmm0,zmm26,zmm22
  a1ad46:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  a1ad4d:	04 
  a1ad4e:	62 b1 ad 40 15 c6    	vunpckhpd zmm0,zmm26,zmm22
  a1ad54:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm0
  a1ad5b:	05 
  a1ad5c:	62 81 d5 40 14 e0    	vunpcklpd zmm20,zmm21,zmm24
  a1ad62:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x40]
  a1ad69:	01 
  a1ad6a:	62 e1 7c 48 28 c8    	vmovaps zmm17,zmm0
  a1ad70:	62 c2 25 40 7f cd    	vpermt2ps zmm17,zmm27,zmm13
  a1ad76:	62 11 d5 40 15 f0    	vunpckhpd zmm14,zmm21,zmm24
  a1ad7c:	62 d2 3d 48 7f c5    	vpermt2ps zmm0,zmm8,zmm13
  a1ad82:	62 61 7c 48 28 c8    	vmovaps zmm25,zmm0
  a1ad88:	62 11 7c 48 28 ef    	vmovaps zmm13,zmm31
  a1ad8e:	62 32 25 40 7f eb    	vpermt2ps zmm13,zmm27,zmm19
  a1ad94:	62 61 7c 48 28 f4    	vmovaps zmm30,zmm4
  a1ad9a:	62 22 3d 48 7f fb    	vpermt2ps zmm31,zmm8,zmm19
  a1ada0:	62 21 7c 48 28 d0    	vmovaps zmm26,zmm16
  a1ada6:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x180]
  a1adad:	06 
  a1adae:	62 62 25 40 7f d0    	vpermt2ps zmm26,zmm27,zmm0
  a1adb4:	62 d1 ed 48 14 da    	vunpcklpd zmm3,zmm2,zmm10
  a1adba:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm3
  a1adc1:	01 
  a1adc2:	62 e2 3d 48 7f c0    	vpermt2ps zmm16,zmm8,zmm0
  a1adc8:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0xc0]
  a1adcf:	03 
  a1add0:	62 e1 7c 48 28 f0    	vmovaps zmm22,zmm0
  a1add6:	62 c2 25 40 7f f4    	vpermt2ps zmm22,zmm27,zmm12
  a1addc:	62 41 ed 48 15 c2    	vunpckhpd zmm24,zmm2,zmm10
  a1ade2:	62 d2 3d 48 7f c4    	vpermt2ps zmm0,zmm8,zmm12
  a1ade8:	62 11 7c 48 28 d5    	vmovaps zmm10,zmm29
  a1adee:	62 72 25 40 7f d5    	vpermt2ps zmm10,zmm27,zmm5
  a1adf4:	62 d1 c5 48 14 df    	vunpcklpd zmm3,zmm7,zmm15
  a1adfa:	62 e1 7c 48 28 6c 24 	vmovaps zmm21,ZMMWORD PTR [rsp+0x80]
  a1ae01:	02 
  a1ae02:	62 31 7c 48 28 e5    	vmovaps zmm12,zmm21
  a1ae08:	62 72 25 40 7f e5    	vpermt2ps zmm12,zmm27,zmm5
  a1ae0e:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x1c0]
  a1ae15:	07 
  a1ae16:	62 e1 7c 48 28 da    	vmovaps zmm19,zmm2
  a1ae1c:	62 51 c5 48 15 df    	vunpckhpd zmm11,zmm7,zmm15
  a1ae22:	62 e2 25 40 7f dd    	vpermt2ps zmm19,zmm27,zmm5
  a1ae28:	62 b1 7c 48 28 f9    	vmovaps zmm7,zmm17
  a1ae2e:	62 d2 75 48 7f fa    	vpermt2ps zmm7,zmm1,zmm10
  a1ae34:	62 e1 7c 48 28 15 02 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff6ac002]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a1ae3b:	c0 6a ff 
  a1ae3e:	62 d2 6d 40 7f e1    	vpermt2ps zmm4,zmm18,zmm9
  a1ae44:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm4
  a1ae4b:	03 
  a1ae4c:	62 c2 4d 48 7f ca    	vpermt2ps zmm17,zmm6,zmm10
  a1ae52:	62 11 7c 48 28 d4    	vmovaps zmm10,zmm28
  a1ae58:	62 72 25 40 7f d5    	vpermt2ps zmm10,zmm27,zmm5
  a1ae5e:	62 f1 7c 48 28 25 98 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff6abf98]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a1ae65:	bf 6a ff 
  a1ae68:	62 42 5d 48 7f f1    	vpermt2ps zmm30,zmm4,zmm9
  a1ae6e:	62 51 7c 48 28 cd    	vmovaps zmm9,zmm13
  a1ae74:	62 52 75 48 7f cc    	vpermt2ps zmm9,zmm1,zmm12
  a1ae7a:	62 52 4d 48 7f ec    	vpermt2ps zmm13,zmm6,zmm12
  a1ae80:	62 11 7c 48 28 e2    	vmovaps zmm12,zmm26
  a1ae86:	62 32 75 48 7f e3    	vpermt2ps zmm12,zmm1,zmm19
  a1ae8c:	62 22 4d 48 7f d3    	vpermt2ps zmm26,zmm6,zmm19
  a1ae92:	62 a1 7c 48 28 fe    	vmovaps zmm23,zmm22
  a1ae98:	62 c2 75 48 7f fa    	vpermt2ps zmm23,zmm1,zmm10
  a1ae9e:	62 c2 4d 48 7f f2    	vpermt2ps zmm22,zmm6,zmm10
  a1aea4:	62 62 3d 48 7f ed    	vpermt2ps zmm29,zmm8,zmm5
  a1aeaa:	62 02 75 48 7f cd    	vpermt2ps zmm25,zmm1,zmm29
  a1aeb0:	62 b1 7c 48 28 f5    	vmovaps zmm6,zmm21
  a1aeb6:	62 f2 3d 48 7f f5    	vpermt2ps zmm6,zmm8,zmm5
  a1aebc:	62 62 75 48 7f fe    	vpermt2ps zmm31,zmm1,zmm6
  a1aec2:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x100]
  a1aec9:	04 
  a1aeca:	62 e1 7c 48 28 ee    	vmovaps zmm21,zmm6
  a1aed0:	62 b2 6d 40 7f f4    	vpermt2ps zmm6,zmm18,zmm20
  a1aed6:	62 71 7c 48 28 d6    	vmovaps zmm10,zmm6
  a1aedc:	62 a2 5d 48 7f ec    	vpermt2ps zmm21,zmm4,zmm20
  a1aee2:	62 f2 3d 48 7f d5    	vpermt2ps zmm2,zmm8,zmm5
  a1aee8:	62 e2 75 48 7f c2    	vpermt2ps zmm16,zmm1,zmm2
  a1aeee:	62 31 b5 40 14 f8    	vunpcklpd zmm15,zmm25,zmm16
  a1aef4:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x40]
  a1aefb:	01 
  a1aefc:	62 e1 7c 48 28 e2    	vmovaps zmm20,zmm2
  a1af02:	62 f2 6d 40 7f d3    	vpermt2ps zmm2,zmm18,zmm3
  a1af08:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm2
  a1af0f:	01 
  a1af10:	62 62 3d 48 7f e5    	vpermt2ps zmm28,zmm8,zmm5
  a1af16:	62 92 75 48 7f c4    	vpermt2ps zmm0,zmm1,zmm28
  a1af1c:	62 01 7c 48 28 e8    	vmovaps zmm29,zmm24
  a1af22:	62 f1 85 40 14 c8    	vunpcklpd zmm1,zmm31,zmm0
  a1af28:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x140]
  a1af2f:	05 
  a1af30:	62 e1 7c 48 28 da    	vmovaps zmm19,zmm2
  a1af36:	62 d2 6d 40 7f d6    	vpermt2ps zmm2,zmm18,zmm14
  a1af3c:	62 e1 7c 48 28 c2    	vmovaps zmm16,zmm2
  a1af42:	62 c2 5d 48 7f de    	vpermt2ps zmm19,zmm4,zmm14
  a1af48:	62 41 c5 48 14 cc    	vunpcklpd zmm25,zmm7,zmm12
  a1af4e:	62 41 c5 48 15 fc    	vunpckhpd zmm31,zmm7,zmm12
  a1af54:	62 21 b5 48 14 df    	vunpcklpd zmm27,zmm9,zmm23
  a1af5a:	62 42 6d 40 7f c3    	vpermt2ps zmm24,zmm18,zmm11
  a1af60:	62 b1 b5 48 15 d7    	vunpckhpd zmm2,zmm9,zmm23
  a1af66:	62 11 f5 40 14 f2    	vunpcklpd zmm14,zmm17,zmm26
  a1af6c:	62 11 f5 40 15 e2    	vunpckhpd zmm12,zmm17,zmm26
  a1af72:	62 e2 5d 48 7f e3    	vpermt2ps zmm20,zmm4,zmm3
  a1af78:	62 b1 95 48 14 c6    	vunpcklpd zmm0,zmm13,zmm22
  a1af7e:	62 b1 95 48 15 f6    	vunpckhpd zmm6,zmm13,zmm22
  a1af84:	62 c1 7c 48 28 ce    	vmovaps zmm17,zmm14
  a1af8a:	62 11 7c 48 28 ef    	vmovaps zmm13,zmm31
  a1af90:	62 e2 5d 48 7f c8    	vpermt2ps zmm17,zmm4,zmm0
  a1af96:	62 72 6d 40 7f f0    	vpermt2ps zmm14,zmm18,zmm0
  a1af9c:	62 d1 7c 48 28 fc    	vmovaps zmm7,zmm12
  a1afa2:	62 62 6d 40 7f fa    	vpermt2ps zmm31,zmm18,zmm2
  a1afa8:	62 f2 5d 48 7f fe    	vpermt2ps zmm7,zmm4,zmm6
  a1afae:	62 72 6d 40 7f e6    	vpermt2ps zmm12,zmm18,zmm6
  a1afb4:	62 d1 7c 48 28 c7    	vmovaps zmm0,zmm15
  a1afba:	62 42 5d 48 7f eb    	vpermt2ps zmm29,zmm4,zmm11
  a1afc0:	62 f2 5d 48 7f c1    	vpermt2ps zmm0,zmm4,zmm1
  a1afc6:	62 72 6d 40 7f f9    	vpermt2ps zmm15,zmm18,zmm1
  a1afcc:	62 f1 7c 48 10 49 10 	vmovups zmm1,ZMMWORD PTR [rcx+0x400]
  a1afd3:	62 72 5d 48 7f ea    	vpermt2ps zmm13,zmm4,zmm2
  a1afd9:	62 f1 7c 48 10 51 11 	vmovups zmm2,ZMMWORD PTR [rcx+0x440]
  a1afe0:	62 61 0c 40 59 e1    	vmulps zmm28,zmm30,zmm1
  a1afe6:	62 71 7c 48 59 d9    	vmulps zmm11,zmm0,zmm1
  a1afec:	62 62 7d 48 bc e2    	vfnmadd231ps zmm28,zmm0,zmm2
  a1aff2:	62 f1 7c 48 10 41 08 	vmovups zmm0,ZMMWORD PTR [rcx+0x200]
  a1aff9:	62 12 6d 48 b8 de    	vfmadd231ps zmm11,zmm2,zmm30
  a1afff:	62 f1 7c 48 10 49 09 	vmovups zmm1,ZMMWORD PTR [rcx+0x240]
  a1b006:	62 61 54 40 59 f0    	vmulps zmm30,zmm21,zmm0
  a1b00c:	62 62 75 40 bc f1    	vfnmadd231ps zmm30,zmm17,zmm1
  a1b012:	62 f1 74 40 59 e8    	vmulps zmm5,zmm17,zmm0
  a1b018:	62 f1 7c 48 10 41 0a 	vmovups zmm0,ZMMWORD PTR [rcx+0x280]
  a1b01f:	62 b2 75 48 b8 ed    	vfmadd231ps zmm5,zmm1,zmm21
  a1b025:	62 f1 7c 48 10 49 0b 	vmovups zmm1,ZMMWORD PTR [rcx+0x2c0]
  a1b02c:	62 e1 2c 48 59 f0    	vmulps zmm22,zmm10,zmm0
  a1b032:	62 e1 0c 48 59 f8    	vmulps zmm23,zmm14,zmm0
  a1b038:	62 e2 0d 48 bc f1    	vfnmadd231ps zmm22,zmm14,zmm1
  a1b03e:	62 f1 7c 48 10 41 0c 	vmovups zmm0,ZMMWORD PTR [rcx+0x300]
  a1b045:	62 c2 75 48 b8 fa    	vfmadd231ps zmm23,zmm1,zmm10
  a1b04b:	62 f1 7c 48 10 49 0d 	vmovups zmm1,ZMMWORD PTR [rcx+0x340]
  a1b052:	62 71 64 40 59 f0    	vmulps zmm14,zmm19,zmm0
  a1b058:	62 72 45 48 bc f1    	vfnmadd231ps zmm14,zmm7,zmm1
  a1b05e:	62 f1 44 48 59 d0    	vmulps zmm2,zmm7,zmm0
  a1b064:	62 f1 7c 48 10 41 0e 	vmovups zmm0,ZMMWORD PTR [rcx+0x380]
  a1b06b:	62 b2 75 48 b8 d3    	vfmadd231ps zmm2,zmm1,zmm19
  a1b071:	62 f1 7c 48 10 49 0f 	vmovups zmm1,ZMMWORD PTR [rcx+0x3c0]
  a1b078:	62 71 7c 40 59 c0    	vmulps zmm8,zmm16,zmm0
  a1b07e:	62 71 1c 48 59 d0    	vmulps zmm10,zmm12,zmm0
  a1b084:	62 72 1d 48 bc c1    	vfnmadd231ps zmm8,zmm12,zmm1
  a1b08a:	62 f1 7c 48 10 41 04 	vmovups zmm0,ZMMWORD PTR [rcx+0x100]
  a1b091:	62 32 75 48 b8 d0    	vfmadd231ps zmm10,zmm1,zmm16
  a1b097:	62 f1 7c 48 10 49 05 	vmovups zmm1,ZMMWORD PTR [rcx+0x140]
  a1b09e:	62 71 14 40 59 e0    	vmulps zmm12,zmm29,zmm0
  a1b0a4:	62 72 15 48 bc e1    	vfnmadd231ps zmm12,zmm13,zmm1
  a1b0aa:	62 e1 14 48 59 c0    	vmulps zmm16,zmm13,zmm0
  a1b0b0:	62 f1 7c 48 10 41 06 	vmovups zmm0,ZMMWORD PTR [rcx+0x180]
  a1b0b7:	62 82 75 48 b8 c5    	vfmadd231ps zmm16,zmm1,zmm29
  a1b0bd:	62 f1 7c 48 10 49 07 	vmovups zmm1,ZMMWORD PTR [rcx+0x1c0]
  a1b0c4:	62 f1 3c 40 59 f0    	vmulps zmm6,zmm24,zmm0
  a1b0ca:	62 71 04 40 59 e8    	vmulps zmm13,zmm31,zmm0
  a1b0d0:	62 f2 05 40 bc f1    	vfnmadd231ps zmm6,zmm31,zmm1
  a1b0d6:	62 f1 7c 48 10 59 12 	vmovups zmm3,ZMMWORD PTR [rcx+0x480]
  a1b0dd:	62 12 75 48 b8 e8    	vfmadd231ps zmm13,zmm1,zmm24
  a1b0e3:	62 f1 7c 48 10 49 13 	vmovups zmm1,ZMMWORD PTR [rcx+0x4c0]
  a1b0ea:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0xc0]
  a1b0f1:	03 
  a1b0f2:	62 f1 44 48 59 c3    	vmulps zmm0,zmm7,zmm3
  a1b0f8:	62 f2 05 48 bc c1    	vfnmadd231ps zmm0,zmm15,zmm1
  a1b0fe:	62 71 04 48 59 fb    	vmulps zmm15,zmm15,zmm3
  a1b104:	62 81 7c 48 28 d9    	vmovaps zmm19,zmm25
  a1b10a:	62 02 6d 40 7f cb    	vpermt2ps zmm25,zmm18,zmm27
  a1b110:	62 72 75 48 b8 ff    	vfmadd231ps zmm15,zmm1,zmm7
  a1b116:	62 f1 7c 48 10 49 02 	vmovups zmm1,ZMMWORD PTR [rcx+0x80]
  a1b11d:	62 f1 7c 48 10 59 03 	vmovups zmm3,ZMMWORD PTR [rcx+0xc0]
  a1b124:	62 82 5d 48 7f db    	vpermt2ps zmm19,zmm4,zmm27
  a1b12a:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x40]
  a1b131:	01 
  a1b132:	62 e1 5c 48 59 c9    	vmulps zmm17,zmm4,zmm1
  a1b138:	62 e2 35 40 bc cb    	vfnmadd231ps zmm17,zmm25,zmm3
  a1b13e:	62 f1 34 40 59 c9    	vmulps zmm1,zmm25,zmm1
  a1b144:	62 51 0c 40 58 ce    	vaddps zmm9,zmm30,zmm14
  a1b14a:	62 f2 65 48 b8 cc    	vfmadd231ps zmm1,zmm3,zmm4
  a1b150:	62 f1 54 48 58 da    	vaddps zmm3,zmm5,zmm2
  a1b156:	62 f1 54 48 5c d2    	vsubps zmm2,zmm5,zmm2
  a1b15c:	62 81 1c 48 58 ec    	vaddps zmm21,zmm12,zmm28
  a1b162:	62 d1 2c 48 58 fd    	vaddps zmm7,zmm10,zmm13
  a1b168:	62 51 2c 48 5c d5    	vsubps zmm10,zmm10,zmm13
  a1b16e:	62 51 7c 40 58 eb    	vaddps zmm13,zmm16,zmm11
  a1b174:	62 c1 7c 40 5c c3    	vsubps zmm16,zmm16,zmm11
  a1b17a:	62 f1 04 48 58 e1    	vaddps zmm4,zmm15,zmm1
  a1b180:	62 f1 04 48 5c c9    	vsubps zmm1,zmm15,zmm1
  a1b186:	62 71 3c 48 58 fe    	vaddps zmm15,zmm8,zmm6
  a1b18c:	62 91 1c 48 5c ec    	vsubps zmm5,zmm12,zmm28
  a1b192:	62 41 4c 40 58 c7    	vaddps zmm24,zmm22,zmm15
  a1b198:	62 51 0c 40 5c e6    	vsubps zmm12,zmm30,zmm14
  a1b19e:	62 61 3c 48 5c ce    	vsubps zmm25,zmm8,zmm6
  a1b1a4:	62 b1 5c 40 58 f5    	vaddps zmm6,zmm20,zmm21
  a1b1aa:	62 21 7c 48 58 d1    	vaddps zmm26,zmm0,zmm17
  a1b1b0:	62 b1 7c 48 5c c1    	vsubps zmm0,zmm0,zmm17
  a1b1b6:	62 62 7d 48 18 1d 28 	vbroadcastss zmm27,DWORD PTR [rip+0xffffffffff65a528]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a1b1bd:	a5 65 ff 
  a1b1c0:	62 11 7c 48 28 db    	vmovaps zmm11,zmm27
  a1b1c6:	62 c1 4c 48 58 d1    	vaddps zmm18,zmm6,zmm9
  a1b1cc:	62 32 55 40 a8 dc    	vfmadd213ps zmm11,zmm21,zmm20
  a1b1d2:	62 62 7d 48 18 25 68 	vbroadcastss zmm28,DWORD PTR [rip+0xffffffffff65a468]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a1b1d9:	a4 65 ff 
  a1b1dc:	62 a2 1d 40 bc e5    	vfnmadd231ps zmm20,zmm28,zmm21
  a1b1e2:	62 a1 14 48 58 cb    	vaddps zmm17,zmm13,zmm19
  a1b1e8:	62 12 35 48 bc dc    	vfnmadd231ps zmm11,zmm9,zmm28
  a1b1ee:	62 c2 25 40 b8 e1    	vfmadd231ps zmm20,zmm27,zmm9
  a1b1f4:	62 e2 7d 48 18 2d 5a 	vbroadcastss zmm21,DWORD PTR [rip+0xffffffffff65a55a]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a1b1fb:	a5 65 ff 
  a1b1fe:	62 31 6c 48 59 cd    	vmulps zmm9,zmm2,zmm21
  a1b204:	62 62 7d 48 18 2d 92 	vbroadcastss zmm29,DWORD PTR [rip+0xffffffffff65a192]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a1b20b:	a1 65 ff 
  a1b20e:	62 12 7d 40 b8 cd    	vfmadd231ps zmm9,zmm16,zmm29
  a1b214:	62 a1 7c 40 59 c5    	vmulps zmm16,zmm16,zmm21
  a1b21a:	62 e2 15 40 bc c2    	vfnmadd231ps zmm16,zmm29,zmm2
  a1b220:	62 11 7c 48 28 f3    	vmovaps zmm14,zmm27
  a1b226:	62 32 05 48 a8 f6    	vfmadd213ps zmm14,zmm15,zmm22
  a1b22c:	62 11 3c 40 58 c2    	vaddps zmm8,zmm24,zmm26
  a1b232:	62 12 2d 40 bc f4    	vfnmadd231ps zmm14,zmm26,zmm28
  a1b238:	62 c2 1d 40 bc f7    	vfnmadd231ps zmm22,zmm28,zmm15
  a1b23e:	62 b1 74 48 59 d5    	vmulps zmm2,zmm1,zmm21
  a1b244:	62 92 2d 48 b8 d5    	vfmadd231ps zmm2,zmm10,zmm29
  a1b24a:	62 82 25 40 b8 f2    	vfmadd231ps zmm22,zmm27,zmm26
  a1b250:	62 11 7c 48 28 fb    	vmovaps zmm15,zmm27
  a1b256:	62 31 2c 48 59 d5    	vmulps zmm10,zmm10,zmm21
  a1b25c:	62 32 15 48 a8 fb    	vfmadd213ps zmm15,zmm13,zmm19
  a1b262:	62 72 15 40 bc d1    	vfnmadd231ps zmm10,zmm29,zmm1
  a1b268:	62 91 7c 48 28 cb    	vmovaps zmm1,zmm27
  a1b26e:	62 c2 1d 40 bc dd    	vfnmadd231ps zmm19,zmm28,zmm13
  a1b274:	62 f1 44 40 58 f7    	vaddps zmm6,zmm23,zmm7
  a1b27a:	62 b2 45 48 a8 cf    	vfmadd213ps zmm1,zmm7,zmm23
  a1b280:	62 e2 1d 40 bc ff    	vfnmadd231ps zmm23,zmm28,zmm7
  a1b286:	62 f1 4c 48 58 f4    	vaddps zmm6,zmm6,zmm4
  a1b28c:	62 92 5d 48 bc cc    	vfnmadd231ps zmm1,zmm4,zmm28
  a1b292:	62 e2 25 40 b8 fc    	vfmadd231ps zmm23,zmm27,zmm4
  a1b298:	62 b1 7c 48 59 e5    	vmulps zmm4,zmm0,zmm21
  a1b29e:	62 92 35 40 b8 e5    	vfmadd231ps zmm4,zmm25,zmm29
  a1b2a4:	62 b1 34 40 59 fd    	vmulps zmm7,zmm25,zmm21
  a1b2aa:	62 f2 15 40 bc f8    	vfnmadd231ps zmm7,zmm29,zmm0
  a1b2b0:	62 b1 64 48 58 c1    	vaddps zmm0,zmm3,zmm17
  a1b2b6:	62 12 65 48 bc fc    	vfnmadd231ps zmm15,zmm3,zmm28
  a1b2bc:	62 e2 25 40 b8 db    	vfmadd231ps zmm19,zmm27,zmm3
  a1b2c2:	62 b1 1c 48 59 dd    	vmulps zmm3,zmm12,zmm21
  a1b2c8:	62 92 55 48 b8 dd    	vfmadd231ps zmm3,zmm5,zmm29
  a1b2ce:	62 b1 54 48 59 ed    	vmulps zmm5,zmm5,zmm21
  a1b2d4:	62 d2 15 40 bc ec    	vfnmadd231ps zmm5,zmm29,zmm12
  a1b2da:	62 51 4c 40 58 e2    	vaddps zmm12,zmm22,zmm10
  a1b2e0:	62 51 4c 40 5c d2    	vsubps zmm10,zmm22,zmm10
  a1b2e6:	62 31 5c 40 58 e8    	vaddps zmm13,zmm20,zmm16
  a1b2ec:	62 a1 5c 40 5c c0    	vsubps zmm16,zmm20,zmm16
  a1b2f2:	62 e1 44 40 5c cf    	vsubps zmm17,zmm23,zmm7
  a1b2f8:	62 e1 44 40 58 e7    	vaddps zmm20,zmm23,zmm7
  a1b2fe:	62 e1 64 40 5c ed    	vsubps zmm21,zmm19,zmm5
  a1b304:	62 b1 54 48 58 eb    	vaddps zmm5,zmm5,zmm19
  a1b30a:	62 f1 0c 48 58 fa    	vaddps zmm7,zmm14,zmm2
  a1b310:	62 f1 0c 48 5c d2    	vsubps zmm2,zmm14,zmm2
  a1b316:	62 51 24 48 58 f1    	vaddps zmm14,zmm11,zmm9
  a1b31c:	62 c1 24 48 5c d9    	vsubps zmm19,zmm11,zmm9
  a1b322:	62 71 74 48 5c cc    	vsubps zmm9,zmm1,zmm4
  a1b328:	62 f1 74 48 58 cc    	vaddps zmm1,zmm1,zmm4
  a1b32e:	62 f1 04 48 5c e3    	vsubps zmm4,zmm15,zmm3
  a1b334:	62 51 64 48 58 ff    	vaddps zmm15,zmm3,zmm15
  a1b33a:	62 e1 0c 48 5c f7    	vsubps zmm22,zmm14,zmm7
  a1b340:	62 f1 0c 48 58 ff    	vaddps zmm7,zmm14,zmm7
  a1b346:	62 51 5c 48 5c f1    	vsubps zmm14,zmm4,zmm9
  a1b34c:	62 51 5c 48 58 c9    	vaddps zmm9,zmm4,zmm9
  a1b352:	62 c1 14 48 58 fc    	vaddps zmm23,zmm13,zmm12
  a1b358:	62 d1 14 48 5c e4    	vsubps zmm4,zmm13,zmm12
  a1b35e:	62 31 54 40 58 e1    	vaddps zmm12,zmm21,zmm17
  a1b364:	62 31 54 40 5c d9    	vsubps zmm11,zmm21,zmm17
  a1b36a:	62 51 7c 40 5c ea    	vsubps zmm13,zmm16,zmm10
  a1b370:	62 d1 7c 40 58 da    	vaddps zmm3,zmm16,zmm10
  a1b376:	62 31 54 48 5c d4    	vsubps zmm10,zmm5,zmm20
  a1b37c:	62 b1 54 48 58 ec    	vaddps zmm5,zmm5,zmm20
  a1b382:	62 e1 7c 48 5c c6    	vsubps zmm16,zmm0,zmm6
  a1b388:	62 f1 7c 48 58 c6    	vaddps zmm0,zmm0,zmm6
  a1b38e:	62 e1 64 40 58 ca    	vaddps zmm17,zmm19,zmm2
  a1b394:	62 f1 64 40 5c f2    	vsubps zmm6,zmm19,zmm2
  a1b39a:	62 d1 6c 40 5c d0    	vsubps zmm2,zmm18,zmm8
  a1b3a0:	62 51 6c 40 58 c0    	vaddps zmm8,zmm18,zmm8
  a1b3a6:	62 e1 7c 48 28 d0    	vmovaps zmm18,zmm0
  a1b3ac:	62 e1 7c 28 28 1d 8a 	vmovaps ymm19,YMMWORD PTR [rip+0xffffffffff65b88a]        # 76c40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x40f0>
  a1b3b3:	b8 65 ff 
  a1b3b6:	62 c2 65 40 7f d0    	vpermt2ps zmm18,zmm19,zmm8
  a1b3bc:	62 e1 7c 48 28 25 fa 	vmovaps zmm20,ZMMWORD PTR [rip+0xffffffffff6744fa]        # 8f8c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1cd70>
  a1b3c3:	44 67 ff 
  a1b3c6:	62 d2 5d 40 7f c0    	vpermt2ps zmm0,zmm20,zmm8
  a1b3cc:	62 f1 7c 48 11 04 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm0
  a1b3d3:	62 71 04 48 58 c1    	vaddps zmm8,zmm15,zmm1
  a1b3d9:	62 f1 04 48 5c c1    	vsubps zmm0,zmm15,zmm1
  a1b3df:	62 e1 7c 28 11 54 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm18
  a1b3e6:	02 
  a1b3e7:	62 d1 7c 48 28 ce    	vmovaps zmm1,zmm14
  a1b3ed:	62 32 5d 40 7f f6    	vpermt2ps zmm14,zmm20,zmm22
  a1b3f3:	62 b2 65 40 7f ce    	vpermt2ps zmm1,zmm19,zmm22
  a1b3f9:	62 71 7c 48 11 b4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x60],zmm14
  a1b400:	60 00 00 00 
  a1b404:	c5 fc 11 8c 16 a0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xa0],ymm1
  a1b40b:	00 00 
  a1b40d:	62 d1 7c 48 28 cc    	vmovaps zmm1,zmm12
  a1b413:	62 b2 65 40 7f cf    	vpermt2ps zmm1,zmm19,zmm23
  a1b419:	62 32 5d 40 7f e7    	vpermt2ps zmm12,zmm20,zmm23
  a1b41f:	62 71 7c 48 11 64 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xc0],zmm12
  a1b426:	03 
  a1b427:	c5 fc 11 8c 16 00 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x100],ymm1
  a1b42e:	00 00 
  a1b430:	62 d1 7c 48 28 ca    	vmovaps zmm1,zmm10
  a1b436:	62 d2 65 40 7f cd    	vpermt2ps zmm1,zmm19,zmm13
  a1b43c:	62 52 5d 40 7f d5    	vpermt2ps zmm10,zmm20,zmm13
  a1b442:	62 71 7c 48 11 94 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x120],zmm10
  a1b449:	20 01 00 00 
  a1b44d:	c5 fc 11 8c 16 60 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x160],ymm1
  a1b454:	00 00 
  a1b456:	62 d1 7c 48 28 c8    	vmovaps zmm1,zmm8
  a1b45c:	62 b2 65 40 7f c9    	vpermt2ps zmm1,zmm19,zmm17
  a1b462:	62 32 5d 40 7f c1    	vpermt2ps zmm8,zmm20,zmm17
  a1b468:	62 71 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x180],zmm8
  a1b46f:	06 
  a1b470:	62 31 7c 48 28 c0    	vmovaps zmm8,zmm16
  a1b476:	62 72 65 40 7f c2    	vpermt2ps zmm8,zmm19,zmm2
  a1b47c:	62 e2 5d 40 7f c2    	vpermt2ps zmm16,zmm20,zmm2
  a1b482:	c5 fc 11 8c 16 c0 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x1c0],ymm1
  a1b489:	00 00 
  a1b48b:	62 e1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1e0],zmm16
  a1b492:	e0 01 00 00 
  a1b496:	c5 7c 11 84 16 20 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x220],ymm8
  a1b49d:	00 00 
  a1b49f:	62 d1 7c 48 28 c9    	vmovaps zmm1,zmm9
  a1b4a5:	62 f2 65 40 7f cf    	vpermt2ps zmm1,zmm19,zmm7
  a1b4ab:	62 72 5d 40 7f cf    	vpermt2ps zmm9,zmm20,zmm7
  a1b4b1:	62 71 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x240],zmm9
  a1b4b8:	09 
  a1b4b9:	c5 fc 11 8c 16 80 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x280],ymm1
  a1b4c0:	00 00 
  a1b4c2:	62 d1 7c 48 28 cb    	vmovaps zmm1,zmm11
  a1b4c8:	62 f2 65 40 7f cc    	vpermt2ps zmm1,zmm19,zmm4
  a1b4ce:	62 72 5d 40 7f dc    	vpermt2ps zmm11,zmm20,zmm4
  a1b4d4:	62 71 7c 48 11 9c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x2a0],zmm11
  a1b4db:	a0 02 00 00 
  a1b4df:	c5 fc 11 8c 16 e0 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x2e0],ymm1
  a1b4e6:	00 00 
  a1b4e8:	62 f1 7c 48 28 cd    	vmovaps zmm1,zmm5
  a1b4ee:	62 f2 65 40 7f cb    	vpermt2ps zmm1,zmm19,zmm3
  a1b4f4:	62 f2 5d 40 7f eb    	vpermt2ps zmm5,zmm20,zmm3
  a1b4fa:	62 f1 7c 48 11 6c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x300],zmm5
  a1b501:	0c 
  a1b502:	62 f1 7c 48 28 d0    	vmovaps zmm2,zmm0
  a1b508:	62 f2 65 40 7f d6    	vpermt2ps zmm2,zmm19,zmm6
  a1b50e:	62 f2 5d 40 7f c6    	vpermt2ps zmm0,zmm20,zmm6
  a1b514:	c5 fc 11 8c 16 40 03 	vmovups YMMWORD PTR [rsi+rdx*1+0x340],ymm1
  a1b51b:	00 00 
  a1b51d:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x360],zmm0
  a1b524:	60 03 00 00 
  a1b528:	c5 fc 11 94 16 a0 03 	vmovups YMMWORD PTR [rsi+rdx*1+0x3a0],ymm2
  a1b52f:	00 00 
  a1b531:	48 81 c2 c0 03 00 00 	add    rdx,0x3c0
  a1b538:	48 39 d0             	cmp    rax,rdx
  a1b53b:	0f 85 2f f2 ff ff    	jne    a1a770 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x30>
  a1b541:	48 89 ec             	mov    rsp,rbp
  a1b544:	5d                   	pop    rbp
  a1b545:	c5 f8 77             	vzeroupper
  a1b548:	c3                   	ret
