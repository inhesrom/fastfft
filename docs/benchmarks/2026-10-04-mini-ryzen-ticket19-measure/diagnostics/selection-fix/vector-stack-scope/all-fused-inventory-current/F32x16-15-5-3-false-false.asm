
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a62e40 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a62e40:	c5 fb 10 47 10       	vmovsd xmm0,QWORD PTR [rdi+0x10]
  a62e45:	c5 f8 10 0f          	vmovups xmm1,XMMWORD PTR [rdi]
  a62e49:	c5 f8 10 67 18       	vmovups xmm4,XMMWORD PTR [rdi+0x18]
  a62e4e:	c5 f8 10 6f 30       	vmovups xmm5,XMMWORD PTR [rdi+0x30]
  a62e53:	c5 f8 10 77 48       	vmovups xmm6,XMMWORD PTR [rdi+0x48]
  a62e58:	62 f3 75 48 18 d0 01 	vinsertf32x4 zmm2,zmm1,xmm0,0x1
  a62e5f:	62 f1 7c 48 28 3d 17 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff630f17]        # 93d80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21230>
  a62e66:	0f 63 ff 
  a62e69:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a62e6d:	62 f1 7c 48 28 da    	vmovaps zmm3,zmm2
  a62e73:	62 f2 45 48 7f d8    	vpermt2ps zmm3,zmm7,zmm0
  a62e79:	62 f1 7c 48 28 0d 3d 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff630f3d]        # 93dc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21270>
  a62e80:	0f 63 ff 
  a62e83:	62 f2 75 48 7f d0    	vpermt2ps zmm2,zmm1,zmm0
  a62e89:	c5 7b 10 47 28       	vmovsd xmm8,QWORD PTR [rdi+0x28]
  a62e8e:	62 d3 5d 48 18 e0 01 	vinsertf32x4 zmm4,zmm4,xmm8,0x1
  a62e95:	62 71 7c 48 28 c4    	vmovaps zmm8,zmm4
  a62e9b:	62 72 45 48 7f c0    	vpermt2ps zmm8,zmm7,zmm0
  a62ea1:	62 f2 75 48 7f e0    	vpermt2ps zmm4,zmm1,zmm0
  a62ea7:	c5 7b 10 4f 40       	vmovsd xmm9,QWORD PTR [rdi+0x40]
  a62eac:	62 53 55 48 18 c9 01 	vinsertf32x4 zmm9,zmm5,xmm9,0x1
  a62eb3:	62 51 7c 48 28 d1    	vmovaps zmm10,zmm9
  a62eb9:	62 72 45 48 7f d0    	vpermt2ps zmm10,zmm7,zmm0
  a62ebf:	62 72 75 48 7f c8    	vpermt2ps zmm9,zmm1,zmm0
  a62ec5:	c5 fb 10 6f 58       	vmovsd xmm5,QWORD PTR [rdi+0x58]
  a62eca:	62 f3 4d 48 18 f5 01 	vinsertf32x4 zmm6,zmm6,xmm5,0x1
  a62ed1:	62 71 7c 48 28 de    	vmovaps zmm11,zmm6
  a62ed7:	62 72 45 48 7f d8    	vpermt2ps zmm11,zmm7,zmm0
  a62edd:	62 f2 75 48 7f f0    	vpermt2ps zmm6,zmm1,zmm0
  a62ee3:	c5 fb 10 6f 70       	vmovsd xmm5,QWORD PTR [rdi+0x70]
  a62ee8:	c5 78 10 67 60       	vmovups xmm12,XMMWORD PTR [rdi+0x60]
  a62eed:	62 73 1d 48 18 e5 01 	vinsertf32x4 zmm12,zmm12,xmm5,0x1
  a62ef4:	62 f2 1d 48 77 f8    	vpermi2ps zmm7,zmm12,zmm0
  a62efa:	62 72 75 48 7f e0    	vpermt2ps zmm12,zmm1,zmm0
  a62f00:	62 71 3c 48 58 ef    	vaddps zmm13,zmm8,zmm7
  a62f06:	62 d1 64 48 58 cd    	vaddps zmm1,zmm3,zmm13
  a62f0c:	62 51 2c 48 58 f3    	vaddps zmm14,zmm10,zmm11
  a62f12:	62 d1 74 48 58 ee    	vaddps zmm5,zmm1,zmm14
  a62f18:	62 51 5c 48 58 fc    	vaddps zmm15,zmm4,zmm12
  a62f1e:	62 d1 6c 48 58 cf    	vaddps zmm1,zmm2,zmm15
  a62f24:	62 e1 34 48 58 c6    	vaddps zmm16,zmm9,zmm6
  a62f2a:	62 b1 74 48 58 c8    	vaddps zmm1,zmm1,zmm16
  a62f30:	62 e2 7d 48 18 0d ae 	vbroadcastss zmm17,DWORD PTR [rip+0xffffffffff6127ae]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a62f37:	27 61 ff 
  a62f3a:	62 a1 7c 48 28 d1    	vmovaps zmm18,zmm17
  a62f40:	62 e2 15 48 a8 d3    	vfmadd213ps zmm18,zmm13,zmm3
  a62f46:	62 e2 7d 48 18 1d f4 	vbroadcastss zmm19,DWORD PTR [rip+0xffffffffff6126f4]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a62f4d:	26 61 ff 
  a62f50:	62 a2 0d 48 bc d3    	vfnmadd231ps zmm18,zmm14,zmm19
  a62f56:	62 51 5c 48 5c e4    	vsubps zmm12,zmm4,zmm12
  a62f5c:	62 e2 7d 48 18 25 f2 	vbroadcastss zmm20,DWORD PTR [rip+0xffffffffff6127f2]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a62f63:	27 61 ff 
  a62f66:	62 f1 34 48 5c f6    	vsubps zmm6,zmm9,zmm6
  a62f6c:	62 31 4c 48 59 cc    	vmulps zmm9,zmm6,zmm20
  a62f72:	62 e2 7d 48 18 2d 24 	vbroadcastss zmm21,DWORD PTR [rip+0xffffffffff612424]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a62f79:	24 61 ff 
  a62f7c:	62 32 1d 48 b8 cd    	vfmadd231ps zmm9,zmm12,zmm21
  a62f82:	62 c1 6c 40 58 f1    	vaddps zmm22,zmm18,zmm9
  a62f88:	62 a1 7c 48 28 f9    	vmovaps zmm23,zmm17
  a62f8e:	62 e2 05 48 a8 fa    	vfmadd213ps zmm23,zmm15,zmm2
  a62f94:	62 a2 7d 40 bc fb    	vfnmadd231ps zmm23,zmm16,zmm19
  a62f9a:	62 f1 3c 48 5c ff    	vsubps zmm7,zmm8,zmm7
  a62fa0:	62 51 2c 48 5c c3    	vsubps zmm8,zmm10,zmm11
  a62fa6:	62 31 3c 48 59 d4    	vmulps zmm10,zmm8,zmm20
  a62fac:	62 32 45 48 b8 d5    	vfmadd231ps zmm10,zmm7,zmm21
  a62fb2:	62 d1 44 40 5c e2    	vsubps zmm4,zmm23,zmm10
  a62fb8:	62 d2 65 40 bc dd    	vfnmadd231ps zmm3,zmm19,zmm13
  a62fbe:	62 d2 75 40 b8 de    	vfmadd231ps zmm3,zmm17,zmm14
  a62fc4:	62 31 1c 48 59 dc    	vmulps zmm11,zmm12,zmm20
  a62fca:	62 72 55 40 bc de    	vfnmadd231ps zmm11,zmm21,zmm6
  a62fd0:	62 d1 64 48 58 f3    	vaddps zmm6,zmm3,zmm11
  a62fd6:	62 b2 05 48 bc d3    	vfnmadd231ps zmm2,zmm15,zmm19
  a62fdc:	62 b2 7d 40 b8 d1    	vfmadd231ps zmm2,zmm16,zmm17
  a62fe2:	62 b1 44 48 59 fc    	vmulps zmm7,zmm7,zmm20
  a62fe8:	62 b2 3d 48 bc fd    	vfnmadd231ps zmm7,zmm8,zmm21
  a62fee:	62 71 6c 48 5c c7    	vsubps zmm8,zmm2,zmm7
  a62ff4:	62 d1 64 48 5c db    	vsubps zmm3,zmm3,zmm11
  a62ffa:	62 f1 44 48 58 fa    	vaddps zmm7,zmm7,zmm2
  a63000:	62 d1 6c 40 5c d1    	vsubps zmm2,zmm18,zmm9
  a63006:	62 31 2c 48 58 cf    	vaddps zmm9,zmm10,zmm23
  a6300c:	62 71 7c 48 28 15 6a 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff663f6a]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a63013:	3f 66 ff 
  a63016:	62 f2 2d 48 7f e8    	vpermt2ps zmm5,zmm10,zmm0
  a6301c:	62 e2 2d 48 7f f0    	vpermt2ps zmm22,zmm10,zmm0
  a63022:	62 f2 2d 48 7f f0    	vpermt2ps zmm6,zmm10,zmm0
  a63028:	62 f2 2d 48 7f d8    	vpermt2ps zmm3,zmm10,zmm0
  a6302e:	62 f2 2d 48 7f d0    	vpermt2ps zmm2,zmm10,zmm0
  a63034:	c4 41 20 57 db       	vxorps xmm11,xmm11,xmm11
  a63039:	62 52 2d 48 7f db    	vpermt2ps zmm11,zmm10,zmm11
  a6303f:	62 71 7c 48 28 25 b7 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff663eb7]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a63046:	3e 66 ff 
  a63049:	62 f2 1d 48 7f ea    	vpermt2ps zmm5,zmm12,zmm2
  a6304f:	62 c2 1d 48 7f f3    	vpermt2ps zmm22,zmm12,zmm11
  a63055:	62 d2 1d 48 7f f3    	vpermt2ps zmm6,zmm12,zmm11
  a6305b:	62 d2 1d 48 7f db    	vpermt2ps zmm3,zmm12,zmm11
  a63061:	62 71 d5 48 14 ee    	vunpcklpd zmm13,zmm5,zmm6
  a63067:	62 f1 d5 48 15 ee    	vunpckhpd zmm5,zmm5,zmm6
  a6306d:	62 f1 cd 40 14 f3    	vunpcklpd zmm6,zmm22,zmm3
  a63073:	62 f1 cd 40 15 db    	vunpckhpd zmm3,zmm22,zmm3
  a63079:	62 71 7c 48 28 35 7d 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff663d7d]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a63080:	3d 66 ff 
  a63083:	62 d1 7c 48 28 d5    	vmovaps zmm2,zmm13
  a63089:	62 f2 0d 48 7f d6    	vpermt2ps zmm2,zmm14,zmm6
  a6308f:	62 71 7c 48 28 3d a7 	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff663da7]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a63096:	3d 66 ff 
  a63099:	62 72 05 48 7f ee    	vpermt2ps zmm13,zmm15,zmm6
  a6309f:	62 f2 0d 48 7f eb    	vpermt2ps zmm5,zmm14,zmm3
  a630a5:	62 f2 2d 48 7f c8    	vpermt2ps zmm1,zmm10,zmm0
  a630ab:	62 f2 2d 48 7f e0    	vpermt2ps zmm4,zmm10,zmm0
  a630b1:	62 72 2d 48 7f c0    	vpermt2ps zmm8,zmm10,zmm0
  a630b7:	62 f2 2d 48 7f f8    	vpermt2ps zmm7,zmm10,zmm0
  a630bd:	62 72 2d 48 7f c8    	vpermt2ps zmm9,zmm10,zmm0
  a630c3:	62 d2 1d 48 7f c9    	vpermt2ps zmm1,zmm12,zmm9
  a630c9:	62 d2 1d 48 7f e3    	vpermt2ps zmm4,zmm12,zmm11
  a630cf:	62 52 1d 48 7f c3    	vpermt2ps zmm8,zmm12,zmm11
  a630d5:	62 d2 1d 48 7f fb    	vpermt2ps zmm7,zmm12,zmm11
  a630db:	62 d1 f5 48 14 c0    	vunpcklpd zmm0,zmm1,zmm8
  a630e1:	62 d1 f5 48 15 c8    	vunpckhpd zmm1,zmm1,zmm8
  a630e7:	62 f1 dd 48 14 df    	vunpcklpd zmm3,zmm4,zmm7
  a630ed:	62 f1 dd 48 15 e7    	vunpckhpd zmm4,zmm4,zmm7
  a630f3:	62 f1 7c 48 28 f0    	vmovaps zmm6,zmm0
  a630f9:	62 f2 0d 48 7f f3    	vpermt2ps zmm6,zmm14,zmm3
  a630ff:	62 f2 05 48 7f c3    	vpermt2ps zmm0,zmm15,zmm3
  a63105:	62 f2 0d 48 7f cc    	vpermt2ps zmm1,zmm14,zmm4
  a6310b:	62 f1 7c 48 10 5a 02 	vmovups zmm3,ZMMWORD PTR [rdx+0x80]
  a63112:	62 f1 7c 48 10 62 03 	vmovups zmm4,ZMMWORD PTR [rdx+0xc0]
  a63119:	62 f1 7c 48 10 7a 04 	vmovups zmm7,ZMMWORD PTR [rdx+0x100]
  a63120:	62 71 7c 48 10 42 05 	vmovups zmm8,ZMMWORD PTR [rdx+0x140]
  a63127:	62 71 14 48 59 cb    	vmulps zmm9,zmm13,zmm3
  a6312d:	62 72 7d 48 bc cc    	vfnmadd231ps zmm9,zmm0,zmm4
  a63133:	62 71 54 48 59 d7    	vmulps zmm10,zmm5,zmm7
  a63139:	62 52 75 48 bc d0    	vfnmadd231ps zmm10,zmm1,zmm8
  a6313f:	62 51 34 48 58 da    	vaddps zmm11,zmm9,zmm10
  a63145:	62 f1 7c 48 59 c3    	vmulps zmm0,zmm0,zmm3
  a6314b:	62 d2 5d 48 b8 c5    	vfmadd231ps zmm0,zmm4,zmm13
  a63151:	62 f1 74 48 59 cf    	vmulps zmm1,zmm1,zmm7
  a63157:	62 f2 3d 48 b8 cd    	vfmadd231ps zmm1,zmm8,zmm5
  a6315d:	62 f1 7c 48 58 d9    	vaddps zmm3,zmm0,zmm1
  a63163:	62 f2 7d 48 18 25 f3 	vbroadcastss zmm4,DWORD PTR [rip+0xffffffffff6122f3]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a6316a:	22 61 ff 
  a6316d:	62 f1 7c 48 28 ec    	vmovaps zmm5,zmm4
  a63173:	62 f2 25 48 ac ea    	vfnmadd213ps zmm5,zmm11,zmm2
  a63179:	62 f2 7d 48 18 3d 51 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff612151]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a63180:	21 61 ff 
  a63183:	62 f1 7c 48 5c c1    	vsubps zmm0,zmm0,zmm1
  a63189:	62 f1 7c 48 59 c7    	vmulps zmm0,zmm0,zmm7
  a6318f:	62 f1 54 48 58 c8    	vaddps zmm1,zmm5,zmm0
  a63195:	62 f2 65 48 ac e6    	vfnmadd213ps zmm4,zmm3,zmm6
  a6319b:	62 51 34 48 5c c2    	vsubps zmm8,zmm9,zmm10
  a631a1:	62 f1 3c 48 59 ff    	vmulps zmm7,zmm8,zmm7
  a631a7:	62 71 5c 48 5c c7    	vsubps zmm8,zmm4,zmm7
  a631ad:	62 f1 54 48 5c c0    	vsubps zmm0,zmm5,zmm0
  a631b3:	62 f1 5c 48 58 e7    	vaddps zmm4,zmm4,zmm7
  a631b9:	62 d1 6c 48 58 d3    	vaddps zmm2,zmm2,zmm11
  a631bf:	62 f1 4c 48 58 db    	vaddps zmm3,zmm6,zmm3
  a631c5:	62 f1 7c 48 28 2d 31 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff630c31]        # 93e00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x212b0>
  a631cc:	0c 63 ff 
  a631cf:	62 f2 55 48 7f d3    	vpermt2ps zmm2,zmm5,zmm3
  a631d5:	c5 fc 11 16          	vmovups YMMWORD PTR [rsi],ymm2
  a631d9:	62 f3 7d 48 19 d2 02 	vextractf32x4 xmm2,zmm2,0x2
  a631e0:	c5 f8 13 56 20       	vmovlps QWORD PTR [rsi+0x20],xmm2
  a631e5:	62 d2 55 48 7f c8    	vpermt2ps zmm1,zmm5,zmm8
  a631eb:	c5 fc 11 4e 28       	vmovups YMMWORD PTR [rsi+0x28],ymm1
  a631f0:	62 f3 7d 48 19 c9 02 	vextractf32x4 xmm1,zmm1,0x2
  a631f7:	c5 f8 13 4e 48       	vmovlps QWORD PTR [rsi+0x48],xmm1
  a631fc:	62 f2 55 48 7f c4    	vpermt2ps zmm0,zmm5,zmm4
  a63202:	c5 fc 11 46 50       	vmovups YMMWORD PTR [rsi+0x50],ymm0
  a63207:	62 f3 7d 48 19 c0 02 	vextractf32x4 xmm0,zmm0,0x2
  a6320e:	c5 f8 13 46 70       	vmovlps QWORD PTR [rsi+0x70],xmm0
  a63213:	c5 f8 77             	vzeroupper
  a63216:	c3                   	ret
