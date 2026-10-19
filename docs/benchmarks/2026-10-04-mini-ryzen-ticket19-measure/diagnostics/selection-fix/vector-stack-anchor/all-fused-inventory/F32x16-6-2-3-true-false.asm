
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a0fd00 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a0fd00:	c5 fb 10 47 10       	vmovsd xmm0,QWORD PTR [rdi+0x10]
  a0fd05:	c5 f8 10 0f          	vmovups xmm1,XMMWORD PTR [rdi]
  a0fd09:	c5 f8 10 57 18       	vmovups xmm2,XMMWORD PTR [rdi+0x18]
  a0fd0e:	62 f3 75 48 18 c0 01 	vinsertf32x4 zmm0,zmm1,xmm0,0x1
  a0fd15:	62 f1 7c 48 28 0d 61 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff67f161]        # 8ee80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c330>
  a0fd1c:	f1 67 ff 
  a0fd1f:	c5 e0 57 db          	vxorps xmm3,xmm3,xmm3
  a0fd23:	62 f1 7c 48 28 e0    	vmovaps zmm4,zmm0
  a0fd29:	62 f2 75 48 7f e3    	vpermt2ps zmm4,zmm1,zmm3
  a0fd2f:	62 f1 7c 48 28 2d 87 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff67f187]        # 8eec0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c370>
  a0fd36:	f1 67 ff 
  a0fd39:	62 f2 55 48 7f c3    	vpermt2ps zmm0,zmm5,zmm3
  a0fd3f:	c5 fb 10 77 28       	vmovsd xmm6,QWORD PTR [rdi+0x28]
  a0fd44:	62 f3 6d 48 18 d6 01 	vinsertf32x4 zmm2,zmm2,xmm6,0x1
  a0fd4b:	62 f2 6d 48 77 cb    	vpermi2ps zmm1,zmm2,zmm3
  a0fd51:	62 f2 55 48 7f d3    	vpermt2ps zmm2,zmm5,zmm3
  a0fd57:	62 f1 7c 48 58 ea    	vaddps zmm5,zmm0,zmm2
  a0fd5d:	62 f1 5c 48 58 f1    	vaddps zmm6,zmm4,zmm1
  a0fd63:	62 f1 7c 48 5c c2    	vsubps zmm0,zmm0,zmm2
  a0fd69:	62 f1 5c 48 5c c9    	vsubps zmm1,zmm4,zmm1
  a0fd6f:	62 f1 7c 48 28 15 07 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff6b7207]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a0fd76:	72 6b ff 
  a0fd79:	62 f2 6d 48 7f eb    	vpermt2ps zmm5,zmm2,zmm3
  a0fd7f:	62 f2 6d 48 7f c3    	vpermt2ps zmm0,zmm2,zmm3
  a0fd85:	c5 d8 57 e4          	vxorps xmm4,xmm4,xmm4
  a0fd89:	62 f2 6d 48 7f e4    	vpermt2ps zmm4,zmm2,zmm4
  a0fd8f:	62 f1 7c 48 28 3d 67 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff6b7167]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a0fd96:	71 6b ff 
  a0fd99:	62 f2 45 48 7f ec    	vpermt2ps zmm5,zmm7,zmm4
  a0fd9f:	62 f2 45 48 7f c4    	vpermt2ps zmm0,zmm7,zmm4
  a0fda5:	62 f2 6d 48 7f f3    	vpermt2ps zmm6,zmm2,zmm3
  a0fdab:	62 f2 6d 48 7f cb    	vpermt2ps zmm1,zmm2,zmm3
  a0fdb1:	62 f2 45 48 7f f4    	vpermt2ps zmm6,zmm7,zmm4
  a0fdb7:	62 f2 45 48 7f cc    	vpermt2ps zmm1,zmm7,zmm4
  a0fdbd:	62 f2 45 48 7f e4    	vpermt2ps zmm4,zmm7,zmm4
  a0fdc3:	62 f1 d5 48 14 d4    	vunpcklpd zmm2,zmm5,zmm4
  a0fdc9:	62 f1 d5 48 15 dc    	vunpckhpd zmm3,zmm5,zmm4
  a0fdcf:	62 f1 fd 48 14 ec    	vunpcklpd zmm5,zmm0,zmm4
  a0fdd5:	62 f1 fd 48 15 c4    	vunpckhpd zmm0,zmm0,zmm4
  a0fddb:	62 f1 7c 48 28 3d 1b 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff6b701b]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a0fde2:	70 6b ff 
  a0fde5:	62 71 7c 48 28 c2    	vmovaps zmm8,zmm2
  a0fdeb:	62 72 45 48 7f c5    	vpermt2ps zmm8,zmm7,zmm5
  a0fdf1:	62 71 7c 48 28 0d 45 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff6b7045]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a0fdf8:	70 6b ff 
  a0fdfb:	62 f2 35 48 7f d5    	vpermt2ps zmm2,zmm9,zmm5
  a0fe01:	62 f2 45 48 7f d8    	vpermt2ps zmm3,zmm7,zmm0
  a0fe07:	62 f1 cd 48 14 c4    	vunpcklpd zmm0,zmm6,zmm4
  a0fe0d:	62 f1 cd 48 15 ec    	vunpckhpd zmm5,zmm6,zmm4
  a0fe13:	62 f1 f5 48 14 f4    	vunpcklpd zmm6,zmm1,zmm4
  a0fe19:	62 f1 f5 48 15 cc    	vunpckhpd zmm1,zmm1,zmm4
  a0fe1f:	62 f1 7c 48 28 e0    	vmovaps zmm4,zmm0
  a0fe25:	62 f2 45 48 7f e6    	vpermt2ps zmm4,zmm7,zmm6
  a0fe2b:	62 f2 35 48 7f c6    	vpermt2ps zmm0,zmm9,zmm6
  a0fe31:	62 f2 45 48 7f e9    	vpermt2ps zmm5,zmm7,zmm1
  a0fe37:	62 f1 7c 48 10 4a 02 	vmovups zmm1,ZMMWORD PTR [rdx+0x80]
  a0fe3e:	62 f1 7c 48 10 72 03 	vmovups zmm6,ZMMWORD PTR [rdx+0xc0]
  a0fe45:	62 f1 7c 48 10 7a 04 	vmovups zmm7,ZMMWORD PTR [rdx+0x100]
  a0fe4c:	62 71 7c 48 10 4a 05 	vmovups zmm9,ZMMWORD PTR [rdx+0x140]
  a0fe53:	62 71 6c 48 59 d1    	vmulps zmm10,zmm2,zmm1
  a0fe59:	62 72 7d 48 bc d6    	vfnmadd231ps zmm10,zmm0,zmm6
  a0fe5f:	62 71 64 48 59 df    	vmulps zmm11,zmm3,zmm7
  a0fe65:	62 52 55 48 bc d9    	vfnmadd231ps zmm11,zmm5,zmm9
  a0fe6b:	62 51 2c 48 58 e3    	vaddps zmm12,zmm10,zmm11
  a0fe71:	62 f1 7c 48 59 c1    	vmulps zmm0,zmm0,zmm1
  a0fe77:	62 f2 4d 48 b8 c2    	vfmadd231ps zmm0,zmm6,zmm2
  a0fe7d:	62 f1 54 48 59 cf    	vmulps zmm1,zmm5,zmm7
  a0fe83:	62 f2 35 48 b8 cb    	vfmadd231ps zmm1,zmm9,zmm3
  a0fe89:	62 f1 7c 48 58 d1    	vaddps zmm2,zmm0,zmm1
  a0fe8f:	62 f2 7d 48 18 1d c7 	vbroadcastss zmm3,DWORD PTR [rip+0xffffffffff6655c7]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a0fe96:	55 66 ff 
  a0fe99:	62 f1 7c 48 28 eb    	vmovaps zmm5,zmm3
  a0fe9f:	62 d2 1d 48 ac e8    	vfnmadd213ps zmm5,zmm12,zmm8
  a0fea5:	62 f2 6d 48 ac dc    	vfnmadd213ps zmm3,zmm2,zmm4
  a0feab:	c4 c1 38 58 f4       	vaddps xmm6,xmm8,xmm12
  a0feb0:	c5 d8 58 d2          	vaddps xmm2,xmm4,xmm2
  a0feb4:	c5 e8 14 d6          	vunpcklps xmm2,xmm2,xmm6
  a0feb8:	c5 f8 11 16          	vmovups XMMWORD PTR [rsi],xmm2
  a0febc:	c4 e2 79 18 15 0f 54 	vbroadcastss xmm2,DWORD PTR [rip+0xffffffffff66540f]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a0fec3:	66 ff 
  a0fec5:	c5 f8 5c c1          	vsubps xmm0,xmm0,xmm1
  a0fec9:	c5 f8 59 c2          	vmulps xmm0,xmm0,xmm2
  a0fecd:	c5 d0 58 c8          	vaddps xmm1,xmm5,xmm0
  a0fed1:	c4 c1 28 5c e3       	vsubps xmm4,xmm10,xmm11
  a0fed6:	c5 d8 59 d2          	vmulps xmm2,xmm4,xmm2
  a0feda:	c5 e0 5c e2          	vsubps xmm4,xmm3,xmm2
  a0fede:	c5 d8 14 c9          	vunpcklps xmm1,xmm4,xmm1
  a0fee2:	c5 f8 11 4e 10       	vmovups XMMWORD PTR [rsi+0x10],xmm1
  a0fee7:	c5 d0 5c c0          	vsubps xmm0,xmm5,xmm0
  a0feeb:	c5 e0 58 ca          	vaddps xmm1,xmm3,xmm2
  a0feef:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  a0fef3:	c5 f8 11 46 20       	vmovups XMMWORD PTR [rsi+0x20],xmm0
  a0fef8:	c5 f8 77             	vzeroupper
  a0fefb:	c3                   	ret
