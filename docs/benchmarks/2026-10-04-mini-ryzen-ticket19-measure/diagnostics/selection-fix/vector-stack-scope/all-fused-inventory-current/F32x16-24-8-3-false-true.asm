
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a57980 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a57980:	55                   	push   rbp
  a57981:	48 89 e5             	mov    rbp,rsp
  a57984:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a57988:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  a5798f:	62 f1 7c 48 28 05 e7 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff66f5e7]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a57996:	f5 66 ff 
  a57999:	62 f1 7c 48 28 0d 5d 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff66f55d]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a579a0:	f5 66 ff 
  a579a3:	62 f1 7c 48 28 15 53 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff66f453]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a579aa:	f4 66 ff 
  a579ad:	62 f1 7c 48 28 1d 89 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff66f489]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a579b4:	f4 66 ff 
  a579b7:	48 c1 e2 06          	shl    rdx,0x6
  a579bb:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  a579bf:	31 d2                	xor    edx,edx
  a579c1:	4c 8d 44 24 40       	lea    r8,[rsp+0x40]
  a579c6:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  a579cb:	62 f1 7c 48 28 25 eb 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff63b5eb]        # 92fc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20470>
  a579d2:	b5 63 ff 
  a579d5:	c5 d0 57 ed          	vxorps xmm5,xmm5,xmm5
  a579d9:	62 f2 7d 48 18 35 b9 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff61d9b9]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a579e0:	d9 61 ff 
  a579e3:	62 f2 7d 48 18 3d 73 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff61da73]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a579ea:	da 61 ff 
  a579ed:	62 71 7c 48 28 05 09 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff63b609]        # 93000 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x204b0>
  a579f4:	b6 63 ff 
  a579f7:	62 72 7d 48 18 0d d3 	vbroadcastss zmm9,DWORD PTR [rip+0xffffffffff61d8d3]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a579fe:	d8 61 ff 
  a57a01:	62 71 7c 48 28 15 35 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff63b635]        # 93040 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x204f0>
  a57a08:	b6 63 ff 
  a57a0b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  a57a10:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  a57a15:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  a57a1a:	c5 7b 10 5c 17 10    	vmovsd xmm11,QWORD PTR [rdi+rdx*1+0x10]
  a57a20:	c5 78 10 24 17       	vmovups xmm12,XMMWORD PTR [rdi+rdx*1]
  a57a25:	c5 78 10 74 17 18    	vmovups xmm14,XMMWORD PTR [rdi+rdx*1+0x18]
  a57a2b:	62 e1 7c 08 10 44 17 	vmovups xmm16,XMMWORD PTR [rdi+rdx*1+0x30]
  a57a32:	03 
  a57a33:	62 e1 7c 08 10 8c 17 	vmovups xmm17,XMMWORD PTR [rdi+rdx*1+0x48]
  a57a3a:	48 00 00 00 
  a57a3e:	62 53 1d 48 18 db 01 	vinsertf32x4 zmm11,zmm12,xmm11,0x1
  a57a45:	62 51 7c 48 28 eb    	vmovaps zmm13,zmm11
  a57a4b:	62 72 3d 48 7f dd    	vpermt2ps zmm11,zmm8,zmm5
  a57a51:	c5 7b 10 64 17 28    	vmovsd xmm12,QWORD PTR [rdi+rdx*1+0x28]
  a57a57:	62 53 0d 48 18 fc 01 	vinsertf32x4 zmm15,zmm14,xmm12,0x1
  a57a5e:	62 51 7c 48 28 f7    	vmovaps zmm14,zmm15
  a57a64:	62 72 3d 48 7f fd    	vpermt2ps zmm15,zmm8,zmm5
  a57a6a:	c5 7b 10 64 17 40    	vmovsd xmm12,QWORD PTR [rdi+rdx*1+0x40]
  a57a70:	62 c3 7d 40 18 dc 01 	vinsertf32x4 zmm19,zmm16,xmm12,0x1
  a57a77:	62 31 7c 48 28 e3    	vmovaps zmm12,zmm19
  a57a7d:	62 e2 3d 48 7f dd    	vpermt2ps zmm19,zmm8,zmm5
  a57a83:	62 e1 ff 08 10 44 17 	vmovsd xmm16,QWORD PTR [rdi+rdx*1+0x58]
  a57a8a:	0b 
  a57a8b:	62 a3 75 40 18 d0 01 	vinsertf32x4 zmm18,zmm17,xmm16,0x1
  a57a92:	62 a1 7c 48 28 ca    	vmovaps zmm17,zmm18
  a57a98:	62 e2 3d 48 7f d5    	vpermt2ps zmm18,zmm8,zmm5
  a57a9e:	62 e1 ff 08 10 44 17 	vmovsd xmm16,QWORD PTR [rdi+rdx*1+0x70]
  a57aa5:	0e 
  a57aa6:	62 e1 7c 08 10 64 17 	vmovups xmm20,XMMWORD PTR [rdi+rdx*1+0x60]
  a57aad:	06 
  a57aae:	62 a3 5d 40 18 c0 01 	vinsertf32x4 zmm16,zmm20,xmm16,0x1
  a57ab5:	62 72 5d 48 7f ed    	vpermt2ps zmm13,zmm4,zmm5
  a57abb:	62 a1 7c 48 28 e0    	vmovaps zmm20,zmm16
  a57ac1:	62 e2 3d 48 7f c5    	vpermt2ps zmm16,zmm8,zmm5
  a57ac7:	62 e1 ff 08 10 6c 17 	vmovsd xmm21,QWORD PTR [rdi+rdx*1+0x88]
  a57ace:	11 
  a57acf:	62 72 5d 48 7f f5    	vpermt2ps zmm14,zmm4,zmm5
  a57ad5:	62 e1 7c 08 10 b4 17 	vmovups xmm22,XMMWORD PTR [rdi+rdx*1+0x78]
  a57adc:	78 00 00 00 
  a57ae0:	62 a3 4d 40 18 ed 01 	vinsertf32x4 zmm21,zmm22,xmm21,0x1
  a57ae7:	62 a1 7c 48 28 f5    	vmovaps zmm22,zmm21
  a57aed:	62 72 5d 48 7f e5    	vpermt2ps zmm12,zmm4,zmm5
  a57af3:	62 e2 3d 48 7f ed    	vpermt2ps zmm21,zmm8,zmm5
  a57af9:	62 e1 ff 08 10 7c 17 	vmovsd xmm23,QWORD PTR [rdi+rdx*1+0xa0]
  a57b00:	14 
  a57b01:	62 61 7c 08 10 44 17 	vmovups xmm24,XMMWORD PTR [rdi+rdx*1+0x90]
  a57b08:	09 
  a57b09:	62 e2 5d 48 7f cd    	vpermt2ps zmm17,zmm4,zmm5
  a57b0f:	62 a3 3d 40 18 ff 01 	vinsertf32x4 zmm23,zmm24,xmm23,0x1
  a57b16:	62 21 7c 48 28 c7    	vmovaps zmm24,zmm23
  a57b1c:	62 e2 3d 48 7f fd    	vpermt2ps zmm23,zmm8,zmm5
  a57b22:	62 e2 5d 48 7f e5    	vpermt2ps zmm20,zmm4,zmm5
  a57b28:	62 61 ff 08 10 4c 17 	vmovsd xmm25,QWORD PTR [rdi+rdx*1+0xb8]
  a57b2f:	17 
  a57b30:	62 61 7c 08 10 94 17 	vmovups xmm26,XMMWORD PTR [rdi+rdx*1+0xa8]
  a57b37:	a8 00 00 00 
  a57b3b:	62 03 2d 40 18 c9 01 	vinsertf32x4 zmm25,zmm26,xmm25,0x1
  a57b42:	62 e2 5d 48 7f f5    	vpermt2ps zmm22,zmm4,zmm5
  a57b48:	62 01 7c 48 28 d1    	vmovaps zmm26,zmm25
  a57b4e:	62 62 5d 48 7f d5    	vpermt2ps zmm26,zmm4,zmm5
  a57b54:	62 62 3d 48 7f cd    	vpermt2ps zmm25,zmm8,zmm5
  a57b5a:	62 62 5d 48 7f c5    	vpermt2ps zmm24,zmm4,zmm5
  a57b60:	62 21 64 40 58 df    	vaddps zmm27,zmm19,zmm23
  a57b66:	62 a1 64 40 5c df    	vsubps zmm19,zmm19,zmm23
  a57b6c:	62 a1 04 48 58 fd    	vaddps zmm23,zmm15,zmm21
  a57b72:	62 31 04 48 5c fd    	vsubps zmm15,zmm15,zmm21
  a57b78:	62 81 6c 40 58 e9    	vaddps zmm21,zmm18,zmm25
  a57b7e:	62 81 6c 40 5c d1    	vsubps zmm18,zmm18,zmm25
  a57b84:	62 21 0c 48 58 ce    	vaddps zmm25,zmm14,zmm22
  a57b8a:	62 31 0c 48 5c f6    	vsubps zmm14,zmm14,zmm22
  a57b90:	62 81 74 40 58 f2    	vaddps zmm22,zmm17,zmm26
  a57b96:	62 81 74 40 5c ca    	vsubps zmm17,zmm17,zmm26
  a57b9c:	62 21 14 48 58 d4    	vaddps zmm26,zmm13,zmm20
  a57ba2:	62 31 14 48 5c ec    	vsubps zmm13,zmm13,zmm20
  a57ba8:	62 a1 24 48 58 e0    	vaddps zmm20,zmm11,zmm16
  a57bae:	62 31 24 48 5c d8    	vsubps zmm11,zmm11,zmm16
  a57bb4:	62 c1 0c 48 58 c7    	vaddps zmm16,zmm14,zmm15
  a57bba:	62 51 04 48 5c f6    	vsubps zmm14,zmm15,zmm14
  a57bc0:	62 31 6c 40 5c f9    	vsubps zmm15,zmm18,zmm17
  a57bc6:	62 a1 74 40 58 ca    	vaddps zmm17,zmm17,zmm18
  a57bcc:	62 81 1c 48 58 d0    	vaddps zmm18,zmm12,zmm24
  a57bd2:	62 51 3c 40 5c e4    	vsubps zmm12,zmm24,zmm12
  a57bd8:	62 21 44 40 58 c5    	vaddps zmm24,zmm23,zmm21
  a57bde:	62 a1 44 40 5c ed    	vsubps zmm21,zmm23,zmm21
  a57be4:	62 a1 2c 40 58 fa    	vaddps zmm23,zmm26,zmm18
  a57bea:	62 21 2c 40 5c d2    	vsubps zmm26,zmm26,zmm18
  a57bf0:	62 81 5c 40 58 d3    	vaddps zmm18,zmm20,zmm27
  a57bf6:	62 81 5c 40 5c e3    	vsubps zmm20,zmm20,zmm27
  a57bfc:	62 21 34 40 58 de    	vaddps zmm27,zmm25,zmm22
  a57c02:	62 81 4c 40 5c f1    	vsubps zmm22,zmm22,zmm25
  a57c08:	62 21 14 48 58 cb    	vaddps zmm25,zmm13,zmm19
  a57c0e:	62 e1 7c 40 59 c6    	vmulps zmm16,zmm16,zmm6
  a57c14:	62 71 04 48 59 fe    	vmulps zmm15,zmm15,zmm6
  a57c1a:	62 71 0c 48 59 f6    	vmulps zmm14,zmm14,zmm6
  a57c20:	62 e1 74 40 59 ce    	vmulps zmm17,zmm17,zmm6
  a57c26:	62 a1 14 48 5c db    	vsubps zmm19,zmm13,zmm19
  a57c2c:	62 21 0c 48 5c e1    	vsubps zmm28,zmm14,zmm17
  a57c32:	62 21 0c 48 58 e9    	vaddps zmm29,zmm14,zmm17
  a57c38:	62 c1 1c 48 58 cb    	vaddps zmm17,zmm12,zmm11
  a57c3e:	62 41 24 48 5c f4    	vsubps zmm30,zmm11,zmm12
  a57c44:	62 51 7c 40 58 e7    	vaddps zmm12,zmm16,zmm15
  a57c4a:	62 a1 04 48 5c c0    	vsubps zmm16,zmm15,zmm16
  a57c50:	62 11 6c 40 58 d8    	vaddps zmm11,zmm18,zmm24
  a57c56:	62 81 6c 40 5c d0    	vsubps zmm18,zmm18,zmm24
  a57c5c:	62 01 44 40 58 c3    	vaddps zmm24,zmm23,zmm27
  a57c62:	62 81 44 40 5c fb    	vsubps zmm23,zmm23,zmm27
  a57c68:	62 21 2c 40 58 dd    	vaddps zmm27,zmm26,zmm21
  a57c6e:	62 a1 2c 40 5c ed    	vsubps zmm21,zmm26,zmm21
  a57c74:	62 51 34 40 58 f4    	vaddps zmm14,zmm25,zmm12
  a57c7a:	62 41 34 40 5c cc    	vsubps zmm25,zmm25,zmm12
  a57c80:	62 31 4c 40 58 ec    	vaddps zmm13,zmm22,zmm20
  a57c86:	62 a1 5c 40 5c e6    	vsubps zmm20,zmm20,zmm22
  a57c8c:	62 11 74 40 58 e4    	vaddps zmm12,zmm17,zmm28
  a57c92:	62 81 74 40 5c f4    	vsubps zmm22,zmm17,zmm28
  a57c98:	62 81 64 40 58 cd    	vaddps zmm17,zmm19,zmm29
  a57c9e:	62 01 64 40 5c d5    	vsubps zmm26,zmm19,zmm29
  a57ca4:	62 31 0c 40 58 f8    	vaddps zmm15,zmm30,zmm16
  a57caa:	62 a1 0c 40 5c d8    	vsubps zmm19,zmm30,zmm16
  a57cb0:	62 62 7d 48 7f c5    	vpermt2ps zmm24,zmm0,zmm5
  a57cb6:	62 e2 7d 48 7f fd    	vpermt2ps zmm23,zmm0,zmm5
  a57cbc:	62 22 75 48 7f c7    	vpermt2ps zmm24,zmm1,zmm23
  a57cc2:	62 72 7d 48 7f f5    	vpermt2ps zmm14,zmm0,zmm5
  a57cc8:	62 62 7d 48 7f cd    	vpermt2ps zmm25,zmm0,zmm5
  a57cce:	62 12 75 48 7f f1    	vpermt2ps zmm14,zmm1,zmm25
  a57cd4:	62 62 7d 48 7f dd    	vpermt2ps zmm27,zmm0,zmm5
  a57cda:	62 e2 7d 48 7f ed    	vpermt2ps zmm21,zmm0,zmm5
  a57ce0:	62 22 75 48 7f dd    	vpermt2ps zmm27,zmm1,zmm21
  a57ce6:	62 e2 7d 48 7f cd    	vpermt2ps zmm17,zmm0,zmm5
  a57cec:	62 62 7d 48 7f d5    	vpermt2ps zmm26,zmm0,zmm5
  a57cf2:	62 82 75 48 7f ca    	vpermt2ps zmm17,zmm1,zmm26
  a57cf8:	62 81 bd 40 14 eb    	vunpcklpd zmm21,zmm24,zmm27
  a57cfe:	62 81 bd 40 15 c3    	vunpckhpd zmm16,zmm24,zmm27
  a57d04:	62 72 7d 48 7f dd    	vpermt2ps zmm11,zmm0,zmm5
  a57d0a:	62 e2 7d 48 7f d5    	vpermt2ps zmm18,zmm0,zmm5
  a57d10:	62 32 75 48 7f da    	vpermt2ps zmm11,zmm1,zmm18
  a57d16:	62 72 7d 48 7f e5    	vpermt2ps zmm12,zmm0,zmm5
  a57d1c:	62 72 7d 48 7f ed    	vpermt2ps zmm13,zmm0,zmm5
  a57d22:	62 e2 7d 48 7f f5    	vpermt2ps zmm22,zmm0,zmm5
  a57d28:	62 e2 7d 48 7f e5    	vpermt2ps zmm20,zmm0,zmm5
  a57d2e:	62 32 75 48 7f e6    	vpermt2ps zmm12,zmm1,zmm22
  a57d34:	62 32 75 48 7f ec    	vpermt2ps zmm13,zmm1,zmm20
  a57d3a:	62 a1 8d 48 14 d1    	vunpcklpd zmm18,zmm14,zmm17
  a57d40:	62 a1 7c 48 28 e5    	vmovaps zmm20,zmm21
  a57d46:	62 72 7d 48 7f fd    	vpermt2ps zmm15,zmm0,zmm5
  a57d4c:	62 e2 7d 48 7f dd    	vpermt2ps zmm19,zmm0,zmm5
  a57d52:	62 31 8d 48 15 f1    	vunpckhpd zmm14,zmm14,zmm17
  a57d58:	62 32 75 48 7f fb    	vpermt2ps zmm15,zmm1,zmm19
  a57d5e:	62 c1 a5 48 14 cd    	vunpcklpd zmm17,zmm11,zmm13
  a57d64:	62 51 a5 48 15 dd    	vunpckhpd zmm11,zmm11,zmm13
  a57d6a:	62 a2 65 48 7f ea    	vpermt2ps zmm21,zmm3,zmm18
  a57d70:	62 51 9d 48 14 ef    	vunpcklpd zmm13,zmm12,zmm15
  a57d76:	62 51 9d 48 15 e7    	vunpckhpd zmm12,zmm12,zmm15
  a57d7c:	62 31 7c 48 28 f9    	vmovaps zmm15,zmm17
  a57d82:	62 c2 6d 48 7f c6    	vpermt2ps zmm16,zmm2,zmm14
  a57d88:	62 c2 65 48 7f cd    	vpermt2ps zmm17,zmm3,zmm13
  a57d8e:	62 71 7c 48 10 71 02 	vmovups zmm14,ZMMWORD PTR [rcx+0x80]
  a57d95:	62 e1 7c 48 10 59 03 	vmovups zmm19,ZMMWORD PTR [rcx+0xc0]
  a57d9c:	62 52 6d 48 7f dc    	vpermt2ps zmm11,zmm2,zmm12
  a57da2:	62 51 54 40 59 e6    	vmulps zmm12,zmm21,zmm14
  a57da8:	62 32 75 40 bc e3    	vfnmadd231ps zmm12,zmm17,zmm19
  a57dae:	62 51 74 40 59 f6    	vmulps zmm14,zmm17,zmm14
  a57db4:	62 e1 7c 48 10 49 04 	vmovups zmm17,ZMMWORD PTR [rcx+0x100]
  a57dbb:	62 32 65 40 b8 f5    	vfmadd231ps zmm14,zmm19,zmm21
  a57dc1:	62 e1 7c 48 10 59 05 	vmovups zmm19,ZMMWORD PTR [rcx+0x140]
  a57dc8:	62 a1 7c 40 59 e9    	vmulps zmm21,zmm16,zmm17
  a57dce:	62 a2 25 48 bc eb    	vfnmadd231ps zmm21,zmm11,zmm19
  a57dd4:	62 31 24 48 59 d9    	vmulps zmm11,zmm11,zmm17
  a57dda:	62 32 65 40 b8 d8    	vfmadd231ps zmm11,zmm19,zmm16
  a57de0:	62 a2 6d 48 7f e2    	vpermt2ps zmm20,zmm2,zmm18
  a57de6:	62 52 6d 48 7f fd    	vpermt2ps zmm15,zmm2,zmm13
  a57dec:	62 51 0c 48 58 eb    	vaddps zmm13,zmm14,zmm11
  a57df2:	62 e1 7c 48 28 c7    	vmovaps zmm16,zmm7
  a57df8:	62 51 0c 48 5c db    	vsubps zmm11,zmm14,zmm11
  a57dfe:	62 31 1c 48 58 f5    	vaddps zmm14,zmm12,zmm21
  a57e04:	62 a2 0d 48 ac c4    	vfnmadd213ps zmm16,zmm14,zmm20
  a57e0a:	62 51 24 48 59 d9    	vmulps zmm11,zmm11,zmm9
  a57e10:	62 31 1c 48 5c e5    	vsubps zmm12,zmm12,zmm21
  a57e16:	62 c1 7c 40 58 cb    	vaddps zmm17,zmm16,zmm11
  a57e1c:	62 51 7c 40 5c db    	vsubps zmm11,zmm16,zmm11
  a57e22:	62 51 5c 40 58 f6    	vaddps zmm14,zmm20,zmm14
  a57e28:	62 e1 7c 48 28 c7    	vmovaps zmm16,zmm7
  a57e2e:	62 c2 15 48 ac c7    	vfnmadd213ps zmm16,zmm13,zmm15
  a57e34:	62 51 1c 48 59 e1    	vmulps zmm12,zmm12,zmm9
  a57e3a:	62 51 04 48 58 ed    	vaddps zmm13,zmm15,zmm13
  a57e40:	62 51 7c 40 5c fc    	vsubps zmm15,zmm16,zmm12
  a57e46:	62 51 7c 40 58 e4    	vaddps zmm12,zmm16,zmm12
  a57e4c:	62 52 2d 48 7f f5    	vpermt2ps zmm14,zmm10,zmm13
  a57e52:	62 71 7c 48 11 34 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm14
  a57e59:	62 c2 2d 48 7f cf    	vpermt2ps zmm17,zmm10,zmm15
  a57e5f:	62 e1 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x40],zmm17
  a57e66:	01 
  a57e67:	62 52 2d 48 7f dc    	vpermt2ps zmm11,zmm10,zmm12
  a57e6d:	62 71 7c 48 11 5c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x80],zmm11
  a57e74:	02 
  a57e75:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  a57e7c:	48 39 d0             	cmp    rax,rdx
  a57e7f:	0f 85 8b fb ff ff    	jne    a57a10 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x90>
  a57e85:	48 89 ec             	mov    rsp,rbp
  a57e88:	5d                   	pop    rbp
  a57e89:	c5 f8 77             	vzeroupper
  a57e8c:	c3                   	ret
