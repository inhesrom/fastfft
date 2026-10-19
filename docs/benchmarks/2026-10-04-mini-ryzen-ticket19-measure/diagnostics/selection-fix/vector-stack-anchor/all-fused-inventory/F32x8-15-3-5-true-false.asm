
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

000000000070fd40 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  70fd40:	c5 fc 10 07          	vmovups ymm0,YMMWORD PTR [rdi]
  70fd44:	c5 fb 10 4f 20       	vmovsd xmm1,QWORD PTR [rdi+0x20]
  70fd49:	c5 fc 10 57 28       	vmovups ymm2,YMMWORD PTR [rdi+0x28]
  70fd4e:	c5 fb 10 5f 48       	vmovsd xmm3,QWORD PTR [rdi+0x48]
  70fd53:	c5 fc 10 67 50       	vmovups ymm4,YMMWORD PTR [rdi+0x50]
  70fd58:	c5 fb 10 6f 70       	vmovsd xmm5,QWORD PTR [rdi+0x70]
  70fd5d:	c5 fc c6 f1 dd       	vshufps ymm6,ymm0,ymm1,0xdd
  70fd62:	c4 e3 fd 01 fe d8    	vpermpd ymm7,ymm6,0xd8
  70fd68:	c5 ec c6 f3 dd       	vshufps ymm6,ymm2,ymm3,0xdd
  70fd6d:	c4 63 fd 01 c6 d8    	vpermpd ymm8,ymm6,0xd8
  70fd73:	c5 dc c6 f5 dd       	vshufps ymm6,ymm4,ymm5,0xdd
  70fd78:	c4 63 fd 01 ce d8    	vpermpd ymm9,ymm6,0xd8
  70fd7e:	c5 fc c6 c1 88       	vshufps ymm0,ymm0,ymm1,0x88
  70fd83:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  70fd89:	c5 ec c6 cb 88       	vshufps ymm1,ymm2,ymm3,0x88
  70fd8e:	c4 e3 fd 01 c9 d8    	vpermpd ymm1,ymm1,0xd8
  70fd94:	c5 dc c6 d5 88       	vshufps ymm2,ymm4,ymm5,0x88
  70fd99:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  70fd9f:	c4 c1 3c 58 d9       	vaddps ymm3,ymm8,ymm9
  70fda4:	c5 e4 58 e7          	vaddps ymm4,ymm3,ymm7
  70fda8:	c5 f4 58 ea          	vaddps ymm5,ymm1,ymm2
  70fdac:	c5 d4 58 f0          	vaddps ymm6,ymm5,ymm0
  70fdb0:	c4 62 7d 18 15 a7 56 	vbroadcastss ymm10,DWORD PTR [rip+0xffffffffff9656a7]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  70fdb7:	96 ff 
  70fdb9:	c4 e2 2d ac df       	vfnmadd213ps ymm3,ymm10,ymm7
  70fdbe:	c5 f4 5c ca          	vsubps ymm1,ymm1,ymm2
  70fdc2:	c4 e2 7d 18 15 09 55 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff965509]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  70fdc9:	96 ff 
  70fdcb:	c5 f4 59 fa          	vmulps ymm7,ymm1,ymm2
  70fdcf:	c5 64 58 df          	vaddps ymm11,ymm3,ymm7
  70fdd3:	c4 62 55 ac d0       	vfnmadd213ps ymm10,ymm5,ymm0
  70fdd8:	c4 c1 3c 5c c1       	vsubps ymm0,ymm8,ymm9
  70fddd:	c5 fc 59 c2          	vmulps ymm0,ymm0,ymm2
  70fde1:	c5 ac 5c c8          	vsubps ymm1,ymm10,ymm0
  70fde5:	c5 e4 5c d7          	vsubps ymm2,ymm3,ymm7
  70fde9:	c5 ac 58 f8          	vaddps ymm7,ymm10,ymm0
  70fded:	c5 f8 28 c4          	vmovaps xmm0,xmm4
  70fdf1:	c4 e3 7d 19 e3 01    	vextractf128 xmm3,ymm4,0x1
  70fdf7:	c5 78 29 dc          	vmovaps xmm4,xmm11
  70fdfb:	c4 63 7d 19 dd 01    	vextractf128 xmm5,ymm11,0x1
  70fe01:	c5 78 28 c2          	vmovaps xmm8,xmm2
  70fe05:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  70fe0b:	c5 e5 14 d2          	vunpcklpd ymm2,ymm3,ymm2
  70fe0f:	c4 41 7d 15 c8       	vunpckhpd ymm9,ymm0,ymm8
  70fe14:	c4 c1 7d 14 d8       	vunpcklpd ymm3,ymm0,ymm8
  70fe19:	c4 41 7a 7e d3       	vmovq  xmm10,xmm11
  70fe1e:	c5 dd 73 dc 08       	vpsrldq ymm4,ymm4,0x8
  70fe23:	c4 41 38 57 c0       	vxorps xmm8,xmm8,xmm8
  70fe28:	c4 c3 55 0c c0 cc    	vblendps ymm0,ymm5,ymm8,0xcc
  70fe2e:	c5 6c c6 d8 88       	vshufps ymm11,ymm2,ymm0,0x88
  70fe33:	c4 c1 64 c6 c2 88    	vshufps ymm0,ymm3,ymm10,0x88
  70fe39:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  70fe3e:	c5 fc 11 44 24 b8    	vmovups YMMWORD PTR [rsp-0x48],ymm0
  70fe44:	c4 c1 64 c6 d2 dd    	vshufps ymm2,ymm3,ymm10,0xdd
  70fe4a:	c5 ec c6 ea d8       	vshufps ymm5,ymm2,ymm2,0xd8
  70fe4f:	c5 b4 c6 d4 88       	vshufps ymm2,ymm9,ymm4,0x88
  70fe54:	c5 ec c6 da d8       	vshufps ymm3,ymm2,ymm2,0xd8
  70fe59:	c5 b4 c6 d4 dd       	vshufps ymm2,ymm9,ymm4,0xdd
  70fe5e:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  70fe63:	c4 c1 24 c6 e3 d8    	vshufps ymm4,ymm11,ymm11,0xd8
  70fe69:	c5 78 28 ce          	vmovaps xmm9,xmm6
  70fe6d:	c4 e3 7d 19 f6 01    	vextractf128 xmm6,ymm6,0x1
  70fe73:	c5 78 28 d1          	vmovaps xmm10,xmm1
  70fe77:	c4 c3 7d 19 cb 01    	vextractf128 xmm11,ymm1,0x1
  70fe7d:	c5 78 28 e7          	vmovaps xmm12,xmm7
  70fe81:	c4 e3 7d 19 ff 01    	vextractf128 xmm7,ymm7,0x1
  70fe87:	c5 cd 14 f7          	vunpcklpd ymm6,ymm6,ymm7
  70fe8b:	c4 c1 35 15 fc       	vunpckhpd ymm7,ymm9,ymm12
  70fe90:	c4 41 35 14 cc       	vunpcklpd ymm9,ymm9,ymm12
  70fe95:	c5 7a 7e e1          	vmovq  xmm12,xmm1
  70fe99:	c4 c1 2d 73 da 08    	vpsrldq ymm10,ymm10,0x8
  70fe9f:	c4 c3 25 0c c8 cc    	vblendps ymm1,ymm11,ymm8,0xcc
  70fea5:	c5 4c c6 c1 88       	vshufps ymm8,ymm6,ymm1,0x88
  70feaa:	c4 c1 34 c6 cc 88    	vshufps ymm1,ymm9,ymm12,0x88
  70feb0:	c5 f4 c6 c1 d8       	vshufps ymm0,ymm1,ymm1,0xd8
  70feb5:	c5 fc 11 44 24 d8    	vmovups YMMWORD PTR [rsp-0x28],ymm0
  70febb:	c4 c1 34 c6 f4 dd    	vshufps ymm6,ymm9,ymm12,0xdd
  70fec1:	c5 4c c6 ce d8       	vshufps ymm9,ymm6,ymm6,0xd8
  70fec6:	c4 c1 44 c6 f2 88    	vshufps ymm6,ymm7,ymm10,0x88
  70fecc:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  70fed1:	c4 c1 44 c6 fa dd    	vshufps ymm7,ymm7,ymm10,0xdd
  70fed7:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  70fedc:	c4 41 3c c6 d8 d8    	vshufps ymm11,ymm8,ymm8,0xd8
  70fee2:	c5 7c 10 6a 40       	vmovups ymm13,YMMWORD PTR [rdx+0x40]
  70fee7:	c5 7c 10 72 60       	vmovups ymm14,YMMWORD PTR [rdx+0x60]
  70feec:	c5 7c 10 a2 80 00 00 	vmovups ymm12,YMMWORD PTR [rdx+0x80]
  70fef3:	00 
  70fef4:	c5 7c 10 92 a0 00 00 	vmovups ymm10,YMMWORD PTR [rdx+0xa0]
  70fefb:	00 
  70fefc:	c5 14 59 c5          	vmulps ymm8,ymm13,ymm5
  70ff00:	c4 42 35 bc c6       	vfnmadd231ps ymm8,ymm9,ymm14
  70ff05:	c4 41 14 59 e9       	vmulps ymm13,ymm13,ymm9
  70ff0a:	c5 7c 10 ba 00 01 00 	vmovups ymm15,YMMWORD PTR [rdx+0x100]
  70ff11:	00 
  70ff12:	c4 42 55 b8 ee       	vfmadd231ps ymm13,ymm5,ymm14
  70ff17:	c5 fc 10 aa 20 01 00 	vmovups ymm5,YMMWORD PTR [rdx+0x120]
  70ff1e:	00 
  70ff1f:	c5 04 59 cc          	vmulps ymm9,ymm15,ymm4
  70ff23:	c4 62 25 bc cd       	vfnmadd231ps ymm9,ymm11,ymm5
  70ff28:	c4 41 04 59 f3       	vmulps ymm14,ymm15,ymm11
  70ff2d:	c5 7c 10 ba c0 00 00 	vmovups ymm15,YMMWORD PTR [rdx+0xc0]
  70ff34:	00 
  70ff35:	c4 62 5d b8 f5       	vfmadd231ps ymm14,ymm4,ymm5
  70ff3a:	c5 fc 10 82 e0 00 00 	vmovups ymm0,YMMWORD PTR [rdx+0xe0]
  70ff41:	00 
  70ff42:	c5 1c 59 db          	vmulps ymm11,ymm12,ymm3
  70ff46:	c4 42 4d bc da       	vfnmadd231ps ymm11,ymm6,ymm10
  70ff4b:	c5 1c 59 e6          	vmulps ymm12,ymm12,ymm6
  70ff4f:	c4 c1 3c 58 e1       	vaddps ymm4,ymm8,ymm9
  70ff54:	c4 42 65 b8 e2       	vfmadd231ps ymm12,ymm3,ymm10
  70ff59:	c5 04 59 d2          	vmulps ymm10,ymm15,ymm2
  70ff5d:	c4 62 45 bc d0       	vfnmadd231ps ymm10,ymm7,ymm0
  70ff62:	c4 c1 24 58 f2       	vaddps ymm6,ymm11,ymm10
  70ff67:	c5 84 59 df          	vmulps ymm3,ymm15,ymm7
  70ff6b:	c4 c1 14 58 ee       	vaddps ymm5,ymm13,ymm14
  70ff70:	c4 e2 6d b8 d8       	vfmadd231ps ymm3,ymm2,ymm0
  70ff75:	c5 9c 58 fb          	vaddps ymm7,ymm12,ymm3
  70ff79:	c4 e2 7d 18 0d 66 57 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff965766]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  70ff80:	96 ff 
  70ff82:	c4 41 14 5c ee       	vsubps ymm13,ymm13,ymm14
  70ff87:	c5 fc 28 d1          	vmovaps ymm2,ymm1
  70ff8b:	c5 1c 5c e3          	vsubps ymm12,ymm12,ymm3
  70ff8f:	c4 62 7d 18 35 c0 57 	vbroadcastss ymm14,DWORD PTR [rip+0xffffffffff9657c0]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  70ff96:	96 ff 
  70ff98:	c5 fc 10 44 24 b8    	vmovups ymm0,YMMWORD PTR [rsp-0x48]
  70ff9e:	c4 e2 5d a8 d0       	vfmadd213ps ymm2,ymm4,ymm0
  70ffa3:	c4 41 3c 5c f9       	vsubps ymm15,ymm8,ymm9
  70ffa8:	c4 c1 1c 59 de       	vmulps ymm3,ymm12,ymm14
  70ffad:	c4 41 24 5c d2       	vsubps ymm10,ymm11,ymm10
  70ffb2:	c4 62 7d 18 1d e5 53 	vbroadcastss ymm11,DWORD PTR [rip+0xffffffffff9653e5]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  70ffb9:	96 ff 
  70ffbb:	c4 c2 15 b8 db       	vfmadd231ps ymm3,ymm13,ymm11
  70ffc0:	c4 41 14 59 ce       	vmulps ymm9,ymm13,ymm14
  70ffc5:	c4 42 25 bc cc       	vfnmadd231ps ymm9,ymm11,ymm12
  70ffca:	c4 41 2c 59 c6       	vmulps ymm8,ymm10,ymm14
  70ffcf:	c4 42 05 b8 c3       	vfmadd231ps ymm8,ymm15,ymm11
  70ffd4:	c4 41 04 59 e6       	vmulps ymm12,ymm15,ymm14
  70ffd9:	c4 62 7d 18 2d 62 56 	vbroadcastss ymm13,DWORD PTR [rip+0xffffffffff965662]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  70ffe0:	96 ff 
  70ffe2:	c4 c2 4d bc d5       	vfnmadd231ps ymm2,ymm6,ymm13
  70ffe7:	c4 42 2d bc e3       	vfnmadd231ps ymm12,ymm10,ymm11
  70ffec:	c5 7c 28 d9          	vmovaps ymm11,ymm1
  70fff0:	c5 7c 10 7c 24 d8    	vmovups ymm15,YMMWORD PTR [rsp-0x28]
  70fff6:	c4 42 55 a8 df       	vfmadd213ps ymm11,ymm5,ymm15
  70fffb:	c4 42 45 bc dd       	vfnmadd231ps ymm11,ymm7,ymm13
  710000:	c4 41 7c 28 f5       	vmovaps ymm14,ymm13
  710005:	c4 62 5d ac f0       	vfnmadd213ps ymm14,ymm4,ymm0
  71000a:	c4 62 4d b8 f1       	vfmadd231ps ymm14,ymm6,ymm1
  71000f:	c4 42 55 ac ef       	vfnmadd213ps ymm13,ymm5,ymm15
  710014:	c4 62 45 b8 e9       	vfmadd231ps ymm13,ymm7,ymm1
  710019:	c5 d8 58 c0          	vaddps xmm0,xmm4,xmm0
  71001d:	c5 f8 58 c6          	vaddps xmm0,xmm0,xmm6
  710021:	c5 80 58 cd          	vaddps xmm1,xmm15,xmm5
  710025:	c5 f0 58 cf          	vaddps xmm1,xmm1,xmm7
  710029:	c5 f0 14 e0          	vunpcklps xmm4,xmm1,xmm0
  71002d:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  710031:	c5 f8 13 46 10       	vmovlps QWORD PTR [rsi+0x10],xmm0
  710036:	c5 f8 11 26          	vmovups XMMWORD PTR [rsi],xmm4
  71003a:	c5 e8 58 c3          	vaddps xmm0,xmm2,xmm3
  71003e:	c4 c1 20 5c c8       	vsubps xmm1,xmm11,xmm8
  710043:	c5 f0 15 e0          	vunpckhps xmm4,xmm1,xmm0
  710047:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  71004b:	c5 f8 11 46 18       	vmovups XMMWORD PTR [rsi+0x18],xmm0
  710050:	c5 f8 13 66 28       	vmovlps QWORD PTR [rsi+0x28],xmm4
  710055:	c4 c1 08 58 c1       	vaddps xmm0,xmm14,xmm9
  71005a:	c4 c1 10 5c cc       	vsubps xmm1,xmm13,xmm12
  71005f:	c5 f0 15 e0          	vunpckhps xmm4,xmm1,xmm0
  710063:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  710067:	c5 f8 11 46 30       	vmovups XMMWORD PTR [rsi+0x30],xmm0
  71006c:	c5 f8 13 66 40       	vmovlps QWORD PTR [rsi+0x40],xmm4
  710071:	c4 c1 08 5c c1       	vsubps xmm0,xmm14,xmm9
  710076:	c4 c1 10 58 cc       	vaddps xmm1,xmm13,xmm12
  71007b:	c5 f0 15 e0          	vunpckhps xmm4,xmm1,xmm0
  71007f:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  710083:	c5 f8 11 46 48       	vmovups XMMWORD PTR [rsi+0x48],xmm0
  710088:	c5 f8 13 66 58       	vmovlps QWORD PTR [rsi+0x58],xmm4
  71008d:	c5 e8 5c c3          	vsubps xmm0,xmm2,xmm3
  710091:	c4 c1 20 58 c8       	vaddps xmm1,xmm11,xmm8
  710096:	c5 f0 15 d0          	vunpckhps xmm2,xmm1,xmm0
  71009a:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  71009e:	c5 f8 11 46 60       	vmovups XMMWORD PTR [rsi+0x60],xmm0
  7100a3:	c5 f8 13 56 70       	vmovlps QWORD PTR [rsi+0x70],xmm2
  7100a8:	c5 f8 77             	vzeroupper
  7100ab:	c3                   	ret
