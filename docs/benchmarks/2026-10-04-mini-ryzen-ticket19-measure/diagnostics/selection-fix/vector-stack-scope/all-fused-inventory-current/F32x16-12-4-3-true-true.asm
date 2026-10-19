
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a74980 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a74980:	62 f1 7c 48 28 05 f6 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6525f6]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a74987:	25 65 ff 
  a7498a:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  a7498e:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a74992:	62 f2 7d 48 7f d2    	vpermt2ps zmm2,zmm0,zmm2
  a74998:	62 f1 7c 48 28 1d 5e 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff65255e]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a7499f:	25 65 ff 
  a749a2:	62 f1 7c 48 28 25 54 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff652454]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a749a9:	24 65 ff 
  a749ac:	62 f1 7c 48 28 2d 8a 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff65248a]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a749b3:	24 65 ff 
  a749b6:	48 c1 e2 05          	shl    rdx,0x5
  a749ba:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  a749be:	31 d2                	xor    edx,edx
  a749c0:	62 f1 7c 48 28 35 f6 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff6202f6]        # 94cc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x22170>
  a749c7:	02 62 ff 
  a749ca:	62 f2 7d 48 18 3d 8c 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff600a8c]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a749d1:	0a 60 ff 
  a749d4:	62 71 7c 48 28 05 22 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff620322]        # 94d00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x221b0>
  a749db:	03 62 ff 
  a749de:	c5 7c 28 0d fa 27 60 	vmovaps ymm9,YMMWORD PTR [rip+0xffffffffff6027fa]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  a749e5:	ff 
  a749e6:	c4 62 7d 18 15 e5 08 	vbroadcastss ymm10,DWORD PTR [rip+0xffffffffff6008e5]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a749ed:	60 ff 
  a749ef:	90                   	nop
  a749f0:	c5 7b 10 5c 17 10    	vmovsd xmm11,QWORD PTR [rdi+rdx*1+0x10]
  a749f6:	c5 78 10 24 17       	vmovups xmm12,XMMWORD PTR [rdi+rdx*1]
  a749fb:	c5 78 10 6c 17 18    	vmovups xmm13,XMMWORD PTR [rdi+rdx*1+0x18]
  a74a01:	c5 78 10 74 17 30    	vmovups xmm14,XMMWORD PTR [rdi+rdx*1+0x30]
  a74a07:	c5 78 10 7c 17 48    	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x48]
  a74a0d:	62 53 1d 48 18 db 01 	vinsertf32x4 zmm11,zmm12,xmm11,0x1
  a74a14:	62 51 7c 48 28 e3    	vmovaps zmm12,zmm11
  a74a1a:	62 72 4d 48 7f e1    	vpermt2ps zmm12,zmm6,zmm1
  a74a20:	62 72 3d 48 7f d9    	vpermt2ps zmm11,zmm8,zmm1
  a74a26:	62 e1 ff 08 10 44 17 	vmovsd xmm16,QWORD PTR [rdi+rdx*1+0x28]
  a74a2d:	05 
  a74a2e:	62 33 15 48 18 e8 01 	vinsertf32x4 zmm13,zmm13,xmm16,0x1
  a74a35:	62 c1 7c 48 28 c5    	vmovaps zmm16,zmm13
  a74a3b:	62 e2 4d 48 7f c1    	vpermt2ps zmm16,zmm6,zmm1
  a74a41:	62 72 3d 48 7f e9    	vpermt2ps zmm13,zmm8,zmm1
  a74a47:	62 e1 ff 08 10 4c 17 	vmovsd xmm17,QWORD PTR [rdi+rdx*1+0x40]
  a74a4e:	08 
  a74a4f:	62 33 0d 48 18 f1 01 	vinsertf32x4 zmm14,zmm14,xmm17,0x1
  a74a56:	62 c1 7c 48 28 ce    	vmovaps zmm17,zmm14
  a74a5c:	62 e2 4d 48 7f c9    	vpermt2ps zmm17,zmm6,zmm1
  a74a62:	62 72 3d 48 7f f1    	vpermt2ps zmm14,zmm8,zmm1
  a74a68:	62 e1 ff 08 10 54 17 	vmovsd xmm18,QWORD PTR [rdi+rdx*1+0x58]
  a74a6f:	0b 
  a74a70:	62 33 05 48 18 fa 01 	vinsertf32x4 zmm15,zmm15,xmm18,0x1
  a74a77:	62 c1 7c 48 28 d7    	vmovaps zmm18,zmm15
  a74a7d:	62 e2 4d 48 7f d1    	vpermt2ps zmm18,zmm6,zmm1
  a74a83:	62 72 3d 48 7f f9    	vpermt2ps zmm15,zmm8,zmm1
  a74a89:	62 c1 24 48 58 de    	vaddps zmm19,zmm11,zmm14
  a74a8f:	62 c1 14 48 58 e7    	vaddps zmm20,zmm13,zmm15
  a74a95:	62 a1 64 40 58 ec    	vaddps zmm21,zmm19,zmm20
  a74a9b:	62 a1 1c 48 58 f1    	vaddps zmm22,zmm12,zmm17
  a74aa1:	62 a1 7c 40 58 fa    	vaddps zmm23,zmm16,zmm18
  a74aa7:	62 21 4c 40 58 c7    	vaddps zmm24,zmm22,zmm23
  a74aad:	62 51 24 48 5c de    	vsubps zmm11,zmm11,zmm14
  a74ab3:	62 31 7c 40 5c f2    	vsubps zmm14,zmm16,zmm18
  a74ab9:	62 c1 24 48 58 c6    	vaddps zmm16,zmm11,zmm14
  a74abf:	62 31 1c 48 5c e1    	vsubps zmm12,zmm12,zmm17
  a74ac5:	62 51 04 48 5c ed    	vsubps zmm13,zmm15,zmm13
  a74acb:	62 51 14 48 58 fc    	vaddps zmm15,zmm13,zmm12
  a74ad1:	62 a1 64 40 5c cc    	vsubps zmm17,zmm19,zmm20
  a74ad7:	62 a1 4c 40 5c d7    	vsubps zmm18,zmm22,zmm23
  a74add:	62 51 24 48 5c de    	vsubps zmm11,zmm11,zmm14
  a74ae3:	62 51 1c 48 5c e5    	vsubps zmm12,zmm12,zmm13
  a74ae9:	62 e2 7d 48 7f e9    	vpermt2ps zmm21,zmm0,zmm1
  a74aef:	62 e2 7d 48 7f c1    	vpermt2ps zmm16,zmm0,zmm1
  a74af5:	62 e2 7d 48 7f c9    	vpermt2ps zmm17,zmm0,zmm1
  a74afb:	62 72 7d 48 7f d9    	vpermt2ps zmm11,zmm0,zmm1
  a74b01:	62 e2 65 48 7f ea    	vpermt2ps zmm21,zmm3,zmm2
  a74b07:	62 e2 65 48 7f c2    	vpermt2ps zmm16,zmm3,zmm2
  a74b0d:	62 e2 65 48 7f ca    	vpermt2ps zmm17,zmm3,zmm2
  a74b13:	62 72 65 48 7f da    	vpermt2ps zmm11,zmm3,zmm2
  a74b19:	62 31 d5 40 14 e9    	vunpcklpd zmm13,zmm21,zmm17
  a74b1f:	62 31 d5 40 15 f1    	vunpckhpd zmm14,zmm21,zmm17
  a74b25:	62 c1 fd 40 14 cb    	vunpcklpd zmm17,zmm16,zmm11
  a74b2b:	62 51 fd 40 15 db    	vunpckhpd zmm11,zmm16,zmm11
  a74b31:	62 c1 7c 48 28 c5    	vmovaps zmm16,zmm13
  a74b37:	62 a2 5d 48 7f c1    	vpermt2ps zmm16,zmm4,zmm17
  a74b3d:	62 32 55 48 7f e9    	vpermt2ps zmm13,zmm5,zmm17
  a74b43:	62 52 5d 48 7f f3    	vpermt2ps zmm14,zmm4,zmm11
  a74b49:	62 62 7d 48 7f c1    	vpermt2ps zmm24,zmm0,zmm1
  a74b4f:	62 72 7d 48 7f f9    	vpermt2ps zmm15,zmm0,zmm1
  a74b55:	62 e2 7d 48 7f d1    	vpermt2ps zmm18,zmm0,zmm1
  a74b5b:	62 72 7d 48 7f e1    	vpermt2ps zmm12,zmm0,zmm1
  a74b61:	62 62 65 48 7f c2    	vpermt2ps zmm24,zmm3,zmm2
  a74b67:	62 72 65 48 7f fa    	vpermt2ps zmm15,zmm3,zmm2
  a74b6d:	62 e2 65 48 7f d2    	vpermt2ps zmm18,zmm3,zmm2
  a74b73:	62 72 65 48 7f e2    	vpermt2ps zmm12,zmm3,zmm2
  a74b79:	62 31 bd 40 14 da    	vunpcklpd zmm11,zmm24,zmm18
  a74b7f:	62 a1 bd 40 15 ca    	vunpckhpd zmm17,zmm24,zmm18
  a74b85:	62 c1 85 48 14 d4    	vunpcklpd zmm18,zmm15,zmm12
  a74b8b:	62 51 85 48 15 e4    	vunpckhpd zmm12,zmm15,zmm12
  a74b91:	62 51 7c 48 28 fb    	vmovaps zmm15,zmm11
  a74b97:	62 32 5d 48 7f fa    	vpermt2ps zmm15,zmm4,zmm18
  a74b9d:	62 32 55 48 7f da    	vpermt2ps zmm11,zmm5,zmm18
  a74ba3:	62 c2 5d 48 7f cc    	vpermt2ps zmm17,zmm4,zmm12
  a74ba9:	62 71 7c 48 10 61 02 	vmovups zmm12,ZMMWORD PTR [rcx+0x80]
  a74bb0:	62 e1 7c 48 10 51 03 	vmovups zmm18,ZMMWORD PTR [rcx+0xc0]
  a74bb7:	62 e1 7c 48 10 59 04 	vmovups zmm19,ZMMWORD PTR [rcx+0x100]
  a74bbe:	62 e1 7c 48 10 61 05 	vmovups zmm20,ZMMWORD PTR [rcx+0x140]
  a74bc5:	62 c1 14 48 59 ec    	vmulps zmm21,zmm13,zmm12
  a74bcb:	62 a2 25 48 bc ea    	vfnmadd231ps zmm21,zmm11,zmm18
  a74bd1:	62 a1 0c 48 59 f3    	vmulps zmm22,zmm14,zmm19
  a74bd7:	62 a2 75 40 bc f4    	vfnmadd231ps zmm22,zmm17,zmm20
  a74bdd:	62 a1 54 40 58 fe    	vaddps zmm23,zmm21,zmm22
  a74be3:	62 51 24 48 59 dc    	vmulps zmm11,zmm11,zmm12
  a74be9:	62 52 6d 40 b8 dd    	vfmadd231ps zmm11,zmm18,zmm13
  a74bef:	62 31 74 40 59 e3    	vmulps zmm12,zmm17,zmm19
  a74bf5:	62 52 5d 40 b8 e6    	vfmadd231ps zmm12,zmm20,zmm14
  a74bfb:	62 51 24 48 58 ec    	vaddps zmm13,zmm11,zmm12
  a74c01:	62 71 7c 48 28 f7    	vmovaps zmm14,zmm7
  a74c07:	62 32 45 40 ac f0    	vfnmadd213ps zmm14,zmm23,zmm16
  a74c0d:	62 e1 7c 48 28 cf    	vmovaps zmm17,zmm7
  a74c13:	62 c2 15 48 ac cf    	vfnmadd213ps zmm17,zmm13,zmm15
  a74c19:	62 a1 7c 20 58 c7    	vaddps ymm16,ymm16,ymm23
  a74c1f:	c4 41 00 58 ed       	vaddps xmm13,xmm15,xmm13
  a74c24:	62 32 35 28 7f e8    	vpermt2ps ymm13,ymm9,ymm16
  a74c2a:	c5 7c 11 2c 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm13
  a74c2f:	c4 41 24 5c dc       	vsubps ymm11,ymm11,ymm12
  a74c34:	c4 41 24 59 da       	vmulps ymm11,ymm11,ymm10
  a74c39:	c4 41 0c 58 e3       	vaddps ymm12,ymm14,ymm11
  a74c3e:	62 31 54 20 5c ee    	vsubps ymm13,ymm21,ymm22
  a74c44:	c4 41 14 59 ea       	vmulps ymm13,ymm13,ymm10
  a74c49:	62 51 74 00 5c fd    	vsubps xmm15,xmm17,xmm13
  a74c4f:	62 52 35 28 7f fc    	vpermt2ps ymm15,ymm9,ymm12
  a74c55:	c5 7c 11 7c 16 20    	vmovups YMMWORD PTR [rsi+rdx*1+0x20],ymm15
  a74c5b:	c4 41 0c 5c db       	vsubps ymm11,ymm14,ymm11
  a74c60:	62 51 74 00 58 e5    	vaddps xmm12,xmm17,xmm13
  a74c66:	62 52 35 28 7f e3    	vpermt2ps ymm12,ymm9,ymm11
  a74c6c:	c5 7c 11 64 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm12
  a74c72:	48 83 c2 60          	add    rdx,0x60
  a74c76:	48 39 d0             	cmp    rax,rdx
  a74c79:	0f 85 71 fd ff ff    	jne    a749f0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x70>
  a74c7f:	c5 f8 77             	vzeroupper
  a74c82:	c3                   	ret
