
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000942b40 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  942b40:	62 f1 fd 48 10 05 1e 	vmovupd zmm0,ZMMWORD PTR [rip+0xffffffffff78421e]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  942b47:	42 78 ff 
  942b4a:	62 f1 fd 48 10 0d 54 	vmovupd zmm1,ZMMWORD PTR [rip+0xffffffffff784254]        # c6da8 <crc32fast::table::CRC32_TABLE+0x9124>
  942b51:	42 78 ff 
  942b54:	c5 e9 57 d2          	vxorpd xmm2,xmm2,xmm2
  942b58:	c5 e1 57 db          	vxorpd xmm3,xmm3,xmm3
  942b5c:	62 f2 fd 48 7f db    	vpermt2pd zmm3,zmm0,zmm3
  942b62:	c5 d9 57 e4          	vxorpd xmm4,xmm4,xmm4
  942b66:	62 f2 f5 48 7f e4    	vpermt2pd zmm4,zmm1,zmm4
  942b6c:	62 f1 fd 48 10 2d 72 	vmovupd zmm5,ZMMWORD PTR [rip+0xffffffffff784172]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  942b73:	41 78 ff 
  942b76:	62 f1 fd 48 10 35 a8 	vmovupd zmm6,ZMMWORD PTR [rip+0xffffffffff7841a8]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  942b7d:	41 78 ff 
  942b80:	48 c1 e2 05          	shl    rdx,0x5
  942b84:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  942b88:	31 d2                	xor    edx,edx
  942b8a:	62 f1 fd 48 28 3d ec 	vmovapd zmm7,ZMMWORD PTR [rip+0xffffffffff7408ec]        # 83480 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x10930>
  942b91:	08 74 ff 
  942b94:	62 72 fd 48 19 05 fa 	vbroadcastsd zmm8,QWORD PTR [rip+0xffffffffff731efa]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  942b9b:	1e 73 ff 
  942b9e:	62 71 fd 48 28 0d 18 	vmovapd zmm9,ZMMWORD PTR [rip+0xffffffffff740918]        # 834c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x10970>
  942ba5:	09 74 ff 
  942ba8:	62 72 fd 48 19 15 6e 	vbroadcastsd zmm10,QWORD PTR [rip+0xffffffffff73206e]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  942baf:	20 73 ff 
  942bb2:	62 71 fd 48 28 1d 44 	vmovapd zmm11,ZMMWORD PTR [rip+0xffffffffff740944]        # 83500 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x109b0>
  942bb9:	09 74 ff 
  942bbc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  942bc0:	62 71 fd 48 10 24 17 	vmovupd zmm12,ZMMWORD PTR [rdi+rdx*1]
  942bc7:	c5 7d 10 6c 17 40    	vmovupd ymm13,YMMWORD PTR [rdi+rdx*1+0x40]
  942bcd:	62 51 fd 48 28 f4    	vmovapd zmm14,zmm12
  942bd3:	62 52 c5 48 7f f5    	vpermt2pd zmm14,zmm7,zmm13
  942bd9:	62 52 b5 48 7f e5    	vpermt2pd zmm12,zmm9,zmm13
  942bdf:	62 71 fd 48 10 ac 17 	vmovupd zmm13,ZMMWORD PTR [rdi+rdx*1+0x60]
  942be6:	60 00 00 00 
  942bea:	c5 7d 10 bc 17 a0 00 	vmovupd ymm15,YMMWORD PTR [rdi+rdx*1+0xa0]
  942bf1:	00 00 
  942bf3:	62 c1 fd 48 28 c5    	vmovapd zmm16,zmm13
  942bf9:	62 c2 c5 48 7f c7    	vpermt2pd zmm16,zmm7,zmm15
  942bff:	62 52 b5 48 7f ef    	vpermt2pd zmm13,zmm9,zmm15
  942c05:	62 71 fd 48 10 7c 17 	vmovupd zmm15,ZMMWORD PTR [rdi+rdx*1+0xc0]
  942c0c:	03 
  942c0d:	62 e1 fd 28 10 4c 17 	vmovupd ymm17,YMMWORD PTR [rdi+rdx*1+0x100]
  942c14:	08 
  942c15:	62 c1 fd 48 28 d7    	vmovapd zmm18,zmm15
  942c1b:	62 a2 c5 48 7f d1    	vpermt2pd zmm18,zmm7,zmm17
  942c21:	62 32 b5 48 7f f9    	vpermt2pd zmm15,zmm9,zmm17
  942c27:	62 c1 95 48 58 df    	vaddpd zmm19,zmm13,zmm15
  942c2d:	62 a1 9d 48 58 e3    	vaddpd zmm20,zmm12,zmm19
  942c33:	62 a1 fd 40 58 ea    	vaddpd zmm21,zmm16,zmm18
  942c39:	62 a1 8d 48 58 cd    	vaddpd zmm17,zmm14,zmm21
  942c3f:	62 32 bd 48 bc e3    	vfnmadd231pd zmm12,zmm8,zmm19
  942c45:	62 a1 fd 40 5c c2    	vsubpd zmm16,zmm16,zmm18
  942c4b:	62 c1 fd 40 59 c2    	vmulpd zmm16,zmm16,zmm10
  942c51:	62 a1 9d 48 58 f0    	vaddpd zmm22,zmm12,zmm16
  942c57:	62 32 bd 48 bc f5    	vfnmadd231pd zmm14,zmm8,zmm21
  942c5d:	62 51 95 48 5c ef    	vsubpd zmm13,zmm13,zmm15
  942c63:	62 51 95 48 59 ea    	vmulpd zmm13,zmm13,zmm10
  942c69:	62 c1 8d 48 5c ed    	vsubpd zmm21,zmm14,zmm13
  942c6f:	62 31 9d 48 5c e0    	vsubpd zmm12,zmm12,zmm16
  942c75:	62 51 95 48 58 f6    	vaddpd zmm14,zmm13,zmm14
  942c7b:	62 31 fd 48 28 fc    	vmovapd zmm15,zmm20
  942c81:	62 72 fd 48 7f fa    	vpermt2pd zmm15,zmm0,zmm2
  942c87:	62 e2 f5 48 7f e2    	vpermt2pd zmm20,zmm1,zmm2
  942c8d:	62 a1 fd 48 28 c6    	vmovapd zmm16,zmm22
  942c93:	62 e2 fd 48 7f c2    	vpermt2pd zmm16,zmm0,zmm2
  942c99:	62 e2 f5 48 7f f2    	vpermt2pd zmm22,zmm1,zmm2
  942c9f:	62 51 fd 48 28 ec    	vmovapd zmm13,zmm12
  942ca5:	62 72 fd 48 7f ea    	vpermt2pd zmm13,zmm0,zmm2
  942cab:	62 72 f5 48 7f e2    	vpermt2pd zmm12,zmm1,zmm2
  942cb1:	62 c1 fd 48 28 d7    	vmovapd zmm18,zmm15
  942cb7:	62 c2 d5 48 7f d5    	vpermt2pd zmm18,zmm5,zmm13
  942cbd:	62 52 cd 48 7f fd    	vpermt2pd zmm15,zmm6,zmm13
  942cc3:	62 31 fd 48 28 e8    	vmovapd zmm13,zmm16
  942cc9:	62 72 d5 48 7f eb    	vpermt2pd zmm13,zmm5,zmm3
  942ccf:	62 e2 cd 48 7f c3    	vpermt2pd zmm16,zmm6,zmm3
  942cd5:	62 c2 d5 48 7f e4    	vpermt2pd zmm20,zmm5,zmm12
  942cdb:	62 e2 d5 48 7f f4    	vpermt2pd zmm22,zmm5,zmm4
  942ce1:	62 51 ed 40 14 e5    	vunpcklpd zmm12,zmm18,zmm13
  942ce7:	62 51 ed 40 15 ed    	vunpckhpd zmm13,zmm18,zmm13
  942ced:	62 a1 85 48 14 d8    	vunpcklpd zmm19,zmm15,zmm16
  942cf3:	62 a1 85 48 15 c0    	vunpckhpd zmm16,zmm15,zmm16
  942cf9:	62 a1 dd 40 14 d6    	vunpcklpd zmm18,zmm20,zmm22
  942cff:	62 31 dd 40 15 fe    	vunpckhpd zmm15,zmm20,zmm22
  942d05:	62 a1 fd 48 28 e1    	vmovapd zmm20,zmm17
  942d0b:	62 e2 fd 48 7f e2    	vpermt2pd zmm20,zmm0,zmm2
  942d11:	62 e2 f5 48 7f ca    	vpermt2pd zmm17,zmm1,zmm2
  942d17:	62 a1 fd 48 28 f5    	vmovapd zmm22,zmm21
  942d1d:	62 e2 fd 48 7f f2    	vpermt2pd zmm22,zmm0,zmm2
  942d23:	62 e2 f5 48 7f ea    	vpermt2pd zmm21,zmm1,zmm2
  942d29:	62 c1 fd 48 28 fe    	vmovapd zmm23,zmm14
  942d2f:	62 e2 fd 48 7f fa    	vpermt2pd zmm23,zmm0,zmm2
  942d35:	62 72 f5 48 7f f2    	vpermt2pd zmm14,zmm1,zmm2
  942d3b:	62 21 fd 48 28 c4    	vmovapd zmm24,zmm20
  942d41:	62 22 d5 48 7f c7    	vpermt2pd zmm24,zmm5,zmm23
  942d47:	62 a2 cd 48 7f e7    	vpermt2pd zmm20,zmm6,zmm23
  942d4d:	62 a1 fd 48 28 fe    	vmovapd zmm23,zmm22
  942d53:	62 e2 d5 48 7f fb    	vpermt2pd zmm23,zmm5,zmm3
  942d59:	62 e2 cd 48 7f f3    	vpermt2pd zmm22,zmm6,zmm3
  942d5f:	62 c2 d5 48 7f ce    	vpermt2pd zmm17,zmm5,zmm14
  942d65:	62 e2 d5 48 7f ec    	vpermt2pd zmm21,zmm5,zmm4
  942d6b:	62 31 bd 40 14 f7    	vunpcklpd zmm14,zmm24,zmm23
  942d71:	62 a1 bd 40 15 ff    	vunpckhpd zmm23,zmm24,zmm23
  942d77:	62 21 dd 40 14 c6    	vunpcklpd zmm24,zmm20,zmm22
  942d7d:	62 a1 dd 40 15 e6    	vunpckhpd zmm20,zmm20,zmm22
  942d83:	62 a1 f5 40 14 f5    	vunpcklpd zmm22,zmm17,zmm21
  942d89:	62 a1 f5 40 15 ed    	vunpckhpd zmm21,zmm17,zmm21
  942d8f:	62 61 fd 48 10 49 04 	vmovupd zmm25,ZMMWORD PTR [rcx+0x100]
  942d96:	62 61 fd 48 10 51 05 	vmovupd zmm26,ZMMWORD PTR [rcx+0x140]
  942d9d:	62 81 e5 40 59 c9    	vmulpd zmm17,zmm19,zmm25
  942da3:	62 82 bd 40 bc ca    	vfnmadd231pd zmm17,zmm24,zmm26
  942da9:	62 01 bd 40 59 c1    	vmulpd zmm24,zmm24,zmm25
  942daf:	62 61 fd 48 10 49 08 	vmovupd zmm25,ZMMWORD PTR [rcx+0x200]
  942db6:	62 02 e5 40 b8 c2    	vfmadd231pd zmm24,zmm19,zmm26
  942dbc:	62 e1 fd 48 10 59 09 	vmovupd zmm19,ZMMWORD PTR [rcx+0x240]
  942dc3:	62 01 ed 40 59 d1    	vmulpd zmm26,zmm18,zmm25
  942dc9:	62 22 cd 40 bc d3    	vfnmadd231pd zmm26,zmm22,zmm19
  942dcf:	62 81 cd 40 59 f1    	vmulpd zmm22,zmm22,zmm25
  942dd5:	62 61 fd 48 10 49 06 	vmovupd zmm25,ZMMWORD PTR [rcx+0x180]
  942ddc:	62 a2 ed 40 b8 f3    	vfmadd231pd zmm22,zmm18,zmm19
  942de2:	62 e1 fd 48 10 51 07 	vmovupd zmm18,ZMMWORD PTR [rcx+0x1c0]
  942de9:	62 81 fd 40 59 d9    	vmulpd zmm19,zmm16,zmm25
  942def:	62 a2 dd 40 bc da    	vfnmadd231pd zmm19,zmm20,zmm18
  942df5:	62 81 dd 40 59 e1    	vmulpd zmm20,zmm20,zmm25
  942dfb:	62 61 fd 48 10 49 0a 	vmovupd zmm25,ZMMWORD PTR [rcx+0x280]
  942e02:	62 a2 fd 40 b8 e2    	vfmadd231pd zmm20,zmm16,zmm18
  942e08:	62 e1 fd 48 10 41 0b 	vmovupd zmm16,ZMMWORD PTR [rcx+0x2c0]
  942e0f:	62 81 85 48 59 d1    	vmulpd zmm18,zmm15,zmm25
  942e15:	62 a2 d5 40 bc d0    	vfnmadd231pd zmm18,zmm21,zmm16
  942e1b:	62 81 d5 40 59 e9    	vmulpd zmm21,zmm21,zmm25
  942e21:	62 61 fd 48 10 49 02 	vmovupd zmm25,ZMMWORD PTR [rcx+0x80]
  942e28:	62 a2 85 48 b8 e8    	vfmadd231pd zmm21,zmm15,zmm16
  942e2e:	62 71 fd 48 10 79 03 	vmovupd zmm15,ZMMWORD PTR [rcx+0xc0]
  942e35:	62 81 95 48 59 c1    	vmulpd zmm16,zmm13,zmm25
  942e3b:	62 c2 c5 40 bc c7    	vfnmadd231pd zmm16,zmm23,zmm15
  942e41:	62 81 c5 40 59 f9    	vmulpd zmm23,zmm23,zmm25
  942e47:	62 01 f5 40 58 ca    	vaddpd zmm25,zmm17,zmm26
  942e4d:	62 c2 95 48 b8 ff    	vfmadd231pd zmm23,zmm13,zmm15
  942e53:	62 11 9d 48 58 e9    	vaddpd zmm13,zmm12,zmm25
  942e59:	62 31 ed 40 58 f8    	vaddpd zmm15,zmm18,zmm16
  942e5f:	62 42 bd 48 ac cc    	vfnmadd213pd zmm25,zmm8,zmm12
  942e65:	62 31 bd 40 58 e6    	vaddpd zmm12,zmm24,zmm22
  942e6b:	62 a1 bd 40 5c f6    	vsubpd zmm22,zmm24,zmm22
  942e71:	62 41 e5 40 58 c7    	vaddpd zmm24,zmm19,zmm15
  942e77:	62 c2 bd 48 bc df    	vfnmadd231pd zmm19,zmm8,zmm15
  942e7d:	62 31 d5 40 58 ff    	vaddpd zmm15,zmm21,zmm23
  942e83:	62 a1 d5 40 5c ef    	vsubpd zmm21,zmm21,zmm23
  942e89:	62 c1 9d 48 58 fe    	vaddpd zmm23,zmm12,zmm14
  942e8f:	62 52 bd 48 ac e6    	vfnmadd213pd zmm12,zmm8,zmm14
  942e95:	62 11 f5 40 5c f2    	vsubpd zmm14,zmm17,zmm26
  942e9b:	62 c1 dd 40 58 cf    	vaddpd zmm17,zmm20,zmm15
  942ea1:	62 c2 bd 48 bc e7    	vfnmadd231pd zmm20,zmm8,zmm15
  942ea7:	62 51 cd 40 59 fa    	vmulpd zmm15,zmm22,zmm10
  942ead:	62 a1 ed 40 5c c0    	vsubpd zmm16,zmm18,zmm16
  942eb3:	62 c1 b5 40 58 d7    	vaddpd zmm18,zmm25,zmm15
  942eb9:	62 c1 d5 40 59 ea    	vmulpd zmm21,zmm21,zmm10
  942ebf:	62 51 b5 40 5c ff    	vsubpd zmm15,zmm25,zmm15
  942ec5:	62 a1 e5 40 58 f5    	vaddpd zmm22,zmm19,zmm21
  942ecb:	62 51 8d 48 59 f2    	vmulpd zmm14,zmm14,zmm10
  942ed1:	62 a1 e5 40 5c dd    	vsubpd zmm19,zmm19,zmm21
  942ed7:	62 c1 9d 48 5c ee    	vsubpd zmm21,zmm12,zmm14
  942edd:	62 c1 fd 40 59 c2    	vmulpd zmm16,zmm16,zmm10
  942ee3:	62 51 8d 48 58 e4    	vaddpd zmm12,zmm14,zmm12
  942ee9:	62 31 dd 40 5c f0    	vsubpd zmm14,zmm20,zmm16
  942eef:	62 a1 dd 40 58 c0    	vaddpd zmm16,zmm20,zmm16
  942ef5:	62 a1 ed 40 5c e6    	vsubpd zmm20,zmm18,zmm22
  942efb:	62 a1 ed 40 58 d6    	vaddpd zmm18,zmm18,zmm22
  942f01:	62 c1 d5 40 5c f6    	vsubpd zmm22,zmm21,zmm14
  942f07:	62 51 d5 40 58 f6    	vaddpd zmm14,zmm21,zmm14
  942f0d:	62 a1 85 48 58 eb    	vaddpd zmm21,zmm15,zmm19
  942f13:	62 31 85 48 5c fb    	vsubpd zmm15,zmm15,zmm19
  942f19:	62 a1 9d 48 58 d8    	vaddpd zmm19,zmm12,zmm16
  942f1f:	62 31 9d 48 5c e0    	vsubpd zmm12,zmm12,zmm16
  942f25:	62 a1 c5 40 5c c1    	vsubpd zmm16,zmm23,zmm17
  942f2b:	62 a1 c5 40 58 c9    	vaddpd zmm17,zmm23,zmm17
  942f31:	62 81 95 48 5c f8    	vsubpd zmm23,zmm13,zmm24
  942f37:	62 11 95 48 58 e8    	vaddpd zmm13,zmm13,zmm24
  942f3d:	62 c2 a5 48 7f cd    	vpermt2pd zmm17,zmm11,zmm13
  942f43:	62 e3 7d 48 19 4c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x20],zmm17,0x2
  942f4a:	02 02 
  942f4c:	62 e1 fd 28 11 0c 16 	vmovupd YMMWORD PTR [rsi+rdx*1],ymm17
  942f53:	62 a2 a5 48 7f f4    	vpermt2pd zmm22,zmm11,zmm20
  942f59:	62 e3 7d 48 19 74 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x50],zmm22,0x2
  942f60:	05 02 
  942f62:	62 e1 fd 28 11 b4 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x30],ymm22
  942f69:	30 00 00 00 
  942f6d:	62 a2 a5 48 7f dd    	vpermt2pd zmm19,zmm11,zmm21
  942f73:	62 e3 7d 48 19 5c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x80],zmm19,0x2
  942f7a:	08 02 
  942f7c:	62 e1 fd 28 11 5c 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x60],ymm19
  942f83:	03 
  942f84:	62 a2 a5 48 7f c7    	vpermt2pd zmm16,zmm11,zmm23
  942f8a:	62 e3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xb0],zmm16,0x2
  942f91:	0b 02 
  942f93:	62 e1 fd 28 11 84 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x90],ymm16
  942f9a:	90 00 00 00 
  942f9e:	62 32 a5 48 7f f2    	vpermt2pd zmm14,zmm11,zmm18
  942fa4:	62 73 7d 48 19 74 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xe0],zmm14,0x2
  942fab:	0e 02 
  942fad:	c5 7d 11 b4 16 c0 00 	vmovupd YMMWORD PTR [rsi+rdx*1+0xc0],ymm14
  942fb4:	00 00 
  942fb6:	62 52 a5 48 7f e7    	vpermt2pd zmm12,zmm11,zmm15
  942fbc:	62 73 7d 48 19 64 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x110],zmm12,0x2
  942fc3:	11 02 
  942fc5:	c5 7d 11 a4 16 f0 00 	vmovupd YMMWORD PTR [rsi+rdx*1+0xf0],ymm12
  942fcc:	00 00 
  942fce:	48 81 c2 20 01 00 00 	add    rdx,0x120
  942fd5:	48 39 d0             	cmp    rax,rdx
  942fd8:	0f 85 e2 fb ff ff    	jne    942bc0 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle+0x80>
  942fde:	c5 f8 77             	vzeroupper
  942fe1:	c3                   	ret
