
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

000000000089a900 <<fastfft::isa::x86::F64x4 as fastfft::engine::small::SmallVector>::rectangle>:
  89a900:	48 c1 e2 06          	shl    rdx,0x6
  89a904:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  89a908:	31 d2                	xor    edx,edx
  89a90a:	c4 e2 7d 19 05 85 a1 	vbroadcastsd ymm0,QWORD PTR [rip+0xffffffffff7da185]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  89a911:	7d ff 
  89a913:	c4 e2 7d 19 0d 04 a3 	vbroadcastsd ymm1,QWORD PTR [rip+0xffffffffff7da304]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  89a91a:	7d ff 
  89a91c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  89a920:	c5 fd 10 14 17       	vmovupd ymm2,YMMWORD PTR [rdi+rdx*1]
  89a925:	c5 fd 10 5c 17 20    	vmovupd ymm3,YMMWORD PTR [rdi+rdx*1+0x20]
  89a92b:	c5 fd 10 64 17 40    	vmovupd ymm4,YMMWORD PTR [rdi+rdx*1+0x40]
  89a931:	c5 fd 10 6c 17 60    	vmovupd ymm5,YMMWORD PTR [rdi+rdx*1+0x60]
  89a937:	c4 e3 6d 06 f3 20    	vperm2f128 ymm6,ymm2,ymm3,0x20
  89a93d:	c4 e3 6d 06 d3 31    	vperm2f128 ymm2,ymm2,ymm3,0x31
  89a943:	c5 cd 14 da          	vunpcklpd ymm3,ymm6,ymm2
  89a947:	c5 cd 15 d2          	vunpckhpd ymm2,ymm6,ymm2
  89a94b:	c4 e3 5d 06 f5 20    	vperm2f128 ymm6,ymm4,ymm5,0x20
  89a951:	c4 e3 5d 06 e5 31    	vperm2f128 ymm4,ymm4,ymm5,0x31
  89a957:	c5 cd 14 ec          	vunpcklpd ymm5,ymm6,ymm4
  89a95b:	c5 cd 15 e4          	vunpckhpd ymm4,ymm6,ymm4
  89a95f:	c5 fd 10 b4 17 80 00 	vmovupd ymm6,YMMWORD PTR [rdi+rdx*1+0x80]
  89a966:	00 00 
  89a968:	c5 fd 10 bc 17 a0 00 	vmovupd ymm7,YMMWORD PTR [rdi+rdx*1+0xa0]
  89a96f:	00 00 
  89a971:	c4 63 4d 06 c7 20    	vperm2f128 ymm8,ymm6,ymm7,0x20
  89a977:	c4 e3 4d 06 f7 31    	vperm2f128 ymm6,ymm6,ymm7,0x31
  89a97d:	c5 bd 14 fe          	vunpcklpd ymm7,ymm8,ymm6
  89a981:	c5 bd 15 f6          	vunpckhpd ymm6,ymm8,ymm6
  89a985:	c5 55 58 c7          	vaddpd ymm8,ymm5,ymm7
  89a989:	c5 3d 58 cb          	vaddpd ymm9,ymm8,ymm3
  89a98d:	c5 5d 58 d6          	vaddpd ymm10,ymm4,ymm6
  89a991:	c5 2d 58 da          	vaddpd ymm11,ymm10,ymm2
  89a995:	c4 62 fd ac c3       	vfnmadd213pd ymm8,ymm0,ymm3
  89a99a:	c5 dd 5c de          	vsubpd ymm3,ymm4,ymm6
  89a99e:	c5 e5 59 d9          	vmulpd ymm3,ymm3,ymm1
  89a9a2:	c5 bd 58 e3          	vaddpd ymm4,ymm8,ymm3
  89a9a6:	c4 62 fd ac d2       	vfnmadd213pd ymm10,ymm0,ymm2
  89a9ab:	c5 d5 5c d7          	vsubpd ymm2,ymm5,ymm7
  89a9af:	c5 ed 59 d1          	vmulpd ymm2,ymm2,ymm1
  89a9b3:	c5 ad 5c fa          	vsubpd ymm7,ymm10,ymm2
  89a9b7:	c5 bd 5c db          	vsubpd ymm3,ymm8,ymm3
  89a9bb:	c5 2d 58 c2          	vaddpd ymm8,ymm10,ymm2
  89a9bf:	c4 e3 35 18 eb 01    	vinsertf128 ymm5,ymm9,xmm3,0x1
  89a9c5:	c4 e3 35 06 db 31    	vperm2f128 ymm3,ymm9,ymm3,0x31
  89a9cb:	c5 f9 28 f4          	vmovapd xmm6,xmm4
  89a9cf:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  89a9d5:	c5 d5 14 d6          	vunpcklpd ymm2,ymm5,ymm6
  89a9d9:	c5 d5 15 ee          	vunpckhpd ymm5,ymm5,ymm6
  89a9dd:	c5 e5 14 f4          	vunpcklpd ymm6,ymm3,ymm4
  89a9e1:	c5 e5 15 dc          	vunpckhpd ymm3,ymm3,ymm4
  89a9e5:	c4 43 25 18 c8 01    	vinsertf128 ymm9,ymm11,xmm8,0x1
  89a9eb:	c4 43 25 06 c0 31    	vperm2f128 ymm8,ymm11,ymm8,0x31
  89a9f1:	c5 79 28 d7          	vmovapd xmm10,xmm7
  89a9f5:	c4 c3 7d 19 fb 01    	vextractf128 xmm11,ymm7,0x1
  89a9fb:	c4 c1 35 14 e2       	vunpcklpd ymm4,ymm9,ymm10
  89aa00:	c4 41 35 15 ca       	vunpckhpd ymm9,ymm9,ymm10
  89aa05:	c4 c1 3d 15 fb       	vunpckhpd ymm7,ymm8,ymm11
  89aa0a:	c4 41 3d 14 c3       	vunpcklpd ymm8,ymm8,ymm11
  89aa0f:	c5 7d 10 91 80 00 00 	vmovupd ymm10,YMMWORD PTR [rcx+0x80]
  89aa16:	00 
  89aa17:	c5 7d 10 99 a0 00 00 	vmovupd ymm11,YMMWORD PTR [rcx+0xa0]
  89aa1e:	00 
  89aa1f:	c5 2d 59 e6          	vmulpd ymm12,ymm10,ymm6
  89aa23:	c4 42 bd bc e3       	vfnmadd231pd ymm12,ymm8,ymm11
  89aa28:	c4 41 3d 59 c2       	vmulpd ymm8,ymm8,ymm10
  89aa2d:	c5 7d 10 51 40       	vmovupd ymm10,YMMWORD PTR [rcx+0x40]
  89aa32:	c4 42 cd b8 c3       	vfmadd231pd ymm8,ymm6,ymm11
  89aa37:	c5 fd 10 71 60       	vmovupd ymm6,YMMWORD PTR [rcx+0x60]
  89aa3c:	c5 2d 59 dd          	vmulpd ymm11,ymm10,ymm5
  89aa40:	c4 62 b5 bc de       	vfnmadd231pd ymm11,ymm9,ymm6
  89aa45:	c4 41 35 59 ca       	vmulpd ymm9,ymm9,ymm10
  89aa4a:	c5 7d 10 91 c0 00 00 	vmovupd ymm10,YMMWORD PTR [rcx+0xc0]
  89aa51:	00 
  89aa52:	c4 62 d5 b8 ce       	vfmadd231pd ymm9,ymm5,ymm6
  89aa57:	c5 fd 10 a9 e0 00 00 	vmovupd ymm5,YMMWORD PTR [rcx+0xe0]
  89aa5e:	00 
  89aa5f:	c5 ad 59 f3          	vmulpd ymm6,ymm10,ymm3
  89aa63:	c4 e2 c5 bc f5       	vfnmadd231pd ymm6,ymm7,ymm5
  89aa68:	c5 ad 59 ff          	vmulpd ymm7,ymm10,ymm7
  89aa6c:	c4 e2 e5 b8 fd       	vfmadd231pd ymm7,ymm3,ymm5
  89aa71:	c5 9d 58 da          	vaddpd ymm3,ymm12,ymm2
  89aa75:	c5 a5 58 ee          	vaddpd ymm5,ymm11,ymm6
  89aa79:	c4 c1 6d 5c d4       	vsubpd ymm2,ymm2,ymm12
  89aa7e:	c5 35 58 d7          	vaddpd ymm10,ymm9,ymm7
  89aa82:	c5 b5 5c ff          	vsubpd ymm7,ymm9,ymm7
  89aa86:	c5 3d 58 cc          	vaddpd ymm9,ymm8,ymm4
  89aa8a:	c4 c1 5d 5c e0       	vsubpd ymm4,ymm4,ymm8
  89aa8f:	c5 6d 58 c7          	vaddpd ymm8,ymm2,ymm7
  89aa93:	c4 c1 4d 5c f3       	vsubpd ymm6,ymm6,ymm11
  89aa98:	c5 5d 58 de          	vaddpd ymm11,ymm4,ymm6
  89aa9c:	c5 ed 5c d7          	vsubpd ymm2,ymm2,ymm7
  89aaa0:	c5 e5 5c fd          	vsubpd ymm7,ymm3,ymm5
  89aaa4:	c5 dd 5c e6          	vsubpd ymm4,ymm4,ymm6
  89aaa8:	c4 c1 35 5c f2       	vsubpd ymm6,ymm9,ymm10
  89aaad:	c5 e5 58 dd          	vaddpd ymm3,ymm3,ymm5
  89aab1:	c4 c1 35 58 ea       	vaddpd ymm5,ymm9,ymm10
  89aab6:	c4 63 fd 01 cd 60    	vpermpd ymm9,ymm5,0x60
  89aabc:	c4 63 fd 01 d3 d4    	vpermpd ymm10,ymm3,0xd4
  89aac2:	c4 43 2d 0d c9 0a    	vblendpd ymm9,ymm10,ymm9,0xa
  89aac8:	c5 7d 11 0c 16       	vmovupd YMMWORD PTR [rsi+rdx*1],ymm9
  89aacd:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  89aad3:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  89aad9:	c5 e1 14 dd          	vunpcklpd xmm3,xmm3,xmm5
  89aadd:	c5 f9 11 5c 16 20    	vmovupd XMMWORD PTR [rsi+rdx*1+0x20],xmm3
  89aae3:	c4 c3 fd 01 db 60    	vpermpd ymm3,ymm11,0x60
  89aae9:	c4 c3 fd 01 e8 d4    	vpermpd ymm5,ymm8,0xd4
  89aaef:	c4 e3 55 0d db 0a    	vblendpd ymm3,ymm5,ymm3,0xa
  89aaf5:	c5 fd 11 5c 16 30    	vmovupd YMMWORD PTR [rsi+rdx*1+0x30],ymm3
  89aafb:	c4 63 7d 19 db 01    	vextractf128 xmm3,ymm11,0x1
  89ab01:	c4 63 7d 19 c5 01    	vextractf128 xmm5,ymm8,0x1
  89ab07:	c5 d1 14 db          	vunpcklpd xmm3,xmm5,xmm3
  89ab0b:	c5 f9 11 5c 16 50    	vmovupd XMMWORD PTR [rsi+rdx*1+0x50],xmm3
  89ab11:	c4 e3 fd 01 de 60    	vpermpd ymm3,ymm6,0x60
  89ab17:	c4 e3 fd 01 ef d4    	vpermpd ymm5,ymm7,0xd4
  89ab1d:	c4 e3 55 0d db 0a    	vblendpd ymm3,ymm5,ymm3,0xa
  89ab23:	c5 fd 11 5c 16 60    	vmovupd YMMWORD PTR [rsi+rdx*1+0x60],ymm3
  89ab29:	c4 e3 7d 19 f3 01    	vextractf128 xmm3,ymm6,0x1
  89ab2f:	c4 e3 7d 19 fd 01    	vextractf128 xmm5,ymm7,0x1
  89ab35:	c5 d1 14 db          	vunpcklpd xmm3,xmm5,xmm3
  89ab39:	c5 f9 11 9c 16 80 00 	vmovupd XMMWORD PTR [rsi+rdx*1+0x80],xmm3
  89ab40:	00 00 
  89ab42:	c4 e3 fd 01 dc 60    	vpermpd ymm3,ymm4,0x60
  89ab48:	c4 e3 fd 01 ea d4    	vpermpd ymm5,ymm2,0xd4
  89ab4e:	c4 e3 55 0d db 0a    	vblendpd ymm3,ymm5,ymm3,0xa
  89ab54:	c5 fd 11 9c 16 90 00 	vmovupd YMMWORD PTR [rsi+rdx*1+0x90],ymm3
  89ab5b:	00 00 
  89ab5d:	c4 e3 7d 19 e3 01    	vextractf128 xmm3,ymm4,0x1
  89ab63:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  89ab69:	c5 e9 14 d3          	vunpcklpd xmm2,xmm2,xmm3
  89ab6d:	c5 f9 11 94 16 b0 00 	vmovupd XMMWORD PTR [rsi+rdx*1+0xb0],xmm2
  89ab74:	00 00 
  89ab76:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  89ab7d:	48 39 d0             	cmp    rax,rdx
  89ab80:	0f 85 9a fd ff ff    	jne    89a920 <<fastfft::isa::x86::F64x4 as fastfft::engine::small::SmallVector>::rectangle+0x20>
  89ab86:	c5 f8 77             	vzeroupper
  89ab89:	c3                   	ret
