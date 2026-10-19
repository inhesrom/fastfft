
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a32ac0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a32ac0:	55                   	push   rbp
  a32ac1:	48 89 e5             	mov    rbp,rsp
  a32ac4:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a32ac8:	48 81 ec 00 06 00 00 	sub    rsp,0x600
  a32acf:	c6 84 24 80 05 00 00 	mov    BYTE PTR [rsp+0x580],0x0
  a32ad6:	00 
  a32ad7:	48 8d 84 24 80 05 00 	lea    rax,[rsp+0x580]
  a32ade:	00 
  a32adf:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  a32ae4:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  a32ae9:	62 71 7c 48 28 05 8d 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff65e28d]        # 90d80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e230>
  a32af0:	e2 65 ff 
  a32af3:	62 61 7c 48 10 17    	vmovups zmm26,ZMMWORD PTR [rdi]
  a32af9:	62 f1 7c 48 10 77 01 	vmovups zmm6,ZMMWORD PTR [rdi+0x40]
  a32b00:	62 71 7c 48 10 4f 02 	vmovups zmm9,ZMMWORD PTR [rdi+0x80]
  a32b07:	62 f1 7c 48 10 6f 03 	vmovups zmm5,ZMMWORD PTR [rdi+0xc0]
  a32b0e:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a32b12:	62 91 7c 48 28 ca    	vmovaps zmm1,zmm26
  a32b18:	62 f2 3d 48 7f c8    	vpermt2ps zmm1,zmm8,zmm0
  a32b1e:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm1
  a32b25:	08 
  a32b26:	62 f1 7c 48 28 ce    	vmovaps zmm1,zmm6
  a32b2c:	62 f2 3d 48 7f c8    	vpermt2ps zmm1,zmm8,zmm0
  a32b32:	62 f1 7c 48 28 f9    	vmovaps zmm7,zmm1
  a32b38:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm1
  a32b3f:	06 
  a32b40:	62 d1 7c 48 28 c9    	vmovaps zmm1,zmm9
  a32b46:	62 f2 3d 48 7f c8    	vpermt2ps zmm1,zmm8,zmm0
  a32b4c:	62 f1 7c 48 28 d1    	vmovaps zmm2,zmm1
  a32b52:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm1
  a32b59:	0b 
  a32b5a:	62 f1 7c 48 28 cd    	vmovaps zmm1,zmm5
  a32b60:	62 f2 3d 48 7f c8    	vpermt2ps zmm1,zmm8,zmm0
  a32b66:	62 71 7c 48 28 d1    	vmovaps zmm10,zmm1
  a32b6c:	62 e1 7c 48 10 7f 04 	vmovups zmm23,ZMMWORD PTR [rdi+0x100]
  a32b73:	62 b1 7c 48 28 cf    	vmovaps zmm1,zmm23
  a32b79:	62 f2 3d 48 7f c8    	vpermt2ps zmm1,zmm8,zmm0
  a32b7f:	62 71 7c 48 28 e1    	vmovaps zmm12,zmm1
  a32b85:	62 71 7c 48 10 77 05 	vmovups zmm14,ZMMWORD PTR [rdi+0x140]
  a32b8c:	62 41 7c 48 28 e6    	vmovaps zmm28,zmm14
  a32b92:	62 62 3d 48 7f e0    	vpermt2ps zmm28,zmm8,zmm0
  a32b98:	62 e1 7c 48 10 6f 06 	vmovups zmm21,ZMMWORD PTR [rdi+0x180]
  a32b9f:	62 b1 7c 48 28 cd    	vmovaps zmm1,zmm21
  a32ba5:	62 f2 3d 48 7f c8    	vpermt2ps zmm1,zmm8,zmm0
  a32bab:	62 71 7c 48 28 f9    	vmovaps zmm15,zmm1
  a32bb1:	62 e1 7c 48 10 5f 07 	vmovups zmm19,ZMMWORD PTR [rdi+0x1c0]
  a32bb8:	62 b1 7c 48 28 cb    	vmovaps zmm1,zmm19
  a32bbe:	62 f2 3d 48 7f c8    	vpermt2ps zmm1,zmm8,zmm0
  a32bc4:	62 e1 7c 48 28 c1    	vmovaps zmm16,zmm1
  a32bca:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm1
  a32bd1:	05 
  a32bd2:	62 e1 7c 48 10 77 08 	vmovups zmm22,ZMMWORD PTR [rdi+0x200]
  a32bd9:	62 b1 7c 48 28 ce    	vmovaps zmm1,zmm22
  a32bdf:	62 f2 3d 48 7f c8    	vpermt2ps zmm1,zmm8,zmm0
  a32be5:	62 f1 7c 48 28 d9    	vmovaps zmm3,zmm1
  a32beb:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm1
  a32bf2:	0c 
  a32bf3:	62 e1 7c 48 10 67 09 	vmovups zmm20,ZMMWORD PTR [rdi+0x240]
  a32bfa:	62 b1 7c 48 28 cc    	vmovaps zmm1,zmm20
  a32c00:	62 f2 3d 48 7f c8    	vpermt2ps zmm1,zmm8,zmm0
  a32c06:	62 e1 7c 48 28 c9    	vmovaps zmm17,zmm1
  a32c0c:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm1
  a32c13:	04 
  a32c14:	62 71 7c 48 10 5f 0a 	vmovups zmm11,ZMMWORD PTR [rdi+0x280]
  a32c1b:	62 51 7c 48 28 eb    	vmovaps zmm13,zmm11
  a32c21:	62 72 3d 48 7f e8    	vpermt2ps zmm13,zmm8,zmm0
  a32c27:	62 61 7c 48 10 5f 0b 	vmovups zmm27,ZMMWORD PTR [rdi+0x2c0]
  a32c2e:	62 91 7c 48 28 cb    	vmovaps zmm1,zmm27
  a32c34:	62 f2 3d 48 7f c8    	vpermt2ps zmm1,zmm8,zmm0
  a32c3a:	62 f1 7c 48 28 e1    	vmovaps zmm4,zmm1
  a32c40:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm1
  a32c47:	01 
  a32c48:	62 61 7c 48 10 7f 0c 	vmovups zmm31,ZMMWORD PTR [rdi+0x300]
  a32c4f:	62 01 7c 48 28 c7    	vmovaps zmm24,zmm31
  a32c55:	62 62 3d 48 7f c0    	vpermt2ps zmm24,zmm8,zmm0
  a32c5b:	62 61 7c 48 10 6f 0d 	vmovups zmm29,ZMMWORD PTR [rdi+0x340]
  a32c62:	62 01 7c 48 28 cd    	vmovaps zmm25,zmm29
  a32c68:	62 62 3d 48 7f c8    	vpermt2ps zmm25,zmm8,zmm0
  a32c6e:	62 e1 7c 48 10 57 0e 	vmovups zmm18,ZMMWORD PTR [rdi+0x380]
  a32c75:	62 72 6d 40 77 c0    	vpermi2ps zmm8,zmm18,zmm0
  a32c7b:	62 f1 64 48 5c ca    	vsubps zmm1,zmm3,zmm2
  a32c81:	62 d1 5c 48 5c c0    	vsubps zmm0,zmm4,zmm8
  a32c87:	62 f2 7d 48 18 25 c7 	vbroadcastss zmm4,DWORD PTR [rip+0xffffffffff642ac7]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a32c8e:	2a 64 ff 
  a32c91:	62 f2 7d 48 18 1d 05 	vbroadcastss zmm3,DWORD PTR [rip+0xffffffffff642705]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a32c98:	27 64 ff 
  a32c9b:	62 f1 7c 48 59 d4    	vmulps zmm2,zmm0,zmm4
  a32ca1:	62 f2 75 48 b8 d3    	vfmadd231ps zmm2,zmm1,zmm3
  a32ca7:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm2
  a32cae:	03 
  a32caf:	62 f1 74 48 59 cc    	vmulps zmm1,zmm1,zmm4
  a32cb5:	62 f2 65 48 bc c8    	vfnmadd231ps zmm1,zmm3,zmm0
  a32cbb:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm1
  a32cc2:	0a 
  a32cc3:	62 b1 34 40 5c c0    	vsubps zmm0,zmm25,zmm16
  a32cc9:	62 d1 44 48 5c cc    	vsubps zmm1,zmm7,zmm12
  a32ccf:	62 f1 74 48 59 d4    	vmulps zmm2,zmm1,zmm4
  a32cd5:	62 f2 7d 48 b8 d3    	vfmadd231ps zmm2,zmm0,zmm3
  a32cdb:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm2
  a32ce2:	14 
  a32ce3:	62 f1 7c 48 59 c4    	vmulps zmm0,zmm0,zmm4
  a32ce9:	62 f2 65 48 bc c1    	vfnmadd231ps zmm0,zmm3,zmm1
  a32cef:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm0
  a32cf6:	09 
  a32cf7:	62 91 2c 48 5c c0    	vsubps zmm0,zmm10,zmm24
  a32cfd:	62 d1 7c 48 28 fa    	vmovaps zmm7,zmm10
  a32d03:	62 b1 04 48 5c c9    	vsubps zmm1,zmm15,zmm17
  a32d09:	62 f1 74 48 59 d4    	vmulps zmm2,zmm1,zmm4
  a32d0f:	62 f2 7d 48 b8 d3    	vfmadd231ps zmm2,zmm0,zmm3
  a32d15:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm2
  a32d1c:	02 
  a32d1d:	62 f1 7c 48 59 c4    	vmulps zmm0,zmm0,zmm4
  a32d23:	62 f2 65 48 bc c1    	vfnmadd231ps zmm0,zmm3,zmm1
  a32d29:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm0
  a32d30:	07 
  a32d31:	62 61 7c 48 28 35 85 	vmovaps zmm30,ZMMWORD PTR [rip+0xffffffffff65e085]        # 90dc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e270>
  a32d38:	e0 65 ff 
  a32d3b:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a32d3f:	62 72 0d 40 7f c8    	vpermt2ps zmm9,zmm30,zmm0
  a32d45:	62 e2 0d 40 7f f0    	vpermt2ps zmm22,zmm30,zmm0
  a32d4b:	62 62 0d 40 7f d8    	vpermt2ps zmm27,zmm30,zmm0
  a32d51:	62 e2 0d 40 7f d0    	vpermt2ps zmm18,zmm30,zmm0
  a32d57:	62 d1 4c 40 5c c1    	vsubps zmm0,zmm22,zmm9
  a32d5d:	62 b1 24 40 5c ca    	vsubps zmm1,zmm27,zmm18
  a32d63:	62 f1 74 48 59 d4    	vmulps zmm2,zmm1,zmm4
  a32d69:	62 f2 7d 48 b8 d3    	vfmadd231ps zmm2,zmm0,zmm3
  a32d6f:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm2
  a32d76:	13 
  a32d77:	62 e1 7c 48 59 c4    	vmulps zmm16,zmm0,zmm4
  a32d7d:	62 e2 65 48 bc c1    	vfnmadd231ps zmm16,zmm3,zmm1
  a32d83:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  a32d87:	62 f2 0d 40 7f f1    	vpermt2ps zmm6,zmm30,zmm1
  a32d8d:	62 e2 0d 40 7f f9    	vpermt2ps zmm23,zmm30,zmm1
  a32d93:	62 e2 0d 40 7f d9    	vpermt2ps zmm19,zmm30,zmm1
  a32d99:	62 62 0d 40 7f e9    	vpermt2ps zmm29,zmm30,zmm1
  a32d9f:	62 b1 14 40 5c c3    	vsubps zmm0,zmm29,zmm19
  a32da5:	62 a1 4c 48 5c cf    	vsubps zmm17,zmm6,zmm23
  a32dab:	62 f1 74 40 59 d4    	vmulps zmm2,zmm17,zmm4
  a32db1:	62 f2 7d 48 b8 d3    	vfmadd231ps zmm2,zmm0,zmm3
  a32db7:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm2
  a32dbe:	10 
  a32dbf:	62 71 7c 48 59 d4    	vmulps zmm10,zmm0,zmm4
  a32dc5:	62 32 65 48 bc d1    	vfnmadd231ps zmm10,zmm3,zmm17
  a32dcb:	62 f2 0d 40 7f e9    	vpermt2ps zmm5,zmm30,zmm1
  a32dd1:	62 e2 0d 40 7f e9    	vpermt2ps zmm21,zmm30,zmm1
  a32dd7:	62 e2 0d 40 7f e1    	vpermt2ps zmm20,zmm30,zmm1
  a32ddd:	62 62 0d 40 7f f9    	vpermt2ps zmm31,zmm30,zmm1
  a32de3:	62 91 54 48 5c c7    	vsubps zmm0,zmm5,zmm31
  a32de9:	62 f1 7c 48 28 d5    	vmovaps zmm2,zmm5
  a32def:	62 b1 54 40 5c cc    	vsubps zmm1,zmm21,zmm20
  a32df5:	62 f1 74 48 59 ec    	vmulps zmm5,zmm1,zmm4
  a32dfb:	62 f2 7d 48 b8 eb    	vfmadd231ps zmm5,zmm0,zmm3
  a32e01:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm5
  a32e08:	15 
  a32e09:	62 f1 7c 48 59 ec    	vmulps zmm5,zmm0,zmm4
  a32e0f:	62 f2 75 48 bc eb    	vfnmadd231ps zmm5,zmm1,zmm3
  a32e15:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a32e19:	62 62 0d 40 7f d0    	vpermt2ps zmm26,zmm30,zmm0
  a32e1f:	62 72 0d 40 7f f0    	vpermt2ps zmm14,zmm30,zmm0
  a32e25:	62 72 0d 40 7f d8    	vpermt2ps zmm11,zmm30,zmm0
  a32e2b:	62 91 6c 48 58 cf    	vaddps zmm1,zmm2,zmm31
  a32e31:	62 b1 54 40 58 dc    	vaddps zmm3,zmm21,zmm20
  a32e37:	62 d1 4c 40 58 e1    	vaddps zmm4,zmm22,zmm9
  a32e3d:	62 a1 24 40 58 e2    	vaddps zmm20,zmm27,zmm18
  a32e43:	62 a1 14 40 58 db    	vaddps zmm19,zmm29,zmm19
  a32e49:	62 21 4c 48 58 ef    	vaddps zmm29,zmm6,zmm23
  a32e4f:	62 01 44 48 58 c0    	vaddps zmm24,zmm7,zmm24
  a32e55:	62 61 04 48 58 7c 24 	vaddps zmm31,zmm15,ZMMWORD PTR [rsp+0x100]
  a32e5c:	04 
  a32e5d:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x2c0]
  a32e64:	0b 
  a32e65:	62 e1 7c 48 58 74 24 	vaddps zmm22,zmm0,ZMMWORD PTR [rsp+0x300]
  a32e6c:	0c 
  a32e6d:	62 f1 3c 48 58 44 24 	vaddps zmm0,zmm8,ZMMWORD PTR [rsp+0x40]
  a32e74:	01 
  a32e75:	62 e1 34 40 58 7c 24 	vaddps zmm23,zmm25,ZMMWORD PTR [rsp+0x140]
  a32e7c:	05 
  a32e7d:	62 61 1c 48 58 4c 24 	vaddps zmm25,zmm12,ZMMWORD PTR [rsp+0x180]
  a32e84:	06 
  a32e85:	62 72 7d 48 18 05 59 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff642859]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a32e8c:	28 64 ff 
  a32e8f:	62 d1 7c 48 28 d0    	vmovaps zmm2,zmm8
  a32e95:	62 d2 5d 48 a8 d6    	vfmadd213ps zmm2,zmm4,zmm14
  a32e9b:	62 62 7d 48 18 1d 9f 	vbroadcastss zmm27,DWORD PTR [rip+0xffffffffff64279f]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a32ea2:	27 64 ff 
  a32ea5:	62 61 0c 48 58 f4    	vaddps zmm30,zmm14,zmm4
  a32eab:	62 72 25 40 bc f4    	vfnmadd231ps zmm14,zmm27,zmm4
  a32eb1:	62 c1 7c 48 28 d0    	vmovaps zmm18,zmm8
  a32eb7:	62 c2 65 40 a8 d3    	vfmadd213ps zmm18,zmm19,zmm11
  a32ebd:	62 31 24 48 58 cb    	vaddps zmm9,zmm11,zmm19
  a32ec3:	62 32 25 40 bc db    	vfnmadd231ps zmm11,zmm27,zmm19
  a32ec9:	62 c1 7c 48 28 d8    	vmovaps zmm19,zmm8
  a32ecf:	62 82 75 48 a8 da    	vfmadd213ps zmm19,zmm1,zmm26
  a32ed5:	62 f1 2c 40 58 f9    	vaddps zmm7,zmm26,zmm1
  a32edb:	62 62 25 40 bc d1    	vfnmadd231ps zmm26,zmm27,zmm1
  a32ee1:	62 c1 7c 48 28 e8    	vmovaps zmm21,zmm8
  a32ee7:	62 82 4d 40 a8 ec    	vfmadd213ps zmm21,zmm22,zmm28
  a32eed:	62 b1 1c 40 58 e6    	vaddps zmm4,zmm28,zmm22
  a32ef3:	62 22 25 40 bc e6    	vfnmadd231ps zmm28,zmm27,zmm22
  a32ef9:	62 c1 7c 48 28 f0    	vmovaps zmm22,zmm8
  a32eff:	62 c2 45 40 a8 f5    	vfmadd213ps zmm22,zmm23,zmm13
  a32f05:	62 b1 14 48 58 f7    	vaddps zmm6,zmm13,zmm23
  a32f0b:	62 32 25 40 bc ef    	vfnmadd231ps zmm13,zmm27,zmm23
  a32f11:	62 c1 7c 48 28 f8    	vmovaps zmm23,zmm8
  a32f17:	62 71 7c 48 28 64 24 	vmovaps zmm12,ZMMWORD PTR [rsp+0x200]
  a32f1e:	08 
  a32f1f:	62 c2 3d 40 a8 fc    	vfmadd213ps zmm23,zmm24,zmm12
  a32f25:	62 91 1c 48 58 c8    	vaddps zmm1,zmm12,zmm24
  a32f2b:	62 12 3d 40 bc e3    	vfnmadd231ps zmm12,zmm24,zmm27
  a32f31:	62 41 7c 48 28 c4    	vmovaps zmm24,zmm12
  a32f37:	62 92 5d 40 bc d3    	vfnmadd231ps zmm2,zmm20,zmm27
  a32f3d:	62 82 15 40 bc d3    	vfnmadd231ps zmm18,zmm29,zmm27
  a32f43:	62 82 65 48 bc db    	vfnmadd231ps zmm19,zmm3,zmm27
  a32f49:	62 82 7d 48 bc eb    	vfnmadd231ps zmm21,zmm0,zmm27
  a32f4f:	62 82 35 40 bc f3    	vfnmadd231ps zmm22,zmm25,zmm27
  a32f55:	62 82 05 40 bc fb    	vfnmadd231ps zmm23,zmm31,zmm27
  a32f5b:	62 31 0c 40 58 e4    	vaddps zmm12,zmm30,zmm20
  a32f61:	62 32 3d 48 b8 f4    	vfmadd231ps zmm14,zmm8,zmm20
  a32f67:	62 11 34 48 58 fd    	vaddps zmm15,zmm9,zmm29
  a32f6d:	62 71 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm15
  a32f74:	0e 
  a32f75:	62 12 3d 48 b8 dd    	vfmadd231ps zmm11,zmm8,zmm29
  a32f7b:	62 71 44 48 58 cb    	vaddps zmm9,zmm7,zmm3
  a32f81:	62 62 3d 48 b8 d3    	vfmadd231ps zmm26,zmm8,zmm3
  a32f87:	62 f1 5c 48 58 f8    	vaddps zmm7,zmm4,zmm0
  a32f8d:	62 62 3d 48 b8 e0    	vfmadd231ps zmm28,zmm8,zmm0
  a32f93:	62 91 74 48 58 cf    	vaddps zmm1,zmm1,zmm31
  a32f99:	62 42 05 40 b8 c0    	vfmadd231ps zmm24,zmm31,zmm8
  a32f9f:	62 12 3d 48 b8 e9    	vfmadd231ps zmm13,zmm8,zmm25
  a32fa5:	62 01 4c 48 58 f1    	vaddps zmm30,zmm6,zmm25
  a32fab:	62 61 7c 48 28 5c 24 	vmovaps zmm27,ZMMWORD PTR [rsp+0x4c0]
  a32fb2:	13 
  a32fb3:	62 91 54 40 5c c3    	vsubps zmm0,zmm21,zmm27
  a32fb9:	62 61 7c 48 28 6c 24 	vmovaps zmm29,ZMMWORD PTR [rsp+0x400]
  a32fc0:	10 
  a32fc1:	62 91 4c 40 5c dd    	vsubps zmm3,zmm22,zmm29
  a32fc7:	62 f1 7c 48 5c e3    	vsubps zmm4,zmm0,zmm3
  a32fcd:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm4
  a32fd4:	01 
  a32fd5:	62 f1 7c 48 58 c3    	vaddps zmm0,zmm0,zmm3
  a32fdb:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm0
  a32fe2:	06 
  a32fe3:	62 e1 7c 48 28 4c 24 	vmovaps zmm17,ZMMWORD PTR [rsp+0xc0]
  a32fea:	03 
  a32feb:	62 b1 6c 48 58 c1    	vaddps zmm0,zmm2,zmm17
  a32ff1:	62 e1 7c 48 28 64 24 	vmovaps zmm20,ZMMWORD PTR [rsp+0x500]
  a32ff8:	14 
  a32ff9:	62 b1 6c 40 58 dc    	vaddps zmm3,zmm18,zmm20
  a32fff:	62 61 7c 48 58 fb    	vaddps zmm31,zmm0,zmm3
  a33005:	62 f1 7c 48 5c c3    	vsubps zmm0,zmm0,zmm3
  a3300b:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm0
  a33012:	08 
  a33013:	62 b1 1c 40 5c c0    	vsubps zmm0,zmm28,zmm16
  a33019:	62 d1 14 48 5c da    	vsubps zmm3,zmm13,zmm10
  a3301f:	62 f1 7c 48 5c e3    	vsubps zmm4,zmm0,zmm3
  a33025:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm4
  a3302c:	04 
  a3302d:	62 f1 7c 48 58 c3    	vaddps zmm0,zmm0,zmm3
  a33033:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm0
  a3303a:	05 
  a3303b:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x280]
  a33042:	0a 
  a33043:	62 f1 0c 48 58 c4    	vaddps zmm0,zmm14,zmm4
  a33049:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x240]
  a33050:	09 
  a33051:	62 f1 24 48 58 de    	vaddps zmm3,zmm11,zmm6
  a33057:	62 71 7c 48 58 c3    	vaddps zmm8,zmm0,zmm3
  a3305d:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm8
  a33064:	11 
  a33065:	62 f1 7c 48 5c c3    	vsubps zmm0,zmm0,zmm3
  a3306b:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm0
  a33072:	12 
  a33073:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x1c0]
  a3307a:	07 
  a3307b:	62 f1 2c 40 58 d8    	vaddps zmm3,zmm26,zmm0
  a33081:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm3
  a33088:	0f 
  a33089:	62 f1 2c 40 5c c0    	vsubps zmm0,zmm26,zmm0
  a3308f:	62 71 0c 48 5c c4    	vsubps zmm8,zmm14,zmm4
  a33095:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm8
  a3309c:	0d 
  a3309d:	62 f1 24 48 5c f6    	vsubps zmm6,zmm11,zmm6
  a330a3:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm6
  a330aa:	07 
  a330ab:	62 f1 3c 40 5c dd    	vsubps zmm3,zmm24,zmm5
  a330b1:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm3
  a330b8:	09 
  a330b9:	62 11 54 48 58 d8    	vaddps zmm11,zmm5,zmm24
  a330bf:	62 01 7c 40 58 c4    	vaddps zmm24,zmm16,zmm28
  a330c5:	62 51 2c 48 58 f5    	vaddps zmm14,zmm10,zmm13
  a330cb:	62 41 1c 48 58 cf    	vaddps zmm25,zmm12,zmm15
  a330d1:	62 51 7c 48 28 fc    	vmovaps zmm15,zmm12
  a330d7:	62 91 34 48 58 d9    	vaddps zmm3,zmm9,zmm25
  a330dd:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm3
  a330e4:	0a 
  a330e5:	62 f2 7d 48 18 1d 71 	vbroadcastss zmm3,DWORD PTR [rip+0xffffffffff642371]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a330ec:	23 64 ff 
  a330ef:	62 42 65 48 ac c9    	vfnmadd213ps zmm25,zmm3,zmm9
  a330f5:	62 11 44 48 58 d6    	vaddps zmm10,zmm7,zmm30
  a330fb:	62 71 7c 48 28 e7    	vmovaps zmm12,zmm7
  a33101:	62 d1 74 48 58 e2    	vaddps zmm4,zmm1,zmm10
  a33107:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm4
  a3310e:	0c 
  a3310f:	62 72 65 48 ac d1    	vfnmadd213ps zmm10,zmm3,zmm1
  a33115:	62 71 3c 48 58 ce    	vaddps zmm9,zmm8,zmm6
  a3311b:	62 d1 7c 48 58 f9    	vaddps zmm7,zmm0,zmm9
  a33121:	62 72 65 48 ac c8    	vfnmadd213ps zmm9,zmm3,zmm0
  a33127:	62 71 7c 48 28 eb    	vmovaps zmm13,zmm3
  a3312d:	62 61 7c 48 28 e3    	vmovaps zmm28,zmm3
  a33133:	62 71 7c 48 28 c3    	vmovaps zmm8,zmm3
  a33139:	62 e1 7c 48 28 c3    	vmovaps zmm16,zmm3
  a3313f:	62 41 3c 40 58 d6    	vaddps zmm26,zmm24,zmm14
  a33145:	62 f1 7c 48 28 eb    	vmovaps zmm5,zmm3
  a3314b:	62 f1 7c 48 28 f3    	vmovaps zmm6,zmm3
  a33151:	62 d2 2d 40 ac db    	vfnmadd213ps zmm3,zmm26,zmm11
  a33157:	62 91 24 48 58 c2    	vaddps zmm0,zmm11,zmm26
  a3315d:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm0
  a33164:	0b 
  a33165:	62 b1 6c 48 5c d1    	vsubps zmm2,zmm2,zmm17
  a3316b:	62 a1 6c 40 5c d4    	vsubps zmm18,zmm18,zmm20
  a33171:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x80]
  a33178:	02 
  a33179:	62 61 64 40 58 d0    	vaddps zmm26,zmm19,zmm0
  a3317f:	62 e1 64 40 5c d8    	vsubps zmm19,zmm19,zmm0
  a33185:	62 a1 24 40 58 ed    	vaddps zmm21,zmm27,zmm21
  a3318b:	62 a1 14 40 58 f6    	vaddps zmm22,zmm29,zmm22
  a33191:	62 31 54 40 5c de    	vsubps zmm11,zmm21,zmm22
  a33197:	62 b1 54 40 58 ce    	vaddps zmm1,zmm21,zmm22
  a3319d:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x540]
  a331a4:	15 
  a331a5:	62 e1 44 40 5c f0    	vsubps zmm22,zmm23,zmm0
  a331ab:	62 a1 7c 48 58 ff    	vaddps zmm23,zmm0,zmm23
  a331b1:	62 b1 6c 48 58 c2    	vaddps zmm0,zmm2,zmm18
  a331b7:	62 a1 6c 48 5c d2    	vsubps zmm18,zmm2,zmm18
  a331bd:	62 01 1c 48 5c ee    	vsubps zmm29,zmm12,zmm30
  a331c3:	62 61 04 48 5c 74 24 	vsubps zmm30,zmm15,ZMMWORD PTR [rsp+0x380]
  a331ca:	0e 
  a331cb:	62 12 05 40 ac ea    	vfnmadd213ps zmm13,zmm31,zmm26
  a331d1:	62 11 2c 40 58 ff    	vaddps zmm15,zmm26,zmm31
  a331d7:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x180]
  a331de:	06 
  a331df:	62 22 6d 48 ac e6    	vfnmadd213ps zmm28,zmm2,zmm22
  a331e5:	62 f1 4c 40 58 d2    	vaddps zmm2,zmm22,zmm2
  a331eb:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm2
  a331f2:	03 
  a331f3:	62 62 7d 48 18 3d d7 	vbroadcastss zmm31,DWORD PTR [rip+0xffffffffff6420d7]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a331fa:	20 64 ff 
  a331fd:	62 71 7c 48 28 64 24 	vmovaps zmm12,ZMMWORD PTR [rsp+0x440]
  a33204:	11 
  a33205:	62 e1 7c 48 28 6c 24 	vmovaps zmm21,ZMMWORD PTR [rsp+0x3c0]
  a3320c:	0f 
  a3320d:	62 32 1d 48 ac c5    	vfnmadd213ps zmm8,zmm12,zmm21
  a33213:	62 61 04 40 59 54 24 	vmulps zmm26,zmm31,ZMMWORD PTR [rsp+0x100]
  a3321a:	04 
  a3321b:	62 81 3c 48 5c f2    	vsubps zmm22,zmm8,zmm26
  a33221:	62 01 3c 48 58 da    	vaddps zmm27,zmm8,zmm26
  a33227:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x140]
  a3322e:	05 
  a3322f:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x240]
  a33236:	09 
  a33237:	62 e2 5d 48 ac c2    	vfnmadd213ps zmm16,zmm4,zmm2
  a3323d:	62 61 04 40 59 54 24 	vmulps zmm26,zmm31,ZMMWORD PTR [rsp+0x480]
  a33244:	12 
  a33245:	62 11 7c 40 58 c2    	vaddps zmm8,zmm16,zmm26
  a3324b:	62 01 7c 40 5c d2    	vsubps zmm26,zmm16,zmm26
  a33251:	62 51 3c 40 5c f6    	vsubps zmm14,zmm24,zmm14
  a33257:	62 e1 7c 48 28 44 24 	vmovaps zmm16,ZMMWORD PTR [rsp+0x340]
  a3325e:	0d 
  a3325f:	62 e1 7c 40 5c 44 24 	vsubps zmm16,zmm16,ZMMWORD PTR [rsp+0x1c0]
  a33266:	07 
  a33267:	62 e1 04 40 59 64 24 	vmulps zmm20,zmm31,ZMMWORD PTR [rsp+0x40]
  a3326e:	01 
  a3326f:	62 61 04 40 59 44 24 	vmulps zmm24,zmm31,ZMMWORD PTR [rsp+0x200]
  a33276:	08 
  a33277:	62 81 24 48 59 cf    	vmulps zmm17,zmm11,zmm31
  a3327d:	62 81 6c 40 59 d7    	vmulps zmm18,zmm18,zmm31
  a33283:	62 11 14 40 59 df    	vmulps zmm11,zmm29,zmm31
  a33289:	62 01 0c 40 59 ef    	vmulps zmm29,zmm30,zmm31
  a3328f:	62 11 0c 48 59 f7    	vmulps zmm14,zmm14,zmm31
  a33295:	62 01 7c 40 59 f7    	vmulps zmm30,zmm16,zmm31
  a3329b:	62 b2 7d 48 ac eb    	vfnmadd213ps zmm5,zmm0,zmm19
  a332a1:	62 61 64 40 58 f8    	vaddps zmm31,zmm19,zmm0
  a332a7:	62 b2 75 48 ac f7    	vfnmadd213ps zmm6,zmm1,zmm23
  a332ad:	62 f1 44 40 58 c1    	vaddps zmm0,zmm23,zmm1
  a332b3:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm0
  a332ba:	02 
  a332bb:	62 d1 34 40 5c cb    	vsubps zmm1,zmm25,zmm11
  a332c1:	62 41 34 40 58 cb    	vaddps zmm25,zmm25,zmm11
  a332c7:	62 c1 14 40 58 c2    	vaddps zmm16,zmm29,zmm10
  a332cd:	62 81 2c 48 5c dd    	vsubps zmm19,zmm10,zmm29
  a332d3:	62 d1 5c 40 58 c5    	vaddps zmm0,zmm20,zmm13
  a332d9:	62 31 14 48 5c ec    	vsubps zmm13,zmm13,zmm20
  a332df:	62 11 1c 40 5c d8    	vsubps zmm11,zmm28,zmm24
  a332e5:	62 81 1c 40 58 e0    	vaddps zmm20,zmm28,zmm24
  a332eb:	62 c1 54 40 58 fc    	vaddps zmm23,zmm21,zmm12
  a332f1:	62 e1 6c 48 58 ec    	vaddps zmm21,zmm2,zmm4
  a332f7:	62 41 34 48 5c e6    	vsubps zmm28,zmm9,zmm14
  a332fd:	62 41 34 48 58 c6    	vaddps zmm24,zmm9,zmm14
  a33303:	62 01 64 48 58 ee    	vaddps zmm29,zmm3,zmm30
  a33309:	62 11 64 48 5c ce    	vsubps zmm9,zmm3,zmm30
  a3330f:	62 f1 74 40 58 dd    	vaddps zmm3,zmm17,zmm5
  a33315:	62 b1 54 48 5c e1    	vsubps zmm4,zmm5,zmm17
  a3331b:	62 31 4c 48 5c f2    	vsubps zmm14,zmm6,zmm18
  a33321:	62 b1 4c 48 58 ea    	vaddps zmm5,zmm6,zmm18
  a33327:	62 71 7c 48 28 15 4f 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff693c4f]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a3332e:	3c 69 ff 
  a33331:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x280]
  a33338:	0a 
  a33339:	62 92 2d 48 7f d4    	vpermt2ps zmm2,zmm10,zmm28
  a3333f:	62 92 2d 48 7f c7    	vpermt2ps zmm0,zmm10,zmm31
  a33345:	62 82 2d 48 7f f1    	vpermt2ps zmm22,zmm10,zmm25
  a3334b:	62 d2 2d 48 7f fd    	vpermt2ps zmm7,zmm10,zmm13
  a33351:	62 b2 2d 48 7f df    	vpermt2ps zmm3,zmm10,zmm23
  a33357:	62 92 2d 48 7f c8    	vpermt2ps zmm1,zmm10,zmm24
  a3335d:	62 72 2d 48 7f fc    	vpermt2ps zmm15,zmm10,zmm4
  a33363:	62 a1 74 00 57 c9    	vxorps xmm17,xmm17,xmm17
  a33369:	62 22 2d 48 7f d9    	vpermt2ps zmm27,zmm10,zmm17
  a3336f:	62 e1 7c 48 28 3d 87 	vmovaps zmm23,ZMMWORD PTR [rip+0xffffffffff693b87]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a33376:	3b 69 ff 
  a33379:	62 f1 7c 48 28 e2    	vmovaps zmm4,zmm2
  a3337f:	62 f2 45 40 7f e3    	vpermt2ps zmm4,zmm23,zmm3
  a33385:	62 61 7c 48 28 25 b1 	vmovaps zmm28,ZMMWORD PTR [rip+0xffffffffff693bb1]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a3338c:	3b 69 ff 
  a3338f:	62 f2 1d 40 7f d3    	vpermt2ps zmm2,zmm28,zmm3
  a33395:	62 f1 7c 48 28 f2    	vmovaps zmm6,zmm2
  a3339b:	62 f1 7c 48 28 d8    	vmovaps zmm3,zmm0
  a333a1:	62 f2 45 40 7f d9    	vpermt2ps zmm3,zmm23,zmm1
  a333a7:	62 f2 1d 40 7f c1    	vpermt2ps zmm0,zmm28,zmm1
  a333ad:	62 b1 7c 48 28 ce    	vmovaps zmm1,zmm22
  a333b3:	62 d2 45 40 7f cf    	vpermt2ps zmm1,zmm23,zmm15
  a333b9:	62 c2 1d 40 7f f7    	vpermt2ps zmm22,zmm28,zmm15
  a333bf:	62 71 7c 48 28 ef    	vmovaps zmm13,zmm7
  a333c5:	62 12 45 40 7f eb    	vpermt2ps zmm13,zmm23,zmm27
  a333cb:	62 92 1d 40 7f fb    	vpermt2ps zmm7,zmm28,zmm27
  a333d1:	62 f1 dd 48 14 d1    	vunpcklpd zmm2,zmm4,zmm1
  a333d7:	62 f1 dd 48 15 e1    	vunpckhpd zmm4,zmm4,zmm1
  a333dd:	62 d1 e5 48 14 cd    	vunpcklpd zmm1,zmm3,zmm13
  a333e3:	62 51 e5 48 15 ed    	vunpckhpd zmm13,zmm3,zmm13
  a333e9:	62 21 cd 48 14 de    	vunpcklpd zmm27,zmm6,zmm22
  a333ef:	62 b1 cd 48 15 de    	vunpckhpd zmm3,zmm6,zmm22
  a333f5:	62 71 fd 48 14 e7    	vunpcklpd zmm12,zmm0,zmm7
  a333fb:	62 f1 fd 48 15 f7    	vunpckhpd zmm6,zmm0,zmm7
  a33401:	62 f1 7c 48 28 05 f5 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6939f5]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a33408:	39 69 ff 
  a3340b:	62 f1 7c 48 28 fa    	vmovaps zmm7,zmm2
  a33411:	62 f2 7d 48 7f f9    	vpermt2ps zmm7,zmm0,zmm1
  a33417:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm7
  a3341e:	01 
  a3341f:	62 e1 7c 48 28 35 17 	vmovaps zmm22,ZMMWORD PTR [rip+0xffffffffff693a17]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a33426:	3a 69 ff 
  a33429:	62 f2 4d 40 7f d1    	vpermt2ps zmm2,zmm22,zmm1
  a3342f:	62 61 7c 48 28 f4    	vmovaps zmm30,zmm4
  a33435:	62 42 7d 48 7f f5    	vpermt2ps zmm30,zmm0,zmm13
  a3343b:	62 d2 4d 40 7f e5    	vpermt2ps zmm4,zmm22,zmm13
  a33441:	62 01 7c 48 28 fb    	vmovaps zmm31,zmm27
  a33447:	62 42 7d 48 7f fc    	vpermt2ps zmm31,zmm0,zmm12
  a3344d:	62 42 4d 40 7f dc    	vpermt2ps zmm27,zmm22,zmm12
  a33453:	62 71 7c 48 28 eb    	vmovaps zmm13,zmm3
  a33459:	62 72 7d 48 7f ee    	vpermt2ps zmm13,zmm0,zmm6
  a3345f:	62 f2 4d 40 7f de    	vpermt2ps zmm3,zmm22,zmm6
  a33465:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x300]
  a3346c:	0c 
  a3346d:	62 92 2d 48 7f f5    	vpermt2ps zmm6,zmm10,zmm29
  a33473:	62 72 2d 48 7f 5c 24 	vpermt2ps zmm11,zmm10,ZMMWORD PTR [rsp+0x80]
  a3347a:	02 
  a3347b:	62 32 2d 48 7f c3    	vpermt2ps zmm8,zmm10,zmm19
  a33481:	62 71 7c 48 28 64 24 	vmovaps zmm12,ZMMWORD PTR [rsp+0x2c0]
  a33488:	0b 
  a33489:	62 32 2d 48 7f e4    	vpermt2ps zmm12,zmm10,zmm20
  a3348f:	62 32 2d 48 7f f5    	vpermt2ps zmm14,zmm10,zmm21
  a33495:	62 c2 2d 48 7f c1    	vpermt2ps zmm16,zmm10,zmm9
  a3349b:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0xc0]
  a334a2:	03 
  a334a3:	62 72 2d 48 7f cd    	vpermt2ps zmm9,zmm10,zmm5
  a334a9:	62 22 2d 48 7f d1    	vpermt2ps zmm26,zmm10,zmm17
  a334af:	62 f1 7c 48 28 ce    	vmovaps zmm1,zmm6
  a334b5:	62 d2 45 40 7f ce    	vpermt2ps zmm1,zmm23,zmm14
  a334bb:	62 d2 1d 40 7f f6    	vpermt2ps zmm6,zmm28,zmm14
  a334c1:	62 71 7c 48 28 d6    	vmovaps zmm10,zmm6
  a334c7:	62 d1 7c 48 28 eb    	vmovaps zmm5,zmm11
  a334cd:	62 b2 45 40 7f e8    	vpermt2ps zmm5,zmm23,zmm16
  a334d3:	62 32 1d 40 7f d8    	vpermt2ps zmm11,zmm28,zmm16
  a334d9:	62 d1 7c 48 28 f0    	vmovaps zmm6,zmm8
  a334df:	62 d2 45 40 7f f1    	vpermt2ps zmm6,zmm23,zmm9
  a334e5:	62 52 1d 40 7f c1    	vpermt2ps zmm8,zmm28,zmm9
  a334eb:	62 51 7c 48 28 cc    	vmovaps zmm9,zmm12
  a334f1:	62 82 1d 48 77 fa    	vpermi2ps zmm23,zmm12,zmm26
  a334f7:	62 12 1d 40 7f ca    	vpermt2ps zmm9,zmm28,zmm26
  a334fd:	62 51 7c 48 28 e1    	vmovaps zmm12,zmm9
  a33503:	62 e1 f5 48 14 c6    	vunpcklpd zmm16,zmm1,zmm6
  a33509:	62 71 f5 48 15 ce    	vunpckhpd zmm9,zmm1,zmm6
  a3350f:	62 b1 d5 48 14 f7    	vunpcklpd zmm6,zmm5,zmm23
  a33515:	62 b1 d5 48 15 ef    	vunpckhpd zmm5,zmm5,zmm23
  a3351b:	62 51 ad 48 14 f0    	vunpcklpd zmm14,zmm10,zmm8
  a33521:	62 51 ad 48 15 c0    	vunpckhpd zmm8,zmm10,zmm8
  a33527:	62 51 a5 48 14 d4    	vunpcklpd zmm10,zmm11,zmm12
  a3352d:	62 51 a5 48 15 dc    	vunpckhpd zmm11,zmm11,zmm12
  a33533:	62 b1 7c 48 28 c8    	vmovaps zmm1,zmm16
  a33539:	62 f2 7d 48 7f ce    	vpermt2ps zmm1,zmm0,zmm6
  a3353f:	62 e2 4d 40 7f c6    	vpermt2ps zmm16,zmm22,zmm6
  a33545:	62 51 7c 48 28 e1    	vmovaps zmm12,zmm9
  a3354b:	62 72 7d 48 7f e5    	vpermt2ps zmm12,zmm0,zmm5
  a33551:	62 72 4d 40 7f cd    	vpermt2ps zmm9,zmm22,zmm5
  a33557:	62 51 7c 48 28 fe    	vmovaps zmm15,zmm14
  a3355d:	62 52 7d 48 7f fa    	vpermt2ps zmm15,zmm0,zmm10
  a33563:	62 52 4d 40 7f f2    	vpermt2ps zmm14,zmm22,zmm10
  a33569:	62 d2 3d 48 77 c3    	vpermi2ps zmm0,zmm8,zmm11
  a3356f:	62 52 4d 40 7f c3    	vpermt2ps zmm8,zmm22,zmm11
  a33575:	62 e1 7c 48 10 72 02 	vmovups zmm22,ZMMWORD PTR [rdx+0x80]
  a3357c:	62 e1 7c 48 10 6a 03 	vmovups zmm21,ZMMWORD PTR [rdx+0xc0]
  a33583:	62 71 7c 48 10 5a 04 	vmovups zmm11,ZMMWORD PTR [rdx+0x100]
  a3358a:	62 61 7c 48 10 42 05 	vmovups zmm24,ZMMWORD PTR [rdx+0x140]
  a33591:	62 e1 7c 48 10 4a 06 	vmovups zmm17,ZMMWORD PTR [rdx+0x180]
  a33598:	62 f1 7c 48 10 6a 07 	vmovups zmm5,ZMMWORD PTR [rdx+0x1c0]
  a3359f:	62 61 7c 48 10 4a 08 	vmovups zmm25,ZMMWORD PTR [rdx+0x200]
  a335a6:	62 61 7c 48 10 52 09 	vmovups zmm26,ZMMWORD PTR [rdx+0x240]
  a335ad:	62 f1 7c 48 10 72 0a 	vmovups zmm6,ZMMWORD PTR [rdx+0x280]
  a335b4:	62 e1 7c 48 10 7a 0b 	vmovups zmm23,ZMMWORD PTR [rdx+0x2c0]
  a335bb:	62 61 7c 48 10 62 0c 	vmovups zmm28,ZMMWORD PTR [rdx+0x300]
  a335c2:	62 61 7c 48 10 6a 0d 	vmovups zmm29,ZMMWORD PTR [rdx+0x340]
  a335c9:	62 e1 7c 48 10 62 0e 	vmovups zmm20,ZMMWORD PTR [rdx+0x380]
  a335d0:	62 e1 7c 48 10 5a 0f 	vmovups zmm19,ZMMWORD PTR [rdx+0x3c0]
  a335d7:	62 81 04 40 59 d1    	vmulps zmm18,zmm31,zmm25
  a335dd:	62 82 05 48 bc d2    	vfnmadd231ps zmm18,zmm15,zmm26
  a335e3:	62 31 44 48 58 d2    	vaddps zmm10,zmm7,zmm18
  a335e9:	62 11 04 48 59 f9    	vmulps zmm15,zmm15,zmm25
  a335ef:	62 41 0c 40 59 cb    	vmulps zmm25,zmm30,zmm11
  a335f5:	62 02 1d 48 bc c8    	vfnmadd231ps zmm25,zmm12,zmm24
  a335fb:	62 12 2d 40 b8 ff    	vfmadd231ps zmm15,zmm26,zmm31
  a33601:	62 01 14 48 59 d4    	vmulps zmm26,zmm13,zmm28
  a33607:	62 02 7d 48 bc d5    	vfnmadd231ps zmm26,zmm0,zmm29
  a3360d:	62 01 34 40 58 fa    	vaddps zmm31,zmm25,zmm26
  a33613:	62 51 1c 48 59 e3    	vmulps zmm12,zmm12,zmm11
  a33619:	62 11 2c 48 58 df    	vaddps zmm11,zmm10,zmm31
  a3361f:	62 12 3d 40 b8 e6    	vfmadd231ps zmm12,zmm24,zmm30
  a33625:	62 21 6c 48 59 c6    	vmulps zmm24,zmm2,zmm22
  a3362b:	62 22 7d 40 bc c5    	vfnmadd231ps zmm24,zmm16,zmm21
  a33631:	62 61 24 40 59 f6    	vmulps zmm30,zmm27,zmm6
  a33637:	62 22 0d 48 bc f7    	vfnmadd231ps zmm30,zmm14,zmm23
  a3363d:	62 91 7c 48 59 c4    	vmulps zmm0,zmm0,zmm28
  a33643:	62 01 3c 40 58 e6    	vaddps zmm28,zmm24,zmm30
  a33649:	62 d2 15 40 b8 c5    	vfmadd231ps zmm0,zmm29,zmm13
  a3364f:	62 31 5c 48 59 e9    	vmulps zmm13,zmm4,zmm17
  a33655:	62 72 35 48 bc ed    	vfnmadd231ps zmm13,zmm9,zmm5
  a3365b:	62 21 64 48 59 ec    	vmulps zmm29,zmm3,zmm20
  a33661:	62 22 3d 48 bc eb    	vfnmadd231ps zmm29,zmm8,zmm19
  a33667:	62 a1 7c 40 59 c6    	vmulps zmm16,zmm16,zmm22
  a3366d:	62 81 14 48 58 f5    	vaddps zmm22,zmm13,zmm29
  a33673:	62 e2 55 40 b8 c2    	vfmadd231ps zmm16,zmm21,zmm2
  a33679:	62 a1 1c 40 58 ee    	vaddps zmm21,zmm28,zmm22
  a3367f:	62 f1 04 48 58 f9    	vaddps zmm7,zmm15,zmm1
  a33685:	62 f1 0c 48 59 f6    	vmulps zmm6,zmm14,zmm6
  a3368b:	62 71 1c 48 58 f0    	vaddps zmm14,zmm12,zmm0
  a33691:	62 92 45 40 b8 f3    	vfmadd231ps zmm6,zmm23,zmm27
  a33697:	62 e1 0c 48 58 ff    	vaddps zmm23,zmm14,zmm7
  a3369d:	62 61 7c 40 58 de    	vaddps zmm27,zmm16,zmm6
  a336a3:	62 31 34 48 59 c9    	vmulps zmm9,zmm9,zmm17
  a336a9:	62 72 55 48 b8 cc    	vfmadd231ps zmm9,zmm5,zmm4
  a336af:	62 b1 3c 48 59 d4    	vmulps zmm2,zmm8,zmm20
  a336b5:	62 f2 65 40 b8 d3    	vfmadd231ps zmm2,zmm19,zmm3
  a336bb:	62 f1 34 48 58 da    	vaddps zmm3,zmm9,zmm2
  a336c1:	62 71 24 40 58 c3    	vaddps zmm8,zmm27,zmm3
  a336c7:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x40]
  a336ce:	01 
  a336cf:	62 b1 5c 48 5c e2    	vsubps zmm4,zmm4,zmm18
  a336d5:	62 f1 1c 48 5c c0    	vsubps zmm0,zmm12,zmm0
  a336db:	62 71 5c 48 58 e0    	vaddps zmm12,zmm4,zmm0
  a336e1:	62 91 3c 40 5c ee    	vsubps zmm5,zmm24,zmm30
  a336e7:	62 f1 7c 40 5c f6    	vsubps zmm6,zmm16,zmm6
  a336ed:	62 e2 7d 48 18 05 a5 	vbroadcastss zmm16,DWORD PTR [rip+0xffffffffff641ca5]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a336f4:	1c 64 ff 
  a336f7:	62 e1 54 48 58 ce    	vaddps zmm17,zmm5,zmm6
  a336fd:	62 a1 74 40 59 c8    	vmulps zmm17,zmm17,zmm16
  a33703:	62 f1 34 48 5c d2    	vsubps zmm2,zmm9,zmm2
  a33709:	62 11 14 48 5c cd    	vsubps zmm9,zmm13,zmm29
  a3370f:	62 51 6c 48 5c e9    	vsubps zmm13,zmm2,zmm9
  a33715:	62 31 14 48 59 e8    	vmulps zmm13,zmm13,zmm16
  a3371b:	62 c1 74 40 58 d5    	vaddps zmm18,zmm17,zmm13
  a33721:	62 a1 1c 48 58 da    	vaddps zmm19,zmm12,zmm18
  a33727:	62 d1 74 48 5c cf    	vsubps zmm1,zmm1,zmm15
  a3372d:	62 11 2c 40 5c f9    	vsubps zmm15,zmm26,zmm25
  a33733:	62 e1 04 48 58 e1    	vaddps zmm20,zmm15,zmm1
  a33739:	62 f1 4c 48 5c ed    	vsubps zmm5,zmm6,zmm5
  a3373f:	62 21 54 48 59 c0    	vmulps zmm24,zmm5,zmm16
  a33745:	62 f1 34 48 58 d2    	vaddps zmm2,zmm9,zmm2
  a3374b:	62 b1 6c 48 59 d0    	vmulps zmm2,zmm2,zmm16
  a33751:	62 71 3c 40 5c ca    	vsubps zmm9,zmm24,zmm2
  a33757:	62 d1 5c 40 58 e9    	vaddps zmm5,zmm20,zmm9
  a3375d:	62 11 2c 48 5c d7    	vsubps zmm10,zmm10,zmm31
  a33763:	62 f1 24 40 5c db    	vsubps zmm3,zmm27,zmm3
  a33769:	62 61 2c 48 58 cb    	vaddps zmm25,zmm10,zmm3
  a3376f:	62 51 44 48 5c f6    	vsubps zmm14,zmm7,zmm14
  a33775:	62 81 4c 40 5c c4    	vsubps zmm16,zmm22,zmm28
  a3377b:	62 b1 0c 48 58 f0    	vaddps zmm6,zmm14,zmm16
  a33781:	62 f1 5c 48 5c c0    	vsubps zmm0,zmm4,zmm0
  a33787:	62 e1 3c 40 58 f2    	vaddps zmm22,zmm24,zmm2
  a3378d:	62 21 7c 48 58 d6    	vaddps zmm26,zmm0,zmm22
  a33793:	62 51 74 48 5c ff    	vsubps zmm15,zmm1,zmm15
  a33799:	62 a1 14 48 5c c9    	vsubps zmm17,zmm13,zmm17
  a3379f:	62 b1 04 48 58 f9    	vaddps zmm7,zmm15,zmm17
  a337a5:	62 21 24 48 5c c5    	vsubps zmm24,zmm11,zmm21
  a337ab:	62 d1 44 40 5c e0    	vsubps zmm4,zmm23,zmm8
  a337b1:	62 a1 1c 48 5c d2    	vsubps zmm18,zmm12,zmm18
  a337b7:	62 d1 5c 40 5c d1    	vsubps zmm2,zmm20,zmm9
  a337bd:	62 71 2c 48 5c eb    	vsubps zmm13,zmm10,zmm3
  a337c3:	62 b1 0c 48 5c c8    	vsubps zmm1,zmm14,zmm16
  a337c9:	62 31 7c 48 5c ce    	vsubps zmm9,zmm0,zmm22
  a337cf:	62 b1 04 48 5c c1    	vsubps zmm0,zmm15,zmm17
  a337d5:	62 51 44 40 58 c0    	vaddps zmm8,zmm23,zmm8
  a337db:	62 31 24 48 58 fd    	vaddps zmm15,zmm11,zmm21
  a337e1:	62 f1 7c 48 28 1d 15 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff65d615]        # 90e00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e2b0>
  a337e8:	d6 65 ff 
  a337eb:	62 51 7c 48 28 d0    	vmovaps zmm10,zmm8
  a337f1:	62 52 65 48 7f d7    	vpermt2ps zmm10,zmm3,zmm15
  a337f7:	62 51 3c 48 15 df    	vunpckhps zmm11,zmm8,zmm15
  a337fd:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm11
  a33804:	03 
  a33805:	62 51 3c 48 14 df    	vunpcklps zmm11,zmm8,zmm15
  a3380b:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm11
  a33812:	02 
  a33813:	c5 7c 28 35 25 d6 65 	vmovaps ymm14,YMMWORD PTR [rip+0xffffffffff65d625]        # 90e40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e2f0>
  a3381a:	ff 
  a3381b:	62 52 0d 48 7f c7    	vpermt2ps zmm8,zmm14,zmm15
  a33821:	62 71 7c 48 28 fd    	vmovaps zmm15,zmm5
  a33827:	62 32 65 48 7f fb    	vpermt2ps zmm15,zmm3,zmm19
  a3382d:	62 a1 54 48 15 c3    	vunpckhps zmm16,zmm5,zmm19
  a33833:	62 a1 54 48 14 cb    	vunpcklps zmm17,zmm5,zmm19
  a33839:	62 b2 0d 48 7f eb    	vpermt2ps zmm5,zmm14,zmm19
  a3383f:	62 e1 7c 48 28 de    	vmovaps zmm19,zmm6
  a33845:	62 82 65 48 7f d9    	vpermt2ps zmm19,zmm3,zmm25
  a3384b:	62 81 4c 48 15 e1    	vunpckhps zmm20,zmm6,zmm25
  a33851:	62 81 4c 48 14 e9    	vunpcklps zmm21,zmm6,zmm25
  a33857:	62 92 0d 48 7f f1    	vpermt2ps zmm6,zmm14,zmm25
  a3385d:	62 e1 7c 48 28 f7    	vmovaps zmm22,zmm7
  a33863:	62 82 65 48 7f f2    	vpermt2ps zmm22,zmm3,zmm26
  a33869:	62 81 44 48 15 fa    	vunpckhps zmm23,zmm7,zmm26
  a3386f:	62 01 44 48 14 ca    	vunpcklps zmm25,zmm7,zmm26
  a33875:	62 92 0d 48 7f fa    	vpermt2ps zmm7,zmm14,zmm26
  a3387b:	62 61 7c 48 28 d4    	vmovaps zmm26,zmm4
  a33881:	62 02 65 48 7f d0    	vpermt2ps zmm26,zmm3,zmm24
  a33887:	62 01 5c 48 15 d8    	vunpckhps zmm27,zmm4,zmm24
  a3388d:	62 01 5c 48 14 e0    	vunpcklps zmm28,zmm4,zmm24
  a33893:	62 92 0d 48 7f e0    	vpermt2ps zmm4,zmm14,zmm24
  a33899:	62 61 7c 48 28 c2    	vmovaps zmm24,zmm2
  a3389f:	62 22 65 48 7f c2    	vpermt2ps zmm24,zmm3,zmm18
  a338a5:	62 21 6c 48 15 ea    	vunpckhps zmm29,zmm2,zmm18
  a338ab:	62 21 6c 48 14 f2    	vunpcklps zmm30,zmm2,zmm18
  a338b1:	62 b2 0d 48 7f d2    	vpermt2ps zmm2,zmm14,zmm18
  a338b7:	62 e1 7c 48 28 d1    	vmovaps zmm18,zmm1
  a338bd:	62 c2 65 48 7f d5    	vpermt2ps zmm18,zmm3,zmm13
  a338c3:	62 41 74 48 15 fd    	vunpckhps zmm31,zmm1,zmm13
  a338c9:	62 51 74 48 14 e5    	vunpcklps zmm12,zmm1,zmm13
  a338cf:	62 d2 0d 48 7f cd    	vpermt2ps zmm1,zmm14,zmm13
  a338d5:	62 d2 7d 48 77 d9    	vpermi2ps zmm3,zmm0,zmm9
  a338db:	62 51 7c 48 15 e9    	vunpckhps zmm13,zmm0,zmm9
  a338e1:	62 51 7c 48 14 d9    	vunpcklps zmm11,zmm0,zmm9
  a338e7:	62 d2 0d 48 7f c1    	vpermt2ps zmm0,zmm14,zmm9
  a338ed:	62 71 7c 48 11 16    	vmovups ZMMWORD PTR [rsi],zmm10
  a338f3:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x80]
  a338fa:	02 
  a338fb:	62 73 7d 48 19 4e 06 	vextractf32x4 XMMWORD PTR [rsi+0x60],zmm9,0x3
  a33902:	03 
  a33903:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0xc0]
  a3390a:	03 
  a3390b:	62 53 7d 48 19 c9 03 	vextractf32x4 xmm9,zmm9,0x3
  a33912:	c5 78 13 4e 70       	vmovlps QWORD PTR [rsi+0x70],xmm9
  a33917:	c5 7c 11 46 40       	vmovups YMMWORD PTR [rsi+0x40],ymm8
  a3391c:	62 71 7c 48 11 be 78 	vmovups ZMMWORD PTR [rsi+0x78],zmm15
  a33923:	00 00 00 
  a33926:	62 e3 7d 48 19 8e d8 	vextractf32x4 XMMWORD PTR [rsi+0xd8],zmm17,0x3
  a3392d:	00 00 00 03 
  a33931:	62 c3 7d 48 19 c0 03 	vextractf32x4 xmm8,zmm16,0x3
  a33938:	c5 78 13 86 e8 00 00 	vmovlps QWORD PTR [rsi+0xe8],xmm8
  a3393f:	00 
  a33940:	c5 fc 11 ae b8 00 00 	vmovups YMMWORD PTR [rsi+0xb8],ymm5
  a33947:	00 
  a33948:	62 e1 7c 48 11 9e f0 	vmovups ZMMWORD PTR [rsi+0xf0],zmm19
  a3394f:	00 00 00 
  a33952:	62 e3 7d 48 19 6e 15 	vextractf32x4 XMMWORD PTR [rsi+0x150],zmm21,0x3
  a33959:	03 
  a3395a:	62 e3 7d 48 19 e5 03 	vextractf32x4 xmm5,zmm20,0x3
  a33961:	c5 f8 13 ae 60 01 00 	vmovlps QWORD PTR [rsi+0x160],xmm5
  a33968:	00 
  a33969:	c5 fc 11 b6 30 01 00 	vmovups YMMWORD PTR [rsi+0x130],ymm6
  a33970:	00 
  a33971:	62 e1 7c 48 11 b6 68 	vmovups ZMMWORD PTR [rsi+0x168],zmm22
  a33978:	01 00 00 
  a3397b:	62 63 7d 48 19 8e c8 	vextractf32x4 XMMWORD PTR [rsi+0x1c8],zmm25,0x3
  a33982:	01 00 00 03 
  a33986:	62 e3 7d 48 19 fd 03 	vextractf32x4 xmm5,zmm23,0x3
  a3398d:	c5 f8 13 ae d8 01 00 	vmovlps QWORD PTR [rsi+0x1d8],xmm5
  a33994:	00 
  a33995:	c5 fc 11 be a8 01 00 	vmovups YMMWORD PTR [rsi+0x1a8],ymm7
  a3399c:	00 
  a3399d:	62 61 7c 48 11 96 e0 	vmovups ZMMWORD PTR [rsi+0x1e0],zmm26
  a339a4:	01 00 00 
  a339a7:	62 63 7d 48 19 66 24 	vextractf32x4 XMMWORD PTR [rsi+0x240],zmm28,0x3
  a339ae:	03 
  a339af:	62 63 7d 48 19 dd 03 	vextractf32x4 xmm5,zmm27,0x3
  a339b6:	c5 f8 13 ae 50 02 00 	vmovlps QWORD PTR [rsi+0x250],xmm5
  a339bd:	00 
  a339be:	c5 fc 11 a6 20 02 00 	vmovups YMMWORD PTR [rsi+0x220],ymm4
  a339c5:	00 
  a339c6:	62 61 7c 48 11 86 58 	vmovups ZMMWORD PTR [rsi+0x258],zmm24
  a339cd:	02 00 00 
  a339d0:	62 63 7d 48 19 b6 b8 	vextractf32x4 XMMWORD PTR [rsi+0x2b8],zmm30,0x3
  a339d7:	02 00 00 03 
  a339db:	62 63 7d 48 19 ec 03 	vextractf32x4 xmm4,zmm29,0x3
  a339e2:	c5 f8 13 a6 c8 02 00 	vmovlps QWORD PTR [rsi+0x2c8],xmm4
  a339e9:	00 
  a339ea:	c5 fc 11 96 98 02 00 	vmovups YMMWORD PTR [rsi+0x298],ymm2
  a339f1:	00 
  a339f2:	62 e1 7c 48 11 96 d0 	vmovups ZMMWORD PTR [rsi+0x2d0],zmm18
  a339f9:	02 00 00 
  a339fc:	62 73 7d 48 19 66 33 	vextractf32x4 XMMWORD PTR [rsi+0x330],zmm12,0x3
  a33a03:	03 
  a33a04:	62 63 7d 48 19 fa 03 	vextractf32x4 xmm2,zmm31,0x3
  a33a0b:	c5 f8 13 96 40 03 00 	vmovlps QWORD PTR [rsi+0x340],xmm2
  a33a12:	00 
  a33a13:	c5 fc 11 8e 10 03 00 	vmovups YMMWORD PTR [rsi+0x310],ymm1
  a33a1a:	00 
  a33a1b:	62 f1 7c 48 11 9e 48 	vmovups ZMMWORD PTR [rsi+0x348],zmm3
  a33a22:	03 00 00 
  a33a25:	62 73 7d 48 19 9e a8 	vextractf32x4 XMMWORD PTR [rsi+0x3a8],zmm11,0x3
  a33a2c:	03 00 00 03 
  a33a30:	62 73 7d 48 19 e9 03 	vextractf32x4 xmm1,zmm13,0x3
  a33a37:	c5 f8 13 8e b8 03 00 	vmovlps QWORD PTR [rsi+0x3b8],xmm1
  a33a3e:	00 
  a33a3f:	c5 fc 11 86 88 03 00 	vmovups YMMWORD PTR [rsi+0x388],ymm0
  a33a46:	00 
  a33a47:	48 89 ec             	mov    rsp,rbp
  a33a4a:	5d                   	pop    rbp
  a33a4b:	c5 f8 77             	vzeroupper
  a33a4e:	c3                   	ret
