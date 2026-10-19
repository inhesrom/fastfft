
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a24b80 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a24b80:	62 f1 7c 48 28 05 f6 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6a23f6]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a24b87:	23 6a ff 
  a24b8a:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  a24b8e:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a24b92:	62 f2 7d 48 7f d2    	vpermt2ps zmm2,zmm0,zmm2
  a24b98:	62 f1 7c 48 28 1d 5e 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff6a235e]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a24b9f:	23 6a ff 
  a24ba2:	62 f1 7c 48 28 e2    	vmovaps zmm4,zmm2
  a24ba8:	62 f2 65 48 7f e2    	vpermt2ps zmm4,zmm3,zmm2
  a24bae:	62 f1 7c 48 28 2d 48 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff6a2248]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a24bb5:	22 6a ff 
  a24bb8:	62 f1 7c 48 28 35 7e 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff6a227e]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a24bbf:	22 6a ff 
  a24bc2:	48 c1 e2 04          	shl    rdx,0x4
  a24bc6:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  a24bca:	31 d2                	xor    edx,edx
  a24bcc:	62 f1 7c 48 28 3d ea 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff66b5ea]        # 901c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d670>
  a24bd3:	b5 66 ff 
  a24bd6:	62 71 7c 48 28 05 20 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff66b620]        # 90200 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d6b0>
  a24bdd:	b6 66 ff 
  a24be0:	62 72 7d 48 18 0d 76 	vbroadcastss zmm9,DWORD PTR [rip+0xffffffffff650876]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a24be7:	08 65 ff 
  a24bea:	c4 62 79 18 15 e1 06 	vbroadcastss xmm10,DWORD PTR [rip+0xffffffffff6506e1]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a24bf1:	65 ff 
  a24bf3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  a24bfa:	84 00 00 00 00 00 
  a24c00:	c5 7b 10 5c 17 10    	vmovsd xmm11,QWORD PTR [rdi+rdx*1+0x10]
  a24c06:	c5 78 10 24 17       	vmovups xmm12,XMMWORD PTR [rdi+rdx*1]
  a24c0b:	c5 78 10 6c 17 18    	vmovups xmm13,XMMWORD PTR [rdi+rdx*1+0x18]
  a24c11:	62 53 1d 48 18 db 01 	vinsertf32x4 zmm11,zmm12,xmm11,0x1
  a24c18:	62 51 7c 48 28 e3    	vmovaps zmm12,zmm11
  a24c1e:	62 72 45 48 7f e1    	vpermt2ps zmm12,zmm7,zmm1
  a24c24:	62 72 3d 48 7f d9    	vpermt2ps zmm11,zmm8,zmm1
  a24c2a:	c5 7b 10 74 17 28    	vmovsd xmm14,QWORD PTR [rdi+rdx*1+0x28]
  a24c30:	62 53 15 48 18 ee 01 	vinsertf32x4 zmm13,zmm13,xmm14,0x1
  a24c37:	62 51 7c 48 28 f5    	vmovaps zmm14,zmm13
  a24c3d:	62 72 45 48 7f f1    	vpermt2ps zmm14,zmm7,zmm1
  a24c43:	62 72 3d 48 7f e9    	vpermt2ps zmm13,zmm8,zmm1
  a24c49:	62 51 24 48 58 fd    	vaddps zmm15,zmm11,zmm13
  a24c4f:	62 c1 1c 48 58 c6    	vaddps zmm16,zmm12,zmm14
  a24c55:	62 51 24 48 5c dd    	vsubps zmm11,zmm11,zmm13
  a24c5b:	62 51 1c 48 5c e6    	vsubps zmm12,zmm12,zmm14
  a24c61:	62 72 7d 48 7f f9    	vpermt2ps zmm15,zmm0,zmm1
  a24c67:	62 72 7d 48 7f d9    	vpermt2ps zmm11,zmm0,zmm1
  a24c6d:	62 72 65 48 7f fa    	vpermt2ps zmm15,zmm3,zmm2
  a24c73:	62 72 65 48 7f da    	vpermt2ps zmm11,zmm3,zmm2
  a24c79:	62 71 85 48 14 ec    	vunpcklpd zmm13,zmm15,zmm4
  a24c7f:	62 71 85 48 15 f4    	vunpckhpd zmm14,zmm15,zmm4
  a24c85:	62 71 a5 48 14 fc    	vunpcklpd zmm15,zmm11,zmm4
  a24c8b:	62 71 a5 48 15 dc    	vunpckhpd zmm11,zmm11,zmm4
  a24c91:	62 c1 7c 48 28 cd    	vmovaps zmm17,zmm13
  a24c97:	62 c2 55 48 7f cf    	vpermt2ps zmm17,zmm5,zmm15
  a24c9d:	62 52 4d 48 7f ef    	vpermt2ps zmm13,zmm6,zmm15
  a24ca3:	62 52 55 48 7f f3    	vpermt2ps zmm14,zmm5,zmm11
  a24ca9:	62 e2 7d 48 7f c1    	vpermt2ps zmm16,zmm0,zmm1
  a24caf:	62 72 7d 48 7f e1    	vpermt2ps zmm12,zmm0,zmm1
  a24cb5:	62 e2 65 48 7f c2    	vpermt2ps zmm16,zmm3,zmm2
  a24cbb:	62 72 65 48 7f e2    	vpermt2ps zmm12,zmm3,zmm2
  a24cc1:	62 71 fd 40 14 dc    	vunpcklpd zmm11,zmm16,zmm4
  a24cc7:	62 71 fd 40 15 fc    	vunpckhpd zmm15,zmm16,zmm4
  a24ccd:	62 e1 9d 48 14 c4    	vunpcklpd zmm16,zmm12,zmm4
  a24cd3:	62 71 9d 48 15 e4    	vunpckhpd zmm12,zmm12,zmm4
  a24cd9:	62 c1 7c 48 28 d3    	vmovaps zmm18,zmm11
  a24cdf:	62 a2 55 48 7f d0    	vpermt2ps zmm18,zmm5,zmm16
  a24ce5:	62 32 4d 48 7f d8    	vpermt2ps zmm11,zmm6,zmm16
  a24ceb:	62 52 55 48 7f fc    	vpermt2ps zmm15,zmm5,zmm12
  a24cf1:	62 71 7c 48 10 61 02 	vmovups zmm12,ZMMWORD PTR [rcx+0x80]
  a24cf8:	62 e1 7c 48 10 41 03 	vmovups zmm16,ZMMWORD PTR [rcx+0xc0]
  a24cff:	62 e1 7c 48 10 59 04 	vmovups zmm19,ZMMWORD PTR [rcx+0x100]
  a24d06:	62 e1 7c 48 10 61 05 	vmovups zmm20,ZMMWORD PTR [rcx+0x140]
  a24d0d:	62 c1 14 48 59 ec    	vmulps zmm21,zmm13,zmm12
  a24d13:	62 a2 25 48 bc e8    	vfnmadd231ps zmm21,zmm11,zmm16
  a24d19:	62 a1 0c 48 59 f3    	vmulps zmm22,zmm14,zmm19
  a24d1f:	62 a2 05 48 bc f4    	vfnmadd231ps zmm22,zmm15,zmm20
  a24d25:	62 a1 54 40 58 fe    	vaddps zmm23,zmm21,zmm22
  a24d2b:	62 51 24 48 59 dc    	vmulps zmm11,zmm11,zmm12
  a24d31:	62 52 7d 40 b8 dd    	vfmadd231ps zmm11,zmm16,zmm13
  a24d37:	62 31 04 48 59 e3    	vmulps zmm12,zmm15,zmm19
  a24d3d:	62 52 5d 40 b8 e6    	vfmadd231ps zmm12,zmm20,zmm14
  a24d43:	62 51 24 48 58 ec    	vaddps zmm13,zmm11,zmm12
  a24d49:	62 51 7c 48 28 f1    	vmovaps zmm14,zmm9
  a24d4f:	62 32 45 40 ac f1    	vfnmadd213ps zmm14,zmm23,zmm17
  a24d55:	62 51 7c 48 28 f9    	vmovaps zmm15,zmm9
  a24d5b:	62 32 15 48 ac fa    	vfnmadd213ps zmm15,zmm13,zmm18
  a24d61:	62 a1 74 00 58 c7    	vaddps xmm16,xmm17,xmm23
  a24d67:	62 51 6c 00 58 ed    	vaddps xmm13,xmm18,xmm13
  a24d6d:	62 31 14 08 14 e8    	vunpcklps xmm13,xmm13,xmm16
  a24d73:	c5 78 11 2c 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm13
  a24d78:	c4 41 20 5c dc       	vsubps xmm11,xmm11,xmm12
  a24d7d:	c4 41 20 59 da       	vmulps xmm11,xmm11,xmm10
  a24d82:	c4 41 08 58 e3       	vaddps xmm12,xmm14,xmm11
  a24d87:	62 31 54 00 5c ee    	vsubps xmm13,xmm21,xmm22
  a24d8d:	c4 41 10 59 ea       	vmulps xmm13,xmm13,xmm10
  a24d92:	62 c1 04 08 5c c5    	vsubps xmm16,xmm15,xmm13
  a24d98:	62 51 7c 00 14 e4    	vunpcklps xmm12,xmm16,xmm12
  a24d9e:	c5 78 11 64 16 10    	vmovups XMMWORD PTR [rsi+rdx*1+0x10],xmm12
  a24da4:	c4 41 08 5c db       	vsubps xmm11,xmm14,xmm11
  a24da9:	c4 41 00 58 e5       	vaddps xmm12,xmm15,xmm13
  a24dae:	c4 41 18 14 db       	vunpcklps xmm11,xmm12,xmm11
  a24db3:	c5 78 11 5c 16 20    	vmovups XMMWORD PTR [rsi+rdx*1+0x20],xmm11
  a24db9:	48 83 c2 30          	add    rdx,0x30
  a24dbd:	48 39 d0             	cmp    rax,rdx
  a24dc0:	0f 85 3a fe ff ff    	jne    a24c00 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x80>
  a24dc6:	c5 f8 77             	vzeroupper
  a24dc9:	c3                   	ret
