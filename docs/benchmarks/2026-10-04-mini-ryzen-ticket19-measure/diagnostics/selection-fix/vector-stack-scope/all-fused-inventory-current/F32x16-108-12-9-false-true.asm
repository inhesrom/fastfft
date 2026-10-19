
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a0ac80 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a0ac80:	55                   	push   rbp
  a0ac81:	48 89 e5             	mov    rbp,rsp
  a0ac84:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a0ac88:	48 81 ec 40 01 00 00 	sub    rsp,0x140
  a0ac8f:	48 69 c2 60 03 00 00 	imul   rax,rdx,0x360
  a0ac96:	31 d2                	xor    edx,edx
  a0ac98:	4c 8d 84 24 c0 00 00 	lea    r8,[rsp+0xc0]
  a0ac9f:	00 
  a0aca0:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  a0aca5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  a0acac:	00 00 00 00 
  a0acb0:	c6 84 24 c0 00 00 00 	mov    BYTE PTR [rsp+0xc0],0x0
  a0acb7:	00 
  a0acb8:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  a0acbd:	62 e1 7c 48 10 1c 17 	vmovups zmm19,ZMMWORD PTR [rdi+rdx*1]
  a0acc4:	c5 fb 10 5c 17 40    	vmovsd xmm3,QWORD PTR [rdi+rdx*1+0x40]
  a0acca:	62 31 7c 48 28 db    	vmovaps zmm11,zmm19
  a0acd0:	62 f1 7c 48 28 15 66 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff683c66]        # 8e940 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1bdf0>
  a0acd7:	3c 68 ff 
  a0acda:	62 e2 6d 48 7f db    	vpermt2ps zmm19,zmm2,zmm3
  a0ace0:	62 71 7c 48 10 a4 17 	vmovups zmm12,ZMMWORD PTR [rdi+rdx*1+0x48]
  a0ace7:	48 00 00 00 
  a0aceb:	c5 fb 10 a4 17 88 00 	vmovsd xmm4,QWORD PTR [rdi+rdx*1+0x88]
  a0acf2:	00 00 
  a0acf4:	62 c1 7c 48 28 e4    	vmovaps zmm20,zmm12
  a0acfa:	62 72 6d 48 7f e4    	vpermt2ps zmm12,zmm2,zmm4
  a0ad00:	62 e1 7c 48 10 ac 17 	vmovups zmm21,ZMMWORD PTR [rdi+rdx*1+0x90]
  a0ad07:	90 00 00 00 
  a0ad0b:	c5 fb 10 ac 17 d0 00 	vmovsd xmm5,QWORD PTR [rdi+rdx*1+0xd0]
  a0ad12:	00 00 
  a0ad14:	62 21 7c 48 28 c5    	vmovaps zmm24,zmm21
  a0ad1a:	62 e2 6d 48 7f ed    	vpermt2ps zmm21,zmm2,zmm5
  a0ad20:	62 e1 7c 48 10 bc 17 	vmovups zmm23,ZMMWORD PTR [rdi+rdx*1+0xd8]
  a0ad27:	d8 00 00 00 
  a0ad2b:	c5 fb 10 b4 17 18 01 	vmovsd xmm6,QWORD PTR [rdi+rdx*1+0x118]
  a0ad32:	00 00 
  a0ad34:	62 f1 7c 48 28 0d c2 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff683bc2]        # 8e900 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1bdb0>
  a0ad3b:	3b 68 ff 
  a0ad3e:	62 72 75 48 7f db    	vpermt2ps zmm11,zmm1,zmm3
  a0ad44:	62 a1 7c 48 28 f7    	vmovaps zmm22,zmm23
  a0ad4a:	62 e2 6d 48 7f fe    	vpermt2ps zmm23,zmm2,zmm6
  a0ad50:	62 61 7c 48 10 8c 17 	vmovups zmm25,ZMMWORD PTR [rdi+rdx*1+0x120]
  a0ad57:	20 01 00 00 
  a0ad5b:	62 e2 75 48 7f e4    	vpermt2ps zmm20,zmm1,zmm4
  a0ad61:	c5 fb 10 a4 17 60 01 	vmovsd xmm4,QWORD PTR [rdi+rdx*1+0x160]
  a0ad68:	00 00 
  a0ad6a:	62 91 7c 48 28 d9    	vmovaps zmm3,zmm25
  a0ad70:	62 62 6d 48 7f cc    	vpermt2ps zmm25,zmm2,zmm4
  a0ad76:	62 62 75 48 7f c5    	vpermt2ps zmm24,zmm1,zmm5
  a0ad7c:	62 f1 7c 48 10 ac 17 	vmovups zmm5,ZMMWORD PTR [rdi+rdx*1+0x168]
  a0ad83:	68 01 00 00 
  a0ad87:	c5 7b 10 8c 17 a8 01 	vmovsd xmm9,QWORD PTR [rdi+rdx*1+0x1a8]
  a0ad8e:	00 00 
  a0ad90:	62 e1 7c 48 28 cd    	vmovaps zmm17,zmm5
  a0ad96:	62 e2 75 48 7f f6    	vpermt2ps zmm22,zmm1,zmm6
  a0ad9c:	62 d2 6d 48 7f e9    	vpermt2ps zmm5,zmm2,zmm9
  a0ada2:	62 71 7c 48 10 bc 17 	vmovups zmm15,ZMMWORD PTR [rdi+rdx*1+0x1b0]
  a0ada9:	b0 01 00 00 
  a0adad:	c5 fb 10 b4 17 f0 01 	vmovsd xmm6,QWORD PTR [rdi+rdx*1+0x1f0]
  a0adb4:	00 00 
  a0adb6:	62 f2 75 48 7f dc    	vpermt2ps zmm3,zmm1,zmm4
  a0adbc:	62 51 7c 48 28 ef    	vmovaps zmm13,zmm15
  a0adc2:	62 72 6d 48 7f fe    	vpermt2ps zmm15,zmm2,zmm6
  a0adc8:	62 61 7c 48 10 94 17 	vmovups zmm26,ZMMWORD PTR [rdi+rdx*1+0x1f8]
  a0adcf:	f8 01 00 00 
  a0add3:	62 c2 75 48 7f c9    	vpermt2ps zmm17,zmm1,zmm9
  a0add9:	c5 fb 10 a4 17 38 02 	vmovsd xmm4,QWORD PTR [rdi+rdx*1+0x238]
  a0ade0:	00 00 
  a0ade2:	62 11 7c 48 28 f2    	vmovaps zmm14,zmm26
  a0ade8:	62 62 6d 48 7f d4    	vpermt2ps zmm26,zmm2,zmm4
  a0adee:	62 72 75 48 7f ee    	vpermt2ps zmm13,zmm1,zmm6
  a0adf4:	62 e1 7c 48 10 44 17 	vmovups zmm16,ZMMWORD PTR [rdi+rdx*1+0x240]
  a0adfb:	09 
  a0adfc:	c5 fb 10 b4 17 80 02 	vmovsd xmm6,QWORD PTR [rdi+rdx*1+0x280]
  a0ae03:	00 00 
  a0ae05:	62 21 7c 48 28 e0    	vmovaps zmm28,zmm16
  a0ae0b:	62 72 75 48 7f f4    	vpermt2ps zmm14,zmm1,zmm4
  a0ae11:	62 e2 6d 48 7f c6    	vpermt2ps zmm16,zmm2,zmm6
  a0ae17:	62 61 7c 48 10 ac 17 	vmovups zmm29,ZMMWORD PTR [rdi+rdx*1+0x288]
  a0ae1e:	88 02 00 00 
  a0ae22:	c5 7b 10 8c 17 c8 02 	vmovsd xmm9,QWORD PTR [rdi+rdx*1+0x2c8]
  a0ae29:	00 00 
  a0ae2b:	62 62 75 48 7f e6    	vpermt2ps zmm28,zmm1,zmm6
  a0ae31:	62 91 7c 48 28 e5    	vmovaps zmm4,zmm29
  a0ae37:	62 42 6d 48 7f e9    	vpermt2ps zmm29,zmm2,zmm9
  a0ae3d:	62 61 7c 48 10 b4 17 	vmovups zmm30,ZMMWORD PTR [rdi+rdx*1+0x2d0]
  a0ae44:	d0 02 00 00 
  a0ae48:	62 d2 75 48 7f e1    	vpermt2ps zmm4,zmm1,zmm9
  a0ae4e:	c5 fb 10 b4 17 10 03 	vmovsd xmm6,QWORD PTR [rdi+rdx*1+0x310]
  a0ae55:	00 00 
  a0ae57:	62 01 7c 48 28 de    	vmovaps zmm27,zmm30
  a0ae5d:	62 62 6d 48 7f f6    	vpermt2ps zmm30,zmm2,zmm6
  a0ae63:	62 62 75 48 7f de    	vpermt2ps zmm27,zmm1,zmm6
  a0ae69:	62 61 7c 48 10 bc 17 	vmovups zmm31,ZMMWORD PTR [rdi+rdx*1+0x318]
  a0ae70:	18 03 00 00 
  a0ae74:	c5 fb 10 b4 17 58 03 	vmovsd xmm6,QWORD PTR [rdi+rdx*1+0x358]
  a0ae7b:	00 00 
  a0ae7d:	62 91 7c 48 28 c7    	vmovaps zmm0,zmm31
  a0ae83:	62 f2 75 48 7f c6    	vpermt2ps zmm0,zmm1,zmm6
  a0ae89:	62 62 6d 48 7f fe    	vpermt2ps zmm31,zmm2,zmm6
  a0ae8f:	62 d1 24 48 58 f5    	vaddps zmm6,zmm11,zmm13
  a0ae95:	62 e1 4c 40 58 d4    	vaddps zmm18,zmm22,zmm4
  a0ae9b:	62 91 64 48 58 cb    	vaddps zmm1,zmm3,zmm27
  a0aea1:	62 d1 2c 40 58 d4    	vaddps zmm2,zmm26,zmm12
  a0aea7:	62 51 2c 40 5c cc    	vsubps zmm9,zmm26,zmm12
  a0aead:	62 31 0c 48 58 e4    	vaddps zmm12,zmm14,zmm20
  a0aeb3:	62 01 64 48 5c d3    	vsubps zmm26,zmm3,zmm27
  a0aeb9:	62 71 04 40 58 d5    	vaddps zmm10,zmm31,zmm5
  a0aebf:	62 61 04 40 5c dd    	vsubps zmm27,zmm31,zmm5
  a0aec5:	62 01 1c 40 58 f8    	vaddps zmm31,zmm28,zmm24
  a0aecb:	62 01 1c 40 5c c0    	vsubps zmm24,zmm28,zmm24
  a0aed1:	62 01 44 40 58 e5    	vaddps zmm28,zmm23,zmm29
  a0aed7:	62 81 44 40 5c fd    	vsubps zmm23,zmm23,zmm29
  a0aedd:	62 21 7c 48 58 e9    	vaddps zmm29,zmm0,zmm17
  a0aee3:	62 51 24 48 5c c5    	vsubps zmm8,zmm11,zmm13
  a0aee9:	62 91 34 40 58 fe    	vaddps zmm7,zmm25,zmm30
  a0aeef:	62 11 34 40 5c de    	vsubps zmm11,zmm25,zmm30
  a0aef5:	62 c1 5c 40 5c e6    	vsubps zmm20,zmm20,zmm14
  a0aefb:	62 b1 4c 48 58 da    	vaddps zmm3,zmm6,zmm18
  a0af01:	62 31 7c 40 58 f5    	vaddps zmm14,zmm16,zmm21
  a0af07:	62 a1 7c 40 5c c5    	vsubps zmm16,zmm16,zmm21
  a0af0d:	62 f1 74 40 5c c0    	vsubps zmm0,zmm17,zmm0
  a0af13:	62 d1 74 48 58 ec    	vaddps zmm5,zmm1,zmm12
  a0af19:	62 c1 64 40 58 cf    	vaddps zmm17,zmm19,zmm15
  a0af1f:	62 c1 64 40 5c df    	vsubps zmm19,zmm19,zmm15
  a0af25:	62 a1 5c 48 5c f6    	vsubps zmm22,zmm4,zmm22
  a0af2b:	62 11 04 40 58 ed    	vaddps zmm13,zmm31,zmm29
  a0af31:	62 01 74 40 58 cc    	vaddps zmm25,zmm17,zmm28
  a0af37:	62 d1 74 48 5c cc    	vsubps zmm1,zmm1,zmm12
  a0af3d:	62 61 44 48 58 f2    	vaddps zmm30,zmm7,zmm2
  a0af43:	62 01 04 40 5c ed    	vsubps zmm29,zmm31,zmm29
  a0af49:	62 41 0c 48 58 fa    	vaddps zmm31,zmm14,zmm10
  a0af4f:	62 f1 44 48 5c d2    	vsubps zmm2,zmm7,zmm2
  a0af55:	62 d1 2c 40 58 f9    	vaddps zmm7,zmm26,zmm9
  a0af5b:	62 a1 4c 48 5c d2    	vsubps zmm18,zmm6,zmm18
  a0af61:	62 31 3c 48 58 e7    	vaddps zmm12,zmm8,zmm23
  a0af67:	62 d1 0c 48 5c e2    	vsubps zmm4,zmm14,zmm10
  a0af6d:	62 f1 6c 48 5c f4    	vsubps zmm6,zmm2,zmm4
  a0af73:	62 f1 6c 48 58 d4    	vaddps zmm2,zmm2,zmm4
  a0af79:	62 d1 5c 40 58 e3    	vaddps zmm4,zmm20,zmm11
  a0af7f:	62 11 74 40 5c d4    	vsubps zmm10,zmm17,zmm28
  a0af85:	62 31 3c 48 5c c7    	vsubps zmm8,zmm8,zmm23
  a0af8b:	62 51 54 48 58 fd    	vaddps zmm15,zmm5,zmm13
  a0af91:	62 31 7c 48 58 f0    	vaddps zmm14,zmm0,zmm16
  a0af97:	62 51 2c 40 5c c9    	vsubps zmm9,zmm26,zmm9
  a0af9d:	62 c1 5c 48 5c ce    	vsubps zmm17,zmm4,zmm14
  a0afa3:	62 d1 5c 48 58 e6    	vaddps zmm4,zmm4,zmm14
  a0afa9:	62 11 3c 40 58 f3    	vaddps zmm14,zmm24,zmm27
  a0afaf:	62 01 3c 40 5c db    	vsubps zmm27,zmm24,zmm27
  a0afb5:	62 c1 44 48 58 ee    	vaddps zmm21,zmm7,zmm14
  a0afbb:	62 d1 44 48 5c fe    	vsubps zmm7,zmm7,zmm14
  a0afc1:	62 31 4c 40 58 f3    	vaddps zmm14,zmm22,zmm19
  a0afc7:	62 a1 64 40 5c f6    	vsubps zmm22,zmm19,zmm22
  a0afcd:	62 81 74 48 58 dd    	vaddps zmm19,zmm1,zmm29
  a0afd3:	62 91 74 48 5c cd    	vsubps zmm1,zmm1,zmm29
  a0afd9:	62 01 0c 40 58 e7    	vaddps zmm28,zmm30,zmm31
  a0afdf:	62 21 24 48 5c c4    	vsubps zmm24,zmm11,zmm20
  a0afe5:	62 f1 7c 40 5c c0    	vsubps zmm0,zmm16,zmm0
  a0afeb:	62 51 64 48 58 df    	vaddps zmm11,zmm3,zmm15
  a0aff1:	62 81 34 40 58 e4    	vaddps zmm20,zmm25,zmm28
  a0aff7:	62 01 0c 40 5c ef    	vsubps zmm29,zmm30,zmm31
  a0affd:	62 62 7d 48 18 35 59 	vbroadcastss zmm30,DWORD PTR [rip+0xffffffffff66a459]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a0b004:	a4 66 ff 
  a0b007:	62 81 7c 48 28 c6    	vmovaps zmm16,zmm30
  a0b00d:	62 c2 55 40 ac c4    	vfnmadd213ps zmm16,zmm21,zmm12
  a0b013:	62 e2 7d 48 18 3d b7 	vbroadcastss zmm23,DWORD PTR [rip+0xffffffffff66a2b7]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a0b01a:	a2 66 ff 
  a0b01d:	62 21 74 40 59 d7    	vmulps zmm26,zmm17,zmm23
  a0b023:	62 02 0d 40 ac e1    	vfnmadd213ps zmm28,zmm30,zmm25
  a0b029:	62 01 7c 48 28 ce    	vmovaps zmm25,zmm30
  a0b02f:	62 22 65 40 ac ca    	vfnmadd213ps zmm25,zmm19,zmm18
  a0b035:	62 d1 54 48 5c ed    	vsubps zmm5,zmm5,zmm13
  a0b03b:	62 01 7c 48 28 fe    	vmovaps zmm31,zmm30
  a0b041:	62 42 6d 48 ac fa    	vfnmadd213ps zmm31,zmm2,zmm10
  a0b047:	62 72 0d 40 ac fb    	vfnmadd213ps zmm15,zmm30,zmm3
  a0b04d:	62 91 7c 48 28 de    	vmovaps zmm3,zmm30
  a0b053:	62 01 34 48 58 f3    	vaddps zmm30,zmm9,zmm27
  a0b059:	62 e1 2c 48 58 fa    	vaddps zmm23,zmm10,zmm2
  a0b05f:	62 11 3c 48 58 ee    	vaddps zmm13,zmm8,zmm30
  a0b065:	62 a1 6c 40 58 db    	vaddps zmm19,zmm18,zmm19
  a0b06b:	62 f1 3c 40 58 d0    	vaddps zmm2,zmm24,zmm0
  a0b071:	62 42 65 48 ac f0    	vfnmadd213ps zmm30,zmm3,zmm8
  a0b077:	62 71 3c 40 5c c0    	vsubps zmm8,zmm24,zmm0
  a0b07d:	62 a1 2c 40 58 c8    	vaddps zmm17,zmm26,zmm16
  a0b083:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a0b089:	62 e1 7c 48 28 d3    	vmovaps zmm18,zmm3
  a0b08f:	62 d2 5d 48 ac c6    	vfnmadd213ps zmm0,zmm4,zmm14
  a0b095:	62 72 7d 48 18 15 35 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff66a235]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a0b09c:	a2 66 ff 
  a0b09f:	62 d1 44 48 59 fa    	vmulps zmm7,zmm7,zmm10
  a0b0a5:	62 91 7c 40 5c da    	vsubps zmm3,zmm16,zmm26
  a0b0ab:	62 61 4c 40 58 c2    	vaddps zmm24,zmm22,zmm2
  a0b0b1:	62 b2 6d 40 ac d6    	vfnmadd213ps zmm2,zmm18,zmm22
  a0b0b7:	62 e1 7c 48 5c c7    	vsubps zmm16,zmm0,zmm7
  a0b0bd:	62 61 7c 48 58 d7    	vaddps zmm26,zmm0,zmm7
  a0b0c3:	62 d1 4c 48 59 fa    	vmulps zmm7,zmm6,zmm10
  a0b0c9:	62 d1 14 40 59 c2    	vmulps zmm0,zmm29,zmm10
  a0b0cf:	62 91 34 48 5c f3    	vsubps zmm6,zmm9,zmm27
  a0b0d5:	62 e1 04 48 58 d0    	vaddps zmm18,zmm15,zmm0
  a0b0db:	62 d1 54 48 59 ea    	vmulps zmm5,zmm5,zmm10
  a0b0e1:	62 f1 04 48 5c c0    	vsubps zmm0,zmm15,zmm0
  a0b0e7:	62 61 1c 40 5c ed    	vsubps zmm29,zmm28,zmm5
  a0b0ed:	62 91 54 48 58 ec    	vaddps zmm5,zmm5,zmm28
  a0b0f3:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm5
  a0b0fa:	01 
  a0b0fb:	62 71 34 40 5c cf    	vsubps zmm9,zmm25,zmm7
  a0b101:	62 d1 74 48 59 ca    	vmulps zmm1,zmm1,zmm10
  a0b107:	62 a1 1c 48 58 f5    	vaddps zmm22,zmm12,zmm21
  a0b10d:	62 01 74 48 58 df    	vaddps zmm27,zmm1,zmm31
  a0b113:	62 d1 3c 48 59 ea    	vmulps zmm5,zmm8,zmm10
  a0b119:	62 51 4c 48 59 c2    	vmulps zmm8,zmm6,zmm10
  a0b11f:	62 f1 0c 48 58 e4    	vaddps zmm4,zmm14,zmm4
  a0b125:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm4
  a0b12c:	02 
  a0b12d:	62 91 54 48 58 f6    	vaddps zmm6,zmm5,zmm30
  a0b133:	62 f1 34 40 58 e7    	vaddps zmm4,zmm25,zmm7
  a0b139:	62 41 6c 48 5c e0    	vsubps zmm28,zmm2,zmm8
  a0b13f:	62 61 04 40 5c f9    	vsubps zmm31,zmm31,zmm1
  a0b145:	62 f1 0c 40 5c cd    	vsubps zmm1,zmm30,zmm5
  a0b14b:	62 51 6c 48 58 c0    	vaddps zmm8,zmm2,zmm8
  a0b151:	62 d1 7c 48 28 eb    	vmovaps zmm5,zmm11
  a0b157:	62 e1 7c 48 28 2d 1f 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff6bbe1f]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a0b15e:	be 6b ff 
  a0b161:	62 f2 55 40 7f e8    	vpermt2ps zmm5,zmm21,zmm0
  a0b167:	62 61 7c 48 28 35 4f 	vmovaps zmm30,ZMMWORD PTR [rip+0xffffffffff6bbe4f]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a0b16e:	be 6b ff 
  a0b171:	62 72 0d 40 7f d8    	vpermt2ps zmm11,zmm30,zmm0
  a0b177:	62 31 7c 48 28 f9    	vmovaps zmm15,zmm17
  a0b17d:	62 a2 0d 40 7f ce    	vpermt2ps zmm17,zmm30,zmm22
  a0b183:	62 41 7c 48 28 c9    	vmovaps zmm25,zmm9
  a0b189:	62 32 55 40 7f fe    	vpermt2ps zmm15,zmm21,zmm22
  a0b18f:	62 72 0d 40 7f cc    	vpermt2ps zmm9,zmm30,zmm4
  a0b195:	62 c1 7c 48 28 f5    	vmovaps zmm22,zmm13
  a0b19b:	62 e2 55 40 7f f1    	vpermt2ps zmm22,zmm21,zmm1
  a0b1a1:	62 62 55 40 7f cc    	vpermt2ps zmm25,zmm21,zmm4
  a0b1a7:	62 72 0d 40 7f e9    	vpermt2ps zmm13,zmm30,zmm1
  a0b1ad:	62 b1 7c 48 28 ca    	vmovaps zmm1,zmm18
  a0b1b3:	62 f1 7c 48 28 d6    	vmovaps zmm2,zmm6
  a0b1b9:	c5 c0 57 ff          	vxorps xmm7,xmm7,xmm7
  a0b1bd:	62 f2 55 40 7f cf    	vpermt2ps zmm1,zmm21,zmm7
  a0b1c3:	62 f2 55 40 7f d7    	vpermt2ps zmm2,zmm21,zmm7
  a0b1c9:	62 f1 7c 48 28 e5    	vmovaps zmm4,zmm5
  a0b1cf:	62 f1 7c 48 28 05 27 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6bbd27]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a0b1d6:	bd 6b ff 
  a0b1d9:	62 f2 7d 48 7f e1    	vpermt2ps zmm4,zmm0,zmm1
  a0b1df:	62 71 7c 48 28 25 57 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff6bbd57]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a0b1e6:	bd 6b ff 
  a0b1e9:	62 f2 1d 48 7f e9    	vpermt2ps zmm5,zmm12,zmm1
  a0b1ef:	62 31 7c 48 28 f6    	vmovaps zmm14,zmm22
  a0b1f5:	62 72 7d 48 7f f2    	vpermt2ps zmm14,zmm0,zmm2
  a0b1fb:	62 e2 1d 48 7f f2    	vpermt2ps zmm22,zmm12,zmm2
  a0b201:	62 e2 0d 40 7f d7    	vpermt2ps zmm18,zmm30,zmm7
  a0b207:	62 32 7d 48 7f da    	vpermt2ps zmm11,zmm0,zmm18
  a0b20d:	62 f1 7c 48 28 cb    	vmovaps zmm1,zmm3
  a0b213:	62 f2 0d 40 7f df    	vpermt2ps zmm3,zmm30,zmm7
  a0b219:	62 f2 55 40 7f cf    	vpermt2ps zmm1,zmm21,zmm7
  a0b21f:	62 e2 7d 48 7f cb    	vpermt2ps zmm17,zmm0,zmm3
  a0b225:	62 c1 7c 48 28 d7    	vmovaps zmm18,zmm15
  a0b22b:	62 72 1d 48 7f f9    	vpermt2ps zmm15,zmm12,zmm1
  a0b231:	62 e2 7d 48 7f d1    	vpermt2ps zmm18,zmm0,zmm1
  a0b237:	62 b1 7c 48 28 cb    	vmovaps zmm1,zmm19
  a0b23d:	62 f2 55 40 7f cf    	vpermt2ps zmm1,zmm21,zmm7
  a0b243:	62 e2 0d 40 7f df    	vpermt2ps zmm19,zmm30,zmm7
  a0b249:	62 f2 0d 40 7f f7    	vpermt2ps zmm6,zmm30,zmm7
  a0b24f:	62 32 7d 48 7f cb    	vpermt2ps zmm9,zmm0,zmm19
  a0b255:	62 91 7c 48 28 d1    	vmovaps zmm2,zmm25
  a0b25b:	62 62 1d 48 7f c9    	vpermt2ps zmm25,zmm12,zmm1
  a0b261:	62 f2 7d 48 7f d1    	vpermt2ps zmm2,zmm0,zmm1
  a0b267:	62 51 a5 48 14 c9    	vunpcklpd zmm9,zmm11,zmm9
  a0b26d:	62 72 7d 48 7f ee    	vpermt2ps zmm13,zmm0,zmm6
  a0b273:	62 d1 f5 40 14 cd    	vunpcklpd zmm1,zmm17,zmm13
  a0b279:	62 81 d5 48 14 d9    	vunpcklpd zmm19,zmm5,zmm25
  a0b27f:	62 11 d5 48 15 e9    	vunpckhpd zmm13,zmm5,zmm25
  a0b285:	62 b1 7c 48 28 dc    	vmovaps zmm3,zmm20
  a0b28b:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x40]
  a0b292:	01 
  a0b293:	62 f2 55 40 7f dd    	vpermt2ps zmm3,zmm21,zmm5
  a0b299:	62 31 85 48 14 d6    	vunpcklpd zmm10,zmm15,zmm22
  a0b29f:	62 e2 0d 40 7f e5    	vpermt2ps zmm20,zmm30,zmm5
  a0b2a5:	62 21 7c 48 28 c8    	vmovaps zmm25,zmm16
  a0b2ab:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x80]
  a0b2b2:	02 
  a0b2b3:	62 62 55 40 7f cd    	vpermt2ps zmm25,zmm21,zmm5
  a0b2b9:	62 a1 85 48 15 ce    	vunpckhpd zmm17,zmm15,zmm22
  a0b2bf:	62 e2 0d 40 7f c5    	vpermt2ps zmm16,zmm30,zmm5
  a0b2c5:	62 91 7c 48 28 f3    	vmovaps zmm6,zmm27
  a0b2cb:	62 92 55 40 7f f7    	vpermt2ps zmm6,zmm21,zmm31
  a0b2d1:	62 f1 7c 48 28 2d 25 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff6bbb25]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a0b2d8:	bb 6b ff 
  a0b2db:	62 72 55 48 7f c9    	vpermt2ps zmm9,zmm5,zmm1
  a0b2e1:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm9
  a0b2e8:	01 
  a0b2e9:	62 02 0d 40 7f df    	vpermt2ps zmm27,zmm30,zmm31
  a0b2ef:	62 11 7c 48 28 f8    	vmovaps zmm15,zmm24
  a0b2f5:	62 52 55 40 7f f8    	vpermt2ps zmm15,zmm21,zmm8
  a0b2fb:	62 e1 dd 48 14 f2    	vunpcklpd zmm22,zmm4,zmm2
  a0b301:	62 42 0d 40 7f c0    	vpermt2ps zmm24,zmm30,zmm8
  a0b307:	62 91 7c 48 28 cd    	vmovaps zmm1,zmm29
  a0b30d:	62 f2 55 40 7f cf    	vpermt2ps zmm1,zmm21,zmm7
  a0b313:	62 61 dd 48 15 fa    	vunpckhpd zmm31,zmm4,zmm2
  a0b319:	62 91 7c 48 28 d2    	vmovaps zmm2,zmm26
  a0b31f:	62 f2 55 40 7f d7    	vpermt2ps zmm2,zmm21,zmm7
  a0b325:	62 b1 7c 48 28 e7    	vmovaps zmm4,zmm23
  a0b32b:	62 51 ed 40 14 de    	vunpcklpd zmm11,zmm18,zmm14
  a0b331:	62 f2 55 40 7f e7    	vpermt2ps zmm4,zmm21,zmm7
  a0b337:	62 71 7c 48 28 c3    	vmovaps zmm8,zmm3
  a0b33d:	62 72 7d 48 7f c1    	vpermt2ps zmm8,zmm0,zmm1
  a0b343:	62 51 ed 40 15 ce    	vunpckhpd zmm9,zmm18,zmm14
  a0b349:	62 f2 1d 48 7f d9    	vpermt2ps zmm3,zmm12,zmm1
  a0b34f:	62 91 7c 48 28 c9    	vmovaps zmm1,zmm25
  a0b355:	62 f2 7d 48 7f ca    	vpermt2ps zmm1,zmm0,zmm2
  a0b35b:	62 a1 7c 48 28 d3    	vmovaps zmm18,zmm19
  a0b361:	62 62 1d 48 7f ca    	vpermt2ps zmm25,zmm12,zmm2
  a0b367:	62 f1 7c 48 28 d6    	vmovaps zmm2,zmm6
  a0b36d:	62 f2 7d 48 7f d4    	vpermt2ps zmm2,zmm0,zmm4
  a0b373:	62 71 7c 48 28 35 c3 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff6bbac3]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a0b37a:	ba 6b ff 
  a0b37d:	62 c2 0d 48 7f da    	vpermt2ps zmm19,zmm14,zmm10
  a0b383:	62 f2 1d 48 7f f4    	vpermt2ps zmm6,zmm12,zmm4
  a0b389:	62 91 7c 48 28 e4    	vmovaps zmm4,zmm28
  a0b38f:	62 f2 55 40 7f e7    	vpermt2ps zmm4,zmm21,zmm7
  a0b395:	62 c2 55 48 7f d2    	vpermt2ps zmm18,zmm5,zmm10
  a0b39b:	62 51 7c 48 28 d7    	vmovaps zmm10,zmm15
  a0b3a1:	62 72 7d 48 7f d4    	vpermt2ps zmm10,zmm0,zmm4
  a0b3a7:	62 72 1d 48 7f fc    	vpermt2ps zmm15,zmm12,zmm4
  a0b3ad:	62 62 0d 40 7f ef    	vpermt2ps zmm29,zmm30,zmm7
  a0b3b3:	62 82 7d 48 7f e5    	vpermt2ps zmm20,zmm0,zmm29
  a0b3b9:	62 62 0d 40 7f d7    	vpermt2ps zmm26,zmm30,zmm7
  a0b3bf:	62 82 7d 48 7f c2    	vpermt2ps zmm16,zmm0,zmm26
  a0b3c5:	62 e2 0d 40 7f ff    	vpermt2ps zmm23,zmm30,zmm7
  a0b3cb:	62 22 7d 48 7f df    	vpermt2ps zmm27,zmm0,zmm23
  a0b3d1:	62 51 7c 48 28 e5    	vmovaps zmm12,zmm13
  a0b3d7:	62 32 0d 48 7f e9    	vpermt2ps zmm13,zmm14,zmm17
  a0b3dd:	62 32 55 48 7f e1    	vpermt2ps zmm12,zmm5,zmm17
  a0b3e3:	62 01 dd 40 14 d3    	vunpcklpd zmm26,zmm20,zmm27
  a0b3e9:	62 62 0d 40 7f e7    	vpermt2ps zmm28,zmm30,zmm7
  a0b3ef:	62 02 7d 48 7f c4    	vpermt2ps zmm24,zmm0,zmm28
  a0b3f5:	62 a1 7c 48 28 fe    	vmovaps zmm23,zmm22
  a0b3fb:	62 c2 0d 48 7f f3    	vpermt2ps zmm22,zmm14,zmm11
  a0b401:	62 91 fd 40 14 c0    	vunpcklpd zmm0,zmm16,zmm24
  a0b407:	62 81 7c 48 28 c7    	vmovaps zmm16,zmm31
  a0b40d:	62 c2 55 48 7f fb    	vpermt2ps zmm23,zmm5,zmm11
  a0b413:	62 e1 bd 48 14 ea    	vunpcklpd zmm21,zmm8,zmm2
  a0b419:	62 f1 bd 48 15 e2    	vunpckhpd zmm4,zmm8,zmm2
  a0b41f:	62 d1 f5 48 14 d2    	vunpcklpd zmm2,zmm1,zmm10
  a0b425:	62 42 0d 48 7f f9    	vpermt2ps zmm31,zmm14,zmm9
  a0b42b:	62 d1 f5 48 15 ca    	vunpckhpd zmm1,zmm1,zmm10
  a0b431:	62 61 e5 48 14 de    	vunpcklpd zmm27,zmm3,zmm6
  a0b437:	62 e1 e5 48 15 ce    	vunpckhpd zmm17,zmm3,zmm6
  a0b43d:	62 c2 55 48 7f c1    	vpermt2ps zmm16,zmm5,zmm9
  a0b443:	62 d1 b5 40 14 f7    	vunpcklpd zmm6,zmm25,zmm15
  a0b449:	62 d1 b5 40 15 ff    	vunpckhpd zmm7,zmm25,zmm15
  a0b44f:	62 a1 7c 48 28 e5    	vmovaps zmm20,zmm21
  a0b455:	62 e2 55 48 7f e2    	vpermt2ps zmm20,zmm5,zmm2
  a0b45b:	62 e2 0d 48 7f ea    	vpermt2ps zmm21,zmm14,zmm2
  a0b461:	62 71 7c 48 28 fc    	vmovaps zmm15,zmm4
  a0b467:	62 91 7c 48 28 db    	vmovaps zmm3,zmm27
  a0b46d:	62 f2 0d 48 7f e1    	vpermt2ps zmm4,zmm14,zmm1
  a0b473:	62 f2 55 48 7f de    	vpermt2ps zmm3,zmm5,zmm6
  a0b479:	62 62 0d 48 7f de    	vpermt2ps zmm27,zmm14,zmm6
  a0b47f:	62 b1 7c 48 28 d1    	vmovaps zmm2,zmm17
  a0b485:	62 f2 55 48 7f d7    	vpermt2ps zmm2,zmm5,zmm7
  a0b48b:	62 e2 0d 48 7f cf    	vpermt2ps zmm17,zmm14,zmm7
  a0b491:	62 62 55 48 7f d0    	vpermt2ps zmm26,zmm5,zmm0
  a0b497:	62 f1 7c 48 10 41 06 	vmovups zmm0,ZMMWORD PTR [rcx+0x180]
  a0b49e:	62 72 55 48 7f f9    	vpermt2ps zmm15,zmm5,zmm1
  a0b4a4:	62 f1 7c 48 10 49 07 	vmovups zmm1,ZMMWORD PTR [rcx+0x1c0]
  a0b4ab:	62 61 04 40 59 c0    	vmulps zmm24,zmm31,zmm0
  a0b4b1:	62 f1 5c 48 59 f0    	vmulps zmm6,zmm4,zmm0
  a0b4b7:	62 62 5d 48 bc c1    	vfnmadd231ps zmm24,zmm4,zmm1
  a0b4bd:	62 f1 7c 48 10 41 0c 	vmovups zmm0,ZMMWORD PTR [rcx+0x300]
  a0b4c4:	62 92 75 48 b8 f7    	vfmadd231ps zmm6,zmm1,zmm31
  a0b4ca:	62 f1 7c 48 10 49 0d 	vmovups zmm1,ZMMWORD PTR [rcx+0x340]
  a0b4d1:	62 61 1c 48 59 e8    	vmulps zmm29,zmm12,zmm0
  a0b4d7:	62 62 6d 48 bc e9    	vfnmadd231ps zmm29,zmm2,zmm1
  a0b4dd:	62 f1 6c 48 59 c0    	vmulps zmm0,zmm2,zmm0
  a0b4e3:	62 f1 7c 48 10 51 02 	vmovups zmm2,ZMMWORD PTR [rcx+0x80]
  a0b4ea:	62 d2 75 48 b8 c4    	vfmadd231ps zmm0,zmm1,zmm12
  a0b4f0:	62 f1 7c 48 10 49 03 	vmovups zmm1,ZMMWORD PTR [rcx+0xc0]
  a0b4f7:	62 71 4c 40 59 e2    	vmulps zmm12,zmm22,zmm2
  a0b4fd:	62 61 54 40 59 e2    	vmulps zmm28,zmm21,zmm2
  a0b503:	62 72 55 40 bc e1    	vfnmadd231ps zmm12,zmm21,zmm1
  a0b509:	62 f1 7c 48 10 51 08 	vmovups zmm2,ZMMWORD PTR [rcx+0x200]
  a0b510:	62 22 75 48 b8 e6    	vfmadd231ps zmm28,zmm1,zmm22
  a0b516:	62 f1 7c 48 10 49 09 	vmovups zmm1,ZMMWORD PTR [rcx+0x240]
  a0b51d:	62 f1 6c 40 59 e2    	vmulps zmm4,zmm18,zmm2
  a0b523:	62 f2 65 48 bc e1    	vfnmadd231ps zmm4,zmm3,zmm1
  a0b529:	62 f1 64 48 59 d2    	vmulps zmm2,zmm3,zmm2
  a0b52f:	62 f1 7c 48 10 59 0e 	vmovups zmm3,ZMMWORD PTR [rcx+0x380]
  a0b536:	62 b2 75 48 b8 d2    	vfmadd231ps zmm2,zmm1,zmm18
  a0b53c:	62 f1 7c 48 10 49 0f 	vmovups zmm1,ZMMWORD PTR [rcx+0x3c0]
  a0b543:	62 f1 14 48 59 fb    	vmulps zmm7,zmm13,zmm3
  a0b549:	62 f1 74 40 59 db    	vmulps zmm3,zmm17,zmm3
  a0b54f:	62 f2 75 40 bc f9    	vfnmadd231ps zmm7,zmm17,zmm1
  a0b555:	62 71 7c 48 10 41 04 	vmovups zmm8,ZMMWORD PTR [rcx+0x100]
  a0b55c:	62 d2 75 48 b8 dd    	vfmadd231ps zmm3,zmm1,zmm13
  a0b562:	62 f1 7c 48 10 49 05 	vmovups zmm1,ZMMWORD PTR [rcx+0x140]
  a0b569:	62 c1 7c 40 59 f0    	vmulps zmm22,zmm16,zmm8
  a0b56f:	62 e2 05 48 bc f1    	vfnmadd231ps zmm22,zmm15,zmm1
  a0b575:	62 51 04 48 59 f8    	vmulps zmm15,zmm15,zmm8
  a0b57b:	62 71 7c 48 10 41 0a 	vmovups zmm8,ZMMWORD PTR [rcx+0x280]
  a0b582:	62 32 75 48 b8 f8    	vfmadd231ps zmm15,zmm1,zmm16
  a0b588:	62 f1 7c 48 10 49 0b 	vmovups zmm1,ZMMWORD PTR [rcx+0x2c0]
  a0b58f:	62 51 64 40 59 c8    	vmulps zmm9,zmm19,zmm8
  a0b595:	62 d1 24 40 59 e8    	vmulps zmm5,zmm27,zmm8
  a0b59b:	62 72 25 40 bc c9    	vfnmadd231ps zmm9,zmm27,zmm1
  a0b5a1:	62 71 7c 48 10 41 10 	vmovups zmm8,ZMMWORD PTR [rcx+0x400]
  a0b5a8:	62 b2 75 48 b8 eb    	vfmadd231ps zmm5,zmm1,zmm19
  a0b5ae:	62 f1 7c 48 10 49 11 	vmovups zmm1,ZMMWORD PTR [rcx+0x440]
  a0b5b5:	62 71 7c 48 28 5c 24 	vmovaps zmm11,ZMMWORD PTR [rsp+0x40]
  a0b5bc:	01 
  a0b5bd:	62 51 24 48 59 d0    	vmulps zmm10,zmm11,zmm8
  a0b5c3:	62 72 2d 40 bc d1    	vfnmadd231ps zmm10,zmm26,zmm1
  a0b5c9:	62 51 2c 40 59 c0    	vmulps zmm8,zmm26,zmm8
  a0b5cf:	62 52 75 48 b8 c3    	vfmadd231ps zmm8,zmm1,zmm11
  a0b5d5:	62 91 3c 40 58 cd    	vaddps zmm1,zmm24,zmm29
  a0b5db:	62 e1 44 40 58 d9    	vaddps zmm19,zmm23,zmm1
  a0b5e1:	62 71 5c 48 58 ef    	vaddps zmm13,zmm4,zmm7
  a0b5e7:	62 62 7d 48 18 1d 6f 	vbroadcastss zmm27,DWORD PTR [rip+0xffffffffff669e6f]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a0b5ee:	9e 66 ff 
  a0b5f1:	62 e2 25 40 bc f9    	vfnmadd231ps zmm23,zmm27,zmm1
  a0b5f7:	62 f1 4c 48 58 c8    	vaddps zmm1,zmm6,zmm0
  a0b5fd:	62 f1 4c 48 5c c0    	vsubps zmm0,zmm6,zmm0
  a0b603:	62 51 1c 48 58 dd    	vaddps zmm11,zmm12,zmm13
  a0b609:	62 52 25 40 bc e5    	vfnmadd231ps zmm12,zmm27,zmm13
  a0b60f:	62 f1 6c 48 58 f3    	vaddps zmm6,zmm2,zmm3
  a0b615:	62 f1 6c 48 5c d3    	vsubps zmm2,zmm2,zmm3
  a0b61b:	62 e1 1c 40 58 ce    	vaddps zmm17,zmm28,zmm6
  a0b621:	62 62 25 40 bc e6    	vfnmadd231ps zmm28,zmm27,zmm6
  a0b627:	62 d1 34 48 58 da    	vaddps zmm3,zmm9,zmm10
  a0b62d:	62 f1 5c 48 5c e7    	vsubps zmm4,zmm4,zmm7
  a0b633:	62 61 4c 40 58 cb    	vaddps zmm25,zmm22,zmm3
  a0b639:	62 e2 25 40 bc f3    	vfnmadd231ps zmm22,zmm27,zmm3
  a0b63f:	62 d1 54 48 58 d8    	vaddps zmm3,zmm5,zmm8
  a0b645:	62 d1 54 48 5c f0    	vsubps zmm6,zmm5,zmm8
  a0b64b:	62 f1 04 48 58 eb    	vaddps zmm5,zmm15,zmm3
  a0b651:	62 72 25 40 bc fb    	vfnmadd231ps zmm15,zmm27,zmm3
  a0b657:	62 a1 74 48 58 ec    	vaddps zmm21,zmm1,zmm20
  a0b65d:	62 62 7d 48 18 15 6d 	vbroadcastss zmm26,DWORD PTR [rip+0xffffffffff669c6d]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a0b664:	9c 66 ff 
  a0b667:	62 91 7c 48 59 c2    	vmulps zmm0,zmm0,zmm26
  a0b66d:	62 91 6c 48 59 d2    	vmulps zmm2,zmm2,zmm26
  a0b673:	62 d1 34 48 5c fa    	vsubps zmm7,zmm9,zmm10
  a0b679:	62 f1 44 40 58 d8    	vaddps zmm3,zmm23,zmm0
  a0b67f:	62 11 5c 48 59 c2    	vmulps zmm8,zmm4,zmm26
  a0b685:	62 91 4c 48 59 f2    	vmulps zmm6,zmm6,zmm26
  a0b68b:	62 e2 25 40 bc e1    	vfnmadd231ps zmm20,zmm27,zmm1
  a0b691:	62 f1 1c 48 58 ca    	vaddps zmm1,zmm12,zmm2
  a0b697:	62 11 3c 40 5c cd    	vsubps zmm9,zmm24,zmm29
  a0b69d:	62 71 4c 40 58 d6    	vaddps zmm10,zmm22,zmm6
  a0b6a3:	62 f1 44 40 5c e0    	vsubps zmm4,zmm23,zmm0
  a0b6a9:	62 d1 1c 40 5c c0    	vsubps zmm0,zmm28,zmm8
  a0b6af:	62 91 44 48 59 fa    	vmulps zmm7,zmm7,zmm26
  a0b6b5:	62 f1 1c 48 5c d2    	vsubps zmm2,zmm12,zmm2
  a0b6bb:	62 71 04 48 5c e7    	vsubps zmm12,zmm15,zmm7
  a0b6c1:	62 51 1c 40 58 c0    	vaddps zmm8,zmm28,zmm8
  a0b6c7:	62 e2 7d 48 18 15 47 	vbroadcastss zmm18,DWORD PTR [rip+0xffffffffff669c47]        # 75318 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x27c8>
  a0b6ce:	9c 66 ff 
  a0b6d1:	62 a1 1c 48 59 c2    	vmulps zmm16,zmm12,zmm18
  a0b6d7:	62 e2 7d 48 18 3d fb 	vbroadcastss zmm23,DWORD PTR [rip+0xffffffffff669dfb]        # 754dc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x298c>
  a0b6de:	9d 66 ff 
  a0b6e1:	62 a2 2d 48 b8 c7    	vfmadd231ps zmm16,zmm10,zmm23
  a0b6e7:	62 31 1c 48 59 f7    	vmulps zmm14,zmm12,zmm23
  a0b6ed:	62 52 6d 40 bc f2    	vfnmadd231ps zmm14,zmm18,zmm10
  a0b6f3:	62 72 7d 48 18 25 6b 	vbroadcastss zmm12,DWORD PTR [rip+0xffffffffff669f6b]        # 75668 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b18>
  a0b6fa:	9f 66 ff 
  a0b6fd:	62 51 7c 48 59 d4    	vmulps zmm10,zmm0,zmm12
  a0b703:	62 72 7d 48 18 2d cb 	vbroadcastss zmm13,DWORD PTR [rip+0xffffffffff669dcb]        # 754d8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2988>
  a0b70a:	9d 66 ff 
  a0b70d:	62 52 75 48 b8 d5    	vfmadd231ps zmm10,zmm1,zmm13
  a0b713:	62 d1 7c 48 59 c5    	vmulps zmm0,zmm0,zmm13
  a0b719:	62 f2 1d 48 bc c1    	vfnmadd231ps zmm0,zmm12,zmm1
  a0b71f:	62 11 24 48 58 e1    	vaddps zmm12,zmm11,zmm25
  a0b725:	62 91 34 48 59 ca    	vmulps zmm1,zmm9,zmm26
  a0b72b:	62 71 4c 40 5c ce    	vsubps zmm9,zmm22,zmm6
  a0b731:	62 71 74 40 58 ed    	vaddps zmm13,zmm17,zmm5
  a0b737:	62 f1 04 48 58 ff    	vaddps zmm7,zmm15,zmm7
  a0b73d:	62 71 5c 40 5c f9    	vsubps zmm15,zmm20,zmm1
  a0b743:	62 b1 74 48 58 f4    	vaddps zmm6,zmm1,zmm20
  a0b749:	62 b1 3c 48 59 ca    	vmulps zmm1,zmm8,zmm18
  a0b74f:	62 b2 6d 48 b8 cf    	vfmadd231ps zmm1,zmm2,zmm23
  a0b755:	62 31 3c 48 59 c7    	vmulps zmm8,zmm8,zmm23
  a0b75b:	62 72 6d 40 bc c2    	vfnmadd231ps zmm8,zmm18,zmm2
  a0b761:	62 e2 7d 48 18 15 85 	vbroadcastss zmm18,DWORD PTR [rip+0xffffffffff669d85]        # 754f0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x29a0>
  a0b768:	9d 66 ff 
  a0b76b:	62 b1 44 48 59 d2    	vmulps zmm2,zmm7,zmm18
  a0b771:	62 e2 7d 48 18 25 7d 	vbroadcastss zmm20,DWORD PTR [rip+0xffffffffff669e7d]        # 755f8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2aa8>
  a0b778:	9e 66 ff 
  a0b77b:	62 b2 35 48 bc d4    	vfnmadd231ps zmm2,zmm9,zmm20
  a0b781:	62 b1 44 48 59 fc    	vmulps zmm7,zmm7,zmm20
  a0b787:	62 d2 6d 40 b8 f9    	vfmadd231ps zmm7,zmm18,zmm9
  a0b78d:	62 a1 2c 48 58 d0    	vaddps zmm18,zmm10,zmm16
  a0b793:	62 71 74 40 5c cd    	vsubps zmm9,zmm17,zmm5
  a0b799:	62 c1 7c 48 58 ce    	vaddps zmm17,zmm0,zmm14
  a0b79f:	62 81 24 48 5c e1    	vsubps zmm20,zmm11,zmm25
  a0b7a5:	62 b1 64 48 58 ea    	vaddps zmm5,zmm3,zmm18
  a0b7ab:	62 e2 25 40 ac d3    	vfnmadd213ps zmm18,zmm27,zmm3
  a0b7b1:	62 e1 74 48 58 f2    	vaddps zmm22,zmm1,zmm2
  a0b7b7:	62 d1 7c 48 5c c6    	vsubps zmm0,zmm0,zmm14
  a0b7bd:	62 31 04 48 58 f1    	vaddps zmm14,zmm15,zmm17
  a0b7c3:	62 c2 25 40 ac cf    	vfnmadd213ps zmm17,zmm27,zmm15
  a0b7c9:	62 91 7c 48 28 db    	vmovaps zmm3,zmm27
  a0b7cf:	62 31 2c 48 5c d0    	vsubps zmm10,zmm10,zmm16
  a0b7d5:	62 31 5c 48 58 de    	vaddps zmm11,zmm4,zmm22
  a0b7db:	62 b2 1d 48 ac db    	vfnmadd213ps zmm3,zmm12,zmm19
  a0b7e1:	62 11 34 48 59 ca    	vmulps zmm9,zmm9,zmm26
  a0b7e7:	62 e2 25 40 ac f4    	vfnmadd213ps zmm22,zmm27,zmm4
  a0b7ed:	62 e1 3c 48 5c c7    	vsubps zmm16,zmm8,zmm7
  a0b7f3:	62 f1 3c 48 58 e7    	vaddps zmm4,zmm8,zmm7
  a0b7f9:	62 91 7c 48 28 fb    	vmovaps zmm7,zmm27
  a0b7ff:	62 f1 74 48 5c ca    	vsubps zmm1,zmm1,zmm2
  a0b805:	62 d1 64 48 58 d1    	vaddps zmm2,zmm3,zmm9
  a0b80b:	62 b2 15 48 ac fd    	vfnmadd213ps zmm7,zmm13,zmm21
  a0b811:	62 11 5c 40 59 c2    	vmulps zmm8,zmm20,zmm26
  a0b817:	62 d1 64 48 5c d9    	vsubps zmm3,zmm3,zmm9
  a0b81d:	62 c1 44 48 5c e0    	vsubps zmm20,zmm7,zmm8
  a0b823:	62 51 44 48 58 c8    	vaddps zmm9,zmm7,zmm8
  a0b829:	62 b1 4c 48 58 f8    	vaddps zmm7,zmm6,zmm16
  a0b82f:	62 91 7c 48 59 c2    	vmulps zmm0,zmm0,zmm26
  a0b835:	62 e2 25 40 ac c6    	vfnmadd213ps zmm16,zmm27,zmm6
  a0b83b:	62 71 6c 40 58 c0    	vaddps zmm8,zmm18,zmm0
  a0b841:	62 11 2c 48 59 d2    	vmulps zmm10,zmm10,zmm26
  a0b847:	62 f1 6c 40 5c f0    	vsubps zmm6,zmm18,zmm0
  a0b84d:	62 d1 74 40 5c c2    	vsubps zmm0,zmm17,zmm10
  a0b853:	62 91 5c 48 59 e2    	vmulps zmm4,zmm4,zmm26
  a0b859:	62 51 74 40 58 fa    	vaddps zmm15,zmm17,zmm10
  a0b85f:	62 71 4c 40 58 d4    	vaddps zmm10,zmm22,zmm4
  a0b865:	62 f1 4c 40 5c e4    	vsubps zmm4,zmm22,zmm4
  a0b86b:	62 51 64 40 58 e4    	vaddps zmm12,zmm19,zmm12
  a0b871:	62 51 54 40 58 ed    	vaddps zmm13,zmm21,zmm13
  a0b877:	62 c1 7c 48 28 cc    	vmovaps zmm17,zmm12
  a0b87d:	62 91 74 48 59 ca    	vmulps zmm1,zmm1,zmm26
  a0b883:	62 e1 7c 28 28 15 b3 	vmovaps ymm18,YMMWORD PTR [rip+0xffffffffff66b3b3]        # 76c40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x40f0>
  a0b88a:	b3 66 ff 
  a0b88d:	62 c2 6d 40 7f cd    	vpermt2ps zmm17,zmm18,zmm13
  a0b893:	62 e1 7c 48 28 1d e3 	vmovaps zmm19,ZMMWORD PTR [rip+0xffffffffff6830e3]        # 8e980 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1be30>
  a0b89a:	30 68 ff 
  a0b89d:	62 52 65 40 7f e5    	vpermt2ps zmm12,zmm19,zmm13
  a0b8a3:	62 71 7c 40 5c e9    	vsubps zmm13,zmm16,zmm1
  a0b8a9:	62 f1 7c 40 58 c9    	vaddps zmm1,zmm16,zmm1
  a0b8af:	62 71 7c 48 11 24 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm12
  a0b8b6:	62 e1 7c 28 11 4c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm17
  a0b8bd:	02 
  a0b8be:	62 71 7c 48 28 e5    	vmovaps zmm12,zmm5
  a0b8c4:	62 52 6d 40 7f e6    	vpermt2ps zmm12,zmm18,zmm14
  a0b8ca:	62 d2 65 40 7f ee    	vpermt2ps zmm5,zmm19,zmm14
  a0b8d0:	62 f1 7c 48 11 ac 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x60],zmm5
  a0b8d7:	60 00 00 00 
  a0b8db:	c5 7c 11 a4 16 a0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xa0],ymm12
  a0b8e2:	00 00 
  a0b8e4:	62 d1 7c 48 28 eb    	vmovaps zmm5,zmm11
  a0b8ea:	62 f2 6d 40 7f ef    	vpermt2ps zmm5,zmm18,zmm7
  a0b8f0:	62 72 65 40 7f df    	vpermt2ps zmm11,zmm19,zmm7
  a0b8f6:	62 71 7c 48 11 5c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xc0],zmm11
  a0b8fd:	03 
  a0b8fe:	c5 fc 11 ac 16 00 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x100],ymm5
  a0b905:	00 00 
  a0b907:	62 f1 7c 48 28 ea    	vmovaps zmm5,zmm2
  a0b90d:	62 b2 6d 40 7f ec    	vpermt2ps zmm5,zmm18,zmm20
  a0b913:	62 b2 65 40 7f d4    	vpermt2ps zmm2,zmm19,zmm20
  a0b919:	62 f1 7c 48 11 94 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x120],zmm2
  a0b920:	20 01 00 00 
  a0b924:	c5 fc 11 ac 16 60 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x160],ymm5
  a0b92b:	00 00 
  a0b92d:	62 d1 7c 48 28 d0    	vmovaps zmm2,zmm8
  a0b933:	62 72 65 40 7f c0    	vpermt2ps zmm8,zmm19,zmm0
  a0b939:	62 f2 6d 40 7f d0    	vpermt2ps zmm2,zmm18,zmm0
  a0b93f:	62 71 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x180],zmm8
  a0b946:	06 
  a0b947:	c5 fc 11 94 16 c0 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x1c0],ymm2
  a0b94e:	00 00 
  a0b950:	62 d1 7c 48 28 c2    	vmovaps zmm0,zmm10
  a0b956:	62 d2 6d 40 7f c5    	vpermt2ps zmm0,zmm18,zmm13
  a0b95c:	62 52 65 40 7f d5    	vpermt2ps zmm10,zmm19,zmm13
  a0b962:	62 71 7c 48 11 94 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1e0],zmm10
  a0b969:	e0 01 00 00 
  a0b96d:	c5 fc 11 84 16 20 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x220],ymm0
  a0b974:	00 00 
  a0b976:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a0b97c:	62 d2 6d 40 7f c1    	vpermt2ps zmm0,zmm18,zmm9
  a0b982:	62 d2 65 40 7f d9    	vpermt2ps zmm3,zmm19,zmm9
  a0b988:	62 f1 7c 48 11 5c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x240],zmm3
  a0b98f:	09 
  a0b990:	c5 fc 11 84 16 80 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x280],ymm0
  a0b997:	00 00 
  a0b999:	62 f1 7c 48 28 c6    	vmovaps zmm0,zmm6
  a0b99f:	62 d2 6d 40 7f c7    	vpermt2ps zmm0,zmm18,zmm15
  a0b9a5:	62 d2 65 40 7f f7    	vpermt2ps zmm6,zmm19,zmm15
  a0b9ab:	62 f1 7c 48 11 b4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x2a0],zmm6
  a0b9b2:	a0 02 00 00 
  a0b9b6:	62 f1 7c 48 28 d4    	vmovaps zmm2,zmm4
  a0b9bc:	62 f2 6d 40 7f d1    	vpermt2ps zmm2,zmm18,zmm1
  a0b9c2:	62 f2 65 40 7f e1    	vpermt2ps zmm4,zmm19,zmm1
  a0b9c8:	c5 fc 11 84 16 e0 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x2e0],ymm0
  a0b9cf:	00 00 
  a0b9d1:	62 f1 7c 48 11 64 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x300],zmm4
  a0b9d8:	0c 
  a0b9d9:	c5 fc 11 94 16 40 03 	vmovups YMMWORD PTR [rsi+rdx*1+0x340],ymm2
  a0b9e0:	00 00 
  a0b9e2:	48 81 c2 60 03 00 00 	add    rdx,0x360
  a0b9e9:	48 39 d0             	cmp    rax,rdx
  a0b9ec:	0f 85 be f2 ff ff    	jne    a0acb0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x30>
  a0b9f2:	48 89 ec             	mov    rsp,rbp
  a0b9f5:	5d                   	pop    rbp
  a0b9f6:	c5 f8 77             	vzeroupper
  a0b9f9:	c3                   	ret
