
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a239c0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a239c0:	48 81 ec 88 02 00 00 	sub    rsp,0x288
  a239c7:	62 f1 7c 48 10 17    	vmovups zmm2,ZMMWORD PTR [rdi]
  a239cd:	c5 fb 10 4f 40       	vmovsd xmm1,QWORD PTR [rdi+0x40]
  a239d2:	62 f1 7c 48 28 35 64 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff66c864]        # 90240 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d6f0>
  a239d9:	c8 66 ff 
  a239dc:	62 f1 7c 48 28 c2    	vmovaps zmm0,zmm2
  a239e2:	62 f2 4d 48 7f c1    	vpermt2ps zmm0,zmm6,zmm1
  a239e8:	62 f1 7c 48 11 04 24 	vmovups ZMMWORD PTR [rsp],zmm0
  a239ef:	62 f1 7c 48 28 25 87 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff66c887]        # 90280 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d730>
  a239f6:	c8 66 ff 
  a239f9:	62 f2 5d 48 7f d1    	vpermt2ps zmm2,zmm4,zmm1
  a239ff:	62 f1 7c 48 10 8f 48 	vmovups zmm1,ZMMWORD PTR [rdi+0x48]
  a23a06:	00 00 00 
  a23a09:	c5 fb 10 9f 88 00 00 	vmovsd xmm3,QWORD PTR [rdi+0x88]
  a23a10:	00 
  a23a11:	62 71 7c 48 28 c1    	vmovaps zmm8,zmm1
  a23a17:	62 72 4d 48 7f c3    	vpermt2ps zmm8,zmm6,zmm3
  a23a1d:	62 f2 5d 48 7f cb    	vpermt2ps zmm1,zmm4,zmm3
  a23a23:	62 71 7c 48 10 8f 90 	vmovups zmm9,ZMMWORD PTR [rdi+0x90]
  a23a2a:	00 00 00 
  a23a2d:	c5 fb 10 9f d0 00 00 	vmovsd xmm3,QWORD PTR [rdi+0xd0]
  a23a34:	00 
  a23a35:	62 c1 7c 48 28 f1    	vmovaps zmm22,zmm9
  a23a3b:	62 e2 4d 48 7f f3    	vpermt2ps zmm22,zmm6,zmm3
  a23a41:	62 72 5d 48 7f cb    	vpermt2ps zmm9,zmm4,zmm3
  a23a47:	62 f1 7c 48 10 af d8 	vmovups zmm5,ZMMWORD PTR [rdi+0xd8]
  a23a4e:	00 00 00 
  a23a51:	c5 fb 10 bf 18 01 00 	vmovsd xmm7,QWORD PTR [rdi+0x118]
  a23a58:	00 
  a23a59:	62 71 7c 48 28 dd    	vmovaps zmm11,zmm5
  a23a5f:	62 72 4d 48 7f df    	vpermt2ps zmm11,zmm6,zmm7
  a23a65:	62 f2 5d 48 7f ef    	vpermt2ps zmm5,zmm4,zmm7
  a23a6b:	62 71 7c 48 10 97 20 	vmovups zmm10,ZMMWORD PTR [rdi+0x120]
  a23a72:	01 00 00 
  a23a75:	c5 fb 10 bf 60 01 00 	vmovsd xmm7,QWORD PTR [rdi+0x160]
  a23a7c:	00 
  a23a7d:	62 51 7c 48 28 ea    	vmovaps zmm13,zmm10
  a23a83:	62 72 4d 48 7f ef    	vpermt2ps zmm13,zmm6,zmm7
  a23a89:	62 72 5d 48 7f d7    	vpermt2ps zmm10,zmm4,zmm7
  a23a8f:	62 71 7c 48 10 a7 68 	vmovups zmm12,ZMMWORD PTR [rdi+0x168]
  a23a96:	01 00 00 
  a23a99:	c5 fb 10 bf a8 01 00 	vmovsd xmm7,QWORD PTR [rdi+0x1a8]
  a23aa0:	00 
  a23aa1:	62 c1 7c 48 28 cc    	vmovaps zmm17,zmm12
  a23aa7:	62 e2 4d 48 7f cf    	vpermt2ps zmm17,zmm6,zmm7
  a23aad:	62 72 5d 48 7f e7    	vpermt2ps zmm12,zmm4,zmm7
  a23ab3:	62 e1 7c 48 10 97 b0 	vmovups zmm18,ZMMWORD PTR [rdi+0x1b0]
  a23aba:	01 00 00 
  a23abd:	c5 fb 10 bf f0 01 00 	vmovsd xmm7,QWORD PTR [rdi+0x1f0]
  a23ac4:	00 
  a23ac5:	62 31 7c 48 28 f2    	vmovaps zmm14,zmm18
  a23acb:	62 72 4d 48 7f f7    	vpermt2ps zmm14,zmm6,zmm7
  a23ad1:	62 e2 5d 48 7f d7    	vpermt2ps zmm18,zmm4,zmm7
  a23ad7:	62 71 7c 48 10 bf f8 	vmovups zmm15,ZMMWORD PTR [rdi+0x1f8]
  a23ade:	01 00 00 
  a23ae1:	c5 fb 10 bf 38 02 00 	vmovsd xmm7,QWORD PTR [rdi+0x238]
  a23ae8:	00 
  a23ae9:	62 c1 7c 48 28 ff    	vmovaps zmm23,zmm15
  a23aef:	62 e2 4d 48 7f ff    	vpermt2ps zmm23,zmm6,zmm7
  a23af5:	62 72 5d 48 7f ff    	vpermt2ps zmm15,zmm4,zmm7
  a23afb:	62 61 7c 48 10 47 09 	vmovups zmm24,ZMMWORD PTR [rdi+0x240]
  a23b02:	c5 fb 10 bf 80 02 00 	vmovsd xmm7,QWORD PTR [rdi+0x280]
  a23b09:	00 
  a23b0a:	62 81 7c 48 28 d8    	vmovaps zmm19,zmm24
  a23b10:	62 e2 4d 48 7f df    	vpermt2ps zmm19,zmm6,zmm7
  a23b16:	62 62 5d 48 7f c7    	vpermt2ps zmm24,zmm4,zmm7
  a23b1c:	62 e1 7c 48 10 87 88 	vmovups zmm16,ZMMWORD PTR [rdi+0x288]
  a23b23:	02 00 00 
  a23b26:	c5 fb 10 bf c8 02 00 	vmovsd xmm7,QWORD PTR [rdi+0x2c8]
  a23b2d:	00 
  a23b2e:	62 21 7c 48 28 c8    	vmovaps zmm25,zmm16
  a23b34:	62 62 4d 48 7f cf    	vpermt2ps zmm25,zmm6,zmm7
  a23b3a:	62 e2 5d 48 7f c7    	vpermt2ps zmm16,zmm4,zmm7
  a23b40:	62 e1 7c 48 10 af d0 	vmovups zmm21,ZMMWORD PTR [rdi+0x2d0]
  a23b47:	02 00 00 
  a23b4a:	c5 fb 10 bf 10 03 00 	vmovsd xmm7,QWORD PTR [rdi+0x310]
  a23b51:	00 
  a23b52:	62 21 7c 48 28 d5    	vmovaps zmm26,zmm21
  a23b58:	62 62 4d 48 7f d7    	vpermt2ps zmm26,zmm6,zmm7
  a23b5e:	62 e2 5d 48 7f ef    	vpermt2ps zmm21,zmm4,zmm7
  a23b64:	62 61 7c 48 10 9f 18 	vmovups zmm27,ZMMWORD PTR [rdi+0x318]
  a23b6b:	03 00 00 
  a23b6e:	c5 fb 10 bf 58 03 00 	vmovsd xmm7,QWORD PTR [rdi+0x358]
  a23b75:	00 
  a23b76:	62 f2 25 40 77 f7    	vpermi2ps zmm6,zmm27,zmm7
  a23b7c:	62 62 5d 48 7f df    	vpermt2ps zmm27,zmm4,zmm7
  a23b82:	62 b1 6c 48 58 da    	vaddps zmm3,zmm2,zmm18
  a23b88:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm3
  a23b8f:	ff 
  a23b90:	62 b1 54 48 58 c0    	vaddps zmm0,zmm5,zmm16
  a23b96:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a23b9d:	fe 
  a23b9e:	62 f1 64 48 58 c0    	vaddps zmm0,zmm3,zmm0
  a23ba4:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm0
  a23bab:	03 
  a23bac:	62 21 2c 48 58 e5    	vaddps zmm28,zmm10,zmm21
  a23bb2:	62 61 04 48 58 e9    	vaddps zmm29,zmm15,zmm1
  a23bb8:	62 91 1c 40 58 c5    	vaddps zmm0,zmm28,zmm29
  a23bbe:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm0
  a23bc5:	09 
  a23bc6:	62 41 3c 40 58 f1    	vaddps zmm30,zmm24,zmm9
  a23bcc:	62 41 24 40 58 fc    	vaddps zmm31,zmm27,zmm12
  a23bd2:	62 a1 2c 48 5c e5    	vsubps zmm20,zmm10,zmm21
  a23bd8:	62 d1 44 40 58 e0    	vaddps zmm4,zmm23,zmm8
  a23bde:	62 c1 44 40 5c f8    	vsubps zmm23,zmm23,zmm8
  a23be4:	62 e1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm23
  a23beb:	04 
  a23bec:	62 11 0c 40 58 d7    	vaddps zmm10,zmm30,zmm31
  a23bf2:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm10
  a23bf9:	02 
  a23bfa:	62 d1 3c 40 5c c1    	vsubps zmm0,zmm24,zmm9
  a23c00:	62 21 4c 48 58 c1    	vaddps zmm24,zmm6,zmm17
  a23c06:	62 a1 4c 48 5c e9    	vsubps zmm21,zmm6,zmm17
  a23c0c:	62 f1 7c 48 10 1c 24 	vmovups zmm3,ZMMWORD PTR [rsp]
  a23c13:	62 c1 64 48 58 ce    	vaddps zmm17,zmm3,zmm14
  a23c19:	62 a1 6c 48 5c d2    	vsubps zmm18,zmm2,zmm18
  a23c1f:	62 11 24 48 58 c1    	vaddps zmm8,zmm11,zmm25
  a23c25:	62 11 24 48 5c d9    	vsubps zmm11,zmm11,zmm25
  a23c2b:	62 01 14 48 58 ca    	vaddps zmm25,zmm13,zmm26
  a23c31:	62 11 14 48 5c ea    	vsubps zmm13,zmm13,zmm26
  a23c37:	62 21 64 40 58 d6    	vaddps zmm26,zmm19,zmm22
  a23c3d:	62 d1 74 48 5c ff    	vsubps zmm7,zmm1,zmm15
  a23c43:	62 d1 44 48 58 d5    	vaddps zmm2,zmm7,zmm13
  a23c49:	62 31 64 40 5c ce    	vsubps zmm9,zmm19,zmm22
  a23c4f:	62 11 1c 48 5c e3    	vsubps zmm12,zmm12,zmm27
  a23c55:	62 51 1c 48 58 f9    	vaddps zmm15,zmm12,zmm9
  a23c5b:	62 d1 6c 48 5c cf    	vsubps zmm1,zmm2,zmm15
  a23c61:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm1
  a23c68:	06 
  a23c69:	62 d1 6c 48 58 cf    	vaddps zmm1,zmm2,zmm15
  a23c6f:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm1
  a23c76:	01 
  a23c77:	62 b1 5c 40 58 d7    	vaddps zmm2,zmm20,zmm23
  a23c7d:	62 31 7c 48 28 fc    	vmovaps zmm15,zmm20
  a23c83:	62 d1 64 48 5c de    	vsubps zmm3,zmm3,zmm14
  a23c89:	62 b1 7c 48 58 cd    	vaddps zmm1,zmm0,zmm21
  a23c8f:	62 61 7c 48 28 d8    	vmovaps zmm27,zmm0
  a23c95:	62 f1 7c 40 5c c5    	vsubps zmm0,zmm16,zmm5
  a23c9b:	62 f1 6c 48 58 f1    	vaddps zmm6,zmm2,zmm1
  a23ca1:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm6
  a23ca8:	07 
  a23ca9:	62 f1 6c 48 5c c9    	vsubps zmm1,zmm2,zmm1
  a23caf:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm1
  a23cb6:	05 
  a23cb7:	62 e1 7c 48 10 64 24 	vmovups zmm20,ZMMWORD PTR [rsp+0x240]
  a23cbe:	09 
  a23cbf:	62 51 5c 40 58 f2    	vaddps zmm14,zmm20,zmm10
  a23cc5:	62 91 1c 40 5c d5    	vsubps zmm2,zmm28,zmm29
  a23ccb:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0xc0]
  a23cd2:	03 
  a23cd3:	62 c1 54 48 58 de    	vaddps zmm19,zmm5,zmm14
  a23cd9:	62 11 0c 40 5c d7    	vsubps zmm10,zmm30,zmm31
  a23cdf:	62 41 74 40 58 e0    	vaddps zmm28,zmm17,zmm8
  a23ce5:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x40]
  a23cec:	ff 
  a23ced:	62 e1 74 48 5c 7c 24 	vsubps zmm23,zmm1,ZMMWORD PTR [rsp-0x80]
  a23cf4:	fe 
  a23cf5:	62 e1 34 40 58 f4    	vaddps zmm22,zmm25,zmm4
  a23cfb:	62 f1 34 40 5c e4    	vsubps zmm4,zmm25,zmm4
  a23d01:	62 01 2c 40 58 c8    	vaddps zmm25,zmm26,zmm24
  a23d07:	62 81 2c 40 5c c0    	vsubps zmm16,zmm26,zmm24
  a23d0d:	62 21 5c 48 5c c0    	vsubps zmm24,zmm4,zmm16
  a23d13:	62 21 5c 48 58 e8    	vaddps zmm29,zmm4,zmm16
  a23d19:	62 81 4c 40 58 c1    	vaddps zmm16,zmm22,zmm25
  a23d1f:	62 51 74 40 5c c0    	vsubps zmm8,zmm17,zmm8
  a23d25:	62 41 6c 48 58 d2    	vaddps zmm26,zmm2,zmm10
  a23d2b:	62 41 6c 48 5c f2    	vsubps zmm30,zmm2,zmm10
  a23d31:	62 d1 6c 40 58 d3    	vaddps zmm2,zmm18,zmm11
  a23d37:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm2
  a23d3e:	08 
  a23d3f:	62 51 6c 40 5c db    	vsubps zmm11,zmm18,zmm11
  a23d45:	62 72 7d 48 18 15 11 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff651711]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a23d4c:	17 65 ff 
  a23d4f:	62 e1 04 48 5c 54 24 	vsubps zmm18,zmm15,ZMMWORD PTR [rsp+0x100]
  a23d56:	04 
  a23d57:	62 b1 1c 40 58 c8    	vaddps zmm1,zmm28,zmm16
  a23d5d:	62 f1 7c 48 11 0c 24 	vmovups ZMMWORD PTR [rsp],zmm1
  a23d64:	62 a1 24 40 5c ed    	vsubps zmm21,zmm27,zmm21
  a23d6a:	62 e1 7c 48 58 cb    	vaddps zmm17,zmm0,zmm3
  a23d70:	62 f1 64 48 5c c0    	vsubps zmm0,zmm3,zmm0
  a23d76:	62 d1 7c 48 28 da    	vmovaps zmm3,zmm10
  a23d7c:	62 71 14 48 5c ef    	vsubps zmm13,zmm13,zmm7
  a23d82:	62 f2 7d 48 18 0d 48 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff651548]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a23d89:	15 65 ff 
  a23d8c:	62 f2 4d 48 ac da    	vfnmadd213ps zmm3,zmm6,zmm2
  a23d92:	62 f1 74 48 59 7c 24 	vmulps zmm7,zmm1,ZMMWORD PTR [rsp+0x180]
  a23d99:	06 
  a23d9a:	62 41 34 48 5c dc    	vsubps zmm27,zmm9,zmm12
  a23da0:	62 f1 44 48 58 f3    	vaddps zmm6,zmm7,zmm3
  a23da6:	62 72 2d 48 ac f5    	vfnmadd213ps zmm14,zmm10,zmm5
  a23dac:	62 51 7c 48 28 ca    	vmovaps zmm9,zmm10
  a23db2:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x40]
  a23db9:	01 
  a23dba:	62 32 55 48 ac c9    	vfnmadd213ps zmm9,zmm5,zmm17
  a23dc0:	62 71 74 48 59 7c 24 	vmulps zmm15,zmm1,ZMMWORD PTR [rsp+0x140]
  a23dc7:	05 
  a23dc8:	62 81 4c 40 5c f1    	vsubps zmm22,zmm22,zmm25
  a23dce:	62 d1 34 48 5c d7    	vsubps zmm2,zmm9,zmm15
  a23dd4:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm2
  a23ddb:	ff 
  a23ddc:	62 82 2d 48 ac c4    	vfnmadd213ps zmm16,zmm10,zmm28
  a23de2:	62 41 7c 48 28 fa    	vmovaps zmm31,zmm10
  a23de8:	62 22 2d 40 ac ff    	vfnmadd213ps zmm31,zmm26,zmm23
  a23dee:	62 61 3c 40 59 c1    	vmulps zmm24,zmm24,zmm1
  a23df4:	62 61 5c 40 5c 4c 24 	vsubps zmm25,zmm20,ZMMWORD PTR [rsp+0x80]
  a23dfb:	02 
  a23dfc:	62 91 04 40 5c e0    	vsubps zmm4,zmm31,zmm24
  a23e02:	62 71 64 48 5c e7    	vsubps zmm12,zmm3,zmm7
  a23e08:	62 d1 7c 48 28 d2    	vmovaps zmm2,zmm10
  a23e0e:	62 d2 15 40 ac d0    	vfnmadd213ps zmm2,zmm29,zmm8
  a23e14:	62 61 0c 40 59 f1    	vmulps zmm30,zmm30,zmm1
  a23e1a:	62 d1 34 48 58 df    	vaddps zmm3,zmm9,zmm15
  a23e20:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm3
  a23e27:	03 
  a23e28:	62 f1 0c 40 58 fa    	vaddps zmm7,zmm30,zmm2
  a23e2e:	62 01 44 40 58 d2    	vaddps zmm26,zmm23,zmm26
  a23e34:	62 31 6c 40 58 fd    	vaddps zmm15,zmm18,zmm21
  a23e3a:	62 91 3c 48 58 dd    	vaddps zmm3,zmm8,zmm29
  a23e40:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm3
  a23e47:	fe 
  a23e48:	62 d1 24 48 58 df    	vaddps zmm3,zmm11,zmm15
  a23e4e:	62 52 2d 48 ac fb    	vfnmadd213ps zmm15,zmm10,zmm11
  a23e54:	62 11 14 48 58 c3    	vaddps zmm8,zmm13,zmm27
  a23e5a:	62 81 14 48 5c e3    	vsubps zmm20,zmm13,zmm27
  a23e60:	62 51 7c 48 58 d8    	vaddps zmm11,zmm0,zmm8
  a23e66:	62 61 7c 48 28 e9    	vmovaps zmm29,zmm1
  a23e6c:	62 e1 4c 40 59 f1    	vmulps zmm22,zmm22,zmm1
  a23e72:	62 72 2d 48 ac c0    	vfnmadd213ps zmm8,zmm10,zmm0
  a23e78:	62 21 0c 48 58 e6    	vaddps zmm28,zmm14,zmm22
  a23e7e:	62 f1 34 40 59 c1    	vmulps zmm0,zmm25,zmm1
  a23e84:	62 b1 6c 40 5c cd    	vsubps zmm1,zmm18,zmm21
  a23e8a:	62 71 7c 40 5c e8    	vsubps zmm13,zmm16,zmm0
  a23e90:	62 81 5c 40 59 d5    	vmulps zmm18,zmm20,zmm29
  a23e96:	62 a1 0c 48 5c e6    	vsubps zmm20,zmm14,zmm22
  a23e9c:	62 41 6c 40 58 df    	vaddps zmm27,zmm18,zmm15
  a23ea2:	62 91 74 48 59 cd    	vmulps zmm1,zmm1,zmm29
  a23ea8:	62 b1 7c 48 58 c0    	vaddps zmm0,zmm0,zmm16
  a23eae:	62 71 3c 48 5c f1    	vsubps zmm14,zmm8,zmm1
  a23eb4:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp+0x1c0]
  a23ebb:	07 
  a23ebc:	62 e1 34 48 58 74 24 	vaddps zmm22,zmm9,ZMMWORD PTR [rsp+0x200]
  a23ec3:	08 
  a23ec4:	62 e1 74 40 58 fd    	vaddps zmm23,zmm17,zmm5
  a23eca:	62 01 04 40 58 c0    	vaddps zmm24,zmm31,zmm24
  a23ed0:	62 11 6c 48 5c ce    	vsubps zmm9,zmm2,zmm30
  a23ed6:	62 b1 04 48 5c d2    	vsubps zmm2,zmm15,zmm18
  a23edc:	62 f1 3c 48 58 c9    	vaddps zmm1,zmm8,zmm1
  a23ee2:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm1
  a23ee9:	02 
  a23eea:	62 e1 7c 48 28 05 8c 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff6a308c]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a23ef1:	30 6a ff 
  a23ef4:	62 31 7c 48 28 c3    	vmovaps zmm8,zmm19
  a23efa:	62 32 7d 40 7f c4    	vpermt2ps zmm8,zmm16,zmm20
  a23f00:	62 e1 7c 48 28 0d b6 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff6a30b6]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a23f07:	30 6a ff 
  a23f0a:	62 a2 75 40 7f dc    	vpermt2ps zmm19,zmm17,zmm20
  a23f10:	62 61 7c 48 28 ee    	vmovaps zmm29,zmm6
  a23f16:	62 22 7d 40 7f ee    	vpermt2ps zmm29,zmm16,zmm22
  a23f1c:	62 b2 75 40 7f f6    	vpermt2ps zmm6,zmm17,zmm22
  a23f22:	62 61 7c 48 28 f4    	vmovaps zmm30,zmm4
  a23f28:	62 02 7d 40 7f f0    	vpermt2ps zmm30,zmm16,zmm24
  a23f2e:	62 92 75 40 7f e0    	vpermt2ps zmm4,zmm17,zmm24
  a23f34:	62 61 7c 48 28 cb    	vmovaps zmm25,zmm3
  a23f3a:	62 62 7d 40 7f ca    	vpermt2ps zmm25,zmm16,zmm2
  a23f40:	62 f2 75 40 7f da    	vpermt2ps zmm3,zmm17,zmm2
  a23f46:	62 a1 4c 00 57 f6    	vxorps xmm22,xmm22,xmm22
  a23f4c:	62 91 7c 48 28 cc    	vmovaps zmm1,zmm28
  a23f52:	62 b2 7d 40 7f ce    	vpermt2ps zmm1,zmm16,zmm22
  a23f58:	62 e1 7c 48 28 15 9e 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff6a2f9e]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a23f5f:	2f 6a ff 
  a23f62:	62 d1 7c 48 28 d0    	vmovaps zmm2,zmm8
  a23f68:	62 f2 6d 40 7f d1    	vpermt2ps zmm2,zmm18,zmm1
  a23f6e:	62 e1 7c 48 28 25 c8 	vmovaps zmm20,ZMMWORD PTR [rip+0xffffffffff6a2fc8]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a23f75:	2f 6a ff 
  a23f78:	62 72 5d 40 7f c1    	vpermt2ps zmm8,zmm20,zmm1
  a23f7e:	62 d1 7c 48 28 cc    	vmovaps zmm1,zmm12
  a23f84:	62 b2 7d 40 7f ce    	vpermt2ps zmm1,zmm16,zmm22
  a23f8a:	62 01 7c 48 28 c5    	vmovaps zmm24,zmm29
  a23f90:	62 62 6d 40 7f c1    	vpermt2ps zmm24,zmm18,zmm1
  a23f96:	62 62 5d 40 7f e9    	vpermt2ps zmm29,zmm20,zmm1
  a23f9c:	62 91 7c 48 28 ca    	vmovaps zmm1,zmm26
  a23fa2:	62 b2 7d 40 7f ce    	vpermt2ps zmm1,zmm16,zmm22
  a23fa8:	62 11 7c 48 28 fe    	vmovaps zmm15,zmm30
  a23fae:	62 72 6d 40 7f f9    	vpermt2ps zmm15,zmm18,zmm1
  a23fb4:	62 62 5d 40 7f f1    	vpermt2ps zmm30,zmm20,zmm1
  a23fba:	62 91 7c 48 28 cb    	vmovaps zmm1,zmm27
  a23fc0:	62 b2 7d 40 7f ce    	vpermt2ps zmm1,zmm16,zmm22
  a23fc6:	62 01 7c 48 28 f9    	vmovaps zmm31,zmm25
  a23fcc:	62 62 6d 40 7f f9    	vpermt2ps zmm31,zmm18,zmm1
  a23fd2:	62 62 5d 40 7f c9    	vpermt2ps zmm25,zmm20,zmm1
  a23fd8:	62 22 75 40 7f e6    	vpermt2ps zmm28,zmm17,zmm22
  a23fde:	62 82 6d 40 7f dc    	vpermt2ps zmm19,zmm18,zmm28
  a23fe4:	62 32 75 40 7f e6    	vpermt2ps zmm12,zmm17,zmm22
  a23fea:	62 d2 6d 40 7f f4    	vpermt2ps zmm6,zmm18,zmm12
  a23ff0:	62 22 75 40 7f d6    	vpermt2ps zmm26,zmm17,zmm22
  a23ff6:	62 92 6d 40 7f e2    	vpermt2ps zmm4,zmm18,zmm26
  a23ffc:	62 22 75 40 7f de    	vpermt2ps zmm27,zmm17,zmm22
  a24002:	62 f1 e5 40 14 e4    	vunpcklpd zmm4,zmm19,zmm4
  a24008:	62 92 6d 40 7f db    	vpermt2ps zmm3,zmm18,zmm27
  a2400e:	62 f1 cd 48 14 cb    	vunpcklpd zmm1,zmm6,zmm3
  a24014:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm1
  a2401b:	01 
  a2401c:	62 51 ed 48 14 e7    	vunpcklpd zmm12,zmm2,zmm15
  a24022:	62 51 ed 48 15 ff    	vunpckhpd zmm15,zmm2,zmm15
  a24028:	62 91 bd 40 14 d7    	vunpcklpd zmm2,zmm24,zmm31
  a2402e:	62 91 bd 40 15 f7    	vunpckhpd zmm6,zmm24,zmm31
  a24034:	62 81 bd 48 14 ee    	vunpcklpd zmm21,zmm8,zmm30
  a2403a:	62 01 bd 48 15 d6    	vunpckhpd zmm26,zmm8,zmm30
  a24040:	62 91 95 40 14 d9    	vunpcklpd zmm3,zmm29,zmm25
  a24046:	62 01 95 40 15 e1    	vunpckhpd zmm28,zmm29,zmm25
  a2404c:	62 f1 7c 48 10 0c 24 	vmovups zmm1,ZMMWORD PTR [rsp]
  a24053:	62 61 7c 48 28 c9    	vmovaps zmm25,zmm1
  a24059:	62 62 7d 40 7f c8    	vpermt2ps zmm25,zmm16,zmm0
  a2405f:	62 f2 75 40 7f c8    	vpermt2ps zmm1,zmm17,zmm0
  a24065:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x40]
  a2406c:	ff 
  a2406d:	62 61 7c 48 28 c0    	vmovaps zmm24,zmm0
  a24073:	62 22 7d 40 7f c7    	vpermt2ps zmm24,zmm16,zmm23
  a24079:	62 b2 75 40 7f c7    	vpermt2ps zmm0,zmm17,zmm23
  a2407f:	62 e1 7c 48 28 ff    	vmovaps zmm23,zmm7
  a24085:	62 c2 7d 40 7f f9    	vpermt2ps zmm23,zmm16,zmm9
  a2408b:	62 d2 75 40 7f f9    	vpermt2ps zmm7,zmm17,zmm9
  a24091:	62 41 7c 48 28 db    	vmovaps zmm27,zmm11
  a24097:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp+0x80]
  a2409e:	02 
  a2409f:	62 42 7d 40 7f d9    	vpermt2ps zmm27,zmm16,zmm9
  a240a5:	62 52 75 40 7f d9    	vpermt2ps zmm11,zmm17,zmm9
  a240ab:	62 d1 7c 48 28 ed    	vmovaps zmm5,zmm13
  a240b1:	62 b2 7d 40 7f ee    	vpermt2ps zmm5,zmm16,zmm22
  a240b7:	62 32 75 40 7f ee    	vpermt2ps zmm13,zmm17,zmm22
  a240bd:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp+0xc0]
  a240c4:	03 
  a240c5:	62 41 7c 48 28 e9    	vmovaps zmm29,zmm9
  a240cb:	62 22 7d 40 7f ee    	vpermt2ps zmm29,zmm16,zmm22
  a240d1:	62 32 75 40 7f ce    	vpermt2ps zmm9,zmm17,zmm22
  a240d7:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp-0x80]
  a240de:	fe 
  a240df:	62 41 7c 48 28 f0    	vmovaps zmm30,zmm8
  a240e5:	62 22 7d 40 7f f6    	vpermt2ps zmm30,zmm16,zmm22
  a240eb:	62 32 75 40 7f c6    	vpermt2ps zmm8,zmm17,zmm22
  a240f1:	62 a2 0d 48 77 c6    	vpermi2ps zmm16,zmm14,zmm22
  a240f7:	62 32 75 40 7f f6    	vpermt2ps zmm14,zmm17,zmm22
  a240fd:	62 e1 7c 48 28 35 f9 	vmovaps zmm22,ZMMWORD PTR [rip+0xffffffffff6a2cf9]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a24104:	2c 6a ff 
  a24107:	62 c1 7c 48 28 cc    	vmovaps zmm17,zmm12
  a2410d:	62 e2 4d 40 7f ca    	vpermt2ps zmm17,zmm22,zmm2
  a24113:	62 e1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm17
  a2411a:	ff 
  a2411b:	62 61 7c 48 28 3d 1b 	vmovaps zmm31,ZMMWORD PTR [rip+0xffffffffff6a2d1b]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a24122:	2d 6a ff 
  a24125:	62 72 05 40 7f e2    	vpermt2ps zmm12,zmm31,zmm2
  a2412b:	62 c1 7c 48 28 cf    	vmovaps zmm17,zmm15
  a24131:	62 e2 4d 40 7f ce    	vpermt2ps zmm17,zmm22,zmm6
  a24137:	62 72 05 40 7f fe    	vpermt2ps zmm15,zmm31,zmm6
  a2413d:	62 a1 7c 48 28 dd    	vmovaps zmm19,zmm21
  a24143:	62 e2 4d 40 7f db    	vpermt2ps zmm19,zmm22,zmm3
  a24149:	62 e2 05 40 7f eb    	vpermt2ps zmm21,zmm31,zmm3
  a2414f:	62 b1 7c 48 28 f5    	vmovaps zmm6,zmm21
  a24155:	62 81 7c 48 28 ea    	vmovaps zmm21,zmm26
  a2415b:	62 82 4d 40 7f ec    	vpermt2ps zmm21,zmm22,zmm28
  a24161:	62 02 05 40 7f d4    	vpermt2ps zmm26,zmm31,zmm28
  a24167:	62 01 7c 48 28 e2    	vmovaps zmm28,zmm26
  a2416d:	62 f2 4d 40 7f 64 24 	vpermt2ps zmm4,zmm22,ZMMWORD PTR [rsp+0x40]
  a24174:	01 
  a24175:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm4
  a2417c:	fe 
  a2417d:	62 91 7c 48 28 d1    	vmovaps zmm2,zmm25
  a24183:	62 f2 6d 40 7f d5    	vpermt2ps zmm2,zmm18,zmm5
  a24189:	62 62 5d 40 7f cd    	vpermt2ps zmm25,zmm20,zmm5
  a2418f:	62 91 7c 48 28 d8    	vmovaps zmm3,zmm24
  a24195:	62 92 6d 40 7f dd    	vpermt2ps zmm3,zmm18,zmm29
  a2419b:	62 02 5d 40 7f c5    	vpermt2ps zmm24,zmm20,zmm29
  a241a1:	62 b1 7c 48 28 ef    	vmovaps zmm5,zmm23
  a241a7:	62 92 6d 40 7f ee    	vpermt2ps zmm5,zmm18,zmm30
  a241ad:	62 82 5d 40 7f fe    	vpermt2ps zmm23,zmm20,zmm30
  a241b3:	62 01 7c 48 28 d3    	vmovaps zmm26,zmm27
  a241b9:	62 22 5d 40 7f d8    	vpermt2ps zmm27,zmm20,zmm16
  a241bf:	62 22 6d 40 7f d0    	vpermt2ps zmm26,zmm18,zmm16
  a241c5:	62 d2 6d 40 7f cd    	vpermt2ps zmm1,zmm18,zmm13
  a241cb:	62 d2 6d 40 7f c1    	vpermt2ps zmm0,zmm18,zmm9
  a241d1:	62 d2 6d 40 7f f8    	vpermt2ps zmm7,zmm18,zmm8
  a241d7:	62 f1 f5 48 14 cf    	vunpcklpd zmm1,zmm1,zmm7
  a241dd:	62 52 6d 40 7f de    	vpermt2ps zmm11,zmm18,zmm14
  a241e3:	62 51 fd 48 14 cb    	vunpcklpd zmm9,zmm0,zmm11
  a241e9:	62 71 ed 48 14 ed    	vunpcklpd zmm13,zmm2,zmm5
  a241ef:	62 71 ed 48 15 f5    	vunpckhpd zmm14,zmm2,zmm5
  a241f5:	62 91 e5 48 14 d2    	vunpcklpd zmm2,zmm3,zmm26
  a241fb:	62 81 e5 48 15 c2    	vunpckhpd zmm16,zmm3,zmm26
  a24201:	62 b1 b5 40 14 ff    	vunpcklpd zmm7,zmm25,zmm23
  a24207:	62 31 b5 40 15 df    	vunpckhpd zmm11,zmm25,zmm23
  a2420d:	62 81 bd 40 14 e3    	vunpcklpd zmm20,zmm24,zmm27
  a24213:	62 81 bd 40 15 fb    	vunpckhpd zmm23,zmm24,zmm27
  a24219:	62 d1 7c 48 28 dd    	vmovaps zmm3,zmm13
  a2421f:	62 f2 4d 40 7f da    	vpermt2ps zmm3,zmm22,zmm2
  a24225:	62 72 05 40 7f ea    	vpermt2ps zmm13,zmm31,zmm2
  a2422b:	62 d1 7c 48 28 ee    	vmovaps zmm5,zmm14
  a24231:	62 b2 4d 40 7f e8    	vpermt2ps zmm5,zmm22,zmm16
  a24237:	62 32 05 40 7f f0    	vpermt2ps zmm14,zmm31,zmm16
  a2423d:	62 e1 7c 48 28 d7    	vmovaps zmm18,zmm7
  a24243:	62 a2 4d 40 7f d4    	vpermt2ps zmm18,zmm22,zmm20
  a24249:	62 b2 05 40 7f fc    	vpermt2ps zmm7,zmm31,zmm20
  a2424f:	62 d1 7c 48 28 d3    	vmovaps zmm2,zmm11
  a24255:	62 b2 4d 40 7f d7    	vpermt2ps zmm2,zmm22,zmm23
  a2425b:	62 32 05 40 7f df    	vpermt2ps zmm11,zmm31,zmm23
  a24261:	62 d2 4d 40 7f c9    	vpermt2ps zmm1,zmm22,zmm9
  a24267:	62 61 7c 48 10 4a 02 	vmovups zmm25,ZMMWORD PTR [rdx+0x80]
  a2426e:	62 e1 7c 48 10 7a 03 	vmovups zmm23,ZMMWORD PTR [rdx+0xc0]
  a24275:	62 e1 7c 48 10 72 04 	vmovups zmm22,ZMMWORD PTR [rdx+0x100]
  a2427c:	62 e1 7c 48 10 62 05 	vmovups zmm20,ZMMWORD PTR [rdx+0x140]
  a24283:	62 e1 7c 48 10 42 06 	vmovups zmm16,ZMMWORD PTR [rdx+0x180]
  a2428a:	62 61 7c 48 10 52 07 	vmovups zmm26,ZMMWORD PTR [rdx+0x1c0]
  a24291:	62 61 7c 48 10 5a 08 	vmovups zmm27,ZMMWORD PTR [rdx+0x200]
  a24298:	62 31 04 48 59 c8    	vmulps zmm9,zmm15,zmm16
  a2429e:	62 12 0d 48 bc ca    	vfnmadd231ps zmm9,zmm14,zmm26
  a242a4:	62 21 0c 48 59 c0    	vmulps zmm24,zmm14,zmm16
  a242aa:	62 71 7c 48 10 72 0c 	vmovups zmm14,ZMMWORD PTR [rdx+0x300]
  a242b1:	62 42 2d 40 b8 c7    	vfmadd231ps zmm24,zmm26,zmm15
  a242b7:	62 71 7c 48 10 7a 0d 	vmovups zmm15,ZMMWORD PTR [rdx+0x340]
  a242be:	62 c1 54 40 59 c6    	vmulps zmm16,zmm21,zmm14
  a242c4:	62 c2 6d 48 bc c7    	vfnmadd231ps zmm16,zmm2,zmm15
  a242ca:	62 d1 6c 48 59 d6    	vmulps zmm2,zmm2,zmm14
  a242d0:	62 61 7c 48 10 52 09 	vmovups zmm26,ZMMWORD PTR [rdx+0x240]
  a242d7:	62 b2 05 48 b8 d5    	vfmadd231ps zmm2,zmm15,zmm21
  a242dd:	62 e1 7c 48 10 6a 0a 	vmovups zmm21,ZMMWORD PTR [rdx+0x280]
  a242e4:	62 11 1c 48 59 f1    	vmulps zmm14,zmm12,zmm25
  a242ea:	62 32 15 48 bc f7    	vfnmadd231ps zmm14,zmm13,zmm23
  a242f0:	62 11 14 48 59 f9    	vmulps zmm15,zmm13,zmm25
  a242f6:	62 71 7c 48 10 6a 0b 	vmovups zmm13,ZMMWORD PTR [rdx+0x2c0]
  a242fd:	62 52 45 40 b8 fc    	vfmadd231ps zmm15,zmm23,zmm12
  a24303:	62 71 7c 48 10 62 0e 	vmovups zmm12,ZMMWORD PTR [rdx+0x380]
  a2430a:	62 81 64 40 59 fb    	vmulps zmm23,zmm19,zmm27
  a24310:	62 82 6d 40 bc fa    	vfnmadd231ps zmm23,zmm18,zmm26
  a24316:	62 01 6c 40 59 cb    	vmulps zmm25,zmm18,zmm27
  a2431c:	62 e1 7c 48 10 52 0f 	vmovups zmm18,ZMMWORD PTR [rdx+0x3c0]
  a24323:	62 22 2d 40 b8 cb    	vfmadd231ps zmm25,zmm26,zmm19
  a24329:	62 61 7c 48 10 52 10 	vmovups zmm26,ZMMWORD PTR [rdx+0x400]
  a24330:	62 41 1c 40 59 dc    	vmulps zmm27,zmm28,zmm12
  a24336:	62 22 25 48 bc da    	vfnmadd231ps zmm27,zmm11,zmm18
  a2433c:	62 51 24 48 59 dc    	vmulps zmm11,zmm11,zmm12
  a24342:	62 71 7c 48 10 62 11 	vmovups zmm12,ZMMWORD PTR [rdx+0x440]
  a24349:	62 12 6d 40 b8 dc    	vfmadd231ps zmm11,zmm18,zmm28
  a2434f:	62 21 34 48 58 e0    	vaddps zmm28,zmm9,zmm16
  a24355:	62 a1 74 40 59 d6    	vmulps zmm18,zmm17,zmm22
  a2435b:	62 a2 55 48 bc d4    	vfnmadd231ps zmm18,zmm5,zmm20
  a24361:	62 a1 54 48 59 de    	vmulps zmm19,zmm5,zmm22
  a24367:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp-0x40]
  a2436e:	ff 
  a2436f:	62 91 5c 48 58 c4    	vaddps zmm0,zmm4,zmm28
  a24375:	62 f1 7c 48 11 04 24 	vmovups ZMMWORD PTR [rsp],zmm0
  a2437c:	62 a2 5d 40 b8 d9    	vfmadd231ps zmm19,zmm20,zmm17
  a24382:	62 81 44 40 58 cb    	vaddps zmm17,zmm23,zmm27
  a24388:	62 a1 4c 48 59 e5    	vmulps zmm20,zmm6,zmm21
  a2438e:	62 c2 45 48 bc e5    	vfnmadd231ps zmm20,zmm7,zmm13
  a24394:	62 a1 44 48 59 ed    	vmulps zmm21,zmm7,zmm21
  a2439a:	62 b1 0c 48 58 f9    	vaddps zmm7,zmm14,zmm17
  a243a0:	62 e2 15 48 b8 ee    	vfmadd231ps zmm21,zmm13,zmm6
  a243a6:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x80]
  a243ad:	fe 
  a243ae:	62 01 7c 48 59 ea    	vmulps zmm29,zmm0,zmm26
  a243b4:	62 42 75 48 bc ec    	vfnmadd231ps zmm29,zmm1,zmm12
  a243ba:	62 11 5c 40 58 ed    	vaddps zmm13,zmm20,zmm29
  a243c0:	62 01 74 48 59 d2    	vmulps zmm26,zmm1,zmm26
  a243c6:	62 51 6c 40 58 c5    	vaddps zmm8,zmm18,zmm13
  a243cc:	62 62 1d 48 b8 d0    	vfmadd231ps zmm26,zmm12,zmm0
  a243d2:	62 41 44 48 58 f8    	vaddps zmm31,zmm7,zmm8
  a243d8:	62 71 3c 40 58 e2    	vaddps zmm12,zmm24,zmm2
  a243de:	62 92 2d 48 bc e4    	vfnmadd231ps zmm4,zmm10,zmm28
  a243e4:	62 f1 1c 48 58 f3    	vaddps zmm6,zmm12,zmm3
  a243ea:	62 e1 3c 40 5c f2    	vsubps zmm22,zmm24,zmm2
  a243f0:	62 d1 34 40 58 d3    	vaddps zmm2,zmm25,zmm11
  a243f6:	62 32 2d 48 bc f1    	vfnmadd231ps zmm14,zmm10,zmm17
  a243fc:	62 f1 04 48 58 ca    	vaddps zmm1,zmm15,zmm2
  a24402:	62 c1 34 40 5c cb    	vsubps zmm17,zmm25,zmm11
  a24408:	62 01 54 40 58 c2    	vaddps zmm24,zmm21,zmm26
  a2440e:	62 72 2d 48 bc fa    	vfnmadd231ps zmm15,zmm10,zmm2
  a24414:	62 11 64 40 58 d8    	vaddps zmm11,zmm19,zmm24
  a2441a:	62 62 7d 48 18 35 b0 	vbroadcastss zmm30,DWORD PTR [rip+0xffffffffff650eb0]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a24421:	0e 65 ff 
  a24424:	62 91 74 40 59 d6    	vmulps zmm2,zmm17,zmm30
  a2442a:	62 81 44 40 5c cb    	vsubps zmm17,zmm23,zmm27
  a24430:	62 e1 0c 48 58 fa    	vaddps zmm23,zmm14,zmm2
  a24436:	62 01 74 40 59 ce    	vmulps zmm25,zmm17,zmm30
  a2443c:	62 c2 2d 48 bc d5    	vfnmadd231ps zmm18,zmm10,zmm13
  a24442:	62 81 04 48 5c c9    	vsubps zmm17,zmm15,zmm25
  a24448:	62 81 54 40 5c ea    	vsubps zmm21,zmm21,zmm26
  a2444e:	62 62 7d 48 18 15 10 	vbroadcastss zmm26,DWORD PTR [rip+0xffffffffff651210]        # 75668 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b18>
  a24455:	12 65 ff 
  a24458:	62 82 2d 48 bc d8    	vfnmadd231ps zmm19,zmm10,zmm24
  a2445e:	62 11 74 40 59 ea    	vmulps zmm13,zmm17,zmm26
  a24464:	62 81 5c 40 5c e5    	vsubps zmm20,zmm20,zmm29
  a2446a:	62 62 7d 48 18 05 64 	vbroadcastss zmm24,DWORD PTR [rip+0xffffffffff651064]        # 754d8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2988>
  a24471:	10 65 ff 
  a24474:	62 12 45 40 b8 e8    	vfmadd231ps zmm13,zmm23,zmm24
  a2447a:	62 01 54 40 59 de    	vmulps zmm27,zmm21,zmm30
  a24480:	62 81 74 40 59 c8    	vmulps zmm17,zmm17,zmm24
  a24486:	62 01 6c 40 58 c3    	vaddps zmm24,zmm18,zmm27
  a2448c:	62 01 5c 40 59 e6    	vmulps zmm28,zmm20,zmm30
  a24492:	62 82 45 40 bc ca    	vfnmadd231ps zmm17,zmm23,zmm26
  a24498:	62 e2 7d 48 18 3d 76 	vbroadcastss zmm23,DWORD PTR [rip+0xffffffffff650e76]        # 75318 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x27c8>
  a2449f:	0e 65 ff 
  a244a2:	62 81 64 40 5c ec    	vsubps zmm21,zmm19,zmm28
  a244a8:	62 d2 2d 48 bc dc    	vfnmadd231ps zmm3,zmm10,zmm12
  a244ae:	62 a1 54 40 59 e7    	vmulps zmm20,zmm21,zmm23
  a244b4:	62 31 34 48 5c c8    	vsubps zmm9,zmm9,zmm16
  a244ba:	62 e2 7d 48 18 05 18 	vbroadcastss zmm16,DWORD PTR [rip+0xffffffffff651018]        # 754dc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x298c>
  a244c1:	10 65 ff 
  a244c4:	62 a2 3d 40 b8 e0    	vfmadd231ps zmm20,zmm24,zmm16
  a244ca:	62 a1 54 40 59 e8    	vmulps zmm21,zmm21,zmm16
  a244d0:	62 82 45 40 bc e8    	vfnmadd231ps zmm21,zmm23,zmm24
  a244d6:	62 d1 74 48 58 eb    	vaddps zmm5,zmm1,zmm11
  a244dc:	62 01 4c 40 59 d6    	vmulps zmm26,zmm22,zmm30
  a244e2:	62 f1 0c 48 5c d2    	vsubps zmm2,zmm14,zmm2
  a244e8:	62 01 5c 48 58 ea    	vaddps zmm29,zmm4,zmm26
  a244ee:	62 81 04 48 58 f1    	vaddps zmm22,zmm15,zmm25
  a244f4:	62 31 14 48 58 fc    	vaddps zmm15,zmm13,zmm20
  a244fa:	62 01 6c 40 5c cb    	vsubps zmm25,zmm18,zmm27
  a24500:	62 51 14 40 58 f7    	vaddps zmm14,zmm29,zmm15
  a24506:	62 01 34 48 59 de    	vmulps zmm27,zmm9,zmm30
  a2450c:	62 11 64 40 58 cc    	vaddps zmm9,zmm19,zmm28
  a24512:	62 a1 4c 40 59 d7    	vmulps zmm18,zmm22,zmm23
  a24518:	62 a2 6d 48 b8 d0    	vfmadd231ps zmm18,zmm2,zmm16
  a2451e:	62 21 4c 40 59 c0    	vmulps zmm24,zmm22,zmm16
  a24524:	62 e2 7d 48 18 05 c2 	vbroadcastss zmm16,DWORD PTR [rip+0xffffffffff650fc2]        # 754f0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x29a0>
  a2452b:	0f 65 ff 
  a2452e:	62 22 6d 48 bc c7    	vfnmadd231ps zmm24,zmm2,zmm23
  a24534:	62 a1 34 48 59 f8    	vmulps zmm23,zmm9,zmm16
  a2453a:	62 f2 7d 48 18 15 b4 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff6510b4]        # 755f8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2aa8>
  a24541:	10 65 ff 
  a24544:	62 e2 35 40 bc fa    	vfnmadd231ps zmm23,zmm25,zmm2
  a2454a:	62 61 34 48 59 e2    	vmulps zmm28,zmm9,zmm2
  a24550:	62 91 64 48 5c d3    	vsubps zmm2,zmm3,zmm27
  a24556:	62 22 35 40 b8 e0    	vfmadd231ps zmm28,zmm25,zmm16
  a2455c:	62 a1 74 40 58 f5    	vaddps zmm22,zmm17,zmm21
  a24562:	62 31 6c 48 58 e6    	vaddps zmm12,zmm2,zmm22
  a24568:	62 91 5c 48 5c c2    	vsubps zmm0,zmm4,zmm26
  a2456e:	62 a1 6c 40 58 df    	vaddps zmm19,zmm18,zmm23
  a24574:	62 f1 24 40 58 db    	vaddps zmm3,zmm27,zmm3
  a2457a:	62 21 7c 48 58 cb    	vaddps zmm25,zmm0,zmm19
  a24580:	62 12 2d 48 ac fd    	vfnmadd213ps zmm15,zmm10,zmm29
  a24586:	62 81 3c 40 5c c4    	vsubps zmm16,zmm24,zmm28
  a2458c:	62 e2 2d 48 ac f2    	vfnmadd213ps zmm22,zmm10,zmm2
  a24592:	62 41 7c 48 28 d2    	vmovaps zmm26,zmm10
  a24598:	62 e2 2d 48 ac d8    	vfnmadd213ps zmm19,zmm10,zmm0
  a2459e:	62 d1 7c 48 28 c2    	vmovaps zmm0,zmm10
  a245a4:	62 72 7d 40 ac d3    	vfnmadd213ps zmm10,zmm16,zmm3
  a245aa:	62 b1 64 48 58 d8    	vaddps zmm3,zmm3,zmm16
  a245b0:	62 e1 7c 28 28 05 86 	vmovaps ymm16,YMMWORD PTR [rip+0xffffffffff652686]        # 76c40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x40f0>
  a245b7:	26 65 ff 
  a245ba:	62 d1 74 48 5c cb    	vsubps zmm1,zmm1,zmm11
  a245c0:	62 51 7c 48 28 cc    	vmovaps zmm9,zmm12
  a245c6:	62 52 7d 40 7f ce    	vpermt2ps zmm9,zmm16,zmm14
  a245cc:	62 51 44 48 5c c0    	vsubps zmm8,zmm7,zmm8
  a245d2:	62 f1 7c 48 28 fb    	vmovaps zmm7,zmm3
  a245d8:	62 92 7d 40 7f f9    	vpermt2ps zmm7,zmm16,zmm25
  a245de:	62 f1 7c 48 10 24 24 	vmovups zmm4,ZMMWORD PTR [rsp]
  a245e5:	62 91 7c 48 28 d7    	vmovaps zmm2,zmm31
  a245eb:	62 62 05 40 ac d4    	vfnmadd213ps zmm26,zmm31,zmm4
  a245f1:	62 01 74 48 59 de    	vmulps zmm27,zmm1,zmm30
  a245f7:	62 b1 74 40 5c cd    	vsubps zmm1,zmm17,zmm21
  a245fd:	62 01 2c 40 58 eb    	vaddps zmm29,zmm26,zmm27
  a24603:	62 f2 55 48 ac c6    	vfnmadd213ps zmm0,zmm5,zmm6
  a24609:	62 81 3c 48 59 ee    	vmulps zmm21,zmm8,zmm30
  a2460f:	62 31 14 48 5c ec    	vsubps zmm13,zmm13,zmm20
  a24615:	62 31 7c 48 5c c5    	vsubps zmm8,zmm0,zmm21
  a2461b:	62 81 3c 40 58 cc    	vaddps zmm17,zmm24,zmm28
  a24621:	62 51 7c 48 28 d8    	vmovaps zmm11,zmm8
  a24627:	62 12 7d 40 7f dd    	vpermt2ps zmm11,zmm16,zmm29
  a2462d:	62 81 74 48 59 e6    	vmulps zmm20,zmm1,zmm30
  a24633:	62 b1 6c 40 5c cf    	vsubps zmm1,zmm18,zmm23
  a24639:	62 a1 04 48 58 fc    	vaddps zmm23,zmm15,zmm20
  a2463f:	62 01 14 48 59 c6    	vmulps zmm24,zmm13,zmm30
  a24645:	62 01 74 40 59 e6    	vmulps zmm28,zmm17,zmm30
  a2464b:	62 01 74 48 59 f6    	vmulps zmm30,zmm1,zmm30
  a24651:	62 91 4c 40 5c c8    	vsubps zmm1,zmm22,zmm24
  a24657:	62 01 2c 40 5c d3    	vsubps zmm26,zmm26,zmm27
  a2465d:	62 e1 7c 48 28 c9    	vmovaps zmm17,zmm1
  a24663:	62 a2 7d 40 7f cf    	vpermt2ps zmm17,zmm16,zmm23
  a24669:	62 31 7c 48 58 ed    	vaddps zmm13,zmm0,zmm21
  a2466f:	62 01 64 40 58 dc    	vaddps zmm27,zmm19,zmm28
  a24675:	62 21 04 48 5c fc    	vsubps zmm31,zmm15,zmm20
  a2467b:	62 81 2c 48 5c d6    	vsubps zmm18,zmm10,zmm30
  a24681:	62 11 4c 40 58 f8    	vaddps zmm15,zmm22,zmm24
  a24687:	62 a1 7c 48 28 e2    	vmovaps zmm20,zmm18
  a2468d:	62 82 7d 40 7f e3    	vpermt2ps zmm20,zmm16,zmm27
  a24693:	62 81 64 40 5c f4    	vsubps zmm22,zmm19,zmm28
  a24699:	62 c1 7c 48 28 dd    	vmovaps zmm19,zmm13
  a2469f:	62 82 7d 40 7f da    	vpermt2ps zmm19,zmm16,zmm26
  a246a5:	62 91 2c 48 58 c6    	vaddps zmm0,zmm10,zmm30
  a246ab:	62 c1 7c 48 28 ef    	vmovaps zmm21,zmm15
  a246b1:	62 82 7d 40 7f ef    	vpermt2ps zmm21,zmm16,zmm31
  a246b7:	62 71 4c 48 58 d5    	vaddps zmm10,zmm6,zmm5
  a246bd:	62 f1 7c 48 28 f0    	vmovaps zmm6,zmm0
  a246c3:	62 b2 7d 40 7f f6    	vpermt2ps zmm6,zmm16,zmm22
  a246c9:	62 f1 5c 48 58 e2    	vaddps zmm4,zmm4,zmm2
  a246cf:	62 e2 2d 48 77 c4    	vpermi2ps zmm16,zmm10,zmm4
  a246d5:	62 f1 7c 48 28 2d e1 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff66bbe1]        # 902c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d770>
  a246dc:	bb 66 ff 
  a246df:	62 72 55 48 7f d4    	vpermt2ps zmm10,zmm5,zmm4
  a246e5:	62 52 55 48 7f e6    	vpermt2ps zmm12,zmm5,zmm14
  a246eb:	62 92 55 48 7f d9    	vpermt2ps zmm3,zmm5,zmm25
  a246f1:	62 12 55 48 7f c5    	vpermt2ps zmm8,zmm5,zmm29
  a246f7:	62 b2 55 48 7f cf    	vpermt2ps zmm1,zmm5,zmm23
  a246fd:	62 82 55 48 7f d3    	vpermt2ps zmm18,zmm5,zmm27
  a24703:	62 12 55 48 7f ea    	vpermt2ps zmm13,zmm5,zmm26
  a24709:	62 12 55 48 7f ff    	vpermt2ps zmm15,zmm5,zmm31
  a2470f:	62 b2 55 48 7f c6    	vpermt2ps zmm0,zmm5,zmm22
  a24715:	62 71 7c 48 11 16    	vmovups ZMMWORD PTR [rsi],zmm10
  a2471b:	62 e1 7c 28 11 46 02 	vmovups YMMWORD PTR [rsi+0x40],ymm16
  a24722:	62 71 7c 48 11 a6 60 	vmovups ZMMWORD PTR [rsi+0x60],zmm12
  a24729:	00 00 00 
  a2472c:	c5 7c 11 8e a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm9
  a24733:	00 
  a24734:	62 f1 7c 48 11 5e 03 	vmovups ZMMWORD PTR [rsi+0xc0],zmm3
  a2473b:	c5 fc 11 be 00 01 00 	vmovups YMMWORD PTR [rsi+0x100],ymm7
  a24742:	00 
  a24743:	62 71 7c 48 11 86 20 	vmovups ZMMWORD PTR [rsi+0x120],zmm8
  a2474a:	01 00 00 
  a2474d:	c5 7c 11 9e 60 01 00 	vmovups YMMWORD PTR [rsi+0x160],ymm11
  a24754:	00 
  a24755:	62 f1 7c 48 11 4e 06 	vmovups ZMMWORD PTR [rsi+0x180],zmm1
  a2475c:	62 e1 7c 28 11 4e 0e 	vmovups YMMWORD PTR [rsi+0x1c0],ymm17
  a24763:	62 e1 7c 48 11 96 e0 	vmovups ZMMWORD PTR [rsi+0x1e0],zmm18
  a2476a:	01 00 00 
  a2476d:	62 e1 7c 28 11 66 11 	vmovups YMMWORD PTR [rsi+0x220],ymm20
  a24774:	62 71 7c 48 11 6e 09 	vmovups ZMMWORD PTR [rsi+0x240],zmm13
  a2477b:	62 e1 7c 28 11 5e 14 	vmovups YMMWORD PTR [rsi+0x280],ymm19
  a24782:	62 71 7c 48 11 be a0 	vmovups ZMMWORD PTR [rsi+0x2a0],zmm15
  a24789:	02 00 00 
  a2478c:	62 e1 7c 28 11 6e 17 	vmovups YMMWORD PTR [rsi+0x2e0],ymm21
  a24793:	62 f1 7c 48 11 46 0c 	vmovups ZMMWORD PTR [rsi+0x300],zmm0
  a2479a:	c5 fc 11 b6 40 03 00 	vmovups YMMWORD PTR [rsi+0x340],ymm6
  a247a1:	00 
  a247a2:	48 81 c4 88 02 00 00 	add    rsp,0x288
  a247a9:	c5 f8 77             	vzeroupper
  a247ac:	c3                   	ret
