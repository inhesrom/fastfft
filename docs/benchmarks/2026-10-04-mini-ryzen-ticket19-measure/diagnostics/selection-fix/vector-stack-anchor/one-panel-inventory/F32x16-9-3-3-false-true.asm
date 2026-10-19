
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a40fc0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a40fc0:	62 f1 7c 48 28 05 b6 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff685fb6]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a40fc7:	5f 68 ff 
  a40fca:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  a40fce:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a40fd2:	62 f2 7d 48 7f d2    	vpermt2ps zmm2,zmm0,zmm2
  a40fd8:	62 f1 7c 48 28 1d 1e 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff685f1e]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a40fdf:	5f 68 ff 
  a40fe2:	62 f1 7c 48 28 e2    	vmovaps zmm4,zmm2
  a40fe8:	62 f2 65 48 7f e2    	vpermt2ps zmm4,zmm3,zmm2
  a40fee:	62 f1 7c 48 28 2d 08 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff685e08]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a40ff5:	5e 68 ff 
  a40ff8:	62 f1 7c 48 28 35 3e 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff685e3e]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a40fff:	5e 68 ff 
  a41002:	48 c1 e2 03          	shl    rdx,0x3
  a41006:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  a4100a:	31 d2                	xor    edx,edx
  a4100c:	62 f1 7c 48 28 3d aa 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff650daa]        # 91dc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f270>
  a41013:	0d 65 ff 
  a41016:	62 72 7d 48 18 05 40 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff634440]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a4101d:	44 63 ff 
  a41020:	62 71 7c 48 28 0d d6 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff650dd6]        # 91e00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f2b0>
  a41027:	0d 65 ff 
  a4102a:	62 72 7d 48 18 15 a0 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff6342a0]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a41031:	42 63 ff 
  a41034:	c5 7c 28 1d 84 72 63 	vmovaps ymm11,YMMWORD PTR [rip+0xffffffffff637284]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  a4103b:	ff 
  a4103c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  a41040:	c5 7b 10 64 17 10    	vmovsd xmm12,QWORD PTR [rdi+rdx*1+0x10]
  a41046:	c5 78 10 2c 17       	vmovups xmm13,XMMWORD PTR [rdi+rdx*1]
  a4104b:	c5 78 10 74 17 18    	vmovups xmm14,XMMWORD PTR [rdi+rdx*1+0x18]
  a41051:	c5 78 10 7c 17 30    	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x30]
  a41057:	62 53 15 48 18 e4 01 	vinsertf32x4 zmm12,zmm13,xmm12,0x1
  a4105e:	62 51 7c 48 28 ec    	vmovaps zmm13,zmm12
  a41064:	62 72 45 48 7f e9    	vpermt2ps zmm13,zmm7,zmm1
  a4106a:	62 72 35 48 7f e1    	vpermt2ps zmm12,zmm9,zmm1
  a41070:	62 e1 ff 08 10 44 17 	vmovsd xmm16,QWORD PTR [rdi+rdx*1+0x28]
  a41077:	05 
  a41078:	62 33 0d 48 18 f0 01 	vinsertf32x4 zmm14,zmm14,xmm16,0x1
  a4107f:	62 c1 7c 48 28 c6    	vmovaps zmm16,zmm14
  a41085:	62 e2 45 48 7f c1    	vpermt2ps zmm16,zmm7,zmm1
  a4108b:	62 72 35 48 7f f1    	vpermt2ps zmm14,zmm9,zmm1
  a41091:	62 e1 ff 08 10 4c 17 	vmovsd xmm17,QWORD PTR [rdi+rdx*1+0x40]
  a41098:	08 
  a41099:	62 33 05 48 18 f9 01 	vinsertf32x4 zmm15,zmm15,xmm17,0x1
  a410a0:	62 c1 7c 48 28 cf    	vmovaps zmm17,zmm15
  a410a6:	62 e2 45 48 7f c9    	vpermt2ps zmm17,zmm7,zmm1
  a410ac:	62 72 35 48 7f f9    	vpermt2ps zmm15,zmm9,zmm1
  a410b2:	62 a1 7c 40 58 d1    	vaddps zmm18,zmm16,zmm17
  a410b8:	62 a1 14 48 58 da    	vaddps zmm19,zmm13,zmm18
  a410be:	62 c1 0c 48 58 e7    	vaddps zmm20,zmm14,zmm15
  a410c4:	62 a1 1c 48 58 ec    	vaddps zmm21,zmm12,zmm20
  a410ca:	62 32 3d 48 bc ea    	vfnmadd231ps zmm13,zmm8,zmm18
  a410d0:	62 51 0c 48 5c f7    	vsubps zmm14,zmm14,zmm15
  a410d6:	62 51 0c 48 59 f2    	vmulps zmm14,zmm14,zmm10
  a410dc:	62 51 14 48 58 fe    	vaddps zmm15,zmm13,zmm14
  a410e2:	62 32 3d 48 bc e4    	vfnmadd231ps zmm12,zmm8,zmm20
  a410e8:	62 a1 7c 40 5c c1    	vsubps zmm16,zmm16,zmm17
  a410ee:	62 c1 7c 40 59 c2    	vmulps zmm16,zmm16,zmm10
  a410f4:	62 a1 1c 48 5c c8    	vsubps zmm17,zmm12,zmm16
  a410fa:	62 51 14 48 5c ee    	vsubps zmm13,zmm13,zmm14
  a41100:	62 51 7c 40 58 e4    	vaddps zmm12,zmm16,zmm12
  a41106:	62 e2 7d 48 7f d9    	vpermt2ps zmm19,zmm0,zmm1
  a4110c:	62 72 7d 48 7f f9    	vpermt2ps zmm15,zmm0,zmm1
  a41112:	62 72 7d 48 7f e9    	vpermt2ps zmm13,zmm0,zmm1
  a41118:	62 e2 65 48 7f da    	vpermt2ps zmm19,zmm3,zmm2
  a4111e:	62 72 65 48 7f fa    	vpermt2ps zmm15,zmm3,zmm2
  a41124:	62 72 65 48 7f ea    	vpermt2ps zmm13,zmm3,zmm2
  a4112a:	62 51 e5 40 14 f5    	vunpcklpd zmm14,zmm19,zmm13
  a41130:	62 51 e5 40 15 ed    	vunpckhpd zmm13,zmm19,zmm13
  a41136:	62 e1 85 48 14 c4    	vunpcklpd zmm16,zmm15,zmm4
  a4113c:	62 71 85 48 15 fc    	vunpckhpd zmm15,zmm15,zmm4
  a41142:	62 c1 7c 48 28 d6    	vmovaps zmm18,zmm14
  a41148:	62 a2 55 48 7f d0    	vpermt2ps zmm18,zmm5,zmm16
  a4114e:	62 32 4d 48 7f f0    	vpermt2ps zmm14,zmm6,zmm16
  a41154:	62 52 55 48 7f ef    	vpermt2ps zmm13,zmm5,zmm15
  a4115a:	62 e2 7d 48 7f e9    	vpermt2ps zmm21,zmm0,zmm1
  a41160:	62 e2 7d 48 7f c9    	vpermt2ps zmm17,zmm0,zmm1
  a41166:	62 72 7d 48 7f e1    	vpermt2ps zmm12,zmm0,zmm1
  a4116c:	62 e2 65 48 7f ea    	vpermt2ps zmm21,zmm3,zmm2
  a41172:	62 e2 65 48 7f ca    	vpermt2ps zmm17,zmm3,zmm2
  a41178:	62 72 65 48 7f e2    	vpermt2ps zmm12,zmm3,zmm2
  a4117e:	62 51 d5 40 14 fc    	vunpcklpd zmm15,zmm21,zmm12
  a41184:	62 51 d5 40 15 e4    	vunpckhpd zmm12,zmm21,zmm12
  a4118a:	62 e1 f5 40 14 c4    	vunpcklpd zmm16,zmm17,zmm4
  a41190:	62 e1 f5 40 15 cc    	vunpckhpd zmm17,zmm17,zmm4
  a41196:	62 c1 7c 48 28 df    	vmovaps zmm19,zmm15
  a4119c:	62 a2 55 48 7f d8    	vpermt2ps zmm19,zmm5,zmm16
  a411a2:	62 32 4d 48 7f f8    	vpermt2ps zmm15,zmm6,zmm16
  a411a8:	62 32 55 48 7f e1    	vpermt2ps zmm12,zmm5,zmm17
  a411ae:	62 e1 7c 48 10 41 02 	vmovups zmm16,ZMMWORD PTR [rcx+0x80]
  a411b5:	62 e1 7c 48 10 49 03 	vmovups zmm17,ZMMWORD PTR [rcx+0xc0]
  a411bc:	62 e1 7c 48 10 61 04 	vmovups zmm20,ZMMWORD PTR [rcx+0x100]
  a411c3:	62 e1 7c 48 10 69 05 	vmovups zmm21,ZMMWORD PTR [rcx+0x140]
  a411ca:	62 a1 0c 48 59 f0    	vmulps zmm22,zmm14,zmm16
  a411d0:	62 a2 05 48 bc f1    	vfnmadd231ps zmm22,zmm15,zmm17
  a411d6:	62 a1 14 48 59 fc    	vmulps zmm23,zmm13,zmm20
  a411dc:	62 a2 1d 48 bc fd    	vfnmadd231ps zmm23,zmm12,zmm21
  a411e2:	62 21 4c 40 58 c7    	vaddps zmm24,zmm22,zmm23
  a411e8:	62 31 04 48 59 f8    	vmulps zmm15,zmm15,zmm16
  a411ee:	62 52 75 40 b8 fe    	vfmadd231ps zmm15,zmm17,zmm14
  a411f4:	62 31 1c 48 59 e4    	vmulps zmm12,zmm12,zmm20
  a411fa:	62 52 55 40 b8 e5    	vfmadd231ps zmm12,zmm21,zmm13
  a41200:	62 51 04 48 58 ec    	vaddps zmm13,zmm15,zmm12
  a41206:	62 51 7c 48 28 f0    	vmovaps zmm14,zmm8
  a4120c:	62 32 3d 40 ac f2    	vfnmadd213ps zmm14,zmm24,zmm18
  a41212:	62 c1 7c 48 28 c0    	vmovaps zmm16,zmm8
  a41218:	62 a2 15 48 ac c3    	vfnmadd213ps zmm16,zmm13,zmm19
  a4121e:	62 51 64 20 58 ed    	vaddps ymm13,ymm19,ymm13
  a41224:	62 81 6c 00 58 c8    	vaddps xmm17,xmm18,xmm24
  a4122a:	62 c2 25 28 7f cd    	vpermt2ps ymm17,ymm11,ymm13
  a41230:	62 e1 7c 08 11 0c 16 	vmovups XMMWORD PTR [rsi+rdx*1],xmm17
  a41237:	62 c3 7d 28 19 cd 01 	vextractf32x4 xmm13,ymm17,0x1
  a4123e:	c5 78 13 6c 16 10    	vmovlps QWORD PTR [rsi+rdx*1+0x10],xmm13
  a41244:	62 31 4c 20 5c ef    	vsubps ymm13,ymm22,ymm23
  a4124a:	c4 41 14 59 ea       	vmulps ymm13,ymm13,ymm10
  a4124f:	62 c1 7c 20 5c cd    	vsubps ymm17,ymm16,ymm13
  a41255:	c4 41 00 5c e4       	vsubps xmm12,xmm15,xmm12
  a4125a:	c4 41 18 59 e2       	vmulps xmm12,xmm12,xmm10
  a4125f:	c4 41 08 58 fc       	vaddps xmm15,xmm14,xmm12
  a41264:	62 32 25 28 7f f9    	vpermt2ps ymm15,ymm11,ymm17
  a4126a:	c5 78 11 7c 16 18    	vmovups XMMWORD PTR [rsi+rdx*1+0x18],xmm15
  a41270:	c4 43 7d 19 ff 01    	vextractf128 xmm15,ymm15,0x1
  a41276:	c5 78 13 7c 16 28    	vmovlps QWORD PTR [rsi+rdx*1+0x28],xmm15
  a4127c:	62 51 7c 20 58 ed    	vaddps ymm13,ymm16,ymm13
  a41282:	c4 41 08 5c e4       	vsubps xmm12,xmm14,xmm12
  a41287:	62 52 25 28 7f e5    	vpermt2ps ymm12,ymm11,ymm13
  a4128d:	c5 78 11 64 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm12
  a41293:	c4 43 7d 19 e4 01    	vextractf128 xmm12,ymm12,0x1
  a41299:	c5 78 13 64 16 40    	vmovlps QWORD PTR [rsi+rdx*1+0x40],xmm12
  a4129f:	48 83 c2 48          	add    rdx,0x48
  a412a3:	48 39 d0             	cmp    rax,rdx
  a412a6:	0f 85 94 fd ff ff    	jne    a41040 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x80>
  a412ac:	c5 f8 77             	vzeroupper
  a412af:	c3                   	ret
