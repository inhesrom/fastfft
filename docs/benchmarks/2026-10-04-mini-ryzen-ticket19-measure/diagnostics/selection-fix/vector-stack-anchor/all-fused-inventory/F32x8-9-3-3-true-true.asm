
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000006c40c0 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  6c40c0:	48 c1 e2 03          	shl    rdx,0x3
  6c40c4:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  6c40c8:	31 d2                	xor    edx,edx
  6c40ca:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  6c40ce:	c4 e2 7d 18 0d 89 13 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff9b1389]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6c40d5:	9b ff 
  6c40d7:	c4 e2 7d 18 15 f4 11 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff9b11f4]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6c40de:	9b ff 
  6c40e0:	c5 fb 10 5c 17 10    	vmovsd xmm3,QWORD PTR [rdi+rdx*1+0x10]
  6c40e6:	c4 e3 7d 18 db 01    	vinsertf128 ymm3,ymm0,xmm3,0x1
  6c40ec:	c4 e3 65 0c d8 c0    	vblendps ymm3,ymm3,ymm0,0xc0
  6c40f2:	c5 fb 10 64 17 28    	vmovsd xmm4,QWORD PTR [rdi+rdx*1+0x28]
  6c40f8:	c4 e3 7d 18 e4 01    	vinsertf128 ymm4,ymm0,xmm4,0x1
  6c40fe:	c4 e3 5d 0c e0 c0    	vblendps ymm4,ymm4,ymm0,0xc0
  6c4104:	c5 f8 10 34 17       	vmovups xmm6,XMMWORD PTR [rdi+rdx*1]
  6c4109:	c5 f8 10 7c 17 18    	vmovups xmm7,XMMWORD PTR [rdi+rdx*1+0x18]
  6c410f:	c5 78 10 44 17 30    	vmovups xmm8,XMMWORD PTR [rdi+rdx*1+0x30]
  6c4115:	c5 fb 10 6c 17 40    	vmovsd xmm5,QWORD PTR [rdi+rdx*1+0x40]
  6c411b:	c4 e3 7d 18 ed 01    	vinsertf128 ymm5,ymm0,xmm5,0x1
  6c4121:	c4 e3 55 0c e8 c0    	vblendps ymm5,ymm5,ymm0,0xc0
  6c4127:	c4 c3 7d 19 d9 01    	vextractf128 xmm9,ymm3,0x1
  6c412d:	c4 c1 48 c6 d9 dd    	vshufps xmm3,xmm6,xmm9,0xdd
  6c4133:	c4 c3 7d 19 e2 01    	vextractf128 xmm10,ymm4,0x1
  6c4139:	c4 c1 40 c6 e2 dd    	vshufps xmm4,xmm7,xmm10,0xdd
  6c413f:	c4 c3 7d 19 eb 01    	vextractf128 xmm11,ymm5,0x1
  6c4145:	c4 c1 38 c6 eb dd    	vshufps xmm5,xmm8,xmm11,0xdd
  6c414b:	c4 c1 48 c6 f1 88    	vshufps xmm6,xmm6,xmm9,0x88
  6c4151:	c4 41 40 c6 ca 88    	vshufps xmm9,xmm7,xmm10,0x88
  6c4157:	c4 41 38 c6 d3 88    	vshufps xmm10,xmm8,xmm11,0x88
  6c415d:	c5 dc 58 fd          	vaddps ymm7,ymm4,ymm5
  6c4161:	c4 41 34 58 da       	vaddps ymm11,ymm9,ymm10
  6c4166:	c5 7c 28 c1          	vmovaps ymm8,ymm1
  6c416a:	c4 62 45 ac c3       	vfnmadd213ps ymm8,ymm7,ymm3
  6c416f:	c4 41 34 5c ca       	vsubps ymm9,ymm9,ymm10
  6c4174:	c5 34 59 ca          	vmulps ymm9,ymm9,ymm2
  6c4178:	c5 20 58 d6          	vaddps xmm10,xmm11,xmm6
  6c417c:	c4 e2 25 bc f1       	vfnmadd231ps ymm6,ymm11,ymm1
  6c4181:	c5 dc 5c e5          	vsubps ymm4,ymm4,ymm5
  6c4185:	c5 dc 59 e2          	vmulps ymm4,ymm4,ymm2
  6c4189:	c5 c0 58 db          	vaddps xmm3,xmm7,xmm3
  6c418d:	c4 c1 38 58 e9       	vaddps xmm5,xmm8,xmm9
  6c4192:	c4 c1 38 5c f9       	vsubps xmm7,xmm8,xmm9
  6c4197:	c5 65 15 c7          	vunpckhpd ymm8,ymm3,ymm7
  6c419b:	c5 e5 14 ff          	vunpcklpd ymm7,ymm3,ymm7
  6c419f:	c4 63 55 0c c8 cc    	vblendps ymm9,ymm5,ymm0,0xcc
  6c41a5:	c5 e5 73 dd 08       	vpsrldq ymm3,ymm5,0x8
  6c41aa:	c5 bc c6 eb 88       	vshufps ymm5,ymm8,ymm3,0x88
  6c41af:	c4 c1 44 c6 d9 88    	vshufps ymm3,ymm7,ymm9,0x88
  6c41b5:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  6c41ba:	c4 c1 44 c6 f9 dd    	vshufps ymm7,ymm7,ymm9,0xdd
  6c41c0:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  6c41c5:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  6c41ca:	c5 48 5c c4          	vsubps xmm8,xmm6,xmm4
  6c41ce:	c5 d8 58 e6          	vaddps xmm4,xmm4,xmm6
  6c41d2:	c5 ad 15 f4          	vunpckhpd ymm6,ymm10,ymm4
  6c41d6:	c5 2d 14 cc          	vunpcklpd ymm9,ymm10,ymm4
  6c41da:	c4 63 3d 0c d0 cc    	vblendps ymm10,ymm8,ymm0,0xcc
  6c41e0:	c4 c1 5d 73 d8 08    	vpsrldq ymm4,ymm8,0x8
  6c41e6:	c5 cc c6 f4 88       	vshufps ymm6,ymm6,ymm4,0x88
  6c41eb:	c4 c1 34 c6 e2 88    	vshufps ymm4,ymm9,ymm10,0x88
  6c41f1:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  6c41f6:	c4 41 34 c6 c2 dd    	vshufps ymm8,ymm9,ymm10,0xdd
  6c41fc:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  6c4202:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  6c4207:	c5 7c 10 49 40       	vmovups ymm9,YMMWORD PTR [rcx+0x40]
  6c420c:	c5 7c 10 51 60       	vmovups ymm10,YMMWORD PTR [rcx+0x60]
  6c4211:	c5 7c 10 99 80 00 00 	vmovups ymm11,YMMWORD PTR [rcx+0x80]
  6c4218:	00 
  6c4219:	c5 7c 10 a1 a0 00 00 	vmovups ymm12,YMMWORD PTR [rcx+0xa0]
  6c4220:	00 
  6c4221:	c5 34 59 ef          	vmulps ymm13,ymm9,ymm7
  6c4225:	c4 42 3d bc ea       	vfnmadd231ps ymm13,ymm8,ymm10
  6c422a:	c5 24 59 f5          	vmulps ymm14,ymm11,ymm5
  6c422e:	c4 42 4d bc f4       	vfnmadd231ps ymm14,ymm6,ymm12
  6c4233:	c4 41 14 58 fe       	vaddps ymm15,ymm13,ymm14
  6c4238:	c4 41 34 59 c0       	vmulps ymm8,ymm9,ymm8
  6c423d:	c4 42 45 b8 c2       	vfmadd231ps ymm8,ymm7,ymm10
  6c4242:	c5 a4 59 f6          	vmulps ymm6,ymm11,ymm6
  6c4246:	c4 c2 55 b8 f4       	vfmadd231ps ymm6,ymm5,ymm12
  6c424b:	c5 bc 58 ee          	vaddps ymm5,ymm8,ymm6
  6c424f:	c5 fc 28 f9          	vmovaps ymm7,ymm1
  6c4253:	c4 e2 05 ac fb       	vfnmadd213ps ymm7,ymm15,ymm3
  6c4258:	c5 bc 5c f6          	vsubps ymm6,ymm8,ymm6
  6c425c:	c5 cc 59 f2          	vmulps ymm6,ymm6,ymm2
  6c4260:	c5 7c 28 c1          	vmovaps ymm8,ymm1
  6c4264:	c4 62 55 ac c4       	vfnmadd213ps ymm8,ymm5,ymm4
  6c4269:	c4 41 14 5c ce       	vsubps ymm9,ymm13,ymm14
  6c426e:	c5 34 59 ca          	vmulps ymm9,ymm9,ymm2
  6c4272:	c5 80 58 db          	vaddps xmm3,xmm15,xmm3
  6c4276:	c5 d0 58 e4          	vaddps xmm4,xmm5,xmm4
  6c427a:	c5 d8 15 eb          	vunpckhps xmm5,xmm4,xmm3
  6c427e:	c5 d8 14 db          	vunpcklps xmm3,xmm4,xmm3
  6c4282:	c5 f8 11 1c 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm3
  6c4287:	c5 f8 13 6c 16 10    	vmovlps QWORD PTR [rsi+rdx*1+0x10],xmm5
  6c428d:	c5 c0 58 de          	vaddps xmm3,xmm7,xmm6
  6c4291:	c4 c1 38 5c e1       	vsubps xmm4,xmm8,xmm9
  6c4296:	c5 d8 15 eb          	vunpckhps xmm5,xmm4,xmm3
  6c429a:	c5 d8 14 db          	vunpcklps xmm3,xmm4,xmm3
  6c429e:	c5 f8 11 5c 16 18    	vmovups XMMWORD PTR [rsi+rdx*1+0x18],xmm3
  6c42a4:	c5 f8 13 6c 16 28    	vmovlps QWORD PTR [rsi+rdx*1+0x28],xmm5
  6c42aa:	c5 c0 5c de          	vsubps xmm3,xmm7,xmm6
  6c42ae:	c4 c1 38 58 e1       	vaddps xmm4,xmm8,xmm9
  6c42b3:	c5 d8 15 eb          	vunpckhps xmm5,xmm4,xmm3
  6c42b7:	c5 d8 14 db          	vunpcklps xmm3,xmm4,xmm3
  6c42bb:	c5 f8 11 5c 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm3
  6c42c1:	c5 f8 13 6c 16 40    	vmovlps QWORD PTR [rsi+rdx*1+0x40],xmm5
  6c42c7:	48 83 c2 48          	add    rdx,0x48
  6c42cb:	48 39 d0             	cmp    rax,rdx
  6c42ce:	0f 85 0c fe ff ff    	jne    6c40e0 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle+0x20>
  6c42d4:	c5 f8 77             	vzeroupper
  6c42d7:	c3                   	ret
