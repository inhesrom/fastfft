
target/ticket19/selection-fix/vector-stack-anchor/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000009745c0 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  9745c0:	55                   	push   rbp
  9745c1:	48 89 e5             	mov    rbp,rsp
  9745c4:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  9745c8:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
  9745cf:	c6 44 24 40 00       	mov    BYTE PTR [rsp+0x40],0x0
  9745d4:	48 8d 44 24 40       	lea    rax,[rsp+0x40]
  9745d9:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  9745de:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  9745e3:	c5 fb 12 47 28       	vmovddup xmm0,QWORD PTR [rdi+0x28]
  9745e8:	c4 e3 79 0d 47 20 01 	vblendpd xmm0,xmm0,XMMWORD PTR [rdi+0x20],0x1
  9745ef:	c5 fd 10 0f          	vmovupd ymm1,YMMWORD PTR [rdi]
  9745f3:	c5 fd 10 57 30       	vmovupd ymm2,YMMWORD PTR [rdi+0x30]
  9745f8:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  9745ff:	62 f1 fd 48 28 0d 37 	vmovapd zmm1,ZMMWORD PTR [rip+0xffffffffff712a37]        # 87040 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x144f0>
  974606:	2a 71 ff 
  974609:	c5 e1 57 db          	vxorpd xmm3,xmm3,xmm3
  97460d:	62 f1 fd 48 28 e0    	vmovapd zmm4,zmm0
  974613:	62 f2 f5 48 7f e3    	vpermt2pd zmm4,zmm1,zmm3
  974619:	62 f1 fd 48 28 2d 5d 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff712a5d]        # 87080 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x14530>
  974620:	2a 71 ff 
  974623:	c5 fb 12 77 58       	vmovddup xmm6,QWORD PTR [rdi+0x58]
  974628:	c4 e3 49 0d 77 50 01 	vblendpd xmm6,xmm6,XMMWORD PTR [rdi+0x50],0x1
  97462f:	62 f2 d5 48 7f c3    	vpermt2pd zmm0,zmm5,zmm3
  974635:	62 f3 6d 48 18 d6 02 	vinsertf32x4 zmm2,zmm2,xmm6,0x2
  97463c:	62 f2 ed 48 77 cb    	vpermi2pd zmm1,zmm2,zmm3
  974642:	62 f2 d5 48 7f d3    	vpermt2pd zmm2,zmm5,zmm3
  974648:	62 f1 fd 48 58 ea    	vaddpd zmm5,zmm0,zmm2
  97464e:	62 f1 dd 48 58 f1    	vaddpd zmm6,zmm4,zmm1
  974654:	62 f1 fd 48 5c c2    	vsubpd zmm0,zmm0,zmm2
  97465a:	62 f1 dd 48 5c c9    	vsubpd zmm1,zmm4,zmm1
  974660:	62 f1 fd 48 10 15 fe 	vmovupd zmm2,ZMMWORD PTR [rip+0xffffffffff7526fe]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  974667:	26 75 ff 
  97466a:	62 f2 ed 48 7f eb    	vpermt2pd zmm5,zmm2,zmm3
  974670:	62 f2 ed 48 7f c3    	vpermt2pd zmm0,zmm2,zmm3
  974676:	c5 d9 57 e4          	vxorpd xmm4,xmm4,xmm4
  97467a:	62 f2 ed 48 7f e4    	vpermt2pd zmm4,zmm2,zmm4
  974680:	62 f1 fd 48 10 3d 5e 	vmovupd zmm7,ZMMWORD PTR [rip+0xffffffffff75265e]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  974687:	26 75 ff 
  97468a:	62 71 fd 48 28 c5    	vmovapd zmm8,zmm5
  974690:	62 72 c5 48 7f c4    	vpermt2pd zmm8,zmm7,zmm4
  974696:	62 71 fd 48 10 0d 88 	vmovupd zmm9,ZMMWORD PTR [rip+0xffffffffff752688]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  97469d:	26 75 ff 
  9746a0:	62 f2 b5 48 7f ec    	vpermt2pd zmm5,zmm9,zmm4
  9746a6:	62 71 fd 48 28 d0    	vmovapd zmm10,zmm0
  9746ac:	62 72 c5 48 7f d4    	vpermt2pd zmm10,zmm7,zmm4
  9746b2:	62 f2 b5 48 7f c4    	vpermt2pd zmm0,zmm9,zmm4
  9746b8:	62 f1 d5 48 14 c0    	vunpcklpd zmm0,zmm5,zmm0
  9746be:	62 d1 bd 48 14 ea    	vunpcklpd zmm5,zmm8,zmm10
  9746c4:	62 51 bd 48 15 c2    	vunpckhpd zmm8,zmm8,zmm10
  9746ca:	62 f2 ed 48 7f f3    	vpermt2pd zmm6,zmm2,zmm3
  9746d0:	62 f2 ed 48 7f cb    	vpermt2pd zmm1,zmm2,zmm3
  9746d6:	62 f1 fd 48 28 d6    	vmovapd zmm2,zmm6
  9746dc:	62 f2 c5 48 7f d4    	vpermt2pd zmm2,zmm7,zmm4
  9746e2:	62 f2 b5 48 7f f4    	vpermt2pd zmm6,zmm9,zmm4
  9746e8:	62 f2 f5 48 77 fc    	vpermi2pd zmm7,zmm1,zmm4
  9746ee:	62 f2 b5 48 7f cc    	vpermt2pd zmm1,zmm9,zmm4
  9746f4:	62 f1 cd 48 14 c9    	vunpcklpd zmm1,zmm6,zmm1
  9746fa:	62 f1 ed 48 14 df    	vunpcklpd zmm3,zmm2,zmm7
  974700:	62 f1 ed 48 15 d7    	vunpckhpd zmm2,zmm2,zmm7
  974706:	62 f1 fd 48 10 62 02 	vmovupd zmm4,ZMMWORD PTR [rdx+0x80]
  97470d:	62 f1 fd 48 10 72 03 	vmovupd zmm6,ZMMWORD PTR [rdx+0xc0]
  974714:	62 f1 fd 48 10 7a 04 	vmovupd zmm7,ZMMWORD PTR [rdx+0x100]
  97471b:	62 71 fd 48 10 4a 05 	vmovupd zmm9,ZMMWORD PTR [rdx+0x140]
  974722:	62 71 bd 48 59 d4    	vmulpd zmm10,zmm8,zmm4
  974728:	62 72 ed 48 bc d6    	vfnmadd231pd zmm10,zmm2,zmm6
  97472e:	62 71 fd 48 59 df    	vmulpd zmm11,zmm0,zmm7
  974734:	62 52 f5 48 bc d9    	vfnmadd231pd zmm11,zmm1,zmm9
  97473a:	62 51 ad 48 58 e3    	vaddpd zmm12,zmm10,zmm11
  974740:	62 f1 ed 48 59 d4    	vmulpd zmm2,zmm2,zmm4
  974746:	62 f2 bd 48 b8 d6    	vfmadd231pd zmm2,zmm8,zmm6
  97474c:	62 f1 f5 48 59 cf    	vmulpd zmm1,zmm1,zmm7
  974752:	62 d2 fd 48 b8 c9    	vfmadd231pd zmm1,zmm0,zmm9
  974758:	62 f1 ed 48 58 c1    	vaddpd zmm0,zmm2,zmm1
  97475e:	62 f2 fd 48 19 25 30 	vbroadcastsd zmm4,QWORD PTR [rip+0xffffffffff700330]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  974765:	03 70 ff 
  974768:	62 f1 fd 48 28 f4    	vmovapd zmm6,zmm4
  97476e:	62 f2 9d 48 ac f5    	vfnmadd213pd zmm6,zmm12,zmm5
  974774:	62 f2 fd 48 ac e3    	vfnmadd213pd zmm4,zmm0,zmm3
  97477a:	c5 9d 58 ed          	vaddpd ymm5,ymm12,ymm5
  97477e:	c5 e5 58 c0          	vaddpd ymm0,ymm3,ymm0
  974782:	c5 fd 28 1d d6 23 70 	vmovapd ymm3,YMMWORD PTR [rip+0xffffffffff7023d6]        # 76b60 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4010>
  974789:	ff 
  97478a:	62 f2 e5 28 7f c5    	vpermt2pd ymm0,ymm3,ymm5
  974790:	c5 fd 11 06          	vmovupd YMMWORD PTR [rsi],ymm0
  974794:	c4 e2 7d 19 05 83 04 	vbroadcastsd ymm0,QWORD PTR [rip+0xffffffffff700483]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  97479b:	70 ff 
  97479d:	c5 ed 5c c9          	vsubpd ymm1,ymm2,ymm1
  9747a1:	c5 f5 59 c8          	vmulpd ymm1,ymm1,ymm0
  9747a5:	c5 cd 58 d1          	vaddpd ymm2,ymm6,ymm1
  9747a9:	c4 c1 2d 5c eb       	vsubpd ymm5,ymm10,ymm11
  9747ae:	c5 d5 59 c0          	vmulpd ymm0,ymm5,ymm0
  9747b2:	c5 dd 5c e8          	vsubpd ymm5,ymm4,ymm0
  9747b6:	62 f2 e5 28 7f ea    	vpermt2pd ymm5,ymm3,ymm2
  9747bc:	c5 fd 11 6e 20       	vmovupd YMMWORD PTR [rsi+0x20],ymm5
  9747c1:	c5 cd 5c c9          	vsubpd ymm1,ymm6,ymm1
  9747c5:	c5 dd 58 c0          	vaddpd ymm0,ymm4,ymm0
  9747c9:	62 f2 e5 28 7f c1    	vpermt2pd ymm0,ymm3,ymm1
  9747cf:	c5 fd 11 46 40       	vmovupd YMMWORD PTR [rsi+0x40],ymm0
  9747d4:	48 89 ec             	mov    rsp,rbp
  9747d7:	5d                   	pop    rbp
  9747d8:	c5 f8 77             	vzeroupper
  9747db:	c3                   	ret
