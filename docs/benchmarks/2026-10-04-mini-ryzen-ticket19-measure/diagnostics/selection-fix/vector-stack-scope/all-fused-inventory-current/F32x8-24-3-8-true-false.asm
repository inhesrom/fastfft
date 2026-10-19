
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000731e40 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  731e40:	55                   	push   rbp
  731e41:	48 89 e5             	mov    rbp,rsp
  731e44:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  731e48:	48 81 ec c0 02 00 00 	sub    rsp,0x2c0
  731e4f:	c6 84 24 40 02 00 00 	mov    BYTE PTR [rsp+0x240],0x0
  731e56:	00 
  731e57:	48 8d 84 24 40 02 00 	lea    rax,[rsp+0x240]
  731e5e:	00 
  731e5f:	48 89 44 24 58       	mov    QWORD PTR [rsp+0x58],rax
  731e64:	48 8d 44 24 58       	lea    rax,[rsp+0x58]
  731e69:	c5 fc 10 07          	vmovups ymm0,YMMWORD PTR [rdi]
  731e6d:	c5 fc 10 4f 20       	vmovups ymm1,YMMWORD PTR [rdi+0x20]
  731e72:	c5 fc 10 57 40       	vmovups ymm2,YMMWORD PTR [rdi+0x40]
  731e77:	c5 fc 10 5f 60       	vmovups ymm3,YMMWORD PTR [rdi+0x60]
  731e7c:	c5 fc 10 a7 80 00 00 	vmovups ymm4,YMMWORD PTR [rdi+0x80]
  731e83:	00 
  731e84:	c5 fc 10 af a0 00 00 	vmovups ymm5,YMMWORD PTR [rdi+0xa0]
  731e8b:	00 
  731e8c:	c5 fc c6 f1 dd       	vshufps ymm6,ymm0,ymm1,0xdd
  731e91:	c4 e3 fd 01 f6 d8    	vpermpd ymm6,ymm6,0xd8
  731e97:	c5 ec c6 fb dd       	vshufps ymm7,ymm2,ymm3,0xdd
  731e9c:	c4 e3 fd 01 ff d8    	vpermpd ymm7,ymm7,0xd8
  731ea2:	c5 5c c6 c5 dd       	vshufps ymm8,ymm4,ymm5,0xdd
  731ea7:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  731ead:	c5 fc c6 c1 88       	vshufps ymm0,ymm0,ymm1,0x88
  731eb2:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  731eb8:	c5 ec c6 cb 88       	vshufps ymm1,ymm2,ymm3,0x88
  731ebd:	c4 e3 fd 01 c9 d8    	vpermpd ymm1,ymm1,0xd8
  731ec3:	c5 dc c6 d5 88       	vshufps ymm2,ymm4,ymm5,0x88
  731ec8:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  731ece:	c5 bc 58 df          	vaddps ymm3,ymm8,ymm7
  731ed2:	c5 e4 58 e6          	vaddps ymm4,ymm3,ymm6
  731ed6:	c5 f4 58 ea          	vaddps ymm5,ymm1,ymm2
  731eda:	c5 54 58 e8          	vaddps ymm13,ymm5,ymm0
  731ede:	c4 62 7d 18 0d 79 35 	vbroadcastss ymm9,DWORD PTR [rip+0xffffffffff943579]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  731ee5:	94 ff 
  731ee7:	c4 e2 35 ac de       	vfnmadd213ps ymm3,ymm9,ymm6
  731eec:	c5 f4 5c ca          	vsubps ymm1,ymm1,ymm2
  731ef0:	c4 e2 7d 18 15 db 33 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff9433db]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  731ef7:	94 ff 
  731ef9:	c5 f4 59 ca          	vmulps ymm1,ymm1,ymm2
  731efd:	c5 64 58 e1          	vaddps ymm12,ymm3,ymm1
  731f01:	c4 62 55 ac c8       	vfnmadd213ps ymm9,ymm5,ymm0
  731f06:	c4 c1 44 5c c0       	vsubps ymm0,ymm7,ymm8
  731f0b:	c5 fc 59 c2          	vmulps ymm0,ymm0,ymm2
  731f0f:	c5 34 5c d8          	vsubps ymm11,ymm9,ymm0
  731f13:	c5 64 5c d1          	vsubps ymm10,ymm3,ymm1
  731f17:	c5 34 58 c0          	vaddps ymm8,ymm9,ymm0
  731f1b:	c4 e3 7d 19 e0 01    	vextractf128 xmm0,ymm4,0x1
  731f21:	c5 fc 29 44 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm0
  731f27:	c4 63 7d 19 e2 01    	vextractf128 xmm2,ymm12,0x1
  731f2d:	c5 fc 29 54 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm2
  731f33:	c4 63 7d 19 d1 01    	vextractf128 xmm1,ymm10,0x1
  731f39:	c5 fc 29 8c 24 c0 00 	vmovaps YMMWORD PTR [rsp+0xc0],ymm1
  731f40:	00 00 
  731f42:	c5 fd 14 c9          	vunpcklpd ymm1,ymm0,ymm1
  731f46:	c5 fc 29 8c 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm1
  731f4d:	00 00 
  731f4f:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  731f53:	c4 e3 6d 0c c0 cc    	vblendps ymm0,ymm2,ymm0,0xcc
  731f59:	c5 c8 57 f6          	vxorps xmm6,xmm6,xmm6
  731f5d:	c5 fc 29 84 24 a0 00 	vmovaps YMMWORD PTR [rsp+0xa0],ymm0
  731f64:	00 00 
  731f66:	c5 f4 c6 c0 88       	vshufps ymm0,ymm1,ymm0,0x88
  731f6b:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  731f70:	c4 63 7d 19 eb 01    	vextractf128 xmm3,ymm13,0x1
  731f76:	c4 43 7d 19 df 01    	vextractf128 xmm15,ymm11,0x1
  731f7c:	c4 63 7d 19 c1 01    	vextractf128 xmm1,ymm8,0x1
  731f82:	c5 e5 14 f9          	vunpcklpd ymm7,ymm3,ymm1
  731f86:	c5 fc 29 bc 24 e0 00 	vmovaps YMMWORD PTR [rsp+0xe0],ymm7
  731f8d:	00 00 
  731f8f:	c4 e3 05 0c d6 cc    	vblendps ymm2,ymm15,ymm6,0xcc
  731f95:	c5 fc 29 94 24 00 01 	vmovaps YMMWORD PTR [rsp+0x100],ymm2
  731f9c:	00 00 
  731f9e:	c5 c4 c6 d2 88       	vshufps ymm2,ymm7,ymm2,0x88
  731fa3:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  731fa8:	c5 7c 10 8a 00 01 00 	vmovups ymm9,YMMWORD PTR [rdx+0x100]
  731faf:	00 
  731fb0:	c5 fc 10 ba 20 01 00 	vmovups ymm7,YMMWORD PTR [rdx+0x120]
  731fb7:	00 
  731fb8:	c5 b4 59 f0          	vmulps ymm6,ymm9,ymm0
  731fbc:	c4 e2 6d bc f7       	vfnmadd231ps ymm6,ymm2,ymm7
  731fc1:	c5 fc 29 b4 24 40 01 	vmovaps YMMWORD PTR [rsp+0x140],ymm6
  731fc8:	00 00 
  731fca:	c5 b4 59 d2          	vmulps ymm2,ymm9,ymm2
  731fce:	c4 e2 7d b8 d7       	vfmadd231ps ymm2,ymm0,ymm7
  731fd3:	c5 fc 29 94 24 20 01 	vmovaps YMMWORD PTR [rsp+0x120],ymm2
  731fda:	00 00 
  731fdc:	c5 f8 28 c4          	vmovaps xmm0,xmm4
  731fe0:	c5 78 29 d2          	vmovaps xmm2,xmm10
  731fe4:	c5 7c 29 e6          	vmovaps ymm6,ymm12
  731fe8:	c5 f8 28 e6          	vmovaps xmm4,xmm6
  731fec:	c5 d5 73 dc 08       	vpsrldq ymm5,ymm4,0x8
  731ff1:	c5 fd 7f ac 24 e0 01 	vmovdqa YMMWORD PTR [rsp+0x1e0],ymm5
  731ff8:	00 00 
  731ffa:	c5 fd 15 e2          	vunpckhpd ymm4,ymm0,ymm2
  731ffe:	c5 fc 29 a4 24 00 02 	vmovaps YMMWORD PTR [rsp+0x200],ymm4
  732005:	00 00 
  732007:	c5 dc c6 e5 88       	vshufps ymm4,ymm4,ymm5,0x88
  73200c:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  732011:	c4 41 78 28 ed       	vmovaps xmm13,xmm13
  732016:	c5 78 29 c7          	vmovaps xmm7,xmm8
  73201a:	c4 41 7c 28 cb       	vmovaps ymm9,ymm11
  73201f:	c4 41 78 28 c1       	vmovaps xmm8,xmm9
  732024:	c4 c1 55 73 d8 08    	vpsrldq ymm5,ymm8,0x8
  73202a:	c5 15 15 c7          	vunpckhpd ymm8,ymm13,ymm7
  73202e:	c5 7c 29 84 24 c0 01 	vmovaps YMMWORD PTR [rsp+0x1c0],ymm8
  732035:	00 00 
  732037:	c5 3c c6 c5 88       	vshufps ymm8,ymm8,ymm5,0x88
  73203c:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  732042:	c5 7c 10 92 80 00 00 	vmovups ymm10,YMMWORD PTR [rdx+0x80]
  732049:	00 
  73204a:	c5 7c 10 a2 a0 00 00 	vmovups ymm12,YMMWORD PTR [rdx+0xa0]
  732051:	00 
  732052:	c5 2c 59 dc          	vmulps ymm11,ymm10,ymm4
  732056:	c4 42 3d bc dc       	vfnmadd231ps ymm11,ymm8,ymm12
  73205b:	c5 7c 29 9c 24 20 02 	vmovaps YMMWORD PTR [rsp+0x220],ymm11
  732062:	00 00 
  732064:	c4 41 2c 59 f0       	vmulps ymm14,ymm10,ymm8
  732069:	c4 42 5d b8 f4       	vfmadd231ps ymm14,ymm4,ymm12
  73206e:	c5 fc 28 64 24 60    	vmovaps ymm4,YMMWORD PTR [rsp+0x60]
  732074:	c5 dd 15 a4 24 c0 00 	vunpckhpd ymm4,ymm4,YMMWORD PTR [rsp+0xc0]
  73207b:	00 00 
  73207d:	c5 fc 29 a4 24 c0 00 	vmovaps YMMWORD PTR [rsp+0xc0],ymm4
  732084:	00 00 
  732086:	c5 65 15 c1          	vunpckhpd ymm8,ymm3,ymm1
  73208a:	c5 7c 29 84 24 a0 01 	vmovaps YMMWORD PTR [rsp+0x1a0],ymm8
  732091:	00 00 
  732093:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  732097:	c5 fc 28 5c 24 20    	vmovaps ymm3,YMMWORD PTR [rsp+0x20]
  73209d:	c5 e5 15 d9          	vunpckhpd ymm3,ymm3,ymm1
  7320a1:	c5 fc 29 5c 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm3
  7320a7:	c5 05 15 d1          	vunpckhpd ymm10,ymm15,ymm1
  7320ab:	c5 7c 29 54 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm10
  7320b1:	c5 dc c6 cb 88       	vshufps ymm1,ymm4,ymm3,0x88
  7320b6:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  7320bb:	c4 c1 3c c6 da 88    	vshufps ymm3,ymm8,ymm10,0x88
  7320c1:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  7320c6:	c5 fc 10 a2 80 01 00 	vmovups ymm4,YMMWORD PTR [rdx+0x180]
  7320cd:	00 
  7320ce:	c5 7c 10 92 a0 01 00 	vmovups ymm10,YMMWORD PTR [rdx+0x1a0]
  7320d5:	00 
  7320d6:	c5 5c 59 f9          	vmulps ymm15,ymm4,ymm1
  7320da:	c4 42 65 bc fa       	vfnmadd231ps ymm15,ymm3,ymm10
  7320df:	c5 5c 59 db          	vmulps ymm11,ymm4,ymm3
  7320e3:	c4 42 75 b8 da       	vfmadd231ps ymm11,ymm1,ymm10
  7320e8:	c5 fd 14 c2          	vunpcklpd ymm0,ymm0,ymm2
  7320ec:	c5 fc 29 84 24 80 01 	vmovaps YMMWORD PTR [rsp+0x180],ymm0
  7320f3:	00 00 
  7320f5:	c5 95 14 cf          	vunpcklpd ymm1,ymm13,ymm7
  7320f9:	c5 fc 29 8c 24 60 01 	vmovaps YMMWORD PTR [rsp+0x160],ymm1
  732100:	00 00 
  732102:	c5 7a 7e e6          	vmovq  xmm12,xmm6
  732106:	c4 c1 7c c6 c4 dd    	vshufps ymm0,ymm0,ymm12,0xdd
  73210c:	c5 fc c6 d8 d8       	vshufps ymm3,ymm0,ymm0,0xd8
  732111:	c4 41 7a 7e e9       	vmovq  xmm13,xmm9
  732116:	c4 c1 74 c6 cd dd    	vshufps ymm1,ymm1,ymm13,0xdd
  73211c:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  732121:	c5 fc 10 52 40       	vmovups ymm2,YMMWORD PTR [rdx+0x40]
  732126:	c5 fc 10 42 60       	vmovups ymm0,YMMWORD PTR [rdx+0x60]
  73212b:	c5 6c 59 d3          	vmulps ymm10,ymm2,ymm3
  73212f:	c4 62 75 bc d0       	vfnmadd231ps ymm10,ymm1,ymm0
  732134:	c5 6c 59 c9          	vmulps ymm9,ymm2,ymm1
  732138:	c4 62 65 b8 c8       	vfmadd231ps ymm9,ymm3,ymm0
  73213d:	c5 fc 28 84 24 80 00 	vmovaps ymm0,YMMWORD PTR [rsp+0x80]
  732144:	00 00 
  732146:	c5 fc c6 84 24 a0 00 	vshufps ymm0,ymm0,YMMWORD PTR [rsp+0xa0],0xdd
  73214d:	00 00 dd 
  732150:	c5 fc 28 8c 24 e0 00 	vmovaps ymm1,YMMWORD PTR [rsp+0xe0]
  732157:	00 00 
  732159:	c5 f4 c6 8c 24 00 01 	vshufps ymm1,ymm1,YMMWORD PTR [rsp+0x100],0xdd
  732160:	00 00 dd 
  732163:	c5 fc c6 d0 d8       	vshufps ymm2,ymm0,ymm0,0xd8
  732168:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  73216d:	c5 fc 10 9a 40 01 00 	vmovups ymm3,YMMWORD PTR [rdx+0x140]
  732174:	00 
  732175:	c5 fc 10 82 60 01 00 	vmovups ymm0,YMMWORD PTR [rdx+0x160]
  73217c:	00 
  73217d:	c5 64 59 c2          	vmulps ymm8,ymm3,ymm2
  732181:	c4 62 75 bc c0       	vfnmadd231ps ymm8,ymm1,ymm0
  732186:	c5 e4 59 f9          	vmulps ymm7,ymm3,ymm1
  73218a:	c4 e2 6d b8 f8       	vfmadd231ps ymm7,ymm2,ymm0
  73218f:	c5 fc 28 84 24 00 02 	vmovaps ymm0,YMMWORD PTR [rsp+0x200]
  732196:	00 00 
  732198:	c5 fc c6 84 24 e0 01 	vshufps ymm0,ymm0,YMMWORD PTR [rsp+0x1e0],0xdd
  73219f:	00 00 dd 
  7321a2:	c5 fc 28 8c 24 c0 01 	vmovaps ymm1,YMMWORD PTR [rsp+0x1c0]
  7321a9:	00 00 
  7321ab:	c5 f4 c6 d5 dd       	vshufps ymm2,ymm1,ymm5,0xdd
  7321b0:	c5 fc c6 d8 d8       	vshufps ymm3,ymm0,ymm0,0xd8
  7321b5:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  7321ba:	c5 fc 10 82 c0 00 00 	vmovups ymm0,YMMWORD PTR [rdx+0xc0]
  7321c1:	00 
  7321c2:	c5 fc 10 8a e0 00 00 	vmovups ymm1,YMMWORD PTR [rdx+0xe0]
  7321c9:	00 
  7321ca:	c5 fc 59 f3          	vmulps ymm6,ymm0,ymm3
  7321ce:	c4 e2 6d bc f1       	vfnmadd231ps ymm6,ymm2,ymm1
  7321d3:	c5 fc 59 ea          	vmulps ymm5,ymm0,ymm2
  7321d7:	c4 e2 65 b8 e9       	vfmadd231ps ymm5,ymm3,ymm1
  7321dc:	c5 fc 28 84 24 c0 00 	vmovaps ymm0,YMMWORD PTR [rsp+0xc0]
  7321e3:	00 00 
  7321e5:	c5 fc c6 4c 24 60 dd 	vshufps ymm1,ymm0,YMMWORD PTR [rsp+0x60],0xdd
  7321ec:	c5 fc 28 84 24 a0 01 	vmovaps ymm0,YMMWORD PTR [rsp+0x1a0]
  7321f3:	00 00 
  7321f5:	c5 fc c6 54 24 20 dd 	vshufps ymm2,ymm0,YMMWORD PTR [rsp+0x20],0xdd
  7321fc:	c5 f4 c6 e1 d8       	vshufps ymm4,ymm1,ymm1,0xd8
  732201:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  732206:	c5 fc 10 9a c0 01 00 	vmovups ymm3,YMMWORD PTR [rdx+0x1c0]
  73220d:	00 
  73220e:	c5 fc 10 82 e0 01 00 	vmovups ymm0,YMMWORD PTR [rdx+0x1e0]
  732215:	00 
  732216:	c5 e4 59 cc          	vmulps ymm1,ymm3,ymm4
  73221a:	c4 e2 6d bc c8       	vfnmadd231ps ymm1,ymm2,ymm0
  73221f:	c5 e4 59 da          	vmulps ymm3,ymm3,ymm2
  732223:	c4 e2 5d b8 d8       	vfmadd231ps ymm3,ymm4,ymm0
  732228:	c5 fc 28 84 24 80 01 	vmovaps ymm0,YMMWORD PTR [rsp+0x180]
  73222f:	00 00 
  732231:	c4 c1 7c c6 c4 88    	vshufps ymm0,ymm0,ymm12,0x88
  732237:	c5 fc 28 94 24 60 01 	vmovaps ymm2,YMMWORD PTR [rsp+0x160]
  73223e:	00 00 
  732240:	c4 c1 6c c6 d5 88    	vshufps ymm2,ymm2,ymm13,0x88
  732246:	c5 fc c6 e0 d8       	vshufps ymm4,ymm0,ymm0,0xd8
  73224b:	c5 fc 28 84 24 40 01 	vmovaps ymm0,YMMWORD PTR [rsp+0x140]
  732252:	00 00 
  732254:	c5 7c 58 e4          	vaddps ymm12,ymm0,ymm4
  732258:	c5 7c 29 64 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm12
  73225e:	c5 dc 5c c0          	vsubps ymm0,ymm4,ymm0
  732262:	c5 fc 29 84 24 a0 00 	vmovaps YMMWORD PTR [rsp+0xa0],ymm0
  732269:	00 00 
  73226b:	c4 41 0c 58 eb       	vaddps ymm13,ymm14,ymm11
  732270:	c4 c1 0c 5c c3       	vsubps ymm0,ymm14,ymm11
  732275:	c5 fc 29 84 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm0
  73227c:	00 00 
  73227e:	c4 41 2c 58 f0       	vaddps ymm14,ymm10,ymm8
  732283:	c4 41 2c 5c c0       	vsubps ymm8,ymm10,ymm8
  732288:	c5 34 58 e7          	vaddps ymm12,ymm9,ymm7
  73228c:	c5 b4 5c ff          	vsubps ymm7,ymm9,ymm7
  732290:	c5 54 58 db          	vaddps ymm11,ymm5,ymm3
  732294:	c5 d4 5c db          	vsubps ymm3,ymm5,ymm3
  732298:	c5 4c 58 d1          	vaddps ymm10,ymm6,ymm1
  73229c:	c5 cc 5c c9          	vsubps ymm1,ymm6,ymm1
  7322a0:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  7322a5:	c5 fc 28 84 24 20 01 	vmovaps ymm0,YMMWORD PTR [rsp+0x120]
  7322ac:	00 00 
  7322ae:	c5 fc 58 f2          	vaddps ymm6,ymm0,ymm2
  7322b2:	c5 ec 5c e8          	vsubps ymm5,ymm2,ymm0
  7322b6:	c5 fc 28 84 24 20 02 	vmovaps ymm0,YMMWORD PTR [rsp+0x220]
  7322bd:	00 00 
  7322bf:	c5 84 58 d0          	vaddps ymm2,ymm15,ymm0
  7322c3:	c5 04 5c f8          	vsubps ymm15,ymm15,ymm0
  7322c7:	c5 3c 58 cf          	vaddps ymm9,ymm8,ymm7
  7322cb:	c4 c1 44 5c f8       	vsubps ymm7,ymm7,ymm8
  7322d0:	c5 64 5c c1          	vsubps ymm8,ymm3,ymm1
  7322d4:	c5 f4 58 c3          	vaddps ymm0,ymm1,ymm3
  7322d8:	c4 e2 7d 18 1d bb 30 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff9430bb]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  7322df:	94 ff 
  7322e1:	c5 b4 59 e3          	vmulps ymm4,ymm9,ymm3
  7322e5:	c5 bc 59 cb          	vmulps ymm1,ymm8,ymm3
  7322e9:	c5 c4 59 fb          	vmulps ymm7,ymm7,ymm3
  7322ed:	c5 fc 59 c3          	vmulps ymm0,ymm0,ymm3
  7322f1:	c5 fc 28 5c 24 20    	vmovaps ymm3,YMMWORD PTR [rsp+0x20]
  7322f7:	c5 64 58 c2          	vaddps ymm8,ymm3,ymm2
  7322fb:	c5 7c 29 44 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm8
  732301:	c5 e4 5c d2          	vsubps ymm2,ymm3,ymm2
  732305:	c5 fc 29 54 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm2
  73230b:	c4 41 1c 58 cb       	vaddps ymm9,ymm12,ymm11
  732310:	c5 7c 29 8c 24 20 01 	vmovaps YMMWORD PTR [rsp+0x120],ymm9
  732317:	00 00 
  732319:	c4 c1 1c 5c d3       	vsubps ymm2,ymm12,ymm11
  73231e:	c5 fc 29 94 24 00 01 	vmovaps YMMWORD PTR [rsp+0x100],ymm2
  732325:	00 00 
  732327:	c5 14 58 de          	vaddps ymm11,ymm13,ymm6
  73232b:	c4 c1 4c 5c dd       	vsubps ymm3,ymm6,ymm13
  732330:	c4 c1 0c 58 d2       	vaddps ymm2,ymm14,ymm10
  732335:	c4 41 2c 5c f6       	vsubps ymm14,ymm10,ymm14
  73233a:	c5 7c 28 a4 24 a0 00 	vmovaps ymm12,YMMWORD PTR [rsp+0xa0]
  732341:	00 00 
  732343:	c5 7c 28 ac 24 80 00 	vmovaps ymm13,YMMWORD PTR [rsp+0x80]
  73234a:	00 00 
  73234c:	c4 c1 1c 58 f5       	vaddps ymm6,ymm12,ymm13
  732351:	c5 fc 29 b4 24 e0 00 	vmovaps YMMWORD PTR [rsp+0xe0],ymm6
  732358:	00 00 
  73235a:	c4 41 1c 5c e5       	vsubps ymm12,ymm12,ymm13
  73235f:	c5 7c 29 a4 24 a0 00 	vmovaps YMMWORD PTR [rsp+0xa0],ymm12
  732366:	00 00 
  732368:	c5 44 5c e0          	vsubps ymm12,ymm7,ymm0
  73236c:	c5 c4 58 c0          	vaddps ymm0,ymm7,ymm0
  732370:	c5 fc 29 84 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm0
  732377:	00 00 
  732379:	c5 04 58 ed          	vaddps ymm13,ymm15,ymm5
  73237d:	c4 c1 54 5c ef       	vsubps ymm5,ymm5,ymm15
  732382:	c5 5c 58 f9          	vaddps ymm15,ymm4,ymm1
  732386:	c5 f4 5c c4          	vsubps ymm0,ymm1,ymm4
  73238a:	c5 fc 29 84 24 40 01 	vmovaps YMMWORD PTR [rsp+0x140],ymm0
  732391:	00 00 
  732393:	c5 b8 58 c2          	vaddps xmm0,xmm8,xmm2
  732397:	c4 c1 20 58 c9       	vaddps xmm1,xmm11,xmm9
  73239c:	c5 f0 14 e0          	vunpcklps xmm4,xmm1,xmm0
  7323a0:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  7323a4:	c5 f8 13 46 10       	vmovlps QWORD PTR [rsi+0x10],xmm0
  7323a9:	c5 f8 11 26          	vmovups XMMWORD PTR [rsi],xmm4
  7323ad:	c5 80 58 c6          	vaddps xmm0,xmm15,xmm6
  7323b1:	c4 c1 10 58 cc       	vaddps xmm1,xmm13,xmm12
  7323b6:	c5 f0 14 e0          	vunpcklps xmm4,xmm1,xmm0
  7323ba:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  7323be:	c5 f8 13 46 28       	vmovlps QWORD PTR [rsi+0x28],xmm0
  7323c3:	c5 f8 11 66 18       	vmovups XMMWORD PTR [rsi+0x18],xmm4
  7323c8:	c5 7c 28 4c 24 20    	vmovaps ymm9,YMMWORD PTR [rsp+0x20]
  7323ce:	c5 7c 28 84 24 00 01 	vmovaps ymm8,YMMWORD PTR [rsp+0x100]
  7323d5:	00 00 
  7323d7:	c4 c1 30 58 c0       	vaddps xmm0,xmm9,xmm8
  7323dc:	c5 88 58 cb          	vaddps xmm1,xmm14,xmm3
  7323e0:	c5 7c 28 d3          	vmovaps ymm10,ymm3
  7323e4:	c5 f0 14 e0          	vunpcklps xmm4,xmm1,xmm0
  7323e8:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  7323ec:	c5 f8 13 46 40       	vmovlps QWORD PTR [rsi+0x40],xmm0
  7323f1:	c5 f8 11 66 30       	vmovups XMMWORD PTR [rsi+0x30],xmm4
  7323f6:	c5 fc 28 bc 24 a0 00 	vmovaps ymm7,YMMWORD PTR [rsp+0xa0]
  7323fd:	00 00 
  7323ff:	c5 fc 28 b4 24 80 00 	vmovaps ymm6,YMMWORD PTR [rsp+0x80]
  732406:	00 00 
  732408:	c5 c0 58 c6          	vaddps xmm0,xmm7,xmm6
  73240c:	c5 fc 28 9c 24 40 01 	vmovaps ymm3,YMMWORD PTR [rsp+0x140]
  732413:	00 00 
  732415:	c5 d0 58 cb          	vaddps xmm1,xmm5,xmm3
  732419:	c5 f0 14 e0          	vunpcklps xmm4,xmm1,xmm0
  73241d:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  732421:	c5 f8 13 46 58       	vmovlps QWORD PTR [rsi+0x58],xmm0
  732426:	c5 f8 11 66 48       	vmovups XMMWORD PTR [rsi+0x48],xmm4
  73242b:	c5 fc 28 44 24 60    	vmovaps ymm0,YMMWORD PTR [rsp+0x60]
  732431:	c5 f8 5c c2          	vsubps xmm0,xmm0,xmm2
  732435:	c5 a0 5c 8c 24 20 01 	vsubps xmm1,xmm11,XMMWORD PTR [rsp+0x120]
  73243c:	00 00 
  73243e:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  732442:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  732446:	c5 f8 13 46 70       	vmovlps QWORD PTR [rsi+0x70],xmm0
  73244b:	c5 f8 11 56 60       	vmovups XMMWORD PTR [rsi+0x60],xmm2
  732450:	c5 fc 28 84 24 e0 00 	vmovaps ymm0,YMMWORD PTR [rsp+0xe0]
  732457:	00 00 
  732459:	c4 c1 78 5c c7       	vsubps xmm0,xmm0,xmm15
  73245e:	c4 c1 10 5c cc       	vsubps xmm1,xmm13,xmm12
  732463:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  732467:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  73246b:	c5 f8 13 86 88 00 00 	vmovlps QWORD PTR [rsi+0x88],xmm0
  732472:	00 
  732473:	c5 f8 11 56 78       	vmovups XMMWORD PTR [rsi+0x78],xmm2
  732478:	c4 c1 30 5c c0       	vsubps xmm0,xmm9,xmm8
  73247d:	c4 c1 28 5c ce       	vsubps xmm1,xmm10,xmm14
  732482:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  732486:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  73248a:	c5 f8 13 86 a0 00 00 	vmovlps QWORD PTR [rsi+0xa0],xmm0
  732491:	00 
  732492:	c5 f8 11 96 90 00 00 	vmovups XMMWORD PTR [rsi+0x90],xmm2
  732499:	00 
  73249a:	c5 c0 5c c6          	vsubps xmm0,xmm7,xmm6
  73249e:	c5 d0 5c cb          	vsubps xmm1,xmm5,xmm3
  7324a2:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  7324a6:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  7324aa:	c5 f8 13 86 b8 00 00 	vmovlps QWORD PTR [rsi+0xb8],xmm0
  7324b1:	00 
  7324b2:	c5 f8 11 96 a8 00 00 	vmovups XMMWORD PTR [rsi+0xa8],xmm2
  7324b9:	00 
  7324ba:	48 89 ec             	mov    rsp,rbp
  7324bd:	5d                   	pop    rbp
  7324be:	c5 f8 77             	vzeroupper
  7324c1:	c3                   	ret
