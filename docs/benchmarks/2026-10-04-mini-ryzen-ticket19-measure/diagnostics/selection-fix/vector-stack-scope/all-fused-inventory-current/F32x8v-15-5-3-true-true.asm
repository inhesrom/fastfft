
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000ab77c0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  ab77c0:	48 6b c2 78          	imul   rax,rdx,0x78
  ab77c4:	31 d2                	xor    edx,edx
  ab77c6:	c4 e2 7d 18 05 89 df 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff5bdf89]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  ab77cd:	5b ff 
  ab77cf:	c4 e2 7d 18 0d c8 db 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff5bdbc8]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  ab77d6:	5b ff 
  ab77d8:	c4 e2 7d 18 15 07 df 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff5bdf07]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  ab77df:	5b ff 
  ab77e1:	c4 e2 7d 18 1d 5a de 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff5bde5a]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  ab77e8:	5b ff 
  ab77ea:	c4 e2 7d 18 25 6d dc 	vbroadcastss ymm4,DWORD PTR [rip+0xffffffffff5bdc6d]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  ab77f1:	5b ff 
  ab77f3:	c5 d0 57 ed          	vxorps xmm5,xmm5,xmm5
  ab77f7:	62 62 7d 28 18 05 d3 	vbroadcastss ymm24,DWORD PTR [rip+0xffffffffff5bdad3]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  ab77fe:	da 5b ff 
  ab7801:	c5 fc 28 3d d7 f9 5b 	vmovaps ymm7,YMMWORD PTR [rip+0xffffffffff5bf9d7]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  ab7808:	ff 
  ab7809:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  ab7810:	c5 7b 10 44 17 28    	vmovsd xmm8,QWORD PTR [rdi+rdx*1+0x28]
  ab7816:	c4 43 7d 18 c0 01    	vinsertf128 ymm8,ymm0,xmm8,0x1
  ab781c:	c4 63 3d 0c c5 c0    	vblendps ymm8,ymm8,ymm5,0xc0
  ab7822:	c5 78 10 0c 17       	vmovups xmm9,XMMWORD PTR [rdi+rdx*1]
  ab7827:	c5 78 10 54 17 18    	vmovups xmm10,XMMWORD PTR [rdi+rdx*1+0x18]
  ab782d:	c5 78 10 5c 17 30    	vmovups xmm11,XMMWORD PTR [rdi+rdx*1+0x30]
  ab7833:	c5 78 10 64 17 48    	vmovups xmm12,XMMWORD PTR [rdi+rdx*1+0x48]
  ab7839:	c4 43 7d 19 c5 01    	vextractf128 xmm13,ymm8,0x1
  ab783f:	c4 41 28 c6 f5 dd    	vshufps xmm14,xmm10,xmm13,0xdd
  ab7845:	c5 78 10 7c 17 60    	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x60]
  ab784b:	c5 7b 10 44 17 70    	vmovsd xmm8,QWORD PTR [rdi+rdx*1+0x70]
  ab7851:	c4 43 7d 18 c0 01    	vinsertf128 ymm8,ymm0,xmm8,0x1
  ab7857:	c4 63 3d 0c c5 c0    	vblendps ymm8,ymm8,ymm5,0xc0
  ab785d:	62 33 7d 28 19 c0 01 	vextractf32x4 xmm16,ymm8,0x1
  ab7864:	62 a1 04 08 c6 c8 dd 	vshufps xmm17,xmm15,xmm16,0xdd
  ab786b:	62 a1 0c 28 5c d1    	vsubps ymm18,ymm14,ymm17
  ab7871:	c5 7b 10 44 17 40    	vmovsd xmm8,QWORD PTR [rdi+rdx*1+0x40]
  ab7877:	c4 43 7d 18 c0 01    	vinsertf128 ymm8,ymm0,xmm8,0x1
  ab787d:	c4 63 3d 0c c5 c0    	vblendps ymm8,ymm8,ymm5,0xc0
  ab7883:	62 33 7d 28 19 c3 01 	vextractf32x4 xmm19,ymm8,0x1
  ab788a:	62 a1 24 08 c6 e3 dd 	vshufps xmm20,xmm11,xmm19,0xdd
  ab7891:	c5 7b 10 44 17 58    	vmovsd xmm8,QWORD PTR [rdi+rdx*1+0x58]
  ab7897:	c4 43 7d 18 c0 01    	vinsertf128 ymm8,ymm0,xmm8,0x1
  ab789d:	c4 63 3d 0c c5 c0    	vblendps ymm8,ymm8,ymm5,0xc0
  ab78a3:	62 33 7d 28 19 c5 01 	vextractf32x4 xmm21,ymm8,0x1
  ab78aa:	62 a1 1c 08 c6 f5 dd 	vshufps xmm22,xmm12,xmm21,0xdd
  ab78b1:	62 a1 5c 20 5c fe    	vsubps ymm23,ymm20,ymm22
  ab78b7:	62 71 44 20 59 c0    	vmulps ymm8,ymm23,ymm0
  ab78bd:	62 72 6d 20 b8 c1    	vfmadd231ps ymm8,ymm18,ymm1
  ab78c3:	62 31 24 08 c6 db 88 	vshufps xmm11,xmm11,xmm19,0x88
  ab78ca:	62 31 1c 08 c6 e5 88 	vshufps xmm12,xmm12,xmm21,0x88
  ab78d1:	62 c1 24 28 58 dc    	vaddps ymm19,ymm11,ymm12
  ab78d7:	c4 41 28 c6 d5 88    	vshufps xmm10,xmm10,xmm13,0x88
  ab78dd:	62 31 04 08 c6 e8 88 	vshufps xmm13,xmm15,xmm16,0x88
  ab78e4:	c4 41 2c 58 fd       	vaddps ymm15,ymm10,ymm13
  ab78e9:	62 e1 ff 08 10 44 17 	vmovsd xmm16,QWORD PTR [rdi+rdx*1+0x10]
  ab78f0:	02 
  ab78f1:	62 b3 7d 28 18 f0 01 	vinsertf32x4 ymm6,ymm0,xmm16,0x1
  ab78f8:	c4 e3 4d 0c f5 c0    	vblendps ymm6,ymm6,ymm5,0xc0
  ab78fe:	c4 e3 7d 19 f6 01    	vextractf128 xmm6,ymm6,0x1
  ab7904:	62 e1 34 08 c6 c6 88 	vshufps xmm16,xmm9,xmm6,0x88
  ab790b:	62 e1 7c 28 28 ea    	vmovaps ymm21,ymm2
  ab7911:	62 a2 05 28 a8 e8    	vfmadd213ps ymm21,ymm15,ymm16
  ab7917:	62 e2 65 20 bc eb    	vfnmadd231ps ymm21,ymm19,ymm3
  ab791d:	62 a1 5c 20 58 e6    	vaddps ymm20,ymm20,ymm22
  ab7923:	62 31 0c 28 58 f1    	vaddps ymm14,ymm14,ymm17
  ab7929:	c5 b0 c6 f6 dd       	vshufps xmm6,xmm9,xmm6,0xdd
  ab792e:	c5 7c 28 ca          	vmovaps ymm9,ymm2
  ab7932:	c4 62 0d a8 ce       	vfmadd213ps ymm9,ymm14,ymm6
  ab7937:	62 72 5d 20 bc cb    	vfnmadd231ps ymm9,ymm20,ymm3
  ab793d:	c4 41 2c 5c d5       	vsubps ymm10,ymm10,ymm13
  ab7942:	c4 41 24 5c dc       	vsubps ymm11,ymm11,ymm12
  ab7947:	c5 24 59 e0          	vmulps ymm12,ymm11,ymm0
  ab794b:	c4 62 2d b8 e1       	vfmadd231ps ymm12,ymm10,ymm1
  ab7950:	62 71 6c 20 59 e8    	vmulps ymm13,ymm18,ymm0
  ab7956:	62 32 75 28 bc ef    	vfnmadd231ps ymm13,ymm1,ymm23
  ab795c:	62 e1 7c 28 28 cb    	vmovaps ymm17,ymm3
  ab7962:	62 a2 05 28 ac c8    	vfnmadd213ps ymm17,ymm15,ymm16
  ab7968:	62 e2 65 20 b8 ca    	vfmadd231ps ymm17,ymm19,ymm2
  ab796e:	62 e1 7c 28 28 d3    	vmovaps ymm18,ymm3
  ab7974:	62 e2 0d 28 ac d6    	vfnmadd213ps ymm18,ymm14,ymm6
  ab797a:	62 e2 5d 20 b8 d2    	vfmadd231ps ymm18,ymm20,ymm2
  ab7980:	c5 2c 59 d0          	vmulps ymm10,ymm10,ymm0
  ab7984:	c4 42 75 bc d3       	vfnmadd231ps ymm10,ymm1,ymm11
  ab7989:	62 51 7c 20 58 df    	vaddps ymm11,ymm16,ymm15
  ab798f:	62 31 24 28 58 db    	vaddps ymm11,ymm11,ymm19
  ab7995:	c5 8c 58 f6          	vaddps ymm6,ymm14,ymm6
  ab7999:	62 b1 4c 28 58 f4    	vaddps ymm6,ymm6,ymm20
  ab799f:	c4 41 30 5c f4       	vsubps xmm14,xmm9,xmm12
  ab79a4:	c4 c3 4d 18 f6 01    	vinsertf128 ymm6,ymm6,xmm14,0x1
  ab79aa:	c4 41 30 58 cc       	vaddps xmm9,xmm9,xmm12
  ab79af:	62 51 6c 00 5c e2    	vsubps xmm12,xmm18,xmm10
  ab79b5:	c4 41 35 15 f4       	vunpckhpd ymm14,ymm9,ymm12
  ab79ba:	c4 41 35 14 cc       	vunpcklpd ymm9,ymm9,ymm12
  ab79bf:	62 51 6c 00 58 d2    	vaddps xmm10,xmm18,xmm10
  ab79c5:	c4 41 4d 14 e2       	vunpcklpd ymm12,ymm6,ymm10
  ab79ca:	c4 41 1c c6 f9 88    	vshufps ymm15,ymm12,ymm9,0x88
  ab79d0:	c4 41 04 c6 ff d8    	vshufps ymm15,ymm15,ymm15,0xd8
  ab79d6:	c4 41 1c c6 c9 dd    	vshufps ymm9,ymm12,ymm9,0xdd
  ab79dc:	c4 41 34 c6 c9 d8    	vshufps ymm9,ymm9,ymm9,0xd8
  ab79e2:	c4 c1 4d 15 f2       	vunpckhpd ymm6,ymm6,ymm10
  ab79e7:	c4 c1 4c c6 f6 88    	vshufps ymm6,ymm6,ymm14,0x88
  ab79ed:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  ab79f2:	62 31 3c 08 58 d5    	vaddps xmm10,xmm8,xmm21
  ab79f8:	c4 43 25 18 d2 01    	vinsertf128 ymm10,ymm11,xmm10,0x1
  ab79fe:	62 51 54 00 5c c0    	vsubps xmm8,xmm21,xmm8
  ab7a04:	62 31 14 08 58 d9    	vaddps xmm11,xmm13,xmm17
  ab7a0a:	c4 41 3d 15 e3       	vunpckhpd ymm12,ymm8,ymm11
  ab7a0f:	c4 41 3d 14 c3       	vunpcklpd ymm8,ymm8,ymm11
  ab7a14:	62 51 74 00 5c dd    	vsubps xmm11,xmm17,xmm13
  ab7a1a:	c4 41 2d 14 eb       	vunpcklpd ymm13,ymm10,ymm11
  ab7a1f:	c4 41 14 c6 f0 88    	vshufps ymm14,ymm13,ymm8,0x88
  ab7a25:	c4 41 0c c6 f6 d8    	vshufps ymm14,ymm14,ymm14,0xd8
  ab7a2b:	c4 41 14 c6 c0 dd    	vshufps ymm8,ymm13,ymm8,0xdd
  ab7a31:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  ab7a37:	c4 41 2d 15 d3       	vunpckhpd ymm10,ymm10,ymm11
  ab7a3c:	c4 41 2c c6 d4 88    	vshufps ymm10,ymm10,ymm12,0x88
  ab7a42:	c4 41 2c c6 d2 d8    	vshufps ymm10,ymm10,ymm10,0xd8
  ab7a48:	c5 7c 10 59 40       	vmovups ymm11,YMMWORD PTR [rcx+0x40]
  ab7a4d:	c5 7c 10 61 60       	vmovups ymm12,YMMWORD PTR [rcx+0x60]
  ab7a52:	c5 7c 10 a9 80 00 00 	vmovups ymm13,YMMWORD PTR [rcx+0x80]
  ab7a59:	00 
  ab7a5a:	62 e1 7c 28 10 41 05 	vmovups ymm16,YMMWORD PTR [rcx+0xa0]
  ab7a61:	62 c1 34 28 59 cb    	vmulps ymm17,ymm9,ymm11
  ab7a67:	62 c2 3d 28 bc cc    	vfnmadd231ps ymm17,ymm8,ymm12
  ab7a6d:	62 c1 4c 28 59 d5    	vmulps ymm18,ymm6,ymm13
  ab7a73:	62 a2 2d 28 bc d0    	vfnmadd231ps ymm18,ymm10,ymm16
  ab7a79:	62 a1 74 20 58 da    	vaddps ymm19,ymm17,ymm18
  ab7a7f:	c4 41 3c 59 c3       	vmulps ymm8,ymm8,ymm11
  ab7a84:	c4 42 35 b8 c4       	vfmadd231ps ymm8,ymm9,ymm12
  ab7a89:	c4 41 2c 59 cd       	vmulps ymm9,ymm10,ymm13
  ab7a8e:	62 32 4d 28 b8 c8    	vfmadd231ps ymm9,ymm6,ymm16
  ab7a94:	c4 c1 3c 58 f1       	vaddps ymm6,ymm8,ymm9
  ab7a99:	c5 7c 28 d4          	vmovaps ymm10,ymm4
  ab7a9d:	62 52 65 20 ac d7    	vfnmadd213ps ymm10,ymm19,ymm15
  ab7aa3:	c4 41 3c 5c c1       	vsubps ymm8,ymm8,ymm9
  ab7aa8:	62 11 3c 28 59 c0    	vmulps ymm8,ymm8,ymm24
  ab7aae:	c4 41 2c 58 c8       	vaddps ymm9,ymm10,ymm8
  ab7ab3:	c5 7c 28 dc          	vmovaps ymm11,ymm4
  ab7ab7:	c4 42 4d ac de       	vfnmadd213ps ymm11,ymm6,ymm14
  ab7abc:	62 31 74 20 5c e2    	vsubps ymm12,ymm17,ymm18
  ab7ac2:	62 11 1c 28 59 e0    	vmulps ymm12,ymm12,ymm24
  ab7ac8:	c4 41 24 5c ec       	vsubps ymm13,ymm11,ymm12
  ab7acd:	c4 41 2c 5c c0       	vsubps ymm8,ymm10,ymm8
  ab7ad2:	c4 41 24 58 d4       	vaddps ymm10,ymm11,ymm12
  ab7ad7:	c5 8c 58 f6          	vaddps ymm6,ymm14,ymm6
  ab7adb:	62 31 04 28 58 db    	vaddps ymm11,ymm15,ymm19
  ab7ae1:	c4 c3 7d 19 f4 01    	vextractf128 xmm12,ymm6,0x1
  ab7ae7:	62 d2 45 28 7f f3    	vpermt2ps ymm6,ymm7,ymm11
  ab7aed:	c5 fc 11 34 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm6
  ab7af2:	c4 63 7d 19 de 01    	vextractf128 xmm6,ymm11,0x1
  ab7af8:	c5 98 14 f6          	vunpcklps xmm6,xmm12,xmm6
  ab7afc:	c5 f8 13 74 16 20    	vmovlps QWORD PTR [rsi+rdx*1+0x20],xmm6
  ab7b02:	c4 63 7d 19 ee 01    	vextractf128 xmm6,ymm13,0x1
  ab7b08:	62 52 45 28 7f e9    	vpermt2ps ymm13,ymm7,ymm9
  ab7b0e:	c5 7c 11 6c 16 28    	vmovups YMMWORD PTR [rsi+rdx*1+0x28],ymm13
  ab7b14:	c4 43 7d 19 c9 01    	vextractf128 xmm9,ymm9,0x1
  ab7b1a:	c4 c1 48 14 f1       	vunpcklps xmm6,xmm6,xmm9
  ab7b1f:	c5 f8 13 74 16 48    	vmovlps QWORD PTR [rsi+rdx*1+0x48],xmm6
  ab7b25:	c4 63 7d 19 d6 01    	vextractf128 xmm6,ymm10,0x1
  ab7b2b:	62 52 45 28 7f d0    	vpermt2ps ymm10,ymm7,ymm8
  ab7b31:	c5 7c 11 54 16 50    	vmovups YMMWORD PTR [rsi+rdx*1+0x50],ymm10
  ab7b37:	c4 43 7d 19 c0 01    	vextractf128 xmm8,ymm8,0x1
  ab7b3d:	c4 c1 48 14 f0       	vunpcklps xmm6,xmm6,xmm8
  ab7b42:	c5 f8 13 74 16 70    	vmovlps QWORD PTR [rsi+rdx*1+0x70],xmm6
  ab7b48:	48 83 c2 78          	add    rdx,0x78
  ab7b4c:	48 39 d0             	cmp    rax,rdx
  ab7b4f:	0f 85 bb fc ff ff    	jne    ab7810 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x50>
  ab7b55:	c5 f8 77             	vzeroupper
  ab7b58:	c3                   	ret
