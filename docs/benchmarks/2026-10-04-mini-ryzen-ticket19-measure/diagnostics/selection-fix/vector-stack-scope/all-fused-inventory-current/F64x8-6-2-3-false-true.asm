
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000919d40 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  919d40:	62 f1 fd 48 10 05 1e 	vmovupd zmm0,ZMMWORD PTR [rip+0xffffffffff7ad01e]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  919d47:	d0 7a ff 
  919d4a:	c5 f1 57 c9          	vxorpd xmm1,xmm1,xmm1
  919d4e:	c5 e9 57 d2          	vxorpd xmm2,xmm2,xmm2
  919d52:	62 f2 fd 48 7f d2    	vpermt2pd zmm2,zmm0,zmm2
  919d58:	62 f1 fd 48 10 1d 86 	vmovupd zmm3,ZMMWORD PTR [rip+0xffffffffff7acf86]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  919d5f:	cf 7a ff 
  919d62:	62 f1 fd 48 10 25 bc 	vmovupd zmm4,ZMMWORD PTR [rip+0xffffffffff7acfbc]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  919d69:	cf 7a ff 
  919d6c:	48 c1 e2 05          	shl    rdx,0x5
  919d70:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  919d74:	31 d2                	xor    edx,edx
  919d76:	62 f1 fd 48 28 2d c0 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff7661c0]        # 7ff40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xd3f0>
  919d7d:	61 76 ff 
  919d80:	62 f2 fd 48 19 35 0e 	vbroadcastsd zmm6,QWORD PTR [rip+0xffffffffff75ad0e]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  919d87:	ad 75 ff 
  919d8a:	62 f1 fd 48 28 3d ec 	vmovapd zmm7,ZMMWORD PTR [rip+0xffffffffff7661ec]        # 7ff80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xd430>
  919d91:	61 76 ff 
  919d94:	c5 7d 28 05 c4 cd 75 	vmovapd ymm8,YMMWORD PTR [rip+0xffffffffff75cdc4]        # 76b60 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4010>
  919d9b:	ff 
  919d9c:	c4 62 7d 19 0d 7b ae 	vbroadcastsd ymm9,QWORD PTR [rip+0xffffffffff75ae7b]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  919da3:	75 ff 
  919da5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  919dac:	00 00 00 00 
  919db0:	c5 7b 12 54 17 28    	vmovddup xmm10,QWORD PTR [rdi+rdx*1+0x28]
  919db6:	c4 63 29 0d 54 17 20 	vblendpd xmm10,xmm10,XMMWORD PTR [rdi+rdx*1+0x20],0x1
  919dbd:	01 
  919dbe:	c5 7d 10 1c 17       	vmovupd ymm11,YMMWORD PTR [rdi+rdx*1]
  919dc3:	c5 7d 10 64 17 30    	vmovupd ymm12,YMMWORD PTR [rdi+rdx*1+0x30]
  919dc9:	62 53 25 48 18 d2 02 	vinsertf32x4 zmm10,zmm11,xmm10,0x2
  919dd0:	62 51 fd 48 28 da    	vmovapd zmm11,zmm10
  919dd6:	62 72 d5 48 7f d9    	vpermt2pd zmm11,zmm5,zmm1
  919ddc:	62 72 c5 48 7f d1    	vpermt2pd zmm10,zmm7,zmm1
  919de2:	c5 7b 12 6c 17 58    	vmovddup xmm13,QWORD PTR [rdi+rdx*1+0x58]
  919de8:	c4 63 11 0d 6c 17 50 	vblendpd xmm13,xmm13,XMMWORD PTR [rdi+rdx*1+0x50],0x1
  919def:	01 
  919df0:	62 53 1d 48 18 e5 02 	vinsertf32x4 zmm12,zmm12,xmm13,0x2
  919df7:	62 51 fd 48 28 ec    	vmovapd zmm13,zmm12
  919dfd:	62 72 d5 48 7f e9    	vpermt2pd zmm13,zmm5,zmm1
  919e03:	62 72 c5 48 7f e1    	vpermt2pd zmm12,zmm7,zmm1
  919e09:	62 51 a5 48 58 f5    	vaddpd zmm14,zmm11,zmm13
  919e0f:	62 51 ad 48 58 fc    	vaddpd zmm15,zmm10,zmm12
  919e15:	62 51 a5 48 5c dd    	vsubpd zmm11,zmm11,zmm13
  919e1b:	62 51 ad 48 5c d4    	vsubpd zmm10,zmm10,zmm12
  919e21:	62 72 fd 48 7f f1    	vpermt2pd zmm14,zmm0,zmm1
  919e27:	62 72 fd 48 7f d9    	vpermt2pd zmm11,zmm0,zmm1
  919e2d:	62 51 fd 48 28 e6    	vmovapd zmm12,zmm14
  919e33:	62 72 e5 48 7f e2    	vpermt2pd zmm12,zmm3,zmm2
  919e39:	62 72 dd 48 7f f2    	vpermt2pd zmm14,zmm4,zmm2
  919e3f:	62 51 fd 48 28 eb    	vmovapd zmm13,zmm11
  919e45:	62 72 e5 48 7f ea    	vpermt2pd zmm13,zmm3,zmm2
  919e4b:	62 72 dd 48 7f da    	vpermt2pd zmm11,zmm4,zmm2
  919e51:	62 51 8d 48 14 db    	vunpcklpd zmm11,zmm14,zmm11
  919e57:	62 51 9d 48 14 f5    	vunpcklpd zmm14,zmm12,zmm13
  919e5d:	62 51 9d 48 15 e5    	vunpckhpd zmm12,zmm12,zmm13
  919e63:	62 72 fd 48 7f f9    	vpermt2pd zmm15,zmm0,zmm1
  919e69:	62 72 fd 48 7f d1    	vpermt2pd zmm10,zmm0,zmm1
  919e6f:	62 51 fd 48 28 ef    	vmovapd zmm13,zmm15
  919e75:	62 72 e5 48 7f ea    	vpermt2pd zmm13,zmm3,zmm2
  919e7b:	62 72 dd 48 7f fa    	vpermt2pd zmm15,zmm4,zmm2
  919e81:	62 c1 fd 48 28 c2    	vmovapd zmm16,zmm10
  919e87:	62 e2 e5 48 7f c2    	vpermt2pd zmm16,zmm3,zmm2
  919e8d:	62 72 dd 48 7f d2    	vpermt2pd zmm10,zmm4,zmm2
  919e93:	62 51 85 48 14 d2    	vunpcklpd zmm10,zmm15,zmm10
  919e99:	62 31 95 48 14 f8    	vunpcklpd zmm15,zmm13,zmm16
  919e9f:	62 31 95 48 15 e8    	vunpckhpd zmm13,zmm13,zmm16
  919ea5:	62 e1 fd 48 10 41 02 	vmovupd zmm16,ZMMWORD PTR [rcx+0x80]
  919eac:	62 e1 fd 48 10 49 03 	vmovupd zmm17,ZMMWORD PTR [rcx+0xc0]
  919eb3:	62 e1 fd 48 10 51 04 	vmovupd zmm18,ZMMWORD PTR [rcx+0x100]
  919eba:	62 e1 fd 48 10 59 05 	vmovupd zmm19,ZMMWORD PTR [rcx+0x140]
  919ec1:	62 a1 9d 48 59 e0    	vmulpd zmm20,zmm12,zmm16
  919ec7:	62 a2 95 48 bc e1    	vfnmadd231pd zmm20,zmm13,zmm17
  919ecd:	62 a1 a5 48 59 ea    	vmulpd zmm21,zmm11,zmm18
  919ed3:	62 a2 ad 48 bc eb    	vfnmadd231pd zmm21,zmm10,zmm19
  919ed9:	62 a1 dd 40 58 f5    	vaddpd zmm22,zmm20,zmm21
  919edf:	62 31 95 48 59 e8    	vmulpd zmm13,zmm13,zmm16
  919ee5:	62 32 9d 48 b8 e9    	vfmadd231pd zmm13,zmm12,zmm17
  919eeb:	62 31 ad 48 59 d2    	vmulpd zmm10,zmm10,zmm18
  919ef1:	62 32 a5 48 b8 d3    	vfmadd231pd zmm10,zmm11,zmm19
  919ef7:	62 51 95 48 58 da    	vaddpd zmm11,zmm13,zmm10
  919efd:	62 71 fd 48 28 e6    	vmovapd zmm12,zmm6
  919f03:	62 52 cd 40 ac e6    	vfnmadd213pd zmm12,zmm22,zmm14
  919f09:	62 e1 fd 48 28 c6    	vmovapd zmm16,zmm6
  919f0f:	62 c2 a5 48 ac c7    	vfnmadd213pd zmm16,zmm11,zmm15
  919f15:	c4 41 05 58 db       	vaddpd ymm11,ymm15,ymm11
  919f1a:	62 31 8d 28 58 f6    	vaddpd ymm14,ymm14,ymm22
  919f20:	62 52 bd 28 7f f3    	vpermt2pd ymm14,ymm8,ymm11
  919f26:	c5 7d 11 34 16       	vmovupd YMMWORD PTR [rsi+rdx*1],ymm14
  919f2b:	62 31 dd 20 5c dd    	vsubpd ymm11,ymm20,ymm21
  919f31:	c4 41 25 59 d9       	vmulpd ymm11,ymm11,ymm9
  919f36:	62 51 fd 20 5c f3    	vsubpd ymm14,ymm16,ymm11
  919f3c:	c4 41 15 5c d2       	vsubpd ymm10,ymm13,ymm10
  919f41:	c4 41 2d 59 d1       	vmulpd ymm10,ymm10,ymm9
  919f46:	c4 41 1d 58 ea       	vaddpd ymm13,ymm12,ymm10
  919f4b:	62 52 bd 28 7f ee    	vpermt2pd ymm13,ymm8,ymm14
  919f51:	c5 7d 11 6c 16 20    	vmovupd YMMWORD PTR [rsi+rdx*1+0x20],ymm13
  919f57:	62 51 fd 20 58 db    	vaddpd ymm11,ymm16,ymm11
  919f5d:	c4 41 1d 5c d2       	vsubpd ymm10,ymm12,ymm10
  919f62:	62 52 bd 28 7f d3    	vpermt2pd ymm10,ymm8,ymm11
  919f68:	c5 7d 11 54 16 40    	vmovupd YMMWORD PTR [rsi+rdx*1+0x40],ymm10
  919f6e:	48 83 c2 60          	add    rdx,0x60
  919f72:	48 39 d0             	cmp    rax,rdx
  919f75:	0f 85 35 fe ff ff    	jne    919db0 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle+0x70>
  919f7b:	c5 f8 77             	vzeroupper
  919f7e:	c3                   	ret
