
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a6aa00 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a6aa00:	55                   	push   rbp
  a6aa01:	48 89 e5             	mov    rbp,rsp
  a6aa04:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a6aa08:	48 81 ec c0 03 00 00 	sub    rsp,0x3c0
  a6aa0f:	48 69 c2 60 03 00 00 	imul   rax,rdx,0x360
  a6aa16:	31 d2                	xor    edx,edx
  a6aa18:	4c 8d 84 24 40 03 00 	lea    r8,[rsp+0x340]
  a6aa1f:	00 
  a6aa20:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  a6aa25:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  a6aa2c:	00 00 00 00 
  a6aa30:	c6 84 24 40 03 00 00 	mov    BYTE PTR [rsp+0x340],0x0
  a6aa37:	00 
  a6aa38:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  a6aa3d:	62 71 7c 48 10 14 17 	vmovups zmm10,ZMMWORD PTR [rdi+rdx*1]
  a6aa44:	c5 fc 10 44 17 40    	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x40]
  a6aa4a:	62 51 7c 48 28 da    	vmovaps zmm11,zmm10
  a6aa50:	62 e1 7c 48 28 15 66 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff629966]        # 943c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21870>
  a6aa57:	99 62 ff 
  a6aa5a:	62 72 6d 40 7f d0    	vpermt2ps zmm10,zmm18,zmm0
  a6aa60:	62 f1 7c 48 10 9c 17 	vmovups zmm3,ZMMWORD PTR [rdi+rdx*1+0x60]
  a6aa67:	60 00 00 00 
  a6aa6b:	c5 fc 10 8c 17 a0 00 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0xa0]
  a6aa72:	00 00 
  a6aa74:	62 f1 7c 48 28 f3    	vmovaps zmm6,zmm3
  a6aa7a:	62 f2 6d 40 7f d9    	vpermt2ps zmm3,zmm18,zmm1
  a6aa80:	62 71 7c 48 10 6c 17 	vmovups zmm13,ZMMWORD PTR [rdi+rdx*1+0xc0]
  a6aa87:	03 
  a6aa88:	c5 fc 10 94 17 00 01 	vmovups ymm2,YMMWORD PTR [rdi+rdx*1+0x100]
  a6aa8f:	00 00 
  a6aa91:	62 d1 7c 48 28 fd    	vmovaps zmm7,zmm13
  a6aa97:	62 72 6d 40 7f ea    	vpermt2ps zmm13,zmm18,zmm2
  a6aa9d:	62 f1 7c 48 10 ac 17 	vmovups zmm5,ZMMWORD PTR [rdi+rdx*1+0x120]
  a6aaa4:	20 01 00 00 
  a6aaa8:	c5 fc 10 a4 17 60 01 	vmovups ymm4,YMMWORD PTR [rdi+rdx*1+0x160]
  a6aaaf:	00 00 
  a6aab1:	62 e1 7c 48 28 0d c5 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff6298c5]        # 94380 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21830>
  a6aab8:	98 62 ff 
  a6aabb:	62 72 75 40 7f d8    	vpermt2ps zmm11,zmm17,zmm0
  a6aac1:	62 71 7c 48 28 f5    	vmovaps zmm14,zmm5
  a6aac7:	62 f2 6d 40 7f ec    	vpermt2ps zmm5,zmm18,zmm4
  a6aacd:	62 e1 7c 48 10 44 17 	vmovups zmm16,ZMMWORD PTR [rdi+rdx*1+0x180]
  a6aad4:	06 
  a6aad5:	62 f2 75 40 7f f1    	vpermt2ps zmm6,zmm17,zmm1
  a6aadb:	c5 fc 10 84 17 c0 01 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x1c0]
  a6aae2:	00 00 
  a6aae4:	62 31 7c 48 28 f8    	vmovaps zmm15,zmm16
  a6aaea:	62 e2 6d 40 7f c0    	vpermt2ps zmm16,zmm18,zmm0
  a6aaf0:	62 f2 75 40 7f fa    	vpermt2ps zmm7,zmm17,zmm2
  a6aaf6:	62 71 7c 48 10 84 17 	vmovups zmm8,ZMMWORD PTR [rdi+rdx*1+0x1e0]
  a6aafd:	e0 01 00 00 
  a6ab01:	c5 fc 10 8c 17 20 02 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x220]
  a6ab08:	00 00 
  a6ab0a:	62 51 7c 48 28 c8    	vmovaps zmm9,zmm8
  a6ab10:	62 72 75 40 7f f4    	vpermt2ps zmm14,zmm17,zmm4
  a6ab16:	62 72 6d 40 7f c1    	vpermt2ps zmm8,zmm18,zmm1
  a6ab1c:	62 71 7c 48 10 64 17 	vmovups zmm12,ZMMWORD PTR [rdi+rdx*1+0x240]
  a6ab23:	09 
  a6ab24:	c5 fc 10 94 17 80 02 	vmovups ymm2,YMMWORD PTR [rdi+rdx*1+0x280]
  a6ab2b:	00 00 
  a6ab2d:	62 72 75 40 7f f8    	vpermt2ps zmm15,zmm17,zmm0
  a6ab33:	62 c1 7c 48 28 ec    	vmovaps zmm21,zmm12
  a6ab39:	62 72 6d 40 7f e2    	vpermt2ps zmm12,zmm18,zmm2
  a6ab3f:	62 e1 7c 48 10 a4 17 	vmovups zmm20,ZMMWORD PTR [rdi+rdx*1+0x2a0]
  a6ab46:	a0 02 00 00 
  a6ab4a:	62 72 75 40 7f c9    	vpermt2ps zmm9,zmm17,zmm1
  a6ab50:	c5 fc 10 84 17 e0 02 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x2e0]
  a6ab57:	00 00 
  a6ab59:	62 a1 7c 48 28 f4    	vmovaps zmm22,zmm20
  a6ab5f:	62 e2 6d 40 7f e0    	vpermt2ps zmm20,zmm18,zmm0
  a6ab65:	62 e2 75 40 7f ea    	vpermt2ps zmm21,zmm17,zmm2
  a6ab6b:	62 e1 7c 48 10 7c 17 	vmovups zmm23,ZMMWORD PTR [rdi+rdx*1+0x300]
  a6ab72:	0c 
  a6ab73:	c5 fc 10 8c 17 40 03 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x340]
  a6ab7a:	00 00 
  a6ab7c:	62 21 7c 48 28 c7    	vmovaps zmm24,zmm23
  a6ab82:	62 e2 75 40 7f f0    	vpermt2ps zmm22,zmm17,zmm0
  a6ab88:	62 62 75 40 7f c1    	vpermt2ps zmm24,zmm17,zmm1
  a6ab8e:	62 e2 6d 40 7f f9    	vpermt2ps zmm23,zmm18,zmm1
  a6ab94:	62 b1 0c 48 58 e5    	vaddps zmm4,zmm14,zmm21
  a6ab9a:	62 f1 24 48 58 d4    	vaddps zmm2,zmm11,zmm4
  a6aba0:	62 21 04 48 58 d6    	vaddps zmm26,zmm15,zmm22
  a6aba6:	62 01 34 48 58 d8    	vaddps zmm27,zmm9,zmm24
  a6abac:	62 41 54 48 58 e4    	vaddps zmm28,zmm5,zmm12
  a6abb2:	62 91 4c 48 58 c2    	vaddps zmm0,zmm6,zmm26
  a6abb8:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm0
  a6abbf:	02 
  a6abc0:	62 81 2c 48 58 cc    	vaddps zmm17,zmm10,zmm28
  a6abc6:	62 e1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm17
  a6abcd:	04 
  a6abce:	62 21 7c 40 58 ec    	vaddps zmm29,zmm16,zmm20
  a6abd4:	62 01 64 48 58 fd    	vaddps zmm31,zmm3,zmm29
  a6abda:	62 61 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm31
  a6abe1:	08 
  a6abe2:	62 01 44 48 58 cb    	vaddps zmm25,zmm7,zmm27
  a6abe8:	62 61 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm25
  a6abef:	03 
  a6abf0:	62 21 3c 48 58 f7    	vaddps zmm30,zmm8,zmm23
  a6abf6:	62 81 14 48 58 de    	vaddps zmm19,zmm13,zmm30
  a6abfc:	62 e2 7d 48 18 15 5a 	vbroadcastss zmm18,DWORD PTR [rip+0xffffffffff60a85a]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a6ac03:	a8 60 ff 
  a6ac06:	62 72 6d 40 bc dc    	vfnmadd231ps zmm11,zmm18,zmm4
  a6ac0c:	62 91 7c 48 58 e1    	vaddps zmm4,zmm0,zmm25
  a6ac12:	62 d1 54 48 5c ec    	vsubps zmm5,zmm5,zmm12
  a6ac18:	62 31 04 40 58 e3    	vaddps zmm12,zmm31,zmm19
  a6ac1e:	62 92 6d 40 bc f2    	vfnmadd231ps zmm6,zmm18,zmm26
  a6ac24:	62 d1 74 40 58 c4    	vaddps zmm0,zmm17,zmm12
  a6ac2a:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a6ac31:	01 
  a6ac32:	62 e2 7d 48 18 0d 98 	vbroadcastss zmm17,DWORD PTR [rip+0xffffffffff60a698]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a6ac39:	a6 60 ff 
  a6ac3c:	62 21 54 48 59 d1    	vmulps zmm26,zmm5,zmm17
  a6ac42:	62 a1 7c 40 5c c4    	vsubps zmm16,zmm16,zmm20
  a6ac48:	62 a1 7c 40 59 c1    	vmulps zmm16,zmm16,zmm17
  a6ac4e:	62 81 24 48 58 e2    	vaddps zmm20,zmm11,zmm26
  a6ac54:	62 92 6d 40 bc dd    	vfnmadd231ps zmm3,zmm18,zmm29
  a6ac5a:	62 31 04 48 5c fe    	vsubps zmm15,zmm15,zmm22
  a6ac60:	62 21 04 48 59 e9    	vmulps zmm29,zmm15,zmm17
  a6ac66:	62 21 4c 48 58 f8    	vaddps zmm31,zmm6,zmm16
  a6ac6c:	62 01 64 48 5c cd    	vsubps zmm25,zmm3,zmm29
  a6ac72:	62 92 6d 40 bc fb    	vfnmadd231ps zmm7,zmm18,zmm27
  a6ac78:	62 31 3c 48 5c c7    	vsubps zmm8,zmm8,zmm23
  a6ac7e:	62 71 6c 48 58 fc    	vaddps zmm15,zmm2,zmm4
  a6ac84:	62 31 3c 48 59 c1    	vmulps zmm8,zmm8,zmm17
  a6ac8a:	62 c1 44 48 58 f8    	vaddps zmm23,zmm7,zmm8
  a6ac90:	62 12 6d 40 bc ee    	vfnmadd231ps zmm13,zmm18,zmm30
  a6ac96:	62 f2 7d 48 18 0d c8 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff60a9c8]        # 75668 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b18>
  a6ac9d:	a9 60 ff 
  a6aca0:	62 e1 34 40 59 f1    	vmulps zmm22,zmm25,zmm1
  a6aca6:	62 11 34 48 5c c8    	vsubps zmm9,zmm9,zmm24
  a6acac:	62 31 34 48 59 c9    	vmulps zmm9,zmm9,zmm17
  a6acb2:	62 41 14 48 5c c1    	vsubps zmm24,zmm13,zmm9
  a6acb8:	62 f2 7d 48 18 2d 16 	vbroadcastss zmm5,DWORD PTR [rip+0xffffffffff60a816]        # 754d8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2988>
  a6acbf:	a8 60 ff 
  a6acc2:	62 e2 05 40 b8 f5    	vfmadd231ps zmm22,zmm31,zmm5
  a6acc8:	62 12 6d 40 bc d4    	vfnmadd231ps zmm10,zmm18,zmm28
  a6acce:	62 62 7d 48 18 25 40 	vbroadcastss zmm28,DWORD PTR [rip+0xffffffffff60a640]        # 75318 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x27c8>
  a6acd5:	a6 60 ff 
  a6acd8:	62 01 3c 40 59 dc    	vmulps zmm27,zmm24,zmm28
  a6acde:	62 31 0c 48 5c f5    	vsubps zmm14,zmm14,zmm21
  a6ace4:	62 f2 7d 48 18 05 ee 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff60a7ee]        # 754dc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x298c>
  a6aceb:	a7 60 ff 
  a6acee:	62 62 45 40 b8 d8    	vfmadd231ps zmm27,zmm23,zmm0
  a6acf4:	62 31 0c 48 59 f1    	vmulps zmm14,zmm14,zmm17
  a6acfa:	62 c1 2c 48 5c ee    	vsubps zmm21,zmm10,zmm14
  a6ad00:	62 61 34 40 59 cd    	vmulps zmm25,zmm25,zmm5
  a6ad06:	62 02 75 48 bc cf    	vfnmadd231ps zmm25,zmm1,zmm31
  a6ad0c:	62 61 3c 40 59 c0    	vmulps zmm24,zmm24,zmm0
  a6ad12:	62 11 24 48 5c da    	vsubps zmm11,zmm11,zmm26
  a6ad18:	62 b1 4c 48 5c f0    	vsubps zmm6,zmm6,zmm16
  a6ad1e:	62 22 1d 40 bc c7    	vfnmadd231ps zmm24,zmm28,zmm23
  a6ad24:	62 f1 14 40 58 db    	vaddps zmm3,zmm29,zmm3
  a6ad2a:	62 01 64 48 59 d4    	vmulps zmm26,zmm3,zmm28
  a6ad30:	62 62 4d 48 b8 d0    	vfmadd231ps zmm26,zmm6,zmm0
  a6ad36:	62 01 4c 40 58 eb    	vaddps zmm29,zmm22,zmm27
  a6ad3c:	62 d1 44 48 5c f8    	vsubps zmm7,zmm7,zmm8
  a6ad42:	62 51 34 48 58 c5    	vaddps zmm8,zmm9,zmm13
  a6ad48:	62 f2 7d 48 18 0d 9e 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff60a79e]        # 754f0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x29a0>
  a6ad4f:	a7 60 ff 
  a6ad52:	62 71 3c 48 59 c9    	vmulps zmm9,zmm8,zmm1
  a6ad58:	62 01 34 40 58 f0    	vaddps zmm30,zmm25,zmm24
  a6ad5e:	62 f2 7d 48 18 2d 90 	vbroadcastss zmm5,DWORD PTR [rip+0xffffffffff60a890]        # 755f8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2aa8>
  a6ad65:	a8 60 ff 
  a6ad68:	62 72 45 48 bc cd    	vfnmadd231ps zmm9,zmm7,zmm5
  a6ad6e:	62 51 0c 48 58 d2    	vaddps zmm10,zmm14,zmm10
  a6ad74:	62 f1 64 48 59 d8    	vmulps zmm3,zmm3,zmm0
  a6ad7a:	62 41 2c 40 58 f9    	vaddps zmm31,zmm26,zmm9
  a6ad80:	62 f2 1d 40 bc de    	vfnmadd231ps zmm3,zmm28,zmm6
  a6ad86:	62 f1 3c 48 59 f5    	vmulps zmm6,zmm8,zmm5
  a6ad8c:	62 f2 75 48 b8 f7    	vfmadd231ps zmm6,zmm1,zmm7
  a6ad92:	62 11 5c 40 58 ed    	vaddps zmm13,zmm20,zmm29
  a6ad98:	62 f1 64 48 5c fe    	vsubps zmm7,zmm3,zmm6
  a6ad9e:	62 31 7c 48 28 c2    	vmovaps zmm8,zmm18
  a6ada4:	62 f2 6d 40 ac e2    	vfnmadd213ps zmm4,zmm18,zmm2
  a6adaa:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x200]
  a6adb1:	08 
  a6adb2:	62 b1 7c 48 5c c3    	vsubps zmm0,zmm0,zmm19
  a6adb8:	62 81 54 40 58 fe    	vaddps zmm23,zmm21,zmm30
  a6adbe:	62 e1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm23
  a6adc5:	05 
  a6adc6:	62 b1 7c 48 28 e9    	vmovaps zmm5,zmm17
  a6adcc:	62 b1 7c 48 59 c9    	vmulps zmm1,zmm0,zmm17
  a6add2:	62 e1 5c 48 58 c9    	vaddps zmm17,zmm4,zmm1
  a6add8:	62 72 6d 40 ac 64 24 	vfnmadd213ps zmm12,zmm18,ZMMWORD PTR [rsp+0x100]
  a6addf:	04 
  a6ade0:	62 91 24 48 58 c7    	vaddps zmm0,zmm11,zmm31
  a6ade6:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x80]
  a6aded:	02 
  a6adee:	62 f1 6c 48 5c 54 24 	vsubps zmm2,zmm2,ZMMWORD PTR [rsp+0xc0]
  a6adf5:	03 
  a6adf6:	62 e1 6c 48 59 d5    	vmulps zmm18,zmm2,zmm5
  a6adfc:	62 b1 1c 48 5c d2    	vsubps zmm2,zmm12,zmm18
  a6ae02:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm2
  a6ae09:	07 
  a6ae0a:	62 61 2c 48 58 e7    	vaddps zmm28,zmm10,zmm7
  a6ae10:	62 22 3d 48 ac ec    	vfnmadd213ps zmm29,zmm8,zmm20
  a6ae16:	62 91 34 40 5c d0    	vsubps zmm2,zmm25,zmm24
  a6ae1c:	62 e1 6c 48 59 dd    	vmulps zmm19,zmm2,zmm5
  a6ae22:	62 b1 14 40 58 d3    	vaddps zmm2,zmm29,zmm19
  a6ae28:	62 22 3d 48 ac f5    	vfnmadd213ps zmm30,zmm8,zmm21
  a6ae2e:	62 11 4c 40 5c f3    	vsubps zmm14,zmm22,zmm27
  a6ae34:	62 e1 0c 48 59 f5    	vmulps zmm22,zmm14,zmm5
  a6ae3a:	62 31 0c 40 5c f6    	vsubps zmm14,zmm30,zmm22
  a6ae40:	62 71 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm14
  a6ae47:	04 
  a6ae48:	62 42 3d 48 ac fb    	vfnmadd213ps zmm31,zmm8,zmm11
  a6ae4e:	62 f1 64 48 58 de    	vaddps zmm3,zmm3,zmm6
  a6ae54:	62 f1 64 48 59 dd    	vmulps zmm3,zmm3,zmm5
  a6ae5a:	62 f1 04 40 58 f3    	vaddps zmm6,zmm31,zmm3
  a6ae60:	62 d2 3d 48 ac fa    	vfnmadd213ps zmm7,zmm8,zmm10
  a6ae66:	62 51 2c 40 5c c9    	vsubps zmm9,zmm26,zmm9
  a6ae6c:	62 71 34 48 59 cd    	vmulps zmm9,zmm9,zmm5
  a6ae72:	62 51 44 48 5c d9    	vsubps zmm11,zmm7,zmm9
  a6ae78:	62 e1 5c 48 5c e1    	vsubps zmm20,zmm4,zmm1
  a6ae7e:	62 d1 6c 40 58 cc    	vaddps zmm1,zmm18,zmm12
  a6ae84:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm1
  a6ae8b:	0b 
  a6ae8c:	62 a1 14 40 5c eb    	vsubps zmm21,zmm29,zmm19
  a6ae92:	62 b1 0c 40 58 ce    	vaddps zmm1,zmm30,zmm22
  a6ae98:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm1
  a6ae9f:	06 
  a6aea0:	62 e1 04 40 5c d3    	vsubps zmm18,zmm31,zmm3
  a6aea6:	62 d1 7c 48 28 e7    	vmovaps zmm4,zmm15
  a6aeac:	62 51 7c 48 28 c5    	vmovaps zmm8,zmm13
  a6aeb2:	62 c1 44 48 58 c1    	vaddps zmm16,zmm7,zmm9
  a6aeb8:	62 61 7c 48 28 15 be 	vmovaps zmm26,ZMMWORD PTR [rip+0xffffffffff65c0be]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a6aebf:	c0 65 ff 
  a6aec2:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  a6aec6:	62 72 2d 40 7f c1    	vpermt2ps zmm8,zmm26,zmm1
  a6aecc:	62 61 7c 48 28 2d ea 	vmovaps zmm29,ZMMWORD PTR [rip+0xffffffffff65c0ea]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a6aed3:	c0 65 ff 
  a6aed6:	62 72 15 40 7f e9    	vpermt2ps zmm13,zmm29,zmm1
  a6aedc:	62 71 7c 48 28 e0    	vmovaps zmm12,zmm0
  a6aee2:	62 b2 2d 40 7f e2    	vpermt2ps zmm4,zmm26,zmm18
  a6aee8:	62 72 2d 40 7f e1    	vpermt2ps zmm12,zmm26,zmm1
  a6aeee:	62 f2 15 40 7f c1    	vpermt2ps zmm0,zmm29,zmm1
  a6aef4:	62 b1 7c 48 28 d9    	vmovaps zmm3,zmm17
  a6aefa:	62 32 15 40 7f fa    	vpermt2ps zmm15,zmm29,zmm18
  a6af00:	62 f2 2d 40 7f d9    	vpermt2ps zmm3,zmm26,zmm1
  a6af06:	62 e2 15 40 7f c9    	vpermt2ps zmm17,zmm29,zmm1
  a6af0c:	62 e1 7c 48 28 d2    	vmovaps zmm18,zmm2
  a6af12:	62 f2 15 40 7f d1    	vpermt2ps zmm2,zmm29,zmm1
  a6af18:	62 e1 7c 48 28 f6    	vmovaps zmm22,zmm6
  a6af1e:	62 f2 15 40 7f f1    	vpermt2ps zmm6,zmm29,zmm1
  a6af24:	62 a1 7c 48 28 dc    	vmovaps zmm19,zmm20
  a6af2a:	62 e2 2d 40 7f d1    	vpermt2ps zmm18,zmm26,zmm1
  a6af30:	62 e2 2d 40 7f d9    	vpermt2ps zmm19,zmm26,zmm1
  a6af36:	62 e2 15 40 7f e1    	vpermt2ps zmm20,zmm29,zmm1
  a6af3c:	62 21 7c 48 28 c5    	vmovaps zmm24,zmm21
  a6af42:	62 e2 2d 40 7f f1    	vpermt2ps zmm22,zmm26,zmm1
  a6af48:	62 62 2d 40 7f c1    	vpermt2ps zmm24,zmm26,zmm1
  a6af4e:	62 e2 15 40 7f e9    	vpermt2ps zmm21,zmm29,zmm1
  a6af54:	62 71 7c 48 28 cc    	vmovaps zmm9,zmm4
  a6af5a:	62 f1 7c 48 28 3d 9c 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff65bf9c]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a6af61:	bf 65 ff 
  a6af64:	62 32 45 48 7f ca    	vpermt2ps zmm9,zmm7,zmm18
  a6af6a:	62 61 7c 48 28 3d cc 	vmovaps zmm31,ZMMWORD PTR [rip+0xffffffffff65bfcc]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a6af71:	bf 65 ff 
  a6af74:	62 b2 05 40 7f e2    	vpermt2ps zmm4,zmm31,zmm18
  a6af7a:	62 c1 7c 48 28 d0    	vmovaps zmm18,zmm8
  a6af80:	62 41 7c 48 28 cc    	vmovaps zmm25,zmm12
  a6af86:	62 a2 45 48 7f d6    	vpermt2ps zmm18,zmm7,zmm22
  a6af8c:	62 22 45 48 7f cb    	vpermt2ps zmm25,zmm7,zmm19
  a6af92:	62 32 05 40 7f e3    	vpermt2ps zmm12,zmm31,zmm19
  a6af98:	62 e1 7c 48 28 db    	vmovaps zmm19,zmm3
  a6af9e:	62 32 05 40 7f c6    	vpermt2ps zmm8,zmm31,zmm22
  a6afa4:	62 82 45 48 7f d8    	vpermt2ps zmm19,zmm7,zmm24
  a6afaa:	62 72 45 48 7f fa    	vpermt2ps zmm15,zmm7,zmm2
  a6afb0:	62 72 45 48 7f ee    	vpermt2ps zmm13,zmm7,zmm6
  a6afb6:	62 92 05 40 7f d8    	vpermt2ps zmm3,zmm31,zmm24
  a6afbc:	62 b2 45 48 7f c4    	vpermt2ps zmm0,zmm7,zmm20
  a6afc2:	62 a2 45 48 7f cd    	vpermt2ps zmm17,zmm7,zmm21
  a6afc8:	62 f1 85 48 14 d0    	vunpcklpd zmm2,zmm15,zmm0
  a6afce:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm2
  a6afd5:	02 
  a6afd6:	62 f1 85 48 15 c0    	vunpckhpd zmm0,zmm15,zmm0
  a6afdc:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm0
  a6afe3:	03 
  a6afe4:	62 b1 95 48 14 c1    	vunpcklpd zmm0,zmm13,zmm17
  a6afea:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm0
  a6aff1:	09 
  a6aff2:	62 b1 95 48 15 c1    	vunpckhpd zmm0,zmm13,zmm17
  a6aff8:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm0
  a6afff:	0a 
  a6b000:	62 71 7c 48 28 74 24 	vmovaps zmm14,ZMMWORD PTR [rsp+0x40]
  a6b007:	01 
  a6b008:	62 d1 7c 48 28 ee    	vmovaps zmm5,zmm14
  a6b00e:	62 81 b5 48 14 f1    	vunpcklpd zmm22,zmm9,zmm25
  a6b014:	62 b2 2d 40 7f e8    	vpermt2ps zmm5,zmm26,zmm16
  a6b01a:	62 32 15 40 7f f0    	vpermt2ps zmm14,zmm29,zmm16
  a6b020:	62 b1 7c 48 28 d7    	vmovaps zmm2,zmm23
  a6b026:	62 11 b5 48 15 f9    	vunpckhpd zmm15,zmm9,zmm25
  a6b02c:	62 f2 2d 40 7f d1    	vpermt2ps zmm2,zmm26,zmm1
  a6b032:	62 01 7c 48 28 dc    	vmovaps zmm27,zmm28
  a6b038:	62 62 2d 40 7f d9    	vpermt2ps zmm27,zmm26,zmm1
  a6b03e:	62 21 ed 40 14 f3    	vunpcklpd zmm30,zmm18,zmm19
  a6b044:	62 e1 7c 48 28 4c 24 	vmovaps zmm17,ZMMWORD PTR [rsp+0x1c0]
  a6b04b:	07 
  a6b04c:	62 a1 7c 48 28 c1    	vmovaps zmm16,zmm17
  a6b052:	62 e2 2d 40 7f c1    	vpermt2ps zmm16,zmm26,zmm1
  a6b058:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x100]
  a6b05f:	04 
  a6b060:	62 c1 7c 48 28 e2    	vmovaps zmm20,zmm10
  a6b066:	62 31 ed 40 15 cb    	vunpckhpd zmm9,zmm18,zmm19
  a6b06c:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm9
  a6b073:	0c 
  a6b074:	62 e2 2d 40 7f e1    	vpermt2ps zmm20,zmm26,zmm1
  a6b07a:	62 72 15 40 7f d1    	vpermt2ps zmm10,zmm29,zmm1
  a6b080:	62 d1 7c 48 28 f3    	vmovaps zmm6,zmm11
  a6b086:	62 c1 7c 48 28 d3    	vmovaps zmm18,zmm11
  a6b08c:	62 c1 dd 48 14 ec    	vunpcklpd zmm21,zmm4,zmm12
  a6b092:	62 e2 2d 40 7f d1    	vpermt2ps zmm18,zmm26,zmm1
  a6b098:	62 71 7c 48 28 6c 24 	vmovaps zmm13,ZMMWORD PTR [rsp+0x2c0]
  a6b09f:	0b 
  a6b0a0:	62 c1 7c 48 28 dd    	vmovaps zmm19,zmm13
  a6b0a6:	62 e2 2d 40 7f d9    	vpermt2ps zmm19,zmm26,zmm1
  a6b0ac:	62 41 dd 48 15 c4    	vunpckhpd zmm24,zmm4,zmm12
  a6b0b2:	62 71 7c 48 28 5c 24 	vmovaps zmm11,ZMMWORD PTR [rsp+0x180]
  a6b0b9:	06 
  a6b0ba:	62 d1 7c 48 28 e3    	vmovaps zmm4,zmm11
  a6b0c0:	62 f2 2d 40 7f e1    	vpermt2ps zmm4,zmm26,zmm1
  a6b0c6:	62 71 7c 48 28 e5    	vmovaps zmm12,zmm5
  a6b0cc:	62 61 bd 48 14 cb    	vunpcklpd zmm25,zmm8,zmm3
  a6b0d2:	62 32 45 48 7f e4    	vpermt2ps zmm12,zmm7,zmm20
  a6b0d8:	62 b2 05 40 7f ec    	vpermt2ps zmm5,zmm31,zmm20
  a6b0de:	62 e1 7c 48 28 fa    	vmovaps zmm23,zmm2
  a6b0e4:	62 e1 bd 48 15 e3    	vunpckhpd zmm20,zmm8,zmm3
  a6b0ea:	62 a2 45 48 7f fa    	vpermt2ps zmm23,zmm7,zmm18
  a6b0f0:	62 b2 05 40 7f d2    	vpermt2ps zmm2,zmm31,zmm18
  a6b0f6:	62 91 7c 48 28 db    	vmovaps zmm3,zmm27
  a6b0fc:	62 31 7c 48 28 c6    	vmovaps zmm8,zmm22
  a6b102:	62 b2 45 48 7f db    	vpermt2ps zmm3,zmm7,zmm19
  a6b108:	62 22 05 40 7f db    	vpermt2ps zmm27,zmm31,zmm19
  a6b10e:	62 21 7c 48 28 d0    	vmovaps zmm26,zmm16
  a6b114:	62 f1 7c 48 28 05 22 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff65bd22]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a6b11b:	bd 65 ff 
  a6b11e:	62 12 7d 48 7f c6    	vpermt2ps zmm8,zmm0,zmm30
  a6b124:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm8
  a6b12b:	08 
  a6b12c:	62 62 45 48 7f d4    	vpermt2ps zmm26,zmm7,zmm4
  a6b132:	62 e2 05 40 7f c4    	vpermt2ps zmm16,zmm31,zmm4
  a6b138:	62 52 45 48 7f f2    	vpermt2ps zmm14,zmm7,zmm10
  a6b13e:	62 51 7c 48 28 c7    	vmovaps zmm8,zmm15
  a6b144:	62 71 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm15
  a6b14b:	04 
  a6b14c:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x80]
  a6b153:	02 
  a6b154:	62 71 7c 48 28 fc    	vmovaps zmm15,zmm4
  a6b15a:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x240]
  a6b161:	09 
  a6b162:	62 d2 7d 48 7f e2    	vpermt2ps zmm4,zmm0,zmm10
  a6b168:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm4
  a6b16f:	02 
  a6b170:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x140]
  a6b177:	05 
  a6b178:	62 f2 15 40 7f e1    	vpermt2ps zmm4,zmm29,zmm1
  a6b17e:	62 52 7d 48 7f c1    	vpermt2ps zmm8,zmm0,zmm9
  a6b184:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm8
  a6b18b:	05 
  a6b18c:	62 62 15 40 7f e1    	vpermt2ps zmm28,zmm29,zmm1
  a6b192:	62 f2 15 40 7f f1    	vpermt2ps zmm6,zmm29,zmm1
  a6b198:	62 f2 45 48 7f e6    	vpermt2ps zmm4,zmm7,zmm6
  a6b19e:	62 f1 7c 48 28 f4    	vmovaps zmm6,zmm4
  a6b1a4:	62 21 7c 48 28 fd    	vmovaps zmm31,zmm21
  a6b1aa:	62 e2 15 40 7f c9    	vpermt2ps zmm17,zmm29,zmm1
  a6b1b0:	62 72 15 40 7f e9    	vpermt2ps zmm13,zmm29,zmm1
  a6b1b6:	62 72 15 40 7f d9    	vpermt2ps zmm11,zmm29,zmm1
  a6b1bc:	62 82 7d 48 7f e9    	vpermt2ps zmm21,zmm0,zmm25
  a6b1c2:	62 e1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm21
  a6b1c9:	01 
  a6b1ca:	62 42 45 48 7f e5    	vpermt2ps zmm28,zmm7,zmm13
  a6b1d0:	62 c2 45 48 7f cb    	vpermt2ps zmm17,zmm7,zmm11
  a6b1d6:	62 e1 9d 48 14 d3    	vunpcklpd zmm18,zmm12,zmm3
  a6b1dc:	62 01 7c 48 28 e8    	vmovaps zmm29,zmm24
  a6b1e2:	62 71 9d 48 15 e3    	vunpckhpd zmm12,zmm12,zmm3
  a6b1e8:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0xc0]
  a6b1ef:	03 
  a6b1f0:	62 e1 7c 48 28 d9    	vmovaps zmm19,zmm1
  a6b1f6:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x280]
  a6b1fd:	0a 
  a6b1fe:	62 d2 7d 48 7f c8    	vpermt2ps zmm1,zmm0,zmm8
  a6b204:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm1
  a6b20b:	03 
  a6b20c:	62 f1 7c 48 28 25 ea 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff65bbea]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a6b213:	bb 65 ff 
  a6b216:	62 52 5d 48 7f fa    	vpermt2ps zmm15,zmm4,zmm10
  a6b21c:	62 11 c5 40 14 da    	vunpcklpd zmm11,zmm23,zmm26
  a6b222:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm11
  a6b229:	06 
  a6b22a:	62 11 c5 40 15 d2    	vunpckhpd zmm10,zmm23,zmm26
  a6b230:	62 81 d5 48 14 fb    	vunpcklpd zmm23,zmm5,zmm27
  a6b236:	62 22 7d 48 7f c4    	vpermt2ps zmm24,zmm0,zmm20
  a6b23c:	62 11 7c 48 28 e8    	vmovaps zmm13,zmm24
  a6b242:	62 91 d5 48 15 db    	vunpckhpd zmm3,zmm5,zmm27
  a6b248:	62 b1 ed 48 14 c8    	vunpcklpd zmm1,zmm2,zmm16
  a6b24e:	62 a1 ed 48 15 c0    	vunpckhpd zmm16,zmm2,zmm16
  a6b254:	62 c2 5d 48 7f d8    	vpermt2ps zmm19,zmm4,zmm8
  a6b25a:	62 91 8d 48 14 fc    	vunpcklpd zmm7,zmm14,zmm28
  a6b260:	62 91 8d 48 15 d4    	vunpckhpd zmm2,zmm14,zmm28
  a6b266:	62 31 cd 48 14 c1    	vunpcklpd zmm8,zmm6,zmm17
  a6b26c:	62 82 5d 48 7f f6    	vpermt2ps zmm22,zmm4,zmm30
  a6b272:	62 e1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm22
  a6b279:	07 
  a6b27a:	62 31 cd 48 15 c9    	vunpckhpd zmm9,zmm6,zmm17
  a6b280:	62 a1 7c 48 28 ea    	vmovaps zmm21,zmm18
  a6b286:	62 c2 7d 48 7f d3    	vpermt2ps zmm18,zmm0,zmm11
  a6b28c:	62 02 5d 48 7f f9    	vpermt2ps zmm31,zmm4,zmm25
  a6b292:	62 d1 7c 48 28 ec    	vmovaps zmm5,zmm12
  a6b298:	62 52 7d 48 7f e2    	vpermt2ps zmm12,zmm0,zmm10
  a6b29e:	62 51 7c 48 28 da    	vmovaps zmm11,zmm10
  a6b2a4:	62 b1 7c 48 28 f7    	vmovaps zmm6,zmm23
  a6b2aa:	62 22 5d 48 7f ec    	vpermt2ps zmm29,zmm4,zmm20
  a6b2b0:	62 e2 7d 48 7f f9    	vpermt2ps zmm23,zmm0,zmm1
  a6b2b6:	62 e1 7c 48 28 cb    	vmovaps zmm17,zmm3
  a6b2bc:	62 61 7c 48 28 e7    	vmovaps zmm28,zmm7
  a6b2c2:	62 b2 7d 48 7f d8    	vpermt2ps zmm3,zmm0,zmm16
  a6b2c8:	62 42 5d 48 7f e0    	vpermt2ps zmm28,zmm4,zmm8
  a6b2ce:	62 d2 7d 48 7f f8    	vpermt2ps zmm7,zmm0,zmm8
  a6b2d4:	62 61 7c 48 28 da    	vmovaps zmm27,zmm2
  a6b2da:	62 f2 5d 48 7f f1    	vpermt2ps zmm6,zmm4,zmm1
  a6b2e0:	62 42 5d 48 7f d9    	vpermt2ps zmm27,zmm4,zmm9
  a6b2e6:	62 d2 7d 48 7f d1    	vpermt2ps zmm2,zmm0,zmm9
  a6b2ec:	62 f1 7c 48 10 49 12 	vmovups zmm1,ZMMWORD PTR [rcx+0x480]
  a6b2f3:	62 a2 5d 48 7f c8    	vpermt2ps zmm17,zmm4,zmm16
  a6b2f9:	62 71 7c 48 10 41 13 	vmovups zmm8,ZMMWORD PTR [rcx+0x4c0]
  a6b300:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x80]
  a6b307:	02 
  a6b308:	62 61 34 48 59 d1    	vmulps zmm26,zmm9,zmm1
  a6b30e:	62 f1 44 48 59 c9    	vmulps zmm1,zmm7,zmm1
  a6b314:	62 42 45 48 bc d0    	vfnmadd231ps zmm26,zmm7,zmm8
  a6b31a:	62 f1 7c 48 10 41 06 	vmovups zmm0,ZMMWORD PTR [rcx+0x180]
  a6b321:	62 d2 3d 48 b8 c9    	vfmadd231ps zmm1,zmm8,zmm9
  a6b327:	62 71 7c 48 10 41 07 	vmovups zmm8,ZMMWORD PTR [rcx+0x1c0]
  a6b32e:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x140]
  a6b335:	05 
  a6b336:	62 61 44 48 59 c0    	vmulps zmm24,zmm7,zmm0
  a6b33c:	62 42 1d 48 bc c0    	vfnmadd231ps zmm24,zmm12,zmm8
  a6b342:	62 71 1c 48 59 e0    	vmulps zmm12,zmm12,zmm0
  a6b348:	62 f1 7c 48 10 41 14 	vmovups zmm0,ZMMWORD PTR [rcx+0x500]
  a6b34f:	62 72 3d 48 b8 e7    	vfmadd231ps zmm12,zmm8,zmm7
  a6b355:	62 71 7c 48 10 41 15 	vmovups zmm8,ZMMWORD PTR [rcx+0x540]
  a6b35c:	62 71 64 40 59 c8    	vmulps zmm9,zmm19,zmm0
  a6b362:	62 61 24 40 59 f0    	vmulps zmm30,zmm27,zmm0
  a6b368:	62 52 25 40 bc c8    	vfnmadd231ps zmm9,zmm27,zmm8
  a6b36e:	62 f1 7c 48 10 41 0c 	vmovups zmm0,ZMMWORD PTR [rcx+0x300]
  a6b375:	62 22 3d 48 b8 f3    	vfmadd231ps zmm30,zmm8,zmm19
  a6b37b:	62 71 7c 48 10 41 0d 	vmovups zmm8,ZMMWORD PTR [rcx+0x340]
  a6b382:	62 e1 14 40 59 d8    	vmulps zmm19,zmm29,zmm0
  a6b388:	62 c2 75 40 bc d8    	vfnmadd231ps zmm19,zmm17,zmm8
  a6b38e:	62 f1 74 40 59 c0    	vmulps zmm0,zmm17,zmm0
  a6b394:	62 e1 7c 48 10 41 0e 	vmovups zmm16,ZMMWORD PTR [rcx+0x380]
  a6b39b:	62 92 3d 48 b8 c5    	vfmadd231ps zmm0,zmm8,zmm29
  a6b3a1:	62 71 7c 48 10 41 0f 	vmovups zmm8,ZMMWORD PTR [rcx+0x3c0]
  a6b3a8:	62 a1 14 48 59 c8    	vmulps zmm17,zmm13,zmm16
  a6b3ae:	62 a1 64 48 59 c0    	vmulps zmm16,zmm3,zmm16
  a6b3b4:	62 c2 65 48 bc c8    	vfnmadd231ps zmm17,zmm3,zmm8
  a6b3ba:	62 f1 7c 48 10 59 08 	vmovups zmm3,ZMMWORD PTR [rcx+0x200]
  a6b3c1:	62 c2 3d 48 b8 c5    	vfmadd231ps zmm16,zmm8,zmm13
  a6b3c7:	62 71 7c 48 10 69 09 	vmovups zmm13,ZMMWORD PTR [rcx+0x240]
  a6b3ce:	62 61 04 40 59 cb    	vmulps zmm25,zmm31,zmm3
  a6b3d4:	62 42 4d 48 bc cd    	vfnmadd231ps zmm25,zmm6,zmm13
  a6b3da:	62 71 4c 48 59 c3    	vmulps zmm8,zmm6,zmm3
  a6b3e0:	62 f1 7c 48 10 59 02 	vmovups zmm3,ZMMWORD PTR [rcx+0x80]
  a6b3e7:	62 12 15 48 b8 c7    	vfmadd231ps zmm8,zmm13,zmm31
  a6b3ed:	62 71 7c 48 10 51 03 	vmovups zmm10,ZMMWORD PTR [rcx+0xc0]
  a6b3f4:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x200]
  a6b3fb:	08 
  a6b3fc:	62 71 4c 48 59 eb    	vmulps zmm13,zmm6,zmm3
  a6b402:	62 f1 6c 40 59 db    	vmulps zmm3,zmm18,zmm3
  a6b408:	62 52 6d 40 bc ea    	vfnmadd231ps zmm13,zmm18,zmm10
  a6b40e:	62 f2 2d 48 b8 de    	vfmadd231ps zmm3,zmm10,zmm6
  a6b414:	62 71 7c 48 10 51 10 	vmovups zmm10,ZMMWORD PTR [rcx+0x400]
  a6b41b:	62 e1 7c 48 10 51 11 	vmovups zmm18,ZMMWORD PTR [rcx+0x440]
  a6b422:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x100]
  a6b429:	04 
  a6b42a:	62 f2 5d 48 7f 74 24 	vpermt2ps zmm6,zmm4,ZMMWORD PTR [rsp+0x300]
  a6b431:	0c 
  a6b432:	62 c1 04 48 59 e2    	vmulps zmm20,zmm15,zmm10
  a6b438:	62 a2 1d 40 bc e2    	vfnmadd231ps zmm20,zmm28,zmm18
  a6b43e:	62 c1 1c 40 59 f2    	vmulps zmm22,zmm28,zmm10
  a6b444:	62 f1 7c 48 10 79 04 	vmovups zmm7,ZMMWORD PTR [rcx+0x100]
  a6b44b:	62 c2 6d 40 b8 f7    	vfmadd231ps zmm22,zmm18,zmm15
  a6b451:	62 71 7c 48 10 51 05 	vmovups zmm10,ZMMWORD PTR [rcx+0x140]
  a6b458:	62 e1 7c 48 10 51 0a 	vmovups zmm18,ZMMWORD PTR [rcx+0x280]
  a6b45f:	62 d2 5d 48 7f eb    	vpermt2ps zmm5,zmm4,zmm11
  a6b465:	62 71 4c 48 59 f7    	vmulps zmm14,zmm6,zmm7
  a6b46b:	62 52 55 48 bc f2    	vfnmadd231ps zmm14,zmm5,zmm10
  a6b471:	62 f1 54 48 59 ef    	vmulps zmm5,zmm5,zmm7
  a6b477:	62 f1 7c 48 10 79 0b 	vmovups zmm7,ZMMWORD PTR [rcx+0x2c0]
  a6b47e:	62 f2 2d 48 b8 ee    	vfmadd231ps zmm5,zmm10,zmm6
  a6b484:	62 f1 7c 48 10 71 16 	vmovups zmm6,ZMMWORD PTR [rcx+0x580]
  a6b48b:	62 71 7c 48 10 51 17 	vmovups zmm10,ZMMWORD PTR [rcx+0x5c0]
  a6b492:	62 31 7c 48 28 fd    	vmovaps zmm15,zmm21
  a6b498:	62 72 5d 48 7f 7c 24 	vpermt2ps zmm15,zmm4,ZMMWORD PTR [rsp+0x180]
  a6b49f:	06 
  a6b4a0:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0xc0]
  a6b4a7:	03 
  a6b4a8:	62 71 5c 48 59 de    	vmulps zmm11,zmm4,zmm6
  a6b4ae:	62 52 6d 48 bc da    	vfnmadd231ps zmm11,zmm2,zmm10
  a6b4b4:	62 f1 6c 48 59 d6    	vmulps zmm2,zmm2,zmm6
  a6b4ba:	62 91 3c 40 58 f2    	vaddps zmm6,zmm24,zmm26
  a6b4c0:	62 f2 2d 48 b8 d4    	vfmadd231ps zmm2,zmm10,zmm4
  a6b4c6:	62 61 7c 48 28 64 24 	vmovaps zmm28,ZMMWORD PTR [rsp+0x40]
  a6b4cd:	01 
  a6b4ce:	62 a1 1c 40 59 ea    	vmulps zmm21,zmm28,zmm18
  a6b4d4:	62 e2 45 40 bc ef    	vfnmadd231ps zmm21,zmm23,zmm7
  a6b4da:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x1c0]
  a6b4e1:	07 
  a6b4e2:	62 21 2c 48 58 db    	vaddps zmm27,zmm10,zmm19
  a6b4e8:	62 b1 44 40 59 e2    	vmulps zmm4,zmm23,zmm18
  a6b4ee:	62 c1 74 40 58 d5    	vaddps zmm18,zmm17,zmm13
  a6b4f4:	62 92 45 48 b8 e4    	vfmadd231ps zmm4,zmm7,zmm28
  a6b4fa:	62 41 34 40 58 e1    	vaddps zmm28,zmm25,zmm9
  a6b500:	62 61 7c 40 58 eb    	vaddps zmm29,zmm16,zmm3
  a6b506:	62 f1 7c 40 5c db    	vsubps zmm3,zmm16,zmm3
  a6b50c:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm3
  a6b513:	01 
  a6b514:	62 c1 5c 40 58 c6    	vaddps zmm16,zmm20,zmm14
  a6b51a:	62 51 34 40 5c c9    	vsubps zmm9,zmm25,zmm9
  a6b520:	62 61 6c 48 58 cc    	vaddps zmm25,zmm2,zmm4
  a6b526:	62 f1 6c 48 5c dc    	vsubps zmm3,zmm2,zmm4
  a6b52c:	62 21 24 48 58 fd    	vaddps zmm31,zmm11,zmm21
  a6b532:	62 51 5c 40 5c f6    	vsubps zmm14,zmm20,zmm14
  a6b538:	62 e1 1c 48 58 e1    	vaddps zmm20,zmm12,zmm1
  a6b53e:	62 a1 2c 48 5c db    	vsubps zmm19,zmm10,zmm19
  a6b544:	62 f1 1c 48 5c e1    	vsubps zmm4,zmm12,zmm1
  a6b54a:	62 f1 24 40 58 ce    	vaddps zmm1,zmm27,zmm6
  a6b550:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm1
  a6b557:	03 
  a6b558:	62 91 3c 48 58 ce    	vaddps zmm1,zmm8,zmm30
  a6b55e:	62 11 3c 48 5c c6    	vsubps zmm8,zmm8,zmm30
  a6b564:	62 31 14 48 5c e1    	vsubps zmm12,zmm13,zmm17
  a6b56a:	62 b1 1c 40 58 fa    	vaddps zmm7,zmm28,zmm18
  a6b570:	62 61 4c 40 58 f5    	vaddps zmm30,zmm22,zmm5
  a6b576:	62 71 4c 40 5c ed    	vsubps zmm13,zmm22,zmm5
  a6b57c:	62 d1 54 40 5c d3    	vsubps zmm2,zmm21,zmm11
  a6b582:	62 81 7c 40 58 cf    	vaddps zmm17,zmm16,zmm31
  a6b588:	62 51 7c 48 58 df    	vaddps zmm11,zmm0,zmm15
  a6b58e:	62 e1 04 48 5c e8    	vsubps zmm21,zmm15,zmm0
  a6b594:	62 81 2c 40 5c f0    	vsubps zmm22,zmm26,zmm24
  a6b59a:	62 d1 5c 40 58 c3    	vaddps zmm0,zmm20,zmm11
  a6b5a0:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm0
  a6b5a7:	02 
  a6b5a8:	62 81 74 48 58 fd    	vaddps zmm23,zmm1,zmm29
  a6b5ae:	62 a1 1c 40 5c d2    	vsubps zmm18,zmm28,zmm18
  a6b5b4:	62 01 0c 40 58 c1    	vaddps zmm24,zmm30,zmm25
  a6b5ba:	62 01 7c 40 5c d7    	vsubps zmm26,zmm16,zmm31
  a6b5c0:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x40]
  a6b5c7:	01 
  a6b5c8:	62 61 34 48 58 e5    	vaddps zmm28,zmm9,zmm5
  a6b5ce:	62 61 24 40 5c de    	vsubps zmm27,zmm27,zmm6
  a6b5d4:	62 e1 64 40 58 c4    	vaddps zmm16,zmm19,zmm4
  a6b5da:	62 91 74 48 5c cd    	vsubps zmm1,zmm1,zmm29
  a6b5e0:	62 d1 3c 48 58 f4    	vaddps zmm6,zmm8,zmm12
  a6b5e6:	62 01 0c 40 5c c9    	vsubps zmm25,zmm30,zmm25
  a6b5ec:	62 a1 24 48 5c e4    	vsubps zmm20,zmm11,zmm20
  a6b5f2:	62 71 7c 48 28 ff    	vmovaps zmm15,zmm7
  a6b5f8:	62 b1 44 48 58 c1    	vaddps zmm0,zmm7,zmm17
  a6b5fe:	62 71 14 48 58 da    	vaddps zmm11,zmm13,zmm2
  a6b604:	62 f1 64 40 5c e4    	vsubps zmm4,zmm19,zmm4
  a6b60a:	62 c1 4c 48 5c db    	vsubps zmm19,zmm6,zmm11
  a6b610:	62 d1 4c 48 58 f3    	vaddps zmm6,zmm6,zmm11
  a6b616:	62 71 0c 48 58 db    	vaddps zmm11,zmm14,zmm3
  a6b61c:	62 61 34 48 5c ed    	vsubps zmm29,zmm9,zmm5
  a6b622:	62 d1 1c 40 58 fb    	vaddps zmm7,zmm28,zmm11
  a6b628:	62 41 1c 40 5c e3    	vsubps zmm28,zmm28,zmm11
  a6b62e:	62 11 44 40 58 d8    	vaddps zmm11,zmm23,zmm24
  a6b634:	62 f1 0c 48 5c db    	vsubps zmm3,zmm14,zmm3
  a6b63a:	62 11 74 48 5c c9    	vsubps zmm9,zmm1,zmm25
  a6b640:	62 91 74 48 58 c9    	vaddps zmm1,zmm1,zmm25
  a6b646:	62 21 4c 40 58 cd    	vaddps zmm25,zmm22,zmm21
  a6b64c:	62 a1 54 40 5c ee    	vsubps zmm21,zmm21,zmm22
  a6b652:	62 11 6c 40 58 f2    	vaddps zmm14,zmm18,zmm26
  a6b658:	62 81 6c 40 5c d2    	vsubps zmm18,zmm18,zmm26
  a6b65e:	62 62 7d 48 18 35 f8 	vbroadcastss zmm30,DWORD PTR [rip+0xffffffffff609df8]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a6b665:	9d 60 ff 
  a6b668:	62 81 7c 48 28 f6    	vmovaps zmm22,zmm30
  a6b66e:	62 a2 45 48 ac f0    	vfnmadd213ps zmm22,zmm7,zmm16
  a6b674:	62 51 3c 48 5c c4    	vsubps zmm8,zmm8,zmm12
  a6b67a:	62 f2 7d 48 18 2d 50 	vbroadcastss zmm5,DWORD PTR [rip+0xffffffffff609c50]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a6b681:	9c 60 ff 
  a6b684:	62 71 64 40 59 e5    	vmulps zmm12,zmm19,zmm5
  a6b68a:	62 81 7c 48 28 de    	vmovaps zmm19,zmm30
  a6b690:	62 82 4d 48 ac d9    	vfnmadd213ps zmm19,zmm6,zmm25
  a6b696:	62 71 14 48 5c ea    	vsubps zmm13,zmm13,zmm2
  a6b69c:	62 61 1c 40 59 d5    	vmulps zmm26,zmm28,zmm5
  a6b6a2:	62 01 7c 48 28 e6    	vmovaps zmm28,zmm30
  a6b6a8:	62 81 44 40 5c f8    	vsubps zmm23,zmm23,zmm24
  a6b6ae:	62 01 7c 48 28 c6    	vmovaps zmm24,zmm30
  a6b6b4:	62 11 7c 48 28 d6    	vmovaps zmm10,zmm30
  a6b6ba:	62 02 0d 48 ac e3    	vfnmadd213ps zmm28,zmm14,zmm27
  a6b6c0:	62 22 75 48 ac c4    	vfnmadd213ps zmm24,zmm1,zmm20
  a6b6c6:	62 21 04 48 5c f1    	vsubps zmm30,zmm15,zmm17
  a6b6cc:	62 61 14 40 58 fb    	vaddps zmm31,zmm29,zmm3
  a6b6d2:	62 d1 24 40 58 d6    	vaddps zmm2,zmm27,zmm14
  a6b6d8:	62 11 5c 48 58 ff    	vaddps zmm15,zmm4,zmm31
  a6b6de:	62 f1 5c 40 58 c9    	vaddps zmm1,zmm20,zmm1
  a6b6e4:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm1
  a6b6eb:	01 
  a6b6ec:	62 62 2d 48 ac fc    	vfnmadd213ps zmm31,zmm10,zmm4
  a6b6f2:	62 d1 4c 40 58 e4    	vaddps zmm4,zmm22,zmm12
  a6b6f8:	62 c1 3c 48 58 e5    	vaddps zmm20,zmm8,zmm13
  a6b6fe:	62 d1 3c 48 5c cd    	vsubps zmm1,zmm8,zmm13
  a6b704:	62 21 54 40 58 dc    	vaddps zmm27,zmm21,zmm20
  a6b70a:	62 51 4c 40 5c f4    	vsubps zmm14,zmm22,zmm12
  a6b710:	62 51 7c 48 28 c2    	vmovaps zmm8,zmm10
  a6b716:	62 e1 7c 48 28 4c 24 	vmovaps zmm17,ZMMWORD PTR [rsp+0xc0]
  a6b71d:	03 
  a6b71e:	62 32 7d 48 ac c1    	vfnmadd213ps zmm8,zmm0,zmm17
  a6b724:	62 a2 2d 48 ac e5    	vfnmadd213ps zmm20,zmm10,zmm21
  a6b72a:	62 81 64 40 5c ea    	vsubps zmm21,zmm19,zmm26
  a6b730:	62 71 44 40 59 e5    	vmulps zmm12,zmm23,zmm5
  a6b736:	62 e1 14 40 5c f3    	vsubps zmm22,zmm29,zmm3
  a6b73c:	62 c1 3c 48 58 fc    	vaddps zmm23,zmm8,zmm12
  a6b742:	62 81 64 40 58 da    	vaddps zmm19,zmm19,zmm26
  a6b748:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x80]
  a6b74f:	02 
  a6b750:	62 72 25 48 ac d3    	vfnmadd213ps zmm10,zmm11,zmm3
  a6b756:	62 71 0c 40 59 ed    	vmulps zmm13,zmm30,zmm5
  a6b75c:	62 51 3c 48 5c c4    	vsubps zmm8,zmm8,zmm12
  a6b762:	62 41 2c 48 5c d5    	vsubps zmm26,zmm10,zmm13
  a6b768:	62 51 2c 48 58 ed    	vaddps zmm13,zmm10,zmm13
  a6b76e:	62 71 7c 40 58 d7    	vaddps zmm10,zmm16,zmm7
  a6b774:	62 f1 34 48 59 fd    	vmulps zmm7,zmm9,zmm5
  a6b77a:	62 71 34 40 58 e6    	vaddps zmm12,zmm25,zmm6
  a6b780:	62 e1 1c 40 5c c7    	vsubps zmm16,zmm28,zmm7
  a6b786:	62 f1 6c 40 59 f5    	vmulps zmm6,zmm18,zmm5
  a6b78c:	62 f1 1c 40 58 ff    	vaddps zmm7,zmm28,zmm7
  a6b792:	62 e1 3c 40 58 d6    	vaddps zmm18,zmm24,zmm6
  a6b798:	62 f1 74 48 59 cd    	vmulps zmm1,zmm1,zmm5
  a6b79e:	62 71 3c 40 5c ce    	vsubps zmm9,zmm24,zmm6
  a6b7a4:	62 61 04 40 58 c1    	vaddps zmm24,zmm31,zmm1
  a6b7aa:	62 f1 4c 40 59 f5    	vmulps zmm6,zmm22,zmm5
  a6b7b0:	62 f1 04 40 5c c9    	vsubps zmm1,zmm31,zmm1
  a6b7b6:	62 e1 5c 40 5c f6    	vsubps zmm22,zmm20,zmm6
  a6b7bc:	62 f1 5c 40 58 f6    	vaddps zmm6,zmm20,zmm6
  a6b7c2:	62 f1 74 40 58 c0    	vaddps zmm0,zmm17,zmm0
  a6b7c8:	62 d1 64 48 58 db    	vaddps zmm3,zmm3,zmm11
  a6b7ce:	62 d3 7d 48 19 c3 02 	vextractf32x4 xmm11,zmm0,0x2
  a6b7d5:	62 e1 7c 48 28 0d 21 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff628c21]        # 94400 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x218b0>
  a6b7dc:	8c 62 ff 
  a6b7df:	62 f2 75 40 7f c3    	vpermt2ps zmm0,zmm17,zmm3
  a6b7e5:	62 f1 7c 48 11 04 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm0
  a6b7ec:	62 f3 7d 48 19 d8 02 	vextractf32x4 xmm0,zmm3,0x2
  a6b7f3:	c5 a0 14 c0          	vunpcklps xmm0,xmm11,xmm0
  a6b7f7:	c5 f8 13 44 16 40    	vmovlps QWORD PTR [rsi+rdx*1+0x40],xmm0
  a6b7fd:	62 f3 7d 48 19 e0 02 	vextractf32x4 xmm0,zmm4,0x2
  a6b804:	62 b2 75 40 7f e5    	vpermt2ps zmm4,zmm17,zmm21
  a6b80a:	62 f1 7c 48 11 a4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x48],zmm4
  a6b811:	48 00 00 00 
  a6b815:	62 e3 7d 48 19 eb 02 	vextractf32x4 xmm3,zmm21,0x2
  a6b81c:	c5 f8 14 c3          	vunpcklps xmm0,xmm0,xmm3
  a6b820:	c5 f8 13 84 16 88 00 	vmovlps QWORD PTR [rsi+rdx*1+0x88],xmm0
  a6b827:	00 00 
  a6b829:	62 e3 7d 48 19 c0 02 	vextractf32x4 xmm0,zmm16,0x2
  a6b830:	62 a2 75 40 7f c2    	vpermt2ps zmm16,zmm17,zmm18
  a6b836:	62 e1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x90],zmm16
  a6b83d:	90 00 00 00 
  a6b841:	62 e3 7d 48 19 d3 02 	vextractf32x4 xmm3,zmm18,0x2
  a6b848:	c5 f8 14 c3          	vunpcklps xmm0,xmm0,xmm3
  a6b84c:	c5 f8 13 84 16 d0 00 	vmovlps QWORD PTR [rsi+rdx*1+0xd0],xmm0
  a6b853:	00 00 
  a6b855:	62 73 7d 48 19 f8 02 	vextractf32x4 xmm0,zmm15,0x2
  a6b85c:	62 12 75 40 7f fb    	vpermt2ps zmm15,zmm17,zmm27
  a6b862:	62 71 7c 48 11 bc 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xd8],zmm15
  a6b869:	d8 00 00 00 
  a6b86d:	62 63 7d 48 19 db 02 	vextractf32x4 xmm3,zmm27,0x2
  a6b874:	c5 f8 14 c3          	vunpcklps xmm0,xmm0,xmm3
  a6b878:	c5 f8 13 84 16 18 01 	vmovlps QWORD PTR [rsi+rdx*1+0x118],xmm0
  a6b87f:	00 00 
  a6b881:	62 e3 7d 48 19 f8 02 	vextractf32x4 xmm0,zmm23,0x2
  a6b888:	62 82 75 40 7f fa    	vpermt2ps zmm23,zmm17,zmm26
  a6b88e:	62 e1 7c 48 11 bc 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x120],zmm23
  a6b895:	20 01 00 00 
  a6b899:	62 63 7d 48 19 d3 02 	vextractf32x4 xmm3,zmm26,0x2
  a6b8a0:	c5 f8 14 c3          	vunpcklps xmm0,xmm0,xmm3
  a6b8a4:	c5 f8 13 84 16 60 01 	vmovlps QWORD PTR [rsi+rdx*1+0x160],xmm0
  a6b8ab:	00 00 
  a6b8ad:	62 73 7d 48 19 f0 02 	vextractf32x4 xmm0,zmm14,0x2
  a6b8b4:	62 32 75 40 7f f3    	vpermt2ps zmm14,zmm17,zmm19
  a6b8ba:	62 71 7c 48 11 b4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x168],zmm14
  a6b8c1:	68 01 00 00 
  a6b8c5:	62 e3 7d 48 19 db 02 	vextractf32x4 xmm3,zmm19,0x2
  a6b8cc:	c5 f8 14 c3          	vunpcklps xmm0,xmm0,xmm3
  a6b8d0:	c5 f8 13 84 16 a8 01 	vmovlps QWORD PTR [rsi+rdx*1+0x1a8],xmm0
  a6b8d7:	00 00 
  a6b8d9:	62 f3 7d 48 19 d0 02 	vextractf32x4 xmm0,zmm2,0x2
  a6b8e0:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x40]
  a6b8e7:	01 
  a6b8e8:	62 f2 75 40 7f d3    	vpermt2ps zmm2,zmm17,zmm3
  a6b8ee:	62 f1 7c 48 11 94 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1b0],zmm2
  a6b8f5:	b0 01 00 00 
  a6b8f9:	62 f3 7d 48 19 da 02 	vextractf32x4 xmm2,zmm3,0x2
  a6b900:	c5 f8 14 c2          	vunpcklps xmm0,xmm0,xmm2
  a6b904:	c5 f8 13 84 16 f0 01 	vmovlps QWORD PTR [rsi+rdx*1+0x1f0],xmm0
  a6b90b:	00 00 
  a6b90d:	62 63 7d 48 19 c0 02 	vextractf32x4 xmm0,zmm24,0x2
  a6b914:	62 22 75 40 7f c6    	vpermt2ps zmm24,zmm17,zmm22
  a6b91a:	62 61 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1f8],zmm24
  a6b921:	f8 01 00 00 
  a6b925:	62 e3 7d 48 19 f2 02 	vextractf32x4 xmm2,zmm22,0x2
  a6b92c:	c5 f8 14 c2          	vunpcklps xmm0,xmm0,xmm2
  a6b930:	c5 f8 13 84 16 38 02 	vmovlps QWORD PTR [rsi+rdx*1+0x238],xmm0
  a6b937:	00 00 
  a6b939:	62 73 7d 48 19 c0 02 	vextractf32x4 xmm0,zmm8,0x2
  a6b940:	62 52 75 40 7f c5    	vpermt2ps zmm8,zmm17,zmm13
  a6b946:	62 71 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x240],zmm8
  a6b94d:	09 
  a6b94e:	62 73 7d 48 19 ea 02 	vextractf32x4 xmm2,zmm13,0x2
  a6b955:	c5 f8 14 c2          	vunpcklps xmm0,xmm0,xmm2
  a6b959:	c5 f8 13 84 16 80 02 	vmovlps QWORD PTR [rsi+rdx*1+0x280],xmm0
  a6b960:	00 00 
  a6b962:	62 73 7d 48 19 d0 02 	vextractf32x4 xmm0,zmm10,0x2
  a6b969:	62 52 75 40 7f d4    	vpermt2ps zmm10,zmm17,zmm12
  a6b96f:	62 71 7c 48 11 94 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x288],zmm10
  a6b976:	88 02 00 00 
  a6b97a:	62 73 7d 48 19 e2 02 	vextractf32x4 xmm2,zmm12,0x2
  a6b981:	c5 f8 14 c2          	vunpcklps xmm0,xmm0,xmm2
  a6b985:	c5 f8 13 84 16 c8 02 	vmovlps QWORD PTR [rsi+rdx*1+0x2c8],xmm0
  a6b98c:	00 00 
  a6b98e:	62 f3 7d 48 19 f8 02 	vextractf32x4 xmm0,zmm7,0x2
  a6b995:	62 d2 75 40 7f f9    	vpermt2ps zmm7,zmm17,zmm9
  a6b99b:	62 f1 7c 48 11 bc 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x2d0],zmm7
  a6b9a2:	d0 02 00 00 
  a6b9a6:	62 73 7d 48 19 ca 02 	vextractf32x4 xmm2,zmm9,0x2
  a6b9ad:	c5 f8 14 c2          	vunpcklps xmm0,xmm0,xmm2
  a6b9b1:	c5 f8 13 84 16 10 03 	vmovlps QWORD PTR [rsi+rdx*1+0x310],xmm0
  a6b9b8:	00 00 
  a6b9ba:	62 f3 7d 48 19 c8 02 	vextractf32x4 xmm0,zmm1,0x2
  a6b9c1:	62 f2 75 40 7f ce    	vpermt2ps zmm1,zmm17,zmm6
  a6b9c7:	62 f1 7c 48 11 8c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x318],zmm1
  a6b9ce:	18 03 00 00 
  a6b9d2:	62 f3 7d 48 19 f1 02 	vextractf32x4 xmm1,zmm6,0x2
  a6b9d9:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a6b9dd:	c5 f8 13 84 16 58 03 	vmovlps QWORD PTR [rsi+rdx*1+0x358],xmm0
  a6b9e4:	00 00 
  a6b9e6:	48 81 c2 60 03 00 00 	add    rdx,0x360
  a6b9ed:	48 39 d0             	cmp    rax,rdx
  a6b9f0:	0f 85 3a f0 ff ff    	jne    a6aa30 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x30>
  a6b9f6:	48 89 ec             	mov    rsp,rbp
  a6b9f9:	5d                   	pop    rbp
  a6b9fa:	c5 f8 77             	vzeroupper
  a6b9fd:	c3                   	ret
