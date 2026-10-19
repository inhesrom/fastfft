
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000829680 <<fastfft::isa::x86::F64x4 as fastfft::engine::small::SmallVector>::rectangle>:
  829680:	48 c1 e2 05          	shl    rdx,0x5
  829684:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  829688:	31 d2                	xor    edx,edx
  82968a:	c4 e2 7d 19 05 05 b4 	vbroadcastsd ymm0,QWORD PTR [rip+0xffffffffff84b405]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  829691:	84 ff 
  829693:	c4 e2 7d 19 0d 84 b5 	vbroadcastsd ymm1,QWORD PTR [rip+0xffffffffff84b584]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  82969a:	84 ff 
  82969c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  8296a0:	c5 fd 10 14 17       	vmovupd ymm2,YMMWORD PTR [rdi+rdx*1]
  8296a5:	c4 e3 6d 18 54 17 20 	vinsertf128 ymm2,ymm2,XMMWORD PTR [rdi+rdx*1+0x20],0x1
  8296ac:	01 
  8296ad:	c5 f9 10 5c 17 10    	vmovupd xmm3,XMMWORD PTR [rdi+rdx*1+0x10]
  8296b3:	c5 ed 14 e3          	vunpcklpd ymm4,ymm2,ymm3
  8296b7:	c5 fd 10 6c 17 30    	vmovupd ymm5,YMMWORD PTR [rdi+rdx*1+0x30]
  8296bd:	c4 e3 55 18 6c 17 50 	vinsertf128 ymm5,ymm5,XMMWORD PTR [rdi+rdx*1+0x50],0x1
  8296c4:	01 
  8296c5:	c5 ed 15 d3          	vunpckhpd ymm2,ymm2,ymm3
  8296c9:	c5 f9 10 5c 17 40    	vmovupd xmm3,XMMWORD PTR [rdi+rdx*1+0x40]
  8296cf:	c5 d5 14 f3          	vunpcklpd ymm6,ymm5,ymm3
  8296d3:	c5 d5 15 db          	vunpckhpd ymm3,ymm5,ymm3
  8296d7:	c5 dd 58 ee          	vaddpd ymm5,ymm4,ymm6
  8296db:	c5 ed 58 fb          	vaddpd ymm7,ymm2,ymm3
  8296df:	c5 dd 5c e6          	vsubpd ymm4,ymm4,ymm6
  8296e3:	c5 ed 5c db          	vsubpd ymm3,ymm2,ymm3
  8296e7:	c5 f9 28 f5          	vmovapd xmm6,xmm5
  8296eb:	c4 e3 7d 19 ea 01    	vextractf128 xmm2,ymm5,0x1
  8296f1:	c5 f9 28 ec          	vmovapd xmm5,xmm4
  8296f5:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  8296fb:	c5 ed 14 e4          	vunpcklpd ymm4,ymm2,ymm4
  8296ff:	c5 cd 14 d5          	vunpcklpd ymm2,ymm6,ymm5
  829703:	c5 cd 15 ed          	vunpckhpd ymm5,ymm6,ymm5
  829707:	c5 f9 28 f7          	vmovapd xmm6,xmm7
  82970b:	c4 e3 7d 19 ff 01    	vextractf128 xmm7,ymm7,0x1
  829711:	c5 79 28 c3          	vmovapd xmm8,xmm3
  829715:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  82971b:	c5 c5 14 fb          	vunpcklpd ymm7,ymm7,ymm3
  82971f:	c4 c1 4d 14 d8       	vunpcklpd ymm3,ymm6,ymm8
  829724:	c4 c1 4d 15 f0       	vunpckhpd ymm6,ymm6,ymm8
  829729:	c5 7d 10 41 40       	vmovupd ymm8,YMMWORD PTR [rcx+0x40]
  82972e:	c5 7d 10 49 60       	vmovupd ymm9,YMMWORD PTR [rcx+0x60]
  829733:	c5 7d 10 91 80 00 00 	vmovupd ymm10,YMMWORD PTR [rcx+0x80]
  82973a:	00 
  82973b:	c5 7d 10 99 a0 00 00 	vmovupd ymm11,YMMWORD PTR [rcx+0xa0]
  829742:	00 
  829743:	c5 3d 59 e5          	vmulpd ymm12,ymm8,ymm5
  829747:	c4 42 cd bc e1       	vfnmadd231pd ymm12,ymm6,ymm9
  82974c:	c5 2d 59 ec          	vmulpd ymm13,ymm10,ymm4
  829750:	c4 42 c5 bc eb       	vfnmadd231pd ymm13,ymm7,ymm11
  829755:	c4 41 1d 58 f5       	vaddpd ymm14,ymm12,ymm13
  82975a:	c5 bd 59 f6          	vmulpd ymm6,ymm8,ymm6
  82975e:	c4 c2 d5 b8 f1       	vfmadd231pd ymm6,ymm5,ymm9
  829763:	c5 ad 59 ef          	vmulpd ymm5,ymm10,ymm7
  829767:	c4 c2 dd b8 eb       	vfmadd231pd ymm5,ymm4,ymm11
  82976c:	c5 cd 58 e5          	vaddpd ymm4,ymm6,ymm5
  829770:	c5 fd 28 f8          	vmovapd ymm7,ymm0
  829774:	c4 e2 8d ac fa       	vfnmadd213pd ymm7,ymm14,ymm2
  829779:	c5 cd 5c ed          	vsubpd ymm5,ymm6,ymm5
  82977d:	c5 d5 59 e9          	vmulpd ymm5,ymm5,ymm1
  829781:	c5 c5 58 f5          	vaddpd ymm6,ymm7,ymm5
  829785:	c5 7d 28 c0          	vmovapd ymm8,ymm0
  829789:	c4 62 dd ac c3       	vfnmadd213pd ymm8,ymm4,ymm3
  82978e:	c4 41 1d 5c cd       	vsubpd ymm9,ymm12,ymm13
  829793:	c5 35 59 c9          	vmulpd ymm9,ymm9,ymm1
  829797:	c4 41 3d 5c d1       	vsubpd ymm10,ymm8,ymm9
  82979c:	c5 c5 5c ed          	vsubpd ymm5,ymm7,ymm5
  8297a0:	c4 c1 3d 58 f9       	vaddpd ymm7,ymm8,ymm9
  8297a5:	c5 8d 58 d2          	vaddpd ymm2,ymm14,ymm2
  8297a9:	c5 e5 58 dc          	vaddpd ymm3,ymm3,ymm4
  8297ad:	c4 e3 fd 01 db 60    	vpermpd ymm3,ymm3,0x60
  8297b3:	c4 e3 fd 01 d2 d4    	vpermpd ymm2,ymm2,0xd4
  8297b9:	c4 e3 6d 0d d3 0a    	vblendpd ymm2,ymm2,ymm3,0xa
  8297bf:	c5 fd 11 14 16       	vmovupd YMMWORD PTR [rsi+rdx*1],ymm2
  8297c4:	c4 c3 fd 01 d2 60    	vpermpd ymm2,ymm10,0x60
  8297ca:	c4 e3 fd 01 de d4    	vpermpd ymm3,ymm6,0xd4
  8297d0:	c4 e3 65 0d d2 0a    	vblendpd ymm2,ymm3,ymm2,0xa
  8297d6:	c5 fd 11 54 16 20    	vmovupd YMMWORD PTR [rsi+rdx*1+0x20],ymm2
  8297dc:	c4 e3 fd 01 d7 60    	vpermpd ymm2,ymm7,0x60
  8297e2:	c4 e3 fd 01 dd d4    	vpermpd ymm3,ymm5,0xd4
  8297e8:	c4 e3 65 0d d2 0a    	vblendpd ymm2,ymm3,ymm2,0xa
  8297ee:	c5 fd 11 54 16 40    	vmovupd YMMWORD PTR [rsi+rdx*1+0x40],ymm2
  8297f4:	48 83 c2 60          	add    rdx,0x60
  8297f8:	48 39 d0             	cmp    rax,rdx
  8297fb:	0f 85 9f fe ff ff    	jne    8296a0 <<fastfft::isa::x86::F64x4 as fastfft::engine::small::SmallVector>::rectangle+0x20>
  829801:	c5 f8 77             	vzeroupper
  829804:	c3                   	ret
