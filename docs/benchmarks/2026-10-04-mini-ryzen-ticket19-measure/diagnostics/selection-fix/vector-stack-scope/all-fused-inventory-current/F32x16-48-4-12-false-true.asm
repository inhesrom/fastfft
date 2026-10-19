
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000009fdbc0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  9fdbc0:	55                   	push   rbp
  9fdbc1:	48 89 e5             	mov    rbp,rsp
  9fdbc4:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  9fdbc8:	48 81 ec c0 04 00 00 	sub    rsp,0x4c0
  9fdbcf:	62 f1 7c 48 28 05 a7 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6c93a7]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  9fdbd6:	93 6c ff 
  9fdbd9:	62 f1 7c 48 28 0d dd 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff6c93dd]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  9fdbe0:	93 6c ff 
  9fdbe3:	48 c1 e2 07          	shl    rdx,0x7
  9fdbe7:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  9fdbeb:	31 d2                	xor    edx,edx
  9fdbed:	4c 8d 84 24 40 04 00 	lea    r8,[rsp+0x440]
  9fdbf4:	00 
  9fdbf5:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  9fdbfa:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  9fdbfe:	62 f2 7d 48 7f d2    	vpermt2ps zmm2,zmm0,zmm2
  9fdc04:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm2
  9fdc0b:	0c 
  9fdc0c:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  9fdc10:	62 f2 75 48 7f c0    	vpermt2ps zmm0,zmm1,zmm0
  9fdc16:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm0
  9fdc1d:	0b 
  9fdc1e:	66 90                	xchg   ax,ax
  9fdc20:	c6 84 24 40 04 00 00 	mov    BYTE PTR [rsp+0x440],0x0
  9fdc27:	00 
  9fdc28:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  9fdc2d:	62 f1 7c 48 10 04 17 	vmovups zmm0,ZMMWORD PTR [rdi+rdx*1]
  9fdc34:	c5 fc 10 4c 17 40    	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x40]
  9fdc3a:	62 f1 7c 48 28 d0    	vmovaps zmm2,zmm0
  9fdc40:	62 71 7c 48 28 15 36 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff68ff36]        # 8db80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b030>
  9fdc47:	ff 68 ff 
  9fdc4a:	62 f2 2d 48 7f c1    	vpermt2ps zmm0,zmm10,zmm1
  9fdc50:	62 f1 7c 48 10 9c 17 	vmovups zmm3,ZMMWORD PTR [rdi+rdx*1+0x60]
  9fdc57:	60 00 00 00 
  9fdc5b:	c5 fc 10 a4 17 a0 00 	vmovups ymm4,YMMWORD PTR [rdi+rdx*1+0xa0]
  9fdc62:	00 00 
  9fdc64:	62 f1 7c 48 28 eb    	vmovaps zmm5,zmm3
  9fdc6a:	62 71 7c 48 28 0d cc 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff68fecc]        # 8db40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1aff0>
  9fdc71:	fe 68 ff 
  9fdc74:	62 f2 35 48 7f d1    	vpermt2ps zmm2,zmm9,zmm1
  9fdc7a:	62 f2 2d 48 7f dc    	vpermt2ps zmm3,zmm10,zmm4
  9fdc80:	62 f1 7c 48 10 4c 17 	vmovups zmm1,ZMMWORD PTR [rdi+rdx*1+0xc0]
  9fdc87:	03 
  9fdc88:	c5 fc 10 b4 17 00 01 	vmovups ymm6,YMMWORD PTR [rdi+rdx*1+0x100]
  9fdc8f:	00 00 
  9fdc91:	62 f2 35 48 7f ec    	vpermt2ps zmm5,zmm9,zmm4
  9fdc97:	62 f1 7c 48 28 e1    	vmovaps zmm4,zmm1
  9fdc9d:	62 f2 2d 48 7f ce    	vpermt2ps zmm1,zmm10,zmm6
  9fdca3:	62 f1 7c 48 10 bc 17 	vmovups zmm7,ZMMWORD PTR [rdi+rdx*1+0x120]
  9fdcaa:	20 01 00 00 
  9fdcae:	62 f2 35 48 7f e6    	vpermt2ps zmm4,zmm9,zmm6
  9fdcb4:	c5 fc 10 b4 17 60 01 	vmovups ymm6,YMMWORD PTR [rdi+rdx*1+0x160]
  9fdcbb:	00 00 
  9fdcbd:	62 71 7c 48 28 c7    	vmovaps zmm8,zmm7
  9fdcc3:	62 f2 2d 48 7f fe    	vpermt2ps zmm7,zmm10,zmm6
  9fdcc9:	62 72 35 48 7f c6    	vpermt2ps zmm8,zmm9,zmm6
  9fdccf:	62 f1 6c 48 58 f4    	vaddps zmm6,zmm2,zmm4
  9fdcd5:	62 71 7c 48 58 c9    	vaddps zmm9,zmm0,zmm1
  9fdcdb:	62 71 64 48 58 d7    	vaddps zmm10,zmm3,zmm7
  9fdce1:	62 51 54 48 58 d8    	vaddps zmm11,zmm5,zmm8
  9fdce7:	62 c1 34 48 58 e2    	vaddps zmm20,zmm9,zmm10
  9fdced:	62 f1 6c 48 5c d4    	vsubps zmm2,zmm2,zmm4
  9fdcf3:	62 f1 64 48 5c e7    	vsubps zmm4,zmm3,zmm7
  9fdcf9:	62 51 4c 48 58 e3    	vaddps zmm12,zmm6,zmm11
  9fdcff:	62 f1 6c 48 58 dc    	vaddps zmm3,zmm2,zmm4
  9fdd05:	62 f1 7c 48 5c c1    	vsubps zmm0,zmm0,zmm1
  9fdd0b:	62 f1 3c 48 5c cd    	vsubps zmm1,zmm8,zmm5
  9fdd11:	62 61 74 48 58 e8    	vaddps zmm29,zmm1,zmm0
  9fdd17:	62 d1 4c 48 5c eb    	vsubps zmm5,zmm6,zmm11
  9fdd1d:	62 41 34 48 5c da    	vsubps zmm27,zmm9,zmm10
  9fdd23:	62 f1 6c 48 5c e4    	vsubps zmm4,zmm2,zmm4
  9fdd29:	62 61 7c 48 5c f1    	vsubps zmm30,zmm0,zmm1
  9fdd2f:	62 d1 7c 48 28 cc    	vmovaps zmm1,zmm12
  9fdd35:	62 71 7c 48 28 35 81 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff6c9281]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  9fdd3c:	92 6c ff 
  9fdd3f:	62 a1 74 00 57 c9    	vxorps xmm17,xmm17,xmm17
  9fdd45:	62 32 0d 48 7f e1    	vpermt2ps zmm12,zmm14,zmm17
  9fdd4b:	62 f1 7c 48 28 f3    	vmovaps zmm6,zmm3
  9fdd51:	62 71 7c 48 28 2d 25 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff6c9225]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  9fdd58:	92 6c ff 
  9fdd5b:	62 b2 15 48 7f c9    	vpermt2ps zmm1,zmm13,zmm17
  9fdd61:	62 b2 15 48 7f f1    	vpermt2ps zmm6,zmm13,zmm17
  9fdd67:	62 b2 0d 48 7f d9    	vpermt2ps zmm3,zmm14,zmm17
  9fdd6d:	62 f1 7c 48 28 d5    	vmovaps zmm2,zmm5
  9fdd73:	62 b2 15 48 7f d1    	vpermt2ps zmm2,zmm13,zmm17
  9fdd79:	62 b2 0d 48 7f e9    	vpermt2ps zmm5,zmm14,zmm17
  9fdd7f:	62 71 7c 48 28 c4    	vmovaps zmm8,zmm4
  9fdd85:	62 b2 0d 48 7f e1    	vpermt2ps zmm4,zmm14,zmm17
  9fdd8b:	62 32 15 48 7f c1    	vpermt2ps zmm8,zmm13,zmm17
  9fdd91:	62 71 7c 48 28 c9    	vmovaps zmm9,zmm1
  9fdd97:	62 e1 7c 48 28 15 9f 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff6c919f]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  9fdd9e:	91 6c ff 
  9fdda1:	62 61 7c 48 28 64 24 	vmovaps zmm28,ZMMWORD PTR [rsp+0x300]
  9fdda8:	0c 
  9fdda9:	62 92 6d 40 7f cc    	vpermt2ps zmm1,zmm18,zmm28
  9fddaf:	62 f1 7c 48 28 c6    	vmovaps zmm0,zmm6
  9fddb5:	62 71 7c 48 28 3d 41 	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff6c9141]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  9fddbc:	91 6c ff 
  9fddbf:	62 12 05 48 7f cc    	vpermt2ps zmm9,zmm15,zmm28
  9fddc5:	62 92 6d 40 7f f4    	vpermt2ps zmm6,zmm18,zmm28
  9fddcb:	62 71 7c 48 28 d2    	vmovaps zmm10,zmm2
  9fddd1:	62 92 6d 40 7f d4    	vpermt2ps zmm2,zmm18,zmm28
  9fddd7:	62 92 05 48 7f c4    	vpermt2ps zmm0,zmm15,zmm28
  9fdddd:	62 51 7c 48 28 d8    	vmovaps zmm11,zmm8
  9fdde3:	62 12 6d 40 7f c4    	vpermt2ps zmm8,zmm18,zmm28
  9fdde9:	62 61 7c 48 28 7c 24 	vmovaps zmm31,ZMMWORD PTR [rsp+0x2c0]
  9fddf0:	0b 
  9fddf1:	62 12 05 48 7f e7    	vpermt2ps zmm12,zmm15,zmm31
  9fddf7:	62 12 05 48 7f d4    	vpermt2ps zmm10,zmm15,zmm28
  9fddfd:	62 92 05 48 7f df    	vpermt2ps zmm3,zmm15,zmm31
  9fde03:	62 92 05 48 7f ef    	vpermt2ps zmm5,zmm15,zmm31
  9fde09:	62 92 05 48 7f e7    	vpermt2ps zmm4,zmm15,zmm31
  9fde0f:	62 12 05 48 7f dc    	vpermt2ps zmm11,zmm15,zmm28
  9fde15:	62 61 f5 48 14 d2    	vunpcklpd zmm26,zmm1,zmm2
  9fde1b:	62 e1 f5 48 15 da    	vunpckhpd zmm19,zmm1,zmm2
  9fde21:	62 d1 cd 48 14 f8    	vunpcklpd zmm7,zmm6,zmm8
  9fde27:	62 41 cd 48 15 c0    	vunpckhpd zmm24,zmm6,zmm8
  9fde2d:	62 71 9d 48 14 c5    	vunpcklpd zmm8,zmm12,zmm5
  9fde33:	62 f1 9d 48 15 cd    	vunpckhpd zmm1,zmm12,zmm5
  9fde39:	62 f1 e5 48 14 ec    	vunpcklpd zmm5,zmm3,zmm4
  9fde3f:	62 d1 b5 48 14 d2    	vunpcklpd zmm2,zmm9,zmm10
  9fde45:	62 f1 e5 48 15 e4    	vunpckhpd zmm4,zmm3,zmm4
  9fde4b:	62 c1 7c 48 28 e8    	vmovaps zmm21,zmm8
  9fde51:	62 61 7c 48 28 0d e5 	vmovaps zmm25,ZMMWORD PTR [rip+0xffffffffff6c8fe5]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  9fde58:	8f 6c ff 
  9fde5b:	62 72 35 40 7f c5    	vpermt2ps zmm8,zmm25,zmm5
  9fde61:	62 c1 b5 48 15 f2    	vunpckhpd zmm22,zmm9,zmm10
  9fde67:	62 e1 7c 48 28 f9    	vmovaps zmm23,zmm1
  9fde6d:	62 f2 35 40 7f cc    	vpermt2ps zmm1,zmm25,zmm4
  9fde73:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm1
  9fde7a:	03 
  9fde7b:	62 31 7c 48 28 cc    	vmovaps zmm9,zmm20
  9fde81:	62 c1 fd 48 14 c3    	vunpcklpd zmm16,zmm0,zmm11
  9fde87:	62 32 15 48 7f c9    	vpermt2ps zmm9,zmm13,zmm17
  9fde8d:	62 a2 0d 48 7f e1    	vpermt2ps zmm20,zmm14,zmm17
  9fde93:	62 11 7c 48 28 d5    	vmovaps zmm10,zmm29
  9fde99:	62 d1 fd 48 15 db    	vunpckhpd zmm3,zmm0,zmm11
  9fde9f:	62 32 15 48 7f d1    	vpermt2ps zmm10,zmm13,zmm17
  9fdea5:	62 22 0d 48 7f e9    	vpermt2ps zmm29,zmm14,zmm17
  9fdeab:	62 91 7c 48 28 c3    	vmovaps zmm0,zmm27
  9fdeb1:	62 91 7c 48 28 ca    	vmovaps zmm1,zmm26
  9fdeb7:	62 b2 15 48 7f c1    	vpermt2ps zmm0,zmm13,zmm17
  9fdebd:	62 22 0d 48 7f d9    	vpermt2ps zmm27,zmm14,zmm17
  9fdec3:	62 11 7c 48 28 de    	vmovaps zmm11,zmm30
  9fdec9:	62 f2 35 40 7f cf    	vpermt2ps zmm1,zmm25,zmm7
  9fdecf:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm1
  9fded6:	02 
  9fded7:	62 32 15 48 7f d9    	vpermt2ps zmm11,zmm13,zmm17
  9fdedd:	62 22 0d 48 7f f1    	vpermt2ps zmm30,zmm14,zmm17
  9fdee3:	62 d1 7c 48 28 f1    	vmovaps zmm6,zmm9
  9fdee9:	62 a1 7c 48 28 cb    	vmovaps zmm17,zmm19
  9fdeef:	62 92 05 48 7f f4    	vpermt2ps zmm6,zmm15,zmm28
  9fdef5:	62 12 6d 40 7f cc    	vpermt2ps zmm9,zmm18,zmm28
  9fdefb:	62 51 7c 48 28 e2    	vmovaps zmm12,zmm10
  9fdf01:	62 82 35 40 7f d8    	vpermt2ps zmm19,zmm25,zmm24
  9fdf07:	62 12 05 48 7f e4    	vpermt2ps zmm12,zmm15,zmm28
  9fdf0d:	62 12 6d 40 7f d4    	vpermt2ps zmm10,zmm18,zmm28
  9fdf13:	62 71 7c 48 28 e8    	vmovaps zmm13,zmm0
  9fdf19:	62 f1 7c 48 28 0d dd 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff6c8edd]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  9fdf20:	8e 6c ff 
  9fdf23:	62 e2 75 48 7f ed    	vpermt2ps zmm21,zmm1,zmm5
  9fdf29:	62 e1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm21
  9fdf30:	01 
  9fdf31:	62 12 05 48 7f ec    	vpermt2ps zmm13,zmm15,zmm28
  9fdf37:	62 92 6d 40 7f c4    	vpermt2ps zmm0,zmm18,zmm28
  9fdf3d:	62 d1 7c 48 28 eb    	vmovaps zmm5,zmm11
  9fdf43:	62 e2 75 48 7f fc    	vpermt2ps zmm23,zmm1,zmm4
  9fdf49:	62 92 05 48 7f ec    	vpermt2ps zmm5,zmm15,zmm28
  9fdf4f:	62 12 6d 40 7f dc    	vpermt2ps zmm11,zmm18,zmm28
  9fdf55:	62 82 05 48 7f e7    	vpermt2ps zmm20,zmm15,zmm31
  9fdf5b:	62 e1 7c 48 28 ea    	vmovaps zmm21,zmm2
  9fdf61:	62 02 05 48 7f ef    	vpermt2ps zmm29,zmm15,zmm31
  9fdf67:	62 02 05 48 7f df    	vpermt2ps zmm27,zmm15,zmm31
  9fdf6d:	62 02 05 48 7f f7    	vpermt2ps zmm30,zmm15,zmm31
  9fdf73:	62 b2 35 40 7f d0    	vpermt2ps zmm2,zmm25,zmm16
  9fdf79:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm2
  9fdf80:	09 
  9fdf81:	62 41 cd 48 14 e5    	vunpcklpd zmm28,zmm6,zmm13
  9fdf87:	62 d1 cd 48 15 f5    	vunpckhpd zmm6,zmm6,zmm13
  9fdf8d:	62 f1 9d 48 14 e5    	vunpcklpd zmm4,zmm12,zmm5
  9fdf93:	62 a1 7c 48 28 d6    	vmovaps zmm18,zmm22
  9fdf99:	62 71 9d 48 15 ed    	vunpckhpd zmm13,zmm12,zmm5
  9fdf9f:	62 f1 b5 48 14 d0    	vunpcklpd zmm2,zmm9,zmm0
  9fdfa5:	62 61 b5 48 15 f8    	vunpckhpd zmm31,zmm9,zmm0
  9fdfab:	62 e2 35 40 7f f3    	vpermt2ps zmm22,zmm25,zmm3
  9fdfb1:	62 d1 ad 48 14 eb    	vunpcklpd zmm5,zmm10,zmm11
  9fdfb7:	62 51 ad 48 15 cb    	vunpckhpd zmm9,zmm10,zmm11
  9fdfbd:	62 91 dd 40 14 c3    	vunpcklpd zmm0,zmm20,zmm27
  9fdfc3:	62 62 75 48 7f d7    	vpermt2ps zmm26,zmm1,zmm7
  9fdfc9:	62 11 dd 40 15 f3    	vunpckhpd zmm14,zmm20,zmm27
  9fdfcf:	62 11 95 40 14 de    	vunpcklpd zmm11,zmm29,zmm30
  9fdfd5:	62 01 95 40 15 f6    	vunpckhpd zmm30,zmm29,zmm30
  9fdfdb:	62 82 75 48 7f c8    	vpermt2ps zmm17,zmm1,zmm24
  9fdfe1:	62 91 7c 48 28 fc    	vmovaps zmm7,zmm28
  9fdfe7:	62 61 7c 48 28 ee    	vmovaps zmm29,zmm6
  9fdfed:	62 61 7c 48 28 c2    	vmovaps zmm24,zmm2
  9fdff3:	62 f2 75 48 7f fc    	vpermt2ps zmm7,zmm1,zmm4
  9fdff9:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm7
  9fe000:	0a 
  9fe001:	62 62 75 48 7f c5    	vpermt2ps zmm24,zmm1,zmm5
  9fe007:	62 f2 35 40 7f d5    	vpermt2ps zmm2,zmm25,zmm5
  9fe00d:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm2
  9fe014:	06 
  9fe015:	62 11 7c 48 28 d7    	vmovaps zmm10,zmm31
  9fe01b:	62 62 35 40 7f e4    	vpermt2ps zmm28,zmm25,zmm4
  9fe021:	62 52 75 48 7f d1    	vpermt2ps zmm10,zmm1,zmm9
  9fe027:	62 42 35 40 7f f9    	vpermt2ps zmm31,zmm25,zmm9
  9fe02d:	62 f1 7c 48 28 e8    	vmovaps zmm5,zmm0
  9fe033:	62 42 75 48 7f ed    	vpermt2ps zmm29,zmm1,zmm13
  9fe039:	62 d2 75 48 7f eb    	vpermt2ps zmm5,zmm1,zmm11
  9fe03f:	62 d2 35 40 7f c3    	vpermt2ps zmm0,zmm25,zmm11
  9fe045:	62 41 7c 48 28 de    	vmovaps zmm27,zmm14
  9fe04b:	62 d2 35 40 7f f5    	vpermt2ps zmm6,zmm25,zmm13
  9fe051:	62 02 75 48 7f de    	vpermt2ps zmm27,zmm1,zmm30
  9fe057:	62 12 35 40 7f f6    	vpermt2ps zmm14,zmm25,zmm30
  9fe05d:	62 f1 7c 48 10 61 02 	vmovups zmm4,ZMMWORD PTR [rcx+0x80]
  9fe064:	62 a2 75 48 7f e8    	vpermt2ps zmm21,zmm1,zmm16
  9fe06a:	62 e1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm21
  9fe071:	08 
  9fe072:	62 71 7c 48 10 59 03 	vmovups zmm11,ZMMWORD PTR [rcx+0xc0]
  9fe079:	62 61 7c 48 10 49 04 	vmovups zmm25,ZMMWORD PTR [rcx+0x100]
  9fe080:	62 e1 7c 48 10 61 05 	vmovups zmm20,ZMMWORD PTR [rcx+0x140]
  9fe087:	62 e2 75 48 7f d3    	vpermt2ps zmm18,zmm1,zmm3
  9fe08d:	62 f1 7c 48 10 79 06 	vmovups zmm7,ZMMWORD PTR [rcx+0x180]
  9fe094:	62 71 7c 48 10 49 0c 	vmovups zmm9,ZMMWORD PTR [rcx+0x300]
  9fe09b:	62 f1 7c 48 10 49 0d 	vmovups zmm1,ZMMWORD PTR [rcx+0x340]
  9fe0a2:	62 41 74 40 59 f1    	vmulps zmm30,zmm17,zmm9
  9fe0a8:	62 d1 2c 48 59 d1    	vmulps zmm2,zmm10,zmm9
  9fe0ae:	62 b2 75 48 b8 d1    	vfmadd231ps zmm2,zmm1,zmm17
  9fe0b4:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm2
  9fe0bb:	07 
  9fe0bc:	62 71 7c 48 10 49 12 	vmovups zmm9,ZMMWORD PTR [rcx+0x480]
  9fe0c3:	62 62 2d 48 bc f1    	vfnmadd231ps zmm30,zmm10,zmm1
  9fe0c9:	62 f1 7c 48 10 49 13 	vmovups zmm1,ZMMWORD PTR [rcx+0x4c0]
  9fe0d0:	62 c1 3c 48 59 c9    	vmulps zmm17,zmm8,zmm9
  9fe0d6:	62 51 7c 48 59 e9    	vmulps zmm13,zmm0,zmm9
  9fe0dc:	62 e2 7d 48 bc c9    	vfnmadd231ps zmm17,zmm0,zmm1
  9fe0e2:	62 f1 7c 48 10 41 08 	vmovups zmm0,ZMMWORD PTR [rcx+0x200]
  9fe0e9:	62 52 75 48 b8 e8    	vfmadd231ps zmm13,zmm1,zmm8
  9fe0ef:	62 f1 7c 48 10 49 09 	vmovups zmm1,ZMMWORD PTR [rcx+0x240]
  9fe0f6:	62 f1 2c 40 59 d0    	vmulps zmm2,zmm26,zmm0
  9fe0fc:	62 e1 3c 40 59 e8    	vmulps zmm21,zmm24,zmm0
  9fe102:	62 82 75 48 b8 ea    	vfmadd231ps zmm21,zmm1,zmm26
  9fe108:	62 f1 7c 48 10 41 14 	vmovups zmm0,ZMMWORD PTR [rcx+0x500]
  9fe10f:	62 f2 3d 40 bc d1    	vfnmadd231ps zmm2,zmm24,zmm1
  9fe115:	62 f1 7c 48 10 49 15 	vmovups zmm1,ZMMWORD PTR [rcx+0x540]
  9fe11c:	62 61 44 40 59 d0    	vmulps zmm26,zmm23,zmm0
  9fe122:	62 61 24 40 59 c0    	vmulps zmm24,zmm27,zmm0
  9fe128:	62 62 25 40 bc d1    	vfnmadd231ps zmm26,zmm27,zmm1
  9fe12e:	62 61 7c 48 10 59 07 	vmovups zmm27,ZMMWORD PTR [rcx+0x1c0]
  9fe135:	62 22 75 48 b8 c7    	vfmadd231ps zmm24,zmm1,zmm23
  9fe13b:	62 f1 7c 48 10 49 0a 	vmovups zmm1,ZMMWORD PTR [rcx+0x280]
  9fe142:	62 71 4c 40 59 ff    	vmulps zmm15,zmm22,zmm7
  9fe148:	62 12 4d 48 bc fb    	vfnmadd231ps zmm15,zmm6,zmm27
  9fe14e:	62 71 4c 48 59 d7    	vmulps zmm10,zmm6,zmm7
  9fe154:	62 e1 7c 48 10 79 0e 	vmovups zmm23,ZMMWORD PTR [rcx+0x380]
  9fe15b:	62 32 25 40 b8 d6    	vfmadd231ps zmm10,zmm27,zmm22
  9fe161:	62 e1 7c 48 10 71 0f 	vmovups zmm22,ZMMWORD PTR [rcx+0x3c0]
  9fe168:	62 31 64 40 59 e7    	vmulps zmm12,zmm19,zmm23
  9fe16e:	62 a1 04 40 59 ff    	vmulps zmm23,zmm31,zmm23
  9fe174:	62 32 05 40 bc e6    	vfnmadd231ps zmm12,zmm31,zmm22
  9fe17a:	62 61 7c 48 10 59 0b 	vmovups zmm27,ZMMWORD PTR [rcx+0x2c0]
  9fe181:	62 a2 4d 40 b8 fb    	vfmadd231ps zmm23,zmm22,zmm19
  9fe187:	62 f1 7c 48 10 79 10 	vmovups zmm7,ZMMWORD PTR [rcx+0x400]
  9fe18e:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x240]
  9fe195:	09 
  9fe196:	62 e1 7c 48 59 f4    	vmulps zmm22,zmm0,zmm4
  9fe19c:	62 c2 1d 40 bc f3    	vfnmadd231ps zmm22,zmm28,zmm11
  9fe1a2:	62 61 1c 40 59 e4    	vmulps zmm28,zmm28,zmm4
  9fe1a8:	62 f1 7c 48 10 61 11 	vmovups zmm4,ZMMWORD PTR [rcx+0x440]
  9fe1af:	62 62 25 48 b8 e0    	vfmadd231ps zmm28,zmm11,zmm0
  9fe1b5:	62 71 7c 48 10 59 16 	vmovups zmm11,ZMMWORD PTR [rcx+0x580]
  9fe1bc:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x40]
  9fe1c3:	01 
  9fe1c4:	62 e1 7c 48 59 c7    	vmulps zmm16,zmm0,zmm7
  9fe1ca:	62 71 54 48 59 c7    	vmulps zmm8,zmm5,zmm7
  9fe1d0:	62 e2 55 48 bc c4    	vfnmadd231ps zmm16,zmm5,zmm4
  9fe1d6:	62 f1 7c 48 10 69 17 	vmovups zmm5,ZMMWORD PTR [rcx+0x5c0]
  9fe1dd:	62 72 5d 48 b8 c0    	vfmadd231ps zmm8,zmm4,zmm0
  9fe1e3:	62 01 6c 40 59 f9    	vmulps zmm31,zmm18,zmm25
  9fe1e9:	62 e1 7c 48 28 5c 24 	vmovaps zmm19,ZMMWORD PTR [rsp+0x200]
  9fe1f0:	08 
  9fe1f1:	62 11 64 40 58 ce    	vaddps zmm9,zmm19,zmm30
  9fe1f7:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm9
  9fe1fe:	01 
  9fe1ff:	62 22 15 40 bc fc    	vfnmadd231ps zmm31,zmm29,zmm20
  9fe205:	62 91 14 40 59 d9    	vmulps zmm3,zmm29,zmm25
  9fe20b:	62 b2 5d 40 b8 da    	vfmadd231ps zmm3,zmm20,zmm18
  9fe211:	62 b1 04 48 58 f9    	vaddps zmm7,zmm15,zmm17
  9fe217:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm7
  9fe21e:	05 
  9fe21f:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0xc0]
  9fe226:	03 
  9fe227:	62 41 5c 48 59 eb    	vmulps zmm29,zmm4,zmm11
  9fe22d:	62 62 0d 48 bc ed    	vfnmadd231ps zmm29,zmm14,zmm5
  9fe233:	62 51 0c 48 59 db    	vmulps zmm11,zmm14,zmm11
  9fe239:	62 91 6c 48 58 f2    	vaddps zmm6,zmm2,zmm26
  9fe23f:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm6
  9fe246:	04 
  9fe247:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x80]
  9fe24e:	02 
  9fe24f:	62 71 7c 48 59 f1    	vmulps zmm14,zmm0,zmm1
  9fe255:	62 e1 7c 48 28 54 24 	vmovaps zmm18,ZMMWORD PTR [rsp+0x180]
  9fe25c:	06 
  9fe25d:	62 12 6d 40 bc f3    	vfnmadd231ps zmm14,zmm18,zmm27
  9fe263:	62 72 55 48 b8 dc    	vfmadd231ps zmm11,zmm5,zmm4
  9fe269:	62 a1 1c 48 58 e6    	vaddps zmm20,zmm12,zmm22
  9fe26f:	62 41 14 40 58 ce    	vaddps zmm25,zmm29,zmm14
  9fe275:	62 f1 6c 40 59 c9    	vmulps zmm1,zmm18,zmm1
  9fe27b:	62 f2 25 40 b8 c8    	vfmadd231ps zmm1,zmm27,zmm0
  9fe281:	62 81 7c 40 58 d7    	vaddps zmm18,zmm16,zmm31
  9fe287:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x280]
  9fe28e:	0a 
  9fe28f:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x1c0]
  9fe296:	07 
  9fe297:	62 f1 7c 48 58 e5    	vaddps zmm4,zmm0,zmm5
  9fe29d:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm4
  9fe2a4:	02 
  9fe2a5:	62 01 44 40 58 dc    	vaddps zmm27,zmm23,zmm28
  9fe2ab:	62 01 6c 48 5c d2    	vsubps zmm26,zmm2,zmm26
  9fe2b1:	62 f1 34 48 58 d7    	vaddps zmm2,zmm9,zmm7
  9fe2b7:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm2
  9fe2be:	10 
  9fe2bf:	62 81 44 40 5c fc    	vsubps zmm23,zmm23,zmm28
  9fe2c5:	62 61 24 48 58 e1    	vaddps zmm28,zmm11,zmm1
  9fe2cb:	62 01 7c 40 5c ff    	vsubps zmm31,zmm16,zmm31
  9fe2d1:	62 a1 4c 48 58 c4    	vaddps zmm16,zmm6,zmm20
  9fe2d7:	62 e1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm16
  9fe2de:	06 
  9fe2df:	62 71 24 48 5c d9    	vsubps zmm11,zmm11,zmm1
  9fe2e5:	62 d1 2c 48 58 f5    	vaddps zmm6,zmm10,zmm13
  9fe2eb:	62 01 64 40 5c f6    	vsubps zmm30,zmm19,zmm30
  9fe2f1:	62 e1 4c 48 58 dc    	vaddps zmm19,zmm6,zmm4
  9fe2f7:	62 51 2c 48 5c cd    	vsubps zmm9,zmm10,zmm13
  9fe2fd:	62 91 54 40 58 e0    	vaddps zmm4,zmm21,zmm24
  9fe303:	62 01 54 40 5c c0    	vsubps zmm24,zmm21,zmm24
  9fe309:	62 91 5c 48 58 d3    	vaddps zmm2,zmm4,zmm27
  9fe30f:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm2
  9fe316:	08 
  9fe317:	62 c1 4c 40 5c f4    	vsubps zmm22,zmm22,zmm12
  9fe31d:	62 71 3c 48 58 eb    	vaddps zmm13,zmm8,zmm3
  9fe323:	62 f1 3c 48 5c fb    	vsubps zmm7,zmm8,zmm3
  9fe329:	62 91 14 48 58 cc    	vaddps zmm1,zmm13,zmm28
  9fe32f:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm1
  9fe336:	09 
  9fe337:	62 01 0c 48 5c ed    	vsubps zmm29,zmm14,zmm29
  9fe33d:	62 a1 2c 40 58 ef    	vaddps zmm21,zmm26,zmm23
  9fe343:	62 71 54 48 5c c0    	vsubps zmm8,zmm5,zmm0
  9fe349:	62 d1 0c 40 58 c1    	vaddps zmm0,zmm30,zmm9
  9fe34f:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm0
  9fe356:	03 
  9fe357:	62 c1 74 40 5c cf    	vsubps zmm17,zmm17,zmm15
  9fe35d:	62 72 7d 48 18 35 f9 	vbroadcastss zmm14,DWORD PTR [rip+0xffffffffff6770f9]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  9fe364:	70 67 ff 
  9fe367:	62 71 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm14
  9fe36e:	0e 
  9fe36f:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x100]
  9fe376:	04 
  9fe377:	62 b1 7c 48 5c dc    	vsubps zmm3,zmm0,zmm20
  9fe37d:	62 91 6c 40 58 c1    	vaddps zmm0,zmm18,zmm25
  9fe383:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm0
  9fe38a:	07 
  9fe38b:	62 11 6c 40 5c e1    	vsubps zmm12,zmm18,zmm25
  9fe391:	62 b1 3c 40 58 ee    	vaddps zmm5,zmm24,zmm22
  9fe397:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x40]
  9fe39e:	01 
  9fe39f:	62 71 2c 48 5c 54 24 	vsubps zmm10,zmm10,ZMMWORD PTR [rsp+0x140]
  9fe3a6:	05 
  9fe3a7:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm10
  9fe3ae:	0d 
  9fe3af:	62 c1 04 40 58 e3    	vaddps zmm20,zmm31,zmm11
  9fe3b5:	62 11 5c 48 5c fb    	vsubps zmm15,zmm4,zmm27
  9fe3bb:	62 91 44 48 58 e5    	vaddps zmm4,zmm7,zmm29
  9fe3c1:	62 01 14 48 5c e4    	vsubps zmm28,zmm13,zmm28
  9fe3c7:	62 61 6c 48 58 c9    	vaddps zmm25,zmm2,zmm1
  9fe3cd:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x80]
  9fe3d4:	02 
  9fe3d5:	62 61 74 48 5c de    	vsubps zmm27,zmm1,zmm6
  9fe3db:	62 61 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm27
  9fe3e2:	0f 
  9fe3e3:	62 e1 54 48 58 d4    	vaddps zmm18,zmm5,zmm4
  9fe3e9:	62 e1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm18
  9fe3f0:	01 
  9fe3f1:	62 41 0c 40 5c f1    	vsubps zmm30,zmm30,zmm9
  9fe3f7:	62 71 7c 40 58 d0    	vaddps zmm10,zmm16,zmm0
  9fe3fd:	62 b1 2c 40 5c c7    	vsubps zmm0,zmm26,zmm23
  9fe403:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm0
  9fe40a:	05 
  9fe40b:	62 41 74 40 58 d0    	vaddps zmm26,zmm17,zmm8
  9fe411:	62 61 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm26
  9fe418:	02 
  9fe419:	62 d1 04 40 5c c3    	vsubps zmm0,zmm31,zmm11
  9fe41f:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  9fe426:	04 
  9fe427:	62 31 54 40 58 dc    	vaddps zmm11,zmm21,zmm20
  9fe42d:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm11
  9fe434:	0a 
  9fe435:	62 31 3c 48 5c c1    	vsubps zmm8,zmm8,zmm17
  9fe43b:	62 d1 7c 48 28 ce    	vmovaps zmm1,zmm14
  9fe441:	62 a1 3c 40 5c c6    	vsubps zmm16,zmm24,zmm22
  9fe447:	62 92 6d 40 ac ca    	vfnmadd213ps zmm1,zmm18,zmm26
  9fe44d:	62 c1 64 48 58 fc    	vaddps zmm23,zmm3,zmm12
  9fe453:	62 71 7c 48 28 eb    	vmovaps zmm13,zmm3
  9fe459:	62 81 44 48 5c d5    	vsubps zmm18,zmm7,zmm29
  9fe45f:	62 c1 7c 48 28 f6    	vmovaps zmm22,zmm14
  9fe465:	62 a2 35 40 ac f3    	vfnmadd213ps zmm22,zmm25,zmm19
  9fe46b:	62 91 64 20 58 c1    	vaddps ymm0,ymm19,ymm25
  9fe471:	62 41 7c 48 28 d6    	vmovaps zmm26,zmm14
  9fe477:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x400]
  9fe47e:	10 
  9fe47f:	62 62 2d 48 ac d2    	vfnmadd213ps zmm26,zmm10,zmm2
  9fe485:	62 41 6c 08 58 c2    	vaddps xmm24,xmm2,xmm10
  9fe48b:	62 c1 7c 48 28 de    	vmovaps zmm19,zmm14
  9fe491:	62 61 7c 28 28 2d 45 	vmovaps ymm29,YMMWORD PTR [rip+0xffffffffff678d45]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  9fe498:	8d 67 ff 
  9fe49b:	62 62 15 20 7f c0    	vpermt2ps ymm24,ymm29,ymm0
  9fe4a1:	62 81 04 48 58 cc    	vaddps zmm17,zmm15,zmm28
  9fe4a7:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x380]
  9fe4ae:	0e 
  9fe4af:	62 f2 25 48 ac 7c 24 	vfnmadd213ps zmm7,zmm11,ZMMWORD PTR [rsp+0xc0]
  9fe4b6:	03 
  9fe4b7:	62 b1 54 20 5c c4    	vsubps ymm0,ymm21,ymm20
  9fe4bd:	62 d1 7c 48 28 de    	vmovaps zmm3,zmm14
  9fe4c3:	62 92 75 40 ac db    	vfnmadd213ps zmm3,zmm17,zmm27
  9fe4c9:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x340]
  9fe4d0:	0d 
  9fe4d1:	62 c2 45 40 ac da    	vfnmadd213ps zmm19,zmm23,zmm10
  9fe4d7:	c5 d4 5c d4          	vsubps ymm2,ymm5,ymm4
  9fe4db:	62 41 7c 48 28 de    	vmovaps zmm27,zmm14
  9fe4e1:	62 62 7d 28 18 0d e9 	vbroadcastss ymm25,DWORD PTR [rip+0xffffffffff676de9]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  9fe4e8:	6d 67 ff 
  9fe4eb:	62 01 7c 28 59 f9    	vmulps ymm31,ymm0,ymm25
  9fe4f1:	62 61 7c 28 11 04 16 	vmovups YMMWORD PTR [rsi+rdx*1],ymm24
  9fe4f8:	62 91 74 28 5c ef    	vsubps ymm5,ymm1,ymm31
  9fe4fe:	62 91 6c 28 59 f1    	vmulps ymm6,ymm2,ymm25
  9fe504:	c4 c1 14 5c c4       	vsubps ymm0,ymm13,ymm12
  9fe509:	c5 40 58 de          	vaddps xmm11,xmm7,xmm6
  9fe50d:	62 e1 7c 48 28 ef    	vmovaps zmm21,zmm7
  9fe513:	62 91 7c 28 59 c1    	vmulps ymm0,ymm0,ymm25
  9fe519:	62 91 04 28 5c d4    	vsubps ymm2,ymm15,ymm28
  9fe51f:	c5 e4 58 f8          	vaddps ymm7,ymm3,ymm0
  9fe523:	62 72 15 20 7f dd    	vpermt2ps ymm11,ymm29,ymm5
  9fe529:	62 91 6c 28 59 d1    	vmulps ymm2,ymm2,ymm25
  9fe52f:	62 f1 64 00 5c ea    	vsubps xmm5,xmm19,xmm2
  9fe535:	62 f2 15 20 7f ef    	vpermt2ps ymm5,ymm29,ymm7
  9fe53b:	62 b1 7c 40 58 fa    	vaddps zmm7,zmm16,zmm18
  9fe541:	62 42 45 48 ac d8    	vfnmadd213ps zmm27,zmm7,zmm8
  9fe547:	c5 bc 58 ff          	vaddps ymm7,ymm8,ymm7
  9fe54b:	62 e1 7c 48 28 64 24 	vmovaps zmm20,ZMMWORD PTR [rsp+0x140]
  9fe552:	05 
  9fe553:	62 71 7c 48 28 7c 24 	vmovaps zmm15,ZMMWORD PTR [rsp+0x100]
  9fe55a:	04 
  9fe55b:	62 51 5c 40 58 cf    	vaddps zmm9,zmm20,zmm15
  9fe561:	c5 7c 11 5c 16 20    	vmovups YMMWORD PTR [rsi+rdx*1+0x20],ymm11
  9fe567:	62 12 35 48 ac f6    	vfnmadd213ps zmm14,zmm9,zmm30
  9fe56d:	62 51 0c 00 58 c1    	vaddps xmm8,xmm30,xmm9
  9fe573:	c5 fc 11 6c 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm5
  9fe579:	62 72 15 20 7f c7    	vpermt2ps ymm8,ymm29,ymm7
  9fe57f:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x180]
  9fe586:	06 
  9fe587:	c5 dc 5c ac 24 c0 01 	vsubps ymm5,ymm4,YMMWORD PTR [rsp+0x1c0]
  9fe58e:	00 00 
  9fe590:	62 91 54 28 59 e9    	vmulps ymm5,ymm5,ymm25
  9fe596:	c5 7c 11 44 16 60    	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm8
  9fe59c:	62 f1 4c 20 5c fd    	vsubps ymm7,ymm22,ymm5
  9fe5a2:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x200]
  9fe5a9:	08 
  9fe5aa:	c5 5c 5c 84 24 40 02 	vsubps ymm8,ymm4,YMMWORD PTR [rsp+0x240]
  9fe5b1:	00 00 
  9fe5b3:	62 11 3c 28 59 c1    	vmulps ymm8,ymm8,ymm25
  9fe5b9:	62 51 2c 00 58 c8    	vaddps xmm9,xmm26,xmm8
  9fe5bf:	62 72 15 20 7f cf    	vpermt2ps ymm9,ymm29,ymm7
  9fe5c5:	62 91 74 28 58 e7    	vaddps ymm4,ymm1,ymm31
  9fe5cb:	62 f1 54 00 5c f6    	vsubps xmm6,xmm21,xmm6
  9fe5d1:	c5 7c 11 8c 16 80 00 	vmovups YMMWORD PTR [rsi+rdx*1+0x80],ymm9
  9fe5d8:	00 00 
  9fe5da:	62 f2 15 20 7f f4    	vpermt2ps ymm6,ymm29,ymm4
  9fe5e0:	62 f1 74 20 58 64 24 	vaddps ymm4,ymm17,YMMWORD PTR [rsp+0x3c0]
  9fe5e7:	1e 
  9fe5e8:	62 b1 2c 08 58 ff    	vaddps xmm7,xmm10,xmm23
  9fe5ee:	c5 fc 11 b4 16 a0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xa0],ymm6
  9fe5f5:	00 00 
  9fe5f7:	62 f2 15 20 7f fc    	vpermt2ps ymm7,ymm29,ymm4
  9fe5fd:	62 d1 5c 20 5c cf    	vsubps ymm1,ymm20,ymm15
  9fe603:	62 91 74 28 59 c9    	vmulps ymm1,ymm1,ymm25
  9fe609:	c5 fc 11 bc 16 c0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xc0],ymm7
  9fe610:	00 00 
  9fe612:	62 f1 24 20 5c e1    	vsubps ymm4,ymm27,ymm1
  9fe618:	62 b1 7c 20 5c f2    	vsubps ymm6,ymm16,ymm18
  9fe61e:	62 91 4c 28 59 f1    	vmulps ymm6,ymm6,ymm25
  9fe624:	c5 88 58 fe          	vaddps xmm7,xmm14,xmm6
  9fe628:	62 f2 15 20 7f fc    	vpermt2ps ymm7,ymm29,ymm4
  9fe62e:	62 f1 4c 20 58 e5    	vaddps ymm4,ymm22,ymm5
  9fe634:	62 d1 2c 00 5c e8    	vsubps xmm5,xmm26,xmm8
  9fe63a:	c5 fc 11 bc 16 e0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xe0],ymm7
  9fe641:	00 00 
  9fe643:	62 f2 15 20 7f ec    	vpermt2ps ymm5,ymm29,ymm4
  9fe649:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x40]
  9fe650:	01 
  9fe651:	c5 dc 58 a4 24 80 00 	vaddps ymm4,ymm4,YMMWORD PTR [rsp+0x80]
  9fe658:	00 00 
  9fe65a:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0xc0]
  9fe661:	03 
  9fe662:	c5 c0 58 bc 24 80 02 	vaddps xmm7,xmm7,XMMWORD PTR [rsp+0x280]
  9fe669:	00 00 
  9fe66b:	c5 fc 11 ac 16 00 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x100],ymm5
  9fe672:	00 00 
  9fe674:	62 f2 15 20 7f fc    	vpermt2ps ymm7,ymm29,ymm4
  9fe67a:	c5 e4 5c c0          	vsubps ymm0,ymm3,ymm0
  9fe67e:	62 f1 64 00 58 d2    	vaddps xmm2,xmm19,xmm2
  9fe684:	c5 fc 11 bc 16 20 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x120],ymm7
  9fe68b:	00 00 
  9fe68d:	62 f2 15 20 7f d0    	vpermt2ps ymm2,ymm29,ymm0
  9fe693:	62 f1 24 20 58 c1    	vaddps ymm0,ymm27,ymm1
  9fe699:	c5 88 5c ce          	vsubps xmm1,xmm14,xmm6
  9fe69d:	c5 fc 11 94 16 40 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x140],ymm2
  9fe6a4:	00 00 
  9fe6a6:	62 f2 15 20 7f c8    	vpermt2ps ymm1,ymm29,ymm0
  9fe6ac:	c5 fc 11 8c 16 60 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x160],ymm1
  9fe6b3:	00 00 
  9fe6b5:	48 81 c2 80 01 00 00 	add    rdx,0x180
  9fe6bc:	48 39 d0             	cmp    rax,rdx
  9fe6bf:	0f 85 5b f5 ff ff    	jne    9fdc20 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x60>
  9fe6c5:	48 89 ec             	mov    rsp,rbp
  9fe6c8:	5d                   	pop    rbp
  9fe6c9:	c5 f8 77             	vzeroupper
  9fe6cc:	c3                   	ret
