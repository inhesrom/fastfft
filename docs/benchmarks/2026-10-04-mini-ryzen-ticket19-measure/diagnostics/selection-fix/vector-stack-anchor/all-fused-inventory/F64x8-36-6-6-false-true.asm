
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000965980 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  965980:	62 f1 fd 48 10 05 de 	vmovupd zmm0,ZMMWORD PTR [rip+0xffffffffff7613de]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  965987:	13 76 ff 
  96598a:	62 f1 fd 48 10 0d 14 	vmovupd zmm1,ZMMWORD PTR [rip+0xffffffffff761414]        # c6da8 <crc32fast::table::CRC32_TABLE+0x9124>
  965991:	14 76 ff 
  965994:	62 f1 fd 48 10 15 4a 	vmovupd zmm2,ZMMWORD PTR [rip+0xffffffffff76134a]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  96599b:	13 76 ff 
  96599e:	62 f1 fd 48 10 1d 80 	vmovupd zmm3,ZMMWORD PTR [rip+0xffffffffff761380]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  9659a5:	13 76 ff 
  9659a8:	48 c1 e2 06          	shl    rdx,0x6
  9659ac:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  9659b0:	31 d2                	xor    edx,edx
  9659b2:	62 f1 fd 48 28 25 44 	vmovapd zmm4,ZMMWORD PTR [rip+0xffffffffff720544]        # 85f00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x133b0>
  9659b9:	05 72 ff 
  9659bc:	62 f2 fd 48 19 2d d2 	vbroadcastsd zmm5,QWORD PTR [rip+0xffffffffff70f0d2]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  9659c3:	f0 70 ff 
  9659c6:	62 f2 fd 48 19 35 50 	vbroadcastsd zmm6,QWORD PTR [rip+0xffffffffff70f250]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  9659cd:	f2 70 ff 
  9659d0:	62 f1 fd 48 28 3d 66 	vmovapd zmm7,ZMMWORD PTR [rip+0xffffffffff720566]        # 85f40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x133f0>
  9659d7:	05 72 ff 
  9659da:	c4 41 39 57 c0       	vxorpd xmm8,xmm8,xmm8
  9659df:	c5 7d 28 0d 19 13 71 	vmovapd ymm9,YMMWORD PTR [rip+0xffffffffff711319]        # 76d00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x41b0>
  9659e6:	ff 
  9659e7:	62 71 fd 48 28 15 8f 	vmovapd zmm10,ZMMWORD PTR [rip+0xffffffffff72058f]        # 85f80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x13430>
  9659ee:	05 72 ff 
  9659f1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  9659f8:	0f 1f 84 00 00 00 00 
  9659ff:	00 
  965a00:	62 71 fd 48 10 1c 17 	vmovupd zmm11,ZMMWORD PTR [rdi+rdx*1]
  965a07:	c5 7d 10 6c 17 40    	vmovupd ymm13,YMMWORD PTR [rdi+rdx*1+0x40]
  965a0d:	62 51 fd 48 28 e3    	vmovapd zmm12,zmm11
  965a13:	62 52 dd 48 7f e5    	vpermt2pd zmm12,zmm4,zmm13
  965a19:	62 52 c5 48 7f dd    	vpermt2pd zmm11,zmm7,zmm13
  965a1f:	62 71 fd 48 10 ac 17 	vmovupd zmm13,ZMMWORD PTR [rdi+rdx*1+0x60]
  965a26:	60 00 00 00 
  965a2a:	c5 7d 10 b4 17 a0 00 	vmovupd ymm14,YMMWORD PTR [rdi+rdx*1+0xa0]
  965a31:	00 00 
  965a33:	62 c1 fd 48 28 c5    	vmovapd zmm16,zmm13
  965a39:	62 c2 dd 48 7f c6    	vpermt2pd zmm16,zmm4,zmm14
  965a3f:	62 52 c5 48 7f ee    	vpermt2pd zmm13,zmm7,zmm14
  965a45:	62 71 fd 48 10 7c 17 	vmovupd zmm15,ZMMWORD PTR [rdi+rdx*1+0xc0]
  965a4c:	03 
  965a4d:	c5 7d 10 b4 17 00 01 	vmovupd ymm14,YMMWORD PTR [rdi+rdx*1+0x100]
  965a54:	00 00 
  965a56:	62 c1 fd 48 28 cf    	vmovapd zmm17,zmm15
  965a5c:	62 c2 dd 48 7f ce    	vpermt2pd zmm17,zmm4,zmm14
  965a62:	62 52 c5 48 7f fe    	vpermt2pd zmm15,zmm7,zmm14
  965a68:	62 71 fd 48 10 b4 17 	vmovupd zmm14,ZMMWORD PTR [rdi+rdx*1+0x120]
  965a6f:	20 01 00 00 
  965a73:	62 e1 fd 28 10 54 17 	vmovupd ymm18,YMMWORD PTR [rdi+rdx*1+0x160]
  965a7a:	0b 
  965a7b:	62 c1 fd 48 28 de    	vmovapd zmm19,zmm14
  965a81:	62 a2 dd 48 7f da    	vpermt2pd zmm19,zmm4,zmm18
  965a87:	62 32 c5 48 7f f2    	vpermt2pd zmm14,zmm7,zmm18
  965a8d:	62 e1 fd 48 10 54 17 	vmovupd zmm18,ZMMWORD PTR [rdi+rdx*1+0x180]
  965a94:	06 
  965a95:	62 e1 fd 28 10 64 17 	vmovupd ymm20,YMMWORD PTR [rdi+rdx*1+0x1c0]
  965a9c:	0e 
  965a9d:	62 a1 fd 48 28 ea    	vmovapd zmm21,zmm18
  965aa3:	62 a2 dd 48 7f ec    	vpermt2pd zmm21,zmm4,zmm20
  965aa9:	62 a2 c5 48 7f d4    	vpermt2pd zmm18,zmm7,zmm20
  965aaf:	62 e1 fd 48 10 a4 17 	vmovupd zmm20,ZMMWORD PTR [rdi+rdx*1+0x1e0]
  965ab6:	e0 01 00 00 
  965aba:	62 e1 fd 28 10 74 17 	vmovupd ymm22,YMMWORD PTR [rdi+rdx*1+0x220]
  965ac1:	11 
  965ac2:	62 a1 fd 48 28 fc    	vmovapd zmm23,zmm20
  965ac8:	62 a2 dd 48 7f fe    	vpermt2pd zmm23,zmm4,zmm22
  965ace:	62 a2 c5 48 7f e6    	vpermt2pd zmm20,zmm7,zmm22
  965ad4:	62 a1 f5 40 58 f5    	vaddpd zmm22,zmm17,zmm21
  965ada:	62 21 9d 48 58 c6    	vaddpd zmm24,zmm12,zmm22
  965ae0:	62 21 c5 40 58 c8    	vaddpd zmm25,zmm23,zmm16
  965ae6:	62 32 d5 48 bc e6    	vfnmadd231pd zmm12,zmm5,zmm22
  965aec:	62 a1 85 48 58 f2    	vaddpd zmm22,zmm15,zmm18
  965af2:	62 a1 85 48 5c d2    	vsubpd zmm18,zmm15,zmm18
  965af8:	62 01 e5 40 58 d1    	vaddpd zmm26,zmm19,zmm25
  965afe:	62 82 d5 48 bc d9    	vfnmadd231pd zmm19,zmm5,zmm25
  965b04:	62 41 dd 40 58 cd    	vaddpd zmm25,zmm20,zmm13
  965b0a:	62 c1 dd 40 5c e5    	vsubpd zmm20,zmm20,zmm13
  965b10:	62 21 a5 48 58 de    	vaddpd zmm27,zmm11,zmm22
  965b16:	62 32 d5 48 bc de    	vfnmadd231pd zmm11,zmm5,zmm22
  965b1c:	62 11 bd 40 58 fa    	vaddpd zmm15,zmm24,zmm26
  965b22:	62 a1 f5 40 5c cd    	vsubpd zmm17,zmm17,zmm21
  965b28:	62 81 8d 48 58 e9    	vaddpd zmm21,zmm14,zmm25
  965b2e:	62 12 d5 48 bc f1    	vfnmadd231pd zmm14,zmm5,zmm25
  965b34:	62 31 a5 40 58 ed    	vaddpd zmm13,zmm27,zmm21
  965b3a:	62 e1 ed 40 59 d6    	vmulpd zmm18,zmm18,zmm6
  965b40:	62 a1 c5 40 5c c0    	vsubpd zmm16,zmm23,zmm16
  965b46:	62 a1 9d 48 58 f2    	vaddpd zmm22,zmm12,zmm18
  965b4c:	62 e1 dd 40 59 e6    	vmulpd zmm20,zmm20,zmm6
  965b52:	62 31 9d 48 5c e2    	vsubpd zmm12,zmm12,zmm18
  965b58:	62 a1 e5 40 58 fc    	vaddpd zmm23,zmm19,zmm20
  965b5e:	62 e1 f5 40 59 ce    	vmulpd zmm17,zmm17,zmm6
  965b64:	62 a1 e5 40 5c dc    	vsubpd zmm19,zmm19,zmm20
  965b6a:	62 21 a5 48 5c c9    	vsubpd zmm25,zmm11,zmm17
  965b70:	62 e1 fd 40 59 c6    	vmulpd zmm16,zmm16,zmm6
  965b76:	62 51 f5 40 58 db    	vaddpd zmm11,zmm17,zmm11
  965b7c:	62 a1 8d 48 5c c8    	vsubpd zmm17,zmm14,zmm16
  965b82:	62 51 fd 40 58 f6    	vaddpd zmm14,zmm16,zmm14
  965b88:	62 21 cd 40 5c e7    	vsubpd zmm28,zmm22,zmm23
  965b8e:	62 81 bd 40 5c c2    	vsubpd zmm16,zmm24,zmm26
  965b94:	62 a1 b5 40 5c d1    	vsubpd zmm18,zmm25,zmm17
  965b9a:	62 a1 a5 40 5c e5    	vsubpd zmm20,zmm27,zmm21
  965ba0:	62 a1 9d 48 58 eb    	vaddpd zmm21,zmm12,zmm19
  965ba6:	62 a1 cd 40 58 f7    	vaddpd zmm22,zmm22,zmm23
  965bac:	62 c1 a5 48 58 fe    	vaddpd zmm23,zmm11,zmm14
  965bb2:	62 21 b5 40 58 c1    	vaddpd zmm24,zmm25,zmm17
  965bb8:	62 31 9d 48 5c e3    	vsubpd zmm12,zmm12,zmm19
  965bbe:	62 41 a5 48 5c ce    	vsubpd zmm25,zmm11,zmm14
  965bc4:	62 51 fd 48 28 f7    	vmovapd zmm14,zmm15
  965bca:	62 32 fd 48 7f f6    	vpermt2pd zmm14,zmm0,zmm22
  965bd0:	62 32 f5 48 7f fe    	vpermt2pd zmm15,zmm1,zmm22
  965bd6:	62 81 fd 48 28 cc    	vmovapd zmm17,zmm28
  965bdc:	62 c2 fd 48 7f cc    	vpermt2pd zmm17,zmm0,zmm12
  965be2:	62 42 f5 48 7f e4    	vpermt2pd zmm28,zmm1,zmm12
  965be8:	62 31 fd 48 28 dd    	vmovapd zmm11,zmm21
  965bee:	62 52 fd 48 7f d8    	vpermt2pd zmm11,zmm0,zmm8
  965bf4:	62 c2 f5 48 7f e8    	vpermt2pd zmm21,zmm1,zmm8
  965bfa:	62 31 fd 48 28 e0    	vmovapd zmm12,zmm16
  965c00:	62 52 fd 48 7f e0    	vpermt2pd zmm12,zmm0,zmm8
  965c06:	62 c2 f5 48 7f c0    	vpermt2pd zmm16,zmm1,zmm8
  965c0c:	62 c1 fd 48 28 de    	vmovapd zmm19,zmm14
  965c12:	62 c2 ed 48 7f db    	vpermt2pd zmm19,zmm2,zmm11
  965c18:	62 52 e5 48 7f f3    	vpermt2pd zmm14,zmm3,zmm11
  965c1e:	62 a1 fd 48 28 f1    	vmovapd zmm22,zmm17
  965c24:	62 c2 ed 48 7f f4    	vpermt2pd zmm22,zmm2,zmm12
  965c2a:	62 c2 e5 48 7f cc    	vpermt2pd zmm17,zmm3,zmm12
  965c30:	62 32 ed 48 7f fd    	vpermt2pd zmm15,zmm2,zmm21
  965c36:	62 22 ed 48 7f e0    	vpermt2pd zmm28,zmm2,zmm16
  965c3c:	62 31 e5 40 14 de    	vunpcklpd zmm11,zmm19,zmm22
  965c42:	62 31 e5 40 15 e6    	vunpckhpd zmm12,zmm19,zmm22
  965c48:	62 a1 8d 48 14 d9    	vunpcklpd zmm19,zmm14,zmm17
  965c4e:	62 a1 8d 48 15 c1    	vunpckhpd zmm16,zmm14,zmm17
  965c54:	62 81 85 48 14 cc    	vunpcklpd zmm17,zmm15,zmm28
  965c5a:	62 11 85 48 15 f4    	vunpckhpd zmm14,zmm15,zmm28
  965c60:	62 c1 fd 48 28 ed    	vmovapd zmm21,zmm13
  965c66:	62 82 fd 48 7f e8    	vpermt2pd zmm21,zmm0,zmm24
  965c6c:	62 12 f5 48 7f e8    	vpermt2pd zmm13,zmm1,zmm24
  965c72:	62 a1 fd 48 28 f2    	vmovapd zmm22,zmm18
  965c78:	62 82 fd 48 7f f1    	vpermt2pd zmm22,zmm0,zmm25
  965c7e:	62 82 f5 48 7f d1    	vpermt2pd zmm18,zmm1,zmm25
  965c84:	62 31 fd 48 28 ff    	vmovapd zmm15,zmm23
  965c8a:	62 52 fd 48 7f f8    	vpermt2pd zmm15,zmm0,zmm8
  965c90:	62 c2 f5 48 7f f8    	vpermt2pd zmm23,zmm1,zmm8
  965c96:	62 21 fd 48 28 c4    	vmovapd zmm24,zmm20
  965c9c:	62 42 fd 48 7f c0    	vpermt2pd zmm24,zmm0,zmm8
  965ca2:	62 c2 f5 48 7f e0    	vpermt2pd zmm20,zmm1,zmm8
  965ca8:	62 21 fd 48 28 cd    	vmovapd zmm25,zmm21
  965cae:	62 42 ed 48 7f cf    	vpermt2pd zmm25,zmm2,zmm15
  965cb4:	62 c2 e5 48 7f ef    	vpermt2pd zmm21,zmm3,zmm15
  965cba:	62 21 fd 48 28 d6    	vmovapd zmm26,zmm22
  965cc0:	62 02 ed 48 7f d0    	vpermt2pd zmm26,zmm2,zmm24
  965cc6:	62 82 e5 48 7f f0    	vpermt2pd zmm22,zmm3,zmm24
  965ccc:	62 32 ed 48 7f ef    	vpermt2pd zmm13,zmm2,zmm23
  965cd2:	62 a2 ed 48 7f d4    	vpermt2pd zmm18,zmm2,zmm20
  965cd8:	62 11 b5 40 14 fa    	vunpcklpd zmm15,zmm25,zmm26
  965cde:	62 81 b5 40 15 e2    	vunpckhpd zmm20,zmm25,zmm26
  965ce4:	62 a1 d5 40 14 fe    	vunpcklpd zmm23,zmm21,zmm22
  965cea:	62 a1 d5 40 15 ee    	vunpckhpd zmm21,zmm21,zmm22
  965cf0:	62 a1 95 48 14 f2    	vunpcklpd zmm22,zmm13,zmm18
  965cf6:	62 a1 95 48 15 d2    	vunpckhpd zmm18,zmm13,zmm18
  965cfc:	62 61 fd 48 10 41 04 	vmovupd zmm24,ZMMWORD PTR [rcx+0x100]
  965d03:	62 61 fd 48 10 49 05 	vmovupd zmm25,ZMMWORD PTR [rcx+0x140]
  965d0a:	62 11 e5 40 59 e8    	vmulpd zmm13,zmm19,zmm24
  965d10:	62 12 c5 40 bc e9    	vfnmadd231pd zmm13,zmm23,zmm25
  965d16:	62 81 c5 40 59 f8    	vmulpd zmm23,zmm23,zmm24
  965d1c:	62 61 fd 48 10 41 08 	vmovupd zmm24,ZMMWORD PTR [rcx+0x200]
  965d23:	62 82 e5 40 b8 f9    	vfmadd231pd zmm23,zmm19,zmm25
  965d29:	62 e1 fd 48 10 59 09 	vmovupd zmm19,ZMMWORD PTR [rcx+0x240]
  965d30:	62 01 f5 40 59 c8    	vmulpd zmm25,zmm17,zmm24
  965d36:	62 22 cd 40 bc cb    	vfnmadd231pd zmm25,zmm22,zmm19
  965d3c:	62 81 cd 40 59 f0    	vmulpd zmm22,zmm22,zmm24
  965d42:	62 61 fd 48 10 41 06 	vmovupd zmm24,ZMMWORD PTR [rcx+0x180]
  965d49:	62 a2 f5 40 b8 f3    	vfmadd231pd zmm22,zmm17,zmm19
  965d4f:	62 e1 fd 48 10 49 07 	vmovupd zmm17,ZMMWORD PTR [rcx+0x1c0]
  965d56:	62 81 fd 40 59 d8    	vmulpd zmm19,zmm16,zmm24
  965d5c:	62 a2 d5 40 bc d9    	vfnmadd231pd zmm19,zmm21,zmm17
  965d62:	62 81 d5 40 59 e8    	vmulpd zmm21,zmm21,zmm24
  965d68:	62 61 fd 48 10 41 0a 	vmovupd zmm24,ZMMWORD PTR [rcx+0x280]
  965d6f:	62 a2 fd 40 b8 e9    	vfmadd231pd zmm21,zmm16,zmm17
  965d75:	62 e1 fd 48 10 41 0b 	vmovupd zmm16,ZMMWORD PTR [rcx+0x2c0]
  965d7c:	62 81 8d 48 59 c8    	vmulpd zmm17,zmm14,zmm24
  965d82:	62 a2 ed 40 bc c8    	vfnmadd231pd zmm17,zmm18,zmm16
  965d88:	62 81 ed 40 59 d0    	vmulpd zmm18,zmm18,zmm24
  965d8e:	62 61 fd 48 10 41 02 	vmovupd zmm24,ZMMWORD PTR [rcx+0x80]
  965d95:	62 a2 8d 48 b8 d0    	vfmadd231pd zmm18,zmm14,zmm16
  965d9b:	62 71 fd 48 10 71 03 	vmovupd zmm14,ZMMWORD PTR [rcx+0xc0]
  965da2:	62 81 9d 48 59 c0    	vmulpd zmm16,zmm12,zmm24
  965da8:	62 c2 dd 40 bc c6    	vfnmadd231pd zmm16,zmm20,zmm14
  965dae:	62 81 dd 40 59 e0    	vmulpd zmm20,zmm20,zmm24
  965db4:	62 01 95 48 58 c1    	vaddpd zmm24,zmm13,zmm25
  965dba:	62 c2 9d 48 b8 e6    	vfmadd231pd zmm20,zmm12,zmm14
  965dc0:	62 11 a5 48 58 e0    	vaddpd zmm12,zmm11,zmm24
  965dc6:	62 31 f5 40 58 f0    	vaddpd zmm14,zmm17,zmm16
  965dcc:	62 42 d5 48 ac c3    	vfnmadd213pd zmm24,zmm5,zmm11
  965dd2:	62 31 c5 40 58 de    	vaddpd zmm11,zmm23,zmm22
  965dd8:	62 a1 c5 40 5c f6    	vsubpd zmm22,zmm23,zmm22
  965dde:	62 c1 e5 40 58 fe    	vaddpd zmm23,zmm19,zmm14
  965de4:	62 c2 d5 48 bc de    	vfnmadd231pd zmm19,zmm5,zmm14
  965dea:	62 31 ed 40 58 f4    	vaddpd zmm14,zmm18,zmm20
  965df0:	62 a1 ed 40 5c d4    	vsubpd zmm18,zmm18,zmm20
  965df6:	62 c1 a5 48 58 e7    	vaddpd zmm20,zmm11,zmm15
  965dfc:	62 52 d5 48 ac df    	vfnmadd213pd zmm11,zmm5,zmm15
  965e02:	62 11 95 48 5c e9    	vsubpd zmm13,zmm13,zmm25
  965e08:	62 51 d5 40 58 fe    	vaddpd zmm15,zmm21,zmm14
  965e0e:	62 c2 d5 48 bc ee    	vfnmadd231pd zmm21,zmm5,zmm14
  965e14:	62 71 cd 40 59 f6    	vmulpd zmm14,zmm22,zmm6
  965e1a:	62 a1 f5 40 5c c0    	vsubpd zmm16,zmm17,zmm16
  965e20:	62 c1 bd 40 58 ce    	vaddpd zmm17,zmm24,zmm14
  965e26:	62 e1 ed 40 59 d6    	vmulpd zmm18,zmm18,zmm6
  965e2c:	62 51 bd 40 5c f6    	vsubpd zmm14,zmm24,zmm14
  965e32:	62 a1 e5 40 58 f2    	vaddpd zmm22,zmm19,zmm18
  965e38:	62 71 95 48 59 ee    	vmulpd zmm13,zmm13,zmm6
  965e3e:	62 a1 e5 40 5c d2    	vsubpd zmm18,zmm19,zmm18
  965e44:	62 c1 a5 48 5c dd    	vsubpd zmm19,zmm11,zmm13
  965e4a:	62 e1 fd 40 59 c6    	vmulpd zmm16,zmm16,zmm6
  965e50:	62 51 95 48 58 db    	vaddpd zmm11,zmm13,zmm11
  965e56:	62 31 d5 40 5c e8    	vsubpd zmm13,zmm21,zmm16
  965e5c:	62 a1 d5 40 58 c0    	vaddpd zmm16,zmm21,zmm16
  965e62:	62 a1 f5 40 5c ee    	vsubpd zmm21,zmm17,zmm22
  965e68:	62 a1 f5 40 58 ce    	vaddpd zmm17,zmm17,zmm22
  965e6e:	62 c1 e5 40 5c f5    	vsubpd zmm22,zmm19,zmm13
  965e74:	62 51 e5 40 58 ed    	vaddpd zmm13,zmm19,zmm13
  965e7a:	62 a1 8d 48 58 da    	vaddpd zmm19,zmm14,zmm18
  965e80:	62 31 8d 48 5c f2    	vsubpd zmm14,zmm14,zmm18
  965e86:	62 a1 a5 48 58 d0    	vaddpd zmm18,zmm11,zmm16
  965e8c:	62 31 a5 48 5c d8    	vsubpd zmm11,zmm11,zmm16
  965e92:	62 a1 9d 48 5c c7    	vsubpd zmm16,zmm12,zmm23
  965e98:	62 31 9d 48 58 e7    	vaddpd zmm12,zmm12,zmm23
  965e9e:	62 c1 dd 40 5c ff    	vsubpd zmm23,zmm20,zmm15
  965ea4:	62 51 dd 40 58 ff    	vaddpd zmm15,zmm20,zmm15
  965eaa:	62 c1 fd 48 28 e4    	vmovapd zmm20,zmm12
  965eb0:	62 c2 b5 48 7f e7    	vpermt2pd zmm20,zmm9,zmm15
  965eb6:	62 52 ad 48 7f e7    	vpermt2pd zmm12,zmm10,zmm15
  965ebc:	62 71 fd 48 11 24 16 	vmovupd ZMMWORD PTR [rsi+rdx*1],zmm12
  965ec3:	62 e1 fd 28 11 64 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x40],ymm20
  965eca:	02 
  965ecb:	62 31 fd 48 28 e5    	vmovapd zmm12,zmm21
  965ed1:	62 32 b5 48 7f e6    	vpermt2pd zmm12,zmm9,zmm22
  965ed7:	62 a2 ad 48 7f ee    	vpermt2pd zmm21,zmm10,zmm22
  965edd:	62 e1 fd 48 11 ac 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x60],zmm21
  965ee4:	60 00 00 00 
  965ee8:	c5 7d 11 a4 16 a0 00 	vmovupd YMMWORD PTR [rsi+rdx*1+0xa0],ymm12
  965eef:	00 00 
  965ef1:	62 31 fd 48 28 e3    	vmovapd zmm12,zmm19
  965ef7:	62 32 b5 48 7f e2    	vpermt2pd zmm12,zmm9,zmm18
  965efd:	62 a2 ad 48 7f da    	vpermt2pd zmm19,zmm10,zmm18
  965f03:	62 e1 fd 48 11 5c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0xc0],zmm19
  965f0a:	03 
  965f0b:	c5 7d 11 a4 16 00 01 	vmovupd YMMWORD PTR [rsi+rdx*1+0x100],ymm12
  965f12:	00 00 
  965f14:	62 31 fd 48 28 e0    	vmovapd zmm12,zmm16
  965f1a:	62 32 b5 48 7f e7    	vpermt2pd zmm12,zmm9,zmm23
  965f20:	62 a2 ad 48 7f c7    	vpermt2pd zmm16,zmm10,zmm23
  965f26:	62 e1 fd 48 11 84 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x120],zmm16
  965f2d:	20 01 00 00 
  965f31:	c5 7d 11 a4 16 60 01 	vmovupd YMMWORD PTR [rsi+rdx*1+0x160],ymm12
  965f38:	00 00 
  965f3a:	62 31 fd 48 28 e1    	vmovapd zmm12,zmm17
  965f40:	62 52 b5 48 7f e5    	vpermt2pd zmm12,zmm9,zmm13
  965f46:	62 c2 ad 48 7f cd    	vpermt2pd zmm17,zmm10,zmm13
  965f4c:	62 e1 fd 48 11 4c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x180],zmm17
  965f53:	06 
  965f54:	c5 7d 11 a4 16 c0 01 	vmovupd YMMWORD PTR [rsi+rdx*1+0x1c0],ymm12
  965f5b:	00 00 
  965f5d:	62 51 fd 48 28 e6    	vmovapd zmm12,zmm14
  965f63:	62 52 b5 48 7f e3    	vpermt2pd zmm12,zmm9,zmm11
  965f69:	62 52 ad 48 7f f3    	vpermt2pd zmm14,zmm10,zmm11
  965f6f:	62 71 fd 48 11 b4 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x1e0],zmm14
  965f76:	e0 01 00 00 
  965f7a:	c5 7d 11 a4 16 20 02 	vmovupd YMMWORD PTR [rsi+rdx*1+0x220],ymm12
  965f81:	00 00 
  965f83:	48 81 c2 40 02 00 00 	add    rdx,0x240
  965f8a:	48 39 d0             	cmp    rax,rdx
  965f8d:	0f 85 6d fa ff ff    	jne    965a00 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle+0x80>
  965f93:	c5 f8 77             	vzeroupper
  965f96:	c3                   	ret
