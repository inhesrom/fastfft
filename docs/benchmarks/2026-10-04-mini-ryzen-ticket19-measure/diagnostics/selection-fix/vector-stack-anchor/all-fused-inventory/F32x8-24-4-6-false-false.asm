
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000714880 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  714880:	c5 fc 10 07          	vmovups ymm0,YMMWORD PTR [rdi]
  714884:	c5 f8 10 4f 20       	vmovups xmm1,XMMWORD PTR [rdi+0x20]
  714889:	c5 fc 10 57 30       	vmovups ymm2,YMMWORD PTR [rdi+0x30]
  71488e:	c5 f8 10 5f 50       	vmovups xmm3,XMMWORD PTR [rdi+0x50]
  714893:	c5 fc 10 67 60       	vmovups ymm4,YMMWORD PTR [rdi+0x60]
  714898:	c5 f8 10 af 80 00 00 	vmovups xmm5,XMMWORD PTR [rdi+0x80]
  71489f:	00 
  7148a0:	c5 fc 10 b7 90 00 00 	vmovups ymm6,YMMWORD PTR [rdi+0x90]
  7148a7:	00 
  7148a8:	c5 f8 10 bf b0 00 00 	vmovups xmm7,XMMWORD PTR [rdi+0xb0]
  7148af:	00 
  7148b0:	c5 7c c6 c1 88       	vshufps ymm8,ymm0,ymm1,0x88
  7148b5:	c4 43 fd 01 c8 d8    	vpermpd ymm9,ymm8,0xd8
  7148bb:	c5 5c c6 c5 88       	vshufps ymm8,ymm4,ymm5,0x88
  7148c0:	c4 43 fd 01 d0 d8    	vpermpd ymm10,ymm8,0xd8
  7148c6:	c5 6c c6 c3 88       	vshufps ymm8,ymm2,ymm3,0x88
  7148cb:	c4 43 fd 01 d8 d8    	vpermpd ymm11,ymm8,0xd8
  7148d1:	c5 4c c6 c7 88       	vshufps ymm8,ymm6,ymm7,0x88
  7148d6:	c4 43 fd 01 e0 d8    	vpermpd ymm12,ymm8,0xd8
  7148dc:	c5 fc c6 c1 dd       	vshufps ymm0,ymm0,ymm1,0xdd
  7148e1:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  7148e7:	c5 dc c6 cd dd       	vshufps ymm1,ymm4,ymm5,0xdd
  7148ec:	c4 e3 fd 01 c9 d8    	vpermpd ymm1,ymm1,0xd8
  7148f2:	c5 ec c6 d3 dd       	vshufps ymm2,ymm2,ymm3,0xdd
  7148f7:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  7148fd:	c5 cc c6 df dd       	vshufps ymm3,ymm6,ymm7,0xdd
  714902:	c4 e3 fd 01 db d8    	vpermpd ymm3,ymm3,0xd8
  714908:	c4 c1 34 58 e2       	vaddps ymm4,ymm9,ymm10
  71490d:	c4 c1 24 58 ec       	vaddps ymm5,ymm11,ymm12
  714912:	c5 dc 58 f5          	vaddps ymm6,ymm4,ymm5
  714916:	c5 fc 58 f9          	vaddps ymm7,ymm0,ymm1
  71491a:	c5 6c 58 eb          	vaddps ymm13,ymm2,ymm3
  71491e:	c5 14 58 c7          	vaddps ymm8,ymm13,ymm7
  714922:	c4 41 34 5c d2       	vsubps ymm10,ymm9,ymm10
  714927:	c5 ec 5c d3          	vsubps ymm2,ymm2,ymm3
  71492b:	c5 2c 58 f2          	vaddps ymm14,ymm10,ymm2
  71492f:	c5 fc 5c c1          	vsubps ymm0,ymm0,ymm1
  714933:	c4 c1 1c 5c cb       	vsubps ymm1,ymm12,ymm11
  714938:	c5 74 58 c8          	vaddps ymm9,ymm1,ymm0
  71493c:	c5 dc 5c e5          	vsubps ymm4,ymm4,ymm5
  714940:	c4 c1 44 5c ed       	vsubps ymm5,ymm7,ymm13
  714945:	c5 ac 5c d2          	vsubps ymm2,ymm10,ymm2
  714949:	c5 fc 5c d9          	vsubps ymm3,ymm0,ymm1
  71494d:	c5 f8 28 c6          	vmovaps xmm0,xmm6
  714951:	c4 e3 7d 19 f1 01    	vextractf128 xmm1,ymm6,0x1
  714957:	c5 78 29 f6          	vmovaps xmm6,xmm14
  71495b:	c4 63 7d 19 f7 01    	vextractf128 xmm7,ymm14,0x1
  714961:	c5 78 28 d4          	vmovaps xmm10,xmm4
  714965:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  71496b:	c5 75 14 dc          	vunpcklpd ymm11,ymm1,ymm4
  71496f:	c5 f8 28 ca          	vmovaps xmm1,xmm2
  714973:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  714979:	c5 c5 14 d2          	vunpcklpd ymm2,ymm7,ymm2
  71497d:	c4 c1 7d 15 e2       	vunpckhpd ymm4,ymm0,ymm10
  714982:	c4 c1 7d 14 fa       	vunpcklpd ymm7,ymm0,ymm10
  714987:	c5 4d 15 d1          	vunpckhpd ymm10,ymm6,ymm1
  71498b:	c5 cd 14 c9          	vunpcklpd ymm1,ymm6,ymm1
  71498f:	c5 c4 c6 c1 88       	vshufps ymm0,ymm7,ymm1,0x88
  714994:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  714999:	c5 fc 11 44 24 b8    	vmovups YMMWORD PTR [rsp-0x48],ymm0
  71499f:	c5 c4 c6 c9 dd       	vshufps ymm1,ymm7,ymm1,0xdd
  7149a4:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  7149a9:	c4 c1 5c c6 f2 88    	vshufps ymm6,ymm4,ymm10,0x88
  7149af:	c5 cc c6 fe d8       	vshufps ymm7,ymm6,ymm6,0xd8
  7149b4:	c4 c1 5c c6 e2 dd    	vshufps ymm4,ymm4,ymm10,0xdd
  7149ba:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  7149bf:	c5 a4 c6 f2 88       	vshufps ymm6,ymm11,ymm2,0x88
  7149c4:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  7149c9:	c5 a4 c6 d2 dd       	vshufps ymm2,ymm11,ymm2,0xdd
  7149ce:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  7149d3:	c4 41 78 28 d0       	vmovaps xmm10,xmm8
  7149d8:	c4 43 7d 19 c0 01    	vextractf128 xmm8,ymm8,0x1
  7149de:	c4 41 78 28 d9       	vmovaps xmm11,xmm9
  7149e3:	c4 43 7d 19 c9 01    	vextractf128 xmm9,ymm9,0x1
  7149e9:	c5 78 28 e5          	vmovaps xmm12,xmm5
  7149ed:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  7149f3:	c5 bd 14 ed          	vunpcklpd ymm5,ymm8,ymm5
  7149f7:	c5 78 28 c3          	vmovaps xmm8,xmm3
  7149fb:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  714a01:	c5 35 14 eb          	vunpcklpd ymm13,ymm9,ymm3
  714a05:	c4 41 2d 15 f4       	vunpckhpd ymm14,ymm10,ymm12
  714a0a:	c4 41 2d 14 cc       	vunpcklpd ymm9,ymm10,ymm12
  714a0f:	c4 41 25 15 d0       	vunpckhpd ymm10,ymm11,ymm8
  714a14:	c4 41 25 14 c0       	vunpcklpd ymm8,ymm11,ymm8
  714a19:	c4 c1 34 c6 d8 88    	vshufps ymm3,ymm9,ymm8,0x88
  714a1f:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  714a24:	c4 41 34 c6 c0 dd    	vshufps ymm8,ymm9,ymm8,0xdd
  714a2a:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  714a30:	c4 41 0c c6 ca 88    	vshufps ymm9,ymm14,ymm10,0x88
  714a36:	c4 41 34 c6 c9 d8    	vshufps ymm9,ymm9,ymm9,0xd8
  714a3c:	c4 41 0c c6 d2 dd    	vshufps ymm10,ymm14,ymm10,0xdd
  714a42:	c4 41 2c c6 f2 d8    	vshufps ymm14,ymm10,ymm10,0xd8
  714a48:	c4 41 54 c6 d5 88    	vshufps ymm10,ymm5,ymm13,0x88
  714a4e:	c4 41 2c c6 e2 d8    	vshufps ymm12,ymm10,ymm10,0xd8
  714a54:	c4 c1 54 c6 ed dd    	vshufps ymm5,ymm5,ymm13,0xdd
  714a5a:	c5 54 c6 ed d8       	vshufps ymm13,ymm5,ymm5,0xd8
  714a5f:	c5 7c 10 5a 40       	vmovups ymm11,YMMWORD PTR [rdx+0x40]
  714a64:	c5 7c 10 92 80 00 00 	vmovups ymm10,YMMWORD PTR [rdx+0x80]
  714a6b:	00 
  714a6c:	c5 7c 10 ba a0 00 00 	vmovups ymm15,YMMWORD PTR [rdx+0xa0]
  714a73:	00 
  714a74:	c5 ac 59 ef          	vmulps ymm5,ymm10,ymm7
  714a78:	c4 c2 35 bc ef       	vfnmadd231ps ymm5,ymm9,ymm15
  714a7d:	c4 41 2c 59 c9       	vmulps ymm9,ymm10,ymm9
  714a82:	c5 fc 10 82 00 01 00 	vmovups ymm0,YMMWORD PTR [rdx+0x100]
  714a89:	00 
  714a8a:	c4 42 45 b8 cf       	vfmadd231ps ymm9,ymm7,ymm15
  714a8f:	c5 fc 10 ba 20 01 00 	vmovups ymm7,YMMWORD PTR [rdx+0x120]
  714a96:	00 
  714a97:	c5 7c 59 d6          	vmulps ymm10,ymm0,ymm6
  714a9b:	c4 62 1d bc d7       	vfnmadd231ps ymm10,ymm12,ymm7
  714aa0:	c5 1c 59 e0          	vmulps ymm12,ymm12,ymm0
  714aa4:	c5 fc 10 82 c0 00 00 	vmovups ymm0,YMMWORD PTR [rdx+0xc0]
  714aab:	00 
  714aac:	c4 62 4d b8 e7       	vfmadd231ps ymm12,ymm6,ymm7
  714ab1:	c5 7c 10 ba e0 00 00 	vmovups ymm15,YMMWORD PTR [rdx+0xe0]
  714ab8:	00 
  714ab9:	c5 fc 59 f4          	vmulps ymm6,ymm0,ymm4
  714abd:	c4 c2 0d bc f7       	vfnmadd231ps ymm6,ymm14,ymm15
  714ac2:	c5 8c 59 f8          	vmulps ymm7,ymm14,ymm0
  714ac6:	c5 fc 10 82 40 01 00 	vmovups ymm0,YMMWORD PTR [rdx+0x140]
  714acd:	00 
  714ace:	c4 c2 5d b8 ff       	vfmadd231ps ymm7,ymm4,ymm15
  714ad3:	c5 7c 10 ba 60 01 00 	vmovups ymm15,YMMWORD PTR [rdx+0x160]
  714ada:	00 
  714adb:	c5 7c 59 f2          	vmulps ymm14,ymm0,ymm2
  714adf:	c4 42 15 bc f7       	vfnmadd231ps ymm14,ymm13,ymm15
  714ae4:	c5 94 59 e0          	vmulps ymm4,ymm13,ymm0
  714ae8:	c5 fc 10 42 60       	vmovups ymm0,YMMWORD PTR [rdx+0x60]
  714aed:	c4 c2 6d b8 e7       	vfmadd231ps ymm4,ymm2,ymm15
  714af2:	c5 2c 58 ed          	vaddps ymm13,ymm10,ymm5
  714af6:	c5 24 59 f9          	vmulps ymm15,ymm11,ymm1
  714afa:	c4 62 3d bc f8       	vfnmadd231ps ymm15,ymm8,ymm0
  714aff:	c4 41 24 59 c0       	vmulps ymm8,ymm11,ymm8
  714b04:	c5 fc 10 54 24 b8    	vmovups ymm2,YMMWORD PTR [rsp-0x48]
  714b0a:	c5 14 58 da          	vaddps ymm11,ymm13,ymm2
  714b0e:	c5 7c 11 5c 24 d8    	vmovups YMMWORD PTR [rsp-0x28],ymm11
  714b14:	c4 62 75 b8 c0       	vfmadd231ps ymm8,ymm1,ymm0
  714b19:	c4 62 7d 18 1d 3e 09 	vbroadcastss ymm11,DWORD PTR [rip+0xffffffffff96093e]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  714b20:	96 ff 
  714b22:	c4 c1 0c 58 cf       	vaddps ymm1,ymm14,ymm15
  714b27:	c4 62 25 ac ea       	vfnmadd213ps ymm13,ymm11,ymm2
  714b2c:	c5 cc 58 c1          	vaddps ymm0,ymm6,ymm1
  714b30:	c5 fc 11 44 24 b8    	vmovups YMMWORD PTR [rsp-0x48],ymm0
  714b36:	c4 e2 25 bc f1       	vfnmadd231ps ymm6,ymm11,ymm1
  714b3b:	c4 c1 34 58 c4       	vaddps ymm0,ymm9,ymm12
  714b40:	c5 fc 58 d3          	vaddps ymm2,ymm0,ymm3
  714b44:	c4 e2 25 ac c3       	vfnmadd213ps ymm0,ymm11,ymm3
  714b49:	c5 bc 58 cc          	vaddps ymm1,ymm8,ymm4
  714b4d:	c5 c4 58 d9          	vaddps ymm3,ymm7,ymm1
  714b51:	c4 c2 75 bc fb       	vfnmadd231ps ymm7,ymm1,ymm11
  714b56:	c4 c1 34 5c cc       	vsubps ymm1,ymm9,ymm12
  714b5b:	c4 41 5c 5c c0       	vsubps ymm8,ymm4,ymm8
  714b60:	c4 62 7d 18 0d 6b 07 	vbroadcastss ymm9,DWORD PTR [rip+0xffffffffff96076b]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  714b67:	96 ff 
  714b69:	c5 b4 59 c9          	vmulps ymm1,ymm9,ymm1
  714b6d:	c4 c1 54 5c ea       	vsubps ymm5,ymm5,ymm10
  714b72:	c5 94 58 e1          	vaddps ymm4,ymm13,ymm1
  714b76:	c4 41 3c 59 e1       	vmulps ymm12,ymm8,ymm9
  714b7b:	c4 41 0c 5c d7       	vsubps ymm10,ymm14,ymm15
  714b80:	c5 1c 58 c6          	vaddps ymm8,ymm12,ymm6
  714b84:	c5 34 59 f5          	vmulps ymm14,ymm9,ymm5
  714b88:	c4 41 2c 59 f9       	vmulps ymm15,ymm10,ymm9
  714b8d:	c4 41 7c 5c d6       	vsubps ymm10,ymm0,ymm14
  714b92:	c5 94 5c e9          	vsubps ymm5,ymm13,ymm1
  714b96:	c4 41 44 5c df       	vsubps ymm11,ymm7,ymm15
  714b9b:	c4 c1 4c 5c f4       	vsubps ymm6,ymm6,ymm12
  714ba0:	c5 0c 58 c8          	vaddps ymm9,ymm14,ymm0
  714ba4:	c5 84 58 ff          	vaddps ymm7,ymm15,ymm7
  714ba8:	c5 e8 58 c3          	vaddps xmm0,xmm2,xmm3
  714bac:	c5 7c 10 6c 24 d8    	vmovups ymm13,YMMWORD PTR [rsp-0x28]
  714bb2:	c5 7c 10 74 24 b8    	vmovups ymm14,YMMWORD PTR [rsp-0x48]
  714bb8:	c4 c1 10 58 ce       	vaddps xmm1,xmm13,xmm14
  714bbd:	c5 70 14 e0          	vunpcklps xmm12,xmm1,xmm0
  714bc1:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  714bc5:	c5 f8 11 46 10       	vmovups XMMWORD PTR [rsi+0x10],xmm0
  714bca:	c5 78 11 26          	vmovups XMMWORD PTR [rsi],xmm12
  714bce:	c4 c1 28 5c c3       	vsubps xmm0,xmm10,xmm11
  714bd3:	c4 c1 58 5c c8       	vsubps xmm1,xmm4,xmm8
  714bd8:	c5 70 14 e0          	vunpcklps xmm12,xmm1,xmm0
  714bdc:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  714be0:	c5 f8 11 46 30       	vmovups XMMWORD PTR [rsi+0x30],xmm0
  714be5:	c5 78 11 66 20       	vmovups XMMWORD PTR [rsi+0x20],xmm12
  714bea:	c5 b0 58 c7          	vaddps xmm0,xmm9,xmm7
  714bee:	c5 d0 58 ce          	vaddps xmm1,xmm5,xmm6
  714bf2:	c5 70 14 e0          	vunpcklps xmm12,xmm1,xmm0
  714bf6:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  714bfa:	c5 f8 11 46 50       	vmovups XMMWORD PTR [rsi+0x50],xmm0
  714bff:	c5 78 11 66 40       	vmovups XMMWORD PTR [rsi+0x40],xmm12
  714c04:	c5 e8 5c c3          	vsubps xmm0,xmm2,xmm3
  714c08:	c4 c1 10 5c ce       	vsubps xmm1,xmm13,xmm14
  714c0d:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  714c11:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  714c15:	c5 f8 11 46 70       	vmovups XMMWORD PTR [rsi+0x70],xmm0
  714c1a:	c5 f8 11 56 60       	vmovups XMMWORD PTR [rsi+0x60],xmm2
  714c1f:	c4 c1 28 58 c3       	vaddps xmm0,xmm10,xmm11
  714c24:	c5 b8 58 cc          	vaddps xmm1,xmm8,xmm4
  714c28:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  714c2c:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  714c30:	c5 f8 11 86 90 00 00 	vmovups XMMWORD PTR [rsi+0x90],xmm0
  714c37:	00 
  714c38:	c5 f8 11 96 80 00 00 	vmovups XMMWORD PTR [rsi+0x80],xmm2
  714c3f:	00 
  714c40:	c5 b0 5c c7          	vsubps xmm0,xmm9,xmm7
  714c44:	c5 d0 5c ce          	vsubps xmm1,xmm5,xmm6
  714c48:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  714c4c:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  714c50:	c5 f8 11 86 b0 00 00 	vmovups XMMWORD PTR [rsi+0xb0],xmm0
  714c57:	00 
  714c58:	c5 f8 11 96 a0 00 00 	vmovups XMMWORD PTR [rsi+0xa0],xmm2
  714c5f:	00 
  714c60:	c5 f8 77             	vzeroupper
  714c63:	c3                   	ret
