
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000918ac0 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  918ac0:	62 f1 fd 48 10 05 9e 	vmovupd zmm0,ZMMWORD PTR [rip+0xffffffffff7ae29e]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  918ac7:	e2 7a ff 
  918aca:	c5 f1 57 c9          	vxorpd xmm1,xmm1,xmm1
  918ace:	c5 e9 57 d2          	vxorpd xmm2,xmm2,xmm2
  918ad2:	62 f2 fd 48 7f d2    	vpermt2pd zmm2,zmm0,zmm2
  918ad8:	62 f1 fd 48 10 1d 06 	vmovupd zmm3,ZMMWORD PTR [rip+0xffffffffff7ae206]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  918adf:	e2 7a ff 
  918ae2:	62 f1 fd 48 10 25 3c 	vmovupd zmm4,ZMMWORD PTR [rip+0xffffffffff7ae23c]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  918ae9:	e2 7a ff 
  918aec:	48 c1 e2 05          	shl    rdx,0x5
  918af0:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  918af4:	31 d2                	xor    edx,edx
  918af6:	62 f1 fd 48 28 2d 40 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff767440]        # 7ff40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xd3f0>
  918afd:	74 76 ff 
  918b00:	62 f2 fd 48 19 35 8e 	vbroadcastsd zmm6,QWORD PTR [rip+0xffffffffff75bf8e]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  918b07:	bf 75 ff 
  918b0a:	62 f1 fd 48 28 3d 6c 	vmovapd zmm7,ZMMWORD PTR [rip+0xffffffffff76746c]        # 7ff80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xd430>
  918b11:	74 76 ff 
  918b14:	c5 7d 28 05 44 e0 75 	vmovapd ymm8,YMMWORD PTR [rip+0xffffffffff75e044]        # 76b60 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4010>
  918b1b:	ff 
  918b1c:	c4 62 7d 19 0d fb c0 	vbroadcastsd ymm9,QWORD PTR [rip+0xffffffffff75c0fb]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  918b23:	75 ff 
  918b25:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  918b2c:	00 00 00 00 
  918b30:	c5 7b 12 54 17 28    	vmovddup xmm10,QWORD PTR [rdi+rdx*1+0x28]
  918b36:	c4 63 29 0d 54 17 20 	vblendpd xmm10,xmm10,XMMWORD PTR [rdi+rdx*1+0x20],0x1
  918b3d:	01 
  918b3e:	c5 7d 10 1c 17       	vmovupd ymm11,YMMWORD PTR [rdi+rdx*1]
  918b43:	c5 7d 10 64 17 30    	vmovupd ymm12,YMMWORD PTR [rdi+rdx*1+0x30]
  918b49:	62 53 25 48 18 d2 02 	vinsertf32x4 zmm10,zmm11,xmm10,0x2
  918b50:	62 51 fd 48 28 da    	vmovapd zmm11,zmm10
  918b56:	62 72 d5 48 7f d9    	vpermt2pd zmm11,zmm5,zmm1
  918b5c:	62 72 c5 48 7f d1    	vpermt2pd zmm10,zmm7,zmm1
  918b62:	c5 7b 12 6c 17 58    	vmovddup xmm13,QWORD PTR [rdi+rdx*1+0x58]
  918b68:	c4 63 11 0d 6c 17 50 	vblendpd xmm13,xmm13,XMMWORD PTR [rdi+rdx*1+0x50],0x1
  918b6f:	01 
  918b70:	62 53 1d 48 18 e5 02 	vinsertf32x4 zmm12,zmm12,xmm13,0x2
  918b77:	62 51 fd 48 28 ec    	vmovapd zmm13,zmm12
  918b7d:	62 72 d5 48 7f e9    	vpermt2pd zmm13,zmm5,zmm1
  918b83:	62 72 c5 48 7f e1    	vpermt2pd zmm12,zmm7,zmm1
  918b89:	62 51 a5 48 58 f5    	vaddpd zmm14,zmm11,zmm13
  918b8f:	62 51 ad 48 58 fc    	vaddpd zmm15,zmm10,zmm12
  918b95:	62 51 a5 48 5c dd    	vsubpd zmm11,zmm11,zmm13
  918b9b:	62 51 ad 48 5c d4    	vsubpd zmm10,zmm10,zmm12
  918ba1:	62 72 fd 48 7f f1    	vpermt2pd zmm14,zmm0,zmm1
  918ba7:	62 72 fd 48 7f d9    	vpermt2pd zmm11,zmm0,zmm1
  918bad:	62 51 fd 48 28 e6    	vmovapd zmm12,zmm14
  918bb3:	62 72 e5 48 7f e2    	vpermt2pd zmm12,zmm3,zmm2
  918bb9:	62 72 dd 48 7f f2    	vpermt2pd zmm14,zmm4,zmm2
  918bbf:	62 51 fd 48 28 eb    	vmovapd zmm13,zmm11
  918bc5:	62 72 e5 48 7f ea    	vpermt2pd zmm13,zmm3,zmm2
  918bcb:	62 72 dd 48 7f da    	vpermt2pd zmm11,zmm4,zmm2
  918bd1:	62 51 8d 48 14 db    	vunpcklpd zmm11,zmm14,zmm11
  918bd7:	62 51 9d 48 14 f5    	vunpcklpd zmm14,zmm12,zmm13
  918bdd:	62 51 9d 48 15 e5    	vunpckhpd zmm12,zmm12,zmm13
  918be3:	62 72 fd 48 7f f9    	vpermt2pd zmm15,zmm0,zmm1
  918be9:	62 72 fd 48 7f d1    	vpermt2pd zmm10,zmm0,zmm1
  918bef:	62 51 fd 48 28 ef    	vmovapd zmm13,zmm15
  918bf5:	62 72 e5 48 7f ea    	vpermt2pd zmm13,zmm3,zmm2
  918bfb:	62 72 dd 48 7f fa    	vpermt2pd zmm15,zmm4,zmm2
  918c01:	62 c1 fd 48 28 c2    	vmovapd zmm16,zmm10
  918c07:	62 e2 e5 48 7f c2    	vpermt2pd zmm16,zmm3,zmm2
  918c0d:	62 72 dd 48 7f d2    	vpermt2pd zmm10,zmm4,zmm2
  918c13:	62 51 85 48 14 d2    	vunpcklpd zmm10,zmm15,zmm10
  918c19:	62 31 95 48 14 f8    	vunpcklpd zmm15,zmm13,zmm16
  918c1f:	62 31 95 48 15 e8    	vunpckhpd zmm13,zmm13,zmm16
  918c25:	62 e1 fd 48 10 41 02 	vmovupd zmm16,ZMMWORD PTR [rcx+0x80]
  918c2c:	62 e1 fd 48 10 49 03 	vmovupd zmm17,ZMMWORD PTR [rcx+0xc0]
  918c33:	62 e1 fd 48 10 51 04 	vmovupd zmm18,ZMMWORD PTR [rcx+0x100]
  918c3a:	62 e1 fd 48 10 59 05 	vmovupd zmm19,ZMMWORD PTR [rcx+0x140]
  918c41:	62 a1 9d 48 59 e0    	vmulpd zmm20,zmm12,zmm16
  918c47:	62 a2 95 48 bc e1    	vfnmadd231pd zmm20,zmm13,zmm17
  918c4d:	62 a1 a5 48 59 ea    	vmulpd zmm21,zmm11,zmm18
  918c53:	62 a2 ad 48 bc eb    	vfnmadd231pd zmm21,zmm10,zmm19
  918c59:	62 a1 dd 40 58 f5    	vaddpd zmm22,zmm20,zmm21
  918c5f:	62 31 95 48 59 e8    	vmulpd zmm13,zmm13,zmm16
  918c65:	62 32 9d 48 b8 e9    	vfmadd231pd zmm13,zmm12,zmm17
  918c6b:	62 31 ad 48 59 d2    	vmulpd zmm10,zmm10,zmm18
  918c71:	62 32 a5 48 b8 d3    	vfmadd231pd zmm10,zmm11,zmm19
  918c77:	62 51 95 48 58 da    	vaddpd zmm11,zmm13,zmm10
  918c7d:	62 71 fd 48 28 e6    	vmovapd zmm12,zmm6
  918c83:	62 52 cd 40 ac e6    	vfnmadd213pd zmm12,zmm22,zmm14
  918c89:	62 e1 fd 48 28 c6    	vmovapd zmm16,zmm6
  918c8f:	62 c2 a5 48 ac c7    	vfnmadd213pd zmm16,zmm11,zmm15
  918c95:	c4 41 05 58 db       	vaddpd ymm11,ymm15,ymm11
  918c9a:	62 31 8d 28 58 f6    	vaddpd ymm14,ymm14,ymm22
  918ca0:	62 52 bd 28 7f f3    	vpermt2pd ymm14,ymm8,ymm11
  918ca6:	c5 7d 11 34 16       	vmovupd YMMWORD PTR [rsi+rdx*1],ymm14
  918cab:	62 31 dd 20 5c dd    	vsubpd ymm11,ymm20,ymm21
  918cb1:	c4 41 25 59 d9       	vmulpd ymm11,ymm11,ymm9
  918cb6:	62 51 fd 20 5c f3    	vsubpd ymm14,ymm16,ymm11
  918cbc:	c4 41 15 5c d2       	vsubpd ymm10,ymm13,ymm10
  918cc1:	c4 41 2d 59 d1       	vmulpd ymm10,ymm10,ymm9
  918cc6:	c4 41 1d 58 ea       	vaddpd ymm13,ymm12,ymm10
  918ccb:	62 52 bd 28 7f ee    	vpermt2pd ymm13,ymm8,ymm14
  918cd1:	c5 7d 11 6c 16 20    	vmovupd YMMWORD PTR [rsi+rdx*1+0x20],ymm13
  918cd7:	62 51 fd 20 58 db    	vaddpd ymm11,ymm16,ymm11
  918cdd:	c4 41 1d 5c d2       	vsubpd ymm10,ymm12,ymm10
  918ce2:	62 52 bd 28 7f d3    	vpermt2pd ymm10,ymm8,ymm11
  918ce8:	c5 7d 11 54 16 40    	vmovupd YMMWORD PTR [rsi+rdx*1+0x40],ymm10
  918cee:	48 83 c2 60          	add    rdx,0x60
  918cf2:	48 39 d0             	cmp    rax,rdx
  918cf5:	0f 85 35 fe ff ff    	jne    918b30 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle+0x70>
  918cfb:	c5 f8 77             	vzeroupper
  918cfe:	c3                   	ret
