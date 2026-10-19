
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a5e700 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a5e700:	62 f1 7c 48 28 05 76 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff668876]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a5e707:	88 66 ff 
  a5e70a:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  a5e70e:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a5e712:	62 f2 7d 48 7f d2    	vpermt2ps zmm2,zmm0,zmm2
  a5e718:	62 f1 7c 48 28 1d de 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff6687de]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a5e71f:	87 66 ff 
  a5e722:	62 f1 7c 48 28 25 d4 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff6686d4]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a5e729:	86 66 ff 
  a5e72c:	62 f1 7c 48 28 2d 0a 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff66870a]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a5e733:	87 66 ff 
  a5e736:	48 c1 e2 04          	shl    rdx,0x4
  a5e73a:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  a5e73e:	31 d2                	xor    edx,edx
  a5e740:	62 f1 7c 48 28 35 76 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff635176]        # 938c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d70>
  a5e747:	51 63 ff 
  a5e74a:	62 f2 7d 48 18 3d 0c 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff616d0c]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a5e751:	6d 61 ff 
  a5e754:	62 71 7c 48 28 05 a2 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff6351a2]        # 93900 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20db0>
  a5e75b:	51 63 ff 
  a5e75e:	62 72 7d 48 18 0d 6c 	vbroadcastss zmm9,DWORD PTR [rip+0xffffffffff616b6c]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a5e765:	6b 61 ff 
  a5e768:	62 71 7c 48 28 15 ce 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff6351ce]        # 93940 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20df0>
  a5e76f:	51 63 ff 
  a5e772:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  a5e779:	1f 84 00 00 00 00 00 
  a5e780:	c5 7b 10 5c 17 10    	vmovsd xmm11,QWORD PTR [rdi+rdx*1+0x10]
  a5e786:	c5 78 10 24 17       	vmovups xmm12,XMMWORD PTR [rdi+rdx*1]
  a5e78b:	c5 78 10 6c 17 18    	vmovups xmm13,XMMWORD PTR [rdi+rdx*1+0x18]
  a5e791:	c5 78 10 74 17 30    	vmovups xmm14,XMMWORD PTR [rdi+rdx*1+0x30]
  a5e797:	c5 78 10 7c 17 48    	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x48]
  a5e79d:	62 53 1d 48 18 e3 01 	vinsertf32x4 zmm12,zmm12,xmm11,0x1
  a5e7a4:	62 51 7c 48 28 dc    	vmovaps zmm11,zmm12
  a5e7aa:	62 72 4d 48 7f d9    	vpermt2ps zmm11,zmm6,zmm1
  a5e7b0:	62 72 3d 48 7f e1    	vpermt2ps zmm12,zmm8,zmm1
  a5e7b6:	62 e1 ff 08 10 44 17 	vmovsd xmm16,QWORD PTR [rdi+rdx*1+0x28]
  a5e7bd:	05 
  a5e7be:	62 33 15 48 18 e8 01 	vinsertf32x4 zmm13,zmm13,xmm16,0x1
  a5e7c5:	62 c1 7c 48 28 c5    	vmovaps zmm16,zmm13
  a5e7cb:	62 e2 4d 48 7f c1    	vpermt2ps zmm16,zmm6,zmm1
  a5e7d1:	62 72 3d 48 7f e9    	vpermt2ps zmm13,zmm8,zmm1
  a5e7d7:	62 e1 ff 08 10 4c 17 	vmovsd xmm17,QWORD PTR [rdi+rdx*1+0x40]
  a5e7de:	08 
  a5e7df:	62 a3 0d 48 18 c9 01 	vinsertf32x4 zmm17,zmm14,xmm17,0x1
  a5e7e6:	62 a1 7c 48 28 d1    	vmovaps zmm18,zmm17
  a5e7ec:	62 e2 4d 48 7f d1    	vpermt2ps zmm18,zmm6,zmm1
  a5e7f2:	62 e2 3d 48 7f c9    	vpermt2ps zmm17,zmm8,zmm1
  a5e7f8:	c5 7b 10 74 17 58    	vmovsd xmm14,QWORD PTR [rdi+rdx*1+0x58]
  a5e7fe:	62 53 05 48 18 fe 01 	vinsertf32x4 zmm15,zmm15,xmm14,0x1
  a5e805:	62 51 7c 48 28 f7    	vmovaps zmm14,zmm15
  a5e80b:	62 72 3d 48 7f f9    	vpermt2ps zmm15,zmm8,zmm1
  a5e811:	62 e1 ff 08 10 5c 17 	vmovsd xmm19,QWORD PTR [rdi+rdx*1+0x70]
  a5e818:	0e 
  a5e819:	62 e1 7c 08 10 64 17 	vmovups xmm20,XMMWORD PTR [rdi+rdx*1+0x60]
  a5e820:	06 
  a5e821:	62 a3 5d 40 18 db 01 	vinsertf32x4 zmm19,zmm20,xmm19,0x1
  a5e828:	62 a1 7c 48 28 e3    	vmovaps zmm20,zmm19
  a5e82e:	62 e2 4d 48 7f e1    	vpermt2ps zmm20,zmm6,zmm1
  a5e834:	62 e2 3d 48 7f d9    	vpermt2ps zmm19,zmm8,zmm1
  a5e83a:	62 e1 ff 08 10 6c 17 	vmovsd xmm21,QWORD PTR [rdi+rdx*1+0x88]
  a5e841:	11 
  a5e842:	62 e1 7c 08 10 b4 17 	vmovups xmm22,XMMWORD PTR [rdi+rdx*1+0x78]
  a5e849:	78 00 00 00 
  a5e84d:	62 a3 4d 40 18 ed 01 	vinsertf32x4 zmm21,zmm22,xmm21,0x1
  a5e854:	62 a1 7c 48 28 f5    	vmovaps zmm22,zmm21
  a5e85a:	62 e2 4d 48 7f f1    	vpermt2ps zmm22,zmm6,zmm1
  a5e860:	62 e2 3d 48 7f e9    	vpermt2ps zmm21,zmm8,zmm1
  a5e866:	62 a1 74 40 58 fb    	vaddps zmm23,zmm17,zmm19
  a5e86c:	62 21 1c 48 58 c7    	vaddps zmm24,zmm12,zmm23
  a5e872:	62 41 54 40 58 cd    	vaddps zmm25,zmm21,zmm13
  a5e878:	62 32 45 48 bc e7    	vfnmadd231ps zmm12,zmm7,zmm23
  a5e87e:	62 a1 6c 40 58 fc    	vaddps zmm23,zmm18,zmm20
  a5e884:	62 a1 6c 40 5c d4    	vsubps zmm18,zmm18,zmm20
  a5e88a:	62 81 04 48 58 e1    	vaddps zmm20,zmm15,zmm25
  a5e890:	62 12 45 48 bc f9    	vfnmadd231ps zmm15,zmm7,zmm25
  a5e896:	62 21 4c 40 58 c8    	vaddps zmm25,zmm22,zmm16
  a5e89c:	62 a1 4c 40 5c c0    	vsubps zmm16,zmm22,zmm16
  a5e8a2:	62 a1 24 48 58 f7    	vaddps zmm22,zmm11,zmm23
  a5e8a8:	62 32 45 48 bc df    	vfnmadd231ps zmm11,zmm7,zmm23
  a5e8ae:	62 72 4d 48 7f f1    	vpermt2ps zmm14,zmm6,zmm1
  a5e8b4:	62 a1 74 40 5c cb    	vsubps zmm17,zmm17,zmm19
  a5e8ba:	62 81 0c 48 58 d9    	vaddps zmm19,zmm14,zmm25
  a5e8c0:	62 12 45 48 bc f1    	vfnmadd231ps zmm14,zmm7,zmm25
  a5e8c6:	62 c1 6c 40 59 d1    	vmulps zmm18,zmm18,zmm9
  a5e8cc:	62 51 54 40 5c ed    	vsubps zmm13,zmm21,zmm13
  a5e8d2:	62 a1 1c 48 58 ea    	vaddps zmm21,zmm12,zmm18
  a5e8d8:	62 c1 7c 40 59 c1    	vmulps zmm16,zmm16,zmm9
  a5e8de:	62 a1 1c 48 5c d2    	vsubps zmm18,zmm12,zmm18
  a5e8e4:	62 a1 04 48 58 f8    	vaddps zmm23,zmm15,zmm16
  a5e8ea:	62 51 74 40 59 e1    	vmulps zmm12,zmm17,zmm9
  a5e8f0:	62 31 04 48 5c f8    	vsubps zmm15,zmm15,zmm16
  a5e8f6:	62 c1 24 48 5c c4    	vsubps zmm16,zmm11,zmm12
  a5e8fc:	62 51 14 48 59 e9    	vmulps zmm13,zmm13,zmm9
  a5e902:	62 51 1c 48 58 db    	vaddps zmm11,zmm12,zmm11
  a5e908:	62 c1 0c 48 5c cd    	vsubps zmm17,zmm14,zmm13
  a5e90e:	62 51 14 48 58 f6    	vaddps zmm14,zmm13,zmm14
  a5e914:	62 21 3c 40 58 cc    	vaddps zmm25,zmm24,zmm20
  a5e91a:	62 a1 3c 40 5c e4    	vsubps zmm20,zmm24,zmm20
  a5e920:	62 31 4c 40 58 eb    	vaddps zmm13,zmm22,zmm19
  a5e926:	62 31 4c 40 5c e3    	vsubps zmm12,zmm22,zmm19
  a5e92c:	62 a1 54 40 5c df    	vsubps zmm19,zmm21,zmm23
  a5e932:	62 a1 54 40 58 ef    	vaddps zmm21,zmm21,zmm23
  a5e938:	62 a1 7c 40 5c f1    	vsubps zmm22,zmm16,zmm17
  a5e93e:	62 a1 7c 40 58 c1    	vaddps zmm16,zmm16,zmm17
  a5e944:	62 c1 6c 40 58 cf    	vaddps zmm17,zmm18,zmm15
  a5e94a:	62 51 6c 40 5c ff    	vsubps zmm15,zmm18,zmm15
  a5e950:	62 c1 24 48 58 d6    	vaddps zmm18,zmm11,zmm14
  a5e956:	62 51 24 48 5c f6    	vsubps zmm14,zmm11,zmm14
  a5e95c:	62 62 7d 48 7f c9    	vpermt2ps zmm25,zmm0,zmm1
  a5e962:	62 e2 7d 48 7f e9    	vpermt2ps zmm21,zmm0,zmm1
  a5e968:	62 22 65 48 7f cd    	vpermt2ps zmm25,zmm3,zmm21
  a5e96e:	62 e2 7d 48 7f d9    	vpermt2ps zmm19,zmm0,zmm1
  a5e974:	62 e2 7d 48 7f c9    	vpermt2ps zmm17,zmm0,zmm1
  a5e97a:	62 e2 7d 48 7f e1    	vpermt2ps zmm20,zmm0,zmm1
  a5e980:	62 72 7d 48 7f f9    	vpermt2ps zmm15,zmm0,zmm1
  a5e986:	62 c2 65 48 7f df    	vpermt2ps zmm19,zmm3,zmm15
  a5e98c:	62 e2 65 48 7f ca    	vpermt2ps zmm17,zmm3,zmm2
  a5e992:	62 e2 65 48 7f e2    	vpermt2ps zmm20,zmm3,zmm2
  a5e998:	62 31 b5 40 14 f9    	vunpcklpd zmm15,zmm25,zmm17
  a5e99e:	62 a1 b5 40 15 c9    	vunpckhpd zmm17,zmm25,zmm17
  a5e9a4:	62 a1 e5 40 14 ec    	vunpcklpd zmm21,zmm19,zmm20
  a5e9aa:	62 a1 e5 40 15 dc    	vunpckhpd zmm19,zmm19,zmm20
  a5e9b0:	62 51 7c 48 28 df    	vmovaps zmm11,zmm15
  a5e9b6:	62 32 5d 48 7f dd    	vpermt2ps zmm11,zmm4,zmm21
  a5e9bc:	62 32 55 48 7f fd    	vpermt2ps zmm15,zmm5,zmm21
  a5e9c2:	62 a2 5d 48 7f cb    	vpermt2ps zmm17,zmm4,zmm19
  a5e9c8:	62 72 7d 48 7f e9    	vpermt2ps zmm13,zmm0,zmm1
  a5e9ce:	62 e2 7d 48 7f f1    	vpermt2ps zmm22,zmm0,zmm1
  a5e9d4:	62 e2 7d 48 7f d1    	vpermt2ps zmm18,zmm0,zmm1
  a5e9da:	62 72 7d 48 7f e1    	vpermt2ps zmm12,zmm0,zmm1
  a5e9e0:	62 e2 7d 48 7f c1    	vpermt2ps zmm16,zmm0,zmm1
  a5e9e6:	62 72 7d 48 7f f1    	vpermt2ps zmm14,zmm0,zmm1
  a5e9ec:	62 32 65 48 7f e8    	vpermt2ps zmm13,zmm3,zmm16
  a5e9f2:	62 c2 65 48 7f f6    	vpermt2ps zmm22,zmm3,zmm14
  a5e9f8:	62 e2 65 48 7f d2    	vpermt2ps zmm18,zmm3,zmm2
  a5e9fe:	62 72 65 48 7f e2    	vpermt2ps zmm12,zmm3,zmm2
  a5ea04:	62 31 95 48 14 f2    	vunpcklpd zmm14,zmm13,zmm18
  a5ea0a:	62 31 95 48 15 ea    	vunpckhpd zmm13,zmm13,zmm18
  a5ea10:	62 c1 cd 40 14 c4    	vunpcklpd zmm16,zmm22,zmm12
  a5ea16:	62 51 cd 40 15 e4    	vunpckhpd zmm12,zmm22,zmm12
  a5ea1c:	62 c1 7c 48 28 d6    	vmovaps zmm18,zmm14
  a5ea22:	62 a2 5d 48 7f d0    	vpermt2ps zmm18,zmm4,zmm16
  a5ea28:	62 32 55 48 7f f0    	vpermt2ps zmm14,zmm5,zmm16
  a5ea2e:	62 52 5d 48 7f ec    	vpermt2ps zmm13,zmm4,zmm12
  a5ea34:	62 71 7c 48 10 61 02 	vmovups zmm12,ZMMWORD PTR [rcx+0x80]
  a5ea3b:	62 e1 7c 48 10 41 03 	vmovups zmm16,ZMMWORD PTR [rcx+0xc0]
  a5ea42:	62 c1 04 48 59 dc    	vmulps zmm19,zmm15,zmm12
  a5ea48:	62 a2 0d 48 bc d8    	vfnmadd231ps zmm19,zmm14,zmm16
  a5ea4e:	62 51 0c 48 59 e4    	vmulps zmm12,zmm14,zmm12
  a5ea54:	62 71 7c 48 10 71 04 	vmovups zmm14,ZMMWORD PTR [rcx+0x100]
  a5ea5b:	62 52 7d 40 b8 e7    	vfmadd231ps zmm12,zmm16,zmm15
  a5ea61:	62 71 7c 48 10 79 05 	vmovups zmm15,ZMMWORD PTR [rcx+0x140]
  a5ea68:	62 c1 74 40 59 c6    	vmulps zmm16,zmm17,zmm14
  a5ea6e:	62 c2 15 48 bc c7    	vfnmadd231ps zmm16,zmm13,zmm15
  a5ea74:	62 51 14 48 59 ee    	vmulps zmm13,zmm13,zmm14
  a5ea7a:	62 31 64 40 58 f0    	vaddps zmm14,zmm19,zmm16
  a5ea80:	62 32 05 48 b8 e9    	vfmadd231ps zmm13,zmm15,zmm17
  a5ea86:	62 51 1c 48 58 fd    	vaddps zmm15,zmm12,zmm13
  a5ea8c:	62 e1 7c 48 28 cf    	vmovaps zmm17,zmm7
  a5ea92:	62 c2 0d 48 ac cb    	vfnmadd213ps zmm17,zmm14,zmm11
  a5ea98:	62 51 1c 48 5c e5    	vsubps zmm12,zmm12,zmm13
  a5ea9e:	62 51 1c 48 59 e1    	vmulps zmm12,zmm12,zmm9
  a5eaa4:	62 51 74 40 58 ec    	vaddps zmm13,zmm17,zmm12
  a5eaaa:	62 a1 64 40 5c c0    	vsubps zmm16,zmm19,zmm16
  a5eab0:	62 e1 7c 48 28 df    	vmovaps zmm19,zmm7
  a5eab6:	62 a2 05 48 ac da    	vfnmadd213ps zmm19,zmm15,zmm18
  a5eabc:	62 c1 7c 40 59 c1    	vmulps zmm16,zmm16,zmm9
  a5eac2:	62 51 74 40 5c e4    	vsubps zmm12,zmm17,zmm12
  a5eac8:	62 a1 64 40 5c c8    	vsubps zmm17,zmm19,zmm16
  a5eace:	62 a1 64 40 58 c0    	vaddps zmm16,zmm19,zmm16
  a5ead4:	62 51 6c 40 58 ff    	vaddps zmm15,zmm18,zmm15
  a5eada:	62 51 24 48 58 de    	vaddps zmm11,zmm11,zmm14
  a5eae0:	62 52 2d 48 7f fb    	vpermt2ps zmm15,zmm10,zmm11
  a5eae6:	62 73 7d 48 19 7c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x20],zmm15,0x2
  a5eaed:	02 02 
  a5eaef:	c5 7c 11 3c 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm15
  a5eaf4:	62 c2 2d 48 7f cd    	vpermt2ps zmm17,zmm10,zmm13
  a5eafa:	62 e3 7d 48 19 4c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x50],zmm17,0x2
  a5eb01:	05 02 
  a5eb03:	62 e1 7c 28 11 8c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x30],ymm17
  a5eb0a:	30 00 00 00 
  a5eb0e:	62 c2 2d 48 7f c4    	vpermt2ps zmm16,zmm10,zmm12
  a5eb14:	62 e3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x80],zmm16,0x2
  a5eb1b:	08 02 
  a5eb1d:	62 e1 7c 28 11 44 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm16
  a5eb24:	03 
  a5eb25:	48 81 c2 90 00 00 00 	add    rdx,0x90
  a5eb2c:	48 39 d0             	cmp    rax,rdx
  a5eb2f:	0f 85 4b fc ff ff    	jne    a5e780 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x80>
  a5eb35:	c5 f8 77             	vzeroupper
  a5eb38:	c3                   	ret
