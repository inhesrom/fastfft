
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a6ba00 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a6ba00:	55                   	push   rbp
  a6ba01:	48 89 e5             	mov    rbp,rsp
  a6ba04:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a6ba08:	48 81 ec c0 03 00 00 	sub    rsp,0x3c0
  a6ba0f:	48 c1 e2 08          	shl    rdx,0x8
  a6ba13:	48 8d 04 92          	lea    rax,[rdx+rdx*4]
  a6ba17:	31 d2                	xor    edx,edx
  a6ba19:	4c 8d 84 24 40 03 00 	lea    r8,[rsp+0x340]
  a6ba20:	00 
  a6ba21:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  a6ba26:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  a6ba2d:	00 00 00 
  a6ba30:	c6 84 24 40 03 00 00 	mov    BYTE PTR [rsp+0x340],0x0
  a6ba37:	00 
  a6ba38:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  a6ba3d:	62 f1 7c 48 10 0c 17 	vmovups zmm1,ZMMWORD PTR [rdi+rdx*1]
  a6ba44:	c5 f8 10 44 17 40    	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x40]
  a6ba4a:	62 e1 7c 48 28 f9    	vmovaps zmm23,zmm1
  a6ba50:	62 f1 7c 48 28 25 26 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff628a26]        # 94480 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21930>
  a6ba57:	8a 62 ff 
  a6ba5a:	62 f2 5d 48 7f c8    	vpermt2ps zmm1,zmm4,zmm0
  a6ba60:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm1
  a6ba67:	01 
  a6ba68:	62 e1 7c 48 10 9c 17 	vmovups zmm19,ZMMWORD PTR [rdi+rdx*1+0x50]
  a6ba6f:	50 00 00 00 
  a6ba73:	c5 f8 10 8c 17 90 00 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x90]
  a6ba7a:	00 00 
  a6ba7c:	62 b1 7c 48 28 fb    	vmovaps zmm7,zmm19
  a6ba82:	62 e2 5d 48 7f d9    	vpermt2ps zmm19,zmm4,zmm1
  a6ba88:	62 61 7c 48 10 8c 17 	vmovups zmm25,ZMMWORD PTR [rdi+rdx*1+0xa0]
  a6ba8f:	a0 00 00 00 
  a6ba93:	c5 f8 10 94 17 e0 00 	vmovups xmm2,XMMWORD PTR [rdi+rdx*1+0xe0]
  a6ba9a:	00 00 
  a6ba9c:	62 81 7c 48 28 e9    	vmovaps zmm21,zmm25
  a6baa2:	62 62 5d 48 7f ca    	vpermt2ps zmm25,zmm4,zmm2
  a6baa8:	62 e1 7c 48 10 b4 17 	vmovups zmm22,ZMMWORD PTR [rdi+rdx*1+0xf0]
  a6baaf:	f0 00 00 00 
  a6bab3:	c5 f8 10 9c 17 30 01 	vmovups xmm3,XMMWORD PTR [rdi+rdx*1+0x130]
  a6baba:	00 00 
  a6babc:	62 31 7c 48 28 ce    	vmovaps zmm9,zmm22
  a6bac2:	62 e2 5d 48 7f f3    	vpermt2ps zmm22,zmm4,zmm3
  a6bac8:	62 61 7c 48 10 7c 17 	vmovups zmm31,ZMMWORD PTR [rdi+rdx*1+0x140]
  a6bacf:	05 
  a6bad0:	c5 f8 10 ac 17 80 01 	vmovups xmm5,XMMWORD PTR [rdi+rdx*1+0x180]
  a6bad7:	00 00 
  a6bad9:	62 91 7c 48 28 f7    	vmovaps zmm6,zmm31
  a6badf:	62 e1 7c 48 28 15 57 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff628957]        # 94440 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x218f0>
  a6bae6:	89 62 ff 
  a6bae9:	62 e2 6d 40 7f f8    	vpermt2ps zmm23,zmm18,zmm0
  a6baef:	62 62 5d 48 7f fd    	vpermt2ps zmm31,zmm4,zmm5
  a6baf5:	62 61 7c 48 10 ac 17 	vmovups zmm29,ZMMWORD PTR [rdi+rdx*1+0x190]
  a6bafc:	90 01 00 00 
  a6bb00:	c5 f8 10 84 17 d0 01 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x1d0]
  a6bb07:	00 00 
  a6bb09:	62 f2 6d 40 7f f9    	vpermt2ps zmm7,zmm18,zmm1
  a6bb0f:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm7
  a6bb16:	02 
  a6bb17:	62 01 7c 48 28 dd    	vmovaps zmm27,zmm29
  a6bb1d:	62 62 5d 48 7f e8    	vpermt2ps zmm29,zmm4,zmm0
  a6bb23:	62 71 7c 48 10 84 17 	vmovups zmm8,ZMMWORD PTR [rdi+rdx*1+0x1e0]
  a6bb2a:	e0 01 00 00 
  a6bb2e:	62 e2 6d 40 7f ea    	vpermt2ps zmm21,zmm18,zmm2
  a6bb34:	c5 f8 10 8c 17 20 02 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x220]
  a6bb3b:	00 00 
  a6bb3d:	62 51 7c 48 28 d8    	vmovaps zmm11,zmm8
  a6bb43:	62 72 5d 48 7f c1    	vpermt2ps zmm8,zmm4,zmm1
  a6bb49:	62 72 6d 40 7f cb    	vpermt2ps zmm9,zmm18,zmm3
  a6bb4f:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm9
  a6bb56:	08 
  a6bb57:	62 61 7c 48 10 b4 17 	vmovups zmm30,ZMMWORD PTR [rdi+rdx*1+0x230]
  a6bb5e:	30 02 00 00 
  a6bb62:	c5 f8 10 94 17 70 02 	vmovups xmm2,XMMWORD PTR [rdi+rdx*1+0x270]
  a6bb69:	00 00 
  a6bb6b:	62 01 7c 48 28 e6    	vmovaps zmm28,zmm30
  a6bb71:	62 f2 6d 40 7f f5    	vpermt2ps zmm6,zmm18,zmm5
  a6bb77:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm6
  a6bb7e:	03 
  a6bb7f:	62 62 5d 48 7f f2    	vpermt2ps zmm30,zmm4,zmm2
  a6bb85:	62 e1 7c 48 10 4c 17 	vmovups zmm17,ZMMWORD PTR [rdi+rdx*1+0x280]
  a6bb8c:	0a 
  a6bb8d:	c5 f8 10 b4 17 c0 02 	vmovups xmm6,XMMWORD PTR [rdi+rdx*1+0x2c0]
  a6bb94:	00 00 
  a6bb96:	62 62 6d 40 7f d8    	vpermt2ps zmm27,zmm18,zmm0
  a6bb9c:	62 21 7c 48 28 d1    	vmovaps zmm26,zmm17
  a6bba2:	62 e2 5d 48 7f ce    	vpermt2ps zmm17,zmm4,zmm6
  a6bba8:	62 71 7c 48 10 8c 17 	vmovups zmm9,ZMMWORD PTR [rdi+rdx*1+0x2d0]
  a6bbaf:	d0 02 00 00 
  a6bbb3:	62 72 6d 40 7f d9    	vpermt2ps zmm11,zmm18,zmm1
  a6bbb9:	c5 f8 10 84 17 10 03 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x310]
  a6bbc0:	00 00 
  a6bbc2:	62 51 7c 48 28 e1    	vmovaps zmm12,zmm9
  a6bbc8:	62 72 5d 48 7f c8    	vpermt2ps zmm9,zmm4,zmm0
  a6bbce:	62 62 6d 40 7f e2    	vpermt2ps zmm28,zmm18,zmm2
  a6bbd4:	62 f1 7c 48 10 ac 17 	vmovups zmm5,ZMMWORD PTR [rdi+rdx*1+0x320]
  a6bbdb:	20 03 00 00 
  a6bbdf:	c5 f8 10 8c 17 60 03 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x360]
  a6bbe6:	00 00 
  a6bbe8:	62 71 7c 48 28 fd    	vmovaps zmm15,zmm5
  a6bbee:	62 62 6d 40 7f d6    	vpermt2ps zmm26,zmm18,zmm6
  a6bbf4:	62 f2 5d 48 7f e9    	vpermt2ps zmm5,zmm4,zmm1
  a6bbfa:	62 71 7c 48 10 94 17 	vmovups zmm10,ZMMWORD PTR [rdi+rdx*1+0x370]
  a6bc01:	70 03 00 00 
  a6bc05:	c5 f8 10 94 17 b0 03 	vmovups xmm2,XMMWORD PTR [rdi+rdx*1+0x3b0]
  a6bc0c:	00 00 
  a6bc0e:	62 72 6d 40 7f e0    	vpermt2ps zmm12,zmm18,zmm0
  a6bc14:	62 51 7c 48 28 f2    	vmovaps zmm14,zmm10
  a6bc1a:	62 72 5d 48 7f d2    	vpermt2ps zmm10,zmm4,zmm2
  a6bc20:	62 f1 7c 48 10 74 17 	vmovups zmm6,ZMMWORD PTR [rdi+rdx*1+0x3c0]
  a6bc27:	0f 
  a6bc28:	62 72 6d 40 7f f9    	vpermt2ps zmm15,zmm18,zmm1
  a6bc2e:	c5 f8 10 84 17 00 04 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x400]
  a6bc35:	00 00 
  a6bc37:	62 71 7c 48 28 ee    	vmovaps zmm13,zmm6
  a6bc3d:	62 f2 5d 48 7f f0    	vpermt2ps zmm6,zmm4,zmm0
  a6bc43:	62 72 6d 40 7f f2    	vpermt2ps zmm14,zmm18,zmm2
  a6bc49:	62 e1 7c 48 10 84 17 	vmovups zmm16,ZMMWORD PTR [rdi+rdx*1+0x410]
  a6bc50:	10 04 00 00 
  a6bc54:	c5 f8 10 94 17 50 04 	vmovups xmm2,XMMWORD PTR [rdi+rdx*1+0x450]
  a6bc5b:	00 00 
  a6bc5d:	62 b1 7c 48 28 f8    	vmovaps zmm7,zmm16
  a6bc63:	62 72 6d 40 7f e8    	vpermt2ps zmm13,zmm18,zmm0
  a6bc69:	62 e2 5d 48 7f c2    	vpermt2ps zmm16,zmm4,zmm2
  a6bc6f:	62 61 7c 48 10 84 17 	vmovups zmm24,ZMMWORD PTR [rdi+rdx*1+0x460]
  a6bc76:	60 04 00 00 
  a6bc7a:	c5 f8 10 8c 17 a0 04 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x4a0]
  a6bc81:	00 00 
  a6bc83:	62 f2 6d 40 7f fa    	vpermt2ps zmm7,zmm18,zmm2
  a6bc89:	62 91 7c 48 28 d0    	vmovaps zmm2,zmm24
  a6bc8f:	62 62 5d 48 7f c1    	vpermt2ps zmm24,zmm4,zmm1
  a6bc95:	62 f1 7c 48 10 9c 17 	vmovups zmm3,ZMMWORD PTR [rdi+rdx*1+0x4b0]
  a6bc9c:	b0 04 00 00 
  a6bca0:	62 f2 6d 40 7f d1    	vpermt2ps zmm2,zmm18,zmm1
  a6bca6:	c5 f8 10 84 17 f0 04 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x4f0]
  a6bcad:	00 00 
  a6bcaf:	62 f1 7c 48 28 cb    	vmovaps zmm1,zmm3
  a6bcb5:	62 f2 5d 48 7f d8    	vpermt2ps zmm3,zmm4,zmm0
  a6bcbb:	62 f2 6d 40 7f c8    	vpermt2ps zmm1,zmm18,zmm0
  a6bcc1:	62 f1 04 40 58 c6    	vaddps zmm0,zmm31,zmm6
  a6bcc7:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm0
  a6bcce:	07 
  a6bccf:	62 f1 04 40 5c c6    	vsubps zmm0,zmm31,zmm6
  a6bcd5:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm0
  a6bcdc:	06 
  a6bcdd:	62 81 44 40 58 e2    	vaddps zmm20,zmm23,zmm26
  a6bce3:	62 91 44 40 5c c2    	vsubps zmm0,zmm23,zmm26
  a6bce9:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm0
  a6bcf0:	05 
  a6bcf1:	62 61 34 40 58 d5    	vaddps zmm26,zmm25,zmm5
  a6bcf7:	62 f1 34 40 5c e5    	vsubps zmm4,zmm25,zmm5
  a6bcfd:	62 41 54 40 58 ff    	vaddps zmm31,zmm21,zmm15
  a6bd03:	62 d1 54 40 5c f7    	vsubps zmm6,zmm21,zmm15
  a6bd09:	62 11 3c 48 58 f8    	vaddps zmm15,zmm8,zmm24
  a6bd0f:	62 91 3c 48 5c e8    	vsubps zmm5,zmm8,zmm24
  a6bd15:	62 e1 24 48 58 ea    	vaddps zmm21,zmm11,zmm2
  a6bd1b:	62 f1 24 48 5c c2    	vsubps zmm0,zmm11,zmm2
  a6bd21:	62 a1 14 40 58 d0    	vaddps zmm18,zmm29,zmm16
  a6bd27:	62 b1 14 40 5c d0    	vsubps zmm2,zmm29,zmm16
  a6bd2d:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm2
  a6bd34:	04 
  a6bd35:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x80]
  a6bd3c:	02 
  a6bd3d:	62 41 6c 48 58 ec    	vaddps zmm29,zmm2,zmm12
  a6bd43:	62 c1 6c 48 5c fc    	vsubps zmm23,zmm2,zmm12
  a6bd49:	62 51 64 40 58 d9    	vaddps zmm11,zmm19,zmm9
  a6bd4f:	62 41 64 40 5c c1    	vsubps zmm24,zmm19,zmm9
  a6bd55:	62 e1 24 40 58 df    	vaddps zmm19,zmm27,zmm7
  a6bd5b:	62 81 44 48 5c c3    	vsubps zmm16,zmm7,zmm27
  a6bd61:	62 71 0c 40 58 cb    	vaddps zmm9,zmm30,zmm3
  a6bd67:	62 61 0c 40 5c db    	vsubps zmm27,zmm30,zmm3
  a6bd6d:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x200]
  a6bd74:	08 
  a6bd75:	62 51 6c 48 58 c6    	vaddps zmm8,zmm2,zmm14
  a6bd7b:	62 41 6c 48 5c f6    	vsubps zmm30,zmm2,zmm14
  a6bd81:	62 d1 4c 40 58 da    	vaddps zmm3,zmm22,zmm10
  a6bd87:	62 41 4c 40 5c ca    	vsubps zmm25,zmm22,zmm10
  a6bd8d:	62 f1 1c 40 58 d1    	vaddps zmm2,zmm28,zmm1
  a6bd93:	62 11 74 48 5c d4    	vsubps zmm10,zmm1,zmm28
  a6bd99:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x40]
  a6bda0:	01 
  a6bda1:	62 b1 44 48 58 c9    	vaddps zmm1,zmm7,zmm17
  a6bda7:	62 31 44 48 5c e1    	vsubps zmm12,zmm7,zmm17
  a6bdad:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0xc0]
  a6bdb4:	03 
  a6bdb5:	62 41 44 48 58 e5    	vaddps zmm28,zmm7,zmm13
  a6bdbb:	62 71 14 48 5c f7    	vsubps zmm14,zmm13,zmm7
  a6bdc1:	62 f1 4c 48 58 fc    	vaddps zmm7,zmm6,zmm4
  a6bdc7:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm7
  a6bdce:	01 
  a6bdcf:	62 f1 5c 48 5c e6    	vsubps zmm4,zmm4,zmm6
  a6bdd5:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm4
  a6bddc:	02 
  a6bddd:	62 f1 54 48 5c e0    	vsubps zmm4,zmm5,zmm0
  a6bde3:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm4
  a6bdea:	03 
  a6bdeb:	62 71 7c 48 58 ed    	vaddps zmm13,zmm0,zmm5
  a6bdf1:	62 d1 2c 40 58 e7    	vaddps zmm4,zmm26,zmm15
  a6bdf7:	62 d1 2c 40 5c f7    	vsubps zmm6,zmm26,zmm15
  a6bdfd:	62 81 5c 40 58 f4    	vaddps zmm22,zmm20,zmm28
  a6be03:	62 91 5c 40 5c c4    	vsubps zmm0,zmm20,zmm28
  a6be09:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm0
  a6be10:	08 
  a6be11:	62 21 24 48 58 e2    	vaddps zmm28,zmm11,zmm18
  a6be17:	62 b1 24 48 5c fa    	vsubps zmm7,zmm11,zmm18
  a6be1d:	62 21 14 40 58 d3    	vaddps zmm26,zmm29,zmm19
  a6be23:	62 31 14 40 5c fb    	vsubps zmm15,zmm29,zmm19
  a6be29:	62 c1 64 48 58 c9    	vaddps zmm17,zmm3,zmm9
  a6be2f:	62 51 64 48 5c c9    	vsubps zmm9,zmm3,zmm9
  a6be35:	62 f1 3c 48 58 ea    	vaddps zmm5,zmm8,zmm2
  a6be3b:	62 f1 3c 48 5c d2    	vsubps zmm2,zmm8,zmm2
  a6be41:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x1c0]
  a6be48:	07 
  a6be49:	62 f1 74 48 58 d8    	vaddps zmm3,zmm1,zmm0
  a6be4f:	62 f1 74 48 5c c0    	vsubps zmm0,zmm1,zmm0
  a6be55:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm0
  a6be5c:	07 
  a6be5d:	62 b1 04 40 58 cd    	vaddps zmm1,zmm31,zmm21
  a6be63:	62 01 54 40 5c ef    	vsubps zmm29,zmm21,zmm31
  a6be69:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x180]
  a6be70:	06 
  a6be71:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x140]
  a6be78:	05 
  a6be79:	62 e1 3c 48 58 d8    	vaddps zmm19,zmm8,zmm0
  a6be7f:	62 71 3c 48 5c d8    	vsubps zmm11,zmm8,zmm0
  a6be85:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x100]
  a6be8c:	04 
  a6be8d:	62 61 44 40 58 f8    	vaddps zmm31,zmm23,zmm0
  a6be93:	62 e1 44 40 5c f8    	vsubps zmm23,zmm23,zmm0
  a6be99:	62 91 7c 40 58 c0    	vaddps zmm0,zmm16,zmm24
  a6be9f:	62 21 3c 40 5c c0    	vsubps zmm24,zmm24,zmm16
  a6bea5:	62 81 0c 40 58 c3    	vaddps zmm16,zmm30,zmm27
  a6beab:	62 01 0c 40 5c f3    	vsubps zmm30,zmm30,zmm27
  a6beb1:	62 81 2c 48 58 e9    	vaddps zmm21,zmm10,zmm25
  a6beb7:	62 c1 34 40 5c e2    	vsubps zmm20,zmm25,zmm10
  a6bebd:	62 71 04 48 58 c7    	vaddps zmm8,zmm15,zmm7
  a6bec3:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm8
  a6beca:	0b 
  a6becb:	62 41 44 48 5c df    	vsubps zmm27,zmm7,zmm15
  a6bed1:	62 d1 0c 48 58 fc    	vaddps zmm7,zmm14,zmm12
  a6bed7:	62 51 1c 48 5c c6    	vsubps zmm8,zmm12,zmm14
  a6bedd:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm8
  a6bee4:	06 
  a6bee5:	62 71 34 48 5c e2    	vsubps zmm12,zmm9,zmm2
  a6beeb:	62 51 6c 48 58 f1    	vaddps zmm14,zmm2,zmm9
  a6bef1:	62 31 1c 40 58 d1    	vaddps zmm10,zmm28,zmm17
  a6bef7:	62 b1 1c 40 5c d1    	vsubps zmm2,zmm28,zmm17
  a6befd:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm2
  a6bf04:	04 
  a6bf05:	62 e1 4c 40 58 d1    	vaddps zmm18,zmm22,zmm1
  a6bf0b:	62 f1 4c 40 5c c9    	vsubps zmm1,zmm22,zmm1
  a6bf11:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm1
  a6bf18:	0c 
  a6bf19:	62 f1 64 48 58 cc    	vaddps zmm1,zmm3,zmm4
  a6bf1f:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm1
  a6bf26:	0a 
  a6bf27:	62 f1 64 48 5c cc    	vsubps zmm1,zmm3,zmm4
  a6bf2d:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm1
  a6bf34:	05 
  a6bf35:	62 f1 2c 40 58 e5    	vaddps zmm4,zmm26,zmm5
  a6bf3b:	62 91 54 48 5c ca    	vsubps zmm1,zmm5,zmm26
  a6bf41:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm1
  a6bf48:	09 
  a6bf49:	62 f2 7d 48 18 1d 11 	vbroadcastss zmm3,DWORD PTR [rip+0xffffffffff609711]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a6bf50:	97 60 ff 
  a6bf53:	62 71 7c 48 59 c3    	vmulps zmm8,zmm0,zmm3
  a6bf59:	62 f2 7d 48 18 2d 9d 	vbroadcastss zmm5,DWORD PTR [rip+0xffffffffff60979d]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a6bf60:	97 60 ff 
  a6bf63:	62 72 05 40 b8 c5    	vfmadd231ps zmm8,zmm31,zmm5
  a6bf69:	62 f1 7c 48 59 cd    	vmulps zmm1,zmm0,zmm5
  a6bf6f:	62 92 65 48 bc cf    	vfnmadd231ps zmm1,zmm3,zmm31
  a6bf75:	62 61 54 40 59 d5    	vmulps zmm26,zmm21,zmm5
  a6bf7b:	62 62 7d 40 b8 d3    	vfmadd231ps zmm26,zmm16,zmm3
  a6bf81:	62 e1 54 40 59 eb    	vmulps zmm21,zmm21,zmm3
  a6bf87:	62 a2 55 48 bc e8    	vfnmadd231ps zmm21,zmm5,zmm16
  a6bf8d:	62 f2 7d 48 18 15 05 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff609405]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a6bf94:	94 60 ff 
  a6bf97:	62 e1 6c 48 59 44 24 	vmulps zmm16,zmm2,ZMMWORD PTR [rsp+0x80]
  a6bf9e:	02 
  a6bf9f:	62 71 14 48 59 ea    	vmulps zmm13,zmm13,zmm2
  a6bfa5:	62 41 7c 40 5c e5    	vsubps zmm28,zmm16,zmm13
  a6bfab:	62 51 7c 40 58 ed    	vaddps zmm13,zmm16,zmm13
  a6bfb1:	62 e1 6c 48 59 44 24 	vmulps zmm16,zmm2,ZMMWORD PTR [rsp+0x40]
  a6bfb8:	01 
  a6bfb9:	62 61 6c 48 59 7c 24 	vmulps zmm31,zmm2,ZMMWORD PTR [rsp+0xc0]
  a6bfc0:	03 
  a6bfc1:	62 91 7c 40 58 c7    	vaddps zmm0,zmm16,zmm31
  a6bfc7:	62 a1 04 40 5c c0    	vsubps zmm16,zmm31,zmm16
  a6bfcd:	62 61 3c 40 59 fd    	vmulps zmm31,zmm24,zmm5
  a6bfd3:	62 62 45 40 b8 fb    	vfmadd231ps zmm31,zmm23,zmm3
  a6bfd9:	62 61 3c 40 59 c3    	vmulps zmm24,zmm24,zmm3
  a6bfdf:	62 22 55 48 bc c7    	vfnmadd231ps zmm24,zmm5,zmm23
  a6bfe5:	62 e1 5c 40 59 fb    	vmulps zmm23,zmm20,zmm3
  a6bfeb:	62 e2 0d 40 b8 fd    	vfmadd231ps zmm23,zmm30,zmm5
  a6bff1:	62 61 0c 40 59 f3    	vmulps zmm30,zmm30,zmm3
  a6bff7:	62 22 55 48 bc f4    	vfnmadd231ps zmm30,zmm5,zmm20
  a6bffd:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x200]
  a6c004:	08 
  a6c005:	62 e1 64 48 58 e6    	vaddps zmm20,zmm3,zmm6
  a6c00b:	62 e1 64 48 5c f6    	vsubps zmm22,zmm3,zmm6
  a6c011:	62 61 64 40 58 c8    	vaddps zmm25,zmm19,zmm0
  a6c017:	62 f1 64 40 5c c0    	vsubps zmm0,zmm19,zmm0
  a6c01d:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a6c024:	01 
  a6c025:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x1c0]
  a6c02c:	07 
  a6c02d:	62 71 14 40 58 f8    	vaddps zmm15,zmm29,zmm0
  a6c033:	62 01 7c 48 5c ed    	vsubps zmm29,zmm0,zmm29
  a6c039:	62 91 44 48 58 f4    	vaddps zmm6,zmm7,zmm28
  a6c03f:	62 01 44 48 5c e4    	vsubps zmm28,zmm7,zmm28
  a6c045:	62 f1 24 40 59 fa    	vmulps zmm7,zmm27,zmm2
  a6c04b:	62 71 0c 48 59 f2    	vmulps zmm14,zmm14,zmm2
  a6c051:	62 41 44 48 5c de    	vsubps zmm27,zmm7,zmm14
  a6c057:	62 c1 44 48 58 de    	vaddps zmm19,zmm7,zmm14
  a6c05d:	62 f1 6c 48 59 7c 24 	vmulps zmm7,zmm2,ZMMWORD PTR [rsp+0x2c0]
  a6c064:	0b 
  a6c065:	62 71 1c 48 59 e2    	vmulps zmm12,zmm12,zmm2
  a6c06b:	62 d1 44 48 58 d4    	vaddps zmm2,zmm7,zmm12
  a6c071:	62 e1 1c 48 5c cf    	vsubps zmm17,zmm12,zmm7
  a6c077:	62 d1 24 48 58 dd    	vaddps zmm3,zmm11,zmm13
  a6c07d:	62 51 24 48 5c ed    	vsubps zmm13,zmm11,zmm13
  a6c083:	62 31 74 48 58 e5    	vaddps zmm12,zmm1,zmm21
  a6c089:	62 31 74 48 5c cd    	vsubps zmm9,zmm1,zmm21
  a6c08f:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x180]
  a6c096:	06 
  a6c097:	62 a1 7c 48 58 e8    	vaddps zmm21,zmm0,zmm16
  a6c09d:	62 a1 7c 48 5c c0    	vsubps zmm16,zmm0,zmm16
  a6c0a3:	62 91 3c 48 58 c2    	vaddps zmm0,zmm8,zmm26
  a6c0a9:	62 d1 2c 40 5c e8    	vsubps zmm5,zmm26,zmm8
  a6c0af:	62 71 6c 40 58 f4    	vaddps zmm14,zmm18,zmm4
  a6c0b5:	62 71 6c 40 5c dc    	vsubps zmm11,zmm18,zmm4
  a6c0bb:	62 91 3c 40 58 ce    	vaddps zmm1,zmm24,zmm30
  a6c0c1:	62 91 3c 40 5c e6    	vsubps zmm4,zmm24,zmm30
  a6c0c7:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x280]
  a6c0ce:	0a 
  a6c0cf:	62 41 44 48 58 f2    	vaddps zmm30,zmm7,zmm10
  a6c0d5:	62 d1 44 48 5c fa    	vsubps zmm7,zmm7,zmm10
  a6c0db:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm7
  a6c0e2:	06 
  a6c0e3:	62 21 04 40 5c d7    	vsubps zmm26,zmm31,zmm23
  a6c0e9:	62 a1 04 40 58 ff    	vaddps zmm23,zmm31,zmm23
  a6c0ef:	62 e1 5c 40 58 d2    	vaddps zmm18,zmm20,zmm2
  a6c0f5:	62 71 5c 40 5c d2    	vsubps zmm10,zmm20,zmm2
  a6c0fb:	62 e1 34 40 58 e0    	vaddps zmm20,zmm25,zmm0
  a6c101:	62 f1 34 40 5c f8    	vsubps zmm7,zmm25,zmm0
  a6c107:	62 01 04 48 58 cb    	vaddps zmm25,zmm15,zmm27
  a6c10d:	62 91 04 48 5c c3    	vsubps zmm0,zmm15,zmm27
  a6c113:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm0
  a6c11a:	02 
  a6c11b:	62 41 4c 48 58 c4    	vaddps zmm24,zmm6,zmm12
  a6c121:	62 51 4c 48 5c e4    	vsubps zmm12,zmm6,zmm12
  a6c127:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x100]
  a6c12e:	04 
  a6c12f:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x300]
  a6c136:	0c 
  a6c137:	62 f1 4c 48 58 c2    	vaddps zmm0,zmm6,zmm2
  a6c13d:	62 61 4c 48 5c da    	vsubps zmm27,zmm6,zmm2
  a6c143:	62 11 64 48 58 fa    	vaddps zmm15,zmm3,zmm26
  a6c149:	62 91 64 48 5c da    	vsubps zmm3,zmm3,zmm26
  a6c14f:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x140]
  a6c156:	05 
  a6c157:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x240]
  a6c15e:	09 
  a6c15f:	62 f1 3c 48 58 d6    	vaddps zmm2,zmm8,zmm6
  a6c165:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm2
  a6c16c:	03 
  a6c16d:	62 d1 4c 48 5c d0    	vsubps zmm2,zmm6,zmm8
  a6c173:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm2
  a6c17a:	08 
  a6c17b:	62 61 54 40 58 d1    	vaddps zmm26,zmm21,zmm1
  a6c181:	62 f1 54 40 5c c9    	vsubps zmm1,zmm21,zmm1
  a6c187:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm1
  a6c18e:	04 
  a6c18f:	62 b1 4c 40 58 d3    	vaddps zmm2,zmm22,zmm19
  a6c195:	62 b1 4c 40 5c cb    	vsubps zmm1,zmm22,zmm19
  a6c19b:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x40]
  a6c1a2:	01 
  a6c1a3:	62 c1 4c 48 58 e9    	vaddps zmm21,zmm6,zmm9
  a6c1a9:	62 c1 4c 48 5c f1    	vsubps zmm22,zmm6,zmm9
  a6c1af:	62 21 14 40 58 f9    	vaddps zmm31,zmm29,zmm17
  a6c1b5:	62 b1 14 40 5c f1    	vsubps zmm6,zmm29,zmm17
  a6c1bb:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm6
  a6c1c2:	05 
  a6c1c3:	62 61 1c 40 58 ed    	vaddps zmm29,zmm28,zmm5
  a6c1c9:	62 e1 1c 40 5c cd    	vsubps zmm17,zmm28,zmm5
  a6c1cf:	62 f1 14 48 58 f4    	vaddps zmm6,zmm13,zmm4
  a6c1d5:	62 71 14 48 5c c4    	vsubps zmm8,zmm13,zmm4
  a6c1db:	62 21 7c 40 5c e7    	vsubps zmm28,zmm16,zmm23
  a6c1e1:	62 b1 7c 40 58 e7    	vaddps zmm4,zmm16,zmm23
  a6c1e7:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm4
  a6c1ee:	07 
  a6c1ef:	62 d1 7c 48 28 ee    	vmovaps zmm5,zmm14
  a6c1f5:	62 e1 7c 48 28 3d 81 	vmovaps zmm23,ZMMWORD PTR [rip+0xffffffffff65ad81]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a6c1fc:	ad 65 ff 
  a6c1ff:	62 d2 45 40 7f eb    	vpermt2ps zmm5,zmm23,zmm11
  a6c205:	62 e1 7c 48 28 05 b1 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff65adb1]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a6c20c:	ad 65 ff 
  a6c20f:	62 52 7d 40 7f f3    	vpermt2ps zmm14,zmm16,zmm11
  a6c215:	62 31 7c 48 28 ec    	vmovaps zmm13,zmm20
  a6c21b:	62 72 45 40 7f ef    	vpermt2ps zmm13,zmm23,zmm7
  a6c221:	62 e2 7d 40 7f e7    	vpermt2ps zmm20,zmm16,zmm7
  a6c227:	62 b1 7c 48 28 fa    	vmovaps zmm7,zmm18
  a6c22d:	62 d2 45 40 7f fa    	vpermt2ps zmm7,zmm23,zmm10
  a6c233:	62 c2 7d 40 7f d2    	vpermt2ps zmm18,zmm16,zmm10
  a6c239:	62 d1 7c 48 28 e7    	vmovaps zmm4,zmm15
  a6c23f:	62 72 7d 40 7f fb    	vpermt2ps zmm15,zmm16,zmm3
  a6c245:	62 f2 45 40 7f e3    	vpermt2ps zmm4,zmm23,zmm3
  a6c24b:	62 f1 7c 48 28 d8    	vmovaps zmm3,zmm0
  a6c251:	62 92 45 40 7f db    	vpermt2ps zmm3,zmm23,zmm27
  a6c257:	62 92 7d 40 7f c3    	vpermt2ps zmm0,zmm16,zmm27
  a6c25d:	62 31 7c 48 28 d5    	vmovaps zmm10,zmm21
  a6c263:	62 32 45 40 7f d6    	vpermt2ps zmm10,zmm23,zmm22
  a6c269:	62 a2 7d 40 7f ee    	vpermt2ps zmm21,zmm16,zmm22
  a6c26f:	62 71 7c 48 28 da    	vmovaps zmm11,zmm2
  a6c275:	62 72 45 40 7f d9    	vpermt2ps zmm11,zmm23,zmm1
  a6c27b:	62 f2 7d 40 7f d1    	vpermt2ps zmm2,zmm16,zmm1
  a6c281:	62 f1 7c 48 28 ce    	vmovaps zmm1,zmm6
  a6c287:	62 d2 7d 40 7f f0    	vpermt2ps zmm6,zmm16,zmm8
  a6c28d:	62 d2 45 40 7f c8    	vpermt2ps zmm1,zmm23,zmm8
  a6c293:	62 71 7c 48 28 c5    	vmovaps zmm8,zmm5
  a6c299:	62 71 7c 48 28 0d 5d 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff65ac5d]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a6c2a0:	ac 65 ff 
  a6c2a3:	62 72 35 48 7f c3    	vpermt2ps zmm8,zmm9,zmm3
  a6c2a9:	62 e1 7c 48 28 1d 8d 	vmovaps zmm19,ZMMWORD PTR [rip+0xffffffffff65ac8d]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a6c2b0:	ac 65 ff 
  a6c2b3:	62 f2 65 40 7f eb    	vpermt2ps zmm5,zmm19,zmm3
  a6c2b9:	62 f1 7c 48 28 df    	vmovaps zmm3,zmm7
  a6c2bf:	62 d2 35 48 7f db    	vpermt2ps zmm3,zmm9,zmm11
  a6c2c5:	62 d2 65 40 7f fb    	vpermt2ps zmm7,zmm19,zmm11
  a6c2cb:	62 72 35 48 7f f0    	vpermt2ps zmm14,zmm9,zmm0
  a6c2d1:	62 a2 35 48 7f e5    	vpermt2ps zmm20,zmm9,zmm21
  a6c2d7:	62 e2 35 48 7f d2    	vpermt2ps zmm18,zmm9,zmm2
  a6c2dd:	62 41 7c 48 28 dd    	vmovaps zmm27,zmm13
  a6c2e3:	62 52 65 40 7f ea    	vpermt2ps zmm13,zmm19,zmm10
  a6c2e9:	62 42 35 48 7f da    	vpermt2ps zmm27,zmm9,zmm10
  a6c2ef:	62 31 8d 48 14 f2    	vunpcklpd zmm14,zmm14,zmm18
  a6c2f5:	62 72 35 48 7f fe    	vpermt2ps zmm15,zmm9,zmm6
  a6c2fb:	62 d1 dd 40 14 d7    	vunpcklpd zmm2,zmm20,zmm15
  a6c301:	62 f1 bd 48 14 c3    	vunpcklpd zmm0,zmm8,zmm3
  a6c307:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm0
  a6c30e:	09 
  a6c30f:	62 e1 bd 48 15 e3    	vunpckhpd zmm20,zmm8,zmm3
  a6c315:	62 f1 d5 48 14 c7    	vunpcklpd zmm0,zmm5,zmm7
  a6c31b:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a6c322:	01 
  a6c323:	62 e1 d5 48 15 f7    	vunpckhpd zmm22,zmm5,zmm7
  a6c329:	62 91 7c 48 28 ee    	vmovaps zmm5,zmm30
  a6c32f:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x180]
  a6c336:	06 
  a6c337:	62 f2 45 40 7f e8    	vpermt2ps zmm5,zmm23,zmm0
  a6c33d:	62 62 7d 40 7f f0    	vpermt2ps zmm30,zmm16,zmm0
  a6c343:	62 91 7c 48 28 d8    	vmovaps zmm3,zmm24
  a6c349:	62 d2 45 40 7f dc    	vpermt2ps zmm3,zmm23,zmm12
  a6c34f:	62 42 7d 40 7f c4    	vpermt2ps zmm24,zmm16,zmm12
  a6c355:	62 f1 7c 48 28 fc    	vmovaps zmm7,zmm4
  a6c35b:	62 f2 65 40 7f e1    	vpermt2ps zmm4,zmm19,zmm1
  a6c361:	62 f2 35 48 7f f9    	vpermt2ps zmm7,zmm9,zmm1
  a6c367:	62 91 7c 48 28 c1    	vmovaps zmm0,zmm25
  a6c36d:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x80]
  a6c374:	02 
  a6c375:	62 f2 45 40 7f c1    	vpermt2ps zmm0,zmm23,zmm1
  a6c37b:	62 62 7d 40 7f c9    	vpermt2ps zmm25,zmm16,zmm1
  a6c381:	62 91 7c 48 28 ca    	vmovaps zmm1,zmm26
  a6c387:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x100]
  a6c38e:	04 
  a6c38f:	62 f2 45 40 7f ce    	vpermt2ps zmm1,zmm23,zmm6
  a6c395:	62 62 7d 40 7f d6    	vpermt2ps zmm26,zmm16,zmm6
  a6c39b:	62 71 95 48 14 c4    	vunpcklpd zmm8,zmm13,zmm4
  a6c3a1:	62 e1 95 48 15 d4    	vunpckhpd zmm18,zmm13,zmm4
  a6c3a7:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0xc0]
  a6c3ae:	03 
  a6c3af:	62 71 7c 48 28 d4    	vmovaps zmm10,zmm4
  a6c3b5:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x200]
  a6c3bc:	08 
  a6c3bd:	62 72 45 40 7f d6    	vpermt2ps zmm10,zmm23,zmm6
  a6c3c3:	62 f2 7d 40 7f e6    	vpermt2ps zmm4,zmm16,zmm6
  a6c3c9:	62 71 7c 48 28 ec    	vmovaps zmm13,zmm4
  a6c3cf:	62 11 7c 48 28 dd    	vmovaps zmm11,zmm29
  a6c3d5:	62 32 45 40 7f d9    	vpermt2ps zmm11,zmm23,zmm17
  a6c3db:	62 22 7d 40 7f e9    	vpermt2ps zmm29,zmm16,zmm17
  a6c3e1:	62 11 7c 48 28 e7    	vmovaps zmm12,zmm31
  a6c3e7:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x140]
  a6c3ee:	05 
  a6c3ef:	62 72 45 40 7f e4    	vpermt2ps zmm12,zmm23,zmm4
  a6c3f5:	62 62 7d 40 7f fc    	vpermt2ps zmm31,zmm16,zmm4
  a6c3fb:	62 c1 7c 48 28 ee    	vmovaps zmm21,zmm14
  a6c401:	62 f1 7c 48 28 25 f5 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff65a9f5]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a6c408:	a9 65 ff 
  a6c40b:	62 e2 5d 48 7f ea    	vpermt2ps zmm21,zmm4,zmm2
  a6c411:	62 f1 7c 48 28 35 25 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff65aa25]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a6c418:	aa 65 ff 
  a6c41b:	62 72 4d 48 7f f2    	vpermt2ps zmm14,zmm6,zmm2
  a6c421:	62 71 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm14
  a6c428:	02 
  a6c429:	62 91 7c 48 28 d4    	vmovaps zmm2,zmm28
  a6c42f:	62 71 7c 48 28 74 24 	vmovaps zmm14,ZMMWORD PTR [rsp+0x1c0]
  a6c436:	07 
  a6c437:	62 d2 45 40 7f d6    	vpermt2ps zmm2,zmm23,zmm14
  a6c43d:	62 42 7d 40 7f e6    	vpermt2ps zmm28,zmm16,zmm14
  a6c443:	62 71 7c 48 28 f5    	vmovaps zmm14,zmm5
  a6c449:	62 52 35 48 7f f2    	vpermt2ps zmm14,zmm9,zmm10
  a6c44f:	62 d2 65 40 7f ea    	vpermt2ps zmm5,zmm19,zmm10
  a6c455:	62 71 a5 40 14 d7    	vunpcklpd zmm10,zmm27,zmm7
  a6c45b:	62 f1 a5 40 15 ff    	vunpckhpd zmm7,zmm27,zmm7
  a6c461:	62 71 7c 48 28 fb    	vmovaps zmm15,zmm3
  a6c467:	62 52 35 48 7f fb    	vpermt2ps zmm15,zmm9,zmm11
  a6c46d:	62 d2 65 40 7f db    	vpermt2ps zmm3,zmm19,zmm11
  a6c473:	62 e1 7c 48 28 c8    	vmovaps zmm17,zmm0
  a6c479:	62 c2 35 48 7f cc    	vpermt2ps zmm17,zmm9,zmm12
  a6c47f:	62 d2 65 40 7f c4    	vpermt2ps zmm0,zmm19,zmm12
  a6c485:	62 71 7c 48 28 e1    	vmovaps zmm12,zmm1
  a6c48b:	62 72 35 48 7f e2    	vpermt2ps zmm12,zmm9,zmm2
  a6c491:	62 f2 65 40 7f ca    	vpermt2ps zmm1,zmm19,zmm2
  a6c497:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x40]
  a6c49e:	01 
  a6c49f:	62 71 7c 48 28 da    	vmovaps zmm11,zmm2
  a6c4a5:	62 52 5d 48 7f d8    	vpermt2ps zmm11,zmm4,zmm8
  a6c4ab:	62 d2 4d 48 7f d0    	vpermt2ps zmm2,zmm6,zmm8
  a6c4b1:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm2
  a6c4b8:	01 
  a6c4b9:	62 42 35 48 7f f5    	vpermt2ps zmm30,zmm9,zmm13
  a6c4bf:	62 e1 7c 48 28 44 24 	vmovaps zmm16,ZMMWORD PTR [rsp+0x240]
  a6c4c6:	09 
  a6c4c7:	62 31 7c 48 28 c0    	vmovaps zmm8,zmm16
  a6c4cd:	62 02 35 48 7f c5    	vpermt2ps zmm24,zmm9,zmm29
  a6c4d3:	62 21 7c 48 28 ec    	vmovaps zmm29,zmm20
  a6c4d9:	62 02 35 48 7f cf    	vpermt2ps zmm25,zmm9,zmm31
  a6c4df:	62 31 7c 48 28 ee    	vmovaps zmm13,zmm22
  a6c4e5:	62 32 5d 48 7f ea    	vpermt2ps zmm13,zmm4,zmm18
  a6c4eb:	62 a2 4d 48 7f f2    	vpermt2ps zmm22,zmm6,zmm18
  a6c4f1:	62 01 8d 40 14 d9    	vunpcklpd zmm27,zmm30,zmm25
  a6c4f7:	62 02 35 48 7f d4    	vpermt2ps zmm26,zmm9,zmm28
  a6c4fd:	62 91 bd 40 14 d2    	vunpcklpd zmm2,zmm24,zmm26
  a6c503:	62 52 5d 48 7f c2    	vpermt2ps zmm8,zmm4,zmm10
  a6c509:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm8
  a6c510:	03 
  a6c511:	62 21 8d 48 14 c9    	vunpcklpd zmm25,zmm14,zmm17
  a6c517:	62 21 8d 48 15 d1    	vunpckhpd zmm26,zmm14,zmm17
  a6c51d:	62 51 85 48 14 c4    	vunpcklpd zmm8,zmm15,zmm12
  a6c523:	62 c2 4d 48 7f c2    	vpermt2ps zmm16,zmm6,zmm10
  a6c529:	62 a1 7c 48 28 d0    	vmovaps zmm18,zmm16
  a6c52f:	62 51 85 48 15 e4    	vunpckhpd zmm12,zmm15,zmm12
  a6c535:	62 61 d5 48 14 c0    	vunpcklpd zmm24,zmm5,zmm0
  a6c53b:	62 71 d5 48 15 d0    	vunpckhpd zmm10,zmm5,zmm0
  a6c541:	62 62 5d 48 7f ef    	vpermt2ps zmm29,zmm4,zmm7
  a6c547:	62 f1 e5 48 14 c1    	vunpcklpd zmm0,zmm3,zmm1
  a6c54d:	62 f1 e5 48 15 c9    	vunpckhpd zmm1,zmm3,zmm1
  a6c553:	62 81 7c 48 28 d9    	vmovaps zmm19,zmm25
  a6c559:	62 e2 4d 48 7f e7    	vpermt2ps zmm20,zmm6,zmm7
  a6c55f:	62 11 7c 48 28 ca    	vmovaps zmm9,zmm26
  a6c565:	62 91 7c 48 28 f8    	vmovaps zmm7,zmm24
  a6c56b:	62 f2 5d 48 7f f8    	vpermt2ps zmm7,zmm4,zmm0
  a6c571:	62 c2 5d 48 7f d8    	vpermt2ps zmm19,zmm4,zmm8
  a6c577:	62 62 4d 48 7f c0    	vpermt2ps zmm24,zmm6,zmm0
  a6c57d:	62 d1 7c 48 28 c2    	vmovaps zmm0,zmm10
  a6c583:	62 f2 5d 48 7f c1    	vpermt2ps zmm0,zmm4,zmm1
  a6c589:	62 42 4d 48 7f c8    	vpermt2ps zmm25,zmm6,zmm8
  a6c58f:	62 72 4d 48 7f d1    	vpermt2ps zmm10,zmm6,zmm1
  a6c595:	62 91 7c 48 28 cb    	vmovaps zmm1,zmm27
  a6c59b:	62 f2 5d 48 7f ca    	vpermt2ps zmm1,zmm4,zmm2
  a6c5a1:	62 52 5d 48 7f cc    	vpermt2ps zmm9,zmm4,zmm12
  a6c5a7:	62 62 4d 48 7f da    	vpermt2ps zmm27,zmm6,zmm2
  a6c5ad:	62 61 7c 48 10 61 02 	vmovups zmm28,ZMMWORD PTR [rcx+0x80]
  a6c5b4:	62 f1 7c 48 10 51 04 	vmovups zmm2,ZMMWORD PTR [rcx+0x100]
  a6c5bb:	62 42 4d 48 7f d4    	vpermt2ps zmm26,zmm6,zmm12
  a6c5c1:	62 f1 7c 48 10 69 05 	vmovups zmm5,ZMMWORD PTR [rcx+0x140]
  a6c5c8:	62 71 7c 48 10 61 09 	vmovups zmm12,ZMMWORD PTR [rcx+0x240]
  a6c5cf:	62 71 7c 48 10 41 08 	vmovups zmm8,ZMMWORD PTR [rcx+0x200]
  a6c5d6:	62 c1 24 48 59 c0    	vmulps zmm16,zmm11,zmm8
  a6c5dc:	62 c2 45 48 bc c4    	vfnmadd231ps zmm16,zmm7,zmm12
  a6c5e2:	62 51 44 48 59 c0    	vmulps zmm8,zmm7,zmm8
  a6c5e8:	62 f1 7c 48 10 79 0d 	vmovups zmm7,ZMMWORD PTR [rcx+0x340]
  a6c5ef:	62 52 1d 48 b8 c3    	vfmadd231ps zmm8,zmm12,zmm11
  a6c5f5:	62 71 7c 48 10 59 0c 	vmovups zmm11,ZMMWORD PTR [rcx+0x300]
  a6c5fc:	62 51 14 48 59 e3    	vmulps zmm12,zmm13,zmm11
  a6c602:	62 51 7c 48 59 db    	vmulps zmm11,zmm0,zmm11
  a6c608:	62 72 7d 48 bc e7    	vfnmadd231ps zmm12,zmm0,zmm7
  a6c60e:	62 f1 7c 48 10 41 11 	vmovups zmm0,ZMMWORD PTR [rcx+0x440]
  a6c615:	62 52 45 48 b8 dd    	vfmadd231ps zmm11,zmm7,zmm13
  a6c61b:	62 f1 7c 48 10 79 10 	vmovups zmm7,ZMMWORD PTR [rcx+0x400]
  a6c622:	62 71 54 40 59 ef    	vmulps zmm13,zmm21,zmm7
  a6c628:	62 72 75 48 bc e8    	vfnmadd231ps zmm13,zmm1,zmm0
  a6c62e:	62 71 74 48 59 f7    	vmulps zmm14,zmm1,zmm7
  a6c634:	62 61 14 40 59 fa    	vmulps zmm31,zmm29,zmm2
  a6c63a:	62 61 34 48 59 f2    	vmulps zmm30,zmm9,zmm2
  a6c640:	62 32 7d 48 b8 f5    	vfmadd231ps zmm14,zmm0,zmm21
  a6c646:	62 f1 7c 48 10 41 0f 	vmovups zmm0,ZMMWORD PTR [rcx+0x3c0]
  a6c64d:	62 f1 7c 48 10 49 0e 	vmovups zmm1,ZMMWORD PTR [rcx+0x380]
  a6c654:	62 62 35 48 bc fd    	vfnmadd231ps zmm31,zmm9,zmm5
  a6c65a:	62 f1 2c 48 59 e1    	vmulps zmm4,zmm10,zmm1
  a6c660:	62 f2 4d 40 b8 e0    	vfmadd231ps zmm4,zmm22,zmm0
  a6c666:	62 f1 4c 40 59 d1    	vmulps zmm2,zmm22,zmm1
  a6c66c:	62 71 7c 48 10 79 03 	vmovups zmm15,ZMMWORD PTR [rcx+0xc0]
  a6c673:	62 d2 7d 48 bc d2    	vfnmadd231ps zmm2,zmm0,zmm10
  a6c679:	62 f1 7c 48 10 41 13 	vmovups zmm0,ZMMWORD PTR [rcx+0x4c0]
  a6c680:	62 f1 7c 48 10 79 07 	vmovups zmm7,ZMMWORD PTR [rcx+0x1c0]
  a6c687:	62 02 55 48 b8 f5    	vfmadd231ps zmm30,zmm5,zmm29
  a6c68d:	62 f1 7c 48 10 69 06 	vmovups zmm5,ZMMWORD PTR [rcx+0x180]
  a6c694:	62 f1 2c 40 59 cd    	vmulps zmm1,zmm26,zmm5
  a6c69a:	62 f1 5c 40 59 ed    	vmulps zmm5,zmm20,zmm5
  a6c6a0:	62 f2 5d 40 b8 cf    	vfmadd231ps zmm1,zmm20,zmm7
  a6c6a6:	62 f1 7c 48 10 71 12 	vmovups zmm6,ZMMWORD PTR [rcx+0x480]
  a6c6ad:	62 92 45 48 bc ea    	vfnmadd231ps zmm5,zmm7,zmm26
  a6c6b3:	62 f1 24 40 59 fe    	vmulps zmm7,zmm27,zmm6
  a6c6b9:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x80]
  a6c6c0:	02 
  a6c6c1:	62 f2 35 48 b8 f8    	vfmadd231ps zmm7,zmm9,zmm0
  a6c6c7:	62 81 34 40 59 cc    	vmulps zmm17,zmm25,zmm28
  a6c6cd:	62 c2 6d 40 b8 cf    	vfmadd231ps zmm17,zmm18,zmm15
  a6c6d3:	62 e1 34 48 59 f6    	vmulps zmm22,zmm9,zmm6
  a6c6d9:	62 d1 7c 40 5c f4    	vsubps zmm6,zmm16,zmm12
  a6c6df:	62 82 7d 48 bc f3    	vfnmadd231ps zmm22,zmm0,zmm27
  a6c6e5:	62 f1 7c 48 10 41 0b 	vmovups zmm0,ZMMWORD PTR [rcx+0x2c0]
  a6c6ec:	62 81 6c 40 59 fc    	vmulps zmm23,zmm18,zmm28
  a6c6f2:	62 51 3c 48 58 cb    	vaddps zmm9,zmm8,zmm11
  a6c6f8:	62 e1 7c 48 10 61 0a 	vmovups zmm20,ZMMWORD PTR [rcx+0x280]
  a6c6ff:	62 82 05 48 bc f9    	vfnmadd231ps zmm23,zmm15,zmm25
  a6c705:	62 31 3c 40 59 d4    	vmulps zmm10,zmm24,zmm20
  a6c70b:	62 41 04 40 5c cd    	vsubps zmm25,zmm31,zmm13
  a6c711:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x40]
  a6c718:	01 
  a6c719:	62 72 65 48 b8 d0    	vfmadd231ps zmm10,zmm3,zmm0
  a6c71f:	62 a1 64 48 59 d4    	vmulps zmm18,zmm3,zmm20
  a6c725:	62 82 7d 48 bc d0    	vfnmadd231ps zmm18,zmm0,zmm24
  a6c72b:	62 c1 0c 40 58 ee    	vaddps zmm21,zmm30,zmm14
  a6c731:	62 f2 7d 48 18 1d ad 	vbroadcastss zmm3,DWORD PTR [rip+0xffffffffff608fad]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a6c738:	8f 60 ff 
  a6c73b:	62 71 7c 48 28 fb    	vmovaps zmm15,zmm3
  a6c741:	62 a1 44 48 58 e1    	vaddps zmm20,zmm7,zmm17
  a6c747:	62 c1 7c 40 58 c4    	vaddps zmm16,zmm16,zmm12
  a6c74d:	62 62 7d 48 18 2d 01 	vbroadcastss zmm29,DWORD PTR [rip+0xffffffffff609001]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a6c754:	90 60 ff 
  a6c757:	62 91 4c 48 59 c5    	vmulps zmm0,zmm6,zmm29
  a6c75d:	62 51 04 40 58 e5    	vaddps zmm12,zmm31,zmm13
  a6c763:	62 71 5c 48 58 e9    	vaddps zmm13,zmm4,zmm1
  a6c769:	62 41 0c 40 5c c6    	vsubps zmm24,zmm30,zmm14
  a6c76f:	62 32 55 40 a8 fb    	vfmadd213ps zmm15,zmm21,zmm19
  a6c775:	62 61 6c 48 5c d5    	vsubps zmm26,zmm2,zmm5
  a6c77b:	62 41 3c 48 5c db    	vsubps zmm27,zmm8,zmm11
  a6c781:	62 21 4c 40 5c e7    	vsubps zmm28,zmm22,zmm23
  a6c787:	62 62 7d 48 18 35 0f 	vbroadcastss zmm30,DWORD PTR [rip+0xffffffffff608c0f]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a6c78e:	8c 60 ff 
  a6c791:	62 92 35 40 b8 c6    	vfmadd231ps zmm0,zmm25,zmm30
  a6c797:	62 31 4c 40 58 c7    	vaddps zmm8,zmm22,zmm23
  a6c79d:	62 11 1c 40 59 f5    	vmulps zmm14,zmm28,zmm29
  a6c7a3:	62 71 6c 48 58 dd    	vaddps zmm11,zmm2,zmm5
  a6c7a9:	62 62 7d 48 18 3d 91 	vbroadcastss zmm31,DWORD PTR [rip+0xffffffffff608e91]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a6c7b0:	8e 60 ff 
  a6c7b3:	62 12 35 48 bc ff    	vfnmadd231ps zmm15,zmm9,zmm31
  a6c7b9:	62 91 24 40 59 ed    	vmulps zmm5,zmm27,zmm29
  a6c7bf:	62 92 3d 40 b8 ee    	vfmadd231ps zmm5,zmm24,zmm30
  a6c7c5:	62 f1 5c 48 5c c9    	vsubps zmm1,zmm4,zmm1
  a6c7cb:	62 12 2d 40 b8 f6    	vfmadd231ps zmm14,zmm26,zmm30
  a6c7d1:	62 b1 44 48 5c d1    	vsubps zmm2,zmm7,zmm17
  a6c7d7:	62 91 6c 48 59 e5    	vmulps zmm4,zmm2,zmm29
  a6c7dd:	62 91 34 40 59 fd    	vmulps zmm7,zmm25,zmm29
  a6c7e3:	62 92 75 48 b8 e6    	vfmadd231ps zmm4,zmm1,zmm30
  a6c7e9:	62 f2 0d 40 bc fe    	vfnmadd231ps zmm7,zmm30,zmm6
  a6c7ef:	62 91 7c 48 28 f7    	vmovaps zmm6,zmm31
  a6c7f5:	62 b2 55 40 ac f3    	vfnmadd213ps zmm6,zmm21,zmm19
  a6c7fb:	62 f2 35 48 b8 f3    	vfmadd231ps zmm6,zmm9,zmm3
  a6c801:	62 81 7c 48 28 cf    	vmovaps zmm17,zmm31
  a6c807:	62 c2 15 48 ac ca    	vfnmadd213ps zmm17,zmm13,zmm10
  a6c80d:	62 81 2c 40 59 f5    	vmulps zmm22,zmm26,zmm29
  a6c813:	62 e2 5d 40 b8 cb    	vfmadd231ps zmm17,zmm20,zmm3
  a6c819:	62 82 0d 40 bc f4    	vfnmadd231ps zmm22,zmm30,zmm28
  a6c81f:	62 81 7c 48 28 ff    	vmovaps zmm23,zmm31
  a6c825:	62 61 7c 48 28 54 24 	vmovaps zmm26,ZMMWORD PTR [rsp+0xc0]
  a6c82c:	03 
  a6c82d:	62 82 1d 48 ac fa    	vfnmadd213ps zmm23,zmm12,zmm26
  a6c833:	62 e2 7d 40 b8 fb    	vfmadd231ps zmm23,zmm16,zmm3
  a6c839:	62 01 3c 40 59 c5    	vmulps zmm24,zmm24,zmm29
  a6c83f:	62 02 0d 40 bc c3    	vfnmadd231ps zmm24,zmm30,zmm27
  a6c845:	62 91 74 48 59 cd    	vmulps zmm1,zmm1,zmm29
  a6c84b:	62 61 44 48 58 ce    	vaddps zmm25,zmm7,zmm6
  a6c851:	62 f2 0d 40 bc ca    	vfnmadd231ps zmm1,zmm30,zmm2
  a6c857:	62 91 7c 48 28 d7    	vmovaps zmm2,zmm31
  a6c85d:	62 f1 4c 48 5c f7    	vsubps zmm6,zmm6,zmm7
  a6c863:	62 b1 74 40 58 fe    	vaddps zmm7,zmm17,zmm22
  a6c869:	62 b2 25 48 ac d2    	vfnmadd213ps zmm2,zmm11,zmm18
  a6c86f:	62 f2 3d 48 b8 d3    	vfmadd231ps zmm2,zmm8,zmm3
  a6c875:	62 a1 74 40 5c ce    	vsubps zmm17,zmm17,zmm22
  a6c87b:	62 81 44 40 5c f0    	vsubps zmm22,zmm23,zmm24
  a6c881:	62 81 44 40 58 f8    	vaddps zmm23,zmm23,zmm24
  a6c887:	62 61 6c 48 5c c1    	vsubps zmm24,zmm2,zmm1
  a6c88d:	62 f1 6c 48 58 d1    	vaddps zmm2,zmm2,zmm1
  a6c893:	62 d1 7c 48 58 cf    	vaddps zmm1,zmm0,zmm15
  a6c899:	62 71 04 48 5c f8    	vsubps zmm15,zmm15,zmm0
  a6c89f:	62 b1 54 40 58 c3    	vaddps zmm0,zmm21,zmm19
  a6c8a5:	62 e1 7c 48 28 db    	vmovaps zmm19,zmm3
  a6c8ab:	62 c2 15 48 a8 da    	vfmadd213ps zmm19,zmm13,zmm10
  a6c8b1:	62 82 5d 40 bc df    	vfnmadd231ps zmm19,zmm20,zmm31
  a6c8b7:	62 71 34 48 58 c8    	vaddps zmm9,zmm9,zmm0
  a6c8bd:	62 d1 64 40 58 c6    	vaddps zmm0,zmm19,zmm14
  a6c8c3:	62 51 64 40 5c f6    	vsubps zmm14,zmm19,zmm14
  a6c8c9:	62 51 2c 48 58 d5    	vaddps zmm10,zmm10,zmm13
  a6c8cf:	62 31 2c 48 58 d4    	vaddps zmm10,zmm10,zmm20
  a6c8d5:	62 71 7c 48 28 eb    	vmovaps zmm13,zmm3
  a6c8db:	62 12 1d 48 a8 ea    	vfmadd213ps zmm13,zmm12,zmm26
  a6c8e1:	62 51 2c 40 58 e4    	vaddps zmm12,zmm26,zmm12
  a6c8e7:	62 12 7d 40 bc ef    	vfnmadd231ps zmm13,zmm16,zmm31
  a6c8ed:	62 31 1c 48 58 e0    	vaddps zmm12,zmm12,zmm16
  a6c8f3:	62 b2 25 48 a8 da    	vfmadd213ps zmm3,zmm11,zmm18
  a6c8f9:	62 51 6c 40 58 db    	vaddps zmm11,zmm18,zmm11
  a6c8ff:	62 e1 14 48 5c c5    	vsubps zmm16,zmm13,zmm5
  a6c905:	62 f1 14 48 58 ed    	vaddps zmm5,zmm13,zmm5
  a6c90b:	62 92 3d 48 bc df    	vfnmadd231ps zmm3,zmm8,zmm31
  a6c911:	62 51 24 48 58 c0    	vaddps zmm8,zmm11,zmm8
  a6c917:	62 71 64 48 5c dc    	vsubps zmm11,zmm3,zmm4
  a6c91d:	62 71 64 48 58 ec    	vaddps zmm13,zmm3,zmm4
  a6c923:	62 f1 74 48 5c d8    	vsubps zmm3,zmm1,zmm0
  a6c929:	62 e1 74 48 58 d0    	vaddps zmm18,zmm1,zmm0
  a6c92f:	62 d1 7c 40 5c e3    	vsubps zmm4,zmm16,zmm11
  a6c935:	62 51 7c 40 58 db    	vaddps zmm11,zmm16,zmm11
  a6c93b:	62 f1 34 40 58 c7    	vaddps zmm0,zmm25,zmm7
  a6c941:	62 f1 34 40 5c ff    	vsubps zmm7,zmm25,zmm7
  a6c947:	62 91 4c 40 58 c8    	vaddps zmm1,zmm22,zmm24
  a6c94d:	62 81 4c 40 5c c0    	vsubps zmm16,zmm22,zmm24
  a6c953:	62 a1 4c 48 5c d9    	vsubps zmm19,zmm6,zmm17
  a6c959:	62 b1 4c 48 58 f1    	vaddps zmm6,zmm6,zmm17
  a6c95f:	62 e1 44 40 5c ca    	vsubps zmm17,zmm23,zmm2
  a6c965:	62 f1 44 40 58 d2    	vaddps zmm2,zmm23,zmm2
  a6c96b:	62 c1 34 48 5c e2    	vsubps zmm20,zmm9,zmm10
  a6c971:	62 51 34 48 58 ca    	vaddps zmm9,zmm9,zmm10
  a6c977:	62 51 04 48 58 d6    	vaddps zmm10,zmm15,zmm14
  a6c97d:	62 51 04 48 5c f6    	vsubps zmm14,zmm15,zmm14
  a6c983:	62 51 1c 48 5c f8    	vsubps zmm15,zmm12,zmm8
  a6c989:	62 51 1c 48 58 c0    	vaddps zmm8,zmm12,zmm8
  a6c98f:	62 51 7c 48 28 e0    	vmovaps zmm12,zmm8
  a6c995:	62 e1 7c 48 28 2d 21 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff627b21]        # 944c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21970>
  a6c99c:	7b 62 ff 
  a6c99f:	62 52 55 40 7f e1    	vpermt2ps zmm12,zmm21,zmm9
  a6c9a5:	62 e1 7c 48 28 35 51 	vmovaps zmm22,ZMMWORD PTR [rip+0xffffffffff627b51]        # 94500 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x219b0>
  a6c9ac:	7b 62 ff 
  a6c9af:	62 52 4d 40 7f c1    	vpermt2ps zmm8,zmm22,zmm9
  a6c9b5:	62 71 7c 48 11 04 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm8
  a6c9bc:	62 51 54 48 58 c5    	vaddps zmm8,zmm5,zmm13
  a6c9c2:	62 d1 54 48 5c ed    	vsubps zmm5,zmm5,zmm13
  a6c9c8:	62 71 7c 48 11 64 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x40],zmm12
  a6c9cf:	01 
  a6c9d0:	62 71 7c 48 28 cd    	vmovaps zmm9,zmm5
  a6c9d6:	62 d2 4d 40 7f ee    	vpermt2ps zmm5,zmm22,zmm14
  a6c9dc:	62 52 55 40 7f ce    	vpermt2ps zmm9,zmm21,zmm14
  a6c9e2:	62 f1 7c 48 11 6c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x80],zmm5
  a6c9e9:	02 
  a6c9ea:	62 71 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xc0],zmm9
  a6c9f1:	03 
  a6c9f2:	62 f1 7c 48 28 ea    	vmovaps zmm5,zmm2
  a6c9f8:	62 f2 55 40 7f ee    	vpermt2ps zmm5,zmm21,zmm6
  a6c9fe:	62 f2 4d 40 7f d6    	vpermt2ps zmm2,zmm22,zmm6
  a6ca04:	62 f1 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x100],zmm2
  a6ca0b:	04 
  a6ca0c:	62 f1 7c 48 11 6c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x140],zmm5
  a6ca13:	05 
  a6ca14:	62 b1 7c 48 28 d0    	vmovaps zmm2,zmm16
  a6ca1a:	62 f2 55 40 7f d7    	vpermt2ps zmm2,zmm21,zmm7
  a6ca20:	62 e2 4d 40 7f c7    	vpermt2ps zmm16,zmm22,zmm7
  a6ca26:	62 e1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x180],zmm16
  a6ca2d:	06 
  a6ca2e:	62 f1 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1c0],zmm2
  a6ca35:	07 
  a6ca36:	62 d1 7c 48 28 d3    	vmovaps zmm2,zmm11
  a6ca3c:	62 b2 55 40 7f d2    	vpermt2ps zmm2,zmm21,zmm18
  a6ca42:	62 32 4d 40 7f da    	vpermt2ps zmm11,zmm22,zmm18
  a6ca48:	62 71 7c 48 11 5c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x200],zmm11
  a6ca4f:	08 
  a6ca50:	62 d1 7c 48 28 ef    	vmovaps zmm5,zmm15
  a6ca56:	62 b2 55 40 7f ec    	vpermt2ps zmm5,zmm21,zmm20
  a6ca5c:	62 32 4d 40 7f fc    	vpermt2ps zmm15,zmm22,zmm20
  a6ca62:	62 f1 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x240],zmm2
  a6ca69:	09 
  a6ca6a:	62 71 7c 48 11 7c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x280],zmm15
  a6ca71:	0a 
  a6ca72:	62 f1 7c 48 11 6c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x2c0],zmm5
  a6ca79:	0b 
  a6ca7a:	62 d1 7c 48 28 d0    	vmovaps zmm2,zmm8
  a6ca80:	62 d2 55 40 7f d2    	vpermt2ps zmm2,zmm21,zmm10
  a6ca86:	62 52 4d 40 7f c2    	vpermt2ps zmm8,zmm22,zmm10
  a6ca8c:	62 71 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x300],zmm8
  a6ca93:	0c 
  a6ca94:	62 f1 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x340],zmm2
  a6ca9b:	0d 
  a6ca9c:	62 b1 7c 48 28 d1    	vmovaps zmm2,zmm17
  a6caa2:	62 b2 55 40 7f d3    	vpermt2ps zmm2,zmm21,zmm19
  a6caa8:	62 a2 4d 40 7f cb    	vpermt2ps zmm17,zmm22,zmm19
  a6caae:	62 e1 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x380],zmm17
  a6cab5:	0e 
  a6cab6:	62 f1 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x3c0],zmm2
  a6cabd:	0f 
  a6cabe:	62 f1 7c 48 28 d1    	vmovaps zmm2,zmm1
  a6cac4:	62 f2 55 40 7f d0    	vpermt2ps zmm2,zmm21,zmm0
  a6caca:	62 f2 4d 40 7f c8    	vpermt2ps zmm1,zmm22,zmm0
  a6cad0:	62 f1 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x400],zmm1
  a6cad7:	10 
  a6cad8:	62 f1 7c 48 28 c4    	vmovaps zmm0,zmm4
  a6cade:	62 f2 55 40 7f c3    	vpermt2ps zmm0,zmm21,zmm3
  a6cae4:	62 f2 4d 40 7f e3    	vpermt2ps zmm4,zmm22,zmm3
  a6caea:	62 f1 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x440],zmm2
  a6caf1:	11 
  a6caf2:	62 f1 7c 48 11 64 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x480],zmm4
  a6caf9:	12 
  a6cafa:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x4c0],zmm0
  a6cb01:	13 
  a6cb02:	48 81 c2 00 05 00 00 	add    rdx,0x500
  a6cb09:	48 39 d0             	cmp    rax,rdx
  a6cb0c:	0f 85 1e ef ff ff    	jne    a6ba30 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x30>
  a6cb12:	48 89 ec             	mov    rsp,rbp
  a6cb15:	5d                   	pop    rbp
  a6cb16:	c5 f8 77             	vzeroupper
  a6cb19:	c3                   	ret
