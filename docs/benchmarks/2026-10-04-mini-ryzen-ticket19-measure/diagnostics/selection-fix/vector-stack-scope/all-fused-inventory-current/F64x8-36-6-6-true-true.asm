
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000908cc0 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  908cc0:	62 f1 fd 48 10 05 9e 	vmovupd zmm0,ZMMWORD PTR [rip+0xffffffffff7be09e]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  908cc7:	e0 7b ff 
  908cca:	62 f1 fd 48 10 0d d4 	vmovupd zmm1,ZMMWORD PTR [rip+0xffffffffff7be0d4]        # c6da8 <crc32fast::table::CRC32_TABLE+0x9124>
  908cd1:	e0 7b ff 
  908cd4:	62 f1 fd 48 10 15 0a 	vmovupd zmm2,ZMMWORD PTR [rip+0xffffffffff7be00a]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  908cdb:	e0 7b ff 
  908cde:	62 f1 fd 48 10 1d 40 	vmovupd zmm3,ZMMWORD PTR [rip+0xffffffffff7be040]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  908ce5:	e0 7b ff 
  908ce8:	48 c1 e2 06          	shl    rdx,0x6
  908cec:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  908cf0:	31 d2                	xor    edx,edx
  908cf2:	62 f1 fd 48 28 25 c4 	vmovapd zmm4,ZMMWORD PTR [rip+0xffffffffff775cc4]        # 7e9c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xbe70>
  908cf9:	5c 77 ff 
  908cfc:	62 f2 fd 48 19 2d 92 	vbroadcastsd zmm5,QWORD PTR [rip+0xffffffffff76bd92]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  908d03:	bd 76 ff 
  908d06:	62 f2 fd 48 19 35 10 	vbroadcastsd zmm6,QWORD PTR [rip+0xffffffffff76bf10]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  908d0d:	bf 76 ff 
  908d10:	62 f1 fd 48 28 3d e6 	vmovapd zmm7,ZMMWORD PTR [rip+0xffffffffff775ce6]        # 7ea00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xbeb0>
  908d17:	5c 77 ff 
  908d1a:	c4 41 39 57 c0       	vxorpd xmm8,xmm8,xmm8
  908d1f:	c5 7d 28 0d d9 df 76 	vmovapd ymm9,YMMWORD PTR [rip+0xffffffffff76dfd9]        # 76d00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x41b0>
  908d26:	ff 
  908d27:	62 71 fd 48 28 15 0f 	vmovapd zmm10,ZMMWORD PTR [rip+0xffffffffff775d0f]        # 7ea40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xbef0>
  908d2e:	5d 77 ff 
  908d31:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  908d38:	0f 1f 84 00 00 00 00 
  908d3f:	00 
  908d40:	62 71 fd 48 10 24 17 	vmovupd zmm12,ZMMWORD PTR [rdi+rdx*1]
  908d47:	c5 7d 10 6c 17 40    	vmovupd ymm13,YMMWORD PTR [rdi+rdx*1+0x40]
  908d4d:	62 51 fd 48 28 dc    	vmovapd zmm11,zmm12
  908d53:	62 52 dd 48 7f dd    	vpermt2pd zmm11,zmm4,zmm13
  908d59:	62 52 c5 48 7f e5    	vpermt2pd zmm12,zmm7,zmm13
  908d5f:	62 71 fd 48 10 b4 17 	vmovupd zmm14,ZMMWORD PTR [rdi+rdx*1+0x60]
  908d66:	60 00 00 00 
  908d6a:	c5 7d 10 ac 17 a0 00 	vmovupd ymm13,YMMWORD PTR [rdi+rdx*1+0xa0]
  908d71:	00 00 
  908d73:	62 c1 fd 48 28 ce    	vmovapd zmm17,zmm14
  908d79:	62 c2 dd 48 7f cd    	vpermt2pd zmm17,zmm4,zmm13
  908d7f:	62 52 c5 48 7f f5    	vpermt2pd zmm14,zmm7,zmm13
  908d85:	62 71 fd 48 10 6c 17 	vmovupd zmm13,ZMMWORD PTR [rdi+rdx*1+0xc0]
  908d8c:	03 
  908d8d:	c5 7d 10 bc 17 00 01 	vmovupd ymm15,YMMWORD PTR [rdi+rdx*1+0x100]
  908d94:	00 00 
  908d96:	62 c1 fd 48 28 d5    	vmovapd zmm18,zmm13
  908d9c:	62 c2 dd 48 7f d7    	vpermt2pd zmm18,zmm4,zmm15
  908da2:	62 52 c5 48 7f ef    	vpermt2pd zmm13,zmm7,zmm15
  908da8:	62 e1 fd 48 10 84 17 	vmovupd zmm16,ZMMWORD PTR [rdi+rdx*1+0x120]
  908daf:	20 01 00 00 
  908db3:	62 e1 fd 28 10 5c 17 	vmovupd ymm19,YMMWORD PTR [rdi+rdx*1+0x160]
  908dba:	0b 
  908dbb:	62 31 fd 48 28 f8    	vmovapd zmm15,zmm16
  908dc1:	62 32 dd 48 7f fb    	vpermt2pd zmm15,zmm4,zmm19
  908dc7:	62 a2 c5 48 7f c3    	vpermt2pd zmm16,zmm7,zmm19
  908dcd:	62 e1 fd 48 10 5c 17 	vmovupd zmm19,ZMMWORD PTR [rdi+rdx*1+0x180]
  908dd4:	06 
  908dd5:	62 e1 fd 28 10 64 17 	vmovupd ymm20,YMMWORD PTR [rdi+rdx*1+0x1c0]
  908ddc:	0e 
  908ddd:	62 a1 fd 48 28 eb    	vmovapd zmm21,zmm19
  908de3:	62 a2 dd 48 7f ec    	vpermt2pd zmm21,zmm4,zmm20
  908de9:	62 a2 c5 48 7f dc    	vpermt2pd zmm19,zmm7,zmm20
  908def:	62 e1 fd 48 10 b4 17 	vmovupd zmm22,ZMMWORD PTR [rdi+rdx*1+0x1e0]
  908df6:	e0 01 00 00 
  908dfa:	62 e1 fd 28 10 64 17 	vmovupd ymm20,YMMWORD PTR [rdi+rdx*1+0x220]
  908e01:	11 
  908e02:	62 a1 fd 48 28 fe    	vmovapd zmm23,zmm22
  908e08:	62 a2 dd 48 7f fc    	vpermt2pd zmm23,zmm4,zmm20
  908e0e:	62 a2 c5 48 7f f4    	vpermt2pd zmm22,zmm7,zmm20
  908e14:	62 a1 95 48 58 e3    	vaddpd zmm20,zmm13,zmm19
  908e1a:	62 21 9d 48 58 c4    	vaddpd zmm24,zmm12,zmm20
  908e20:	62 41 cd 40 58 ce    	vaddpd zmm25,zmm22,zmm14
  908e26:	62 32 d5 48 bc e4    	vfnmadd231pd zmm12,zmm5,zmm20
  908e2c:	62 a1 ed 40 58 e5    	vaddpd zmm20,zmm18,zmm21
  908e32:	62 a1 ed 40 5c d5    	vsubpd zmm18,zmm18,zmm21
  908e38:	62 81 fd 40 58 e9    	vaddpd zmm21,zmm16,zmm25
  908e3e:	62 82 d5 48 bc c1    	vfnmadd231pd zmm16,zmm5,zmm25
  908e44:	62 21 c5 40 58 c9    	vaddpd zmm25,zmm23,zmm17
  908e4a:	62 a1 c5 40 5c c9    	vsubpd zmm17,zmm23,zmm17
  908e50:	62 a1 a5 48 58 fc    	vaddpd zmm23,zmm11,zmm20
  908e56:	62 32 d5 48 bc dc    	vfnmadd231pd zmm11,zmm5,zmm20
  908e5c:	62 a1 bd 40 58 e5    	vaddpd zmm20,zmm24,zmm21
  908e62:	62 a1 95 48 5c db    	vsubpd zmm19,zmm13,zmm19
  908e68:	62 01 85 48 58 d1    	vaddpd zmm26,zmm15,zmm25
  908e6e:	62 12 d5 48 bc f9    	vfnmadd231pd zmm15,zmm5,zmm25
  908e74:	62 11 c5 40 58 ea    	vaddpd zmm13,zmm23,zmm26
  908e7a:	62 e1 ed 40 59 d6    	vmulpd zmm18,zmm18,zmm6
  908e80:	62 51 cd 40 5c f6    	vsubpd zmm14,zmm22,zmm14
  908e86:	62 a1 9d 48 58 f2    	vaddpd zmm22,zmm12,zmm18
  908e8c:	62 e1 f5 40 59 ce    	vmulpd zmm17,zmm17,zmm6
  908e92:	62 31 9d 48 5c e2    	vsubpd zmm12,zmm12,zmm18
  908e98:	62 21 fd 40 58 c9    	vaddpd zmm25,zmm16,zmm17
  908e9e:	62 e1 e5 40 59 d6    	vmulpd zmm18,zmm19,zmm6
  908ea4:	62 a1 fd 40 5c c1    	vsubpd zmm16,zmm16,zmm17
  908eaa:	62 a1 a5 48 5c ca    	vsubpd zmm17,zmm11,zmm18
  908eb0:	62 71 8d 48 59 f6    	vmulpd zmm14,zmm14,zmm6
  908eb6:	62 51 ed 40 58 db    	vaddpd zmm11,zmm18,zmm11
  908ebc:	62 c1 85 48 5c de    	vsubpd zmm19,zmm15,zmm14
  908ec2:	62 51 8d 48 58 f7    	vaddpd zmm14,zmm14,zmm15
  908ec8:	62 01 cd 40 5c d9    	vsubpd zmm27,zmm22,zmm25
  908ece:	62 a1 bd 40 5c ed    	vsubpd zmm21,zmm24,zmm21
  908ed4:	62 a1 f5 40 5c d3    	vsubpd zmm18,zmm17,zmm19
  908eda:	62 11 c5 40 5c fa    	vsubpd zmm15,zmm23,zmm26
  908ee0:	62 a1 9d 48 58 f8    	vaddpd zmm23,zmm12,zmm16
  908ee6:	62 81 cd 40 58 f1    	vaddpd zmm22,zmm22,zmm25
  908eec:	62 41 a5 48 58 c6    	vaddpd zmm24,zmm11,zmm14
  908ef2:	62 21 f5 40 58 cb    	vaddpd zmm25,zmm17,zmm19
  908ef8:	62 31 9d 48 5c e0    	vsubpd zmm12,zmm12,zmm16
  908efe:	62 41 a5 48 5c d6    	vsubpd zmm26,zmm11,zmm14
  908f04:	62 31 fd 48 28 f4    	vmovapd zmm14,zmm20
  908f0a:	62 32 fd 48 7f f6    	vpermt2pd zmm14,zmm0,zmm22
  908f10:	62 a2 f5 48 7f e6    	vpermt2pd zmm20,zmm1,zmm22
  908f16:	62 81 fd 48 28 c3    	vmovapd zmm16,zmm27
  908f1c:	62 c2 fd 48 7f c4    	vpermt2pd zmm16,zmm0,zmm12
  908f22:	62 42 f5 48 7f dc    	vpermt2pd zmm27,zmm1,zmm12
  908f28:	62 31 fd 48 28 df    	vmovapd zmm11,zmm23
  908f2e:	62 52 fd 48 7f d8    	vpermt2pd zmm11,zmm0,zmm8
  908f34:	62 c2 f5 48 7f f8    	vpermt2pd zmm23,zmm1,zmm8
  908f3a:	62 31 fd 48 28 e5    	vmovapd zmm12,zmm21
  908f40:	62 52 fd 48 7f e0    	vpermt2pd zmm12,zmm0,zmm8
  908f46:	62 c2 f5 48 7f e8    	vpermt2pd zmm21,zmm1,zmm8
  908f4c:	62 c1 fd 48 28 ce    	vmovapd zmm17,zmm14
  908f52:	62 c2 ed 48 7f cb    	vpermt2pd zmm17,zmm2,zmm11
  908f58:	62 52 e5 48 7f f3    	vpermt2pd zmm14,zmm3,zmm11
  908f5e:	62 a1 fd 48 28 d8    	vmovapd zmm19,zmm16
  908f64:	62 c2 ed 48 7f dc    	vpermt2pd zmm19,zmm2,zmm12
  908f6a:	62 c2 e5 48 7f c4    	vpermt2pd zmm16,zmm3,zmm12
  908f70:	62 a2 ed 48 7f e7    	vpermt2pd zmm20,zmm2,zmm23
  908f76:	62 22 ed 48 7f dd    	vpermt2pd zmm27,zmm2,zmm21
  908f7c:	62 31 f5 40 14 db    	vunpcklpd zmm11,zmm17,zmm19
  908f82:	62 31 f5 40 15 e3    	vunpckhpd zmm12,zmm17,zmm19
  908f88:	62 a1 8d 48 14 d8    	vunpcklpd zmm19,zmm14,zmm16
  908f8e:	62 a1 8d 48 15 c0    	vunpckhpd zmm16,zmm14,zmm16
  908f94:	62 81 dd 40 14 cb    	vunpcklpd zmm17,zmm20,zmm27
  908f9a:	62 11 dd 40 15 f3    	vunpckhpd zmm14,zmm20,zmm27
  908fa0:	62 c1 fd 48 28 e5    	vmovapd zmm20,zmm13
  908fa6:	62 82 fd 48 7f e1    	vpermt2pd zmm20,zmm0,zmm25
  908fac:	62 12 f5 48 7f e9    	vpermt2pd zmm13,zmm1,zmm25
  908fb2:	62 a1 fd 48 28 ea    	vmovapd zmm21,zmm18
  908fb8:	62 82 fd 48 7f ea    	vpermt2pd zmm21,zmm0,zmm26
  908fbe:	62 82 f5 48 7f d2    	vpermt2pd zmm18,zmm1,zmm26
  908fc4:	62 81 fd 48 28 f0    	vmovapd zmm22,zmm24
  908fca:	62 c2 fd 48 7f f0    	vpermt2pd zmm22,zmm0,zmm8
  908fd0:	62 42 f5 48 7f c0    	vpermt2pd zmm24,zmm1,zmm8
  908fd6:	62 c1 fd 48 28 ff    	vmovapd zmm23,zmm15
  908fdc:	62 c2 fd 48 7f f8    	vpermt2pd zmm23,zmm0,zmm8
  908fe2:	62 52 f5 48 7f f8    	vpermt2pd zmm15,zmm1,zmm8
  908fe8:	62 21 fd 48 28 cc    	vmovapd zmm25,zmm20
  908fee:	62 22 ed 48 7f ce    	vpermt2pd zmm25,zmm2,zmm22
  908ff4:	62 a2 e5 48 7f e6    	vpermt2pd zmm20,zmm3,zmm22
  908ffa:	62 a1 fd 48 28 f5    	vmovapd zmm22,zmm21
  909000:	62 a2 ed 48 7f f7    	vpermt2pd zmm22,zmm2,zmm23
  909006:	62 a2 e5 48 7f ef    	vpermt2pd zmm21,zmm3,zmm23
  90900c:	62 12 ed 48 7f e8    	vpermt2pd zmm13,zmm2,zmm24
  909012:	62 c2 ed 48 7f d7    	vpermt2pd zmm18,zmm2,zmm15
  909018:	62 31 b5 40 14 fe    	vunpcklpd zmm15,zmm25,zmm22
  90901e:	62 a1 b5 40 15 f6    	vunpckhpd zmm22,zmm25,zmm22
  909024:	62 a1 dd 40 14 fd    	vunpcklpd zmm23,zmm20,zmm21
  90902a:	62 a1 dd 40 15 e5    	vunpckhpd zmm20,zmm20,zmm21
  909030:	62 a1 95 48 14 ea    	vunpcklpd zmm21,zmm13,zmm18
  909036:	62 a1 95 48 15 d2    	vunpckhpd zmm18,zmm13,zmm18
  90903c:	62 61 fd 48 10 41 04 	vmovupd zmm24,ZMMWORD PTR [rcx+0x100]
  909043:	62 61 fd 48 10 49 05 	vmovupd zmm25,ZMMWORD PTR [rcx+0x140]
  90904a:	62 11 e5 40 59 e8    	vmulpd zmm13,zmm19,zmm24
  909050:	62 12 c5 40 bc e9    	vfnmadd231pd zmm13,zmm23,zmm25
  909056:	62 81 c5 40 59 f8    	vmulpd zmm23,zmm23,zmm24
  90905c:	62 61 fd 48 10 41 08 	vmovupd zmm24,ZMMWORD PTR [rcx+0x200]
  909063:	62 82 e5 40 b8 f9    	vfmadd231pd zmm23,zmm19,zmm25
  909069:	62 e1 fd 48 10 59 09 	vmovupd zmm19,ZMMWORD PTR [rcx+0x240]
  909070:	62 01 f5 40 59 c8    	vmulpd zmm25,zmm17,zmm24
  909076:	62 22 d5 40 bc cb    	vfnmadd231pd zmm25,zmm21,zmm19
  90907c:	62 81 d5 40 59 e8    	vmulpd zmm21,zmm21,zmm24
  909082:	62 61 fd 48 10 41 06 	vmovupd zmm24,ZMMWORD PTR [rcx+0x180]
  909089:	62 a2 f5 40 b8 eb    	vfmadd231pd zmm21,zmm17,zmm19
  90908f:	62 e1 fd 48 10 49 07 	vmovupd zmm17,ZMMWORD PTR [rcx+0x1c0]
  909096:	62 81 fd 40 59 d8    	vmulpd zmm19,zmm16,zmm24
  90909c:	62 a2 dd 40 bc d9    	vfnmadd231pd zmm19,zmm20,zmm17
  9090a2:	62 81 dd 40 59 e0    	vmulpd zmm20,zmm20,zmm24
  9090a8:	62 61 fd 48 10 41 0a 	vmovupd zmm24,ZMMWORD PTR [rcx+0x280]
  9090af:	62 a2 fd 40 b8 e1    	vfmadd231pd zmm20,zmm16,zmm17
  9090b5:	62 e1 fd 48 10 41 0b 	vmovupd zmm16,ZMMWORD PTR [rcx+0x2c0]
  9090bc:	62 81 8d 48 59 c8    	vmulpd zmm17,zmm14,zmm24
  9090c2:	62 a2 ed 40 bc c8    	vfnmadd231pd zmm17,zmm18,zmm16
  9090c8:	62 81 ed 40 59 d0    	vmulpd zmm18,zmm18,zmm24
  9090ce:	62 61 fd 48 10 41 02 	vmovupd zmm24,ZMMWORD PTR [rcx+0x80]
  9090d5:	62 a2 8d 48 b8 d0    	vfmadd231pd zmm18,zmm14,zmm16
  9090db:	62 71 fd 48 10 71 03 	vmovupd zmm14,ZMMWORD PTR [rcx+0xc0]
  9090e2:	62 81 9d 48 59 c0    	vmulpd zmm16,zmm12,zmm24
  9090e8:	62 c2 cd 40 bc c6    	vfnmadd231pd zmm16,zmm22,zmm14
  9090ee:	62 81 cd 40 59 f0    	vmulpd zmm22,zmm22,zmm24
  9090f4:	62 01 95 48 58 c1    	vaddpd zmm24,zmm13,zmm25
  9090fa:	62 c2 9d 48 b8 f6    	vfmadd231pd zmm22,zmm12,zmm14
  909100:	62 11 a5 48 58 e0    	vaddpd zmm12,zmm11,zmm24
  909106:	62 31 f5 40 58 f0    	vaddpd zmm14,zmm17,zmm16
  90910c:	62 42 d5 48 ac c3    	vfnmadd213pd zmm24,zmm5,zmm11
  909112:	62 31 c5 40 58 dd    	vaddpd zmm11,zmm23,zmm21
  909118:	62 a1 c5 40 5c ed    	vsubpd zmm21,zmm23,zmm21
  90911e:	62 c1 e5 40 58 fe    	vaddpd zmm23,zmm19,zmm14
  909124:	62 c2 d5 48 bc de    	vfnmadd231pd zmm19,zmm5,zmm14
  90912a:	62 31 ed 40 58 f6    	vaddpd zmm14,zmm18,zmm22
  909130:	62 a1 ed 40 5c d6    	vsubpd zmm18,zmm18,zmm22
  909136:	62 c1 a5 48 58 f7    	vaddpd zmm22,zmm11,zmm15
  90913c:	62 52 d5 48 ac df    	vfnmadd213pd zmm11,zmm5,zmm15
  909142:	62 11 95 48 5c e9    	vsubpd zmm13,zmm13,zmm25
  909148:	62 51 dd 40 58 fe    	vaddpd zmm15,zmm20,zmm14
  90914e:	62 c2 d5 48 bc e6    	vfnmadd231pd zmm20,zmm5,zmm14
  909154:	62 71 d5 40 59 f6    	vmulpd zmm14,zmm21,zmm6
  90915a:	62 a1 f5 40 5c c0    	vsubpd zmm16,zmm17,zmm16
  909160:	62 c1 bd 40 58 ce    	vaddpd zmm17,zmm24,zmm14
  909166:	62 e1 ed 40 59 d6    	vmulpd zmm18,zmm18,zmm6
  90916c:	62 51 bd 40 5c f6    	vsubpd zmm14,zmm24,zmm14
  909172:	62 a1 e5 40 58 ea    	vaddpd zmm21,zmm19,zmm18
  909178:	62 71 95 48 59 ee    	vmulpd zmm13,zmm13,zmm6
  90917e:	62 a1 e5 40 5c d2    	vsubpd zmm18,zmm19,zmm18
  909184:	62 c1 a5 48 5c dd    	vsubpd zmm19,zmm11,zmm13
  90918a:	62 e1 fd 40 59 c6    	vmulpd zmm16,zmm16,zmm6
  909190:	62 51 95 48 58 db    	vaddpd zmm11,zmm13,zmm11
  909196:	62 31 dd 40 5c e8    	vsubpd zmm13,zmm20,zmm16
  90919c:	62 a1 dd 40 58 c0    	vaddpd zmm16,zmm20,zmm16
  9091a2:	62 a1 f5 40 5c e5    	vsubpd zmm20,zmm17,zmm21
  9091a8:	62 a1 f5 40 58 cd    	vaddpd zmm17,zmm17,zmm21
  9091ae:	62 c1 e5 40 5c ed    	vsubpd zmm21,zmm19,zmm13
  9091b4:	62 51 e5 40 58 ed    	vaddpd zmm13,zmm19,zmm13
  9091ba:	62 a1 8d 48 58 da    	vaddpd zmm19,zmm14,zmm18
  9091c0:	62 31 8d 48 5c f2    	vsubpd zmm14,zmm14,zmm18
  9091c6:	62 a1 a5 48 58 d0    	vaddpd zmm18,zmm11,zmm16
  9091cc:	62 31 a5 48 5c d8    	vsubpd zmm11,zmm11,zmm16
  9091d2:	62 c1 cd 40 5c c7    	vsubpd zmm16,zmm22,zmm15
  9091d8:	62 51 cd 40 58 ff    	vaddpd zmm15,zmm22,zmm15
  9091de:	62 a1 9d 48 5c f7    	vsubpd zmm22,zmm12,zmm23
  9091e4:	62 31 9d 48 58 e7    	vaddpd zmm12,zmm12,zmm23
  9091ea:	62 c1 fd 48 28 ff    	vmovapd zmm23,zmm15
  9091f0:	62 c2 b5 48 7f fc    	vpermt2pd zmm23,zmm9,zmm12
  9091f6:	62 52 ad 48 7f fc    	vpermt2pd zmm15,zmm10,zmm12
  9091fc:	62 71 fd 48 11 3c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1],zmm15
  909203:	62 e1 fd 28 11 7c 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x40],ymm23
  90920a:	02 
  90920b:	62 31 fd 48 28 e5    	vmovapd zmm12,zmm21
  909211:	62 32 b5 48 7f e4    	vpermt2pd zmm12,zmm9,zmm20
  909217:	62 a2 ad 48 7f ec    	vpermt2pd zmm21,zmm10,zmm20
  90921d:	62 e1 fd 48 11 ac 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x60],zmm21
  909224:	60 00 00 00 
  909228:	c5 7d 11 a4 16 a0 00 	vmovupd YMMWORD PTR [rsi+rdx*1+0xa0],ymm12
  90922f:	00 00 
  909231:	62 31 fd 48 28 e2    	vmovapd zmm12,zmm18
  909237:	62 32 b5 48 7f e3    	vpermt2pd zmm12,zmm9,zmm19
  90923d:	62 a2 ad 48 7f d3    	vpermt2pd zmm18,zmm10,zmm19
  909243:	62 e1 fd 48 11 54 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0xc0],zmm18
  90924a:	03 
  90924b:	c5 7d 11 a4 16 00 01 	vmovupd YMMWORD PTR [rsi+rdx*1+0x100],ymm12
  909252:	00 00 
  909254:	62 31 fd 48 28 e0    	vmovapd zmm12,zmm16
  90925a:	62 32 b5 48 7f e6    	vpermt2pd zmm12,zmm9,zmm22
  909260:	62 a2 ad 48 7f c6    	vpermt2pd zmm16,zmm10,zmm22
  909266:	62 e1 fd 48 11 84 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x120],zmm16
  90926d:	20 01 00 00 
  909271:	c5 7d 11 a4 16 60 01 	vmovupd YMMWORD PTR [rsi+rdx*1+0x160],ymm12
  909278:	00 00 
  90927a:	62 51 fd 48 28 e5    	vmovapd zmm12,zmm13
  909280:	62 32 b5 48 7f e1    	vpermt2pd zmm12,zmm9,zmm17
  909286:	62 32 ad 48 7f e9    	vpermt2pd zmm13,zmm10,zmm17
  90928c:	62 71 fd 48 11 6c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x180],zmm13
  909293:	06 
  909294:	c5 7d 11 a4 16 c0 01 	vmovupd YMMWORD PTR [rsi+rdx*1+0x1c0],ymm12
  90929b:	00 00 
  90929d:	62 51 fd 48 28 e3    	vmovapd zmm12,zmm11
  9092a3:	62 52 b5 48 7f e6    	vpermt2pd zmm12,zmm9,zmm14
  9092a9:	62 52 ad 48 7f de    	vpermt2pd zmm11,zmm10,zmm14
  9092af:	62 71 fd 48 11 9c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x1e0],zmm11
  9092b6:	e0 01 00 00 
  9092ba:	c5 7d 11 a4 16 20 02 	vmovupd YMMWORD PTR [rsi+rdx*1+0x220],ymm12
  9092c1:	00 00 
  9092c3:	48 81 c2 40 02 00 00 	add    rdx,0x240
  9092ca:	48 39 d0             	cmp    rax,rdx
  9092cd:	0f 85 6d fa ff ff    	jne    908d40 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle+0x80>
  9092d3:	c5 f8 77             	vzeroupper
  9092d6:	c3                   	ret
