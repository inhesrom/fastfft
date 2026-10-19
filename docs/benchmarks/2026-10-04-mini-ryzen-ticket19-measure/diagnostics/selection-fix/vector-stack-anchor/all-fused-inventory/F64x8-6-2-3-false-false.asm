
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000977600 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  977600:	c5 fb 12 47 28       	vmovddup xmm0,QWORD PTR [rdi+0x28]
  977605:	c4 e3 79 0d 47 20 01 	vblendpd xmm0,xmm0,XMMWORD PTR [rdi+0x20],0x1
  97760c:	c5 fd 10 0f          	vmovupd ymm1,YMMWORD PTR [rdi]
  977610:	c5 fd 10 57 30       	vmovupd ymm2,YMMWORD PTR [rdi+0x30]
  977615:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  97761c:	62 f1 fd 48 28 0d da 	vmovapd zmm1,ZMMWORD PTR [rip+0xffffffffff70feda]        # 87500 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x149b0>
  977623:	fe 70 ff 
  977626:	c5 e1 57 db          	vxorpd xmm3,xmm3,xmm3
  97762a:	62 f1 fd 48 28 e0    	vmovapd zmm4,zmm0
  977630:	62 f2 f5 48 7f e3    	vpermt2pd zmm4,zmm1,zmm3
  977636:	62 f1 fd 48 28 2d 00 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff70ff00]        # 87540 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x149f0>
  97763d:	ff 70 ff 
  977640:	c5 fb 12 77 58       	vmovddup xmm6,QWORD PTR [rdi+0x58]
  977645:	c4 e3 49 0d 77 50 01 	vblendpd xmm6,xmm6,XMMWORD PTR [rdi+0x50],0x1
  97764c:	62 f2 d5 48 7f c3    	vpermt2pd zmm0,zmm5,zmm3
  977652:	62 f3 6d 48 18 d6 02 	vinsertf32x4 zmm2,zmm2,xmm6,0x2
  977659:	62 f2 ed 48 77 cb    	vpermi2pd zmm1,zmm2,zmm3
  97765f:	62 f2 d5 48 7f d3    	vpermt2pd zmm2,zmm5,zmm3
  977665:	62 f1 dd 48 58 e9    	vaddpd zmm5,zmm4,zmm1
  97766b:	62 f1 fd 48 58 f2    	vaddpd zmm6,zmm0,zmm2
  977671:	62 f1 dd 48 5c c9    	vsubpd zmm1,zmm4,zmm1
  977677:	62 f1 fd 48 5c c2    	vsubpd zmm0,zmm0,zmm2
  97767d:	62 f1 fd 48 10 15 e1 	vmovupd zmm2,ZMMWORD PTR [rip+0xffffffffff74f6e1]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  977684:	f6 74 ff 
  977687:	62 f2 ed 48 7f eb    	vpermt2pd zmm5,zmm2,zmm3
  97768d:	62 f2 ed 48 7f cb    	vpermt2pd zmm1,zmm2,zmm3
  977693:	c5 d9 57 e4          	vxorpd xmm4,xmm4,xmm4
  977697:	62 f2 ed 48 7f e4    	vpermt2pd zmm4,zmm2,zmm4
  97769d:	62 f1 fd 48 10 3d 41 	vmovupd zmm7,ZMMWORD PTR [rip+0xffffffffff74f641]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  9776a4:	f6 74 ff 
  9776a7:	62 71 fd 48 28 c5    	vmovapd zmm8,zmm5
  9776ad:	62 72 c5 48 7f c4    	vpermt2pd zmm8,zmm7,zmm4
  9776b3:	62 71 fd 48 10 0d 6b 	vmovupd zmm9,ZMMWORD PTR [rip+0xffffffffff74f66b]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  9776ba:	f6 74 ff 
  9776bd:	62 f2 b5 48 7f ec    	vpermt2pd zmm5,zmm9,zmm4
  9776c3:	62 71 fd 48 28 d1    	vmovapd zmm10,zmm1
  9776c9:	62 72 c5 48 7f d4    	vpermt2pd zmm10,zmm7,zmm4
  9776cf:	62 f2 b5 48 7f cc    	vpermt2pd zmm1,zmm9,zmm4
  9776d5:	62 f1 d5 48 14 c9    	vunpcklpd zmm1,zmm5,zmm1
  9776db:	62 d1 bd 48 14 ea    	vunpcklpd zmm5,zmm8,zmm10
  9776e1:	62 51 bd 48 15 c2    	vunpckhpd zmm8,zmm8,zmm10
  9776e7:	62 f2 ed 48 7f f3    	vpermt2pd zmm6,zmm2,zmm3
  9776ed:	62 f2 ed 48 7f c3    	vpermt2pd zmm0,zmm2,zmm3
  9776f3:	62 f1 fd 48 28 d6    	vmovapd zmm2,zmm6
  9776f9:	62 f2 c5 48 7f d4    	vpermt2pd zmm2,zmm7,zmm4
  9776ff:	62 f2 b5 48 7f f4    	vpermt2pd zmm6,zmm9,zmm4
  977705:	62 f2 fd 48 77 fc    	vpermi2pd zmm7,zmm0,zmm4
  97770b:	62 f2 b5 48 7f c4    	vpermt2pd zmm0,zmm9,zmm4
  977711:	62 f1 cd 48 14 c0    	vunpcklpd zmm0,zmm6,zmm0
  977717:	62 f1 ed 48 14 df    	vunpcklpd zmm3,zmm2,zmm7
  97771d:	62 f1 ed 48 15 d7    	vunpckhpd zmm2,zmm2,zmm7
  977723:	62 f1 fd 48 10 62 02 	vmovupd zmm4,ZMMWORD PTR [rdx+0x80]
  97772a:	62 f1 fd 48 10 72 03 	vmovupd zmm6,ZMMWORD PTR [rdx+0xc0]
  977731:	62 f1 fd 48 10 7a 04 	vmovupd zmm7,ZMMWORD PTR [rdx+0x100]
  977738:	62 71 fd 48 10 4a 05 	vmovupd zmm9,ZMMWORD PTR [rdx+0x140]
  97773f:	62 71 bd 48 59 d4    	vmulpd zmm10,zmm8,zmm4
  977745:	62 72 ed 48 bc d6    	vfnmadd231pd zmm10,zmm2,zmm6
  97774b:	62 71 f5 48 59 df    	vmulpd zmm11,zmm1,zmm7
  977751:	62 52 fd 48 bc d9    	vfnmadd231pd zmm11,zmm0,zmm9
  977757:	62 51 ad 48 58 e3    	vaddpd zmm12,zmm10,zmm11
  97775d:	62 f1 ed 48 59 d4    	vmulpd zmm2,zmm2,zmm4
  977763:	62 f2 bd 48 b8 d6    	vfmadd231pd zmm2,zmm8,zmm6
  977769:	62 f1 fd 48 59 c7    	vmulpd zmm0,zmm0,zmm7
  97776f:	62 d2 f5 48 b8 c1    	vfmadd231pd zmm0,zmm1,zmm9
  977775:	62 f1 ed 48 58 c8    	vaddpd zmm1,zmm2,zmm0
  97777b:	62 f2 fd 48 19 25 13 	vbroadcastsd zmm4,QWORD PTR [rip+0xffffffffff6fd313]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  977782:	d3 6f ff 
  977785:	62 f1 fd 48 28 f4    	vmovapd zmm6,zmm4
  97778b:	62 f2 9d 48 ac f5    	vfnmadd213pd zmm6,zmm12,zmm5
  977791:	62 f2 f5 48 ac e3    	vfnmadd213pd zmm4,zmm1,zmm3
  977797:	c5 e5 58 c9          	vaddpd ymm1,ymm3,ymm1
  97779b:	c5 9d 58 dd          	vaddpd ymm3,ymm12,ymm5
  97779f:	c5 fd 28 2d b9 f3 6f 	vmovapd ymm5,YMMWORD PTR [rip+0xffffffffff6ff3b9]        # 76b60 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4010>
  9777a6:	ff 
  9777a7:	62 f2 d5 28 7f d9    	vpermt2pd ymm3,ymm5,ymm1
  9777ad:	c5 fd 11 1e          	vmovupd YMMWORD PTR [rsi],ymm3
  9777b1:	c4 e2 7d 19 0d 66 d4 	vbroadcastsd ymm1,QWORD PTR [rip+0xffffffffff6fd466]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  9777b8:	6f ff 
  9777ba:	c4 c1 2d 5c db       	vsubpd ymm3,ymm10,ymm11
  9777bf:	c5 e5 59 d9          	vmulpd ymm3,ymm3,ymm1
  9777c3:	c5 dd 5c fb          	vsubpd ymm7,ymm4,ymm3
  9777c7:	c5 ed 5c c0          	vsubpd ymm0,ymm2,ymm0
  9777cb:	c5 fd 59 c1          	vmulpd ymm0,ymm0,ymm1
  9777cf:	c5 cd 58 c8          	vaddpd ymm1,ymm6,ymm0
  9777d3:	62 f2 d5 28 7f cf    	vpermt2pd ymm1,ymm5,ymm7
  9777d9:	c5 fd 11 4e 20       	vmovupd YMMWORD PTR [rsi+0x20],ymm1
  9777de:	c5 dd 58 cb          	vaddpd ymm1,ymm4,ymm3
  9777e2:	c5 cd 5c c0          	vsubpd ymm0,ymm6,ymm0
  9777e6:	62 f2 d5 28 7f c1    	vpermt2pd ymm0,ymm5,ymm1
  9777ec:	c5 fd 11 46 40       	vmovupd YMMWORD PTR [rsi+0x40],ymm0
  9777f1:	c5 f8 77             	vzeroupper
  9777f4:	c3                   	ret
