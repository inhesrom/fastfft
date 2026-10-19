
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000006c6900 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  6c6900:	c5 fb 10 47 10       	vmovsd xmm0,QWORD PTR [rdi+0x10]
  6c6905:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  6c690b:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  6c690f:	c4 e3 7d 0c c1 c0    	vblendps ymm0,ymm0,ymm1,0xc0
  6c6915:	c5 fb 10 57 28       	vmovsd xmm2,QWORD PTR [rdi+0x28]
  6c691a:	c4 e3 7d 18 d2 01    	vinsertf128 ymm2,ymm0,xmm2,0x1
  6c6920:	c4 e3 6d 0c d1 c0    	vblendps ymm2,ymm2,ymm1,0xc0
  6c6926:	c5 fb 10 5f 40       	vmovsd xmm3,QWORD PTR [rdi+0x40]
  6c692b:	c4 e3 7d 18 db 01    	vinsertf128 ymm3,ymm0,xmm3,0x1
  6c6931:	c4 e3 65 0c d9 c0    	vblendps ymm3,ymm3,ymm1,0xc0
  6c6937:	c5 f8 10 27          	vmovups xmm4,XMMWORD PTR [rdi]
  6c693b:	c5 f8 10 6f 18       	vmovups xmm5,XMMWORD PTR [rdi+0x18]
  6c6940:	c5 f8 10 77 30       	vmovups xmm6,XMMWORD PTR [rdi+0x30]
  6c6945:	c5 f8 10 7f 48       	vmovups xmm7,XMMWORD PTR [rdi+0x48]
  6c694a:	c5 7b 10 47 58       	vmovsd xmm8,QWORD PTR [rdi+0x58]
  6c694f:	c4 43 7d 18 c0 01    	vinsertf128 ymm8,ymm0,xmm8,0x1
  6c6955:	c4 e3 3d 0c c9 c0    	vblendps ymm1,ymm8,ymm1,0xc0
  6c695b:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  6c6961:	c5 58 c6 c0 dd       	vshufps xmm8,xmm4,xmm0,0xdd
  6c6966:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  6c696c:	c5 48 c6 cb dd       	vshufps xmm9,xmm6,xmm3,0xdd
  6c6971:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  6c6977:	c5 50 c6 d2 dd       	vshufps xmm10,xmm5,xmm2,0xdd
  6c697c:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  6c6982:	c5 40 c6 d9 dd       	vshufps xmm11,xmm7,xmm1,0xdd
  6c6987:	c5 d8 c6 c0 88       	vshufps xmm0,xmm4,xmm0,0x88
  6c698c:	c5 c8 c6 db 88       	vshufps xmm3,xmm6,xmm3,0x88
  6c6991:	c5 d0 c6 ea 88       	vshufps xmm5,xmm5,xmm2,0x88
  6c6996:	c5 c0 c6 c9 88       	vshufps xmm1,xmm7,xmm1,0x88
  6c699b:	c4 c1 3c 58 f9       	vaddps ymm7,ymm8,ymm9
  6c69a0:	c4 41 2c 58 e3       	vaddps ymm12,ymm10,ymm11
  6c69a5:	c5 fc 58 d3          	vaddps ymm2,ymm0,ymm3
  6c69a9:	c5 d4 58 e1          	vaddps ymm4,ymm5,ymm1
  6c69ad:	c4 41 3c 5c c1       	vsubps ymm8,ymm8,ymm9
  6c69b2:	c5 d4 5c c9          	vsubps ymm1,ymm5,ymm1
  6c69b6:	c5 fc 5c eb          	vsubps ymm5,ymm0,ymm3
  6c69ba:	c4 c1 24 5c f2       	vsubps ymm6,ymm11,ymm10
  6c69bf:	c5 98 58 c7          	vaddps xmm0,xmm12,xmm7
  6c69c3:	c5 b8 58 d9          	vaddps xmm3,xmm8,xmm1
  6c69c7:	c4 c1 40 5c fc       	vsubps xmm7,xmm7,xmm12
  6c69cc:	c5 b8 5c c9          	vsubps xmm1,xmm8,xmm1
  6c69d0:	c5 7d 15 c7          	vunpckhpd ymm8,ymm0,ymm7
  6c69d4:	c5 fd 14 ff          	vunpcklpd ymm7,ymm0,ymm7
  6c69d8:	c5 e5 15 c1          	vunpckhpd ymm0,ymm3,ymm1
  6c69dc:	c5 3c c6 c0 88       	vshufps ymm8,ymm8,ymm0,0x88
  6c69e1:	c5 e5 14 c9          	vunpcklpd ymm1,ymm3,ymm1
  6c69e5:	c5 c4 c6 c1 88       	vshufps ymm0,ymm7,ymm1,0x88
  6c69ea:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  6c69ef:	c5 c4 c6 c9 dd       	vshufps ymm1,ymm7,ymm1,0xdd
  6c69f4:	c5 f4 c6 d9 d8       	vshufps ymm3,ymm1,ymm1,0xd8
  6c69f9:	c4 c1 3c c6 c8 d8    	vshufps ymm1,ymm8,ymm8,0xd8
  6c69ff:	c5 e8 58 fc          	vaddps xmm7,xmm2,xmm4
  6c6a03:	c5 48 58 c5          	vaddps xmm8,xmm6,xmm5
  6c6a07:	c5 e8 5c d4          	vsubps xmm2,xmm2,xmm4
  6c6a0b:	c5 d0 5c e6          	vsubps xmm4,xmm5,xmm6
  6c6a0f:	c5 c5 15 ea          	vunpckhpd ymm5,ymm7,ymm2
  6c6a13:	c5 c5 14 f2          	vunpcklpd ymm6,ymm7,ymm2
  6c6a17:	c5 bd 15 d4          	vunpckhpd ymm2,ymm8,ymm4
  6c6a1b:	c5 d4 c6 ea 88       	vshufps ymm5,ymm5,ymm2,0x88
  6c6a20:	c5 bd 14 e4          	vunpcklpd ymm4,ymm8,ymm4
  6c6a24:	c5 cc c6 d4 88       	vshufps ymm2,ymm6,ymm4,0x88
  6c6a29:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  6c6a2e:	c5 cc c6 e4 dd       	vshufps ymm4,ymm6,ymm4,0xdd
  6c6a33:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  6c6a38:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  6c6a3d:	c5 fc 10 72 40       	vmovups ymm6,YMMWORD PTR [rdx+0x40]
  6c6a42:	c5 fc 10 7a 60       	vmovups ymm7,YMMWORD PTR [rdx+0x60]
  6c6a47:	c5 7c 10 82 80 00 00 	vmovups ymm8,YMMWORD PTR [rdx+0x80]
  6c6a4e:	00 
  6c6a4f:	c5 7c 10 8a a0 00 00 	vmovups ymm9,YMMWORD PTR [rdx+0xa0]
  6c6a56:	00 
  6c6a57:	c5 4c 59 d3          	vmulps ymm10,ymm6,ymm3
  6c6a5b:	c4 62 5d bc d7       	vfnmadd231ps ymm10,ymm4,ymm7
  6c6a60:	c5 3c 59 d9          	vmulps ymm11,ymm8,ymm1
  6c6a64:	c4 42 55 bc d9       	vfnmadd231ps ymm11,ymm5,ymm9
  6c6a69:	c4 41 2c 58 e3       	vaddps ymm12,ymm10,ymm11
  6c6a6e:	c5 cc 59 e4          	vmulps ymm4,ymm6,ymm4
  6c6a72:	c4 e2 65 b8 e7       	vfmadd231ps ymm4,ymm3,ymm7
  6c6a77:	c5 bc 59 dd          	vmulps ymm3,ymm8,ymm5
  6c6a7b:	c4 c2 75 b8 d9       	vfmadd231ps ymm3,ymm1,ymm9
  6c6a80:	c4 e2 7d 18 0d d7 e9 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff9ae9d7]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6c6a87:	9a ff 
  6c6a89:	c5 dc 58 eb          	vaddps ymm5,ymm4,ymm3
  6c6a8d:	c5 fc 28 f1          	vmovaps ymm6,ymm1
  6c6a91:	c4 e2 1d ac f0       	vfnmadd213ps ymm6,ymm12,ymm0
  6c6a96:	c5 dc 5c db          	vsubps ymm3,ymm4,ymm3
  6c6a9a:	c4 e2 7d 18 25 31 e8 	vbroadcastss ymm4,DWORD PTR [rip+0xffffffffff9ae831]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6c6aa1:	9a ff 
  6c6aa3:	c5 e4 59 dc          	vmulps ymm3,ymm3,ymm4
  6c6aa7:	c4 e2 55 ac ca       	vfnmadd213ps ymm1,ymm5,ymm2
  6c6aac:	c4 c1 2c 5c fb       	vsubps ymm7,ymm10,ymm11
  6c6ab1:	c5 c4 59 e4          	vmulps ymm4,ymm7,ymm4
  6c6ab5:	c5 98 58 c0          	vaddps xmm0,xmm12,xmm0
  6c6ab9:	c5 d0 58 d2          	vaddps xmm2,xmm5,xmm2
  6c6abd:	c5 e8 14 e8          	vunpcklps xmm5,xmm2,xmm0
  6c6ac1:	c5 e8 15 c0          	vunpckhps xmm0,xmm2,xmm0
  6c6ac5:	c5 f8 11 46 10       	vmovups XMMWORD PTR [rsi+0x10],xmm0
  6c6aca:	c5 f8 11 2e          	vmovups XMMWORD PTR [rsi],xmm5
  6c6ace:	c5 c8 58 c3          	vaddps xmm0,xmm6,xmm3
  6c6ad2:	c5 f0 5c d4          	vsubps xmm2,xmm1,xmm4
  6c6ad6:	c5 e8 14 e8          	vunpcklps xmm5,xmm2,xmm0
  6c6ada:	c5 e8 15 c0          	vunpckhps xmm0,xmm2,xmm0
  6c6ade:	c5 f8 11 46 30       	vmovups XMMWORD PTR [rsi+0x30],xmm0
  6c6ae3:	c5 f8 11 6e 20       	vmovups XMMWORD PTR [rsi+0x20],xmm5
  6c6ae8:	c5 c8 5c c3          	vsubps xmm0,xmm6,xmm3
  6c6aec:	c5 f0 58 cc          	vaddps xmm1,xmm1,xmm4
  6c6af0:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  6c6af4:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  6c6af8:	c5 f8 11 46 50       	vmovups XMMWORD PTR [rsi+0x50],xmm0
  6c6afd:	c5 f8 11 56 40       	vmovups XMMWORD PTR [rsi+0x40],xmm2
  6c6b02:	c5 f8 77             	vzeroupper
  6c6b05:	c3                   	ret
