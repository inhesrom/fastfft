
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000006cc780 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  6cc780:	48 81 ec 88 00 00 00 	sub    rsp,0x88
  6cc787:	48 c1 e2 05          	shl    rdx,0x5
  6cc78b:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  6cc78f:	31 d2                	xor    edx,edx
  6cc791:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  6cc798:	0f 1f 84 00 00 00 00 
  6cc79f:	00 
  6cc7a0:	c5 fc 10 2c 17       	vmovups ymm5,YMMWORD PTR [rdi+rdx*1]
  6cc7a5:	c5 f8 10 7c 17 20    	vmovups xmm7,XMMWORD PTR [rdi+rdx*1+0x20]
  6cc7ab:	c5 7c 10 44 17 30    	vmovups ymm8,YMMWORD PTR [rdi+rdx*1+0x30]
  6cc7b1:	c5 f8 10 44 17 50    	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x50]
  6cc7b7:	c5 7c 10 4c 17 60    	vmovups ymm9,YMMWORD PTR [rdi+rdx*1+0x60]
  6cc7bd:	c5 78 10 94 17 80 00 	vmovups xmm10,XMMWORD PTR [rdi+rdx*1+0x80]
  6cc7c4:	00 00 
  6cc7c6:	c5 7c 10 a4 17 90 00 	vmovups ymm12,YMMWORD PTR [rdi+rdx*1+0x90]
  6cc7cd:	00 00 
  6cc7cf:	c5 78 10 ac 17 b0 00 	vmovups xmm13,XMMWORD PTR [rdi+rdx*1+0xb0]
  6cc7d6:	00 00 
  6cc7d8:	c5 7c 10 bc 17 c0 00 	vmovups ymm15,YMMWORD PTR [rdi+rdx*1+0xc0]
  6cc7df:	00 00 
  6cc7e1:	c5 f8 10 8c 17 e0 00 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0xe0]
  6cc7e8:	00 00 
  6cc7ea:	c5 fc 10 9c 17 f0 00 	vmovups ymm3,YMMWORD PTR [rdi+rdx*1+0xf0]
  6cc7f1:	00 00 
  6cc7f3:	c5 f8 10 94 17 10 01 	vmovups xmm2,XMMWORD PTR [rdi+rdx*1+0x110]
  6cc7fa:	00 00 
  6cc7fc:	c5 d4 c6 e7 88       	vshufps ymm4,ymm5,ymm7,0x88
  6cc801:	c4 e3 fd 01 e4 d8    	vpermpd ymm4,ymm4,0xd8
  6cc807:	c5 fc 11 64 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm4
  6cc80d:	c4 c1 34 c6 e2 88    	vshufps ymm4,ymm9,ymm10,0x88
  6cc813:	c4 e3 fd 01 e4 d8    	vpermpd ymm4,ymm4,0xd8
  6cc819:	c5 fc 11 24 24       	vmovups YMMWORD PTR [rsp],ymm4
  6cc81e:	c5 84 c6 e1 88       	vshufps ymm4,ymm15,ymm1,0x88
  6cc823:	c4 e3 fd 01 e4 d8    	vpermpd ymm4,ymm4,0xd8
  6cc829:	c5 fc 11 64 24 e0    	vmovups YMMWORD PTR [rsp-0x20],ymm4
  6cc82f:	c4 41 1c c6 dd 88    	vshufps ymm11,ymm12,ymm13,0x88
  6cc835:	c4 43 fd 01 db d8    	vpermpd ymm11,ymm11,0xd8
  6cc83b:	c5 54 c6 f7 dd       	vshufps ymm14,ymm5,ymm7,0xdd
  6cc840:	c5 e4 c6 ea 88       	vshufps ymm5,ymm3,ymm2,0x88
  6cc845:	c4 e3 fd 01 e5 d8    	vpermpd ymm4,ymm5,0xd8
  6cc84b:	c5 fc 11 64 24 20    	vmovups YMMWORD PTR [rsp+0x20],ymm4
  6cc851:	c4 41 34 c6 ca dd    	vshufps ymm9,ymm9,ymm10,0xdd
  6cc857:	c5 fc 28 e8          	vmovaps ymm5,ymm0
  6cc85b:	c5 bc c6 f8 88       	vshufps ymm7,ymm8,ymm0,0x88
  6cc860:	c4 e3 fd 01 c7 d8    	vpermpd ymm0,ymm7,0xd8
  6cc866:	c5 fc 11 44 24 40    	vmovups YMMWORD PTR [rsp+0x40],ymm0
  6cc86c:	c4 43 fd 01 f6 d8    	vpermpd ymm14,ymm14,0xd8
  6cc872:	c4 c3 fd 01 f1 d8    	vpermpd ymm6,ymm9,0xd8
  6cc878:	c5 84 c6 c9 dd       	vshufps ymm1,ymm15,ymm1,0xdd
  6cc87d:	c4 e3 fd 01 c9 d8    	vpermpd ymm1,ymm1,0xd8
  6cc883:	c4 41 1c c6 cd dd    	vshufps ymm9,ymm12,ymm13,0xdd
  6cc889:	c4 43 fd 01 e1 d8    	vpermpd ymm12,ymm9,0xd8
  6cc88f:	c5 e4 c6 d2 dd       	vshufps ymm2,ymm3,ymm2,0xdd
  6cc894:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  6cc89a:	c5 bc c6 dd dd       	vshufps ymm3,ymm8,ymm5,0xdd
  6cc89f:	c4 63 fd 01 fb d8    	vpermpd ymm15,ymm3,0xd8
  6cc8a5:	c5 7c 10 04 24       	vmovups ymm8,YMMWORD PTR [rsp]
  6cc8aa:	c5 fc 10 7c 24 e0    	vmovups ymm7,YMMWORD PTR [rsp-0x20]
  6cc8b0:	c5 3c 58 d7          	vaddps ymm10,ymm8,ymm7
  6cc8b4:	c5 7c 10 6c 24 80    	vmovups ymm13,YMMWORD PTR [rsp-0x80]
  6cc8ba:	c4 c1 2c 58 ed       	vaddps ymm5,ymm10,ymm13
  6cc8bf:	c5 fc 11 6c 24 60    	vmovups YMMWORD PTR [rsp+0x60],ymm5
  6cc8c5:	c5 5c 58 c8          	vaddps ymm9,ymm4,ymm0
  6cc8c9:	c4 c1 34 58 c3       	vaddps ymm0,ymm9,ymm11
  6cc8ce:	c5 fc 11 44 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm0
  6cc8d4:	c4 e2 7d 18 1d 83 8b 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff9a8b83]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6cc8db:	9a ff 
  6cc8dd:	c4 42 65 ac d5       	vfnmadd213ps ymm10,ymm3,ymm13
  6cc8e2:	c5 4c 58 e9          	vaddps ymm13,ymm6,ymm1
  6cc8e6:	c5 cc 5c f1          	vsubps ymm6,ymm6,ymm1
  6cc8ea:	c5 d4 58 c8          	vaddps ymm1,ymm5,ymm0
  6cc8ee:	c5 fc 11 4c 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm1
  6cc8f4:	c4 42 65 ac cb       	vfnmadd213ps ymm9,ymm3,ymm11
  6cc8f9:	c5 84 58 ca          	vaddps ymm1,ymm15,ymm2
  6cc8fd:	c4 c1 6c 5c d7       	vsubps ymm2,ymm2,ymm15
  6cc902:	c4 41 14 58 de       	vaddps ymm11,ymm13,ymm14
  6cc907:	c4 42 65 ac ee       	vfnmadd213ps ymm13,ymm3,ymm14
  6cc90c:	c5 fc 28 eb          	vmovaps ymm5,ymm3
  6cc910:	c5 1c 58 f1          	vaddps ymm14,ymm12,ymm1
  6cc914:	c5 3c 5c ff          	vsubps ymm15,ymm8,ymm7
  6cc918:	c4 c1 24 58 de       	vaddps ymm3,ymm11,ymm14
  6cc91d:	c5 fc 11 5c 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm3
  6cc923:	c4 e2 7d 18 25 a8 89 	vbroadcastss ymm4,DWORD PTR [rip+0xffffffffff9a89a8]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6cc92a:	9a ff 
  6cc92c:	c5 cc 59 c4          	vmulps ymm0,ymm6,ymm4
  6cc930:	c4 c2 55 ac cc       	vfnmadd213ps ymm1,ymm5,ymm12
  6cc935:	c5 2c 58 e0          	vaddps ymm12,ymm10,ymm0
  6cc939:	c5 ec 59 d4          	vmulps ymm2,ymm2,ymm4
  6cc93d:	c5 fc 10 5c 24 20    	vmovups ymm3,YMMWORD PTR [rsp+0x20]
  6cc943:	c5 e4 5c 6c 24 40    	vsubps ymm5,ymm3,YMMWORD PTR [rsp+0x40]
  6cc949:	c5 b4 58 fa          	vaddps ymm7,ymm9,ymm2
  6cc94d:	c5 2c 5c d0          	vsubps ymm10,ymm10,ymm0
  6cc951:	c5 9c 5c df          	vsubps ymm3,ymm12,ymm7
  6cc955:	c5 04 59 fc          	vmulps ymm15,ymm15,ymm4
  6cc959:	c5 b4 5c d2          	vsubps ymm2,ymm9,ymm2
  6cc95d:	c4 41 14 5c cf       	vsubps ymm9,ymm13,ymm15
  6cc962:	c5 d4 59 ec          	vmulps ymm5,ymm5,ymm4
  6cc966:	c4 41 04 58 ed       	vaddps ymm13,ymm15,ymm13
  6cc96b:	c5 f4 5c c5          	vsubps ymm0,ymm1,ymm5
  6cc96f:	c5 d4 58 e9          	vaddps ymm5,ymm5,ymm1
  6cc973:	c5 34 5c f8          	vsubps ymm15,ymm9,ymm0
  6cc977:	c5 fc 10 4c 24 60    	vmovups ymm1,YMMWORD PTR [rsp+0x60]
  6cc97d:	c5 f4 5c 74 24 a0    	vsubps ymm6,ymm1,YMMWORD PTR [rsp-0x60]
  6cc983:	c5 ac 58 ca          	vaddps ymm1,ymm10,ymm2
  6cc987:	c4 c1 24 5c e6       	vsubps ymm4,ymm11,ymm14
  6cc98c:	c5 14 58 dd          	vaddps ymm11,ymm13,ymm5
  6cc990:	c5 9c 58 ff          	vaddps ymm7,ymm12,ymm7
  6cc994:	c5 34 58 f0          	vaddps ymm14,ymm9,ymm0
  6cc998:	c5 ac 5c c2          	vsubps ymm0,ymm10,ymm2
  6cc99c:	c5 14 5c ed          	vsubps ymm13,ymm13,ymm5
  6cc9a0:	c5 fc 10 54 24 c0    	vmovups ymm2,YMMWORD PTR [rsp-0x40]
  6cc9a6:	c4 e3 6d 18 ef 01    	vinsertf128 ymm5,ymm2,xmm7,0x1
  6cc9ac:	c4 e3 6d 06 d7 31    	vperm2f128 ymm2,ymm2,ymm7,0x31
  6cc9b2:	c4 e3 65 18 f8 01    	vinsertf128 ymm7,ymm3,xmm0,0x1
  6cc9b8:	c4 e3 65 06 c0 31    	vperm2f128 ymm0,ymm3,ymm0,0x31
  6cc9be:	c5 ec 14 c0          	vunpcklps ymm0,ymm2,ymm0
  6cc9c2:	c5 78 28 c1          	vmovaps xmm8,xmm1
  6cc9c6:	c5 78 28 ce          	vmovaps xmm9,xmm6
  6cc9ca:	c5 d4 14 df          	vunpcklps ymm3,ymm5,ymm7
  6cc9ce:	c4 41 3c 14 d1       	vunpcklps ymm10,ymm8,ymm9
  6cc9d3:	c4 c1 65 14 d2       	vunpcklpd ymm2,ymm3,ymm10
  6cc9d8:	c4 c1 65 15 da       	vunpckhpd ymm3,ymm3,ymm10
  6cc9dd:	c5 d4 15 ef          	vunpckhps ymm5,ymm5,ymm7
  6cc9e1:	c4 c1 3c 15 f9       	vunpckhps ymm7,ymm8,ymm9
  6cc9e6:	c5 55 14 cf          	vunpcklpd ymm9,ymm5,ymm7
  6cc9ea:	c5 d5 15 ef          	vunpckhpd ymm5,ymm5,ymm7
  6cc9ee:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  6cc9f4:	c4 e3 7d 19 f6 01    	vextractf128 xmm6,ymm6,0x1
  6cc9fa:	c5 f4 14 ce          	vunpcklps ymm1,ymm1,ymm6
  6cc9fe:	c5 7d 14 d1          	vunpcklpd ymm10,ymm0,ymm1
  6cca02:	c5 fd 15 f1          	vunpckhpd ymm6,ymm0,ymm1
  6cca06:	c5 fc 10 44 24 80    	vmovups ymm0,YMMWORD PTR [rsp-0x80]
  6cca0c:	c4 c3 7d 18 ce 01    	vinsertf128 ymm1,ymm0,xmm14,0x1
  6cca12:	c4 c3 7d 06 c6 31    	vperm2f128 ymm0,ymm0,ymm14,0x31
  6cca18:	c4 c3 05 18 fd 01    	vinsertf128 ymm7,ymm15,xmm13,0x1
  6cca1e:	c4 43 05 06 c5 31    	vperm2f128 ymm8,ymm15,ymm13,0x31
  6cca24:	c4 41 7c 14 f0       	vunpcklps ymm14,ymm0,ymm8
  6cca29:	c4 41 78 28 e3       	vmovaps xmm12,xmm11
  6cca2e:	c5 78 28 ec          	vmovaps xmm13,xmm4
  6cca32:	c5 74 14 c7          	vunpcklps ymm8,ymm1,ymm7
  6cca36:	c4 41 1c 14 fd       	vunpcklps ymm15,ymm12,ymm13
  6cca3b:	c4 c1 3d 14 c7       	vunpcklpd ymm0,ymm8,ymm15
  6cca40:	c5 fc 11 44 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm0
  6cca46:	c4 41 3d 15 c7       	vunpckhpd ymm8,ymm8,ymm15
  6cca4b:	c5 f4 15 cf          	vunpckhps ymm1,ymm1,ymm7
  6cca4f:	c4 c1 1c 15 fd       	vunpckhps ymm7,ymm12,ymm13
  6cca54:	c5 75 14 ef          	vunpcklpd ymm13,ymm1,ymm7
  6cca58:	c5 75 15 e7          	vunpckhpd ymm12,ymm1,ymm7
  6cca5c:	c4 63 7d 19 d9 01    	vextractf128 xmm1,ymm11,0x1
  6cca62:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  6cca68:	c5 f4 14 cc          	vunpcklps ymm1,ymm1,ymm4
  6cca6c:	c5 0d 14 f9          	vunpcklpd ymm15,ymm14,ymm1
  6cca70:	c5 0d 15 d9          	vunpckhpd ymm11,ymm14,ymm1
  6cca74:	c5 fc 10 89 80 00 00 	vmovups ymm1,YMMWORD PTR [rcx+0x80]
  6cca7b:	00 
  6cca7c:	c5 fc 10 a1 a0 00 00 	vmovups ymm4,YMMWORD PTR [rcx+0xa0]
  6cca83:	00 
  6cca84:	c5 b4 59 f9          	vmulps ymm7,ymm9,ymm1
  6cca88:	c4 e2 15 bc fc       	vfnmadd231ps ymm7,ymm13,ymm4
  6cca8d:	c5 14 59 f1          	vmulps ymm14,ymm13,ymm1
  6cca91:	c5 fc 10 89 00 01 00 	vmovups ymm1,YMMWORD PTR [rcx+0x100]
  6cca98:	00 
  6cca99:	c4 62 35 b8 f4       	vfmadd231ps ymm14,ymm9,ymm4
  6cca9e:	c5 fc 10 a1 20 01 00 	vmovups ymm4,YMMWORD PTR [rcx+0x120]
  6ccaa5:	00 
  6ccaa6:	c5 2c 59 e9          	vmulps ymm13,ymm10,ymm1
  6ccaaa:	c4 62 05 bc ec       	vfnmadd231ps ymm13,ymm15,ymm4
  6ccaaf:	c5 04 59 f9          	vmulps ymm15,ymm15,ymm1
  6ccab3:	c5 fc 10 89 c0 00 00 	vmovups ymm1,YMMWORD PTR [rcx+0xc0]
  6ccaba:	00 
  6ccabb:	c4 62 2d b8 fc       	vfmadd231ps ymm15,ymm10,ymm4
  6ccac0:	c5 fc 10 a1 e0 00 00 	vmovups ymm4,YMMWORD PTR [rcx+0xe0]
  6ccac7:	00 
  6ccac8:	c5 74 59 d5          	vmulps ymm10,ymm1,ymm5
  6ccacc:	c4 62 1d bc d4       	vfnmadd231ps ymm10,ymm12,ymm4
  6ccad1:	c5 1c 59 c9          	vmulps ymm9,ymm12,ymm1
  6ccad5:	c5 fc 10 89 40 01 00 	vmovups ymm1,YMMWORD PTR [rcx+0x140]
  6ccadc:	00 
  6ccadd:	c4 62 55 b8 cc       	vfmadd231ps ymm9,ymm5,ymm4
  6ccae2:	c5 fc 10 a1 60 01 00 	vmovups ymm4,YMMWORD PTR [rcx+0x160]
  6ccae9:	00 
  6ccaea:	c5 74 59 e6          	vmulps ymm12,ymm1,ymm6
  6ccaee:	c4 62 25 bc e4       	vfnmadd231ps ymm12,ymm11,ymm4
  6ccaf3:	c5 a4 59 c9          	vmulps ymm1,ymm11,ymm1
  6ccaf7:	c5 fc 10 69 40       	vmovups ymm5,YMMWORD PTR [rcx+0x40]
  6ccafc:	c4 e2 4d b8 cc       	vfmadd231ps ymm1,ymm6,ymm4
  6ccb01:	c5 fc 10 61 60       	vmovups ymm4,YMMWORD PTR [rcx+0x60]
  6ccb06:	c5 54 59 db          	vmulps ymm11,ymm5,ymm3
  6ccb0a:	c4 62 3d bc dc       	vfnmadd231ps ymm11,ymm8,ymm4
  6ccb0f:	c5 3c 59 c5          	vmulps ymm8,ymm8,ymm5
  6ccb13:	c5 94 58 f7          	vaddps ymm6,ymm13,ymm7
  6ccb17:	c4 62 65 b8 c4       	vfmadd231ps ymm8,ymm3,ymm4
  6ccb1c:	c5 cc 58 c2          	vaddps ymm0,ymm6,ymm2
  6ccb20:	c5 fc 11 44 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm0
  6ccb26:	c4 c1 1c 58 e3       	vaddps ymm4,ymm12,ymm11
  6ccb2b:	c4 e2 7d 18 05 2c 89 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff9a892c]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6ccb32:	9a ff 
  6ccb34:	c4 e2 7d ac f2       	vfnmadd213ps ymm6,ymm0,ymm2
  6ccb39:	c4 c1 0c 58 d7       	vaddps ymm2,ymm14,ymm15
  6ccb3e:	c4 41 0c 5c f7       	vsubps ymm14,ymm14,ymm15
  6ccb43:	c5 ac 58 dc          	vaddps ymm3,ymm10,ymm4
  6ccb47:	c5 fc 11 5c 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm3
  6ccb4d:	c4 62 7d bc d4       	vfnmadd231ps ymm10,ymm0,ymm4
  6ccb52:	c5 bc 58 e1          	vaddps ymm4,ymm8,ymm1
  6ccb56:	c4 c1 74 5c c8       	vsubps ymm1,ymm1,ymm8
  6ccb5b:	c5 fc 10 5c 24 80    	vmovups ymm3,YMMWORD PTR [rsp-0x80]
  6ccb61:	c5 6c 58 c3          	vaddps ymm8,ymm2,ymm3
  6ccb65:	c4 e2 7d ac d3       	vfnmadd213ps ymm2,ymm0,ymm3
  6ccb6a:	c4 c1 44 5c dd       	vsubps ymm3,ymm7,ymm13
  6ccb6f:	c5 34 58 ec          	vaddps ymm13,ymm9,ymm4
  6ccb73:	c4 e2 7d 18 2d 58 87 	vbroadcastss ymm5,DWORD PTR [rip+0xffffffffff9a8758]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6ccb7a:	9a ff 
  6ccb7c:	c5 8c 59 fd          	vmulps ymm7,ymm14,ymm5
  6ccb80:	c4 62 7d bc cc       	vfnmadd231ps ymm9,ymm0,ymm4
  6ccb85:	c5 cc 58 e7          	vaddps ymm4,ymm6,ymm7
  6ccb89:	c5 f4 59 cd          	vmulps ymm1,ymm1,ymm5
  6ccb8d:	c4 41 1c 5c e3       	vsubps ymm12,ymm12,ymm11
  6ccb92:	c5 2c 58 f1          	vaddps ymm14,ymm10,ymm1
  6ccb96:	c5 4c 5c ff          	vsubps ymm15,ymm6,ymm7
  6ccb9a:	c4 41 5c 5c de       	vsubps ymm11,ymm4,ymm14
  6ccb9f:	c5 e4 59 c5          	vmulps ymm0,ymm3,ymm5
  6ccba3:	c5 ac 5c c9          	vsubps ymm1,ymm10,ymm1
  6ccba7:	c5 ec 5c f8          	vsubps ymm7,ymm2,ymm0
  6ccbab:	c5 9c 59 f5          	vmulps ymm6,ymm12,ymm5
  6ccbaf:	c5 fc 58 c2          	vaddps ymm0,ymm0,ymm2
  6ccbb3:	c5 b4 5c d6          	vsubps ymm2,ymm9,ymm6
  6ccbb7:	c5 34 58 d6          	vaddps ymm10,ymm9,ymm6
  6ccbbb:	c5 44 5c e2          	vsubps ymm12,ymm7,ymm2
  6ccbbf:	c5 8c 58 f4          	vaddps ymm6,ymm14,ymm4
  6ccbc3:	c5 04 58 f1          	vaddps ymm14,ymm15,ymm1
  6ccbc7:	c5 c4 58 fa          	vaddps ymm7,ymm7,ymm2
  6ccbcb:	c5 ac 58 d0          	vaddps ymm2,ymm10,ymm0
  6ccbcf:	c5 84 5c c9          	vsubps ymm1,ymm15,ymm1
  6ccbd3:	c5 fc 10 5c 24 c0    	vmovups ymm3,YMMWORD PTR [rsp-0x40]
  6ccbd9:	c5 fc 10 6c 24 a0    	vmovups ymm5,YMMWORD PTR [rsp-0x60]
  6ccbdf:	c5 64 5c cd          	vsubps ymm9,ymm3,ymm5
  6ccbe3:	c4 c1 7c 5c e2       	vsubps ymm4,ymm0,ymm10
  6ccbe8:	c4 c1 3c 5c c5       	vsubps ymm0,ymm8,ymm13
  6ccbed:	c5 e4 58 dd          	vaddps ymm3,ymm3,ymm5
  6ccbf1:	c4 c1 3c 58 ed       	vaddps ymm5,ymm8,ymm13
  6ccbf6:	c5 64 14 c5          	vunpcklps ymm8,ymm3,ymm5
  6ccbfa:	c5 60 14 d5          	vunpcklps xmm10,xmm3,xmm5
  6ccbfe:	c5 e0 15 dd          	vunpckhps xmm3,xmm3,xmm5
  6ccc02:	c5 f8 11 5c 16 10    	vmovups XMMWORD PTR [rsi+rdx*1+0x10],xmm3
  6ccc08:	c5 78 11 14 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm10
  6ccc0d:	c4 63 7d 19 44 16 20 	vextractf128 XMMWORD PTR [rsi+rdx*1+0x20],ymm8,0x1
  6ccc14:	01 
  6ccc15:	c4 c1 24 14 dc       	vunpcklps ymm3,ymm11,ymm12
  6ccc1a:	c4 c1 20 14 ec       	vunpcklps xmm5,xmm11,xmm12
  6ccc1f:	c4 41 20 15 c4       	vunpckhps xmm8,xmm11,xmm12
  6ccc24:	c5 78 11 44 16 40    	vmovups XMMWORD PTR [rsi+rdx*1+0x40],xmm8
  6ccc2a:	c5 f8 11 6c 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm5
  6ccc30:	c4 e3 7d 19 5c 16 50 	vextractf128 XMMWORD PTR [rsi+rdx*1+0x50],ymm3,0x1
  6ccc37:	01 
  6ccc38:	c5 8c 14 da          	vunpcklps ymm3,ymm14,ymm2
  6ccc3c:	c5 88 14 ea          	vunpcklps xmm5,xmm14,xmm2
  6ccc40:	c5 88 15 d2          	vunpckhps xmm2,xmm14,xmm2
  6ccc44:	c5 f8 11 54 16 70    	vmovups XMMWORD PTR [rsi+rdx*1+0x70],xmm2
  6ccc4a:	c5 f8 11 6c 16 60    	vmovups XMMWORD PTR [rsi+rdx*1+0x60],xmm5
  6ccc50:	c4 e3 7d 19 9c 16 80 	vextractf128 XMMWORD PTR [rsi+rdx*1+0x80],ymm3,0x1
  6ccc57:	00 00 00 01 
  6ccc5b:	c5 b4 14 d0          	vunpcklps ymm2,ymm9,ymm0
  6ccc5f:	c5 b0 14 d8          	vunpcklps xmm3,xmm9,xmm0
  6ccc63:	c5 b0 15 c0          	vunpckhps xmm0,xmm9,xmm0
  6ccc67:	c5 f8 11 84 16 a0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xa0],xmm0
  6ccc6e:	00 00 
  6ccc70:	c5 f8 11 9c 16 90 00 	vmovups XMMWORD PTR [rsi+rdx*1+0x90],xmm3
  6ccc77:	00 00 
  6ccc79:	c4 e3 7d 19 94 16 b0 	vextractf128 XMMWORD PTR [rsi+rdx*1+0xb0],ymm2,0x1
  6ccc80:	00 00 00 01 
  6ccc84:	c5 cc 14 c7          	vunpcklps ymm0,ymm6,ymm7
  6ccc88:	c5 c8 14 d7          	vunpcklps xmm2,xmm6,xmm7
  6ccc8c:	c5 c8 15 df          	vunpckhps xmm3,xmm6,xmm7
  6ccc90:	c5 f8 11 9c 16 d0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xd0],xmm3
  6ccc97:	00 00 
  6ccc99:	c5 f8 11 94 16 c0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xc0],xmm2
  6ccca0:	00 00 
  6ccca2:	c4 e3 7d 19 84 16 e0 	vextractf128 XMMWORD PTR [rsi+rdx*1+0xe0],ymm0,0x1
  6ccca9:	00 00 00 01 
  6cccad:	c5 f4 14 c4          	vunpcklps ymm0,ymm1,ymm4
  6cccb1:	c5 f0 14 d4          	vunpcklps xmm2,xmm1,xmm4
  6cccb5:	c5 f0 15 cc          	vunpckhps xmm1,xmm1,xmm4
  6cccb9:	c5 f8 11 8c 16 00 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x100],xmm1
  6cccc0:	00 00 
  6cccc2:	c5 f8 11 94 16 f0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xf0],xmm2
  6cccc9:	00 00 
  6ccccb:	c4 e3 7d 19 84 16 10 	vextractf128 XMMWORD PTR [rsi+rdx*1+0x110],ymm0,0x1
  6cccd2:	01 00 00 01 
  6cccd6:	48 81 c2 20 01 00 00 	add    rdx,0x120
  6cccdd:	48 39 d0             	cmp    rax,rdx
  6ccce0:	0f 85 ba fa ff ff    	jne    6cc7a0 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle+0x20>
  6ccce6:	48 81 c4 88 00 00 00 	add    rsp,0x88
  6ccced:	c5 f8 77             	vzeroupper
  6cccf0:	c3                   	ret
