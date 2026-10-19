
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a11940 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a11940:	55                   	push   rbp
  a11941:	48 89 e5             	mov    rbp,rsp
  a11944:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a11948:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  a1194f:	62 f1 7c 48 28 05 27 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6b5627]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a11956:	56 6b ff 
  a11959:	62 f1 7c 48 28 0d 9d 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff6b559d]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a11960:	55 6b ff 
  a11963:	62 f1 7c 48 28 15 d3 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff6b55d3]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a1196a:	55 6b ff 
  a1196d:	62 f1 7c 48 28 1d 89 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff6b5489]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a11974:	54 6b ff 
  a11977:	62 f1 7c 48 28 25 bf 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff6b54bf]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a1197e:	54 6b ff 
  a11981:	48 c1 e2 07          	shl    rdx,0x7
  a11985:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  a11989:	31 d2                	xor    edx,edx
  a1198b:	4c 8d 44 24 40       	lea    r8,[rsp+0x40]
  a11990:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  a11995:	c5 c8 57 f6          	vxorps xmm6,xmm6,xmm6
  a11999:	c4 41 28 57 d2       	vxorps xmm10,xmm10,xmm10
  a1199e:	62 52 7d 48 7f d2    	vpermt2ps zmm10,zmm0,zmm10
  a119a4:	62 71 7c 48 28 25 52 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff67d652]        # 8f000 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c4b0>
  a119ab:	d6 67 ff 
  a119ae:	66 90                	xchg   ax,ax
  a119b0:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  a119b5:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  a119ba:	62 71 7c 48 10 2c 17 	vmovups zmm13,ZMMWORD PTR [rdi+rdx*1]
  a119c1:	62 f1 7c 48 10 7c 17 	vmovups zmm7,ZMMWORD PTR [rdi+rdx*1+0x40]
  a119c8:	01 
  a119c9:	62 e1 7c 48 10 44 17 	vmovups zmm16,ZMMWORD PTR [rdi+rdx*1+0x80]
  a119d0:	02 
  a119d1:	62 71 7c 48 10 74 17 	vmovups zmm14,ZMMWORD PTR [rdi+rdx*1+0xc0]
  a119d8:	03 
  a119d9:	62 51 7c 48 28 fd    	vmovaps zmm15,zmm13
  a119df:	62 71 7c 48 28 05 d7 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff67d5d7]        # 8efc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c470>
  a119e6:	d5 67 ff 
  a119e9:	62 72 3d 48 7f ee    	vpermt2ps zmm13,zmm8,zmm6
  a119ef:	62 e1 7c 48 28 cf    	vmovaps zmm17,zmm7
  a119f5:	62 f1 7c 48 28 2d 81 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff67d581]        # 8ef80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c430>
  a119fc:	d5 67 ff 
  a119ff:	62 72 55 48 7f fe    	vpermt2ps zmm15,zmm5,zmm6
  a11a05:	62 e2 55 48 7f ce    	vpermt2ps zmm17,zmm5,zmm6
  a11a0b:	62 f2 3d 48 7f fe    	vpermt2ps zmm7,zmm8,zmm6
  a11a11:	62 a1 7c 48 28 d0    	vmovaps zmm18,zmm16
  a11a17:	62 e2 55 48 7f d6    	vpermt2ps zmm18,zmm5,zmm6
  a11a1d:	62 e2 3d 48 7f c6    	vpermt2ps zmm16,zmm8,zmm6
  a11a23:	62 c1 7c 48 28 e6    	vmovaps zmm20,zmm14
  a11a29:	62 72 3d 48 7f f6    	vpermt2ps zmm14,zmm8,zmm6
  a11a2f:	62 e2 55 48 7f e6    	vpermt2ps zmm20,zmm5,zmm6
  a11a35:	62 e1 7c 48 10 6c 17 	vmovups zmm21,ZMMWORD PTR [rdi+rdx*1+0x100]
  a11a3c:	04 
  a11a3d:	62 a1 7c 48 28 f5    	vmovaps zmm22,zmm21
  a11a43:	62 e2 3d 48 7f ee    	vpermt2ps zmm21,zmm8,zmm6
  a11a49:	62 e2 55 48 7f f6    	vpermt2ps zmm22,zmm5,zmm6
  a11a4f:	62 e1 7c 48 10 7c 17 	vmovups zmm23,ZMMWORD PTR [rdi+rdx*1+0x140]
  a11a56:	05 
  a11a57:	62 21 7c 48 28 c7    	vmovaps zmm24,zmm23
  a11a5d:	62 e2 3d 48 7f fe    	vpermt2ps zmm23,zmm8,zmm6
  a11a63:	62 62 55 48 7f c6    	vpermt2ps zmm24,zmm5,zmm6
  a11a69:	62 21 6c 40 58 ce    	vaddps zmm25,zmm18,zmm22
  a11a6f:	62 21 3c 40 58 d1    	vaddps zmm26,zmm24,zmm17
  a11a75:	62 21 7c 40 58 dd    	vaddps zmm27,zmm16,zmm21
  a11a7b:	62 01 04 48 58 e1    	vaddps zmm28,zmm15,zmm25
  a11a81:	62 01 14 48 58 eb    	vaddps zmm29,zmm13,zmm27
  a11a87:	62 61 44 40 58 f7    	vaddps zmm30,zmm23,zmm7
  a11a8d:	62 01 0c 48 58 fe    	vaddps zmm31,zmm14,zmm30
  a11a93:	62 11 5c 40 58 ca    	vaddps zmm9,zmm20,zmm26
  a11a99:	62 81 14 40 58 df    	vaddps zmm19,zmm29,zmm31
  a11a9f:	62 f2 7d 48 18 2d b7 	vbroadcastss zmm5,DWORD PTR [rip+0xffffffffff6639b7]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a11aa6:	39 66 ff 
  a11aa9:	62 12 55 48 bc f9    	vfnmadd231ps zmm15,zmm5,zmm25
  a11aaf:	62 a1 7c 40 5c c5    	vsubps zmm16,zmm16,zmm21
  a11ab5:	62 c1 1c 40 58 e9    	vaddps zmm21,zmm28,zmm9
  a11abb:	62 72 7d 48 18 05 0f 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff66380f]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a11ac2:	38 66 ff 
  a11ac5:	62 c1 7c 40 59 c0    	vmulps zmm16,zmm16,zmm8
  a11acb:	62 82 55 48 bc e2    	vfnmadd231ps zmm20,zmm5,zmm26
  a11ad1:	62 f1 44 40 5c ff    	vsubps zmm7,zmm23,zmm7
  a11ad7:	62 a1 04 48 58 f8    	vaddps zmm23,zmm15,zmm16
  a11add:	62 d1 44 48 59 f8    	vmulps zmm7,zmm7,zmm8
  a11ae3:	62 12 55 48 bc eb    	vfnmadd231ps zmm13,zmm5,zmm27
  a11ae9:	62 a1 6c 40 5c d6    	vsubps zmm18,zmm18,zmm22
  a11aef:	62 61 5c 40 58 cf    	vaddps zmm25,zmm20,zmm7
  a11af5:	62 c1 6c 40 59 d0    	vmulps zmm18,zmm18,zmm8
  a11afb:	62 31 14 48 5c da    	vsubps zmm11,zmm13,zmm18
  a11b01:	62 12 55 48 bc f6    	vfnmadd231ps zmm14,zmm5,zmm30
  a11b07:	62 01 44 40 5c f1    	vsubps zmm30,zmm23,zmm25
  a11b0d:	62 a1 3c 40 5c c9    	vsubps zmm17,zmm24,zmm17
  a11b13:	62 c1 74 40 59 c8    	vmulps zmm17,zmm17,zmm8
  a11b19:	62 21 0c 48 5c c1    	vsubps zmm24,zmm14,zmm17
  a11b1f:	62 81 24 48 5c f0    	vsubps zmm22,zmm11,zmm24
  a11b25:	62 31 04 48 5c f8    	vsubps zmm15,zmm15,zmm16
  a11b2b:	62 f1 5c 40 5c ff    	vsubps zmm7,zmm20,zmm7
  a11b31:	62 51 6c 40 58 ed    	vaddps zmm13,zmm18,zmm13
  a11b37:	62 f1 04 48 58 ef    	vaddps zmm5,zmm15,zmm7
  a11b3d:	62 51 74 40 58 f6    	vaddps zmm14,zmm17,zmm14
  a11b43:	62 51 1c 40 5c c9    	vsubps zmm9,zmm28,zmm9
  a11b49:	62 01 14 40 5c d7    	vsubps zmm26,zmm29,zmm31
  a11b4f:	62 41 14 48 58 de    	vaddps zmm27,zmm13,zmm14
  a11b55:	62 81 44 40 58 c9    	vaddps zmm17,zmm23,zmm25
  a11b5b:	62 81 24 48 58 c0    	vaddps zmm16,zmm11,zmm24
  a11b61:	62 f1 04 48 5c ff    	vsubps zmm7,zmm15,zmm7
  a11b67:	62 c1 14 48 5c e6    	vsubps zmm20,zmm13,zmm14
  a11b6d:	62 e2 7d 48 7f ee    	vpermt2ps zmm21,zmm0,zmm6
  a11b73:	62 62 7d 48 7f f6    	vpermt2ps zmm30,zmm0,zmm6
  a11b79:	62 72 7d 48 7f ce    	vpermt2ps zmm9,zmm0,zmm6
  a11b7f:	62 f2 7d 48 7f ee    	vpermt2ps zmm5,zmm0,zmm6
  a11b85:	62 e2 7d 48 7f ce    	vpermt2ps zmm17,zmm0,zmm6
  a11b8b:	62 f2 7d 48 7f fe    	vpermt2ps zmm7,zmm0,zmm6
  a11b91:	62 31 7c 48 28 dd    	vmovaps zmm11,zmm21
  a11b97:	62 32 75 48 7f d9    	vpermt2ps zmm11,zmm1,zmm17
  a11b9d:	62 a2 6d 48 7f e9    	vpermt2ps zmm21,zmm2,zmm17
  a11ba3:	62 81 7c 48 28 fe    	vmovaps zmm23,zmm30
  a11ba9:	62 62 6d 48 7f f7    	vpermt2ps zmm30,zmm2,zmm7
  a11baf:	62 e2 75 48 7f ff    	vpermt2ps zmm23,zmm1,zmm7
  a11bb5:	62 f1 7c 48 28 fd    	vmovaps zmm7,zmm5
  a11bbb:	62 d2 6d 48 7f ea    	vpermt2ps zmm5,zmm2,zmm10
  a11bc1:	62 41 7c 48 28 c1    	vmovaps zmm24,zmm9
  a11bc7:	62 d2 75 48 7f fa    	vpermt2ps zmm7,zmm1,zmm10
  a11bcd:	62 42 75 48 7f c2    	vpermt2ps zmm24,zmm1,zmm10
  a11bd3:	62 52 6d 48 7f ca    	vpermt2ps zmm9,zmm2,zmm10
  a11bd9:	62 e1 a5 48 14 d7    	vunpcklpd zmm18,zmm11,zmm7
  a11bdf:	62 71 a5 48 15 ff    	vunpckhpd zmm15,zmm11,zmm7
  a11be5:	62 11 c5 40 14 e8    	vunpcklpd zmm13,zmm23,zmm24
  a11beb:	62 e1 d5 40 14 cd    	vunpcklpd zmm17,zmm21,zmm5
  a11bf1:	62 71 d5 40 15 f5    	vunpckhpd zmm14,zmm21,zmm5
  a11bf7:	62 01 c5 40 15 f8    	vunpckhpd zmm31,zmm23,zmm24
  a11bfd:	62 d1 8d 40 14 e9    	vunpcklpd zmm5,zmm30,zmm9
  a11c03:	62 d1 8d 40 15 f9    	vunpckhpd zmm7,zmm30,zmm9
  a11c09:	62 a1 7c 48 28 f9    	vmovaps zmm23,zmm17
  a11c0f:	62 e2 5d 48 7f cd    	vpermt2ps zmm17,zmm4,zmm5
  a11c15:	62 e2 7d 48 7f de    	vpermt2ps zmm19,zmm0,zmm6
  a11c1b:	62 e2 7d 48 7f f6    	vpermt2ps zmm22,zmm0,zmm6
  a11c21:	62 62 7d 48 7f de    	vpermt2ps zmm27,zmm0,zmm6
  a11c27:	62 41 7c 48 28 ce    	vmovaps zmm25,zmm14
  a11c2d:	62 62 7d 48 7f d6    	vpermt2ps zmm26,zmm0,zmm6
  a11c33:	62 e2 7d 48 7f c6    	vpermt2ps zmm16,zmm0,zmm6
  a11c39:	62 e2 7d 48 7f e6    	vpermt2ps zmm20,zmm0,zmm6
  a11c3f:	62 72 5d 48 7f f7    	vpermt2ps zmm14,zmm4,zmm7
  a11c45:	62 31 7c 48 28 cb    	vmovaps zmm9,zmm19
  a11c4b:	62 32 75 48 7f c8    	vpermt2ps zmm9,zmm1,zmm16
  a11c51:	62 a2 6d 48 7f d8    	vpermt2ps zmm19,zmm2,zmm16
  a11c57:	62 a1 7c 48 28 c2    	vmovaps zmm16,zmm18
  a11c5d:	62 31 7c 48 28 de    	vmovaps zmm11,zmm22
  a11c63:	62 32 75 48 7f dc    	vpermt2ps zmm11,zmm1,zmm20
  a11c69:	62 a2 6d 48 7f f4    	vpermt2ps zmm22,zmm2,zmm20
  a11c6f:	62 c2 5d 48 7f d5    	vpermt2ps zmm18,zmm4,zmm13
  a11c75:	62 81 7c 48 28 eb    	vmovaps zmm21,zmm27
  a11c7b:	62 c2 75 48 7f ea    	vpermt2ps zmm21,zmm1,zmm10
  a11c81:	62 42 6d 48 7f da    	vpermt2ps zmm27,zmm2,zmm10
  a11c87:	62 c1 7c 48 28 e7    	vmovaps zmm20,zmm15
  a11c8d:	62 01 7c 48 28 c2    	vmovaps zmm24,zmm26
  a11c93:	62 42 75 48 7f c2    	vpermt2ps zmm24,zmm1,zmm10
  a11c99:	62 42 6d 48 7f d2    	vpermt2ps zmm26,zmm2,zmm10
  a11c9f:	62 12 5d 48 7f ff    	vpermt2ps zmm15,zmm4,zmm31
  a11ca5:	62 21 b5 48 14 f5    	vunpcklpd zmm30,zmm9,zmm21
  a11cab:	62 21 b5 48 15 e5    	vunpckhpd zmm28,zmm9,zmm21
  a11cb1:	62 81 a5 48 14 e8    	vunpcklpd zmm21,zmm11,zmm24
  a11cb7:	62 e2 65 48 7f fd    	vpermt2ps zmm23,zmm3,zmm5
  a11cbd:	62 01 a5 48 15 c0    	vunpckhpd zmm24,zmm11,zmm24
  a11cc3:	62 01 e5 40 14 eb    	vunpcklpd zmm29,zmm19,zmm27
  a11cc9:	62 01 e5 40 15 db    	vunpckhpd zmm27,zmm19,zmm27
  a11ccf:	62 62 65 48 7f cf    	vpermt2ps zmm25,zmm3,zmm7
  a11cd5:	62 91 cd 40 14 ea    	vunpcklpd zmm5,zmm22,zmm26
  a11cdb:	62 91 cd 40 15 fa    	vunpckhpd zmm7,zmm22,zmm26
  a11ce1:	62 81 7c 48 28 de    	vmovaps zmm19,zmm30
  a11ce7:	62 22 5d 48 7f f5    	vpermt2ps zmm30,zmm4,zmm21
  a11ced:	62 81 7c 48 28 f4    	vmovaps zmm22,zmm28
  a11cf3:	62 02 5d 48 7f e0    	vpermt2ps zmm28,zmm4,zmm24
  a11cf9:	62 11 7c 48 28 cd    	vmovaps zmm9,zmm29
  a11cff:	62 72 65 48 7f cd    	vpermt2ps zmm9,zmm3,zmm5
  a11d05:	62 62 5d 48 7f ed    	vpermt2ps zmm29,zmm4,zmm5
  a11d0b:	62 91 7c 48 28 eb    	vmovaps zmm5,zmm27
  a11d11:	62 f2 65 48 7f ef    	vpermt2ps zmm5,zmm3,zmm7
  a11d17:	62 82 65 48 7f e7    	vpermt2ps zmm20,zmm3,zmm31
  a11d1d:	62 62 5d 48 7f df    	vpermt2ps zmm27,zmm4,zmm7
  a11d23:	62 f1 7c 48 10 79 08 	vmovups zmm7,ZMMWORD PTR [rcx+0x200]
  a11d2a:	62 71 7c 48 10 59 09 	vmovups zmm11,ZMMWORD PTR [rcx+0x240]
  a11d31:	62 61 44 40 59 d7    	vmulps zmm26,zmm23,zmm7
  a11d37:	62 42 35 48 bc d3    	vfnmadd231ps zmm26,zmm9,zmm11
  a11d3d:	62 61 34 48 59 ff    	vmulps zmm31,zmm9,zmm7
  a11d43:	62 f1 7c 48 10 79 0c 	vmovups zmm7,ZMMWORD PTR [rcx+0x300]
  a11d4a:	62 22 25 48 b8 ff    	vfmadd231ps zmm31,zmm11,zmm23
  a11d50:	62 71 7c 48 10 49 0d 	vmovups zmm9,ZMMWORD PTR [rcx+0x340]
  a11d57:	62 e1 34 40 59 ff    	vmulps zmm23,zmm25,zmm7
  a11d5d:	62 f1 54 48 59 ff    	vmulps zmm7,zmm5,zmm7
  a11d63:	62 c2 55 48 bc f9    	vfnmadd231ps zmm23,zmm5,zmm9
  a11d69:	62 f1 7c 48 10 69 02 	vmovups zmm5,ZMMWORD PTR [rcx+0x80]
  a11d70:	62 92 35 48 b8 f9    	vfmadd231ps zmm7,zmm9,zmm25
  a11d76:	62 71 7c 48 10 49 03 	vmovups zmm9,ZMMWORD PTR [rcx+0xc0]
  a11d7d:	62 71 6c 40 59 dd    	vmulps zmm11,zmm18,zmm5
  a11d83:	62 52 0d 40 bc d9    	vfnmadd231ps zmm11,zmm30,zmm9
  a11d89:	62 f1 0c 40 59 ed    	vmulps zmm5,zmm30,zmm5
  a11d8f:	62 61 7c 48 10 49 0a 	vmovups zmm25,ZMMWORD PTR [rcx+0x280]
  a11d96:	62 b2 35 48 b8 ea    	vfmadd231ps zmm5,zmm9,zmm18
  a11d9c:	62 71 7c 48 10 49 0b 	vmovups zmm9,ZMMWORD PTR [rcx+0x2c0]
  a11da3:	62 81 74 40 59 d1    	vmulps zmm18,zmm17,zmm25
  a11da9:	62 01 14 40 59 c9    	vmulps zmm25,zmm29,zmm25
  a11daf:	62 c2 15 40 bc d1    	vfnmadd231ps zmm18,zmm29,zmm9
  a11db5:	62 61 7c 48 10 69 06 	vmovups zmm29,ZMMWORD PTR [rcx+0x180]
  a11dbc:	62 22 35 48 b8 c9    	vfmadd231ps zmm25,zmm9,zmm17
  a11dc2:	62 71 7c 48 10 49 07 	vmovups zmm9,ZMMWORD PTR [rcx+0x1c0]
  a11dc9:	62 81 04 48 59 cd    	vmulps zmm17,zmm15,zmm29
  a11dcf:	62 c2 1d 40 bc c9    	vfnmadd231ps zmm17,zmm28,zmm9
  a11dd5:	62 01 1c 40 59 e5    	vmulps zmm28,zmm28,zmm29
  a11ddb:	62 61 7c 48 10 69 0e 	vmovups zmm29,ZMMWORD PTR [rcx+0x380]
  a11de2:	62 42 35 48 b8 e7    	vfmadd231ps zmm28,zmm9,zmm15
  a11de8:	62 71 7c 48 10 49 0f 	vmovups zmm9,ZMMWORD PTR [rcx+0x3c0]
  a11def:	62 11 0c 48 59 fd    	vmulps zmm15,zmm14,zmm29
  a11df5:	62 01 24 40 59 ed    	vmulps zmm29,zmm27,zmm29
  a11dfb:	62 52 25 40 bc f9    	vfnmadd231ps zmm15,zmm27,zmm9
  a11e01:	62 42 35 48 b8 ee    	vfmadd231ps zmm29,zmm9,zmm14
  a11e07:	62 71 7c 48 10 49 04 	vmovups zmm9,ZMMWORD PTR [rcx+0x100]
  a11e0e:	62 71 7c 48 10 71 05 	vmovups zmm14,ZMMWORD PTR [rcx+0x140]
  a11e15:	62 82 65 48 7f f0    	vpermt2ps zmm22,zmm3,zmm24
  a11e1b:	62 41 5c 40 59 c1    	vmulps zmm24,zmm20,zmm9
  a11e21:	62 42 4d 40 bc c6    	vfnmadd231ps zmm24,zmm22,zmm14
  a11e27:	62 51 4c 40 59 c9    	vmulps zmm9,zmm22,zmm9
  a11e2d:	62 32 0d 48 b8 cc    	vfmadd231ps zmm9,zmm14,zmm20
  a11e33:	62 c2 65 48 7f c5    	vpermt2ps zmm16,zmm3,zmm13
  a11e39:	62 a2 65 48 7f dd    	vpermt2ps zmm19,zmm3,zmm21
  a11e3f:	62 31 24 48 58 ea    	vaddps zmm13,zmm11,zmm18
  a11e45:	62 31 24 48 5c da    	vsubps zmm11,zmm11,zmm18
  a11e4b:	62 11 54 48 58 f1    	vaddps zmm14,zmm5,zmm25
  a11e51:	62 91 54 48 5c e9    	vsubps zmm5,zmm5,zmm25
  a11e57:	62 81 1c 40 58 d5    	vaddps zmm18,zmm28,zmm29
  a11e5d:	62 81 1c 40 5c e5    	vsubps zmm20,zmm28,zmm29
  a11e63:	62 c1 74 40 58 ef    	vaddps zmm21,zmm17,zmm15
  a11e69:	62 51 74 40 5c ff    	vsubps zmm15,zmm17,zmm15
  a11e6f:	62 81 7c 40 58 ca    	vaddps zmm17,zmm16,zmm26
  a11e75:	62 81 7c 40 5c c2    	vsubps zmm16,zmm16,zmm26
  a11e7b:	62 a1 04 40 58 f3    	vaddps zmm22,zmm31,zmm19
  a11e81:	62 81 64 40 5c df    	vsubps zmm19,zmm19,zmm31
  a11e87:	62 61 34 48 58 cf    	vaddps zmm25,zmm9,zmm7
  a11e8d:	62 f1 34 48 5c ff    	vsubps zmm7,zmm9,zmm7
  a11e93:	62 31 3c 40 58 cf    	vaddps zmm9,zmm24,zmm23
  a11e99:	62 81 44 40 5c f8    	vsubps zmm23,zmm23,zmm24
  a11e9f:	62 61 24 48 58 c5    	vaddps zmm24,zmm11,zmm5
  a11ea5:	62 d1 54 48 5c eb    	vsubps zmm5,zmm5,zmm11
  a11eab:	62 51 5c 40 5c df    	vsubps zmm11,zmm20,zmm15
  a11eb1:	62 31 04 48 58 fc    	vaddps zmm15,zmm15,zmm20
  a11eb7:	62 c1 74 40 58 e1    	vaddps zmm20,zmm17,zmm9
  a11ebd:	62 51 74 40 5c c9    	vsubps zmm9,zmm17,zmm9
  a11ec3:	62 a1 0c 48 58 ca    	vaddps zmm17,zmm14,zmm18
  a11ec9:	62 31 0c 48 5c f2    	vsubps zmm14,zmm14,zmm18
  a11ecf:	62 a1 34 40 58 d6    	vaddps zmm18,zmm25,zmm22
  a11ed5:	62 81 4c 40 5c f1    	vsubps zmm22,zmm22,zmm25
  a11edb:	62 21 14 48 58 cd    	vaddps zmm25,zmm13,zmm21
  a11ee1:	62 51 54 40 5c ed    	vsubps zmm13,zmm21,zmm13
  a11ee7:	62 e1 7c 40 58 ef    	vaddps zmm21,zmm16,zmm7
  a11eed:	62 72 7d 48 18 05 a5 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff6634a5]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a11ef4:	34 66 ff 
  a11ef7:	62 41 3c 40 59 c0    	vmulps zmm24,zmm24,zmm8
  a11efd:	62 51 24 48 59 d8    	vmulps zmm11,zmm11,zmm8
  a11f03:	62 f1 7c 40 5c ff    	vsubps zmm7,zmm16,zmm7
  a11f09:	62 a1 44 40 58 c3    	vaddps zmm16,zmm23,zmm19
  a11f0f:	62 d1 54 48 59 e8    	vmulps zmm5,zmm5,zmm8
  a11f15:	62 51 04 48 59 f8    	vmulps zmm15,zmm15,zmm8
  a11f1b:	62 a1 64 40 5c df    	vsubps zmm19,zmm19,zmm23
  a11f21:	62 c1 54 48 5c ff    	vsubps zmm23,zmm5,zmm15
  a11f27:	62 d1 54 48 58 ef    	vaddps zmm5,zmm5,zmm15
  a11f2d:	62 51 3c 40 58 fb    	vaddps zmm15,zmm24,zmm11
  a11f33:	62 11 24 48 5c d8    	vsubps zmm11,zmm11,zmm24
  a11f39:	62 41 54 40 58 c7    	vaddps zmm24,zmm21,zmm15
  a11f3f:	62 51 54 40 5c ff    	vsubps zmm15,zmm21,zmm15
  a11f45:	62 c1 34 48 58 ee    	vaddps zmm21,zmm9,zmm14
  a11f4b:	62 51 34 48 5c ce    	vsubps zmm9,zmm9,zmm14
  a11f51:	62 31 7c 40 58 f7    	vaddps zmm14,zmm16,zmm23
  a11f57:	62 a1 7c 40 5c c7    	vsubps zmm16,zmm16,zmm23
  a11f5d:	62 c1 4c 40 58 fd    	vaddps zmm23,zmm22,zmm13
  a11f63:	62 51 4c 40 5c ed    	vsubps zmm13,zmm22,zmm13
  a11f69:	62 e1 44 48 58 f5    	vaddps zmm22,zmm7,zmm5
  a11f6f:	62 f1 44 48 5c ed    	vsubps zmm5,zmm7,zmm5
  a11f75:	62 91 5c 40 5c f9    	vsubps zmm7,zmm20,zmm25
  a11f7b:	62 81 5c 40 58 e1    	vaddps zmm20,zmm20,zmm25
  a11f81:	62 41 64 40 58 cb    	vaddps zmm25,zmm19,zmm11
  a11f87:	62 51 64 40 5c db    	vsubps zmm11,zmm19,zmm11
  a11f8d:	62 a1 6c 40 5c d9    	vsubps zmm19,zmm18,zmm17
  a11f93:	62 a1 6c 40 58 c9    	vaddps zmm17,zmm18,zmm17
  a11f99:	62 a2 1d 48 7f e1    	vpermt2ps zmm20,zmm12,zmm17
  a11f9f:	62 e3 7d 48 19 64 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x20],zmm20,0x2
  a11fa6:	02 02 
  a11fa8:	62 e1 7c 28 11 24 16 	vmovups YMMWORD PTR [rsi+rdx*1],ymm20
  a11faf:	62 42 1d 48 7f c6    	vpermt2ps zmm24,zmm12,zmm14
  a11fb5:	62 63 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x50],zmm24,0x2
  a11fbc:	05 02 
  a11fbe:	62 61 7c 28 11 84 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x30],ymm24
  a11fc5:	30 00 00 00 
  a11fc9:	62 a2 1d 48 7f ef    	vpermt2ps zmm21,zmm12,zmm23
  a11fcf:	62 82 1d 48 7f f1    	vpermt2ps zmm22,zmm12,zmm25
  a11fd5:	62 e3 7d 48 19 6c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x80],zmm21,0x2
  a11fdc:	08 02 
  a11fde:	62 e1 7c 28 11 6c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm21
  a11fe5:	03 
  a11fe6:	62 e3 7d 48 19 74 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xb0],zmm22,0x2
  a11fed:	0b 02 
  a11fef:	62 e1 7c 28 11 b4 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x90],ymm22
  a11ff6:	90 00 00 00 
  a11ffa:	62 b2 1d 48 7f fb    	vpermt2ps zmm7,zmm12,zmm19
  a12000:	62 f3 7d 48 19 7c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xe0],zmm7,0x2
  a12007:	0e 02 
  a12009:	c5 fc 11 bc 16 c0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xc0],ymm7
  a12010:	00 00 
  a12012:	62 32 1d 48 7f f8    	vpermt2ps zmm15,zmm12,zmm16
  a12018:	62 73 7d 48 19 7c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x110],zmm15,0x2
  a1201f:	11 02 
  a12021:	c5 7c 11 bc 16 f0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xf0],ymm15
  a12028:	00 00 
  a1202a:	62 52 1d 48 7f cd    	vpermt2ps zmm9,zmm12,zmm13
  a12030:	62 d2 1d 48 7f eb    	vpermt2ps zmm5,zmm12,zmm11
  a12036:	62 73 7d 48 19 4c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x140],zmm9,0x2
  a1203d:	14 02 
  a1203f:	c5 7c 11 8c 16 20 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x120],ymm9
  a12046:	00 00 
  a12048:	62 f3 7d 48 19 6c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x170],zmm5,0x2
  a1204f:	17 02 
  a12051:	c5 fc 11 ac 16 50 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x150],ymm5
  a12058:	00 00 
  a1205a:	48 81 c2 80 01 00 00 	add    rdx,0x180
  a12061:	48 39 d0             	cmp    rax,rdx
  a12064:	0f 85 46 f9 ff ff    	jne    a119b0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x70>
  a1206a:	48 89 ec             	mov    rsp,rbp
  a1206d:	5d                   	pop    rbp
  a1206e:	c5 f8 77             	vzeroupper
  a12071:	c3                   	ret
