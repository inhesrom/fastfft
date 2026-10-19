
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a0ba00 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a0ba00:	55                   	push   rbp
  a0ba01:	48 89 e5             	mov    rbp,rsp
  a0ba04:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a0ba08:	48 81 ec 80 02 00 00 	sub    rsp,0x280
  a0ba0f:	48 69 c2 c0 03 00 00 	imul   rax,rdx,0x3c0
  a0ba16:	31 d2                	xor    edx,edx
  a0ba18:	4c 8d 84 24 00 02 00 	lea    r8,[rsp+0x200]
  a0ba1f:	00 
  a0ba20:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  a0ba25:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  a0ba2c:	00 00 00 00 
  a0ba30:	c6 84 24 00 02 00 00 	mov    BYTE PTR [rsp+0x200],0x0
  a0ba37:	00 
  a0ba38:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  a0ba3d:	62 e1 7c 48 10 0c 17 	vmovups zmm17,ZMMWORD PTR [rdi+rdx*1]
  a0ba44:	c5 f8 10 44 17 40    	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x40]
  a0ba4a:	62 a1 7c 48 28 d1    	vmovaps zmm18,zmm17
  a0ba50:	62 f1 7c 48 28 15 a6 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff682fa6]        # 8ea00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1beb0>
  a0ba57:	2f 68 ff 
  a0ba5a:	62 e2 6d 48 7f c8    	vpermt2ps zmm17,zmm2,zmm0
  a0ba60:	62 f1 7c 48 10 9c 17 	vmovups zmm3,ZMMWORD PTR [rdi+rdx*1+0x50]
  a0ba67:	50 00 00 00 
  a0ba6b:	c5 f8 10 a4 17 90 00 	vmovups xmm4,XMMWORD PTR [rdi+rdx*1+0x90]
  a0ba72:	00 00 
  a0ba74:	62 e1 7c 48 28 db    	vmovaps zmm19,zmm3
  a0ba7a:	62 f2 6d 48 7f dc    	vpermt2ps zmm3,zmm2,zmm4
  a0ba80:	62 e1 7c 48 10 a4 17 	vmovups zmm20,ZMMWORD PTR [rdi+rdx*1+0xa0]
  a0ba87:	a0 00 00 00 
  a0ba8b:	c5 f8 10 ac 17 e0 00 	vmovups xmm5,XMMWORD PTR [rdi+rdx*1+0xe0]
  a0ba92:	00 00 
  a0ba94:	62 31 7c 48 28 e4    	vmovaps zmm12,zmm20
  a0ba9a:	62 e2 6d 48 7f e5    	vpermt2ps zmm20,zmm2,zmm5
  a0baa0:	62 71 7c 48 10 84 17 	vmovups zmm8,ZMMWORD PTR [rdi+rdx*1+0xf0]
  a0baa7:	f0 00 00 00 
  a0baab:	c5 f8 10 b4 17 30 01 	vmovups xmm6,XMMWORD PTR [rdi+rdx*1+0x130]
  a0bab2:	00 00 
  a0bab4:	62 c1 7c 48 28 e8    	vmovaps zmm21,zmm8
  a0baba:	62 f1 7c 48 28 0d fc 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff682efc]        # 8e9c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1be70>
  a0bac1:	2e 68 ff 
  a0bac4:	62 e2 75 48 7f d0    	vpermt2ps zmm18,zmm1,zmm0
  a0baca:	62 72 6d 48 7f c6    	vpermt2ps zmm8,zmm2,zmm6
  a0bad0:	62 71 7c 48 10 6c 17 	vmovups zmm13,ZMMWORD PTR [rdi+rdx*1+0x140]
  a0bad7:	05 
  a0bad8:	c5 f8 10 84 17 80 01 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x180]
  a0badf:	00 00 
  a0bae1:	62 e2 75 48 7f dc    	vpermt2ps zmm19,zmm1,zmm4
  a0bae7:	62 d1 7c 48 28 fd    	vmovaps zmm7,zmm13
  a0baed:	62 72 6d 48 7f e8    	vpermt2ps zmm13,zmm2,zmm0
  a0baf3:	62 71 7c 48 10 9c 17 	vmovups zmm11,ZMMWORD PTR [rdi+rdx*1+0x190]
  a0bafa:	90 01 00 00 
  a0bafe:	62 72 75 48 7f e5    	vpermt2ps zmm12,zmm1,zmm5
  a0bb04:	c5 f8 10 ac 17 d0 01 	vmovups xmm5,XMMWORD PTR [rdi+rdx*1+0x1d0]
  a0bb0b:	00 00 
  a0bb0d:	62 51 7c 48 28 f3    	vmovaps zmm14,zmm11
  a0bb13:	62 72 6d 48 7f dd    	vpermt2ps zmm11,zmm2,zmm5
  a0bb19:	62 e2 75 48 7f ee    	vpermt2ps zmm21,zmm1,zmm6
  a0bb1f:	62 e1 7c 48 10 b4 17 	vmovups zmm22,ZMMWORD PTR [rdi+rdx*1+0x1e0]
  a0bb26:	e0 01 00 00 
  a0bb2a:	c5 f8 10 b4 17 20 02 	vmovups xmm6,XMMWORD PTR [rdi+rdx*1+0x220]
  a0bb31:	00 00 
  a0bb33:	62 b1 7c 48 28 e6    	vmovaps zmm4,zmm22
  a0bb39:	62 f2 75 48 7f f8    	vpermt2ps zmm7,zmm1,zmm0
  a0bb3f:	62 e2 6d 48 7f f6    	vpermt2ps zmm22,zmm2,zmm6
  a0bb45:	62 f1 7c 48 10 84 17 	vmovups zmm0,ZMMWORD PTR [rdi+rdx*1+0x230]
  a0bb4c:	30 02 00 00 
  a0bb50:	c5 78 10 8c 17 70 02 	vmovups xmm9,XMMWORD PTR [rdi+rdx*1+0x270]
  a0bb57:	00 00 
  a0bb59:	62 72 75 48 7f f5    	vpermt2ps zmm14,zmm1,zmm5
  a0bb5f:	62 e1 7c 48 28 f8    	vmovaps zmm23,zmm0
  a0bb65:	62 d2 6d 48 7f c1    	vpermt2ps zmm0,zmm2,zmm9
  a0bb6b:	62 61 7c 48 10 44 17 	vmovups zmm24,ZMMWORD PTR [rdi+rdx*1+0x280]
  a0bb72:	0a 
  a0bb73:	62 f2 75 48 7f e6    	vpermt2ps zmm4,zmm1,zmm6
  a0bb79:	c5 f8 10 b4 17 c0 02 	vmovups xmm6,XMMWORD PTR [rdi+rdx*1+0x2c0]
  a0bb80:	00 00 
  a0bb82:	62 01 7c 48 28 d0    	vmovaps zmm26,zmm24
  a0bb88:	62 62 6d 48 7f c6    	vpermt2ps zmm24,zmm2,zmm6
  a0bb8e:	62 c2 75 48 7f f9    	vpermt2ps zmm23,zmm1,zmm9
  a0bb94:	62 61 7c 48 10 9c 17 	vmovups zmm27,ZMMWORD PTR [rdi+rdx*1+0x2d0]
  a0bb9b:	d0 02 00 00 
  a0bb9f:	c5 78 10 8c 17 10 03 	vmovups xmm9,XMMWORD PTR [rdi+rdx*1+0x310]
  a0bba6:	00 00 
  a0bba8:	62 91 7c 48 28 eb    	vmovaps zmm5,zmm27
  a0bbae:	62 62 75 48 7f d6    	vpermt2ps zmm26,zmm1,zmm6
  a0bbb4:	62 42 6d 48 7f d9    	vpermt2ps zmm27,zmm2,zmm9
  a0bbba:	62 61 7c 48 10 a4 17 	vmovups zmm28,ZMMWORD PTR [rdi+rdx*1+0x320]
  a0bbc1:	20 03 00 00 
  a0bbc5:	c5 f8 10 b4 17 60 03 	vmovups xmm6,XMMWORD PTR [rdi+rdx*1+0x360]
  a0bbcc:	00 00 
  a0bbce:	62 d2 75 48 7f e9    	vpermt2ps zmm5,zmm1,zmm9
  a0bbd4:	62 11 7c 48 28 cc    	vmovaps zmm9,zmm28
  a0bbda:	62 62 6d 48 7f e6    	vpermt2ps zmm28,zmm2,zmm6
  a0bbe0:	62 61 7c 48 10 ac 17 	vmovups zmm29,ZMMWORD PTR [rdi+rdx*1+0x370]
  a0bbe7:	70 03 00 00 
  a0bbeb:	62 72 75 48 7f ce    	vpermt2ps zmm9,zmm1,zmm6
  a0bbf1:	c5 f8 10 b4 17 b0 03 	vmovups xmm6,XMMWORD PTR [rdi+rdx*1+0x3b0]
  a0bbf8:	00 00 
  a0bbfa:	62 01 7c 48 28 f5    	vmovaps zmm30,zmm29
  a0bc00:	62 62 6d 48 7f ee    	vpermt2ps zmm29,zmm2,zmm6
  a0bc06:	62 62 75 48 7f f6    	vpermt2ps zmm30,zmm1,zmm6
  a0bc0c:	62 71 6c 40 58 fc    	vaddps zmm15,zmm18,zmm4
  a0bc12:	62 e1 54 40 58 c5    	vaddps zmm16,zmm21,zmm5
  a0bc18:	62 41 44 48 58 f9    	vaddps zmm31,zmm7,zmm9
  a0bc1e:	62 b1 44 40 58 cb    	vaddps zmm1,zmm23,zmm19
  a0bc24:	62 f1 7c 48 58 d3    	vaddps zmm2,zmm0,zmm3
  a0bc2a:	62 61 7c 48 5c cb    	vsubps zmm25,zmm0,zmm3
  a0bc30:	62 d1 2c 40 58 c4    	vaddps zmm0,zmm26,zmm12
  a0bc36:	62 d1 44 48 5c f1    	vsubps zmm6,zmm7,zmm9
  a0bc3c:	62 d1 14 40 58 fb    	vaddps zmm7,zmm29,zmm11
  a0bc42:	62 51 14 40 5c cb    	vsubps zmm9,zmm29,zmm11
  a0bc48:	62 51 0c 40 58 de    	vaddps zmm11,zmm30,zmm14
  a0bc4e:	62 41 2c 40 5c d4    	vsubps zmm26,zmm26,zmm12
  a0bc54:	62 11 3c 48 58 e3    	vaddps zmm12,zmm8,zmm27
  a0bc5a:	62 01 3c 48 5c db    	vsubps zmm27,zmm8,zmm27
  a0bc60:	62 21 74 40 58 ee    	vaddps zmm29,zmm17,zmm22
  a0bc66:	62 e1 6c 40 5c d4    	vsubps zmm18,zmm18,zmm4
  a0bc6c:	62 11 14 48 58 d4    	vaddps zmm10,zmm13,zmm28
  a0bc72:	62 01 14 48 5c e4    	vsubps zmm28,zmm13,zmm28
  a0bc78:	62 a1 64 40 5c df    	vsubps zmm19,zmm19,zmm23
  a0bc7e:	62 b1 04 48 58 d8    	vaddps zmm3,zmm15,zmm16
  a0bc84:	62 31 3c 40 58 ec    	vaddps zmm13,zmm24,zmm20
  a0bc8a:	62 a1 3c 40 5c e4    	vsubps zmm20,zmm24,zmm20
  a0bc90:	62 11 0c 48 5c f6    	vsubps zmm14,zmm14,zmm30
  a0bc96:	62 f1 04 40 58 e1    	vaddps zmm4,zmm31,zmm1
  a0bc9c:	62 e1 2c 48 58 fa    	vaddps zmm23,zmm10,zmm2
  a0bca2:	62 a1 74 40 5c ce    	vsubps zmm17,zmm17,zmm22
  a0bca8:	62 a1 54 48 5c ed    	vsubps zmm21,zmm5,zmm21
  a0bcae:	62 51 7c 48 58 c3    	vaddps zmm8,zmm0,zmm11
  a0bcb4:	62 e1 14 48 58 f7    	vaddps zmm22,zmm13,zmm7
  a0bcba:	62 f1 04 40 5c c9    	vsubps zmm1,zmm31,zmm1
  a0bcc0:	62 01 4c 48 58 c1    	vaddps zmm24,zmm6,zmm25
  a0bcc6:	62 d1 7c 48 5c c3    	vsubps zmm0,zmm0,zmm11
  a0bccc:	62 41 2c 40 58 f1    	vaddps zmm30,zmm26,zmm9
  a0bcd2:	62 f1 2c 48 5c d2    	vsubps zmm2,zmm10,zmm2
  a0bcd8:	62 91 64 40 58 ec    	vaddps zmm5,zmm19,zmm28
  a0bcde:	62 31 04 48 5c d0    	vsubps zmm10,zmm15,zmm16
  a0bce4:	62 31 0c 48 58 dc    	vaddps zmm11,zmm14,zmm20
  a0bcea:	62 71 14 48 5c ef    	vsubps zmm13,zmm13,zmm7
  a0bcf0:	62 c1 54 48 5c c3    	vsubps zmm16,zmm5,zmm11
  a0bcf6:	62 d1 54 48 58 fb    	vaddps zmm7,zmm5,zmm11
  a0bcfc:	62 51 6c 48 5c dd    	vsubps zmm11,zmm2,zmm13
  a0bd02:	62 d1 6c 48 58 d5    	vaddps zmm2,zmm2,zmm13
  a0bd08:	62 91 3c 40 58 ee    	vaddps zmm5,zmm24,zmm30
  a0bd0e:	62 01 3c 40 5c c6    	vsubps zmm24,zmm24,zmm30
  a0bd14:	62 41 14 40 58 f4    	vaddps zmm30,zmm29,zmm12
  a0bd1a:	62 41 14 40 5c ec    	vsubps zmm29,zmm29,zmm12
  a0bd20:	62 61 74 48 58 f8    	vaddps zmm31,zmm1,zmm0
  a0bd26:	62 f1 74 48 5c c0    	vsubps zmm0,zmm1,zmm0
  a0bd2c:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a0bd33:	01 
  a0bd34:	62 11 6c 40 58 e3    	vaddps zmm12,zmm18,zmm27
  a0bd3a:	62 01 6c 40 5c db    	vsubps zmm27,zmm18,zmm27
  a0bd40:	62 01 4c 48 5c c9    	vsubps zmm25,zmm6,zmm25
  a0bd46:	62 31 44 40 58 ee    	vaddps zmm13,zmm23,zmm22
  a0bd4c:	62 51 2c 40 5c c9    	vsubps zmm9,zmm26,zmm9
  a0bd52:	62 31 54 40 58 f9    	vaddps zmm15,zmm21,zmm17
  a0bd58:	62 a1 74 40 5c cd    	vsubps zmm17,zmm17,zmm21
  a0bd5e:	62 c1 5c 48 58 e8    	vaddps zmm21,zmm4,zmm8
  a0bd64:	62 b1 1c 40 5c f3    	vsubps zmm6,zmm28,zmm19
  a0bd6a:	62 d1 0c 40 58 c5    	vaddps zmm0,zmm30,zmm13
  a0bd70:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm0
  a0bd77:	02 
  a0bd78:	62 51 5c 40 5c f6    	vsubps zmm14,zmm20,zmm14
  a0bd7e:	62 a1 64 48 58 d5    	vaddps zmm18,zmm3,zmm21
  a0bd84:	62 a1 44 40 5c f6    	vsubps zmm22,zmm23,zmm22
  a0bd8a:	62 f2 7d 48 18 05 cc 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff6696cc]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a0bd91:	96 66 ff 
  a0bd94:	62 e1 7c 48 28 e0    	vmovaps zmm20,zmm0
  a0bd9a:	62 c2 55 48 ac e4    	vfnmadd213ps zmm20,zmm5,zmm12
  a0bda0:	62 f2 7d 48 18 0d 2a 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff66952a]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a0bda7:	95 66 ff 
  a0bdaa:	62 e1 7c 40 59 c1    	vmulps zmm16,zmm16,zmm1
  a0bdb0:	62 12 7d 48 ac ee    	vfnmadd213ps zmm13,zmm0,zmm30
  a0bdb6:	62 e1 7c 48 28 f8    	vmovaps zmm23,zmm0
  a0bdbc:	62 c2 45 48 ac ff    	vfnmadd213ps zmm23,zmm7,zmm15
  a0bdc2:	62 e2 7d 48 ac eb    	vfnmadd213ps zmm21,zmm0,zmm3
  a0bdc8:	62 61 7c 48 28 d0    	vmovaps zmm26,zmm0
  a0bdce:	62 41 5c 48 5c e0    	vsubps zmm28,zmm4,zmm8
  a0bdd4:	62 61 7c 48 28 f0    	vmovaps zmm30,zmm0
  a0bdda:	62 42 05 40 ac d2    	vfnmadd213ps zmm26,zmm31,zmm10
  a0bde0:	62 02 6d 48 ac f5    	vfnmadd213ps zmm30,zmm2,zmm29
  a0bde6:	62 f1 14 40 58 d2    	vaddps zmm2,zmm29,zmm2
  a0bdec:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm2
  a0bdf3:	07 
  a0bdf4:	62 d1 34 40 58 d1    	vaddps zmm2,zmm25,zmm9
  a0bdfa:	62 11 2c 48 58 c7    	vaddps zmm8,zmm10,zmm31
  a0be00:	62 f1 24 40 58 da    	vaddps zmm3,zmm27,zmm2
  a0be06:	62 92 7d 48 ac d3    	vfnmadd213ps zmm2,zmm0,zmm27
  a0be0c:	62 51 4c 48 58 d6    	vaddps zmm10,zmm6,zmm14
  a0be12:	62 61 3c 40 59 c1    	vmulps zmm24,zmm24,zmm1
  a0be18:	62 41 4c 48 5c fe    	vsubps zmm31,zmm6,zmm14
  a0be1e:	62 c1 74 40 58 da    	vaddps zmm19,zmm17,zmm10
  a0be24:	62 32 7d 48 ac d1    	vfnmadd213ps zmm10,zmm0,zmm17
  a0be2a:	62 31 7c 40 58 f4    	vaddps zmm14,zmm16,zmm20
  a0be30:	62 d1 34 40 5c e1    	vsubps zmm4,zmm25,zmm9
  a0be36:	62 01 44 40 5c c8    	vsubps zmm25,zmm23,zmm24
  a0be3c:	62 f1 24 48 59 c1    	vmulps zmm0,zmm11,zmm1
  a0be42:	62 21 5c 40 5c d8    	vsubps zmm27,zmm20,zmm16
  a0be48:	62 71 2c 40 5c d8    	vsubps zmm11,zmm26,zmm0
  a0be4e:	62 e1 74 48 59 64 24 	vmulps zmm20,zmm1,ZMMWORD PTR [rsp+0x40]
  a0be55:	01 
  a0be56:	62 e1 4c 40 59 c1    	vmulps zmm16,zmm22,zmm1
  a0be5c:	62 81 44 40 58 f0    	vaddps zmm22,zmm23,zmm24
  a0be62:	62 31 54 40 58 c8    	vaddps zmm9,zmm21,zmm16
  a0be68:	62 e1 1c 40 59 c9    	vmulps zmm17,zmm28,zmm1
  a0be6e:	62 a1 54 40 5c e8    	vsubps zmm21,zmm21,zmm16
  a0be74:	62 81 5c 40 58 c6    	vaddps zmm16,zmm20,zmm30
  a0be7a:	62 f1 1c 48 58 ed    	vaddps zmm5,zmm12,zmm5
  a0be80:	62 21 14 48 5c e9    	vsubps zmm29,zmm13,zmm17
  a0be86:	62 71 04 40 59 e1    	vmulps zmm12,zmm31,zmm1
  a0be8c:	62 51 74 40 58 ed    	vaddps zmm13,zmm17,zmm13
  a0be92:	62 e1 1c 48 58 ca    	vaddps zmm17,zmm12,zmm2
  a0be98:	62 e1 5c 48 59 f9    	vmulps zmm23,zmm4,zmm1
  a0be9e:	62 f1 04 48 58 cf    	vaddps zmm1,zmm15,zmm7
  a0bea4:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm1
  a0beab:	04 
  a0beac:	62 21 2c 48 5c e7    	vsubps zmm28,zmm10,zmm23
  a0beb2:	62 f1 2c 40 58 c0    	vaddps zmm0,zmm26,zmm0
  a0beb8:	62 b1 0c 40 5c cc    	vsubps zmm1,zmm30,zmm20
  a0bebe:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm1
  a0bec5:	05 
  a0bec6:	62 d1 6c 48 5c d4    	vsubps zmm2,zmm2,zmm12
  a0becc:	62 b1 2c 48 58 cf    	vaddps zmm1,zmm10,zmm23
  a0bed2:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm1
  a0bed9:	06 
  a0beda:	62 21 7c 48 28 d2    	vmovaps zmm26,zmm18
  a0bee0:	62 e1 7c 48 28 25 96 	vmovaps zmm20,ZMMWORD PTR [rip+0xffffffffff6bb096]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a0bee7:	b0 6b ff 
  a0beea:	62 22 5d 40 7f d5    	vpermt2ps zmm26,zmm20,zmm21
  a0bef0:	62 61 7c 48 28 3d c6 	vmovaps zmm31,ZMMWORD PTR [rip+0xffffffffff6bb0c6]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a0bef7:	b0 6b ff 
  a0befa:	62 a2 05 40 7f d5    	vpermt2ps zmm18,zmm31,zmm21
  a0bf00:	62 c1 7c 48 28 ee    	vmovaps zmm21,zmm14
  a0bf06:	62 72 05 40 7f f5    	vpermt2ps zmm14,zmm31,zmm5
  a0bf0c:	62 c1 7c 48 28 fb    	vmovaps zmm23,zmm11
  a0bf12:	62 72 05 40 7f d8    	vpermt2ps zmm11,zmm31,zmm0
  a0bf18:	62 e2 5d 40 7f ed    	vpermt2ps zmm21,zmm20,zmm5
  a0bf1e:	62 61 7c 48 28 c3    	vmovaps zmm24,zmm3
  a0bf24:	62 62 5d 40 7f c2    	vpermt2ps zmm24,zmm20,zmm2
  a0bf2a:	62 f2 05 40 7f da    	vpermt2ps zmm3,zmm31,zmm2
  a0bf30:	62 e2 5d 40 7f f8    	vpermt2ps zmm23,zmm20,zmm0
  a0bf36:	62 d1 7c 48 28 c1    	vmovaps zmm0,zmm9
  a0bf3c:	c5 d0 57 ed          	vxorps xmm5,xmm5,xmm5
  a0bf40:	62 f2 5d 40 7f c5    	vpermt2ps zmm0,zmm20,zmm5
  a0bf46:	62 91 7c 48 28 d3    	vmovaps zmm2,zmm27
  a0bf4c:	62 f2 5d 40 7f d5    	vpermt2ps zmm2,zmm20,zmm5
  a0bf52:	62 31 7c 48 28 d1    	vmovaps zmm10,zmm17
  a0bf58:	62 72 5d 40 7f d5    	vpermt2ps zmm10,zmm20,zmm5
  a0bf5e:	62 91 7c 48 28 ca    	vmovaps zmm1,zmm26
  a0bf64:	62 f1 7c 48 28 25 92 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff6baf92]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a0bf6b:	af 6b ff 
  a0bf6e:	62 f2 5d 48 7f c8    	vpermt2ps zmm1,zmm4,zmm0
  a0bf74:	62 f1 7c 48 28 35 c2 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff6bafc2]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a0bf7b:	af 6b ff 
  a0bf7e:	62 62 4d 48 7f d0    	vpermt2ps zmm26,zmm6,zmm0
  a0bf84:	62 b1 7c 48 28 fd    	vmovaps zmm7,zmm21
  a0bf8a:	62 e2 4d 48 7f ea    	vpermt2ps zmm21,zmm6,zmm2
  a0bf90:	62 f2 5d 48 7f fa    	vpermt2ps zmm7,zmm4,zmm2
  a0bf96:	62 11 7c 48 28 f8    	vmovaps zmm15,zmm24
  a0bf9c:	62 52 5d 48 7f fa    	vpermt2ps zmm15,zmm4,zmm10
  a0bfa2:	62 42 4d 48 7f c2    	vpermt2ps zmm24,zmm6,zmm10
  a0bfa8:	62 72 05 40 7f cd    	vpermt2ps zmm9,zmm31,zmm5
  a0bfae:	62 c2 5d 48 7f d1    	vpermt2ps zmm18,zmm4,zmm9
  a0bfb4:	62 d1 7c 48 28 c0    	vmovaps zmm0,zmm8
  a0bfba:	62 f2 5d 40 7f c5    	vpermt2ps zmm0,zmm20,zmm5
  a0bfc0:	62 62 05 40 7f dd    	vpermt2ps zmm27,zmm31,zmm5
  a0bfc6:	62 72 05 40 7f c5    	vpermt2ps zmm8,zmm31,zmm5
  a0bfcc:	62 e2 05 40 7f cd    	vpermt2ps zmm17,zmm31,zmm5
  a0bfd2:	62 12 5d 48 7f f3    	vpermt2ps zmm14,zmm4,zmm27
  a0bfd8:	62 b1 7c 48 28 d7    	vmovaps zmm2,zmm23
  a0bfde:	62 e2 4d 48 7f f8    	vpermt2ps zmm23,zmm6,zmm0
  a0bfe4:	62 52 5d 48 7f d8    	vpermt2ps zmm11,zmm4,zmm8
  a0bfea:	62 c1 ed 40 14 d3    	vunpcklpd zmm18,zmm18,zmm11
  a0bff0:	62 f2 5d 48 7f d0    	vpermt2ps zmm2,zmm4,zmm0
  a0bff6:	62 b2 5d 48 7f d9    	vpermt2ps zmm3,zmm4,zmm17
  a0bffc:	62 71 8d 48 14 cb    	vunpcklpd zmm9,zmm14,zmm3
  a0c002:	62 b1 ad 40 14 c7    	vunpcklpd zmm0,zmm26,zmm23
  a0c008:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a0c00f:	01 
  a0c010:	62 b1 ad 40 15 c7    	vunpckhpd zmm0,zmm26,zmm23
  a0c016:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm0
  a0c01d:	03 
  a0c01e:	62 11 d5 40 14 d8    	vunpcklpd zmm11,zmm21,zmm24
  a0c024:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x80]
  a0c02b:	02 
  a0c02c:	62 e1 7c 48 28 c8    	vmovaps zmm17,zmm0
  a0c032:	62 c2 5d 40 7f cd    	vpermt2ps zmm17,zmm20,zmm13
  a0c038:	62 11 d5 40 15 f0    	vunpckhpd zmm14,zmm21,zmm24
  a0c03e:	62 d2 05 40 7f c5    	vpermt2ps zmm0,zmm31,zmm13
  a0c044:	62 11 7c 48 28 e9    	vmovaps zmm13,zmm25
  a0c04a:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x100]
  a0c051:	04 
  a0c052:	62 72 5d 40 7f eb    	vpermt2ps zmm13,zmm20,zmm3
  a0c058:	62 21 7c 48 28 f2    	vmovaps zmm30,zmm18
  a0c05e:	62 62 05 40 7f cb    	vpermt2ps zmm25,zmm31,zmm3
  a0c064:	62 21 7c 48 28 d0    	vmovaps zmm26,zmm16
  a0c06a:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x140]
  a0c071:	05 
  a0c072:	62 62 5d 40 7f d3    	vpermt2ps zmm26,zmm20,zmm3
  a0c078:	62 71 f5 48 14 e2    	vunpcklpd zmm12,zmm1,zmm2
  a0c07e:	62 e2 05 40 7f c3    	vpermt2ps zmm16,zmm31,zmm3
  a0c084:	62 a1 7c 48 28 fb    	vmovaps zmm23,zmm19
  a0c08a:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x180]
  a0c091:	06 
  a0c092:	62 e2 5d 40 7f fb    	vpermt2ps zmm23,zmm20,zmm3
  a0c098:	62 61 f5 48 15 c2    	vunpckhpd zmm24,zmm1,zmm2
  a0c09e:	62 e2 05 40 7f db    	vpermt2ps zmm19,zmm31,zmm3
  a0c0a4:	62 91 7c 48 28 cd    	vmovaps zmm1,zmm29
  a0c0aa:	62 f2 5d 40 7f cd    	vpermt2ps zmm1,zmm20,zmm5
  a0c0b0:	62 d1 c5 48 14 df    	vunpcklpd zmm3,zmm7,zmm15
  a0c0b6:	62 b1 7c 48 28 d6    	vmovaps zmm2,zmm22
  a0c0bc:	62 f2 5d 40 7f d5    	vpermt2ps zmm2,zmm20,zmm5
  a0c0c2:	62 e1 7c 48 28 6c 24 	vmovaps zmm21,ZMMWORD PTR [rsp+0x1c0]
  a0c0c9:	07 
  a0c0ca:	62 31 7c 48 28 d5    	vmovaps zmm10,zmm21
  a0c0d0:	62 51 c5 48 15 c7    	vunpckhpd zmm8,zmm7,zmm15
  a0c0d6:	62 72 5d 40 7f d5    	vpermt2ps zmm10,zmm20,zmm5
  a0c0dc:	62 b1 7c 48 28 f9    	vmovaps zmm7,zmm17
  a0c0e2:	62 f2 5d 48 7f f9    	vpermt2ps zmm7,zmm4,zmm1
  a0c0e8:	62 61 7c 48 28 1d 4e 	vmovaps zmm27,ZMMWORD PTR [rip+0xffffffffff6bad4e]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a0c0ef:	ad 6b ff 
  a0c0f2:	62 c2 25 40 7f d1    	vpermt2ps zmm18,zmm27,zmm9
  a0c0f8:	62 e1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm18
  a0c0ff:	02 
  a0c100:	62 e2 4d 48 7f c9    	vpermt2ps zmm17,zmm6,zmm1
  a0c106:	62 91 7c 48 28 cc    	vmovaps zmm1,zmm28
  a0c10c:	62 f2 5d 40 7f cd    	vpermt2ps zmm1,zmm20,zmm5
  a0c112:	62 e1 7c 48 28 15 e4 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff6bace4]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a0c119:	ac 6b ff 
  a0c11c:	62 42 6d 40 7f f1    	vpermt2ps zmm30,zmm18,zmm9
  a0c122:	62 51 7c 48 28 cd    	vmovaps zmm9,zmm13
  a0c128:	62 72 5d 48 7f ca    	vpermt2ps zmm9,zmm4,zmm2
  a0c12e:	62 72 4d 48 7f ea    	vpermt2ps zmm13,zmm6,zmm2
  a0c134:	62 91 7c 48 28 d2    	vmovaps zmm2,zmm26
  a0c13a:	62 d2 5d 48 7f d2    	vpermt2ps zmm2,zmm4,zmm10
  a0c140:	62 42 4d 48 7f d2    	vpermt2ps zmm26,zmm6,zmm10
  a0c146:	62 31 7c 48 28 d7    	vmovaps zmm10,zmm23
  a0c14c:	62 72 5d 48 7f d1    	vpermt2ps zmm10,zmm4,zmm1
  a0c152:	62 e2 4d 48 7f f9    	vpermt2ps zmm23,zmm6,zmm1
  a0c158:	62 62 05 40 7f ed    	vpermt2ps zmm29,zmm31,zmm5
  a0c15e:	62 92 5d 48 7f c5    	vpermt2ps zmm0,zmm4,zmm29
  a0c164:	62 e2 05 40 7f f5    	vpermt2ps zmm22,zmm31,zmm5
  a0c16a:	62 22 5d 48 7f ce    	vpermt2ps zmm25,zmm4,zmm22
  a0c170:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x40]
  a0c177:	01 
  a0c178:	62 e1 7c 48 28 f1    	vmovaps zmm22,zmm1
  a0c17e:	62 d2 25 40 7f cb    	vpermt2ps zmm1,zmm27,zmm11
  a0c184:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm1
  a0c18b:	01 
  a0c18c:	62 c2 6d 40 7f f3    	vpermt2ps zmm22,zmm18,zmm11
  a0c192:	62 e2 05 40 7f ed    	vpermt2ps zmm21,zmm31,zmm5
  a0c198:	62 a2 5d 48 7f c5    	vpermt2ps zmm16,zmm4,zmm21
  a0c19e:	62 31 fd 48 14 f8    	vunpcklpd zmm15,zmm0,zmm16
  a0c1a4:	62 c1 7c 48 28 e4    	vmovaps zmm20,zmm12
  a0c1aa:	62 72 25 40 7f e3    	vpermt2ps zmm12,zmm27,zmm3
  a0c1b0:	62 c1 7c 48 28 ec    	vmovaps zmm21,zmm12
  a0c1b6:	62 62 05 40 7f e5    	vpermt2ps zmm28,zmm31,zmm5
  a0c1bc:	62 82 5d 48 7f dc    	vpermt2ps zmm19,zmm4,zmm28
  a0c1c2:	62 01 7c 48 28 e8    	vmovaps zmm29,zmm24
  a0c1c8:	62 b1 b5 40 14 cb    	vunpcklpd zmm1,zmm25,zmm19
  a0c1ce:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0xc0]
  a0c1d5:	03 
  a0c1d6:	62 e1 7c 48 28 d8    	vmovaps zmm19,zmm0
  a0c1dc:	62 d2 25 40 7f c6    	vpermt2ps zmm0,zmm27,zmm14
  a0c1e2:	62 e1 7c 48 28 c0    	vmovaps zmm16,zmm0
  a0c1e8:	62 c2 6d 40 7f de    	vpermt2ps zmm19,zmm18,zmm14
  a0c1ee:	62 61 c5 48 14 ca    	vunpcklpd zmm25,zmm7,zmm2
  a0c1f4:	62 61 c5 48 15 fa    	vunpckhpd zmm31,zmm7,zmm2
  a0c1fa:	62 d1 b5 48 14 e2    	vunpcklpd zmm4,zmm9,zmm10
  a0c200:	62 42 25 40 7f c0    	vpermt2ps zmm24,zmm27,zmm8
  a0c206:	62 d1 b5 48 15 d2    	vunpckhpd zmm2,zmm9,zmm10
  a0c20c:	62 11 f5 40 14 f2    	vunpcklpd zmm14,zmm17,zmm26
  a0c212:	62 11 f5 40 15 e2    	vunpckhpd zmm12,zmm17,zmm26
  a0c218:	62 e2 6d 40 7f e3    	vpermt2ps zmm20,zmm18,zmm3
  a0c21e:	62 b1 95 48 14 c7    	vunpcklpd zmm0,zmm13,zmm23
  a0c224:	62 b1 95 48 15 f7    	vunpckhpd zmm6,zmm13,zmm23
  a0c22a:	62 c1 7c 48 28 ce    	vmovaps zmm17,zmm14
  a0c230:	62 11 7c 48 28 ef    	vmovaps zmm13,zmm31
  a0c236:	62 e2 6d 40 7f c8    	vpermt2ps zmm17,zmm18,zmm0
  a0c23c:	62 72 25 40 7f f0    	vpermt2ps zmm14,zmm27,zmm0
  a0c242:	62 d1 7c 48 28 fc    	vmovaps zmm7,zmm12
  a0c248:	62 62 25 40 7f fa    	vpermt2ps zmm31,zmm27,zmm2
  a0c24e:	62 f2 6d 40 7f fe    	vpermt2ps zmm7,zmm18,zmm6
  a0c254:	62 72 25 40 7f e6    	vpermt2ps zmm12,zmm27,zmm6
  a0c25a:	62 d1 7c 48 28 c7    	vmovaps zmm0,zmm15
  a0c260:	62 42 6d 40 7f e8    	vpermt2ps zmm29,zmm18,zmm8
  a0c266:	62 f2 6d 40 7f c1    	vpermt2ps zmm0,zmm18,zmm1
  a0c26c:	62 72 25 40 7f f9    	vpermt2ps zmm15,zmm27,zmm1
  a0c272:	62 f1 7c 48 10 49 10 	vmovups zmm1,ZMMWORD PTR [rcx+0x400]
  a0c279:	62 72 6d 40 7f ea    	vpermt2ps zmm13,zmm18,zmm2
  a0c27f:	62 f1 7c 48 10 51 11 	vmovups zmm2,ZMMWORD PTR [rcx+0x440]
  a0c286:	62 61 0c 40 59 e1    	vmulps zmm28,zmm30,zmm1
  a0c28c:	62 71 7c 48 59 d9    	vmulps zmm11,zmm0,zmm1
  a0c292:	62 62 7d 48 bc e2    	vfnmadd231ps zmm28,zmm0,zmm2
  a0c298:	62 f1 7c 48 10 41 08 	vmovups zmm0,ZMMWORD PTR [rcx+0x200]
  a0c29f:	62 12 6d 48 b8 de    	vfmadd231ps zmm11,zmm2,zmm30
  a0c2a5:	62 f1 7c 48 10 49 09 	vmovups zmm1,ZMMWORD PTR [rcx+0x240]
  a0c2ac:	62 61 4c 40 59 f0    	vmulps zmm30,zmm22,zmm0
  a0c2b2:	62 62 75 40 bc f1    	vfnmadd231ps zmm30,zmm17,zmm1
  a0c2b8:	62 f1 74 40 59 e8    	vmulps zmm5,zmm17,zmm0
  a0c2be:	62 f1 7c 48 10 41 0a 	vmovups zmm0,ZMMWORD PTR [rcx+0x280]
  a0c2c5:	62 b2 75 48 b8 ee    	vfmadd231ps zmm5,zmm1,zmm22
  a0c2cb:	62 f1 7c 48 10 49 0b 	vmovups zmm1,ZMMWORD PTR [rcx+0x2c0]
  a0c2d2:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x40]
  a0c2d9:	01 
  a0c2da:	62 e1 6c 48 59 f0    	vmulps zmm22,zmm2,zmm0
  a0c2e0:	62 e1 0c 48 59 f8    	vmulps zmm23,zmm14,zmm0
  a0c2e6:	62 e2 0d 48 bc f1    	vfnmadd231ps zmm22,zmm14,zmm1
  a0c2ec:	62 f1 7c 48 10 41 0c 	vmovups zmm0,ZMMWORD PTR [rcx+0x300]
  a0c2f3:	62 e2 75 48 b8 fa    	vfmadd231ps zmm23,zmm1,zmm2
  a0c2f9:	62 f1 7c 48 10 49 0d 	vmovups zmm1,ZMMWORD PTR [rcx+0x340]
  a0c300:	62 71 64 40 59 f0    	vmulps zmm14,zmm19,zmm0
  a0c306:	62 72 45 48 bc f1    	vfnmadd231ps zmm14,zmm7,zmm1
  a0c30c:	62 f1 44 48 59 d0    	vmulps zmm2,zmm7,zmm0
  a0c312:	62 f1 7c 48 10 41 0e 	vmovups zmm0,ZMMWORD PTR [rcx+0x380]
  a0c319:	62 b2 75 48 b8 d3    	vfmadd231ps zmm2,zmm1,zmm19
  a0c31f:	62 f1 7c 48 10 49 0f 	vmovups zmm1,ZMMWORD PTR [rcx+0x3c0]
  a0c326:	62 71 7c 40 59 c0    	vmulps zmm8,zmm16,zmm0
  a0c32c:	62 71 1c 48 59 c8    	vmulps zmm9,zmm12,zmm0
  a0c332:	62 72 1d 48 bc c1    	vfnmadd231ps zmm8,zmm12,zmm1
  a0c338:	62 f1 7c 48 10 41 04 	vmovups zmm0,ZMMWORD PTR [rcx+0x100]
  a0c33f:	62 32 75 48 b8 c8    	vfmadd231ps zmm9,zmm1,zmm16
  a0c345:	62 f1 7c 48 10 49 05 	vmovups zmm1,ZMMWORD PTR [rcx+0x140]
  a0c34c:	62 71 14 40 59 e0    	vmulps zmm12,zmm29,zmm0
  a0c352:	62 72 15 48 bc e1    	vfnmadd231ps zmm12,zmm13,zmm1
  a0c358:	62 71 14 48 59 d0    	vmulps zmm10,zmm13,zmm0
  a0c35e:	62 f1 7c 48 10 41 06 	vmovups zmm0,ZMMWORD PTR [rcx+0x180]
  a0c365:	62 12 75 48 b8 d5    	vfmadd231ps zmm10,zmm1,zmm29
  a0c36b:	62 f1 7c 48 10 49 07 	vmovups zmm1,ZMMWORD PTR [rcx+0x1c0]
  a0c372:	62 f1 3c 40 59 f0    	vmulps zmm6,zmm24,zmm0
  a0c378:	62 e1 04 40 59 c0    	vmulps zmm16,zmm31,zmm0
  a0c37e:	62 f2 05 40 bc f1    	vfnmadd231ps zmm6,zmm31,zmm1
  a0c384:	62 f1 7c 48 10 59 12 	vmovups zmm3,ZMMWORD PTR [rcx+0x480]
  a0c38b:	62 82 75 48 b8 c0    	vfmadd231ps zmm16,zmm1,zmm24
  a0c391:	62 f1 7c 48 10 49 13 	vmovups zmm1,ZMMWORD PTR [rcx+0x4c0]
  a0c398:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x80]
  a0c39f:	02 
  a0c3a0:	62 f1 44 48 59 c3    	vmulps zmm0,zmm7,zmm3
  a0c3a6:	62 f2 05 48 bc c1    	vfnmadd231ps zmm0,zmm15,zmm1
  a0c3ac:	62 71 04 48 59 fb    	vmulps zmm15,zmm15,zmm3
  a0c3b2:	62 81 7c 48 28 d9    	vmovaps zmm19,zmm25
  a0c3b8:	62 62 25 40 7f cc    	vpermt2ps zmm25,zmm27,zmm4
  a0c3be:	62 72 75 48 b8 ff    	vfmadd231ps zmm15,zmm1,zmm7
  a0c3c4:	62 f1 7c 48 10 49 02 	vmovups zmm1,ZMMWORD PTR [rcx+0x80]
  a0c3cb:	62 f1 7c 48 10 59 03 	vmovups zmm3,ZMMWORD PTR [rcx+0xc0]
  a0c3d2:	62 e2 6d 40 7f dc    	vpermt2ps zmm19,zmm18,zmm4
  a0c3d8:	62 e1 54 40 59 c9    	vmulps zmm17,zmm21,zmm1
  a0c3de:	62 e2 35 40 bc cb    	vfnmadd231ps zmm17,zmm25,zmm3
  a0c3e4:	62 f1 34 40 59 c9    	vmulps zmm1,zmm25,zmm1
  a0c3ea:	62 51 0c 40 58 ee    	vaddps zmm13,zmm30,zmm14
  a0c3f0:	62 b2 65 48 b8 cd    	vfmadd231ps zmm1,zmm3,zmm21
  a0c3f6:	62 f1 54 48 58 da    	vaddps zmm3,zmm5,zmm2
  a0c3fc:	62 f1 54 48 5c d2    	vsubps zmm2,zmm5,zmm2
  a0c402:	62 81 1c 48 58 ec    	vaddps zmm21,zmm12,zmm28
  a0c408:	62 b1 34 48 58 f8    	vaddps zmm7,zmm9,zmm16
  a0c40e:	62 a1 34 48 5c c0    	vsubps zmm16,zmm9,zmm16
  a0c414:	62 51 2c 48 58 cb    	vaddps zmm9,zmm10,zmm11
  a0c41a:	62 51 2c 48 5c d3    	vsubps zmm10,zmm10,zmm11
  a0c420:	62 f1 04 48 58 e1    	vaddps zmm4,zmm15,zmm1
  a0c426:	62 f1 04 48 5c c9    	vsubps zmm1,zmm15,zmm1
  a0c42c:	62 71 3c 48 58 fe    	vaddps zmm15,zmm8,zmm6
  a0c432:	62 91 1c 48 5c ec    	vsubps zmm5,zmm12,zmm28
  a0c438:	62 41 4c 40 58 c7    	vaddps zmm24,zmm22,zmm15
  a0c43e:	62 51 0c 40 5c e6    	vsubps zmm12,zmm30,zmm14
  a0c444:	62 61 3c 48 5c ce    	vsubps zmm25,zmm8,zmm6
  a0c44a:	62 b1 5c 40 58 f5    	vaddps zmm6,zmm20,zmm21
  a0c450:	62 21 7c 48 58 d1    	vaddps zmm26,zmm0,zmm17
  a0c456:	62 b1 7c 48 5c c1    	vsubps zmm0,zmm0,zmm17
  a0c45c:	62 62 7d 48 18 1d 82 	vbroadcastss zmm27,DWORD PTR [rip+0xffffffffff669282]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a0c463:	92 66 ff 
  a0c466:	62 11 7c 48 28 db    	vmovaps zmm11,zmm27
  a0c46c:	62 c1 4c 48 58 d5    	vaddps zmm18,zmm6,zmm13
  a0c472:	62 32 55 40 a8 dc    	vfmadd213ps zmm11,zmm21,zmm20
  a0c478:	62 62 7d 48 18 25 c2 	vbroadcastss zmm28,DWORD PTR [rip+0xffffffffff6691c2]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a0c47f:	91 66 ff 
  a0c482:	62 a2 1d 40 bc e5    	vfnmadd231ps zmm20,zmm28,zmm21
  a0c488:	62 a1 34 48 58 cb    	vaddps zmm17,zmm9,zmm19
  a0c48e:	62 12 15 48 bc dc    	vfnmadd231ps zmm11,zmm13,zmm28
  a0c494:	62 c2 25 40 b8 e5    	vfmadd231ps zmm20,zmm27,zmm13
  a0c49a:	62 e2 7d 48 18 2d b4 	vbroadcastss zmm21,DWORD PTR [rip+0xffffffffff6692b4]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a0c4a1:	92 66 ff 
  a0c4a4:	62 b1 6c 48 59 f5    	vmulps zmm6,zmm2,zmm21
  a0c4aa:	62 62 7d 48 18 2d ec 	vbroadcastss zmm29,DWORD PTR [rip+0xffffffffff668eec]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a0c4b1:	8e 66 ff 
  a0c4b4:	62 92 2d 48 b8 f5    	vfmadd231ps zmm6,zmm10,zmm29
  a0c4ba:	62 31 2c 48 59 d5    	vmulps zmm10,zmm10,zmm21
  a0c4c0:	62 72 15 40 bc d2    	vfnmadd231ps zmm10,zmm29,zmm2
  a0c4c6:	62 11 7c 48 28 f3    	vmovaps zmm14,zmm27
  a0c4cc:	62 32 05 48 a8 f6    	vfmadd213ps zmm14,zmm15,zmm22
  a0c4d2:	62 11 3c 40 58 c2    	vaddps zmm8,zmm24,zmm26
  a0c4d8:	62 12 2d 40 bc f4    	vfnmadd231ps zmm14,zmm26,zmm28
  a0c4de:	62 c2 1d 40 bc f7    	vfnmadd231ps zmm22,zmm28,zmm15
  a0c4e4:	62 b1 74 48 59 d5    	vmulps zmm2,zmm1,zmm21
  a0c4ea:	62 92 7d 40 b8 d5    	vfmadd231ps zmm2,zmm16,zmm29
  a0c4f0:	62 82 25 40 b8 f2    	vfmadd231ps zmm22,zmm27,zmm26
  a0c4f6:	62 11 7c 48 28 fb    	vmovaps zmm15,zmm27
  a0c4fc:	62 a1 7c 40 59 c5    	vmulps zmm16,zmm16,zmm21
  a0c502:	62 32 35 48 a8 fb    	vfmadd213ps zmm15,zmm9,zmm19
  a0c508:	62 e2 15 40 bc c1    	vfnmadd231ps zmm16,zmm29,zmm1
  a0c50e:	62 91 7c 48 28 cb    	vmovaps zmm1,zmm27
  a0c514:	62 c2 1d 40 bc d9    	vfnmadd231ps zmm19,zmm28,zmm9
  a0c51a:	62 71 44 40 58 cf    	vaddps zmm9,zmm23,zmm7
  a0c520:	62 b2 45 48 a8 cf    	vfmadd213ps zmm1,zmm7,zmm23
  a0c526:	62 e2 1d 40 bc ff    	vfnmadd231ps zmm23,zmm28,zmm7
  a0c52c:	62 f1 34 48 58 fc    	vaddps zmm7,zmm9,zmm4
  a0c532:	62 92 5d 48 bc cc    	vfnmadd231ps zmm1,zmm4,zmm28
  a0c538:	62 e2 25 40 b8 fc    	vfmadd231ps zmm23,zmm27,zmm4
  a0c53e:	62 b1 7c 48 59 e5    	vmulps zmm4,zmm0,zmm21
  a0c544:	62 92 35 40 b8 e5    	vfmadd231ps zmm4,zmm25,zmm29
  a0c54a:	62 31 34 40 59 cd    	vmulps zmm9,zmm25,zmm21
  a0c550:	62 72 15 40 bc c8    	vfnmadd231ps zmm9,zmm29,zmm0
  a0c556:	62 31 64 48 58 e9    	vaddps zmm13,zmm3,zmm17
  a0c55c:	62 12 65 48 bc fc    	vfnmadd231ps zmm15,zmm3,zmm28
  a0c562:	62 e2 25 40 b8 db    	vfmadd231ps zmm19,zmm27,zmm3
  a0c568:	62 b1 1c 48 59 c5    	vmulps zmm0,zmm12,zmm21
  a0c56e:	62 92 55 48 b8 c5    	vfmadd231ps zmm0,zmm5,zmm29
  a0c574:	62 b1 54 48 59 dd    	vmulps zmm3,zmm5,zmm21
  a0c57a:	62 d2 15 40 bc dc    	vfnmadd231ps zmm3,zmm29,zmm12
  a0c580:	62 31 4c 40 58 e0    	vaddps zmm12,zmm22,zmm16
  a0c586:	62 a1 4c 40 5c c0    	vsubps zmm16,zmm22,zmm16
  a0c58c:	62 c1 5c 40 58 ca    	vaddps zmm17,zmm20,zmm10
  a0c592:	62 51 5c 40 5c d2    	vsubps zmm10,zmm20,zmm10
  a0c598:	62 c1 44 40 5c e1    	vsubps zmm20,zmm23,zmm9
  a0c59e:	62 c1 44 40 58 e9    	vaddps zmm21,zmm23,zmm9
  a0c5a4:	62 71 64 40 5c cb    	vsubps zmm9,zmm19,zmm3
  a0c5aa:	62 a1 64 48 58 db    	vaddps zmm19,zmm3,zmm19
  a0c5b0:	62 f1 0c 48 58 da    	vaddps zmm3,zmm14,zmm2
  a0c5b6:	62 f1 0c 48 5c d2    	vsubps zmm2,zmm14,zmm2
  a0c5bc:	62 f1 24 48 58 ee    	vaddps zmm5,zmm11,zmm6
  a0c5c2:	62 71 24 48 5c f6    	vsubps zmm14,zmm11,zmm6
  a0c5c8:	62 f1 74 48 5c f4    	vsubps zmm6,zmm1,zmm4
  a0c5ce:	62 f1 74 48 58 cc    	vaddps zmm1,zmm1,zmm4
  a0c5d4:	62 f1 04 48 5c e0    	vsubps zmm4,zmm15,zmm0
  a0c5da:	62 d1 7c 48 58 c7    	vaddps zmm0,zmm0,zmm15
  a0c5e0:	62 71 54 48 5c fb    	vsubps zmm15,zmm5,zmm3
  a0c5e6:	62 f1 54 48 58 eb    	vaddps zmm5,zmm5,zmm3
  a0c5ec:	62 e1 5c 48 5c f6    	vsubps zmm22,zmm4,zmm6
  a0c5f2:	62 71 5c 48 58 de    	vaddps zmm11,zmm4,zmm6
  a0c5f8:	62 c1 74 40 58 fc    	vaddps zmm23,zmm17,zmm12
  a0c5fe:	62 d1 74 40 5c e4    	vsubps zmm4,zmm17,zmm12
  a0c604:	62 31 34 48 58 e4    	vaddps zmm12,zmm9,zmm20
  a0c60a:	62 31 34 48 5c cc    	vsubps zmm9,zmm9,zmm20
  a0c610:	62 a1 2c 48 5c c8    	vsubps zmm17,zmm10,zmm16
  a0c616:	62 b1 2c 48 58 d8    	vaddps zmm3,zmm10,zmm16
  a0c61c:	62 31 64 40 5c d5    	vsubps zmm10,zmm19,zmm21
  a0c622:	62 b1 64 40 58 f5    	vaddps zmm6,zmm19,zmm21
  a0c628:	62 c1 6c 40 5c c0    	vsubps zmm16,zmm18,zmm8
  a0c62e:	62 c1 6c 40 58 d0    	vaddps zmm18,zmm18,zmm8
  a0c634:	62 e1 0c 48 58 da    	vaddps zmm19,zmm14,zmm2
  a0c63a:	62 71 0c 48 5c c2    	vsubps zmm8,zmm14,zmm2
  a0c640:	62 f1 14 48 5c d7    	vsubps zmm2,zmm13,zmm7
  a0c646:	62 f1 14 48 58 ff    	vaddps zmm7,zmm13,zmm7
  a0c64c:	62 31 7c 48 28 ea    	vmovaps zmm13,zmm18
  a0c652:	c5 7c 28 35 e6 a5 66 	vmovaps ymm14,YMMWORD PTR [rip+0xffffffffff66a5e6]        # 76c40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x40f0>
  a0c659:	ff 
  a0c65a:	62 72 0d 48 7f ef    	vpermt2ps zmm13,zmm14,zmm7
  a0c660:	62 e1 7c 48 28 25 d6 	vmovaps zmm20,ZMMWORD PTR [rip+0xffffffffff6823d6]        # 8ea40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1bef0>
  a0c667:	23 68 ff 
  a0c66a:	62 e2 5d 40 7f d7    	vpermt2ps zmm18,zmm20,zmm7
  a0c670:	62 e1 7c 48 11 14 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm18
  a0c677:	62 f1 7c 48 58 f9    	vaddps zmm7,zmm0,zmm1
  a0c67d:	62 f1 7c 48 5c c1    	vsubps zmm0,zmm0,zmm1
  a0c683:	c5 7c 11 6c 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm13
  a0c689:	62 d1 7c 48 28 cf    	vmovaps zmm1,zmm15
  a0c68f:	62 32 5d 40 7f fe    	vpermt2ps zmm15,zmm20,zmm22
  a0c695:	62 b2 0d 48 7f ce    	vpermt2ps zmm1,zmm14,zmm22
  a0c69b:	62 71 7c 48 11 bc 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x60],zmm15
  a0c6a2:	60 00 00 00 
  a0c6a6:	c5 fc 11 8c 16 a0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xa0],ymm1
  a0c6ad:	00 00 
  a0c6af:	62 b1 7c 48 28 cf    	vmovaps zmm1,zmm23
  a0c6b5:	62 d2 0d 48 7f cc    	vpermt2ps zmm1,zmm14,zmm12
  a0c6bb:	62 c2 5d 40 7f fc    	vpermt2ps zmm23,zmm20,zmm12
  a0c6c1:	62 e1 7c 48 11 7c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xc0],zmm23
  a0c6c8:	03 
  a0c6c9:	c5 fc 11 8c 16 00 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x100],ymm1
  a0c6d0:	00 00 
  a0c6d2:	62 b1 7c 48 28 c9    	vmovaps zmm1,zmm17
  a0c6d8:	62 d2 0d 48 7f ca    	vpermt2ps zmm1,zmm14,zmm10
  a0c6de:	62 c2 5d 40 7f ca    	vpermt2ps zmm17,zmm20,zmm10
  a0c6e4:	62 e1 7c 48 11 8c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x120],zmm17
  a0c6eb:	20 01 00 00 
  a0c6ef:	c5 fc 11 8c 16 60 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x160],ymm1
  a0c6f6:	00 00 
  a0c6f8:	62 b1 7c 48 28 cb    	vmovaps zmm1,zmm19
  a0c6fe:	62 f2 0d 48 7f cf    	vpermt2ps zmm1,zmm14,zmm7
  a0c704:	62 e2 5d 40 7f df    	vpermt2ps zmm19,zmm20,zmm7
  a0c70a:	62 e1 7c 48 11 5c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x180],zmm19
  a0c711:	06 
  a0c712:	62 b1 7c 48 28 f8    	vmovaps zmm7,zmm16
  a0c718:	62 f2 0d 48 7f fa    	vpermt2ps zmm7,zmm14,zmm2
  a0c71e:	62 e2 5d 40 7f c2    	vpermt2ps zmm16,zmm20,zmm2
  a0c724:	c5 fc 11 8c 16 c0 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x1c0],ymm1
  a0c72b:	00 00 
  a0c72d:	62 e1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1e0],zmm16
  a0c734:	e0 01 00 00 
  a0c738:	c5 fc 11 bc 16 20 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x220],ymm7
  a0c73f:	00 00 
  a0c741:	62 f1 7c 48 28 cd    	vmovaps zmm1,zmm5
  a0c747:	62 d2 0d 48 7f cb    	vpermt2ps zmm1,zmm14,zmm11
  a0c74d:	62 d2 5d 40 7f eb    	vpermt2ps zmm5,zmm20,zmm11
  a0c753:	62 f1 7c 48 11 6c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x240],zmm5
  a0c75a:	09 
  a0c75b:	c5 fc 11 8c 16 80 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x280],ymm1
  a0c762:	00 00 
  a0c764:	62 f1 7c 48 28 cc    	vmovaps zmm1,zmm4
  a0c76a:	62 d2 0d 48 7f c9    	vpermt2ps zmm1,zmm14,zmm9
  a0c770:	62 d2 5d 40 7f e1    	vpermt2ps zmm4,zmm20,zmm9
  a0c776:	62 f1 7c 48 11 a4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x2a0],zmm4
  a0c77d:	a0 02 00 00 
  a0c781:	c5 fc 11 8c 16 e0 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x2e0],ymm1
  a0c788:	00 00 
  a0c78a:	62 f1 7c 48 28 cb    	vmovaps zmm1,zmm3
  a0c790:	62 f2 0d 48 7f ce    	vpermt2ps zmm1,zmm14,zmm6
  a0c796:	62 f2 5d 40 7f de    	vpermt2ps zmm3,zmm20,zmm6
  a0c79c:	62 f1 7c 48 11 5c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x300],zmm3
  a0c7a3:	0c 
  a0c7a4:	62 d1 7c 48 28 d0    	vmovaps zmm2,zmm8
  a0c7aa:	62 f2 0d 48 7f d0    	vpermt2ps zmm2,zmm14,zmm0
  a0c7b0:	62 72 5d 40 7f c0    	vpermt2ps zmm8,zmm20,zmm0
  a0c7b6:	c5 fc 11 8c 16 40 03 	vmovups YMMWORD PTR [rsi+rdx*1+0x340],ymm1
  a0c7bd:	00 00 
  a0c7bf:	62 71 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x360],zmm8
  a0c7c6:	60 03 00 00 
  a0c7ca:	c5 fc 11 94 16 a0 03 	vmovups YMMWORD PTR [rsi+rdx*1+0x3a0],ymm2
  a0c7d1:	00 00 
  a0c7d3:	48 81 c2 c0 03 00 00 	add    rdx,0x3c0
  a0c7da:	48 39 d0             	cmp    rax,rdx
  a0c7dd:	0f 85 4d f2 ff ff    	jne    a0ba30 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x30>
  a0c7e3:	48 89 ec             	mov    rsp,rbp
  a0c7e6:	5d                   	pop    rbp
  a0c7e7:	c5 f8 77             	vzeroupper
  a0c7ea:	c3                   	ret
