
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000971f00 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  971f00:	c5 fb 12 47 28       	vmovddup xmm0,QWORD PTR [rdi+0x28]
  971f05:	c4 e3 79 0d 47 20 01 	vblendpd xmm0,xmm0,XMMWORD PTR [rdi+0x20],0x1
  971f0c:	c5 fd 10 0f          	vmovupd ymm1,YMMWORD PTR [rdi]
  971f10:	c5 fd 10 57 30       	vmovupd ymm2,YMMWORD PTR [rdi+0x30]
  971f15:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  971f1c:	62 f1 fd 48 28 0d 1a 	vmovapd zmm1,ZMMWORD PTR [rip+0xffffffffff71511a]        # 87040 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x144f0>
  971f23:	51 71 ff 
  971f26:	c5 e1 57 db          	vxorpd xmm3,xmm3,xmm3
  971f2a:	62 f1 fd 48 28 e0    	vmovapd zmm4,zmm0
  971f30:	62 f2 f5 48 7f e3    	vpermt2pd zmm4,zmm1,zmm3
  971f36:	62 f1 fd 48 28 2d 40 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff715140]        # 87080 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x14530>
  971f3d:	51 71 ff 
  971f40:	c5 fb 12 77 58       	vmovddup xmm6,QWORD PTR [rdi+0x58]
  971f45:	c4 e3 49 0d 77 50 01 	vblendpd xmm6,xmm6,XMMWORD PTR [rdi+0x50],0x1
  971f4c:	62 f2 d5 48 7f c3    	vpermt2pd zmm0,zmm5,zmm3
  971f52:	62 f3 6d 48 18 d6 02 	vinsertf32x4 zmm2,zmm2,xmm6,0x2
  971f59:	62 f2 ed 48 77 cb    	vpermi2pd zmm1,zmm2,zmm3
  971f5f:	62 f2 d5 48 7f d3    	vpermt2pd zmm2,zmm5,zmm3
  971f65:	62 f1 fd 48 58 ea    	vaddpd zmm5,zmm0,zmm2
  971f6b:	62 f1 dd 48 58 f1    	vaddpd zmm6,zmm4,zmm1
  971f71:	62 f1 fd 48 5c c2    	vsubpd zmm0,zmm0,zmm2
  971f77:	62 f1 dd 48 5c c9    	vsubpd zmm1,zmm4,zmm1
  971f7d:	62 f1 fd 48 10 15 e1 	vmovupd zmm2,ZMMWORD PTR [rip+0xffffffffff754de1]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  971f84:	4d 75 ff 
  971f87:	62 f2 ed 48 7f eb    	vpermt2pd zmm5,zmm2,zmm3
  971f8d:	62 f2 ed 48 7f c3    	vpermt2pd zmm0,zmm2,zmm3
  971f93:	c5 d9 57 e4          	vxorpd xmm4,xmm4,xmm4
  971f97:	62 f2 ed 48 7f e4    	vpermt2pd zmm4,zmm2,zmm4
  971f9d:	62 f1 fd 48 10 3d 41 	vmovupd zmm7,ZMMWORD PTR [rip+0xffffffffff754d41]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  971fa4:	4d 75 ff 
  971fa7:	62 71 fd 48 28 c5    	vmovapd zmm8,zmm5
  971fad:	62 72 c5 48 7f c4    	vpermt2pd zmm8,zmm7,zmm4
  971fb3:	62 71 fd 48 10 0d 6b 	vmovupd zmm9,ZMMWORD PTR [rip+0xffffffffff754d6b]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  971fba:	4d 75 ff 
  971fbd:	62 f2 b5 48 7f ec    	vpermt2pd zmm5,zmm9,zmm4
  971fc3:	62 71 fd 48 28 d0    	vmovapd zmm10,zmm0
  971fc9:	62 72 c5 48 7f d4    	vpermt2pd zmm10,zmm7,zmm4
  971fcf:	62 f2 b5 48 7f c4    	vpermt2pd zmm0,zmm9,zmm4
  971fd5:	62 f1 d5 48 14 c0    	vunpcklpd zmm0,zmm5,zmm0
  971fdb:	62 d1 bd 48 14 ea    	vunpcklpd zmm5,zmm8,zmm10
  971fe1:	62 51 bd 48 15 c2    	vunpckhpd zmm8,zmm8,zmm10
  971fe7:	62 f2 ed 48 7f f3    	vpermt2pd zmm6,zmm2,zmm3
  971fed:	62 f2 ed 48 7f cb    	vpermt2pd zmm1,zmm2,zmm3
  971ff3:	62 f1 fd 48 28 d6    	vmovapd zmm2,zmm6
  971ff9:	62 f2 c5 48 7f d4    	vpermt2pd zmm2,zmm7,zmm4
  971fff:	62 f2 b5 48 7f f4    	vpermt2pd zmm6,zmm9,zmm4
  972005:	62 f2 f5 48 77 fc    	vpermi2pd zmm7,zmm1,zmm4
  97200b:	62 f2 b5 48 7f cc    	vpermt2pd zmm1,zmm9,zmm4
  972011:	62 f1 cd 48 14 c9    	vunpcklpd zmm1,zmm6,zmm1
  972017:	62 f1 ed 48 14 df    	vunpcklpd zmm3,zmm2,zmm7
  97201d:	62 f1 ed 48 15 d7    	vunpckhpd zmm2,zmm2,zmm7
  972023:	62 f1 fd 48 10 62 02 	vmovupd zmm4,ZMMWORD PTR [rdx+0x80]
  97202a:	62 f1 fd 48 10 72 03 	vmovupd zmm6,ZMMWORD PTR [rdx+0xc0]
  972031:	62 f1 fd 48 10 7a 04 	vmovupd zmm7,ZMMWORD PTR [rdx+0x100]
  972038:	62 71 fd 48 10 4a 05 	vmovupd zmm9,ZMMWORD PTR [rdx+0x140]
  97203f:	62 71 bd 48 59 d4    	vmulpd zmm10,zmm8,zmm4
  972045:	62 72 ed 48 bc d6    	vfnmadd231pd zmm10,zmm2,zmm6
  97204b:	62 71 fd 48 59 df    	vmulpd zmm11,zmm0,zmm7
  972051:	62 52 f5 48 bc d9    	vfnmadd231pd zmm11,zmm1,zmm9
  972057:	62 51 ad 48 58 e3    	vaddpd zmm12,zmm10,zmm11
  97205d:	62 f1 ed 48 59 d4    	vmulpd zmm2,zmm2,zmm4
  972063:	62 f2 bd 48 b8 d6    	vfmadd231pd zmm2,zmm8,zmm6
  972069:	62 f1 f5 48 59 cf    	vmulpd zmm1,zmm1,zmm7
  97206f:	62 d2 fd 48 b8 c9    	vfmadd231pd zmm1,zmm0,zmm9
  972075:	62 f1 ed 48 58 c1    	vaddpd zmm0,zmm2,zmm1
  97207b:	62 f2 fd 48 19 25 13 	vbroadcastsd zmm4,QWORD PTR [rip+0xffffffffff702a13]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  972082:	2a 70 ff 
  972085:	62 f1 fd 48 28 f4    	vmovapd zmm6,zmm4
  97208b:	62 f2 9d 48 ac f5    	vfnmadd213pd zmm6,zmm12,zmm5
  972091:	62 f2 fd 48 ac e3    	vfnmadd213pd zmm4,zmm0,zmm3
  972097:	c5 9d 58 ed          	vaddpd ymm5,ymm12,ymm5
  97209b:	c5 e5 58 c0          	vaddpd ymm0,ymm3,ymm0
  97209f:	c5 fd 28 1d b9 4a 70 	vmovapd ymm3,YMMWORD PTR [rip+0xffffffffff704ab9]        # 76b60 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4010>
  9720a6:	ff 
  9720a7:	62 f2 e5 28 7f c5    	vpermt2pd ymm0,ymm3,ymm5
  9720ad:	c5 fd 11 06          	vmovupd YMMWORD PTR [rsi],ymm0
  9720b1:	c4 e2 7d 19 05 66 2b 	vbroadcastsd ymm0,QWORD PTR [rip+0xffffffffff702b66]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  9720b8:	70 ff 
  9720ba:	c5 ed 5c c9          	vsubpd ymm1,ymm2,ymm1
  9720be:	c5 f5 59 c8          	vmulpd ymm1,ymm1,ymm0
  9720c2:	c5 cd 58 d1          	vaddpd ymm2,ymm6,ymm1
  9720c6:	c4 c1 2d 5c eb       	vsubpd ymm5,ymm10,ymm11
  9720cb:	c5 d5 59 c0          	vmulpd ymm0,ymm5,ymm0
  9720cf:	c5 dd 5c e8          	vsubpd ymm5,ymm4,ymm0
  9720d3:	62 f2 e5 28 7f ea    	vpermt2pd ymm5,ymm3,ymm2
  9720d9:	c5 fd 11 6e 20       	vmovupd YMMWORD PTR [rsi+0x20],ymm5
  9720de:	c5 cd 5c c9          	vsubpd ymm1,ymm6,ymm1
  9720e2:	c5 dd 58 c0          	vaddpd ymm0,ymm4,ymm0
  9720e6:	62 f2 e5 28 7f c1    	vpermt2pd ymm0,ymm3,ymm1
  9720ec:	c5 fd 11 46 40       	vmovupd YMMWORD PTR [rsi+0x40],ymm0
  9720f1:	c5 f8 77             	vzeroupper
  9720f4:	c3                   	ret
