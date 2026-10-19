
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000891900 <<fastfft::isa::x86::F64x4 as fastfft::engine::small::SmallVector>::rectangle>:
  891900:	48 c1 e2 06          	shl    rdx,0x6
  891904:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  891908:	31 d2                	xor    edx,edx
  89190a:	c4 e2 7d 19 05 85 31 	vbroadcastsd ymm0,QWORD PTR [rip+0xffffffffff7e3185]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  891911:	7e ff 
  891913:	c4 e2 7d 19 0d 04 33 	vbroadcastsd ymm1,QWORD PTR [rip+0xffffffffff7e3304]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  89191a:	7e ff 
  89191c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  891920:	c5 fd 10 14 17       	vmovupd ymm2,YMMWORD PTR [rdi+rdx*1]
  891925:	c4 e3 6d 18 54 17 20 	vinsertf128 ymm2,ymm2,XMMWORD PTR [rdi+rdx*1+0x20],0x1
  89192c:	01 
  89192d:	c5 f9 10 5c 17 10    	vmovupd xmm3,XMMWORD PTR [rdi+rdx*1+0x10]
  891933:	c5 ed 14 e3          	vunpcklpd ymm4,ymm2,ymm3
  891937:	c5 fd 10 6c 17 30    	vmovupd ymm5,YMMWORD PTR [rdi+rdx*1+0x30]
  89193d:	c4 e3 55 18 6c 17 50 	vinsertf128 ymm5,ymm5,XMMWORD PTR [rdi+rdx*1+0x50],0x1
  891944:	01 
  891945:	c5 ed 15 d3          	vunpckhpd ymm2,ymm2,ymm3
  891949:	c5 f9 10 5c 17 40    	vmovupd xmm3,XMMWORD PTR [rdi+rdx*1+0x40]
  89194f:	c5 d5 14 f3          	vunpcklpd ymm6,ymm5,ymm3
  891953:	c5 d5 15 db          	vunpckhpd ymm3,ymm5,ymm3
  891957:	c5 fd 10 6c 17 60    	vmovupd ymm5,YMMWORD PTR [rdi+rdx*1+0x60]
  89195d:	c4 e3 55 18 ac 17 80 	vinsertf128 ymm5,ymm5,XMMWORD PTR [rdi+rdx*1+0x80],0x1
  891964:	00 00 00 01 
  891968:	c5 f9 10 7c 17 70    	vmovupd xmm7,XMMWORD PTR [rdi+rdx*1+0x70]
  89196e:	c5 55 14 c7          	vunpcklpd ymm8,ymm5,ymm7
  891972:	c5 7d 10 8c 17 90 00 	vmovupd ymm9,YMMWORD PTR [rdi+rdx*1+0x90]
  891979:	00 00 
  89197b:	c4 63 35 18 8c 17 b0 	vinsertf128 ymm9,ymm9,XMMWORD PTR [rdi+rdx*1+0xb0],0x1
  891982:	00 00 00 01 
  891986:	c5 d5 15 ef          	vunpckhpd ymm5,ymm5,ymm7
  89198a:	c5 f9 10 bc 17 a0 00 	vmovupd xmm7,XMMWORD PTR [rdi+rdx*1+0xa0]
  891991:	00 00 
  891993:	c5 35 14 d7          	vunpcklpd ymm10,ymm9,ymm7
  891997:	c5 b5 15 ff          	vunpckhpd ymm7,ymm9,ymm7
  89199b:	c5 6d 58 cd          	vaddpd ymm9,ymm2,ymm5
  89199f:	c5 65 58 df          	vaddpd ymm11,ymm3,ymm7
  8919a3:	c4 41 35 58 e3       	vaddpd ymm12,ymm9,ymm11
  8919a8:	c5 3d 58 ec          	vaddpd ymm13,ymm8,ymm4
  8919ac:	c5 2d 58 f6          	vaddpd ymm14,ymm10,ymm6
  8919b0:	c4 41 15 58 fe       	vaddpd ymm15,ymm13,ymm14
  8919b5:	c5 ed 5c d5          	vsubpd ymm2,ymm2,ymm5
  8919b9:	c4 c1 4d 5c ea       	vsubpd ymm5,ymm6,ymm10
  8919be:	c5 ed 58 f5          	vaddpd ymm6,ymm2,ymm5
  8919c2:	c4 c1 5d 5c e0       	vsubpd ymm4,ymm4,ymm8
  8919c7:	c5 c5 5c db          	vsubpd ymm3,ymm7,ymm3
  8919cb:	c5 e5 58 fc          	vaddpd ymm7,ymm3,ymm4
  8919cf:	c4 41 35 5c c3       	vsubpd ymm8,ymm9,ymm11
  8919d4:	c4 41 15 5c ce       	vsubpd ymm9,ymm13,ymm14
  8919d9:	c5 ed 5c d5          	vsubpd ymm2,ymm2,ymm5
  8919dd:	c5 dd 5c db          	vsubpd ymm3,ymm4,ymm3
  8919e1:	c4 c3 1d 18 e0 01    	vinsertf128 ymm4,ymm12,xmm8,0x1
  8919e7:	c4 c3 1d 06 e8 31    	vperm2f128 ymm5,ymm12,ymm8,0x31
  8919ed:	c4 63 4d 18 c2 01    	vinsertf128 ymm8,ymm6,xmm2,0x1
  8919f3:	c4 e3 4d 06 d2 31    	vperm2f128 ymm2,ymm6,ymm2,0x31
  8919f9:	c5 d5 14 ea          	vunpcklpd ymm5,ymm5,ymm2
  8919fd:	c4 c1 5d 14 d0       	vunpcklpd ymm2,ymm4,ymm8
  891a02:	c4 c1 5d 15 e0       	vunpckhpd ymm4,ymm4,ymm8
  891a07:	c4 c3 05 18 f1 01    	vinsertf128 ymm6,ymm15,xmm9,0x1
  891a0d:	c4 43 05 06 c1 31    	vperm2f128 ymm8,ymm15,ymm9,0x31
  891a13:	c4 63 45 18 cb 01    	vinsertf128 ymm9,ymm7,xmm3,0x1
  891a19:	c4 e3 45 06 db 31    	vperm2f128 ymm3,ymm7,ymm3,0x31
  891a1f:	c5 bd 14 db          	vunpcklpd ymm3,ymm8,ymm3
  891a23:	c4 c1 4d 14 f9       	vunpcklpd ymm7,ymm6,ymm9
  891a28:	c4 c1 4d 15 f1       	vunpckhpd ymm6,ymm6,ymm9
  891a2d:	c5 7d 10 41 40       	vmovupd ymm8,YMMWORD PTR [rcx+0x40]
  891a32:	c5 7d 10 49 60       	vmovupd ymm9,YMMWORD PTR [rcx+0x60]
  891a37:	c5 7d 10 91 80 00 00 	vmovupd ymm10,YMMWORD PTR [rcx+0x80]
  891a3e:	00 
  891a3f:	c5 7d 10 99 a0 00 00 	vmovupd ymm11,YMMWORD PTR [rcx+0xa0]
  891a46:	00 
  891a47:	c5 3d 59 e6          	vmulpd ymm12,ymm8,ymm6
  891a4b:	c4 42 dd b8 e1       	vfmadd231pd ymm12,ymm4,ymm9
  891a50:	c5 2d 59 eb          	vmulpd ymm13,ymm10,ymm3
  891a54:	c4 42 d5 b8 eb       	vfmadd231pd ymm13,ymm5,ymm11
  891a59:	c4 41 1d 58 f5       	vaddpd ymm14,ymm12,ymm13
  891a5e:	c5 7d 28 f8          	vmovapd ymm15,ymm0
  891a62:	c4 62 8d ac ff       	vfnmadd213pd ymm15,ymm14,ymm7
  891a67:	c5 bd 59 e4          	vmulpd ymm4,ymm8,ymm4
  891a6b:	c4 c2 cd bc e1       	vfnmadd231pd ymm4,ymm6,ymm9
  891a70:	c5 ad 59 ed          	vmulpd ymm5,ymm10,ymm5
  891a74:	c4 c2 e5 bc eb       	vfnmadd231pd ymm5,ymm3,ymm11
  891a79:	c5 dd 5c dd          	vsubpd ymm3,ymm4,ymm5
  891a7d:	c5 e5 59 d9          	vmulpd ymm3,ymm3,ymm1
  891a81:	c5 85 58 f3          	vaddpd ymm6,ymm15,ymm3
  891a85:	c5 dd 58 e5          	vaddpd ymm4,ymm4,ymm5
  891a89:	c5 fd 28 e8          	vmovapd ymm5,ymm0
  891a8d:	c4 e2 dd ac ea       	vfnmadd213pd ymm5,ymm4,ymm2
  891a92:	c4 41 1d 5c c5       	vsubpd ymm8,ymm12,ymm13
  891a97:	c5 3d 59 c1          	vmulpd ymm8,ymm8,ymm1
  891a9b:	c4 41 55 5c c8       	vsubpd ymm9,ymm5,ymm8
  891aa0:	c5 85 5c db          	vsubpd ymm3,ymm15,ymm3
  891aa4:	c5 bd 58 ed          	vaddpd ymm5,ymm8,ymm5
  891aa8:	c5 8d 58 ff          	vaddpd ymm7,ymm14,ymm7
  891aac:	c5 ed 58 d4          	vaddpd ymm2,ymm2,ymm4
  891ab0:	c4 e3 fd 01 e2 e6    	vpermpd ymm4,ymm2,0xe6
  891ab6:	c4 63 fd 01 c7 e6    	vpermpd ymm8,ymm7,0xe6
  891abc:	c5 bd c6 e4 0c       	vshufpd ymm4,ymm8,ymm4,0xc
  891ac1:	c4 e3 fd 01 d2 60    	vpermpd ymm2,ymm2,0x60
  891ac7:	c4 e3 fd 01 ff d4    	vpermpd ymm7,ymm7,0xd4
  891acd:	c4 e3 45 0d d2 0a    	vblendpd ymm2,ymm7,ymm2,0xa
  891ad3:	c5 fd 11 14 16       	vmovupd YMMWORD PTR [rsi+rdx*1],ymm2
  891ad8:	c5 fd 11 64 16 20    	vmovupd YMMWORD PTR [rsi+rdx*1+0x20],ymm4
  891ade:	c4 e3 fd 01 d5 e6    	vpermpd ymm2,ymm5,0xe6
  891ae4:	c4 e3 fd 01 e3 e6    	vpermpd ymm4,ymm3,0xe6
  891aea:	c5 dd c6 d2 0c       	vshufpd ymm2,ymm4,ymm2,0xc
  891aef:	c4 e3 fd 01 e5 60    	vpermpd ymm4,ymm5,0x60
  891af5:	c4 e3 fd 01 db d4    	vpermpd ymm3,ymm3,0xd4
  891afb:	c4 e3 65 0d dc 0a    	vblendpd ymm3,ymm3,ymm4,0xa
  891b01:	c5 fd 11 5c 16 40    	vmovupd YMMWORD PTR [rsi+rdx*1+0x40],ymm3
  891b07:	c5 fd 11 54 16 60    	vmovupd YMMWORD PTR [rsi+rdx*1+0x60],ymm2
  891b0d:	c4 c3 fd 01 d1 e6    	vpermpd ymm2,ymm9,0xe6
  891b13:	c4 e3 fd 01 de e6    	vpermpd ymm3,ymm6,0xe6
  891b19:	c5 e5 c6 d2 0c       	vshufpd ymm2,ymm3,ymm2,0xc
  891b1e:	c4 c3 fd 01 d9 60    	vpermpd ymm3,ymm9,0x60
  891b24:	c4 e3 fd 01 e6 d4    	vpermpd ymm4,ymm6,0xd4
  891b2a:	c4 e3 5d 0d db 0a    	vblendpd ymm3,ymm4,ymm3,0xa
  891b30:	c5 fd 11 9c 16 80 00 	vmovupd YMMWORD PTR [rsi+rdx*1+0x80],ymm3
  891b37:	00 00 
  891b39:	c5 fd 11 94 16 a0 00 	vmovupd YMMWORD PTR [rsi+rdx*1+0xa0],ymm2
  891b40:	00 00 
  891b42:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  891b49:	48 39 d0             	cmp    rax,rdx
  891b4c:	0f 85 ce fd ff ff    	jne    891920 <<fastfft::isa::x86::F64x4 as fastfft::engine::small::SmallVector>::rectangle+0x20>
  891b52:	c5 f8 77             	vzeroupper
  891b55:	c3                   	ret
