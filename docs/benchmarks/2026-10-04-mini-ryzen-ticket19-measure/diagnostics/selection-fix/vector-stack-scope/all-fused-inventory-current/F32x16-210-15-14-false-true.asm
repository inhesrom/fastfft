
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a63800 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a63800:	55                   	push   rbp
  a63801:	48 89 e5             	mov    rbp,rsp
  a63804:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a63808:	48 81 ec 40 04 00 00 	sub    rsp,0x440
  a6380f:	48 69 c2 90 06 00 00 	imul   rax,rdx,0x690
  a63816:	31 d2                	xor    edx,edx
  a63818:	4c 8d 84 24 c0 03 00 	lea    r8,[rsp+0x3c0]
  a6381f:	00 
  a63820:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  a63825:	41 b2 3f             	mov    r10b,0x3f
  a63828:	c4 c1 7b 92 ca       	kmovd  k1,r10d
  a6382d:	0f 1f 00             	nop    DWORD PTR [rax]
  a63830:	c6 84 24 c0 03 00 00 	mov    BYTE PTR [rsp+0x3c0],0x0
  a63837:	00 
  a63838:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  a6383d:	62 f1 7c 48 10 2c 17 	vmovups zmm5,ZMMWORD PTR [rdi+rdx*1]
  a63844:	c5 fc 10 44 17 40    	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x40]
  a6384a:	c5 f8 10 4c 17 60    	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x60]
  a63850:	c4 e3 71 21 5c 17 64 	vinsertps xmm3,xmm1,DWORD PTR [rdi+rdx*1+0x64],0x10
  a63857:	10 
  a63858:	c4 e2 79 18 64 17 68 	vbroadcastss xmm4,DWORD PTR [rdi+rdx*1+0x68]
  a6385f:	62 f1 7c 48 10 b4 17 	vmovups zmm6,ZMMWORD PTR [rdi+rdx*1+0x70]
  a63866:	70 00 00 00 
  a6386a:	c5 fc 10 8c 17 b0 00 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0xb0]
  a63871:	00 00 
  a63873:	c5 f8 10 94 17 d0 00 	vmovups xmm2,XMMWORD PTR [rdi+rdx*1+0xd0]
  a6387a:	00 00 
  a6387c:	c4 e3 69 21 94 17 d4 	vinsertps xmm2,xmm2,DWORD PTR [rdi+rdx*1+0xd4],0x10
  a63883:	00 00 00 10 
  a63887:	62 e1 7c 48 28 cd    	vmovaps zmm17,zmm5
  a6388d:	62 71 7c 48 28 dd    	vmovaps zmm11,zmm5
  a63893:	c4 e2 79 18 ac 17 d8 	vbroadcastss xmm5,DWORD PTR [rdi+rdx*1+0xd8]
  a6389a:	00 00 00 
  a6389d:	62 61 7c 48 10 bc 17 	vmovups zmm31,ZMMWORD PTR [rdi+rdx*1+0xe0]
  a638a4:	e0 00 00 00 
  a638a8:	62 e1 7c 48 28 e6    	vmovaps zmm20,zmm6
  a638ae:	62 61 7c 48 28 e6    	vmovaps zmm28,zmm6
  a638b4:	c5 f8 10 b4 17 40 01 	vmovups xmm6,XMMWORD PTR [rdi+rdx*1+0x140]
  a638bb:	00 00 
  a638bd:	c4 e3 49 21 b4 17 44 	vinsertps xmm6,xmm6,DWORD PTR [rdi+rdx*1+0x144],0x10
  a638c4:	01 00 00 10 
  a638c8:	c4 e3 59 0c db 03    	vblendps xmm3,xmm4,xmm3,0x3
  a638ce:	c4 e2 79 18 a4 17 48 	vbroadcastss xmm4,DWORD PTR [rdi+rdx*1+0x148]
  a638d5:	01 00 00 
  a638d8:	c4 e3 61 21 5c 17 6c 	vinsertps xmm3,xmm3,DWORD PTR [rdi+rdx*1+0x6c],0x30
  a638df:	30 
  a638e0:	c5 fc 10 bc 17 20 01 	vmovups ymm7,YMMWORD PTR [rdi+rdx*1+0x120]
  a638e7:	00 00 
  a638e9:	62 81 7c 48 28 f7    	vmovaps zmm22,zmm31
  a638ef:	c5 78 10 84 17 b0 01 	vmovups xmm8,XMMWORD PTR [rdi+rdx*1+0x1b0]
  a638f6:	00 00 
  a638f8:	c4 e3 51 0c d2 03    	vblendps xmm2,xmm5,xmm2,0x3
  a638fe:	c4 e3 39 21 ac 17 b4 	vinsertps xmm5,xmm8,DWORD PTR [rdi+rdx*1+0x1b4],0x10
  a63905:	01 00 00 10 
  a63909:	c4 e3 69 21 94 17 dc 	vinsertps xmm2,xmm2,DWORD PTR [rdi+rdx*1+0xdc],0x30
  a63910:	00 00 00 30 
  a63914:	62 61 7c 48 10 b4 17 	vmovups zmm30,ZMMWORD PTR [rdi+rdx*1+0x150]
  a6391b:	50 01 00 00 
  a6391f:	c4 62 79 18 84 17 b8 	vbroadcastss xmm8,DWORD PTR [rdi+rdx*1+0x1b8]
  a63926:	01 00 00 
  a63929:	c4 e3 59 0c e6 03    	vblendps xmm4,xmm4,xmm6,0x3
  a6392f:	c5 fc 10 b4 17 90 01 	vmovups ymm6,YMMWORD PTR [rdi+rdx*1+0x190]
  a63936:	00 00 
  a63938:	c4 e3 59 21 a4 17 4c 	vinsertps xmm4,xmm4,DWORD PTR [rdi+rdx*1+0x14c],0x30
  a6393f:	01 00 00 30 
  a63943:	c5 78 10 8c 17 20 02 	vmovups xmm9,XMMWORD PTR [rdi+rdx*1+0x220]
  a6394a:	00 00 
  a6394c:	c4 63 31 21 8c 17 24 	vinsertps xmm9,xmm9,DWORD PTR [rdi+rdx*1+0x224],0x10
  a63953:	02 00 00 10 
  a63957:	c4 e3 39 0c ed 03    	vblendps xmm5,xmm8,xmm5,0x3
  a6395d:	c4 62 79 18 84 17 28 	vbroadcastss xmm8,DWORD PTR [rdi+rdx*1+0x228]
  a63964:	02 00 00 
  a63967:	c4 e3 51 21 ac 17 bc 	vinsertps xmm5,xmm5,DWORD PTR [rdi+rdx*1+0x1bc],0x30
  a6396e:	01 00 00 30 
  a63972:	62 61 7c 48 10 6c 17 	vmovups zmm29,ZMMWORD PTR [rdi+rdx*1+0x1c0]
  a63979:	07 
  a6397a:	c4 43 39 0c c1 03    	vblendps xmm8,xmm8,xmm9,0x3
  a63980:	c4 63 39 21 84 17 2c 	vinsertps xmm8,xmm8,DWORD PTR [rdi+rdx*1+0x22c],0x30
  a63987:	02 00 00 30 
  a6398b:	c5 7c 10 94 17 00 02 	vmovups ymm10,YMMWORD PTR [rdi+rdx*1+0x200]
  a63992:	00 00 
  a63994:	62 81 7c 48 28 fd    	vmovaps zmm23,zmm29
  a6399a:	62 61 7c 48 10 8c 17 	vmovups zmm25,ZMMWORD PTR [rdi+rdx*1+0x230]
  a639a1:	30 02 00 00 
  a639a5:	62 f3 7d 48 18 c3 02 	vinsertf32x4 zmm0,zmm0,xmm3,0x2
  a639ac:	c5 f8 10 9c 17 90 02 	vmovups xmm3,XMMWORD PTR [rdi+rdx*1+0x290]
  a639b3:	00 00 
  a639b5:	c4 e3 61 21 9c 17 94 	vinsertps xmm3,xmm3,DWORD PTR [rdi+rdx*1+0x294],0x10
  a639bc:	02 00 00 10 
  a639c0:	62 f3 75 48 18 ca 02 	vinsertf32x4 zmm1,zmm1,xmm2,0x2
  a639c7:	c5 fc 10 94 17 70 02 	vmovups ymm2,YMMWORD PTR [rdi+rdx*1+0x270]
  a639ce:	00 00 
  a639d0:	c4 62 79 18 8c 17 98 	vbroadcastss xmm9,DWORD PTR [rdi+rdx*1+0x298]
  a639d7:	02 00 00 
  a639da:	62 f3 45 48 18 e4 02 	vinsertf32x4 zmm4,zmm7,xmm4,0x2
  a639e1:	c4 e3 31 0c db 03    	vblendps xmm3,xmm9,xmm3,0x3
  a639e7:	c4 e3 61 21 9c 17 9c 	vinsertps xmm3,xmm3,DWORD PTR [rdi+rdx*1+0x29c],0x30
  a639ee:	02 00 00 30 
  a639f2:	62 f3 4d 48 18 ed 02 	vinsertf32x4 zmm5,zmm6,xmm5,0x2
  a639f9:	62 01 7c 48 28 d1    	vmovaps zmm26,zmm25
  a639ff:	62 61 7c 48 10 84 17 	vmovups zmm24,ZMMWORD PTR [rdi+rdx*1+0x2a0]
  a63a06:	a0 02 00 00 
  a63a0a:	c5 fc 10 b4 17 e0 02 	vmovups ymm6,YMMWORD PTR [rdi+rdx*1+0x2e0]
  a63a11:	00 00 
  a63a13:	62 d3 2d 48 18 f8 02 	vinsertf32x4 zmm7,zmm10,xmm8,0x2
  a63a1a:	c5 78 10 84 17 00 03 	vmovups xmm8,XMMWORD PTR [rdi+rdx*1+0x300]
  a63a21:	00 00 
  a63a23:	c4 63 39 21 84 17 04 	vinsertps xmm8,xmm8,DWORD PTR [rdi+rdx*1+0x304],0x10
  a63a2a:	03 00 00 10 
  a63a2e:	62 f3 6d 48 18 d3 02 	vinsertf32x4 zmm2,zmm2,xmm3,0x2
  a63a35:	c4 e2 79 18 9c 17 08 	vbroadcastss xmm3,DWORD PTR [rdi+rdx*1+0x308]
  a63a3c:	03 00 00 
  a63a3f:	c4 c3 61 0c d8 03    	vblendps xmm3,xmm3,xmm8,0x3
  a63a45:	62 72 fd c9 88 c0    	vexpandpd zmm8{k1}{z},zmm0
  a63a4b:	c4 e3 61 21 84 17 0c 	vinsertps xmm0,xmm3,DWORD PTR [rdi+rdx*1+0x30c],0x30
  a63a52:	03 00 00 30 
  a63a56:	62 f3 4d 48 18 c0 02 	vinsertf32x4 zmm0,zmm6,xmm0,0x2
  a63a5d:	62 f2 fd c9 88 d9    	vexpandpd zmm3{k1}{z},zmm1
  a63a63:	62 11 7c 48 28 c8    	vmovaps zmm9,zmm24
  a63a69:	62 e1 7c 48 10 84 17 	vmovups zmm16,ZMMWORD PTR [rdi+rdx*1+0x310]
  a63a70:	10 03 00 00 
  a63a74:	c5 fc 10 8c 17 50 03 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x350]
  a63a7b:	00 00 
  a63a7d:	62 72 fd c9 88 d4    	vexpandpd zmm10{k1}{z},zmm4
  a63a83:	c5 f8 10 a4 17 70 03 	vmovups xmm4,XMMWORD PTR [rdi+rdx*1+0x370]
  a63a8a:	00 00 
  a63a8c:	c4 e3 59 21 a4 17 74 	vinsertps xmm4,xmm4,DWORD PTR [rdi+rdx*1+0x374],0x10
  a63a93:	03 00 00 10 
  a63a97:	62 72 fd c9 88 ed    	vexpandpd zmm13{k1}{z},zmm5
  a63a9d:	c4 e2 79 18 ac 17 78 	vbroadcastss xmm5,DWORD PTR [rdi+rdx*1+0x378]
  a63aa4:	03 00 00 
  a63aa7:	c4 e3 51 0c e4 03    	vblendps xmm4,xmm5,xmm4,0x3
  a63aad:	62 72 fd c9 88 f7    	vexpandpd zmm14{k1}{z},zmm7
  a63ab3:	c4 e3 59 21 a4 17 7c 	vinsertps xmm4,xmm4,DWORD PTR [rdi+rdx*1+0x37c],0x30
  a63aba:	03 00 00 30 
  a63abe:	62 f3 75 48 18 e4 02 	vinsertf32x4 zmm4,zmm1,xmm4,0x2
  a63ac5:	62 f2 fd c9 88 ca    	vexpandpd zmm1{k1}{z},zmm2
  a63acb:	62 a1 7c 48 28 d0    	vmovaps zmm18,zmm16
  a63ad1:	62 f1 7c 48 10 6c 17 	vmovups zmm5,ZMMWORD PTR [rdi+rdx*1+0x380]
  a63ad8:	0e 
  a63ad9:	c5 fc 10 94 17 c0 03 	vmovups ymm2,YMMWORD PTR [rdi+rdx*1+0x3c0]
  a63ae0:	00 00 
  a63ae2:	62 72 fd c9 88 f8    	vexpandpd zmm15{k1}{z},zmm0
  a63ae8:	c5 f8 10 84 17 e0 03 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x3e0]
  a63aef:	00 00 
  a63af1:	c4 e3 79 21 b4 17 e4 	vinsertps xmm6,xmm0,DWORD PTR [rdi+rdx*1+0x3e4],0x10
  a63af8:	03 00 00 10 
  a63afc:	62 f2 fd c9 88 c4    	vexpandpd zmm0{k1}{z},zmm4
  a63b02:	c4 e2 79 18 a4 17 e8 	vbroadcastss xmm4,DWORD PTR [rdi+rdx*1+0x3e8]
  a63b09:	03 00 00 
  a63b0c:	c4 e3 59 0c e6 03    	vblendps xmm4,xmm4,xmm6,0x3
  a63b12:	62 71 7c 48 28 25 a4 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff6303a4]        # 93ec0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21370>
  a63b19:	03 63 ff 
  a63b1c:	62 c2 1d 48 7f c8    	vpermt2ps zmm17,zmm12,zmm8
  a63b22:	62 e1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm17
  a63b29:	06 
  a63b2a:	c4 e3 59 21 a4 17 ec 	vinsertps xmm4,xmm4,DWORD PTR [rdi+rdx*1+0x3ec],0x30
  a63b31:	03 00 00 30 
  a63b35:	62 f3 6d 48 18 d4 02 	vinsertf32x4 zmm2,zmm2,xmm4,0x2
  a63b3c:	62 e1 7c 48 28 1d ba 	vmovaps zmm19,ZMMWORD PTR [rip+0xffffffffff6303ba]        # 93f00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x213b0>
  a63b43:	03 63 ff 
  a63b46:	62 52 65 40 7f d8    	vpermt2ps zmm11,zmm19,zmm8
  a63b4c:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm11
  a63b53:	09 
  a63b54:	62 f2 fd c9 88 fa    	vexpandpd zmm7{k1}{z},zmm2
  a63b5a:	62 61 7c 48 28 dd    	vmovaps zmm27,zmm5
  a63b60:	62 f1 7c 48 10 a4 17 	vmovups zmm4,ZMMWORD PTR [rdi+rdx*1+0x3f0]
  a63b67:	f0 03 00 00 
  a63b6b:	62 e2 1d 48 7f e3    	vpermt2ps zmm20,zmm12,zmm3
  a63b71:	62 e1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm20
  a63b78:	08 
  a63b79:	c5 f8 10 94 17 50 04 	vmovups xmm2,XMMWORD PTR [rdi+rdx*1+0x450]
  a63b80:	00 00 
  a63b82:	c4 e3 69 21 94 17 54 	vinsertps xmm2,xmm2,DWORD PTR [rdi+rdx*1+0x454],0x10
  a63b89:	04 00 00 10 
  a63b8d:	62 62 65 40 7f e3    	vpermt2ps zmm28,zmm19,zmm3
  a63b93:	62 61 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm28
  a63b9a:	03 
  a63b9b:	c5 fc 10 9c 17 30 04 	vmovups ymm3,YMMWORD PTR [rdi+rdx*1+0x430]
  a63ba2:	00 00 
  a63ba4:	c4 62 79 18 84 17 58 	vbroadcastss xmm8,DWORD PTR [rdi+rdx*1+0x458]
  a63bab:	04 00 00 
  a63bae:	62 c2 1d 48 7f f2    	vpermt2ps zmm22,zmm12,zmm10
  a63bb4:	62 e1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm22
  a63bbb:	01 
  a63bbc:	c4 e3 39 0c d2 03    	vblendps xmm2,xmm8,xmm2,0x3
  a63bc2:	c4 e3 69 21 94 17 5c 	vinsertps xmm2,xmm2,DWORD PTR [rdi+rdx*1+0x45c],0x30
  a63bc9:	04 00 00 30 
  a63bcd:	62 42 65 40 7f fa    	vpermt2ps zmm31,zmm19,zmm10
  a63bd3:	62 f3 65 48 18 d2 02 	vinsertf32x4 zmm2,zmm3,xmm2,0x2
  a63bda:	62 72 fd c9 88 c2    	vexpandpd zmm8{k1}{z},zmm2
  a63be0:	62 e1 7c 48 28 cc    	vmovaps zmm17,zmm4
  a63be6:	62 81 7c 48 28 e6    	vmovaps zmm20,zmm30
  a63bec:	62 c2 1d 48 7f e5    	vpermt2ps zmm20,zmm12,zmm13
  a63bf2:	c5 f8 10 94 17 c0 04 	vmovups xmm2,XMMWORD PTR [rdi+rdx*1+0x4c0]
  a63bf9:	00 00 
  a63bfb:	c4 e3 69 21 94 17 c4 	vinsertps xmm2,xmm2,DWORD PTR [rdi+rdx*1+0x4c4],0x10
  a63c02:	04 00 00 10 
  a63c06:	62 42 65 40 7f f5    	vpermt2ps zmm30,zmm19,zmm13
  a63c0c:	62 61 7c 48 10 a4 17 	vmovups zmm28,ZMMWORD PTR [rdi+rdx*1+0x460]
  a63c13:	60 04 00 00 
  a63c17:	c4 e2 79 18 9c 17 c8 	vbroadcastss xmm3,DWORD PTR [rdi+rdx*1+0x4c8]
  a63c1e:	04 00 00 
  a63c21:	62 c2 1d 48 7f fe    	vpermt2ps zmm23,zmm12,zmm14
  a63c27:	62 e1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm23
  a63c2e:	05 
  a63c2f:	c4 e3 61 0c d2 03    	vblendps xmm2,xmm3,xmm2,0x3
  a63c35:	c4 e3 69 21 94 17 cc 	vinsertps xmm2,xmm2,DWORD PTR [rdi+rdx*1+0x4cc],0x30
  a63c3c:	04 00 00 30 
  a63c40:	62 42 65 40 7f ee    	vpermt2ps zmm29,zmm19,zmm14
  a63c46:	c5 fc 10 9c 17 a0 04 	vmovups ymm3,YMMWORD PTR [rdi+rdx*1+0x4a0]
  a63c4d:	00 00 
  a63c4f:	62 f3 65 48 18 d2 02 	vinsertf32x4 zmm2,zmm3,xmm2,0x2
  a63c56:	62 72 fd c9 88 ea    	vexpandpd zmm13{k1}{z},zmm2
  a63c5c:	62 62 1d 48 7f d1    	vpermt2ps zmm26,zmm12,zmm1
  a63c62:	62 11 7c 48 28 f4    	vmovaps zmm14,zmm28
  a63c68:	62 f1 7c 48 10 94 17 	vmovups zmm2,ZMMWORD PTR [rdi+rdx*1+0x4d0]
  a63c6f:	d0 04 00 00 
  a63c73:	c5 fc 10 9c 17 10 05 	vmovups ymm3,YMMWORD PTR [rdi+rdx*1+0x510]
  a63c7a:	00 00 
  a63c7c:	62 62 65 40 7f c9    	vpermt2ps zmm25,zmm19,zmm1
  a63c82:	c5 f8 10 8c 17 30 05 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x530]
  a63c89:	00 00 
  a63c8b:	c4 e3 71 21 8c 17 34 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x534],0x10
  a63c92:	05 00 00 10 
  a63c96:	62 52 1d 48 7f cf    	vpermt2ps zmm9,zmm12,zmm15
  a63c9c:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm9
  a63ca3:	04 
  a63ca4:	c4 62 79 18 94 17 38 	vbroadcastss xmm10,DWORD PTR [rdi+rdx*1+0x538]
  a63cab:	05 00 00 
  a63cae:	c4 e3 29 0c c9 03    	vblendps xmm1,xmm10,xmm1,0x3
  a63cb4:	62 42 65 40 7f c7    	vpermt2ps zmm24,zmm19,zmm15
  a63cba:	c4 e3 71 21 8c 17 3c 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x53c],0x30
  a63cc1:	05 00 00 30 
  a63cc5:	62 f3 65 48 18 c9 02 	vinsertf32x4 zmm1,zmm3,xmm1,0x2
  a63ccc:	62 e2 1d 48 7f d0    	vpermt2ps zmm18,zmm12,zmm0
  a63cd2:	62 72 fd c9 88 f9    	vexpandpd zmm15{k1}{z},zmm1
  a63cd8:	62 f1 7c 48 28 da    	vmovaps zmm3,zmm2
  a63cde:	62 f1 7c 48 10 74 17 	vmovups zmm6,ZMMWORD PTR [rdi+rdx*1+0x540]
  a63ce5:	15 
  a63ce6:	62 e2 65 40 7f c0    	vpermt2ps zmm16,zmm19,zmm0
  a63cec:	c5 f8 10 84 17 a0 05 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x5a0]
  a63cf3:	00 00 
  a63cf5:	c4 e3 79 21 84 17 a4 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x5a4],0x10
  a63cfc:	05 00 00 10 
  a63d00:	62 62 1d 48 7f df    	vpermt2ps zmm27,zmm12,zmm7
  a63d06:	c5 7c 10 94 17 80 05 	vmovups ymm10,YMMWORD PTR [rdi+rdx*1+0x580]
  a63d0d:	00 00 
  a63d0f:	c4 62 79 18 9c 17 a8 	vbroadcastss xmm11,DWORD PTR [rdi+rdx*1+0x5a8]
  a63d16:	05 00 00 
  a63d19:	62 f2 65 40 7f ef    	vpermt2ps zmm5,zmm19,zmm7
  a63d1f:	c4 e3 21 0c c0 03    	vblendps xmm0,xmm11,xmm0,0x3
  a63d25:	c4 e3 79 21 84 17 ac 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x5ac],0x30
  a63d2c:	05 00 00 30 
  a63d30:	62 c2 1d 48 7f c8    	vpermt2ps zmm17,zmm12,zmm8
  a63d36:	62 f3 2d 48 18 c0 02 	vinsertf32x4 zmm0,zmm10,xmm0,0x2
  a63d3d:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a63d43:	62 f1 7c 48 28 fe    	vmovaps zmm7,zmm6
  a63d49:	62 d2 65 40 7f e0    	vpermt2ps zmm4,zmm19,zmm8
  a63d4f:	c5 78 10 84 17 10 06 	vmovups xmm8,XMMWORD PTR [rdi+rdx*1+0x610]
  a63d56:	00 00 
  a63d58:	c4 63 39 21 84 17 14 	vinsertps xmm8,xmm8,DWORD PTR [rdi+rdx*1+0x614],0x10
  a63d5f:	06 00 00 10 
  a63d63:	62 52 1d 48 7f f5    	vpermt2ps zmm14,zmm12,zmm13
  a63d69:	62 71 7c 48 10 94 17 	vmovups zmm10,ZMMWORD PTR [rdi+rdx*1+0x5b0]
  a63d70:	b0 05 00 00 
  a63d74:	c4 62 79 18 9c 17 18 	vbroadcastss xmm11,DWORD PTR [rdi+rdx*1+0x618]
  a63d7b:	06 00 00 
  a63d7e:	62 42 65 40 7f e5    	vpermt2ps zmm28,zmm19,zmm13
  a63d84:	c4 43 21 0c c0 03    	vblendps xmm8,xmm11,xmm8,0x3
  a63d8a:	c4 63 39 21 84 17 1c 	vinsertps xmm8,xmm8,DWORD PTR [rdi+rdx*1+0x61c],0x30
  a63d91:	06 00 00 30 
  a63d95:	62 d2 1d 48 7f df    	vpermt2ps zmm3,zmm12,zmm15
  a63d9b:	c5 7c 10 9c 17 f0 05 	vmovups ymm11,YMMWORD PTR [rdi+rdx*1+0x5f0]
  a63da2:	00 00 
  a63da4:	62 53 25 48 18 c0 02 	vinsertf32x4 zmm8,zmm11,xmm8,0x2
  a63dab:	62 52 fd c9 88 d8    	vexpandpd zmm11{k1}{z},zmm8
  a63db1:	62 d2 65 40 7f d7    	vpermt2ps zmm2,zmm19,zmm15
  a63db7:	c5 78 10 84 17 80 06 	vmovups xmm8,XMMWORD PTR [rdi+rdx*1+0x680]
  a63dbe:	00 00 
  a63dc0:	c4 63 39 21 ac 17 84 	vinsertps xmm13,xmm8,DWORD PTR [rdi+rdx*1+0x684],0x10
  a63dc7:	06 00 00 10 
  a63dcb:	62 f2 1d 48 7f f8    	vpermt2ps zmm7,zmm12,zmm0
  a63dd1:	62 51 7c 48 28 c2    	vmovaps zmm8,zmm10
  a63dd7:	c4 62 79 18 bc 17 88 	vbroadcastss xmm15,DWORD PTR [rdi+rdx*1+0x688]
  a63dde:	06 00 00 
  a63de1:	62 f2 65 40 7f f0    	vpermt2ps zmm6,zmm19,zmm0
  a63de7:	62 e1 7c 48 10 ac 17 	vmovups zmm21,ZMMWORD PTR [rdi+rdx*1+0x620]
  a63dee:	20 06 00 00 
  a63df2:	c4 c3 01 0c c5 03    	vblendps xmm0,xmm15,xmm13,0x3
  a63df8:	c5 7c 10 ac 17 60 06 	vmovups ymm13,YMMWORD PTR [rdi+rdx*1+0x660]
  a63dff:	00 00 
  a63e01:	62 52 1d 48 7f c3    	vpermt2ps zmm8,zmm12,zmm11
  a63e07:	c4 e3 79 21 84 17 8c 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x68c],0x30
  a63e0e:	06 00 00 30 
  a63e12:	62 f3 15 48 18 c0 02 	vinsertf32x4 zmm0,zmm13,xmm0,0x2
  a63e19:	62 52 65 40 7f d3    	vpermt2ps zmm10,zmm19,zmm11
  a63e1f:	62 72 fd c9 88 d8    	vexpandpd zmm11{k1}{z},zmm0
  a63e25:	62 b1 7c 48 28 c5    	vmovaps zmm0,zmm21
  a63e2b:	62 d2 1d 48 7f c3    	vpermt2ps zmm0,zmm12,zmm11
  a63e31:	62 c2 65 40 7f eb    	vpermt2ps zmm21,zmm19,zmm11
  a63e37:	62 e1 5c 40 58 df    	vaddps zmm19,zmm20,zmm7
  a63e3d:	62 31 7c 48 28 ec    	vmovaps zmm13,zmm20
  a63e43:	62 81 54 48 58 ff    	vaddps zmm23,zmm5,zmm31
  a63e49:	62 11 54 48 5c df    	vsubps zmm11,zmm5,zmm31
  a63e4f:	62 a1 6c 48 58 e5    	vaddps zmm20,zmm2,zmm21
  a63e55:	62 31 6c 48 5c e5    	vsubps zmm12,zmm2,zmm21
  a63e5b:	62 a1 2c 48 58 e8    	vaddps zmm21,zmm10,zmm16
  a63e61:	62 31 2c 48 5c d0    	vsubps zmm10,zmm10,zmm16
  a63e67:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0xc0]
  a63e6e:	03 
  a63e6f:	62 81 74 48 58 f5    	vaddps zmm22,zmm1,zmm29
  a63e75:	62 81 74 48 5c c5    	vsubps zmm16,zmm1,zmm29
  a63e7b:	62 f1 0c 40 58 ce    	vaddps zmm1,zmm30,zmm6
  a63e81:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm1
  a63e88:	03 
  a63e89:	62 61 0c 40 5c f6    	vsubps zmm30,zmm30,zmm6
  a63e8f:	62 61 3c 40 58 ec    	vaddps zmm29,zmm24,zmm4
  a63e95:	62 61 3c 40 5c fc    	vsubps zmm31,zmm24,zmm4
  a63e9b:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x40]
  a63ea2:	01 
  a63ea3:	62 71 24 40 58 c9    	vaddps zmm9,zmm27,zmm1
  a63ea9:	62 f1 24 40 5c c9    	vsubps zmm1,zmm27,zmm1
  a63eaf:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm1
  a63eb6:	02 
  a63eb7:	62 f1 64 48 58 c8    	vaddps zmm1,zmm3,zmm0
  a63ebd:	62 f1 64 48 5c c0    	vsubps zmm0,zmm3,zmm0
  a63ec3:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm0
  a63eca:	07 
  a63ecb:	62 b1 3c 48 58 ea    	vaddps zmm5,zmm8,zmm18
  a63ed1:	62 21 3c 48 5c c2    	vsubps zmm24,zmm8,zmm18
  a63ed7:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x200]
  a63ede:	08 
  a63edf:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x140]
  a63ee6:	05 
  a63ee7:	62 71 7c 48 58 c2    	vaddps zmm8,zmm0,zmm2
  a63eed:	62 61 7c 48 5c da    	vsubps zmm27,zmm0,zmm2
  a63ef3:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x100]
  a63efa:	04 
  a63efb:	62 b1 6c 48 58 f1    	vaddps zmm6,zmm2,zmm17
  a63f01:	62 f1 14 48 5c c7    	vsubps zmm0,zmm13,zmm7
  a63f07:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm0
  a63f0e:	05 
  a63f0f:	62 d1 2c 40 58 c1    	vaddps zmm0,zmm26,zmm9
  a63f15:	62 b1 6c 48 5c d1    	vsubps zmm2,zmm2,zmm17
  a63f1b:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm2
  a63f22:	04 
  a63f23:	62 f2 7d 48 18 3d bb 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff6117bb]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a63f2a:	17 61 ff 
  a63f2d:	62 71 7c 48 28 ef    	vmovaps zmm13,zmm7
  a63f33:	62 12 35 48 a8 ea    	vfmadd213ps zmm13,zmm9,zmm26
  a63f39:	62 f1 7c 48 58 c1    	vaddps zmm0,zmm0,zmm1
  a63f3f:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm0
  a63f46:	08 
  a63f47:	62 f2 7d 48 18 05 f3 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff6116f3]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a63f4e:	16 61 ff 
  a63f51:	62 42 7d 48 bc d1    	vfnmadd231ps zmm26,zmm0,zmm9
  a63f57:	62 71 0c 48 58 cd    	vaddps zmm9,zmm14,zmm5
  a63f5d:	62 72 75 48 bc e8    	vfnmadd231ps zmm13,zmm1,zmm0
  a63f63:	62 62 45 48 b8 d1    	vfmadd231ps zmm26,zmm7,zmm1
  a63f69:	62 f2 7d 48 18 15 e5 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff6117e5]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a63f70:	17 61 ff 
  a63f73:	62 71 1c 48 59 fa    	vmulps zmm15,zmm12,zmm2
  a63f79:	62 f2 7d 48 18 1d 1d 	vbroadcastss zmm3,DWORD PTR [rip+0xffffffffff61141d]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a63f80:	14 61 ff 
  a63f83:	62 72 25 48 b8 fb    	vfmadd231ps zmm15,zmm11,zmm3
  a63f89:	62 e1 24 48 59 ca    	vmulps zmm17,zmm11,zmm2
  a63f8f:	62 d1 34 48 58 c8    	vaddps zmm1,zmm9,zmm8
  a63f95:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm1
  a63f9c:	01 
  a63f9d:	62 c2 65 48 bc cc    	vfnmadd231ps zmm17,zmm3,zmm12
  a63fa3:	62 f1 7c 48 28 e7    	vmovaps zmm4,zmm7
  a63fa9:	62 d2 55 48 a8 e6    	vfmadd213ps zmm4,zmm5,zmm14
  a63faf:	62 f2 3d 48 bc e0    	vfnmadd231ps zmm4,zmm8,zmm0
  a63fb5:	62 72 7d 48 bc f5    	vfnmadd231ps zmm14,zmm0,zmm5
  a63fbb:	62 71 7c 40 59 ca    	vmulps zmm9,zmm16,zmm2
  a63fc1:	62 72 2d 48 b8 cb    	vfmadd231ps zmm9,zmm10,zmm3
  a63fc7:	62 52 45 48 b8 f0    	vfmadd231ps zmm14,zmm7,zmm8
  a63fcd:	62 71 7c 48 28 c7    	vmovaps zmm8,zmm7
  a63fd3:	62 f1 2c 48 59 ea    	vmulps zmm5,zmm10,zmm2
  a63fd9:	62 b2 65 48 bc e8    	vfnmadd231ps zmm5,zmm3,zmm16
  a63fdf:	62 e1 7c 48 28 54 24 	vmovaps zmm18,ZMMWORD PTR [rsp+0x180]
  a63fe6:	06 
  a63fe7:	62 b1 6c 40 58 cb    	vaddps zmm1,zmm18,zmm19
  a63fed:	62 32 65 40 a8 c2    	vfmadd213ps zmm8,zmm19,zmm18
  a63ff3:	62 a2 7d 48 bc d3    	vfnmadd231ps zmm18,zmm0,zmm19
  a63ff9:	62 31 34 40 58 df    	vaddps zmm11,zmm25,zmm23
  a63fff:	62 f1 74 48 58 ce    	vaddps zmm1,zmm1,zmm6
  a64005:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm1
  a6400c:	06 
  a6400d:	62 72 4d 48 bc c0    	vfnmadd231ps zmm8,zmm6,zmm0
  a64013:	62 e2 45 48 b8 d6    	vfmadd231ps zmm18,zmm7,zmm6
  a64019:	62 f1 04 40 59 f2    	vmulps zmm6,zmm31,zmm2
  a6401f:	62 f2 0d 40 b8 f3    	vfmadd231ps zmm6,zmm30,zmm3
  a64025:	62 f1 0c 40 59 ca    	vmulps zmm1,zmm30,zmm2
  a6402b:	62 92 65 48 bc cf    	vfnmadd231ps zmm1,zmm3,zmm31
  a64031:	62 e1 7c 48 28 df    	vmovaps zmm19,zmm7
  a64037:	62 82 45 40 a8 d9    	vfmadd213ps zmm19,zmm23,zmm25
  a6403d:	62 22 7d 48 bc cf    	vfnmadd231ps zmm25,zmm0,zmm23
  a64043:	62 71 7c 48 28 d7    	vmovaps zmm10,zmm7
  a64049:	62 12 55 40 a8 d4    	vfmadd213ps zmm10,zmm21,zmm28
  a6404f:	62 31 1c 40 58 e5    	vaddps zmm12,zmm28,zmm21
  a64055:	62 22 7d 48 bc e5    	vfnmadd231ps zmm28,zmm0,zmm21
  a6405b:	62 31 24 48 58 dc    	vaddps zmm11,zmm11,zmm20
  a64061:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm11
  a64068:	0b 
  a64069:	62 e2 5d 40 bc d8    	vfnmadd231ps zmm19,zmm20,zmm0
  a6406f:	62 22 45 48 b8 cc    	vfmadd231ps zmm25,zmm7,zmm20
  a64075:	62 e1 7c 48 28 44 24 	vmovaps zmm16,ZMMWORD PTR [rsp+0x1c0]
  a6407c:	07 
  a6407d:	62 61 7c 40 59 f2    	vmulps zmm30,zmm16,zmm2
  a64083:	62 71 7c 48 28 5c 24 	vmovaps zmm11,ZMMWORD PTR [rsp+0x80]
  a6408a:	02 
  a6408b:	62 62 25 48 b8 f3    	vfmadd231ps zmm30,zmm11,zmm3
  a64091:	62 e1 24 48 59 ea    	vmulps zmm21,zmm11,zmm2
  a64097:	62 a2 65 48 bc e8    	vfnmadd231ps zmm21,zmm3,zmm16
  a6409d:	62 e1 7c 48 28 64 24 	vmovaps zmm20,ZMMWORD PTR [rsp+0x240]
  a640a4:	09 
  a640a5:	62 e1 7c 48 28 7c 24 	vmovaps zmm23,ZMMWORD PTR [rsp+0xc0]
  a640ac:	03 
  a640ad:	62 31 5c 40 58 df    	vaddps zmm11,zmm20,zmm23
  a640b3:	62 31 1c 48 58 e6    	vaddps zmm12,zmm12,zmm22
  a640b9:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm12
  a640c0:	02 
  a640c1:	62 72 4d 40 bc d0    	vfnmadd231ps zmm10,zmm22,zmm0
  a640c7:	62 22 45 48 b8 e6    	vfmadd231ps zmm28,zmm7,zmm22
  a640cd:	62 61 24 40 59 fa    	vmulps zmm31,zmm27,zmm2
  a640d3:	62 62 3d 40 b8 fb    	vfmadd231ps zmm31,zmm24,zmm3
  a640d9:	62 e1 3c 40 59 f2    	vmulps zmm22,zmm24,zmm2
  a640df:	62 11 24 48 58 dd    	vaddps zmm11,zmm11,zmm29
  a640e5:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm11
  a640ec:	07 
  a640ed:	62 82 65 48 bc f3    	vfnmadd231ps zmm22,zmm3,zmm27
  a640f3:	62 e1 7c 48 28 c7    	vmovaps zmm16,zmm7
  a640f9:	62 a2 45 40 a8 c4    	vfmadd213ps zmm16,zmm23,zmm20
  a640ff:	62 e2 15 40 bc c0    	vfnmadd231ps zmm16,zmm29,zmm0
  a64105:	62 a2 7d 48 bc e7    	vfnmadd231ps zmm20,zmm0,zmm23
  a6410b:	62 71 7c 48 28 5c 24 	vmovaps zmm11,ZMMWORD PTR [rsp+0x100]
  a64112:	04 
  a64113:	62 61 24 48 59 da    	vmulps zmm27,zmm11,zmm2
  a64119:	62 82 45 48 b8 e5    	vfmadd231ps zmm20,zmm7,zmm29
  a6411f:	62 b1 7c 48 28 fc    	vmovaps zmm7,zmm20
  a64125:	62 81 64 40 5c e6    	vsubps zmm20,zmm19,zmm30
  a6412b:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x140]
  a64132:	05 
  a64133:	62 62 7d 48 b8 db    	vfmadd231ps zmm27,zmm0,zmm3
  a64139:	62 61 7c 48 59 c2    	vmulps zmm24,zmm0,zmm2
  a6413f:	62 42 65 48 bc c3    	vfnmadd231ps zmm24,zmm3,zmm11
  a64145:	62 f1 6c 40 58 c1    	vaddps zmm0,zmm18,zmm1
  a6414b:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm0
  a64152:	0c 
  a64153:	62 f1 6c 40 5c c1    	vsubps zmm0,zmm18,zmm1
  a64159:	62 31 2c 40 58 e1    	vaddps zmm12,zmm26,zmm17
  a6415f:	62 21 2c 40 5c e9    	vsubps zmm29,zmm26,zmm17
  a64165:	62 61 0c 48 58 d5    	vaddps zmm26,zmm14,zmm5
  a6416b:	62 e1 0c 48 5c cd    	vsubps zmm17,zmm14,zmm5
  a64171:	62 91 44 48 5c c8    	vsubps zmm1,zmm7,zmm24
  a64177:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm1
  a6417e:	0d 
  a6417f:	62 e1 3c 40 58 d7    	vaddps zmm18,zmm24,zmm7
  a64185:	62 b1 34 40 5c cd    	vsubps zmm1,zmm25,zmm21
  a6418b:	62 01 54 40 58 c9    	vaddps zmm25,zmm21,zmm25
  a64191:	62 11 2c 48 5c f7    	vsubps zmm14,zmm10,zmm31
  a64197:	62 d1 5c 40 5c d6    	vsubps zmm2,zmm20,zmm14
  a6419d:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm2
  a641a4:	09 
  a641a5:	62 c1 5c 40 58 e6    	vaddps zmm20,zmm20,zmm14
  a641ab:	62 51 14 48 58 f7    	vaddps zmm14,zmm13,zmm15
  a641b1:	62 c1 5c 48 58 e9    	vaddps zmm21,zmm4,zmm9
  a641b7:	62 31 0c 48 58 dd    	vaddps zmm11,zmm14,zmm21
  a641bd:	62 b1 0c 48 5c d5    	vsubps zmm2,zmm14,zmm21
  a641c3:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm2
  a641ca:	04 
  a641cb:	62 31 1c 40 5c f6    	vsubps zmm14,zmm28,zmm22
  a641d1:	62 01 4c 40 58 e4    	vaddps zmm28,zmm22,zmm28
  a641d7:	62 c1 74 48 5c f6    	vsubps zmm22,zmm1,zmm14
  a641dd:	62 c1 74 48 58 ee    	vaddps zmm21,zmm1,zmm14
  a641e3:	62 d1 14 48 5c ff    	vsubps zmm7,zmm13,zmm15
  a641e9:	62 d1 5c 48 5c d1    	vsubps zmm2,zmm4,zmm9
  a641ef:	62 11 1c 48 58 f2    	vaddps zmm14,zmm12,zmm26
  a641f5:	62 91 1c 48 5c ca    	vsubps zmm1,zmm12,zmm26
  a641fb:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm1
  a64202:	03 
  a64203:	62 61 3c 48 58 d6    	vaddps zmm26,zmm8,zmm6
  a64209:	62 71 3c 48 5c ee    	vsubps zmm13,zmm8,zmm6
  a6420f:	62 31 0c 40 58 cb    	vaddps zmm9,zmm30,zmm19
  a64215:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x200]
  a6421c:	08 
  a6421d:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x40]
  a64224:	01 
  a64225:	62 71 64 48 58 c4    	vaddps zmm8,zmm3,zmm4
  a6422b:	62 51 04 40 58 d2    	vaddps zmm10,zmm31,zmm10
  a64231:	62 41 34 48 5c f2    	vsubps zmm30,zmm9,zmm10
  a64237:	62 41 34 48 58 fa    	vaddps zmm31,zmm9,zmm10
  a6423d:	62 11 7c 40 5c d3    	vsubps zmm10,zmm16,zmm27
  a64243:	62 a1 24 40 58 c0    	vaddps zmm16,zmm27,zmm16
  a64249:	62 e1 44 48 58 da    	vaddps zmm19,zmm7,zmm2
  a6424f:	62 61 44 48 5c c2    	vsubps zmm24,zmm7,zmm2
  a64255:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x180]
  a6425c:	06 
  a6425d:	62 51 74 48 58 c8    	vaddps zmm9,zmm1,zmm8
  a64263:	62 f2 7d 48 18 3d f3 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff6111f3]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a6426a:	11 61 ff 
  a6426d:	62 72 45 48 ac c1    	vfnmadd213ps zmm8,zmm7,zmm1
  a64273:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x2c0]
  a6427a:	0b 
  a6427b:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x80]
  a64282:	02 
  a64283:	62 61 74 48 58 da    	vaddps zmm27,zmm1,zmm2
  a64289:	62 f1 74 48 5c ea    	vsubps zmm5,zmm1,zmm2
  a6428f:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x1c0]
  a64296:	07 
  a64297:	62 91 6c 48 58 cb    	vaddps zmm1,zmm2,zmm27
  a6429d:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm1
  a642a4:	05 
  a642a5:	62 62 45 48 ac da    	vfnmadd213ps zmm27,zmm7,zmm2
  a642ab:	62 71 7c 48 28 ff    	vmovaps zmm15,zmm7
  a642b1:	62 71 64 48 5c e4    	vsubps zmm12,zmm3,zmm4
  a642b7:	62 12 25 48 ac fa    	vfnmadd213ps zmm15,zmm11,zmm26
  a642bd:	62 f1 7c 48 28 e7    	vmovaps zmm4,zmm7
  a642c3:	62 c1 2c 40 58 fb    	vaddps zmm23,zmm26,zmm11
  a642c9:	62 b1 14 40 58 d9    	vaddps zmm3,zmm29,zmm17
  a642cf:	62 d2 5d 40 ac e2    	vfnmadd213ps zmm4,zmm20,zmm10
  a642d5:	62 b1 2c 48 58 cc    	vaddps zmm1,zmm10,zmm20
  a642db:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm1
  a642e2:	06 
  a642e3:	62 71 7c 48 58 db    	vaddps zmm11,zmm0,zmm3
  a642e9:	62 f2 45 48 ac d8    	vfnmadd213ps zmm3,zmm7,zmm0
  a642ef:	62 91 34 40 58 cc    	vaddps zmm1,zmm25,zmm28
  a642f5:	62 01 34 40 5c e4    	vsubps zmm28,zmm25,zmm28
  a642fb:	62 f1 6c 40 58 c1    	vaddps zmm0,zmm18,zmm1
  a64301:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a64308:	01 
  a64309:	62 b2 45 48 ac ca    	vfnmadd213ps zmm1,zmm7,zmm18
  a6430f:	62 e1 7c 48 28 d7    	vmovaps zmm18,zmm7
  a64315:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x300]
  a6431c:	0c 
  a6431d:	62 e2 0d 48 ac d6    	vfnmadd213ps zmm18,zmm14,zmm6
  a64323:	62 21 14 40 5c e9    	vsubps zmm29,zmm29,zmm17
  a64329:	62 f1 7c 48 28 d7    	vmovaps zmm2,zmm7
  a6432f:	62 72 7d 48 18 15 9b 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff610f9b]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a64336:	0f 61 ff 
  a64339:	62 c1 4c 40 59 ca    	vmulps zmm17,zmm22,zmm10
  a6433f:	62 d2 65 40 ac d5    	vfnmadd213ps zmm2,zmm19,zmm13
  a64345:	62 21 14 48 58 cb    	vaddps zmm25,zmm13,zmm19
  a6434b:	62 a1 6c 40 5c e1    	vsubps zmm20,zmm18,zmm17
  a64351:	62 a1 6c 40 58 d9    	vaddps zmm19,zmm18,zmm17
  a64357:	62 f1 7c 48 28 c7    	vmovaps zmm0,zmm7
  a6435d:	62 b2 05 40 ac c0    	vfnmadd213ps zmm0,zmm31,zmm16
  a64363:	62 11 7c 40 58 ef    	vaddps zmm13,zmm16,zmm31
  a64369:	62 71 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm13
  a64370:	02 
  a64371:	62 71 7c 48 28 ef    	vmovaps zmm13,zmm7
  a64377:	62 e1 7c 48 28 4c 24 	vmovaps zmm17,ZMMWORD PTR [rsp+0x340]
  a6437e:	0d 
  a6437f:	62 32 55 40 ac e9    	vfnmadd213ps zmm13,zmm21,zmm17
  a64385:	62 e1 2c 48 59 44 24 	vmulps zmm16,zmm10,ZMMWORD PTR [rsp+0xc0]
  a6438c:	03 
  a6438d:	62 a1 14 48 58 d0    	vaddps zmm18,zmm13,zmm16
  a64393:	62 b1 14 48 5c f8    	vsubps zmm7,zmm13,zmm16
  a64399:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm7
  a643a0:	03 
  a643a1:	62 51 54 48 59 ea    	vmulps zmm13,zmm5,zmm10
  a643a7:	62 d1 3c 48 5c ed    	vsubps zmm5,zmm8,zmm13
  a643ad:	62 c1 3c 48 58 c5    	vaddps zmm16,zmm8,zmm13
  a643b3:	62 51 1c 48 59 c2    	vmulps zmm8,zmm12,zmm10
  a643b9:	62 91 3c 48 58 fb    	vaddps zmm7,zmm8,zmm27
  a643bf:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm7
  a643c6:	0e 
  a643c7:	62 d1 24 40 5c f8    	vsubps zmm7,zmm27,zmm8
  a643cd:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm7
  a643d4:	07 
  a643d5:	62 71 2c 48 59 44 24 	vmulps zmm8,zmm10,ZMMWORD PTR [rsp+0x240]
  a643dc:	09 
  a643dd:	62 c1 3c 48 58 f7    	vaddps zmm22,zmm8,zmm15
  a643e3:	62 51 04 48 5c e0    	vsubps zmm12,zmm15,zmm8
  a643e9:	62 71 2c 48 59 44 24 	vmulps zmm8,zmm10,ZMMWORD PTR [rsp+0x100]
  a643f0:	04 
  a643f1:	62 41 5c 48 5c d0    	vsubps zmm26,zmm4,zmm8
  a643f7:	62 d1 5c 48 58 e0    	vaddps zmm4,zmm4,zmm8
  a643fd:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm4
  a64404:	0a 
  a64405:	62 d1 0c 40 59 e2    	vmulps zmm4,zmm30,zmm10
  a6440b:	62 51 3c 40 59 fa    	vmulps zmm15,zmm24,zmm10
  a64411:	62 d1 4c 48 58 fe    	vaddps zmm7,zmm6,zmm14
  a64417:	62 61 5c 48 58 da    	vaddps zmm27,zmm4,zmm2
  a6441d:	62 51 1c 40 59 c2    	vmulps zmm8,zmm28,zmm10
  a64423:	62 51 14 40 59 f2    	vmulps zmm14,zmm29,zmm10
  a64429:	62 31 74 40 58 d5    	vaddps zmm10,zmm17,zmm21
  a6442f:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm10
  a64436:	0c 
  a64437:	62 c1 64 48 5c e8    	vsubps zmm21,zmm3,zmm8
  a6443d:	62 41 64 48 58 e0    	vaddps zmm28,zmm3,zmm8
  a64443:	62 51 74 48 58 c6    	vaddps zmm8,zmm1,zmm14
  a64449:	62 d1 74 48 5c ce    	vsubps zmm1,zmm1,zmm14
  a6444f:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm1
  a64456:	0d 
  a64457:	62 41 7c 48 5c ff    	vsubps zmm31,zmm0,zmm15
  a6445d:	62 f1 6c 48 5c cc    	vsubps zmm1,zmm2,zmm4
  a64463:	62 d1 7c 48 58 c7    	vaddps zmm0,zmm0,zmm15
  a64469:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm0
  a64470:	0b 
  a64471:	62 41 7c 48 28 c1    	vmovaps zmm24,zmm9
  a64477:	62 71 7c 48 28 15 ff 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff662aff]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a6447e:	2a 66 ff 
  a64481:	62 22 2d 48 7f c5    	vpermt2ps zmm24,zmm10,zmm21
  a64487:	62 71 7c 48 28 2d 2f 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff662b2f]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a6448e:	2b 66 ff 
  a64491:	62 32 15 48 7f cd    	vpermt2ps zmm9,zmm13,zmm21
  a64497:	62 b1 7c 48 28 de    	vmovaps zmm3,zmm22
  a6449d:	62 82 15 48 7f f1    	vpermt2ps zmm22,zmm13,zmm25
  a644a3:	62 92 2d 48 7f d9    	vpermt2ps zmm3,zmm10,zmm25
  a644a9:	62 21 7c 48 28 f4    	vmovaps zmm30,zmm20
  a644af:	62 a2 15 48 7f e0    	vpermt2ps zmm20,zmm13,zmm16
  a644b5:	62 51 7c 48 28 f3    	vmovaps zmm14,zmm11
  a644bb:	62 22 2d 48 7f f0    	vpermt2ps zmm30,zmm10,zmm16
  a644c1:	62 52 2d 48 7f f4    	vpermt2ps zmm14,zmm10,zmm12
  a644c7:	62 52 15 48 7f dc    	vpermt2ps zmm11,zmm13,zmm12
  a644cd:	62 f1 7c 48 28 c5    	vmovaps zmm0,zmm5
  a644d3:	62 91 7c 48 28 e3    	vmovaps zmm4,zmm27
  a644d9:	62 92 2d 48 7f c4    	vpermt2ps zmm0,zmm10,zmm28
  a644df:	62 92 15 48 7f ec    	vpermt2ps zmm5,zmm13,zmm28
  a644e5:	62 31 7c 48 28 e7    	vmovaps zmm12,zmm23
  a644eb:	62 62 15 48 7f df    	vpermt2ps zmm27,zmm13,zmm7
  a644f1:	62 72 2d 48 7f e1    	vpermt2ps zmm12,zmm10,zmm1
  a644f7:	62 e2 15 48 7f f9    	vpermt2ps zmm23,zmm13,zmm1
  a644fd:	62 b1 7c 48 28 cb    	vmovaps zmm1,zmm19
  a64503:	62 f2 2d 48 7f e7    	vpermt2ps zmm4,zmm10,zmm7
  a64509:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a6450d:	62 f2 2d 48 7f ca    	vpermt2ps zmm1,zmm10,zmm2
  a64513:	62 e2 15 48 7f da    	vpermt2ps zmm19,zmm13,zmm2
  a64519:	62 81 7c 48 28 c8    	vmovaps zmm17,zmm24
  a6451f:	62 61 7c 48 28 0d d7 	vmovaps zmm25,ZMMWORD PTR [rip+0xffffffffff6629d7]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a64526:	29 66 ff 
  a64529:	62 e2 35 40 7f cc    	vpermt2ps zmm17,zmm25,zmm4
  a6452f:	62 e1 7c 48 28 05 07 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff662a07]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a64536:	2a 66 ff 
  a64539:	62 62 7d 40 7f c4    	vpermt2ps zmm24,zmm16,zmm4
  a6453f:	62 51 7c 48 28 fe    	vmovaps zmm15,zmm14
  a64545:	62 72 35 40 7f f9    	vpermt2ps zmm15,zmm25,zmm1
  a6454b:	62 72 7d 40 7f f1    	vpermt2ps zmm14,zmm16,zmm1
  a64551:	62 41 7c 48 28 e1    	vmovaps zmm28,zmm9
  a64557:	62 02 35 40 7f e3    	vpermt2ps zmm28,zmm25,zmm27
  a6455d:	62 12 7d 40 7f cb    	vpermt2ps zmm9,zmm16,zmm27
  a64563:	62 21 7c 48 28 de    	vmovaps zmm27,zmm22
  a64569:	62 62 35 40 7f dd    	vpermt2ps zmm27,zmm25,zmm5
  a6456f:	62 e2 7d 40 7f f5    	vpermt2ps zmm22,zmm16,zmm5
  a64575:	62 b1 7c 48 28 d4    	vmovaps zmm2,zmm20
  a6457b:	62 b2 35 40 7f d7    	vpermt2ps zmm2,zmm25,zmm23
  a64581:	62 a2 7d 40 7f e7    	vpermt2ps zmm20,zmm16,zmm23
  a64587:	62 e1 7c 48 28 eb    	vmovaps zmm21,zmm3
  a6458d:	62 f2 7d 40 7f d8    	vpermt2ps zmm3,zmm16,zmm0
  a64593:	62 e2 35 40 7f e8    	vpermt2ps zmm21,zmm25,zmm0
  a64599:	62 01 7c 48 28 ee    	vmovaps zmm29,zmm30
  a6459f:	62 b1 b5 48 14 c4    	vunpcklpd zmm0,zmm9,zmm20
  a645a5:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm0
  a645ac:	09 
  a645ad:	62 51 7c 48 28 cb    	vmovaps zmm9,zmm11
  a645b3:	62 42 7d 40 7f f4    	vpermt2ps zmm30,zmm16,zmm12
  a645b9:	62 32 35 40 7f cb    	vpermt2ps zmm9,zmm25,zmm19
  a645bf:	62 32 7d 40 7f db    	vpermt2ps zmm11,zmm16,zmm19
  a645c5:	62 d1 cd 40 14 f3    	vunpcklpd zmm6,zmm22,zmm11
  a645cb:	62 42 35 40 7f ec    	vpermt2ps zmm29,zmm25,zmm12
  a645d1:	62 91 bd 40 14 c6    	vunpcklpd zmm0,zmm24,zmm30
  a645d7:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm0
  a645de:	08 
  a645df:	62 91 bd 40 15 c6    	vunpckhpd zmm0,zmm24,zmm30
  a645e5:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  a645ec:	04 
  a645ed:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x140]
  a645f4:	05 
  a645f5:	62 f1 7c 48 28 c5    	vmovaps zmm0,zmm5
  a645fb:	62 c1 e5 48 14 f6    	vunpcklpd zmm22,zmm3,zmm14
  a64601:	62 d2 2d 48 7f c0    	vpermt2ps zmm0,zmm10,zmm8
  a64607:	62 d2 15 48 7f e8    	vpermt2ps zmm5,zmm13,zmm8
  a6460d:	62 81 7c 48 28 da    	vmovaps zmm19,zmm26
  a64613:	62 41 e5 48 15 f6    	vunpckhpd zmm30,zmm3,zmm14
  a64619:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x80]
  a64620:	02 
  a64621:	62 e2 2d 48 7f d9    	vpermt2ps zmm19,zmm10,zmm1
  a64627:	62 62 15 48 7f d1    	vpermt2ps zmm26,zmm13,zmm1
  a6462d:	62 b1 7c 48 28 e2    	vmovaps zmm4,zmm18
  a64633:	62 f1 9d 40 14 ca    	vunpcklpd zmm1,zmm28,zmm2
  a64639:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm1
  a64640:	02 
  a64641:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x1c0]
  a64648:	07 
  a64649:	62 f2 2d 48 7f e1    	vpermt2ps zmm4,zmm10,zmm1
  a6464f:	62 e2 15 48 7f d1    	vpermt2ps zmm18,zmm13,zmm1
  a64655:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x40]
  a6465c:	01 
  a6465d:	62 61 7c 48 28 c7    	vmovaps zmm24,zmm7
  a64663:	62 f1 9d 40 15 ca    	vunpckhpd zmm1,zmm28,zmm2
  a64669:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm1
  a64670:	05 
  a64671:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x280]
  a64678:	0a 
  a64679:	62 62 2d 48 7f c1    	vpermt2ps zmm24,zmm10,zmm1
  a6467f:	62 f2 15 48 7f f9    	vpermt2ps zmm7,zmm13,zmm1
  a64685:	62 f1 7c 48 28 cf    	vmovaps zmm1,zmm7
  a6468b:	62 91 7c 48 28 ff    	vmovaps zmm7,zmm31
  a64691:	62 c1 a5 40 14 e1    	vunpcklpd zmm20,zmm27,zmm9
  a64697:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x300]
  a6469e:	0c 
  a6469f:	62 f2 2d 48 7f fa    	vpermt2ps zmm7,zmm10,zmm2
  a646a5:	62 62 15 48 7f fa    	vpermt2ps zmm31,zmm13,zmm2
  a646ab:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x380]
  a646b2:	0e 
  a646b3:	62 71 7c 48 28 c3    	vmovaps zmm8,zmm3
  a646b9:	62 41 a5 40 15 d9    	vunpckhpd zmm27,zmm27,zmm9
  a646bf:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x340]
  a646c6:	0d 
  a646c7:	62 72 2d 48 7f c2    	vpermt2ps zmm8,zmm10,zmm2
  a646cd:	62 f2 15 48 7f da    	vpermt2ps zmm3,zmm13,zmm2
  a646d3:	62 e1 7c 48 28 fb    	vmovaps zmm23,zmm3
  a646d9:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x180]
  a646e0:	06 
  a646e1:	62 71 7c 48 28 da    	vmovaps zmm11,zmm2
  a646e7:	62 01 f5 40 14 e5    	vunpcklpd zmm28,zmm17,zmm29
  a646ed:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x2c0]
  a646f4:	0b 
  a646f5:	62 72 2d 48 7f db    	vpermt2ps zmm11,zmm10,zmm3
  a646fb:	62 f2 15 48 7f d3    	vpermt2ps zmm2,zmm13,zmm3
  a64701:	62 f1 7c 48 28 da    	vmovaps zmm3,zmm2
  a64707:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0xc0]
  a6470e:	03 
  a6470f:	62 d1 7c 48 28 d1    	vmovaps zmm2,zmm9
  a64715:	62 11 f5 40 15 e5    	vunpckhpd zmm12,zmm17,zmm29
  a6471b:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm12
  a64722:	06 
  a64723:	c4 41 18 57 e4       	vxorps xmm12,xmm12,xmm12
  a64728:	62 d2 2d 48 7f d4    	vpermt2ps zmm2,zmm10,zmm12
  a6472e:	62 52 15 48 7f cc    	vpermt2ps zmm9,zmm13,zmm12
  a64734:	62 71 7c 48 28 e0    	vmovaps zmm12,zmm0
  a6473a:	62 41 d5 40 14 ef    	vunpcklpd zmm29,zmm21,zmm15
  a64740:	62 72 35 40 7f e7    	vpermt2ps zmm12,zmm25,zmm7
  a64746:	62 f2 7d 40 7f c7    	vpermt2ps zmm0,zmm16,zmm7
  a6474c:	62 b1 7c 48 28 fb    	vmovaps zmm7,zmm19
  a64752:	62 51 d5 40 15 ef    	vunpckhpd zmm13,zmm21,zmm15
  a64758:	62 d2 35 40 7f f8    	vpermt2ps zmm7,zmm25,zmm8
  a6475e:	62 c2 7d 40 7f d8    	vpermt2ps zmm19,zmm16,zmm8
  a64764:	62 71 7c 48 28 c4    	vmovaps zmm8,zmm4
  a6476a:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x240]
  a64771:	09 
  a64772:	62 51 7c 48 28 fa    	vmovaps zmm15,zmm10
  a64778:	62 52 35 40 7f c3    	vpermt2ps zmm8,zmm25,zmm11
  a6477e:	62 d2 7d 40 7f e3    	vpermt2ps zmm4,zmm16,zmm11
  a64784:	62 11 7c 48 28 f0    	vmovaps zmm14,zmm24
  a6478a:	62 e1 7c 48 28 0d ac 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff6626ac]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a64791:	26 66 ff 
  a64794:	62 72 75 40 7f d6    	vpermt2ps zmm10,zmm17,zmm6
  a6479a:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm10
  a647a1:	09 
  a647a2:	62 72 35 40 7f f2    	vpermt2ps zmm14,zmm25,zmm2
  a647a8:	62 62 7d 40 7f c2    	vpermt2ps zmm24,zmm16,zmm2
  a647ae:	62 f1 7c 48 28 d5    	vmovaps zmm2,zmm5
  a647b4:	62 71 7c 48 28 1d 42 	vmovaps zmm11,ZMMWORD PTR [rip+0xffffffffff662642]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a647bb:	26 66 ff 
  a647be:	62 72 25 48 7f fe    	vpermt2ps zmm15,zmm11,zmm6
  a647c4:	62 71 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm15
  a647cb:	0a 
  a647cc:	62 92 35 40 7f d7    	vpermt2ps zmm2,zmm25,zmm31
  a647d2:	62 92 7d 40 7f ef    	vpermt2ps zmm5,zmm16,zmm31
  a647d8:	62 91 7c 48 28 f2    	vmovaps zmm6,zmm26
  a647de:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x200]
  a647e5:	08 
  a647e6:	62 41 7c 48 28 fa    	vmovaps zmm31,zmm10
  a647ec:	62 b2 35 40 7f f7    	vpermt2ps zmm6,zmm25,zmm23
  a647f2:	62 22 7d 40 7f d7    	vpermt2ps zmm26,zmm16,zmm23
  a647f8:	62 31 7c 48 28 fa    	vmovaps zmm15,zmm18
  a647fe:	62 32 75 40 7f d6    	vpermt2ps zmm10,zmm17,zmm22
  a64804:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm10
  a6480b:	08 
  a6480c:	62 72 35 40 7f fb    	vpermt2ps zmm15,zmm25,zmm3
  a64812:	62 e2 7d 40 7f d3    	vpermt2ps zmm18,zmm16,zmm3
  a64818:	62 b1 d5 48 14 da    	vunpcklpd zmm3,zmm5,zmm18
  a6481e:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm3
  a64825:	01 
  a64826:	62 81 7c 48 28 fc    	vmovaps zmm23,zmm28
  a6482c:	62 71 7c 48 28 d1    	vmovaps zmm10,zmm1
  a64832:	62 52 35 40 7f d1    	vpermt2ps zmm10,zmm25,zmm9
  a64838:	62 d2 7d 40 7f c9    	vpermt2ps zmm1,zmm16,zmm9
  a6483e:	62 02 75 40 7f e5    	vpermt2ps zmm28,zmm17,zmm29
  a64844:	62 61 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm28
  a6484b:	03 
  a6484c:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x100]
  a64853:	04 
  a64854:	62 f1 7c 48 28 dd    	vmovaps zmm3,zmm5
  a6485a:	62 92 75 40 7f ee    	vpermt2ps zmm5,zmm17,zmm30
  a64860:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm5
  a64867:	04 
  a64868:	62 61 ad 40 14 d1    	vunpcklpd zmm26,zmm26,zmm1
  a6486e:	62 22 25 48 7f fe    	vpermt2ps zmm31,zmm11,zmm22
  a64874:	62 41 9d 48 14 c8    	vunpcklpd zmm25,zmm12,zmm8
  a6487a:	62 c1 9d 48 15 d0    	vunpckhpd zmm18,zmm12,zmm8
  a64880:	62 51 c5 48 14 e6    	vunpcklpd zmm12,zmm7,zmm14
  a64886:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x180]
  a6488d:	06 
  a6488e:	62 71 7c 48 28 cd    	vmovaps zmm9,zmm5
  a64894:	62 d1 c5 48 15 fe    	vunpckhpd zmm7,zmm7,zmm14
  a6489a:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x80]
  a648a1:	02 
  a648a2:	62 e1 7c 48 28 c1    	vmovaps zmm16,zmm1
  a648a8:	62 b2 75 40 7f cc    	vpermt2ps zmm1,zmm17,zmm20
  a648ae:	62 71 7c 48 28 c1    	vmovaps zmm8,zmm1
  a648b4:	62 92 25 48 7f de    	vpermt2ps zmm3,zmm11,zmm30
  a648ba:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm3
  a648c1:	07 
  a648c2:	62 f1 fd 48 14 dc    	vunpcklpd zmm3,zmm0,zmm4
  a648c8:	62 e1 fd 48 15 f4    	vunpckhpd zmm22,zmm0,zmm4
  a648ce:	62 91 e5 40 14 c0    	vunpcklpd zmm0,zmm19,zmm24
  a648d4:	62 d2 75 40 7f ed    	vpermt2ps zmm5,zmm17,zmm13
  a648da:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm5
  a648e1:	06 
  a648e2:	62 81 e5 40 15 d8    	vunpckhpd zmm19,zmm19,zmm24
  a648e8:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x140]
  a648ef:	05 
  a648f0:	62 61 7c 48 28 e1    	vmovaps zmm28,zmm1
  a648f6:	62 92 75 40 7f cb    	vpermt2ps zmm1,zmm17,zmm27
  a648fc:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm1
  a64903:	05 
  a64904:	62 a2 25 48 7f c4    	vpermt2ps zmm16,zmm11,zmm20
  a6490a:	62 c1 ed 48 14 ef    	vunpcklpd zmm21,zmm2,zmm15
  a64910:	62 d1 ed 48 15 d7    	vunpckhpd zmm2,zmm2,zmm15
  a64916:	62 51 cd 48 14 fa    	vunpcklpd zmm15,zmm6,zmm10
  a6491c:	62 02 25 48 7f e3    	vpermt2ps zmm28,zmm11,zmm27
  a64922:	62 d1 cd 48 15 f2    	vunpckhpd zmm6,zmm6,zmm10
  a64928:	62 01 7c 48 28 c1    	vmovaps zmm24,zmm25
  a6492e:	62 f1 7c 48 28 e3    	vmovaps zmm4,zmm3
  a64934:	62 42 75 40 7f cc    	vpermt2ps zmm25,zmm17,zmm12
  a6493a:	62 f2 25 48 7f e0    	vpermt2ps zmm4,zmm11,zmm0
  a64940:	62 f2 75 40 7f d8    	vpermt2ps zmm3,zmm17,zmm0
  a64946:	62 b1 7c 48 28 ce    	vmovaps zmm1,zmm22
  a6494c:	62 b2 25 48 7f cb    	vpermt2ps zmm1,zmm11,zmm19
  a64952:	62 a2 75 40 7f f3    	vpermt2ps zmm22,zmm17,zmm19
  a64958:	62 a1 7c 48 28 da    	vmovaps zmm19,zmm18
  a6495e:	62 e2 75 40 7f d7    	vpermt2ps zmm18,zmm17,zmm7
  a64964:	62 82 25 48 7f fd    	vpermt2ps zmm23,zmm11,zmm29
  a6496a:	62 e1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm23
  a64971:	02 
  a64972:	62 31 7c 48 28 d5    	vmovaps zmm10,zmm21
  a64978:	62 52 25 48 7f d7    	vpermt2ps zmm10,zmm11,zmm15
  a6497e:	62 c2 75 40 7f ef    	vpermt2ps zmm21,zmm17,zmm15
  a64984:	62 52 25 48 7f cd    	vpermt2ps zmm9,zmm11,zmm13
  a6498a:	62 51 7c 48 28 f9    	vmovaps zmm15,zmm9
  a64990:	62 e1 7c 48 28 e2    	vmovaps zmm20,zmm2
  a64996:	62 e2 25 48 7f e6    	vpermt2ps zmm20,zmm11,zmm6
  a6499c:	62 f2 75 40 7f d6    	vpermt2ps zmm2,zmm17,zmm6
  a649a2:	62 42 25 48 7f c4    	vpermt2ps zmm24,zmm11,zmm12
  a649a8:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x40]
  a649af:	01 
  a649b0:	62 f1 7c 48 28 c5    	vmovaps zmm0,zmm5
  a649b6:	62 92 25 48 7f c2    	vpermt2ps zmm0,zmm11,zmm26
  a649bc:	62 92 75 40 7f ea    	vpermt2ps zmm5,zmm17,zmm26
  a649c2:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm5
  a649c9:	01 
  a649ca:	62 e2 25 48 7f df    	vpermt2ps zmm19,zmm11,zmm7
  a649d0:	62 f1 7c 48 10 69 02 	vmovups zmm5,ZMMWORD PTR [rcx+0x80]
  a649d7:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm5
  a649de:	0b 
  a649df:	62 f1 7c 48 10 71 18 	vmovups zmm6,ZMMWORD PTR [rcx+0x600]
  a649e6:	62 71 7c 48 10 49 19 	vmovups zmm9,ZMMWORD PTR [rcx+0x640]
  a649ed:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x280]
  a649f4:	0a 
  a649f5:	62 e1 54 48 59 fe    	vmulps zmm23,zmm5,zmm6
  a649fb:	62 c2 7d 48 bc f9    	vfnmadd231ps zmm23,zmm0,zmm9
  a64a01:	62 71 7c 48 59 de    	vmulps zmm11,zmm0,zmm6
  a64a07:	62 f1 7c 48 10 41 0e 	vmovups zmm0,ZMMWORD PTR [rcx+0x380]
  a64a0e:	62 72 35 48 b8 dd    	vfmadd231ps zmm11,zmm9,zmm5
  a64a14:	62 f1 7c 48 10 71 0f 	vmovups zmm6,ZMMWORD PTR [rcx+0x3c0]
  a64a1b:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x100]
  a64a22:	04 
  a64a23:	62 61 54 48 59 d0    	vmulps zmm26,zmm5,zmm0
  a64a29:	62 61 4c 40 59 d8    	vmulps zmm27,zmm22,zmm0
  a64a2f:	62 62 4d 40 bc d6    	vfnmadd231ps zmm26,zmm22,zmm6
  a64a35:	62 f1 7c 48 10 41 08 	vmovups zmm0,ZMMWORD PTR [rcx+0x200]
  a64a3c:	62 62 4d 48 b8 dd    	vfmadd231ps zmm27,zmm6,zmm5
  a64a42:	62 f1 7c 48 10 69 09 	vmovups zmm5,ZMMWORD PTR [rcx+0x240]
  a64a49:	62 71 04 40 59 e0    	vmulps zmm12,zmm31,zmm0
  a64a4f:	62 72 5d 48 bc e5    	vfnmadd231ps zmm12,zmm4,zmm5
  a64a55:	62 71 5c 48 59 e8    	vmulps zmm13,zmm4,zmm0
  a64a5b:	62 f1 7c 48 10 41 12 	vmovups zmm0,ZMMWORD PTR [rcx+0x480]
  a64a62:	62 12 55 48 b8 ef    	vfmadd231ps zmm13,zmm5,zmm31
  a64a68:	62 f1 7c 48 10 69 13 	vmovups zmm5,ZMMWORD PTR [rcx+0x4c0]
  a64a6f:	62 71 3c 48 59 f0    	vmulps zmm14,zmm8,zmm0
  a64a75:	62 f1 54 40 59 f8    	vmulps zmm7,zmm21,zmm0
  a64a7b:	62 72 55 40 bc f5    	vfnmadd231ps zmm14,zmm21,zmm5
  a64a81:	62 f1 7c 48 10 41 14 	vmovups zmm0,ZMMWORD PTR [rcx+0x500]
  a64a88:	62 d2 55 48 b8 f8    	vfmadd231ps zmm7,zmm5,zmm8
  a64a8e:	62 f1 7c 48 10 71 15 	vmovups zmm6,ZMMWORD PTR [rcx+0x540]
  a64a95:	62 71 1c 40 59 c0    	vmulps zmm8,zmm28,zmm0
  a64a9b:	62 72 5d 40 bc c6    	vfnmadd231ps zmm8,zmm20,zmm6
  a64aa1:	62 61 5c 40 59 f0    	vmulps zmm30,zmm20,zmm0
  a64aa7:	62 f1 7c 48 10 41 0a 	vmovups zmm0,ZMMWORD PTR [rcx+0x280]
  a64aae:	62 02 4d 48 b8 f4    	vfmadd231ps zmm30,zmm6,zmm28
  a64ab4:	62 f1 7c 48 10 71 0b 	vmovups zmm6,ZMMWORD PTR [rcx+0x2c0]
  a64abb:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x200]
  a64ac2:	08 
  a64ac3:	62 71 5c 48 59 c8    	vmulps zmm9,zmm4,zmm0
  a64ac9:	62 61 64 48 59 e8    	vmulps zmm29,zmm3,zmm0
  a64acf:	62 72 65 48 bc ce    	vfnmadd231ps zmm9,zmm3,zmm6
  a64ad5:	62 f1 7c 48 10 41 0c 	vmovups zmm0,ZMMWORD PTR [rcx+0x300]
  a64adc:	62 62 4d 48 b8 ec    	vfmadd231ps zmm29,zmm6,zmm4
  a64ae2:	62 f1 7c 48 10 59 0d 	vmovups zmm3,ZMMWORD PTR [rcx+0x340]
  a64ae9:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x1c0]
  a64af0:	07 
  a64af1:	62 e1 5c 48 59 e0    	vmulps zmm20,zmm4,zmm0
  a64af7:	62 e2 75 48 bc e3    	vfnmadd231ps zmm20,zmm1,zmm3
  a64afd:	62 61 74 48 59 e0    	vmulps zmm28,zmm1,zmm0
  a64b03:	62 f1 7c 48 10 41 16 	vmovups zmm0,ZMMWORD PTR [rcx+0x580]
  a64b0a:	62 62 65 48 b8 e4    	vfmadd231ps zmm28,zmm3,zmm4
  a64b10:	62 f1 7c 48 10 59 17 	vmovups zmm3,ZMMWORD PTR [rcx+0x5c0]
  a64b17:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x140]
  a64b1e:	05 
  a64b1f:	62 f1 74 48 59 f0    	vmulps zmm6,zmm1,zmm0
  a64b25:	62 f1 6c 48 59 e0    	vmulps zmm4,zmm2,zmm0
  a64b2b:	62 f2 6d 48 bc f3    	vfnmadd231ps zmm6,zmm2,zmm3
  a64b31:	62 f1 7c 48 10 41 10 	vmovups zmm0,ZMMWORD PTR [rcx+0x400]
  a64b38:	62 f2 65 48 b8 e1    	vfmadd231ps zmm4,zmm3,zmm1
  a64b3e:	62 f1 7c 48 10 51 11 	vmovups zmm2,ZMMWORD PTR [rcx+0x440]
  a64b45:	62 61 7c 40 59 f8    	vmulps zmm31,zmm16,zmm0
  a64b4b:	62 62 2d 48 bc fa    	vfnmadd231ps zmm31,zmm10,zmm2
  a64b51:	62 71 2c 48 59 d0    	vmulps zmm10,zmm10,zmm0
  a64b57:	62 f1 7c 48 10 41 06 	vmovups zmm0,ZMMWORD PTR [rcx+0x180]
  a64b5e:	62 32 6d 48 b8 d0    	vfmadd231ps zmm10,zmm2,zmm16
  a64b64:	62 f1 7c 48 10 51 07 	vmovups zmm2,ZMMWORD PTR [rcx+0x1c0]
  a64b6b:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x180]
  a64b72:	06 
  a64b73:	62 f1 64 48 59 e8    	vmulps zmm5,zmm3,zmm0
  a64b79:	62 f1 6c 40 59 c8    	vmulps zmm1,zmm18,zmm0
  a64b7f:	62 f2 6d 40 bc ea    	vfnmadd231ps zmm5,zmm18,zmm2
  a64b85:	62 e1 7c 48 10 49 04 	vmovups zmm17,ZMMWORD PTR [rcx+0x100]
  a64b8c:	62 f2 6d 48 b8 cb    	vfmadd231ps zmm1,zmm2,zmm3
  a64b92:	62 f1 7c 48 10 51 05 	vmovups zmm2,ZMMWORD PTR [rcx+0x140]
  a64b99:	62 b1 04 48 59 d9    	vmulps zmm3,zmm15,zmm17
  a64b9f:	62 f2 65 40 bc da    	vfnmadd231ps zmm3,zmm19,zmm2
  a64ba5:	62 a1 64 40 59 d9    	vmulps zmm19,zmm19,zmm17
  a64bab:	62 e1 7c 48 10 49 1a 	vmovups zmm17,ZMMWORD PTR [rcx+0x680]
  a64bb2:	62 c2 6d 48 b8 df    	vfmadd231ps zmm19,zmm2,zmm15
  a64bb8:	62 e1 7c 48 10 51 1b 	vmovups zmm18,ZMMWORD PTR [rcx+0x6c0]
  a64bbf:	62 71 7c 48 28 7c 24 	vmovaps zmm15,ZMMWORD PTR [rsp+0x240]
  a64bc6:	09 
  a64bc7:	62 b1 04 48 59 d1    	vmulps zmm2,zmm15,zmm17
  a64bcd:	62 e1 7c 48 28 44 24 	vmovaps zmm16,ZMMWORD PTR [rsp+0x40]
  a64bd4:	01 
  a64bd5:	62 b1 7c 40 59 c1    	vmulps zmm0,zmm16,zmm17
  a64bdb:	62 b2 7d 40 bc d2    	vfnmadd231ps zmm2,zmm16,zmm18
  a64be1:	62 e1 7c 48 10 49 03 	vmovups zmm17,ZMMWORD PTR [rcx+0xc0]
  a64be8:	62 d2 6d 40 b8 c7    	vfmadd231ps zmm0,zmm18,zmm15
  a64bee:	62 e1 7c 48 28 54 24 	vmovaps zmm18,ZMMWORD PTR [rsp+0xc0]
  a64bf5:	03 
  a64bf6:	62 71 7c 48 28 7c 24 	vmovaps zmm15,ZMMWORD PTR [rsp+0x2c0]
  a64bfd:	0b 
  a64bfe:	62 c1 6c 40 59 c7    	vmulps zmm16,zmm18,zmm15
  a64c04:	62 c1 1c 48 58 f0    	vaddps zmm22,zmm12,zmm8
  a64c0a:	62 a2 35 40 bc c1    	vfnmadd231ps zmm16,zmm25,zmm17
  a64c10:	62 51 34 40 59 ff    	vmulps zmm15,zmm25,zmm15
  a64c16:	62 32 75 40 b8 fa    	vfmadd231ps zmm15,zmm17,zmm18
  a64c1c:	62 81 5c 40 58 cf    	vaddps zmm17,zmm20,zmm31
  a64c22:	62 e1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm17
  a64c29:	01 
  a64c2a:	62 c1 0c 48 58 e9    	vaddps zmm21,zmm14,zmm9
  a64c30:	62 c1 1c 40 58 ca    	vaddps zmm17,zmm28,zmm10
  a64c36:	62 e1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm17
  a64c3d:	08 
  a64c3e:	62 51 1c 40 5c d2    	vsubps zmm10,zmm28,zmm10
  a64c44:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm10
  a64c4b:	05 
  a64c4c:	62 c1 64 40 58 cb    	vaddps zmm17,zmm19,zmm11
  a64c52:	62 41 64 40 5c cb    	vsubps zmm25,zmm19,zmm11
  a64c58:	62 81 14 48 58 de    	vaddps zmm19,zmm13,zmm30
  a64c5e:	62 01 14 48 5c e6    	vsubps zmm28,zmm13,zmm30
  a64c64:	62 51 7c 48 58 d7    	vaddps zmm10,zmm0,zmm15
  a64c6a:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm10
  a64c71:	09 
  a64c72:	62 51 7c 48 5c ef    	vsubps zmm13,zmm0,zmm15
  a64c78:	62 01 44 48 58 f5    	vaddps zmm30,zmm7,zmm29
  a64c7e:	62 11 44 48 5c fd    	vsubps zmm15,zmm7,zmm29
  a64c84:	62 f1 5c 48 58 c1    	vaddps zmm0,zmm4,zmm1
  a64c8a:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm0
  a64c91:	06 
  a64c92:	62 61 5c 48 5c e9    	vsubps zmm29,zmm4,zmm1
  a64c98:	62 f1 4c 48 58 e5    	vaddps zmm4,zmm6,zmm5
  a64c9e:	62 91 5c 40 5c c7    	vsubps zmm0,zmm20,zmm31
  a64ca4:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm0
  a64cab:	03 
  a64cac:	62 b1 64 48 58 c7    	vaddps zmm0,zmm3,zmm23
  a64cb2:	62 a1 64 48 5c e7    	vsubps zmm20,zmm3,zmm23
  a64cb8:	62 21 6c 48 58 f8    	vaddps zmm31,zmm2,zmm16
  a64cbe:	62 51 1c 48 5c e0    	vsubps zmm12,zmm12,zmm8
  a64cc4:	62 b1 2c 40 58 cd    	vaddps zmm1,zmm26,zmm21
  a64cca:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm1
  a64cd1:	0a 
  a64cd2:	62 b1 6c 48 5c c8    	vsubps zmm1,zmm2,zmm16
  a64cd8:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm1
  a64cdf:	04 
  a64ce0:	62 72 7d 48 18 1d 0a 	vbroadcastss zmm11,DWORD PTR [rip+0xffffffffff61090a]        # 755f4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2aa4>
  a64ce7:	09 61 ff 
  a64cea:	62 c1 7c 48 28 d3    	vmovaps zmm18,zmm11
  a64cf0:	62 d1 0c 48 5c c9    	vsubps zmm1,zmm14,zmm9
  a64cf6:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm1
  a64cfd:	07 
  a64cfe:	62 e1 7c 48 28 7c 24 	vmovaps zmm23,ZMMWORD PTR [rsp+0x80]
  a64d05:	02 
  a64d06:	62 f1 44 40 58 c8    	vaddps zmm1,zmm23,zmm0
  a64d0c:	62 a2 7d 48 a8 d7    	vfmadd213ps zmm18,zmm0,zmm23
  a64d12:	62 f1 4c 48 5c d5    	vsubps zmm2,zmm6,zmm5
  a64d18:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm2
  a64d1f:	0b 
  a64d20:	62 f2 7d 48 18 3d a2 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff6105a2]        # 752cc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x277c>
  a64d27:	05 61 ff 
  a64d2a:	62 e1 7c 48 28 c7    	vmovaps zmm16,zmm7
  a64d30:	62 31 74 48 58 ce    	vaddps zmm9,zmm1,zmm22
  a64d36:	62 a2 7d 48 ac c7    	vfnmadd213ps zmm16,zmm0,zmm23
  a64d3c:	62 f2 7d 48 18 35 92 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff610892]        # 755d8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a88>
  a64d43:	08 61 ff 
  a64d46:	62 e2 4d 48 bc f8    	vfnmadd231ps zmm23,zmm6,zmm0
  a64d4c:	62 51 7c 48 28 d3    	vmovaps zmm10,zmm11
  a64d52:	62 e2 4d 40 bc d7    	vfnmadd231ps zmm18,zmm22,zmm7
  a64d58:	62 e2 4d 40 bc c6    	vfnmadd231ps zmm16,zmm22,zmm6
  a64d5e:	62 a2 25 48 b8 fe    	vfmadd231ps zmm23,zmm11,zmm22
  a64d64:	62 f1 7c 48 28 df    	vmovaps zmm3,zmm7
  a64d6a:	62 12 55 40 a8 d2    	vfmadd213ps zmm10,zmm21,zmm26
  a64d70:	62 92 55 40 ac da    	vfnmadd213ps zmm3,zmm21,zmm26
  a64d76:	62 22 4d 48 bc d5    	vfnmadd231ps zmm26,zmm6,zmm21
  a64d7c:	62 f2 7d 48 18 15 0a 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff61070a]        # 75490 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2940>
  a64d83:	07 61 ff 
  a64d86:	62 71 1c 40 59 c2    	vmulps zmm8,zmm28,zmm2
  a64d8c:	62 e2 7d 48 18 35 ca 	vbroadcastss zmm22,DWORD PTR [rip+0xffffffffff6108ca]        # 75660 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b10>
  a64d93:	08 61 ff 
  a64d96:	62 32 35 40 b8 c6    	vfmadd231ps zmm8,zmm25,zmm22
  a64d9c:	62 e1 34 40 59 ea    	vmulps zmm21,zmm25,zmm2
  a64da2:	62 f2 7d 48 18 0d 3c 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff61083c]        # 755e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a98>
  a64da9:	08 61 ff 
  a64dac:	62 e2 1d 40 bc e9    	vfnmadd231ps zmm21,zmm28,zmm1
  a64db2:	62 f1 34 40 59 e9    	vmulps zmm5,zmm25,zmm1
  a64db8:	62 92 4d 40 bc ec    	vfnmadd231ps zmm5,zmm22,zmm28
  a64dbe:	62 f1 5c 48 58 44 24 	vaddps zmm0,zmm4,ZMMWORD PTR [rsp+0x280]
  a64dc5:	0a 
  a64dc6:	62 91 7c 48 58 c7    	vaddps zmm0,zmm0,zmm31
  a64dcc:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm0
  a64dd3:	02 
  a64dd4:	62 72 5d 48 bc d7    	vfnmadd231ps zmm10,zmm4,zmm7
  a64dda:	62 72 05 40 bc d6    	vfnmadd231ps zmm10,zmm31,zmm6
  a64de0:	62 f2 5d 48 bc de    	vfnmadd231ps zmm3,zmm4,zmm6
  a64de6:	62 62 25 48 b8 d4    	vfmadd231ps zmm26,zmm11,zmm4
  a64dec:	62 61 14 40 59 ca    	vmulps zmm25,zmm29,zmm2
  a64df2:	62 d2 05 40 b8 db    	vfmadd231ps zmm3,zmm31,zmm11
  a64df8:	62 02 45 48 bc d7    	vfnmadd231ps zmm26,zmm7,zmm31
  a64dfe:	62 61 04 48 59 e2    	vmulps zmm28,zmm15,zmm2
  a64e04:	62 62 15 40 bc e1    	vfnmadd231ps zmm28,zmm29,zmm1
  a64e0a:	62 22 05 48 b8 ce    	vfmadd231ps zmm25,zmm15,zmm22
  a64e10:	62 71 04 48 59 f9    	vmulps zmm15,zmm15,zmm1
  a64e16:	62 12 4d 40 bc fd    	vfnmadd231ps zmm15,zmm22,zmm29
  a64e1c:	62 91 74 40 58 c0    	vaddps zmm0,zmm17,zmm24
  a64e22:	62 71 7c 48 28 74 24 	vmovaps zmm14,ZMMWORD PTR [rsp+0x40]
  a64e29:	01 
  a64e2a:	62 d1 34 48 58 e6    	vaddps zmm4,zmm9,zmm14
  a64e30:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm4
  a64e37:	0a 
  a64e38:	62 62 15 48 b8 c9    	vfmadd231ps zmm25,zmm13,zmm1
  a64e3e:	62 22 15 48 bc e6    	vfnmadd231ps zmm28,zmm13,zmm22
  a64e44:	62 52 6d 48 b8 fd    	vfmadd231ps zmm15,zmm2,zmm13
  a64e4a:	62 e2 0d 48 bc d6    	vfnmadd231ps zmm18,zmm14,zmm6
  a64e50:	62 d1 7c 48 28 e3    	vmovaps zmm4,zmm11
  a64e56:	62 92 75 40 a8 e0    	vfmadd213ps zmm4,zmm17,zmm24
  a64e5c:	62 c2 0d 48 b8 c3    	vfmadd231ps zmm16,zmm14,zmm11
  a64e62:	62 c2 45 48 bc fe    	vfnmadd231ps zmm23,zmm7,zmm14
  a64e68:	62 71 7c 48 28 ef    	vmovaps zmm13,zmm7
  a64e6e:	62 12 75 40 ac e8    	vfnmadd213ps zmm13,zmm17,zmm24
  a64e74:	62 22 4d 48 bc c1    	vfnmadd231ps zmm24,zmm6,zmm17
  a64e7a:	62 f1 64 40 58 c0    	vaddps zmm0,zmm19,zmm0
  a64e80:	62 71 7c 48 28 74 24 	vmovaps zmm14,ZMMWORD PTR [rsp+0x200]
  a64e87:	08 
  a64e88:	62 f1 0c 48 58 c0    	vaddps zmm0,zmm14,zmm0
  a64e8e:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a64e95:	01 
  a64e96:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x140]
  a64e9d:	05 
  a64e9e:	62 72 7d 48 b8 c1    	vfmadd231ps zmm8,zmm0,zmm1
  a64ea4:	62 a2 7d 48 bc ee    	vfnmadd231ps zmm21,zmm0,zmm22
  a64eaa:	62 f2 6d 48 b8 e8    	vfmadd231ps zmm5,zmm2,zmm0
  a64eb0:	62 91 24 40 58 c6    	vaddps zmm0,zmm27,zmm30
  a64eb6:	62 f2 65 40 bc e7    	vfnmadd231ps zmm4,zmm19,zmm7
  a64ebc:	62 72 65 40 bc ee    	vfnmadd231ps zmm13,zmm19,zmm6
  a64ec2:	62 f2 0d 48 bc e6    	vfnmadd231ps zmm4,zmm14,zmm6
  a64ec8:	62 22 25 48 b8 c3    	vfmadd231ps zmm24,zmm11,zmm19
  a64ece:	62 71 1c 48 59 ca    	vmulps zmm9,zmm12,zmm2
  a64ed4:	62 32 5d 40 b8 ce    	vfmadd231ps zmm9,zmm20,zmm22
  a64eda:	62 52 0d 48 b8 eb    	vfmadd231ps zmm13,zmm14,zmm11
  a64ee0:	62 42 45 48 bc c6    	vfnmadd231ps zmm24,zmm7,zmm14
  a64ee6:	62 71 5c 40 59 f2    	vmulps zmm14,zmm20,zmm2
  a64eec:	62 e1 5c 40 59 c9    	vmulps zmm17,zmm20,zmm1
  a64ef2:	62 72 1d 48 bc f1    	vfnmadd231ps zmm14,zmm12,zmm1
  a64ef8:	62 c2 4d 40 bc cc    	vfnmadd231ps zmm17,zmm22,zmm12
  a64efe:	62 c1 7c 48 28 db    	vmovaps zmm19,zmm11
  a64f04:	62 82 0d 40 a8 db    	vfmadd213ps zmm19,zmm30,zmm27
  a64f0a:	62 71 7c 48 28 64 24 	vmovaps zmm12,ZMMWORD PTR [rsp+0xc0]
  a64f11:	03 
  a64f12:	62 72 1d 48 b8 c9    	vfmadd231ps zmm9,zmm12,zmm1
  a64f18:	62 32 1d 48 bc f6    	vfnmadd231ps zmm14,zmm12,zmm22
  a64f1e:	62 c2 6d 48 b8 cc    	vfmadd231ps zmm17,zmm2,zmm12
  a64f24:	62 e1 7c 48 28 e7    	vmovaps zmm20,zmm7
  a64f2a:	62 82 0d 40 ac e3    	vfnmadd213ps zmm20,zmm30,zmm27
  a64f30:	62 02 4d 48 bc de    	vfnmadd231ps zmm27,zmm6,zmm30
  a64f36:	62 61 7c 48 28 74 24 	vmovaps zmm30,ZMMWORD PTR [rsp+0x180]
  a64f3d:	06 
  a64f3e:	62 91 7c 48 58 c6    	vaddps zmm0,zmm0,zmm30
  a64f44:	62 e2 0d 40 bc df    	vfnmadd231ps zmm19,zmm30,zmm7
  a64f4a:	62 71 7c 48 28 64 24 	vmovaps zmm12,ZMMWORD PTR [rsp+0x240]
  a64f51:	09 
  a64f52:	62 41 7c 48 58 ec    	vaddps zmm29,zmm0,zmm12
  a64f58:	62 e2 0d 40 bc e6    	vfnmadd231ps zmm20,zmm30,zmm6
  a64f5e:	62 02 25 48 b8 de    	vfmadd231ps zmm27,zmm11,zmm30
  a64f64:	62 61 7c 48 28 74 24 	vmovaps zmm30,ZMMWORD PTR [rsp+0x2c0]
  a64f6b:	0b 
  a64f6c:	62 f1 0c 40 59 c2    	vmulps zmm0,zmm30,zmm2
  a64f72:	62 e2 1d 48 bc de    	vfnmadd231ps zmm19,zmm12,zmm6
  a64f78:	62 c2 1d 48 b8 e3    	vfmadd231ps zmm20,zmm12,zmm11
  a64f7e:	62 42 45 48 bc dc    	vfnmadd231ps zmm27,zmm7,zmm12
  a64f84:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x1c0]
  a64f8b:	07 
  a64f8c:	62 f1 4c 48 59 fa    	vmulps zmm7,zmm6,zmm2
  a64f92:	62 b2 4d 48 b8 c6    	vfmadd231ps zmm0,zmm6,zmm22
  a64f98:	62 f2 0d 40 bc f9    	vfnmadd231ps zmm7,zmm30,zmm1
  a64f9e:	62 71 4c 48 59 d9    	vmulps zmm11,zmm6,zmm1
  a64fa4:	62 12 4d 40 bc de    	vfnmadd231ps zmm11,zmm22,zmm30
  a64faa:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x100]
  a64fb1:	04 
  a64fb2:	62 f2 4d 48 b8 c1    	vfmadd231ps zmm0,zmm6,zmm1
  a64fb8:	62 b2 4d 48 bc fe    	vfnmadd231ps zmm7,zmm6,zmm22
  a64fbe:	62 72 6d 48 b8 de    	vfmadd231ps zmm11,zmm2,zmm6
  a64fc4:	62 71 44 40 58 e5    	vaddps zmm12,zmm23,zmm5
  a64fca:	62 f1 44 40 5c ed    	vsubps zmm5,zmm23,zmm5
  a64fd0:	62 c1 2c 40 58 ff    	vaddps zmm23,zmm26,zmm15
  a64fd6:	62 41 2c 40 5c d7    	vsubps zmm26,zmm26,zmm15
  a64fdc:	62 21 3c 40 5c f1    	vsubps zmm30,zmm24,zmm17
  a64fe2:	62 01 74 40 58 c0    	vaddps zmm24,zmm17,zmm24
  a64fe8:	62 c1 24 40 5c cb    	vsubps zmm17,zmm27,zmm11
  a64fee:	62 41 24 40 58 db    	vaddps zmm27,zmm27,zmm11
  a64ff4:	62 b1 7c 40 58 f5    	vaddps zmm6,zmm16,zmm21
  a64ffa:	62 a1 7c 40 5c c5    	vsubps zmm16,zmm16,zmm21
  a65000:	62 11 64 48 58 dc    	vaddps zmm11,zmm3,zmm28
  a65006:	62 01 64 48 5c e4    	vsubps zmm28,zmm3,zmm28
  a6500c:	62 d1 14 48 5c de    	vsubps zmm3,zmm13,zmm14
  a65012:	62 41 0c 48 58 fd    	vaddps zmm31,zmm14,zmm13
  a65018:	62 71 5c 40 5c ef    	vsubps zmm13,zmm20,zmm7
  a6501e:	62 f1 5c 40 58 d7    	vaddps zmm2,zmm20,zmm7
  a65024:	62 d1 6c 40 58 f8    	vaddps zmm7,zmm18,zmm8
  a6502a:	62 51 6c 40 5c f8    	vsubps zmm15,zmm18,zmm8
  a65030:	62 11 2c 48 58 c1    	vaddps zmm8,zmm10,zmm25
  a65036:	62 11 2c 48 5c d1    	vsubps zmm10,zmm10,zmm25
  a6503c:	62 d1 5c 48 5c c9    	vsubps zmm1,zmm4,zmm9
  a65042:	62 61 34 48 58 cc    	vaddps zmm25,zmm9,zmm4
  a65048:	62 71 64 40 5c c8    	vsubps zmm9,zmm19,zmm0
  a6504e:	62 f1 64 40 58 e0    	vaddps zmm4,zmm19,zmm0
  a65054:	62 d1 44 48 5c c0    	vsubps zmm0,zmm7,zmm8
  a6505a:	62 51 44 48 58 f0    	vaddps zmm14,zmm7,zmm8
  a65060:	62 d1 74 48 5c f9    	vsubps zmm7,zmm1,zmm9
  a65066:	62 51 74 48 58 c1    	vaddps zmm8,zmm1,zmm9
  a6506c:	62 c1 4c 48 58 f3    	vaddps zmm22,zmm6,zmm11
  a65072:	62 d1 4c 48 5c f3    	vsubps zmm6,zmm6,zmm11
  a65078:	62 51 64 48 58 cd    	vaddps zmm9,zmm3,zmm13
  a6507e:	62 51 64 48 5c ed    	vsubps zmm13,zmm3,zmm13
  a65084:	62 a1 1c 48 5c e7    	vsubps zmm20,zmm12,zmm23
  a6508a:	62 31 1c 48 58 df    	vaddps zmm11,zmm12,zmm23
  a65090:	62 a1 0c 40 5c e9    	vsubps zmm21,zmm30,zmm17
  a65096:	62 31 0c 40 58 e1    	vaddps zmm12,zmm30,zmm17
  a6509c:	62 81 54 48 58 ca    	vaddps zmm17,zmm5,zmm26
  a650a2:	62 01 54 48 5c f2    	vsubps zmm30,zmm5,zmm26
  a650a8:	62 81 3c 40 58 db    	vaddps zmm19,zmm24,zmm27
  a650ae:	62 91 3c 40 5c eb    	vsubps zmm5,zmm24,zmm27
  a650b4:	62 91 7c 40 5c dc    	vsubps zmm3,zmm16,zmm28
  a650ba:	62 01 7c 40 58 d4    	vaddps zmm26,zmm16,zmm28
  a650c0:	62 e1 7c 48 28 44 24 	vmovaps zmm16,ZMMWORD PTR [rsp+0x80]
  a650c7:	02 
  a650c8:	62 e1 7c 48 28 54 24 	vmovaps zmm18,ZMMWORD PTR [rsp+0x280]
  a650cf:	0a 
  a650d0:	62 b1 6c 40 5c c8    	vsubps zmm1,zmm18,zmm16
  a650d6:	62 21 6c 40 58 d8    	vaddps zmm27,zmm18,zmm16
  a650dc:	62 e1 04 40 5c c2    	vsubps zmm16,zmm31,zmm2
  a650e2:	62 e1 04 40 58 fa    	vaddps zmm23,zmm31,zmm2
  a650e8:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x40]
  a650ef:	01 
  a650f0:	62 01 6c 48 5c c5    	vsubps zmm24,zmm2,zmm29
  a650f6:	62 81 6c 48 58 d5    	vaddps zmm18,zmm2,zmm29
  a650fc:	62 91 7c 48 28 d3    	vmovaps zmm2,zmm27
  a65102:	62 61 7c 48 28 25 34 	vmovaps zmm28,ZMMWORD PTR [rip+0xffffffffff62ee34]        # 93f40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x213f0>
  a65109:	ee 62 ff 
  a6510c:	62 b2 1d 40 7f d2    	vpermt2ps zmm2,zmm28,zmm18
  a65112:	62 f1 7c 48 11 14 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm2
  a65119:	62 b1 24 40 14 d2    	vunpcklps zmm2,zmm27,zmm18
  a6511f:	62 f3 7d 48 19 54 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x60],zmm2,0x3
  a65126:	06 03 
  a65128:	62 b1 24 40 15 d2    	vunpckhps zmm2,zmm27,zmm18
  a6512e:	62 f3 7d 48 19 d2 03 	vextractf32x4 xmm2,zmm2,0x3
  a65135:	c5 f8 13 54 16 70    	vmovlps QWORD PTR [rsi+rdx*1+0x70],xmm2
  a6513b:	62 d1 04 48 58 d2    	vaddps zmm2,zmm15,zmm10
  a65141:	62 51 04 48 5c fa    	vsubps zmm15,zmm15,zmm10
  a65147:	62 61 7c 28 28 2d 2f 	vmovaps ymm29,YMMWORD PTR [rip+0xffffffffff62ee2f]        # 93f80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21430>
  a6514e:	ee 62 ff 
  a65151:	62 22 15 40 7f da    	vpermt2ps zmm27,zmm29,zmm18
  a65157:	62 61 7c 28 11 5c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm27
  a6515e:	02 
  a6515f:	62 e1 34 40 58 d4    	vaddps zmm18,zmm25,zmm4
  a65165:	62 71 34 40 5c d4    	vsubps zmm10,zmm25,zmm4
  a6516b:	62 f1 7c 48 28 e0    	vmovaps zmm4,zmm0
  a65171:	62 f2 1d 40 7f e7    	vpermt2ps zmm4,zmm28,zmm7
  a65177:	62 f1 7c 48 11 a4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x78],zmm4
  a6517e:	78 00 00 00 
  a65182:	62 f1 7c 48 14 e7    	vunpcklps zmm4,zmm0,zmm7
  a65188:	62 f3 7d 48 19 a4 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xd8],zmm4,0x3
  a6518f:	d8 00 00 00 03 
  a65194:	62 f1 7c 48 15 e7    	vunpckhps zmm4,zmm0,zmm7
  a6519a:	62 f3 7d 48 19 e4 03 	vextractf32x4 xmm4,zmm4,0x3
  a651a1:	c5 f8 13 a4 16 e8 00 	vmovlps QWORD PTR [rsi+rdx*1+0xe8],xmm4
  a651a8:	00 00 
  a651aa:	62 f2 15 40 7f c7    	vpermt2ps zmm0,zmm29,zmm7
  a651b0:	c5 fc 11 84 16 b8 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xb8],ymm0
  a651b7:	00 00 
  a651b9:	62 b1 7c 48 28 c6    	vmovaps zmm0,zmm22
  a651bf:	62 d2 1d 40 7f c1    	vpermt2ps zmm0,zmm28,zmm9
  a651c5:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xf0],zmm0
  a651cc:	f0 00 00 00 
  a651d0:	62 d1 4c 40 14 c1    	vunpcklps zmm0,zmm22,zmm9
  a651d6:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x150],zmm0,0x3
  a651dd:	15 03 
  a651df:	62 d1 4c 40 15 c1    	vunpckhps zmm0,zmm22,zmm9
  a651e5:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a651ec:	c5 f8 13 84 16 60 01 	vmovlps QWORD PTR [rsi+rdx*1+0x160],xmm0
  a651f3:	00 00 
  a651f5:	62 c2 15 40 7f f1    	vpermt2ps zmm22,zmm29,zmm9
  a651fb:	62 e1 7c 28 11 b4 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x130],ymm22
  a65202:	30 01 00 00 
  a65206:	62 b1 7c 48 28 c4    	vmovaps zmm0,zmm20
  a6520c:	62 b2 1d 40 7f c5    	vpermt2ps zmm0,zmm28,zmm21
  a65212:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x168],zmm0
  a65219:	68 01 00 00 
  a6521d:	62 b1 5c 40 14 c5    	vunpcklps zmm0,zmm20,zmm21
  a65223:	62 f3 7d 48 19 84 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x1c8],zmm0,0x3
  a6522a:	c8 01 00 00 03 
  a6522f:	62 b1 5c 40 15 c5    	vunpckhps zmm0,zmm20,zmm21
  a65235:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a6523c:	c5 f8 13 84 16 d8 01 	vmovlps QWORD PTR [rsi+rdx*1+0x1d8],xmm0
  a65243:	00 00 
  a65245:	62 a2 15 40 7f e5    	vpermt2ps zmm20,zmm29,zmm21
  a6524b:	62 e1 7c 28 11 a4 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x1a8],ymm20
  a65252:	a8 01 00 00 
  a65256:	62 b1 7c 48 28 c1    	vmovaps zmm0,zmm17
  a6525c:	62 b2 1d 40 7f c3    	vpermt2ps zmm0,zmm28,zmm19
  a65262:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1e0],zmm0
  a65269:	e0 01 00 00 
  a6526d:	62 b1 74 40 14 c3    	vunpcklps zmm0,zmm17,zmm19
  a65273:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x240],zmm0,0x3
  a6527a:	24 03 
  a6527c:	62 b1 74 40 15 c3    	vunpckhps zmm0,zmm17,zmm19
  a65282:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a65289:	c5 f8 13 84 16 50 02 	vmovlps QWORD PTR [rsi+rdx*1+0x250],xmm0
  a65290:	00 00 
  a65292:	62 a2 15 40 7f cb    	vpermt2ps zmm17,zmm29,zmm19
  a65298:	62 e1 7c 28 11 4c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x220],ymm17
  a6529f:	11 
  a652a0:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a652a6:	62 b2 1d 40 7f c0    	vpermt2ps zmm0,zmm28,zmm16
  a652ac:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x258],zmm0
  a652b3:	58 02 00 00 
  a652b7:	62 b1 64 48 14 c0    	vunpcklps zmm0,zmm3,zmm16
  a652bd:	62 f3 7d 48 19 84 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x2b8],zmm0,0x3
  a652c4:	b8 02 00 00 03 
  a652c9:	62 b1 64 48 15 c0    	vunpckhps zmm0,zmm3,zmm16
  a652cf:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a652d6:	c5 f8 13 84 16 c8 02 	vmovlps QWORD PTR [rsi+rdx*1+0x2c8],xmm0
  a652dd:	00 00 
  a652df:	62 b2 15 40 7f d8    	vpermt2ps zmm3,zmm29,zmm16
  a652e5:	c5 fc 11 9c 16 98 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x298],ymm3
  a652ec:	00 00 
  a652ee:	62 f1 7c 48 28 c2    	vmovaps zmm0,zmm2
  a652f4:	62 b2 1d 40 7f c2    	vpermt2ps zmm0,zmm28,zmm18
  a652fa:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x2d0],zmm0
  a65301:	d0 02 00 00 
  a65305:	62 b1 6c 48 14 c2    	vunpcklps zmm0,zmm2,zmm18
  a6530b:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x330],zmm0,0x3
  a65312:	33 03 
  a65314:	62 b1 6c 48 15 c2    	vunpckhps zmm0,zmm2,zmm18
  a6531a:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a65321:	c5 f8 13 84 16 40 03 	vmovlps QWORD PTR [rsi+rdx*1+0x340],xmm0
  a65328:	00 00 
  a6532a:	62 b2 15 40 7f d2    	vpermt2ps zmm2,zmm29,zmm18
  a65330:	c5 fc 11 94 16 10 03 	vmovups YMMWORD PTR [rsi+rdx*1+0x310],ymm2
  a65337:	00 00 
  a65339:	62 f1 7c 48 28 c1    	vmovaps zmm0,zmm1
  a6533f:	62 92 1d 40 7f c0    	vpermt2ps zmm0,zmm28,zmm24
  a65345:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x348],zmm0
  a6534c:	48 03 00 00 
  a65350:	62 91 74 48 14 c0    	vunpcklps zmm0,zmm1,zmm24
  a65356:	62 f3 7d 48 19 84 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x3a8],zmm0,0x3
  a6535d:	a8 03 00 00 03 
  a65362:	62 91 74 48 15 c0    	vunpckhps zmm0,zmm1,zmm24
  a65368:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a6536f:	c5 f8 13 84 16 b8 03 	vmovlps QWORD PTR [rsi+rdx*1+0x3b8],xmm0
  a65376:	00 00 
  a65378:	62 92 15 40 7f c8    	vpermt2ps zmm1,zmm29,zmm24
  a6537e:	c5 fc 11 8c 16 88 03 	vmovups YMMWORD PTR [rsi+rdx*1+0x388],ymm1
  a65385:	00 00 
  a65387:	62 d1 7c 48 28 c6    	vmovaps zmm0,zmm14
  a6538d:	62 d2 1d 40 7f c0    	vpermt2ps zmm0,zmm28,zmm8
  a65393:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x3c0],zmm0
  a6539a:	0f 
  a6539b:	62 d1 0c 48 14 c0    	vunpcklps zmm0,zmm14,zmm8
  a653a1:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x420],zmm0,0x3
  a653a8:	42 03 
  a653aa:	62 d1 0c 48 15 c0    	vunpckhps zmm0,zmm14,zmm8
  a653b0:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a653b7:	c5 f8 13 84 16 30 04 	vmovlps QWORD PTR [rsi+rdx*1+0x430],xmm0
  a653be:	00 00 
  a653c0:	62 52 15 40 7f f0    	vpermt2ps zmm14,zmm29,zmm8
  a653c6:	c5 7c 11 b4 16 00 04 	vmovups YMMWORD PTR [rsi+rdx*1+0x400],ymm14
  a653cd:	00 00 
  a653cf:	62 f1 7c 48 28 c6    	vmovaps zmm0,zmm6
  a653d5:	62 d2 1d 40 7f c5    	vpermt2ps zmm0,zmm28,zmm13
  a653db:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x438],zmm0
  a653e2:	38 04 00 00 
  a653e6:	62 d1 4c 48 14 c5    	vunpcklps zmm0,zmm6,zmm13
  a653ec:	62 f3 7d 48 19 84 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x498],zmm0,0x3
  a653f3:	98 04 00 00 03 
  a653f8:	62 d1 4c 48 15 c5    	vunpckhps zmm0,zmm6,zmm13
  a653fe:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a65405:	c5 f8 13 84 16 a8 04 	vmovlps QWORD PTR [rsi+rdx*1+0x4a8],xmm0
  a6540c:	00 00 
  a6540e:	62 d2 15 40 7f f5    	vpermt2ps zmm6,zmm29,zmm13
  a65414:	c5 fc 11 b4 16 78 04 	vmovups YMMWORD PTR [rsi+rdx*1+0x478],ymm6
  a6541b:	00 00 
  a6541d:	62 d1 7c 48 28 c3    	vmovaps zmm0,zmm11
  a65423:	62 d2 1d 40 7f c4    	vpermt2ps zmm0,zmm28,zmm12
  a65429:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x4b0],zmm0
  a65430:	b0 04 00 00 
  a65434:	62 d1 24 48 14 c4    	vunpcklps zmm0,zmm11,zmm12
  a6543a:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x510],zmm0,0x3
  a65441:	51 03 
  a65443:	62 d1 24 48 15 c4    	vunpckhps zmm0,zmm11,zmm12
  a65449:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a65450:	c5 f8 13 84 16 20 05 	vmovlps QWORD PTR [rsi+rdx*1+0x520],xmm0
  a65457:	00 00 
  a65459:	62 52 15 40 7f dc    	vpermt2ps zmm11,zmm29,zmm12
  a6545f:	c5 7c 11 9c 16 f0 04 	vmovups YMMWORD PTR [rsi+rdx*1+0x4f0],ymm11
  a65466:	00 00 
  a65468:	62 91 7c 48 28 c6    	vmovaps zmm0,zmm30
  a6546e:	62 f2 1d 40 7f c5    	vpermt2ps zmm0,zmm28,zmm5
  a65474:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x528],zmm0
  a6547b:	28 05 00 00 
  a6547f:	62 f1 0c 40 14 c5    	vunpcklps zmm0,zmm30,zmm5
  a65485:	62 f3 7d 48 19 84 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x588],zmm0,0x3
  a6548c:	88 05 00 00 03 
  a65491:	62 f1 0c 40 15 c5    	vunpckhps zmm0,zmm30,zmm5
  a65497:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a6549e:	c5 f8 13 84 16 98 05 	vmovlps QWORD PTR [rsi+rdx*1+0x598],xmm0
  a654a5:	00 00 
  a654a7:	62 62 15 40 7f f5    	vpermt2ps zmm30,zmm29,zmm5
  a654ad:	62 61 7c 28 11 b4 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x568],ymm30
  a654b4:	68 05 00 00 
  a654b8:	62 91 7c 48 28 c2    	vmovaps zmm0,zmm26
  a654be:	62 b2 1d 40 7f c7    	vpermt2ps zmm0,zmm28,zmm23
  a654c4:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x5a0],zmm0
  a654cb:	a0 05 00 00 
  a654cf:	62 b1 2c 40 14 c7    	vunpcklps zmm0,zmm26,zmm23
  a654d5:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x600],zmm0,0x3
  a654dc:	60 03 
  a654de:	62 b1 2c 40 15 c7    	vunpckhps zmm0,zmm26,zmm23
  a654e4:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a654eb:	c5 f8 13 84 16 10 06 	vmovlps QWORD PTR [rsi+rdx*1+0x610],xmm0
  a654f2:	00 00 
  a654f4:	62 22 15 40 7f d7    	vpermt2ps zmm26,zmm29,zmm23
  a654fa:	62 61 7c 28 11 54 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x5e0],ymm26
  a65501:	2f 
  a65502:	62 d1 7c 48 28 c7    	vmovaps zmm0,zmm15
  a65508:	62 d2 1d 40 7f c2    	vpermt2ps zmm0,zmm28,zmm10
  a6550e:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x618],zmm0
  a65515:	18 06 00 00 
  a65519:	62 d1 04 48 14 c2    	vunpcklps zmm0,zmm15,zmm10
  a6551f:	62 f3 7d 48 19 84 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x678],zmm0,0x3
  a65526:	78 06 00 00 03 
  a6552b:	62 d1 04 48 15 c2    	vunpckhps zmm0,zmm15,zmm10
  a65531:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a65538:	c5 f8 13 84 16 88 06 	vmovlps QWORD PTR [rsi+rdx*1+0x688],xmm0
  a6553f:	00 00 
  a65541:	62 52 15 40 7f fa    	vpermt2ps zmm15,zmm29,zmm10
  a65547:	c5 7c 11 bc 16 58 06 	vmovups YMMWORD PTR [rsi+rdx*1+0x658],ymm15
  a6554e:	00 00 
  a65550:	48 81 c2 90 06 00 00 	add    rdx,0x690
  a65557:	48 39 d0             	cmp    rax,rdx
  a6555a:	0f 85 d0 e2 ff ff    	jne    a63830 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x30>
  a65560:	48 89 ec             	mov    rsp,rbp
  a65563:	5d                   	pop    rbp
  a65564:	c5 f8 77             	vzeroupper
  a65567:	c3                   	ret
