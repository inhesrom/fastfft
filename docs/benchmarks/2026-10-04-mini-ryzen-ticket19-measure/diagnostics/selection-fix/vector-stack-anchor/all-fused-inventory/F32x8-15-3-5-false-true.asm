
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000720e00 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  720e00:	48 6b c2 78          	imul   rax,rdx,0x78
  720e04:	31 d2                	xor    edx,edx
  720e06:	c4 e2 7d 18 15 d9 48 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff9548d9]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  720e0d:	95 ff 
  720e0f:	90                   	nop
  720e10:	c5 fc 10 04 17       	vmovups ymm0,YMMWORD PTR [rdi+rdx*1]
  720e15:	c5 fb 10 4c 17 20    	vmovsd xmm1,QWORD PTR [rdi+rdx*1+0x20]
  720e1b:	c5 fc 10 64 17 28    	vmovups ymm4,YMMWORD PTR [rdi+rdx*1+0x28]
  720e21:	c5 fb 10 7c 17 48    	vmovsd xmm7,QWORD PTR [rdi+rdx*1+0x48]
  720e27:	c5 7c 10 44 17 50    	vmovups ymm8,YMMWORD PTR [rdi+rdx*1+0x50]
  720e2d:	c5 7b 10 4c 17 70    	vmovsd xmm9,QWORD PTR [rdi+rdx*1+0x70]
  720e33:	c5 7c c6 d1 88       	vshufps ymm10,ymm0,ymm1,0x88
  720e38:	c4 43 fd 01 d2 d8    	vpermpd ymm10,ymm10,0xd8
  720e3e:	c5 5c c6 df 88       	vshufps ymm11,ymm4,ymm7,0x88
  720e43:	c4 43 fd 01 db d8    	vpermpd ymm11,ymm11,0xd8
  720e49:	c4 41 3c c6 e1 88    	vshufps ymm12,ymm8,ymm9,0x88
  720e4f:	c4 43 fd 01 e4 d8    	vpermpd ymm12,ymm12,0xd8
  720e55:	c5 fc c6 c1 dd       	vshufps ymm0,ymm0,ymm1,0xdd
  720e5a:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  720e60:	c5 dc c6 cf dd       	vshufps ymm1,ymm4,ymm7,0xdd
  720e65:	c4 e3 fd 01 c9 d8    	vpermpd ymm1,ymm1,0xd8
  720e6b:	c4 c1 3c c6 e1 dd    	vshufps ymm4,ymm8,ymm9,0xdd
  720e71:	c4 e3 fd 01 e4 d8    	vpermpd ymm4,ymm4,0xd8
  720e77:	c4 c1 24 58 fc       	vaddps ymm7,ymm11,ymm12
  720e7c:	c5 2c 58 c7          	vaddps ymm8,ymm10,ymm7
  720e80:	c5 74 58 cc          	vaddps ymm9,ymm1,ymm4
  720e84:	c5 34 58 e8          	vaddps ymm13,ymm9,ymm0
  720e88:	c4 e2 7d 18 1d cf 45 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff9545cf]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  720e8f:	95 ff 
  720e91:	c4 c2 65 ac fa       	vfnmadd213ps ymm7,ymm3,ymm10
  720e96:	c5 f4 5c cc          	vsubps ymm1,ymm1,ymm4
  720e9a:	c4 e2 7d 18 2d 31 44 	vbroadcastss ymm5,DWORD PTR [rip+0xffffffffff954431]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  720ea1:	95 ff 
  720ea3:	c5 f4 59 cd          	vmulps ymm1,ymm1,ymm5
  720ea7:	c5 c4 58 e1          	vaddps ymm4,ymm7,ymm1
  720eab:	c4 62 65 ac c8       	vfnmadd213ps ymm9,ymm3,ymm0
  720eb0:	c4 c1 24 5c c4       	vsubps ymm0,ymm11,ymm12
  720eb5:	c5 fc 59 c5          	vmulps ymm0,ymm0,ymm5
  720eb9:	c5 34 5c e0          	vsubps ymm12,ymm9,ymm0
  720ebd:	c5 c4 5c c9          	vsubps ymm1,ymm7,ymm1
  720ec1:	c5 34 58 f0          	vaddps ymm14,ymm9,ymm0
  720ec5:	c5 78 29 c0          	vmovaps xmm0,xmm8
  720ec9:	c4 63 7d 19 c7 01    	vextractf128 xmm7,ymm8,0x1
  720ecf:	c5 78 28 c4          	vmovaps xmm8,xmm4
  720ed3:	c4 c3 7d 19 e1 01    	vextractf128 xmm9,ymm4,0x1
  720ed9:	c5 78 28 d1          	vmovaps xmm10,xmm1
  720edd:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  720ee3:	c5 c5 14 c9          	vunpcklpd ymm1,ymm7,ymm1
  720ee7:	c4 41 7d 15 fa       	vunpckhpd ymm15,ymm0,ymm10
  720eec:	c4 c1 7d 14 c2       	vunpcklpd ymm0,ymm0,ymm10
  720ef1:	c5 fa 7e e4          	vmovq  xmm4,xmm4
  720ef5:	c4 c1 3d 73 d8 08    	vpsrldq ymm8,ymm8,0x8
  720efb:	c5 e0 57 db          	vxorps xmm3,xmm3,xmm3
  720eff:	c4 e3 35 0c fb cc    	vblendps ymm7,ymm9,ymm3,0xcc
  720f05:	c5 f4 c6 cf 88       	vshufps ymm1,ymm1,ymm7,0x88
  720f0a:	c5 fc c6 fc 88       	vshufps ymm7,ymm0,ymm4,0x88
  720f0f:	c5 fc c6 c4 dd       	vshufps ymm0,ymm0,ymm4,0xdd
  720f14:	c5 7c c6 d8 d8       	vshufps ymm11,ymm0,ymm0,0xd8
  720f19:	c4 c1 04 c6 c0 88    	vshufps ymm0,ymm15,ymm8,0x88
  720f1f:	c5 7c c6 c8 d8       	vshufps ymm9,ymm0,ymm0,0xd8
  720f24:	c4 c1 04 c6 c0 dd    	vshufps ymm0,ymm15,ymm8,0xdd
  720f2a:	c5 7c c6 c0 d8       	vshufps ymm8,ymm0,ymm0,0xd8
  720f2f:	c5 74 c6 d1 d8       	vshufps ymm10,ymm1,ymm1,0xd8
  720f34:	c5 78 29 e8          	vmovaps xmm0,xmm13
  720f38:	c4 63 7d 19 e9 01    	vextractf128 xmm1,ymm13,0x1
  720f3e:	c5 78 29 e4          	vmovaps xmm4,xmm12
  720f42:	c4 43 7d 19 e5 01    	vextractf128 xmm13,ymm12,0x1
  720f48:	c4 41 78 28 fe       	vmovaps xmm15,xmm14
  720f4d:	c4 43 7d 19 f6 01    	vextractf128 xmm14,ymm14,0x1
  720f53:	c4 c1 75 14 ce       	vunpcklpd ymm1,ymm1,ymm14
  720f58:	c4 41 7d 15 f7       	vunpckhpd ymm14,ymm0,ymm15
  720f5d:	c4 c1 7d 14 c7       	vunpcklpd ymm0,ymm0,ymm15
  720f62:	c4 41 7a 7e e4       	vmovq  xmm12,xmm12
  720f67:	c5 dd 73 dc 08       	vpsrldq ymm4,ymm4,0x8
  720f6c:	c4 63 15 0c eb cc    	vblendps ymm13,ymm13,ymm3,0xcc
  720f72:	c4 c1 74 c6 cd 88    	vshufps ymm1,ymm1,ymm13,0x88
  720f78:	c4 41 7c c6 ec 88    	vshufps ymm13,ymm0,ymm12,0x88
  720f7e:	c4 c1 7c c6 c4 dd    	vshufps ymm0,ymm0,ymm12,0xdd
  720f84:	c5 7c c6 f8 d8       	vshufps ymm15,ymm0,ymm0,0xd8
  720f89:	c5 8c c6 c4 88       	vshufps ymm0,ymm14,ymm4,0x88
  720f8e:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  720f93:	c5 8c c6 e4 dd       	vshufps ymm4,ymm14,ymm4,0xdd
  720f98:	c5 5c c6 f4 d8       	vshufps ymm14,ymm4,ymm4,0xd8
  720f9d:	c5 f4 c6 e9 d8       	vshufps ymm5,ymm1,ymm1,0xd8
  720fa2:	c5 fc 10 49 40       	vmovups ymm1,YMMWORD PTR [rcx+0x40]
  720fa7:	c5 fc 10 61 60       	vmovups ymm4,YMMWORD PTR [rcx+0x60]
  720fac:	c5 24 59 e1          	vmulps ymm12,ymm11,ymm1
  720fb0:	c4 62 05 bc e4       	vfnmadd231ps ymm12,ymm15,ymm4
  720fb5:	c5 84 59 c9          	vmulps ymm1,ymm15,ymm1
  720fb9:	c5 7c 10 b9 00 01 00 	vmovups ymm15,YMMWORD PTR [rcx+0x100]
  720fc0:	00 
  720fc1:	c4 e2 25 b8 cc       	vfmadd231ps ymm1,ymm11,ymm4
  720fc6:	c5 7c 10 99 20 01 00 	vmovups ymm11,YMMWORD PTR [rcx+0x120]
  720fcd:	00 
  720fce:	c4 c1 04 59 e2       	vmulps ymm4,ymm15,ymm10
  720fd3:	c4 c2 55 bc e3       	vfnmadd231ps ymm4,ymm5,ymm11
  720fd8:	c5 84 59 ed          	vmulps ymm5,ymm15,ymm5
  720fdc:	c5 7c 10 b9 80 00 00 	vmovups ymm15,YMMWORD PTR [rcx+0x80]
  720fe3:	00 
  720fe4:	c4 c2 2d b8 eb       	vfmadd231ps ymm5,ymm10,ymm11
  720fe9:	c5 7c 10 99 a0 00 00 	vmovups ymm11,YMMWORD PTR [rcx+0xa0]
  720ff0:	00 
  720ff1:	c4 41 04 59 d1       	vmulps ymm10,ymm15,ymm9
  720ff6:	c4 42 7d bc d3       	vfnmadd231ps ymm10,ymm0,ymm11
  720ffb:	c5 04 59 f8          	vmulps ymm15,ymm15,ymm0
  720fff:	c5 fc 10 81 c0 00 00 	vmovups ymm0,YMMWORD PTR [rcx+0xc0]
  721006:	00 
  721007:	c4 42 35 b8 fb       	vfmadd231ps ymm15,ymm9,ymm11
  72100c:	c5 7c 10 99 e0 00 00 	vmovups ymm11,YMMWORD PTR [rcx+0xe0]
  721013:	00 
  721014:	c5 bc 59 d8          	vmulps ymm3,ymm8,ymm0
  721018:	c4 c2 0d bc db       	vfnmadd231ps ymm3,ymm14,ymm11
  72101d:	c5 8c 59 f0          	vmulps ymm6,ymm14,ymm0
  721021:	c5 c4 c6 c7 d8       	vshufps ymm0,ymm7,ymm7,0xd8
  721026:	c5 fc 11 44 24 d8    	vmovups YMMWORD PTR [rsp-0x28],ymm0
  72102c:	c4 41 14 c6 f5 d8    	vshufps ymm14,ymm13,ymm13,0xd8
  721032:	c4 c2 3d b8 f3       	vfmadd231ps ymm6,ymm8,ymm11
  721037:	c5 1c 58 dc          	vaddps ymm11,ymm12,ymm4
  72103b:	c5 f4 58 c5          	vaddps ymm0,ymm1,ymm5
  72103f:	c5 f4 5c ed          	vsubps ymm5,ymm1,ymm5
  721043:	c5 84 58 ce          	vaddps ymm1,ymm15,ymm6
  721047:	c5 84 5c f6          	vsubps ymm6,ymm15,ymm6
  72104b:	c5 2c 58 eb          	vaddps ymm13,ymm10,ymm3
  72104f:	c5 9c 5c e4          	vsubps ymm4,ymm12,ymm4
  721053:	c4 62 7d 18 3d fc 46 	vbroadcastss ymm15,DWORD PTR [rip+0xffffffffff9546fc]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  72105a:	95 ff 
  72105c:	c5 04 59 ce          	vmulps ymm9,ymm15,ymm6
  721060:	c4 e2 7d 18 3d 37 43 	vbroadcastss ymm7,DWORD PTR [rip+0xffffffffff954337]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  721067:	95 ff 
  721069:	c4 62 55 b8 cf       	vfmadd231ps ymm9,ymm5,ymm7
  72106e:	c5 ac 5c db          	vsubps ymm3,ymm10,ymm3
  721072:	c5 7c 28 c2          	vmovaps ymm8,ymm2
  721076:	c4 42 7d a8 c6       	vfmadd213ps ymm8,ymm0,ymm14
  72107b:	c5 04 59 e5          	vmulps ymm12,ymm15,ymm5
  72107f:	c4 62 45 bc e6       	vfnmadd231ps ymm12,ymm7,ymm6
  721084:	c5 04 59 d3          	vmulps ymm10,ymm15,ymm3
  721088:	c4 62 5d b8 d7       	vfmadd231ps ymm10,ymm4,ymm7
  72108d:	c5 04 59 fc          	vmulps ymm15,ymm15,ymm4
  721091:	c4 62 45 bc fb       	vfnmadd231ps ymm15,ymm7,ymm3
  721096:	c4 e2 7d 18 35 a5 45 	vbroadcastss ymm6,DWORD PTR [rip+0xffffffffff9545a5]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  72109d:	95 ff 
  72109f:	c5 fc 28 e6          	vmovaps ymm4,ymm6
  7210a3:	c4 c2 7d ac e6       	vfnmadd213ps ymm4,ymm0,ymm14
  7210a8:	c5 88 58 d8          	vaddps xmm3,xmm14,xmm0
  7210ac:	c5 fc 28 c2          	vmovaps ymm0,ymm2
  7210b0:	c5 fc 10 6c 24 d8    	vmovups ymm5,YMMWORD PTR [rsp-0x28]
  7210b6:	c4 e2 25 a8 c5       	vfmadd213ps ymm0,ymm11,ymm5
  7210bb:	c4 62 75 bc c6       	vfnmadd231ps ymm8,ymm1,ymm6
  7210c0:	c4 e2 75 b8 e2       	vfmadd231ps ymm4,ymm1,ymm2
  7210c5:	c5 e0 58 d9          	vaddps xmm3,xmm3,xmm1
  7210c9:	c5 fc 28 ce          	vmovaps ymm1,ymm6
  7210cd:	c4 e2 25 ac cd       	vfnmadd213ps ymm1,ymm11,ymm5
  7210d2:	c5 a0 58 ed          	vaddps xmm5,xmm11,xmm5
  7210d6:	c4 e2 15 bc c6       	vfnmadd231ps ymm0,ymm13,ymm6
  7210db:	c4 e2 15 b8 ca       	vfmadd231ps ymm1,ymm13,ymm2
  7210e0:	c5 90 58 ed          	vaddps xmm5,xmm13,xmm5
  7210e4:	c5 d0 14 f3          	vunpcklps xmm6,xmm5,xmm3
  7210e8:	c5 d0 15 db          	vunpckhps xmm3,xmm5,xmm3
  7210ec:	c5 f8 13 5c 16 10    	vmovlps QWORD PTR [rsi+rdx*1+0x10],xmm3
  7210f2:	c5 f8 11 34 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm6
  7210f7:	c4 c1 38 5c da       	vsubps xmm3,xmm8,xmm10
  7210fc:	c5 b0 58 e8          	vaddps xmm5,xmm9,xmm0
  721100:	c5 d0 15 f3          	vunpckhps xmm6,xmm5,xmm3
  721104:	c5 d0 14 db          	vunpcklps xmm3,xmm5,xmm3
  721108:	c5 f8 11 5c 16 18    	vmovups XMMWORD PTR [rsi+rdx*1+0x18],xmm3
  72110e:	c5 f8 13 74 16 28    	vmovlps QWORD PTR [rsi+rdx*1+0x28],xmm6
  721114:	c4 c1 58 5c df       	vsubps xmm3,xmm4,xmm15
  721119:	c5 98 58 e9          	vaddps xmm5,xmm12,xmm1
  72111d:	c5 d0 15 f3          	vunpckhps xmm6,xmm5,xmm3
  721121:	c5 d0 14 db          	vunpcklps xmm3,xmm5,xmm3
  721125:	c5 f8 11 5c 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm3
  72112b:	c5 f8 13 74 16 40    	vmovlps QWORD PTR [rsi+rdx*1+0x40],xmm6
  721131:	c5 80 58 dc          	vaddps xmm3,xmm15,xmm4
  721135:	c4 c1 70 5c cc       	vsubps xmm1,xmm1,xmm12
  72113a:	c5 f0 15 e3          	vunpckhps xmm4,xmm1,xmm3
  72113e:	c5 f0 14 cb          	vunpcklps xmm1,xmm1,xmm3
  721142:	c5 f8 11 4c 16 48    	vmovups XMMWORD PTR [rsi+rdx*1+0x48],xmm1
  721148:	c5 f8 13 64 16 58    	vmovlps QWORD PTR [rsi+rdx*1+0x58],xmm4
  72114e:	c4 c1 38 58 ca       	vaddps xmm1,xmm8,xmm10
  721153:	c4 c1 78 5c c1       	vsubps xmm0,xmm0,xmm9
  721158:	c5 f8 15 d9          	vunpckhps xmm3,xmm0,xmm1
  72115c:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  721160:	c5 f8 11 44 16 60    	vmovups XMMWORD PTR [rsi+rdx*1+0x60],xmm0
  721166:	c5 f8 13 5c 16 70    	vmovlps QWORD PTR [rsi+rdx*1+0x70],xmm3
  72116c:	48 83 c2 78          	add    rdx,0x78
  721170:	48 39 d0             	cmp    rax,rdx
  721173:	0f 85 97 fc ff ff    	jne    720e10 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle+0x10>
  721179:	c5 f8 77             	vzeroupper
  72117c:	c3                   	ret
