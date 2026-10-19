
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a39fc0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a39fc0:	c5 fb 10 47 10       	vmovsd xmm0,QWORD PTR [rdi+0x10]
  a39fc5:	c5 f8 10 0f          	vmovups xmm1,XMMWORD PTR [rdi]
  a39fc9:	c5 f8 10 5f 18       	vmovups xmm3,XMMWORD PTR [rdi+0x18]
  a39fce:	c5 f8 10 67 30       	vmovups xmm4,XMMWORD PTR [rdi+0x30]
  a39fd3:	62 f3 75 48 18 e8 01 	vinsertf32x4 zmm5,zmm1,xmm0,0x1
  a39fda:	62 f1 7c 48 28 0d 1c 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff65761c]        # 91600 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1eab0>
  a39fe1:	76 65 ff 
  a39fe4:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a39fe8:	62 f1 7c 48 28 f5    	vmovaps zmm6,zmm5
  a39fee:	62 f2 75 48 7f f2    	vpermt2ps zmm6,zmm1,zmm2
  a39ff4:	62 f1 7c 48 28 05 42 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff657642]        # 91640 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1eaf0>
  a39ffb:	76 65 ff 
  a39ffe:	62 f2 7d 48 7f ea    	vpermt2ps zmm5,zmm0,zmm2
  a3a004:	c5 fb 10 7f 28       	vmovsd xmm7,QWORD PTR [rdi+0x28]
  a3a009:	62 f3 65 48 18 ff 01 	vinsertf32x4 zmm7,zmm3,xmm7,0x1
  a3a010:	62 71 7c 48 28 c7    	vmovaps zmm8,zmm7
  a3a016:	62 72 75 48 7f c2    	vpermt2ps zmm8,zmm1,zmm2
  a3a01c:	62 f2 7d 48 7f fa    	vpermt2ps zmm7,zmm0,zmm2
  a3a022:	c5 fb 10 5f 40       	vmovsd xmm3,QWORD PTR [rdi+0x40]
  a3a027:	62 f3 5d 48 18 e3 01 	vinsertf32x4 zmm4,zmm4,xmm3,0x1
  a3a02e:	62 f2 5d 48 77 ca    	vpermi2ps zmm1,zmm4,zmm2
  a3a034:	62 f2 7d 48 7f e2    	vpermt2ps zmm4,zmm0,zmm2
  a3a03a:	62 71 44 48 58 cc    	vaddps zmm9,zmm7,zmm4
  a3a040:	62 51 54 48 58 d1    	vaddps zmm10,zmm5,zmm9
  a3a046:	62 71 3c 48 58 d9    	vaddps zmm11,zmm8,zmm1
  a3a04c:	62 d1 4c 48 58 db    	vaddps zmm3,zmm6,zmm11
  a3a052:	62 f2 7d 48 18 05 04 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff63b404]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a3a059:	b4 63 ff 
  a3a05c:	62 d2 7d 48 bc e9    	vfnmadd231ps zmm5,zmm0,zmm9
  a3a062:	62 71 3c 48 5c c1    	vsubps zmm8,zmm8,zmm1
  a3a068:	62 f2 7d 48 18 0d 62 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff63b262]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a3a06f:	b2 63 ff 
  a3a072:	62 71 3c 48 59 c1    	vmulps zmm8,zmm8,zmm1
  a3a078:	62 51 54 48 58 c8    	vaddps zmm9,zmm5,zmm8
  a3a07e:	62 d2 7d 48 bc f3    	vfnmadd231ps zmm6,zmm0,zmm11
  a3a084:	62 f1 44 48 5c e4    	vsubps zmm4,zmm7,zmm4
  a3a08a:	62 f1 5c 48 59 e1    	vmulps zmm4,zmm4,zmm1
  a3a090:	62 f1 4c 48 5c fc    	vsubps zmm7,zmm6,zmm4
  a3a096:	62 d1 54 48 5c e8    	vsubps zmm5,zmm5,zmm8
  a3a09c:	62 f1 5c 48 58 e6    	vaddps zmm4,zmm4,zmm6
  a3a0a2:	62 f1 7c 48 28 35 d4 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff68ced4]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a3a0a9:	ce 68 ff 
  a3a0ac:	62 72 4d 48 7f d2    	vpermt2ps zmm10,zmm6,zmm2
  a3a0b2:	62 72 4d 48 7f ca    	vpermt2ps zmm9,zmm6,zmm2
  a3a0b8:	62 f2 4d 48 7f ea    	vpermt2ps zmm5,zmm6,zmm2
  a3a0be:	c4 41 38 57 c0       	vxorps xmm8,xmm8,xmm8
  a3a0c3:	62 52 4d 48 7f c0    	vpermt2ps zmm8,zmm6,zmm8
  a3a0c9:	62 71 7c 48 28 1d 2d 	vmovaps zmm11,ZMMWORD PTR [rip+0xffffffffff68ce2d]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a3a0d0:	ce 68 ff 
  a3a0d3:	62 52 25 48 7f d0    	vpermt2ps zmm10,zmm11,zmm8
  a3a0d9:	62 52 25 48 7f c8    	vpermt2ps zmm9,zmm11,zmm8
  a3a0df:	62 d2 25 48 7f e8    	vpermt2ps zmm5,zmm11,zmm8
  a3a0e5:	62 f2 4d 48 7f da    	vpermt2ps zmm3,zmm6,zmm2
  a3a0eb:	62 f2 4d 48 7f fa    	vpermt2ps zmm7,zmm6,zmm2
  a3a0f1:	62 f2 4d 48 7f e2    	vpermt2ps zmm4,zmm6,zmm2
  a3a0f7:	62 d2 25 48 7f d8    	vpermt2ps zmm3,zmm11,zmm8
  a3a0fd:	62 d2 25 48 7f f8    	vpermt2ps zmm7,zmm11,zmm8
  a3a103:	62 d2 25 48 7f e0    	vpermt2ps zmm4,zmm11,zmm8
  a3a109:	62 52 25 48 7f c0    	vpermt2ps zmm8,zmm11,zmm8
  a3a10f:	62 f1 ad 48 14 d5    	vunpcklpd zmm2,zmm10,zmm5
  a3a115:	62 f1 ad 48 15 ed    	vunpckhpd zmm5,zmm10,zmm5
  a3a11b:	62 d1 b5 48 14 f0    	vunpcklpd zmm6,zmm9,zmm8
  a3a121:	62 51 b5 48 15 c8    	vunpckhpd zmm9,zmm9,zmm8
  a3a127:	62 71 7c 48 28 15 cf 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff68cccf]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a3a12e:	cc 68 ff 
  a3a131:	62 71 7c 48 28 da    	vmovaps zmm11,zmm2
  a3a137:	62 72 2d 48 7f de    	vpermt2ps zmm11,zmm10,zmm6
  a3a13d:	62 71 7c 48 28 25 f9 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff68ccf9]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a3a144:	cc 68 ff 
  a3a147:	62 f2 1d 48 7f d6    	vpermt2ps zmm2,zmm12,zmm6
  a3a14d:	62 d2 2d 48 7f e9    	vpermt2ps zmm5,zmm10,zmm9
  a3a153:	62 f1 e5 48 14 f4    	vunpcklpd zmm6,zmm3,zmm4
  a3a159:	62 f1 e5 48 15 dc    	vunpckhpd zmm3,zmm3,zmm4
  a3a15f:	62 d1 c5 48 14 e0    	vunpcklpd zmm4,zmm7,zmm8
  a3a165:	62 d1 c5 48 15 f8    	vunpckhpd zmm7,zmm7,zmm8
  a3a16b:	62 71 7c 48 28 c6    	vmovaps zmm8,zmm6
  a3a171:	62 72 2d 48 7f c4    	vpermt2ps zmm8,zmm10,zmm4
  a3a177:	62 f2 1d 48 7f f4    	vpermt2ps zmm6,zmm12,zmm4
  a3a17d:	62 f2 2d 48 7f df    	vpermt2ps zmm3,zmm10,zmm7
  a3a183:	62 f1 7c 48 10 62 02 	vmovups zmm4,ZMMWORD PTR [rdx+0x80]
  a3a18a:	62 f1 7c 48 10 7a 03 	vmovups zmm7,ZMMWORD PTR [rdx+0xc0]
  a3a191:	62 71 7c 48 10 4a 04 	vmovups zmm9,ZMMWORD PTR [rdx+0x100]
  a3a198:	62 71 7c 48 10 52 05 	vmovups zmm10,ZMMWORD PTR [rdx+0x140]
  a3a19f:	62 71 6c 48 59 e4    	vmulps zmm12,zmm2,zmm4
  a3a1a5:	62 72 4d 48 bc e7    	vfnmadd231ps zmm12,zmm6,zmm7
  a3a1ab:	62 51 54 48 59 e9    	vmulps zmm13,zmm5,zmm9
  a3a1b1:	62 52 65 48 bc ea    	vfnmadd231ps zmm13,zmm3,zmm10
  a3a1b7:	62 51 1c 48 58 f5    	vaddps zmm14,zmm12,zmm13
  a3a1bd:	62 f1 4c 48 59 e4    	vmulps zmm4,zmm6,zmm4
  a3a1c3:	62 f2 45 48 b8 e2    	vfmadd231ps zmm4,zmm7,zmm2
  a3a1c9:	62 d1 64 48 59 d1    	vmulps zmm2,zmm3,zmm9
  a3a1cf:	62 f2 2d 48 b8 d5    	vfmadd231ps zmm2,zmm10,zmm5
  a3a1d5:	62 f1 5c 48 58 da    	vaddps zmm3,zmm4,zmm2
  a3a1db:	62 f1 7c 48 28 e8    	vmovaps zmm5,zmm0
  a3a1e1:	62 d2 0d 48 ac eb    	vfnmadd213ps zmm5,zmm14,zmm11
  a3a1e7:	62 d2 65 48 ac c0    	vfnmadd213ps zmm0,zmm3,zmm8
  a3a1ed:	c4 c1 24 58 f6       	vaddps ymm6,ymm11,ymm14
  a3a1f2:	c5 b8 58 db          	vaddps xmm3,xmm8,xmm3
  a3a1f6:	c5 fc 28 3d c2 e0 63 	vmovaps ymm7,YMMWORD PTR [rip+0xffffffffff63e0c2]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  a3a1fd:	ff 
  a3a1fe:	62 f2 45 28 7f de    	vpermt2ps ymm3,ymm7,ymm6
  a3a204:	c5 f8 11 1e          	vmovups XMMWORD PTR [rsi],xmm3
  a3a208:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  a3a20e:	c5 f8 13 5e 10       	vmovlps QWORD PTR [rsi+0x10],xmm3
  a3a213:	c5 dc 5c d2          	vsubps ymm2,ymm4,ymm2
  a3a217:	c5 ec 59 d1          	vmulps ymm2,ymm2,ymm1
  a3a21b:	c5 d4 58 da          	vaddps ymm3,ymm5,ymm2
  a3a21f:	c4 c1 18 5c e5       	vsubps xmm4,xmm12,xmm13
  a3a224:	c5 d8 59 c9          	vmulps xmm1,xmm4,xmm1
  a3a228:	c5 f8 5c e1          	vsubps xmm4,xmm0,xmm1
  a3a22c:	62 f2 45 28 7f e3    	vpermt2ps ymm4,ymm7,ymm3
  a3a232:	c5 f8 11 66 18       	vmovups XMMWORD PTR [rsi+0x18],xmm4
  a3a237:	c4 e3 7d 19 e3 01    	vextractf128 xmm3,ymm4,0x1
  a3a23d:	c5 f8 13 5e 28       	vmovlps QWORD PTR [rsi+0x28],xmm3
  a3a242:	c5 d4 5c d2          	vsubps ymm2,ymm5,ymm2
  a3a246:	c5 f8 58 c1          	vaddps xmm0,xmm0,xmm1
  a3a24a:	62 f2 45 28 7f c2    	vpermt2ps ymm0,ymm7,ymm2
  a3a250:	c5 f8 11 46 30       	vmovups XMMWORD PTR [rsi+0x30],xmm0
  a3a255:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  a3a25b:	c5 f8 13 46 40       	vmovlps QWORD PTR [rsi+0x40],xmm0
  a3a260:	c5 f8 77             	vzeroupper
  a3a263:	c3                   	ret
