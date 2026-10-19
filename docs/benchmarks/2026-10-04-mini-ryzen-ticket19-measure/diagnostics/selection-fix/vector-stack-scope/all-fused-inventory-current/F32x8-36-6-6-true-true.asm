
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000006ee9c0 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  6ee9c0:	55                   	push   rbp
  6ee9c1:	48 89 e5             	mov    rbp,rsp
  6ee9c4:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  6ee9c8:	48 81 ec c0 01 00 00 	sub    rsp,0x1c0
  6ee9cf:	48 c1 e2 05          	shl    rdx,0x5
  6ee9d3:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  6ee9d7:	31 d2                	xor    edx,edx
  6ee9d9:	4c 8d 84 24 40 01 00 	lea    r8,[rsp+0x140]
  6ee9e0:	00 
  6ee9e1:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  6ee9e6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  6ee9ed:	00 00 00 
  6ee9f0:	c6 84 24 40 01 00 00 	mov    BYTE PTR [rsp+0x140],0x0
  6ee9f7:	00 
  6ee9f8:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  6ee9fd:	c5 fc 10 04 17       	vmovups ymm0,YMMWORD PTR [rdi+rdx*1]
  6eea02:	c5 f8 10 74 17 20    	vmovups xmm6,XMMWORD PTR [rdi+rdx*1+0x20]
  6eea08:	c5 fc 10 4c 17 30    	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x30]
  6eea0e:	c5 fc 29 4c 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm1
  6eea14:	c5 f8 10 6c 17 50    	vmovups xmm5,XMMWORD PTR [rdi+rdx*1+0x50]
  6eea1a:	c5 fc 10 7c 17 60    	vmovups ymm7,YMMWORD PTR [rdi+rdx*1+0x60]
  6eea20:	c5 78 10 84 17 80 00 	vmovups xmm8,XMMWORD PTR [rdi+rdx*1+0x80]
  6eea27:	00 00 
  6eea29:	c5 7c 10 94 17 90 00 	vmovups ymm10,YMMWORD PTR [rdi+rdx*1+0x90]
  6eea30:	00 00 
  6eea32:	c5 78 10 a4 17 b0 00 	vmovups xmm12,XMMWORD PTR [rdi+rdx*1+0xb0]
  6eea39:	00 00 
  6eea3b:	c5 7c 10 ac 17 c0 00 	vmovups ymm13,YMMWORD PTR [rdi+rdx*1+0xc0]
  6eea42:	00 00 
  6eea44:	c5 78 10 bc 17 e0 00 	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0xe0]
  6eea4b:	00 00 
  6eea4d:	c5 fc 10 9c 17 f0 00 	vmovups ymm3,YMMWORD PTR [rdi+rdx*1+0xf0]
  6eea54:	00 00 
  6eea56:	c5 78 10 b4 17 10 01 	vmovups xmm14,XMMWORD PTR [rdi+rdx*1+0x110]
  6eea5d:	00 00 
  6eea5f:	c5 fc c6 d6 dd       	vshufps ymm2,ymm0,ymm6,0xdd
  6eea64:	c4 63 fd 01 da d8    	vpermpd ymm11,ymm2,0xd8
  6eea6a:	c4 c1 44 c6 d0 dd    	vshufps ymm2,ymm7,ymm8,0xdd
  6eea70:	c4 e3 fd 01 ca d8    	vpermpd ymm1,ymm2,0xd8
  6eea76:	c5 fc 29 4c 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm1
  6eea7c:	c4 c1 14 c6 e7 dd    	vshufps ymm4,ymm13,ymm15,0xdd
  6eea82:	c4 e3 fd 01 cc d8    	vpermpd ymm1,ymm4,0xd8
  6eea88:	c5 fc 29 8c 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm1
  6eea8f:	00 00 
  6eea91:	c4 41 2c c6 cc dd    	vshufps ymm9,ymm10,ymm12,0xdd
  6eea97:	c4 c3 fd 01 c9 d8    	vpermpd ymm1,ymm9,0xd8
  6eea9d:	c5 fc 29 8c 24 a0 00 	vmovaps YMMWORD PTR [rsp+0xa0],ymm1
  6eeaa4:	00 00 
  6eeaa6:	c5 fc c6 ce 88       	vshufps ymm1,ymm0,ymm6,0x88
  6eeaab:	c4 c1 64 c6 f6 dd    	vshufps ymm6,ymm3,ymm14,0xdd
  6eeab1:	c4 41 44 c6 c0 88    	vshufps ymm8,ymm7,ymm8,0x88
  6eeab7:	c4 e3 fd 01 d6 d8    	vpermpd ymm2,ymm6,0xd8
  6eeabd:	c5 fc 29 94 24 00 01 	vmovaps YMMWORD PTR [rsp+0x100],ymm2
  6eeac4:	00 00 
  6eeac6:	c5 fc 28 74 24 60    	vmovaps ymm6,YMMWORD PTR [rsp+0x60]
  6eeacc:	c5 cc c6 fd dd       	vshufps ymm7,ymm6,ymm5,0xdd
  6eead1:	c4 e3 fd 01 c7 d8    	vpermpd ymm0,ymm7,0xd8
  6eead7:	c5 fc 29 84 24 20 01 	vmovaps YMMWORD PTR [rsp+0x120],ymm0
  6eeade:	00 00 
  6eeae0:	c4 63 fd 01 c9 d8    	vpermpd ymm9,ymm1,0xd8
  6eeae6:	c4 c3 fd 01 e0 d8    	vpermpd ymm4,ymm8,0xd8
  6eeaec:	c4 41 14 c6 c7 88    	vshufps ymm8,ymm13,ymm15,0x88
  6eeaf2:	c4 43 fd 01 f8 d8    	vpermpd ymm15,ymm8,0xd8
  6eeaf8:	c4 41 2c c6 c4 88    	vshufps ymm8,ymm10,ymm12,0x88
  6eeafe:	c4 43 fd 01 e0 d8    	vpermpd ymm12,ymm8,0xd8
  6eeb04:	c4 c1 64 c6 ce 88    	vshufps ymm1,ymm3,ymm14,0x88
  6eeb0a:	c4 e3 fd 01 c9 d8    	vpermpd ymm1,ymm1,0xd8
  6eeb10:	c5 cc c6 dd 88       	vshufps ymm3,ymm6,ymm5,0x88
  6eeb15:	c4 63 fd 01 f3 d8    	vpermpd ymm14,ymm3,0xd8
  6eeb1b:	c5 fc 28 7c 24 40    	vmovaps ymm7,YMMWORD PTR [rsp+0x40]
  6eeb21:	c5 fc 28 b4 24 80 00 	vmovaps ymm6,YMMWORD PTR [rsp+0x80]
  6eeb28:	00 00 
  6eeb2a:	c5 44 58 d6          	vaddps ymm10,ymm7,ymm6
  6eeb2e:	c4 c1 2c 58 eb       	vaddps ymm5,ymm10,ymm11
  6eeb33:	c5 fc 29 ac 24 c0 00 	vmovaps YMMWORD PTR [rsp+0xc0],ymm5
  6eeb3a:	00 00 
  6eeb3c:	c5 6c 58 c0          	vaddps ymm8,ymm2,ymm0
  6eeb40:	c5 fc 28 94 24 a0 00 	vmovaps ymm2,YMMWORD PTR [rsp+0xa0]
  6eeb47:	00 00 
  6eeb49:	c5 bc 58 c2          	vaddps ymm0,ymm8,ymm2
  6eeb4d:	c5 fc 29 84 24 e0 00 	vmovaps YMMWORD PTR [rsp+0xe0],ymm0
  6eeb54:	00 00 
  6eeb56:	c4 e2 7d 18 1d 01 69 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff986901]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6eeb5d:	98 ff 
  6eeb5f:	c4 42 65 ac d3       	vfnmadd213ps ymm10,ymm3,ymm11
  6eeb64:	c5 04 58 ec          	vaddps ymm13,ymm15,ymm4
  6eeb68:	c4 41 5c 5c df       	vsubps ymm11,ymm4,ymm15
  6eeb6d:	c4 c1 14 58 e1       	vaddps ymm4,ymm13,ymm9
  6eeb72:	c4 62 65 ac c2       	vfnmadd213ps ymm8,ymm3,ymm2
  6eeb77:	c5 0c 58 f9          	vaddps ymm15,ymm14,ymm1
  6eeb7b:	c4 c1 74 5c ce       	vsubps ymm1,ymm1,ymm14
  6eeb80:	c5 d4 58 d0          	vaddps ymm2,ymm5,ymm0
  6eeb84:	c5 fc 29 54 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm2
  6eeb8a:	c4 42 65 ac e9       	vfnmadd213ps ymm13,ymm3,ymm9
  6eeb8f:	c5 fc 28 eb          	vmovaps ymm5,ymm3
  6eeb93:	c4 41 04 58 cc       	vaddps ymm9,ymm15,ymm12
  6eeb98:	c5 44 5c f6          	vsubps ymm14,ymm7,ymm6
  6eeb9c:	c5 b4 58 d4          	vaddps ymm2,ymm9,ymm4
  6eeba0:	c5 fc 29 54 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm2
  6eeba6:	c4 e2 7d 18 1d 25 67 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff986725]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6eebad:	98 ff 
  6eebaf:	c5 a4 59 c3          	vmulps ymm0,ymm11,ymm3
  6eebb3:	c5 f4 59 cb          	vmulps ymm1,ymm1,ymm3
  6eebb7:	c4 42 55 ac fc       	vfnmadd213ps ymm15,ymm5,ymm12
  6eebbc:	c5 2c 58 e0          	vaddps ymm12,ymm10,ymm0
  6eebc0:	c5 fc 28 94 24 00 01 	vmovaps ymm2,YMMWORD PTR [rsp+0x100]
  6eebc7:	00 00 
  6eebc9:	c5 ec 5c b4 24 20 01 	vsubps ymm6,ymm2,YMMWORD PTR [rsp+0x120]
  6eebd0:	00 00 
  6eebd2:	c5 bc 58 f9          	vaddps ymm7,ymm8,ymm1
  6eebd6:	c5 0c 59 f3          	vmulps ymm14,ymm14,ymm3
  6eebda:	c5 2c 5c d0          	vsubps ymm10,ymm10,ymm0
  6eebde:	c4 c1 14 5c d6       	vsubps ymm2,ymm13,ymm14
  6eebe3:	c5 cc 59 f3          	vmulps ymm6,ymm6,ymm3
  6eebe7:	c5 3c 5c c1          	vsubps ymm8,ymm8,ymm1
  6eebeb:	c5 9c 5c df          	vsubps ymm3,ymm12,ymm7
  6eebef:	c4 41 0c 58 f5       	vaddps ymm14,ymm14,ymm13
  6eebf4:	c5 84 5c c6          	vsubps ymm0,ymm15,ymm6
  6eebf8:	c5 84 58 ce          	vaddps ymm1,ymm15,ymm6
  6eebfc:	c5 6c 5c e8          	vsubps ymm13,ymm2,ymm0
  6eec00:	c5 fc 28 ac 24 c0 00 	vmovaps ymm5,YMMWORD PTR [rsp+0xc0]
  6eec07:	00 00 
  6eec09:	c5 d4 5c b4 24 e0 00 	vsubps ymm6,ymm5,YMMWORD PTR [rsp+0xe0]
  6eec10:	00 00 
  6eec12:	c4 c1 2c 58 e8       	vaddps ymm5,ymm10,ymm8
  6eec17:	c4 41 5c 5c f9       	vsubps ymm15,ymm4,ymm9
  6eec1c:	c5 8c 58 e1          	vaddps ymm4,ymm14,ymm1
  6eec20:	c5 9c 58 ff          	vaddps ymm7,ymm12,ymm7
  6eec24:	c5 ec 58 c0          	vaddps ymm0,ymm2,ymm0
  6eec28:	c4 c1 2c 5c d0       	vsubps ymm2,ymm10,ymm8
  6eec2d:	c5 0c 5c d9          	vsubps ymm11,ymm14,ymm1
  6eec31:	c5 7c 28 44 24 60    	vmovaps ymm8,YMMWORD PTR [rsp+0x60]
  6eec37:	c4 e3 3d 18 cf 01    	vinsertf128 ymm1,ymm8,xmm7,0x1
  6eec3d:	c4 e3 3d 06 ff 31    	vperm2f128 ymm7,ymm8,ymm7,0x31
  6eec43:	c4 63 65 18 ca 01    	vinsertf128 ymm9,ymm3,xmm2,0x1
  6eec49:	c4 e3 65 06 d2 31    	vperm2f128 ymm2,ymm3,ymm2,0x31
  6eec4f:	c5 44 14 c2          	vunpcklps ymm8,ymm7,ymm2
  6eec53:	c5 f8 28 fd          	vmovaps xmm7,xmm5
  6eec57:	c5 78 28 d6          	vmovaps xmm10,xmm6
  6eec5b:	c4 c1 74 14 d9       	vunpcklps ymm3,ymm1,ymm9
  6eec60:	c4 41 44 14 e2       	vunpcklps ymm12,ymm7,ymm10
  6eec65:	c4 c1 65 14 d4       	vunpcklpd ymm2,ymm3,ymm12
  6eec6a:	c5 fc 29 54 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm2
  6eec70:	c4 c1 74 15 c9       	vunpckhps ymm1,ymm1,ymm9
  6eec75:	c4 c1 65 15 dc       	vunpckhpd ymm3,ymm3,ymm12
  6eec7a:	c4 c1 44 15 fa       	vunpckhps ymm7,ymm7,ymm10
  6eec7f:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  6eec85:	c4 e3 7d 19 f6 01    	vextractf128 xmm6,ymm6,0x1
  6eec8b:	c5 75 14 d7          	vunpcklpd ymm10,ymm1,ymm7
  6eec8f:	c5 54 14 ce          	vunpcklps ymm9,ymm5,ymm6
  6eec93:	c5 fc 28 54 24 40    	vmovaps ymm2,YMMWORD PTR [rsp+0x40]
  6eec99:	c4 63 6d 18 e0 01    	vinsertf128 ymm12,ymm2,xmm0,0x1
  6eec9f:	c4 e3 6d 06 c0 31    	vperm2f128 ymm0,ymm2,ymm0,0x31
  6eeca5:	c5 f5 15 ef          	vunpckhpd ymm5,ymm1,ymm7
  6eeca9:	c4 c3 15 18 fb 01    	vinsertf128 ymm7,ymm13,xmm11,0x1
  6eecaf:	c4 c3 15 06 cb 31    	vperm2f128 ymm1,ymm13,ymm11,0x31
  6eecb5:	c5 fc 14 f1          	vunpcklps ymm6,ymm0,ymm1
  6eecb9:	c4 41 3d 14 d9       	vunpcklpd ymm11,ymm8,ymm9
  6eecbe:	c5 f8 28 c4          	vmovaps xmm0,xmm4
  6eecc2:	c4 41 78 28 ef       	vmovaps xmm13,xmm15
  6eecc7:	c5 1c 14 f7          	vunpcklps ymm14,ymm12,ymm7
  6eeccb:	c4 41 3d 15 c1       	vunpckhpd ymm8,ymm8,ymm9
  6eecd0:	c4 41 7c 14 cd       	vunpcklps ymm9,ymm0,ymm13
  6eecd5:	c4 c1 0d 14 d1       	vunpcklpd ymm2,ymm14,ymm9
  6eecda:	c5 9c 15 ff          	vunpckhps ymm7,ymm12,ymm7
  6eecde:	c4 41 0d 15 c9       	vunpckhpd ymm9,ymm14,ymm9
  6eece3:	c4 c1 7c 15 c5       	vunpckhps ymm0,ymm0,ymm13
  6eece8:	c5 45 14 f0          	vunpcklpd ymm14,ymm7,ymm0
  6eecec:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  6eecf2:	c5 45 15 e8          	vunpckhpd ymm13,ymm7,ymm0
  6eecf6:	c4 63 7d 19 f8 01    	vextractf128 xmm0,ymm15,0x1
  6eecfc:	c5 5c 14 e0          	vunpcklps ymm12,ymm4,ymm0
  6eed00:	c5 fc 10 a1 80 00 00 	vmovups ymm4,YMMWORD PTR [rcx+0x80]
  6eed07:	00 
  6eed08:	c4 c1 4d 14 cc       	vunpcklpd ymm1,ymm6,ymm12
  6eed0d:	c5 fc 10 81 a0 00 00 	vmovups ymm0,YMMWORD PTR [rcx+0xa0]
  6eed14:	00 
  6eed15:	c5 ac 59 fc          	vmulps ymm7,ymm10,ymm4
  6eed19:	c5 0c 59 fc          	vmulps ymm15,ymm14,ymm4
  6eed1d:	c4 e2 0d bc f8       	vfnmadd231ps ymm7,ymm14,ymm0
  6eed22:	c5 fc 10 a1 00 01 00 	vmovups ymm4,YMMWORD PTR [rcx+0x100]
  6eed29:	00 
  6eed2a:	c4 62 2d b8 f8       	vfmadd231ps ymm15,ymm10,ymm0
  6eed2f:	c5 7c 10 91 20 01 00 	vmovups ymm10,YMMWORD PTR [rcx+0x120]
  6eed36:	00 
  6eed37:	c5 24 59 f4          	vmulps ymm14,ymm11,ymm4
  6eed3b:	c4 42 75 bc f2       	vfnmadd231ps ymm14,ymm1,ymm10
  6eed40:	c5 dc 59 c1          	vmulps ymm0,ymm4,ymm1
  6eed44:	c5 fc 10 89 c0 00 00 	vmovups ymm1,YMMWORD PTR [rcx+0xc0]
  6eed4b:	00 
  6eed4c:	c4 c2 25 b8 c2       	vfmadd231ps ymm0,ymm11,ymm10
  6eed51:	c5 fc 10 a1 e0 00 00 	vmovups ymm4,YMMWORD PTR [rcx+0xe0]
  6eed58:	00 
  6eed59:	c5 74 59 dd          	vmulps ymm11,ymm1,ymm5
  6eed5d:	c5 14 59 d1          	vmulps ymm10,ymm13,ymm1
  6eed61:	c4 62 15 bc dc       	vfnmadd231ps ymm11,ymm13,ymm4
  6eed66:	c4 62 55 b8 d4       	vfmadd231ps ymm10,ymm5,ymm4
  6eed6b:	c5 fc 10 89 40 01 00 	vmovups ymm1,YMMWORD PTR [rcx+0x140]
  6eed72:	00 
  6eed73:	c5 fc 10 a1 60 01 00 	vmovups ymm4,YMMWORD PTR [rcx+0x160]
  6eed7a:	00 
  6eed7b:	c4 c1 4d 15 f4       	vunpckhpd ymm6,ymm6,ymm12
  6eed80:	c5 bc 59 e9          	vmulps ymm5,ymm8,ymm1
  6eed84:	c4 e2 4d bc ec       	vfnmadd231ps ymm5,ymm6,ymm4
  6eed89:	c5 f4 59 ce          	vmulps ymm1,ymm1,ymm6
  6eed8d:	c5 fc 10 71 40       	vmovups ymm6,YMMWORD PTR [rcx+0x40]
  6eed92:	c4 e2 3d b8 cc       	vfmadd231ps ymm1,ymm8,ymm4
  6eed97:	c5 fc 10 61 60       	vmovups ymm4,YMMWORD PTR [rcx+0x60]
  6eed9c:	c5 4c 59 eb          	vmulps ymm13,ymm6,ymm3
  6eeda0:	c4 62 35 bc ec       	vfnmadd231ps ymm13,ymm9,ymm4
  6eeda5:	c5 b4 59 f6          	vmulps ymm6,ymm9,ymm6
  6eeda9:	c5 0c 58 cf          	vaddps ymm9,ymm14,ymm7
  6eedad:	c4 e2 65 b8 f4       	vfmadd231ps ymm6,ymm3,ymm4
  6eedb2:	c5 7c 28 64 24 60    	vmovaps ymm12,YMMWORD PTR [rsp+0x60]
  6eedb8:	c4 c1 34 58 dc       	vaddps ymm3,ymm9,ymm12
  6eedbd:	c5 fc 29 5c 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm3
  6eedc3:	c5 04 58 c0          	vaddps ymm8,ymm15,ymm0
  6eedc7:	c5 84 5c e0          	vsubps ymm4,ymm15,ymm0
  6eedcb:	c5 94 58 c5          	vaddps ymm0,ymm13,ymm5
  6eedcf:	c4 e2 7d 18 1d 88 66 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff986688]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6eedd6:	98 ff 
  6eedd8:	c4 42 65 ac cc       	vfnmadd213ps ymm9,ymm3,ymm12
  6eeddd:	c5 74 58 fe          	vaddps ymm15,ymm1,ymm6
  6eede1:	c5 f4 5c ce          	vsubps ymm1,ymm1,ymm6
  6eede5:	c5 a4 58 f0          	vaddps ymm6,ymm11,ymm0
  6eede9:	c4 62 65 bc d8       	vfnmadd231ps ymm11,ymm3,ymm0
  6eedee:	c5 3c 58 e2          	vaddps ymm12,ymm8,ymm2
  6eedf2:	c4 62 65 ac c2       	vfnmadd213ps ymm8,ymm3,ymm2
  6eedf7:	c4 c1 44 5c d6       	vsubps ymm2,ymm7,ymm14
  6eedfc:	c4 c1 2c 58 c7       	vaddps ymm0,ymm10,ymm15
  6eee01:	c4 e2 7d 18 1d ca 64 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff9864ca]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6eee08:	98 ff 
  6eee0a:	c5 dc 59 e3          	vmulps ymm4,ymm4,ymm3
  6eee0e:	c5 f4 59 cb          	vmulps ymm1,ymm1,ymm3
  6eee12:	c4 e2 7d 18 3d 45 66 	vbroadcastss ymm7,DWORD PTR [rip+0xffffffffff986645]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6eee19:	98 ff 
  6eee1b:	c4 42 45 bc d7       	vfnmadd231ps ymm10,ymm7,ymm15
  6eee20:	c5 b4 58 fc          	vaddps ymm7,ymm9,ymm4
  6eee24:	c4 c1 54 5c ed       	vsubps ymm5,ymm5,ymm13
  6eee29:	c5 24 58 e9          	vaddps ymm13,ymm11,ymm1
  6eee2d:	c5 ec 59 d3          	vmulps ymm2,ymm2,ymm3
  6eee31:	c5 34 5c f4          	vsubps ymm14,ymm9,ymm4
  6eee35:	c5 bc 5c e2          	vsubps ymm4,ymm8,ymm2
  6eee39:	c5 d4 59 eb          	vmulps ymm5,ymm5,ymm3
  6eee3d:	c5 a4 5c c9          	vsubps ymm1,ymm11,ymm1
  6eee41:	c4 41 44 5c cd       	vsubps ymm9,ymm7,ymm13
  6eee46:	c5 3c 58 c2          	vaddps ymm8,ymm8,ymm2
  6eee4a:	c5 2c 5c dd          	vsubps ymm11,ymm10,ymm5
  6eee4e:	c5 2c 58 d5          	vaddps ymm10,ymm10,ymm5
  6eee52:	c4 41 5c 5c fb       	vsubps ymm15,ymm4,ymm11
  6eee57:	c5 94 58 d7          	vaddps ymm2,ymm13,ymm7
  6eee5b:	c5 fc 28 5c 24 40    	vmovaps ymm3,YMMWORD PTR [rsp+0x40]
  6eee61:	c5 e4 5c ee          	vsubps ymm5,ymm3,ymm6
  6eee65:	c5 a4 58 e4          	vaddps ymm4,ymm11,ymm4
  6eee69:	c5 9c 5c f8          	vsubps ymm7,ymm12,ymm0
  6eee6d:	c5 9c 58 c0          	vaddps ymm0,ymm12,ymm0
  6eee71:	c5 e4 58 de          	vaddps ymm3,ymm3,ymm6
  6eee75:	c5 fc 14 f3          	vunpcklps ymm6,ymm0,ymm3
  6eee79:	c5 78 14 db          	vunpcklps xmm11,xmm0,xmm3
  6eee7d:	c5 f8 15 c3          	vunpckhps xmm0,xmm0,xmm3
  6eee81:	c5 f8 11 44 16 10    	vmovups XMMWORD PTR [rsi+rdx*1+0x10],xmm0
  6eee87:	c5 8c 58 c1          	vaddps ymm0,ymm14,ymm1
  6eee8b:	c5 8c 5c d9          	vsubps ymm3,ymm14,ymm1
  6eee8f:	c5 78 11 1c 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm11
  6eee94:	c4 c1 3c 58 ca       	vaddps ymm1,ymm8,ymm10
  6eee99:	c4 e3 7d 19 74 16 20 	vextractf128 XMMWORD PTR [rsi+rdx*1+0x20],ymm6,0x1
  6eeea0:	01 
  6eeea1:	c4 c1 3c 5c f2       	vsubps ymm6,ymm8,ymm10
  6eeea6:	c4 41 04 14 c1       	vunpcklps ymm8,ymm15,ymm9
  6eeeab:	c4 41 00 14 d1       	vunpcklps xmm10,xmm15,xmm9
  6eeeb0:	c4 41 00 15 c9       	vunpckhps xmm9,xmm15,xmm9
  6eeeb5:	c5 78 11 4c 16 40    	vmovups XMMWORD PTR [rsi+rdx*1+0x40],xmm9
  6eeebb:	c5 78 11 54 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm10
  6eeec1:	c4 63 7d 19 44 16 50 	vextractf128 XMMWORD PTR [rsi+rdx*1+0x50],ymm8,0x1
  6eeec8:	01 
  6eeec9:	c5 74 14 c0          	vunpcklps ymm8,ymm1,ymm0
  6eeecd:	c5 70 14 c8          	vunpcklps xmm9,xmm1,xmm0
  6eeed1:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  6eeed5:	c5 f8 11 44 16 70    	vmovups XMMWORD PTR [rsi+rdx*1+0x70],xmm0
  6eeedb:	c5 78 11 4c 16 60    	vmovups XMMWORD PTR [rsi+rdx*1+0x60],xmm9
  6eeee1:	c4 63 7d 19 84 16 80 	vextractf128 XMMWORD PTR [rsi+rdx*1+0x80],ymm8,0x1
  6eeee8:	00 00 00 01 
  6eeeec:	c5 c4 14 c5          	vunpcklps ymm0,ymm7,ymm5
  6eeef0:	c5 c0 14 cd          	vunpcklps xmm1,xmm7,xmm5
  6eeef4:	c5 c0 15 ed          	vunpckhps xmm5,xmm7,xmm5
  6eeef8:	c5 f8 11 ac 16 a0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xa0],xmm5
  6eeeff:	00 00 
  6eef01:	c5 f8 11 8c 16 90 00 	vmovups XMMWORD PTR [rsi+rdx*1+0x90],xmm1
  6eef08:	00 00 
  6eef0a:	c4 e3 7d 19 84 16 b0 	vextractf128 XMMWORD PTR [rsi+rdx*1+0xb0],ymm0,0x1
  6eef11:	00 00 00 01 
  6eef15:	c5 dc 14 c2          	vunpcklps ymm0,ymm4,ymm2
  6eef19:	c5 d8 14 ca          	vunpcklps xmm1,xmm4,xmm2
  6eef1d:	c5 d8 15 d2          	vunpckhps xmm2,xmm4,xmm2
  6eef21:	c5 f8 11 94 16 d0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xd0],xmm2
  6eef28:	00 00 
  6eef2a:	c5 f8 11 8c 16 c0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xc0],xmm1
  6eef31:	00 00 
  6eef33:	c4 e3 7d 19 84 16 e0 	vextractf128 XMMWORD PTR [rsi+rdx*1+0xe0],ymm0,0x1
  6eef3a:	00 00 00 01 
  6eef3e:	c5 cc 14 c3          	vunpcklps ymm0,ymm6,ymm3
  6eef42:	c5 c8 14 cb          	vunpcklps xmm1,xmm6,xmm3
  6eef46:	c5 c8 15 d3          	vunpckhps xmm2,xmm6,xmm3
  6eef4a:	c5 f8 11 94 16 00 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x100],xmm2
  6eef51:	00 00 
  6eef53:	c5 f8 11 8c 16 f0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xf0],xmm1
  6eef5a:	00 00 
  6eef5c:	c4 e3 7d 19 84 16 10 	vextractf128 XMMWORD PTR [rsi+rdx*1+0x110],ymm0,0x1
  6eef63:	01 00 00 01 
  6eef67:	48 81 c2 20 01 00 00 	add    rdx,0x120
  6eef6e:	48 39 d0             	cmp    rax,rdx
  6eef71:	0f 85 79 fa ff ff    	jne    6ee9f0 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle+0x30>
  6eef77:	48 89 ec             	mov    rsp,rbp
  6eef7a:	5d                   	pop    rbp
  6eef7b:	c5 f8 77             	vzeroupper
  6eef7e:	c3                   	ret
