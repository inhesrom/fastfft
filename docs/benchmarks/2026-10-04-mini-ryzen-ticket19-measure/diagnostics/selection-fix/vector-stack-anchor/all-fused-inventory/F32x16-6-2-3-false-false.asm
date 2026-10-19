
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a169c0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a169c0:	c5 fb 10 47 10       	vmovsd xmm0,QWORD PTR [rdi+0x10]
  a169c5:	c5 f8 10 0f          	vmovups xmm1,XMMWORD PTR [rdi]
  a169c9:	c5 f8 10 57 18       	vmovups xmm2,XMMWORD PTR [rdi+0x18]
  a169ce:	62 f3 75 48 18 c0 01 	vinsertf32x4 zmm0,zmm1,xmm0,0x1
  a169d5:	62 f1 7c 48 28 0d 61 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff678c61]        # 8f640 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1caf0>
  a169dc:	8c 67 ff 
  a169df:	c5 e0 57 db          	vxorps xmm3,xmm3,xmm3
  a169e3:	62 f1 7c 48 28 e0    	vmovaps zmm4,zmm0
  a169e9:	62 f2 75 48 7f e3    	vpermt2ps zmm4,zmm1,zmm3
  a169ef:	62 f1 7c 48 28 2d 87 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff678c87]        # 8f680 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1cb30>
  a169f6:	8c 67 ff 
  a169f9:	62 f2 55 48 7f c3    	vpermt2ps zmm0,zmm5,zmm3
  a169ff:	c5 fb 10 77 28       	vmovsd xmm6,QWORD PTR [rdi+0x28]
  a16a04:	62 f3 6d 48 18 d6 01 	vinsertf32x4 zmm2,zmm2,xmm6,0x1
  a16a0b:	62 f2 6d 48 77 cb    	vpermi2ps zmm1,zmm2,zmm3
  a16a11:	62 f2 55 48 7f d3    	vpermt2ps zmm2,zmm5,zmm3
  a16a17:	62 f1 5c 48 58 e9    	vaddps zmm5,zmm4,zmm1
  a16a1d:	62 f1 7c 48 58 f2    	vaddps zmm6,zmm0,zmm2
  a16a23:	62 f1 5c 48 5c c9    	vsubps zmm1,zmm4,zmm1
  a16a29:	62 f1 7c 48 5c c2    	vsubps zmm0,zmm0,zmm2
  a16a2f:	62 f1 7c 48 28 15 47 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff6b0547]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a16a36:	05 6b ff 
  a16a39:	62 f2 6d 48 7f eb    	vpermt2ps zmm5,zmm2,zmm3
  a16a3f:	62 f2 6d 48 7f cb    	vpermt2ps zmm1,zmm2,zmm3
  a16a45:	c5 d8 57 e4          	vxorps xmm4,xmm4,xmm4
  a16a49:	62 f2 6d 48 7f e4    	vpermt2ps zmm4,zmm2,zmm4
  a16a4f:	62 f1 7c 48 28 3d a7 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff6b04a7]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a16a56:	04 6b ff 
  a16a59:	62 f2 45 48 7f ec    	vpermt2ps zmm5,zmm7,zmm4
  a16a5f:	62 f2 45 48 7f cc    	vpermt2ps zmm1,zmm7,zmm4
  a16a65:	62 f2 6d 48 7f f3    	vpermt2ps zmm6,zmm2,zmm3
  a16a6b:	62 f2 6d 48 7f c3    	vpermt2ps zmm0,zmm2,zmm3
  a16a71:	62 f2 45 48 7f f4    	vpermt2ps zmm6,zmm7,zmm4
  a16a77:	62 f2 45 48 7f c4    	vpermt2ps zmm0,zmm7,zmm4
  a16a7d:	62 f2 45 48 7f e4    	vpermt2ps zmm4,zmm7,zmm4
  a16a83:	62 f1 d5 48 14 d4    	vunpcklpd zmm2,zmm5,zmm4
  a16a89:	62 f1 d5 48 15 dc    	vunpckhpd zmm3,zmm5,zmm4
  a16a8f:	62 f1 f5 48 14 ec    	vunpcklpd zmm5,zmm1,zmm4
  a16a95:	62 f1 f5 48 15 cc    	vunpckhpd zmm1,zmm1,zmm4
  a16a9b:	62 f1 7c 48 28 3d 5b 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff6b035b]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a16aa2:	03 6b ff 
  a16aa5:	62 71 7c 48 28 c2    	vmovaps zmm8,zmm2
  a16aab:	62 72 45 48 7f c5    	vpermt2ps zmm8,zmm7,zmm5
  a16ab1:	62 71 7c 48 28 0d 85 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff6b0385]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a16ab8:	03 6b ff 
  a16abb:	62 f2 35 48 7f d5    	vpermt2ps zmm2,zmm9,zmm5
  a16ac1:	62 f2 45 48 7f d9    	vpermt2ps zmm3,zmm7,zmm1
  a16ac7:	62 f1 cd 48 14 cc    	vunpcklpd zmm1,zmm6,zmm4
  a16acd:	62 f1 cd 48 15 ec    	vunpckhpd zmm5,zmm6,zmm4
  a16ad3:	62 f1 fd 48 14 f4    	vunpcklpd zmm6,zmm0,zmm4
  a16ad9:	62 f1 fd 48 15 c4    	vunpckhpd zmm0,zmm0,zmm4
  a16adf:	62 f1 7c 48 28 e1    	vmovaps zmm4,zmm1
  a16ae5:	62 f2 45 48 7f e6    	vpermt2ps zmm4,zmm7,zmm6
  a16aeb:	62 f2 35 48 7f ce    	vpermt2ps zmm1,zmm9,zmm6
  a16af1:	62 f2 45 48 7f e8    	vpermt2ps zmm5,zmm7,zmm0
  a16af7:	62 f1 7c 48 10 42 02 	vmovups zmm0,ZMMWORD PTR [rdx+0x80]
  a16afe:	62 f1 7c 48 10 72 03 	vmovups zmm6,ZMMWORD PTR [rdx+0xc0]
  a16b05:	62 f1 7c 48 10 7a 04 	vmovups zmm7,ZMMWORD PTR [rdx+0x100]
  a16b0c:	62 71 7c 48 10 4a 05 	vmovups zmm9,ZMMWORD PTR [rdx+0x140]
  a16b13:	62 71 6c 48 59 d0    	vmulps zmm10,zmm2,zmm0
  a16b19:	62 72 75 48 bc d6    	vfnmadd231ps zmm10,zmm1,zmm6
  a16b1f:	62 71 64 48 59 df    	vmulps zmm11,zmm3,zmm7
  a16b25:	62 52 55 48 bc d9    	vfnmadd231ps zmm11,zmm5,zmm9
  a16b2b:	62 51 2c 48 58 e3    	vaddps zmm12,zmm10,zmm11
  a16b31:	62 f1 74 48 59 c0    	vmulps zmm0,zmm1,zmm0
  a16b37:	62 f2 4d 48 b8 c2    	vfmadd231ps zmm0,zmm6,zmm2
  a16b3d:	62 f1 54 48 59 cf    	vmulps zmm1,zmm5,zmm7
  a16b43:	62 f2 35 48 b8 cb    	vfmadd231ps zmm1,zmm9,zmm3
  a16b49:	62 f1 7c 48 58 d1    	vaddps zmm2,zmm0,zmm1
  a16b4f:	62 f2 7d 48 18 1d 07 	vbroadcastss zmm3,DWORD PTR [rip+0xffffffffff65e907]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a16b56:	e9 65 ff 
  a16b59:	62 f1 7c 48 28 eb    	vmovaps zmm5,zmm3
  a16b5f:	62 d2 1d 48 ac e8    	vfnmadd213ps zmm5,zmm12,zmm8
  a16b65:	62 f2 6d 48 ac dc    	vfnmadd213ps zmm3,zmm2,zmm4
  a16b6b:	c5 d8 58 d2          	vaddps xmm2,xmm4,xmm2
  a16b6f:	c4 c1 38 58 e4       	vaddps xmm4,xmm8,xmm12
  a16b74:	c5 d8 14 d2          	vunpcklps xmm2,xmm4,xmm2
  a16b78:	c5 f8 11 16          	vmovups XMMWORD PTR [rsi],xmm2
  a16b7c:	c4 e2 79 18 15 4f e7 	vbroadcastss xmm2,DWORD PTR [rip+0xffffffffff65e74f]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a16b83:	65 ff 
  a16b85:	c4 c1 28 5c e3       	vsubps xmm4,xmm10,xmm11
  a16b8a:	c5 d8 59 e2          	vmulps xmm4,xmm4,xmm2
  a16b8e:	c5 e0 5c f4          	vsubps xmm6,xmm3,xmm4
  a16b92:	c5 f8 5c c1          	vsubps xmm0,xmm0,xmm1
  a16b96:	c5 f8 59 c2          	vmulps xmm0,xmm0,xmm2
  a16b9a:	c5 d0 58 c8          	vaddps xmm1,xmm5,xmm0
  a16b9e:	c5 f0 14 ce          	vunpcklps xmm1,xmm1,xmm6
  a16ba2:	c5 f8 11 4e 10       	vmovups XMMWORD PTR [rsi+0x10],xmm1
  a16ba7:	c5 e0 58 cc          	vaddps xmm1,xmm3,xmm4
  a16bab:	c5 d0 5c c0          	vsubps xmm0,xmm5,xmm0
  a16baf:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a16bb3:	c5 f8 11 46 20       	vmovups XMMWORD PTR [rsi+0x20],xmm0
  a16bb8:	c5 f8 77             	vzeroupper
  a16bbb:	c3                   	ret
