
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a25c40 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a25c40:	55                   	push   rbp
  a25c41:	48 89 e5             	mov    rbp,rsp
  a25c44:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a25c48:	48 81 ec 80 05 00 00 	sub    rsp,0x580
  a25c4f:	c6 84 24 00 05 00 00 	mov    BYTE PTR [rsp+0x500],0x0
  a25c56:	00 
  a25c57:	48 8d 84 24 00 05 00 	lea    rax,[rsp+0x500]
  a25c5e:	00 
  a25c5f:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  a25c64:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  a25c69:	62 f1 7c 48 10 1f    	vmovups zmm3,ZMMWORD PTR [rdi]
  a25c6f:	c5 f8 10 4f 40       	vmovups xmm1,XMMWORD PTR [rdi+0x40]
  a25c74:	62 f1 7c 48 28 15 82 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff66a682]        # 90300 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d7b0>
  a25c7b:	a6 66 ff 
  a25c7e:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a25c84:	62 f2 6d 48 7f c1    	vpermt2ps zmm0,zmm2,zmm1
  a25c8a:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm0
  a25c91:	02 
  a25c92:	62 f1 7c 48 28 05 a4 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff66a6a4]        # 90340 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d7f0>
  a25c99:	a6 66 ff 
  a25c9c:	62 f2 7d 48 7f d9    	vpermt2ps zmm3,zmm0,zmm1
  a25ca2:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm3
  a25ca9:	03 
  a25caa:	62 f1 7c 48 10 9f 50 	vmovups zmm3,ZMMWORD PTR [rdi+0x50]
  a25cb1:	00 00 00 
  a25cb4:	c5 f8 10 8f 90 00 00 	vmovups xmm1,XMMWORD PTR [rdi+0x90]
  a25cbb:	00 
  a25cbc:	62 f1 7c 48 28 e3    	vmovaps zmm4,zmm3
  a25cc2:	62 f2 6d 48 7f e1    	vpermt2ps zmm4,zmm2,zmm1
  a25cc8:	62 f1 7c 48 28 f4    	vmovaps zmm6,zmm4
  a25cce:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm4
  a25cd5:	0c 
  a25cd6:	62 f2 7d 48 7f d9    	vpermt2ps zmm3,zmm0,zmm1
  a25cdc:	62 f1 7c 48 28 eb    	vmovaps zmm5,zmm3
  a25ce2:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm3
  a25ce9:	0d 
  a25cea:	62 f1 7c 48 10 9f a0 	vmovups zmm3,ZMMWORD PTR [rdi+0xa0]
  a25cf1:	00 00 00 
  a25cf4:	c5 f8 10 8f e0 00 00 	vmovups xmm1,XMMWORD PTR [rdi+0xe0]
  a25cfb:	00 
  a25cfc:	62 f1 7c 48 28 e3    	vmovaps zmm4,zmm3
  a25d02:	62 f2 6d 48 7f e1    	vpermt2ps zmm4,zmm2,zmm1
  a25d08:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm4
  a25d0f:	06 
  a25d10:	62 f2 7d 48 7f d9    	vpermt2ps zmm3,zmm0,zmm1
  a25d16:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm3
  a25d1d:	01 
  a25d1e:	62 f1 7c 48 10 9f f0 	vmovups zmm3,ZMMWORD PTR [rdi+0xf0]
  a25d25:	00 00 00 
  a25d28:	c5 f8 10 8f 30 01 00 	vmovups xmm1,XMMWORD PTR [rdi+0x130]
  a25d2f:	00 
  a25d30:	62 f1 7c 48 28 e3    	vmovaps zmm4,zmm3
  a25d36:	62 f2 6d 48 7f e1    	vpermt2ps zmm4,zmm2,zmm1
  a25d3c:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm4
  a25d43:	11 
  a25d44:	62 f2 7d 48 7f d9    	vpermt2ps zmm3,zmm0,zmm1
  a25d4a:	62 71 7c 48 28 fb    	vmovaps zmm15,zmm3
  a25d50:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm3
  a25d57:	0a 
  a25d58:	62 f1 7c 48 10 67 05 	vmovups zmm4,ZMMWORD PTR [rdi+0x140]
  a25d5f:	c5 f8 10 8f 80 01 00 	vmovups xmm1,XMMWORD PTR [rdi+0x180]
  a25d66:	00 
  a25d67:	62 f1 7c 48 28 dc    	vmovaps zmm3,zmm4
  a25d6d:	62 f2 6d 48 7f d9    	vpermt2ps zmm3,zmm2,zmm1
  a25d73:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm3
  a25d7a:	08 
  a25d7b:	62 f2 7d 48 7f e1    	vpermt2ps zmm4,zmm0,zmm1
  a25d81:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm4
  a25d88:	07 
  a25d89:	62 e1 7c 48 10 97 90 	vmovups zmm18,ZMMWORD PTR [rdi+0x190]
  a25d90:	01 00 00 
  a25d93:	c5 f8 10 8f d0 01 00 	vmovups xmm1,XMMWORD PTR [rdi+0x1d0]
  a25d9a:	00 
  a25d9b:	62 b1 7c 48 28 da    	vmovaps zmm3,zmm18
  a25da1:	62 f2 6d 48 7f d9    	vpermt2ps zmm3,zmm2,zmm1
  a25da7:	62 f1 7c 48 28 e3    	vmovaps zmm4,zmm3
  a25dad:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm3
  a25db4:	0b 
  a25db5:	62 e2 7d 48 7f d1    	vpermt2ps zmm18,zmm0,zmm1
  a25dbb:	62 e1 7c 48 10 af e0 	vmovups zmm21,ZMMWORD PTR [rdi+0x1e0]
  a25dc2:	01 00 00 
  a25dc5:	c5 f8 10 8f 20 02 00 	vmovups xmm1,XMMWORD PTR [rdi+0x220]
  a25dcc:	00 
  a25dcd:	62 b1 7c 48 28 dd    	vmovaps zmm3,zmm21
  a25dd3:	62 f2 6d 48 7f d9    	vpermt2ps zmm3,zmm2,zmm1
  a25dd9:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm3
  a25de0:	05 
  a25de1:	62 e2 7d 48 7f e9    	vpermt2ps zmm21,zmm0,zmm1
  a25de7:	62 e1 7c 48 10 87 30 	vmovups zmm16,ZMMWORD PTR [rdi+0x230]
  a25dee:	02 00 00 
  a25df1:	c5 f8 10 8f 70 02 00 	vmovups xmm1,XMMWORD PTR [rdi+0x270]
  a25df8:	00 
  a25df9:	62 b1 7c 48 28 d8    	vmovaps zmm3,zmm16
  a25dff:	62 f2 6d 48 7f d9    	vpermt2ps zmm3,zmm2,zmm1
  a25e05:	62 61 7c 48 28 db    	vmovaps zmm27,zmm3
  a25e0b:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm3
  a25e12:	09 
  a25e13:	62 e2 7d 48 7f c1    	vpermt2ps zmm16,zmm0,zmm1
  a25e19:	62 e1 7c 48 10 4f 0a 	vmovups zmm17,ZMMWORD PTR [rdi+0x280]
  a25e20:	c5 f8 10 8f c0 02 00 	vmovups xmm1,XMMWORD PTR [rdi+0x2c0]
  a25e27:	00 
  a25e28:	62 b1 7c 48 28 d9    	vmovaps zmm3,zmm17
  a25e2e:	62 f2 6d 48 7f d9    	vpermt2ps zmm3,zmm2,zmm1
  a25e34:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm3
  a25e3b:	04 
  a25e3c:	62 e2 7d 48 7f c9    	vpermt2ps zmm17,zmm0,zmm1
  a25e42:	62 e1 7c 48 10 a7 d0 	vmovups zmm20,ZMMWORD PTR [rdi+0x2d0]
  a25e49:	02 00 00 
  a25e4c:	c5 f8 10 8f 10 03 00 	vmovups xmm1,XMMWORD PTR [rdi+0x310]
  a25e53:	00 
  a25e54:	62 a1 7c 48 28 fc    	vmovaps zmm23,zmm20
  a25e5a:	62 e2 6d 48 7f f9    	vpermt2ps zmm23,zmm2,zmm1
  a25e60:	62 e2 7d 48 7f e1    	vpermt2ps zmm20,zmm0,zmm1
  a25e66:	62 e1 7c 48 10 9f 20 	vmovups zmm19,ZMMWORD PTR [rdi+0x320]
  a25e6d:	03 00 00 
  a25e70:	c5 f8 10 8f 60 03 00 	vmovups xmm1,XMMWORD PTR [rdi+0x360]
  a25e77:	00 
  a25e78:	62 b1 7c 48 28 db    	vmovaps zmm3,zmm19
  a25e7e:	62 f2 6d 48 7f d9    	vpermt2ps zmm3,zmm2,zmm1
  a25e84:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm3
  a25e8b:	13 
  a25e8c:	62 e2 7d 48 7f d9    	vpermt2ps zmm19,zmm0,zmm1
  a25e92:	62 61 7c 48 10 87 70 	vmovups zmm24,ZMMWORD PTR [rdi+0x370]
  a25e99:	03 00 00 
  a25e9c:	c5 f8 10 8f b0 03 00 	vmovups xmm1,XMMWORD PTR [rdi+0x3b0]
  a25ea3:	00 
  a25ea4:	62 01 7c 48 28 d0    	vmovaps zmm26,zmm24
  a25eaa:	62 62 6d 48 7f d1    	vpermt2ps zmm26,zmm2,zmm1
  a25eb0:	62 62 7d 48 7f c1    	vpermt2ps zmm24,zmm0,zmm1
  a25eb6:	62 61 7c 48 10 4f 0f 	vmovups zmm25,ZMMWORD PTR [rdi+0x3c0]
  a25ebd:	c5 f8 10 8f 00 04 00 	vmovups xmm1,XMMWORD PTR [rdi+0x400]
  a25ec4:	00 
  a25ec5:	62 81 7c 48 28 f1    	vmovaps zmm22,zmm25
  a25ecb:	62 e2 6d 48 7f f1    	vpermt2ps zmm22,zmm2,zmm1
  a25ed1:	62 62 7d 48 7f c9    	vpermt2ps zmm25,zmm0,zmm1
  a25ed7:	62 61 7c 48 10 b7 10 	vmovups zmm30,ZMMWORD PTR [rdi+0x410]
  a25ede:	04 00 00 
  a25ee1:	c5 f8 10 8f 50 04 00 	vmovups xmm1,XMMWORD PTR [rdi+0x450]
  a25ee8:	00 
  a25ee9:	62 01 7c 48 28 fe    	vmovaps zmm31,zmm30
  a25eef:	62 62 6d 48 7f f9    	vpermt2ps zmm31,zmm2,zmm1
  a25ef5:	62 62 7d 48 7f f1    	vpermt2ps zmm30,zmm0,zmm1
  a25efb:	62 61 7c 48 10 a7 60 	vmovups zmm28,ZMMWORD PTR [rdi+0x460]
  a25f02:	04 00 00 
  a25f05:	c5 f8 10 8f a0 04 00 	vmovups xmm1,XMMWORD PTR [rdi+0x4a0]
  a25f0c:	00 
  a25f0d:	62 01 7c 48 28 ec    	vmovaps zmm29,zmm28
  a25f13:	62 62 6d 48 7f e9    	vpermt2ps zmm29,zmm2,zmm1
  a25f19:	62 62 7d 48 7f e1    	vpermt2ps zmm28,zmm0,zmm1
  a25f1f:	62 71 7c 48 10 97 b0 	vmovups zmm10,ZMMWORD PTR [rdi+0x4b0]
  a25f26:	04 00 00 
  a25f29:	c5 f8 10 8f f0 04 00 	vmovups xmm1,XMMWORD PTR [rdi+0x4f0]
  a25f30:	00 
  a25f31:	62 f2 2d 48 77 d1    	vpermi2ps zmm2,zmm10,zmm1
  a25f37:	62 72 7d 48 7f d1    	vpermt2ps zmm10,zmm0,zmm1
  a25f3d:	62 31 4c 48 5c f7    	vsubps zmm14,zmm6,zmm23
  a25f43:	62 11 6c 40 5c ee    	vsubps zmm13,zmm18,zmm30
  a25f49:	62 d1 0c 48 58 fd    	vaddps zmm7,zmm14,zmm13
  a25f4f:	62 31 54 48 5c e4    	vsubps zmm12,zmm5,zmm20
  a25f55:	62 71 04 40 5c dc    	vsubps zmm11,zmm31,zmm4
  a25f5b:	62 51 24 48 58 cc    	vaddps zmm9,zmm11,zmm12
  a25f61:	62 72 7d 48 18 05 f9 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff64f6f9]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a25f68:	f6 64 ff 
  a25f6b:	62 d1 34 48 59 c0    	vmulps zmm0,zmm9,zmm8
  a25f71:	62 f2 7d 48 18 35 85 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff64f785]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a25f78:	f7 64 ff 
  a25f7b:	62 f2 45 48 b8 c6    	vfmadd231ps zmm0,zmm7,zmm6
  a25f81:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm0
  a25f88:	12 
  a25f89:	62 f1 34 48 59 c6    	vmulps zmm0,zmm9,zmm6
  a25f8f:	62 f2 3d 48 bc c7    	vfnmadd231ps zmm0,zmm8,zmm7
  a25f95:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm0
  a25f9c:	10 
  a25f9d:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x440]
  a25fa4:	11 
  a25fa5:	62 91 34 48 5c ea    	vsubps zmm5,zmm9,zmm26
  a25fab:	62 d1 7c 40 5c e2    	vsubps zmm4,zmm16,zmm10
  a25fb1:	62 f1 54 48 58 c4    	vaddps zmm0,zmm5,zmm4
  a25fb7:	62 91 04 48 5c d8    	vsubps zmm3,zmm15,zmm24
  a25fbd:	62 91 6c 48 5c cb    	vsubps zmm1,zmm2,zmm27
  a25fc3:	62 f1 74 48 58 fb    	vaddps zmm7,zmm1,zmm3
  a25fc9:	62 61 44 48 59 de    	vmulps zmm27,zmm7,zmm6
  a25fcf:	62 42 7d 48 b8 d8    	vfmadd231ps zmm27,zmm0,zmm8
  a25fd5:	62 51 44 48 59 f8    	vmulps zmm15,zmm7,zmm8
  a25fdb:	62 72 4d 48 bc f8    	vfnmadd231ps zmm15,zmm6,zmm0
  a25fe1:	62 d1 0c 48 5c c5    	vsubps zmm0,zmm14,zmm13
  a25fe7:	62 51 1c 48 5c db    	vsubps zmm11,zmm12,zmm11
  a25fed:	62 f1 54 48 5c ec    	vsubps zmm5,zmm5,zmm4
  a25ff3:	62 71 64 48 5c e1    	vsubps zmm12,zmm3,zmm1
  a25ff9:	62 f1 24 48 59 ce    	vmulps zmm1,zmm11,zmm6
  a25fff:	62 d2 7d 48 b8 c8    	vfmadd231ps zmm1,zmm0,zmm8
  a26005:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm1
  a2600c:	0f 
  a2600d:	62 d1 24 48 59 c8    	vmulps zmm1,zmm11,zmm8
  a26013:	62 f2 4d 48 bc c8    	vfnmadd231ps zmm1,zmm6,zmm0
  a26019:	62 d1 1c 48 59 c0    	vmulps zmm0,zmm12,zmm8
  a2601f:	62 f2 55 48 b8 c6    	vfmadd231ps zmm0,zmm5,zmm6
  a26025:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm0
  a2602c:	0e 
  a2602d:	62 d1 54 48 59 e0    	vmulps zmm4,zmm5,zmm8
  a26033:	62 f2 1d 48 bc e6    	vfnmadd231ps zmm4,zmm12,zmm6
  a26039:	62 f1 44 40 58 6c 24 	vaddps zmm5,zmm23,ZMMWORD PTR [rsp+0x300]
  a26040:	0c 
  a26041:	62 f1 04 40 58 74 24 	vaddps zmm6,zmm31,ZMMWORD PTR [rsp+0x2c0]
  a26048:	0b 
  a26049:	62 11 34 48 58 c2    	vaddps zmm8,zmm9,zmm26
  a2604f:	62 f1 6c 48 58 54 24 	vaddps zmm2,zmm2,ZMMWORD PTR [rsp+0x240]
  a26056:	09 
  a26057:	62 71 5c 40 58 5c 24 	vaddps zmm11,zmm20,ZMMWORD PTR [rsp+0x340]
  a2605e:	0d 
  a2605f:	62 11 6c 40 58 e6    	vaddps zmm12,zmm18,zmm30
  a26065:	62 71 3c 40 58 6c 24 	vaddps zmm13,zmm24,ZMMWORD PTR [rsp+0x280]
  a2606c:	0a 
  a2606d:	62 51 7c 40 58 d2    	vaddps zmm10,zmm16,zmm10
  a26073:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x80]
  a2607a:	02 
  a2607b:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x100]
  a26082:	04 
  a26083:	62 71 7c 48 58 f3    	vaddps zmm14,zmm0,zmm3
  a26089:	62 e1 7c 48 5c c3    	vsubps zmm16,zmm0,zmm3
  a2608f:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x1c0]
  a26096:	07 
  a26097:	62 81 7c 48 58 d1    	vaddps zmm18,zmm0,zmm25
  a2609d:	62 81 7c 48 5c e1    	vsubps zmm20,zmm0,zmm25
  a260a3:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x180]
  a260aa:	06 
  a260ab:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x4c0]
  a260b2:	13 
  a260b3:	62 e1 7c 48 58 fb    	vaddps zmm23,zmm0,zmm3
  a260b9:	62 61 7c 48 5c c3    	vsubps zmm24,zmm0,zmm3
  a260bf:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x40]
  a260c6:	01 
  a260c7:	62 21 7c 48 58 cb    	vaddps zmm25,zmm0,zmm19
  a260cd:	62 a1 7c 48 5c db    	vsubps zmm19,zmm0,zmm19
  a260d3:	62 01 54 40 58 d4    	vaddps zmm26,zmm21,zmm28
  a260d9:	62 81 54 40 5c ec    	vsubps zmm21,zmm21,zmm28
  a260df:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x140]
  a260e6:	05 
  a260e7:	62 01 7c 48 58 e5    	vaddps zmm28,zmm0,zmm29
  a260ed:	62 01 7c 48 5c ed    	vsubps zmm29,zmm0,zmm29
  a260f3:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0xc0]
  a260fa:	03 
  a260fb:	62 21 7c 48 58 f1    	vaddps zmm30,zmm0,zmm17
  a26101:	62 a1 7c 48 5c c9    	vsubps zmm17,zmm0,zmm17
  a26107:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x200]
  a2610e:	08 
  a2610f:	62 21 7c 48 58 fe    	vaddps zmm31,zmm0,zmm22
  a26115:	62 e1 4c 40 5c f0    	vsubps zmm22,zmm22,zmm0
  a2611b:	62 b1 3c 40 58 c3    	vaddps zmm0,zmm24,zmm19
  a26121:	62 81 64 40 5c d8    	vsubps zmm19,zmm19,zmm24
  a26127:	62 01 54 40 5c c5    	vsubps zmm24,zmm21,zmm29
  a2612d:	62 a1 14 40 58 ed    	vaddps zmm21,zmm29,zmm21
  a26133:	62 01 0c 48 58 ef    	vaddps zmm29,zmm14,zmm31
  a26139:	62 11 0c 48 5c f7    	vsubps zmm14,zmm14,zmm31
  a2613f:	62 01 34 40 58 fa    	vaddps zmm31,zmm25,zmm26
  a26145:	62 01 34 40 5c ca    	vsubps zmm25,zmm25,zmm26
  a2614b:	62 61 54 48 58 d6    	vaddps zmm26,zmm5,zmm6
  a26151:	62 f1 54 48 5c ee    	vsubps zmm5,zmm5,zmm6
  a26157:	62 d1 24 48 58 f4    	vaddps zmm6,zmm11,zmm12
  a2615d:	62 51 24 48 5c dc    	vsubps zmm11,zmm11,zmm12
  a26163:	62 51 14 48 58 e2    	vaddps zmm12,zmm13,zmm10
  a26169:	62 51 14 48 5c d2    	vsubps zmm10,zmm13,zmm10
  a2616f:	62 71 3c 48 58 ea    	vaddps zmm13,zmm8,zmm2
  a26175:	62 f1 3c 48 5c d2    	vsubps zmm2,zmm8,zmm2
  a2617b:	62 31 0c 40 58 c2    	vaddps zmm8,zmm30,zmm18
  a26181:	62 a1 0c 40 5c d2    	vsubps zmm18,zmm30,zmm18
  a26187:	62 01 44 40 58 f4    	vaddps zmm30,zmm23,zmm28
  a2618d:	62 a1 1c 40 5c ff    	vsubps zmm23,zmm28,zmm23
  a26193:	62 41 54 48 58 e3    	vaddps zmm28,zmm5,zmm11
  a26199:	62 f1 24 48 5c ed    	vsubps zmm5,zmm11,zmm5
  a2619f:	62 71 2c 48 5c da    	vsubps zmm11,zmm10,zmm2
  a261a5:	62 d1 6c 48 58 d2    	vaddps zmm2,zmm2,zmm10
  a261ab:	62 72 7d 48 18 15 e7 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff64f1e7]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a261b2:	f1 64 ff 
  a261b5:	62 d1 7c 48 59 c2    	vmulps zmm0,zmm0,zmm10
  a261bb:	62 41 3c 40 59 c2    	vmulps zmm24,zmm24,zmm10
  a261c1:	62 c1 64 40 59 da    	vmulps zmm19,zmm19,zmm10
  a261c7:	62 c1 54 40 59 ea    	vmulps zmm21,zmm21,zmm10
  a261cd:	62 41 1c 40 59 e2    	vmulps zmm28,zmm28,zmm10
  a261d3:	62 51 24 48 59 da    	vmulps zmm11,zmm11,zmm10
  a261d9:	62 d1 54 48 59 ea    	vmulps zmm5,zmm5,zmm10
  a261df:	62 d1 6c 48 59 fa    	vmulps zmm7,zmm2,zmm10
  a261e5:	62 31 7c 40 58 d4    	vaddps zmm10,zmm16,zmm20
  a261eb:	62 a1 7c 40 5c c4    	vsubps zmm16,zmm16,zmm20
  a261f1:	62 a1 64 40 5c e5    	vsubps zmm20,zmm19,zmm21
  a261f7:	62 a1 64 40 58 dd    	vaddps zmm19,zmm19,zmm21
  a261fd:	62 a1 4c 40 58 e9    	vaddps zmm21,zmm22,zmm17
  a26203:	62 a1 74 40 5c ce    	vsubps zmm17,zmm17,zmm22
  a26209:	62 81 7c 48 58 f0    	vaddps zmm22,zmm0,zmm24
  a2620f:	62 f1 3c 40 5c c0    	vsubps zmm0,zmm24,zmm0
  a26215:	62 01 14 40 58 c6    	vaddps zmm24,zmm29,zmm30
  a2621b:	62 91 14 40 5c d6    	vsubps zmm2,zmm29,zmm30
  a26221:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm2
  a26228:	03 
  a26229:	62 41 4c 48 58 f4    	vaddps zmm30,zmm6,zmm12
  a2622f:	62 d1 4c 48 5c d4    	vsubps zmm2,zmm6,zmm12
  a26235:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm2
  a2623c:	02 
  a2623d:	62 91 3c 48 58 df    	vaddps zmm3,zmm8,zmm31
  a26243:	62 91 3c 48 5c d7    	vsubps zmm2,zmm8,zmm31
  a26249:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm2
  a26250:	01 
  a26251:	62 51 2c 40 58 c5    	vaddps zmm8,zmm26,zmm13
  a26257:	62 91 14 48 5c d2    	vsubps zmm2,zmm13,zmm26
  a2625d:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm2
  a26264:	05 
  a26265:	62 21 2c 48 58 d6    	vaddps zmm26,zmm10,zmm22
  a2626b:	62 b1 2c 48 5c d6    	vsubps zmm2,zmm10,zmm22
  a26271:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm2
  a26278:	04 
  a26279:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x400]
  a26280:	10 
  a26281:	62 51 6c 48 58 d7    	vaddps zmm10,zmm2,zmm15
  a26287:	62 41 6c 48 5c ff    	vsubps zmm31,zmm2,zmm15
  a2628d:	62 31 54 40 58 cc    	vaddps zmm9,zmm21,zmm20
  a26293:	62 21 54 40 5c ec    	vsubps zmm29,zmm21,zmm20
  a26299:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x480]
  a262a0:	12 
  a262a1:	62 81 6c 48 58 e3    	vaddps zmm20,zmm2,zmm27
  a262a7:	62 61 24 40 5c da    	vsubps zmm27,zmm27,zmm2
  a262ad:	62 91 0c 48 58 f1    	vaddps zmm6,zmm14,zmm25
  a262b3:	62 81 0c 48 5c f1    	vsubps zmm22,zmm14,zmm25
  a262b9:	62 61 54 48 5c cf    	vsubps zmm25,zmm5,zmm7
  a262bf:	62 e1 54 48 58 ef    	vaddps zmm21,zmm5,zmm7
  a262c5:	62 b1 44 40 58 ea    	vaddps zmm5,zmm23,zmm18
  a262cb:	62 a1 6c 40 5c ff    	vsubps zmm23,zmm18,zmm23
  a262d1:	62 c1 1c 40 58 d3    	vaddps zmm18,zmm28,zmm11
  a262d7:	62 01 24 48 5c e4    	vsubps zmm28,zmm11,zmm28
  a262dd:	62 31 7c 40 58 db    	vaddps zmm11,zmm16,zmm19
  a262e3:	62 31 7c 40 5c f3    	vsubps zmm14,zmm16,zmm19
  a262e9:	62 e1 74 48 58 dc    	vaddps zmm19,zmm1,zmm4
  a262ef:	62 71 74 48 5c ec    	vsubps zmm13,zmm1,zmm4
  a262f5:	62 f1 74 40 58 c8    	vaddps zmm1,zmm17,zmm0
  a262fb:	62 71 74 40 5c e0    	vsubps zmm12,zmm17,zmm0
  a26301:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x3c0]
  a26308:	0f 
  a26309:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x380]
  a26310:	0e 
  a26311:	62 f1 6c 48 5c c4    	vsubps zmm0,zmm2,zmm4
  a26317:	62 f1 6c 48 58 e4    	vaddps zmm4,zmm2,zmm4
  a2631d:	62 d1 3c 40 58 d0    	vaddps zmm2,zmm24,zmm8
  a26323:	62 51 3c 40 5c c0    	vsubps zmm8,zmm24,zmm8
  a26329:	62 91 64 48 58 fe    	vaddps zmm7,zmm3,zmm30
  a2632f:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm7
  a26336:	06 
  a26337:	62 01 64 48 5c f6    	vsubps zmm30,zmm3,zmm30
  a2633d:	62 b1 2c 40 58 dc    	vaddps zmm3,zmm26,zmm20
  a26343:	62 a1 2c 40 5c c4    	vsubps zmm16,zmm26,zmm20
  a26349:	62 41 34 48 58 c2    	vaddps zmm24,zmm9,zmm10
  a2634f:	62 c1 34 48 5c ca    	vsubps zmm17,zmm9,zmm10
  a26355:	62 31 4c 48 58 fa    	vaddps zmm15,zmm6,zmm18
  a2635b:	62 31 4c 48 5c ca    	vsubps zmm9,zmm6,zmm18
  a26361:	62 81 54 48 58 e1    	vaddps zmm20,zmm5,zmm25
  a26367:	62 81 54 48 5c d1    	vsubps zmm18,zmm5,zmm25
  a2636d:	62 f1 24 48 58 e8    	vaddps zmm5,zmm11,zmm0
  a26373:	62 f1 24 48 5c c0    	vsubps zmm0,zmm11,zmm0
  a26379:	62 31 74 48 58 d3    	vaddps zmm10,zmm1,zmm19
  a2637f:	62 b1 74 48 5c cb    	vsubps zmm1,zmm1,zmm19
  a26385:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm1
  a2638c:	07 
  a2638d:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0xc0]
  a26394:	03 
  a26395:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x80]
  a2639c:	02 
  a2639d:	62 f1 74 48 58 fe    	vaddps zmm7,zmm1,zmm6
  a263a3:	62 61 74 48 5c ce    	vsubps zmm25,zmm1,zmm6
  a263a9:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x40]
  a263b0:	01 
  a263b1:	62 71 7c 48 28 5c 24 	vmovaps zmm11,ZMMWORD PTR [rsp+0x140]
  a263b8:	05 
  a263b9:	62 f1 24 48 58 ce    	vaddps zmm1,zmm11,zmm6
  a263bf:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm1
  a263c6:	08 
  a263c7:	62 d1 4c 48 5c cb    	vsubps zmm1,zmm6,zmm11
  a263cd:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm1
  a263d4:	05 
  a263d5:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x100]
  a263dc:	04 
  a263dd:	62 91 74 48 58 f7    	vaddps zmm6,zmm1,zmm31
  a263e3:	62 01 74 48 5c ff    	vsubps zmm31,zmm1,zmm31
  a263e9:	62 91 14 40 58 cb    	vaddps zmm1,zmm29,zmm27
  a263ef:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm1
  a263f6:	01 
  a263f7:	62 91 14 40 5c cb    	vsubps zmm1,zmm29,zmm27
  a263fd:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm1
  a26404:	04 
  a26405:	62 b1 4c 40 58 cd    	vaddps zmm1,zmm22,zmm21
  a2640b:	62 a1 4c 40 5c ed    	vsubps zmm21,zmm22,zmm21
  a26411:	62 11 44 40 58 dc    	vaddps zmm11,zmm23,zmm28
  a26417:	62 81 44 40 5c f4    	vsubps zmm22,zmm23,zmm28
  a2641d:	62 41 0c 48 58 e5    	vaddps zmm28,zmm14,zmm13
  a26423:	62 41 0c 48 5c ed    	vsubps zmm29,zmm14,zmm13
  a26429:	62 71 1c 48 5c ec    	vsubps zmm13,zmm12,zmm4
  a2642f:	62 f1 1c 48 58 e4    	vaddps zmm4,zmm12,zmm4
  a26435:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm4
  a2643c:	02 
  a2643d:	62 71 7c 48 28 35 39 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff6a0b39]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a26444:	0b 6a ff 
  a26447:	62 61 7c 48 28 d2    	vmovaps zmm26,zmm2
  a2644d:	62 42 0d 48 7f d0    	vpermt2ps zmm26,zmm14,zmm8
  a26453:	62 e1 7c 48 28 3d 63 	vmovaps zmm23,ZMMWORD PTR [rip+0xffffffffff6a0b63]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a2645a:	0b 6a ff 
  a2645d:	62 d2 45 40 7f d0    	vpermt2ps zmm2,zmm23,zmm8
  a26463:	62 71 7c 48 28 c3    	vmovaps zmm8,zmm3
  a26469:	62 32 0d 48 7f c0    	vpermt2ps zmm8,zmm14,zmm16
  a2646f:	62 b2 45 40 7f d8    	vpermt2ps zmm3,zmm23,zmm16
  a26475:	62 d1 7c 48 28 e7    	vmovaps zmm4,zmm15
  a2647b:	62 d2 0d 48 7f e1    	vpermt2ps zmm4,zmm14,zmm9
  a26481:	62 52 45 40 7f f9    	vpermt2ps zmm15,zmm23,zmm9
  a26487:	62 71 7c 48 28 cd    	vmovaps zmm9,zmm5
  a2648d:	62 72 0d 48 7f c8    	vpermt2ps zmm9,zmm14,zmm0
  a26493:	62 f2 45 40 7f e8    	vpermt2ps zmm5,zmm23,zmm0
  a26499:	62 f1 7c 48 28 c7    	vmovaps zmm0,zmm7
  a2649f:	62 92 0d 48 7f c1    	vpermt2ps zmm0,zmm14,zmm25
  a264a5:	62 92 45 40 7f f9    	vpermt2ps zmm7,zmm23,zmm25
  a264ab:	62 61 7c 48 28 ce    	vmovaps zmm25,zmm6
  a264b1:	62 02 0d 48 7f cf    	vpermt2ps zmm25,zmm14,zmm31
  a264b7:	62 92 45 40 7f f7    	vpermt2ps zmm6,zmm23,zmm31
  a264bd:	62 61 7c 48 28 d9    	vmovaps zmm27,zmm1
  a264c3:	62 22 0d 48 7f dd    	vpermt2ps zmm27,zmm14,zmm21
  a264c9:	62 b2 45 40 7f cd    	vpermt2ps zmm1,zmm23,zmm21
  a264cf:	62 81 7c 48 28 c4    	vmovaps zmm16,zmm28
  a264d5:	62 82 0d 48 7f c5    	vpermt2ps zmm16,zmm14,zmm29
  a264db:	62 02 45 40 7f e5    	vpermt2ps zmm28,zmm23,zmm29
  a264e1:	62 61 7c 48 28 3d 15 	vmovaps zmm31,ZMMWORD PTR [rip+0xffffffffff6a0a15]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a264e8:	0a 6a ff 
  a264eb:	62 81 7c 48 28 ea    	vmovaps zmm21,zmm26
  a264f1:	62 e2 05 40 7f e8    	vpermt2ps zmm21,zmm31,zmm0
  a264f7:	62 71 7c 48 28 25 3f 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff6a0a3f]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a264fe:	0a 6a ff 
  a26501:	62 62 1d 48 7f d0    	vpermt2ps zmm26,zmm12,zmm0
  a26507:	62 41 7c 48 28 e8    	vmovaps zmm29,zmm8
  a2650d:	62 02 05 40 7f e9    	vpermt2ps zmm29,zmm31,zmm25
  a26513:	62 12 1d 48 7f c1    	vpermt2ps zmm8,zmm12,zmm25
  a26519:	62 61 7c 48 28 cc    	vmovaps zmm25,zmm4
  a2651f:	62 02 05 40 7f cb    	vpermt2ps zmm25,zmm31,zmm27
  a26525:	62 92 1d 48 7f e3    	vpermt2ps zmm4,zmm12,zmm27
  a2652b:	62 41 7c 48 28 d9    	vmovaps zmm27,zmm9
  a26531:	62 22 05 40 7f d8    	vpermt2ps zmm27,zmm31,zmm16
  a26537:	62 32 1d 48 7f c8    	vpermt2ps zmm9,zmm12,zmm16
  a2653d:	62 f2 05 40 7f d7    	vpermt2ps zmm2,zmm31,zmm7
  a26543:	62 f2 05 40 7f de    	vpermt2ps zmm3,zmm31,zmm6
  a26549:	62 72 05 40 7f f9    	vpermt2ps zmm15,zmm31,zmm1
  a2654f:	62 d1 ed 48 14 c7    	vunpcklpd zmm0,zmm2,zmm15
  a26555:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm0
  a2655c:	03 
  a2655d:	62 92 05 40 7f ec    	vpermt2ps zmm5,zmm31,zmm28
  a26563:	62 61 e5 48 14 e5    	vunpcklpd zmm28,zmm3,zmm5
  a26569:	62 81 d5 40 14 d9    	vunpcklpd zmm19,zmm21,zmm25
  a2656f:	62 91 d5 40 15 e9    	vunpckhpd zmm5,zmm21,zmm25
  a26575:	62 91 95 40 14 d3    	vunpcklpd zmm2,zmm29,zmm27
  a2657b:	62 91 95 40 15 cb    	vunpckhpd zmm1,zmm29,zmm27
  a26581:	62 71 ad 40 14 fc    	vunpcklpd zmm15,zmm26,zmm4
  a26587:	62 f1 ad 40 15 f4    	vunpckhpd zmm6,zmm26,zmm4
  a2658d:	62 41 bd 48 14 d1    	vunpcklpd zmm26,zmm8,zmm9
  a26593:	62 41 bd 48 15 c9    	vunpckhpd zmm25,zmm8,zmm9
  a26599:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x180]
  a265a0:	06 
  a265a1:	62 61 7c 48 28 dc    	vmovaps zmm27,zmm4
  a265a7:	62 02 0d 48 7f de    	vpermt2ps zmm27,zmm14,zmm30
  a265ad:	62 92 45 40 7f e6    	vpermt2ps zmm4,zmm23,zmm30
  a265b3:	62 e1 7c 48 28 c4    	vmovaps zmm16,zmm4
  a265b9:	62 01 7c 48 28 e8    	vmovaps zmm29,zmm24
  a265bf:	62 22 0d 48 7f e9    	vpermt2ps zmm29,zmm14,zmm17
  a265c5:	62 22 45 40 7f c1    	vpermt2ps zmm24,zmm23,zmm17
  a265cb:	62 21 7c 48 28 f4    	vmovaps zmm30,zmm20
  a265d1:	62 22 0d 48 7f f2    	vpermt2ps zmm30,zmm14,zmm18
  a265d7:	62 a2 45 40 7f e2    	vpermt2ps zmm20,zmm23,zmm18
  a265dd:	62 c1 7c 48 28 d2    	vmovaps zmm18,zmm10
  a265e3:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x1c0]
  a265ea:	07 
  a265eb:	62 e2 0d 48 7f d0    	vpermt2ps zmm18,zmm14,zmm0
  a265f1:	62 72 45 40 7f d0    	vpermt2ps zmm10,zmm23,zmm0
  a265f7:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x200]
  a265fe:	08 
  a265ff:	62 f1 7c 48 28 e3    	vmovaps zmm4,zmm3
  a26605:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x140]
  a2660c:	05 
  a2660d:	62 f2 0d 48 7f e0    	vpermt2ps zmm4,zmm14,zmm0
  a26613:	62 f2 45 40 7f d8    	vpermt2ps zmm3,zmm23,zmm0
  a26619:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x40]
  a26620:	01 
  a26621:	62 d1 7c 48 28 f8    	vmovaps zmm7,zmm8
  a26627:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x100]
  a2662e:	04 
  a2662f:	62 f2 0d 48 7f f8    	vpermt2ps zmm7,zmm14,zmm0
  a26635:	62 72 45 40 7f c0    	vpermt2ps zmm8,zmm23,zmm0
  a2663b:	62 d1 7c 48 28 c0    	vmovaps zmm0,zmm8
  a26641:	62 51 7c 48 28 c3    	vmovaps zmm8,zmm11
  a26647:	62 32 0d 48 7f c6    	vpermt2ps zmm8,zmm14,zmm22
  a2664d:	62 32 45 40 7f de    	vpermt2ps zmm11,zmm23,zmm22
  a26653:	62 e1 7c 48 28 0d a3 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff6a07a3]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a2665a:	07 6a ff 
  a2665d:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x80]
  a26664:	02 
  a26665:	62 52 15 48 77 f1    	vpermi2ps zmm14,zmm13,zmm9
  a2666b:	62 52 45 40 7f e9    	vpermt2ps zmm13,zmm23,zmm9
  a26671:	62 31 7c 48 28 cb    	vmovaps zmm9,zmm19
  a26677:	62 72 75 40 7f ca    	vpermt2ps zmm9,zmm17,zmm2
  a2667d:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm9
  a26684:	02 
  a26685:	62 e1 7c 48 28 2d b1 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff6a07b1]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a2668c:	07 6a ff 
  a2668f:	62 e2 55 40 7f da    	vpermt2ps zmm19,zmm21,zmm2
  a26695:	62 e1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm19
  a2669c:	06 
  a2669d:	62 e1 7c 48 28 f5    	vmovaps zmm22,zmm5
  a266a3:	62 e2 75 40 7f f1    	vpermt2ps zmm22,zmm17,zmm1
  a266a9:	62 f2 55 40 7f e9    	vpermt2ps zmm5,zmm21,zmm1
  a266af:	62 c1 7c 48 28 df    	vmovaps zmm19,zmm15
  a266b5:	62 82 75 40 7f da    	vpermt2ps zmm19,zmm17,zmm26
  a266bb:	62 12 55 40 7f fa    	vpermt2ps zmm15,zmm21,zmm26
  a266c1:	62 71 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm15
  a266c8:	01 
  a266c9:	62 61 7c 48 28 d6    	vmovaps zmm26,zmm6
  a266cf:	62 02 75 40 7f d1    	vpermt2ps zmm26,zmm17,zmm25
  a266d5:	62 92 55 40 7f f1    	vpermt2ps zmm6,zmm21,zmm25
  a266db:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0xc0]
  a266e2:	03 
  a266e3:	62 61 7c 48 28 c9    	vmovaps zmm25,zmm1
  a266e9:	62 02 75 40 7f cc    	vpermt2ps zmm25,zmm17,zmm28
  a266ef:	62 92 55 40 7f cc    	vpermt2ps zmm1,zmm21,zmm28
  a266f5:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm1
  a266fc:	03 
  a266fd:	62 91 7c 48 28 cb    	vmovaps zmm1,zmm27
  a26703:	62 f2 05 40 7f cc    	vpermt2ps zmm1,zmm31,zmm4
  a26709:	62 62 1d 48 7f dc    	vpermt2ps zmm27,zmm12,zmm4
  a2670f:	62 91 7c 48 28 d5    	vmovaps zmm2,zmm29
  a26715:	62 f2 05 40 7f d7    	vpermt2ps zmm2,zmm31,zmm7
  a2671b:	62 62 1d 48 7f ef    	vpermt2ps zmm29,zmm12,zmm7
  a26721:	62 91 7c 48 28 e6    	vmovaps zmm4,zmm30
  a26727:	62 d2 05 40 7f e0    	vpermt2ps zmm4,zmm31,zmm8
  a2672d:	62 42 1d 48 7f f0    	vpermt2ps zmm30,zmm12,zmm8
  a26733:	62 b1 7c 48 28 fa    	vmovaps zmm7,zmm18
  a26739:	62 c2 1d 48 7f d6    	vpermt2ps zmm18,zmm12,zmm14
  a2673f:	62 d2 05 40 7f fe    	vpermt2ps zmm7,zmm31,zmm14
  a26745:	62 e2 05 40 7f c3    	vpermt2ps zmm16,zmm31,zmm3
  a2674b:	62 62 05 40 7f c0    	vpermt2ps zmm24,zmm31,zmm0
  a26751:	62 c2 05 40 7f e3    	vpermt2ps zmm20,zmm31,zmm11
  a26757:	62 31 fd 40 14 e4    	vunpcklpd zmm12,zmm16,zmm20
  a2675d:	62 52 05 40 7f d5    	vpermt2ps zmm10,zmm31,zmm13
  a26763:	62 51 bd 40 14 ca    	vunpcklpd zmm9,zmm24,zmm10
  a26769:	62 71 f5 48 14 dc    	vunpcklpd zmm11,zmm1,zmm4
  a2676f:	62 e1 f5 48 15 c4    	vunpckhpd zmm16,zmm1,zmm4
  a26775:	62 f1 ed 48 14 cf    	vunpcklpd zmm1,zmm2,zmm7
  a2677b:	62 f1 ed 48 15 e7    	vunpckhpd zmm4,zmm2,zmm7
  a26781:	62 11 a5 40 14 c6    	vunpcklpd zmm8,zmm27,zmm30
  a26787:	62 81 a5 40 15 e6    	vunpckhpd zmm20,zmm27,zmm30
  a2678d:	62 b1 95 40 14 fa    	vunpcklpd zmm7,zmm29,zmm18
  a26793:	62 31 95 40 15 d2    	vunpckhpd zmm10,zmm29,zmm18
  a26799:	62 d1 7c 48 28 d3    	vmovaps zmm2,zmm11
  a2679f:	62 f2 75 40 7f d1    	vpermt2ps zmm2,zmm17,zmm1
  a267a5:	62 72 55 40 7f d9    	vpermt2ps zmm11,zmm21,zmm1
  a267ab:	62 b1 7c 48 28 c8    	vmovaps zmm1,zmm16
  a267b1:	62 f2 75 40 7f cc    	vpermt2ps zmm1,zmm17,zmm4
  a267b7:	62 e2 55 40 7f c4    	vpermt2ps zmm16,zmm21,zmm4
  a267bd:	62 d1 7c 48 28 e0    	vmovaps zmm4,zmm8
  a267c3:	62 f2 75 40 7f e7    	vpermt2ps zmm4,zmm17,zmm7
  a267c9:	62 72 55 40 7f c7    	vpermt2ps zmm8,zmm21,zmm7
  a267cf:	62 b1 7c 48 28 fc    	vmovaps zmm7,zmm20
  a267d5:	62 d2 75 40 7f fa    	vpermt2ps zmm7,zmm17,zmm10
  a267db:	62 c2 55 40 7f e2    	vpermt2ps zmm20,zmm21,zmm10
  a267e1:	62 c2 1d 48 77 c9    	vpermi2ps zmm17,zmm12,zmm9
  a267e7:	62 52 55 40 7f e1    	vpermt2ps zmm12,zmm21,zmm9
  a267ed:	62 e1 7c 48 10 7a 02 	vmovups zmm23,ZMMWORD PTR [rdx+0x80]
  a267f4:	62 e1 7c 48 10 6a 03 	vmovups zmm21,ZMMWORD PTR [rdx+0xc0]
  a267fb:	62 71 7c 48 10 4a 04 	vmovups zmm9,ZMMWORD PTR [rdx+0x100]
  a26802:	62 61 7c 48 10 62 05 	vmovups zmm28,ZMMWORD PTR [rdx+0x140]
  a26809:	62 51 4c 40 59 d1    	vmulps zmm10,zmm22,zmm9
  a2680f:	62 12 75 48 bc d4    	vfnmadd231ps zmm10,zmm1,zmm28
  a26815:	62 61 7c 48 10 6a 11 	vmovups zmm29,ZMMWORD PTR [rdx+0x440]
  a2681c:	62 71 7c 48 10 6a 09 	vmovups zmm13,ZMMWORD PTR [rdx+0x240]
  a26823:	62 71 7c 48 10 72 08 	vmovups zmm14,ZMMWORD PTR [rdx+0x200]
  a2682a:	62 51 64 40 59 fe    	vmulps zmm15,zmm19,zmm14
  a26830:	62 52 5d 48 bc fd    	vfnmadd231ps zmm15,zmm4,zmm13
  a26836:	62 c1 5c 48 59 d6    	vmulps zmm18,zmm4,zmm14
  a2683c:	62 f1 7c 48 10 62 0d 	vmovups zmm4,ZMMWORD PTR [rdx+0x340]
  a26843:	62 a2 15 48 b8 d3    	vfmadd231ps zmm18,zmm13,zmm19
  a26849:	62 71 7c 48 10 6a 0c 	vmovups zmm13,ZMMWORD PTR [rdx+0x300]
  a26850:	62 41 2c 40 59 c5    	vmulps zmm24,zmm26,zmm13
  a26856:	62 62 45 48 bc c4    	vfnmadd231ps zmm24,zmm7,zmm4
  a2685c:	62 c1 44 48 59 dd    	vmulps zmm19,zmm7,zmm13
  a26862:	62 61 7c 48 10 72 10 	vmovups zmm30,ZMMWORD PTR [rdx+0x400]
  a26869:	62 82 5d 48 b8 da    	vfmadd231ps zmm19,zmm4,zmm26
  a2686f:	62 01 34 40 59 d6    	vmulps zmm26,zmm25,zmm30
  a26875:	62 02 75 40 bc d5    	vfnmadd231ps zmm26,zmm17,zmm29
  a2687b:	62 11 2c 48 5c ea    	vsubps zmm13,zmm10,zmm26
  a26881:	62 41 74 48 59 d9    	vmulps zmm27,zmm1,zmm9
  a26887:	62 11 04 48 5c f0    	vsubps zmm14,zmm15,zmm24
  a2688d:	62 22 1d 40 b8 de    	vfmadd231ps zmm27,zmm28,zmm22
  a26893:	62 72 7d 48 18 0d bb 	vbroadcastss zmm9,DWORD PTR [rip+0xffffffffff64eebb]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a2689a:	ee 64 ff 
  a2689d:	62 d1 0c 48 59 f9    	vmulps zmm7,zmm14,zmm9
  a268a3:	62 81 74 40 59 ce    	vmulps zmm17,zmm17,zmm30
  a268a9:	62 82 15 40 b8 c9    	vfmadd231ps zmm17,zmm29,zmm25
  a268af:	62 f1 7c 48 10 4a 0f 	vmovups zmm1,ZMMWORD PTR [rdx+0x3c0]
  a268b6:	62 f1 7c 48 10 62 0e 	vmovups zmm4,ZMMWORD PTR [rdx+0x380]
  a268bd:	62 e1 5c 40 59 f4    	vmulps zmm22,zmm20,zmm4
  a268c3:	62 e2 4d 48 b8 f1    	vfmadd231ps zmm22,zmm6,zmm1
  a268c9:	62 61 4c 48 59 e4    	vmulps zmm28,zmm6,zmm4
  a268cf:	62 f1 7c 48 10 62 07 	vmovups zmm4,ZMMWORD PTR [rdx+0x1c0]
  a268d6:	62 22 75 48 bc e4    	vfnmadd231ps zmm28,zmm1,zmm20
  a268dc:	62 f1 7c 48 10 4a 06 	vmovups zmm1,ZMMWORD PTR [rdx+0x180]
  a268e3:	62 61 7c 40 59 c9    	vmulps zmm25,zmm16,zmm1
  a268e9:	62 62 55 48 b8 cc    	vfmadd231ps zmm25,zmm5,zmm4
  a268ef:	62 61 54 48 59 f1    	vmulps zmm30,zmm5,zmm1
  a268f5:	62 f1 7c 48 10 4a 13 	vmovups zmm1,ZMMWORD PTR [rdx+0x4c0]
  a268fc:	62 22 5d 48 bc f0    	vfnmadd231ps zmm30,zmm4,zmm16
  a26902:	62 f1 7c 48 10 62 12 	vmovups zmm4,ZMMWORD PTR [rdx+0x480]
  a26909:	62 61 1c 48 59 ec    	vmulps zmm29,zmm12,zmm4
  a2690f:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0xc0]
  a26916:	03 
  a26917:	62 62 7d 48 b8 e9    	vfmadd231ps zmm29,zmm0,zmm1
  a2691d:	62 f1 7c 48 59 c4    	vmulps zmm0,zmm0,zmm4
  a26923:	62 f2 7d 48 18 2d 73 	vbroadcastss zmm5,DWORD PTR [rip+0xffffffffff64ea73]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a2692a:	ea 64 ff 
  a2692d:	62 f2 15 48 b8 fd    	vfmadd231ps zmm7,zmm13,zmm5
  a26933:	62 d2 75 48 bc c4    	vfnmadd231ps zmm0,zmm1,zmm12
  a26939:	62 b1 6c 40 58 e3    	vaddps zmm4,zmm18,zmm19
  a2693f:	62 21 24 48 59 ff    	vmulps zmm31,zmm11,zmm23
  a26945:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x180]
  a2694c:	06 
  a2694d:	62 22 75 48 b8 fd    	vfmadd231ps zmm31,zmm1,zmm21
  a26953:	62 31 74 48 59 e7    	vmulps zmm12,zmm1,zmm23
  a26959:	62 e1 7c 48 10 42 0b 	vmovups zmm16,ZMMWORD PTR [rdx+0x2c0]
  a26960:	62 52 55 40 bc e3    	vfnmadd231ps zmm12,zmm21,zmm11
  a26966:	62 f1 7c 48 10 4a 0a 	vmovups zmm1,ZMMWORD PTR [rdx+0x280]
  a2696d:	62 f1 3c 48 59 d9    	vmulps zmm3,zmm8,zmm1
  a26973:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x40]
  a2697a:	01 
  a2697b:	62 b2 4d 48 b8 d8    	vfmadd231ps zmm3,zmm6,zmm16
  a26981:	62 f1 4c 48 59 c9    	vmulps zmm1,zmm6,zmm1
  a26987:	62 b1 24 40 58 f1    	vaddps zmm6,zmm27,zmm17
  a2698d:	62 d2 7d 40 bc c8    	vfnmadd231ps zmm1,zmm16,zmm8
  a26993:	62 e2 7d 48 18 3d 4b 	vbroadcastss zmm23,DWORD PTR [rip+0xffffffffff64ed4b]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a2699a:	ed 64 ff 
  a2699d:	62 a1 7c 48 28 e7    	vmovaps zmm20,zmm23
  a269a3:	62 e2 4d 48 a8 e2    	vfmadd213ps zmm20,zmm6,zmm2
  a269a9:	62 11 04 48 58 c0    	vaddps zmm8,zmm15,zmm24
  a269af:	62 e2 7d 48 18 2d 8b 	vbroadcastss zmm21,DWORD PTR [rip+0xffffffffff64ec8b]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a269b6:	ec 64 ff 
  a269b9:	62 a2 5d 48 bc e5    	vfnmadd231ps zmm20,zmm4,zmm21
  a269bf:	62 11 2c 48 58 d2    	vaddps zmm10,zmm10,zmm26
  a269c5:	62 01 14 40 58 c7    	vaddps zmm24,zmm29,zmm31
  a269cb:	62 21 24 40 5c d1    	vsubps zmm26,zmm27,zmm17
  a269d1:	62 81 4c 40 58 c1    	vaddps zmm16,zmm22,zmm25
  a269d7:	62 21 6c 40 5c db    	vsubps zmm27,zmm18,zmm19
  a269dd:	62 51 7c 48 5c dc    	vsubps zmm11,zmm0,zmm12
  a269e3:	62 51 7c 48 58 e4    	vaddps zmm12,zmm0,zmm12
  a269e9:	62 91 1c 40 5c c6    	vsubps zmm0,zmm28,zmm30
  a269ef:	62 11 1c 40 58 fe    	vaddps zmm15,zmm28,zmm30
  a269f5:	62 a1 7c 48 28 cf    	vmovaps zmm17,zmm23
  a269fb:	62 e2 7d 40 a8 cb    	vfmadd213ps zmm17,zmm16,zmm3
  a26a01:	62 a2 3d 40 bc cd    	vfnmadd231ps zmm17,zmm24,zmm21
  a26a07:	62 81 4c 40 5c f1    	vsubps zmm22,zmm22,zmm25
  a26a0d:	62 c1 24 48 59 d1    	vmulps zmm18,zmm11,zmm9
  a26a13:	62 e2 7d 48 b8 d5    	vfmadd231ps zmm18,zmm0,zmm5
  a26a19:	62 01 14 40 5c cf    	vsubps zmm25,zmm29,zmm31
  a26a1f:	62 a1 7c 48 28 df    	vmovaps zmm19,zmm23
  a26a25:	62 61 7c 48 28 74 24 	vmovaps zmm30,ZMMWORD PTR [rsp+0x80]
  a26a2c:	02 
  a26a2d:	62 82 2d 48 a8 de    	vfmadd213ps zmm19,zmm10,zmm30
  a26a33:	62 a2 3d 48 bc dd    	vfnmadd231ps zmm19,zmm8,zmm21
  a26a39:	62 41 14 48 59 e1    	vmulps zmm28,zmm13,zmm9
  a26a3f:	62 42 55 48 bc e6    	vfnmadd231ps zmm28,zmm5,zmm14
  a26a45:	62 51 24 40 59 e9    	vmulps zmm13,zmm27,zmm9
  a26a4b:	62 72 2d 40 b8 ed    	vfmadd231ps zmm13,zmm26,zmm5
  a26a51:	62 d1 7c 48 59 c1    	vmulps zmm0,zmm0,zmm9
  a26a57:	62 d2 55 48 bc c3    	vfnmadd231ps zmm0,zmm5,zmm11
  a26a5d:	62 31 7c 48 28 df    	vmovaps zmm11,zmm23
  a26a63:	62 72 05 48 a8 d9    	vfmadd213ps zmm11,zmm15,zmm1
  a26a69:	62 32 1d 48 bc dd    	vfnmadd231ps zmm11,zmm12,zmm21
  a26a6f:	62 51 2c 40 59 f1    	vmulps zmm14,zmm26,zmm9
  a26a75:	62 12 55 48 bc f3    	vfnmadd231ps zmm14,zmm5,zmm27
  a26a7b:	62 41 34 40 59 d1    	vmulps zmm26,zmm25,zmm9
  a26a81:	62 62 4d 40 b8 d5    	vfmadd231ps zmm26,zmm22,zmm5
  a26a87:	62 51 4c 40 59 c9    	vmulps zmm9,zmm22,zmm9
  a26a8d:	62 a1 7c 48 28 f5    	vmovaps zmm22,zmm21
  a26a93:	62 e2 4d 48 ac f2    	vfnmadd213ps zmm22,zmm6,zmm2
  a26a99:	62 a2 5d 48 b8 f7    	vfmadd231ps zmm22,zmm4,zmm23
  a26a9f:	62 72 35 40 bc cd    	vfnmadd231ps zmm9,zmm25,zmm5
  a26aa5:	62 b1 7c 48 28 ed    	vmovaps zmm5,zmm21
  a26aab:	62 f2 7d 40 ac eb    	vfnmadd213ps zmm5,zmm16,zmm3
  a26ab1:	62 b2 3d 40 b8 ef    	vfmadd231ps zmm5,zmm24,zmm23
  a26ab7:	62 21 7c 48 28 cd    	vmovaps zmm25,zmm21
  a26abd:	62 02 2d 48 ac ce    	vfnmadd213ps zmm25,zmm10,zmm30
  a26ac3:	62 22 3d 48 b8 cf    	vfmadd231ps zmm25,zmm8,zmm23
  a26ac9:	62 e2 05 48 ac e9    	vfnmadd213ps zmm21,zmm15,zmm1
  a26acf:	62 a2 1d 48 b8 ef    	vfmadd231ps zmm21,zmm12,zmm23
  a26ad5:	62 a1 1c 40 58 fe    	vaddps zmm23,zmm28,zmm22
  a26adb:	62 81 4c 40 5c f4    	vsubps zmm22,zmm22,zmm28
  a26ae1:	62 61 54 48 58 d8    	vaddps zmm27,zmm5,zmm0
  a26ae7:	62 f1 54 48 5c e8    	vsubps zmm5,zmm5,zmm0
  a26aed:	62 41 34 40 5c e6    	vsubps zmm28,zmm25,zmm14
  a26af3:	62 51 34 40 58 f6    	vaddps zmm14,zmm25,zmm14
  a26af9:	62 41 54 40 5c c9    	vsubps zmm25,zmm21,zmm9
  a26aff:	62 c1 54 40 58 e9    	vaddps zmm21,zmm21,zmm9
  a26b05:	62 21 44 48 58 ec    	vaddps zmm29,zmm7,zmm20
  a26b0b:	62 e1 5c 40 5c e7    	vsubps zmm20,zmm20,zmm7
  a26b11:	62 b1 74 40 58 fa    	vaddps zmm7,zmm17,zmm18
  a26b17:	62 a1 74 40 5c ca    	vsubps zmm17,zmm17,zmm18
  a26b1d:	62 c1 64 40 5c d5    	vsubps zmm18,zmm19,zmm13
  a26b23:	62 51 64 40 58 ed    	vaddps zmm13,zmm19,zmm13
  a26b29:	62 81 24 48 5c da    	vsubps zmm19,zmm11,zmm26
  a26b2f:	62 11 24 48 58 da    	vaddps zmm11,zmm11,zmm26
  a26b35:	62 f1 4c 48 58 c2    	vaddps zmm0,zmm6,zmm2
  a26b3b:	62 f1 5c 48 58 f0    	vaddps zmm6,zmm4,zmm0
  a26b41:	62 b1 64 48 58 c0    	vaddps zmm0,zmm3,zmm16
  a26b47:	62 81 7c 48 58 c0    	vaddps zmm16,zmm0,zmm24
  a26b4d:	62 d1 0c 40 58 c2    	vaddps zmm0,zmm30,zmm10
  a26b53:	62 41 7c 48 58 c0    	vaddps zmm24,zmm0,zmm8
  a26b59:	62 f1 14 40 5c e7    	vsubps zmm4,zmm29,zmm7
  a26b5f:	62 d1 74 48 58 cf    	vaddps zmm1,zmm1,zmm15
  a26b65:	62 b1 6c 40 5c c3    	vsubps zmm0,zmm18,zmm19
  a26b6b:	62 51 74 48 58 e4    	vaddps zmm12,zmm1,zmm12
  a26b71:	62 11 44 40 58 cb    	vaddps zmm9,zmm23,zmm27
  a26b77:	62 71 14 40 58 ff    	vaddps zmm15,zmm29,zmm7
  a26b7d:	62 91 1c 40 58 c9    	vaddps zmm1,zmm28,zmm25
  a26b83:	62 b1 6c 40 58 db    	vaddps zmm3,zmm18,zmm19
  a26b89:	62 e1 4c 40 5c d5    	vsubps zmm18,zmm22,zmm5
  a26b8f:	62 81 44 40 5c db    	vsubps zmm19,zmm23,zmm27
  a26b95:	62 b1 0c 48 5c d5    	vsubps zmm2,zmm14,zmm21
  a26b9b:	62 91 1c 40 5c f9    	vsubps zmm7,zmm28,zmm25
  a26ba1:	62 a1 5c 40 58 f9    	vaddps zmm23,zmm20,zmm17
  a26ba7:	62 e1 4c 40 58 f5    	vaddps zmm22,zmm22,zmm5
  a26bad:	62 d1 14 48 58 eb    	vaddps zmm5,zmm13,zmm11
  a26bb3:	62 31 0c 48 58 d5    	vaddps zmm10,zmm14,zmm21
  a26bb9:	62 31 4c 48 5c f0    	vsubps zmm14,zmm6,zmm16
  a26bbf:	62 a1 5c 40 5c c9    	vsubps zmm17,zmm20,zmm17
  a26bc5:	62 51 3c 40 5c c4    	vsubps zmm8,zmm24,zmm12
  a26bcb:	62 51 14 48 5c db    	vsubps zmm11,zmm13,zmm11
  a26bd1:	62 31 4c 48 58 e8    	vaddps zmm13,zmm6,zmm16
  a26bd7:	62 51 3c 40 58 e4    	vaddps zmm12,zmm24,zmm12
  a26bdd:	62 f1 7c 48 28 35 99 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff669799]        # 90380 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d830>
  a26be4:	97 66 ff 
  a26be7:	62 c1 7c 48 28 c4    	vmovaps zmm16,zmm12
  a26bed:	62 c2 4d 48 7f c5    	vpermt2ps zmm16,zmm6,zmm13
  a26bf3:	62 e1 7c 48 28 25 c3 	vmovaps zmm20,ZMMWORD PTR [rip+0xffffffffff6697c3]        # 903c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d870>
  a26bfa:	97 66 ff 
  a26bfd:	62 52 5d 40 7f e5    	vpermt2ps zmm12,zmm20,zmm13
  a26c03:	62 51 7c 48 28 eb    	vmovaps zmm13,zmm11
  a26c09:	62 32 4d 48 7f e9    	vpermt2ps zmm13,zmm6,zmm17
  a26c0f:	62 32 5d 40 7f d9    	vpermt2ps zmm11,zmm20,zmm17
  a26c15:	62 c1 7c 48 28 ca    	vmovaps zmm17,zmm10
  a26c1b:	62 a2 4d 48 7f ce    	vpermt2ps zmm17,zmm6,zmm22
  a26c21:	62 32 5d 40 7f d6    	vpermt2ps zmm10,zmm20,zmm22
  a26c27:	62 e1 7c 48 28 ef    	vmovaps zmm21,zmm7
  a26c2d:	62 a2 4d 48 7f eb    	vpermt2ps zmm21,zmm6,zmm19
  a26c33:	62 b2 5d 40 7f fb    	vpermt2ps zmm7,zmm20,zmm19
  a26c39:	62 e1 7c 48 28 db    	vmovaps zmm19,zmm3
  a26c3f:	62 c2 4d 48 7f df    	vpermt2ps zmm19,zmm6,zmm15
  a26c45:	62 d2 5d 40 7f df    	vpermt2ps zmm3,zmm20,zmm15
  a26c4b:	62 51 7c 48 28 f8    	vmovaps zmm15,zmm8
  a26c51:	62 52 4d 48 7f fe    	vpermt2ps zmm15,zmm6,zmm14
  a26c57:	62 52 5d 40 7f c6    	vpermt2ps zmm8,zmm20,zmm14
  a26c5d:	62 71 7c 48 28 f5    	vmovaps zmm14,zmm5
  a26c63:	62 32 4d 48 7f f7    	vpermt2ps zmm14,zmm6,zmm23
  a26c69:	62 b2 5d 40 7f ef    	vpermt2ps zmm5,zmm20,zmm23
  a26c6f:	62 e1 7c 48 28 f2    	vmovaps zmm22,zmm2
  a26c75:	62 a2 4d 48 7f f2    	vpermt2ps zmm22,zmm6,zmm18
  a26c7b:	62 b2 5d 40 7f d2    	vpermt2ps zmm2,zmm20,zmm18
  a26c81:	62 e1 7c 48 28 d1    	vmovaps zmm18,zmm1
  a26c87:	62 c2 4d 48 7f d1    	vpermt2ps zmm18,zmm6,zmm9
  a26c8d:	62 d2 5d 40 7f c9    	vpermt2ps zmm1,zmm20,zmm9
  a26c93:	62 f2 7d 48 77 f4    	vpermi2ps zmm6,zmm0,zmm4
  a26c99:	62 f2 5d 40 7f c4    	vpermt2ps zmm0,zmm20,zmm4
  a26c9f:	62 71 7c 48 11 26    	vmovups ZMMWORD PTR [rsi],zmm12
  a26ca5:	62 e1 7c 48 11 46 01 	vmovups ZMMWORD PTR [rsi+0x40],zmm16
  a26cac:	62 71 7c 48 11 5e 02 	vmovups ZMMWORD PTR [rsi+0x80],zmm11
  a26cb3:	62 71 7c 48 11 6e 03 	vmovups ZMMWORD PTR [rsi+0xc0],zmm13
  a26cba:	62 71 7c 48 11 56 04 	vmovups ZMMWORD PTR [rsi+0x100],zmm10
  a26cc1:	62 e1 7c 48 11 4e 05 	vmovups ZMMWORD PTR [rsi+0x140],zmm17
  a26cc8:	62 f1 7c 48 11 7e 06 	vmovups ZMMWORD PTR [rsi+0x180],zmm7
  a26ccf:	62 e1 7c 48 11 6e 07 	vmovups ZMMWORD PTR [rsi+0x1c0],zmm21
  a26cd6:	62 f1 7c 48 11 5e 08 	vmovups ZMMWORD PTR [rsi+0x200],zmm3
  a26cdd:	62 e1 7c 48 11 5e 09 	vmovups ZMMWORD PTR [rsi+0x240],zmm19
  a26ce4:	62 71 7c 48 11 46 0a 	vmovups ZMMWORD PTR [rsi+0x280],zmm8
  a26ceb:	62 71 7c 48 11 7e 0b 	vmovups ZMMWORD PTR [rsi+0x2c0],zmm15
  a26cf2:	62 f1 7c 48 11 6e 0c 	vmovups ZMMWORD PTR [rsi+0x300],zmm5
  a26cf9:	62 71 7c 48 11 76 0d 	vmovups ZMMWORD PTR [rsi+0x340],zmm14
  a26d00:	62 f1 7c 48 11 56 0e 	vmovups ZMMWORD PTR [rsi+0x380],zmm2
  a26d07:	62 e1 7c 48 11 76 0f 	vmovups ZMMWORD PTR [rsi+0x3c0],zmm22
  a26d0e:	62 f1 7c 48 11 4e 10 	vmovups ZMMWORD PTR [rsi+0x400],zmm1
  a26d15:	62 e1 7c 48 11 56 11 	vmovups ZMMWORD PTR [rsi+0x440],zmm18
  a26d1c:	62 f1 7c 48 11 46 12 	vmovups ZMMWORD PTR [rsi+0x480],zmm0
  a26d23:	62 f1 7c 48 11 76 13 	vmovups ZMMWORD PTR [rsi+0x4c0],zmm6
  a26d2a:	48 89 ec             	mov    rsp,rbp
  a26d2d:	5d                   	pop    rbp
  a26d2e:	c5 f8 77             	vzeroupper
  a26d31:	c3                   	ret
