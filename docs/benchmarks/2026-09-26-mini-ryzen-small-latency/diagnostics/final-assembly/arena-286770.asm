
target/small-latency/final-source/executable-0:     file format elf64-x86-64


Disassembly of section .text:

0000000000286770 <<fastfft::engine::small::specialized::Avx2Leaf as fastfft::engine::small::Kernel<fastfft::isa::x86::small::F32x4f>>::run>:
  286770:	50                   	push   %rax
  286771:	48 c1 e2 08          	shl    $0x8,%rdx
  286775:	31 c0                	xor    %eax,%eax
  286777:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  28677e:	00 00 
  286780:	c5 fc 10 04 07       	vmovups (%rdi,%rax,1),%ymm0
  286785:	c5 fc 10 4c 07 20    	vmovups 0x20(%rdi,%rax,1),%ymm1
  28678b:	c5 fc 10 54 07 40    	vmovups 0x40(%rdi,%rax,1),%ymm2
  286791:	c5 fc 10 5c 07 60    	vmovups 0x60(%rdi,%rax,1),%ymm3
  286797:	c5 fc 10 a4 07 80 00 	vmovups 0x80(%rdi,%rax,1),%ymm4
  28679e:	00 00 
  2867a0:	c5 fc 10 ac 07 a0 00 	vmovups 0xa0(%rdi,%rax,1),%ymm5
  2867a7:	00 00 
  2867a9:	c5 fc 10 b4 07 c0 00 	vmovups 0xc0(%rdi,%rax,1),%ymm6
  2867b0:	00 00 
  2867b2:	c5 fc 10 bc 07 e0 00 	vmovups 0xe0(%rdi,%rax,1),%ymm7
  2867b9:	00 00 
  2867bb:	c5 7c c6 c1 88       	vshufps $0x88,%ymm1,%ymm0,%ymm8
  2867c0:	c4 43 fd 01 c0 d8    	vpermpd $0xd8,%ymm8,%ymm8
  2867c6:	c5 5c c6 cd 88       	vshufps $0x88,%ymm5,%ymm4,%ymm9
  2867cb:	c4 43 fd 01 c9 d8    	vpermpd $0xd8,%ymm9,%ymm9
  2867d1:	c4 41 3c 58 d1       	vaddps %ymm9,%ymm8,%ymm10
  2867d6:	c4 41 3c 5c c1       	vsubps %ymm9,%ymm8,%ymm8
  2867db:	c5 6c c6 cb 88       	vshufps $0x88,%ymm3,%ymm2,%ymm9
  2867e0:	c4 43 fd 01 c9 d8    	vpermpd $0xd8,%ymm9,%ymm9
  2867e6:	c5 4c c6 df 88       	vshufps $0x88,%ymm7,%ymm6,%ymm11
  2867eb:	c4 43 fd 01 db d8    	vpermpd $0xd8,%ymm11,%ymm11
  2867f1:	c4 41 34 58 e3       	vaddps %ymm11,%ymm9,%ymm12
  2867f6:	c4 41 34 5c cb       	vsubps %ymm11,%ymm9,%ymm9
  2867fb:	c5 fc c6 c1 dd       	vshufps $0xdd,%ymm1,%ymm0,%ymm0
  286800:	c4 e3 fd 01 c0 d8    	vpermpd $0xd8,%ymm0,%ymm0
  286806:	c5 dc c6 cd dd       	vshufps $0xdd,%ymm5,%ymm4,%ymm1
  28680b:	c4 e3 fd 01 c9 d8    	vpermpd $0xd8,%ymm1,%ymm1
  286811:	c5 fc 58 e1          	vaddps %ymm1,%ymm0,%ymm4
  286815:	c5 fc 5c c1          	vsubps %ymm1,%ymm0,%ymm0
  286819:	c5 ec c6 cb dd       	vshufps $0xdd,%ymm3,%ymm2,%ymm1
  28681e:	c4 e3 fd 01 c9 d8    	vpermpd $0xd8,%ymm1,%ymm1
  286824:	c5 cc c6 d7 dd       	vshufps $0xdd,%ymm7,%ymm6,%ymm2
  286829:	c4 e3 fd 01 d2 d8    	vpermpd $0xd8,%ymm2,%ymm2
  28682f:	c5 f4 58 da          	vaddps %ymm2,%ymm1,%ymm3
  286833:	c5 f4 5c ca          	vsubps %ymm2,%ymm1,%ymm1
  286837:	c4 c1 2c 58 d4       	vaddps %ymm12,%ymm10,%ymm2
  28683c:	c5 bc 58 e9          	vaddps %ymm1,%ymm8,%ymm5
  286840:	c4 c1 2c 5c f4       	vsubps %ymm12,%ymm10,%ymm6
  286845:	c5 bc 5c c9          	vsubps %ymm1,%ymm8,%ymm1
  286849:	c5 5c 58 c3          	vaddps %ymm3,%ymm4,%ymm8
  28684d:	c4 41 7c 5c d1       	vsubps %ymm9,%ymm0,%ymm10
  286852:	c5 dc 5c e3          	vsubps %ymm3,%ymm4,%ymm4
  286856:	c5 34 58 d8          	vaddps %ymm0,%ymm9,%ymm11
  28685a:	c5 ec 14 dd          	vunpcklps %ymm5,%ymm2,%ymm3
  28685e:	c5 ec 15 d5          	vunpckhps %ymm5,%ymm2,%ymm2
  286862:	c5 cc 14 f9          	vunpcklps %ymm1,%ymm6,%ymm7
  286866:	c5 cc 15 c9          	vunpckhps %ymm1,%ymm6,%ymm1
  28686a:	c5 e5 14 f7          	vunpcklpd %ymm7,%ymm3,%ymm6
  28686e:	c5 ed 14 e9          	vunpcklpd %ymm1,%ymm2,%ymm5
  286872:	c5 65 15 e7          	vunpckhpd %ymm7,%ymm3,%ymm12
  286876:	c5 ed 15 d9          	vunpckhpd %ymm1,%ymm2,%ymm3
  28687a:	c4 c3 7d 19 f1 01    	vextractf128 $0x1,%ymm6,%xmm9
  286880:	c4 63 7d 19 e7 01    	vextractf128 $0x1,%ymm12,%xmm7
  286886:	c4 e3 7d 19 6c 24 80 	vextractf128 $0x1,%ymm5,-0x80(%rsp)
  28688d:	01 
  28688e:	c4 c1 3c 14 ca       	vunpcklps %ymm10,%ymm8,%ymm1
  286893:	c4 c1 3c 15 d2       	vunpckhps %ymm10,%ymm8,%ymm2
  286898:	c4 41 5c 14 c3       	vunpcklps %ymm11,%ymm4,%ymm8
  28689d:	c4 41 5c 15 d3       	vunpckhps %ymm11,%ymm4,%ymm10
  2868a2:	c4 c1 75 14 c0       	vunpcklpd %ymm8,%ymm1,%ymm0
  2868a7:	c5 fc 11 44 24 e0    	vmovups %ymm0,-0x20(%rsp)
  2868ad:	c4 41 6d 14 fa       	vunpcklpd %ymm10,%ymm2,%ymm15
  2868b2:	c4 c1 75 15 c8       	vunpckhpd %ymm8,%ymm1,%ymm1
  2868b7:	c4 41 6d 15 c2       	vunpckhpd %ymm10,%ymm2,%ymm8
  2868bc:	c4 c3 7d 19 c6 01    	vextractf128 $0x1,%ymm0,%xmm14
  2868c2:	c4 e3 7d 19 c8 01    	vextractf128 $0x1,%ymm1,%xmm0
  2868c8:	c4 43 7d 19 fd 01    	vextractf128 $0x1,%ymm15,%xmm13
  2868ce:	c5 f8 28 15 aa fc de 	vmovaps -0x210356(%rip),%xmm2        # 76580 <__abi_tag+0x76284>
  2868d5:	ff 
  2868d6:	c5 70 59 d2          	vmulps %xmm2,%xmm1,%xmm10
  2868da:	c5 f8 28 25 ce db de 	vmovaps -0x212432(%rip),%xmm4        # 744b0 <__abi_tag+0x741b4>
  2868e1:	ff 
  2868e2:	c4 62 19 b8 d4       	vfmadd231ps %xmm4,%xmm12,%xmm10
  2868e7:	c5 78 29 54 24 90    	vmovaps %xmm10,-0x70(%rsp)
  2868ed:	c5 f0 59 cc          	vmulps %xmm4,%xmm1,%xmm1
  2868f1:	c4 e2 19 bc ca       	vfnmadd231ps %xmm2,%xmm12,%xmm1
  2868f6:	c5 f8 29 4c 24 a0    	vmovaps %xmm1,-0x60(%rsp)
  2868fc:	c5 f8 28 0d 5c ca de 	vmovaps -0x2135a4(%rip),%xmm1        # 73360 <__abi_tag+0x73064>
  286903:	ff 
  286904:	c5 00 59 d9          	vmulps %xmm1,%xmm15,%xmm11
  286908:	c5 f8 28 15 80 fc de 	vmovaps -0x210380(%rip),%xmm2        # 76590 <__abi_tag+0x76294>
  28690f:	ff 
  286910:	c4 62 51 b8 da       	vfmadd231ps %xmm2,%xmm5,%xmm11
  286915:	c5 00 59 d2          	vmulps %xmm2,%xmm15,%xmm10
  286919:	c4 62 51 bc d1       	vfnmadd231ps %xmm1,%xmm5,%xmm10
  28691e:	c5 f8 28 0d 7a fc de 	vmovaps -0x210386(%rip),%xmm1        # 765a0 <__abi_tag+0x762a4>
  286925:	ff 
  286926:	c5 b8 59 c9          	vmulps %xmm1,%xmm8,%xmm1
  28692a:	c5 f8 28 15 de d2 de 	vmovaps -0x212d22(%rip),%xmm2        # 73c10 <__abi_tag+0x73914>
  286931:	ff 
  286932:	c4 e2 61 b8 ca       	vfmadd231ps %xmm2,%xmm3,%xmm1
  286937:	c5 f8 29 4c 24 d0    	vmovaps %xmm1,-0x30(%rsp)
  28693d:	c5 f8 28 25 9b f8 de 	vmovaps -0x210765(%rip),%xmm4        # 761e0 <__abi_tag+0x75ee4>
  286944:	ff 
  286945:	c5 08 59 fc          	vmulps %xmm4,%xmm14,%xmm15
  286949:	c5 f8 28 2d 9f 11 df 	vmovaps -0x20ee61(%rip),%xmm5        # 77af0 <__abi_tag+0x777f4>
  286950:	ff 
  286951:	c4 62 31 b8 fd       	vfmadd231ps %xmm5,%xmm9,%xmm15
  286956:	c5 08 59 f5          	vmulps %xmm5,%xmm14,%xmm14
  28695a:	c4 42 59 bc f1       	vfnmadd231ps %xmm9,%xmm4,%xmm14
  28695f:	c5 f8 28 25 c9 2a df 	vmovaps -0x20d537(%rip),%xmm4        # 79430 <__abi_tag+0x79134>
  286966:	ff 
  286967:	c5 78 59 e4          	vmulps %xmm4,%xmm0,%xmm12
  28696b:	c5 f8 28 2d 8d 0c df 	vmovaps -0x20f373(%rip),%xmm5        # 77600 <__abi_tag+0x77304>
  286972:	ff 
  286973:	c4 62 41 b8 e5       	vfmadd231ps %xmm5,%xmm7,%xmm12
  286978:	c5 78 59 cd          	vmulps %xmm5,%xmm0,%xmm9
  28697c:	c4 62 59 bc cf       	vfnmadd231ps %xmm7,%xmm4,%xmm9
  286981:	c5 f8 28 25 37 db de 	vmovaps -0x2124c9(%rip),%xmm4        # 744c0 <__abi_tag+0x741c4>
  286988:	ff 
  286989:	c5 90 59 c4          	vmulps %xmm4,%xmm13,%xmm0
  28698d:	c5 f8 28 2d bb c5 de 	vmovaps -0x213a45(%rip),%xmm5        # 72f50 <__abi_tag+0x72c54>
  286994:	ff 
  286995:	c5 f8 28 4c 24 80    	vmovaps -0x80(%rsp),%xmm1
  28699b:	c4 e2 71 b8 c5       	vfmadd231ps %xmm5,%xmm1,%xmm0
  2869a0:	c5 90 59 fd          	vmulps %xmm5,%xmm13,%xmm7
  2869a4:	c4 e2 59 bc f9       	vfnmadd231ps %xmm1,%xmm4,%xmm7
  2869a9:	c5 38 59 ea          	vmulps %xmm2,%xmm8,%xmm13
  2869ad:	c4 62 61 bc 2d ea fb 	vfnmadd231ps -0x210416(%rip),%xmm3,%xmm13        # 765a0 <__abi_tag+0x762a4>
  2869b4:	de ff 
  2869b6:	c4 e3 7d 19 db 01    	vextractf128 $0x1,%ymm3,%xmm3
  2869bc:	c4 43 7d 19 c0 01    	vextractf128 $0x1,%ymm8,%xmm8
  2869c2:	c5 f8 28 15 e6 2d df 	vmovaps -0x20d21a(%rip),%xmm2        # 797b0 <__abi_tag+0x794b4>
  2869c9:	ff 
  2869ca:	c5 b8 59 ca          	vmulps %xmm2,%xmm8,%xmm1
  2869ce:	c5 f8 28 25 da 39 df 	vmovaps -0x20c626(%rip),%xmm4        # 7a3b0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x570>
  2869d5:	ff 
  2869d6:	c4 e2 61 b8 cc       	vfmadd231ps %xmm4,%xmm3,%xmm1
  2869db:	c5 38 59 c4          	vmulps %xmm4,%xmm8,%xmm8
  2869df:	c4 62 69 bc c3       	vfnmadd231ps %xmm3,%xmm2,%xmm8
  2869e4:	c5 80 58 de          	vaddps %xmm6,%xmm15,%xmm3
  2869e8:	c4 c1 48 5c e7       	vsubps %xmm15,%xmm6,%xmm4
  2869ed:	c5 a0 58 d0          	vaddps %xmm0,%xmm11,%xmm2
  2869f1:	c5 a0 5c f0          	vsubps %xmm0,%xmm11,%xmm6
  2869f5:	c5 fc 10 44 24 e0    	vmovups -0x20(%rsp),%ymm0
  2869fb:	c5 08 58 d8          	vaddps %xmm0,%xmm14,%xmm11
  2869ff:	c4 c1 78 5c ee       	vsubps %xmm14,%xmm0,%xmm5
  286a04:	c5 a8 58 c7          	vaddps %xmm7,%xmm10,%xmm0
  286a08:	c5 28 5c d7          	vsubps %xmm7,%xmm10,%xmm10
  286a0c:	c5 60 58 fa          	vaddps %xmm2,%xmm3,%xmm15
  286a10:	c5 e0 5c d2          	vsubps %xmm2,%xmm3,%xmm2
  286a14:	c5 f8 29 54 24 c0    	vmovaps %xmm2,-0x40(%rsp)
  286a1a:	c5 a8 58 fc          	vaddps %xmm4,%xmm10,%xmm7
  286a1e:	c4 c1 58 5c d2       	vsubps %xmm10,%xmm4,%xmm2
  286a23:	c5 f8 29 54 24 e0    	vmovaps %xmm2,-0x20(%rsp)
  286a29:	c5 a0 58 d0          	vaddps %xmm0,%xmm11,%xmm2
  286a2d:	c5 a0 5c c0          	vsubps %xmm0,%xmm11,%xmm0
  286a31:	c5 f8 29 44 24 b0    	vmovaps %xmm0,-0x50(%rsp)
  286a37:	c5 50 5c d6          	vsubps %xmm6,%xmm5,%xmm10
  286a3b:	c5 d0 58 c6          	vaddps %xmm6,%xmm5,%xmm0
  286a3f:	c5 f8 29 44 24 80    	vmovaps %xmm0,-0x80(%rsp)
  286a45:	c5 f8 28 5c 24 90    	vmovaps -0x70(%rsp),%xmm3
  286a4b:	c5 98 58 c3          	vaddps %xmm3,%xmm12,%xmm0
  286a4f:	c4 c1 60 5c e4       	vsubps %xmm12,%xmm3,%xmm4
  286a54:	c5 f8 28 5c 24 d0    	vmovaps -0x30(%rsp),%xmm3
  286a5a:	c5 e0 58 e9          	vaddps %xmm1,%xmm3,%xmm5
  286a5e:	c5 e0 5c c9          	vsubps %xmm1,%xmm3,%xmm1
  286a62:	c5 f8 28 5c 24 a0    	vmovaps -0x60(%rsp),%xmm3
  286a68:	c5 b0 58 f3          	vaddps %xmm3,%xmm9,%xmm6
  286a6c:	c4 41 60 5c c9       	vsubps %xmm9,%xmm3,%xmm9
  286a71:	c4 41 10 58 d8       	vaddps %xmm8,%xmm13,%xmm11
  286a76:	c4 41 10 5c c0       	vsubps %xmm8,%xmm13,%xmm8
  286a7b:	c5 78 58 e5          	vaddps %xmm5,%xmm0,%xmm12
  286a7f:	c5 f8 5c c5          	vsubps %xmm5,%xmm0,%xmm0
  286a83:	c5 b8 58 ec          	vaddps %xmm4,%xmm8,%xmm5
  286a87:	c4 c1 58 5c e0       	vsubps %xmm8,%xmm4,%xmm4
  286a8c:	c5 20 58 c6          	vaddps %xmm6,%xmm11,%xmm8
  286a90:	c4 c1 48 5c f3       	vsubps %xmm11,%xmm6,%xmm6
  286a95:	c5 30 5c d9          	vsubps %xmm1,%xmm9,%xmm11
  286a99:	c5 b0 58 c9          	vaddps %xmm1,%xmm9,%xmm1
  286a9d:	c5 20 58 cd          	vaddps %xmm5,%xmm11,%xmm9
  286aa1:	c5 20 5c dd          	vsubps %xmm5,%xmm11,%xmm11
  286aa5:	c5 70 5c ec          	vsubps %xmm4,%xmm1,%xmm13
  286aa9:	c5 58 58 f1          	vaddps %xmm1,%xmm4,%xmm14
  286aad:	c4 c1 00 58 cc       	vaddps %xmm12,%xmm15,%xmm1
  286ab2:	c4 c1 00 5c dc       	vsubps %xmm12,%xmm15,%xmm3
  286ab7:	c5 f8 29 5c 24 a0    	vmovaps %xmm3,-0x60(%rsp)
  286abd:	c5 38 58 fa          	vaddps %xmm2,%xmm8,%xmm15
  286ac1:	c4 41 68 5c e0       	vsubps %xmm8,%xmm2,%xmm12
  286ac6:	c4 e2 79 18 2d 71 5d 	vbroadcastss -0x20a28f(%rip),%xmm5        # 7c840 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a00>
  286acd:	df ff 
  286acf:	c5 b0 59 d5          	vmulps %xmm5,%xmm9,%xmm2
  286ad3:	c5 40 58 c2          	vaddps %xmm2,%xmm7,%xmm8
  286ad7:	c5 c0 5c d2          	vsubps %xmm2,%xmm7,%xmm2
  286adb:	c5 f8 29 54 24 90    	vmovaps %xmm2,-0x70(%rsp)
  286ae1:	c5 a0 59 e5          	vmulps %xmm5,%xmm11,%xmm4
  286ae5:	c5 28 58 cc          	vaddps %xmm4,%xmm10,%xmm9
  286ae9:	c5 a8 5c fc          	vsubps %xmm4,%xmm10,%xmm7
  286aed:	c5 f8 28 54 24 c0    	vmovaps -0x40(%rsp),%xmm2
  286af3:	c5 68 58 d6          	vaddps %xmm6,%xmm2,%xmm10
  286af7:	c5 e8 5c e6          	vsubps %xmm6,%xmm2,%xmm4
  286afb:	c4 e2 79 18 1d 44 5f 	vbroadcastss -0x20a0bc(%rip),%xmm3        # 7ca48 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  286b02:	df ff 
  286b04:	c5 f8 57 c3          	vxorps %xmm3,%xmm0,%xmm0
  286b08:	c5 f8 28 54 24 b0    	vmovaps -0x50(%rsp),%xmm2
  286b0e:	c5 68 58 d8          	vaddps %xmm0,%xmm2,%xmm11
  286b12:	c5 e8 5c f0          	vsubps %xmm0,%xmm2,%xmm6
  286b16:	c5 90 59 c5          	vmulps %xmm5,%xmm13,%xmm0
  286b1a:	c5 f8 28 54 24 e0    	vmovaps -0x20(%rsp),%xmm2
  286b20:	c5 68 58 e8          	vaddps %xmm0,%xmm2,%xmm13
  286b24:	c5 e8 5c d0          	vsubps %xmm0,%xmm2,%xmm2
  286b28:	c5 88 57 db          	vxorps %xmm3,%xmm14,%xmm3
  286b2c:	c5 e0 59 dd          	vmulps %xmm5,%xmm3,%xmm3
  286b30:	c5 f8 28 44 24 80    	vmovaps -0x80(%rsp),%xmm0
  286b36:	c5 78 58 f3          	vaddps %xmm3,%xmm0,%xmm14
  286b3a:	c5 f8 5c db          	vsubps %xmm3,%xmm0,%xmm3
  286b3e:	c4 c1 70 14 c7       	vunpcklps %xmm15,%xmm1,%xmm0
  286b43:	c4 c1 70 15 cf       	vunpckhps %xmm15,%xmm1,%xmm1
  286b48:	c5 f8 11 04 06       	vmovups %xmm0,(%rsi,%rax,1)
  286b4d:	c5 f8 11 4c 06 10    	vmovups %xmm1,0x10(%rsi,%rax,1)
  286b53:	c4 c1 38 14 c1       	vunpcklps %xmm9,%xmm8,%xmm0
  286b58:	c4 c1 38 15 c9       	vunpckhps %xmm9,%xmm8,%xmm1
  286b5d:	c5 f8 11 44 06 20    	vmovups %xmm0,0x20(%rsi,%rax,1)
  286b63:	c5 f8 11 4c 06 30    	vmovups %xmm1,0x30(%rsi,%rax,1)
  286b69:	c4 c1 28 14 c3       	vunpcklps %xmm11,%xmm10,%xmm0
  286b6e:	c4 c1 28 15 cb       	vunpckhps %xmm11,%xmm10,%xmm1
  286b73:	c5 f8 11 44 06 40    	vmovups %xmm0,0x40(%rsi,%rax,1)
  286b79:	c5 f8 11 4c 06 50    	vmovups %xmm1,0x50(%rsi,%rax,1)
  286b7f:	c4 c1 10 14 c6       	vunpcklps %xmm14,%xmm13,%xmm0
  286b84:	c4 c1 10 15 ce       	vunpckhps %xmm14,%xmm13,%xmm1
  286b89:	c5 f8 11 44 06 60    	vmovups %xmm0,0x60(%rsi,%rax,1)
  286b8f:	c5 f8 11 4c 06 70    	vmovups %xmm1,0x70(%rsi,%rax,1)
  286b95:	c5 f8 28 4c 24 a0    	vmovaps -0x60(%rsp),%xmm1
  286b9b:	c4 c1 70 14 c4       	vunpcklps %xmm12,%xmm1,%xmm0
  286ba0:	c4 c1 70 15 cc       	vunpckhps %xmm12,%xmm1,%xmm1
  286ba5:	c5 f8 11 84 06 80 00 	vmovups %xmm0,0x80(%rsi,%rax,1)
  286bac:	00 00 
  286bae:	c5 f8 11 8c 06 90 00 	vmovups %xmm1,0x90(%rsi,%rax,1)
  286bb5:	00 00 
  286bb7:	c5 f8 28 4c 24 90    	vmovaps -0x70(%rsp),%xmm1
  286bbd:	c5 f0 14 c7          	vunpcklps %xmm7,%xmm1,%xmm0
  286bc1:	c5 f0 15 cf          	vunpckhps %xmm7,%xmm1,%xmm1
  286bc5:	c5 f8 11 84 06 a0 00 	vmovups %xmm0,0xa0(%rsi,%rax,1)
  286bcc:	00 00 
  286bce:	c5 f8 11 8c 06 b0 00 	vmovups %xmm1,0xb0(%rsi,%rax,1)
  286bd5:	00 00 
  286bd7:	c5 d8 14 c6          	vunpcklps %xmm6,%xmm4,%xmm0
  286bdb:	c5 d8 15 ce          	vunpckhps %xmm6,%xmm4,%xmm1
  286bdf:	c5 f8 11 84 06 c0 00 	vmovups %xmm0,0xc0(%rsi,%rax,1)
  286be6:	00 00 
  286be8:	c5 f8 11 8c 06 d0 00 	vmovups %xmm1,0xd0(%rsi,%rax,1)
  286bef:	00 00 
  286bf1:	c5 e8 14 c3          	vunpcklps %xmm3,%xmm2,%xmm0
  286bf5:	c5 e8 15 cb          	vunpckhps %xmm3,%xmm2,%xmm1
  286bf9:	c5 f8 11 84 06 e0 00 	vmovups %xmm0,0xe0(%rsi,%rax,1)
  286c00:	00 00 
  286c02:	c5 f8 11 8c 06 f0 00 	vmovups %xmm1,0xf0(%rsi,%rax,1)
  286c09:	00 00 
  286c0b:	48 05 00 01 00 00    	add    $0x100,%rax
  286c11:	48 39 c2             	cmp    %rax,%rdx
  286c14:	0f 85 66 fb ff ff    	jne    286780 <<fastfft::engine::small::specialized::Avx2Leaf as fastfft::engine::small::Kernel<fastfft::isa::x86::small::F32x4f>>::run+0x10>
  286c1a:	58                   	pop    %rax
  286c1b:	c5 f8 77             	vzeroupper
  286c1e:	c3                   	ret
  286c1f:	cc                   	int3
