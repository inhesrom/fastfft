
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a6cb40 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a6cb40:	55                   	push   rbp
  a6cb41:	48 89 e5             	mov    rbp,rsp
  a6cb44:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a6cb48:	48 81 ec c0 09 00 00 	sub    rsp,0x9c0
  a6cb4f:	c6 84 24 40 09 00 00 	mov    BYTE PTR [rsp+0x940],0x0
  a6cb56:	00 
  a6cb57:	48 8d 84 24 40 09 00 	lea    rax,[rsp+0x940]
  a6cb5e:	00 
  a6cb5f:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  a6cb64:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  a6cb69:	62 f1 7c 48 10 27    	vmovups zmm4,ZMMWORD PTR [rdi]
  a6cb6f:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm4
  a6cb76:	01 
  a6cb77:	c5 f8 10 47 60       	vmovups xmm0,XMMWORD PTR [rdi+0x60]
  a6cb7c:	c4 e3 79 21 47 64 10 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x64],0x10
  a6cb83:	c4 e2 79 18 4f 68    	vbroadcastss xmm1,DWORD PTR [rdi+0x68]
  a6cb89:	c5 fc 10 57 40       	vmovups ymm2,YMMWORD PTR [rdi+0x40]
  a6cb8e:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a6cb94:	c4 e3 79 21 47 6c 30 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x6c],0x30
  a6cb9b:	c5 fb 10 4f 70       	vmovsd xmm1,QWORD PTR [rdi+0x70]
  a6cba0:	c4 e3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm1,0x1
  a6cba6:	62 f3 ed 48 1a c0 01 	vinsertf64x4 zmm0,zmm2,ymm0,0x1
  a6cbad:	b0 7f                	mov    al,0x7f
  a6cbaf:	c5 fb 92 c8          	kmovd  k1,eax
  a6cbb3:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a6cbb9:	62 f1 fd 48 7f 44 24 	vmovdqa64 ZMMWORD PTR [rsp+0x1c0],zmm0
  a6cbc0:	07 
  a6cbc1:	62 f1 7c 48 28 1d 75 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff627975]        # 94540 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x219f0>
  a6cbc8:	79 62 ff 
  a6cbcb:	62 f2 65 48 7f e0    	vpermt2ps zmm4,zmm3,zmm0
  a6cbd1:	62 71 7c 48 10 a7 e0 	vmovups zmm12,ZMMWORD PTR [rdi+0x1e0]
  a6cbd8:	01 00 00 
  a6cbdb:	c5 f8 10 8f 40 02 00 	vmovups xmm1,XMMWORD PTR [rdi+0x240]
  a6cbe2:	00 
  a6cbe3:	c5 fc 10 97 20 02 00 	vmovups ymm2,YMMWORD PTR [rdi+0x220]
  a6cbea:	00 
  a6cbeb:	c4 e3 71 21 8f 44 02 	vinsertps xmm1,xmm1,DWORD PTR [rdi+0x244],0x10
  a6cbf2:	00 00 10 
  a6cbf5:	c4 e2 79 18 af 48 02 	vbroadcastss xmm5,DWORD PTR [rdi+0x248]
  a6cbfc:	00 00 
  a6cbfe:	c4 e3 51 0c c9 03    	vblendps xmm1,xmm5,xmm1,0x3
  a6cc04:	c4 e3 71 21 8f 4c 02 	vinsertps xmm1,xmm1,DWORD PTR [rdi+0x24c],0x30
  a6cc0b:	00 00 30 
  a6cc0e:	c5 fb 10 af 50 02 00 	vmovsd xmm5,QWORD PTR [rdi+0x250]
  a6cc15:	00 
  a6cc16:	c4 e3 75 18 cd 01    	vinsertf128 ymm1,ymm1,xmm5,0x1
  a6cc1c:	62 f3 ed 48 1a c9 01 	vinsertf64x4 zmm1,zmm2,ymm1,0x1
  a6cc23:	62 f2 fd c9 88 c1    	vexpandpd zmm0{k1}{z},zmm1
  a6cc29:	62 f1 fd 48 7f 44 24 	vmovdqa64 ZMMWORD PTR [rsp+0x140],zmm0
  a6cc30:	05 
  a6cc31:	62 51 7c 48 28 d4    	vmovaps zmm10,zmm12
  a6cc37:	62 72 65 48 7f d0    	vpermt2ps zmm10,zmm3,zmm0
  a6cc3d:	62 d1 5c 48 58 f2    	vaddps zmm6,zmm4,zmm10
  a6cc43:	62 71 7c 48 10 bf f0 	vmovups zmm15,ZMMWORD PTR [rdi+0xf0]
  a6cc4a:	00 00 00 
  a6cc4d:	c5 f8 10 97 50 01 00 	vmovups xmm2,XMMWORD PTR [rdi+0x150]
  a6cc54:	00 
  a6cc55:	c4 e3 69 21 97 54 01 	vinsertps xmm2,xmm2,DWORD PTR [rdi+0x154],0x10
  a6cc5c:	00 00 10 
  a6cc5f:	c4 e2 79 18 bf 58 01 	vbroadcastss xmm7,DWORD PTR [rdi+0x158]
  a6cc66:	00 00 
  a6cc68:	c5 7c 10 87 30 01 00 	vmovups ymm8,YMMWORD PTR [rdi+0x130]
  a6cc6f:	00 
  a6cc70:	c4 e3 41 0c d2 03    	vblendps xmm2,xmm7,xmm2,0x3
  a6cc76:	c4 e3 69 21 97 5c 01 	vinsertps xmm2,xmm2,DWORD PTR [rdi+0x15c],0x30
  a6cc7d:	00 00 30 
  a6cc80:	c5 fb 10 bf 60 01 00 	vmovsd xmm7,QWORD PTR [rdi+0x160]
  a6cc87:	00 
  a6cc88:	c4 e3 6d 18 d7 01    	vinsertf128 ymm2,ymm2,xmm7,0x1
  a6cc8e:	62 f3 bd 48 1a d2 01 	vinsertf64x4 zmm2,zmm8,ymm2,0x1
  a6cc95:	62 72 fd c9 88 f2    	vexpandpd zmm14{k1}{z},zmm2
  a6cc9b:	62 41 7c 48 28 ff    	vmovaps zmm31,zmm15
  a6cca1:	62 42 65 48 7f fe    	vpermt2ps zmm31,zmm3,zmm14
  a6cca7:	62 e1 7c 48 10 b7 d0 	vmovups zmm22,ZMMWORD PTR [rdi+0x2d0]
  a6ccae:	02 00 00 
  a6ccb1:	c5 f8 10 bf 30 03 00 	vmovups xmm7,XMMWORD PTR [rdi+0x330]
  a6ccb8:	00 
  a6ccb9:	c4 e3 41 21 bf 34 03 	vinsertps xmm7,xmm7,DWORD PTR [rdi+0x334],0x10
  a6ccc0:	00 00 10 
  a6ccc3:	c4 62 79 18 87 38 03 	vbroadcastss xmm8,DWORD PTR [rdi+0x338]
  a6ccca:	00 00 
  a6cccc:	c5 7c 10 8f 10 03 00 	vmovups ymm9,YMMWORD PTR [rdi+0x310]
  a6ccd3:	00 
  a6ccd4:	c4 e3 39 0c ff 03    	vblendps xmm7,xmm8,xmm7,0x3
  a6ccda:	c4 e3 41 21 bf 3c 03 	vinsertps xmm7,xmm7,DWORD PTR [rdi+0x33c],0x30
  a6cce1:	00 00 30 
  a6cce4:	c5 7b 10 87 40 03 00 	vmovsd xmm8,QWORD PTR [rdi+0x340]
  a6cceb:	00 
  a6ccec:	c4 c3 45 18 f8 01    	vinsertf128 ymm7,ymm7,xmm8,0x1
  a6ccf2:	62 f3 b5 48 1a ff 01 	vinsertf64x4 zmm7,zmm9,ymm7,0x1
  a6ccf9:	62 e2 fd c9 88 c7    	vexpandpd zmm16{k1}{z},zmm7
  a6ccff:	62 31 7c 48 28 de    	vmovaps zmm11,zmm22
  a6cd05:	62 32 65 48 7f d8    	vpermt2ps zmm11,zmm3,zmm16
  a6cd0b:	62 c1 04 40 58 eb    	vaddps zmm21,zmm31,zmm11
  a6cd11:	62 31 4c 48 58 ed    	vaddps zmm13,zmm6,zmm21
  a6cd17:	62 f1 7c 48 10 bf 78 	vmovups zmm7,ZMMWORD PTR [rdi+0x78]
  a6cd1e:	00 00 00 
  a6cd21:	c5 78 10 87 d8 00 00 	vmovups xmm8,XMMWORD PTR [rdi+0xd8]
  a6cd28:	00 
  a6cd29:	c4 63 39 21 87 dc 00 	vinsertps xmm8,xmm8,DWORD PTR [rdi+0xdc],0x10
  a6cd30:	00 00 10 
  a6cd33:	c5 7c 10 8f b8 00 00 	vmovups ymm9,YMMWORD PTR [rdi+0xb8]
  a6cd3a:	00 
  a6cd3b:	c4 e2 79 18 87 e0 00 	vbroadcastss xmm0,DWORD PTR [rdi+0xe0]
  a6cd42:	00 00 
  a6cd44:	c4 c3 79 0c c0 03    	vblendps xmm0,xmm0,xmm8,0x3
  a6cd4a:	c4 e3 79 21 87 e4 00 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0xe4],0x30
  a6cd51:	00 00 30 
  a6cd54:	c5 7b 10 87 e8 00 00 	vmovsd xmm8,QWORD PTR [rdi+0xe8]
  a6cd5b:	00 
  a6cd5c:	c4 c3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm8,0x1
  a6cd62:	62 f3 b5 48 1a c0 01 	vinsertf64x4 zmm0,zmm9,ymm0,0x1
  a6cd69:	62 62 fd c9 88 c8    	vexpandpd zmm25{k1}{z},zmm0
  a6cd6f:	62 e1 7c 48 28 d7    	vmovaps zmm18,zmm7
  a6cd75:	62 82 65 48 7f d1    	vpermt2ps zmm18,zmm3,zmm25
  a6cd7b:	62 e1 7c 48 10 9f 58 	vmovups zmm19,ZMMWORD PTR [rdi+0x258]
  a6cd82:	02 00 00 
  a6cd85:	c5 f8 10 87 b8 02 00 	vmovups xmm0,XMMWORD PTR [rdi+0x2b8]
  a6cd8c:	00 
  a6cd8d:	c4 e3 79 21 87 bc 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x2bc],0x10
  a6cd94:	00 00 10 
  a6cd97:	c5 7c 10 87 98 02 00 	vmovups ymm8,YMMWORD PTR [rdi+0x298]
  a6cd9e:	00 
  a6cd9f:	c4 62 79 18 8f c0 02 	vbroadcastss xmm9,DWORD PTR [rdi+0x2c0]
  a6cda6:	00 00 
  a6cda8:	c4 e3 31 0c c0 03    	vblendps xmm0,xmm9,xmm0,0x3
  a6cdae:	c4 e3 79 21 87 c4 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x2c4],0x30
  a6cdb5:	00 00 30 
  a6cdb8:	c5 7b 10 8f c8 02 00 	vmovsd xmm9,QWORD PTR [rdi+0x2c8]
  a6cdbf:	00 
  a6cdc0:	c4 c3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm9,0x1
  a6cdc6:	62 f3 bd 48 1a c0 01 	vinsertf64x4 zmm0,zmm8,ymm0,0x1
  a6cdcd:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a6cdd3:	62 a1 7c 48 28 fb    	vmovaps zmm23,zmm19
  a6cdd9:	62 e2 65 48 7f f8    	vpermt2ps zmm23,zmm3,zmm0
  a6cddf:	62 b1 6c 40 58 cf    	vaddps zmm1,zmm18,zmm23
  a6cde5:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm1
  a6cdec:	06 
  a6cded:	62 e1 7c 48 10 a7 68 	vmovups zmm20,ZMMWORD PTR [rdi+0x168]
  a6cdf4:	01 00 00 
  a6cdf7:	c5 78 10 87 c8 01 00 	vmovups xmm8,XMMWORD PTR [rdi+0x1c8]
  a6cdfe:	00 
  a6cdff:	62 e1 7c 28 10 8f a8 	vmovups ymm17,YMMWORD PTR [rdi+0x1a8]
  a6ce06:	01 00 00 
  a6ce09:	c4 63 39 21 87 cc 01 	vinsertps xmm8,xmm8,DWORD PTR [rdi+0x1cc],0x10
  a6ce10:	00 00 10 
  a6ce13:	c4 e2 79 18 af d0 01 	vbroadcastss xmm5,DWORD PTR [rdi+0x1d0]
  a6ce1a:	00 00 
  a6ce1c:	c4 c3 51 0c e8 03    	vblendps xmm5,xmm5,xmm8,0x3
  a6ce22:	c4 e3 51 21 af d4 01 	vinsertps xmm5,xmm5,DWORD PTR [rdi+0x1d4],0x30
  a6ce29:	00 00 30 
  a6ce2c:	c5 7b 10 87 d8 01 00 	vmovsd xmm8,QWORD PTR [rdi+0x1d8]
  a6ce33:	00 
  a6ce34:	c4 c3 55 18 e8 01    	vinsertf128 ymm5,ymm5,xmm8,0x1
  a6ce3a:	62 f3 f5 40 1a ed 01 	vinsertf64x4 zmm5,zmm17,ymm5,0x1
  a6ce41:	62 f2 fd c9 88 ed    	vexpandpd zmm5{k1}{z},zmm5
  a6ce47:	62 21 7c 48 28 c4    	vmovaps zmm24,zmm20
  a6ce4d:	62 62 65 48 7f c5    	vpermt2ps zmm24,zmm3,zmm5
  a6ce53:	62 61 7c 48 10 97 48 	vmovups zmm26,ZMMWORD PTR [rdi+0x348]
  a6ce5a:	03 00 00 
  a6ce5d:	c5 78 10 87 a8 03 00 	vmovups xmm8,XMMWORD PTR [rdi+0x3a8]
  a6ce64:	00 
  a6ce65:	62 e1 7c 28 10 8f 88 	vmovups ymm17,YMMWORD PTR [rdi+0x388]
  a6ce6c:	03 00 00 
  a6ce6f:	c4 63 39 21 87 ac 03 	vinsertps xmm8,xmm8,DWORD PTR [rdi+0x3ac],0x10
  a6ce76:	00 00 10 
  a6ce79:	c4 62 79 18 8f b0 03 	vbroadcastss xmm9,DWORD PTR [rdi+0x3b0]
  a6ce80:	00 00 
  a6ce82:	c4 43 31 0c c0 03    	vblendps xmm8,xmm9,xmm8,0x3
  a6ce88:	c4 63 39 21 87 b4 03 	vinsertps xmm8,xmm8,DWORD PTR [rdi+0x3b4],0x30
  a6ce8f:	00 00 30 
  a6ce92:	c5 7b 10 8f b8 03 00 	vmovsd xmm9,QWORD PTR [rdi+0x3b8]
  a6ce99:	00 
  a6ce9a:	c4 43 3d 18 c1 01    	vinsertf128 ymm8,ymm8,xmm9,0x1
  a6cea0:	62 53 f5 40 1a c0 01 	vinsertf64x4 zmm8,zmm17,ymm8,0x1
  a6cea7:	62 52 fd c9 88 c8    	vexpandpd zmm9{k1}{z},zmm8
  a6cead:	62 d2 2d 40 77 d9    	vpermi2ps zmm3,zmm26,zmm9
  a6ceb3:	62 e1 3c 40 58 cb    	vaddps zmm17,zmm24,zmm3
  a6ceb9:	62 21 74 48 58 d9    	vaddps zmm27,zmm1,zmm17
  a6cebf:	62 01 14 48 58 eb    	vaddps zmm29,zmm13,zmm27
  a6cec5:	62 61 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm29
  a6cecc:	0a 
  a6cecd:	62 71 7c 48 28 05 e9 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff65a0e9]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a6ced4:	a0 65 ff 
  a6ced7:	62 01 14 48 5c f3    	vsubps zmm30,zmm13,zmm27
  a6cedd:	62 61 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm30
  a6cee4:	04 
  a6cee5:	c4 41 10 57 ed       	vxorps xmm13,xmm13,xmm13
  a6ceea:	62 b1 4c 48 5c f5    	vsubps zmm6,zmm6,zmm21
  a6cef0:	62 61 7c 48 28 1d 86 	vmovaps zmm27,ZMMWORD PTR [rip+0xffffffffff627686]        # 94580 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21a30>
  a6cef7:	76 62 ff 
  a6cefa:	62 92 25 40 7f f9    	vpermt2ps zmm7,zmm27,zmm25
  a6cf00:	62 e2 25 40 7f d8    	vpermt2ps zmm19,zmm27,zmm0
  a6cf06:	62 21 44 48 58 cb    	vaddps zmm25,zmm7,zmm19
  a6cf0c:	62 e2 25 40 7f e5    	vpermt2ps zmm20,zmm27,zmm5
  a6cf12:	62 42 25 40 7f d1    	vpermt2ps zmm26,zmm27,zmm9
  a6cf18:	62 01 5c 40 58 e2    	vaddps zmm28,zmm20,zmm26
  a6cf1e:	62 91 34 40 5c c4    	vsubps zmm0,zmm25,zmm28
  a6cf24:	62 f1 4c 48 58 c8    	vaddps zmm1,zmm6,zmm0
  a6cf2a:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm1
  a6cf31:	09 
  a6cf32:	62 f1 4c 48 5c d0    	vsubps zmm2,zmm6,zmm0
  a6cf38:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm2
  a6cf3f:	0c 
  a6cf40:	62 91 7c 48 28 c5    	vmovaps zmm0,zmm29
  a6cf46:	62 d2 3d 48 7f c5    	vpermt2ps zmm0,zmm8,zmm13
  a6cf4c:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm0
  a6cf53:	0b 
  a6cf54:	62 d1 5c 48 5c c2    	vsubps zmm0,zmm4,zmm10
  a6cf5a:	62 52 25 40 7f fe    	vpermt2ps zmm15,zmm27,zmm14
  a6cf60:	62 a2 25 40 7f f0    	vpermt2ps zmm22,zmm27,zmm16
  a6cf66:	62 b1 04 48 5c e6    	vsubps zmm4,zmm15,zmm22
  a6cf6c:	62 f1 7c 48 58 ec    	vaddps zmm5,zmm0,zmm4
  a6cf72:	62 31 6c 40 5c cf    	vsubps zmm9,zmm18,zmm23
  a6cf78:	62 b1 44 48 5c fb    	vsubps zmm7,zmm7,zmm19
  a6cf7e:	62 72 7d 48 18 15 14 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff608414]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a6cf85:	84 60 ff 
  a6cf88:	62 f1 34 48 58 f7    	vaddps zmm6,zmm9,zmm7
  a6cf8e:	62 d1 4c 48 59 f2    	vmulps zmm6,zmm6,zmm10
  a6cf94:	62 11 5c 40 5c f2    	vsubps zmm14,zmm20,zmm26
  a6cf9a:	62 f1 3c 40 5c db    	vsubps zmm3,zmm24,zmm3
  a6cfa0:	62 e1 0c 48 5c c3    	vsubps zmm16,zmm14,zmm3
  a6cfa6:	62 c1 7c 40 59 fa    	vmulps zmm23,zmm16,zmm10
  a6cfac:	62 a1 4c 48 58 c7    	vaddps zmm16,zmm6,zmm23
  a6cfb2:	62 a1 54 48 58 d0    	vaddps zmm18,zmm5,zmm16
  a6cfb8:	62 e1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm18
  a6cfbf:	08 
  a6cfc0:	62 a1 54 48 5c c0    	vsubps zmm16,zmm5,zmm16
  a6cfc6:	62 81 7c 48 28 ee    	vmovaps zmm21,zmm30
  a6cfcc:	62 c2 3d 48 7f ed    	vpermt2ps zmm21,zmm8,zmm13
  a6cfd2:	62 f1 7c 48 5c c4    	vsubps zmm0,zmm0,zmm4
  a6cfd8:	62 d2 3d 48 7f cd    	vpermt2ps zmm1,zmm8,zmm13
  a6cfde:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm1
  a6cfe5:	03 
  a6cfe6:	62 d1 44 48 5c e1    	vsubps zmm4,zmm7,zmm9
  a6cfec:	62 61 7c 48 28 c2    	vmovaps zmm24,zmm2
  a6cff2:	62 42 3d 48 7f c5    	vpermt2ps zmm24,zmm8,zmm13
  a6cff8:	62 d1 64 48 58 de    	vaddps zmm3,zmm3,zmm14
  a6cffe:	62 b1 7c 48 28 ca    	vmovaps zmm1,zmm18
  a6d004:	62 d2 3d 48 7f cd    	vpermt2ps zmm1,zmm8,zmm13
  a6d00a:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm1
  a6d011:	02 
  a6d012:	62 d1 5c 48 59 e2    	vmulps zmm4,zmm4,zmm10
  a6d018:	62 d1 64 48 59 ea    	vmulps zmm5,zmm3,zmm10
  a6d01e:	62 21 7c 48 28 d0    	vmovaps zmm26,zmm16
  a6d024:	62 21 7c 48 28 e8    	vmovaps zmm29,zmm16
  a6d02a:	62 42 3d 48 7f d5    	vpermt2ps zmm26,zmm8,zmm13
  a6d030:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x40]
  a6d037:	01 
  a6d038:	62 f2 25 40 7f 4c 24 	vpermt2ps zmm1,zmm27,ZMMWORD PTR [rsp+0x1c0]
  a6d03f:	07 
  a6d040:	62 f1 5c 48 58 dd    	vaddps zmm3,zmm4,zmm5
  a6d046:	62 72 25 40 7f 64 24 	vpermt2ps zmm12,zmm27,ZMMWORD PTR [rsp+0x140]
  a6d04d:	05 
  a6d04e:	62 f1 7c 48 58 fb    	vaddps zmm7,zmm0,zmm3
  a6d054:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm7
  a6d05b:	07 
  a6d05c:	62 d2 3d 48 7f fd    	vpermt2ps zmm7,zmm8,zmm13
  a6d062:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm7
  a6d069:	01 
  a6d06a:	62 e1 7c 48 5c d3    	vsubps zmm18,zmm0,zmm3
  a6d070:	62 d1 74 48 58 c4    	vaddps zmm0,zmm1,zmm12
  a6d076:	62 71 7c 48 28 f1    	vmovaps zmm14,zmm1
  a6d07c:	62 b1 04 48 58 de    	vaddps zmm3,zmm15,zmm22
  a6d082:	62 f1 7c 48 58 cb    	vaddps zmm1,zmm0,zmm3
  a6d088:	62 91 34 40 58 d4    	vaddps zmm2,zmm25,zmm28
  a6d08e:	62 f1 74 48 58 fa    	vaddps zmm7,zmm1,zmm2
  a6d094:	62 e1 74 48 5c da    	vsubps zmm19,zmm1,zmm2
  a6d09a:	62 a1 7c 48 28 c2    	vmovaps zmm16,zmm18
  a6d0a0:	62 c2 3d 48 7f c5    	vpermt2ps zmm16,zmm8,zmm13
  a6d0a6:	62 71 74 40 5c 4c 24 	vsubps zmm9,zmm17,ZMMWORD PTR [rsp+0x180]
  a6d0ad:	06 
  a6d0ae:	62 f1 7c 48 28 cf    	vmovaps zmm1,zmm7
  a6d0b4:	62 d2 3d 48 7f cd    	vpermt2ps zmm1,zmm8,zmm13
  a6d0ba:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm1
  a6d0c1:	05 
  a6d0c2:	62 f1 7c 48 5c c3    	vsubps zmm0,zmm0,zmm3
  a6d0c8:	62 f1 34 48 58 c8    	vaddps zmm1,zmm9,zmm0
  a6d0ce:	62 41 7c 48 5c c9    	vsubps zmm25,zmm0,zmm9
  a6d0d4:	62 a1 7c 48 28 f3    	vmovaps zmm22,zmm19
  a6d0da:	62 c2 3d 48 7f f5    	vpermt2ps zmm22,zmm8,zmm13
  a6d0e0:	62 91 24 48 5c c7    	vsubps zmm0,zmm11,zmm31
  a6d0e6:	62 e1 7c 48 28 e1    	vmovaps zmm20,zmm1
  a6d0ec:	62 f1 7c 48 28 d9    	vmovaps zmm3,zmm1
  a6d0f2:	62 c2 3d 48 7f e5    	vpermt2ps zmm20,zmm8,zmm13
  a6d0f8:	62 51 0c 48 5c cc    	vsubps zmm9,zmm14,zmm12
  a6d0fe:	62 51 7c 48 58 d9    	vaddps zmm11,zmm0,zmm9
  a6d104:	62 f1 5c 48 5c e5    	vsubps zmm4,zmm4,zmm5
  a6d10a:	62 f1 24 48 58 cc    	vaddps zmm1,zmm11,zmm4
  a6d110:	62 71 24 48 5c d4    	vsubps zmm10,zmm11,zmm4
  a6d116:	62 11 7c 48 28 e1    	vmovaps zmm12,zmm25
  a6d11c:	62 52 3d 48 7f e5    	vpermt2ps zmm12,zmm8,zmm13
  a6d122:	62 f1 34 48 5c c0    	vsubps zmm0,zmm9,zmm0
  a6d128:	62 71 7c 48 28 c9    	vmovaps zmm9,zmm1
  a6d12e:	62 61 7c 48 28 e1    	vmovaps zmm28,zmm1
  a6d134:	62 52 3d 48 7f cd    	vpermt2ps zmm9,zmm8,zmm13
  a6d13a:	62 f1 44 40 5c e6    	vsubps zmm4,zmm23,zmm6
  a6d140:	62 61 7c 48 58 f4    	vaddps zmm30,zmm0,zmm4
  a6d146:	62 61 7c 48 5c dc    	vsubps zmm27,zmm0,zmm4
  a6d14c:	62 51 7c 48 28 da    	vmovaps zmm11,zmm10
  a6d152:	62 52 3d 48 7f dd    	vpermt2ps zmm11,zmm8,zmm13
  a6d158:	62 11 7c 48 28 fe    	vmovaps zmm15,zmm30
  a6d15e:	62 52 3d 48 7f fd    	vpermt2ps zmm15,zmm8,zmm13
  a6d164:	62 52 25 40 77 c5    	vpermi2ps zmm8,zmm27,zmm13
  a6d16a:	62 f1 7c 48 28 05 0c 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff659e0c]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a6d171:	9e 65 ff 
  a6d174:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x280]
  a6d17b:	0a 
  a6d17c:	62 d2 7d 48 7f cd    	vpermt2ps zmm1,zmm0,zmm13
  a6d182:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x100]
  a6d189:	04 
  a6d18a:	62 d2 7d 48 7f d5    	vpermt2ps zmm2,zmm0,zmm13
  a6d190:	62 e1 7c 48 28 4c 24 	vmovaps zmm17,ZMMWORD PTR [rsp+0x240]
  a6d197:	09 
  a6d198:	62 c2 7d 48 7f cd    	vpermt2ps zmm17,zmm0,zmm13
  a6d19e:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x300]
  a6d1a5:	0c 
  a6d1a6:	62 d2 7d 48 7f ed    	vpermt2ps zmm5,zmm0,zmm13
  a6d1ac:	62 71 7c 48 28 74 24 	vmovaps zmm14,ZMMWORD PTR [rsp+0x200]
  a6d1b3:	08 
  a6d1b4:	62 52 7d 48 7f f5    	vpermt2ps zmm14,zmm0,zmm13
  a6d1ba:	62 42 7d 48 7f ed    	vpermt2ps zmm29,zmm0,zmm13
  a6d1c0:	62 61 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm29
  a6d1c7:	08 
  a6d1c8:	62 61 7c 48 28 6c 24 	vmovaps zmm29,ZMMWORD PTR [rsp+0x1c0]
  a6d1cf:	07 
  a6d1d0:	62 42 7d 48 7f ed    	vpermt2ps zmm29,zmm0,zmm13
  a6d1d6:	62 c2 7d 48 7f d5    	vpermt2ps zmm18,zmm0,zmm13
  a6d1dc:	62 d2 7d 48 7f fd    	vpermt2ps zmm7,zmm0,zmm13
  a6d1e2:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm7
  a6d1e9:	04 
  a6d1ea:	62 c2 7d 48 7f dd    	vpermt2ps zmm19,zmm0,zmm13
  a6d1f0:	62 d2 7d 48 7f dd    	vpermt2ps zmm3,zmm0,zmm13
  a6d1f6:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm3
  a6d1fd:	0c 
  a6d1fe:	62 42 7d 48 7f cd    	vpermt2ps zmm25,zmm0,zmm13
  a6d204:	62 42 7d 48 7f e5    	vpermt2ps zmm28,zmm0,zmm13
  a6d20a:	62 61 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm28
  a6d211:	06 
  a6d212:	62 52 7d 48 7f d5    	vpermt2ps zmm10,zmm0,zmm13
  a6d218:	62 42 7d 48 7f f5    	vpermt2ps zmm30,zmm0,zmm13
  a6d21e:	62 42 7d 48 7f dd    	vpermt2ps zmm27,zmm0,zmm13
  a6d224:	62 61 7c 48 28 3d d2 	vmovaps zmm31,ZMMWORD PTR [rip+0xffffffffff659cd2]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a6d22b:	9c 65 ff 
  a6d22e:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x2c0]
  a6d235:	0b 
  a6d236:	62 f1 7c 48 28 f0    	vmovaps zmm6,zmm0
  a6d23c:	62 b2 05 40 7f f5    	vpermt2ps zmm6,zmm31,zmm21
  a6d242:	62 f1 7c 48 28 25 f4 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff659cf4]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a6d249:	9c 65 ff 
  a6d24c:	62 b2 5d 48 7f c5    	vpermt2ps zmm0,zmm4,zmm21
  a6d252:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm0
  a6d259:	0b 
  a6d25a:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0xc0]
  a6d261:	03 
  a6d262:	62 f1 7c 48 28 d8    	vmovaps zmm3,zmm0
  a6d268:	62 92 05 40 7f d8    	vpermt2ps zmm3,zmm31,zmm24
  a6d26e:	62 92 5d 48 7f c0    	vpermt2ps zmm0,zmm4,zmm24
  a6d274:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm0
  a6d27b:	03 
  a6d27c:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x80]
  a6d283:	02 
  a6d284:	62 61 7c 48 28 e0    	vmovaps zmm28,zmm0
  a6d28a:	62 02 05 40 7f e2    	vpermt2ps zmm28,zmm31,zmm26
  a6d290:	62 92 5d 48 7f c2    	vpermt2ps zmm0,zmm4,zmm26
  a6d296:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm0
  a6d29d:	02 
  a6d29e:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x40]
  a6d2a5:	01 
  a6d2a6:	62 61 7c 48 28 d0    	vmovaps zmm26,zmm0
  a6d2ac:	62 22 05 40 7f d0    	vpermt2ps zmm26,zmm31,zmm16
  a6d2b2:	62 b2 5d 48 7f c0    	vpermt2ps zmm0,zmm4,zmm16
  a6d2b8:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a6d2bf:	01 
  a6d2c0:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x140]
  a6d2c7:	05 
  a6d2c8:	62 e1 7c 48 28 e8    	vmovaps zmm21,zmm0
  a6d2ce:	62 a2 05 40 7f ee    	vpermt2ps zmm21,zmm31,zmm22
  a6d2d4:	62 b2 5d 48 7f c6    	vpermt2ps zmm0,zmm4,zmm22
  a6d2da:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm0
  a6d2e1:	05 
  a6d2e2:	62 a1 7c 48 28 f4    	vmovaps zmm22,zmm20
  a6d2e8:	62 c2 05 40 7f f4    	vpermt2ps zmm22,zmm31,zmm12
  a6d2ee:	62 c2 5d 48 7f e4    	vpermt2ps zmm20,zmm4,zmm12
  a6d2f4:	62 a1 7c 48 28 c4    	vmovaps zmm16,zmm20
  a6d2fa:	62 c1 7c 48 28 f9    	vmovaps zmm23,zmm9
  a6d300:	62 c2 05 40 7f fb    	vpermt2ps zmm23,zmm31,zmm11
  a6d306:	62 52 5d 48 7f cb    	vpermt2ps zmm9,zmm4,zmm11
  a6d30c:	62 41 7c 48 28 c7    	vmovaps zmm24,zmm15
  a6d312:	62 42 05 40 7f c0    	vpermt2ps zmm24,zmm31,zmm8
  a6d318:	62 52 5d 48 7f f8    	vpermt2ps zmm15,zmm4,zmm8
  a6d31e:	62 f1 7c 48 28 c1    	vmovaps zmm0,zmm1
  a6d324:	62 f1 7c 48 28 f9    	vmovaps zmm7,zmm1
  a6d32a:	62 f2 05 40 7f fa    	vpermt2ps zmm7,zmm31,zmm2
  a6d330:	62 f2 5d 48 7f c2    	vpermt2ps zmm0,zmm4,zmm2
  a6d336:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm0
  a6d33d:	0a 
  a6d33e:	62 b1 7c 48 28 c9    	vmovaps zmm1,zmm17
  a6d344:	62 f1 7c 48 28 d5    	vmovaps zmm2,zmm5
  a6d34a:	62 f2 05 40 7f cd    	vpermt2ps zmm1,zmm31,zmm5
  a6d350:	62 f1 7c 48 28 e9    	vmovaps zmm5,zmm1
  a6d356:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm1
  a6d35d:	0e 
  a6d35e:	62 e2 5d 48 7f ca    	vpermt2ps zmm17,zmm4,zmm2
  a6d364:	62 e1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm17
  a6d36b:	09 
  a6d36c:	62 d1 7c 48 28 c6    	vmovaps zmm0,zmm14
  a6d372:	62 d1 7c 48 28 d6    	vmovaps zmm2,zmm14
  a6d378:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x200]
  a6d37f:	08 
  a6d380:	62 f2 05 40 7f d1    	vpermt2ps zmm2,zmm31,zmm1
  a6d386:	62 e1 7c 48 28 ca    	vmovaps zmm17,zmm2
  a6d38c:	62 f2 5d 48 7f c1    	vpermt2ps zmm0,zmm4,zmm1
  a6d392:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm0
  a6d399:	08 
  a6d39a:	62 11 7c 48 28 f5    	vmovaps zmm14,zmm29
  a6d3a0:	62 32 05 40 7f f2    	vpermt2ps zmm14,zmm31,zmm18
  a6d3a6:	62 22 5d 48 7f ea    	vpermt2ps zmm29,zmm4,zmm18
  a6d3ac:	62 61 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm29
  a6d3b3:	07 
  a6d3b4:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x100]
  a6d3bb:	04 
  a6d3bc:	62 71 7c 48 28 e8    	vmovaps zmm13,zmm0
  a6d3c2:	62 32 05 40 7f eb    	vpermt2ps zmm13,zmm31,zmm19
  a6d3c8:	62 b2 5d 48 7f c3    	vpermt2ps zmm0,zmm4,zmm19
  a6d3ce:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  a6d3d5:	04 
  a6d3d6:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x300]
  a6d3dd:	0c 
  a6d3de:	62 71 7c 48 28 c0    	vmovaps zmm8,zmm0
  a6d3e4:	62 12 05 40 7f c1    	vpermt2ps zmm8,zmm31,zmm25
  a6d3ea:	62 92 5d 48 7f c1    	vpermt2ps zmm0,zmm4,zmm25
  a6d3f0:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm0
  a6d3f7:	0c 
  a6d3f8:	62 e1 7c 48 28 5c 24 	vmovaps zmm19,ZMMWORD PTR [rsp+0x180]
  a6d3ff:	06 
  a6d400:	62 31 7c 48 28 e3    	vmovaps zmm12,zmm19
  a6d406:	62 52 05 40 7f e2    	vpermt2ps zmm12,zmm31,zmm10
  a6d40c:	62 c2 5d 48 7f da    	vpermt2ps zmm19,zmm4,zmm10
  a6d412:	62 81 7c 48 28 d6    	vmovaps zmm18,zmm30
  a6d418:	62 02 0d 40 77 fb    	vpermi2ps zmm31,zmm30,zmm27
  a6d41e:	62 82 5d 48 7f d3    	vpermt2ps zmm18,zmm4,zmm27
  a6d424:	62 61 7c 48 28 35 d2 	vmovaps zmm30,ZMMWORD PTR [rip+0xffffffffff6599d2]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a6d42b:	99 65 ff 
  a6d42e:	62 f1 cd 48 14 cb    	vunpcklpd zmm1,zmm6,zmm3
  a6d434:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm1
  a6d43b:	0d 
  a6d43c:	62 91 9d 40 14 c2    	vunpcklpd zmm0,zmm28,zmm26
  a6d442:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm0
  a6d449:	1a 
  a6d44a:	62 f2 0d 40 7f c8    	vpermt2ps zmm1,zmm30,zmm0
  a6d450:	62 b1 d5 40 14 d6    	vunpcklpd zmm2,zmm21,zmm22
  a6d456:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm2
  a6d45d:	15 
  a6d45e:	62 91 c5 40 14 c0    	vunpcklpd zmm0,zmm23,zmm24
  a6d464:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm0
  a6d46b:	19 
  a6d46c:	62 f2 0d 40 7f d0    	vpermt2ps zmm2,zmm30,zmm0
  a6d472:	62 f1 7c 48 10 62 11 	vmovups zmm4,ZMMWORD PTR [rdx+0x440]
  a6d479:	62 71 7c 48 10 5a 10 	vmovups zmm11,ZMMWORD PTR [rdx+0x400]
  a6d480:	62 d1 6c 48 59 c3    	vmulps zmm0,zmm2,zmm11
  a6d486:	62 f2 75 48 b8 c4    	vfmadd231ps zmm0,zmm1,zmm4
  a6d48c:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x880],zmm0
  a6d493:	22 
  a6d494:	62 d1 74 48 59 c3    	vmulps zmm0,zmm1,zmm11
  a6d49a:	62 f2 5d 48 bc c2    	vfnmadd231ps zmm0,zmm4,zmm2
  a6d4a0:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm0
  a6d4a7:	06 
  a6d4a8:	62 f1 c5 48 15 cd    	vunpckhpd zmm1,zmm7,zmm5
  a6d4ae:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm1
  a6d4b5:	14 
  a6d4b6:	62 d1 f5 40 15 c6    	vunpckhpd zmm0,zmm17,zmm14
  a6d4bc:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm0
  a6d4c3:	13 
  a6d4c4:	62 b1 7c 48 28 e9    	vmovaps zmm5,zmm17
  a6d4ca:	62 f2 0d 40 7f c8    	vpermt2ps zmm1,zmm30,zmm0
  a6d4d0:	62 41 95 48 15 e8    	vunpckhpd zmm29,zmm13,zmm8
  a6d4d6:	62 91 9d 48 15 c7    	vunpckhpd zmm0,zmm12,zmm31
  a6d4dc:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm0
  a6d4e3:	12 
  a6d4e4:	62 11 7c 48 28 dd    	vmovaps zmm11,zmm29
  a6d4ea:	62 72 0d 40 7f d8    	vpermt2ps zmm11,zmm30,zmm0
  a6d4f0:	62 61 7c 48 10 4a 04 	vmovups zmm25,ZMMWORD PTR [rdx+0x100]
  a6d4f7:	62 f1 7c 48 10 42 05 	vmovups zmm0,ZMMWORD PTR [rdx+0x140]
  a6d4fe:	62 01 24 48 59 d9    	vmulps zmm27,zmm11,zmm25
  a6d504:	62 62 75 48 b8 d8    	vfmadd231ps zmm27,zmm1,zmm0
  a6d50a:	62 61 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x840],zmm27
  a6d511:	21 
  a6d512:	62 91 74 48 59 c9    	vmulps zmm1,zmm1,zmm25
  a6d518:	62 d2 7d 48 bc cb    	vfnmadd231ps zmm1,zmm0,zmm11
  a6d51e:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm1
  a6d525:	10 
  a6d526:	62 61 cd 48 15 cb    	vunpckhpd zmm25,zmm6,zmm3
  a6d52c:	62 91 9d 40 15 ca    	vunpckhpd zmm1,zmm28,zmm26
  a6d532:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x740],zmm1
  a6d539:	1d 
  a6d53a:	62 21 d5 40 15 d6    	vunpckhpd zmm26,zmm21,zmm22
  a6d540:	62 91 c5 40 15 d8    	vunpckhpd zmm3,zmm23,zmm24
  a6d546:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x700],zmm3
  a6d54d:	1c 
  a6d54e:	62 e1 7c 48 28 0d e8 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff6598e8]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a6d555:	98 65 ff 
  a6d558:	62 91 7c 48 28 c1    	vmovaps zmm0,zmm25
  a6d55e:	62 f2 75 40 7f c1    	vpermt2ps zmm0,zmm17,zmm1
  a6d564:	62 91 7c 48 28 ca    	vmovaps zmm1,zmm26
  a6d56a:	62 f2 75 40 7f cb    	vpermt2ps zmm1,zmm17,zmm3
  a6d570:	62 f1 7c 48 10 5a 17 	vmovups zmm3,ZMMWORD PTR [rdx+0x5c0]
  a6d577:	62 71 7c 48 10 5a 16 	vmovups zmm11,ZMMWORD PTR [rdx+0x580]
  a6d57e:	62 c1 74 48 59 eb    	vmulps zmm21,zmm1,zmm11
  a6d584:	62 e2 7d 48 b8 eb    	vfmadd231ps zmm21,zmm0,zmm3
  a6d58a:	62 e1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x800],zmm21
  a6d591:	20 
  a6d592:	62 d1 7c 48 59 c3    	vmulps zmm0,zmm0,zmm11
  a6d598:	62 f2 65 48 bc c1    	vfnmadd231ps zmm0,zmm3,zmm1
  a6d59e:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm0
  a6d5a5:	0f 
  a6d5a6:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x2c0]
  a6d5ad:	0b 
  a6d5ae:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0xc0]
  a6d5b5:	03 
  a6d5b6:	62 f1 ed 48 15 c4    	vunpckhpd zmm0,zmm2,zmm4
  a6d5bc:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x80]
  a6d5c3:	02 
  a6d5c4:	62 e1 7c 48 28 74 24 	vmovaps zmm22,ZMMWORD PTR [rsp+0x40]
  a6d5cb:	01 
  a6d5cc:	62 b1 cd 48 15 ce    	vunpckhpd zmm1,zmm6,zmm22
  a6d5d2:	62 f2 0d 40 7f c1    	vpermt2ps zmm0,zmm30,zmm1
  a6d5d8:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x140]
  a6d5df:	05 
  a6d5e0:	62 b1 ad 48 15 cc    	vunpckhpd zmm1,zmm10,zmm20
  a6d5e6:	62 d1 b5 48 15 df    	vunpckhpd zmm3,zmm9,zmm15
  a6d5ec:	62 f2 0d 40 7f cb    	vpermt2ps zmm1,zmm30,zmm3
  a6d5f2:	62 f1 7c 48 10 5a 1d 	vmovups zmm3,ZMMWORD PTR [rdx+0x740]
  a6d5f9:	62 71 7c 48 10 5a 1c 	vmovups zmm11,ZMMWORD PTR [rdx+0x700]
  a6d600:	62 c1 74 48 59 eb    	vmulps zmm21,zmm1,zmm11
  a6d606:	62 e2 7d 48 b8 eb    	vfmadd231ps zmm21,zmm0,zmm3
  a6d60c:	62 e1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x7c0],zmm21
  a6d613:	1f 
  a6d614:	62 d1 7c 48 59 c3    	vmulps zmm0,zmm0,zmm11
  a6d61a:	62 f2 65 48 bc c1    	vfnmadd231ps zmm0,zmm3,zmm1
  a6d620:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x780],zmm0
  a6d627:	1e 
  a6d628:	62 e1 ed 48 14 e4    	vunpcklpd zmm20,zmm2,zmm4
  a6d62e:	62 b1 cd 48 14 c6    	vunpcklpd zmm0,zmm6,zmm22
  a6d634:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm0
  a6d63b:	03 
  a6d63c:	62 31 ad 48 14 d8    	vunpcklpd zmm11,zmm10,zmm16
  a6d642:	62 d1 b5 48 14 cf    	vunpcklpd zmm1,zmm9,zmm15
  a6d648:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm1
  a6d64f:	02 
  a6d650:	62 b1 7c 48 28 dc    	vmovaps zmm3,zmm20
  a6d656:	62 f2 75 40 7f d8    	vpermt2ps zmm3,zmm17,zmm0
  a6d65c:	62 51 7c 48 28 cb    	vmovaps zmm9,zmm11
  a6d662:	62 72 75 40 7f c9    	vpermt2ps zmm9,zmm17,zmm1
  a6d668:	62 71 7c 48 10 52 1b 	vmovups zmm10,ZMMWORD PTR [rdx+0x6c0]
  a6d66f:	62 71 7c 48 10 7a 1a 	vmovups zmm15,ZMMWORD PTR [rdx+0x680]
  a6d676:	62 c1 34 48 59 c7    	vmulps zmm16,zmm9,zmm15
  a6d67c:	62 c2 65 48 b8 c2    	vfmadd231ps zmm16,zmm3,zmm10
  a6d682:	62 e1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm16
  a6d689:	05 
  a6d68a:	62 d1 64 48 59 df    	vmulps zmm3,zmm3,zmm15
  a6d690:	62 d2 2d 48 bc d9    	vfnmadd231ps zmm3,zmm10,zmm9
  a6d696:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm3
  a6d69d:	18 
  a6d69e:	62 e1 7c 48 28 74 24 	vmovaps zmm22,ZMMWORD PTR [rsp+0x280]
  a6d6a5:	0a 
  a6d6a6:	62 61 7c 48 28 44 24 	vmovaps zmm24,ZMMWORD PTR [rsp+0x240]
  a6d6ad:	09 
  a6d6ae:	62 81 cd 40 15 c0    	vunpckhpd zmm16,zmm22,zmm24
  a6d6b4:	62 61 7c 48 28 5c 24 	vmovaps zmm27,ZMMWORD PTR [rsp+0x200]
  a6d6bb:	08 
  a6d6bc:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x1c0]
  a6d6c3:	07 
  a6d6c4:	62 61 a5 40 15 e6    	vunpckhpd zmm28,zmm27,zmm6
  a6d6ca:	62 b1 7c 48 28 d8    	vmovaps zmm3,zmm16
  a6d6d0:	62 92 75 40 7f dc    	vpermt2ps zmm3,zmm17,zmm28
  a6d6d6:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x100]
  a6d6dd:	04 
  a6d6de:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x300]
  a6d6e5:	0c 
  a6d6e6:	62 71 dd 48 15 c8    	vunpckhpd zmm9,zmm4,zmm0
  a6d6ec:	62 b1 7c 48 28 d3    	vmovaps zmm2,zmm19
  a6d6f2:	62 b1 7c 48 28 ca    	vmovaps zmm1,zmm18
  a6d6f8:	62 a1 e5 40 15 ea    	vunpckhpd zmm21,zmm19,zmm18
  a6d6fe:	62 51 7c 48 28 d1    	vmovaps zmm10,zmm9
  a6d704:	62 32 75 40 7f d5    	vpermt2ps zmm10,zmm17,zmm21
  a6d70a:	62 71 7c 48 10 7a 0f 	vmovups zmm15,ZMMWORD PTR [rdx+0x3c0]
  a6d711:	62 e1 7c 48 10 5a 0e 	vmovups zmm19,ZMMWORD PTR [rdx+0x380]
  a6d718:	62 a1 2c 48 59 d3    	vmulps zmm18,zmm10,zmm19
  a6d71e:	62 c2 65 48 b8 d7    	vfmadd231ps zmm18,zmm3,zmm15
  a6d724:	62 e1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x6c0],zmm18
  a6d72b:	1b 
  a6d72c:	62 b1 64 48 59 db    	vmulps zmm3,zmm3,zmm19
  a6d732:	62 d2 05 48 bc da    	vfnmadd231ps zmm3,zmm15,zmm10
  a6d738:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm3
  a6d73f:	17 
  a6d740:	62 71 c5 48 14 54 24 	vunpcklpd zmm10,zmm7,ZMMWORD PTR [rsp+0x380]
  a6d747:	0e 
  a6d748:	62 d1 d5 48 14 ee    	vunpcklpd zmm5,zmm5,zmm14
  a6d74e:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm5
  a6d755:	01 
  a6d756:	62 51 95 48 14 f8    	vunpcklpd zmm15,zmm13,zmm8
  a6d75c:	62 01 9d 48 14 ff    	vunpcklpd zmm31,zmm12,zmm31
  a6d762:	62 d1 7c 48 28 da    	vmovaps zmm3,zmm10
  a6d768:	62 c1 7c 48 28 d2    	vmovaps zmm18,zmm10
  a6d76e:	62 f2 75 40 7f dd    	vpermt2ps zmm3,zmm17,zmm5
  a6d774:	62 d1 7c 48 28 ef    	vmovaps zmm5,zmm15
  a6d77a:	62 92 75 40 7f ef    	vpermt2ps zmm5,zmm17,zmm31
  a6d780:	62 f1 7c 48 10 7a 02 	vmovups zmm7,ZMMWORD PTR [rdx+0x80]
  a6d787:	62 71 7c 48 10 42 03 	vmovups zmm8,ZMMWORD PTR [rdx+0xc0]
  a6d78e:	62 71 54 48 59 d7    	vmulps zmm10,zmm5,zmm7
  a6d794:	62 52 65 48 b8 d0    	vfmadd231ps zmm10,zmm3,zmm8
  a6d79a:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm10
  a6d7a1:	0e 
  a6d7a2:	62 f1 64 48 59 df    	vmulps zmm3,zmm3,zmm7
  a6d7a8:	62 f2 3d 48 bc dd    	vfnmadd231ps zmm3,zmm8,zmm5
  a6d7ae:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm3
  a6d7b5:	16 
  a6d7b6:	62 91 cd 40 14 d8    	vunpcklpd zmm3,zmm22,zmm24
  a6d7bc:	62 f1 a5 40 14 ee    	vunpcklpd zmm5,zmm27,zmm6
  a6d7c2:	62 f1 dd 48 14 f8    	vunpcklpd zmm7,zmm4,zmm0
  a6d7c8:	62 71 ed 48 14 c1    	vunpcklpd zmm8,zmm2,zmm1
  a6d7ce:	62 71 7c 48 28 d3    	vmovaps zmm10,zmm3
  a6d7d4:	62 f2 0d 40 7f dd    	vpermt2ps zmm3,zmm30,zmm5
  a6d7da:	62 71 7c 48 28 e7    	vmovaps zmm12,zmm7
  a6d7e0:	62 d2 0d 40 7f f8    	vpermt2ps zmm7,zmm30,zmm8
  a6d7e6:	62 71 7c 48 10 6a 09 	vmovups zmm13,ZMMWORD PTR [rdx+0x240]
  a6d7ed:	62 71 7c 48 10 72 08 	vmovups zmm14,ZMMWORD PTR [rdx+0x200]
  a6d7f4:	62 c1 44 48 59 de    	vmulps zmm19,zmm7,zmm14
  a6d7fa:	62 c2 65 48 b8 dd    	vfmadd231ps zmm19,zmm3,zmm13
  a6d800:	62 e1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm19
  a6d807:	04 
  a6d808:	62 d1 64 48 59 c6    	vmulps zmm0,zmm3,zmm14
  a6d80e:	62 f2 15 48 bc c7    	vfnmadd231ps zmm0,zmm13,zmm7
  a6d814:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm0
  a6d81b:	0b 
  a6d81c:	62 72 75 40 7f d5    	vpermt2ps zmm10,zmm17,zmm5
  a6d822:	62 52 75 40 7f e0    	vpermt2ps zmm12,zmm17,zmm8
  a6d828:	62 62 75 40 7f 6c 24 	vpermt2ps zmm29,zmm17,ZMMWORD PTR [rsp+0x480]
  a6d82f:	12 
  a6d830:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x500]
  a6d837:	14 
  a6d838:	62 f2 75 40 7f 54 24 	vpermt2ps zmm2,zmm17,ZMMWORD PTR [rsp+0x4c0]
  a6d83f:	13 
  a6d840:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x540]
  a6d847:	15 
  a6d848:	62 f2 75 40 7f 4c 24 	vpermt2ps zmm1,zmm17,ZMMWORD PTR [rsp+0x640]
  a6d84f:	19 
  a6d850:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x340]
  a6d857:	0d 
  a6d858:	62 f2 75 40 7f 5c 24 	vpermt2ps zmm3,zmm17,ZMMWORD PTR [rsp+0x680]
  a6d85f:	1a 
  a6d860:	62 32 0d 40 7f cd    	vpermt2ps zmm9,zmm30,zmm21
  a6d866:	62 82 0d 40 7f c4    	vpermt2ps zmm16,zmm30,zmm28
  a6d86c:	62 f1 7c 48 10 72 0d 	vmovups zmm6,ZMMWORD PTR [rdx+0x340]
  a6d873:	62 f1 7c 48 10 7a 0c 	vmovups zmm7,ZMMWORD PTR [rdx+0x300]
  a6d87a:	62 f1 7c 40 59 ef    	vmulps zmm5,zmm16,zmm7
  a6d880:	62 f2 35 48 bc ee    	vfnmadd231ps zmm5,zmm9,zmm6
  a6d886:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x8c0],zmm5
  a6d88d:	23 
  a6d88e:	62 f1 34 48 59 c7    	vmulps zmm0,zmm9,zmm7
  a6d894:	62 b2 4d 48 b8 c0    	vfmadd231ps zmm0,zmm6,zmm16
  a6d89a:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm0
  a6d8a1:	0d 
  a6d8a2:	62 f1 7c 48 10 72 13 	vmovups zmm6,ZMMWORD PTR [rdx+0x4c0]
  a6d8a9:	62 f1 7c 48 10 7a 12 	vmovups zmm7,ZMMWORD PTR [rdx+0x480]
  a6d8b0:	62 f1 64 48 59 c7    	vmulps zmm0,zmm3,zmm7
  a6d8b6:	62 f2 75 48 bc c6    	vfnmadd231ps zmm0,zmm1,zmm6
  a6d8bc:	62 71 7c 48 28 c0    	vmovaps zmm8,zmm0
  a6d8c2:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x900],zmm0
  a6d8c9:	24 
  a6d8ca:	62 e1 74 48 59 ff    	vmulps zmm23,zmm1,zmm7
  a6d8d0:	62 e2 4d 48 b8 fb    	vfmadd231ps zmm23,zmm6,zmm3
  a6d8d6:	62 f1 7c 48 10 72 07 	vmovups zmm6,ZMMWORD PTR [rdx+0x1c0]
  a6d8dd:	62 f1 7c 48 10 7a 06 	vmovups zmm7,ZMMWORD PTR [rdx+0x180]
  a6d8e4:	62 f1 6c 48 59 c7    	vmulps zmm0,zmm2,zmm7
  a6d8ea:	62 f2 15 40 bc c6    	vfnmadd231ps zmm0,zmm29,zmm6
  a6d8f0:	62 f1 7c 48 28 d8    	vmovaps zmm3,zmm0
  a6d8f6:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm0
  a6d8fd:	11 
  a6d8fe:	62 e1 14 40 59 f7    	vmulps zmm22,zmm29,zmm7
  a6d904:	62 e2 4d 48 b8 f2    	vfmadd231ps zmm22,zmm6,zmm2
  a6d90a:	62 72 0d 40 7f 5c 24 	vpermt2ps zmm11,zmm30,ZMMWORD PTR [rsp+0x80]
  a6d911:	02 
  a6d912:	62 e2 0d 40 7f 64 24 	vpermt2ps zmm20,zmm30,ZMMWORD PTR [rsp+0xc0]
  a6d919:	03 
  a6d91a:	62 f1 7c 48 10 62 19 	vmovups zmm4,ZMMWORD PTR [rdx+0x640]
  a6d921:	62 f1 7c 48 10 72 18 	vmovups zmm6,ZMMWORD PTR [rdx+0x600]
  a6d928:	62 61 5c 40 59 e6    	vmulps zmm28,zmm20,zmm6
  a6d92e:	62 62 25 48 bc e4    	vfnmadd231ps zmm28,zmm11,zmm4
  a6d934:	62 e1 24 48 59 de    	vmulps zmm19,zmm11,zmm6
  a6d93a:	62 a2 5d 48 b8 dc    	vfmadd231ps zmm19,zmm4,zmm20
  a6d940:	62 f1 7c 48 10 42 0b 	vmovups zmm0,ZMMWORD PTR [rdx+0x2c0]
  a6d947:	62 f1 7c 48 10 4a 0a 	vmovups zmm1,ZMMWORD PTR [rdx+0x280]
  a6d94e:	62 f1 1c 48 59 d1    	vmulps zmm2,zmm12,zmm1
  a6d954:	62 f2 2d 48 b8 d0    	vfmadd231ps zmm2,zmm10,zmm0
  a6d95a:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm2
  a6d961:	03 
  a6d962:	62 f1 2c 48 59 c9    	vmulps zmm1,zmm10,zmm1
  a6d968:	62 d2 7d 48 bc cc    	vfnmadd231ps zmm1,zmm0,zmm12
  a6d96e:	62 61 7c 48 28 d9    	vmovaps zmm27,zmm1
  a6d974:	62 62 0d 40 7f 4c 24 	vpermt2ps zmm25,zmm30,ZMMWORD PTR [rsp+0x740]
  a6d97b:	1d 
  a6d97c:	62 62 0d 40 7f 54 24 	vpermt2ps zmm26,zmm30,ZMMWORD PTR [rsp+0x700]
  a6d983:	1c 
  a6d984:	62 f1 7c 48 10 42 15 	vmovups zmm0,ZMMWORD PTR [rdx+0x540]
  a6d98b:	62 f1 7c 48 10 4a 14 	vmovups zmm1,ZMMWORD PTR [rdx+0x500]
  a6d992:	62 f1 2c 40 59 d1    	vmulps zmm2,zmm26,zmm1
  a6d998:	62 f2 35 40 b8 d0    	vfmadd231ps zmm2,zmm25,zmm0
  a6d99e:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm2
  a6d9a5:	0a 
  a6d9a6:	62 f1 34 40 59 c9    	vmulps zmm1,zmm25,zmm1
  a6d9ac:	62 92 7d 48 bc ca    	vfnmadd231ps zmm1,zmm0,zmm26
  a6d9b2:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm1
  a6d9b9:	07 
  a6d9ba:	62 12 0d 40 7f ff    	vpermt2ps zmm15,zmm30,zmm31
  a6d9c0:	62 71 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm15
  a6d9c7:	02 
  a6d9c8:	62 e2 0d 40 7f 54 24 	vpermt2ps zmm18,zmm30,ZMMWORD PTR [rsp+0x40]
  a6d9cf:	01 
  a6d9d0:	62 e1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm18
  a6d9d7:	09 
  a6d9d8:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x180]
  a6d9df:	06 
  a6d9e0:	62 f1 7c 48 5c 44 24 	vsubps zmm0,zmm0,ZMMWORD PTR [rsp+0x400]
  a6d9e7:	10 
  a6d9e8:	62 61 7c 48 28 44 24 	vmovaps zmm24,ZMMWORD PTR [rsp+0x780]
  a6d9ef:	1e 
  a6d9f0:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x3c0]
  a6d9f7:	0f 
  a6d9f8:	62 91 74 48 5c f0    	vsubps zmm6,zmm1,zmm24
  a6d9fe:	62 f2 7d 48 18 0d 50 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff607d50]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a6da05:	7d 60 ff 
  a6da08:	62 f1 4c 48 59 d1    	vmulps zmm2,zmm6,zmm1
  a6da0e:	62 f2 7d 48 18 25 88 	vbroadcastss zmm4,DWORD PTR [rip+0xffffffffff607988]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a6da15:	79 60 ff 
  a6da18:	62 f2 7d 48 b8 d4    	vfmadd231ps zmm2,zmm0,zmm4
  a6da1e:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm2
  a6da25:	08 
  a6da26:	62 61 7c 48 59 d1    	vmulps zmm26,zmm0,zmm1
  a6da2c:	62 62 5d 48 bc d6    	vfnmadd231ps zmm26,zmm4,zmm6
  a6da32:	62 e1 7c 48 28 6c 24 	vmovaps zmm21,ZMMWORD PTR [rsp+0x600]
  a6da39:	18 
  a6da3a:	62 e1 7c 48 28 44 24 	vmovaps zmm16,ZMMWORD PTR [rsp+0x5c0]
  a6da41:	17 
  a6da42:	62 b1 54 40 5c c0    	vsubps zmm0,zmm21,zmm16
  a6da48:	62 71 7c 48 28 64 24 	vmovaps zmm12,ZMMWORD PTR [rsp+0x580]
  a6da4f:	16 
  a6da50:	62 f1 1c 48 5c 74 24 	vsubps zmm6,zmm12,ZMMWORD PTR [rsp+0x2c0]
  a6da57:	0b 
  a6da58:	62 f1 4c 48 59 d1    	vmulps zmm2,zmm6,zmm1
  a6da5e:	62 f2 7d 48 b8 d4    	vfmadd231ps zmm2,zmm0,zmm4
  a6da64:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm2
  a6da6b:	01 
  a6da6c:	62 e1 7c 48 59 d1    	vmulps zmm18,zmm0,zmm1
  a6da72:	62 e2 5d 48 bc d6    	vfnmadd231ps zmm18,zmm4,zmm6
  a6da78:	62 91 64 48 5c c4    	vsubps zmm0,zmm3,zmm28
  a6da7e:	62 d1 54 48 5c f0    	vsubps zmm6,zmm5,zmm8
  a6da84:	62 f1 4c 48 59 d1    	vmulps zmm2,zmm6,zmm1
  a6da8a:	62 f2 7d 48 b8 d4    	vfmadd231ps zmm2,zmm0,zmm4
  a6da90:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm2
  a6da97:	0c 
  a6da98:	62 61 7c 48 59 f9    	vmulps zmm31,zmm0,zmm1
  a6da9e:	62 62 5d 48 bc fe    	vfnmadd231ps zmm31,zmm4,zmm6
  a6daa4:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x880]
  a6daab:	22 
  a6daac:	62 61 7c 48 28 6c 24 	vmovaps zmm29,ZMMWORD PTR [rsp+0x840]
  a6dab3:	21 
  a6dab4:	62 91 2c 48 5c c5    	vsubps zmm0,zmm10,zmm29
  a6daba:	62 71 7c 48 28 5c 24 	vmovaps zmm11,ZMMWORD PTR [rsp+0x800]
  a6dac1:	20 
  a6dac2:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x7c0]
  a6dac9:	1f 
  a6daca:	62 d1 24 48 5c f1    	vsubps zmm6,zmm11,zmm9
  a6dad0:	62 71 4c 48 59 f9    	vmulps zmm15,zmm6,zmm1
  a6dad6:	62 72 7d 48 b8 fc    	vfmadd231ps zmm15,zmm0,zmm4
  a6dadc:	62 71 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x740],zmm15
  a6dae3:	1d 
  a6dae4:	62 e1 7c 48 59 c9    	vmulps zmm17,zmm0,zmm1
  a6daea:	62 e2 5d 48 bc ce    	vfnmadd231ps zmm17,zmm4,zmm6
  a6daf0:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x140]
  a6daf7:	05 
  a6daf8:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x6c0]
  a6daff:	1b 
  a6db00:	62 f1 54 48 5c f3    	vsubps zmm6,zmm5,zmm3
  a6db06:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x380]
  a6db0d:	0e 
  a6db0e:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x100]
  a6db15:	04 
  a6db16:	62 f1 6c 48 5c f8    	vsubps zmm7,zmm2,zmm0
  a6db1c:	62 61 44 48 59 f1    	vmulps zmm30,zmm7,zmm1
  a6db22:	62 62 4d 48 b8 f4    	vfmadd231ps zmm30,zmm6,zmm4
  a6db28:	62 61 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm30
  a6db2f:	1a 
  a6db30:	62 e1 4c 48 59 e1    	vmulps zmm20,zmm6,zmm1
  a6db36:	62 e2 5d 48 bc e7    	vfnmadd231ps zmm20,zmm4,zmm7
  a6db3c:	62 b1 4c 40 5c fb    	vsubps zmm7,zmm22,zmm19
  a6db42:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x340]
  a6db49:	0d 
  a6db4a:	62 31 4c 48 5c c7    	vsubps zmm8,zmm6,zmm23
  a6db50:	62 71 3c 48 59 e9    	vmulps zmm13,zmm8,zmm1
  a6db56:	62 72 45 48 b8 ec    	vfmadd231ps zmm13,zmm7,zmm4
  a6db5c:	62 71 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x700],zmm13
  a6db63:	1c 
  a6db64:	62 71 44 48 59 f1    	vmulps zmm14,zmm7,zmm1
  a6db6a:	62 72 3d 48 bc f4    	vfnmadd231ps zmm14,zmm8,zmm4
  a6db70:	62 51 24 48 58 d9    	vaddps zmm11,zmm11,zmm9
  a6db76:	62 01 2c 48 58 ed    	vaddps zmm29,zmm10,zmm29
  a6db7c:	62 71 6c 48 58 e8    	vaddps zmm13,zmm2,zmm0
  a6db82:	62 71 54 48 58 d3    	vaddps zmm10,zmm5,zmm3
  a6db88:	62 21 4c 48 58 cf    	vaddps zmm25,zmm6,zmm23
  a6db8e:	62 a1 4c 40 58 db    	vaddps zmm19,zmm22,zmm19
  a6db94:	62 f1 3c 40 58 6c 24 	vaddps zmm5,zmm24,ZMMWORD PTR [rsp+0x3c0]
  a6db9b:	0f 
  a6db9c:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x400]
  a6dba3:	10 
  a6dba4:	62 71 7c 48 58 44 24 	vaddps zmm8,zmm0,ZMMWORD PTR [rsp+0x180]
  a6dbab:	06 
  a6dbac:	62 f1 1c 48 58 5c 24 	vaddps zmm3,zmm12,ZMMWORD PTR [rsp+0x2c0]
  a6dbb3:	0b 
  a6dbb4:	62 b1 54 40 58 f8    	vaddps zmm7,zmm21,zmm16
  a6dbba:	62 f2 7d 48 18 0d 24 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff607b24]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a6dbc1:	7b 60 ff 
  a6dbc4:	62 e1 7c 48 28 f9    	vmovaps zmm23,zmm1
  a6dbca:	62 91 7c 48 28 c3    	vmovaps zmm0,zmm27
  a6dbd0:	62 61 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm27
  a6dbd7:	19 
  a6dbd8:	62 82 3d 48 a8 fb    	vfmadd213ps zmm23,zmm8,zmm27
  a6dbde:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x840],zmm8
  a6dbe5:	21 
  a6dbe6:	62 72 7d 48 18 0d 54 	vbroadcastss zmm9,DWORD PTR [rip+0xffffffffff607a54]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a6dbed:	7a 60 ff 
  a6dbf0:	62 c2 55 48 bc f9    	vfnmadd231ps zmm23,zmm5,zmm9
  a6dbf6:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x800],zmm5
  a6dbfd:	20 
  a6dbfe:	62 e1 7c 48 28 f1    	vmovaps zmm22,zmm1
  a6dc04:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x1c0]
  a6dc0b:	07 
  a6dc0c:	62 e2 45 48 a8 f6    	vfmadd213ps zmm22,zmm7,zmm6
  a6dc12:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x7c0],zmm7
  a6dc19:	1f 
  a6dc1a:	62 c2 65 48 bc f1    	vfnmadd231ps zmm22,zmm3,zmm9
  a6dc20:	62 e1 7c 48 28 eb    	vmovaps zmm21,zmm3
  a6dc26:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x780],zmm3
  a6dc2d:	1e 
  a6dc2e:	62 d1 44 40 5c df    	vsubps zmm3,zmm23,zmm15
  a6dc34:	62 91 4c 40 5c e6    	vsubps zmm4,zmm22,zmm30
  a6dc3a:	62 f1 64 48 5c d4    	vsubps zmm2,zmm3,zmm4
  a6dc40:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm2
  a6dc47:	05 
  a6dc48:	62 f1 64 48 58 d4    	vaddps zmm2,zmm3,zmm4
  a6dc4e:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm2
  a6dc55:	06 
  a6dc56:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x8c0]
  a6dc5d:	23 
  a6dc5e:	62 61 6c 48 58 5c 24 	vaddps zmm27,zmm2,ZMMWORD PTR [rsp+0x900]
  a6dc65:	24 
  a6dc66:	62 61 1c 40 58 74 24 	vaddps zmm30,zmm28,ZMMWORD PTR [rsp+0x440]
  a6dc6d:	11 
  a6dc6e:	62 61 7c 48 28 e1    	vmovaps zmm28,zmm1
  a6dc74:	62 71 7c 48 28 7c 24 	vmovaps zmm15,ZMMWORD PTR [rsp+0xc0]
  a6dc7b:	03 
  a6dc7c:	62 42 15 40 a8 e7    	vfmadd213ps zmm28,zmm29,zmm15
  a6dc82:	62 42 25 48 bc e1    	vfnmadd231ps zmm28,zmm11,zmm9
  a6dc88:	62 51 7c 48 28 e3    	vmovaps zmm12,zmm11
  a6dc8e:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm11
  a6dc95:	15 
  a6dc96:	62 61 7c 48 28 c1    	vmovaps zmm24,zmm1
  a6dc9c:	62 e1 7c 48 28 44 24 	vmovaps zmm16,ZMMWORD PTR [rsp+0x280]
  a6dca3:	0a 
  a6dca4:	62 22 2d 48 a8 c0    	vfmadd213ps zmm24,zmm10,zmm16
  a6dcaa:	62 51 7c 48 28 da    	vmovaps zmm11,zmm10
  a6dcb0:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm10
  a6dcb7:	14 
  a6dcb8:	62 42 15 48 bc c1    	vfnmadd231ps zmm24,zmm13,zmm9
  a6dcbe:	62 71 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm13
  a6dcc5:	13 
  a6dcc6:	62 f1 1c 40 58 54 24 	vaddps zmm2,zmm28,ZMMWORD PTR [rsp+0x200]
  a6dccd:	08 
  a6dcce:	62 f1 3c 40 58 5c 24 	vaddps zmm3,zmm24,ZMMWORD PTR [rsp+0x40]
  a6dcd5:	01 
  a6dcd6:	62 f1 6c 48 58 e3    	vaddps zmm4,zmm2,zmm3
  a6dcdc:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm4
  a6dce3:	10 
  a6dce4:	62 f1 6c 48 5c d3    	vsubps zmm2,zmm2,zmm3
  a6dcea:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm2
  a6dcf1:	04 
  a6dcf2:	62 d1 7c 48 28 d1    	vmovaps zmm2,zmm9
  a6dcf8:	62 f2 3d 48 ac d0    	vfnmadd213ps zmm2,zmm8,zmm0
  a6dcfe:	62 f2 55 48 b8 d1    	vfmadd231ps zmm2,zmm5,zmm1
  a6dd04:	62 d1 7c 48 28 e9    	vmovaps zmm5,zmm9
  a6dd0a:	62 f2 45 48 ac ee    	vfnmadd213ps zmm5,zmm7,zmm6
  a6dd10:	62 f2 55 40 b8 e9    	vfmadd231ps zmm5,zmm21,zmm1
  a6dd16:	62 b1 6c 48 5c d9    	vsubps zmm3,zmm2,zmm17
  a6dd1c:	62 b1 54 48 5c e4    	vsubps zmm4,zmm5,zmm20
  a6dd22:	62 f1 64 48 5c c4    	vsubps zmm0,zmm3,zmm4
  a6dd28:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x880],zmm0
  a6dd2f:	22 
  a6dd30:	62 f1 64 48 58 c4    	vaddps zmm0,zmm3,zmm4
  a6dd36:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm0
  a6dd3d:	0f 
  a6dd3e:	62 f1 7c 48 28 e1    	vmovaps zmm4,zmm1
  a6dd44:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x80]
  a6dd4b:	02 
  a6dd4c:	62 e1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm19
  a6dd53:	12 
  a6dd54:	62 f2 65 40 a8 e3    	vfmadd213ps zmm4,zmm19,zmm3
  a6dd5a:	62 d2 35 40 bc e1    	vfnmadd231ps zmm4,zmm25,zmm9
  a6dd60:	62 f1 7c 48 28 f1    	vmovaps zmm6,zmm1
  a6dd66:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x240]
  a6dd6d:	09 
  a6dd6e:	62 f2 0d 40 a8 f0    	vfmadd213ps zmm6,zmm30,zmm0
  a6dd74:	62 d2 25 40 bc f1    	vfnmadd231ps zmm6,zmm27,zmm9
  a6dd7a:	62 51 7c 48 28 d1    	vmovaps zmm10,zmm9
  a6dd80:	62 52 15 40 ac d7    	vfnmadd213ps zmm10,zmm29,zmm15
  a6dd86:	62 72 1d 48 b8 d1    	vfmadd231ps zmm10,zmm12,zmm1
  a6dd8c:	62 51 7c 48 28 f9    	vmovaps zmm15,zmm9
  a6dd92:	62 32 25 48 ac f8    	vfnmadd213ps zmm15,zmm11,zmm16
  a6dd98:	62 72 15 48 b8 f9    	vfmadd231ps zmm15,zmm13,zmm1
  a6dd9e:	62 c1 7c 48 28 c1    	vmovaps zmm16,zmm9
  a6dda4:	62 e2 65 40 ac c3    	vfnmadd213ps zmm16,zmm19,zmm3
  a6ddaa:	62 e2 35 40 b8 c1    	vfmadd231ps zmm16,zmm25,zmm1
  a6ddb0:	62 91 7c 48 28 d9    	vmovaps zmm3,zmm25
  a6ddb6:	62 72 0d 40 ac c8    	vfnmadd213ps zmm9,zmm30,zmm0
  a6ddbc:	62 72 25 40 b8 c9    	vfmadd231ps zmm9,zmm27,zmm1
  a6ddc2:	62 91 2c 48 58 ca    	vaddps zmm1,zmm10,zmm26
  a6ddc8:	62 b1 04 48 58 c2    	vaddps zmm0,zmm15,zmm18
  a6ddce:	62 f1 74 48 58 f8    	vaddps zmm7,zmm1,zmm0
  a6ddd4:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm7
  a6dddb:	0e 
  a6dddc:	62 f1 74 48 5c c0    	vsubps zmm0,zmm1,zmm0
  a6dde2:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x6c0],zmm0
  a6dde9:	1b 
  a6ddea:	62 b1 04 40 58 c0    	vaddps zmm0,zmm31,zmm16
  a6ddf0:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm0
  a6ddf7:	18 
  a6ddf8:	62 91 7c 40 5c cf    	vsubps zmm1,zmm16,zmm31
  a6ddfe:	62 91 2c 48 5c fa    	vsubps zmm7,zmm10,zmm26
  a6de04:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm7
  a6de0b:	16 
  a6de0c:	62 21 04 48 5c fa    	vsubps zmm31,zmm15,zmm18
  a6de12:	62 d1 34 48 5c c6    	vsubps zmm0,zmm9,zmm14
  a6de18:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm0
  a6de1f:	17 
  a6de20:	62 c1 34 48 58 d6    	vaddps zmm18,zmm9,zmm14
  a6de26:	62 a1 6c 48 58 c1    	vaddps zmm16,zmm2,zmm17
  a6de2c:	62 f2 7d 48 18 05 2a 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff60762a]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a6de33:	76 60 ff 
  a6de36:	62 31 54 48 58 fc    	vaddps zmm15,zmm5,zmm20
  a6de3c:	62 91 44 48 58 ef    	vaddps zmm5,zmm7,zmm31
  a6de42:	62 f1 74 48 58 d5    	vaddps zmm2,zmm1,zmm5
  a6de48:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm2
  a6de4f:	0b 
  a6de50:	62 f2 7d 48 ac e9    	vfnmadd213ps zmm5,zmm0,zmm1
  a6de56:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm5
  a6de5d:	11 
  a6de5e:	62 71 7c 48 28 c8    	vmovaps zmm9,zmm0
  a6de64:	62 71 7c 48 28 d0    	vmovaps zmm10,zmm0
  a6de6a:	62 f1 7c 48 28 c8    	vmovaps zmm1,zmm0
  a6de70:	62 e1 7c 48 28 e0    	vmovaps zmm20,zmm0
  a6de76:	62 c1 7c 40 58 cf    	vaddps zmm17,zmm16,zmm15
  a6de7c:	62 e1 7c 48 28 e8    	vmovaps zmm21,zmm0
  a6de82:	62 61 7c 48 28 c8    	vmovaps zmm25,zmm0
  a6de88:	62 f1 7c 48 28 d0    	vmovaps zmm2,zmm0
  a6de8e:	62 f1 7c 48 28 e8    	vmovaps zmm5,zmm0
  a6de94:	62 b2 75 40 ac c2    	vfnmadd213ps zmm0,zmm17,zmm18
  a6de9a:	62 b1 6c 40 58 f9    	vaddps zmm7,zmm18,zmm17
  a6dea0:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm7
  a6dea7:	0d 
  a6dea8:	62 71 1c 40 5c 5c 24 	vsubps zmm11,zmm28,ZMMWORD PTR [rsp+0x200]
  a6deaf:	08 
  a6deb0:	62 71 3c 40 5c 44 24 	vsubps zmm8,zmm24,ZMMWORD PTR [rsp+0x40]
  a6deb7:	01 
  a6deb8:	62 e1 7c 48 28 5c 24 	vmovaps zmm19,ZMMWORD PTR [rsp+0x300]
  a6debf:	0c 
  a6dec0:	62 e1 64 40 58 d4    	vaddps zmm18,zmm19,zmm4
  a6dec6:	62 a1 5c 48 5c cb    	vsubps zmm17,zmm4,zmm19
  a6decc:	62 f1 44 40 58 64 24 	vaddps zmm4,zmm23,ZMMWORD PTR [rsp+0x740]
  a6ded3:	1d 
  a6ded4:	62 71 4c 40 58 6c 24 	vaddps zmm13,zmm22,ZMMWORD PTR [rsp+0x680]
  a6dedb:	1a 
  a6dedc:	62 41 5c 48 5c c5    	vsubps zmm24,zmm4,zmm13
  a6dee2:	62 51 5c 48 58 ed    	vaddps zmm13,zmm4,zmm13
  a6dee8:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x700]
  a6deef:	1c 
  a6def0:	62 f1 4c 48 5c e7    	vsubps zmm4,zmm6,zmm7
  a6def6:	62 71 4c 48 58 e7    	vaddps zmm12,zmm6,zmm7
  a6defc:	62 41 24 48 58 d0    	vaddps zmm26,zmm11,zmm8
  a6df02:	62 51 24 48 5c c0    	vsubps zmm8,zmm11,zmm8
  a6df08:	62 f1 14 40 58 74 24 	vaddps zmm6,zmm29,ZMMWORD PTR [rsp+0xc0]
  a6df0f:	03 
  a6df10:	62 f1 4c 48 58 74 24 	vaddps zmm6,zmm6,ZMMWORD PTR [rsp+0x540]
  a6df17:	15 
  a6df18:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x280]
  a6df1f:	0a 
  a6df20:	62 71 44 48 58 5c 24 	vaddps zmm11,zmm7,ZMMWORD PTR [rsp+0x500]
  a6df27:	14 
  a6df28:	62 71 24 48 58 5c 24 	vaddps zmm11,zmm11,ZMMWORD PTR [rsp+0x4c0]
  a6df2f:	13 
  a6df30:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x80]
  a6df37:	02 
  a6df38:	62 71 44 48 58 74 24 	vaddps zmm14,zmm7,ZMMWORD PTR [rsp+0x480]
  a6df3f:	12 
  a6df40:	62 c1 64 48 58 de    	vaddps zmm19,zmm3,zmm14
  a6df46:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x640]
  a6df4d:	19 
  a6df4e:	62 71 64 48 58 74 24 	vaddps zmm14,zmm3,ZMMWORD PTR [rsp+0x840]
  a6df55:	21 
  a6df56:	62 71 0c 48 58 74 24 	vaddps zmm14,zmm14,ZMMWORD PTR [rsp+0x800]
  a6df5d:	20 
  a6df5e:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x1c0]
  a6df65:	07 
  a6df66:	62 61 64 48 58 64 24 	vaddps zmm28,zmm3,ZMMWORD PTR [rsp+0x7c0]
  a6df6d:	1f 
  a6df6e:	62 61 1c 40 58 64 24 	vaddps zmm28,zmm28,ZMMWORD PTR [rsp+0x780]
  a6df75:	1e 
  a6df76:	62 01 0c 48 5c ec    	vsubps zmm29,zmm14,zmm28
  a6df7c:	62 01 0c 48 58 e4    	vaddps zmm28,zmm14,zmm28
  a6df82:	62 71 0c 40 58 74 24 	vaddps zmm14,zmm30,ZMMWORD PTR [rsp+0x240]
  a6df89:	09 
  a6df8a:	62 01 0c 48 58 db    	vaddps zmm27,zmm14,zmm27
  a6df90:	62 41 4c 48 58 f3    	vaddps zmm30,zmm6,zmm11
  a6df96:	62 d1 4c 48 5c f3    	vsubps zmm6,zmm6,zmm11
  a6df9c:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x400]
  a6dfa3:	10 
  a6dfa4:	62 32 65 48 ac ca    	vfnmadd213ps zmm9,zmm3,zmm18
  a6dfaa:	62 f1 6c 40 58 db    	vaddps zmm3,zmm18,zmm3
  a6dfb0:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm3
  a6dfb7:	02 
  a6dfb8:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x180]
  a6dfbf:	06 
  a6dfc0:	62 72 65 48 ac d4    	vfnmadd213ps zmm10,zmm3,zmm4
  a6dfc6:	62 f1 5c 48 58 db    	vaddps zmm3,zmm4,zmm3
  a6dfcc:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm3
  a6dfd3:	0a 
  a6dfd4:	62 e1 7c 48 28 74 24 	vmovaps zmm22,ZMMWORD PTR [rsp+0x380]
  a6dfdb:	0e 
  a6dfdc:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x600]
  a6dfe3:	18 
  a6dfe4:	62 f2 4d 40 ac cf    	vfnmadd213ps zmm1,zmm22,zmm7
  a6dfea:	62 72 7d 48 18 1d e0 	vbroadcastss zmm11,DWORD PTR [rip+0xffffffffff6072e0]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a6dff1:	72 60 ff 
  a6dff4:	62 f1 24 48 59 64 24 	vmulps zmm4,zmm11,ZMMWORD PTR [rsp+0x880]
  a6dffb:	22 
  a6dffc:	62 f1 74 48 5c dc    	vsubps zmm3,zmm1,zmm4
  a6e002:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm3
  a6e009:	03 
  a6e00a:	62 f1 74 48 58 cc    	vaddps zmm1,zmm1,zmm4
  a6e010:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm1
  a6e017:	01 
  a6e018:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x3c0]
  a6e01f:	0f 
  a6e020:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x5c0]
  a6e027:	17 
  a6e028:	62 e2 5d 48 ac e3    	vfnmadd213ps zmm20,zmm4,zmm3
  a6e02e:	62 f1 24 48 59 4c 24 	vmulps zmm1,zmm11,ZMMWORD PTR [rsp+0x6c0]
  a6e035:	1b 
  a6e036:	62 71 5c 40 58 f1    	vaddps zmm14,zmm20,zmm1
  a6e03c:	62 e1 5c 40 5c e1    	vsubps zmm20,zmm20,zmm1
  a6e042:	62 d1 7c 40 5c cf    	vsubps zmm1,zmm16,zmm15
  a6e048:	62 71 7c 48 28 7c 24 	vmovaps zmm15,ZMMWORD PTR [rsp+0x580]
  a6e04f:	16 
  a6e050:	62 11 04 48 5c ff    	vsubps zmm15,zmm15,zmm31
  a6e056:	62 e1 24 48 59 44 24 	vmulps zmm16,zmm11,ZMMWORD PTR [rsp+0x140]
  a6e05d:	05 
  a6e05e:	62 e1 24 48 59 7c 24 	vmulps zmm23,zmm11,ZMMWORD PTR [rsp+0x100]
  a6e065:	04 
  a6e066:	62 41 3c 40 59 c3    	vmulps zmm24,zmm24,zmm11
  a6e06c:	62 51 3c 48 59 c3    	vmulps zmm8,zmm8,zmm11
  a6e072:	62 41 14 40 59 eb    	vmulps zmm29,zmm29,zmm11
  a6e078:	62 d1 4c 48 59 f3    	vmulps zmm6,zmm6,zmm11
  a6e07e:	62 41 74 48 59 fb    	vmulps zmm31,zmm1,zmm11
  a6e084:	62 51 04 48 59 db    	vmulps zmm11,zmm15,zmm11
  a6e08a:	62 a2 2d 40 ac e9    	vfnmadd213ps zmm21,zmm26,zmm17
  a6e090:	62 81 74 40 58 d2    	vaddps zmm18,zmm17,zmm26
  a6e096:	62 42 15 48 ac cc    	vfnmadd213ps zmm25,zmm13,zmm12
  a6e09c:	62 51 1c 48 58 fd    	vaddps zmm15,zmm12,zmm13
  a6e0a2:	62 b2 0d 40 ac d3    	vfnmadd213ps zmm2,zmm30,zmm19
  a6e0a8:	62 91 6c 48 5c cd    	vsubps zmm1,zmm2,zmm29
  a6e0ae:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm1
  a6e0b5:	09 
  a6e0b6:	62 81 6c 48 58 cd    	vaddps zmm17,zmm2,zmm29
  a6e0bc:	62 92 1d 40 ac eb    	vfnmadd213ps zmm5,zmm28,zmm27
  a6e0c2:	62 71 54 48 58 ee    	vaddps zmm13,zmm5,zmm6
  a6e0c8:	62 f1 54 48 5c ce    	vsubps zmm1,zmm5,zmm6
  a6e0ce:	62 b1 34 48 58 f0    	vaddps zmm6,zmm9,zmm16
  a6e0d4:	62 b1 34 48 5c e8    	vsubps zmm5,zmm9,zmm16
  a6e0da:	62 b1 2c 48 5c d7    	vsubps zmm2,zmm10,zmm23
  a6e0e0:	62 21 2c 48 58 d7    	vaddps zmm26,zmm10,zmm23
  a6e0e6:	62 a1 44 48 58 c6    	vaddps zmm16,zmm7,zmm22
  a6e0ec:	62 e1 64 48 58 fc    	vaddps zmm23,zmm3,zmm4
  a6e0f2:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x440]
  a6e0f9:	11 
  a6e0fa:	62 91 5c 48 5c df    	vsubps zmm3,zmm4,zmm31
  a6e100:	62 11 5c 48 58 e7    	vaddps zmm12,zmm4,zmm31
  a6e106:	62 41 7c 48 58 eb    	vaddps zmm29,zmm0,zmm11
  a6e10c:	62 d1 7c 48 5c c3    	vsubps zmm0,zmm0,zmm11
  a6e112:	62 11 54 40 58 d8    	vaddps zmm11,zmm21,zmm24
  a6e118:	62 11 54 40 5c c8    	vsubps zmm9,zmm21,zmm24
  a6e11e:	62 41 34 40 5c c0    	vsubps zmm24,zmm25,zmm8
  a6e124:	62 51 34 40 58 c0    	vaddps zmm8,zmm25,zmm8
  a6e12a:	62 11 64 40 58 d6    	vaddps zmm10,zmm19,zmm30
  a6e130:	62 81 24 40 58 f4    	vaddps zmm22,zmm27,zmm28
  a6e136:	62 61 7c 48 28 1d 80 	vmovaps zmm27,ZMMWORD PTR [rip+0xffffffffff626480]        # 945c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21a70>
  a6e13d:	64 62 ff 
  a6e140:	62 c2 25 40 7f f2    	vpermt2ps zmm22,zmm27,zmm10
  a6e146:	62 52 25 40 7f c1    	vpermt2ps zmm8,zmm27,zmm9
  a6e14c:	62 d2 25 40 7f c4    	vpermt2ps zmm0,zmm27,zmm12
  a6e152:	62 a2 25 40 7f f8    	vpermt2ps zmm23,zmm27,zmm16
  a6e158:	62 62 25 40 7f d5    	vpermt2ps zmm26,zmm27,zmm5
  a6e15e:	62 b2 25 40 7f c9    	vpermt2ps zmm1,zmm27,zmm17
  a6e164:	62 32 25 40 7f fa    	vpermt2ps zmm15,zmm27,zmm18
  a6e16a:	62 62 25 40 7f eb    	vpermt2ps zmm29,zmm27,zmm3
  a6e170:	62 e2 25 40 7f 64 24 	vpermt2ps zmm20,zmm27,ZMMWORD PTR [rsp+0x40]
  a6e177:	01 
  a6e178:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x280]
  a6e17f:	0a 
  a6e180:	62 f2 25 40 7f 64 24 	vpermt2ps zmm4,zmm27,ZMMWORD PTR [rsp+0x80]
  a6e187:	02 
  a6e188:	62 72 25 40 7f 6c 24 	vpermt2ps zmm13,zmm27,ZMMWORD PTR [rsp+0x240]
  a6e18f:	09 
  a6e190:	62 42 25 40 7f c3    	vpermt2ps zmm24,zmm27,zmm11
  a6e196:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x340]
  a6e19d:	0d 
  a6e19e:	62 f2 25 40 7f 5c 24 	vpermt2ps zmm3,zmm27,ZMMWORD PTR [rsp+0x2c0]
  a6e1a5:	0b 
  a6e1a6:	62 72 25 40 7f 74 24 	vpermt2ps zmm14,zmm27,ZMMWORD PTR [rsp+0xc0]
  a6e1ad:	03 
  a6e1ae:	62 f2 25 40 7f d6    	vpermt2ps zmm2,zmm27,zmm6
  a6e1b4:	62 e1 7c 48 11 36    	vmovups ZMMWORD PTR [rsi],zmm22
  a6e1ba:	62 71 7c 48 11 46 01 	vmovups ZMMWORD PTR [rsi+0x40],zmm8
  a6e1c1:	62 f1 7c 48 11 46 02 	vmovups ZMMWORD PTR [rsi+0x80],zmm0
  a6e1c8:	62 e1 7c 48 11 7e 03 	vmovups ZMMWORD PTR [rsi+0xc0],zmm23
  a6e1cf:	62 61 7c 48 11 56 04 	vmovups ZMMWORD PTR [rsi+0x100],zmm26
  a6e1d6:	62 f1 7c 48 11 4e 05 	vmovups ZMMWORD PTR [rsi+0x140],zmm1
  a6e1dd:	62 71 7c 48 11 7e 06 	vmovups ZMMWORD PTR [rsi+0x180],zmm15
  a6e1e4:	62 61 7c 48 11 6e 07 	vmovups ZMMWORD PTR [rsi+0x1c0],zmm29
  a6e1eb:	62 e1 7c 48 11 66 08 	vmovups ZMMWORD PTR [rsi+0x200],zmm20
  a6e1f2:	62 f1 7c 48 11 66 09 	vmovups ZMMWORD PTR [rsi+0x240],zmm4
  a6e1f9:	62 71 7c 48 11 6e 0a 	vmovups ZMMWORD PTR [rsi+0x280],zmm13
  a6e200:	62 61 7c 48 11 46 0b 	vmovups ZMMWORD PTR [rsi+0x2c0],zmm24
  a6e207:	62 f1 7c 48 11 5e 0c 	vmovups ZMMWORD PTR [rsi+0x300],zmm3
  a6e20e:	62 71 7c 48 11 76 0d 	vmovups ZMMWORD PTR [rsi+0x340],zmm14
  a6e215:	62 f1 7c 48 11 56 0e 	vmovups ZMMWORD PTR [rsi+0x380],zmm2
  a6e21c:	48 89 ec             	mov    rsp,rbp
  a6e21f:	5d                   	pop    rbp
  a6e220:	c5 f8 77             	vzeroupper
  a6e223:	c3                   	ret
