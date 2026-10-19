
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000ad0cc0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  ad0cc0:	55                   	push   rbp
  ad0cc1:	48 89 e5             	mov    rbp,rsp
  ad0cc4:	53                   	push   rbx
  ad0cc5:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  ad0cc9:	48 81 ec 40 08 00 00 	sub    rsp,0x840
  ad0cd0:	31 c0                	xor    eax,eax
  ad0cd2:	c4 e2 7d 19 05 45 41 	vbroadcastsd ymm0,QWORD PTR [rip+0xffffffffff5a4145]        # 74e20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x22d0>
  ad0cd9:	5a ff 
  ad0cdb:	c4 e2 7d 18 25 b8 46 	vbroadcastss ymm4,DWORD PTR [rip+0xffffffffff5a46b8]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  ad0ce2:	5a ff 
  ad0ce4:	c4 e2 7d 19 15 03 3e 	vbroadcastsd ymm2,QWORD PTR [rip+0xffffffffff5a3e03]        # 74af0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1fa0>
  ad0ceb:	5a ff 
  ad0ced:	c4 e2 7d 18 1d 86 47 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff5a4786]        # 7547c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x292c>
  ad0cf4:	5a ff 
  ad0cf6:	c4 e2 7d 18 2d 1d 46 	vbroadcastss ymm5,DWORD PTR [rip+0xffffffffff5a461d]        # 7531c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x27cc>
  ad0cfd:	5a ff 
  ad0cff:	49 89 f8             	mov    r8,rdi
  ad0d02:	e9 d2 04 00 00       	jmp    ad11d9 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x519>
  ad0d07:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  ad0d0e:	00 00 
  ad0d10:	48 ff c0             	inc    rax
  ad0d13:	c5 fc 28 b4 24 80 00 	vmovaps ymm6,YMMWORD PTR [rsp+0x80]
  ad0d1a:	00 00 
  ad0d1c:	c5 7c 28 8c 24 00 01 	vmovaps ymm9,YMMWORD PTR [rsp+0x100]
  ad0d23:	00 00 
  ad0d25:	c5 7c 28 94 24 80 01 	vmovaps ymm10,YMMWORD PTR [rsp+0x180]
  ad0d2c:	00 00 
  ad0d2e:	c5 4c c6 de b1       	vshufps ymm11,ymm6,ymm6,0xb1
  ad0d33:	c5 cc 59 31          	vmulps ymm6,ymm6,YMMWORD PTR [rcx]
  ad0d37:	c4 e2 25 b8 71 20    	vfmadd231ps ymm6,ymm11,YMMWORD PTR [rcx+0x20]
  ad0d3d:	c5 34 59 59 40       	vmulps ymm11,ymm9,YMMWORD PTR [rcx+0x40]
  ad0d42:	c4 41 34 c6 c9 b1    	vshufps ymm9,ymm9,ymm9,0xb1
  ad0d48:	c4 62 35 b8 59 60    	vfmadd231ps ymm11,ymm9,YMMWORD PTR [rcx+0x60]
  ad0d4e:	c4 41 2c c6 ca b1    	vshufps ymm9,ymm10,ymm10,0xb1
  ad0d54:	c5 2c 59 91 80 00 00 	vmulps ymm10,ymm10,YMMWORD PTR [rcx+0x80]
  ad0d5b:	00 
  ad0d5c:	c4 62 35 b8 91 a0 00 	vfmadd231ps ymm10,ymm9,YMMWORD PTR [rcx+0xa0]
  ad0d63:	00 00 
  ad0d65:	c5 7c 28 0c 24       	vmovaps ymm9,YMMWORD PTR [rsp]
  ad0d6a:	c5 7c 28 a4 24 00 02 	vmovaps ymm12,YMMWORD PTR [rsp+0x200]
  ad0d71:	00 00 
  ad0d73:	c5 1c 59 a9 c0 00 00 	vmulps ymm13,ymm12,YMMWORD PTR [rcx+0xc0]
  ad0d7a:	00 
  ad0d7b:	c4 41 1c c6 e4 b1    	vshufps ymm12,ymm12,ymm12,0xb1
  ad0d81:	c4 62 1d b8 a9 e0 00 	vfmadd231ps ymm13,ymm12,YMMWORD PTR [rcx+0xe0]
  ad0d88:	00 00 
  ad0d8a:	c5 14 58 e6          	vaddps ymm12,ymm13,ymm6
  ad0d8e:	c4 41 24 58 f2       	vaddps ymm14,ymm11,ymm10
  ad0d93:	c4 c1 4c 5c f5       	vsubps ymm6,ymm6,ymm13
  ad0d98:	c4 41 24 5c d2       	vsubps ymm10,ymm11,ymm10
  ad0d9d:	c4 e2 7d 18 0d 42 49 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff5a4942]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  ad0da4:	5a ff 
  ad0da6:	c5 7c 28 d9          	vmovaps ymm11,ymm1
  ad0daa:	c4 42 1d a8 d9       	vfmadd213ps ymm11,ymm12,ymm9
  ad0daf:	c4 62 0d b8 dd       	vfmadd231ps ymm11,ymm14,ymm5
  ad0db4:	c5 7c 28 ed          	vmovaps ymm13,ymm5
  ad0db8:	c4 42 1d a8 e9       	vfmadd213ps ymm13,ymm12,ymm9
  ad0dbd:	c4 62 0d b8 e9       	vfmadd231ps ymm13,ymm14,ymm1
  ad0dc2:	c4 e2 7d 18 3d d5 45 	vbroadcastss ymm7,DWORD PTR [rip+0xffffffffff5a45d5]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  ad0dc9:	5a ff 
  ad0dcb:	c5 4c 59 ff          	vmulps ymm15,ymm6,ymm7
  ad0dcf:	c4 62 7d 18 05 80 49 	vbroadcastss ymm8,DWORD PTR [rip+0xffffffffff5a4980]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  ad0dd6:	5a ff 
  ad0dd8:	c4 42 2d b8 f8       	vfmadd231ps ymm15,ymm10,ymm8
  ad0ddd:	c4 41 04 c6 ff b1    	vshufps ymm15,ymm15,ymm15,0xb1
  ad0de3:	62 e1 7c 28 28 05 d3 	vmovaps ymm16,YMMWORD PTR [rip+0xffffffffff5a77d3]        # 785c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5a70>
  ad0dea:	77 5a ff 
  ad0ded:	62 31 04 28 57 f8    	vxorps ymm15,ymm15,ymm16
  ad0df3:	c5 bc 59 f6          	vmulps ymm6,ymm8,ymm6
  ad0df7:	c4 c2 45 bc f2       	vfnmadd231ps ymm6,ymm7,ymm10
  ad0dfc:	c5 cc c6 f6 b1       	vshufps ymm6,ymm6,ymm6,0xb1
  ad0e01:	62 b1 4c 28 57 f0    	vxorps ymm6,ymm6,ymm16
  ad0e07:	c4 41 0c 58 d4       	vaddps ymm10,ymm14,ymm12
  ad0e0c:	c4 41 34 58 ca       	vaddps ymm9,ymm9,ymm10
  ad0e11:	c4 41 24 58 d7       	vaddps ymm10,ymm11,ymm15
  ad0e16:	c5 14 58 e6          	vaddps ymm12,ymm13,ymm6
  ad0e1a:	c5 94 5c f6          	vsubps ymm6,ymm13,ymm6
  ad0e1e:	c4 41 24 5c df       	vsubps ymm11,ymm11,ymm15
  ad0e23:	c4 21 7c 11 0c 8e    	vmovups YMMWORD PTR [rsi+r9*4],ymm9
  ad0e29:	c4 21 7c 11 94 8e 80 	vmovups YMMWORD PTR [rsi+r9*4+0x80],ymm10
  ad0e30:	00 00 00 
  ad0e33:	c4 21 7c 11 a4 8e 00 	vmovups YMMWORD PTR [rsi+r9*4+0x100],ymm12
  ad0e3a:	01 00 00 
  ad0e3d:	c4 a1 7c 11 b4 8e 80 	vmovups YMMWORD PTR [rsi+r9*4+0x180],ymm6
  ad0e44:	01 00 00 
  ad0e47:	c4 21 7c 11 9c 8e 00 	vmovups YMMWORD PTR [rsi+r9*4+0x200],ymm11
  ad0e4e:	02 00 00 
  ad0e51:	c5 fc 28 b4 24 a0 00 	vmovaps ymm6,YMMWORD PTR [rsp+0xa0]
  ad0e58:	00 00 
  ad0e5a:	c5 7c 28 8c 24 20 01 	vmovaps ymm9,YMMWORD PTR [rsp+0x120]
  ad0e61:	00 00 
  ad0e63:	c5 4c 59 91 00 01 00 	vmulps ymm10,ymm6,YMMWORD PTR [rcx+0x100]
  ad0e6a:	00 
  ad0e6b:	c5 cc c6 f6 b1       	vshufps ymm6,ymm6,ymm6,0xb1
  ad0e70:	c4 62 4d b8 91 20 01 	vfmadd231ps ymm10,ymm6,YMMWORD PTR [rcx+0x120]
  ad0e77:	00 00 
  ad0e79:	c4 c1 34 c6 f1 b1    	vshufps ymm6,ymm9,ymm9,0xb1
  ad0e7f:	c5 34 59 89 40 01 00 	vmulps ymm9,ymm9,YMMWORD PTR [rcx+0x140]
  ad0e86:	00 
  ad0e87:	c4 62 4d b8 89 60 01 	vfmadd231ps ymm9,ymm6,YMMWORD PTR [rcx+0x160]
  ad0e8e:	00 00 
  ad0e90:	c5 fc 28 b4 24 a0 01 	vmovaps ymm6,YMMWORD PTR [rsp+0x1a0]
  ad0e97:	00 00 
  ad0e99:	c5 4c c6 de b1       	vshufps ymm11,ymm6,ymm6,0xb1
  ad0e9e:	c5 cc 59 b1 80 01 00 	vmulps ymm6,ymm6,YMMWORD PTR [rcx+0x180]
  ad0ea5:	00 
  ad0ea6:	c4 e2 25 b8 b1 a0 01 	vfmadd231ps ymm6,ymm11,YMMWORD PTR [rcx+0x1a0]
  ad0ead:	00 00 
  ad0eaf:	c5 7c 28 9c 24 20 02 	vmovaps ymm11,YMMWORD PTR [rsp+0x220]
  ad0eb6:	00 00 
  ad0eb8:	c4 41 24 c6 e3 b1    	vshufps ymm12,ymm11,ymm11,0xb1
  ad0ebe:	c5 24 59 99 c0 01 00 	vmulps ymm11,ymm11,YMMWORD PTR [rcx+0x1c0]
  ad0ec5:	00 
  ad0ec6:	c4 62 1d b8 99 e0 01 	vfmadd231ps ymm11,ymm12,YMMWORD PTR [rcx+0x1e0]
  ad0ecd:	00 00 
  ad0ecf:	c5 7c 28 64 24 20    	vmovaps ymm12,YMMWORD PTR [rsp+0x20]
  ad0ed5:	c4 41 2c 58 eb       	vaddps ymm13,ymm10,ymm11
  ad0eda:	c5 34 58 f6          	vaddps ymm14,ymm9,ymm6
  ad0ede:	c4 41 2c 5c d3       	vsubps ymm10,ymm10,ymm11
  ad0ee3:	c5 b4 5c f6          	vsubps ymm6,ymm9,ymm6
  ad0ee7:	c5 7c 28 c9          	vmovaps ymm9,ymm1
  ad0eeb:	c4 42 15 a8 cc       	vfmadd213ps ymm9,ymm13,ymm12
  ad0ef0:	c4 62 0d b8 cd       	vfmadd231ps ymm9,ymm14,ymm5
  ad0ef5:	c5 7c 28 dd          	vmovaps ymm11,ymm5
  ad0ef9:	c4 42 15 a8 dc       	vfmadd213ps ymm11,ymm13,ymm12
  ad0efe:	c4 62 0d b8 d9       	vfmadd231ps ymm11,ymm14,ymm1
  ad0f03:	c5 2c 59 ff          	vmulps ymm15,ymm10,ymm7
  ad0f07:	c4 42 4d b8 f8       	vfmadd231ps ymm15,ymm6,ymm8
  ad0f0c:	c4 41 04 c6 ff b1    	vshufps ymm15,ymm15,ymm15,0xb1
  ad0f12:	62 31 04 28 57 f8    	vxorps ymm15,ymm15,ymm16
  ad0f18:	c4 41 2c 59 d0       	vmulps ymm10,ymm10,ymm8
  ad0f1d:	c4 62 45 bc d6       	vfnmadd231ps ymm10,ymm7,ymm6
  ad0f22:	c4 c1 2c c6 f2 b1    	vshufps ymm6,ymm10,ymm10,0xb1
  ad0f28:	62 b1 4c 28 57 f0    	vxorps ymm6,ymm6,ymm16
  ad0f2e:	c4 41 0c 58 d5       	vaddps ymm10,ymm14,ymm13
  ad0f33:	c4 41 1c 58 d2       	vaddps ymm10,ymm12,ymm10
  ad0f38:	c4 41 34 58 e7       	vaddps ymm12,ymm9,ymm15
  ad0f3d:	c5 24 58 ee          	vaddps ymm13,ymm11,ymm6
  ad0f41:	c5 a4 5c f6          	vsubps ymm6,ymm11,ymm6
  ad0f45:	c4 41 34 5c cf       	vsubps ymm9,ymm9,ymm15
  ad0f4a:	c4 21 7c 11 54 8e 20 	vmovups YMMWORD PTR [rsi+r9*4+0x20],ymm10
  ad0f51:	c4 21 7c 11 a4 8e a0 	vmovups YMMWORD PTR [rsi+r9*4+0xa0],ymm12
  ad0f58:	00 00 00 
  ad0f5b:	c4 21 7c 11 ac 8e 20 	vmovups YMMWORD PTR [rsi+r9*4+0x120],ymm13
  ad0f62:	01 00 00 
  ad0f65:	c4 a1 7c 11 b4 8e a0 	vmovups YMMWORD PTR [rsi+r9*4+0x1a0],ymm6
  ad0f6c:	01 00 00 
  ad0f6f:	c4 21 7c 11 8c 8e 20 	vmovups YMMWORD PTR [rsi+r9*4+0x220],ymm9
  ad0f76:	02 00 00 
  ad0f79:	c5 fc 28 b4 24 c0 00 	vmovaps ymm6,YMMWORD PTR [rsp+0xc0]
  ad0f80:	00 00 
  ad0f82:	c5 7c 28 8c 24 40 01 	vmovaps ymm9,YMMWORD PTR [rsp+0x140]
  ad0f89:	00 00 
  ad0f8b:	c5 7c 28 94 24 c0 01 	vmovaps ymm10,YMMWORD PTR [rsp+0x1c0]
  ad0f92:	00 00 
  ad0f94:	c5 4c c6 de b1       	vshufps ymm11,ymm6,ymm6,0xb1
  ad0f99:	c5 cc 59 b1 00 02 00 	vmulps ymm6,ymm6,YMMWORD PTR [rcx+0x200]
  ad0fa0:	00 
  ad0fa1:	c4 e2 25 b8 b1 20 02 	vfmadd231ps ymm6,ymm11,YMMWORD PTR [rcx+0x220]
  ad0fa8:	00 00 
  ad0faa:	c5 34 59 99 40 02 00 	vmulps ymm11,ymm9,YMMWORD PTR [rcx+0x240]
  ad0fb1:	00 
  ad0fb2:	c4 41 34 c6 c9 b1    	vshufps ymm9,ymm9,ymm9,0xb1
  ad0fb8:	c4 62 35 b8 99 60 02 	vfmadd231ps ymm11,ymm9,YMMWORD PTR [rcx+0x260]
  ad0fbf:	00 00 
  ad0fc1:	c4 41 2c c6 ca b1    	vshufps ymm9,ymm10,ymm10,0xb1
  ad0fc7:	c5 2c 59 91 80 02 00 	vmulps ymm10,ymm10,YMMWORD PTR [rcx+0x280]
  ad0fce:	00 
  ad0fcf:	c4 62 35 b8 91 a0 02 	vfmadd231ps ymm10,ymm9,YMMWORD PTR [rcx+0x2a0]
  ad0fd6:	00 00 
  ad0fd8:	c5 7c 28 4c 24 40    	vmovaps ymm9,YMMWORD PTR [rsp+0x40]
  ad0fde:	c5 7c 28 a4 24 40 02 	vmovaps ymm12,YMMWORD PTR [rsp+0x240]
  ad0fe5:	00 00 
  ad0fe7:	c5 1c 59 a9 c0 02 00 	vmulps ymm13,ymm12,YMMWORD PTR [rcx+0x2c0]
  ad0fee:	00 
  ad0fef:	c4 41 1c c6 e4 b1    	vshufps ymm12,ymm12,ymm12,0xb1
  ad0ff5:	c4 62 1d b8 a9 e0 02 	vfmadd231ps ymm13,ymm12,YMMWORD PTR [rcx+0x2e0]
  ad0ffc:	00 00 
  ad0ffe:	c5 14 58 e6          	vaddps ymm12,ymm13,ymm6
  ad1002:	c4 41 24 58 f2       	vaddps ymm14,ymm11,ymm10
  ad1007:	c4 c1 4c 5c f5       	vsubps ymm6,ymm6,ymm13
  ad100c:	c4 41 24 5c d2       	vsubps ymm10,ymm11,ymm10
  ad1011:	c5 7c 28 d9          	vmovaps ymm11,ymm1
  ad1015:	c4 42 1d a8 d9       	vfmadd213ps ymm11,ymm12,ymm9
  ad101a:	c4 62 0d b8 dd       	vfmadd231ps ymm11,ymm14,ymm5
  ad101f:	c5 7c 28 ed          	vmovaps ymm13,ymm5
  ad1023:	c4 42 1d a8 e9       	vfmadd213ps ymm13,ymm12,ymm9
  ad1028:	c4 62 0d b8 e9       	vfmadd231ps ymm13,ymm14,ymm1
  ad102d:	c5 4c 59 ff          	vmulps ymm15,ymm6,ymm7
  ad1031:	c4 42 2d b8 f8       	vfmadd231ps ymm15,ymm10,ymm8
  ad1036:	c4 41 04 c6 ff b1    	vshufps ymm15,ymm15,ymm15,0xb1
  ad103c:	62 31 04 28 57 f8    	vxorps ymm15,ymm15,ymm16
  ad1042:	c5 bc 59 f6          	vmulps ymm6,ymm8,ymm6
  ad1046:	c4 c2 45 bc f2       	vfnmadd231ps ymm6,ymm7,ymm10
  ad104b:	c5 cc c6 f6 b1       	vshufps ymm6,ymm6,ymm6,0xb1
  ad1050:	62 b1 4c 28 57 f0    	vxorps ymm6,ymm6,ymm16
  ad1056:	c4 41 0c 58 d4       	vaddps ymm10,ymm14,ymm12
  ad105b:	c4 41 34 58 ca       	vaddps ymm9,ymm9,ymm10
  ad1060:	c4 41 24 58 d7       	vaddps ymm10,ymm11,ymm15
  ad1065:	c5 14 58 e6          	vaddps ymm12,ymm13,ymm6
  ad1069:	c5 94 5c f6          	vsubps ymm6,ymm13,ymm6
  ad106d:	c4 41 24 5c df       	vsubps ymm11,ymm11,ymm15
  ad1072:	c4 21 7c 11 4c 8e 40 	vmovups YMMWORD PTR [rsi+r9*4+0x40],ymm9
  ad1079:	c4 21 7c 11 94 8e c0 	vmovups YMMWORD PTR [rsi+r9*4+0xc0],ymm10
  ad1080:	00 00 00 
  ad1083:	c4 21 7c 11 a4 8e 40 	vmovups YMMWORD PTR [rsi+r9*4+0x140],ymm12
  ad108a:	01 00 00 
  ad108d:	c4 a1 7c 11 b4 8e c0 	vmovups YMMWORD PTR [rsi+r9*4+0x1c0],ymm6
  ad1094:	01 00 00 
  ad1097:	c4 21 7c 11 9c 8e 40 	vmovups YMMWORD PTR [rsi+r9*4+0x240],ymm11
  ad109e:	02 00 00 
  ad10a1:	c5 fc 28 b4 24 e0 00 	vmovaps ymm6,YMMWORD PTR [rsp+0xe0]
  ad10a8:	00 00 
  ad10aa:	c5 7c 28 8c 24 60 01 	vmovaps ymm9,YMMWORD PTR [rsp+0x160]
  ad10b1:	00 00 
  ad10b3:	c5 4c 59 91 00 03 00 	vmulps ymm10,ymm6,YMMWORD PTR [rcx+0x300]
  ad10ba:	00 
  ad10bb:	c5 cc c6 f6 b1       	vshufps ymm6,ymm6,ymm6,0xb1
  ad10c0:	c4 62 4d b8 91 20 03 	vfmadd231ps ymm10,ymm6,YMMWORD PTR [rcx+0x320]
  ad10c7:	00 00 
  ad10c9:	c4 c1 34 c6 f1 b1    	vshufps ymm6,ymm9,ymm9,0xb1
  ad10cf:	c5 34 59 89 40 03 00 	vmulps ymm9,ymm9,YMMWORD PTR [rcx+0x340]
  ad10d6:	00 
  ad10d7:	c4 62 4d b8 89 60 03 	vfmadd231ps ymm9,ymm6,YMMWORD PTR [rcx+0x360]
  ad10de:	00 00 
  ad10e0:	c5 fc 28 b4 24 e0 01 	vmovaps ymm6,YMMWORD PTR [rsp+0x1e0]
  ad10e7:	00 00 
  ad10e9:	c5 4c c6 de b1       	vshufps ymm11,ymm6,ymm6,0xb1
  ad10ee:	c5 cc 59 b1 80 03 00 	vmulps ymm6,ymm6,YMMWORD PTR [rcx+0x380]
  ad10f5:	00 
  ad10f6:	c4 e2 25 b8 b1 a0 03 	vfmadd231ps ymm6,ymm11,YMMWORD PTR [rcx+0x3a0]
  ad10fd:	00 00 
  ad10ff:	c5 7c 28 9c 24 60 02 	vmovaps ymm11,YMMWORD PTR [rsp+0x260]
  ad1106:	00 00 
  ad1108:	c4 41 24 c6 e3 b1    	vshufps ymm12,ymm11,ymm11,0xb1
  ad110e:	c5 24 59 99 c0 03 00 	vmulps ymm11,ymm11,YMMWORD PTR [rcx+0x3c0]
  ad1115:	00 
  ad1116:	c4 62 1d b8 99 e0 03 	vfmadd231ps ymm11,ymm12,YMMWORD PTR [rcx+0x3e0]
  ad111d:	00 00 
  ad111f:	c5 7c 28 64 24 60    	vmovaps ymm12,YMMWORD PTR [rsp+0x60]
  ad1125:	c4 41 2c 58 eb       	vaddps ymm13,ymm10,ymm11
  ad112a:	c5 34 58 f6          	vaddps ymm14,ymm9,ymm6
  ad112e:	c4 41 2c 5c d3       	vsubps ymm10,ymm10,ymm11
  ad1133:	c5 b4 5c f6          	vsubps ymm6,ymm9,ymm6
  ad1137:	c5 7c 28 c9          	vmovaps ymm9,ymm1
  ad113b:	c4 42 15 a8 cc       	vfmadd213ps ymm9,ymm13,ymm12
  ad1140:	c4 62 0d b8 cd       	vfmadd231ps ymm9,ymm14,ymm5
  ad1145:	c5 7c 28 dd          	vmovaps ymm11,ymm5
  ad1149:	c4 42 15 a8 dc       	vfmadd213ps ymm11,ymm13,ymm12
  ad114e:	c4 62 0d b8 d9       	vfmadd231ps ymm11,ymm14,ymm1
  ad1153:	c5 2c 59 ff          	vmulps ymm15,ymm10,ymm7
  ad1157:	c4 42 4d b8 f8       	vfmadd231ps ymm15,ymm6,ymm8
  ad115c:	c4 41 04 c6 ff b1    	vshufps ymm15,ymm15,ymm15,0xb1
  ad1162:	62 31 04 28 57 f8    	vxorps ymm15,ymm15,ymm16
  ad1168:	c4 41 2c 59 d0       	vmulps ymm10,ymm10,ymm8
  ad116d:	c4 62 45 bc d6       	vfnmadd231ps ymm10,ymm7,ymm6
  ad1172:	c4 c1 2c c6 f2 b1    	vshufps ymm6,ymm10,ymm10,0xb1
  ad1178:	62 b1 4c 28 57 f0    	vxorps ymm6,ymm6,ymm16
  ad117e:	c4 41 0c 58 d5       	vaddps ymm10,ymm14,ymm13
  ad1183:	c4 41 1c 58 d2       	vaddps ymm10,ymm12,ymm10
  ad1188:	c4 41 34 58 e7       	vaddps ymm12,ymm9,ymm15
  ad118d:	c5 24 58 ee          	vaddps ymm13,ymm11,ymm6
  ad1191:	c5 a4 5c f6          	vsubps ymm6,ymm11,ymm6
  ad1195:	c4 41 34 5c cf       	vsubps ymm9,ymm9,ymm15
  ad119a:	c4 21 7c 11 54 8e 60 	vmovups YMMWORD PTR [rsi+r9*4+0x60],ymm10
  ad11a1:	c4 21 7c 11 a4 8e e0 	vmovups YMMWORD PTR [rsi+r9*4+0xe0],ymm12
  ad11a8:	00 00 00 
  ad11ab:	c4 21 7c 11 ac 8e 60 	vmovups YMMWORD PTR [rsi+r9*4+0x160],ymm13
  ad11b2:	01 00 00 
  ad11b5:	c4 a1 7c 11 b4 8e e0 	vmovups YMMWORD PTR [rsi+r9*4+0x1e0],ymm6
  ad11bc:	01 00 00 
  ad11bf:	c4 21 7c 11 8c 8e 60 	vmovups YMMWORD PTR [rsi+r9*4+0x260],ymm9
  ad11c6:	02 00 00 
  ad11c9:	49 81 c0 80 02 00 00 	add    r8,0x280
  ad11d0:	48 39 d0             	cmp    rax,rdx
  ad11d3:	0f 84 b7 05 00 00    	je     ad1790 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0xad0>
  ad11d9:	49 89 c1             	mov    r9,rax
  ad11dc:	49 c1 e1 05          	shl    r9,0x5
  ad11e0:	4f 8d 0c 89          	lea    r9,[r9+r9*4]
  ad11e4:	c5 7c 10 89 00 04 00 	vmovups ymm9,YMMWORD PTR [rcx+0x400]
  ad11eb:	00 
  ad11ec:	c5 7c 10 91 20 04 00 	vmovups ymm10,YMMWORD PTR [rcx+0x420]
  ad11f3:	00 
  ad11f4:	c5 7c 10 99 40 04 00 	vmovups ymm11,YMMWORD PTR [rcx+0x440]
  ad11fb:	00 
  ad11fc:	c5 7c 10 a1 60 04 00 	vmovups ymm12,YMMWORD PTR [rcx+0x460]
  ad1203:	00 
  ad1204:	c5 7c 10 a9 a0 04 00 	vmovups ymm13,YMMWORD PTR [rcx+0x4a0]
  ad120b:	00 
  ad120c:	c5 7c 10 b1 80 04 00 	vmovups ymm14,YMMWORD PTR [rcx+0x480]
  ad1213:	00 
  ad1214:	45 31 d2             	xor    r10d,r10d
  ad1217:	4d 89 c3             	mov    r11,r8
  ad121a:	31 db                	xor    ebx,ebx
  ad121c:	eb 65                	jmp    ad1283 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x5c3>
  ad121e:	66 90                	xchg   ax,ax
  ad1220:	62 91 44 00 16 f0    	vmovlhps xmm6,xmm23,xmm24
  ad1226:	62 81 34 00 16 fb    	vmovlhps xmm23,xmm25,xmm27
  ad122c:	62 a1 7c 08 29 7c d4 	vmovaps XMMWORD PTR [rsp+r10*8+0x30],xmm23
  ad1233:	03 
  ad1234:	c4 a1 78 29 74 d4 20 	vmovaps XMMWORD PTR [rsp+r10*8+0x20],xmm6
  ad123b:	62 b1 64 00 16 f4    	vmovlhps xmm6,xmm19,xmm20
  ad1241:	62 a1 4c 00 16 dd    	vmovlhps xmm19,xmm22,xmm21
  ad1247:	62 a1 7c 08 29 5c d4 	vmovaps XMMWORD PTR [rsp+r10*8+0x50],xmm19
  ad124e:	05 
  ad124f:	c4 a1 78 29 74 d4 40 	vmovaps XMMWORD PTR [rsp+r10*8+0x40],xmm6
  ad1256:	62 b1 6c 00 16 f0    	vmovlhps xmm6,xmm18,xmm16
  ad125c:	62 51 74 00 16 ff    	vmovlhps xmm15,xmm17,xmm15
  ad1262:	c4 21 78 29 7c d4 70 	vmovaps XMMWORD PTR [rsp+r10*8+0x70],xmm15
  ad1269:	c4 a1 78 29 74 d4 60 	vmovaps XMMWORD PTR [rsp+r10*8+0x60],xmm6
  ad1270:	49 83 c2 40          	add    r10,0x40
  ad1274:	49 83 c3 20          	add    r11,0x20
  ad1278:	f6 c3 01             	test   bl,0x1
  ad127b:	b3 01                	mov    bl,0x1
  ad127d:	0f 85 8d fa ff ff    	jne    ad0d10 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x50>
  ad1283:	4d 85 d2             	test   r10,r10
  ad1286:	74 78                	je     ad1300 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x640>
  ad1288:	62 c1 ff 08 10 23    	vmovsd xmm20,QWORD PTR [r11]
  ad128e:	62 c1 ff 08 10 5b 05 	vmovsd xmm19,QWORD PTR [r11+0x28]
  ad1295:	c4 41 7b 10 7b 50    	vmovsd xmm15,QWORD PTR [r11+0x50]
  ad129b:	62 c1 ff 08 10 4b 0f 	vmovsd xmm17,QWORD PTR [r11+0x78]
  ad12a2:	62 41 ff 08 10 4b 14 	vmovsd xmm25,QWORD PTR [r11+0xa0]
  ad12a9:	62 c1 ff 08 10 73 19 	vmovsd xmm22,QWORD PTR [r11+0xc8]
  ad12b0:	62 c1 ff 08 10 43 1e 	vmovsd xmm16,QWORD PTR [r11+0xf0]
  ad12b7:	62 c1 ff 08 10 53 23 	vmovsd xmm18,QWORD PTR [r11+0x118]
  ad12be:	62 41 ff 08 10 63 28 	vmovsd xmm28,QWORD PTR [r11+0x140]
  ad12c5:	62 41 ff 08 10 53 2d 	vmovsd xmm26,QWORD PTR [r11+0x168]
  ad12cc:	62 c1 ff 08 10 7b 32 	vmovsd xmm23,QWORD PTR [r11+0x190]
  ad12d3:	62 c1 ff 08 10 6b 37 	vmovsd xmm21,QWORD PTR [r11+0x1b8]
  ad12da:	62 41 ff 08 10 73 3c 	vmovsd xmm30,QWORD PTR [r11+0x1e0]
  ad12e1:	62 41 ff 08 10 6b 41 	vmovsd xmm29,QWORD PTR [r11+0x208]
  ad12e8:	62 41 ff 08 10 5b 46 	vmovsd xmm27,QWORD PTR [r11+0x230]
  ad12ef:	62 41 ff 08 10 43 4b 	vmovsd xmm24,QWORD PTR [r11+0x258]
  ad12f6:	e9 a1 00 00 00       	jmp    ad139c <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x6dc>
  ad12fb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  ad1300:	62 c1 7c 28 10 23    	vmovups ymm20,YMMWORD PTR [r11]
  ad1306:	62 c1 7c 28 10 8b 78 	vmovups ymm17,YMMWORD PTR [r11+0x78]
  ad130d:	00 00 00 
  ad1310:	62 c1 7c 28 10 83 f0 	vmovups ymm16,YMMWORD PTR [r11+0xf0]
  ad1317:	00 00 00 
  ad131a:	62 a1 7c 28 10 9c 8f 	vmovups ymm19,YMMWORD PTR [rdi+r9*4+0x28]
  ad1321:	28 00 00 00 
  ad1325:	c4 21 7c 10 7c 8f 50 	vmovups ymm15,YMMWORD PTR [rdi+r9*4+0x50]
  ad132c:	62 21 7c 28 10 4c 8f 	vmovups ymm25,YMMWORD PTR [rdi+r9*4+0xa0]
  ad1333:	05 
  ad1334:	62 a1 7c 28 10 b4 8f 	vmovups ymm22,YMMWORD PTR [rdi+r9*4+0xc8]
  ad133b:	c8 00 00 00 
  ad133f:	62 a1 7c 28 10 94 8f 	vmovups ymm18,YMMWORD PTR [rdi+r9*4+0x118]
  ad1346:	18 01 00 00 
  ad134a:	62 21 7c 28 10 64 8f 	vmovups ymm28,YMMWORD PTR [rdi+r9*4+0x140]
  ad1351:	0a 
  ad1352:	62 21 7c 28 10 94 8f 	vmovups ymm26,YMMWORD PTR [rdi+r9*4+0x168]
  ad1359:	68 01 00 00 
  ad135d:	62 a1 7c 28 10 bc 8f 	vmovups ymm23,YMMWORD PTR [rdi+r9*4+0x190]
  ad1364:	90 01 00 00 
  ad1368:	62 a1 7c 28 10 ac 8f 	vmovups ymm21,YMMWORD PTR [rdi+r9*4+0x1b8]
  ad136f:	b8 01 00 00 
  ad1373:	62 21 7c 28 10 74 8f 	vmovups ymm30,YMMWORD PTR [rdi+r9*4+0x1e0]
  ad137a:	0f 
  ad137b:	62 21 7c 28 10 ac 8f 	vmovups ymm29,YMMWORD PTR [rdi+r9*4+0x208]
  ad1382:	08 02 00 00 
  ad1386:	62 21 7c 28 10 9c 8f 	vmovups ymm27,YMMWORD PTR [rdi+r9*4+0x230]
  ad138d:	30 02 00 00 
  ad1391:	62 21 7c 28 10 84 8f 	vmovups ymm24,YMMWORD PTR [rdi+r9*4+0x258]
  ad1398:	58 02 00 00 
  ad139c:	62 91 5c 20 58 f4    	vaddps ymm6,ymm20,ymm28
  ad13a2:	62 01 5c 20 5c fc    	vsubps ymm31,ymm20,ymm28
  ad13a8:	62 91 34 20 58 fe    	vaddps ymm7,ymm25,ymm30
  ad13ae:	62 81 34 20 5c e6    	vsubps ymm20,ymm25,ymm30
  ad13b4:	62 a1 5c 20 c6 e4 b1 	vshufps ymm20,ymm20,ymm20,0xb1
  ad13bb:	62 61 7c 28 28 e0    	vmovaps ymm28,ymm0
  ad13c1:	62 02 5d 20 a8 e7    	vfmadd213ps ymm28,ymm20,ymm31
  ad13c7:	62 82 7d 28 ac e7    	vfnmadd213ps ymm20,ymm0,ymm31
  ad13cd:	62 61 4c 28 58 f7    	vaddps ymm30,ymm6,ymm7
  ad13d3:	62 61 4c 28 5c cf    	vsubps ymm25,ymm6,ymm7
  ad13d9:	62 91 64 20 58 f2    	vaddps ymm6,ymm19,ymm26
  ad13df:	62 91 64 20 5c fa    	vsubps ymm7,ymm19,ymm26
  ad13e5:	62 01 4c 20 58 d5    	vaddps ymm26,ymm22,ymm29
  ad13eb:	62 81 4c 20 5c dd    	vsubps ymm19,ymm22,ymm29
  ad13f1:	62 a1 64 20 c6 f3 b1 	vshufps ymm22,ymm19,ymm19,0xb1
  ad13f8:	62 61 7c 28 28 e8    	vmovaps ymm29,ymm0
  ad13fe:	62 62 4d 20 a8 ef    	vfmadd213ps ymm29,ymm22,ymm7
  ad1404:	62 e2 7d 28 ac f7    	vfnmadd213ps ymm22,ymm0,ymm7
  ad140a:	62 81 4c 28 58 da    	vaddps ymm19,ymm6,ymm26
  ad1410:	62 91 4c 28 5c f2    	vsubps ymm6,ymm6,ymm26
  ad1416:	62 b1 04 28 58 ff    	vaddps ymm7,ymm15,ymm23
  ad141c:	62 a1 04 28 5c ff    	vsubps ymm23,ymm15,ymm23
  ad1422:	62 01 7c 20 58 d3    	vaddps ymm26,ymm16,ymm27
  ad1428:	62 11 7c 20 5c fb    	vsubps ymm15,ymm16,ymm27
  ad142e:	c4 41 04 c6 ff b1    	vshufps ymm15,ymm15,ymm15,0xb1
  ad1434:	62 e1 7c 28 28 c0    	vmovaps ymm16,ymm0
  ad143a:	62 a2 05 28 a8 c7    	vfmadd213ps ymm16,ymm15,ymm23
  ad1440:	62 32 7d 28 ac ff    	vfnmadd213ps ymm15,ymm0,ymm23
  ad1446:	62 81 44 28 58 fa    	vaddps ymm23,ymm7,ymm26
  ad144c:	62 91 44 28 5c fa    	vsubps ymm7,ymm7,ymm26
  ad1452:	62 21 74 20 58 d5    	vaddps ymm26,ymm17,ymm21
  ad1458:	62 a1 74 20 5c cd    	vsubps ymm17,ymm17,ymm21
  ad145e:	62 81 6c 20 58 e8    	vaddps ymm21,ymm18,ymm24
  ad1464:	62 81 6c 20 5c d0    	vsubps ymm18,ymm18,ymm24
  ad146a:	62 a1 6c 20 c6 d2 b1 	vshufps ymm18,ymm18,ymm18,0xb1
  ad1471:	62 61 7c 28 28 c0    	vmovaps ymm24,ymm0
  ad1477:	62 22 6d 20 a8 c1    	vfmadd213ps ymm24,ymm18,ymm17
  ad147d:	62 a2 7d 28 ac d1    	vfnmadd213ps ymm18,ymm0,ymm17
  ad1483:	62 21 2c 20 58 dd    	vaddps ymm27,ymm26,ymm21
  ad1489:	62 a1 2c 20 5c cd    	vsubps ymm17,ymm26,ymm21
  ad148f:	62 81 14 20 c6 ed b1 	vshufps ymm21,ymm29,ymm29,0xb1
  ad1496:	62 41 14 20 59 e9    	vmulps ymm29,ymm29,ymm9
  ad149c:	62 22 2d 28 b8 ed    	vfmadd231ps ymm29,ymm10,ymm21
  ad14a2:	62 e1 4c 28 c6 ee b1 	vshufps ymm21,ymm6,ymm6,0xb1
  ad14a9:	c5 cc 59 f4          	vmulps ymm6,ymm6,ymm4
  ad14ad:	62 b2 6d 28 b8 f5    	vfmadd231ps ymm6,ymm2,ymm21
  ad14b3:	62 21 4c 20 c6 d6 b1 	vshufps ymm26,ymm22,ymm22,0xb1
  ad14ba:	62 c1 4c 20 59 eb    	vmulps ymm21,ymm22,ymm11
  ad14c0:	62 82 1d 28 b8 ea    	vfmadd231ps ymm21,ymm12,ymm26
  ad14c6:	62 81 3c 20 c6 f0 b1 	vshufps ymm22,ymm24,ymm24,0xb1
  ad14cd:	62 41 3c 20 59 c3    	vmulps ymm24,ymm24,ymm11
  ad14d3:	62 22 1d 28 b8 c6    	vfmadd231ps ymm24,ymm12,ymm22
  ad14d9:	62 a1 74 20 c6 f1 b1 	vshufps ymm22,ymm17,ymm17,0xb1
  ad14e0:	62 61 74 20 59 fb    	vmulps ymm31,ymm17,ymm3
  ad14e6:	62 22 6d 28 b8 fe    	vfmadd231ps ymm31,ymm2,ymm22
  ad14ec:	62 a1 6c 20 c6 ca b1 	vshufps ymm17,ymm18,ymm18,0xb1
  ad14f3:	62 51 6c 20 59 c6    	vmulps ymm8,ymm18,ymm14
  ad14f9:	62 32 15 28 b8 c1    	vfmadd231ps ymm8,ymm13,ymm17
  ad14ff:	62 a1 0c 20 58 f7    	vaddps ymm22,ymm30,ymm23
  ad1505:	62 21 0c 20 5c d7    	vsubps ymm26,ymm30,ymm23
  ad150b:	62 a1 7c 20 c6 c8 b1 	vshufps ymm17,ymm16,ymm16,0xb1
  ad1512:	62 61 7c 28 28 f4    	vmovaps ymm30,ymm4
  ad1518:	62 02 7d 20 a8 f4    	vfmadd213ps ymm30,ymm16,ymm28
  ad151e:	62 62 75 20 b8 f2    	vfmadd231ps ymm30,ymm17,ymm2
  ad1524:	62 82 5d 28 ac c4    	vfnmadd213ps ymm16,ymm4,ymm28
  ad152a:	62 a2 6d 28 bc c1    	vfnmadd231ps ymm16,ymm2,ymm17
  ad1530:	62 e1 44 28 c6 cf b1 	vshufps ymm17,ymm7,ymm7,0xb1
  ad1537:	c5 fc 28 f8          	vmovaps ymm7,ymm0
  ad153b:	62 92 75 20 a8 f9    	vfmadd213ps ymm7,ymm17,ymm25
  ad1541:	62 82 7d 28 ac c9    	vfnmadd213ps ymm17,ymm0,ymm25
  ad1547:	62 c1 04 28 c6 d7 b1 	vshufps ymm18,ymm15,ymm15,0xb1
  ad154e:	c5 fc 28 cc          	vmovaps ymm1,ymm4
  ad1552:	62 b2 05 28 ac cc    	vfnmadd213ps ymm1,ymm15,ymm20
  ad1558:	62 f2 6d 20 b8 ca    	vfmadd231ps ymm1,ymm18,ymm2
  ad155e:	62 32 5d 28 a8 fc    	vfmadd213ps ymm15,ymm4,ymm20
  ad1564:	62 32 6d 28 bc fa    	vfnmadd231ps ymm15,ymm2,ymm18
  ad156a:	62 81 64 20 58 e3    	vaddps ymm20,ymm19,ymm27
  ad1570:	62 81 64 20 5c d3    	vsubps ymm18,ymm19,ymm27
  ad1576:	62 a1 6c 20 c6 d2 b1 	vshufps ymm18,ymm18,ymm18,0xb1
  ad157d:	62 e1 7c 28 28 f8    	vmovaps ymm23,ymm0
  ad1583:	62 82 6d 20 a8 fa    	vfmadd213ps ymm23,ymm18,ymm26
  ad1589:	62 82 7d 28 ac d2    	vfnmadd213ps ymm18,ymm0,ymm26
  ad158f:	62 21 4c 20 58 d4    	vaddps ymm26,ymm22,ymm20
  ad1595:	62 a1 4c 20 5c dc    	vsubps ymm19,ymm22,ymm20
  ad159b:	62 81 14 20 58 e0    	vaddps ymm20,ymm29,ymm24
  ad15a1:	62 81 14 20 5c f0    	vsubps ymm22,ymm29,ymm24
  ad15a7:	62 a1 4c 20 c6 f6 b1 	vshufps ymm22,ymm22,ymm22,0xb1
  ad15ae:	62 61 7c 28 28 c0    	vmovaps ymm24,ymm0
  ad15b4:	62 22 4d 20 a8 c0    	vfmadd213ps ymm24,ymm22,ymm16
  ad15ba:	62 a2 7d 28 bc c6    	vfnmadd231ps ymm16,ymm0,ymm22
  ad15c0:	62 21 0c 20 58 e4    	vaddps ymm28,ymm30,ymm20
  ad15c6:	62 a1 0c 20 5c e4    	vsubps ymm20,ymm30,ymm20
  ad15cc:	62 81 4c 28 58 f7    	vaddps ymm22,ymm6,ymm31
  ad15d2:	62 91 4c 28 5c f7    	vsubps ymm6,ymm6,ymm31
  ad15d8:	c5 cc c6 f6 b1       	vshufps ymm6,ymm6,ymm6,0xb1
  ad15dd:	62 61 7c 28 28 c8    	vmovaps ymm25,ymm0
  ad15e3:	62 22 4d 28 a8 c9    	vfmadd213ps ymm25,ymm6,ymm17
  ad15e9:	62 e2 7d 28 bc ce    	vfnmadd231ps ymm17,ymm0,ymm6
  ad15ef:	62 21 44 28 58 ee    	vaddps ymm29,ymm7,ymm22
  ad15f5:	62 a1 44 28 5c f6    	vsubps ymm22,ymm7,ymm22
  ad15fb:	62 d1 54 20 58 f0    	vaddps ymm6,ymm21,ymm8
  ad1601:	62 d1 54 20 5c f8    	vsubps ymm7,ymm21,ymm8
  ad1607:	c5 c4 c6 ff b1       	vshufps ymm7,ymm7,ymm7,0xb1
  ad160c:	62 61 7c 28 28 d8    	vmovaps ymm27,ymm0
  ad1612:	62 42 45 28 a8 df    	vfmadd213ps ymm27,ymm7,ymm15
  ad1618:	c4 62 7d bc ff       	vfnmadd231ps ymm15,ymm0,ymm7
  ad161d:	62 61 74 28 58 f6    	vaddps ymm30,ymm1,ymm6
  ad1623:	62 e1 74 28 5c ee    	vsubps ymm21,ymm1,ymm6
  ad1629:	62 01 ad 20 14 fc    	vunpcklpd ymm31,ymm26,ymm28
  ad162f:	62 91 95 20 14 f6    	vunpcklpd ymm6,ymm29,ymm30
  ad1635:	62 f3 05 20 18 ce 01 	vinsertf32x4 ymm1,ymm31,xmm6,0x1
  ad163c:	c4 a1 7c 29 0c d4    	vmovaps YMMWORD PTR [rsp+r10*8],ymm1
  ad1642:	49 83 fa 40          	cmp    r10,0x40
  ad1646:	0f 84 d4 fb ff ff    	je     ad1220 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x560>
  ad164c:	62 01 ad 20 15 d4    	vunpckhpd ymm26,ymm26,ymm28
  ad1652:	62 01 95 20 15 e6    	vunpckhpd ymm28,ymm29,ymm30
  ad1658:	62 03 ad 20 23 ec 03 	vshuff64x2 ymm29,ymm26,ymm28,0x3
  ad165f:	62 f3 85 20 23 f6 03 	vshuff64x2 ymm6,ymm31,ymm6,0x3
  ad1666:	62 03 2d 20 18 d4 01 	vinsertf32x4 ymm26,ymm26,xmm28,0x1
  ad166d:	62 21 7c 28 29 54 d4 	vmovaps YMMWORD PTR [rsp+r10*8+0x80],ymm26
  ad1674:	04 
  ad1675:	c4 a1 7d 29 b4 d4 00 	vmovapd YMMWORD PTR [rsp+r10*8+0x100],ymm6
  ad167c:	01 00 00 
  ad167f:	62 21 fd 28 29 6c d4 	vmovapd YMMWORD PTR [rsp+r10*8+0x180],ymm29
  ad1686:	0c 
  ad1687:	62 91 c5 20 14 f0    	vunpcklpd ymm6,ymm23,ymm24
  ad168d:	62 01 b5 20 14 d3    	vunpcklpd ymm26,ymm25,ymm27
  ad1693:	62 03 4d 28 18 e2 01 	vinsertf32x4 ymm28,ymm6,xmm26,0x1
  ad169a:	62 21 7c 28 29 64 d4 	vmovaps YMMWORD PTR [rsp+r10*8+0x20],ymm28
  ad16a1:	01 
  ad16a2:	62 81 c5 20 15 f8    	vunpckhpd ymm23,ymm23,ymm24
  ad16a8:	62 01 b5 20 15 c3    	vunpckhpd ymm24,ymm25,ymm27
  ad16ae:	62 03 c5 20 23 c8 03 	vshuff64x2 ymm25,ymm23,ymm24,0x3
  ad16b5:	62 93 cd 28 23 f2 03 	vshuff64x2 ymm6,ymm6,ymm26,0x3
  ad16bc:	62 83 45 20 18 f8 01 	vinsertf32x4 ymm23,ymm23,xmm24,0x1
  ad16c3:	62 a1 7c 28 29 7c d4 	vmovaps YMMWORD PTR [rsp+r10*8+0xa0],ymm23
  ad16ca:	05 
  ad16cb:	c4 a1 7d 29 b4 d4 20 	vmovapd YMMWORD PTR [rsp+r10*8+0x120],ymm6
  ad16d2:	01 00 00 
  ad16d5:	62 21 fd 28 29 4c d4 	vmovapd YMMWORD PTR [rsp+r10*8+0x1a0],ymm25
  ad16dc:	0d 
  ad16dd:	62 b1 e5 20 14 f4    	vunpcklpd ymm6,ymm19,ymm20
  ad16e3:	62 a1 cd 20 14 fd    	vunpcklpd ymm23,ymm22,ymm21
  ad16e9:	62 23 4d 28 18 c7 01 	vinsertf32x4 ymm24,ymm6,xmm23,0x1
  ad16f0:	62 21 7c 28 29 44 d4 	vmovaps YMMWORD PTR [rsp+r10*8+0x40],ymm24
  ad16f7:	02 
  ad16f8:	62 a1 e5 20 15 dc    	vunpckhpd ymm19,ymm19,ymm20
  ad16fe:	62 a1 cd 20 15 e5    	vunpckhpd ymm20,ymm22,ymm21
  ad1704:	62 a3 e5 20 23 ec 03 	vshuff64x2 ymm21,ymm19,ymm20,0x3
  ad170b:	62 b3 cd 28 23 f7 03 	vshuff64x2 ymm6,ymm6,ymm23,0x3
  ad1712:	62 a3 65 20 18 dc 01 	vinsertf32x4 ymm19,ymm19,xmm20,0x1
  ad1719:	62 a1 7c 28 29 5c d4 	vmovaps YMMWORD PTR [rsp+r10*8+0xc0],ymm19
  ad1720:	06 
  ad1721:	c4 a1 7d 29 b4 d4 40 	vmovapd YMMWORD PTR [rsp+r10*8+0x140],ymm6
  ad1728:	01 00 00 
  ad172b:	62 a1 fd 28 29 6c d4 	vmovapd YMMWORD PTR [rsp+r10*8+0x1c0],ymm21
  ad1732:	0e 
  ad1733:	62 b1 ed 20 14 f0    	vunpcklpd ymm6,ymm18,ymm16
  ad1739:	62 c1 f5 20 14 df    	vunpcklpd ymm19,ymm17,ymm15
  ad173f:	62 a3 4d 28 18 e3 01 	vinsertf32x4 ymm20,ymm6,xmm19,0x1
  ad1746:	62 a1 7c 28 29 64 d4 	vmovaps YMMWORD PTR [rsp+r10*8+0x60],ymm20
  ad174d:	03 
  ad174e:	62 a1 ed 20 15 c0    	vunpckhpd ymm16,ymm18,ymm16
  ad1754:	62 51 f5 20 15 ff    	vunpckhpd ymm15,ymm17,ymm15
  ad175a:	62 c3 fd 20 23 cf 03 	vshuff64x2 ymm17,ymm16,ymm15,0x3
  ad1761:	62 b3 cd 28 23 f3 03 	vshuff64x2 ymm6,ymm6,ymm19,0x3
  ad1768:	62 53 7d 20 18 ff 01 	vinsertf32x4 ymm15,ymm16,xmm15,0x1
  ad176f:	c4 21 7c 29 bc d4 e0 	vmovaps YMMWORD PTR [rsp+r10*8+0xe0],ymm15
  ad1776:	00 00 00 
  ad1779:	c4 a1 7d 29 b4 d4 60 	vmovapd YMMWORD PTR [rsp+r10*8+0x160],ymm6
  ad1780:	01 00 00 
  ad1783:	62 a1 fd 28 29 4c d4 	vmovapd YMMWORD PTR [rsp+r10*8+0x1e0],ymm17
  ad178a:	0f 
  ad178b:	e9 e0 fa ff ff       	jmp    ad1270 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x5b0>
  ad1790:	48 8d 65 f8          	lea    rsp,[rbp-0x8]
  ad1794:	5b                   	pop    rbx
  ad1795:	5d                   	pop    rbp
  ad1796:	c5 f8 77             	vzeroupper
  ad1799:	c3                   	ret
  ad179a:	cc                   	int3
  ad179b:	cc                   	int3
  ad179c:	cc                   	int3
  ad179d:	cc                   	int3
  ad179e:	cc                   	int3
  ad179f:	cc                   	int3
  ad17a0:	cc                   	int3
  ad17a1:	cc                   	int3
  ad17a2:	cc                   	int3
  ad17a3:	cc                   	int3
  ad17a4:	cc                   	int3
  ad17a5:	cc                   	int3
  ad17a6:	cc                   	int3
  ad17a7:	cc                   	int3
  ad17a8:	cc                   	int3
  ad17a9:	cc                   	int3
  ad17aa:	cc                   	int3
  ad17ab:	cc                   	int3
  ad17ac:	cc                   	int3
  ad17ad:	cc                   	int3
  ad17ae:	cc                   	int3
  ad17af:	cc                   	int3
  ad17b0:	cc                   	int3
  ad17b1:	cc                   	int3
  ad17b2:	cc                   	int3
  ad17b3:	cc                   	int3
  ad17b4:	cc                   	int3
  ad17b5:	cc                   	int3
  ad17b6:	cc                   	int3
  ad17b7:	cc                   	int3
  ad17b8:	cc                   	int3
  ad17b9:	cc                   	int3
  ad17ba:	cc                   	int3
  ad17bb:	cc                   	int3
  ad17bc:	cc                   	int3
  ad17bd:	cc                   	int3
  ad17be:	cc                   	int3
  ad17bf:	cc                   	int3
