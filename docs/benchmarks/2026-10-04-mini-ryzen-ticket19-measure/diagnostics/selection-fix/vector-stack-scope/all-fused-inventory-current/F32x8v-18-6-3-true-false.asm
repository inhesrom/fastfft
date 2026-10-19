
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b1cd80 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  b1cd80:	c5 fb 10 47 40       	vmovsd xmm0,QWORD PTR [rdi+0x40]
  b1cd85:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  b1cd8b:	c5 d8 57 e4          	vxorps xmm4,xmm4,xmm4
  b1cd8f:	c4 e3 7d 0c c4 c0    	vblendps ymm0,ymm0,ymm4,0xc0
  b1cd95:	c4 e3 7d 19 c1 01    	vextractf128 xmm1,ymm0,0x1
  b1cd9b:	c5 f8 10 2f          	vmovups xmm5,XMMWORD PTR [rdi]
  b1cd9f:	c5 f8 10 77 18       	vmovups xmm6,XMMWORD PTR [rdi+0x18]
  b1cda4:	c5 f8 10 57 30       	vmovups xmm2,XMMWORD PTR [rdi+0x30]
  b1cda9:	62 e1 7c 08 10 b7 48 	vmovups xmm22,XMMWORD PTR [rdi+0x48]
  b1cdb0:	00 00 00 
  b1cdb3:	c5 e8 c6 f9 dd       	vshufps xmm7,xmm2,xmm1,0xdd
  b1cdb8:	c5 78 10 47 60       	vmovups xmm8,XMMWORD PTR [rdi+0x60]
  b1cdbd:	c5 fb 10 47 70       	vmovsd xmm0,QWORD PTR [rdi+0x70]
  b1cdc2:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  b1cdc8:	c4 e3 7d 0c c4 c0    	vblendps ymm0,ymm0,ymm4,0xc0
  b1cdce:	c4 c3 7d 19 c1 01    	vextractf128 xmm9,ymm0,0x1
  b1cdd4:	c4 41 38 c6 d1 dd    	vshufps xmm10,xmm8,xmm9,0xdd
  b1cdda:	c4 41 44 5c da       	vsubps ymm11,ymm7,ymm10
  b1cddf:	62 e2 7d 28 18 15 eb 	vbroadcastss ymm18,DWORD PTR [rip+0xffffffffff5584eb]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  b1cde6:	84 55 ff 
  b1cde9:	62 31 24 28 59 da    	vmulps ymm11,ymm11,ymm18
  b1cdef:	c5 68 c6 e1 88       	vshufps xmm12,xmm2,xmm1,0x88
  b1cdf4:	c4 41 38 c6 c1 88    	vshufps xmm8,xmm8,xmm9,0x88
  b1cdfa:	c4 41 1c 58 c8       	vaddps ymm9,ymm12,ymm8
  b1cdff:	c5 fb 10 4f 10       	vmovsd xmm1,QWORD PTR [rdi+0x10]
  b1ce04:	c4 e3 7d 18 c9 01    	vinsertf128 ymm1,ymm0,xmm1,0x1
  b1ce0a:	c4 e3 75 0c cc c0    	vblendps ymm1,ymm1,ymm4,0xc0
  b1ce10:	c4 c3 7d 19 cd 01    	vextractf128 xmm13,ymm1,0x1
  b1ce16:	c4 e2 7d 18 0d 41 86 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff558641]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  b1ce1d:	55 ff 
  b1ce1f:	c4 41 50 c6 f5 88    	vshufps xmm14,xmm5,xmm13,0x88
  b1ce25:	c5 7c 28 f9          	vmovaps ymm15,ymm1
  b1ce29:	c4 42 35 ac fe       	vfnmadd213ps ymm15,ymm9,ymm14
  b1ce2e:	62 c1 24 28 58 e7    	vaddps ymm20,ymm11,ymm15
  b1ce34:	62 e1 7c 08 10 87 78 	vmovups xmm16,XMMWORD PTR [rdi+0x78]
  b1ce3b:	00 00 00 
  b1ce3e:	62 e1 ff 08 10 4f 11 	vmovsd xmm17,QWORD PTR [rdi+0x88]
  b1ce45:	62 b3 7d 28 18 c1 01 	vinsertf32x4 ymm0,ymm0,xmm17,0x1
  b1ce4c:	c4 e3 7d 0c c4 c0    	vblendps ymm0,ymm0,ymm4,0xc0
  b1ce52:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  b1ce58:	62 e1 7c 00 c6 c8 dd 	vshufps xmm17,xmm16,xmm0,0xdd
  b1ce5f:	62 e1 ff 08 10 5f 05 	vmovsd xmm19,QWORD PTR [rdi+0x28]
  b1ce66:	62 b3 7d 28 18 d3 01 	vinsertf32x4 ymm2,ymm0,xmm19,0x1
  b1ce6d:	c4 e3 6d 0c d4 c0    	vblendps ymm2,ymm2,ymm4,0xc0
  b1ce73:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  b1ce79:	62 e1 4c 08 c6 da dd 	vshufps xmm19,xmm6,xmm2,0xdd
  b1ce80:	62 a1 74 20 5c eb    	vsubps ymm21,ymm17,ymm19
  b1ce86:	62 a1 54 20 59 ea    	vmulps ymm21,ymm21,ymm18
  b1ce8c:	62 f1 7c 00 c6 c0 88 	vshufps xmm0,xmm16,xmm0,0x88
  b1ce93:	c5 c8 c6 d2 88       	vshufps xmm2,xmm6,xmm2,0x88
  b1ce98:	c5 fc 58 f2          	vaddps ymm6,ymm0,ymm2
  b1ce9c:	62 e1 ff 08 10 47 0b 	vmovsd xmm16,QWORD PTR [rdi+0x58]
  b1cea3:	62 b3 7d 28 18 d8 01 	vinsertf32x4 ymm3,ymm0,xmm16,0x1
  b1ceaa:	c4 e3 65 0c dc c0    	vblendps ymm3,ymm3,ymm4,0xc0
  b1ceb0:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  b1ceb6:	62 f1 4c 00 c6 e3 88 	vshufps xmm4,xmm22,xmm3,0x88
  b1cebd:	62 e1 7c 28 28 c1    	vmovaps ymm16,ymm1
  b1cec3:	62 e2 4d 28 ac c4    	vfnmadd213ps ymm16,ymm6,ymm4
  b1cec9:	62 a1 54 20 58 f8    	vaddps ymm23,ymm21,ymm16
  b1cecf:	c5 ac 58 ff          	vaddps ymm7,ymm10,ymm7
  b1ced3:	c4 c1 50 c6 ed dd    	vshufps xmm5,xmm5,xmm13,0xdd
  b1ced9:	c5 7c 28 d1          	vmovaps ymm10,ymm1
  b1cedd:	c4 62 45 ac d5       	vfnmadd213ps ymm10,ymm7,ymm5
  b1cee2:	c4 41 1c 5c c0       	vsubps ymm8,ymm12,ymm8
  b1cee7:	62 31 3c 28 59 c2    	vmulps ymm8,ymm8,ymm18
  b1ceed:	c4 41 2c 5c e0       	vsubps ymm12,ymm10,ymm8
  b1cef2:	62 31 74 20 58 eb    	vaddps ymm13,ymm17,ymm19
  b1cef8:	62 f1 4c 00 c6 db dd 	vshufps xmm3,xmm22,xmm3,0xdd
  b1ceff:	62 e1 7c 28 28 c9    	vmovaps ymm17,ymm1
  b1cf05:	62 e2 15 28 ac cb    	vfnmadd213ps ymm17,ymm13,ymm3
  b1cf0b:	c5 fc 5c c2          	vsubps ymm0,ymm0,ymm2
  b1cf0f:	62 b1 7c 28 59 c2    	vmulps ymm0,ymm0,ymm18
  b1cf15:	62 f1 74 20 5c d0    	vsubps ymm2,ymm17,ymm0
  b1cf1b:	c4 41 04 5c db       	vsubps ymm11,ymm15,ymm11
  b1cf20:	62 31 7c 20 5c fd    	vsubps ymm15,ymm16,ymm21
  b1cf26:	c4 41 2c 58 c0       	vaddps ymm8,ymm10,ymm8
  b1cf2b:	62 f1 74 20 58 c0    	vaddps ymm0,ymm17,ymm0
  b1cf31:	c4 41 0c 58 c9       	vaddps ymm9,ymm14,ymm9
  b1cf36:	c5 dc 58 e6          	vaddps ymm4,ymm4,ymm6
  b1cf3a:	c5 d4 58 ef          	vaddps ymm5,ymm5,ymm7
  b1cf3e:	c5 94 58 db          	vaddps ymm3,ymm13,ymm3
  b1cf42:	c4 c1 24 5c f7       	vsubps ymm6,ymm11,ymm15
  b1cf47:	c5 bc 5c f8          	vsubps ymm7,ymm8,ymm0
  b1cf4b:	c5 34 58 d4          	vaddps ymm10,ymm9,ymm4
  b1cf4f:	c5 54 58 eb          	vaddps ymm13,ymm5,ymm3
  b1cf53:	c5 b8 58 c0          	vaddps xmm0,xmm8,xmm0
  b1cf57:	c4 e3 15 18 c0 01    	vinsertf128 ymm0,ymm13,xmm0,0x1
  b1cf5d:	c5 18 5c c2          	vsubps xmm8,xmm12,xmm2
  b1cf61:	c4 c3 45 18 f8 01    	vinsertf128 ymm7,ymm7,xmm8,0x1
  b1cf67:	c5 98 58 d2          	vaddps xmm2,xmm12,xmm2
  b1cf6b:	c5 7d 14 c2          	vunpcklpd ymm8,ymm0,ymm2
  b1cf6f:	c5 d0 5c db          	vsubps xmm3,xmm5,xmm3
  b1cf73:	c5 c5 14 eb          	vunpcklpd ymm5,ymm7,ymm3
  b1cf77:	c5 3c c6 e5 88       	vshufps ymm12,ymm8,ymm5,0x88
  b1cf7c:	c4 41 1c c6 e4 d8    	vshufps ymm12,ymm12,ymm12,0xd8
  b1cf82:	c5 bc c6 ed dd       	vshufps ymm5,ymm8,ymm5,0xdd
  b1cf87:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  b1cf8c:	c5 fd 15 c2          	vunpckhpd ymm0,ymm0,ymm2
  b1cf90:	c5 c5 15 d3          	vunpckhpd ymm2,ymm7,ymm3
  b1cf94:	c5 fc c6 c2 88       	vshufps ymm0,ymm0,ymm2,0x88
  b1cf99:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  b1cf9e:	c4 c1 20 58 d7       	vaddps xmm2,xmm11,xmm15
  b1cfa3:	c4 e3 2d 18 d2 01    	vinsertf128 ymm2,ymm10,xmm2,0x1
  b1cfa9:	62 b1 5c 00 5c df    	vsubps xmm3,xmm20,xmm23
  b1cfaf:	c4 e3 4d 18 db 01    	vinsertf128 ymm3,ymm6,xmm3,0x1
  b1cfb5:	62 b1 5c 00 58 f7    	vaddps xmm6,xmm20,xmm23
  b1cfbb:	c5 ed 14 fe          	vunpcklpd ymm7,ymm2,ymm6
  b1cfbf:	c5 b0 5c e4          	vsubps xmm4,xmm9,xmm4
  b1cfc3:	c5 65 14 c4          	vunpcklpd ymm8,ymm3,ymm4
  b1cfc7:	c4 41 44 c6 c8 88    	vshufps ymm9,ymm7,ymm8,0x88
  b1cfcd:	c4 41 34 c6 c9 d8    	vshufps ymm9,ymm9,ymm9,0xd8
  b1cfd3:	c4 c1 44 c6 f8 dd    	vshufps ymm7,ymm7,ymm8,0xdd
  b1cfd9:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  b1cfde:	c5 ed 15 d6          	vunpckhpd ymm2,ymm2,ymm6
  b1cfe2:	c5 e5 15 dc          	vunpckhpd ymm3,ymm3,ymm4
  b1cfe6:	c5 ec c6 d3 88       	vshufps ymm2,ymm2,ymm3,0x88
  b1cfeb:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  b1cff0:	c5 fc 10 5a 40       	vmovups ymm3,YMMWORD PTR [rdx+0x40]
  b1cff5:	c5 fc 10 62 60       	vmovups ymm4,YMMWORD PTR [rdx+0x60]
  b1cffa:	c5 fc 10 b2 80 00 00 	vmovups ymm6,YMMWORD PTR [rdx+0x80]
  b1d001:	00 
  b1d002:	c5 7c 10 82 a0 00 00 	vmovups ymm8,YMMWORD PTR [rdx+0xa0]
  b1d009:	00 
  b1d00a:	c5 54 59 d3          	vmulps ymm10,ymm5,ymm3
  b1d00e:	c4 62 45 bc d4       	vfnmadd231ps ymm10,ymm7,ymm4
  b1d013:	c5 7c 59 de          	vmulps ymm11,ymm0,ymm6
  b1d017:	c4 42 6d bc d8       	vfnmadd231ps ymm11,ymm2,ymm8
  b1d01c:	c4 41 2c 58 eb       	vaddps ymm13,ymm10,ymm11
  b1d021:	c5 c4 59 db          	vmulps ymm3,ymm7,ymm3
  b1d025:	c4 e2 55 b8 dc       	vfmadd231ps ymm3,ymm5,ymm4
  b1d02a:	c5 ec 59 d6          	vmulps ymm2,ymm2,ymm6
  b1d02e:	c4 c2 7d b8 d0       	vfmadd231ps ymm2,ymm0,ymm8
  b1d033:	c5 e4 58 c2          	vaddps ymm0,ymm3,ymm2
  b1d037:	c5 fc 28 e1          	vmovaps ymm4,ymm1
  b1d03b:	c4 c2 15 ac e4       	vfnmadd213ps ymm4,ymm13,ymm12
  b1d040:	c5 e4 5c d2          	vsubps ymm2,ymm3,ymm2
  b1d044:	62 b1 6c 28 59 d2    	vmulps ymm2,ymm2,ymm18
  b1d04a:	c5 dc 58 da          	vaddps ymm3,ymm4,ymm2
  b1d04e:	c4 c2 7d ac c9       	vfnmadd213ps ymm1,ymm0,ymm9
  b1d053:	c4 c1 2c 5c eb       	vsubps ymm5,ymm10,ymm11
  b1d058:	62 b1 54 28 59 ea    	vmulps ymm5,ymm5,ymm18
  b1d05e:	c5 f4 5c f5          	vsubps ymm6,ymm1,ymm5
  b1d062:	c5 dc 5c d2          	vsubps ymm2,ymm4,ymm2
  b1d066:	c5 f4 58 cd          	vaddps ymm1,ymm1,ymm5
  b1d06a:	c5 b4 58 c0          	vaddps ymm0,ymm9,ymm0
  b1d06e:	c4 c1 1c 58 e5       	vaddps ymm4,ymm12,ymm13
  b1d073:	c5 fc 28 2d 65 a1 55 	vmovaps ymm5,YMMWORD PTR [rip+0xffffffffff55a165]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  b1d07a:	ff 
  b1d07b:	c4 e3 7d 19 c7 01    	vextractf128 xmm7,ymm0,0x1
  b1d081:	62 f2 55 28 7f c4    	vpermt2ps ymm0,ymm5,ymm4
  b1d087:	c5 fc 11 06          	vmovups YMMWORD PTR [rsi],ymm0
  b1d08b:	c4 e3 7d 19 e0 01    	vextractf128 xmm0,ymm4,0x1
  b1d091:	c5 c0 14 c0          	vunpcklps xmm0,xmm7,xmm0
  b1d095:	c5 f8 11 46 20       	vmovups XMMWORD PTR [rsi+0x20],xmm0
  b1d09a:	c4 e3 7d 19 f0 01    	vextractf128 xmm0,ymm6,0x1
  b1d0a0:	62 f2 55 28 7f f3    	vpermt2ps ymm6,ymm5,ymm3
  b1d0a6:	c5 fc 11 76 30       	vmovups YMMWORD PTR [rsi+0x30],ymm6
  b1d0ab:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  b1d0b1:	c5 f8 14 c3          	vunpcklps xmm0,xmm0,xmm3
  b1d0b5:	c5 f8 11 46 50       	vmovups XMMWORD PTR [rsi+0x50],xmm0
  b1d0ba:	62 f2 75 28 77 ea    	vpermi2ps ymm5,ymm1,ymm2
  b1d0c0:	c5 fc 11 6e 60       	vmovups YMMWORD PTR [rsi+0x60],ymm5
  b1d0c5:	c4 e3 7d 19 d0 01    	vextractf128 xmm0,ymm2,0x1
  b1d0cb:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  b1d0d1:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  b1d0d5:	c5 f8 11 86 80 00 00 	vmovups XMMWORD PTR [rsi+0x80],xmm0
  b1d0dc:	00 
  b1d0dd:	c5 f8 77             	vzeroupper
  b1d0e0:	c3                   	ret
