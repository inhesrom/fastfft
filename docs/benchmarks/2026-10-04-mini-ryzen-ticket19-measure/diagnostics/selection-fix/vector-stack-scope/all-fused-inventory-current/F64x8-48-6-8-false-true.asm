
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000008f3580 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  8f3580:	62 f1 fd 48 10 05 de 	vmovupd zmm0,ZMMWORD PTR [rip+0xffffffffff7d37de]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  8f3587:	37 7d ff 
  8f358a:	62 f1 fd 48 10 0d 14 	vmovupd zmm1,ZMMWORD PTR [rip+0xffffffffff7d3814]        # c6da8 <crc32fast::table::CRC32_TABLE+0x9124>
  8f3591:	38 7d ff 
  8f3594:	62 f1 fd 48 10 15 4a 	vmovupd zmm2,ZMMWORD PTR [rip+0xffffffffff7d374a]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  8f359b:	37 7d ff 
  8f359e:	62 f1 fd 48 10 1d 80 	vmovupd zmm3,ZMMWORD PTR [rip+0xffffffffff7d3780]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  8f35a5:	37 7d ff 
  8f35a8:	48 c1 e2 08          	shl    rdx,0x8
  8f35ac:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  8f35b0:	31 d2                	xor    edx,edx
  8f35b2:	c4 41 39 57 c0       	vxorpd xmm8,xmm8,xmm8
  8f35b7:	c5 7d 28 15 41 37 78 	vmovapd ymm10,YMMWORD PTR [rip+0xffffffffff783741]        # 76d00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x41b0>
  8f35be:	ff 
  8f35bf:	62 71 fd 48 28 1d f7 	vmovapd zmm11,ZMMWORD PTR [rip+0xffffffffff789df7]        # 7d3c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xa870>
  8f35c6:	9d 78 ff 
  8f35c9:	62 f2 fd 48 19 35 4d 	vbroadcastsd zmm6,QWORD PTR [rip+0xffffffffff78164d]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  8f35d0:	16 78 ff 
  8f35d3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  8f35da:	84 00 00 00 00 00 
  8f35e0:	62 71 fd 48 10 24 17 	vmovupd zmm12,ZMMWORD PTR [rdi+rdx*1]
  8f35e7:	62 71 fd 48 10 74 17 	vmovupd zmm14,ZMMWORD PTR [rdi+rdx*1+0x40]
  8f35ee:	01 
  8f35ef:	62 71 fd 48 10 7c 17 	vmovupd zmm15,ZMMWORD PTR [rdi+rdx*1+0x80]
  8f35f6:	02 
  8f35f7:	62 e1 fd 48 10 44 17 	vmovupd zmm16,ZMMWORD PTR [rdi+rdx*1+0xc0]
  8f35fe:	03 
  8f35ff:	62 51 fd 48 28 ec    	vmovapd zmm13,zmm12
  8f3605:	62 f1 fd 48 28 25 31 	vmovapd zmm4,ZMMWORD PTR [rip+0xffffffffff789d31]        # 7d340 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xa7f0>
  8f360c:	9d 78 ff 
  8f360f:	62 52 dd 48 7f ee    	vpermt2pd zmm13,zmm4,zmm14
  8f3615:	62 f1 fd 48 28 2d 61 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff789d61]        # 7d380 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xa830>
  8f361c:	9d 78 ff 
  8f361f:	62 52 d5 48 7f e6    	vpermt2pd zmm12,zmm5,zmm14
  8f3625:	62 c1 fd 48 28 cf    	vmovapd zmm17,zmm15
  8f362b:	62 a2 dd 48 7f c8    	vpermt2pd zmm17,zmm4,zmm16
  8f3631:	62 32 d5 48 7f f8    	vpermt2pd zmm15,zmm5,zmm16
  8f3637:	62 e1 fd 48 10 44 17 	vmovupd zmm16,ZMMWORD PTR [rdi+rdx*1+0x100]
  8f363e:	04 
  8f363f:	62 71 fd 48 10 74 17 	vmovupd zmm14,ZMMWORD PTR [rdi+rdx*1+0x140]
  8f3646:	05 
  8f3647:	62 a1 fd 48 28 d0    	vmovapd zmm18,zmm16
  8f364d:	62 c2 dd 48 7f d6    	vpermt2pd zmm18,zmm4,zmm14
  8f3653:	62 c2 d5 48 7f c6    	vpermt2pd zmm16,zmm5,zmm14
  8f3659:	62 e1 fd 48 10 64 17 	vmovupd zmm20,ZMMWORD PTR [rdi+rdx*1+0x180]
  8f3660:	06 
  8f3661:	62 71 fd 48 10 74 17 	vmovupd zmm14,ZMMWORD PTR [rdi+rdx*1+0x1c0]
  8f3668:	07 
  8f3669:	62 a1 fd 48 28 ec    	vmovapd zmm21,zmm20
  8f366f:	62 c2 dd 48 7f ee    	vpermt2pd zmm21,zmm4,zmm14
  8f3675:	62 c2 d5 48 7f e6    	vpermt2pd zmm20,zmm5,zmm14
  8f367b:	62 e1 fd 48 10 74 17 	vmovupd zmm22,ZMMWORD PTR [rdi+rdx*1+0x200]
  8f3682:	08 
  8f3683:	62 71 fd 48 10 74 17 	vmovupd zmm14,ZMMWORD PTR [rdi+rdx*1+0x240]
  8f368a:	09 
  8f368b:	62 a1 fd 48 28 fe    	vmovapd zmm23,zmm22
  8f3691:	62 c2 dd 48 7f fe    	vpermt2pd zmm23,zmm4,zmm14
  8f3697:	62 c2 d5 48 7f f6    	vpermt2pd zmm22,zmm5,zmm14
  8f369d:	62 61 fd 48 10 44 17 	vmovupd zmm24,ZMMWORD PTR [rdi+rdx*1+0x280]
  8f36a4:	0a 
  8f36a5:	62 71 fd 48 10 74 17 	vmovupd zmm14,ZMMWORD PTR [rdi+rdx*1+0x2c0]
  8f36ac:	0b 
  8f36ad:	62 01 fd 48 28 c8    	vmovapd zmm25,zmm24
  8f36b3:	62 42 dd 48 7f ce    	vpermt2pd zmm25,zmm4,zmm14
  8f36b9:	62 42 d5 48 7f c6    	vpermt2pd zmm24,zmm5,zmm14
  8f36bf:	62 a1 ed 40 58 df    	vaddpd zmm19,zmm18,zmm23
  8f36c5:	62 21 95 48 58 db    	vaddpd zmm27,zmm13,zmm19
  8f36cb:	62 21 b5 40 58 d1    	vaddpd zmm26,zmm25,zmm17
  8f36d1:	62 01 d5 40 58 e2    	vaddpd zmm28,zmm21,zmm26
  8f36d7:	62 11 a5 40 58 f4    	vaddpd zmm14,zmm27,zmm28
  8f36dd:	62 21 fd 40 58 ee    	vaddpd zmm29,zmm16,zmm22
  8f36e3:	62 01 9d 48 58 f5    	vaddpd zmm30,zmm12,zmm29
  8f36e9:	62 41 bd 40 58 ff    	vaddpd zmm31,zmm24,zmm15
  8f36ef:	62 91 dd 40 58 ef    	vaddpd zmm5,zmm20,zmm31
  8f36f5:	62 f2 fd 48 19 25 99 	vbroadcastsd zmm4,QWORD PTR [rip+0xffffffffff781399]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  8f36fc:	13 78 ff 
  8f36ff:	62 32 dd 48 bc eb    	vfnmadd231pd zmm13,zmm4,zmm19
  8f3705:	62 e1 8d 40 58 dd    	vaddpd zmm19,zmm30,zmm5
  8f370b:	62 a1 fd 40 5c c6    	vsubpd zmm16,zmm16,zmm22
  8f3711:	62 e1 fd 40 59 c6    	vmulpd zmm16,zmm16,zmm6
  8f3717:	62 a1 95 48 58 f0    	vaddpd zmm22,zmm13,zmm16
  8f371d:	62 82 dd 48 bc ea    	vfnmadd231pd zmm21,zmm4,zmm26
  8f3723:	62 51 bd 40 5c ff    	vsubpd zmm15,zmm24,zmm15
  8f3729:	62 71 85 48 59 fe    	vmulpd zmm15,zmm15,zmm6
  8f372f:	62 d1 d5 40 58 ff    	vaddpd zmm7,zmm21,zmm15
  8f3735:	62 71 cd 40 5c cf    	vsubpd zmm9,zmm22,zmm7
  8f373b:	62 12 dd 48 bc e5    	vfnmadd231pd zmm12,zmm4,zmm29
  8f3741:	62 a1 ed 40 5c d7    	vsubpd zmm18,zmm18,zmm23
  8f3747:	62 e1 ed 40 59 d6    	vmulpd zmm18,zmm18,zmm6
  8f374d:	62 21 9d 48 5c ea    	vsubpd zmm29,zmm12,zmm18
  8f3753:	62 82 dd 48 bc e7    	vfnmadd231pd zmm20,zmm4,zmm31
  8f3759:	62 a1 b5 40 5c c9    	vsubpd zmm17,zmm25,zmm17
  8f375f:	62 e1 f5 40 59 ce    	vmulpd zmm17,zmm17,zmm6
  8f3765:	62 21 dd 40 5c c9    	vsubpd zmm25,zmm20,zmm17
  8f376b:	62 81 95 40 5c f9    	vsubpd zmm23,zmm29,zmm25
  8f3771:	62 31 95 48 5c e8    	vsubpd zmm13,zmm13,zmm16
  8f3777:	62 51 d5 40 5c ff    	vsubpd zmm15,zmm21,zmm15
  8f377d:	62 c1 95 48 58 c7    	vaddpd zmm16,zmm13,zmm15
  8f3783:	62 51 ed 40 58 e4    	vaddpd zmm12,zmm18,zmm12
  8f3789:	62 a1 f5 40 58 cc    	vaddpd zmm17,zmm17,zmm20
  8f378f:	62 21 9d 48 58 d1    	vaddpd zmm26,zmm12,zmm17
  8f3795:	62 81 a5 40 5c d4    	vsubpd zmm18,zmm27,zmm28
  8f379b:	62 61 8d 40 5c c5    	vsubpd zmm24,zmm30,zmm5
  8f37a1:	62 f1 cd 40 58 ef    	vaddpd zmm5,zmm22,zmm7
  8f37a7:	62 91 95 40 58 f9    	vaddpd zmm7,zmm29,zmm25
  8f37ad:	62 51 95 48 5c ef    	vsubpd zmm13,zmm13,zmm15
  8f37b3:	62 a1 9d 48 5c e1    	vsubpd zmm20,zmm12,zmm17
  8f37b9:	62 51 fd 48 28 fe    	vmovapd zmm15,zmm14
  8f37bf:	62 72 fd 48 7f fd    	vpermt2pd zmm15,zmm0,zmm5
  8f37c5:	62 72 f5 48 7f f5    	vpermt2pd zmm14,zmm1,zmm5
  8f37cb:	62 d1 fd 48 28 e9    	vmovapd zmm5,zmm9
  8f37d1:	62 d2 fd 48 7f ed    	vpermt2pd zmm5,zmm0,zmm13
  8f37d7:	62 52 f5 48 7f cd    	vpermt2pd zmm9,zmm1,zmm13
  8f37dd:	62 31 fd 48 28 e8    	vmovapd zmm13,zmm16
  8f37e3:	62 52 fd 48 7f e8    	vpermt2pd zmm13,zmm0,zmm8
  8f37e9:	62 c2 f5 48 7f c0    	vpermt2pd zmm16,zmm1,zmm8
  8f37ef:	62 a1 fd 48 28 ca    	vmovapd zmm17,zmm18
  8f37f5:	62 c2 fd 48 7f c8    	vpermt2pd zmm17,zmm0,zmm8
  8f37fb:	62 c2 f5 48 7f d0    	vpermt2pd zmm18,zmm1,zmm8
  8f3801:	62 51 fd 48 28 e7    	vmovapd zmm12,zmm15
  8f3807:	62 52 ed 48 7f e5    	vpermt2pd zmm12,zmm2,zmm13
  8f380d:	62 52 e5 48 7f fd    	vpermt2pd zmm15,zmm3,zmm13
  8f3813:	62 71 fd 48 28 ed    	vmovapd zmm13,zmm5
  8f3819:	62 32 ed 48 7f e9    	vpermt2pd zmm13,zmm2,zmm17
  8f381f:	62 b2 e5 48 7f e9    	vpermt2pd zmm5,zmm3,zmm17
  8f3825:	62 c1 fd 48 28 ee    	vmovapd zmm21,zmm14
  8f382b:	62 a2 ed 48 7f e8    	vpermt2pd zmm21,zmm2,zmm16
  8f3831:	62 32 e5 48 7f f0    	vpermt2pd zmm14,zmm3,zmm16
  8f3837:	62 c1 fd 48 28 c1    	vmovapd zmm16,zmm9
  8f383d:	62 a2 ed 48 7f c2    	vpermt2pd zmm16,zmm2,zmm18
  8f3843:	62 32 e5 48 7f ca    	vpermt2pd zmm9,zmm3,zmm18
  8f3849:	62 c1 9d 48 15 cd    	vunpckhpd zmm17,zmm12,zmm13
  8f384f:	62 e1 85 48 14 f5    	vunpcklpd zmm22,zmm15,zmm5
  8f3855:	62 71 85 48 15 fd    	vunpckhpd zmm15,zmm15,zmm5
  8f385b:	62 21 d5 40 14 c8    	vunpcklpd zmm25,zmm21,zmm16
  8f3861:	62 a1 d5 40 15 c0    	vunpckhpd zmm16,zmm21,zmm16
  8f3867:	62 c1 8d 48 14 e9    	vunpcklpd zmm21,zmm14,zmm9
  8f386d:	62 51 8d 48 15 f1    	vunpckhpd zmm14,zmm14,zmm9
  8f3873:	62 b1 fd 48 28 eb    	vmovapd zmm5,zmm19
  8f3879:	62 f2 fd 48 7f ef    	vpermt2pd zmm5,zmm0,zmm7
  8f387f:	62 e2 f5 48 7f df    	vpermt2pd zmm19,zmm1,zmm7
  8f3885:	62 b1 fd 48 28 ff    	vmovapd zmm7,zmm23
  8f388b:	62 b2 fd 48 7f fc    	vpermt2pd zmm7,zmm0,zmm20
  8f3891:	62 a2 f5 48 7f fc    	vpermt2pd zmm23,zmm1,zmm20
  8f3897:	62 11 fd 48 28 ca    	vmovapd zmm9,zmm26
  8f389d:	62 52 fd 48 7f c8    	vpermt2pd zmm9,zmm0,zmm8
  8f38a3:	62 42 f5 48 7f d0    	vpermt2pd zmm26,zmm1,zmm8
  8f38a9:	62 01 fd 48 28 d8    	vmovapd zmm27,zmm24
  8f38af:	62 42 fd 48 7f d8    	vpermt2pd zmm27,zmm0,zmm8
  8f38b5:	62 42 f5 48 7f c0    	vpermt2pd zmm24,zmm1,zmm8
  8f38bb:	62 e1 fd 48 28 d5    	vmovapd zmm18,zmm5
  8f38c1:	62 c2 ed 48 7f d1    	vpermt2pd zmm18,zmm2,zmm9
  8f38c7:	62 d2 e5 48 7f e9    	vpermt2pd zmm5,zmm3,zmm9
  8f38cd:	62 e1 fd 48 28 e7    	vmovapd zmm20,zmm7
  8f38d3:	62 82 ed 48 7f e3    	vpermt2pd zmm20,zmm2,zmm27
  8f38d9:	62 92 e5 48 7f fb    	vpermt2pd zmm7,zmm3,zmm27
  8f38df:	62 31 fd 48 28 cb    	vmovapd zmm9,zmm19
  8f38e5:	62 12 ed 48 7f ca    	vpermt2pd zmm9,zmm2,zmm26
  8f38eb:	62 82 e5 48 7f da    	vpermt2pd zmm19,zmm3,zmm26
  8f38f1:	62 21 fd 48 28 df    	vmovapd zmm27,zmm23
  8f38f7:	62 02 ed 48 7f d8    	vpermt2pd zmm27,zmm2,zmm24
  8f38fd:	62 82 e5 48 7f f8    	vpermt2pd zmm23,zmm3,zmm24
  8f3903:	62 21 ed 40 15 e4    	vunpckhpd zmm28,zmm18,zmm20
  8f3909:	62 61 d5 48 14 ef    	vunpcklpd zmm29,zmm5,zmm7
  8f390f:	62 61 d5 48 15 d7    	vunpckhpd zmm26,zmm5,zmm7
  8f3915:	62 91 b5 48 14 eb    	vunpcklpd zmm5,zmm9,zmm27
  8f391b:	62 01 b5 48 15 db    	vunpckhpd zmm27,zmm9,zmm27
  8f3921:	62 21 e5 40 15 c7    	vunpckhpd zmm24,zmm19,zmm23
  8f3927:	62 b1 e5 40 14 ff    	vunpcklpd zmm7,zmm19,zmm23
  8f392d:	62 71 fd 48 10 49 08 	vmovupd zmm9,ZMMWORD PTR [rcx+0x200]
  8f3934:	62 61 fd 48 10 71 09 	vmovupd zmm30,ZMMWORD PTR [rcx+0x240]
  8f393b:	62 c1 b5 40 59 d9    	vmulpd zmm19,zmm25,zmm9
  8f3941:	62 82 d5 48 bc de    	vfnmadd231pd zmm19,zmm5,zmm30
  8f3947:	62 c1 d5 48 59 f9    	vmulpd zmm23,zmm5,zmm9
  8f394d:	62 f1 fd 48 10 69 04 	vmovupd zmm5,ZMMWORD PTR [rcx+0x100]
  8f3954:	62 82 b5 40 b8 fe    	vfmadd231pd zmm23,zmm25,zmm30
  8f395a:	62 71 fd 48 10 49 05 	vmovupd zmm9,ZMMWORD PTR [rcx+0x140]
  8f3961:	62 61 cd 40 59 cd    	vmulpd zmm25,zmm22,zmm5
  8f3967:	62 42 95 40 bc c9    	vfnmadd231pd zmm25,zmm29,zmm9
  8f396d:	62 f1 95 40 59 ed    	vmulpd zmm5,zmm29,zmm5
  8f3973:	62 61 fd 48 10 69 0c 	vmovupd zmm29,ZMMWORD PTR [rcx+0x300]
  8f397a:	62 d2 cd 40 b8 e9    	vfmadd231pd zmm5,zmm22,zmm9
  8f3980:	62 71 fd 48 10 49 0d 	vmovupd zmm9,ZMMWORD PTR [rcx+0x340]
  8f3987:	62 81 d5 40 59 f5    	vmulpd zmm22,zmm21,zmm29
  8f398d:	62 c2 c5 48 bc f1    	vfnmadd231pd zmm22,zmm7,zmm9
  8f3993:	62 91 c5 48 59 fd    	vmulpd zmm7,zmm7,zmm29
  8f3999:	62 61 fd 48 10 69 02 	vmovupd zmm29,ZMMWORD PTR [rcx+0x80]
  8f39a0:	62 d2 d5 40 b8 f9    	vfmadd231pd zmm7,zmm21,zmm9
  8f39a6:	62 71 fd 48 10 49 03 	vmovupd zmm9,ZMMWORD PTR [rcx+0xc0]
  8f39ad:	62 81 f5 40 59 ed    	vmulpd zmm21,zmm17,zmm29
  8f39b3:	62 c2 9d 40 bc e9    	vfnmadd231pd zmm21,zmm28,zmm9
  8f39b9:	62 01 9d 40 59 e5    	vmulpd zmm28,zmm28,zmm29
  8f39bf:	62 61 fd 48 10 69 0a 	vmovupd zmm29,ZMMWORD PTR [rcx+0x280]
  8f39c6:	62 42 f5 40 b8 e1    	vfmadd231pd zmm28,zmm17,zmm9
  8f39cc:	62 71 fd 48 10 49 0b 	vmovupd zmm9,ZMMWORD PTR [rcx+0x2c0]
  8f39d3:	62 81 fd 40 59 cd    	vmulpd zmm17,zmm16,zmm29
  8f39d9:	62 c2 a5 40 bc c9    	vfnmadd231pd zmm17,zmm27,zmm9
  8f39df:	62 01 a5 40 59 dd    	vmulpd zmm27,zmm27,zmm29
  8f39e5:	62 61 fd 48 10 69 06 	vmovupd zmm29,ZMMWORD PTR [rcx+0x180]
  8f39ec:	62 42 fd 40 b8 d9    	vfmadd231pd zmm27,zmm16,zmm9
  8f39f2:	62 71 fd 48 10 49 07 	vmovupd zmm9,ZMMWORD PTR [rcx+0x1c0]
  8f39f9:	62 81 85 48 59 c5    	vmulpd zmm16,zmm15,zmm29
  8f39ff:	62 c2 ad 40 bc c1    	vfnmadd231pd zmm16,zmm26,zmm9
  8f3a05:	62 01 ad 40 59 d5    	vmulpd zmm26,zmm26,zmm29
  8f3a0b:	62 61 fd 48 10 69 0e 	vmovupd zmm29,ZMMWORD PTR [rcx+0x380]
  8f3a12:	62 42 85 48 b8 d1    	vfmadd231pd zmm26,zmm15,zmm9
  8f3a18:	62 71 fd 48 10 49 0f 	vmovupd zmm9,ZMMWORD PTR [rcx+0x3c0]
  8f3a1f:	62 11 8d 48 59 fd    	vmulpd zmm15,zmm14,zmm29
  8f3a25:	62 52 bd 40 bc f9    	vfnmadd231pd zmm15,zmm24,zmm9
  8f3a2b:	62 01 bd 40 59 c5    	vmulpd zmm24,zmm24,zmm29
  8f3a31:	62 42 8d 48 b8 c1    	vfmadd231pd zmm24,zmm14,zmm9
  8f3a37:	62 51 9d 48 14 cd    	vunpcklpd zmm9,zmm12,zmm13
  8f3a3d:	62 31 ed 40 14 e4    	vunpcklpd zmm12,zmm18,zmm20
  8f3a43:	62 31 b5 48 58 eb    	vaddpd zmm13,zmm9,zmm19
  8f3a49:	62 31 b5 48 5c cb    	vsubpd zmm9,zmm9,zmm19
  8f3a4f:	62 71 d5 48 58 f7    	vaddpd zmm14,zmm5,zmm7
  8f3a55:	62 f1 d5 48 5c ef    	vsubpd zmm5,zmm5,zmm7
  8f3a5b:	62 b1 d5 40 58 f9    	vaddpd zmm7,zmm21,zmm17
  8f3a61:	62 a1 d5 40 5c c9    	vsubpd zmm17,zmm21,zmm17
  8f3a67:	62 81 9d 40 58 d3    	vaddpd zmm18,zmm28,zmm27
  8f3a6d:	62 81 9d 40 5c db    	vsubpd zmm19,zmm28,zmm27
  8f3a73:	62 81 ad 40 58 e0    	vaddpd zmm20,zmm26,zmm24
  8f3a79:	62 81 ad 40 5c e8    	vsubpd zmm21,zmm26,zmm24
  8f3a7f:	62 41 fd 40 58 c7    	vaddpd zmm24,zmm16,zmm15
  8f3a85:	62 51 fd 40 5c ff    	vsubpd zmm15,zmm16,zmm15
  8f3a8b:	62 c1 c5 40 58 c4    	vaddpd zmm16,zmm23,zmm12
  8f3a91:	62 31 9d 48 5c e7    	vsubpd zmm12,zmm12,zmm23
  8f3a97:	62 a1 b5 40 58 fe    	vaddpd zmm23,zmm25,zmm22
  8f3a9d:	62 81 cd 40 5c f1    	vsubpd zmm22,zmm22,zmm25
  8f3aa3:	62 21 f5 40 58 cb    	vaddpd zmm25,zmm17,zmm19
  8f3aa9:	62 a1 e5 40 5c c9    	vsubpd zmm17,zmm19,zmm17
  8f3aaf:	62 c1 d5 40 5c df    	vsubpd zmm19,zmm21,zmm15
  8f3ab5:	62 31 85 48 58 fd    	vaddpd zmm15,zmm15,zmm21
  8f3abb:	62 a1 95 48 58 ef    	vaddpd zmm21,zmm13,zmm23
  8f3ac1:	62 31 95 48 5c ef    	vsubpd zmm13,zmm13,zmm23
  8f3ac7:	62 a1 ed 40 58 fc    	vaddpd zmm23,zmm18,zmm20
  8f3acd:	62 a1 ed 40 5c d4    	vsubpd zmm18,zmm18,zmm20
  8f3ad3:	62 a1 8d 48 58 e0    	vaddpd zmm20,zmm14,zmm16
  8f3ad9:	62 51 fd 40 5c f6    	vsubpd zmm14,zmm16,zmm14
  8f3adf:	62 81 c5 48 58 c0    	vaddpd zmm16,zmm7,zmm24
  8f3ae5:	62 f1 bd 40 5c ff    	vsubpd zmm7,zmm24,zmm7
  8f3aeb:	62 61 b5 48 58 c5    	vaddpd zmm24,zmm9,zmm5
  8f3af1:	62 f2 fd 48 19 25 a5 	vbroadcastsd zmm4,QWORD PTR [rip+0xffffffffff7813a5]        # 74ea0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2350>
  8f3af8:	13 78 ff 
  8f3afb:	62 61 b5 40 59 cc    	vmulpd zmm25,zmm25,zmm4
  8f3b01:	62 e1 e5 40 59 dc    	vmulpd zmm19,zmm19,zmm4
  8f3b07:	62 e1 f5 40 59 cc    	vmulpd zmm17,zmm17,zmm4
  8f3b0d:	62 71 85 48 59 fc    	vmulpd zmm15,zmm15,zmm4
  8f3b13:	62 f1 b5 48 5c ed    	vsubpd zmm5,zmm9,zmm5
  8f3b19:	62 51 f5 40 5c cf    	vsubpd zmm9,zmm17,zmm15
  8f3b1f:	62 51 f5 40 58 ff    	vaddpd zmm15,zmm17,zmm15
  8f3b25:	62 c1 cd 40 58 cc    	vaddpd zmm17,zmm22,zmm12
  8f3b2b:	62 31 9d 48 5c e6    	vsubpd zmm12,zmm12,zmm22
  8f3b31:	62 a1 b5 40 58 f3    	vaddpd zmm22,zmm25,zmm19
  8f3b37:	62 81 e5 40 5c d9    	vsubpd zmm19,zmm19,zmm25
  8f3b3d:	62 21 bd 40 58 ce    	vaddpd zmm25,zmm24,zmm22
  8f3b43:	62 a1 bd 40 5c f6    	vsubpd zmm22,zmm24,zmm22
  8f3b49:	62 41 f5 40 58 c1    	vaddpd zmm24,zmm17,zmm9
  8f3b4f:	62 51 f5 40 5c c9    	vsubpd zmm9,zmm17,zmm9
  8f3b55:	62 a1 95 48 58 ca    	vaddpd zmm17,zmm13,zmm18
  8f3b5b:	62 31 95 48 5c ea    	vsubpd zmm13,zmm13,zmm18
  8f3b61:	62 e1 8d 48 58 d7    	vaddpd zmm18,zmm14,zmm7
  8f3b67:	62 f1 8d 48 5c ff    	vsubpd zmm7,zmm14,zmm7
  8f3b6d:	62 51 d5 48 58 f7    	vaddpd zmm14,zmm5,zmm15
  8f3b73:	62 d1 d5 48 5c ef    	vsubpd zmm5,zmm5,zmm15
  8f3b79:	62 31 9d 48 58 fb    	vaddpd zmm15,zmm12,zmm19
  8f3b7f:	62 31 9d 48 5c e3    	vsubpd zmm12,zmm12,zmm19
  8f3b85:	62 a1 d5 40 5c d8    	vsubpd zmm19,zmm21,zmm16
  8f3b8b:	62 a1 d5 40 58 c0    	vaddpd zmm16,zmm21,zmm16
  8f3b91:	62 a1 dd 40 5c ef    	vsubpd zmm21,zmm20,zmm23
  8f3b97:	62 a1 dd 40 58 e7    	vaddpd zmm20,zmm20,zmm23
  8f3b9d:	62 a1 fd 48 28 f8    	vmovapd zmm23,zmm16
  8f3ba3:	62 a2 ad 48 7f fc    	vpermt2pd zmm23,zmm10,zmm20
  8f3ba9:	62 a2 a5 48 7f c4    	vpermt2pd zmm16,zmm11,zmm20
  8f3baf:	62 e1 fd 48 11 04 16 	vmovupd ZMMWORD PTR [rsi+rdx*1],zmm16
  8f3bb6:	62 e1 fd 28 11 7c 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x40],ymm23
  8f3bbd:	02 
  8f3bbe:	62 81 fd 48 28 c1    	vmovapd zmm16,zmm25
  8f3bc4:	62 82 ad 48 7f c0    	vpermt2pd zmm16,zmm10,zmm24
  8f3bca:	62 02 a5 48 7f c8    	vpermt2pd zmm25,zmm11,zmm24
  8f3bd0:	62 61 fd 48 11 8c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x60],zmm25
  8f3bd7:	60 00 00 00 
  8f3bdb:	62 e1 fd 28 11 44 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0xa0],ymm16
  8f3be2:	05 
  8f3be3:	62 a1 fd 48 28 c1    	vmovapd zmm16,zmm17
  8f3be9:	62 a2 ad 48 7f c2    	vpermt2pd zmm16,zmm10,zmm18
  8f3bef:	62 a2 a5 48 7f ca    	vpermt2pd zmm17,zmm11,zmm18
  8f3bf5:	62 e1 fd 48 11 4c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0xc0],zmm17
  8f3bfc:	03 
  8f3bfd:	62 e1 fd 28 11 44 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x100],ymm16
  8f3c04:	08 
  8f3c05:	62 c1 fd 48 28 c6    	vmovapd zmm16,zmm14
  8f3c0b:	62 c2 ad 48 7f c7    	vpermt2pd zmm16,zmm10,zmm15
  8f3c11:	62 52 a5 48 7f f7    	vpermt2pd zmm14,zmm11,zmm15
  8f3c17:	62 71 fd 48 11 b4 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x120],zmm14
  8f3c1e:	20 01 00 00 
  8f3c22:	62 e1 fd 28 11 44 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x160],ymm16
  8f3c29:	0b 
  8f3c2a:	62 31 fd 48 28 f3    	vmovapd zmm14,zmm19
  8f3c30:	62 32 ad 48 7f f5    	vpermt2pd zmm14,zmm10,zmm21
  8f3c36:	62 a2 a5 48 7f dd    	vpermt2pd zmm19,zmm11,zmm21
  8f3c3c:	62 e1 fd 48 11 5c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x180],zmm19
  8f3c43:	06 
  8f3c44:	c5 7d 11 b4 16 c0 01 	vmovupd YMMWORD PTR [rsi+rdx*1+0x1c0],ymm14
  8f3c4b:	00 00 
  8f3c4d:	62 31 fd 48 28 f6    	vmovapd zmm14,zmm22
  8f3c53:	62 52 ad 48 7f f1    	vpermt2pd zmm14,zmm10,zmm9
  8f3c59:	62 c2 a5 48 7f f1    	vpermt2pd zmm22,zmm11,zmm9
  8f3c5f:	62 e1 fd 48 11 b4 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x1e0],zmm22
  8f3c66:	e0 01 00 00 
  8f3c6a:	c5 7d 11 b4 16 20 02 	vmovupd YMMWORD PTR [rsi+rdx*1+0x220],ymm14
  8f3c71:	00 00 
  8f3c73:	62 51 fd 48 28 cd    	vmovapd zmm9,zmm13
  8f3c79:	62 72 ad 48 7f cf    	vpermt2pd zmm9,zmm10,zmm7
  8f3c7f:	62 72 a5 48 7f ef    	vpermt2pd zmm13,zmm11,zmm7
  8f3c85:	62 71 fd 48 11 6c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x240],zmm13
  8f3c8c:	09 
  8f3c8d:	c5 7d 11 8c 16 80 02 	vmovupd YMMWORD PTR [rsi+rdx*1+0x280],ymm9
  8f3c94:	00 00 
  8f3c96:	62 f1 fd 48 28 fd    	vmovapd zmm7,zmm5
  8f3c9c:	62 d2 ad 48 7f fc    	vpermt2pd zmm7,zmm10,zmm12
  8f3ca2:	62 d2 a5 48 7f ec    	vpermt2pd zmm5,zmm11,zmm12
  8f3ca8:	62 f1 fd 48 11 ac 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x2a0],zmm5
  8f3caf:	a0 02 00 00 
  8f3cb3:	c5 fd 11 bc 16 e0 02 	vmovupd YMMWORD PTR [rsi+rdx*1+0x2e0],ymm7
  8f3cba:	00 00 
  8f3cbc:	48 81 c2 00 03 00 00 	add    rdx,0x300
  8f3cc3:	48 39 d0             	cmp    rax,rdx
  8f3cc6:	0f 85 14 f9 ff ff    	jne    8f35e0 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle+0x60>
  8f3ccc:	c5 f8 77             	vzeroupper
  8f3ccf:	c3                   	ret
