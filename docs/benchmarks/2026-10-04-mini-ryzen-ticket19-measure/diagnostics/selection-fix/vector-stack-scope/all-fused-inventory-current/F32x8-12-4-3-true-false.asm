
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000006c70c0 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  6c70c0:	55                   	push   rbp
  6c70c1:	48 89 e5             	mov    rbp,rsp
  6c70c4:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  6c70c8:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  6c70cf:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  6c70d4:	48 8d 44 24 40       	lea    rax,[rsp+0x40]
  6c70d9:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  6c70de:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  6c70e3:	c5 fb 10 47 10       	vmovsd xmm0,QWORD PTR [rdi+0x10]
  6c70e8:	c4 e3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm0,0x1
  6c70ee:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  6c70f2:	c4 e3 7d 0c c1 c0    	vblendps ymm0,ymm0,ymm1,0xc0
  6c70f8:	c5 fb 10 57 28       	vmovsd xmm2,QWORD PTR [rdi+0x28]
  6c70fd:	c4 e3 7d 18 d2 01    	vinsertf128 ymm2,ymm0,xmm2,0x1
  6c7103:	c4 e3 6d 0c d1 c0    	vblendps ymm2,ymm2,ymm1,0xc0
  6c7109:	c5 fb 10 5f 40       	vmovsd xmm3,QWORD PTR [rdi+0x40]
  6c710e:	c4 e3 7d 18 db 01    	vinsertf128 ymm3,ymm0,xmm3,0x1
  6c7114:	c4 e3 65 0c d9 c0    	vblendps ymm3,ymm3,ymm1,0xc0
  6c711a:	c5 f8 10 27          	vmovups xmm4,XMMWORD PTR [rdi]
  6c711e:	c5 f8 10 6f 18       	vmovups xmm5,XMMWORD PTR [rdi+0x18]
  6c7123:	c5 f8 10 77 30       	vmovups xmm6,XMMWORD PTR [rdi+0x30]
  6c7128:	c5 f8 10 7f 48       	vmovups xmm7,XMMWORD PTR [rdi+0x48]
  6c712d:	c5 7b 10 47 58       	vmovsd xmm8,QWORD PTR [rdi+0x58]
  6c7132:	c4 43 7d 18 c0 01    	vinsertf128 ymm8,ymm0,xmm8,0x1
  6c7138:	c4 e3 3d 0c c9 c0    	vblendps ymm1,ymm8,ymm1,0xc0
  6c713e:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  6c7144:	c5 58 c6 c0 dd       	vshufps xmm8,xmm4,xmm0,0xdd
  6c7149:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  6c714f:	c5 48 c6 cb dd       	vshufps xmm9,xmm6,xmm3,0xdd
  6c7154:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  6c715a:	c5 50 c6 d2 dd       	vshufps xmm10,xmm5,xmm2,0xdd
  6c715f:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  6c7165:	c5 40 c6 d9 dd       	vshufps xmm11,xmm7,xmm1,0xdd
  6c716a:	c5 d8 c6 c0 88       	vshufps xmm0,xmm4,xmm0,0x88
  6c716f:	c5 c8 c6 db 88       	vshufps xmm3,xmm6,xmm3,0x88
  6c7174:	c5 d0 c6 ea 88       	vshufps xmm5,xmm5,xmm2,0x88
  6c7179:	c5 c0 c6 c9 88       	vshufps xmm1,xmm7,xmm1,0x88
  6c717e:	c4 c1 3c 58 f9       	vaddps ymm7,ymm8,ymm9
  6c7183:	c4 41 2c 58 e3       	vaddps ymm12,ymm10,ymm11
  6c7188:	c5 fc 58 d3          	vaddps ymm2,ymm0,ymm3
  6c718c:	c5 d4 58 e1          	vaddps ymm4,ymm5,ymm1
  6c7190:	c4 41 3c 5c c1       	vsubps ymm8,ymm8,ymm9
  6c7195:	c5 d4 5c c9          	vsubps ymm1,ymm5,ymm1
  6c7199:	c5 fc 5c eb          	vsubps ymm5,ymm0,ymm3
  6c719d:	c4 c1 24 5c f2       	vsubps ymm6,ymm11,ymm10
  6c71a2:	c5 98 58 c7          	vaddps xmm0,xmm12,xmm7
  6c71a6:	c5 b8 58 d9          	vaddps xmm3,xmm8,xmm1
  6c71aa:	c4 c1 40 5c fc       	vsubps xmm7,xmm7,xmm12
  6c71af:	c5 b8 5c c9          	vsubps xmm1,xmm8,xmm1
  6c71b3:	c5 7d 15 c7          	vunpckhpd ymm8,ymm0,ymm7
  6c71b7:	c5 fd 14 ff          	vunpcklpd ymm7,ymm0,ymm7
  6c71bb:	c5 e5 15 c1          	vunpckhpd ymm0,ymm3,ymm1
  6c71bf:	c5 3c c6 c0 88       	vshufps ymm8,ymm8,ymm0,0x88
  6c71c4:	c5 e5 14 c9          	vunpcklpd ymm1,ymm3,ymm1
  6c71c8:	c5 c4 c6 c1 88       	vshufps ymm0,ymm7,ymm1,0x88
  6c71cd:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  6c71d2:	c5 c4 c6 c9 dd       	vshufps ymm1,ymm7,ymm1,0xdd
  6c71d7:	c5 f4 c6 d9 d8       	vshufps ymm3,ymm1,ymm1,0xd8
  6c71dc:	c4 c1 3c c6 c8 d8    	vshufps ymm1,ymm8,ymm8,0xd8
  6c71e2:	c5 e8 58 fc          	vaddps xmm7,xmm2,xmm4
  6c71e6:	c5 48 58 c5          	vaddps xmm8,xmm6,xmm5
  6c71ea:	c5 e8 5c d4          	vsubps xmm2,xmm2,xmm4
  6c71ee:	c5 d0 5c e6          	vsubps xmm4,xmm5,xmm6
  6c71f2:	c5 c5 15 ea          	vunpckhpd ymm5,ymm7,ymm2
  6c71f6:	c5 c5 14 f2          	vunpcklpd ymm6,ymm7,ymm2
  6c71fa:	c5 bd 15 d4          	vunpckhpd ymm2,ymm8,ymm4
  6c71fe:	c5 d4 c6 ea 88       	vshufps ymm5,ymm5,ymm2,0x88
  6c7203:	c5 bd 14 e4          	vunpcklpd ymm4,ymm8,ymm4
  6c7207:	c5 cc c6 d4 88       	vshufps ymm2,ymm6,ymm4,0x88
  6c720c:	c5 ec c6 d2 d8       	vshufps ymm2,ymm2,ymm2,0xd8
  6c7211:	c5 cc c6 e4 dd       	vshufps ymm4,ymm6,ymm4,0xdd
  6c7216:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  6c721b:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  6c7220:	c5 fc 10 72 40       	vmovups ymm6,YMMWORD PTR [rdx+0x40]
  6c7225:	c5 fc 10 7a 60       	vmovups ymm7,YMMWORD PTR [rdx+0x60]
  6c722a:	c5 7c 10 82 80 00 00 	vmovups ymm8,YMMWORD PTR [rdx+0x80]
  6c7231:	00 
  6c7232:	c5 7c 10 8a a0 00 00 	vmovups ymm9,YMMWORD PTR [rdx+0xa0]
  6c7239:	00 
  6c723a:	c5 4c 59 d3          	vmulps ymm10,ymm6,ymm3
  6c723e:	c4 62 5d bc d7       	vfnmadd231ps ymm10,ymm4,ymm7
  6c7243:	c5 3c 59 d9          	vmulps ymm11,ymm8,ymm1
  6c7247:	c4 42 55 bc d9       	vfnmadd231ps ymm11,ymm5,ymm9
  6c724c:	c4 41 2c 58 e3       	vaddps ymm12,ymm10,ymm11
  6c7251:	c5 cc 59 e4          	vmulps ymm4,ymm6,ymm4
  6c7255:	c4 e2 65 b8 e7       	vfmadd231ps ymm4,ymm3,ymm7
  6c725a:	c5 bc 59 dd          	vmulps ymm3,ymm8,ymm5
  6c725e:	c4 c2 75 b8 d9       	vfmadd231ps ymm3,ymm1,ymm9
  6c7263:	c4 e2 7d 18 0d f4 e1 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff9ae1f4]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6c726a:	9a ff 
  6c726c:	c5 dc 58 eb          	vaddps ymm5,ymm4,ymm3
  6c7270:	c5 fc 28 f1          	vmovaps ymm6,ymm1
  6c7274:	c4 e2 1d ac f0       	vfnmadd213ps ymm6,ymm12,ymm0
  6c7279:	c5 dc 5c db          	vsubps ymm3,ymm4,ymm3
  6c727d:	c4 e2 7d 18 25 4e e0 	vbroadcastss ymm4,DWORD PTR [rip+0xffffffffff9ae04e]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6c7284:	9a ff 
  6c7286:	c5 e4 59 dc          	vmulps ymm3,ymm3,ymm4
  6c728a:	c4 e2 55 ac ca       	vfnmadd213ps ymm1,ymm5,ymm2
  6c728f:	c4 c1 2c 5c fb       	vsubps ymm7,ymm10,ymm11
  6c7294:	c5 c4 59 e4          	vmulps ymm4,ymm7,ymm4
  6c7298:	c5 98 58 c0          	vaddps xmm0,xmm12,xmm0
  6c729c:	c5 d0 58 d2          	vaddps xmm2,xmm5,xmm2
  6c72a0:	c5 e8 14 e8          	vunpcklps xmm5,xmm2,xmm0
  6c72a4:	c5 e8 15 c0          	vunpckhps xmm0,xmm2,xmm0
  6c72a8:	c5 f8 11 46 10       	vmovups XMMWORD PTR [rsi+0x10],xmm0
  6c72ad:	c5 f8 11 2e          	vmovups XMMWORD PTR [rsi],xmm5
  6c72b1:	c5 c8 58 c3          	vaddps xmm0,xmm6,xmm3
  6c72b5:	c5 f0 5c d4          	vsubps xmm2,xmm1,xmm4
  6c72b9:	c5 e8 14 e8          	vunpcklps xmm5,xmm2,xmm0
  6c72bd:	c5 e8 15 c0          	vunpckhps xmm0,xmm2,xmm0
  6c72c1:	c5 f8 11 46 30       	vmovups XMMWORD PTR [rsi+0x30],xmm0
  6c72c6:	c5 f8 11 6e 20       	vmovups XMMWORD PTR [rsi+0x20],xmm5
  6c72cb:	c5 c8 5c c3          	vsubps xmm0,xmm6,xmm3
  6c72cf:	c5 f0 58 cc          	vaddps xmm1,xmm1,xmm4
  6c72d3:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  6c72d7:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  6c72db:	c5 f8 11 46 50       	vmovups XMMWORD PTR [rsi+0x50],xmm0
  6c72e0:	c5 f8 11 56 40       	vmovups XMMWORD PTR [rsi+0x40],xmm2
  6c72e5:	48 89 ec             	mov    rsp,rbp
  6c72e8:	5d                   	pop    rbp
  6c72e9:	c5 f8 77             	vzeroupper
  6c72ec:	c3                   	ret
