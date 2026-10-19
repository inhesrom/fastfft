
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000006dc4c0 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  6dc4c0:	55                   	push   rbp
  6dc4c1:	48 89 e5             	mov    rbp,rsp
  6dc4c4:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  6dc4c8:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  6dc4cf:	48 c1 e2 03          	shl    rdx,0x3
  6dc4d3:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  6dc4d7:	31 d2                	xor    edx,edx
  6dc4d9:	4c 8d 44 24 40       	lea    r8,[rsp+0x40]
  6dc4de:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  6dc4e3:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  6dc4e7:	c4 e2 7d 18 0d 70 8f 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff998f70]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6dc4ee:	99 ff 
  6dc4f0:	c4 e2 7d 18 15 db 8d 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff998ddb]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6dc4f7:	99 ff 
  6dc4f9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  6dc500:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  6dc505:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  6dc50a:	c5 fb 10 5c 17 10    	vmovsd xmm3,QWORD PTR [rdi+rdx*1+0x10]
  6dc510:	c4 e3 7d 18 db 01    	vinsertf128 ymm3,ymm0,xmm3,0x1
  6dc516:	c4 e3 65 0c d8 c0    	vblendps ymm3,ymm3,ymm0,0xc0
  6dc51c:	c5 fb 10 64 17 28    	vmovsd xmm4,QWORD PTR [rdi+rdx*1+0x28]
  6dc522:	c4 e3 7d 18 e4 01    	vinsertf128 ymm4,ymm0,xmm4,0x1
  6dc528:	c4 e3 5d 0c e0 c0    	vblendps ymm4,ymm4,ymm0,0xc0
  6dc52e:	c5 f8 10 34 17       	vmovups xmm6,XMMWORD PTR [rdi+rdx*1]
  6dc533:	c5 f8 10 7c 17 18    	vmovups xmm7,XMMWORD PTR [rdi+rdx*1+0x18]
  6dc539:	c5 78 10 44 17 30    	vmovups xmm8,XMMWORD PTR [rdi+rdx*1+0x30]
  6dc53f:	c5 fb 10 6c 17 40    	vmovsd xmm5,QWORD PTR [rdi+rdx*1+0x40]
  6dc545:	c4 e3 7d 18 ed 01    	vinsertf128 ymm5,ymm0,xmm5,0x1
  6dc54b:	c4 e3 55 0c e8 c0    	vblendps ymm5,ymm5,ymm0,0xc0
  6dc551:	c4 c3 7d 19 d9 01    	vextractf128 xmm9,ymm3,0x1
  6dc557:	c4 c1 48 c6 d9 88    	vshufps xmm3,xmm6,xmm9,0x88
  6dc55d:	c4 c3 7d 19 e2 01    	vextractf128 xmm10,ymm4,0x1
  6dc563:	c4 c1 40 c6 e2 88    	vshufps xmm4,xmm7,xmm10,0x88
  6dc569:	c4 c3 7d 19 eb 01    	vextractf128 xmm11,ymm5,0x1
  6dc56f:	c4 c1 38 c6 eb 88    	vshufps xmm5,xmm8,xmm11,0x88
  6dc575:	c4 c1 48 c6 f1 dd    	vshufps xmm6,xmm6,xmm9,0xdd
  6dc57b:	c4 41 40 c6 ca dd    	vshufps xmm9,xmm7,xmm10,0xdd
  6dc581:	c4 41 38 c6 d3 dd    	vshufps xmm10,xmm8,xmm11,0xdd
  6dc587:	c5 dc 58 fd          	vaddps ymm7,ymm4,ymm5
  6dc58b:	c4 41 34 58 da       	vaddps ymm11,ymm9,ymm10
  6dc590:	c5 7c 28 c1          	vmovaps ymm8,ymm1
  6dc594:	c4 62 45 ac c3       	vfnmadd213ps ymm8,ymm7,ymm3
  6dc599:	c4 41 34 5c ca       	vsubps ymm9,ymm9,ymm10
  6dc59e:	c5 34 59 ca          	vmulps ymm9,ymm9,ymm2
  6dc5a2:	c5 20 58 d6          	vaddps xmm10,xmm11,xmm6
  6dc5a6:	c4 e2 25 bc f1       	vfnmadd231ps ymm6,ymm11,ymm1
  6dc5ab:	c5 dc 5c e5          	vsubps ymm4,ymm4,ymm5
  6dc5af:	c5 dc 59 ea          	vmulps ymm5,ymm4,ymm2
  6dc5b3:	c5 c0 58 db          	vaddps xmm3,xmm7,xmm3
  6dc5b7:	c4 c1 38 58 e1       	vaddps xmm4,xmm8,xmm9
  6dc5bc:	c4 c1 38 5c f9       	vsubps xmm7,xmm8,xmm9
  6dc5c1:	c5 65 15 c7          	vunpckhpd ymm8,ymm3,ymm7
  6dc5c5:	c5 e5 14 ff          	vunpcklpd ymm7,ymm3,ymm7
  6dc5c9:	c4 63 5d 0c c8 cc    	vblendps ymm9,ymm4,ymm0,0xcc
  6dc5cf:	c5 e5 73 dc 08       	vpsrldq ymm3,ymm4,0x8
  6dc5d4:	c5 bc c6 e3 88       	vshufps ymm4,ymm8,ymm3,0x88
  6dc5d9:	c4 c1 44 c6 d9 88    	vshufps ymm3,ymm7,ymm9,0x88
  6dc5df:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  6dc5e4:	c4 c1 44 c6 f9 dd    	vshufps ymm7,ymm7,ymm9,0xdd
  6dc5ea:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  6dc5ef:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  6dc5f4:	c5 48 5c c5          	vsubps xmm8,xmm6,xmm5
  6dc5f8:	c5 d0 58 ee          	vaddps xmm5,xmm5,xmm6
  6dc5fc:	c5 ad 15 f5          	vunpckhpd ymm6,ymm10,ymm5
  6dc600:	c5 ad 14 ed          	vunpcklpd ymm5,ymm10,ymm5
  6dc604:	c4 63 3d 0c c8 cc    	vblendps ymm9,ymm8,ymm0,0xcc
  6dc60a:	c4 c1 3d 73 d8 08    	vpsrldq ymm8,ymm8,0x8
  6dc610:	c4 c1 4c c6 f0 88    	vshufps ymm6,ymm6,ymm8,0x88
  6dc616:	c4 41 54 c6 c1 88    	vshufps ymm8,ymm5,ymm9,0x88
  6dc61c:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  6dc622:	c4 c1 54 c6 e9 dd    	vshufps ymm5,ymm5,ymm9,0xdd
  6dc628:	c5 d4 c6 ed d8       	vshufps ymm5,ymm5,ymm5,0xd8
  6dc62d:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  6dc632:	c5 7c 10 49 40       	vmovups ymm9,YMMWORD PTR [rcx+0x40]
  6dc637:	c5 7c 10 51 60       	vmovups ymm10,YMMWORD PTR [rcx+0x60]
  6dc63c:	c5 7c 10 99 80 00 00 	vmovups ymm11,YMMWORD PTR [rcx+0x80]
  6dc643:	00 
  6dc644:	c5 7c 10 a1 a0 00 00 	vmovups ymm12,YMMWORD PTR [rcx+0xa0]
  6dc64b:	00 
  6dc64c:	c5 34 59 ef          	vmulps ymm13,ymm9,ymm7
  6dc650:	c4 42 55 bc ea       	vfnmadd231ps ymm13,ymm5,ymm10
  6dc655:	c5 24 59 f4          	vmulps ymm14,ymm11,ymm4
  6dc659:	c4 42 4d bc f4       	vfnmadd231ps ymm14,ymm6,ymm12
  6dc65e:	c4 41 14 58 fe       	vaddps ymm15,ymm13,ymm14
  6dc663:	c5 b4 59 ed          	vmulps ymm5,ymm9,ymm5
  6dc667:	c4 c2 45 b8 ea       	vfmadd231ps ymm5,ymm7,ymm10
  6dc66c:	c5 a4 59 f6          	vmulps ymm6,ymm11,ymm6
  6dc670:	c4 c2 5d b8 f4       	vfmadd231ps ymm6,ymm4,ymm12
  6dc675:	c5 d4 58 e6          	vaddps ymm4,ymm5,ymm6
  6dc679:	c5 fc 28 f9          	vmovaps ymm7,ymm1
  6dc67d:	c4 e2 05 ac fb       	vfnmadd213ps ymm7,ymm15,ymm3
  6dc682:	c5 d4 5c ee          	vsubps ymm5,ymm5,ymm6
  6dc686:	c5 d4 59 ea          	vmulps ymm5,ymm5,ymm2
  6dc68a:	c5 fc 28 f1          	vmovaps ymm6,ymm1
  6dc68e:	c4 c2 5d ac f0       	vfnmadd213ps ymm6,ymm4,ymm8
  6dc693:	c4 41 14 5c ce       	vsubps ymm9,ymm13,ymm14
  6dc698:	c5 34 59 ca          	vmulps ymm9,ymm9,ymm2
  6dc69c:	c5 b8 58 e4          	vaddps xmm4,xmm8,xmm4
  6dc6a0:	c5 80 58 db          	vaddps xmm3,xmm15,xmm3
  6dc6a4:	c5 60 15 c4          	vunpckhps xmm8,xmm3,xmm4
  6dc6a8:	c5 e0 14 dc          	vunpcklps xmm3,xmm3,xmm4
  6dc6ac:	c5 f8 11 1c 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm3
  6dc6b1:	c5 78 13 44 16 10    	vmovlps QWORD PTR [rsi+rdx*1+0x10],xmm8
  6dc6b7:	c4 c1 48 5c d9       	vsubps xmm3,xmm6,xmm9
  6dc6bc:	c5 c0 58 e5          	vaddps xmm4,xmm7,xmm5
  6dc6c0:	c5 58 15 c3          	vunpckhps xmm8,xmm4,xmm3
  6dc6c4:	c5 d8 14 db          	vunpcklps xmm3,xmm4,xmm3
  6dc6c8:	c5 f8 11 5c 16 18    	vmovups XMMWORD PTR [rsi+rdx*1+0x18],xmm3
  6dc6ce:	c5 78 13 44 16 28    	vmovlps QWORD PTR [rsi+rdx*1+0x28],xmm8
  6dc6d4:	c5 b0 58 de          	vaddps xmm3,xmm9,xmm6
  6dc6d8:	c5 c0 5c e5          	vsubps xmm4,xmm7,xmm5
  6dc6dc:	c5 d8 15 eb          	vunpckhps xmm5,xmm4,xmm3
  6dc6e0:	c5 d8 14 db          	vunpcklps xmm3,xmm4,xmm3
  6dc6e4:	c5 f8 11 5c 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm3
  6dc6ea:	c5 f8 13 6c 16 40    	vmovlps QWORD PTR [rsi+rdx*1+0x40],xmm5
  6dc6f0:	48 83 c2 48          	add    rdx,0x48
  6dc6f4:	48 39 d0             	cmp    rax,rdx
  6dc6f7:	0f 85 03 fe ff ff    	jne    6dc500 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle+0x40>
  6dc6fd:	48 89 ec             	mov    rsp,rbp
  6dc700:	5d                   	pop    rbp
  6dc701:	c5 f8 77             	vzeroupper
  6dc704:	c3                   	ret
