
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a04cc0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a04cc0:	55                   	push   rbp
  a04cc1:	48 89 e5             	mov    rbp,rsp
  a04cc4:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a04cc8:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  a04ccf:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  a04cd4:	48 8d 44 24 40       	lea    rax,[rsp+0x40]
  a04cd9:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  a04cde:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  a04ce3:	c5 fc 10 1f          	vmovups ymm3,YMMWORD PTR [rdi]
  a04ce7:	c5 fc 10 57 20       	vmovups ymm2,YMMWORD PTR [rdi+0x20]
  a04cec:	c5 fc 10 7f 40       	vmovups ymm7,YMMWORD PTR [rdi+0x40]
  a04cf1:	c5 fc 10 67 60       	vmovups ymm4,YMMWORD PTR [rdi+0x60]
  a04cf6:	62 71 7c 48 28 05 40 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff689640]        # 8e340 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b7f0>
  a04cfd:	96 68 ff 
  a04d00:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a04d04:	62 f1 7c 48 28 eb    	vmovaps zmm5,zmm3
  a04d0a:	62 f2 3d 48 7f e8    	vpermt2ps zmm5,zmm8,zmm0
  a04d10:	62 f1 7c 48 28 0d 66 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff689666]        # 8e380 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b830>
  a04d17:	96 68 ff 
  a04d1a:	62 f2 75 48 7f d8    	vpermt2ps zmm3,zmm1,zmm0
  a04d20:	62 71 7c 48 28 ca    	vmovaps zmm9,zmm2
  a04d26:	62 72 3d 48 7f c8    	vpermt2ps zmm9,zmm8,zmm0
  a04d2c:	62 f2 75 48 7f d0    	vpermt2ps zmm2,zmm1,zmm0
  a04d32:	62 71 7c 48 28 d7    	vmovaps zmm10,zmm7
  a04d38:	62 72 3d 48 7f d0    	vpermt2ps zmm10,zmm8,zmm0
  a04d3e:	62 f2 75 48 7f f8    	vpermt2ps zmm7,zmm1,zmm0
  a04d44:	62 71 7c 48 28 dc    	vmovaps zmm11,zmm4
  a04d4a:	62 72 3d 48 7f d8    	vpermt2ps zmm11,zmm8,zmm0
  a04d50:	62 f2 75 48 7f e0    	vpermt2ps zmm4,zmm1,zmm0
  a04d56:	c5 7c 10 a7 80 00 00 	vmovups ymm12,YMMWORD PTR [rdi+0x80]
  a04d5d:	00 
  a04d5e:	62 51 7c 48 28 ec    	vmovaps zmm13,zmm12
  a04d64:	62 72 3d 48 7f e8    	vpermt2ps zmm13,zmm8,zmm0
  a04d6a:	62 72 75 48 7f e0    	vpermt2ps zmm12,zmm1,zmm0
  a04d70:	c5 7c 10 b7 a0 00 00 	vmovups ymm14,YMMWORD PTR [rdi+0xa0]
  a04d77:	00 
  a04d78:	62 72 0d 48 77 c0    	vpermi2ps zmm8,zmm14,zmm0
  a04d7e:	62 72 75 48 7f f0    	vpermt2ps zmm14,zmm1,zmm0
  a04d84:	62 51 44 48 58 fc    	vaddps zmm15,zmm7,zmm12
  a04d8a:	62 c1 64 48 58 c7    	vaddps zmm16,zmm3,zmm15
  a04d90:	62 e1 0c 48 58 ca    	vaddps zmm17,zmm14,zmm2
  a04d96:	62 a1 5c 48 58 d1    	vaddps zmm18,zmm4,zmm17
  a04d9c:	62 b1 7c 40 58 f2    	vaddps zmm6,zmm16,zmm18
  a04da2:	62 c1 2c 48 58 dd    	vaddps zmm19,zmm10,zmm13
  a04da8:	62 a1 54 48 58 e3    	vaddps zmm20,zmm5,zmm19
  a04dae:	62 c1 3c 48 58 e9    	vaddps zmm21,zmm8,zmm9
  a04db4:	62 a1 24 48 58 f5    	vaddps zmm22,zmm11,zmm21
  a04dba:	62 b1 5c 40 58 ce    	vaddps zmm1,zmm20,zmm22
  a04dc0:	62 e2 7d 48 18 3d 96 	vbroadcastss zmm23,DWORD PTR [rip+0xffffffffff670696]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a04dc7:	06 67 ff 
  a04dca:	62 d2 45 40 bc df    	vfnmadd231ps zmm3,zmm23,zmm15
  a04dd0:	62 51 2c 48 5c d5    	vsubps zmm10,zmm10,zmm13
  a04dd6:	62 72 7d 48 18 2d f4 	vbroadcastss zmm13,DWORD PTR [rip+0xffffffffff6704f4]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a04ddd:	04 67 ff 
  a04de0:	62 51 2c 48 59 d5    	vmulps zmm10,zmm10,zmm13
  a04de6:	62 51 64 48 58 fa    	vaddps zmm15,zmm3,zmm10
  a04dec:	62 b2 45 40 bc e1    	vfnmadd231ps zmm4,zmm23,zmm17
  a04df2:	62 51 3c 48 5c c1    	vsubps zmm8,zmm8,zmm9
  a04df8:	62 51 3c 48 59 c5    	vmulps zmm8,zmm8,zmm13
  a04dfe:	62 51 5c 48 58 c8    	vaddps zmm9,zmm4,zmm8
  a04e04:	62 c1 04 48 5c c9    	vsubps zmm17,zmm15,zmm9
  a04e0a:	62 b2 45 40 bc eb    	vfnmadd231ps zmm5,zmm23,zmm19
  a04e10:	62 d1 44 48 5c fc    	vsubps zmm7,zmm7,zmm12
  a04e16:	62 d1 44 48 59 fd    	vmulps zmm7,zmm7,zmm13
  a04e1c:	62 71 54 48 5c e7    	vsubps zmm12,zmm5,zmm7
  a04e22:	62 32 55 40 bc df    	vfnmadd231ps zmm11,zmm21,zmm23
  a04e28:	62 f1 0c 48 5c d2    	vsubps zmm2,zmm14,zmm2
  a04e2e:	62 51 6c 48 59 ed    	vmulps zmm13,zmm2,zmm13
  a04e34:	62 51 24 48 5c f5    	vsubps zmm14,zmm11,zmm13
  a04e3a:	62 d1 1c 48 5c d6    	vsubps zmm2,zmm12,zmm14
  a04e40:	62 d1 64 48 5c da    	vsubps zmm3,zmm3,zmm10
  a04e46:	62 d1 5c 48 5c e0    	vsubps zmm4,zmm4,zmm8
  a04e4c:	62 71 64 48 58 d4    	vaddps zmm10,zmm3,zmm4
  a04e52:	62 f1 44 48 58 ed    	vaddps zmm5,zmm7,zmm5
  a04e58:	62 51 14 48 58 db    	vaddps zmm11,zmm13,zmm11
  a04e5e:	62 d1 54 48 58 fb    	vaddps zmm7,zmm5,zmm11
  a04e64:	62 31 7c 40 5c ea    	vsubps zmm13,zmm16,zmm18
  a04e6a:	62 31 5c 40 5c c6    	vsubps zmm8,zmm20,zmm22
  a04e70:	62 51 04 48 58 c9    	vaddps zmm9,zmm15,zmm9
  a04e76:	62 51 1c 48 58 e6    	vaddps zmm12,zmm12,zmm14
  a04e7c:	62 f1 64 48 5c dc    	vsubps zmm3,zmm3,zmm4
  a04e82:	62 51 54 48 5c db    	vsubps zmm11,zmm5,zmm11
  a04e88:	62 71 7c 48 28 35 ee 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff6c20ee]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a04e8f:	20 6c ff 
  a04e92:	62 f2 0d 48 7f f0    	vpermt2ps zmm6,zmm14,zmm0
  a04e98:	62 e2 0d 48 7f c8    	vpermt2ps zmm17,zmm14,zmm0
  a04e9e:	62 72 0d 48 7f d0    	vpermt2ps zmm10,zmm14,zmm0
  a04ea4:	62 72 0d 48 7f e8    	vpermt2ps zmm13,zmm14,zmm0
  a04eaa:	62 72 0d 48 7f c8    	vpermt2ps zmm9,zmm14,zmm0
  a04eb0:	62 f2 0d 48 7f d8    	vpermt2ps zmm3,zmm14,zmm0
  a04eb6:	c4 41 00 57 ff       	vxorps xmm15,xmm15,xmm15
  a04ebb:	62 52 0d 48 7f ff    	vpermt2ps zmm15,zmm14,zmm15
  a04ec1:	62 e1 7c 48 28 05 35 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff6c2035]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a04ec8:	20 6c ff 
  a04ecb:	62 d2 7d 40 7f f1    	vpermt2ps zmm6,zmm16,zmm9
  a04ed1:	62 e2 7d 40 7f cb    	vpermt2ps zmm17,zmm16,zmm3
  a04ed7:	62 52 7d 40 7f d7    	vpermt2ps zmm10,zmm16,zmm15
  a04edd:	62 52 7d 40 7f ef    	vpermt2ps zmm13,zmm16,zmm15
  a04ee3:	62 d1 cd 48 14 ea    	vunpcklpd zmm5,zmm6,zmm10
  a04ee9:	62 d1 cd 48 15 da    	vunpckhpd zmm3,zmm6,zmm10
  a04eef:	62 d1 f5 40 14 f5    	vunpcklpd zmm6,zmm17,zmm13
  a04ef5:	62 51 f5 40 15 cd    	vunpckhpd zmm9,zmm17,zmm13
  a04efb:	62 71 7c 48 28 15 fb 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff6c1efb]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a04f02:	1e 6c ff 
  a04f05:	62 f1 7c 48 28 e5    	vmovaps zmm4,zmm5
  a04f0b:	62 f2 2d 48 7f e6    	vpermt2ps zmm4,zmm10,zmm6
  a04f11:	62 71 7c 48 28 2d 25 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff6c1f25]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a04f18:	1f 6c ff 
  a04f1b:	62 f2 15 48 7f ee    	vpermt2ps zmm5,zmm13,zmm6
  a04f21:	62 f1 7c 48 28 f3    	vmovaps zmm6,zmm3
  a04f27:	62 d2 2d 48 7f f1    	vpermt2ps zmm6,zmm10,zmm9
  a04f2d:	62 d2 15 48 7f d9    	vpermt2ps zmm3,zmm13,zmm9
  a04f33:	62 f2 0d 48 7f c8    	vpermt2ps zmm1,zmm14,zmm0
  a04f39:	62 f2 0d 48 7f d0    	vpermt2ps zmm2,zmm14,zmm0
  a04f3f:	62 f2 0d 48 7f f8    	vpermt2ps zmm7,zmm14,zmm0
  a04f45:	62 72 0d 48 7f c0    	vpermt2ps zmm8,zmm14,zmm0
  a04f4b:	62 72 0d 48 7f e0    	vpermt2ps zmm12,zmm14,zmm0
  a04f51:	62 72 0d 48 7f d8    	vpermt2ps zmm11,zmm14,zmm0
  a04f57:	62 d2 7d 40 7f cc    	vpermt2ps zmm1,zmm16,zmm12
  a04f5d:	62 d2 7d 40 7f d3    	vpermt2ps zmm2,zmm16,zmm11
  a04f63:	62 d2 7d 40 7f ff    	vpermt2ps zmm7,zmm16,zmm15
  a04f69:	62 52 7d 40 7f c7    	vpermt2ps zmm8,zmm16,zmm15
  a04f6f:	62 f1 f5 48 14 c7    	vunpcklpd zmm0,zmm1,zmm7
  a04f75:	62 f1 f5 48 15 cf    	vunpckhpd zmm1,zmm1,zmm7
  a04f7b:	62 d1 ed 48 14 f8    	vunpcklpd zmm7,zmm2,zmm8
  a04f81:	62 d1 ed 48 15 d0    	vunpckhpd zmm2,zmm2,zmm8
  a04f87:	62 71 7c 48 28 c0    	vmovaps zmm8,zmm0
  a04f8d:	62 72 2d 48 7f c7    	vpermt2ps zmm8,zmm10,zmm7
  a04f93:	62 f2 15 48 7f c7    	vpermt2ps zmm0,zmm13,zmm7
  a04f99:	62 72 75 48 77 d2    	vpermi2ps zmm10,zmm1,zmm2
  a04f9f:	62 f2 15 48 7f ca    	vpermt2ps zmm1,zmm13,zmm2
  a04fa5:	62 f1 7c 48 10 52 02 	vmovups zmm2,ZMMWORD PTR [rdx+0x80]
  a04fac:	62 f1 7c 48 10 7a 03 	vmovups zmm7,ZMMWORD PTR [rdx+0xc0]
  a04fb3:	62 71 7c 48 10 4a 04 	vmovups zmm9,ZMMWORD PTR [rdx+0x100]
  a04fba:	62 71 7c 48 10 5a 05 	vmovups zmm11,ZMMWORD PTR [rdx+0x140]
  a04fc1:	62 71 7c 48 10 62 06 	vmovups zmm12,ZMMWORD PTR [rdx+0x180]
  a04fc8:	62 71 7c 48 10 6a 07 	vmovups zmm13,ZMMWORD PTR [rdx+0x1c0]
  a04fcf:	62 51 4c 48 59 f1    	vmulps zmm14,zmm6,zmm9
  a04fd5:	62 52 2d 48 bc f3    	vfnmadd231ps zmm14,zmm10,zmm11
  a04fdb:	62 51 5c 48 58 fe    	vaddps zmm15,zmm4,zmm14
  a04fe1:	62 e1 54 48 59 c2    	vmulps zmm16,zmm5,zmm2
  a04fe7:	62 e2 7d 48 bc c7    	vfnmadd231ps zmm16,zmm0,zmm7
  a04fed:	62 c1 64 48 59 cc    	vmulps zmm17,zmm3,zmm12
  a04ff3:	62 c2 75 48 bc cd    	vfnmadd231ps zmm17,zmm1,zmm13
  a04ff9:	62 a1 7c 40 58 d1    	vaddps zmm18,zmm16,zmm17
  a04fff:	62 51 2c 48 59 c9    	vmulps zmm9,zmm10,zmm9
  a05005:	62 72 25 48 b8 ce    	vfmadd231ps zmm9,zmm11,zmm6
  a0500b:	62 d1 34 48 58 f0    	vaddps zmm6,zmm9,zmm8
  a05011:	62 f1 7c 48 59 c2    	vmulps zmm0,zmm0,zmm2
  a05017:	62 f2 45 48 b8 c5    	vfmadd231ps zmm0,zmm7,zmm5
  a0501d:	62 d1 74 48 59 cc    	vmulps zmm1,zmm1,zmm12
  a05023:	62 f2 15 48 b8 cb    	vfmadd231ps zmm1,zmm13,zmm3
  a05029:	62 f1 7c 48 58 d1    	vaddps zmm2,zmm0,zmm1
  a0502f:	62 d1 5c 48 5c de    	vsubps zmm3,zmm4,zmm14
  a05035:	62 f1 7c 48 5c c1    	vsubps zmm0,zmm0,zmm1
  a0503b:	62 f1 64 48 58 c8    	vaddps zmm1,zmm3,zmm0
  a05041:	62 d1 3c 48 5c e1    	vsubps zmm4,zmm8,zmm9
  a05047:	62 b1 74 40 5c e8    	vsubps zmm5,zmm17,zmm16
  a0504d:	62 f1 5c 48 58 fd    	vaddps zmm7,zmm4,zmm5
  a05053:	62 31 04 48 5c c2    	vsubps zmm8,zmm15,zmm18
  a05059:	62 71 4c 48 5c ca    	vsubps zmm9,zmm6,zmm2
  a0505f:	62 f1 64 48 5c c0    	vsubps zmm0,zmm3,zmm0
  a05065:	62 f1 5c 48 5c dd    	vsubps zmm3,zmm4,zmm5
  a0506b:	62 f1 4c 48 58 d2    	vaddps zmm2,zmm6,zmm2
  a05071:	62 b1 04 48 58 e2    	vaddps zmm4,zmm15,zmm18
  a05077:	62 f1 7c 48 28 2d 3f 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff68933f]        # 8e3c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b870>
  a0507e:	93 68 ff 
  a05081:	62 f2 55 48 7f d4    	vpermt2ps zmm2,zmm5,zmm4
  a05087:	62 f3 7d 48 19 56 02 	vextractf32x4 XMMWORD PTR [rsi+0x20],zmm2,0x2
  a0508e:	02 
  a0508f:	c5 fc 11 16          	vmovups YMMWORD PTR [rsi],ymm2
  a05093:	62 f2 55 48 7f f9    	vpermt2ps zmm7,zmm5,zmm1
  a05099:	62 f3 7d 48 19 7e 05 	vextractf32x4 XMMWORD PTR [rsi+0x50],zmm7,0x2
  a050a0:	02 
  a050a1:	c5 fc 11 7e 30       	vmovups YMMWORD PTR [rsi+0x30],ymm7
  a050a6:	62 52 55 48 7f c8    	vpermt2ps zmm9,zmm5,zmm8
  a050ac:	62 73 7d 48 19 4e 08 	vextractf32x4 XMMWORD PTR [rsi+0x80],zmm9,0x2
  a050b3:	02 
  a050b4:	c5 7c 11 4e 60       	vmovups YMMWORD PTR [rsi+0x60],ymm9
  a050b9:	62 f2 55 48 7f d8    	vpermt2ps zmm3,zmm5,zmm0
  a050bf:	62 f3 7d 48 19 5e 0b 	vextractf32x4 XMMWORD PTR [rsi+0xb0],zmm3,0x2
  a050c6:	02 
  a050c7:	c5 fc 11 9e 90 00 00 	vmovups YMMWORD PTR [rsi+0x90],ymm3
  a050ce:	00 
  a050cf:	48 89 ec             	mov    rsp,rbp
  a050d2:	5d                   	pop    rbp
  a050d3:	c5 f8 77             	vzeroupper
  a050d6:	c3                   	ret
