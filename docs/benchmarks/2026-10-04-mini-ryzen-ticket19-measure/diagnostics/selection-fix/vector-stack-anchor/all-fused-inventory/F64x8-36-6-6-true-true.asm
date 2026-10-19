
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000907a40 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  907a40:	62 f1 fd 48 10 05 1e 	vmovupd zmm0,ZMMWORD PTR [rip+0xffffffffff7bf31e]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  907a47:	f3 7b ff 
  907a4a:	62 f1 fd 48 10 0d 54 	vmovupd zmm1,ZMMWORD PTR [rip+0xffffffffff7bf354]        # c6da8 <crc32fast::table::CRC32_TABLE+0x9124>
  907a51:	f3 7b ff 
  907a54:	62 f1 fd 48 10 15 8a 	vmovupd zmm2,ZMMWORD PTR [rip+0xffffffffff7bf28a]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  907a5b:	f2 7b ff 
  907a5e:	62 f1 fd 48 10 1d c0 	vmovupd zmm3,ZMMWORD PTR [rip+0xffffffffff7bf2c0]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  907a65:	f2 7b ff 
  907a68:	48 c1 e2 06          	shl    rdx,0x6
  907a6c:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  907a70:	31 d2                	xor    edx,edx
  907a72:	62 f1 fd 48 28 25 44 	vmovapd zmm4,ZMMWORD PTR [rip+0xffffffffff776f44]        # 7e9c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xbe70>
  907a79:	6f 77 ff 
  907a7c:	62 f2 fd 48 19 2d 12 	vbroadcastsd zmm5,QWORD PTR [rip+0xffffffffff76d012]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  907a83:	d0 76 ff 
  907a86:	62 f2 fd 48 19 35 90 	vbroadcastsd zmm6,QWORD PTR [rip+0xffffffffff76d190]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  907a8d:	d1 76 ff 
  907a90:	62 f1 fd 48 28 3d 66 	vmovapd zmm7,ZMMWORD PTR [rip+0xffffffffff776f66]        # 7ea00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xbeb0>
  907a97:	6f 77 ff 
  907a9a:	c4 41 39 57 c0       	vxorpd xmm8,xmm8,xmm8
  907a9f:	c5 7d 28 0d 59 f2 76 	vmovapd ymm9,YMMWORD PTR [rip+0xffffffffff76f259]        # 76d00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x41b0>
  907aa6:	ff 
  907aa7:	62 71 fd 48 28 15 8f 	vmovapd zmm10,ZMMWORD PTR [rip+0xffffffffff776f8f]        # 7ea40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xbef0>
  907aae:	6f 77 ff 
  907ab1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  907ab8:	0f 1f 84 00 00 00 00 
  907abf:	00 
  907ac0:	62 71 fd 48 10 24 17 	vmovupd zmm12,ZMMWORD PTR [rdi+rdx*1]
  907ac7:	c5 7d 10 6c 17 40    	vmovupd ymm13,YMMWORD PTR [rdi+rdx*1+0x40]
  907acd:	62 51 fd 48 28 dc    	vmovapd zmm11,zmm12
  907ad3:	62 52 dd 48 7f dd    	vpermt2pd zmm11,zmm4,zmm13
  907ad9:	62 52 c5 48 7f e5    	vpermt2pd zmm12,zmm7,zmm13
  907adf:	62 71 fd 48 10 b4 17 	vmovupd zmm14,ZMMWORD PTR [rdi+rdx*1+0x60]
  907ae6:	60 00 00 00 
  907aea:	c5 7d 10 ac 17 a0 00 	vmovupd ymm13,YMMWORD PTR [rdi+rdx*1+0xa0]
  907af1:	00 00 
  907af3:	62 c1 fd 48 28 ce    	vmovapd zmm17,zmm14
  907af9:	62 c2 dd 48 7f cd    	vpermt2pd zmm17,zmm4,zmm13
  907aff:	62 52 c5 48 7f f5    	vpermt2pd zmm14,zmm7,zmm13
  907b05:	62 71 fd 48 10 6c 17 	vmovupd zmm13,ZMMWORD PTR [rdi+rdx*1+0xc0]
  907b0c:	03 
  907b0d:	c5 7d 10 bc 17 00 01 	vmovupd ymm15,YMMWORD PTR [rdi+rdx*1+0x100]
  907b14:	00 00 
  907b16:	62 c1 fd 48 28 d5    	vmovapd zmm18,zmm13
  907b1c:	62 c2 dd 48 7f d7    	vpermt2pd zmm18,zmm4,zmm15
  907b22:	62 52 c5 48 7f ef    	vpermt2pd zmm13,zmm7,zmm15
  907b28:	62 e1 fd 48 10 84 17 	vmovupd zmm16,ZMMWORD PTR [rdi+rdx*1+0x120]
  907b2f:	20 01 00 00 
  907b33:	62 e1 fd 28 10 5c 17 	vmovupd ymm19,YMMWORD PTR [rdi+rdx*1+0x160]
  907b3a:	0b 
  907b3b:	62 31 fd 48 28 f8    	vmovapd zmm15,zmm16
  907b41:	62 32 dd 48 7f fb    	vpermt2pd zmm15,zmm4,zmm19
  907b47:	62 a2 c5 48 7f c3    	vpermt2pd zmm16,zmm7,zmm19
  907b4d:	62 e1 fd 48 10 5c 17 	vmovupd zmm19,ZMMWORD PTR [rdi+rdx*1+0x180]
  907b54:	06 
  907b55:	62 e1 fd 28 10 64 17 	vmovupd ymm20,YMMWORD PTR [rdi+rdx*1+0x1c0]
  907b5c:	0e 
  907b5d:	62 a1 fd 48 28 eb    	vmovapd zmm21,zmm19
  907b63:	62 a2 dd 48 7f ec    	vpermt2pd zmm21,zmm4,zmm20
  907b69:	62 a2 c5 48 7f dc    	vpermt2pd zmm19,zmm7,zmm20
  907b6f:	62 e1 fd 48 10 b4 17 	vmovupd zmm22,ZMMWORD PTR [rdi+rdx*1+0x1e0]
  907b76:	e0 01 00 00 
  907b7a:	62 e1 fd 28 10 64 17 	vmovupd ymm20,YMMWORD PTR [rdi+rdx*1+0x220]
  907b81:	11 
  907b82:	62 a1 fd 48 28 fe    	vmovapd zmm23,zmm22
  907b88:	62 a2 dd 48 7f fc    	vpermt2pd zmm23,zmm4,zmm20
  907b8e:	62 a2 c5 48 7f f4    	vpermt2pd zmm22,zmm7,zmm20
  907b94:	62 a1 95 48 58 e3    	vaddpd zmm20,zmm13,zmm19
  907b9a:	62 21 9d 48 58 c4    	vaddpd zmm24,zmm12,zmm20
  907ba0:	62 41 cd 40 58 ce    	vaddpd zmm25,zmm22,zmm14
  907ba6:	62 32 d5 48 bc e4    	vfnmadd231pd zmm12,zmm5,zmm20
  907bac:	62 a1 ed 40 58 e5    	vaddpd zmm20,zmm18,zmm21
  907bb2:	62 a1 ed 40 5c d5    	vsubpd zmm18,zmm18,zmm21
  907bb8:	62 81 fd 40 58 e9    	vaddpd zmm21,zmm16,zmm25
  907bbe:	62 82 d5 48 bc c1    	vfnmadd231pd zmm16,zmm5,zmm25
  907bc4:	62 21 c5 40 58 c9    	vaddpd zmm25,zmm23,zmm17
  907bca:	62 a1 c5 40 5c c9    	vsubpd zmm17,zmm23,zmm17
  907bd0:	62 a1 a5 48 58 fc    	vaddpd zmm23,zmm11,zmm20
  907bd6:	62 32 d5 48 bc dc    	vfnmadd231pd zmm11,zmm5,zmm20
  907bdc:	62 a1 bd 40 58 e5    	vaddpd zmm20,zmm24,zmm21
  907be2:	62 a1 95 48 5c db    	vsubpd zmm19,zmm13,zmm19
  907be8:	62 01 85 48 58 d1    	vaddpd zmm26,zmm15,zmm25
  907bee:	62 12 d5 48 bc f9    	vfnmadd231pd zmm15,zmm5,zmm25
  907bf4:	62 11 c5 40 58 ea    	vaddpd zmm13,zmm23,zmm26
  907bfa:	62 e1 ed 40 59 d6    	vmulpd zmm18,zmm18,zmm6
  907c00:	62 51 cd 40 5c f6    	vsubpd zmm14,zmm22,zmm14
  907c06:	62 a1 9d 48 58 f2    	vaddpd zmm22,zmm12,zmm18
  907c0c:	62 e1 f5 40 59 ce    	vmulpd zmm17,zmm17,zmm6
  907c12:	62 31 9d 48 5c e2    	vsubpd zmm12,zmm12,zmm18
  907c18:	62 21 fd 40 58 c9    	vaddpd zmm25,zmm16,zmm17
  907c1e:	62 e1 e5 40 59 d6    	vmulpd zmm18,zmm19,zmm6
  907c24:	62 a1 fd 40 5c c1    	vsubpd zmm16,zmm16,zmm17
  907c2a:	62 a1 a5 48 5c ca    	vsubpd zmm17,zmm11,zmm18
  907c30:	62 71 8d 48 59 f6    	vmulpd zmm14,zmm14,zmm6
  907c36:	62 51 ed 40 58 db    	vaddpd zmm11,zmm18,zmm11
  907c3c:	62 c1 85 48 5c de    	vsubpd zmm19,zmm15,zmm14
  907c42:	62 51 8d 48 58 f7    	vaddpd zmm14,zmm14,zmm15
  907c48:	62 01 cd 40 5c d9    	vsubpd zmm27,zmm22,zmm25
  907c4e:	62 a1 bd 40 5c ed    	vsubpd zmm21,zmm24,zmm21
  907c54:	62 a1 f5 40 5c d3    	vsubpd zmm18,zmm17,zmm19
  907c5a:	62 11 c5 40 5c fa    	vsubpd zmm15,zmm23,zmm26
  907c60:	62 a1 9d 48 58 f8    	vaddpd zmm23,zmm12,zmm16
  907c66:	62 81 cd 40 58 f1    	vaddpd zmm22,zmm22,zmm25
  907c6c:	62 41 a5 48 58 c6    	vaddpd zmm24,zmm11,zmm14
  907c72:	62 21 f5 40 58 cb    	vaddpd zmm25,zmm17,zmm19
  907c78:	62 31 9d 48 5c e0    	vsubpd zmm12,zmm12,zmm16
  907c7e:	62 41 a5 48 5c d6    	vsubpd zmm26,zmm11,zmm14
  907c84:	62 31 fd 48 28 f4    	vmovapd zmm14,zmm20
  907c8a:	62 32 fd 48 7f f6    	vpermt2pd zmm14,zmm0,zmm22
  907c90:	62 a2 f5 48 7f e6    	vpermt2pd zmm20,zmm1,zmm22
  907c96:	62 81 fd 48 28 c3    	vmovapd zmm16,zmm27
  907c9c:	62 c2 fd 48 7f c4    	vpermt2pd zmm16,zmm0,zmm12
  907ca2:	62 42 f5 48 7f dc    	vpermt2pd zmm27,zmm1,zmm12
  907ca8:	62 31 fd 48 28 df    	vmovapd zmm11,zmm23
  907cae:	62 52 fd 48 7f d8    	vpermt2pd zmm11,zmm0,zmm8
  907cb4:	62 c2 f5 48 7f f8    	vpermt2pd zmm23,zmm1,zmm8
  907cba:	62 31 fd 48 28 e5    	vmovapd zmm12,zmm21
  907cc0:	62 52 fd 48 7f e0    	vpermt2pd zmm12,zmm0,zmm8
  907cc6:	62 c2 f5 48 7f e8    	vpermt2pd zmm21,zmm1,zmm8
  907ccc:	62 c1 fd 48 28 ce    	vmovapd zmm17,zmm14
  907cd2:	62 c2 ed 48 7f cb    	vpermt2pd zmm17,zmm2,zmm11
  907cd8:	62 52 e5 48 7f f3    	vpermt2pd zmm14,zmm3,zmm11
  907cde:	62 a1 fd 48 28 d8    	vmovapd zmm19,zmm16
  907ce4:	62 c2 ed 48 7f dc    	vpermt2pd zmm19,zmm2,zmm12
  907cea:	62 c2 e5 48 7f c4    	vpermt2pd zmm16,zmm3,zmm12
  907cf0:	62 a2 ed 48 7f e7    	vpermt2pd zmm20,zmm2,zmm23
  907cf6:	62 22 ed 48 7f dd    	vpermt2pd zmm27,zmm2,zmm21
  907cfc:	62 31 f5 40 14 db    	vunpcklpd zmm11,zmm17,zmm19
  907d02:	62 31 f5 40 15 e3    	vunpckhpd zmm12,zmm17,zmm19
  907d08:	62 a1 8d 48 14 d8    	vunpcklpd zmm19,zmm14,zmm16
  907d0e:	62 a1 8d 48 15 c0    	vunpckhpd zmm16,zmm14,zmm16
  907d14:	62 81 dd 40 14 cb    	vunpcklpd zmm17,zmm20,zmm27
  907d1a:	62 11 dd 40 15 f3    	vunpckhpd zmm14,zmm20,zmm27
  907d20:	62 c1 fd 48 28 e5    	vmovapd zmm20,zmm13
  907d26:	62 82 fd 48 7f e1    	vpermt2pd zmm20,zmm0,zmm25
  907d2c:	62 12 f5 48 7f e9    	vpermt2pd zmm13,zmm1,zmm25
  907d32:	62 a1 fd 48 28 ea    	vmovapd zmm21,zmm18
  907d38:	62 82 fd 48 7f ea    	vpermt2pd zmm21,zmm0,zmm26
  907d3e:	62 82 f5 48 7f d2    	vpermt2pd zmm18,zmm1,zmm26
  907d44:	62 81 fd 48 28 f0    	vmovapd zmm22,zmm24
  907d4a:	62 c2 fd 48 7f f0    	vpermt2pd zmm22,zmm0,zmm8
  907d50:	62 42 f5 48 7f c0    	vpermt2pd zmm24,zmm1,zmm8
  907d56:	62 c1 fd 48 28 ff    	vmovapd zmm23,zmm15
  907d5c:	62 c2 fd 48 7f f8    	vpermt2pd zmm23,zmm0,zmm8
  907d62:	62 52 f5 48 7f f8    	vpermt2pd zmm15,zmm1,zmm8
  907d68:	62 21 fd 48 28 cc    	vmovapd zmm25,zmm20
  907d6e:	62 22 ed 48 7f ce    	vpermt2pd zmm25,zmm2,zmm22
  907d74:	62 a2 e5 48 7f e6    	vpermt2pd zmm20,zmm3,zmm22
  907d7a:	62 a1 fd 48 28 f5    	vmovapd zmm22,zmm21
  907d80:	62 a2 ed 48 7f f7    	vpermt2pd zmm22,zmm2,zmm23
  907d86:	62 a2 e5 48 7f ef    	vpermt2pd zmm21,zmm3,zmm23
  907d8c:	62 12 ed 48 7f e8    	vpermt2pd zmm13,zmm2,zmm24
  907d92:	62 c2 ed 48 7f d7    	vpermt2pd zmm18,zmm2,zmm15
  907d98:	62 31 b5 40 14 fe    	vunpcklpd zmm15,zmm25,zmm22
  907d9e:	62 a1 b5 40 15 f6    	vunpckhpd zmm22,zmm25,zmm22
  907da4:	62 a1 dd 40 14 fd    	vunpcklpd zmm23,zmm20,zmm21
  907daa:	62 a1 dd 40 15 e5    	vunpckhpd zmm20,zmm20,zmm21
  907db0:	62 a1 95 48 14 ea    	vunpcklpd zmm21,zmm13,zmm18
  907db6:	62 a1 95 48 15 d2    	vunpckhpd zmm18,zmm13,zmm18
  907dbc:	62 61 fd 48 10 41 04 	vmovupd zmm24,ZMMWORD PTR [rcx+0x100]
  907dc3:	62 61 fd 48 10 49 05 	vmovupd zmm25,ZMMWORD PTR [rcx+0x140]
  907dca:	62 11 e5 40 59 e8    	vmulpd zmm13,zmm19,zmm24
  907dd0:	62 12 c5 40 bc e9    	vfnmadd231pd zmm13,zmm23,zmm25
  907dd6:	62 81 c5 40 59 f8    	vmulpd zmm23,zmm23,zmm24
  907ddc:	62 61 fd 48 10 41 08 	vmovupd zmm24,ZMMWORD PTR [rcx+0x200]
  907de3:	62 82 e5 40 b8 f9    	vfmadd231pd zmm23,zmm19,zmm25
  907de9:	62 e1 fd 48 10 59 09 	vmovupd zmm19,ZMMWORD PTR [rcx+0x240]
  907df0:	62 01 f5 40 59 c8    	vmulpd zmm25,zmm17,zmm24
  907df6:	62 22 d5 40 bc cb    	vfnmadd231pd zmm25,zmm21,zmm19
  907dfc:	62 81 d5 40 59 e8    	vmulpd zmm21,zmm21,zmm24
  907e02:	62 61 fd 48 10 41 06 	vmovupd zmm24,ZMMWORD PTR [rcx+0x180]
  907e09:	62 a2 f5 40 b8 eb    	vfmadd231pd zmm21,zmm17,zmm19
  907e0f:	62 e1 fd 48 10 49 07 	vmovupd zmm17,ZMMWORD PTR [rcx+0x1c0]
  907e16:	62 81 fd 40 59 d8    	vmulpd zmm19,zmm16,zmm24
  907e1c:	62 a2 dd 40 bc d9    	vfnmadd231pd zmm19,zmm20,zmm17
  907e22:	62 81 dd 40 59 e0    	vmulpd zmm20,zmm20,zmm24
  907e28:	62 61 fd 48 10 41 0a 	vmovupd zmm24,ZMMWORD PTR [rcx+0x280]
  907e2f:	62 a2 fd 40 b8 e1    	vfmadd231pd zmm20,zmm16,zmm17
  907e35:	62 e1 fd 48 10 41 0b 	vmovupd zmm16,ZMMWORD PTR [rcx+0x2c0]
  907e3c:	62 81 8d 48 59 c8    	vmulpd zmm17,zmm14,zmm24
  907e42:	62 a2 ed 40 bc c8    	vfnmadd231pd zmm17,zmm18,zmm16
  907e48:	62 81 ed 40 59 d0    	vmulpd zmm18,zmm18,zmm24
  907e4e:	62 61 fd 48 10 41 02 	vmovupd zmm24,ZMMWORD PTR [rcx+0x80]
  907e55:	62 a2 8d 48 b8 d0    	vfmadd231pd zmm18,zmm14,zmm16
  907e5b:	62 71 fd 48 10 71 03 	vmovupd zmm14,ZMMWORD PTR [rcx+0xc0]
  907e62:	62 81 9d 48 59 c0    	vmulpd zmm16,zmm12,zmm24
  907e68:	62 c2 cd 40 bc c6    	vfnmadd231pd zmm16,zmm22,zmm14
  907e6e:	62 81 cd 40 59 f0    	vmulpd zmm22,zmm22,zmm24
  907e74:	62 01 95 48 58 c1    	vaddpd zmm24,zmm13,zmm25
  907e7a:	62 c2 9d 48 b8 f6    	vfmadd231pd zmm22,zmm12,zmm14
  907e80:	62 11 a5 48 58 e0    	vaddpd zmm12,zmm11,zmm24
  907e86:	62 31 f5 40 58 f0    	vaddpd zmm14,zmm17,zmm16
  907e8c:	62 42 d5 48 ac c3    	vfnmadd213pd zmm24,zmm5,zmm11
  907e92:	62 31 c5 40 58 dd    	vaddpd zmm11,zmm23,zmm21
  907e98:	62 a1 c5 40 5c ed    	vsubpd zmm21,zmm23,zmm21
  907e9e:	62 c1 e5 40 58 fe    	vaddpd zmm23,zmm19,zmm14
  907ea4:	62 c2 d5 48 bc de    	vfnmadd231pd zmm19,zmm5,zmm14
  907eaa:	62 31 ed 40 58 f6    	vaddpd zmm14,zmm18,zmm22
  907eb0:	62 a1 ed 40 5c d6    	vsubpd zmm18,zmm18,zmm22
  907eb6:	62 c1 a5 48 58 f7    	vaddpd zmm22,zmm11,zmm15
  907ebc:	62 52 d5 48 ac df    	vfnmadd213pd zmm11,zmm5,zmm15
  907ec2:	62 11 95 48 5c e9    	vsubpd zmm13,zmm13,zmm25
  907ec8:	62 51 dd 40 58 fe    	vaddpd zmm15,zmm20,zmm14
  907ece:	62 c2 d5 48 bc e6    	vfnmadd231pd zmm20,zmm5,zmm14
  907ed4:	62 71 d5 40 59 f6    	vmulpd zmm14,zmm21,zmm6
  907eda:	62 a1 f5 40 5c c0    	vsubpd zmm16,zmm17,zmm16
  907ee0:	62 c1 bd 40 58 ce    	vaddpd zmm17,zmm24,zmm14
  907ee6:	62 e1 ed 40 59 d6    	vmulpd zmm18,zmm18,zmm6
  907eec:	62 51 bd 40 5c f6    	vsubpd zmm14,zmm24,zmm14
  907ef2:	62 a1 e5 40 58 ea    	vaddpd zmm21,zmm19,zmm18
  907ef8:	62 71 95 48 59 ee    	vmulpd zmm13,zmm13,zmm6
  907efe:	62 a1 e5 40 5c d2    	vsubpd zmm18,zmm19,zmm18
  907f04:	62 c1 a5 48 5c dd    	vsubpd zmm19,zmm11,zmm13
  907f0a:	62 e1 fd 40 59 c6    	vmulpd zmm16,zmm16,zmm6
  907f10:	62 51 95 48 58 db    	vaddpd zmm11,zmm13,zmm11
  907f16:	62 31 dd 40 5c e8    	vsubpd zmm13,zmm20,zmm16
  907f1c:	62 a1 dd 40 58 c0    	vaddpd zmm16,zmm20,zmm16
  907f22:	62 a1 f5 40 5c e5    	vsubpd zmm20,zmm17,zmm21
  907f28:	62 a1 f5 40 58 cd    	vaddpd zmm17,zmm17,zmm21
  907f2e:	62 c1 e5 40 5c ed    	vsubpd zmm21,zmm19,zmm13
  907f34:	62 51 e5 40 58 ed    	vaddpd zmm13,zmm19,zmm13
  907f3a:	62 a1 8d 48 58 da    	vaddpd zmm19,zmm14,zmm18
  907f40:	62 31 8d 48 5c f2    	vsubpd zmm14,zmm14,zmm18
  907f46:	62 a1 a5 48 58 d0    	vaddpd zmm18,zmm11,zmm16
  907f4c:	62 31 a5 48 5c d8    	vsubpd zmm11,zmm11,zmm16
  907f52:	62 c1 cd 40 5c c7    	vsubpd zmm16,zmm22,zmm15
  907f58:	62 51 cd 40 58 ff    	vaddpd zmm15,zmm22,zmm15
  907f5e:	62 a1 9d 48 5c f7    	vsubpd zmm22,zmm12,zmm23
  907f64:	62 31 9d 48 58 e7    	vaddpd zmm12,zmm12,zmm23
  907f6a:	62 c1 fd 48 28 ff    	vmovapd zmm23,zmm15
  907f70:	62 c2 b5 48 7f fc    	vpermt2pd zmm23,zmm9,zmm12
  907f76:	62 52 ad 48 7f fc    	vpermt2pd zmm15,zmm10,zmm12
  907f7c:	62 71 fd 48 11 3c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1],zmm15
  907f83:	62 e1 fd 28 11 7c 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x40],ymm23
  907f8a:	02 
  907f8b:	62 31 fd 48 28 e5    	vmovapd zmm12,zmm21
  907f91:	62 32 b5 48 7f e4    	vpermt2pd zmm12,zmm9,zmm20
  907f97:	62 a2 ad 48 7f ec    	vpermt2pd zmm21,zmm10,zmm20
  907f9d:	62 e1 fd 48 11 ac 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x60],zmm21
  907fa4:	60 00 00 00 
  907fa8:	c5 7d 11 a4 16 a0 00 	vmovupd YMMWORD PTR [rsi+rdx*1+0xa0],ymm12
  907faf:	00 00 
  907fb1:	62 31 fd 48 28 e2    	vmovapd zmm12,zmm18
  907fb7:	62 32 b5 48 7f e3    	vpermt2pd zmm12,zmm9,zmm19
  907fbd:	62 a2 ad 48 7f d3    	vpermt2pd zmm18,zmm10,zmm19
  907fc3:	62 e1 fd 48 11 54 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0xc0],zmm18
  907fca:	03 
  907fcb:	c5 7d 11 a4 16 00 01 	vmovupd YMMWORD PTR [rsi+rdx*1+0x100],ymm12
  907fd2:	00 00 
  907fd4:	62 31 fd 48 28 e0    	vmovapd zmm12,zmm16
  907fda:	62 32 b5 48 7f e6    	vpermt2pd zmm12,zmm9,zmm22
  907fe0:	62 a2 ad 48 7f c6    	vpermt2pd zmm16,zmm10,zmm22
  907fe6:	62 e1 fd 48 11 84 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x120],zmm16
  907fed:	20 01 00 00 
  907ff1:	c5 7d 11 a4 16 60 01 	vmovupd YMMWORD PTR [rsi+rdx*1+0x160],ymm12
  907ff8:	00 00 
  907ffa:	62 51 fd 48 28 e5    	vmovapd zmm12,zmm13
  908000:	62 32 b5 48 7f e1    	vpermt2pd zmm12,zmm9,zmm17
  908006:	62 32 ad 48 7f e9    	vpermt2pd zmm13,zmm10,zmm17
  90800c:	62 71 fd 48 11 6c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x180],zmm13
  908013:	06 
  908014:	c5 7d 11 a4 16 c0 01 	vmovupd YMMWORD PTR [rsi+rdx*1+0x1c0],ymm12
  90801b:	00 00 
  90801d:	62 51 fd 48 28 e3    	vmovapd zmm12,zmm11
  908023:	62 52 b5 48 7f e6    	vpermt2pd zmm12,zmm9,zmm14
  908029:	62 52 ad 48 7f de    	vpermt2pd zmm11,zmm10,zmm14
  90802f:	62 71 fd 48 11 9c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x1e0],zmm11
  908036:	e0 01 00 00 
  90803a:	c5 7d 11 a4 16 20 02 	vmovupd YMMWORD PTR [rsi+rdx*1+0x220],ymm12
  908041:	00 00 
  908043:	48 81 c2 40 02 00 00 	add    rdx,0x240
  90804a:	48 39 d0             	cmp    rax,rdx
  90804d:	0f 85 6d fa ff ff    	jne    907ac0 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle+0x80>
  908053:	c5 f8 77             	vzeroupper
  908056:	c3                   	ret
