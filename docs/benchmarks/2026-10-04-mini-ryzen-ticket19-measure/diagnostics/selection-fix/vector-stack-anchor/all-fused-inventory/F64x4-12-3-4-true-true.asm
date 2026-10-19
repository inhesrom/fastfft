
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000008a2840 <<fastfft::isa::x86::F64x4 as fastfft::engine::small::SmallVector>::rectangle>:
  8a2840:	48 c1 e2 06          	shl    rdx,0x6
  8a2844:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  8a2848:	31 d2                	xor    edx,edx
  8a284a:	c4 e2 7d 19 05 45 22 	vbroadcastsd ymm0,QWORD PTR [rip+0xffffffffff7d2245]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  8a2851:	7d ff 
  8a2853:	c4 e2 7d 19 0d c4 23 	vbroadcastsd ymm1,QWORD PTR [rip+0xffffffffff7d23c4]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  8a285a:	7d ff 
  8a285c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  8a2860:	c5 fd 10 14 17       	vmovupd ymm2,YMMWORD PTR [rdi+rdx*1]
  8a2865:	c5 fd 10 5c 17 20    	vmovupd ymm3,YMMWORD PTR [rdi+rdx*1+0x20]
  8a286b:	c5 fd 10 64 17 40    	vmovupd ymm4,YMMWORD PTR [rdi+rdx*1+0x40]
  8a2871:	c5 fd 10 6c 17 60    	vmovupd ymm5,YMMWORD PTR [rdi+rdx*1+0x60]
  8a2877:	c4 e3 6d 06 f3 20    	vperm2f128 ymm6,ymm2,ymm3,0x20
  8a287d:	c4 e3 6d 06 d3 31    	vperm2f128 ymm2,ymm2,ymm3,0x31
  8a2883:	c5 cd 14 da          	vunpcklpd ymm3,ymm6,ymm2
  8a2887:	c5 cd 15 d2          	vunpckhpd ymm2,ymm6,ymm2
  8a288b:	c4 e3 5d 06 f5 20    	vperm2f128 ymm6,ymm4,ymm5,0x20
  8a2891:	c4 e3 5d 06 e5 31    	vperm2f128 ymm4,ymm4,ymm5,0x31
  8a2897:	c5 cd 14 ec          	vunpcklpd ymm5,ymm6,ymm4
  8a289b:	c5 cd 15 e4          	vunpckhpd ymm4,ymm6,ymm4
  8a289f:	c5 fd 10 b4 17 80 00 	vmovupd ymm6,YMMWORD PTR [rdi+rdx*1+0x80]
  8a28a6:	00 00 
  8a28a8:	c5 fd 10 bc 17 a0 00 	vmovupd ymm7,YMMWORD PTR [rdi+rdx*1+0xa0]
  8a28af:	00 00 
  8a28b1:	c4 63 4d 06 c7 20    	vperm2f128 ymm8,ymm6,ymm7,0x20
  8a28b7:	c4 e3 4d 06 f7 31    	vperm2f128 ymm6,ymm6,ymm7,0x31
  8a28bd:	c5 bd 14 fe          	vunpcklpd ymm7,ymm8,ymm6
  8a28c1:	c5 bd 15 f6          	vunpckhpd ymm6,ymm8,ymm6
  8a28c5:	c5 5d 58 c6          	vaddpd ymm8,ymm4,ymm6
  8a28c9:	c5 3d 58 ca          	vaddpd ymm9,ymm8,ymm2
  8a28cd:	c5 55 58 d7          	vaddpd ymm10,ymm5,ymm7
  8a28d1:	c5 2d 58 db          	vaddpd ymm11,ymm10,ymm3
  8a28d5:	c4 62 fd ac c2       	vfnmadd213pd ymm8,ymm0,ymm2
  8a28da:	c5 d5 5c d7          	vsubpd ymm2,ymm5,ymm7
  8a28de:	c5 ed 59 d1          	vmulpd ymm2,ymm2,ymm1
  8a28e2:	c5 bd 58 ea          	vaddpd ymm5,ymm8,ymm2
  8a28e6:	c4 62 fd ac d3       	vfnmadd213pd ymm10,ymm0,ymm3
  8a28eb:	c5 dd 5c de          	vsubpd ymm3,ymm4,ymm6
  8a28ef:	c5 e5 59 d9          	vmulpd ymm3,ymm3,ymm1
  8a28f3:	c5 ad 5c e3          	vsubpd ymm4,ymm10,ymm3
  8a28f7:	c5 bd 5c d2          	vsubpd ymm2,ymm8,ymm2
  8a28fb:	c5 ad 58 fb          	vaddpd ymm7,ymm10,ymm3
  8a28ff:	c4 e3 35 18 da 01    	vinsertf128 ymm3,ymm9,xmm2,0x1
  8a2905:	c4 63 35 06 c2 31    	vperm2f128 ymm8,ymm9,ymm2,0x31
  8a290b:	c5 f9 28 f5          	vmovapd xmm6,xmm5
  8a290f:	c4 c3 7d 19 e9 01    	vextractf128 xmm9,ymm5,0x1
  8a2915:	c5 e5 14 d6          	vunpcklpd ymm2,ymm3,ymm6
  8a2919:	c5 e5 15 ee          	vunpckhpd ymm5,ymm3,ymm6
  8a291d:	c4 c1 3d 14 f1       	vunpcklpd ymm6,ymm8,ymm9
  8a2922:	c4 c1 3d 15 d9       	vunpckhpd ymm3,ymm8,ymm9
  8a2927:	c4 63 25 18 c7 01    	vinsertf128 ymm8,ymm11,xmm7,0x1
  8a292d:	c4 63 25 06 cf 31    	vperm2f128 ymm9,ymm11,ymm7,0x31
  8a2933:	c5 f9 28 fc          	vmovapd xmm7,xmm4
  8a2937:	c4 c3 7d 19 e2 01    	vextractf128 xmm10,ymm4,0x1
  8a293d:	c5 bd 14 e7          	vunpcklpd ymm4,ymm8,ymm7
  8a2941:	c5 3d 15 c7          	vunpckhpd ymm8,ymm8,ymm7
  8a2945:	c4 c1 35 15 fa       	vunpckhpd ymm7,ymm9,ymm10
  8a294a:	c4 41 35 14 ca       	vunpcklpd ymm9,ymm9,ymm10
  8a294f:	c5 7d 10 91 80 00 00 	vmovupd ymm10,YMMWORD PTR [rcx+0x80]
  8a2956:	00 
  8a2957:	c5 7d 10 99 a0 00 00 	vmovupd ymm11,YMMWORD PTR [rcx+0xa0]
  8a295e:	00 
  8a295f:	c5 2d 59 e6          	vmulpd ymm12,ymm10,ymm6
  8a2963:	c4 42 b5 bc e3       	vfnmadd231pd ymm12,ymm9,ymm11
  8a2968:	c4 41 35 59 ca       	vmulpd ymm9,ymm9,ymm10
  8a296d:	c5 7d 10 51 40       	vmovupd ymm10,YMMWORD PTR [rcx+0x40]
  8a2972:	c4 42 cd b8 cb       	vfmadd231pd ymm9,ymm6,ymm11
  8a2977:	c5 fd 10 71 60       	vmovupd ymm6,YMMWORD PTR [rcx+0x60]
  8a297c:	c5 2d 59 dd          	vmulpd ymm11,ymm10,ymm5
  8a2980:	c4 62 bd bc de       	vfnmadd231pd ymm11,ymm8,ymm6
  8a2985:	c4 41 3d 59 c2       	vmulpd ymm8,ymm8,ymm10
  8a298a:	c5 7d 10 91 c0 00 00 	vmovupd ymm10,YMMWORD PTR [rcx+0xc0]
  8a2991:	00 
  8a2992:	c4 62 d5 b8 c6       	vfmadd231pd ymm8,ymm5,ymm6
  8a2997:	c5 fd 10 a9 e0 00 00 	vmovupd ymm5,YMMWORD PTR [rcx+0xe0]
  8a299e:	00 
  8a299f:	c5 ad 59 f3          	vmulpd ymm6,ymm10,ymm3
  8a29a3:	c4 e2 c5 bc f5       	vfnmadd231pd ymm6,ymm7,ymm5
  8a29a8:	c5 ad 59 ff          	vmulpd ymm7,ymm10,ymm7
  8a29ac:	c4 e2 e5 b8 fd       	vfmadd231pd ymm7,ymm3,ymm5
  8a29b1:	c5 9d 58 ea          	vaddpd ymm5,ymm12,ymm2
  8a29b5:	c5 25 58 d6          	vaddpd ymm10,ymm11,ymm6
  8a29b9:	c4 c1 6d 5c d4       	vsubpd ymm2,ymm2,ymm12
  8a29be:	c5 3d 58 e7          	vaddpd ymm12,ymm8,ymm7
  8a29c2:	c5 bd 5c df          	vsubpd ymm3,ymm8,ymm7
  8a29c6:	c5 b5 58 fc          	vaddpd ymm7,ymm9,ymm4
  8a29ca:	c4 c1 5d 5c e1       	vsubpd ymm4,ymm4,ymm9
  8a29cf:	c5 6d 58 c3          	vaddpd ymm8,ymm2,ymm3
  8a29d3:	c4 c1 4d 5c f3       	vsubpd ymm6,ymm6,ymm11
  8a29d8:	c5 5d 58 ce          	vaddpd ymm9,ymm4,ymm6
  8a29dc:	c5 ed 5c d3          	vsubpd ymm2,ymm2,ymm3
  8a29e0:	c4 41 55 5c da       	vsubpd ymm11,ymm5,ymm10
  8a29e5:	c5 dd 5c de          	vsubpd ymm3,ymm4,ymm6
  8a29e9:	c4 c1 45 5c e4       	vsubpd ymm4,ymm7,ymm12
  8a29ee:	c5 9d 58 f7          	vaddpd ymm6,ymm12,ymm7
  8a29f2:	c5 ad 58 ed          	vaddpd ymm5,ymm10,ymm5
  8a29f6:	c4 e3 fd 01 fd 60    	vpermpd ymm7,ymm5,0x60
  8a29fc:	c4 63 fd 01 d6 d4    	vpermpd ymm10,ymm6,0xd4
  8a2a02:	c4 e3 2d 0d ff 0a    	vblendpd ymm7,ymm10,ymm7,0xa
  8a2a08:	c5 fd 11 3c 16       	vmovupd YMMWORD PTR [rsi+rdx*1],ymm7
  8a2a0d:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  8a2a13:	c4 e3 7d 19 f6 01    	vextractf128 xmm6,ymm6,0x1
  8a2a19:	c5 c9 14 ed          	vunpcklpd xmm5,xmm6,xmm5
  8a2a1d:	c5 f9 11 6c 16 20    	vmovupd XMMWORD PTR [rsi+rdx*1+0x20],xmm5
  8a2a23:	c4 c3 fd 01 e8 60    	vpermpd ymm5,ymm8,0x60
  8a2a29:	c4 c3 fd 01 f1 d4    	vpermpd ymm6,ymm9,0xd4
  8a2a2f:	c4 e3 4d 0d ed 0a    	vblendpd ymm5,ymm6,ymm5,0xa
  8a2a35:	c5 fd 11 6c 16 30    	vmovupd YMMWORD PTR [rsi+rdx*1+0x30],ymm5
  8a2a3b:	c4 63 7d 19 c5 01    	vextractf128 xmm5,ymm8,0x1
  8a2a41:	c4 63 7d 19 ce 01    	vextractf128 xmm6,ymm9,0x1
  8a2a47:	c5 c9 14 ed          	vunpcklpd xmm5,xmm6,xmm5
  8a2a4b:	c5 f9 11 6c 16 50    	vmovupd XMMWORD PTR [rsi+rdx*1+0x50],xmm5
  8a2a51:	c4 c3 fd 01 eb 60    	vpermpd ymm5,ymm11,0x60
  8a2a57:	c4 e3 fd 01 f4 d4    	vpermpd ymm6,ymm4,0xd4
  8a2a5d:	c4 e3 4d 0d ed 0a    	vblendpd ymm5,ymm6,ymm5,0xa
  8a2a63:	c5 fd 11 6c 16 60    	vmovupd YMMWORD PTR [rsi+rdx*1+0x60],ymm5
  8a2a69:	c4 63 7d 19 dd 01    	vextractf128 xmm5,ymm11,0x1
  8a2a6f:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  8a2a75:	c5 d9 14 e5          	vunpcklpd xmm4,xmm4,xmm5
  8a2a79:	c5 f9 11 a4 16 80 00 	vmovupd XMMWORD PTR [rsi+rdx*1+0x80],xmm4
  8a2a80:	00 00 
  8a2a82:	c4 e3 fd 01 e2 60    	vpermpd ymm4,ymm2,0x60
  8a2a88:	c4 e3 fd 01 eb d4    	vpermpd ymm5,ymm3,0xd4
  8a2a8e:	c4 e3 55 0d e4 0a    	vblendpd ymm4,ymm5,ymm4,0xa
  8a2a94:	c5 fd 11 a4 16 90 00 	vmovupd YMMWORD PTR [rsi+rdx*1+0x90],ymm4
  8a2a9b:	00 00 
  8a2a9d:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  8a2aa3:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  8a2aa9:	c5 e1 14 d2          	vunpcklpd xmm2,xmm3,xmm2
  8a2aad:	c5 f9 11 94 16 b0 00 	vmovupd XMMWORD PTR [rsi+rdx*1+0xb0],xmm2
  8a2ab4:	00 00 
  8a2ab6:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  8a2abd:	48 39 d0             	cmp    rax,rdx
  8a2ac0:	0f 85 9a fd ff ff    	jne    8a2860 <<fastfft::isa::x86::F64x4 as fastfft::engine::small::SmallVector>::rectangle+0x20>
  8a2ac6:	c5 f8 77             	vzeroupper
  8a2ac9:	c3                   	ret
