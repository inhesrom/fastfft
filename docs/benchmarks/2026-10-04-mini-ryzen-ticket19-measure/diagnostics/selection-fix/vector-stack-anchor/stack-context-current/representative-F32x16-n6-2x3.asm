
target/ticket19/selection-fix/vector-stack-anchor/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a12800 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a12800:	55                   	push   rbp
  a12801:	48 89 e5             	mov    rbp,rsp
  a12804:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a12808:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  a1280f:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  a12814:	48 8d 44 24 40       	lea    rax,[rsp+0x40]
  a12819:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  a1281e:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  a12823:	c5 fb 10 47 10       	vmovsd xmm0,QWORD PTR [rdi+0x10]
  a12828:	c5 f8 10 0f          	vmovups xmm1,XMMWORD PTR [rdi]
  a1282c:	c5 f8 10 57 18       	vmovups xmm2,XMMWORD PTR [rdi+0x18]
  a12831:	62 f3 75 48 18 c0 01 	vinsertf32x4 zmm0,zmm1,xmm0,0x1
  a12838:	62 f1 7c 48 28 0d 3e 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff67c63e]        # 8ee80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c330>
  a1283f:	c6 67 ff 
  a12842:	c5 e0 57 db          	vxorps xmm3,xmm3,xmm3
  a12846:	62 f1 7c 48 28 e0    	vmovaps zmm4,zmm0
  a1284c:	62 f2 75 48 7f e3    	vpermt2ps zmm4,zmm1,zmm3
  a12852:	62 f1 7c 48 28 2d 64 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff67c664]        # 8eec0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c370>
  a12859:	c6 67 ff 
  a1285c:	62 f2 55 48 7f c3    	vpermt2ps zmm0,zmm5,zmm3
  a12862:	c5 fb 10 77 28       	vmovsd xmm6,QWORD PTR [rdi+0x28]
  a12867:	62 f3 6d 48 18 d6 01 	vinsertf32x4 zmm2,zmm2,xmm6,0x1
  a1286e:	62 f2 6d 48 77 cb    	vpermi2ps zmm1,zmm2,zmm3
  a12874:	62 f2 55 48 7f d3    	vpermt2ps zmm2,zmm5,zmm3
  a1287a:	62 f1 7c 48 58 ea    	vaddps zmm5,zmm0,zmm2
  a12880:	62 f1 5c 48 58 f1    	vaddps zmm6,zmm4,zmm1
  a12886:	62 f1 7c 48 5c c2    	vsubps zmm0,zmm0,zmm2
  a1288c:	62 f1 5c 48 5c c9    	vsubps zmm1,zmm4,zmm1
  a12892:	62 f1 7c 48 28 15 e4 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff6b46e4]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a12899:	46 6b ff 
  a1289c:	62 f2 6d 48 7f eb    	vpermt2ps zmm5,zmm2,zmm3
  a128a2:	62 f2 6d 48 7f c3    	vpermt2ps zmm0,zmm2,zmm3
  a128a8:	c5 d8 57 e4          	vxorps xmm4,xmm4,xmm4
  a128ac:	62 f2 6d 48 7f e4    	vpermt2ps zmm4,zmm2,zmm4
  a128b2:	62 f1 7c 48 28 3d 44 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff6b4644]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a128b9:	46 6b ff 
  a128bc:	62 f2 45 48 7f ec    	vpermt2ps zmm5,zmm7,zmm4
  a128c2:	62 f2 45 48 7f c4    	vpermt2ps zmm0,zmm7,zmm4
  a128c8:	62 f2 6d 48 7f f3    	vpermt2ps zmm6,zmm2,zmm3
  a128ce:	62 f2 6d 48 7f cb    	vpermt2ps zmm1,zmm2,zmm3
  a128d4:	62 f2 45 48 7f f4    	vpermt2ps zmm6,zmm7,zmm4
  a128da:	62 f2 45 48 7f cc    	vpermt2ps zmm1,zmm7,zmm4
  a128e0:	62 f2 45 48 7f e4    	vpermt2ps zmm4,zmm7,zmm4
  a128e6:	62 f1 d5 48 14 d4    	vunpcklpd zmm2,zmm5,zmm4
  a128ec:	62 f1 d5 48 15 dc    	vunpckhpd zmm3,zmm5,zmm4
  a128f2:	62 f1 fd 48 14 ec    	vunpcklpd zmm5,zmm0,zmm4
  a128f8:	62 f1 fd 48 15 c4    	vunpckhpd zmm0,zmm0,zmm4
  a128fe:	62 f1 7c 48 28 3d f8 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff6b44f8]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a12905:	44 6b ff 
  a12908:	62 71 7c 48 28 c2    	vmovaps zmm8,zmm2
  a1290e:	62 72 45 48 7f c5    	vpermt2ps zmm8,zmm7,zmm5
  a12914:	62 71 7c 48 28 0d 22 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff6b4522]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a1291b:	45 6b ff 
  a1291e:	62 f2 35 48 7f d5    	vpermt2ps zmm2,zmm9,zmm5
  a12924:	62 f2 45 48 7f d8    	vpermt2ps zmm3,zmm7,zmm0
  a1292a:	62 f1 cd 48 14 c4    	vunpcklpd zmm0,zmm6,zmm4
  a12930:	62 f1 cd 48 15 ec    	vunpckhpd zmm5,zmm6,zmm4
  a12936:	62 f1 f5 48 14 f4    	vunpcklpd zmm6,zmm1,zmm4
  a1293c:	62 f1 f5 48 15 cc    	vunpckhpd zmm1,zmm1,zmm4
  a12942:	62 f1 7c 48 28 e0    	vmovaps zmm4,zmm0
  a12948:	62 f2 45 48 7f e6    	vpermt2ps zmm4,zmm7,zmm6
  a1294e:	62 f2 35 48 7f c6    	vpermt2ps zmm0,zmm9,zmm6
  a12954:	62 f2 45 48 7f e9    	vpermt2ps zmm5,zmm7,zmm1
  a1295a:	62 f1 7c 48 10 4a 02 	vmovups zmm1,ZMMWORD PTR [rdx+0x80]
  a12961:	62 f1 7c 48 10 72 03 	vmovups zmm6,ZMMWORD PTR [rdx+0xc0]
  a12968:	62 f1 7c 48 10 7a 04 	vmovups zmm7,ZMMWORD PTR [rdx+0x100]
  a1296f:	62 71 7c 48 10 4a 05 	vmovups zmm9,ZMMWORD PTR [rdx+0x140]
  a12976:	62 71 6c 48 59 d1    	vmulps zmm10,zmm2,zmm1
  a1297c:	62 72 7d 48 bc d6    	vfnmadd231ps zmm10,zmm0,zmm6
  a12982:	62 71 64 48 59 df    	vmulps zmm11,zmm3,zmm7
  a12988:	62 52 55 48 bc d9    	vfnmadd231ps zmm11,zmm5,zmm9
  a1298e:	62 51 2c 48 58 e3    	vaddps zmm12,zmm10,zmm11
  a12994:	62 f1 7c 48 59 c1    	vmulps zmm0,zmm0,zmm1
  a1299a:	62 f2 4d 48 b8 c2    	vfmadd231ps zmm0,zmm6,zmm2
  a129a0:	62 f1 54 48 59 cf    	vmulps zmm1,zmm5,zmm7
  a129a6:	62 f2 35 48 b8 cb    	vfmadd231ps zmm1,zmm9,zmm3
  a129ac:	62 f1 7c 48 58 d1    	vaddps zmm2,zmm0,zmm1
  a129b2:	62 f2 7d 48 18 1d a4 	vbroadcastss zmm3,DWORD PTR [rip+0xffffffffff662aa4]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a129b9:	2a 66 ff 
  a129bc:	62 f1 7c 48 28 eb    	vmovaps zmm5,zmm3
  a129c2:	62 d2 1d 48 ac e8    	vfnmadd213ps zmm5,zmm12,zmm8
  a129c8:	62 f2 6d 48 ac dc    	vfnmadd213ps zmm3,zmm2,zmm4
  a129ce:	c4 c1 38 58 f4       	vaddps xmm6,xmm8,xmm12
  a129d3:	c5 d8 58 d2          	vaddps xmm2,xmm4,xmm2
  a129d7:	c5 e8 14 d6          	vunpcklps xmm2,xmm2,xmm6
  a129db:	c5 f8 11 16          	vmovups XMMWORD PTR [rsi],xmm2
  a129df:	c4 e2 79 18 15 ec 28 	vbroadcastss xmm2,DWORD PTR [rip+0xffffffffff6628ec]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a129e6:	66 ff 
  a129e8:	c5 f8 5c c1          	vsubps xmm0,xmm0,xmm1
  a129ec:	c5 f8 59 c2          	vmulps xmm0,xmm0,xmm2
  a129f0:	c5 d0 58 c8          	vaddps xmm1,xmm5,xmm0
  a129f4:	c4 c1 28 5c e3       	vsubps xmm4,xmm10,xmm11
  a129f9:	c5 d8 59 d2          	vmulps xmm2,xmm4,xmm2
  a129fd:	c5 e0 5c e2          	vsubps xmm4,xmm3,xmm2
  a12a01:	c5 d8 14 c9          	vunpcklps xmm1,xmm4,xmm1
  a12a05:	c5 f8 11 4e 10       	vmovups XMMWORD PTR [rsi+0x10],xmm1
  a12a0a:	c5 d0 5c c0          	vsubps xmm0,xmm5,xmm0
  a12a0e:	c5 e0 58 ca          	vaddps xmm1,xmm3,xmm2
  a12a12:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  a12a16:	c5 f8 11 46 20       	vmovups XMMWORD PTR [rsi+0x20],xmm0
  a12a1b:	48 89 ec             	mov    rsp,rbp
  a12a1e:	5d                   	pop    rbp
  a12a1f:	c5 f8 77             	vzeroupper
  a12a22:	c3                   	ret
