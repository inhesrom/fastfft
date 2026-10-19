
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a57500 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a57500:	55                   	push   rbp
  a57501:	48 89 e5             	mov    rbp,rsp
  a57504:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a57508:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  a5750f:	62 f1 7c 48 28 05 67 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff66fa67]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a57516:	fa 66 ff 
  a57519:	62 f1 7c 48 28 0d dd 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff66f9dd]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a57520:	f9 66 ff 
  a57523:	62 f1 7c 48 28 15 d3 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff66f8d3]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a5752a:	f8 66 ff 
  a5752d:	62 f1 7c 48 28 1d 09 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff66f909]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a57534:	f9 66 ff 
  a57537:	48 c1 e2 04          	shl    rdx,0x4
  a5753b:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  a5753f:	31 d2                	xor    edx,edx
  a57541:	4c 8d 44 24 40       	lea    r8,[rsp+0x40]
  a57546:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  a5754b:	62 f1 7c 48 28 25 ab 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff63b9ab]        # 92f00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x203b0>
  a57552:	b9 63 ff 
  a57555:	c5 d0 57 ed          	vxorps xmm5,xmm5,xmm5
  a57559:	62 f2 7d 48 18 35 fd 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff61defd]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a57560:	de 61 ff 
  a57563:	62 f2 7d 48 18 3d 67 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff61dd67]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a5756a:	dd 61 ff 
  a5756d:	62 71 7c 48 28 05 c9 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff63b9c9]        # 92f40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x203f0>
  a57574:	b9 63 ff 
  a57577:	c4 41 30 57 c9       	vxorps xmm9,xmm9,xmm9
  a5757c:	62 52 7d 48 7f c9    	vpermt2ps zmm9,zmm0,zmm9
  a57582:	62 71 7c 48 28 15 f4 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff63b9f4]        # 92f80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20430>
  a57589:	b9 63 ff 
  a5758c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  a57590:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  a57595:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  a5759a:	c5 7b 10 5c 17 10    	vmovsd xmm11,QWORD PTR [rdi+rdx*1+0x10]
  a575a0:	c5 78 10 24 17       	vmovups xmm12,XMMWORD PTR [rdi+rdx*1]
  a575a5:	c5 78 10 6c 17 18    	vmovups xmm13,XMMWORD PTR [rdi+rdx*1+0x18]
  a575ab:	c5 78 10 7c 17 30    	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x30]
  a575b1:	62 e1 7c 08 10 84 17 	vmovups xmm16,XMMWORD PTR [rdi+rdx*1+0x48]
  a575b8:	48 00 00 00 
  a575bc:	62 53 1d 48 18 db 01 	vinsertf32x4 zmm11,zmm12,xmm11,0x1
  a575c3:	62 51 7c 48 28 e3    	vmovaps zmm12,zmm11
  a575c9:	62 72 5d 48 7f e5    	vpermt2ps zmm12,zmm4,zmm5
  a575cf:	62 72 3d 48 7f dd    	vpermt2ps zmm11,zmm8,zmm5
  a575d5:	c5 7b 10 74 17 28    	vmovsd xmm14,QWORD PTR [rdi+rdx*1+0x28]
  a575db:	62 c3 15 48 18 ce 01 	vinsertf32x4 zmm17,zmm13,xmm14,0x1
  a575e2:	62 31 7c 48 28 f1    	vmovaps zmm14,zmm17
  a575e8:	62 72 5d 48 7f f5    	vpermt2ps zmm14,zmm4,zmm5
  a575ee:	62 e2 3d 48 7f cd    	vpermt2ps zmm17,zmm8,zmm5
  a575f4:	c5 7b 10 6c 17 40    	vmovsd xmm13,QWORD PTR [rdi+rdx*1+0x40]
  a575fa:	62 53 05 48 18 fd 01 	vinsertf32x4 zmm15,zmm15,xmm13,0x1
  a57601:	62 c1 7c 48 28 d7    	vmovaps zmm18,zmm15
  a57607:	62 e2 5d 48 7f d5    	vpermt2ps zmm18,zmm4,zmm5
  a5760d:	62 72 3d 48 7f fd    	vpermt2ps zmm15,zmm8,zmm5
  a57613:	c5 7b 10 6c 17 58    	vmovsd xmm13,QWORD PTR [rdi+rdx*1+0x58]
  a57619:	62 53 7d 40 18 ed 01 	vinsertf32x4 zmm13,zmm16,xmm13,0x1
  a57620:	62 c1 7c 48 28 c5    	vmovaps zmm16,zmm13
  a57626:	62 e2 5d 48 7f c5    	vpermt2ps zmm16,zmm4,zmm5
  a5762c:	62 e1 ff 08 10 5c 17 	vmovsd xmm19,QWORD PTR [rdi+rdx*1+0x70]
  a57633:	0e 
  a57634:	62 e1 7c 08 10 64 17 	vmovups xmm20,XMMWORD PTR [rdi+rdx*1+0x60]
  a5763b:	06 
  a5763c:	62 a3 5d 40 18 db 01 	vinsertf32x4 zmm19,zmm20,xmm19,0x1
  a57643:	62 a1 7c 48 28 e3    	vmovaps zmm20,zmm19
  a57649:	62 e2 5d 48 7f e5    	vpermt2ps zmm20,zmm4,zmm5
  a5764f:	62 e2 3d 48 7f dd    	vpermt2ps zmm19,zmm8,zmm5
  a57655:	62 e1 ff 08 10 6c 17 	vmovsd xmm21,QWORD PTR [rdi+rdx*1+0x88]
  a5765c:	11 
  a5765d:	62 e1 7c 08 10 b4 17 	vmovups xmm22,XMMWORD PTR [rdi+rdx*1+0x78]
  a57664:	78 00 00 00 
  a57668:	62 a3 4d 40 18 ed 01 	vinsertf32x4 zmm21,zmm22,xmm21,0x1
  a5766f:	62 a1 7c 48 28 f5    	vmovaps zmm22,zmm21
  a57675:	62 e2 5d 48 7f f5    	vpermt2ps zmm22,zmm4,zmm5
  a5767b:	62 e2 3d 48 7f ed    	vpermt2ps zmm21,zmm8,zmm5
  a57681:	62 a1 6c 40 58 fc    	vaddps zmm23,zmm18,zmm20
  a57687:	62 21 1c 48 58 c7    	vaddps zmm24,zmm12,zmm23
  a5768d:	62 41 4c 40 58 ce    	vaddps zmm25,zmm22,zmm14
  a57693:	62 32 4d 48 bc e7    	vfnmadd231ps zmm12,zmm6,zmm23
  a57699:	62 a1 04 48 58 fb    	vaddps zmm23,zmm15,zmm19
  a5769f:	62 31 04 48 5c fb    	vsubps zmm15,zmm15,zmm19
  a576a5:	62 81 7c 40 58 d9    	vaddps zmm19,zmm16,zmm25
  a576ab:	62 82 4d 48 bc c1    	vfnmadd231ps zmm16,zmm6,zmm25
  a576b1:	62 21 54 40 58 c9    	vaddps zmm25,zmm21,zmm17
  a576b7:	62 a1 54 40 5c c9    	vsubps zmm17,zmm21,zmm17
  a576bd:	62 a1 24 48 58 ef    	vaddps zmm21,zmm11,zmm23
  a576c3:	62 32 4d 48 bc df    	vfnmadd231ps zmm11,zmm6,zmm23
  a576c9:	62 72 3d 48 7f ed    	vpermt2ps zmm13,zmm8,zmm5
  a576cf:	62 a1 6c 40 5c d4    	vsubps zmm18,zmm18,zmm20
  a576d5:	62 81 14 48 58 e1    	vaddps zmm20,zmm13,zmm25
  a576db:	62 12 4d 48 bc e9    	vfnmadd231ps zmm13,zmm6,zmm25
  a576e1:	62 71 04 48 59 ff    	vmulps zmm15,zmm15,zmm7
  a576e7:	62 51 4c 40 5c f6    	vsubps zmm14,zmm22,zmm14
  a576ed:	62 c1 1c 48 58 f7    	vaddps zmm22,zmm12,zmm15
  a576f3:	62 e1 74 40 59 cf    	vmulps zmm17,zmm17,zmm7
  a576f9:	62 51 1c 48 5c ff    	vsubps zmm15,zmm12,zmm15
  a576ff:	62 a1 7c 40 58 f9    	vaddps zmm23,zmm16,zmm17
  a57705:	62 71 6c 40 59 e7    	vmulps zmm12,zmm18,zmm7
  a5770b:	62 a1 7c 40 5c c1    	vsubps zmm16,zmm16,zmm17
  a57711:	62 c1 24 48 5c cc    	vsubps zmm17,zmm11,zmm12
  a57717:	62 71 0c 48 59 f7    	vmulps zmm14,zmm14,zmm7
  a5771d:	62 51 1c 48 58 db    	vaddps zmm11,zmm12,zmm11
  a57723:	62 c1 14 48 5c d6    	vsubps zmm18,zmm13,zmm14
  a57729:	62 51 0c 48 58 f5    	vaddps zmm14,zmm14,zmm13
  a5772f:	62 21 3c 40 58 cb    	vaddps zmm25,zmm24,zmm19
  a57735:	62 a1 3c 40 5c db    	vsubps zmm19,zmm24,zmm19
  a5773b:	62 31 54 40 58 ec    	vaddps zmm13,zmm21,zmm20
  a57741:	62 31 54 40 5c e4    	vsubps zmm12,zmm21,zmm20
  a57747:	62 a1 4c 40 5c e7    	vsubps zmm20,zmm22,zmm23
  a5774d:	62 a1 4c 40 58 ef    	vaddps zmm21,zmm22,zmm23
  a57753:	62 a1 74 40 5c f2    	vsubps zmm22,zmm17,zmm18
  a57759:	62 a1 74 40 58 ca    	vaddps zmm17,zmm17,zmm18
  a5775f:	62 a1 04 48 58 d0    	vaddps zmm18,zmm15,zmm16
  a57765:	62 31 04 48 5c f8    	vsubps zmm15,zmm15,zmm16
  a5776b:	62 c1 24 48 58 c6    	vaddps zmm16,zmm11,zmm14
  a57771:	62 51 24 48 5c f6    	vsubps zmm14,zmm11,zmm14
  a57777:	62 62 7d 48 7f cd    	vpermt2ps zmm25,zmm0,zmm5
  a5777d:	62 e2 7d 48 7f ed    	vpermt2ps zmm21,zmm0,zmm5
  a57783:	62 22 75 48 7f cd    	vpermt2ps zmm25,zmm1,zmm21
  a57789:	62 e2 7d 48 7f e5    	vpermt2ps zmm20,zmm0,zmm5
  a5778f:	62 e2 7d 48 7f d5    	vpermt2ps zmm18,zmm0,zmm5
  a57795:	62 e2 7d 48 7f dd    	vpermt2ps zmm19,zmm0,zmm5
  a5779b:	62 72 7d 48 7f fd    	vpermt2ps zmm15,zmm0,zmm5
  a577a1:	62 c2 75 48 7f e7    	vpermt2ps zmm20,zmm1,zmm15
  a577a7:	62 c2 75 48 7f d1    	vpermt2ps zmm18,zmm1,zmm9
  a577ad:	62 c2 75 48 7f d9    	vpermt2ps zmm19,zmm1,zmm9
  a577b3:	62 31 b5 40 14 fa    	vunpcklpd zmm15,zmm25,zmm18
  a577b9:	62 a1 b5 40 15 d2    	vunpckhpd zmm18,zmm25,zmm18
  a577bf:	62 a1 dd 40 14 eb    	vunpcklpd zmm21,zmm20,zmm19
  a577c5:	62 a1 dd 40 15 db    	vunpckhpd zmm19,zmm20,zmm19
  a577cb:	62 51 7c 48 28 df    	vmovaps zmm11,zmm15
  a577d1:	62 32 6d 48 7f dd    	vpermt2ps zmm11,zmm2,zmm21
  a577d7:	62 32 65 48 7f fd    	vpermt2ps zmm15,zmm3,zmm21
  a577dd:	62 a2 6d 48 7f d3    	vpermt2ps zmm18,zmm2,zmm19
  a577e3:	62 72 7d 48 7f ed    	vpermt2ps zmm13,zmm0,zmm5
  a577e9:	62 e2 7d 48 7f f5    	vpermt2ps zmm22,zmm0,zmm5
  a577ef:	62 e2 7d 48 7f c5    	vpermt2ps zmm16,zmm0,zmm5
  a577f5:	62 72 7d 48 7f e5    	vpermt2ps zmm12,zmm0,zmm5
  a577fb:	62 e2 7d 48 7f cd    	vpermt2ps zmm17,zmm0,zmm5
  a57801:	62 72 7d 48 7f f5    	vpermt2ps zmm14,zmm0,zmm5
  a57807:	62 32 75 48 7f e9    	vpermt2ps zmm13,zmm1,zmm17
  a5780d:	62 c2 75 48 7f f6    	vpermt2ps zmm22,zmm1,zmm14
  a57813:	62 c2 75 48 7f c1    	vpermt2ps zmm16,zmm1,zmm9
  a57819:	62 52 75 48 7f e1    	vpermt2ps zmm12,zmm1,zmm9
  a5781f:	62 31 95 48 14 f0    	vunpcklpd zmm14,zmm13,zmm16
  a57825:	62 31 95 48 15 e8    	vunpckhpd zmm13,zmm13,zmm16
  a5782b:	62 c1 cd 40 14 c4    	vunpcklpd zmm16,zmm22,zmm12
  a57831:	62 51 cd 40 15 e4    	vunpckhpd zmm12,zmm22,zmm12
  a57837:	62 c1 7c 48 28 ce    	vmovaps zmm17,zmm14
  a5783d:	62 a2 6d 48 7f c8    	vpermt2ps zmm17,zmm2,zmm16
  a57843:	62 32 65 48 7f f0    	vpermt2ps zmm14,zmm3,zmm16
  a57849:	62 52 6d 48 7f ec    	vpermt2ps zmm13,zmm2,zmm12
  a5784f:	62 71 7c 48 10 61 02 	vmovups zmm12,ZMMWORD PTR [rcx+0x80]
  a57856:	62 e1 7c 48 10 41 03 	vmovups zmm16,ZMMWORD PTR [rcx+0xc0]
  a5785d:	62 c1 04 48 59 dc    	vmulps zmm19,zmm15,zmm12
  a57863:	62 a2 0d 48 bc d8    	vfnmadd231ps zmm19,zmm14,zmm16
  a57869:	62 51 0c 48 59 e4    	vmulps zmm12,zmm14,zmm12
  a5786f:	62 71 7c 48 10 71 04 	vmovups zmm14,ZMMWORD PTR [rcx+0x100]
  a57876:	62 52 7d 40 b8 e7    	vfmadd231ps zmm12,zmm16,zmm15
  a5787c:	62 71 7c 48 10 79 05 	vmovups zmm15,ZMMWORD PTR [rcx+0x140]
  a57883:	62 c1 6c 40 59 c6    	vmulps zmm16,zmm18,zmm14
  a57889:	62 c2 15 48 bc c7    	vfnmadd231ps zmm16,zmm13,zmm15
  a5788f:	62 51 14 48 59 ee    	vmulps zmm13,zmm13,zmm14
  a57895:	62 31 64 40 58 f0    	vaddps zmm14,zmm19,zmm16
  a5789b:	62 32 05 48 b8 ea    	vfmadd231ps zmm13,zmm15,zmm18
  a578a1:	62 51 1c 48 58 fd    	vaddps zmm15,zmm12,zmm13
  a578a7:	62 e1 7c 48 28 d6    	vmovaps zmm18,zmm6
  a578ad:	62 c2 0d 48 ac d3    	vfnmadd213ps zmm18,zmm14,zmm11
  a578b3:	62 51 1c 48 5c e5    	vsubps zmm12,zmm12,zmm13
  a578b9:	62 71 1c 48 59 e7    	vmulps zmm12,zmm12,zmm7
  a578bf:	62 51 6c 40 58 ec    	vaddps zmm13,zmm18,zmm12
  a578c5:	62 a1 64 40 5c c0    	vsubps zmm16,zmm19,zmm16
  a578cb:	62 e1 7c 48 28 de    	vmovaps zmm19,zmm6
  a578d1:	62 a2 05 48 ac d9    	vfnmadd213ps zmm19,zmm15,zmm17
  a578d7:	62 e1 7c 40 59 c7    	vmulps zmm16,zmm16,zmm7
  a578dd:	62 51 6c 40 5c e4    	vsubps zmm12,zmm18,zmm12
  a578e3:	62 a1 64 40 5c d0    	vsubps zmm18,zmm19,zmm16
  a578e9:	62 a1 64 40 58 c0    	vaddps zmm16,zmm19,zmm16
  a578ef:	62 51 24 48 58 de    	vaddps zmm11,zmm11,zmm14
  a578f5:	62 51 74 40 58 f7    	vaddps zmm14,zmm17,zmm15
  a578fb:	62 52 2d 48 7f de    	vpermt2ps zmm11,zmm10,zmm14
  a57901:	62 73 7d 48 19 5c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x20],zmm11,0x2
  a57908:	02 02 
  a5790a:	c5 7c 11 1c 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm11
  a5790f:	62 32 2d 48 7f ea    	vpermt2ps zmm13,zmm10,zmm18
  a57915:	62 73 7d 48 19 6c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x50],zmm13,0x2
  a5791c:	05 02 
  a5791e:	c5 7c 11 6c 16 30    	vmovups YMMWORD PTR [rsi+rdx*1+0x30],ymm13
  a57924:	62 32 2d 48 7f e0    	vpermt2ps zmm12,zmm10,zmm16
  a5792a:	62 73 7d 48 19 64 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x80],zmm12,0x2
  a57931:	08 02 
  a57933:	c5 7c 11 64 16 60    	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm12
  a57939:	48 81 c2 90 00 00 00 	add    rdx,0x90
  a57940:	48 39 d0             	cmp    rax,rdx
  a57943:	0f 85 47 fc ff ff    	jne    a57590 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x90>
  a57949:	48 89 ec             	mov    rsp,rbp
  a5794c:	5d                   	pop    rbp
  a5794d:	c5 f8 77             	vzeroupper
  a57950:	c3                   	ret
