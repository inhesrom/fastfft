
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b1afc0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  b1afc0:	c5 fb 10 47 40       	vmovsd xmm0,QWORD PTR [rdi+0x40]
  b1afc5:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  b1afcb:	c5 d8 57 e4          	vxorps xmm4,xmm4,xmm4
  b1afcf:	c4 e3 7d 0c c4 c0    	vblendps ymm0,ymm0,ymm4,0xc0
  b1afd5:	c4 e3 7d 19 c1 01    	vextractf128 xmm1,ymm0,0x1
  b1afdb:	c5 f8 10 2f          	vmovups xmm5,XMMWORD PTR [rdi]
  b1afdf:	c5 f8 10 77 18       	vmovups xmm6,XMMWORD PTR [rdi+0x18]
  b1afe4:	c5 f8 10 57 30       	vmovups xmm2,XMMWORD PTR [rdi+0x30]
  b1afe9:	62 e1 7c 08 10 b7 48 	vmovups xmm22,XMMWORD PTR [rdi+0x48]
  b1aff0:	00 00 00 
  b1aff3:	c5 e8 c6 f9 dd       	vshufps xmm7,xmm2,xmm1,0xdd
  b1aff8:	c5 78 10 47 60       	vmovups xmm8,XMMWORD PTR [rdi+0x60]
  b1affd:	c5 fb 10 47 70       	vmovsd xmm0,QWORD PTR [rdi+0x70]
  b1b002:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  b1b008:	c4 e3 7d 0c c4 c0    	vblendps ymm0,ymm0,ymm4,0xc0
  b1b00e:	c4 c3 7d 19 c1 01    	vextractf128 xmm9,ymm0,0x1
  b1b014:	c4 41 38 c6 d1 dd    	vshufps xmm10,xmm8,xmm9,0xdd
  b1b01a:	c4 41 44 5c da       	vsubps ymm11,ymm7,ymm10
  b1b01f:	62 e2 7d 28 18 15 ab 	vbroadcastss ymm18,DWORD PTR [rip+0xffffffffff55a2ab]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  b1b026:	a2 55 ff 
  b1b029:	62 31 24 28 59 da    	vmulps ymm11,ymm11,ymm18
  b1b02f:	c5 68 c6 e1 88       	vshufps xmm12,xmm2,xmm1,0x88
  b1b034:	c4 41 38 c6 c1 88    	vshufps xmm8,xmm8,xmm9,0x88
  b1b03a:	c4 41 1c 58 c8       	vaddps ymm9,ymm12,ymm8
  b1b03f:	c5 fb 10 4f 10       	vmovsd xmm1,QWORD PTR [rdi+0x10]
  b1b044:	c4 e3 7d 18 c9 01    	vinsertf128 ymm1,ymm0,xmm1,0x1
  b1b04a:	c4 e3 75 0c cc c0    	vblendps ymm1,ymm1,ymm4,0xc0
  b1b050:	c4 c3 7d 19 cd 01    	vextractf128 xmm13,ymm1,0x1
  b1b056:	c4 e2 7d 18 0d 01 a4 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff55a401]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  b1b05d:	55 ff 
  b1b05f:	c4 41 50 c6 f5 88    	vshufps xmm14,xmm5,xmm13,0x88
  b1b065:	c5 7c 28 f9          	vmovaps ymm15,ymm1
  b1b069:	c4 42 35 ac fe       	vfnmadd213ps ymm15,ymm9,ymm14
  b1b06e:	62 c1 24 28 58 e7    	vaddps ymm20,ymm11,ymm15
  b1b074:	62 e1 7c 08 10 87 78 	vmovups xmm16,XMMWORD PTR [rdi+0x78]
  b1b07b:	00 00 00 
  b1b07e:	62 e1 ff 08 10 4f 11 	vmovsd xmm17,QWORD PTR [rdi+0x88]
  b1b085:	62 b3 7d 28 18 c1 01 	vinsertf32x4 ymm0,ymm0,xmm17,0x1
  b1b08c:	c4 e3 7d 0c c4 c0    	vblendps ymm0,ymm0,ymm4,0xc0
  b1b092:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  b1b098:	62 e1 7c 00 c6 c8 dd 	vshufps xmm17,xmm16,xmm0,0xdd
  b1b09f:	62 e1 ff 08 10 5f 05 	vmovsd xmm19,QWORD PTR [rdi+0x28]
  b1b0a6:	62 b3 7d 28 18 d3 01 	vinsertf32x4 ymm2,ymm0,xmm19,0x1
  b1b0ad:	c4 e3 6d 0c d4 c0    	vblendps ymm2,ymm2,ymm4,0xc0
  b1b0b3:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  b1b0b9:	62 e1 4c 08 c6 da dd 	vshufps xmm19,xmm6,xmm2,0xdd
  b1b0c0:	62 a1 74 20 5c eb    	vsubps ymm21,ymm17,ymm19
  b1b0c6:	62 a1 54 20 59 ea    	vmulps ymm21,ymm21,ymm18
  b1b0cc:	62 f1 7c 00 c6 c0 88 	vshufps xmm0,xmm16,xmm0,0x88
  b1b0d3:	c5 c8 c6 d2 88       	vshufps xmm2,xmm6,xmm2,0x88
  b1b0d8:	c5 fc 58 f2          	vaddps ymm6,ymm0,ymm2
  b1b0dc:	62 e1 ff 08 10 47 0b 	vmovsd xmm16,QWORD PTR [rdi+0x58]
  b1b0e3:	62 b3 7d 28 18 d8 01 	vinsertf32x4 ymm3,ymm0,xmm16,0x1
  b1b0ea:	c4 e3 65 0c dc c0    	vblendps ymm3,ymm3,ymm4,0xc0
  b1b0f0:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  b1b0f6:	62 f1 4c 00 c6 e3 88 	vshufps xmm4,xmm22,xmm3,0x88
  b1b0fd:	62 e1 7c 28 28 c1    	vmovaps ymm16,ymm1
  b1b103:	62 e2 4d 28 ac c4    	vfnmadd213ps ymm16,ymm6,ymm4
  b1b109:	62 a1 54 20 58 f8    	vaddps ymm23,ymm21,ymm16
  b1b10f:	c5 ac 58 ff          	vaddps ymm7,ymm10,ymm7
  b1b113:	c4 c1 50 c6 ed dd    	vshufps xmm5,xmm5,xmm13,0xdd
  b1b119:	c5 7c 28 d1          	vmovaps ymm10,ymm1
  b1b11d:	c4 62 45 ac d5       	vfnmadd213ps ymm10,ymm7,ymm5
  b1b122:	c4 41 1c 5c c0       	vsubps ymm8,ymm12,ymm8
  b1b127:	62 31 3c 28 59 c2    	vmulps ymm8,ymm8,ymm18
  b1b12d:	c4 41 2c 5c e0       	vsubps ymm12,ymm10,ymm8
  b1b132:	62 31 74 20 58 eb    	vaddps ymm13,ymm17,ymm19
  b1b138:	62 f1 4c 00 c6 db dd 	vshufps xmm3,xmm22,xmm3,0xdd
  b1b13f:	62 e1 7c 28 28 c9    	vmovaps ymm17,ymm1
  b1b145:	62 e2 15 28 ac cb    	vfnmadd213ps ymm17,ymm13,ymm3
  b1b14b:	c5 fc 5c c2          	vsubps ymm0,ymm0,ymm2
  b1b14f:	62 b1 7c 28 59 c2    	vmulps ymm0,ymm0,ymm18
  b1b155:	62 f1 74 20 5c d0    	vsubps ymm2,ymm17,ymm0
  b1b15b:	c4 41 04 5c db       	vsubps ymm11,ymm15,ymm11
  b1b160:	62 31 7c 20 5c fd    	vsubps ymm15,ymm16,ymm21
  b1b166:	c4 41 2c 58 c0       	vaddps ymm8,ymm10,ymm8
  b1b16b:	62 f1 74 20 58 c0    	vaddps ymm0,ymm17,ymm0
  b1b171:	c4 41 0c 58 c9       	vaddps ymm9,ymm14,ymm9
  b1b176:	c5 dc 58 e6          	vaddps ymm4,ymm4,ymm6
  b1b17a:	c5 d4 58 ef          	vaddps ymm5,ymm5,ymm7
  b1b17e:	c5 94 58 db          	vaddps ymm3,ymm13,ymm3
  b1b182:	c4 c1 24 5c f7       	vsubps ymm6,ymm11,ymm15
  b1b187:	c5 bc 5c f8          	vsubps ymm7,ymm8,ymm0
  b1b18b:	c5 34 58 d4          	vaddps ymm10,ymm9,ymm4
  b1b18f:	c5 54 58 eb          	vaddps ymm13,ymm5,ymm3
  b1b193:	c5 b8 58 c0          	vaddps xmm0,xmm8,xmm0
  b1b197:	c4 e3 15 18 c0 01    	vinsertf128 ymm0,ymm13,xmm0,0x1
  b1b19d:	c5 18 5c c2          	vsubps xmm8,xmm12,xmm2
  b1b1a1:	c4 c3 45 18 f8 01    	vinsertf128 ymm7,ymm7,xmm8,0x1
  b1b1a7:	c5 98 58 d2          	vaddps xmm2,xmm12,xmm2
  b1b1ab:	c5 7d 14 c2          	vunpcklpd ymm8,ymm0,ymm2
  b1b1af:	c5 d0 5c db          	vsubps xmm3,xmm5,xmm3
  b1b1b3:	c5 c5 14 eb          	vunpcklpd ymm5,ymm7,ymm3
  b1b1b7:	c5 3c c6 e5 88       	vshufps ymm12,ymm8,ymm5,0x88
  b1b1bc:	c4 41 1c c6 e4 d8    	vshufps ymm12,ymm12,ymm12,0xd8
  b1b1c2:	c5 bc c6 ed dd       	vshufps ymm5,ymm8,ymm5,0xdd
  b1b1c7:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  b1b1cc:	c5 fd 15 c2          	vunpckhpd ymm0,ymm0,ymm2
  b1b1d0:	c5 c5 15 d3          	vunpckhpd ymm2,ymm7,ymm3
  b1b1d4:	c5 fc c6 c2 88       	vshufps ymm0,ymm0,ymm2,0x88
  b1b1d9:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  b1b1de:	c4 c1 20 58 d7       	vaddps xmm2,xmm11,xmm15
  b1b1e3:	c4 e3 2d 18 d2 01    	vinsertf128 ymm2,ymm10,xmm2,0x1
  b1b1e9:	62 b1 5c 00 5c df    	vsubps xmm3,xmm20,xmm23
  b1b1ef:	c4 e3 4d 18 db 01    	vinsertf128 ymm3,ymm6,xmm3,0x1
  b1b1f5:	62 b1 5c 00 58 f7    	vaddps xmm6,xmm20,xmm23
  b1b1fb:	c5 ed 14 fe          	vunpcklpd ymm7,ymm2,ymm6
  b1b1ff:	c5 b0 5c e4          	vsubps xmm4,xmm9,xmm4
  b1b203:	c5 65 14 c4          	vunpcklpd ymm8,ymm3,ymm4
  b1b207:	c4 41 44 c6 c8 88    	vshufps ymm9,ymm7,ymm8,0x88
  b1b20d:	c4 41 34 c6 c9 d8    	vshufps ymm9,ymm9,ymm9,0xd8
  b1b213:	c4 c1 44 c6 f8 dd    	vshufps ymm7,ymm7,ymm8,0xdd
  b1b219:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  b1b21e:	c5 ed 15 d6          	vunpckhpd ymm2,ymm2,ymm6
  b1b222:	c5 e5 15 dc          	vunpckhpd ymm3,ymm3,ymm4
  b1b226:	c5 ec c6 d3 88       	vshufps ymm2,ymm2,ymm3,0x88
  b1b22b:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  b1b230:	c5 fc 10 5a 40       	vmovups ymm3,YMMWORD PTR [rdx+0x40]
  b1b235:	c5 fc 10 62 60       	vmovups ymm4,YMMWORD PTR [rdx+0x60]
  b1b23a:	c5 fc 10 b2 80 00 00 	vmovups ymm6,YMMWORD PTR [rdx+0x80]
  b1b241:	00 
  b1b242:	c5 7c 10 82 a0 00 00 	vmovups ymm8,YMMWORD PTR [rdx+0xa0]
  b1b249:	00 
  b1b24a:	c5 54 59 d3          	vmulps ymm10,ymm5,ymm3
  b1b24e:	c4 62 45 bc d4       	vfnmadd231ps ymm10,ymm7,ymm4
  b1b253:	c5 7c 59 de          	vmulps ymm11,ymm0,ymm6
  b1b257:	c4 42 6d bc d8       	vfnmadd231ps ymm11,ymm2,ymm8
  b1b25c:	c4 41 2c 58 eb       	vaddps ymm13,ymm10,ymm11
  b1b261:	c5 c4 59 db          	vmulps ymm3,ymm7,ymm3
  b1b265:	c4 e2 55 b8 dc       	vfmadd231ps ymm3,ymm5,ymm4
  b1b26a:	c5 ec 59 d6          	vmulps ymm2,ymm2,ymm6
  b1b26e:	c4 c2 7d b8 d0       	vfmadd231ps ymm2,ymm0,ymm8
  b1b273:	c5 e4 58 c2          	vaddps ymm0,ymm3,ymm2
  b1b277:	c5 fc 28 e1          	vmovaps ymm4,ymm1
  b1b27b:	c4 c2 15 ac e4       	vfnmadd213ps ymm4,ymm13,ymm12
  b1b280:	c5 e4 5c d2          	vsubps ymm2,ymm3,ymm2
  b1b284:	62 b1 6c 28 59 d2    	vmulps ymm2,ymm2,ymm18
  b1b28a:	c5 dc 58 da          	vaddps ymm3,ymm4,ymm2
  b1b28e:	c4 c2 7d ac c9       	vfnmadd213ps ymm1,ymm0,ymm9
  b1b293:	c4 c1 2c 5c eb       	vsubps ymm5,ymm10,ymm11
  b1b298:	62 b1 54 28 59 ea    	vmulps ymm5,ymm5,ymm18
  b1b29e:	c5 f4 5c f5          	vsubps ymm6,ymm1,ymm5
  b1b2a2:	c5 dc 5c d2          	vsubps ymm2,ymm4,ymm2
  b1b2a6:	c5 f4 58 cd          	vaddps ymm1,ymm1,ymm5
  b1b2aa:	c5 b4 58 c0          	vaddps ymm0,ymm9,ymm0
  b1b2ae:	c4 c1 1c 58 e5       	vaddps ymm4,ymm12,ymm13
  b1b2b3:	c5 fc 28 2d 25 bf 55 	vmovaps ymm5,YMMWORD PTR [rip+0xffffffffff55bf25]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  b1b2ba:	ff 
  b1b2bb:	c4 e3 7d 19 c7 01    	vextractf128 xmm7,ymm0,0x1
  b1b2c1:	62 f2 55 28 7f c4    	vpermt2ps ymm0,ymm5,ymm4
  b1b2c7:	c5 fc 11 06          	vmovups YMMWORD PTR [rsi],ymm0
  b1b2cb:	c4 e3 7d 19 e0 01    	vextractf128 xmm0,ymm4,0x1
  b1b2d1:	c5 c0 14 c0          	vunpcklps xmm0,xmm7,xmm0
  b1b2d5:	c5 f8 11 46 20       	vmovups XMMWORD PTR [rsi+0x20],xmm0
  b1b2da:	c4 e3 7d 19 f0 01    	vextractf128 xmm0,ymm6,0x1
  b1b2e0:	62 f2 55 28 7f f3    	vpermt2ps ymm6,ymm5,ymm3
  b1b2e6:	c5 fc 11 76 30       	vmovups YMMWORD PTR [rsi+0x30],ymm6
  b1b2eb:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  b1b2f1:	c5 f8 14 c3          	vunpcklps xmm0,xmm0,xmm3
  b1b2f5:	c5 f8 11 46 50       	vmovups XMMWORD PTR [rsi+0x50],xmm0
  b1b2fa:	62 f2 75 28 77 ea    	vpermi2ps ymm5,ymm1,ymm2
  b1b300:	c5 fc 11 6e 60       	vmovups YMMWORD PTR [rsi+0x60],ymm5
  b1b305:	c4 e3 7d 19 d0 01    	vextractf128 xmm0,ymm2,0x1
  b1b30b:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  b1b311:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  b1b315:	c5 f8 11 86 80 00 00 	vmovups XMMWORD PTR [rsi+0x80],xmm0
  b1b31c:	00 
  b1b31d:	c5 f8 77             	vzeroupper
  b1b320:	c3                   	ret
