
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b13dc0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  b13dc0:	48 c1 e2 07          	shl    rdx,0x7
  b13dc4:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  b13dc8:	c4 e2 7d 18 05 03 15 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff561503]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  b13dcf:	56 ff 
  b13dd1:	c4 e2 7d 18 0d 86 16 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff561686]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  b13dd8:	56 ff 
  b13dda:	31 d2                	xor    edx,edx
  b13ddc:	c4 e2 7d 18 15 b7 15 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff5615b7]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  b13de3:	56 ff 
  b13de5:	c5 fc 28 1d f3 33 56 	vmovaps ymm3,YMMWORD PTR [rip+0xffffffffff5633f3]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  b13dec:	ff 
  b13ded:	0f 1f 00             	nop    DWORD PTR [rax]
  b13df0:	c5 fc 10 a4 17 80 00 	vmovups ymm4,YMMWORD PTR [rdi+rdx*1+0x80]
  b13df7:	00 00 
  b13df9:	c5 fc 10 ac 17 a0 00 	vmovups ymm5,YMMWORD PTR [rdi+rdx*1+0xa0]
  b13e00:	00 00 
  b13e02:	c5 dc c6 f5 88       	vshufps ymm6,ymm4,ymm5,0x88
  b13e07:	c4 e3 fd 01 f6 d8    	vpermpd ymm6,ymm6,0xd8
  b13e0d:	c5 fc 10 bc 17 00 01 	vmovups ymm7,YMMWORD PTR [rdi+rdx*1+0x100]
  b13e14:	00 00 
  b13e16:	c5 7c 10 84 17 20 01 	vmovups ymm8,YMMWORD PTR [rdi+rdx*1+0x120]
  b13e1d:	00 00 
  b13e1f:	c4 41 44 c6 c8 88    	vshufps ymm9,ymm7,ymm8,0x88
  b13e25:	c4 43 fd 01 c9 d8    	vpermpd ymm9,ymm9,0xd8
  b13e2b:	c4 41 4c 5c d1       	vsubps ymm10,ymm6,ymm9
  b13e30:	c5 2c 59 d0          	vmulps ymm10,ymm10,ymm0
  b13e34:	c5 dc c6 e5 dd       	vshufps ymm4,ymm4,ymm5,0xdd
  b13e39:	c4 e3 fd 01 e4 d8    	vpermpd ymm4,ymm4,0xd8
  b13e3f:	c4 c1 44 c6 e8 dd    	vshufps ymm5,ymm7,ymm8,0xdd
  b13e45:	c4 e3 fd 01 ed d8    	vpermpd ymm5,ymm5,0xd8
  b13e4b:	c5 dc 58 fd          	vaddps ymm7,ymm4,ymm5
  b13e4f:	c5 7c 10 04 17       	vmovups ymm8,YMMWORD PTR [rdi+rdx*1]
  b13e54:	c5 7c 10 5c 17 20    	vmovups ymm11,YMMWORD PTR [rdi+rdx*1+0x20]
  b13e5a:	c5 7c 10 64 17 40    	vmovups ymm12,YMMWORD PTR [rdi+rdx*1+0x40]
  b13e60:	c5 7c 10 6c 17 60    	vmovups ymm13,YMMWORD PTR [rdi+rdx*1+0x60]
  b13e66:	c4 41 3c c6 f3 dd    	vshufps ymm14,ymm8,ymm11,0xdd
  b13e6c:	c4 43 fd 01 f6 d8    	vpermpd ymm14,ymm14,0xd8
  b13e72:	c5 7c 28 f9          	vmovaps ymm15,ymm1
  b13e76:	c4 42 45 ac fe       	vfnmadd213ps ymm15,ymm7,ymm14
  b13e7b:	62 c1 2c 28 58 cf    	vaddps ymm17,ymm10,ymm15
  b13e81:	62 e1 7c 28 10 44 17 	vmovups ymm16,YMMWORD PTR [rdi+rdx*1+0x140]
  b13e88:	0a 
  b13e89:	62 e1 7c 28 10 54 17 	vmovups ymm18,YMMWORD PTR [rdi+rdx*1+0x160]
  b13e90:	0b 
  b13e91:	62 a1 7c 20 c6 da 88 	vshufps ymm19,ymm16,ymm18,0x88
  b13e98:	62 a3 fd 28 01 db d8 	vpermpd ymm19,ymm19,0xd8
  b13e9f:	62 c1 1c 28 c6 e5 88 	vshufps ymm20,ymm12,ymm13,0x88
  b13ea6:	62 a3 fd 28 01 e4 d8 	vpermpd ymm20,ymm20,0xd8
  b13ead:	62 a1 64 20 5c ec    	vsubps ymm21,ymm19,ymm20
  b13eb3:	62 e1 54 20 59 e8    	vmulps ymm21,ymm21,ymm0
  b13eb9:	62 a1 7c 20 c6 c2 dd 	vshufps ymm16,ymm16,ymm18,0xdd
  b13ec0:	62 a3 fd 28 01 c0 d8 	vpermpd ymm16,ymm16,0xd8
  b13ec7:	c4 41 1c c6 e5 dd    	vshufps ymm12,ymm12,ymm13,0xdd
  b13ecd:	c4 43 fd 01 e4 d8    	vpermpd ymm12,ymm12,0xd8
  b13ed3:	62 51 7c 20 58 ec    	vaddps ymm13,ymm16,ymm12
  b13ed9:	62 e1 7c 28 10 54 17 	vmovups ymm18,YMMWORD PTR [rdi+rdx*1+0xc0]
  b13ee0:	06 
  b13ee1:	62 e1 7c 28 10 74 17 	vmovups ymm22,YMMWORD PTR [rdi+rdx*1+0xe0]
  b13ee8:	07 
  b13ee9:	62 a1 6c 20 c6 fe dd 	vshufps ymm23,ymm18,ymm22,0xdd
  b13ef0:	62 a3 fd 28 01 ff d8 	vpermpd ymm23,ymm23,0xd8
  b13ef7:	62 61 7c 28 28 c1    	vmovaps ymm24,ymm1
  b13efd:	62 22 15 28 ac c7    	vfnmadd213ps ymm24,ymm13,ymm23
  b13f03:	c5 b4 58 f6          	vaddps ymm6,ymm9,ymm6
  b13f07:	62 01 54 20 58 c8    	vaddps ymm25,ymm21,ymm24
  b13f0d:	c4 41 3c c6 c3 88    	vshufps ymm8,ymm8,ymm11,0x88
  b13f13:	62 11 74 20 5c c9    	vsubps ymm9,ymm17,ymm25
  b13f19:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  b13f1f:	c5 dc 5c e5          	vsubps ymm4,ymm4,ymm5
  b13f23:	c5 fc 28 e9          	vmovaps ymm5,ymm1
  b13f27:	c4 c2 4d ac e8       	vfnmadd213ps ymm5,ymm6,ymm8
  b13f2c:	c5 dc 59 e0          	vmulps ymm4,ymm4,ymm0
  b13f30:	62 31 64 20 58 dc    	vaddps ymm11,ymm19,ymm20
  b13f36:	62 e1 54 28 5c dc    	vsubps ymm19,ymm5,ymm4
  b13f3c:	62 a1 6c 20 c6 d6 88 	vshufps ymm18,ymm18,ymm22,0x88
  b13f43:	62 a3 fd 28 01 d2 d8 	vpermpd ymm18,ymm18,0xd8
  b13f4a:	62 e1 7c 28 28 e1    	vmovaps ymm20,ymm1
  b13f50:	62 a2 25 28 ac e2    	vfnmadd213ps ymm20,ymm11,ymm18
  b13f56:	62 51 7c 20 5c e4    	vsubps ymm12,ymm16,ymm12
  b13f5c:	c5 1c 59 e0          	vmulps ymm12,ymm12,ymm0
  b13f60:	62 c1 5c 20 5c f4    	vsubps ymm22,ymm20,ymm12
  b13f66:	c4 41 04 5c d2       	vsubps ymm10,ymm15,ymm10
  b13f6b:	62 31 64 20 5c fe    	vsubps ymm15,ymm19,ymm22
  b13f71:	62 a1 3c 20 5c ed    	vsubps ymm21,ymm24,ymm21
  b13f77:	62 21 2c 28 58 c5    	vaddps ymm24,ymm10,ymm21
  b13f7d:	c5 d4 58 e4          	vaddps ymm4,ymm5,ymm4
  b13f81:	62 d1 5c 20 58 ec    	vaddps ymm5,ymm20,ymm12
  b13f87:	c5 5c 58 e5          	vaddps ymm12,ymm4,ymm5
  b13f8b:	c5 8c 58 ff          	vaddps ymm7,ymm14,ymm7
  b13f8f:	62 51 44 20 58 ed    	vaddps ymm13,ymm23,ymm13
  b13f95:	62 c1 44 28 5c c5    	vsubps ymm16,ymm7,ymm13
  b13f9b:	c5 bc 58 f6          	vaddps ymm6,ymm8,ymm6
  b13f9f:	62 51 6c 20 58 c3    	vaddps ymm8,ymm18,ymm11
  b13fa5:	c4 41 4c 5c d8       	vsubps ymm11,ymm6,ymm8
  b13faa:	62 81 74 20 58 d1    	vaddps ymm18,ymm17,ymm25
  b13fb0:	62 31 64 20 58 f6    	vaddps ymm14,ymm19,ymm22
  b13fb6:	62 a1 2c 28 5c cd    	vsubps ymm17,ymm10,ymm21
  b13fbc:	c5 dc 5c e5          	vsubps ymm4,ymm4,ymm5
  b13fc0:	62 c1 44 28 58 dd    	vaddps ymm19,ymm7,ymm13
  b13fc6:	c5 bc 58 ee          	vaddps ymm5,ymm8,ymm6
  b13fca:	c4 c3 55 18 f4 01    	vinsertf128 ymm6,ymm5,xmm12,0x1
  b13fd0:	c4 43 55 06 c4 31    	vperm2f128 ymm8,ymm5,ymm12,0x31
  b13fd6:	c4 43 5d 18 d7 01    	vinsertf128 ymm10,ymm4,xmm15,0x1
  b13fdc:	c4 43 5d 06 ef 31    	vperm2f128 ymm13,ymm4,ymm15,0x31
  b13fe2:	c4 41 78 28 e6       	vmovaps xmm12,xmm14
  b13fe7:	c4 c1 4d 14 e4       	vunpcklpd ymm4,ymm6,ymm12
  b13fec:	c4 41 78 28 fb       	vmovaps xmm15,xmm11
  b13ff1:	c4 c1 2d 14 ef       	vunpcklpd ymm5,ymm10,ymm15
  b13ff6:	c5 dc c6 fd dd       	vshufps ymm7,ymm4,ymm5,0xdd
  b13ffb:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  b14000:	c4 c1 4d 15 f4       	vunpckhpd ymm6,ymm6,ymm12
  b14005:	c4 41 2d 15 d7       	vunpckhpd ymm10,ymm10,ymm15
  b1400a:	c4 41 4c c6 e2 88    	vshufps ymm12,ymm6,ymm10,0x88
  b14010:	c4 41 1c c6 e4 d8    	vshufps ymm12,ymm12,ymm12,0xd8
  b14016:	c4 c1 4c c6 f2 dd    	vshufps ymm6,ymm6,ymm10,0xdd
  b1401c:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  b14021:	c4 43 7d 19 f6 01    	vextractf128 xmm14,ymm14,0x1
  b14027:	c4 41 3d 14 d6       	vunpcklpd ymm10,ymm8,ymm14
  b1402c:	c4 43 7d 19 db 01    	vextractf128 xmm11,ymm11,0x1
  b14032:	62 c1 95 28 14 e3    	vunpcklpd ymm20,ymm13,ymm11
  b14038:	62 31 2c 28 c6 fc 88 	vshufps ymm15,ymm10,ymm20,0x88
  b1403f:	c4 41 04 c6 ff d8    	vshufps ymm15,ymm15,ymm15,0xd8
  b14045:	62 31 2c 28 c6 d4 dd 	vshufps ymm10,ymm10,ymm20,0xdd
  b1404c:	c4 41 2c c6 d2 d8    	vshufps ymm10,ymm10,ymm10,0xd8
  b14052:	c4 41 3d 15 c6       	vunpckhpd ymm8,ymm8,ymm14
  b14057:	c4 41 15 15 db       	vunpckhpd ymm11,ymm13,ymm11
  b1405c:	c4 41 3c c6 eb 88    	vshufps ymm13,ymm8,ymm11,0x88
  b14062:	c4 41 14 c6 ed d8    	vshufps ymm13,ymm13,ymm13,0xd8
  b14068:	c4 41 3c c6 c3 dd    	vshufps ymm8,ymm8,ymm11,0xdd
  b1406e:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  b14074:	62 13 65 20 18 f0 01 	vinsertf32x4 ymm14,ymm19,xmm24,0x1
  b1407b:	62 83 e5 20 23 e0 03 	vshuff64x2 ymm20,ymm19,ymm24,0x3
  b14082:	62 c3 75 20 18 d9 01 	vinsertf32x4 ymm19,ymm17,xmm9,0x1
  b14089:	62 c3 f5 20 23 f1 03 	vshuff64x2 ymm22,ymm17,ymm9,0x3
  b14090:	62 a1 7c 08 28 ea    	vmovaps xmm21,xmm18
  b14096:	62 31 8d 28 14 cd    	vunpcklpd ymm9,ymm14,ymm21
  b1409c:	62 a1 7c 08 28 f8    	vmovaps xmm23,xmm16
  b140a2:	62 31 e5 20 14 df    	vunpcklpd ymm11,ymm19,ymm23
  b140a8:	62 c1 34 28 c6 cb dd 	vshufps ymm17,ymm9,ymm11,0xdd
  b140af:	62 a1 74 20 c6 c9 d8 	vshufps ymm17,ymm17,ymm17,0xd8
  b140b6:	62 31 8d 28 15 f5    	vunpckhpd ymm14,ymm14,ymm21
  b140bc:	62 a1 e5 20 15 df    	vunpckhpd ymm19,ymm19,ymm23
  b140c2:	62 a1 0c 28 c6 eb 88 	vshufps ymm21,ymm14,ymm19,0x88
  b140c9:	62 a1 54 20 c6 ed d8 	vshufps ymm21,ymm21,ymm21,0xd8
  b140d0:	62 31 0c 28 c6 f3 dd 	vshufps ymm14,ymm14,ymm19,0xdd
  b140d7:	c4 41 0c c6 f6 d8    	vshufps ymm14,ymm14,ymm14,0xd8
  b140dd:	62 a3 7d 28 19 d2 01 	vextractf32x4 xmm18,ymm18,0x1
  b140e4:	62 a1 dd 20 14 da    	vunpcklpd ymm19,ymm20,ymm18
  b140ea:	62 a3 7d 28 19 c0 01 	vextractf32x4 xmm16,ymm16,0x1
  b140f1:	62 a1 cd 20 14 f8    	vunpcklpd ymm23,ymm22,ymm16
  b140f7:	62 21 64 20 c6 c7 88 	vshufps ymm24,ymm19,ymm23,0x88
  b140fe:	62 01 3c 20 c6 c0 d8 	vshufps ymm24,ymm24,ymm24,0xd8
  b14105:	62 a1 64 20 c6 df dd 	vshufps ymm19,ymm19,ymm23,0xdd
  b1410c:	62 a1 64 20 c6 db d8 	vshufps ymm19,ymm19,ymm19,0xd8
  b14113:	62 a1 dd 20 15 d2    	vunpckhpd ymm18,ymm20,ymm18
  b14119:	62 a1 cd 20 15 e0    	vunpckhpd ymm20,ymm22,ymm16
  b1411f:	62 a1 6c 20 c6 c4 dd 	vshufps ymm16,ymm18,ymm20,0xdd
  b14126:	62 a1 7c 20 c6 c0 d8 	vshufps ymm16,ymm16,ymm16,0xd8
  b1412d:	62 a1 6c 20 c6 d4 88 	vshufps ymm18,ymm18,ymm20,0x88
  b14134:	62 a1 6c 20 c6 f2 d8 	vshufps ymm22,ymm18,ymm18,0xd8
  b1413b:	62 e1 7c 28 10 61 08 	vmovups ymm20,YMMWORD PTR [rcx+0x100]
  b14142:	62 e1 7c 28 10 79 09 	vmovups ymm23,YMMWORD PTR [rcx+0x120]
  b14149:	62 a1 04 28 59 d4    	vmulps ymm18,ymm15,ymm20
  b1414f:	62 a2 3d 20 bc d7    	vfnmadd231ps ymm18,ymm24,ymm23
  b14155:	62 a1 3c 20 59 e4    	vmulps ymm20,ymm24,ymm20
  b1415b:	62 61 7c 28 10 41 04 	vmovups ymm24,YMMWORD PTR [rcx+0x80]
  b14162:	62 a2 05 28 b8 e7    	vfmadd231ps ymm20,ymm15,ymm23
  b14168:	62 e1 7c 28 10 79 05 	vmovups ymm23,YMMWORD PTR [rcx+0xa0]
  b1416f:	62 11 1c 28 59 f8    	vmulps ymm15,ymm12,ymm24
  b14175:	62 32 55 20 bc ff    	vfnmadd231ps ymm15,ymm21,ymm23
  b1417b:	62 81 54 20 59 e8    	vmulps ymm21,ymm21,ymm24
  b14181:	62 61 7c 28 10 41 0c 	vmovups ymm24,YMMWORD PTR [rcx+0x180]
  b14188:	62 a2 1d 28 b8 ef    	vfmadd231ps ymm21,ymm12,ymm23
  b1418e:	c5 7c 10 a1 a0 01 00 	vmovups ymm12,YMMWORD PTR [rcx+0x1a0]
  b14195:	00 
  b14196:	62 81 14 28 59 f8    	vmulps ymm23,ymm13,ymm24
  b1419c:	62 c2 4d 20 bc fc    	vfnmadd231ps ymm23,ymm22,ymm12
  b141a2:	62 81 4c 20 59 f0    	vmulps ymm22,ymm22,ymm24
  b141a8:	62 61 7c 28 10 41 02 	vmovups ymm24,YMMWORD PTR [rcx+0x40]
  b141af:	62 c2 15 28 b8 f4    	vfmadd231ps ymm22,ymm13,ymm12
  b141b5:	c5 7c 10 61 60       	vmovups ymm12,YMMWORD PTR [rcx+0x60]
  b141ba:	62 11 44 28 59 e8    	vmulps ymm13,ymm7,ymm24
  b141c0:	62 52 75 20 bc ec    	vfnmadd231ps ymm13,ymm17,ymm12
  b141c6:	62 81 74 20 59 c8    	vmulps ymm17,ymm17,ymm24
  b141cc:	62 61 7c 28 10 41 0a 	vmovups ymm24,YMMWORD PTR [rcx+0x140]
  b141d3:	62 c2 45 28 b8 cc    	vfmadd231ps ymm17,ymm7,ymm12
  b141d9:	c5 fc 10 b9 60 01 00 	vmovups ymm7,YMMWORD PTR [rcx+0x160]
  b141e0:	00 
  b141e1:	62 11 2c 28 59 e0    	vmulps ymm12,ymm10,ymm24
  b141e7:	62 72 65 20 bc e7    	vfnmadd231ps ymm12,ymm19,ymm7
  b141ed:	62 81 64 20 59 d8    	vmulps ymm19,ymm19,ymm24
  b141f3:	62 61 7c 28 10 41 06 	vmovups ymm24,YMMWORD PTR [rcx+0xc0]
  b141fa:	62 e2 2d 28 b8 df    	vfmadd231ps ymm19,ymm10,ymm7
  b14200:	c5 fc 10 b9 e0 00 00 	vmovups ymm7,YMMWORD PTR [rcx+0xe0]
  b14207:	00 
  b14208:	62 11 4c 28 59 d0    	vmulps ymm10,ymm6,ymm24
  b1420e:	c4 62 0d bc d7       	vfnmadd231ps ymm10,ymm14,ymm7
  b14213:	62 11 0c 28 59 f0    	vmulps ymm14,ymm14,ymm24
  b14219:	62 61 7c 28 10 41 0e 	vmovups ymm24,YMMWORD PTR [rcx+0x1c0]
  b14220:	c4 62 4d b8 f7       	vfmadd231ps ymm14,ymm6,ymm7
  b14225:	c5 fc 10 b1 e0 01 00 	vmovups ymm6,YMMWORD PTR [rcx+0x1e0]
  b1422c:	00 
  b1422d:	62 91 3c 28 59 f8    	vmulps ymm7,ymm8,ymm24
  b14233:	62 f2 7d 20 bc fe    	vfnmadd231ps ymm7,ymm16,ymm6
  b14239:	62 81 7c 20 59 c0    	vmulps ymm16,ymm16,ymm24
  b1423f:	62 e2 3d 28 b8 c6    	vfmadd231ps ymm16,ymm8,ymm6
  b14245:	c5 dc c6 e5 88       	vshufps ymm4,ymm4,ymm5,0x88
  b1424a:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  b1424f:	c4 c1 34 c6 eb 88    	vshufps ymm5,ymm9,ymm11,0x88
  b14255:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  b1425a:	62 b1 5c 28 58 f2    	vaddps ymm6,ymm4,ymm18
  b14260:	62 b1 5c 28 5c e2    	vsubps ymm4,ymm4,ymm18
  b14266:	62 31 54 20 58 c6    	vaddps ymm8,ymm21,ymm22
  b1426c:	62 31 54 20 5c ce    	vsubps ymm9,ymm21,ymm22
  b14272:	c4 41 14 58 dc       	vaddps ymm11,ymm13,ymm12
  b14277:	c4 41 14 5c e4       	vsubps ymm12,ymm13,ymm12
  b1427c:	62 31 74 20 58 eb    	vaddps ymm13,ymm17,ymm19
  b14282:	62 a1 74 20 5c cb    	vsubps ymm17,ymm17,ymm19
  b14288:	62 a1 0c 28 58 d0    	vaddps ymm18,ymm14,ymm16
  b1428e:	62 31 0c 28 5c f0    	vsubps ymm14,ymm14,ymm16
  b14294:	62 e1 2c 28 58 c7    	vaddps ymm16,ymm10,ymm7
  b1429a:	c5 ac 5c ff          	vsubps ymm7,ymm10,ymm7
  b1429e:	62 71 5c 20 58 d5    	vaddps ymm10,ymm20,ymm5
  b142a4:	62 b1 54 28 5c ec    	vsubps ymm5,ymm5,ymm20
  b142aa:	62 a1 04 28 58 df    	vaddps ymm19,ymm15,ymm23
  b142b0:	62 51 44 20 5c ff    	vsubps ymm15,ymm23,ymm15
  b142b6:	62 a1 1c 28 58 e1    	vaddps ymm20,ymm12,ymm17
  b142bc:	62 51 74 20 5c e4    	vsubps ymm12,ymm17,ymm12
  b142c2:	62 e1 0c 28 5c cf    	vsubps ymm17,ymm14,ymm7
  b142c8:	c5 8c 58 ff          	vaddps ymm7,ymm14,ymm7
  b142cc:	62 31 4c 28 58 f3    	vaddps ymm14,ymm6,ymm19
  b142d2:	62 b1 4c 28 5c f3    	vsubps ymm6,ymm6,ymm19
  b142d8:	62 a1 14 28 58 da    	vaddps ymm19,ymm13,ymm18
  b142de:	62 31 14 28 5c ea    	vsubps ymm13,ymm13,ymm18
  b142e4:	62 c1 3c 28 58 d2    	vaddps ymm18,ymm8,ymm10
  b142ea:	c4 41 2c 5c c0       	vsubps ymm8,ymm10,ymm8
  b142ef:	62 31 24 28 58 d0    	vaddps ymm10,ymm11,ymm16
  b142f5:	62 51 7c 20 5c db    	vsubps ymm11,ymm16,ymm11
  b142fb:	62 c1 5c 28 58 c1    	vaddps ymm16,ymm4,ymm9
  b14301:	62 e1 5c 20 59 e2    	vmulps ymm20,ymm20,ymm2
  b14307:	62 e1 74 20 59 ca    	vmulps ymm17,ymm17,ymm2
  b1430d:	c5 1c 59 e2          	vmulps ymm12,ymm12,ymm2
  b14311:	c5 c4 59 fa          	vmulps ymm7,ymm7,ymm2
  b14315:	c4 c1 5c 5c e1       	vsubps ymm4,ymm4,ymm9
  b1431a:	c5 1c 5c cf          	vsubps ymm9,ymm12,ymm7
  b1431e:	c5 9c 58 ff          	vaddps ymm7,ymm12,ymm7
  b14322:	c5 04 58 e5          	vaddps ymm12,ymm15,ymm5
  b14326:	c4 c1 54 5c ef       	vsubps ymm5,ymm5,ymm15
  b1432b:	62 31 5c 20 58 f9    	vaddps ymm15,ymm20,ymm17
  b14331:	62 a1 74 20 5c cc    	vsubps ymm17,ymm17,ymm20
  b14337:	62 c1 7c 20 58 e7    	vaddps ymm20,ymm16,ymm15
  b1433d:	62 51 7c 20 5c ff    	vsubps ymm15,ymm16,ymm15
  b14343:	62 c1 1c 28 58 c1    	vaddps ymm16,ymm12,ymm9
  b14349:	c4 41 1c 5c c9       	vsubps ymm9,ymm12,ymm9
  b1434e:	c5 14 58 e6          	vaddps ymm12,ymm13,ymm6
  b14352:	c4 c1 4c 5c f5       	vsubps ymm6,ymm6,ymm13
  b14357:	c4 41 3c 58 eb       	vaddps ymm13,ymm8,ymm11
  b1435c:	c4 41 3c 5c c3       	vsubps ymm8,ymm8,ymm11
  b14361:	c5 5c 58 df          	vaddps ymm11,ymm4,ymm7
  b14365:	c5 dc 5c e7          	vsubps ymm4,ymm4,ymm7
  b14369:	62 b1 54 28 58 f9    	vaddps ymm7,ymm5,ymm17
  b1436f:	62 b1 54 28 5c e9    	vsubps ymm5,ymm5,ymm17
  b14375:	62 c1 0c 28 5c ca    	vsubps ymm17,ymm14,ymm10
  b1437b:	c4 41 0c 58 d2       	vaddps ymm10,ymm14,ymm10
  b14380:	62 31 6c 20 5c f3    	vsubps ymm14,ymm18,ymm19
  b14386:	62 a1 6c 20 58 d3    	vaddps ymm18,ymm18,ymm19
  b1438c:	62 33 7d 28 19 d3 01 	vextractf32x4 xmm19,ymm10,0x1
  b14393:	62 32 65 28 7f d2    	vpermt2ps ymm10,ymm3,ymm18
  b14399:	c5 7c 11 14 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm10
  b1439e:	62 c3 7d 28 19 d2 01 	vextractf32x4 xmm10,ymm18,0x1
  b143a5:	62 51 64 00 14 d2    	vunpcklps xmm10,xmm19,xmm10
  b143ab:	c5 78 11 54 16 20    	vmovups XMMWORD PTR [rsi+rdx*1+0x20],xmm10
  b143b1:	62 c3 7d 28 19 e2 01 	vextractf32x4 xmm10,ymm20,0x1
  b143b8:	62 a2 65 28 7f e0    	vpermt2ps ymm20,ymm3,ymm16
  b143be:	62 e1 7c 28 11 a4 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x30],ymm20
  b143c5:	30 00 00 00 
  b143c9:	62 a3 7d 28 19 c0 01 	vextractf32x4 xmm16,ymm16,0x1
  b143d0:	62 31 2c 08 14 d0    	vunpcklps xmm10,xmm10,xmm16
  b143d6:	c5 78 11 54 16 50    	vmovups XMMWORD PTR [rsi+rdx*1+0x50],xmm10
  b143dc:	c4 43 7d 19 e2 01    	vextractf128 xmm10,ymm12,0x1
  b143e2:	62 52 65 28 7f e5    	vpermt2ps ymm12,ymm3,ymm13
  b143e8:	c5 7c 11 64 16 60    	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm12
  b143ee:	c4 43 7d 19 ec 01    	vextractf128 xmm12,ymm13,0x1
  b143f4:	c4 41 28 14 d4       	vunpcklps xmm10,xmm10,xmm12
  b143f9:	c5 78 11 94 16 80 00 	vmovups XMMWORD PTR [rsi+rdx*1+0x80],xmm10
  b14400:	00 00 
  b14402:	c4 43 7d 19 da 01    	vextractf128 xmm10,ymm11,0x1
  b14408:	62 72 65 28 7f df    	vpermt2ps ymm11,ymm3,ymm7
  b1440e:	c5 7c 11 9c 16 90 00 	vmovups YMMWORD PTR [rsi+rdx*1+0x90],ymm11
  b14415:	00 00 
  b14417:	c4 e3 7d 19 ff 01    	vextractf128 xmm7,ymm7,0x1
  b1441d:	c5 a8 14 ff          	vunpcklps xmm7,xmm10,xmm7
  b14421:	c5 f8 11 bc 16 b0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xb0],xmm7
  b14428:	00 00 
  b1442a:	62 e3 7d 28 19 cf 01 	vextractf32x4 xmm7,ymm17,0x1
  b14431:	62 c2 65 28 7f ce    	vpermt2ps ymm17,ymm3,ymm14
  b14437:	62 e1 7c 28 11 4c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0xc0],ymm17
  b1443e:	06 
  b1443f:	c4 43 7d 19 f2 01    	vextractf128 xmm10,ymm14,0x1
  b14445:	c4 c1 40 14 fa       	vunpcklps xmm7,xmm7,xmm10
  b1444a:	c5 f8 11 bc 16 e0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xe0],xmm7
  b14451:	00 00 
  b14453:	c4 63 7d 19 ff 01    	vextractf128 xmm7,ymm15,0x1
  b14459:	62 52 65 28 7f f9    	vpermt2ps ymm15,ymm3,ymm9
  b1445f:	c5 7c 11 bc 16 f0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xf0],ymm15
  b14466:	00 00 
  b14468:	c4 43 7d 19 c9 01    	vextractf128 xmm9,ymm9,0x1
  b1446e:	c4 c1 40 14 f9       	vunpcklps xmm7,xmm7,xmm9
  b14473:	c5 f8 11 bc 16 10 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x110],xmm7
  b1447a:	00 00 
  b1447c:	c4 e3 7d 19 f7 01    	vextractf128 xmm7,ymm6,0x1
  b14482:	62 d2 65 28 7f f0    	vpermt2ps ymm6,ymm3,ymm8
  b14488:	c5 fc 11 b4 16 20 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x120],ymm6
  b1448f:	00 00 
  b14491:	c4 63 7d 19 c6 01    	vextractf128 xmm6,ymm8,0x1
  b14497:	c5 c0 14 f6          	vunpcklps xmm6,xmm7,xmm6
  b1449b:	c5 f8 11 b4 16 40 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x140],xmm6
  b144a2:	00 00 
  b144a4:	c4 e3 7d 19 e6 01    	vextractf128 xmm6,ymm4,0x1
  b144aa:	62 f2 65 28 7f e5    	vpermt2ps ymm4,ymm3,ymm5
  b144b0:	c5 fc 11 a4 16 50 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x150],ymm4
  b144b7:	00 00 
  b144b9:	c4 e3 7d 19 ec 01    	vextractf128 xmm4,ymm5,0x1
  b144bf:	c5 c8 14 e4          	vunpcklps xmm4,xmm6,xmm4
  b144c3:	c5 f8 11 a4 16 70 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x170],xmm4
  b144ca:	00 00 
  b144cc:	48 81 c2 80 01 00 00 	add    rdx,0x180
  b144d3:	48 39 d0             	cmp    rax,rdx
  b144d6:	0f 85 14 f9 ff ff    	jne    b13df0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x30>
  b144dc:	c5 f8 77             	vzeroupper
  b144df:	c3                   	ret
