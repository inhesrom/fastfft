
target/ticket19/selection-fix/fourstep-storage-anchor/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b05f00 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  b05f00:	55                   	push   rbp
  b05f01:	48 89 e5             	mov    rbp,rsp
  b05f04:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  b05f08:	48 81 ec c0 02 00 00 	sub    rsp,0x2c0
  b05f0f:	c6 84 24 40 02 00 00 	mov    BYTE PTR [rsp+0x240],0x0
  b05f16:	00 
  b05f17:	48 8d 84 24 40 02 00 	lea    rax,[rsp+0x240]
  b05f1e:	00 
  b05f1f:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
  b05f24:	48 8d 44 24 18       	lea    rax,[rsp+0x18]
  b05f29:	c5 fc 10 07          	vmovups ymm0,YMMWORD PTR [rdi]
  b05f2d:	c5 fc 10 4f 20       	vmovups ymm1,YMMWORD PTR [rdi+0x20]
  b05f32:	c5 fc c6 d1 88       	vshufps ymm2,ymm0,ymm1,0x88
  b05f37:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  b05f3d:	c5 fc c6 c1 dd       	vshufps ymm0,ymm0,ymm1,0xdd
  b05f42:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  b05f48:	c5 fc 10 4f 60       	vmovups ymm1,YMMWORD PTR [rdi+0x60]
  b05f4d:	c5 fc 10 9f 80 00 00 	vmovups ymm3,YMMWORD PTR [rdi+0x80]
  b05f54:	00 
  b05f55:	c5 f4 c6 e3 88       	vshufps ymm4,ymm1,ymm3,0x88
  b05f5a:	c4 e3 fd 01 e4 d8    	vpermpd ymm4,ymm4,0xd8
  b05f60:	c5 f4 c6 cb dd       	vshufps ymm1,ymm1,ymm3,0xdd
  b05f65:	c4 e3 fd 01 c9 d8    	vpermpd ymm1,ymm1,0xd8
  b05f6b:	c5 fc 10 9f c0 00 00 	vmovups ymm3,YMMWORD PTR [rdi+0xc0]
  b05f72:	00 
  b05f73:	c5 fc 10 af e0 00 00 	vmovups ymm5,YMMWORD PTR [rdi+0xe0]
  b05f7a:	00 
  b05f7b:	c5 e4 c6 f5 88       	vshufps ymm6,ymm3,ymm5,0x88
  b05f80:	c4 e3 fd 01 f6 d8    	vpermpd ymm6,ymm6,0xd8
  b05f86:	c5 e4 c6 dd dd       	vshufps ymm3,ymm3,ymm5,0xdd
  b05f8b:	c4 e3 fd 01 db d8    	vpermpd ymm3,ymm3,0xd8
  b05f91:	c5 fc 10 af 20 01 00 	vmovups ymm5,YMMWORD PTR [rdi+0x120]
  b05f98:	00 
  b05f99:	c5 fc 10 bf 40 01 00 	vmovups ymm7,YMMWORD PTR [rdi+0x140]
  b05fa0:	00 
  b05fa1:	c5 54 c6 c7 88       	vshufps ymm8,ymm5,ymm7,0x88
  b05fa6:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  b05fac:	c5 d4 c6 ef dd       	vshufps ymm5,ymm5,ymm7,0xdd
  b05fb1:	c4 e3 fd 01 ed d8    	vpermpd ymm5,ymm5,0xd8
  b05fb7:	c5 fc 10 bf 80 01 00 	vmovups ymm7,YMMWORD PTR [rdi+0x180]
  b05fbe:	00 
  b05fbf:	c5 7c 10 8f a0 01 00 	vmovups ymm9,YMMWORD PTR [rdi+0x1a0]
  b05fc6:	00 
  b05fc7:	c4 41 44 c6 d1 88    	vshufps ymm10,ymm7,ymm9,0x88
  b05fcd:	c4 43 fd 01 d2 d8    	vpermpd ymm10,ymm10,0xd8
  b05fd3:	c4 c1 44 c6 f9 dd    	vshufps ymm7,ymm7,ymm9,0xdd
  b05fd9:	c4 e3 fd 01 ff d8    	vpermpd ymm7,ymm7,0xd8
  b05fdf:	c5 7c 10 8f e0 01 00 	vmovups ymm9,YMMWORD PTR [rdi+0x1e0]
  b05fe6:	00 
  b05fe7:	c5 7c 10 9f 00 02 00 	vmovups ymm11,YMMWORD PTR [rdi+0x200]
  b05fee:	00 
  b05fef:	c4 41 34 c6 e3 88    	vshufps ymm12,ymm9,ymm11,0x88
  b05ff5:	c4 43 fd 01 e4 d8    	vpermpd ymm12,ymm12,0xd8
  b05ffb:	c4 41 34 c6 cb dd    	vshufps ymm9,ymm9,ymm11,0xdd
  b06001:	c4 43 fd 01 c9 d8    	vpermpd ymm9,ymm9,0xd8
  b06007:	c5 7c 10 9f 40 02 00 	vmovups ymm11,YMMWORD PTR [rdi+0x240]
  b0600e:	00 
  b0600f:	c5 7c 10 af 60 02 00 	vmovups ymm13,YMMWORD PTR [rdi+0x260]
  b06016:	00 
  b06017:	c4 41 24 c6 f5 88    	vshufps ymm14,ymm11,ymm13,0x88
  b0601d:	c4 43 fd 01 f6 d8    	vpermpd ymm14,ymm14,0xd8
  b06023:	c4 41 24 c6 dd dd    	vshufps ymm11,ymm11,ymm13,0xdd
  b06029:	c4 43 fd 01 db d8    	vpermpd ymm11,ymm11,0xd8
  b0602f:	c5 7c 10 af a0 02 00 	vmovups ymm13,YMMWORD PTR [rdi+0x2a0]
  b06036:	00 
  b06037:	c5 7c 10 bf c0 02 00 	vmovups ymm15,YMMWORD PTR [rdi+0x2c0]
  b0603e:	00 
  b0603f:	62 c1 14 28 c6 c7 88 	vshufps ymm16,ymm13,ymm15,0x88
  b06046:	62 a3 fd 28 01 c0 d8 	vpermpd ymm16,ymm16,0xd8
  b0604d:	c4 41 14 c6 ef dd    	vshufps ymm13,ymm13,ymm15,0xdd
  b06053:	c4 43 fd 01 ed d8    	vpermpd ymm13,ymm13,0xd8
  b06059:	c5 7c 58 ff          	vaddps ymm15,ymm0,ymm7
  b0605d:	62 c1 64 28 58 cb    	vaddps ymm17,ymm3,ymm11
  b06063:	62 a1 04 28 58 d1    	vaddps ymm18,ymm15,ymm17
  b06069:	62 c1 74 28 58 d9    	vaddps ymm19,ymm1,ymm9
  b0606f:	62 c1 54 28 58 e5    	vaddps ymm20,ymm5,ymm13
  b06075:	62 a1 64 20 58 ec    	vaddps ymm21,ymm19,ymm20
  b0607b:	62 21 6c 20 58 fd    	vaddps ymm31,ymm18,ymm21
  b06081:	62 61 7c 28 29 7c 24 	vmovaps YMMWORD PTR [rsp+0x100],ymm31
  b06088:	08 
  b06089:	62 c1 6c 28 58 f2    	vaddps ymm22,ymm2,ymm10
  b0608f:	62 c1 4c 28 58 fe    	vaddps ymm23,ymm6,ymm14
  b06095:	62 21 4c 20 58 cf    	vaddps ymm25,ymm22,ymm23
  b0609b:	62 41 5c 28 58 d4    	vaddps ymm26,ymm4,ymm12
  b060a1:	62 21 3c 28 58 d8    	vaddps ymm27,ymm8,ymm16
  b060a7:	62 01 2c 20 58 e3    	vaddps ymm28,ymm26,ymm27
  b060ad:	62 01 34 20 58 f4    	vaddps ymm30,ymm25,ymm28
  b060b3:	62 61 7c 28 29 74 24 	vmovaps YMMWORD PTR [rsp+0x200],ymm30
  b060ba:	10 
  b060bb:	c5 fc 5c c7          	vsubps ymm0,ymm0,ymm7
  b060bf:	c4 c1 4c 5c f6       	vsubps ymm6,ymm6,ymm14
  b060c4:	62 61 7c 28 58 ee    	vaddps ymm29,ymm0,ymm6
  b060ca:	c4 c1 74 5c c9       	vsubps ymm1,ymm1,ymm9
  b060cf:	c4 c1 5c 5c e4       	vsubps ymm4,ymm4,ymm12
  b060d4:	62 62 7d 28 18 05 7e 	vbroadcastss ymm24,DWORD PTR [rip+0xffffffffff56f27e]        # 7535c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x283c>
  b060db:	f2 56 ff 
  b060de:	c5 f4 58 fc          	vaddps ymm7,ymm1,ymm4
  b060e2:	62 11 44 28 59 e0    	vmulps ymm12,ymm7,ymm24
  b060e8:	62 b1 3c 28 5c f8    	vsubps ymm7,ymm8,ymm16
  b060ee:	c4 c1 54 5c ed       	vsubps ymm5,ymm5,ymm13
  b060f3:	c5 44 5c c5          	vsubps ymm8,ymm7,ymm5
  b060f7:	62 11 3c 28 59 c0    	vmulps ymm8,ymm8,ymm24
  b060fd:	c4 41 1c 58 e8       	vaddps ymm13,ymm12,ymm8
  b06102:	62 51 14 20 58 cd    	vaddps ymm9,ymm29,ymm13
  b06108:	c5 7c 29 8c 24 80 01 	vmovaps YMMWORD PTR [rsp+0x180],ymm9
  b0610f:	00 00 
  b06111:	c4 c1 6c 5c d2       	vsubps ymm2,ymm2,ymm10
  b06116:	c5 a4 5c db          	vsubps ymm3,ymm11,ymm3
  b0611a:	c5 64 58 da          	vaddps ymm11,ymm3,ymm2
  b0611e:	c5 dc 5c c9          	vsubps ymm1,ymm4,ymm1
  b06122:	62 91 74 28 59 c8    	vmulps ymm1,ymm1,ymm24
  b06128:	c5 d4 58 e7          	vaddps ymm4,ymm5,ymm7
  b0612c:	62 91 5c 28 59 e8    	vmulps ymm5,ymm4,ymm24
  b06132:	62 e1 74 28 5c c5    	vsubps ymm16,ymm1,ymm5
  b06138:	62 b1 24 28 58 e0    	vaddps ymm4,ymm11,ymm16
  b0613e:	c5 fc 29 a4 24 a0 00 	vmovaps YMMWORD PTR [rsp+0xa0],ymm4
  b06145:	00 00 
  b06147:	62 31 04 28 5c f9    	vsubps ymm15,ymm15,ymm17
  b0614d:	62 81 2c 20 5c cb    	vsubps ymm17,ymm26,ymm27
  b06153:	62 31 04 28 58 d1    	vaddps ymm10,ymm15,ymm17
  b06159:	c5 7c 29 94 24 40 01 	vmovaps YMMWORD PTR [rsp+0x140],ymm10
  b06160:	00 00 
  b06162:	62 a1 4c 20 5c f7    	vsubps ymm22,ymm22,ymm23
  b06168:	62 a1 5c 20 5c db    	vsubps ymm19,ymm20,ymm19
  b0616e:	62 b1 64 20 58 fe    	vaddps ymm7,ymm19,ymm22
  b06174:	c5 fc 29 bc 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm7
  b0617b:	00 00 
  b0617d:	c5 fc 5c c6          	vsubps ymm0,ymm0,ymm6
  b06181:	c5 f4 58 cd          	vaddps ymm1,ymm1,ymm5
  b06185:	c5 7c 58 f1          	vaddps ymm14,ymm0,ymm1
  b06189:	c5 7c 29 b4 24 c0 01 	vmovaps YMMWORD PTR [rsp+0x1c0],ymm14
  b06190:	00 00 
  b06192:	c5 ec 5c d3          	vsubps ymm2,ymm2,ymm3
  b06196:	c4 c1 3c 5c dc       	vsubps ymm3,ymm8,ymm12
  b0619b:	c5 ec 58 eb          	vaddps ymm5,ymm2,ymm3
  b0619f:	c5 fc 29 ac 24 e0 00 	vmovaps YMMWORD PTR [rsp+0xe0],ymm5
  b061a6:	00 00 
  b061a8:	62 a1 6c 20 5c e5    	vsubps ymm20,ymm18,ymm21
  b061ae:	62 e1 7c 28 29 64 24 	vmovaps YMMWORD PTR [rsp+0x120],ymm20
  b061b5:	09 
  b061b6:	62 11 34 20 5c e4    	vsubps ymm12,ymm25,ymm28
  b061bc:	c5 7c 29 a4 24 20 02 	vmovaps YMMWORD PTR [rsp+0x220],ymm12
  b061c3:	00 00 
  b061c5:	62 51 14 20 5c ed    	vsubps ymm13,ymm29,ymm13
  b061cb:	c5 7c 29 ac 24 a0 01 	vmovaps YMMWORD PTR [rsp+0x1a0],ymm13
  b061d2:	00 00 
  b061d4:	62 b1 24 28 5c f0    	vsubps ymm6,ymm11,ymm16
  b061da:	c5 fc 29 b4 24 c0 00 	vmovaps YMMWORD PTR [rsp+0xc0],ymm6
  b061e1:	00 00 
  b061e3:	62 a1 04 28 5c c1    	vsubps ymm16,ymm15,ymm17
  b061e9:	62 e1 7c 28 29 44 24 	vmovaps YMMWORD PTR [rsp+0x160],ymm16
  b061f0:	0b 
  b061f1:	62 31 4c 20 5c db    	vsubps ymm11,ymm22,ymm19
  b061f7:	c5 7c 29 5c 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm11
  b061fd:	c5 7c 5c f9          	vsubps ymm15,ymm0,ymm1
  b06201:	c5 7c 29 bc 24 e0 01 	vmovaps YMMWORD PTR [rsp+0x1e0],ymm15
  b06208:	00 00 
  b0620a:	c5 6c 5c c3          	vsubps ymm8,ymm2,ymm3
  b0620e:	c5 7c 29 44 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm8
  b06214:	62 d3 8d 20 23 c4 03 	vshuff64x2 ymm0,ymm30,ymm12,0x3
  b0621b:	c4 c3 45 06 cb 31    	vperm2f128 ymm1,ymm7,ymm11,0x31
  b06221:	c5 fd 15 d1          	vunpckhpd ymm2,ymm0,ymm1
  b06225:	c4 e3 5d 06 de 31    	vperm2f128 ymm3,ymm4,ymm6,0x31
  b0622b:	62 c3 d5 28 23 d0 03 	vshuff64x2 ymm18,ymm5,ymm8,0x3
  b06232:	62 a1 e5 28 15 ca    	vunpckhpd ymm17,ymm3,ymm18
  b06238:	62 b1 6c 28 c6 e1 dd 	vshufps ymm4,ymm2,ymm17,0xdd
  b0623f:	c5 fc 29 64 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm4
  b06245:	62 a1 6c 28 c6 c9 88 	vshufps ymm17,ymm2,ymm17,0x88
  b0624c:	c5 fd 14 c1          	vunpcklpd ymm0,ymm0,ymm1
  b06250:	62 b1 e5 28 14 ca    	vunpcklpd ymm1,ymm3,ymm18
  b06256:	62 e1 7c 28 c6 d1 dd 	vshufps ymm18,ymm0,ymm1,0xdd
  b0625d:	62 e1 7c 28 c6 d9 88 	vshufps ymm19,ymm0,ymm1,0x88
  b06264:	62 b3 85 20 23 c4 03 	vshuff64x2 ymm0,ymm31,ymm20,0x3
  b0626b:	62 b3 ad 28 23 c8 03 	vshuff64x2 ymm1,ymm10,ymm16,0x3
  b06272:	c5 fd 15 d1          	vunpckhpd ymm2,ymm0,ymm1
  b06276:	c4 c3 35 06 dd 31    	vperm2f128 ymm3,ymm9,ymm13,0x31
  b0627c:	62 c3 8d 28 23 f7 03 	vshuff64x2 ymm22,ymm14,ymm15,0x3
  b06283:	62 a1 e5 28 15 ee    	vunpckhpd ymm21,ymm3,ymm22
  b06289:	62 a1 6c 28 c6 e5 dd 	vshufps ymm20,ymm2,ymm21,0xdd
  b06290:	62 a1 6c 28 c6 ed 88 	vshufps ymm21,ymm2,ymm21,0x88
  b06297:	c5 fd 14 c1          	vunpcklpd ymm0,ymm0,ymm1
  b0629b:	62 b1 e5 28 14 ce    	vunpcklpd ymm1,ymm3,ymm22
  b062a1:	62 e1 7c 28 c6 f1 dd 	vshufps ymm22,ymm0,ymm1,0xdd
  b062a8:	62 e1 7c 28 c6 f9 88 	vshufps ymm23,ymm0,ymm1,0x88
  b062af:	c5 f8 10 47 50       	vmovups xmm0,XMMWORD PTR [rdi+0x50]
  b062b4:	c5 f8 10 4f 40       	vmovups xmm1,XMMWORD PTR [rdi+0x40]
  b062b9:	62 61 74 08 c6 c8 88 	vshufps xmm25,xmm1,xmm0,0x88
  b062c0:	c5 70 c6 e8 dd       	vshufps xmm13,xmm1,xmm0,0xdd
  b062c5:	c5 f8 10 97 b0 00 00 	vmovups xmm2,XMMWORD PTR [rdi+0xb0]
  b062cc:	00 
  b062cd:	c5 f8 10 9f a0 00 00 	vmovups xmm3,XMMWORD PTR [rdi+0xa0]
  b062d4:	00 
  b062d5:	c5 60 c6 f2 88       	vshufps xmm14,xmm3,xmm2,0x88
  b062da:	c5 60 c6 da dd       	vshufps xmm11,xmm3,xmm2,0xdd
  b062df:	c5 f8 10 97 10 01 00 	vmovups xmm2,XMMWORD PTR [rdi+0x110]
  b062e6:	00 
  b062e7:	c5 f8 10 9f 00 01 00 	vmovups xmm3,XMMWORD PTR [rdi+0x100]
  b062ee:	00 
  b062ef:	62 61 64 08 c6 ea 88 	vshufps xmm29,xmm3,xmm2,0x88
  b062f6:	62 61 64 08 c6 d2 dd 	vshufps xmm26,xmm3,xmm2,0xdd
  b062fd:	c5 f8 10 97 70 01 00 	vmovups xmm2,XMMWORD PTR [rdi+0x170]
  b06304:	00 
  b06305:	c5 f8 10 9f 60 01 00 	vmovups xmm3,XMMWORD PTR [rdi+0x160]
  b0630c:	00 
  b0630d:	c5 60 c6 d2 88       	vshufps xmm10,xmm3,xmm2,0x88
  b06312:	c5 60 c6 ca dd       	vshufps xmm9,xmm3,xmm2,0xdd
  b06317:	c5 f8 10 97 d0 01 00 	vmovups xmm2,XMMWORD PTR [rdi+0x1d0]
  b0631e:	00 
  b0631f:	c5 f8 10 9f c0 01 00 	vmovups xmm3,XMMWORD PTR [rdi+0x1c0]
  b06326:	00 
  b06327:	62 61 64 08 c6 da 88 	vshufps xmm27,xmm3,xmm2,0x88
  b0632e:	c5 e0 c6 f2 dd       	vshufps xmm6,xmm3,xmm2,0xdd
  b06333:	c5 f8 10 97 30 02 00 	vmovups xmm2,XMMWORD PTR [rdi+0x230]
  b0633a:	00 
  b0633b:	c5 f8 10 9f 20 02 00 	vmovups xmm3,XMMWORD PTR [rdi+0x220]
  b06342:	00 
  b06343:	c5 e0 c6 fa 88       	vshufps xmm7,xmm3,xmm2,0x88
  b06348:	c5 e0 c6 ea dd       	vshufps xmm5,xmm3,xmm2,0xdd
  b0634d:	c5 f8 10 97 90 02 00 	vmovups xmm2,XMMWORD PTR [rdi+0x290]
  b06354:	00 
  b06355:	62 61 7c 08 10 67 28 	vmovups xmm28,XMMWORD PTR [rdi+0x280]
  b0635c:	62 e1 1c 00 c6 c2 88 	vshufps xmm16,xmm28,xmm2,0x88
  b06363:	62 61 1c 00 c6 fa dd 	vshufps xmm31,xmm28,xmm2,0xdd
  b0636a:	c5 f8 10 97 f0 02 00 	vmovups xmm2,XMMWORD PTR [rdi+0x2f0]
  b06371:	00 
  b06372:	62 61 7c 08 10 67 2e 	vmovups xmm28,XMMWORD PTR [rdi+0x2e0]
  b06379:	62 f1 1c 00 c6 e2 88 	vshufps xmm4,xmm28,xmm2,0x88
  b06380:	62 f1 1c 00 c6 da dd 	vshufps xmm3,xmm28,xmm2,0xdd
  b06387:	62 61 14 28 58 f6    	vaddps ymm30,ymm13,ymm6
  b0638d:	62 91 2c 20 58 cf    	vaddps ymm1,ymm26,ymm31
  b06393:	62 61 0c 20 58 e1    	vaddps ymm28,ymm30,ymm1
  b06399:	c5 24 58 fd          	vaddps ymm15,ymm11,ymm5
  b0639d:	c5 34 58 e3          	vaddps ymm12,ymm9,ymm3
  b063a1:	c4 c1 04 58 c4       	vaddps ymm0,ymm15,ymm12
  b063a6:	62 f1 1c 20 58 d0    	vaddps ymm2,ymm28,ymm0
  b063ac:	62 f1 1c 00 5c c0    	vsubps xmm0,xmm28,xmm0
  b063b2:	62 63 6d 28 18 e0 01 	vinsertf32x4 ymm28,ymm2,xmm0,0x1
  b063b9:	62 f1 0c 20 5c c1    	vsubps ymm0,ymm30,ymm1
  b063bf:	c5 0c 58 c7          	vaddps ymm8,ymm14,ymm7
  b063c3:	c5 ac 58 d4          	vaddps ymm2,ymm10,ymm4
  b063c7:	62 61 3c 28 5c f2    	vsubps ymm30,ymm8,ymm2
  b063cd:	62 91 7c 28 58 ce    	vaddps ymm1,ymm0,ymm30
  b063d3:	62 91 7c 08 5c c6    	vsubps xmm0,xmm0,xmm30
  b063d9:	62 63 75 28 18 f0 01 	vinsertf32x4 ymm30,ymm1,xmm0,0x1
  b063e0:	c5 94 5c ce          	vsubps ymm1,ymm13,ymm6
  b063e4:	c5 a4 5c ed          	vsubps ymm5,ymm11,ymm5
  b063e8:	c5 8c 5c f7          	vsubps ymm6,ymm14,ymm7
  b063ec:	c5 ac 5c e4          	vsubps ymm4,ymm10,ymm4
  b063f0:	c5 b4 5c db          	vsubps ymm3,ymm9,ymm3
  b063f4:	c5 d4 58 c6          	vaddps ymm0,ymm5,ymm6
  b063f8:	62 91 7c 28 59 f8    	vmulps ymm7,ymm0,ymm24
  b063fe:	c5 dc 5c c3          	vsubps ymm0,ymm4,ymm3
  b06402:	62 11 7c 28 59 c8    	vmulps ymm9,ymm0,ymm24
  b06408:	62 31 14 20 5c d0    	vsubps ymm10,ymm29,ymm16
  b0640e:	c5 ac 58 c1          	vaddps ymm0,ymm10,ymm1
  b06412:	c5 34 58 df          	vaddps ymm11,ymm9,ymm7
  b06416:	c5 24 58 e8          	vaddps ymm13,ymm11,ymm0
  b0641a:	c4 c1 78 5c c3       	vsubps xmm0,xmm0,xmm11
  b0641f:	c4 e3 15 18 c0 01    	vinsertf128 ymm0,ymm13,xmm0,0x1
  b06425:	c4 c1 74 5c ca       	vsubps ymm1,ymm1,ymm10
  b0642a:	c5 cc 5c ed          	vsubps ymm5,ymm6,ymm5
  b0642e:	c5 e4 58 dc          	vaddps ymm3,ymm3,ymm4
  b06432:	62 91 54 28 59 e0    	vmulps ymm4,ymm5,ymm24
  b06438:	62 91 64 28 59 d8    	vmulps ymm3,ymm3,ymm24
  b0643e:	c5 dc 58 eb          	vaddps ymm5,ymm4,ymm3
  b06442:	c5 f4 58 f5          	vaddps ymm6,ymm1,ymm5
  b06446:	c5 f0 5c cd          	vsubps xmm1,xmm1,xmm5
  b0644a:	c4 e3 4d 18 c9 01    	vinsertf128 ymm1,ymm6,xmm1,0x1
  b06450:	62 b1 14 20 58 e8    	vaddps ymm5,ymm29,ymm16
  b06456:	c5 bc 58 d2          	vaddps ymm2,ymm8,ymm2
  b0645a:	62 91 34 20 58 f3    	vaddps ymm6,ymm25,ymm27
  b06460:	c5 4c 58 c5          	vaddps ymm8,ymm6,ymm5
  b06464:	c5 3c 58 d2          	vaddps ymm10,ymm8,ymm2
  b06468:	c5 b8 5c d2          	vsubps xmm2,xmm8,xmm2
  b0646c:	c4 e3 2d 18 d2 01    	vinsertf128 ymm2,ymm10,xmm2,0x1
  b06472:	c4 41 1c 5c c7       	vsubps ymm8,ymm12,ymm15
  b06477:	c5 cc 5c ed          	vsubps ymm5,ymm6,ymm5
  b0647b:	c5 bc 58 f5          	vaddps ymm6,ymm8,ymm5
  b0647f:	c4 c1 50 5c e8       	vsubps xmm5,xmm5,xmm8
  b06484:	c4 e3 4d 18 ed 01    	vinsertf128 ymm5,ymm6,xmm5,0x1
  b0648a:	62 91 04 20 5c f2    	vsubps ymm6,ymm31,ymm26
  b06490:	62 11 34 20 5c c3    	vsubps ymm8,ymm25,ymm27
  b06496:	c5 dc 5c db          	vsubps ymm3,ymm4,ymm3
  b0649a:	c5 bc 58 e6          	vaddps ymm4,ymm8,ymm6
  b0649e:	c5 5c 58 d3          	vaddps ymm10,ymm4,ymm3
  b064a2:	c5 d8 5c db          	vsubps xmm3,xmm4,xmm3
  b064a6:	c4 e3 2d 18 db 01    	vinsertf128 ymm3,ymm10,xmm3,0x1
  b064ac:	c5 bc 5c e6          	vsubps ymm4,ymm8,ymm6
  b064b0:	c5 b4 5c f7          	vsubps ymm6,ymm9,ymm7
  b064b4:	c5 dc 58 fe          	vaddps ymm7,ymm4,ymm6
  b064b8:	c5 d8 5c e6          	vsubps xmm4,xmm4,xmm6
  b064bc:	c4 e3 45 18 e4 01    	vinsertf128 ymm4,ymm7,xmm4,0x1
  b064c2:	62 91 9d 20 15 f6    	vunpckhpd ymm6,ymm28,ymm30
  b064c8:	c5 fd 15 f9          	vunpckhpd ymm7,ymm0,ymm1
  b064cc:	c5 4c c6 c7 dd       	vshufps ymm8,ymm6,ymm7,0xdd
  b064d1:	c5 cc c6 f7 88       	vshufps ymm6,ymm6,ymm7,0x88
  b064d6:	c5 ed 15 fd          	vunpckhpd ymm7,ymm2,ymm5
  b064da:	c5 65 15 cc          	vunpckhpd ymm9,ymm3,ymm4
  b064de:	c4 41 44 c6 d1 dd    	vshufps ymm10,ymm7,ymm9,0xdd
  b064e4:	c4 c1 44 c6 f9 88    	vshufps ymm7,ymm7,ymm9,0x88
  b064ea:	62 11 9d 20 14 ce    	vunpcklpd ymm9,ymm28,ymm30
  b064f0:	c5 fd 14 c1          	vunpcklpd ymm0,ymm0,ymm1
  b064f4:	c5 ed 14 cd          	vunpcklpd ymm1,ymm2,ymm5
  b064f8:	c5 e5 14 d4          	vunpcklpd ymm2,ymm3,ymm4
  b064fc:	c5 b4 c6 d8 dd       	vshufps ymm3,ymm9,ymm0,0xdd
  b06501:	c5 b4 c6 c0 88       	vshufps ymm0,ymm9,ymm0,0x88
  b06506:	c5 f4 c6 e2 dd       	vshufps ymm4,ymm1,ymm2,0xdd
  b0650b:	c5 f4 c6 ca 88       	vshufps ymm1,ymm1,ymm2,0x88
  b06510:	62 63 7d 28 04 44 24 	vpermilps ymm24,YMMWORD PTR [rsp+0x60],0xd8
  b06517:	03 d8 
  b06519:	62 21 74 20 c6 f1 d8 	vshufps ymm30,ymm17,ymm17,0xd8
  b06520:	62 b1 6c 20 c6 d2 d8 	vshufps ymm2,ymm18,ymm18,0xd8
  b06527:	c5 fc 29 54 24 60    	vmovaps YMMWORD PTR [rsp+0x60],ymm2
  b0652d:	62 21 64 20 c6 d3 d8 	vshufps ymm26,ymm19,ymm19,0xd8
  b06534:	62 21 5c 20 c6 cc d8 	vshufps ymm25,ymm20,ymm20,0xd8
  b0653b:	62 21 54 20 c6 fd d8 	vshufps ymm31,ymm21,ymm21,0xd8
  b06542:	62 a1 4c 20 c6 ce d8 	vshufps ymm17,ymm22,ymm22,0xd8
  b06549:	62 a1 44 20 c6 ff d8 	vshufps ymm23,ymm23,ymm23,0xd8
  b06550:	62 c1 3c 28 c6 d0 d8 	vshufps ymm18,ymm8,ymm8,0xd8
  b06557:	62 c1 2c 28 c6 da d8 	vshufps ymm19,ymm10,ymm10,0xd8
  b0655e:	62 e1 4c 28 c6 f6 d8 	vshufps ymm22,ymm6,ymm6,0xd8
  b06565:	62 61 44 28 c6 df d8 	vshufps ymm27,ymm7,ymm7,0xd8
  b0656c:	62 61 64 28 c6 e3 d8 	vshufps ymm28,ymm3,ymm3,0xd8
  b06573:	62 61 5c 28 c6 ec d8 	vshufps ymm29,ymm4,ymm4,0xd8
  b0657a:	62 e1 7c 28 c6 e0 d8 	vshufps ymm20,ymm0,ymm0,0xd8
  b06581:	62 e1 74 28 c6 e9 d8 	vshufps ymm21,ymm1,ymm1,0xd8
  b06588:	c5 fc 28 84 24 00 01 	vmovaps ymm0,YMMWORD PTR [rsp+0x100]
  b0658f:	00 00 
  b06591:	c4 e3 7d 18 84 24 20 	vinsertf128 ymm0,ymm0,XMMWORD PTR [rsp+0x120],0x1
  b06598:	01 00 00 01 
  b0659c:	c5 fc 28 8c 24 40 01 	vmovaps ymm1,YMMWORD PTR [rsp+0x140]
  b065a3:	00 00 
  b065a5:	c4 e3 75 18 8c 24 60 	vinsertf128 ymm1,ymm1,XMMWORD PTR [rsp+0x160],0x1
  b065ac:	01 00 00 01 
  b065b0:	c5 fd 15 d1          	vunpckhpd ymm2,ymm0,ymm1
  b065b4:	c5 fc 28 9c 24 80 01 	vmovaps ymm3,YMMWORD PTR [rsp+0x180]
  b065bb:	00 00 
  b065bd:	c4 e3 65 18 9c 24 a0 	vinsertf128 ymm3,ymm3,XMMWORD PTR [rsp+0x1a0],0x1
  b065c4:	01 00 00 01 
  b065c8:	c5 fc 28 a4 24 c0 01 	vmovaps ymm4,YMMWORD PTR [rsp+0x1c0]
  b065cf:	00 00 
  b065d1:	c4 e3 5d 18 ac 24 e0 	vinsertf128 ymm5,ymm4,XMMWORD PTR [rsp+0x1e0],0x1
  b065d8:	01 00 00 01 
  b065dc:	c5 e5 15 e5          	vunpckhpd ymm4,ymm3,ymm5
  b065e0:	c5 ec c6 f4 dd       	vshufps ymm6,ymm2,ymm4,0xdd
  b065e5:	c5 4c c6 ee d8       	vshufps ymm13,ymm6,ymm6,0xd8
  b065ea:	c5 fc 28 b4 24 00 02 	vmovaps ymm6,YMMWORD PTR [rsp+0x200]
  b065f1:	00 00 
  b065f3:	c4 e3 4d 18 b4 24 20 	vinsertf128 ymm6,ymm6,XMMWORD PTR [rsp+0x220],0x1
  b065fa:	02 00 00 01 
  b065fe:	c5 fc 28 bc 24 80 00 	vmovaps ymm7,YMMWORD PTR [rsp+0x80]
  b06605:	00 00 
  b06607:	c4 63 45 18 44 24 20 	vinsertf128 ymm8,ymm7,XMMWORD PTR [rsp+0x20],0x1
  b0660e:	01 
  b0660f:	c4 c1 4d 15 f8       	vunpckhpd ymm7,ymm6,ymm8
  b06614:	c5 7c 28 8c 24 a0 00 	vmovaps ymm9,YMMWORD PTR [rsp+0xa0]
  b0661b:	00 00 
  b0661d:	c4 63 35 18 8c 24 c0 	vinsertf128 ymm9,ymm9,XMMWORD PTR [rsp+0xc0],0x1
  b06624:	00 00 00 01 
  b06628:	c5 7c 28 94 24 e0 00 	vmovaps ymm10,YMMWORD PTR [rsp+0xe0]
  b0662f:	00 00 
  b06631:	c4 63 2d 18 54 24 40 	vinsertf128 ymm10,ymm10,XMMWORD PTR [rsp+0x40],0x1
  b06638:	01 
  b06639:	c4 41 35 15 da       	vunpckhpd ymm11,ymm9,ymm10
  b0663e:	c4 41 44 c6 e3 dd    	vshufps ymm12,ymm7,ymm11,0xdd
  b06644:	c4 41 1c c6 f4 d8    	vshufps ymm14,ymm12,ymm12,0xd8
  b0664a:	c5 ec c6 d4 88       	vshufps ymm2,ymm2,ymm4,0x88
  b0664f:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  b06654:	c4 c1 44 c6 e3 88    	vshufps ymm4,ymm7,ymm11,0x88
  b0665a:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  b0665f:	c5 fd 14 c1          	vunpcklpd ymm0,ymm0,ymm1
  b06663:	c5 e5 14 cd          	vunpcklpd ymm1,ymm3,ymm5
  b06667:	c5 fc c6 d9 dd       	vshufps ymm3,ymm0,ymm1,0xdd
  b0666c:	c5 e4 c6 fb d8       	vshufps ymm7,ymm3,ymm3,0xd8
  b06671:	c4 c1 4d 14 d8       	vunpcklpd ymm3,ymm6,ymm8
  b06676:	c4 c1 35 14 ea       	vunpcklpd ymm5,ymm9,ymm10
  b0667b:	c5 e4 c6 f5 dd       	vshufps ymm6,ymm3,ymm5,0xdd
  b06680:	c5 4c c6 ce d8       	vshufps ymm9,ymm6,ymm6,0xd8
  b06685:	c5 fc c6 c1 88       	vshufps ymm0,ymm0,ymm1,0x88
  b0668a:	62 e1 7c 28 c6 c0 d8 	vshufps ymm16,ymm0,ymm0,0xd8
  b06691:	c5 e4 c6 c5 88       	vshufps ymm0,ymm3,ymm5,0x88
  b06696:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  b0669b:	c5 fc 29 44 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm0
  b066a1:	c5 7c 10 62 40       	vmovups ymm12,YMMWORD PTR [rdx+0x40]
  b066a6:	c5 fc 10 4a 60       	vmovups ymm1,YMMWORD PTR [rdx+0x60]
  b066ab:	c5 fc 10 b2 80 00 00 	vmovups ymm6,YMMWORD PTR [rdx+0x80]
  b066b2:	00 
  b066b3:	c5 fc 10 aa a0 00 00 	vmovups ymm5,YMMWORD PTR [rdx+0xa0]
  b066ba:	00 
  b066bb:	c5 7c 10 ba c0 00 00 	vmovups ymm15,YMMWORD PTR [rdx+0xc0]
  b066c2:	00 
  b066c3:	c5 7c 10 82 80 01 00 	vmovups ymm8,YMMWORD PTR [rdx+0x180]
  b066ca:	00 
  b066cb:	c5 7c 10 92 a0 01 00 	vmovups ymm10,YMMWORD PTR [rdx+0x1a0]
  b066d2:	00 
  b066d3:	62 d1 04 20 59 d8    	vmulps ymm3,ymm31,ymm8
  b066d9:	62 d2 0d 20 bc da    	vfnmadd231ps ymm3,ymm30,ymm10
  b066df:	62 51 0c 20 59 c0    	vmulps ymm8,ymm30,ymm8
  b066e5:	62 61 7c 28 10 72 07 	vmovups ymm30,YMMWORD PTR [rdx+0xe0]
  b066ec:	62 52 05 20 b8 c2    	vfmadd231ps ymm8,ymm31,ymm10
  b066f2:	62 61 7c 28 10 7a 08 	vmovups ymm31,YMMWORD PTR [rdx+0x100]
  b066f9:	c4 41 14 59 df       	vmulps ymm11,ymm13,ymm15
  b066fe:	62 12 0d 28 bc de    	vfnmadd231ps ymm11,ymm14,ymm30
  b06704:	c4 41 0c 59 f7       	vmulps ymm14,ymm14,ymm15
  b06709:	c5 7c 10 ba 40 02 00 	vmovups ymm15,YMMWORD PTR [rdx+0x240]
  b06710:	00 
  b06711:	62 12 15 28 b8 f6    	vfmadd231ps ymm14,ymm13,ymm30
  b06717:	62 61 7c 28 10 72 13 	vmovups ymm30,YMMWORD PTR [rdx+0x260]
  b0671e:	62 51 1c 20 59 ef    	vmulps ymm13,ymm28,ymm15
  b06724:	62 12 15 20 bc ee    	vfnmadd231ps ymm13,ymm29,ymm30
  b0672a:	62 51 14 20 59 ff    	vmulps ymm15,ymm29,ymm15
  b06730:	62 61 7c 28 10 6a 09 	vmovups ymm29,YMMWORD PTR [rdx+0x120]
  b06737:	62 12 1d 20 b8 fe    	vfmadd231ps ymm15,ymm28,ymm30
  b0673d:	62 61 7c 28 10 72 0a 	vmovups ymm30,YMMWORD PTR [rdx+0x140]
  b06744:	62 01 44 20 59 e7    	vmulps ymm28,ymm23,ymm31
  b0674a:	62 02 2d 20 bc e5    	vfnmadd231ps ymm28,ymm26,ymm29
  b06750:	62 01 2c 20 59 d7    	vmulps ymm26,ymm26,ymm31
  b06756:	62 61 7c 28 10 7a 14 	vmovups ymm31,YMMWORD PTR [rdx+0x280]
  b0675d:	62 02 45 20 b8 d5    	vfmadd231ps ymm26,ymm23,ymm29
  b06763:	62 61 7c 28 10 6a 15 	vmovups ymm29,YMMWORD PTR [rdx+0x2a0]
  b0676a:	62 91 4c 20 59 c7    	vmulps ymm0,ymm22,ymm31
  b06770:	62 92 25 20 bc c5    	vfnmadd231ps ymm0,ymm27,ymm29
  b06776:	62 81 24 20 59 ff    	vmulps ymm23,ymm27,ymm31
  b0677c:	62 61 7c 28 10 5a 0e 	vmovups ymm27,YMMWORD PTR [rdx+0x1c0]
  b06783:	62 82 4d 20 b8 fd    	vfmadd231ps ymm23,ymm22,ymm29
  b06789:	62 61 7c 28 10 6a 0f 	vmovups ymm29,YMMWORD PTR [rdx+0x1e0]
  b06790:	62 81 34 20 59 f3    	vmulps ymm22,ymm25,ymm27
  b06796:	62 82 3d 20 bc f5    	vfnmadd231ps ymm22,ymm24,ymm29
  b0679c:	62 01 3c 20 59 c3    	vmulps ymm24,ymm24,ymm27
  b067a2:	62 61 7c 28 10 5a 0b 	vmovups ymm27,YMMWORD PTR [rdx+0x160]
  b067a9:	62 02 35 20 b8 c5    	vfmadd231ps ymm24,ymm25,ymm29
  b067af:	62 61 7c 28 10 4a 10 	vmovups ymm25,YMMWORD PTR [rdx+0x200]
  b067b6:	62 41 44 28 59 ec    	vmulps ymm29,ymm7,ymm12
  b067bc:	62 62 35 28 bc e9    	vfnmadd231ps ymm29,ymm9,ymm1
  b067c2:	c4 41 34 59 cc       	vmulps ymm9,ymm9,ymm12
  b067c7:	c5 7c 10 a2 20 02 00 	vmovups ymm12,YMMWORD PTR [rdx+0x220]
  b067ce:	00 
  b067cf:	c4 62 45 b8 c9       	vfmadd231ps ymm9,ymm7,ymm1
  b067d4:	c5 fc 10 ba c0 02 00 	vmovups ymm7,YMMWORD PTR [rdx+0x2c0]
  b067db:	00 
  b067dc:	62 01 5c 20 59 f9    	vmulps ymm31,ymm20,ymm25
  b067e2:	62 42 55 20 bc fc    	vfnmadd231ps ymm31,ymm21,ymm12
  b067e8:	62 81 54 20 59 e9    	vmulps ymm21,ymm21,ymm25
  b067ee:	62 61 7c 28 10 4a 17 	vmovups ymm25,YMMWORD PTR [rdx+0x2e0]
  b067f5:	62 c2 5d 20 b8 ec    	vfmadd231ps ymm21,ymm20,ymm12
  b067fb:	62 f1 7c 20 58 cb    	vaddps ymm1,ymm16,ymm3
  b06801:	c5 fc 29 4c 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm1
  b06807:	62 e1 6c 28 59 e6    	vmulps ymm20,ymm2,ymm6
  b0680d:	62 e2 5d 28 bc e5    	vfnmadd231ps ymm20,ymm4,ymm5
  b06813:	c5 dc 59 e6          	vmulps ymm4,ymm4,ymm6
  b06817:	c4 41 24 58 e5       	vaddps ymm12,ymm11,ymm13
  b0681c:	c4 e2 6d b8 e5       	vfmadd231ps ymm4,ymm2,ymm5
  b06821:	c5 9c 58 c9          	vaddps ymm1,ymm12,ymm1
  b06825:	c5 fc 29 8c 24 80 00 	vmovaps YMMWORD PTR [rsp+0x80],ymm1
  b0682c:	00 00 
  b0682e:	62 f1 6c 20 59 ef    	vmulps ymm5,ymm18,ymm7
  b06834:	62 92 65 20 bc e9    	vfnmadd231ps ymm5,ymm19,ymm25
  b0683a:	62 f1 64 20 59 ff    	vmulps ymm7,ymm19,ymm7
  b06840:	62 f1 1c 20 58 f0    	vaddps ymm6,ymm28,ymm0
  b06846:	62 92 6d 20 b8 f9    	vfmadd231ps ymm7,ymm18,ymm25
  b0684c:	62 01 4c 20 58 cd    	vaddps ymm25,ymm22,ymm29
  b06852:	62 91 74 20 59 d6    	vmulps ymm2,ymm17,ymm30
  b06858:	c5 fc 28 4c 24 60    	vmovaps ymm1,YMMWORD PTR [rsp+0x60]
  b0685e:	62 92 75 28 bc d3    	vfnmadd231ps ymm2,ymm1,ymm27
  b06864:	62 81 74 28 59 d6    	vmulps ymm18,ymm1,ymm30
  b0686a:	62 91 4c 28 58 c9    	vaddps ymm1,ymm6,ymm25
  b06870:	c5 fc 29 8c 24 a0 00 	vmovaps YMMWORD PTR [rsp+0xa0],ymm1
  b06877:	00 00 
  b06879:	62 82 75 20 b8 d3    	vfmadd231ps ymm18,ymm17,ymm27
  b0687f:	62 a1 04 20 58 cc    	vaddps ymm17,ymm31,ymm20
  b06885:	62 e1 54 28 58 da    	vaddps ymm19,ymm5,ymm2
  b0688b:	62 61 1c 20 5c e0    	vsubps ymm28,ymm28,ymm0
  b06891:	62 51 3c 20 58 d1    	vaddps ymm10,ymm24,ymm9
  b06897:	62 41 3c 20 5c d9    	vsubps ymm27,ymm24,ymm9
  b0689d:	62 21 74 20 58 f3    	vaddps ymm30,ymm17,ymm19
  b068a3:	62 21 04 20 5c fc    	vsubps ymm31,ymm31,ymm20
  b068a9:	62 31 44 28 58 ca    	vaddps ymm9,ymm7,ymm18
  b068af:	62 a1 44 28 5c e2    	vsubps ymm20,ymm7,ymm18
  b068b5:	c5 fc 28 44 24 40    	vmovaps ymm0,YMMWORD PTR [rsp+0x40]
  b068bb:	62 e1 3c 28 58 d0    	vaddps ymm18,ymm8,ymm0
  b068c1:	62 e1 7c 20 5c c3    	vsubps ymm16,ymm16,ymm3
  b068c7:	c4 c1 0c 58 df       	vaddps ymm3,ymm14,ymm15
  b068cc:	c4 41 0c 5c f7       	vsubps ymm14,ymm14,ymm15
  b068d1:	62 31 2c 20 58 ff    	vaddps ymm15,ymm26,ymm23
  b068d7:	62 21 2c 20 5c d7    	vsubps ymm26,ymm26,ymm23
  b068dd:	62 e1 54 20 58 fc    	vaddps ymm23,ymm21,ymm4
  b068e3:	62 a1 14 20 5c f6    	vsubps ymm22,ymm29,ymm22
  b068e9:	62 b1 2c 20 58 fe    	vaddps ymm7,ymm26,ymm22
  b068ef:	62 f1 54 20 5c e4    	vsubps ymm4,ymm21,ymm4
  b068f5:	c5 ec 5c ed          	vsubps ymm5,ymm2,ymm5
  b068f9:	62 e1 5c 28 58 ed    	vaddps ymm21,ymm4,ymm5
  b068ff:	62 b1 44 28 5c d5    	vsubps ymm2,ymm7,ymm21
  b06905:	c5 fc 29 94 24 e0 00 	vmovaps YMMWORD PTR [rsp+0xe0],ymm2
  b0690c:	00 00 
  b0690e:	62 b1 44 28 58 d5    	vaddps ymm2,ymm7,ymm21
  b06914:	c5 fc 29 94 24 c0 00 	vmovaps YMMWORD PTR [rsp+0xc0],ymm2
  b0691b:	00 00 
  b0691d:	62 81 1c 20 58 eb    	vaddps ymm21,ymm28,ymm27
  b06923:	c4 c1 7c 5c c0       	vsubps ymm0,ymm0,ymm8
  b06928:	62 31 04 20 58 c4    	vaddps ymm8,ymm31,ymm20
  b0692e:	c4 41 14 5c eb       	vsubps ymm13,ymm13,ymm11
  b06933:	62 41 54 20 58 e8    	vaddps ymm29,ymm21,ymm8
  b06939:	62 d1 54 20 5c d0    	vsubps ymm2,ymm21,ymm8
  b0693f:	c5 fc 29 54 24 40    	vmovaps YMMWORD PTR [rsp+0x40],ymm2
  b06945:	62 11 74 28 58 c6    	vaddps ymm8,ymm1,ymm30
  b0694b:	62 91 4c 28 5c f1    	vsubps ymm6,ymm6,ymm25
  b06951:	c5 fc 28 94 24 80 00 	vmovaps ymm2,YMMWORD PTR [rsp+0x80]
  b06958:	00 00 
  b0695a:	62 41 6c 28 58 c8    	vaddps ymm25,ymm2,ymm8
  b06960:	62 a1 74 20 5c cb    	vsubps ymm17,ymm17,ymm19
  b06966:	62 a1 64 28 58 da    	vaddps ymm19,ymm3,ymm18
  b0696c:	c5 fc 28 4c 24 20    	vmovaps ymm1,YMMWORD PTR [rsp+0x20]
  b06972:	c4 41 74 5c dc       	vsubps ymm11,ymm1,ymm12
  b06977:	c4 c1 04 58 fa       	vaddps ymm7,ymm15,ymm10
  b0697c:	c4 c1 04 5c ca       	vsubps ymm1,ymm15,ymm10
  b06981:	62 51 44 20 58 d1    	vaddps ymm10,ymm23,ymm9
  b06987:	62 51 44 20 5c e1    	vsubps ymm12,ymm23,ymm9
  b0698d:	c4 41 74 5c cc       	vsubps ymm9,ymm1,ymm12
  b06992:	c5 7c 29 4c 24 20    	vmovaps YMMWORD PTR [rsp+0x20],ymm9
  b06998:	62 c1 74 28 58 ec    	vaddps ymm21,ymm1,ymm12
  b0699e:	c5 2c 58 e7          	vaddps ymm12,ymm10,ymm7
  b069a2:	62 e1 6c 20 5c d3    	vsubps ymm18,ymm18,ymm3
  b069a8:	62 b1 4c 28 58 d9    	vaddps ymm3,ymm6,ymm17
  b069ae:	62 21 4c 28 5c c1    	vsubps ymm24,ymm6,ymm17
  b069b4:	62 51 7c 20 58 ce    	vaddps ymm9,ymm16,ymm14
  b069ba:	62 d1 7c 20 5c ce    	vsubps ymm1,ymm16,ymm14
  b069c0:	62 c1 64 20 58 fc    	vaddps ymm23,ymm19,ymm12
  b069c6:	62 81 1c 20 5c c3    	vsubps ymm16,ymm28,ymm27
  b069cc:	c4 62 7d 18 3d 4b ea 	vbroadcastss ymm15,DWORD PTR [rip+0xffffffffff56ea4b]        # 75420 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2900>
  b069d3:	56 ff 
  b069d5:	62 21 04 20 5c dc    	vsubps ymm27,ymm31,ymm20
  b069db:	62 e1 14 28 58 c8    	vaddps ymm17,ymm13,ymm0
  b069e1:	c4 c1 7c 5c c5       	vsubps ymm0,ymm0,ymm13
  b069e6:	c5 7c 29 fe          	vmovaps ymm6,ymm15
  b069ea:	62 31 2c 20 5c ee    	vsubps ymm13,ymm26,ymm22
  b069f0:	62 c1 7c 28 28 e7    	vmovaps ymm20,ymm15
  b069f6:	c5 dc 5c ed          	vsubps ymm5,ymm4,ymm5
  b069fa:	62 41 7c 28 28 d7    	vmovaps ymm26,ymm15
  b06a00:	c4 62 05 ac c2       	vfnmadd213ps ymm8,ymm15,ymm2
  b06a05:	62 01 7c 20 58 e3    	vaddps ymm28,ymm16,ymm27
  b06a0b:	62 32 05 28 ac e3    	vfnmadd213ps ymm12,ymm15,ymm19
  b06a11:	62 11 74 28 58 f4    	vaddps ymm14,ymm1,ymm28
  b06a17:	62 62 05 28 ac e1    	vfnmadd213ps ymm28,ymm15,ymm1
  b06a1d:	62 c1 7c 28 28 df    	vmovaps ymm19,ymm15
  b06a23:	c5 94 58 cd          	vaddps ymm1,ymm13,ymm5
  b06a27:	c4 62 75 ac f8       	vfnmadd213ps ymm15,ymm1,ymm0
  b06a2c:	c5 fc 58 c9          	vaddps ymm1,ymm0,ymm1
  b06a30:	c4 c1 44 5c c2       	vsubps ymm0,ymm7,ymm10
  b06a35:	c4 e2 7d 18 3d 56 e8 	vbroadcastss ymm7,DWORD PTR [rip+0xffffffffff56e856]        # 75294 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2774>
  b06a3c:	56 ff 
  b06a3e:	62 d2 15 20 ac f1    	vfnmadd213ps ymm6,ymm29,ymm9
  b06a44:	c5 c4 59 94 24 e0 00 	vmulps ymm2,ymm7,YMMWORD PTR [rsp+0xe0]
  b06a4b:	00 00 
  b06a4d:	c5 fc 28 a4 24 a0 00 	vmovaps ymm4,YMMWORD PTR [rsp+0xa0]
  b06a54:	00 00 
  b06a56:	62 01 5c 28 5c f6    	vsubps ymm30,ymm4,ymm30
  b06a5c:	62 61 4c 28 58 fa    	vaddps ymm31,ymm6,ymm2
  b06a62:	c5 7c 28 94 24 c0 00 	vmovaps ymm10,YMMWORD PTR [rsp+0xc0]
  b06a69:	00 00 
  b06a6b:	62 a2 2d 28 ac e1    	vfnmadd213ps ymm20,ymm10,ymm17
  b06a71:	c5 c4 59 64 24 40    	vmulps ymm4,ymm7,YMMWORD PTR [rsp+0x40]
  b06a77:	62 e1 4c 28 5c f2    	vsubps ymm22,ymm6,ymm2
  b06a7d:	62 f1 5c 20 5c f4    	vsubps ymm6,ymm20,ymm4
  b06a83:	62 f1 5c 20 58 d4    	vaddps ymm2,ymm20,ymm4
  b06a89:	62 42 65 28 ac d3    	vfnmadd213ps ymm26,ymm3,ymm11
  b06a8f:	62 e1 24 28 58 e3    	vaddps ymm20,ymm11,ymm3
  b06a95:	62 a2 55 20 ac da    	vfnmadd213ps ymm19,ymm21,ymm18
  b06a9b:	62 b1 6c 20 58 e5    	vaddps ymm4,ymm18,ymm21
  b06aa1:	c5 94 5c dd          	vsubps ymm3,ymm13,ymm5
  b06aa5:	62 91 7c 20 5c eb    	vsubps ymm5,ymm16,ymm27
  b06aab:	62 e1 44 28 59 44 24 	vmulps ymm16,ymm7,YMMWORD PTR [rsp+0x20]
  b06ab2:	01 
  b06ab3:	62 61 3c 20 59 c7    	vmulps ymm24,ymm24,ymm7
  b06ab9:	c5 fc 59 c7          	vmulps ymm0,ymm0,ymm7
  b06abd:	62 71 0c 20 59 ef    	vmulps ymm13,ymm30,ymm7
  b06ac3:	62 61 64 28 59 df    	vmulps ymm27,ymm3,ymm7
  b06ac9:	c5 d4 59 ef          	vmulps ymm5,ymm5,ymm7
  b06acd:	62 61 3c 28 58 f0    	vaddps ymm30,ymm8,ymm0
  b06ad3:	62 e1 3c 28 5c e8    	vsubps ymm21,ymm8,ymm0
  b06ad9:	c4 41 1c 5c dd       	vsubps ymm11,ymm12,ymm13
  b06ade:	c4 41 1c 58 c5       	vaddps ymm8,ymm12,ymm13
  b06ae3:	62 b1 2c 20 5c c0    	vsubps ymm0,ymm26,ymm16
  b06ae9:	62 81 34 28 58 d5    	vaddps ymm18,ymm9,ymm29
  b06aef:	62 11 64 20 58 e8    	vaddps ymm13,ymm19,ymm24
  b06af5:	62 d1 74 20 58 da    	vaddps ymm3,ymm17,ymm10
  b06afb:	62 01 1c 20 58 eb    	vaddps ymm29,ymm28,ymm27
  b06b01:	62 a1 2c 20 58 c8    	vaddps ymm17,ymm26,ymm16
  b06b07:	c5 04 5c e5          	vsubps ymm12,ymm15,ymm5
  b06b0b:	62 91 64 20 5c f8    	vsubps ymm7,ymm19,ymm24
  b06b11:	62 81 1c 20 5c c3    	vsubps ymm16,ymm28,ymm27
  b06b17:	c5 04 58 d5          	vaddps ymm10,ymm15,ymm5
  b06b1b:	c5 7c 28 0d 3d ed 56 	vmovaps ymm9,YMMWORD PTR [rip+0xffffffffff56ed3d]        # 75860 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2d40>
  b06b22:	ff 
  b06b23:	62 31 7c 28 28 ff    	vmovaps ymm15,ymm23
  b06b29:	62 12 35 28 7f f9    	vpermt2ps ymm15,ymm9,ymm25
  b06b2f:	62 e1 7c 28 28 1d 67 	vmovaps ymm19,YMMWORD PTR [rip+0xffffffffff570667]        # 771a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4680>
  b06b36:	06 57 ff 
  b06b39:	62 82 65 20 7f f9    	vpermt2ps ymm23,ymm19,ymm25
  b06b3f:	c5 fc 28 ee          	vmovaps ymm5,ymm6
  b06b43:	62 92 35 28 7f ef    	vpermt2ps ymm5,ymm9,ymm31
  b06b49:	62 92 65 20 7f f7    	vpermt2ps ymm6,ymm19,ymm31
  b06b4f:	62 41 7c 28 28 c5    	vmovaps ymm24,ymm13
  b06b55:	62 62 35 28 7f c0    	vpermt2ps ymm24,ymm9,ymm0
  b06b5b:	62 72 65 20 7f e8    	vpermt2ps ymm13,ymm19,ymm0
  b06b61:	c5 fc 28 c1          	vmovaps ymm0,ymm1
  b06b65:	62 d2 35 28 7f c6    	vpermt2ps ymm0,ymm9,ymm14
  b06b6b:	62 d2 65 20 7f ce    	vpermt2ps ymm1,ymm19,ymm14
  b06b71:	c4 41 7c 28 f3       	vmovaps ymm14,ymm11
  b06b76:	62 12 35 28 7f f6    	vpermt2ps ymm14,ymm9,ymm30
  b06b7c:	62 12 65 20 7f de    	vpermt2ps ymm11,ymm19,ymm30
  b06b82:	62 61 7c 28 28 ca    	vmovaps ymm25,ymm2
  b06b88:	62 22 35 28 7f ce    	vpermt2ps ymm25,ymm9,ymm22
  b06b8e:	62 b2 65 20 7f d6    	vpermt2ps ymm2,ymm19,ymm22
  b06b94:	62 e1 7c 28 28 f4    	vmovaps ymm22,ymm4
  b06b9a:	62 a2 35 28 7f f4    	vpermt2ps ymm22,ymm9,ymm20
  b06ba0:	62 b2 65 20 7f e4    	vpermt2ps ymm4,ymm19,ymm20
  b06ba6:	62 c1 7c 28 28 e4    	vmovaps ymm20,ymm12
  b06bac:	62 82 35 28 7f e5    	vpermt2ps ymm20,ymm9,ymm29
  b06bb2:	62 12 65 20 7f e5    	vpermt2ps ymm12,ymm19,ymm29
  b06bb8:	62 41 7c 28 28 d0    	vmovaps ymm26,ymm8
  b06bbe:	62 22 35 28 7f d5    	vpermt2ps ymm26,ymm9,ymm21
  b06bc4:	62 32 65 20 7f c5    	vpermt2ps ymm8,ymm19,ymm21
  b06bca:	62 e1 7c 28 28 eb    	vmovaps ymm21,ymm3
  b06bd0:	62 a2 35 28 7f ea    	vpermt2ps ymm21,ymm9,ymm18
  b06bd6:	62 b2 65 20 7f da    	vpermt2ps ymm3,ymm19,ymm18
  b06bdc:	62 e1 7c 28 28 d7    	vmovaps ymm18,ymm7
  b06be2:	62 a2 35 28 7f d1    	vpermt2ps ymm18,ymm9,ymm17
  b06be8:	62 b2 65 20 7f f9    	vpermt2ps ymm7,ymm19,ymm17
  b06bee:	62 32 2d 28 77 c8    	vpermi2ps ymm9,ymm10,ymm16
  b06bf4:	62 32 65 20 7f d0    	vpermt2ps ymm10,ymm19,ymm16
  b06bfa:	62 e1 7c 28 11 3e    	vmovups YMMWORD PTR [rsi],ymm23
  b06c00:	c5 7c 11 7e 20       	vmovups YMMWORD PTR [rsi+0x20],ymm15
  b06c05:	c5 fc 11 76 40       	vmovups YMMWORD PTR [rsi+0x40],ymm6
  b06c0a:	c5 fc 11 6e 60       	vmovups YMMWORD PTR [rsi+0x60],ymm5
  b06c0f:	c5 7c 11 ae 80 00 00 	vmovups YMMWORD PTR [rsi+0x80],ymm13
  b06c16:	00 
  b06c17:	62 61 7c 28 11 46 05 	vmovups YMMWORD PTR [rsi+0xa0],ymm24
  b06c1e:	c5 fc 11 8e c0 00 00 	vmovups YMMWORD PTR [rsi+0xc0],ymm1
  b06c25:	00 
  b06c26:	c5 fc 11 86 e0 00 00 	vmovups YMMWORD PTR [rsi+0xe0],ymm0
  b06c2d:	00 
  b06c2e:	c5 7c 11 9e 00 01 00 	vmovups YMMWORD PTR [rsi+0x100],ymm11
  b06c35:	00 
  b06c36:	c5 7c 11 b6 20 01 00 	vmovups YMMWORD PTR [rsi+0x120],ymm14
  b06c3d:	00 
  b06c3e:	c5 fc 11 96 40 01 00 	vmovups YMMWORD PTR [rsi+0x140],ymm2
  b06c45:	00 
  b06c46:	62 61 7c 28 11 4e 0b 	vmovups YMMWORD PTR [rsi+0x160],ymm25
  b06c4d:	c5 fc 11 a6 80 01 00 	vmovups YMMWORD PTR [rsi+0x180],ymm4
  b06c54:	00 
  b06c55:	62 e1 7c 28 11 76 0d 	vmovups YMMWORD PTR [rsi+0x1a0],ymm22
  b06c5c:	c5 7c 11 a6 c0 01 00 	vmovups YMMWORD PTR [rsi+0x1c0],ymm12
  b06c63:	00 
  b06c64:	62 e1 7c 28 11 66 0f 	vmovups YMMWORD PTR [rsi+0x1e0],ymm20
  b06c6b:	c5 7c 11 86 00 02 00 	vmovups YMMWORD PTR [rsi+0x200],ymm8
  b06c72:	00 
  b06c73:	62 61 7c 28 11 56 11 	vmovups YMMWORD PTR [rsi+0x220],ymm26
  b06c7a:	c5 fc 11 9e 40 02 00 	vmovups YMMWORD PTR [rsi+0x240],ymm3
  b06c81:	00 
  b06c82:	62 e1 7c 28 11 6e 13 	vmovups YMMWORD PTR [rsi+0x260],ymm21
  b06c89:	c5 fc 11 be 80 02 00 	vmovups YMMWORD PTR [rsi+0x280],ymm7
  b06c90:	00 
  b06c91:	62 e1 7c 28 11 56 15 	vmovups YMMWORD PTR [rsi+0x2a0],ymm18
  b06c98:	c5 7c 11 96 c0 02 00 	vmovups YMMWORD PTR [rsi+0x2c0],ymm10
  b06c9f:	00 
  b06ca0:	c5 7c 11 8e e0 02 00 	vmovups YMMWORD PTR [rsi+0x2e0],ymm9
  b06ca7:	00 
  b06ca8:	48 89 ec             	mov    rsp,rbp
  b06cab:	5d                   	pop    rbp
  b06cac:	c5 f8 77             	vzeroupper
  b06caf:	c3                   	ret
  b06cb0:	cc                   	int3
  b06cb1:	cc                   	int3
  b06cb2:	cc                   	int3
  b06cb3:	cc                   	int3
  b06cb4:	cc                   	int3
  b06cb5:	cc                   	int3
  b06cb6:	cc                   	int3
  b06cb7:	cc                   	int3
  b06cb8:	cc                   	int3
  b06cb9:	cc                   	int3
  b06cba:	cc                   	int3
  b06cbb:	cc                   	int3
  b06cbc:	cc                   	int3
  b06cbd:	cc                   	int3
  b06cbe:	cc                   	int3
  b06cbf:	cc                   	int3
