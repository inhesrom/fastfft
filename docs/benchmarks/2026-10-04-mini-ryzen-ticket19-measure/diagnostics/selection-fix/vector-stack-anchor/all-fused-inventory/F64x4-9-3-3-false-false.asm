
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000008250c0 <<fastfft::isa::x86::F64x4 as fastfft::engine::small::SmallVector>::rectangle>:
  8250c0:	c5 fd 10 07          	vmovupd ymm0,YMMWORD PTR [rdi]
  8250c4:	c4 e3 7d 18 47 20 01 	vinsertf128 ymm0,ymm0,XMMWORD PTR [rdi+0x20],0x1
  8250cb:	c5 f9 10 4f 10       	vmovupd xmm1,XMMWORD PTR [rdi+0x10]
  8250d0:	c5 fd 14 d1          	vunpcklpd ymm2,ymm0,ymm1
  8250d4:	c5 fd 15 d9          	vunpckhpd ymm3,ymm0,ymm1
  8250d8:	c5 fd 10 47 30       	vmovupd ymm0,YMMWORD PTR [rdi+0x30]
  8250dd:	c4 e3 7d 18 47 50 01 	vinsertf128 ymm0,ymm0,XMMWORD PTR [rdi+0x50],0x1
  8250e4:	c5 f9 10 4f 40       	vmovupd xmm1,XMMWORD PTR [rdi+0x40]
  8250e9:	c5 fd 14 e1          	vunpcklpd ymm4,ymm0,ymm1
  8250ed:	c5 fd 15 c9          	vunpckhpd ymm1,ymm0,ymm1
  8250f1:	c5 fd 10 47 60       	vmovupd ymm0,YMMWORD PTR [rdi+0x60]
  8250f6:	c4 e3 7d 18 87 80 00 	vinsertf128 ymm0,ymm0,XMMWORD PTR [rdi+0x80],0x1
  8250fd:	00 00 01 
  825100:	c5 f9 10 6f 70       	vmovupd xmm5,XMMWORD PTR [rdi+0x70]
  825105:	c5 fd 14 f5          	vunpcklpd ymm6,ymm0,ymm5
  825109:	c5 fd 15 ed          	vunpckhpd ymm5,ymm0,ymm5
  82510d:	c5 dd 58 fe          	vaddpd ymm7,ymm4,ymm6
  825111:	c5 45 58 c2          	vaddpd ymm8,ymm7,ymm2
  825115:	c5 75 58 cd          	vaddpd ymm9,ymm1,ymm5
  825119:	c5 35 58 d3          	vaddpd ymm10,ymm9,ymm3
  82511d:	c4 e2 7d 19 05 72 f9 	vbroadcastsd ymm0,QWORD PTR [rip+0xffffffffff84f972]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  825124:	84 ff 
  825126:	c4 e2 fd ac fa       	vfnmadd213pd ymm7,ymm0,ymm2
  82512b:	c5 f5 5c d5          	vsubpd ymm2,ymm1,ymm5
  82512f:	c4 e2 7d 19 0d e8 fa 	vbroadcastsd ymm1,QWORD PTR [rip+0xffffffffff84fae8]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  825136:	84 ff 
  825138:	c5 ed 59 d1          	vmulpd ymm2,ymm2,ymm1
  82513c:	c5 c5 58 ea          	vaddpd ymm5,ymm7,ymm2
  825140:	c4 62 fd ac cb       	vfnmadd213pd ymm9,ymm0,ymm3
  825145:	c5 dd 5c de          	vsubpd ymm3,ymm4,ymm6
  825149:	c5 e5 59 d9          	vmulpd ymm3,ymm3,ymm1
  82514d:	c5 b5 5c e3          	vsubpd ymm4,ymm9,ymm3
  825151:	c5 c5 5c d2          	vsubpd ymm2,ymm7,ymm2
  825155:	c5 b5 58 db          	vaddpd ymm3,ymm9,ymm3
  825159:	c4 e3 3d 18 f2 01    	vinsertf128 ymm6,ymm8,xmm2,0x1
  82515f:	c4 e3 3d 06 d2 31    	vperm2f128 ymm2,ymm8,ymm2,0x31
  825165:	c5 f9 28 fd          	vmovapd xmm7,xmm5
  825169:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  82516f:	c5 ed 14 ed          	vunpcklpd ymm5,ymm2,ymm5
  825173:	c5 cd 14 d7          	vunpcklpd ymm2,ymm6,ymm7
  825177:	c5 cd 15 f7          	vunpckhpd ymm6,ymm6,ymm7
  82517b:	c4 e3 2d 18 fb 01    	vinsertf128 ymm7,ymm10,xmm3,0x1
  825181:	c4 e3 2d 06 db 31    	vperm2f128 ymm3,ymm10,ymm3,0x31
  825187:	c5 79 28 c4          	vmovapd xmm8,xmm4
  82518b:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  825191:	c5 e5 14 e4          	vunpcklpd ymm4,ymm3,ymm4
  825195:	c4 c1 45 14 d8       	vunpcklpd ymm3,ymm7,ymm8
  82519a:	c4 c1 45 15 f8       	vunpckhpd ymm7,ymm7,ymm8
  82519f:	c5 7d 10 42 40       	vmovupd ymm8,YMMWORD PTR [rdx+0x40]
  8251a4:	c5 7d 10 4a 60       	vmovupd ymm9,YMMWORD PTR [rdx+0x60]
  8251a9:	c5 7d 10 92 80 00 00 	vmovupd ymm10,YMMWORD PTR [rdx+0x80]
  8251b0:	00 
  8251b1:	c5 7d 10 9a a0 00 00 	vmovupd ymm11,YMMWORD PTR [rdx+0xa0]
  8251b8:	00 
  8251b9:	c5 3d 59 e6          	vmulpd ymm12,ymm8,ymm6
  8251bd:	c4 42 c5 bc e1       	vfnmadd231pd ymm12,ymm7,ymm9
  8251c2:	c5 2d 59 ed          	vmulpd ymm13,ymm10,ymm5
  8251c6:	c4 42 dd bc eb       	vfnmadd231pd ymm13,ymm4,ymm11
  8251cb:	c4 41 1d 58 f5       	vaddpd ymm14,ymm12,ymm13
  8251d0:	c5 bd 59 ff          	vmulpd ymm7,ymm8,ymm7
  8251d4:	c4 c2 cd b8 f9       	vfmadd231pd ymm7,ymm6,ymm9
  8251d9:	c5 ad 59 e4          	vmulpd ymm4,ymm10,ymm4
  8251dd:	c4 c2 d5 b8 e3       	vfmadd231pd ymm4,ymm5,ymm11
  8251e2:	c5 c5 58 ec          	vaddpd ymm5,ymm7,ymm4
  8251e6:	c5 fd 28 f0          	vmovapd ymm6,ymm0
  8251ea:	c4 e2 8d ac f2       	vfnmadd213pd ymm6,ymm14,ymm2
  8251ef:	c5 c5 5c e4          	vsubpd ymm4,ymm7,ymm4
  8251f3:	c5 dd 59 e1          	vmulpd ymm4,ymm4,ymm1
  8251f7:	c5 cd 58 fc          	vaddpd ymm7,ymm6,ymm4
  8251fb:	c4 e2 d5 ac c3       	vfnmadd213pd ymm0,ymm5,ymm3
  825200:	c4 41 1d 5c c5       	vsubpd ymm8,ymm12,ymm13
  825205:	c5 bd 59 c9          	vmulpd ymm1,ymm8,ymm1
  825209:	c5 7d 5c c1          	vsubpd ymm8,ymm0,ymm1
  82520d:	c5 cd 5c e4          	vsubpd ymm4,ymm6,ymm4
  825211:	c5 fd 58 c1          	vaddpd ymm0,ymm0,ymm1
  825215:	c5 8d 58 ca          	vaddpd ymm1,ymm14,ymm2
  825219:	c5 e5 58 d5          	vaddpd ymm2,ymm3,ymm5
  82521d:	c4 e3 fd 01 da 60    	vpermpd ymm3,ymm2,0x60
  825223:	c4 e3 fd 01 e9 d4    	vpermpd ymm5,ymm1,0xd4
  825229:	c4 e3 55 0d db 0a    	vblendpd ymm3,ymm5,ymm3,0xa
  82522f:	c5 fd 11 1e          	vmovupd YMMWORD PTR [rsi],ymm3
  825233:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  825239:	c4 e3 7d 19 c9 01    	vextractf128 xmm1,ymm1,0x1
  82523f:	c5 f1 14 ca          	vunpcklpd xmm1,xmm1,xmm2
  825243:	c5 f9 11 4e 20       	vmovupd XMMWORD PTR [rsi+0x20],xmm1
  825248:	c4 c3 fd 01 c8 60    	vpermpd ymm1,ymm8,0x60
  82524e:	c4 e3 fd 01 d7 d4    	vpermpd ymm2,ymm7,0xd4
  825254:	c4 e3 6d 0d c9 0a    	vblendpd ymm1,ymm2,ymm1,0xa
  82525a:	c5 fd 11 4e 30       	vmovupd YMMWORD PTR [rsi+0x30],ymm1
  82525f:	c4 63 7d 19 c1 01    	vextractf128 xmm1,ymm8,0x1
  825265:	c4 e3 7d 19 fa 01    	vextractf128 xmm2,ymm7,0x1
  82526b:	c5 e9 14 c9          	vunpcklpd xmm1,xmm2,xmm1
  82526f:	c5 f9 11 4e 50       	vmovupd XMMWORD PTR [rsi+0x50],xmm1
  825274:	c4 e3 fd 01 c8 60    	vpermpd ymm1,ymm0,0x60
  82527a:	c4 e3 fd 01 d4 d4    	vpermpd ymm2,ymm4,0xd4
  825280:	c4 e3 6d 0d c9 0a    	vblendpd ymm1,ymm2,ymm1,0xa
  825286:	c5 fd 11 4e 60       	vmovupd YMMWORD PTR [rsi+0x60],ymm1
  82528b:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  825291:	c4 e3 7d 19 e1 01    	vextractf128 xmm1,ymm4,0x1
  825297:	c5 f1 14 c0          	vunpcklpd xmm0,xmm1,xmm0
  82529b:	c5 f9 11 86 80 00 00 	vmovupd XMMWORD PTR [rsi+0x80],xmm0
  8252a2:	00 
  8252a3:	c5 f8 77             	vzeroupper
  8252a6:	c3                   	ret
