
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000939d00 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  939d00:	62 f1 fd 48 10 05 5e 	vmovupd zmm0,ZMMWORD PTR [rip+0xffffffffff78d05e]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  939d07:	d0 78 ff 
  939d0a:	c5 f1 57 c9          	vxorpd xmm1,xmm1,xmm1
  939d0e:	c5 e9 57 d2          	vxorpd xmm2,xmm2,xmm2
  939d12:	62 f2 fd 48 7f d2    	vpermt2pd zmm2,zmm0,zmm2
  939d18:	62 f1 fd 48 10 1d c6 	vmovupd zmm3,ZMMWORD PTR [rip+0xffffffffff78cfc6]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  939d1f:	cf 78 ff 
  939d22:	62 f1 fd 48 10 25 fc 	vmovupd zmm4,ZMMWORD PTR [rip+0xffffffffff78cffc]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  939d29:	cf 78 ff 
  939d2c:	48 c1 e2 06          	shl    rdx,0x6
  939d30:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  939d34:	31 d2                	xor    edx,edx
  939d36:	62 f1 fd 48 28 2d 40 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff748d40]        # 82a80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xff30>
  939d3d:	8d 74 ff 
  939d40:	62 f2 fd 48 19 35 4e 	vbroadcastsd zmm6,QWORD PTR [rip+0xffffffffff73ad4e]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  939d47:	ad 73 ff 
  939d4a:	62 f1 fd 48 28 3d 6c 	vmovapd zmm7,ZMMWORD PTR [rip+0xffffffffff748d6c]        # 82ac0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xff70>
  939d51:	8d 74 ff 
  939d54:	62 72 fd 48 19 05 c2 	vbroadcastsd zmm8,QWORD PTR [rip+0xffffffffff73aec2]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  939d5b:	ae 73 ff 
  939d5e:	62 71 fd 48 28 0d 98 	vmovapd zmm9,ZMMWORD PTR [rip+0xffffffffff748d98]        # 82b00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xffb0>
  939d65:	8d 74 ff 
  939d68:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  939d6f:	00 
  939d70:	62 71 fd 48 10 14 17 	vmovupd zmm10,ZMMWORD PTR [rdi+rdx*1]
  939d77:	62 71 fd 48 10 5c 17 	vmovupd zmm11,ZMMWORD PTR [rdi+rdx*1+0x40]
  939d7e:	01 
  939d7f:	62 71 fd 48 10 64 17 	vmovupd zmm12,ZMMWORD PTR [rdi+rdx*1+0x80]
  939d86:	02 
  939d87:	62 51 fd 48 28 ea    	vmovapd zmm13,zmm10
  939d8d:	62 72 d5 48 7f e9    	vpermt2pd zmm13,zmm5,zmm1
  939d93:	62 72 c5 48 7f d1    	vpermt2pd zmm10,zmm7,zmm1
  939d99:	62 51 fd 48 28 f3    	vmovapd zmm14,zmm11
  939d9f:	62 72 d5 48 7f f1    	vpermt2pd zmm14,zmm5,zmm1
  939da5:	62 72 c5 48 7f d9    	vpermt2pd zmm11,zmm7,zmm1
  939dab:	62 51 fd 48 28 fc    	vmovapd zmm15,zmm12
  939db1:	62 72 d5 48 7f f9    	vpermt2pd zmm15,zmm5,zmm1
  939db7:	62 72 c5 48 7f e1    	vpermt2pd zmm12,zmm7,zmm1
  939dbd:	62 c1 8d 48 58 c7    	vaddpd zmm16,zmm14,zmm15
  939dc3:	62 a1 95 48 58 c8    	vaddpd zmm17,zmm13,zmm16
  939dc9:	62 c1 a5 48 58 d4    	vaddpd zmm18,zmm11,zmm12
  939dcf:	62 a1 ad 48 58 da    	vaddpd zmm19,zmm10,zmm18
  939dd5:	62 32 cd 48 bc e8    	vfnmadd231pd zmm13,zmm6,zmm16
  939ddb:	62 51 a5 48 5c dc    	vsubpd zmm11,zmm11,zmm12
  939de1:	62 51 a5 48 59 d8    	vmulpd zmm11,zmm11,zmm8
  939de7:	62 51 95 48 58 e3    	vaddpd zmm12,zmm13,zmm11
  939ded:	62 32 cd 48 bc d2    	vfnmadd231pd zmm10,zmm6,zmm18
  939df3:	62 51 8d 48 5c f7    	vsubpd zmm14,zmm14,zmm15
  939df9:	62 51 8d 48 59 f0    	vmulpd zmm14,zmm14,zmm8
  939dff:	62 51 ad 48 5c fe    	vsubpd zmm15,zmm10,zmm14
  939e05:	62 51 95 48 5c db    	vsubpd zmm11,zmm13,zmm11
  939e0b:	62 51 8d 48 58 d2    	vaddpd zmm10,zmm14,zmm10
  939e11:	62 e2 fd 48 7f c9    	vpermt2pd zmm17,zmm0,zmm1
  939e17:	62 72 fd 48 7f e1    	vpermt2pd zmm12,zmm0,zmm1
  939e1d:	62 72 fd 48 7f d9    	vpermt2pd zmm11,zmm0,zmm1
  939e23:	62 31 fd 48 28 e9    	vmovapd zmm13,zmm17
  939e29:	62 52 e5 48 7f eb    	vpermt2pd zmm13,zmm3,zmm11
  939e2f:	62 c2 dd 48 7f cb    	vpermt2pd zmm17,zmm4,zmm11
  939e35:	62 51 fd 48 28 dc    	vmovapd zmm11,zmm12
  939e3b:	62 72 e5 48 7f da    	vpermt2pd zmm11,zmm3,zmm2
  939e41:	62 72 dd 48 7f e2    	vpermt2pd zmm12,zmm4,zmm2
  939e47:	62 51 95 48 14 f3    	vunpcklpd zmm14,zmm13,zmm11
  939e4d:	62 51 95 48 15 db    	vunpckhpd zmm11,zmm13,zmm11
  939e53:	62 51 f5 40 14 ec    	vunpcklpd zmm13,zmm17,zmm12
  939e59:	62 51 f5 40 15 e4    	vunpckhpd zmm12,zmm17,zmm12
  939e5f:	62 e2 fd 48 7f d9    	vpermt2pd zmm19,zmm0,zmm1
  939e65:	62 72 fd 48 7f f9    	vpermt2pd zmm15,zmm0,zmm1
  939e6b:	62 72 fd 48 7f d1    	vpermt2pd zmm10,zmm0,zmm1
  939e71:	62 a1 fd 48 28 c3    	vmovapd zmm16,zmm19
  939e77:	62 c2 e5 48 7f c2    	vpermt2pd zmm16,zmm3,zmm10
  939e7d:	62 c2 dd 48 7f da    	vpermt2pd zmm19,zmm4,zmm10
  939e83:	62 51 fd 48 28 d7    	vmovapd zmm10,zmm15
  939e89:	62 72 e5 48 7f d2    	vpermt2pd zmm10,zmm3,zmm2
  939e8f:	62 72 dd 48 7f fa    	vpermt2pd zmm15,zmm4,zmm2
  939e95:	62 c1 fd 40 14 ca    	vunpcklpd zmm17,zmm16,zmm10
  939e9b:	62 51 fd 40 15 d2    	vunpckhpd zmm10,zmm16,zmm10
  939ea1:	62 c1 e5 40 14 c7    	vunpcklpd zmm16,zmm19,zmm15
  939ea7:	62 51 e5 40 15 ff    	vunpckhpd zmm15,zmm19,zmm15
  939ead:	62 e1 fd 48 10 51 02 	vmovupd zmm18,ZMMWORD PTR [rcx+0x80]
  939eb4:	62 e1 fd 48 10 59 03 	vmovupd zmm19,ZMMWORD PTR [rcx+0xc0]
  939ebb:	62 e1 fd 48 10 61 04 	vmovupd zmm20,ZMMWORD PTR [rcx+0x100]
  939ec2:	62 e1 fd 48 10 69 05 	vmovupd zmm21,ZMMWORD PTR [rcx+0x140]
  939ec9:	62 e1 fd 48 10 71 06 	vmovupd zmm22,ZMMWORD PTR [rcx+0x180]
  939ed0:	62 e1 fd 48 10 79 07 	vmovupd zmm23,ZMMWORD PTR [rcx+0x1c0]
  939ed7:	62 21 95 48 59 c4    	vmulpd zmm24,zmm13,zmm20
  939edd:	62 22 fd 40 bc c5    	vfnmadd231pd zmm24,zmm16,zmm21
  939ee3:	62 01 8d 48 58 c8    	vaddpd zmm25,zmm14,zmm24
  939ee9:	62 21 a5 48 59 d2    	vmulpd zmm26,zmm11,zmm18
  939eef:	62 22 ad 48 bc d3    	vfnmadd231pd zmm26,zmm10,zmm19
  939ef5:	62 21 9d 48 59 de    	vmulpd zmm27,zmm12,zmm22
  939efb:	62 22 85 48 bc df    	vfnmadd231pd zmm27,zmm15,zmm23
  939f01:	62 01 ad 40 58 e3    	vaddpd zmm28,zmm26,zmm27
  939f07:	62 a1 fd 40 59 c4    	vmulpd zmm16,zmm16,zmm20
  939f0d:	62 a2 95 48 b8 c5    	vfmadd231pd zmm16,zmm13,zmm21
  939f13:	62 31 fd 40 58 e9    	vaddpd zmm13,zmm16,zmm17
  939f19:	62 31 ad 48 59 d2    	vmulpd zmm10,zmm10,zmm18
  939f1f:	62 32 a5 48 b8 d3    	vfmadd231pd zmm10,zmm11,zmm19
  939f25:	62 31 85 48 59 de    	vmulpd zmm11,zmm15,zmm22
  939f2b:	62 32 9d 48 b8 df    	vfmadd231pd zmm11,zmm12,zmm23
  939f31:	62 51 ad 48 58 e3    	vaddpd zmm12,zmm10,zmm11
  939f37:	62 11 8d 48 5c f0    	vsubpd zmm14,zmm14,zmm24
  939f3d:	62 51 ad 48 5c d3    	vsubpd zmm10,zmm10,zmm11
  939f43:	62 51 8d 48 58 da    	vaddpd zmm11,zmm14,zmm10
  939f49:	62 31 f5 40 5c f8    	vsubpd zmm15,zmm17,zmm16
  939f4f:	62 81 a5 40 5c c2    	vsubpd zmm16,zmm27,zmm26
  939f55:	62 a1 85 48 58 c8    	vaddpd zmm17,zmm15,zmm16
  939f5b:	62 81 b5 40 5c d4    	vsubpd zmm18,zmm25,zmm28
  939f61:	62 c1 95 48 5c dc    	vsubpd zmm19,zmm13,zmm12
  939f67:	62 51 8d 48 5c d2    	vsubpd zmm10,zmm14,zmm10
  939f6d:	62 31 85 48 5c f0    	vsubpd zmm14,zmm15,zmm16
  939f73:	62 11 b5 40 58 fc    	vaddpd zmm15,zmm25,zmm28
  939f79:	62 51 95 48 58 e4    	vaddpd zmm12,zmm13,zmm12
  939f7f:	62 52 b5 48 7f fc    	vpermt2pd zmm15,zmm9,zmm12
  939f85:	62 73 7d 48 19 7c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x20],zmm15,0x2
  939f8c:	02 02 
  939f8e:	c5 7d 11 3c 16       	vmovupd YMMWORD PTR [rsi+rdx*1],ymm15
  939f93:	62 32 b5 48 7f d9    	vpermt2pd zmm11,zmm9,zmm17
  939f99:	62 73 7d 48 19 5c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x50],zmm11,0x2
  939fa0:	05 02 
  939fa2:	c5 7d 11 5c 16 30    	vmovupd YMMWORD PTR [rsi+rdx*1+0x30],ymm11
  939fa8:	62 a2 b5 48 7f d3    	vpermt2pd zmm18,zmm9,zmm19
  939fae:	62 e3 7d 48 19 54 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x80],zmm18,0x2
  939fb5:	08 02 
  939fb7:	62 e1 fd 28 11 54 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x60],ymm18
  939fbe:	03 
  939fbf:	62 52 b5 48 7f d6    	vpermt2pd zmm10,zmm9,zmm14
  939fc5:	62 73 7d 48 19 54 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xb0],zmm10,0x2
  939fcc:	0b 02 
  939fce:	c5 7d 11 94 16 90 00 	vmovupd YMMWORD PTR [rsi+rdx*1+0x90],ymm10
  939fd5:	00 00 
  939fd7:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  939fde:	48 39 d0             	cmp    rax,rdx
  939fe1:	0f 85 89 fd ff ff    	jne    939d70 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle+0x70>
  939fe7:	c5 f8 77             	vzeroupper
  939fea:	c3                   	ret
