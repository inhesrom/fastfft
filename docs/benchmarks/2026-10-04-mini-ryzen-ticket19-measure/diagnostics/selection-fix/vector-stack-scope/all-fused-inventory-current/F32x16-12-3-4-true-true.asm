
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a228c0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a228c0:	62 f1 7c 48 28 05 b6 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6a46b6]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a228c7:	46 6a ff 
  a228ca:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  a228ce:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a228d2:	62 f2 7d 48 7f d2    	vpermt2ps zmm2,zmm0,zmm2
  a228d8:	62 f1 7c 48 28 1d 1e 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff6a461e]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a228df:	46 6a ff 
  a228e2:	62 f1 7c 48 28 e2    	vmovaps zmm4,zmm2
  a228e8:	62 f2 65 48 7f e2    	vpermt2ps zmm4,zmm3,zmm2
  a228ee:	62 f1 7c 48 28 2d 08 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff6a4508]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a228f5:	45 6a ff 
  a228f8:	62 f1 7c 48 28 35 3e 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff6a453e]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a228ff:	45 6a ff 
  a22902:	48 c1 e2 05          	shl    rdx,0x5
  a22906:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  a2290a:	31 d2                	xor    edx,edx
  a2290c:	62 f1 7c 48 28 3d aa 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff66d6aa]        # 8ffc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d470>
  a22913:	d6 66 ff 
  a22916:	62 72 7d 48 18 05 40 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff652b40]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a2291d:	2b 65 ff 
  a22920:	62 71 7c 48 28 0d d6 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff66d6d6]        # 90000 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d4b0>
  a22927:	d6 66 ff 
  a2292a:	62 72 7d 48 18 15 a0 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff6529a0]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a22931:	29 65 ff 
  a22934:	c5 7c 28 1d 84 59 65 	vmovaps ymm11,YMMWORD PTR [rip+0xffffffffff655984]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  a2293b:	ff 
  a2293c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  a22940:	c5 7c 10 24 17       	vmovups ymm12,YMMWORD PTR [rdi+rdx*1]
  a22945:	c5 7c 10 6c 17 20    	vmovups ymm13,YMMWORD PTR [rdi+rdx*1+0x20]
  a2294b:	c5 7c 10 74 17 40    	vmovups ymm14,YMMWORD PTR [rdi+rdx*1+0x40]
  a22951:	62 51 7c 48 28 fc    	vmovaps zmm15,zmm12
  a22957:	62 72 45 48 7f f9    	vpermt2ps zmm15,zmm7,zmm1
  a2295d:	62 72 35 48 7f e1    	vpermt2ps zmm12,zmm9,zmm1
  a22963:	62 c1 7c 48 28 c5    	vmovaps zmm16,zmm13
  a22969:	62 e2 45 48 7f c1    	vpermt2ps zmm16,zmm7,zmm1
  a2296f:	62 72 35 48 7f e9    	vpermt2ps zmm13,zmm9,zmm1
  a22975:	62 c1 7c 48 28 ce    	vmovaps zmm17,zmm14
  a2297b:	62 e2 45 48 7f c9    	vpermt2ps zmm17,zmm7,zmm1
  a22981:	62 72 35 48 7f f1    	vpermt2ps zmm14,zmm9,zmm1
  a22987:	62 c1 14 48 58 d6    	vaddps zmm18,zmm13,zmm14
  a2298d:	62 a1 1c 48 58 da    	vaddps zmm19,zmm12,zmm18
  a22993:	62 a1 7c 40 58 e1    	vaddps zmm20,zmm16,zmm17
  a22999:	62 a1 04 48 58 ec    	vaddps zmm21,zmm15,zmm20
  a2299f:	62 32 3d 48 bc e2    	vfnmadd231ps zmm12,zmm8,zmm18
  a229a5:	62 a1 7c 40 5c c1    	vsubps zmm16,zmm16,zmm17
  a229ab:	62 c1 7c 40 59 c2    	vmulps zmm16,zmm16,zmm10
  a229b1:	62 a1 1c 48 58 c8    	vaddps zmm17,zmm12,zmm16
  a229b7:	62 32 3d 48 bc fc    	vfnmadd231ps zmm15,zmm8,zmm20
  a229bd:	62 51 14 48 5c ee    	vsubps zmm13,zmm13,zmm14
  a229c3:	62 51 14 48 59 ea    	vmulps zmm13,zmm13,zmm10
  a229c9:	62 51 04 48 5c f5    	vsubps zmm14,zmm15,zmm13
  a229cf:	62 31 1c 48 5c e0    	vsubps zmm12,zmm12,zmm16
  a229d5:	62 51 14 48 58 ef    	vaddps zmm13,zmm13,zmm15
  a229db:	62 e2 7d 48 7f d9    	vpermt2ps zmm19,zmm0,zmm1
  a229e1:	62 e2 7d 48 7f c9    	vpermt2ps zmm17,zmm0,zmm1
  a229e7:	62 72 7d 48 7f e1    	vpermt2ps zmm12,zmm0,zmm1
  a229ed:	62 e2 65 48 7f da    	vpermt2ps zmm19,zmm3,zmm2
  a229f3:	62 e2 65 48 7f ca    	vpermt2ps zmm17,zmm3,zmm2
  a229f9:	62 72 65 48 7f e2    	vpermt2ps zmm12,zmm3,zmm2
  a229ff:	62 51 e5 40 14 fc    	vunpcklpd zmm15,zmm19,zmm12
  a22a05:	62 c1 e5 40 15 c4    	vunpckhpd zmm16,zmm19,zmm12
  a22a0b:	62 e1 f5 40 14 d4    	vunpcklpd zmm18,zmm17,zmm4
  a22a11:	62 e1 f5 40 15 cc    	vunpckhpd zmm17,zmm17,zmm4
  a22a17:	62 51 7c 48 28 e7    	vmovaps zmm12,zmm15
  a22a1d:	62 32 55 48 7f e2    	vpermt2ps zmm12,zmm5,zmm18
  a22a23:	62 32 4d 48 7f fa    	vpermt2ps zmm15,zmm6,zmm18
  a22a29:	62 a1 7c 48 28 d0    	vmovaps zmm18,zmm16
  a22a2f:	62 a2 55 48 7f d1    	vpermt2ps zmm18,zmm5,zmm17
  a22a35:	62 a2 4d 48 7f c1    	vpermt2ps zmm16,zmm6,zmm17
  a22a3b:	62 e2 7d 48 7f e9    	vpermt2ps zmm21,zmm0,zmm1
  a22a41:	62 72 7d 48 7f f1    	vpermt2ps zmm14,zmm0,zmm1
  a22a47:	62 72 7d 48 7f e9    	vpermt2ps zmm13,zmm0,zmm1
  a22a4d:	62 e2 65 48 7f ea    	vpermt2ps zmm21,zmm3,zmm2
  a22a53:	62 72 65 48 7f f2    	vpermt2ps zmm14,zmm3,zmm2
  a22a59:	62 72 65 48 7f ea    	vpermt2ps zmm13,zmm3,zmm2
  a22a5f:	62 c1 d5 40 14 cd    	vunpcklpd zmm17,zmm21,zmm13
  a22a65:	62 51 d5 40 15 ed    	vunpckhpd zmm13,zmm21,zmm13
  a22a6b:	62 e1 8d 48 14 dc    	vunpcklpd zmm19,zmm14,zmm4
  a22a71:	62 71 8d 48 15 f4    	vunpckhpd zmm14,zmm14,zmm4
  a22a77:	62 a1 7c 48 28 e1    	vmovaps zmm20,zmm17
  a22a7d:	62 a2 55 48 7f e3    	vpermt2ps zmm20,zmm5,zmm19
  a22a83:	62 a2 4d 48 7f cb    	vpermt2ps zmm17,zmm6,zmm19
  a22a89:	62 c1 7c 48 28 dd    	vmovaps zmm19,zmm13
  a22a8f:	62 c2 55 48 7f de    	vpermt2ps zmm19,zmm5,zmm14
  a22a95:	62 52 4d 48 7f ee    	vpermt2ps zmm13,zmm6,zmm14
  a22a9b:	62 71 7c 48 10 71 02 	vmovups zmm14,ZMMWORD PTR [rcx+0x80]
  a22aa2:	62 e1 7c 48 10 69 03 	vmovups zmm21,ZMMWORD PTR [rcx+0xc0]
  a22aa9:	62 e1 7c 48 10 71 04 	vmovups zmm22,ZMMWORD PTR [rcx+0x100]
  a22ab0:	62 e1 7c 48 10 79 05 	vmovups zmm23,ZMMWORD PTR [rcx+0x140]
  a22ab7:	62 61 7c 48 10 41 06 	vmovups zmm24,ZMMWORD PTR [rcx+0x180]
  a22abe:	62 61 7c 48 10 49 07 	vmovups zmm25,ZMMWORD PTR [rcx+0x1c0]
  a22ac5:	62 21 6c 40 59 d6    	vmulps zmm26,zmm18,zmm22
  a22acb:	62 22 65 40 bc d7    	vfnmadd231ps zmm26,zmm19,zmm23
  a22ad1:	62 41 04 48 59 de    	vmulps zmm27,zmm15,zmm14
  a22ad7:	62 22 75 40 bc dd    	vfnmadd231ps zmm27,zmm17,zmm21
  a22add:	62 01 7c 40 59 e0    	vmulps zmm28,zmm16,zmm24
  a22ae3:	62 02 15 48 bc e1    	vfnmadd231ps zmm28,zmm13,zmm25
  a22ae9:	62 a1 64 40 59 de    	vmulps zmm19,zmm19,zmm22
  a22aef:	62 a2 45 40 b8 da    	vfmadd231ps zmm19,zmm23,zmm18
  a22af5:	62 51 74 40 59 f6    	vmulps zmm14,zmm17,zmm14
  a22afb:	62 52 55 40 b8 f7    	vfmadd231ps zmm14,zmm21,zmm15
  a22b01:	62 11 14 48 59 e8    	vmulps zmm13,zmm13,zmm24
  a22b07:	62 32 35 40 b8 e8    	vfmadd231ps zmm13,zmm25,zmm16
  a22b0d:	62 11 24 20 58 fc    	vaddps ymm15,ymm27,ymm28
  a22b13:	62 81 1c 28 58 c2    	vaddps ymm16,ymm12,ymm26
  a22b19:	62 c1 7c 20 58 cf    	vaddps ymm17,ymm16,ymm15
  a22b1f:	62 c1 0c 08 58 d5    	vaddps xmm18,xmm14,xmm13
  a22b25:	62 a1 64 00 58 ec    	vaddps xmm21,xmm19,xmm20
  a22b2b:	62 a1 54 00 58 f2    	vaddps xmm22,xmm21,xmm18
  a22b31:	62 a2 25 28 7f f1    	vpermt2ps ymm22,ymm11,ymm17
  a22b37:	62 a3 7d 28 19 f1 01 	vextractf32x4 xmm17,ymm22,0x1
  a22b3e:	62 e1 7c 08 13 4c 16 	vmovlps QWORD PTR [rsi+rdx*1+0x10],xmm17
  a22b45:	02 
  a22b46:	62 e1 7c 08 11 34 16 	vmovups XMMWORD PTR [rsi+rdx*1],xmm22
  a22b4d:	c4 41 0c 5c ed       	vsubps ymm13,ymm14,ymm13
  a22b52:	62 11 1c 28 5c e2    	vsubps ymm12,ymm12,ymm26
  a22b58:	c4 41 1c 58 f5       	vaddps ymm14,ymm12,ymm13
  a22b5d:	62 81 1c 00 5c cb    	vsubps xmm17,xmm28,xmm27
  a22b63:	62 a1 5c 00 5c db    	vsubps xmm19,xmm20,xmm19
  a22b69:	62 a1 64 00 58 e1    	vaddps xmm20,xmm19,xmm17
  a22b6f:	62 c2 25 28 7f e6    	vpermt2ps ymm20,ymm11,ymm14
  a22b75:	62 c3 7d 28 19 e6 01 	vextractf32x4 xmm14,ymm20,0x1
  a22b7c:	c5 78 13 74 16 28    	vmovlps QWORD PTR [rsi+rdx*1+0x28],xmm14
  a22b82:	62 e1 7c 08 11 a4 16 	vmovups XMMWORD PTR [rsi+rdx*1+0x18],xmm20
  a22b89:	18 00 00 00 
  a22b8d:	62 51 7c 20 5c f7    	vsubps ymm14,ymm16,ymm15
  a22b93:	62 31 54 00 5c fa    	vsubps xmm15,xmm21,xmm18
  a22b99:	62 52 25 28 7f fe    	vpermt2ps ymm15,ymm11,ymm14
  a22b9f:	c4 43 7d 19 fe 01    	vextractf128 xmm14,ymm15,0x1
  a22ba5:	c5 78 13 74 16 40    	vmovlps QWORD PTR [rsi+rdx*1+0x40],xmm14
  a22bab:	c5 78 11 7c 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm15
  a22bb1:	c4 41 1c 5c e5       	vsubps ymm12,ymm12,ymm13
  a22bb6:	62 31 64 00 5c e9    	vsubps xmm13,xmm19,xmm17
  a22bbc:	62 52 25 28 7f ec    	vpermt2ps ymm13,ymm11,ymm12
  a22bc2:	c4 43 7d 19 ec 01    	vextractf128 xmm12,ymm13,0x1
  a22bc8:	c5 78 13 64 16 58    	vmovlps QWORD PTR [rsi+rdx*1+0x58],xmm12
  a22bce:	c5 78 11 6c 16 48    	vmovups XMMWORD PTR [rsi+rdx*1+0x48],xmm13
  a22bd4:	48 83 c2 60          	add    rdx,0x60
  a22bd8:	48 39 d0             	cmp    rax,rdx
  a22bdb:	0f 85 5f fd ff ff    	jne    a22940 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x80>
  a22be1:	c5 f8 77             	vzeroupper
  a22be4:	c3                   	ret
