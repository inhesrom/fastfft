
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a31800 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a31800:	48 81 ec c8 04 00 00 	sub    rsp,0x4c8
  a31807:	62 71 7c 48 28 05 6f 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff65f56f]        # 90d80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e230>
  a3180e:	f5 65 ff 
  a31811:	62 61 7c 48 10 17    	vmovups zmm26,ZMMWORD PTR [rdi]
  a31817:	62 f1 7c 48 10 77 01 	vmovups zmm6,ZMMWORD PTR [rdi+0x40]
  a3181e:	62 71 7c 48 10 4f 02 	vmovups zmm9,ZMMWORD PTR [rdi+0x80]
  a31825:	62 f1 7c 48 10 6f 03 	vmovups zmm5,ZMMWORD PTR [rdi+0xc0]
  a3182c:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a31830:	62 91 7c 48 28 ca    	vmovaps zmm1,zmm26
  a31836:	62 f2 3d 48 7f c8    	vpermt2ps zmm1,zmm8,zmm0
  a3183c:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm1
  a31843:	05 
  a31844:	62 f1 7c 48 28 ce    	vmovaps zmm1,zmm6
  a3184a:	62 f2 3d 48 7f c8    	vpermt2ps zmm1,zmm8,zmm0
  a31850:	62 f1 7c 48 28 f9    	vmovaps zmm7,zmm1
  a31856:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm1
  a3185d:	03 
  a3185e:	62 d1 7c 48 28 c9    	vmovaps zmm1,zmm9
  a31864:	62 f2 3d 48 7f c8    	vpermt2ps zmm1,zmm8,zmm0
  a3186a:	62 f1 7c 48 28 d1    	vmovaps zmm2,zmm1
  a31870:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm1
  a31877:	08 
  a31878:	62 f1 7c 48 28 cd    	vmovaps zmm1,zmm5
  a3187e:	62 f2 3d 48 7f c8    	vpermt2ps zmm1,zmm8,zmm0
  a31884:	62 71 7c 48 28 d1    	vmovaps zmm10,zmm1
  a3188a:	62 e1 7c 48 10 7f 04 	vmovups zmm23,ZMMWORD PTR [rdi+0x100]
  a31891:	62 b1 7c 48 28 cf    	vmovaps zmm1,zmm23
  a31897:	62 f2 3d 48 7f c8    	vpermt2ps zmm1,zmm8,zmm0
  a3189d:	62 71 7c 48 28 e1    	vmovaps zmm12,zmm1
  a318a3:	62 71 7c 48 10 77 05 	vmovups zmm14,ZMMWORD PTR [rdi+0x140]
  a318aa:	62 41 7c 48 28 e6    	vmovaps zmm28,zmm14
  a318b0:	62 62 3d 48 7f e0    	vpermt2ps zmm28,zmm8,zmm0
  a318b6:	62 e1 7c 48 10 6f 06 	vmovups zmm21,ZMMWORD PTR [rdi+0x180]
  a318bd:	62 b1 7c 48 28 cd    	vmovaps zmm1,zmm21
  a318c3:	62 f2 3d 48 7f c8    	vpermt2ps zmm1,zmm8,zmm0
  a318c9:	62 71 7c 48 28 f9    	vmovaps zmm15,zmm1
  a318cf:	62 e1 7c 48 10 5f 07 	vmovups zmm19,ZMMWORD PTR [rdi+0x1c0]
  a318d6:	62 b1 7c 48 28 cb    	vmovaps zmm1,zmm19
  a318dc:	62 f2 3d 48 7f c8    	vpermt2ps zmm1,zmm8,zmm0
  a318e2:	62 e1 7c 48 28 c1    	vmovaps zmm16,zmm1
  a318e8:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm1
  a318ef:	02 
  a318f0:	62 e1 7c 48 10 77 08 	vmovups zmm22,ZMMWORD PTR [rdi+0x200]
  a318f7:	62 b1 7c 48 28 ce    	vmovaps zmm1,zmm22
  a318fd:	62 f2 3d 48 7f c8    	vpermt2ps zmm1,zmm8,zmm0
  a31903:	62 f1 7c 48 28 d9    	vmovaps zmm3,zmm1
  a31909:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm1
  a31910:	09 
  a31911:	62 e1 7c 48 10 67 09 	vmovups zmm20,ZMMWORD PTR [rdi+0x240]
  a31918:	62 b1 7c 48 28 cc    	vmovaps zmm1,zmm20
  a3191e:	62 f2 3d 48 7f c8    	vpermt2ps zmm1,zmm8,zmm0
  a31924:	62 e1 7c 48 28 c9    	vmovaps zmm17,zmm1
  a3192a:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm1
  a31931:	01 
  a31932:	62 71 7c 48 10 5f 0a 	vmovups zmm11,ZMMWORD PTR [rdi+0x280]
  a31939:	62 51 7c 48 28 eb    	vmovaps zmm13,zmm11
  a3193f:	62 72 3d 48 7f e8    	vpermt2ps zmm13,zmm8,zmm0
  a31945:	62 61 7c 48 10 5f 0b 	vmovups zmm27,ZMMWORD PTR [rdi+0x2c0]
  a3194c:	62 91 7c 48 28 cb    	vmovaps zmm1,zmm27
  a31952:	62 f2 3d 48 7f c8    	vpermt2ps zmm1,zmm8,zmm0
  a31958:	62 f1 7c 48 28 e1    	vmovaps zmm4,zmm1
  a3195e:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a31965:	fe 
  a31966:	62 61 7c 48 10 7f 0c 	vmovups zmm31,ZMMWORD PTR [rdi+0x300]
  a3196d:	62 01 7c 48 28 c7    	vmovaps zmm24,zmm31
  a31973:	62 62 3d 48 7f c0    	vpermt2ps zmm24,zmm8,zmm0
  a31979:	62 61 7c 48 10 6f 0d 	vmovups zmm29,ZMMWORD PTR [rdi+0x340]
  a31980:	62 01 7c 48 28 cd    	vmovaps zmm25,zmm29
  a31986:	62 62 3d 48 7f c8    	vpermt2ps zmm25,zmm8,zmm0
  a3198c:	62 e1 7c 48 10 57 0e 	vmovups zmm18,ZMMWORD PTR [rdi+0x380]
  a31993:	62 72 6d 40 77 c0    	vpermi2ps zmm8,zmm18,zmm0
  a31999:	62 f1 64 48 5c ca    	vsubps zmm1,zmm3,zmm2
  a3199f:	62 d1 5c 48 5c c0    	vsubps zmm0,zmm4,zmm8
  a319a5:	62 f2 7d 48 18 25 a9 	vbroadcastss zmm4,DWORD PTR [rip+0xffffffffff643da9]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a319ac:	3d 64 ff 
  a319af:	62 f2 7d 48 18 1d e7 	vbroadcastss zmm3,DWORD PTR [rip+0xffffffffff6439e7]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a319b6:	39 64 ff 
  a319b9:	62 f1 7c 48 59 d4    	vmulps zmm2,zmm0,zmm4
  a319bf:	62 f2 75 48 b8 d3    	vfmadd231ps zmm2,zmm1,zmm3
  a319c5:	62 f1 7c 48 11 14 24 	vmovups ZMMWORD PTR [rsp],zmm2
  a319cc:	62 f1 74 48 59 cc    	vmulps zmm1,zmm1,zmm4
  a319d2:	62 f2 65 48 bc c8    	vfnmadd231ps zmm1,zmm3,zmm0
  a319d8:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm1
  a319df:	07 
  a319e0:	62 b1 34 40 5c c0    	vsubps zmm0,zmm25,zmm16
  a319e6:	62 d1 44 48 5c cc    	vsubps zmm1,zmm7,zmm12
  a319ec:	62 f1 74 48 59 d4    	vmulps zmm2,zmm1,zmm4
  a319f2:	62 f2 7d 48 b8 d3    	vfmadd231ps zmm2,zmm0,zmm3
  a319f8:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm2
  a319ff:	11 
  a31a00:	62 f1 7c 48 59 c4    	vmulps zmm0,zmm0,zmm4
  a31a06:	62 f2 65 48 bc c1    	vfnmadd231ps zmm0,zmm3,zmm1
  a31a0c:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm0
  a31a13:	06 
  a31a14:	62 91 2c 48 5c c0    	vsubps zmm0,zmm10,zmm24
  a31a1a:	62 d1 7c 48 28 fa    	vmovaps zmm7,zmm10
  a31a20:	62 b1 04 48 5c c9    	vsubps zmm1,zmm15,zmm17
  a31a26:	62 f1 74 48 59 d4    	vmulps zmm2,zmm1,zmm4
  a31a2c:	62 f2 7d 48 b8 d3    	vfmadd231ps zmm2,zmm0,zmm3
  a31a32:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm2
  a31a39:	ff 
  a31a3a:	62 f1 7c 48 59 c4    	vmulps zmm0,zmm0,zmm4
  a31a40:	62 f2 65 48 bc c1    	vfnmadd231ps zmm0,zmm3,zmm1
  a31a46:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm0
  a31a4d:	04 
  a31a4e:	62 61 7c 48 28 35 68 	vmovaps zmm30,ZMMWORD PTR [rip+0xffffffffff65f368]        # 90dc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e270>
  a31a55:	f3 65 ff 
  a31a58:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a31a5c:	62 72 0d 40 7f c8    	vpermt2ps zmm9,zmm30,zmm0
  a31a62:	62 e2 0d 40 7f f0    	vpermt2ps zmm22,zmm30,zmm0
  a31a68:	62 62 0d 40 7f d8    	vpermt2ps zmm27,zmm30,zmm0
  a31a6e:	62 e2 0d 40 7f d0    	vpermt2ps zmm18,zmm30,zmm0
  a31a74:	62 d1 4c 40 5c c1    	vsubps zmm0,zmm22,zmm9
  a31a7a:	62 b1 24 40 5c ca    	vsubps zmm1,zmm27,zmm18
  a31a80:	62 f1 74 48 59 d4    	vmulps zmm2,zmm1,zmm4
  a31a86:	62 f2 7d 48 b8 d3    	vfmadd231ps zmm2,zmm0,zmm3
  a31a8c:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm2
  a31a93:	10 
  a31a94:	62 e1 7c 48 59 c4    	vmulps zmm16,zmm0,zmm4
  a31a9a:	62 e2 65 48 bc c1    	vfnmadd231ps zmm16,zmm3,zmm1
  a31aa0:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  a31aa4:	62 f2 0d 40 7f f1    	vpermt2ps zmm6,zmm30,zmm1
  a31aaa:	62 e2 0d 40 7f f9    	vpermt2ps zmm23,zmm30,zmm1
  a31ab0:	62 e2 0d 40 7f d9    	vpermt2ps zmm19,zmm30,zmm1
  a31ab6:	62 62 0d 40 7f e9    	vpermt2ps zmm29,zmm30,zmm1
  a31abc:	62 b1 14 40 5c c3    	vsubps zmm0,zmm29,zmm19
  a31ac2:	62 a1 4c 48 5c cf    	vsubps zmm17,zmm6,zmm23
  a31ac8:	62 f1 74 40 59 d4    	vmulps zmm2,zmm17,zmm4
  a31ace:	62 f2 7d 48 b8 d3    	vfmadd231ps zmm2,zmm0,zmm3
  a31ad4:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm2
  a31adb:	0d 
  a31adc:	62 71 7c 48 59 d4    	vmulps zmm10,zmm0,zmm4
  a31ae2:	62 32 65 48 bc d1    	vfnmadd231ps zmm10,zmm3,zmm17
  a31ae8:	62 f2 0d 40 7f e9    	vpermt2ps zmm5,zmm30,zmm1
  a31aee:	62 e2 0d 40 7f e9    	vpermt2ps zmm21,zmm30,zmm1
  a31af4:	62 e2 0d 40 7f e1    	vpermt2ps zmm20,zmm30,zmm1
  a31afa:	62 62 0d 40 7f f9    	vpermt2ps zmm31,zmm30,zmm1
  a31b00:	62 91 54 48 5c c7    	vsubps zmm0,zmm5,zmm31
  a31b06:	62 f1 7c 48 28 d5    	vmovaps zmm2,zmm5
  a31b0c:	62 b1 54 40 5c cc    	vsubps zmm1,zmm21,zmm20
  a31b12:	62 f1 74 48 59 ec    	vmulps zmm5,zmm1,zmm4
  a31b18:	62 f2 7d 48 b8 eb    	vfmadd231ps zmm5,zmm0,zmm3
  a31b1e:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm5
  a31b25:	12 
  a31b26:	62 f1 7c 48 59 ec    	vmulps zmm5,zmm0,zmm4
  a31b2c:	62 f2 75 48 bc eb    	vfnmadd231ps zmm5,zmm1,zmm3
  a31b32:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a31b36:	62 62 0d 40 7f d0    	vpermt2ps zmm26,zmm30,zmm0
  a31b3c:	62 72 0d 40 7f f0    	vpermt2ps zmm14,zmm30,zmm0
  a31b42:	62 72 0d 40 7f d8    	vpermt2ps zmm11,zmm30,zmm0
  a31b48:	62 91 6c 48 58 cf    	vaddps zmm1,zmm2,zmm31
  a31b4e:	62 b1 54 40 58 dc    	vaddps zmm3,zmm21,zmm20
  a31b54:	62 d1 4c 40 58 e1    	vaddps zmm4,zmm22,zmm9
  a31b5a:	62 a1 24 40 58 e2    	vaddps zmm20,zmm27,zmm18
  a31b60:	62 a1 14 40 58 db    	vaddps zmm19,zmm29,zmm19
  a31b66:	62 21 4c 48 58 ef    	vaddps zmm29,zmm6,zmm23
  a31b6c:	62 01 44 48 58 c0    	vaddps zmm24,zmm7,zmm24
  a31b72:	62 61 04 48 58 7c 24 	vaddps zmm31,zmm15,ZMMWORD PTR [rsp+0x40]
  a31b79:	01 
  a31b7a:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x200]
  a31b81:	08 
  a31b82:	62 e1 7c 48 58 74 24 	vaddps zmm22,zmm0,ZMMWORD PTR [rsp+0x240]
  a31b89:	09 
  a31b8a:	62 f1 3c 48 58 44 24 	vaddps zmm0,zmm8,ZMMWORD PTR [rsp-0x80]
  a31b91:	fe 
  a31b92:	62 e1 34 40 58 7c 24 	vaddps zmm23,zmm25,ZMMWORD PTR [rsp+0x80]
  a31b99:	02 
  a31b9a:	62 61 1c 48 58 4c 24 	vaddps zmm25,zmm12,ZMMWORD PTR [rsp+0xc0]
  a31ba1:	03 
  a31ba2:	62 72 7d 48 18 05 3c 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff643b3c]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a31ba9:	3b 64 ff 
  a31bac:	62 d1 7c 48 28 d0    	vmovaps zmm2,zmm8
  a31bb2:	62 d2 5d 48 a8 d6    	vfmadd213ps zmm2,zmm4,zmm14
  a31bb8:	62 62 7d 48 18 1d 82 	vbroadcastss zmm27,DWORD PTR [rip+0xffffffffff643a82]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a31bbf:	3a 64 ff 
  a31bc2:	62 61 0c 48 58 f4    	vaddps zmm30,zmm14,zmm4
  a31bc8:	62 72 25 40 bc f4    	vfnmadd231ps zmm14,zmm27,zmm4
  a31bce:	62 c1 7c 48 28 d0    	vmovaps zmm18,zmm8
  a31bd4:	62 c2 65 40 a8 d3    	vfmadd213ps zmm18,zmm19,zmm11
  a31bda:	62 31 24 48 58 cb    	vaddps zmm9,zmm11,zmm19
  a31be0:	62 32 25 40 bc db    	vfnmadd231ps zmm11,zmm27,zmm19
  a31be6:	62 c1 7c 48 28 d8    	vmovaps zmm19,zmm8
  a31bec:	62 82 75 48 a8 da    	vfmadd213ps zmm19,zmm1,zmm26
  a31bf2:	62 f1 2c 40 58 f9    	vaddps zmm7,zmm26,zmm1
  a31bf8:	62 62 25 40 bc d1    	vfnmadd231ps zmm26,zmm27,zmm1
  a31bfe:	62 c1 7c 48 28 e8    	vmovaps zmm21,zmm8
  a31c04:	62 82 4d 40 a8 ec    	vfmadd213ps zmm21,zmm22,zmm28
  a31c0a:	62 b1 1c 40 58 e6    	vaddps zmm4,zmm28,zmm22
  a31c10:	62 22 25 40 bc e6    	vfnmadd231ps zmm28,zmm27,zmm22
  a31c16:	62 c1 7c 48 28 f0    	vmovaps zmm22,zmm8
  a31c1c:	62 c2 45 40 a8 f5    	vfmadd213ps zmm22,zmm23,zmm13
  a31c22:	62 b1 14 48 58 f7    	vaddps zmm6,zmm13,zmm23
  a31c28:	62 32 25 40 bc ef    	vfnmadd231ps zmm13,zmm27,zmm23
  a31c2e:	62 c1 7c 48 28 f8    	vmovaps zmm23,zmm8
  a31c34:	62 71 7c 48 10 64 24 	vmovups zmm12,ZMMWORD PTR [rsp+0x140]
  a31c3b:	05 
  a31c3c:	62 c2 3d 40 a8 fc    	vfmadd213ps zmm23,zmm24,zmm12
  a31c42:	62 91 1c 48 58 c8    	vaddps zmm1,zmm12,zmm24
  a31c48:	62 12 3d 40 bc e3    	vfnmadd231ps zmm12,zmm24,zmm27
  a31c4e:	62 41 7c 48 28 c4    	vmovaps zmm24,zmm12
  a31c54:	62 92 5d 40 bc d3    	vfnmadd231ps zmm2,zmm20,zmm27
  a31c5a:	62 82 15 40 bc d3    	vfnmadd231ps zmm18,zmm29,zmm27
  a31c60:	62 82 65 48 bc db    	vfnmadd231ps zmm19,zmm3,zmm27
  a31c66:	62 82 7d 48 bc eb    	vfnmadd231ps zmm21,zmm0,zmm27
  a31c6c:	62 82 35 40 bc f3    	vfnmadd231ps zmm22,zmm25,zmm27
  a31c72:	62 82 05 40 bc fb    	vfnmadd231ps zmm23,zmm31,zmm27
  a31c78:	62 31 0c 40 58 e4    	vaddps zmm12,zmm30,zmm20
  a31c7e:	62 32 3d 48 b8 f4    	vfmadd231ps zmm14,zmm8,zmm20
  a31c84:	62 11 34 48 58 fd    	vaddps zmm15,zmm9,zmm29
  a31c8a:	62 71 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm15
  a31c91:	0b 
  a31c92:	62 12 3d 48 b8 dd    	vfmadd231ps zmm11,zmm8,zmm29
  a31c98:	62 71 44 48 58 cb    	vaddps zmm9,zmm7,zmm3
  a31c9e:	62 62 3d 48 b8 d3    	vfmadd231ps zmm26,zmm8,zmm3
  a31ca4:	62 f1 5c 48 58 f8    	vaddps zmm7,zmm4,zmm0
  a31caa:	62 62 3d 48 b8 e0    	vfmadd231ps zmm28,zmm8,zmm0
  a31cb0:	62 91 74 48 58 cf    	vaddps zmm1,zmm1,zmm31
  a31cb6:	62 42 05 40 b8 c0    	vfmadd231ps zmm24,zmm31,zmm8
  a31cbc:	62 12 3d 48 b8 e9    	vfmadd231ps zmm13,zmm8,zmm25
  a31cc2:	62 01 4c 48 58 f1    	vaddps zmm30,zmm6,zmm25
  a31cc8:	62 61 7c 48 10 5c 24 	vmovups zmm27,ZMMWORD PTR [rsp+0x400]
  a31ccf:	10 
  a31cd0:	62 91 54 40 5c c3    	vsubps zmm0,zmm21,zmm27
  a31cd6:	62 61 7c 48 10 6c 24 	vmovups zmm29,ZMMWORD PTR [rsp+0x340]
  a31cdd:	0d 
  a31cde:	62 91 4c 40 5c dd    	vsubps zmm3,zmm22,zmm29
  a31ce4:	62 f1 7c 48 5c e3    	vsubps zmm4,zmm0,zmm3
  a31cea:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm4
  a31cf1:	fe 
  a31cf2:	62 f1 7c 48 58 c3    	vaddps zmm0,zmm0,zmm3
  a31cf8:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm0
  a31cff:	03 
  a31d00:	62 e1 7c 48 10 0c 24 	vmovups zmm17,ZMMWORD PTR [rsp]
  a31d07:	62 b1 6c 48 58 c1    	vaddps zmm0,zmm2,zmm17
  a31d0d:	62 e1 7c 48 10 64 24 	vmovups zmm20,ZMMWORD PTR [rsp+0x440]
  a31d14:	11 
  a31d15:	62 b1 6c 40 58 dc    	vaddps zmm3,zmm18,zmm20
  a31d1b:	62 61 7c 48 58 fb    	vaddps zmm31,zmm0,zmm3
  a31d21:	62 f1 7c 48 5c c3    	vsubps zmm0,zmm0,zmm3
  a31d27:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm0
  a31d2e:	05 
  a31d2f:	62 b1 1c 40 5c c0    	vsubps zmm0,zmm28,zmm16
  a31d35:	62 d1 14 48 5c da    	vsubps zmm3,zmm13,zmm10
  a31d3b:	62 f1 7c 48 5c e3    	vsubps zmm4,zmm0,zmm3
  a31d41:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm4
  a31d48:	01 
  a31d49:	62 f1 7c 48 58 c3    	vaddps zmm0,zmm0,zmm3
  a31d4f:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm0
  a31d56:	02 
  a31d57:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x1c0]
  a31d5e:	07 
  a31d5f:	62 f1 0c 48 58 c4    	vaddps zmm0,zmm14,zmm4
  a31d65:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x180]
  a31d6c:	06 
  a31d6d:	62 f1 24 48 58 de    	vaddps zmm3,zmm11,zmm6
  a31d73:	62 71 7c 48 58 c3    	vaddps zmm8,zmm0,zmm3
  a31d79:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm8
  a31d80:	0e 
  a31d81:	62 f1 7c 48 5c c3    	vsubps zmm0,zmm0,zmm3
  a31d87:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm0
  a31d8e:	0f 
  a31d8f:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x100]
  a31d96:	04 
  a31d97:	62 f1 2c 40 58 d8    	vaddps zmm3,zmm26,zmm0
  a31d9d:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm3
  a31da4:	0c 
  a31da5:	62 f1 2c 40 5c c0    	vsubps zmm0,zmm26,zmm0
  a31dab:	62 71 0c 48 5c c4    	vsubps zmm8,zmm14,zmm4
  a31db1:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm8
  a31db8:	0a 
  a31db9:	62 f1 24 48 5c f6    	vsubps zmm6,zmm11,zmm6
  a31dbf:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm6
  a31dc6:	04 
  a31dc7:	62 f1 3c 40 5c dd    	vsubps zmm3,zmm24,zmm5
  a31dcd:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm3
  a31dd4:	06 
  a31dd5:	62 11 54 48 58 d8    	vaddps zmm11,zmm5,zmm24
  a31ddb:	62 01 7c 40 58 c4    	vaddps zmm24,zmm16,zmm28
  a31de1:	62 51 2c 48 58 f5    	vaddps zmm14,zmm10,zmm13
  a31de7:	62 41 1c 48 58 cf    	vaddps zmm25,zmm12,zmm15
  a31ded:	62 51 7c 48 28 fc    	vmovaps zmm15,zmm12
  a31df3:	62 91 34 48 58 d9    	vaddps zmm3,zmm9,zmm25
  a31df9:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm3
  a31e00:	07 
  a31e01:	62 f2 7d 48 18 1d 55 	vbroadcastss zmm3,DWORD PTR [rip+0xffffffffff643655]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a31e08:	36 64 ff 
  a31e0b:	62 42 65 48 ac c9    	vfnmadd213ps zmm25,zmm3,zmm9
  a31e11:	62 11 44 48 58 d6    	vaddps zmm10,zmm7,zmm30
  a31e17:	62 71 7c 48 28 e7    	vmovaps zmm12,zmm7
  a31e1d:	62 d1 74 48 58 e2    	vaddps zmm4,zmm1,zmm10
  a31e23:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm4
  a31e2a:	09 
  a31e2b:	62 72 65 48 ac d1    	vfnmadd213ps zmm10,zmm3,zmm1
  a31e31:	62 71 3c 48 58 ce    	vaddps zmm9,zmm8,zmm6
  a31e37:	62 d1 7c 48 58 f9    	vaddps zmm7,zmm0,zmm9
  a31e3d:	62 72 65 48 ac c8    	vfnmadd213ps zmm9,zmm3,zmm0
  a31e43:	62 71 7c 48 28 eb    	vmovaps zmm13,zmm3
  a31e49:	62 61 7c 48 28 e3    	vmovaps zmm28,zmm3
  a31e4f:	62 71 7c 48 28 c3    	vmovaps zmm8,zmm3
  a31e55:	62 e1 7c 48 28 c3    	vmovaps zmm16,zmm3
  a31e5b:	62 41 3c 40 58 d6    	vaddps zmm26,zmm24,zmm14
  a31e61:	62 f1 7c 48 28 eb    	vmovaps zmm5,zmm3
  a31e67:	62 f1 7c 48 28 f3    	vmovaps zmm6,zmm3
  a31e6d:	62 d2 2d 40 ac db    	vfnmadd213ps zmm3,zmm26,zmm11
  a31e73:	62 91 24 48 58 c2    	vaddps zmm0,zmm11,zmm26
  a31e79:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm0
  a31e80:	08 
  a31e81:	62 b1 6c 48 5c d1    	vsubps zmm2,zmm2,zmm17
  a31e87:	62 a1 6c 40 5c d4    	vsubps zmm18,zmm18,zmm20
  a31e8d:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x40]
  a31e94:	ff 
  a31e95:	62 61 64 40 58 d0    	vaddps zmm26,zmm19,zmm0
  a31e9b:	62 e1 64 40 5c d8    	vsubps zmm19,zmm19,zmm0
  a31ea1:	62 a1 24 40 58 ed    	vaddps zmm21,zmm27,zmm21
  a31ea7:	62 a1 14 40 58 f6    	vaddps zmm22,zmm29,zmm22
  a31ead:	62 31 54 40 5c de    	vsubps zmm11,zmm21,zmm22
  a31eb3:	62 b1 54 40 58 ce    	vaddps zmm1,zmm21,zmm22
  a31eb9:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x480]
  a31ec0:	12 
  a31ec1:	62 e1 44 40 5c f0    	vsubps zmm22,zmm23,zmm0
  a31ec7:	62 a1 7c 48 58 ff    	vaddps zmm23,zmm0,zmm23
  a31ecd:	62 b1 6c 48 58 c2    	vaddps zmm0,zmm2,zmm18
  a31ed3:	62 a1 6c 48 5c d2    	vsubps zmm18,zmm2,zmm18
  a31ed9:	62 01 1c 48 5c ee    	vsubps zmm29,zmm12,zmm30
  a31edf:	62 61 04 48 5c 74 24 	vsubps zmm30,zmm15,ZMMWORD PTR [rsp+0x2c0]
  a31ee6:	0b 
  a31ee7:	62 12 05 40 ac ea    	vfnmadd213ps zmm13,zmm31,zmm26
  a31eed:	62 11 2c 40 58 ff    	vaddps zmm15,zmm26,zmm31
  a31ef3:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0xc0]
  a31efa:	03 
  a31efb:	62 22 6d 48 ac e6    	vfnmadd213ps zmm28,zmm2,zmm22
  a31f01:	62 f1 4c 40 58 d2    	vaddps zmm2,zmm22,zmm2
  a31f07:	62 f1 7c 48 11 14 24 	vmovups ZMMWORD PTR [rsp],zmm2
  a31f0e:	62 62 7d 48 18 3d bc 	vbroadcastss zmm31,DWORD PTR [rip+0xffffffffff6433bc]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a31f15:	33 64 ff 
  a31f18:	62 71 7c 48 10 64 24 	vmovups zmm12,ZMMWORD PTR [rsp+0x380]
  a31f1f:	0e 
  a31f20:	62 e1 7c 48 10 6c 24 	vmovups zmm21,ZMMWORD PTR [rsp+0x300]
  a31f27:	0c 
  a31f28:	62 32 1d 48 ac c5    	vfnmadd213ps zmm8,zmm12,zmm21
  a31f2e:	62 61 04 40 59 54 24 	vmulps zmm26,zmm31,ZMMWORD PTR [rsp+0x40]
  a31f35:	01 
  a31f36:	62 81 3c 48 5c f2    	vsubps zmm22,zmm8,zmm26
  a31f3c:	62 01 3c 48 58 da    	vaddps zmm27,zmm8,zmm26
  a31f42:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x80]
  a31f49:	02 
  a31f4a:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x180]
  a31f51:	06 
  a31f52:	62 e2 5d 48 ac c2    	vfnmadd213ps zmm16,zmm4,zmm2
  a31f58:	62 61 04 40 59 54 24 	vmulps zmm26,zmm31,ZMMWORD PTR [rsp+0x3c0]
  a31f5f:	0f 
  a31f60:	62 11 7c 40 58 c2    	vaddps zmm8,zmm16,zmm26
  a31f66:	62 01 7c 40 5c d2    	vsubps zmm26,zmm16,zmm26
  a31f6c:	62 51 3c 40 5c f6    	vsubps zmm14,zmm24,zmm14
  a31f72:	62 e1 7c 48 10 44 24 	vmovups zmm16,ZMMWORD PTR [rsp+0x280]
  a31f79:	0a 
  a31f7a:	62 e1 7c 40 5c 44 24 	vsubps zmm16,zmm16,ZMMWORD PTR [rsp+0x100]
  a31f81:	04 
  a31f82:	62 e1 04 40 59 64 24 	vmulps zmm20,zmm31,ZMMWORD PTR [rsp-0x80]
  a31f89:	fe 
  a31f8a:	62 61 04 40 59 44 24 	vmulps zmm24,zmm31,ZMMWORD PTR [rsp+0x140]
  a31f91:	05 
  a31f92:	62 81 24 48 59 cf    	vmulps zmm17,zmm11,zmm31
  a31f98:	62 81 6c 40 59 d7    	vmulps zmm18,zmm18,zmm31
  a31f9e:	62 11 14 40 59 df    	vmulps zmm11,zmm29,zmm31
  a31fa4:	62 01 0c 40 59 ef    	vmulps zmm29,zmm30,zmm31
  a31faa:	62 11 0c 48 59 f7    	vmulps zmm14,zmm14,zmm31
  a31fb0:	62 01 7c 40 59 f7    	vmulps zmm30,zmm16,zmm31
  a31fb6:	62 b2 7d 48 ac eb    	vfnmadd213ps zmm5,zmm0,zmm19
  a31fbc:	62 61 64 40 58 f8    	vaddps zmm31,zmm19,zmm0
  a31fc2:	62 b2 75 48 ac f7    	vfnmadd213ps zmm6,zmm1,zmm23
  a31fc8:	62 f1 44 40 58 c1    	vaddps zmm0,zmm23,zmm1
  a31fce:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm0
  a31fd5:	ff 
  a31fd6:	62 d1 34 40 5c cb    	vsubps zmm1,zmm25,zmm11
  a31fdc:	62 41 34 40 58 cb    	vaddps zmm25,zmm25,zmm11
  a31fe2:	62 c1 14 40 58 c2    	vaddps zmm16,zmm29,zmm10
  a31fe8:	62 81 2c 48 5c dd    	vsubps zmm19,zmm10,zmm29
  a31fee:	62 d1 5c 40 58 c5    	vaddps zmm0,zmm20,zmm13
  a31ff4:	62 31 14 48 5c ec    	vsubps zmm13,zmm13,zmm20
  a31ffa:	62 11 1c 40 5c d8    	vsubps zmm11,zmm28,zmm24
  a32000:	62 81 1c 40 58 e0    	vaddps zmm20,zmm28,zmm24
  a32006:	62 c1 54 40 58 fc    	vaddps zmm23,zmm21,zmm12
  a3200c:	62 e1 6c 48 58 ec    	vaddps zmm21,zmm2,zmm4
  a32012:	62 41 34 48 5c e6    	vsubps zmm28,zmm9,zmm14
  a32018:	62 41 34 48 58 c6    	vaddps zmm24,zmm9,zmm14
  a3201e:	62 01 64 48 58 ee    	vaddps zmm29,zmm3,zmm30
  a32024:	62 11 64 48 5c ce    	vsubps zmm9,zmm3,zmm30
  a3202a:	62 f1 74 40 58 dd    	vaddps zmm3,zmm17,zmm5
  a32030:	62 b1 54 48 5c e1    	vsubps zmm4,zmm5,zmm17
  a32036:	62 31 4c 48 5c f2    	vsubps zmm14,zmm6,zmm18
  a3203c:	62 b1 4c 48 58 ea    	vaddps zmm5,zmm6,zmm18
  a32042:	62 71 7c 48 28 15 34 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff694f34]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a32049:	4f 69 ff 
  a3204c:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x1c0]
  a32053:	07 
  a32054:	62 92 2d 48 7f d4    	vpermt2ps zmm2,zmm10,zmm28
  a3205a:	62 92 2d 48 7f c7    	vpermt2ps zmm0,zmm10,zmm31
  a32060:	62 82 2d 48 7f f1    	vpermt2ps zmm22,zmm10,zmm25
  a32066:	62 d2 2d 48 7f fd    	vpermt2ps zmm7,zmm10,zmm13
  a3206c:	62 b2 2d 48 7f df    	vpermt2ps zmm3,zmm10,zmm23
  a32072:	62 92 2d 48 7f c8    	vpermt2ps zmm1,zmm10,zmm24
  a32078:	62 72 2d 48 7f fc    	vpermt2ps zmm15,zmm10,zmm4
  a3207e:	62 a1 74 00 57 c9    	vxorps xmm17,xmm17,xmm17
  a32084:	62 22 2d 48 7f d9    	vpermt2ps zmm27,zmm10,zmm17
  a3208a:	62 e1 7c 48 28 3d 6c 	vmovaps zmm23,ZMMWORD PTR [rip+0xffffffffff694e6c]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a32091:	4e 69 ff 
  a32094:	62 f1 7c 48 28 e2    	vmovaps zmm4,zmm2
  a3209a:	62 f2 45 40 7f e3    	vpermt2ps zmm4,zmm23,zmm3
  a320a0:	62 61 7c 48 28 25 96 	vmovaps zmm28,ZMMWORD PTR [rip+0xffffffffff694e96]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a320a7:	4e 69 ff 
  a320aa:	62 f2 1d 40 7f d3    	vpermt2ps zmm2,zmm28,zmm3
  a320b0:	62 f1 7c 48 28 f2    	vmovaps zmm6,zmm2
  a320b6:	62 f1 7c 48 28 d8    	vmovaps zmm3,zmm0
  a320bc:	62 f2 45 40 7f d9    	vpermt2ps zmm3,zmm23,zmm1
  a320c2:	62 f2 1d 40 7f c1    	vpermt2ps zmm0,zmm28,zmm1
  a320c8:	62 b1 7c 48 28 ce    	vmovaps zmm1,zmm22
  a320ce:	62 d2 45 40 7f cf    	vpermt2ps zmm1,zmm23,zmm15
  a320d4:	62 c2 1d 40 7f f7    	vpermt2ps zmm22,zmm28,zmm15
  a320da:	62 71 7c 48 28 ef    	vmovaps zmm13,zmm7
  a320e0:	62 12 45 40 7f eb    	vpermt2ps zmm13,zmm23,zmm27
  a320e6:	62 92 1d 40 7f fb    	vpermt2ps zmm7,zmm28,zmm27
  a320ec:	62 f1 dd 48 14 d1    	vunpcklpd zmm2,zmm4,zmm1
  a320f2:	62 f1 dd 48 15 e1    	vunpckhpd zmm4,zmm4,zmm1
  a320f8:	62 d1 e5 48 14 cd    	vunpcklpd zmm1,zmm3,zmm13
  a320fe:	62 51 e5 48 15 ed    	vunpckhpd zmm13,zmm3,zmm13
  a32104:	62 21 cd 48 14 de    	vunpcklpd zmm27,zmm6,zmm22
  a3210a:	62 b1 cd 48 15 de    	vunpckhpd zmm3,zmm6,zmm22
  a32110:	62 71 fd 48 14 e7    	vunpcklpd zmm12,zmm0,zmm7
  a32116:	62 f1 fd 48 15 f7    	vunpckhpd zmm6,zmm0,zmm7
  a3211c:	62 f1 7c 48 28 05 da 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff694cda]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a32123:	4c 69 ff 
  a32126:	62 f1 7c 48 28 fa    	vmovaps zmm7,zmm2
  a3212c:	62 f2 7d 48 7f f9    	vpermt2ps zmm7,zmm0,zmm1
  a32132:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm7
  a32139:	fe 
  a3213a:	62 e1 7c 48 28 35 fc 	vmovaps zmm22,ZMMWORD PTR [rip+0xffffffffff694cfc]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a32141:	4c 69 ff 
  a32144:	62 f2 4d 40 7f d1    	vpermt2ps zmm2,zmm22,zmm1
  a3214a:	62 61 7c 48 28 f4    	vmovaps zmm30,zmm4
  a32150:	62 42 7d 48 7f f5    	vpermt2ps zmm30,zmm0,zmm13
  a32156:	62 d2 4d 40 7f e5    	vpermt2ps zmm4,zmm22,zmm13
  a3215c:	62 01 7c 48 28 fb    	vmovaps zmm31,zmm27
  a32162:	62 42 7d 48 7f fc    	vpermt2ps zmm31,zmm0,zmm12
  a32168:	62 42 4d 40 7f dc    	vpermt2ps zmm27,zmm22,zmm12
  a3216e:	62 71 7c 48 28 eb    	vmovaps zmm13,zmm3
  a32174:	62 72 7d 48 7f ee    	vpermt2ps zmm13,zmm0,zmm6
  a3217a:	62 f2 4d 40 7f de    	vpermt2ps zmm3,zmm22,zmm6
  a32180:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x240]
  a32187:	09 
  a32188:	62 92 2d 48 7f f5    	vpermt2ps zmm6,zmm10,zmm29
  a3218e:	62 72 2d 48 7f 5c 24 	vpermt2ps zmm11,zmm10,ZMMWORD PTR [rsp-0x40]
  a32195:	ff 
  a32196:	62 32 2d 48 7f c3    	vpermt2ps zmm8,zmm10,zmm19
  a3219c:	62 71 7c 48 10 64 24 	vmovups zmm12,ZMMWORD PTR [rsp+0x200]
  a321a3:	08 
  a321a4:	62 32 2d 48 7f e4    	vpermt2ps zmm12,zmm10,zmm20
  a321aa:	62 32 2d 48 7f f5    	vpermt2ps zmm14,zmm10,zmm21
  a321b0:	62 c2 2d 48 7f c1    	vpermt2ps zmm16,zmm10,zmm9
  a321b6:	62 71 7c 48 10 0c 24 	vmovups zmm9,ZMMWORD PTR [rsp]
  a321bd:	62 72 2d 48 7f cd    	vpermt2ps zmm9,zmm10,zmm5
  a321c3:	62 22 2d 48 7f d1    	vpermt2ps zmm26,zmm10,zmm17
  a321c9:	62 f1 7c 48 28 ce    	vmovaps zmm1,zmm6
  a321cf:	62 d2 45 40 7f ce    	vpermt2ps zmm1,zmm23,zmm14
  a321d5:	62 d2 1d 40 7f f6    	vpermt2ps zmm6,zmm28,zmm14
  a321db:	62 71 7c 48 28 d6    	vmovaps zmm10,zmm6
  a321e1:	62 d1 7c 48 28 eb    	vmovaps zmm5,zmm11
  a321e7:	62 b2 45 40 7f e8    	vpermt2ps zmm5,zmm23,zmm16
  a321ed:	62 32 1d 40 7f d8    	vpermt2ps zmm11,zmm28,zmm16
  a321f3:	62 d1 7c 48 28 f0    	vmovaps zmm6,zmm8
  a321f9:	62 d2 45 40 7f f1    	vpermt2ps zmm6,zmm23,zmm9
  a321ff:	62 52 1d 40 7f c1    	vpermt2ps zmm8,zmm28,zmm9
  a32205:	62 51 7c 48 28 cc    	vmovaps zmm9,zmm12
  a3220b:	62 82 1d 48 77 fa    	vpermi2ps zmm23,zmm12,zmm26
  a32211:	62 12 1d 40 7f ca    	vpermt2ps zmm9,zmm28,zmm26
  a32217:	62 51 7c 48 28 e1    	vmovaps zmm12,zmm9
  a3221d:	62 e1 f5 48 14 c6    	vunpcklpd zmm16,zmm1,zmm6
  a32223:	62 71 f5 48 15 ce    	vunpckhpd zmm9,zmm1,zmm6
  a32229:	62 b1 d5 48 14 f7    	vunpcklpd zmm6,zmm5,zmm23
  a3222f:	62 b1 d5 48 15 ef    	vunpckhpd zmm5,zmm5,zmm23
  a32235:	62 51 ad 48 14 f0    	vunpcklpd zmm14,zmm10,zmm8
  a3223b:	62 51 ad 48 15 c0    	vunpckhpd zmm8,zmm10,zmm8
  a32241:	62 51 a5 48 14 d4    	vunpcklpd zmm10,zmm11,zmm12
  a32247:	62 51 a5 48 15 dc    	vunpckhpd zmm11,zmm11,zmm12
  a3224d:	62 b1 7c 48 28 c8    	vmovaps zmm1,zmm16
  a32253:	62 f2 7d 48 7f ce    	vpermt2ps zmm1,zmm0,zmm6
  a32259:	62 e2 4d 40 7f c6    	vpermt2ps zmm16,zmm22,zmm6
  a3225f:	62 51 7c 48 28 e1    	vmovaps zmm12,zmm9
  a32265:	62 72 7d 48 7f e5    	vpermt2ps zmm12,zmm0,zmm5
  a3226b:	62 72 4d 40 7f cd    	vpermt2ps zmm9,zmm22,zmm5
  a32271:	62 51 7c 48 28 fe    	vmovaps zmm15,zmm14
  a32277:	62 52 7d 48 7f fa    	vpermt2ps zmm15,zmm0,zmm10
  a3227d:	62 52 4d 40 7f f2    	vpermt2ps zmm14,zmm22,zmm10
  a32283:	62 d2 3d 48 77 c3    	vpermi2ps zmm0,zmm8,zmm11
  a32289:	62 52 4d 40 7f c3    	vpermt2ps zmm8,zmm22,zmm11
  a3228f:	62 e1 7c 48 10 72 02 	vmovups zmm22,ZMMWORD PTR [rdx+0x80]
  a32296:	62 e1 7c 48 10 6a 03 	vmovups zmm21,ZMMWORD PTR [rdx+0xc0]
  a3229d:	62 71 7c 48 10 5a 04 	vmovups zmm11,ZMMWORD PTR [rdx+0x100]
  a322a4:	62 61 7c 48 10 42 05 	vmovups zmm24,ZMMWORD PTR [rdx+0x140]
  a322ab:	62 e1 7c 48 10 4a 06 	vmovups zmm17,ZMMWORD PTR [rdx+0x180]
  a322b2:	62 f1 7c 48 10 6a 07 	vmovups zmm5,ZMMWORD PTR [rdx+0x1c0]
  a322b9:	62 61 7c 48 10 4a 08 	vmovups zmm25,ZMMWORD PTR [rdx+0x200]
  a322c0:	62 61 7c 48 10 52 09 	vmovups zmm26,ZMMWORD PTR [rdx+0x240]
  a322c7:	62 f1 7c 48 10 72 0a 	vmovups zmm6,ZMMWORD PTR [rdx+0x280]
  a322ce:	62 e1 7c 48 10 7a 0b 	vmovups zmm23,ZMMWORD PTR [rdx+0x2c0]
  a322d5:	62 61 7c 48 10 62 0c 	vmovups zmm28,ZMMWORD PTR [rdx+0x300]
  a322dc:	62 61 7c 48 10 6a 0d 	vmovups zmm29,ZMMWORD PTR [rdx+0x340]
  a322e3:	62 e1 7c 48 10 62 0e 	vmovups zmm20,ZMMWORD PTR [rdx+0x380]
  a322ea:	62 e1 7c 48 10 5a 0f 	vmovups zmm19,ZMMWORD PTR [rdx+0x3c0]
  a322f1:	62 81 04 40 59 d1    	vmulps zmm18,zmm31,zmm25
  a322f7:	62 82 05 48 bc d2    	vfnmadd231ps zmm18,zmm15,zmm26
  a322fd:	62 31 44 48 58 d2    	vaddps zmm10,zmm7,zmm18
  a32303:	62 11 04 48 59 f9    	vmulps zmm15,zmm15,zmm25
  a32309:	62 41 0c 40 59 cb    	vmulps zmm25,zmm30,zmm11
  a3230f:	62 02 1d 48 bc c8    	vfnmadd231ps zmm25,zmm12,zmm24
  a32315:	62 12 2d 40 b8 ff    	vfmadd231ps zmm15,zmm26,zmm31
  a3231b:	62 01 14 48 59 d4    	vmulps zmm26,zmm13,zmm28
  a32321:	62 02 7d 48 bc d5    	vfnmadd231ps zmm26,zmm0,zmm29
  a32327:	62 01 34 40 58 fa    	vaddps zmm31,zmm25,zmm26
  a3232d:	62 51 1c 48 59 e3    	vmulps zmm12,zmm12,zmm11
  a32333:	62 11 2c 48 58 df    	vaddps zmm11,zmm10,zmm31
  a32339:	62 12 3d 40 b8 e6    	vfmadd231ps zmm12,zmm24,zmm30
  a3233f:	62 21 6c 48 59 c6    	vmulps zmm24,zmm2,zmm22
  a32345:	62 22 7d 40 bc c5    	vfnmadd231ps zmm24,zmm16,zmm21
  a3234b:	62 61 24 40 59 f6    	vmulps zmm30,zmm27,zmm6
  a32351:	62 22 0d 48 bc f7    	vfnmadd231ps zmm30,zmm14,zmm23
  a32357:	62 91 7c 48 59 c4    	vmulps zmm0,zmm0,zmm28
  a3235d:	62 01 3c 40 58 e6    	vaddps zmm28,zmm24,zmm30
  a32363:	62 d2 15 40 b8 c5    	vfmadd231ps zmm0,zmm29,zmm13
  a32369:	62 31 5c 48 59 e9    	vmulps zmm13,zmm4,zmm17
  a3236f:	62 72 35 48 bc ed    	vfnmadd231ps zmm13,zmm9,zmm5
  a32375:	62 21 64 48 59 ec    	vmulps zmm29,zmm3,zmm20
  a3237b:	62 22 3d 48 bc eb    	vfnmadd231ps zmm29,zmm8,zmm19
  a32381:	62 a1 7c 40 59 c6    	vmulps zmm16,zmm16,zmm22
  a32387:	62 81 14 48 58 f5    	vaddps zmm22,zmm13,zmm29
  a3238d:	62 e2 55 40 b8 c2    	vfmadd231ps zmm16,zmm21,zmm2
  a32393:	62 a1 1c 40 58 ee    	vaddps zmm21,zmm28,zmm22
  a32399:	62 f1 04 48 58 f9    	vaddps zmm7,zmm15,zmm1
  a3239f:	62 f1 0c 48 59 f6    	vmulps zmm6,zmm14,zmm6
  a323a5:	62 71 1c 48 58 f0    	vaddps zmm14,zmm12,zmm0
  a323ab:	62 92 45 40 b8 f3    	vfmadd231ps zmm6,zmm23,zmm27
  a323b1:	62 e1 0c 48 58 ff    	vaddps zmm23,zmm14,zmm7
  a323b7:	62 61 7c 40 58 de    	vaddps zmm27,zmm16,zmm6
  a323bd:	62 31 34 48 59 c9    	vmulps zmm9,zmm9,zmm17
  a323c3:	62 72 55 48 b8 cc    	vfmadd231ps zmm9,zmm5,zmm4
  a323c9:	62 b1 3c 48 59 d4    	vmulps zmm2,zmm8,zmm20
  a323cf:	62 f2 65 40 b8 d3    	vfmadd231ps zmm2,zmm19,zmm3
  a323d5:	62 f1 34 48 58 da    	vaddps zmm3,zmm9,zmm2
  a323db:	62 71 24 40 58 c3    	vaddps zmm8,zmm27,zmm3
  a323e1:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp-0x80]
  a323e8:	fe 
  a323e9:	62 b1 5c 48 5c e2    	vsubps zmm4,zmm4,zmm18
  a323ef:	62 f1 1c 48 5c c0    	vsubps zmm0,zmm12,zmm0
  a323f5:	62 71 5c 48 58 e0    	vaddps zmm12,zmm4,zmm0
  a323fb:	62 91 3c 40 5c ee    	vsubps zmm5,zmm24,zmm30
  a32401:	62 f1 7c 40 5c f6    	vsubps zmm6,zmm16,zmm6
  a32407:	62 e2 7d 48 18 05 8b 	vbroadcastss zmm16,DWORD PTR [rip+0xffffffffff642f8b]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a3240e:	2f 64 ff 
  a32411:	62 e1 54 48 58 ce    	vaddps zmm17,zmm5,zmm6
  a32417:	62 a1 74 40 59 c8    	vmulps zmm17,zmm17,zmm16
  a3241d:	62 f1 34 48 5c d2    	vsubps zmm2,zmm9,zmm2
  a32423:	62 11 14 48 5c cd    	vsubps zmm9,zmm13,zmm29
  a32429:	62 51 6c 48 5c e9    	vsubps zmm13,zmm2,zmm9
  a3242f:	62 31 14 48 59 e8    	vmulps zmm13,zmm13,zmm16
  a32435:	62 c1 74 40 58 d5    	vaddps zmm18,zmm17,zmm13
  a3243b:	62 a1 1c 48 58 da    	vaddps zmm19,zmm12,zmm18
  a32441:	62 d1 74 48 5c cf    	vsubps zmm1,zmm1,zmm15
  a32447:	62 11 2c 40 5c f9    	vsubps zmm15,zmm26,zmm25
  a3244d:	62 e1 04 48 58 e1    	vaddps zmm20,zmm15,zmm1
  a32453:	62 f1 4c 48 5c ed    	vsubps zmm5,zmm6,zmm5
  a32459:	62 21 54 48 59 c0    	vmulps zmm24,zmm5,zmm16
  a3245f:	62 f1 34 48 58 d2    	vaddps zmm2,zmm9,zmm2
  a32465:	62 b1 6c 48 59 d0    	vmulps zmm2,zmm2,zmm16
  a3246b:	62 71 3c 40 5c ca    	vsubps zmm9,zmm24,zmm2
  a32471:	62 d1 5c 40 58 e9    	vaddps zmm5,zmm20,zmm9
  a32477:	62 11 2c 48 5c d7    	vsubps zmm10,zmm10,zmm31
  a3247d:	62 f1 24 40 5c db    	vsubps zmm3,zmm27,zmm3
  a32483:	62 61 2c 48 58 cb    	vaddps zmm25,zmm10,zmm3
  a32489:	62 51 44 48 5c f6    	vsubps zmm14,zmm7,zmm14
  a3248f:	62 81 4c 40 5c c4    	vsubps zmm16,zmm22,zmm28
  a32495:	62 b1 0c 48 58 f0    	vaddps zmm6,zmm14,zmm16
  a3249b:	62 f1 5c 48 5c c0    	vsubps zmm0,zmm4,zmm0
  a324a1:	62 e1 3c 40 58 f2    	vaddps zmm22,zmm24,zmm2
  a324a7:	62 21 7c 48 58 d6    	vaddps zmm26,zmm0,zmm22
  a324ad:	62 51 74 48 5c ff    	vsubps zmm15,zmm1,zmm15
  a324b3:	62 a1 14 48 5c c9    	vsubps zmm17,zmm13,zmm17
  a324b9:	62 b1 04 48 58 f9    	vaddps zmm7,zmm15,zmm17
  a324bf:	62 21 24 48 5c c5    	vsubps zmm24,zmm11,zmm21
  a324c5:	62 d1 44 40 5c e0    	vsubps zmm4,zmm23,zmm8
  a324cb:	62 a1 1c 48 5c d2    	vsubps zmm18,zmm12,zmm18
  a324d1:	62 d1 5c 40 5c d1    	vsubps zmm2,zmm20,zmm9
  a324d7:	62 71 2c 48 5c eb    	vsubps zmm13,zmm10,zmm3
  a324dd:	62 b1 0c 48 5c c8    	vsubps zmm1,zmm14,zmm16
  a324e3:	62 31 7c 48 5c ce    	vsubps zmm9,zmm0,zmm22
  a324e9:	62 b1 04 48 5c c1    	vsubps zmm0,zmm15,zmm17
  a324ef:	62 51 44 40 58 c0    	vaddps zmm8,zmm23,zmm8
  a324f5:	62 31 24 48 58 fd    	vaddps zmm15,zmm11,zmm21
  a324fb:	62 f1 7c 48 28 1d fb 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff65e8fb]        # 90e00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e2b0>
  a32502:	e8 65 ff 
  a32505:	62 51 7c 48 28 d0    	vmovaps zmm10,zmm8
  a3250b:	62 52 65 48 7f d7    	vpermt2ps zmm10,zmm3,zmm15
  a32511:	62 51 3c 48 15 df    	vunpckhps zmm11,zmm8,zmm15
  a32517:	62 71 7c 48 11 1c 24 	vmovups ZMMWORD PTR [rsp],zmm11
  a3251e:	62 51 3c 48 14 df    	vunpcklps zmm11,zmm8,zmm15
  a32524:	62 71 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm11
  a3252b:	ff 
  a3252c:	c5 7c 28 35 0c e9 65 	vmovaps ymm14,YMMWORD PTR [rip+0xffffffffff65e90c]        # 90e40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e2f0>
  a32533:	ff 
  a32534:	62 52 0d 48 7f c7    	vpermt2ps zmm8,zmm14,zmm15
  a3253a:	62 71 7c 48 28 fd    	vmovaps zmm15,zmm5
  a32540:	62 32 65 48 7f fb    	vpermt2ps zmm15,zmm3,zmm19
  a32546:	62 a1 54 48 15 c3    	vunpckhps zmm16,zmm5,zmm19
  a3254c:	62 a1 54 48 14 cb    	vunpcklps zmm17,zmm5,zmm19
  a32552:	62 b2 0d 48 7f eb    	vpermt2ps zmm5,zmm14,zmm19
  a32558:	62 e1 7c 48 28 de    	vmovaps zmm19,zmm6
  a3255e:	62 82 65 48 7f d9    	vpermt2ps zmm19,zmm3,zmm25
  a32564:	62 81 4c 48 15 e1    	vunpckhps zmm20,zmm6,zmm25
  a3256a:	62 81 4c 48 14 e9    	vunpcklps zmm21,zmm6,zmm25
  a32570:	62 92 0d 48 7f f1    	vpermt2ps zmm6,zmm14,zmm25
  a32576:	62 e1 7c 48 28 f7    	vmovaps zmm22,zmm7
  a3257c:	62 82 65 48 7f f2    	vpermt2ps zmm22,zmm3,zmm26
  a32582:	62 81 44 48 15 fa    	vunpckhps zmm23,zmm7,zmm26
  a32588:	62 01 44 48 14 ca    	vunpcklps zmm25,zmm7,zmm26
  a3258e:	62 92 0d 48 7f fa    	vpermt2ps zmm7,zmm14,zmm26
  a32594:	62 61 7c 48 28 d4    	vmovaps zmm26,zmm4
  a3259a:	62 02 65 48 7f d0    	vpermt2ps zmm26,zmm3,zmm24
  a325a0:	62 01 5c 48 15 d8    	vunpckhps zmm27,zmm4,zmm24
  a325a6:	62 01 5c 48 14 e0    	vunpcklps zmm28,zmm4,zmm24
  a325ac:	62 92 0d 48 7f e0    	vpermt2ps zmm4,zmm14,zmm24
  a325b2:	62 61 7c 48 28 c2    	vmovaps zmm24,zmm2
  a325b8:	62 22 65 48 7f c2    	vpermt2ps zmm24,zmm3,zmm18
  a325be:	62 21 6c 48 15 ea    	vunpckhps zmm29,zmm2,zmm18
  a325c4:	62 21 6c 48 14 f2    	vunpcklps zmm30,zmm2,zmm18
  a325ca:	62 b2 0d 48 7f d2    	vpermt2ps zmm2,zmm14,zmm18
  a325d0:	62 e1 7c 48 28 d1    	vmovaps zmm18,zmm1
  a325d6:	62 c2 65 48 7f d5    	vpermt2ps zmm18,zmm3,zmm13
  a325dc:	62 41 74 48 15 fd    	vunpckhps zmm31,zmm1,zmm13
  a325e2:	62 51 74 48 14 e5    	vunpcklps zmm12,zmm1,zmm13
  a325e8:	62 d2 0d 48 7f cd    	vpermt2ps zmm1,zmm14,zmm13
  a325ee:	62 d2 7d 48 77 d9    	vpermi2ps zmm3,zmm0,zmm9
  a325f4:	62 51 7c 48 15 e9    	vunpckhps zmm13,zmm0,zmm9
  a325fa:	62 51 7c 48 14 d9    	vunpcklps zmm11,zmm0,zmm9
  a32600:	62 d2 0d 48 7f c1    	vpermt2ps zmm0,zmm14,zmm9
  a32606:	62 71 7c 48 11 16    	vmovups ZMMWORD PTR [rsi],zmm10
  a3260c:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp-0x40]
  a32613:	ff 
  a32614:	62 73 7d 48 19 4e 06 	vextractf32x4 XMMWORD PTR [rsi+0x60],zmm9,0x3
  a3261b:	03 
  a3261c:	62 71 7c 48 10 0c 24 	vmovups zmm9,ZMMWORD PTR [rsp]
  a32623:	62 53 7d 48 19 c9 03 	vextractf32x4 xmm9,zmm9,0x3
  a3262a:	c5 78 13 4e 70       	vmovlps QWORD PTR [rsi+0x70],xmm9
  a3262f:	c5 7c 11 46 40       	vmovups YMMWORD PTR [rsi+0x40],ymm8
  a32634:	62 71 7c 48 11 be 78 	vmovups ZMMWORD PTR [rsi+0x78],zmm15
  a3263b:	00 00 00 
  a3263e:	62 e3 7d 48 19 8e d8 	vextractf32x4 XMMWORD PTR [rsi+0xd8],zmm17,0x3
  a32645:	00 00 00 03 
  a32649:	62 c3 7d 48 19 c0 03 	vextractf32x4 xmm8,zmm16,0x3
  a32650:	c5 78 13 86 e8 00 00 	vmovlps QWORD PTR [rsi+0xe8],xmm8
  a32657:	00 
  a32658:	c5 fc 11 ae b8 00 00 	vmovups YMMWORD PTR [rsi+0xb8],ymm5
  a3265f:	00 
  a32660:	62 e1 7c 48 11 9e f0 	vmovups ZMMWORD PTR [rsi+0xf0],zmm19
  a32667:	00 00 00 
  a3266a:	62 e3 7d 48 19 6e 15 	vextractf32x4 XMMWORD PTR [rsi+0x150],zmm21,0x3
  a32671:	03 
  a32672:	62 e3 7d 48 19 e5 03 	vextractf32x4 xmm5,zmm20,0x3
  a32679:	c5 f8 13 ae 60 01 00 	vmovlps QWORD PTR [rsi+0x160],xmm5
  a32680:	00 
  a32681:	c5 fc 11 b6 30 01 00 	vmovups YMMWORD PTR [rsi+0x130],ymm6
  a32688:	00 
  a32689:	62 e1 7c 48 11 b6 68 	vmovups ZMMWORD PTR [rsi+0x168],zmm22
  a32690:	01 00 00 
  a32693:	62 63 7d 48 19 8e c8 	vextractf32x4 XMMWORD PTR [rsi+0x1c8],zmm25,0x3
  a3269a:	01 00 00 03 
  a3269e:	62 e3 7d 48 19 fd 03 	vextractf32x4 xmm5,zmm23,0x3
  a326a5:	c5 f8 13 ae d8 01 00 	vmovlps QWORD PTR [rsi+0x1d8],xmm5
  a326ac:	00 
  a326ad:	c5 fc 11 be a8 01 00 	vmovups YMMWORD PTR [rsi+0x1a8],ymm7
  a326b4:	00 
  a326b5:	62 61 7c 48 11 96 e0 	vmovups ZMMWORD PTR [rsi+0x1e0],zmm26
  a326bc:	01 00 00 
  a326bf:	62 63 7d 48 19 66 24 	vextractf32x4 XMMWORD PTR [rsi+0x240],zmm28,0x3
  a326c6:	03 
  a326c7:	62 63 7d 48 19 dd 03 	vextractf32x4 xmm5,zmm27,0x3
  a326ce:	c5 f8 13 ae 50 02 00 	vmovlps QWORD PTR [rsi+0x250],xmm5
  a326d5:	00 
  a326d6:	c5 fc 11 a6 20 02 00 	vmovups YMMWORD PTR [rsi+0x220],ymm4
  a326dd:	00 
  a326de:	62 61 7c 48 11 86 58 	vmovups ZMMWORD PTR [rsi+0x258],zmm24
  a326e5:	02 00 00 
  a326e8:	62 63 7d 48 19 b6 b8 	vextractf32x4 XMMWORD PTR [rsi+0x2b8],zmm30,0x3
  a326ef:	02 00 00 03 
  a326f3:	62 63 7d 48 19 ec 03 	vextractf32x4 xmm4,zmm29,0x3
  a326fa:	c5 f8 13 a6 c8 02 00 	vmovlps QWORD PTR [rsi+0x2c8],xmm4
  a32701:	00 
  a32702:	c5 fc 11 96 98 02 00 	vmovups YMMWORD PTR [rsi+0x298],ymm2
  a32709:	00 
  a3270a:	62 e1 7c 48 11 96 d0 	vmovups ZMMWORD PTR [rsi+0x2d0],zmm18
  a32711:	02 00 00 
  a32714:	62 73 7d 48 19 66 33 	vextractf32x4 XMMWORD PTR [rsi+0x330],zmm12,0x3
  a3271b:	03 
  a3271c:	62 63 7d 48 19 fa 03 	vextractf32x4 xmm2,zmm31,0x3
  a32723:	c5 f8 13 96 40 03 00 	vmovlps QWORD PTR [rsi+0x340],xmm2
  a3272a:	00 
  a3272b:	c5 fc 11 8e 10 03 00 	vmovups YMMWORD PTR [rsi+0x310],ymm1
  a32732:	00 
  a32733:	62 f1 7c 48 11 9e 48 	vmovups ZMMWORD PTR [rsi+0x348],zmm3
  a3273a:	03 00 00 
  a3273d:	62 73 7d 48 19 9e a8 	vextractf32x4 XMMWORD PTR [rsi+0x3a8],zmm11,0x3
  a32744:	03 00 00 03 
  a32748:	62 73 7d 48 19 e9 03 	vextractf32x4 xmm1,zmm13,0x3
  a3274f:	c5 f8 13 8e b8 03 00 	vmovlps QWORD PTR [rsi+0x3b8],xmm1
  a32756:	00 
  a32757:	c5 fc 11 86 88 03 00 	vmovups YMMWORD PTR [rsi+0x388],ymm0
  a3275e:	00 
  a3275f:	48 81 c4 c8 04 00 00 	add    rsp,0x4c8
  a32766:	c5 f8 77             	vzeroupper
  a32769:	c3                   	ret
