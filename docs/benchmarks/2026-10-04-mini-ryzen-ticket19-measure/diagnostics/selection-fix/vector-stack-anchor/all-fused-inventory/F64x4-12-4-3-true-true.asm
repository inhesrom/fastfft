
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000890680 <<fastfft::isa::x86::F64x4 as fastfft::engine::small::SmallVector>::rectangle>:
  890680:	48 c1 e2 06          	shl    rdx,0x6
  890684:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  890688:	31 d2                	xor    edx,edx
  89068a:	c4 e2 7d 19 05 05 44 	vbroadcastsd ymm0,QWORD PTR [rip+0xffffffffff7e4405]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  890691:	7e ff 
  890693:	c4 e2 7d 19 0d 84 45 	vbroadcastsd ymm1,QWORD PTR [rip+0xffffffffff7e4584]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  89069a:	7e ff 
  89069c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  8906a0:	c5 fd 10 14 17       	vmovupd ymm2,YMMWORD PTR [rdi+rdx*1]
  8906a5:	c4 e3 6d 18 54 17 20 	vinsertf128 ymm2,ymm2,XMMWORD PTR [rdi+rdx*1+0x20],0x1
  8906ac:	01 
  8906ad:	c5 f9 10 5c 17 10    	vmovupd xmm3,XMMWORD PTR [rdi+rdx*1+0x10]
  8906b3:	c5 ed 14 e3          	vunpcklpd ymm4,ymm2,ymm3
  8906b7:	c5 fd 10 6c 17 30    	vmovupd ymm5,YMMWORD PTR [rdi+rdx*1+0x30]
  8906bd:	c4 e3 55 18 6c 17 50 	vinsertf128 ymm5,ymm5,XMMWORD PTR [rdi+rdx*1+0x50],0x1
  8906c4:	01 
  8906c5:	c5 ed 15 d3          	vunpckhpd ymm2,ymm2,ymm3
  8906c9:	c5 f9 10 5c 17 40    	vmovupd xmm3,XMMWORD PTR [rdi+rdx*1+0x40]
  8906cf:	c5 d5 14 f3          	vunpcklpd ymm6,ymm5,ymm3
  8906d3:	c5 d5 15 db          	vunpckhpd ymm3,ymm5,ymm3
  8906d7:	c5 fd 10 6c 17 60    	vmovupd ymm5,YMMWORD PTR [rdi+rdx*1+0x60]
  8906dd:	c4 e3 55 18 ac 17 80 	vinsertf128 ymm5,ymm5,XMMWORD PTR [rdi+rdx*1+0x80],0x1
  8906e4:	00 00 00 01 
  8906e8:	c5 f9 10 7c 17 70    	vmovupd xmm7,XMMWORD PTR [rdi+rdx*1+0x70]
  8906ee:	c5 55 14 c7          	vunpcklpd ymm8,ymm5,ymm7
  8906f2:	c5 7d 10 8c 17 90 00 	vmovupd ymm9,YMMWORD PTR [rdi+rdx*1+0x90]
  8906f9:	00 00 
  8906fb:	c4 63 35 18 8c 17 b0 	vinsertf128 ymm9,ymm9,XMMWORD PTR [rdi+rdx*1+0xb0],0x1
  890702:	00 00 00 01 
  890706:	c5 d5 15 ef          	vunpckhpd ymm5,ymm5,ymm7
  89070a:	c5 f9 10 bc 17 a0 00 	vmovupd xmm7,XMMWORD PTR [rdi+rdx*1+0xa0]
  890711:	00 00 
  890713:	c5 35 14 d7          	vunpcklpd ymm10,ymm9,ymm7
  890717:	c5 b5 15 ff          	vunpckhpd ymm7,ymm9,ymm7
  89071b:	c5 6d 58 cd          	vaddpd ymm9,ymm2,ymm5
  89071f:	c5 65 58 df          	vaddpd ymm11,ymm3,ymm7
  890723:	c4 41 35 58 e3       	vaddpd ymm12,ymm9,ymm11
  890728:	c5 3d 58 ec          	vaddpd ymm13,ymm8,ymm4
  89072c:	c5 2d 58 f6          	vaddpd ymm14,ymm10,ymm6
  890730:	c4 41 15 58 fe       	vaddpd ymm15,ymm13,ymm14
  890735:	c5 ed 5c d5          	vsubpd ymm2,ymm2,ymm5
  890739:	c4 c1 4d 5c ea       	vsubpd ymm5,ymm6,ymm10
  89073e:	c5 ed 58 f5          	vaddpd ymm6,ymm2,ymm5
  890742:	c4 c1 5d 5c e0       	vsubpd ymm4,ymm4,ymm8
  890747:	c5 c5 5c db          	vsubpd ymm3,ymm7,ymm3
  89074b:	c5 e5 58 fc          	vaddpd ymm7,ymm3,ymm4
  89074f:	c4 41 35 5c c3       	vsubpd ymm8,ymm9,ymm11
  890754:	c4 41 15 5c ce       	vsubpd ymm9,ymm13,ymm14
  890759:	c5 ed 5c d5          	vsubpd ymm2,ymm2,ymm5
  89075d:	c5 dd 5c db          	vsubpd ymm3,ymm4,ymm3
  890761:	c4 c3 1d 18 e0 01    	vinsertf128 ymm4,ymm12,xmm8,0x1
  890767:	c4 c3 1d 06 e8 31    	vperm2f128 ymm5,ymm12,ymm8,0x31
  89076d:	c4 63 4d 18 c2 01    	vinsertf128 ymm8,ymm6,xmm2,0x1
  890773:	c4 e3 4d 06 d2 31    	vperm2f128 ymm2,ymm6,ymm2,0x31
  890779:	c5 d5 14 ea          	vunpcklpd ymm5,ymm5,ymm2
  89077d:	c4 c1 5d 14 d0       	vunpcklpd ymm2,ymm4,ymm8
  890782:	c4 c1 5d 15 e0       	vunpckhpd ymm4,ymm4,ymm8
  890787:	c4 c3 05 18 f1 01    	vinsertf128 ymm6,ymm15,xmm9,0x1
  89078d:	c4 43 05 06 c1 31    	vperm2f128 ymm8,ymm15,ymm9,0x31
  890793:	c4 63 45 18 cb 01    	vinsertf128 ymm9,ymm7,xmm3,0x1
  890799:	c4 e3 45 06 db 31    	vperm2f128 ymm3,ymm7,ymm3,0x31
  89079f:	c5 bd 14 db          	vunpcklpd ymm3,ymm8,ymm3
  8907a3:	c4 c1 4d 14 f9       	vunpcklpd ymm7,ymm6,ymm9
  8907a8:	c4 c1 4d 15 f1       	vunpckhpd ymm6,ymm6,ymm9
  8907ad:	c5 7d 10 41 40       	vmovupd ymm8,YMMWORD PTR [rcx+0x40]
  8907b2:	c5 7d 10 49 60       	vmovupd ymm9,YMMWORD PTR [rcx+0x60]
  8907b7:	c5 7d 10 91 80 00 00 	vmovupd ymm10,YMMWORD PTR [rcx+0x80]
  8907be:	00 
  8907bf:	c5 7d 10 99 a0 00 00 	vmovupd ymm11,YMMWORD PTR [rcx+0xa0]
  8907c6:	00 
  8907c7:	c5 3d 59 e6          	vmulpd ymm12,ymm8,ymm6
  8907cb:	c4 42 dd b8 e1       	vfmadd231pd ymm12,ymm4,ymm9
  8907d0:	c5 2d 59 eb          	vmulpd ymm13,ymm10,ymm3
  8907d4:	c4 42 d5 b8 eb       	vfmadd231pd ymm13,ymm5,ymm11
  8907d9:	c4 41 1d 58 f5       	vaddpd ymm14,ymm12,ymm13
  8907de:	c5 7d 28 f8          	vmovapd ymm15,ymm0
  8907e2:	c4 62 8d ac ff       	vfnmadd213pd ymm15,ymm14,ymm7
  8907e7:	c5 bd 59 e4          	vmulpd ymm4,ymm8,ymm4
  8907eb:	c4 c2 cd bc e1       	vfnmadd231pd ymm4,ymm6,ymm9
  8907f0:	c5 ad 59 ed          	vmulpd ymm5,ymm10,ymm5
  8907f4:	c4 c2 e5 bc eb       	vfnmadd231pd ymm5,ymm3,ymm11
  8907f9:	c5 dd 5c dd          	vsubpd ymm3,ymm4,ymm5
  8907fd:	c5 e5 59 d9          	vmulpd ymm3,ymm3,ymm1
  890801:	c5 85 58 f3          	vaddpd ymm6,ymm15,ymm3
  890805:	c5 dd 58 e5          	vaddpd ymm4,ymm4,ymm5
  890809:	c5 fd 28 e8          	vmovapd ymm5,ymm0
  89080d:	c4 e2 dd ac ea       	vfnmadd213pd ymm5,ymm4,ymm2
  890812:	c4 41 1d 5c c5       	vsubpd ymm8,ymm12,ymm13
  890817:	c5 3d 59 c1          	vmulpd ymm8,ymm8,ymm1
  89081b:	c4 41 55 5c c8       	vsubpd ymm9,ymm5,ymm8
  890820:	c5 85 5c db          	vsubpd ymm3,ymm15,ymm3
  890824:	c5 bd 58 ed          	vaddpd ymm5,ymm8,ymm5
  890828:	c5 8d 58 ff          	vaddpd ymm7,ymm14,ymm7
  89082c:	c5 ed 58 d4          	vaddpd ymm2,ymm2,ymm4
  890830:	c4 e3 fd 01 e2 e6    	vpermpd ymm4,ymm2,0xe6
  890836:	c4 63 fd 01 c7 e6    	vpermpd ymm8,ymm7,0xe6
  89083c:	c5 bd c6 e4 0c       	vshufpd ymm4,ymm8,ymm4,0xc
  890841:	c4 e3 fd 01 d2 60    	vpermpd ymm2,ymm2,0x60
  890847:	c4 e3 fd 01 ff d4    	vpermpd ymm7,ymm7,0xd4
  89084d:	c4 e3 45 0d d2 0a    	vblendpd ymm2,ymm7,ymm2,0xa
  890853:	c5 fd 11 14 16       	vmovupd YMMWORD PTR [rsi+rdx*1],ymm2
  890858:	c5 fd 11 64 16 20    	vmovupd YMMWORD PTR [rsi+rdx*1+0x20],ymm4
  89085e:	c4 e3 fd 01 d5 e6    	vpermpd ymm2,ymm5,0xe6
  890864:	c4 e3 fd 01 e3 e6    	vpermpd ymm4,ymm3,0xe6
  89086a:	c5 dd c6 d2 0c       	vshufpd ymm2,ymm4,ymm2,0xc
  89086f:	c4 e3 fd 01 e5 60    	vpermpd ymm4,ymm5,0x60
  890875:	c4 e3 fd 01 db d4    	vpermpd ymm3,ymm3,0xd4
  89087b:	c4 e3 65 0d dc 0a    	vblendpd ymm3,ymm3,ymm4,0xa
  890881:	c5 fd 11 5c 16 40    	vmovupd YMMWORD PTR [rsi+rdx*1+0x40],ymm3
  890887:	c5 fd 11 54 16 60    	vmovupd YMMWORD PTR [rsi+rdx*1+0x60],ymm2
  89088d:	c4 c3 fd 01 d1 e6    	vpermpd ymm2,ymm9,0xe6
  890893:	c4 e3 fd 01 de e6    	vpermpd ymm3,ymm6,0xe6
  890899:	c5 e5 c6 d2 0c       	vshufpd ymm2,ymm3,ymm2,0xc
  89089e:	c4 c3 fd 01 d9 60    	vpermpd ymm3,ymm9,0x60
  8908a4:	c4 e3 fd 01 e6 d4    	vpermpd ymm4,ymm6,0xd4
  8908aa:	c4 e3 5d 0d db 0a    	vblendpd ymm3,ymm4,ymm3,0xa
  8908b0:	c5 fd 11 9c 16 80 00 	vmovupd YMMWORD PTR [rsi+rdx*1+0x80],ymm3
  8908b7:	00 00 
  8908b9:	c5 fd 11 94 16 a0 00 	vmovupd YMMWORD PTR [rsi+rdx*1+0xa0],ymm2
  8908c0:	00 00 
  8908c2:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  8908c9:	48 39 d0             	cmp    rax,rdx
  8908cc:	0f 85 ce fd ff ff    	jne    8906a0 <<fastfft::isa::x86::F64x4 as fastfft::engine::small::SmallVector>::rectangle+0x20>
  8908d2:	c5 f8 77             	vzeroupper
  8908d5:	c3                   	ret
