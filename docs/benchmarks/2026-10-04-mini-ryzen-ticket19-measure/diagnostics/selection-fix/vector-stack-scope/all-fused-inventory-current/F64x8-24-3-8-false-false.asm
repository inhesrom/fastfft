
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000939600 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  939600:	62 f1 fd 48 28 05 b6 	vmovapd zmm0,ZMMWORD PTR [rip+0xffffffffff7490b6]        # 826c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xfb70>
  939607:	90 74 ff 
  93960a:	62 f1 fd 48 10 0f    	vmovupd zmm1,ZMMWORD PTR [rdi]
  939610:	62 f1 fd 48 10 57 01 	vmovupd zmm2,ZMMWORD PTR [rdi+0x40]
  939617:	62 f1 fd 48 10 5f 02 	vmovupd zmm3,ZMMWORD PTR [rdi+0x80]
  93961e:	62 f1 fd 48 10 67 03 	vmovupd zmm4,ZMMWORD PTR [rdi+0xc0]
  939625:	62 f1 fd 48 28 e9    	vmovapd zmm5,zmm1
  93962b:	62 f2 fd 48 7f ea    	vpermt2pd zmm5,zmm0,zmm2
  939631:	62 f1 fd 48 28 35 c5 	vmovapd zmm6,ZMMWORD PTR [rip+0xffffffffff7490c5]        # 82700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xfbb0>
  939638:	90 74 ff 
  93963b:	62 f2 cd 48 7f ca    	vpermt2pd zmm1,zmm6,zmm2
  939641:	62 f1 fd 48 28 d3    	vmovapd zmm2,zmm3
  939647:	62 f2 fd 48 7f d4    	vpermt2pd zmm2,zmm0,zmm4
  93964d:	62 f2 cd 48 7f dc    	vpermt2pd zmm3,zmm6,zmm4
  939653:	62 f1 fd 48 10 67 04 	vmovupd zmm4,ZMMWORD PTR [rdi+0x100]
  93965a:	62 f1 fd 48 10 7f 05 	vmovupd zmm7,ZMMWORD PTR [rdi+0x140]
  939661:	62 f2 dd 48 77 c7    	vpermi2pd zmm0,zmm4,zmm7
  939667:	62 f2 cd 48 7f e7    	vpermt2pd zmm4,zmm6,zmm7
  93966d:	62 f1 ed 48 58 f0    	vaddpd zmm6,zmm2,zmm0
  939673:	62 f1 d5 48 58 fe    	vaddpd zmm7,zmm5,zmm6
  939679:	62 71 e5 48 58 c4    	vaddpd zmm8,zmm3,zmm4
  93967f:	62 51 f5 48 58 c8    	vaddpd zmm9,zmm1,zmm8
  939685:	62 72 fd 48 19 15 09 	vbroadcastsd zmm10,QWORD PTR [rip+0xffffffffff73b409]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  93968c:	b4 73 ff 
  93968f:	62 f2 ad 48 bc ee    	vfnmadd231pd zmm5,zmm10,zmm6
  939695:	62 f1 e5 48 5c dc    	vsubpd zmm3,zmm3,zmm4
  93969b:	62 f2 fd 48 19 25 7b 	vbroadcastsd zmm4,QWORD PTR [rip+0xffffffffff73b57b]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  9396a2:	b5 73 ff 
  9396a5:	62 f1 e5 48 59 dc    	vmulpd zmm3,zmm3,zmm4
  9396ab:	62 71 d5 48 58 e3    	vaddpd zmm12,zmm5,zmm3
  9396b1:	62 d2 bd 48 bc ca    	vfnmadd231pd zmm1,zmm8,zmm10
  9396b7:	62 f1 ed 48 5c c0    	vsubpd zmm0,zmm2,zmm0
  9396bd:	62 f1 fd 48 59 c4    	vmulpd zmm0,zmm0,zmm4
  9396c3:	62 71 f5 48 5c f0    	vsubpd zmm14,zmm1,zmm0
  9396c9:	62 f1 d5 48 5c d3    	vsubpd zmm2,zmm5,zmm3
  9396cf:	62 71 fd 48 58 d9    	vaddpd zmm11,zmm0,zmm1
  9396d5:	62 71 fd 48 10 3d 89 	vmovupd zmm15,ZMMWORD PTR [rip+0xffffffffff78d689]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  9396dc:	d6 78 ff 
  9396df:	c5 d9 57 e4          	vxorpd xmm4,xmm4,xmm4
  9396e3:	62 f1 fd 48 28 df    	vmovapd zmm3,zmm7
  9396e9:	62 f2 85 48 7f dc    	vpermt2pd zmm3,zmm15,zmm4
  9396ef:	62 e1 fd 48 10 05 af 	vmovupd zmm16,ZMMWORD PTR [rip+0xffffffffff78d6af]        # c6da8 <crc32fast::table::CRC32_TABLE+0x9124>
  9396f6:	d6 78 ff 
  9396f9:	62 f2 fd 40 7f fc    	vpermt2pd zmm7,zmm16,zmm4
  9396ff:	62 d1 fd 48 28 ec    	vmovapd zmm5,zmm12
  939705:	62 f2 85 48 7f ec    	vpermt2pd zmm5,zmm15,zmm4
  93970b:	62 72 fd 40 7f e4    	vpermt2pd zmm12,zmm16,zmm4
  939711:	62 f1 fd 48 28 ca    	vmovapd zmm1,zmm2
  939717:	62 f2 85 48 7f cc    	vpermt2pd zmm1,zmm15,zmm4
  93971d:	62 f2 fd 40 7f d4    	vpermt2pd zmm2,zmm16,zmm4
  939723:	62 a1 f5 00 57 c9    	vxorpd xmm17,xmm17,xmm17
  939729:	62 a2 85 48 7f c9    	vpermt2pd zmm17,zmm15,zmm17
  93972f:	62 a1 ed 00 57 d2    	vxorpd xmm18,xmm18,xmm18
  939735:	62 a2 fd 40 7f d2    	vpermt2pd zmm18,zmm16,zmm18
  93973b:	62 e1 fd 48 10 1d a3 	vmovupd zmm19,ZMMWORD PTR [rip+0xffffffffff78d5a3]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  939742:	d5 78 ff 
  939745:	62 f1 fd 48 28 c3    	vmovapd zmm0,zmm3
  93974b:	62 f2 e5 40 7f c1    	vpermt2pd zmm0,zmm19,zmm1
  939751:	62 e1 fd 48 10 25 cd 	vmovupd zmm20,ZMMWORD PTR [rip+0xffffffffff78d5cd]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  939758:	d5 78 ff 
  93975b:	62 f2 dd 40 7f d9    	vpermt2pd zmm3,zmm20,zmm1
  939761:	62 f1 fd 48 28 cd    	vmovapd zmm1,zmm5
  939767:	62 b2 e5 40 7f c9    	vpermt2pd zmm1,zmm19,zmm17
  93976d:	62 b2 dd 40 7f e9    	vpermt2pd zmm5,zmm20,zmm17
  939773:	62 71 fd 48 28 c7    	vmovapd zmm8,zmm7
  939779:	62 72 e5 40 7f c2    	vpermt2pd zmm8,zmm19,zmm2
  93977f:	62 f2 dd 40 7f fa    	vpermt2pd zmm7,zmm20,zmm2
  939785:	62 d1 fd 48 28 d4    	vmovapd zmm2,zmm12
  93978b:	62 b2 e5 40 7f d2    	vpermt2pd zmm2,zmm19,zmm18
  939791:	62 32 dd 40 7f e2    	vpermt2pd zmm12,zmm20,zmm18
  939797:	62 f1 fd 48 15 f1    	vunpckhpd zmm6,zmm0,zmm1
  93979d:	62 71 e5 48 14 d5    	vunpcklpd zmm10,zmm3,zmm5
  9397a3:	62 f1 e5 48 15 dd    	vunpckhpd zmm3,zmm3,zmm5
  9397a9:	62 71 bd 48 14 ea    	vunpcklpd zmm13,zmm8,zmm2
  9397af:	62 f1 bd 48 15 ea    	vunpckhpd zmm5,zmm8,zmm2
  9397b5:	62 51 c5 48 14 c4    	vunpcklpd zmm8,zmm7,zmm12
  9397bb:	62 d1 c5 48 15 d4    	vunpckhpd zmm2,zmm7,zmm12
  9397c1:	62 51 fd 48 28 e1    	vmovapd zmm12,zmm9
  9397c7:	62 72 85 48 7f e4    	vpermt2pd zmm12,zmm15,zmm4
  9397cd:	62 72 fd 40 7f cc    	vpermt2pd zmm9,zmm16,zmm4
  9397d3:	62 c1 fd 48 28 ee    	vmovapd zmm21,zmm14
  9397d9:	62 e2 85 48 7f ec    	vpermt2pd zmm21,zmm15,zmm4
  9397df:	62 72 fd 40 7f f4    	vpermt2pd zmm14,zmm16,zmm4
  9397e5:	62 72 a5 48 77 fc    	vpermi2pd zmm15,zmm11,zmm4
  9397eb:	62 72 fd 40 7f dc    	vpermt2pd zmm11,zmm16,zmm4
  9397f1:	62 d1 fd 48 28 e4    	vmovapd zmm4,zmm12
  9397f7:	62 d2 e5 40 7f e7    	vpermt2pd zmm4,zmm19,zmm15
  9397fd:	62 52 dd 40 7f e7    	vpermt2pd zmm12,zmm20,zmm15
  939803:	62 b1 fd 48 28 fd    	vmovapd zmm7,zmm21
  939809:	62 b2 e5 40 7f f9    	vpermt2pd zmm7,zmm19,zmm17
  93980f:	62 a2 dd 40 7f e9    	vpermt2pd zmm21,zmm20,zmm17
  939815:	62 51 fd 48 28 f9    	vmovapd zmm15,zmm9
  93981b:	62 52 e5 40 7f fb    	vpermt2pd zmm15,zmm19,zmm11
  939821:	62 52 dd 40 7f cb    	vpermt2pd zmm9,zmm20,zmm11
  939827:	62 a2 8d 48 77 da    	vpermi2pd zmm19,zmm14,zmm18
  93982d:	62 32 dd 40 7f f2    	vpermt2pd zmm14,zmm20,zmm18
  939833:	62 e1 dd 48 15 c7    	vunpckhpd zmm16,zmm4,zmm7
  939839:	62 a1 9d 48 14 cd    	vunpcklpd zmm17,zmm12,zmm21
  93983f:	62 31 9d 48 15 e5    	vunpckhpd zmm12,zmm12,zmm21
  939845:	62 a1 85 48 14 d3    	vunpcklpd zmm18,zmm15,zmm19
  93984b:	62 31 85 48 15 fb    	vunpckhpd zmm15,zmm15,zmm19
  939851:	62 51 b5 48 15 de    	vunpckhpd zmm11,zmm9,zmm14
  939857:	62 c1 b5 48 14 de    	vunpcklpd zmm19,zmm9,zmm14
  93985d:	62 71 fd 48 10 72 08 	vmovupd zmm14,ZMMWORD PTR [rdx+0x200]
  939864:	62 e1 fd 48 10 62 09 	vmovupd zmm20,ZMMWORD PTR [rdx+0x240]
  93986b:	62 51 95 48 59 ce    	vmulpd zmm9,zmm13,zmm14
  939871:	62 32 ed 40 bc cc    	vfnmadd231pd zmm9,zmm18,zmm20
  939877:	62 51 ed 40 59 f6    	vmulpd zmm14,zmm18,zmm14
  93987d:	62 e1 fd 48 10 52 04 	vmovupd zmm18,ZMMWORD PTR [rdx+0x100]
  939884:	62 32 95 48 b8 f4    	vfmadd231pd zmm14,zmm13,zmm20
  93988a:	62 e1 fd 48 10 62 05 	vmovupd zmm20,ZMMWORD PTR [rdx+0x140]
  939891:	62 31 ad 48 59 ea    	vmulpd zmm13,zmm10,zmm18
  939897:	62 32 f5 40 bc ec    	vfnmadd231pd zmm13,zmm17,zmm20
  93989d:	62 a1 f5 40 59 ca    	vmulpd zmm17,zmm17,zmm18
  9398a3:	62 e1 fd 48 10 52 0c 	vmovupd zmm18,ZMMWORD PTR [rdx+0x300]
  9398aa:	62 a2 ad 48 b8 cc    	vfmadd231pd zmm17,zmm10,zmm20
  9398b0:	62 71 fd 48 10 52 0d 	vmovupd zmm10,ZMMWORD PTR [rdx+0x340]
  9398b7:	62 a1 bd 48 59 e2    	vmulpd zmm20,zmm8,zmm18
  9398bd:	62 c2 e5 40 bc e2    	vfnmadd231pd zmm20,zmm19,zmm10
  9398c3:	62 a1 e5 40 59 d2    	vmulpd zmm18,zmm19,zmm18
  9398c9:	62 e1 fd 48 10 5a 02 	vmovupd zmm19,ZMMWORD PTR [rdx+0x80]
  9398d0:	62 c2 bd 48 b8 d2    	vfmadd231pd zmm18,zmm8,zmm10
  9398d6:	62 71 fd 48 10 42 03 	vmovupd zmm8,ZMMWORD PTR [rdx+0xc0]
  9398dd:	62 31 cd 48 59 d3    	vmulpd zmm10,zmm6,zmm19
  9398e3:	62 52 fd 40 bc d0    	vfnmadd231pd zmm10,zmm16,zmm8
  9398e9:	62 a1 fd 40 59 c3    	vmulpd zmm16,zmm16,zmm19
  9398ef:	62 e1 fd 48 10 5a 0a 	vmovupd zmm19,ZMMWORD PTR [rdx+0x280]
  9398f6:	62 c2 cd 48 b8 c0    	vfmadd231pd zmm16,zmm6,zmm8
  9398fc:	62 f1 fd 48 10 72 0b 	vmovupd zmm6,ZMMWORD PTR [rdx+0x2c0]
  939903:	62 31 d5 48 59 c3    	vmulpd zmm8,zmm5,zmm19
  939909:	62 72 85 48 bc c6    	vfnmadd231pd zmm8,zmm15,zmm6
  93990f:	62 31 85 48 59 fb    	vmulpd zmm15,zmm15,zmm19
  939915:	62 e1 fd 48 10 5a 06 	vmovupd zmm19,ZMMWORD PTR [rdx+0x180]
  93991c:	62 72 d5 48 b8 fe    	vfmadd231pd zmm15,zmm5,zmm6
  939922:	62 f1 fd 48 10 6a 07 	vmovupd zmm5,ZMMWORD PTR [rdx+0x1c0]
  939929:	62 b1 e5 48 59 f3    	vmulpd zmm6,zmm3,zmm19
  93992f:	62 f2 9d 48 bc f5    	vfnmadd231pd zmm6,zmm12,zmm5
  939935:	62 31 9d 48 59 e3    	vmulpd zmm12,zmm12,zmm19
  93993b:	62 e1 fd 48 10 5a 0e 	vmovupd zmm19,ZMMWORD PTR [rdx+0x380]
  939942:	62 72 e5 48 b8 e5    	vfmadd231pd zmm12,zmm3,zmm5
  939948:	62 f1 fd 48 10 5a 0f 	vmovupd zmm3,ZMMWORD PTR [rdx+0x3c0]
  93994f:	62 b1 ed 48 59 eb    	vmulpd zmm5,zmm2,zmm19
  939955:	62 f2 a5 48 bc eb    	vfnmadd231pd zmm5,zmm11,zmm3
  93995b:	62 31 a5 48 59 db    	vmulpd zmm11,zmm11,zmm19
  939961:	62 72 ed 48 b8 db    	vfmadd231pd zmm11,zmm2,zmm3
  939967:	62 f1 fd 48 14 c1    	vunpcklpd zmm0,zmm0,zmm1
  93996d:	62 f1 dd 48 14 cf    	vunpcklpd zmm1,zmm4,zmm7
  939973:	62 d1 fd 48 58 d1    	vaddpd zmm2,zmm0,zmm9
  939979:	62 d1 fd 48 5c c1    	vsubpd zmm0,zmm0,zmm9
  93997f:	62 b1 f5 40 58 da    	vaddpd zmm3,zmm17,zmm18
  939985:	62 b1 f5 40 5c e2    	vsubpd zmm4,zmm17,zmm18
  93998b:	62 d1 ad 48 58 f8    	vaddpd zmm7,zmm10,zmm8
  939991:	62 51 ad 48 5c c0    	vsubpd zmm8,zmm10,zmm8
  939997:	62 51 fd 40 58 cf    	vaddpd zmm9,zmm16,zmm15
  93999d:	62 51 fd 40 5c d7    	vsubpd zmm10,zmm16,zmm15
  9399a3:	62 51 9d 48 58 fb    	vaddpd zmm15,zmm12,zmm11
  9399a9:	62 51 9d 48 5c db    	vsubpd zmm11,zmm12,zmm11
  9399af:	62 71 cd 48 58 e5    	vaddpd zmm12,zmm6,zmm5
  9399b5:	62 f1 cd 48 5c ed    	vsubpd zmm5,zmm6,zmm5
  9399bb:	62 f1 8d 48 58 f1    	vaddpd zmm6,zmm14,zmm1
  9399c1:	62 d1 f5 48 5c ce    	vsubpd zmm1,zmm1,zmm14
  9399c7:	62 31 95 48 58 f4    	vaddpd zmm14,zmm13,zmm20
  9399cd:	62 51 dd 40 5c ed    	vsubpd zmm13,zmm20,zmm13
  9399d3:	62 c1 bd 48 58 c2    	vaddpd zmm16,zmm8,zmm10
  9399d9:	62 51 ad 48 5c c0    	vsubpd zmm8,zmm10,zmm8
  9399df:	62 71 a5 48 5c d5    	vsubpd zmm10,zmm11,zmm5
  9399e5:	62 d1 d5 48 58 eb    	vaddpd zmm5,zmm5,zmm11
  9399eb:	62 72 fd 48 19 1d ab 	vbroadcastsd zmm11,QWORD PTR [rip+0xffffffffff73b4ab]        # 74ea0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2350>
  9399f2:	b4 73 ff 
  9399f5:	62 c1 fd 40 59 c3    	vmulpd zmm16,zmm16,zmm11
  9399fb:	62 51 ad 48 59 d3    	vmulpd zmm10,zmm10,zmm11
  939a01:	62 51 bd 48 59 c3    	vmulpd zmm8,zmm8,zmm11
  939a07:	62 d1 d5 48 59 eb    	vmulpd zmm5,zmm5,zmm11
  939a0d:	62 51 ed 48 58 de    	vaddpd zmm11,zmm2,zmm14
  939a13:	62 d1 ed 48 5c d6    	vsubpd zmm2,zmm2,zmm14
  939a19:	62 51 b5 48 58 f7    	vaddpd zmm14,zmm9,zmm15
  939a1f:	62 51 b5 48 5c cf    	vsubpd zmm9,zmm9,zmm15
  939a25:	62 71 e5 48 58 fe    	vaddpd zmm15,zmm3,zmm6
  939a2b:	62 f1 cd 48 5c db    	vsubpd zmm3,zmm6,zmm3
  939a31:	62 d1 c5 48 58 f4    	vaddpd zmm6,zmm7,zmm12
  939a37:	62 f1 9d 48 5c ff    	vsubpd zmm7,zmm12,zmm7
  939a3d:	62 71 fd 48 58 e4    	vaddpd zmm12,zmm0,zmm4
  939a43:	62 f1 fd 48 5c c4    	vsubpd zmm0,zmm0,zmm4
  939a49:	62 f1 bd 48 5c e5    	vsubpd zmm4,zmm8,zmm5
  939a4f:	62 f1 bd 48 58 ed    	vaddpd zmm5,zmm8,zmm5
  939a55:	62 71 95 48 58 c1    	vaddpd zmm8,zmm13,zmm1
  939a5b:	62 d1 f5 48 5c cd    	vsubpd zmm1,zmm1,zmm13
  939a61:	62 51 fd 40 58 ea    	vaddpd zmm13,zmm16,zmm10
  939a67:	62 31 ad 48 5c d0    	vsubpd zmm10,zmm10,zmm16
  939a6d:	62 c1 9d 48 58 c5    	vaddpd zmm16,zmm12,zmm13
  939a73:	62 51 9d 48 5c e5    	vsubpd zmm12,zmm12,zmm13
  939a79:	62 71 bd 48 58 ec    	vaddpd zmm13,zmm8,zmm4
  939a7f:	62 f1 bd 48 5c e4    	vsubpd zmm4,zmm8,zmm4
  939a85:	62 51 ed 48 58 c1    	vaddpd zmm8,zmm2,zmm9
  939a8b:	62 d1 ed 48 5c d1    	vsubpd zmm2,zmm2,zmm9
  939a91:	62 71 e5 48 58 cf    	vaddpd zmm9,zmm3,zmm7
  939a97:	62 f1 e5 48 5c df    	vsubpd zmm3,zmm3,zmm7
  939a9d:	62 f1 fd 48 58 fd    	vaddpd zmm7,zmm0,zmm5
  939aa3:	62 f1 fd 48 5c c5    	vsubpd zmm0,zmm0,zmm5
  939aa9:	62 d1 f5 48 58 ea    	vaddpd zmm5,zmm1,zmm10
  939aaf:	62 d1 f5 48 5c ca    	vsubpd zmm1,zmm1,zmm10
  939ab5:	62 71 a5 48 5c d6    	vsubpd zmm10,zmm11,zmm6
  939abb:	62 f1 a5 48 58 f6    	vaddpd zmm6,zmm11,zmm6
  939ac1:	62 51 85 48 5c de    	vsubpd zmm11,zmm15,zmm14
  939ac7:	62 51 85 48 58 f6    	vaddpd zmm14,zmm15,zmm14
  939acd:	62 71 fd 48 28 3d 69 	vmovapd zmm15,ZMMWORD PTR [rip+0xffffffffff748c69]        # 82740 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xfbf0>
  939ad4:	8c 74 ff 
  939ad7:	62 d2 85 48 7f f6    	vpermt2pd zmm6,zmm15,zmm14
  939add:	62 c2 85 48 7f c5    	vpermt2pd zmm16,zmm15,zmm13
  939ae3:	62 52 85 48 7f c1    	vpermt2pd zmm8,zmm15,zmm9
  939ae9:	62 f2 85 48 7f fd    	vpermt2pd zmm7,zmm15,zmm5
  939aef:	62 52 85 48 7f d3    	vpermt2pd zmm10,zmm15,zmm11
  939af5:	62 72 85 48 7f e4    	vpermt2pd zmm12,zmm15,zmm4
  939afb:	62 f2 85 48 7f d3    	vpermt2pd zmm2,zmm15,zmm3
  939b01:	62 f2 85 48 7f c1    	vpermt2pd zmm0,zmm15,zmm1
  939b07:	62 f3 7d 48 19 76 02 	vextractf32x4 XMMWORD PTR [rsi+0x20],zmm6,0x2
  939b0e:	02 
  939b0f:	c5 fd 11 36          	vmovupd YMMWORD PTR [rsi],ymm6
  939b13:	62 e3 7d 48 19 46 05 	vextractf32x4 XMMWORD PTR [rsi+0x50],zmm16,0x2
  939b1a:	02 
  939b1b:	62 e1 fd 28 11 86 30 	vmovupd YMMWORD PTR [rsi+0x30],ymm16
  939b22:	00 00 00 
  939b25:	62 73 7d 48 19 46 08 	vextractf32x4 XMMWORD PTR [rsi+0x80],zmm8,0x2
  939b2c:	02 
  939b2d:	c5 7d 11 46 60       	vmovupd YMMWORD PTR [rsi+0x60],ymm8
  939b32:	62 f3 7d 48 19 7e 0b 	vextractf32x4 XMMWORD PTR [rsi+0xb0],zmm7,0x2
  939b39:	02 
  939b3a:	c5 fd 11 be 90 00 00 	vmovupd YMMWORD PTR [rsi+0x90],ymm7
  939b41:	00 
  939b42:	62 73 7d 48 19 56 0e 	vextractf32x4 XMMWORD PTR [rsi+0xe0],zmm10,0x2
  939b49:	02 
  939b4a:	c5 7d 11 96 c0 00 00 	vmovupd YMMWORD PTR [rsi+0xc0],ymm10
  939b51:	00 
  939b52:	62 73 7d 48 19 66 11 	vextractf32x4 XMMWORD PTR [rsi+0x110],zmm12,0x2
  939b59:	02 
  939b5a:	c5 7d 11 a6 f0 00 00 	vmovupd YMMWORD PTR [rsi+0xf0],ymm12
  939b61:	00 
  939b62:	62 f3 7d 48 19 56 14 	vextractf32x4 XMMWORD PTR [rsi+0x140],zmm2,0x2
  939b69:	02 
  939b6a:	c5 fd 11 96 20 01 00 	vmovupd YMMWORD PTR [rsi+0x120],ymm2
  939b71:	00 
  939b72:	62 f3 7d 48 19 46 17 	vextractf32x4 XMMWORD PTR [rsi+0x170],zmm0,0x2
  939b79:	02 
  939b7a:	c5 fd 11 86 50 01 00 	vmovupd YMMWORD PTR [rsi+0x150],ymm0
  939b81:	00 
  939b82:	c5 f8 77             	vzeroupper
  939b85:	c3                   	ret
