
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b6ee80 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle>:
  b6ee80:	c5 fd 10 07          	vmovupd ymm0,YMMWORD PTR [rdi]
  b6ee84:	c5 f9 10 4f 20       	vmovupd xmm1,XMMWORD PTR [rdi+0x20]
  b6ee89:	c4 e3 7d 06 c1 20    	vperm2f128 ymm0,ymm0,ymm1,0x20
  b6ee8f:	c5 f9 10 4f 10       	vmovupd xmm1,XMMWORD PTR [rdi+0x10]
  b6ee94:	c5 fd 14 d1          	vunpcklpd ymm2,ymm0,ymm1
  b6ee98:	c5 fd 15 c1          	vunpckhpd ymm0,ymm0,ymm1
  b6ee9c:	c5 fd 10 4f 30       	vmovupd ymm1,YMMWORD PTR [rdi+0x30]
  b6eea1:	c5 f9 10 5f 50       	vmovupd xmm3,XMMWORD PTR [rdi+0x50]
  b6eea6:	c4 e3 75 06 cb 20    	vperm2f128 ymm1,ymm1,ymm3,0x20
  b6eeac:	c5 f9 10 5f 40       	vmovupd xmm3,XMMWORD PTR [rdi+0x40]
  b6eeb1:	c5 f5 14 e3          	vunpcklpd ymm4,ymm1,ymm3
  b6eeb5:	c5 f5 15 cb          	vunpckhpd ymm1,ymm1,ymm3
  b6eeb9:	c5 fd 58 d9          	vaddpd ymm3,ymm0,ymm1
  b6eebd:	c5 ed 58 ec          	vaddpd ymm5,ymm2,ymm4
  b6eec1:	c5 fd 5c c1          	vsubpd ymm0,ymm0,ymm1
  b6eec5:	c5 ed 5c cc          	vsubpd ymm1,ymm2,ymm4
  b6eec9:	c5 f9 28 d3          	vmovapd xmm2,xmm3
  b6eecd:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  b6eed3:	c5 f9 28 e0          	vmovapd xmm4,xmm0
  b6eed7:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  b6eedd:	c5 e5 14 c0          	vunpcklpd ymm0,ymm3,ymm0
  b6eee1:	c5 ed 14 dc          	vunpcklpd ymm3,ymm2,ymm4
  b6eee5:	c5 ed 15 d4          	vunpckhpd ymm2,ymm2,ymm4
  b6eee9:	c5 f9 28 e5          	vmovapd xmm4,xmm5
  b6eeed:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  b6eef3:	c5 f9 28 f1          	vmovapd xmm6,xmm1
  b6eef7:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  b6eefd:	c5 d5 14 c9          	vunpcklpd ymm1,ymm5,ymm1
  b6ef01:	c5 dd 14 ee          	vunpcklpd ymm5,ymm4,ymm6
  b6ef05:	c5 dd 15 e6          	vunpckhpd ymm4,ymm4,ymm6
  b6ef09:	c5 fd 10 72 40       	vmovupd ymm6,YMMWORD PTR [rdx+0x40]
  b6ef0e:	c5 fd 10 7a 60       	vmovupd ymm7,YMMWORD PTR [rdx+0x60]
  b6ef13:	c5 7d 10 82 80 00 00 	vmovupd ymm8,YMMWORD PTR [rdx+0x80]
  b6ef1a:	00 
  b6ef1b:	c5 7d 10 8a a0 00 00 	vmovupd ymm9,YMMWORD PTR [rdx+0xa0]
  b6ef22:	00 
  b6ef23:	c5 6d 59 d6          	vmulpd ymm10,ymm2,ymm6
  b6ef27:	c4 62 dd bc d7       	vfnmadd231pd ymm10,ymm4,ymm7
  b6ef2c:	c5 3d 59 d8          	vmulpd ymm11,ymm8,ymm0
  b6ef30:	c4 42 f5 bc d9       	vfnmadd231pd ymm11,ymm1,ymm9
  b6ef35:	c4 41 2d 58 e3       	vaddpd ymm12,ymm10,ymm11
  b6ef3a:	c5 dd 59 e6          	vmulpd ymm4,ymm4,ymm6
  b6ef3e:	c4 e2 ed b8 e7       	vfmadd231pd ymm4,ymm2,ymm7
  b6ef43:	c5 bd 59 c9          	vmulpd ymm1,ymm8,ymm1
  b6ef47:	c4 c2 fd b8 c9       	vfmadd231pd ymm1,ymm0,ymm9
  b6ef4c:	c5 dd 58 c1          	vaddpd ymm0,ymm4,ymm1
  b6ef50:	c4 e2 7d 19 15 3f 5b 	vbroadcastsd ymm2,QWORD PTR [rip+0xffffffffff505b3f]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  b6ef57:	50 ff 
  b6ef59:	c5 fd 28 f2          	vmovapd ymm6,ymm2
  b6ef5d:	c4 e2 9d ac f3       	vfnmadd213pd ymm6,ymm12,ymm3
  b6ef62:	c5 dd 5c c9          	vsubpd ymm1,ymm4,ymm1
  b6ef66:	c4 e2 7d 19 25 b1 5c 	vbroadcastsd ymm4,QWORD PTR [rip+0xffffffffff505cb1]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  b6ef6d:	50 ff 
  b6ef6f:	c5 f5 59 cc          	vmulpd ymm1,ymm1,ymm4
  b6ef73:	c5 cd 58 f9          	vaddpd ymm7,ymm6,ymm1
  b6ef77:	c4 e2 fd ac d5       	vfnmadd213pd ymm2,ymm0,ymm5
  b6ef7c:	c4 41 2d 5c c3       	vsubpd ymm8,ymm10,ymm11
  b6ef81:	c5 bd 59 e4          	vmulpd ymm4,ymm8,ymm4
  b6ef85:	c5 6d 5c c4          	vsubpd ymm8,ymm2,ymm4
  b6ef89:	c5 cd 5c c9          	vsubpd ymm1,ymm6,ymm1
  b6ef8d:	c5 ed 58 d4          	vaddpd ymm2,ymm2,ymm4
  b6ef91:	c5 d5 58 c0          	vaddpd ymm0,ymm5,ymm0
  b6ef95:	c5 9d 58 db          	vaddpd ymm3,ymm12,ymm3
  b6ef99:	c5 fd 28 25 bf 7b 50 	vmovapd ymm4,YMMWORD PTR [rip+0xffffffffff507bbf]        # 76b60 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4010>
  b6efa0:	ff 
  b6efa1:	62 f2 dd 28 7f c3    	vpermt2pd ymm0,ymm4,ymm3
  b6efa7:	c5 fd 11 06          	vmovupd YMMWORD PTR [rsi],ymm0
  b6efab:	62 72 dd 28 7f c7    	vpermt2pd ymm8,ymm4,ymm7
  b6efb1:	c5 7d 11 46 20       	vmovupd YMMWORD PTR [rsi+0x20],ymm8
  b6efb6:	62 f2 dd 28 7f d1    	vpermt2pd ymm2,ymm4,ymm1
  b6efbc:	c5 fd 11 56 40       	vmovupd YMMWORD PTR [rsi+0x40],ymm2
  b6efc1:	c5 f8 77             	vzeroupper
  b6efc4:	c3                   	ret
