
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000ad2a80 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  ad2a80:	55                   	push   rbp
  ad2a81:	48 89 e5             	mov    rbp,rsp
  ad2a84:	53                   	push   rbx
  ad2a85:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  ad2a89:	48 81 ec 40 08 00 00 	sub    rsp,0x840
  ad2a90:	31 c0                	xor    eax,eax
  ad2a92:	c4 e2 7d 19 05 85 23 	vbroadcastsd ymm0,QWORD PTR [rip+0xffffffffff5a2385]        # 74e20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x22d0>
  ad2a99:	5a ff 
  ad2a9b:	c4 e2 7d 18 25 f8 28 	vbroadcastss ymm4,DWORD PTR [rip+0xffffffffff5a28f8]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  ad2aa2:	5a ff 
  ad2aa4:	c4 e2 7d 19 15 43 20 	vbroadcastsd ymm2,QWORD PTR [rip+0xffffffffff5a2043]        # 74af0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1fa0>
  ad2aab:	5a ff 
  ad2aad:	c4 e2 7d 18 1d c6 29 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff5a29c6]        # 7547c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x292c>
  ad2ab4:	5a ff 
  ad2ab6:	c4 e2 7d 18 2d 5d 28 	vbroadcastss ymm5,DWORD PTR [rip+0xffffffffff5a285d]        # 7531c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x27cc>
  ad2abd:	5a ff 
  ad2abf:	49 89 f8             	mov    r8,rdi
  ad2ac2:	e9 d2 04 00 00       	jmp    ad2f99 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x519>
  ad2ac7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  ad2ace:	00 00 
  ad2ad0:	48 ff c0             	inc    rax
  ad2ad3:	c5 fc 28 b4 24 80 00 	vmovaps ymm6,YMMWORD PTR [rsp+0x80]
  ad2ada:	00 00 
  ad2adc:	c5 7c 28 8c 24 00 01 	vmovaps ymm9,YMMWORD PTR [rsp+0x100]
  ad2ae3:	00 00 
  ad2ae5:	c5 7c 28 94 24 80 01 	vmovaps ymm10,YMMWORD PTR [rsp+0x180]
  ad2aec:	00 00 
  ad2aee:	c5 4c c6 de b1       	vshufps ymm11,ymm6,ymm6,0xb1
  ad2af3:	c5 cc 59 31          	vmulps ymm6,ymm6,YMMWORD PTR [rcx]
  ad2af7:	c4 e2 25 b8 71 20    	vfmadd231ps ymm6,ymm11,YMMWORD PTR [rcx+0x20]
  ad2afd:	c5 34 59 59 40       	vmulps ymm11,ymm9,YMMWORD PTR [rcx+0x40]
  ad2b02:	c4 41 34 c6 c9 b1    	vshufps ymm9,ymm9,ymm9,0xb1
  ad2b08:	c4 62 35 b8 59 60    	vfmadd231ps ymm11,ymm9,YMMWORD PTR [rcx+0x60]
  ad2b0e:	c4 41 2c c6 ca b1    	vshufps ymm9,ymm10,ymm10,0xb1
  ad2b14:	c5 2c 59 91 80 00 00 	vmulps ymm10,ymm10,YMMWORD PTR [rcx+0x80]
  ad2b1b:	00 
  ad2b1c:	c4 62 35 b8 91 a0 00 	vfmadd231ps ymm10,ymm9,YMMWORD PTR [rcx+0xa0]
  ad2b23:	00 00 
  ad2b25:	c5 7c 28 0c 24       	vmovaps ymm9,YMMWORD PTR [rsp]
  ad2b2a:	c5 7c 28 a4 24 00 02 	vmovaps ymm12,YMMWORD PTR [rsp+0x200]
  ad2b31:	00 00 
  ad2b33:	c5 1c 59 a9 c0 00 00 	vmulps ymm13,ymm12,YMMWORD PTR [rcx+0xc0]
  ad2b3a:	00 
  ad2b3b:	c4 41 1c c6 e4 b1    	vshufps ymm12,ymm12,ymm12,0xb1
  ad2b41:	c4 62 1d b8 a9 e0 00 	vfmadd231ps ymm13,ymm12,YMMWORD PTR [rcx+0xe0]
  ad2b48:	00 00 
  ad2b4a:	c5 14 58 e6          	vaddps ymm12,ymm13,ymm6
  ad2b4e:	c4 41 24 58 f2       	vaddps ymm14,ymm11,ymm10
  ad2b53:	c4 c1 4c 5c f5       	vsubps ymm6,ymm6,ymm13
  ad2b58:	c4 41 24 5c d2       	vsubps ymm10,ymm11,ymm10
  ad2b5d:	c4 e2 7d 18 0d 82 2b 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff5a2b82]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  ad2b64:	5a ff 
  ad2b66:	c5 7c 28 d9          	vmovaps ymm11,ymm1
  ad2b6a:	c4 42 1d a8 d9       	vfmadd213ps ymm11,ymm12,ymm9
  ad2b6f:	c4 62 0d b8 dd       	vfmadd231ps ymm11,ymm14,ymm5
  ad2b74:	c5 7c 28 ed          	vmovaps ymm13,ymm5
  ad2b78:	c4 42 1d a8 e9       	vfmadd213ps ymm13,ymm12,ymm9
  ad2b7d:	c4 62 0d b8 e9       	vfmadd231ps ymm13,ymm14,ymm1
  ad2b82:	c4 e2 7d 18 3d 15 28 	vbroadcastss ymm7,DWORD PTR [rip+0xffffffffff5a2815]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  ad2b89:	5a ff 
  ad2b8b:	c5 4c 59 ff          	vmulps ymm15,ymm6,ymm7
  ad2b8f:	c4 62 7d 18 05 c0 2b 	vbroadcastss ymm8,DWORD PTR [rip+0xffffffffff5a2bc0]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  ad2b96:	5a ff 
  ad2b98:	c4 42 2d b8 f8       	vfmadd231ps ymm15,ymm10,ymm8
  ad2b9d:	c4 41 04 c6 ff b1    	vshufps ymm15,ymm15,ymm15,0xb1
  ad2ba3:	62 e1 7c 28 28 05 13 	vmovaps ymm16,YMMWORD PTR [rip+0xffffffffff5a5a13]        # 785c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5a70>
  ad2baa:	5a 5a ff 
  ad2bad:	62 31 04 28 57 f8    	vxorps ymm15,ymm15,ymm16
  ad2bb3:	c5 bc 59 f6          	vmulps ymm6,ymm8,ymm6
  ad2bb7:	c4 c2 45 bc f2       	vfnmadd231ps ymm6,ymm7,ymm10
  ad2bbc:	c5 cc c6 f6 b1       	vshufps ymm6,ymm6,ymm6,0xb1
  ad2bc1:	62 b1 4c 28 57 f0    	vxorps ymm6,ymm6,ymm16
  ad2bc7:	c4 41 0c 58 d4       	vaddps ymm10,ymm14,ymm12
  ad2bcc:	c4 41 34 58 ca       	vaddps ymm9,ymm9,ymm10
  ad2bd1:	c4 41 24 58 d7       	vaddps ymm10,ymm11,ymm15
  ad2bd6:	c5 14 58 e6          	vaddps ymm12,ymm13,ymm6
  ad2bda:	c5 94 5c f6          	vsubps ymm6,ymm13,ymm6
  ad2bde:	c4 41 24 5c df       	vsubps ymm11,ymm11,ymm15
  ad2be3:	c4 21 7c 11 0c 8e    	vmovups YMMWORD PTR [rsi+r9*4],ymm9
  ad2be9:	c4 21 7c 11 94 8e 80 	vmovups YMMWORD PTR [rsi+r9*4+0x80],ymm10
  ad2bf0:	00 00 00 
  ad2bf3:	c4 21 7c 11 a4 8e 00 	vmovups YMMWORD PTR [rsi+r9*4+0x100],ymm12
  ad2bfa:	01 00 00 
  ad2bfd:	c4 a1 7c 11 b4 8e 80 	vmovups YMMWORD PTR [rsi+r9*4+0x180],ymm6
  ad2c04:	01 00 00 
  ad2c07:	c4 21 7c 11 9c 8e 00 	vmovups YMMWORD PTR [rsi+r9*4+0x200],ymm11
  ad2c0e:	02 00 00 
  ad2c11:	c5 fc 28 b4 24 a0 00 	vmovaps ymm6,YMMWORD PTR [rsp+0xa0]
  ad2c18:	00 00 
  ad2c1a:	c5 7c 28 8c 24 20 01 	vmovaps ymm9,YMMWORD PTR [rsp+0x120]
  ad2c21:	00 00 
  ad2c23:	c5 4c 59 91 00 01 00 	vmulps ymm10,ymm6,YMMWORD PTR [rcx+0x100]
  ad2c2a:	00 
  ad2c2b:	c5 cc c6 f6 b1       	vshufps ymm6,ymm6,ymm6,0xb1
  ad2c30:	c4 62 4d b8 91 20 01 	vfmadd231ps ymm10,ymm6,YMMWORD PTR [rcx+0x120]
  ad2c37:	00 00 
  ad2c39:	c4 c1 34 c6 f1 b1    	vshufps ymm6,ymm9,ymm9,0xb1
  ad2c3f:	c5 34 59 89 40 01 00 	vmulps ymm9,ymm9,YMMWORD PTR [rcx+0x140]
  ad2c46:	00 
  ad2c47:	c4 62 4d b8 89 60 01 	vfmadd231ps ymm9,ymm6,YMMWORD PTR [rcx+0x160]
  ad2c4e:	00 00 
  ad2c50:	c5 fc 28 b4 24 a0 01 	vmovaps ymm6,YMMWORD PTR [rsp+0x1a0]
  ad2c57:	00 00 
  ad2c59:	c5 4c c6 de b1       	vshufps ymm11,ymm6,ymm6,0xb1
  ad2c5e:	c5 cc 59 b1 80 01 00 	vmulps ymm6,ymm6,YMMWORD PTR [rcx+0x180]
  ad2c65:	00 
  ad2c66:	c4 e2 25 b8 b1 a0 01 	vfmadd231ps ymm6,ymm11,YMMWORD PTR [rcx+0x1a0]
  ad2c6d:	00 00 
  ad2c6f:	c5 7c 28 9c 24 20 02 	vmovaps ymm11,YMMWORD PTR [rsp+0x220]
  ad2c76:	00 00 
  ad2c78:	c4 41 24 c6 e3 b1    	vshufps ymm12,ymm11,ymm11,0xb1
  ad2c7e:	c5 24 59 99 c0 01 00 	vmulps ymm11,ymm11,YMMWORD PTR [rcx+0x1c0]
  ad2c85:	00 
  ad2c86:	c4 62 1d b8 99 e0 01 	vfmadd231ps ymm11,ymm12,YMMWORD PTR [rcx+0x1e0]
  ad2c8d:	00 00 
  ad2c8f:	c5 7c 28 64 24 20    	vmovaps ymm12,YMMWORD PTR [rsp+0x20]
  ad2c95:	c4 41 2c 58 eb       	vaddps ymm13,ymm10,ymm11
  ad2c9a:	c5 34 58 f6          	vaddps ymm14,ymm9,ymm6
  ad2c9e:	c4 41 2c 5c d3       	vsubps ymm10,ymm10,ymm11
  ad2ca3:	c5 b4 5c f6          	vsubps ymm6,ymm9,ymm6
  ad2ca7:	c5 7c 28 c9          	vmovaps ymm9,ymm1
  ad2cab:	c4 42 15 a8 cc       	vfmadd213ps ymm9,ymm13,ymm12
  ad2cb0:	c4 62 0d b8 cd       	vfmadd231ps ymm9,ymm14,ymm5
  ad2cb5:	c5 7c 28 dd          	vmovaps ymm11,ymm5
  ad2cb9:	c4 42 15 a8 dc       	vfmadd213ps ymm11,ymm13,ymm12
  ad2cbe:	c4 62 0d b8 d9       	vfmadd231ps ymm11,ymm14,ymm1
  ad2cc3:	c5 2c 59 ff          	vmulps ymm15,ymm10,ymm7
  ad2cc7:	c4 42 4d b8 f8       	vfmadd231ps ymm15,ymm6,ymm8
  ad2ccc:	c4 41 04 c6 ff b1    	vshufps ymm15,ymm15,ymm15,0xb1
  ad2cd2:	62 31 04 28 57 f8    	vxorps ymm15,ymm15,ymm16
  ad2cd8:	c4 41 2c 59 d0       	vmulps ymm10,ymm10,ymm8
  ad2cdd:	c4 62 45 bc d6       	vfnmadd231ps ymm10,ymm7,ymm6
  ad2ce2:	c4 c1 2c c6 f2 b1    	vshufps ymm6,ymm10,ymm10,0xb1
  ad2ce8:	62 b1 4c 28 57 f0    	vxorps ymm6,ymm6,ymm16
  ad2cee:	c4 41 0c 58 d5       	vaddps ymm10,ymm14,ymm13
  ad2cf3:	c4 41 1c 58 d2       	vaddps ymm10,ymm12,ymm10
  ad2cf8:	c4 41 34 58 e7       	vaddps ymm12,ymm9,ymm15
  ad2cfd:	c5 24 58 ee          	vaddps ymm13,ymm11,ymm6
  ad2d01:	c5 a4 5c f6          	vsubps ymm6,ymm11,ymm6
  ad2d05:	c4 41 34 5c cf       	vsubps ymm9,ymm9,ymm15
  ad2d0a:	c4 21 7c 11 54 8e 20 	vmovups YMMWORD PTR [rsi+r9*4+0x20],ymm10
  ad2d11:	c4 21 7c 11 a4 8e a0 	vmovups YMMWORD PTR [rsi+r9*4+0xa0],ymm12
  ad2d18:	00 00 00 
  ad2d1b:	c4 21 7c 11 ac 8e 20 	vmovups YMMWORD PTR [rsi+r9*4+0x120],ymm13
  ad2d22:	01 00 00 
  ad2d25:	c4 a1 7c 11 b4 8e a0 	vmovups YMMWORD PTR [rsi+r9*4+0x1a0],ymm6
  ad2d2c:	01 00 00 
  ad2d2f:	c4 21 7c 11 8c 8e 20 	vmovups YMMWORD PTR [rsi+r9*4+0x220],ymm9
  ad2d36:	02 00 00 
  ad2d39:	c5 fc 28 b4 24 c0 00 	vmovaps ymm6,YMMWORD PTR [rsp+0xc0]
  ad2d40:	00 00 
  ad2d42:	c5 7c 28 8c 24 40 01 	vmovaps ymm9,YMMWORD PTR [rsp+0x140]
  ad2d49:	00 00 
  ad2d4b:	c5 7c 28 94 24 c0 01 	vmovaps ymm10,YMMWORD PTR [rsp+0x1c0]
  ad2d52:	00 00 
  ad2d54:	c5 4c c6 de b1       	vshufps ymm11,ymm6,ymm6,0xb1
  ad2d59:	c5 cc 59 b1 00 02 00 	vmulps ymm6,ymm6,YMMWORD PTR [rcx+0x200]
  ad2d60:	00 
  ad2d61:	c4 e2 25 b8 b1 20 02 	vfmadd231ps ymm6,ymm11,YMMWORD PTR [rcx+0x220]
  ad2d68:	00 00 
  ad2d6a:	c5 34 59 99 40 02 00 	vmulps ymm11,ymm9,YMMWORD PTR [rcx+0x240]
  ad2d71:	00 
  ad2d72:	c4 41 34 c6 c9 b1    	vshufps ymm9,ymm9,ymm9,0xb1
  ad2d78:	c4 62 35 b8 99 60 02 	vfmadd231ps ymm11,ymm9,YMMWORD PTR [rcx+0x260]
  ad2d7f:	00 00 
  ad2d81:	c4 41 2c c6 ca b1    	vshufps ymm9,ymm10,ymm10,0xb1
  ad2d87:	c5 2c 59 91 80 02 00 	vmulps ymm10,ymm10,YMMWORD PTR [rcx+0x280]
  ad2d8e:	00 
  ad2d8f:	c4 62 35 b8 91 a0 02 	vfmadd231ps ymm10,ymm9,YMMWORD PTR [rcx+0x2a0]
  ad2d96:	00 00 
  ad2d98:	c5 7c 28 4c 24 40    	vmovaps ymm9,YMMWORD PTR [rsp+0x40]
  ad2d9e:	c5 7c 28 a4 24 40 02 	vmovaps ymm12,YMMWORD PTR [rsp+0x240]
  ad2da5:	00 00 
  ad2da7:	c5 1c 59 a9 c0 02 00 	vmulps ymm13,ymm12,YMMWORD PTR [rcx+0x2c0]
  ad2dae:	00 
  ad2daf:	c4 41 1c c6 e4 b1    	vshufps ymm12,ymm12,ymm12,0xb1
  ad2db5:	c4 62 1d b8 a9 e0 02 	vfmadd231ps ymm13,ymm12,YMMWORD PTR [rcx+0x2e0]
  ad2dbc:	00 00 
  ad2dbe:	c5 14 58 e6          	vaddps ymm12,ymm13,ymm6
  ad2dc2:	c4 41 24 58 f2       	vaddps ymm14,ymm11,ymm10
  ad2dc7:	c4 c1 4c 5c f5       	vsubps ymm6,ymm6,ymm13
  ad2dcc:	c4 41 24 5c d2       	vsubps ymm10,ymm11,ymm10
  ad2dd1:	c5 7c 28 d9          	vmovaps ymm11,ymm1
  ad2dd5:	c4 42 1d a8 d9       	vfmadd213ps ymm11,ymm12,ymm9
  ad2dda:	c4 62 0d b8 dd       	vfmadd231ps ymm11,ymm14,ymm5
  ad2ddf:	c5 7c 28 ed          	vmovaps ymm13,ymm5
  ad2de3:	c4 42 1d a8 e9       	vfmadd213ps ymm13,ymm12,ymm9
  ad2de8:	c4 62 0d b8 e9       	vfmadd231ps ymm13,ymm14,ymm1
  ad2ded:	c5 4c 59 ff          	vmulps ymm15,ymm6,ymm7
  ad2df1:	c4 42 2d b8 f8       	vfmadd231ps ymm15,ymm10,ymm8
  ad2df6:	c4 41 04 c6 ff b1    	vshufps ymm15,ymm15,ymm15,0xb1
  ad2dfc:	62 31 04 28 57 f8    	vxorps ymm15,ymm15,ymm16
  ad2e02:	c5 bc 59 f6          	vmulps ymm6,ymm8,ymm6
  ad2e06:	c4 c2 45 bc f2       	vfnmadd231ps ymm6,ymm7,ymm10
  ad2e0b:	c5 cc c6 f6 b1       	vshufps ymm6,ymm6,ymm6,0xb1
  ad2e10:	62 b1 4c 28 57 f0    	vxorps ymm6,ymm6,ymm16
  ad2e16:	c4 41 0c 58 d4       	vaddps ymm10,ymm14,ymm12
  ad2e1b:	c4 41 34 58 ca       	vaddps ymm9,ymm9,ymm10
  ad2e20:	c4 41 24 58 d7       	vaddps ymm10,ymm11,ymm15
  ad2e25:	c5 14 58 e6          	vaddps ymm12,ymm13,ymm6
  ad2e29:	c5 94 5c f6          	vsubps ymm6,ymm13,ymm6
  ad2e2d:	c4 41 24 5c df       	vsubps ymm11,ymm11,ymm15
  ad2e32:	c4 21 7c 11 4c 8e 40 	vmovups YMMWORD PTR [rsi+r9*4+0x40],ymm9
  ad2e39:	c4 21 7c 11 94 8e c0 	vmovups YMMWORD PTR [rsi+r9*4+0xc0],ymm10
  ad2e40:	00 00 00 
  ad2e43:	c4 21 7c 11 a4 8e 40 	vmovups YMMWORD PTR [rsi+r9*4+0x140],ymm12
  ad2e4a:	01 00 00 
  ad2e4d:	c4 a1 7c 11 b4 8e c0 	vmovups YMMWORD PTR [rsi+r9*4+0x1c0],ymm6
  ad2e54:	01 00 00 
  ad2e57:	c4 21 7c 11 9c 8e 40 	vmovups YMMWORD PTR [rsi+r9*4+0x240],ymm11
  ad2e5e:	02 00 00 
  ad2e61:	c5 fc 28 b4 24 e0 00 	vmovaps ymm6,YMMWORD PTR [rsp+0xe0]
  ad2e68:	00 00 
  ad2e6a:	c5 7c 28 8c 24 60 01 	vmovaps ymm9,YMMWORD PTR [rsp+0x160]
  ad2e71:	00 00 
  ad2e73:	c5 4c 59 91 00 03 00 	vmulps ymm10,ymm6,YMMWORD PTR [rcx+0x300]
  ad2e7a:	00 
  ad2e7b:	c5 cc c6 f6 b1       	vshufps ymm6,ymm6,ymm6,0xb1
  ad2e80:	c4 62 4d b8 91 20 03 	vfmadd231ps ymm10,ymm6,YMMWORD PTR [rcx+0x320]
  ad2e87:	00 00 
  ad2e89:	c4 c1 34 c6 f1 b1    	vshufps ymm6,ymm9,ymm9,0xb1
  ad2e8f:	c5 34 59 89 40 03 00 	vmulps ymm9,ymm9,YMMWORD PTR [rcx+0x340]
  ad2e96:	00 
  ad2e97:	c4 62 4d b8 89 60 03 	vfmadd231ps ymm9,ymm6,YMMWORD PTR [rcx+0x360]
  ad2e9e:	00 00 
  ad2ea0:	c5 fc 28 b4 24 e0 01 	vmovaps ymm6,YMMWORD PTR [rsp+0x1e0]
  ad2ea7:	00 00 
  ad2ea9:	c5 4c c6 de b1       	vshufps ymm11,ymm6,ymm6,0xb1
  ad2eae:	c5 cc 59 b1 80 03 00 	vmulps ymm6,ymm6,YMMWORD PTR [rcx+0x380]
  ad2eb5:	00 
  ad2eb6:	c4 e2 25 b8 b1 a0 03 	vfmadd231ps ymm6,ymm11,YMMWORD PTR [rcx+0x3a0]
  ad2ebd:	00 00 
  ad2ebf:	c5 7c 28 9c 24 60 02 	vmovaps ymm11,YMMWORD PTR [rsp+0x260]
  ad2ec6:	00 00 
  ad2ec8:	c4 41 24 c6 e3 b1    	vshufps ymm12,ymm11,ymm11,0xb1
  ad2ece:	c5 24 59 99 c0 03 00 	vmulps ymm11,ymm11,YMMWORD PTR [rcx+0x3c0]
  ad2ed5:	00 
  ad2ed6:	c4 62 1d b8 99 e0 03 	vfmadd231ps ymm11,ymm12,YMMWORD PTR [rcx+0x3e0]
  ad2edd:	00 00 
  ad2edf:	c5 7c 28 64 24 60    	vmovaps ymm12,YMMWORD PTR [rsp+0x60]
  ad2ee5:	c4 41 2c 58 eb       	vaddps ymm13,ymm10,ymm11
  ad2eea:	c5 34 58 f6          	vaddps ymm14,ymm9,ymm6
  ad2eee:	c4 41 2c 5c d3       	vsubps ymm10,ymm10,ymm11
  ad2ef3:	c5 b4 5c f6          	vsubps ymm6,ymm9,ymm6
  ad2ef7:	c5 7c 28 c9          	vmovaps ymm9,ymm1
  ad2efb:	c4 42 15 a8 cc       	vfmadd213ps ymm9,ymm13,ymm12
  ad2f00:	c4 62 0d b8 cd       	vfmadd231ps ymm9,ymm14,ymm5
  ad2f05:	c5 7c 28 dd          	vmovaps ymm11,ymm5
  ad2f09:	c4 42 15 a8 dc       	vfmadd213ps ymm11,ymm13,ymm12
  ad2f0e:	c4 62 0d b8 d9       	vfmadd231ps ymm11,ymm14,ymm1
  ad2f13:	c5 2c 59 ff          	vmulps ymm15,ymm10,ymm7
  ad2f17:	c4 42 4d b8 f8       	vfmadd231ps ymm15,ymm6,ymm8
  ad2f1c:	c4 41 04 c6 ff b1    	vshufps ymm15,ymm15,ymm15,0xb1
  ad2f22:	62 31 04 28 57 f8    	vxorps ymm15,ymm15,ymm16
  ad2f28:	c4 41 2c 59 d0       	vmulps ymm10,ymm10,ymm8
  ad2f2d:	c4 62 45 bc d6       	vfnmadd231ps ymm10,ymm7,ymm6
  ad2f32:	c4 c1 2c c6 f2 b1    	vshufps ymm6,ymm10,ymm10,0xb1
  ad2f38:	62 b1 4c 28 57 f0    	vxorps ymm6,ymm6,ymm16
  ad2f3e:	c4 41 0c 58 d5       	vaddps ymm10,ymm14,ymm13
  ad2f43:	c4 41 1c 58 d2       	vaddps ymm10,ymm12,ymm10
  ad2f48:	c4 41 34 58 e7       	vaddps ymm12,ymm9,ymm15
  ad2f4d:	c5 24 58 ee          	vaddps ymm13,ymm11,ymm6
  ad2f51:	c5 a4 5c f6          	vsubps ymm6,ymm11,ymm6
  ad2f55:	c4 41 34 5c cf       	vsubps ymm9,ymm9,ymm15
  ad2f5a:	c4 21 7c 11 54 8e 60 	vmovups YMMWORD PTR [rsi+r9*4+0x60],ymm10
  ad2f61:	c4 21 7c 11 a4 8e e0 	vmovups YMMWORD PTR [rsi+r9*4+0xe0],ymm12
  ad2f68:	00 00 00 
  ad2f6b:	c4 21 7c 11 ac 8e 60 	vmovups YMMWORD PTR [rsi+r9*4+0x160],ymm13
  ad2f72:	01 00 00 
  ad2f75:	c4 a1 7c 11 b4 8e e0 	vmovups YMMWORD PTR [rsi+r9*4+0x1e0],ymm6
  ad2f7c:	01 00 00 
  ad2f7f:	c4 21 7c 11 8c 8e 60 	vmovups YMMWORD PTR [rsi+r9*4+0x260],ymm9
  ad2f86:	02 00 00 
  ad2f89:	49 81 c0 80 02 00 00 	add    r8,0x280
  ad2f90:	48 39 d0             	cmp    rax,rdx
  ad2f93:	0f 84 b7 05 00 00    	je     ad3550 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0xad0>
  ad2f99:	49 89 c1             	mov    r9,rax
  ad2f9c:	49 c1 e1 05          	shl    r9,0x5
  ad2fa0:	4f 8d 0c 89          	lea    r9,[r9+r9*4]
  ad2fa4:	c5 7c 10 89 00 04 00 	vmovups ymm9,YMMWORD PTR [rcx+0x400]
  ad2fab:	00 
  ad2fac:	c5 7c 10 91 20 04 00 	vmovups ymm10,YMMWORD PTR [rcx+0x420]
  ad2fb3:	00 
  ad2fb4:	c5 7c 10 99 40 04 00 	vmovups ymm11,YMMWORD PTR [rcx+0x440]
  ad2fbb:	00 
  ad2fbc:	c5 7c 10 a1 60 04 00 	vmovups ymm12,YMMWORD PTR [rcx+0x460]
  ad2fc3:	00 
  ad2fc4:	c5 7c 10 a9 a0 04 00 	vmovups ymm13,YMMWORD PTR [rcx+0x4a0]
  ad2fcb:	00 
  ad2fcc:	c5 7c 10 b1 80 04 00 	vmovups ymm14,YMMWORD PTR [rcx+0x480]
  ad2fd3:	00 
  ad2fd4:	45 31 d2             	xor    r10d,r10d
  ad2fd7:	4d 89 c3             	mov    r11,r8
  ad2fda:	31 db                	xor    ebx,ebx
  ad2fdc:	eb 65                	jmp    ad3043 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x5c3>
  ad2fde:	66 90                	xchg   ax,ax
  ad2fe0:	62 91 44 00 16 f0    	vmovlhps xmm6,xmm23,xmm24
  ad2fe6:	62 81 34 00 16 fb    	vmovlhps xmm23,xmm25,xmm27
  ad2fec:	62 a1 7c 08 29 7c d4 	vmovaps XMMWORD PTR [rsp+r10*8+0x30],xmm23
  ad2ff3:	03 
  ad2ff4:	c4 a1 78 29 74 d4 20 	vmovaps XMMWORD PTR [rsp+r10*8+0x20],xmm6
  ad2ffb:	62 b1 64 00 16 f4    	vmovlhps xmm6,xmm19,xmm20
  ad3001:	62 a1 4c 00 16 dd    	vmovlhps xmm19,xmm22,xmm21
  ad3007:	62 a1 7c 08 29 5c d4 	vmovaps XMMWORD PTR [rsp+r10*8+0x50],xmm19
  ad300e:	05 
  ad300f:	c4 a1 78 29 74 d4 40 	vmovaps XMMWORD PTR [rsp+r10*8+0x40],xmm6
  ad3016:	62 b1 6c 00 16 f0    	vmovlhps xmm6,xmm18,xmm16
  ad301c:	62 51 74 00 16 ff    	vmovlhps xmm15,xmm17,xmm15
  ad3022:	c4 21 78 29 7c d4 70 	vmovaps XMMWORD PTR [rsp+r10*8+0x70],xmm15
  ad3029:	c4 a1 78 29 74 d4 60 	vmovaps XMMWORD PTR [rsp+r10*8+0x60],xmm6
  ad3030:	49 83 c2 40          	add    r10,0x40
  ad3034:	49 83 c3 20          	add    r11,0x20
  ad3038:	f6 c3 01             	test   bl,0x1
  ad303b:	b3 01                	mov    bl,0x1
  ad303d:	0f 85 8d fa ff ff    	jne    ad2ad0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x50>
  ad3043:	4d 85 d2             	test   r10,r10
  ad3046:	74 78                	je     ad30c0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x640>
  ad3048:	62 c1 ff 08 10 23    	vmovsd xmm20,QWORD PTR [r11]
  ad304e:	62 c1 ff 08 10 5b 05 	vmovsd xmm19,QWORD PTR [r11+0x28]
  ad3055:	c4 41 7b 10 7b 50    	vmovsd xmm15,QWORD PTR [r11+0x50]
  ad305b:	62 c1 ff 08 10 4b 0f 	vmovsd xmm17,QWORD PTR [r11+0x78]
  ad3062:	62 41 ff 08 10 4b 14 	vmovsd xmm25,QWORD PTR [r11+0xa0]
  ad3069:	62 c1 ff 08 10 73 19 	vmovsd xmm22,QWORD PTR [r11+0xc8]
  ad3070:	62 c1 ff 08 10 43 1e 	vmovsd xmm16,QWORD PTR [r11+0xf0]
  ad3077:	62 c1 ff 08 10 53 23 	vmovsd xmm18,QWORD PTR [r11+0x118]
  ad307e:	62 41 ff 08 10 63 28 	vmovsd xmm28,QWORD PTR [r11+0x140]
  ad3085:	62 41 ff 08 10 53 2d 	vmovsd xmm26,QWORD PTR [r11+0x168]
  ad308c:	62 c1 ff 08 10 7b 32 	vmovsd xmm23,QWORD PTR [r11+0x190]
  ad3093:	62 c1 ff 08 10 6b 37 	vmovsd xmm21,QWORD PTR [r11+0x1b8]
  ad309a:	62 41 ff 08 10 73 3c 	vmovsd xmm30,QWORD PTR [r11+0x1e0]
  ad30a1:	62 41 ff 08 10 6b 41 	vmovsd xmm29,QWORD PTR [r11+0x208]
  ad30a8:	62 41 ff 08 10 5b 46 	vmovsd xmm27,QWORD PTR [r11+0x230]
  ad30af:	62 41 ff 08 10 43 4b 	vmovsd xmm24,QWORD PTR [r11+0x258]
  ad30b6:	e9 a1 00 00 00       	jmp    ad315c <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x6dc>
  ad30bb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  ad30c0:	62 c1 7c 28 10 23    	vmovups ymm20,YMMWORD PTR [r11]
  ad30c6:	62 c1 7c 28 10 8b 78 	vmovups ymm17,YMMWORD PTR [r11+0x78]
  ad30cd:	00 00 00 
  ad30d0:	62 c1 7c 28 10 83 f0 	vmovups ymm16,YMMWORD PTR [r11+0xf0]
  ad30d7:	00 00 00 
  ad30da:	62 a1 7c 28 10 9c 8f 	vmovups ymm19,YMMWORD PTR [rdi+r9*4+0x28]
  ad30e1:	28 00 00 00 
  ad30e5:	c4 21 7c 10 7c 8f 50 	vmovups ymm15,YMMWORD PTR [rdi+r9*4+0x50]
  ad30ec:	62 21 7c 28 10 4c 8f 	vmovups ymm25,YMMWORD PTR [rdi+r9*4+0xa0]
  ad30f3:	05 
  ad30f4:	62 a1 7c 28 10 b4 8f 	vmovups ymm22,YMMWORD PTR [rdi+r9*4+0xc8]
  ad30fb:	c8 00 00 00 
  ad30ff:	62 a1 7c 28 10 94 8f 	vmovups ymm18,YMMWORD PTR [rdi+r9*4+0x118]
  ad3106:	18 01 00 00 
  ad310a:	62 21 7c 28 10 64 8f 	vmovups ymm28,YMMWORD PTR [rdi+r9*4+0x140]
  ad3111:	0a 
  ad3112:	62 21 7c 28 10 94 8f 	vmovups ymm26,YMMWORD PTR [rdi+r9*4+0x168]
  ad3119:	68 01 00 00 
  ad311d:	62 a1 7c 28 10 bc 8f 	vmovups ymm23,YMMWORD PTR [rdi+r9*4+0x190]
  ad3124:	90 01 00 00 
  ad3128:	62 a1 7c 28 10 ac 8f 	vmovups ymm21,YMMWORD PTR [rdi+r9*4+0x1b8]
  ad312f:	b8 01 00 00 
  ad3133:	62 21 7c 28 10 74 8f 	vmovups ymm30,YMMWORD PTR [rdi+r9*4+0x1e0]
  ad313a:	0f 
  ad313b:	62 21 7c 28 10 ac 8f 	vmovups ymm29,YMMWORD PTR [rdi+r9*4+0x208]
  ad3142:	08 02 00 00 
  ad3146:	62 21 7c 28 10 9c 8f 	vmovups ymm27,YMMWORD PTR [rdi+r9*4+0x230]
  ad314d:	30 02 00 00 
  ad3151:	62 21 7c 28 10 84 8f 	vmovups ymm24,YMMWORD PTR [rdi+r9*4+0x258]
  ad3158:	58 02 00 00 
  ad315c:	62 91 5c 20 58 f4    	vaddps ymm6,ymm20,ymm28
  ad3162:	62 01 5c 20 5c fc    	vsubps ymm31,ymm20,ymm28
  ad3168:	62 91 34 20 58 fe    	vaddps ymm7,ymm25,ymm30
  ad316e:	62 81 34 20 5c e6    	vsubps ymm20,ymm25,ymm30
  ad3174:	62 a1 5c 20 c6 e4 b1 	vshufps ymm20,ymm20,ymm20,0xb1
  ad317b:	62 61 7c 28 28 e0    	vmovaps ymm28,ymm0
  ad3181:	62 02 5d 20 a8 e7    	vfmadd213ps ymm28,ymm20,ymm31
  ad3187:	62 82 7d 28 ac e7    	vfnmadd213ps ymm20,ymm0,ymm31
  ad318d:	62 61 4c 28 58 f7    	vaddps ymm30,ymm6,ymm7
  ad3193:	62 61 4c 28 5c cf    	vsubps ymm25,ymm6,ymm7
  ad3199:	62 91 64 20 58 f2    	vaddps ymm6,ymm19,ymm26
  ad319f:	62 91 64 20 5c fa    	vsubps ymm7,ymm19,ymm26
  ad31a5:	62 01 4c 20 58 d5    	vaddps ymm26,ymm22,ymm29
  ad31ab:	62 81 4c 20 5c dd    	vsubps ymm19,ymm22,ymm29
  ad31b1:	62 a1 64 20 c6 f3 b1 	vshufps ymm22,ymm19,ymm19,0xb1
  ad31b8:	62 61 7c 28 28 e8    	vmovaps ymm29,ymm0
  ad31be:	62 62 4d 20 a8 ef    	vfmadd213ps ymm29,ymm22,ymm7
  ad31c4:	62 e2 7d 28 ac f7    	vfnmadd213ps ymm22,ymm0,ymm7
  ad31ca:	62 81 4c 28 58 da    	vaddps ymm19,ymm6,ymm26
  ad31d0:	62 91 4c 28 5c f2    	vsubps ymm6,ymm6,ymm26
  ad31d6:	62 b1 04 28 58 ff    	vaddps ymm7,ymm15,ymm23
  ad31dc:	62 a1 04 28 5c ff    	vsubps ymm23,ymm15,ymm23
  ad31e2:	62 01 7c 20 58 d3    	vaddps ymm26,ymm16,ymm27
  ad31e8:	62 11 7c 20 5c fb    	vsubps ymm15,ymm16,ymm27
  ad31ee:	c4 41 04 c6 ff b1    	vshufps ymm15,ymm15,ymm15,0xb1
  ad31f4:	62 e1 7c 28 28 c0    	vmovaps ymm16,ymm0
  ad31fa:	62 a2 05 28 a8 c7    	vfmadd213ps ymm16,ymm15,ymm23
  ad3200:	62 32 7d 28 ac ff    	vfnmadd213ps ymm15,ymm0,ymm23
  ad3206:	62 81 44 28 58 fa    	vaddps ymm23,ymm7,ymm26
  ad320c:	62 91 44 28 5c fa    	vsubps ymm7,ymm7,ymm26
  ad3212:	62 21 74 20 58 d5    	vaddps ymm26,ymm17,ymm21
  ad3218:	62 a1 74 20 5c cd    	vsubps ymm17,ymm17,ymm21
  ad321e:	62 81 6c 20 58 e8    	vaddps ymm21,ymm18,ymm24
  ad3224:	62 81 6c 20 5c d0    	vsubps ymm18,ymm18,ymm24
  ad322a:	62 a1 6c 20 c6 d2 b1 	vshufps ymm18,ymm18,ymm18,0xb1
  ad3231:	62 61 7c 28 28 c0    	vmovaps ymm24,ymm0
  ad3237:	62 22 6d 20 a8 c1    	vfmadd213ps ymm24,ymm18,ymm17
  ad323d:	62 a2 7d 28 ac d1    	vfnmadd213ps ymm18,ymm0,ymm17
  ad3243:	62 21 2c 20 58 dd    	vaddps ymm27,ymm26,ymm21
  ad3249:	62 a1 2c 20 5c cd    	vsubps ymm17,ymm26,ymm21
  ad324f:	62 81 14 20 c6 ed b1 	vshufps ymm21,ymm29,ymm29,0xb1
  ad3256:	62 41 14 20 59 e9    	vmulps ymm29,ymm29,ymm9
  ad325c:	62 22 2d 28 b8 ed    	vfmadd231ps ymm29,ymm10,ymm21
  ad3262:	62 e1 4c 28 c6 ee b1 	vshufps ymm21,ymm6,ymm6,0xb1
  ad3269:	c5 cc 59 f4          	vmulps ymm6,ymm6,ymm4
  ad326d:	62 b2 6d 28 b8 f5    	vfmadd231ps ymm6,ymm2,ymm21
  ad3273:	62 21 4c 20 c6 d6 b1 	vshufps ymm26,ymm22,ymm22,0xb1
  ad327a:	62 c1 4c 20 59 eb    	vmulps ymm21,ymm22,ymm11
  ad3280:	62 82 1d 28 b8 ea    	vfmadd231ps ymm21,ymm12,ymm26
  ad3286:	62 81 3c 20 c6 f0 b1 	vshufps ymm22,ymm24,ymm24,0xb1
  ad328d:	62 41 3c 20 59 c3    	vmulps ymm24,ymm24,ymm11
  ad3293:	62 22 1d 28 b8 c6    	vfmadd231ps ymm24,ymm12,ymm22
  ad3299:	62 a1 74 20 c6 f1 b1 	vshufps ymm22,ymm17,ymm17,0xb1
  ad32a0:	62 61 74 20 59 fb    	vmulps ymm31,ymm17,ymm3
  ad32a6:	62 22 6d 28 b8 fe    	vfmadd231ps ymm31,ymm2,ymm22
  ad32ac:	62 a1 6c 20 c6 ca b1 	vshufps ymm17,ymm18,ymm18,0xb1
  ad32b3:	62 51 6c 20 59 c6    	vmulps ymm8,ymm18,ymm14
  ad32b9:	62 32 15 28 b8 c1    	vfmadd231ps ymm8,ymm13,ymm17
  ad32bf:	62 a1 0c 20 58 f7    	vaddps ymm22,ymm30,ymm23
  ad32c5:	62 21 0c 20 5c d7    	vsubps ymm26,ymm30,ymm23
  ad32cb:	62 a1 7c 20 c6 c8 b1 	vshufps ymm17,ymm16,ymm16,0xb1
  ad32d2:	62 61 7c 28 28 f4    	vmovaps ymm30,ymm4
  ad32d8:	62 02 7d 20 a8 f4    	vfmadd213ps ymm30,ymm16,ymm28
  ad32de:	62 62 75 20 b8 f2    	vfmadd231ps ymm30,ymm17,ymm2
  ad32e4:	62 82 5d 28 ac c4    	vfnmadd213ps ymm16,ymm4,ymm28
  ad32ea:	62 a2 6d 28 bc c1    	vfnmadd231ps ymm16,ymm2,ymm17
  ad32f0:	62 e1 44 28 c6 cf b1 	vshufps ymm17,ymm7,ymm7,0xb1
  ad32f7:	c5 fc 28 f8          	vmovaps ymm7,ymm0
  ad32fb:	62 92 75 20 a8 f9    	vfmadd213ps ymm7,ymm17,ymm25
  ad3301:	62 82 7d 28 ac c9    	vfnmadd213ps ymm17,ymm0,ymm25
  ad3307:	62 c1 04 28 c6 d7 b1 	vshufps ymm18,ymm15,ymm15,0xb1
  ad330e:	c5 fc 28 cc          	vmovaps ymm1,ymm4
  ad3312:	62 b2 05 28 ac cc    	vfnmadd213ps ymm1,ymm15,ymm20
  ad3318:	62 f2 6d 20 b8 ca    	vfmadd231ps ymm1,ymm18,ymm2
  ad331e:	62 32 5d 28 a8 fc    	vfmadd213ps ymm15,ymm4,ymm20
  ad3324:	62 32 6d 28 bc fa    	vfnmadd231ps ymm15,ymm2,ymm18
  ad332a:	62 81 64 20 58 e3    	vaddps ymm20,ymm19,ymm27
  ad3330:	62 81 64 20 5c d3    	vsubps ymm18,ymm19,ymm27
  ad3336:	62 a1 6c 20 c6 d2 b1 	vshufps ymm18,ymm18,ymm18,0xb1
  ad333d:	62 e1 7c 28 28 f8    	vmovaps ymm23,ymm0
  ad3343:	62 82 6d 20 a8 fa    	vfmadd213ps ymm23,ymm18,ymm26
  ad3349:	62 82 7d 28 ac d2    	vfnmadd213ps ymm18,ymm0,ymm26
  ad334f:	62 21 4c 20 58 d4    	vaddps ymm26,ymm22,ymm20
  ad3355:	62 a1 4c 20 5c dc    	vsubps ymm19,ymm22,ymm20
  ad335b:	62 81 14 20 58 e0    	vaddps ymm20,ymm29,ymm24
  ad3361:	62 81 14 20 5c f0    	vsubps ymm22,ymm29,ymm24
  ad3367:	62 a1 4c 20 c6 f6 b1 	vshufps ymm22,ymm22,ymm22,0xb1
  ad336e:	62 61 7c 28 28 c0    	vmovaps ymm24,ymm0
  ad3374:	62 22 4d 20 a8 c0    	vfmadd213ps ymm24,ymm22,ymm16
  ad337a:	62 a2 7d 28 bc c6    	vfnmadd231ps ymm16,ymm0,ymm22
  ad3380:	62 21 0c 20 58 e4    	vaddps ymm28,ymm30,ymm20
  ad3386:	62 a1 0c 20 5c e4    	vsubps ymm20,ymm30,ymm20
  ad338c:	62 81 4c 28 58 f7    	vaddps ymm22,ymm6,ymm31
  ad3392:	62 91 4c 28 5c f7    	vsubps ymm6,ymm6,ymm31
  ad3398:	c5 cc c6 f6 b1       	vshufps ymm6,ymm6,ymm6,0xb1
  ad339d:	62 61 7c 28 28 c8    	vmovaps ymm25,ymm0
  ad33a3:	62 22 4d 28 a8 c9    	vfmadd213ps ymm25,ymm6,ymm17
  ad33a9:	62 e2 7d 28 bc ce    	vfnmadd231ps ymm17,ymm0,ymm6
  ad33af:	62 21 44 28 58 ee    	vaddps ymm29,ymm7,ymm22
  ad33b5:	62 a1 44 28 5c f6    	vsubps ymm22,ymm7,ymm22
  ad33bb:	62 d1 54 20 58 f0    	vaddps ymm6,ymm21,ymm8
  ad33c1:	62 d1 54 20 5c f8    	vsubps ymm7,ymm21,ymm8
  ad33c7:	c5 c4 c6 ff b1       	vshufps ymm7,ymm7,ymm7,0xb1
  ad33cc:	62 61 7c 28 28 d8    	vmovaps ymm27,ymm0
  ad33d2:	62 42 45 28 a8 df    	vfmadd213ps ymm27,ymm7,ymm15
  ad33d8:	c4 62 7d bc ff       	vfnmadd231ps ymm15,ymm0,ymm7
  ad33dd:	62 61 74 28 58 f6    	vaddps ymm30,ymm1,ymm6
  ad33e3:	62 e1 74 28 5c ee    	vsubps ymm21,ymm1,ymm6
  ad33e9:	62 01 ad 20 14 fc    	vunpcklpd ymm31,ymm26,ymm28
  ad33ef:	62 91 95 20 14 f6    	vunpcklpd ymm6,ymm29,ymm30
  ad33f5:	62 f3 05 20 18 ce 01 	vinsertf32x4 ymm1,ymm31,xmm6,0x1
  ad33fc:	c4 a1 7c 29 0c d4    	vmovaps YMMWORD PTR [rsp+r10*8],ymm1
  ad3402:	49 83 fa 40          	cmp    r10,0x40
  ad3406:	0f 84 d4 fb ff ff    	je     ad2fe0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x560>
  ad340c:	62 01 ad 20 15 d4    	vunpckhpd ymm26,ymm26,ymm28
  ad3412:	62 01 95 20 15 e6    	vunpckhpd ymm28,ymm29,ymm30
  ad3418:	62 03 ad 20 23 ec 03 	vshuff64x2 ymm29,ymm26,ymm28,0x3
  ad341f:	62 f3 85 20 23 f6 03 	vshuff64x2 ymm6,ymm31,ymm6,0x3
  ad3426:	62 03 2d 20 18 d4 01 	vinsertf32x4 ymm26,ymm26,xmm28,0x1
  ad342d:	62 21 7c 28 29 54 d4 	vmovaps YMMWORD PTR [rsp+r10*8+0x80],ymm26
  ad3434:	04 
  ad3435:	c4 a1 7d 29 b4 d4 00 	vmovapd YMMWORD PTR [rsp+r10*8+0x100],ymm6
  ad343c:	01 00 00 
  ad343f:	62 21 fd 28 29 6c d4 	vmovapd YMMWORD PTR [rsp+r10*8+0x180],ymm29
  ad3446:	0c 
  ad3447:	62 91 c5 20 14 f0    	vunpcklpd ymm6,ymm23,ymm24
  ad344d:	62 01 b5 20 14 d3    	vunpcklpd ymm26,ymm25,ymm27
  ad3453:	62 03 4d 28 18 e2 01 	vinsertf32x4 ymm28,ymm6,xmm26,0x1
  ad345a:	62 21 7c 28 29 64 d4 	vmovaps YMMWORD PTR [rsp+r10*8+0x20],ymm28
  ad3461:	01 
  ad3462:	62 81 c5 20 15 f8    	vunpckhpd ymm23,ymm23,ymm24
  ad3468:	62 01 b5 20 15 c3    	vunpckhpd ymm24,ymm25,ymm27
  ad346e:	62 03 c5 20 23 c8 03 	vshuff64x2 ymm25,ymm23,ymm24,0x3
  ad3475:	62 93 cd 28 23 f2 03 	vshuff64x2 ymm6,ymm6,ymm26,0x3
  ad347c:	62 83 45 20 18 f8 01 	vinsertf32x4 ymm23,ymm23,xmm24,0x1
  ad3483:	62 a1 7c 28 29 7c d4 	vmovaps YMMWORD PTR [rsp+r10*8+0xa0],ymm23
  ad348a:	05 
  ad348b:	c4 a1 7d 29 b4 d4 20 	vmovapd YMMWORD PTR [rsp+r10*8+0x120],ymm6
  ad3492:	01 00 00 
  ad3495:	62 21 fd 28 29 4c d4 	vmovapd YMMWORD PTR [rsp+r10*8+0x1a0],ymm25
  ad349c:	0d 
  ad349d:	62 b1 e5 20 14 f4    	vunpcklpd ymm6,ymm19,ymm20
  ad34a3:	62 a1 cd 20 14 fd    	vunpcklpd ymm23,ymm22,ymm21
  ad34a9:	62 23 4d 28 18 c7 01 	vinsertf32x4 ymm24,ymm6,xmm23,0x1
  ad34b0:	62 21 7c 28 29 44 d4 	vmovaps YMMWORD PTR [rsp+r10*8+0x40],ymm24
  ad34b7:	02 
  ad34b8:	62 a1 e5 20 15 dc    	vunpckhpd ymm19,ymm19,ymm20
  ad34be:	62 a1 cd 20 15 e5    	vunpckhpd ymm20,ymm22,ymm21
  ad34c4:	62 a3 e5 20 23 ec 03 	vshuff64x2 ymm21,ymm19,ymm20,0x3
  ad34cb:	62 b3 cd 28 23 f7 03 	vshuff64x2 ymm6,ymm6,ymm23,0x3
  ad34d2:	62 a3 65 20 18 dc 01 	vinsertf32x4 ymm19,ymm19,xmm20,0x1
  ad34d9:	62 a1 7c 28 29 5c d4 	vmovaps YMMWORD PTR [rsp+r10*8+0xc0],ymm19
  ad34e0:	06 
  ad34e1:	c4 a1 7d 29 b4 d4 40 	vmovapd YMMWORD PTR [rsp+r10*8+0x140],ymm6
  ad34e8:	01 00 00 
  ad34eb:	62 a1 fd 28 29 6c d4 	vmovapd YMMWORD PTR [rsp+r10*8+0x1c0],ymm21
  ad34f2:	0e 
  ad34f3:	62 b1 ed 20 14 f0    	vunpcklpd ymm6,ymm18,ymm16
  ad34f9:	62 c1 f5 20 14 df    	vunpcklpd ymm19,ymm17,ymm15
  ad34ff:	62 a3 4d 28 18 e3 01 	vinsertf32x4 ymm20,ymm6,xmm19,0x1
  ad3506:	62 a1 7c 28 29 64 d4 	vmovaps YMMWORD PTR [rsp+r10*8+0x60],ymm20
  ad350d:	03 
  ad350e:	62 a1 ed 20 15 c0    	vunpckhpd ymm16,ymm18,ymm16
  ad3514:	62 51 f5 20 15 ff    	vunpckhpd ymm15,ymm17,ymm15
  ad351a:	62 c3 fd 20 23 cf 03 	vshuff64x2 ymm17,ymm16,ymm15,0x3
  ad3521:	62 b3 cd 28 23 f3 03 	vshuff64x2 ymm6,ymm6,ymm19,0x3
  ad3528:	62 53 7d 20 18 ff 01 	vinsertf32x4 ymm15,ymm16,xmm15,0x1
  ad352f:	c4 21 7c 29 bc d4 e0 	vmovaps YMMWORD PTR [rsp+r10*8+0xe0],ymm15
  ad3536:	00 00 00 
  ad3539:	c4 a1 7d 29 b4 d4 60 	vmovapd YMMWORD PTR [rsp+r10*8+0x160],ymm6
  ad3540:	01 00 00 
  ad3543:	62 a1 fd 28 29 4c d4 	vmovapd YMMWORD PTR [rsp+r10*8+0x1e0],ymm17
  ad354a:	0f 
  ad354b:	e9 e0 fa ff ff       	jmp    ad3030 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x5b0>
  ad3550:	48 8d 65 f8          	lea    rsp,[rbp-0x8]
  ad3554:	5b                   	pop    rbx
  ad3555:	5d                   	pop    rbp
  ad3556:	c5 f8 77             	vzeroupper
  ad3559:	c3                   	ret
