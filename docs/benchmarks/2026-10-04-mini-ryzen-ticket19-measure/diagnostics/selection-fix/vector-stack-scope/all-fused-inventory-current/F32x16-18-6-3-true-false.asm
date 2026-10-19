
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a13ac0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a13ac0:	55                   	push   rbp
  a13ac1:	48 89 e5             	mov    rbp,rsp
  a13ac4:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a13ac8:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  a13acf:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  a13ad4:	48 8d 44 24 40       	lea    rax,[rsp+0x40]
  a13ad9:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  a13ade:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  a13ae3:	c5 fb 10 47 10       	vmovsd xmm0,QWORD PTR [rdi+0x10]
  a13ae8:	c5 f8 10 0f          	vmovups xmm1,XMMWORD PTR [rdi]
  a13aec:	c5 f8 10 57 18       	vmovups xmm2,XMMWORD PTR [rdi+0x18]
  a13af1:	c5 f8 10 5f 30       	vmovups xmm3,XMMWORD PTR [rdi+0x30]
  a13af6:	c5 f8 10 7f 48       	vmovups xmm7,XMMWORD PTR [rdi+0x48]
  a13afb:	62 f3 75 48 18 e0 01 	vinsertf32x4 zmm4,zmm1,xmm0,0x1
  a13b02:	62 71 7c 48 28 05 b4 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff67b6b4]        # 8f1c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c670>
  a13b09:	b6 67 ff 
  a13b0c:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a13b10:	62 f1 7c 48 28 ec    	vmovaps zmm5,zmm4
  a13b16:	62 f2 3d 48 7f e8    	vpermt2ps zmm5,zmm8,zmm0
  a13b1c:	62 f1 7c 48 28 0d da 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff67b6da]        # 8f200 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c6b0>
  a13b23:	b6 67 ff 
  a13b26:	62 f2 75 48 7f e0    	vpermt2ps zmm4,zmm1,zmm0
  a13b2c:	c5 fb 10 77 28       	vmovsd xmm6,QWORD PTR [rdi+0x28]
  a13b31:	62 f3 6d 48 18 f6 01 	vinsertf32x4 zmm6,zmm2,xmm6,0x1
  a13b38:	62 71 7c 48 28 ce    	vmovaps zmm9,zmm6
  a13b3e:	62 72 3d 48 7f c8    	vpermt2ps zmm9,zmm8,zmm0
  a13b44:	62 f2 75 48 7f f0    	vpermt2ps zmm6,zmm1,zmm0
  a13b4a:	c5 fb 10 57 40       	vmovsd xmm2,QWORD PTR [rdi+0x40]
  a13b4f:	62 73 65 48 18 d2 01 	vinsertf32x4 zmm10,zmm3,xmm2,0x1
  a13b56:	62 51 7c 48 28 da    	vmovaps zmm11,zmm10
  a13b5c:	62 72 3d 48 7f d8    	vpermt2ps zmm11,zmm8,zmm0
  a13b62:	62 72 75 48 7f d0    	vpermt2ps zmm10,zmm1,zmm0
  a13b68:	c5 fb 10 57 58       	vmovsd xmm2,QWORD PTR [rdi+0x58]
  a13b6d:	62 73 45 48 18 e2 01 	vinsertf32x4 zmm12,zmm7,xmm2,0x1
  a13b74:	62 51 7c 48 28 ec    	vmovaps zmm13,zmm12
  a13b7a:	62 72 3d 48 7f e8    	vpermt2ps zmm13,zmm8,zmm0
  a13b80:	62 72 75 48 7f e0    	vpermt2ps zmm12,zmm1,zmm0
  a13b86:	c5 fb 10 57 70       	vmovsd xmm2,QWORD PTR [rdi+0x70]
  a13b8b:	c5 f8 10 5f 60       	vmovups xmm3,XMMWORD PTR [rdi+0x60]
  a13b90:	62 73 65 48 18 f2 01 	vinsertf32x4 zmm14,zmm3,xmm2,0x1
  a13b97:	62 51 7c 48 28 fe    	vmovaps zmm15,zmm14
  a13b9d:	62 72 3d 48 7f f8    	vpermt2ps zmm15,zmm8,zmm0
  a13ba3:	62 72 75 48 7f f0    	vpermt2ps zmm14,zmm1,zmm0
  a13ba9:	c5 fb 10 97 88 00 00 	vmovsd xmm2,QWORD PTR [rdi+0x88]
  a13bb0:	00 
  a13bb1:	c5 f8 10 5f 78       	vmovups xmm3,XMMWORD PTR [rdi+0x78]
  a13bb6:	62 e3 65 48 18 c2 01 	vinsertf32x4 zmm16,zmm3,xmm2,0x1
  a13bbd:	62 72 7d 40 77 c0    	vpermi2ps zmm8,zmm16,zmm0
  a13bc3:	62 e2 75 48 7f c0    	vpermt2ps zmm16,zmm1,zmm0
  a13bc9:	62 d1 2c 48 58 d6    	vaddps zmm2,zmm10,zmm14
  a13bcf:	62 e1 5c 48 58 ca    	vaddps zmm17,zmm4,zmm2
  a13bd5:	62 e1 7c 40 58 d6    	vaddps zmm18,zmm16,zmm6
  a13bdb:	62 a1 1c 48 58 da    	vaddps zmm19,zmm12,zmm18
  a13be1:	62 b1 74 40 58 fb    	vaddps zmm7,zmm17,zmm19
  a13be7:	62 c1 24 48 58 e7    	vaddps zmm20,zmm11,zmm15
  a13bed:	62 a1 54 48 58 ec    	vaddps zmm21,zmm5,zmm20
  a13bf3:	62 c1 3c 48 58 f1    	vaddps zmm22,zmm8,zmm9
  a13bf9:	62 a1 14 48 58 fe    	vaddps zmm23,zmm13,zmm22
  a13bff:	62 f2 7d 48 18 0d 57 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff661857]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a13c06:	18 66 ff 
  a13c09:	62 b1 54 40 58 df    	vaddps zmm3,zmm21,zmm23
  a13c0f:	62 f2 75 48 bc e2    	vfnmadd231ps zmm4,zmm1,zmm2
  a13c15:	62 f2 7d 48 18 15 b5 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff6616b5]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a13c1c:	16 66 ff 
  a13c1f:	62 51 24 48 5c df    	vsubps zmm11,zmm11,zmm15
  a13c25:	62 71 24 48 59 da    	vmulps zmm11,zmm11,zmm2
  a13c2b:	62 51 5c 48 58 fb    	vaddps zmm15,zmm4,zmm11
  a13c31:	62 32 75 48 bc e2    	vfnmadd231ps zmm12,zmm1,zmm18
  a13c37:	62 51 3c 48 5c c1    	vsubps zmm8,zmm8,zmm9
  a13c3d:	62 71 3c 48 59 c2    	vmulps zmm8,zmm8,zmm2
  a13c43:	62 51 1c 48 58 c8    	vaddps zmm9,zmm12,zmm8
  a13c49:	62 c1 04 48 5c d1    	vsubps zmm18,zmm15,zmm9
  a13c4f:	62 b2 75 48 bc ec    	vfnmadd231ps zmm5,zmm1,zmm20
  a13c55:	62 51 2c 48 5c d6    	vsubps zmm10,zmm10,zmm14
  a13c5b:	62 71 2c 48 59 d2    	vmulps zmm10,zmm10,zmm2
  a13c61:	62 51 54 48 5c f2    	vsubps zmm14,zmm5,zmm10
  a13c67:	62 32 75 48 bc ee    	vfnmadd231ps zmm13,zmm1,zmm22
  a13c6d:	62 f1 7c 40 5c f6    	vsubps zmm6,zmm16,zmm6
  a13c73:	62 e1 4c 48 59 c2    	vmulps zmm16,zmm6,zmm2
  a13c79:	62 a1 14 48 5c e0    	vsubps zmm20,zmm13,zmm16
  a13c7f:	62 b1 0c 48 5c f4    	vsubps zmm6,zmm14,zmm20
  a13c85:	62 d1 5c 48 5c e3    	vsubps zmm4,zmm4,zmm11
  a13c8b:	62 51 1c 48 5c c0    	vsubps zmm8,zmm12,zmm8
  a13c91:	62 51 5c 48 58 d8    	vaddps zmm11,zmm4,zmm8
  a13c97:	62 f1 2c 48 58 ed    	vaddps zmm5,zmm10,zmm5
  a13c9d:	62 51 7c 40 58 d5    	vaddps zmm10,zmm16,zmm13
  a13ca3:	62 51 54 48 58 e2    	vaddps zmm12,zmm5,zmm10
  a13ca9:	62 31 74 40 5c eb    	vsubps zmm13,zmm17,zmm19
  a13caf:	62 a1 54 40 5c c7    	vsubps zmm16,zmm21,zmm23
  a13cb5:	62 51 04 48 58 c9    	vaddps zmm9,zmm15,zmm9
  a13cbb:	62 31 0c 48 58 f4    	vaddps zmm14,zmm14,zmm20
  a13cc1:	62 d1 5c 48 5c e0    	vsubps zmm4,zmm4,zmm8
  a13cc7:	62 d1 54 48 5c ea    	vsubps zmm5,zmm5,zmm10
  a13ccd:	62 71 7c 48 28 05 a9 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff6b32a9]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a13cd4:	32 6b ff 
  a13cd7:	62 f2 3d 48 7f f8    	vpermt2ps zmm7,zmm8,zmm0
  a13cdd:	62 e2 3d 48 7f d0    	vpermt2ps zmm18,zmm8,zmm0
  a13ce3:	62 72 3d 48 7f d8    	vpermt2ps zmm11,zmm8,zmm0
  a13ce9:	62 72 3d 48 7f e8    	vpermt2ps zmm13,zmm8,zmm0
  a13cef:	62 72 3d 48 7f c8    	vpermt2ps zmm9,zmm8,zmm0
  a13cf5:	62 f2 3d 48 7f e0    	vpermt2ps zmm4,zmm8,zmm0
  a13cfb:	c4 41 28 57 d2       	vxorps xmm10,xmm10,xmm10
  a13d00:	62 52 3d 48 7f d2    	vpermt2ps zmm10,zmm8,zmm10
  a13d06:	62 71 7c 48 28 3d f0 	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff6b31f0]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a13d0d:	31 6b ff 
  a13d10:	62 d2 05 48 7f f9    	vpermt2ps zmm7,zmm15,zmm9
  a13d16:	62 e2 05 48 7f d4    	vpermt2ps zmm18,zmm15,zmm4
  a13d1c:	62 52 05 48 7f da    	vpermt2ps zmm11,zmm15,zmm10
  a13d22:	62 52 05 48 7f ea    	vpermt2ps zmm13,zmm15,zmm10
  a13d28:	62 51 c5 48 14 cb    	vunpcklpd zmm9,zmm7,zmm11
  a13d2e:	62 d1 c5 48 15 fb    	vunpckhpd zmm7,zmm7,zmm11
  a13d34:	62 51 ed 40 14 dd    	vunpcklpd zmm11,zmm18,zmm13
  a13d3a:	62 51 ed 40 15 ed    	vunpckhpd zmm13,zmm18,zmm13
  a13d40:	62 e1 7c 48 28 0d b6 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff6b30b6]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a13d47:	30 6b ff 
  a13d4a:	62 d1 7c 48 28 e1    	vmovaps zmm4,zmm9
  a13d50:	62 d2 75 40 7f e3    	vpermt2ps zmm4,zmm17,zmm11
  a13d56:	62 e1 7c 48 28 15 e0 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff6b30e0]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a13d5d:	30 6b ff 
  a13d60:	62 52 6d 40 7f cb    	vpermt2ps zmm9,zmm18,zmm11
  a13d66:	62 d2 75 40 7f fd    	vpermt2ps zmm7,zmm17,zmm13
  a13d6c:	62 f2 3d 48 7f d8    	vpermt2ps zmm3,zmm8,zmm0
  a13d72:	62 f2 3d 48 7f f0    	vpermt2ps zmm6,zmm8,zmm0
  a13d78:	62 72 3d 48 7f e0    	vpermt2ps zmm12,zmm8,zmm0
  a13d7e:	62 e2 3d 48 7f c0    	vpermt2ps zmm16,zmm8,zmm0
  a13d84:	62 72 3d 48 7f f0    	vpermt2ps zmm14,zmm8,zmm0
  a13d8a:	62 f2 3d 48 7f e8    	vpermt2ps zmm5,zmm8,zmm0
  a13d90:	62 d2 05 48 7f de    	vpermt2ps zmm3,zmm15,zmm14
  a13d96:	62 f2 05 48 7f f5    	vpermt2ps zmm6,zmm15,zmm5
  a13d9c:	62 52 05 48 7f e2    	vpermt2ps zmm12,zmm15,zmm10
  a13da2:	62 c2 05 48 7f c2    	vpermt2ps zmm16,zmm15,zmm10
  a13da8:	62 d1 e5 48 14 c4    	vunpcklpd zmm0,zmm3,zmm12
  a13dae:	62 d1 e5 48 15 dc    	vunpckhpd zmm3,zmm3,zmm12
  a13db4:	62 b1 cd 48 14 e8    	vunpcklpd zmm5,zmm6,zmm16
  a13dba:	62 b1 cd 48 15 f0    	vunpckhpd zmm6,zmm6,zmm16
  a13dc0:	62 71 7c 48 28 c0    	vmovaps zmm8,zmm0
  a13dc6:	62 72 75 40 7f c5    	vpermt2ps zmm8,zmm17,zmm5
  a13dcc:	62 f2 6d 40 7f c5    	vpermt2ps zmm0,zmm18,zmm5
  a13dd2:	62 f2 75 40 7f de    	vpermt2ps zmm3,zmm17,zmm6
  a13dd8:	62 f1 7c 48 10 6a 02 	vmovups zmm5,ZMMWORD PTR [rdx+0x80]
  a13ddf:	62 f1 7c 48 10 72 03 	vmovups zmm6,ZMMWORD PTR [rdx+0xc0]
  a13de6:	62 71 7c 48 10 52 04 	vmovups zmm10,ZMMWORD PTR [rdx+0x100]
  a13ded:	62 71 7c 48 10 5a 05 	vmovups zmm11,ZMMWORD PTR [rdx+0x140]
  a13df4:	62 71 34 48 59 e5    	vmulps zmm12,zmm9,zmm5
  a13dfa:	62 72 7d 48 bc e6    	vfnmadd231ps zmm12,zmm0,zmm6
  a13e00:	62 51 44 48 59 ea    	vmulps zmm13,zmm7,zmm10
  a13e06:	62 52 65 48 bc eb    	vfnmadd231ps zmm13,zmm3,zmm11
  a13e0c:	62 51 1c 48 58 f5    	vaddps zmm14,zmm12,zmm13
  a13e12:	62 f1 7c 48 59 c5    	vmulps zmm0,zmm0,zmm5
  a13e18:	62 d2 4d 48 b8 c1    	vfmadd231ps zmm0,zmm6,zmm9
  a13e1e:	62 d1 64 48 59 da    	vmulps zmm3,zmm3,zmm10
  a13e24:	62 f2 25 48 b8 df    	vfmadd231ps zmm3,zmm11,zmm7
  a13e2a:	62 f1 7c 48 58 eb    	vaddps zmm5,zmm0,zmm3
  a13e30:	62 f1 7c 48 28 f1    	vmovaps zmm6,zmm1
  a13e36:	62 f2 0d 48 ac f4    	vfnmadd213ps zmm6,zmm14,zmm4
  a13e3c:	62 f1 7c 48 5c c3    	vsubps zmm0,zmm0,zmm3
  a13e42:	62 f1 7c 48 59 c2    	vmulps zmm0,zmm0,zmm2
  a13e48:	62 f1 4c 48 58 d8    	vaddps zmm3,zmm6,zmm0
  a13e4e:	62 d2 55 48 ac c8    	vfnmadd213ps zmm1,zmm5,zmm8
  a13e54:	62 d1 1c 48 5c fd    	vsubps zmm7,zmm12,zmm13
  a13e5a:	62 f1 44 48 59 d2    	vmulps zmm2,zmm7,zmm2
  a13e60:	62 f1 74 48 5c fa    	vsubps zmm7,zmm1,zmm2
  a13e66:	62 f1 4c 48 5c c0    	vsubps zmm0,zmm6,zmm0
  a13e6c:	62 f1 74 48 58 ca    	vaddps zmm1,zmm1,zmm2
  a13e72:	62 f1 3c 48 58 d5    	vaddps zmm2,zmm8,zmm5
  a13e78:	62 d1 5c 48 58 e6    	vaddps zmm4,zmm4,zmm14
  a13e7e:	62 f1 7c 48 28 2d b8 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff67b3b8]        # 8f240 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c6f0>
  a13e85:	b3 67 ff 
  a13e88:	62 f2 55 48 7f d4    	vpermt2ps zmm2,zmm5,zmm4
  a13e8e:	62 f3 7d 48 19 56 02 	vextractf32x4 XMMWORD PTR [rsi+0x20],zmm2,0x2
  a13e95:	02 
  a13e96:	c5 fc 11 16          	vmovups YMMWORD PTR [rsi],ymm2
  a13e9a:	62 f2 55 48 7f fb    	vpermt2ps zmm7,zmm5,zmm3
  a13ea0:	62 f3 7d 48 19 7e 05 	vextractf32x4 XMMWORD PTR [rsi+0x50],zmm7,0x2
  a13ea7:	02 
  a13ea8:	c5 fc 11 7e 30       	vmovups YMMWORD PTR [rsi+0x30],ymm7
  a13ead:	62 f2 55 48 7f c8    	vpermt2ps zmm1,zmm5,zmm0
  a13eb3:	62 f3 7d 48 19 4e 08 	vextractf32x4 XMMWORD PTR [rsi+0x80],zmm1,0x2
  a13eba:	02 
  a13ebb:	c5 fc 11 4e 60       	vmovups YMMWORD PTR [rsi+0x60],ymm1
  a13ec0:	48 89 ec             	mov    rsp,rbp
  a13ec3:	5d                   	pop    rbp
  a13ec4:	c5 f8 77             	vzeroupper
  a13ec7:	c3                   	ret
