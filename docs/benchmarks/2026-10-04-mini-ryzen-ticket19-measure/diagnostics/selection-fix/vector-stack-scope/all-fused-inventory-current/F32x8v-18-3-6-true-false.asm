
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000aa9740 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  aa9740:	c5 fc 10 4f 30       	vmovups ymm1,YMMWORD PTR [rdi+0x30]
  aa9745:	c5 f8 10 57 50       	vmovups xmm2,XMMWORD PTR [rdi+0x50]
  aa974a:	c5 f4 c6 c2 dd       	vshufps ymm0,ymm1,ymm2,0xdd
  aa974f:	c4 e3 fd 01 d8 d8    	vpermpd ymm3,ymm0,0xd8
  aa9755:	c5 fc 10 67 60       	vmovups ymm4,YMMWORD PTR [rdi+0x60]
  aa975a:	c5 f8 10 af 80 00 00 	vmovups xmm5,XMMWORD PTR [rdi+0x80]
  aa9761:	00 
  aa9762:	c5 dc c6 c5 dd       	vshufps ymm0,ymm4,ymm5,0xdd
  aa9767:	c4 e3 fd 01 f0 d8    	vpermpd ymm6,ymm0,0xd8
  aa976d:	c4 e2 7d 18 05 5e bb 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff5cbb5e]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  aa9774:	5c ff 
  aa9776:	c5 e4 5c fe          	vsubps ymm7,ymm3,ymm6
  aa977a:	c5 c4 59 f8          	vmulps ymm7,ymm7,ymm0
  aa977e:	c5 f4 c6 ca 88       	vshufps ymm1,ymm1,ymm2,0x88
  aa9783:	c4 e3 fd 01 d1 d8    	vpermpd ymm2,ymm1,0xd8
  aa9789:	c5 dc c6 cd 88       	vshufps ymm1,ymm4,ymm5,0x88
  aa978e:	c4 e3 fd 01 e1 d8    	vpermpd ymm4,ymm1,0xd8
  aa9794:	c5 ec 58 ec          	vaddps ymm5,ymm2,ymm4
  aa9798:	c5 7c 10 07          	vmovups ymm8,YMMWORD PTR [rdi]
  aa979c:	c5 78 10 4f 20       	vmovups xmm9,XMMWORD PTR [rdi+0x20]
  aa97a1:	c4 41 3c c6 d1 88    	vshufps ymm10,ymm8,ymm9,0x88
  aa97a7:	c4 e2 7d 18 0d b0 bc 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff5cbcb0]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  aa97ae:	5c ff 
  aa97b0:	c4 43 fd 01 d2 d8    	vpermpd ymm10,ymm10,0xd8
  aa97b6:	c5 7c 28 d9          	vmovaps ymm11,ymm1
  aa97ba:	c4 42 55 ac da       	vfnmadd213ps ymm11,ymm5,ymm10
  aa97bf:	c5 24 58 e7          	vaddps ymm12,ymm11,ymm7
  aa97c3:	c5 e4 58 de          	vaddps ymm3,ymm3,ymm6
  aa97c7:	c4 c1 3c c6 f1 dd    	vshufps ymm6,ymm8,ymm9,0xdd
  aa97cd:	c4 e3 fd 01 f6 d8    	vpermpd ymm6,ymm6,0xd8
  aa97d3:	c5 7c 28 c1          	vmovaps ymm8,ymm1
  aa97d7:	c4 62 65 ac c6       	vfnmadd213ps ymm8,ymm3,ymm6
  aa97dc:	c5 ec 5c d4          	vsubps ymm2,ymm2,ymm4
  aa97e0:	c5 ec 59 d0          	vmulps ymm2,ymm2,ymm0
  aa97e4:	c5 bc 5c e2          	vsubps ymm4,ymm8,ymm2
  aa97e8:	c5 a4 5c ff          	vsubps ymm7,ymm11,ymm7
  aa97ec:	c5 bc 58 d2          	vaddps ymm2,ymm8,ymm2
  aa97f0:	c5 2c 58 d5          	vaddps ymm10,ymm10,ymm5
  aa97f4:	c5 cc 58 db          	vaddps ymm3,ymm6,ymm3
  aa97f8:	c5 f8 28 eb          	vmovaps xmm5,xmm3
  aa97fc:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  aa9802:	c5 f8 28 f2          	vmovaps xmm6,xmm2
  aa9806:	c4 c3 7d 19 d0 01    	vextractf128 xmm8,ymm2,0x1
  aa980c:	c5 78 28 cc          	vmovaps xmm9,xmm4
  aa9810:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  aa9816:	c5 65 14 dc          	vunpcklpd ymm11,ymm3,ymm4
  aa981a:	c4 41 55 15 e9       	vunpckhpd ymm13,ymm5,ymm9
  aa981f:	c4 c1 55 14 d9       	vunpcklpd ymm3,ymm5,ymm9
  aa9824:	c5 fa 7e ea          	vmovq  xmm5,xmm2
  aa9828:	c5 cd 73 de 08       	vpsrldq ymm6,ymm6,0x8
  aa982d:	c5 d8 57 e4          	vxorps xmm4,xmm4,xmm4
  aa9831:	c4 63 3d 0c f4 cc    	vblendps ymm14,ymm8,ymm4,0xcc
  aa9837:	c5 e4 c6 d5 88       	vshufps ymm2,ymm3,ymm5,0x88
  aa983c:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  aa9841:	c5 e4 c6 dd dd       	vshufps ymm3,ymm3,ymm5,0xdd
  aa9846:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  aa984b:	c5 94 c6 ee 88       	vshufps ymm5,ymm13,ymm6,0x88
  aa9850:	c5 54 c6 cd d8       	vshufps ymm9,ymm5,ymm5,0xd8
  aa9855:	c5 94 c6 ee dd       	vshufps ymm5,ymm13,ymm6,0xdd
  aa985a:	c5 d4 c6 f5 d8       	vshufps ymm6,ymm5,ymm5,0xd8
  aa985f:	c4 c1 24 c6 ee 88    	vshufps ymm5,ymm11,ymm14,0x88
  aa9865:	c5 54 c6 c5 d8       	vshufps ymm8,ymm5,ymm5,0xd8
  aa986a:	c4 c1 24 c6 ee dd    	vshufps ymm5,ymm11,ymm14,0xdd
  aa9870:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  aa9875:	c4 41 78 28 da       	vmovaps xmm11,xmm10
  aa987a:	c4 43 7d 19 d2 01    	vextractf128 xmm10,ymm10,0x1
  aa9880:	c5 78 28 ef          	vmovaps xmm13,xmm7
  aa9884:	c4 c3 7d 19 fe 01    	vextractf128 xmm14,ymm7,0x1
  aa988a:	c4 41 78 28 fc       	vmovaps xmm15,xmm12
  aa988f:	c4 43 7d 19 e4 01    	vextractf128 xmm12,ymm12,0x1
  aa9895:	c4 41 2d 14 e4       	vunpcklpd ymm12,ymm10,ymm12
  aa989a:	62 c1 a5 28 15 c7    	vunpckhpd ymm16,ymm11,ymm15
  aa98a0:	c4 41 25 14 d7       	vunpcklpd ymm10,ymm11,ymm15
  aa98a5:	c5 fa 7e ff          	vmovq  xmm7,xmm7
  aa98a9:	c4 c1 25 73 dd 08    	vpsrldq ymm11,ymm13,0x8
  aa98af:	c4 63 0d 0c ec cc    	vblendps ymm13,ymm14,ymm4,0xcc
  aa98b5:	c5 ac c6 e7 88       	vshufps ymm4,ymm10,ymm7,0x88
  aa98ba:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  aa98bf:	c5 ac c6 ff dd       	vshufps ymm7,ymm10,ymm7,0xdd
  aa98c4:	c5 44 c6 d7 d8       	vshufps ymm10,ymm7,ymm7,0xd8
  aa98c9:	62 d1 7c 20 c6 fb 88 	vshufps ymm7,ymm16,ymm11,0x88
  aa98d0:	c5 44 c6 f7 d8       	vshufps ymm14,ymm7,ymm7,0xd8
  aa98d5:	62 d1 7c 20 c6 fb dd 	vshufps ymm7,ymm16,ymm11,0xdd
  aa98dc:	c5 44 c6 df d8       	vshufps ymm11,ymm7,ymm7,0xd8
  aa98e1:	c4 c1 1c c6 fd 88    	vshufps ymm7,ymm12,ymm13,0x88
  aa98e7:	c5 44 c6 ff d8       	vshufps ymm15,ymm7,ymm7,0xd8
  aa98ec:	c4 c1 1c c6 fd dd    	vshufps ymm7,ymm12,ymm13,0xdd
  aa98f2:	c5 44 c6 e7 d8       	vshufps ymm12,ymm7,ymm7,0xd8
  aa98f7:	c5 7c 10 6a 40       	vmovups ymm13,YMMWORD PTR [rdx+0x40]
  aa98fc:	62 e1 7c 28 10 42 03 	vmovups ymm16,YMMWORD PTR [rdx+0x60]
  aa9903:	62 e1 7c 28 10 4a 04 	vmovups ymm17,YMMWORD PTR [rdx+0x80]
  aa990a:	62 e1 7c 28 10 52 05 	vmovups ymm18,YMMWORD PTR [rdx+0xa0]
  aa9911:	62 b1 34 28 59 f9    	vmulps ymm7,ymm9,ymm17
  aa9917:	62 b2 0d 28 bc fa    	vfnmadd231ps ymm7,ymm14,ymm18
  aa991d:	62 31 0c 28 59 f1    	vmulps ymm14,ymm14,ymm17
  aa9923:	62 e1 7c 28 10 4a 08 	vmovups ymm17,YMMWORD PTR [rdx+0x100]
  aa992a:	62 32 35 28 b8 f2    	vfmadd231ps ymm14,ymm9,ymm18
  aa9930:	c5 7c 10 8a 20 01 00 	vmovups ymm9,YMMWORD PTR [rdx+0x120]
  aa9937:	00 
  aa9938:	62 a1 3c 28 59 d1    	vmulps ymm18,ymm8,ymm17
  aa993e:	62 c2 05 28 bc d1    	vfnmadd231ps ymm18,ymm15,ymm9
  aa9944:	62 31 04 28 59 f9    	vmulps ymm15,ymm15,ymm17
  aa994a:	62 e1 7c 28 10 4a 06 	vmovups ymm17,YMMWORD PTR [rdx+0xc0]
  aa9951:	c4 42 3d b8 f9       	vfmadd231ps ymm15,ymm8,ymm9
  aa9956:	c5 7c 10 82 e0 00 00 	vmovups ymm8,YMMWORD PTR [rdx+0xe0]
  aa995d:	00 
  aa995e:	62 31 4c 28 59 c9    	vmulps ymm9,ymm6,ymm17
  aa9964:	c4 42 25 bc c8       	vfnmadd231ps ymm9,ymm11,ymm8
  aa9969:	62 31 24 28 59 d9    	vmulps ymm11,ymm11,ymm17
  aa996f:	62 e1 7c 28 10 4a 0a 	vmovups ymm17,YMMWORD PTR [rdx+0x140]
  aa9976:	c4 42 4d b8 d8       	vfmadd231ps ymm11,ymm6,ymm8
  aa997b:	c5 fc 10 b2 60 01 00 	vmovups ymm6,YMMWORD PTR [rdx+0x160]
  aa9982:	00 
  aa9983:	62 31 54 28 59 c1    	vmulps ymm8,ymm5,ymm17
  aa9989:	c4 62 1d bc c6       	vfnmadd231ps ymm8,ymm12,ymm6
  aa998e:	62 31 1c 28 59 e1    	vmulps ymm12,ymm12,ymm17
  aa9994:	62 a1 44 28 58 ca    	vaddps ymm17,ymm7,ymm18
  aa999a:	c4 62 55 b8 e6       	vfmadd231ps ymm12,ymm5,ymm6
  aa999f:	62 b1 6c 28 58 e9    	vaddps ymm5,ymm2,ymm17
  aa99a5:	c5 94 59 f3          	vmulps ymm6,ymm13,ymm3
  aa99a9:	62 b2 2d 28 bc f0    	vfnmadd231ps ymm6,ymm10,ymm16
  aa99af:	c4 41 2c 59 d5       	vmulps ymm10,ymm10,ymm13
  aa99b4:	c5 3c 58 ee          	vaddps ymm13,ymm8,ymm6
  aa99b8:	62 32 65 28 b8 d0    	vfmadd231ps ymm10,ymm3,ymm16
  aa99be:	c4 c1 34 58 dd       	vaddps ymm3,ymm9,ymm13
  aa99c3:	62 c1 0c 28 58 c7    	vaddps ymm16,ymm14,ymm15
  aa99c9:	62 e2 75 28 ac ca    	vfnmadd213ps ymm17,ymm1,ymm2
  aa99cf:	62 f1 7c 20 58 d4    	vaddps ymm2,ymm16,ymm4
  aa99d5:	c4 42 75 bc cd       	vfnmadd231ps ymm9,ymm1,ymm13
  aa99da:	c4 41 1c 58 ea       	vaddps ymm13,ymm12,ymm10
  aa99df:	62 e2 75 28 ac c4    	vfnmadd213ps ymm16,ymm1,ymm4
  aa99e5:	c4 c1 24 58 e5       	vaddps ymm4,ymm11,ymm13
  aa99ea:	c4 62 15 bc d9       	vfnmadd231ps ymm11,ymm13,ymm1
  aa99ef:	c4 c1 0c 5c cf       	vsubps ymm1,ymm14,ymm15
  aa99f4:	c4 41 1c 5c d2       	vsubps ymm10,ymm12,ymm10
  aa99f9:	62 b1 44 28 5c fa    	vsubps ymm7,ymm7,ymm18
  aa99ff:	c5 f4 59 c8          	vmulps ymm1,ymm1,ymm0
  aa9a03:	c5 bc 5c f6          	vsubps ymm6,ymm8,ymm6
  aa9a07:	62 71 74 20 58 c1    	vaddps ymm8,ymm17,ymm1
  aa9a0d:	c5 2c 59 d0          	vmulps ymm10,ymm10,ymm0
  aa9a11:	c5 c4 59 f8          	vmulps ymm7,ymm7,ymm0
  aa9a15:	c5 cc 59 c0          	vmulps ymm0,ymm6,ymm0
  aa9a19:	c4 c1 34 58 f2       	vaddps ymm6,ymm9,ymm10
  aa9a1e:	62 f1 74 20 5c c9    	vsubps ymm1,ymm17,ymm1
  aa9a24:	c5 3c 5c e6          	vsubps ymm12,ymm8,ymm6
  aa9a28:	c4 41 34 5c ca       	vsubps ymm9,ymm9,ymm10
  aa9a2d:	62 71 7c 20 5c d7    	vsubps ymm10,ymm16,ymm7
  aa9a33:	62 b1 44 28 58 f8    	vaddps ymm7,ymm7,ymm16
  aa9a39:	c5 24 5c e8          	vsubps ymm13,ymm11,ymm0
  aa9a3d:	c5 a4 58 c0          	vaddps ymm0,ymm11,ymm0
  aa9a41:	c5 34 58 d9          	vaddps ymm11,ymm9,ymm1
  aa9a45:	c5 bc 58 f6          	vaddps ymm6,ymm8,ymm6
  aa9a49:	c5 54 5c c3          	vsubps ymm8,ymm5,ymm3
  aa9a4d:	c4 c1 74 5c c9       	vsubps ymm1,ymm1,ymm9
  aa9a52:	c5 d4 58 db          	vaddps ymm3,ymm5,ymm3
  aa9a56:	c5 e8 58 ec          	vaddps xmm5,xmm2,xmm4
  aa9a5a:	c5 7c 28 0d 5e e8 5c 	vmovaps ymm9,YMMWORD PTR [rip+0xffffffffff5ce85e]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  aa9a61:	ff 
  aa9a62:	62 f2 35 28 7f eb    	vpermt2ps ymm5,ymm9,ymm3
  aa9a68:	c4 c1 28 5c dd       	vsubps xmm3,xmm10,xmm13
  aa9a6d:	62 d2 35 28 7f dc    	vpermt2ps ymm3,ymm9,ymm12
  aa9a73:	c5 40 58 e0          	vaddps xmm12,xmm7,xmm0
  aa9a77:	62 52 35 28 7f e3    	vpermt2ps ymm12,ymm9,ymm11
  aa9a7d:	c5 e8 5c d4          	vsubps xmm2,xmm2,xmm4
  aa9a81:	62 d2 35 28 7f d0    	vpermt2ps ymm2,ymm9,ymm8
  aa9a87:	c4 c1 28 58 e5       	vaddps xmm4,xmm10,xmm13
  aa9a8c:	62 f2 35 28 7f e6    	vpermt2ps ymm4,ymm9,ymm6
  aa9a92:	c5 c0 5c c0          	vsubps xmm0,xmm7,xmm0
  aa9a96:	62 f2 35 28 7f c1    	vpermt2ps ymm0,ymm9,ymm1
  aa9a9c:	c4 e3 7d 19 e9 01    	vextractf128 xmm1,ymm5,0x1
  aa9aa2:	c5 f8 13 4e 10       	vmovlps QWORD PTR [rsi+0x10],xmm1
  aa9aa7:	c5 f8 11 2e          	vmovups XMMWORD PTR [rsi],xmm5
  aa9aab:	c4 e3 7d 19 d9 01    	vextractf128 xmm1,ymm3,0x1
  aa9ab1:	c5 f8 13 4e 28       	vmovlps QWORD PTR [rsi+0x28],xmm1
  aa9ab6:	c5 f8 11 5e 18       	vmovups XMMWORD PTR [rsi+0x18],xmm3
  aa9abb:	c4 63 7d 19 e1 01    	vextractf128 xmm1,ymm12,0x1
  aa9ac1:	c5 f8 13 4e 40       	vmovlps QWORD PTR [rsi+0x40],xmm1
  aa9ac6:	c5 78 11 66 30       	vmovups XMMWORD PTR [rsi+0x30],xmm12
  aa9acb:	c4 e3 7d 19 d1 01    	vextractf128 xmm1,ymm2,0x1
  aa9ad1:	c5 f8 13 4e 58       	vmovlps QWORD PTR [rsi+0x58],xmm1
  aa9ad6:	c5 f8 11 56 48       	vmovups XMMWORD PTR [rsi+0x48],xmm2
  aa9adb:	c4 e3 7d 19 e1 01    	vextractf128 xmm1,ymm4,0x1
  aa9ae1:	c5 f8 13 4e 70       	vmovlps QWORD PTR [rsi+0x70],xmm1
  aa9ae6:	c5 f8 11 66 60       	vmovups XMMWORD PTR [rsi+0x60],xmm4
  aa9aeb:	c4 e3 7d 19 c1 01    	vextractf128 xmm1,ymm0,0x1
  aa9af1:	c5 f8 13 8e 88 00 00 	vmovlps QWORD PTR [rsi+0x88],xmm1
  aa9af8:	00 
  aa9af9:	c5 f8 11 46 78       	vmovups XMMWORD PTR [rsi+0x78],xmm0
  aa9afe:	c5 f8 77             	vzeroupper
  aa9b01:	c3                   	ret
