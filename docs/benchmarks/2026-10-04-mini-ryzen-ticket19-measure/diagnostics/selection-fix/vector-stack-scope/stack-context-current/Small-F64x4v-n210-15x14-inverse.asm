
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b7aa80 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle>:
  b7aa80:	55                   	push   rbp
  b7aa81:	48 89 e5             	mov    rbp,rsp
  b7aa84:	41 56                	push   r14
  b7aa86:	53                   	push   rbx
  b7aa87:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  b7aa8b:	48 81 ec c0 0f 00 00 	sub    rsp,0xfc0
  b7aa92:	48 c7 04 24 00 00 00 	mov    QWORD PTR [rsp],0x0
  b7aa99:	00 
  b7aa9a:	48 81 ec c0 0b 00 00 	sub    rsp,0xbc0
  b7aaa1:	48 8d 84 24 80 04 00 	lea    rax,[rsp+0x480]
  b7aaa8:	00 
  b7aaa9:	48 8d 8c 24 c0 02 00 	lea    rcx,[rsp+0x2c0]
  b7aab0:	00 
  b7aab1:	c6 84 24 00 0b 00 00 	mov    BYTE PTR [rsp+0xb00],0x0
  b7aab8:	00 
  b7aab9:	4c 8d 84 24 00 0b 00 	lea    r8,[rsp+0xb00]
  b7aac0:	00 
  b7aac1:	4c 89 84 24 40 0b 00 	mov    QWORD PTR [rsp+0xb40],r8
  b7aac8:	00 
  b7aac9:	4c 8d 84 24 40 0b 00 	lea    r8,[rsp+0xb40]
  b7aad0:	00 
  b7aad1:	4c 8d 84 24 f0 0e 00 	lea    r8,[rsp+0xef0]
  b7aad8:	00 
  b7aad9:	45 31 c9             	xor    r9d,r9d
  b7aadc:	eb 1b                	jmp    b7aaf9 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x79>
  b7aade:	66 90                	xchg   ax,ax
  b7aae0:	49 83 c1 04          	add    r9,0x4
  b7aae4:	49 81 c0 c0 03 00 00 	add    r8,0x3c0
  b7aaeb:	48 83 c7 40          	add    rdi,0x40
  b7aaef:	49 83 f9 10          	cmp    r9,0x10
  b7aaf3:	0f 84 ef 0e 00 00    	je     b7b9e8 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0xf68>
  b7aaf9:	49 83 f9 0b          	cmp    r9,0xb
  b7aafd:	0f 83 6d 02 00 00    	jae    b7ad70 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x2f0>
  b7ab03:	c5 fd 10 07          	vmovupd ymm0,YMMWORD PTR [rdi]
  b7ab07:	c5 fd 10 4f 20       	vmovupd ymm1,YMMWORD PTR [rdi+0x20]
  b7ab0c:	c5 fd 10 97 e0 00 00 	vmovupd ymm2,YMMWORD PTR [rdi+0xe0]
  b7ab13:	00 
  b7ab14:	c5 fd 10 9f 00 01 00 	vmovupd ymm3,YMMWORD PTR [rdi+0x100]
  b7ab1b:	00 
  b7ab1c:	c4 e3 7d 06 e1 31    	vperm2f128 ymm4,ymm0,ymm1,0x31
  b7ab22:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  b7ab28:	c5 fd 14 cc          	vunpcklpd ymm1,ymm0,ymm4
  b7ab2c:	c5 fd 29 8c 24 c0 00 	vmovapd YMMWORD PTR [rsp+0xc0],ymm1
  b7ab33:	00 00 
  b7ab35:	c5 fd 15 c4          	vunpckhpd ymm0,ymm0,ymm4
  b7ab39:	c5 fd 29 84 24 a0 00 	vmovapd YMMWORD PTR [rsp+0xa0],ymm0
  b7ab40:	00 00 
  b7ab42:	c4 e3 6d 06 c3 31    	vperm2f128 ymm0,ymm2,ymm3,0x31
  b7ab48:	c4 e3 6d 06 cb 20    	vperm2f128 ymm1,ymm2,ymm3,0x20
  b7ab4e:	62 e1 f5 28 14 d8    	vunpcklpd ymm19,ymm1,ymm0
  b7ab54:	62 e1 f5 28 15 d0    	vunpckhpd ymm18,ymm1,ymm0
  b7ab5a:	c5 fd 10 87 c0 01 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x1c0]
  b7ab61:	00 
  b7ab62:	c5 fd 10 8f e0 01 00 	vmovupd ymm1,YMMWORD PTR [rdi+0x1e0]
  b7ab69:	00 
  b7ab6a:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  b7ab70:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  b7ab76:	62 e1 fd 28 14 f2    	vunpcklpd ymm22,ymm0,ymm2
  b7ab7c:	62 61 fd 28 15 c2    	vunpckhpd ymm24,ymm0,ymm2
  b7ab82:	c5 fd 10 87 a0 02 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x2a0]
  b7ab89:	00 
  b7ab8a:	c5 fd 10 8f c0 02 00 	vmovupd ymm1,YMMWORD PTR [rdi+0x2c0]
  b7ab91:	00 
  b7ab92:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  b7ab98:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  b7ab9e:	62 e1 fd 28 14 ea    	vunpcklpd ymm21,ymm0,ymm2
  b7aba4:	c5 fd 15 c2          	vunpckhpd ymm0,ymm0,ymm2
  b7aba8:	c5 fd 29 44 24 40    	vmovapd YMMWORD PTR [rsp+0x40],ymm0
  b7abae:	c5 fd 10 87 80 03 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x380]
  b7abb5:	00 
  b7abb6:	c5 fd 10 8f a0 03 00 	vmovupd ymm1,YMMWORD PTR [rdi+0x3a0]
  b7abbd:	00 
  b7abbe:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  b7abc4:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  b7abca:	62 61 fd 28 14 ca    	vunpcklpd ymm25,ymm0,ymm2
  b7abd0:	62 e1 fd 28 15 ca    	vunpckhpd ymm17,ymm0,ymm2
  b7abd6:	c5 fd 10 87 60 04 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x460]
  b7abdd:	00 
  b7abde:	c5 fd 10 8f 80 04 00 	vmovupd ymm1,YMMWORD PTR [rdi+0x480]
  b7abe5:	00 
  b7abe6:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  b7abec:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  b7abf2:	62 e1 fd 28 14 e2    	vunpcklpd ymm20,ymm0,ymm2
  b7abf8:	c5 fd 15 c2          	vunpckhpd ymm0,ymm0,ymm2
  b7abfc:	c5 fd 29 44 24 20    	vmovapd YMMWORD PTR [rsp+0x20],ymm0
  b7ac02:	c5 fd 10 87 40 05 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x540]
  b7ac09:	00 
  b7ac0a:	c5 fd 10 8f 60 05 00 	vmovupd ymm1,YMMWORD PTR [rdi+0x560]
  b7ac11:	00 
  b7ac12:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  b7ac18:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  b7ac1e:	62 61 fd 28 14 d2    	vunpcklpd ymm26,ymm0,ymm2
  b7ac24:	c5 fd 15 c2          	vunpckhpd ymm0,ymm0,ymm2
  b7ac28:	c5 fd 29 04 24       	vmovapd YMMWORD PTR [rsp],ymm0
  b7ac2d:	c5 fd 10 87 20 06 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x620]
  b7ac34:	00 
  b7ac35:	c5 fd 10 8f 40 06 00 	vmovupd ymm1,YMMWORD PTR [rdi+0x640]
  b7ac3c:	00 
  b7ac3d:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  b7ac43:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  b7ac49:	62 61 fd 28 14 ea    	vunpcklpd ymm29,ymm0,ymm2
  b7ac4f:	62 e1 fd 28 15 c2    	vunpckhpd ymm16,ymm0,ymm2
  b7ac55:	c5 fd 10 87 00 07 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x700]
  b7ac5c:	00 
  b7ac5d:	c5 fd 10 8f 20 07 00 	vmovupd ymm1,YMMWORD PTR [rdi+0x720]
  b7ac64:	00 
  b7ac65:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  b7ac6b:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  b7ac71:	c5 fd 14 f2          	vunpcklpd ymm6,ymm0,ymm2
  b7ac75:	c5 7d 15 e2          	vunpckhpd ymm12,ymm0,ymm2
  b7ac79:	c5 fd 10 87 e0 07 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x7e0]
  b7ac80:	00 
  b7ac81:	c5 fd 10 8f 00 08 00 	vmovupd ymm1,YMMWORD PTR [rdi+0x800]
  b7ac88:	00 
  b7ac89:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  b7ac8f:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  b7ac95:	c5 7d 14 f2          	vunpcklpd ymm14,ymm0,ymm2
  b7ac99:	62 e1 fd 28 15 fa    	vunpckhpd ymm23,ymm0,ymm2
  b7ac9f:	c5 fd 10 87 c0 08 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x8c0]
  b7aca6:	00 
  b7aca7:	c5 fd 10 8f e0 08 00 	vmovupd ymm1,YMMWORD PTR [rdi+0x8e0]
  b7acae:	00 
  b7acaf:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  b7acb5:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  b7acbb:	c5 fd 14 ca          	vunpcklpd ymm1,ymm0,ymm2
  b7acbf:	c5 fd 29 8c 24 80 00 	vmovapd YMMWORD PTR [rsp+0x80],ymm1
  b7acc6:	00 00 
  b7acc8:	c5 fd 15 c2          	vunpckhpd ymm0,ymm0,ymm2
  b7accc:	c5 fd 29 44 24 60    	vmovapd YMMWORD PTR [rsp+0x60],ymm0
  b7acd2:	c5 fd 10 87 a0 09 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x9a0]
  b7acd9:	00 
  b7acda:	c5 fd 10 8f c0 09 00 	vmovupd ymm1,YMMWORD PTR [rdi+0x9c0]
  b7ace1:	00 
  b7ace2:	c4 e3 7d 06 d1 31    	vperm2f128 ymm2,ymm0,ymm1,0x31
  b7ace8:	c4 e3 7d 06 c9 20    	vperm2f128 ymm1,ymm0,ymm1,0x20
  b7acee:	c5 f5 14 c2          	vunpcklpd ymm0,ymm1,ymm2
  b7acf2:	c5 f5 15 fa          	vunpckhpd ymm7,ymm1,ymm2
  b7acf6:	c5 fd 10 8f 80 0a 00 	vmovupd ymm1,YMMWORD PTR [rdi+0xa80]
  b7acfd:	00 
  b7acfe:	c5 fd 10 97 a0 0a 00 	vmovupd ymm2,YMMWORD PTR [rdi+0xaa0]
  b7ad05:	00 
  b7ad06:	c4 e3 75 06 da 31    	vperm2f128 ymm3,ymm1,ymm2,0x31
  b7ad0c:	c4 e3 75 06 ca 20    	vperm2f128 ymm1,ymm1,ymm2,0x20
  b7ad12:	c5 f5 14 e3          	vunpcklpd ymm4,ymm1,ymm3
  b7ad16:	62 61 f5 28 15 e3    	vunpckhpd ymm28,ymm1,ymm3
  b7ad1c:	c5 fd 10 8f 60 0b 00 	vmovupd ymm1,YMMWORD PTR [rdi+0xb60]
  b7ad23:	00 
  b7ad24:	c5 fd 10 97 80 0b 00 	vmovupd ymm2,YMMWORD PTR [rdi+0xb80]
  b7ad2b:	00 
  b7ad2c:	c4 e3 75 06 da 31    	vperm2f128 ymm3,ymm1,ymm2,0x31
  b7ad32:	c4 e3 75 06 ca 20    	vperm2f128 ymm1,ymm1,ymm2,0x20
  b7ad38:	c5 f5 14 d3          	vunpcklpd ymm2,ymm1,ymm3
  b7ad3c:	c5 f5 15 db          	vunpckhpd ymm3,ymm1,ymm3
  b7ad40:	c5 fd 10 8f 40 0c 00 	vmovupd ymm1,YMMWORD PTR [rdi+0xc40]
  b7ad47:	00 
  b7ad48:	c5 fd 10 af 60 0c 00 	vmovupd ymm5,YMMWORD PTR [rdi+0xc60]
  b7ad4f:	00 
  b7ad50:	c4 63 75 06 c5 31    	vperm2f128 ymm8,ymm1,ymm5,0x31
  b7ad56:	c4 e3 75 06 cd 20    	vperm2f128 ymm1,ymm1,ymm5,0x20
  b7ad5c:	c4 41 75 14 d8       	vunpcklpd ymm11,ymm1,ymm8
  b7ad61:	c4 c1 75 15 e8       	vunpckhpd ymm5,ymm1,ymm8
  b7ad66:	e9 16 02 00 00       	jmp    b7af81 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x501>
  b7ad6b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  b7ad70:	c5 fd 10 07          	vmovupd ymm0,YMMWORD PTR [rdi]
  b7ad74:	c5 fd 10 8f e0 00 00 	vmovupd ymm1,YMMWORD PTR [rdi+0xe0]
  b7ad7b:	00 
  b7ad7c:	c5 fd 10 97 c0 01 00 	vmovupd ymm2,YMMWORD PTR [rdi+0x1c0]
  b7ad83:	00 
  b7ad84:	c4 41 39 57 c0       	vxorpd xmm8,xmm8,xmm8
  b7ad89:	c4 c3 7d 0d d8 0a    	vblendpd ymm3,ymm0,ymm8,0xa
  b7ad8f:	c4 e3 fd 01 db f8    	vpermpd ymm3,ymm3,0xf8
  b7ad95:	c5 fd 29 9c 24 c0 00 	vmovapd YMMWORD PTR [rsp+0xc0],ymm3
  b7ad9c:	00 00 
  b7ad9e:	c4 c1 7d 15 c0       	vunpckhpd ymm0,ymm0,ymm8
  b7ada3:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  b7ada9:	c5 fd 29 84 24 a0 00 	vmovapd YMMWORD PTR [rsp+0xa0],ymm0
  b7adb0:	00 00 
  b7adb2:	c4 c3 75 0d c0 0a    	vblendpd ymm0,ymm1,ymm8,0xa
  b7adb8:	62 e3 fd 28 01 d8 f8 	vpermpd ymm19,ymm0,0xf8
  b7adbf:	c4 c1 75 15 c0       	vunpckhpd ymm0,ymm1,ymm8
  b7adc4:	62 e3 fd 28 01 d0 d8 	vpermpd ymm18,ymm0,0xd8
  b7adcb:	c4 c3 6d 0d c0 0a    	vblendpd ymm0,ymm2,ymm8,0xa
  b7add1:	62 e3 fd 28 01 f0 f8 	vpermpd ymm22,ymm0,0xf8
  b7add8:	c4 c1 6d 15 c0       	vunpckhpd ymm0,ymm2,ymm8
  b7addd:	62 63 fd 28 01 c0 d8 	vpermpd ymm24,ymm0,0xd8
  b7ade4:	c5 fd 10 87 a0 02 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x2a0]
  b7adeb:	00 
  b7adec:	c4 c3 7d 0d c8 0a    	vblendpd ymm1,ymm0,ymm8,0xa
  b7adf2:	62 e3 fd 28 01 e9 f8 	vpermpd ymm21,ymm1,0xf8
  b7adf9:	c4 c1 7d 15 c0       	vunpckhpd ymm0,ymm0,ymm8
  b7adfe:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  b7ae04:	c5 fd 29 44 24 40    	vmovapd YMMWORD PTR [rsp+0x40],ymm0
  b7ae0a:	c5 fd 10 87 80 03 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x380]
  b7ae11:	00 
  b7ae12:	c4 c3 7d 0d c8 0a    	vblendpd ymm1,ymm0,ymm8,0xa
  b7ae18:	62 63 fd 28 01 c9 f8 	vpermpd ymm25,ymm1,0xf8
  b7ae1f:	c4 c1 7d 15 c0       	vunpckhpd ymm0,ymm0,ymm8
  b7ae24:	62 e3 fd 28 01 c8 d8 	vpermpd ymm17,ymm0,0xd8
  b7ae2b:	c5 fd 10 87 60 04 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x460]
  b7ae32:	00 
  b7ae33:	c4 c3 7d 0d c8 0a    	vblendpd ymm1,ymm0,ymm8,0xa
  b7ae39:	62 e3 fd 28 01 e1 f8 	vpermpd ymm20,ymm1,0xf8
  b7ae40:	c4 c1 7d 15 c0       	vunpckhpd ymm0,ymm0,ymm8
  b7ae45:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  b7ae4b:	c5 fd 29 44 24 20    	vmovapd YMMWORD PTR [rsp+0x20],ymm0
  b7ae51:	c5 fd 10 87 40 05 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x540]
  b7ae58:	00 
  b7ae59:	c4 c3 7d 0d c8 0a    	vblendpd ymm1,ymm0,ymm8,0xa
  b7ae5f:	62 63 fd 28 01 d1 f8 	vpermpd ymm26,ymm1,0xf8
  b7ae66:	c4 c1 7d 15 c0       	vunpckhpd ymm0,ymm0,ymm8
  b7ae6b:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  b7ae71:	c5 fd 29 04 24       	vmovapd YMMWORD PTR [rsp],ymm0
  b7ae76:	c5 fd 10 87 20 06 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x620]
  b7ae7d:	00 
  b7ae7e:	c4 c3 7d 0d c8 0a    	vblendpd ymm1,ymm0,ymm8,0xa
  b7ae84:	62 63 fd 28 01 e9 f8 	vpermpd ymm29,ymm1,0xf8
  b7ae8b:	c4 c1 7d 15 c0       	vunpckhpd ymm0,ymm0,ymm8
  b7ae90:	62 e3 fd 28 01 c0 d8 	vpermpd ymm16,ymm0,0xd8
  b7ae97:	c5 fd 10 87 00 07 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x700]
  b7ae9e:	00 
  b7ae9f:	c4 c3 7d 0d c8 0a    	vblendpd ymm1,ymm0,ymm8,0xa
  b7aea5:	c4 e3 fd 01 f1 f8    	vpermpd ymm6,ymm1,0xf8
  b7aeab:	c4 c1 7d 15 c0       	vunpckhpd ymm0,ymm0,ymm8
  b7aeb0:	c4 63 fd 01 e0 d8    	vpermpd ymm12,ymm0,0xd8
  b7aeb6:	c5 fd 10 87 e0 07 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x7e0]
  b7aebd:	00 
  b7aebe:	c4 c3 7d 0d c8 0a    	vblendpd ymm1,ymm0,ymm8,0xa
  b7aec4:	c4 63 fd 01 f1 f8    	vpermpd ymm14,ymm1,0xf8
  b7aeca:	c4 c1 7d 15 c0       	vunpckhpd ymm0,ymm0,ymm8
  b7aecf:	62 e3 fd 28 01 f8 d8 	vpermpd ymm23,ymm0,0xd8
  b7aed6:	c5 fd 10 87 c0 08 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x8c0]
  b7aedd:	00 
  b7aede:	c4 c3 7d 0d c8 0a    	vblendpd ymm1,ymm0,ymm8,0xa
  b7aee4:	c4 e3 fd 01 c9 f8    	vpermpd ymm1,ymm1,0xf8
  b7aeea:	c5 fd 29 8c 24 80 00 	vmovapd YMMWORD PTR [rsp+0x80],ymm1
  b7aef1:	00 00 
  b7aef3:	c4 c1 7d 15 c0       	vunpckhpd ymm0,ymm0,ymm8
  b7aef8:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  b7aefe:	c5 fd 29 44 24 60    	vmovapd YMMWORD PTR [rsp+0x60],ymm0
  b7af04:	c5 fd 10 8f a0 09 00 	vmovupd ymm1,YMMWORD PTR [rdi+0x9a0]
  b7af0b:	00 
  b7af0c:	c4 c3 75 0d c0 0a    	vblendpd ymm0,ymm1,ymm8,0xa
  b7af12:	c4 e3 fd 01 c0 f8    	vpermpd ymm0,ymm0,0xf8
  b7af18:	c4 c1 75 15 c8       	vunpckhpd ymm1,ymm1,ymm8
  b7af1d:	c4 e3 fd 01 f9 d8    	vpermpd ymm7,ymm1,0xd8
  b7af23:	c5 fd 10 8f 80 0a 00 	vmovupd ymm1,YMMWORD PTR [rdi+0xa80]
  b7af2a:	00 
  b7af2b:	c4 c3 75 0d d0 0a    	vblendpd ymm2,ymm1,ymm8,0xa
  b7af31:	c4 e3 fd 01 e2 f8    	vpermpd ymm4,ymm2,0xf8
  b7af37:	c4 c1 75 15 c8       	vunpckhpd ymm1,ymm1,ymm8
  b7af3c:	62 63 fd 28 01 e1 d8 	vpermpd ymm28,ymm1,0xd8
  b7af43:	c5 fd 10 8f 60 0b 00 	vmovupd ymm1,YMMWORD PTR [rdi+0xb60]
  b7af4a:	00 
  b7af4b:	c4 c3 75 0d d0 0a    	vblendpd ymm2,ymm1,ymm8,0xa
  b7af51:	c4 e3 fd 01 d2 f8    	vpermpd ymm2,ymm2,0xf8
  b7af57:	c4 c1 75 15 c8       	vunpckhpd ymm1,ymm1,ymm8
  b7af5c:	c4 e3 fd 01 d9 d8    	vpermpd ymm3,ymm1,0xd8
  b7af62:	c5 fd 10 8f 40 0c 00 	vmovupd ymm1,YMMWORD PTR [rdi+0xc40]
  b7af69:	00 
  b7af6a:	c4 c3 75 0d e8 0a    	vblendpd ymm5,ymm1,ymm8,0xa
  b7af70:	c4 63 fd 01 dd f8    	vpermpd ymm11,ymm5,0xf8
  b7af76:	c4 c1 75 15 c8       	vunpckhpd ymm1,ymm1,ymm8
  b7af7b:	c4 e3 fd 01 e9 d8    	vpermpd ymm5,ymm1,0xd8
  b7af81:	62 01 9d 28 58 f0    	vaddpd ymm30,ymm12,ymm24
  b7af87:	62 b1 cd 28 58 ce    	vaddpd ymm1,ymm6,ymm22
  b7af8d:	62 31 cd 28 5c ee    	vsubpd ymm13,ymm6,ymm22
  b7af93:	c5 25 58 c8          	vaddpd ymm9,ymm11,ymm0
  b7af97:	c4 41 7d 5c d3       	vsubpd ymm10,ymm0,ymm11
  b7af9c:	62 91 ed 28 58 c5    	vaddpd ymm0,ymm2,ymm29
  b7afa2:	62 11 ed 28 5c c5    	vsubpd ymm8,ymm2,ymm29
  b7afa8:	62 11 e5 20 58 d9    	vaddpd ymm11,ymm19,ymm25
  b7afae:	62 91 e5 20 5c d1    	vsubpd ymm2,ymm19,ymm25
  b7afb4:	62 61 d5 20 58 cc    	vaddpd ymm25,ymm21,ymm4
  b7afba:	62 f1 d5 20 5c e4    	vsubpd ymm4,ymm21,ymm4
  b7afc0:	c5 fd 29 a4 24 20 01 	vmovapd YMMWORD PTR [rsp+0x120],ymm4
  b7afc7:	00 00 
  b7afc9:	62 51 ad 20 58 fe    	vaddpd ymm15,ymm26,ymm14
  b7afcf:	62 d1 ad 20 5c e6    	vsubpd ymm4,ymm26,ymm14
  b7afd5:	c5 fd 29 a4 24 40 02 	vmovapd YMMWORD PTR [rsp+0x240],ymm4
  b7afdc:	00 00 
  b7afde:	62 61 c5 28 58 dd    	vaddpd ymm27,ymm7,ymm5
  b7afe4:	62 81 9d 28 5c d8    	vsubpd ymm19,ymm12,ymm24
  b7afea:	62 e1 fd 28 29 5c 24 	vmovapd YMMWORD PTR [rsp+0x220],ymm19
  b7aff1:	11 
  b7aff2:	62 21 e5 28 58 e8    	vaddpd ymm29,ymm3,ymm16
  b7aff8:	c5 c5 5c fd          	vsubpd ymm7,ymm7,ymm5
  b7affc:	62 21 ed 20 58 f9    	vaddpd ymm31,ymm18,ymm17
  b7b002:	62 b1 fd 28 28 ea    	vmovapd ymm5,ymm18
  b7b008:	62 a1 e5 28 5c e8    	vsubpd ymm21,ymm3,ymm16
  b7b00e:	62 e1 fd 28 29 6c 24 	vmovapd YMMWORD PTR [rsp+0x140],ymm21
  b7b015:	0a 
  b7b016:	62 e2 fd 28 19 15 38 	vbroadcastsd ymm18,QWORD PTR [rip+0xffffffffff4f9a38]        # 74a58 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f08>
  b7b01d:	9a 4f ff 
  b7b020:	62 b1 fd 28 28 f2    	vmovapd ymm6,ymm18
  b7b026:	62 b2 f5 28 a8 f4    	vfmadd213pd ymm6,ymm1,ymm20
  b7b02c:	c4 62 7d 19 35 e3 9f 	vbroadcastsd ymm14,QWORD PTR [rip+0xffffffffff4f9fe3]        # 75018 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x24c8>
  b7b033:	4f ff 
  b7b035:	c4 c2 b5 bc f6       	vfnmadd231pd ymm6,ymm9,ymm14
  b7b03a:	62 31 d5 28 5c e1    	vsubpd ymm12,ymm5,ymm17
  b7b040:	62 e2 fd 28 19 05 7e 	vbroadcastsd ymm16,QWORD PTR [rip+0xffffffffff4f977e]        # 747c8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c78>
  b7b047:	97 4f ff 
  b7b04a:	62 b1 c5 28 59 e8    	vmulpd ymm5,ymm7,ymm16
  b7b050:	62 b1 fd 28 28 e4    	vmovapd ymm4,ymm20
  b7b056:	62 e2 fd 28 19 25 70 	vbroadcastsd ymm20,QWORD PTR [rip+0xffffffffff4f9b70]        # 74bd0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2080>
  b7b05d:	9b 4f ff 
  b7b060:	62 b2 e5 20 b8 ec    	vfmadd231pd ymm5,ymm19,ymm20
  b7b066:	62 a1 fd 28 28 ca    	vmovapd ymm17,ymm18
  b7b06c:	c5 fd 28 9c 24 80 00 	vmovapd ymm3,YMMWORD PTR [rsp+0x80]
  b7b073:	00 00 
  b7b075:	62 e2 fd 28 a8 cb    	vfmadd213pd ymm17,ymm0,ymm3
  b7b07b:	62 c2 a5 28 bc ce    	vfnmadd231pd ymm17,ymm11,ymm14
  b7b081:	62 a1 9d 28 59 d8    	vmulpd ymm19,ymm12,ymm16
  b7b087:	62 a2 d5 20 b8 dc    	vfmadd231pd ymm19,ymm21,ymm20
  b7b08d:	c5 fd 29 b4 24 00 02 	vmovapd YMMWORD PTR [rsp+0x200],ymm6
  b7b094:	00 00 
  b7b096:	c5 fd 29 ac 24 e0 01 	vmovapd YMMWORD PTR [rsp+0x1e0],ymm5
  b7b09d:	00 00 
  b7b09f:	c5 cd 5c ed          	vsubpd ymm5,ymm6,ymm5
  b7b0a3:	62 e1 fd 28 29 4c 24 	vmovapd YMMWORD PTR [rsp+0x1c0],ymm17
  b7b0aa:	0e 
  b7b0ab:	62 e1 fd 28 29 5c 24 	vmovapd YMMWORD PTR [rsp+0x1a0],ymm19
  b7b0b2:	0d 
  b7b0b3:	62 b1 f5 20 5c f3    	vsubpd ymm6,ymm17,ymm19
  b7b0b9:	62 e1 d5 28 5c ce    	vsubpd ymm17,ymm5,ymm6
  b7b0bf:	62 e1 fd 28 29 4c 24 	vmovapd YMMWORD PTR [rsp+0x100],ymm17
  b7b0c6:	08 
  b7b0c7:	c5 d5 58 ee          	vaddpd ymm5,ymm5,ymm6
  b7b0cb:	c5 fd 29 ac 24 e0 00 	vmovapd YMMWORD PTR [rsp+0xe0],ymm5
  b7b0d2:	00 00 
  b7b0d4:	c5 fd 28 74 24 40    	vmovapd ymm6,YMMWORD PTR [rsp+0x40]
  b7b0da:	62 91 cd 28 58 ec    	vaddpd ymm5,ymm6,ymm28
  b7b0e0:	62 91 cd 28 5c f4    	vsubpd ymm6,ymm6,ymm28
  b7b0e6:	62 e1 fd 28 28 1c 24 	vmovapd ymm19,YMMWORD PTR [rsp]
  b7b0ed:	62 a1 e5 20 58 cf    	vaddpd ymm17,ymm19,ymm23
  b7b0f3:	62 21 e5 20 5c d7    	vsubpd ymm26,ymm19,ymm23
  b7b0f9:	62 21 fd 28 28 e2    	vmovapd ymm28,ymm18
  b7b0ff:	62 e1 fd 28 28 5c 24 	vmovapd ymm19,YMMWORD PTR [rsp+0x20]
  b7b106:	01 
  b7b107:	62 22 8d 20 a8 e3    	vfmadd213pd ymm28,ymm30,ymm19
  b7b10d:	62 42 a5 20 bc e6    	vfnmadd231pd ymm28,ymm27,ymm14
  b7b113:	62 a1 ad 28 59 e8    	vmulpd ymm21,ymm10,ymm16
  b7b119:	62 a2 95 28 b8 ec    	vfmadd231pd ymm21,ymm13,ymm20
  b7b11f:	62 a1 fd 28 28 f2    	vmovapd ymm22,ymm18
  b7b125:	62 e1 fd 28 28 7c 24 	vmovapd ymm23,YMMWORD PTR [rsp+0x60]
  b7b12c:	03 
  b7b12d:	62 a2 95 20 a8 f7    	vfmadd213pd ymm22,ymm29,ymm23
  b7b133:	62 c2 85 20 bc f6    	vfnmadd231pd ymm22,ymm31,ymm14
  b7b139:	62 21 ed 28 59 c0    	vmulpd ymm24,ymm2,ymm16
  b7b13f:	62 22 bd 28 b8 c4    	vfmadd231pd ymm24,ymm8,ymm20
  b7b145:	62 e1 fd 28 29 6c 24 	vmovapd YMMWORD PTR [rsp+0x180],ymm21
  b7b14c:	0c 
  b7b14d:	62 61 fd 28 29 64 24 	vmovapd YMMWORD PTR [rsp+0x260],ymm28
  b7b154:	13 
  b7b155:	62 21 9d 20 58 e5    	vaddpd ymm28,ymm28,ymm21
  b7b15b:	62 61 fd 28 29 44 24 	vmovapd YMMWORD PTR [rsp+0x160],ymm24
  b7b162:	0b 
  b7b163:	62 81 cd 20 58 e8    	vaddpd ymm21,ymm22,ymm24
  b7b169:	62 21 9d 20 58 c5    	vaddpd ymm24,ymm28,ymm21
  b7b16f:	62 61 fd 28 29 44 24 	vmovapd YMMWORD PTR [rsp+0x40],ymm24
  b7b176:	02 
  b7b177:	62 21 9d 20 5c e5    	vsubpd ymm28,ymm28,ymm21
  b7b17d:	62 81 e5 20 58 ee    	vaddpd ymm21,ymm19,ymm30
  b7b183:	62 22 8d 28 ac f3    	vfnmadd213pd ymm30,ymm14,ymm19
  b7b189:	62 81 d5 20 58 db    	vaddpd ymm19,ymm21,ymm27
  b7b18f:	62 e1 fd 28 29 5c 24 	vmovapd YMMWORD PTR [rsp+0x20],ymm19
  b7b196:	01 
  b7b197:	62 02 ed 20 b8 f3    	vfmadd231pd ymm30,ymm18,ymm27
  b7b19d:	62 21 95 28 59 d8    	vmulpd ymm27,ymm13,ymm16
  b7b1a3:	62 42 dd 20 bc da    	vfnmadd231pd ymm27,ymm20,ymm10
  b7b1a9:	62 11 c5 20 58 d5    	vaddpd ymm10,ymm23,ymm29
  b7b1af:	62 22 8d 28 ac ef    	vfnmadd213pd ymm29,ymm14,ymm23
  b7b1b5:	62 11 ad 28 58 d7    	vaddpd ymm10,ymm10,ymm31
  b7b1bb:	c5 7d 29 14 24       	vmovapd YMMWORD PTR [rsp],ymm10
  b7b1c0:	62 02 ed 20 b8 ef    	vfmadd231pd ymm29,ymm18,ymm31
  b7b1c6:	62 31 bd 28 59 c0    	vmulpd ymm8,ymm8,ymm16
  b7b1cc:	62 72 dd 20 bc c2    	vfnmadd231pd ymm8,ymm20,ymm2
  b7b1d2:	62 21 fd 28 28 fa    	vmovapd ymm31,ymm18
  b7b1d8:	c5 7d 28 94 24 a0 00 	vmovapd ymm10,YMMWORD PTR [rsp+0xa0]
  b7b1df:	00 00 
  b7b1e1:	62 42 d5 28 a8 fa    	vfmadd213pd ymm31,ymm5,ymm10
  b7b1e7:	c5 ad 58 d5          	vaddpd ymm2,ymm10,ymm5
  b7b1eb:	c4 c2 8d ac ea       	vfnmadd213pd ymm5,ymm14,ymm10
  b7b1f0:	62 b1 ed 28 58 d1    	vaddpd ymm2,ymm2,ymm17
  b7b1f6:	c5 fd 29 94 24 60 06 	vmovapd YMMWORD PTR [rsp+0x660],ymm2
  b7b1fd:	00 00 
  b7b1ff:	62 42 f5 20 bc fe    	vfnmadd231pd ymm31,ymm17,ymm14
  b7b205:	62 b2 ed 20 b8 e9    	vfmadd231pd ymm5,ymm18,ymm17
  b7b20b:	c5 7d 28 94 24 40 02 	vmovapd ymm10,YMMWORD PTR [rsp+0x240]
  b7b212:	00 00 
  b7b214:	62 21 ad 28 59 c0    	vmulpd ymm24,ymm10,ymm16
  b7b21a:	c5 fd 28 94 24 20 01 	vmovapd ymm2,YMMWORD PTR [rsp+0x120]
  b7b221:	00 00 
  b7b223:	62 22 ed 28 b8 c4    	vfmadd231pd ymm24,ymm2,ymm20
  b7b229:	62 b1 ed 28 59 d0    	vmulpd ymm2,ymm2,ymm16
  b7b22f:	62 d2 dd 20 bc d2    	vfnmadd231pd ymm2,ymm20,ymm10
  b7b235:	c5 5d 58 e9          	vaddpd ymm13,ymm4,ymm1
  b7b239:	c4 e2 8d ac cc       	vfnmadd213pd ymm1,ymm14,ymm4
  b7b23e:	c4 41 15 58 d1       	vaddpd ymm10,ymm13,ymm9
  b7b243:	62 d2 ed 20 b8 c9    	vfmadd231pd ymm1,ymm18,ymm9
  b7b249:	62 71 fd 20 59 4c 24 	vmulpd ymm9,ymm16,YMMWORD PTR [rsp+0x220]
  b7b250:	11 
  b7b251:	62 72 dd 20 bc cf    	vfnmadd231pd ymm9,ymm20,ymm7
  b7b257:	c5 e5 58 f8          	vaddpd ymm7,ymm3,ymm0
  b7b25b:	c4 e2 8d ac c3       	vfnmadd213pd ymm0,ymm14,ymm3
  b7b260:	62 c1 c5 28 58 fb    	vaddpd ymm23,ymm7,ymm11
  b7b266:	62 d2 ed 20 b8 c3    	vfmadd231pd ymm0,ymm18,ymm11
  b7b26c:	62 f1 fd 20 59 5c 24 	vmulpd ymm3,ymm16,YMMWORD PTR [rsp+0x140]
  b7b273:	0a 
  b7b274:	62 d2 dd 20 bc dc    	vfnmadd231pd ymm3,ymm20,ymm12
  b7b27a:	c4 c1 75 5c f9       	vsubpd ymm7,ymm1,ymm9
  b7b27f:	c5 7d 5c e3          	vsubpd ymm12,ymm0,ymm3
  b7b283:	c4 c1 45 5c e4       	vsubpd ymm4,ymm7,ymm12
  b7b288:	c5 fd 29 a4 24 40 01 	vmovapd YMMWORD PTR [rsp+0x140],ymm4
  b7b28f:	00 00 
  b7b291:	62 c1 c5 28 58 cc    	vaddpd ymm17,ymm7,ymm12
  b7b297:	62 31 fd 28 28 e2    	vmovapd ymm12,ymm18
  b7b29d:	c5 7d 28 ac 24 c0 00 	vmovapd ymm13,YMMWORD PTR [rsp+0xc0]
  b7b2a4:	00 00 
  b7b2a6:	62 52 b5 20 a8 e5    	vfmadd213pd ymm12,ymm25,ymm13
  b7b2ac:	62 91 95 28 58 f9    	vaddpd ymm7,ymm13,ymm25
  b7b2b2:	62 42 8d 28 ac cd    	vfnmadd213pd ymm25,ymm14,ymm13
  b7b2b8:	c5 05 58 df          	vaddpd ymm11,ymm15,ymm7
  b7b2bc:	c4 42 85 bc e6       	vfnmadd231pd ymm12,ymm15,ymm14
  b7b2c1:	62 42 ed 20 b8 cf    	vfmadd231pd ymm25,ymm18,ymm15
  b7b2c7:	62 31 ad 20 59 f8    	vmulpd ymm15,ymm26,ymm16
  b7b2cd:	62 32 cd 28 b8 fc    	vfmadd231pd ymm15,ymm6,ymm20
  b7b2d3:	62 b1 cd 28 59 e0    	vmulpd ymm4,ymm6,ymm16
  b7b2d9:	62 92 dd 20 bc e2    	vfnmadd231pd ymm4,ymm20,ymm26
  b7b2df:	62 91 8d 20 58 fb    	vaddpd ymm7,ymm30,ymm27
  b7b2e5:	62 51 95 20 58 e8    	vaddpd ymm13,ymm29,ymm8
  b7b2eb:	c5 95 58 f7          	vaddpd ymm6,ymm13,ymm7
  b7b2ef:	c4 41 45 5c ed       	vsubpd ymm13,ymm7,ymm13
  b7b2f4:	c5 d5 58 fa          	vaddpd ymm7,ymm5,ymm2
  b7b2f8:	62 e1 d5 28 5c da    	vsubpd ymm19,ymm5,ymm2
  b7b2fe:	62 11 8d 20 5c f3    	vsubpd ymm14,ymm30,ymm27
  b7b304:	62 c1 95 20 5c c0    	vsubpd ymm16,ymm29,ymm8
  b7b30a:	62 f1 b5 20 5c d4    	vsubpd ymm2,ymm25,ymm4
  b7b310:	62 81 dd 28 58 d1    	vaddpd ymm18,ymm4,ymm25
  b7b316:	c5 35 58 c9          	vaddpd ymm9,ymm9,ymm1
  b7b31a:	62 e1 e5 28 58 e8    	vaddpd ymm21,ymm3,ymm0
  b7b320:	c4 c1 1d 5c c7       	vsubpd ymm0,ymm12,ymm15
  b7b325:	62 62 fd 28 19 1d 69 	vbroadcastsd ymm27,QWORD PTR [rip+0xffffffffff4f9769]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  b7b32c:	97 4f ff 
  b7b32f:	62 91 fd 28 28 cb    	vmovapd ymm1,ymm27
  b7b335:	c5 fd 29 84 24 a0 06 	vmovapd YMMWORD PTR [rsp+0x6a0],ymm0
  b7b33c:	00 00 
  b7b33e:	c4 e2 fd 9c 8c 24 e0 	vfnmadd132pd ymm1,ymm0,YMMWORD PTR [rsp+0xe0]
  b7b345:	00 00 00 
  b7b348:	c4 e2 7d 19 05 cf 98 	vbroadcastsd ymm0,QWORD PTR [rip+0xffffffffff4f98cf]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  b7b34f:	4f ff 
  b7b351:	62 f1 9d 20 59 e0    	vmulpd ymm4,ymm28,ymm0
  b7b357:	62 91 fd 28 28 db    	vmovapd ymm3,ymm27
  b7b35d:	62 e1 fd 28 29 4c 24 	vmovapd YMMWORD PTR [rsp+0xc0],ymm17
  b7b364:	06 
  b7b365:	c5 fd 29 54 24 60    	vmovapd YMMWORD PTR [rsp+0x60],ymm2
  b7b36b:	62 f2 f5 20 ac da    	vfnmadd213pd ymm3,ymm17,ymm2
  b7b371:	c5 95 59 d0          	vmulpd ymm2,ymm13,ymm0
  b7b375:	c5 7d 29 94 24 00 07 	vmovapd YMMWORD PTR [rsp+0x700],ymm10
  b7b37c:	00 00 
  b7b37e:	62 e1 fd 28 29 7c 24 	vmovapd YMMWORD PTR [rsp+0x6c0],ymm23
  b7b385:	36 
  b7b386:	62 21 ad 28 58 e7    	vaddpd ymm28,ymm10,ymm23
  b7b38c:	62 c1 fd 28 28 fb    	vmovapd ymm23,ymm11
  b7b392:	62 11 a5 28 58 c4    	vaddpd ymm8,ymm11,ymm28
  b7b398:	c5 fd 29 8c 24 40 02 	vmovapd YMMWORD PTR [rsp+0x240],ymm1
  b7b39f:	00 00 
  b7b3a1:	c5 fd 29 a4 24 a0 02 	vmovapd YMMWORD PTR [rsp+0x2a0],ymm4
  b7b3a8:	00 00 
  b7b3aa:	62 61 f5 28 5c cc    	vsubpd ymm25,ymm1,ymm4
  b7b3b0:	c5 fd 29 94 24 80 06 	vmovapd YMMWORD PTR [rsp+0x680],ymm2
  b7b3b7:	00 00 
  b7b3b9:	c5 e5 58 ea          	vaddpd ymm5,ymm3,ymm2
  b7b3bd:	c5 7d 29 8c 24 40 07 	vmovapd YMMWORD PTR [rsp+0x740],ymm9
  b7b3c4:	00 00 
  b7b3c6:	62 e1 fd 28 29 6c 24 	vmovapd YMMWORD PTR [rsp+0x720],ymm21
  b7b3cd:	39 
  b7b3ce:	62 b1 b5 28 58 cd    	vaddpd ymm1,ymm9,ymm21
  b7b3d4:	c5 fd 29 8c 24 20 01 	vmovapd YMMWORD PTR [rsp+0x120],ymm1
  b7b3db:	00 00 
  b7b3dd:	62 e1 fd 28 29 54 24 	vmovapd YMMWORD PTR [rsp+0x760],ymm18
  b7b3e4:	3b 
  b7b3e5:	62 61 ed 20 58 e9    	vaddpd ymm29,ymm18,ymm1
  b7b3eb:	c4 e3 3d 18 cd 01    	vinsertf128 ymm1,ymm8,xmm5,0x1
  b7b3f1:	62 93 35 20 18 d5 01 	vinsertf32x4 ymm2,ymm25,xmm29,0x1
  b7b3f8:	62 e1 f5 28 15 ca    	vunpckhpd ymm17,ymm1,ymm2
  b7b3fe:	62 e1 f5 28 14 ea    	vunpcklpd ymm21,ymm1,ymm2
  b7b404:	62 81 85 20 58 d0    	vaddpd ymm18,ymm31,ymm24
  b7b40a:	62 01 fd 28 28 f3    	vmovapd ymm30,ymm27
  b7b410:	62 62 ed 20 9c 74 24 	vfnmadd132pd ymm30,ymm18,YMMWORD PTR [rsp+0x40]
  b7b417:	02 
  b7b418:	c5 fd 59 94 24 00 01 	vmulpd ymm2,ymm0,YMMWORD PTR [rsp+0x100]
  b7b41f:	00 00 
  b7b421:	c5 fd 29 b4 24 a0 00 	vmovapd YMMWORD PTR [rsp+0xa0],ymm6
  b7b428:	00 00 
  b7b42a:	c5 fd 29 bc 24 80 00 	vmovapd YMMWORD PTR [rsp+0x80],ymm7
  b7b431:	00 00 
  b7b433:	62 62 cd 28 ac df    	vfnmadd213pd ymm27,ymm6,ymm7
  b7b439:	c5 fd 59 8c 24 40 01 	vmulpd ymm1,ymm0,YMMWORD PTR [rsp+0x140]
  b7b440:	00 00 
  b7b442:	c5 fd 28 44 24 20    	vmovapd ymm0,YMMWORD PTR [rsp+0x20]
  b7b448:	c5 7d 58 1c 24       	vaddpd ymm11,ymm0,YMMWORD PTR [rsp]
  b7b44d:	c5 fd 28 84 24 60 06 	vmovapd ymm0,YMMWORD PTR [rsp+0x660]
  b7b454:	00 00 
  b7b456:	62 e1 fd 28 28 e0    	vmovapd ymm20,ymm0
  b7b45c:	62 41 fd 28 58 d3    	vaddpd ymm26,ymm0,ymm11
  b7b462:	c5 fd 29 94 24 e0 06 	vmovapd YMMWORD PTR [rsp+0x6e0],ymm2
  b7b469:	00 00 
  b7b46b:	62 91 ed 28 58 d6    	vaddpd ymm2,ymm2,ymm30
  b7b471:	62 71 a5 20 5c c9    	vsubpd ymm9,ymm27,ymm1
  b7b477:	c5 7d 29 b4 24 40 01 	vmovapd YMMWORD PTR [rsp+0x140],ymm14
  b7b47e:	00 00 
  b7b480:	62 e1 fd 28 29 44 24 	vmovapd YMMWORD PTR [rsp+0x220],ymm16
  b7b487:	11 
  b7b488:	62 b1 8d 28 58 c0    	vaddpd ymm0,ymm14,ymm16
  b7b48e:	c5 fd 29 84 24 00 01 	vmovapd YMMWORD PTR [rsp+0x100],ymm0
  b7b495:	00 00 
  b7b497:	62 e1 fd 28 29 5c 24 	vmovapd YMMWORD PTR [rsp+0x280],ymm19
  b7b49e:	14 
  b7b49f:	62 71 e5 20 58 e8    	vaddpd ymm13,ymm19,ymm0
  b7b4a5:	62 d3 2d 20 18 f9 01 	vinsertf32x4 ymm7,ymm26,xmm9,0x1
  b7b4ac:	c4 c3 6d 18 f5 01    	vinsertf128 ymm6,ymm2,xmm13,0x1
  b7b4b2:	c5 c5 15 e6          	vunpckhpd ymm4,ymm7,ymm6
  b7b4b6:	c5 c5 14 f6          	vunpcklpd ymm6,ymm7,ymm6
  b7b4ba:	c5 fd 28 fe          	vmovapd ymm7,ymm6
  b7b4be:	c5 7d 28 35 9a b6 4f 	vmovapd ymm14,YMMWORD PTR [rip+0xffffffffff4fb69a]        # 76b60 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4010>
  b7b4c5:	ff 
  b7b4c6:	62 b2 8d 28 7f fd    	vpermt2pd ymm7,ymm14,ymm21
  b7b4cc:	c4 c1 7d 29 b8 50 fc 	vmovapd YMMWORD PTR [r8-0x3b0],ymm7
  b7b4d3:	ff ff 
  b7b4d5:	c5 fd 28 05 63 c1 4f 	vmovapd ymm0,YMMWORD PTR [rip+0xffffffffff4fc163]        # 77640 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4af0>
  b7b4dc:	ff 
  b7b4dd:	62 b2 fd 28 7f f5    	vpermt2pd ymm6,ymm0,ymm21
  b7b4e3:	c4 c1 7d 29 b0 70 fc 	vmovapd YMMWORD PTR [r8-0x390],ymm6
  b7b4ea:	ff ff 
  b7b4ec:	c5 fd 28 f4          	vmovapd ymm6,ymm4
  b7b4f0:	62 b2 8d 28 7f f1    	vpermt2pd ymm6,ymm14,ymm17
  b7b4f6:	c4 c1 7d 11 b0 40 fd 	vmovupd YMMWORD PTR [r8-0x2c0],ymm6
  b7b4fd:	ff ff 
  b7b4ff:	62 b2 fd 28 7f e1    	vpermt2pd ymm4,ymm0,ymm17
  b7b505:	c4 c1 7d 11 a0 60 fd 	vmovupd YMMWORD PTR [r8-0x2a0],ymm4
  b7b50c:	ff ff 
  b7b50e:	49 83 f9 0c          	cmp    r9,0xc
  b7b512:	74 6e                	je     b7b582 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0xb02>
  b7b514:	c4 e3 3d 06 e5 31    	vperm2f128 ymm4,ymm8,ymm5,0x31
  b7b51a:	62 93 b5 20 23 ed 03 	vshuff64x2 ymm5,ymm25,ymm29,0x3
  b7b521:	c5 dd 15 f5          	vunpckhpd ymm6,ymm4,ymm5
  b7b525:	c5 dd 14 e5          	vunpcklpd ymm4,ymm4,ymm5
  b7b529:	62 d3 ad 20 23 e9 03 	vshuff64x2 ymm5,ymm26,ymm9,0x3
  b7b530:	c4 c3 6d 06 d5 31    	vperm2f128 ymm2,ymm2,ymm13,0x31
  b7b536:	c5 d5 15 fa          	vunpckhpd ymm7,ymm5,ymm2
  b7b53a:	c5 d5 14 d2          	vunpcklpd ymm2,ymm5,ymm2
  b7b53e:	c5 fd 28 ea          	vmovapd ymm5,ymm2
  b7b542:	62 f2 8d 28 7f ec    	vpermt2pd ymm5,ymm14,ymm4
  b7b548:	c4 c1 7d 29 a8 30 fe 	vmovapd YMMWORD PTR [r8-0x1d0],ymm5
  b7b54f:	ff ff 
  b7b551:	62 f2 fd 28 7f d4    	vpermt2pd ymm2,ymm0,ymm4
  b7b557:	c4 c1 7d 29 90 50 fe 	vmovapd YMMWORD PTR [r8-0x1b0],ymm2
  b7b55e:	ff ff 
  b7b560:	c5 fd 28 d7          	vmovapd ymm2,ymm7
  b7b564:	62 f2 8d 28 7f d6    	vpermt2pd ymm2,ymm14,ymm6
  b7b56a:	c4 c1 7d 11 90 20 ff 	vmovupd YMMWORD PTR [r8-0xe0],ymm2
  b7b571:	ff ff 
  b7b573:	62 f2 fd 28 7f fe    	vpermt2pd ymm7,ymm0,ymm6
  b7b579:	c4 c1 7d 11 b8 40 ff 	vmovupd YMMWORD PTR [r8-0xc0],ymm7
  b7b580:	ff ff 
  b7b582:	c5 fd 28 94 24 60 02 	vmovapd ymm2,YMMWORD PTR [rsp+0x260]
  b7b589:	00 00 
  b7b58b:	c5 ed 5c 94 24 80 01 	vsubpd ymm2,ymm2,YMMWORD PTR [rsp+0x180]
  b7b592:	00 00 
  b7b594:	62 f1 cd 20 5c 64 24 	vsubpd ymm4,ymm22,YMMWORD PTR [rsp+0x160]
  b7b59b:	0b 
  b7b59c:	62 61 ed 28 58 ec    	vaddpd ymm29,ymm2,ymm4
  b7b5a2:	62 81 85 20 5c f0    	vsubpd ymm22,ymm31,ymm24
  b7b5a8:	c4 62 7d 19 0d e7 94 	vbroadcastsd ymm9,QWORD PTR [rip+0xffffffffff4f94e7]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  b7b5af:	4f ff 
  b7b5b1:	c5 7d 29 ce          	vmovapd ymm6,ymm9
  b7b5b5:	62 b2 95 20 ac f6    	vfnmadd213pd ymm6,ymm29,ymm22
  b7b5bb:	c5 fd 28 ac 24 e0 01 	vmovapd ymm5,YMMWORD PTR [rsp+0x1e0]
  b7b5c2:	00 00 
  b7b5c4:	c5 d5 58 ac 24 00 02 	vaddpd ymm5,ymm5,YMMWORD PTR [rsp+0x200]
  b7b5cb:	00 00 
  b7b5cd:	c5 fd 28 bc 24 a0 01 	vmovapd ymm7,YMMWORD PTR [rsp+0x1a0]
  b7b5d4:	00 00 
  b7b5d6:	c5 c5 58 bc 24 c0 01 	vaddpd ymm7,ymm7,YMMWORD PTR [rsp+0x1c0]
  b7b5dd:	00 00 
  b7b5df:	c5 55 5c c7          	vsubpd ymm8,ymm5,ymm7
  b7b5e3:	c4 62 7d 19 2d 34 96 	vbroadcastsd ymm13,QWORD PTR [rip+0xffffffffff4f9634]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  b7b5ea:	4f ff 
  b7b5ec:	c4 41 3d 59 d5       	vmulpd ymm10,ymm8,ymm13
  b7b5f1:	62 e1 ad 28 58 ee    	vaddpd ymm21,ymm10,ymm6
  b7b5f7:	62 e1 d5 28 58 df    	vaddpd ymm19,ymm5,ymm7
  b7b5fd:	c4 41 05 58 e4       	vaddpd ymm12,ymm15,ymm12
  b7b602:	62 c1 fd 28 28 c1    	vmovapd ymm16,ymm9
  b7b608:	62 c2 e5 20 ac c4    	vfnmadd213pd ymm16,ymm19,ymm12
  b7b60e:	c5 ed 5c d4          	vsubpd ymm2,ymm2,ymm4
  b7b612:	62 c1 ed 28 59 cd    	vmulpd ymm17,ymm2,ymm13
  b7b618:	62 b1 fd 20 5c e9    	vsubpd ymm5,ymm16,ymm17
  b7b61e:	62 32 b5 28 ac dc    	vfnmadd213pd ymm11,ymm9,ymm20
  b7b624:	c5 fd 28 94 24 00 07 	vmovapd ymm2,YMMWORD PTR [rsp+0x700]
  b7b62b:	00 00 
  b7b62d:	c5 ed 5c 94 24 c0 06 	vsubpd ymm2,ymm2,YMMWORD PTR [rsp+0x6c0]
  b7b634:	00 00 
  b7b636:	c5 15 59 c2          	vmulpd ymm8,ymm13,ymm2
  b7b63a:	c4 41 25 5c f8       	vsubpd ymm15,ymm11,ymm8
  b7b63f:	62 22 b5 28 ac e7    	vfnmadd213pd ymm28,ymm9,ymm23
  b7b645:	c5 fd 28 54 24 20    	vmovapd ymm2,YMMWORD PTR [rsp+0x20]
  b7b64b:	c5 ed 5c 14 24       	vsubpd ymm2,ymm2,YMMWORD PTR [rsp]
  b7b650:	c5 15 59 ca          	vmulpd ymm9,ymm13,ymm2
  b7b654:	62 81 b5 28 58 fc    	vaddpd ymm23,ymm9,ymm28
  b7b65a:	62 71 ed 20 58 6c 24 	vaddpd ymm13,ymm18,YMMWORD PTR [rsp+0x40]
  b7b661:	02 
  b7b662:	c5 fd 28 94 24 a0 06 	vmovapd ymm2,YMMWORD PTR [rsp+0x6a0]
  b7b669:	00 00 
  b7b66b:	62 e1 ed 28 58 64 24 	vaddpd ymm20,ymm2,YMMWORD PTR [rsp+0xe0]
  b7b672:	07 
  b7b673:	62 f1 a5 20 58 f9    	vaddpd ymm7,ymm27,ymm1
  b7b679:	c5 e5 5c 9c 24 80 06 	vsubpd ymm3,ymm3,YMMWORD PTR [rsp+0x680]
  b7b680:	00 00 
  b7b682:	62 d3 55 20 18 d5 01 	vinsertf32x4 ymm2,ymm21,xmm13,0x1
  b7b689:	c4 e3 05 18 e7 01    	vinsertf128 ymm4,ymm15,xmm7,0x1
  b7b68f:	62 61 ed 28 15 c4    	vunpckhpd ymm24,ymm2,ymm4
  b7b695:	62 23 55 28 18 cc 01 	vinsertf32x4 ymm25,ymm5,xmm20,0x1
  b7b69c:	62 63 45 20 18 d3 01 	vinsertf32x4 ymm26,ymm23,xmm3,0x1
  b7b6a3:	62 01 b5 20 15 da    	vunpckhpd ymm27,ymm25,ymm26
  b7b6a9:	62 01 b5 20 14 ca    	vunpcklpd ymm25,ymm25,ymm26
  b7b6af:	c5 ed 14 d4          	vunpcklpd ymm2,ymm2,ymm4
  b7b6b3:	c5 fd 28 e2          	vmovapd ymm4,ymm2
  b7b6b7:	62 92 8d 28 7f e1    	vpermt2pd ymm4,ymm14,ymm25
  b7b6bd:	c4 c1 7d 29 a0 90 fc 	vmovapd YMMWORD PTR [r8-0x370],ymm4
  b7b6c4:	ff ff 
  b7b6c6:	62 92 fd 28 7f d1    	vpermt2pd ymm2,ymm0,ymm25
  b7b6cc:	c4 c1 7d 29 90 b0 fc 	vmovapd YMMWORD PTR [r8-0x350],ymm2
  b7b6d3:	ff ff 
  b7b6d5:	62 91 fd 28 28 d0    	vmovapd ymm2,ymm24
  b7b6db:	62 92 8d 28 7f d3    	vpermt2pd ymm2,ymm14,ymm27
  b7b6e1:	c4 c1 7d 11 90 80 fd 	vmovupd YMMWORD PTR [r8-0x280],ymm2
  b7b6e8:	ff ff 
  b7b6ea:	62 02 fd 28 7f c3    	vpermt2pd ymm24,ymm0,ymm27
  b7b6f0:	62 41 fd 28 11 40 ed 	vmovupd YMMWORD PTR [r8-0x260],ymm24
  b7b6f7:	49 83 f9 0c          	cmp    r9,0xc
  b7b6fb:	62 61 fd 28 28 c0    	vmovapd ymm24,ymm0
  b7b701:	74 6c                	je     b7b76f <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0xcef>
  b7b703:	62 b3 d5 28 23 d4 03 	vshuff64x2 ymm2,ymm5,ymm20,0x3
  b7b70a:	62 f3 c5 20 23 db 03 	vshuff64x2 ymm3,ymm23,ymm3,0x3
  b7b711:	c5 ed 15 e3          	vunpckhpd ymm4,ymm2,ymm3
  b7b715:	c5 ed 14 d3          	vunpcklpd ymm2,ymm2,ymm3
  b7b719:	62 d3 d5 20 23 dd 03 	vshuff64x2 ymm3,ymm21,ymm13,0x3
  b7b720:	c4 e3 05 06 ef 31    	vperm2f128 ymm5,ymm15,ymm7,0x31
  b7b726:	c5 e5 15 fd          	vunpckhpd ymm7,ymm3,ymm5
  b7b72a:	c5 e5 14 dd          	vunpcklpd ymm3,ymm3,ymm5
  b7b72e:	c5 fd 28 eb          	vmovapd ymm5,ymm3
  b7b732:	62 f2 8d 28 7f ea    	vpermt2pd ymm5,ymm14,ymm2
  b7b738:	c4 c1 7d 29 a8 70 fe 	vmovapd YMMWORD PTR [r8-0x190],ymm5
  b7b73f:	ff ff 
  b7b741:	62 f2 bd 20 7f da    	vpermt2pd ymm3,ymm24,ymm2
  b7b747:	c4 c1 7d 29 98 90 fe 	vmovapd YMMWORD PTR [r8-0x170],ymm3
  b7b74e:	ff ff 
  b7b750:	c5 fd 28 d7          	vmovapd ymm2,ymm7
  b7b754:	62 f2 8d 28 7f d4    	vpermt2pd ymm2,ymm14,ymm4
  b7b75a:	c4 c1 7d 11 90 60 ff 	vmovupd YMMWORD PTR [r8-0xa0],ymm2
  b7b761:	ff ff 
  b7b763:	62 f2 bd 20 7f fc    	vpermt2pd ymm7,ymm24,ymm4
  b7b769:	c4 c1 7d 11 78 80    	vmovupd YMMWORD PTR [r8-0x80],ymm7
  b7b76f:	c4 e2 7d 19 05 20 93 	vbroadcastsd ymm0,QWORD PTR [rip+0xffffffffff4f9320]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  b7b776:	4f ff 
  b7b778:	62 e1 fd 28 28 7c 24 	vmovapd ymm23,YMMWORD PTR [rsp+0x100]
  b7b77f:	08 
  b7b780:	62 e2 fd 28 ac 7c 24 	vfnmadd213pd ymm23,ymm0,YMMWORD PTR [rsp+0x280]
  b7b787:	14 
  b7b788:	c5 fd 28 8c 24 40 07 	vmovapd ymm1,YMMWORD PTR [rsp+0x740]
  b7b78f:	00 00 
  b7b791:	c5 f5 5c 94 24 20 07 	vsubpd ymm2,ymm1,YMMWORD PTR [rsp+0x720]
  b7b798:	00 00 
  b7b79a:	c4 e2 7d 19 25 7d 94 	vbroadcastsd ymm4,QWORD PTR [rip+0xffffffffff4f947d]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  b7b7a1:	4f ff 
  b7b7a3:	c5 ed 59 dc          	vmulpd ymm3,ymm2,ymm4
  b7b7a7:	c5 fd 28 8c 24 20 01 	vmovapd ymm1,YMMWORD PTR [rsp+0x120]
  b7b7ae:	00 00 
  b7b7b0:	c4 e2 fd ac 8c 24 60 	vfnmadd213pd ymm1,ymm0,YMMWORD PTR [rsp+0x760]
  b7b7b7:	07 00 00 
  b7b7ba:	c5 fd 28 84 24 40 01 	vmovapd ymm0,YMMWORD PTR [rsp+0x140]
  b7b7c1:	00 00 
  b7b7c3:	c5 fd 5c 94 24 20 02 	vsubpd ymm2,ymm0,YMMWORD PTR [rsp+0x220]
  b7b7ca:	00 00 
  b7b7cc:	c5 ed 59 e4          	vmulpd ymm4,ymm2,ymm4
  b7b7d0:	62 f1 c5 20 5c eb    	vsubpd ymm5,ymm23,ymm3
  b7b7d6:	c5 75 58 ec          	vaddpd ymm13,ymm1,ymm4
  b7b7da:	62 91 cd 20 58 fd    	vaddpd ymm7,ymm22,ymm29
  b7b7e0:	62 31 9d 28 58 e3    	vaddpd ymm12,ymm12,ymm19
  b7b7e6:	c4 41 25 58 c0       	vaddpd ymm8,ymm11,ymm8
  b7b7eb:	62 51 9d 20 5c c9    	vsubpd ymm9,ymm28,ymm9
  b7b7f1:	62 f1 8d 20 5c 54 24 	vsubpd ymm2,ymm30,YMMWORD PTR [rsp+0x6e0]
  b7b7f8:	37 
  b7b7f9:	c5 fd 28 84 24 a0 02 	vmovapd ymm0,YMMWORD PTR [rsp+0x2a0]
  b7b800:	00 00 
  b7b802:	c5 fd 58 84 24 40 02 	vaddpd ymm0,ymm0,YMMWORD PTR [rsp+0x240]
  b7b809:	00 00 
  b7b80b:	c4 43 55 18 d8 01    	vinsertf128 ymm11,ymm5,xmm8,0x1
  b7b811:	c4 63 45 18 fa 01    	vinsertf128 ymm15,ymm7,xmm2,0x1
  b7b817:	62 c1 a5 28 15 d7    	vunpckhpd ymm18,ymm11,ymm15
  b7b81d:	62 c3 15 28 18 d9 01 	vinsertf32x4 ymm19,ymm13,xmm9,0x1
  b7b824:	62 e3 1d 28 18 e0 01 	vinsertf32x4 ymm20,ymm12,xmm0,0x1
  b7b82b:	62 a1 e5 20 15 ec    	vunpckhpd ymm21,ymm19,ymm20
  b7b831:	62 a1 e5 20 14 dc    	vunpcklpd ymm19,ymm19,ymm20
  b7b837:	c4 41 25 14 df       	vunpcklpd ymm11,ymm11,ymm15
  b7b83c:	c4 41 7d 28 fb       	vmovapd ymm15,ymm11
  b7b841:	62 32 8d 28 7f fb    	vpermt2pd ymm15,ymm14,ymm19
  b7b847:	c4 41 7d 29 b8 d0 fc 	vmovapd YMMWORD PTR [r8-0x330],ymm15
  b7b84e:	ff ff 
  b7b850:	62 32 bd 20 7f db    	vpermt2pd ymm11,ymm24,ymm19
  b7b856:	c4 41 7d 29 98 f0 fc 	vmovapd YMMWORD PTR [r8-0x310],ymm11
  b7b85d:	ff ff 
  b7b85f:	62 31 fd 28 28 da    	vmovapd ymm11,ymm18
  b7b865:	62 32 8d 28 7f dd    	vpermt2pd ymm11,ymm14,ymm21
  b7b86b:	c4 41 7d 11 98 c0 fd 	vmovupd YMMWORD PTR [r8-0x240],ymm11
  b7b872:	ff ff 
  b7b874:	62 a2 bd 20 7f d5    	vpermt2pd ymm18,ymm24,ymm21
  b7b87a:	62 c1 fd 28 11 50 ef 	vmovupd YMMWORD PTR [r8-0x220],ymm18
  b7b881:	49 83 f9 0c          	cmp    r9,0xc
  b7b885:	74 66                	je     b7b8ed <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0xe6d>
  b7b887:	c4 43 15 06 c9 31    	vperm2f128 ymm9,ymm13,ymm9,0x31
  b7b88d:	c4 e3 1d 06 c0 31    	vperm2f128 ymm0,ymm12,ymm0,0x31
  b7b893:	c5 35 15 d8          	vunpckhpd ymm11,ymm9,ymm0
  b7b897:	c5 b5 14 c0          	vunpcklpd ymm0,ymm9,ymm0
  b7b89b:	c4 c3 55 06 e8 31    	vperm2f128 ymm5,ymm5,ymm8,0x31
  b7b8a1:	c4 e3 45 06 d2 31    	vperm2f128 ymm2,ymm7,ymm2,0x31
  b7b8a7:	c5 d5 15 fa          	vunpckhpd ymm7,ymm5,ymm2
  b7b8ab:	c5 d5 14 d2          	vunpcklpd ymm2,ymm5,ymm2
  b7b8af:	c5 fd 28 ea          	vmovapd ymm5,ymm2
  b7b8b3:	62 f2 8d 28 7f e8    	vpermt2pd ymm5,ymm14,ymm0
  b7b8b9:	c4 c1 7d 29 a8 b0 fe 	vmovapd YMMWORD PTR [r8-0x150],ymm5
  b7b8c0:	ff ff 
  b7b8c2:	62 f2 bd 20 7f d0    	vpermt2pd ymm2,ymm24,ymm0
  b7b8c8:	c4 c1 7d 29 90 d0 fe 	vmovapd YMMWORD PTR [r8-0x130],ymm2
  b7b8cf:	ff ff 
  b7b8d1:	c5 fd 28 c7          	vmovapd ymm0,ymm7
  b7b8d5:	62 d2 8d 28 7f c3    	vpermt2pd ymm0,ymm14,ymm11
  b7b8db:	c4 c1 7d 11 40 a0    	vmovupd YMMWORD PTR [r8-0x60],ymm0
  b7b8e1:	62 d2 bd 20 7f fb    	vpermt2pd ymm7,ymm24,ymm11
  b7b8e7:	c4 c1 7d 11 78 c0    	vmovupd YMMWORD PTR [r8-0x40],ymm7
  b7b8ed:	c5 fd 28 84 24 80 00 	vmovapd ymm0,YMMWORD PTR [rsp+0x80]
  b7b8f4:	00 00 
  b7b8f6:	c5 fd 58 94 24 a0 00 	vaddpd ymm2,ymm0,YMMWORD PTR [rsp+0xa0]
  b7b8fd:	00 00 
  b7b8ff:	c5 fd 28 44 24 60    	vmovapd ymm0,YMMWORD PTR [rsp+0x60]
  b7b905:	c5 fd 58 ac 24 c0 00 	vaddpd ymm5,ymm0,YMMWORD PTR [rsp+0xc0]
  b7b90c:	00 00 
  b7b90e:	62 f1 c5 20 58 db    	vaddpd ymm3,ymm23,ymm3
  b7b914:	c5 f5 5c e4          	vsubpd ymm4,ymm1,ymm4
  b7b918:	c4 c1 4d 5c c2       	vsubpd ymm0,ymm6,ymm10
  b7b91d:	62 b1 fd 20 58 c9    	vaddpd ymm1,ymm16,ymm17
  b7b923:	c5 e9 14 f5          	vunpcklpd xmm6,xmm2,xmm5
  b7b927:	c5 e1 14 fc          	vunpcklpd xmm7,xmm3,xmm4
  b7b92b:	c4 c1 79 29 b8 20 fd 	vmovapd XMMWORD PTR [r8-0x2e0],xmm7
  b7b932:	ff ff 
  b7b934:	c4 c1 79 29 b0 10 fd 	vmovapd XMMWORD PTR [r8-0x2f0],xmm6
  b7b93b:	ff ff 
  b7b93d:	c5 f9 14 f1          	vunpcklpd xmm6,xmm0,xmm1
  b7b941:	c4 c1 79 29 b0 30 fd 	vmovapd XMMWORD PTR [r8-0x2d0],xmm6
  b7b948:	ff ff 
  b7b94a:	c5 e9 15 f5          	vunpckhpd xmm6,xmm2,xmm5
  b7b94e:	c5 e1 15 fc          	vunpckhpd xmm7,xmm3,xmm4
  b7b952:	c4 c1 79 29 b8 10 fe 	vmovapd XMMWORD PTR [r8-0x1f0],xmm7
  b7b959:	ff ff 
  b7b95b:	c4 c1 79 29 b0 00 fe 	vmovapd XMMWORD PTR [r8-0x200],xmm6
  b7b962:	ff ff 
  b7b964:	c5 f9 15 f1          	vunpckhpd xmm6,xmm0,xmm1
  b7b968:	c4 c1 79 29 b0 20 fe 	vmovapd XMMWORD PTR [r8-0x1e0],xmm6
  b7b96f:	ff ff 
  b7b971:	49 83 f9 0c          	cmp    r9,0xc
  b7b975:	0f 84 65 f1 ff ff    	je     b7aae0 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x60>
  b7b97b:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  b7b981:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  b7b987:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  b7b98d:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  b7b993:	c5 e9 14 f5          	vunpcklpd xmm6,xmm2,xmm5
  b7b997:	c5 e1 14 fc          	vunpcklpd xmm7,xmm3,xmm4
  b7b99b:	c4 c1 79 29 b8 00 ff 	vmovapd XMMWORD PTR [r8-0x100],xmm7
  b7b9a2:	ff ff 
  b7b9a4:	c4 c1 79 29 b0 f0 fe 	vmovapd XMMWORD PTR [r8-0x110],xmm6
  b7b9ab:	ff ff 
  b7b9ad:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  b7b9b3:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  b7b9b9:	c5 f9 14 f1          	vunpcklpd xmm6,xmm0,xmm1
  b7b9bd:	c4 c1 79 29 b0 10 ff 	vmovapd XMMWORD PTR [r8-0xf0],xmm6
  b7b9c4:	ff ff 
  b7b9c6:	c5 e9 15 d5          	vunpckhpd xmm2,xmm2,xmm5
  b7b9ca:	c5 e1 15 dc          	vunpckhpd xmm3,xmm3,xmm4
  b7b9ce:	c4 c1 79 29 58 f0    	vmovapd XMMWORD PTR [r8-0x10],xmm3
  b7b9d4:	c4 c1 79 29 50 e0    	vmovapd XMMWORD PTR [r8-0x20],xmm2
  b7b9da:	c5 f9 15 c1          	vunpckhpd xmm0,xmm0,xmm1
  b7b9de:	c4 c1 79 29 00       	vmovapd XMMWORD PTR [r8],xmm0
  b7b9e3:	e9 f8 f0 ff ff       	jmp    b7aae0 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x60>
  b7b9e8:	48 8d bc 24 50 0c 00 	lea    rdi,[rsp+0xc50]
  b7b9ef:	00 
  b7b9f0:	48 83 c2 60          	add    rdx,0x60
  b7b9f4:	41 b8 04 00 00 00    	mov    r8d,0x4
  b7b9fa:	45 31 db             	xor    r11d,r11d
  b7b9fd:	e9 e4 01 00 00       	jmp    b7bbe6 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x1166>
  b7ba02:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  b7ba09:	1f 84 00 00 00 00 00 
  b7ba10:	62 a1 fd 28 11 3c 0e 	vmovupd YMMWORD PTR [rsi+r9*1],ymm23
  b7ba17:	c4 a1 7d 11 4c 0e 20 	vmovupd YMMWORD PTR [rsi+r9*1+0x20],ymm1
  b7ba1e:	62 f2 fd 20 7f ec    	vpermt2pd ymm5,ymm16,ymm4
  b7ba24:	62 21 fd 28 11 b4 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0xf0],ymm30
  b7ba2b:	f0 00 00 00 
  b7ba2f:	c4 a1 7d 11 ac 0e 10 	vmovupd YMMWORD PTR [rsi+r9*1+0x110],ymm5
  b7ba36:	01 00 00 
  b7ba39:	c5 fd 28 84 24 60 02 	vmovapd ymm0,YMMWORD PTR [rsp+0x260]
  b7ba40:	00 00 
  b7ba42:	62 f2 fd 20 7f c6    	vpermt2pd ymm0,ymm16,ymm6
  b7ba48:	62 21 fd 28 11 64 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0x1e0],ymm28
  b7ba4f:	0f 
  b7ba50:	c4 a1 7d 11 84 0e 00 	vmovupd YMMWORD PTR [rsi+r9*1+0x200],ymm0
  b7ba57:	02 00 00 
  b7ba5a:	c5 fd 28 84 24 60 01 	vmovapd ymm0,YMMWORD PTR [rsp+0x160]
  b7ba61:	00 00 
  b7ba63:	62 f2 fd 20 7f 44 24 	vpermt2pd ymm0,ymm16,YMMWORD PTR [rsp+0x100]
  b7ba6a:	08 
  b7ba6b:	62 a1 fd 28 11 ac 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0x2d0],ymm21
  b7ba72:	d0 02 00 00 
  b7ba76:	c4 a1 7d 11 84 0e f0 	vmovupd YMMWORD PTR [rsi+r9*1+0x2f0],ymm0
  b7ba7d:	02 00 00 
  b7ba80:	c5 fd 28 84 24 80 01 	vmovapd ymm0,YMMWORD PTR [rsp+0x180]
  b7ba87:	00 00 
  b7ba89:	62 f2 fd 20 7f 44 24 	vpermt2pd ymm0,ymm16,YMMWORD PTR [rsp+0x120]
  b7ba90:	09 
  b7ba91:	62 21 fd 28 11 44 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0x3c0],ymm24
  b7ba98:	1e 
  b7ba99:	c4 a1 7d 11 84 0e e0 	vmovupd YMMWORD PTR [rsi+r9*1+0x3e0],ymm0
  b7baa0:	03 00 00 
  b7baa3:	62 e2 fd 20 7f 4c 24 	vpermt2pd ymm17,ymm16,YMMWORD PTR [rsp+0x1a0]
  b7baaa:	0d 
  b7baab:	c4 21 7d 11 84 0e b0 	vmovupd YMMWORD PTR [rsi+r9*1+0x4b0],ymm8
  b7bab2:	04 00 00 
  b7bab5:	62 a1 fd 28 11 8c 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0x4d0],ymm17
  b7babc:	d0 04 00 00 
  b7bac0:	62 72 fd 20 7f 6c 24 	vpermt2pd ymm13,ymm16,YMMWORD PTR [rsp+0x1c0]
  b7bac7:	0e 
  b7bac8:	c4 21 7d 11 bc 0e a0 	vmovupd YMMWORD PTR [rsi+r9*1+0x5a0],ymm15
  b7bacf:	05 00 00 
  b7bad2:	c4 21 7d 11 ac 0e c0 	vmovupd YMMWORD PTR [rsi+r9*1+0x5c0],ymm13
  b7bad9:	05 00 00 
  b7badc:	c5 fd 28 84 24 e0 01 	vmovapd ymm0,YMMWORD PTR [rsp+0x1e0]
  b7bae3:	00 00 
  b7bae5:	62 92 fd 20 7f c7    	vpermt2pd ymm0,ymm16,ymm31
  b7baeb:	62 a1 fd 28 11 a4 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0x690],ymm20
  b7baf2:	90 06 00 00 
  b7baf6:	c4 a1 7d 11 84 0e b0 	vmovupd YMMWORD PTR [rsi+r9*1+0x6b0],ymm0
  b7bafd:	06 00 00 
  b7bb00:	c5 fd 28 84 24 00 02 	vmovapd ymm0,YMMWORD PTR [rsp+0x200]
  b7bb07:	00 00 
  b7bb09:	62 92 fd 20 7f c2    	vpermt2pd ymm0,ymm16,ymm26
  b7bb0f:	62 a1 fd 28 11 54 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0x780],ymm18
  b7bb16:	3c 
  b7bb17:	c4 a1 7d 11 84 0e a0 	vmovupd YMMWORD PTR [rsi+r9*1+0x7a0],ymm0
  b7bb1e:	07 00 00 
  b7bb21:	c5 fd 28 84 24 80 00 	vmovapd ymm0,YMMWORD PTR [rsp+0x80]
  b7bb28:	00 00 
  b7bb2a:	62 f2 fd 20 7f 44 24 	vpermt2pd ymm0,ymm16,YMMWORD PTR [rsp+0x60]
  b7bb31:	03 
  b7bb32:	c4 21 7d 11 8c 0e 70 	vmovupd YMMWORD PTR [rsi+r9*1+0x870],ymm9
  b7bb39:	08 00 00 
  b7bb3c:	c4 a1 7d 11 84 0e 90 	vmovupd YMMWORD PTR [rsi+r9*1+0x890],ymm0
  b7bb43:	08 00 00 
  b7bb46:	c5 fd 28 84 24 c0 00 	vmovapd ymm0,YMMWORD PTR [rsp+0xc0]
  b7bb4d:	00 00 
  b7bb4f:	62 f2 fd 20 7f 44 24 	vpermt2pd ymm0,ymm16,YMMWORD PTR [rsp+0xa0]
  b7bb56:	05 
  b7bb57:	c4 21 7d 11 94 0e 60 	vmovupd YMMWORD PTR [rsi+r9*1+0x960],ymm10
  b7bb5e:	09 00 00 
  b7bb61:	c4 a1 7d 11 84 0e 80 	vmovupd YMMWORD PTR [rsi+r9*1+0x980],ymm0
  b7bb68:	09 00 00 
  b7bb6b:	c5 fd 28 04 24       	vmovapd ymm0,YMMWORD PTR [rsp]
  b7bb70:	62 92 fd 20 7f c3    	vpermt2pd ymm0,ymm16,ymm27
  b7bb76:	c4 21 7d 11 9c 0e 50 	vmovupd YMMWORD PTR [rsi+r9*1+0xa50],ymm11
  b7bb7d:	0a 00 00 
  b7bb80:	c4 a1 7d 11 84 0e 70 	vmovupd YMMWORD PTR [rsi+r9*1+0xa70],ymm0
  b7bb87:	0a 00 00 
  b7bb8a:	c5 fd 28 84 24 e0 00 	vmovapd ymm0,YMMWORD PTR [rsp+0xe0]
  b7bb91:	00 00 
  b7bb93:	62 f2 fd 20 7f 44 24 	vpermt2pd ymm0,ymm16,YMMWORD PTR [rsp+0x20]
  b7bb9a:	01 
  b7bb9b:	c4 21 7d 11 b4 0e 40 	vmovupd YMMWORD PTR [rsi+r9*1+0xb40],ymm14
  b7bba2:	0b 00 00 
  b7bba5:	c4 a1 7d 11 84 0e 60 	vmovupd YMMWORD PTR [rsi+r9*1+0xb60],ymm0
  b7bbac:	0b 00 00 
  b7bbaf:	c5 fd 28 44 24 40    	vmovapd ymm0,YMMWORD PTR [rsp+0x40]
  b7bbb5:	62 92 fd 20 7f c1    	vpermt2pd ymm0,ymm16,ymm25
  b7bbbb:	c4 a1 7d 11 bc 0e 30 	vmovupd YMMWORD PTR [rsi+r9*1+0xc30],ymm7
  b7bbc2:	0c 00 00 
  b7bbc5:	c4 a1 7d 11 84 0e 50 	vmovupd YMMWORD PTR [rsi+r9*1+0xc50],ymm0
  b7bbcc:	0c 00 00 
  b7bbcf:	48 83 c7 40          	add    rdi,0x40
  b7bbd3:	48 81 c2 80 03 00 00 	add    rdx,0x380
  b7bbda:	4d 89 d3             	mov    r11,r10
  b7bbdd:	49 ff c8             	dec    r8
  b7bbe0:	0f 84 f4 0e 00 00    	je     b7cada <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x205a>
  b7bbe6:	c5 f9 57 c0          	vxorpd xmm0,xmm0,xmm0
  b7bbea:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x440],zmm0
  b7bbf1:	11 
  b7bbf2:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x400],zmm0
  b7bbf9:	10 
  b7bbfa:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x3c0],zmm0
  b7bc01:	0f 
  b7bc02:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x380],zmm0
  b7bc09:	0e 
  b7bc0a:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x340],zmm0
  b7bc11:	0d 
  b7bc12:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x300],zmm0
  b7bc19:	0c 
  b7bc1a:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x2c0],zmm0
  b7bc21:	0b 
  b7bc22:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x600],zmm0
  b7bc29:	18 
  b7bc2a:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x5c0],zmm0
  b7bc31:	17 
  b7bc32:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x580],zmm0
  b7bc39:	16 
  b7bc3a:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x540],zmm0
  b7bc41:	15 
  b7bc42:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x500],zmm0
  b7bc49:	14 
  b7bc4a:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x4c0],zmm0
  b7bc51:	13 
  b7bc52:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x480],zmm0
  b7bc59:	12 
  b7bc5a:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x900],zmm0
  b7bc61:	24 
  b7bc62:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x8c0],zmm0
  b7bc69:	23 
  b7bc6a:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x880],zmm0
  b7bc71:	22 
  b7bc72:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x840],zmm0
  b7bc79:	21 
  b7bc7a:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x800],zmm0
  b7bc81:	20 
  b7bc82:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x7c0],zmm0
  b7bc89:	1f 
  b7bc8a:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x780],zmm0
  b7bc91:	1e 
  b7bc92:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0xac0],zmm0
  b7bc99:	2b 
  b7bc9a:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0xa80],zmm0
  b7bca1:	2a 
  b7bca2:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0xa40],zmm0
  b7bca9:	29 
  b7bcaa:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0xa00],zmm0
  b7bcb1:	28 
  b7bcb2:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x9c0],zmm0
  b7bcb9:	27 
  b7bcba:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x980],zmm0
  b7bcc1:	26 
  b7bcc2:	62 f1 fd 48 29 44 24 	vmovapd ZMMWORD PTR [rsp+0x940],zmm0
  b7bcc9:	25 
  b7bcca:	4d 89 d9             	mov    r9,r11
  b7bccd:	49 c1 e1 04          	shl    r9,0x4
  b7bcd1:	49 83 fb 0c          	cmp    r11,0xc
  b7bcd5:	73 19                	jae    b7bcf0 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x1270>
  b7bcd7:	c4 a1 7d 28 84 0c 60 	vmovapd ymm0,YMMWORD PTR [rsp+r9*1+0xb60]
  b7bcde:	0b 00 00 
  b7bce1:	eb 17                	jmp    b7bcfa <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x127a>
  b7bce3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  b7bcea:	84 00 00 00 00 00 
  b7bcf0:	c4 a1 79 28 84 0c 60 	vmovapd xmm0,XMMWORD PTR [rsp+r9*1+0xb60]
  b7bcf7:	0b 00 00 
  b7bcfa:	4d 8d 53 04          	lea    r10,[r11+0x4]
  b7bcfe:	c4 a1 7d 28 8c 0c 40 	vmovapd ymm1,YMMWORD PTR [rsp+r9*1+0xb40]
  b7bd05:	0b 00 00 
  b7bd08:	48 89 fb             	mov    rbx,rdi
  b7bd0b:	45 31 f6             	xor    r14d,r14d
  b7bd0e:	eb 66                	jmp    b7bd76 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x12f6>
  b7bd10:	c5 fd 10 13          	vmovupd ymm2,YMMWORD PTR [rbx]
  b7bd14:	c5 fd 10 5b e0       	vmovupd ymm3,YMMWORD PTR [rbx-0x20]
  b7bd19:	c4 e3 65 06 e2 31    	vperm2f128 ymm4,ymm3,ymm2,0x31
  b7bd1f:	c4 e3 65 18 d2 01    	vinsertf128 ymm2,ymm3,xmm2,0x1
  b7bd25:	c5 ed 14 dc          	vunpcklpd ymm3,ymm2,ymm4
  b7bd29:	c5 ed 15 d4          	vunpckhpd ymm2,ymm2,ymm4
  b7bd2d:	c4 a1 7d 29 9c 34 e0 	vmovapd YMMWORD PTR [rsp+r14*1+0x2e0],ymm3
  b7bd34:	02 00 00 
  b7bd37:	c4 a1 7d 29 94 34 a0 	vmovapd YMMWORD PTR [rsp+r14*1+0x4a0],ymm2
  b7bd3e:	04 00 00 
  b7bd41:	c4 a1 7c 10 54 72 e0 	vmovups ymm2,YMMWORD PTR [rdx+r14*2-0x20]
  b7bd48:	c4 a1 7c 29 94 34 a0 	vmovaps YMMWORD PTR [rsp+r14*1+0x7a0],ymm2
  b7bd4f:	07 00 00 
  b7bd52:	c4 a1 7d 10 14 72    	vmovupd ymm2,YMMWORD PTR [rdx+r14*2]
  b7bd58:	c4 a1 7d 29 94 34 60 	vmovapd YMMWORD PTR [rsp+r14*1+0x960],ymm2
  b7bd5f:	09 00 00 
  b7bd62:	49 83 c6 20          	add    r14,0x20
  b7bd66:	48 81 c3 f0 00 00 00 	add    rbx,0xf0
  b7bd6d:	49 81 fe a0 01 00 00 	cmp    r14,0x1a0
  b7bd74:	74 1a                	je     b7bd90 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x1310>
  b7bd76:	49 83 fb 0c          	cmp    r11,0xc
  b7bd7a:	72 94                	jb     b7bd10 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x1290>
  b7bd7c:	c5 f9 28 13          	vmovapd xmm2,XMMWORD PTR [rbx]
  b7bd80:	eb 92                	jmp    b7bd14 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x1294>
  b7bd82:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  b7bd89:	1f 84 00 00 00 00 00 
  b7bd90:	c4 e3 75 06 d0 31    	vperm2f128 ymm2,ymm1,ymm0,0x31
  b7bd96:	c4 e3 75 18 c0 01    	vinsertf128 ymm0,ymm1,xmm0,0x1
  b7bd9c:	c5 fd 14 ca          	vunpcklpd ymm1,ymm0,ymm2
  b7bda0:	c5 fd 29 8c 24 e0 00 	vmovapd YMMWORD PTR [rsp+0xe0],ymm1
  b7bda7:	00 00 
  b7bda9:	c5 fd 15 c2          	vunpckhpd ymm0,ymm0,ymm2
  b7bdad:	c5 fd 29 44 24 40    	vmovapd YMMWORD PTR [rsp+0x40],ymm0
  b7bdb3:	c5 7d 28 a4 24 20 09 	vmovapd ymm12,YMMWORD PTR [rsp+0x920]
  b7bdba:	00 00 
  b7bdbc:	c5 fc 28 84 24 60 04 	vmovaps ymm0,YMMWORD PTR [rsp+0x460]
  b7bdc3:	00 00 
  b7bdc5:	c5 fc 29 44 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm0
  b7bdcb:	c5 7d 28 ac 24 e0 0a 	vmovapd ymm13,YMMWORD PTR [rsp+0xae0]
  b7bdd2:	00 00 
  b7bdd4:	c5 7d 28 bc 24 20 06 	vmovapd ymm15,YMMWORD PTR [rsp+0x620]
  b7bddb:	00 00 
  b7bddd:	62 e1 fd 28 28 54 24 	vmovapd ymm18,YMMWORD PTR [rsp+0x8e0]
  b7bde4:	47 
  b7bde5:	62 e1 fd 28 28 44 24 	vmovapd ymm16,YMMWORD PTR [rsp+0x420]
  b7bdec:	21 
  b7bded:	c5 fd 28 84 24 a0 0a 	vmovapd ymm0,YMMWORD PTR [rsp+0xaa0]
  b7bdf4:	00 00 
  b7bdf6:	62 e1 fd 28 28 5c 24 	vmovapd ymm19,YMMWORD PTR [rsp+0x5e0]
  b7bdfd:	2f 
  b7bdfe:	62 e1 fd 28 28 74 24 	vmovapd ymm22,YMMWORD PTR [rsp+0x820]
  b7be05:	41 
  b7be06:	62 e1 fd 28 28 64 24 	vmovapd ymm20,YMMWORD PTR [rsp+0x360]
  b7be0d:	1b 
  b7be0e:	62 e1 fd 28 28 6c 24 	vmovapd ymm21,YMMWORD PTR [rsp+0x9e0]
  b7be15:	4f 
  b7be16:	62 61 fd 28 28 44 24 	vmovapd ymm24,YMMWORD PTR [rsp+0x8a0]
  b7be1d:	45 
  b7be1e:	62 e1 fd 28 28 7c 24 	vmovapd ymm23,YMMWORD PTR [rsp+0x3e0]
  b7be25:	1f 
  b7be26:	62 e1 fd 28 28 4c 24 	vmovapd ymm17,YMMWORD PTR [rsp+0x860]
  b7be2d:	43 
  b7be2e:	c5 fd 28 ac 24 a0 03 	vmovapd ymm5,YMMWORD PTR [rsp+0x3a0]
  b7be35:	00 00 
  b7be37:	c5 fd 28 bc 24 80 08 	vmovapd ymm7,YMMWORD PTR [rsp+0x880]
  b7be3e:	00 00 
  b7be40:	c5 fd 28 b4 24 c0 03 	vmovapd ymm6,YMMWORD PTR [rsp+0x3c0]
  b7be47:	00 00 
  b7be49:	c5 7d 28 9c 24 40 08 	vmovapd ymm11,YMMWORD PTR [rsp+0x840]
  b7be50:	00 00 
  b7be52:	c5 fd 28 9c 24 80 03 	vmovapd ymm3,YMMWORD PTR [rsp+0x380]
  b7be59:	00 00 
  b7be5b:	c5 7d 28 8c 24 c0 08 	vmovapd ymm9,YMMWORD PTR [rsp+0x8c0]
  b7be62:	00 00 
  b7be64:	c5 fd 28 a4 24 00 04 	vmovapd ymm4,YMMWORD PTR [rsp+0x400]
  b7be6b:	00 00 
  b7be6d:	c5 fd 28 94 24 c0 07 	vmovapd ymm2,YMMWORD PTR [rsp+0x7c0]
  b7be74:	00 00 
  b7be76:	c5 fd 28 8c 24 00 08 	vmovapd ymm1,YMMWORD PTR [rsp+0x800]
  b7be7d:	00 00 
  b7be7f:	62 61 fd 28 28 4c 24 	vmovapd ymm25,YMMWORD PTR [rsp+0x300]
  b7be86:	18 
  b7be87:	c5 7d 28 94 24 40 03 	vmovapd ymm10,YMMWORD PTR [rsp+0x340]
  b7be8e:	00 00 
  b7be90:	62 61 fd 28 28 54 24 	vmovapd ymm26,YMMWORD PTR [rsp+0x980]
  b7be97:	4c 
  b7be98:	62 61 fd 28 28 64 24 	vmovapd ymm28,YMMWORD PTR [rsp+0x4c0]
  b7be9f:	26 
  b7bea0:	62 61 fd 28 28 6c 24 	vmovapd ymm29,YMMWORD PTR [rsp+0x900]
  b7bea7:	48 
  b7bea8:	62 61 fd 28 28 5c 24 	vmovapd ymm27,YMMWORD PTR [rsp+0x440]
  b7beaf:	22 
  b7beb0:	62 71 b5 20 59 c2    	vmulpd ymm8,ymm25,ymm2
  b7beb6:	62 12 9d 20 bc c2    	vfnmadd231pd ymm8,ymm28,ymm26
  b7bebc:	c5 7d 29 04 24       	vmovapd YMMWORD PTR [rsp],ymm8
  b7bec1:	62 71 9d 20 59 c2    	vmulpd ymm8,ymm28,ymm2
  b7bec7:	62 61 fd 28 28 74 24 	vmovapd ymm30,YMMWORD PTR [rsp+0xac0]
  b7bece:	56 
  b7becf:	62 12 b5 20 b8 c2    	vfmadd231pd ymm8,ymm25,ymm26
  b7bed5:	c5 fd 28 94 24 00 06 	vmovapd ymm2,YMMWORD PTR [rsp+0x600]
  b7bedc:	00 00 
  b7bede:	62 11 a5 20 59 f5    	vmulpd ymm14,ymm27,ymm29
  b7bee4:	62 12 ed 28 bc f6    	vfnmadd231pd ymm14,ymm2,ymm30
  b7beea:	62 91 ed 28 59 d5    	vmulpd ymm2,ymm2,ymm29
  b7bef0:	62 61 fd 28 28 54 24 	vmovapd ymm26,YMMWORD PTR [rsp+0x9c0]
  b7bef7:	4e 
  b7bef8:	62 92 a5 20 b8 d6    	vfmadd231pd ymm2,ymm27,ymm30
  b7befe:	62 61 fd 28 28 6c 24 	vmovapd ymm29,YMMWORD PTR [rsp+0x500]
  b7bf05:	28 
  b7bf06:	62 61 ad 28 59 d9    	vmulpd ymm27,ymm10,ymm1
  b7bf0c:	62 02 95 20 bc da    	vfnmadd231pd ymm27,ymm29,ymm26
  b7bf12:	62 61 95 20 59 e9    	vmulpd ymm29,ymm29,ymm1
  b7bf18:	c5 fd 28 8c 24 80 0a 	vmovapd ymm1,YMMWORD PTR [rsp+0xa80]
  b7bf1f:	00 00 
  b7bf21:	62 02 ad 28 b8 ea    	vfmadd231pd ymm29,ymm10,ymm26
  b7bf27:	62 61 fd 28 28 54 24 	vmovapd ymm26,YMMWORD PTR [rsp+0x5c0]
  b7bf2e:	2e 
  b7bf2f:	62 41 dd 28 59 c9    	vmulpd ymm25,ymm4,ymm9
  b7bf35:	62 62 ad 20 bc c9    	vfnmadd231pd ymm25,ymm26,ymm1
  b7bf3b:	62 51 ad 20 59 c9    	vmulpd ymm9,ymm26,ymm9
  b7bf41:	62 61 fd 28 28 74 24 	vmovapd ymm30,YMMWORD PTR [rsp+0xa00]
  b7bf48:	50 
  b7bf49:	c4 62 dd b8 c9       	vfmadd231pd ymm9,ymm4,ymm1
  b7bf4e:	c5 fd 28 8c 24 40 05 	vmovapd ymm1,YMMWORD PTR [rsp+0x540]
  b7bf55:	00 00 
  b7bf57:	c5 25 59 d3          	vmulpd ymm10,ymm11,ymm3
  b7bf5b:	62 12 f5 28 bc d6    	vfnmadd231pd ymm10,ymm1,ymm30
  b7bf61:	62 41 f5 28 59 fb    	vmulpd ymm31,ymm1,ymm11
  b7bf67:	c5 fd 28 8c 24 40 0a 	vmovapd ymm1,YMMWORD PTR [rsp+0xa40]
  b7bf6e:	00 00 
  b7bf70:	62 02 e5 28 b8 fe    	vfmadd231pd ymm31,ymm3,ymm30
  b7bf76:	c5 fd 28 9c 24 80 05 	vmovapd ymm3,YMMWORD PTR [rsp+0x580]
  b7bf7d:	00 00 
  b7bf7f:	c5 cd 59 e7          	vmulpd ymm4,ymm6,ymm7
  b7bf83:	c4 e2 e5 bc e1       	vfnmadd231pd ymm4,ymm3,ymm1
  b7bf88:	c5 e5 59 ff          	vmulpd ymm7,ymm3,ymm7
  b7bf8c:	c5 fd 28 9c 24 20 0a 	vmovapd ymm3,YMMWORD PTR [rsp+0xa20]
  b7bf93:	00 00 
  b7bf95:	c4 e2 cd b8 f9       	vfmadd231pd ymm7,ymm6,ymm1
  b7bf9a:	c5 fd 28 8c 24 60 05 	vmovapd ymm1,YMMWORD PTR [rsp+0x560]
  b7bfa1:	00 00 
  b7bfa3:	62 b1 d5 28 59 f1    	vmulpd ymm6,ymm5,ymm17
  b7bfa9:	c4 e2 f5 bc f3       	vfnmadd231pd ymm6,ymm1,ymm3
  b7bfae:	c5 7d 28 de          	vmovapd ymm11,ymm6
  b7bfb2:	62 b1 f5 28 59 c9    	vmulpd ymm1,ymm1,ymm17
  b7bfb8:	c5 fd 28 b4 24 60 0a 	vmovapd ymm6,YMMWORD PTR [rsp+0xa60]
  b7bfbf:	00 00 
  b7bfc1:	c4 e2 d5 b8 cb       	vfmadd231pd ymm1,ymm5,ymm3
  b7bfc6:	c5 fd 29 8c 24 a0 01 	vmovapd YMMWORD PTR [rsp+0x1a0],ymm1
  b7bfcd:	00 00 
  b7bfcf:	c5 fd 28 9c 24 a0 05 	vmovapd ymm3,YMMWORD PTR [rsp+0x5a0]
  b7bfd6:	00 00 
  b7bfd8:	62 01 c5 20 59 d0    	vmulpd ymm26,ymm23,ymm24
  b7bfde:	62 62 e5 28 bc d6    	vfnmadd231pd ymm26,ymm3,ymm6
  b7bfe4:	62 01 e5 28 59 f0    	vmulpd ymm30,ymm3,ymm24
  b7bfea:	c5 fd 28 9c 24 20 05 	vmovapd ymm3,YMMWORD PTR [rsp+0x520]
  b7bff1:	00 00 
  b7bff3:	62 62 c5 20 b8 f6    	vfmadd231pd ymm30,ymm23,ymm6
  b7bff9:	c5 fd 28 ac 24 a0 07 	vmovapd ymm5,YMMWORD PTR [rsp+0x7a0]
  b7c000:	00 00 
  b7c002:	62 21 dd 20 59 c6    	vmulpd ymm24,ymm20,ymm22
  b7c008:	62 22 e5 28 bc c5    	vfnmadd231pd ymm24,ymm3,ymm21
  b7c00e:	62 a1 e5 28 59 fe    	vmulpd ymm23,ymm3,ymm22
  b7c014:	c5 fd 28 b4 24 e0 07 	vmovapd ymm6,YMMWORD PTR [rsp+0x7e0]
  b7c01b:	00 00 
  b7c01d:	62 a2 dd 20 b8 fd    	vfmadd231pd ymm23,ymm20,ymm21
  b7c023:	62 e1 fd 28 28 64 24 	vmovapd ymm20,YMMWORD PTR [rsp+0x320]
  b7c02a:	19 
  b7c02b:	62 a1 fd 20 59 f2    	vmulpd ymm22,ymm16,ymm18
  b7c031:	62 e2 e5 20 bc f0    	vfnmadd231pd ymm22,ymm19,ymm0
  b7c037:	62 a1 e5 20 59 da    	vmulpd ymm19,ymm19,ymm18
  b7c03d:	62 e1 fd 28 28 54 24 	vmovapd ymm18,YMMWORD PTR [rsp+0x9a0]
  b7c044:	4d 
  b7c045:	62 e2 fd 20 b8 d8    	vfmadd231pd ymm19,ymm16,ymm0
  b7c04b:	62 e1 fd 28 28 44 24 	vmovapd ymm16,YMMWORD PTR [rsp+0x4e0]
  b7c052:	27 
  b7c053:	62 f1 dd 20 59 de    	vmulpd ymm3,ymm20,ymm6
  b7c059:	62 b2 fd 20 bc da    	vfnmadd231pd ymm3,ymm16,ymm18
  b7c05f:	62 f1 fd 20 59 ce    	vmulpd ymm1,ymm16,ymm6
  b7c065:	c5 fd 28 b4 24 e0 02 	vmovapd ymm6,YMMWORD PTR [rsp+0x2e0]
  b7c06c:	00 00 
  b7c06e:	62 b2 dd 20 b8 ca    	vfmadd231pd ymm1,ymm20,ymm18
  b7c074:	62 e1 fd 28 28 44 24 	vmovapd ymm16,YMMWORD PTR [rsp+0x960]
  b7c07b:	4b 
  b7c07c:	c5 fd 28 44 24 20    	vmovapd ymm0,YMMWORD PTR [rsp+0x20]
  b7c082:	62 c1 fd 28 59 ec    	vmulpd ymm21,ymm0,ymm12
  b7c088:	62 c2 85 28 bc ed    	vfnmadd231pd ymm21,ymm15,ymm13
  b7c08e:	62 c1 85 28 59 d4    	vmulpd ymm18,ymm15,ymm12
  b7c094:	c5 7d 28 bc 24 a0 04 	vmovapd ymm15,YMMWORD PTR [rsp+0x4a0]
  b7c09b:	00 00 
  b7c09d:	62 c2 fd 28 b8 d5    	vfmadd231pd ymm18,ymm0,ymm13
  b7c0a3:	c5 7d 28 24 24       	vmovapd ymm12,YMMWORD PTR [rsp]
  b7c0a8:	62 41 9d 28 58 e6    	vaddpd ymm28,ymm12,ymm14
  b7c0ae:	62 c1 fd 28 28 e6    	vmovapd ymm20,ymm14
  b7c0b4:	c5 4d 59 f5          	vmulpd ymm14,ymm6,ymm5
  b7c0b8:	62 32 85 28 bc f0    	vfnmadd231pd ymm14,ymm15,ymm16
  b7c0be:	c5 85 59 c5          	vmulpd ymm0,ymm15,ymm5
  b7c0c2:	62 e1 fd 28 28 4c 24 	vmovapd ymm17,YMMWORD PTR [rsp+0xe0]
  b7c0c9:	07 
  b7c0ca:	62 11 f5 20 58 fc    	vaddpd ymm15,ymm17,ymm28
  b7c0d0:	62 b2 cd 28 b8 c0    	vfmadd231pd ymm0,ymm6,ymm16
  b7c0d6:	62 91 a5 20 58 f1    	vaddpd ymm6,ymm27,ymm25
  b7c0dc:	c5 85 58 ee          	vaddpd ymm5,ymm15,ymm6
  b7c0e0:	62 71 85 20 58 ff    	vaddpd ymm15,ymm31,ymm7
  b7c0e6:	c5 7d 29 bc 24 c0 00 	vmovapd YMMWORD PTR [rsp+0xc0],ymm15
  b7c0ed:	00 00 
  b7c0ef:	62 61 85 20 5c ff    	vsubpd ymm31,ymm31,ymm7
  b7c0f5:	c5 3d 58 fa          	vaddpd ymm15,ymm8,ymm2
  b7c0f9:	62 e1 bd 28 5c c2    	vsubpd ymm16,ymm8,ymm2
  b7c0ff:	62 d1 95 20 58 d1    	vaddpd ymm2,ymm29,ymm9
  b7c105:	c5 fd 29 94 24 00 02 	vmovapd YMMWORD PTR [rsp+0x200],ymm2
  b7c10c:	00 00 
  b7c10e:	62 d1 95 20 5c f9    	vsubpd ymm7,ymm29,ymm9
  b7c114:	62 f1 ed 20 58 d0    	vaddpd ymm2,ymm18,ymm0
  b7c11a:	c5 fd 29 54 24 20    	vmovapd YMMWORD PTR [rsp+0x20],ymm2
  b7c120:	62 71 ed 20 5c c0    	vsubpd ymm8,ymm18,ymm0
  b7c126:	62 b1 8d 20 58 c7    	vaddpd ymm0,ymm30,ymm23
  b7c12c:	c5 fd 29 84 24 20 01 	vmovapd YMMWORD PTR [rsp+0x120],ymm0
  b7c133:	00 00 
  b7c135:	62 21 8d 20 5c ef    	vsubpd ymm29,ymm30,ymm23
  b7c13b:	62 f1 e5 20 58 c1    	vaddpd ymm0,ymm19,ymm1
  b7c141:	c5 fd 29 84 24 a0 00 	vmovapd YMMWORD PTR [rsp+0xa0],ymm0
  b7c148:	00 00 
  b7c14a:	62 61 e5 20 5c f1    	vsubpd ymm30,ymm19,ymm1
  b7c150:	c5 ad 58 c4          	vaddpd ymm0,ymm10,ymm4
  b7c154:	c5 d5 58 d0          	vaddpd ymm2,ymm5,ymm0
  b7c158:	c5 fd 29 94 24 c0 01 	vmovapd YMMWORD PTR [rsp+0x1c0],ymm2
  b7c15f:	00 00 
  b7c161:	c5 ad 5c cc          	vsubpd ymm1,ymm10,ymm4
  b7c165:	c5 fd 29 8c 24 80 00 	vmovapd YMMWORD PTR [rsp+0x80],ymm1
  b7c16c:	00 00 
  b7c16e:	62 91 ad 20 58 e0    	vaddpd ymm4,ymm26,ymm24
  b7c174:	62 a1 9d 28 5c fc    	vsubpd ymm23,ymm12,ymm20
  b7c17a:	62 c1 fd 28 28 d3    	vmovapd ymm18,ymm11
  b7c180:	c5 a5 58 cc          	vaddpd ymm1,ymm11,ymm4
  b7c184:	62 81 a5 20 5c d9    	vsubpd ymm19,ymm27,ymm25
  b7c18a:	62 51 d5 20 58 d6    	vaddpd ymm10,ymm21,ymm14
  b7c190:	62 d1 d5 20 5c ee    	vsubpd ymm5,ymm21,ymm14
  b7c196:	c5 fd 29 2c 24       	vmovapd YMMWORD PTR [rsp],ymm5
  b7c19b:	62 61 cd 20 58 cb    	vaddpd ymm25,ymm22,ymm3
  b7c1a1:	62 91 f5 28 58 c9    	vaddpd ymm1,ymm1,ymm25
  b7c1a7:	c5 ad 58 e9          	vaddpd ymm5,ymm10,ymm1
  b7c1ab:	c5 fd 29 ac 24 e0 01 	vmovapd YMMWORD PTR [rsp+0x1e0],ymm5
  b7c1b2:	00 00 
  b7c1b4:	62 01 ad 20 5c c0    	vsubpd ymm24,ymm26,ymm24
  b7c1ba:	c4 62 7d 19 35 dd 8f 	vbroadcastsd ymm14,QWORD PTR [rip+0xffffffffff4f8fdd]        # 751a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2650>
  b7c1c1:	4f ff 
  b7c1c3:	c4 41 7d 28 ce       	vmovapd ymm9,ymm14
  b7c1c8:	62 32 9d 20 a8 c9    	vfmadd213pd ymm9,ymm28,ymm17
  b7c1ce:	62 f1 cd 20 5c db    	vsubpd ymm3,ymm22,ymm3
  b7c1d4:	c5 fd 29 5c 24 60    	vmovapd YMMWORD PTR [rsp+0x60],ymm3
  b7c1da:	62 62 fd 28 19 15 94 	vbroadcastsd ymm26,QWORD PTR [rip+0xffffffffff4f8c94]        # 74e78 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2328>
  b7c1e1:	8c 4f ff 
  b7c1e4:	62 81 fd 28 28 f2    	vmovapd ymm22,ymm26
  b7c1ea:	62 a2 9d 20 ac f1    	vfnmadd213pd ymm22,ymm28,ymm17
  b7c1f0:	62 62 fd 28 19 1d e6 	vbroadcastsd ymm27,QWORD PTR [rip+0xffffffffff4f8be6]        # 74de0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2290>
  b7c1f7:	8b 4f ff 
  b7c1fa:	62 22 a5 20 ac e1    	vfnmadd213pd ymm28,ymm27,ymm17
  b7c200:	c5 ed 58 cd          	vaddpd ymm1,ymm2,ymm5
  b7c204:	c5 fd 29 8c 24 e0 00 	vmovapd YMMWORD PTR [rsp+0xe0],ymm1
  b7c20b:	00 00 
  b7c20d:	62 12 cd 28 bc ca    	vfnmadd231pd ymm9,ymm6,ymm26
  b7c213:	62 12 fd 28 bc cb    	vfnmadd231pd ymm9,ymm0,ymm27
  b7c219:	c5 7d 29 8c 24 80 01 	vmovapd YMMWORD PTR [rsp+0x180],ymm9
  b7c220:	00 00 
  b7c222:	62 82 cd 28 bc f3    	vfnmadd231pd ymm22,ymm6,ymm27
  b7c228:	62 62 8d 28 b8 e6    	vfmadd231pd ymm28,ymm14,ymm6
  b7c22e:	c4 62 7d 19 2d a1 89 	vbroadcastsd ymm13,QWORD PTR [rip+0xffffffffff4f89a1]        # 74bd8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2088>
  b7c235:	4f ff 
  b7c237:	62 c1 c5 28 59 ed    	vmulpd ymm21,ymm7,ymm13
  b7c23d:	c4 62 7d 19 1d 8a 8c 	vbroadcastsd ymm11,QWORD PTR [rip+0xffffffffff4f8c8a]        # 74ed0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2380>
  b7c244:	4f ff 
  b7c246:	62 c2 fd 20 b8 eb    	vfmadd231pd ymm21,ymm16,ymm11
  b7c24c:	c4 62 7d 19 0d f3 84 	vbroadcastsd ymm9,QWORD PTR [rip+0xffffffffff4f84f3]        # 74748 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1bf8>
  b7c253:	4f ff 
  b7c255:	62 c2 85 20 b8 e9    	vfmadd231pd ymm21,ymm31,ymm9
  b7c25b:	62 c2 fd 28 b8 f6    	vfmadd231pd ymm22,ymm0,ymm14
  b7c261:	62 62 ad 20 bc e0    	vfnmadd231pd ymm28,ymm26,ymm0
  b7c267:	62 51 fd 20 59 e5    	vmulpd ymm12,ymm16,ymm13
  b7c26d:	c4 42 c5 bc e1       	vfnmadd231pd ymm12,ymm7,ymm9
  b7c272:	62 d1 fd 20 59 f1    	vmulpd ymm6,ymm16,ymm9
  b7c278:	c4 e2 a5 bc f7       	vfnmadd231pd ymm6,ymm11,ymm7
  b7c27d:	c5 7d 29 f3          	vmovapd ymm3,ymm14
  b7c281:	62 b1 fd 28 28 c2    	vmovapd ymm0,ymm18
  b7c287:	62 b2 dd 28 a8 da    	vfmadd213pd ymm3,ymm4,ymm18
  b7c28d:	62 52 85 20 bc e3    	vfnmadd231pd ymm12,ymm31,ymm11
  b7c293:	62 92 95 28 b8 f7    	vfmadd231pd ymm6,ymm13,ymm31
  b7c299:	62 91 fd 28 28 fa    	vmovapd ymm7,ymm26
  b7c29f:	62 b2 dd 28 ac fa    	vfnmadd213pd ymm7,ymm4,ymm18
  b7c2a5:	62 f2 a5 20 bc c4    	vfnmadd231pd ymm0,ymm27,ymm4
  b7c2ab:	62 e1 fd 28 28 44 24 	vmovapd ymm16,YMMWORD PTR [rsp+0x40]
  b7c2b2:	02 
  b7c2b3:	62 b1 85 28 58 e0    	vaddpd ymm4,ymm15,ymm16
  b7c2b9:	62 e1 fd 28 28 64 24 	vmovapd ymm20,YMMWORD PTR [rsp+0x200]
  b7c2c0:	10 
  b7c2c1:	62 f1 dd 20 58 e4    	vaddpd ymm4,ymm20,ymm4
  b7c2c7:	62 e1 fd 28 28 4c 24 	vmovapd ymm17,YMMWORD PTR [rsp+0xc0]
  b7c2ce:	06 
  b7c2cf:	62 e1 f5 20 58 d4    	vaddpd ymm18,ymm17,ymm4
  b7c2d5:	62 92 b5 20 bc da    	vfnmadd231pd ymm3,ymm25,ymm26
  b7c2db:	62 92 ad 28 bc db    	vfnmadd231pd ymm3,ymm10,ymm27
  b7c2e1:	62 92 b5 20 bc fb    	vfnmadd231pd ymm7,ymm25,ymm27
  b7c2e7:	62 92 8d 28 b8 c1    	vfmadd231pd ymm0,ymm14,ymm25
  b7c2ed:	62 d1 8d 20 59 ed    	vmulpd ymm5,ymm30,ymm13
  b7c2f3:	62 d2 95 20 b8 eb    	vfmadd231pd ymm5,ymm29,ymm11
  b7c2f9:	62 41 fd 28 28 f8    	vmovapd ymm31,ymm8
  b7c2ff:	c4 c2 bd b8 e9       	vfmadd231pd ymm5,ymm8,ymm9
  b7c304:	c4 c2 ad b8 fe       	vfmadd231pd ymm7,ymm10,ymm14
  b7c309:	62 d2 ad 20 bc c2    	vfnmadd231pd ymm0,ymm26,ymm10
  b7c30f:	c5 fd 29 84 24 00 01 	vmovapd YMMWORD PTR [rsp+0x100],ymm0
  b7c316:	00 00 
  b7c318:	62 41 95 20 59 cd    	vmulpd ymm25,ymm29,ymm13
  b7c31e:	62 42 8d 20 bc c9    	vfnmadd231pd ymm25,ymm30,ymm9
  b7c324:	62 d1 95 20 59 d1    	vmulpd ymm2,ymm29,ymm9
  b7c32a:	62 92 a5 28 bc d6    	vfnmadd231pd ymm2,ymm11,ymm30
  b7c330:	c4 41 7d 28 c6       	vmovapd ymm8,ymm14
  b7c335:	62 32 85 28 a8 c0    	vfmadd213pd ymm8,ymm15,ymm16
  b7c33b:	62 42 85 20 bc cb    	vfnmadd231pd ymm25,ymm31,ymm11
  b7c341:	62 92 95 28 b8 d7    	vfmadd231pd ymm2,ymm13,ymm31
  b7c347:	62 01 fd 28 28 ea    	vmovapd ymm29,ymm26
  b7c34d:	62 22 85 28 ac e8    	vfnmadd213pd ymm29,ymm15,ymm16
  b7c353:	62 32 a5 20 ac f8    	vfnmadd213pd ymm15,ymm27,ymm16
  b7c359:	c5 fd 28 8c 24 20 01 	vmovapd ymm1,YMMWORD PTR [rsp+0x120]
  b7c360:	00 00 
  b7c362:	c5 fd 28 84 24 a0 01 	vmovapd ymm0,YMMWORD PTR [rsp+0x1a0]
  b7c369:	00 00 
  b7c36b:	62 e1 fd 28 58 c1    	vaddpd ymm16,ymm0,ymm1
  b7c371:	62 61 fd 28 28 74 24 	vmovapd ymm30,YMMWORD PTR [rsp+0xa0]
  b7c378:	05 
  b7c379:	62 81 fd 20 58 c6    	vaddpd ymm16,ymm16,ymm30
  b7c37f:	c5 7d 28 54 24 20    	vmovapd ymm10,YMMWORD PTR [rsp+0x20]
  b7c385:	62 d1 fd 20 58 e2    	vaddpd ymm4,ymm16,ymm10
  b7c38b:	c5 fd 29 a4 24 60 01 	vmovapd YMMWORD PTR [rsp+0x160],ymm4
  b7c392:	00 00 
  b7c394:	62 12 dd 20 bc c2    	vfnmadd231pd ymm8,ymm20,ymm26
  b7c39a:	62 12 f5 20 bc c3    	vfnmadd231pd ymm8,ymm17,ymm27
  b7c3a0:	62 02 dd 20 bc eb    	vfnmadd231pd ymm29,ymm20,ymm27
  b7c3a6:	62 32 8d 28 b8 fc    	vfmadd231pd ymm15,ymm14,ymm20
  b7c3ac:	62 c1 e5 20 59 e5    	vmulpd ymm20,ymm19,ymm13
  b7c3b2:	62 c2 c5 20 b8 e3    	vfmadd231pd ymm20,ymm23,ymm11
  b7c3b8:	62 61 fd 28 28 7c 24 	vmovapd ymm31,YMMWORD PTR [rsp+0x80]
  b7c3bf:	04 
  b7c3c0:	62 c2 85 20 b8 e1    	vfmadd231pd ymm20,ymm31,ymm9
  b7c3c6:	62 42 f5 20 b8 ee    	vfmadd231pd ymm29,ymm17,ymm14
  b7c3cc:	62 32 ad 20 bc f9    	vfnmadd231pd ymm15,ymm26,ymm17
  b7c3d2:	62 c1 c5 20 59 c5    	vmulpd ymm16,ymm23,ymm13
  b7c3d8:	62 c2 e5 20 bc c1    	vfnmadd231pd ymm16,ymm19,ymm9
  b7c3de:	62 c1 c5 20 59 c9    	vmulpd ymm17,ymm23,ymm9
  b7c3e4:	62 a2 a5 28 bc cb    	vfnmadd231pd ymm17,ymm11,ymm19
  b7c3ea:	62 c1 fd 28 28 de    	vmovapd ymm19,ymm14
  b7c3f0:	62 e2 f5 28 a8 d8    	vfmadd213pd ymm19,ymm1,ymm0
  b7c3f6:	62 c2 85 20 bc c3    	vfnmadd231pd ymm16,ymm31,ymm11
  b7c3fc:	62 82 95 28 b8 cf    	vfmadd231pd ymm17,ymm13,ymm31
  b7c402:	62 81 fd 28 28 fa    	vmovapd ymm23,ymm26
  b7c408:	62 e2 f5 28 ac f8    	vfnmadd213pd ymm23,ymm1,ymm0
  b7c40e:	62 f2 a5 20 bc c1    	vfnmadd231pd ymm0,ymm27,ymm1
  b7c414:	62 21 fd 28 28 fa    	vmovapd ymm31,ymm18
  b7c41a:	62 f1 ed 20 58 cc    	vaddpd ymm1,ymm18,ymm4
  b7c420:	c5 fd 29 4c 24 40    	vmovapd YMMWORD PTR [rsp+0x40],ymm1
  b7c426:	62 82 8d 20 bc da    	vfnmadd231pd ymm19,ymm30,ymm26
  b7c42c:	62 82 ad 28 bc db    	vfnmadd231pd ymm19,ymm10,ymm27
  b7c432:	62 82 8d 20 bc fb    	vfnmadd231pd ymm23,ymm30,ymm27
  b7c438:	62 92 8d 28 b8 c6    	vfmadd231pd ymm0,ymm14,ymm30
  b7c43e:	62 61 fd 28 28 5c 24 	vmovapd ymm27,YMMWORD PTR [rsp+0x60]
  b7c445:	03 
  b7c446:	62 c1 a5 20 59 d5    	vmulpd ymm18,ymm27,ymm13
  b7c44c:	62 c2 bd 20 b8 d3    	vfmadd231pd ymm18,ymm24,ymm11
  b7c452:	62 c2 ad 28 b8 fe    	vfmadd231pd ymm23,ymm10,ymm14
  b7c458:	62 d2 ad 20 bc c2    	vfnmadd231pd ymm0,ymm26,ymm10
  b7c45e:	62 41 bd 20 59 d5    	vmulpd ymm26,ymm24,ymm13
  b7c464:	62 42 a5 20 bc d1    	vfnmadd231pd ymm26,ymm27,ymm9
  b7c46a:	62 41 bd 20 59 c1    	vmulpd ymm24,ymm24,ymm9
  b7c470:	62 02 a5 28 bc c3    	vfnmadd231pd ymm24,ymm11,ymm27
  b7c476:	c5 fd 28 a4 24 80 01 	vmovapd ymm4,YMMWORD PTR [rsp+0x180]
  b7c47d:	00 00 
  b7c47f:	62 31 dd 28 58 d5    	vaddpd ymm10,ymm4,ymm21
  b7c485:	c5 7d 28 34 24       	vmovapd ymm14,YMMWORD PTR [rsp]
  b7c48a:	62 c2 8d 28 b8 d1    	vfmadd231pd ymm18,ymm14,ymm9
  b7c490:	62 42 8d 28 bc d3    	vfnmadd231pd ymm26,ymm14,ymm11
  b7c496:	62 42 95 28 b8 c6    	vfmadd231pd ymm24,ymm13,ymm14
  b7c49c:	62 f1 9d 20 58 ce    	vaddpd ymm1,ymm28,ymm6
  b7c4a2:	c5 fd 29 0c 24       	vmovapd YMMWORD PTR [rsp],ymm1
  b7c4a7:	62 f1 9d 20 5c ce    	vsubpd ymm1,ymm28,ymm6
  b7c4ad:	c5 fd 29 4c 24 20    	vmovapd YMMWORD PTR [rsp+0x20],ymm1
  b7c4b3:	c5 fd 28 8c 24 00 01 	vmovapd ymm1,YMMWORD PTR [rsp+0x100]
  b7c4ba:	00 00 
  b7c4bc:	c5 75 58 ea          	vaddpd ymm13,ymm1,ymm2
  b7c4c0:	c5 f5 5c ca          	vsubpd ymm1,ymm1,ymm2
  b7c4c4:	62 21 85 28 5c d9    	vsubpd ymm27,ymm15,ymm17
  b7c4ca:	62 41 f5 20 58 f7    	vaddpd ymm30,ymm17,ymm15
  b7c4d0:	62 11 fd 28 5c f8    	vsubpd ymm15,ymm0,ymm24
  b7c4d6:	62 91 fd 28 58 f0    	vaddpd ymm6,ymm0,ymm24
  b7c4dc:	62 c1 cd 20 58 cc    	vaddpd ymm17,ymm22,ymm12
  b7c4e2:	62 51 cd 20 5c e4    	vsubpd ymm12,ymm22,ymm12
  b7c4e8:	62 81 c5 28 58 f1    	vaddpd ymm22,ymm7,ymm25
  b7c4ee:	62 91 c5 28 5c f9    	vsubpd ymm7,ymm7,ymm25
  b7c4f4:	62 31 95 20 5c d8    	vsubpd ymm11,ymm29,ymm16
  b7c4fa:	62 01 fd 20 58 cd    	vaddpd ymm25,ymm16,ymm29
  b7c500:	62 81 c5 20 5c c2    	vsubpd ymm16,ymm23,ymm26
  b7c506:	62 81 c5 20 58 fa    	vaddpd ymm23,ymm23,ymm26
  b7c50c:	62 61 e5 28 58 d5    	vaddpd ymm26,ymm3,ymm5
  b7c512:	62 b1 dd 28 5c d5    	vsubpd ymm2,ymm4,ymm21
  b7c518:	62 91 ad 28 5c c2    	vsubpd ymm0,ymm10,ymm26
  b7c51e:	c5 fd 29 84 24 40 01 	vmovapd YMMWORD PTR [rsp+0x140],ymm0
  b7c525:	00 00 
  b7c527:	c5 e5 5c e5          	vsubpd ymm4,ymm3,ymm5
  b7c52b:	62 b1 bd 28 5c dc    	vsubpd ymm3,ymm8,ymm20
  b7c531:	62 51 dd 20 58 c0    	vaddpd ymm8,ymm20,ymm8
  b7c537:	62 a1 e5 20 5c e2    	vsubpd ymm20,ymm19,ymm18
  b7c53d:	62 a1 e5 20 58 d2    	vaddpd ymm18,ymm19,ymm18
  b7c543:	62 31 e5 28 5c f4    	vsubpd ymm14,ymm3,ymm20
  b7c549:	c5 7d 28 8c 24 c0 01 	vmovapd ymm9,YMMWORD PTR [rsp+0x1c0]
  b7c550:	00 00 
  b7c552:	c5 b5 5c 84 24 e0 01 	vsubpd ymm0,ymm9,YMMWORD PTR [rsp+0x1e0]
  b7c559:	00 00 
  b7c55b:	c5 fd 29 84 24 40 02 	vmovapd YMMWORD PTR [rsp+0x240],ymm0
  b7c562:	00 00 
  b7c564:	62 b1 f5 20 58 c6    	vaddpd ymm0,ymm17,ymm22
  b7c56a:	c5 fd 29 84 24 80 02 	vmovapd YMMWORD PTR [rsp+0x280],ymm0
  b7c571:	00 00 
  b7c573:	62 61 85 20 5c 7c 24 	vsubpd ymm31,ymm31,YMMWORD PTR [rsp+0x160]
  b7c57a:	0b 
  b7c57b:	62 21 a5 28 58 e0    	vaddpd ymm28,ymm11,ymm16
  b7c581:	62 91 ad 28 58 c2    	vaddpd ymm0,ymm10,ymm26
  b7c587:	c5 fd 29 84 24 20 02 	vmovapd YMMWORD PTR [rsp+0x220],ymm0
  b7c58e:	00 00 
  b7c590:	c5 fd 28 2c 24       	vmovapd ymm5,YMMWORD PTR [rsp]
  b7c595:	62 c1 d5 28 5c dd    	vsubpd ymm19,ymm5,ymm13
  b7c59b:	62 21 e5 28 58 d4    	vaddpd ymm26,ymm3,ymm20
  b7c5a1:	62 c1 a5 20 5c ef    	vsubpd ymm21,ymm27,ymm15
  b7c5a7:	62 a1 f5 20 5c f6    	vsubpd ymm22,ymm17,ymm22
  b7c5ad:	c5 fd 28 5c 24 20    	vmovapd ymm3,YMMWORD PTR [rsp+0x20]
  b7c5b3:	62 61 e5 28 58 e9    	vaddpd ymm29,ymm3,ymm1
  b7c5b9:	62 31 a5 28 5c c8    	vsubpd ymm9,ymm11,ymm16
  b7c5bf:	62 61 8d 20 58 c6    	vaddpd ymm24,ymm30,ymm6
  b7c5c5:	c5 15 58 dd          	vaddpd ymm11,ymm13,ymm5
  b7c5c9:	c5 1d 5c ef          	vsubpd ymm13,ymm12,ymm7
  b7c5cd:	62 51 a5 20 58 d7    	vaddpd ymm10,ymm27,ymm15
  b7c5d3:	62 a1 b5 20 5c cf    	vsubpd ymm17,ymm25,ymm23
  b7c5d9:	c5 e5 5c d9          	vsubpd ymm3,ymm3,ymm1
  b7c5dd:	c5 fd 29 9c 24 a0 02 	vmovapd YMMWORD PTR [rsp+0x2a0],ymm3
  b7c5e4:	00 00 
  b7c5e6:	c5 fd 28 4c 24 40    	vmovapd ymm1,YMMWORD PTR [rsp+0x40]
  b7c5ec:	62 e1 ed 28 58 e4    	vaddpd ymm20,ymm2,ymm4
  b7c5f2:	62 61 8d 20 5c de    	vsubpd ymm27,ymm30,ymm6
  b7c5f8:	c5 7d 29 f5          	vmovapd ymm5,ymm14
  b7c5fc:	62 31 bd 28 58 fa    	vaddpd ymm15,ymm8,ymm18
  b7c602:	c5 1d 58 e7          	vaddpd ymm12,ymm12,ymm7
  b7c606:	62 31 b5 20 58 f7    	vaddpd ymm14,ymm25,ymm23
  b7c60c:	62 61 ed 28 5c cc    	vsubpd ymm25,ymm2,ymm4
  b7c612:	62 b1 bd 28 5c fa    	vsubpd ymm7,ymm8,ymm18
  b7c618:	c5 fd 28 a4 24 e0 00 	vmovapd ymm4,YMMWORD PTR [rsp+0xe0]
  b7c61f:	00 00 
  b7c621:	c5 fd 29 21          	vmovapd YMMWORD PTR [rcx],ymm4
  b7c625:	c5 fd 29 08          	vmovapd YMMWORD PTR [rax],ymm1
  b7c629:	c5 fd 28 b4 24 40 01 	vmovapd ymm6,YMMWORD PTR [rsp+0x140]
  b7c630:	00 00 
  b7c632:	c5 fd 29 b4 24 e0 02 	vmovapd YMMWORD PTR [rsp+0x2e0],ymm6
  b7c639:	00 00 
  b7c63b:	c5 fd 29 ac 24 a0 04 	vmovapd YMMWORD PTR [rsp+0x4a0],ymm5
  b7c642:	00 00 
  b7c644:	c5 7d 28 84 24 80 02 	vmovapd ymm8,YMMWORD PTR [rsp+0x280]
  b7c64b:	00 00 
  b7c64d:	c5 7d 29 84 24 00 03 	vmovapd YMMWORD PTR [rsp+0x300],ymm8
  b7c654:	00 00 
  b7c656:	62 61 fd 28 29 64 24 	vmovapd YMMWORD PTR [rsp+0x4c0],ymm28
  b7c65d:	26 
  b7c65e:	62 e1 fd 28 29 5c 24 	vmovapd YMMWORD PTR [rsp+0x320],ymm19
  b7c665:	19 
  b7c666:	62 e1 fd 28 29 6c 24 	vmovapd YMMWORD PTR [rsp+0x4e0],ymm21
  b7c66d:	27 
  b7c66e:	62 61 fd 28 29 6c 24 	vmovapd YMMWORD PTR [rsp+0x340],ymm29
  b7c675:	1a 
  b7c676:	62 61 fd 28 29 44 24 	vmovapd YMMWORD PTR [rsp+0x500],ymm24
  b7c67d:	28 
  b7c67e:	c5 7d 29 ac 24 60 03 	vmovapd YMMWORD PTR [rsp+0x360],ymm13
  b7c685:	00 00 
  b7c687:	62 e1 fd 28 29 4c 24 	vmovapd YMMWORD PTR [rsp+0x520],ymm17
  b7c68e:	29 
  b7c68f:	62 e1 fd 28 29 64 24 	vmovapd YMMWORD PTR [rsp+0x380],ymm20
  b7c696:	1c 
  b7c697:	c5 7d 29 bc 24 40 05 	vmovapd YMMWORD PTR [rsp+0x540],ymm15
  b7c69e:	00 00 
  b7c6a0:	62 e1 fd 28 28 54 24 	vmovapd ymm18,YMMWORD PTR [rsp+0x240]
  b7c6a7:	12 
  b7c6a8:	62 e1 fd 28 29 54 24 	vmovapd YMMWORD PTR [rsp+0x3a0],ymm18
  b7c6af:	1d 
  b7c6b0:	62 61 fd 28 29 7c 24 	vmovapd YMMWORD PTR [rsp+0x560],ymm31
  b7c6b7:	2b 
  b7c6b8:	c5 fd 29 84 24 c0 03 	vmovapd YMMWORD PTR [rsp+0x3c0],ymm0
  b7c6bf:	00 00 
  b7c6c1:	62 61 fd 28 29 54 24 	vmovapd YMMWORD PTR [rsp+0x580],ymm26
  b7c6c8:	2c 
  b7c6c9:	62 e1 fd 28 29 74 24 	vmovapd YMMWORD PTR [rsp+0x3e0],ymm22
  b7c6d0:	1f 
  b7c6d1:	c5 7d 29 8c 24 a0 05 	vmovapd YMMWORD PTR [rsp+0x5a0],ymm9
  b7c6d8:	00 00 
  b7c6da:	c5 7d 29 9c 24 00 04 	vmovapd YMMWORD PTR [rsp+0x400],ymm11
  b7c6e1:	00 00 
  b7c6e3:	c5 7d 29 94 24 c0 05 	vmovapd YMMWORD PTR [rsp+0x5c0],ymm10
  b7c6ea:	00 00 
  b7c6ec:	c5 fd 29 9c 24 20 04 	vmovapd YMMWORD PTR [rsp+0x420],ymm3
  b7c6f3:	00 00 
  b7c6f5:	62 61 fd 28 29 5c 24 	vmovapd YMMWORD PTR [rsp+0x5e0],ymm27
  b7c6fc:	2f 
  b7c6fd:	c5 7d 29 a4 24 40 04 	vmovapd YMMWORD PTR [rsp+0x440],ymm12
  b7c704:	00 00 
  b7c706:	c5 7d 29 b4 24 00 06 	vmovapd YMMWORD PTR [rsp+0x600],ymm14
  b7c70d:	00 00 
  b7c70f:	62 61 fd 28 29 4c 24 	vmovapd YMMWORD PTR [rsp+0x460],ymm25
  b7c716:	23 
  b7c717:	c5 fd 29 bc 24 20 06 	vmovapd YMMWORD PTR [rsp+0x620],ymm7
  b7c71e:	00 00 
  b7c720:	62 e1 fd 28 28 f9    	vmovapd ymm23,ymm1
  b7c726:	c5 fd 28 1d 32 a4 4f 	vmovapd ymm3,YMMWORD PTR [rip+0xffffffffff4fa432]        # 76b60 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4010>
  b7c72d:	ff 
  b7c72e:	62 e2 e5 28 7f fc    	vpermt2pd ymm23,ymm3,ymm4
  b7c734:	62 e1 fd 28 28 05 02 	vmovapd ymm16,YMMWORD PTR [rip+0xffffffffff4faf02]        # 77640 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4af0>
  b7c73b:	af 4f ff 
  b7c73e:	62 f2 fd 20 7f cc    	vpermt2pd ymm1,ymm16,ymm4
  b7c744:	62 61 fd 28 28 f5    	vmovapd ymm30,ymm5
  b7c74a:	c5 fd 28 e6          	vmovapd ymm4,ymm6
  b7c74e:	62 62 e5 28 7f f6    	vpermt2pd ymm30,ymm3,ymm6
  b7c754:	c5 7d 29 c6          	vmovapd ymm6,ymm8
  b7c758:	62 61 fd 28 29 64 24 	vmovapd YMMWORD PTR [rsp+0x260],ymm28
  b7c75f:	13 
  b7c760:	62 42 e5 28 7f e0    	vpermt2pd ymm28,ymm3,ymm8
  b7c766:	62 e1 fd 28 29 6c 24 	vmovapd YMMWORD PTR [rsp+0x160],ymm21
  b7c76d:	0b 
  b7c76e:	62 e1 fd 28 29 5c 24 	vmovapd YMMWORD PTR [rsp+0x100],ymm19
  b7c775:	08 
  b7c776:	62 a2 e5 28 7f eb    	vpermt2pd ymm21,ymm3,ymm19
  b7c77c:	62 61 fd 28 29 44 24 	vmovapd YMMWORD PTR [rsp+0x180],ymm24
  b7c783:	0c 
  b7c784:	62 61 fd 28 29 6c 24 	vmovapd YMMWORD PTR [rsp+0x120],ymm29
  b7c78b:	09 
  b7c78c:	62 02 e5 28 7f c5    	vpermt2pd ymm24,ymm3,ymm29
  b7c792:	62 31 fd 28 28 c1    	vmovapd ymm8,ymm17
  b7c798:	c5 7d 29 ac 24 a0 01 	vmovapd YMMWORD PTR [rsp+0x1a0],ymm13
  b7c79f:	00 00 
  b7c7a1:	62 52 e5 28 7f c5    	vpermt2pd ymm8,ymm3,ymm13
  b7c7a7:	c4 41 7d 28 ef       	vmovapd ymm13,ymm15
  b7c7ac:	62 e1 fd 28 29 64 24 	vmovapd YMMWORD PTR [rsp+0x1c0],ymm20
  b7c7b3:	0e 
  b7c7b4:	62 32 e5 28 7f fc    	vpermt2pd ymm15,ymm3,ymm20
  b7c7ba:	62 61 fd 28 29 7c 24 	vmovapd YMMWORD PTR [rsp+0x1e0],ymm31
  b7c7c1:	0f 
  b7c7c2:	62 81 fd 28 28 e7    	vmovapd ymm20,ymm31
  b7c7c8:	62 21 fd 28 28 fa    	vmovapd ymm31,ymm18
  b7c7ce:	62 a2 e5 28 7f e2    	vpermt2pd ymm20,ymm3,ymm18
  b7c7d4:	62 61 fd 28 29 54 24 	vmovapd YMMWORD PTR [rsp+0x200],ymm26
  b7c7db:	10 
  b7c7dc:	62 81 fd 28 28 d2    	vmovapd ymm18,ymm26
  b7c7e2:	62 61 fd 28 28 54 24 	vmovapd ymm26,YMMWORD PTR [rsp+0x220]
  b7c7e9:	11 
  b7c7ea:	62 82 e5 28 7f d2    	vpermt2pd ymm18,ymm3,ymm26
  b7c7f0:	c5 7d 29 8c 24 80 00 	vmovapd YMMWORD PTR [rsp+0x80],ymm9
  b7c7f7:	00 00 
  b7c7f9:	62 e1 fd 28 29 74 24 	vmovapd YMMWORD PTR [rsp+0x60],ymm22
  b7c800:	03 
  b7c801:	62 32 e5 28 7f ce    	vpermt2pd ymm9,ymm3,ymm22
  b7c807:	c5 7d 29 94 24 c0 00 	vmovapd YMMWORD PTR [rsp+0xc0],ymm10
  b7c80e:	00 00 
  b7c810:	c5 7d 29 9c 24 a0 00 	vmovapd YMMWORD PTR [rsp+0xa0],ymm11
  b7c817:	00 00 
  b7c819:	62 52 e5 28 7f d3    	vpermt2pd ymm10,ymm3,ymm11
  b7c81f:	62 61 fd 28 29 1c 24 	vmovapd YMMWORD PTR [rsp],ymm27
  b7c826:	62 11 fd 28 28 db    	vmovapd ymm11,ymm27
  b7c82c:	62 61 fd 28 28 5c 24 	vmovapd ymm27,YMMWORD PTR [rsp+0x2a0]
  b7c833:	15 
  b7c834:	62 12 e5 28 7f db    	vpermt2pd ymm11,ymm3,ymm27
  b7c83a:	c5 7d 29 b4 24 e0 00 	vmovapd YMMWORD PTR [rsp+0xe0],ymm14
  b7c841:	00 00 
  b7c843:	c5 7d 29 64 24 20    	vmovapd YMMWORD PTR [rsp+0x20],ymm12
  b7c849:	62 52 e5 28 7f f4    	vpermt2pd ymm14,ymm3,ymm12
  b7c84f:	c5 fd 29 7c 24 40    	vmovapd YMMWORD PTR [rsp+0x40],ymm7
  b7c855:	62 92 e5 28 7f f9    	vpermt2pd ymm7,ymm3,ymm25
  b7c85b:	49 83 fb 0c          	cmp    r11,0xc
  b7c85f:	0f 82 ab f1 ff ff    	jb     b7ba10 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0xf90>
  b7c865:	62 a1 fd 28 11 3c 0e 	vmovupd YMMWORD PTR [rsi+r9*1],ymm23
  b7c86c:	c4 a1 79 11 4c 0e 20 	vmovupd XMMWORD PTR [rsi+r9*1+0x20],xmm1
  b7c873:	62 21 fd 28 11 b4 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0xf0],ymm30
  b7c87a:	f0 00 00 00 
  b7c87e:	c4 e3 7d 19 e1 01    	vextractf128 xmm1,ymm4,0x1
  b7c884:	c4 e3 7d 19 e8 01    	vextractf128 xmm0,ymm5,0x1
  b7c88a:	c5 f9 14 c1          	vunpcklpd xmm0,xmm0,xmm1
  b7c88e:	c4 a1 79 11 84 0e 10 	vmovupd XMMWORD PTR [rsi+r9*1+0x110],xmm0
  b7c895:	01 00 00 
  b7c898:	62 21 fd 28 11 64 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0x1e0],ymm28
  b7c89f:	0f 
  b7c8a0:	c4 e3 7d 19 f0 01    	vextractf128 xmm0,ymm6,0x1
  b7c8a6:	c5 fd 28 8c 24 60 02 	vmovapd ymm1,YMMWORD PTR [rsp+0x260]
  b7c8ad:	00 00 
  b7c8af:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  b7c8b5:	c5 f1 14 c0          	vunpcklpd xmm0,xmm1,xmm0
  b7c8b9:	c4 a1 79 11 84 0e 00 	vmovupd XMMWORD PTR [rsi+r9*1+0x200],xmm0
  b7c8c0:	02 00 00 
  b7c8c3:	62 a1 fd 28 11 ac 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0x2d0],ymm21
  b7c8ca:	d0 02 00 00 
  b7c8ce:	c5 fc 28 84 24 00 01 	vmovaps ymm0,YMMWORD PTR [rsp+0x100]
  b7c8d5:	00 00 
  b7c8d7:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  b7c8dd:	c5 fc 28 8c 24 60 01 	vmovaps ymm1,YMMWORD PTR [rsp+0x160]
  b7c8e4:	00 00 
  b7c8e6:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  b7c8ec:	c5 f0 16 c0          	vmovlhps xmm0,xmm1,xmm0
  b7c8f0:	c4 a1 78 11 84 0e f0 	vmovups XMMWORD PTR [rsi+r9*1+0x2f0],xmm0
  b7c8f7:	02 00 00 
  b7c8fa:	62 21 fd 28 11 44 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0x3c0],ymm24
  b7c901:	1e 
  b7c902:	c5 fc 28 84 24 20 01 	vmovaps ymm0,YMMWORD PTR [rsp+0x120]
  b7c909:	00 00 
  b7c90b:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  b7c911:	c5 fc 28 8c 24 80 01 	vmovaps ymm1,YMMWORD PTR [rsp+0x180]
  b7c918:	00 00 
  b7c91a:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  b7c920:	c5 f0 16 c0          	vmovlhps xmm0,xmm1,xmm0
  b7c924:	c4 a1 78 11 84 0e e0 	vmovups XMMWORD PTR [rsi+r9*1+0x3e0],xmm0
  b7c92b:	03 00 00 
  b7c92e:	c4 21 7d 11 84 0e b0 	vmovupd YMMWORD PTR [rsi+r9*1+0x4b0],ymm8
  b7c935:	04 00 00 
  b7c938:	c5 fd 28 84 24 a0 01 	vmovapd ymm0,YMMWORD PTR [rsp+0x1a0]
  b7c93f:	00 00 
  b7c941:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  b7c947:	62 e3 7d 28 19 c9 01 	vextractf32x4 xmm1,ymm17,0x1
  b7c94e:	c5 f1 14 c0          	vunpcklpd xmm0,xmm1,xmm0
  b7c952:	c4 a1 79 11 84 0e d0 	vmovupd XMMWORD PTR [rsi+r9*1+0x4d0],xmm0
  b7c959:	04 00 00 
  b7c95c:	c4 21 7d 11 bc 0e a0 	vmovupd YMMWORD PTR [rsi+r9*1+0x5a0],ymm15
  b7c963:	05 00 00 
  b7c966:	c5 fd 28 84 24 c0 01 	vmovapd ymm0,YMMWORD PTR [rsp+0x1c0]
  b7c96d:	00 00 
  b7c96f:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  b7c975:	c4 63 7d 19 e9 01    	vextractf128 xmm1,ymm13,0x1
  b7c97b:	c5 f1 14 c0          	vunpcklpd xmm0,xmm1,xmm0
  b7c97f:	c4 a1 79 11 84 0e c0 	vmovupd XMMWORD PTR [rsi+r9*1+0x5c0],xmm0
  b7c986:	05 00 00 
  b7c989:	62 a1 fd 28 11 a4 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0x690],ymm20
  b7c990:	90 06 00 00 
  b7c994:	62 63 7d 28 19 f8 01 	vextractf32x4 xmm0,ymm31,0x1
  b7c99b:	c5 fd 28 8c 24 e0 01 	vmovapd ymm1,YMMWORD PTR [rsp+0x1e0]
  b7c9a2:	00 00 
  b7c9a4:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  b7c9aa:	c5 f1 14 c0          	vunpcklpd xmm0,xmm1,xmm0
  b7c9ae:	c4 a1 79 11 84 0e b0 	vmovupd XMMWORD PTR [rsi+r9*1+0x6b0],xmm0
  b7c9b5:	06 00 00 
  b7c9b8:	62 a1 fd 28 11 54 0e 	vmovupd YMMWORD PTR [rsi+r9*1+0x780],ymm18
  b7c9bf:	3c 
  b7c9c0:	62 63 7d 28 19 d0 01 	vextractf32x4 xmm0,ymm26,0x1
  b7c9c7:	c5 fd 28 8c 24 00 02 	vmovapd ymm1,YMMWORD PTR [rsp+0x200]
  b7c9ce:	00 00 
  b7c9d0:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  b7c9d6:	c5 f1 14 c0          	vunpcklpd xmm0,xmm1,xmm0
  b7c9da:	c4 a1 79 11 84 0e a0 	vmovupd XMMWORD PTR [rsi+r9*1+0x7a0],xmm0
  b7c9e1:	07 00 00 
  b7c9e4:	c4 21 7d 11 8c 0e 70 	vmovupd YMMWORD PTR [rsi+r9*1+0x870],ymm9
  b7c9eb:	08 00 00 
  b7c9ee:	c5 fc 28 44 24 60    	vmovaps ymm0,YMMWORD PTR [rsp+0x60]
  b7c9f4:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  b7c9fa:	c5 fc 28 8c 24 80 00 	vmovaps ymm1,YMMWORD PTR [rsp+0x80]
  b7ca01:	00 00 
  b7ca03:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  b7ca09:	c5 f0 16 c0          	vmovlhps xmm0,xmm1,xmm0
  b7ca0d:	c4 a1 78 11 84 0e 90 	vmovups XMMWORD PTR [rsi+r9*1+0x890],xmm0
  b7ca14:	08 00 00 
  b7ca17:	c4 21 7d 11 94 0e 60 	vmovupd YMMWORD PTR [rsi+r9*1+0x960],ymm10
  b7ca1e:	09 00 00 
  b7ca21:	c5 fc 28 84 24 a0 00 	vmovaps ymm0,YMMWORD PTR [rsp+0xa0]
  b7ca28:	00 00 
  b7ca2a:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  b7ca30:	c5 fc 28 8c 24 c0 00 	vmovaps ymm1,YMMWORD PTR [rsp+0xc0]
  b7ca37:	00 00 
  b7ca39:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  b7ca3f:	c5 f0 16 c0          	vmovlhps xmm0,xmm1,xmm0
  b7ca43:	c4 a1 78 11 84 0e 80 	vmovups XMMWORD PTR [rsi+r9*1+0x980],xmm0
  b7ca4a:	09 00 00 
  b7ca4d:	c4 21 7d 11 9c 0e 50 	vmovupd YMMWORD PTR [rsi+r9*1+0xa50],ymm11
  b7ca54:	0a 00 00 
  b7ca57:	62 63 7d 28 19 d8 01 	vextractf32x4 xmm0,ymm27,0x1
  b7ca5e:	c5 fd 28 0c 24       	vmovapd ymm1,YMMWORD PTR [rsp]
  b7ca63:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  b7ca69:	c5 f1 14 c0          	vunpcklpd xmm0,xmm1,xmm0
  b7ca6d:	c4 a1 79 11 84 0e 70 	vmovupd XMMWORD PTR [rsi+r9*1+0xa70],xmm0
  b7ca74:	0a 00 00 
  b7ca77:	c4 21 7d 11 b4 0e 40 	vmovupd YMMWORD PTR [rsi+r9*1+0xb40],ymm14
  b7ca7e:	0b 00 00 
  b7ca81:	c5 fc 28 44 24 20    	vmovaps ymm0,YMMWORD PTR [rsp+0x20]
  b7ca87:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  b7ca8d:	c5 fc 28 8c 24 e0 00 	vmovaps ymm1,YMMWORD PTR [rsp+0xe0]
  b7ca94:	00 00 
  b7ca96:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  b7ca9c:	c5 f0 16 c0          	vmovlhps xmm0,xmm1,xmm0
  b7caa0:	c4 a1 78 11 84 0e 60 	vmovups XMMWORD PTR [rsi+r9*1+0xb60],xmm0
  b7caa7:	0b 00 00 
  b7caaa:	c4 a1 7d 11 bc 0e 30 	vmovupd YMMWORD PTR [rsi+r9*1+0xc30],ymm7
  b7cab1:	0c 00 00 
  b7cab4:	62 63 7d 28 19 c8 01 	vextractf32x4 xmm0,ymm25,0x1
  b7cabb:	c5 fd 28 4c 24 40    	vmovapd ymm1,YMMWORD PTR [rsp+0x40]
  b7cac1:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  b7cac7:	c5 f1 14 c0          	vunpcklpd xmm0,xmm1,xmm0
  b7cacb:	c4 a1 79 11 84 0e 50 	vmovupd XMMWORD PTR [rsi+r9*1+0xc50],xmm0
  b7cad2:	0c 00 00 
  b7cad5:	e9 f5 f0 ff ff       	jmp    b7bbcf <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x114f>
  b7cada:	48 8d 65 f0          	lea    rsp,[rbp-0x10]
  b7cade:	5b                   	pop    rbx
  b7cadf:	41 5e                	pop    r14
  b7cae1:	5d                   	pop    rbp
  b7cae2:	c5 f8 77             	vzeroupper
  b7cae5:	c3                   	ret
