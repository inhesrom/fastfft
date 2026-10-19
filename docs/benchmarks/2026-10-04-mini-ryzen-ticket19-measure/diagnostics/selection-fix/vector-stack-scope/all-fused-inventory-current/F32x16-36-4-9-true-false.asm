
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a5da40 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a5da40:	55                   	push   rbp
  a5da41:	48 89 e5             	mov    rbp,rsp
  a5da44:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a5da48:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  a5da4f:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  a5da54:	48 8d 44 24 40       	lea    rax,[rsp+0x40]
  a5da59:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  a5da5e:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  a5da63:	62 f1 7c 48 10 07    	vmovups zmm0,ZMMWORD PTR [rdi]
  a5da69:	c5 fb 10 4f 40       	vmovsd xmm1,QWORD PTR [rdi+0x40]
  a5da6e:	62 f1 7c 48 28 15 88 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff635a88]        # 93500 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x209b0>
  a5da75:	5a 63 ff 
  a5da78:	62 f1 7c 48 28 d8    	vmovaps zmm3,zmm0
  a5da7e:	62 f2 6d 48 7f d9    	vpermt2ps zmm3,zmm2,zmm1
  a5da84:	62 f1 7c 48 28 25 b2 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff635ab2]        # 93540 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x209f0>
  a5da8b:	5a 63 ff 
  a5da8e:	62 f2 5d 48 7f c1    	vpermt2ps zmm0,zmm4,zmm1
  a5da94:	62 f1 7c 48 10 8f 48 	vmovups zmm1,ZMMWORD PTR [rdi+0x48]
  a5da9b:	00 00 00 
  a5da9e:	c5 fb 10 af 88 00 00 	vmovsd xmm5,QWORD PTR [rdi+0x88]
  a5daa5:	00 
  a5daa6:	62 f1 7c 48 28 f1    	vmovaps zmm6,zmm1
  a5daac:	62 f2 6d 48 7f f5    	vpermt2ps zmm6,zmm2,zmm5
  a5dab2:	62 f2 5d 48 7f cd    	vpermt2ps zmm1,zmm4,zmm5
  a5dab8:	62 f1 7c 48 10 bf 90 	vmovups zmm7,ZMMWORD PTR [rdi+0x90]
  a5dabf:	00 00 00 
  a5dac2:	c5 fb 10 af d0 00 00 	vmovsd xmm5,QWORD PTR [rdi+0xd0]
  a5dac9:	00 
  a5daca:	62 71 7c 48 28 c7    	vmovaps zmm8,zmm7
  a5dad0:	62 72 6d 48 7f c5    	vpermt2ps zmm8,zmm2,zmm5
  a5dad6:	62 f2 5d 48 7f fd    	vpermt2ps zmm7,zmm4,zmm5
  a5dadc:	62 71 7c 48 10 8f d8 	vmovups zmm9,ZMMWORD PTR [rdi+0xd8]
  a5dae3:	00 00 00 
  a5dae6:	c5 fb 10 af 18 01 00 	vmovsd xmm5,QWORD PTR [rdi+0x118]
  a5daed:	00 
  a5daee:	62 f2 35 48 77 d5    	vpermi2ps zmm2,zmm9,zmm5
  a5daf4:	62 72 5d 48 7f cd    	vpermt2ps zmm9,zmm4,zmm5
  a5dafa:	62 f1 7c 48 58 e7    	vaddps zmm4,zmm0,zmm7
  a5db00:	62 51 74 48 58 d9    	vaddps zmm11,zmm1,zmm9
  a5db06:	62 c1 5c 48 58 db    	vaddps zmm19,zmm4,zmm11
  a5db0c:	62 51 64 48 58 e0    	vaddps zmm12,zmm3,zmm8
  a5db12:	62 71 4c 48 58 ea    	vaddps zmm13,zmm6,zmm2
  a5db18:	62 d1 1c 48 58 ed    	vaddps zmm5,zmm12,zmm13
  a5db1e:	62 f1 7c 48 5c c7    	vsubps zmm0,zmm0,zmm7
  a5db24:	62 f1 4c 48 5c d2    	vsubps zmm2,zmm6,zmm2
  a5db2a:	62 f1 7c 48 58 f2    	vaddps zmm6,zmm0,zmm2
  a5db30:	62 d1 64 48 5c d8    	vsubps zmm3,zmm3,zmm8
  a5db36:	62 f1 34 48 5c c9    	vsubps zmm1,zmm9,zmm1
  a5db3c:	62 71 74 48 58 d3    	vaddps zmm10,zmm1,zmm3
  a5db42:	62 d1 5c 48 5c e3    	vsubps zmm4,zmm4,zmm11
  a5db48:	62 51 1c 48 5c ed    	vsubps zmm13,zmm12,zmm13
  a5db4e:	62 f1 7c 48 5c c2    	vsubps zmm0,zmm0,zmm2
  a5db54:	62 71 64 48 5c e1    	vsubps zmm12,zmm3,zmm1
  a5db5a:	62 f1 7c 48 28 0d 1c 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff66941c]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a5db61:	94 66 ff 
  a5db64:	62 a1 7c 00 57 c0    	vxorps xmm16,xmm16,xmm16
  a5db6a:	62 31 7c 48 28 c3    	vmovaps zmm8,zmm19
  a5db70:	62 32 75 48 7f c0    	vpermt2ps zmm8,zmm1,zmm16
  a5db76:	62 e1 7c 48 28 15 40 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff669440]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a5db7d:	94 66 ff 
  a5db80:	62 a2 6d 40 7f d8    	vpermt2ps zmm19,zmm18,zmm16
  a5db86:	62 71 7c 48 28 de    	vmovaps zmm11,zmm6
  a5db8c:	62 32 75 48 7f d8    	vpermt2ps zmm11,zmm1,zmm16
  a5db92:	62 b2 6d 40 7f f0    	vpermt2ps zmm6,zmm18,zmm16
  a5db98:	62 e1 7c 48 28 ec    	vmovaps zmm21,zmm4
  a5db9e:	62 a2 75 48 7f e8    	vpermt2ps zmm21,zmm1,zmm16
  a5dba4:	62 b2 6d 40 7f e0    	vpermt2ps zmm4,zmm18,zmm16
  a5dbaa:	62 e1 7c 48 28 f0    	vmovaps zmm22,zmm0
  a5dbb0:	62 a2 75 48 7f f0    	vpermt2ps zmm22,zmm1,zmm16
  a5dbb6:	62 b2 6d 40 7f c0    	vpermt2ps zmm0,zmm18,zmm16
  a5dbbc:	62 a1 74 00 57 c9    	vxorps xmm17,xmm17,xmm17
  a5dbc2:	62 a2 75 48 7f c9    	vpermt2ps zmm17,zmm1,zmm17
  a5dbc8:	c4 41 08 57 f6       	vxorps xmm14,xmm14,xmm14
  a5dbcd:	62 52 6d 40 7f f6    	vpermt2ps zmm14,zmm18,zmm14
  a5dbd3:	62 71 7c 48 28 3d 23 	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff669323]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a5dbda:	93 66 ff 
  a5dbdd:	62 d1 7c 48 28 d8    	vmovaps zmm3,zmm8
  a5dbe3:	62 b2 05 48 7f d9    	vpermt2ps zmm3,zmm15,zmm17
  a5dbe9:	62 e1 7c 48 28 25 4d 	vmovaps zmm20,ZMMWORD PTR [rip+0xffffffffff66934d]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a5dbf0:	93 66 ff 
  a5dbf3:	62 32 5d 40 7f c1    	vpermt2ps zmm8,zmm20,zmm17
  a5dbf9:	62 c1 7c 48 28 fb    	vmovaps zmm23,zmm11
  a5dbff:	62 a2 05 48 7f f9    	vpermt2ps zmm23,zmm15,zmm17
  a5dc05:	62 32 5d 40 7f d9    	vpermt2ps zmm11,zmm20,zmm17
  a5dc0b:	62 31 7c 48 28 cd    	vmovaps zmm9,zmm21
  a5dc11:	62 32 05 48 7f c9    	vpermt2ps zmm9,zmm15,zmm17
  a5dc17:	62 a2 5d 40 7f e9    	vpermt2ps zmm21,zmm20,zmm17
  a5dc1d:	62 21 7c 48 28 c6    	vmovaps zmm24,zmm22
  a5dc23:	62 22 05 48 7f c1    	vpermt2ps zmm24,zmm15,zmm17
  a5dc29:	62 a2 5d 40 7f f1    	vpermt2ps zmm22,zmm20,zmm17
  a5dc2f:	62 c2 05 48 7f de    	vpermt2ps zmm19,zmm15,zmm14
  a5dc35:	62 d2 05 48 7f f6    	vpermt2ps zmm6,zmm15,zmm14
  a5dc3b:	62 d2 05 48 7f e6    	vpermt2ps zmm4,zmm15,zmm14
  a5dc41:	62 f1 e5 40 14 d4    	vunpcklpd zmm2,zmm19,zmm4
  a5dc47:	62 d2 05 48 7f c6    	vpermt2ps zmm0,zmm15,zmm14
  a5dc4d:	62 61 cd 48 14 c8    	vunpcklpd zmm25,zmm6,zmm0
  a5dc53:	62 d1 e5 48 14 f9    	vunpcklpd zmm7,zmm3,zmm9
  a5dc59:	62 51 e5 48 15 c9    	vunpckhpd zmm9,zmm3,zmm9
  a5dc5f:	62 91 c5 40 14 f0    	vunpcklpd zmm6,zmm23,zmm24
  a5dc65:	62 81 c5 40 15 f8    	vunpckhpd zmm23,zmm23,zmm24
  a5dc6b:	62 b1 bd 48 14 dd    	vunpcklpd zmm3,zmm8,zmm21
  a5dc71:	62 b1 bd 48 15 e5    	vunpckhpd zmm4,zmm8,zmm21
  a5dc77:	62 21 a5 48 14 c6    	vunpcklpd zmm24,zmm11,zmm22
  a5dc7d:	62 a1 a5 48 15 f6    	vunpckhpd zmm22,zmm11,zmm22
  a5dc83:	62 e1 7c 48 28 1d 73 	vmovaps zmm19,ZMMWORD PTR [rip+0xffffffffff669173]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a5dc8a:	91 66 ff 
  a5dc8d:	62 f1 7c 48 28 c7    	vmovaps zmm0,zmm7
  a5dc93:	62 f2 65 40 7f c6    	vpermt2ps zmm0,zmm19,zmm6
  a5dc99:	62 e1 7c 48 28 2d 9d 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff66919d]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a5dca0:	91 66 ff 
  a5dca3:	62 f2 55 40 7f fe    	vpermt2ps zmm7,zmm21,zmm6
  a5dca9:	62 d1 7c 48 28 f1    	vmovaps zmm6,zmm9
  a5dcaf:	62 b2 65 40 7f f7    	vpermt2ps zmm6,zmm19,zmm23
  a5dcb5:	62 32 55 40 7f cf    	vpermt2ps zmm9,zmm21,zmm23
  a5dcbb:	62 71 7c 48 28 c3    	vmovaps zmm8,zmm3
  a5dcc1:	62 12 65 40 7f c0    	vpermt2ps zmm8,zmm19,zmm24
  a5dcc7:	62 92 55 40 7f d8    	vpermt2ps zmm3,zmm21,zmm24
  a5dccd:	62 71 7c 48 28 dc    	vmovaps zmm11,zmm4
  a5dcd3:	62 32 65 40 7f de    	vpermt2ps zmm11,zmm19,zmm22
  a5dcd9:	62 b2 55 40 7f e6    	vpermt2ps zmm4,zmm21,zmm22
  a5dcdf:	62 92 65 40 7f d1    	vpermt2ps zmm2,zmm19,zmm25
  a5dce5:	62 e1 7c 48 28 f5    	vmovaps zmm22,zmm5
  a5dceb:	62 a2 75 48 7f f0    	vpermt2ps zmm22,zmm1,zmm16
  a5dcf1:	62 b2 6d 40 7f e8    	vpermt2ps zmm5,zmm18,zmm16
  a5dcf7:	62 c1 7c 48 28 fa    	vmovaps zmm23,zmm10
  a5dcfd:	62 a2 75 48 7f f8    	vpermt2ps zmm23,zmm1,zmm16
  a5dd03:	62 32 6d 40 7f d0    	vpermt2ps zmm10,zmm18,zmm16
  a5dd09:	62 41 7c 48 28 c5    	vmovaps zmm24,zmm13
  a5dd0f:	62 22 75 48 7f c0    	vpermt2ps zmm24,zmm1,zmm16
  a5dd15:	62 32 6d 40 7f e8    	vpermt2ps zmm13,zmm18,zmm16
  a5dd1b:	62 b2 1d 48 77 c8    	vpermi2ps zmm1,zmm12,zmm16
  a5dd21:	62 32 6d 40 7f e0    	vpermt2ps zmm12,zmm18,zmm16
  a5dd27:	62 a1 7c 48 28 c6    	vmovaps zmm16,zmm22
  a5dd2d:	62 a2 05 48 7f c1    	vpermt2ps zmm16,zmm15,zmm17
  a5dd33:	62 a2 5d 40 7f f1    	vpermt2ps zmm22,zmm20,zmm17
  a5dd39:	62 21 7c 48 28 cf    	vmovaps zmm25,zmm23
  a5dd3f:	62 22 05 48 7f c9    	vpermt2ps zmm25,zmm15,zmm17
  a5dd45:	62 a2 5d 40 7f f9    	vpermt2ps zmm23,zmm20,zmm17
  a5dd4b:	62 01 7c 48 28 d0    	vmovaps zmm26,zmm24
  a5dd51:	62 22 05 48 7f d1    	vpermt2ps zmm26,zmm15,zmm17
  a5dd57:	62 22 5d 40 7f c1    	vpermt2ps zmm24,zmm20,zmm17
  a5dd5d:	62 61 7c 48 28 d9    	vmovaps zmm27,zmm1
  a5dd63:	62 22 05 48 7f d9    	vpermt2ps zmm27,zmm15,zmm17
  a5dd69:	62 b2 5d 40 7f c9    	vpermt2ps zmm1,zmm20,zmm17
  a5dd6f:	62 d2 05 48 7f ee    	vpermt2ps zmm5,zmm15,zmm14
  a5dd75:	62 52 05 48 7f d6    	vpermt2ps zmm10,zmm15,zmm14
  a5dd7b:	62 52 05 48 7f ee    	vpermt2ps zmm13,zmm15,zmm14
  a5dd81:	62 51 d5 48 14 ed    	vunpcklpd zmm13,zmm5,zmm13
  a5dd87:	62 52 05 48 7f e6    	vpermt2ps zmm12,zmm15,zmm14
  a5dd8d:	62 d1 ad 48 14 ec    	vunpcklpd zmm5,zmm10,zmm12
  a5dd93:	62 81 fd 40 14 d2    	vunpcklpd zmm18,zmm16,zmm26
  a5dd99:	62 11 fd 40 15 d2    	vunpckhpd zmm10,zmm16,zmm26
  a5dd9f:	62 11 b5 40 14 e3    	vunpcklpd zmm12,zmm25,zmm27
  a5dda5:	62 81 b5 40 15 cb    	vunpckhpd zmm17,zmm25,zmm27
  a5ddab:	62 11 cd 40 14 f0    	vunpcklpd zmm14,zmm22,zmm24
  a5ddb1:	62 81 cd 40 15 c0    	vunpckhpd zmm16,zmm22,zmm24
  a5ddb7:	62 e1 c5 40 14 e1    	vunpcklpd zmm20,zmm23,zmm1
  a5ddbd:	62 e1 c5 40 15 f9    	vunpckhpd zmm23,zmm23,zmm1
  a5ddc3:	62 b1 7c 48 28 ca    	vmovaps zmm1,zmm18
  a5ddc9:	62 d2 65 40 7f cc    	vpermt2ps zmm1,zmm19,zmm12
  a5ddcf:	62 c2 55 40 7f d4    	vpermt2ps zmm18,zmm21,zmm12
  a5ddd5:	62 51 7c 48 28 fa    	vmovaps zmm15,zmm10
  a5dddb:	62 32 65 40 7f f9    	vpermt2ps zmm15,zmm19,zmm17
  a5dde1:	62 32 55 40 7f d1    	vpermt2ps zmm10,zmm21,zmm17
  a5dde7:	62 c1 7c 48 28 f6    	vmovaps zmm22,zmm14
  a5dded:	62 a2 65 40 7f f4    	vpermt2ps zmm22,zmm19,zmm20
  a5ddf3:	62 32 55 40 7f f4    	vpermt2ps zmm14,zmm21,zmm20
  a5ddf9:	62 31 7c 48 28 e0    	vmovaps zmm12,zmm16
  a5ddff:	62 32 65 40 7f e7    	vpermt2ps zmm12,zmm19,zmm23
  a5de05:	62 a2 55 40 7f c7    	vpermt2ps zmm16,zmm21,zmm23
  a5de0b:	62 72 65 40 7f ed    	vpermt2ps zmm13,zmm19,zmm5
  a5de11:	62 61 7c 48 10 42 02 	vmovups zmm24,ZMMWORD PTR [rdx+0x80]
  a5de18:	62 e1 7c 48 10 7a 03 	vmovups zmm23,ZMMWORD PTR [rdx+0xc0]
  a5de1f:	62 e1 7c 48 10 62 04 	vmovups zmm20,ZMMWORD PTR [rdx+0x100]
  a5de26:	62 e1 7c 48 10 6a 05 	vmovups zmm21,ZMMWORD PTR [rdx+0x140]
  a5de2d:	62 e1 7c 48 10 4a 06 	vmovups zmm17,ZMMWORD PTR [rdx+0x180]
  a5de34:	62 61 7c 48 10 4a 07 	vmovups zmm25,ZMMWORD PTR [rdx+0x1c0]
  a5de3b:	62 61 7c 48 10 52 08 	vmovups zmm26,ZMMWORD PTR [rdx+0x200]
  a5de42:	62 e1 7c 48 10 5a 09 	vmovups zmm19,ZMMWORD PTR [rdx+0x240]
  a5de49:	62 b1 34 48 59 e9    	vmulps zmm5,zmm9,zmm17
  a5de4f:	62 92 2d 48 bc e9    	vfnmadd231ps zmm5,zmm10,zmm25
  a5de55:	62 31 2c 48 59 d1    	vmulps zmm10,zmm10,zmm17
  a5de5b:	62 e1 7c 48 10 4a 0c 	vmovups zmm17,ZMMWORD PTR [rdx+0x300]
  a5de62:	62 52 35 40 b8 d1    	vfmadd231ps zmm10,zmm25,zmm9
  a5de68:	62 61 7c 48 10 4a 0d 	vmovups zmm25,ZMMWORD PTR [rdx+0x340]
  a5de6f:	62 31 24 48 59 c9    	vmulps zmm9,zmm11,zmm17
  a5de75:	62 12 1d 48 bc c9    	vfnmadd231ps zmm9,zmm12,zmm25
  a5de7b:	62 31 1c 48 59 e1    	vmulps zmm12,zmm12,zmm17
  a5de81:	62 61 7c 48 10 5a 0a 	vmovups zmm27,ZMMWORD PTR [rdx+0x280]
  a5de88:	62 52 35 40 b8 e3    	vfmadd231ps zmm12,zmm25,zmm11
  a5de8e:	62 71 7c 48 10 5a 0b 	vmovups zmm11,ZMMWORD PTR [rdx+0x2c0]
  a5de95:	62 81 44 48 59 c8    	vmulps zmm17,zmm7,zmm24
  a5de9b:	62 a2 6d 40 bc cf    	vfnmadd231ps zmm17,zmm18,zmm23
  a5dea1:	62 81 6c 40 59 d0    	vmulps zmm18,zmm18,zmm24
  a5dea7:	62 61 7c 48 10 42 0e 	vmovups zmm24,ZMMWORD PTR [rdx+0x380]
  a5deae:	62 e2 45 40 b8 d7    	vfmadd231ps zmm18,zmm23,zmm7
  a5deb4:	62 f1 7c 48 10 7a 0f 	vmovups zmm7,ZMMWORD PTR [rdx+0x3c0]
  a5debb:	62 81 3c 48 59 fa    	vmulps zmm23,zmm8,zmm26
  a5dec1:	62 a2 4d 40 bc fb    	vfnmadd231ps zmm23,zmm22,zmm19
  a5dec7:	62 81 4c 40 59 f2    	vmulps zmm22,zmm22,zmm26
  a5decd:	62 61 7c 48 10 4a 10 	vmovups zmm25,ZMMWORD PTR [rdx+0x400]
  a5ded4:	62 c2 65 40 b8 f0    	vfmadd231ps zmm22,zmm19,zmm8
  a5deda:	62 71 7c 48 10 42 11 	vmovups zmm8,ZMMWORD PTR [rdx+0x440]
  a5dee1:	62 01 5c 48 59 d0    	vmulps zmm26,zmm4,zmm24
  a5dee7:	62 62 7d 40 bc d7    	vfnmadd231ps zmm26,zmm16,zmm7
  a5deed:	62 81 7c 40 59 c0    	vmulps zmm16,zmm16,zmm24
  a5def3:	62 01 44 40 58 c2    	vaddps zmm24,zmm23,zmm26
  a5def9:	62 e2 45 48 b8 c4    	vfmadd231ps zmm16,zmm7,zmm4
  a5deff:	62 91 74 40 58 e0    	vaddps zmm4,zmm17,zmm24
  a5df05:	62 a1 4c 48 59 dc    	vmulps zmm19,zmm6,zmm20
  a5df0b:	62 a2 05 48 bc dd    	vfnmadd231ps zmm19,zmm15,zmm21
  a5df11:	62 a1 04 48 59 e4    	vmulps zmm20,zmm15,zmm20
  a5df17:	62 11 64 48 59 fb    	vmulps zmm15,zmm3,zmm27
  a5df1d:	62 52 0d 48 bc fb    	vfnmadd231ps zmm15,zmm14,zmm11
  a5df23:	62 e2 55 40 b8 e6    	vfmadd231ps zmm20,zmm21,zmm6
  a5df29:	62 81 6c 48 59 e9    	vmulps zmm21,zmm2,zmm25
  a5df2f:	62 c2 15 48 bc e8    	vfnmadd231ps zmm21,zmm13,zmm8
  a5df35:	62 21 04 48 58 e5    	vaddps zmm28,zmm15,zmm21
  a5df3b:	62 11 0c 48 59 f3    	vmulps zmm14,zmm14,zmm27
  a5df41:	62 91 64 40 58 f4    	vaddps zmm6,zmm19,zmm28
  a5df47:	62 72 25 48 b8 f3    	vfmadd231ps zmm14,zmm11,zmm3
  a5df4d:	62 21 4c 40 58 d8    	vaddps zmm27,zmm22,zmm16
  a5df53:	62 91 6c 40 58 fb    	vaddps zmm7,zmm18,zmm27
  a5df59:	62 11 14 48 59 e9    	vmulps zmm13,zmm13,zmm25
  a5df5f:	62 72 3d 48 b8 ea    	vfmadd231ps zmm13,zmm8,zmm2
  a5df65:	62 f2 7d 48 18 15 f1 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff6174f1]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a5df6c:	74 61 ff 
  a5df6f:	62 41 0c 48 58 cd    	vaddps zmm25,zmm14,zmm13
  a5df75:	62 f2 7d 48 18 1d 55 	vbroadcastss zmm3,DWORD PTR [rip+0xffffffffff617355]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a5df7c:	73 61 ff 
  a5df7f:	62 82 6d 48 bc c8    	vfnmadd231ps zmm17,zmm2,zmm24
  a5df85:	62 11 5c 40 58 d9    	vaddps zmm11,zmm20,zmm25
  a5df8b:	62 31 4c 40 5c c0    	vsubps zmm8,zmm22,zmm16
  a5df91:	62 e1 3c 48 59 f3    	vmulps zmm22,zmm8,zmm3
  a5df97:	62 a1 74 40 58 c6    	vaddps zmm16,zmm17,zmm22
  a5df9d:	62 82 6d 48 bc d3    	vfnmadd231ps zmm18,zmm2,zmm27
  a5dfa3:	62 11 44 40 5c c2    	vsubps zmm8,zmm23,zmm26
  a5dfa9:	62 e1 3c 48 59 fb    	vmulps zmm23,zmm8,zmm3
  a5dfaf:	62 21 6c 40 5c c7    	vsubps zmm24,zmm18,zmm23
  a5dfb5:	62 62 7d 48 18 15 a9 	vbroadcastss zmm26,DWORD PTR [rip+0xffffffffff6176a9]        # 75668 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b18>
  a5dfbc:	76 61 ff 
  a5dfbf:	62 82 6d 48 bc dc    	vfnmadd231ps zmm19,zmm2,zmm28
  a5dfc5:	62 11 3c 40 59 c2    	vmulps zmm8,zmm24,zmm26
  a5dfcb:	62 51 0c 48 5c ed    	vsubps zmm13,zmm14,zmm13
  a5dfd1:	62 72 7d 48 18 35 fd 	vbroadcastss zmm14,DWORD PTR [rip+0xffffffffff6174fd]        # 754d8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2988>
  a5dfd8:	74 61 ff 
  a5dfdb:	62 52 7d 40 b8 c6    	vfmadd231ps zmm8,zmm16,zmm14
  a5dfe1:	62 71 14 48 59 eb    	vmulps zmm13,zmm13,zmm3
  a5dfe7:	62 82 6d 48 bc e1    	vfnmadd231ps zmm20,zmm2,zmm25
  a5dfed:	62 41 64 40 58 cd    	vaddps zmm25,zmm19,zmm13
  a5dff3:	62 31 04 48 5c fd    	vsubps zmm15,zmm15,zmm21
  a5dff9:	62 e1 04 48 59 eb    	vmulps zmm21,zmm15,zmm3
  a5dfff:	62 62 7d 48 18 1d 0f 	vbroadcastss zmm27,DWORD PTR [rip+0xffffffffff61730f]        # 75318 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x27c8>
  a5e006:	73 61 ff 
  a5e009:	62 51 3c 40 59 fe    	vmulps zmm15,zmm24,zmm14
  a5e00f:	62 21 5c 40 5c c5    	vsubps zmm24,zmm20,zmm21
  a5e015:	62 12 7d 40 bc fa    	vfnmadd231ps zmm15,zmm16,zmm26
  a5e01b:	62 62 7d 48 18 15 b7 	vbroadcastss zmm26,DWORD PTR [rip+0xffffffffff6174b7]        # 754dc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x298c>
  a5e022:	74 61 ff 
  a5e025:	62 11 3c 40 59 f3    	vmulps zmm14,zmm24,zmm27
  a5e02b:	62 12 35 40 b8 f2    	vfmadd231ps zmm14,zmm25,zmm26
  a5e031:	62 81 3c 40 59 c2    	vmulps zmm16,zmm24,zmm26
  a5e037:	62 82 25 40 bc c1    	vfnmadd231ps zmm16,zmm27,zmm25
  a5e03d:	62 a1 74 40 5c ce    	vsubps zmm17,zmm17,zmm22
  a5e043:	62 a1 6c 40 58 d7    	vaddps zmm18,zmm18,zmm23
  a5e049:	62 c1 54 48 58 f1    	vaddps zmm22,zmm5,zmm9
  a5e04f:	62 c1 64 40 5c fd    	vsubps zmm23,zmm19,zmm13
  a5e055:	62 21 7c 48 58 c6    	vaddps zmm24,zmm0,zmm22
  a5e05b:	62 a1 5c 40 58 dd    	vaddps zmm19,zmm20,zmm21
  a5e061:	62 11 6c 40 59 eb    	vmulps zmm13,zmm18,zmm27
  a5e067:	62 12 75 40 b8 ea    	vfmadd231ps zmm13,zmm17,zmm26
  a5e06d:	62 81 6c 40 59 d2    	vmulps zmm18,zmm18,zmm26
  a5e073:	62 e2 7d 48 18 25 73 	vbroadcastss zmm20,DWORD PTR [rip+0xffffffffff617473]        # 754f0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x29a0>
  a5e07a:	74 61 ff 
  a5e07d:	62 82 75 40 bc d3    	vfnmadd231ps zmm18,zmm17,zmm27
  a5e083:	62 a1 64 40 59 cc    	vmulps zmm17,zmm19,zmm20
  a5e089:	62 e2 7d 48 18 2d 65 	vbroadcastss zmm21,DWORD PTR [rip+0xffffffffff617565]        # 755f8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2aa8>
  a5e090:	75 61 ff 
  a5e093:	62 a2 45 40 bc cd    	vfnmadd231ps zmm17,zmm23,zmm21
  a5e099:	62 a1 64 40 59 dd    	vmulps zmm19,zmm19,zmm21
  a5e09f:	62 e1 5c 48 58 ee    	vaddps zmm21,zmm4,zmm6
  a5e0a5:	62 a2 45 40 b8 dc    	vfmadd231ps zmm19,zmm23,zmm20
  a5e0ab:	62 c1 2c 48 58 e4    	vaddps zmm20,zmm10,zmm12
  a5e0b1:	62 e1 5c 40 58 f9    	vaddps zmm23,zmm20,zmm1
  a5e0b7:	62 b2 6d 48 bc c6    	vfnmadd231ps zmm0,zmm2,zmm22
  a5e0bd:	62 c1 44 48 58 f3    	vaddps zmm22,zmm7,zmm11
  a5e0c3:	62 51 2c 48 5c d4    	vsubps zmm10,zmm10,zmm12
  a5e0c9:	62 71 2c 48 59 d3    	vmulps zmm10,zmm10,zmm3
  a5e0cf:	62 41 7c 48 58 ca    	vaddps zmm25,zmm0,zmm10
  a5e0d5:	62 b2 6d 48 bc cc    	vfnmadd231ps zmm1,zmm2,zmm20
  a5e0db:	62 c1 3c 48 58 e6    	vaddps zmm20,zmm8,zmm14
  a5e0e1:	62 d1 54 48 5c e9    	vsubps zmm5,zmm5,zmm9
  a5e0e7:	62 f1 54 48 59 eb    	vmulps zmm5,zmm5,zmm3
  a5e0ed:	62 61 74 48 5c d5    	vsubps zmm26,zmm1,zmm5
  a5e0f3:	62 41 7c 48 5c da    	vsubps zmm27,zmm0,zmm10
  a5e0f9:	62 31 04 48 58 d0    	vaddps zmm10,zmm15,zmm16
  a5e0ff:	62 61 54 48 58 e1    	vaddps zmm28,zmm5,zmm1
  a5e105:	62 f1 7c 48 28 c2    	vmovaps zmm0,zmm2
  a5e10b:	62 92 55 40 ac c0    	vfnmadd213ps zmm0,zmm21,zmm24
  a5e111:	62 31 3c 20 58 e5    	vaddps ymm12,ymm24,ymm21
  a5e117:	62 71 7c 48 28 ca    	vmovaps zmm9,zmm2
  a5e11d:	62 32 4d 40 ac cf    	vfnmadd213ps zmm9,zmm22,zmm23
  a5e123:	62 b1 44 00 58 ce    	vaddps xmm1,xmm23,xmm22
  a5e129:	c5 fc 28 2d af 90 61 	vmovaps ymm5,YMMWORD PTR [rip+0xffffffffff6190af]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  a5e130:	ff 
  a5e131:	62 d2 55 28 7f cc    	vpermt2ps ymm1,ymm5,ymm12
  a5e137:	62 71 7c 48 28 e2    	vmovaps zmm12,zmm2
  a5e13d:	62 12 5d 40 ac e1    	vfnmadd213ps zmm12,zmm20,zmm25
  a5e143:	62 a1 34 20 58 ec    	vaddps ymm21,ymm25,ymm20
  a5e149:	62 e1 7c 48 28 e2    	vmovaps zmm20,zmm2
  a5e14f:	62 82 2d 48 ac e2    	vfnmadd213ps zmm20,zmm10,zmm26
  a5e155:	62 51 2c 00 58 d2    	vaddps xmm10,xmm26,xmm10
  a5e15b:	62 a1 14 48 58 f1    	vaddps zmm22,zmm13,zmm17
  a5e161:	62 32 55 28 7f d5    	vpermt2ps ymm10,ymm5,ymm21
  a5e167:	62 e1 7c 48 28 ea    	vmovaps zmm21,zmm2
  a5e16d:	62 82 4d 40 ac eb    	vfnmadd213ps zmm21,zmm22,zmm27
  a5e173:	62 a1 24 20 58 fe    	vaddps ymm23,ymm27,ymm22
  a5e179:	62 a1 6c 40 5c f3    	vsubps zmm22,zmm18,zmm19
  a5e17f:	62 92 4d 40 ac d4    	vfnmadd213ps zmm2,zmm22,zmm28
  a5e185:	62 a1 1c 00 58 f6    	vaddps xmm22,xmm28,xmm22
  a5e18b:	62 a2 55 28 7f f7    	vpermt2ps ymm22,ymm5,ymm23
  a5e191:	c4 c1 44 5c fb       	vsubps ymm7,ymm7,ymm11
  a5e196:	c5 c4 59 fb          	vmulps ymm7,ymm7,ymm3
  a5e19a:	c5 7c 58 df          	vaddps ymm11,ymm0,ymm7
  a5e19e:	c5 dc 5c e6          	vsubps ymm4,ymm4,ymm6
  a5e1a2:	c5 dc 59 e3          	vmulps ymm4,ymm4,ymm3
  a5e1a6:	c5 b0 5c f4          	vsubps xmm6,xmm9,xmm4
  a5e1aa:	62 d2 55 28 7f f3    	vpermt2ps ymm6,ymm5,ymm11
  a5e1b0:	62 31 04 28 5c d8    	vsubps ymm11,ymm15,ymm16
  a5e1b6:	c5 24 59 db          	vmulps ymm11,ymm11,ymm3
  a5e1ba:	c4 41 1c 58 fb       	vaddps ymm15,ymm12,ymm11
  a5e1bf:	c4 41 3c 5c c6       	vsubps ymm8,ymm8,ymm14
  a5e1c4:	c5 3c 59 c3          	vmulps ymm8,ymm8,ymm3
  a5e1c8:	62 51 5c 00 5c f0    	vsubps xmm14,xmm20,xmm8
  a5e1ce:	62 52 55 28 7f f7    	vpermt2ps ymm14,ymm5,ymm15
  a5e1d4:	62 31 6c 20 58 fb    	vaddps ymm15,ymm18,ymm19
  a5e1da:	c5 04 59 fb          	vmulps ymm15,ymm15,ymm3
  a5e1de:	62 31 14 28 5c e9    	vsubps ymm13,ymm13,ymm17
  a5e1e4:	62 c1 54 20 58 c7    	vaddps ymm16,ymm21,ymm15
  a5e1ea:	c5 94 59 db          	vmulps ymm3,ymm13,ymm3
  a5e1ee:	c5 68 5c eb          	vsubps xmm13,xmm2,xmm3
  a5e1f2:	62 32 55 28 7f e8    	vpermt2ps ymm13,ymm5,ymm16
  a5e1f8:	c5 fc 5c c7          	vsubps ymm0,ymm0,ymm7
  a5e1fc:	c5 b0 58 e4          	vaddps xmm4,xmm9,xmm4
  a5e200:	62 f2 55 28 7f e0    	vpermt2ps ymm4,ymm5,ymm0
  a5e206:	c4 c1 1c 5c c3       	vsubps ymm0,ymm12,ymm11
  a5e20b:	62 d1 5c 00 58 f8    	vaddps xmm7,xmm20,xmm8
  a5e211:	62 f2 55 28 7f f8    	vpermt2ps ymm7,ymm5,ymm0
  a5e217:	62 d1 54 20 5c c7    	vsubps ymm0,ymm21,ymm15
  a5e21d:	c5 e8 58 d3          	vaddps xmm2,xmm2,xmm3
  a5e221:	62 f2 55 28 7f d0    	vpermt2ps ymm2,ymm5,ymm0
  a5e227:	c5 fc 11 0e          	vmovups YMMWORD PTR [rsi],ymm1
  a5e22b:	c5 7c 11 56 20       	vmovups YMMWORD PTR [rsi+0x20],ymm10
  a5e230:	62 e1 7c 28 11 76 02 	vmovups YMMWORD PTR [rsi+0x40],ymm22
  a5e237:	c5 fc 11 76 60       	vmovups YMMWORD PTR [rsi+0x60],ymm6
  a5e23c:	c5 7c 11 b6 80 00 00 	vmovups YMMWORD PTR [rsi+0x80],ymm14
  a5e243:	00 
  a5e244:	c5 7c 11 ae a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm13
  a5e24b:	00 
  a5e24c:	c5 fc 11 a6 c0 00 00 	vmovups YMMWORD PTR [rsi+0xc0],ymm4
  a5e253:	00 
  a5e254:	c5 fc 11 be e0 00 00 	vmovups YMMWORD PTR [rsi+0xe0],ymm7
  a5e25b:	00 
  a5e25c:	c5 fc 11 96 00 01 00 	vmovups YMMWORD PTR [rsi+0x100],ymm2
  a5e263:	00 
  a5e264:	48 89 ec             	mov    rsp,rbp
  a5e267:	5d                   	pop    rbp
  a5e268:	c5 f8 77             	vzeroupper
  a5e26b:	c3                   	ret
