
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a4f800 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a4f800:	55                   	push   rbp
  a4f801:	48 89 e5             	mov    rbp,rsp
  a4f804:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a4f808:	48 81 ec c0 0a 00 00 	sub    rsp,0xac0
  a4f80f:	c6 84 24 40 0a 00 00 	mov    BYTE PTR [rsp+0xa40],0x0
  a4f816:	00 
  a4f817:	48 8d 84 24 40 0a 00 	lea    rax,[rsp+0xa40]
  a4f81e:	00 
  a4f81f:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  a4f824:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  a4f829:	62 f1 7c 48 28 15 0d 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff64310d]        # 92940 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1fdf0>
  a4f830:	31 64 ff 
  a4f833:	62 f1 7c 48 10 0f    	vmovups zmm1,ZMMWORD PTR [rdi]
  a4f839:	62 71 7c 48 10 47 01 	vmovups zmm8,ZMMWORD PTR [rdi+0x40]
  a4f840:	62 f1 7c 48 10 77 02 	vmovups zmm6,ZMMWORD PTR [rdi+0x80]
  a4f847:	62 71 7c 48 10 57 03 	vmovups zmm10,ZMMWORD PTR [rdi+0xc0]
  a4f84e:	62 71 7c 48 28 e9    	vmovaps zmm13,zmm1
  a4f854:	62 52 6d 48 7f e8    	vpermt2ps zmm13,zmm2,zmm8
  a4f85a:	62 71 7c 48 10 67 04 	vmovups zmm12,ZMMWORD PTR [rdi+0x100]
  a4f861:	62 e1 7c 48 10 57 05 	vmovups zmm18,ZMMWORD PTR [rdi+0x140]
  a4f868:	62 d1 7c 48 28 ec    	vmovaps zmm5,zmm12
  a4f86e:	62 b2 6d 48 7f ea    	vpermt2ps zmm5,zmm2,zmm18
  a4f874:	62 71 7c 48 10 77 08 	vmovups zmm14,ZMMWORD PTR [rdi+0x200]
  a4f87b:	62 e1 7c 48 10 5f 09 	vmovups zmm19,ZMMWORD PTR [rdi+0x240]
  a4f882:	62 d1 7c 48 28 fe    	vmovaps zmm7,zmm14
  a4f888:	62 b2 6d 48 7f fb    	vpermt2ps zmm7,zmm2,zmm19
  a4f88e:	62 e1 54 48 58 e7    	vaddps zmm20,zmm5,zmm7
  a4f894:	62 31 14 48 58 dc    	vaddps zmm11,zmm13,zmm20
  a4f89a:	62 f1 7c 48 10 67 06 	vmovups zmm4,ZMMWORD PTR [rdi+0x180]
  a4f8a1:	62 71 7c 48 10 7f 07 	vmovups zmm15,ZMMWORD PTR [rdi+0x1c0]
  a4f8a8:	62 e1 7c 48 28 ec    	vmovaps zmm21,zmm4
  a4f8ae:	62 c2 6d 48 7f ef    	vpermt2ps zmm21,zmm2,zmm15
  a4f8b4:	62 e1 7c 48 10 47 0a 	vmovups zmm16,ZMMWORD PTR [rdi+0x280]
  a4f8bb:	62 e1 7c 48 10 77 0b 	vmovups zmm22,ZMMWORD PTR [rdi+0x2c0]
  a4f8c2:	62 31 7c 48 28 c8    	vmovaps zmm9,zmm16
  a4f8c8:	62 32 6d 48 7f ce    	vpermt2ps zmm9,zmm2,zmm22
  a4f8ce:	62 d2 4d 48 77 d2    	vpermi2ps zmm2,zmm6,zmm10
  a4f8d4:	62 e1 34 48 58 fa    	vaddps zmm23,zmm9,zmm2
  a4f8da:	62 21 54 40 58 cf    	vaddps zmm25,zmm21,zmm23
  a4f8e0:	62 01 24 48 58 d1    	vaddps zmm26,zmm11,zmm25
  a4f8e6:	62 f1 7c 48 28 05 90 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff677690]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a4f8ed:	76 67 ff 
  a4f8f0:	c5 e0 57 db          	vxorps xmm3,xmm3,xmm3
  a4f8f4:	62 01 7c 48 28 c2    	vmovaps zmm24,zmm26
  a4f8fa:	62 e2 7d 48 18 0d 5c 	vbroadcastss zmm17,DWORD PTR [rip+0xffffffffff625b5c]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a4f901:	5b 62 ff 
  a4f904:	62 62 7d 48 7f c3    	vpermt2ps zmm24,zmm0,zmm3
  a4f90a:	62 61 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm24
  a4f911:	03 
  a4f912:	62 32 75 40 bc ec    	vfnmadd231ps zmm13,zmm17,zmm20
  a4f918:	62 61 7c 48 28 1d 5e 	vmovaps zmm27,ZMMWORD PTR [rip+0xffffffffff64305e]        # 92980 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1fe30>
  a4f91f:	30 64 ff 
  a4f922:	62 32 25 40 7f e2    	vpermt2ps zmm12,zmm27,zmm18
  a4f928:	62 32 25 40 7f f3    	vpermt2ps zmm14,zmm27,zmm19
  a4f92e:	62 c1 1c 48 5c d6    	vsubps zmm18,zmm12,zmm14
  a4f934:	62 e2 7d 48 18 1d 96 	vbroadcastss zmm19,DWORD PTR [rip+0xffffffffff625996]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a4f93b:	59 62 ff 
  a4f93e:	62 a1 6c 40 59 d3    	vmulps zmm18,zmm18,zmm19
  a4f944:	62 a1 14 48 5c e2    	vsubps zmm20,zmm13,zmm18
  a4f94a:	62 a2 75 40 bc ef    	vfnmadd231ps zmm21,zmm17,zmm23
  a4f950:	62 a2 25 40 7f c6    	vpermt2ps zmm16,zmm27,zmm22
  a4f956:	62 d2 25 40 7f f2    	vpermt2ps zmm6,zmm27,zmm10
  a4f95c:	62 71 7c 40 5c d6    	vsubps zmm10,zmm16,zmm6
  a4f962:	62 31 2c 48 59 d3    	vmulps zmm10,zmm10,zmm19
  a4f968:	62 c1 54 40 5c f2    	vsubps zmm22,zmm21,zmm10
  a4f96e:	62 21 5c 40 58 c6    	vaddps zmm24,zmm20,zmm22
  a4f974:	62 61 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm24
  a4f97b:	01 
  a4f97c:	62 62 7d 48 7f c3    	vpermt2ps zmm24,zmm0,zmm3
  a4f982:	62 61 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm24
  a4f989:	0a 
  a4f98a:	62 c1 6c 40 58 d5    	vaddps zmm18,zmm18,zmm13
  a4f990:	62 a1 2c 48 58 ed    	vaddps zmm21,zmm10,zmm21
  a4f996:	62 21 6c 40 58 fd    	vaddps zmm31,zmm18,zmm21
  a4f99c:	62 11 7c 48 28 d7    	vmovaps zmm10,zmm31
  a4f9a2:	62 72 7d 48 7f d3    	vpermt2ps zmm10,zmm0,zmm3
  a4f9a8:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm10
  a4f9af:	05 
  a4f9b0:	c4 41 10 57 ed       	vxorps xmm13,xmm13,xmm13
  a4f9b5:	62 52 7d 48 7f ed    	vpermt2ps zmm13,zmm0,zmm13
  a4f9bb:	62 21 5c 40 5c ee    	vsubps zmm29,zmm20,zmm22
  a4f9c1:	62 11 7c 48 28 d5    	vmovaps zmm10,zmm29
  a4f9c7:	62 72 7d 48 7f d3    	vpermt2ps zmm10,zmm0,zmm3
  a4f9cd:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm10
  a4f9d4:	04 
  a4f9d5:	62 a1 6c 40 5c d5    	vsubps zmm18,zmm18,zmm21
  a4f9db:	62 31 7c 48 28 d2    	vmovaps zmm10,zmm18
  a4f9e1:	62 a1 7c 48 28 f2    	vmovaps zmm22,zmm18
  a4f9e7:	62 72 7d 48 7f d3    	vpermt2ps zmm10,zmm0,zmm3
  a4f9ed:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm10
  a4f9f4:	08 
  a4f9f5:	62 11 24 48 5c d9    	vsubps zmm11,zmm11,zmm25
  a4f9fb:	62 51 7c 48 28 d3    	vmovaps zmm10,zmm11
  a4fa01:	62 72 7d 48 7f d3    	vpermt2ps zmm10,zmm0,zmm3
  a4fa07:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm10
  a4fa0e:	07 
  a4fa0f:	62 d2 25 40 7f c8    	vpermt2ps zmm1,zmm27,zmm8
  a4fa15:	62 51 1c 48 58 c6    	vaddps zmm8,zmm12,zmm14
  a4fa1b:	62 51 74 48 58 f0    	vaddps zmm14,zmm1,zmm8
  a4fa21:	62 d2 25 40 7f e7    	vpermt2ps zmm4,zmm27,zmm15
  a4fa27:	62 f1 7c 40 58 f6    	vaddps zmm6,zmm16,zmm6
  a4fa2d:	62 e1 5c 48 58 d6    	vaddps zmm18,zmm4,zmm6
  a4fa33:	62 21 0c 48 58 da    	vaddps zmm27,zmm14,zmm18
  a4fa39:	62 e1 7c 48 28 2d 7d 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff67757d]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a4fa40:	75 67 ff 
  a4fa43:	62 81 7c 48 28 c3    	vmovaps zmm16,zmm27
  a4fa49:	62 e2 55 40 7f c3    	vpermt2ps zmm16,zmm21,zmm3
  a4fa4f:	62 d2 75 40 bc c8    	vfnmadd231ps zmm1,zmm17,zmm8
  a4fa55:	62 f1 54 48 5c ef    	vsubps zmm5,zmm5,zmm7
  a4fa5b:	62 b1 54 48 59 eb    	vmulps zmm5,zmm5,zmm19
  a4fa61:	62 f1 74 48 58 fd    	vaddps zmm7,zmm1,zmm5
  a4fa67:	62 b2 4d 48 bc e1    	vfnmadd231ps zmm4,zmm6,zmm17
  a4fa6d:	62 f1 34 48 5c d2    	vsubps zmm2,zmm9,zmm2
  a4fa73:	62 b1 6c 48 59 d3    	vmulps zmm2,zmm2,zmm19
  a4fa79:	62 f1 5c 48 58 f2    	vaddps zmm6,zmm4,zmm2
  a4fa7f:	62 71 44 48 58 c6    	vaddps zmm8,zmm7,zmm6
  a4fa85:	62 51 7c 48 28 e0    	vmovaps zmm12,zmm8
  a4fa8b:	62 51 7c 48 28 c8    	vmovaps zmm9,zmm8
  a4fa91:	62 72 55 40 7f e3    	vpermt2ps zmm12,zmm21,zmm3
  a4fa97:	62 c1 7c 48 28 cc    	vmovaps zmm17,zmm12
  a4fa9d:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm12
  a4faa4:	0d 
  a4faa5:	62 e1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm16
  a4faac:	06 
  a4faad:	62 f1 74 48 5c ed    	vsubps zmm5,zmm1,zmm5
  a4fab3:	62 f1 5c 48 5c d2    	vsubps zmm2,zmm4,zmm2
  a4fab9:	62 e1 54 48 58 fa    	vaddps zmm23,zmm5,zmm2
  a4fabf:	62 31 7c 48 28 ff    	vmovaps zmm15,zmm23
  a4fac5:	62 72 55 40 7f fb    	vpermt2ps zmm15,zmm21,zmm3
  a4facb:	c4 41 38 57 c0       	vxorps xmm8,xmm8,xmm8
  a4fad0:	62 52 55 40 7f c0    	vpermt2ps zmm8,zmm21,zmm8
  a4fad6:	62 61 44 48 5c ce    	vsubps zmm25,zmm7,zmm6
  a4fadc:	62 91 7c 48 28 f1    	vmovaps zmm6,zmm25
  a4fae2:	62 f2 55 40 7f f3    	vpermt2ps zmm6,zmm21,zmm3
  a4fae8:	62 61 54 48 5c e2    	vsubps zmm28,zmm5,zmm2
  a4faee:	62 91 7c 48 28 cc    	vmovaps zmm1,zmm28
  a4faf4:	62 f2 55 40 7f cb    	vpermt2ps zmm1,zmm21,zmm3
  a4fafa:	62 f1 7c 48 28 e9    	vmovaps zmm5,zmm1
  a4fb00:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm1
  a4fb07:	0b 
  a4fb08:	62 21 0c 48 5c f2    	vsubps zmm30,zmm14,zmm18
  a4fb0e:	62 81 7c 48 28 e6    	vmovaps zmm20,zmm30
  a4fb14:	62 e2 55 40 7f e3    	vpermt2ps zmm20,zmm21,zmm3
  a4fb1a:	62 62 55 40 7f d3    	vpermt2ps zmm26,zmm21,zmm3
  a4fb20:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x40]
  a4fb27:	01 
  a4fb28:	62 f2 55 40 7f cb    	vpermt2ps zmm1,zmm21,zmm3
  a4fb2e:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm1
  a4fb35:	01 
  a4fb36:	62 61 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm26
  a4fb3d:	09 
  a4fb3e:	62 62 55 40 7f fb    	vpermt2ps zmm31,zmm21,zmm3
  a4fb44:	62 61 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm31
  a4fb4b:	02 
  a4fb4c:	62 11 7c 48 28 e5    	vmovaps zmm12,zmm29
  a4fb52:	62 72 55 40 7f e3    	vpermt2ps zmm12,zmm21,zmm3
  a4fb58:	62 e2 55 40 7f f3    	vpermt2ps zmm22,zmm21,zmm3
  a4fb5e:	62 e1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm22
  a4fb65:	17 
  a4fb66:	62 72 55 40 7f db    	vpermt2ps zmm11,zmm21,zmm3
  a4fb6c:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm12
  a4fb73:	1a 
  a4fb74:	62 62 7d 48 7f db    	vpermt2ps zmm27,zmm0,zmm3
  a4fb7a:	62 51 7c 48 28 f1    	vmovaps zmm14,zmm9
  a4fb80:	62 72 7d 48 7f f3    	vpermt2ps zmm14,zmm0,zmm3
  a4fb86:	62 71 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm14
  a4fb8d:	18 
  a4fb8e:	62 e2 7d 48 7f fb    	vpermt2ps zmm23,zmm0,zmm3
  a4fb94:	62 62 7d 48 7f cb    	vpermt2ps zmm25,zmm0,zmm3
  a4fb9a:	62 62 7d 48 7f e3    	vpermt2ps zmm28,zmm0,zmm3
  a4fba0:	62 62 7d 48 7f f3    	vpermt2ps zmm30,zmm0,zmm3
  a4fba6:	62 51 7c 48 28 d3    	vmovaps zmm10,zmm11
  a4fbac:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm11
  a4fbb3:	19 
  a4fbb4:	62 f1 7c 48 28 25 82 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff677382]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a4fbbb:	73 67 ff 
  a4fbbe:	62 62 5d 48 7f d1    	vpermt2ps zmm26,zmm4,zmm1
  a4fbc4:	62 81 7c 48 28 da    	vmovaps zmm19,zmm26
  a4fbca:	62 61 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x7c0],zmm26
  a4fbd1:	1f 
  a4fbd2:	62 42 5d 48 7f f8    	vpermt2ps zmm31,zmm4,zmm8
  a4fbd8:	62 11 7c 48 28 cf    	vmovaps zmm9,zmm31
  a4fbde:	62 61 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x800],zmm31
  a4fbe5:	20 
  a4fbe6:	62 32 5d 48 7f e6    	vpermt2ps zmm12,zmm4,zmm22
  a4fbec:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x780],zmm12
  a4fbf3:	1e 
  a4fbf4:	62 52 5d 48 7f d0    	vpermt2ps zmm10,zmm4,zmm8
  a4fbfa:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x740],zmm10
  a4fc01:	1d 
  a4fc02:	62 a2 5d 48 7f c1    	vpermt2ps zmm16,zmm4,zmm17
  a4fc08:	62 e1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x8c0],zmm16
  a4fc0f:	23 
  a4fc10:	62 51 7c 48 28 df    	vmovaps zmm11,zmm15
  a4fc16:	62 71 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm15
  a4fc1d:	0e 
  a4fc1e:	62 52 5d 48 7f d8    	vpermt2ps zmm11,zmm4,zmm8
  a4fc24:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x880],zmm11
  a4fc2b:	22 
  a4fc2c:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm6
  a4fc33:	0c 
  a4fc34:	62 f2 5d 48 7f f5    	vpermt2ps zmm6,zmm4,zmm5
  a4fc3a:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x840],zmm6
  a4fc41:	21 
  a4fc42:	62 21 7c 48 28 d4    	vmovaps zmm26,zmm20
  a4fc48:	62 c2 5d 48 7f e0    	vpermt2ps zmm20,zmm4,zmm8
  a4fc4e:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0xc0]
  a4fc55:	03 
  a4fc56:	62 61 7c 48 28 c5    	vmovaps zmm24,zmm5
  a4fc5c:	62 71 7c 48 28 7c 24 	vmovaps zmm15,ZMMWORD PTR [rsp+0x280]
  a4fc63:	0a 
  a4fc64:	62 d2 5d 48 7f ef    	vpermt2ps zmm5,zmm4,zmm15
  a4fc6a:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm5
  a4fc71:	03 
  a4fc72:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x140]
  a4fc79:	05 
  a4fc7a:	62 e1 7c 48 28 f3    	vmovaps zmm22,zmm3
  a4fc80:	62 d2 5d 48 7f dd    	vpermt2ps zmm3,zmm4,zmm13
  a4fc86:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm3
  a4fc8d:	05 
  a4fc8e:	62 61 7c 48 28 6c 24 	vmovaps zmm29,ZMMWORD PTR [rsp+0x100]
  a4fc95:	04 
  a4fc96:	62 81 7c 48 28 ed    	vmovaps zmm21,zmm29
  a4fc9c:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x200]
  a4fca3:	08 
  a4fca4:	62 62 5d 48 7f ef    	vpermt2ps zmm29,zmm4,zmm7
  a4fcaa:	62 61 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm29
  a4fcb1:	04 
  a4fcb2:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x1c0]
  a4fcb9:	07 
  a4fcba:	62 e1 7c 48 28 d2    	vmovaps zmm18,zmm2
  a4fcc0:	62 d2 5d 48 7f d5    	vpermt2ps zmm2,zmm4,zmm13
  a4fcc6:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm2
  a4fccd:	07 
  a4fcce:	62 91 7c 48 28 c3    	vmovaps zmm0,zmm27
  a4fcd4:	62 d2 5d 48 7f c6    	vpermt2ps zmm0,zmm4,zmm14
  a4fcda:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm0
  a4fce1:	10 
  a4fce2:	62 31 7c 48 28 f7    	vmovaps zmm14,zmm23
  a4fce8:	62 52 5d 48 7f f5    	vpermt2ps zmm14,zmm4,zmm13
  a4fcee:	62 71 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm14
  a4fcf5:	0f 
  a4fcf6:	62 91 7c 48 28 c9    	vmovaps zmm1,zmm25
  a4fcfc:	62 92 5d 48 7f cc    	vpermt2ps zmm1,zmm4,zmm28
  a4fd02:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x900],zmm1
  a4fd09:	24 
  a4fd0a:	62 d2 0d 40 77 e5    	vpermi2ps zmm4,zmm30,zmm13
  a4fd10:	62 e1 7c 48 28 0d e6 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff6770e6]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a4fd17:	70 67 ff 
  a4fd1a:	62 51 fd 48 15 f6    	vunpckhpd zmm14,zmm0,zmm14
  a4fd20:	62 71 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm14
  a4fd27:	16 
  a4fd28:	62 f1 f5 48 15 c4    	vunpckhpd zmm0,zmm1,zmm4
  a4fd2e:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm0
  a4fd35:	15 
  a4fd36:	62 72 75 40 7f f0    	vpermt2ps zmm14,zmm17,zmm0
  a4fd3c:	62 61 d5 48 15 fb    	vunpckhpd zmm31,zmm5,zmm3
  a4fd42:	62 61 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm31
  a4fd49:	14 
  a4fd4a:	62 f1 95 40 15 c2    	vunpckhpd zmm0,zmm29,zmm2
  a4fd50:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm0
  a4fd57:	13 
  a4fd58:	62 62 75 40 7f f8    	vpermt2ps zmm31,zmm17,zmm0
  a4fd5e:	62 f1 7c 48 10 52 0d 	vmovups zmm2,ZMMWORD PTR [rdx+0x340]
  a4fd65:	62 f1 7c 48 10 4a 0c 	vmovups zmm1,ZMMWORD PTR [rdx+0x300]
  a4fd6c:	62 f1 04 40 59 c1    	vmulps zmm0,zmm31,zmm1
  a4fd72:	62 f2 0d 48 b8 c2    	vfmadd231ps zmm0,zmm14,zmm2
  a4fd78:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xa00],zmm0
  a4fd7f:	28 
  a4fd80:	62 f1 0c 48 59 c1    	vmulps zmm0,zmm14,zmm1
  a4fd86:	62 92 6d 48 bc c7    	vfnmadd231ps zmm0,zmm2,zmm31
  a4fd8c:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x9c0],zmm0
  a4fd93:	27 
  a4fd94:	62 d1 fd 40 15 cb    	vunpckhpd zmm1,zmm16,zmm11
  a4fd9a:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm1
  a4fda1:	12 
  a4fda2:	62 a1 7c 48 28 c4    	vmovaps zmm16,zmm20
  a4fda8:	62 b1 cd 48 15 c4    	vunpckhpd zmm0,zmm6,zmm20
  a4fdae:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm0
  a4fdb5:	11 
  a4fdb6:	62 f2 75 40 7f c8    	vpermt2ps zmm1,zmm17,zmm0
  a4fdbc:	62 41 e5 40 15 f9    	vunpckhpd zmm31,zmm19,zmm9
  a4fdc2:	62 d1 9d 48 15 c2    	vunpckhpd zmm0,zmm12,zmm10
  a4fdc8:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x700],zmm0
  a4fdcf:	1c 
  a4fdd0:	62 91 7c 48 28 d7    	vmovaps zmm2,zmm31
  a4fdd6:	62 f2 75 40 7f d0    	vpermt2ps zmm2,zmm17,zmm0
  a4fddc:	62 b1 7c 48 28 f1    	vmovaps zmm6,zmm17
  a4fde2:	62 f1 7c 48 10 5a 1d 	vmovups zmm3,ZMMWORD PTR [rdx+0x740]
  a4fde9:	62 f1 7c 48 10 42 1c 	vmovups zmm0,ZMMWORD PTR [rdx+0x700]
  a4fdf0:	62 61 6c 48 59 e8    	vmulps zmm29,zmm2,zmm0
  a4fdf6:	62 62 75 48 b8 eb    	vfmadd231ps zmm29,zmm1,zmm3
  a4fdfc:	62 61 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x980],zmm29
  a4fe03:	26 
  a4fe04:	62 f1 74 48 59 c0    	vmulps zmm0,zmm1,zmm0
  a4fe0a:	62 f2 65 48 bc c2    	vfnmadd231ps zmm0,zmm3,zmm2
  a4fe10:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x940],zmm0
  a4fe17:	25 
  a4fe18:	62 f1 7c 48 28 05 de 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6770de]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a4fe1f:	70 67 ff 
  a4fe22:	62 42 7d 48 7f c7    	vpermt2ps zmm24,zmm0,zmm15
  a4fe28:	62 e2 7d 48 7f ef    	vpermt2ps zmm21,zmm0,zmm7
  a4fe2e:	62 61 7c 48 28 6c 24 	vmovaps zmm29,ZMMWORD PTR [rsp+0x180]
  a4fe35:	06 
  a4fe36:	62 62 7d 48 7f 6c 24 	vpermt2ps zmm29,zmm0,ZMMWORD PTR [rsp+0x340]
  a4fe3d:	0d 
  a4fe3e:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x300]
  a4fe45:	0c 
  a4fe46:	62 f2 7d 48 7f 7c 24 	vpermt2ps zmm7,zmm0,ZMMWORD PTR [rsp+0x2c0]
  a4fe4d:	0b 
  a4fe4e:	62 e1 7c 48 28 4c 24 	vmovaps zmm17,ZMMWORD PTR [rsp+0x240]
  a4fe55:	09 
  a4fe56:	62 e2 7d 48 7f 4c 24 	vpermt2ps zmm17,zmm0,ZMMWORD PTR [rsp+0x40]
  a4fe5d:	01 
  a4fe5e:	62 e1 7c 48 28 64 24 	vmovaps zmm20,ZMMWORD PTR [rsp+0x680]
  a4fe65:	1a 
  a4fe66:	62 e2 7d 48 7f 64 24 	vpermt2ps zmm20,zmm0,ZMMWORD PTR [rsp+0x5c0]
  a4fe6d:	17 
  a4fe6e:	62 71 7c 48 28 7c 24 	vmovaps zmm15,ZMMWORD PTR [rsp+0x380]
  a4fe75:	0e 
  a4fe76:	62 52 7d 48 7f f8    	vpermt2ps zmm15,zmm0,zmm8
  a4fe7c:	62 42 7d 48 7f d0    	vpermt2ps zmm26,zmm0,zmm8
  a4fe82:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x80]
  a4fe89:	02 
  a4fe8a:	62 52 7d 48 7f d0    	vpermt2ps zmm10,zmm0,zmm8
  a4fe90:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm10
  a4fe97:	02 
  a4fe98:	62 71 7c 48 28 5c 24 	vmovaps zmm11,ZMMWORD PTR [rsp+0x640]
  a4fe9f:	19 
  a4fea0:	62 52 7d 48 7f d8    	vpermt2ps zmm11,zmm0,zmm8
  a4fea6:	62 62 7d 48 7f 5c 24 	vpermt2ps zmm27,zmm0,ZMMWORD PTR [rsp+0x600]
  a4fead:	18 
  a4feae:	62 02 7d 48 7f cc    	vpermt2ps zmm25,zmm0,zmm28
  a4feb4:	62 c2 7d 48 7f f5    	vpermt2ps zmm22,zmm0,zmm13
  a4feba:	62 c2 7d 48 7f d5    	vpermt2ps zmm18,zmm0,zmm13
  a4fec0:	62 c2 7d 48 7f fd    	vpermt2ps zmm23,zmm0,zmm13
  a4fec6:	62 42 7d 48 7f f5    	vpermt2ps zmm30,zmm0,zmm13
  a4fecc:	62 a1 bd 40 15 de    	vunpckhpd zmm19,zmm24,zmm22
  a4fed2:	62 b1 d5 40 15 ca    	vunpckhpd zmm1,zmm21,zmm18
  a4fed8:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm1
  a4fedf:	0c 
  a4fee0:	62 b1 7c 48 28 c3    	vmovaps zmm0,zmm19
  a4fee6:	62 f2 4d 48 7f c1    	vpermt2ps zmm0,zmm6,zmm1
  a4feec:	62 31 a5 40 15 f7    	vunpckhpd zmm14,zmm27,zmm23
  a4fef2:	62 91 b5 40 15 d6    	vunpckhpd zmm2,zmm25,zmm30
  a4fef8:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm2
  a4feff:	0b 
  a4ff00:	62 d1 7c 48 28 ce    	vmovaps zmm1,zmm14
  a4ff06:	62 f2 4d 48 7f ca    	vpermt2ps zmm1,zmm6,zmm2
  a4ff0c:	62 f1 7c 48 10 52 04 	vmovups zmm2,ZMMWORD PTR [rdx+0x100]
  a4ff13:	62 f1 7c 48 10 5a 05 	vmovups zmm3,ZMMWORD PTR [rdx+0x140]
  a4ff1a:	62 71 74 48 59 c2    	vmulps zmm8,zmm1,zmm2
  a4ff20:	62 72 7d 48 bc c3    	vfnmadd231ps zmm8,zmm0,zmm3
  a4ff26:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm8
  a4ff2d:	1a 
  a4ff2e:	62 f1 7c 48 59 c2    	vmulps zmm0,zmm0,zmm2
  a4ff34:	62 f2 65 48 b8 c1    	vfmadd231ps zmm0,zmm3,zmm1
  a4ff3a:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm0
  a4ff41:	19 
  a4ff42:	62 d1 f5 40 15 d2    	vunpckhpd zmm2,zmm17,zmm10
  a4ff48:	62 d1 dd 40 15 cb    	vunpckhpd zmm1,zmm20,zmm11
  a4ff4e:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x6c0],zmm1
  a4ff55:	1b 
  a4ff56:	62 f1 7c 48 28 c2    	vmovaps zmm0,zmm2
  a4ff5c:	62 f2 4d 48 7f c1    	vpermt2ps zmm0,zmm6,zmm1
  a4ff62:	62 d1 95 40 15 cf    	vunpckhpd zmm1,zmm29,zmm15
  a4ff68:	62 11 c5 48 15 e2    	vunpckhpd zmm12,zmm7,zmm26
  a4ff6e:	62 71 7c 48 28 cf    	vmovaps zmm9,zmm7
  a4ff74:	62 f1 7c 48 28 d9    	vmovaps zmm3,zmm1
  a4ff7a:	62 d2 4d 48 7f dc    	vpermt2ps zmm3,zmm6,zmm12
  a4ff80:	62 71 7c 48 10 42 15 	vmovups zmm8,ZMMWORD PTR [rdx+0x540]
  a4ff87:	62 71 7c 48 10 52 14 	vmovups zmm10,ZMMWORD PTR [rdx+0x500]
  a4ff8e:	62 51 64 48 59 ea    	vmulps zmm13,zmm3,zmm10
  a4ff94:	62 52 7d 48 bc e8    	vfnmadd231ps zmm13,zmm0,zmm8
  a4ff9a:	62 71 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm13
  a4ffa1:	18 
  a4ffa2:	62 d1 7c 48 59 c2    	vmulps zmm0,zmm0,zmm10
  a4ffa8:	62 f2 3d 48 b8 c3    	vfmadd231ps zmm0,zmm8,zmm3
  a4ffae:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm0
  a4ffb5:	17 
  a4ffb6:	62 b1 bd 40 14 c6    	vunpcklpd zmm0,zmm24,zmm22
  a4ffbc:	62 21 d5 40 14 e2    	vunpcklpd zmm28,zmm21,zmm18
  a4ffc2:	62 b1 a5 40 14 df    	vunpcklpd zmm3,zmm27,zmm23
  a4ffc8:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm3
  a4ffcf:	01 
  a4ffd0:	62 01 b5 40 14 de    	vunpcklpd zmm27,zmm25,zmm30
  a4ffd6:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm0
  a4ffdd:	0d 
  a4ffde:	62 f1 7c 48 28 2d 58 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff676e58]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a4ffe5:	6e 67 ff 
  a4ffe8:	62 92 55 48 7f c4    	vpermt2ps zmm0,zmm5,zmm28
  a4ffee:	62 92 55 48 7f db    	vpermt2ps zmm3,zmm5,zmm27
  a4fff4:	62 f1 7c 48 10 72 02 	vmovups zmm6,ZMMWORD PTR [rdx+0x80]
  a4fffb:	62 f1 7c 48 10 7a 03 	vmovups zmm7,ZMMWORD PTR [rdx+0xc0]
  a50002:	62 71 64 48 59 c6    	vmulps zmm8,zmm3,zmm6
  a50008:	62 72 7d 48 bc c7    	vfnmadd231ps zmm8,zmm0,zmm7
  a5000e:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm8
  a50015:	0e 
  a50016:	62 f1 7c 48 59 c6    	vmulps zmm0,zmm0,zmm6
  a5001c:	62 f2 45 48 b8 c3    	vfmadd231ps zmm0,zmm7,zmm3
  a50022:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm0
  a50029:	06 
  a5002a:	62 d1 95 40 14 c7    	vunpcklpd zmm0,zmm29,zmm15
  a50030:	62 81 b5 48 14 ea    	vunpcklpd zmm21,zmm9,zmm26
  a50036:	62 f1 f5 40 14 5c 24 	vunpcklpd zmm3,zmm17,ZMMWORD PTR [rsp+0x80]
  a5003d:	02 
  a5003e:	62 c1 dd 40 14 cb    	vunpcklpd zmm17,zmm20,zmm11
  a50044:	62 71 7c 48 28 c3    	vmovaps zmm8,zmm3
  a5004a:	62 b2 55 48 7f d9    	vpermt2ps zmm3,zmm5,zmm17
  a50050:	62 61 7c 48 28 d0    	vmovaps zmm26,zmm0
  a50056:	62 b2 55 48 7f c5    	vpermt2ps zmm0,zmm5,zmm21
  a5005c:	62 f1 7c 48 10 72 13 	vmovups zmm6,ZMMWORD PTR [rdx+0x4c0]
  a50063:	62 f1 7c 48 10 7a 12 	vmovups zmm7,ZMMWORD PTR [rdx+0x480]
  a5006a:	62 71 7c 48 59 cf    	vmulps zmm9,zmm0,zmm7
  a50070:	62 72 65 48 bc ce    	vfnmadd231ps zmm9,zmm3,zmm6
  a50076:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm9
  a5007d:	0a 
  a5007e:	62 f1 64 48 59 df    	vmulps zmm3,zmm3,zmm7
  a50084:	62 f2 4d 48 b8 d8    	vfmadd231ps zmm3,zmm6,zmm0
  a5008a:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm3
  a50091:	02 
  a50092:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x7c0]
  a50099:	1f 
  a5009a:	62 f1 fd 48 14 44 24 	vunpcklpd zmm0,zmm0,ZMMWORD PTR [rsp+0x800]
  a500a1:	20 
  a500a2:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x780]
  a500a9:	1e 
  a500aa:	62 71 e5 48 14 54 24 	vunpcklpd zmm10,zmm3,ZMMWORD PTR [rsp+0x740]
  a500b1:	1d 
  a500b2:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x8c0]
  a500b9:	23 
  a500ba:	62 f1 e5 48 14 5c 24 	vunpcklpd zmm3,zmm3,ZMMWORD PTR [rsp+0x880]
  a500c1:	22 
  a500c2:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x840]
  a500c9:	21 
  a500ca:	62 a1 cd 48 14 e0    	vunpcklpd zmm20,zmm6,zmm16
  a500d0:	62 e1 7c 48 28 d3    	vmovaps zmm18,zmm3
  a500d6:	62 b2 55 48 7f dc    	vpermt2ps zmm3,zmm5,zmm20
  a500dc:	62 61 7c 48 28 c0    	vmovaps zmm24,zmm0
  a500e2:	62 d2 55 48 7f c2    	vpermt2ps zmm0,zmm5,zmm10
  a500e8:	62 f1 7c 48 10 72 1b 	vmovups zmm6,ZMMWORD PTR [rdx+0x6c0]
  a500ef:	62 f1 7c 48 10 7a 1a 	vmovups zmm7,ZMMWORD PTR [rdx+0x680]
  a500f6:	62 71 7c 48 59 cf    	vmulps zmm9,zmm0,zmm7
  a500fc:	62 72 65 48 b8 ce    	vfmadd231ps zmm9,zmm3,zmm6
  a50102:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm9
  a50109:	08 
  a5010a:	62 f1 64 48 59 df    	vmulps zmm3,zmm3,zmm7
  a50110:	62 f2 4d 48 bc d8    	vfnmadd231ps zmm3,zmm6,zmm0
  a50116:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm3
  a5011d:	09 
  a5011e:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0xc0]
  a50125:	03 
  a50126:	62 f1 fd 48 14 74 24 	vunpcklpd zmm6,zmm0,ZMMWORD PTR [rsp+0x140]
  a5012d:	05 
  a5012e:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x100]
  a50135:	04 
  a50136:	62 71 fd 48 14 4c 24 	vunpcklpd zmm9,zmm0,ZMMWORD PTR [rsp+0x1c0]
  a5013d:	07 
  a5013e:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x400]
  a50145:	10 
  a50146:	62 f1 fd 48 14 7c 24 	vunpcklpd zmm7,zmm0,ZMMWORD PTR [rsp+0x3c0]
  a5014d:	0f 
  a5014e:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x900]
  a50155:	24 
  a50156:	62 f1 fd 48 14 dc    	vunpcklpd zmm3,zmm0,zmm4
  a5015c:	62 61 7c 48 28 ef    	vmovaps zmm29,zmm7
  a50162:	62 f2 55 48 7f fb    	vpermt2ps zmm7,zmm5,zmm3
  a50168:	62 f1 7c 48 28 c6    	vmovaps zmm0,zmm6
  a5016e:	62 d2 55 48 7f f1    	vpermt2ps zmm6,zmm5,zmm9
  a50174:	62 f1 7c 48 10 62 0b 	vmovups zmm4,ZMMWORD PTR [rdx+0x2c0]
  a5017b:	62 71 7c 48 10 7a 0a 	vmovups zmm15,ZMMWORD PTR [rdx+0x280]
  a50182:	62 51 4c 48 59 ef    	vmulps zmm13,zmm6,zmm15
  a50188:	62 72 45 48 b8 ec    	vfmadd231ps zmm13,zmm7,zmm4
  a5018e:	62 71 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm13
  a50195:	10 
  a50196:	62 d1 44 48 59 ff    	vmulps zmm7,zmm7,zmm15
  a5019c:	62 f2 5d 48 bc fe    	vfnmadd231ps zmm7,zmm4,zmm6
  a501a2:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm7
  a501a9:	03 
  a501aa:	62 e2 55 48 7f 5c 24 	vpermt2ps zmm19,zmm5,ZMMWORD PTR [rsp+0x300]
  a501b1:	0c 
  a501b2:	62 72 55 48 7f 74 24 	vpermt2ps zmm14,zmm5,ZMMWORD PTR [rsp+0x2c0]
  a501b9:	0b 
  a501ba:	62 f2 55 48 7f 54 24 	vpermt2ps zmm2,zmm5,ZMMWORD PTR [rsp+0x6c0]
  a501c1:	1b 
  a501c2:	62 d2 55 48 7f cc    	vpermt2ps zmm1,zmm5,zmm12
  a501c8:	62 71 7c 48 28 7c 24 	vmovaps zmm15,ZMMWORD PTR [rsp+0x580]
  a501cf:	16 
  a501d0:	62 72 55 48 7f 7c 24 	vpermt2ps zmm15,zmm5,ZMMWORD PTR [rsp+0x540]
  a501d7:	15 
  a501d8:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x500]
  a501df:	14 
  a501e0:	62 f2 55 48 7f 74 24 	vpermt2ps zmm6,zmm5,ZMMWORD PTR [rsp+0x4c0]
  a501e7:	13 
  a501e8:	62 e1 7c 48 28 44 24 	vmovaps zmm16,ZMMWORD PTR [rsp+0x480]
  a501ef:	12 
  a501f0:	62 e2 55 48 7f 44 24 	vpermt2ps zmm16,zmm5,ZMMWORD PTR [rsp+0x440]
  a501f7:	11 
  a501f8:	62 62 55 48 7f 7c 24 	vpermt2ps zmm31,zmm5,ZMMWORD PTR [rsp+0x700]
  a501ff:	1c 
  a50200:	62 f1 7c 48 10 62 07 	vmovups zmm4,ZMMWORD PTR [rdx+0x1c0]
  a50207:	62 f1 7c 48 10 6a 06 	vmovups zmm5,ZMMWORD PTR [rdx+0x180]
  a5020e:	62 61 0c 48 59 f5    	vmulps zmm30,zmm14,zmm5
  a50214:	62 62 65 40 bc f4    	vfnmadd231ps zmm30,zmm19,zmm4
  a5021a:	62 61 64 40 59 cd    	vmulps zmm25,zmm19,zmm5
  a50220:	62 42 5d 48 b8 ce    	vfmadd231ps zmm25,zmm4,zmm14
  a50226:	62 f1 7c 48 10 62 17 	vmovups zmm4,ZMMWORD PTR [rdx+0x5c0]
  a5022d:	62 f1 7c 48 10 7a 16 	vmovups zmm7,ZMMWORD PTR [rdx+0x580]
  a50234:	62 e1 74 48 59 ff    	vmulps zmm23,zmm1,zmm7
  a5023a:	62 e2 6d 48 bc fc    	vfnmadd231ps zmm23,zmm2,zmm4
  a50240:	62 e1 6c 48 59 f7    	vmulps zmm22,zmm2,zmm7
  a50246:	62 e2 5d 48 b8 f1    	vfmadd231ps zmm22,zmm4,zmm1
  a5024c:	62 f1 7c 48 10 4a 1f 	vmovups zmm1,ZMMWORD PTR [rdx+0x7c0]
  a50253:	62 f1 7c 48 10 62 1e 	vmovups zmm4,ZMMWORD PTR [rdx+0x780]
  a5025a:	62 71 04 40 59 dc    	vmulps zmm11,zmm31,zmm4
  a50260:	62 72 7d 40 b8 d9    	vfmadd231ps zmm11,zmm16,zmm1
  a50266:	62 71 7c 40 59 e4    	vmulps zmm12,zmm16,zmm4
  a5026c:	62 12 75 48 bc e7    	vfnmadd231ps zmm12,zmm1,zmm31
  a50272:	62 f1 7c 48 10 4a 0f 	vmovups zmm1,ZMMWORD PTR [rdx+0x3c0]
  a50279:	62 f1 7c 48 10 62 0e 	vmovups zmm4,ZMMWORD PTR [rdx+0x380]
  a50280:	62 f1 7c 48 28 ee    	vmovaps zmm5,zmm6
  a50286:	62 f1 4c 48 59 f4    	vmulps zmm6,zmm6,zmm4
  a5028c:	62 f2 05 48 b8 f1    	vfmadd231ps zmm6,zmm15,zmm1
  a50292:	62 71 04 48 59 fc    	vmulps zmm15,zmm15,zmm4
  a50298:	62 72 75 48 bc fd    	vfnmadd231ps zmm15,zmm1,zmm5
  a5029e:	62 e1 7c 48 28 44 24 	vmovaps zmm16,ZMMWORD PTR [rsp+0x340]
  a502a5:	0d 
  a502a6:	62 f1 7c 48 28 15 50 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff676b50]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a502ad:	6b 67 ff 
  a502b0:	62 82 6d 48 7f c4    	vpermt2ps zmm16,zmm2,zmm28
  a502b6:	62 22 6d 48 7f d5    	vpermt2ps zmm26,zmm2,zmm21
  a502bc:	62 32 6d 48 7f c1    	vpermt2ps zmm8,zmm2,zmm17
  a502c2:	62 42 6d 48 7f c2    	vpermt2ps zmm24,zmm2,zmm10
  a502c8:	62 a2 6d 48 7f d4    	vpermt2ps zmm18,zmm2,zmm20
  a502ce:	62 d2 6d 48 7f c1    	vpermt2ps zmm0,zmm2,zmm9
  a502d4:	62 62 6d 48 7f eb    	vpermt2ps zmm29,zmm2,zmm3
  a502da:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x40]
  a502e1:	01 
  a502e2:	62 92 6d 48 7f cb    	vpermt2ps zmm1,zmm2,zmm27
  a502e8:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm1
  a502ef:	01 
  a502f0:	62 f1 7c 48 10 4a 11 	vmovups zmm1,ZMMWORD PTR [rdx+0x440]
  a502f7:	62 f1 7c 48 10 5a 10 	vmovups zmm3,ZMMWORD PTR [rdx+0x400]
  a502fe:	62 61 3c 48 59 db    	vmulps zmm27,zmm8,zmm3
  a50304:	62 62 2d 40 b8 d9    	vfmadd231ps zmm27,zmm26,zmm1
  a5030a:	62 e1 2c 40 59 db    	vmulps zmm19,zmm26,zmm3
  a50310:	62 c2 75 48 bc d8    	vfnmadd231ps zmm19,zmm1,zmm8
  a50316:	62 f1 7c 48 10 4a 09 	vmovups zmm1,ZMMWORD PTR [rdx+0x240]
  a5031d:	62 f1 7c 48 10 5a 08 	vmovups zmm3,ZMMWORD PTR [rdx+0x200]
  a50324:	62 e1 14 40 59 e3    	vmulps zmm20,zmm29,zmm3
  a5032a:	62 e2 7d 48 bc e1    	vfnmadd231ps zmm20,zmm0,zmm1
  a50330:	62 f1 7c 48 59 db    	vmulps zmm3,zmm0,zmm3
  a50336:	62 92 75 48 b8 dd    	vfmadd231ps zmm3,zmm1,zmm29
  a5033c:	62 f1 7c 48 10 4a 19 	vmovups zmm1,ZMMWORD PTR [rdx+0x640]
  a50343:	62 f1 7c 48 10 42 18 	vmovups zmm0,ZMMWORD PTR [rdx+0x600]
  a5034a:	62 e1 6c 40 59 e8    	vmulps zmm21,zmm18,zmm0
  a50350:	62 e2 3d 40 bc e9    	vfnmadd231ps zmm21,zmm24,zmm1
  a50356:	62 f1 3c 40 59 d0    	vmulps zmm2,zmm24,zmm0
  a5035c:	62 b2 75 48 b8 d2    	vfmadd231ps zmm2,zmm1,zmm18
  a50362:	62 61 7c 48 28 64 24 	vmovaps zmm28,ZMMWORD PTR [rsp+0x380]
  a50369:	0e 
  a5036a:	62 f1 1c 40 5c 64 24 	vsubps zmm4,zmm28,ZMMWORD PTR [rsp+0x280]
  a50371:	0a 
  a50372:	62 e1 14 48 5c 54 24 	vsubps zmm18,zmm13,ZMMWORD PTR [rsp+0x200]
  a50379:	08 
  a5037a:	62 31 5c 48 5c c2    	vsubps zmm8,zmm4,zmm18
  a50380:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x180]
  a50387:	06 
  a50388:	62 61 7c 48 5c 44 24 	vsubps zmm24,zmm0,ZMMWORD PTR [rsp+0x80]
  a5038f:	02 
  a50390:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x240]
  a50397:	09 
  a50398:	62 61 7c 48 5c 6c 24 	vsubps zmm29,zmm0,ZMMWORD PTR [rsp+0xc0]
  a5039f:	03 
  a503a0:	62 72 7d 48 18 15 56 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff625356]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a503a7:	53 62 ff 
  a503aa:	62 11 3c 40 5c cd    	vsubps zmm9,zmm24,zmm29
  a503b0:	62 d1 34 48 59 c2    	vmulps zmm0,zmm9,zmm10
  a503b6:	62 62 7d 48 18 15 a4 	vbroadcastss zmm26,DWORD PTR [rip+0xffffffffff6252a4]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a503bd:	52 62 ff 
  a503c0:	62 92 3d 48 b8 c2    	vfmadd231ps zmm0,zmm8,zmm26
  a503c6:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm0
  a503cd:	05 
  a503ce:	62 91 34 48 59 c2    	vmulps zmm0,zmm9,zmm26
  a503d4:	62 d2 2d 48 bc c0    	vfnmadd231ps zmm0,zmm10,zmm8
  a503da:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  a503e1:	04 
  a503e2:	62 31 0c 40 5c cf    	vsubps zmm9,zmm30,zmm23
  a503e8:	62 c1 4c 48 5c cb    	vsubps zmm17,zmm6,zmm11
  a503ee:	62 31 34 48 5c f1    	vsubps zmm14,zmm9,zmm17
  a503f4:	62 21 34 40 5c fe    	vsubps zmm31,zmm25,zmm22
  a503fa:	62 d1 1c 48 5c cf    	vsubps zmm1,zmm12,zmm15
  a50400:	62 f1 04 40 5c c1    	vsubps zmm0,zmm31,zmm1
  a50406:	62 91 7c 48 59 ea    	vmulps zmm5,zmm0,zmm26
  a5040c:	62 d2 0d 48 b8 ea    	vfmadd231ps zmm5,zmm14,zmm10
  a50412:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm5
  a50419:	07 
  a5041a:	62 91 0c 48 59 ea    	vmulps zmm5,zmm14,zmm26
  a50420:	62 f2 2d 48 bc e8    	vfnmadd231ps zmm5,zmm10,zmm0
  a50426:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm5
  a5042d:	16 
  a5042e:	62 b1 34 48 58 c1    	vaddps zmm0,zmm9,zmm17
  a50434:	62 f1 04 40 58 c9    	vaddps zmm1,zmm31,zmm1
  a5043a:	62 b1 5c 48 58 e2    	vaddps zmm4,zmm4,zmm18
  a50440:	62 11 3c 40 58 cd    	vaddps zmm9,zmm24,zmm29
  a50446:	62 91 34 48 59 ea    	vmulps zmm5,zmm9,zmm26
  a5044c:	62 d2 5d 48 b8 ea    	vfmadd231ps zmm5,zmm4,zmm10
  a50452:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm5
  a50459:	15 
  a5045a:	62 d1 34 48 59 ea    	vmulps zmm5,zmm9,zmm10
  a50460:	62 f2 2d 40 bc ec    	vfnmadd231ps zmm5,zmm26,zmm4
  a50466:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm5
  a5046d:	13 
  a5046e:	62 d1 74 48 59 e2    	vmulps zmm4,zmm1,zmm10
  a50474:	62 92 7d 48 b8 e2    	vfmadd231ps zmm4,zmm0,zmm26
  a5047a:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm4
  a50481:	14 
  a50482:	62 01 74 48 59 d2    	vmulps zmm26,zmm1,zmm26
  a50488:	62 42 7d 48 bc d2    	vfnmadd231ps zmm26,zmm0,zmm10
  a5048e:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x680]
  a50495:	1a 
  a50496:	62 71 7c 48 28 74 24 	vmovaps zmm14,ZMMWORD PTR [rsp+0x600]
  a5049d:	18 
  a5049e:	62 d1 3c 48 5c c6    	vsubps zmm0,zmm8,zmm14
  a504a4:	62 71 7c 48 28 6c 24 	vmovaps zmm13,ZMMWORD PTR [rsp+0x640]
  a504ab:	19 
  a504ac:	62 61 7c 48 28 44 24 	vmovaps zmm24,ZMMWORD PTR [rsp+0x5c0]
  a504b3:	17 
  a504b4:	62 91 14 48 5c c8    	vsubps zmm1,zmm13,zmm24
  a504ba:	62 f1 7c 48 58 e1    	vaddps zmm4,zmm0,zmm1
  a504c0:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm4
  a504c7:	12 
  a504c8:	62 f1 74 48 5c c0    	vsubps zmm0,zmm1,zmm0
  a504ce:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm0
  a504d5:	11 
  a504d6:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0xa00]
  a504dd:	28 
  a504de:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x980]
  a504e5:	26 
  a504e6:	62 f1 7c 48 5c cc    	vsubps zmm1,zmm0,zmm4
  a504ec:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x9c0]
  a504f3:	27 
  a504f4:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x940]
  a504fb:	25 
  a504fc:	62 71 54 48 5c d7    	vsubps zmm10,zmm5,zmm7
  a50502:	62 c1 74 48 5c ca    	vsubps zmm17,zmm1,zmm10
  a50508:	62 f1 2c 48 58 c9    	vaddps zmm1,zmm10,zmm1
  a5050e:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm1
  a50515:	0f 
  a50516:	62 11 7c 40 5c d3    	vsubps zmm10,zmm16,zmm27
  a5051c:	62 21 24 40 58 d8    	vaddps zmm27,zmm27,zmm16
  a50522:	62 61 64 48 5c ea    	vsubps zmm29,zmm3,zmm2
  a50528:	62 71 64 48 58 ca    	vaddps zmm9,zmm3,zmm2
  a5052e:	62 e1 54 48 58 c7    	vaddps zmm16,zmm5,zmm7
  a50534:	62 41 3c 48 58 fe    	vaddps zmm31,zmm8,zmm14
  a5053a:	62 a1 34 40 58 d6    	vaddps zmm18,zmm25,zmm22
  a50540:	62 51 4c 48 58 f3    	vaddps zmm14,zmm6,zmm11
  a50546:	62 31 0c 40 58 c7    	vaddps zmm8,zmm30,zmm23
  a5054c:	62 51 04 48 58 dc    	vaddps zmm11,zmm15,zmm12
  a50552:	62 71 1c 40 58 64 24 	vaddps zmm12,zmm28,ZMMWORD PTR [rsp+0x280]
  a50559:	0a 
  a5055a:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0xc0]
  a50561:	03 
  a50562:	62 71 74 48 58 7c 24 	vaddps zmm15,zmm1,ZMMWORD PTR [rsp+0x240]
  a50569:	09 
  a5056a:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x80]
  a50571:	02 
  a50572:	62 e1 74 48 58 74 24 	vaddps zmm22,zmm1,ZMMWORD PTR [rsp+0x180]
  a50579:	06 
  a5057a:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x400]
  a50581:	10 
  a50582:	62 e1 74 48 58 7c 24 	vaddps zmm23,zmm1,ZMMWORD PTR [rsp+0x200]
  a50589:	08 
  a5058a:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x40]
  a50591:	01 
  a50592:	62 21 74 48 5c cb    	vsubps zmm25,zmm1,zmm19
  a50598:	62 a1 74 48 58 db    	vaddps zmm19,zmm1,zmm19
  a5059e:	62 21 54 40 5c e4    	vsubps zmm28,zmm21,zmm20
  a505a4:	62 a1 5c 40 58 e5    	vaddps zmm20,zmm20,zmm21
  a505aa:	62 81 14 48 58 e8    	vaddps zmm21,zmm13,zmm24
  a505b0:	62 61 7c 48 58 f4    	vaddps zmm30,zmm0,zmm4
  a505b6:	62 d1 1c 48 5c cf    	vsubps zmm1,zmm12,zmm15
  a505bc:	62 b1 4c 40 5c c7    	vsubps zmm0,zmm22,zmm23
  a505c2:	62 f1 74 48 58 f0    	vaddps zmm6,zmm1,zmm0
  a505c8:	62 f1 7c 48 5c f9    	vsubps zmm7,zmm0,zmm1
  a505ce:	62 d1 6c 40 5c ce    	vsubps zmm1,zmm18,zmm14
  a505d4:	62 d1 3c 48 5c c3    	vsubps zmm0,zmm8,zmm11
  a505da:	62 f1 74 48 5c e0    	vsubps zmm4,zmm1,zmm0
  a505e0:	62 f1 7c 48 58 e9    	vaddps zmm5,zmm0,zmm1
  a505e6:	62 f2 7d 48 18 0d ac 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff624dac]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a505ed:	4d 62 ff 
  a505f0:	62 e1 74 40 59 c9    	vmulps zmm17,zmm17,zmm1
  a505f6:	62 f1 74 48 59 5c 24 	vmulps zmm3,zmm1,ZMMWORD PTR [rsp+0x480]
  a505fd:	12 
  a505fe:	62 f1 74 48 59 54 24 	vmulps zmm2,zmm1,ZMMWORD PTR [rsp+0x440]
  a50605:	11 
  a50606:	62 f1 74 48 59 44 24 	vmulps zmm0,zmm1,ZMMWORD PTR [rsp+0x3c0]
  a5060d:	0f 
  a5060e:	62 f1 5c 48 59 e1    	vmulps zmm4,zmm4,zmm1
  a50614:	62 f1 4c 48 59 f1    	vmulps zmm6,zmm6,zmm1
  a5061a:	62 f1 44 48 59 f9    	vmulps zmm7,zmm7,zmm1
  a50620:	62 f1 54 48 59 c9    	vmulps zmm1,zmm5,zmm1
  a50626:	62 91 2c 48 5c ec    	vsubps zmm5,zmm10,zmm28
  a5062c:	62 51 1c 40 58 d2    	vaddps zmm10,zmm28,zmm10
  a50632:	62 61 6c 48 58 e0    	vaddps zmm28,zmm2,zmm0
  a50638:	62 f1 6c 48 5c c0    	vsubps zmm0,zmm2,zmm0
  a5063e:	62 91 34 40 5c d5    	vsubps zmm2,zmm25,zmm29
  a50644:	62 01 34 40 58 cd    	vaddps zmm25,zmm25,zmm29
  a5064a:	62 61 74 40 5c eb    	vsubps zmm29,zmm17,zmm3
  a50650:	62 31 64 48 58 e9    	vaddps zmm13,zmm3,zmm17
  a50656:	62 c1 24 40 5c c9    	vsubps zmm17,zmm27,zmm9
  a5065c:	62 01 34 48 58 c3    	vaddps zmm24,zmm9,zmm27
  a50662:	62 01 54 40 5c de    	vsubps zmm27,zmm21,zmm30
  a50668:	62 81 54 40 58 ee    	vaddps zmm21,zmm21,zmm30
  a5066e:	62 d1 3c 48 58 db    	vaddps zmm3,zmm8,zmm11
  a50674:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm3
  a5067b:	01 
  a5067c:	62 41 1c 48 58 f7    	vaddps zmm30,zmm12,zmm15
  a50682:	62 31 64 40 5c e4    	vsubps zmm12,zmm19,zmm20
  a50688:	62 31 64 40 58 fc    	vaddps zmm15,zmm19,zmm20
  a5068e:	62 81 7c 40 5c df    	vsubps zmm19,zmm16,zmm31
  a50694:	62 b1 04 40 58 d8    	vaddps zmm3,zmm31,zmm16
  a5069a:	62 a1 4c 40 58 e7    	vaddps zmm20,zmm22,zmm23
  a506a0:	62 51 6c 40 58 f6    	vaddps zmm14,zmm18,zmm14
  a506a6:	62 81 54 48 5c d5    	vsubps zmm18,zmm5,zmm29
  a506ac:	62 f1 14 40 58 ed    	vaddps zmm5,zmm29,zmm5
  a506b2:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm5
  a506b9:	02 
  a506ba:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x100]
  a506c1:	04 
  a506c2:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x580]
  a506c9:	16 
  a506ca:	62 d1 3c 48 5c e9    	vsubps zmm5,zmm8,zmm9
  a506d0:	62 51 3c 48 58 c1    	vaddps zmm8,zmm8,zmm9
  a506d6:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm8
  a506dd:	06 
  a506de:	62 81 6c 48 5c f4    	vsubps zmm22,zmm2,zmm28
  a506e4:	62 01 6c 48 58 ec    	vaddps zmm29,zmm2,zmm28
  a506ea:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x140]
  a506f1:	05 
  a506f2:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x1c0]
  a506f9:	07 
  a506fa:	62 c1 6c 48 58 c0    	vaddps zmm16,zmm2,zmm8
  a50700:	62 41 6c 48 5c e0    	vsubps zmm28,zmm2,zmm8
  a50706:	62 21 74 40 5c fb    	vsubps zmm31,zmm17,zmm19
  a5070c:	62 a1 64 40 58 f9    	vaddps zmm23,zmm19,zmm17
  a50712:	62 e1 44 48 58 d9    	vaddps zmm19,zmm7,zmm1
  a50718:	62 e1 44 48 5c c9    	vsubps zmm17,zmm7,zmm1
  a5071e:	62 91 1c 48 5c fb    	vsubps zmm7,zmm12,zmm27
  a50724:	62 01 1c 48 58 db    	vaddps zmm27,zmm12,zmm27
  a5072a:	62 71 5c 48 5c e6    	vsubps zmm12,zmm4,zmm6
  a50730:	62 71 4c 48 58 dc    	vaddps zmm11,zmm6,zmm4
  a50736:	62 f1 2c 48 5c f0    	vsubps zmm6,zmm10,zmm0
  a5073c:	62 51 7c 48 58 ca    	vaddps zmm9,zmm0,zmm10
  a50742:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x4c0]
  a50749:	13 
  a5074a:	62 11 7c 48 5c d2    	vsubps zmm10,zmm0,zmm26
  a50750:	62 11 7c 48 58 c2    	vaddps zmm8,zmm0,zmm26
  a50756:	62 d1 34 40 5c d5    	vsubps zmm2,zmm25,zmm13
  a5075c:	62 51 34 40 58 ed    	vaddps zmm13,zmm25,zmm13
  a50762:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x540]
  a50769:	15 
  a5076a:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x500]
  a50771:	14 
  a50772:	62 61 74 48 5c c8    	vsubps zmm25,zmm1,zmm0
  a50778:	62 f1 7c 48 58 e1    	vaddps zmm4,zmm0,zmm1
  a5077e:	62 b1 3c 40 5c cd    	vsubps zmm1,zmm24,zmm21
  a50784:	62 81 54 40 58 e8    	vaddps zmm21,zmm21,zmm24
  a5078a:	62 41 5c 40 5c d6    	vsubps zmm26,zmm20,zmm14
  a50790:	62 c1 5c 40 58 e6    	vaddps zmm20,zmm20,zmm14
  a50796:	62 f1 04 48 5c c3    	vsubps zmm0,zmm15,zmm3
  a5079c:	62 61 04 48 58 c3    	vaddps zmm24,zmm15,zmm3
  a507a2:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x40]
  a507a9:	01 
  a507aa:	62 11 64 48 5c fe    	vsubps zmm15,zmm3,zmm30
  a507b0:	62 f1 0c 40 58 db    	vaddps zmm3,zmm30,zmm3
  a507b6:	62 21 6c 40 58 f0    	vaddps zmm30,zmm18,zmm16
  a507bc:	62 31 6c 40 5c f0    	vsubps zmm14,zmm18,zmm16
  a507c2:	62 e1 4c 40 5c c5    	vsubps zmm16,zmm22,zmm5
  a507c8:	62 e1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm16
  a507cf:	01 
  a507d0:	62 f1 4c 40 58 ed    	vaddps zmm5,zmm22,zmm5
  a507d6:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm5
  a507dd:	04 
  a507de:	62 c1 04 40 5c f4    	vsubps zmm22,zmm31,zmm12
  a507e4:	62 d1 04 40 58 ec    	vaddps zmm5,zmm31,zmm12
  a507ea:	62 31 44 48 5c e3    	vsubps zmm12,zmm7,zmm19
  a507f0:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm12
  a507f7:	03 
  a507f8:	62 a1 44 48 58 db    	vaddps zmm19,zmm7,zmm19
  a507fe:	62 81 4c 48 5c c1    	vsubps zmm16,zmm6,zmm25
  a50804:	62 91 4c 48 58 f9    	vaddps zmm7,zmm6,zmm25
  a5080a:	62 d1 6c 48 5c f2    	vsubps zmm6,zmm2,zmm10
  a50810:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm6
  a50817:	05 
  a50818:	62 d1 6c 48 58 d2    	vaddps zmm2,zmm2,zmm10
  a5081e:	62 41 74 48 5c cf    	vsubps zmm25,zmm1,zmm15
  a50824:	62 51 74 48 58 d7    	vaddps zmm10,zmm1,zmm15
  a5082a:	62 01 7c 48 5c fa    	vsubps zmm31,zmm0,zmm26
  a50830:	62 01 7c 48 58 d2    	vaddps zmm26,zmm0,zmm26
  a50836:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x80]
  a5083d:	02 
  a5083e:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x180]
  a50845:	06 
  a50846:	62 f1 7c 48 5c f1    	vsubps zmm6,zmm0,zmm1
  a5084c:	62 71 7c 48 58 e1    	vaddps zmm12,zmm0,zmm1
  a50852:	62 91 14 40 5c c4    	vsubps zmm0,zmm29,zmm28
  a50858:	62 01 14 40 58 e4    	vaddps zmm28,zmm29,zmm28
  a5085e:	62 b1 44 40 5c c9    	vsubps zmm1,zmm23,zmm17
  a50864:	62 31 44 40 58 f9    	vaddps zmm15,zmm23,zmm17
  a5086a:	62 c1 24 40 5c fb    	vsubps zmm23,zmm27,zmm11
  a50870:	62 41 24 40 58 db    	vaddps zmm27,zmm27,zmm11
  a50876:	62 51 34 48 5c d8    	vsubps zmm11,zmm9,zmm8
  a5087c:	62 c1 34 48 58 c8    	vaddps zmm17,zmm9,zmm8
  a50882:	62 71 14 48 5c c4    	vsubps zmm8,zmm13,zmm4
  a50888:	62 f1 14 48 58 e4    	vaddps zmm4,zmm13,zmm4
  a5088e:	62 31 54 40 5c ec    	vsubps zmm13,zmm21,zmm20
  a50894:	62 a1 54 40 58 d4    	vaddps zmm18,zmm21,zmm20
  a5089a:	62 71 3c 40 5c cb    	vsubps zmm9,zmm24,zmm3
  a508a0:	62 f1 3c 40 58 db    	vaddps zmm3,zmm24,zmm3
  a508a6:	62 e1 7c 48 28 25 10 	vmovaps zmm20,ZMMWORD PTR [rip+0xffffffffff642110]        # 929c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1fe70>
  a508ad:	21 64 ff 
  a508b0:	62 e2 5d 40 7f d3    	vpermt2ps zmm18,zmm20,zmm3
  a508b6:	62 e2 5d 40 7f cc    	vpermt2ps zmm17,zmm20,zmm4
  a508bc:	62 12 5d 40 7f fb    	vpermt2ps zmm15,zmm20,zmm27
  a508c2:	62 12 5d 40 7f e4    	vpermt2ps zmm12,zmm20,zmm28
  a508c8:	62 12 5d 40 7f d2    	vpermt2ps zmm10,zmm20,zmm26
  a508ce:	62 f2 5d 40 7f fa    	vpermt2ps zmm7,zmm20,zmm2
  a508d4:	62 b2 5d 40 7f eb    	vpermt2ps zmm5,zmm20,zmm19
  a508da:	62 72 5d 40 7f 74 24 	vpermt2ps zmm14,zmm20,ZMMWORD PTR [rsp+0x100]
  a508e1:	04 
  a508e2:	62 52 5d 40 7f e9    	vpermt2ps zmm13,zmm20,zmm9
  a508e8:	62 52 5d 40 7f d8    	vpermt2ps zmm11,zmm20,zmm8
  a508ee:	62 b2 5d 40 7f cf    	vpermt2ps zmm1,zmm20,zmm23
  a508f4:	62 f2 5d 40 7f f0    	vpermt2ps zmm6,zmm20,zmm0
  a508fa:	62 02 5d 40 7f cf    	vpermt2ps zmm25,zmm20,zmm31
  a50900:	62 e2 5d 40 7f 44 24 	vpermt2ps zmm16,zmm20,ZMMWORD PTR [rsp+0x140]
  a50907:	05 
  a50908:	62 e2 5d 40 7f 74 24 	vpermt2ps zmm22,zmm20,ZMMWORD PTR [rsp+0xc0]
  a5090f:	03 
  a50910:	62 62 5d 40 7f 74 24 	vpermt2ps zmm30,zmm20,ZMMWORD PTR [rsp+0x40]
  a50917:	01 
  a50918:	62 e3 7d 48 19 56 02 	vextractf32x4 XMMWORD PTR [rsi+0x20],zmm18,0x2
  a5091f:	02 
  a50920:	62 e1 7c 28 11 16    	vmovups YMMWORD PTR [rsi],ymm18
  a50926:	62 e3 7d 48 19 4e 05 	vextractf32x4 XMMWORD PTR [rsi+0x50],zmm17,0x2
  a5092d:	02 
  a5092e:	62 e1 7c 28 11 8e 30 	vmovups YMMWORD PTR [rsi+0x30],ymm17
  a50935:	00 00 00 
  a50938:	62 73 7d 48 19 7e 08 	vextractf32x4 XMMWORD PTR [rsi+0x80],zmm15,0x2
  a5093f:	02 
  a50940:	c5 7c 11 7e 60       	vmovups YMMWORD PTR [rsi+0x60],ymm15
  a50945:	62 73 7d 48 19 66 0b 	vextractf32x4 XMMWORD PTR [rsi+0xb0],zmm12,0x2
  a5094c:	02 
  a5094d:	c5 7c 11 a6 90 00 00 	vmovups YMMWORD PTR [rsi+0x90],ymm12
  a50954:	00 
  a50955:	62 73 7d 48 19 56 0e 	vextractf32x4 XMMWORD PTR [rsi+0xe0],zmm10,0x2
  a5095c:	02 
  a5095d:	c5 7c 11 96 c0 00 00 	vmovups YMMWORD PTR [rsi+0xc0],ymm10
  a50964:	00 
  a50965:	62 f3 7d 48 19 7e 11 	vextractf32x4 XMMWORD PTR [rsi+0x110],zmm7,0x2
  a5096c:	02 
  a5096d:	c5 fc 11 be f0 00 00 	vmovups YMMWORD PTR [rsi+0xf0],ymm7
  a50974:	00 
  a50975:	62 f3 7d 48 19 6e 14 	vextractf32x4 XMMWORD PTR [rsi+0x140],zmm5,0x2
  a5097c:	02 
  a5097d:	c5 fc 11 ae 20 01 00 	vmovups YMMWORD PTR [rsi+0x120],ymm5
  a50984:	00 
  a50985:	62 73 7d 48 19 76 17 	vextractf32x4 XMMWORD PTR [rsi+0x170],zmm14,0x2
  a5098c:	02 
  a5098d:	c5 7c 11 b6 50 01 00 	vmovups YMMWORD PTR [rsi+0x150],ymm14
  a50994:	00 
  a50995:	62 73 7d 48 19 6e 1a 	vextractf32x4 XMMWORD PTR [rsi+0x1a0],zmm13,0x2
  a5099c:	02 
  a5099d:	c5 7c 11 ae 80 01 00 	vmovups YMMWORD PTR [rsi+0x180],ymm13
  a509a4:	00 
  a509a5:	62 73 7d 48 19 5e 1d 	vextractf32x4 XMMWORD PTR [rsi+0x1d0],zmm11,0x2
  a509ac:	02 
  a509ad:	c5 7c 11 9e b0 01 00 	vmovups YMMWORD PTR [rsi+0x1b0],ymm11
  a509b4:	00 
  a509b5:	62 f3 7d 48 19 4e 20 	vextractf32x4 XMMWORD PTR [rsi+0x200],zmm1,0x2
  a509bc:	02 
  a509bd:	c5 fc 11 8e e0 01 00 	vmovups YMMWORD PTR [rsi+0x1e0],ymm1
  a509c4:	00 
  a509c5:	62 f3 7d 48 19 76 23 	vextractf32x4 XMMWORD PTR [rsi+0x230],zmm6,0x2
  a509cc:	02 
  a509cd:	c5 fc 11 b6 10 02 00 	vmovups YMMWORD PTR [rsi+0x210],ymm6
  a509d4:	00 
  a509d5:	62 63 7d 48 19 4e 26 	vextractf32x4 XMMWORD PTR [rsi+0x260],zmm25,0x2
  a509dc:	02 
  a509dd:	62 61 7c 28 11 4e 12 	vmovups YMMWORD PTR [rsi+0x240],ymm25
  a509e4:	62 e3 7d 48 19 46 29 	vextractf32x4 XMMWORD PTR [rsi+0x290],zmm16,0x2
  a509eb:	02 
  a509ec:	62 e1 7c 28 11 86 70 	vmovups YMMWORD PTR [rsi+0x270],ymm16
  a509f3:	02 00 00 
  a509f6:	62 e3 7d 48 19 76 2c 	vextractf32x4 XMMWORD PTR [rsi+0x2c0],zmm22,0x2
  a509fd:	02 
  a509fe:	62 e1 7c 28 11 76 15 	vmovups YMMWORD PTR [rsi+0x2a0],ymm22
  a50a05:	62 63 7d 48 19 76 2f 	vextractf32x4 XMMWORD PTR [rsi+0x2f0],zmm30,0x2
  a50a0c:	02 
  a50a0d:	62 61 7c 28 11 b6 d0 	vmovups YMMWORD PTR [rsi+0x2d0],ymm30
  a50a14:	02 00 00 
  a50a17:	48 89 ec             	mov    rsp,rbp
  a50a1a:	5d                   	pop    rbp
  a50a1b:	c5 f8 77             	vzeroupper
  a50a1e:	c3                   	ret
