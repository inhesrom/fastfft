
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000929ac0 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  929ac0:	62 f1 fd 48 10 05 9e 	vmovupd zmm0,ZMMWORD PTR [rip+0xffffffffff79d29e]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  929ac7:	d2 79 ff 
  929aca:	62 f1 fd 48 10 0d 14 	vmovupd zmm1,ZMMWORD PTR [rip+0xffffffffff79d214]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  929ad1:	d2 79 ff 
  929ad4:	62 f1 fd 48 10 15 4a 	vmovupd zmm2,ZMMWORD PTR [rip+0xffffffffff79d24a]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  929adb:	d2 79 ff 
  929ade:	48 69 c2 f0 00 00 00 	imul   rax,rdx,0xf0
  929ae5:	31 d2                	xor    edx,edx
  929ae7:	62 f1 fd 48 28 1d 0f 	vmovapd zmm3,ZMMWORD PTR [rip+0xffffffffff75790f]        # 81400 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xe8b0>
  929aee:	79 75 ff 
  929af1:	c5 d9 57 e4          	vxorpd xmm4,xmm4,xmm4
  929af5:	62 f2 fd 48 19 2d 59 	vbroadcastsd zmm5,QWORD PTR [rip+0xffffffffff74af59]        # 74a58 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f08>
  929afc:	af 74 ff 
  929aff:	62 f2 fd 48 19 35 0f 	vbroadcastsd zmm6,QWORD PTR [rip+0xffffffffff74b50f]        # 75018 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x24c8>
  929b06:	b5 74 ff 
  929b09:	62 f2 fd 48 19 3d b5 	vbroadcastsd zmm7,QWORD PTR [rip+0xffffffffff74acb5]        # 747c8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c78>
  929b10:	ac 74 ff 
  929b13:	62 72 fd 48 19 05 b3 	vbroadcastsd zmm8,QWORD PTR [rip+0xffffffffff74b0b3]        # 74bd0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2080>
  929b1a:	b0 74 ff 
  929b1d:	62 e2 fd 48 19 35 71 	vbroadcastsd zmm22,QWORD PTR [rip+0xffffffffff74af71]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  929b24:	af 74 ff 
  929b27:	62 71 fd 48 28 15 0f 	vmovapd zmm10,ZMMWORD PTR [rip+0xffffffffff75790f]        # 81440 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xe8f0>
  929b2e:	79 75 ff 
  929b31:	62 e2 fd 48 19 15 e5 	vbroadcastsd zmm18,QWORD PTR [rip+0xffffffffff74b0e5]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  929b38:	b0 74 ff 
  929b3b:	62 71 fd 48 28 25 3b 	vmovapd zmm12,ZMMWORD PTR [rip+0xffffffffff75793b]        # 81480 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xe930>
  929b42:	79 75 ff 
  929b45:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  929b4c:	00 00 00 00 
  929b50:	c5 7b 12 6c 17 28    	vmovddup xmm13,QWORD PTR [rdi+rdx*1+0x28]
  929b56:	c4 63 11 0d 6c 17 20 	vblendpd xmm13,xmm13,XMMWORD PTR [rdi+rdx*1+0x20],0x1
  929b5d:	01 
  929b5e:	c5 7d 10 34 17       	vmovupd ymm14,YMMWORD PTR [rdi+rdx*1]
  929b63:	c5 7d 10 7c 17 30    	vmovupd ymm15,YMMWORD PTR [rdi+rdx*1+0x30]
  929b69:	62 e1 fd 28 10 44 17 	vmovupd ymm16,YMMWORD PTR [rdi+rdx*1+0x60]
  929b70:	03 
  929b71:	62 e1 fd 28 10 8c 17 	vmovupd ymm17,YMMWORD PTR [rdi+rdx*1+0x90]
  929b78:	90 00 00 00 
  929b7c:	62 53 0d 48 18 ed 02 	vinsertf32x4 zmm13,zmm14,xmm13,0x2
  929b83:	62 51 fd 48 28 f5    	vmovapd zmm14,zmm13
  929b89:	62 72 e5 48 7f f4    	vpermt2pd zmm14,zmm3,zmm4
  929b8f:	c5 7b 12 5c 17 58    	vmovddup xmm11,QWORD PTR [rdi+rdx*1+0x58]
  929b95:	62 72 ad 48 7f ec    	vpermt2pd zmm13,zmm10,zmm4
  929b9b:	c4 63 21 0d 5c 17 50 	vblendpd xmm11,xmm11,XMMWORD PTR [rdi+rdx*1+0x50],0x1
  929ba2:	01 
  929ba3:	62 53 05 48 18 db 02 	vinsertf32x4 zmm11,zmm15,xmm11,0x2
  929baa:	62 c1 fd 48 28 db    	vmovapd zmm19,zmm11
  929bb0:	62 e2 e5 48 7f dc    	vpermt2pd zmm19,zmm3,zmm4
  929bb6:	c5 7b 12 bc 17 88 00 	vmovddup xmm15,QWORD PTR [rdi+rdx*1+0x88]
  929bbd:	00 00 
  929bbf:	62 72 ad 48 7f dc    	vpermt2pd zmm11,zmm10,zmm4
  929bc5:	c4 63 01 0d bc 17 80 	vblendpd xmm15,xmm15,XMMWORD PTR [rdi+rdx*1+0x80],0x1
  929bcc:	00 00 00 01 
  929bd0:	62 c3 7d 40 18 c7 02 	vinsertf32x4 zmm16,zmm16,xmm15,0x2
  929bd7:	62 a1 fd 48 28 e0    	vmovapd zmm20,zmm16
  929bdd:	62 e2 e5 48 7f e4    	vpermt2pd zmm20,zmm3,zmm4
  929be3:	c5 7b 12 bc 17 b8 00 	vmovddup xmm15,QWORD PTR [rdi+rdx*1+0xb8]
  929bea:	00 00 
  929bec:	62 e2 ad 48 7f c4    	vpermt2pd zmm16,zmm10,zmm4
  929bf2:	c4 63 01 0d bc 17 b0 	vblendpd xmm15,xmm15,XMMWORD PTR [rdi+rdx*1+0xb0],0x1
  929bf9:	00 00 00 01 
  929bfd:	62 c3 75 40 18 cf 02 	vinsertf32x4 zmm17,zmm17,xmm15,0x2
  929c04:	62 a1 fd 48 28 e9    	vmovapd zmm21,zmm17
  929c0a:	62 e2 e5 48 7f ec    	vpermt2pd zmm21,zmm3,zmm4
  929c10:	62 e2 ad 48 7f cc    	vpermt2pd zmm17,zmm10,zmm4
  929c16:	c5 7d 10 bc 17 c0 00 	vmovupd ymm15,YMMWORD PTR [rdi+rdx*1+0xc0]
  929c1d:	00 00 
  929c1f:	c5 7b 12 8c 17 e8 00 	vmovddup xmm9,QWORD PTR [rdi+rdx*1+0xe8]
  929c26:	00 00 
  929c28:	c4 63 31 0d 8c 17 e0 	vblendpd xmm9,xmm9,XMMWORD PTR [rdi+rdx*1+0xe0],0x1
  929c2f:	00 00 00 01 
  929c33:	62 53 05 48 18 c9 02 	vinsertf32x4 zmm9,zmm15,xmm9,0x2
  929c3a:	62 c1 fd 48 28 f9    	vmovapd zmm23,zmm9
  929c40:	62 e2 e5 48 7f fc    	vpermt2pd zmm23,zmm3,zmm4
  929c46:	62 72 ad 48 7f cc    	vpermt2pd zmm9,zmm10,zmm4
  929c4c:	62 41 a5 48 58 c1    	vaddpd zmm24,zmm11,zmm9
  929c52:	62 11 95 48 58 f8    	vaddpd zmm15,zmm13,zmm24
  929c58:	62 21 fd 40 58 c9    	vaddpd zmm25,zmm16,zmm17
  929c5e:	62 01 85 48 58 d1    	vaddpd zmm26,zmm15,zmm25
  929c64:	62 21 e5 40 58 df    	vaddpd zmm27,zmm19,zmm23
  929c6a:	62 11 8d 48 58 fb    	vaddpd zmm15,zmm14,zmm27
  929c70:	62 21 dd 40 58 e5    	vaddpd zmm28,zmm20,zmm21
  929c76:	62 11 85 48 58 fc    	vaddpd zmm15,zmm15,zmm28
  929c7c:	62 61 fd 48 28 ed    	vmovapd zmm29,zmm5
  929c82:	62 42 bd 40 a8 ed    	vfmadd213pd zmm29,zmm24,zmm13
  929c88:	62 62 b5 40 bc ee    	vfnmadd231pd zmm29,zmm25,zmm6
  929c8e:	62 a1 e5 40 5c df    	vsubpd zmm19,zmm19,zmm23
  929c94:	62 a1 dd 40 5c e5    	vsubpd zmm20,zmm20,zmm21
  929c9a:	62 e1 dd 40 59 ef    	vmulpd zmm21,zmm20,zmm7
  929ca0:	62 c2 e5 40 b8 e8    	vfmadd231pd zmm21,zmm19,zmm8
  929ca6:	62 a1 95 40 58 fd    	vaddpd zmm23,zmm29,zmm21
  929cac:	62 61 fd 48 28 f5    	vmovapd zmm30,zmm5
  929cb2:	62 42 a5 40 a8 f6    	vfmadd213pd zmm30,zmm27,zmm14
  929cb8:	62 62 9d 40 bc f6    	vfnmadd231pd zmm30,zmm28,zmm6
  929cbe:	62 51 a5 48 5c c9    	vsubpd zmm9,zmm11,zmm9
  929cc4:	62 31 fd 40 5c d9    	vsubpd zmm11,zmm16,zmm17
  929cca:	62 e1 a5 48 59 c7    	vmulpd zmm16,zmm11,zmm7
  929cd0:	62 c2 b5 48 b8 c0    	vfmadd231pd zmm16,zmm9,zmm8
  929cd6:	62 a1 8d 40 5c c8    	vsubpd zmm17,zmm30,zmm16
  929cdc:	62 12 cd 48 bc e8    	vfnmadd231pd zmm13,zmm6,zmm24
  929ce2:	62 12 d5 48 b8 e9    	vfmadd231pd zmm13,zmm5,zmm25
  929ce8:	62 e1 e5 40 59 df    	vmulpd zmm19,zmm19,zmm7
  929cee:	62 a2 bd 48 bc dc    	vfnmadd231pd zmm19,zmm8,zmm20
  929cf4:	62 a1 95 48 58 e3    	vaddpd zmm20,zmm13,zmm19
  929cfa:	62 12 cd 48 bc f3    	vfnmadd231pd zmm14,zmm6,zmm27
  929d00:	62 12 d5 48 b8 f4    	vfmadd231pd zmm14,zmm5,zmm28
  929d06:	62 71 b5 48 59 cf    	vmulpd zmm9,zmm9,zmm7
  929d0c:	62 52 bd 48 bc cb    	vfnmadd231pd zmm9,zmm8,zmm11
  929d12:	62 51 8d 48 5c d9    	vsubpd zmm11,zmm14,zmm9
  929d18:	62 31 95 48 5c eb    	vsubpd zmm13,zmm13,zmm19
  929d1e:	62 51 b5 48 58 ce    	vaddpd zmm9,zmm9,zmm14
  929d24:	62 31 95 40 5c f5    	vsubpd zmm14,zmm29,zmm21
  929d2a:	62 81 fd 40 58 c6    	vaddpd zmm16,zmm16,zmm30
  929d30:	62 42 fd 48 7f d6    	vpermt2pd zmm26,zmm0,zmm14
  929d36:	62 e2 fd 48 7f fc    	vpermt2pd zmm23,zmm0,zmm4
  929d3c:	62 e2 fd 48 7f e4    	vpermt2pd zmm20,zmm0,zmm4
  929d42:	62 72 fd 48 7f ec    	vpermt2pd zmm13,zmm0,zmm4
  929d48:	62 11 fd 48 28 f2    	vmovapd zmm14,zmm26
  929d4e:	62 32 f5 48 7f f4    	vpermt2pd zmm14,zmm1,zmm20
  929d54:	62 22 ed 48 7f d4    	vpermt2pd zmm26,zmm2,zmm20
  929d5a:	62 a1 fd 48 28 df    	vmovapd zmm19,zmm23
  929d60:	62 c2 f5 48 7f dd    	vpermt2pd zmm19,zmm1,zmm13
  929d66:	62 c2 ed 48 7f fd    	vpermt2pd zmm23,zmm2,zmm13
  929d6c:	62 31 ad 40 14 ef    	vunpcklpd zmm13,zmm26,zmm23
  929d72:	62 a1 8d 48 14 e3    	vunpcklpd zmm20,zmm14,zmm19
  929d78:	62 31 8d 48 15 f3    	vunpckhpd zmm14,zmm14,zmm19
  929d7e:	62 32 fd 48 7f f8    	vpermt2pd zmm15,zmm0,zmm16
  929d84:	62 e2 fd 48 7f cc    	vpermt2pd zmm17,zmm0,zmm4
  929d8a:	62 72 fd 48 7f dc    	vpermt2pd zmm11,zmm0,zmm4
  929d90:	62 72 fd 48 7f cc    	vpermt2pd zmm9,zmm0,zmm4
  929d96:	62 c1 fd 48 28 c7    	vmovapd zmm16,zmm15
  929d9c:	62 c2 f5 48 7f c3    	vpermt2pd zmm16,zmm1,zmm11
  929da2:	62 52 ed 48 7f fb    	vpermt2pd zmm15,zmm2,zmm11
  929da8:	62 31 fd 48 28 d9    	vmovapd zmm11,zmm17
  929dae:	62 52 f5 48 7f d9    	vpermt2pd zmm11,zmm1,zmm9
  929db4:	62 c2 ed 48 7f c9    	vpermt2pd zmm17,zmm2,zmm9
  929dba:	62 31 85 48 14 c9    	vunpcklpd zmm9,zmm15,zmm17
  929dc0:	62 51 fd 40 14 fb    	vunpcklpd zmm15,zmm16,zmm11
  929dc6:	62 51 fd 40 15 db    	vunpckhpd zmm11,zmm16,zmm11
  929dcc:	62 e1 fd 48 10 41 02 	vmovupd zmm16,ZMMWORD PTR [rcx+0x80]
  929dd3:	62 e1 fd 48 10 49 03 	vmovupd zmm17,ZMMWORD PTR [rcx+0xc0]
  929dda:	62 e1 fd 48 10 59 04 	vmovupd zmm19,ZMMWORD PTR [rcx+0x100]
  929de1:	62 e1 fd 48 10 69 05 	vmovupd zmm21,ZMMWORD PTR [rcx+0x140]
  929de8:	62 a1 8d 48 59 f8    	vmulpd zmm23,zmm14,zmm16
  929dee:	62 a2 a5 48 bc f9    	vfnmadd231pd zmm23,zmm11,zmm17
  929df4:	62 21 95 48 59 c3    	vmulpd zmm24,zmm13,zmm19
  929dfa:	62 22 b5 48 bc c5    	vfnmadd231pd zmm24,zmm9,zmm21
  929e00:	62 01 c5 40 58 c8    	vaddpd zmm25,zmm23,zmm24
  929e06:	62 31 a5 48 59 d8    	vmulpd zmm11,zmm11,zmm16
  929e0c:	62 32 8d 48 b8 d9    	vfmadd231pd zmm11,zmm14,zmm17
  929e12:	62 31 b5 48 59 cb    	vmulpd zmm9,zmm9,zmm19
  929e18:	62 32 95 48 b8 cd    	vfmadd231pd zmm9,zmm13,zmm21
  929e1e:	62 51 a5 48 58 e9    	vaddpd zmm13,zmm11,zmm9
  929e24:	62 31 fd 48 28 f6    	vmovapd zmm14,zmm22
  929e2a:	62 32 b5 40 ac f4    	vfnmadd213pd zmm14,zmm25,zmm20
  929e30:	62 51 a5 48 5c c9    	vsubpd zmm9,zmm11,zmm9
  929e36:	62 31 b5 48 59 ca    	vmulpd zmm9,zmm9,zmm18
  929e3c:	62 51 8d 48 58 d9    	vaddpd zmm11,zmm14,zmm9
  929e42:	62 a1 fd 48 28 c6    	vmovapd zmm16,zmm22
  929e48:	62 c2 95 48 ac c7    	vfnmadd213pd zmm16,zmm13,zmm15
  929e4e:	62 81 c5 40 5c c8    	vsubpd zmm17,zmm23,zmm24
  929e54:	62 a1 f5 40 59 ca    	vmulpd zmm17,zmm17,zmm18
  929e5a:	62 a1 fd 40 5c d9    	vsubpd zmm19,zmm16,zmm17
  929e60:	62 51 8d 48 5c c9    	vsubpd zmm9,zmm14,zmm9
  929e66:	62 31 fd 40 58 f1    	vaddpd zmm14,zmm16,zmm17
  929e6c:	62 51 85 48 58 ed    	vaddpd zmm13,zmm15,zmm13
  929e72:	62 11 dd 40 58 f9    	vaddpd zmm15,zmm20,zmm25
  929e78:	62 33 7d 48 19 e8 02 	vextractf32x4 xmm16,zmm13,0x2
  929e7f:	62 52 9d 48 7f ef    	vpermt2pd zmm13,zmm12,zmm15
  929e85:	62 71 fd 48 11 2c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1],zmm13
  929e8c:	62 53 7d 48 19 fd 02 	vextractf32x4 xmm13,zmm15,0x2
  929e93:	62 51 fd 00 14 ed    	vunpcklpd xmm13,xmm16,xmm13
  929e99:	c5 79 11 6c 16 40    	vmovupd XMMWORD PTR [rsi+rdx*1+0x40],xmm13
  929e9f:	62 c3 7d 48 19 dd 02 	vextractf32x4 xmm13,zmm19,0x2
  929ea6:	62 c2 9d 48 7f db    	vpermt2pd zmm19,zmm12,zmm11
  929eac:	62 e1 fd 48 11 9c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x50],zmm19
  929eb3:	50 00 00 00 
  929eb7:	62 53 7d 48 19 db 02 	vextractf32x4 xmm11,zmm11,0x2
  929ebe:	c4 41 11 14 db       	vunpcklpd xmm11,xmm13,xmm11
  929ec3:	c5 79 11 9c 16 90 00 	vmovupd XMMWORD PTR [rsi+rdx*1+0x90],xmm11
  929eca:	00 00 
  929ecc:	62 53 7d 48 19 f3 02 	vextractf32x4 xmm11,zmm14,0x2
  929ed3:	62 52 9d 48 7f f1    	vpermt2pd zmm14,zmm12,zmm9
  929ed9:	62 71 fd 48 11 b4 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0xa0],zmm14
  929ee0:	a0 00 00 00 
  929ee4:	62 53 7d 48 19 c9 02 	vextractf32x4 xmm9,zmm9,0x2
  929eeb:	c4 41 21 14 c9       	vunpcklpd xmm9,xmm11,xmm9
  929ef0:	c5 79 11 8c 16 e0 00 	vmovupd XMMWORD PTR [rsi+rdx*1+0xe0],xmm9
  929ef7:	00 00 
  929ef9:	48 81 c2 f0 00 00 00 	add    rdx,0xf0
  929f00:	48 39 d0             	cmp    rax,rdx
  929f03:	0f 85 47 fc ff ff    	jne    929b50 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle+0x90>
  929f09:	c5 f8 77             	vzeroupper
  929f0c:	c3                   	ret
