
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a39740 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a39740:	62 f1 7c 48 28 05 36 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff68d836]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a39747:	d8 68 ff 
  a3974a:	62 f1 7c 48 28 0d 6c 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff68d86c]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a39751:	d8 68 ff 
  a39754:	c5 e0 57 db          	vxorps xmm3,xmm3,xmm3
  a39758:	62 f2 7d 48 7f db    	vpermt2ps zmm3,zmm0,zmm3
  a3975e:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a39762:	62 f2 75 48 7f c0    	vpermt2ps zmm0,zmm1,zmm0
  a39768:	62 f1 7c 48 11 84 24 	vmovups ZMMWORD PTR [rsp-0x48],zmm0
  a3976f:	b8 ff ff ff 
  a39773:	48 c1 e2 05          	shl    rdx,0x5
  a39777:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  a3977b:	31 d2                	xor    edx,edx
  a3977d:	0f 1f 00             	nop    DWORD PTR [rax]
  a39780:	62 71 7c 48 10 0c 17 	vmovups zmm9,ZMMWORD PTR [rdi+rdx*1]
  a39787:	c5 7b 10 54 17 40    	vmovsd xmm10,QWORD PTR [rdi+rdx*1+0x40]
  a3978d:	62 51 7c 48 28 e1    	vmovaps zmm12,zmm9
  a39793:	62 f1 7c 48 28 05 e3 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff657de3]        # 91580 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1ea30>
  a3979a:	7d 65 ff 
  a3979d:	62 52 7d 48 7f e2    	vpermt2ps zmm12,zmm0,zmm10
  a397a3:	62 f1 7c 48 28 0d 13 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff657e13]        # 915c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1ea70>
  a397aa:	7e 65 ff 
  a397ad:	62 52 75 48 7f ca    	vpermt2ps zmm9,zmm1,zmm10
  a397b3:	62 71 7c 48 10 94 17 	vmovups zmm10,ZMMWORD PTR [rdi+rdx*1+0x48]
  a397ba:	48 00 00 00 
  a397be:	c5 7b 10 ac 17 88 00 	vmovsd xmm13,QWORD PTR [rdi+rdx*1+0x88]
  a397c5:	00 00 
  a397c7:	62 51 7c 48 28 f2    	vmovaps zmm14,zmm10
  a397cd:	62 52 7d 48 7f f5    	vpermt2ps zmm14,zmm0,zmm13
  a397d3:	62 52 75 48 7f d5    	vpermt2ps zmm10,zmm1,zmm13
  a397d9:	62 71 7c 48 10 ac 17 	vmovups zmm13,ZMMWORD PTR [rdi+rdx*1+0x90]
  a397e0:	90 00 00 00 
  a397e4:	62 e1 ff 08 10 44 17 	vmovsd xmm16,QWORD PTR [rdi+rdx*1+0xd0]
  a397eb:	1a 
  a397ec:	62 c1 7c 48 28 cd    	vmovaps zmm17,zmm13
  a397f2:	62 a2 7d 48 7f c8    	vpermt2ps zmm17,zmm0,zmm16
  a397f8:	62 32 75 48 7f e8    	vpermt2ps zmm13,zmm1,zmm16
  a397fe:	62 e1 7c 48 10 84 17 	vmovups zmm16,ZMMWORD PTR [rdi+rdx*1+0xd8]
  a39805:	d8 00 00 00 
  a39809:	62 e1 ff 08 10 54 17 	vmovsd xmm18,QWORD PTR [rdi+rdx*1+0x118]
  a39810:	23 
  a39811:	62 a1 7c 48 28 e0    	vmovaps zmm20,zmm16
  a39817:	62 a2 7d 48 7f e2    	vpermt2ps zmm20,zmm0,zmm18
  a3981d:	62 a2 75 48 7f c2    	vpermt2ps zmm16,zmm1,zmm18
  a39823:	62 a1 1c 48 58 d1    	vaddps zmm18,zmm12,zmm17
  a39829:	62 a1 0c 48 58 f4    	vaddps zmm22,zmm14,zmm20
  a3982f:	62 a1 6c 40 58 fe    	vaddps zmm23,zmm18,zmm22
  a39835:	62 41 34 48 58 c5    	vaddps zmm24,zmm9,zmm13
  a3983b:	62 21 2c 48 58 c8    	vaddps zmm25,zmm10,zmm16
  a39841:	62 81 3c 40 58 e9    	vaddps zmm21,zmm24,zmm25
  a39847:	62 a1 1c 48 5c c9    	vsubps zmm17,zmm12,zmm17
  a3984d:	62 31 2c 48 5c d0    	vsubps zmm10,zmm10,zmm16
  a39853:	62 c1 74 40 58 c2    	vaddps zmm16,zmm17,zmm10
  a39859:	62 51 34 48 5c cd    	vsubps zmm9,zmm9,zmm13
  a3985f:	62 51 5c 40 5c ee    	vsubps zmm13,zmm20,zmm14
  a39865:	62 51 14 48 58 e1    	vaddps zmm12,zmm13,zmm9
  a3986b:	62 31 6c 40 5c f6    	vsubps zmm14,zmm18,zmm22
  a39871:	62 01 3c 40 5c f9    	vsubps zmm31,zmm24,zmm25
  a39877:	62 51 74 40 5c d2    	vsubps zmm10,zmm17,zmm10
  a3987d:	62 d1 34 48 5c c5    	vsubps zmm0,zmm9,zmm13
  a39883:	62 31 7c 48 28 cf    	vmovaps zmm9,zmm23
  a39889:	62 f1 7c 48 28 0d ed 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff68d6ed]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a39890:	d6 68 ff 
  a39893:	c4 41 00 57 ff       	vxorps xmm15,xmm15,xmm15
  a39898:	62 52 75 48 7f cf    	vpermt2ps zmm9,zmm1,zmm15
  a3989e:	62 f1 7c 48 28 35 18 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff68d718]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a398a5:	d7 68 ff 
  a398a8:	62 c2 4d 48 7f ff    	vpermt2ps zmm23,zmm6,zmm15
  a398ae:	62 31 7c 48 28 e8    	vmovaps zmm13,zmm16
  a398b4:	62 52 75 48 7f ef    	vpermt2ps zmm13,zmm1,zmm15
  a398ba:	62 c2 4d 48 7f c7    	vpermt2ps zmm16,zmm6,zmm15
  a398c0:	62 c1 7c 48 28 ce    	vmovaps zmm17,zmm14
  a398c6:	62 c2 75 48 7f cf    	vpermt2ps zmm17,zmm1,zmm15
  a398cc:	62 52 4d 48 7f f7    	vpermt2ps zmm14,zmm6,zmm15
  a398d2:	62 c1 7c 48 28 d2    	vmovaps zmm18,zmm10
  a398d8:	62 c2 75 48 7f d7    	vpermt2ps zmm18,zmm1,zmm15
  a398de:	62 52 4d 48 7f d7    	vpermt2ps zmm10,zmm6,zmm15
  a398e4:	62 c1 7c 48 28 e1    	vmovaps zmm20,zmm9
  a398ea:	62 f1 7c 48 28 2d 0c 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff68d60c]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a398f1:	d6 68 ff 
  a398f4:	62 e2 55 48 7f e3    	vpermt2ps zmm20,zmm5,zmm3
  a398fa:	62 f1 7c 48 28 3d 3c 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff68d63c]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a39901:	d6 68 ff 
  a39904:	62 72 45 48 7f cb    	vpermt2ps zmm9,zmm7,zmm3
  a3990a:	62 41 7c 48 28 c5    	vmovaps zmm24,zmm13
  a39910:	62 62 55 48 7f c3    	vpermt2ps zmm24,zmm5,zmm3
  a39916:	62 72 45 48 7f eb    	vpermt2ps zmm13,zmm7,zmm3
  a3991c:	62 21 7c 48 28 c9    	vmovaps zmm25,zmm17
  a39922:	62 62 55 48 7f cb    	vpermt2ps zmm25,zmm5,zmm3
  a39928:	62 e2 45 48 7f cb    	vpermt2ps zmm17,zmm7,zmm3
  a3992e:	62 21 7c 48 28 da    	vmovaps zmm27,zmm18
  a39934:	62 62 55 48 7f db    	vpermt2ps zmm27,zmm5,zmm3
  a3993a:	62 e2 45 48 7f d3    	vpermt2ps zmm18,zmm7,zmm3
  a39940:	62 f1 7c 48 10 a4 24 	vmovups zmm4,ZMMWORD PTR [rsp-0x48]
  a39947:	b8 ff ff ff 
  a3994b:	62 e2 55 48 7f fc    	vpermt2ps zmm23,zmm5,zmm4
  a39951:	62 e2 55 48 7f c4    	vpermt2ps zmm16,zmm5,zmm4
  a39957:	62 72 55 48 7f f4    	vpermt2ps zmm14,zmm5,zmm4
  a3995d:	62 c1 c5 40 14 f6    	vunpcklpd zmm22,zmm23,zmm14
  a39963:	62 72 55 48 7f d4    	vpermt2ps zmm10,zmm5,zmm4
  a39969:	62 51 fd 40 14 d2    	vunpcklpd zmm10,zmm16,zmm10
  a3996f:	62 01 dd 40 14 d1    	vunpcklpd zmm26,zmm20,zmm25
  a39975:	62 01 dd 40 15 e9    	vunpckhpd zmm29,zmm20,zmm25
  a3997b:	62 11 bd 40 14 f3    	vunpcklpd zmm14,zmm24,zmm27
  a39981:	62 81 bd 40 15 c3    	vunpckhpd zmm16,zmm24,zmm27
  a39987:	62 a1 b5 48 14 f9    	vunpcklpd zmm23,zmm9,zmm17
  a3998d:	62 21 b5 48 15 c9    	vunpckhpd zmm25,zmm9,zmm17
  a39993:	62 31 95 48 14 ca    	vunpcklpd zmm9,zmm13,zmm18
  a39999:	62 31 95 48 15 ea    	vunpckhpd zmm13,zmm13,zmm18
  a3999f:	62 91 7c 48 28 d2    	vmovaps zmm2,zmm26
  a399a5:	62 71 7c 48 28 05 51 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff68d451]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a399ac:	d4 68 ff 
  a399af:	62 d2 3d 48 7f d6    	vpermt2ps zmm2,zmm8,zmm14
  a399b5:	62 71 7c 48 28 1d 81 	vmovaps zmm11,ZMMWORD PTR [rip+0xffffffffff68d481]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a399bc:	d4 68 ff 
  a399bf:	62 42 25 48 7f d6    	vpermt2ps zmm26,zmm11,zmm14
  a399c5:	62 01 7c 48 28 c5    	vmovaps zmm24,zmm29
  a399cb:	62 22 3d 48 7f c0    	vpermt2ps zmm24,zmm8,zmm16
  a399d1:	62 22 25 48 7f e8    	vpermt2ps zmm29,zmm11,zmm16
  a399d7:	62 21 7c 48 28 df    	vmovaps zmm27,zmm23
  a399dd:	62 42 3d 48 7f d9    	vpermt2ps zmm27,zmm8,zmm9
  a399e3:	62 c2 25 48 7f f9    	vpermt2ps zmm23,zmm11,zmm9
  a399e9:	62 01 7c 48 28 f1    	vmovaps zmm30,zmm25
  a399ef:	62 42 3d 48 7f f5    	vpermt2ps zmm30,zmm8,zmm13
  a399f5:	62 42 25 48 7f cd    	vpermt2ps zmm25,zmm11,zmm13
  a399fb:	62 c2 3d 48 7f f2    	vpermt2ps zmm22,zmm8,zmm10
  a39a01:	62 31 7c 48 28 ed    	vmovaps zmm13,zmm21
  a39a07:	62 52 75 48 7f ef    	vpermt2ps zmm13,zmm1,zmm15
  a39a0d:	62 c2 4d 48 7f ef    	vpermt2ps zmm21,zmm6,zmm15
  a39a13:	62 c1 7c 48 28 c4    	vmovaps zmm16,zmm12
  a39a19:	62 c2 75 48 7f c7    	vpermt2ps zmm16,zmm1,zmm15
  a39a1f:	62 52 4d 48 7f e7    	vpermt2ps zmm12,zmm6,zmm15
  a39a25:	62 81 7c 48 28 cf    	vmovaps zmm17,zmm31
  a39a2b:	62 c2 75 48 7f cf    	vpermt2ps zmm17,zmm1,zmm15
  a39a31:	62 42 4d 48 7f ff    	vpermt2ps zmm31,zmm6,zmm15
  a39a37:	62 61 7c 48 28 e0    	vmovaps zmm28,zmm0
  a39a3d:	62 42 75 48 7f e7    	vpermt2ps zmm28,zmm1,zmm15
  a39a43:	62 d2 4d 48 7f c7    	vpermt2ps zmm0,zmm6,zmm15
  a39a49:	62 51 7c 48 28 d5    	vmovaps zmm10,zmm13
  a39a4f:	62 72 55 48 7f d3    	vpermt2ps zmm10,zmm5,zmm3
  a39a55:	62 72 45 48 7f eb    	vpermt2ps zmm13,zmm7,zmm3
  a39a5b:	62 31 7c 48 28 f0    	vmovaps zmm14,zmm16
  a39a61:	62 72 55 48 7f f3    	vpermt2ps zmm14,zmm5,zmm3
  a39a67:	62 e2 45 48 7f c3    	vpermt2ps zmm16,zmm7,zmm3
  a39a6d:	62 a1 7c 48 28 d1    	vmovaps zmm18,zmm17
  a39a73:	62 e2 55 48 7f d3    	vpermt2ps zmm18,zmm5,zmm3
  a39a79:	62 e2 45 48 7f cb    	vpermt2ps zmm17,zmm7,zmm3
  a39a7f:	62 91 7c 48 28 cc    	vmovaps zmm1,zmm28
  a39a85:	62 f2 55 48 7f cb    	vpermt2ps zmm1,zmm5,zmm3
  a39a8b:	62 62 45 48 7f e3    	vpermt2ps zmm28,zmm7,zmm3
  a39a91:	62 e2 55 48 7f ec    	vpermt2ps zmm21,zmm5,zmm4
  a39a97:	62 72 55 48 7f e4    	vpermt2ps zmm12,zmm5,zmm4
  a39a9d:	62 62 55 48 7f fc    	vpermt2ps zmm31,zmm5,zmm4
  a39aa3:	62 01 d5 40 14 ff    	vunpcklpd zmm31,zmm21,zmm31
  a39aa9:	62 f2 55 48 7f c4    	vpermt2ps zmm0,zmm5,zmm4
  a39aaf:	62 f1 9d 48 14 c0    	vunpcklpd zmm0,zmm12,zmm0
  a39ab5:	62 31 ad 48 14 ca    	vunpcklpd zmm9,zmm10,zmm18
  a39abb:	62 31 ad 48 15 d2    	vunpckhpd zmm10,zmm10,zmm18
  a39ac1:	62 71 8d 48 14 e1    	vunpcklpd zmm12,zmm14,zmm1
  a39ac7:	62 f1 8d 48 15 c9    	vunpckhpd zmm1,zmm14,zmm1
  a39acd:	62 31 95 48 14 f1    	vunpcklpd zmm14,zmm13,zmm17
  a39ad3:	62 a1 95 48 15 d1    	vunpckhpd zmm18,zmm13,zmm17
  a39ad9:	62 11 fd 40 14 ec    	vunpcklpd zmm13,zmm16,zmm28
  a39adf:	62 81 fd 40 15 cc    	vunpckhpd zmm17,zmm16,zmm28
  a39ae5:	62 c1 7c 48 28 e9    	vmovaps zmm21,zmm9
  a39aeb:	62 c2 3d 48 7f ec    	vpermt2ps zmm21,zmm8,zmm12
  a39af1:	62 52 25 48 7f cc    	vpermt2ps zmm9,zmm11,zmm12
  a39af7:	62 c1 7c 48 28 c2    	vmovaps zmm16,zmm10
  a39afd:	62 e2 3d 48 7f c1    	vpermt2ps zmm16,zmm8,zmm1
  a39b03:	62 72 25 48 7f d1    	vpermt2ps zmm10,zmm11,zmm1
  a39b09:	62 51 7c 48 28 e6    	vmovaps zmm12,zmm14
  a39b0f:	62 52 3d 48 7f e5    	vpermt2ps zmm12,zmm8,zmm13
  a39b15:	62 52 25 48 7f f5    	vpermt2ps zmm14,zmm11,zmm13
  a39b1b:	62 b1 7c 48 28 ca    	vmovaps zmm1,zmm18
  a39b21:	62 b2 3d 48 7f c9    	vpermt2ps zmm1,zmm8,zmm17
  a39b27:	62 a2 25 48 7f d1    	vpermt2ps zmm18,zmm11,zmm17
  a39b2d:	62 62 3d 48 7f f8    	vpermt2ps zmm31,zmm8,zmm0
  a39b33:	62 f1 7c 48 10 41 02 	vmovups zmm0,ZMMWORD PTR [rcx+0x80]
  a39b3a:	62 e1 7c 48 10 49 03 	vmovups zmm17,ZMMWORD PTR [rcx+0xc0]
  a39b41:	62 71 7c 48 10 69 06 	vmovups zmm13,ZMMWORD PTR [rcx+0x180]
  a39b48:	62 f1 7c 48 10 71 07 	vmovups zmm6,ZMMWORD PTR [rcx+0x1c0]
  a39b4f:	62 41 14 40 59 e5    	vmulps zmm28,zmm29,zmm13
  a39b55:	62 62 2d 48 bc e6    	vfnmadd231ps zmm28,zmm10,zmm6
  a39b5b:	62 51 2c 48 59 d5    	vmulps zmm10,zmm10,zmm13
  a39b61:	62 71 7c 48 10 41 0c 	vmovups zmm8,ZMMWORD PTR [rcx+0x300]
  a39b68:	62 12 4d 48 b8 d5    	vfmadd231ps zmm10,zmm6,zmm29
  a39b6e:	62 f1 7c 48 10 71 0d 	vmovups zmm6,ZMMWORD PTR [rcx+0x340]
  a39b75:	62 51 0c 40 59 e8    	vmulps zmm13,zmm30,zmm8
  a39b7b:	62 72 75 48 bc ee    	vfnmadd231ps zmm13,zmm1,zmm6
  a39b81:	62 d1 74 48 59 c8    	vmulps zmm1,zmm1,zmm8
  a39b87:	62 71 7c 48 10 41 04 	vmovups zmm8,ZMMWORD PTR [rcx+0x100]
  a39b8e:	62 92 4d 48 b8 ce    	vfmadd231ps zmm1,zmm6,zmm30
  a39b94:	62 f1 7c 48 10 71 05 	vmovups zmm6,ZMMWORD PTR [rcx+0x140]
  a39b9b:	62 61 2c 40 59 e8    	vmulps zmm29,zmm26,zmm0
  a39ba1:	62 22 35 48 bc e9    	vfnmadd231ps zmm29,zmm9,zmm17
  a39ba7:	62 61 34 48 59 f0    	vmulps zmm30,zmm9,zmm0
  a39bad:	62 f1 7c 48 10 41 08 	vmovups zmm0,ZMMWORD PTR [rcx+0x200]
  a39bb4:	62 02 75 40 b8 f2    	vfmadd231ps zmm30,zmm17,zmm26
  a39bba:	62 71 7c 48 10 49 09 	vmovups zmm9,ZMMWORD PTR [rcx+0x240]
  a39bc1:	62 e1 24 40 59 c8    	vmulps zmm17,zmm27,zmm0
  a39bc7:	62 c2 1d 48 bc c9    	vfnmadd231ps zmm17,zmm12,zmm9
  a39bcd:	62 f1 1c 48 59 c0    	vmulps zmm0,zmm12,zmm0
  a39bd3:	62 71 7c 48 10 61 0e 	vmovups zmm12,ZMMWORD PTR [rcx+0x380]
  a39bda:	62 92 35 48 b8 c3    	vfmadd231ps zmm0,zmm9,zmm27
  a39be0:	62 71 7c 48 10 49 0f 	vmovups zmm9,ZMMWORD PTR [rcx+0x3c0]
  a39be7:	62 41 34 40 59 d4    	vmulps zmm26,zmm25,zmm12
  a39bed:	62 42 6d 40 bc d1    	vfnmadd231ps zmm26,zmm18,zmm9
  a39bf3:	62 51 6c 40 59 e4    	vmulps zmm12,zmm18,zmm12
  a39bf9:	62 61 7c 48 10 59 0a 	vmovups zmm27,ZMMWORD PTR [rcx+0x280]
  a39c00:	62 12 35 48 b8 e1    	vfmadd231ps zmm12,zmm9,zmm25
  a39c06:	62 71 7c 48 10 49 0b 	vmovups zmm9,ZMMWORD PTR [rcx+0x2c0]
  a39c0d:	62 c1 3c 40 59 d0    	vmulps zmm18,zmm24,zmm8
  a39c13:	62 e2 7d 40 bc d6    	vfnmadd231ps zmm18,zmm16,zmm6
  a39c19:	62 c1 7c 40 59 c0    	vmulps zmm16,zmm16,zmm8
  a39c1f:	62 71 7c 48 10 41 10 	vmovups zmm8,ZMMWORD PTR [rcx+0x400]
  a39c26:	62 82 4d 48 b8 c0    	vfmadd231ps zmm16,zmm6,zmm24
  a39c2c:	62 f1 7c 48 10 71 11 	vmovups zmm6,ZMMWORD PTR [rcx+0x440]
  a39c33:	62 81 44 40 59 db    	vmulps zmm19,zmm23,zmm27
  a39c39:	62 c2 0d 48 bc d9    	vfnmadd231ps zmm19,zmm14,zmm9
  a39c3f:	62 11 0c 48 59 f3    	vmulps zmm14,zmm14,zmm27
  a39c45:	62 41 1c 40 58 c5    	vaddps zmm24,zmm28,zmm13
  a39c4b:	62 32 35 48 b8 f7    	vfmadd231ps zmm14,zmm9,zmm23
  a39c51:	62 01 6c 48 58 d8    	vaddps zmm27,zmm2,zmm24
  a39c57:	62 d1 4c 40 59 f8    	vmulps zmm7,zmm22,zmm8
  a39c5d:	62 f2 05 40 bc fe    	vfnmadd231ps zmm7,zmm31,zmm6
  a39c63:	62 51 04 40 59 c0    	vmulps zmm8,zmm31,zmm8
  a39c69:	62 11 74 40 58 ca    	vaddps zmm9,zmm17,zmm26
  a39c6f:	62 32 4d 48 b8 c6    	vfmadd231ps zmm8,zmm6,zmm22
  a39c75:	62 c1 14 40 58 f1    	vaddps zmm22,zmm29,zmm9
  a39c7b:	62 f1 64 40 58 f7    	vaddps zmm6,zmm19,zmm7
  a39c81:	62 e2 7d 48 18 25 d5 	vbroadcastss zmm20,DWORD PTR [rip+0xffffffffff63b7d5]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a39c88:	b7 63 ff 
  a39c8b:	62 92 5d 40 bc d0    	vfnmadd231ps zmm2,zmm20,zmm24
  a39c91:	62 61 2c 48 58 f9    	vaddps zmm31,zmm10,zmm1
  a39c97:	62 f1 2c 48 5c c9    	vsubps zmm1,zmm10,zmm1
  a39c9d:	62 e1 6c 40 58 fe    	vaddps zmm23,zmm18,zmm6
  a39ca3:	62 42 5d 40 bc e9    	vfnmadd231ps zmm29,zmm20,zmm9
  a39ca9:	62 51 7c 48 58 cc    	vaddps zmm9,zmm0,zmm12
  a39caf:	62 d1 7c 48 5c c4    	vsubps zmm0,zmm0,zmm12
  a39cb5:	62 41 0c 40 58 c1    	vaddps zmm24,zmm30,zmm9
  a39cbb:	62 42 5d 40 bc f1    	vfnmadd231ps zmm30,zmm20,zmm9
  a39cc1:	62 31 04 40 58 cd    	vaddps zmm9,zmm31,zmm21
  a39cc7:	62 11 74 40 5c d2    	vsubps zmm10,zmm17,zmm26
  a39ccd:	62 51 0c 48 58 e0    	vaddps zmm12,zmm14,zmm8
  a39cd3:	62 e2 5d 40 bc d6    	vfnmadd231ps zmm18,zmm20,zmm6
  a39cd9:	62 41 7c 40 58 cc    	vaddps zmm25,zmm16,zmm12
  a39cdf:	62 72 7d 48 18 3d eb 	vbroadcastss zmm15,DWORD PTR [rip+0xffffffffff63b5eb]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a39ce6:	b5 63 ff 
  a39ce9:	62 d1 74 48 59 cf    	vmulps zmm1,zmm1,zmm15
  a39cef:	62 d1 7c 48 59 c7    	vmulps zmm0,zmm0,zmm15
  a39cf5:	62 d1 0c 48 5c f0    	vsubps zmm6,zmm14,zmm8
  a39cfb:	62 71 14 40 58 c0    	vaddps zmm8,zmm29,zmm0
  a39d01:	62 c1 2c 48 59 cf    	vmulps zmm17,zmm10,zmm15
  a39d07:	62 c2 5d 40 bc c4    	vfnmadd231ps zmm16,zmm20,zmm12
  a39d0d:	62 31 0c 40 5c d1    	vsubps zmm10,zmm30,zmm17
  a39d13:	62 f1 64 40 5c ff    	vsubps zmm7,zmm19,zmm7
  a39d19:	62 72 7d 48 18 1d 45 	vbroadcastss zmm11,DWORD PTR [rip+0xffffffffff63b945]        # 75668 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b18>
  a39d20:	b9 63 ff 
  a39d23:	62 41 2c 48 59 d3    	vmulps zmm26,zmm10,zmm11
  a39d29:	62 e2 7d 48 18 1d a5 	vbroadcastss zmm19,DWORD PTR [rip+0xffffffffff63b7a5]        # 754d8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2988>
  a39d30:	b7 63 ff 
  a39d33:	62 22 3d 48 b8 d3    	vfmadd231ps zmm26,zmm8,zmm19
  a39d39:	62 d1 4c 48 59 f7    	vmulps zmm6,zmm6,zmm15
  a39d3f:	62 82 5d 40 bc ef    	vfnmadd231ps zmm21,zmm20,zmm31
  a39d45:	62 71 6c 40 58 f6    	vaddps zmm14,zmm18,zmm6
  a39d4b:	62 d1 44 48 59 ff    	vmulps zmm7,zmm7,zmm15
  a39d51:	62 51 1c 40 5c ed    	vsubps zmm13,zmm28,zmm13
  a39d57:	62 71 7c 40 5c e7    	vsubps zmm12,zmm16,zmm7
  a39d5d:	62 21 2c 48 59 e3    	vmulps zmm28,zmm10,zmm19
  a39d63:	62 42 25 48 bc e0    	vfnmadd231ps zmm28,zmm11,zmm8
  a39d69:	62 f2 7d 48 18 2d a5 	vbroadcastss zmm5,DWORD PTR [rip+0xffffffffff63b5a5]        # 75318 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x27c8>
  a39d70:	b5 63 ff 
  a39d73:	62 61 1c 48 59 fd    	vmulps zmm31,zmm12,zmm5
  a39d79:	62 f2 7d 48 18 25 59 	vbroadcastss zmm4,DWORD PTR [rip+0xffffffffff63b759]        # 754dc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x298c>
  a39d80:	b7 63 ff 
  a39d83:	62 62 0d 48 b8 fc    	vfmadd231ps zmm31,zmm14,zmm4
  a39d89:	62 71 1c 48 59 e4    	vmulps zmm12,zmm12,zmm4
  a39d8f:	62 52 55 48 bc e6    	vfnmadd231ps zmm12,zmm5,zmm14
  a39d95:	62 71 6c 48 58 d1    	vaddps zmm10,zmm2,zmm1
  a39d9b:	62 71 6c 48 5c f1    	vsubps zmm14,zmm2,zmm1
  a39da1:	62 f1 14 40 5c c0    	vsubps zmm0,zmm29,zmm0
  a39da7:	62 b1 0c 40 58 c9    	vaddps zmm1,zmm30,zmm17
  a39dad:	62 31 4c 40 58 c7    	vaddps zmm8,zmm22,zmm23
  a39db3:	62 f1 6c 40 5c f6    	vsubps zmm6,zmm18,zmm6
  a39db9:	62 81 3c 40 58 c9    	vaddps zmm17,zmm24,zmm25
  a39dbf:	62 51 14 48 59 ef    	vmulps zmm13,zmm13,zmm15
  a39dc5:	62 f1 7c 40 58 ff    	vaddps zmm7,zmm16,zmm7
  a39dcb:	62 c1 54 40 5c dd    	vsubps zmm19,zmm21,zmm13
  a39dd1:	62 31 14 48 58 dd    	vaddps zmm11,zmm13,zmm21
  a39dd7:	62 e1 74 48 59 ed    	vmulps zmm21,zmm1,zmm5
  a39ddd:	62 e2 7d 48 b8 ec    	vfmadd231ps zmm21,zmm0,zmm4
  a39de3:	62 71 74 48 59 ec    	vmulps zmm13,zmm1,zmm4
  a39de9:	62 72 55 48 bc e8    	vfnmadd231ps zmm13,zmm5,zmm0
  a39def:	62 f2 7d 48 18 05 f7 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff63b6f7]        # 754f0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x29a0>
  a39df6:	b6 63 ff 
  a39df9:	62 e1 44 48 59 c0    	vmulps zmm16,zmm7,zmm0
  a39dff:	62 f2 7d 48 18 0d ef 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff63b7ef]        # 755f8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2aa8>
  a39e06:	b7 63 ff 
  a39e09:	62 e2 4d 48 bc c1    	vfnmadd231ps zmm16,zmm6,zmm1
  a39e0f:	62 61 44 48 59 e9    	vmulps zmm29,zmm7,zmm1
  a39e15:	62 62 7d 48 b8 ee    	vfmadd231ps zmm29,zmm0,zmm6
  a39e1b:	62 b1 7c 48 28 d4    	vmovaps zmm2,zmm20
  a39e21:	62 d2 75 40 ac d1    	vfnmadd213ps zmm2,zmm17,zmm9
  a39e27:	62 b1 34 28 58 c1    	vaddps ymm0,ymm9,ymm17
  a39e2d:	62 a1 7c 48 28 d4    	vmovaps zmm18,zmm20
  a39e33:	62 82 3d 48 ac d3    	vfnmadd213ps zmm18,zmm8,zmm27
  a39e39:	62 d1 24 00 58 c8    	vaddps xmm1,xmm27,xmm8
  a39e3f:	62 91 2c 40 58 f7    	vaddps zmm6,zmm26,zmm31
  a39e45:	c5 fc 28 25 93 d3 63 	vmovaps ymm4,YMMWORD PTR [rip+0xffffffffff63d393]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  a39e4c:	ff 
  a39e4d:	62 f2 5d 28 7f c8    	vpermt2ps ymm1,ymm4,ymm0
  a39e53:	62 d1 1c 40 58 c4    	vaddps zmm0,zmm28,zmm12
  a39e59:	c5 fc 11 0c 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm1
  a39e5e:	62 31 7c 48 28 cc    	vmovaps zmm9,zmm20
  a39e64:	62 32 7d 48 ac cb    	vfnmadd213ps zmm9,zmm0,zmm19
  a39e6a:	62 f1 64 20 58 c0    	vaddps ymm0,ymm19,ymm0
  a39e70:	62 21 7c 48 28 dc    	vmovaps zmm27,zmm20
  a39e76:	62 42 4d 48 ac da    	vfnmadd213ps zmm27,zmm6,zmm10
  a39e7c:	c5 a8 58 ce          	vaddps xmm1,xmm10,xmm6
  a39e80:	62 b1 54 40 58 f0    	vaddps zmm6,zmm21,zmm16
  a39e86:	62 f2 5d 28 7f c8    	vpermt2ps ymm1,ymm4,ymm0
  a39e8c:	62 91 14 48 5c c5    	vsubps zmm0,zmm13,zmm29
  a39e92:	c5 fc 11 4c 16 20    	vmovups YMMWORD PTR [rsi+rdx*1+0x20],ymm1
  a39e98:	62 21 7c 48 28 f4    	vmovaps zmm30,zmm20
  a39e9e:	62 42 7d 48 ac f3    	vfnmadd213ps zmm30,zmm0,zmm11
  a39ea4:	c5 a4 58 c0          	vaddps ymm0,ymm11,ymm0
  a39ea8:	62 c2 4d 48 ac e6    	vfnmadd213ps zmm20,zmm6,zmm14
  a39eae:	c5 88 58 ce          	vaddps xmm1,xmm14,xmm6
  a39eb2:	62 f2 5d 28 7f c8    	vpermt2ps ymm1,ymm4,ymm0
  a39eb8:	c5 fc 11 4c 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm1
  a39ebe:	62 b1 4c 20 5c c7    	vsubps ymm0,ymm22,ymm23
  a39ec4:	c5 84 59 c0          	vmulps ymm0,ymm15,ymm0
  a39ec8:	c5 ec 5c c8          	vsubps ymm1,ymm2,ymm0
  a39ecc:	62 91 3c 20 5c f1    	vsubps ymm6,ymm24,ymm25
  a39ed2:	c5 84 59 f6          	vmulps ymm6,ymm15,ymm6
  a39ed6:	62 f1 6c 00 58 fe    	vaddps xmm7,xmm18,xmm6
  a39edc:	62 f2 5d 28 7f f9    	vpermt2ps ymm7,ymm4,ymm1
  a39ee2:	c5 fc 11 7c 16 60    	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm7
  a39ee8:	62 91 2c 20 5c cf    	vsubps ymm1,ymm26,ymm31
  a39eee:	c5 84 59 c9          	vmulps ymm1,ymm15,ymm1
  a39ef2:	c5 b4 5c f9          	vsubps ymm7,ymm9,ymm1
  a39ef6:	62 51 1c 20 5c c4    	vsubps ymm8,ymm28,ymm12
  a39efc:	c4 41 3c 59 c7       	vmulps ymm8,ymm8,ymm15
  a39f01:	62 51 24 00 58 d8    	vaddps xmm11,xmm27,xmm8
  a39f07:	62 72 5d 28 7f df    	vpermt2ps ymm11,ymm4,ymm7
  a39f0d:	c5 7c 11 9c 16 80 00 	vmovups YMMWORD PTR [rsi+rdx*1+0x80],ymm11
  a39f14:	00 00 
  a39f16:	62 b1 54 20 5c f8    	vsubps ymm7,ymm21,ymm16
  a39f1c:	c5 84 59 ff          	vmulps ymm7,ymm15,ymm7
  a39f20:	62 71 0c 20 5c df    	vsubps ymm11,ymm30,ymm7
  a39f26:	62 11 14 28 58 e5    	vaddps ymm12,ymm13,ymm29
  a39f2c:	c4 41 1c 59 e7       	vmulps ymm12,ymm12,ymm15
  a39f31:	62 51 5c 00 58 ec    	vaddps xmm13,xmm20,xmm12
  a39f37:	62 52 5d 28 7f eb    	vpermt2ps ymm13,ymm4,ymm11
  a39f3d:	c5 7c 11 ac 16 a0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xa0],ymm13
  a39f44:	00 00 
  a39f46:	c5 ec 58 c0          	vaddps ymm0,ymm2,ymm0
  a39f4a:	62 f1 6c 00 5c f6    	vsubps xmm6,xmm18,xmm6
  a39f50:	62 f2 5d 28 7f f0    	vpermt2ps ymm6,ymm4,ymm0
  a39f56:	c5 fc 11 b4 16 c0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xc0],ymm6
  a39f5d:	00 00 
  a39f5f:	c5 b4 58 c1          	vaddps ymm0,ymm9,ymm1
  a39f63:	62 d1 24 00 5c c8    	vsubps xmm1,xmm27,xmm8
  a39f69:	62 f2 5d 28 7f c8    	vpermt2ps ymm1,ymm4,ymm0
  a39f6f:	c5 fc 11 8c 16 e0 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xe0],ymm1
  a39f76:	00 00 
  a39f78:	62 f1 0c 20 58 c7    	vaddps ymm0,ymm30,ymm7
  a39f7e:	62 d1 5c 00 5c cc    	vsubps xmm1,xmm20,xmm12
  a39f84:	62 f2 5d 28 7f c8    	vpermt2ps ymm1,ymm4,ymm0
  a39f8a:	c5 fc 11 8c 16 00 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x100],ymm1
  a39f91:	00 00 
  a39f93:	48 81 c2 20 01 00 00 	add    rdx,0x120
  a39f9a:	48 39 d0             	cmp    rax,rdx
  a39f9d:	0f 85 dd f7 ff ff    	jne    a39780 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x40>
  a39fa3:	c5 f8 77             	vzeroupper
  a39fa6:	c3                   	ret
