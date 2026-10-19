
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

000000000072fc40 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  72fc40:	55                   	push   rbp
  72fc41:	48 89 e5             	mov    rbp,rsp
  72fc44:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  72fc48:	48 81 ec c0 01 00 00 	sub    rsp,0x1c0
  72fc4f:	c6 84 24 40 01 00 00 	mov    BYTE PTR [rsp+0x140],0x0
  72fc56:	00 
  72fc57:	48 8d 84 24 40 01 00 	lea    rax,[rsp+0x140]
  72fc5e:	00 
  72fc5f:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  72fc64:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  72fc69:	c5 fc 10 07          	vmovups ymm0,YMMWORD PTR [rdi]
  72fc6d:	c5 f8 10 57 20       	vmovups xmm2,XMMWORD PTR [rdi+0x20]
  72fc72:	c5 fc 10 5f 30       	vmovups ymm3,YMMWORD PTR [rdi+0x30]
  72fc77:	c5 f8 10 77 50       	vmovups xmm6,XMMWORD PTR [rdi+0x50]
  72fc7c:	c5 fc 10 4f 60       	vmovups ymm1,YMMWORD PTR [rdi+0x60]
  72fc81:	c5 78 10 97 80 00 00 	vmovups xmm10,XMMWORD PTR [rdi+0x80]
  72fc88:	00 
  72fc89:	c5 fc 10 af 90 00 00 	vmovups ymm5,YMMWORD PTR [rdi+0x90]
  72fc90:	00 
  72fc91:	c5 f8 10 bf b0 00 00 	vmovups xmm7,XMMWORD PTR [rdi+0xb0]
  72fc98:	00 
  72fc99:	c5 fc 10 a7 c0 00 00 	vmovups ymm4,YMMWORD PTR [rdi+0xc0]
  72fca0:	00 
  72fca1:	c5 78 10 af e0 00 00 	vmovups xmm13,XMMWORD PTR [rdi+0xe0]
  72fca8:	00 
  72fca9:	c5 7c 10 8f f0 00 00 	vmovups ymm9,YMMWORD PTR [rdi+0xf0]
  72fcb0:	00 
  72fcb1:	c5 78 10 9f 10 01 00 	vmovups xmm11,XMMWORD PTR [rdi+0x110]
  72fcb8:	00 
  72fcb9:	c5 7c 10 b7 20 01 00 	vmovups ymm14,YMMWORD PTR [rdi+0x120]
  72fcc0:	00 
  72fcc1:	c5 78 10 bf 40 01 00 	vmovups xmm15,XMMWORD PTR [rdi+0x140]
  72fcc8:	00 
  72fcc9:	c5 7c 10 87 50 01 00 	vmovups ymm8,YMMWORD PTR [rdi+0x150]
  72fcd0:	00 
  72fcd1:	c5 7c c6 e2 88       	vshufps ymm12,ymm0,ymm2,0x88
  72fcd6:	c5 fc c6 c2 dd       	vshufps ymm0,ymm0,ymm2,0xdd
  72fcdb:	c5 fc 29 44 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm0
  72fce1:	c4 c1 5c c6 c5 88    	vshufps ymm0,ymm4,ymm13,0x88
  72fce7:	c4 c1 5c c6 d5 dd    	vshufps ymm2,ymm4,ymm13,0xdd
  72fced:	c5 fc 29 94 24 a0 00 	vmovaps YMMWORD PTR [rsp+0xa0],ymm2
  72fcf4:	00 00 
  72fcf6:	c4 c1 74 c6 d2 88    	vshufps ymm2,ymm1,ymm10,0x88
  72fcfc:	c5 fc 29 94 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm2
  72fd03:	00 00 
  72fd05:	c4 c1 74 c6 e2 dd    	vshufps ymm4,ymm1,ymm10,0xdd
  72fd0b:	c4 c1 0c c6 cf 88    	vshufps ymm1,ymm14,ymm15,0x88
  72fd11:	c5 fc 29 4c 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm1
  72fd17:	c4 c1 0c c6 cf dd    	vshufps ymm1,ymm14,ymm15,0xdd
  72fd1d:	c5 64 c6 fe 88       	vshufps ymm15,ymm3,ymm6,0x88
  72fd22:	c5 64 c6 ee dd       	vshufps ymm13,ymm3,ymm6,0xdd
  72fd27:	c4 c1 34 c6 db 88    	vshufps ymm3,ymm9,ymm11,0x88
  72fd2d:	c4 41 34 c6 db dd    	vshufps ymm11,ymm9,ymm11,0xdd
  72fd33:	c5 d4 c6 f7 88       	vshufps ymm6,ymm5,ymm7,0x88
  72fd38:	c5 54 c6 f7 dd       	vshufps ymm14,ymm5,ymm7,0xdd
  72fd3d:	c5 f8 10 97 70 01 00 	vmovups xmm2,XMMWORD PTR [rdi+0x170]
  72fd44:	00 
  72fd45:	c5 3c c6 d2 88       	vshufps ymm10,ymm8,ymm2,0x88
  72fd4a:	c5 bc c6 d2 dd       	vshufps ymm2,ymm8,ymm2,0xdd
  72fd4f:	c4 c3 fd 01 ec d8    	vpermpd ymm5,ymm12,0xd8
  72fd55:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  72fd5b:	c5 54 58 c8          	vaddps ymm9,ymm5,ymm0
  72fd5f:	c5 d4 5c c0          	vsubps ymm0,ymm5,ymm0
  72fd63:	c5 fc 29 84 24 20 01 	vmovaps YMMWORD PTR [rsp+0x120],ymm0
  72fd6a:	00 00 
  72fd6c:	c4 e3 fd 01 c4 d8    	vpermpd ymm0,ymm4,0xd8
  72fd72:	c4 e3 fd 01 c9 d8    	vpermpd ymm1,ymm1,0xd8
  72fd78:	c5 fc 58 f9          	vaddps ymm7,ymm0,ymm1
  72fd7c:	c5 fc 5c c1          	vsubps ymm0,ymm0,ymm1
  72fd80:	c5 fc 29 84 24 00 01 	vmovaps YMMWORD PTR [rsp+0x100],ymm0
  72fd87:	00 00 
  72fd89:	c4 c3 fd 01 c7 d8    	vpermpd ymm0,ymm15,0xd8
  72fd8f:	c4 e3 fd 01 cb d8    	vpermpd ymm1,ymm3,0xd8
  72fd95:	c5 fc 58 d9          	vaddps ymm3,ymm0,ymm1
  72fd99:	c5 fc 29 9c 24 e0 00 	vmovaps YMMWORD PTR [rsp+0xe0],ymm3
  72fda0:	00 00 
  72fda2:	c5 fc 5c c9          	vsubps ymm1,ymm0,ymm1
  72fda6:	c4 c3 fd 01 c5 d8    	vpermpd ymm0,ymm13,0xd8
  72fdac:	c4 c3 fd 01 db d8    	vpermpd ymm3,ymm11,0xd8
  72fdb2:	c5 7c 58 db          	vaddps ymm11,ymm0,ymm3
  72fdb6:	c5 fc 5c db          	vsubps ymm3,ymm0,ymm3
  72fdba:	c4 c3 fd 01 c6 d8    	vpermpd ymm0,ymm14,0xd8
  72fdc0:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  72fdc6:	c5 7c 58 e2          	vaddps ymm12,ymm0,ymm2
  72fdca:	c5 fc 5c e2          	vsubps ymm4,ymm0,ymm2
  72fdce:	c4 e3 fd 01 d6 d8    	vpermpd ymm2,ymm6,0xd8
  72fdd4:	c4 43 fd 01 d2 d8    	vpermpd ymm10,ymm10,0xd8
  72fdda:	c5 2c 58 c2          	vaddps ymm8,ymm10,ymm2
  72fdde:	c4 41 6c 5c d2       	vsubps ymm10,ymm2,ymm10
  72fde3:	c4 e3 fd 01 54 24 40 	vpermpd ymm2,YMMWORD PTR [rsp+0x40],0xd8
  72fdea:	d8 
  72fdeb:	c4 63 fd 01 ac 24 a0 	vpermpd ymm13,YMMWORD PTR [rsp+0xa0],0xd8
  72fdf2:	00 00 00 d8 
  72fdf6:	c5 94 58 f2          	vaddps ymm6,ymm13,ymm2
  72fdfa:	c4 c1 6c 5c c5       	vsubps ymm0,ymm2,ymm13
  72fdff:	c5 fc 29 44 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm0
  72fe05:	c4 63 fd 01 ac 24 80 	vpermpd ymm13,YMMWORD PTR [rsp+0x80],0xd8
  72fe0c:	00 00 00 d8 
  72fe10:	c4 63 fd 01 7c 24 60 	vpermpd ymm15,YMMWORD PTR [rsp+0x60],0xd8
  72fe17:	d8 
  72fe18:	c4 c1 14 58 c7       	vaddps ymm0,ymm13,ymm15
  72fe1d:	c4 41 04 5c ed       	vsubps ymm13,ymm15,ymm13
  72fe22:	c5 74 58 fb          	vaddps ymm15,ymm1,ymm3
  72fe26:	c5 e4 5c c9          	vsubps ymm1,ymm3,ymm1
  72fe2a:	c4 c1 5c 5c da       	vsubps ymm3,ymm4,ymm10
  72fe2f:	c5 ac 58 e4          	vaddps ymm4,ymm10,ymm4
  72fe33:	c4 62 7d 18 15 60 55 	vbroadcastss ymm10,DWORD PTR [rip+0xffffffffff945560]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  72fe3a:	94 ff 
  72fe3c:	c4 41 04 59 fa       	vmulps ymm15,ymm15,ymm10
  72fe41:	c5 ac 59 eb          	vmulps ymm5,ymm10,ymm3
  72fe45:	c5 ac 59 d1          	vmulps ymm2,ymm10,ymm1
  72fe49:	c5 ac 59 e4          	vmulps ymm4,ymm10,ymm4
  72fe4d:	c5 34 58 f0          	vaddps ymm14,ymm9,ymm0
  72fe51:	c5 b4 5c c0          	vsubps ymm0,ymm9,ymm0
  72fe55:	c5 fc 29 84 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm0
  72fe5c:	00 00 
  72fe5e:	c4 41 24 58 cc       	vaddps ymm9,ymm11,ymm12
  72fe63:	c4 c1 24 5c c4       	vsubps ymm0,ymm11,ymm12
  72fe68:	c5 fc 29 84 24 a0 00 	vmovaps YMMWORD PTR [rsp+0xa0],ymm0
  72fe6f:	00 00 
  72fe71:	c5 4c 58 e7          	vaddps ymm12,ymm6,ymm7
  72fe75:	c5 cc 5c c7          	vsubps ymm0,ymm6,ymm7
  72fe79:	c5 fc 29 84 24 c0 00 	vmovaps YMMWORD PTR [rsp+0xc0],ymm0
  72fe80:	00 00 
  72fe82:	c5 fc 28 84 24 e0 00 	vmovaps ymm0,YMMWORD PTR [rsp+0xe0]
  72fe89:	00 00 
  72fe8b:	c5 bc 58 f8          	vaddps ymm7,ymm8,ymm0
  72fe8f:	c5 3c 5c d8          	vsubps ymm11,ymm8,ymm0
  72fe93:	c5 fc 28 84 24 20 01 	vmovaps ymm0,YMMWORD PTR [rsp+0x120]
  72fe9a:	00 00 
  72fe9c:	c5 fc 28 8c 24 00 01 	vmovaps ymm1,YMMWORD PTR [rsp+0x100]
  72fea3:	00 00 
  72fea5:	c5 fc 58 f1          	vaddps ymm6,ymm0,ymm1
  72fea9:	c5 7c 5c d1          	vsubps ymm10,ymm0,ymm1
  72fead:	c5 ec 5c cc          	vsubps ymm1,ymm2,ymm4
  72feb1:	c5 6c 58 c4          	vaddps ymm8,ymm2,ymm4
  72feb5:	c5 fc 28 44 24 40    	vmovaps ymm0,YMMWORD PTR [rsp+0x40]
  72febb:	c5 94 58 e0          	vaddps ymm4,ymm13,ymm0
  72febf:	c4 41 7c 5c ed       	vsubps ymm13,ymm0,ymm13
  72fec4:	c5 84 58 c5          	vaddps ymm0,ymm15,ymm5
  72fec8:	c4 c1 54 5c ef       	vsubps ymm5,ymm5,ymm15
  72fecd:	c5 8c 58 df          	vaddps ymm3,ymm14,ymm7
  72fed1:	c5 0c 5c ff          	vsubps ymm15,ymm14,ymm7
  72fed5:	c4 c1 1c 58 d1       	vaddps ymm2,ymm12,ymm9
  72feda:	c5 fc 29 54 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm2
  72fee0:	c4 c1 1c 5c d1       	vsubps ymm2,ymm12,ymm9
  72fee5:	c5 fc 29 54 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm2
  72feeb:	c5 cc 58 f8          	vaddps ymm7,ymm6,ymm0
  72feef:	c5 cc 5c d0          	vsubps ymm2,ymm6,ymm0
  72fef3:	c5 dc 58 f1          	vaddps ymm6,ymm4,ymm1
  72fef7:	c5 5c 5c c9          	vsubps ymm9,ymm4,ymm1
  72fefb:	c5 fc 28 84 24 80 00 	vmovaps ymm0,YMMWORD PTR [rsp+0x80]
  72ff02:	00 00 
  72ff04:	c5 fc 28 8c 24 a0 00 	vmovaps ymm1,YMMWORD PTR [rsp+0xa0]
  72ff0b:	00 00 
  72ff0d:	c5 fc 58 e1          	vaddps ymm4,ymm0,ymm1
  72ff11:	c5 fc 5c c1          	vsubps ymm0,ymm0,ymm1
  72ff15:	c5 7c 28 a4 24 c0 00 	vmovaps ymm12,YMMWORD PTR [rsp+0xc0]
  72ff1c:	00 00 
  72ff1e:	c4 c1 24 58 cc       	vaddps ymm1,ymm11,ymm12
  72ff23:	c4 41 1c 5c e3       	vsubps ymm12,ymm12,ymm11
  72ff28:	c4 41 2c 58 d8       	vaddps ymm11,ymm10,ymm8
  72ff2d:	c4 41 2c 5c d0       	vsubps ymm10,ymm10,ymm8
  72ff32:	c5 14 58 c5          	vaddps ymm8,ymm13,ymm5
  72ff36:	c5 14 5c ed          	vsubps ymm13,ymm13,ymm5
  72ff3a:	c4 c3 65 18 ef 01    	vinsertf128 ymm5,ymm3,xmm15,0x1
  72ff40:	c4 c3 65 06 df 31    	vperm2f128 ymm3,ymm3,ymm15,0x31
  72ff46:	c4 63 45 18 f2 01    	vinsertf128 ymm14,ymm7,xmm2,0x1
  72ff4c:	c4 e3 45 06 d2 31    	vperm2f128 ymm2,ymm7,ymm2,0x31
  72ff52:	c4 e3 5d 18 f8 01    	vinsertf128 ymm7,ymm4,xmm0,0x1
  72ff58:	c4 e3 5d 06 c0 31    	vperm2f128 ymm0,ymm4,ymm0,0x31
  72ff5e:	c5 e5 14 d8          	vunpcklpd ymm3,ymm3,ymm0
  72ff62:	c4 c3 25 18 c2 01    	vinsertf128 ymm0,ymm11,xmm10,0x1
  72ff68:	c4 c3 25 06 e2 31    	vperm2f128 ymm4,ymm11,ymm10,0x31
  72ff6e:	c5 ed 14 e4          	vunpcklpd ymm4,ymm2,ymm4
  72ff72:	c5 55 15 d7          	vunpckhpd ymm10,ymm5,ymm7
  72ff76:	c5 d5 14 d7          	vunpcklpd ymm2,ymm5,ymm7
  72ff7a:	c5 8d 15 e8          	vunpckhpd ymm5,ymm14,ymm0
  72ff7e:	c5 8d 14 c0          	vunpcklpd ymm0,ymm14,ymm0
  72ff82:	c5 ec c6 f8 88       	vshufps ymm7,ymm2,ymm0,0x88
  72ff87:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  72ff8c:	c5 fc 29 bc 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm7
  72ff93:	00 00 
  72ff95:	c5 ec c6 c0 dd       	vshufps ymm0,ymm2,ymm0,0xdd
  72ff9a:	c5 7c c6 f0 d8       	vshufps ymm14,ymm0,ymm0,0xd8
  72ff9f:	c5 ac c6 c5 88       	vshufps ymm0,ymm10,ymm5,0x88
  72ffa4:	c5 fc c6 d0 d8       	vshufps ymm2,ymm0,ymm0,0xd8
  72ffa9:	c5 ac c6 c5 dd       	vshufps ymm0,ymm10,ymm5,0xdd
  72ffae:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  72ffb3:	c5 e4 c6 ec 88       	vshufps ymm5,ymm3,ymm4,0x88
  72ffb8:	c5 54 c6 dd d8       	vshufps ymm11,ymm5,ymm5,0xd8
  72ffbd:	c5 e4 c6 dc dd       	vshufps ymm3,ymm3,ymm4,0xdd
  72ffc2:	c5 e4 c6 eb d8       	vshufps ymm5,ymm3,ymm3,0xd8
  72ffc7:	c5 fc 28 64 24 60    	vmovaps ymm4,YMMWORD PTR [rsp+0x60]
  72ffcd:	c5 fc 28 7c 24 40    	vmovaps ymm7,YMMWORD PTR [rsp+0x40]
  72ffd3:	c4 e3 5d 18 df 01    	vinsertf128 ymm3,ymm4,xmm7,0x1
  72ffd9:	c4 e3 5d 06 e7 31    	vperm2f128 ymm4,ymm4,ymm7,0x31
  72ffdf:	c4 c3 4d 18 f9 01    	vinsertf128 ymm7,ymm6,xmm9,0x1
  72ffe5:	c4 c3 4d 06 f1 31    	vperm2f128 ymm6,ymm6,ymm9,0x31
  72ffeb:	c4 43 75 18 cc 01    	vinsertf128 ymm9,ymm1,xmm12,0x1
  72fff1:	c4 c3 75 06 cc 31    	vperm2f128 ymm1,ymm1,ymm12,0x31
  72fff7:	c5 5d 14 d1          	vunpcklpd ymm10,ymm4,ymm1
  72fffb:	c4 c3 3d 18 cd 01    	vinsertf128 ymm1,ymm8,xmm13,0x1
  730001:	c4 c3 3d 06 e5 31    	vperm2f128 ymm4,ymm8,ymm13,0x31
  730007:	c5 cd 14 f4          	vunpcklpd ymm6,ymm6,ymm4
  73000b:	c4 c1 65 15 e1       	vunpckhpd ymm4,ymm3,ymm9
  730010:	c4 c1 65 14 d9       	vunpcklpd ymm3,ymm3,ymm9
  730015:	c5 45 15 c9          	vunpckhpd ymm9,ymm7,ymm1
  730019:	c5 c5 14 f9          	vunpcklpd ymm7,ymm7,ymm1
  73001d:	c5 e4 c6 cf 88       	vshufps ymm1,ymm3,ymm7,0x88
  730022:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  730027:	c5 fc 29 4c 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm1
  73002d:	c5 e4 c6 df dd       	vshufps ymm3,ymm3,ymm7,0xdd
  730032:	c5 64 c6 c3 d8       	vshufps ymm8,ymm3,ymm3,0xd8
  730037:	c4 c1 5c c6 d9 88    	vshufps ymm3,ymm4,ymm9,0x88
  73003d:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  730042:	c4 c1 5c c6 e1 dd    	vshufps ymm4,ymm4,ymm9,0xdd
  730048:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  73004d:	c5 ac c6 fe 88       	vshufps ymm7,ymm10,ymm6,0x88
  730052:	c5 44 c6 cf d8       	vshufps ymm9,ymm7,ymm7,0xd8
  730057:	c5 ac c6 f6 dd       	vshufps ymm6,ymm10,ymm6,0xdd
  73005c:	c5 4c c6 ee d8       	vshufps ymm13,ymm6,ymm6,0xd8
  730061:	c5 7c 10 62 40       	vmovups ymm12,YMMWORD PTR [rdx+0x40]
  730066:	c5 fc 10 ba 80 00 00 	vmovups ymm7,YMMWORD PTR [rdx+0x80]
  73006d:	00 
  73006e:	c5 7c 10 92 a0 00 00 	vmovups ymm10,YMMWORD PTR [rdx+0xa0]
  730075:	00 
  730076:	c5 c4 59 f2          	vmulps ymm6,ymm7,ymm2
  73007a:	c4 c2 65 bc f2       	vfnmadd231ps ymm6,ymm3,ymm10
  73007f:	c5 c4 59 fb          	vmulps ymm7,ymm7,ymm3
  730083:	c5 fc 10 9a 20 01 00 	vmovups ymm3,YMMWORD PTR [rdx+0x120]
  73008a:	00 
  73008b:	c4 c2 6d b8 fa       	vfmadd231ps ymm7,ymm2,ymm10
  730090:	c5 fc 10 92 00 01 00 	vmovups ymm2,YMMWORD PTR [rdx+0x100]
  730097:	00 
  730098:	c5 24 59 d2          	vmulps ymm10,ymm11,ymm2
  73009c:	c4 62 35 bc d3       	vfnmadd231ps ymm10,ymm9,ymm3
  7300a1:	c5 34 59 ca          	vmulps ymm9,ymm9,ymm2
  7300a5:	c4 62 25 b8 cb       	vfmadd231ps ymm9,ymm11,ymm3
  7300aa:	c5 fc 10 92 60 01 00 	vmovups ymm2,YMMWORD PTR [rdx+0x160]
  7300b1:	00 
  7300b2:	c5 fc 10 9a 40 01 00 	vmovups ymm3,YMMWORD PTR [rdx+0x140]
  7300b9:	00 
  7300ba:	c5 14 59 db          	vmulps ymm11,ymm13,ymm3
  7300be:	c4 62 55 b8 da       	vfmadd231ps ymm11,ymm5,ymm2
  7300c3:	c5 e4 59 ed          	vmulps ymm5,ymm3,ymm5
  7300c7:	c5 fc 10 5a 60       	vmovups ymm3,YMMWORD PTR [rdx+0x60]
  7300cc:	c4 e2 15 bc ea       	vfnmadd231ps ymm5,ymm13,ymm2
  7300d1:	c4 41 4c 5c fa       	vsubps ymm15,ymm6,ymm10
  7300d6:	c4 41 1c 59 e8       	vmulps ymm13,ymm12,ymm8
  7300db:	c4 62 0d b8 eb       	vfmadd231ps ymm13,ymm14,ymm3
  7300e0:	c4 41 1c 59 e6       	vmulps ymm12,ymm12,ymm14
  7300e5:	c5 7c 10 b2 e0 00 00 	vmovups ymm14,YMMWORD PTR [rdx+0xe0]
  7300ec:	00 
  7300ed:	c4 62 3d bc e3       	vfnmadd231ps ymm12,ymm8,ymm3
  7300f2:	c5 fc 10 92 c0 00 00 	vmovups ymm2,YMMWORD PTR [rdx+0xc0]
  7300f9:	00 
  7300fa:	c5 ec 59 dc          	vmulps ymm3,ymm2,ymm4
  7300fe:	c4 c2 7d b8 de       	vfmadd231ps ymm3,ymm0,ymm14
  730103:	c5 ec 59 d0          	vmulps ymm2,ymm2,ymm0
  730107:	c4 e2 7d 18 05 c4 51 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff9451c4]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  73010e:	94 ff 
  730110:	c5 04 59 c0          	vmulps ymm8,ymm15,ymm0
  730114:	c4 c2 5d bc d6       	vfnmadd231ps ymm2,ymm4,ymm14
  730119:	c5 34 58 f7          	vaddps ymm14,ymm9,ymm7
  73011d:	c4 62 7d 18 3d 3a 53 	vbroadcastss ymm15,DWORD PTR [rip+0xffffffffff94533a]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  730124:	94 ff 
  730126:	c5 ac 58 e6          	vaddps ymm4,ymm10,ymm6
  73012a:	c5 7c 29 fe          	vmovaps ymm6,ymm15
  73012e:	c4 e2 0d ac f1       	vfnmadd213ps ymm6,ymm14,ymm1
  730133:	c4 c1 44 5c f9       	vsubps ymm7,ymm7,ymm9
  730138:	c4 41 54 5c cc       	vsubps ymm9,ymm5,ymm12
  73013d:	c5 9c 58 ed          	vaddps ymm5,ymm12,ymm5
  730141:	c4 41 24 58 d5       	vaddps ymm10,ymm11,ymm13
  730146:	c4 41 24 5c dd       	vsubps ymm11,ymm11,ymm13
  73014b:	c5 3c 58 e6          	vaddps ymm12,ymm8,ymm6
  73014f:	c5 34 59 c8          	vmulps ymm9,ymm9,ymm0
  730153:	c5 c4 59 f8          	vmulps ymm7,ymm7,ymm0
  730157:	c5 a4 59 c8          	vmulps ymm1,ymm11,ymm0
  73015b:	c4 41 7c 28 df       	vmovaps ymm11,ymm15
  730160:	c4 62 2d ac db       	vfnmadd213ps ymm11,ymm10,ymm3
  730165:	c4 c1 4c 5c f0       	vsubps ymm6,ymm6,ymm8
  73016a:	c4 41 24 58 c1       	vaddps ymm8,ymm11,ymm9
  73016f:	c4 41 24 5c c9       	vsubps ymm9,ymm11,ymm9
  730174:	c4 41 7c 28 df       	vmovaps ymm11,ymm15
  730179:	c5 fc 28 84 24 80 00 	vmovaps ymm0,YMMWORD PTR [rsp+0x80]
  730180:	00 00 
  730182:	c4 62 5d ac d8       	vfnmadd213ps ymm11,ymm4,ymm0
  730187:	c5 24 5c ef          	vsubps ymm13,ymm11,ymm7
  73018b:	c5 a4 58 ff          	vaddps ymm7,ymm11,ymm7
  73018f:	c4 62 55 ac fa       	vfnmadd213ps ymm15,ymm5,ymm2
  730194:	c5 04 5c d9          	vsubps ymm11,ymm15,ymm1
  730198:	c5 04 58 f9          	vaddps ymm15,ymm15,ymm1
  73019c:	c5 0c 58 74 24 60    	vaddps ymm14,ymm14,YMMWORD PTR [rsp+0x60]
  7301a2:	c5 ac 58 db          	vaddps ymm3,ymm10,ymm3
  7301a6:	c5 dc 58 e0          	vaddps ymm4,ymm4,ymm0
  7301aa:	c5 ec 58 ed          	vaddps ymm5,ymm2,ymm5
  7301ae:	c4 c1 1c 5c c0       	vsubps ymm0,ymm12,ymm8
  7301b3:	c4 41 1c 58 c0       	vaddps ymm8,ymm12,ymm8
  7301b8:	c4 c1 14 5c cb       	vsubps ymm1,ymm13,ymm11
  7301bd:	c4 41 14 58 d3       	vaddps ymm10,ymm13,ymm11
  7301c2:	c5 b4 58 d6          	vaddps ymm2,ymm9,ymm6
  7301c6:	c4 c1 4c 5c f1       	vsubps ymm6,ymm6,ymm9
  7301cb:	c5 04 58 cf          	vaddps ymm9,ymm15,ymm7
  7301cf:	c4 c1 44 5c ff       	vsubps ymm7,ymm7,ymm15
  7301d4:	c5 0c 5c db          	vsubps ymm11,ymm14,ymm3
  7301d8:	c5 8c 58 db          	vaddps ymm3,ymm14,ymm3
  7301dc:	c5 5c 5c e5          	vsubps ymm12,ymm4,ymm5
  7301e0:	c5 dc 58 e5          	vaddps ymm4,ymm4,ymm5
  7301e4:	c5 dc 15 eb          	vunpckhps ymm5,ymm4,ymm3
  7301e8:	c5 dc 14 db          	vunpcklps ymm3,ymm4,ymm3
  7301ec:	c4 e3 65 06 e5 31    	vperm2f128 ymm4,ymm3,ymm5,0x31
  7301f2:	c4 e3 65 06 dd 20    	vperm2f128 ymm3,ymm3,ymm5,0x20
  7301f8:	c5 fc 11 1e          	vmovups YMMWORD PTR [rsi],ymm3
  7301fc:	c5 fc 11 66 20       	vmovups YMMWORD PTR [rsi+0x20],ymm4
  730201:	c5 c4 15 de          	vunpckhps ymm3,ymm7,ymm6
  730205:	c5 c4 14 e6          	vunpcklps ymm4,ymm7,ymm6
  730209:	c4 e3 5d 06 eb 31    	vperm2f128 ymm5,ymm4,ymm3,0x31
  73020f:	c4 e3 5d 06 db 20    	vperm2f128 ymm3,ymm4,ymm3,0x20
  730215:	c5 fc 11 5e 40       	vmovups YMMWORD PTR [rsi+0x40],ymm3
  73021a:	c5 fc 11 6e 60       	vmovups YMMWORD PTR [rsi+0x60],ymm5
  73021f:	c4 c1 2c 15 d8       	vunpckhps ymm3,ymm10,ymm8
  730224:	c4 c1 2c 14 e0       	vunpcklps ymm4,ymm10,ymm8
  730229:	c4 e3 5d 06 eb 31    	vperm2f128 ymm5,ymm4,ymm3,0x31
  73022f:	c4 e3 5d 06 db 20    	vperm2f128 ymm3,ymm4,ymm3,0x20
  730235:	c5 fc 11 9e 80 00 00 	vmovups YMMWORD PTR [rsi+0x80],ymm3
  73023c:	00 
  73023d:	c5 fc 11 ae a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm5
  730244:	00 
  730245:	c4 c1 1c 15 db       	vunpckhps ymm3,ymm12,ymm11
  73024a:	c4 c1 1c 14 e3       	vunpcklps ymm4,ymm12,ymm11
  73024f:	c4 e3 5d 06 eb 31    	vperm2f128 ymm5,ymm4,ymm3,0x31
  730255:	c4 e3 5d 06 db 20    	vperm2f128 ymm3,ymm4,ymm3,0x20
  73025b:	c5 fc 11 9e c0 00 00 	vmovups YMMWORD PTR [rsi+0xc0],ymm3
  730262:	00 
  730263:	c5 fc 11 ae e0 00 00 	vmovups YMMWORD PTR [rsi+0xe0],ymm5
  73026a:	00 
  73026b:	c5 b4 15 da          	vunpckhps ymm3,ymm9,ymm2
  73026f:	c5 b4 14 d2          	vunpcklps ymm2,ymm9,ymm2
  730273:	c4 e3 6d 06 e3 31    	vperm2f128 ymm4,ymm2,ymm3,0x31
  730279:	c4 e3 6d 06 d3 20    	vperm2f128 ymm2,ymm2,ymm3,0x20
  73027f:	c5 fc 11 96 00 01 00 	vmovups YMMWORD PTR [rsi+0x100],ymm2
  730286:	00 
  730287:	c5 fc 11 a6 20 01 00 	vmovups YMMWORD PTR [rsi+0x120],ymm4
  73028e:	00 
  73028f:	c5 f4 15 d0          	vunpckhps ymm2,ymm1,ymm0
  730293:	c5 f4 14 c0          	vunpcklps ymm0,ymm1,ymm0
  730297:	c4 e3 7d 06 ca 31    	vperm2f128 ymm1,ymm0,ymm2,0x31
  73029d:	c4 e3 7d 06 c2 20    	vperm2f128 ymm0,ymm0,ymm2,0x20
  7302a3:	c5 fc 11 86 40 01 00 	vmovups YMMWORD PTR [rsi+0x140],ymm0
  7302aa:	00 
  7302ab:	c5 fc 11 8e 60 01 00 	vmovups YMMWORD PTR [rsi+0x160],ymm1
  7302b2:	00 
  7302b3:	48 89 ec             	mov    rsp,rbp
  7302b6:	5d                   	pop    rbp
  7302b7:	c5 f8 77             	vzeroupper
  7302ba:	c3                   	ret
