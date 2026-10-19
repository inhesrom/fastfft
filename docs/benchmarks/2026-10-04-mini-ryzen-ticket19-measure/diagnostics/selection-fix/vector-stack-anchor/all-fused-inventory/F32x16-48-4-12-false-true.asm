
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000009fc940 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  9fc940:	48 81 ec 48 02 00 00 	sub    rsp,0x248
  9fc947:	62 f1 7c 48 28 05 2f 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6ca62f]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  9fc94e:	a6 6c ff 
  9fc951:	62 f1 7c 48 28 0d 65 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff6ca665]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  9fc958:	a6 6c ff 
  9fc95b:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  9fc95f:	62 f2 7d 48 7f d2    	vpermt2ps zmm2,zmm0,zmm2
  9fc965:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm2
  9fc96c:	04 
  9fc96d:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  9fc971:	62 f2 75 48 7f c0    	vpermt2ps zmm0,zmm1,zmm0
  9fc977:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm0
  9fc97e:	03 
  9fc97f:	48 c1 e2 07          	shl    rdx,0x7
  9fc983:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  9fc987:	31 d2                	xor    edx,edx
  9fc989:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  9fc990:	62 f1 7c 48 10 04 17 	vmovups zmm0,ZMMWORD PTR [rdi+rdx*1]
  9fc997:	c5 fc 10 4c 17 40    	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x40]
  9fc99d:	62 f1 7c 48 28 d0    	vmovaps zmm2,zmm0
  9fc9a3:	62 f1 7c 48 28 1d 93 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff691193]        # 8db40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1aff0>
  9fc9aa:	11 69 ff 
  9fc9ad:	62 f2 65 48 7f d1    	vpermt2ps zmm2,zmm3,zmm1
  9fc9b3:	62 71 7c 48 28 15 c3 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff6911c3]        # 8db80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b030>
  9fc9ba:	11 69 ff 
  9fc9bd:	62 f2 2d 48 7f c1    	vpermt2ps zmm0,zmm10,zmm1
  9fc9c3:	62 f1 7c 48 10 8c 17 	vmovups zmm1,ZMMWORD PTR [rdi+rdx*1+0x60]
  9fc9ca:	60 00 00 00 
  9fc9ce:	c5 fc 10 a4 17 a0 00 	vmovups ymm4,YMMWORD PTR [rdi+rdx*1+0xa0]
  9fc9d5:	00 00 
  9fc9d7:	62 f1 7c 48 28 e9    	vmovaps zmm5,zmm1
  9fc9dd:	62 f2 65 48 7f ec    	vpermt2ps zmm5,zmm3,zmm4
  9fc9e3:	62 f2 2d 48 7f cc    	vpermt2ps zmm1,zmm10,zmm4
  9fc9e9:	62 f1 7c 48 10 64 17 	vmovups zmm4,ZMMWORD PTR [rdi+rdx*1+0xc0]
  9fc9f0:	03 
  9fc9f1:	c5 fc 10 b4 17 00 01 	vmovups ymm6,YMMWORD PTR [rdi+rdx*1+0x100]
  9fc9f8:	00 00 
  9fc9fa:	62 f1 7c 48 28 fc    	vmovaps zmm7,zmm4
  9fca00:	62 f2 65 48 7f fe    	vpermt2ps zmm7,zmm3,zmm6
  9fca06:	62 f2 2d 48 7f e6    	vpermt2ps zmm4,zmm10,zmm6
  9fca0c:	62 f1 7c 48 10 b4 17 	vmovups zmm6,ZMMWORD PTR [rdi+rdx*1+0x120]
  9fca13:	20 01 00 00 
  9fca17:	c5 7c 10 84 17 60 01 	vmovups ymm8,YMMWORD PTR [rdi+rdx*1+0x160]
  9fca1e:	00 00 
  9fca20:	62 71 7c 48 28 ce    	vmovaps zmm9,zmm6
  9fca26:	62 52 65 48 7f c8    	vpermt2ps zmm9,zmm3,zmm8
  9fca2c:	62 d2 2d 48 7f f0    	vpermt2ps zmm6,zmm10,zmm8
  9fca32:	62 71 6c 48 58 c7    	vaddps zmm8,zmm2,zmm7
  9fca38:	62 51 54 48 58 d1    	vaddps zmm10,zmm5,zmm9
  9fca3e:	62 51 3c 48 58 da    	vaddps zmm11,zmm8,zmm10
  9fca44:	62 71 7c 48 58 e4    	vaddps zmm12,zmm0,zmm4
  9fca4a:	62 71 74 48 58 ee    	vaddps zmm13,zmm1,zmm6
  9fca50:	62 c1 1c 48 58 ed    	vaddps zmm21,zmm12,zmm13
  9fca56:	62 f1 6c 48 5c d7    	vsubps zmm2,zmm2,zmm7
  9fca5c:	62 f1 74 48 5c ce    	vsubps zmm1,zmm1,zmm6
  9fca62:	62 f1 6c 48 58 f1    	vaddps zmm6,zmm2,zmm1
  9fca68:	62 f1 7c 48 5c c4    	vsubps zmm0,zmm0,zmm4
  9fca6e:	62 f1 34 48 5c e5    	vsubps zmm4,zmm9,zmm5
  9fca74:	62 61 5c 48 58 f0    	vaddps zmm30,zmm4,zmm0
  9fca7a:	62 d1 3c 48 5c ea    	vsubps zmm5,zmm8,zmm10
  9fca80:	62 41 1c 48 5c dd    	vsubps zmm27,zmm12,zmm13
  9fca86:	62 f1 6c 48 5c c9    	vsubps zmm1,zmm2,zmm1
  9fca8c:	62 61 7c 48 5c fc    	vsubps zmm31,zmm0,zmm4
  9fca92:	62 d1 7c 48 28 c3    	vmovaps zmm0,zmm11
  9fca98:	62 71 7c 48 28 3d de 	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff6ca4de]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  9fca9f:	a4 6c ff 
  9fcaa2:	c4 41 08 57 f6       	vxorps xmm14,xmm14,xmm14
  9fcaa7:	62 d2 05 48 7f c6    	vpermt2ps zmm0,zmm15,zmm14
  9fcaad:	62 e1 7c 48 28 0d 09 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff6ca509]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  9fcab4:	a5 6c ff 
  9fcab7:	62 52 75 40 7f de    	vpermt2ps zmm11,zmm17,zmm14
  9fcabd:	62 f1 7c 48 28 d6    	vmovaps zmm2,zmm6
  9fcac3:	62 d2 05 48 7f d6    	vpermt2ps zmm2,zmm15,zmm14
  9fcac9:	62 d2 75 40 7f f6    	vpermt2ps zmm6,zmm17,zmm14
  9fcacf:	62 f1 7c 48 28 e5    	vmovaps zmm4,zmm5
  9fcad5:	62 d2 05 48 7f e6    	vpermt2ps zmm4,zmm15,zmm14
  9fcadb:	62 d2 75 40 7f ee    	vpermt2ps zmm5,zmm17,zmm14
  9fcae1:	62 f1 7c 48 28 f9    	vmovaps zmm7,zmm1
  9fcae7:	62 d2 05 48 7f fe    	vpermt2ps zmm7,zmm15,zmm14
  9fcaed:	62 d2 75 40 7f ce    	vpermt2ps zmm1,zmm17,zmm14
  9fcaf3:	62 71 7c 48 28 c0    	vmovaps zmm8,zmm0
  9fcaf9:	62 e1 7c 48 10 44 24 	vmovups zmm16,ZMMWORD PTR [rsp+0x100]
  9fcb00:	04 
  9fcb01:	62 61 7c 48 28 2d f5 	vmovaps zmm29,ZMMWORD PTR [rip+0xffffffffff6ca3f5]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  9fcb08:	a3 6c ff 
  9fcb0b:	62 32 15 40 7f c0    	vpermt2ps zmm8,zmm29,zmm16
  9fcb11:	62 71 7c 48 28 2d 25 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff6ca425]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  9fcb18:	a4 6c ff 
  9fcb1b:	62 b2 15 48 7f c0    	vpermt2ps zmm0,zmm13,zmm16
  9fcb21:	62 71 7c 48 28 ca    	vmovaps zmm9,zmm2
  9fcb27:	62 32 15 40 7f c8    	vpermt2ps zmm9,zmm29,zmm16
  9fcb2d:	62 b2 15 48 7f d0    	vpermt2ps zmm2,zmm13,zmm16
  9fcb33:	62 71 7c 48 28 d4    	vmovaps zmm10,zmm4
  9fcb39:	62 32 15 40 7f d0    	vpermt2ps zmm10,zmm29,zmm16
  9fcb3f:	62 b2 15 48 7f e0    	vpermt2ps zmm4,zmm13,zmm16
  9fcb45:	62 71 7c 48 28 e7    	vmovaps zmm12,zmm7
  9fcb4b:	62 32 15 40 7f e0    	vpermt2ps zmm12,zmm29,zmm16
  9fcb51:	62 b2 15 48 7f f8    	vpermt2ps zmm7,zmm13,zmm16
  9fcb57:	62 61 7c 48 10 54 24 	vmovups zmm26,ZMMWORD PTR [rsp+0xc0]
  9fcb5e:	03 
  9fcb5f:	62 12 15 40 7f da    	vpermt2ps zmm11,zmm29,zmm26
  9fcb65:	62 92 15 40 7f f2    	vpermt2ps zmm6,zmm29,zmm26
  9fcb6b:	62 92 15 40 7f ea    	vpermt2ps zmm5,zmm29,zmm26
  9fcb71:	62 92 15 40 7f ca    	vpermt2ps zmm1,zmm29,zmm26
  9fcb77:	62 c1 bd 48 14 d2    	vunpcklpd zmm18,zmm8,zmm10
  9fcb7d:	62 c1 bd 48 15 f2    	vunpckhpd zmm22,zmm8,zmm10
  9fcb83:	62 51 b5 48 14 c4    	vunpcklpd zmm8,zmm9,zmm12
  9fcb89:	62 51 b5 48 15 cc    	vunpckhpd zmm9,zmm9,zmm12
  9fcb8f:	62 71 fd 48 14 d4    	vunpcklpd zmm10,zmm0,zmm4
  9fcb95:	62 e1 fd 48 15 dc    	vunpckhpd zmm19,zmm0,zmm4
  9fcb9b:	62 f1 ed 48 14 c7    	vunpcklpd zmm0,zmm2,zmm7
  9fcba1:	62 f1 ed 48 15 d7    	vunpckhpd zmm2,zmm2,zmm7
  9fcba7:	62 e1 a5 48 14 fd    	vunpcklpd zmm23,zmm11,zmm5
  9fcbad:	62 f1 a5 48 15 fd    	vunpckhpd zmm7,zmm11,zmm5
  9fcbb3:	62 f1 cd 48 14 e1    	vunpcklpd zmm4,zmm6,zmm1
  9fcbb9:	62 f1 cd 48 15 c9    	vunpckhpd zmm1,zmm6,zmm1
  9fcbbf:	62 b1 7c 48 28 da    	vmovaps zmm3,zmm18
  9fcbc5:	62 71 7c 48 28 25 31 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff6ca231]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  9fcbcc:	a2 6c ff 
  9fcbcf:	62 d2 1d 48 7f d8    	vpermt2ps zmm3,zmm12,zmm8
  9fcbd5:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm3
  9fcbdc:	01 
  9fcbdd:	62 f1 7c 48 28 1d 59 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff6ca259]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  9fcbe4:	a2 6c ff 
  9fcbe7:	62 c2 65 48 7f d0    	vpermt2ps zmm18,zmm3,zmm8
  9fcbed:	62 b1 7c 48 28 ee    	vmovaps zmm5,zmm22
  9fcbf3:	62 d2 1d 48 7f e9    	vpermt2ps zmm5,zmm12,zmm9
  9fcbf9:	62 f1 7c 48 11 2c 24 	vmovups ZMMWORD PTR [rsp],zmm5
  9fcc00:	62 c2 65 48 7f f1    	vpermt2ps zmm22,zmm3,zmm9
  9fcc06:	62 41 7c 48 28 c2    	vmovaps zmm24,zmm10
  9fcc0c:	62 62 1d 48 7f c0    	vpermt2ps zmm24,zmm12,zmm0
  9fcc12:	62 72 65 48 7f d0    	vpermt2ps zmm10,zmm3,zmm0
  9fcc18:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm10
  9fcc1f:	02 
  9fcc20:	62 21 7c 48 28 e3    	vmovaps zmm28,zmm19
  9fcc26:	62 62 1d 48 7f e2    	vpermt2ps zmm28,zmm12,zmm2
  9fcc2c:	62 e2 65 48 7f da    	vpermt2ps zmm19,zmm3,zmm2
  9fcc32:	62 a1 7c 48 28 e7    	vmovaps zmm20,zmm23
  9fcc38:	62 e2 1d 48 7f e4    	vpermt2ps zmm20,zmm12,zmm4
  9fcc3e:	62 e2 65 48 7f fc    	vpermt2ps zmm23,zmm3,zmm4
  9fcc44:	62 61 7c 48 28 cf    	vmovaps zmm25,zmm7
  9fcc4a:	62 62 1d 48 7f c9    	vpermt2ps zmm25,zmm12,zmm1
  9fcc50:	62 f2 65 48 7f f9    	vpermt2ps zmm7,zmm3,zmm1
  9fcc56:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm7
  9fcc5d:	ff 
  9fcc5e:	62 b1 7c 48 28 c5    	vmovaps zmm0,zmm21
  9fcc64:	62 d2 05 48 7f c6    	vpermt2ps zmm0,zmm15,zmm14
  9fcc6a:	62 c2 75 40 7f ee    	vpermt2ps zmm21,zmm17,zmm14
  9fcc70:	62 91 7c 48 28 ce    	vmovaps zmm1,zmm30
  9fcc76:	62 d2 05 48 7f ce    	vpermt2ps zmm1,zmm15,zmm14
  9fcc7c:	62 42 75 40 7f f6    	vpermt2ps zmm30,zmm17,zmm14
  9fcc82:	62 91 7c 48 28 d3    	vmovaps zmm2,zmm27
  9fcc88:	62 d2 05 48 7f d6    	vpermt2ps zmm2,zmm15,zmm14
  9fcc8e:	62 42 75 40 7f de    	vpermt2ps zmm27,zmm17,zmm14
  9fcc94:	62 91 7c 48 28 e7    	vmovaps zmm4,zmm31
  9fcc9a:	62 d2 05 48 7f e6    	vpermt2ps zmm4,zmm15,zmm14
  9fcca0:	62 42 75 40 7f fe    	vpermt2ps zmm31,zmm17,zmm14
  9fcca6:	62 f1 7c 48 28 e8    	vmovaps zmm5,zmm0
  9fccac:	62 b2 15 40 7f e8    	vpermt2ps zmm5,zmm29,zmm16
  9fccb2:	62 b2 15 48 7f c0    	vpermt2ps zmm0,zmm13,zmm16
  9fccb8:	62 f1 7c 48 28 f1    	vmovaps zmm6,zmm1
  9fccbe:	62 b2 15 40 7f f0    	vpermt2ps zmm6,zmm29,zmm16
  9fccc4:	62 b2 15 48 7f c8    	vpermt2ps zmm1,zmm13,zmm16
  9fccca:	62 f1 7c 48 28 fa    	vmovaps zmm7,zmm2
  9fccd0:	62 b2 15 40 7f f8    	vpermt2ps zmm7,zmm29,zmm16
  9fccd6:	62 b2 15 48 7f d0    	vpermt2ps zmm2,zmm13,zmm16
  9fccdc:	62 71 7c 48 28 c4    	vmovaps zmm8,zmm4
  9fcce2:	62 32 15 40 7f c0    	vpermt2ps zmm8,zmm29,zmm16
  9fcce8:	62 b2 15 48 7f e0    	vpermt2ps zmm4,zmm13,zmm16
  9fccee:	62 82 15 40 7f ea    	vpermt2ps zmm21,zmm29,zmm26
  9fccf4:	62 02 15 40 7f f2    	vpermt2ps zmm30,zmm29,zmm26
  9fccfa:	62 02 15 40 7f da    	vpermt2ps zmm27,zmm29,zmm26
  9fcd00:	62 02 15 40 7f fa    	vpermt2ps zmm31,zmm29,zmm26
  9fcd06:	62 61 d5 48 14 ef    	vunpcklpd zmm29,zmm5,zmm7
  9fcd0c:	62 f1 d5 48 15 ff    	vunpckhpd zmm7,zmm5,zmm7
  9fcd12:	62 d1 cd 48 14 e8    	vunpcklpd zmm5,zmm6,zmm8
  9fcd18:	62 d1 cd 48 15 f0    	vunpckhpd zmm6,zmm6,zmm8
  9fcd1e:	62 71 fd 48 14 fa    	vunpcklpd zmm15,zmm0,zmm2
  9fcd24:	62 71 fd 48 15 ca    	vunpckhpd zmm9,zmm0,zmm2
  9fcd2a:	62 f1 f5 48 14 c4    	vunpcklpd zmm0,zmm1,zmm4
  9fcd30:	62 f1 f5 48 15 cc    	vunpckhpd zmm1,zmm1,zmm4
  9fcd36:	62 11 d5 40 14 db    	vunpcklpd zmm11,zmm21,zmm27
  9fcd3c:	62 91 d5 40 15 d3    	vunpckhpd zmm2,zmm21,zmm27
  9fcd42:	62 91 8d 40 14 e7    	vunpcklpd zmm4,zmm30,zmm31
  9fcd48:	62 11 8d 40 15 d7    	vunpckhpd zmm10,zmm30,zmm31
  9fcd4e:	62 11 7c 48 28 c5    	vmovaps zmm8,zmm29
  9fcd54:	62 72 1d 48 7f c5    	vpermt2ps zmm8,zmm12,zmm5
  9fcd5a:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm8
  9fcd61:	fe 
  9fcd62:	62 62 65 48 7f ed    	vpermt2ps zmm29,zmm3,zmm5
  9fcd68:	62 61 7c 48 28 f7    	vmovaps zmm30,zmm7
  9fcd6e:	62 62 1d 48 7f f6    	vpermt2ps zmm30,zmm12,zmm6
  9fcd74:	62 f2 65 48 7f fe    	vpermt2ps zmm7,zmm3,zmm6
  9fcd7a:	62 41 7c 48 28 d7    	vmovaps zmm26,zmm15
  9fcd80:	62 62 1d 48 7f d0    	vpermt2ps zmm26,zmm12,zmm0
  9fcd86:	62 72 65 48 7f f8    	vpermt2ps zmm15,zmm3,zmm0
  9fcd8c:	62 d1 7c 48 28 e9    	vmovaps zmm5,zmm9
  9fcd92:	62 f2 1d 48 7f e9    	vpermt2ps zmm5,zmm12,zmm1
  9fcd98:	62 72 65 48 7f c9    	vpermt2ps zmm9,zmm3,zmm1
  9fcd9e:	62 51 7c 48 28 c3    	vmovaps zmm8,zmm11
  9fcda4:	62 72 1d 48 7f c4    	vpermt2ps zmm8,zmm12,zmm4
  9fcdaa:	62 72 65 48 7f dc    	vpermt2ps zmm11,zmm3,zmm4
  9fcdb0:	62 61 7c 48 28 da    	vmovaps zmm27,zmm2
  9fcdb6:	62 42 1d 48 7f da    	vpermt2ps zmm27,zmm12,zmm10
  9fcdbc:	62 d2 65 48 7f d2    	vpermt2ps zmm2,zmm3,zmm10
  9fcdc2:	62 71 7c 48 10 51 02 	vmovups zmm10,ZMMWORD PTR [rcx+0x80]
  9fcdc9:	62 71 7c 48 10 69 03 	vmovups zmm13,ZMMWORD PTR [rcx+0xc0]
  9fcdd0:	62 f1 7c 48 10 49 04 	vmovups zmm1,ZMMWORD PTR [rcx+0x100]
  9fcdd7:	62 f1 7c 48 10 59 05 	vmovups zmm3,ZMMWORD PTR [rcx+0x140]
  9fcdde:	62 f1 7c 48 10 61 0c 	vmovups zmm4,ZMMWORD PTR [rcx+0x300]
  9fcde5:	62 f1 7c 48 10 41 0d 	vmovups zmm0,ZMMWORD PTR [rcx+0x340]
  9fcdec:	62 61 1c 40 59 fc    	vmulps zmm31,zmm28,zmm4
  9fcdf2:	62 62 55 48 bc f8    	vfnmadd231ps zmm31,zmm5,zmm0
  9fcdf8:	62 71 54 48 59 f4    	vmulps zmm14,zmm5,zmm4
  9fcdfe:	62 f1 7c 48 10 61 06 	vmovups zmm4,ZMMWORD PTR [rcx+0x180]
  9fce05:	62 12 7d 48 b8 f4    	vfmadd231ps zmm14,zmm0,zmm28
  9fce0b:	62 f1 7c 48 10 41 07 	vmovups zmm0,ZMMWORD PTR [rcx+0x1c0]
  9fce12:	62 61 4c 40 59 e4    	vmulps zmm28,zmm22,zmm4
  9fce18:	62 62 45 48 bc e0    	vfnmadd231ps zmm28,zmm7,zmm0
  9fce1e:	62 f1 44 48 59 ec    	vmulps zmm5,zmm7,zmm4
  9fce24:	62 f1 7c 48 10 61 12 	vmovups zmm4,ZMMWORD PTR [rcx+0x480]
  9fce2b:	62 b2 7d 48 b8 ee    	vfmadd231ps zmm5,zmm0,zmm22
  9fce31:	62 f1 7c 48 10 41 13 	vmovups zmm0,ZMMWORD PTR [rcx+0x4c0]
  9fce38:	62 f1 44 40 59 fc    	vmulps zmm7,zmm23,zmm4
  9fce3e:	62 f2 25 48 bc f8    	vfnmadd231ps zmm7,zmm11,zmm0
  9fce44:	62 71 24 48 59 dc    	vmulps zmm11,zmm11,zmm4
  9fce4a:	62 e1 7c 48 10 71 08 	vmovups zmm22,ZMMWORD PTR [rcx+0x200]
  9fce51:	62 32 7d 48 b8 df    	vfmadd231ps zmm11,zmm0,zmm23
  9fce57:	62 f1 7c 48 10 41 09 	vmovups zmm0,ZMMWORD PTR [rcx+0x240]
  9fce5e:	62 b1 3c 40 59 e6    	vmulps zmm4,zmm24,zmm22
  9fce64:	62 f2 2d 40 bc e0    	vfnmadd231ps zmm4,zmm26,zmm0
  9fce6a:	62 a1 2c 40 59 f6    	vmulps zmm22,zmm26,zmm22
  9fce70:	62 e1 7c 48 10 79 14 	vmovups zmm23,ZMMWORD PTR [rcx+0x500]
  9fce77:	62 82 7d 48 b8 f0    	vfmadd231ps zmm22,zmm0,zmm24
  9fce7d:	62 f1 7c 48 10 41 15 	vmovups zmm0,ZMMWORD PTR [rcx+0x540]
  9fce84:	62 21 34 40 59 d7    	vmulps zmm26,zmm25,zmm23
  9fce8a:	62 62 25 40 bc d0    	vfnmadd231ps zmm26,zmm27,zmm0
  9fce90:	62 a1 24 40 59 ff    	vmulps zmm23,zmm27,zmm23
  9fce96:	62 61 7c 48 10 59 0e 	vmovups zmm27,ZMMWORD PTR [rcx+0x380]
  9fce9d:	62 82 7d 48 b8 f9    	vfmadd231ps zmm23,zmm0,zmm25
  9fcea3:	62 f1 7c 48 10 41 0f 	vmovups zmm0,ZMMWORD PTR [rcx+0x3c0]
  9fceaa:	62 01 64 40 59 c3    	vmulps zmm24,zmm19,zmm27
  9fceb0:	62 62 35 48 bc c0    	vfnmadd231ps zmm24,zmm9,zmm0
  9fceb6:	62 11 34 48 59 cb    	vmulps zmm9,zmm9,zmm27
  9fcebc:	62 61 7c 48 10 49 0a 	vmovups zmm25,ZMMWORD PTR [rcx+0x280]
  9fcec3:	62 32 7d 48 b8 cb    	vfmadd231ps zmm9,zmm0,zmm19
  9fcec9:	62 f1 7c 48 10 41 0b 	vmovups zmm0,ZMMWORD PTR [rcx+0x2c0]
  9fced0:	62 41 6c 40 59 da    	vmulps zmm27,zmm18,zmm10
  9fced6:	62 42 15 40 bc dd    	vfnmadd231ps zmm27,zmm29,zmm13
  9fcedc:	62 51 14 40 59 d2    	vmulps zmm10,zmm29,zmm10
  9fcee2:	62 e1 7c 48 10 59 10 	vmovups zmm19,ZMMWORD PTR [rcx+0x400]
  9fcee9:	62 32 15 48 b8 d2    	vfmadd231ps zmm10,zmm13,zmm18
  9fceef:	62 71 7c 48 10 69 11 	vmovups zmm13,ZMMWORD PTR [rcx+0x440]
  9fcef6:	62 a1 5c 40 59 cb    	vmulps zmm17,zmm20,zmm19
  9fcefc:	62 c2 3d 48 bc cd    	vfnmadd231ps zmm17,zmm8,zmm13
  9fcf02:	62 31 3c 48 59 c3    	vmulps zmm8,zmm8,zmm19
  9fcf08:	62 e1 7c 48 10 59 16 	vmovups zmm19,ZMMWORD PTR [rcx+0x580]
  9fcf0f:	62 32 15 48 b8 c4    	vfmadd231ps zmm8,zmm13,zmm20
  9fcf15:	62 71 7c 48 10 69 17 	vmovups zmm13,ZMMWORD PTR [rcx+0x5c0]
  9fcf1c:	62 f1 7c 48 10 34 24 	vmovups zmm6,ZMMWORD PTR [rsp]
  9fcf23:	62 e1 4c 48 59 e1    	vmulps zmm20,zmm6,zmm1
  9fcf29:	62 e2 0d 40 bc e3    	vfnmadd231ps zmm20,zmm30,zmm3
  9fcf2f:	62 f1 0c 40 59 c9    	vmulps zmm1,zmm30,zmm1
  9fcf35:	62 e1 7c 48 10 44 24 	vmovups zmm16,ZMMWORD PTR [rsp+0x40]
  9fcf3c:	01 
  9fcf3d:	62 11 7c 40 58 e7    	vaddps zmm12,zmm16,zmm31
  9fcf43:	62 71 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm12
  9fcf4a:	05 
  9fcf4b:	62 f2 65 48 b8 ce    	vfmadd231ps zmm1,zmm3,zmm6
  9fcf51:	62 61 1c 40 58 ef    	vaddps zmm29,zmm28,zmm7
  9fcf57:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp-0x40]
  9fcf5e:	ff 
  9fcf5f:	62 a1 64 48 59 d3    	vmulps zmm18,zmm3,zmm19
  9fcf65:	62 c2 6d 48 bc d5    	vfnmadd231ps zmm18,zmm2,zmm13
  9fcf6b:	62 a1 6c 48 59 db    	vmulps zmm19,zmm2,zmm19
  9fcf71:	62 91 1c 48 58 d5    	vaddps zmm2,zmm12,zmm29
  9fcf77:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm2
  9fcf7e:	06 
  9fcf7f:	62 e2 15 48 b8 db    	vfmadd231ps zmm19,zmm13,zmm3
  9fcf85:	62 11 5c 48 58 ea    	vaddps zmm13,zmm4,zmm26
  9fcf8b:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x80]
  9fcf92:	02 
  9fcf93:	62 01 6c 48 59 f1    	vmulps zmm30,zmm2,zmm25
  9fcf99:	62 62 05 48 bc f0    	vfnmadd231ps zmm30,zmm15,zmm0
  9fcf9f:	62 11 04 48 59 e1    	vmulps zmm12,zmm15,zmm25
  9fcfa5:	62 01 3c 40 58 cb    	vaddps zmm25,zmm24,zmm27
  9fcfab:	62 72 7d 48 b8 e2    	vfmadd231ps zmm12,zmm0,zmm2
  9fcfb1:	62 91 14 48 58 d1    	vaddps zmm2,zmm13,zmm25
  9fcfb7:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm2
  9fcfbe:	08 
  9fcfbf:	62 b1 74 40 58 c4    	vaddps zmm0,zmm17,zmm20
  9fcfc5:	62 01 5c 48 5c d2    	vsubps zmm26,zmm4,zmm26
  9fcfcb:	62 51 34 48 58 fa    	vaddps zmm15,zmm9,zmm10
  9fcfd1:	62 c1 34 48 5c ea    	vsubps zmm21,zmm9,zmm10
  9fcfd7:	62 11 6c 40 58 ce    	vaddps zmm9,zmm18,zmm30
  9fcfdd:	62 a1 74 40 5c cc    	vsubps zmm17,zmm17,zmm20
  9fcfe3:	62 c1 64 40 58 e4    	vaddps zmm20,zmm19,zmm12
  9fcfe9:	62 d1 64 40 5c f4    	vsubps zmm6,zmm19,zmm12
  9fcfef:	62 d1 7c 48 58 e1    	vaddps zmm4,zmm0,zmm9
  9fcff5:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm4
  9fcffc:	ff 
  9fcffd:	62 01 7c 40 5c ff    	vsubps zmm31,zmm16,zmm31
  9fd003:	62 d1 54 48 58 db    	vaddps zmm3,zmm5,zmm11
  9fd009:	62 51 54 48 5c db    	vsubps zmm11,zmm5,zmm11
  9fd00f:	62 a1 4c 40 58 c7    	vaddps zmm16,zmm22,zmm23
  9fd015:	62 a1 4c 40 5c ff    	vsubps zmm23,zmm22,zmm23
  9fd01b:	62 71 6c 48 58 e4    	vaddps zmm12,zmm2,zmm4
  9fd021:	62 91 24 40 5c d0    	vsubps zmm2,zmm27,zmm24
  9fd027:	62 61 3c 48 58 c1    	vaddps zmm24,zmm8,zmm1
  9fd02d:	62 f1 3c 48 5c e1    	vsubps zmm4,zmm8,zmm1
  9fd033:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp-0x80]
  9fd03a:	fe 
  9fd03b:	62 71 0c 48 58 c5    	vaddps zmm8,zmm14,zmm5
  9fd041:	62 b1 0c 40 5c ca    	vsubps zmm1,zmm30,zmm18
  9fd047:	62 41 64 48 58 d8    	vaddps zmm27,zmm3,zmm8
  9fd04d:	62 41 54 48 5c f6    	vsubps zmm30,zmm5,zmm14
  9fd053:	62 d1 7c 40 58 ef    	vaddps zmm5,zmm16,zmm15
  9fd059:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm5
  9fd060:	07 
  9fd061:	62 91 44 48 5c fc    	vsubps zmm7,zmm7,zmm28
  9fd067:	62 31 3c 40 58 d4    	vaddps zmm10,zmm24,zmm20
  9fd06d:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm10
  9fd074:	fe 
  9fd075:	62 81 14 48 5c f1    	vsubps zmm22,zmm13,zmm25
  9fd07b:	62 41 54 48 58 e2    	vaddps zmm28,zmm5,zmm10
  9fd081:	62 c1 7c 48 5c d1    	vsubps zmm18,zmm0,zmm9
  9fd087:	62 21 2c 40 58 cd    	vaddps zmm25,zmm26,zmm21
  9fd08d:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x140]
  9fd094:	05 
  9fd095:	62 91 7c 48 5c ed    	vsubps zmm5,zmm0,zmm29
  9fd09b:	62 71 74 40 58 d6    	vaddps zmm10,zmm17,zmm6
  9fd0a1:	62 51 7c 40 5c ef    	vsubps zmm13,zmm16,zmm15
  9fd0a7:	62 d1 34 40 58 c2    	vaddps zmm0,zmm25,zmm10
  9fd0ad:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm0
  9fd0b4:	01 
  9fd0b5:	62 21 3c 40 5c ec    	vsubps zmm29,zmm24,zmm20
  9fd0bb:	62 51 04 40 58 f3    	vaddps zmm14,zmm31,zmm11
  9fd0c1:	62 71 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm14
  9fd0c8:	02 
  9fd0c9:	62 61 3c 48 5c c3    	vsubps zmm24,zmm8,zmm3
  9fd0cf:	62 72 7d 48 18 0d 87 	vbroadcastss zmm9,DWORD PTR [rip+0xffffffffff678387]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  9fd0d6:	83 67 ff 
  9fd0d9:	62 51 7c 48 28 f9    	vmovaps zmm15,zmm9
  9fd0df:	62 52 7d 48 ac fe    	vfnmadd213ps zmm15,zmm0,zmm14
  9fd0e5:	62 51 04 40 5c f3    	vsubps zmm14,zmm31,zmm11
  9fd0eb:	62 f1 44 40 58 da    	vaddps zmm3,zmm23,zmm2
  9fd0f1:	62 a1 2c 40 5c e5    	vsubps zmm20,zmm26,zmm21
  9fd0f7:	62 f1 5c 48 58 c1    	vaddps zmm0,zmm4,zmm1
  9fd0fd:	62 e1 74 40 5c ce    	vsubps zmm17,zmm17,zmm6
  9fd103:	62 91 44 48 58 f6    	vaddps zmm6,zmm7,zmm30
  9fd109:	62 f1 7c 48 11 34 24 	vmovups ZMMWORD PTR [rsp],zmm6
  9fd110:	62 61 0c 40 5c f7    	vsubps zmm30,zmm30,zmm7
  9fd116:	62 e1 64 48 58 e8    	vaddps zmm21,zmm3,zmm0
  9fd11c:	62 e1 44 40 5c da    	vsubps zmm19,zmm23,zmm2
  9fd122:	62 51 7c 48 28 c1    	vmovaps zmm8,zmm9
  9fd128:	62 72 55 40 ac c6    	vfnmadd213ps zmm8,zmm21,zmm6
  9fd12e:	62 e1 5c 48 5c c1    	vsubps zmm16,zmm4,zmm1
  9fd134:	62 c1 7c 48 28 f9    	vmovaps zmm23,zmm9
  9fd13a:	62 82 1d 40 ac fb    	vfnmadd213ps zmm23,zmm28,zmm27
  9fd140:	62 91 24 20 58 d4    	vaddps ymm2,ymm27,ymm28
  9fd146:	62 41 7c 48 28 d1    	vmovaps zmm26,zmm9
  9fd14c:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x180]
  9fd153:	06 
  9fd154:	62 62 1d 48 ac d1    	vfnmadd213ps zmm26,zmm12,zmm1
  9fd15a:	c5 98 58 e1          	vaddps xmm4,xmm12,xmm1
  9fd15e:	62 b1 4c 40 58 ca    	vaddps zmm1,zmm22,zmm18
  9fd164:	c5 fc 28 3d 74 a0 67 	vmovaps ymm7,YMMWORD PTR [rip+0xffffffffff67a074]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  9fd16b:	ff 
  9fd16c:	62 f2 45 28 7f e2    	vpermt2ps ymm4,ymm7,ymm2
  9fd172:	62 51 7c 48 28 d9    	vmovaps zmm11,zmm9
  9fd178:	62 72 75 48 ac dd    	vfnmadd213ps zmm11,zmm1,zmm5
  9fd17e:	62 61 7c 48 28 fd    	vmovaps zmm31,zmm5
  9fd184:	c5 fc 11 24 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm4
  9fd189:	62 01 14 48 58 e5    	vaddps zmm28,zmm13,zmm29
  9fd18f:	62 d1 34 20 5c d2    	vsubps ymm2,ymm25,ymm10
  9fd195:	c4 e2 7d 18 35 36 81 	vbroadcastss ymm6,DWORD PTR [rip+0xffffffffff678136]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  9fd19c:	67 ff 
  9fd19e:	c5 ec 59 e6          	vmulps ymm4,ymm2,ymm6
  9fd1a2:	c5 bc 5c d4          	vsubps ymm2,ymm8,ymm4
  9fd1a6:	c5 e4 5c c0          	vsubps ymm0,ymm3,ymm0
  9fd1aa:	c5 fc 59 c6          	vmulps ymm0,ymm0,ymm6
  9fd1ae:	c5 80 58 d8          	vaddps xmm3,xmm15,xmm0
  9fd1b2:	62 f2 45 28 7f da    	vpermt2ps ymm3,ymm7,ymm2
  9fd1b8:	62 41 7c 48 28 c9    	vmovaps zmm25,zmm9
  9fd1be:	62 02 1d 40 ac c8    	vfnmadd213ps zmm25,zmm28,zmm24
  9fd1c4:	c5 fc 11 5c 16 20    	vmovups YMMWORD PTR [rsi+rdx*1+0x20],ymm3
  9fd1ca:	62 b1 5c 40 58 d9    	vaddps zmm3,zmm20,zmm17
  9fd1d0:	62 b1 4c 20 5c d2    	vsubps ymm2,ymm22,ymm18
  9fd1d6:	c5 ec 59 d6          	vmulps ymm2,ymm2,ymm6
  9fd1da:	62 71 34 20 58 e2    	vaddps ymm12,ymm25,ymm2
  9fd1e0:	62 91 14 28 5c ed    	vsubps ymm5,ymm13,ymm29
  9fd1e6:	c5 d4 59 ee          	vmulps ymm5,ymm5,ymm6
  9fd1ea:	c5 20 5c ed          	vsubps xmm13,xmm11,xmm5
  9fd1ee:	62 52 45 28 7f ec    	vpermt2ps ymm13,ymm7,ymm12
  9fd1f4:	62 a1 64 40 58 d0    	vaddps zmm18,zmm19,zmm16
  9fd1fa:	c5 7c 11 6c 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm13
  9fd200:	62 51 7c 48 28 e1    	vmovaps zmm12,zmm9
  9fd206:	62 12 6d 40 ac e6    	vfnmadd213ps zmm12,zmm18,zmm30
  9fd20c:	62 31 0c 20 58 ea    	vaddps ymm13,ymm30,ymm18
  9fd212:	62 41 7c 48 28 d9    	vmovaps zmm27,zmm9
  9fd218:	62 42 65 48 ac de    	vfnmadd213ps zmm27,zmm3,zmm14
  9fd21e:	c5 88 58 db          	vaddps xmm3,xmm14,xmm3
  9fd222:	62 d2 45 28 7f dd    	vpermt2ps ymm3,ymm7,ymm13
  9fd228:	c5 fc 11 5c 16 60    	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm3
  9fd22e:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x200]
  9fd235:	08 
  9fd236:	c5 e4 5c 5c 24 c0    	vsubps ymm3,ymm3,YMMWORD PTR [rsp-0x40]
  9fd23c:	c5 e4 59 de          	vmulps ymm3,ymm3,ymm6
  9fd240:	62 71 44 20 5c eb    	vsubps ymm13,ymm23,ymm3
  9fd246:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp+0x1c0]
  9fd24d:	07 
  9fd24e:	c5 34 5c 74 24 80    	vsubps ymm14,ymm9,YMMWORD PTR [rsp-0x80]
  9fd254:	c5 0c 59 f6          	vmulps ymm14,ymm14,ymm6
  9fd258:	62 c1 2c 00 58 d6    	vaddps xmm18,xmm26,xmm14
  9fd25e:	62 c2 45 28 7f d5    	vpermt2ps ymm18,ymm7,ymm13
  9fd264:	62 e1 7c 28 11 54 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x80],ymm18
  9fd26b:	04 
  9fd26c:	c5 bc 58 e4          	vaddps ymm4,ymm8,ymm4
  9fd270:	c5 80 5c c0          	vsubps xmm0,xmm15,xmm0
  9fd274:	62 f2 45 28 7f c4    	vpermt2ps ymm0,ymm7,ymm4
  9fd27a:	c5 fc 11 84 16 a0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xa0],ymm0
  9fd281:	00 00 
  9fd283:	62 91 3c 20 58 c4    	vaddps ymm0,ymm24,ymm28
  9fd289:	62 f1 04 00 58 e1    	vaddps xmm4,xmm31,xmm1
  9fd28f:	62 f2 45 28 7f e0    	vpermt2ps ymm4,ymm7,ymm0
  9fd295:	c5 fc 11 a4 16 c0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xc0],ymm4
  9fd29c:	00 00 
  9fd29e:	62 b1 5c 20 5c c1    	vsubps ymm0,ymm20,ymm17
  9fd2a4:	c5 fc 59 c6          	vmulps ymm0,ymm0,ymm6
  9fd2a8:	c5 9c 5c e0          	vsubps ymm4,ymm12,ymm0
  9fd2ac:	62 b1 64 20 5c c8    	vsubps ymm1,ymm19,ymm16
  9fd2b2:	c5 f4 59 ce          	vmulps ymm1,ymm1,ymm6
  9fd2b6:	62 f1 24 00 58 f1    	vaddps xmm6,xmm27,xmm1
  9fd2bc:	62 f2 45 28 7f f4    	vpermt2ps ymm6,ymm7,ymm4
  9fd2c2:	c5 fc 11 b4 16 e0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xe0],ymm6
  9fd2c9:	00 00 
  9fd2cb:	62 f1 44 20 58 db    	vaddps ymm3,ymm23,ymm3
  9fd2d1:	62 d1 2c 00 5c e6    	vsubps xmm4,xmm26,xmm14
  9fd2d7:	62 f2 45 28 7f e3    	vpermt2ps ymm4,ymm7,ymm3
  9fd2dd:	c5 fc 11 a4 16 00 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x100],ymm4
  9fd2e4:	00 00 
  9fd2e6:	62 f1 54 20 58 1c 24 	vaddps ymm3,ymm21,YMMWORD PTR [rsp]
  9fd2ed:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x40]
  9fd2f4:	01 
  9fd2f5:	c5 d8 58 a4 24 80 00 	vaddps xmm4,xmm4,XMMWORD PTR [rsp+0x80]
  9fd2fc:	00 00 
  9fd2fe:	62 f2 45 28 7f e3    	vpermt2ps ymm4,ymm7,ymm3
  9fd304:	c5 fc 11 a4 16 20 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x120],ymm4
  9fd30b:	00 00 
  9fd30d:	62 f1 34 20 5c d2    	vsubps ymm2,ymm25,ymm2
  9fd313:	c5 a0 58 dd          	vaddps xmm3,xmm11,xmm5
  9fd317:	62 f2 45 28 7f da    	vpermt2ps ymm3,ymm7,ymm2
  9fd31d:	c5 fc 11 9c 16 40 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x140],ymm3
  9fd324:	00 00 
  9fd326:	c5 9c 58 c0          	vaddps ymm0,ymm12,ymm0
  9fd32a:	62 f1 24 00 5c c9    	vsubps xmm1,xmm27,xmm1
  9fd330:	62 f2 45 28 7f c8    	vpermt2ps ymm1,ymm7,ymm0
  9fd336:	c5 fc 11 8c 16 60 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x160],ymm1
  9fd33d:	00 00 
  9fd33f:	48 81 c2 80 01 00 00 	add    rdx,0x180
  9fd346:	48 39 d0             	cmp    rax,rdx
  9fd349:	0f 85 41 f6 ff ff    	jne    9fc990 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x50>
  9fd34f:	48 81 c4 48 02 00 00 	add    rsp,0x248
  9fd356:	c5 f8 77             	vzeroupper
  9fd359:	c3                   	ret
