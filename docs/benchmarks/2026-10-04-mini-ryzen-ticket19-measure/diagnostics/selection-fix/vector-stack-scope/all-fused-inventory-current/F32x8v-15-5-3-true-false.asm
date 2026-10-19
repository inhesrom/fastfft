
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000aacd80 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  aacd80:	c5 fb 10 47 28       	vmovsd xmm0,QWORD PTR [rdi+0x28]
  aacd85:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  aacd8b:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  aacd8f:	c4 e3 7d 0c c1 c0    	vblendps ymm0,ymm0,ymm1,0xc0
  aacd95:	c5 f8 10 17          	vmovups xmm2,XMMWORD PTR [rdi]
  aacd99:	c5 f8 10 5f 18       	vmovups xmm3,XMMWORD PTR [rdi+0x18]
  aacd9e:	c5 f8 10 67 30       	vmovups xmm4,XMMWORD PTR [rdi+0x30]
  aacda3:	c5 f8 10 6f 48       	vmovups xmm5,XMMWORD PTR [rdi+0x48]
  aacda8:	c4 e3 7d 19 c6 01    	vextractf128 xmm6,ymm0,0x1
  aacdae:	c5 e0 c6 fe dd       	vshufps xmm7,xmm3,xmm6,0xdd
  aacdb3:	c5 78 10 47 60       	vmovups xmm8,XMMWORD PTR [rdi+0x60]
  aacdb8:	c5 fb 10 47 70       	vmovsd xmm0,QWORD PTR [rdi+0x70]
  aacdbd:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  aacdc3:	c4 e3 7d 0c c1 c0    	vblendps ymm0,ymm0,ymm1,0xc0
  aacdc9:	c4 c3 7d 19 c1 01    	vextractf128 xmm9,ymm0,0x1
  aacdcf:	c4 41 38 c6 d1 dd    	vshufps xmm10,xmm8,xmm9,0xdd
  aacdd5:	c4 41 44 5c da       	vsubps ymm11,ymm7,ymm10
  aacdda:	c5 fb 10 47 40       	vmovsd xmm0,QWORD PTR [rdi+0x40]
  aacddf:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  aacde5:	c4 e3 7d 0c c1 c0    	vblendps ymm0,ymm0,ymm1,0xc0
  aacdeb:	c4 c3 7d 19 c4 01    	vextractf128 xmm12,ymm0,0x1
  aacdf1:	c4 41 58 c6 ec dd    	vshufps xmm13,xmm4,xmm12,0xdd
  aacdf7:	c5 fb 10 47 58       	vmovsd xmm0,QWORD PTR [rdi+0x58]
  aacdfc:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  aace02:	c4 e3 7d 0c c1 c0    	vblendps ymm0,ymm0,ymm1,0xc0
  aace08:	c4 c3 7d 19 c6 01    	vextractf128 xmm14,ymm0,0x1
  aace0e:	c4 41 50 c6 fe dd    	vshufps xmm15,xmm5,xmm14,0xdd
  aace14:	62 c1 14 28 5c c7    	vsubps ymm16,ymm13,ymm15
  aace1a:	62 e2 7d 28 18 0d 34 	vbroadcastss ymm17,DWORD PTR [rip+0xffffffffff5c8934]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  aace21:	89 5c ff 
  aace24:	62 b1 7c 20 59 c1    	vmulps ymm0,ymm16,ymm17
  aace2a:	62 e2 7d 28 18 15 6c 	vbroadcastss ymm18,DWORD PTR [rip+0xffffffffff5c856c]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  aace31:	85 5c ff 
  aace34:	62 b2 25 28 b8 c2    	vfmadd231ps ymm0,ymm11,ymm18
  aace3a:	c4 c1 58 c6 e4 88    	vshufps xmm4,xmm4,xmm12,0x88
  aace40:	c4 c1 50 c6 ee 88    	vshufps xmm5,xmm5,xmm14,0x88
  aace46:	c5 5c 58 e5          	vaddps ymm12,ymm4,ymm5
  aace4a:	c5 e0 c6 de 88       	vshufps xmm3,xmm3,xmm6,0x88
  aace4f:	c4 c1 38 c6 f1 88    	vshufps xmm6,xmm8,xmm9,0x88
  aace55:	c5 64 58 c6          	vaddps ymm8,ymm3,ymm6
  aace59:	c5 7b 10 4f 10       	vmovsd xmm9,QWORD PTR [rdi+0x10]
  aace5e:	c4 43 7d 18 c9 01    	vinsertf128 ymm9,ymm0,xmm9,0x1
  aace64:	c4 e3 35 0c c9 c0    	vblendps ymm1,ymm9,ymm1,0xc0
  aace6a:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  aace70:	c5 68 c6 c9 88       	vshufps xmm9,xmm2,xmm1,0x88
  aace75:	c4 62 7d 18 35 6a 88 	vbroadcastss ymm14,DWORD PTR [rip+0xffffffffff5c886a]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  aace7c:	5c ff 
  aace7e:	62 c1 7c 28 28 de    	vmovaps ymm19,ymm14
  aace84:	62 c2 3d 28 a8 d9    	vfmadd213ps ymm19,ymm8,ymm9
  aace8a:	62 e2 7d 28 18 25 b0 	vbroadcastss ymm20,DWORD PTR [rip+0xffffffffff5c87b0]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  aace91:	87 5c ff 
  aace94:	62 a2 1d 28 bc dc    	vfnmadd231ps ymm19,ymm12,ymm20
  aace9a:	c4 41 14 58 ef       	vaddps ymm13,ymm13,ymm15
  aace9f:	c5 ac 58 ff          	vaddps ymm7,ymm10,ymm7
  aacea3:	c5 e8 c6 c9 dd       	vshufps xmm1,xmm2,xmm1,0xdd
  aacea8:	c5 7c 29 f2          	vmovaps ymm2,ymm14
  aaceac:	c4 e2 45 a8 d1       	vfmadd213ps ymm2,ymm7,ymm1
  aaceb1:	62 b2 15 28 bc d4    	vfnmadd231ps ymm2,ymm13,ymm20
  aaceb7:	c5 e4 5c de          	vsubps ymm3,ymm3,ymm6
  aacebb:	c5 dc 5c e5          	vsubps ymm4,ymm4,ymm5
  aacebf:	62 b1 5c 28 59 e9    	vmulps ymm5,ymm4,ymm17
  aacec5:	62 b2 65 28 b8 ea    	vfmadd231ps ymm5,ymm3,ymm18
  aacecb:	62 b1 24 28 59 f1    	vmulps ymm6,ymm11,ymm17
  aaced1:	62 b2 6d 20 bc f0    	vfnmadd231ps ymm6,ymm18,ymm16
  aaced7:	62 31 7c 28 28 d4    	vmovaps ymm10,ymm20
  aacedd:	c4 42 3d ac d1       	vfnmadd213ps ymm10,ymm8,ymm9
  aacee2:	c4 42 1d b8 d6       	vfmadd231ps ymm10,ymm12,ymm14
  aacee7:	62 e2 45 28 ac e1    	vfnmadd213ps ymm20,ymm7,ymm1
  aaceed:	62 c2 15 28 b8 e6    	vfmadd231ps ymm20,ymm13,ymm14
  aacef3:	62 b1 64 28 59 d9    	vmulps ymm3,ymm3,ymm17
  aacef9:	62 b2 5d 28 bc da    	vfnmadd231ps ymm3,ymm4,ymm18
  aaceff:	c4 c1 34 58 e0       	vaddps ymm4,ymm9,ymm8
  aacf04:	c5 9c 58 e4          	vaddps ymm4,ymm12,ymm4
  aacf08:	c5 f4 58 cf          	vaddps ymm1,ymm1,ymm7
  aacf0c:	c5 94 58 c9          	vaddps ymm1,ymm13,ymm1
  aacf10:	c5 e8 5c fd          	vsubps xmm7,xmm2,xmm5
  aacf14:	c4 e3 75 18 cf 01    	vinsertf128 ymm1,ymm1,xmm7,0x1
  aacf1a:	c5 e8 58 d5          	vaddps xmm2,xmm2,xmm5
  aacf1e:	62 f1 5c 00 5c eb    	vsubps xmm5,xmm20,xmm3
  aacf24:	c5 ed 15 fd          	vunpckhpd ymm7,ymm2,ymm5
  aacf28:	c5 ed 14 d5          	vunpcklpd ymm2,ymm2,ymm5
  aacf2c:	62 f1 5c 00 58 db    	vaddps xmm3,xmm20,xmm3
  aacf32:	c5 f5 14 eb          	vunpcklpd ymm5,ymm1,ymm3
  aacf36:	c5 54 c6 c2 88       	vshufps ymm8,ymm5,ymm2,0x88
  aacf3b:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  aacf41:	c5 d4 c6 d2 dd       	vshufps ymm2,ymm5,ymm2,0xdd
  aacf46:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  aacf4b:	c5 f5 15 cb          	vunpckhpd ymm1,ymm1,ymm3
  aacf4f:	c5 f4 c6 cf 88       	vshufps ymm1,ymm1,ymm7,0x88
  aacf54:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  aacf59:	62 b1 7c 08 58 db    	vaddps xmm3,xmm0,xmm19
  aacf5f:	c4 e3 5d 18 db 01    	vinsertf128 ymm3,ymm4,xmm3,0x1
  aacf65:	62 f1 64 00 5c c0    	vsubps xmm0,xmm19,xmm0
  aacf6b:	c5 a8 58 e6          	vaddps xmm4,xmm10,xmm6
  aacf6f:	c5 fd 15 ec          	vunpckhpd ymm5,ymm0,ymm4
  aacf73:	c5 fd 14 c4          	vunpcklpd ymm0,ymm0,ymm4
  aacf77:	c5 a8 5c e6          	vsubps xmm4,xmm10,xmm6
  aacf7b:	c5 e5 14 f4          	vunpcklpd ymm6,ymm3,ymm4
  aacf7f:	c5 cc c6 f8 88       	vshufps ymm7,ymm6,ymm0,0x88
  aacf84:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  aacf89:	c5 cc c6 c0 dd       	vshufps ymm0,ymm6,ymm0,0xdd
  aacf8e:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  aacf93:	c5 e5 15 dc          	vunpckhpd ymm3,ymm3,ymm4
  aacf97:	c5 e4 c6 dd 88       	vshufps ymm3,ymm3,ymm5,0x88
  aacf9c:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  aacfa1:	c5 fc 10 62 40       	vmovups ymm4,YMMWORD PTR [rdx+0x40]
  aacfa6:	c5 fc 10 6a 60       	vmovups ymm5,YMMWORD PTR [rdx+0x60]
  aacfab:	c5 fc 10 b2 80 00 00 	vmovups ymm6,YMMWORD PTR [rdx+0x80]
  aacfb2:	00 
  aacfb3:	c5 7c 10 8a a0 00 00 	vmovups ymm9,YMMWORD PTR [rdx+0xa0]
  aacfba:	00 
  aacfbb:	c5 6c 59 d4          	vmulps ymm10,ymm2,ymm4
  aacfbf:	c4 62 7d bc d5       	vfnmadd231ps ymm10,ymm0,ymm5
  aacfc4:	c5 74 59 de          	vmulps ymm11,ymm1,ymm6
  aacfc8:	c4 42 65 bc d9       	vfnmadd231ps ymm11,ymm3,ymm9
  aacfcd:	c4 41 2c 58 e3       	vaddps ymm12,ymm10,ymm11
  aacfd2:	c5 fc 59 c4          	vmulps ymm0,ymm0,ymm4
  aacfd6:	c4 e2 6d b8 c5       	vfmadd231ps ymm0,ymm2,ymm5
  aacfdb:	c5 e4 59 d6          	vmulps ymm2,ymm3,ymm6
  aacfdf:	c4 c2 75 b8 d1       	vfmadd231ps ymm2,ymm1,ymm9
  aacfe4:	c5 fc 58 ca          	vaddps ymm1,ymm0,ymm2
  aacfe8:	c4 e2 7d 18 1d 6f 84 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff5c846f]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  aacfef:	5c ff 
  aacff1:	c5 fc 28 e3          	vmovaps ymm4,ymm3
  aacff5:	c4 c2 1d ac e0       	vfnmadd213ps ymm4,ymm12,ymm8
  aacffa:	c5 fc 5c c2          	vsubps ymm0,ymm0,ymm2
  aacffe:	c4 e2 7d 18 15 cd 82 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff5c82cd]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  aad005:	5c ff 
  aad007:	c5 fc 59 c2          	vmulps ymm0,ymm0,ymm2
  aad00b:	c5 dc 58 e8          	vaddps ymm5,ymm4,ymm0
  aad00f:	c4 e2 75 ac df       	vfnmadd213ps ymm3,ymm1,ymm7
  aad014:	c4 c1 2c 5c f3       	vsubps ymm6,ymm10,ymm11
  aad019:	c5 cc 59 d2          	vmulps ymm2,ymm6,ymm2
  aad01d:	c5 e4 5c f2          	vsubps ymm6,ymm3,ymm2
  aad021:	c5 dc 5c c0          	vsubps ymm0,ymm4,ymm0
  aad025:	c5 e4 58 d2          	vaddps ymm2,ymm3,ymm2
  aad029:	c5 c4 58 c9          	vaddps ymm1,ymm7,ymm1
  aad02d:	c4 c1 3c 58 dc       	vaddps ymm3,ymm8,ymm12
  aad032:	c5 fc 28 25 a6 a1 5c 	vmovaps ymm4,YMMWORD PTR [rip+0xffffffffff5ca1a6]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  aad039:	ff 
  aad03a:	c4 e3 7d 19 cf 01    	vextractf128 xmm7,ymm1,0x1
  aad040:	62 f2 5d 28 7f cb    	vpermt2ps ymm1,ymm4,ymm3
  aad046:	c5 fc 11 0e          	vmovups YMMWORD PTR [rsi],ymm1
  aad04a:	c4 e3 7d 19 d9 01    	vextractf128 xmm1,ymm3,0x1
  aad050:	c5 c0 14 c9          	vunpcklps xmm1,xmm7,xmm1
  aad054:	c5 f8 13 4e 20       	vmovlps QWORD PTR [rsi+0x20],xmm1
  aad059:	c4 e3 7d 19 f1 01    	vextractf128 xmm1,ymm6,0x1
  aad05f:	62 f2 5d 28 7f f5    	vpermt2ps ymm6,ymm4,ymm5
  aad065:	c5 fc 11 76 28       	vmovups YMMWORD PTR [rsi+0x28],ymm6
  aad06a:	c4 e3 7d 19 eb 01    	vextractf128 xmm3,ymm5,0x1
  aad070:	c5 f0 14 cb          	vunpcklps xmm1,xmm1,xmm3
  aad074:	c5 f8 13 4e 48       	vmovlps QWORD PTR [rsi+0x48],xmm1
  aad079:	62 f2 6d 28 77 e0    	vpermi2ps ymm4,ymm2,ymm0
  aad07f:	c5 fc 11 66 50       	vmovups YMMWORD PTR [rsi+0x50],ymm4
  aad084:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  aad08a:	c4 e3 7d 19 d1 01    	vextractf128 xmm1,ymm2,0x1
  aad090:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  aad094:	c5 f8 13 46 70       	vmovlps QWORD PTR [rsi+0x70],xmm0
  aad099:	c5 f8 77             	vzeroupper
  aad09c:	c3                   	ret
