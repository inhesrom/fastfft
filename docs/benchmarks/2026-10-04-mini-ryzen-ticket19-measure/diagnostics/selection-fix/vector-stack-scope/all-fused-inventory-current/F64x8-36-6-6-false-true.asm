
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000966c00 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  966c00:	62 f1 fd 48 10 05 5e 	vmovupd zmm0,ZMMWORD PTR [rip+0xffffffffff76015e]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  966c07:	01 76 ff 
  966c0a:	62 f1 fd 48 10 0d 94 	vmovupd zmm1,ZMMWORD PTR [rip+0xffffffffff760194]        # c6da8 <crc32fast::table::CRC32_TABLE+0x9124>
  966c11:	01 76 ff 
  966c14:	62 f1 fd 48 10 15 ca 	vmovupd zmm2,ZMMWORD PTR [rip+0xffffffffff7600ca]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  966c1b:	00 76 ff 
  966c1e:	62 f1 fd 48 10 1d 00 	vmovupd zmm3,ZMMWORD PTR [rip+0xffffffffff760100]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  966c25:	01 76 ff 
  966c28:	48 c1 e2 06          	shl    rdx,0x6
  966c2c:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  966c30:	31 d2                	xor    edx,edx
  966c32:	62 f1 fd 48 28 25 c4 	vmovapd zmm4,ZMMWORD PTR [rip+0xffffffffff71f2c4]        # 85f00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x133b0>
  966c39:	f2 71 ff 
  966c3c:	62 f2 fd 48 19 2d 52 	vbroadcastsd zmm5,QWORD PTR [rip+0xffffffffff70de52]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  966c43:	de 70 ff 
  966c46:	62 f2 fd 48 19 35 d0 	vbroadcastsd zmm6,QWORD PTR [rip+0xffffffffff70dfd0]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  966c4d:	df 70 ff 
  966c50:	62 f1 fd 48 28 3d e6 	vmovapd zmm7,ZMMWORD PTR [rip+0xffffffffff71f2e6]        # 85f40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x133f0>
  966c57:	f2 71 ff 
  966c5a:	c4 41 39 57 c0       	vxorpd xmm8,xmm8,xmm8
  966c5f:	c5 7d 28 0d 99 00 71 	vmovapd ymm9,YMMWORD PTR [rip+0xffffffffff710099]        # 76d00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x41b0>
  966c66:	ff 
  966c67:	62 71 fd 48 28 15 0f 	vmovapd zmm10,ZMMWORD PTR [rip+0xffffffffff71f30f]        # 85f80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x13430>
  966c6e:	f3 71 ff 
  966c71:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  966c78:	0f 1f 84 00 00 00 00 
  966c7f:	00 
  966c80:	62 71 fd 48 10 1c 17 	vmovupd zmm11,ZMMWORD PTR [rdi+rdx*1]
  966c87:	c5 7d 10 6c 17 40    	vmovupd ymm13,YMMWORD PTR [rdi+rdx*1+0x40]
  966c8d:	62 51 fd 48 28 e3    	vmovapd zmm12,zmm11
  966c93:	62 52 dd 48 7f e5    	vpermt2pd zmm12,zmm4,zmm13
  966c99:	62 52 c5 48 7f dd    	vpermt2pd zmm11,zmm7,zmm13
  966c9f:	62 71 fd 48 10 ac 17 	vmovupd zmm13,ZMMWORD PTR [rdi+rdx*1+0x60]
  966ca6:	60 00 00 00 
  966caa:	c5 7d 10 b4 17 a0 00 	vmovupd ymm14,YMMWORD PTR [rdi+rdx*1+0xa0]
  966cb1:	00 00 
  966cb3:	62 c1 fd 48 28 c5    	vmovapd zmm16,zmm13
  966cb9:	62 c2 dd 48 7f c6    	vpermt2pd zmm16,zmm4,zmm14
  966cbf:	62 52 c5 48 7f ee    	vpermt2pd zmm13,zmm7,zmm14
  966cc5:	62 71 fd 48 10 7c 17 	vmovupd zmm15,ZMMWORD PTR [rdi+rdx*1+0xc0]
  966ccc:	03 
  966ccd:	c5 7d 10 b4 17 00 01 	vmovupd ymm14,YMMWORD PTR [rdi+rdx*1+0x100]
  966cd4:	00 00 
  966cd6:	62 c1 fd 48 28 cf    	vmovapd zmm17,zmm15
  966cdc:	62 c2 dd 48 7f ce    	vpermt2pd zmm17,zmm4,zmm14
  966ce2:	62 52 c5 48 7f fe    	vpermt2pd zmm15,zmm7,zmm14
  966ce8:	62 71 fd 48 10 b4 17 	vmovupd zmm14,ZMMWORD PTR [rdi+rdx*1+0x120]
  966cef:	20 01 00 00 
  966cf3:	62 e1 fd 28 10 54 17 	vmovupd ymm18,YMMWORD PTR [rdi+rdx*1+0x160]
  966cfa:	0b 
  966cfb:	62 c1 fd 48 28 de    	vmovapd zmm19,zmm14
  966d01:	62 a2 dd 48 7f da    	vpermt2pd zmm19,zmm4,zmm18
  966d07:	62 32 c5 48 7f f2    	vpermt2pd zmm14,zmm7,zmm18
  966d0d:	62 e1 fd 48 10 54 17 	vmovupd zmm18,ZMMWORD PTR [rdi+rdx*1+0x180]
  966d14:	06 
  966d15:	62 e1 fd 28 10 64 17 	vmovupd ymm20,YMMWORD PTR [rdi+rdx*1+0x1c0]
  966d1c:	0e 
  966d1d:	62 a1 fd 48 28 ea    	vmovapd zmm21,zmm18
  966d23:	62 a2 dd 48 7f ec    	vpermt2pd zmm21,zmm4,zmm20
  966d29:	62 a2 c5 48 7f d4    	vpermt2pd zmm18,zmm7,zmm20
  966d2f:	62 e1 fd 48 10 a4 17 	vmovupd zmm20,ZMMWORD PTR [rdi+rdx*1+0x1e0]
  966d36:	e0 01 00 00 
  966d3a:	62 e1 fd 28 10 74 17 	vmovupd ymm22,YMMWORD PTR [rdi+rdx*1+0x220]
  966d41:	11 
  966d42:	62 a1 fd 48 28 fc    	vmovapd zmm23,zmm20
  966d48:	62 a2 dd 48 7f fe    	vpermt2pd zmm23,zmm4,zmm22
  966d4e:	62 a2 c5 48 7f e6    	vpermt2pd zmm20,zmm7,zmm22
  966d54:	62 a1 f5 40 58 f5    	vaddpd zmm22,zmm17,zmm21
  966d5a:	62 21 9d 48 58 c6    	vaddpd zmm24,zmm12,zmm22
  966d60:	62 21 c5 40 58 c8    	vaddpd zmm25,zmm23,zmm16
  966d66:	62 32 d5 48 bc e6    	vfnmadd231pd zmm12,zmm5,zmm22
  966d6c:	62 a1 85 48 58 f2    	vaddpd zmm22,zmm15,zmm18
  966d72:	62 a1 85 48 5c d2    	vsubpd zmm18,zmm15,zmm18
  966d78:	62 01 e5 40 58 d1    	vaddpd zmm26,zmm19,zmm25
  966d7e:	62 82 d5 48 bc d9    	vfnmadd231pd zmm19,zmm5,zmm25
  966d84:	62 41 dd 40 58 cd    	vaddpd zmm25,zmm20,zmm13
  966d8a:	62 c1 dd 40 5c e5    	vsubpd zmm20,zmm20,zmm13
  966d90:	62 21 a5 48 58 de    	vaddpd zmm27,zmm11,zmm22
  966d96:	62 32 d5 48 bc de    	vfnmadd231pd zmm11,zmm5,zmm22
  966d9c:	62 11 bd 40 58 fa    	vaddpd zmm15,zmm24,zmm26
  966da2:	62 a1 f5 40 5c cd    	vsubpd zmm17,zmm17,zmm21
  966da8:	62 81 8d 48 58 e9    	vaddpd zmm21,zmm14,zmm25
  966dae:	62 12 d5 48 bc f1    	vfnmadd231pd zmm14,zmm5,zmm25
  966db4:	62 31 a5 40 58 ed    	vaddpd zmm13,zmm27,zmm21
  966dba:	62 e1 ed 40 59 d6    	vmulpd zmm18,zmm18,zmm6
  966dc0:	62 a1 c5 40 5c c0    	vsubpd zmm16,zmm23,zmm16
  966dc6:	62 a1 9d 48 58 f2    	vaddpd zmm22,zmm12,zmm18
  966dcc:	62 e1 dd 40 59 e6    	vmulpd zmm20,zmm20,zmm6
  966dd2:	62 31 9d 48 5c e2    	vsubpd zmm12,zmm12,zmm18
  966dd8:	62 a1 e5 40 58 fc    	vaddpd zmm23,zmm19,zmm20
  966dde:	62 e1 f5 40 59 ce    	vmulpd zmm17,zmm17,zmm6
  966de4:	62 a1 e5 40 5c dc    	vsubpd zmm19,zmm19,zmm20
  966dea:	62 21 a5 48 5c c9    	vsubpd zmm25,zmm11,zmm17
  966df0:	62 e1 fd 40 59 c6    	vmulpd zmm16,zmm16,zmm6
  966df6:	62 51 f5 40 58 db    	vaddpd zmm11,zmm17,zmm11
  966dfc:	62 a1 8d 48 5c c8    	vsubpd zmm17,zmm14,zmm16
  966e02:	62 51 fd 40 58 f6    	vaddpd zmm14,zmm16,zmm14
  966e08:	62 21 cd 40 5c e7    	vsubpd zmm28,zmm22,zmm23
  966e0e:	62 81 bd 40 5c c2    	vsubpd zmm16,zmm24,zmm26
  966e14:	62 a1 b5 40 5c d1    	vsubpd zmm18,zmm25,zmm17
  966e1a:	62 a1 a5 40 5c e5    	vsubpd zmm20,zmm27,zmm21
  966e20:	62 a1 9d 48 58 eb    	vaddpd zmm21,zmm12,zmm19
  966e26:	62 a1 cd 40 58 f7    	vaddpd zmm22,zmm22,zmm23
  966e2c:	62 c1 a5 48 58 fe    	vaddpd zmm23,zmm11,zmm14
  966e32:	62 21 b5 40 58 c1    	vaddpd zmm24,zmm25,zmm17
  966e38:	62 31 9d 48 5c e3    	vsubpd zmm12,zmm12,zmm19
  966e3e:	62 41 a5 48 5c ce    	vsubpd zmm25,zmm11,zmm14
  966e44:	62 51 fd 48 28 f7    	vmovapd zmm14,zmm15
  966e4a:	62 32 fd 48 7f f6    	vpermt2pd zmm14,zmm0,zmm22
  966e50:	62 32 f5 48 7f fe    	vpermt2pd zmm15,zmm1,zmm22
  966e56:	62 81 fd 48 28 cc    	vmovapd zmm17,zmm28
  966e5c:	62 c2 fd 48 7f cc    	vpermt2pd zmm17,zmm0,zmm12
  966e62:	62 42 f5 48 7f e4    	vpermt2pd zmm28,zmm1,zmm12
  966e68:	62 31 fd 48 28 dd    	vmovapd zmm11,zmm21
  966e6e:	62 52 fd 48 7f d8    	vpermt2pd zmm11,zmm0,zmm8
  966e74:	62 c2 f5 48 7f e8    	vpermt2pd zmm21,zmm1,zmm8
  966e7a:	62 31 fd 48 28 e0    	vmovapd zmm12,zmm16
  966e80:	62 52 fd 48 7f e0    	vpermt2pd zmm12,zmm0,zmm8
  966e86:	62 c2 f5 48 7f c0    	vpermt2pd zmm16,zmm1,zmm8
  966e8c:	62 c1 fd 48 28 de    	vmovapd zmm19,zmm14
  966e92:	62 c2 ed 48 7f db    	vpermt2pd zmm19,zmm2,zmm11
  966e98:	62 52 e5 48 7f f3    	vpermt2pd zmm14,zmm3,zmm11
  966e9e:	62 a1 fd 48 28 f1    	vmovapd zmm22,zmm17
  966ea4:	62 c2 ed 48 7f f4    	vpermt2pd zmm22,zmm2,zmm12
  966eaa:	62 c2 e5 48 7f cc    	vpermt2pd zmm17,zmm3,zmm12
  966eb0:	62 32 ed 48 7f fd    	vpermt2pd zmm15,zmm2,zmm21
  966eb6:	62 22 ed 48 7f e0    	vpermt2pd zmm28,zmm2,zmm16
  966ebc:	62 31 e5 40 14 de    	vunpcklpd zmm11,zmm19,zmm22
  966ec2:	62 31 e5 40 15 e6    	vunpckhpd zmm12,zmm19,zmm22
  966ec8:	62 a1 8d 48 14 d9    	vunpcklpd zmm19,zmm14,zmm17
  966ece:	62 a1 8d 48 15 c1    	vunpckhpd zmm16,zmm14,zmm17
  966ed4:	62 81 85 48 14 cc    	vunpcklpd zmm17,zmm15,zmm28
  966eda:	62 11 85 48 15 f4    	vunpckhpd zmm14,zmm15,zmm28
  966ee0:	62 c1 fd 48 28 ed    	vmovapd zmm21,zmm13
  966ee6:	62 82 fd 48 7f e8    	vpermt2pd zmm21,zmm0,zmm24
  966eec:	62 12 f5 48 7f e8    	vpermt2pd zmm13,zmm1,zmm24
  966ef2:	62 a1 fd 48 28 f2    	vmovapd zmm22,zmm18
  966ef8:	62 82 fd 48 7f f1    	vpermt2pd zmm22,zmm0,zmm25
  966efe:	62 82 f5 48 7f d1    	vpermt2pd zmm18,zmm1,zmm25
  966f04:	62 31 fd 48 28 ff    	vmovapd zmm15,zmm23
  966f0a:	62 52 fd 48 7f f8    	vpermt2pd zmm15,zmm0,zmm8
  966f10:	62 c2 f5 48 7f f8    	vpermt2pd zmm23,zmm1,zmm8
  966f16:	62 21 fd 48 28 c4    	vmovapd zmm24,zmm20
  966f1c:	62 42 fd 48 7f c0    	vpermt2pd zmm24,zmm0,zmm8
  966f22:	62 c2 f5 48 7f e0    	vpermt2pd zmm20,zmm1,zmm8
  966f28:	62 21 fd 48 28 cd    	vmovapd zmm25,zmm21
  966f2e:	62 42 ed 48 7f cf    	vpermt2pd zmm25,zmm2,zmm15
  966f34:	62 c2 e5 48 7f ef    	vpermt2pd zmm21,zmm3,zmm15
  966f3a:	62 21 fd 48 28 d6    	vmovapd zmm26,zmm22
  966f40:	62 02 ed 48 7f d0    	vpermt2pd zmm26,zmm2,zmm24
  966f46:	62 82 e5 48 7f f0    	vpermt2pd zmm22,zmm3,zmm24
  966f4c:	62 32 ed 48 7f ef    	vpermt2pd zmm13,zmm2,zmm23
  966f52:	62 a2 ed 48 7f d4    	vpermt2pd zmm18,zmm2,zmm20
  966f58:	62 11 b5 40 14 fa    	vunpcklpd zmm15,zmm25,zmm26
  966f5e:	62 81 b5 40 15 e2    	vunpckhpd zmm20,zmm25,zmm26
  966f64:	62 a1 d5 40 14 fe    	vunpcklpd zmm23,zmm21,zmm22
  966f6a:	62 a1 d5 40 15 ee    	vunpckhpd zmm21,zmm21,zmm22
  966f70:	62 a1 95 48 14 f2    	vunpcklpd zmm22,zmm13,zmm18
  966f76:	62 a1 95 48 15 d2    	vunpckhpd zmm18,zmm13,zmm18
  966f7c:	62 61 fd 48 10 41 04 	vmovupd zmm24,ZMMWORD PTR [rcx+0x100]
  966f83:	62 61 fd 48 10 49 05 	vmovupd zmm25,ZMMWORD PTR [rcx+0x140]
  966f8a:	62 11 e5 40 59 e8    	vmulpd zmm13,zmm19,zmm24
  966f90:	62 12 c5 40 bc e9    	vfnmadd231pd zmm13,zmm23,zmm25
  966f96:	62 81 c5 40 59 f8    	vmulpd zmm23,zmm23,zmm24
  966f9c:	62 61 fd 48 10 41 08 	vmovupd zmm24,ZMMWORD PTR [rcx+0x200]
  966fa3:	62 82 e5 40 b8 f9    	vfmadd231pd zmm23,zmm19,zmm25
  966fa9:	62 e1 fd 48 10 59 09 	vmovupd zmm19,ZMMWORD PTR [rcx+0x240]
  966fb0:	62 01 f5 40 59 c8    	vmulpd zmm25,zmm17,zmm24
  966fb6:	62 22 cd 40 bc cb    	vfnmadd231pd zmm25,zmm22,zmm19
  966fbc:	62 81 cd 40 59 f0    	vmulpd zmm22,zmm22,zmm24
  966fc2:	62 61 fd 48 10 41 06 	vmovupd zmm24,ZMMWORD PTR [rcx+0x180]
  966fc9:	62 a2 f5 40 b8 f3    	vfmadd231pd zmm22,zmm17,zmm19
  966fcf:	62 e1 fd 48 10 49 07 	vmovupd zmm17,ZMMWORD PTR [rcx+0x1c0]
  966fd6:	62 81 fd 40 59 d8    	vmulpd zmm19,zmm16,zmm24
  966fdc:	62 a2 d5 40 bc d9    	vfnmadd231pd zmm19,zmm21,zmm17
  966fe2:	62 81 d5 40 59 e8    	vmulpd zmm21,zmm21,zmm24
  966fe8:	62 61 fd 48 10 41 0a 	vmovupd zmm24,ZMMWORD PTR [rcx+0x280]
  966fef:	62 a2 fd 40 b8 e9    	vfmadd231pd zmm21,zmm16,zmm17
  966ff5:	62 e1 fd 48 10 41 0b 	vmovupd zmm16,ZMMWORD PTR [rcx+0x2c0]
  966ffc:	62 81 8d 48 59 c8    	vmulpd zmm17,zmm14,zmm24
  967002:	62 a2 ed 40 bc c8    	vfnmadd231pd zmm17,zmm18,zmm16
  967008:	62 81 ed 40 59 d0    	vmulpd zmm18,zmm18,zmm24
  96700e:	62 61 fd 48 10 41 02 	vmovupd zmm24,ZMMWORD PTR [rcx+0x80]
  967015:	62 a2 8d 48 b8 d0    	vfmadd231pd zmm18,zmm14,zmm16
  96701b:	62 71 fd 48 10 71 03 	vmovupd zmm14,ZMMWORD PTR [rcx+0xc0]
  967022:	62 81 9d 48 59 c0    	vmulpd zmm16,zmm12,zmm24
  967028:	62 c2 dd 40 bc c6    	vfnmadd231pd zmm16,zmm20,zmm14
  96702e:	62 81 dd 40 59 e0    	vmulpd zmm20,zmm20,zmm24
  967034:	62 01 95 48 58 c1    	vaddpd zmm24,zmm13,zmm25
  96703a:	62 c2 9d 48 b8 e6    	vfmadd231pd zmm20,zmm12,zmm14
  967040:	62 11 a5 48 58 e0    	vaddpd zmm12,zmm11,zmm24
  967046:	62 31 f5 40 58 f0    	vaddpd zmm14,zmm17,zmm16
  96704c:	62 42 d5 48 ac c3    	vfnmadd213pd zmm24,zmm5,zmm11
  967052:	62 31 c5 40 58 de    	vaddpd zmm11,zmm23,zmm22
  967058:	62 a1 c5 40 5c f6    	vsubpd zmm22,zmm23,zmm22
  96705e:	62 c1 e5 40 58 fe    	vaddpd zmm23,zmm19,zmm14
  967064:	62 c2 d5 48 bc de    	vfnmadd231pd zmm19,zmm5,zmm14
  96706a:	62 31 ed 40 58 f4    	vaddpd zmm14,zmm18,zmm20
  967070:	62 a1 ed 40 5c d4    	vsubpd zmm18,zmm18,zmm20
  967076:	62 c1 a5 48 58 e7    	vaddpd zmm20,zmm11,zmm15
  96707c:	62 52 d5 48 ac df    	vfnmadd213pd zmm11,zmm5,zmm15
  967082:	62 11 95 48 5c e9    	vsubpd zmm13,zmm13,zmm25
  967088:	62 51 d5 40 58 fe    	vaddpd zmm15,zmm21,zmm14
  96708e:	62 c2 d5 48 bc ee    	vfnmadd231pd zmm21,zmm5,zmm14
  967094:	62 71 cd 40 59 f6    	vmulpd zmm14,zmm22,zmm6
  96709a:	62 a1 f5 40 5c c0    	vsubpd zmm16,zmm17,zmm16
  9670a0:	62 c1 bd 40 58 ce    	vaddpd zmm17,zmm24,zmm14
  9670a6:	62 e1 ed 40 59 d6    	vmulpd zmm18,zmm18,zmm6
  9670ac:	62 51 bd 40 5c f6    	vsubpd zmm14,zmm24,zmm14
  9670b2:	62 a1 e5 40 58 f2    	vaddpd zmm22,zmm19,zmm18
  9670b8:	62 71 95 48 59 ee    	vmulpd zmm13,zmm13,zmm6
  9670be:	62 a1 e5 40 5c d2    	vsubpd zmm18,zmm19,zmm18
  9670c4:	62 c1 a5 48 5c dd    	vsubpd zmm19,zmm11,zmm13
  9670ca:	62 e1 fd 40 59 c6    	vmulpd zmm16,zmm16,zmm6
  9670d0:	62 51 95 48 58 db    	vaddpd zmm11,zmm13,zmm11
  9670d6:	62 31 d5 40 5c e8    	vsubpd zmm13,zmm21,zmm16
  9670dc:	62 a1 d5 40 58 c0    	vaddpd zmm16,zmm21,zmm16
  9670e2:	62 a1 f5 40 5c ee    	vsubpd zmm21,zmm17,zmm22
  9670e8:	62 a1 f5 40 58 ce    	vaddpd zmm17,zmm17,zmm22
  9670ee:	62 c1 e5 40 5c f5    	vsubpd zmm22,zmm19,zmm13
  9670f4:	62 51 e5 40 58 ed    	vaddpd zmm13,zmm19,zmm13
  9670fa:	62 a1 8d 48 58 da    	vaddpd zmm19,zmm14,zmm18
  967100:	62 31 8d 48 5c f2    	vsubpd zmm14,zmm14,zmm18
  967106:	62 a1 a5 48 58 d0    	vaddpd zmm18,zmm11,zmm16
  96710c:	62 31 a5 48 5c d8    	vsubpd zmm11,zmm11,zmm16
  967112:	62 a1 9d 48 5c c7    	vsubpd zmm16,zmm12,zmm23
  967118:	62 31 9d 48 58 e7    	vaddpd zmm12,zmm12,zmm23
  96711e:	62 c1 dd 40 5c ff    	vsubpd zmm23,zmm20,zmm15
  967124:	62 51 dd 40 58 ff    	vaddpd zmm15,zmm20,zmm15
  96712a:	62 c1 fd 48 28 e4    	vmovapd zmm20,zmm12
  967130:	62 c2 b5 48 7f e7    	vpermt2pd zmm20,zmm9,zmm15
  967136:	62 52 ad 48 7f e7    	vpermt2pd zmm12,zmm10,zmm15
  96713c:	62 71 fd 48 11 24 16 	vmovupd ZMMWORD PTR [rsi+rdx*1],zmm12
  967143:	62 e1 fd 28 11 64 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x40],ymm20
  96714a:	02 
  96714b:	62 31 fd 48 28 e5    	vmovapd zmm12,zmm21
  967151:	62 32 b5 48 7f e6    	vpermt2pd zmm12,zmm9,zmm22
  967157:	62 a2 ad 48 7f ee    	vpermt2pd zmm21,zmm10,zmm22
  96715d:	62 e1 fd 48 11 ac 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x60],zmm21
  967164:	60 00 00 00 
  967168:	c5 7d 11 a4 16 a0 00 	vmovupd YMMWORD PTR [rsi+rdx*1+0xa0],ymm12
  96716f:	00 00 
  967171:	62 31 fd 48 28 e3    	vmovapd zmm12,zmm19
  967177:	62 32 b5 48 7f e2    	vpermt2pd zmm12,zmm9,zmm18
  96717d:	62 a2 ad 48 7f da    	vpermt2pd zmm19,zmm10,zmm18
  967183:	62 e1 fd 48 11 5c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0xc0],zmm19
  96718a:	03 
  96718b:	c5 7d 11 a4 16 00 01 	vmovupd YMMWORD PTR [rsi+rdx*1+0x100],ymm12
  967192:	00 00 
  967194:	62 31 fd 48 28 e0    	vmovapd zmm12,zmm16
  96719a:	62 32 b5 48 7f e7    	vpermt2pd zmm12,zmm9,zmm23
  9671a0:	62 a2 ad 48 7f c7    	vpermt2pd zmm16,zmm10,zmm23
  9671a6:	62 e1 fd 48 11 84 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x120],zmm16
  9671ad:	20 01 00 00 
  9671b1:	c5 7d 11 a4 16 60 01 	vmovupd YMMWORD PTR [rsi+rdx*1+0x160],ymm12
  9671b8:	00 00 
  9671ba:	62 31 fd 48 28 e1    	vmovapd zmm12,zmm17
  9671c0:	62 52 b5 48 7f e5    	vpermt2pd zmm12,zmm9,zmm13
  9671c6:	62 c2 ad 48 7f cd    	vpermt2pd zmm17,zmm10,zmm13
  9671cc:	62 e1 fd 48 11 4c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x180],zmm17
  9671d3:	06 
  9671d4:	c5 7d 11 a4 16 c0 01 	vmovupd YMMWORD PTR [rsi+rdx*1+0x1c0],ymm12
  9671db:	00 00 
  9671dd:	62 51 fd 48 28 e6    	vmovapd zmm12,zmm14
  9671e3:	62 52 b5 48 7f e3    	vpermt2pd zmm12,zmm9,zmm11
  9671e9:	62 52 ad 48 7f f3    	vpermt2pd zmm14,zmm10,zmm11
  9671ef:	62 71 fd 48 11 b4 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x1e0],zmm14
  9671f6:	e0 01 00 00 
  9671fa:	c5 7d 11 a4 16 20 02 	vmovupd YMMWORD PTR [rsi+rdx*1+0x220],ymm12
  967201:	00 00 
  967203:	48 81 c2 40 02 00 00 	add    rdx,0x240
  96720a:	48 39 d0             	cmp    rax,rdx
  96720d:	0f 85 6d fa ff ff    	jne    966c80 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle+0x80>
  967213:	c5 f8 77             	vzeroupper
  967216:	c3                   	ret
