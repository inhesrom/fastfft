
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

000000000082a900 <<fastfft::isa::x86::F64x4 as fastfft::engine::small::SmallVector>::rectangle>:
  82a900:	48 c1 e2 05          	shl    rdx,0x5
  82a904:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  82a908:	31 d2                	xor    edx,edx
  82a90a:	c4 e2 7d 19 05 85 a1 	vbroadcastsd ymm0,QWORD PTR [rip+0xffffffffff84a185]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  82a911:	84 ff 
  82a913:	c4 e2 7d 19 0d 04 a3 	vbroadcastsd ymm1,QWORD PTR [rip+0xffffffffff84a304]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  82a91a:	84 ff 
  82a91c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  82a920:	c5 fd 10 14 17       	vmovupd ymm2,YMMWORD PTR [rdi+rdx*1]
  82a925:	c4 e3 6d 18 54 17 20 	vinsertf128 ymm2,ymm2,XMMWORD PTR [rdi+rdx*1+0x20],0x1
  82a92c:	01 
  82a92d:	c5 f9 10 5c 17 10    	vmovupd xmm3,XMMWORD PTR [rdi+rdx*1+0x10]
  82a933:	c5 ed 14 e3          	vunpcklpd ymm4,ymm2,ymm3
  82a937:	c5 fd 10 6c 17 30    	vmovupd ymm5,YMMWORD PTR [rdi+rdx*1+0x30]
  82a93d:	c4 e3 55 18 6c 17 50 	vinsertf128 ymm5,ymm5,XMMWORD PTR [rdi+rdx*1+0x50],0x1
  82a944:	01 
  82a945:	c5 ed 15 d3          	vunpckhpd ymm2,ymm2,ymm3
  82a949:	c5 f9 10 5c 17 40    	vmovupd xmm3,XMMWORD PTR [rdi+rdx*1+0x40]
  82a94f:	c5 d5 14 f3          	vunpcklpd ymm6,ymm5,ymm3
  82a953:	c5 d5 15 db          	vunpckhpd ymm3,ymm5,ymm3
  82a957:	c5 dd 58 ee          	vaddpd ymm5,ymm4,ymm6
  82a95b:	c5 ed 58 fb          	vaddpd ymm7,ymm2,ymm3
  82a95f:	c5 dd 5c e6          	vsubpd ymm4,ymm4,ymm6
  82a963:	c5 ed 5c db          	vsubpd ymm3,ymm2,ymm3
  82a967:	c5 f9 28 f5          	vmovapd xmm6,xmm5
  82a96b:	c4 e3 7d 19 ea 01    	vextractf128 xmm2,ymm5,0x1
  82a971:	c5 f9 28 ec          	vmovapd xmm5,xmm4
  82a975:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  82a97b:	c5 ed 14 e4          	vunpcklpd ymm4,ymm2,ymm4
  82a97f:	c5 cd 14 d5          	vunpcklpd ymm2,ymm6,ymm5
  82a983:	c5 cd 15 ed          	vunpckhpd ymm5,ymm6,ymm5
  82a987:	c5 f9 28 f7          	vmovapd xmm6,xmm7
  82a98b:	c4 e3 7d 19 ff 01    	vextractf128 xmm7,ymm7,0x1
  82a991:	c5 79 28 c3          	vmovapd xmm8,xmm3
  82a995:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  82a99b:	c5 c5 14 fb          	vunpcklpd ymm7,ymm7,ymm3
  82a99f:	c4 c1 4d 14 d8       	vunpcklpd ymm3,ymm6,ymm8
  82a9a4:	c4 c1 4d 15 f0       	vunpckhpd ymm6,ymm6,ymm8
  82a9a9:	c5 7d 10 41 40       	vmovupd ymm8,YMMWORD PTR [rcx+0x40]
  82a9ae:	c5 7d 10 49 60       	vmovupd ymm9,YMMWORD PTR [rcx+0x60]
  82a9b3:	c5 7d 10 91 80 00 00 	vmovupd ymm10,YMMWORD PTR [rcx+0x80]
  82a9ba:	00 
  82a9bb:	c5 7d 10 99 a0 00 00 	vmovupd ymm11,YMMWORD PTR [rcx+0xa0]
  82a9c2:	00 
  82a9c3:	c5 3d 59 e5          	vmulpd ymm12,ymm8,ymm5
  82a9c7:	c4 42 cd bc e1       	vfnmadd231pd ymm12,ymm6,ymm9
  82a9cc:	c5 2d 59 ec          	vmulpd ymm13,ymm10,ymm4
  82a9d0:	c4 42 c5 bc eb       	vfnmadd231pd ymm13,ymm7,ymm11
  82a9d5:	c4 41 1d 58 f5       	vaddpd ymm14,ymm12,ymm13
  82a9da:	c5 bd 59 f6          	vmulpd ymm6,ymm8,ymm6
  82a9de:	c4 c2 d5 b8 f1       	vfmadd231pd ymm6,ymm5,ymm9
  82a9e3:	c5 ad 59 ef          	vmulpd ymm5,ymm10,ymm7
  82a9e7:	c4 c2 dd b8 eb       	vfmadd231pd ymm5,ymm4,ymm11
  82a9ec:	c5 cd 58 e5          	vaddpd ymm4,ymm6,ymm5
  82a9f0:	c5 fd 28 f8          	vmovapd ymm7,ymm0
  82a9f4:	c4 e2 8d ac fa       	vfnmadd213pd ymm7,ymm14,ymm2
  82a9f9:	c5 cd 5c ed          	vsubpd ymm5,ymm6,ymm5
  82a9fd:	c5 d5 59 e9          	vmulpd ymm5,ymm5,ymm1
  82aa01:	c5 c5 58 f5          	vaddpd ymm6,ymm7,ymm5
  82aa05:	c5 7d 28 c0          	vmovapd ymm8,ymm0
  82aa09:	c4 62 dd ac c3       	vfnmadd213pd ymm8,ymm4,ymm3
  82aa0e:	c4 41 1d 5c cd       	vsubpd ymm9,ymm12,ymm13
  82aa13:	c5 35 59 c9          	vmulpd ymm9,ymm9,ymm1
  82aa17:	c4 41 3d 5c d1       	vsubpd ymm10,ymm8,ymm9
  82aa1c:	c5 c5 5c ed          	vsubpd ymm5,ymm7,ymm5
  82aa20:	c4 c1 3d 58 f9       	vaddpd ymm7,ymm8,ymm9
  82aa25:	c5 8d 58 d2          	vaddpd ymm2,ymm14,ymm2
  82aa29:	c5 e5 58 dc          	vaddpd ymm3,ymm3,ymm4
  82aa2d:	c4 e3 fd 01 db 60    	vpermpd ymm3,ymm3,0x60
  82aa33:	c4 e3 fd 01 d2 d4    	vpermpd ymm2,ymm2,0xd4
  82aa39:	c4 e3 6d 0d d3 0a    	vblendpd ymm2,ymm2,ymm3,0xa
  82aa3f:	c5 fd 11 14 16       	vmovupd YMMWORD PTR [rsi+rdx*1],ymm2
  82aa44:	c4 c3 fd 01 d2 60    	vpermpd ymm2,ymm10,0x60
  82aa4a:	c4 e3 fd 01 de d4    	vpermpd ymm3,ymm6,0xd4
  82aa50:	c4 e3 65 0d d2 0a    	vblendpd ymm2,ymm3,ymm2,0xa
  82aa56:	c5 fd 11 54 16 20    	vmovupd YMMWORD PTR [rsi+rdx*1+0x20],ymm2
  82aa5c:	c4 e3 fd 01 d7 60    	vpermpd ymm2,ymm7,0x60
  82aa62:	c4 e3 fd 01 dd d4    	vpermpd ymm3,ymm5,0xd4
  82aa68:	c4 e3 65 0d d2 0a    	vblendpd ymm2,ymm3,ymm2,0xa
  82aa6e:	c5 fd 11 54 16 40    	vmovupd YMMWORD PTR [rsi+rdx*1+0x40],ymm2
  82aa74:	48 83 c2 60          	add    rdx,0x60
  82aa78:	48 39 d0             	cmp    rax,rdx
  82aa7b:	0f 85 9f fe ff ff    	jne    82a920 <<fastfft::isa::x86::F64x4 as fastfft::engine::small::SmallVector>::rectangle+0x20>
  82aa81:	c5 f8 77             	vzeroupper
  82aa84:	c3                   	ret
