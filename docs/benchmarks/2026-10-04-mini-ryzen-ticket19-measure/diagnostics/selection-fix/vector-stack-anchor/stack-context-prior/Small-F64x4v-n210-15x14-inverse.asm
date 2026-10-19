
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b78cc0 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle>:
  b78cc0:	55                   	push   rbp
  b78cc1:	48 89 e5             	mov    rbp,rsp
  b78cc4:	41 56                	push   r14
  b78cc6:	53                   	push   rbx
  b78cc7:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  b78ccb:	48 81 ec c0 0f 00 00 	sub    rsp,0xfc0
  b78cd2:	48 c7 04 24 00 00 00 	mov    QWORD PTR [rsp],0x0
  b78cd9:	00 
  b78cda:	48 81 ec c0 0b 00 00 	sub    rsp,0xbc0
  b78ce1:	48 8d 84 24 80 04 00 	lea    rax,[rsp+0x480]
  b78ce8:	00 
  b78ce9:	48 8d 8c 24 c0 02 00 	lea    rcx,[rsp+0x2c0]
  b78cf0:	00 
  b78cf1:	c6 84 24 00 0b 00 00 	mov    BYTE PTR [rsp+0xb00],0x0
  b78cf8:	00 
  b78cf9:	4c 8d 84 24 00 0b 00 	lea    r8,[rsp+0xb00]
  b78d00:	00 
  b78d01:	4c 89 84 24 40 0b 00 	mov    QWORD PTR [rsp+0xb40],r8
  b78d08:	00 
  b78d09:	4c 8d 84 24 40 0b 00 	lea    r8,[rsp+0xb40]
  b78d10:	00 
  b78d11:	4c 8d 84 24 f0 0e 00 	lea    r8,[rsp+0xef0]
  b78d18:	00 
  b78d19:	45 31 c9             	xor    r9d,r9d
  b78d1c:	eb 1b                	jmp    b78d39 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x79>
  b78d1e:	66 90                	xchg   ax,ax
  b78d20:	49 83 c1 04          	add    r9,0x4
  b78d24:	49 81 c0 c0 03 00 00 	add    r8,0x3c0
  b78d2b:	48 83 c7 40          	add    rdi,0x40
  b78d2f:	49 83 f9 10          	cmp    r9,0x10
  b78d33:	0f 84 ef 0e 00 00    	je     b79c28 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0xf68>
  b78d39:	49 83 f9 0b          	cmp    r9,0xb
  b78d3d:	0f 83 6d 02 00 00    	jae    b78fb0 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x2f0>
  b78d43:	c5 fd 10 07          	vmovupd ymm0,YMMWORD PTR [rdi]
  b78d47:	c5 fd 10 4f 20       	vmovupd ymm1,YMMWORD PTR [rdi+0x20]
  b78d4c:	c5 fd 10 97 e0 00 00 	vmovupd ymm2,YMMWORD PTR [rdi+0xe0]
  b78d53:	00 
  b78d54:	c5 fd 10 9f 00 01 00 	vmovupd ymm3,YMMWORD PTR [rdi+0x100]
  b78d5b:	00 
  b78d5c:	c4 e3 7d 06 e1 31    	vperm2f128 ymm4,ymm0,ymm1,0x31
  b78d62:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  b78d68:	c5 fd 14 cc          	vunpcklpd ymm1,ymm0,ymm4
  b78d6c:	c5 fd 29 8c 24 c0 00 	vmovapd YMMWORD PTR [rsp+0xc0],ymm1
  b78d73:	00 00 
  b78d75:	c5 fd 15 c4          	vunpckhpd ymm0,ymm0,ymm4
  b78d79:	c5 fd 29 84 24 a0 00 	vmovapd YMMWORD PTR [rsp+0xa0],ymm0
  b78d80:	00 00 
  b78d82:	c4 e3 6d 06 c3 31    	vperm2f128 ymm0,ymm2,ymm3,0x31
  b78d88:	c4 e3 6d 06 cb 20    	vperm2f128 ymm1,ymm2,ymm3,0x20
  b78d8e:	62 e1 f5 28 14 d8    	vunpcklpd ymm19,ymm1,ymm0
  b78d94:	62 e1 f5 28 15 d0    	vunpckhpd ymm18,ymm1,ymm0
  b78d9a:	c5 fd 10 87 c0 01 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x1c0]
  b78da1:	00 
  b78da2:	c5 fd 10 8f e0 01 00 	vmovupd ymm1,YMMWORD PTR [rdi+0x1e0]
  b78da9:	00 
  b78daa:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  b78db0:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  b78db6:	62 e1 fd 28 14 f2    	vunpcklpd ymm22,ymm0,ymm2
  b78dbc:	62 61 fd 28 15 c2    	vunpckhpd ymm24,ymm0,ymm2
  b78dc2:	c5 fd 10 87 a0 02 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x2a0]
  b78dc9:	00 
  b78dca:	c5 fd 10 8f c0 02 00 	vmovupd ymm1,YMMWORD PTR [rdi+0x2c0]
  b78dd1:	00 
  b78dd2:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  b78dd8:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  b78dde:	62 e1 fd 28 14 ea    	vunpcklpd ymm21,ymm0,ymm2
  b78de4:	c5 fd 15 c2          	vunpckhpd ymm0,ymm0,ymm2
  b78de8:	c5 fd 29 44 24 40    	vmovapd YMMWORD PTR [rsp+0x40],ymm0
  b78dee:	c5 fd 10 87 80 03 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x380]
  b78df5:	00 
  b78df6:	c5 fd 10 8f a0 03 00 	vmovupd ymm1,YMMWORD PTR [rdi+0x3a0]
  b78dfd:	00 
  b78dfe:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  b78e04:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  b78e0a:	62 61 fd 28 14 ca    	vunpcklpd ymm25,ymm0,ymm2
  b78e10:	62 e1 fd 28 15 ca    	vunpckhpd ymm17,ymm0,ymm2
  b78e16:	c5 fd 10 87 60 04 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x460]
  b78e1d:	00 
  b78e1e:	c5 fd 10 8f 80 04 00 	vmovupd ymm1,YMMWORD PTR [rdi+0x480]
  b78e25:	00 
  b78e26:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  b78e2c:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  b78e32:	62 e1 fd 28 14 e2    	vunpcklpd ymm20,ymm0,ymm2
  b78e38:	c5 fd 15 c2          	vunpckhpd ymm0,ymm0,ymm2
  b78e3c:	c5 fd 29 44 24 20    	vmovapd YMMWORD PTR [rsp+0x20],ymm0
  b78e42:	c5 fd 10 87 40 05 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x540]
  b78e49:	00 
  b78e4a:	c5 fd 10 8f 60 05 00 	vmovupd ymm1,YMMWORD PTR [rdi+0x560]
  b78e51:	00 
  b78e52:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  b78e58:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  b78e5e:	62 61 fd 28 14 d2    	vunpcklpd ymm26,ymm0,ymm2
  b78e64:	c5 fd 15 c2          	vunpckhpd ymm0,ymm0,ymm2
  b78e68:	c5 fd 29 04 24       	vmovapd YMMWORD PTR [rsp],ymm0
  b78e6d:	c5 fd 10 87 20 06 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x620]
  b78e74:	00 
  b78e75:	c5 fd 10 8f 40 06 00 	vmovupd ymm1,YMMWORD PTR [rdi+0x640]
  b78e7c:	00 
  b78e7d:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  b78e83:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  b78e89:	62 61 fd 28 14 ea    	vunpcklpd ymm29,ymm0,ymm2
  b78e8f:	62 e1 fd 28 15 c2    	vunpckhpd ymm16,ymm0,ymm2
  b78e95:	c5 fd 10 87 00 07 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x700]
  b78e9c:	00 
  b78e9d:	c5 fd 10 8f 20 07 00 	vmovupd ymm1,YMMWORD PTR [rdi+0x720]
  b78ea4:	00 
  b78ea5:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  b78eab:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  b78eb1:	c5 fd 14 f2          	vunpcklpd ymm6,ymm0,ymm2
  b78eb5:	c5 7d 15 e2          	vunpckhpd ymm12,ymm0,ymm2
  b78eb9:	c5 fd 10 87 e0 07 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x7e0]
  b78ec0:	00 
  b78ec1:	c5 fd 10 8f 00 08 00 	vmovupd ymm1,YMMWORD PTR [rdi+0x800]
  b78ec8:	00 
  b78ec9:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  b78ecf:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  b78ed5:	c5 7d 14 f2          	vunpcklpd ymm14,ymm0,ymm2
  b78ed9:	62 e1 fd 28 15 fa    	vunpckhpd ymm23,ymm0,ymm2
  b78edf:	c5 fd 10 87 c0 08 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x8c0]
  b78ee6:	00 
  b78ee7:	c5 fd 10 8f e0 08 00 	vmovupd ymm1,YMMWORD PTR [rdi+0x8e0]
  b78eee:	00 
  b78eef:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  b78ef5:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  b78efb:	c5 fd 14 ca          	vunpcklpd ymm1,ymm0,ymm2
  b78eff:	c5 fd 29 8c 24 80 00 	vmovapd YMMWORD PTR [rsp+0x80],ymm1
  b78f06:	00 00 
  b78f08:	c5 fd 15 c2          	vunpckhpd ymm0,ymm0,ymm2
  b78f0c:	c5 fd 29 44 24 60    	vmovapd YMMWORD PTR [rsp+0x60],ymm0
  b78f12:	c5 fd 10 87 a0 09 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x9a0]
  b78f19:	00 
  b78f1a:	c5 fd 10 8f c0 09 00 	vmovupd ymm1,YMMWORD PTR [rdi+0x9c0]
  b78f21:	00 
  b78f22:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  b78f28:	c4 e3 7d 06 c9 20    	vperm2f128 ymm1,ymm0,ymm1,0x20
  b78f2e:	c5 f5 14 c2          	vunpcklpd ymm0,ymm1,ymm2
  b78f32:	c5 f5 15 fa          	vunpckhpd ymm7,ymm1,ymm2
  b78f36:	c5 fd 10 8f 80 0a 00 	vmovupd ymm1,YMMWORD PTR [rdi+0xa80]
  b78f3d:	00 
  b78f3e:	c5 fd 10 97 a0 0a 00 	vmovupd ymm2,YMMWORD PTR [rdi+0xaa0]
  b78f45:	00 
  b78f46:	c4 e3 75 06 da 31    	vperm2f128 ymm3,ymm1,ymm2,0x31
  b78f4c:	c4 e3 75 06 ca 20    	vperm2f128 ymm1,ymm1,ymm2,0x20
  b78f52:	c5 f5 14 e3          	vunpcklpd ymm4,ymm1,ymm3
  b78f56:	62 61 f5 28 15 e3    	vunpckhpd ymm28,ymm1,ymm3
  b78f5c:	c5 fd 10 8f 60 0b 00 	vmovupd ymm1,YMMWORD PTR [rdi+0xb60]
  b78f63:	00 
  b78f64:	c5 fd 10 97 80 0b 00 	vmovupd ymm2,YMMWORD PTR [rdi+0xb80]
  b78f6b:	00 
  b78f6c:	c4 e3 75 06 da 31    	vperm2f128 ymm3,ymm1,ymm2,0x31
  b78f72:	c4 e3 75 06 ca 20    	vperm2f128 ymm1,ymm1,ymm2,0x20
  b78f78:	c5 f5 14 d3          	vunpcklpd ymm2,ymm1,ymm3
  b78f7c:	c5 f5 15 db          	vunpckhpd ymm3,ymm1,ymm3
  b78f80:	c5 fd 10 8f 40 0c 00 	vmovupd ymm1,YMMWORD PTR [rdi+0xc40]
  b78f87:	00 
  b78f88:	c5 fd 10 af 60 0c 00 	vmovupd ymm5,YMMWORD PTR [rdi+0xc60]
  b78f8f:	00 
  b78f90:	c4 63 75 06 c5 31    	vperm2f128 ymm8,ymm1,ymm5,0x31
  b78f96:	c4 e3 75 06 cd 20    	vperm2f128 ymm1,ymm1,ymm5,0x20
  b78f9c:	c4 41 75 14 d8       	vunpcklpd ymm11,ymm1,ymm8
  b78fa1:	c4 c1 75 15 e8       	vunpckhpd ymm5,ymm1,ymm8
  b78fa6:	e9 16 02 00 00       	jmp    b791c1 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x501>
  b78fab:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  b78fb0:	c5 fd 10 07          	vmovupd ymm0,YMMWORD PTR [rdi]
  b78fb4:	c5 fd 10 8f e0 00 00 	vmovupd ymm1,YMMWORD PTR [rdi+0xe0]
  b78fbb:	00 
  b78fbc:	c5 fd 10 97 c0 01 00 	vmovupd ymm2,YMMWORD PTR [rdi+0x1c0]
  b78fc3:	00 
  b78fc4:	c4 41 39 57 c0       	vxorpd xmm8,xmm8,xmm8
  b78fc9:	c4 c3 7d 0d d8 0a    	vblendpd ymm3,ymm0,ymm8,0xa
  b78fcf:	c4 e3 fd 01 db f8    	vpermpd ymm3,ymm3,0xf8
  b78fd5:	c5 fd 29 9c 24 c0 00 	vmovapd YMMWORD PTR [rsp+0xc0],ymm3
  b78fdc:	00 00 
  b78fde:	c4 c1 7d 15 c0       	vunpckhpd ymm0,ymm0,ymm8
  b78fe3:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  b78fe9:	c5 fd 29 84 24 a0 00 	vmovapd YMMWORD PTR [rsp+0xa0],ymm0
  b78ff0:	00 00 
  b78ff2:	c4 c3 75 0d c0 0a    	vblendpd ymm0,ymm1,ymm8,0xa
  b78ff8:	62 e3 fd 28 01 d8 f8 	vpermpd ymm19,ymm0,0xf8
  b78fff:	c4 c1 75 15 c0       	vunpckhpd ymm0,ymm1,ymm8
  b79004:	62 e3 fd 28 01 d0 d8 	vpermpd ymm18,ymm0,0xd8
  b7900b:	c4 c3 6d 0d c0 0a    	vblendpd ymm0,ymm2,ymm8,0xa
  b79011:	62 e3 fd 28 01 f0 f8 	vpermpd ymm22,ymm0,0xf8
  b79018:	c4 c1 6d 15 c0       	vunpckhpd ymm0,ymm2,ymm8
  b7901d:	62 63 fd 28 01 c0 d8 	vpermpd ymm24,ymm0,0xd8
  b79024:	c5 fd 10 87 a0 02 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x2a0]
  b7902b:	00 
  b7902c:	c4 c3 7d 0d c8 0a    	vblendpd ymm1,ymm0,ymm8,0xa
  b79032:	62 e3 fd 28 01 e9 f8 	vpermpd ymm21,ymm1,0xf8
  b79039:	c4 c1 7d 15 c0       	vunpckhpd ymm0,ymm0,ymm8
  b7903e:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  b79044:	c5 fd 29 44 24 40    	vmovapd YMMWORD PTR [rsp+0x40],ymm0
  b7904a:	c5 fd 10 87 80 03 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x380]
  b79051:	00 
  b79052:	c4 c3 7d 0d c8 0a    	vblendpd ymm1,ymm0,ymm8,0xa
  b79058:	62 63 fd 28 01 c9 f8 	vpermpd ymm25,ymm1,0xf8
  b7905f:	c4 c1 7d 15 c0       	vunpckhpd ymm0,ymm0,ymm8
  b79064:	62 e3 fd 28 01 c8 d8 	vpermpd ymm17,ymm0,0xd8
  b7906b:	c5 fd 10 87 60 04 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x460]
  b79072:	00 
  b79073:	c4 c3 7d 0d c8 0a    	vblendpd ymm1,ymm0,ymm8,0xa
  b79079:	62 e3 fd 28 01 e1 f8 	vpermpd ymm20,ymm1,0xf8
  b79080:	c4 c1 7d 15 c0       	vunpckhpd ymm0,ymm0,ymm8
  b79085:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  b7908b:	c5 fd 29 44 24 20    	vmovapd YMMWORD PTR [rsp+0x20],ymm0
  b79091:	c5 fd 10 87 40 05 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x540]
  b79098:	00 
  b79099:	c4 c3 7d 0d c8 0a    	vblendpd ymm1,ymm0,ymm8,0xa
  b7909f:	62 63 fd 28 01 d1 f8 	vpermpd ymm26,ymm1,0xf8
  b790a6:	c4 c1 7d 15 c0       	vunpckhpd ymm0,ymm0,ymm8
  b790ab:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  b790b1:	c5 fd 29 04 24       	vmovapd YMMWORD PTR [rsp],ymm0
  b790b6:	c5 fd 10 87 20 06 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x620]
  b790bd:	00 
  b790be:	c4 c3 7d 0d c8 0a    	vblendpd ymm1,ymm0,ymm8,0xa
  b790c4:	62 63 fd 28 01 e9 f8 	vpermpd ymm29,ymm1,0xf8
  b790cb:	c4 c1 7d 15 c0       	vunpckhpd ymm0,ymm0,ymm8
  b790d0:	62 e3 fd 28 01 c0 d8 	vpermpd ymm16,ymm0,0xd8
  b790d7:	c5 fd 10 87 00 07 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x700]
  b790de:	00 
  b790df:	c4 c3 7d 0d c8 0a    	vblendpd ymm1,ymm0,ymm8,0xa
  b790e5:	c4 e3 fd 01 f1 f8    	vpermpd ymm6,ymm1,0xf8
  b790eb:	c4 c1 7d 15 c0       	vunpckhpd ymm0,ymm0,ymm8
  b790f0:	c4 63 fd 01 e0 d8    	vpermpd ymm12,ymm0,0xd8
  b790f6:	c5 fd 10 87 e0 07 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x7e0]
  b790fd:	00 
  b790fe:	c4 c3 7d 0d c8 0a    	vblendpd ymm1,ymm0,ymm8,0xa
  b79104:	c4 63 fd 01 f1 f8    	vpermpd ymm14,ymm1,0xf8
  b7910a:	c4 c1 7d 15 c0       	vunpckhpd ymm0,ymm0,ymm8
  b7910f:	62 e3 fd 28 01 f8 d8 	vpermpd ymm23,ymm0,0xd8
  b79116:	c5 fd 10 87 c0 08 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x8c0]
  b7911d:	00 
  b7911e:	c4 c3 7d 0d c8 0a    	vblendpd ymm1,ymm0,ymm8,0xa
  b79124:	c4 e3 fd 01 c9 f8    	vpermpd ymm1,ymm1,0xf8
  b7912a:	c5 fd 29 8c 24 80 00 	vmovapd YMMWORD PTR [rsp+0x80],ymm1
  b79131:	00 00 
  b79133:	c4 c1 7d 15 c0       	vunpckhpd ymm0,ymm0,ymm8
  b79138:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  b7913e:	c5 fd 29 44 24 60    	vmovapd YMMWORD PTR [rsp+0x60],ymm0
  b79144:	c5 fd 10 8f a0 09 00 	vmovupd ymm1,YMMWORD PTR [rdi+0x9a0]
  b7914b:	00 
  b7914c:	c4 c3 75 0d c0 0a    	vblendpd ymm0,ymm1,ymm8,0xa
  b79152:	c4 e3 fd 01 c0 f8    	vpermpd ymm0,ymm0,0xf8
  b79158:	c4 c1 75 15 c8       	vunpckhpd ymm1,ymm1,ymm8
  b7915d:	c4 e3 fd 01 f9 d8    	vpermpd ymm7,ymm1,0xd8
  b79163:	c5 fd 10 8f 80 0a 00 	vmovupd ymm1,YMMWORD PTR [rdi+0xa80]
  b7916a:	00 
  b7916b:	c4 c3 75 0d d0 0a    	vblendpd ymm2,ymm1,ymm8,0xa
  b79171:	c4 e3 fd 01 e2 f8    	vpermpd ymm4,ymm2,0xf8
  b79177:	c4 c1 75 15 c8       	vunpckhpd ymm1,ymm1,ymm8
  b7917c:	62 63 fd 28 01 e1 d8 	vpermpd ymm28,ymm1,0xd8
  b79183:	c5 fd 10 8f 60 0b 00 	vmovupd ymm1,YMMWORD PTR [rdi+0xb60]
  b7918a:	00 
  b7918b:	c4 c3 75 0d d0 0a    	vblendpd ymm2,ymm1,ymm8,0xa
  b79191:	c4 e3 fd 01 d2 f8    	vpermpd ymm2,ymm2,0xf8
  b79197:	c4 c1 75 15 c8       	vunpckhpd ymm1,ymm1,ymm8
  b7919c:	c4 e3 fd 01 d9 d8    	vpermpd ymm3,ymm1,0xd8
  b791a2:	c5 fd 10 8f 40 0c 00 	vmovupd ymm1,YMMWORD PTR [rdi+0xc40]
  b791a9:	00 
  b791aa:	c4 c3 75 0d e8 0a    	vblendpd ymm5,ymm1,ymm8,0xa
  b791b0:	c4 63 fd 01 dd f8    	vpermpd ymm11,ymm5,0xf8
  b791b6:	c4 c1 75 15 c8       	vunpckhpd ymm1,ymm1,ymm8
  b791bb:	c4 e3 fd 01 e9 d8    	vpermpd ymm5,ymm1,0xd8
  b791c1:	62 01 9d 28 58 f0    	vaddpd ymm30,ymm12,ymm24
  b791c7:	62 b1 cd 28 58 ce    	vaddpd ymm1,ymm6,ymm22
  b791cd:	62 31 cd 28 5c ee    	vsubpd ymm13,ymm6,ymm22
  b791d3:	c5 25 58 c8          	vaddpd ymm9,ymm11,ymm0
  b791d7:	c4 41 7d 5c d3       	vsubpd ymm10,ymm0,ymm11
  b791dc:	62 91 ed 28 58 c5    	vaddpd ymm0,ymm2,ymm29
  b791e2:	62 11 ed 28 5c c5    	vsubpd ymm8,ymm2,ymm29
  b791e8:	62 11 e5 20 58 d9    	vaddpd ymm11,ymm19,ymm25
  b791ee:	62 91 e5 20 5c d1    	vsubpd ymm2,ymm19,ymm25
  b791f4:	62 61 d5 20 58 cc    	vaddpd ymm25,ymm21,ymm4
  b791fa:	62 f1 d5 20 5c e4    	vsubpd ymm4,ymm21,ymm4
  b79200:	c5 fd 29 a4 24 20 01 	vmovapd YMMWORD PTR [rsp+0x120],ymm4
  b79207:	00 00 
  b79209:	62 51 ad 20 58 fe    	vaddpd ymm15,ymm26,ymm14
  b7920f:	62 d1 ad 20 5c e6    	vsubpd ymm4,ymm26,ymm14
  b79215:	c5 fd 29 a4 24 40 02 	vmovapd YMMWORD PTR [rsp+0x240],ymm4
  b7921c:	00 00 
  b7921e:	62 61 c5 28 58 dd    	vaddpd ymm27,ymm7,ymm5
  b79224:	62 81 9d 28 5c d8    	vsubpd ymm19,ymm12,ymm24
  b7922a:	62 e1 fd 28 29 5c 24 	vmovapd YMMWORD PTR [rsp+0x220],ymm19
  b79231:	11 
  b79232:	62 21 e5 28 58 e8    	vaddpd ymm29,ymm3,ymm16
  b79238:	c5 c5 5c fd          	vsubpd ymm7,ymm7,ymm5
  b7923c:	62 21 ed 20 58 f9    	vaddpd ymm31,ymm18,ymm17
  b79242:	62 b1 fd 28 28 ea    	vmovapd ymm5,ymm18
  b79248:	62 a1 e5 28 5c e8    	vsubpd ymm21,ymm3,ymm16
  b7924e:	62 e1 fd 28 29 6c 24 	vmovapd YMMWORD PTR [rsp+0x140],ymm21
  b79255:	0a 
  b79256:	62 e2 fd 28 19 15 f8 	vbroadcastsd ymm18,QWORD PTR [rip+0xffffffffff4fb7f8]        # 74a58 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f08>
  b7925d:	b7 4f ff 
  b79260:	62 b1 fd 28 28 f2    	vmovapd ymm6,ymm18
  b79266:	62 b2 f5 28 a8 f4    	vfmadd213pd ymm6,ymm1,ymm20
  b7926c:	c4 62 7d 19 35 a3 bd 	vbroadcastsd ymm14,QWORD PTR [rip+0xffffffffff4fbda3]        # 75018 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x24c8>
  b79273:	4f ff 
  b79275:	c4 c2 b5 bc f6       	vfnmadd231pd ymm6,ymm9,ymm14
  b7927a:	62 31 d5 28 5c e1    	vsubpd ymm12,ymm5,ymm17
  b79280:	62 e2 fd 28 19 05 3e 	vbroadcastsd ymm16,QWORD PTR [rip+0xffffffffff4fb53e]        # 747c8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c78>
  b79287:	b5 4f ff 
  b7928a:	62 b1 c5 28 59 e8    	vmulpd ymm5,ymm7,ymm16
  b79290:	62 b1 fd 28 28 e4    	vmovapd ymm4,ymm20
  b79296:	62 e2 fd 28 19 25 30 	vbroadcastsd ymm20,QWORD PTR [rip+0xffffffffff4fb930]        # 74bd0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2080>
  b7929d:	b9 4f ff 
  b792a0:	62 b2 e5 20 b8 ec    	vfmadd231pd ymm5,ymm19,ymm20
  b792a6:	62 a1 fd 28 28 ca    	vmovapd ymm17,ymm18
  b792ac:	c5 fd 28 9c 24 80 00 	vmovapd ymm3,YMMWORD PTR [rsp+0x80]
  b792b3:	00 00 
  b792b5:	62 e2 fd 28 a8 cb    	vfmadd213pd ymm17,ymm0,ymm3
  b792bb:	62 c2 a5 28 bc ce    	vfnmadd231pd ymm17,ymm11,ymm14
  b792c1:	62 a1 9d 28 59 d8    	vmulpd ymm19,ymm12,ymm16
  b792c7:	62 a2 d5 20 b8 dc    	vfmadd231pd ymm19,ymm21,ymm20
  b792cd:	c5 fd 29 b4 24 00 02 	vmovapd YMMWORD PTR [rsp+0x200],ymm6
  b792d4:	00 00 
  b792d6:	c5 fd 29 ac 24 e0 01 	vmovapd YMMWORD PTR [rsp+0x1e0],ymm5
  b792dd:	00 00 
  b792df:	c5 cd 5c ed          	vsubpd ymm5,ymm6,ymm5
  b792e3:	62 e1 fd 28 29 4c 24 	vmovapd YMMWORD PTR [rsp+0x1c0],ymm17
  b792ea:	0e 
  b792eb:	62 e1 fd 28 29 5c 24 	vmovapd YMMWORD PTR [rsp+0x1a0],ymm19
  b792f2:	0d 
  b792f3:	62 b1 f5 20 5c f3    	vsubpd ymm6,ymm17,ymm19
  b792f9:	62 e1 d5 28 5c ce    	vsubpd ymm17,ymm5,ymm6
  b792ff:	62 e1 fd 28 29 4c 24 	vmovapd YMMWORD PTR [rsp+0x100],ymm17
  b79306:	08 
  b79307:	c5 d5 58 ee          	vaddpd ymm5,ymm5,ymm6
  b7930b:	c5 fd 29 ac 24 e0 00 	vmovapd YMMWORD PTR [rsp+0xe0],ymm5
  b79312:	00 00 
  b79314:	c5 fd 28 74 24 40    	vmovapd ymm6,YMMWORD PTR [rsp+0x40]
  b7931a:	62 91 cd 28 58 ec    	vaddpd ymm5,ymm6,ymm28
  b79320:	62 91 cd 28 5c f4    	vsubpd ymm6,ymm6,ymm28
  b79326:	62 e1 fd 28 28 1c 24 	vmovapd ymm19,YMMWORD PTR [rsp]
  b7932d:	62 a1 e5 20 58 cf    	vaddpd ymm17,ymm19,ymm23
  b79333:	62 21 e5 20 5c d7    	vsubpd ymm26,ymm19,ymm23
  b79339:	62 21 fd 28 28 e2    	vmovapd ymm28,ymm18
  b7933f:	62 e1 fd 28 28 5c 24 	vmovapd ymm19,YMMWORD PTR [rsp+0x20]
  b79346:	01 
  b79347:	62 22 8d 20 a8 e3    	vfmadd213pd ymm28,ymm30,ymm19
  b7934d:	62 42 a5 20 bc e6    	vfnmadd231pd ymm28,ymm27,ymm14
  b79353:	62 a1 ad 28 59 e8    	vmulpd ymm21,ymm10,ymm16
  b79359:	62 a2 95 28 b8 ec    	vfmadd231pd ymm21,ymm13,ymm20
  b7935f:	62 a1 fd 28 28 f2    	vmovapd ymm22,ymm18
  b79365:	62 e1 fd 28 28 7c 24 	vmovapd ymm23,YMMWORD PTR [rsp+0x60]
  b7936c:	03 
  b7936d:	62 a2 95 20 a8 f7    	vfmadd213pd ymm22,ymm29,ymm23
  b79373:	62 c2 85 20 bc f6    	vfnmadd231pd ymm22,ymm31,ymm14
  b79379:	62 21 ed 28 59 c0    	vmulpd ymm24,ymm2,ymm16
  b7937f:	62 22 bd 28 b8 c4    	vfmadd231pd ymm24,ymm8,ymm20
  b79385:	62 e1 fd 28 29 6c 24 	vmovapd YMMWORD PTR [rsp+0x180],ymm21
  b7938c:	0c 
  b7938d:	62 61 fd 28 29 64 24 	vmovapd YMMWORD PTR [rsp+0x260],ymm28
  b79394:	13 
  b79395:	62 21 9d 20 58 e5    	vaddpd ymm28,ymm28,ymm21
  b7939b:	62 61 fd 28 29 44 24 	vmovapd YMMWORD PTR [rsp+0x160],ymm24
  b793a2:	0b 
  b793a3:	62 81 cd 20 58 e8    	vaddpd ymm21,ymm22,ymm24
  b793a9:	62 21 9d 20 58 c5    	vaddpd ymm24,ymm28,ymm21
  b793af:	62 61 fd 28 29 44 24 	vmovapd YMMWORD PTR [rsp+0x40],ymm24
  b793b6:	02 
  b793b7:	62 21 9d 20 5c e5    	vsubpd ymm28,ymm28,ymm21
  b793bd:	62 81 e5 20 58 ee    	vaddpd ymm21,ymm19,ymm30
  b793c3:	62 22 8d 28 ac f3    	vfnmadd213pd ymm30,ymm14,ymm19
  b793c9:	62 81 d5 20 58 db    	vaddpd ymm19,ymm21,ymm27
  b793cf:	62 e1 fd 28 29 5c 24 	vmovapd YMMWORD PTR [rsp+0x20],ymm19
  b793d6:	01 
  b793d7:	62 02 ed 20 b8 f3    	vfmadd231pd ymm30,ymm18,ymm27
  b793dd:	62 21 95 28 59 d8    	vmulpd ymm27,ymm13,ymm16
  b793e3:	62 42 dd 20 bc da    	vfnmadd231pd ymm27,ymm20,ymm10
  b793e9:	62 11 c5 20 58 d5    	vaddpd ymm10,ymm23,ymm29
  b793ef:	62 22 8d 28 ac ef    	vfnmadd213pd ymm29,ymm14,ymm23
  b793f5:	62 11 ad 28 58 d7    	vaddpd ymm10,ymm10,ymm31
  b793fb:	c5 7d 29 14 24       	vmovapd YMMWORD PTR [rsp],ymm10
  b79400:	62 02 ed 20 b8 ef    	vfmadd231pd ymm29,ymm18,ymm31
  b79406:	62 31 bd 28 59 c0    	vmulpd ymm8,ymm8,ymm16
  b7940c:	62 72 dd 20 bc c2    	vfnmadd231pd ymm8,ymm20,ymm2
  b79412:	62 21 fd 28 28 fa    	vmovapd ymm31,ymm18
  b79418:	c5 7d 28 94 24 a0 00 	vmovapd ymm10,YMMWORD PTR [rsp+0xa0]
  b7941f:	00 00 
  b79421:	62 42 d5 28 a8 fa    	vfmadd213pd ymm31,ymm5,ymm10
  b79427:	c5 ad 58 d5          	vaddpd ymm2,ymm10,ymm5
  b7942b:	c4 c2 8d ac ea       	vfnmadd213pd ymm5,ymm14,ymm10
  b79430:	62 b1 ed 28 58 d1    	vaddpd ymm2,ymm2,ymm17
  b79436:	c5 fd 29 94 24 60 06 	vmovapd YMMWORD PTR [rsp+0x660],ymm2
  b7943d:	00 00 
  b7943f:	62 42 f5 20 bc fe    	vfnmadd231pd ymm31,ymm17,ymm14
  b79445:	62 b2 ed 20 b8 e9    	vfmadd231pd ymm5,ymm18,ymm17
  b7944b:	c5 7d 28 94 24 40 02 	vmovapd ymm10,YMMWORD PTR [rsp+0x240]
  b79452:	00 00 
  b79454:	62 21 ad 28 59 c0    	vmulpd ymm24,ymm10,ymm16
  b7945a:	c5 fd 28 94 24 20 01 	vmovapd ymm2,YMMWORD PTR [rsp+0x120]
  b79461:	00 00 
  b79463:	62 22 ed 28 b8 c4    	vfmadd231pd ymm24,ymm2,ymm20
  b79469:	62 b1 ed 28 59 d0    	vmulpd ymm2,ymm2,ymm16
  b7946f:	62 d2 dd 20 bc d2    	vfnmadd231pd ymm2,ymm20,ymm10
  b79475:	c5 5d 58 e9          	vaddpd ymm13,ymm4,ymm1
  b79479:	c4 e2 8d ac cc       	vfnmadd213pd ymm1,ymm14,ymm4
  b7947e:	c4 41 15 58 d1       	vaddpd ymm10,ymm13,ymm9
  b79483:	62 d2 ed 20 b8 c9    	vfmadd231pd ymm1,ymm18,ymm9
  b79489:	62 71 fd 20 59 4c 24 	vmulpd ymm9,ymm16,YMMWORD PTR [rsp+0x220]
  b79490:	11 
  b79491:	62 72 dd 20 bc cf    	vfnmadd231pd ymm9,ymm20,ymm7
  b79497:	c5 e5 58 f8          	vaddpd ymm7,ymm3,ymm0
  b7949b:	c4 e2 8d ac c3       	vfnmadd213pd ymm0,ymm14,ymm3
  b794a0:	62 c1 c5 28 58 fb    	vaddpd ymm23,ymm7,ymm11
  b794a6:	62 d2 ed 20 b8 c3    	vfmadd231pd ymm0,ymm18,ymm11
  b794ac:	62 f1 fd 20 59 5c 24 	vmulpd ymm3,ymm16,YMMWORD PTR [rsp+0x140]
  b794b3:	0a 
  b794b4:	62 d2 dd 20 bc dc    	vfnmadd231pd ymm3,ymm20,ymm12
  b794ba:	c4 c1 75 5c f9       	vsubpd ymm7,ymm1,ymm9
  b794bf:	c5 7d 5c e3          	vsubpd ymm12,ymm0,ymm3
  b794c3:	c4 c1 45 5c e4       	vsubpd ymm4,ymm7,ymm12
  b794c8:	c5 fd 29 a4 24 40 01 	vmovapd YMMWORD PTR [rsp+0x140],ymm4
  b794cf:	00 00 
  b794d1:	62 c1 c5 28 58 cc    	vaddpd ymm17,ymm7,ymm12
  b794d7:	62 31 fd 28 28 e2    	vmovapd ymm12,ymm18
  b794dd:	c5 7d 28 ac 24 c0 00 	vmovapd ymm13,YMMWORD PTR [rsp+0xc0]
  b794e4:	00 00 
  b794e6:	62 52 b5 20 a8 e5    	vfmadd213pd ymm12,ymm25,ymm13
  b794ec:	62 91 95 28 58 f9    	vaddpd ymm7,ymm13,ymm25
  b794f2:	62 42 8d 28 ac cd    	vfnmadd213pd ymm25,ymm14,ymm13
  b794f8:	c5 05 58 df          	vaddpd ymm11,ymm15,ymm7
  b794fc:	c4 42 85 bc e6       	vfnmadd231pd ymm12,ymm15,ymm14
  b79501:	62 42 ed 20 b8 cf    	vfmadd231pd ymm25,ymm18,ymm15
  b79507:	62 31 ad 20 59 f8    	vmulpd ymm15,ymm26,ymm16
  b7950d:	62 32 cd 28 b8 fc    	vfmadd231pd ymm15,ymm6,ymm20
  b79513:	62 b1 cd 28 59 e0    	vmulpd ymm4,ymm6,ymm16
  b79519:	62 92 dd 20 bc e2    	vfnmadd231pd ymm4,ymm20,ymm26
  b7951f:	62 91 8d 20 58 fb    	vaddpd ymm7,ymm30,ymm27
  b79525:	62 51 95 20 58 e8    	vaddpd ymm13,ymm29,ymm8
  b7952b:	c5 95 58 f7          	vaddpd ymm6,ymm13,ymm7
  b7952f:	c4 41 45 5c ed       	vsubpd ymm13,ymm7,ymm13
  b79534:	c5 d5 58 fa          	vaddpd ymm7,ymm5,ymm2
  b79538:	62 e1 d5 28 5c da    	vsubpd ymm19,ymm5,ymm2
  b7953e:	62 11 8d 20 5c f3    	vsubpd ymm14,ymm30,ymm27
  b79544:	62 c1 95 20 5c c0    	vsubpd ymm16,ymm29,ymm8
  b7954a:	62 f1 b5 20 5c d4    	vsubpd ymm2,ymm25,ymm4
  b79550:	62 81 dd 28 58 d1    	vaddpd ymm18,ymm4,ymm25
  b79556:	c5 35 58 c9          	vaddpd ymm9,ymm9,ymm1
  b7955a:	62 e1 e5 28 58 e8    	vaddpd ymm21,ymm3,ymm0
  b79560:	c4 c1 1d 5c c7       	vsubpd ymm0,ymm12,ymm15
  b79565:	62 62 fd 28 19 1d 29 	vbroadcastsd ymm27,QWORD PTR [rip+0xffffffffff4fb529]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  b7956c:	b5 4f ff 
  b7956f:	62 91 fd 28 28 cb    	vmovapd ymm1,ymm27
  b79575:	c5 fd 29 84 24 a0 06 	vmovapd YMMWORD PTR [rsp+0x6a0],ymm0
  b7957c:	00 00 
  b7957e:	c4 e2 fd 9c 8c 24 e0 	vfnmadd132pd ymm1,ymm0,YMMWORD PTR [rsp+0xe0]
  b79585:	00 00 00 
  b79588:	c4 e2 7d 19 05 8f b6 	vbroadcastsd ymm0,QWORD PTR [rip+0xffffffffff4fb68f]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  b7958f:	4f ff 
  b79591:	62 f1 9d 20 59 e0    	vmulpd ymm4,ymm28,ymm0
  b79597:	62 91 fd 28 28 db    	vmovapd ymm3,ymm27
  b7959d:	62 e1 fd 28 29 4c 24 	vmovapd YMMWORD PTR [rsp+0xc0],ymm17
  b795a4:	06 
  b795a5:	c5 fd 29 54 24 60    	vmovapd YMMWORD PTR [rsp+0x60],ymm2
  b795ab:	62 f2 f5 20 ac da    	vfnmadd213pd ymm3,ymm17,ymm2
  b795b1:	c5 95 59 d0          	vmulpd ymm2,ymm13,ymm0
  b795b5:	c5 7d 29 94 24 00 07 	vmovapd YMMWORD PTR [rsp+0x700],ymm10
  b795bc:	00 00 
  b795be:	62 e1 fd 28 29 7c 24 	vmovapd YMMWORD PTR [rsp+0x6c0],ymm23
  b795c5:	36 
  b795c6:	62 21 ad 28 58 e7    	vaddpd ymm28,ymm10,ymm23
  b795cc:	62 c1 fd 28 28 fb    	vmovapd ymm23,ymm11
  b795d2:	62 11 a5 28 58 c4    	vaddpd ymm8,ymm11,ymm28
  b795d8:	c5 fd 29 8c 24 40 02 	vmovapd YMMWORD PTR [rsp+0x240],ymm1
  b795df:	00 00 
  b795e1:	c5 fd 29 a4 24 a0 02 	vmovapd YMMWORD PTR [rsp+0x2a0],ymm4
  b795e8:	00 00 
  b795ea:	62 61 f5 28 5c cc    	vsubpd ymm25,ymm1,ymm4
  b795f0:	c5 fd 29 94 24 80 06 	vmovapd YMMWORD PTR [rsp+0x680],ymm2
  b795f7:	00 00 
  b795f9:	c5 e5 58 ea          	vaddpd ymm5,ymm3,ymm2
  b795fd:	c5 7d 29 8c 24 40 07 	vmovapd YMMWORD PTR [rsp+0x740],ymm9
  b79604:	00 00 
  b79606:	62 e1 fd 28 29 6c 24 	vmovapd YMMWORD PTR [rsp+0x720],ymm21
  b7960d:	39 
  b7960e:	62 b1 b5 28 58 cd    	vaddpd ymm1,ymm9,ymm21
  b79614:	c5 fd 29 8c 24 20 01 	vmovapd YMMWORD PTR [rsp+0x120],ymm1
  b7961b:	00 00 
  b7961d:	62 e1 fd 28 29 54 24 	vmovapd YMMWORD PTR [rsp+0x760],ymm18
  b79624:	3b 
  b79625:	62 61 ed 20 58 e9    	vaddpd ymm29,ymm18,ymm1
  b7962b:	c4 e3 3d 18 cd 01    	vinsertf128 ymm1,ymm8,xmm5,0x1
  b79631:	62 93 35 20 18 d5 01 	vinsertf32x4 ymm2,ymm25,xmm29,0x1
  b79638:	62 e1 f5 28 15 ca    	vunpckhpd ymm17,ymm1,ymm2
  b7963e:	62 e1 f5 28 14 ea    	vunpcklpd ymm21,ymm1,ymm2
  b79644:	62 81 85 20 58 d0    	vaddpd ymm18,ymm31,ymm24
  b7964a:	62 01 fd 28 28 f3    	vmovapd ymm30,ymm27
  b79650:	62 62 ed 20 9c 74 24 	vfnmadd132pd ymm30,ymm18,YMMWORD PTR [rsp+0x40]
  b79657:	02 
  b79658:	c5 fd 59 94 24 00 01 	vmulpd ymm2,ymm0,YMMWORD PTR [rsp+0x100]
  b7965f:	00 00 
  b79661:	c5 fd 29 b4 24 a0 00 	vmovapd YMMWORD PTR [rsp+0xa0],ymm6
  b79668:	00 00 
  b7966a:	c5 fd 29 bc 24 80 00 	vmovapd YMMWORD PTR [rsp+0x80],ymm7
  b79671:	00 00 
  b79673:	62 62 cd 28 ac df    	vfnmadd213pd ymm27,ymm6,ymm7
  b79679:	c5 fd 59 8c 24 40 01 	vmulpd ymm1,ymm0,YMMWORD PTR [rsp+0x140]
  b79680:	00 00 
  b79682:	c5 fd 28 44 24 20    	vmovapd ymm0,YMMWORD PTR [rsp+0x20]
  b79688:	c5 7d 58 1c 24       	vaddpd ymm11,ymm0,YMMWORD PTR [rsp]
  b7968d:	c5 fd 28 84 24 60 06 	vmovapd ymm0,YMMWORD PTR [rsp+0x660]
  b79694:	00 00 
  b79696:	62 e1 fd 28 28 e0    	vmovapd ymm20,ymm0
  b7969c:	62 41 fd 28 58 d3    	vaddpd ymm26,ymm0,ymm11
  b796a2:	c5 fd 29 94 24 e0 06 	vmovapd YMMWORD PTR [rsp+0x6e0],ymm2
  b796a9:	00 00 
  b796ab:	62 91 ed 28 58 d6    	vaddpd ymm2,ymm2,ymm30
  b796b1:	62 71 a5 20 5c c9    	vsubpd ymm9,ymm27,ymm1
  b796b7:	c5 7d 29 b4 24 40 01 	vmovapd YMMWORD PTR [rsp+0x140],ymm14
  b796be:	00 00 
  b796c0:	62 e1 fd 28 29 44 24 	vmovapd YMMWORD PTR [rsp+0x220],ymm16
  b796c7:	11 
  b796c8:	62 b1 8d 28 58 c0    	vaddpd ymm0,ymm14,ymm16
  b796ce:	c5 fd 29 84 24 00 01 	vmovapd YMMWORD PTR [rsp+0x100],ymm0
  b796d5:	00 00 
  b796d7:	62 e1 fd 28 29 5c 24 	vmovapd YMMWORD PTR [rsp+0x280],ymm19
  b796de:	14 
  b796df:	62 71 e5 20 58 e8    	vaddpd ymm13,ymm19,ymm0
  b796e5:	62 d3 2d 20 18 f9 01 	vinsertf32x4 ymm7,ymm26,xmm9,0x1
  b796ec:	c4 c3 6d 18 f5 01    	vinsertf128 ymm6,ymm2,xmm13,0x1
  b796f2:	c5 c5 15 e6          	vunpckhpd ymm4,ymm7,ymm6
  b796f6:	c5 c5 14 f6          	vunpcklpd ymm6,ymm7,ymm6
  b796fa:	c5 fd 28 fe          	vmovapd ymm7,ymm6
  b796fe:	c5 7d 28 35 5a d4 4f 	vmovapd ymm14,YMMWORD PTR [rip+0xffffffffff4fd45a]        # 76b60 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4010>
  b79705:	ff 
  b79706:	62 b2 8d 28 7f fd    	vpermt2pd ymm7,ymm14,ymm21
  b7970c:	c4 c1 7d 29 b8 50 fc 	vmovapd YMMWORD PTR [r8-0x3b0],ymm7
  b79713:	ff ff 
  b79715:	c5 fd 28 05 23 df 4f 	vmovapd ymm0,YMMWORD PTR [rip+0xffffffffff4fdf23]        # 77640 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4af0>
  b7971c:	ff 
  b7971d:	62 b2 fd 28 7f f5    	vpermt2pd ymm6,ymm0,ymm21
  b79723:	c4 c1 7d 29 b0 70 fc 	vmovapd YMMWORD PTR [r8-0x390],ymm6
  b7972a:	ff ff 
  b7972c:	c5 fd 28 f4          	vmovapd ymm6,ymm4
  b79730:	62 b2 8d 28 7f f1    	vpermt2pd ymm6,ymm14,ymm17
  b79736:	c4 c1 7d 11 b0 40 fd 	vmovupd YMMWORD PTR [r8-0x2c0],ymm6
  b7973d:	ff ff 
  b7973f:	62 b2 fd 28 7f e1    	vpermt2pd ymm4,ymm0,ymm17
  b79745:	c4 c1 7d 11 a0 60 fd 	vmovupd YMMWORD PTR [r8-0x2a0],ymm4
  b7974c:	ff ff 
  b7974e:	49 83 f9 0c          	cmp    r9,0xc
  b79752:	74 6e                	je     b797c2 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0xb02>
  b79754:	c4 e3 3d 06 e5 31    	vperm2f128 ymm4,ymm8,ymm5,0x31
  b7975a:	62 93 b5 20 23 ed 03 	vshuff64x2 ymm5,ymm25,ymm29,0x3
  b79761:	c5 dd 15 f5          	vunpckhpd ymm6,ymm4,ymm5
  b79765:	c5 dd 14 e5          	vunpcklpd ymm4,ymm4,ymm5
  b79769:	62 d3 ad 20 23 e9 03 	vshuff64x2 ymm5,ymm26,ymm9,0x3
  b79770:	c4 c3 6d 06 d5 31    	vperm2f128 ymm2,ymm2,ymm13,0x31
  b79776:	c5 d5 15 fa          	vunpckhpd ymm7,ymm5,ymm2
  b7977a:	c5 d5 14 d2          	vunpcklpd ymm2,ymm5,ymm2
  b7977e:	c5 fd 28 ea          	vmovapd ymm5,ymm2
  b79782:	62 f2 8d 28 7f ec    	vpermt2pd ymm5,ymm14,ymm4
  b79788:	c4 c1 7d 29 a8 30 fe 	vmovapd YMMWORD PTR [r8-0x1d0],ymm5
  b7978f:	ff ff 
  b79791:	62 f2 fd 28 7f d4    	vpermt2pd ymm2,ymm0,ymm4
  b79797:	c4 c1 7d 29 90 50 fe 	vmovapd YMMWORD PTR [r8-0x1b0],ymm2
  b7979e:	ff ff 
  b797a0:	c5 fd 28 d7          	vmovapd ymm2,ymm7
  b797a4:	62 f2 8d 28 7f d6    	vpermt2pd ymm2,ymm14,ymm6
  b797aa:	c4 c1 7d 11 90 20 ff 	vmovupd YMMWORD PTR [r8-0xe0],ymm2
  b797b1:	ff ff 
  b797b3:	62 f2 fd 28 7f fe    	vpermt2pd ymm7,ymm0,ymm6
  b797b9:	c4 c1 7d 11 b8 40 ff 	vmovupd YMMWORD PTR [r8-0xc0],ymm7
  b797c0:	ff ff 
  b797c2:	c5 fd 28 94 24 60 02 	vmovapd ymm2,YMMWORD PTR [rsp+0x260]
  b797c9:	00 00 
  b797cb:	c5 ed 5c 94 24 80 01 	vsubpd ymm2,ymm2,YMMWORD PTR [rsp+0x180]
  b797d2:	00 00 
  b797d4:	62 f1 cd 20 5c 64 24 	vsubpd ymm4,ymm22,YMMWORD PTR [rsp+0x160]
  b797db:	0b 
  b797dc:	62 61 ed 28 58 ec    	vaddpd ymm29,ymm2,ymm4
  b797e2:	62 81 85 20 5c f0    	vsubpd ymm22,ymm31,ymm24
  b797e8:	c4 62 7d 19 0d a7 b2 	vbroadcastsd ymm9,QWORD PTR [rip+0xffffffffff4fb2a7]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  b797ef:	4f ff 
  b797f1:	c5 7d 29 ce          	vmovapd ymm6,ymm9
  b797f5:	62 b2 95 20 ac f6    	vfnmadd213pd ymm6,ymm29,ymm22
  b797fb:	c5 fd 28 ac 24 e0 01 	vmovapd ymm5,YMMWORD PTR [rsp+0x1e0]
  b79802:	00 00 
  b79804:	c5 d5 58 ac 24 00 02 	vaddpd ymm5,ymm5,YMMWORD PTR [rsp+0x200]
  b7980b:	00 00 
  b7980d:	c5 fd 28 bc 24 a0 01 	vmovapd ymm7,YMMWORD PTR [rsp+0x1a0]
  b79814:	00 00 
  b79816:	c5 c5 58 bc 24 c0 01 	vaddpd ymm7,ymm7,YMMWORD PTR [rsp+0x1c0]
  b7981d:	00 00 
  b7981f:	c5 55 5c c7          	vsubpd ymm8,ymm5,ymm7
  b79823:	c4 62 7d 19 2d f4 b3 	vbroadcastsd ymm13,QWORD PTR [rip+0xffffffffff4fb3f4]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  b7982a:	4f ff 
  b7982c:	c4 41 3d 59 d5       	vmulpd ymm10,ymm8,ymm13
  b79831:	62 e1 ad 28 58 ee    	vaddpd ymm21,ymm10,ymm6
  b79837:	62 e1 d5 28 58 df    	vaddpd ymm19,ymm5,ymm7
  b7983d:	c4 41 05 58 e4       	vaddpd ymm12,ymm15,ymm12
  b79842:	62 c1 fd 28 28 c1    	vmovapd ymm16,ymm9
  b79848:	62 c2 e5 20 ac c4    	vfnmadd213pd ymm16,ymm19,ymm12
  b7984e:	c5 ed 5c d4          	vsubpd ymm2,ymm2,ymm4
  b79852:	62 c1 ed 28 59 cd    	vmulpd ymm17,ymm2,ymm13
  b79858:	62 b1 fd 20 5c e9    	vsubpd ymm5,ymm16,ymm17
  b7985e:	62 32 b5 28 ac dc    	vfnmadd213pd ymm11,ymm9,ymm20
  b79864:	c5 fd 28 94 24 00 07 	vmovapd ymm2,YMMWORD PTR [rsp+0x700]
  b7986b:	00 00 
  b7986d:	c5 ed 5c 94 24 c0 06 	vsubpd ymm2,ymm2,YMMWORD PTR [rsp+0x6c0]
  b79874:	00 00 
  b79876:	c5 15 59 c2          	vmulpd ymm8,ymm13,ymm2
  b7987a:	c4 41 25 5c f8       	vsubpd ymm15,ymm11,ymm8
  b7987f:	62 22 b5 28 ac e7    	vfnmadd213pd ymm28,ymm9,ymm23
  b79885:	c5 fd 28 54 24 20    	vmovapd ymm2,YMMWORD PTR [rsp+0x20]
  b7988b:	c5 ed 5c 14 24       	vsubpd ymm2,ymm2,YMMWORD PTR [rsp]
  b79890:	c5 15 59 ca          	vmulpd ymm9,ymm13,ymm2
  b79894:	62 81 b5 28 58 fc    	vaddpd ymm23,ymm9,ymm28
  b7989a:	62 71 ed 20 58 6c 24 	vaddpd ymm13,ymm18,YMMWORD PTR [rsp+0x40]
  b798a1:	02 
  b798a2:	c5 fd 28 94 24 a0 06 	vmovapd ymm2,YMMWORD PTR [rsp+0x6a0]
  b798a9:	00 00 
  b798ab:	62 e1 ed 28 58 64 24 	vaddpd ymm20,ymm2,YMMWORD PTR [rsp+0xe0]
  b798b2:	07 
  b798b3:	62 f1 a5 20 58 f9    	vaddpd ymm7,ymm27,ymm1
  b798b9:	c5 e5 5c 9c 24 80 06 	vsubpd ymm3,ymm3,YMMWORD PTR [rsp+0x680]
  b798c0:	00 00 
  b798c2:	62 d3 55 20 18 d5 01 	vinsertf32x4 ymm2,ymm21,xmm13,0x1
  b798c9:	c4 e3 05 18 e7 01    	vinsertf128 ymm4,ymm15,xmm7,0x1
  b798cf:	62 61 ed 28 15 c4    	vunpckhpd ymm24,ymm2,ymm4
  b798d5:	62 23 55 28 18 cc 01 	vinsertf32x4 ymm25,ymm5,xmm20,0x1
  b798dc:	62 63 45 20 18 d3 01 	vinsertf32x4 ymm26,ymm23,xmm3,0x1
  b798e3:	62 01 b5 20 15 da    	vunpckhpd ymm27,ymm25,ymm26
  b798e9:	62 01 b5 20 14 ca    	vunpcklpd ymm25,ymm25,ymm26
  b798ef:	c5 ed 14 d4          	vunpcklpd ymm2,ymm2,ymm4
  b798f3:	c5 fd 28 e2          	vmovapd ymm4,ymm2
  b798f7:	62 92 8d 28 7f e1    	vpermt2pd ymm4,ymm14,ymm25
  b798fd:	c4 c1 7d 29 a0 90 fc 	vmovapd YMMWORD PTR [r8-0x370],ymm4
  b79904:	ff ff 
  b79906:	62 92 fd 28 7f d1    	vpermt2pd ymm2,ymm0,ymm25
  b7990c:	c4 c1 7d 29 90 b0 fc 	vmovapd YMMWORD PTR [r8-0x350],ymm2
  b79913:	ff ff 
  b79915:	62 91 fd 28 28 d0    	vmovapd ymm2,ymm24
  b7991b:	62 92 8d 28 7f d3    	vpermt2pd ymm2,ymm14,ymm27
  b79921:	c4 c1 7d 11 90 80 fd 	vmovupd YMMWORD PTR [r8-0x280],ymm2
  b79928:	ff ff 
  b7992a:	62 02 fd 28 7f c3    	vpermt2pd ymm24,ymm0,ymm27
  b79930:	62 41 fd 28 11 40 ed 	vmovupd YMMWORD PTR [r8-0x260],ymm24
  b79937:	49 83 f9 0c          	cmp    r9,0xc
  b7993b:	62 61 fd 28 28 c0    	vmovapd ymm24,ymm0
  b79941:	74 6c                	je     b799af <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0xcef>
  b79943:	62 b3 d5 28 23 d4 03 	vshuff64x2 ymm2,ymm5,ymm20,0x3
  b7994a:	62 f3 c5 20 23 db 03 	vshuff64x2 ymm3,ymm23,ymm3,0x3
  b79951:	c5 ed 15 e3          	vunpckhpd ymm4,ymm2,ymm3
  b79955:	c5 ed 14 d3          	vunpcklpd ymm2,ymm2,ymm3
  b79959:	62 d3 d5 20 23 dd 03 	vshuff64x2 ymm3,ymm21,ymm13,0x3
  b79960:	c4 e3 05 06 ef 31    	vperm2f128 ymm5,ymm15,ymm7,0x31
  b79966:	c5 e5 15 fd          	vunpckhpd ymm7,ymm3,ymm5
  b7996a:	c5 e5 14 dd          	vunpcklpd ymm3,ymm3,ymm5
  b7996e:	c5 fd 28 eb          	vmovapd ymm5,ymm3
  b79972:	62 f2 8d 28 7f ea    	vpermt2pd ymm5,ymm14,ymm2
  b79978:	c4 c1 7d 29 a8 70 fe 	vmovapd YMMWORD PTR [r8-0x190],ymm5
  b7997f:	ff ff 
  b79981:	62 f2 bd 20 7f da    	vpermt2pd ymm3,ymm24,ymm2
  b79987:	c4 c1 7d 29 98 90 fe 	vmovapd YMMWORD PTR [r8-0x170],ymm3
  b7998e:	ff ff 
  b79990:	c5 fd 28 d7          	vmovapd ymm2,ymm7
  b79994:	62 f2 8d 28 7f d4    	vpermt2pd ymm2,ymm14,ymm4
  b7999a:	c4 c1 7d 11 90 60 ff 	vmovupd YMMWORD PTR [r8-0xa0],ymm2
  b799a1:	ff ff 
  b799a3:	62 f2 bd 20 7f fc    	vpermt2pd ymm7,ymm24,ymm4
  b799a9:	c4 c1 7d 11 78 80    	vmovupd YMMWORD PTR [r8-0x80],ymm7
  b799af:	c4 e2 7d 19 05 e0 b0 	vbroadcastsd ymm0,QWORD PTR [rip+0xffffffffff4fb0e0]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  b799b6:	4f ff 
  b799b8:	62 e1 fd 28 28 7c 24 	vmovapd ymm23,YMMWORD PTR [rsp+0x100]
  b799bf:	08 
  b799c0:	62 e2 fd 28 ac 7c 24 	vfnmadd213pd ymm23,ymm0,YMMWORD PTR [rsp+0x280]
  b799c7:	14 
  b799c8:	c5 fd 28 8c 24 40 07 	vmovapd ymm1,YMMWORD PTR [rsp+0x740]
  b799cf:	00 00 
  b799d1:	c5 f5 5c 94 24 20 07 	vsubpd ymm2,ymm1,YMMWORD PTR [rsp+0x720]
  b799d8:	00 00 
  b799da:	c4 e2 7d 19 25 3d b2 	vbroadcastsd ymm4,QWORD PTR [rip+0xffffffffff4fb23d]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  b799e1:	4f ff 
  b799e3:	c5 ed 59 dc          	vmulpd ymm3,ymm2,ymm4
  b799e7:	c5 fd 28 8c 24 20 01 	vmovapd ymm1,YMMWORD PTR [rsp+0x120]
  b799ee:	00 00 
  b799f0:	c4 e2 fd ac 8c 24 60 	vfnmadd213pd ymm1,ymm0,YMMWORD PTR [rsp+0x760]
  b799f7:	07 00 00 
  b799fa:	c5 fd 28 84 24 40 01 	vmovapd ymm0,YMMWORD PTR [rsp+0x140]
  b79a01:	00 00 
  b79a03:	c5 fd 5c 94 24 20 02 	vsubpd ymm2,ymm0,YMMWORD PTR [rsp+0x220]
  b79a0a:	00 00 
  b79a0c:	c5 ed 59 e4          	vmulpd ymm4,ymm2,ymm4
  b79a10:	62 f1 c5 20 5c eb    	vsubpd ymm5,ymm23,ymm3
  b79a16:	c5 75 58 ec          	vaddpd ymm13,ymm1,ymm4
  b79a1a:	62 91 cd 20 58 fd    	vaddpd ymm7,ymm22,ymm29
  b79a20:	62 31 9d 28 58 e3    	vaddpd ymm12,ymm12,ymm19
  b79a26:	c4 41 25 58 c0       	vaddpd ymm8,ymm11,ymm8
  b79a2b:	62 51 9d 20 5c c9    	vsubpd ymm9,ymm28,ymm9
  b79a31:	62 f1 8d 20 5c 54 24 	vsubpd ymm2,ymm30,YMMWORD PTR [rsp+0x6e0]
  b79a38:	37 
  b79a39:	c5 fd 28 84 24 a0 02 	vmovapd ymm0,YMMWORD PTR [rsp+0x2a0]
  b79a40:	00 00 
  b79a42:	c5 fd 58 84 24 40 02 	vaddpd ymm0,ymm0,YMMWORD PTR [rsp+0x240]
  b79a49:	00 00 
  b79a4b:	c4 43 55 18 d8 01    	vinsertf128 ymm11,ymm5,xmm8,0x1
  b79a51:	c4 63 45 18 fa 01    	vinsertf128 ymm15,ymm7,xmm2,0x1
  b79a57:	62 c1 a5 28 15 d7    	vunpckhpd ymm18,ymm11,ymm15
  b79a5d:	62 c3 15 28 18 d9 01 	vinsertf32x4 ymm19,ymm13,xmm9,0x1
  b79a64:	62 e3 1d 28 18 e0 01 	vinsertf32x4 ymm20,ymm12,xmm0,0x1
  b79a6b:	62 a1 e5 20 15 ec    	vunpckhpd ymm21,ymm19,ymm20
  b79a71:	62 a1 e5 20 14 dc    	vunpcklpd ymm19,ymm19,ymm20
  b79a77:	c4 41 25 14 df       	vunpcklpd ymm11,ymm11,ymm15
  b79a7c:	c4 41 7d 28 fb       	vmovapd ymm15,ymm11
  b79a81:	62 32 8d 28 7f fb    	vpermt2pd ymm15,ymm14,ymm19
  b79a87:	c4 41 7d 29 b8 d0 fc 	vmovapd YMMWORD PTR [r8-0x330],ymm15
  b79a8e:	ff ff 
  b79a90:	62 32 bd 20 7f db    	vpermt2pd ymm11,ymm24,ymm19
  b79a96:	c4 41 7d 29 98 f0 fc 	vmovapd YMMWORD PTR [r8-0x310],ymm11
  b79a9d:	ff ff 
  b79a9f:	62 31 fd 28 28 da    	vmovapd ymm11,ymm18
  b79aa5:	62 32 8d 28 7f dd    	vpermt2pd ymm11,ymm14,ymm21
  b79aab:	c4 41 7d 11 98 c0 fd 	vmovupd YMMWORD PTR [r8-0x240],ymm11
  b79ab2:	ff ff 
  b79ab4:	62 a2 bd 20 7f d5    	vpermt2pd ymm18,ymm24,ymm21
  b79aba:	62 c1 fd 28 11 50 ef 	vmovupd YMMWORD PTR [r8-0x220],ymm18
  b79ac1:	49 83 f9 0c          	cmp    r9,0xc
  b79ac5:	74 66                	je     b79b2d <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0xe6d>
  b79ac7:	c4 43 15 06 c9 31    	vperm2f128 ymm9,ymm13,ymm9,0x31
  b79acd:	c4 e3 1d 06 c0 31    	vperm2f128 ymm0,ymm12,ymm0,0x31
  b79ad3:	c5 35 15 d8          	vunpckhpd ymm11,ymm9,ymm0
  b79ad7:	c5 b5 14 c0          	vunpcklpd ymm0,ymm9,ymm0
  b79adb:	c4 c3 55 06 e8 31    	vperm2f128 ymm5,ymm5,ymm8,0x31
  b79ae1:	c4 e3 45 06 d2 31    	vperm2f128 ymm2,ymm7,ymm2,0x31
  b79ae7:	c5 d5 15 fa          	vunpckhpd ymm7,ymm5,ymm2
  b79aeb:	c5 d5 14 d2          	vunpcklpd ymm2,ymm5,ymm2
  b79aef:	c5 fd 28 ea          	vmovapd ymm5,ymm2
  b79af3:	62 f2 8d 28 7f e8    	vpermt2pd ymm5,ymm14,ymm0
  b79af9:	c4 c1 7d 29 a8 b0 fe 	vmovapd YMMWORD PTR [r8-0x150],ymm5
  b79b00:	ff ff 
  b79b02:	62 f2 bd 20 7f d0    	vpermt2pd ymm2,ymm24,ymm0
  b79b08:	c4 c1 7d 29 90 d0 fe 	vmovapd YMMWORD PTR [r8-0x130],ymm2
  b79b0f:	ff ff 
  b79b11:	c5 fd 28 c7          	vmovapd ymm0,ymm7
  b79b15:	62 d2 8d 28 7f c3    	vpermt2pd ymm0,ymm14,ymm11
  b79b1b:	c4 c1 7d 11 40 a0    	vmovupd YMMWORD PTR [r8-0x60],ymm0
  b79b21:	62 d2 bd 20 7f fb    	vpermt2pd ymm7,ymm24,ymm11
  b79b27:	c4 c1 7d 11 78 c0    	vmovupd YMMWORD PTR [r8-0x40],ymm7
  b79b2d:	c5 fd 28 84 24 80 00 	vmovapd ymm0,YMMWORD PTR [rsp+0x80]
  b79b34:	00 00 
  b79b36:	c5 fd 58 94 24 a0 00 	vaddpd ymm2,ymm0,YMMWORD PTR [rsp+0xa0]
  b79b3d:	00 00 
  b79b3f:	c5 fd 28 44 24 60    	vmovapd ymm0,YMMWORD PTR [rsp+0x60]
  b79b45:	c5 fd 58 ac 24 c0 00 	vaddpd ymm5,ymm0,YMMWORD PTR [rsp+0xc0]
  b79b4c:	00 00 
  b79b4e:	62 f1 c5 20 58 db    	vaddpd ymm3,ymm23,ymm3
  b79b54:	c5 f5 5c e4          	vsubpd ymm4,ymm1,ymm4
  b79b58:	c4 c1 4d 5c c2       	vsubpd ymm0,ymm6,ymm10
  b79b5d:	62 b1 fd 20 58 c9    	vaddpd ymm1,ymm16,ymm17
  b79b63:	c5 e9 14 f5          	vunpcklpd xmm6,xmm2,xmm5
  b79b67:	c5 e1 14 fc          	vunpcklpd xmm7,xmm3,xmm4
  b79b6b:	c4 c1 79 29 b8 20 fd 	vmovapd XMMWORD PTR [r8-0x2e0],xmm7
  b79b72:	ff ff 
  b79b74:	c4 c1 79 29 b0 10 fd 	vmovapd XMMWORD PTR [r8-0x2f0],xmm6
  b79b7b:	ff ff 
  b79b7d:	c5 f9 14 f1          	vunpcklpd xmm6,xmm0,xmm1
  b79b81:	c4 c1 79 29 b0 30 fd 	vmovapd XMMWORD PTR [r8-0x2d0],xmm6
  b79b88:	ff ff 
  b79b8a:	c5 e9 15 f5          	vunpckhpd xmm6,xmm2,xmm5
  b79b8e:	c5 e1 15 fc          	vunpckhpd xmm7,xmm3,xmm4
  b79b92:	c4 c1 79 29 b8 10 fe 	vmovapd XMMWORD PTR [r8-0x1f0],xmm7
  b79b99:	ff ff 
  b79b9b:	c4 c1 79 29 b0 00 fe 	vmovapd XMMWORD PTR [r8-0x200],xmm6
  b79ba2:	ff ff 
  b79ba4:	c5 f9 15 f1          	vunpckhpd xmm6,xmm0,xmm1
  b79ba8:	c4 c1 79 29 b0 20 fe 	vmovapd XMMWORD PTR [r8-0x1e0],xmm6
  b79baf:	ff ff 
  b79bb1:	49 83 f9 0c          	cmp    r9,0xc
  b79bb5:	0f 84 65 f1 ff ff    	je     b78d20 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x60>
  b79bbb:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  b79bc1:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  b79bc7:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  b79bcd:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  b79bd3:	c5 e9 14 f5          	vunpcklpd xmm6,xmm2,xmm5
  b79bd7:	c5 e1 14 fc          	vunpcklpd xmm7,xmm3,xmm4
  b79bdb:	c4 c1 79 29 b8 00 ff 	vmovapd XMMWORD PTR [r8-0x100],xmm7
  b79be2:	ff ff 
  b79be4:	c4 c1 79 29 b0 f0 fe 	vmovapd XMMWORD PTR [r8-0x110],xmm6
  b79beb:	ff ff 
  b79bed:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  b79bf3:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  b79bf9:	c5 f9 14 f1          	vunpcklpd xmm6,xmm0,xmm1
  b79bfd:	c4 c1 79 29 b0 10 ff 	vmovapd XMMWORD PTR [r8-0xf0],xmm6
  b79c04:	ff ff 
  b79c06:	c5 e9 15 d5          	vunpckhpd xmm2,xmm2,xmm5
  b79c0a:	c5 e1 15 dc          	vunpckhpd xmm3,xmm3,xmm4
  b79c0e:	c4 c1 79 29 58 f0    	vmovapd XMMWORD PTR [r8-0x10],xmm3
  b79c14:	c4 c1 79 29 50 e0    	vmovapd XMMWORD PTR [r8-0x20],xmm2
  b79c1a:	c5 f9 15 c1          	vunpckhpd xmm0,xmm0,xmm1
  b79c1e:	c4 c1 79 29 00       	vmovapd XMMWORD PTR [r8],xmm0
  b79c23:	e9 f8 f0 ff ff       	jmp    b78d20 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x60>
  b79c28:	48 8d bc 24 50 0c 00 	lea    rdi,[rsp+0xc50]
  b79c2f:	00 
  b79c30:	48 83 c2 60          	add    rdx,0x60
  b79c34:	41 b8 04 00 00 00    	mov    r8d,0x4
  b79c3a:	45 31 db             	xor    r11d,r11d
  b79c3d:	e9 e4 01 00 00       	jmp    b79e26 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x1166>
  b79c42:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  b79c49:	1f 84 00 00 00 00 00 
  b79c50:	62 a1 fd 28 11 3c 0e 	vmovupd YMMWORD PTR [rsi+r9*1],ymm23
  b79c57:	c4 a1 7d 11 4c 0e 20 	vmovupd YMMWORD PTR [rsi+r9*1+0x20],ymm1
  b79c5e:	62 f2 fd 20 7f ec    	vpermt2pd ymm5,ymm16,ymm4
  b79c64:	62 21 fd 28 11 b4 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0xf0],ymm30
  b79c6b:	f0 00 00 00 
  b79c6f:	c4 a1 7d 11 ac 0e 10 	vmovupd YMMWORD PTR [rsi+r9*1+0x110],ymm5
  b79c76:	01 00 00 
  b79c79:	c5 fd 28 84 24 60 02 	vmovapd ymm0,YMMWORD PTR [rsp+0x260]
  b79c80:	00 00 
  b79c82:	62 f2 fd 20 7f c6    	vpermt2pd ymm0,ymm16,ymm6
  b79c88:	62 21 fd 28 11 64 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0x1e0],ymm28
  b79c8f:	0f 
  b79c90:	c4 a1 7d 11 84 0e 00 	vmovupd YMMWORD PTR [rsi+r9*1+0x200],ymm0
  b79c97:	02 00 00 
  b79c9a:	c5 fd 28 84 24 60 01 	vmovapd ymm0,YMMWORD PTR [rsp+0x160]
  b79ca1:	00 00 
  b79ca3:	62 f2 fd 20 7f 44 24 	vpermt2pd ymm0,ymm16,YMMWORD PTR [rsp+0x100]
  b79caa:	08 
  b79cab:	62 a1 fd 28 11 ac 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0x2d0],ymm21
  b79cb2:	d0 02 00 00 
  b79cb6:	c4 a1 7d 11 84 0e f0 	vmovupd YMMWORD PTR [rsi+r9*1+0x2f0],ymm0
  b79cbd:	02 00 00 
  b79cc0:	c5 fd 28 84 24 80 01 	vmovapd ymm0,YMMWORD PTR [rsp+0x180]
  b79cc7:	00 00 
  b79cc9:	62 f2 fd 20 7f 44 24 	vpermt2pd ymm0,ymm16,YMMWORD PTR [rsp+0x120]
  b79cd0:	09 
  b79cd1:	62 21 fd 28 11 44 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0x3c0],ymm24
  b79cd8:	1e 
  b79cd9:	c4 a1 7d 11 84 0e e0 	vmovupd YMMWORD PTR [rsi+r9*1+0x3e0],ymm0
  b79ce0:	03 00 00 
  b79ce3:	62 e2 fd 20 7f 4c 24 	vpermt2pd ymm17,ymm16,YMMWORD PTR [rsp+0x1a0]
  b79cea:	0d 
  b79ceb:	c4 21 7d 11 84 0e b0 	vmovupd YMMWORD PTR [rsi+r9*1+0x4b0],ymm8
  b79cf2:	04 00 00 
  b79cf5:	62 a1 fd 28 11 8c 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0x4d0],ymm17
  b79cfc:	d0 04 00 00 
  b79d00:	62 72 fd 20 7f 6c 24 	vpermt2pd ymm13,ymm16,YMMWORD PTR [rsp+0x1c0]
  b79d07:	0e 
  b79d08:	c4 21 7d 11 bc 0e a0 	vmovupd YMMWORD PTR [rsi+r9*1+0x5a0],ymm15
  b79d0f:	05 00 00 
  b79d12:	c4 21 7d 11 ac 0e c0 	vmovupd YMMWORD PTR [rsi+r9*1+0x5c0],ymm13
  b79d19:	05 00 00 
  b79d1c:	c5 fd 28 84 24 e0 01 	vmovapd ymm0,YMMWORD PTR [rsp+0x1e0]
  b79d23:	00 00 
  b79d25:	62 92 fd 20 7f c7    	vpermt2pd ymm0,ymm16,ymm31
  b79d2b:	62 a1 fd 28 11 a4 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0x690],ymm20
  b79d32:	90 06 00 00 
  b79d36:	c4 a1 7d 11 84 0e b0 	vmovupd YMMWORD PTR [rsi+r9*1+0x6b0],ymm0
  b79d3d:	06 00 00 
  b79d40:	c5 fd 28 84 24 00 02 	vmovapd ymm0,YMMWORD PTR [rsp+0x200]
  b79d47:	00 00 
  b79d49:	62 92 fd 20 7f c2    	vpermt2pd ymm0,ymm16,ymm26
  b79d4f:	62 a1 fd 28 11 54 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0x780],ymm18
  b79d56:	3c 
  b79d57:	c4 a1 7d 11 84 0e a0 	vmovupd YMMWORD PTR [rsi+r9*1+0x7a0],ymm0
  b79d5e:	07 00 00 
  b79d61:	c5 fd 28 84 24 80 00 	vmovapd ymm0,YMMWORD PTR [rsp+0x80]
  b79d68:	00 00 
  b79d6a:	62 f2 fd 20 7f 44 24 	vpermt2pd ymm0,ymm16,YMMWORD PTR [rsp+0x60]
  b79d71:	03 
  b79d72:	c4 21 7d 11 8c 0e 70 	vmovupd YMMWORD PTR [rsi+r9*1+0x870],ymm9
  b79d79:	08 00 00 
  b79d7c:	c4 a1 7d 11 84 0e 90 	vmovupd YMMWORD PTR [rsi+r9*1+0x890],ymm0
  b79d83:	08 00 00 
  b79d86:	c5 fd 28 84 24 c0 00 	vmovapd ymm0,YMMWORD PTR [rsp+0xc0]
  b79d8d:	00 00 
  b79d8f:	62 f2 fd 20 7f 44 24 	vpermt2pd ymm0,ymm16,YMMWORD PTR [rsp+0xa0]
  b79d96:	05 
  b79d97:	c4 21 7d 11 94 0e 60 	vmovupd YMMWORD PTR [rsi+r9*1+0x960],ymm10
  b79d9e:	09 00 00 
  b79da1:	c4 a1 7d 11 84 0e 80 	vmovupd YMMWORD PTR [rsi+r9*1+0x980],ymm0
  b79da8:	09 00 00 
  b79dab:	c5 fd 28 04 24       	vmovapd ymm0,YMMWORD PTR [rsp]
  b79db0:	62 92 fd 20 7f c3    	vpermt2pd ymm0,ymm16,ymm27
  b79db6:	c4 21 7d 11 9c 0e 50 	vmovupd YMMWORD PTR [rsi+r9*1+0xa50],ymm11
  b79dbd:	0a 00 00 
  b79dc0:	c4 a1 7d 11 84 0e 70 	vmovupd YMMWORD PTR [rsi+r9*1+0xa70],ymm0
  b79dc7:	0a 00 00 
  b79dca:	c5 fd 28 84 24 e0 00 	vmovapd ymm0,YMMWORD PTR [rsp+0xe0]
  b79dd1:	00 00 
  b79dd3:	62 f2 fd 20 7f 44 24 	vpermt2pd ymm0,ymm16,YMMWORD PTR [rsp+0x20]
  b79dda:	01 
  b79ddb:	c4 21 7d 11 b4 0e 40 	vmovupd YMMWORD PTR [rsi+r9*1+0xb40],ymm14
  b79de2:	0b 00 00 
  b79de5:	c4 a1 7d 11 84 0e 60 	vmovupd YMMWORD PTR [rsi+r9*1+0xb60],ymm0
  b79dec:	0b 00 00 
  b79def:	c5 fd 28 44 24 40    	vmovapd ymm0,YMMWORD PTR [rsp+0x40]
  b79df5:	62 92 fd 20 7f c1    	vpermt2pd ymm0,ymm16,ymm25
  b79dfb:	c4 a1 7d 11 bc 0e 30 	vmovupd YMMWORD PTR [rsi+r9*1+0xc30],ymm7
  b79e02:	0c 00 00 
  b79e05:	c4 a1 7d 11 84 0e 50 	vmovupd YMMWORD PTR [rsi+r9*1+0xc50],ymm0
  b79e0c:	0c 00 00 
  b79e0f:	48 83 c7 40          	add    rdi,0x40
  b79e13:	48 81 c2 80 03 00 00 	add    rdx,0x380
  b79e1a:	4d 89 d3             	mov    r11,r10
  b79e1d:	49 ff c8             	dec    r8
  b79e20:	0f 84 f4 0e 00 00    	je     b7ad1a <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x205a>
  b79e26:	c5 f9 57 c0          	vxorpd xmm0,xmm0,xmm0
  b79e2a:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x440],zmm0
  b79e31:	11 
  b79e32:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x400],zmm0
  b79e39:	10 
  b79e3a:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x3c0],zmm0
  b79e41:	0f 
  b79e42:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x380],zmm0
  b79e49:	0e 
  b79e4a:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x340],zmm0
  b79e51:	0d 
  b79e52:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x300],zmm0
  b79e59:	0c 
  b79e5a:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x2c0],zmm0
  b79e61:	0b 
  b79e62:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x600],zmm0
  b79e69:	18 
  b79e6a:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x5c0],zmm0
  b79e71:	17 
  b79e72:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x580],zmm0
  b79e79:	16 
  b79e7a:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x540],zmm0
  b79e81:	15 
  b79e82:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x500],zmm0
  b79e89:	14 
  b79e8a:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x4c0],zmm0
  b79e91:	13 
  b79e92:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x480],zmm0
  b79e99:	12 
  b79e9a:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x900],zmm0
  b79ea1:	24 
  b79ea2:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x8c0],zmm0
  b79ea9:	23 
  b79eaa:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x880],zmm0
  b79eb1:	22 
  b79eb2:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x840],zmm0
  b79eb9:	21 
  b79eba:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x800],zmm0
  b79ec1:	20 
  b79ec2:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x7c0],zmm0
  b79ec9:	1f 
  b79eca:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x780],zmm0
  b79ed1:	1e 
  b79ed2:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0xac0],zmm0
  b79ed9:	2b 
  b79eda:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0xa80],zmm0
  b79ee1:	2a 
  b79ee2:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0xa40],zmm0
  b79ee9:	29 
  b79eea:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0xa00],zmm0
  b79ef1:	28 
  b79ef2:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x9c0],zmm0
  b79ef9:	27 
  b79efa:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x980],zmm0
  b79f01:	26 
  b79f02:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x940],zmm0
  b79f09:	25 
  b79f0a:	4d 89 d9             	mov    r9,r11
  b79f0d:	49 c1 e1 04          	shl    r9,0x4
  b79f11:	49 83 fb 0c          	cmp    r11,0xc
  b79f15:	73 19                	jae    b79f30 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x1270>
  b79f17:	c4 a1 7d 28 84 0c 60 	vmovapd ymm0,YMMWORD PTR [rsp+r9*1+0xb60]
  b79f1e:	0b 00 00 
  b79f21:	eb 17                	jmp    b79f3a <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x127a>
  b79f23:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  b79f2a:	84 00 00 00 00 00 
  b79f30:	c4 a1 79 28 84 0c 60 	vmovapd xmm0,XMMWORD PTR [rsp+r9*1+0xb60]
  b79f37:	0b 00 00 
  b79f3a:	4d 8d 53 04          	lea    r10,[r11+0x4]
  b79f3e:	c4 a1 7d 28 8c 0c 40 	vmovapd ymm1,YMMWORD PTR [rsp+r9*1+0xb40]
  b79f45:	0b 00 00 
  b79f48:	48 89 fb             	mov    rbx,rdi
  b79f4b:	45 31 f6             	xor    r14d,r14d
  b79f4e:	eb 66                	jmp    b79fb6 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x12f6>
  b79f50:	c5 fd 10 13          	vmovupd ymm2,YMMWORD PTR [rbx]
  b79f54:	c5 fd 10 5b e0       	vmovupd ymm3,YMMWORD PTR [rbx-0x20]
  b79f59:	c4 e3 65 06 e2 31    	vperm2f128 ymm4,ymm3,ymm2,0x31
  b79f5f:	c4 e3 65 18 d2 01    	vinsertf128 ymm2,ymm3,xmm2,0x1
  b79f65:	c5 ed 14 dc          	vunpcklpd ymm3,ymm2,ymm4
  b79f69:	c5 ed 15 d4          	vunpckhpd ymm2,ymm2,ymm4
  b79f6d:	c4 a1 7d 29 9c 34 e0 	vmovapd YMMWORD PTR [rsp+r14*1+0x2e0],ymm3
  b79f74:	02 00 00 
  b79f77:	c4 a1 7d 29 94 34 a0 	vmovapd YMMWORD PTR [rsp+r14*1+0x4a0],ymm2
  b79f7e:	04 00 00 
  b79f81:	c4 a1 7c 10 54 72 e0 	vmovups ymm2,YMMWORD PTR [rdx+r14*2-0x20]
  b79f88:	c4 a1 7c 29 94 34 a0 	vmovaps YMMWORD PTR [rsp+r14*1+0x7a0],ymm2
  b79f8f:	07 00 00 
  b79f92:	c4 a1 7d 10 14 72    	vmovupd ymm2,YMMWORD PTR [rdx+r14*2]
  b79f98:	c4 a1 7d 29 94 34 60 	vmovapd YMMWORD PTR [rsp+r14*1+0x960],ymm2
  b79f9f:	09 00 00 
  b79fa2:	49 83 c6 20          	add    r14,0x20
  b79fa6:	48 81 c3 f0 00 00 00 	add    rbx,0xf0
  b79fad:	49 81 fe a0 01 00 00 	cmp    r14,0x1a0
  b79fb4:	74 1a                	je     b79fd0 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x1310>
  b79fb6:	49 83 fb 0c          	cmp    r11,0xc
  b79fba:	72 94                	jb     b79f50 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x1290>
  b79fbc:	c5 f9 28 13          	vmovapd xmm2,XMMWORD PTR [rbx]
  b79fc0:	eb 92                	jmp    b79f54 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x1294>
  b79fc2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  b79fc9:	1f 84 00 00 00 00 00 
  b79fd0:	c4 e3 75 06 d0 31    	vperm2f128 ymm2,ymm1,ymm0,0x31
  b79fd6:	c4 e3 75 18 c0 01    	vinsertf128 ymm0,ymm1,xmm0,0x1
  b79fdc:	c5 fd 14 ca          	vunpcklpd ymm1,ymm0,ymm2
  b79fe0:	c5 fd 29 8c 24 e0 00 	vmovapd YMMWORD PTR [rsp+0xe0],ymm1
  b79fe7:	00 00 
  b79fe9:	c5 fd 15 c2          	vunpckhpd ymm0,ymm0,ymm2
  b79fed:	c5 fd 29 44 24 40    	vmovapd YMMWORD PTR [rsp+0x40],ymm0
  b79ff3:	c5 7d 28 a4 24 20 09 	vmovapd ymm12,YMMWORD PTR [rsp+0x920]
  b79ffa:	00 00 
  b79ffc:	c5 fc 28 84 24 60 04 	vmovaps ymm0,YMMWORD PTR [rsp+0x460]
  b7a003:	00 00 
  b7a005:	c5 fc 29 44 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm0
  b7a00b:	c5 7d 28 ac 24 e0 0a 	vmovapd ymm13,YMMWORD PTR [rsp+0xae0]
  b7a012:	00 00 
  b7a014:	c5 7d 28 bc 24 20 06 	vmovapd ymm15,YMMWORD PTR [rsp+0x620]
  b7a01b:	00 00 
  b7a01d:	62 e1 fd 28 28 54 24 	vmovapd ymm18,YMMWORD PTR [rsp+0x8e0]
  b7a024:	47 
  b7a025:	62 e1 fd 28 28 44 24 	vmovapd ymm16,YMMWORD PTR [rsp+0x420]
  b7a02c:	21 
  b7a02d:	c5 fd 28 84 24 a0 0a 	vmovapd ymm0,YMMWORD PTR [rsp+0xaa0]
  b7a034:	00 00 
  b7a036:	62 e1 fd 28 28 5c 24 	vmovapd ymm19,YMMWORD PTR [rsp+0x5e0]
  b7a03d:	2f 
  b7a03e:	62 e1 fd 28 28 74 24 	vmovapd ymm22,YMMWORD PTR [rsp+0x820]
  b7a045:	41 
  b7a046:	62 e1 fd 28 28 64 24 	vmovapd ymm20,YMMWORD PTR [rsp+0x360]
  b7a04d:	1b 
  b7a04e:	62 e1 fd 28 28 6c 24 	vmovapd ymm21,YMMWORD PTR [rsp+0x9e0]
  b7a055:	4f 
  b7a056:	62 61 fd 28 28 44 24 	vmovapd ymm24,YMMWORD PTR [rsp+0x8a0]
  b7a05d:	45 
  b7a05e:	62 e1 fd 28 28 7c 24 	vmovapd ymm23,YMMWORD PTR [rsp+0x3e0]
  b7a065:	1f 
  b7a066:	62 e1 fd 28 28 4c 24 	vmovapd ymm17,YMMWORD PTR [rsp+0x860]
  b7a06d:	43 
  b7a06e:	c5 fd 28 ac 24 a0 03 	vmovapd ymm5,YMMWORD PTR [rsp+0x3a0]
  b7a075:	00 00 
  b7a077:	c5 fd 28 bc 24 80 08 	vmovapd ymm7,YMMWORD PTR [rsp+0x880]
  b7a07e:	00 00 
  b7a080:	c5 fd 28 b4 24 c0 03 	vmovapd ymm6,YMMWORD PTR [rsp+0x3c0]
  b7a087:	00 00 
  b7a089:	c5 7d 28 9c 24 40 08 	vmovapd ymm11,YMMWORD PTR [rsp+0x840]
  b7a090:	00 00 
  b7a092:	c5 fd 28 9c 24 80 03 	vmovapd ymm3,YMMWORD PTR [rsp+0x380]
  b7a099:	00 00 
  b7a09b:	c5 7d 28 8c 24 c0 08 	vmovapd ymm9,YMMWORD PTR [rsp+0x8c0]
  b7a0a2:	00 00 
  b7a0a4:	c5 fd 28 a4 24 00 04 	vmovapd ymm4,YMMWORD PTR [rsp+0x400]
  b7a0ab:	00 00 
  b7a0ad:	c5 fd 28 94 24 c0 07 	vmovapd ymm2,YMMWORD PTR [rsp+0x7c0]
  b7a0b4:	00 00 
  b7a0b6:	c5 fd 28 8c 24 00 08 	vmovapd ymm1,YMMWORD PTR [rsp+0x800]
  b7a0bd:	00 00 
  b7a0bf:	62 61 fd 28 28 4c 24 	vmovapd ymm25,YMMWORD PTR [rsp+0x300]
  b7a0c6:	18 
  b7a0c7:	c5 7d 28 94 24 40 03 	vmovapd ymm10,YMMWORD PTR [rsp+0x340]
  b7a0ce:	00 00 
  b7a0d0:	62 61 fd 28 28 54 24 	vmovapd ymm26,YMMWORD PTR [rsp+0x980]
  b7a0d7:	4c 
  b7a0d8:	62 61 fd 28 28 64 24 	vmovapd ymm28,YMMWORD PTR [rsp+0x4c0]
  b7a0df:	26 
  b7a0e0:	62 61 fd 28 28 6c 24 	vmovapd ymm29,YMMWORD PTR [rsp+0x900]
  b7a0e7:	48 
  b7a0e8:	62 61 fd 28 28 5c 24 	vmovapd ymm27,YMMWORD PTR [rsp+0x440]
  b7a0ef:	22 
  b7a0f0:	62 71 b5 20 59 c2    	vmulpd ymm8,ymm25,ymm2
  b7a0f6:	62 12 9d 20 bc c2    	vfnmadd231pd ymm8,ymm28,ymm26
  b7a0fc:	c5 7d 29 04 24       	vmovapd YMMWORD PTR [rsp],ymm8
  b7a101:	62 71 9d 20 59 c2    	vmulpd ymm8,ymm28,ymm2
  b7a107:	62 61 fd 28 28 74 24 	vmovapd ymm30,YMMWORD PTR [rsp+0xac0]
  b7a10e:	56 
  b7a10f:	62 12 b5 20 b8 c2    	vfmadd231pd ymm8,ymm25,ymm26
  b7a115:	c5 fd 28 94 24 00 06 	vmovapd ymm2,YMMWORD PTR [rsp+0x600]
  b7a11c:	00 00 
  b7a11e:	62 11 a5 20 59 f5    	vmulpd ymm14,ymm27,ymm29
  b7a124:	62 12 ed 28 bc f6    	vfnmadd231pd ymm14,ymm2,ymm30
  b7a12a:	62 91 ed 28 59 d5    	vmulpd ymm2,ymm2,ymm29
  b7a130:	62 61 fd 28 28 54 24 	vmovapd ymm26,YMMWORD PTR [rsp+0x9c0]
  b7a137:	4e 
  b7a138:	62 92 a5 20 b8 d6    	vfmadd231pd ymm2,ymm27,ymm30
  b7a13e:	62 61 fd 28 28 6c 24 	vmovapd ymm29,YMMWORD PTR [rsp+0x500]
  b7a145:	28 
  b7a146:	62 61 ad 28 59 d9    	vmulpd ymm27,ymm10,ymm1
  b7a14c:	62 02 95 20 bc da    	vfnmadd231pd ymm27,ymm29,ymm26
  b7a152:	62 61 95 20 59 e9    	vmulpd ymm29,ymm29,ymm1
  b7a158:	c5 fd 28 8c 24 80 0a 	vmovapd ymm1,YMMWORD PTR [rsp+0xa80]
  b7a15f:	00 00 
  b7a161:	62 02 ad 28 b8 ea    	vfmadd231pd ymm29,ymm10,ymm26
  b7a167:	62 61 fd 28 28 54 24 	vmovapd ymm26,YMMWORD PTR [rsp+0x5c0]
  b7a16e:	2e 
  b7a16f:	62 41 dd 28 59 c9    	vmulpd ymm25,ymm4,ymm9
  b7a175:	62 62 ad 20 bc c9    	vfnmadd231pd ymm25,ymm26,ymm1
  b7a17b:	62 51 ad 20 59 c9    	vmulpd ymm9,ymm26,ymm9
  b7a181:	62 61 fd 28 28 74 24 	vmovapd ymm30,YMMWORD PTR [rsp+0xa00]
  b7a188:	50 
  b7a189:	c4 62 dd b8 c9       	vfmadd231pd ymm9,ymm4,ymm1
  b7a18e:	c5 fd 28 8c 24 40 05 	vmovapd ymm1,YMMWORD PTR [rsp+0x540]
  b7a195:	00 00 
  b7a197:	c5 25 59 d3          	vmulpd ymm10,ymm11,ymm3
  b7a19b:	62 12 f5 28 bc d6    	vfnmadd231pd ymm10,ymm1,ymm30
  b7a1a1:	62 41 f5 28 59 fb    	vmulpd ymm31,ymm1,ymm11
  b7a1a7:	c5 fd 28 8c 24 40 0a 	vmovapd ymm1,YMMWORD PTR [rsp+0xa40]
  b7a1ae:	00 00 
  b7a1b0:	62 02 e5 28 b8 fe    	vfmadd231pd ymm31,ymm3,ymm30
  b7a1b6:	c5 fd 28 9c 24 80 05 	vmovapd ymm3,YMMWORD PTR [rsp+0x580]
  b7a1bd:	00 00 
  b7a1bf:	c5 cd 59 e7          	vmulpd ymm4,ymm6,ymm7
  b7a1c3:	c4 e2 e5 bc e1       	vfnmadd231pd ymm4,ymm3,ymm1
  b7a1c8:	c5 e5 59 ff          	vmulpd ymm7,ymm3,ymm7
  b7a1cc:	c5 fd 28 9c 24 20 0a 	vmovapd ymm3,YMMWORD PTR [rsp+0xa20]
  b7a1d3:	00 00 
  b7a1d5:	c4 e2 cd b8 f9       	vfmadd231pd ymm7,ymm6,ymm1
  b7a1da:	c5 fd 28 8c 24 60 05 	vmovapd ymm1,YMMWORD PTR [rsp+0x560]
  b7a1e1:	00 00 
  b7a1e3:	62 b1 d5 28 59 f1    	vmulpd ymm6,ymm5,ymm17
  b7a1e9:	c4 e2 f5 bc f3       	vfnmadd231pd ymm6,ymm1,ymm3
  b7a1ee:	c5 7d 28 de          	vmovapd ymm11,ymm6
  b7a1f2:	62 b1 f5 28 59 c9    	vmulpd ymm1,ymm1,ymm17
  b7a1f8:	c5 fd 28 b4 24 60 0a 	vmovapd ymm6,YMMWORD PTR [rsp+0xa60]
  b7a1ff:	00 00 
  b7a201:	c4 e2 d5 b8 cb       	vfmadd231pd ymm1,ymm5,ymm3
  b7a206:	c5 fd 29 8c 24 a0 01 	vmovapd YMMWORD PTR [rsp+0x1a0],ymm1
  b7a20d:	00 00 
  b7a20f:	c5 fd 28 9c 24 a0 05 	vmovapd ymm3,YMMWORD PTR [rsp+0x5a0]
  b7a216:	00 00 
  b7a218:	62 01 c5 20 59 d0    	vmulpd ymm26,ymm23,ymm24
  b7a21e:	62 62 e5 28 bc d6    	vfnmadd231pd ymm26,ymm3,ymm6
  b7a224:	62 01 e5 28 59 f0    	vmulpd ymm30,ymm3,ymm24
  b7a22a:	c5 fd 28 9c 24 20 05 	vmovapd ymm3,YMMWORD PTR [rsp+0x520]
  b7a231:	00 00 
  b7a233:	62 62 c5 20 b8 f6    	vfmadd231pd ymm30,ymm23,ymm6
  b7a239:	c5 fd 28 ac 24 a0 07 	vmovapd ymm5,YMMWORD PTR [rsp+0x7a0]
  b7a240:	00 00 
  b7a242:	62 21 dd 20 59 c6    	vmulpd ymm24,ymm20,ymm22
  b7a248:	62 22 e5 28 bc c5    	vfnmadd231pd ymm24,ymm3,ymm21
  b7a24e:	62 a1 e5 28 59 fe    	vmulpd ymm23,ymm3,ymm22
  b7a254:	c5 fd 28 b4 24 e0 07 	vmovapd ymm6,YMMWORD PTR [rsp+0x7e0]
  b7a25b:	00 00 
  b7a25d:	62 a2 dd 20 b8 fd    	vfmadd231pd ymm23,ymm20,ymm21
  b7a263:	62 e1 fd 28 28 64 24 	vmovapd ymm20,YMMWORD PTR [rsp+0x320]
  b7a26a:	19 
  b7a26b:	62 a1 fd 20 59 f2    	vmulpd ymm22,ymm16,ymm18
  b7a271:	62 e2 e5 20 bc f0    	vfnmadd231pd ymm22,ymm19,ymm0
  b7a277:	62 a1 e5 20 59 da    	vmulpd ymm19,ymm19,ymm18
  b7a27d:	62 e1 fd 28 28 54 24 	vmovapd ymm18,YMMWORD PTR [rsp+0x9a0]
  b7a284:	4d 
  b7a285:	62 e2 fd 20 b8 d8    	vfmadd231pd ymm19,ymm16,ymm0
  b7a28b:	62 e1 fd 28 28 44 24 	vmovapd ymm16,YMMWORD PTR [rsp+0x4e0]
  b7a292:	27 
  b7a293:	62 f1 dd 20 59 de    	vmulpd ymm3,ymm20,ymm6
  b7a299:	62 b2 fd 20 bc da    	vfnmadd231pd ymm3,ymm16,ymm18
  b7a29f:	62 f1 fd 20 59 ce    	vmulpd ymm1,ymm16,ymm6
  b7a2a5:	c5 fd 28 b4 24 e0 02 	vmovapd ymm6,YMMWORD PTR [rsp+0x2e0]
  b7a2ac:	00 00 
  b7a2ae:	62 b2 dd 20 b8 ca    	vfmadd231pd ymm1,ymm20,ymm18
  b7a2b4:	62 e1 fd 28 28 44 24 	vmovapd ymm16,YMMWORD PTR [rsp+0x960]
  b7a2bb:	4b 
  b7a2bc:	c5 fd 28 44 24 20    	vmovapd ymm0,YMMWORD PTR [rsp+0x20]
  b7a2c2:	62 c1 fd 28 59 ec    	vmulpd ymm21,ymm0,ymm12
  b7a2c8:	62 c2 85 28 bc ed    	vfnmadd231pd ymm21,ymm15,ymm13
  b7a2ce:	62 c1 85 28 59 d4    	vmulpd ymm18,ymm15,ymm12
  b7a2d4:	c5 7d 28 bc 24 a0 04 	vmovapd ymm15,YMMWORD PTR [rsp+0x4a0]
  b7a2db:	00 00 
  b7a2dd:	62 c2 fd 28 b8 d5    	vfmadd231pd ymm18,ymm0,ymm13
  b7a2e3:	c5 7d 28 24 24       	vmovapd ymm12,YMMWORD PTR [rsp]
  b7a2e8:	62 41 9d 28 58 e6    	vaddpd ymm28,ymm12,ymm14
  b7a2ee:	62 c1 fd 28 28 e6    	vmovapd ymm20,ymm14
  b7a2f4:	c5 4d 59 f5          	vmulpd ymm14,ymm6,ymm5
  b7a2f8:	62 32 85 28 bc f0    	vfnmadd231pd ymm14,ymm15,ymm16
  b7a2fe:	c5 85 59 c5          	vmulpd ymm0,ymm15,ymm5
  b7a302:	62 e1 fd 28 28 4c 24 	vmovapd ymm17,YMMWORD PTR [rsp+0xe0]
  b7a309:	07 
  b7a30a:	62 11 f5 20 58 fc    	vaddpd ymm15,ymm17,ymm28
  b7a310:	62 b2 cd 28 b8 c0    	vfmadd231pd ymm0,ymm6,ymm16
  b7a316:	62 91 a5 20 58 f1    	vaddpd ymm6,ymm27,ymm25
  b7a31c:	c5 85 58 ee          	vaddpd ymm5,ymm15,ymm6
  b7a320:	62 71 85 20 58 ff    	vaddpd ymm15,ymm31,ymm7
  b7a326:	c5 7d 29 bc 24 c0 00 	vmovapd YMMWORD PTR [rsp+0xc0],ymm15
  b7a32d:	00 00 
  b7a32f:	62 61 85 20 5c ff    	vsubpd ymm31,ymm31,ymm7
  b7a335:	c5 3d 58 fa          	vaddpd ymm15,ymm8,ymm2
  b7a339:	62 e1 bd 28 5c c2    	vsubpd ymm16,ymm8,ymm2
  b7a33f:	62 d1 95 20 58 d1    	vaddpd ymm2,ymm29,ymm9
  b7a345:	c5 fd 29 94 24 00 02 	vmovapd YMMWORD PTR [rsp+0x200],ymm2
  b7a34c:	00 00 
  b7a34e:	62 d1 95 20 5c f9    	vsubpd ymm7,ymm29,ymm9
  b7a354:	62 f1 ed 20 58 d0    	vaddpd ymm2,ymm18,ymm0
  b7a35a:	c5 fd 29 54 24 20    	vmovapd YMMWORD PTR [rsp+0x20],ymm2
  b7a360:	62 71 ed 20 5c c0    	vsubpd ymm8,ymm18,ymm0
  b7a366:	62 b1 8d 20 58 c7    	vaddpd ymm0,ymm30,ymm23
  b7a36c:	c5 fd 29 84 24 20 01 	vmovapd YMMWORD PTR [rsp+0x120],ymm0
  b7a373:	00 00 
  b7a375:	62 21 8d 20 5c ef    	vsubpd ymm29,ymm30,ymm23
  b7a37b:	62 f1 e5 20 58 c1    	vaddpd ymm0,ymm19,ymm1
  b7a381:	c5 fd 29 84 24 a0 00 	vmovapd YMMWORD PTR [rsp+0xa0],ymm0
  b7a388:	00 00 
  b7a38a:	62 61 e5 20 5c f1    	vsubpd ymm30,ymm19,ymm1
  b7a390:	c5 ad 58 c4          	vaddpd ymm0,ymm10,ymm4
  b7a394:	c5 d5 58 d0          	vaddpd ymm2,ymm5,ymm0
  b7a398:	c5 fd 29 94 24 c0 01 	vmovapd YMMWORD PTR [rsp+0x1c0],ymm2
  b7a39f:	00 00 
  b7a3a1:	c5 ad 5c cc          	vsubpd ymm1,ymm10,ymm4
  b7a3a5:	c5 fd 29 8c 24 80 00 	vmovapd YMMWORD PTR [rsp+0x80],ymm1
  b7a3ac:	00 00 
  b7a3ae:	62 91 ad 20 58 e0    	vaddpd ymm4,ymm26,ymm24
  b7a3b4:	62 a1 9d 28 5c fc    	vsubpd ymm23,ymm12,ymm20
  b7a3ba:	62 c1 fd 28 28 d3    	vmovapd ymm18,ymm11
  b7a3c0:	c5 a5 58 cc          	vaddpd ymm1,ymm11,ymm4
  b7a3c4:	62 81 a5 20 5c d9    	vsubpd ymm19,ymm27,ymm25
  b7a3ca:	62 51 d5 20 58 d6    	vaddpd ymm10,ymm21,ymm14
  b7a3d0:	62 d1 d5 20 5c ee    	vsubpd ymm5,ymm21,ymm14
  b7a3d6:	c5 fd 29 2c 24       	vmovapd YMMWORD PTR [rsp],ymm5
  b7a3db:	62 61 cd 20 58 cb    	vaddpd ymm25,ymm22,ymm3
  b7a3e1:	62 91 f5 28 58 c9    	vaddpd ymm1,ymm1,ymm25
  b7a3e7:	c5 ad 58 e9          	vaddpd ymm5,ymm10,ymm1
  b7a3eb:	c5 fd 29 ac 24 e0 01 	vmovapd YMMWORD PTR [rsp+0x1e0],ymm5
  b7a3f2:	00 00 
  b7a3f4:	62 01 ad 20 5c c0    	vsubpd ymm24,ymm26,ymm24
  b7a3fa:	c4 62 7d 19 35 9d ad 	vbroadcastsd ymm14,QWORD PTR [rip+0xffffffffff4fad9d]        # 751a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2650>
  b7a401:	4f ff 
  b7a403:	c4 41 7d 28 ce       	vmovapd ymm9,ymm14
  b7a408:	62 32 9d 20 a8 c9    	vfmadd213pd ymm9,ymm28,ymm17
  b7a40e:	62 f1 cd 20 5c db    	vsubpd ymm3,ymm22,ymm3
  b7a414:	c5 fd 29 5c 24 60    	vmovapd YMMWORD PTR [rsp+0x60],ymm3
  b7a41a:	62 62 fd 28 19 15 54 	vbroadcastsd ymm26,QWORD PTR [rip+0xffffffffff4faa54]        # 74e78 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2328>
  b7a421:	aa 4f ff 
  b7a424:	62 81 fd 28 28 f2    	vmovapd ymm22,ymm26
  b7a42a:	62 a2 9d 20 ac f1    	vfnmadd213pd ymm22,ymm28,ymm17
  b7a430:	62 62 fd 28 19 1d a6 	vbroadcastsd ymm27,QWORD PTR [rip+0xffffffffff4fa9a6]        # 74de0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2290>
  b7a437:	a9 4f ff 
  b7a43a:	62 22 a5 20 ac e1    	vfnmadd213pd ymm28,ymm27,ymm17
  b7a440:	c5 ed 58 cd          	vaddpd ymm1,ymm2,ymm5
  b7a444:	c5 fd 29 8c 24 e0 00 	vmovapd YMMWORD PTR [rsp+0xe0],ymm1
  b7a44b:	00 00 
  b7a44d:	62 12 cd 28 bc ca    	vfnmadd231pd ymm9,ymm6,ymm26
  b7a453:	62 12 fd 28 bc cb    	vfnmadd231pd ymm9,ymm0,ymm27
  b7a459:	c5 7d 29 8c 24 80 01 	vmovapd YMMWORD PTR [rsp+0x180],ymm9
  b7a460:	00 00 
  b7a462:	62 82 cd 28 bc f3    	vfnmadd231pd ymm22,ymm6,ymm27
  b7a468:	62 62 8d 28 b8 e6    	vfmadd231pd ymm28,ymm14,ymm6
  b7a46e:	c4 62 7d 19 2d 61 a7 	vbroadcastsd ymm13,QWORD PTR [rip+0xffffffffff4fa761]        # 74bd8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2088>
  b7a475:	4f ff 
  b7a477:	62 c1 c5 28 59 ed    	vmulpd ymm21,ymm7,ymm13
  b7a47d:	c4 62 7d 19 1d 4a aa 	vbroadcastsd ymm11,QWORD PTR [rip+0xffffffffff4faa4a]        # 74ed0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2380>
  b7a484:	4f ff 
  b7a486:	62 c2 fd 20 b8 eb    	vfmadd231pd ymm21,ymm16,ymm11
  b7a48c:	c4 62 7d 19 0d b3 a2 	vbroadcastsd ymm9,QWORD PTR [rip+0xffffffffff4fa2b3]        # 74748 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1bf8>
  b7a493:	4f ff 
  b7a495:	62 c2 85 20 b8 e9    	vfmadd231pd ymm21,ymm31,ymm9
  b7a49b:	62 c2 fd 28 b8 f6    	vfmadd231pd ymm22,ymm0,ymm14
  b7a4a1:	62 62 ad 20 bc e0    	vfnmadd231pd ymm28,ymm26,ymm0
  b7a4a7:	62 51 fd 20 59 e5    	vmulpd ymm12,ymm16,ymm13
  b7a4ad:	c4 42 c5 bc e1       	vfnmadd231pd ymm12,ymm7,ymm9
  b7a4b2:	62 d1 fd 20 59 f1    	vmulpd ymm6,ymm16,ymm9
  b7a4b8:	c4 e2 a5 bc f7       	vfnmadd231pd ymm6,ymm11,ymm7
  b7a4bd:	c5 7d 29 f3          	vmovapd ymm3,ymm14
  b7a4c1:	62 b1 fd 28 28 c2    	vmovapd ymm0,ymm18
  b7a4c7:	62 b2 dd 28 a8 da    	vfmadd213pd ymm3,ymm4,ymm18
  b7a4cd:	62 52 85 20 bc e3    	vfnmadd231pd ymm12,ymm31,ymm11
  b7a4d3:	62 92 95 28 b8 f7    	vfmadd231pd ymm6,ymm13,ymm31
  b7a4d9:	62 91 fd 28 28 fa    	vmovapd ymm7,ymm26
  b7a4df:	62 b2 dd 28 ac fa    	vfnmadd213pd ymm7,ymm4,ymm18
  b7a4e5:	62 f2 a5 20 bc c4    	vfnmadd231pd ymm0,ymm27,ymm4
  b7a4eb:	62 e1 fd 28 28 44 24 	vmovapd ymm16,YMMWORD PTR [rsp+0x40]
  b7a4f2:	02 
  b7a4f3:	62 b1 85 28 58 e0    	vaddpd ymm4,ymm15,ymm16
  b7a4f9:	62 e1 fd 28 28 64 24 	vmovapd ymm20,YMMWORD PTR [rsp+0x200]
  b7a500:	10 
  b7a501:	62 f1 dd 20 58 e4    	vaddpd ymm4,ymm20,ymm4
  b7a507:	62 e1 fd 28 28 4c 24 	vmovapd ymm17,YMMWORD PTR [rsp+0xc0]
  b7a50e:	06 
  b7a50f:	62 e1 f5 20 58 d4    	vaddpd ymm18,ymm17,ymm4
  b7a515:	62 92 b5 20 bc da    	vfnmadd231pd ymm3,ymm25,ymm26
  b7a51b:	62 92 ad 28 bc db    	vfnmadd231pd ymm3,ymm10,ymm27
  b7a521:	62 92 b5 20 bc fb    	vfnmadd231pd ymm7,ymm25,ymm27
  b7a527:	62 92 8d 28 b8 c1    	vfmadd231pd ymm0,ymm14,ymm25
  b7a52d:	62 d1 8d 20 59 ed    	vmulpd ymm5,ymm30,ymm13
  b7a533:	62 d2 95 20 b8 eb    	vfmadd231pd ymm5,ymm29,ymm11
  b7a539:	62 41 fd 28 28 f8    	vmovapd ymm31,ymm8
  b7a53f:	c4 c2 bd b8 e9       	vfmadd231pd ymm5,ymm8,ymm9
  b7a544:	c4 c2 ad b8 fe       	vfmadd231pd ymm7,ymm10,ymm14
  b7a549:	62 d2 ad 20 bc c2    	vfnmadd231pd ymm0,ymm26,ymm10
  b7a54f:	c5 fd 29 84 24 00 01 	vmovapd YMMWORD PTR [rsp+0x100],ymm0
  b7a556:	00 00 
  b7a558:	62 41 95 20 59 cd    	vmulpd ymm25,ymm29,ymm13
  b7a55e:	62 42 8d 20 bc c9    	vfnmadd231pd ymm25,ymm30,ymm9
  b7a564:	62 d1 95 20 59 d1    	vmulpd ymm2,ymm29,ymm9
  b7a56a:	62 92 a5 28 bc d6    	vfnmadd231pd ymm2,ymm11,ymm30
  b7a570:	c4 41 7d 28 c6       	vmovapd ymm8,ymm14
  b7a575:	62 32 85 28 a8 c0    	vfmadd213pd ymm8,ymm15,ymm16
  b7a57b:	62 42 85 20 bc cb    	vfnmadd231pd ymm25,ymm31,ymm11
  b7a581:	62 92 95 28 b8 d7    	vfmadd231pd ymm2,ymm13,ymm31
  b7a587:	62 01 fd 28 28 ea    	vmovapd ymm29,ymm26
  b7a58d:	62 22 85 28 ac e8    	vfnmadd213pd ymm29,ymm15,ymm16
  b7a593:	62 32 a5 20 ac f8    	vfnmadd213pd ymm15,ymm27,ymm16
  b7a599:	c5 fd 28 8c 24 20 01 	vmovapd ymm1,YMMWORD PTR [rsp+0x120]
  b7a5a0:	00 00 
  b7a5a2:	c5 fd 28 84 24 a0 01 	vmovapd ymm0,YMMWORD PTR [rsp+0x1a0]
  b7a5a9:	00 00 
  b7a5ab:	62 e1 fd 28 58 c1    	vaddpd ymm16,ymm0,ymm1
  b7a5b1:	62 61 fd 28 28 74 24 	vmovapd ymm30,YMMWORD PTR [rsp+0xa0]
  b7a5b8:	05 
  b7a5b9:	62 81 fd 20 58 c6    	vaddpd ymm16,ymm16,ymm30
  b7a5bf:	c5 7d 28 54 24 20    	vmovapd ymm10,YMMWORD PTR [rsp+0x20]
  b7a5c5:	62 d1 fd 20 58 e2    	vaddpd ymm4,ymm16,ymm10
  b7a5cb:	c5 fd 29 a4 24 60 01 	vmovapd YMMWORD PTR [rsp+0x160],ymm4
  b7a5d2:	00 00 
  b7a5d4:	62 12 dd 20 bc c2    	vfnmadd231pd ymm8,ymm20,ymm26
  b7a5da:	62 12 f5 20 bc c3    	vfnmadd231pd ymm8,ymm17,ymm27
  b7a5e0:	62 02 dd 20 bc eb    	vfnmadd231pd ymm29,ymm20,ymm27
  b7a5e6:	62 32 8d 28 b8 fc    	vfmadd231pd ymm15,ymm14,ymm20
  b7a5ec:	62 c1 e5 20 59 e5    	vmulpd ymm20,ymm19,ymm13
  b7a5f2:	62 c2 c5 20 b8 e3    	vfmadd231pd ymm20,ymm23,ymm11
  b7a5f8:	62 61 fd 28 28 7c 24 	vmovapd ymm31,YMMWORD PTR [rsp+0x80]
  b7a5ff:	04 
  b7a600:	62 c2 85 20 b8 e1    	vfmadd231pd ymm20,ymm31,ymm9
  b7a606:	62 42 f5 20 b8 ee    	vfmadd231pd ymm29,ymm17,ymm14
  b7a60c:	62 32 ad 20 bc f9    	vfnmadd231pd ymm15,ymm26,ymm17
  b7a612:	62 c1 c5 20 59 c5    	vmulpd ymm16,ymm23,ymm13
  b7a618:	62 c2 e5 20 bc c1    	vfnmadd231pd ymm16,ymm19,ymm9
  b7a61e:	62 c1 c5 20 59 c9    	vmulpd ymm17,ymm23,ymm9
  b7a624:	62 a2 a5 28 bc cb    	vfnmadd231pd ymm17,ymm11,ymm19
  b7a62a:	62 c1 fd 28 28 de    	vmovapd ymm19,ymm14
  b7a630:	62 e2 f5 28 a8 d8    	vfmadd213pd ymm19,ymm1,ymm0
  b7a636:	62 c2 85 20 bc c3    	vfnmadd231pd ymm16,ymm31,ymm11
  b7a63c:	62 82 95 28 b8 cf    	vfmadd231pd ymm17,ymm13,ymm31
  b7a642:	62 81 fd 28 28 fa    	vmovapd ymm23,ymm26
  b7a648:	62 e2 f5 28 ac f8    	vfnmadd213pd ymm23,ymm1,ymm0
  b7a64e:	62 f2 a5 20 bc c1    	vfnmadd231pd ymm0,ymm27,ymm1
  b7a654:	62 21 fd 28 28 fa    	vmovapd ymm31,ymm18
  b7a65a:	62 f1 ed 20 58 cc    	vaddpd ymm1,ymm18,ymm4
  b7a660:	c5 fd 29 4c 24 40    	vmovapd YMMWORD PTR [rsp+0x40],ymm1
  b7a666:	62 82 8d 20 bc da    	vfnmadd231pd ymm19,ymm30,ymm26
  b7a66c:	62 82 ad 28 bc db    	vfnmadd231pd ymm19,ymm10,ymm27
  b7a672:	62 82 8d 20 bc fb    	vfnmadd231pd ymm23,ymm30,ymm27
  b7a678:	62 92 8d 28 b8 c6    	vfmadd231pd ymm0,ymm14,ymm30
  b7a67e:	62 61 fd 28 28 5c 24 	vmovapd ymm27,YMMWORD PTR [rsp+0x60]
  b7a685:	03 
  b7a686:	62 c1 a5 20 59 d5    	vmulpd ymm18,ymm27,ymm13
  b7a68c:	62 c2 bd 20 b8 d3    	vfmadd231pd ymm18,ymm24,ymm11
  b7a692:	62 c2 ad 28 b8 fe    	vfmadd231pd ymm23,ymm10,ymm14
  b7a698:	62 d2 ad 20 bc c2    	vfnmadd231pd ymm0,ymm26,ymm10
  b7a69e:	62 41 bd 20 59 d5    	vmulpd ymm26,ymm24,ymm13
  b7a6a4:	62 42 a5 20 bc d1    	vfnmadd231pd ymm26,ymm27,ymm9
  b7a6aa:	62 41 bd 20 59 c1    	vmulpd ymm24,ymm24,ymm9
  b7a6b0:	62 02 a5 28 bc c3    	vfnmadd231pd ymm24,ymm11,ymm27
  b7a6b6:	c5 fd 28 a4 24 80 01 	vmovapd ymm4,YMMWORD PTR [rsp+0x180]
  b7a6bd:	00 00 
  b7a6bf:	62 31 dd 28 58 d5    	vaddpd ymm10,ymm4,ymm21
  b7a6c5:	c5 7d 28 34 24       	vmovapd ymm14,YMMWORD PTR [rsp]
  b7a6ca:	62 c2 8d 28 b8 d1    	vfmadd231pd ymm18,ymm14,ymm9
  b7a6d0:	62 42 8d 28 bc d3    	vfnmadd231pd ymm26,ymm14,ymm11
  b7a6d6:	62 42 95 28 b8 c6    	vfmadd231pd ymm24,ymm13,ymm14
  b7a6dc:	62 f1 9d 20 58 ce    	vaddpd ymm1,ymm28,ymm6
  b7a6e2:	c5 fd 29 0c 24       	vmovapd YMMWORD PTR [rsp],ymm1
  b7a6e7:	62 f1 9d 20 5c ce    	vsubpd ymm1,ymm28,ymm6
  b7a6ed:	c5 fd 29 4c 24 20    	vmovapd YMMWORD PTR [rsp+0x20],ymm1
  b7a6f3:	c5 fd 28 8c 24 00 01 	vmovapd ymm1,YMMWORD PTR [rsp+0x100]
  b7a6fa:	00 00 
  b7a6fc:	c5 75 58 ea          	vaddpd ymm13,ymm1,ymm2
  b7a700:	c5 f5 5c ca          	vsubpd ymm1,ymm1,ymm2
  b7a704:	62 21 85 28 5c d9    	vsubpd ymm27,ymm15,ymm17
  b7a70a:	62 41 f5 20 58 f7    	vaddpd ymm30,ymm17,ymm15
  b7a710:	62 11 fd 28 5c f8    	vsubpd ymm15,ymm0,ymm24
  b7a716:	62 91 fd 28 58 f0    	vaddpd ymm6,ymm0,ymm24
  b7a71c:	62 c1 cd 20 58 cc    	vaddpd ymm17,ymm22,ymm12
  b7a722:	62 51 cd 20 5c e4    	vsubpd ymm12,ymm22,ymm12
  b7a728:	62 81 c5 28 58 f1    	vaddpd ymm22,ymm7,ymm25
  b7a72e:	62 91 c5 28 5c f9    	vsubpd ymm7,ymm7,ymm25
  b7a734:	62 31 95 20 5c d8    	vsubpd ymm11,ymm29,ymm16
  b7a73a:	62 01 fd 20 58 cd    	vaddpd ymm25,ymm16,ymm29
  b7a740:	62 81 c5 20 5c c2    	vsubpd ymm16,ymm23,ymm26
  b7a746:	62 81 c5 20 58 fa    	vaddpd ymm23,ymm23,ymm26
  b7a74c:	62 61 e5 28 58 d5    	vaddpd ymm26,ymm3,ymm5
  b7a752:	62 b1 dd 28 5c d5    	vsubpd ymm2,ymm4,ymm21
  b7a758:	62 91 ad 28 5c c2    	vsubpd ymm0,ymm10,ymm26
  b7a75e:	c5 fd 29 84 24 40 01 	vmovapd YMMWORD PTR [rsp+0x140],ymm0
  b7a765:	00 00 
  b7a767:	c5 e5 5c e5          	vsubpd ymm4,ymm3,ymm5
  b7a76b:	62 b1 bd 28 5c dc    	vsubpd ymm3,ymm8,ymm20
  b7a771:	62 51 dd 20 58 c0    	vaddpd ymm8,ymm20,ymm8
  b7a777:	62 a1 e5 20 5c e2    	vsubpd ymm20,ymm19,ymm18
  b7a77d:	62 a1 e5 20 58 d2    	vaddpd ymm18,ymm19,ymm18
  b7a783:	62 31 e5 28 5c f4    	vsubpd ymm14,ymm3,ymm20
  b7a789:	c5 7d 28 8c 24 c0 01 	vmovapd ymm9,YMMWORD PTR [rsp+0x1c0]
  b7a790:	00 00 
  b7a792:	c5 b5 5c 84 24 e0 01 	vsubpd ymm0,ymm9,YMMWORD PTR [rsp+0x1e0]
  b7a799:	00 00 
  b7a79b:	c5 fd 29 84 24 40 02 	vmovapd YMMWORD PTR [rsp+0x240],ymm0
  b7a7a2:	00 00 
  b7a7a4:	62 b1 f5 20 58 c6    	vaddpd ymm0,ymm17,ymm22
  b7a7aa:	c5 fd 29 84 24 80 02 	vmovapd YMMWORD PTR [rsp+0x280],ymm0
  b7a7b1:	00 00 
  b7a7b3:	62 61 85 20 5c 7c 24 	vsubpd ymm31,ymm31,YMMWORD PTR [rsp+0x160]
  b7a7ba:	0b 
  b7a7bb:	62 21 a5 28 58 e0    	vaddpd ymm28,ymm11,ymm16
  b7a7c1:	62 91 ad 28 58 c2    	vaddpd ymm0,ymm10,ymm26
  b7a7c7:	c5 fd 29 84 24 20 02 	vmovapd YMMWORD PTR [rsp+0x220],ymm0
  b7a7ce:	00 00 
  b7a7d0:	c5 fd 28 2c 24       	vmovapd ymm5,YMMWORD PTR [rsp]
  b7a7d5:	62 c1 d5 28 5c dd    	vsubpd ymm19,ymm5,ymm13
  b7a7db:	62 21 e5 28 58 d4    	vaddpd ymm26,ymm3,ymm20
  b7a7e1:	62 c1 a5 20 5c ef    	vsubpd ymm21,ymm27,ymm15
  b7a7e7:	62 a1 f5 20 5c f6    	vsubpd ymm22,ymm17,ymm22
  b7a7ed:	c5 fd 28 5c 24 20    	vmovapd ymm3,YMMWORD PTR [rsp+0x20]
  b7a7f3:	62 61 e5 28 58 e9    	vaddpd ymm29,ymm3,ymm1
  b7a7f9:	62 31 a5 28 5c c8    	vsubpd ymm9,ymm11,ymm16
  b7a7ff:	62 61 8d 20 58 c6    	vaddpd ymm24,ymm30,ymm6
  b7a805:	c5 15 58 dd          	vaddpd ymm11,ymm13,ymm5
  b7a809:	c5 1d 5c ef          	vsubpd ymm13,ymm12,ymm7
  b7a80d:	62 51 a5 20 58 d7    	vaddpd ymm10,ymm27,ymm15
  b7a813:	62 a1 b5 20 5c cf    	vsubpd ymm17,ymm25,ymm23
  b7a819:	c5 e5 5c d9          	vsubpd ymm3,ymm3,ymm1
  b7a81d:	c5 fd 29 9c 24 a0 02 	vmovapd YMMWORD PTR [rsp+0x2a0],ymm3
  b7a824:	00 00 
  b7a826:	c5 fd 28 4c 24 40    	vmovapd ymm1,YMMWORD PTR [rsp+0x40]
  b7a82c:	62 e1 ed 28 58 e4    	vaddpd ymm20,ymm2,ymm4
  b7a832:	62 61 8d 20 5c de    	vsubpd ymm27,ymm30,ymm6
  b7a838:	c5 7d 29 f5          	vmovapd ymm5,ymm14
  b7a83c:	62 31 bd 28 58 fa    	vaddpd ymm15,ymm8,ymm18
  b7a842:	c5 1d 58 e7          	vaddpd ymm12,ymm12,ymm7
  b7a846:	62 31 b5 20 58 f7    	vaddpd ymm14,ymm25,ymm23
  b7a84c:	62 61 ed 28 5c cc    	vsubpd ymm25,ymm2,ymm4
  b7a852:	62 b1 bd 28 5c fa    	vsubpd ymm7,ymm8,ymm18
  b7a858:	c5 fd 28 a4 24 e0 00 	vmovapd ymm4,YMMWORD PTR [rsp+0xe0]
  b7a85f:	00 00 
  b7a861:	c5 fd 29 21          	vmovapd YMMWORD PTR [rcx],ymm4
  b7a865:	c5 fd 29 08          	vmovapd YMMWORD PTR [rax],ymm1
  b7a869:	c5 fd 28 b4 24 40 01 	vmovapd ymm6,YMMWORD PTR [rsp+0x140]
  b7a870:	00 00 
  b7a872:	c5 fd 29 b4 24 e0 02 	vmovapd YMMWORD PTR [rsp+0x2e0],ymm6
  b7a879:	00 00 
  b7a87b:	c5 fd 29 ac 24 a0 04 	vmovapd YMMWORD PTR [rsp+0x4a0],ymm5
  b7a882:	00 00 
  b7a884:	c5 7d 28 84 24 80 02 	vmovapd ymm8,YMMWORD PTR [rsp+0x280]
  b7a88b:	00 00 
  b7a88d:	c5 7d 29 84 24 00 03 	vmovapd YMMWORD PTR [rsp+0x300],ymm8
  b7a894:	00 00 
  b7a896:	62 61 fd 28 29 64 24 	vmovapd YMMWORD PTR [rsp+0x4c0],ymm28
  b7a89d:	26 
  b7a89e:	62 e1 fd 28 29 5c 24 	vmovapd YMMWORD PTR [rsp+0x320],ymm19
  b7a8a5:	19 
  b7a8a6:	62 e1 fd 28 29 6c 24 	vmovapd YMMWORD PTR [rsp+0x4e0],ymm21
  b7a8ad:	27 
  b7a8ae:	62 61 fd 28 29 6c 24 	vmovapd YMMWORD PTR [rsp+0x340],ymm29
  b7a8b5:	1a 
  b7a8b6:	62 61 fd 28 29 44 24 	vmovapd YMMWORD PTR [rsp+0x500],ymm24
  b7a8bd:	28 
  b7a8be:	c5 7d 29 ac 24 60 03 	vmovapd YMMWORD PTR [rsp+0x360],ymm13
  b7a8c5:	00 00 
  b7a8c7:	62 e1 fd 28 29 4c 24 	vmovapd YMMWORD PTR [rsp+0x520],ymm17
  b7a8ce:	29 
  b7a8cf:	62 e1 fd 28 29 64 24 	vmovapd YMMWORD PTR [rsp+0x380],ymm20
  b7a8d6:	1c 
  b7a8d7:	c5 7d 29 bc 24 40 05 	vmovapd YMMWORD PTR [rsp+0x540],ymm15
  b7a8de:	00 00 
  b7a8e0:	62 e1 fd 28 28 54 24 	vmovapd ymm18,YMMWORD PTR [rsp+0x240]
  b7a8e7:	12 
  b7a8e8:	62 e1 fd 28 29 54 24 	vmovapd YMMWORD PTR [rsp+0x3a0],ymm18
  b7a8ef:	1d 
  b7a8f0:	62 61 fd 28 29 7c 24 	vmovapd YMMWORD PTR [rsp+0x560],ymm31
  b7a8f7:	2b 
  b7a8f8:	c5 fd 29 84 24 c0 03 	vmovapd YMMWORD PTR [rsp+0x3c0],ymm0
  b7a8ff:	00 00 
  b7a901:	62 61 fd 28 29 54 24 	vmovapd YMMWORD PTR [rsp+0x580],ymm26
  b7a908:	2c 
  b7a909:	62 e1 fd 28 29 74 24 	vmovapd YMMWORD PTR [rsp+0x3e0],ymm22
  b7a910:	1f 
  b7a911:	c5 7d 29 8c 24 a0 05 	vmovapd YMMWORD PTR [rsp+0x5a0],ymm9
  b7a918:	00 00 
  b7a91a:	c5 7d 29 9c 24 00 04 	vmovapd YMMWORD PTR [rsp+0x400],ymm11
  b7a921:	00 00 
  b7a923:	c5 7d 29 94 24 c0 05 	vmovapd YMMWORD PTR [rsp+0x5c0],ymm10
  b7a92a:	00 00 
  b7a92c:	c5 fd 29 9c 24 20 04 	vmovapd YMMWORD PTR [rsp+0x420],ymm3
  b7a933:	00 00 
  b7a935:	62 61 fd 28 29 5c 24 	vmovapd YMMWORD PTR [rsp+0x5e0],ymm27
  b7a93c:	2f 
  b7a93d:	c5 7d 29 a4 24 40 04 	vmovapd YMMWORD PTR [rsp+0x440],ymm12
  b7a944:	00 00 
  b7a946:	c5 7d 29 b4 24 00 06 	vmovapd YMMWORD PTR [rsp+0x600],ymm14
  b7a94d:	00 00 
  b7a94f:	62 61 fd 28 29 4c 24 	vmovapd YMMWORD PTR [rsp+0x460],ymm25
  b7a956:	23 
  b7a957:	c5 fd 29 bc 24 20 06 	vmovapd YMMWORD PTR [rsp+0x620],ymm7
  b7a95e:	00 00 
  b7a960:	62 e1 fd 28 28 f9    	vmovapd ymm23,ymm1
  b7a966:	c5 fd 28 1d f2 c1 4f 	vmovapd ymm3,YMMWORD PTR [rip+0xffffffffff4fc1f2]        # 76b60 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4010>
  b7a96d:	ff 
  b7a96e:	62 e2 e5 28 7f fc    	vpermt2pd ymm23,ymm3,ymm4
  b7a974:	62 e1 fd 28 28 05 c2 	vmovapd ymm16,YMMWORD PTR [rip+0xffffffffff4fccc2]        # 77640 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4af0>
  b7a97b:	cc 4f ff 
  b7a97e:	62 f2 fd 20 7f cc    	vpermt2pd ymm1,ymm16,ymm4
  b7a984:	62 61 fd 28 28 f5    	vmovapd ymm30,ymm5
  b7a98a:	c5 fd 28 e6          	vmovapd ymm4,ymm6
  b7a98e:	62 62 e5 28 7f f6    	vpermt2pd ymm30,ymm3,ymm6
  b7a994:	c5 7d 29 c6          	vmovapd ymm6,ymm8
  b7a998:	62 61 fd 28 29 64 24 	vmovapd YMMWORD PTR [rsp+0x260],ymm28
  b7a99f:	13 
  b7a9a0:	62 42 e5 28 7f e0    	vpermt2pd ymm28,ymm3,ymm8
  b7a9a6:	62 e1 fd 28 29 6c 24 	vmovapd YMMWORD PTR [rsp+0x160],ymm21
  b7a9ad:	0b 
  b7a9ae:	62 e1 fd 28 29 5c 24 	vmovapd YMMWORD PTR [rsp+0x100],ymm19
  b7a9b5:	08 
  b7a9b6:	62 a2 e5 28 7f eb    	vpermt2pd ymm21,ymm3,ymm19
  b7a9bc:	62 61 fd 28 29 44 24 	vmovapd YMMWORD PTR [rsp+0x180],ymm24
  b7a9c3:	0c 
  b7a9c4:	62 61 fd 28 29 6c 24 	vmovapd YMMWORD PTR [rsp+0x120],ymm29
  b7a9cb:	09 
  b7a9cc:	62 02 e5 28 7f c5    	vpermt2pd ymm24,ymm3,ymm29
  b7a9d2:	62 31 fd 28 28 c1    	vmovapd ymm8,ymm17
  b7a9d8:	c5 7d 29 ac 24 a0 01 	vmovapd YMMWORD PTR [rsp+0x1a0],ymm13
  b7a9df:	00 00 
  b7a9e1:	62 52 e5 28 7f c5    	vpermt2pd ymm8,ymm3,ymm13
  b7a9e7:	c4 41 7d 28 ef       	vmovapd ymm13,ymm15
  b7a9ec:	62 e1 fd 28 29 64 24 	vmovapd YMMWORD PTR [rsp+0x1c0],ymm20
  b7a9f3:	0e 
  b7a9f4:	62 32 e5 28 7f fc    	vpermt2pd ymm15,ymm3,ymm20
  b7a9fa:	62 61 fd 28 29 7c 24 	vmovapd YMMWORD PTR [rsp+0x1e0],ymm31
  b7aa01:	0f 
  b7aa02:	62 81 fd 28 28 e7    	vmovapd ymm20,ymm31
  b7aa08:	62 21 fd 28 28 fa    	vmovapd ymm31,ymm18
  b7aa0e:	62 a2 e5 28 7f e2    	vpermt2pd ymm20,ymm3,ymm18
  b7aa14:	62 61 fd 28 29 54 24 	vmovapd YMMWORD PTR [rsp+0x200],ymm26
  b7aa1b:	10 
  b7aa1c:	62 81 fd 28 28 d2    	vmovapd ymm18,ymm26
  b7aa22:	62 61 fd 28 28 54 24 	vmovapd ymm26,YMMWORD PTR [rsp+0x220]
  b7aa29:	11 
  b7aa2a:	62 82 e5 28 7f d2    	vpermt2pd ymm18,ymm3,ymm26
  b7aa30:	c5 7d 29 8c 24 80 00 	vmovapd YMMWORD PTR [rsp+0x80],ymm9
  b7aa37:	00 00 
  b7aa39:	62 e1 fd 28 29 74 24 	vmovapd YMMWORD PTR [rsp+0x60],ymm22
  b7aa40:	03 
  b7aa41:	62 32 e5 28 7f ce    	vpermt2pd ymm9,ymm3,ymm22
  b7aa47:	c5 7d 29 94 24 c0 00 	vmovapd YMMWORD PTR [rsp+0xc0],ymm10
  b7aa4e:	00 00 
  b7aa50:	c5 7d 29 9c 24 a0 00 	vmovapd YMMWORD PTR [rsp+0xa0],ymm11
  b7aa57:	00 00 
  b7aa59:	62 52 e5 28 7f d3    	vpermt2pd ymm10,ymm3,ymm11
  b7aa5f:	62 61 fd 28 29 1c 24 	vmovapd YMMWORD PTR [rsp],ymm27
  b7aa66:	62 11 fd 28 28 db    	vmovapd ymm11,ymm27
  b7aa6c:	62 61 fd 28 28 5c 24 	vmovapd ymm27,YMMWORD PTR [rsp+0x2a0]
  b7aa73:	15 
  b7aa74:	62 12 e5 28 7f db    	vpermt2pd ymm11,ymm3,ymm27
  b7aa7a:	c5 7d 29 b4 24 e0 00 	vmovapd YMMWORD PTR [rsp+0xe0],ymm14
  b7aa81:	00 00 
  b7aa83:	c5 7d 29 64 24 20    	vmovapd YMMWORD PTR [rsp+0x20],ymm12
  b7aa89:	62 52 e5 28 7f f4    	vpermt2pd ymm14,ymm3,ymm12
  b7aa8f:	c5 fd 29 7c 24 40    	vmovapd YMMWORD PTR [rsp+0x40],ymm7
  b7aa95:	62 92 e5 28 7f f9    	vpermt2pd ymm7,ymm3,ymm25
  b7aa9b:	49 83 fb 0c          	cmp    r11,0xc
  b7aa9f:	0f 82 ab f1 ff ff    	jb     b79c50 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0xf90>
  b7aaa5:	62 a1 fd 28 11 3c 0e 	vmovupd YMMWORD PTR [rsi+r9*1],ymm23
  b7aaac:	c4 a1 79 11 4c 0e 20 	vmovupd XMMWORD PTR [rsi+r9*1+0x20],xmm1
  b7aab3:	62 21 fd 28 11 b4 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0xf0],ymm30
  b7aaba:	f0 00 00 00 
  b7aabe:	c4 e3 7d 19 e1 01    	vextractf128 xmm1,ymm4,0x1
  b7aac4:	c4 e3 7d 19 e8 01    	vextractf128 xmm0,ymm5,0x1
  b7aaca:	c5 f9 14 c1          	vunpcklpd xmm0,xmm0,xmm1
  b7aace:	c4 a1 79 11 84 0e 10 	vmovupd XMMWORD PTR [rsi+r9*1+0x110],xmm0
  b7aad5:	01 00 00 
  b7aad8:	62 21 fd 28 11 64 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0x1e0],ymm28
  b7aadf:	0f 
  b7aae0:	c4 e3 7d 19 f0 01    	vextractf128 xmm0,ymm6,0x1
  b7aae6:	c5 fd 28 8c 24 60 02 	vmovapd ymm1,YMMWORD PTR [rsp+0x260]
  b7aaed:	00 00 
  b7aaef:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  b7aaf5:	c5 f1 14 c0          	vunpcklpd xmm0,xmm1,xmm0
  b7aaf9:	c4 a1 79 11 84 0e 00 	vmovupd XMMWORD PTR [rsi+r9*1+0x200],xmm0
  b7ab00:	02 00 00 
  b7ab03:	62 a1 fd 28 11 ac 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0x2d0],ymm21
  b7ab0a:	d0 02 00 00 
  b7ab0e:	c5 fc 28 84 24 00 01 	vmovaps ymm0,YMMWORD PTR [rsp+0x100]
  b7ab15:	00 00 
  b7ab17:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  b7ab1d:	c5 fc 28 8c 24 60 01 	vmovaps ymm1,YMMWORD PTR [rsp+0x160]
  b7ab24:	00 00 
  b7ab26:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  b7ab2c:	c5 f0 16 c0          	vmovlhps xmm0,xmm1,xmm0
  b7ab30:	c4 a1 78 11 84 0e f0 	vmovups XMMWORD PTR [rsi+r9*1+0x2f0],xmm0
  b7ab37:	02 00 00 
  b7ab3a:	62 21 fd 28 11 44 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0x3c0],ymm24
  b7ab41:	1e 
  b7ab42:	c5 fc 28 84 24 20 01 	vmovaps ymm0,YMMWORD PTR [rsp+0x120]
  b7ab49:	00 00 
  b7ab4b:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  b7ab51:	c5 fc 28 8c 24 80 01 	vmovaps ymm1,YMMWORD PTR [rsp+0x180]
  b7ab58:	00 00 
  b7ab5a:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  b7ab60:	c5 f0 16 c0          	vmovlhps xmm0,xmm1,xmm0
  b7ab64:	c4 a1 78 11 84 0e e0 	vmovups XMMWORD PTR [rsi+r9*1+0x3e0],xmm0
  b7ab6b:	03 00 00 
  b7ab6e:	c4 21 7d 11 84 0e b0 	vmovupd YMMWORD PTR [rsi+r9*1+0x4b0],ymm8
  b7ab75:	04 00 00 
  b7ab78:	c5 fd 28 84 24 a0 01 	vmovapd ymm0,YMMWORD PTR [rsp+0x1a0]
  b7ab7f:	00 00 
  b7ab81:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  b7ab87:	62 e3 7d 28 19 c9 01 	vextractf32x4 xmm1,ymm17,0x1
  b7ab8e:	c5 f1 14 c0          	vunpcklpd xmm0,xmm1,xmm0
  b7ab92:	c4 a1 79 11 84 0e d0 	vmovupd XMMWORD PTR [rsi+r9*1+0x4d0],xmm0
  b7ab99:	04 00 00 
  b7ab9c:	c4 21 7d 11 bc 0e a0 	vmovupd YMMWORD PTR [rsi+r9*1+0x5a0],ymm15
  b7aba3:	05 00 00 
  b7aba6:	c5 fd 28 84 24 c0 01 	vmovapd ymm0,YMMWORD PTR [rsp+0x1c0]
  b7abad:	00 00 
  b7abaf:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  b7abb5:	c4 63 7d 19 e9 01    	vextractf128 xmm1,ymm13,0x1
  b7abbb:	c5 f1 14 c0          	vunpcklpd xmm0,xmm1,xmm0
  b7abbf:	c4 a1 79 11 84 0e c0 	vmovupd XMMWORD PTR [rsi+r9*1+0x5c0],xmm0
  b7abc6:	05 00 00 
  b7abc9:	62 a1 fd 28 11 a4 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0x690],ymm20
  b7abd0:	90 06 00 00 
  b7abd4:	62 63 7d 28 19 f8 01 	vextractf32x4 xmm0,ymm31,0x1
  b7abdb:	c5 fd 28 8c 24 e0 01 	vmovapd ymm1,YMMWORD PTR [rsp+0x1e0]
  b7abe2:	00 00 
  b7abe4:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  b7abea:	c5 f1 14 c0          	vunpcklpd xmm0,xmm1,xmm0
  b7abee:	c4 a1 79 11 84 0e b0 	vmovupd XMMWORD PTR [rsi+r9*1+0x6b0],xmm0
  b7abf5:	06 00 00 
  b7abf8:	62 a1 fd 28 11 54 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0x780],ymm18
  b7abff:	3c 
  b7ac00:	62 63 7d 28 19 d0 01 	vextractf32x4 xmm0,ymm26,0x1
  b7ac07:	c5 fd 28 8c 24 00 02 	vmovapd ymm1,YMMWORD PTR [rsp+0x200]
  b7ac0e:	00 00 
  b7ac10:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  b7ac16:	c5 f1 14 c0          	vunpcklpd xmm0,xmm1,xmm0
  b7ac1a:	c4 a1 79 11 84 0e a0 	vmovupd XMMWORD PTR [rsi+r9*1+0x7a0],xmm0
  b7ac21:	07 00 00 
  b7ac24:	c4 21 7d 11 8c 0e 70 	vmovupd YMMWORD PTR [rsi+r9*1+0x870],ymm9
  b7ac2b:	08 00 00 
  b7ac2e:	c5 fc 28 44 24 60    	vmovaps ymm0,YMMWORD PTR [rsp+0x60]
  b7ac34:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  b7ac3a:	c5 fc 28 8c 24 80 00 	vmovaps ymm1,YMMWORD PTR [rsp+0x80]
  b7ac41:	00 00 
  b7ac43:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  b7ac49:	c5 f0 16 c0          	vmovlhps xmm0,xmm1,xmm0
  b7ac4d:	c4 a1 78 11 84 0e 90 	vmovups XMMWORD PTR [rsi+r9*1+0x890],xmm0
  b7ac54:	08 00 00 
  b7ac57:	c4 21 7d 11 94 0e 60 	vmovupd YMMWORD PTR [rsi+r9*1+0x960],ymm10
  b7ac5e:	09 00 00 
  b7ac61:	c5 fc 28 84 24 a0 00 	vmovaps ymm0,YMMWORD PTR [rsp+0xa0]
  b7ac68:	00 00 
  b7ac6a:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  b7ac70:	c5 fc 28 8c 24 c0 00 	vmovaps ymm1,YMMWORD PTR [rsp+0xc0]
  b7ac77:	00 00 
  b7ac79:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  b7ac7f:	c5 f0 16 c0          	vmovlhps xmm0,xmm1,xmm0
  b7ac83:	c4 a1 78 11 84 0e 80 	vmovups XMMWORD PTR [rsi+r9*1+0x980],xmm0
  b7ac8a:	09 00 00 
  b7ac8d:	c4 21 7d 11 9c 0e 50 	vmovupd YMMWORD PTR [rsi+r9*1+0xa50],ymm11
  b7ac94:	0a 00 00 
  b7ac97:	62 63 7d 28 19 d8 01 	vextractf32x4 xmm0,ymm27,0x1
  b7ac9e:	c5 fd 28 0c 24       	vmovapd ymm1,YMMWORD PTR [rsp]
  b7aca3:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  b7aca9:	c5 f1 14 c0          	vunpcklpd xmm0,xmm1,xmm0
  b7acad:	c4 a1 79 11 84 0e 70 	vmovupd XMMWORD PTR [rsi+r9*1+0xa70],xmm0
  b7acb4:	0a 00 00 
  b7acb7:	c4 21 7d 11 b4 0e 40 	vmovupd YMMWORD PTR [rsi+r9*1+0xb40],ymm14
  b7acbe:	0b 00 00 
  b7acc1:	c5 fc 28 44 24 20    	vmovaps ymm0,YMMWORD PTR [rsp+0x20]
  b7acc7:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  b7accd:	c5 fc 28 8c 24 e0 00 	vmovaps ymm1,YMMWORD PTR [rsp+0xe0]
  b7acd4:	00 00 
  b7acd6:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  b7acdc:	c5 f0 16 c0          	vmovlhps xmm0,xmm1,xmm0
  b7ace0:	c4 a1 78 11 84 0e 60 	vmovups XMMWORD PTR [rsi+r9*1+0xb60],xmm0
  b7ace7:	0b 00 00 
  b7acea:	c4 a1 7d 11 bc 0e 30 	vmovupd YMMWORD PTR [rsi+r9*1+0xc30],ymm7
  b7acf1:	0c 00 00 
  b7acf4:	62 63 7d 28 19 c8 01 	vextractf32x4 xmm0,ymm25,0x1
  b7acfb:	c5 fd 28 4c 24 40    	vmovapd ymm1,YMMWORD PTR [rsp+0x40]
  b7ad01:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  b7ad07:	c5 f1 14 c0          	vunpcklpd xmm0,xmm1,xmm0
  b7ad0b:	c4 a1 79 11 84 0e 50 	vmovupd XMMWORD PTR [rsi+r9*1+0xc50],xmm0
  b7ad12:	0c 00 00 
  b7ad15:	e9 f5 f0 ff ff       	jmp    b79e0f <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x114f>
  b7ad1a:	48 8d 65 f0          	lea    rsp,[rbp-0x10]
  b7ad1e:	5b                   	pop    rbx
  b7ad1f:	41 5e                	pop    r14
  b7ad21:	5d                   	pop    rbp
  b7ad22:	c5 f8 77             	vzeroupper
  b7ad25:	c3                   	ret
