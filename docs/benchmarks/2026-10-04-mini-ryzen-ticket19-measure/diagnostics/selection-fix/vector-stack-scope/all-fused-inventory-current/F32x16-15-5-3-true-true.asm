
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a17a80 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a17a80:	62 f1 7c 48 28 05 f6 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6af4f6]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a17a87:	f4 6a ff 
  a17a8a:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  a17a8e:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a17a92:	62 f2 7d 48 7f d2    	vpermt2ps zmm2,zmm0,zmm2
  a17a98:	62 f1 7c 48 28 1d 5e 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff6af45e]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a17a9f:	f4 6a ff 
  a17aa2:	62 f1 7c 48 28 25 54 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff6af354]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a17aa9:	f3 6a ff 
  a17aac:	62 f1 7c 48 28 2d 8a 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff6af38a]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a17ab3:	f3 6a ff 
  a17ab6:	48 6b c2 78          	imul   rax,rdx,0x78
  a17aba:	31 d2                	xor    edx,edx
  a17abc:	62 f1 7c 48 28 35 ba 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff677aba]        # 8f580 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1ca30>
  a17ac3:	7a 67 ff 
  a17ac6:	62 f2 7d 48 18 3d 18 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff65dc18]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a17acd:	dc 65 ff 
  a17ad0:	62 72 7d 48 18 05 6a 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff65db6a]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a17ad7:	db 65 ff 
  a17ada:	62 72 7d 48 18 0d 74 	vbroadcastss zmm9,DWORD PTR [rip+0xffffffffff65dc74]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a17ae1:	dc 65 ff 
  a17ae4:	62 72 7d 48 18 15 b2 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff65d8b2]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a17aeb:	d8 65 ff 
  a17aee:	62 72 7d 48 18 1d 68 	vbroadcastss zmm11,DWORD PTR [rip+0xffffffffff65d968]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a17af5:	d9 65 ff 
  a17af8:	62 71 7c 48 28 25 be 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff677abe]        # 8f5c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1ca70>
  a17aff:	7a 67 ff 
  a17b02:	62 72 7d 48 18 2d c8 	vbroadcastss zmm13,DWORD PTR [rip+0xffffffffff65d7c8]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a17b09:	d7 65 ff 
  a17b0c:	62 71 7c 48 28 35 ea 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff677aea]        # 8f600 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1cab0>
  a17b13:	7a 67 ff 
  a17b16:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  a17b1d:	00 00 00 
  a17b20:	c5 7b 10 7c 17 10    	vmovsd xmm15,QWORD PTR [rdi+rdx*1+0x10]
  a17b26:	62 e1 7c 08 10 04 17 	vmovups xmm16,XMMWORD PTR [rdi+rdx*1]
  a17b2d:	62 e1 7c 08 10 8c 17 	vmovups xmm17,XMMWORD PTR [rdi+rdx*1+0x18]
  a17b34:	18 00 00 00 
  a17b38:	62 e1 7c 08 10 54 17 	vmovups xmm18,XMMWORD PTR [rdi+rdx*1+0x30]
  a17b3f:	03 
  a17b40:	62 e1 7c 08 10 9c 17 	vmovups xmm19,XMMWORD PTR [rdi+rdx*1+0x48]
  a17b47:	48 00 00 00 
  a17b4b:	62 c3 7d 40 18 c7 01 	vinsertf32x4 zmm16,zmm16,xmm15,0x1
  a17b52:	62 31 7c 48 28 f8    	vmovaps zmm15,zmm16
  a17b58:	62 72 4d 48 7f f9    	vpermt2ps zmm15,zmm6,zmm1
  a17b5e:	62 e2 1d 48 7f c1    	vpermt2ps zmm16,zmm12,zmm1
  a17b64:	62 e1 ff 08 10 64 17 	vmovsd xmm20,QWORD PTR [rdi+rdx*1+0x28]
  a17b6b:	05 
  a17b6c:	62 a3 75 40 18 cc 01 	vinsertf32x4 zmm17,zmm17,xmm20,0x1
  a17b73:	62 a1 7c 48 28 e1    	vmovaps zmm20,zmm17
  a17b79:	62 e2 4d 48 7f e1    	vpermt2ps zmm20,zmm6,zmm1
  a17b7f:	62 e2 1d 48 7f c9    	vpermt2ps zmm17,zmm12,zmm1
  a17b85:	62 e1 ff 08 10 6c 17 	vmovsd xmm21,QWORD PTR [rdi+rdx*1+0x40]
  a17b8c:	08 
  a17b8d:	62 a3 6d 40 18 d5 01 	vinsertf32x4 zmm18,zmm18,xmm21,0x1
  a17b94:	62 a1 7c 48 28 ea    	vmovaps zmm21,zmm18
  a17b9a:	62 e2 4d 48 7f e9    	vpermt2ps zmm21,zmm6,zmm1
  a17ba0:	62 e2 1d 48 7f d1    	vpermt2ps zmm18,zmm12,zmm1
  a17ba6:	62 e1 ff 08 10 74 17 	vmovsd xmm22,QWORD PTR [rdi+rdx*1+0x58]
  a17bad:	0b 
  a17bae:	62 a3 65 40 18 de 01 	vinsertf32x4 zmm19,zmm19,xmm22,0x1
  a17bb5:	62 a1 7c 48 28 f3    	vmovaps zmm22,zmm19
  a17bbb:	62 e2 4d 48 7f f1    	vpermt2ps zmm22,zmm6,zmm1
  a17bc1:	62 e2 1d 48 7f d9    	vpermt2ps zmm19,zmm12,zmm1
  a17bc7:	62 e1 ff 08 10 7c 17 	vmovsd xmm23,QWORD PTR [rdi+rdx*1+0x70]
  a17bce:	0e 
  a17bcf:	62 61 7c 08 10 44 17 	vmovups xmm24,XMMWORD PTR [rdi+rdx*1+0x60]
  a17bd6:	06 
  a17bd7:	62 a3 3d 40 18 ff 01 	vinsertf32x4 zmm23,zmm24,xmm23,0x1
  a17bde:	62 21 7c 48 28 c7    	vmovaps zmm24,zmm23
  a17be4:	62 62 4d 48 7f c1    	vpermt2ps zmm24,zmm6,zmm1
  a17bea:	62 e2 1d 48 7f f9    	vpermt2ps zmm23,zmm12,zmm1
  a17bf0:	62 21 74 40 58 cf    	vaddps zmm25,zmm17,zmm23
  a17bf6:	62 01 5c 40 58 d0    	vaddps zmm26,zmm20,zmm24
  a17bfc:	62 81 5c 40 5c e0    	vsubps zmm20,zmm20,zmm24
  a17c02:	62 21 54 40 58 c6    	vaddps zmm24,zmm21,zmm22
  a17c08:	62 a1 54 40 5c ee    	vsubps zmm21,zmm21,zmm22
  a17c0e:	62 81 7c 40 58 f1    	vaddps zmm22,zmm16,zmm25
  a17c14:	62 a1 74 40 5c ff    	vsubps zmm23,zmm17,zmm23
  a17c1a:	62 a1 6c 40 58 cb    	vaddps zmm17,zmm18,zmm19
  a17c20:	62 a1 4c 40 58 f1    	vaddps zmm22,zmm22,zmm17
  a17c26:	62 a1 6c 40 5c d3    	vsubps zmm18,zmm18,zmm19
  a17c2c:	62 e1 7c 48 28 df    	vmovaps zmm19,zmm7
  a17c32:	62 a2 35 40 a8 d8    	vfmadd213ps zmm19,zmm25,zmm16
  a17c38:	62 82 3d 48 bc c1    	vfnmadd231ps zmm16,zmm8,zmm25
  a17c3e:	62 01 04 48 58 ca    	vaddps zmm25,zmm15,zmm26
  a17c44:	62 c2 75 40 bc d8    	vfnmadd231ps zmm19,zmm17,zmm8
  a17c4a:	62 a2 45 48 b8 c1    	vfmadd231ps zmm16,zmm7,zmm17
  a17c50:	62 41 54 40 59 d9    	vmulps zmm27,zmm21,zmm9
  a17c56:	62 42 5d 40 b8 da    	vfmadd231ps zmm27,zmm20,zmm10
  a17c5c:	62 c1 5c 40 59 e1    	vmulps zmm20,zmm20,zmm9
  a17c62:	62 a2 2d 48 bc e5    	vfnmadd231ps zmm20,zmm10,zmm21
  a17c68:	62 e1 7c 48 28 ef    	vmovaps zmm21,zmm7
  a17c6e:	62 c2 2d 40 a8 ef    	vfmadd213ps zmm21,zmm26,zmm15
  a17c74:	62 12 3d 48 bc fa    	vfnmadd231ps zmm15,zmm8,zmm26
  a17c7a:	62 81 34 40 58 c8    	vaddps zmm17,zmm25,zmm24
  a17c80:	62 c2 3d 40 bc e8    	vfnmadd231ps zmm21,zmm24,zmm8
  a17c86:	62 12 45 48 b8 f8    	vfmadd231ps zmm15,zmm7,zmm24
  a17c8c:	62 41 6c 40 59 c1    	vmulps zmm24,zmm18,zmm9
  a17c92:	62 42 45 40 b8 c2    	vfmadd231ps zmm24,zmm23,zmm10
  a17c98:	62 c1 44 40 59 f9    	vmulps zmm23,zmm23,zmm9
  a17c9e:	62 a2 2d 48 bc fa    	vfnmadd231ps zmm23,zmm10,zmm18
  a17ca4:	62 a1 7c 40 58 d4    	vaddps zmm18,zmm16,zmm20
  a17caa:	62 a1 7c 40 5c c4    	vsubps zmm16,zmm16,zmm20
  a17cb0:	62 a1 04 48 5c e7    	vsubps zmm20,zmm15,zmm23
  a17cb6:	62 c1 44 40 58 ff    	vaddps zmm23,zmm23,zmm15
  a17cbc:	62 11 64 40 58 fb    	vaddps zmm15,zmm19,zmm27
  a17cc2:	62 81 64 40 5c db    	vsubps zmm19,zmm19,zmm27
  a17cc8:	62 01 54 40 5c c8    	vsubps zmm25,zmm21,zmm24
  a17cce:	62 a1 3c 40 58 ed    	vaddps zmm21,zmm24,zmm21
  a17cd4:	62 e2 7d 48 7f f1    	vpermt2ps zmm22,zmm0,zmm1
  a17cda:	62 72 7d 48 7f f9    	vpermt2ps zmm15,zmm0,zmm1
  a17ce0:	62 e2 7d 48 7f d1    	vpermt2ps zmm18,zmm0,zmm1
  a17ce6:	62 e2 7d 48 7f c1    	vpermt2ps zmm16,zmm0,zmm1
  a17cec:	62 e2 7d 48 7f d9    	vpermt2ps zmm19,zmm0,zmm1
  a17cf2:	62 a2 65 48 7f f3    	vpermt2ps zmm22,zmm3,zmm19
  a17cf8:	62 72 65 48 7f fa    	vpermt2ps zmm15,zmm3,zmm2
  a17cfe:	62 e2 65 48 7f d2    	vpermt2ps zmm18,zmm3,zmm2
  a17d04:	62 e2 65 48 7f c2    	vpermt2ps zmm16,zmm3,zmm2
  a17d0a:	62 a1 cd 40 14 da    	vunpcklpd zmm19,zmm22,zmm18
  a17d10:	62 a1 cd 40 15 d2    	vunpckhpd zmm18,zmm22,zmm18
  a17d16:	62 a1 85 48 14 f0    	vunpcklpd zmm22,zmm15,zmm16
  a17d1c:	62 a1 85 48 15 c0    	vunpckhpd zmm16,zmm15,zmm16
  a17d22:	62 31 7c 48 28 fb    	vmovaps zmm15,zmm19
  a17d28:	62 32 5d 48 7f fe    	vpermt2ps zmm15,zmm4,zmm22
  a17d2e:	62 a2 55 48 7f de    	vpermt2ps zmm19,zmm5,zmm22
  a17d34:	62 a2 5d 48 7f d0    	vpermt2ps zmm18,zmm4,zmm16
  a17d3a:	62 e2 7d 48 7f c9    	vpermt2ps zmm17,zmm0,zmm1
  a17d40:	62 62 7d 48 7f c9    	vpermt2ps zmm25,zmm0,zmm1
  a17d46:	62 e2 7d 48 7f e1    	vpermt2ps zmm20,zmm0,zmm1
  a17d4c:	62 e2 7d 48 7f f9    	vpermt2ps zmm23,zmm0,zmm1
  a17d52:	62 e2 7d 48 7f e9    	vpermt2ps zmm21,zmm0,zmm1
  a17d58:	62 a2 65 48 7f cd    	vpermt2ps zmm17,zmm3,zmm21
  a17d5e:	62 62 65 48 7f ca    	vpermt2ps zmm25,zmm3,zmm2
  a17d64:	62 e2 65 48 7f e2    	vpermt2ps zmm20,zmm3,zmm2
  a17d6a:	62 e2 65 48 7f fa    	vpermt2ps zmm23,zmm3,zmm2
  a17d70:	62 a1 f5 40 14 c4    	vunpcklpd zmm16,zmm17,zmm20
  a17d76:	62 a1 f5 40 15 cc    	vunpckhpd zmm17,zmm17,zmm20
  a17d7c:	62 a1 b5 40 14 e7    	vunpcklpd zmm20,zmm25,zmm23
  a17d82:	62 a1 b5 40 15 ef    	vunpckhpd zmm21,zmm25,zmm23
  a17d88:	62 a1 7c 48 28 f0    	vmovaps zmm22,zmm16
  a17d8e:	62 a2 5d 48 7f f4    	vpermt2ps zmm22,zmm4,zmm20
  a17d94:	62 a2 55 48 7f c4    	vpermt2ps zmm16,zmm5,zmm20
  a17d9a:	62 a2 5d 48 7f cd    	vpermt2ps zmm17,zmm4,zmm21
  a17da0:	62 e1 7c 48 10 61 02 	vmovups zmm20,ZMMWORD PTR [rcx+0x80]
  a17da7:	62 e1 7c 48 10 69 03 	vmovups zmm21,ZMMWORD PTR [rcx+0xc0]
  a17dae:	62 a1 64 40 59 fc    	vmulps zmm23,zmm19,zmm20
  a17db4:	62 a2 7d 40 bc fd    	vfnmadd231ps zmm23,zmm16,zmm21
  a17dba:	62 a1 7c 40 59 c4    	vmulps zmm16,zmm16,zmm20
  a17dc0:	62 e1 7c 48 10 61 04 	vmovups zmm20,ZMMWORD PTR [rcx+0x100]
  a17dc7:	62 a2 55 40 b8 c3    	vfmadd231ps zmm16,zmm21,zmm19
  a17dcd:	62 e1 7c 48 10 59 05 	vmovups zmm19,ZMMWORD PTR [rcx+0x140]
  a17dd4:	62 a1 6c 40 59 ec    	vmulps zmm21,zmm18,zmm20
  a17dda:	62 a2 75 40 bc eb    	vfnmadd231ps zmm21,zmm17,zmm19
  a17de0:	62 a1 74 40 59 cc    	vmulps zmm17,zmm17,zmm20
  a17de6:	62 a1 44 40 58 e5    	vaddps zmm20,zmm23,zmm21
  a17dec:	62 a2 65 40 b8 ca    	vfmadd231ps zmm17,zmm19,zmm18
  a17df2:	62 a1 7c 40 58 d1    	vaddps zmm18,zmm16,zmm17
  a17df8:	62 c1 7c 48 28 db    	vmovaps zmm19,zmm11
  a17dfe:	62 c2 5d 40 ac df    	vfnmadd213ps zmm19,zmm20,zmm15
  a17e04:	62 a1 7c 40 5c c1    	vsubps zmm16,zmm16,zmm17
  a17e0a:	62 c1 7c 40 59 c5    	vmulps zmm16,zmm16,zmm13
  a17e10:	62 a1 64 40 58 c8    	vaddps zmm17,zmm19,zmm16
  a17e16:	62 a1 44 40 5c ed    	vsubps zmm21,zmm23,zmm21
  a17e1c:	62 c1 7c 48 28 fb    	vmovaps zmm23,zmm11
  a17e22:	62 a2 6d 40 ac fe    	vfnmadd213ps zmm23,zmm18,zmm22
  a17e28:	62 c1 54 40 59 ed    	vmulps zmm21,zmm21,zmm13
  a17e2e:	62 a1 64 40 5c c0    	vsubps zmm16,zmm19,zmm16
  a17e34:	62 a1 44 40 5c dd    	vsubps zmm19,zmm23,zmm21
  a17e3a:	62 a1 44 40 58 ed    	vaddps zmm21,zmm23,zmm21
  a17e40:	62 a1 4c 40 58 d2    	vaddps zmm18,zmm22,zmm18
  a17e46:	62 31 04 48 58 fc    	vaddps zmm15,zmm15,zmm20
  a17e4c:	62 c2 0d 48 7f d7    	vpermt2ps zmm18,zmm14,zmm15
  a17e52:	62 e1 7c 28 11 14 16 	vmovups YMMWORD PTR [rsi+rdx*1],ymm18
  a17e59:	62 c3 7d 48 19 d7 02 	vextractf32x4 xmm15,zmm18,0x2
  a17e60:	c5 78 13 7c 16 20    	vmovlps QWORD PTR [rsi+rdx*1+0x20],xmm15
  a17e66:	62 a2 0d 48 7f d9    	vpermt2ps zmm19,zmm14,zmm17
  a17e6c:	62 e1 7c 28 11 9c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x28],ymm19
  a17e73:	28 00 00 00 
  a17e77:	62 c3 7d 48 19 df 02 	vextractf32x4 xmm15,zmm19,0x2
  a17e7e:	c5 78 13 7c 16 48    	vmovlps QWORD PTR [rsi+rdx*1+0x48],xmm15
  a17e84:	62 a2 0d 48 7f e8    	vpermt2ps zmm21,zmm14,zmm16
  a17e8a:	62 e1 7c 28 11 ac 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x50],ymm21
  a17e91:	50 00 00 00 
  a17e95:	62 c3 7d 48 19 ef 02 	vextractf32x4 xmm15,zmm21,0x2
  a17e9c:	c5 78 13 7c 16 70    	vmovlps QWORD PTR [rsi+rdx*1+0x70],xmm15
  a17ea2:	48 83 c2 78          	add    rdx,0x78
  a17ea6:	48 39 d0             	cmp    rax,rdx
  a17ea9:	0f 85 71 fc ff ff    	jne    a17b20 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0xa0>
  a17eaf:	c5 f8 77             	vzeroupper
  a17eb2:	c3                   	ret
