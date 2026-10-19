
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a17ec0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a17ec0:	c5 fb 10 47 10       	vmovsd xmm0,QWORD PTR [rdi+0x10]
  a17ec5:	c5 f8 10 0f          	vmovups xmm1,XMMWORD PTR [rdi]
  a17ec9:	c5 f8 10 57 18       	vmovups xmm2,XMMWORD PTR [rdi+0x18]
  a17ece:	62 f3 75 48 18 c0 01 	vinsertf32x4 zmm0,zmm1,xmm0,0x1
  a17ed5:	62 f1 7c 48 28 0d 61 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff677761]        # 8f640 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1caf0>
  a17edc:	77 67 ff 
  a17edf:	c5 e0 57 db          	vxorps xmm3,xmm3,xmm3
  a17ee3:	62 f1 7c 48 28 e0    	vmovaps zmm4,zmm0
  a17ee9:	62 f2 75 48 7f e3    	vpermt2ps zmm4,zmm1,zmm3
  a17eef:	62 f1 7c 48 28 2d 87 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff677787]        # 8f680 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1cb30>
  a17ef6:	77 67 ff 
  a17ef9:	62 f2 55 48 7f c3    	vpermt2ps zmm0,zmm5,zmm3
  a17eff:	c5 fb 10 77 28       	vmovsd xmm6,QWORD PTR [rdi+0x28]
  a17f04:	62 f3 6d 48 18 d6 01 	vinsertf32x4 zmm2,zmm2,xmm6,0x1
  a17f0b:	62 f2 6d 48 77 cb    	vpermi2ps zmm1,zmm2,zmm3
  a17f11:	62 f2 55 48 7f d3    	vpermt2ps zmm2,zmm5,zmm3
  a17f17:	62 f1 5c 48 58 e9    	vaddps zmm5,zmm4,zmm1
  a17f1d:	62 f1 7c 48 58 f2    	vaddps zmm6,zmm0,zmm2
  a17f23:	62 f1 5c 48 5c c9    	vsubps zmm1,zmm4,zmm1
  a17f29:	62 f1 7c 48 5c c2    	vsubps zmm0,zmm0,zmm2
  a17f2f:	62 f1 7c 48 28 15 47 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff6af047]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a17f36:	f0 6a ff 
  a17f39:	62 f2 6d 48 7f eb    	vpermt2ps zmm5,zmm2,zmm3
  a17f3f:	62 f2 6d 48 7f cb    	vpermt2ps zmm1,zmm2,zmm3
  a17f45:	c5 d8 57 e4          	vxorps xmm4,xmm4,xmm4
  a17f49:	62 f2 6d 48 7f e4    	vpermt2ps zmm4,zmm2,zmm4
  a17f4f:	62 f1 7c 48 28 3d a7 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff6aefa7]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a17f56:	ef 6a ff 
  a17f59:	62 f2 45 48 7f ec    	vpermt2ps zmm5,zmm7,zmm4
  a17f5f:	62 f2 45 48 7f cc    	vpermt2ps zmm1,zmm7,zmm4
  a17f65:	62 f2 6d 48 7f f3    	vpermt2ps zmm6,zmm2,zmm3
  a17f6b:	62 f2 6d 48 7f c3    	vpermt2ps zmm0,zmm2,zmm3
  a17f71:	62 f2 45 48 7f f4    	vpermt2ps zmm6,zmm7,zmm4
  a17f77:	62 f2 45 48 7f c4    	vpermt2ps zmm0,zmm7,zmm4
  a17f7d:	62 f2 45 48 7f e4    	vpermt2ps zmm4,zmm7,zmm4
  a17f83:	62 f1 d5 48 14 d4    	vunpcklpd zmm2,zmm5,zmm4
  a17f89:	62 f1 d5 48 15 dc    	vunpckhpd zmm3,zmm5,zmm4
  a17f8f:	62 f1 f5 48 14 ec    	vunpcklpd zmm5,zmm1,zmm4
  a17f95:	62 f1 f5 48 15 cc    	vunpckhpd zmm1,zmm1,zmm4
  a17f9b:	62 f1 7c 48 28 3d 5b 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff6aee5b]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a17fa2:	ee 6a ff 
  a17fa5:	62 71 7c 48 28 c2    	vmovaps zmm8,zmm2
  a17fab:	62 72 45 48 7f c5    	vpermt2ps zmm8,zmm7,zmm5
  a17fb1:	62 71 7c 48 28 0d 85 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff6aee85]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a17fb8:	ee 6a ff 
  a17fbb:	62 f2 35 48 7f d5    	vpermt2ps zmm2,zmm9,zmm5
  a17fc1:	62 f2 45 48 7f d9    	vpermt2ps zmm3,zmm7,zmm1
  a17fc7:	62 f1 cd 48 14 cc    	vunpcklpd zmm1,zmm6,zmm4
  a17fcd:	62 f1 cd 48 15 ec    	vunpckhpd zmm5,zmm6,zmm4
  a17fd3:	62 f1 fd 48 14 f4    	vunpcklpd zmm6,zmm0,zmm4
  a17fd9:	62 f1 fd 48 15 c4    	vunpckhpd zmm0,zmm0,zmm4
  a17fdf:	62 f1 7c 48 28 e1    	vmovaps zmm4,zmm1
  a17fe5:	62 f2 45 48 7f e6    	vpermt2ps zmm4,zmm7,zmm6
  a17feb:	62 f2 35 48 7f ce    	vpermt2ps zmm1,zmm9,zmm6
  a17ff1:	62 f2 45 48 7f e8    	vpermt2ps zmm5,zmm7,zmm0
  a17ff7:	62 f1 7c 48 10 42 02 	vmovups zmm0,ZMMWORD PTR [rdx+0x80]
  a17ffe:	62 f1 7c 48 10 72 03 	vmovups zmm6,ZMMWORD PTR [rdx+0xc0]
  a18005:	62 f1 7c 48 10 7a 04 	vmovups zmm7,ZMMWORD PTR [rdx+0x100]
  a1800c:	62 71 7c 48 10 4a 05 	vmovups zmm9,ZMMWORD PTR [rdx+0x140]
  a18013:	62 71 6c 48 59 d0    	vmulps zmm10,zmm2,zmm0
  a18019:	62 72 75 48 bc d6    	vfnmadd231ps zmm10,zmm1,zmm6
  a1801f:	62 71 64 48 59 df    	vmulps zmm11,zmm3,zmm7
  a18025:	62 52 55 48 bc d9    	vfnmadd231ps zmm11,zmm5,zmm9
  a1802b:	62 51 2c 48 58 e3    	vaddps zmm12,zmm10,zmm11
  a18031:	62 f1 74 48 59 c0    	vmulps zmm0,zmm1,zmm0
  a18037:	62 f2 4d 48 b8 c2    	vfmadd231ps zmm0,zmm6,zmm2
  a1803d:	62 f1 54 48 59 cf    	vmulps zmm1,zmm5,zmm7
  a18043:	62 f2 35 48 b8 cb    	vfmadd231ps zmm1,zmm9,zmm3
  a18049:	62 f1 7c 48 58 d1    	vaddps zmm2,zmm0,zmm1
  a1804f:	62 f2 7d 48 18 1d 07 	vbroadcastss zmm3,DWORD PTR [rip+0xffffffffff65d407]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a18056:	d4 65 ff 
  a18059:	62 f1 7c 48 28 eb    	vmovaps zmm5,zmm3
  a1805f:	62 d2 1d 48 ac e8    	vfnmadd213ps zmm5,zmm12,zmm8
  a18065:	62 f2 6d 48 ac dc    	vfnmadd213ps zmm3,zmm2,zmm4
  a1806b:	c5 d8 58 d2          	vaddps xmm2,xmm4,xmm2
  a1806f:	c4 c1 38 58 e4       	vaddps xmm4,xmm8,xmm12
  a18074:	c5 d8 14 d2          	vunpcklps xmm2,xmm4,xmm2
  a18078:	c5 f8 11 16          	vmovups XMMWORD PTR [rsi],xmm2
  a1807c:	c4 e2 79 18 15 4f d2 	vbroadcastss xmm2,DWORD PTR [rip+0xffffffffff65d24f]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a18083:	65 ff 
  a18085:	c4 c1 28 5c e3       	vsubps xmm4,xmm10,xmm11
  a1808a:	c5 d8 59 e2          	vmulps xmm4,xmm4,xmm2
  a1808e:	c5 e0 5c f4          	vsubps xmm6,xmm3,xmm4
  a18092:	c5 f8 5c c1          	vsubps xmm0,xmm0,xmm1
  a18096:	c5 f8 59 c2          	vmulps xmm0,xmm0,xmm2
  a1809a:	c5 d0 58 c8          	vaddps xmm1,xmm5,xmm0
  a1809e:	c5 f0 14 ce          	vunpcklps xmm1,xmm1,xmm6
  a180a2:	c5 f8 11 4e 10       	vmovups XMMWORD PTR [rsi+0x10],xmm1
  a180a7:	c5 e0 58 cc          	vaddps xmm1,xmm3,xmm4
  a180ab:	c5 d0 5c c0          	vsubps xmm0,xmm5,xmm0
  a180af:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a180b3:	c5 f8 11 46 20       	vmovups XMMWORD PTR [rsi+0x20],xmm0
  a180b8:	c5 f8 77             	vzeroupper
  a180bb:	c3                   	ret
