
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a1b6c0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a1b6c0:	48 81 ec 08 05 00 00 	sub    rsp,0x508
  a1b6c7:	48 69 c2 c0 03 00 00 	imul   rax,rdx,0x3c0
  a1b6ce:	31 d2                	xor    edx,edx
  a1b6d0:	62 71 7c 48 10 64 17 	vmovups zmm12,ZMMWORD PTR [rdi+rdx*1+0x40]
  a1b6d7:	01 
  a1b6d8:	62 f1 7c 48 10 44 17 	vmovups zmm0,ZMMWORD PTR [rdi+rdx*1+0x80]
  a1b6df:	02 
  a1b6e0:	62 71 7c 48 10 74 17 	vmovups zmm14,ZMMWORD PTR [rdi+rdx*1+0xc0]
  a1b6e7:	03 
  a1b6e8:	62 d1 7c 48 28 cc    	vmovaps zmm1,zmm12
  a1b6ee:	62 e1 7c 48 28 3d 48 	vmovaps zmm23,ZMMWORD PTR [rip+0xffffffffff674448]        # 8fb40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1cff0>
  a1b6f5:	44 67 ff 
  a1b6f8:	62 a1 7c 00 57 c0    	vxorps xmm16,xmm16,xmm16
  a1b6fe:	62 b2 45 40 7f c8    	vpermt2ps zmm1,zmm23,zmm16
  a1b704:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm1
  a1b70b:	0a 
  a1b70c:	62 e1 7c 48 28 35 6a 	vmovaps zmm22,ZMMWORD PTR [rip+0xffffffffff67446a]        # 8fb80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d030>
  a1b713:	44 67 ff 
  a1b716:	62 32 4d 40 7f e0    	vpermt2ps zmm12,zmm22,zmm16
  a1b71c:	62 61 7c 48 28 c0    	vmovaps zmm24,zmm0
  a1b722:	62 22 45 40 7f c0    	vpermt2ps zmm24,zmm23,zmm16
  a1b728:	62 b2 4d 40 7f c0    	vpermt2ps zmm0,zmm22,zmm16
  a1b72e:	62 71 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm14
  a1b735:	09 
  a1b736:	62 32 4d 40 7f f0    	vpermt2ps zmm14,zmm22,zmm16
  a1b73c:	62 f1 7c 48 10 6c 17 	vmovups zmm5,ZMMWORD PTR [rdi+rdx*1+0x100]
  a1b743:	04 
  a1b744:	62 e1 7c 48 28 ed    	vmovaps zmm21,zmm5
  a1b74a:	62 a2 45 40 7f e8    	vpermt2ps zmm21,zmm23,zmm16
  a1b750:	62 b2 4d 40 7f e8    	vpermt2ps zmm5,zmm22,zmm16
  a1b756:	62 e1 7c 48 10 4c 17 	vmovups zmm17,ZMMWORD PTR [rdi+rdx*1+0x140]
  a1b75d:	05 
  a1b75e:	62 a1 7c 48 28 d1    	vmovaps zmm18,zmm17
  a1b764:	62 a2 4d 40 7f c8    	vpermt2ps zmm17,zmm22,zmm16
  a1b76a:	62 71 7c 48 10 4c 17 	vmovups zmm9,ZMMWORD PTR [rdi+rdx*1+0x180]
  a1b771:	06 
  a1b772:	62 41 7c 48 28 f9    	vmovaps zmm31,zmm9
  a1b778:	62 32 4d 40 7f c8    	vpermt2ps zmm9,zmm22,zmm16
  a1b77e:	62 f1 7c 48 10 54 17 	vmovups zmm2,ZMMWORD PTR [rdi+rdx*1+0x1c0]
  a1b785:	07 
  a1b786:	62 71 7c 48 28 fa    	vmovaps zmm15,zmm2
  a1b78c:	62 32 45 40 7f f8    	vpermt2ps zmm15,zmm23,zmm16
  a1b792:	62 b2 4d 40 7f d0    	vpermt2ps zmm2,zmm22,zmm16
  a1b798:	62 f1 7c 48 10 7c 17 	vmovups zmm7,ZMMWORD PTR [rdi+rdx*1+0x200]
  a1b79f:	08 
  a1b7a0:	62 f1 7c 48 28 f7    	vmovaps zmm6,zmm7
  a1b7a6:	62 b2 45 40 7f f0    	vpermt2ps zmm6,zmm23,zmm16
  a1b7ac:	62 b2 4d 40 7f f8    	vpermt2ps zmm7,zmm22,zmm16
  a1b7b2:	62 71 7c 48 10 5c 17 	vmovups zmm11,ZMMWORD PTR [rdi+rdx*1+0x240]
  a1b7b9:	09 
  a1b7ba:	62 41 7c 48 28 f3    	vmovaps zmm30,zmm11
  a1b7c0:	62 32 4d 40 7f d8    	vpermt2ps zmm11,zmm22,zmm16
  a1b7c6:	62 e1 7c 48 10 5c 17 	vmovups zmm19,ZMMWORD PTR [rdi+rdx*1+0x280]
  a1b7cd:	0a 
  a1b7ce:	62 a1 7c 48 28 e3    	vmovaps zmm20,zmm19
  a1b7d4:	62 a2 4d 40 7f d8    	vpermt2ps zmm19,zmm22,zmm16
  a1b7da:	62 61 7c 48 10 5c 17 	vmovups zmm27,ZMMWORD PTR [rdi+rdx*1+0x2c0]
  a1b7e1:	0b 
  a1b7e2:	62 11 7c 48 28 d3    	vmovaps zmm10,zmm27
  a1b7e8:	62 32 45 40 7f d0    	vpermt2ps zmm10,zmm23,zmm16
  a1b7ee:	62 22 4d 40 7f d8    	vpermt2ps zmm27,zmm22,zmm16
  a1b7f4:	62 f1 7c 48 10 4c 17 	vmovups zmm1,ZMMWORD PTR [rdi+rdx*1+0x300]
  a1b7fb:	0c 
  a1b7fc:	62 71 7c 48 28 e9    	vmovaps zmm13,zmm1
  a1b802:	62 b2 4d 40 7f c8    	vpermt2ps zmm1,zmm22,zmm16
  a1b808:	62 61 7c 48 10 6c 17 	vmovups zmm29,ZMMWORD PTR [rdi+rdx*1+0x340]
  a1b80f:	0d 
  a1b810:	62 01 7c 48 28 d5    	vmovaps zmm26,zmm29
  a1b816:	62 22 45 40 7f d0    	vpermt2ps zmm26,zmm23,zmm16
  a1b81c:	62 22 4d 40 7f e8    	vpermt2ps zmm29,zmm22,zmm16
  a1b822:	62 61 7c 48 10 64 17 	vmovups zmm28,ZMMWORD PTR [rdi+rdx*1+0x380]
  a1b829:	0e 
  a1b82a:	62 01 7c 48 28 cc    	vmovaps zmm25,zmm28
  a1b830:	62 22 45 40 7f c8    	vpermt2ps zmm25,zmm23,zmm16
  a1b836:	62 22 4d 40 7f e0    	vpermt2ps zmm28,zmm22,zmm16
  a1b83c:	62 81 4c 48 58 c0    	vaddps zmm16,zmm6,zmm24
  a1b842:	62 91 2c 48 58 d9    	vaddps zmm3,zmm10,zmm25
  a1b848:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm3
  a1b84f:	04 
  a1b850:	62 d1 2c 40 58 df    	vaddps zmm3,zmm26,zmm15
  a1b856:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm3
  a1b85d:	fe 
  a1b85e:	62 71 44 48 58 c0    	vaddps zmm8,zmm7,zmm0
  a1b864:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm8
  a1b86b:	0d 
  a1b86c:	62 f1 44 48 5c c0    	vsubps zmm0,zmm7,zmm0
  a1b872:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm0
  a1b879:	0b 
  a1b87a:	62 91 24 40 58 dc    	vaddps zmm3,zmm27,zmm28
  a1b880:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm3
  a1b887:	01 
  a1b888:	62 01 24 40 5c e4    	vsubps zmm28,zmm27,zmm28
  a1b88e:	62 f1 14 40 58 e2    	vaddps zmm4,zmm29,zmm2
  a1b894:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm4
  a1b89b:	0c 
  a1b89c:	62 f1 14 40 5c fa    	vsubps zmm7,zmm29,zmm2
  a1b8a2:	62 61 1c 48 58 ed    	vaddps zmm29,zmm12,zmm5
  a1b8a8:	62 61 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm29
  a1b8af:	0f 
  a1b8b0:	62 61 1c 48 5c dd    	vsubps zmm27,zmm12,zmm5
  a1b8b6:	62 f1 0c 48 58 c1    	vaddps zmm0,zmm14,zmm1
  a1b8bc:	62 f1 7c 48 11 04 24 	vmovups ZMMWORD PTR [rsp],zmm0
  a1b8c3:	62 f1 0c 48 5c c1    	vsubps zmm0,zmm14,zmm1
  a1b8c9:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm0
  a1b8d0:	05 
  a1b8d1:	62 d1 34 48 58 c3    	vaddps zmm0,zmm9,zmm11
  a1b8d7:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm0
  a1b8de:	06 
  a1b8df:	62 d1 34 48 5c c3    	vsubps zmm0,zmm9,zmm11
  a1b8e5:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm0
  a1b8ec:	03 
  a1b8ed:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x280]
  a1b8f4:	0a 
  a1b8f5:	62 b1 6c 48 58 c5    	vaddps zmm0,zmm2,zmm21
  a1b8fb:	62 91 4c 48 5c e8    	vsubps zmm5,zmm6,zmm24
  a1b901:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm5
  a1b908:	11 
  a1b909:	62 62 7d 48 18 05 d5 	vbroadcastss zmm24,DWORD PTR [rip+0xffffffffff659dd5]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a1b910:	9d 65 ff 
  a1b913:	62 81 7c 48 28 f0    	vmovaps zmm22,zmm24
  a1b919:	62 a2 3d 48 a8 f1    	vfmadd213ps zmm22,zmm8,zmm17
  a1b91f:	62 72 7d 48 18 25 1b 	vbroadcastss zmm12,DWORD PTR [rip+0xffffffffff659d1b]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a1b926:	9d 65 ff 
  a1b929:	62 c2 65 48 bc f4    	vfnmadd231ps zmm22,zmm3,zmm12
  a1b92f:	62 11 2c 48 5c d9    	vsubps zmm11,zmm10,zmm25
  a1b935:	62 72 7d 48 18 15 19 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff659e19]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a1b93c:	9e 65 ff 
  a1b93f:	62 d1 24 48 59 ca    	vmulps zmm1,zmm11,zmm10
  a1b945:	62 72 7d 48 18 35 51 	vbroadcastss zmm14,DWORD PTR [rip+0xffffffffff659a51]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a1b94c:	9a 65 ff 
  a1b94f:	62 d2 55 48 b8 ce    	vfmadd231ps zmm1,zmm5,zmm14
  a1b955:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm1
  a1b95c:	07 
  a1b95d:	62 d1 2c 40 5c ef    	vsubps zmm5,zmm26,zmm15
  a1b963:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm5
  a1b96a:	0e 
  a1b96b:	62 01 7c 48 28 d0    	vmovaps zmm26,zmm24
  a1b971:	62 22 5d 48 a8 d3    	vfmadd213ps zmm26,zmm4,zmm19
  a1b977:	62 42 15 40 bc d4    	vfnmadd231ps zmm26,zmm29,zmm12
  a1b97d:	62 31 6c 48 5c cd    	vsubps zmm9,zmm2,zmm21
  a1b983:	62 d1 34 48 59 da    	vmulps zmm3,zmm9,zmm10
  a1b989:	62 d2 55 48 b8 de    	vfmadd231ps zmm3,zmm5,zmm14
  a1b98f:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm3
  a1b996:	ff 
  a1b997:	62 f1 4c 40 5c c9    	vsubps zmm1,zmm22,zmm1
  a1b99d:	62 f1 2c 40 5c d3    	vsubps zmm2,zmm26,zmm3
  a1b9a3:	62 f1 74 48 5c ea    	vsubps zmm5,zmm1,zmm2
  a1b9a9:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm5
  a1b9b0:	0a 
  a1b9b1:	62 f1 74 48 58 ca    	vaddps zmm1,zmm1,zmm2
  a1b9b7:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm1
  a1b9be:	08 
  a1b9bf:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a1b9c3:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x240]
  a1b9ca:	09 
  a1b9cb:	62 f2 45 40 7f da    	vpermt2ps zmm3,zmm23,zmm2
  a1b9d1:	62 72 45 40 7f ea    	vpermt2ps zmm13,zmm23,zmm2
  a1b9d7:	62 d1 64 48 58 cd    	vaddps zmm1,zmm3,zmm13
  a1b9dd:	62 d1 64 48 5c dd    	vsubps zmm3,zmm3,zmm13
  a1b9e3:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm3
  a1b9ea:	02 
  a1b9eb:	62 62 45 40 7f fa    	vpermt2ps zmm31,zmm23,zmm2
  a1b9f1:	62 62 45 40 7f f2    	vpermt2ps zmm30,zmm23,zmm2
  a1b9f7:	62 81 04 40 58 ee    	vaddps zmm21,zmm31,zmm30
  a1b9fd:	62 91 04 40 5c de    	vsubps zmm3,zmm31,zmm30
  a1ba03:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm3
  a1ba0a:	10 
  a1ba0b:	62 e2 45 40 7f d2    	vpermt2ps zmm18,zmm23,zmm2
  a1ba11:	62 e2 45 40 7f e2    	vpermt2ps zmm20,zmm23,zmm2
  a1ba17:	62 11 7c 48 28 c0    	vmovaps zmm8,zmm24
  a1ba1d:	62 32 7d 40 a8 c2    	vfmadd213ps zmm8,zmm16,zmm18
  a1ba23:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x100]
  a1ba2a:	04 
  a1ba2b:	62 52 4d 48 bc c4    	vfnmadd231ps zmm8,zmm6,zmm12
  a1ba31:	62 41 1c 40 59 ea    	vmulps zmm29,zmm28,zmm10
  a1ba37:	62 71 7c 48 10 7c 24 	vmovups zmm15,ZMMWORD PTR [rsp+0x2c0]
  a1ba3e:	0b 
  a1ba3f:	62 42 05 48 b8 ee    	vfmadd231ps zmm29,zmm15,zmm14
  a1ba45:	62 11 7c 48 28 e8    	vmovaps zmm13,zmm24
  a1ba4b:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp-0x80]
  a1ba52:	fe 
  a1ba53:	62 32 55 48 a8 ec    	vfmadd213ps zmm13,zmm5,zmm20
  a1ba59:	62 52 7d 48 bc ec    	vfnmadd231ps zmm13,zmm0,zmm12
  a1ba5f:	62 41 24 40 59 ca    	vmulps zmm25,zmm27,zmm10
  a1ba65:	62 42 45 48 b8 ce    	vfmadd231ps zmm25,zmm7,zmm14
  a1ba6b:	62 91 3c 48 58 d5    	vaddps zmm2,zmm8,zmm29
  a1ba71:	62 91 14 48 58 d9    	vaddps zmm3,zmm13,zmm25
  a1ba77:	62 f1 6c 48 58 e3    	vaddps zmm4,zmm2,zmm3
  a1ba7d:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm4
  a1ba84:	13 
  a1ba85:	62 f1 6c 48 5c d3    	vsubps zmm2,zmm2,zmm3
  a1ba8b:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm2
  a1ba92:	09 
  a1ba93:	62 b1 6c 40 58 d0    	vaddps zmm2,zmm18,zmm16
  a1ba99:	62 a2 1d 48 bc d0    	vfnmadd231ps zmm18,zmm12,zmm16
  a1ba9f:	62 f1 6c 48 58 d6    	vaddps zmm2,zmm2,zmm6
  a1baa5:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm2
  a1baac:	12 
  a1baad:	62 e2 3d 40 b8 d6    	vfmadd231ps zmm18,zmm24,zmm6
  a1bab3:	62 51 04 48 59 fa    	vmulps zmm15,zmm15,zmm10
  a1bab9:	62 12 0d 48 bc fc    	vfnmadd231ps zmm15,zmm14,zmm28
  a1babf:	62 f1 5c 40 58 d5    	vaddps zmm2,zmm20,zmm5
  a1bac5:	62 e2 1d 48 bc e5    	vfnmadd231ps zmm20,zmm12,zmm5
  a1bacb:	62 f1 6c 48 58 d0    	vaddps zmm2,zmm2,zmm0
  a1bad1:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm2
  a1bad8:	fe 
  a1bad9:	62 e2 3d 40 b8 e0    	vfmadd231ps zmm20,zmm24,zmm0
  a1badf:	62 d1 44 48 59 fa    	vmulps zmm7,zmm7,zmm10
  a1bae5:	62 92 0d 48 bc fb    	vfnmadd231ps zmm7,zmm14,zmm27
  a1baeb:	62 61 7c 48 10 24 17 	vmovups zmm28,ZMMWORD PTR [rdi+rdx*1]
  a1baf2:	62 91 7c 48 28 c4    	vmovaps zmm0,zmm28
  a1baf8:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a1bafc:	62 f2 45 40 7f c2    	vpermt2ps zmm0,zmm23,zmm2
  a1bb02:	62 01 7c 48 28 d8    	vmovaps zmm27,zmm24
  a1bb08:	62 62 75 48 a8 d8    	vfmadd213ps zmm27,zmm1,zmm0
  a1bb0e:	62 f1 7c 48 58 d9    	vaddps zmm3,zmm0,zmm1
  a1bb14:	62 f2 1d 48 bc c1    	vfnmadd231ps zmm0,zmm12,zmm1
  a1bb1a:	62 b1 64 48 58 cd    	vaddps zmm1,zmm3,zmm21
  a1bb20:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm1
  a1bb27:	04 
  a1bb28:	62 42 55 40 bc dc    	vfnmadd231ps zmm27,zmm21,zmm12
  a1bb2e:	62 b2 3d 40 b8 c5    	vfmadd231ps zmm0,zmm24,zmm21
  a1bb34:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0xc0]
  a1bb3b:	03 
  a1bb3c:	62 d1 64 48 59 f2    	vmulps zmm6,zmm3,zmm10
  a1bb42:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x140]
  a1bb49:	05 
  a1bb4a:	62 d2 75 48 b8 f6    	vfmadd231ps zmm6,zmm1,zmm14
  a1bb50:	62 d1 74 48 59 ea    	vmulps zmm5,zmm1,zmm10
  a1bb56:	62 f2 0d 48 bc eb    	vfnmadd231ps zmm5,zmm14,zmm3
  a1bb5c:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x340]
  a1bb63:	0d 
  a1bb64:	62 f1 74 40 58 d9    	vaddps zmm3,zmm17,zmm1
  a1bb6a:	62 e2 1d 48 bc c9    	vfnmadd231ps zmm17,zmm12,zmm1
  a1bb70:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x40]
  a1bb77:	01 
  a1bb78:	62 61 64 48 58 f9    	vaddps zmm31,zmm3,zmm1
  a1bb7e:	62 e2 3d 40 b8 c9    	vfmadd231ps zmm17,zmm24,zmm1
  a1bb84:	62 f1 2c 48 59 64 24 	vmulps zmm4,zmm10,ZMMWORD PTR [rsp+0x440]
  a1bb8b:	11 
  a1bb8c:	62 d2 0d 48 bc e3    	vfnmadd231ps zmm4,zmm14,zmm11
  a1bb92:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x300]
  a1bb99:	0c 
  a1bb9a:	62 71 64 40 58 d9    	vaddps zmm11,zmm19,zmm1
  a1bba0:	62 e2 1d 48 bc d9    	vfnmadd231ps zmm19,zmm12,zmm1
  a1bba6:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x3c0]
  a1bbad:	0f 
  a1bbae:	62 61 24 48 58 f1    	vaddps zmm30,zmm11,zmm1
  a1bbb4:	62 e2 3d 40 b8 d9    	vfmadd231ps zmm19,zmm24,zmm1
  a1bbba:	62 f1 2c 48 59 5c 24 	vmulps zmm3,zmm10,ZMMWORD PTR [rsp+0x380]
  a1bbc1:	0e 
  a1bbc2:	62 d2 0d 48 bc d9    	vfnmadd231ps zmm3,zmm14,zmm9
  a1bbc8:	62 71 74 40 5c cc    	vsubps zmm9,zmm17,zmm4
  a1bbce:	62 e1 64 40 5c c3    	vsubps zmm16,zmm19,zmm3
  a1bbd4:	62 b1 34 48 5c c8    	vsubps zmm1,zmm9,zmm16
  a1bbda:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm1
  a1bbe1:	03 
  a1bbe2:	62 b1 34 48 58 c8    	vaddps zmm1,zmm9,zmm16
  a1bbe8:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm1
  a1bbef:	05 
  a1bbf0:	62 f1 7c 48 28 0d 86 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff673f86]        # 8fb80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d030>
  a1bbf7:	3f 67 ff 
  a1bbfa:	62 62 75 48 7f e2    	vpermt2ps zmm28,zmm1,zmm2
  a1bc00:	62 11 7c 48 28 c8    	vmovaps zmm9,zmm24
  a1bc06:	62 f1 7c 48 10 0c 24 	vmovups zmm1,ZMMWORD PTR [rsp]
  a1bc0d:	62 12 75 48 a8 cc    	vfmadd213ps zmm9,zmm1,zmm28
  a1bc13:	62 e1 1c 40 58 c1    	vaddps zmm16,zmm28,zmm1
  a1bc19:	62 62 1d 48 bc e1    	vfnmadd231ps zmm28,zmm12,zmm1
  a1bc1f:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x180]
  a1bc26:	06 
  a1bc27:	62 71 7c 40 58 d9    	vaddps zmm11,zmm16,zmm1
  a1bc2d:	62 52 75 48 bc cc    	vfnmadd231ps zmm9,zmm1,zmm12
  a1bc33:	62 62 3d 40 b8 e1    	vfmadd231ps zmm28,zmm24,zmm1
  a1bc39:	62 71 7c 48 10 64 24 	vmovups zmm12,ZMMWORD PTR [rsp+0x400]
  a1bc40:	10 
  a1bc41:	62 d1 1c 48 59 d2    	vmulps zmm2,zmm12,zmm10
  a1bc47:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x80]
  a1bc4e:	02 
  a1bc4f:	62 d2 75 48 b8 d6    	vfmadd231ps zmm2,zmm1,zmm14
  a1bc55:	62 d1 74 48 59 ca    	vmulps zmm1,zmm1,zmm10
  a1bc5b:	62 d2 0d 48 bc cc    	vfnmadd231ps zmm1,zmm14,zmm12
  a1bc61:	62 c1 6c 40 58 c7    	vaddps zmm16,zmm18,zmm15
  a1bc67:	62 e1 5c 40 58 ff    	vaddps zmm23,zmm20,zmm7
  a1bc6d:	62 31 7c 40 58 d7    	vaddps zmm10,zmm16,zmm23
  a1bc73:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm10
  a1bc7a:	02 
  a1bc7b:	62 31 7c 40 5c d7    	vsubps zmm10,zmm16,zmm23
  a1bc81:	62 71 7c 48 11 14 24 	vmovups ZMMWORD PTR [rsp],zmm10
  a1bc88:	62 e1 7c 48 58 c5    	vaddps zmm16,zmm0,zmm5
  a1bc8e:	62 e1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm16
  a1bc95:	01 
  a1bc96:	62 e1 7c 48 5c ed    	vsubps zmm21,zmm0,zmm5
  a1bc9c:	62 c1 6c 40 5c ff    	vsubps zmm23,zmm18,zmm15
  a1bca2:	62 e1 5c 40 5c d7    	vsubps zmm18,zmm20,zmm7
  a1bca8:	62 f1 1c 40 5c e9    	vsubps zmm5,zmm28,zmm1
  a1bcae:	62 81 74 48 58 e4    	vaddps zmm20,zmm1,zmm28
  a1bcb4:	62 21 5c 48 58 e1    	vaddps zmm28,zmm4,zmm17
  a1bcba:	62 a1 64 48 58 cb    	vaddps zmm17,zmm3,zmm19
  a1bcc0:	62 91 3c 48 5c cd    	vsubps zmm1,zmm8,zmm29
  a1bcc6:	62 91 14 48 5c e1    	vsubps zmm4,zmm13,zmm25
  a1bccc:	62 f1 24 40 58 fe    	vaddps zmm7,zmm27,zmm6
  a1bcd2:	62 f1 24 40 5c f6    	vsubps zmm6,zmm27,zmm6
  a1bcd8:	62 71 4c 40 58 44 24 	vaddps zmm8,zmm22,ZMMWORD PTR [rsp+0x1c0]
  a1bcdf:	07 
  a1bce0:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x480]
  a1bce7:	12 
  a1bce8:	62 71 7c 48 10 74 24 	vmovups zmm14,ZMMWORD PTR [rsp-0x80]
  a1bcef:	fe 
  a1bcf0:	62 51 64 48 58 d6    	vaddps zmm10,zmm3,zmm14
  a1bcf6:	62 71 2c 40 58 64 24 	vaddps zmm12,zmm26,ZMMWORD PTR [rsp-0x40]
  a1bcfd:	ff 
  a1bcfe:	62 d1 3c 48 5c c4    	vsubps zmm0,zmm8,zmm12
  a1bd04:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm0
  a1bd0b:	07 
  a1bd0c:	62 41 3c 48 58 c4    	vaddps zmm24,zmm8,zmm12
  a1bd12:	62 71 34 48 5c ea    	vsubps zmm13,zmm9,zmm2
  a1bd18:	62 d1 6c 48 58 c1    	vaddps zmm0,zmm2,zmm9
  a1bd1e:	62 61 74 48 58 cc    	vaddps zmm25,zmm1,zmm4
  a1bd24:	62 f1 74 48 5c cc    	vsubps zmm1,zmm1,zmm4
  a1bd2a:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm1
  a1bd31:	06 
  a1bd32:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x100]
  a1bd39:	04 
  a1bd3a:	62 51 74 48 58 c2    	vaddps zmm8,zmm1,zmm10
  a1bd40:	62 62 7d 48 18 15 16 	vbroadcastss zmm26,DWORD PTR [rip+0xffffffffff659716]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a1bd47:	97 65 ff 
  a1bd4a:	62 72 2d 40 ac d1    	vfnmadd213ps zmm10,zmm26,zmm1
  a1bd50:	62 81 04 40 58 f6    	vaddps zmm22,zmm31,zmm30
  a1bd56:	62 91 04 40 5c ce    	vsubps zmm1,zmm31,zmm30
  a1bd5c:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a1bd63:	ff 
  a1bd64:	62 a1 24 48 58 de    	vaddps zmm19,zmm11,zmm22
  a1bd6a:	62 c2 2d 40 ac f3    	vfnmadd213ps zmm22,zmm26,zmm11
  a1bd70:	62 01 7c 48 28 f2    	vmovaps zmm30,zmm26
  a1bd76:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x4c0]
  a1bd7d:	13 
  a1bd7e:	62 62 75 48 ac f7    	vfnmadd213ps zmm30,zmm1,zmm7
  a1bd84:	62 d1 64 48 5c d6    	vsubps zmm2,zmm3,zmm14
  a1bd8a:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm2
  a1bd91:	fe 
  a1bd92:	62 01 7c 48 28 ea    	vmovaps zmm29,zmm26
  a1bd98:	62 71 7c 48 10 5c 24 	vmovups zmm11,ZMMWORD PTR [rsp+0x200]
  a1bd9f:	08 
  a1bda0:	62 42 25 48 ac ed    	vfnmadd213ps zmm29,zmm11,zmm13
  a1bda6:	62 71 44 48 58 e1    	vaddps zmm12,zmm7,zmm1
  a1bdac:	62 91 7c 48 28 d2    	vmovaps zmm2,zmm26
  a1bdb2:	62 71 7c 48 10 7c 24 	vmovups zmm15,ZMMWORD PTR [rsp+0x80]
  a1bdb9:	02 
  a1bdba:	62 b2 05 48 ac d0    	vfnmadd213ps zmm2,zmm15,zmm16
  a1bdc0:	62 f2 7d 48 18 1d 0a 	vbroadcastss zmm3,DWORD PTR [rip+0xffffffffff65950a]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a1bdc7:	95 65 ff 
  a1bdca:	62 f1 64 48 59 64 24 	vmulps zmm4,zmm3,ZMMWORD PTR [rsp+0xc0]
  a1bdd1:	03 
  a1bdd2:	62 d1 14 48 58 cb    	vaddps zmm1,zmm13,zmm11
  a1bdd8:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm1
  a1bddf:	08 
  a1bde0:	62 f1 6c 48 5c fc    	vsubps zmm7,zmm2,zmm4
  a1bde6:	62 e1 6c 48 58 c4    	vaddps zmm16,zmm2,zmm4
  a1bdec:	62 91 7c 48 28 e2    	vmovaps zmm4,zmm26
  a1bdf2:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp+0x140]
  a1bdf9:	05 
  a1bdfa:	62 f2 35 48 ac e5    	vfnmadd213ps zmm4,zmm9,zmm5
  a1be00:	62 71 64 48 59 1c 24 	vmulps zmm11,zmm3,ZMMWORD PTR [rsp]
  a1be07:	62 51 5c 48 58 f3    	vaddps zmm14,zmm4,zmm11
  a1be0d:	62 41 5c 48 5c db    	vsubps zmm27,zmm4,zmm11
  a1be13:	62 21 44 40 58 fa    	vaddps zmm31,zmm23,zmm18
  a1be19:	62 11 54 40 58 ef    	vaddps zmm13,zmm21,zmm31
  a1be1f:	62 22 2d 40 ac fd    	vfnmadd213ps zmm31,zmm26,zmm21
  a1be25:	62 31 1c 40 58 d9    	vaddps zmm11,zmm28,zmm17
  a1be2b:	62 b1 1c 40 5c c9    	vsubps zmm1,zmm28,zmm17
  a1be31:	62 d1 5c 40 58 d3    	vaddps zmm2,zmm20,zmm11
  a1be37:	62 32 2d 40 ac dc    	vfnmadd213ps zmm11,zmm26,zmm20
  a1be3d:	62 a1 44 40 5c d2    	vsubps zmm18,zmm23,zmm18
  a1be43:	62 81 7c 48 28 e2    	vmovaps zmm20,zmm26
  a1be49:	62 e2 35 40 ac e6    	vfnmadd213ps zmm20,zmm25,zmm6
  a1be4f:	62 91 4c 48 58 e1    	vaddps zmm4,zmm6,zmm25
  a1be55:	62 01 7c 48 28 ca    	vmovaps zmm25,zmm26
  a1be5b:	62 62 3d 40 ac c8    	vfnmadd213ps zmm25,zmm24,zmm0
  a1be61:	62 91 7c 48 58 c0    	vaddps zmm0,zmm0,zmm24
  a1be67:	62 f1 7c 48 11 04 24 	vmovups ZMMWORD PTR [rsp],zmm0
  a1be6e:	62 f1 64 48 59 44 24 	vmulps zmm0,zmm3,ZMMWORD PTR [rsp-0x40]
  a1be75:	ff 
  a1be76:	62 e1 2c 48 5c e8    	vsubps zmm21,zmm10,zmm0
  a1be7c:	62 e1 2c 48 58 f8    	vaddps zmm23,zmm10,zmm0
  a1be82:	62 f1 64 48 59 74 24 	vmulps zmm6,zmm3,ZMMWORD PTR [rsp-0x80]
  a1be89:	fe 
  a1be8a:	62 b1 4c 48 58 c6    	vaddps zmm0,zmm6,zmm22
  a1be90:	62 f1 4c 40 5c f6    	vsubps zmm6,zmm22,zmm6
  a1be96:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm6
  a1be9d:	ff 
  a1be9e:	62 f1 64 48 59 74 24 	vmulps zmm6,zmm3,ZMMWORD PTR [rsp+0x280]
  a1bea5:	0a 
  a1bea6:	62 81 4c 48 58 f6    	vaddps zmm22,zmm6,zmm30
  a1beac:	62 61 0c 40 5c d6    	vsubps zmm26,zmm30,zmm6
  a1beb2:	62 f1 64 48 59 74 24 	vmulps zmm6,zmm3,ZMMWORD PTR [rsp+0x240]
  a1beb9:	09 
  a1beba:	62 71 14 40 5c d6    	vsubps zmm10,zmm29,zmm6
  a1bec0:	62 61 14 40 58 ee    	vaddps zmm29,zmm29,zmm6
  a1bec6:	62 61 04 48 58 74 24 	vaddps zmm30,zmm15,ZMMWORD PTR [rsp+0x40]
  a1becd:	01 
  a1bece:	62 f1 64 48 59 74 24 	vmulps zmm6,zmm3,ZMMWORD PTR [rsp+0x1c0]
  a1bed5:	07 
  a1bed6:	62 f1 74 48 59 cb    	vmulps zmm1,zmm1,zmm3
  a1bedc:	62 41 54 48 58 e1    	vaddps zmm28,zmm5,zmm9
  a1bee2:	62 f1 04 40 5c e9    	vsubps zmm5,zmm31,zmm1
  a1bee8:	62 e1 6c 40 59 cb    	vmulps zmm17,zmm18,zmm3
  a1beee:	62 f1 04 40 58 c9    	vaddps zmm1,zmm31,zmm1
  a1bef4:	62 21 24 48 58 f9    	vaddps zmm31,zmm11,zmm17
  a1befa:	62 31 24 48 5c d9    	vsubps zmm11,zmm11,zmm17
  a1bf00:	62 a1 4c 48 58 cc    	vaddps zmm17,zmm6,zmm20
  a1bf06:	62 e1 64 48 59 54 24 	vmulps zmm18,zmm3,ZMMWORD PTR [rsp+0x180]
  a1bf0d:	06 
  a1bf0e:	62 e1 5c 40 5c e6    	vsubps zmm20,zmm20,zmm6
  a1bf14:	62 b1 34 40 5c f2    	vsubps zmm6,zmm25,zmm18
  a1bf1a:	62 b1 34 40 58 da    	vaddps zmm3,zmm25,zmm18
  a1bf20:	62 61 7c 48 28 0d 56 	vmovaps zmm25,ZMMWORD PTR [rip+0xffffffffff6ab056]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a1bf27:	b0 6a ff 
  a1bf2a:	62 72 35 40 7f c5    	vpermt2ps zmm8,zmm25,zmm5
  a1bf30:	62 e2 35 40 7f f4    	vpermt2ps zmm22,zmm25,zmm4
  a1bf36:	62 b2 35 40 7f ff    	vpermt2ps zmm7,zmm25,zmm23
  a1bf3c:	62 12 35 40 7f ea    	vpermt2ps zmm13,zmm25,zmm26
  a1bf42:	62 82 35 40 7f ce    	vpermt2ps zmm17,zmm25,zmm30
  a1bf48:	62 e2 35 40 7f e9    	vpermt2ps zmm21,zmm25,zmm1
  a1bf4e:	62 32 35 40 7f e4    	vpermt2ps zmm12,zmm25,zmm20
  a1bf54:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  a1bf58:	62 e2 35 40 7f c1    	vpermt2ps zmm16,zmm25,zmm1
  a1bf5e:	62 d1 7c 48 28 c8    	vmovaps zmm1,zmm8
  a1bf64:	62 71 7c 48 28 3d 92 	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff6aaf92]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a1bf6b:	af 6a ff 
  a1bf6e:	62 b2 05 48 7f c9    	vpermt2ps zmm1,zmm15,zmm17
  a1bf74:	62 61 7c 48 28 15 c2 	vmovaps zmm26,ZMMWORD PTR [rip+0xffffffffff6aafc2]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a1bf7b:	af 6a ff 
  a1bf7e:	62 32 2d 40 7f c1    	vpermt2ps zmm8,zmm26,zmm17
  a1bf84:	62 b1 7c 48 28 ee    	vmovaps zmm5,zmm22
  a1bf8a:	62 b2 05 48 7f ed    	vpermt2ps zmm5,zmm15,zmm21
  a1bf90:	62 a2 2d 40 7f f5    	vpermt2ps zmm22,zmm26,zmm21
  a1bf96:	62 71 7c 48 28 cf    	vmovaps zmm9,zmm7
  a1bf9c:	62 52 05 48 7f cc    	vpermt2ps zmm9,zmm15,zmm12
  a1bfa2:	62 d2 2d 40 7f fc    	vpermt2ps zmm7,zmm26,zmm12
  a1bfa8:	62 51 7c 48 28 e5    	vmovaps zmm12,zmm13
  a1bfae:	62 32 05 48 7f e0    	vpermt2ps zmm12,zmm15,zmm16
  a1bfb4:	62 32 2d 40 7f e8    	vpermt2ps zmm13,zmm26,zmm16
  a1bfba:	62 41 f5 48 14 c1    	vunpcklpd zmm24,zmm1,zmm9
  a1bfc0:	62 c1 f5 48 15 e1    	vunpckhpd zmm20,zmm1,zmm9
  a1bfc6:	62 c1 d5 48 14 cc    	vunpcklpd zmm17,zmm5,zmm12
  a1bfcc:	62 d1 d5 48 15 cc    	vunpckhpd zmm1,zmm5,zmm12
  a1bfd2:	62 e1 bd 48 14 ef    	vunpcklpd zmm21,zmm8,zmm7
  a1bfd8:	62 e1 bd 48 15 d7    	vunpckhpd zmm18,zmm8,zmm7
  a1bfde:	62 d1 cd 40 14 fd    	vunpcklpd zmm7,zmm22,zmm13
  a1bfe4:	62 51 cd 40 15 cd    	vunpckhpd zmm9,zmm22,zmm13
  a1bfea:	62 31 7c 48 28 c4    	vmovaps zmm8,zmm20
  a1bff0:	62 e1 7c 48 28 35 06 	vmovaps zmm22,ZMMWORD PTR [rip+0xffffffffff6aae06]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a1bff7:	ae 6a ff 
  a1bffa:	62 72 4d 40 7f c1    	vpermt2ps zmm8,zmm22,zmm1
  a1c000:	62 61 7c 48 28 35 36 	vmovaps zmm30,ZMMWORD PTR [rip+0xffffffffff6aae36]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a1c007:	ae 6a ff 
  a1c00a:	62 e2 0d 40 7f e1    	vpermt2ps zmm20,zmm30,zmm1
  a1c010:	62 b1 7c 48 28 ed    	vmovaps zmm5,zmm21
  a1c016:	62 f2 4d 40 7f ef    	vpermt2ps zmm5,zmm22,zmm7
  a1c01c:	62 e2 0d 40 7f ef    	vpermt2ps zmm21,zmm30,zmm7
  a1c022:	62 31 7c 48 28 e2    	vmovaps zmm12,zmm18
  a1c028:	62 52 4d 40 7f e1    	vpermt2ps zmm12,zmm22,zmm9
  a1c02e:	62 c2 0d 40 7f d1    	vpermt2ps zmm18,zmm30,zmm9
  a1c034:	62 82 35 40 7f df    	vpermt2ps zmm19,zmm25,zmm31
  a1c03a:	62 72 35 40 7f 14 24 	vpermt2ps zmm10,zmm25,ZMMWORD PTR [rsp]
  a1c041:	62 72 35 40 7f 74 24 	vpermt2ps zmm14,zmm25,ZMMWORD PTR [rsp-0x40]
  a1c048:	ff 
  a1c049:	62 91 7c 48 28 c8    	vmovaps zmm1,zmm24
  a1c04f:	62 22 0d 40 7f c1    	vpermt2ps zmm24,zmm30,zmm17
  a1c055:	62 92 35 40 7f d5    	vpermt2ps zmm2,zmm25,zmm29
  a1c05b:	62 92 35 40 7f f4    	vpermt2ps zmm6,zmm25,zmm28
  a1c061:	62 d2 35 40 7f c3    	vpermt2ps zmm0,zmm25,zmm11
  a1c067:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp+0x200]
  a1c06e:	08 
  a1c06f:	62 72 35 40 7f cb    	vpermt2ps zmm9,zmm25,zmm3
  a1c075:	c5 e0 57 db          	vxorps xmm3,xmm3,xmm3
  a1c079:	62 62 35 40 7f db    	vpermt2ps zmm27,zmm25,zmm3
  a1c07f:	62 b1 7c 48 28 fb    	vmovaps zmm7,zmm19
  a1c085:	62 f2 05 48 7f fe    	vpermt2ps zmm7,zmm15,zmm6
  a1c08b:	62 e2 2d 40 7f de    	vpermt2ps zmm19,zmm26,zmm6
  a1c091:	62 51 7c 48 28 da    	vmovaps zmm11,zmm10
  a1c097:	62 72 05 48 7f d8    	vpermt2ps zmm11,zmm15,zmm0
  a1c09d:	62 72 2d 40 7f d0    	vpermt2ps zmm10,zmm26,zmm0
  a1c0a3:	62 d1 7c 48 28 c6    	vmovaps zmm0,zmm14
  a1c0a9:	62 d2 05 48 7f c1    	vpermt2ps zmm0,zmm15,zmm9
  a1c0af:	62 52 2d 40 7f f1    	vpermt2ps zmm14,zmm26,zmm9
  a1c0b5:	62 71 7c 48 28 ea    	vmovaps zmm13,zmm2
  a1c0bb:	62 12 05 48 7f eb    	vpermt2ps zmm13,zmm15,zmm27
  a1c0c1:	62 92 2d 40 7f d3    	vpermt2ps zmm2,zmm26,zmm27
  a1c0c7:	62 71 c5 48 14 c8    	vunpcklpd zmm9,zmm7,zmm0
  a1c0cd:	62 f1 c5 48 15 f0    	vunpckhpd zmm6,zmm7,zmm0
  a1c0d3:	62 d1 a5 48 14 e5    	vunpcklpd zmm4,zmm11,zmm13
  a1c0d9:	62 51 a5 48 15 dd    	vunpckhpd zmm11,zmm11,zmm13
  a1c0df:	62 d1 e5 40 14 fe    	vunpcklpd zmm7,zmm19,zmm14
  a1c0e5:	62 d1 e5 40 15 c6    	vunpckhpd zmm0,zmm19,zmm14
  a1c0eb:	62 71 ad 48 14 ea    	vunpcklpd zmm13,zmm10,zmm2
  a1c0f1:	62 f1 ad 48 15 da    	vunpckhpd zmm3,zmm10,zmm2
  a1c0f7:	62 d1 7c 48 28 d1    	vmovaps zmm2,zmm9
  a1c0fd:	62 72 0d 40 7f cc    	vpermt2ps zmm9,zmm30,zmm4
  a1c103:	62 71 7c 48 28 fe    	vmovaps zmm15,zmm6
  a1c109:	62 52 4d 40 7f fb    	vpermt2ps zmm15,zmm22,zmm11
  a1c10f:	62 d2 0d 40 7f f3    	vpermt2ps zmm6,zmm30,zmm11
  a1c115:	62 71 7c 48 28 d7    	vmovaps zmm10,zmm7
  a1c11b:	62 52 4d 40 7f d5    	vpermt2ps zmm10,zmm22,zmm13
  a1c121:	62 d2 0d 40 7f fd    	vpermt2ps zmm7,zmm30,zmm13
  a1c127:	62 71 7c 48 28 d8    	vmovaps zmm11,zmm0
  a1c12d:	62 72 4d 40 7f db    	vpermt2ps zmm11,zmm22,zmm3
  a1c133:	62 f2 0d 40 7f c3    	vpermt2ps zmm0,zmm30,zmm3
  a1c139:	62 71 7c 48 10 69 08 	vmovups zmm13,ZMMWORD PTR [rcx+0x200]
  a1c140:	62 e1 7c 48 10 41 09 	vmovups zmm16,ZMMWORD PTR [rcx+0x240]
  a1c147:	62 d1 54 48 59 dd    	vmulps zmm3,zmm5,zmm13
  a1c14d:	62 b2 2d 48 bc d8    	vfnmadd231ps zmm3,zmm10,zmm16
  a1c153:	62 51 2c 48 59 d5    	vmulps zmm10,zmm10,zmm13
  a1c159:	62 71 7c 48 10 69 04 	vmovups zmm13,ZMMWORD PTR [rcx+0x100]
  a1c160:	62 72 7d 40 b8 d5    	vfmadd231ps zmm10,zmm16,zmm5
  a1c166:	62 e1 7c 48 10 41 05 	vmovups zmm16,ZMMWORD PTR [rcx+0x140]
  a1c16d:	62 d1 3c 48 59 ed    	vmulps zmm5,zmm8,zmm13
  a1c173:	62 b2 05 48 bc e8    	vfnmadd231ps zmm5,zmm15,zmm16
  a1c179:	62 51 04 48 59 ed    	vmulps zmm13,zmm15,zmm13
  a1c17f:	62 71 7c 48 10 79 0c 	vmovups zmm15,ZMMWORD PTR [rcx+0x300]
  a1c186:	62 52 7d 40 b8 e8    	vfmadd231ps zmm13,zmm16,zmm8
  a1c18c:	62 71 7c 48 10 41 0d 	vmovups zmm8,ZMMWORD PTR [rcx+0x340]
  a1c193:	62 c1 1c 48 59 c7    	vmulps zmm16,zmm12,zmm15
  a1c199:	62 c2 25 48 bc c0    	vfnmadd231ps zmm16,zmm11,zmm8
  a1c19f:	62 51 24 48 59 df    	vmulps zmm11,zmm11,zmm15
  a1c1a5:	62 71 7c 48 10 79 02 	vmovups zmm15,ZMMWORD PTR [rcx+0x80]
  a1c1ac:	62 52 3d 48 b8 dc    	vfmadd231ps zmm11,zmm8,zmm12
  a1c1b2:	62 71 7c 48 10 41 03 	vmovups zmm8,ZMMWORD PTR [rcx+0xc0]
  a1c1b9:	62 51 3c 40 59 e7    	vmulps zmm12,zmm24,zmm15
  a1c1bf:	62 52 35 48 bc e0    	vfnmadd231ps zmm12,zmm9,zmm8
  a1c1c5:	62 51 34 48 59 cf    	vmulps zmm9,zmm9,zmm15
  a1c1cb:	62 71 7c 48 10 79 0a 	vmovups zmm15,ZMMWORD PTR [rcx+0x280]
  a1c1d2:	62 12 3d 48 b8 c8    	vfmadd231ps zmm9,zmm8,zmm24
  a1c1d8:	62 71 7c 48 10 41 0b 	vmovups zmm8,ZMMWORD PTR [rcx+0x2c0]
  a1c1df:	62 51 54 40 59 f7    	vmulps zmm14,zmm21,zmm15
  a1c1e5:	62 52 45 48 bc f0    	vfnmadd231ps zmm14,zmm7,zmm8
  a1c1eb:	62 d1 44 48 59 ff    	vmulps zmm7,zmm7,zmm15
  a1c1f1:	62 71 7c 48 10 79 06 	vmovups zmm15,ZMMWORD PTR [rcx+0x180]
  a1c1f8:	62 b2 3d 48 b8 fd    	vfmadd231ps zmm7,zmm8,zmm21
  a1c1fe:	62 71 7c 48 10 41 07 	vmovups zmm8,ZMMWORD PTR [rcx+0x1c0]
  a1c205:	62 c1 5c 40 59 df    	vmulps zmm19,zmm20,zmm15
  a1c20b:	62 c2 4d 48 bc d8    	vfnmadd231ps zmm19,zmm6,zmm8
  a1c211:	62 d1 4c 48 59 f7    	vmulps zmm6,zmm6,zmm15
  a1c217:	62 71 7c 48 10 79 0e 	vmovups zmm15,ZMMWORD PTR [rcx+0x380]
  a1c21e:	62 b2 3d 48 b8 f4    	vfmadd231ps zmm6,zmm8,zmm20
  a1c224:	62 71 7c 48 10 41 0f 	vmovups zmm8,ZMMWORD PTR [rcx+0x3c0]
  a1c22b:	62 c1 6c 40 59 e7    	vmulps zmm20,zmm18,zmm15
  a1c231:	62 c2 7d 48 bc e0    	vfnmadd231ps zmm20,zmm0,zmm8
  a1c237:	62 d1 7c 48 59 c7    	vmulps zmm0,zmm0,zmm15
  a1c23d:	62 b2 3d 48 b8 c2    	vfmadd231ps zmm0,zmm8,zmm18
  a1c243:	62 b2 4d 40 7f c9    	vpermt2ps zmm1,zmm22,zmm17
  a1c249:	62 f2 4d 40 7f d4    	vpermt2ps zmm2,zmm22,zmm4
  a1c24f:	62 f1 74 48 58 e3    	vaddps zmm4,zmm1,zmm3
  a1c255:	62 f1 74 48 5c cb    	vsubps zmm1,zmm1,zmm3
  a1c25b:	62 d1 14 48 58 db    	vaddps zmm3,zmm13,zmm11
  a1c261:	62 51 14 48 5c c3    	vsubps zmm8,zmm13,zmm11
  a1c267:	62 51 1c 48 58 de    	vaddps zmm11,zmm12,zmm14
  a1c26d:	62 51 1c 48 5c e6    	vsubps zmm12,zmm12,zmm14
  a1c273:	62 71 34 48 58 ef    	vaddps zmm13,zmm9,zmm7
  a1c279:	62 f1 34 48 5c ff    	vsubps zmm7,zmm9,zmm7
  a1c27f:	62 71 4c 48 58 c8    	vaddps zmm9,zmm6,zmm0
  a1c285:	62 f1 4c 48 5c c0    	vsubps zmm0,zmm6,zmm0
  a1c28b:	62 b1 64 40 58 f4    	vaddps zmm6,zmm19,zmm20
  a1c291:	62 31 64 40 5c f4    	vsubps zmm14,zmm19,zmm20
  a1c297:	62 71 2c 48 58 fa    	vaddps zmm15,zmm10,zmm2
  a1c29d:	62 d1 6c 48 5c d2    	vsubps zmm2,zmm2,zmm10
  a1c2a3:	62 31 54 48 58 d0    	vaddps zmm10,zmm5,zmm16
  a1c2a9:	62 f1 7c 40 5c ed    	vsubps zmm5,zmm16,zmm5
  a1c2af:	62 e1 1c 48 58 c7    	vaddps zmm16,zmm12,zmm7
  a1c2b5:	62 d1 44 48 5c fc    	vsubps zmm7,zmm7,zmm12
  a1c2bb:	62 51 7c 48 5c e6    	vsubps zmm12,zmm0,zmm14
  a1c2c1:	62 f1 0c 48 58 c0    	vaddps zmm0,zmm14,zmm0
  a1c2c7:	62 51 5c 48 58 f2    	vaddps zmm14,zmm4,zmm10
  a1c2cd:	62 51 5c 48 5c d2    	vsubps zmm10,zmm4,zmm10
  a1c2d3:	62 c1 14 48 58 c9    	vaddps zmm17,zmm13,zmm9
  a1c2d9:	62 51 14 48 5c c9    	vsubps zmm9,zmm13,zmm9
  a1c2df:	62 51 64 48 58 ef    	vaddps zmm13,zmm3,zmm15
  a1c2e5:	62 f1 04 48 5c db    	vsubps zmm3,zmm15,zmm3
  a1c2eb:	62 71 24 48 58 fe    	vaddps zmm15,zmm11,zmm6
  a1c2f1:	62 d1 4c 48 5c f3    	vsubps zmm6,zmm6,zmm11
  a1c2f7:	62 d1 74 48 58 e0    	vaddps zmm4,zmm1,zmm8
  a1c2fd:	62 e2 7d 48 18 15 95 	vbroadcastss zmm18,DWORD PTR [rip+0xffffffffff659095]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a1c304:	90 65 ff 
  a1c307:	62 31 7c 40 59 da    	vmulps zmm11,zmm16,zmm18
  a1c30d:	62 31 1c 48 59 e2    	vmulps zmm12,zmm12,zmm18
  a1c313:	62 b1 44 48 59 fa    	vmulps zmm7,zmm7,zmm18
  a1c319:	62 b1 7c 48 59 c2    	vmulps zmm0,zmm0,zmm18
  a1c31f:	62 d1 74 48 5c c8    	vsubps zmm1,zmm1,zmm8
  a1c325:	62 71 44 48 5c c0    	vsubps zmm8,zmm7,zmm0
  a1c32b:	62 f1 44 48 58 c0    	vaddps zmm0,zmm7,zmm0
  a1c331:	62 f1 54 48 58 fa    	vaddps zmm7,zmm5,zmm2
  a1c337:	62 e1 6c 48 5c c5    	vsubps zmm16,zmm2,zmm5
  a1c33d:	62 d1 24 48 58 d4    	vaddps zmm2,zmm11,zmm12
  a1c343:	62 51 1c 48 5c db    	vsubps zmm11,zmm12,zmm11
  a1c349:	62 71 5c 48 58 e2    	vaddps zmm12,zmm4,zmm2
  a1c34f:	62 f1 5c 48 5c e2    	vsubps zmm4,zmm4,zmm2
  a1c355:	62 c1 44 48 58 d0    	vaddps zmm18,zmm7,zmm8
  a1c35b:	62 d1 44 48 5c e8    	vsubps zmm5,zmm7,zmm8
  a1c361:	62 d1 2c 48 58 f9    	vaddps zmm7,zmm10,zmm9
  a1c367:	62 d1 2c 48 5c d1    	vsubps zmm2,zmm10,zmm9
  a1c36d:	62 71 64 48 58 c6    	vaddps zmm8,zmm3,zmm6
  a1c373:	62 f1 64 48 5c de    	vsubps zmm3,zmm3,zmm6
  a1c379:	62 71 74 48 58 c8    	vaddps zmm9,zmm1,zmm0
  a1c37f:	62 f1 74 48 5c c8    	vsubps zmm1,zmm1,zmm0
  a1c385:	62 51 7c 40 58 d3    	vaddps zmm10,zmm16,zmm11
  a1c38b:	62 d1 7c 40 5c c3    	vsubps zmm0,zmm16,zmm11
  a1c391:	62 d1 0c 48 5c f7    	vsubps zmm6,zmm14,zmm15
  a1c397:	62 51 0c 48 58 df    	vaddps zmm11,zmm14,zmm15
  a1c39d:	62 31 14 48 5c f1    	vsubps zmm14,zmm13,zmm17
  a1c3a3:	62 31 14 48 58 e9    	vaddps zmm13,zmm13,zmm17
  a1c3a9:	62 51 7c 48 28 fb    	vmovaps zmm15,zmm11
  a1c3af:	62 e1 7c 48 28 05 07 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff673807]        # 8fbc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d070>
  a1c3b6:	38 67 ff 
  a1c3b9:	62 52 7d 40 7f fd    	vpermt2ps zmm15,zmm16,zmm13
  a1c3bf:	62 71 7c 48 11 3c 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm15
  a1c3c6:	62 51 24 48 14 fd    	vunpcklps zmm15,zmm11,zmm13
  a1c3cc:	62 73 7d 48 19 7c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x60],zmm15,0x3
  a1c3d3:	06 03 
  a1c3d5:	62 51 24 48 15 fd    	vunpckhps zmm15,zmm11,zmm13
  a1c3db:	62 53 7d 48 19 ff 03 	vextractf32x4 xmm15,zmm15,0x3
  a1c3e2:	c5 78 13 7c 16 70    	vmovlps QWORD PTR [rsi+rdx*1+0x70],xmm15
  a1c3e8:	c5 7c 28 3d 10 38 67 	vmovaps ymm15,YMMWORD PTR [rip+0xffffffffff673810]        # 8fc00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d0b0>
  a1c3ef:	ff 
  a1c3f0:	62 52 05 48 7f dd    	vpermt2ps zmm11,zmm15,zmm13
  a1c3f6:	c5 7c 11 5c 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm11
  a1c3fc:	62 51 7c 48 28 dc    	vmovaps zmm11,zmm12
  a1c402:	62 32 7d 40 7f da    	vpermt2ps zmm11,zmm16,zmm18
  a1c408:	62 71 7c 48 11 9c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x78],zmm11
  a1c40f:	78 00 00 00 
  a1c413:	62 31 1c 48 14 da    	vunpcklps zmm11,zmm12,zmm18
  a1c419:	62 73 7d 48 19 9c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xd8],zmm11,0x3
  a1c420:	d8 00 00 00 03 
  a1c425:	62 31 1c 48 15 da    	vunpckhps zmm11,zmm12,zmm18
  a1c42b:	62 53 7d 48 19 db 03 	vextractf32x4 xmm11,zmm11,0x3
  a1c432:	c5 78 13 9c 16 e8 00 	vmovlps QWORD PTR [rsi+rdx*1+0xe8],xmm11
  a1c439:	00 00 
  a1c43b:	62 32 05 48 7f e2    	vpermt2ps zmm12,zmm15,zmm18
  a1c441:	c5 7c 11 a4 16 b8 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xb8],ymm12
  a1c448:	00 00 
  a1c44a:	62 71 7c 48 28 df    	vmovaps zmm11,zmm7
  a1c450:	62 52 7d 40 7f d8    	vpermt2ps zmm11,zmm16,zmm8
  a1c456:	62 71 7c 48 11 9c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xf0],zmm11
  a1c45d:	f0 00 00 00 
  a1c461:	62 51 44 48 14 d8    	vunpcklps zmm11,zmm7,zmm8
  a1c467:	62 73 7d 48 19 5c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x150],zmm11,0x3
  a1c46e:	15 03 
  a1c470:	62 51 44 48 15 d8    	vunpckhps zmm11,zmm7,zmm8
  a1c476:	62 53 7d 48 19 db 03 	vextractf32x4 xmm11,zmm11,0x3
  a1c47d:	c5 78 13 9c 16 60 01 	vmovlps QWORD PTR [rsi+rdx*1+0x160],xmm11
  a1c484:	00 00 
  a1c486:	62 d2 05 48 7f f8    	vpermt2ps zmm7,zmm15,zmm8
  a1c48c:	c5 fc 11 bc 16 30 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x130],ymm7
  a1c493:	00 00 
  a1c495:	62 d1 7c 48 28 f9    	vmovaps zmm7,zmm9
  a1c49b:	62 d2 7d 40 7f fa    	vpermt2ps zmm7,zmm16,zmm10
  a1c4a1:	62 f1 7c 48 11 bc 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x168],zmm7
  a1c4a8:	68 01 00 00 
  a1c4ac:	62 d1 34 48 14 fa    	vunpcklps zmm7,zmm9,zmm10
  a1c4b2:	62 f3 7d 48 19 bc 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x1c8],zmm7,0x3
  a1c4b9:	c8 01 00 00 03 
  a1c4be:	62 d1 34 48 15 fa    	vunpckhps zmm7,zmm9,zmm10
  a1c4c4:	62 f3 7d 48 19 ff 03 	vextractf32x4 xmm7,zmm7,0x3
  a1c4cb:	c5 f8 13 bc 16 d8 01 	vmovlps QWORD PTR [rsi+rdx*1+0x1d8],xmm7
  a1c4d2:	00 00 
  a1c4d4:	62 52 05 48 7f ca    	vpermt2ps zmm9,zmm15,zmm10
  a1c4da:	c5 7c 11 8c 16 a8 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x1a8],ymm9
  a1c4e1:	00 00 
  a1c4e3:	62 f1 7c 48 28 fe    	vmovaps zmm7,zmm6
  a1c4e9:	62 d2 7d 40 7f fe    	vpermt2ps zmm7,zmm16,zmm14
  a1c4ef:	62 f1 7c 48 11 bc 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1e0],zmm7
  a1c4f6:	e0 01 00 00 
  a1c4fa:	62 d1 4c 48 14 fe    	vunpcklps zmm7,zmm6,zmm14
  a1c500:	62 f3 7d 48 19 7c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x240],zmm7,0x3
  a1c507:	24 03 
  a1c509:	62 d1 4c 48 15 fe    	vunpckhps zmm7,zmm6,zmm14
  a1c50f:	62 f3 7d 48 19 ff 03 	vextractf32x4 xmm7,zmm7,0x3
  a1c516:	c5 f8 13 bc 16 50 02 	vmovlps QWORD PTR [rsi+rdx*1+0x250],xmm7
  a1c51d:	00 00 
  a1c51f:	62 d2 05 48 7f f6    	vpermt2ps zmm6,zmm15,zmm14
  a1c525:	c5 fc 11 b4 16 20 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x220],ymm6
  a1c52c:	00 00 
  a1c52e:	62 f1 7c 48 28 f4    	vmovaps zmm6,zmm4
  a1c534:	62 f2 7d 40 7f f5    	vpermt2ps zmm6,zmm16,zmm5
  a1c53a:	62 f1 7c 48 11 b4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x258],zmm6
  a1c541:	58 02 00 00 
  a1c545:	62 f1 5c 48 14 f5    	vunpcklps zmm6,zmm4,zmm5
  a1c54b:	62 f3 7d 48 19 b4 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x2b8],zmm6,0x3
  a1c552:	b8 02 00 00 03 
  a1c557:	62 f1 5c 48 15 f5    	vunpckhps zmm6,zmm4,zmm5
  a1c55d:	62 f3 7d 48 19 f6 03 	vextractf32x4 xmm6,zmm6,0x3
  a1c564:	c5 f8 13 b4 16 c8 02 	vmovlps QWORD PTR [rsi+rdx*1+0x2c8],xmm6
  a1c56b:	00 00 
  a1c56d:	62 f2 05 48 7f e5    	vpermt2ps zmm4,zmm15,zmm5
  a1c573:	c5 fc 11 a4 16 98 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x298],ymm4
  a1c57a:	00 00 
  a1c57c:	62 f1 7c 48 28 e2    	vmovaps zmm4,zmm2
  a1c582:	62 f2 7d 40 7f e3    	vpermt2ps zmm4,zmm16,zmm3
  a1c588:	62 f1 7c 48 11 a4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x2d0],zmm4
  a1c58f:	d0 02 00 00 
  a1c593:	62 f1 6c 48 14 e3    	vunpcklps zmm4,zmm2,zmm3
  a1c599:	62 f3 7d 48 19 64 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x330],zmm4,0x3
  a1c5a0:	33 03 
  a1c5a2:	62 f1 6c 48 15 e3    	vunpckhps zmm4,zmm2,zmm3
  a1c5a8:	62 f3 7d 48 19 e4 03 	vextractf32x4 xmm4,zmm4,0x3
  a1c5af:	c5 f8 13 a4 16 40 03 	vmovlps QWORD PTR [rsi+rdx*1+0x340],xmm4
  a1c5b6:	00 00 
  a1c5b8:	62 f2 05 48 7f d3    	vpermt2ps zmm2,zmm15,zmm3
  a1c5be:	c5 fc 11 94 16 10 03 	vmovups YMMWORD PTR [rsi+rdx*1+0x310],ymm2
  a1c5c5:	00 00 
  a1c5c7:	62 f1 7c 48 28 d1    	vmovaps zmm2,zmm1
  a1c5cd:	62 f2 7d 40 7f d0    	vpermt2ps zmm2,zmm16,zmm0
  a1c5d3:	62 f1 7c 48 11 94 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x348],zmm2
  a1c5da:	48 03 00 00 
  a1c5de:	62 f1 74 48 14 d0    	vunpcklps zmm2,zmm1,zmm0
  a1c5e4:	62 f3 7d 48 19 94 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x3a8],zmm2,0x3
  a1c5eb:	a8 03 00 00 03 
  a1c5f0:	62 f1 74 48 15 d0    	vunpckhps zmm2,zmm1,zmm0
  a1c5f6:	62 f3 7d 48 19 d2 03 	vextractf32x4 xmm2,zmm2,0x3
  a1c5fd:	c5 f8 13 94 16 b8 03 	vmovlps QWORD PTR [rsi+rdx*1+0x3b8],xmm2
  a1c604:	00 00 
  a1c606:	62 f2 05 48 7f c8    	vpermt2ps zmm1,zmm15,zmm0
  a1c60c:	c5 fc 11 8c 16 88 03 	vmovups YMMWORD PTR [rsi+rdx*1+0x388],ymm1
  a1c613:	00 00 
  a1c615:	48 81 c2 c0 03 00 00 	add    rdx,0x3c0
  a1c61c:	48 39 d0             	cmp    rax,rdx
  a1c61f:	0f 85 ab f0 ff ff    	jne    a1b6d0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x10>
  a1c625:	48 81 c4 08 05 00 00 	add    rsp,0x508
  a1c62c:	c5 f8 77             	vzeroupper
  a1c62f:	c3                   	ret
