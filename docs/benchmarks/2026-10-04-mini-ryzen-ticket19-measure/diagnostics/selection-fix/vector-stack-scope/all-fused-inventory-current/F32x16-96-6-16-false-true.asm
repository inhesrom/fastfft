
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a22c00 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a22c00:	55                   	push   rbp
  a22c01:	48 89 e5             	mov    rbp,rsp
  a22c04:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a22c08:	48 81 ec 80 09 00 00 	sub    rsp,0x980
  a22c0f:	62 f1 7c 48 28 05 67 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6a4367]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a22c16:	43 6a ff 
  a22c19:	62 f1 7c 48 28 0d 9d 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff6a439d]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a22c20:	43 6a ff 
  a22c23:	48 c1 e2 08          	shl    rdx,0x8
  a22c27:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  a22c2b:	31 d2                	xor    edx,edx
  a22c2d:	4c 8d 84 24 00 09 00 	lea    r8,[rsp+0x900]
  a22c34:	00 
  a22c35:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  a22c3a:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a22c3e:	62 f2 7d 48 7f d2    	vpermt2ps zmm2,zmm0,zmm2
  a22c44:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm2
  a22c4b:	14 
  a22c4c:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a22c50:	62 f2 75 48 7f c0    	vpermt2ps zmm0,zmm1,zmm0
  a22c56:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm0
  a22c5d:	13 
  a22c5e:	66 90                	xchg   ax,ax
  a22c60:	c6 84 24 00 09 00 00 	mov    BYTE PTR [rsp+0x900],0x0
  a22c67:	00 
  a22c68:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  a22c6d:	62 f1 7c 48 10 0c 17 	vmovups zmm1,ZMMWORD PTR [rdi+rdx*1]
  a22c74:	62 f1 7c 48 10 44 17 	vmovups zmm0,ZMMWORD PTR [rdi+rdx*1+0x40]
  a22c7b:	01 
  a22c7c:	62 f1 7c 48 10 64 17 	vmovups zmm4,ZMMWORD PTR [rdi+rdx*1+0x80]
  a22c83:	02 
  a22c84:	62 71 7c 48 10 64 17 	vmovups zmm12,ZMMWORD PTR [rdi+rdx*1+0xc0]
  a22c8b:	03 
  a22c8c:	62 71 7c 48 28 e9    	vmovaps zmm13,zmm1
  a22c92:	62 e1 7c 48 28 1d a4 	vmovaps zmm19,ZMMWORD PTR [rip+0xffffffffff66d3a4]        # 90040 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d4f0>
  a22c99:	d3 66 ff 
  a22c9c:	62 72 65 40 7f e8    	vpermt2ps zmm13,zmm19,zmm0
  a22ca2:	62 f1 7c 48 10 74 17 	vmovups zmm6,ZMMWORD PTR [rdi+rdx*1+0x100]
  a22ca9:	04 
  a22caa:	62 71 7c 48 10 74 17 	vmovups zmm14,ZMMWORD PTR [rdi+rdx*1+0x140]
  a22cb1:	05 
  a22cb2:	62 f1 7c 48 28 de    	vmovaps zmm3,zmm6
  a22cb8:	62 d2 65 40 7f de    	vpermt2ps zmm3,zmm19,zmm14
  a22cbe:	62 71 7c 48 10 4c 17 	vmovups zmm9,ZMMWORD PTR [rdi+rdx*1+0x200]
  a22cc5:	08 
  a22cc6:	62 71 7c 48 10 7c 17 	vmovups zmm15,ZMMWORD PTR [rdi+rdx*1+0x240]
  a22ccd:	09 
  a22cce:	62 d1 7c 48 28 e9    	vmovaps zmm5,zmm9
  a22cd4:	62 d2 65 40 7f ef    	vpermt2ps zmm5,zmm19,zmm15
  a22cda:	62 f1 7c 48 10 54 17 	vmovups zmm2,ZMMWORD PTR [rdi+rdx*1+0x180]
  a22ce1:	06 
  a22ce2:	62 71 7c 48 10 54 17 	vmovups zmm10,ZMMWORD PTR [rdi+rdx*1+0x1c0]
  a22ce9:	07 
  a22cea:	62 e1 7c 48 28 c2    	vmovaps zmm16,zmm2
  a22cf0:	62 c2 65 40 7f c2    	vpermt2ps zmm16,zmm19,zmm10
  a22cf6:	62 71 7c 48 10 5c 17 	vmovups zmm11,ZMMWORD PTR [rdi+rdx*1+0x280]
  a22cfd:	0a 
  a22cfe:	62 e1 7c 48 10 4c 17 	vmovups zmm17,ZMMWORD PTR [rdi+rdx*1+0x2c0]
  a22d05:	0b 
  a22d06:	62 d1 7c 48 28 fb    	vmovaps zmm7,zmm11
  a22d0c:	62 e1 64 48 58 d5    	vaddps zmm18,zmm3,zmm5
  a22d12:	62 b2 65 40 7f f9    	vpermt2ps zmm7,zmm19,zmm17
  a22d18:	62 71 7c 48 28 c4    	vmovaps zmm8,zmm4
  a22d1e:	62 52 65 40 7f c4    	vpermt2ps zmm8,zmm19,zmm12
  a22d24:	62 a1 14 48 58 da    	vaddps zmm19,zmm13,zmm18
  a22d2a:	62 c1 44 48 58 e0    	vaddps zmm20,zmm7,zmm8
  a22d30:	62 21 7c 40 58 f4    	vaddps zmm30,zmm16,zmm20
  a22d36:	62 61 7c 48 28 0d 40 	vmovaps zmm25,ZMMWORD PTR [rip+0xffffffffff66d340]        # 90080 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d530>
  a22d3d:	d3 66 ff 
  a22d40:	62 d2 35 40 7f f6    	vpermt2ps zmm6,zmm25,zmm14
  a22d46:	62 62 7d 48 18 1d 10 	vbroadcastss zmm27,DWORD PTR [rip+0xffffffffff652710]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a22d4d:	27 65 ff 
  a22d50:	62 32 25 40 bc ea    	vfnmadd231ps zmm13,zmm27,zmm18
  a22d56:	62 52 35 40 7f cf    	vpermt2ps zmm9,zmm25,zmm15
  a22d5c:	62 51 4c 48 5c f1    	vsubps zmm14,zmm6,zmm9
  a22d62:	62 62 7d 48 18 25 68 	vbroadcastss zmm28,DWORD PTR [rip+0xffffffffff652568]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a22d69:	25 65 ff 
  a22d6c:	62 11 0c 48 59 f4    	vmulps zmm14,zmm14,zmm28
  a22d72:	62 01 64 40 58 d6    	vaddps zmm26,zmm19,zmm30
  a22d78:	62 51 14 48 5c fe    	vsubps zmm15,zmm13,zmm14
  a22d7e:	62 a2 25 40 bc c4    	vfnmadd231ps zmm16,zmm27,zmm20
  a22d84:	62 32 35 40 7f d9    	vpermt2ps zmm11,zmm25,zmm17
  a22d8a:	62 81 7c 48 28 e2    	vmovaps zmm20,zmm26
  a22d90:	62 d2 35 40 7f e4    	vpermt2ps zmm4,zmm25,zmm12
  a22d96:	62 71 24 48 5c e4    	vsubps zmm12,zmm11,zmm4
  a22d9c:	62 11 1c 48 59 e4    	vmulps zmm12,zmm12,zmm28
  a22da2:	62 61 7c 48 28 05 d4 	vmovaps zmm24,ZMMWORD PTR [rip+0xffffffffff6a41d4]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a22da9:	41 6a ff 
  a22dac:	62 a1 6c 00 57 d2    	vxorps xmm18,xmm18,xmm18
  a22db2:	62 a2 3d 40 7f e2    	vpermt2ps zmm20,zmm24,zmm18
  a22db8:	62 c1 7c 40 5c cc    	vsubps zmm17,zmm16,zmm12
  a22dbe:	62 a1 04 48 58 e9    	vaddps zmm21,zmm15,zmm17
  a22dc4:	62 51 0c 48 58 ed    	vaddps zmm13,zmm14,zmm13
  a22dca:	62 e1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm20
  a22dd1:	05 
  a22dd2:	62 31 7c 48 28 f4    	vmovaps zmm14,zmm20
  a22dd8:	62 31 1c 48 58 e0    	vaddps zmm12,zmm12,zmm16
  a22dde:	62 c1 14 48 58 f4    	vaddps zmm22,zmm13,zmm12
  a22de4:	62 a1 04 48 5c f9    	vsubps zmm23,zmm15,zmm17
  a22dea:	62 41 14 48 5c ec    	vsubps zmm29,zmm13,zmm12
  a22df0:	62 01 64 40 5c fe    	vsubps zmm31,zmm19,zmm30
  a22df6:	62 01 7c 48 28 f7    	vmovaps zmm30,zmm31
  a22dfc:	62 22 3d 40 7f f2    	vpermt2ps zmm30,zmm24,zmm18
  a22e02:	62 31 7c 48 28 e5    	vmovaps zmm12,zmm21
  a22e08:	62 61 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm30
  a22e0f:	04 
  a22e10:	62 f2 35 40 7f c8    	vpermt2ps zmm1,zmm25,zmm0
  a22e16:	62 d1 4c 48 58 c1    	vaddps zmm0,zmm6,zmm9
  a22e1c:	62 a1 7c 48 28 e6    	vmovaps zmm20,zmm22
  a22e22:	62 71 74 48 58 c8    	vaddps zmm9,zmm1,zmm0
  a22e28:	62 d2 35 40 7f d2    	vpermt2ps zmm2,zmm25,zmm10
  a22e2e:	62 f1 24 48 58 e4    	vaddps zmm4,zmm11,zmm4
  a22e34:	62 b1 7c 48 28 f7    	vmovaps zmm6,zmm23
  a22e3a:	62 71 6c 48 58 d4    	vaddps zmm10,zmm2,zmm4
  a22e40:	62 51 34 48 58 ea    	vaddps zmm13,zmm9,zmm10
  a22e46:	62 41 7c 48 28 cd    	vmovaps zmm25,zmm13
  a22e4c:	62 11 7c 48 28 dd    	vmovaps zmm11,zmm29
  a22e52:	62 f2 25 40 bc c8    	vfnmadd231ps zmm1,zmm27,zmm0
  a22e58:	62 f1 64 48 5c c5    	vsubps zmm0,zmm3,zmm5
  a22e5e:	62 91 7c 48 59 c4    	vmulps zmm0,zmm0,zmm28
  a22e64:	62 32 3d 40 7f e2    	vpermt2ps zmm12,zmm24,zmm18
  a22e6a:	62 51 7c 48 28 fc    	vmovaps zmm15,zmm12
  a22e70:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm12
  a22e77:	0e 
  a22e78:	62 f1 74 48 58 d8    	vaddps zmm3,zmm1,zmm0
  a22e7e:	62 f2 25 40 bc d4    	vfnmadd231ps zmm2,zmm27,zmm4
  a22e84:	62 d1 44 48 5c e0    	vsubps zmm4,zmm7,zmm8
  a22e8a:	62 a2 3d 40 7f e2    	vpermt2ps zmm20,zmm24,zmm18
  a22e90:	62 91 5c 48 59 e4    	vmulps zmm4,zmm4,zmm28
  a22e96:	62 f1 6c 48 58 fc    	vaddps zmm7,zmm2,zmm4
  a22e9c:	62 71 64 48 58 c7    	vaddps zmm8,zmm3,zmm7
  a22ea2:	62 b2 3d 40 7f f2    	vpermt2ps zmm6,zmm24,zmm18
  a22ea8:	62 c1 7c 48 28 c0    	vmovaps zmm16,zmm8
  a22eae:	62 f1 74 48 5c c0    	vsubps zmm0,zmm1,zmm0
  a22eb4:	62 f1 6c 48 5c cc    	vsubps zmm1,zmm2,zmm4
  a22eba:	62 32 3d 40 7f da    	vpermt2ps zmm11,zmm24,zmm18
  a22ec0:	62 d1 7c 48 28 e3    	vmovaps zmm4,zmm11
  a22ec6:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x700],zmm11
  a22ecd:	1c 
  a22ece:	62 61 7c 48 58 e1    	vaddps zmm28,zmm0,zmm1
  a22ed4:	62 91 7c 48 28 ec    	vmovaps zmm5,zmm28
  a22eda:	62 f1 64 48 5c df    	vsubps zmm3,zmm3,zmm7
  a22ee0:	62 e1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm20
  a22ee7:	03 
  a22ee8:	62 71 7c 48 28 e3    	vmovaps zmm12,zmm3
  a22eee:	62 f1 7c 48 5c c9    	vsubps zmm1,zmm0,zmm1
  a22ef4:	62 e1 7c 48 28 c9    	vmovaps zmm17,zmm1
  a22efa:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm6
  a22f01:	02 
  a22f02:	62 d1 34 48 5c c2    	vsubps zmm0,zmm9,zmm10
  a22f08:	62 71 7c 48 28 d8    	vmovaps zmm11,zmm0
  a22f0e:	62 71 7c 48 28 0d 28 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff6a4028]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a22f15:	40 6a ff 
  a22f18:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x500]
  a22f1f:	14 
  a22f20:	62 62 35 48 7f f7    	vpermt2ps zmm30,zmm9,zmm7
  a22f26:	62 52 35 48 7f f7    	vpermt2ps zmm14,zmm9,zmm15
  a22f2c:	62 71 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm14
  a22f33:	09 
  a22f34:	62 32 3d 40 7f ea    	vpermt2ps zmm13,zmm24,zmm18
  a22f3a:	62 71 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm13
  a22f41:	0d 
  a22f42:	62 32 3d 40 7f c2    	vpermt2ps zmm8,zmm24,zmm18
  a22f48:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x780],zmm8
  a22f4f:	1e 
  a22f50:	62 e2 35 48 7f e7    	vpermt2ps zmm20,zmm9,zmm7
  a22f56:	62 52 35 48 7f e8    	vpermt2ps zmm13,zmm9,zmm8
  a22f5c:	62 71 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm13
  a22f63:	0a 
  a22f64:	62 22 3d 40 7f e2    	vpermt2ps zmm28,zmm24,zmm18
  a22f6a:	62 61 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm28
  a22f71:	07 
  a22f72:	62 f2 35 48 7f f4    	vpermt2ps zmm6,zmm9,zmm4
  a22f78:	62 71 7c 48 28 d3    	vmovaps zmm10,zmm3
  a22f7e:	62 32 3d 40 7f d2    	vpermt2ps zmm10,zmm24,zmm18
  a22f84:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm10
  a22f8b:	01 
  a22f8c:	62 b2 3d 40 7f ca    	vpermt2ps zmm1,zmm24,zmm18
  a22f92:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm1
  a22f99:	19 
  a22f9a:	62 62 35 48 7f e7    	vpermt2ps zmm28,zmm9,zmm7
  a22fa0:	62 b2 3d 40 7f c2    	vpermt2ps zmm0,zmm24,zmm18
  a22fa6:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm0
  a22fad:	06 
  a22fae:	62 61 7c 48 28 c0    	vmovaps zmm24,zmm0
  a22fb4:	62 62 35 48 7f c7    	vpermt2ps zmm24,zmm9,zmm7
  a22fba:	62 72 35 48 7f d1    	vpermt2ps zmm10,zmm9,zmm1
  a22fc0:	62 91 95 48 15 c4    	vunpckhpd zmm0,zmm13,zmm28
  a22fc6:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x8c0],zmm0
  a22fcd:	23 
  a22fce:	62 91 ad 48 15 d8    	vunpckhpd zmm3,zmm10,zmm24
  a22fd4:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x880],zmm3
  a22fdb:	22 
  a22fdc:	62 e1 7c 48 28 1d 1a 	vmovaps zmm19,ZMMWORD PTR [rip+0xffffffffff6a3e1a]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a22fe3:	3e 6a ff 
  a22fe6:	62 f2 65 40 7f c3    	vpermt2ps zmm0,zmm19,zmm3
  a22fec:	62 b1 8d 48 15 cc    	vunpckhpd zmm1,zmm14,zmm20
  a22ff2:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x840],zmm1
  a22ff9:	21 
  a22ffa:	62 91 cd 48 15 de    	vunpckhpd zmm3,zmm6,zmm30
  a23000:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x800],zmm3
  a23007:	20 
  a23008:	62 f2 65 40 7f cb    	vpermt2ps zmm1,zmm19,zmm3
  a2300e:	62 f1 7c 48 10 51 0d 	vmovups zmm2,ZMMWORD PTR [rcx+0x340]
  a23015:	62 f1 7c 48 10 61 0c 	vmovups zmm4,ZMMWORD PTR [rcx+0x300]
  a2301c:	62 f1 74 48 59 dc    	vmulps zmm3,zmm1,zmm4
  a23022:	62 f2 7d 48 b8 da    	vfmadd231ps zmm3,zmm0,zmm2
  a23028:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm3
  a2302f:	12 
  a23030:	62 f1 7c 48 59 c4    	vmulps zmm0,zmm0,zmm4
  a23036:	62 f2 6d 48 bc c1    	vfnmadd231ps zmm0,zmm2,zmm1
  a2303c:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm0
  a23043:	10 
  a23044:	62 f1 7c 48 28 05 72 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6a3f72]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a2304b:	3f 6a ff 
  a2304e:	62 22 7d 48 7f ca    	vpermt2ps zmm25,zmm0,zmm18
  a23054:	62 b1 7c 48 28 d0    	vmovaps zmm2,zmm16
  a2305a:	62 b2 7d 48 7f d2    	vpermt2ps zmm2,zmm0,zmm18
  a23060:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm2
  a23067:	0b 
  a23068:	62 b2 7d 48 7f ea    	vpermt2ps zmm5,zmm0,zmm18
  a2306e:	62 32 7d 48 7f da    	vpermt2ps zmm11,zmm0,zmm18
  a23074:	62 22 7d 48 7f d2    	vpermt2ps zmm26,zmm0,zmm18
  a2307a:	62 32 7d 48 7f e2    	vpermt2ps zmm12,zmm0,zmm18
  a23080:	62 a2 7d 48 7f ea    	vpermt2ps zmm21,zmm0,zmm18
  a23086:	62 e1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm21
  a2308d:	0c 
  a2308e:	62 a2 7d 48 7f f2    	vpermt2ps zmm22,zmm0,zmm18
  a23094:	62 a2 7d 48 7f fa    	vpermt2ps zmm23,zmm0,zmm18
  a2309a:	62 b1 7c 48 28 d9    	vmovaps zmm3,zmm17
  a230a0:	62 b2 7d 48 7f da    	vpermt2ps zmm3,zmm0,zmm18
  a230a6:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm3
  a230ad:	08 
  a230ae:	62 22 7d 48 7f ea    	vpermt2ps zmm29,zmm0,zmm18
  a230b4:	62 22 7d 48 7f fa    	vpermt2ps zmm31,zmm0,zmm18
  a230ba:	62 81 7c 48 28 ca    	vmovaps zmm17,zmm26
  a230c0:	62 22 35 48 7f d5    	vpermt2ps zmm26,zmm9,zmm21
  a230c6:	62 a1 7c 48 28 c6    	vmovaps zmm16,zmm22
  a230cc:	62 e1 7c 48 28 54 24 	vmovaps zmm18,ZMMWORD PTR [rsp+0x4c0]
  a230d3:	13 
  a230d4:	62 a2 35 48 7f f2    	vpermt2ps zmm22,zmm9,zmm18
  a230da:	62 31 7c 48 28 ff    	vmovaps zmm15,zmm23
  a230e0:	62 82 35 48 7f fd    	vpermt2ps zmm23,zmm9,zmm29
  a230e6:	62 11 7c 48 28 f7    	vmovaps zmm14,zmm31
  a230ec:	62 22 35 48 7f fa    	vpermt2ps zmm31,zmm9,zmm18
  a230f2:	62 01 7c 48 28 d9    	vmovaps zmm27,zmm25
  a230f8:	62 62 35 48 7f ca    	vpermt2ps zmm25,zmm9,zmm2
  a230fe:	62 71 7c 48 28 ed    	vmovaps zmm13,zmm5
  a23104:	62 b2 35 48 7f ea    	vpermt2ps zmm5,zmm9,zmm18
  a2310a:	62 51 7c 48 28 c4    	vmovaps zmm8,zmm12
  a23110:	62 72 35 48 7f e3    	vpermt2ps zmm12,zmm9,zmm3
  a23116:	62 d1 7c 48 28 e3    	vmovaps zmm4,zmm11
  a2311c:	62 32 35 48 7f da    	vpermt2ps zmm11,zmm9,zmm18
  a23122:	62 e1 b5 40 15 ed    	vunpckhpd zmm21,zmm25,zmm5
  a23128:	62 d1 9d 48 15 d3    	vunpckhpd zmm2,zmm12,zmm11
  a2312e:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x6c0],zmm2
  a23135:	1b 
  a23136:	62 b1 7c 48 28 cd    	vmovaps zmm1,zmm21
  a2313c:	62 b1 7c 48 28 c3    	vmovaps zmm0,zmm19
  a23142:	62 f2 65 40 7f ca    	vpermt2ps zmm1,zmm19,zmm2
  a23148:	62 a1 ad 40 15 de    	vunpckhpd zmm19,zmm26,zmm22
  a2314e:	62 91 c5 40 15 df    	vunpckhpd zmm3,zmm23,zmm31
  a23154:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm3
  a2315b:	1a 
  a2315c:	62 b1 7c 48 28 d3    	vmovaps zmm2,zmm19
  a23162:	62 f2 7d 48 7f d3    	vpermt2ps zmm2,zmm0,zmm3
  a23168:	62 71 7c 48 10 49 1d 	vmovups zmm9,ZMMWORD PTR [rcx+0x740]
  a2316f:	62 f1 7c 48 10 41 1c 	vmovups zmm0,ZMMWORD PTR [rcx+0x700]
  a23176:	62 f1 6c 48 59 d8    	vmulps zmm3,zmm2,zmm0
  a2317c:	62 d2 75 48 b8 d9    	vfmadd231ps zmm3,zmm1,zmm9
  a23182:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm3
  a23189:	11 
  a2318a:	62 f1 74 48 59 c0    	vmulps zmm0,zmm1,zmm0
  a23190:	62 f2 35 48 bc c2    	vfnmadd231ps zmm0,zmm9,zmm2
  a23196:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm0
  a2319d:	0f 
  a2319e:	62 b1 ad 40 14 ce    	vunpcklpd zmm1,zmm26,zmm22
  a231a4:	62 91 c5 40 14 c7    	vunpcklpd zmm0,zmm23,zmm31
  a231aa:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm0
  a231b1:	17 
  a231b2:	62 f1 b5 40 14 d5    	vunpcklpd zmm2,zmm25,zmm5
  a231b8:	62 d1 9d 48 14 eb    	vunpcklpd zmm5,zmm12,zmm11
  a231be:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm5
  a231c5:	16 
  a231c6:	62 61 7c 48 28 d1    	vmovaps zmm26,zmm1
  a231cc:	62 f1 7c 48 28 1d 6a 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff6a3c6a]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a231d3:	3c 6a ff 
  a231d6:	62 f2 65 48 7f c8    	vpermt2ps zmm1,zmm3,zmm0
  a231dc:	62 71 7c 48 28 ca    	vmovaps zmm9,zmm2
  a231e2:	62 f2 65 48 7f d5    	vpermt2ps zmm2,zmm3,zmm5
  a231e8:	62 f1 7c 48 10 41 1b 	vmovups zmm0,ZMMWORD PTR [rcx+0x6c0]
  a231ef:	62 f1 7c 48 10 69 1a 	vmovups zmm5,ZMMWORD PTR [rcx+0x680]
  a231f6:	62 71 74 48 59 dd    	vmulps zmm11,zmm1,zmm5
  a231fc:	62 72 6d 48 b8 d8    	vfmadd231ps zmm11,zmm2,zmm0
  a23202:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x7c0],zmm11
  a23209:	1f 
  a2320a:	62 f1 6c 48 59 d5    	vmulps zmm2,zmm2,zmm5
  a23210:	62 f2 7d 48 bc d1    	vfnmadd231ps zmm2,zmm0,zmm1
  a23216:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x740],zmm2
  a2321d:	1d 
  a2321e:	62 e1 7c 48 28 35 d8 	vmovaps zmm22,ZMMWORD PTR [rip+0xffffffffff6a3cd8]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a23225:	3c 6a ff 
  a23228:	62 62 4d 40 7f 5c 24 	vpermt2ps zmm27,zmm22,ZMMWORD PTR [rsp+0x2c0]
  a2322f:	0b 
  a23230:	62 72 4d 40 7f 44 24 	vpermt2ps zmm8,zmm22,ZMMWORD PTR [rsp+0x200]
  a23237:	08 
  a23238:	62 e2 4d 40 7f 4c 24 	vpermt2ps zmm17,zmm22,ZMMWORD PTR [rsp+0x300]
  a2323f:	0c 
  a23240:	62 12 4d 40 7f fd    	vpermt2ps zmm15,zmm22,zmm29
  a23246:	62 b2 4d 40 7f e2    	vpermt2ps zmm4,zmm22,zmm18
  a2324c:	62 32 4d 40 7f ea    	vpermt2ps zmm13,zmm22,zmm18
  a23252:	62 a2 4d 40 7f c2    	vpermt2ps zmm16,zmm22,zmm18
  a23258:	62 32 4d 40 7f f2    	vpermt2ps zmm14,zmm22,zmm18
  a2325e:	62 b1 f5 40 14 c0    	vunpcklpd zmm0,zmm17,zmm16
  a23264:	62 d1 85 48 14 ce    	vunpcklpd zmm1,zmm15,zmm14
  a2326a:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm1
  a23271:	08 
  a23272:	62 61 7c 48 28 e8    	vmovaps zmm29,zmm0
  a23278:	62 f2 65 48 7f c1    	vpermt2ps zmm0,zmm3,zmm1
  a2327e:	62 d1 a5 40 14 cd    	vunpcklpd zmm1,zmm27,zmm13
  a23284:	62 f1 bd 48 14 d4    	vunpcklpd zmm2,zmm8,zmm4
  a2328a:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm2
  a23291:	18 
  a23292:	62 e1 7c 48 28 d1    	vmovaps zmm18,zmm1
  a23298:	62 f2 65 48 7f ca    	vpermt2ps zmm1,zmm3,zmm2
  a2329e:	62 f1 7c 48 10 51 12 	vmovups zmm2,ZMMWORD PTR [rcx+0x480]
  a232a5:	62 71 74 48 59 da    	vmulps zmm11,zmm1,zmm2
  a232ab:	62 f1 7c 48 59 ea    	vmulps zmm5,zmm0,zmm2
  a232b1:	62 f1 7c 48 10 51 13 	vmovups zmm2,ZMMWORD PTR [rcx+0x4c0]
  a232b8:	62 f2 6d 48 b8 e9    	vfmadd231ps zmm5,zmm2,zmm1
  a232be:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm5
  a232c5:	0c 
  a232c6:	62 72 7d 48 bc da    	vfnmadd231ps zmm11,zmm0,zmm2
  a232cc:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm11
  a232d3:	0b 
  a232d4:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x240]
  a232db:	09 
  a232dc:	62 b1 fd 48 14 c4    	vunpcklpd zmm0,zmm0,zmm20
  a232e2:	62 91 cd 48 14 d6    	vunpcklpd zmm2,zmm6,zmm30
  a232e8:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm2
  a232ef:	15 
  a232f0:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x280]
  a232f7:	0a 
  a232f8:	62 91 f5 48 14 cc    	vunpcklpd zmm1,zmm1,zmm28
  a232fe:	62 91 ad 48 14 e8    	vunpcklpd zmm5,zmm10,zmm24
  a23304:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm5
  a2330b:	09 
  a2330c:	62 71 7c 48 28 d9    	vmovaps zmm11,zmm1
  a23312:	62 f2 65 48 7f cd    	vpermt2ps zmm1,zmm3,zmm5
  a23318:	62 71 7c 48 28 d0    	vmovaps zmm10,zmm0
  a2331e:	62 f2 65 48 7f c2    	vpermt2ps zmm0,zmm3,zmm2
  a23324:	62 f1 7c 48 10 69 0b 	vmovups zmm5,ZMMWORD PTR [rcx+0x2c0]
  a2332b:	62 f1 7c 48 10 71 0a 	vmovups zmm6,ZMMWORD PTR [rcx+0x280]
  a23332:	62 f1 7c 48 59 d6    	vmulps zmm2,zmm0,zmm6
  a23338:	62 f2 75 48 b8 d5    	vfmadd231ps zmm2,zmm1,zmm5
  a2333e:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm2
  a23345:	0a 
  a23346:	62 e1 74 48 59 fe    	vmulps zmm23,zmm1,zmm6
  a2334c:	62 e2 55 48 bc f8    	vfnmadd231ps zmm23,zmm5,zmm0
  a23352:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x140]
  a23359:	05 
  a2335a:	62 f2 4d 40 7f 6c 24 	vpermt2ps zmm5,zmm22,ZMMWORD PTR [rsp+0x380]
  a23361:	0e 
  a23362:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm5
  a23369:	05 
  a2336a:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x80]
  a23371:	02 
  a23372:	62 f2 4d 40 7f 54 24 	vpermt2ps zmm2,zmm22,ZMMWORD PTR [rsp+0x700]
  a23379:	1c 
  a2337a:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm2
  a23381:	02 
  a23382:	62 61 7c 48 28 64 24 	vmovaps zmm28,ZMMWORD PTR [rsp+0x340]
  a23389:	0d 
  a2338a:	62 62 4d 40 7f 64 24 	vpermt2ps zmm28,zmm22,ZMMWORD PTR [rsp+0x780]
  a23391:	1e 
  a23392:	62 61 7c 48 28 4c 24 	vmovaps zmm25,ZMMWORD PTR [rsp+0x40]
  a23399:	01 
  a2339a:	62 62 4d 40 7f 4c 24 	vpermt2ps zmm25,zmm22,ZMMWORD PTR [rsp+0x640]
  a233a1:	19 
  a233a2:	62 61 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm25
  a233a9:	01 
  a233aa:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x100]
  a233b1:	04 
  a233b2:	62 f2 4d 40 7f cf    	vpermt2ps zmm1,zmm22,zmm7
  a233b8:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm1
  a233bf:	04 
  a233c0:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0xc0]
  a233c7:	03 
  a233c8:	62 f2 4d 40 7f c7    	vpermt2ps zmm0,zmm22,zmm7
  a233ce:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm0
  a233d5:	03 
  a233d6:	62 e1 7c 48 28 64 24 	vmovaps zmm20,ZMMWORD PTR [rsp+0x1c0]
  a233dd:	07 
  a233de:	62 e2 4d 40 7f e7    	vpermt2ps zmm20,zmm22,zmm7
  a233e4:	62 e1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm20
  a233eb:	07 
  a233ec:	62 61 7c 48 28 44 24 	vmovaps zmm24,ZMMWORD PTR [rsp+0x180]
  a233f3:	06 
  a233f4:	62 62 4d 40 7f c7    	vpermt2ps zmm24,zmm22,zmm7
  a233fa:	62 61 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm24
  a23401:	06 
  a23402:	62 f1 d5 48 14 c0    	vunpcklpd zmm0,zmm5,zmm0
  a23408:	62 f1 ed 48 14 d1    	vunpcklpd zmm2,zmm2,zmm1
  a2340e:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm2
  a23415:	0e 
  a23416:	62 71 7c 48 28 e0    	vmovaps zmm12,zmm0
  a2341c:	62 f2 65 48 7f c2    	vpermt2ps zmm0,zmm3,zmm2
  a23422:	62 a1 9d 40 14 e4    	vunpcklpd zmm20,zmm28,zmm20
  a23428:	62 91 b5 40 14 d0    	vunpcklpd zmm2,zmm25,zmm24
  a2342e:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm2
  a23435:	0d 
  a23436:	62 b1 7c 48 28 cc    	vmovaps zmm1,zmm20
  a2343c:	62 f2 65 48 7f ca    	vpermt2ps zmm1,zmm3,zmm2
  a23442:	62 f1 7c 48 10 69 02 	vmovups zmm5,ZMMWORD PTR [rcx+0x80]
  a23449:	62 61 7c 48 10 41 03 	vmovups zmm24,ZMMWORD PTR [rcx+0xc0]
  a23450:	62 e1 74 48 59 f5    	vmulps zmm22,zmm1,zmm5
  a23456:	62 82 7d 48 bc f0    	vfnmadd231ps zmm22,zmm0,zmm24
  a2345c:	62 61 7c 48 59 fd    	vmulps zmm31,zmm0,zmm5
  a23462:	62 62 3d 40 b8 f9    	vfmadd231ps zmm31,zmm24,zmm1
  a23468:	62 b1 f5 40 15 c0    	vunpckhpd zmm0,zmm17,zmm16
  a2346e:	62 41 85 48 15 f6    	vunpckhpd zmm30,zmm15,zmm14
  a23474:	62 51 a5 40 15 ed    	vunpckhpd zmm13,zmm27,zmm13
  a2347a:	62 61 bd 48 15 cc    	vunpckhpd zmm25,zmm8,zmm4
  a23480:	62 f1 7c 48 28 f8    	vmovaps zmm7,zmm0
  a23486:	62 92 65 48 7f c6    	vpermt2ps zmm0,zmm3,zmm30
  a2348c:	62 d1 7c 48 28 ed    	vmovaps zmm5,zmm13
  a23492:	62 12 65 48 7f e9    	vpermt2ps zmm13,zmm3,zmm25
  a23498:	62 f1 7c 48 10 61 17 	vmovups zmm4,ZMMWORD PTR [rcx+0x5c0]
  a2349f:	62 71 7c 48 10 41 16 	vmovups zmm8,ZMMWORD PTR [rcx+0x580]
  a234a6:	62 d1 14 48 59 f0    	vmulps zmm6,zmm13,zmm8
  a234ac:	62 f2 7d 48 bc f4    	vfnmadd231ps zmm6,zmm0,zmm4
  a234b2:	62 51 7c 48 59 c0    	vmulps zmm8,zmm0,zmm8
  a234b8:	62 52 5d 48 b8 c5    	vfmadd231ps zmm8,zmm4,zmm13
  a234be:	62 e2 65 48 7f 5c 24 	vpermt2ps zmm19,zmm3,ZMMWORD PTR [rsp+0x680]
  a234c5:	1a 
  a234c6:	62 e2 65 48 7f 6c 24 	vpermt2ps zmm21,zmm3,ZMMWORD PTR [rsp+0x6c0]
  a234cd:	1b 
  a234ce:	62 f1 7c 48 10 41 1f 	vmovups zmm0,ZMMWORD PTR [rcx+0x7c0]
  a234d5:	62 f1 7c 48 10 61 1e 	vmovups zmm4,ZMMWORD PTR [rcx+0x780]
  a234dc:	62 71 64 40 59 f4    	vmulps zmm14,zmm19,zmm4
  a234e2:	62 72 55 40 b8 f0    	vfmadd231ps zmm14,zmm21,zmm0
  a234e8:	62 71 54 40 59 ec    	vmulps zmm13,zmm21,zmm4
  a234ee:	62 32 7d 48 bc eb    	vfnmadd231ps zmm13,zmm0,zmm19
  a234f4:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x8c0]
  a234fb:	23 
  a234fc:	62 f2 65 48 7f 4c 24 	vpermt2ps zmm1,zmm3,ZMMWORD PTR [rsp+0x880]
  a23503:	22 
  a23504:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x840]
  a2350b:	21 
  a2350c:	62 f2 65 48 7f 54 24 	vpermt2ps zmm2,zmm3,ZMMWORD PTR [rsp+0x800]
  a23513:	20 
  a23514:	62 f1 7c 48 10 41 0f 	vmovups zmm0,ZMMWORD PTR [rcx+0x3c0]
  a2351b:	62 f1 7c 48 10 61 0e 	vmovups zmm4,ZMMWORD PTR [rcx+0x380]
  a23522:	62 e1 6c 48 59 c4    	vmulps zmm16,zmm2,zmm4
  a23528:	62 e2 75 48 b8 c0    	vfmadd231ps zmm16,zmm1,zmm0
  a2352e:	62 71 74 48 59 fc    	vmulps zmm15,zmm1,zmm4
  a23534:	62 72 7d 48 bc fa    	vfnmadd231ps zmm15,zmm0,zmm2
  a2353a:	62 e1 7c 48 28 2d bc 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff6a38bc]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a23541:	38 6a ff 
  a23544:	62 62 55 40 7f 54 24 	vpermt2ps zmm26,zmm21,ZMMWORD PTR [rsp+0x5c0]
  a2354b:	17 
  a2354c:	62 72 55 40 7f 4c 24 	vpermt2ps zmm9,zmm21,ZMMWORD PTR [rsp+0x580]
  a23553:	16 
  a23554:	62 e1 7c 48 10 49 19 	vmovups zmm17,ZMMWORD PTR [rcx+0x640]
  a2355b:	62 f1 7c 48 10 41 18 	vmovups zmm0,ZMMWORD PTR [rcx+0x600]
  a23562:	62 f1 34 48 59 e0    	vmulps zmm4,zmm9,zmm0
  a23568:	62 b2 2d 40 bc e1    	vfnmadd231ps zmm4,zmm26,zmm17
  a2356e:	62 f1 2c 40 59 d0    	vmulps zmm2,zmm26,zmm0
  a23574:	62 d2 75 40 b8 d1    	vfmadd231ps zmm2,zmm17,zmm9
  a2357a:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x140]
  a23581:	05 
  a23582:	62 71 fd 48 15 4c 24 	vunpckhpd zmm9,zmm0,ZMMWORD PTR [rsp+0xc0]
  a23589:	03 
  a2358a:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x80]
  a23591:	02 
  a23592:	62 e1 fd 48 15 4c 24 	vunpckhpd zmm17,zmm0,ZMMWORD PTR [rsp+0x100]
  a23599:	04 
  a2359a:	62 61 9d 40 15 54 24 	vunpckhpd zmm26,zmm28,ZMMWORD PTR [rsp+0x1c0]
  a235a1:	07 
  a235a2:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x40]
  a235a9:	01 
  a235aa:	62 61 fd 48 15 5c 24 	vunpckhpd zmm27,zmm0,ZMMWORD PTR [rsp+0x180]
  a235b1:	06 
  a235b2:	62 41 7c 48 28 c1    	vmovaps zmm24,zmm9
  a235b8:	62 32 65 48 7f c9    	vpermt2ps zmm9,zmm3,zmm17
  a235be:	62 91 7c 48 28 ca    	vmovaps zmm1,zmm26
  a235c4:	62 02 65 48 7f d3    	vpermt2ps zmm26,zmm3,zmm27
  a235ca:	62 f1 7c 48 10 41 07 	vmovups zmm0,ZMMWORD PTR [rcx+0x1c0]
  a235d1:	62 e1 7c 48 10 59 06 	vmovups zmm19,ZMMWORD PTR [rcx+0x180]
  a235d8:	62 21 2c 40 59 e3    	vmulps zmm28,zmm26,zmm19
  a235de:	62 62 35 48 bc e0    	vfnmadd231ps zmm28,zmm9,zmm0
  a235e4:	62 a1 34 48 59 db    	vmulps zmm19,zmm9,zmm19
  a235ea:	62 82 7d 48 b8 da    	vfmadd231ps zmm19,zmm0,zmm26
  a235f0:	62 b1 7c 48 28 dd    	vmovaps zmm3,zmm21
  a235f6:	62 72 55 40 7f 54 24 	vpermt2ps zmm10,zmm21,ZMMWORD PTR [rsp+0x540]
  a235fd:	15 
  a235fe:	62 72 55 40 7f 5c 24 	vpermt2ps zmm11,zmm21,ZMMWORD PTR [rsp+0x240]
  a23605:	09 
  a23606:	62 f1 7c 48 10 41 09 	vmovups zmm0,ZMMWORD PTR [rcx+0x240]
  a2360d:	62 71 7c 48 10 49 08 	vmovups zmm9,ZMMWORD PTR [rcx+0x200]
  a23614:	62 c1 24 48 59 e9    	vmulps zmm21,zmm11,zmm9
  a2361a:	62 e2 2d 48 bc e8    	vfnmadd231ps zmm21,zmm10,zmm0
  a23620:	62 51 2c 48 59 c9    	vmulps zmm9,zmm10,zmm9
  a23626:	62 52 7d 48 b8 cb    	vfmadd231ps zmm9,zmm0,zmm11
  a2362c:	62 92 65 48 7f fe    	vpermt2ps zmm7,zmm3,zmm30
  a23632:	62 92 65 48 7f e9    	vpermt2ps zmm5,zmm3,zmm25
  a23638:	62 71 7c 48 28 d3    	vmovaps zmm10,zmm3
  a2363e:	62 f1 7c 48 10 41 14 	vmovups zmm0,ZMMWORD PTR [rcx+0x500]
  a23645:	62 61 54 48 59 f0    	vmulps zmm30,zmm5,zmm0
  a2364b:	62 61 44 48 59 d0    	vmulps zmm26,zmm7,zmm0
  a23651:	62 f1 7c 48 10 41 15 	vmovups zmm0,ZMMWORD PTR [rcx+0x540]
  a23658:	62 62 7d 48 b8 d5    	vfmadd231ps zmm26,zmm0,zmm5
  a2365e:	62 62 45 48 bc f0    	vfnmadd231ps zmm30,zmm7,zmm0
  a23664:	62 22 65 48 7f c1    	vpermt2ps zmm24,zmm3,zmm17
  a2366a:	62 92 65 48 7f cb    	vpermt2ps zmm1,zmm3,zmm27
  a23670:	62 f1 7c 48 10 41 04 	vmovups zmm0,ZMMWORD PTR [rcx+0x100]
  a23677:	62 f1 7c 48 10 59 05 	vmovups zmm3,ZMMWORD PTR [rcx+0x140]
  a2367e:	62 f1 74 48 59 f8    	vmulps zmm7,zmm1,zmm0
  a23684:	62 f2 3d 40 bc fb    	vfnmadd231ps zmm7,zmm24,zmm3
  a2368a:	62 61 3c 40 59 d8    	vmulps zmm27,zmm24,zmm0
  a23690:	62 62 65 48 b8 d9    	vfmadd231ps zmm27,zmm3,zmm1
  a23696:	62 e2 2d 48 7f 54 24 	vpermt2ps zmm18,zmm10,ZMMWORD PTR [rsp+0x600]
  a2369d:	18 
  a2369e:	62 62 2d 48 7f 6c 24 	vpermt2ps zmm29,zmm10,ZMMWORD PTR [rsp+0x200]
  a236a5:	08 
  a236a6:	62 f1 7c 48 10 41 11 	vmovups zmm0,ZMMWORD PTR [rcx+0x440]
  a236ad:	62 f1 7c 48 10 49 10 	vmovups zmm1,ZMMWORD PTR [rcx+0x400]
  a236b4:	62 f1 14 40 59 d9    	vmulps zmm3,zmm29,zmm1
  a236ba:	62 f2 6d 40 b8 d8    	vfmadd231ps zmm3,zmm18,zmm0
  a236c0:	62 71 6c 40 59 d9    	vmulps zmm11,zmm18,zmm1
  a236c6:	62 12 7d 48 bc dd    	vfnmadd231ps zmm11,zmm0,zmm29
  a236cc:	62 72 2d 48 7f 64 24 	vpermt2ps zmm12,zmm10,ZMMWORD PTR [rsp+0x380]
  a236d3:	0e 
  a236d4:	62 e2 2d 48 7f 64 24 	vpermt2ps zmm20,zmm10,ZMMWORD PTR [rsp+0x340]
  a236db:	0d 
  a236dc:	62 61 1c 48 5c c3    	vsubps zmm24,zmm12,zmm3
  a236e2:	62 51 64 48 58 d4    	vaddps zmm10,zmm3,zmm12
  a236e8:	62 61 34 48 5c ca    	vsubps zmm25,zmm9,zmm2
  a236ee:	62 71 34 48 58 e2    	vaddps zmm12,zmm9,zmm2
  a236f4:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x400]
  a236fb:	10 
  a236fc:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x3c0]
  a23703:	0f 
  a23704:	62 f1 7c 48 5c d9    	vsubps zmm3,zmm0,zmm1
  a2370a:	62 61 7c 48 58 e9    	vaddps zmm29,zmm0,zmm1
  a23710:	62 51 7c 40 5c ce    	vsubps zmm9,zmm16,zmm14
  a23716:	62 d1 7c 40 58 c6    	vaddps zmm0,zmm16,zmm14
  a2371c:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  a23723:	04 
  a23724:	62 c1 64 40 5c c8    	vsubps zmm17,zmm19,zmm8
  a2372a:	62 d1 64 40 58 c0    	vaddps zmm0,zmm19,zmm8
  a23730:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm0
  a23737:	03 
  a23738:	62 c1 14 48 5c df    	vsubps zmm19,zmm13,zmm15
  a2373e:	62 51 04 48 58 ed    	vaddps zmm13,zmm15,zmm13
  a23744:	62 71 1c 40 5c c6    	vsubps zmm8,zmm28,zmm6
  a2374a:	62 e1 1c 40 58 c6    	vaddps zmm16,zmm28,zmm6
  a23750:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x740]
  a23757:	1d 
  a23758:	62 21 7c 48 5c e7    	vsubps zmm28,zmm0,zmm23
  a2375e:	62 71 44 40 58 f0    	vaddps zmm14,zmm23,zmm0
  a23764:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x2c0]
  a2376b:	0b 
  a2376c:	62 e1 4c 40 5c f8    	vsubps zmm23,zmm22,zmm0
  a23772:	62 e1 4c 40 58 d0    	vaddps zmm18,zmm22,zmm0
  a23778:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x300]
  a2377f:	0c 
  a23780:	62 f1 04 40 5c c1    	vsubps zmm0,zmm31,zmm1
  a23786:	62 f1 04 40 58 c9    	vaddps zmm1,zmm31,zmm1
  a2378c:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm1
  a23793:	0f 
  a23794:	62 81 44 48 5c f6    	vsubps zmm22,zmm7,zmm30
  a2379a:	62 11 44 48 58 fe    	vaddps zmm15,zmm7,zmm30
  a237a0:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x7c0]
  a237a7:	1f 
  a237a8:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x280]
  a237af:	0a 
  a237b0:	62 61 6c 48 5c f1    	vsubps zmm30,zmm2,zmm1
  a237b6:	62 f1 6c 48 58 f9    	vaddps zmm7,zmm2,zmm1
  a237bc:	62 41 5c 40 5c fb    	vsubps zmm31,zmm20,zmm11
  a237c2:	62 d1 5c 40 58 eb    	vaddps zmm5,zmm20,zmm11
  a237c8:	62 b1 5c 48 5c f5    	vsubps zmm6,zmm4,zmm21
  a237ce:	62 e1 54 40 58 e4    	vaddps zmm20,zmm21,zmm4
  a237d4:	62 11 24 40 5c da    	vsubps zmm11,zmm27,zmm26
  a237da:	62 91 24 40 58 ca    	vaddps zmm1,zmm27,zmm26
  a237e0:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x480]
  a237e7:	12 
  a237e8:	62 e1 7c 48 28 6c 24 	vmovaps zmm21,ZMMWORD PTR [rsp+0x440]
  a237ef:	11 
  a237f0:	62 b1 6c 48 5c e5    	vsubps zmm4,zmm2,zmm21
  a237f6:	62 a1 6c 48 58 ed    	vaddps zmm21,zmm2,zmm21
  a237fc:	62 f1 5c 48 5c d3    	vsubps zmm2,zmm4,zmm3
  a23802:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm2
  a23809:	01 
  a2380a:	62 f1 64 48 58 d4    	vaddps zmm2,zmm3,zmm4
  a23810:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm2
  a23817:	12 
  a23818:	62 f1 3c 40 5c d6    	vsubps zmm2,zmm24,zmm6
  a2381e:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm2
  a23825:	02 
  a23826:	62 91 4c 48 58 d0    	vaddps zmm2,zmm6,zmm24
  a2382c:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm2
  a23833:	05 
  a23834:	62 41 3c 48 5c c1    	vsubps zmm24,zmm8,zmm9
  a2383a:	62 51 3c 48 58 c1    	vaddps zmm8,zmm8,zmm9
  a23840:	62 b1 74 40 5c d3    	vsubps zmm2,zmm17,zmm19
  a23846:	62 b1 74 40 58 db    	vaddps zmm3,zmm17,zmm19
  a2384c:	62 91 44 40 5c f6    	vsubps zmm6,zmm23,zmm30
  a23852:	62 81 44 40 58 fe    	vaddps zmm23,zmm23,zmm30
  a23858:	62 01 7c 48 5c f4    	vsubps zmm30,zmm0,zmm28
  a2385e:	62 01 7c 48 58 e4    	vaddps zmm28,zmm0,zmm28
  a23864:	62 41 4c 40 58 d3    	vaddps zmm26,zmm22,zmm11
  a2386a:	62 31 24 48 5c de    	vsubps zmm11,zmm11,zmm22
  a23870:	62 c1 2c 48 5c cc    	vsubps zmm17,zmm10,zmm12
  a23876:	62 d1 1c 48 58 c2    	vaddps zmm0,zmm12,zmm10
  a2387c:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm0
  a23883:	11 
  a23884:	62 81 04 40 5c d9    	vsubps zmm19,zmm31,zmm25
  a2388a:	62 11 04 40 58 e1    	vaddps zmm12,zmm31,zmm25
  a23890:	62 c1 7c 40 5c f5    	vsubps zmm22,zmm16,zmm13
  a23896:	62 d1 7c 40 58 c5    	vaddps zmm0,zmm16,zmm13
  a2389c:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm0
  a238a3:	07 
  a238a4:	62 21 74 48 5c cd    	vsubps zmm25,zmm1,zmm21
  a238aa:	62 31 74 48 58 ed    	vaddps zmm13,zmm1,zmm21
  a238b0:	62 d1 6c 40 5c ce    	vsubps zmm1,zmm18,zmm14
  a238b6:	62 61 7c 48 28 5c 24 	vmovaps zmm27,ZMMWORD PTR [rsp+0x3c0]
  a238bd:	0f 
  a238be:	62 71 24 40 5c cf    	vsubps zmm9,zmm27,zmm7
  a238c4:	62 c1 74 48 58 e9    	vaddps zmm21,zmm1,zmm9
  a238ca:	62 f1 34 48 5c e1    	vsubps zmm4,zmm9,zmm1
  a238d0:	62 d1 6c 40 58 c6    	vaddps zmm0,zmm18,zmm14
  a238d6:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm0
  a238dd:	06 
  a238de:	62 21 54 48 5c fc    	vsubps zmm31,zmm5,zmm20
  a238e4:	62 b1 54 48 58 c4    	vaddps zmm0,zmm5,zmm20
  a238ea:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm0
  a238f1:	10 
  a238f2:	62 c1 14 40 5c e7    	vsubps zmm20,zmm29,zmm15
  a238f8:	62 91 04 48 58 cd    	vaddps zmm1,zmm15,zmm29
  a238fe:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x100]
  a23905:	04 
  a23906:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0xc0]
  a2390d:	03 
  a2390e:	62 51 2c 48 5c f9    	vsubps zmm15,zmm10,zmm9
  a23914:	62 21 04 48 5c ee    	vsubps zmm29,zmm15,zmm22
  a2391a:	62 c1 4c 40 58 f7    	vaddps zmm22,zmm22,zmm15
  a23920:	62 f2 7d 48 18 05 d6 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff651dd6]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a23927:	1d 65 ff 
  a2392a:	62 e1 0c 40 59 d0    	vmulps zmm18,zmm30,zmm0
  a23930:	62 f2 7d 48 18 2d 2a 	vbroadcastss zmm5,DWORD PTR [rip+0xffffffffff651d2a]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a23937:	1d 65 ff 
  a2393a:	62 e2 4d 48 b8 d5    	vfmadd231ps zmm18,zmm6,zmm5
  a23940:	62 61 0c 40 59 f5    	vmulps zmm30,zmm30,zmm5
  a23946:	62 62 7d 48 bc f6    	vfnmadd231ps zmm30,zmm0,zmm6
  a2394c:	62 f1 6c 48 59 f5    	vmulps zmm6,zmm2,zmm5
  a23952:	62 f2 3d 40 b8 f0    	vfmadd231ps zmm6,zmm24,zmm0
  a23958:	62 61 3c 40 59 c5    	vmulps zmm24,zmm24,zmm5
  a2395e:	62 62 7d 48 bc c2    	vfnmadd231ps zmm24,zmm0,zmm2
  a23964:	62 e1 1c 40 59 c5    	vmulps zmm16,zmm28,zmm5
  a2396a:	62 e2 45 40 b8 c0    	vfmadd231ps zmm16,zmm23,zmm0
  a23970:	62 f1 1c 40 59 d0    	vmulps zmm2,zmm28,zmm0
  a23976:	62 b2 55 48 bc d7    	vfnmadd231ps zmm2,zmm5,zmm23
  a2397c:	62 e1 64 48 59 f8    	vmulps zmm23,zmm3,zmm0
  a23982:	62 e2 3d 48 b8 fd    	vfmadd231ps zmm23,zmm8,zmm5
  a23988:	62 f1 64 48 59 dd    	vmulps zmm3,zmm3,zmm5
  a2398e:	62 d2 7d 48 bc d8    	vfnmadd231ps zmm3,zmm0,zmm8
  a23994:	62 f2 7d 48 18 2d fe 	vbroadcastss zmm5,DWORD PTR [rip+0xffffffffff6519fe]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a2399b:	19 65 ff 
  a2399e:	62 71 24 48 59 c5    	vmulps zmm8,zmm11,zmm5
  a239a4:	62 71 54 48 59 5c 24 	vmulps zmm11,zmm5,ZMMWORD PTR [rsp+0x480]
  a239ab:	12 
  a239ac:	62 41 3c 48 58 e3    	vaddps zmm28,zmm8,zmm11
  a239b2:	62 51 3c 48 5c c3    	vsubps zmm8,zmm8,zmm11
  a239b8:	62 71 54 48 59 5c 24 	vmulps zmm11,zmm5,ZMMWORD PTR [rsp+0x40]
  a239bf:	01 
  a239c0:	62 71 2c 40 59 fd    	vmulps zmm15,zmm26,zmm5
  a239c6:	62 41 24 48 5c d7    	vsubps zmm26,zmm11,zmm15
  a239cc:	62 51 04 48 58 db    	vaddps zmm11,zmm15,zmm11
  a239d2:	62 f1 24 40 58 ff    	vaddps zmm7,zmm27,zmm7
  a239d8:	62 d1 2c 48 58 c1    	vaddps zmm0,zmm10,zmm9
  a239de:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x80]
  a239e5:	02 
  a239e6:	62 11 34 48 5c f2    	vsubps zmm14,zmm9,zmm26
  a239ec:	62 51 2c 40 58 c9    	vaddps zmm9,zmm26,zmm9
  a239f2:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm9
  a239f9:	02 
  a239fa:	62 21 74 40 5c d4    	vsubps zmm26,zmm17,zmm20
  a23a00:	62 31 5c 40 58 c9    	vaddps zmm9,zmm20,zmm17
  a23a06:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm9
  a23a0d:	01 
  a23a0e:	62 f1 5c 48 59 e5    	vmulps zmm4,zmm4,zmm5
  a23a14:	62 e1 4c 40 59 e5    	vmulps zmm20,zmm22,zmm5
  a23a1a:	62 a1 5c 48 58 f4    	vaddps zmm22,zmm4,zmm20
  a23a20:	62 a1 5c 48 5c e4    	vsubps zmm20,zmm4,zmm20
  a23a26:	62 11 64 40 5c cc    	vsubps zmm9,zmm19,zmm28
  a23a2c:	62 01 64 40 58 dc    	vaddps zmm27,zmm19,zmm28
  a23a32:	62 01 04 40 5c e1    	vsubps zmm28,zmm31,zmm25
  a23a38:	62 01 04 40 58 c9    	vaddps zmm25,zmm31,zmm25
  a23a3e:	62 61 14 40 59 ed    	vmulps zmm29,zmm29,zmm5
  a23a44:	62 e1 54 40 59 ed    	vmulps zmm21,zmm21,zmm5
  a23a4a:	62 21 14 40 5c fd    	vsubps zmm31,zmm29,zmm21
  a23a50:	62 81 54 40 58 ed    	vaddps zmm21,zmm21,zmm29
  a23a56:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x140]
  a23a5d:	05 
  a23a5e:	62 41 5c 48 5c e8    	vsubps zmm29,zmm4,zmm8
  a23a64:	62 e1 3c 48 58 cc    	vaddps zmm17,zmm8,zmm4
  a23a6a:	62 51 1c 48 5c c3    	vsubps zmm8,zmm12,zmm11
  a23a70:	62 c1 1c 48 58 db    	vaddps zmm19,zmm12,zmm11
  a23a76:	62 11 0c 40 5c d8    	vsubps zmm11,zmm30,zmm24
  a23a7c:	62 11 0c 40 58 e0    	vaddps zmm12,zmm30,zmm24
  a23a82:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x440]
  a23a89:	11 
  a23a8a:	62 41 5c 48 5c f5    	vsubps zmm30,zmm4,zmm13
  a23a90:	62 61 14 48 58 c4    	vaddps zmm24,zmm13,zmm4
  a23a96:	62 71 6c 40 58 ee    	vaddps zmm13,zmm18,zmm6
  a23a9c:	62 f1 6c 40 5c f6    	vsubps zmm6,zmm18,zmm6
  a23aa2:	62 e1 44 48 5c d0    	vsubps zmm18,zmm7,zmm0
  a23aa8:	62 71 44 48 58 f8    	vaddps zmm15,zmm7,zmm0
  a23aae:	62 f1 6c 48 5c fb    	vsubps zmm7,zmm2,zmm3
  a23ab4:	62 f1 6c 48 58 e3    	vaddps zmm4,zmm2,zmm3
  a23aba:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x400]
  a23ac1:	10 
  a23ac2:	62 f1 7c 48 5c d1    	vsubps zmm2,zmm0,zmm1
  a23ac8:	62 71 7c 48 58 d1    	vaddps zmm10,zmm0,zmm1
  a23ace:	62 b1 44 40 5c c0    	vsubps zmm0,zmm23,zmm16
  a23ad4:	62 b1 7c 40 58 df    	vaddps zmm3,zmm16,zmm23
  a23ada:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x1c0]
  a23ae1:	07 
  a23ae2:	62 e1 7c 48 28 44 24 	vmovaps zmm16,ZMMWORD PTR [rsp+0x180]
  a23ae9:	06 
  a23aea:	62 b1 54 48 5c c8    	vsubps zmm1,zmm5,zmm16
  a23af0:	62 f1 7c 40 58 ed    	vaddps zmm5,zmm16,zmm5
  a23af6:	62 c1 0c 48 58 c5    	vaddps zmm16,zmm14,zmm13
  a23afc:	62 e1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm16
  a23b03:	05 
  a23b04:	62 c1 0c 48 5c fd    	vsubps zmm23,zmm14,zmm13
  a23b0a:	62 11 2c 40 5c ef    	vsubps zmm13,zmm26,zmm31
  a23b10:	62 71 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm13
  a23b17:	04 
  a23b18:	62 81 2c 40 58 c7    	vaddps zmm16,zmm26,zmm31
  a23b1e:	62 41 34 48 5c d3    	vsubps zmm26,zmm9,zmm11
  a23b24:	62 51 34 48 58 db    	vaddps zmm11,zmm9,zmm11
  a23b2a:	62 21 1c 40 5c fe    	vsubps zmm31,zmm28,zmm22
  a23b30:	62 31 1c 40 58 f6    	vaddps zmm14,zmm28,zmm22
  a23b36:	62 71 14 40 5c c8    	vsubps zmm9,zmm29,zmm0
  a23b3c:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm9
  a23b43:	03 
  a23b44:	62 f1 14 40 58 c0    	vaddps zmm0,zmm29,zmm0
  a23b4a:	62 e1 0c 40 5c f1    	vsubps zmm22,zmm30,zmm1
  a23b50:	62 f1 0c 40 58 c9    	vaddps zmm1,zmm30,zmm1
  a23b56:	62 61 3c 48 5c e7    	vsubps zmm28,zmm8,zmm7
  a23b5c:	62 71 3c 48 58 c7    	vaddps zmm8,zmm8,zmm7
  a23b62:	62 b1 6c 48 5c fa    	vsubps zmm7,zmm2,zmm18
  a23b68:	62 b1 6c 48 58 d2    	vaddps zmm2,zmm2,zmm18
  a23b6e:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x80]
  a23b75:	02 
  a23b76:	62 c1 34 48 5c d4    	vsubps zmm18,zmm9,zmm12
  a23b7c:	62 41 34 48 58 ec    	vaddps zmm29,zmm9,zmm12
  a23b82:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x40]
  a23b89:	01 
  a23b8a:	62 31 34 48 5c ec    	vsubps zmm13,zmm9,zmm20
  a23b90:	62 a1 34 48 58 e4    	vaddps zmm20,zmm9,zmm20
  a23b96:	62 71 24 40 5c ce    	vsubps zmm9,zmm27,zmm6
  a23b9c:	62 f1 24 40 58 f6    	vaddps zmm6,zmm27,zmm6
  a23ba2:	62 31 34 40 5c e5    	vsubps zmm12,zmm25,zmm21
  a23ba8:	62 a1 34 40 58 ed    	vaddps zmm21,zmm25,zmm21
  a23bae:	62 61 74 40 5c cc    	vsubps zmm25,zmm17,zmm4
  a23bb4:	62 f1 74 40 58 e4    	vaddps zmm4,zmm17,zmm4
  a23bba:	62 c1 3c 40 5c cf    	vsubps zmm17,zmm24,zmm15
  a23bc0:	62 51 3c 40 58 ff    	vaddps zmm15,zmm24,zmm15
  a23bc6:	62 61 64 40 5c c3    	vsubps zmm24,zmm19,zmm3
  a23bcc:	62 f1 64 40 58 db    	vaddps zmm3,zmm19,zmm3
  a23bd2:	62 e1 2c 48 5c dd    	vsubps zmm19,zmm10,zmm5
  a23bd8:	62 f1 2c 48 58 ed    	vaddps zmm5,zmm10,zmm5
  a23bde:	62 71 7c 48 28 15 d8 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff66c4d8]        # 900c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d570>
  a23be5:	c4 66 ff 
  a23be8:	62 d2 2d 48 7f ef    	vpermt2ps zmm5,zmm10,zmm15
  a23bee:	62 f3 7d 48 19 6c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x20],zmm5,0x2
  a23bf5:	02 02 
  a23bf7:	c5 fc 11 2c 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm5
  a23bfc:	62 f2 2d 48 7f dc    	vpermt2ps zmm3,zmm10,zmm4
  a23c02:	62 f3 7d 48 19 5c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x50],zmm3,0x2
  a23c09:	05 02 
  a23c0b:	c5 fc 11 5c 16 30    	vmovups YMMWORD PTR [rsi+rdx*1+0x30],ymm3
  a23c11:	62 a2 2d 48 7f ec    	vpermt2ps zmm21,zmm10,zmm20
  a23c17:	62 92 2d 48 7f f5    	vpermt2ps zmm6,zmm10,zmm29
  a23c1d:	62 e3 7d 48 19 6c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x80],zmm21,0x2
  a23c24:	08 02 
  a23c26:	62 e1 7c 28 11 6c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm21
  a23c2d:	03 
  a23c2e:	62 f3 7d 48 19 74 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xb0],zmm6,0x2
  a23c35:	0b 02 
  a23c37:	c5 fc 11 b4 16 90 00 	vmovups YMMWORD PTR [rsi+rdx*1+0x90],ymm6
  a23c3e:	00 00 
  a23c40:	62 f2 2d 48 7f d1    	vpermt2ps zmm2,zmm10,zmm1
  a23c46:	62 f3 7d 48 19 54 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xe0],zmm2,0x2
  a23c4d:	0e 02 
  a23c4f:	c5 fc 11 94 16 c0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xc0],ymm2
  a23c56:	00 00 
  a23c58:	62 72 2d 48 7f c0    	vpermt2ps zmm8,zmm10,zmm0
  a23c5e:	62 73 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x110],zmm8,0x2
  a23c65:	11 02 
  a23c67:	c5 7c 11 84 16 f0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xf0],ymm8
  a23c6e:	00 00 
  a23c70:	62 32 2d 48 7f f0    	vpermt2ps zmm14,zmm10,zmm16
  a23c76:	62 32 2d 48 7f df    	vpermt2ps zmm11,zmm10,zmm23
  a23c7c:	62 73 7d 48 19 74 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x140],zmm14,0x2
  a23c83:	14 02 
  a23c85:	c5 7c 11 b4 16 20 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x120],ymm14
  a23c8c:	00 00 
  a23c8e:	62 73 7d 48 19 5c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x170],zmm11,0x2
  a23c95:	17 02 
  a23c97:	c5 7c 11 9c 16 50 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x150],ymm11
  a23c9e:	00 00 
  a23ca0:	62 a2 2d 48 7f d9    	vpermt2ps zmm19,zmm10,zmm17
  a23ca6:	62 e3 7d 48 19 5c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x1a0],zmm19,0x2
  a23cad:	1a 02 
  a23caf:	62 e1 7c 28 11 5c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x180],ymm19
  a23cb6:	0c 
  a23cb7:	62 02 2d 48 7f c1    	vpermt2ps zmm24,zmm10,zmm25
  a23cbd:	62 63 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x1d0],zmm24,0x2
  a23cc4:	1d 02 
  a23cc6:	62 61 7c 28 11 84 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x1b0],ymm24
  a23ccd:	b0 01 00 00 
  a23cd1:	62 52 2d 48 7f e5    	vpermt2ps zmm12,zmm10,zmm13
  a23cd7:	62 32 2d 48 7f ca    	vpermt2ps zmm9,zmm10,zmm18
  a23cdd:	62 73 7d 48 19 64 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x200],zmm12,0x2
  a23ce4:	20 02 
  a23ce6:	c5 7c 11 a4 16 e0 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x1e0],ymm12
  a23ced:	00 00 
  a23cef:	62 73 7d 48 19 4c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x230],zmm9,0x2
  a23cf6:	23 02 
  a23cf8:	c5 7c 11 8c 16 10 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x210],ymm9
  a23cff:	00 00 
  a23d01:	62 b2 2d 48 7f fe    	vpermt2ps zmm7,zmm10,zmm22
  a23d07:	62 f3 7d 48 19 7c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x260],zmm7,0x2
  a23d0e:	26 02 
  a23d10:	c5 fc 11 bc 16 40 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x240],ymm7
  a23d17:	00 00 
  a23d19:	62 62 2d 48 7f 64 24 	vpermt2ps zmm28,zmm10,ZMMWORD PTR [rsp+0xc0]
  a23d20:	03 
  a23d21:	62 63 7d 48 19 64 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x290],zmm28,0x2
  a23d28:	29 02 
  a23d2a:	62 61 7c 28 11 a4 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x270],ymm28
  a23d31:	70 02 00 00 
  a23d35:	62 62 2d 48 7f 7c 24 	vpermt2ps zmm31,zmm10,ZMMWORD PTR [rsp+0x100]
  a23d3c:	04 
  a23d3d:	62 62 2d 48 7f 54 24 	vpermt2ps zmm26,zmm10,ZMMWORD PTR [rsp+0x140]
  a23d44:	05 
  a23d45:	62 63 7d 48 19 7c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x2c0],zmm31,0x2
  a23d4c:	2c 02 
  a23d4e:	62 61 7c 28 11 7c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x2a0],ymm31
  a23d55:	15 
  a23d56:	62 63 7d 48 19 54 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x2f0],zmm26,0x2
  a23d5d:	2f 02 
  a23d5f:	62 61 7c 28 11 94 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x2d0],ymm26
  a23d66:	d0 02 00 00 
  a23d6a:	48 81 c2 00 03 00 00 	add    rdx,0x300
  a23d71:	48 39 d0             	cmp    rax,rdx
  a23d74:	0f 85 e6 ee ff ff    	jne    a22c60 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x60>
  a23d7a:	48 89 ec             	mov    rsp,rbp
  a23d7d:	5d                   	pop    rbp
  a23d7e:	c5 f8 77             	vzeroupper
  a23d81:	c3                   	ret
