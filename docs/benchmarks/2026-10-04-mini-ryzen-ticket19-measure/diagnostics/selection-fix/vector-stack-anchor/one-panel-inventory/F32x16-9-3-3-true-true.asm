
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a5fcc0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a5fcc0:	62 f1 7c 48 28 05 b6 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6672b6]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a5fcc7:	72 66 ff 
  a5fcca:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  a5fcce:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a5fcd2:	62 f2 7d 48 7f d2    	vpermt2ps zmm2,zmm0,zmm2
  a5fcd8:	62 f1 7c 48 28 1d 1e 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff66721e]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a5fcdf:	72 66 ff 
  a5fce2:	62 f1 7c 48 28 e2    	vmovaps zmm4,zmm2
  a5fce8:	62 f2 65 48 7f e2    	vpermt2ps zmm4,zmm3,zmm2
  a5fcee:	62 f1 7c 48 28 2d 08 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff667108]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a5fcf5:	71 66 ff 
  a5fcf8:	62 f1 7c 48 28 35 3e 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff66713e]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a5fcff:	71 66 ff 
  a5fd02:	48 c1 e2 03          	shl    rdx,0x3
  a5fd06:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  a5fd0a:	31 d2                	xor    edx,edx
  a5fd0c:	62 f1 7c 48 28 3d ea 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff633dea]        # 93b00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20fb0>
  a5fd13:	3d 63 ff 
  a5fd16:	62 72 7d 48 18 05 40 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff615740]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a5fd1d:	57 61 ff 
  a5fd20:	62 71 7c 48 28 0d 16 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff633e16]        # 93b40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20ff0>
  a5fd27:	3e 63 ff 
  a5fd2a:	62 72 7d 48 18 15 a0 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff6155a0]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a5fd31:	55 61 ff 
  a5fd34:	c5 7c 28 1d 84 85 61 	vmovaps ymm11,YMMWORD PTR [rip+0xffffffffff618584]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  a5fd3b:	ff 
  a5fd3c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  a5fd40:	c5 7b 10 64 17 10    	vmovsd xmm12,QWORD PTR [rdi+rdx*1+0x10]
  a5fd46:	c5 78 10 2c 17       	vmovups xmm13,XMMWORD PTR [rdi+rdx*1]
  a5fd4b:	c5 78 10 74 17 18    	vmovups xmm14,XMMWORD PTR [rdi+rdx*1+0x18]
  a5fd51:	c5 78 10 7c 17 30    	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x30]
  a5fd57:	62 53 15 48 18 e4 01 	vinsertf32x4 zmm12,zmm13,xmm12,0x1
  a5fd5e:	62 51 7c 48 28 ec    	vmovaps zmm13,zmm12
  a5fd64:	62 72 45 48 7f e9    	vpermt2ps zmm13,zmm7,zmm1
  a5fd6a:	62 72 35 48 7f e1    	vpermt2ps zmm12,zmm9,zmm1
  a5fd70:	62 e1 ff 08 10 44 17 	vmovsd xmm16,QWORD PTR [rdi+rdx*1+0x28]
  a5fd77:	05 
  a5fd78:	62 33 0d 48 18 f0 01 	vinsertf32x4 zmm14,zmm14,xmm16,0x1
  a5fd7f:	62 c1 7c 48 28 c6    	vmovaps zmm16,zmm14
  a5fd85:	62 e2 45 48 7f c1    	vpermt2ps zmm16,zmm7,zmm1
  a5fd8b:	62 72 35 48 7f f1    	vpermt2ps zmm14,zmm9,zmm1
  a5fd91:	62 e1 ff 08 10 4c 17 	vmovsd xmm17,QWORD PTR [rdi+rdx*1+0x40]
  a5fd98:	08 
  a5fd99:	62 33 05 48 18 f9 01 	vinsertf32x4 zmm15,zmm15,xmm17,0x1
  a5fda0:	62 c1 7c 48 28 cf    	vmovaps zmm17,zmm15
  a5fda6:	62 e2 45 48 7f c9    	vpermt2ps zmm17,zmm7,zmm1
  a5fdac:	62 72 35 48 7f f9    	vpermt2ps zmm15,zmm9,zmm1
  a5fdb2:	62 c1 0c 48 58 d7    	vaddps zmm18,zmm14,zmm15
  a5fdb8:	62 a1 1c 48 58 da    	vaddps zmm19,zmm12,zmm18
  a5fdbe:	62 a1 7c 40 58 e1    	vaddps zmm20,zmm16,zmm17
  a5fdc4:	62 a1 14 48 58 ec    	vaddps zmm21,zmm13,zmm20
  a5fdca:	62 32 3d 48 bc e2    	vfnmadd231ps zmm12,zmm8,zmm18
  a5fdd0:	62 a1 7c 40 5c c1    	vsubps zmm16,zmm16,zmm17
  a5fdd6:	62 c1 7c 40 59 c2    	vmulps zmm16,zmm16,zmm10
  a5fddc:	62 a1 1c 48 58 c8    	vaddps zmm17,zmm12,zmm16
  a5fde2:	62 32 3d 48 bc ec    	vfnmadd231ps zmm13,zmm8,zmm20
  a5fde8:	62 51 0c 48 5c f7    	vsubps zmm14,zmm14,zmm15
  a5fdee:	62 51 0c 48 59 f2    	vmulps zmm14,zmm14,zmm10
  a5fdf4:	62 51 14 48 5c fe    	vsubps zmm15,zmm13,zmm14
  a5fdfa:	62 31 1c 48 5c e0    	vsubps zmm12,zmm12,zmm16
  a5fe00:	62 51 0c 48 58 ed    	vaddps zmm13,zmm14,zmm13
  a5fe06:	62 e2 7d 48 7f d9    	vpermt2ps zmm19,zmm0,zmm1
  a5fe0c:	62 e2 7d 48 7f c9    	vpermt2ps zmm17,zmm0,zmm1
  a5fe12:	62 72 7d 48 7f e1    	vpermt2ps zmm12,zmm0,zmm1
  a5fe18:	62 e2 65 48 7f da    	vpermt2ps zmm19,zmm3,zmm2
  a5fe1e:	62 e2 65 48 7f ca    	vpermt2ps zmm17,zmm3,zmm2
  a5fe24:	62 72 65 48 7f e2    	vpermt2ps zmm12,zmm3,zmm2
  a5fe2a:	62 51 e5 40 14 f4    	vunpcklpd zmm14,zmm19,zmm12
  a5fe30:	62 51 e5 40 15 e4    	vunpckhpd zmm12,zmm19,zmm12
  a5fe36:	62 e1 f5 40 14 c4    	vunpcklpd zmm16,zmm17,zmm4
  a5fe3c:	62 e1 f5 40 15 cc    	vunpckhpd zmm17,zmm17,zmm4
  a5fe42:	62 c1 7c 48 28 d6    	vmovaps zmm18,zmm14
  a5fe48:	62 a2 55 48 7f d0    	vpermt2ps zmm18,zmm5,zmm16
  a5fe4e:	62 32 4d 48 7f f0    	vpermt2ps zmm14,zmm6,zmm16
  a5fe54:	62 32 55 48 7f e1    	vpermt2ps zmm12,zmm5,zmm17
  a5fe5a:	62 e2 7d 48 7f e9    	vpermt2ps zmm21,zmm0,zmm1
  a5fe60:	62 72 7d 48 7f f9    	vpermt2ps zmm15,zmm0,zmm1
  a5fe66:	62 72 7d 48 7f e9    	vpermt2ps zmm13,zmm0,zmm1
  a5fe6c:	62 e2 65 48 7f ea    	vpermt2ps zmm21,zmm3,zmm2
  a5fe72:	62 72 65 48 7f fa    	vpermt2ps zmm15,zmm3,zmm2
  a5fe78:	62 72 65 48 7f ea    	vpermt2ps zmm13,zmm3,zmm2
  a5fe7e:	62 c1 d5 40 14 c5    	vunpcklpd zmm16,zmm21,zmm13
  a5fe84:	62 51 d5 40 15 ed    	vunpckhpd zmm13,zmm21,zmm13
  a5fe8a:	62 e1 85 48 14 cc    	vunpcklpd zmm17,zmm15,zmm4
  a5fe90:	62 71 85 48 15 fc    	vunpckhpd zmm15,zmm15,zmm4
  a5fe96:	62 a1 7c 48 28 d8    	vmovaps zmm19,zmm16
  a5fe9c:	62 a2 55 48 7f d9    	vpermt2ps zmm19,zmm5,zmm17
  a5fea2:	62 a2 4d 48 7f c1    	vpermt2ps zmm16,zmm6,zmm17
  a5fea8:	62 52 55 48 7f ef    	vpermt2ps zmm13,zmm5,zmm15
  a5feae:	62 71 7c 48 10 79 02 	vmovups zmm15,ZMMWORD PTR [rcx+0x80]
  a5feb5:	62 e1 7c 48 10 49 03 	vmovups zmm17,ZMMWORD PTR [rcx+0xc0]
  a5febc:	62 e1 7c 48 10 61 04 	vmovups zmm20,ZMMWORD PTR [rcx+0x100]
  a5fec3:	62 e1 7c 48 10 69 05 	vmovups zmm21,ZMMWORD PTR [rcx+0x140]
  a5feca:	62 c1 0c 48 59 f7    	vmulps zmm22,zmm14,zmm15
  a5fed0:	62 a2 7d 40 bc f1    	vfnmadd231ps zmm22,zmm16,zmm17
  a5fed6:	62 a1 1c 48 59 fc    	vmulps zmm23,zmm12,zmm20
  a5fedc:	62 a2 15 48 bc fd    	vfnmadd231ps zmm23,zmm13,zmm21
  a5fee2:	62 21 4c 40 58 c7    	vaddps zmm24,zmm22,zmm23
  a5fee8:	62 51 7c 40 59 ff    	vmulps zmm15,zmm16,zmm15
  a5feee:	62 52 75 40 b8 fe    	vfmadd231ps zmm15,zmm17,zmm14
  a5fef4:	62 31 14 48 59 ec    	vmulps zmm13,zmm13,zmm20
  a5fefa:	62 52 55 40 b8 ec    	vfmadd231ps zmm13,zmm21,zmm12
  a5ff00:	62 51 04 48 58 e5    	vaddps zmm12,zmm15,zmm13
  a5ff06:	62 51 7c 48 28 f0    	vmovaps zmm14,zmm8
  a5ff0c:	62 32 3d 40 ac f2    	vfnmadd213ps zmm14,zmm24,zmm18
  a5ff12:	62 c1 7c 48 28 c0    	vmovaps zmm16,zmm8
  a5ff18:	62 a2 1d 48 ac c3    	vfnmadd213ps zmm16,zmm12,zmm19
  a5ff1e:	62 81 6c 20 58 c8    	vaddps ymm17,ymm18,ymm24
  a5ff24:	62 51 64 00 58 e4    	vaddps xmm12,xmm19,xmm12
  a5ff2a:	62 32 25 28 7f e1    	vpermt2ps ymm12,ymm11,ymm17
  a5ff30:	c5 78 11 24 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm12
  a5ff35:	c4 43 7d 19 e4 01    	vextractf128 xmm12,ymm12,0x1
  a5ff3b:	c5 78 13 64 16 10    	vmovlps QWORD PTR [rsi+rdx*1+0x10],xmm12
  a5ff41:	c4 41 04 5c e5       	vsubps ymm12,ymm15,ymm13
  a5ff46:	c4 41 1c 59 e2       	vmulps ymm12,ymm12,ymm10
  a5ff4b:	c4 41 0c 58 ec       	vaddps ymm13,ymm14,ymm12
  a5ff50:	62 31 4c 00 5c ff    	vsubps xmm15,xmm22,xmm23
  a5ff56:	c4 41 00 59 fa       	vmulps xmm15,xmm15,xmm10
  a5ff5b:	62 c1 7c 00 5c cf    	vsubps xmm17,xmm16,xmm15
  a5ff61:	62 c2 25 28 7f cd    	vpermt2ps ymm17,ymm11,ymm13
  a5ff67:	62 e1 7c 08 11 8c 16 	vmovups XMMWORD PTR [rsi+rdx*1+0x18],xmm17
  a5ff6e:	18 00 00 00 
  a5ff72:	62 c3 7d 28 19 cd 01 	vextractf32x4 xmm13,ymm17,0x1
  a5ff79:	c5 78 13 6c 16 28    	vmovlps QWORD PTR [rsi+rdx*1+0x28],xmm13
  a5ff7f:	c4 41 0c 5c e4       	vsubps ymm12,ymm14,ymm12
  a5ff84:	62 51 7c 00 58 ef    	vaddps xmm13,xmm16,xmm15
  a5ff8a:	62 52 25 28 7f ec    	vpermt2ps ymm13,ymm11,ymm12
  a5ff90:	c5 78 11 6c 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm13
  a5ff96:	c4 43 7d 19 ec 01    	vextractf128 xmm12,ymm13,0x1
  a5ff9c:	c5 78 13 64 16 40    	vmovlps QWORD PTR [rsi+rdx*1+0x40],xmm12
  a5ffa2:	48 83 c2 48          	add    rdx,0x48
  a5ffa6:	48 39 d0             	cmp    rax,rdx
  a5ffa9:	0f 85 91 fd ff ff    	jne    a5fd40 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x80>
  a5ffaf:	c5 f8 77             	vzeroupper
  a5ffb2:	c3                   	ret
