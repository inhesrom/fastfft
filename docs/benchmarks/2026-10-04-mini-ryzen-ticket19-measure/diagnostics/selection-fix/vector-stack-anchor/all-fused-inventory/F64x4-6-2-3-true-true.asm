
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000821880 <<fastfft::isa::x86::F64x4 as fastfft::engine::small::SmallVector>::rectangle>:
  821880:	48 c1 e2 05          	shl    rdx,0x5
  821884:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  821888:	31 d2                	xor    edx,edx
  82188a:	c4 e2 7d 19 05 05 32 	vbroadcastsd ymm0,QWORD PTR [rip+0xffffffffff853205]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  821891:	85 ff 
  821893:	c4 e2 7d 19 0d 84 33 	vbroadcastsd ymm1,QWORD PTR [rip+0xffffffffff853384]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  82189a:	85 ff 
  82189c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  8218a0:	c5 fd 10 14 17       	vmovupd ymm2,YMMWORD PTR [rdi+rdx*1]
  8218a5:	c4 e3 6d 18 54 17 20 	vinsertf128 ymm2,ymm2,XMMWORD PTR [rdi+rdx*1+0x20],0x1
  8218ac:	01 
  8218ad:	c5 f9 10 5c 17 10    	vmovupd xmm3,XMMWORD PTR [rdi+rdx*1+0x10]
  8218b3:	c5 ed 14 e3          	vunpcklpd ymm4,ymm2,ymm3
  8218b7:	c5 fd 10 6c 17 30    	vmovupd ymm5,YMMWORD PTR [rdi+rdx*1+0x30]
  8218bd:	c4 e3 55 18 6c 17 50 	vinsertf128 ymm5,ymm5,XMMWORD PTR [rdi+rdx*1+0x50],0x1
  8218c4:	01 
  8218c5:	c5 ed 15 d3          	vunpckhpd ymm2,ymm2,ymm3
  8218c9:	c5 f9 10 5c 17 40    	vmovupd xmm3,XMMWORD PTR [rdi+rdx*1+0x40]
  8218cf:	c5 d5 14 f3          	vunpcklpd ymm6,ymm5,ymm3
  8218d3:	c5 d5 15 db          	vunpckhpd ymm3,ymm5,ymm3
  8218d7:	c5 ed 58 eb          	vaddpd ymm5,ymm2,ymm3
  8218db:	c5 dd 58 fe          	vaddpd ymm7,ymm4,ymm6
  8218df:	c5 ed 5c d3          	vsubpd ymm2,ymm2,ymm3
  8218e3:	c5 dd 5c de          	vsubpd ymm3,ymm4,ymm6
  8218e7:	c5 f9 28 e5          	vmovapd xmm4,xmm5
  8218eb:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  8218f1:	c5 f9 28 f2          	vmovapd xmm6,xmm2
  8218f5:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  8218fb:	c5 d5 14 ea          	vunpcklpd ymm5,ymm5,ymm2
  8218ff:	c5 dd 14 d6          	vunpcklpd ymm2,ymm4,ymm6
  821903:	c5 dd 15 e6          	vunpckhpd ymm4,ymm4,ymm6
  821907:	c5 f9 28 f7          	vmovapd xmm6,xmm7
  82190b:	c4 e3 7d 19 ff 01    	vextractf128 xmm7,ymm7,0x1
  821911:	c5 79 28 c3          	vmovapd xmm8,xmm3
  821915:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  82191b:	c5 c5 14 db          	vunpcklpd ymm3,ymm7,ymm3
  82191f:	c4 c1 4d 14 f8       	vunpcklpd ymm7,ymm6,ymm8
  821924:	c4 c1 4d 15 f0       	vunpckhpd ymm6,ymm6,ymm8
  821929:	c5 7d 10 41 40       	vmovupd ymm8,YMMWORD PTR [rcx+0x40]
  82192e:	c5 7d 10 49 60       	vmovupd ymm9,YMMWORD PTR [rcx+0x60]
  821933:	c5 7d 10 91 80 00 00 	vmovupd ymm10,YMMWORD PTR [rcx+0x80]
  82193a:	00 
  82193b:	c5 7d 10 99 a0 00 00 	vmovupd ymm11,YMMWORD PTR [rcx+0xa0]
  821942:	00 
  821943:	c5 3d 59 e4          	vmulpd ymm12,ymm8,ymm4
  821947:	c4 42 cd bc e1       	vfnmadd231pd ymm12,ymm6,ymm9
  82194c:	c5 2d 59 ed          	vmulpd ymm13,ymm10,ymm5
  821950:	c4 42 e5 bc eb       	vfnmadd231pd ymm13,ymm3,ymm11
  821955:	c4 41 1d 58 f5       	vaddpd ymm14,ymm12,ymm13
  82195a:	c5 bd 59 f6          	vmulpd ymm6,ymm8,ymm6
  82195e:	c4 c2 dd b8 f1       	vfmadd231pd ymm6,ymm4,ymm9
  821963:	c5 ad 59 db          	vmulpd ymm3,ymm10,ymm3
  821967:	c4 c2 d5 b8 db       	vfmadd231pd ymm3,ymm5,ymm11
  82196c:	c5 cd 58 e3          	vaddpd ymm4,ymm6,ymm3
  821970:	c5 fd 28 e8          	vmovapd ymm5,ymm0
  821974:	c4 e2 8d ac ea       	vfnmadd213pd ymm5,ymm14,ymm2
  821979:	c5 cd 5c db          	vsubpd ymm3,ymm6,ymm3
  82197d:	c5 e5 59 d9          	vmulpd ymm3,ymm3,ymm1
  821981:	c5 d5 58 f3          	vaddpd ymm6,ymm5,ymm3
  821985:	c5 7d 28 c0          	vmovapd ymm8,ymm0
  821989:	c4 62 dd ac c7       	vfnmadd213pd ymm8,ymm4,ymm7
  82198e:	c4 41 1d 5c cd       	vsubpd ymm9,ymm12,ymm13
  821993:	c5 35 59 c9          	vmulpd ymm9,ymm9,ymm1
  821997:	c4 41 3d 5c d1       	vsubpd ymm10,ymm8,ymm9
  82199c:	c5 d5 5c db          	vsubpd ymm3,ymm5,ymm3
  8219a0:	c4 c1 3d 58 e9       	vaddpd ymm5,ymm8,ymm9
  8219a5:	c5 c5 58 e4          	vaddpd ymm4,ymm7,ymm4
  8219a9:	c5 8d 58 d2          	vaddpd ymm2,ymm14,ymm2
  8219ad:	c4 e3 fd 01 d2 60    	vpermpd ymm2,ymm2,0x60
  8219b3:	c4 e3 fd 01 e4 d4    	vpermpd ymm4,ymm4,0xd4
  8219b9:	c4 e3 5d 0d d2 0a    	vblendpd ymm2,ymm4,ymm2,0xa
  8219bf:	c5 fd 11 14 16       	vmovupd YMMWORD PTR [rsi+rdx*1],ymm2
  8219c4:	c4 e3 fd 01 d6 60    	vpermpd ymm2,ymm6,0x60
  8219ca:	c4 c3 fd 01 e2 d4    	vpermpd ymm4,ymm10,0xd4
  8219d0:	c4 e3 5d 0d d2 0a    	vblendpd ymm2,ymm4,ymm2,0xa
  8219d6:	c5 fd 11 54 16 20    	vmovupd YMMWORD PTR [rsi+rdx*1+0x20],ymm2
  8219dc:	c4 e3 fd 01 d3 60    	vpermpd ymm2,ymm3,0x60
  8219e2:	c4 e3 fd 01 dd d4    	vpermpd ymm3,ymm5,0xd4
  8219e8:	c4 e3 65 0d d2 0a    	vblendpd ymm2,ymm3,ymm2,0xa
  8219ee:	c5 fd 11 54 16 40    	vmovupd YMMWORD PTR [rsi+rdx*1+0x40],ymm2
  8219f4:	48 83 c2 60          	add    rdx,0x60
  8219f8:	48 39 d0             	cmp    rax,rdx
  8219fb:	0f 85 9f fe ff ff    	jne    8218a0 <<fastfft::isa::x86::F64x4 as fastfft::engine::small::SmallVector>::rectangle+0x20>
  821a01:	c5 f8 77             	vzeroupper
  821a04:	c3                   	ret
