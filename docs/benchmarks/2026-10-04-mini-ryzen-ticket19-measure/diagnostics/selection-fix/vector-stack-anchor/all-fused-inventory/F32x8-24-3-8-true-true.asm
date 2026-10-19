
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000006b1780 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  6b1780:	48 81 ec 68 01 00 00 	sub    rsp,0x168
  6b1787:	48 c1 e2 06          	shl    rdx,0x6
  6b178b:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  6b178f:	31 d2                	xor    edx,edx
  6b1791:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  6b1798:	0f 1f 84 00 00 00 00 
  6b179f:	00 
  6b17a0:	c5 fc 10 04 17       	vmovups ymm0,YMMWORD PTR [rdi+rdx*1]
  6b17a5:	c5 fc 10 4c 17 20    	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x20]
  6b17ab:	c5 fc 10 54 17 40    	vmovups ymm2,YMMWORD PTR [rdi+rdx*1+0x40]
  6b17b1:	c5 fc 10 5c 17 60    	vmovups ymm3,YMMWORD PTR [rdi+rdx*1+0x60]
  6b17b7:	c5 fc 10 a4 17 80 00 	vmovups ymm4,YMMWORD PTR [rdi+rdx*1+0x80]
  6b17be:	00 00 
  6b17c0:	c5 fc 10 ac 17 a0 00 	vmovups ymm5,YMMWORD PTR [rdi+rdx*1+0xa0]
  6b17c7:	00 00 
  6b17c9:	c5 fc c6 f1 dd       	vshufps ymm6,ymm0,ymm1,0xdd
  6b17ce:	c4 e3 fd 01 f6 d8    	vpermpd ymm6,ymm6,0xd8
  6b17d4:	c5 ec c6 fb dd       	vshufps ymm7,ymm2,ymm3,0xdd
  6b17d9:	c4 e3 fd 01 ff d8    	vpermpd ymm7,ymm7,0xd8
  6b17df:	c5 5c c6 c5 dd       	vshufps ymm8,ymm4,ymm5,0xdd
  6b17e4:	c4 43 fd 01 c8 d8    	vpermpd ymm9,ymm8,0xd8
  6b17ea:	c5 fc c6 c1 88       	vshufps ymm0,ymm0,ymm1,0x88
  6b17ef:	c4 e3 fd 01 c0 d8    	vpermpd ymm0,ymm0,0xd8
  6b17f5:	c5 ec c6 cb 88       	vshufps ymm1,ymm2,ymm3,0x88
  6b17fa:	c4 e3 fd 01 c9 d8    	vpermpd ymm1,ymm1,0xd8
  6b1800:	c5 dc c6 d5 88       	vshufps ymm2,ymm4,ymm5,0x88
  6b1805:	c4 e3 fd 01 d2 d8    	vpermpd ymm2,ymm2,0xd8
  6b180b:	c5 b4 58 df          	vaddps ymm3,ymm9,ymm7
  6b180f:	c5 64 58 de          	vaddps ymm11,ymm3,ymm6
  6b1813:	c5 f4 58 e2          	vaddps ymm4,ymm1,ymm2
  6b1817:	c5 5c 58 d0          	vaddps ymm10,ymm4,ymm0
  6b181b:	c4 e2 7d 18 2d 3c 3c 	vbroadcastss ymm5,DWORD PTR [rip+0xffffffffff9c3c3c]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6b1822:	9c ff 
  6b1824:	c4 e2 55 ac de       	vfnmadd213ps ymm3,ymm5,ymm6
  6b1829:	c5 f4 5c ca          	vsubps ymm1,ymm1,ymm2
  6b182d:	c4 e2 7d 18 15 9e 3a 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff9c3a9e]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6b1834:	9c ff 
  6b1836:	c5 f4 59 ca          	vmulps ymm1,ymm1,ymm2
  6b183a:	c5 64 58 e9          	vaddps ymm13,ymm3,ymm1
  6b183e:	c4 e2 55 ac e0       	vfnmadd213ps ymm4,ymm5,ymm0
  6b1843:	c4 c1 44 5c c1       	vsubps ymm0,ymm7,ymm9
  6b1848:	c5 fc 59 c2          	vmulps ymm0,ymm0,ymm2
  6b184c:	c5 5c 5c c8          	vsubps ymm9,ymm4,ymm0
  6b1850:	c5 e4 5c d1          	vsubps ymm2,ymm3,ymm1
  6b1854:	c5 7c 58 e4          	vaddps ymm12,ymm0,ymm4
  6b1858:	c4 63 7d 19 d8 01    	vextractf128 xmm0,ymm11,0x1
  6b185e:	c5 fc 11 44 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm0
  6b1864:	c4 63 7d 19 eb 01    	vextractf128 xmm3,ymm13,0x1
  6b186a:	c5 fc 11 5c 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm3
  6b1870:	c4 c3 7d 19 d6 01    	vextractf128 xmm14,ymm2,0x1
  6b1876:	c4 c1 7d 14 ce       	vunpcklpd ymm1,ymm0,ymm14
  6b187b:	c5 fc 11 8c 24 e0 00 	vmovups YMMWORD PTR [rsp+0xe0],ymm1
  6b1882:	00 00 
  6b1884:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  6b1888:	c4 e3 65 0c c0 cc    	vblendps ymm0,ymm3,ymm0,0xcc
  6b188e:	c5 d8 57 e4          	vxorps xmm4,xmm4,xmm4
  6b1892:	c5 fc 11 44 24 e0    	vmovups YMMWORD PTR [rsp-0x20],ymm0
  6b1898:	c5 f4 c6 c0 88       	vshufps ymm0,ymm1,ymm0,0x88
  6b189d:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  6b18a2:	c4 63 7d 19 d6 01    	vextractf128 xmm6,ymm10,0x1
  6b18a8:	c4 63 7d 19 cf 01    	vextractf128 xmm7,ymm9,0x1
  6b18ae:	c4 63 7d 19 e1 01    	vextractf128 xmm1,ymm12,0x1
  6b18b4:	c5 cd 14 e9          	vunpcklpd ymm5,ymm6,ymm1
  6b18b8:	c5 fc 11 ac 24 80 00 	vmovups YMMWORD PTR [rsp+0x80],ymm5
  6b18bf:	00 00 
  6b18c1:	c4 e3 45 0c dc cc    	vblendps ymm3,ymm7,ymm4,0xcc
  6b18c7:	c5 fc 11 9c 24 a0 00 	vmovups YMMWORD PTR [rsp+0xa0],ymm3
  6b18ce:	00 00 
  6b18d0:	c5 d4 c6 db 88       	vshufps ymm3,ymm5,ymm3,0x88
  6b18d5:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  6b18da:	c5 fc 10 a9 00 01 00 	vmovups ymm5,YMMWORD PTR [rcx+0x100]
  6b18e1:	00 
  6b18e2:	c5 fc 10 a1 20 01 00 	vmovups ymm4,YMMWORD PTR [rcx+0x120]
  6b18e9:	00 
  6b18ea:	c5 54 59 c0          	vmulps ymm8,ymm5,ymm0
  6b18ee:	c4 62 65 bc c4       	vfnmadd231ps ymm8,ymm3,ymm4
  6b18f3:	c5 7c 11 44 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm8
  6b18f9:	c5 d4 59 db          	vmulps ymm3,ymm5,ymm3
  6b18fd:	c4 e2 7d b8 dc       	vfmadd231ps ymm3,ymm0,ymm4
  6b1902:	c5 fc 11 9c 24 c0 00 	vmovups YMMWORD PTR [rsp+0xc0],ymm3
  6b1909:	00 00 
  6b190b:	c4 41 78 28 c3       	vmovaps xmm8,xmm11
  6b1910:	c5 f8 28 d2          	vmovaps xmm2,xmm2
  6b1914:	c5 78 29 eb          	vmovaps xmm3,xmm13
  6b1918:	c5 e5 73 db 08       	vpsrldq ymm3,ymm3,0x8
  6b191d:	c5 fe 7f 5c 24 20    	vmovdqu YMMWORD PTR [rsp+0x20],ymm3
  6b1923:	c5 bd 15 c2          	vunpckhpd ymm0,ymm8,ymm2
  6b1927:	c5 fc 11 44 24 40    	vmovups YMMWORD PTR [rsp+0x40],ymm0
  6b192d:	c5 fc c6 db 88       	vshufps ymm3,ymm0,ymm3,0x88
  6b1932:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  6b1937:	c5 78 29 d0          	vmovaps xmm0,xmm10
  6b193b:	c4 41 78 28 e4       	vmovaps xmm12,xmm12
  6b1940:	c5 7c 29 cd          	vmovaps ymm5,ymm9
  6b1944:	c5 f8 28 e5          	vmovaps xmm4,xmm5
  6b1948:	c5 dd 73 dc 08       	vpsrldq ymm4,ymm4,0x8
  6b194d:	c5 fe 7f 24 24       	vmovdqu YMMWORD PTR [rsp],ymm4
  6b1952:	c4 41 7d 15 fc       	vunpckhpd ymm15,ymm0,ymm12
  6b1957:	c5 84 c6 e4 88       	vshufps ymm4,ymm15,ymm4,0x88
  6b195c:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  6b1961:	c5 7c 10 89 80 00 00 	vmovups ymm9,YMMWORD PTR [rcx+0x80]
  6b1968:	00 
  6b1969:	c5 7c 10 91 a0 00 00 	vmovups ymm10,YMMWORD PTR [rcx+0xa0]
  6b1970:	00 
  6b1971:	c5 34 59 db          	vmulps ymm11,ymm9,ymm3
  6b1975:	c4 42 5d bc da       	vfnmadd231ps ymm11,ymm4,ymm10
  6b197a:	c5 7c 11 5c 24 60    	vmovups YMMWORD PTR [rsp+0x60],ymm11
  6b1980:	c5 34 59 dc          	vmulps ymm11,ymm9,ymm4
  6b1984:	c4 42 65 b8 da       	vfmadd231ps ymm11,ymm3,ymm10
  6b1989:	c5 fc 10 5c 24 a0    	vmovups ymm3,YMMWORD PTR [rsp-0x60]
  6b198f:	c4 41 65 15 ce       	vunpckhpd ymm9,ymm3,ymm14
  6b1994:	c5 7c 11 8c 24 40 01 	vmovups YMMWORD PTR [rsp+0x140],ymm9
  6b199b:	00 00 
  6b199d:	c5 cd 15 e1          	vunpckhpd ymm4,ymm6,ymm1
  6b19a1:	c5 fc 11 a4 24 20 01 	vmovups YMMWORD PTR [rsp+0x120],ymm4
  6b19a8:	00 00 
  6b19aa:	c5 e0 57 db          	vxorps xmm3,xmm3,xmm3
  6b19ae:	c5 fc 10 4c 24 c0    	vmovups ymm1,YMMWORD PTR [rsp-0x40]
  6b19b4:	c5 f5 15 cb          	vunpckhpd ymm1,ymm1,ymm3
  6b19b8:	c5 fc 11 4c 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm1
  6b19be:	c5 b4 c6 c9 88       	vshufps ymm1,ymm9,ymm1,0x88
  6b19c3:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  6b19c8:	c5 45 15 f3          	vunpckhpd ymm14,ymm7,ymm3
  6b19cc:	c4 c1 5c c6 de 88    	vshufps ymm3,ymm4,ymm14,0x88
  6b19d2:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  6b19d7:	c5 fc 10 b1 80 01 00 	vmovups ymm6,YMMWORD PTR [rcx+0x180]
  6b19de:	00 
  6b19df:	c5 fc 10 b9 a0 01 00 	vmovups ymm7,YMMWORD PTR [rcx+0x1a0]
  6b19e6:	00 
  6b19e7:	c5 cc 59 e1          	vmulps ymm4,ymm6,ymm1
  6b19eb:	c4 e2 65 bc e7       	vfnmadd231ps ymm4,ymm3,ymm7
  6b19f0:	c5 fc 11 64 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm4
  6b19f6:	c5 4c 59 cb          	vmulps ymm9,ymm6,ymm3
  6b19fa:	c4 62 75 b8 cf       	vfmadd231ps ymm9,ymm1,ymm7
  6b19ff:	c5 bd 14 ca          	vunpcklpd ymm1,ymm8,ymm2
  6b1a03:	c5 fc 11 8c 24 00 01 	vmovups YMMWORD PTR [rsp+0x100],ymm1
  6b1a0a:	00 00 
  6b1a0c:	c4 c1 7d 14 d4       	vunpcklpd ymm2,ymm0,ymm12
  6b1a11:	c4 41 7a 7e e5       	vmovq  xmm12,xmm13
  6b1a16:	c4 c1 74 c6 c4 dd    	vshufps ymm0,ymm1,ymm12,0xdd
  6b1a1c:	c5 fc c6 d8 d8       	vshufps ymm3,ymm0,ymm0,0xd8
  6b1a21:	c5 7a 7e d5          	vmovq  xmm10,xmm5
  6b1a25:	c4 c1 6c c6 ca dd    	vshufps ymm1,ymm2,ymm10,0xdd
  6b1a2b:	c5 7c 28 ea          	vmovaps ymm13,ymm2
  6b1a2f:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  6b1a34:	c5 fc 10 51 40       	vmovups ymm2,YMMWORD PTR [rcx+0x40]
  6b1a39:	c5 fc 10 41 60       	vmovups ymm0,YMMWORD PTR [rcx+0x60]
  6b1a3e:	c5 ec 59 fb          	vmulps ymm7,ymm2,ymm3
  6b1a42:	c4 e2 75 bc f8       	vfnmadd231ps ymm7,ymm1,ymm0
  6b1a47:	c5 ec 59 f1          	vmulps ymm6,ymm2,ymm1
  6b1a4b:	c4 e2 65 b8 f0       	vfmadd231ps ymm6,ymm3,ymm0
  6b1a50:	c5 fc 10 84 24 e0 00 	vmovups ymm0,YMMWORD PTR [rsp+0xe0]
  6b1a57:	00 00 
  6b1a59:	c5 fc c6 44 24 e0 dd 	vshufps ymm0,ymm0,YMMWORD PTR [rsp-0x20],0xdd
  6b1a60:	c5 fc 10 8c 24 80 00 	vmovups ymm1,YMMWORD PTR [rsp+0x80]
  6b1a67:	00 00 
  6b1a69:	c5 f4 c6 8c 24 a0 00 	vshufps ymm1,ymm1,YMMWORD PTR [rsp+0xa0],0xdd
  6b1a70:	00 00 dd 
  6b1a73:	c5 fc c6 d8 d8       	vshufps ymm3,ymm0,ymm0,0xd8
  6b1a78:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  6b1a7d:	c5 fc 10 81 40 01 00 	vmovups ymm0,YMMWORD PTR [rcx+0x140]
  6b1a84:	00 
  6b1a85:	c5 7c 10 81 60 01 00 	vmovups ymm8,YMMWORD PTR [rcx+0x160]
  6b1a8c:	00 
  6b1a8d:	c5 fc 59 eb          	vmulps ymm5,ymm0,ymm3
  6b1a91:	c4 c2 75 bc e8       	vfnmadd231ps ymm5,ymm1,ymm8
  6b1a96:	c5 fc 59 e1          	vmulps ymm4,ymm0,ymm1
  6b1a9a:	c4 c2 65 b8 e0       	vfmadd231ps ymm4,ymm3,ymm8
  6b1a9f:	c5 fc 10 44 24 40    	vmovups ymm0,YMMWORD PTR [rsp+0x40]
  6b1aa5:	c5 fc c6 44 24 20 dd 	vshufps ymm0,ymm0,YMMWORD PTR [rsp+0x20],0xdd
  6b1aac:	c5 84 c6 1c 24 dd    	vshufps ymm3,ymm15,YMMWORD PTR [rsp],0xdd
  6b1ab2:	c5 fc c6 c8 d8       	vshufps ymm1,ymm0,ymm0,0xd8
  6b1ab7:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  6b1abc:	c5 7c 10 81 c0 00 00 	vmovups ymm8,YMMWORD PTR [rcx+0xc0]
  6b1ac3:	00 
  6b1ac4:	c5 fc 10 81 e0 00 00 	vmovups ymm0,YMMWORD PTR [rcx+0xe0]
  6b1acb:	00 
  6b1acc:	c5 3c 59 f9          	vmulps ymm15,ymm8,ymm1
  6b1ad0:	c4 62 65 bc f8       	vfnmadd231ps ymm15,ymm3,ymm0
  6b1ad5:	c5 bc 59 db          	vmulps ymm3,ymm8,ymm3
  6b1ad9:	c4 e2 75 b8 d8       	vfmadd231ps ymm3,ymm1,ymm0
  6b1ade:	c5 fc 10 84 24 40 01 	vmovups ymm0,YMMWORD PTR [rsp+0x140]
  6b1ae5:	00 00 
  6b1ae7:	c5 fc c6 44 24 a0 dd 	vshufps ymm0,ymm0,YMMWORD PTR [rsp-0x60],0xdd
  6b1aee:	c5 fc 10 8c 24 20 01 	vmovups ymm1,YMMWORD PTR [rsp+0x120]
  6b1af5:	00 00 
  6b1af7:	c4 c1 74 c6 ce dd    	vshufps ymm1,ymm1,ymm14,0xdd
  6b1afd:	c5 fc c6 d0 d8       	vshufps ymm2,ymm0,ymm0,0xd8
  6b1b02:	c5 f4 c6 c9 d8       	vshufps ymm1,ymm1,ymm1,0xd8
  6b1b07:	c5 7c 10 81 c0 01 00 	vmovups ymm8,YMMWORD PTR [rcx+0x1c0]
  6b1b0e:	00 
  6b1b0f:	c5 7c 10 b1 e0 01 00 	vmovups ymm14,YMMWORD PTR [rcx+0x1e0]
  6b1b16:	00 
  6b1b17:	c5 bc 59 c2          	vmulps ymm0,ymm8,ymm2
  6b1b1b:	c4 c2 75 bc c6       	vfnmadd231ps ymm0,ymm1,ymm14
  6b1b20:	c5 3c 59 c1          	vmulps ymm8,ymm8,ymm1
  6b1b24:	c4 42 6d b8 c6       	vfmadd231ps ymm8,ymm2,ymm14
  6b1b29:	c5 fc 10 8c 24 00 01 	vmovups ymm1,YMMWORD PTR [rsp+0x100]
  6b1b30:	00 00 
  6b1b32:	c4 c1 74 c6 cc 88    	vshufps ymm1,ymm1,ymm12,0x88
  6b1b38:	c4 41 14 c6 d2 88    	vshufps ymm10,ymm13,ymm10,0x88
  6b1b3e:	c5 f4 c6 d1 d8       	vshufps ymm2,ymm1,ymm1,0xd8
  6b1b43:	c5 fc 10 4c 24 80    	vmovups ymm1,YMMWORD PTR [rsp-0x80]
  6b1b49:	c5 74 58 ea          	vaddps ymm13,ymm1,ymm2
  6b1b4d:	c5 ec 5c c9          	vsubps ymm1,ymm2,ymm1
  6b1b51:	c5 fc 11 4c 24 e0    	vmovups YMMWORD PTR [rsp-0x20],ymm1
  6b1b57:	c4 41 24 58 e1       	vaddps ymm12,ymm11,ymm9
  6b1b5c:	c4 c1 24 5c c9       	vsubps ymm1,ymm11,ymm9
  6b1b61:	c5 fc 11 4c 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm1
  6b1b67:	c5 44 58 f5          	vaddps ymm14,ymm7,ymm5
  6b1b6b:	c5 c4 5c ed          	vsubps ymm5,ymm7,ymm5
  6b1b6f:	c5 4c 58 dc          	vaddps ymm11,ymm6,ymm4
  6b1b73:	c5 cc 5c e4          	vsubps ymm4,ymm6,ymm4
  6b1b77:	c5 bc 58 f3          	vaddps ymm6,ymm8,ymm3
  6b1b7b:	c4 c1 64 5c d8       	vsubps ymm3,ymm3,ymm8
  6b1b80:	c5 04 58 c0          	vaddps ymm8,ymm15,ymm0
  6b1b84:	c5 84 5c c0          	vsubps ymm0,ymm15,ymm0
  6b1b88:	c4 c1 2c c6 fa d8    	vshufps ymm7,ymm10,ymm10,0xd8
  6b1b8e:	c5 fc 10 8c 24 c0 00 	vmovups ymm1,YMMWORD PTR [rsp+0xc0]
  6b1b95:	00 00 
  6b1b97:	c5 74 58 ff          	vaddps ymm15,ymm1,ymm7
  6b1b9b:	c5 44 5c d1          	vsubps ymm10,ymm7,ymm1
  6b1b9f:	c5 fc 10 4c 24 60    	vmovups ymm1,YMMWORD PTR [rsp+0x60]
  6b1ba5:	c5 fc 10 7c 24 c0    	vmovups ymm7,YMMWORD PTR [rsp-0x40]
  6b1bab:	c5 74 58 cf          	vaddps ymm9,ymm1,ymm7
  6b1baf:	c5 c4 5c c9          	vsubps ymm1,ymm7,ymm1
  6b1bb3:	c5 d4 58 d4          	vaddps ymm2,ymm5,ymm4
  6b1bb7:	c5 fc 11 54 24 20    	vmovups YMMWORD PTR [rsp+0x20],ymm2
  6b1bbd:	c5 dc 5c ed          	vsubps ymm5,ymm4,ymm5
  6b1bc1:	c5 e4 5c d0          	vsubps ymm2,ymm3,ymm0
  6b1bc5:	c5 fc 11 14 24       	vmovups YMMWORD PTR [rsp],ymm2
  6b1bca:	c5 fc 58 c3          	vaddps ymm0,ymm0,ymm3
  6b1bce:	c4 c1 14 58 f9       	vaddps ymm7,ymm13,ymm9
  6b1bd3:	c5 fc 11 bc 24 a0 00 	vmovups YMMWORD PTR [rsp+0xa0],ymm7
  6b1bda:	00 00 
  6b1bdc:	c4 c1 14 5c d1       	vsubps ymm2,ymm13,ymm9
  6b1be1:	c5 fc 11 94 24 e0 00 	vmovups YMMWORD PTR [rsp+0xe0],ymm2
  6b1be8:	00 00 
  6b1bea:	c5 a4 58 de          	vaddps ymm3,ymm11,ymm6
  6b1bee:	c5 fc 11 5c 24 60    	vmovups YMMWORD PTR [rsp+0x60],ymm3
  6b1bf4:	c5 a4 5c d6          	vsubps ymm2,ymm11,ymm6
  6b1bf8:	c5 fc 11 54 24 a0    	vmovups YMMWORD PTR [rsp-0x60],ymm2
  6b1bfe:	c4 c1 1c 58 d7       	vaddps ymm2,ymm12,ymm15
  6b1c03:	c5 fc 11 94 24 80 00 	vmovups YMMWORD PTR [rsp+0x80],ymm2
  6b1c0a:	00 00 
  6b1c0c:	c4 41 04 5c dc       	vsubps ymm11,ymm15,ymm12
  6b1c11:	c4 41 0c 58 e8       	vaddps ymm13,ymm14,ymm8
  6b1c16:	c4 c1 3c 5c e6       	vsubps ymm4,ymm8,ymm14
  6b1c1b:	c5 fc 11 a4 24 c0 00 	vmovups YMMWORD PTR [rsp+0xc0],ymm4
  6b1c22:	00 00 
  6b1c24:	c5 fc 10 74 24 e0    	vmovups ymm6,YMMWORD PTR [rsp-0x20]
  6b1c2a:	c5 7c 10 44 24 80    	vmovups ymm8,YMMWORD PTR [rsp-0x80]
  6b1c30:	c5 bc 58 e6          	vaddps ymm4,ymm8,ymm6
  6b1c34:	c5 fc 11 64 24 40    	vmovups YMMWORD PTR [rsp+0x40],ymm4
  6b1c3a:	c4 c1 4c 5c f0       	vsubps ymm6,ymm6,ymm8
  6b1c3f:	c5 fc 11 74 24 e0    	vmovups YMMWORD PTR [rsp-0x20],ymm6
  6b1c45:	c4 62 7d 18 05 4e 37 	vbroadcastss ymm8,DWORD PTR [rip+0xffffffffff9c374e]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  6b1c4c:	9c ff 
  6b1c4e:	c5 bc 59 ed          	vmulps ymm5,ymm8,ymm5
  6b1c52:	c5 bc 59 c0          	vmulps ymm0,ymm8,ymm0
  6b1c56:	c5 54 5c e0          	vsubps ymm12,ymm5,ymm0
  6b1c5a:	c5 d4 58 c0          	vaddps ymm0,ymm5,ymm0
  6b1c5e:	c5 fc 11 44 24 80    	vmovups YMMWORD PTR [rsp-0x80],ymm0
  6b1c64:	c5 2c 58 f1          	vaddps ymm14,ymm10,ymm1
  6b1c68:	c5 ac 5c c1          	vsubps ymm0,ymm10,ymm1
  6b1c6c:	c5 fc 11 44 24 c0    	vmovups YMMWORD PTR [rsp-0x40],ymm0
  6b1c72:	c5 bc 59 44 24 20    	vmulps ymm0,ymm8,YMMWORD PTR [rsp+0x20]
  6b1c78:	c5 bc 59 0c 24       	vmulps ymm1,ymm8,YMMWORD PTR [rsp]
  6b1c7d:	c5 7c 58 f9          	vaddps ymm15,ymm0,ymm1
  6b1c81:	c5 74 5c c8          	vsubps ymm9,ymm1,ymm0
  6b1c85:	c5 90 58 c7          	vaddps xmm0,xmm13,xmm7
  6b1c89:	c5 e8 58 cb          	vaddps xmm1,xmm2,xmm3
  6b1c8d:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  6b1c91:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  6b1c95:	c5 f8 13 44 16 10    	vmovlps QWORD PTR [rsi+rdx*1+0x10],xmm0
  6b1c9b:	c5 f8 11 14 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm2
  6b1ca0:	c5 80 58 c4          	vaddps xmm0,xmm15,xmm4
  6b1ca4:	c4 c1 08 58 cc       	vaddps xmm1,xmm14,xmm12
  6b1ca9:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  6b1cad:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  6b1cb1:	c5 f8 13 44 16 28    	vmovlps QWORD PTR [rsi+rdx*1+0x28],xmm0
  6b1cb7:	c5 f8 11 54 16 18    	vmovups XMMWORD PTR [rsi+rdx*1+0x18],xmm2
  6b1cbd:	c5 7c 10 84 24 e0 00 	vmovups ymm8,YMMWORD PTR [rsp+0xe0]
  6b1cc4:	00 00 
  6b1cc6:	c5 fc 10 7c 24 a0    	vmovups ymm7,YMMWORD PTR [rsp-0x60]
  6b1ccc:	c5 b8 58 c7          	vaddps xmm0,xmm8,xmm7
  6b1cd0:	c5 fc 10 b4 24 c0 00 	vmovups ymm6,YMMWORD PTR [rsp+0xc0]
  6b1cd7:	00 00 
  6b1cd9:	c5 a0 58 ce          	vaddps xmm1,xmm11,xmm6
  6b1cdd:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  6b1ce1:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  6b1ce5:	c5 f8 13 44 16 40    	vmovlps QWORD PTR [rsi+rdx*1+0x40],xmm0
  6b1ceb:	c5 f8 11 54 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm2
  6b1cf1:	c5 fc 10 6c 24 e0    	vmovups ymm5,YMMWORD PTR [rsp-0x20]
  6b1cf7:	c5 fc 10 64 24 80    	vmovups ymm4,YMMWORD PTR [rsp-0x80]
  6b1cfd:	c5 d0 58 c4          	vaddps xmm0,xmm5,xmm4
  6b1d01:	c5 fc 10 5c 24 c0    	vmovups ymm3,YMMWORD PTR [rsp-0x40]
  6b1d07:	c5 b0 58 cb          	vaddps xmm1,xmm9,xmm3
  6b1d0b:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  6b1d0f:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  6b1d13:	c5 f8 13 44 16 58    	vmovlps QWORD PTR [rsi+rdx*1+0x58],xmm0
  6b1d19:	c5 f8 11 54 16 48    	vmovups XMMWORD PTR [rsi+rdx*1+0x48],xmm2
  6b1d1f:	c5 fc 10 84 24 a0 00 	vmovups ymm0,YMMWORD PTR [rsp+0xa0]
  6b1d26:	00 00 
  6b1d28:	c4 c1 78 5c c5       	vsubps xmm0,xmm0,xmm13
  6b1d2d:	c5 fc 10 8c 24 80 00 	vmovups ymm1,YMMWORD PTR [rsp+0x80]
  6b1d34:	00 00 
  6b1d36:	c5 f0 5c 4c 24 60    	vsubps xmm1,xmm1,XMMWORD PTR [rsp+0x60]
  6b1d3c:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  6b1d40:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  6b1d44:	c5 f8 13 44 16 70    	vmovlps QWORD PTR [rsi+rdx*1+0x70],xmm0
  6b1d4a:	c5 f8 11 54 16 60    	vmovups XMMWORD PTR [rsi+rdx*1+0x60],xmm2
  6b1d50:	c5 fc 10 44 24 40    	vmovups ymm0,YMMWORD PTR [rsp+0x40]
  6b1d56:	c4 c1 78 5c c7       	vsubps xmm0,xmm0,xmm15
  6b1d5b:	c4 c1 08 5c cc       	vsubps xmm1,xmm14,xmm12
  6b1d60:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  6b1d64:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  6b1d68:	c5 f8 13 84 16 88 00 	vmovlps QWORD PTR [rsi+rdx*1+0x88],xmm0
  6b1d6f:	00 00 
  6b1d71:	c5 f8 11 54 16 78    	vmovups XMMWORD PTR [rsi+rdx*1+0x78],xmm2
  6b1d77:	c5 b8 5c c7          	vsubps xmm0,xmm8,xmm7
  6b1d7b:	c5 a0 5c ce          	vsubps xmm1,xmm11,xmm6
  6b1d7f:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  6b1d83:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  6b1d87:	c5 f8 13 84 16 a0 00 	vmovlps QWORD PTR [rsi+rdx*1+0xa0],xmm0
  6b1d8e:	00 00 
  6b1d90:	c5 f8 11 94 16 90 00 	vmovups XMMWORD PTR [rsi+rdx*1+0x90],xmm2
  6b1d97:	00 00 
  6b1d99:	c5 d0 5c c4          	vsubps xmm0,xmm5,xmm4
  6b1d9d:	c4 c1 60 5c c9       	vsubps xmm1,xmm3,xmm9
  6b1da2:	c5 f0 14 d0          	vunpcklps xmm2,xmm1,xmm0
  6b1da6:	c5 f0 15 c0          	vunpckhps xmm0,xmm1,xmm0
  6b1daa:	c5 f8 13 84 16 b8 00 	vmovlps QWORD PTR [rsi+rdx*1+0xb8],xmm0
  6b1db1:	00 00 
  6b1db3:	c5 f8 11 94 16 a8 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xa8],xmm2
  6b1dba:	00 00 
  6b1dbc:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  6b1dc3:	48 39 d0             	cmp    rax,rdx
  6b1dc6:	0f 85 d4 f9 ff ff    	jne    6b17a0 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle+0x20>
  6b1dcc:	48 81 c4 68 01 00 00 	add    rsp,0x168
  6b1dd3:	c5 f8 77             	vzeroupper
  6b1dd6:	c3                   	ret
