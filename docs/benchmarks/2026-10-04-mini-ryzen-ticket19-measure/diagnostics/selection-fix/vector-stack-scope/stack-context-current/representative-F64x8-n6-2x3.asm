
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000973180 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  973180:	c5 fb 12 47 28       	vmovddup xmm0,QWORD PTR [rdi+0x28]
  973185:	c4 e3 79 0d 47 20 01 	vblendpd xmm0,xmm0,XMMWORD PTR [rdi+0x20],0x1
  97318c:	c5 fd 10 0f          	vmovupd ymm1,YMMWORD PTR [rdi]
  973190:	c5 fd 10 57 30       	vmovupd ymm2,YMMWORD PTR [rdi+0x30]
  973195:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  97319c:	62 f1 fd 48 28 0d 9a 	vmovapd zmm1,ZMMWORD PTR [rip+0xffffffffff713e9a]        # 87040 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x144f0>
  9731a3:	3e 71 ff 
  9731a6:	c5 e1 57 db          	vxorpd xmm3,xmm3,xmm3
  9731aa:	62 f1 fd 48 28 e0    	vmovapd zmm4,zmm0
  9731b0:	62 f2 f5 48 7f e3    	vpermt2pd zmm4,zmm1,zmm3
  9731b6:	62 f1 fd 48 28 2d c0 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff713ec0]        # 87080 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x14530>
  9731bd:	3e 71 ff 
  9731c0:	c5 fb 12 77 58       	vmovddup xmm6,QWORD PTR [rdi+0x58]
  9731c5:	c4 e3 49 0d 77 50 01 	vblendpd xmm6,xmm6,XMMWORD PTR [rdi+0x50],0x1
  9731cc:	62 f2 d5 48 7f c3    	vpermt2pd zmm0,zmm5,zmm3
  9731d2:	62 f3 6d 48 18 d6 02 	vinsertf32x4 zmm2,zmm2,xmm6,0x2
  9731d9:	62 f2 ed 48 77 cb    	vpermi2pd zmm1,zmm2,zmm3
  9731df:	62 f2 d5 48 7f d3    	vpermt2pd zmm2,zmm5,zmm3
  9731e5:	62 f1 fd 48 58 ea    	vaddpd zmm5,zmm0,zmm2
  9731eb:	62 f1 dd 48 58 f1    	vaddpd zmm6,zmm4,zmm1
  9731f1:	62 f1 fd 48 5c c2    	vsubpd zmm0,zmm0,zmm2
  9731f7:	62 f1 dd 48 5c c9    	vsubpd zmm1,zmm4,zmm1
  9731fd:	62 f1 fd 48 10 15 61 	vmovupd zmm2,ZMMWORD PTR [rip+0xffffffffff753b61]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  973204:	3b 75 ff 
  973207:	62 f2 ed 48 7f eb    	vpermt2pd zmm5,zmm2,zmm3
  97320d:	62 f2 ed 48 7f c3    	vpermt2pd zmm0,zmm2,zmm3
  973213:	c5 d9 57 e4          	vxorpd xmm4,xmm4,xmm4
  973217:	62 f2 ed 48 7f e4    	vpermt2pd zmm4,zmm2,zmm4
  97321d:	62 f1 fd 48 10 3d c1 	vmovupd zmm7,ZMMWORD PTR [rip+0xffffffffff753ac1]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  973224:	3a 75 ff 
  973227:	62 71 fd 48 28 c5    	vmovapd zmm8,zmm5
  97322d:	62 72 c5 48 7f c4    	vpermt2pd zmm8,zmm7,zmm4
  973233:	62 71 fd 48 10 0d eb 	vmovupd zmm9,ZMMWORD PTR [rip+0xffffffffff753aeb]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  97323a:	3a 75 ff 
  97323d:	62 f2 b5 48 7f ec    	vpermt2pd zmm5,zmm9,zmm4
  973243:	62 71 fd 48 28 d0    	vmovapd zmm10,zmm0
  973249:	62 72 c5 48 7f d4    	vpermt2pd zmm10,zmm7,zmm4
  97324f:	62 f2 b5 48 7f c4    	vpermt2pd zmm0,zmm9,zmm4
  973255:	62 f1 d5 48 14 c0    	vunpcklpd zmm0,zmm5,zmm0
  97325b:	62 d1 bd 48 14 ea    	vunpcklpd zmm5,zmm8,zmm10
  973261:	62 51 bd 48 15 c2    	vunpckhpd zmm8,zmm8,zmm10
  973267:	62 f2 ed 48 7f f3    	vpermt2pd zmm6,zmm2,zmm3
  97326d:	62 f2 ed 48 7f cb    	vpermt2pd zmm1,zmm2,zmm3
  973273:	62 f1 fd 48 28 d6    	vmovapd zmm2,zmm6
  973279:	62 f2 c5 48 7f d4    	vpermt2pd zmm2,zmm7,zmm4
  97327f:	62 f2 b5 48 7f f4    	vpermt2pd zmm6,zmm9,zmm4
  973285:	62 f2 f5 48 77 fc    	vpermi2pd zmm7,zmm1,zmm4
  97328b:	62 f2 b5 48 7f cc    	vpermt2pd zmm1,zmm9,zmm4
  973291:	62 f1 cd 48 14 c9    	vunpcklpd zmm1,zmm6,zmm1
  973297:	62 f1 ed 48 14 df    	vunpcklpd zmm3,zmm2,zmm7
  97329d:	62 f1 ed 48 15 d7    	vunpckhpd zmm2,zmm2,zmm7
  9732a3:	62 f1 fd 48 10 62 02 	vmovupd zmm4,ZMMWORD PTR [rdx+0x80]
  9732aa:	62 f1 fd 48 10 72 03 	vmovupd zmm6,ZMMWORD PTR [rdx+0xc0]
  9732b1:	62 f1 fd 48 10 7a 04 	vmovupd zmm7,ZMMWORD PTR [rdx+0x100]
  9732b8:	62 71 fd 48 10 4a 05 	vmovupd zmm9,ZMMWORD PTR [rdx+0x140]
  9732bf:	62 71 bd 48 59 d4    	vmulpd zmm10,zmm8,zmm4
  9732c5:	62 72 ed 48 bc d6    	vfnmadd231pd zmm10,zmm2,zmm6
  9732cb:	62 71 fd 48 59 df    	vmulpd zmm11,zmm0,zmm7
  9732d1:	62 52 f5 48 bc d9    	vfnmadd231pd zmm11,zmm1,zmm9
  9732d7:	62 51 ad 48 58 e3    	vaddpd zmm12,zmm10,zmm11
  9732dd:	62 f1 ed 48 59 d4    	vmulpd zmm2,zmm2,zmm4
  9732e3:	62 f2 bd 48 b8 d6    	vfmadd231pd zmm2,zmm8,zmm6
  9732e9:	62 f1 f5 48 59 cf    	vmulpd zmm1,zmm1,zmm7
  9732ef:	62 d2 fd 48 b8 c9    	vfmadd231pd zmm1,zmm0,zmm9
  9732f5:	62 f1 ed 48 58 c1    	vaddpd zmm0,zmm2,zmm1
  9732fb:	62 f2 fd 48 19 25 93 	vbroadcastsd zmm4,QWORD PTR [rip+0xffffffffff701793]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  973302:	17 70 ff 
  973305:	62 f1 fd 48 28 f4    	vmovapd zmm6,zmm4
  97330b:	62 f2 9d 48 ac f5    	vfnmadd213pd zmm6,zmm12,zmm5
  973311:	62 f2 fd 48 ac e3    	vfnmadd213pd zmm4,zmm0,zmm3
  973317:	c5 9d 58 ed          	vaddpd ymm5,ymm12,ymm5
  97331b:	c5 e5 58 c0          	vaddpd ymm0,ymm3,ymm0
  97331f:	c5 fd 28 1d 39 38 70 	vmovapd ymm3,YMMWORD PTR [rip+0xffffffffff703839]        # 76b60 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4010>
  973326:	ff 
  973327:	62 f2 e5 28 7f c5    	vpermt2pd ymm0,ymm3,ymm5
  97332d:	c5 fd 11 06          	vmovupd YMMWORD PTR [rsi],ymm0
  973331:	c4 e2 7d 19 05 e6 18 	vbroadcastsd ymm0,QWORD PTR [rip+0xffffffffff7018e6]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  973338:	70 ff 
  97333a:	c5 ed 5c c9          	vsubpd ymm1,ymm2,ymm1
  97333e:	c5 f5 59 c8          	vmulpd ymm1,ymm1,ymm0
  973342:	c5 cd 58 d1          	vaddpd ymm2,ymm6,ymm1
  973346:	c4 c1 2d 5c eb       	vsubpd ymm5,ymm10,ymm11
  97334b:	c5 d5 59 c0          	vmulpd ymm0,ymm5,ymm0
  97334f:	c5 dd 5c e8          	vsubpd ymm5,ymm4,ymm0
  973353:	62 f2 e5 28 7f ea    	vpermt2pd ymm5,ymm3,ymm2
  973359:	c5 fd 11 6e 20       	vmovupd YMMWORD PTR [rsi+0x20],ymm5
  97335e:	c5 cd 5c c9          	vsubpd ymm1,ymm6,ymm1
  973362:	c5 dd 58 c0          	vaddpd ymm0,ymm4,ymm0
  973366:	62 f2 e5 28 7f c1    	vpermt2pd ymm0,ymm3,ymm1
  97336c:	c5 fd 11 46 40       	vmovupd YMMWORD PTR [rsi+0x40],ymm0
  973371:	c5 f8 77             	vzeroupper
  973374:	c3                   	ret
