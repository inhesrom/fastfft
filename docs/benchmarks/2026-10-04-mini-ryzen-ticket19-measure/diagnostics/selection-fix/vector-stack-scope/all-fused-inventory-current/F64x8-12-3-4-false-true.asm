
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

000000000093af80 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  93af80:	62 f1 fd 48 10 05 de 	vmovupd zmm0,ZMMWORD PTR [rip+0xffffffffff78bdde]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  93af87:	bd 78 ff 
  93af8a:	c5 f1 57 c9          	vxorpd xmm1,xmm1,xmm1
  93af8e:	c5 e9 57 d2          	vxorpd xmm2,xmm2,xmm2
  93af92:	62 f2 fd 48 7f d2    	vpermt2pd zmm2,zmm0,zmm2
  93af98:	62 f1 fd 48 10 1d 46 	vmovupd zmm3,ZMMWORD PTR [rip+0xffffffffff78bd46]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  93af9f:	bd 78 ff 
  93afa2:	62 f1 fd 48 10 25 7c 	vmovupd zmm4,ZMMWORD PTR [rip+0xffffffffff78bd7c]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  93afa9:	bd 78 ff 
  93afac:	48 c1 e2 06          	shl    rdx,0x6
  93afb0:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  93afb4:	31 d2                	xor    edx,edx
  93afb6:	62 f1 fd 48 28 2d c0 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff747ac0]        # 82a80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xff30>
  93afbd:	7a 74 ff 
  93afc0:	62 f2 fd 48 19 35 ce 	vbroadcastsd zmm6,QWORD PTR [rip+0xffffffffff739ace]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  93afc7:	9a 73 ff 
  93afca:	62 f1 fd 48 28 3d ec 	vmovapd zmm7,ZMMWORD PTR [rip+0xffffffffff747aec]        # 82ac0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xff70>
  93afd1:	7a 74 ff 
  93afd4:	62 72 fd 48 19 05 42 	vbroadcastsd zmm8,QWORD PTR [rip+0xffffffffff739c42]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  93afdb:	9c 73 ff 
  93afde:	62 71 fd 48 28 0d 18 	vmovapd zmm9,ZMMWORD PTR [rip+0xffffffffff747b18]        # 82b00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xffb0>
  93afe5:	7b 74 ff 
  93afe8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  93afef:	00 
  93aff0:	62 71 fd 48 10 14 17 	vmovupd zmm10,ZMMWORD PTR [rdi+rdx*1]
  93aff7:	62 71 fd 48 10 5c 17 	vmovupd zmm11,ZMMWORD PTR [rdi+rdx*1+0x40]
  93affe:	01 
  93afff:	62 71 fd 48 10 64 17 	vmovupd zmm12,ZMMWORD PTR [rdi+rdx*1+0x80]
  93b006:	02 
  93b007:	62 51 fd 48 28 ea    	vmovapd zmm13,zmm10
  93b00d:	62 72 d5 48 7f e9    	vpermt2pd zmm13,zmm5,zmm1
  93b013:	62 72 c5 48 7f d1    	vpermt2pd zmm10,zmm7,zmm1
  93b019:	62 51 fd 48 28 f3    	vmovapd zmm14,zmm11
  93b01f:	62 72 d5 48 7f f1    	vpermt2pd zmm14,zmm5,zmm1
  93b025:	62 72 c5 48 7f d9    	vpermt2pd zmm11,zmm7,zmm1
  93b02b:	62 51 fd 48 28 fc    	vmovapd zmm15,zmm12
  93b031:	62 72 d5 48 7f f9    	vpermt2pd zmm15,zmm5,zmm1
  93b037:	62 72 c5 48 7f e1    	vpermt2pd zmm12,zmm7,zmm1
  93b03d:	62 c1 8d 48 58 c7    	vaddpd zmm16,zmm14,zmm15
  93b043:	62 a1 95 48 58 c8    	vaddpd zmm17,zmm13,zmm16
  93b049:	62 c1 a5 48 58 d4    	vaddpd zmm18,zmm11,zmm12
  93b04f:	62 a1 ad 48 58 da    	vaddpd zmm19,zmm10,zmm18
  93b055:	62 32 cd 48 bc e8    	vfnmadd231pd zmm13,zmm6,zmm16
  93b05b:	62 51 a5 48 5c dc    	vsubpd zmm11,zmm11,zmm12
  93b061:	62 51 a5 48 59 d8    	vmulpd zmm11,zmm11,zmm8
  93b067:	62 51 95 48 58 e3    	vaddpd zmm12,zmm13,zmm11
  93b06d:	62 32 cd 48 bc d2    	vfnmadd231pd zmm10,zmm6,zmm18
  93b073:	62 51 8d 48 5c f7    	vsubpd zmm14,zmm14,zmm15
  93b079:	62 51 8d 48 59 f0    	vmulpd zmm14,zmm14,zmm8
  93b07f:	62 51 ad 48 5c fe    	vsubpd zmm15,zmm10,zmm14
  93b085:	62 51 95 48 5c db    	vsubpd zmm11,zmm13,zmm11
  93b08b:	62 51 8d 48 58 d2    	vaddpd zmm10,zmm14,zmm10
  93b091:	62 e2 fd 48 7f c9    	vpermt2pd zmm17,zmm0,zmm1
  93b097:	62 72 fd 48 7f e1    	vpermt2pd zmm12,zmm0,zmm1
  93b09d:	62 72 fd 48 7f d9    	vpermt2pd zmm11,zmm0,zmm1
  93b0a3:	62 31 fd 48 28 e9    	vmovapd zmm13,zmm17
  93b0a9:	62 52 e5 48 7f eb    	vpermt2pd zmm13,zmm3,zmm11
  93b0af:	62 c2 dd 48 7f cb    	vpermt2pd zmm17,zmm4,zmm11
  93b0b5:	62 51 fd 48 28 dc    	vmovapd zmm11,zmm12
  93b0bb:	62 72 e5 48 7f da    	vpermt2pd zmm11,zmm3,zmm2
  93b0c1:	62 72 dd 48 7f e2    	vpermt2pd zmm12,zmm4,zmm2
  93b0c7:	62 51 95 48 14 f3    	vunpcklpd zmm14,zmm13,zmm11
  93b0cd:	62 51 95 48 15 db    	vunpckhpd zmm11,zmm13,zmm11
  93b0d3:	62 51 f5 40 14 ec    	vunpcklpd zmm13,zmm17,zmm12
  93b0d9:	62 51 f5 40 15 e4    	vunpckhpd zmm12,zmm17,zmm12
  93b0df:	62 e2 fd 48 7f d9    	vpermt2pd zmm19,zmm0,zmm1
  93b0e5:	62 72 fd 48 7f f9    	vpermt2pd zmm15,zmm0,zmm1
  93b0eb:	62 72 fd 48 7f d1    	vpermt2pd zmm10,zmm0,zmm1
  93b0f1:	62 a1 fd 48 28 c3    	vmovapd zmm16,zmm19
  93b0f7:	62 c2 e5 48 7f c2    	vpermt2pd zmm16,zmm3,zmm10
  93b0fd:	62 c2 dd 48 7f da    	vpermt2pd zmm19,zmm4,zmm10
  93b103:	62 51 fd 48 28 d7    	vmovapd zmm10,zmm15
  93b109:	62 72 e5 48 7f d2    	vpermt2pd zmm10,zmm3,zmm2
  93b10f:	62 72 dd 48 7f fa    	vpermt2pd zmm15,zmm4,zmm2
  93b115:	62 c1 fd 40 14 ca    	vunpcklpd zmm17,zmm16,zmm10
  93b11b:	62 51 fd 40 15 d2    	vunpckhpd zmm10,zmm16,zmm10
  93b121:	62 c1 e5 40 14 c7    	vunpcklpd zmm16,zmm19,zmm15
  93b127:	62 51 e5 40 15 ff    	vunpckhpd zmm15,zmm19,zmm15
  93b12d:	62 e1 fd 48 10 51 02 	vmovupd zmm18,ZMMWORD PTR [rcx+0x80]
  93b134:	62 e1 fd 48 10 59 03 	vmovupd zmm19,ZMMWORD PTR [rcx+0xc0]
  93b13b:	62 e1 fd 48 10 61 04 	vmovupd zmm20,ZMMWORD PTR [rcx+0x100]
  93b142:	62 e1 fd 48 10 69 05 	vmovupd zmm21,ZMMWORD PTR [rcx+0x140]
  93b149:	62 e1 fd 48 10 71 06 	vmovupd zmm22,ZMMWORD PTR [rcx+0x180]
  93b150:	62 e1 fd 48 10 79 07 	vmovupd zmm23,ZMMWORD PTR [rcx+0x1c0]
  93b157:	62 21 95 48 59 c4    	vmulpd zmm24,zmm13,zmm20
  93b15d:	62 22 fd 40 bc c5    	vfnmadd231pd zmm24,zmm16,zmm21
  93b163:	62 01 8d 48 58 c8    	vaddpd zmm25,zmm14,zmm24
  93b169:	62 21 a5 48 59 d2    	vmulpd zmm26,zmm11,zmm18
  93b16f:	62 22 ad 48 bc d3    	vfnmadd231pd zmm26,zmm10,zmm19
  93b175:	62 21 9d 48 59 de    	vmulpd zmm27,zmm12,zmm22
  93b17b:	62 22 85 48 bc df    	vfnmadd231pd zmm27,zmm15,zmm23
  93b181:	62 01 ad 40 58 e3    	vaddpd zmm28,zmm26,zmm27
  93b187:	62 a1 fd 40 59 c4    	vmulpd zmm16,zmm16,zmm20
  93b18d:	62 a2 95 48 b8 c5    	vfmadd231pd zmm16,zmm13,zmm21
  93b193:	62 31 fd 40 58 e9    	vaddpd zmm13,zmm16,zmm17
  93b199:	62 31 ad 48 59 d2    	vmulpd zmm10,zmm10,zmm18
  93b19f:	62 32 a5 48 b8 d3    	vfmadd231pd zmm10,zmm11,zmm19
  93b1a5:	62 31 85 48 59 de    	vmulpd zmm11,zmm15,zmm22
  93b1ab:	62 32 9d 48 b8 df    	vfmadd231pd zmm11,zmm12,zmm23
  93b1b1:	62 51 ad 48 58 e3    	vaddpd zmm12,zmm10,zmm11
  93b1b7:	62 11 8d 48 5c f0    	vsubpd zmm14,zmm14,zmm24
  93b1bd:	62 51 ad 48 5c d3    	vsubpd zmm10,zmm10,zmm11
  93b1c3:	62 51 8d 48 58 da    	vaddpd zmm11,zmm14,zmm10
  93b1c9:	62 31 f5 40 5c f8    	vsubpd zmm15,zmm17,zmm16
  93b1cf:	62 81 a5 40 5c c2    	vsubpd zmm16,zmm27,zmm26
  93b1d5:	62 a1 85 48 58 c8    	vaddpd zmm17,zmm15,zmm16
  93b1db:	62 81 b5 40 5c d4    	vsubpd zmm18,zmm25,zmm28
  93b1e1:	62 c1 95 48 5c dc    	vsubpd zmm19,zmm13,zmm12
  93b1e7:	62 51 8d 48 5c d2    	vsubpd zmm10,zmm14,zmm10
  93b1ed:	62 31 85 48 5c f0    	vsubpd zmm14,zmm15,zmm16
  93b1f3:	62 11 b5 40 58 fc    	vaddpd zmm15,zmm25,zmm28
  93b1f9:	62 51 95 48 58 e4    	vaddpd zmm12,zmm13,zmm12
  93b1ff:	62 52 b5 48 7f fc    	vpermt2pd zmm15,zmm9,zmm12
  93b205:	62 73 7d 48 19 7c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x20],zmm15,0x2
  93b20c:	02 02 
  93b20e:	c5 7d 11 3c 16       	vmovupd YMMWORD PTR [rsi+rdx*1],ymm15
  93b213:	62 32 b5 48 7f d9    	vpermt2pd zmm11,zmm9,zmm17
  93b219:	62 73 7d 48 19 5c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x50],zmm11,0x2
  93b220:	05 02 
  93b222:	c5 7d 11 5c 16 30    	vmovupd YMMWORD PTR [rsi+rdx*1+0x30],ymm11
  93b228:	62 a2 b5 48 7f d3    	vpermt2pd zmm18,zmm9,zmm19
  93b22e:	62 e3 7d 48 19 54 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x80],zmm18,0x2
  93b235:	08 02 
  93b237:	62 e1 fd 28 11 54 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x60],ymm18
  93b23e:	03 
  93b23f:	62 52 b5 48 7f d6    	vpermt2pd zmm10,zmm9,zmm14
  93b245:	62 73 7d 48 19 54 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xb0],zmm10,0x2
  93b24c:	0b 02 
  93b24e:	c5 7d 11 94 16 90 00 	vmovupd YMMWORD PTR [rsi+rdx*1+0x90],ymm10
  93b255:	00 00 
  93b257:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  93b25e:	48 39 d0             	cmp    rax,rdx
  93b261:	0f 85 89 fd ff ff    	jne    93aff0 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle+0x70>
  93b267:	c5 f8 77             	vzeroupper
  93b26a:	c3                   	ret
