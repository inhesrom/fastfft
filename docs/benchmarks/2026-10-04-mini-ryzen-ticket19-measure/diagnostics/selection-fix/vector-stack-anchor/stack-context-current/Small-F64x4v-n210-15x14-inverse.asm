
target/ticket19/selection-fix/vector-stack-anchor/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b7cd80 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle>:
  b7cd80:	55                   	push   rbp
  b7cd81:	48 89 e5             	mov    rbp,rsp
  b7cd84:	41 56                	push   r14
  b7cd86:	53                   	push   rbx
  b7cd87:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  b7cd8b:	48 81 ec c0 0f 00 00 	sub    rsp,0xfc0
  b7cd92:	48 c7 04 24 00 00 00 	mov    QWORD PTR [rsp],0x0
  b7cd99:	00 
  b7cd9a:	48 81 ec c0 0b 00 00 	sub    rsp,0xbc0
  b7cda1:	48 8d 84 24 80 04 00 	lea    rax,[rsp+0x480]
  b7cda8:	00 
  b7cda9:	48 8d 8c 24 c0 02 00 	lea    rcx,[rsp+0x2c0]
  b7cdb0:	00 
  b7cdb1:	c6 84 24 00 0b 00 00 	mov    BYTE PTR [rsp+0xb00],0x0
  b7cdb8:	00 
  b7cdb9:	4c 8d 84 24 00 0b 00 	lea    r8,[rsp+0xb00]
  b7cdc0:	00 
  b7cdc1:	4c 89 84 24 40 0b 00 	mov    QWORD PTR [rsp+0xb40],r8
  b7cdc8:	00 
  b7cdc9:	4c 8d 84 24 40 0b 00 	lea    r8,[rsp+0xb40]
  b7cdd0:	00 
  b7cdd1:	4c 8d 84 24 f0 0e 00 	lea    r8,[rsp+0xef0]
  b7cdd8:	00 
  b7cdd9:	45 31 c9             	xor    r9d,r9d
  b7cddc:	eb 1b                	jmp    b7cdf9 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x79>
  b7cdde:	66 90                	xchg   ax,ax
  b7cde0:	49 83 c1 04          	add    r9,0x4
  b7cde4:	49 81 c0 c0 03 00 00 	add    r8,0x3c0
  b7cdeb:	48 83 c7 40          	add    rdi,0x40
  b7cdef:	49 83 f9 10          	cmp    r9,0x10
  b7cdf3:	0f 84 ef 0e 00 00    	je     b7dce8 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0xf68>
  b7cdf9:	49 83 f9 0b          	cmp    r9,0xb
  b7cdfd:	0f 83 6d 02 00 00    	jae    b7d070 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x2f0>
  b7ce03:	c5 fd 10 07          	vmovupd ymm0,YMMWORD PTR [rdi]
  b7ce07:	c5 fd 10 4f 20       	vmovupd ymm1,YMMWORD PTR [rdi+0x20]
  b7ce0c:	c5 fd 10 97 e0 00 00 	vmovupd ymm2,YMMWORD PTR [rdi+0xe0]
  b7ce13:	00 
  b7ce14:	c5 fd 10 9f 00 01 00 	vmovupd ymm3,YMMWORD PTR [rdi+0x100]
  b7ce1b:	00 
  b7ce1c:	c4 e3 7d 06 e1 31    	vperm2f128 ymm4,ymm0,ymm1,0x31
  b7ce22:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  b7ce28:	c5 fd 14 cc          	vunpcklpd ymm1,ymm0,ymm4
  b7ce2c:	c5 fd 29 8c 24 c0 00 	vmovapd YMMWORD PTR [rsp+0xc0],ymm1
  b7ce33:	00 00 
  b7ce35:	c5 fd 15 c4          	vunpckhpd ymm0,ymm0,ymm4
  b7ce39:	c5 fd 29 84 24 a0 00 	vmovapd YMMWORD PTR [rsp+0xa0],ymm0
  b7ce40:	00 00 
  b7ce42:	c4 e3 6d 06 c3 31    	vperm2f128 ymm0,ymm2,ymm3,0x31
  b7ce48:	c4 e3 6d 06 cb 20    	vperm2f128 ymm1,ymm2,ymm3,0x20
  b7ce4e:	62 e1 f5 28 14 d8    	vunpcklpd ymm19,ymm1,ymm0
  b7ce54:	62 e1 f5 28 15 d0    	vunpckhpd ymm18,ymm1,ymm0
  b7ce5a:	c5 fd 10 87 c0 01 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x1c0]
  b7ce61:	00 
  b7ce62:	c5 fd 10 8f e0 01 00 	vmovupd ymm1,YMMWORD PTR [rdi+0x1e0]
  b7ce69:	00 
  b7ce6a:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  b7ce70:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  b7ce76:	62 e1 fd 28 14 f2    	vunpcklpd ymm22,ymm0,ymm2
  b7ce7c:	62 61 fd 28 15 c2    	vunpckhpd ymm24,ymm0,ymm2
  b7ce82:	c5 fd 10 87 a0 02 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x2a0]
  b7ce89:	00 
  b7ce8a:	c5 fd 10 8f c0 02 00 	vmovupd ymm1,YMMWORD PTR [rdi+0x2c0]
  b7ce91:	00 
  b7ce92:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  b7ce98:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  b7ce9e:	62 e1 fd 28 14 ea    	vunpcklpd ymm21,ymm0,ymm2
  b7cea4:	c5 fd 15 c2          	vunpckhpd ymm0,ymm0,ymm2
  b7cea8:	c5 fd 29 44 24 40    	vmovapd YMMWORD PTR [rsp+0x40],ymm0
  b7ceae:	c5 fd 10 87 80 03 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x380]
  b7ceb5:	00 
  b7ceb6:	c5 fd 10 8f a0 03 00 	vmovupd ymm1,YMMWORD PTR [rdi+0x3a0]
  b7cebd:	00 
  b7cebe:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  b7cec4:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  b7ceca:	62 61 fd 28 14 ca    	vunpcklpd ymm25,ymm0,ymm2
  b7ced0:	62 e1 fd 28 15 ca    	vunpckhpd ymm17,ymm0,ymm2
  b7ced6:	c5 fd 10 87 60 04 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x460]
  b7cedd:	00 
  b7cede:	c5 fd 10 8f 80 04 00 	vmovupd ymm1,YMMWORD PTR [rdi+0x480]
  b7cee5:	00 
  b7cee6:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  b7ceec:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  b7cef2:	62 e1 fd 28 14 e2    	vunpcklpd ymm20,ymm0,ymm2
  b7cef8:	c5 fd 15 c2          	vunpckhpd ymm0,ymm0,ymm2
  b7cefc:	c5 fd 29 44 24 20    	vmovapd YMMWORD PTR [rsp+0x20],ymm0
  b7cf02:	c5 fd 10 87 40 05 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x540]
  b7cf09:	00 
  b7cf0a:	c5 fd 10 8f 60 05 00 	vmovupd ymm1,YMMWORD PTR [rdi+0x560]
  b7cf11:	00 
  b7cf12:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  b7cf18:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  b7cf1e:	62 61 fd 28 14 d2    	vunpcklpd ymm26,ymm0,ymm2
  b7cf24:	c5 fd 15 c2          	vunpckhpd ymm0,ymm0,ymm2
  b7cf28:	c5 fd 29 04 24       	vmovapd YMMWORD PTR [rsp],ymm0
  b7cf2d:	c5 fd 10 87 20 06 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x620]
  b7cf34:	00 
  b7cf35:	c5 fd 10 8f 40 06 00 	vmovupd ymm1,YMMWORD PTR [rdi+0x640]
  b7cf3c:	00 
  b7cf3d:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  b7cf43:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  b7cf49:	62 61 fd 28 14 ea    	vunpcklpd ymm29,ymm0,ymm2
  b7cf4f:	62 e1 fd 28 15 c2    	vunpckhpd ymm16,ymm0,ymm2
  b7cf55:	c5 fd 10 87 00 07 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x700]
  b7cf5c:	00 
  b7cf5d:	c5 fd 10 8f 20 07 00 	vmovupd ymm1,YMMWORD PTR [rdi+0x720]
  b7cf64:	00 
  b7cf65:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  b7cf6b:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  b7cf71:	c5 fd 14 f2          	vunpcklpd ymm6,ymm0,ymm2
  b7cf75:	c5 7d 15 e2          	vunpckhpd ymm12,ymm0,ymm2
  b7cf79:	c5 fd 10 87 e0 07 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x7e0]
  b7cf80:	00 
  b7cf81:	c5 fd 10 8f 00 08 00 	vmovupd ymm1,YMMWORD PTR [rdi+0x800]
  b7cf88:	00 
  b7cf89:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  b7cf8f:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  b7cf95:	c5 7d 14 f2          	vunpcklpd ymm14,ymm0,ymm2
  b7cf99:	62 e1 fd 28 15 fa    	vunpckhpd ymm23,ymm0,ymm2
  b7cf9f:	c5 fd 10 87 c0 08 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x8c0]
  b7cfa6:	00 
  b7cfa7:	c5 fd 10 8f e0 08 00 	vmovupd ymm1,YMMWORD PTR [rdi+0x8e0]
  b7cfae:	00 
  b7cfaf:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  b7cfb5:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  b7cfbb:	c5 fd 14 ca          	vunpcklpd ymm1,ymm0,ymm2
  b7cfbf:	c5 fd 29 8c 24 80 00 	vmovapd YMMWORD PTR [rsp+0x80],ymm1
  b7cfc6:	00 00 
  b7cfc8:	c5 fd 15 c2          	vunpckhpd ymm0,ymm0,ymm2
  b7cfcc:	c5 fd 29 44 24 60    	vmovapd YMMWORD PTR [rsp+0x60],ymm0
  b7cfd2:	c5 fd 10 87 a0 09 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x9a0]
  b7cfd9:	00 
  b7cfda:	c5 fd 10 8f c0 09 00 	vmovupd ymm1,YMMWORD PTR [rdi+0x9c0]
  b7cfe1:	00 
  b7cfe2:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  b7cfe8:	c4 e3 7d 06 c9 20    	vperm2f128 ymm1,ymm0,ymm1,0x20
  b7cfee:	c5 f5 14 c2          	vunpcklpd ymm0,ymm1,ymm2
  b7cff2:	c5 f5 15 fa          	vunpckhpd ymm7,ymm1,ymm2
  b7cff6:	c5 fd 10 8f 80 0a 00 	vmovupd ymm1,YMMWORD PTR [rdi+0xa80]
  b7cffd:	00 
  b7cffe:	c5 fd 10 97 a0 0a 00 	vmovupd ymm2,YMMWORD PTR [rdi+0xaa0]
  b7d005:	00 
  b7d006:	c4 e3 75 06 da 31    	vperm2f128 ymm3,ymm1,ymm2,0x31
  b7d00c:	c4 e3 75 06 ca 20    	vperm2f128 ymm1,ymm1,ymm2,0x20
  b7d012:	c5 f5 14 e3          	vunpcklpd ymm4,ymm1,ymm3
  b7d016:	62 61 f5 28 15 e3    	vunpckhpd ymm28,ymm1,ymm3
  b7d01c:	c5 fd 10 8f 60 0b 00 	vmovupd ymm1,YMMWORD PTR [rdi+0xb60]
  b7d023:	00 
  b7d024:	c5 fd 10 97 80 0b 00 	vmovupd ymm2,YMMWORD PTR [rdi+0xb80]
  b7d02b:	00 
  b7d02c:	c4 e3 75 06 da 31    	vperm2f128 ymm3,ymm1,ymm2,0x31
  b7d032:	c4 e3 75 06 ca 20    	vperm2f128 ymm1,ymm1,ymm2,0x20
  b7d038:	c5 f5 14 d3          	vunpcklpd ymm2,ymm1,ymm3
  b7d03c:	c5 f5 15 db          	vunpckhpd ymm3,ymm1,ymm3
  b7d040:	c5 fd 10 8f 40 0c 00 	vmovupd ymm1,YMMWORD PTR [rdi+0xc40]
  b7d047:	00 
  b7d048:	c5 fd 10 af 60 0c 00 	vmovupd ymm5,YMMWORD PTR [rdi+0xc60]
  b7d04f:	00 
  b7d050:	c4 63 75 06 c5 31    	vperm2f128 ymm8,ymm1,ymm5,0x31
  b7d056:	c4 e3 75 06 cd 20    	vperm2f128 ymm1,ymm1,ymm5,0x20
  b7d05c:	c4 41 75 14 d8       	vunpcklpd ymm11,ymm1,ymm8
  b7d061:	c4 c1 75 15 e8       	vunpckhpd ymm5,ymm1,ymm8
  b7d066:	e9 16 02 00 00       	jmp    b7d281 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x501>
  b7d06b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  b7d070:	c5 fd 10 07          	vmovupd ymm0,YMMWORD PTR [rdi]
  b7d074:	c5 fd 10 8f e0 00 00 	vmovupd ymm1,YMMWORD PTR [rdi+0xe0]
  b7d07b:	00 
  b7d07c:	c5 fd 10 97 c0 01 00 	vmovupd ymm2,YMMWORD PTR [rdi+0x1c0]
  b7d083:	00 
  b7d084:	c4 41 39 57 c0       	vxorpd xmm8,xmm8,xmm8
  b7d089:	c4 c3 7d 0d d8 0a    	vblendpd ymm3,ymm0,ymm8,0xa
  b7d08f:	c4 e3 fd 01 db f8    	vpermpd ymm3,ymm3,0xf8
  b7d095:	c5 fd 29 9c 24 c0 00 	vmovapd YMMWORD PTR [rsp+0xc0],ymm3
  b7d09c:	00 00 
  b7d09e:	c4 c1 7d 15 c0       	vunpckhpd ymm0,ymm0,ymm8
  b7d0a3:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  b7d0a9:	c5 fd 29 84 24 a0 00 	vmovapd YMMWORD PTR [rsp+0xa0],ymm0
  b7d0b0:	00 00 
  b7d0b2:	c4 c3 75 0d c0 0a    	vblendpd ymm0,ymm1,ymm8,0xa
  b7d0b8:	62 e3 fd 28 01 d8 f8 	vpermpd ymm19,ymm0,0xf8
  b7d0bf:	c4 c1 75 15 c0       	vunpckhpd ymm0,ymm1,ymm8
  b7d0c4:	62 e3 fd 28 01 d0 d8 	vpermpd ymm18,ymm0,0xd8
  b7d0cb:	c4 c3 6d 0d c0 0a    	vblendpd ymm0,ymm2,ymm8,0xa
  b7d0d1:	62 e3 fd 28 01 f0 f8 	vpermpd ymm22,ymm0,0xf8
  b7d0d8:	c4 c1 6d 15 c0       	vunpckhpd ymm0,ymm2,ymm8
  b7d0dd:	62 63 fd 28 01 c0 d8 	vpermpd ymm24,ymm0,0xd8
  b7d0e4:	c5 fd 10 87 a0 02 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x2a0]
  b7d0eb:	00 
  b7d0ec:	c4 c3 7d 0d c8 0a    	vblendpd ymm1,ymm0,ymm8,0xa
  b7d0f2:	62 e3 fd 28 01 e9 f8 	vpermpd ymm21,ymm1,0xf8
  b7d0f9:	c4 c1 7d 15 c0       	vunpckhpd ymm0,ymm0,ymm8
  b7d0fe:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  b7d104:	c5 fd 29 44 24 40    	vmovapd YMMWORD PTR [rsp+0x40],ymm0
  b7d10a:	c5 fd 10 87 80 03 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x380]
  b7d111:	00 
  b7d112:	c4 c3 7d 0d c8 0a    	vblendpd ymm1,ymm0,ymm8,0xa
  b7d118:	62 63 fd 28 01 c9 f8 	vpermpd ymm25,ymm1,0xf8
  b7d11f:	c4 c1 7d 15 c0       	vunpckhpd ymm0,ymm0,ymm8
  b7d124:	62 e3 fd 28 01 c8 d8 	vpermpd ymm17,ymm0,0xd8
  b7d12b:	c5 fd 10 87 60 04 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x460]
  b7d132:	00 
  b7d133:	c4 c3 7d 0d c8 0a    	vblendpd ymm1,ymm0,ymm8,0xa
  b7d139:	62 e3 fd 28 01 e1 f8 	vpermpd ymm20,ymm1,0xf8
  b7d140:	c4 c1 7d 15 c0       	vunpckhpd ymm0,ymm0,ymm8
  b7d145:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  b7d14b:	c5 fd 29 44 24 20    	vmovapd YMMWORD PTR [rsp+0x20],ymm0
  b7d151:	c5 fd 10 87 40 05 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x540]
  b7d158:	00 
  b7d159:	c4 c3 7d 0d c8 0a    	vblendpd ymm1,ymm0,ymm8,0xa
  b7d15f:	62 63 fd 28 01 d1 f8 	vpermpd ymm26,ymm1,0xf8
  b7d166:	c4 c1 7d 15 c0       	vunpckhpd ymm0,ymm0,ymm8
  b7d16b:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  b7d171:	c5 fd 29 04 24       	vmovapd YMMWORD PTR [rsp],ymm0
  b7d176:	c5 fd 10 87 20 06 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x620]
  b7d17d:	00 
  b7d17e:	c4 c3 7d 0d c8 0a    	vblendpd ymm1,ymm0,ymm8,0xa
  b7d184:	62 63 fd 28 01 e9 f8 	vpermpd ymm29,ymm1,0xf8
  b7d18b:	c4 c1 7d 15 c0       	vunpckhpd ymm0,ymm0,ymm8
  b7d190:	62 e3 fd 28 01 c0 d8 	vpermpd ymm16,ymm0,0xd8
  b7d197:	c5 fd 10 87 00 07 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x700]
  b7d19e:	00 
  b7d19f:	c4 c3 7d 0d c8 0a    	vblendpd ymm1,ymm0,ymm8,0xa
  b7d1a5:	c4 e3 fd 01 f1 f8    	vpermpd ymm6,ymm1,0xf8
  b7d1ab:	c4 c1 7d 15 c0       	vunpckhpd ymm0,ymm0,ymm8
  b7d1b0:	c4 63 fd 01 e0 d8    	vpermpd ymm12,ymm0,0xd8
  b7d1b6:	c5 fd 10 87 e0 07 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x7e0]
  b7d1bd:	00 
  b7d1be:	c4 c3 7d 0d c8 0a    	vblendpd ymm1,ymm0,ymm8,0xa
  b7d1c4:	c4 63 fd 01 f1 f8    	vpermpd ymm14,ymm1,0xf8
  b7d1ca:	c4 c1 7d 15 c0       	vunpckhpd ymm0,ymm0,ymm8
  b7d1cf:	62 e3 fd 28 01 f8 d8 	vpermpd ymm23,ymm0,0xd8
  b7d1d6:	c5 fd 10 87 c0 08 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x8c0]
  b7d1dd:	00 
  b7d1de:	c4 c3 7d 0d c8 0a    	vblendpd ymm1,ymm0,ymm8,0xa
  b7d1e4:	c4 e3 fd 01 c9 f8    	vpermpd ymm1,ymm1,0xf8
  b7d1ea:	c5 fd 29 8c 24 80 00 	vmovapd YMMWORD PTR [rsp+0x80],ymm1
  b7d1f1:	00 00 
  b7d1f3:	c4 c1 7d 15 c0       	vunpckhpd ymm0,ymm0,ymm8
  b7d1f8:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  b7d1fe:	c5 fd 29 44 24 60    	vmovapd YMMWORD PTR [rsp+0x60],ymm0
  b7d204:	c5 fd 10 8f a0 09 00 	vmovupd ymm1,YMMWORD PTR [rdi+0x9a0]
  b7d20b:	00 
  b7d20c:	c4 c3 75 0d c0 0a    	vblendpd ymm0,ymm1,ymm8,0xa
  b7d212:	c4 e3 fd 01 c0 f8    	vpermpd ymm0,ymm0,0xf8
  b7d218:	c4 c1 75 15 c8       	vunpckhpd ymm1,ymm1,ymm8
  b7d21d:	c4 e3 fd 01 f9 d8    	vpermpd ymm7,ymm1,0xd8
  b7d223:	c5 fd 10 8f 80 0a 00 	vmovupd ymm1,YMMWORD PTR [rdi+0xa80]
  b7d22a:	00 
  b7d22b:	c4 c3 75 0d d0 0a    	vblendpd ymm2,ymm1,ymm8,0xa
  b7d231:	c4 e3 fd 01 e2 f8    	vpermpd ymm4,ymm2,0xf8
  b7d237:	c4 c1 75 15 c8       	vunpckhpd ymm1,ymm1,ymm8
  b7d23c:	62 63 fd 28 01 e1 d8 	vpermpd ymm28,ymm1,0xd8
  b7d243:	c5 fd 10 8f 60 0b 00 	vmovupd ymm1,YMMWORD PTR [rdi+0xb60]
  b7d24a:	00 
  b7d24b:	c4 c3 75 0d d0 0a    	vblendpd ymm2,ymm1,ymm8,0xa
  b7d251:	c4 e3 fd 01 d2 f8    	vpermpd ymm2,ymm2,0xf8
  b7d257:	c4 c1 75 15 c8       	vunpckhpd ymm1,ymm1,ymm8
  b7d25c:	c4 e3 fd 01 d9 d8    	vpermpd ymm3,ymm1,0xd8
  b7d262:	c5 fd 10 8f 40 0c 00 	vmovupd ymm1,YMMWORD PTR [rdi+0xc40]
  b7d269:	00 
  b7d26a:	c4 c3 75 0d e8 0a    	vblendpd ymm5,ymm1,ymm8,0xa
  b7d270:	c4 63 fd 01 dd f8    	vpermpd ymm11,ymm5,0xf8
  b7d276:	c4 c1 75 15 c8       	vunpckhpd ymm1,ymm1,ymm8
  b7d27b:	c4 e3 fd 01 e9 d8    	vpermpd ymm5,ymm1,0xd8
  b7d281:	62 01 9d 28 58 f0    	vaddpd ymm30,ymm12,ymm24
  b7d287:	62 b1 cd 28 58 ce    	vaddpd ymm1,ymm6,ymm22
  b7d28d:	62 31 cd 28 5c ee    	vsubpd ymm13,ymm6,ymm22
  b7d293:	c5 25 58 c8          	vaddpd ymm9,ymm11,ymm0
  b7d297:	c4 41 7d 5c d3       	vsubpd ymm10,ymm0,ymm11
  b7d29c:	62 91 ed 28 58 c5    	vaddpd ymm0,ymm2,ymm29
  b7d2a2:	62 11 ed 28 5c c5    	vsubpd ymm8,ymm2,ymm29
  b7d2a8:	62 11 e5 20 58 d9    	vaddpd ymm11,ymm19,ymm25
  b7d2ae:	62 91 e5 20 5c d1    	vsubpd ymm2,ymm19,ymm25
  b7d2b4:	62 61 d5 20 58 cc    	vaddpd ymm25,ymm21,ymm4
  b7d2ba:	62 f1 d5 20 5c e4    	vsubpd ymm4,ymm21,ymm4
  b7d2c0:	c5 fd 29 a4 24 20 01 	vmovapd YMMWORD PTR [rsp+0x120],ymm4
  b7d2c7:	00 00 
  b7d2c9:	62 51 ad 20 58 fe    	vaddpd ymm15,ymm26,ymm14
  b7d2cf:	62 d1 ad 20 5c e6    	vsubpd ymm4,ymm26,ymm14
  b7d2d5:	c5 fd 29 a4 24 40 02 	vmovapd YMMWORD PTR [rsp+0x240],ymm4
  b7d2dc:	00 00 
  b7d2de:	62 61 c5 28 58 dd    	vaddpd ymm27,ymm7,ymm5
  b7d2e4:	62 81 9d 28 5c d8    	vsubpd ymm19,ymm12,ymm24
  b7d2ea:	62 e1 fd 28 29 5c 24 	vmovapd YMMWORD PTR [rsp+0x220],ymm19
  b7d2f1:	11 
  b7d2f2:	62 21 e5 28 58 e8    	vaddpd ymm29,ymm3,ymm16
  b7d2f8:	c5 c5 5c fd          	vsubpd ymm7,ymm7,ymm5
  b7d2fc:	62 21 ed 20 58 f9    	vaddpd ymm31,ymm18,ymm17
  b7d302:	62 b1 fd 28 28 ea    	vmovapd ymm5,ymm18
  b7d308:	62 a1 e5 28 5c e8    	vsubpd ymm21,ymm3,ymm16
  b7d30e:	62 e1 fd 28 29 6c 24 	vmovapd YMMWORD PTR [rsp+0x140],ymm21
  b7d315:	0a 
  b7d316:	62 e2 fd 28 19 15 38 	vbroadcastsd ymm18,QWORD PTR [rip+0xffffffffff4f7738]        # 74a58 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f08>
  b7d31d:	77 4f ff 
  b7d320:	62 b1 fd 28 28 f2    	vmovapd ymm6,ymm18
  b7d326:	62 b2 f5 28 a8 f4    	vfmadd213pd ymm6,ymm1,ymm20
  b7d32c:	c4 62 7d 19 35 e3 7c 	vbroadcastsd ymm14,QWORD PTR [rip+0xffffffffff4f7ce3]        # 75018 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x24c8>
  b7d333:	4f ff 
  b7d335:	c4 c2 b5 bc f6       	vfnmadd231pd ymm6,ymm9,ymm14
  b7d33a:	62 31 d5 28 5c e1    	vsubpd ymm12,ymm5,ymm17
  b7d340:	62 e2 fd 28 19 05 7e 	vbroadcastsd ymm16,QWORD PTR [rip+0xffffffffff4f747e]        # 747c8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c78>
  b7d347:	74 4f ff 
  b7d34a:	62 b1 c5 28 59 e8    	vmulpd ymm5,ymm7,ymm16
  b7d350:	62 b1 fd 28 28 e4    	vmovapd ymm4,ymm20
  b7d356:	62 e2 fd 28 19 25 70 	vbroadcastsd ymm20,QWORD PTR [rip+0xffffffffff4f7870]        # 74bd0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2080>
  b7d35d:	78 4f ff 
  b7d360:	62 b2 e5 20 b8 ec    	vfmadd231pd ymm5,ymm19,ymm20
  b7d366:	62 a1 fd 28 28 ca    	vmovapd ymm17,ymm18
  b7d36c:	c5 fd 28 9c 24 80 00 	vmovapd ymm3,YMMWORD PTR [rsp+0x80]
  b7d373:	00 00 
  b7d375:	62 e2 fd 28 a8 cb    	vfmadd213pd ymm17,ymm0,ymm3
  b7d37b:	62 c2 a5 28 bc ce    	vfnmadd231pd ymm17,ymm11,ymm14
  b7d381:	62 a1 9d 28 59 d8    	vmulpd ymm19,ymm12,ymm16
  b7d387:	62 a2 d5 20 b8 dc    	vfmadd231pd ymm19,ymm21,ymm20
  b7d38d:	c5 fd 29 b4 24 00 02 	vmovapd YMMWORD PTR [rsp+0x200],ymm6
  b7d394:	00 00 
  b7d396:	c5 fd 29 ac 24 e0 01 	vmovapd YMMWORD PTR [rsp+0x1e0],ymm5
  b7d39d:	00 00 
  b7d39f:	c5 cd 5c ed          	vsubpd ymm5,ymm6,ymm5
  b7d3a3:	62 e1 fd 28 29 4c 24 	vmovapd YMMWORD PTR [rsp+0x1c0],ymm17
  b7d3aa:	0e 
  b7d3ab:	62 e1 fd 28 29 5c 24 	vmovapd YMMWORD PTR [rsp+0x1a0],ymm19
  b7d3b2:	0d 
  b7d3b3:	62 b1 f5 20 5c f3    	vsubpd ymm6,ymm17,ymm19
  b7d3b9:	62 e1 d5 28 5c ce    	vsubpd ymm17,ymm5,ymm6
  b7d3bf:	62 e1 fd 28 29 4c 24 	vmovapd YMMWORD PTR [rsp+0x100],ymm17
  b7d3c6:	08 
  b7d3c7:	c5 d5 58 ee          	vaddpd ymm5,ymm5,ymm6
  b7d3cb:	c5 fd 29 ac 24 e0 00 	vmovapd YMMWORD PTR [rsp+0xe0],ymm5
  b7d3d2:	00 00 
  b7d3d4:	c5 fd 28 74 24 40    	vmovapd ymm6,YMMWORD PTR [rsp+0x40]
  b7d3da:	62 91 cd 28 58 ec    	vaddpd ymm5,ymm6,ymm28
  b7d3e0:	62 91 cd 28 5c f4    	vsubpd ymm6,ymm6,ymm28
  b7d3e6:	62 e1 fd 28 28 1c 24 	vmovapd ymm19,YMMWORD PTR [rsp]
  b7d3ed:	62 a1 e5 20 58 cf    	vaddpd ymm17,ymm19,ymm23
  b7d3f3:	62 21 e5 20 5c d7    	vsubpd ymm26,ymm19,ymm23
  b7d3f9:	62 21 fd 28 28 e2    	vmovapd ymm28,ymm18
  b7d3ff:	62 e1 fd 28 28 5c 24 	vmovapd ymm19,YMMWORD PTR [rsp+0x20]
  b7d406:	01 
  b7d407:	62 22 8d 20 a8 e3    	vfmadd213pd ymm28,ymm30,ymm19
  b7d40d:	62 42 a5 20 bc e6    	vfnmadd231pd ymm28,ymm27,ymm14
  b7d413:	62 a1 ad 28 59 e8    	vmulpd ymm21,ymm10,ymm16
  b7d419:	62 a2 95 28 b8 ec    	vfmadd231pd ymm21,ymm13,ymm20
  b7d41f:	62 a1 fd 28 28 f2    	vmovapd ymm22,ymm18
  b7d425:	62 e1 fd 28 28 7c 24 	vmovapd ymm23,YMMWORD PTR [rsp+0x60]
  b7d42c:	03 
  b7d42d:	62 a2 95 20 a8 f7    	vfmadd213pd ymm22,ymm29,ymm23
  b7d433:	62 c2 85 20 bc f6    	vfnmadd231pd ymm22,ymm31,ymm14
  b7d439:	62 21 ed 28 59 c0    	vmulpd ymm24,ymm2,ymm16
  b7d43f:	62 22 bd 28 b8 c4    	vfmadd231pd ymm24,ymm8,ymm20
  b7d445:	62 e1 fd 28 29 6c 24 	vmovapd YMMWORD PTR [rsp+0x180],ymm21
  b7d44c:	0c 
  b7d44d:	62 61 fd 28 29 64 24 	vmovapd YMMWORD PTR [rsp+0x260],ymm28
  b7d454:	13 
  b7d455:	62 21 9d 20 58 e5    	vaddpd ymm28,ymm28,ymm21
  b7d45b:	62 61 fd 28 29 44 24 	vmovapd YMMWORD PTR [rsp+0x160],ymm24
  b7d462:	0b 
  b7d463:	62 81 cd 20 58 e8    	vaddpd ymm21,ymm22,ymm24
  b7d469:	62 21 9d 20 58 c5    	vaddpd ymm24,ymm28,ymm21
  b7d46f:	62 61 fd 28 29 44 24 	vmovapd YMMWORD PTR [rsp+0x40],ymm24
  b7d476:	02 
  b7d477:	62 21 9d 20 5c e5    	vsubpd ymm28,ymm28,ymm21
  b7d47d:	62 81 e5 20 58 ee    	vaddpd ymm21,ymm19,ymm30
  b7d483:	62 22 8d 28 ac f3    	vfnmadd213pd ymm30,ymm14,ymm19
  b7d489:	62 81 d5 20 58 db    	vaddpd ymm19,ymm21,ymm27
  b7d48f:	62 e1 fd 28 29 5c 24 	vmovapd YMMWORD PTR [rsp+0x20],ymm19
  b7d496:	01 
  b7d497:	62 02 ed 20 b8 f3    	vfmadd231pd ymm30,ymm18,ymm27
  b7d49d:	62 21 95 28 59 d8    	vmulpd ymm27,ymm13,ymm16
  b7d4a3:	62 42 dd 20 bc da    	vfnmadd231pd ymm27,ymm20,ymm10
  b7d4a9:	62 11 c5 20 58 d5    	vaddpd ymm10,ymm23,ymm29
  b7d4af:	62 22 8d 28 ac ef    	vfnmadd213pd ymm29,ymm14,ymm23
  b7d4b5:	62 11 ad 28 58 d7    	vaddpd ymm10,ymm10,ymm31
  b7d4bb:	c5 7d 29 14 24       	vmovapd YMMWORD PTR [rsp],ymm10
  b7d4c0:	62 02 ed 20 b8 ef    	vfmadd231pd ymm29,ymm18,ymm31
  b7d4c6:	62 31 bd 28 59 c0    	vmulpd ymm8,ymm8,ymm16
  b7d4cc:	62 72 dd 20 bc c2    	vfnmadd231pd ymm8,ymm20,ymm2
  b7d4d2:	62 21 fd 28 28 fa    	vmovapd ymm31,ymm18
  b7d4d8:	c5 7d 28 94 24 a0 00 	vmovapd ymm10,YMMWORD PTR [rsp+0xa0]
  b7d4df:	00 00 
  b7d4e1:	62 42 d5 28 a8 fa    	vfmadd213pd ymm31,ymm5,ymm10
  b7d4e7:	c5 ad 58 d5          	vaddpd ymm2,ymm10,ymm5
  b7d4eb:	c4 c2 8d ac ea       	vfnmadd213pd ymm5,ymm14,ymm10
  b7d4f0:	62 b1 ed 28 58 d1    	vaddpd ymm2,ymm2,ymm17
  b7d4f6:	c5 fd 29 94 24 60 06 	vmovapd YMMWORD PTR [rsp+0x660],ymm2
  b7d4fd:	00 00 
  b7d4ff:	62 42 f5 20 bc fe    	vfnmadd231pd ymm31,ymm17,ymm14
  b7d505:	62 b2 ed 20 b8 e9    	vfmadd231pd ymm5,ymm18,ymm17
  b7d50b:	c5 7d 28 94 24 40 02 	vmovapd ymm10,YMMWORD PTR [rsp+0x240]
  b7d512:	00 00 
  b7d514:	62 21 ad 28 59 c0    	vmulpd ymm24,ymm10,ymm16
  b7d51a:	c5 fd 28 94 24 20 01 	vmovapd ymm2,YMMWORD PTR [rsp+0x120]
  b7d521:	00 00 
  b7d523:	62 22 ed 28 b8 c4    	vfmadd231pd ymm24,ymm2,ymm20
  b7d529:	62 b1 ed 28 59 d0    	vmulpd ymm2,ymm2,ymm16
  b7d52f:	62 d2 dd 20 bc d2    	vfnmadd231pd ymm2,ymm20,ymm10
  b7d535:	c5 5d 58 e9          	vaddpd ymm13,ymm4,ymm1
  b7d539:	c4 e2 8d ac cc       	vfnmadd213pd ymm1,ymm14,ymm4
  b7d53e:	c4 41 15 58 d1       	vaddpd ymm10,ymm13,ymm9
  b7d543:	62 d2 ed 20 b8 c9    	vfmadd231pd ymm1,ymm18,ymm9
  b7d549:	62 71 fd 20 59 4c 24 	vmulpd ymm9,ymm16,YMMWORD PTR [rsp+0x220]
  b7d550:	11 
  b7d551:	62 72 dd 20 bc cf    	vfnmadd231pd ymm9,ymm20,ymm7
  b7d557:	c5 e5 58 f8          	vaddpd ymm7,ymm3,ymm0
  b7d55b:	c4 e2 8d ac c3       	vfnmadd213pd ymm0,ymm14,ymm3
  b7d560:	62 c1 c5 28 58 fb    	vaddpd ymm23,ymm7,ymm11
  b7d566:	62 d2 ed 20 b8 c3    	vfmadd231pd ymm0,ymm18,ymm11
  b7d56c:	62 f1 fd 20 59 5c 24 	vmulpd ymm3,ymm16,YMMWORD PTR [rsp+0x140]
  b7d573:	0a 
  b7d574:	62 d2 dd 20 bc dc    	vfnmadd231pd ymm3,ymm20,ymm12
  b7d57a:	c4 c1 75 5c f9       	vsubpd ymm7,ymm1,ymm9
  b7d57f:	c5 7d 5c e3          	vsubpd ymm12,ymm0,ymm3
  b7d583:	c4 c1 45 5c e4       	vsubpd ymm4,ymm7,ymm12
  b7d588:	c5 fd 29 a4 24 40 01 	vmovapd YMMWORD PTR [rsp+0x140],ymm4
  b7d58f:	00 00 
  b7d591:	62 c1 c5 28 58 cc    	vaddpd ymm17,ymm7,ymm12
  b7d597:	62 31 fd 28 28 e2    	vmovapd ymm12,ymm18
  b7d59d:	c5 7d 28 ac 24 c0 00 	vmovapd ymm13,YMMWORD PTR [rsp+0xc0]
  b7d5a4:	00 00 
  b7d5a6:	62 52 b5 20 a8 e5    	vfmadd213pd ymm12,ymm25,ymm13
  b7d5ac:	62 91 95 28 58 f9    	vaddpd ymm7,ymm13,ymm25
  b7d5b2:	62 42 8d 28 ac cd    	vfnmadd213pd ymm25,ymm14,ymm13
  b7d5b8:	c5 05 58 df          	vaddpd ymm11,ymm15,ymm7
  b7d5bc:	c4 42 85 bc e6       	vfnmadd231pd ymm12,ymm15,ymm14
  b7d5c1:	62 42 ed 20 b8 cf    	vfmadd231pd ymm25,ymm18,ymm15
  b7d5c7:	62 31 ad 20 59 f8    	vmulpd ymm15,ymm26,ymm16
  b7d5cd:	62 32 cd 28 b8 fc    	vfmadd231pd ymm15,ymm6,ymm20
  b7d5d3:	62 b1 cd 28 59 e0    	vmulpd ymm4,ymm6,ymm16
  b7d5d9:	62 92 dd 20 bc e2    	vfnmadd231pd ymm4,ymm20,ymm26
  b7d5df:	62 91 8d 20 58 fb    	vaddpd ymm7,ymm30,ymm27
  b7d5e5:	62 51 95 20 58 e8    	vaddpd ymm13,ymm29,ymm8
  b7d5eb:	c5 95 58 f7          	vaddpd ymm6,ymm13,ymm7
  b7d5ef:	c4 41 45 5c ed       	vsubpd ymm13,ymm7,ymm13
  b7d5f4:	c5 d5 58 fa          	vaddpd ymm7,ymm5,ymm2
  b7d5f8:	62 e1 d5 28 5c da    	vsubpd ymm19,ymm5,ymm2
  b7d5fe:	62 11 8d 20 5c f3    	vsubpd ymm14,ymm30,ymm27
  b7d604:	62 c1 95 20 5c c0    	vsubpd ymm16,ymm29,ymm8
  b7d60a:	62 f1 b5 20 5c d4    	vsubpd ymm2,ymm25,ymm4
  b7d610:	62 81 dd 28 58 d1    	vaddpd ymm18,ymm4,ymm25
  b7d616:	c5 35 58 c9          	vaddpd ymm9,ymm9,ymm1
  b7d61a:	62 e1 e5 28 58 e8    	vaddpd ymm21,ymm3,ymm0
  b7d620:	c4 c1 1d 5c c7       	vsubpd ymm0,ymm12,ymm15
  b7d625:	62 62 fd 28 19 1d 69 	vbroadcastsd ymm27,QWORD PTR [rip+0xffffffffff4f7469]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  b7d62c:	74 4f ff 
  b7d62f:	62 91 fd 28 28 cb    	vmovapd ymm1,ymm27
  b7d635:	c5 fd 29 84 24 a0 06 	vmovapd YMMWORD PTR [rsp+0x6a0],ymm0
  b7d63c:	00 00 
  b7d63e:	c4 e2 fd 9c 8c 24 e0 	vfnmadd132pd ymm1,ymm0,YMMWORD PTR [rsp+0xe0]
  b7d645:	00 00 00 
  b7d648:	c4 e2 7d 19 05 cf 75 	vbroadcastsd ymm0,QWORD PTR [rip+0xffffffffff4f75cf]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  b7d64f:	4f ff 
  b7d651:	62 f1 9d 20 59 e0    	vmulpd ymm4,ymm28,ymm0
  b7d657:	62 91 fd 28 28 db    	vmovapd ymm3,ymm27
  b7d65d:	62 e1 fd 28 29 4c 24 	vmovapd YMMWORD PTR [rsp+0xc0],ymm17
  b7d664:	06 
  b7d665:	c5 fd 29 54 24 60    	vmovapd YMMWORD PTR [rsp+0x60],ymm2
  b7d66b:	62 f2 f5 20 ac da    	vfnmadd213pd ymm3,ymm17,ymm2
  b7d671:	c5 95 59 d0          	vmulpd ymm2,ymm13,ymm0
  b7d675:	c5 7d 29 94 24 00 07 	vmovapd YMMWORD PTR [rsp+0x700],ymm10
  b7d67c:	00 00 
  b7d67e:	62 e1 fd 28 29 7c 24 	vmovapd YMMWORD PTR [rsp+0x6c0],ymm23
  b7d685:	36 
  b7d686:	62 21 ad 28 58 e7    	vaddpd ymm28,ymm10,ymm23
  b7d68c:	62 c1 fd 28 28 fb    	vmovapd ymm23,ymm11
  b7d692:	62 11 a5 28 58 c4    	vaddpd ymm8,ymm11,ymm28
  b7d698:	c5 fd 29 8c 24 40 02 	vmovapd YMMWORD PTR [rsp+0x240],ymm1
  b7d69f:	00 00 
  b7d6a1:	c5 fd 29 a4 24 a0 02 	vmovapd YMMWORD PTR [rsp+0x2a0],ymm4
  b7d6a8:	00 00 
  b7d6aa:	62 61 f5 28 5c cc    	vsubpd ymm25,ymm1,ymm4
  b7d6b0:	c5 fd 29 94 24 80 06 	vmovapd YMMWORD PTR [rsp+0x680],ymm2
  b7d6b7:	00 00 
  b7d6b9:	c5 e5 58 ea          	vaddpd ymm5,ymm3,ymm2
  b7d6bd:	c5 7d 29 8c 24 40 07 	vmovapd YMMWORD PTR [rsp+0x740],ymm9
  b7d6c4:	00 00 
  b7d6c6:	62 e1 fd 28 29 6c 24 	vmovapd YMMWORD PTR [rsp+0x720],ymm21
  b7d6cd:	39 
  b7d6ce:	62 b1 b5 28 58 cd    	vaddpd ymm1,ymm9,ymm21
  b7d6d4:	c5 fd 29 8c 24 20 01 	vmovapd YMMWORD PTR [rsp+0x120],ymm1
  b7d6db:	00 00 
  b7d6dd:	62 e1 fd 28 29 54 24 	vmovapd YMMWORD PTR [rsp+0x760],ymm18
  b7d6e4:	3b 
  b7d6e5:	62 61 ed 20 58 e9    	vaddpd ymm29,ymm18,ymm1
  b7d6eb:	c4 e3 3d 18 cd 01    	vinsertf128 ymm1,ymm8,xmm5,0x1
  b7d6f1:	62 93 35 20 18 d5 01 	vinsertf32x4 ymm2,ymm25,xmm29,0x1
  b7d6f8:	62 e1 f5 28 15 ca    	vunpckhpd ymm17,ymm1,ymm2
  b7d6fe:	62 e1 f5 28 14 ea    	vunpcklpd ymm21,ymm1,ymm2
  b7d704:	62 81 85 20 58 d0    	vaddpd ymm18,ymm31,ymm24
  b7d70a:	62 01 fd 28 28 f3    	vmovapd ymm30,ymm27
  b7d710:	62 62 ed 20 9c 74 24 	vfnmadd132pd ymm30,ymm18,YMMWORD PTR [rsp+0x40]
  b7d717:	02 
  b7d718:	c5 fd 59 94 24 00 01 	vmulpd ymm2,ymm0,YMMWORD PTR [rsp+0x100]
  b7d71f:	00 00 
  b7d721:	c5 fd 29 b4 24 a0 00 	vmovapd YMMWORD PTR [rsp+0xa0],ymm6
  b7d728:	00 00 
  b7d72a:	c5 fd 29 bc 24 80 00 	vmovapd YMMWORD PTR [rsp+0x80],ymm7
  b7d731:	00 00 
  b7d733:	62 62 cd 28 ac df    	vfnmadd213pd ymm27,ymm6,ymm7
  b7d739:	c5 fd 59 8c 24 40 01 	vmulpd ymm1,ymm0,YMMWORD PTR [rsp+0x140]
  b7d740:	00 00 
  b7d742:	c5 fd 28 44 24 20    	vmovapd ymm0,YMMWORD PTR [rsp+0x20]
  b7d748:	c5 7d 58 1c 24       	vaddpd ymm11,ymm0,YMMWORD PTR [rsp]
  b7d74d:	c5 fd 28 84 24 60 06 	vmovapd ymm0,YMMWORD PTR [rsp+0x660]
  b7d754:	00 00 
  b7d756:	62 e1 fd 28 28 e0    	vmovapd ymm20,ymm0
  b7d75c:	62 41 fd 28 58 d3    	vaddpd ymm26,ymm0,ymm11
  b7d762:	c5 fd 29 94 24 e0 06 	vmovapd YMMWORD PTR [rsp+0x6e0],ymm2
  b7d769:	00 00 
  b7d76b:	62 91 ed 28 58 d6    	vaddpd ymm2,ymm2,ymm30
  b7d771:	62 71 a5 20 5c c9    	vsubpd ymm9,ymm27,ymm1
  b7d777:	c5 7d 29 b4 24 40 01 	vmovapd YMMWORD PTR [rsp+0x140],ymm14
  b7d77e:	00 00 
  b7d780:	62 e1 fd 28 29 44 24 	vmovapd YMMWORD PTR [rsp+0x220],ymm16
  b7d787:	11 
  b7d788:	62 b1 8d 28 58 c0    	vaddpd ymm0,ymm14,ymm16
  b7d78e:	c5 fd 29 84 24 00 01 	vmovapd YMMWORD PTR [rsp+0x100],ymm0
  b7d795:	00 00 
  b7d797:	62 e1 fd 28 29 5c 24 	vmovapd YMMWORD PTR [rsp+0x280],ymm19
  b7d79e:	14 
  b7d79f:	62 71 e5 20 58 e8    	vaddpd ymm13,ymm19,ymm0
  b7d7a5:	62 d3 2d 20 18 f9 01 	vinsertf32x4 ymm7,ymm26,xmm9,0x1
  b7d7ac:	c4 c3 6d 18 f5 01    	vinsertf128 ymm6,ymm2,xmm13,0x1
  b7d7b2:	c5 c5 15 e6          	vunpckhpd ymm4,ymm7,ymm6
  b7d7b6:	c5 c5 14 f6          	vunpcklpd ymm6,ymm7,ymm6
  b7d7ba:	c5 fd 28 fe          	vmovapd ymm7,ymm6
  b7d7be:	c5 7d 28 35 9a 93 4f 	vmovapd ymm14,YMMWORD PTR [rip+0xffffffffff4f939a]        # 76b60 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4010>
  b7d7c5:	ff 
  b7d7c6:	62 b2 8d 28 7f fd    	vpermt2pd ymm7,ymm14,ymm21
  b7d7cc:	c4 c1 7d 29 b8 50 fc 	vmovapd YMMWORD PTR [r8-0x3b0],ymm7
  b7d7d3:	ff ff 
  b7d7d5:	c5 fd 28 05 63 9e 4f 	vmovapd ymm0,YMMWORD PTR [rip+0xffffffffff4f9e63]        # 77640 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4af0>
  b7d7dc:	ff 
  b7d7dd:	62 b2 fd 28 7f f5    	vpermt2pd ymm6,ymm0,ymm21
  b7d7e3:	c4 c1 7d 29 b0 70 fc 	vmovapd YMMWORD PTR [r8-0x390],ymm6
  b7d7ea:	ff ff 
  b7d7ec:	c5 fd 28 f4          	vmovapd ymm6,ymm4
  b7d7f0:	62 b2 8d 28 7f f1    	vpermt2pd ymm6,ymm14,ymm17
  b7d7f6:	c4 c1 7d 11 b0 40 fd 	vmovupd YMMWORD PTR [r8-0x2c0],ymm6
  b7d7fd:	ff ff 
  b7d7ff:	62 b2 fd 28 7f e1    	vpermt2pd ymm4,ymm0,ymm17
  b7d805:	c4 c1 7d 11 a0 60 fd 	vmovupd YMMWORD PTR [r8-0x2a0],ymm4
  b7d80c:	ff ff 
  b7d80e:	49 83 f9 0c          	cmp    r9,0xc
  b7d812:	74 6e                	je     b7d882 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0xb02>
  b7d814:	c4 e3 3d 06 e5 31    	vperm2f128 ymm4,ymm8,ymm5,0x31
  b7d81a:	62 93 b5 20 23 ed 03 	vshuff64x2 ymm5,ymm25,ymm29,0x3
  b7d821:	c5 dd 15 f5          	vunpckhpd ymm6,ymm4,ymm5
  b7d825:	c5 dd 14 e5          	vunpcklpd ymm4,ymm4,ymm5
  b7d829:	62 d3 ad 20 23 e9 03 	vshuff64x2 ymm5,ymm26,ymm9,0x3
  b7d830:	c4 c3 6d 06 d5 31    	vperm2f128 ymm2,ymm2,ymm13,0x31
  b7d836:	c5 d5 15 fa          	vunpckhpd ymm7,ymm5,ymm2
  b7d83a:	c5 d5 14 d2          	vunpcklpd ymm2,ymm5,ymm2
  b7d83e:	c5 fd 28 ea          	vmovapd ymm5,ymm2
  b7d842:	62 f2 8d 28 7f ec    	vpermt2pd ymm5,ymm14,ymm4
  b7d848:	c4 c1 7d 29 a8 30 fe 	vmovapd YMMWORD PTR [r8-0x1d0],ymm5
  b7d84f:	ff ff 
  b7d851:	62 f2 fd 28 7f d4    	vpermt2pd ymm2,ymm0,ymm4
  b7d857:	c4 c1 7d 29 90 50 fe 	vmovapd YMMWORD PTR [r8-0x1b0],ymm2
  b7d85e:	ff ff 
  b7d860:	c5 fd 28 d7          	vmovapd ymm2,ymm7
  b7d864:	62 f2 8d 28 7f d6    	vpermt2pd ymm2,ymm14,ymm6
  b7d86a:	c4 c1 7d 11 90 20 ff 	vmovupd YMMWORD PTR [r8-0xe0],ymm2
  b7d871:	ff ff 
  b7d873:	62 f2 fd 28 7f fe    	vpermt2pd ymm7,ymm0,ymm6
  b7d879:	c4 c1 7d 11 b8 40 ff 	vmovupd YMMWORD PTR [r8-0xc0],ymm7
  b7d880:	ff ff 
  b7d882:	c5 fd 28 94 24 60 02 	vmovapd ymm2,YMMWORD PTR [rsp+0x260]
  b7d889:	00 00 
  b7d88b:	c5 ed 5c 94 24 80 01 	vsubpd ymm2,ymm2,YMMWORD PTR [rsp+0x180]
  b7d892:	00 00 
  b7d894:	62 f1 cd 20 5c 64 24 	vsubpd ymm4,ymm22,YMMWORD PTR [rsp+0x160]
  b7d89b:	0b 
  b7d89c:	62 61 ed 28 58 ec    	vaddpd ymm29,ymm2,ymm4
  b7d8a2:	62 81 85 20 5c f0    	vsubpd ymm22,ymm31,ymm24
  b7d8a8:	c4 62 7d 19 0d e7 71 	vbroadcastsd ymm9,QWORD PTR [rip+0xffffffffff4f71e7]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  b7d8af:	4f ff 
  b7d8b1:	c5 7d 29 ce          	vmovapd ymm6,ymm9
  b7d8b5:	62 b2 95 20 ac f6    	vfnmadd213pd ymm6,ymm29,ymm22
  b7d8bb:	c5 fd 28 ac 24 e0 01 	vmovapd ymm5,YMMWORD PTR [rsp+0x1e0]
  b7d8c2:	00 00 
  b7d8c4:	c5 d5 58 ac 24 00 02 	vaddpd ymm5,ymm5,YMMWORD PTR [rsp+0x200]
  b7d8cb:	00 00 
  b7d8cd:	c5 fd 28 bc 24 a0 01 	vmovapd ymm7,YMMWORD PTR [rsp+0x1a0]
  b7d8d4:	00 00 
  b7d8d6:	c5 c5 58 bc 24 c0 01 	vaddpd ymm7,ymm7,YMMWORD PTR [rsp+0x1c0]
  b7d8dd:	00 00 
  b7d8df:	c5 55 5c c7          	vsubpd ymm8,ymm5,ymm7
  b7d8e3:	c4 62 7d 19 2d 34 73 	vbroadcastsd ymm13,QWORD PTR [rip+0xffffffffff4f7334]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  b7d8ea:	4f ff 
  b7d8ec:	c4 41 3d 59 d5       	vmulpd ymm10,ymm8,ymm13
  b7d8f1:	62 e1 ad 28 58 ee    	vaddpd ymm21,ymm10,ymm6
  b7d8f7:	62 e1 d5 28 58 df    	vaddpd ymm19,ymm5,ymm7
  b7d8fd:	c4 41 05 58 e4       	vaddpd ymm12,ymm15,ymm12
  b7d902:	62 c1 fd 28 28 c1    	vmovapd ymm16,ymm9
  b7d908:	62 c2 e5 20 ac c4    	vfnmadd213pd ymm16,ymm19,ymm12
  b7d90e:	c5 ed 5c d4          	vsubpd ymm2,ymm2,ymm4
  b7d912:	62 c1 ed 28 59 cd    	vmulpd ymm17,ymm2,ymm13
  b7d918:	62 b1 fd 20 5c e9    	vsubpd ymm5,ymm16,ymm17
  b7d91e:	62 32 b5 28 ac dc    	vfnmadd213pd ymm11,ymm9,ymm20
  b7d924:	c5 fd 28 94 24 00 07 	vmovapd ymm2,YMMWORD PTR [rsp+0x700]
  b7d92b:	00 00 
  b7d92d:	c5 ed 5c 94 24 c0 06 	vsubpd ymm2,ymm2,YMMWORD PTR [rsp+0x6c0]
  b7d934:	00 00 
  b7d936:	c5 15 59 c2          	vmulpd ymm8,ymm13,ymm2
  b7d93a:	c4 41 25 5c f8       	vsubpd ymm15,ymm11,ymm8
  b7d93f:	62 22 b5 28 ac e7    	vfnmadd213pd ymm28,ymm9,ymm23
  b7d945:	c5 fd 28 54 24 20    	vmovapd ymm2,YMMWORD PTR [rsp+0x20]
  b7d94b:	c5 ed 5c 14 24       	vsubpd ymm2,ymm2,YMMWORD PTR [rsp]
  b7d950:	c5 15 59 ca          	vmulpd ymm9,ymm13,ymm2
  b7d954:	62 81 b5 28 58 fc    	vaddpd ymm23,ymm9,ymm28
  b7d95a:	62 71 ed 20 58 6c 24 	vaddpd ymm13,ymm18,YMMWORD PTR [rsp+0x40]
  b7d961:	02 
  b7d962:	c5 fd 28 94 24 a0 06 	vmovapd ymm2,YMMWORD PTR [rsp+0x6a0]
  b7d969:	00 00 
  b7d96b:	62 e1 ed 28 58 64 24 	vaddpd ymm20,ymm2,YMMWORD PTR [rsp+0xe0]
  b7d972:	07 
  b7d973:	62 f1 a5 20 58 f9    	vaddpd ymm7,ymm27,ymm1
  b7d979:	c5 e5 5c 9c 24 80 06 	vsubpd ymm3,ymm3,YMMWORD PTR [rsp+0x680]
  b7d980:	00 00 
  b7d982:	62 d3 55 20 18 d5 01 	vinsertf32x4 ymm2,ymm21,xmm13,0x1
  b7d989:	c4 e3 05 18 e7 01    	vinsertf128 ymm4,ymm15,xmm7,0x1
  b7d98f:	62 61 ed 28 15 c4    	vunpckhpd ymm24,ymm2,ymm4
  b7d995:	62 23 55 28 18 cc 01 	vinsertf32x4 ymm25,ymm5,xmm20,0x1
  b7d99c:	62 63 45 20 18 d3 01 	vinsertf32x4 ymm26,ymm23,xmm3,0x1
  b7d9a3:	62 01 b5 20 15 da    	vunpckhpd ymm27,ymm25,ymm26
  b7d9a9:	62 01 b5 20 14 ca    	vunpcklpd ymm25,ymm25,ymm26
  b7d9af:	c5 ed 14 d4          	vunpcklpd ymm2,ymm2,ymm4
  b7d9b3:	c5 fd 28 e2          	vmovapd ymm4,ymm2
  b7d9b7:	62 92 8d 28 7f e1    	vpermt2pd ymm4,ymm14,ymm25
  b7d9bd:	c4 c1 7d 29 a0 90 fc 	vmovapd YMMWORD PTR [r8-0x370],ymm4
  b7d9c4:	ff ff 
  b7d9c6:	62 92 fd 28 7f d1    	vpermt2pd ymm2,ymm0,ymm25
  b7d9cc:	c4 c1 7d 29 90 b0 fc 	vmovapd YMMWORD PTR [r8-0x350],ymm2
  b7d9d3:	ff ff 
  b7d9d5:	62 91 fd 28 28 d0    	vmovapd ymm2,ymm24
  b7d9db:	62 92 8d 28 7f d3    	vpermt2pd ymm2,ymm14,ymm27
  b7d9e1:	c4 c1 7d 11 90 80 fd 	vmovupd YMMWORD PTR [r8-0x280],ymm2
  b7d9e8:	ff ff 
  b7d9ea:	62 02 fd 28 7f c3    	vpermt2pd ymm24,ymm0,ymm27
  b7d9f0:	62 41 fd 28 11 40 ed 	vmovupd YMMWORD PTR [r8-0x260],ymm24
  b7d9f7:	49 83 f9 0c          	cmp    r9,0xc
  b7d9fb:	62 61 fd 28 28 c0    	vmovapd ymm24,ymm0
  b7da01:	74 6c                	je     b7da6f <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0xcef>
  b7da03:	62 b3 d5 28 23 d4 03 	vshuff64x2 ymm2,ymm5,ymm20,0x3
  b7da0a:	62 f3 c5 20 23 db 03 	vshuff64x2 ymm3,ymm23,ymm3,0x3
  b7da11:	c5 ed 15 e3          	vunpckhpd ymm4,ymm2,ymm3
  b7da15:	c5 ed 14 d3          	vunpcklpd ymm2,ymm2,ymm3
  b7da19:	62 d3 d5 20 23 dd 03 	vshuff64x2 ymm3,ymm21,ymm13,0x3
  b7da20:	c4 e3 05 06 ef 31    	vperm2f128 ymm5,ymm15,ymm7,0x31
  b7da26:	c5 e5 15 fd          	vunpckhpd ymm7,ymm3,ymm5
  b7da2a:	c5 e5 14 dd          	vunpcklpd ymm3,ymm3,ymm5
  b7da2e:	c5 fd 28 eb          	vmovapd ymm5,ymm3
  b7da32:	62 f2 8d 28 7f ea    	vpermt2pd ymm5,ymm14,ymm2
  b7da38:	c4 c1 7d 29 a8 70 fe 	vmovapd YMMWORD PTR [r8-0x190],ymm5
  b7da3f:	ff ff 
  b7da41:	62 f2 bd 20 7f da    	vpermt2pd ymm3,ymm24,ymm2
  b7da47:	c4 c1 7d 29 98 90 fe 	vmovapd YMMWORD PTR [r8-0x170],ymm3
  b7da4e:	ff ff 
  b7da50:	c5 fd 28 d7          	vmovapd ymm2,ymm7
  b7da54:	62 f2 8d 28 7f d4    	vpermt2pd ymm2,ymm14,ymm4
  b7da5a:	c4 c1 7d 11 90 60 ff 	vmovupd YMMWORD PTR [r8-0xa0],ymm2
  b7da61:	ff ff 
  b7da63:	62 f2 bd 20 7f fc    	vpermt2pd ymm7,ymm24,ymm4
  b7da69:	c4 c1 7d 11 78 80    	vmovupd YMMWORD PTR [r8-0x80],ymm7
  b7da6f:	c4 e2 7d 19 05 20 70 	vbroadcastsd ymm0,QWORD PTR [rip+0xffffffffff4f7020]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  b7da76:	4f ff 
  b7da78:	62 e1 fd 28 28 7c 24 	vmovapd ymm23,YMMWORD PTR [rsp+0x100]
  b7da7f:	08 
  b7da80:	62 e2 fd 28 ac 7c 24 	vfnmadd213pd ymm23,ymm0,YMMWORD PTR [rsp+0x280]
  b7da87:	14 
  b7da88:	c5 fd 28 8c 24 40 07 	vmovapd ymm1,YMMWORD PTR [rsp+0x740]
  b7da8f:	00 00 
  b7da91:	c5 f5 5c 94 24 20 07 	vsubpd ymm2,ymm1,YMMWORD PTR [rsp+0x720]
  b7da98:	00 00 
  b7da9a:	c4 e2 7d 19 25 7d 71 	vbroadcastsd ymm4,QWORD PTR [rip+0xffffffffff4f717d]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  b7daa1:	4f ff 
  b7daa3:	c5 ed 59 dc          	vmulpd ymm3,ymm2,ymm4
  b7daa7:	c5 fd 28 8c 24 20 01 	vmovapd ymm1,YMMWORD PTR [rsp+0x120]
  b7daae:	00 00 
  b7dab0:	c4 e2 fd ac 8c 24 60 	vfnmadd213pd ymm1,ymm0,YMMWORD PTR [rsp+0x760]
  b7dab7:	07 00 00 
  b7daba:	c5 fd 28 84 24 40 01 	vmovapd ymm0,YMMWORD PTR [rsp+0x140]
  b7dac1:	00 00 
  b7dac3:	c5 fd 5c 94 24 20 02 	vsubpd ymm2,ymm0,YMMWORD PTR [rsp+0x220]
  b7daca:	00 00 
  b7dacc:	c5 ed 59 e4          	vmulpd ymm4,ymm2,ymm4
  b7dad0:	62 f1 c5 20 5c eb    	vsubpd ymm5,ymm23,ymm3
  b7dad6:	c5 75 58 ec          	vaddpd ymm13,ymm1,ymm4
  b7dada:	62 91 cd 20 58 fd    	vaddpd ymm7,ymm22,ymm29
  b7dae0:	62 31 9d 28 58 e3    	vaddpd ymm12,ymm12,ymm19
  b7dae6:	c4 41 25 58 c0       	vaddpd ymm8,ymm11,ymm8
  b7daeb:	62 51 9d 20 5c c9    	vsubpd ymm9,ymm28,ymm9
  b7daf1:	62 f1 8d 20 5c 54 24 	vsubpd ymm2,ymm30,YMMWORD PTR [rsp+0x6e0]
  b7daf8:	37 
  b7daf9:	c5 fd 28 84 24 a0 02 	vmovapd ymm0,YMMWORD PTR [rsp+0x2a0]
  b7db00:	00 00 
  b7db02:	c5 fd 58 84 24 40 02 	vaddpd ymm0,ymm0,YMMWORD PTR [rsp+0x240]
  b7db09:	00 00 
  b7db0b:	c4 43 55 18 d8 01    	vinsertf128 ymm11,ymm5,xmm8,0x1
  b7db11:	c4 63 45 18 fa 01    	vinsertf128 ymm15,ymm7,xmm2,0x1
  b7db17:	62 c1 a5 28 15 d7    	vunpckhpd ymm18,ymm11,ymm15
  b7db1d:	62 c3 15 28 18 d9 01 	vinsertf32x4 ymm19,ymm13,xmm9,0x1
  b7db24:	62 e3 1d 28 18 e0 01 	vinsertf32x4 ymm20,ymm12,xmm0,0x1
  b7db2b:	62 a1 e5 20 15 ec    	vunpckhpd ymm21,ymm19,ymm20
  b7db31:	62 a1 e5 20 14 dc    	vunpcklpd ymm19,ymm19,ymm20
  b7db37:	c4 41 25 14 df       	vunpcklpd ymm11,ymm11,ymm15
  b7db3c:	c4 41 7d 28 fb       	vmovapd ymm15,ymm11
  b7db41:	62 32 8d 28 7f fb    	vpermt2pd ymm15,ymm14,ymm19
  b7db47:	c4 41 7d 29 b8 d0 fc 	vmovapd YMMWORD PTR [r8-0x330],ymm15
  b7db4e:	ff ff 
  b7db50:	62 32 bd 20 7f db    	vpermt2pd ymm11,ymm24,ymm19
  b7db56:	c4 41 7d 29 98 f0 fc 	vmovapd YMMWORD PTR [r8-0x310],ymm11
  b7db5d:	ff ff 
  b7db5f:	62 31 fd 28 28 da    	vmovapd ymm11,ymm18
  b7db65:	62 32 8d 28 7f dd    	vpermt2pd ymm11,ymm14,ymm21
  b7db6b:	c4 41 7d 11 98 c0 fd 	vmovupd YMMWORD PTR [r8-0x240],ymm11
  b7db72:	ff ff 
  b7db74:	62 a2 bd 20 7f d5    	vpermt2pd ymm18,ymm24,ymm21
  b7db7a:	62 c1 fd 28 11 50 ef 	vmovupd YMMWORD PTR [r8-0x220],ymm18
  b7db81:	49 83 f9 0c          	cmp    r9,0xc
  b7db85:	74 66                	je     b7dbed <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0xe6d>
  b7db87:	c4 43 15 06 c9 31    	vperm2f128 ymm9,ymm13,ymm9,0x31
  b7db8d:	c4 e3 1d 06 c0 31    	vperm2f128 ymm0,ymm12,ymm0,0x31
  b7db93:	c5 35 15 d8          	vunpckhpd ymm11,ymm9,ymm0
  b7db97:	c5 b5 14 c0          	vunpcklpd ymm0,ymm9,ymm0
  b7db9b:	c4 c3 55 06 e8 31    	vperm2f128 ymm5,ymm5,ymm8,0x31
  b7dba1:	c4 e3 45 06 d2 31    	vperm2f128 ymm2,ymm7,ymm2,0x31
  b7dba7:	c5 d5 15 fa          	vunpckhpd ymm7,ymm5,ymm2
  b7dbab:	c5 d5 14 d2          	vunpcklpd ymm2,ymm5,ymm2
  b7dbaf:	c5 fd 28 ea          	vmovapd ymm5,ymm2
  b7dbb3:	62 f2 8d 28 7f e8    	vpermt2pd ymm5,ymm14,ymm0
  b7dbb9:	c4 c1 7d 29 a8 b0 fe 	vmovapd YMMWORD PTR [r8-0x150],ymm5
  b7dbc0:	ff ff 
  b7dbc2:	62 f2 bd 20 7f d0    	vpermt2pd ymm2,ymm24,ymm0
  b7dbc8:	c4 c1 7d 29 90 d0 fe 	vmovapd YMMWORD PTR [r8-0x130],ymm2
  b7dbcf:	ff ff 
  b7dbd1:	c5 fd 28 c7          	vmovapd ymm0,ymm7
  b7dbd5:	62 d2 8d 28 7f c3    	vpermt2pd ymm0,ymm14,ymm11
  b7dbdb:	c4 c1 7d 11 40 a0    	vmovupd YMMWORD PTR [r8-0x60],ymm0
  b7dbe1:	62 d2 bd 20 7f fb    	vpermt2pd ymm7,ymm24,ymm11
  b7dbe7:	c4 c1 7d 11 78 c0    	vmovupd YMMWORD PTR [r8-0x40],ymm7
  b7dbed:	c5 fd 28 84 24 80 00 	vmovapd ymm0,YMMWORD PTR [rsp+0x80]
  b7dbf4:	00 00 
  b7dbf6:	c5 fd 58 94 24 a0 00 	vaddpd ymm2,ymm0,YMMWORD PTR [rsp+0xa0]
  b7dbfd:	00 00 
  b7dbff:	c5 fd 28 44 24 60    	vmovapd ymm0,YMMWORD PTR [rsp+0x60]
  b7dc05:	c5 fd 58 ac 24 c0 00 	vaddpd ymm5,ymm0,YMMWORD PTR [rsp+0xc0]
  b7dc0c:	00 00 
  b7dc0e:	62 f1 c5 20 58 db    	vaddpd ymm3,ymm23,ymm3
  b7dc14:	c5 f5 5c e4          	vsubpd ymm4,ymm1,ymm4
  b7dc18:	c4 c1 4d 5c c2       	vsubpd ymm0,ymm6,ymm10
  b7dc1d:	62 b1 fd 20 58 c9    	vaddpd ymm1,ymm16,ymm17
  b7dc23:	c5 e9 14 f5          	vunpcklpd xmm6,xmm2,xmm5
  b7dc27:	c5 e1 14 fc          	vunpcklpd xmm7,xmm3,xmm4
  b7dc2b:	c4 c1 79 29 b8 20 fd 	vmovapd XMMWORD PTR [r8-0x2e0],xmm7
  b7dc32:	ff ff 
  b7dc34:	c4 c1 79 29 b0 10 fd 	vmovapd XMMWORD PTR [r8-0x2f0],xmm6
  b7dc3b:	ff ff 
  b7dc3d:	c5 f9 14 f1          	vunpcklpd xmm6,xmm0,xmm1
  b7dc41:	c4 c1 79 29 b0 30 fd 	vmovapd XMMWORD PTR [r8-0x2d0],xmm6
  b7dc48:	ff ff 
  b7dc4a:	c5 e9 15 f5          	vunpckhpd xmm6,xmm2,xmm5
  b7dc4e:	c5 e1 15 fc          	vunpckhpd xmm7,xmm3,xmm4
  b7dc52:	c4 c1 79 29 b8 10 fe 	vmovapd XMMWORD PTR [r8-0x1f0],xmm7
  b7dc59:	ff ff 
  b7dc5b:	c4 c1 79 29 b0 00 fe 	vmovapd XMMWORD PTR [r8-0x200],xmm6
  b7dc62:	ff ff 
  b7dc64:	c5 f9 15 f1          	vunpckhpd xmm6,xmm0,xmm1
  b7dc68:	c4 c1 79 29 b0 20 fe 	vmovapd XMMWORD PTR [r8-0x1e0],xmm6
  b7dc6f:	ff ff 
  b7dc71:	49 83 f9 0c          	cmp    r9,0xc
  b7dc75:	0f 84 65 f1 ff ff    	je     b7cde0 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x60>
  b7dc7b:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  b7dc81:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  b7dc87:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  b7dc8d:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  b7dc93:	c5 e9 14 f5          	vunpcklpd xmm6,xmm2,xmm5
  b7dc97:	c5 e1 14 fc          	vunpcklpd xmm7,xmm3,xmm4
  b7dc9b:	c4 c1 79 29 b8 00 ff 	vmovapd XMMWORD PTR [r8-0x100],xmm7
  b7dca2:	ff ff 
  b7dca4:	c4 c1 79 29 b0 f0 fe 	vmovapd XMMWORD PTR [r8-0x110],xmm6
  b7dcab:	ff ff 
  b7dcad:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  b7dcb3:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  b7dcb9:	c5 f9 14 f1          	vunpcklpd xmm6,xmm0,xmm1
  b7dcbd:	c4 c1 79 29 b0 10 ff 	vmovapd XMMWORD PTR [r8-0xf0],xmm6
  b7dcc4:	ff ff 
  b7dcc6:	c5 e9 15 d5          	vunpckhpd xmm2,xmm2,xmm5
  b7dcca:	c5 e1 15 dc          	vunpckhpd xmm3,xmm3,xmm4
  b7dcce:	c4 c1 79 29 58 f0    	vmovapd XMMWORD PTR [r8-0x10],xmm3
  b7dcd4:	c4 c1 79 29 50 e0    	vmovapd XMMWORD PTR [r8-0x20],xmm2
  b7dcda:	c5 f9 15 c1          	vunpckhpd xmm0,xmm0,xmm1
  b7dcde:	c4 c1 79 29 00       	vmovapd XMMWORD PTR [r8],xmm0
  b7dce3:	e9 f8 f0 ff ff       	jmp    b7cde0 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x60>
  b7dce8:	48 8d bc 24 50 0c 00 	lea    rdi,[rsp+0xc50]
  b7dcef:	00 
  b7dcf0:	48 83 c2 60          	add    rdx,0x60
  b7dcf4:	41 b8 04 00 00 00    	mov    r8d,0x4
  b7dcfa:	45 31 db             	xor    r11d,r11d
  b7dcfd:	e9 e4 01 00 00       	jmp    b7dee6 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x1166>
  b7dd02:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  b7dd09:	1f 84 00 00 00 00 00 
  b7dd10:	62 a1 fd 28 11 3c 0e 	vmovupd YMMWORD PTR [rsi+r9*1],ymm23
  b7dd17:	c4 a1 7d 11 4c 0e 20 	vmovupd YMMWORD PTR [rsi+r9*1+0x20],ymm1
  b7dd1e:	62 f2 fd 20 7f ec    	vpermt2pd ymm5,ymm16,ymm4
  b7dd24:	62 21 fd 28 11 b4 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0xf0],ymm30
  b7dd2b:	f0 00 00 00 
  b7dd2f:	c4 a1 7d 11 ac 0e 10 	vmovupd YMMWORD PTR [rsi+r9*1+0x110],ymm5
  b7dd36:	01 00 00 
  b7dd39:	c5 fd 28 84 24 60 02 	vmovapd ymm0,YMMWORD PTR [rsp+0x260]
  b7dd40:	00 00 
  b7dd42:	62 f2 fd 20 7f c6    	vpermt2pd ymm0,ymm16,ymm6
  b7dd48:	62 21 fd 28 11 64 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0x1e0],ymm28
  b7dd4f:	0f 
  b7dd50:	c4 a1 7d 11 84 0e 00 	vmovupd YMMWORD PTR [rsi+r9*1+0x200],ymm0
  b7dd57:	02 00 00 
  b7dd5a:	c5 fd 28 84 24 60 01 	vmovapd ymm0,YMMWORD PTR [rsp+0x160]
  b7dd61:	00 00 
  b7dd63:	62 f2 fd 20 7f 44 24 	vpermt2pd ymm0,ymm16,YMMWORD PTR [rsp+0x100]
  b7dd6a:	08 
  b7dd6b:	62 a1 fd 28 11 ac 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0x2d0],ymm21
  b7dd72:	d0 02 00 00 
  b7dd76:	c4 a1 7d 11 84 0e f0 	vmovupd YMMWORD PTR [rsi+r9*1+0x2f0],ymm0
  b7dd7d:	02 00 00 
  b7dd80:	c5 fd 28 84 24 80 01 	vmovapd ymm0,YMMWORD PTR [rsp+0x180]
  b7dd87:	00 00 
  b7dd89:	62 f2 fd 20 7f 44 24 	vpermt2pd ymm0,ymm16,YMMWORD PTR [rsp+0x120]
  b7dd90:	09 
  b7dd91:	62 21 fd 28 11 44 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0x3c0],ymm24
  b7dd98:	1e 
  b7dd99:	c4 a1 7d 11 84 0e e0 	vmovupd YMMWORD PTR [rsi+r9*1+0x3e0],ymm0
  b7dda0:	03 00 00 
  b7dda3:	62 e2 fd 20 7f 4c 24 	vpermt2pd ymm17,ymm16,YMMWORD PTR [rsp+0x1a0]
  b7ddaa:	0d 
  b7ddab:	c4 21 7d 11 84 0e b0 	vmovupd YMMWORD PTR [rsi+r9*1+0x4b0],ymm8
  b7ddb2:	04 00 00 
  b7ddb5:	62 a1 fd 28 11 8c 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0x4d0],ymm17
  b7ddbc:	d0 04 00 00 
  b7ddc0:	62 72 fd 20 7f 6c 24 	vpermt2pd ymm13,ymm16,YMMWORD PTR [rsp+0x1c0]
  b7ddc7:	0e 
  b7ddc8:	c4 21 7d 11 bc 0e a0 	vmovupd YMMWORD PTR [rsi+r9*1+0x5a0],ymm15
  b7ddcf:	05 00 00 
  b7ddd2:	c4 21 7d 11 ac 0e c0 	vmovupd YMMWORD PTR [rsi+r9*1+0x5c0],ymm13
  b7ddd9:	05 00 00 
  b7dddc:	c5 fd 28 84 24 e0 01 	vmovapd ymm0,YMMWORD PTR [rsp+0x1e0]
  b7dde3:	00 00 
  b7dde5:	62 92 fd 20 7f c7    	vpermt2pd ymm0,ymm16,ymm31
  b7ddeb:	62 a1 fd 28 11 a4 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0x690],ymm20
  b7ddf2:	90 06 00 00 
  b7ddf6:	c4 a1 7d 11 84 0e b0 	vmovupd YMMWORD PTR [rsi+r9*1+0x6b0],ymm0
  b7ddfd:	06 00 00 
  b7de00:	c5 fd 28 84 24 00 02 	vmovapd ymm0,YMMWORD PTR [rsp+0x200]
  b7de07:	00 00 
  b7de09:	62 92 fd 20 7f c2    	vpermt2pd ymm0,ymm16,ymm26
  b7de0f:	62 a1 fd 28 11 54 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0x780],ymm18
  b7de16:	3c 
  b7de17:	c4 a1 7d 11 84 0e a0 	vmovupd YMMWORD PTR [rsi+r9*1+0x7a0],ymm0
  b7de1e:	07 00 00 
  b7de21:	c5 fd 28 84 24 80 00 	vmovapd ymm0,YMMWORD PTR [rsp+0x80]
  b7de28:	00 00 
  b7de2a:	62 f2 fd 20 7f 44 24 	vpermt2pd ymm0,ymm16,YMMWORD PTR [rsp+0x60]
  b7de31:	03 
  b7de32:	c4 21 7d 11 8c 0e 70 	vmovupd YMMWORD PTR [rsi+r9*1+0x870],ymm9
  b7de39:	08 00 00 
  b7de3c:	c4 a1 7d 11 84 0e 90 	vmovupd YMMWORD PTR [rsi+r9*1+0x890],ymm0
  b7de43:	08 00 00 
  b7de46:	c5 fd 28 84 24 c0 00 	vmovapd ymm0,YMMWORD PTR [rsp+0xc0]
  b7de4d:	00 00 
  b7de4f:	62 f2 fd 20 7f 44 24 	vpermt2pd ymm0,ymm16,YMMWORD PTR [rsp+0xa0]
  b7de56:	05 
  b7de57:	c4 21 7d 11 94 0e 60 	vmovupd YMMWORD PTR [rsi+r9*1+0x960],ymm10
  b7de5e:	09 00 00 
  b7de61:	c4 a1 7d 11 84 0e 80 	vmovupd YMMWORD PTR [rsi+r9*1+0x980],ymm0
  b7de68:	09 00 00 
  b7de6b:	c5 fd 28 04 24       	vmovapd ymm0,YMMWORD PTR [rsp]
  b7de70:	62 92 fd 20 7f c3    	vpermt2pd ymm0,ymm16,ymm27
  b7de76:	c4 21 7d 11 9c 0e 50 	vmovupd YMMWORD PTR [rsi+r9*1+0xa50],ymm11
  b7de7d:	0a 00 00 
  b7de80:	c4 a1 7d 11 84 0e 70 	vmovupd YMMWORD PTR [rsi+r9*1+0xa70],ymm0
  b7de87:	0a 00 00 
  b7de8a:	c5 fd 28 84 24 e0 00 	vmovapd ymm0,YMMWORD PTR [rsp+0xe0]
  b7de91:	00 00 
  b7de93:	62 f2 fd 20 7f 44 24 	vpermt2pd ymm0,ymm16,YMMWORD PTR [rsp+0x20]
  b7de9a:	01 
  b7de9b:	c4 21 7d 11 b4 0e 40 	vmovupd YMMWORD PTR [rsi+r9*1+0xb40],ymm14
  b7dea2:	0b 00 00 
  b7dea5:	c4 a1 7d 11 84 0e 60 	vmovupd YMMWORD PTR [rsi+r9*1+0xb60],ymm0
  b7deac:	0b 00 00 
  b7deaf:	c5 fd 28 44 24 40    	vmovapd ymm0,YMMWORD PTR [rsp+0x40]
  b7deb5:	62 92 fd 20 7f c1    	vpermt2pd ymm0,ymm16,ymm25
  b7debb:	c4 a1 7d 11 bc 0e 30 	vmovupd YMMWORD PTR [rsi+r9*1+0xc30],ymm7
  b7dec2:	0c 00 00 
  b7dec5:	c4 a1 7d 11 84 0e 50 	vmovupd YMMWORD PTR [rsi+r9*1+0xc50],ymm0
  b7decc:	0c 00 00 
  b7decf:	48 83 c7 40          	add    rdi,0x40
  b7ded3:	48 81 c2 80 03 00 00 	add    rdx,0x380
  b7deda:	4d 89 d3             	mov    r11,r10
  b7dedd:	49 ff c8             	dec    r8
  b7dee0:	0f 84 f4 0e 00 00    	je     b7edda <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x205a>
  b7dee6:	c5 f9 57 c0          	vxorpd xmm0,xmm0,xmm0
  b7deea:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x440],zmm0
  b7def1:	11 
  b7def2:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x400],zmm0
  b7def9:	10 
  b7defa:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x3c0],zmm0
  b7df01:	0f 
  b7df02:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x380],zmm0
  b7df09:	0e 
  b7df0a:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x340],zmm0
  b7df11:	0d 
  b7df12:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x300],zmm0
  b7df19:	0c 
  b7df1a:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x2c0],zmm0
  b7df21:	0b 
  b7df22:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x600],zmm0
  b7df29:	18 
  b7df2a:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x5c0],zmm0
  b7df31:	17 
  b7df32:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x580],zmm0
  b7df39:	16 
  b7df3a:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x540],zmm0
  b7df41:	15 
  b7df42:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x500],zmm0
  b7df49:	14 
  b7df4a:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x4c0],zmm0
  b7df51:	13 
  b7df52:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x480],zmm0
  b7df59:	12 
  b7df5a:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x900],zmm0
  b7df61:	24 
  b7df62:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x8c0],zmm0
  b7df69:	23 
  b7df6a:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x880],zmm0
  b7df71:	22 
  b7df72:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x840],zmm0
  b7df79:	21 
  b7df7a:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x800],zmm0
  b7df81:	20 
  b7df82:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x7c0],zmm0
  b7df89:	1f 
  b7df8a:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x780],zmm0
  b7df91:	1e 
  b7df92:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0xac0],zmm0
  b7df99:	2b 
  b7df9a:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0xa80],zmm0
  b7dfa1:	2a 
  b7dfa2:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0xa40],zmm0
  b7dfa9:	29 
  b7dfaa:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0xa00],zmm0
  b7dfb1:	28 
  b7dfb2:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x9c0],zmm0
  b7dfb9:	27 
  b7dfba:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x980],zmm0
  b7dfc1:	26 
  b7dfc2:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x940],zmm0
  b7dfc9:	25 
  b7dfca:	4d 89 d9             	mov    r9,r11
  b7dfcd:	49 c1 e1 04          	shl    r9,0x4
  b7dfd1:	49 83 fb 0c          	cmp    r11,0xc
  b7dfd5:	73 19                	jae    b7dff0 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x1270>
  b7dfd7:	c4 a1 7d 28 84 0c 60 	vmovapd ymm0,YMMWORD PTR [rsp+r9*1+0xb60]
  b7dfde:	0b 00 00 
  b7dfe1:	eb 17                	jmp    b7dffa <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x127a>
  b7dfe3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  b7dfea:	84 00 00 00 00 00 
  b7dff0:	c4 a1 79 28 84 0c 60 	vmovapd xmm0,XMMWORD PTR [rsp+r9*1+0xb60]
  b7dff7:	0b 00 00 
  b7dffa:	4d 8d 53 04          	lea    r10,[r11+0x4]
  b7dffe:	c4 a1 7d 28 8c 0c 40 	vmovapd ymm1,YMMWORD PTR [rsp+r9*1+0xb40]
  b7e005:	0b 00 00 
  b7e008:	48 89 fb             	mov    rbx,rdi
  b7e00b:	45 31 f6             	xor    r14d,r14d
  b7e00e:	eb 66                	jmp    b7e076 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x12f6>
  b7e010:	c5 fd 10 13          	vmovupd ymm2,YMMWORD PTR [rbx]
  b7e014:	c5 fd 10 5b e0       	vmovupd ymm3,YMMWORD PTR [rbx-0x20]
  b7e019:	c4 e3 65 06 e2 31    	vperm2f128 ymm4,ymm3,ymm2,0x31
  b7e01f:	c4 e3 65 18 d2 01    	vinsertf128 ymm2,ymm3,xmm2,0x1
  b7e025:	c5 ed 14 dc          	vunpcklpd ymm3,ymm2,ymm4
  b7e029:	c5 ed 15 d4          	vunpckhpd ymm2,ymm2,ymm4
  b7e02d:	c4 a1 7d 29 9c 34 e0 	vmovapd YMMWORD PTR [rsp+r14*1+0x2e0],ymm3
  b7e034:	02 00 00 
  b7e037:	c4 a1 7d 29 94 34 a0 	vmovapd YMMWORD PTR [rsp+r14*1+0x4a0],ymm2
  b7e03e:	04 00 00 
  b7e041:	c4 a1 7c 10 54 72 e0 	vmovups ymm2,YMMWORD PTR [rdx+r14*2-0x20]
  b7e048:	c4 a1 7c 29 94 34 a0 	vmovaps YMMWORD PTR [rsp+r14*1+0x7a0],ymm2
  b7e04f:	07 00 00 
  b7e052:	c4 a1 7d 10 14 72    	vmovupd ymm2,YMMWORD PTR [rdx+r14*2]
  b7e058:	c4 a1 7d 29 94 34 60 	vmovapd YMMWORD PTR [rsp+r14*1+0x960],ymm2
  b7e05f:	09 00 00 
  b7e062:	49 83 c6 20          	add    r14,0x20
  b7e066:	48 81 c3 f0 00 00 00 	add    rbx,0xf0
  b7e06d:	49 81 fe a0 01 00 00 	cmp    r14,0x1a0
  b7e074:	74 1a                	je     b7e090 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x1310>
  b7e076:	49 83 fb 0c          	cmp    r11,0xc
  b7e07a:	72 94                	jb     b7e010 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x1290>
  b7e07c:	c5 f9 28 13          	vmovapd xmm2,XMMWORD PTR [rbx]
  b7e080:	eb 92                	jmp    b7e014 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x1294>
  b7e082:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  b7e089:	1f 84 00 00 00 00 00 
  b7e090:	c4 e3 75 06 d0 31    	vperm2f128 ymm2,ymm1,ymm0,0x31
  b7e096:	c4 e3 75 18 c0 01    	vinsertf128 ymm0,ymm1,xmm0,0x1
  b7e09c:	c5 fd 14 ca          	vunpcklpd ymm1,ymm0,ymm2
  b7e0a0:	c5 fd 29 8c 24 e0 00 	vmovapd YMMWORD PTR [rsp+0xe0],ymm1
  b7e0a7:	00 00 
  b7e0a9:	c5 fd 15 c2          	vunpckhpd ymm0,ymm0,ymm2
  b7e0ad:	c5 fd 29 44 24 40    	vmovapd YMMWORD PTR [rsp+0x40],ymm0
  b7e0b3:	c5 7d 28 a4 24 20 09 	vmovapd ymm12,YMMWORD PTR [rsp+0x920]
  b7e0ba:	00 00 
  b7e0bc:	c5 fc 28 84 24 60 04 	vmovaps ymm0,YMMWORD PTR [rsp+0x460]
  b7e0c3:	00 00 
  b7e0c5:	c5 fc 29 44 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm0
  b7e0cb:	c5 7d 28 ac 24 e0 0a 	vmovapd ymm13,YMMWORD PTR [rsp+0xae0]
  b7e0d2:	00 00 
  b7e0d4:	c5 7d 28 bc 24 20 06 	vmovapd ymm15,YMMWORD PTR [rsp+0x620]
  b7e0db:	00 00 
  b7e0dd:	62 e1 fd 28 28 54 24 	vmovapd ymm18,YMMWORD PTR [rsp+0x8e0]
  b7e0e4:	47 
  b7e0e5:	62 e1 fd 28 28 44 24 	vmovapd ymm16,YMMWORD PTR [rsp+0x420]
  b7e0ec:	21 
  b7e0ed:	c5 fd 28 84 24 a0 0a 	vmovapd ymm0,YMMWORD PTR [rsp+0xaa0]
  b7e0f4:	00 00 
  b7e0f6:	62 e1 fd 28 28 5c 24 	vmovapd ymm19,YMMWORD PTR [rsp+0x5e0]
  b7e0fd:	2f 
  b7e0fe:	62 e1 fd 28 28 74 24 	vmovapd ymm22,YMMWORD PTR [rsp+0x820]
  b7e105:	41 
  b7e106:	62 e1 fd 28 28 64 24 	vmovapd ymm20,YMMWORD PTR [rsp+0x360]
  b7e10d:	1b 
  b7e10e:	62 e1 fd 28 28 6c 24 	vmovapd ymm21,YMMWORD PTR [rsp+0x9e0]
  b7e115:	4f 
  b7e116:	62 61 fd 28 28 44 24 	vmovapd ymm24,YMMWORD PTR [rsp+0x8a0]
  b7e11d:	45 
  b7e11e:	62 e1 fd 28 28 7c 24 	vmovapd ymm23,YMMWORD PTR [rsp+0x3e0]
  b7e125:	1f 
  b7e126:	62 e1 fd 28 28 4c 24 	vmovapd ymm17,YMMWORD PTR [rsp+0x860]
  b7e12d:	43 
  b7e12e:	c5 fd 28 ac 24 a0 03 	vmovapd ymm5,YMMWORD PTR [rsp+0x3a0]
  b7e135:	00 00 
  b7e137:	c5 fd 28 bc 24 80 08 	vmovapd ymm7,YMMWORD PTR [rsp+0x880]
  b7e13e:	00 00 
  b7e140:	c5 fd 28 b4 24 c0 03 	vmovapd ymm6,YMMWORD PTR [rsp+0x3c0]
  b7e147:	00 00 
  b7e149:	c5 7d 28 9c 24 40 08 	vmovapd ymm11,YMMWORD PTR [rsp+0x840]
  b7e150:	00 00 
  b7e152:	c5 fd 28 9c 24 80 03 	vmovapd ymm3,YMMWORD PTR [rsp+0x380]
  b7e159:	00 00 
  b7e15b:	c5 7d 28 8c 24 c0 08 	vmovapd ymm9,YMMWORD PTR [rsp+0x8c0]
  b7e162:	00 00 
  b7e164:	c5 fd 28 a4 24 00 04 	vmovapd ymm4,YMMWORD PTR [rsp+0x400]
  b7e16b:	00 00 
  b7e16d:	c5 fd 28 94 24 c0 07 	vmovapd ymm2,YMMWORD PTR [rsp+0x7c0]
  b7e174:	00 00 
  b7e176:	c5 fd 28 8c 24 00 08 	vmovapd ymm1,YMMWORD PTR [rsp+0x800]
  b7e17d:	00 00 
  b7e17f:	62 61 fd 28 28 4c 24 	vmovapd ymm25,YMMWORD PTR [rsp+0x300]
  b7e186:	18 
  b7e187:	c5 7d 28 94 24 40 03 	vmovapd ymm10,YMMWORD PTR [rsp+0x340]
  b7e18e:	00 00 
  b7e190:	62 61 fd 28 28 54 24 	vmovapd ymm26,YMMWORD PTR [rsp+0x980]
  b7e197:	4c 
  b7e198:	62 61 fd 28 28 64 24 	vmovapd ymm28,YMMWORD PTR [rsp+0x4c0]
  b7e19f:	26 
  b7e1a0:	62 61 fd 28 28 6c 24 	vmovapd ymm29,YMMWORD PTR [rsp+0x900]
  b7e1a7:	48 
  b7e1a8:	62 61 fd 28 28 5c 24 	vmovapd ymm27,YMMWORD PTR [rsp+0x440]
  b7e1af:	22 
  b7e1b0:	62 71 b5 20 59 c2    	vmulpd ymm8,ymm25,ymm2
  b7e1b6:	62 12 9d 20 bc c2    	vfnmadd231pd ymm8,ymm28,ymm26
  b7e1bc:	c5 7d 29 04 24       	vmovapd YMMWORD PTR [rsp],ymm8
  b7e1c1:	62 71 9d 20 59 c2    	vmulpd ymm8,ymm28,ymm2
  b7e1c7:	62 61 fd 28 28 74 24 	vmovapd ymm30,YMMWORD PTR [rsp+0xac0]
  b7e1ce:	56 
  b7e1cf:	62 12 b5 20 b8 c2    	vfmadd231pd ymm8,ymm25,ymm26
  b7e1d5:	c5 fd 28 94 24 00 06 	vmovapd ymm2,YMMWORD PTR [rsp+0x600]
  b7e1dc:	00 00 
  b7e1de:	62 11 a5 20 59 f5    	vmulpd ymm14,ymm27,ymm29
  b7e1e4:	62 12 ed 28 bc f6    	vfnmadd231pd ymm14,ymm2,ymm30
  b7e1ea:	62 91 ed 28 59 d5    	vmulpd ymm2,ymm2,ymm29
  b7e1f0:	62 61 fd 28 28 54 24 	vmovapd ymm26,YMMWORD PTR [rsp+0x9c0]
  b7e1f7:	4e 
  b7e1f8:	62 92 a5 20 b8 d6    	vfmadd231pd ymm2,ymm27,ymm30
  b7e1fe:	62 61 fd 28 28 6c 24 	vmovapd ymm29,YMMWORD PTR [rsp+0x500]
  b7e205:	28 
  b7e206:	62 61 ad 28 59 d9    	vmulpd ymm27,ymm10,ymm1
  b7e20c:	62 02 95 20 bc da    	vfnmadd231pd ymm27,ymm29,ymm26
  b7e212:	62 61 95 20 59 e9    	vmulpd ymm29,ymm29,ymm1
  b7e218:	c5 fd 28 8c 24 80 0a 	vmovapd ymm1,YMMWORD PTR [rsp+0xa80]
  b7e21f:	00 00 
  b7e221:	62 02 ad 28 b8 ea    	vfmadd231pd ymm29,ymm10,ymm26
  b7e227:	62 61 fd 28 28 54 24 	vmovapd ymm26,YMMWORD PTR [rsp+0x5c0]
  b7e22e:	2e 
  b7e22f:	62 41 dd 28 59 c9    	vmulpd ymm25,ymm4,ymm9
  b7e235:	62 62 ad 20 bc c9    	vfnmadd231pd ymm25,ymm26,ymm1
  b7e23b:	62 51 ad 20 59 c9    	vmulpd ymm9,ymm26,ymm9
  b7e241:	62 61 fd 28 28 74 24 	vmovapd ymm30,YMMWORD PTR [rsp+0xa00]
  b7e248:	50 
  b7e249:	c4 62 dd b8 c9       	vfmadd231pd ymm9,ymm4,ymm1
  b7e24e:	c5 fd 28 8c 24 40 05 	vmovapd ymm1,YMMWORD PTR [rsp+0x540]
  b7e255:	00 00 
  b7e257:	c5 25 59 d3          	vmulpd ymm10,ymm11,ymm3
  b7e25b:	62 12 f5 28 bc d6    	vfnmadd231pd ymm10,ymm1,ymm30
  b7e261:	62 41 f5 28 59 fb    	vmulpd ymm31,ymm1,ymm11
  b7e267:	c5 fd 28 8c 24 40 0a 	vmovapd ymm1,YMMWORD PTR [rsp+0xa40]
  b7e26e:	00 00 
  b7e270:	62 02 e5 28 b8 fe    	vfmadd231pd ymm31,ymm3,ymm30
  b7e276:	c5 fd 28 9c 24 80 05 	vmovapd ymm3,YMMWORD PTR [rsp+0x580]
  b7e27d:	00 00 
  b7e27f:	c5 cd 59 e7          	vmulpd ymm4,ymm6,ymm7
  b7e283:	c4 e2 e5 bc e1       	vfnmadd231pd ymm4,ymm3,ymm1
  b7e288:	c5 e5 59 ff          	vmulpd ymm7,ymm3,ymm7
  b7e28c:	c5 fd 28 9c 24 20 0a 	vmovapd ymm3,YMMWORD PTR [rsp+0xa20]
  b7e293:	00 00 
  b7e295:	c4 e2 cd b8 f9       	vfmadd231pd ymm7,ymm6,ymm1
  b7e29a:	c5 fd 28 8c 24 60 05 	vmovapd ymm1,YMMWORD PTR [rsp+0x560]
  b7e2a1:	00 00 
  b7e2a3:	62 b1 d5 28 59 f1    	vmulpd ymm6,ymm5,ymm17
  b7e2a9:	c4 e2 f5 bc f3       	vfnmadd231pd ymm6,ymm1,ymm3
  b7e2ae:	c5 7d 28 de          	vmovapd ymm11,ymm6
  b7e2b2:	62 b1 f5 28 59 c9    	vmulpd ymm1,ymm1,ymm17
  b7e2b8:	c5 fd 28 b4 24 60 0a 	vmovapd ymm6,YMMWORD PTR [rsp+0xa60]
  b7e2bf:	00 00 
  b7e2c1:	c4 e2 d5 b8 cb       	vfmadd231pd ymm1,ymm5,ymm3
  b7e2c6:	c5 fd 29 8c 24 a0 01 	vmovapd YMMWORD PTR [rsp+0x1a0],ymm1
  b7e2cd:	00 00 
  b7e2cf:	c5 fd 28 9c 24 a0 05 	vmovapd ymm3,YMMWORD PTR [rsp+0x5a0]
  b7e2d6:	00 00 
  b7e2d8:	62 01 c5 20 59 d0    	vmulpd ymm26,ymm23,ymm24
  b7e2de:	62 62 e5 28 bc d6    	vfnmadd231pd ymm26,ymm3,ymm6
  b7e2e4:	62 01 e5 28 59 f0    	vmulpd ymm30,ymm3,ymm24
  b7e2ea:	c5 fd 28 9c 24 20 05 	vmovapd ymm3,YMMWORD PTR [rsp+0x520]
  b7e2f1:	00 00 
  b7e2f3:	62 62 c5 20 b8 f6    	vfmadd231pd ymm30,ymm23,ymm6
  b7e2f9:	c5 fd 28 ac 24 a0 07 	vmovapd ymm5,YMMWORD PTR [rsp+0x7a0]
  b7e300:	00 00 
  b7e302:	62 21 dd 20 59 c6    	vmulpd ymm24,ymm20,ymm22
  b7e308:	62 22 e5 28 bc c5    	vfnmadd231pd ymm24,ymm3,ymm21
  b7e30e:	62 a1 e5 28 59 fe    	vmulpd ymm23,ymm3,ymm22
  b7e314:	c5 fd 28 b4 24 e0 07 	vmovapd ymm6,YMMWORD PTR [rsp+0x7e0]
  b7e31b:	00 00 
  b7e31d:	62 a2 dd 20 b8 fd    	vfmadd231pd ymm23,ymm20,ymm21
  b7e323:	62 e1 fd 28 28 64 24 	vmovapd ymm20,YMMWORD PTR [rsp+0x320]
  b7e32a:	19 
  b7e32b:	62 a1 fd 20 59 f2    	vmulpd ymm22,ymm16,ymm18
  b7e331:	62 e2 e5 20 bc f0    	vfnmadd231pd ymm22,ymm19,ymm0
  b7e337:	62 a1 e5 20 59 da    	vmulpd ymm19,ymm19,ymm18
  b7e33d:	62 e1 fd 28 28 54 24 	vmovapd ymm18,YMMWORD PTR [rsp+0x9a0]
  b7e344:	4d 
  b7e345:	62 e2 fd 20 b8 d8    	vfmadd231pd ymm19,ymm16,ymm0
  b7e34b:	62 e1 fd 28 28 44 24 	vmovapd ymm16,YMMWORD PTR [rsp+0x4e0]
  b7e352:	27 
  b7e353:	62 f1 dd 20 59 de    	vmulpd ymm3,ymm20,ymm6
  b7e359:	62 b2 fd 20 bc da    	vfnmadd231pd ymm3,ymm16,ymm18
  b7e35f:	62 f1 fd 20 59 ce    	vmulpd ymm1,ymm16,ymm6
  b7e365:	c5 fd 28 b4 24 e0 02 	vmovapd ymm6,YMMWORD PTR [rsp+0x2e0]
  b7e36c:	00 00 
  b7e36e:	62 b2 dd 20 b8 ca    	vfmadd231pd ymm1,ymm20,ymm18
  b7e374:	62 e1 fd 28 28 44 24 	vmovapd ymm16,YMMWORD PTR [rsp+0x960]
  b7e37b:	4b 
  b7e37c:	c5 fd 28 44 24 20    	vmovapd ymm0,YMMWORD PTR [rsp+0x20]
  b7e382:	62 c1 fd 28 59 ec    	vmulpd ymm21,ymm0,ymm12
  b7e388:	62 c2 85 28 bc ed    	vfnmadd231pd ymm21,ymm15,ymm13
  b7e38e:	62 c1 85 28 59 d4    	vmulpd ymm18,ymm15,ymm12
  b7e394:	c5 7d 28 bc 24 a0 04 	vmovapd ymm15,YMMWORD PTR [rsp+0x4a0]
  b7e39b:	00 00 
  b7e39d:	62 c2 fd 28 b8 d5    	vfmadd231pd ymm18,ymm0,ymm13
  b7e3a3:	c5 7d 28 24 24       	vmovapd ymm12,YMMWORD PTR [rsp]
  b7e3a8:	62 41 9d 28 58 e6    	vaddpd ymm28,ymm12,ymm14
  b7e3ae:	62 c1 fd 28 28 e6    	vmovapd ymm20,ymm14
  b7e3b4:	c5 4d 59 f5          	vmulpd ymm14,ymm6,ymm5
  b7e3b8:	62 32 85 28 bc f0    	vfnmadd231pd ymm14,ymm15,ymm16
  b7e3be:	c5 85 59 c5          	vmulpd ymm0,ymm15,ymm5
  b7e3c2:	62 e1 fd 28 28 4c 24 	vmovapd ymm17,YMMWORD PTR [rsp+0xe0]
  b7e3c9:	07 
  b7e3ca:	62 11 f5 20 58 fc    	vaddpd ymm15,ymm17,ymm28
  b7e3d0:	62 b2 cd 28 b8 c0    	vfmadd231pd ymm0,ymm6,ymm16
  b7e3d6:	62 91 a5 20 58 f1    	vaddpd ymm6,ymm27,ymm25
  b7e3dc:	c5 85 58 ee          	vaddpd ymm5,ymm15,ymm6
  b7e3e0:	62 71 85 20 58 ff    	vaddpd ymm15,ymm31,ymm7
  b7e3e6:	c5 7d 29 bc 24 c0 00 	vmovapd YMMWORD PTR [rsp+0xc0],ymm15
  b7e3ed:	00 00 
  b7e3ef:	62 61 85 20 5c ff    	vsubpd ymm31,ymm31,ymm7
  b7e3f5:	c5 3d 58 fa          	vaddpd ymm15,ymm8,ymm2
  b7e3f9:	62 e1 bd 28 5c c2    	vsubpd ymm16,ymm8,ymm2
  b7e3ff:	62 d1 95 20 58 d1    	vaddpd ymm2,ymm29,ymm9
  b7e405:	c5 fd 29 94 24 00 02 	vmovapd YMMWORD PTR [rsp+0x200],ymm2
  b7e40c:	00 00 
  b7e40e:	62 d1 95 20 5c f9    	vsubpd ymm7,ymm29,ymm9
  b7e414:	62 f1 ed 20 58 d0    	vaddpd ymm2,ymm18,ymm0
  b7e41a:	c5 fd 29 54 24 20    	vmovapd YMMWORD PTR [rsp+0x20],ymm2
  b7e420:	62 71 ed 20 5c c0    	vsubpd ymm8,ymm18,ymm0
  b7e426:	62 b1 8d 20 58 c7    	vaddpd ymm0,ymm30,ymm23
  b7e42c:	c5 fd 29 84 24 20 01 	vmovapd YMMWORD PTR [rsp+0x120],ymm0
  b7e433:	00 00 
  b7e435:	62 21 8d 20 5c ef    	vsubpd ymm29,ymm30,ymm23
  b7e43b:	62 f1 e5 20 58 c1    	vaddpd ymm0,ymm19,ymm1
  b7e441:	c5 fd 29 84 24 a0 00 	vmovapd YMMWORD PTR [rsp+0xa0],ymm0
  b7e448:	00 00 
  b7e44a:	62 61 e5 20 5c f1    	vsubpd ymm30,ymm19,ymm1
  b7e450:	c5 ad 58 c4          	vaddpd ymm0,ymm10,ymm4
  b7e454:	c5 d5 58 d0          	vaddpd ymm2,ymm5,ymm0
  b7e458:	c5 fd 29 94 24 c0 01 	vmovapd YMMWORD PTR [rsp+0x1c0],ymm2
  b7e45f:	00 00 
  b7e461:	c5 ad 5c cc          	vsubpd ymm1,ymm10,ymm4
  b7e465:	c5 fd 29 8c 24 80 00 	vmovapd YMMWORD PTR [rsp+0x80],ymm1
  b7e46c:	00 00 
  b7e46e:	62 91 ad 20 58 e0    	vaddpd ymm4,ymm26,ymm24
  b7e474:	62 a1 9d 28 5c fc    	vsubpd ymm23,ymm12,ymm20
  b7e47a:	62 c1 fd 28 28 d3    	vmovapd ymm18,ymm11
  b7e480:	c5 a5 58 cc          	vaddpd ymm1,ymm11,ymm4
  b7e484:	62 81 a5 20 5c d9    	vsubpd ymm19,ymm27,ymm25
  b7e48a:	62 51 d5 20 58 d6    	vaddpd ymm10,ymm21,ymm14
  b7e490:	62 d1 d5 20 5c ee    	vsubpd ymm5,ymm21,ymm14
  b7e496:	c5 fd 29 2c 24       	vmovapd YMMWORD PTR [rsp],ymm5
  b7e49b:	62 61 cd 20 58 cb    	vaddpd ymm25,ymm22,ymm3
  b7e4a1:	62 91 f5 28 58 c9    	vaddpd ymm1,ymm1,ymm25
  b7e4a7:	c5 ad 58 e9          	vaddpd ymm5,ymm10,ymm1
  b7e4ab:	c5 fd 29 ac 24 e0 01 	vmovapd YMMWORD PTR [rsp+0x1e0],ymm5
  b7e4b2:	00 00 
  b7e4b4:	62 01 ad 20 5c c0    	vsubpd ymm24,ymm26,ymm24
  b7e4ba:	c4 62 7d 19 35 dd 6c 	vbroadcastsd ymm14,QWORD PTR [rip+0xffffffffff4f6cdd]        # 751a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2650>
  b7e4c1:	4f ff 
  b7e4c3:	c4 41 7d 28 ce       	vmovapd ymm9,ymm14
  b7e4c8:	62 32 9d 20 a8 c9    	vfmadd213pd ymm9,ymm28,ymm17
  b7e4ce:	62 f1 cd 20 5c db    	vsubpd ymm3,ymm22,ymm3
  b7e4d4:	c5 fd 29 5c 24 60    	vmovapd YMMWORD PTR [rsp+0x60],ymm3
  b7e4da:	62 62 fd 28 19 15 94 	vbroadcastsd ymm26,QWORD PTR [rip+0xffffffffff4f6994]        # 74e78 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2328>
  b7e4e1:	69 4f ff 
  b7e4e4:	62 81 fd 28 28 f2    	vmovapd ymm22,ymm26
  b7e4ea:	62 a2 9d 20 ac f1    	vfnmadd213pd ymm22,ymm28,ymm17
  b7e4f0:	62 62 fd 28 19 1d e6 	vbroadcastsd ymm27,QWORD PTR [rip+0xffffffffff4f68e6]        # 74de0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2290>
  b7e4f7:	68 4f ff 
  b7e4fa:	62 22 a5 20 ac e1    	vfnmadd213pd ymm28,ymm27,ymm17
  b7e500:	c5 ed 58 cd          	vaddpd ymm1,ymm2,ymm5
  b7e504:	c5 fd 29 8c 24 e0 00 	vmovapd YMMWORD PTR [rsp+0xe0],ymm1
  b7e50b:	00 00 
  b7e50d:	62 12 cd 28 bc ca    	vfnmadd231pd ymm9,ymm6,ymm26
  b7e513:	62 12 fd 28 bc cb    	vfnmadd231pd ymm9,ymm0,ymm27
  b7e519:	c5 7d 29 8c 24 80 01 	vmovapd YMMWORD PTR [rsp+0x180],ymm9
  b7e520:	00 00 
  b7e522:	62 82 cd 28 bc f3    	vfnmadd231pd ymm22,ymm6,ymm27
  b7e528:	62 62 8d 28 b8 e6    	vfmadd231pd ymm28,ymm14,ymm6
  b7e52e:	c4 62 7d 19 2d a1 66 	vbroadcastsd ymm13,QWORD PTR [rip+0xffffffffff4f66a1]        # 74bd8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2088>
  b7e535:	4f ff 
  b7e537:	62 c1 c5 28 59 ed    	vmulpd ymm21,ymm7,ymm13
  b7e53d:	c4 62 7d 19 1d 8a 69 	vbroadcastsd ymm11,QWORD PTR [rip+0xffffffffff4f698a]        # 74ed0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2380>
  b7e544:	4f ff 
  b7e546:	62 c2 fd 20 b8 eb    	vfmadd231pd ymm21,ymm16,ymm11
  b7e54c:	c4 62 7d 19 0d f3 61 	vbroadcastsd ymm9,QWORD PTR [rip+0xffffffffff4f61f3]        # 74748 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1bf8>
  b7e553:	4f ff 
  b7e555:	62 c2 85 20 b8 e9    	vfmadd231pd ymm21,ymm31,ymm9
  b7e55b:	62 c2 fd 28 b8 f6    	vfmadd231pd ymm22,ymm0,ymm14
  b7e561:	62 62 ad 20 bc e0    	vfnmadd231pd ymm28,ymm26,ymm0
  b7e567:	62 51 fd 20 59 e5    	vmulpd ymm12,ymm16,ymm13
  b7e56d:	c4 42 c5 bc e1       	vfnmadd231pd ymm12,ymm7,ymm9
  b7e572:	62 d1 fd 20 59 f1    	vmulpd ymm6,ymm16,ymm9
  b7e578:	c4 e2 a5 bc f7       	vfnmadd231pd ymm6,ymm11,ymm7
  b7e57d:	c5 7d 29 f3          	vmovapd ymm3,ymm14
  b7e581:	62 b1 fd 28 28 c2    	vmovapd ymm0,ymm18
  b7e587:	62 b2 dd 28 a8 da    	vfmadd213pd ymm3,ymm4,ymm18
  b7e58d:	62 52 85 20 bc e3    	vfnmadd231pd ymm12,ymm31,ymm11
  b7e593:	62 92 95 28 b8 f7    	vfmadd231pd ymm6,ymm13,ymm31
  b7e599:	62 91 fd 28 28 fa    	vmovapd ymm7,ymm26
  b7e59f:	62 b2 dd 28 ac fa    	vfnmadd213pd ymm7,ymm4,ymm18
  b7e5a5:	62 f2 a5 20 bc c4    	vfnmadd231pd ymm0,ymm27,ymm4
  b7e5ab:	62 e1 fd 28 28 44 24 	vmovapd ymm16,YMMWORD PTR [rsp+0x40]
  b7e5b2:	02 
  b7e5b3:	62 b1 85 28 58 e0    	vaddpd ymm4,ymm15,ymm16
  b7e5b9:	62 e1 fd 28 28 64 24 	vmovapd ymm20,YMMWORD PTR [rsp+0x200]
  b7e5c0:	10 
  b7e5c1:	62 f1 dd 20 58 e4    	vaddpd ymm4,ymm20,ymm4
  b7e5c7:	62 e1 fd 28 28 4c 24 	vmovapd ymm17,YMMWORD PTR [rsp+0xc0]
  b7e5ce:	06 
  b7e5cf:	62 e1 f5 20 58 d4    	vaddpd ymm18,ymm17,ymm4
  b7e5d5:	62 92 b5 20 bc da    	vfnmadd231pd ymm3,ymm25,ymm26
  b7e5db:	62 92 ad 28 bc db    	vfnmadd231pd ymm3,ymm10,ymm27
  b7e5e1:	62 92 b5 20 bc fb    	vfnmadd231pd ymm7,ymm25,ymm27
  b7e5e7:	62 92 8d 28 b8 c1    	vfmadd231pd ymm0,ymm14,ymm25
  b7e5ed:	62 d1 8d 20 59 ed    	vmulpd ymm5,ymm30,ymm13
  b7e5f3:	62 d2 95 20 b8 eb    	vfmadd231pd ymm5,ymm29,ymm11
  b7e5f9:	62 41 fd 28 28 f8    	vmovapd ymm31,ymm8
  b7e5ff:	c4 c2 bd b8 e9       	vfmadd231pd ymm5,ymm8,ymm9
  b7e604:	c4 c2 ad b8 fe       	vfmadd231pd ymm7,ymm10,ymm14
  b7e609:	62 d2 ad 20 bc c2    	vfnmadd231pd ymm0,ymm26,ymm10
  b7e60f:	c5 fd 29 84 24 00 01 	vmovapd YMMWORD PTR [rsp+0x100],ymm0
  b7e616:	00 00 
  b7e618:	62 41 95 20 59 cd    	vmulpd ymm25,ymm29,ymm13
  b7e61e:	62 42 8d 20 bc c9    	vfnmadd231pd ymm25,ymm30,ymm9
  b7e624:	62 d1 95 20 59 d1    	vmulpd ymm2,ymm29,ymm9
  b7e62a:	62 92 a5 28 bc d6    	vfnmadd231pd ymm2,ymm11,ymm30
  b7e630:	c4 41 7d 28 c6       	vmovapd ymm8,ymm14
  b7e635:	62 32 85 28 a8 c0    	vfmadd213pd ymm8,ymm15,ymm16
  b7e63b:	62 42 85 20 bc cb    	vfnmadd231pd ymm25,ymm31,ymm11
  b7e641:	62 92 95 28 b8 d7    	vfmadd231pd ymm2,ymm13,ymm31
  b7e647:	62 01 fd 28 28 ea    	vmovapd ymm29,ymm26
  b7e64d:	62 22 85 28 ac e8    	vfnmadd213pd ymm29,ymm15,ymm16
  b7e653:	62 32 a5 20 ac f8    	vfnmadd213pd ymm15,ymm27,ymm16
  b7e659:	c5 fd 28 8c 24 20 01 	vmovapd ymm1,YMMWORD PTR [rsp+0x120]
  b7e660:	00 00 
  b7e662:	c5 fd 28 84 24 a0 01 	vmovapd ymm0,YMMWORD PTR [rsp+0x1a0]
  b7e669:	00 00 
  b7e66b:	62 e1 fd 28 58 c1    	vaddpd ymm16,ymm0,ymm1
  b7e671:	62 61 fd 28 28 74 24 	vmovapd ymm30,YMMWORD PTR [rsp+0xa0]
  b7e678:	05 
  b7e679:	62 81 fd 20 58 c6    	vaddpd ymm16,ymm16,ymm30
  b7e67f:	c5 7d 28 54 24 20    	vmovapd ymm10,YMMWORD PTR [rsp+0x20]
  b7e685:	62 d1 fd 20 58 e2    	vaddpd ymm4,ymm16,ymm10
  b7e68b:	c5 fd 29 a4 24 60 01 	vmovapd YMMWORD PTR [rsp+0x160],ymm4
  b7e692:	00 00 
  b7e694:	62 12 dd 20 bc c2    	vfnmadd231pd ymm8,ymm20,ymm26
  b7e69a:	62 12 f5 20 bc c3    	vfnmadd231pd ymm8,ymm17,ymm27
  b7e6a0:	62 02 dd 20 bc eb    	vfnmadd231pd ymm29,ymm20,ymm27
  b7e6a6:	62 32 8d 28 b8 fc    	vfmadd231pd ymm15,ymm14,ymm20
  b7e6ac:	62 c1 e5 20 59 e5    	vmulpd ymm20,ymm19,ymm13
  b7e6b2:	62 c2 c5 20 b8 e3    	vfmadd231pd ymm20,ymm23,ymm11
  b7e6b8:	62 61 fd 28 28 7c 24 	vmovapd ymm31,YMMWORD PTR [rsp+0x80]
  b7e6bf:	04 
  b7e6c0:	62 c2 85 20 b8 e1    	vfmadd231pd ymm20,ymm31,ymm9
  b7e6c6:	62 42 f5 20 b8 ee    	vfmadd231pd ymm29,ymm17,ymm14
  b7e6cc:	62 32 ad 20 bc f9    	vfnmadd231pd ymm15,ymm26,ymm17
  b7e6d2:	62 c1 c5 20 59 c5    	vmulpd ymm16,ymm23,ymm13
  b7e6d8:	62 c2 e5 20 bc c1    	vfnmadd231pd ymm16,ymm19,ymm9
  b7e6de:	62 c1 c5 20 59 c9    	vmulpd ymm17,ymm23,ymm9
  b7e6e4:	62 a2 a5 28 bc cb    	vfnmadd231pd ymm17,ymm11,ymm19
  b7e6ea:	62 c1 fd 28 28 de    	vmovapd ymm19,ymm14
  b7e6f0:	62 e2 f5 28 a8 d8    	vfmadd213pd ymm19,ymm1,ymm0
  b7e6f6:	62 c2 85 20 bc c3    	vfnmadd231pd ymm16,ymm31,ymm11
  b7e6fc:	62 82 95 28 b8 cf    	vfmadd231pd ymm17,ymm13,ymm31
  b7e702:	62 81 fd 28 28 fa    	vmovapd ymm23,ymm26
  b7e708:	62 e2 f5 28 ac f8    	vfnmadd213pd ymm23,ymm1,ymm0
  b7e70e:	62 f2 a5 20 bc c1    	vfnmadd231pd ymm0,ymm27,ymm1
  b7e714:	62 21 fd 28 28 fa    	vmovapd ymm31,ymm18
  b7e71a:	62 f1 ed 20 58 cc    	vaddpd ymm1,ymm18,ymm4
  b7e720:	c5 fd 29 4c 24 40    	vmovapd YMMWORD PTR [rsp+0x40],ymm1
  b7e726:	62 82 8d 20 bc da    	vfnmadd231pd ymm19,ymm30,ymm26
  b7e72c:	62 82 ad 28 bc db    	vfnmadd231pd ymm19,ymm10,ymm27
  b7e732:	62 82 8d 20 bc fb    	vfnmadd231pd ymm23,ymm30,ymm27
  b7e738:	62 92 8d 28 b8 c6    	vfmadd231pd ymm0,ymm14,ymm30
  b7e73e:	62 61 fd 28 28 5c 24 	vmovapd ymm27,YMMWORD PTR [rsp+0x60]
  b7e745:	03 
  b7e746:	62 c1 a5 20 59 d5    	vmulpd ymm18,ymm27,ymm13
  b7e74c:	62 c2 bd 20 b8 d3    	vfmadd231pd ymm18,ymm24,ymm11
  b7e752:	62 c2 ad 28 b8 fe    	vfmadd231pd ymm23,ymm10,ymm14
  b7e758:	62 d2 ad 20 bc c2    	vfnmadd231pd ymm0,ymm26,ymm10
  b7e75e:	62 41 bd 20 59 d5    	vmulpd ymm26,ymm24,ymm13
  b7e764:	62 42 a5 20 bc d1    	vfnmadd231pd ymm26,ymm27,ymm9
  b7e76a:	62 41 bd 20 59 c1    	vmulpd ymm24,ymm24,ymm9
  b7e770:	62 02 a5 28 bc c3    	vfnmadd231pd ymm24,ymm11,ymm27
  b7e776:	c5 fd 28 a4 24 80 01 	vmovapd ymm4,YMMWORD PTR [rsp+0x180]
  b7e77d:	00 00 
  b7e77f:	62 31 dd 28 58 d5    	vaddpd ymm10,ymm4,ymm21
  b7e785:	c5 7d 28 34 24       	vmovapd ymm14,YMMWORD PTR [rsp]
  b7e78a:	62 c2 8d 28 b8 d1    	vfmadd231pd ymm18,ymm14,ymm9
  b7e790:	62 42 8d 28 bc d3    	vfnmadd231pd ymm26,ymm14,ymm11
  b7e796:	62 42 95 28 b8 c6    	vfmadd231pd ymm24,ymm13,ymm14
  b7e79c:	62 f1 9d 20 58 ce    	vaddpd ymm1,ymm28,ymm6
  b7e7a2:	c5 fd 29 0c 24       	vmovapd YMMWORD PTR [rsp],ymm1
  b7e7a7:	62 f1 9d 20 5c ce    	vsubpd ymm1,ymm28,ymm6
  b7e7ad:	c5 fd 29 4c 24 20    	vmovapd YMMWORD PTR [rsp+0x20],ymm1
  b7e7b3:	c5 fd 28 8c 24 00 01 	vmovapd ymm1,YMMWORD PTR [rsp+0x100]
  b7e7ba:	00 00 
  b7e7bc:	c5 75 58 ea          	vaddpd ymm13,ymm1,ymm2
  b7e7c0:	c5 f5 5c ca          	vsubpd ymm1,ymm1,ymm2
  b7e7c4:	62 21 85 28 5c d9    	vsubpd ymm27,ymm15,ymm17
  b7e7ca:	62 41 f5 20 58 f7    	vaddpd ymm30,ymm17,ymm15
  b7e7d0:	62 11 fd 28 5c f8    	vsubpd ymm15,ymm0,ymm24
  b7e7d6:	62 91 fd 28 58 f0    	vaddpd ymm6,ymm0,ymm24
  b7e7dc:	62 c1 cd 20 58 cc    	vaddpd ymm17,ymm22,ymm12
  b7e7e2:	62 51 cd 20 5c e4    	vsubpd ymm12,ymm22,ymm12
  b7e7e8:	62 81 c5 28 58 f1    	vaddpd ymm22,ymm7,ymm25
  b7e7ee:	62 91 c5 28 5c f9    	vsubpd ymm7,ymm7,ymm25
  b7e7f4:	62 31 95 20 5c d8    	vsubpd ymm11,ymm29,ymm16
  b7e7fa:	62 01 fd 20 58 cd    	vaddpd ymm25,ymm16,ymm29
  b7e800:	62 81 c5 20 5c c2    	vsubpd ymm16,ymm23,ymm26
  b7e806:	62 81 c5 20 58 fa    	vaddpd ymm23,ymm23,ymm26
  b7e80c:	62 61 e5 28 58 d5    	vaddpd ymm26,ymm3,ymm5
  b7e812:	62 b1 dd 28 5c d5    	vsubpd ymm2,ymm4,ymm21
  b7e818:	62 91 ad 28 5c c2    	vsubpd ymm0,ymm10,ymm26
  b7e81e:	c5 fd 29 84 24 40 01 	vmovapd YMMWORD PTR [rsp+0x140],ymm0
  b7e825:	00 00 
  b7e827:	c5 e5 5c e5          	vsubpd ymm4,ymm3,ymm5
  b7e82b:	62 b1 bd 28 5c dc    	vsubpd ymm3,ymm8,ymm20
  b7e831:	62 51 dd 20 58 c0    	vaddpd ymm8,ymm20,ymm8
  b7e837:	62 a1 e5 20 5c e2    	vsubpd ymm20,ymm19,ymm18
  b7e83d:	62 a1 e5 20 58 d2    	vaddpd ymm18,ymm19,ymm18
  b7e843:	62 31 e5 28 5c f4    	vsubpd ymm14,ymm3,ymm20
  b7e849:	c5 7d 28 8c 24 c0 01 	vmovapd ymm9,YMMWORD PTR [rsp+0x1c0]
  b7e850:	00 00 
  b7e852:	c5 b5 5c 84 24 e0 01 	vsubpd ymm0,ymm9,YMMWORD PTR [rsp+0x1e0]
  b7e859:	00 00 
  b7e85b:	c5 fd 29 84 24 40 02 	vmovapd YMMWORD PTR [rsp+0x240],ymm0
  b7e862:	00 00 
  b7e864:	62 b1 f5 20 58 c6    	vaddpd ymm0,ymm17,ymm22
  b7e86a:	c5 fd 29 84 24 80 02 	vmovapd YMMWORD PTR [rsp+0x280],ymm0
  b7e871:	00 00 
  b7e873:	62 61 85 20 5c 7c 24 	vsubpd ymm31,ymm31,YMMWORD PTR [rsp+0x160]
  b7e87a:	0b 
  b7e87b:	62 21 a5 28 58 e0    	vaddpd ymm28,ymm11,ymm16
  b7e881:	62 91 ad 28 58 c2    	vaddpd ymm0,ymm10,ymm26
  b7e887:	c5 fd 29 84 24 20 02 	vmovapd YMMWORD PTR [rsp+0x220],ymm0
  b7e88e:	00 00 
  b7e890:	c5 fd 28 2c 24       	vmovapd ymm5,YMMWORD PTR [rsp]
  b7e895:	62 c1 d5 28 5c dd    	vsubpd ymm19,ymm5,ymm13
  b7e89b:	62 21 e5 28 58 d4    	vaddpd ymm26,ymm3,ymm20
  b7e8a1:	62 c1 a5 20 5c ef    	vsubpd ymm21,ymm27,ymm15
  b7e8a7:	62 a1 f5 20 5c f6    	vsubpd ymm22,ymm17,ymm22
  b7e8ad:	c5 fd 28 5c 24 20    	vmovapd ymm3,YMMWORD PTR [rsp+0x20]
  b7e8b3:	62 61 e5 28 58 e9    	vaddpd ymm29,ymm3,ymm1
  b7e8b9:	62 31 a5 28 5c c8    	vsubpd ymm9,ymm11,ymm16
  b7e8bf:	62 61 8d 20 58 c6    	vaddpd ymm24,ymm30,ymm6
  b7e8c5:	c5 15 58 dd          	vaddpd ymm11,ymm13,ymm5
  b7e8c9:	c5 1d 5c ef          	vsubpd ymm13,ymm12,ymm7
  b7e8cd:	62 51 a5 20 58 d7    	vaddpd ymm10,ymm27,ymm15
  b7e8d3:	62 a1 b5 20 5c cf    	vsubpd ymm17,ymm25,ymm23
  b7e8d9:	c5 e5 5c d9          	vsubpd ymm3,ymm3,ymm1
  b7e8dd:	c5 fd 29 9c 24 a0 02 	vmovapd YMMWORD PTR [rsp+0x2a0],ymm3
  b7e8e4:	00 00 
  b7e8e6:	c5 fd 28 4c 24 40    	vmovapd ymm1,YMMWORD PTR [rsp+0x40]
  b7e8ec:	62 e1 ed 28 58 e4    	vaddpd ymm20,ymm2,ymm4
  b7e8f2:	62 61 8d 20 5c de    	vsubpd ymm27,ymm30,ymm6
  b7e8f8:	c5 7d 29 f5          	vmovapd ymm5,ymm14
  b7e8fc:	62 31 bd 28 58 fa    	vaddpd ymm15,ymm8,ymm18
  b7e902:	c5 1d 58 e7          	vaddpd ymm12,ymm12,ymm7
  b7e906:	62 31 b5 20 58 f7    	vaddpd ymm14,ymm25,ymm23
  b7e90c:	62 61 ed 28 5c cc    	vsubpd ymm25,ymm2,ymm4
  b7e912:	62 b1 bd 28 5c fa    	vsubpd ymm7,ymm8,ymm18
  b7e918:	c5 fd 28 a4 24 e0 00 	vmovapd ymm4,YMMWORD PTR [rsp+0xe0]
  b7e91f:	00 00 
  b7e921:	c5 fd 29 21          	vmovapd YMMWORD PTR [rcx],ymm4
  b7e925:	c5 fd 29 08          	vmovapd YMMWORD PTR [rax],ymm1
  b7e929:	c5 fd 28 b4 24 40 01 	vmovapd ymm6,YMMWORD PTR [rsp+0x140]
  b7e930:	00 00 
  b7e932:	c5 fd 29 b4 24 e0 02 	vmovapd YMMWORD PTR [rsp+0x2e0],ymm6
  b7e939:	00 00 
  b7e93b:	c5 fd 29 ac 24 a0 04 	vmovapd YMMWORD PTR [rsp+0x4a0],ymm5
  b7e942:	00 00 
  b7e944:	c5 7d 28 84 24 80 02 	vmovapd ymm8,YMMWORD PTR [rsp+0x280]
  b7e94b:	00 00 
  b7e94d:	c5 7d 29 84 24 00 03 	vmovapd YMMWORD PTR [rsp+0x300],ymm8
  b7e954:	00 00 
  b7e956:	62 61 fd 28 29 64 24 	vmovapd YMMWORD PTR [rsp+0x4c0],ymm28
  b7e95d:	26 
  b7e95e:	62 e1 fd 28 29 5c 24 	vmovapd YMMWORD PTR [rsp+0x320],ymm19
  b7e965:	19 
  b7e966:	62 e1 fd 28 29 6c 24 	vmovapd YMMWORD PTR [rsp+0x4e0],ymm21
  b7e96d:	27 
  b7e96e:	62 61 fd 28 29 6c 24 	vmovapd YMMWORD PTR [rsp+0x340],ymm29
  b7e975:	1a 
  b7e976:	62 61 fd 28 29 44 24 	vmovapd YMMWORD PTR [rsp+0x500],ymm24
  b7e97d:	28 
  b7e97e:	c5 7d 29 ac 24 60 03 	vmovapd YMMWORD PTR [rsp+0x360],ymm13
  b7e985:	00 00 
  b7e987:	62 e1 fd 28 29 4c 24 	vmovapd YMMWORD PTR [rsp+0x520],ymm17
  b7e98e:	29 
  b7e98f:	62 e1 fd 28 29 64 24 	vmovapd YMMWORD PTR [rsp+0x380],ymm20
  b7e996:	1c 
  b7e997:	c5 7d 29 bc 24 40 05 	vmovapd YMMWORD PTR [rsp+0x540],ymm15
  b7e99e:	00 00 
  b7e9a0:	62 e1 fd 28 28 54 24 	vmovapd ymm18,YMMWORD PTR [rsp+0x240]
  b7e9a7:	12 
  b7e9a8:	62 e1 fd 28 29 54 24 	vmovapd YMMWORD PTR [rsp+0x3a0],ymm18
  b7e9af:	1d 
  b7e9b0:	62 61 fd 28 29 7c 24 	vmovapd YMMWORD PTR [rsp+0x560],ymm31
  b7e9b7:	2b 
  b7e9b8:	c5 fd 29 84 24 c0 03 	vmovapd YMMWORD PTR [rsp+0x3c0],ymm0
  b7e9bf:	00 00 
  b7e9c1:	62 61 fd 28 29 54 24 	vmovapd YMMWORD PTR [rsp+0x580],ymm26
  b7e9c8:	2c 
  b7e9c9:	62 e1 fd 28 29 74 24 	vmovapd YMMWORD PTR [rsp+0x3e0],ymm22
  b7e9d0:	1f 
  b7e9d1:	c5 7d 29 8c 24 a0 05 	vmovapd YMMWORD PTR [rsp+0x5a0],ymm9
  b7e9d8:	00 00 
  b7e9da:	c5 7d 29 9c 24 00 04 	vmovapd YMMWORD PTR [rsp+0x400],ymm11
  b7e9e1:	00 00 
  b7e9e3:	c5 7d 29 94 24 c0 05 	vmovapd YMMWORD PTR [rsp+0x5c0],ymm10
  b7e9ea:	00 00 
  b7e9ec:	c5 fd 29 9c 24 20 04 	vmovapd YMMWORD PTR [rsp+0x420],ymm3
  b7e9f3:	00 00 
  b7e9f5:	62 61 fd 28 29 5c 24 	vmovapd YMMWORD PTR [rsp+0x5e0],ymm27
  b7e9fc:	2f 
  b7e9fd:	c5 7d 29 a4 24 40 04 	vmovapd YMMWORD PTR [rsp+0x440],ymm12
  b7ea04:	00 00 
  b7ea06:	c5 7d 29 b4 24 00 06 	vmovapd YMMWORD PTR [rsp+0x600],ymm14
  b7ea0d:	00 00 
  b7ea0f:	62 61 fd 28 29 4c 24 	vmovapd YMMWORD PTR [rsp+0x460],ymm25
  b7ea16:	23 
  b7ea17:	c5 fd 29 bc 24 20 06 	vmovapd YMMWORD PTR [rsp+0x620],ymm7
  b7ea1e:	00 00 
  b7ea20:	62 e1 fd 28 28 f9    	vmovapd ymm23,ymm1
  b7ea26:	c5 fd 28 1d 32 81 4f 	vmovapd ymm3,YMMWORD PTR [rip+0xffffffffff4f8132]        # 76b60 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4010>
  b7ea2d:	ff 
  b7ea2e:	62 e2 e5 28 7f fc    	vpermt2pd ymm23,ymm3,ymm4
  b7ea34:	62 e1 fd 28 28 05 02 	vmovapd ymm16,YMMWORD PTR [rip+0xffffffffff4f8c02]        # 77640 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4af0>
  b7ea3b:	8c 4f ff 
  b7ea3e:	62 f2 fd 20 7f cc    	vpermt2pd ymm1,ymm16,ymm4
  b7ea44:	62 61 fd 28 28 f5    	vmovapd ymm30,ymm5
  b7ea4a:	c5 fd 28 e6          	vmovapd ymm4,ymm6
  b7ea4e:	62 62 e5 28 7f f6    	vpermt2pd ymm30,ymm3,ymm6
  b7ea54:	c5 7d 29 c6          	vmovapd ymm6,ymm8
  b7ea58:	62 61 fd 28 29 64 24 	vmovapd YMMWORD PTR [rsp+0x260],ymm28
  b7ea5f:	13 
  b7ea60:	62 42 e5 28 7f e0    	vpermt2pd ymm28,ymm3,ymm8
  b7ea66:	62 e1 fd 28 29 6c 24 	vmovapd YMMWORD PTR [rsp+0x160],ymm21
  b7ea6d:	0b 
  b7ea6e:	62 e1 fd 28 29 5c 24 	vmovapd YMMWORD PTR [rsp+0x100],ymm19
  b7ea75:	08 
  b7ea76:	62 a2 e5 28 7f eb    	vpermt2pd ymm21,ymm3,ymm19
  b7ea7c:	62 61 fd 28 29 44 24 	vmovapd YMMWORD PTR [rsp+0x180],ymm24
  b7ea83:	0c 
  b7ea84:	62 61 fd 28 29 6c 24 	vmovapd YMMWORD PTR [rsp+0x120],ymm29
  b7ea8b:	09 
  b7ea8c:	62 02 e5 28 7f c5    	vpermt2pd ymm24,ymm3,ymm29
  b7ea92:	62 31 fd 28 28 c1    	vmovapd ymm8,ymm17
  b7ea98:	c5 7d 29 ac 24 a0 01 	vmovapd YMMWORD PTR [rsp+0x1a0],ymm13
  b7ea9f:	00 00 
  b7eaa1:	62 52 e5 28 7f c5    	vpermt2pd ymm8,ymm3,ymm13
  b7eaa7:	c4 41 7d 28 ef       	vmovapd ymm13,ymm15
  b7eaac:	62 e1 fd 28 29 64 24 	vmovapd YMMWORD PTR [rsp+0x1c0],ymm20
  b7eab3:	0e 
  b7eab4:	62 32 e5 28 7f fc    	vpermt2pd ymm15,ymm3,ymm20
  b7eaba:	62 61 fd 28 29 7c 24 	vmovapd YMMWORD PTR [rsp+0x1e0],ymm31
  b7eac1:	0f 
  b7eac2:	62 81 fd 28 28 e7    	vmovapd ymm20,ymm31
  b7eac8:	62 21 fd 28 28 fa    	vmovapd ymm31,ymm18
  b7eace:	62 a2 e5 28 7f e2    	vpermt2pd ymm20,ymm3,ymm18
  b7ead4:	62 61 fd 28 29 54 24 	vmovapd YMMWORD PTR [rsp+0x200],ymm26
  b7eadb:	10 
  b7eadc:	62 81 fd 28 28 d2    	vmovapd ymm18,ymm26
  b7eae2:	62 61 fd 28 28 54 24 	vmovapd ymm26,YMMWORD PTR [rsp+0x220]
  b7eae9:	11 
  b7eaea:	62 82 e5 28 7f d2    	vpermt2pd ymm18,ymm3,ymm26
  b7eaf0:	c5 7d 29 8c 24 80 00 	vmovapd YMMWORD PTR [rsp+0x80],ymm9
  b7eaf7:	00 00 
  b7eaf9:	62 e1 fd 28 29 74 24 	vmovapd YMMWORD PTR [rsp+0x60],ymm22
  b7eb00:	03 
  b7eb01:	62 32 e5 28 7f ce    	vpermt2pd ymm9,ymm3,ymm22
  b7eb07:	c5 7d 29 94 24 c0 00 	vmovapd YMMWORD PTR [rsp+0xc0],ymm10
  b7eb0e:	00 00 
  b7eb10:	c5 7d 29 9c 24 a0 00 	vmovapd YMMWORD PTR [rsp+0xa0],ymm11
  b7eb17:	00 00 
  b7eb19:	62 52 e5 28 7f d3    	vpermt2pd ymm10,ymm3,ymm11
  b7eb1f:	62 61 fd 28 29 1c 24 	vmovapd YMMWORD PTR [rsp],ymm27
  b7eb26:	62 11 fd 28 28 db    	vmovapd ymm11,ymm27
  b7eb2c:	62 61 fd 28 28 5c 24 	vmovapd ymm27,YMMWORD PTR [rsp+0x2a0]
  b7eb33:	15 
  b7eb34:	62 12 e5 28 7f db    	vpermt2pd ymm11,ymm3,ymm27
  b7eb3a:	c5 7d 29 b4 24 e0 00 	vmovapd YMMWORD PTR [rsp+0xe0],ymm14
  b7eb41:	00 00 
  b7eb43:	c5 7d 29 64 24 20    	vmovapd YMMWORD PTR [rsp+0x20],ymm12
  b7eb49:	62 52 e5 28 7f f4    	vpermt2pd ymm14,ymm3,ymm12
  b7eb4f:	c5 fd 29 7c 24 40    	vmovapd YMMWORD PTR [rsp+0x40],ymm7
  b7eb55:	62 92 e5 28 7f f9    	vpermt2pd ymm7,ymm3,ymm25
  b7eb5b:	49 83 fb 0c          	cmp    r11,0xc
  b7eb5f:	0f 82 ab f1 ff ff    	jb     b7dd10 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0xf90>
  b7eb65:	62 a1 fd 28 11 3c 0e 	vmovupd YMMWORD PTR [rsi+r9*1],ymm23
  b7eb6c:	c4 a1 79 11 4c 0e 20 	vmovupd XMMWORD PTR [rsi+r9*1+0x20],xmm1
  b7eb73:	62 21 fd 28 11 b4 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0xf0],ymm30
  b7eb7a:	f0 00 00 00 
  b7eb7e:	c4 e3 7d 19 e1 01    	vextractf128 xmm1,ymm4,0x1
  b7eb84:	c4 e3 7d 19 e8 01    	vextractf128 xmm0,ymm5,0x1
  b7eb8a:	c5 f9 14 c1          	vunpcklpd xmm0,xmm0,xmm1
  b7eb8e:	c4 a1 79 11 84 0e 10 	vmovupd XMMWORD PTR [rsi+r9*1+0x110],xmm0
  b7eb95:	01 00 00 
  b7eb98:	62 21 fd 28 11 64 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0x1e0],ymm28
  b7eb9f:	0f 
  b7eba0:	c4 e3 7d 19 f0 01    	vextractf128 xmm0,ymm6,0x1
  b7eba6:	c5 fd 28 8c 24 60 02 	vmovapd ymm1,YMMWORD PTR [rsp+0x260]
  b7ebad:	00 00 
  b7ebaf:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  b7ebb5:	c5 f1 14 c0          	vunpcklpd xmm0,xmm1,xmm0
  b7ebb9:	c4 a1 79 11 84 0e 00 	vmovupd XMMWORD PTR [rsi+r9*1+0x200],xmm0
  b7ebc0:	02 00 00 
  b7ebc3:	62 a1 fd 28 11 ac 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0x2d0],ymm21
  b7ebca:	d0 02 00 00 
  b7ebce:	c5 fc 28 84 24 00 01 	vmovaps ymm0,YMMWORD PTR [rsp+0x100]
  b7ebd5:	00 00 
  b7ebd7:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  b7ebdd:	c5 fc 28 8c 24 60 01 	vmovaps ymm1,YMMWORD PTR [rsp+0x160]
  b7ebe4:	00 00 
  b7ebe6:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  b7ebec:	c5 f0 16 c0          	vmovlhps xmm0,xmm1,xmm0
  b7ebf0:	c4 a1 78 11 84 0e f0 	vmovups XMMWORD PTR [rsi+r9*1+0x2f0],xmm0
  b7ebf7:	02 00 00 
  b7ebfa:	62 21 fd 28 11 44 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0x3c0],ymm24
  b7ec01:	1e 
  b7ec02:	c5 fc 28 84 24 20 01 	vmovaps ymm0,YMMWORD PTR [rsp+0x120]
  b7ec09:	00 00 
  b7ec0b:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  b7ec11:	c5 fc 28 8c 24 80 01 	vmovaps ymm1,YMMWORD PTR [rsp+0x180]
  b7ec18:	00 00 
  b7ec1a:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  b7ec20:	c5 f0 16 c0          	vmovlhps xmm0,xmm1,xmm0
  b7ec24:	c4 a1 78 11 84 0e e0 	vmovups XMMWORD PTR [rsi+r9*1+0x3e0],xmm0
  b7ec2b:	03 00 00 
  b7ec2e:	c4 21 7d 11 84 0e b0 	vmovupd YMMWORD PTR [rsi+r9*1+0x4b0],ymm8
  b7ec35:	04 00 00 
  b7ec38:	c5 fd 28 84 24 a0 01 	vmovapd ymm0,YMMWORD PTR [rsp+0x1a0]
  b7ec3f:	00 00 
  b7ec41:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  b7ec47:	62 e3 7d 28 19 c9 01 	vextractf32x4 xmm1,ymm17,0x1
  b7ec4e:	c5 f1 14 c0          	vunpcklpd xmm0,xmm1,xmm0
  b7ec52:	c4 a1 79 11 84 0e d0 	vmovupd XMMWORD PTR [rsi+r9*1+0x4d0],xmm0
  b7ec59:	04 00 00 
  b7ec5c:	c4 21 7d 11 bc 0e a0 	vmovupd YMMWORD PTR [rsi+r9*1+0x5a0],ymm15
  b7ec63:	05 00 00 
  b7ec66:	c5 fd 28 84 24 c0 01 	vmovapd ymm0,YMMWORD PTR [rsp+0x1c0]
  b7ec6d:	00 00 
  b7ec6f:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  b7ec75:	c4 63 7d 19 e9 01    	vextractf128 xmm1,ymm13,0x1
  b7ec7b:	c5 f1 14 c0          	vunpcklpd xmm0,xmm1,xmm0
  b7ec7f:	c4 a1 79 11 84 0e c0 	vmovupd XMMWORD PTR [rsi+r9*1+0x5c0],xmm0
  b7ec86:	05 00 00 
  b7ec89:	62 a1 fd 28 11 a4 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0x690],ymm20
  b7ec90:	90 06 00 00 
  b7ec94:	62 63 7d 28 19 f8 01 	vextractf32x4 xmm0,ymm31,0x1
  b7ec9b:	c5 fd 28 8c 24 e0 01 	vmovapd ymm1,YMMWORD PTR [rsp+0x1e0]
  b7eca2:	00 00 
  b7eca4:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  b7ecaa:	c5 f1 14 c0          	vunpcklpd xmm0,xmm1,xmm0
  b7ecae:	c4 a1 79 11 84 0e b0 	vmovupd XMMWORD PTR [rsi+r9*1+0x6b0],xmm0
  b7ecb5:	06 00 00 
  b7ecb8:	62 a1 fd 28 11 54 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0x780],ymm18
  b7ecbf:	3c 
  b7ecc0:	62 63 7d 28 19 d0 01 	vextractf32x4 xmm0,ymm26,0x1
  b7ecc7:	c5 fd 28 8c 24 00 02 	vmovapd ymm1,YMMWORD PTR [rsp+0x200]
  b7ecce:	00 00 
  b7ecd0:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  b7ecd6:	c5 f1 14 c0          	vunpcklpd xmm0,xmm1,xmm0
  b7ecda:	c4 a1 79 11 84 0e a0 	vmovupd XMMWORD PTR [rsi+r9*1+0x7a0],xmm0
  b7ece1:	07 00 00 
  b7ece4:	c4 21 7d 11 8c 0e 70 	vmovupd YMMWORD PTR [rsi+r9*1+0x870],ymm9
  b7eceb:	08 00 00 
  b7ecee:	c5 fc 28 44 24 60    	vmovaps ymm0,YMMWORD PTR [rsp+0x60]
  b7ecf4:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  b7ecfa:	c5 fc 28 8c 24 80 00 	vmovaps ymm1,YMMWORD PTR [rsp+0x80]
  b7ed01:	00 00 
  b7ed03:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  b7ed09:	c5 f0 16 c0          	vmovlhps xmm0,xmm1,xmm0
  b7ed0d:	c4 a1 78 11 84 0e 90 	vmovups XMMWORD PTR [rsi+r9*1+0x890],xmm0
  b7ed14:	08 00 00 
  b7ed17:	c4 21 7d 11 94 0e 60 	vmovupd YMMWORD PTR [rsi+r9*1+0x960],ymm10
  b7ed1e:	09 00 00 
  b7ed21:	c5 fc 28 84 24 a0 00 	vmovaps ymm0,YMMWORD PTR [rsp+0xa0]
  b7ed28:	00 00 
  b7ed2a:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  b7ed30:	c5 fc 28 8c 24 c0 00 	vmovaps ymm1,YMMWORD PTR [rsp+0xc0]
  b7ed37:	00 00 
  b7ed39:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  b7ed3f:	c5 f0 16 c0          	vmovlhps xmm0,xmm1,xmm0
  b7ed43:	c4 a1 78 11 84 0e 80 	vmovups XMMWORD PTR [rsi+r9*1+0x980],xmm0
  b7ed4a:	09 00 00 
  b7ed4d:	c4 21 7d 11 9c 0e 50 	vmovupd YMMWORD PTR [rsi+r9*1+0xa50],ymm11
  b7ed54:	0a 00 00 
  b7ed57:	62 63 7d 28 19 d8 01 	vextractf32x4 xmm0,ymm27,0x1
  b7ed5e:	c5 fd 28 0c 24       	vmovapd ymm1,YMMWORD PTR [rsp]
  b7ed63:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  b7ed69:	c5 f1 14 c0          	vunpcklpd xmm0,xmm1,xmm0
  b7ed6d:	c4 a1 79 11 84 0e 70 	vmovupd XMMWORD PTR [rsi+r9*1+0xa70],xmm0
  b7ed74:	0a 00 00 
  b7ed77:	c4 21 7d 11 b4 0e 40 	vmovupd YMMWORD PTR [rsi+r9*1+0xb40],ymm14
  b7ed7e:	0b 00 00 
  b7ed81:	c5 fc 28 44 24 20    	vmovaps ymm0,YMMWORD PTR [rsp+0x20]
  b7ed87:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  b7ed8d:	c5 fc 28 8c 24 e0 00 	vmovaps ymm1,YMMWORD PTR [rsp+0xe0]
  b7ed94:	00 00 
  b7ed96:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  b7ed9c:	c5 f0 16 c0          	vmovlhps xmm0,xmm1,xmm0
  b7eda0:	c4 a1 78 11 84 0e 60 	vmovups XMMWORD PTR [rsi+r9*1+0xb60],xmm0
  b7eda7:	0b 00 00 
  b7edaa:	c4 a1 7d 11 bc 0e 30 	vmovupd YMMWORD PTR [rsi+r9*1+0xc30],ymm7
  b7edb1:	0c 00 00 
  b7edb4:	62 63 7d 28 19 c8 01 	vextractf32x4 xmm0,ymm25,0x1
  b7edbb:	c5 fd 28 4c 24 40    	vmovapd ymm1,YMMWORD PTR [rsp+0x40]
  b7edc1:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  b7edc7:	c5 f1 14 c0          	vunpcklpd xmm0,xmm1,xmm0
  b7edcb:	c4 a1 79 11 84 0e 50 	vmovupd XMMWORD PTR [rsi+r9*1+0xc50],xmm0
  b7edd2:	0c 00 00 
  b7edd5:	e9 f5 f0 ff ff       	jmp    b7decf <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x114f>
  b7edda:	48 8d 65 f0          	lea    rsp,[rbp-0x10]
  b7edde:	5b                   	pop    rbx
  b7eddf:	41 5e                	pop    r14
  b7ede1:	5d                   	pop    rbp
  b7ede2:	c5 f8 77             	vzeroupper
  b7ede5:	c3                   	ret
