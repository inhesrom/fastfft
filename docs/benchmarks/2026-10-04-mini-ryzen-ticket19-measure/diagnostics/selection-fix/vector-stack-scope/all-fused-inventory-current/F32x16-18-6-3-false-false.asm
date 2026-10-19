
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a0d6c0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a0d6c0:	55                   	push   rbp
  a0d6c1:	48 89 e5             	mov    rbp,rsp
  a0d6c4:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a0d6c8:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  a0d6cf:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  a0d6d4:	48 8d 44 24 40       	lea    rax,[rsp+0x40]
  a0d6d9:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  a0d6de:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  a0d6e3:	c5 fb 10 47 10       	vmovsd xmm0,QWORD PTR [rdi+0x10]
  a0d6e8:	c5 f8 10 0f          	vmovups xmm1,XMMWORD PTR [rdi]
  a0d6ec:	c5 f8 10 57 18       	vmovups xmm2,XMMWORD PTR [rdi+0x18]
  a0d6f1:	c5 f8 10 5f 30       	vmovups xmm3,XMMWORD PTR [rdi+0x30]
  a0d6f6:	c5 f8 10 7f 48       	vmovups xmm7,XMMWORD PTR [rdi+0x48]
  a0d6fb:	62 f3 75 48 18 e0 01 	vinsertf32x4 zmm4,zmm1,xmm0,0x1
  a0d702:	62 f1 7c 48 28 35 f4 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff6814f4]        # 8ec00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c0b0>
  a0d709:	14 68 ff 
  a0d70c:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a0d710:	62 f1 7c 48 28 ec    	vmovaps zmm5,zmm4
  a0d716:	62 f2 4d 48 7f e8    	vpermt2ps zmm5,zmm6,zmm0
  a0d71c:	62 f1 7c 48 28 0d 1a 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff68151a]        # 8ec40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c0f0>
  a0d723:	15 68 ff 
  a0d726:	62 f2 75 48 7f e0    	vpermt2ps zmm4,zmm1,zmm0
  a0d72c:	c5 7b 10 47 28       	vmovsd xmm8,QWORD PTR [rdi+0x28]
  a0d731:	62 53 6d 48 18 c8 01 	vinsertf32x4 zmm9,zmm2,xmm8,0x1
  a0d738:	62 51 7c 48 28 c1    	vmovaps zmm8,zmm9
  a0d73e:	62 72 4d 48 7f c0    	vpermt2ps zmm8,zmm6,zmm0
  a0d744:	62 72 75 48 7f c8    	vpermt2ps zmm9,zmm1,zmm0
  a0d74a:	c5 fb 10 57 40       	vmovsd xmm2,QWORD PTR [rdi+0x40]
  a0d74f:	62 73 65 48 18 d2 01 	vinsertf32x4 zmm10,zmm3,xmm2,0x1
  a0d756:	62 51 7c 48 28 da    	vmovaps zmm11,zmm10
  a0d75c:	62 72 4d 48 7f d8    	vpermt2ps zmm11,zmm6,zmm0
  a0d762:	62 72 75 48 7f d0    	vpermt2ps zmm10,zmm1,zmm0
  a0d768:	c5 fb 10 57 58       	vmovsd xmm2,QWORD PTR [rdi+0x58]
  a0d76d:	62 73 45 48 18 e2 01 	vinsertf32x4 zmm12,zmm7,xmm2,0x1
  a0d774:	62 51 7c 48 28 ec    	vmovaps zmm13,zmm12
  a0d77a:	62 72 4d 48 7f e8    	vpermt2ps zmm13,zmm6,zmm0
  a0d780:	62 72 75 48 7f e0    	vpermt2ps zmm12,zmm1,zmm0
  a0d786:	c5 fb 10 57 70       	vmovsd xmm2,QWORD PTR [rdi+0x70]
  a0d78b:	c5 f8 10 5f 60       	vmovups xmm3,XMMWORD PTR [rdi+0x60]
  a0d790:	62 73 65 48 18 f2 01 	vinsertf32x4 zmm14,zmm3,xmm2,0x1
  a0d797:	62 51 7c 48 28 fe    	vmovaps zmm15,zmm14
  a0d79d:	62 72 4d 48 7f f8    	vpermt2ps zmm15,zmm6,zmm0
  a0d7a3:	62 72 75 48 7f f0    	vpermt2ps zmm14,zmm1,zmm0
  a0d7a9:	c5 fb 10 97 88 00 00 	vmovsd xmm2,QWORD PTR [rdi+0x88]
  a0d7b0:	00 
  a0d7b1:	c5 f8 10 5f 78       	vmovups xmm3,XMMWORD PTR [rdi+0x78]
  a0d7b6:	62 e3 65 48 18 c2 01 	vinsertf32x4 zmm16,zmm3,xmm2,0x1
  a0d7bd:	62 f2 7d 40 77 f0    	vpermi2ps zmm6,zmm16,zmm0
  a0d7c3:	62 e2 75 48 7f c0    	vpermt2ps zmm16,zmm1,zmm0
  a0d7c9:	62 d1 24 48 58 d7    	vaddps zmm2,zmm11,zmm15
  a0d7cf:	62 e1 54 48 58 ca    	vaddps zmm17,zmm5,zmm2
  a0d7d5:	62 c1 4c 48 58 d0    	vaddps zmm18,zmm6,zmm8
  a0d7db:	62 a1 14 48 58 da    	vaddps zmm19,zmm13,zmm18
  a0d7e1:	62 b1 74 40 58 fb    	vaddps zmm7,zmm17,zmm19
  a0d7e7:	62 c1 2c 48 58 e6    	vaddps zmm20,zmm10,zmm14
  a0d7ed:	62 a1 5c 48 58 ec    	vaddps zmm21,zmm4,zmm20
  a0d7f3:	62 c1 7c 40 58 f1    	vaddps zmm22,zmm16,zmm9
  a0d7f9:	62 a1 1c 48 58 fe    	vaddps zmm23,zmm12,zmm22
  a0d7ff:	62 f2 7d 48 18 0d 57 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff667c57]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a0d806:	7c 66 ff 
  a0d809:	62 b1 54 40 58 df    	vaddps zmm3,zmm21,zmm23
  a0d80f:	62 f2 75 48 bc ea    	vfnmadd231ps zmm5,zmm1,zmm2
  a0d815:	62 f2 7d 48 18 15 b5 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff667ab5]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a0d81c:	7a 66 ff 
  a0d81f:	62 51 2c 48 5c d6    	vsubps zmm10,zmm10,zmm14
  a0d825:	62 71 2c 48 59 d2    	vmulps zmm10,zmm10,zmm2
  a0d82b:	62 51 54 48 58 f2    	vaddps zmm14,zmm5,zmm10
  a0d831:	62 32 75 48 bc ea    	vfnmadd231ps zmm13,zmm1,zmm18
  a0d837:	62 51 7c 40 5c c9    	vsubps zmm9,zmm16,zmm9
  a0d83d:	62 71 34 48 59 ca    	vmulps zmm9,zmm9,zmm2
  a0d843:	62 c1 14 48 58 c1    	vaddps zmm16,zmm13,zmm9
  a0d849:	62 a1 0c 48 5c d0    	vsubps zmm18,zmm14,zmm16
  a0d84f:	62 b2 75 48 bc e4    	vfnmadd231ps zmm4,zmm1,zmm20
  a0d855:	62 51 24 48 5c df    	vsubps zmm11,zmm11,zmm15
  a0d85b:	62 71 24 48 59 da    	vmulps zmm11,zmm11,zmm2
  a0d861:	62 51 5c 48 5c fb    	vsubps zmm15,zmm4,zmm11
  a0d867:	62 32 75 48 bc e6    	vfnmadd231ps zmm12,zmm1,zmm22
  a0d86d:	62 d1 4c 48 5c f0    	vsubps zmm6,zmm6,zmm8
  a0d873:	62 71 4c 48 59 c2    	vmulps zmm8,zmm6,zmm2
  a0d879:	62 c1 1c 48 5c e0    	vsubps zmm20,zmm12,zmm8
  a0d87f:	62 b1 04 48 5c f4    	vsubps zmm6,zmm15,zmm20
  a0d885:	62 d1 54 48 5c ea    	vsubps zmm5,zmm5,zmm10
  a0d88b:	62 51 14 48 5c c9    	vsubps zmm9,zmm13,zmm9
  a0d891:	62 51 54 48 58 d1    	vaddps zmm10,zmm5,zmm9
  a0d897:	62 f1 24 48 58 e4    	vaddps zmm4,zmm11,zmm4
  a0d89d:	62 51 3c 48 58 c4    	vaddps zmm8,zmm8,zmm12
  a0d8a3:	62 51 5c 48 58 d8    	vaddps zmm11,zmm4,zmm8
  a0d8a9:	62 31 74 40 5c e3    	vsubps zmm12,zmm17,zmm19
  a0d8af:	62 31 54 40 5c ef    	vsubps zmm13,zmm21,zmm23
  a0d8b5:	62 31 0c 48 58 f0    	vaddps zmm14,zmm14,zmm16
  a0d8bb:	62 31 04 48 58 fc    	vaddps zmm15,zmm15,zmm20
  a0d8c1:	62 d1 54 48 5c e9    	vsubps zmm5,zmm5,zmm9
  a0d8c7:	62 51 5c 48 5c c0    	vsubps zmm8,zmm4,zmm8
  a0d8cd:	62 71 7c 48 28 0d a9 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff6b96a9]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a0d8d4:	96 6b ff 
  a0d8d7:	62 f2 35 48 7f f8    	vpermt2ps zmm7,zmm9,zmm0
  a0d8dd:	62 e2 35 48 7f d0    	vpermt2ps zmm18,zmm9,zmm0
  a0d8e3:	62 72 35 48 7f d0    	vpermt2ps zmm10,zmm9,zmm0
  a0d8e9:	62 72 35 48 7f e0    	vpermt2ps zmm12,zmm9,zmm0
  a0d8ef:	62 72 35 48 7f f0    	vpermt2ps zmm14,zmm9,zmm0
  a0d8f5:	62 f2 35 48 7f e8    	vpermt2ps zmm5,zmm9,zmm0
  a0d8fb:	62 a1 7c 00 57 c0    	vxorps xmm16,xmm16,xmm16
  a0d901:	62 a2 35 48 7f c0    	vpermt2ps zmm16,zmm9,zmm16
  a0d907:	62 e1 7c 48 28 0d ef 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff6b95ef]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a0d90e:	95 6b ff 
  a0d911:	62 d2 75 40 7f fe    	vpermt2ps zmm7,zmm17,zmm14
  a0d917:	62 e2 75 40 7f d5    	vpermt2ps zmm18,zmm17,zmm5
  a0d91d:	62 32 75 40 7f d0    	vpermt2ps zmm10,zmm17,zmm16
  a0d923:	62 32 75 40 7f e0    	vpermt2ps zmm12,zmm17,zmm16
  a0d929:	62 d1 c5 48 14 ea    	vunpcklpd zmm5,zmm7,zmm10
  a0d92f:	62 d1 c5 48 15 fa    	vunpckhpd zmm7,zmm7,zmm10
  a0d935:	62 51 ed 40 14 d4    	vunpcklpd zmm10,zmm18,zmm12
  a0d93b:	62 51 ed 40 15 e4    	vunpckhpd zmm12,zmm18,zmm12
  a0d941:	62 71 7c 48 28 35 b5 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff6b94b5]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a0d948:	94 6b ff 
  a0d94b:	62 f1 7c 48 28 e5    	vmovaps zmm4,zmm5
  a0d951:	62 d2 0d 48 7f e2    	vpermt2ps zmm4,zmm14,zmm10
  a0d957:	62 e1 7c 48 28 15 df 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff6b94df]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a0d95e:	94 6b ff 
  a0d961:	62 d2 6d 40 7f ea    	vpermt2ps zmm5,zmm18,zmm10
  a0d967:	62 d2 0d 48 7f fc    	vpermt2ps zmm7,zmm14,zmm12
  a0d96d:	62 f2 35 48 7f d8    	vpermt2ps zmm3,zmm9,zmm0
  a0d973:	62 f2 35 48 7f f0    	vpermt2ps zmm6,zmm9,zmm0
  a0d979:	62 72 35 48 7f d8    	vpermt2ps zmm11,zmm9,zmm0
  a0d97f:	62 72 35 48 7f e8    	vpermt2ps zmm13,zmm9,zmm0
  a0d985:	62 72 35 48 7f f8    	vpermt2ps zmm15,zmm9,zmm0
  a0d98b:	62 72 35 48 7f c0    	vpermt2ps zmm8,zmm9,zmm0
  a0d991:	62 d2 75 40 7f df    	vpermt2ps zmm3,zmm17,zmm15
  a0d997:	62 d2 75 40 7f f0    	vpermt2ps zmm6,zmm17,zmm8
  a0d99d:	62 32 75 40 7f d8    	vpermt2ps zmm11,zmm17,zmm16
  a0d9a3:	62 32 75 40 7f e8    	vpermt2ps zmm13,zmm17,zmm16
  a0d9a9:	62 d1 e5 48 14 c3    	vunpcklpd zmm0,zmm3,zmm11
  a0d9af:	62 d1 e5 48 15 db    	vunpckhpd zmm3,zmm3,zmm11
  a0d9b5:	62 51 cd 48 14 c5    	vunpcklpd zmm8,zmm6,zmm13
  a0d9bb:	62 d1 cd 48 15 f5    	vunpckhpd zmm6,zmm6,zmm13
  a0d9c1:	62 71 7c 48 28 c8    	vmovaps zmm9,zmm0
  a0d9c7:	62 52 0d 48 7f c8    	vpermt2ps zmm9,zmm14,zmm8
  a0d9cd:	62 d2 6d 40 7f c0    	vpermt2ps zmm0,zmm18,zmm8
  a0d9d3:	62 f2 0d 48 7f de    	vpermt2ps zmm3,zmm14,zmm6
  a0d9d9:	62 f1 7c 48 10 72 02 	vmovups zmm6,ZMMWORD PTR [rdx+0x80]
  a0d9e0:	62 71 7c 48 10 42 03 	vmovups zmm8,ZMMWORD PTR [rdx+0xc0]
  a0d9e7:	62 71 7c 48 10 52 04 	vmovups zmm10,ZMMWORD PTR [rdx+0x100]
  a0d9ee:	62 71 7c 48 10 5a 05 	vmovups zmm11,ZMMWORD PTR [rdx+0x140]
  a0d9f5:	62 71 54 48 59 e6    	vmulps zmm12,zmm5,zmm6
  a0d9fb:	62 52 7d 48 bc e0    	vfnmadd231ps zmm12,zmm0,zmm8
  a0da01:	62 51 44 48 59 ea    	vmulps zmm13,zmm7,zmm10
  a0da07:	62 52 65 48 bc eb    	vfnmadd231ps zmm13,zmm3,zmm11
  a0da0d:	62 51 1c 48 58 f5    	vaddps zmm14,zmm12,zmm13
  a0da13:	62 f1 7c 48 59 c6    	vmulps zmm0,zmm0,zmm6
  a0da19:	62 f2 3d 48 b8 c5    	vfmadd231ps zmm0,zmm8,zmm5
  a0da1f:	62 d1 64 48 59 da    	vmulps zmm3,zmm3,zmm10
  a0da25:	62 f2 25 48 b8 df    	vfmadd231ps zmm3,zmm11,zmm7
  a0da2b:	62 f1 7c 48 58 eb    	vaddps zmm5,zmm0,zmm3
  a0da31:	62 f1 7c 48 28 f1    	vmovaps zmm6,zmm1
  a0da37:	62 f2 0d 48 ac f4    	vfnmadd213ps zmm6,zmm14,zmm4
  a0da3d:	62 f1 7c 48 5c c3    	vsubps zmm0,zmm0,zmm3
  a0da43:	62 f1 7c 48 59 c2    	vmulps zmm0,zmm0,zmm2
  a0da49:	62 f1 4c 48 58 d8    	vaddps zmm3,zmm6,zmm0
  a0da4f:	62 d2 55 48 ac c9    	vfnmadd213ps zmm1,zmm5,zmm9
  a0da55:	62 d1 1c 48 5c fd    	vsubps zmm7,zmm12,zmm13
  a0da5b:	62 f1 44 48 59 d2    	vmulps zmm2,zmm7,zmm2
  a0da61:	62 f1 74 48 5c fa    	vsubps zmm7,zmm1,zmm2
  a0da67:	62 f1 4c 48 5c c0    	vsubps zmm0,zmm6,zmm0
  a0da6d:	62 f1 74 48 58 ca    	vaddps zmm1,zmm1,zmm2
  a0da73:	62 d1 5c 48 58 d6    	vaddps zmm2,zmm4,zmm14
  a0da79:	62 f1 34 48 58 e5    	vaddps zmm4,zmm9,zmm5
  a0da7f:	62 f1 7c 48 28 2d f7 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff6811f7]        # 8ec80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c130>
  a0da86:	11 68 ff 
  a0da89:	62 f2 55 48 7f d4    	vpermt2ps zmm2,zmm5,zmm4
  a0da8f:	62 f3 7d 48 19 56 02 	vextractf32x4 XMMWORD PTR [rsi+0x20],zmm2,0x2
  a0da96:	02 
  a0da97:	c5 fc 11 16          	vmovups YMMWORD PTR [rsi],ymm2
  a0da9b:	62 f2 55 48 7f df    	vpermt2ps zmm3,zmm5,zmm7
  a0daa1:	62 f3 7d 48 19 5e 05 	vextractf32x4 XMMWORD PTR [rsi+0x50],zmm3,0x2
  a0daa8:	02 
  a0daa9:	c5 fc 11 5e 30       	vmovups YMMWORD PTR [rsi+0x30],ymm3
  a0daae:	62 f2 55 48 7f c1    	vpermt2ps zmm0,zmm5,zmm1
  a0dab4:	62 f3 7d 48 19 46 08 	vextractf32x4 XMMWORD PTR [rsi+0x80],zmm0,0x2
  a0dabb:	02 
  a0dabc:	c5 fc 11 46 60       	vmovups YMMWORD PTR [rsi+0x60],ymm0
  a0dac1:	48 89 ec             	mov    rsp,rbp
  a0dac4:	5d                   	pop    rbp
  a0dac5:	c5 f8 77             	vzeroupper
  a0dac8:	c3                   	ret
