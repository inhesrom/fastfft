
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a51b40 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a51b40:	55                   	push   rbp
  a51b41:	48 89 e5             	mov    rbp,rsp
  a51b44:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a51b48:	48 81 ec c0 0c 00 00 	sub    rsp,0xcc0
  a51b4f:	c6 84 24 40 0c 00 00 	mov    BYTE PTR [rsp+0xc40],0x0
  a51b56:	00 
  a51b57:	48 8d 84 24 40 0c 00 	lea    rax,[rsp+0xc40]
  a51b5e:	00 
  a51b5f:	48 89 44 24 78       	mov    QWORD PTR [rsp+0x78],rax
  a51b64:	48 8d 44 24 78       	lea    rax,[rsp+0x78]
  a51b69:	62 71 7c 48 28 05 0d 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff64100d]        # 92b80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20030>
  a51b70:	10 64 ff 
  a51b73:	62 f1 7c 48 10 0f    	vmovups zmm1,ZMMWORD PTR [rdi]
  a51b79:	62 f1 7c 48 29 0c 24 	vmovaps ZMMWORD PTR [rsp],zmm1
  a51b80:	62 e1 7c 48 10 77 01 	vmovups zmm22,ZMMWORD PTR [rdi+0x40]
  a51b87:	62 71 7c 48 10 67 02 	vmovups zmm12,ZMMWORD PTR [rdi+0x80]
  a51b8e:	62 f1 7c 48 10 5f 03 	vmovups zmm3,ZMMWORD PTR [rdi+0xc0]
  a51b95:	62 b2 3d 48 7f ce    	vpermt2ps zmm1,zmm8,zmm22
  a51b9b:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm1
  a51ba2:	03 
  a51ba3:	62 e1 7c 48 10 5f 06 	vmovups zmm19,ZMMWORD PTR [rdi+0x180]
  a51baa:	62 f1 7c 48 10 6f 07 	vmovups zmm5,ZMMWORD PTR [rdi+0x1c0]
  a51bb1:	62 b1 7c 48 28 c3    	vmovaps zmm0,zmm19
  a51bb7:	62 31 7c 48 28 eb    	vmovaps zmm13,zmm19
  a51bbd:	62 f2 3d 48 7f c5    	vpermt2ps zmm0,zmm8,zmm5
  a51bc3:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm0
  a51bca:	09 
  a51bcb:	62 e1 7c 48 10 5f 18 	vmovups zmm19,ZMMWORD PTR [rdi+0x600]
  a51bd2:	62 f1 7c 48 10 4f 19 	vmovups zmm1,ZMMWORD PTR [rdi+0x640]
  a51bd9:	62 b1 7c 48 28 c3    	vmovaps zmm0,zmm19
  a51bdf:	62 f2 3d 48 7f c1    	vpermt2ps zmm0,zmm8,zmm1
  a51be5:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm0
  a51bec:	05 
  a51bed:	62 f1 7c 48 10 57 0c 	vmovups zmm2,ZMMWORD PTR [rdi+0x300]
  a51bf4:	62 f1 7c 48 10 47 0d 	vmovups zmm0,ZMMWORD PTR [rdi+0x340]
  a51bfb:	62 f1 7c 48 28 e2    	vmovaps zmm4,zmm2
  a51c01:	62 71 7c 48 28 f2    	vmovaps zmm14,zmm2
  a51c07:	62 f2 3d 48 7f e0    	vpermt2ps zmm4,zmm8,zmm0
  a51c0d:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm4
  a51c14:	08 
  a51c15:	62 f1 7c 48 10 67 12 	vmovups zmm4,ZMMWORD PTR [rdi+0x480]
  a51c1c:	62 f1 7c 48 10 57 13 	vmovups zmm2,ZMMWORD PTR [rdi+0x4c0]
  a51c23:	62 f1 7c 48 28 f4    	vmovaps zmm6,zmm4
  a51c29:	62 71 7c 48 28 fc    	vmovaps zmm15,zmm4
  a51c2f:	62 f2 3d 48 7f f2    	vpermt2ps zmm6,zmm8,zmm2
  a51c35:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm6
  a51c3c:	02 
  a51c3d:	62 f1 7c 48 10 77 0a 	vmovups zmm6,ZMMWORD PTR [rdi+0x280]
  a51c44:	62 f1 7c 48 10 67 0b 	vmovups zmm4,ZMMWORD PTR [rdi+0x2c0]
  a51c4b:	62 f1 7c 48 28 fe    	vmovaps zmm7,zmm6
  a51c51:	62 e1 7c 48 28 c6    	vmovaps zmm16,zmm6
  a51c57:	62 f2 3d 48 7f fc    	vpermt2ps zmm7,zmm8,zmm4
  a51c5d:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm7
  a51c64:	06 
  a51c65:	62 61 7c 48 10 47 10 	vmovups zmm24,ZMMWORD PTR [rdi+0x400]
  a51c6c:	62 f1 7c 48 10 77 11 	vmovups zmm6,ZMMWORD PTR [rdi+0x440]
  a51c73:	62 91 7c 48 28 f8    	vmovaps zmm7,zmm24
  a51c79:	62 f2 3d 48 7f fe    	vpermt2ps zmm7,zmm8,zmm6
  a51c7f:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm7
  a51c86:	07 
  a51c87:	62 e1 7c 48 10 4f 04 	vmovups zmm17,ZMMWORD PTR [rdi+0x100]
  a51c8e:	62 f1 7c 48 10 7f 05 	vmovups zmm7,ZMMWORD PTR [rdi+0x140]
  a51c95:	62 61 7c 48 10 77 16 	vmovups zmm30,ZMMWORD PTR [rdi+0x580]
  a51c9c:	62 71 7c 48 10 4f 17 	vmovups zmm9,ZMMWORD PTR [rdi+0x5c0]
  a51ca3:	62 01 7c 48 28 de    	vmovaps zmm27,zmm30
  a51ca9:	62 42 3d 48 7f d9    	vpermt2ps zmm27,zmm8,zmm9
  a51caf:	62 e1 7c 48 10 67 1c 	vmovups zmm20,ZMMWORD PTR [rdi+0x700]
  a51cb6:	62 71 7c 48 10 57 1d 	vmovups zmm10,ZMMWORD PTR [rdi+0x740]
  a51cbd:	62 61 7c 48 28 3d f9 	vmovaps zmm31,ZMMWORD PTR [rip+0xffffffffff640ef9]        # 92bc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20070>
  a51cc4:	0e 64 ff 
  a51cc7:	62 42 05 40 7f f1    	vpermt2ps zmm30,zmm31,zmm9
  a51ccd:	62 31 7c 48 28 cc    	vmovaps zmm9,zmm20
  a51cd3:	62 52 3d 48 7f ca    	vpermt2ps zmm9,zmm8,zmm10
  a51cd9:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm9
  a51ce0:	0b 
  a51ce1:	62 c2 05 40 7f e2    	vpermt2ps zmm20,zmm31,zmm10
  a51ce7:	62 a1 7c 48 28 f9    	vmovaps zmm23,zmm17
  a51ced:	62 e2 3d 48 7f ff    	vpermt2ps zmm23,zmm8,zmm7
  a51cf3:	62 62 05 40 7f c6    	vpermt2ps zmm24,zmm31,zmm6
  a51cf9:	62 f1 7c 48 10 77 14 	vmovups zmm6,ZMMWORD PTR [rdi+0x500]
  a51d00:	62 e2 05 40 7f cf    	vpermt2ps zmm17,zmm31,zmm7
  a51d06:	62 d1 7c 48 28 fc    	vmovaps zmm7,zmm12
  a51d0c:	62 f2 3d 48 7f fb    	vpermt2ps zmm7,zmm8,zmm3
  a51d12:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm7
  a51d19:	18 
  a51d1a:	62 72 05 40 7f e3    	vpermt2ps zmm12,zmm31,zmm3
  a51d20:	62 f1 7c 48 10 5f 15 	vmovups zmm3,ZMMWORD PTR [rdi+0x540]
  a51d27:	62 f1 7c 48 28 fe    	vmovaps zmm7,zmm6
  a51d2d:	62 71 7c 48 28 d6    	vmovaps zmm10,zmm6
  a51d33:	62 f2 3d 48 7f fb    	vpermt2ps zmm7,zmm8,zmm3
  a51d39:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm7
  a51d40:	0a 
  a51d41:	62 61 7c 48 10 57 1a 	vmovups zmm26,ZMMWORD PTR [rdi+0x680]
  a51d48:	62 f1 7c 48 10 77 1b 	vmovups zmm6,ZMMWORD PTR [rdi+0x6c0]
  a51d4f:	62 91 7c 48 28 fa    	vmovaps zmm7,zmm26
  a51d55:	62 f2 3d 48 7f fe    	vpermt2ps zmm7,zmm8,zmm6
  a51d5b:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm7
  a51d62:	17 
  a51d63:	62 61 7c 48 10 4f 0e 	vmovups zmm25,ZMMWORD PTR [rdi+0x380]
  a51d6a:	62 f1 7c 48 10 7f 0f 	vmovups zmm7,ZMMWORD PTR [rdi+0x3c0]
  a51d71:	62 01 7c 48 28 e1    	vmovaps zmm28,zmm25
  a51d77:	62 62 3d 48 7f e7    	vpermt2ps zmm28,zmm8,zmm7
  a51d7d:	62 61 7c 48 10 6f 08 	vmovups zmm29,ZMMWORD PTR [rdi+0x200]
  a51d84:	62 71 7c 48 10 4f 09 	vmovups zmm9,ZMMWORD PTR [rdi+0x240]
  a51d8b:	62 52 15 40 77 c1    	vpermi2ps zmm8,zmm29,zmm9
  a51d91:	62 42 05 40 7f e9    	vpermt2ps zmm29,zmm31,zmm9
  a51d97:	62 62 05 40 7f d6    	vpermt2ps zmm26,zmm31,zmm6
  a51d9d:	62 62 05 40 7f cf    	vpermt2ps zmm25,zmm31,zmm7
  a51da3:	62 72 05 40 7f f0    	vpermt2ps zmm14,zmm31,zmm0
  a51da9:	62 71 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm14
  a51db0:	13 
  a51db1:	62 72 05 40 7f fa    	vpermt2ps zmm15,zmm31,zmm2
  a51db7:	62 51 7c 48 28 cf    	vmovaps zmm9,zmm15
  a51dbd:	62 71 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm15
  a51dc4:	0d 
  a51dc5:	62 d1 7c 48 28 f5    	vmovaps zmm6,zmm13
  a51dcb:	62 f2 05 40 7f f5    	vpermt2ps zmm6,zmm31,zmm5
  a51dd1:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm6
  a51dd8:	11 
  a51dd9:	62 b1 7c 48 28 eb    	vmovaps zmm5,zmm19
  a51ddf:	62 f2 05 40 7f e9    	vpermt2ps zmm5,zmm31,zmm1
  a51de5:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm5
  a51dec:	12 
  a51ded:	62 e2 05 40 7f c4    	vpermt2ps zmm16,zmm31,zmm4
  a51df3:	62 e1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm16
  a51dfa:	04 
  a51dfb:	62 72 05 40 7f d3    	vpermt2ps zmm10,zmm31,zmm3
  a51e01:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm10
  a51e08:	0c 
  a51e09:	62 f1 7c 48 28 04 24 	vmovaps zmm0,ZMMWORD PTR [rsp]
  a51e10:	62 b2 05 40 7f c6    	vpermt2ps zmm0,zmm31,zmm22
  a51e16:	62 f1 7c 48 29 04 24 	vmovaps ZMMWORD PTR [rsp],zmm0
  a51e1d:	62 81 7c 48 28 de    	vmovaps zmm19,zmm30
  a51e23:	62 b1 0c 40 5c c4    	vsubps zmm0,zmm30,zmm20
  a51e29:	62 b1 3c 40 5c c9    	vsubps zmm1,zmm24,zmm17
  a51e2f:	62 e2 7d 48 18 35 1f 	vbroadcastss zmm22,DWORD PTR [rip+0xffffffffff62391f]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a51e36:	39 62 ff 
  a51e39:	62 31 74 48 59 fe    	vmulps zmm15,zmm1,zmm22
  a51e3f:	62 f2 7d 48 18 15 57 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff623557]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a51e46:	35 62 ff 
  a51e49:	62 72 7d 48 bc fa    	vfnmadd231ps zmm15,zmm0,zmm2
  a51e4f:	62 21 7c 48 59 f6    	vmulps zmm30,zmm0,zmm22
  a51e55:	62 62 6d 48 b8 f1    	vfmadd231ps zmm30,zmm2,zmm1
  a51e5b:	62 91 1c 48 5c c5    	vsubps zmm0,zmm12,zmm29
  a51e61:	62 91 2c 40 5c c9    	vsubps zmm1,zmm26,zmm25
  a51e67:	62 31 74 48 59 ee    	vmulps zmm13,zmm1,zmm22
  a51e6d:	62 72 7d 48 bc ea    	vfnmadd231ps zmm13,zmm0,zmm2
  a51e73:	62 b1 7c 48 59 c6    	vmulps zmm0,zmm0,zmm22
  a51e79:	62 f2 6d 48 b8 c1    	vfmadd231ps zmm0,zmm2,zmm1
  a51e7f:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm0
  a51e86:	15 
  a51e87:	62 d1 0c 48 5c c9    	vsubps zmm1,zmm14,zmm9
  a51e8d:	62 f1 4c 48 5c ed    	vsubps zmm5,zmm6,zmm5
  a51e93:	62 b1 54 48 59 e6    	vmulps zmm4,zmm5,zmm22
  a51e99:	62 f2 75 48 bc e2    	vfnmadd231ps zmm4,zmm1,zmm2
  a51e9f:	62 a1 74 48 59 d6    	vmulps zmm18,zmm1,zmm22
  a51ea5:	62 e2 6d 48 b8 d5    	vfmadd231ps zmm18,zmm2,zmm5
  a51eab:	62 e1 7c 48 28 6c 24 	vmovaps zmm21,ZMMWORD PTR [rsp+0x2c0]
  a51eb2:	0b 
  a51eb3:	62 b1 24 40 5c ed    	vsubps zmm5,zmm27,zmm21
  a51eb9:	62 71 7c 48 28 74 24 	vmovaps zmm14,ZMMWORD PTR [rsp+0x1c0]
  a51ec0:	07 
  a51ec1:	62 b1 0c 48 5c ff    	vsubps zmm7,zmm14,zmm23
  a51ec7:	62 31 44 48 59 d6    	vmulps zmm10,zmm7,zmm22
  a51ecd:	62 72 55 48 bc d2    	vfnmadd231ps zmm10,zmm5,zmm2
  a51ed3:	62 b1 54 48 59 c6    	vmulps zmm0,zmm5,zmm22
  a51ed9:	62 f2 6d 48 b8 c7    	vfmadd231ps zmm0,zmm2,zmm7
  a51edf:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm0
  a51ee6:	0e 
  a51ee7:	62 71 7c 48 28 5c 24 	vmovaps zmm11,ZMMWORD PTR [rsp+0x600]
  a51eee:	18 
  a51eef:	62 d1 24 48 5c f8    	vsubps zmm7,zmm11,zmm8
  a51ef5:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x5c0]
  a51efc:	17 
  a51efd:	62 01 34 48 5c fc    	vsubps zmm31,zmm9,zmm28
  a51f03:	62 a1 04 40 59 c6    	vmulps zmm16,zmm31,zmm22
  a51f09:	62 e2 45 48 bc c2    	vfnmadd231ps zmm16,zmm7,zmm2
  a51f0f:	62 b1 44 48 59 c6    	vmulps zmm0,zmm7,zmm22
  a51f15:	62 92 6d 48 b8 c7    	vfmadd231ps zmm0,zmm2,zmm31
  a51f1b:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm0
  a51f22:	14 
  a51f23:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x200]
  a51f2a:	08 
  a51f2b:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x80]
  a51f32:	02 
  a51f33:	62 f1 44 48 5c c3    	vsubps zmm0,zmm7,zmm3
  a51f39:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x240]
  a51f40:	09 
  a51f41:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x140]
  a51f48:	05 
  a51f49:	62 f1 54 48 5c ce    	vsubps zmm1,zmm5,zmm6
  a51f4f:	62 21 74 48 59 fe    	vmulps zmm31,zmm1,zmm22
  a51f55:	62 62 7d 48 bc fa    	vfnmadd231ps zmm31,zmm0,zmm2
  a51f5b:	62 b1 7c 48 59 c6    	vmulps zmm0,zmm0,zmm22
  a51f61:	62 f2 75 48 b8 c2    	vfmadd231ps zmm0,zmm1,zmm2
  a51f67:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm0
  a51f6e:	16 
  a51f6f:	62 f1 54 48 58 c6    	vaddps zmm0,zmm5,zmm6
  a51f75:	62 f1 44 48 58 cb    	vaddps zmm1,zmm7,zmm3
  a51f7b:	62 b1 0c 48 58 d7    	vaddps zmm2,zmm14,zmm23
  a51f81:	62 a1 24 40 58 fd    	vaddps zmm23,zmm27,zmm21
  a51f87:	62 01 34 48 58 e4    	vaddps zmm28,zmm9,zmm28
  a51f8d:	62 51 24 48 58 c0    	vaddps zmm8,zmm11,zmm8
  a51f93:	62 b1 64 40 58 f4    	vaddps zmm6,zmm19,zmm20
  a51f99:	62 a1 3c 40 58 e1    	vaddps zmm20,zmm24,zmm17
  a51f9f:	62 91 1c 48 58 fd    	vaddps zmm7,zmm12,zmm29
  a51fa5:	62 91 2c 40 58 e9    	vaddps zmm5,zmm26,zmm25
  a51fab:	62 62 7d 48 18 0d 8f 	vbroadcastss zmm25,DWORD PTR [rip+0xffffffffff62368f]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a51fb2:	36 62 ff 
  a51fb5:	62 01 7c 48 28 c1    	vmovaps zmm24,zmm25
  a51fbb:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x180]
  a51fc2:	06 
  a51fc3:	62 62 6d 48 ac c3    	vfnmadd213ps zmm24,zmm2,zmm3
  a51fc9:	62 61 64 48 58 d2    	vaddps zmm26,zmm3,zmm2
  a51fcf:	62 72 7d 48 18 25 0f 	vbroadcastss zmm12,DWORD PTR [rip+0xffffffffff62370f]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a51fd6:	37 62 ff 
  a51fd9:	62 f2 1d 48 b8 da    	vfmadd231ps zmm3,zmm12,zmm2
  a51fdf:	62 31 2c 40 58 cf    	vaddps zmm9,zmm26,zmm23
  a51fe5:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x800],zmm9
  a51fec:	20 
  a51fed:	62 42 45 40 b8 c4    	vfmadd231ps zmm24,zmm23,zmm12
  a51ff3:	62 b2 35 40 bc df    	vfnmadd231ps zmm3,zmm25,zmm23
  a51ff9:	62 e1 7c 48 28 eb    	vmovaps zmm21,zmm3
  a51fff:	62 91 7c 48 28 d1    	vmovaps zmm2,zmm25
  a52005:	62 71 7c 48 28 74 24 	vmovaps zmm14,ZMMWORD PTR [rsp+0x280]
  a5200c:	0a 
  a5200d:	62 d2 1d 40 ac d6    	vfnmadd213ps zmm2,zmm28,zmm14
  a52013:	62 81 0c 48 58 fc    	vaddps zmm23,zmm14,zmm28
  a52019:	62 12 1d 48 b8 f4    	vfmadd231ps zmm14,zmm12,zmm28
  a5201f:	62 41 44 40 58 d8    	vaddps zmm27,zmm23,zmm8
  a52025:	62 61 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm27
  a5202c:	0f 
  a5202d:	62 d2 3d 48 b8 d4    	vfmadd231ps zmm2,zmm8,zmm12
  a52033:	62 52 35 40 bc f0    	vfnmadd231ps zmm14,zmm25,zmm8
  a52039:	62 11 7c 48 28 c1    	vmovaps zmm8,zmm25
  a5203f:	62 e1 7c 48 28 4c 24 	vmovaps zmm17,ZMMWORD PTR [rsp+0xc0]
  a52046:	03 
  a52047:	62 32 7d 48 ac c1    	vfnmadd213ps zmm8,zmm0,zmm17
  a5204d:	62 e1 74 40 58 f8    	vaddps zmm23,zmm17,zmm0
  a52053:	62 e2 1d 48 b8 c8    	vfmadd231ps zmm17,zmm12,zmm0
  a52059:	62 f1 44 40 58 c1    	vaddps zmm0,zmm23,zmm1
  a5205f:	62 52 75 48 b8 c4    	vfmadd231ps zmm8,zmm1,zmm12
  a52065:	62 e2 35 40 bc c9    	vfnmadd231ps zmm17,zmm25,zmm1
  a5206b:	62 c1 5c 48 58 f8    	vaddps zmm23,zmm4,zmm8
  a52071:	62 f1 3c 48 5c cc    	vsubps zmm1,zmm8,zmm4
  a52077:	62 91 04 48 58 d8    	vaddps zmm3,zmm15,zmm24
  a5207d:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x7c0],zmm3
  a52084:	1f 
  a52085:	62 d1 3c 40 5c df    	vsubps zmm3,zmm24,zmm15
  a5208b:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm3
  a52092:	10 
  a52093:	62 f1 14 48 58 e2    	vaddps zmm4,zmm13,zmm2
  a52099:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x780],zmm4
  a520a0:	1e 
  a520a1:	62 d1 6c 48 5c d5    	vsubps zmm2,zmm2,zmm13
  a520a7:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm2
  a520ae:	08 
  a520af:	62 72 7d 48 18 05 a7 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff6233a7]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a520b6:	33 62 ff 
  a520b9:	62 61 64 48 58 d2    	vaddps zmm26,zmm3,zmm2
  a520bf:	62 91 74 48 58 d2    	vaddps zmm2,zmm1,zmm26
  a520c5:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm2
  a520cc:	02 
  a520cd:	62 62 3d 48 ac d1    	vfnmadd213ps zmm26,zmm8,zmm1
  a520d3:	62 91 7c 48 28 c9    	vmovaps zmm1,zmm25
  a520d9:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x100]
  a520e0:	04 
  a520e1:	62 f2 5d 40 ac cb    	vfnmadd213ps zmm1,zmm20,zmm3
  a520e7:	62 d2 4d 48 b8 cc    	vfmadd231ps zmm1,zmm6,zmm12
  a520ed:	62 41 74 48 5c e2    	vsubps zmm28,zmm1,zmm10
  a520f3:	62 41 74 48 58 c2    	vaddps zmm24,zmm1,zmm10
  a520f9:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x440]
  a52100:	11 
  a52101:	62 f1 74 48 58 54 24 	vaddps zmm2,zmm1,ZMMWORD PTR [rsp+0x480]
  a52108:	12 
  a52109:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x4c0]
  a52110:	13 
  a52111:	62 61 74 48 58 6c 24 	vaddps zmm29,zmm1,ZMMWORD PTR [rsp+0x340]
  a52118:	0d 
  a52119:	62 91 7c 48 28 e1    	vmovaps zmm4,zmm25
  a5211f:	62 e1 7c 48 28 1c 24 	vmovaps zmm19,ZMMWORD PTR [rsp]
  a52126:	62 b2 6d 48 ac e3    	vfnmadd213ps zmm4,zmm2,zmm19
  a5212c:	62 f1 64 40 58 ca    	vaddps zmm1,zmm19,zmm2
  a52132:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm1
  a52139:	0d 
  a5213a:	62 c2 6d 48 b8 dc    	vfmadd231ps zmm19,zmm2,zmm12
  a52140:	62 51 7c 48 28 dc    	vmovaps zmm11,zmm12
  a52146:	62 72 5d 40 a8 db    	vfmadd213ps zmm11,zmm20,zmm3
  a5214c:	62 f1 7c 48 28 cb    	vmovaps zmm1,zmm3
  a52152:	62 12 4d 48 bc d9    	vfnmadd231ps zmm11,zmm6,zmm25
  a52158:	62 d1 7c 48 28 dc    	vmovaps zmm3,zmm12
  a5215e:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x300]
  a52165:	0c 
  a52166:	62 f2 55 48 a8 da    	vfmadd213ps zmm3,zmm5,zmm2
  a5216c:	62 92 45 48 bc d9    	vfnmadd231ps zmm3,zmm7,zmm25
  a52172:	62 82 15 40 bc d9    	vfnmadd231ps zmm19,zmm29,zmm25
  a52178:	62 62 55 48 ac ca    	vfnmadd213ps zmm25,zmm5,zmm2
  a5217e:	62 42 45 48 b8 cc    	vfmadd231ps zmm25,zmm7,zmm12
  a52184:	62 a1 34 40 5c f0    	vsubps zmm22,zmm25,zmm16
  a5218a:	62 21 34 40 58 c8    	vaddps zmm25,zmm25,zmm16
  a52190:	62 11 34 48 58 eb    	vaddps zmm13,zmm9,zmm27
  a52196:	62 51 7c 48 58 cd    	vaddps zmm9,zmm0,zmm13
  a5219c:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm9
  a521a3:	03 
  a521a4:	62 72 3d 48 ac e8    	vfnmadd213ps zmm13,zmm8,zmm0
  a521aa:	62 b1 74 48 58 c4    	vaddps zmm0,zmm1,zmm20
  a521b0:	62 e1 7c 48 58 e6    	vaddps zmm20,zmm0,zmm6
  a521b6:	62 f1 6c 48 58 c5    	vaddps zmm0,zmm2,zmm5
  a521bc:	62 71 7c 48 58 d7    	vaddps zmm10,zmm0,zmm7
  a521c2:	62 b1 6c 40 58 d1    	vaddps zmm2,zmm18,zmm17
  a521c8:	62 b1 74 40 5c fa    	vsubps zmm7,zmm17,zmm18
  a521ce:	62 31 0c 40 58 cd    	vaddps zmm9,zmm30,zmm21
  a521d4:	62 81 54 40 5c ce    	vsubps zmm17,zmm21,zmm30
  a521da:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x540]
  a521e1:	15 
  a521e2:	62 41 74 48 58 f6    	vaddps zmm30,zmm1,zmm14
  a521e8:	62 f1 0c 48 5c c1    	vsubps zmm0,zmm14,zmm1
  a521ee:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  a521f5:	04 
  a521f6:	62 81 34 48 58 c6    	vaddps zmm16,zmm9,zmm30
  a521fc:	62 c1 7c 48 28 d0    	vmovaps zmm18,zmm8
  a52202:	62 e2 7d 40 ac d2    	vfnmadd213ps zmm18,zmm16,zmm2
  a52208:	62 f2 7d 48 18 35 c2 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff6230c2]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a5220f:	30 62 ff 
  a52212:	62 71 7c 48 28 7c 24 	vmovaps zmm15,ZMMWORD PTR [rsp+0x380]
  a52219:	0e 
  a5221a:	62 d1 24 48 5c ef    	vsubps zmm5,zmm11,zmm15
  a52220:	62 e1 7c 48 28 6c 24 	vmovaps zmm21,ZMMWORD PTR [rsp+0x500]
  a52227:	14 
  a52228:	62 b1 64 48 5c cd    	vsubps zmm1,zmm3,zmm21
  a5222e:	62 71 54 48 5c f1    	vsubps zmm14,zmm5,zmm1
  a52234:	62 71 0c 48 59 f6    	vmulps zmm14,zmm14,zmm6
  a5223a:	62 41 6c 40 5c de    	vsubps zmm27,zmm18,zmm14
  a52240:	62 61 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm27
  a52247:	09 
  a52248:	62 51 6c 40 58 f6    	vaddps zmm14,zmm18,zmm14
  a5224e:	62 71 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm14
  a52255:	0b 
  a52256:	62 71 74 40 58 f0    	vaddps zmm14,zmm17,zmm0
  a5225c:	62 c1 44 48 58 d6    	vaddps zmm18,zmm7,zmm14
  a52262:	62 e1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm18
  a52269:	06 
  a5226a:	62 72 3d 48 ac f7    	vfnmadd213ps zmm14,zmm8,zmm7
  a52270:	62 51 24 48 58 df    	vaddps zmm11,zmm11,zmm15
  a52276:	62 b1 64 48 58 dd    	vaddps zmm3,zmm3,zmm21
  a5227c:	62 b1 6c 48 58 c0    	vaddps zmm0,zmm2,zmm16
  a52282:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm0
  a52289:	18 
  a5228a:	62 d1 5c 40 5c c2    	vsubps zmm0,zmm20,zmm10
  a52290:	62 f1 7c 48 59 fe    	vmulps zmm7,zmm0,zmm6
  a52296:	62 61 14 48 5c df    	vsubps zmm27,zmm13,zmm7
  a5229c:	62 d1 44 48 58 c5    	vaddps zmm0,zmm7,zmm13
  a522a2:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm0
  a522a9:	05 
  a522aa:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x7c0]
  a522b1:	1f 
  a522b2:	62 e1 7c 48 28 54 24 	vmovaps zmm18,ZMMWORD PTR [rsp+0x780]
  a522b9:	1e 
  a522ba:	62 b1 6c 48 58 fa    	vaddps zmm7,zmm2,zmm18
  a522c0:	62 51 7c 48 28 e8    	vmovaps zmm13,zmm8
  a522c6:	62 32 45 48 ac ef    	vfnmadd213ps zmm13,zmm7,zmm23
  a522cc:	62 31 1c 40 5c fe    	vsubps zmm15,zmm28,zmm22
  a522d2:	62 71 04 48 59 fe    	vmulps zmm15,zmm15,zmm6
  a522d8:	62 d1 14 48 58 c7    	vaddps zmm0,zmm13,zmm15
  a522de:	62 51 14 48 5c ef    	vsubps zmm13,zmm13,zmm15
  a522e4:	62 71 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm13
  a522eb:	17 
  a522ec:	62 f1 44 40 58 ff    	vaddps zmm7,zmm23,zmm7
  a522f2:	62 f1 7c 48 29 3c 24 	vmovaps ZMMWORD PTR [rsp],zmm7
  a522f9:	62 f1 24 48 5c fb    	vsubps zmm7,zmm11,zmm3
  a522ff:	62 f1 44 48 59 fe    	vmulps zmm7,zmm7,zmm6
  a52305:	62 71 0c 48 5c ef    	vsubps zmm13,zmm14,zmm7
  a5230b:	62 71 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm13
  a52312:	0a 
  a52313:	62 f1 0c 48 58 ff    	vaddps zmm7,zmm14,zmm7
  a52319:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm7
  a52320:	0e 
  a52321:	62 91 3c 40 5c f9    	vsubps zmm7,zmm24,zmm25
  a52327:	62 f1 44 48 59 fe    	vmulps zmm7,zmm7,zmm6
  a5232d:	62 71 2c 40 58 ff    	vaddps zmm15,zmm26,zmm7
  a52333:	62 f1 2c 40 5c ff    	vsubps zmm7,zmm26,zmm7
  a52339:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm7
  a52340:	07 
  a52341:	62 d2 15 40 b8 e4    	vfmadd231ps zmm4,zmm29,zmm12
  a52347:	62 71 14 40 58 64 24 	vaddps zmm12,zmm29,ZMMWORD PTR [rsp+0x340]
  a5234e:	0d 
  a5234f:	62 51 5c 40 58 ea    	vaddps zmm13,zmm20,zmm10
  a52355:	62 a1 1c 40 58 c6    	vaddps zmm16,zmm28,zmm22
  a5235b:	62 31 6c 48 5c f2    	vsubps zmm14,zmm2,zmm18
  a52361:	62 11 34 48 5c ce    	vsubps zmm9,zmm9,zmm30
  a52367:	62 f1 54 48 58 d1    	vaddps zmm2,zmm5,zmm1
  a5236d:	62 91 5c 48 5c ff    	vsubps zmm7,zmm4,zmm31
  a52373:	62 91 5c 48 58 e7    	vaddps zmm4,zmm4,zmm31
  a52379:	62 01 3c 40 58 c9    	vaddps zmm25,zmm24,zmm25
  a5237f:	62 81 5c 48 58 d1    	vaddps zmm18,zmm4,zmm25
  a52385:	62 62 3d 48 ac cc    	vfnmadd213ps zmm25,zmm8,zmm4
  a5238b:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x400]
  a52392:	10 
  a52393:	62 f1 74 48 5c 64 24 	vsubps zmm4,zmm1,ZMMWORD PTR [rsp+0x200]
  a5239a:	08 
  a5239b:	62 41 1c 48 58 f5    	vaddps zmm30,zmm12,zmm13
  a523a1:	62 52 3d 48 ac ec    	vfnmadd213ps zmm13,zmm8,zmm12
  a523a7:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x800]
  a523ae:	20 
  a523af:	62 71 74 48 5c 64 24 	vsubps zmm12,zmm1,ZMMWORD PTR [rsp+0x3c0]
  a523b6:	0f 
  a523b7:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x580]
  a523be:	16 
  a523bf:	62 e1 64 40 5c e1    	vsubps zmm20,zmm19,zmm1
  a523c5:	62 e1 64 40 58 e9    	vaddps zmm21,zmm19,zmm1
  a523cb:	62 f1 24 48 58 db    	vaddps zmm3,zmm11,zmm3
  a523d1:	62 51 7c 48 28 d8    	vmovaps zmm11,zmm8
  a523d7:	62 c1 7c 48 28 f0    	vmovaps zmm22,zmm8
  a523dd:	62 32 65 48 ac c5    	vfnmadd213ps zmm8,zmm3,zmm21
  a523e3:	62 61 54 40 58 c3    	vaddps zmm24,zmm21,zmm3
  a523e9:	62 f1 34 48 59 de    	vmulps zmm3,zmm9,zmm6
  a523ef:	62 a2 6d 48 ac f4    	vfnmadd213ps zmm22,zmm2,zmm20
  a523f5:	62 a1 64 48 58 ee    	vaddps zmm21,zmm3,zmm22
  a523fb:	62 61 4c 40 5c eb    	vsubps zmm29,zmm22,zmm3
  a52401:	62 f1 74 40 5c 5c 24 	vsubps zmm3,zmm17,ZMMWORD PTR [rsp+0x100]
  a52408:	04 
  a52409:	62 71 0c 48 59 ce    	vmulps zmm9,zmm14,zmm6
  a5240f:	62 f1 5c 48 59 e6    	vmulps zmm4,zmm4,zmm6
  a52415:	62 71 1c 48 59 f6    	vmulps zmm14,zmm12,zmm6
  a5241b:	62 f1 64 48 59 de    	vmulps zmm3,zmm3,zmm6
  a52421:	62 72 7d 40 ac df    	vfnmadd213ps zmm11,zmm16,zmm7
  a52427:	62 71 5c 40 58 e2    	vaddps zmm12,zmm20,zmm2
  a5242d:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm12
  a52434:	16 
  a52435:	62 51 14 48 58 d6    	vaddps zmm10,zmm13,zmm14
  a5243b:	62 c1 14 48 5c fe    	vsubps zmm23,zmm13,zmm14
  a52441:	62 51 24 48 5c e9    	vsubps zmm13,zmm11,zmm9
  a52447:	62 c1 24 48 58 f1    	vaddps zmm22,zmm11,zmm9
  a5244d:	62 f1 7c 48 28 35 29 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff674b29]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a52454:	4b 67 ff 
  a52457:	62 b1 44 48 58 d0    	vaddps zmm2,zmm7,zmm16
  a5245d:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm2
  a52464:	04 
  a52465:	62 c1 64 48 58 c0    	vaddps zmm16,zmm3,zmm8
  a5246b:	62 61 3c 48 5c d3    	vsubps zmm26,zmm8,zmm3
  a52471:	62 f1 34 40 5c ec    	vsubps zmm5,zmm25,zmm4
  a52477:	62 61 34 40 58 e4    	vaddps zmm28,zmm25,zmm4
  a5247d:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0xc0]
  a52484:	03 
  a52485:	62 f1 7c 48 28 d9    	vmovaps zmm3,zmm1
  a5248b:	62 f2 4d 48 7f d8    	vpermt2ps zmm3,zmm6,zmm0
  a52491:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm3
  a52498:	08 
  a52499:	62 61 7c 48 28 0d 1d 	vmovaps zmm25,ZMMWORD PTR [rip+0xffffffffff674b1d]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a524a0:	4b 67 ff 
  a524a3:	62 f2 35 40 7f c8    	vpermt2ps zmm1,zmm25,zmm0
  a524a9:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm1
  a524b0:	03 
  a524b1:	62 e1 7c 48 28 4c 24 	vmovaps zmm17,ZMMWORD PTR [rsp+0x240]
  a524b8:	09 
  a524b9:	62 b1 7c 48 28 c1    	vmovaps zmm0,zmm17
  a524bf:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x80]
  a524c6:	02 
  a524c7:	62 f2 4d 48 7f c1    	vpermt2ps zmm0,zmm6,zmm1
  a524cd:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm0
  a524d4:	15 
  a524d5:	62 e2 35 40 7f c9    	vpermt2ps zmm17,zmm25,zmm1
  a524db:	62 e1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm17
  a524e2:	09 
  a524e3:	62 c1 7c 48 28 df    	vmovaps zmm19,zmm15
  a524e9:	62 82 4d 48 7f db    	vpermt2ps zmm19,zmm6,zmm27
  a524ef:	62 12 35 40 7f fb    	vpermt2ps zmm15,zmm25,zmm27
  a524f5:	62 71 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm15
  a524fc:	02 
  a524fd:	62 71 7c 48 28 74 24 	vmovaps zmm14,ZMMWORD PTR [rsp+0x180]
  a52504:	06 
  a52505:	62 d1 7c 48 28 ce    	vmovaps zmm1,zmm14
  a5250b:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x2c0]
  a52512:	0b 
  a52513:	62 f2 4d 48 7f cb    	vpermt2ps zmm1,zmm6,zmm3
  a52519:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm1
  a52520:	0c 
  a52521:	62 72 35 40 7f f3    	vpermt2ps zmm14,zmm25,zmm3
  a52527:	62 71 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm14
  a5252e:	06 
  a5252f:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x280]
  a52536:	0a 
  a52537:	62 61 7c 48 28 f8    	vmovaps zmm31,zmm0
  a5253d:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x600]
  a52544:	18 
  a52545:	62 62 4d 48 7f f9    	vpermt2ps zmm31,zmm6,zmm1
  a5254b:	62 f2 35 40 7f c1    	vpermt2ps zmm0,zmm25,zmm1
  a52551:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm0
  a52558:	0a 
  a52559:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x140]
  a52560:	05 
  a52561:	62 f1 7c 48 28 c8    	vmovaps zmm1,zmm0
  a52567:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x5c0]
  a5256e:	17 
  a5256f:	62 f2 4d 48 7f cb    	vpermt2ps zmm1,zmm6,zmm3
  a52575:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x740],zmm1
  a5257c:	1d 
  a5257d:	62 f2 35 40 7f c3    	vpermt2ps zmm0,zmm25,zmm3
  a52583:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm0
  a5258a:	05 
  a5258b:	62 f1 7c 48 28 04 24 	vmovaps zmm0,ZMMWORD PTR [rsp]
  a52592:	62 e1 7c 48 28 e0    	vmovaps zmm20,zmm0
  a52598:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x380]
  a5259f:	0e 
  a525a0:	62 e2 4d 48 7f e1    	vpermt2ps zmm20,zmm6,zmm1
  a525a6:	62 f2 35 40 7f c1    	vpermt2ps zmm0,zmm25,zmm1
  a525ac:	62 f1 7c 48 29 04 24 	vmovaps ZMMWORD PTR [rsp],zmm0
  a525b3:	62 11 7c 48 28 c6    	vmovaps zmm8,zmm30
  a525b9:	62 11 7c 48 28 ce    	vmovaps zmm9,zmm30
  a525bf:	62 52 35 40 7f cd    	vpermt2ps zmm9,zmm25,zmm13
  a525c5:	62 d1 7c 48 28 cd    	vmovaps zmm1,zmm13
  a525cb:	62 b1 7c 48 28 c5    	vmovaps zmm0,zmm21
  a525d1:	62 b2 35 40 7f c2    	vpermt2ps zmm0,zmm25,zmm18
  a525d7:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm0
  a525de:	0b 
  a525df:	62 71 7c 48 28 ed    	vmovaps zmm13,zmm5
  a525e5:	62 61 7c 48 28 f5    	vmovaps zmm30,zmm5
  a525eb:	62 52 35 40 7f ea    	vpermt2ps zmm13,zmm25,zmm10
  a525f1:	62 51 7c 48 28 fa    	vmovaps zmm15,zmm10
  a525f7:	62 91 7c 48 28 e0    	vmovaps zmm4,zmm24
  a525fd:	62 11 7c 48 28 d0    	vmovaps zmm10,zmm24
  a52603:	62 12 35 40 7f d5    	vpermt2ps zmm10,zmm25,zmm29
  a52609:	62 91 7c 48 28 dd    	vmovaps zmm3,zmm29
  a5260f:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0xb80],zmm10
  a52616:	2e 
  a52617:	62 b1 7c 48 28 e8    	vmovaps zmm5,zmm16
  a5261d:	62 21 7c 48 28 c0    	vmovaps zmm24,zmm16
  a52623:	62 d2 35 40 7f ec    	vpermt2ps zmm5,zmm25,zmm12
  a52629:	62 b1 7c 48 28 c7    	vmovaps zmm0,zmm23
  a5262f:	62 b2 35 40 7f c6    	vpermt2ps zmm0,zmm25,zmm22
  a52635:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x700],zmm0
  a5263c:	1c 
  a5263d:	62 e1 7c 48 28 ca    	vmovaps zmm17,zmm2
  a52643:	62 82 35 40 7f ca    	vpermt2ps zmm17,zmm25,zmm26
  a52649:	c4 41 20 57 db       	vxorps xmm11,xmm11,xmm11
  a5264e:	62 01 7c 48 28 ec    	vmovaps zmm29,zmm28
  a52654:	62 42 35 40 7f eb    	vpermt2ps zmm29,zmm25,zmm11
  a5265a:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x1c0]
  a52661:	07 
  a52662:	62 61 7c 48 28 d8    	vmovaps zmm27,zmm0
  a52668:	62 d2 35 40 7f c3    	vpermt2ps zmm0,zmm25,zmm11
  a5266e:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm0
  a52675:	07 
  a52676:	62 72 4d 48 7f c1    	vpermt2ps zmm8,zmm6,zmm1
  a5267c:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xac0],zmm8
  a52683:	2b 
  a52684:	62 a2 4d 48 7f ea    	vpermt2ps zmm21,zmm6,zmm18
  a5268a:	62 e1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x840],zmm21
  a52691:	21 
  a52692:	62 42 4d 48 7f f7    	vpermt2ps zmm30,zmm6,zmm15
  a52698:	62 61 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0xa80],zmm30
  a5269f:	2a 
  a526a0:	62 f2 4d 48 7f e3    	vpermt2ps zmm4,zmm6,zmm3
  a526a6:	62 f1 7c 48 28 cc    	vmovaps zmm1,zmm4
  a526ac:	62 62 4d 48 7f 44 24 	vpermt2ps zmm24,zmm6,ZMMWORD PTR [rsp+0x580]
  a526b3:	16 
  a526b4:	62 b1 7c 48 28 d7    	vmovaps zmm2,zmm23
  a526ba:	62 b2 4d 48 7f d6    	vpermt2ps zmm2,zmm6,zmm22
  a526c0:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x880],zmm2
  a526c7:	22 
  a526c8:	62 e1 7c 48 28 7c 24 	vmovaps zmm23,ZMMWORD PTR [rsp+0x100]
  a526cf:	04 
  a526d0:	62 82 4d 48 7f fa    	vpermt2ps zmm23,zmm6,zmm26
  a526d6:	62 e1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm23
  a526dd:	04 
  a526de:	62 42 4d 48 7f db    	vpermt2ps zmm27,zmm6,zmm11
  a526e4:	62 91 7c 48 28 dc    	vmovaps zmm3,zmm28
  a526ea:	62 d2 4d 48 7f db    	vpermt2ps zmm3,zmm6,zmm11
  a526f0:	62 e1 7c 48 28 74 24 	vmovaps zmm22,ZMMWORD PTR [rsp+0xc0]
  a526f7:	03 
  a526f8:	62 e1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x6c0],zmm22
  a526ff:	1b 
  a52700:	62 f1 7c 48 28 25 36 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff674836]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a52707:	48 67 ff 
  a5270a:	62 e2 5d 48 7f 74 24 	vpermt2ps zmm22,zmm4,ZMMWORD PTR [rsp+0x240]
  a52711:	09 
  a52712:	62 e1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm22
  a52719:	03 
  a5271a:	62 e1 7c 48 28 54 24 	vmovaps zmm18,ZMMWORD PTR [rsp+0x80]
  a52721:	02 
  a52722:	62 e1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm18
  a52729:	1a 
  a5272a:	62 c2 5d 48 7f d6    	vpermt2ps zmm18,zmm4,zmm14
  a52730:	62 e1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm18
  a52737:	02 
  a52738:	62 71 7c 48 28 7c 24 	vmovaps zmm15,ZMMWORD PTR [rsp+0x280]
  a5273f:	0a 
  a52740:	62 71 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm15
  a52747:	19 
  a52748:	62 72 5d 48 7f 7c 24 	vpermt2ps zmm15,zmm4,ZMMWORD PTR [rsp+0x140]
  a5274f:	05 
  a52750:	62 71 7c 48 28 1c 24 	vmovaps zmm11,ZMMWORD PTR [rsp]
  a52757:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x8c0],zmm11
  a5275e:	23 
  a5275f:	62 72 5d 48 7f d8    	vpermt2ps zmm11,zmm4,zmm0
  a52765:	62 71 7c 48 29 1c 24 	vmovaps ZMMWORD PTR [rsp],zmm11
  a5276c:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc00],zmm9
  a52773:	30 
  a52774:	62 72 5d 48 7f 4c 24 	vpermt2ps zmm9,zmm4,ZMMWORD PTR [rsp+0x2c0]
  a5277b:	0b 
  a5277c:	62 51 7c 48 28 e1    	vmovaps zmm12,zmm9
  a52782:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x980],zmm9
  a52789:	26 
  a5278a:	62 71 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0xbc0],zmm13
  a52791:	2f 
  a52792:	62 52 5d 48 7f ea    	vpermt2ps zmm13,zmm4,zmm10
  a52798:	62 71 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x940],zmm13
  a5279f:	25 
  a527a0:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0xb40],zmm5
  a527a7:	2d 
  a527a8:	62 61 7c 48 28 64 24 	vmovaps zmm28,ZMMWORD PTR [rsp+0x700]
  a527af:	1c 
  a527b0:	62 92 5d 48 7f ec    	vpermt2ps zmm5,zmm4,zmm28
  a527b6:	62 e1 7c 48 28 c5    	vmovaps zmm16,zmm5
  a527bc:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x900],zmm5
  a527c3:	24 
  a527c4:	62 e1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xb00],zmm17
  a527cb:	2c 
  a527cc:	62 82 5d 48 7f cd    	vpermt2ps zmm17,zmm4,zmm29
  a527d2:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x200]
  a527d9:	08 
  a527da:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0xa40],zmm7
  a527e1:	29 
  a527e2:	62 71 7c 48 28 74 24 	vmovaps zmm14,ZMMWORD PTR [rsp+0x540]
  a527e9:	15 
  a527ea:	62 d2 5d 48 7f fe    	vpermt2ps zmm7,zmm4,zmm14
  a527f0:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm7
  a527f7:	08 
  a527f8:	62 21 7c 48 28 cb    	vmovaps zmm25,zmm19
  a527fe:	62 e2 5d 48 7f 5c 24 	vpermt2ps zmm19,zmm4,ZMMWORD PTR [rsp+0x300]
  a52805:	0c 
  a52806:	62 e1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x780],zmm19
  a5280d:	1e 
  a5280e:	62 91 7c 48 28 f7    	vmovaps zmm6,zmm31
  a52814:	62 01 7c 48 28 d7    	vmovaps zmm26,zmm31
  a5281a:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x740]
  a52821:	1d 
  a52822:	62 d2 5d 48 7f f2    	vpermt2ps zmm6,zmm4,zmm10
  a52828:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0xa00],zmm6
  a5282f:	28 
  a52830:	62 b1 7c 48 28 ec    	vmovaps zmm5,zmm20
  a52836:	62 92 5d 48 7f eb    	vpermt2ps zmm5,zmm4,zmm27
  a5283c:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x9c0],zmm5
  a52843:	27 
  a52844:	62 32 5d 48 7f c5    	vpermt2ps zmm8,zmm4,zmm21
  a5284a:	62 d1 7c 48 28 c0    	vmovaps zmm0,zmm8
  a52850:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm8
  a52857:	0f 
  a52858:	62 62 5d 48 7f f1    	vpermt2ps zmm30,zmm4,zmm1
  a5285e:	62 71 7c 48 28 c1    	vmovaps zmm8,zmm1
  a52864:	62 01 7c 48 28 fe    	vmovaps zmm31,zmm30
  a5286a:	62 61 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x800],zmm30
  a52871:	20 
  a52872:	62 91 7c 48 28 c8    	vmovaps zmm1,zmm24
  a52878:	62 01 7c 48 28 f0    	vmovaps zmm30,zmm24
  a5287e:	62 f2 5d 48 7f ca    	vpermt2ps zmm1,zmm4,zmm2
  a52884:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x7c0],zmm1
  a5288b:	1f 
  a5288c:	62 f2 45 40 77 e3    	vpermi2ps zmm4,zmm23,zmm3
  a52892:	62 e1 7c 48 28 fb    	vmovaps zmm23,zmm3
  a52898:	62 e1 7c 48 28 2d 5e 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff67455e]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a5289f:	45 67 ff 
  a528a2:	62 11 fd 48 15 cf    	vunpckhpd zmm9,zmm0,zmm31
  a528a8:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm9
  a528af:	0e 
  a528b0:	62 f1 f5 48 15 c4    	vunpckhpd zmm0,zmm1,zmm4
  a528b6:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm0
  a528bd:	14 
  a528be:	62 72 55 40 7f c8    	vpermt2ps zmm9,zmm21,zmm0
  a528c4:	62 21 c5 48 15 fb    	vunpckhpd zmm31,zmm7,zmm19
  a528ca:	62 61 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm31
  a528d1:	0d 
  a528d2:	62 f1 cd 48 15 c5    	vunpckhpd zmm0,zmm6,zmm5
  a528d8:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm0
  a528df:	13 
  a528e0:	62 62 55 40 7f f8    	vpermt2ps zmm31,zmm21,zmm0
  a528e6:	62 f1 7c 48 10 52 0d 	vmovups zmm2,ZMMWORD PTR [rdx+0x340]
  a528ed:	62 f1 7c 48 10 4a 0c 	vmovups zmm1,ZMMWORD PTR [rdx+0x300]
  a528f4:	62 f1 04 40 59 c1    	vmulps zmm0,zmm31,zmm1
  a528fa:	62 f2 35 48 b8 c2    	vfmadd231ps zmm0,zmm9,zmm2
  a52900:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm0
  a52907:	0a 
  a52908:	62 f1 34 48 59 c1    	vmulps zmm0,zmm9,zmm1
  a5290e:	62 92 6d 48 bc c7    	vfnmadd231ps zmm0,zmm2,zmm31
  a52914:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm0
  a5291b:	18 
  a5291c:	62 d1 9d 48 15 cd    	vunpckhpd zmm1,zmm12,zmm13
  a52922:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm1
  a52929:	12 
  a5292a:	62 b1 fd 40 15 c1    	vunpckhpd zmm0,zmm16,zmm17
  a52930:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm0
  a52937:	11 
  a52938:	62 f2 55 40 7f c8    	vpermt2ps zmm1,zmm21,zmm0
  a5293e:	62 21 cd 40 15 fa    	vunpckhpd zmm31,zmm22,zmm18
  a52944:	62 d1 85 48 15 c3    	vunpckhpd zmm0,zmm15,zmm11
  a5294a:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm0
  a52951:	10 
  a52952:	62 c1 7c 48 28 c7    	vmovaps zmm16,zmm15
  a52958:	62 91 7c 48 28 d7    	vmovaps zmm2,zmm31
  a5295e:	62 f2 55 40 7f d0    	vpermt2ps zmm2,zmm21,zmm0
  a52964:	62 f1 7c 48 10 5a 1d 	vmovups zmm3,ZMMWORD PTR [rdx+0x740]
  a5296b:	62 f1 7c 48 10 42 1c 	vmovups zmm0,ZMMWORD PTR [rdx+0x700]
  a52972:	62 e1 6c 48 59 d8    	vmulps zmm19,zmm2,zmm0
  a52978:	62 e2 75 48 b8 db    	vfmadd231ps zmm19,zmm1,zmm3
  a5297e:	62 e1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm19
  a52985:	17 
  a52986:	62 f1 74 48 59 c0    	vmulps zmm0,zmm1,zmm0
  a5298c:	62 f2 65 48 bc c2    	vfnmadd231ps zmm0,zmm3,zmm2
  a52992:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm0
  a52999:	16 
  a5299a:	62 f1 7c 48 28 05 5c 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff67455c]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a529a1:	45 67 ff 
  a529a4:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0xa40]
  a529ab:	29 
  a529ac:	62 d2 7d 48 7f ee    	vpermt2ps zmm5,zmm0,zmm14
  a529b2:	62 62 7d 48 7f 4c 24 	vpermt2ps zmm25,zmm0,ZMMWORD PTR [rsp+0x300]
  a529b9:	0c 
  a529ba:	62 42 7d 48 7f d2    	vpermt2ps zmm26,zmm0,zmm10
  a529c0:	62 82 7d 48 7f e3    	vpermt2ps zmm20,zmm0,zmm27
  a529c6:	62 71 7c 48 28 74 24 	vmovaps zmm14,ZMMWORD PTR [rsp+0xc00]
  a529cd:	30 
  a529ce:	62 72 7d 48 7f 74 24 	vpermt2ps zmm14,zmm0,ZMMWORD PTR [rsp+0x2c0]
  a529d5:	0b 
  a529d6:	62 71 7c 48 28 5c 24 	vmovaps zmm11,ZMMWORD PTR [rsp+0xbc0]
  a529dd:	2f 
  a529de:	62 72 7d 48 7f 5c 24 	vpermt2ps zmm11,zmm0,ZMMWORD PTR [rsp+0xb80]
  a529e5:	2e 
  a529e6:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0xb40]
  a529ed:	2d 
  a529ee:	62 92 7d 48 7f f4    	vpermt2ps zmm6,zmm0,zmm28
  a529f4:	62 61 7c 48 28 44 24 	vmovaps zmm24,ZMMWORD PTR [rsp+0xb00]
  a529fb:	2c 
  a529fc:	62 02 7d 48 7f c5    	vpermt2ps zmm24,zmm0,zmm29
  a52a02:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x6c0]
  a52a09:	1b 
  a52a0a:	62 72 7d 48 7f 54 24 	vpermt2ps zmm10,zmm0,ZMMWORD PTR [rsp+0x240]
  a52a11:	09 
  a52a12:	62 71 7c 48 28 7c 24 	vmovaps zmm15,ZMMWORD PTR [rsp+0x680]
  a52a19:	1a 
  a52a1a:	62 72 7d 48 7f 7c 24 	vpermt2ps zmm15,zmm0,ZMMWORD PTR [rsp+0x180]
  a52a21:	06 
  a52a22:	62 61 7c 48 28 5c 24 	vmovaps zmm27,ZMMWORD PTR [rsp+0x640]
  a52a29:	19 
  a52a2a:	62 62 7d 48 7f 5c 24 	vpermt2ps zmm27,zmm0,ZMMWORD PTR [rsp+0x140]
  a52a31:	05 
  a52a32:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x8c0]
  a52a39:	23 
  a52a3a:	62 f2 7d 48 7f 7c 24 	vpermt2ps zmm7,zmm0,ZMMWORD PTR [rsp+0x1c0]
  a52a41:	07 
  a52a42:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0xac0]
  a52a49:	2b 
  a52a4a:	62 f2 7d 48 7f 4c 24 	vpermt2ps zmm1,zmm0,ZMMWORD PTR [rsp+0x840]
  a52a51:	21 
  a52a52:	62 71 7c 48 28 6c 24 	vmovaps zmm13,ZMMWORD PTR [rsp+0xa80]
  a52a59:	2a 
  a52a5a:	62 52 7d 48 7f e8    	vpermt2ps zmm13,zmm0,zmm8
  a52a60:	62 91 7c 48 28 de    	vmovaps zmm3,zmm30
  a52a66:	62 f2 7d 48 7f 5c 24 	vpermt2ps zmm3,zmm0,ZMMWORD PTR [rsp+0x880]
  a52a6d:	22 
  a52a6e:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x100]
  a52a75:	04 
  a52a76:	62 b2 7d 48 7f d7    	vpermt2ps zmm2,zmm0,zmm23
  a52a7c:	62 11 d5 48 15 c9    	vunpckhpd zmm9,zmm5,zmm25
  a52a82:	62 61 7c 48 28 f5    	vmovaps zmm30,zmm5
  a52a88:	62 b1 ad 40 15 ec    	vunpckhpd zmm5,zmm26,zmm20
  a52a8e:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm5
  a52a95:	19 
  a52a96:	62 d1 7c 48 28 c1    	vmovaps zmm0,zmm9
  a52a9c:	62 f2 55 40 7f c5    	vpermt2ps zmm0,zmm21,zmm5
  a52aa2:	62 c1 f5 48 15 dd    	vunpckhpd zmm19,zmm1,zmm13
  a52aa8:	62 c1 7c 48 28 f5    	vmovaps zmm22,zmm13
  a52aae:	62 71 7c 48 28 c1    	vmovaps zmm8,zmm1
  a52ab4:	62 f1 e5 48 15 ea    	vunpckhpd zmm5,zmm3,zmm2
  a52aba:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x8c0],zmm5
  a52ac1:	23 
  a52ac2:	62 e1 7c 48 28 fb    	vmovaps zmm23,zmm3
  a52ac8:	62 e1 7c 48 28 d2    	vmovaps zmm18,zmm2
  a52ace:	62 b1 7c 48 28 cb    	vmovaps zmm1,zmm19
  a52ad4:	62 f2 55 40 7f cd    	vpermt2ps zmm1,zmm21,zmm5
  a52ada:	62 f1 7c 48 10 52 04 	vmovups zmm2,ZMMWORD PTR [rdx+0x100]
  a52ae1:	62 f1 7c 48 10 5a 05 	vmovups zmm3,ZMMWORD PTR [rdx+0x140]
  a52ae8:	62 f1 74 48 59 ea    	vmulps zmm5,zmm1,zmm2
  a52aee:	62 f2 7d 48 bc eb    	vfnmadd231ps zmm5,zmm0,zmm3
  a52af4:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm5
  a52afb:	04 
  a52afc:	62 f1 7c 48 59 c2    	vmulps zmm0,zmm0,zmm2
  a52b02:	62 f2 65 48 b8 c1    	vfmadd231ps zmm0,zmm3,zmm1
  a52b08:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm0
  a52b0f:	0c 
  a52b10:	62 d1 ad 48 15 ef    	vunpckhpd zmm5,zmm10,zmm15
  a52b16:	62 51 7c 48 28 e2    	vmovaps zmm12,zmm10
  a52b1c:	62 f1 a5 40 15 cf    	vunpckhpd zmm1,zmm27,zmm7
  a52b22:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x880],zmm1
  a52b29:	22 
  a52b2a:	62 71 7c 48 28 ef    	vmovaps zmm13,zmm7
  a52b30:	62 f1 7c 48 28 c5    	vmovaps zmm0,zmm5
  a52b36:	62 f2 55 40 7f c1    	vpermt2ps zmm0,zmm21,zmm1
  a52b3c:	62 41 8d 48 15 e3    	vunpckhpd zmm28,zmm14,zmm11
  a52b42:	62 51 7c 48 28 d3    	vmovaps zmm10,zmm11
  a52b48:	62 91 cd 48 15 d0    	vunpckhpd zmm2,zmm6,zmm24
  a52b4e:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x840],zmm2
  a52b55:	21 
  a52b56:	62 f1 7c 48 28 de    	vmovaps zmm3,zmm6
  a52b5c:	62 91 7c 48 28 cc    	vmovaps zmm1,zmm28
  a52b62:	62 f2 55 40 7f ca    	vpermt2ps zmm1,zmm21,zmm2
  a52b68:	62 f1 7c 48 10 52 15 	vmovups zmm2,ZMMWORD PTR [rdx+0x540]
  a52b6f:	62 71 7c 48 10 5a 14 	vmovups zmm11,ZMMWORD PTR [rdx+0x500]
  a52b76:	62 41 74 48 59 eb    	vmulps zmm29,zmm1,zmm11
  a52b7c:	62 62 7d 48 bc ea    	vfnmadd231ps zmm29,zmm0,zmm2
  a52b82:	62 61 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm29
  a52b89:	0b 
  a52b8a:	62 d1 7c 48 59 c3    	vmulps zmm0,zmm0,zmm11
  a52b90:	62 f2 6d 48 b8 c1    	vfmadd231ps zmm0,zmm2,zmm1
  a52b96:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm0
  a52b9d:	15 
  a52b9e:	62 91 8d 40 14 c1    	vunpcklpd zmm0,zmm30,zmm25
  a52ba4:	62 b1 ad 40 14 fc    	vunpcklpd zmm7,zmm26,zmm20
  a52baa:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm7
  a52bb1:	1a 
  a52bb2:	62 b1 bd 48 14 d6    	vunpcklpd zmm2,zmm8,zmm22
  a52bb8:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm2
  a52bbf:	09 
  a52bc0:	62 b1 c5 40 14 f2    	vunpcklpd zmm6,zmm23,zmm18
  a52bc6:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x700],zmm6
  a52bcd:	1c 
  a52bce:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x6c0],zmm0
  a52bd5:	1b 
  a52bd6:	62 f1 7c 48 28 0d 60 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff674260]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a52bdd:	42 67 ff 
  a52be0:	62 f2 75 48 7f c7    	vpermt2ps zmm0,zmm1,zmm7
  a52be6:	62 f2 75 48 7f d6    	vpermt2ps zmm2,zmm1,zmm6
  a52bec:	62 f1 7c 48 10 72 02 	vmovups zmm6,ZMMWORD PTR [rdx+0x80]
  a52bf3:	62 f1 7c 48 10 7a 03 	vmovups zmm7,ZMMWORD PTR [rdx+0xc0]
  a52bfa:	62 71 6c 48 59 c6    	vmulps zmm8,zmm2,zmm6
  a52c00:	62 72 7d 48 bc c7    	vfnmadd231ps zmm8,zmm0,zmm7
  a52c06:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x740],zmm8
  a52c0d:	1d 
  a52c0e:	62 f1 7c 48 59 c6    	vmulps zmm0,zmm0,zmm6
  a52c14:	62 f2 45 48 b8 c2    	vfmadd231ps zmm0,zmm7,zmm2
  a52c1a:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm0
  a52c21:	05 
  a52c22:	62 d1 8d 48 14 c2    	vunpcklpd zmm0,zmm14,zmm10
  a52c28:	62 81 e5 48 14 f8    	vunpcklpd zmm23,zmm3,zmm24
  a52c2e:	62 d1 9d 48 14 d7    	vunpcklpd zmm2,zmm12,zmm15
  a52c34:	62 51 a5 40 14 d5    	vunpcklpd zmm10,zmm27,zmm13
  a52c3a:	62 71 7c 48 28 e2    	vmovaps zmm12,zmm2
  a52c40:	62 d2 75 48 7f d2    	vpermt2ps zmm2,zmm1,zmm10
  a52c46:	62 61 7c 48 28 d0    	vmovaps zmm26,zmm0
  a52c4c:	62 b2 75 48 7f c7    	vpermt2ps zmm0,zmm1,zmm23
  a52c52:	62 f1 7c 48 10 72 13 	vmovups zmm6,ZMMWORD PTR [rdx+0x4c0]
  a52c59:	62 f1 7c 48 10 7a 12 	vmovups zmm7,ZMMWORD PTR [rdx+0x480]
  a52c60:	62 71 7c 48 59 df    	vmulps zmm11,zmm0,zmm7
  a52c66:	62 72 6d 48 bc de    	vfnmadd231ps zmm11,zmm2,zmm6
  a52c6c:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm11
  a52c73:	07 
  a52c74:	62 f1 6c 48 59 d7    	vmulps zmm2,zmm2,zmm7
  a52c7a:	62 f2 4d 48 b8 d0    	vfmadd231ps zmm2,zmm6,zmm0
  a52c80:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm2
  a52c87:	06 
  a52c88:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0xc0]
  a52c8f:	03 
  a52c90:	62 f1 fd 48 14 44 24 	vunpcklpd zmm0,zmm0,ZMMWORD PTR [rsp+0x80]
  a52c97:	02 
  a52c98:	62 61 fd 40 14 2c 24 	vunpcklpd zmm29,zmm16,ZMMWORD PTR [rsp]
  a52c9f:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x980]
  a52ca6:	26 
  a52ca7:	62 f1 ed 48 14 54 24 	vunpcklpd zmm2,zmm2,ZMMWORD PTR [rsp+0x940]
  a52cae:	25 
  a52caf:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x900]
  a52cb6:	24 
  a52cb7:	62 a1 e5 48 14 d1    	vunpcklpd zmm18,zmm3,zmm17
  a52cbd:	62 71 7c 48 28 f2    	vmovaps zmm14,zmm2
  a52cc3:	62 b2 75 48 7f d2    	vpermt2ps zmm2,zmm1,zmm18
  a52cc9:	62 e1 7c 48 28 c8    	vmovaps zmm17,zmm0
  a52ccf:	62 92 75 48 7f c5    	vpermt2ps zmm0,zmm1,zmm29
  a52cd5:	62 f1 7c 48 10 72 1b 	vmovups zmm6,ZMMWORD PTR [rdx+0x6c0]
  a52cdc:	62 f1 7c 48 10 7a 1a 	vmovups zmm7,ZMMWORD PTR [rdx+0x680]
  a52ce3:	62 71 7c 48 59 df    	vmulps zmm11,zmm0,zmm7
  a52ce9:	62 72 6d 48 b8 de    	vfmadd231ps zmm11,zmm2,zmm6
  a52cef:	62 71 7c 48 29 1c 24 	vmovaps ZMMWORD PTR [rsp],zmm11
  a52cf6:	62 f1 6c 48 59 d7    	vmulps zmm2,zmm2,zmm7
  a52cfc:	62 f2 4d 48 bc d0    	vfnmadd231ps zmm2,zmm6,zmm0
  a52d02:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm2
  a52d09:	03 
  a52d0a:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x200]
  a52d11:	08 
  a52d12:	62 f1 fd 48 14 74 24 	vunpcklpd zmm6,zmm0,ZMMWORD PTR [rsp+0x780]
  a52d19:	1e 
  a52d1a:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0xa00]
  a52d21:	28 
  a52d22:	62 e1 fd 48 14 74 24 	vunpcklpd zmm22,zmm0,ZMMWORD PTR [rsp+0x9c0]
  a52d29:	27 
  a52d2a:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x3c0]
  a52d31:	0f 
  a52d32:	62 f1 fd 48 14 7c 24 	vunpcklpd zmm7,zmm0,ZMMWORD PTR [rsp+0x800]
  a52d39:	20 
  a52d3a:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x7c0]
  a52d41:	1f 
  a52d42:	62 f1 fd 48 14 d4    	vunpcklpd zmm2,zmm0,zmm4
  a52d48:	62 f1 7c 48 28 c7    	vmovaps zmm0,zmm7
  a52d4e:	62 f2 75 48 7f fa    	vpermt2ps zmm7,zmm1,zmm2
  a52d54:	62 71 7c 48 28 de    	vmovaps zmm11,zmm6
  a52d5a:	62 b2 75 48 7f f6    	vpermt2ps zmm6,zmm1,zmm22
  a52d60:	62 f1 7c 48 10 62 0b 	vmovups zmm4,ZMMWORD PTR [rdx+0x2c0]
  a52d67:	62 71 7c 48 10 7a 0a 	vmovups zmm15,ZMMWORD PTR [rdx+0x280]
  a52d6e:	62 c1 4c 48 59 c7    	vmulps zmm16,zmm6,zmm15
  a52d74:	62 e2 45 48 b8 c4    	vfmadd231ps zmm16,zmm7,zmm4
  a52d7a:	62 e1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm16
  a52d81:	08 
  a52d82:	62 d1 44 48 59 ff    	vmulps zmm7,zmm7,zmm15
  a52d88:	62 f2 5d 48 bc fe    	vfnmadd231ps zmm7,zmm4,zmm6
  a52d8e:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm7
  a52d95:	02 
  a52d96:	62 72 75 48 7f 4c 24 	vpermt2ps zmm9,zmm1,ZMMWORD PTR [rsp+0x640]
  a52d9d:	19 
  a52d9e:	62 e2 75 48 7f 5c 24 	vpermt2ps zmm19,zmm1,ZMMWORD PTR [rsp+0x8c0]
  a52da5:	23 
  a52da6:	62 f2 75 48 7f 6c 24 	vpermt2ps zmm5,zmm1,ZMMWORD PTR [rsp+0x880]
  a52dad:	22 
  a52dae:	62 62 75 48 7f 64 24 	vpermt2ps zmm28,zmm1,ZMMWORD PTR [rsp+0x840]
  a52db5:	21 
  a52db6:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x380]
  a52dbd:	0e 
  a52dbe:	62 f2 75 48 7f 64 24 	vpermt2ps zmm4,zmm1,ZMMWORD PTR [rsp+0x500]
  a52dc5:	14 
  a52dc6:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x340]
  a52dcd:	0d 
  a52dce:	62 f2 75 48 7f 74 24 	vpermt2ps zmm6,zmm1,ZMMWORD PTR [rsp+0x4c0]
  a52dd5:	13 
  a52dd6:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x480]
  a52ddd:	12 
  a52dde:	62 f2 75 48 7f 7c 24 	vpermt2ps zmm7,zmm1,ZMMWORD PTR [rsp+0x440]
  a52de5:	11 
  a52de6:	62 62 75 48 7f 7c 24 	vpermt2ps zmm31,zmm1,ZMMWORD PTR [rsp+0x400]
  a52ded:	10 
  a52dee:	62 f1 7c 48 10 4a 07 	vmovups zmm1,ZMMWORD PTR [rdx+0x1c0]
  a52df5:	62 f1 7c 48 10 5a 06 	vmovups zmm3,ZMMWORD PTR [rdx+0x180]
  a52dfc:	62 61 64 40 59 cb    	vmulps zmm25,zmm19,zmm3
  a52e02:	62 62 35 48 bc c9    	vfnmadd231ps zmm25,zmm9,zmm1
  a52e08:	62 61 34 48 59 c3    	vmulps zmm24,zmm9,zmm3
  a52e0e:	62 22 75 48 b8 c3    	vfmadd231ps zmm24,zmm1,zmm19
  a52e14:	62 f1 7c 48 10 4a 17 	vmovups zmm1,ZMMWORD PTR [rdx+0x5c0]
  a52e1b:	62 f1 7c 48 10 5a 16 	vmovups zmm3,ZMMWORD PTR [rdx+0x580]
  a52e22:	62 61 1c 40 59 f3    	vmulps zmm30,zmm28,zmm3
  a52e28:	62 62 55 48 bc f1    	vfnmadd231ps zmm30,zmm5,zmm1
  a52e2e:	62 e1 54 48 59 e3    	vmulps zmm20,zmm5,zmm3
  a52e34:	62 82 75 48 b8 e4    	vfmadd231ps zmm20,zmm1,zmm28
  a52e3a:	62 f1 7c 48 10 4a 1f 	vmovups zmm1,ZMMWORD PTR [rdx+0x7c0]
  a52e41:	62 f1 7c 48 10 5a 1e 	vmovups zmm3,ZMMWORD PTR [rdx+0x780]
  a52e48:	62 71 04 40 59 eb    	vmulps zmm13,zmm31,zmm3
  a52e4e:	62 72 45 48 b8 e9    	vfmadd231ps zmm13,zmm7,zmm1
  a52e54:	62 71 44 48 59 fb    	vmulps zmm15,zmm7,zmm3
  a52e5a:	62 12 75 48 bc ff    	vfnmadd231ps zmm15,zmm1,zmm31
  a52e60:	62 f1 7c 48 10 4a 0f 	vmovups zmm1,ZMMWORD PTR [rdx+0x3c0]
  a52e67:	62 f1 7c 48 10 5a 0e 	vmovups zmm3,ZMMWORD PTR [rdx+0x380]
  a52e6e:	62 71 4c 48 59 c3    	vmulps zmm8,zmm6,zmm3
  a52e74:	62 72 5d 48 b8 c1    	vfmadd231ps zmm8,zmm4,zmm1
  a52e7a:	62 e1 5c 48 59 c3    	vmulps zmm16,zmm4,zmm3
  a52e80:	62 e2 75 48 bc c6    	vfnmadd231ps zmm16,zmm1,zmm6
  a52e86:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x6c0]
  a52e8d:	1b 
  a52e8e:	62 f2 55 40 7f 7c 24 	vpermt2ps zmm7,zmm21,ZMMWORD PTR [rsp+0x680]
  a52e95:	1a 
  a52e96:	62 22 55 40 7f d7    	vpermt2ps zmm26,zmm21,zmm23
  a52e9c:	62 52 55 40 7f e2    	vpermt2ps zmm12,zmm21,zmm10
  a52ea2:	62 82 55 40 7f cd    	vpermt2ps zmm17,zmm21,zmm29
  a52ea8:	62 32 55 40 7f f2    	vpermt2ps zmm14,zmm21,zmm18
  a52eae:	62 32 55 40 7f de    	vpermt2ps zmm11,zmm21,zmm22
  a52eb4:	62 f2 55 40 7f c2    	vpermt2ps zmm0,zmm21,zmm2
  a52eba:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x240]
  a52ec1:	09 
  a52ec2:	62 f2 55 40 7f 4c 24 	vpermt2ps zmm1,zmm21,ZMMWORD PTR [rsp+0x700]
  a52ec9:	1c 
  a52eca:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm1
  a52ed1:	09 
  a52ed2:	62 f1 7c 48 10 4a 11 	vmovups zmm1,ZMMWORD PTR [rdx+0x440]
  a52ed9:	62 f1 7c 48 10 52 10 	vmovups zmm2,ZMMWORD PTR [rdx+0x400]
  a52ee0:	62 e1 1c 48 59 f2    	vmulps zmm22,zmm12,zmm2
  a52ee6:	62 e2 2d 40 b8 f1    	vfmadd231ps zmm22,zmm26,zmm1
  a52eec:	62 e1 2c 40 59 d2    	vmulps zmm18,zmm26,zmm2
  a52ef2:	62 c2 75 48 bc d4    	vfnmadd231ps zmm18,zmm1,zmm12
  a52ef8:	62 f1 7c 48 10 52 09 	vmovups zmm2,ZMMWORD PTR [rdx+0x240]
  a52eff:	62 f1 7c 48 10 4a 08 	vmovups zmm1,ZMMWORD PTR [rdx+0x200]
  a52f06:	62 e1 7c 48 59 e9    	vmulps zmm21,zmm0,zmm1
  a52f0c:	62 e2 25 48 bc ea    	vfnmadd231ps zmm21,zmm11,zmm2
  a52f12:	62 f1 24 48 59 d9    	vmulps zmm3,zmm11,zmm1
  a52f18:	62 f2 6d 48 b8 d8    	vfmadd231ps zmm3,zmm2,zmm0
  a52f1e:	62 f1 7c 48 10 52 19 	vmovups zmm2,ZMMWORD PTR [rdx+0x640]
  a52f25:	62 f1 7c 48 10 42 18 	vmovups zmm0,ZMMWORD PTR [rdx+0x600]
  a52f2c:	62 e1 0c 48 59 d8    	vmulps zmm19,zmm14,zmm0
  a52f32:	62 e2 75 40 bc da    	vfnmadd231ps zmm19,zmm17,zmm2
  a52f38:	62 f1 74 40 59 c8    	vmulps zmm1,zmm17,zmm0
  a52f3e:	62 d2 6d 48 b8 ce    	vfmadd231ps zmm1,zmm2,zmm14
  a52f44:	62 61 7c 48 28 5c 24 	vmovaps zmm27,ZMMWORD PTR [rsp+0x740]
  a52f4b:	1d 
  a52f4c:	62 f1 24 40 5c 54 24 	vsubps zmm2,zmm27,ZMMWORD PTR [rsp+0x1c0]
  a52f53:	07 
  a52f54:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x200]
  a52f5b:	08 
  a52f5c:	62 f1 7c 48 5c 24 24 	vsubps zmm4,zmm0,ZMMWORD PTR [rsp]
  a52f63:	62 71 6c 48 5c cc    	vsubps zmm9,zmm2,zmm4
  a52f69:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x140]
  a52f70:	05 
  a52f71:	62 71 7c 48 5c 54 24 	vsubps zmm10,zmm0,ZMMWORD PTR [rsp+0x180]
  a52f78:	06 
  a52f79:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0xc0]
  a52f80:	03 
  a52f81:	62 61 7c 48 5c 54 24 	vsubps zmm26,zmm0,ZMMWORD PTR [rsp+0x80]
  a52f88:	02 
  a52f89:	62 72 7d 48 18 35 6d 	vbroadcastss zmm14,DWORD PTR [rip+0xffffffffff62276d]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a52f90:	27 62 ff 
  a52f93:	62 11 2c 48 5c e2    	vsubps zmm12,zmm10,zmm26
  a52f99:	62 d1 1c 48 59 c6    	vmulps zmm0,zmm12,zmm14
  a52f9f:	62 72 7d 48 18 1d bb 	vbroadcastss zmm11,DWORD PTR [rip+0xffffffffff6226bb]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a52fa6:	26 62 ff 
  a52fa9:	62 d2 35 48 b8 c3    	vfmadd231ps zmm0,zmm9,zmm11
  a52faf:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm0
  a52fb6:	0e 
  a52fb7:	62 d1 1c 48 59 c3    	vmulps zmm0,zmm12,zmm11
  a52fbd:	62 d2 0d 48 bc c1    	vfnmadd231ps zmm0,zmm14,zmm9
  a52fc3:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm0
  a52fca:	14 
  a52fcb:	62 81 34 40 5c fe    	vsubps zmm23,zmm25,zmm30
  a52fd1:	62 41 3c 48 5c e5    	vsubps zmm28,zmm8,zmm13
  a52fd7:	62 11 44 40 5c cc    	vsubps zmm9,zmm23,zmm28
  a52fdd:	62 21 3c 40 5c ec    	vsubps zmm29,zmm24,zmm20
  a52fe3:	62 21 04 48 5c f8    	vsubps zmm31,zmm15,zmm16
  a52fe9:	62 91 14 40 5c c7    	vsubps zmm0,zmm29,zmm31
  a52fef:	62 d1 7c 48 59 eb    	vmulps zmm5,zmm0,zmm11
  a52ff5:	62 d2 35 48 b8 ee    	vfmadd231ps zmm5,zmm9,zmm14
  a52ffb:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm5
  a53002:	0d 
  a53003:	62 d1 34 48 59 eb    	vmulps zmm5,zmm9,zmm11
  a53009:	62 f2 0d 48 bc e8    	vfnmadd231ps zmm5,zmm14,zmm0
  a5300f:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm5
  a53016:	13 
  a53017:	62 91 44 40 58 c4    	vaddps zmm0,zmm23,zmm28
  a5301d:	62 81 14 40 58 ff    	vaddps zmm23,zmm29,zmm31
  a53023:	62 f1 6c 48 58 e4    	vaddps zmm4,zmm2,zmm4
  a53029:	62 11 2c 48 58 d2    	vaddps zmm10,zmm10,zmm26
  a5302f:	62 d1 2c 48 59 d3    	vmulps zmm2,zmm10,zmm11
  a53035:	62 d2 5d 48 b8 d6    	vfmadd231ps zmm2,zmm4,zmm14
  a5303b:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm2
  a53042:	12 
  a53043:	62 41 2c 48 59 fe    	vmulps zmm31,zmm10,zmm14
  a53049:	62 62 25 48 bc fc    	vfnmadd231ps zmm31,zmm11,zmm4
  a5304f:	62 d1 44 40 59 d6    	vmulps zmm2,zmm23,zmm14
  a53055:	62 d2 7d 48 b8 d3    	vfmadd231ps zmm2,zmm0,zmm11
  a5305b:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm2
  a53062:	11 
  a53063:	62 51 44 40 59 db    	vmulps zmm11,zmm23,zmm11
  a53069:	62 52 7d 48 bc de    	vfnmadd231ps zmm11,zmm0,zmm14
  a5306f:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x100]
  a53076:	04 
  a53077:	62 71 7c 48 28 64 24 	vmovaps zmm12,ZMMWORD PTR [rsp+0x2c0]
  a5307e:	0b 
  a5307f:	62 d1 4c 48 5c c4    	vsubps zmm0,zmm6,zmm12
  a53085:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x300]
  a5308c:	0c 
  a5308d:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x540]
  a53094:	15 
  a53095:	62 51 34 48 5c f2    	vsubps zmm14,zmm9,zmm10
  a5309b:	62 c1 7c 48 58 fe    	vaddps zmm23,zmm0,zmm14
  a530a1:	62 f1 0c 48 5c c0    	vsubps zmm0,zmm14,zmm0
  a530a7:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm0
  a530ae:	10 
  a530af:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x280]
  a530b6:	0a 
  a530b7:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x5c0]
  a530be:	17 
  a530bf:	62 71 7c 48 5c f2    	vsubps zmm14,zmm0,zmm2
  a530c5:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x600]
  a530cc:	18 
  a530cd:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x580]
  a530d4:	16 
  a530d5:	62 61 5c 48 5c d5    	vsubps zmm26,zmm4,zmm5
  a530db:	62 01 0c 48 5c e2    	vsubps zmm28,zmm14,zmm26
  a530e1:	62 51 2c 40 58 f6    	vaddps zmm14,zmm26,zmm14
  a530e7:	62 71 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm14
  a530ee:	0f 
  a530ef:	62 21 44 48 5c d6    	vsubps zmm26,zmm7,zmm22
  a530f5:	62 e1 4c 40 58 f7    	vaddps zmm22,zmm22,zmm7
  a530fb:	62 61 64 48 5c e9    	vsubps zmm29,zmm3,zmm1
  a53101:	62 f1 64 48 58 f9    	vaddps zmm7,zmm3,zmm1
  a53107:	62 e1 5c 48 58 cd    	vaddps zmm17,zmm4,zmm5
  a5310d:	62 51 4c 48 58 e4    	vaddps zmm12,zmm6,zmm12
  a53113:	62 b1 3c 40 58 dc    	vaddps zmm3,zmm24,zmm20
  a53119:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm3
  a53120:	04 
  a53121:	62 51 3c 48 58 f5    	vaddps zmm14,zmm8,zmm13
  a53127:	62 11 34 40 58 c6    	vaddps zmm8,zmm25,zmm30
  a5312d:	62 51 7c 40 58 ef    	vaddps zmm13,zmm16,zmm15
  a53133:	62 71 24 40 58 7c 24 	vaddps zmm15,zmm27,ZMMWORD PTR [rsp+0x1c0]
  a5313a:	07 
  a5313b:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x80]
  a53142:	02 
  a53143:	62 e1 74 48 58 44 24 	vaddps zmm16,zmm1,ZMMWORD PTR [rsp+0xc0]
  a5314a:	03 
  a5314b:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x180]
  a53152:	06 
  a53153:	62 e1 74 48 58 64 24 	vaddps zmm20,zmm1,ZMMWORD PTR [rsp+0x140]
  a5315a:	05 
  a5315b:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x200]
  a53162:	08 
  a53163:	62 61 74 48 58 04 24 	vaddps zmm24,zmm1,ZMMWORD PTR [rsp]
  a5316a:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x240]
  a53171:	09 
  a53172:	62 21 74 48 5c ca    	vsubps zmm25,zmm1,zmm18
  a53178:	62 a1 74 48 58 d2    	vaddps zmm18,zmm1,zmm18
  a5317e:	62 21 64 40 5c dd    	vsubps zmm27,zmm19,zmm21
  a53184:	62 a1 54 40 58 db    	vaddps zmm19,zmm21,zmm19
  a5318a:	62 c1 34 48 58 ea    	vaddps zmm21,zmm9,zmm10
  a53190:	62 61 7c 48 58 f2    	vaddps zmm30,zmm0,zmm2
  a53196:	62 b1 04 48 5c c8    	vsubps zmm1,zmm15,zmm16
  a5319c:	62 91 5c 40 5c c0    	vsubps zmm0,zmm20,zmm24
  a531a2:	62 f1 74 48 58 f0    	vaddps zmm6,zmm1,zmm0
  a531a8:	62 f1 7c 48 5c e9    	vsubps zmm5,zmm0,zmm1
  a531ae:	62 d1 64 48 5c ce    	vsubps zmm1,zmm3,zmm14
  a531b4:	62 d1 3c 48 5c c5    	vsubps zmm0,zmm8,zmm13
  a531ba:	62 f1 74 48 5c d8    	vsubps zmm3,zmm1,zmm0
  a531c0:	62 f1 7c 48 58 e1    	vaddps zmm4,zmm0,zmm1
  a531c6:	62 f2 7d 48 18 0d cc 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff6221cc]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a531cd:	21 62 ff 
  a531d0:	62 61 1c 40 59 e1    	vmulps zmm28,zmm28,zmm1
  a531d6:	62 e1 44 40 59 f9    	vmulps zmm23,zmm23,zmm1
  a531dc:	62 f1 74 48 59 54 24 	vmulps zmm2,zmm1,ZMMWORD PTR [rsp+0x400]
  a531e3:	10 
  a531e4:	62 f1 74 48 59 44 24 	vmulps zmm0,zmm1,ZMMWORD PTR [rsp+0x3c0]
  a531eb:	0f 
  a531ec:	62 71 64 48 59 d1    	vmulps zmm10,zmm3,zmm1
  a531f2:	62 71 4c 48 59 c9    	vmulps zmm9,zmm6,zmm1
  a531f8:	62 f1 54 48 59 d9    	vmulps zmm3,zmm5,zmm1
  a531fe:	62 f1 5c 48 59 c9    	vmulps zmm1,zmm4,zmm1
  a53204:	62 91 2c 40 5c e3    	vsubps zmm4,zmm26,zmm27
  a5320a:	62 01 24 40 58 d2    	vaddps zmm26,zmm27,zmm26
  a53210:	62 61 6c 48 58 d8    	vaddps zmm27,zmm2,zmm0
  a53216:	62 f1 6c 48 5c f0    	vsubps zmm6,zmm2,zmm0
  a5321c:	62 91 34 40 5c d5    	vsubps zmm2,zmm25,zmm29
  a53222:	62 91 34 40 58 c5    	vaddps zmm0,zmm25,zmm29
  a53228:	62 21 1c 40 5c ef    	vsubps zmm29,zmm28,zmm23
  a5322e:	62 81 44 40 58 fc    	vaddps zmm23,zmm23,zmm28
  a53234:	62 61 4c 40 5c e7    	vsubps zmm28,zmm22,zmm7
  a5323a:	62 b1 44 48 58 ee    	vaddps zmm5,zmm7,zmm22
  a53240:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm5
  a53247:	03 
  a53248:	62 81 54 40 5c f6    	vsubps zmm22,zmm21,zmm30
  a5324e:	62 91 54 40 58 fe    	vaddps zmm7,zmm21,zmm30
  a53254:	62 d1 3c 48 58 ed    	vaddps zmm5,zmm8,zmm13
  a5325a:	62 f1 7c 48 29 2c 24 	vmovaps ZMMWORD PTR [rsp],zmm5
  a53261:	62 21 04 48 58 f0    	vaddps zmm30,zmm15,zmm16
  a53267:	62 31 6c 40 5c fb    	vsubps zmm15,zmm18,zmm19
  a5326d:	62 a1 6c 40 58 c3    	vaddps zmm16,zmm18,zmm19
  a53273:	62 c1 74 40 5c d4    	vsubps zmm18,zmm17,zmm12
  a53279:	62 31 1c 48 58 e1    	vaddps zmm12,zmm12,zmm17
  a5327f:	62 81 5c 40 58 d8    	vaddps zmm19,zmm20,zmm24
  a53285:	62 71 0c 48 58 74 24 	vaddps zmm14,zmm14,ZMMWORD PTR [rsp+0x100]
  a5328c:	04 
  a5328d:	62 81 5c 48 5c cd    	vsubps zmm17,zmm4,zmm29
  a53293:	62 f1 14 40 58 e4    	vaddps zmm4,zmm29,zmm4
  a53299:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm4
  a532a0:	02 
  a532a1:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x500]
  a532a8:	14 
  a532a9:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x4c0]
  a532b0:	13 
  a532b1:	62 e1 5c 48 5c e5    	vsubps zmm20,zmm4,zmm5
  a532b7:	62 f1 5c 48 58 e5    	vaddps zmm4,zmm4,zmm5
  a532bd:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm4
  a532c4:	07 
  a532c5:	62 01 6c 48 5c c3    	vsubps zmm24,zmm2,zmm27
  a532cb:	62 91 6c 48 58 d3    	vaddps zmm2,zmm2,zmm27
  a532d1:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm2
  a532d8:	06 
  a532d9:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x380]
  a532e0:	0e 
  a532e1:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x340]
  a532e8:	0d 
  a532e9:	62 61 6c 48 58 cc    	vaddps zmm25,zmm2,zmm4
  a532ef:	62 f1 6c 48 5c d4    	vsubps zmm2,zmm2,zmm4
  a532f5:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm2
  a532fc:	0a 
  a532fd:	62 21 1c 40 5c da    	vsubps zmm27,zmm28,zmm18
  a53303:	62 01 6c 40 58 ec    	vaddps zmm29,zmm18,zmm28
  a53309:	62 f1 64 48 58 e9    	vaddps zmm5,zmm3,zmm1
  a5330f:	62 61 64 48 5c e1    	vsubps zmm28,zmm3,zmm1
  a53315:	62 a1 04 48 5c ee    	vsubps zmm21,zmm15,zmm22
  a5331b:	62 a1 04 48 58 d6    	vaddps zmm18,zmm15,zmm22
  a53321:	62 c1 2c 48 5c f1    	vsubps zmm22,zmm10,zmm9
  a53327:	62 51 34 48 58 fa    	vaddps zmm15,zmm9,zmm10
  a5332d:	62 f1 2c 40 5c e6    	vsubps zmm4,zmm26,zmm6
  a53333:	62 11 4c 48 58 ea    	vaddps zmm13,zmm6,zmm26
  a53339:	62 51 04 40 5c d3    	vsubps zmm10,zmm31,zmm11
  a5333f:	62 51 04 40 58 db    	vaddps zmm11,zmm31,zmm11
  a53345:	62 21 7c 48 5c ff    	vsubps zmm31,zmm0,zmm23
  a5334b:	62 a1 7c 48 58 ff    	vaddps zmm23,zmm0,zmm23
  a53351:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x480]
  a53358:	12 
  a53359:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x440]
  a53360:	11 
  a53361:	62 f1 6c 48 5c c8    	vsubps zmm1,zmm2,zmm0
  a53367:	62 71 7c 48 58 ca    	vaddps zmm9,zmm0,zmm2
  a5336d:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0xc0]
  a53374:	03 
  a53375:	62 f1 7c 48 5c df    	vsubps zmm3,zmm0,zmm7
  a5337b:	62 71 44 48 58 c0    	vaddps zmm8,zmm7,zmm0
  a53381:	62 d1 64 40 5c d6    	vsubps zmm2,zmm19,zmm14
  a53387:	62 d1 64 40 58 fe    	vaddps zmm7,zmm19,zmm14
  a5338d:	62 51 7c 40 5c f4    	vsubps zmm14,zmm16,zmm12
  a53393:	62 d1 7c 40 58 f4    	vaddps zmm6,zmm16,zmm12
  a53399:	62 71 7c 48 28 24 24 	vmovaps zmm12,ZMMWORD PTR [rsp]
  a533a0:	62 91 1c 48 5c c6    	vsubps zmm0,zmm12,zmm30
  a533a6:	62 41 0c 40 58 f4    	vaddps zmm30,zmm30,zmm12
  a533ac:	62 11 74 40 58 e1    	vaddps zmm12,zmm17,zmm25
  a533b2:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm12
  a533b9:	03 
  a533ba:	62 01 74 40 5c d1    	vsubps zmm26,zmm17,zmm25
  a533c0:	62 31 3c 40 5c e4    	vsubps zmm12,zmm24,zmm20
  a533c6:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm12
  a533cd:	09 
  a533ce:	62 21 3c 40 58 cc    	vaddps zmm25,zmm24,zmm20
  a533d4:	62 31 24 40 5c e6    	vsubps zmm12,zmm27,zmm22
  a533da:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm12
  a533e1:	05 
  a533e2:	62 31 24 40 58 e6    	vaddps zmm12,zmm27,zmm22
  a533e8:	62 e1 54 40 5c c5    	vsubps zmm16,zmm21,zmm5
  a533ee:	62 e1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm16
  a533f5:	08 
  a533f6:	62 e1 54 40 58 f5    	vaddps zmm22,zmm21,zmm5
  a533fc:	62 e1 5c 48 5c e9    	vsubps zmm21,zmm4,zmm1
  a53402:	62 e1 5c 48 58 e1    	vaddps zmm20,zmm4,zmm1
  a53408:	62 d1 04 40 5c ca    	vsubps zmm1,zmm31,zmm10
  a5340e:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm1
  a53415:	0c 
  a53416:	62 c1 04 40 58 c2    	vaddps zmm16,zmm31,zmm10
  a5341c:	62 61 64 48 5c d8    	vsubps zmm27,zmm3,zmm0
  a53422:	62 61 64 48 58 c0    	vaddps zmm24,zmm3,zmm0
  a53428:	62 f1 0c 48 5c c2    	vsubps zmm0,zmm14,zmm2
  a5342e:	62 f1 7c 48 29 04 24 	vmovaps ZMMWORD PTR [rsp],zmm0
  a53435:	62 71 0c 48 58 d2    	vaddps zmm10,zmm14,zmm2
  a5343b:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x80]
  a53442:	02 
  a53443:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x1c0]
  a5344a:	07 
  a5344b:	62 f1 7c 48 5c d1    	vsubps zmm2,zmm0,zmm1
  a53451:	62 f1 7c 48 58 e9    	vaddps zmm5,zmm0,zmm1
  a53457:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x180]
  a5345e:	06 
  a5345f:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x280]
  a53466:	0a 
  a53467:	62 61 7c 48 5c f9    	vsubps zmm31,zmm0,zmm1
  a5346d:	62 71 7c 48 58 f1    	vaddps zmm14,zmm0,zmm1
  a53473:	62 91 14 40 5c cc    	vsubps zmm1,zmm29,zmm28
  a53479:	62 01 14 40 58 ec    	vaddps zmm29,zmm29,zmm28
  a5347f:	62 c1 6c 40 5c df    	vsubps zmm19,zmm18,zmm15
  a53485:	62 51 6c 40 58 ff    	vaddps zmm15,zmm18,zmm15
  a5348b:	62 d1 14 48 5c c3    	vsubps zmm0,zmm13,zmm11
  a53491:	62 51 14 48 58 eb    	vaddps zmm13,zmm13,zmm11
  a53497:	62 d1 44 40 5c d9    	vsubps zmm3,zmm23,zmm9
  a5349d:	62 c1 44 40 58 c9    	vaddps zmm17,zmm23,zmm9
  a534a3:	62 71 3c 48 5c cf    	vsubps zmm9,zmm8,zmm7
  a534a9:	62 f1 3c 48 58 ff    	vaddps zmm7,zmm8,zmm7
  a534af:	62 11 4c 48 5c de    	vsubps zmm11,zmm6,zmm30
  a534b5:	62 81 4c 48 58 d6    	vaddps zmm18,zmm6,zmm30
  a534bb:	62 f1 7c 48 28 25 3b 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff63f73b]        # 92c00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x200b0>
  a534c2:	f7 63 ff 
  a534c5:	62 b1 7c 48 28 f2    	vmovaps zmm6,zmm18
  a534cb:	62 f2 5d 48 7f f7    	vpermt2ps zmm6,zmm4,zmm7
  a534d1:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm6
  a534d8:	07 
  a534d9:	62 f1 6c 40 15 f7    	vunpckhps zmm6,zmm18,zmm7
  a534df:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm6
  a534e6:	02 
  a534e7:	62 f1 6c 40 14 f7    	vunpcklps zmm6,zmm18,zmm7
  a534ed:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm6
  a534f4:	06 
  a534f5:	62 e1 7c 28 28 3d 41 	vmovaps ymm23,YMMWORD PTR [rip+0xffffffffff63f741]        # 92c40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x200f0>
  a534fc:	f7 63 ff 
  a534ff:	62 e2 45 40 7f d7    	vpermt2ps zmm18,zmm23,zmm7
  a53505:	62 b1 7c 48 28 f1    	vmovaps zmm6,zmm17
  a5350b:	62 d2 5d 48 7f f5    	vpermt2ps zmm6,zmm4,zmm13
  a53511:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm6
  a53518:	04 
  a53519:	62 d1 74 40 15 f5    	vunpckhps zmm6,zmm17,zmm13
  a5351f:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm6
  a53526:	0a 
  a53527:	62 d1 74 40 14 f5    	vunpcklps zmm6,zmm17,zmm13
  a5352d:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm6
  a53534:	0b 
  a53535:	62 c2 45 40 7f cd    	vpermt2ps zmm17,zmm23,zmm13
  a5353b:	62 51 7c 48 28 c7    	vmovaps zmm8,zmm15
  a53541:	62 12 5d 48 7f c5    	vpermt2ps zmm8,zmm4,zmm29
  a53547:	62 91 04 48 15 f5    	vunpckhps zmm6,zmm15,zmm29
  a5354d:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm6
  a53554:	18 
  a53555:	62 91 04 48 14 f5    	vunpcklps zmm6,zmm15,zmm29
  a5355b:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm6
  a53562:	17 
  a53563:	62 12 45 40 7f fd    	vpermt2ps zmm15,zmm23,zmm29
  a53569:	62 d1 7c 48 28 f6    	vmovaps zmm6,zmm14
  a5356f:	62 f2 5d 48 7f f5    	vpermt2ps zmm6,zmm4,zmm5
  a53575:	62 f1 0c 48 15 fd    	vunpckhps zmm7,zmm14,zmm5
  a5357b:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm7
  a53582:	16 
  a53583:	62 f1 0c 48 14 fd    	vunpcklps zmm7,zmm14,zmm5
  a53589:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm7
  a53590:	15 
  a53591:	62 72 45 40 7f f5    	vpermt2ps zmm14,zmm23,zmm5
  a53597:	62 41 7c 48 28 ea    	vmovaps zmm29,zmm10
  a5359d:	62 02 5d 48 7f e8    	vpermt2ps zmm29,zmm4,zmm24
  a535a3:	62 91 2c 48 15 e8    	vunpckhps zmm5,zmm10,zmm24
  a535a9:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm5
  a535b0:	0e 
  a535b1:	62 91 2c 48 14 e8    	vunpcklps zmm5,zmm10,zmm24
  a535b7:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm5
  a535be:	14 
  a535bf:	62 12 45 40 7f d0    	vpermt2ps zmm10,zmm23,zmm24
  a535c5:	62 21 7c 48 28 c0    	vmovaps zmm24,zmm16
  a535cb:	62 22 5d 48 7f c4    	vpermt2ps zmm24,zmm4,zmm20
  a535d1:	62 b1 7c 40 15 ec    	vunpckhps zmm5,zmm16,zmm20
  a535d7:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm5
  a535de:	0d 
  a535df:	62 b1 7c 40 14 ec    	vunpcklps zmm5,zmm16,zmm20
  a535e5:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm5
  a535ec:	13 
  a535ed:	62 a2 45 40 7f c4    	vpermt2ps zmm16,zmm23,zmm20
  a535f3:	62 a1 7c 48 28 e6    	vmovaps zmm20,zmm22
  a535f9:	62 c2 5d 48 7f e4    	vpermt2ps zmm20,zmm4,zmm12
  a535ff:	62 d1 4c 40 15 ec    	vunpckhps zmm5,zmm22,zmm12
  a53605:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm5
  a5360c:	12 
  a5360d:	62 d1 4c 40 14 ec    	vunpcklps zmm5,zmm22,zmm12
  a53613:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm5
  a5361a:	11 
  a5361b:	62 c2 45 40 7f f4    	vpermt2ps zmm22,zmm23,zmm12
  a53621:	62 11 7c 48 28 e9    	vmovaps zmm13,zmm25
  a53627:	62 12 5d 48 7f ea    	vpermt2ps zmm13,zmm4,zmm26
  a5362d:	62 91 34 40 15 ea    	vunpckhps zmm5,zmm25,zmm26
  a53633:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm5
  a5363a:	10 
  a5363b:	62 91 34 40 14 ea    	vunpcklps zmm5,zmm25,zmm26
  a53641:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm5
  a53648:	0f 
  a53649:	62 02 45 40 7f ca    	vpermt2ps zmm25,zmm23,zmm26
  a5364f:	62 d1 7c 48 28 fb    	vmovaps zmm7,zmm11
  a53655:	62 d2 5d 48 7f f9    	vpermt2ps zmm7,zmm4,zmm9
  a5365b:	62 d1 24 48 15 e9    	vunpckhps zmm5,zmm11,zmm9
  a53661:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x800],zmm5
  a53668:	20 
  a53669:	62 d1 24 48 14 e9    	vunpcklps zmm5,zmm11,zmm9
  a5366f:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x7c0],zmm5
  a53676:	1f 
  a53677:	62 52 45 40 7f d9    	vpermt2ps zmm11,zmm23,zmm9
  a5367d:	62 71 7c 48 28 cb    	vmovaps zmm9,zmm3
  a53683:	62 72 5d 48 7f c8    	vpermt2ps zmm9,zmm4,zmm0
  a53689:	62 f1 64 48 15 e8    	vunpckhps zmm5,zmm3,zmm0
  a5368f:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x780],zmm5
  a53696:	1e 
  a53697:	62 f1 64 48 14 e8    	vunpcklps zmm5,zmm3,zmm0
  a5369d:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0xa00],zmm5
  a536a4:	28 
  a536a5:	62 f2 45 40 7f d8    	vpermt2ps zmm3,zmm23,zmm0
  a536ab:	62 21 7c 48 28 e3    	vmovaps zmm28,zmm19
  a536b1:	62 62 5d 48 7f e1    	vpermt2ps zmm28,zmm4,zmm1
  a536b7:	62 f1 64 40 15 c1    	vunpckhps zmm0,zmm19,zmm1
  a536bd:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x9c0],zmm0
  a536c4:	27 
  a536c5:	62 f1 64 40 14 c1    	vunpcklps zmm0,zmm19,zmm1
  a536cb:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x740],zmm0
  a536d2:	1d 
  a536d3:	62 e2 45 40 7f d9    	vpermt2ps zmm19,zmm23,zmm1
  a536d9:	62 91 7c 48 28 cf    	vmovaps zmm1,zmm31
  a536df:	62 f2 5d 48 7f ca    	vpermt2ps zmm1,zmm4,zmm2
  a536e5:	62 f1 04 40 15 c2    	vunpckhps zmm0,zmm31,zmm2
  a536eb:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x700],zmm0
  a536f2:	1c 
  a536f3:	62 f1 04 40 14 c2    	vunpcklps zmm0,zmm31,zmm2
  a536f9:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x980],zmm0
  a53700:	26 
  a53701:	62 62 45 40 7f fa    	vpermt2ps zmm31,zmm23,zmm2
  a53707:	62 f1 7c 48 28 04 24 	vmovaps zmm0,ZMMWORD PTR [rsp]
  a5370e:	62 f1 7c 48 28 d0    	vmovaps zmm2,zmm0
  a53714:	62 92 5d 48 7f d3    	vpermt2ps zmm2,zmm4,zmm27
  a5371a:	62 91 7c 48 15 eb    	vunpckhps zmm5,zmm0,zmm27
  a53720:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x940],zmm5
  a53727:	25 
  a53728:	62 91 7c 48 14 eb    	vunpcklps zmm5,zmm0,zmm27
  a5372e:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x900],zmm5
  a53735:	24 
  a53736:	62 92 45 40 7f c3    	vpermt2ps zmm0,zmm23,zmm27
  a5373c:	62 f1 7c 48 29 04 24 	vmovaps ZMMWORD PTR [rsp],zmm0
  a53743:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x300]
  a5374a:	0c 
  a5374b:	62 61 7c 48 28 dd    	vmovaps zmm27,zmm5
  a53751:	62 22 5d 48 7f dd    	vpermt2ps zmm27,zmm4,zmm21
  a53757:	62 b1 54 48 15 c5    	vunpckhps zmm0,zmm5,zmm21
  a5375d:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x6c0],zmm0
  a53764:	1b 
  a53765:	62 b1 54 48 14 c5    	vunpcklps zmm0,zmm5,zmm21
  a5376b:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm0
  a53772:	1a 
  a53773:	62 b2 45 40 7f ed    	vpermt2ps zmm5,zmm23,zmm21
  a53779:	62 61 7c 48 28 f5    	vmovaps zmm30,zmm5
  a5377f:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x200]
  a53786:	08 
  a53787:	62 e1 7c 48 28 ed    	vmovaps zmm21,zmm5
  a5378d:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x140]
  a53794:	05 
  a53795:	62 e2 5d 48 7f e8    	vpermt2ps zmm21,zmm4,zmm0
  a5379b:	62 71 54 48 15 e0    	vunpckhps zmm12,zmm5,zmm0
  a537a1:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm12
  a537a8:	0c 
  a537a9:	62 71 54 48 14 e0    	vunpcklps zmm12,zmm5,zmm0
  a537af:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm12
  a537b6:	19 
  a537b7:	62 f2 45 40 7f e8    	vpermt2ps zmm5,zmm23,zmm0
  a537bd:	62 61 7c 48 28 d5    	vmovaps zmm26,zmm5
  a537c3:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x240]
  a537ca:	09 
  a537cb:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0xc0]
  a537d2:	03 
  a537d3:	62 f2 55 48 77 e0    	vpermi2ps zmm4,zmm5,zmm0
  a537d9:	62 71 54 48 15 e0    	vunpckhps zmm12,zmm5,zmm0
  a537df:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm12
  a537e6:	05 
  a537e7:	62 71 54 48 14 e0    	vunpcklps zmm12,zmm5,zmm0
  a537ed:	62 f2 45 40 7f e8    	vpermt2ps zmm5,zmm23,zmm0
  a537f3:	62 e1 7c 48 28 fd    	vmovaps zmm23,zmm5
  a537f9:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x1c0]
  a53800:	07 
  a53801:	62 f1 7c 48 11 06    	vmovups ZMMWORD PTR [rsi],zmm0
  a53807:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x180]
  a5380e:	06 
  a5380f:	62 f3 7d 48 19 46 06 	vextractf32x4 XMMWORD PTR [rsi+0x60],zmm0,0x3
  a53816:	03 
  a53817:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x80]
  a5381e:	02 
  a5381f:	62 f3 7d 48 19 c5 03 	vextractf32x4 xmm5,zmm0,0x3
  a53826:	c5 f8 13 6e 70       	vmovlps QWORD PTR [rsi+0x70],xmm5
  a5382b:	62 e1 7c 28 11 56 02 	vmovups YMMWORD PTR [rsi+0x40],ymm18
  a53832:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x100]
  a53839:	04 
  a5383a:	62 f1 7c 48 11 86 78 	vmovups ZMMWORD PTR [rsi+0x78],zmm0
  a53841:	00 00 00 
  a53844:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x2c0]
  a5384b:	0b 
  a5384c:	62 f3 7d 48 19 86 d8 	vextractf32x4 XMMWORD PTR [rsi+0xd8],zmm0,0x3
  a53853:	00 00 00 03 
  a53857:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x280]
  a5385e:	0a 
  a5385f:	62 f3 7d 48 19 c5 03 	vextractf32x4 xmm5,zmm0,0x3
  a53866:	c5 f8 13 ae e8 00 00 	vmovlps QWORD PTR [rsi+0xe8],xmm5
  a5386d:	00 
  a5386e:	62 e1 7c 28 11 8e b8 	vmovups YMMWORD PTR [rsi+0xb8],ymm17
  a53875:	00 00 00 
  a53878:	62 71 7c 48 11 86 f0 	vmovups ZMMWORD PTR [rsi+0xf0],zmm8
  a5387f:	00 00 00 
  a53882:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x5c0]
  a53889:	17 
  a5388a:	62 f3 7d 48 19 46 15 	vextractf32x4 XMMWORD PTR [rsi+0x150],zmm0,0x3
  a53891:	03 
  a53892:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x600]
  a53899:	18 
  a5389a:	62 f3 7d 48 19 c5 03 	vextractf32x4 xmm5,zmm0,0x3
  a538a1:	c5 f8 13 ae 60 01 00 	vmovlps QWORD PTR [rsi+0x160],xmm5
  a538a8:	00 
  a538a9:	c5 7c 11 be 30 01 00 	vmovups YMMWORD PTR [rsi+0x130],ymm15
  a538b0:	00 
  a538b1:	62 f1 7c 48 11 b6 68 	vmovups ZMMWORD PTR [rsi+0x168],zmm6
  a538b8:	01 00 00 
  a538bb:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x540]
  a538c2:	15 
  a538c3:	62 f3 7d 48 19 86 c8 	vextractf32x4 XMMWORD PTR [rsi+0x1c8],zmm0,0x3
  a538ca:	01 00 00 03 
  a538ce:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x580]
  a538d5:	16 
  a538d6:	62 f3 7d 48 19 c5 03 	vextractf32x4 xmm5,zmm0,0x3
  a538dd:	c5 f8 13 ae d8 01 00 	vmovlps QWORD PTR [rsi+0x1d8],xmm5
  a538e4:	00 
  a538e5:	c5 7c 11 b6 a8 01 00 	vmovups YMMWORD PTR [rsi+0x1a8],ymm14
  a538ec:	00 
  a538ed:	62 61 7c 48 11 ae e0 	vmovups ZMMWORD PTR [rsi+0x1e0],zmm29
  a538f4:	01 00 00 
  a538f7:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x500]
  a538fe:	14 
  a538ff:	62 f3 7d 48 19 46 24 	vextractf32x4 XMMWORD PTR [rsi+0x240],zmm0,0x3
  a53906:	03 
  a53907:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x380]
  a5390e:	0e 
  a5390f:	62 f3 7d 48 19 c5 03 	vextractf32x4 xmm5,zmm0,0x3
  a53916:	c5 f8 13 ae 50 02 00 	vmovlps QWORD PTR [rsi+0x250],xmm5
  a5391d:	00 
  a5391e:	c5 7c 11 96 20 02 00 	vmovups YMMWORD PTR [rsi+0x220],ymm10
  a53925:	00 
  a53926:	62 61 7c 48 11 86 58 	vmovups ZMMWORD PTR [rsi+0x258],zmm24
  a5392d:	02 00 00 
  a53930:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x4c0]
  a53937:	13 
  a53938:	62 f3 7d 48 19 86 b8 	vextractf32x4 XMMWORD PTR [rsi+0x2b8],zmm0,0x3
  a5393f:	02 00 00 03 
  a53943:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x340]
  a5394a:	0d 
  a5394b:	62 f3 7d 48 19 c5 03 	vextractf32x4 xmm5,zmm0,0x3
  a53952:	c5 f8 13 ae c8 02 00 	vmovlps QWORD PTR [rsi+0x2c8],xmm5
  a53959:	00 
  a5395a:	62 e1 7c 28 11 86 98 	vmovups YMMWORD PTR [rsi+0x298],ymm16
  a53961:	02 00 00 
  a53964:	62 e1 7c 48 11 a6 d0 	vmovups ZMMWORD PTR [rsi+0x2d0],zmm20
  a5396b:	02 00 00 
  a5396e:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x440]
  a53975:	11 
  a53976:	62 f3 7d 48 19 46 33 	vextractf32x4 XMMWORD PTR [rsi+0x330],zmm0,0x3
  a5397d:	03 
  a5397e:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x480]
  a53985:	12 
  a53986:	62 f3 7d 48 19 c5 03 	vextractf32x4 xmm5,zmm0,0x3
  a5398d:	c5 f8 13 ae 40 03 00 	vmovlps QWORD PTR [rsi+0x340],xmm5
  a53994:	00 
  a53995:	62 e1 7c 28 11 b6 10 	vmovups YMMWORD PTR [rsi+0x310],ymm22
  a5399c:	03 00 00 
  a5399f:	62 71 7c 48 11 ae 48 	vmovups ZMMWORD PTR [rsi+0x348],zmm13
  a539a6:	03 00 00 
  a539a9:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x3c0]
  a539b0:	0f 
  a539b1:	62 f3 7d 48 19 86 a8 	vextractf32x4 XMMWORD PTR [rsi+0x3a8],zmm0,0x3
  a539b8:	03 00 00 03 
  a539bc:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x400]
  a539c3:	10 
  a539c4:	62 f3 7d 48 19 c5 03 	vextractf32x4 xmm5,zmm0,0x3
  a539cb:	c5 f8 13 ae b8 03 00 	vmovlps QWORD PTR [rsi+0x3b8],xmm5
  a539d2:	00 
  a539d3:	62 61 7c 28 11 8e 88 	vmovups YMMWORD PTR [rsi+0x388],ymm25
  a539da:	03 00 00 
  a539dd:	62 f1 7c 48 11 7e 0f 	vmovups ZMMWORD PTR [rsi+0x3c0],zmm7
  a539e4:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x7c0]
  a539eb:	1f 
  a539ec:	62 f3 7d 48 19 46 42 	vextractf32x4 XMMWORD PTR [rsi+0x420],zmm0,0x3
  a539f3:	03 
  a539f4:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x800]
  a539fb:	20 
  a539fc:	62 f3 7d 48 19 c5 03 	vextractf32x4 xmm5,zmm0,0x3
  a53a03:	c5 f8 13 ae 30 04 00 	vmovlps QWORD PTR [rsi+0x430],xmm5
  a53a0a:	00 
  a53a0b:	c5 7c 11 9e 00 04 00 	vmovups YMMWORD PTR [rsi+0x400],ymm11
  a53a12:	00 
  a53a13:	62 71 7c 48 11 8e 38 	vmovups ZMMWORD PTR [rsi+0x438],zmm9
  a53a1a:	04 00 00 
  a53a1d:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0xa00]
  a53a24:	28 
  a53a25:	62 f3 7d 48 19 86 98 	vextractf32x4 XMMWORD PTR [rsi+0x498],zmm0,0x3
  a53a2c:	04 00 00 03 
  a53a30:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x780]
  a53a37:	1e 
  a53a38:	62 f3 7d 48 19 c5 03 	vextractf32x4 xmm5,zmm0,0x3
  a53a3f:	c5 f8 13 ae a8 04 00 	vmovlps QWORD PTR [rsi+0x4a8],xmm5
  a53a46:	00 
  a53a47:	c5 fc 11 9e 78 04 00 	vmovups YMMWORD PTR [rsi+0x478],ymm3
  a53a4e:	00 
  a53a4f:	62 61 7c 48 11 a6 b0 	vmovups ZMMWORD PTR [rsi+0x4b0],zmm28
  a53a56:	04 00 00 
  a53a59:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x740]
  a53a60:	1d 
  a53a61:	62 f3 7d 48 19 46 51 	vextractf32x4 XMMWORD PTR [rsi+0x510],zmm0,0x3
  a53a68:	03 
  a53a69:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x9c0]
  a53a70:	27 
  a53a71:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a53a78:	c5 f8 13 86 20 05 00 	vmovlps QWORD PTR [rsi+0x520],xmm0
  a53a7f:	00 
  a53a80:	62 e1 7c 28 11 9e f0 	vmovups YMMWORD PTR [rsi+0x4f0],ymm19
  a53a87:	04 00 00 
  a53a8a:	62 f1 7c 48 11 8e 28 	vmovups ZMMWORD PTR [rsi+0x528],zmm1
  a53a91:	05 00 00 
  a53a94:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x980]
  a53a9b:	26 
  a53a9c:	62 f3 7d 48 19 86 88 	vextractf32x4 XMMWORD PTR [rsi+0x588],zmm0,0x3
  a53aa3:	05 00 00 03 
  a53aa7:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x700]
  a53aae:	1c 
  a53aaf:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a53ab6:	c5 f8 13 86 98 05 00 	vmovlps QWORD PTR [rsi+0x598],xmm0
  a53abd:	00 
  a53abe:	62 61 7c 28 11 be 68 	vmovups YMMWORD PTR [rsi+0x568],ymm31
  a53ac5:	05 00 00 
  a53ac8:	62 f1 7c 48 11 96 a0 	vmovups ZMMWORD PTR [rsi+0x5a0],zmm2
  a53acf:	05 00 00 
  a53ad2:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x900]
  a53ad9:	24 
  a53ada:	62 f3 7d 48 19 46 60 	vextractf32x4 XMMWORD PTR [rsi+0x600],zmm0,0x3
  a53ae1:	03 
  a53ae2:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x940]
  a53ae9:	25 
  a53aea:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a53af1:	c5 f8 13 86 10 06 00 	vmovlps QWORD PTR [rsi+0x610],xmm0
  a53af8:	00 
  a53af9:	62 f1 7c 48 28 04 24 	vmovaps zmm0,ZMMWORD PTR [rsp]
  a53b00:	c5 fc 11 86 e0 05 00 	vmovups YMMWORD PTR [rsi+0x5e0],ymm0
  a53b07:	00 
  a53b08:	62 61 7c 48 11 9e 18 	vmovups ZMMWORD PTR [rsi+0x618],zmm27
  a53b0f:	06 00 00 
  a53b12:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x680]
  a53b19:	1a 
  a53b1a:	62 f3 7d 48 19 86 78 	vextractf32x4 XMMWORD PTR [rsi+0x678],zmm0,0x3
  a53b21:	06 00 00 03 
  a53b25:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x6c0]
  a53b2c:	1b 
  a53b2d:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a53b34:	c5 f8 13 86 88 06 00 	vmovlps QWORD PTR [rsi+0x688],xmm0
  a53b3b:	00 
  a53b3c:	62 61 7c 28 11 b6 58 	vmovups YMMWORD PTR [rsi+0x658],ymm30
  a53b43:	06 00 00 
  a53b46:	62 e1 7c 48 11 ae 90 	vmovups ZMMWORD PTR [rsi+0x690],zmm21
  a53b4d:	06 00 00 
  a53b50:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x640]
  a53b57:	19 
  a53b58:	62 f3 7d 48 19 46 6f 	vextractf32x4 XMMWORD PTR [rsi+0x6f0],zmm0,0x3
  a53b5f:	03 
  a53b60:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x300]
  a53b67:	0c 
  a53b68:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a53b6f:	c5 f8 13 86 00 07 00 	vmovlps QWORD PTR [rsi+0x700],xmm0
  a53b76:	00 
  a53b77:	62 61 7c 28 11 96 d0 	vmovups YMMWORD PTR [rsi+0x6d0],ymm26
  a53b7e:	06 00 00 
  a53b81:	62 f1 7c 48 11 a6 08 	vmovups ZMMWORD PTR [rsi+0x708],zmm4
  a53b88:	07 00 00 
  a53b8b:	62 73 7d 48 19 a6 68 	vextractf32x4 XMMWORD PTR [rsi+0x768],zmm12,0x3
  a53b92:	07 00 00 03 
  a53b96:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x140]
  a53b9d:	05 
  a53b9e:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a53ba5:	c5 f8 13 86 78 07 00 	vmovlps QWORD PTR [rsi+0x778],xmm0
  a53bac:	00 
  a53bad:	62 e1 7c 28 11 be 48 	vmovups YMMWORD PTR [rsi+0x748],ymm23
  a53bb4:	07 00 00 
  a53bb7:	48 89 ec             	mov    rsp,rbp
  a53bba:	5d                   	pop    rbp
  a53bbb:	c5 f8 77             	vzeroupper
  a53bbe:	c3                   	ret
