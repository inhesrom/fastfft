
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a67640 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a67640:	55                   	push   rbp
  a67641:	48 89 e5             	mov    rbp,rsp
  a67644:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a67648:	48 81 ec c0 0b 00 00 	sub    rsp,0xbc0
  a6764f:	c6 84 24 40 0b 00 00 	mov    BYTE PTR [rsp+0xb40],0x0
  a67656:	00 
  a67657:	48 8d 84 24 40 0b 00 	lea    rax,[rsp+0xb40]
  a6765e:	00 
  a6765f:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  a67664:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  a67669:	62 71 7c 48 28 05 4d 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff62cb4d]        # 941c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21670>
  a67670:	cb 62 ff 
  a67673:	62 f1 7c 48 10 2f    	vmovups zmm5,ZMMWORD PTR [rdi]
  a67679:	62 61 7c 48 10 47 01 	vmovups zmm24,ZMMWORD PTR [rdi+0x40]
  a67680:	62 f1 7c 48 10 77 02 	vmovups zmm6,ZMMWORD PTR [rdi+0x80]
  a67687:	62 71 7c 48 10 77 03 	vmovups zmm14,ZMMWORD PTR [rdi+0xc0]
  a6768e:	62 e1 7c 48 28 c5    	vmovaps zmm16,zmm5
  a67694:	62 82 3d 48 7f c0    	vpermt2ps zmm16,zmm8,zmm24
  a6769a:	62 f1 7c 48 10 57 04 	vmovups zmm2,ZMMWORD PTR [rdi+0x100]
  a676a1:	62 f1 7c 48 10 67 05 	vmovups zmm4,ZMMWORD PTR [rdi+0x140]
  a676a8:	62 f1 7c 48 28 c2    	vmovaps zmm0,zmm2
  a676ae:	62 f2 3d 48 7f c4    	vpermt2ps zmm0,zmm8,zmm4
  a676b4:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm0
  a676bb:	08 
  a676bc:	62 71 7c 48 10 67 10 	vmovups zmm12,ZMMWORD PTR [rdi+0x400]
  a676c3:	62 71 7c 48 10 7f 11 	vmovups zmm15,ZMMWORD PTR [rdi+0x440]
  a676ca:	62 d1 7c 48 28 cc    	vmovaps zmm1,zmm12
  a676d0:	62 d2 3d 48 7f cf    	vpermt2ps zmm1,zmm8,zmm15
  a676d6:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm1
  a676dd:	07 
  a676de:	62 e1 7c 48 58 f1    	vaddps zmm22,zmm0,zmm1
  a676e4:	62 b1 7c 40 58 de    	vaddps zmm3,zmm16,zmm22
  a676ea:	62 71 7c 48 10 6f 08 	vmovups zmm13,ZMMWORD PTR [rdi+0x200]
  a676f1:	62 e1 7c 48 10 7f 09 	vmovups zmm23,ZMMWORD PTR [rdi+0x240]
  a676f8:	62 c1 7c 48 28 dd    	vmovaps zmm19,zmm13
  a676fe:	62 a2 3d 48 7f df    	vpermt2ps zmm19,zmm8,zmm23
  a67704:	62 e1 7c 48 10 4f 0c 	vmovups zmm17,ZMMWORD PTR [rdi+0x300]
  a6770b:	62 61 7c 48 10 6f 0d 	vmovups zmm29,ZMMWORD PTR [rdi+0x340]
  a67712:	62 31 7c 48 28 c9    	vmovaps zmm9,zmm17
  a67718:	62 12 3d 48 7f cd    	vpermt2ps zmm9,zmm8,zmm29
  a6771e:	62 41 64 40 58 c9    	vaddps zmm25,zmm19,zmm9
  a67724:	62 91 64 48 58 c1    	vaddps zmm0,zmm3,zmm25
  a6772a:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a67731:	01 
  a67732:	62 f1 7c 48 10 7f 0a 	vmovups zmm7,ZMMWORD PTR [rdi+0x280]
  a67739:	62 61 7c 48 10 5f 0b 	vmovups zmm27,ZMMWORD PTR [rdi+0x2c0]
  a67740:	62 e1 7c 48 28 ef    	vmovaps zmm21,zmm7
  a67746:	62 82 3d 48 7f eb    	vpermt2ps zmm21,zmm8,zmm27
  a6774c:	62 e1 7c 48 10 57 0e 	vmovups zmm18,ZMMWORD PTR [rdi+0x380]
  a67753:	62 61 7c 48 10 77 0f 	vmovups zmm30,ZMMWORD PTR [rdi+0x3c0]
  a6775a:	62 31 7c 48 28 d2    	vmovaps zmm10,zmm18
  a67760:	62 12 3d 48 7f d6    	vpermt2ps zmm10,zmm8,zmm30
  a67766:	62 e1 7c 48 10 67 06 	vmovups zmm20,ZMMWORD PTR [rdi+0x180]
  a6776d:	62 f1 7c 48 10 47 07 	vmovups zmm0,ZMMWORD PTR [rdi+0x1c0]
  a67774:	62 31 7c 48 28 dc    	vmovaps zmm11,zmm20
  a6777a:	62 72 3d 48 7f d8    	vpermt2ps zmm11,zmm8,zmm0
  a67780:	62 41 2c 48 58 d3    	vaddps zmm26,zmm10,zmm11
  a67786:	62 61 7c 48 28 25 70 	vmovaps zmm28,ZMMWORD PTR [rip+0xffffffffff62ca70]        # 94200 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x216b0>
  a6778d:	ca 62 ff 
  a67790:	62 32 1d 40 7f ef    	vpermt2ps zmm13,zmm28,zmm23
  a67796:	62 e1 7c 48 10 7f 12 	vmovups zmm23,ZMMWORD PTR [rdi+0x480]
  a6779d:	62 82 1d 40 7f cd    	vpermt2ps zmm17,zmm28,zmm29
  a677a3:	62 61 7c 48 10 7f 13 	vmovups zmm31,ZMMWORD PTR [rdi+0x4c0]
  a677aa:	62 f2 1d 40 7f d4    	vpermt2ps zmm2,zmm28,zmm4
  a677b0:	62 b1 7c 48 28 e7    	vmovaps zmm4,zmm23
  a677b6:	62 92 3d 48 7f e7    	vpermt2ps zmm4,zmm8,zmm31
  a677bc:	62 52 4d 48 77 c6    	vpermi2ps zmm8,zmm6,zmm14
  a677c2:	62 52 1d 40 7f e7    	vpermt2ps zmm12,zmm28,zmm15
  a677c8:	62 21 14 48 5c e9    	vsubps zmm29,zmm13,zmm17
  a677ce:	62 82 1d 40 7f ff    	vpermt2ps zmm23,zmm28,zmm31
  a677d4:	62 41 6c 48 5c fc    	vsubps zmm31,zmm2,zmm12
  a677da:	62 d2 1d 40 7f f6    	vpermt2ps zmm6,zmm28,zmm14
  a677e0:	62 f2 7d 48 18 0d 6e 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff60df6e]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a677e7:	df 60 ff 
  a677ea:	62 82 1d 40 7f d6    	vpermt2ps zmm18,zmm28,zmm30
  a677f0:	62 61 04 40 59 f1    	vmulps zmm30,zmm31,zmm1
  a677f6:	62 e2 1d 40 7f e0    	vpermt2ps zmm20,zmm28,zmm0
  a677fc:	62 72 7d 48 18 3d 9a 	vbroadcastss zmm15,DWORD PTR [rip+0xffffffffff60db9a]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a67803:	db 60 ff 
  a67806:	62 42 15 40 bc f7    	vfnmadd231ps zmm30,zmm29,zmm15
  a6780c:	62 92 1d 40 7f e8    	vpermt2ps zmm5,zmm28,zmm24
  a67812:	62 62 7d 48 18 05 28 	vbroadcastss zmm24,DWORD PTR [rip+0xffffffffff60de28]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a67819:	de 60 ff 
  a6781c:	62 92 1d 40 7f fb    	vpermt2ps zmm7,zmm28,zmm27
  a67822:	62 91 7c 48 28 c0    	vmovaps zmm0,zmm24
  a67828:	62 b2 4d 40 ac c0    	vfnmadd213ps zmm0,zmm22,zmm16
  a6782e:	62 62 7d 48 18 1d b0 	vbroadcastss zmm27,DWORD PTR [rip+0xffffffffff60deb0]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a67835:	de 60 ff 
  a67838:	62 92 35 40 b8 c3    	vfmadd231ps zmm0,zmm25,zmm27
  a6783e:	62 61 14 40 59 e1    	vmulps zmm28,zmm29,zmm1
  a67844:	62 02 05 48 b8 e7    	vfmadd231ps zmm28,zmm15,zmm31
  a6784a:	62 61 44 40 5c ee    	vsubps zmm29,zmm23,zmm6
  a67850:	62 a2 25 40 b8 c6    	vfmadd231ps zmm16,zmm27,zmm22
  a67856:	62 a1 6c 40 5c f4    	vsubps zmm22,zmm18,zmm20
  a6785c:	62 82 3d 40 bc c1    	vfnmadd231ps zmm16,zmm24,zmm25
  a67862:	62 61 4c 40 59 c9    	vmulps zmm25,zmm22,zmm1
  a67868:	62 42 15 40 bc cf    	vfnmadd231ps zmm25,zmm29,zmm15
  a6786e:	62 61 14 40 59 e9    	vmulps zmm29,zmm29,zmm1
  a67874:	62 22 05 48 b8 ee    	vfmadd231ps zmm29,zmm15,zmm22
  a6787a:	62 81 7c 48 28 f0    	vmovaps zmm22,zmm24
  a67880:	62 a2 2d 40 ac f5    	vfnmadd213ps zmm22,zmm26,zmm21
  a67886:	62 01 54 40 58 fa    	vaddps zmm31,zmm21,zmm26
  a6788c:	62 82 25 40 b8 ea    	vfmadd231ps zmm21,zmm27,zmm26
  a67892:	62 41 5c 48 58 d0    	vaddps zmm26,zmm4,zmm8
  a67898:	62 01 04 40 58 fa    	vaddps zmm31,zmm31,zmm26
  a6789e:	62 82 2d 40 b8 f3    	vfmadd231ps zmm22,zmm26,zmm27
  a678a4:	62 82 3d 40 bc ea    	vfnmadd231ps zmm21,zmm24,zmm26
  a678aa:	62 61 0c 40 58 d0    	vaddps zmm26,zmm30,zmm0
  a678b0:	62 91 7c 48 5c c6    	vsubps zmm0,zmm0,zmm30
  a678b6:	62 21 34 40 58 f6    	vaddps zmm30,zmm25,zmm22
  a678bc:	62 81 4c 40 5c f1    	vsubps zmm22,zmm22,zmm25
  a678c2:	62 21 1c 40 58 c8    	vaddps zmm25,zmm28,zmm16
  a678c8:	62 81 7c 40 5c c4    	vsubps zmm16,zmm16,zmm28
  a678ce:	62 21 14 40 58 e5    	vaddps zmm28,zmm29,zmm21
  a678d4:	62 81 54 40 5c ed    	vsubps zmm21,zmm21,zmm29
  a678da:	62 b1 7c 40 58 cd    	vaddps zmm1,zmm16,zmm21
  a678e0:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm1
  a678e7:	03 
  a678e8:	62 21 7c 40 5c ed    	vsubps zmm29,zmm16,zmm21
  a678ee:	62 91 34 40 58 cc    	vaddps zmm1,zmm25,zmm28
  a678f4:	62 91 34 40 5c dc    	vsubps zmm3,zmm25,zmm28
  a678fa:	62 71 7c 48 28 74 24 	vmovaps zmm14,ZMMWORD PTR [rsp+0x40]
  a67901:	01 
  a67902:	62 01 0c 48 58 cf    	vaddps zmm25,zmm14,zmm31
  a67908:	62 11 0c 48 5c f7    	vsubps zmm14,zmm14,zmm31
  a6790e:	62 71 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm14
  a67915:	09 
  a67916:	62 81 2c 40 58 c6    	vaddps zmm16,zmm26,zmm30
  a6791c:	62 11 2c 40 5c f6    	vsubps zmm14,zmm26,zmm30
  a67922:	62 71 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm14
  a67929:	02 
  a6792a:	62 21 7c 48 58 fe    	vaddps zmm31,zmm0,zmm22
  a67930:	62 b1 7c 48 5c c6    	vsubps zmm0,zmm0,zmm22
  a67936:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  a6793d:	04 
  a6793e:	62 d1 6c 48 58 c4    	vaddps zmm0,zmm2,zmm12
  a67944:	62 71 7c 48 28 35 32 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff65f632]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a6794b:	f6 65 ff 
  a6794e:	62 31 14 48 58 e9    	vaddps zmm13,zmm13,zmm17
  a67954:	62 e1 54 48 58 c8    	vaddps zmm17,zmm5,zmm0
  a6795a:	62 31 6c 40 58 e4    	vaddps zmm12,zmm18,zmm20
  a67960:	62 c1 44 48 58 d4    	vaddps zmm18,zmm7,zmm12
  a67966:	62 e1 44 40 58 e6    	vaddps zmm20,zmm23,zmm6
  a6796c:	62 91 7c 48 28 f0    	vmovaps zmm6,zmm24
  a67972:	62 f2 7d 48 ac f5    	vfnmadd213ps zmm6,zmm0,zmm5
  a67978:	62 f2 25 40 b8 e8    	vfmadd231ps zmm5,zmm27,zmm0
  a6797e:	62 81 7c 48 28 e8    	vmovaps zmm21,zmm24
  a67984:	62 e2 1d 48 ac ef    	vfnmadd213ps zmm21,zmm12,zmm7
  a6798a:	62 92 1d 48 b8 fb    	vfmadd231ps zmm7,zmm12,zmm27
  a67990:	62 91 7c 48 28 c1    	vmovaps zmm0,zmm25
  a67996:	62 b2 0d 48 7f c0    	vpermt2ps zmm0,zmm14,zmm16
  a6799c:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm0
  a679a3:	06 
  a679a4:	62 92 15 48 b8 f3    	vfmadd231ps zmm6,zmm13,zmm27
  a679aa:	62 82 5d 40 b8 eb    	vfmadd231ps zmm21,zmm20,zmm27
  a679b0:	c4 41 18 57 e4       	vxorps xmm12,xmm12,xmm12
  a679b5:	62 c1 74 40 58 fd    	vaddps zmm23,zmm17,zmm13
  a679bb:	62 d2 3d 40 bc ed    	vfnmadd231ps zmm5,zmm24,zmm13
  a679c1:	62 61 7c 48 28 e1    	vmovaps zmm28,zmm1
  a679c7:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm1
  a679ce:	01 
  a679cf:	62 92 5d 40 bc f8    	vfnmadd231ps zmm7,zmm20,zmm24
  a679d5:	62 91 7c 48 28 c5    	vmovaps zmm0,zmm29
  a679db:	62 81 7c 48 28 f5    	vmovaps zmm22,zmm29
  a679e1:	62 61 7c 48 28 d3    	vmovaps zmm26,zmm3
  a679e7:	62 f2 0d 48 7f c3    	vpermt2ps zmm0,zmm14,zmm3
  a679ed:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm0
  a679f4:	05 
  a679f5:	62 a1 6c 40 58 d4    	vaddps zmm18,zmm18,zmm20
  a679fb:	62 31 44 40 58 ea    	vaddps zmm13,zmm23,zmm18
  a67a01:	62 d1 64 40 5c c1    	vsubps zmm0,zmm19,zmm9
  a67a07:	62 e1 7c 48 28 0d af 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff65f5af]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a67a0e:	f5 65 ff 
  a67a11:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x200]
  a67a18:	08 
  a67a19:	62 f1 74 48 5c 4c 24 	vsubps zmm1,zmm1,ZMMWORD PTR [rsp+0x1c0]
  a67a20:	07 
  a67a21:	62 f2 7d 48 18 15 2d 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff60dd2d]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a67a28:	dd 60 ff 
  a67a2b:	62 71 74 48 59 ca    	vmulps zmm9,zmm1,zmm2
  a67a31:	62 52 7d 48 bc cf    	vfnmadd231ps zmm9,zmm0,zmm15
  a67a37:	62 d1 5c 48 5c e0    	vsubps zmm4,zmm4,zmm8
  a67a3d:	62 51 4c 48 5c c1    	vsubps zmm8,zmm6,zmm9
  a67a43:	62 d1 2c 48 5c db    	vsubps zmm3,zmm10,zmm11
  a67a49:	62 71 64 48 59 d2    	vmulps zmm10,zmm3,zmm2
  a67a4f:	62 52 5d 48 bc d7    	vfnmadd231ps zmm10,zmm4,zmm15
  a67a55:	62 71 7c 48 59 da    	vmulps zmm11,zmm0,zmm2
  a67a5b:	62 72 05 48 b8 d9    	vfmadd231ps zmm11,zmm15,zmm1
  a67a61:	62 c1 54 40 5c da    	vsubps zmm19,zmm21,zmm10
  a67a67:	62 f1 5c 48 59 ca    	vmulps zmm1,zmm4,zmm2
  a67a6d:	62 21 3c 48 58 f3    	vaddps zmm30,zmm8,zmm19
  a67a73:	62 d2 65 48 b8 cf    	vfmadd231ps zmm1,zmm3,zmm15
  a67a79:	62 51 7c 48 28 fd    	vmovaps zmm15,zmm13
  a67a7f:	62 d1 7c 48 28 d5    	vmovaps zmm2,zmm13
  a67a85:	62 12 75 40 7f fe    	vpermt2ps zmm15,zmm17,zmm30
  a67a8b:	62 d1 54 48 5c db    	vsubps zmm3,zmm5,zmm11
  a67a91:	62 d1 4c 48 58 e1    	vaddps zmm4,zmm6,zmm9
  a67a97:	62 f1 44 48 5c f1    	vsubps zmm6,zmm7,zmm1
  a67a9d:	62 51 54 40 58 ca    	vaddps zmm9,zmm21,zmm10
  a67aa3:	62 71 64 48 58 d6    	vaddps zmm10,zmm3,zmm6
  a67aa9:	62 d1 54 48 58 eb    	vaddps zmm5,zmm5,zmm11
  a67aaf:	62 51 7c 48 28 ea    	vmovaps zmm13,zmm10
  a67ab5:	62 51 7c 48 28 da    	vmovaps zmm11,zmm10
  a67abb:	62 52 75 40 7f ec    	vpermt2ps zmm13,zmm17,zmm12
  a67ac1:	62 71 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm13
  a67ac8:	08 
  a67ac9:	62 f1 44 48 58 c9    	vaddps zmm1,zmm7,zmm1
  a67acf:	62 f1 54 48 58 f9    	vaddps zmm7,zmm5,zmm1
  a67ad5:	62 61 54 48 5c e9    	vsubps zmm29,zmm5,zmm1
  a67adb:	62 41 5c 48 58 d9    	vaddps zmm27,zmm4,zmm9
  a67ae1:	62 f1 64 48 5c ce    	vsubps zmm1,zmm3,zmm6
  a67ae7:	62 81 7c 48 28 eb    	vmovaps zmm21,zmm27
  a67aed:	62 c2 75 40 7f ec    	vpermt2ps zmm21,zmm17,zmm12
  a67af3:	62 31 44 40 5c d2    	vsubps zmm10,zmm23,zmm18
  a67af9:	62 f1 7c 48 28 c7    	vmovaps zmm0,zmm7
  a67aff:	62 f1 7c 48 28 f7    	vmovaps zmm6,zmm7
  a67b05:	62 d2 75 40 7f c4    	vpermt2ps zmm0,zmm17,zmm12
  a67b0b:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm0
  a67b12:	07 
  a67b13:	62 21 3c 48 5c c3    	vsubps zmm24,zmm8,zmm19
  a67b19:	62 81 7c 48 28 d5    	vmovaps zmm18,zmm29
  a67b1f:	62 e2 75 40 7f d1    	vpermt2ps zmm18,zmm17,zmm1
  a67b25:	62 d1 5c 48 5c d9    	vsubps zmm3,zmm4,zmm9
  a67b2b:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x7c0],zmm3
  a67b32:	1f 
  a67b33:	62 d1 7c 48 28 c2    	vmovaps zmm0,zmm10
  a67b39:	62 d1 7c 48 28 fa    	vmovaps zmm7,zmm10
  a67b3f:	62 d2 75 40 7f c4    	vpermt2ps zmm0,zmm17,zmm12
  a67b45:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x780],zmm0
  a67b4c:	1e 
  a67b4d:	62 22 75 40 7f c8    	vpermt2ps zmm25,zmm17,zmm16
  a67b53:	62 11 7c 48 28 c8    	vmovaps zmm9,zmm24
  a67b59:	62 52 75 40 7f cc    	vpermt2ps zmm9,zmm17,zmm12
  a67b5f:	62 a1 7c 48 28 de    	vmovaps zmm19,zmm22
  a67b65:	62 82 75 40 7f da    	vpermt2ps zmm19,zmm17,zmm26
  a67b6b:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a67b71:	62 d2 75 40 7f c4    	vpermt2ps zmm0,zmm17,zmm12
  a67b77:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm0
  a67b7e:	0a 
  a67b7f:	62 42 75 40 7f e4    	vpermt2ps zmm28,zmm17,zmm12
  a67b85:	62 61 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm28
  a67b8c:	11 
  a67b8d:	62 11 7c 48 28 ef    	vmovaps zmm13,zmm31
  a67b93:	62 42 75 40 7f fc    	vpermt2ps zmm31,zmm17,zmm12
  a67b99:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0xc0]
  a67ba0:	03 
  a67ba1:	62 f1 7c 48 28 c4    	vmovaps zmm0,zmm4
  a67ba7:	62 d2 75 40 7f e4    	vpermt2ps zmm4,zmm17,zmm12
  a67bad:	62 e1 7c 48 28 f4    	vmovaps zmm22,zmm4
  a67bb3:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm4
  a67bba:	03 
  a67bbb:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x240]
  a67bc2:	09 
  a67bc3:	62 61 7c 48 28 d5    	vmovaps zmm26,zmm5
  a67bc9:	62 d2 75 40 7f ec    	vpermt2ps zmm5,zmm17,zmm12
  a67bcf:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm5
  a67bd6:	09 
  a67bd7:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x80]
  a67bde:	02 
  a67bdf:	62 c1 7c 48 28 e2    	vmovaps zmm20,zmm10
  a67be5:	62 52 75 40 7f d4    	vpermt2ps zmm10,zmm17,zmm12
  a67beb:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x100]
  a67bf2:	04 
  a67bf3:	62 e1 7c 48 28 fb    	vmovaps zmm23,zmm3
  a67bf9:	62 d2 75 40 7f dc    	vpermt2ps zmm3,zmm17,zmm12
  a67bff:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm3
  a67c06:	04 
  a67c07:	62 71 7c 48 28 c2    	vmovaps zmm8,zmm2
  a67c0d:	62 12 0d 48 7f c6    	vpermt2ps zmm8,zmm14,zmm30
  a67c13:	62 62 0d 48 7f e9    	vpermt2ps zmm29,zmm14,zmm1
  a67c19:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x40]
  a67c20:	01 
  a67c21:	62 d2 0d 48 7f cc    	vpermt2ps zmm1,zmm14,zmm12
  a67c27:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm1
  a67c2e:	01 
  a67c2f:	62 52 0d 48 7f ec    	vpermt2ps zmm13,zmm14,zmm12
  a67c35:	62 d2 0d 48 7f c4    	vpermt2ps zmm0,zmm14,zmm12
  a67c3b:	62 42 0d 48 7f d4    	vpermt2ps zmm26,zmm14,zmm12
  a67c41:	62 c2 0d 48 7f e4    	vpermt2ps zmm20,zmm14,zmm12
  a67c47:	62 c2 0d 48 7f fc    	vpermt2ps zmm23,zmm14,zmm12
  a67c4d:	62 52 0d 48 7f dc    	vpermt2ps zmm11,zmm14,zmm12
  a67c53:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm11
  a67c5a:	0d 
  a67c5b:	62 42 0d 48 7f dc    	vpermt2ps zmm27,zmm14,zmm12
  a67c61:	62 d2 0d 48 7f f4    	vpermt2ps zmm6,zmm14,zmm12
  a67c67:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm6
  a67c6e:	0c 
  a67c6f:	62 d2 0d 48 7f fc    	vpermt2ps zmm7,zmm14,zmm12
  a67c75:	62 42 0d 48 7f c4    	vpermt2ps zmm24,zmm14,zmm12
  a67c7b:	62 61 7c 48 28 74 24 	vmovaps zmm30,ZMMWORD PTR [rsp+0x7c0]
  a67c82:	1f 
  a67c83:	62 42 0d 48 7f f4    	vpermt2ps zmm30,zmm14,zmm12
  a67c89:	62 61 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm25
  a67c90:	12 
  a67c91:	62 f1 7c 48 28 25 a5 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff65f2a5]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a67c98:	f2 65 ff 
  a67c9b:	62 02 5d 48 7f cc    	vpermt2ps zmm25,zmm4,zmm28
  a67ca1:	62 01 7c 48 28 e1    	vmovaps zmm28,zmm25
  a67ca7:	62 61 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x900],zmm25
  a67cae:	24 
  a67caf:	62 81 7c 48 28 cf    	vmovaps zmm17,zmm31
  a67cb5:	62 61 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm31
  a67cbc:	10 
  a67cbd:	62 a2 5d 48 7f ce    	vpermt2ps zmm17,zmm4,zmm22
  a67cc3:	62 e1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x940],zmm17
  a67cca:	25 
  a67ccb:	62 a1 7c 48 28 c3    	vmovaps zmm16,zmm19
  a67cd1:	62 e1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm19
  a67cd8:	0f 
  a67cd9:	62 e2 5d 48 7f c5    	vpermt2ps zmm16,zmm4,zmm5
  a67cdf:	62 e1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x8c0],zmm16
  a67ce6:	23 
  a67ce7:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm10
  a67cee:	0e 
  a67cef:	62 72 5d 48 7f d3    	vpermt2ps zmm10,zmm4,zmm3
  a67cf5:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm10
  a67cfc:	02 
  a67cfd:	62 71 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm15
  a67d04:	0b 
  a67d05:	62 72 5d 48 7f 7c 24 	vpermt2ps zmm15,zmm4,ZMMWORD PTR [rsp+0x200]
  a67d0c:	08 
  a67d0d:	62 e1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x880],zmm21
  a67d14:	22 
  a67d15:	62 e2 5d 48 7f 6c 24 	vpermt2ps zmm21,zmm4,ZMMWORD PTR [rsp+0x1c0]
  a67d1c:	07 
  a67d1d:	62 31 7c 48 28 e5    	vmovaps zmm12,zmm21
  a67d23:	62 e1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0xa00],zmm21
  a67d2a:	28 
  a67d2b:	62 e1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x840],zmm18
  a67d32:	21 
  a67d33:	62 e1 7c 48 28 74 24 	vmovaps zmm22,ZMMWORD PTR [rsp+0x780]
  a67d3a:	1e 
  a67d3b:	62 a2 5d 48 7f d6    	vpermt2ps zmm18,zmm4,zmm22
  a67d41:	62 31 7c 48 28 d2    	vmovaps zmm10,zmm18
  a67d47:	62 e1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x9c0],zmm18
  a67d4e:	27 
  a67d4f:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x800],zmm9
  a67d56:	20 
  a67d57:	62 72 5d 48 7f 4c 24 	vpermt2ps zmm9,zmm4,ZMMWORD PTR [rsp+0x280]
  a67d5e:	0a 
  a67d5f:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x980],zmm9
  a67d66:	26 
  a67d67:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x180]
  a67d6e:	06 
  a67d6f:	62 e1 7c 48 28 ed    	vmovaps zmm21,zmm5
  a67d75:	62 f2 5d 48 7f e9    	vpermt2ps zmm5,zmm4,zmm1
  a67d7b:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm5
  a67d82:	06 
  a67d83:	62 c1 7c 48 28 dd    	vmovaps zmm19,zmm13
  a67d89:	62 72 5d 48 7f e8    	vpermt2ps zmm13,zmm4,zmm0
  a67d8f:	62 61 7c 48 28 c8    	vmovaps zmm25,zmm0
  a67d95:	62 71 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm13
  a67d9c:	13 
  a67d9d:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x140]
  a67da4:	05 
  a67da5:	62 e1 7c 48 28 d1    	vmovaps zmm18,zmm1
  a67dab:	62 92 5d 48 7f ca    	vpermt2ps zmm1,zmm4,zmm26
  a67db1:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm1
  a67db8:	05 
  a67db9:	62 31 7c 48 28 f4    	vmovaps zmm14,zmm20
  a67dbf:	62 32 5d 48 7f f7    	vpermt2ps zmm14,zmm4,zmm23
  a67dc5:	62 71 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0xa40],zmm14
  a67dcc:	29 
  a67dcd:	62 d1 7c 48 28 c0    	vmovaps zmm0,zmm8
  a67dd3:	62 d2 5d 48 7f c3    	vpermt2ps zmm0,zmm4,zmm11
  a67dd9:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm0
  a67de0:	17 
  a67de1:	62 91 7c 48 28 db    	vmovaps zmm3,zmm27
  a67de7:	62 f2 5d 48 7f de    	vpermt2ps zmm3,zmm4,zmm6
  a67ded:	62 f1 7c 48 28 d3    	vmovaps zmm2,zmm3
  a67df3:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm3
  a67dfa:	16 
  a67dfb:	62 91 7c 48 28 dd    	vmovaps zmm3,zmm29
  a67e01:	62 f2 5d 48 7f df    	vpermt2ps zmm3,zmm4,zmm7
  a67e07:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm3
  a67e0e:	15 
  a67e0f:	62 f1 7c 48 28 f7    	vmovaps zmm6,zmm7
  a67e15:	62 92 3d 40 77 e6    	vpermi2ps zmm4,zmm24,zmm30
  a67e1b:	62 91 7c 48 28 fe    	vmovaps zmm7,zmm30
  a67e21:	62 61 7c 48 28 35 d5 	vmovaps zmm30,ZMMWORD PTR [rip+0xffffffffff65efd5]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a67e28:	ef 65 ff 
  a67e2b:	62 71 fd 48 15 da    	vunpckhpd zmm11,zmm0,zmm2
  a67e31:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x740],zmm11
  a67e38:	1d 
  a67e39:	62 f1 e5 48 15 c4    	vunpckhpd zmm0,zmm3,zmm4
  a67e3f:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x700],zmm0
  a67e46:	1c 
  a67e47:	62 72 0d 40 7f d8    	vpermt2ps zmm11,zmm30,zmm0
  a67e4d:	62 41 d5 48 15 fd    	vunpckhpd zmm31,zmm5,zmm13
  a67e53:	62 61 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x6c0],zmm31
  a67e5a:	1b 
  a67e5b:	62 d1 f5 48 15 c6    	vunpckhpd zmm0,zmm1,zmm14
  a67e61:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm0
  a67e68:	1a 
  a67e69:	62 62 0d 40 7f f8    	vpermt2ps zmm31,zmm30,zmm0
  a67e6f:	62 f1 7c 48 10 52 0d 	vmovups zmm2,ZMMWORD PTR [rdx+0x340]
  a67e76:	62 f1 7c 48 10 4a 0c 	vmovups zmm1,ZMMWORD PTR [rdx+0x300]
  a67e7d:	62 f1 04 40 59 c1    	vmulps zmm0,zmm31,zmm1
  a67e83:	62 f2 25 48 b8 c2    	vfmadd231ps zmm0,zmm11,zmm2
  a67e89:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x7c0],zmm0
  a67e90:	1f 
  a67e91:	62 f1 24 48 59 c1    	vmulps zmm0,zmm11,zmm1
  a67e97:	62 92 6d 48 bc c7    	vfnmadd231ps zmm0,zmm2,zmm31
  a67e9d:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xb00],zmm0
  a67ea4:	2c 
  a67ea5:	62 d1 85 48 15 cc    	vunpckhpd zmm1,zmm15,zmm12
  a67eab:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm1
  a67eb2:	14 
  a67eb3:	62 d1 ad 48 15 c1    	vunpckhpd zmm0,zmm10,zmm9
  a67eb9:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm0
  a67ec0:	19 
  a67ec1:	62 f2 0d 40 7f c8    	vpermt2ps zmm1,zmm30,zmm0
  a67ec7:	62 21 9d 40 15 f9    	vunpckhpd zmm31,zmm28,zmm17
  a67ecd:	62 71 7c 48 28 74 24 	vmovaps zmm14,ZMMWORD PTR [rsp+0x80]
  a67ed4:	02 
  a67ed5:	62 d1 fd 40 15 c6    	vunpckhpd zmm0,zmm16,zmm14
  a67edb:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm0
  a67ee2:	18 
  a67ee3:	62 91 7c 48 28 d7    	vmovaps zmm2,zmm31
  a67ee9:	62 f2 0d 40 7f d0    	vpermt2ps zmm2,zmm30,zmm0
  a67eef:	62 f1 7c 48 10 5a 1d 	vmovups zmm3,ZMMWORD PTR [rdx+0x740]
  a67ef6:	62 f1 7c 48 10 42 1c 	vmovups zmm0,ZMMWORD PTR [rdx+0x700]
  a67efd:	62 61 6c 48 59 e0    	vmulps zmm28,zmm2,zmm0
  a67f03:	62 62 75 48 b8 e3    	vfmadd231ps zmm28,zmm1,zmm3
  a67f09:	62 61 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0xac0],zmm28
  a67f10:	2b 
  a67f11:	62 f1 74 48 59 c0    	vmulps zmm0,zmm1,zmm0
  a67f17:	62 f2 65 48 bc c2    	vfnmadd231ps zmm0,zmm3,zmm2
  a67f1d:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xa80],zmm0
  a67f24:	2a 
  a67f25:	62 f1 7c 48 28 05 d1 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff65efd1]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a67f2c:	ef 65 ff 
  a67f2f:	62 e2 7d 48 7f 6c 24 	vpermt2ps zmm21,zmm0,ZMMWORD PTR [rsp+0x40]
  a67f36:	01 
  a67f37:	62 82 7d 48 7f d9    	vpermt2ps zmm19,zmm0,zmm25
  a67f3d:	62 82 7d 48 7f d2    	vpermt2ps zmm18,zmm0,zmm26
  a67f43:	62 a2 7d 48 7f e7    	vpermt2ps zmm20,zmm0,zmm23
  a67f49:	62 71 7c 48 28 6c 24 	vmovaps zmm13,ZMMWORD PTR [rsp+0x2c0]
  a67f50:	0b 
  a67f51:	62 72 7d 48 7f 6c 24 	vpermt2ps zmm13,zmm0,ZMMWORD PTR [rsp+0x200]
  a67f58:	08 
  a67f59:	62 71 7c 48 28 5c 24 	vmovaps zmm11,ZMMWORD PTR [rsp+0x880]
  a67f60:	22 
  a67f61:	62 72 7d 48 7f 5c 24 	vpermt2ps zmm11,zmm0,ZMMWORD PTR [rsp+0x1c0]
  a67f68:	07 
  a67f69:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x840]
  a67f70:	21 
  a67f71:	62 32 7d 48 7f d6    	vpermt2ps zmm10,zmm0,zmm22
  a67f77:	62 61 7c 48 28 4c 24 	vmovaps zmm25,ZMMWORD PTR [rsp+0x800]
  a67f7e:	20 
  a67f7f:	62 62 7d 48 7f 4c 24 	vpermt2ps zmm25,zmm0,ZMMWORD PTR [rsp+0x280]
  a67f86:	0a 
  a67f87:	62 71 7c 48 28 64 24 	vmovaps zmm12,ZMMWORD PTR [rsp+0x480]
  a67f8e:	12 
  a67f8f:	62 72 7d 48 7f 64 24 	vpermt2ps zmm12,zmm0,ZMMWORD PTR [rsp+0x440]
  a67f96:	11 
  a67f97:	62 e1 7c 48 28 44 24 	vmovaps zmm16,ZMMWORD PTR [rsp+0x400]
  a67f9e:	10 
  a67f9f:	62 e2 7d 48 7f 44 24 	vpermt2ps zmm16,zmm0,ZMMWORD PTR [rsp+0xc0]
  a67fa6:	03 
  a67fa7:	62 e1 7c 48 28 4c 24 	vmovaps zmm17,ZMMWORD PTR [rsp+0x3c0]
  a67fae:	0f 
  a67faf:	62 e2 7d 48 7f 4c 24 	vpermt2ps zmm17,zmm0,ZMMWORD PTR [rsp+0x240]
  a67fb6:	09 
  a67fb7:	62 e1 7c 48 28 7c 24 	vmovaps zmm23,ZMMWORD PTR [rsp+0x380]
  a67fbe:	0e 
  a67fbf:	62 e2 7d 48 7f 7c 24 	vpermt2ps zmm23,zmm0,ZMMWORD PTR [rsp+0x100]
  a67fc6:	04 
  a67fc7:	62 72 7d 48 7f 44 24 	vpermt2ps zmm8,zmm0,ZMMWORD PTR [rsp+0x340]
  a67fce:	0d 
  a67fcf:	62 62 7d 48 7f 5c 24 	vpermt2ps zmm27,zmm0,ZMMWORD PTR [rsp+0x300]
  a67fd6:	0c 
  a67fd7:	62 62 7d 48 7f ee    	vpermt2ps zmm29,zmm0,zmm6
  a67fdd:	62 62 7d 48 7f c7    	vpermt2ps zmm24,zmm0,zmm7
  a67fe3:	62 21 d5 40 15 d3    	vunpckhpd zmm26,zmm21,zmm19
  a67fe9:	62 b1 ed 40 15 d4    	vunpckhpd zmm2,zmm18,zmm20
  a67fef:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm2
  a67ff6:	0e 
  a67ff7:	62 91 7c 48 28 c2    	vmovaps zmm0,zmm26
  a67ffd:	62 f2 0d 40 7f c2    	vpermt2ps zmm0,zmm30,zmm2
  a68003:	62 91 bd 48 15 db    	vunpckhpd zmm3,zmm8,zmm27
  a68009:	62 d1 7c 48 28 e8    	vmovaps zmm5,zmm8
  a6800f:	62 91 95 40 15 d0    	vunpckhpd zmm2,zmm29,zmm24
  a68015:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm2
  a6801c:	0d 
  a6801d:	62 f1 7c 48 28 cb    	vmovaps zmm1,zmm3
  a68023:	62 f2 0d 40 7f ca    	vpermt2ps zmm1,zmm30,zmm2
  a68029:	62 f1 7c 48 10 52 04 	vmovups zmm2,ZMMWORD PTR [rdx+0x100]
  a68030:	62 f1 7c 48 10 7a 05 	vmovups zmm7,ZMMWORD PTR [rdx+0x140]
  a68037:	62 71 74 48 59 c2    	vmulps zmm8,zmm1,zmm2
  a6803d:	62 72 7d 48 bc c7    	vfnmadd231ps zmm8,zmm0,zmm7
  a68043:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm8
  a6804a:	08 
  a6804b:	62 f1 7c 48 59 c2    	vmulps zmm0,zmm0,zmm2
  a68051:	62 f2 45 48 b8 c1    	vfmadd231ps zmm0,zmm7,zmm1
  a68057:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm0
  a6805e:	07 
  a6805f:	62 21 9d 48 15 e0    	vunpckhpd zmm28,zmm12,zmm16
  a68065:	62 b1 f5 40 15 cf    	vunpckhpd zmm1,zmm17,zmm23
  a6806b:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm1
  a68072:	0c 
  a68073:	62 91 7c 48 28 c4    	vmovaps zmm0,zmm28
  a68079:	62 f2 0d 40 7f c1    	vpermt2ps zmm0,zmm30,zmm1
  a6807f:	62 d1 95 48 15 cb    	vunpckhpd zmm1,zmm13,zmm11
  a68085:	62 91 ad 48 15 f1    	vunpckhpd zmm6,zmm10,zmm25
  a6808b:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm6
  a68092:	0b 
  a68093:	62 d1 7c 48 28 fa    	vmovaps zmm7,zmm10
  a68099:	62 f1 7c 48 28 d1    	vmovaps zmm2,zmm1
  a6809f:	62 f2 0d 40 7f d6    	vpermt2ps zmm2,zmm30,zmm6
  a680a5:	62 71 7c 48 10 42 15 	vmovups zmm8,ZMMWORD PTR [rdx+0x540]
  a680ac:	62 71 7c 48 10 4a 14 	vmovups zmm9,ZMMWORD PTR [rdx+0x500]
  a680b3:	62 51 6c 48 59 d1    	vmulps zmm10,zmm2,zmm9
  a680b9:	62 52 7d 48 bc d0    	vfnmadd231ps zmm10,zmm0,zmm8
  a680bf:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm10
  a680c6:	0a 
  a680c7:	62 d1 7c 48 59 c1    	vmulps zmm0,zmm0,zmm9
  a680cd:	62 f2 3d 48 b8 c2    	vfmadd231ps zmm0,zmm8,zmm2
  a680d3:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x780],zmm0
  a680da:	1e 
  a680db:	62 b1 d5 40 14 c3    	vunpcklpd zmm0,zmm21,zmm19
  a680e1:	62 31 ed 40 14 c4    	vunpcklpd zmm8,zmm18,zmm20
  a680e7:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm8
  a680ee:	0f 
  a680ef:	62 91 d5 48 14 eb    	vunpcklpd zmm5,zmm5,zmm27
  a680f5:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm5
  a680fc:	01 
  a680fd:	62 91 95 40 14 f0    	vunpcklpd zmm6,zmm29,zmm24
  a68103:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm6
  a6810a:	11 
  a6810b:	62 e1 7c 48 28 f0    	vmovaps zmm22,zmm0
  a68111:	62 f1 7c 48 28 15 25 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff65ed25]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a68118:	ed 65 ff 
  a6811b:	62 d2 6d 48 7f c0    	vpermt2ps zmm0,zmm2,zmm8
  a68121:	62 f2 6d 48 7f ee    	vpermt2ps zmm5,zmm2,zmm6
  a68127:	62 f1 7c 48 10 72 02 	vmovups zmm6,ZMMWORD PTR [rdx+0x80]
  a6812e:	62 71 7c 48 10 42 03 	vmovups zmm8,ZMMWORD PTR [rdx+0xc0]
  a68135:	62 71 54 48 59 ce    	vmulps zmm9,zmm5,zmm6
  a6813b:	62 52 7d 48 bc c8    	vfnmadd231ps zmm9,zmm0,zmm8
  a68141:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm9
  a68148:	12 
  a68149:	62 f1 7c 48 59 c6    	vmulps zmm0,zmm0,zmm6
  a6814f:	62 f2 3d 48 b8 c5    	vfmadd231ps zmm0,zmm8,zmm5
  a68155:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm0
  a6815c:	10 
  a6815d:	62 d1 95 48 14 c3    	vunpcklpd zmm0,zmm13,zmm11
  a68163:	62 11 c5 48 14 e9    	vunpcklpd zmm13,zmm7,zmm25
  a68169:	62 b1 9d 48 14 e8    	vunpcklpd zmm5,zmm12,zmm16
  a6816f:	62 31 f5 40 14 e7    	vunpcklpd zmm12,zmm17,zmm23
  a68175:	62 e1 7c 48 28 e5    	vmovaps zmm20,zmm5
  a6817b:	62 d2 6d 48 7f ec    	vpermt2ps zmm5,zmm2,zmm12
  a68181:	62 61 7c 48 28 c8    	vmovaps zmm25,zmm0
  a68187:	62 d2 6d 48 7f c5    	vpermt2ps zmm0,zmm2,zmm13
  a6818d:	62 f1 7c 48 10 72 13 	vmovups zmm6,ZMMWORD PTR [rdx+0x4c0]
  a68194:	62 71 7c 48 10 42 12 	vmovups zmm8,ZMMWORD PTR [rdx+0x480]
  a6819b:	62 51 7c 48 59 c8    	vmulps zmm9,zmm0,zmm8
  a681a1:	62 72 55 48 bc ce    	vfnmadd231ps zmm9,zmm5,zmm6
  a681a7:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm9
  a681ae:	04 
  a681af:	62 d1 54 48 59 e8    	vmulps zmm5,zmm5,zmm8
  a681b5:	62 f2 4d 48 b8 e8    	vfmadd231ps zmm5,zmm6,zmm0
  a681bb:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm5
  a681c2:	03 
  a681c3:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x900]
  a681ca:	24 
  a681cb:	62 f1 fd 48 14 44 24 	vunpcklpd zmm0,zmm0,ZMMWORD PTR [rsp+0x940]
  a681d2:	25 
  a681d3:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x8c0]
  a681da:	23 
  a681db:	62 51 d5 48 14 ce    	vunpcklpd zmm9,zmm5,zmm14
  a681e1:	62 f1 85 48 14 6c 24 	vunpcklpd zmm5,zmm15,ZMMWORD PTR [rsp+0xa00]
  a681e8:	28 
  a681e9:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x9c0]
  a681f0:	27 
  a681f1:	62 71 cd 48 14 44 24 	vunpcklpd zmm8,zmm6,ZMMWORD PTR [rsp+0x980]
  a681f8:	26 
  a681f9:	62 e1 7c 48 28 c5    	vmovaps zmm16,zmm5
  a681ff:	62 d2 6d 48 7f e8    	vpermt2ps zmm5,zmm2,zmm8
  a68205:	62 61 7c 48 28 d8    	vmovaps zmm27,zmm0
  a6820b:	62 d2 6d 48 7f c1    	vpermt2ps zmm0,zmm2,zmm9
  a68211:	62 f1 7c 48 10 72 1b 	vmovups zmm6,ZMMWORD PTR [rdx+0x6c0]
  a68218:	62 71 7c 48 10 52 1a 	vmovups zmm10,ZMMWORD PTR [rdx+0x680]
  a6821f:	62 51 7c 48 59 f2    	vmulps zmm14,zmm0,zmm10
  a68225:	62 72 55 48 b8 f6    	vfmadd231ps zmm14,zmm5,zmm6
  a6822b:	62 71 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm14
  a68232:	02 
  a68233:	62 d1 54 48 59 ea    	vmulps zmm5,zmm5,zmm10
  a68239:	62 f2 4d 48 bc e8    	vfnmadd231ps zmm5,zmm6,zmm0
  a6823f:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm5
  a68246:	09 
  a68247:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x180]
  a6824e:	06 
  a6824f:	62 71 fd 48 14 7c 24 	vunpcklpd zmm15,zmm0,ZMMWORD PTR [rsp+0x4c0]
  a68256:	13 
  a68257:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x140]
  a6825e:	05 
  a6825f:	62 f1 fd 48 14 74 24 	vunpcklpd zmm6,zmm0,ZMMWORD PTR [rsp+0xa40]
  a68266:	29 
  a68267:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x5c0]
  a6826e:	17 
  a6826f:	62 71 fd 48 14 74 24 	vunpcklpd zmm14,zmm0,ZMMWORD PTR [rsp+0x580]
  a68276:	16 
  a68277:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x540]
  a6827e:	15 
  a6827f:	62 f1 fd 48 14 ec    	vunpcklpd zmm5,zmm0,zmm4
  a68285:	62 d1 7c 48 28 c6    	vmovaps zmm0,zmm14
  a6828b:	62 72 6d 48 7f f5    	vpermt2ps zmm14,zmm2,zmm5
  a68291:	62 51 7c 48 28 d7    	vmovaps zmm10,zmm15
  a68297:	62 72 6d 48 7f fe    	vpermt2ps zmm15,zmm2,zmm6
  a6829d:	62 f1 7c 48 10 62 0b 	vmovups zmm4,ZMMWORD PTR [rdx+0x2c0]
  a682a4:	62 e1 7c 48 10 4a 0a 	vmovups zmm17,ZMMWORD PTR [rdx+0x280]
  a682ab:	62 a1 04 48 59 d1    	vmulps zmm18,zmm15,zmm17
  a682b1:	62 e2 0d 48 b8 d4    	vfmadd231ps zmm18,zmm14,zmm4
  a682b7:	62 e1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm18
  a682be:	06 
  a682bf:	62 31 0c 48 59 f1    	vmulps zmm14,zmm14,zmm17
  a682c5:	62 52 5d 48 bc f7    	vfnmadd231ps zmm14,zmm4,zmm15
  a682cb:	62 71 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm14
  a682d2:	05 
  a682d3:	62 62 6d 48 7f 54 24 	vpermt2ps zmm26,zmm2,ZMMWORD PTR [rsp+0x380]
  a682da:	0e 
  a682db:	62 f2 6d 48 7f 5c 24 	vpermt2ps zmm3,zmm2,ZMMWORD PTR [rsp+0x340]
  a682e2:	0d 
  a682e3:	62 62 6d 48 7f 64 24 	vpermt2ps zmm28,zmm2,ZMMWORD PTR [rsp+0x300]
  a682ea:	0c 
  a682eb:	62 f2 6d 48 7f 4c 24 	vpermt2ps zmm1,zmm2,ZMMWORD PTR [rsp+0x2c0]
  a682f2:	0b 
  a682f3:	62 71 7c 48 28 74 24 	vmovaps zmm14,ZMMWORD PTR [rsp+0x740]
  a682fa:	1d 
  a682fb:	62 72 6d 48 7f 74 24 	vpermt2ps zmm14,zmm2,ZMMWORD PTR [rsp+0x700]
  a68302:	1c 
  a68303:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x6c0]
  a6830a:	1b 
  a6830b:	62 f2 6d 48 7f 7c 24 	vpermt2ps zmm7,zmm2,ZMMWORD PTR [rsp+0x680]
  a68312:	1a 
  a68313:	62 71 7c 48 28 5c 24 	vmovaps zmm11,ZMMWORD PTR [rsp+0x500]
  a6831a:	14 
  a6831b:	62 72 6d 48 7f 5c 24 	vpermt2ps zmm11,zmm2,ZMMWORD PTR [rsp+0x640]
  a68322:	19 
  a68323:	62 62 6d 48 7f 7c 24 	vpermt2ps zmm31,zmm2,ZMMWORD PTR [rsp+0x600]
  a6832a:	18 
  a6832b:	62 f1 7c 48 10 52 07 	vmovups zmm2,ZMMWORD PTR [rdx+0x1c0]
  a68332:	62 f1 7c 48 10 62 06 	vmovups zmm4,ZMMWORD PTR [rdx+0x180]
  a68339:	62 61 64 48 59 c4    	vmulps zmm24,zmm3,zmm4
  a6833f:	62 62 2d 40 bc c2    	vfnmadd231ps zmm24,zmm26,zmm2
  a68345:	62 e1 2c 40 59 ec    	vmulps zmm21,zmm26,zmm4
  a6834b:	62 e2 6d 48 b8 eb    	vfmadd231ps zmm21,zmm2,zmm3
  a68351:	62 f1 7c 48 10 52 17 	vmovups zmm2,ZMMWORD PTR [rdx+0x5c0]
  a68358:	62 f1 7c 48 10 5a 16 	vmovups zmm3,ZMMWORD PTR [rdx+0x580]
  a6835f:	62 61 74 48 59 eb    	vmulps zmm29,zmm1,zmm3
  a68365:	62 62 1d 40 bc ea    	vfnmadd231ps zmm29,zmm28,zmm2
  a6836b:	62 71 1c 40 59 fb    	vmulps zmm15,zmm28,zmm3
  a68371:	62 72 6d 48 b8 f9    	vfmadd231ps zmm15,zmm2,zmm1
  a68377:	62 f1 7c 48 10 4a 1f 	vmovups zmm1,ZMMWORD PTR [rdx+0x7c0]
  a6837e:	62 f1 7c 48 10 52 1e 	vmovups zmm2,ZMMWORD PTR [rdx+0x780]
  a68385:	62 e1 04 40 59 da    	vmulps zmm19,zmm31,zmm2
  a6838b:	62 e2 25 48 b8 d9    	vfmadd231ps zmm19,zmm11,zmm1
  a68391:	62 e1 24 48 59 ca    	vmulps zmm17,zmm11,zmm2
  a68397:	62 82 75 48 bc cf    	vfnmadd231ps zmm17,zmm1,zmm31
  a6839d:	62 f1 7c 48 10 4a 0f 	vmovups zmm1,ZMMWORD PTR [rdx+0x3c0]
  a683a4:	62 f1 7c 48 10 62 0e 	vmovups zmm4,ZMMWORD PTR [rdx+0x380]
  a683ab:	62 f1 7c 48 28 df    	vmovaps zmm3,zmm7
  a683b1:	62 f1 44 48 59 fc    	vmulps zmm7,zmm7,zmm4
  a683b7:	62 f2 0d 48 b8 f9    	vfmadd231ps zmm7,zmm14,zmm1
  a683bd:	62 e1 0c 48 59 d4    	vmulps zmm18,zmm14,zmm4
  a683c3:	62 e2 75 48 bc d3    	vfnmadd231ps zmm18,zmm1,zmm3
  a683c9:	62 e2 0d 40 7f 74 24 	vpermt2ps zmm22,zmm30,ZMMWORD PTR [rsp+0x3c0]
  a683d0:	0f 
  a683d1:	62 e1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm22
  a683d8:	1a 
  a683d9:	62 42 0d 40 7f cd    	vpermt2ps zmm25,zmm30,zmm13
  a683df:	62 c2 0d 40 7f e4    	vpermt2ps zmm20,zmm30,zmm12
  a683e5:	62 42 0d 40 7f d9    	vpermt2ps zmm27,zmm30,zmm9
  a683eb:	62 c2 0d 40 7f c0    	vpermt2ps zmm16,zmm30,zmm8
  a683f1:	62 72 0d 40 7f d6    	vpermt2ps zmm10,zmm30,zmm6
  a683f7:	62 f2 0d 40 7f c5    	vpermt2ps zmm0,zmm30,zmm5
  a683fd:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x40]
  a68404:	01 
  a68405:	62 f2 0d 40 7f 4c 24 	vpermt2ps zmm1,zmm30,ZMMWORD PTR [rsp+0x440]
  a6840c:	11 
  a6840d:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm1
  a68414:	01 
  a68415:	62 f1 7c 48 10 4a 11 	vmovups zmm1,ZMMWORD PTR [rdx+0x440]
  a6841c:	62 f1 7c 48 10 62 10 	vmovups zmm4,ZMMWORD PTR [rdx+0x400]
  a68423:	62 61 5c 40 59 d4    	vmulps zmm26,zmm20,zmm4
  a68429:	62 62 35 40 b8 d1    	vfmadd231ps zmm26,zmm25,zmm1
  a6842f:	62 e1 34 40 59 fc    	vmulps zmm23,zmm25,zmm4
  a68435:	62 a2 75 48 bc fc    	vfnmadd231ps zmm23,zmm1,zmm20
  a6843b:	62 f1 7c 48 10 4a 09 	vmovups zmm1,ZMMWORD PTR [rdx+0x240]
  a68442:	62 f1 7c 48 10 62 08 	vmovups zmm4,ZMMWORD PTR [rdx+0x200]
  a68449:	62 e1 7c 48 59 e4    	vmulps zmm20,zmm0,zmm4
  a6844f:	62 e2 2d 48 bc e1    	vfnmadd231ps zmm20,zmm10,zmm1
  a68455:	62 61 2c 48 59 e4    	vmulps zmm28,zmm10,zmm4
  a6845b:	62 62 75 48 b8 e0    	vfmadd231ps zmm28,zmm1,zmm0
  a68461:	62 f1 7c 48 10 4a 19 	vmovups zmm1,ZMMWORD PTR [rdx+0x640]
  a68468:	62 f1 7c 48 10 42 18 	vmovups zmm0,ZMMWORD PTR [rdx+0x600]
  a6846f:	62 61 7c 40 59 c8    	vmulps zmm25,zmm16,zmm0
  a68475:	62 62 25 40 bc c9    	vfnmadd231ps zmm25,zmm27,zmm1
  a6847b:	62 f1 24 40 59 d0    	vmulps zmm2,zmm27,zmm0
  a68481:	62 b2 75 48 b8 d0    	vfmadd231ps zmm2,zmm1,zmm16
  a68487:	62 61 7c 48 28 74 24 	vmovaps zmm30,ZMMWORD PTR [rsp+0x480]
  a6848e:	12 
  a6848f:	62 71 0c 40 5c 54 24 	vsubps zmm10,zmm30,ZMMWORD PTR [rsp+0x100]
  a68496:	04 
  a68497:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x180]
  a6849e:	06 
  a6849f:	62 71 7c 48 5c 5c 24 	vsubps zmm11,zmm0,ZMMWORD PTR [rsp+0x80]
  a684a6:	02 
  a684a7:	62 d1 2c 48 5c e3    	vsubps zmm4,zmm10,zmm11
  a684ad:	62 e1 7c 48 28 74 24 	vmovaps zmm22,ZMMWORD PTR [rsp+0x400]
  a684b4:	10 
  a684b5:	62 71 4c 40 5c 6c 24 	vsubps zmm13,zmm22,ZMMWORD PTR [rsp+0xc0]
  a684bc:	03 
  a684bd:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x240]
  a684c4:	09 
  a684c5:	62 e1 7c 48 5c 44 24 	vsubps zmm16,zmm0,ZMMWORD PTR [rsp+0x140]
  a684cc:	05 
  a684cd:	62 72 7d 48 18 05 29 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff60d229]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a684d4:	d2 60 ff 
  a684d7:	62 b1 14 48 5c e8    	vsubps zmm5,zmm13,zmm16
  a684dd:	62 d1 54 48 59 c0    	vmulps zmm0,zmm5,zmm8
  a684e3:	62 72 7d 48 18 25 77 	vbroadcastss zmm12,DWORD PTR [rip+0xffffffffff60d177]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a684ea:	d1 60 ff 
  a684ed:	62 d2 5d 48 b8 c4    	vfmadd231ps zmm0,zmm4,zmm12
  a684f3:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x740],zmm0
  a684fa:	1d 
  a684fb:	62 d1 54 48 59 c4    	vmulps zmm0,zmm5,zmm12
  a68501:	62 f2 3d 48 bc c4    	vfnmadd231ps zmm0,zmm8,zmm4
  a68507:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x700],zmm0
  a6850e:	1c 
  a6850f:	62 91 3c 40 5c ed    	vsubps zmm5,zmm24,zmm29
  a68515:	62 21 44 48 5c db    	vsubps zmm27,zmm7,zmm19
  a6851b:	62 11 54 48 5c cb    	vsubps zmm9,zmm5,zmm27
  a68521:	62 41 54 40 5c ff    	vsubps zmm31,zmm21,zmm15
  a68527:	62 b1 74 40 5c ca    	vsubps zmm1,zmm17,zmm18
  a6852d:	62 f1 04 40 5c c1    	vsubps zmm0,zmm31,zmm1
  a68533:	62 d1 7c 48 59 dc    	vmulps zmm3,zmm0,zmm12
  a68539:	62 d2 35 48 b8 d8    	vfmadd231ps zmm3,zmm9,zmm8
  a6853f:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x6c0],zmm3
  a68546:	1b 
  a68547:	62 d1 34 48 59 dc    	vmulps zmm3,zmm9,zmm12
  a6854d:	62 f2 3d 48 bc d8    	vfnmadd231ps zmm3,zmm8,zmm0
  a68553:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm3
  a6855a:	19 
  a6855b:	62 91 54 48 58 c3    	vaddps zmm0,zmm5,zmm27
  a68561:	62 f1 04 40 58 c9    	vaddps zmm1,zmm31,zmm1
  a68567:	62 d1 2c 48 58 eb    	vaddps zmm5,zmm10,zmm11
  a6856d:	62 31 14 48 58 d0    	vaddps zmm10,zmm13,zmm16
  a68573:	62 d1 2c 48 59 dc    	vmulps zmm3,zmm10,zmm12
  a68579:	62 d2 55 48 b8 d8    	vfmadd231ps zmm3,zmm5,zmm8
  a6857f:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm3
  a68586:	18 
  a68587:	62 d1 2c 48 59 d8    	vmulps zmm3,zmm10,zmm8
  a6858d:	62 f2 1d 48 bc dd    	vfnmadd231ps zmm3,zmm12,zmm5
  a68593:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm3
  a6859a:	16 
  a6859b:	62 d1 74 48 59 d8    	vmulps zmm3,zmm1,zmm8
  a685a1:	62 d2 7d 48 b8 dc    	vfmadd231ps zmm3,zmm0,zmm12
  a685a7:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm3
  a685ae:	17 
  a685af:	62 51 74 48 59 e4    	vmulps zmm12,zmm1,zmm12
  a685b5:	62 52 7d 48 bc e0    	vfnmadd231ps zmm12,zmm0,zmm8
  a685bb:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x200]
  a685c2:	08 
  a685c3:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x280]
  a685ca:	0a 
  a685cb:	62 d1 4c 48 5c c1    	vsubps zmm0,zmm6,zmm9
  a685d1:	62 71 7c 48 28 5c 24 	vmovaps zmm11,ZMMWORD PTR [rsp+0x1c0]
  a685d8:	07 
  a685d9:	62 71 7c 48 28 74 24 	vmovaps zmm14,ZMMWORD PTR [rsp+0x780]
  a685e0:	1e 
  a685e1:	62 d1 24 48 5c ce    	vsubps zmm1,zmm11,zmm14
  a685e7:	62 f1 7c 48 58 d9    	vaddps zmm3,zmm0,zmm1
  a685ed:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm3
  a685f4:	15 
  a685f5:	62 f1 74 48 5c c0    	vsubps zmm0,zmm1,zmm0
  a685fb:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm0
  a68602:	14 
  a68603:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x7c0]
  a6860a:	1f 
  a6860b:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0xac0]
  a68612:	2b 
  a68613:	62 f1 7c 48 5c cb    	vsubps zmm1,zmm0,zmm3
  a68619:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0xb00]
  a68620:	2c 
  a68621:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0xa80]
  a68628:	2a 
  a68629:	62 71 5c 48 5c c5    	vsubps zmm8,zmm4,zmm5
  a6862f:	62 51 74 48 5c e8    	vsubps zmm13,zmm1,zmm8
  a68635:	62 f1 3c 48 58 c9    	vaddps zmm1,zmm8,zmm1
  a6863b:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm1
  a68642:	13 
  a68643:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x680]
  a6864a:	1a 
  a6864b:	62 11 74 48 5c c2    	vsubps zmm8,zmm1,zmm26
  a68651:	62 61 2c 40 58 d1    	vaddps zmm26,zmm26,zmm1
  a68657:	62 61 1c 40 5c da    	vsubps zmm27,zmm28,zmm2
  a6865d:	62 71 1c 40 58 d2    	vaddps zmm10,zmm28,zmm2
  a68663:	62 61 5c 48 58 e5    	vaddps zmm28,zmm4,zmm5
  a68669:	62 41 4c 48 58 f9    	vaddps zmm31,zmm6,zmm9
  a6866f:	62 c1 54 40 58 c7    	vaddps zmm16,zmm21,zmm15
  a68675:	62 31 44 48 58 fb    	vaddps zmm15,zmm7,zmm19
  a6867b:	62 11 3c 40 58 cd    	vaddps zmm9,zmm24,zmm29
  a68681:	62 a1 6c 40 58 c9    	vaddps zmm17,zmm18,zmm17
  a68687:	62 e1 0c 40 58 54 24 	vaddps zmm18,zmm30,ZMMWORD PTR [rsp+0x100]
  a6868e:	04 
  a6868f:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x140]
  a68696:	05 
  a68697:	62 e1 74 48 58 5c 24 	vaddps zmm19,zmm1,ZMMWORD PTR [rsp+0x240]
  a6869e:	09 
  a6869f:	62 e1 4c 40 58 6c 24 	vaddps zmm21,zmm22,ZMMWORD PTR [rsp+0xc0]
  a686a6:	03 
  a686a7:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x180]
  a686ae:	06 
  a686af:	62 e1 74 48 58 74 24 	vaddps zmm22,zmm1,ZMMWORD PTR [rsp+0x80]
  a686b6:	02 
  a686b7:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x40]
  a686be:	01 
  a686bf:	62 21 74 48 5c c7    	vsubps zmm24,zmm1,zmm23
  a686c5:	62 a1 74 48 58 ff    	vaddps zmm23,zmm1,zmm23
  a686cb:	62 21 34 40 5c ec    	vsubps zmm29,zmm25,zmm20
  a686d1:	62 81 5c 40 58 e1    	vaddps zmm20,zmm20,zmm25
  a686d7:	62 41 24 48 58 ce    	vaddps zmm25,zmm11,zmm14
  a686dd:	62 61 7c 48 58 f3    	vaddps zmm30,zmm0,zmm3
  a686e3:	62 b1 6c 40 5c cb    	vsubps zmm1,zmm18,zmm19
  a686e9:	62 b1 54 40 5c c6    	vsubps zmm0,zmm21,zmm22
  a686ef:	62 f1 74 48 58 f0    	vaddps zmm6,zmm1,zmm0
  a686f5:	62 f1 7c 48 5c f9    	vsubps zmm7,zmm0,zmm1
  a686fb:	62 d1 7c 40 5c cf    	vsubps zmm1,zmm16,zmm15
  a68701:	62 b1 34 48 5c c1    	vsubps zmm0,zmm9,zmm17
  a68707:	62 f1 74 48 5c e0    	vsubps zmm4,zmm1,zmm0
  a6870d:	62 f1 7c 48 58 e9    	vaddps zmm5,zmm0,zmm1
  a68713:	62 f2 7d 48 18 0d 7f 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff60cc7f]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a6871a:	cc 60 ff 
  a6871d:	62 71 14 48 59 e9    	vmulps zmm13,zmm13,zmm1
  a68723:	62 f1 74 48 59 5c 24 	vmulps zmm3,zmm1,ZMMWORD PTR [rsp+0x540]
  a6872a:	15 
  a6872b:	62 f1 74 48 59 54 24 	vmulps zmm2,zmm1,ZMMWORD PTR [rsp+0x500]
  a68732:	14 
  a68733:	62 f1 74 48 59 44 24 	vmulps zmm0,zmm1,ZMMWORD PTR [rsp+0x4c0]
  a6873a:	13 
  a6873b:	62 71 5c 48 59 f1    	vmulps zmm14,zmm4,zmm1
  a68741:	62 71 4c 48 59 d9    	vmulps zmm11,zmm6,zmm1
  a68747:	62 f1 44 48 59 e1    	vmulps zmm4,zmm7,zmm1
  a6874d:	62 f1 54 48 59 c9    	vmulps zmm1,zmm5,zmm1
  a68753:	62 91 3c 48 5c ed    	vsubps zmm5,zmm8,zmm29
  a68759:	62 51 14 40 58 c0    	vaddps zmm8,zmm29,zmm8
  a6875f:	62 61 6c 48 58 e8    	vaddps zmm29,zmm2,zmm0
  a68765:	62 f1 6c 48 5c f8    	vsubps zmm7,zmm2,zmm0
  a6876b:	62 91 3c 40 5c d3    	vsubps zmm2,zmm24,zmm27
  a68771:	62 01 3c 40 58 c3    	vaddps zmm24,zmm24,zmm27
  a68777:	62 61 14 48 5c db    	vsubps zmm27,zmm13,zmm3
  a6877d:	62 d1 64 48 58 c5    	vaddps zmm0,zmm3,zmm13
  a68783:	62 51 2c 40 5c ea    	vsubps zmm13,zmm26,zmm10
  a68789:	62 11 2c 48 58 d2    	vaddps zmm10,zmm10,zmm26
  a6878f:	62 01 34 40 5c d6    	vsubps zmm26,zmm25,zmm30
  a68795:	62 01 34 40 58 ce    	vaddps zmm25,zmm25,zmm30
  a6879b:	62 b1 34 48 58 d9    	vaddps zmm3,zmm9,zmm17
  a687a1:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm3
  a687a8:	01 
  a687a9:	62 21 6c 40 58 f3    	vaddps zmm30,zmm18,zmm19
  a687af:	62 a1 44 40 5c d4    	vsubps zmm18,zmm23,zmm20
  a687b5:	62 a1 44 40 58 cc    	vaddps zmm17,zmm23,zmm20
  a687bb:	62 81 1c 40 5c e7    	vsubps zmm20,zmm28,zmm31
  a687c1:	62 81 04 40 58 fc    	vaddps zmm23,zmm31,zmm28
  a687c7:	62 a1 54 40 58 ee    	vaddps zmm21,zmm21,zmm22
  a687cd:	62 51 7c 40 58 ff    	vaddps zmm15,zmm16,zmm15
  a687d3:	62 81 54 48 5c c3    	vsubps zmm16,zmm5,zmm27
  a687d9:	62 f1 24 40 58 dd    	vaddps zmm3,zmm27,zmm5
  a687df:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm3
  a687e6:	05 
  a687e7:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x700]
  a687ee:	1c 
  a687ef:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x640]
  a687f6:	19 
  a687f7:	62 71 64 48 5c cd    	vsubps zmm9,zmm3,zmm5
  a687fd:	62 f1 64 48 58 dd    	vaddps zmm3,zmm3,zmm5
  a68803:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm3
  a6880a:	04 
  a6880b:	62 01 6c 48 5c e5    	vsubps zmm28,zmm2,zmm29
  a68811:	62 91 6c 48 58 d5    	vaddps zmm2,zmm2,zmm29
  a68817:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm2
  a6881e:	03 
  a6881f:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x740]
  a68826:	1d 
  a68827:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x6c0]
  a6882e:	1b 
  a6882f:	62 f1 6c 48 58 dd    	vaddps zmm3,zmm2,zmm5
  a68835:	62 f1 6c 48 5c d5    	vsubps zmm2,zmm2,zmm5
  a6883b:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm2
  a68842:	02 
  a68843:	62 21 14 48 5c fc    	vsubps zmm31,zmm13,zmm20
  a68849:	62 41 5c 40 58 ed    	vaddps zmm29,zmm20,zmm13
  a6884f:	62 f1 5c 48 58 f1    	vaddps zmm6,zmm4,zmm1
  a68855:	62 61 5c 48 5c d9    	vsubps zmm27,zmm4,zmm1
  a6885b:	62 91 6c 40 5c ca    	vsubps zmm1,zmm18,zmm26
  a68861:	62 01 6c 40 58 d2    	vaddps zmm26,zmm18,zmm26
  a68867:	62 c1 0c 48 5c d3    	vsubps zmm18,zmm14,zmm11
  a6886d:	62 c1 24 48 58 f6    	vaddps zmm22,zmm11,zmm14
  a68873:	62 71 3c 48 5c df    	vsubps zmm11,zmm8,zmm7
  a68879:	62 c1 44 48 58 e0    	vaddps zmm20,zmm7,zmm8
  a6887f:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x580]
  a68886:	16 
  a68887:	62 d1 6c 48 5c e4    	vsubps zmm4,zmm2,zmm12
  a6888d:	62 c1 6c 48 58 dc    	vaddps zmm19,zmm2,zmm12
  a68893:	62 71 3c 40 5c f0    	vsubps zmm14,zmm24,zmm0
  a68899:	62 71 3c 40 58 e0    	vaddps zmm12,zmm24,zmm0
  a6889f:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x600]
  a688a6:	18 
  a688a7:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x5c0]
  a688ae:	17 
  a688af:	62 61 6c 48 5c c0    	vsubps zmm24,zmm2,zmm0
  a688b5:	62 71 7c 48 58 c2    	vaddps zmm8,zmm0,zmm2
  a688bb:	62 91 2c 48 5c c1    	vsubps zmm0,zmm10,zmm25
  a688c1:	62 41 34 40 58 ca    	vaddps zmm25,zmm25,zmm10
  a688c7:	62 51 54 40 5c d7    	vsubps zmm10,zmm21,zmm15
  a688cd:	62 d1 54 40 58 ff    	vaddps zmm7,zmm21,zmm15
  a688d3:	62 31 74 40 5c ff    	vsubps zmm15,zmm17,zmm23
  a688d9:	62 b1 74 40 58 ef    	vaddps zmm5,zmm17,zmm23
  a688df:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x40]
  a688e6:	01 
  a688e7:	62 81 6c 48 5c fe    	vsubps zmm23,zmm2,zmm30
  a688ed:	62 f1 0c 40 58 d2    	vaddps zmm2,zmm30,zmm2
  a688f3:	62 71 7c 40 58 eb    	vaddps zmm13,zmm16,zmm3
  a688f9:	62 71 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm13
  a68900:	01 
  a68901:	62 71 7c 40 5c eb    	vsubps zmm13,zmm16,zmm3
  a68907:	62 d1 1c 40 5c d9    	vsubps zmm3,zmm28,zmm9
  a6890d:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm3
  a68914:	06 
  a68915:	62 41 1c 40 58 e1    	vaddps zmm28,zmm28,zmm9
  a6891b:	62 a1 04 40 5c c2    	vsubps zmm16,zmm31,zmm18
  a68921:	62 a1 04 40 58 ca    	vaddps zmm17,zmm31,zmm18
  a68927:	62 61 74 48 5c fe    	vsubps zmm31,zmm1,zmm6
  a6892d:	62 e1 74 48 58 d6    	vaddps zmm18,zmm1,zmm6
  a68933:	62 11 24 48 5c c8    	vsubps zmm9,zmm11,zmm24
  a68939:	62 91 24 48 58 f0    	vaddps zmm6,zmm11,zmm24
  a6893f:	62 e1 0c 48 5c ec    	vsubps zmm21,zmm14,zmm4
  a68945:	62 61 0c 48 58 f4    	vaddps zmm30,zmm14,zmm4
  a6894b:	62 21 7c 48 5c c7    	vsubps zmm24,zmm0,zmm23
  a68951:	62 a1 7c 48 58 ff    	vaddps zmm23,zmm0,zmm23
  a68957:	62 d1 04 48 5c da    	vsubps zmm3,zmm15,zmm10
  a6895d:	62 d1 04 48 58 e2    	vaddps zmm4,zmm15,zmm10
  a68963:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x140]
  a6896a:	05 
  a6896b:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x100]
  a68972:	04 
  a68973:	62 71 7c 48 5c f1    	vsubps zmm14,zmm0,zmm1
  a68979:	62 f1 7c 48 58 c1    	vaddps zmm0,zmm0,zmm1
  a6897f:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0xc0]
  a68986:	03 
  a68987:	62 71 7c 48 28 5c 24 	vmovaps zmm11,ZMMWORD PTR [rsp+0x80]
  a6898e:	02 
  a6898f:	62 51 74 48 5c d3    	vsubps zmm10,zmm1,zmm11
  a68995:	62 d1 74 48 58 cb    	vaddps zmm1,zmm1,zmm11
  a6899b:	62 11 14 40 5c db    	vsubps zmm11,zmm29,zmm27
  a689a1:	62 01 14 40 58 eb    	vaddps zmm29,zmm29,zmm27
  a689a7:	62 21 2c 40 5c de    	vsubps zmm27,zmm26,zmm22
  a689ad:	62 a1 2c 40 58 f6    	vaddps zmm22,zmm26,zmm22
  a689b3:	62 31 5c 40 5c fb    	vsubps zmm15,zmm20,zmm19
  a689b9:	62 a1 5c 40 58 e3    	vaddps zmm20,zmm20,zmm19
  a689bf:	62 c1 1c 48 5c d8    	vsubps zmm19,zmm12,zmm8
  a689c5:	62 51 1c 48 58 c0    	vaddps zmm8,zmm12,zmm8
  a689cb:	62 71 34 40 5c e7    	vsubps zmm12,zmm25,zmm7
  a689d1:	62 61 34 40 58 cf    	vaddps zmm25,zmm25,zmm7
  a689d7:	62 61 54 48 5c d2    	vsubps zmm26,zmm5,zmm2
  a689dd:	62 f1 54 48 58 d2    	vaddps zmm2,zmm5,zmm2
  a689e3:	62 f1 7c 48 28 3d 53 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff62b853]        # 94240 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x216f0>
  a689ea:	b8 62 ff 
  a689ed:	62 63 7d 48 19 cd 02 	vextractf32x4 xmm5,zmm25,0x2
  a689f4:	62 62 45 48 7f ca    	vpermt2ps zmm25,zmm7,zmm2
  a689fa:	62 61 7c 48 11 0e    	vmovups ZMMWORD PTR [rsi],zmm25
  a68a00:	62 f3 7d 48 19 d2 02 	vextractf32x4 xmm2,zmm2,0x2
  a68a07:	c5 d0 14 d2          	vunpcklps xmm2,xmm5,xmm2
  a68a0b:	c5 f8 11 56 40       	vmovups XMMWORD PTR [rsi+0x40],xmm2
  a68a10:	62 e3 7d 48 19 e2 02 	vextractf32x4 xmm2,zmm20,0x2
  a68a17:	62 c2 45 48 7f e0    	vpermt2ps zmm20,zmm7,zmm8
  a68a1d:	62 e1 7c 48 11 a6 50 	vmovups ZMMWORD PTR [rsi+0x50],zmm20
  a68a24:	00 00 00 
  a68a27:	62 73 7d 48 19 c5 02 	vextractf32x4 xmm5,zmm8,0x2
  a68a2e:	c5 e8 14 d5          	vunpcklps xmm2,xmm2,xmm5
  a68a32:	c5 f8 11 96 90 00 00 	vmovups XMMWORD PTR [rsi+0x90],xmm2
  a68a39:	00 
  a68a3a:	62 63 7d 48 19 ea 02 	vextractf32x4 xmm2,zmm29,0x2
  a68a41:	62 22 45 48 7f ee    	vpermt2ps zmm29,zmm7,zmm22
  a68a47:	62 61 7c 48 11 ae a0 	vmovups ZMMWORD PTR [rsi+0xa0],zmm29
  a68a4e:	00 00 00 
  a68a51:	62 e3 7d 48 19 f5 02 	vextractf32x4 xmm5,zmm22,0x2
  a68a58:	c5 e8 14 d5          	vunpcklps xmm2,xmm2,xmm5
  a68a5c:	c5 f8 11 96 e0 00 00 	vmovups XMMWORD PTR [rsi+0xe0],xmm2
  a68a63:	00 
  a68a64:	62 f3 7d 48 19 c2 02 	vextractf32x4 xmm2,zmm0,0x2
  a68a6b:	62 f2 45 48 7f c1    	vpermt2ps zmm0,zmm7,zmm1
  a68a71:	62 f1 7c 48 11 86 f0 	vmovups ZMMWORD PTR [rsi+0xf0],zmm0
  a68a78:	00 00 00 
  a68a7b:	62 f3 7d 48 19 c8 02 	vextractf32x4 xmm0,zmm1,0x2
  a68a82:	c5 e8 14 c0          	vunpcklps xmm0,xmm2,xmm0
  a68a86:	c5 f8 11 86 30 01 00 	vmovups XMMWORD PTR [rsi+0x130],xmm0
  a68a8d:	00 
  a68a8e:	62 e3 7d 48 19 f8 02 	vextractf32x4 xmm0,zmm23,0x2
  a68a95:	62 e2 45 48 7f fc    	vpermt2ps zmm23,zmm7,zmm4
  a68a9b:	62 e1 7c 48 11 7e 05 	vmovups ZMMWORD PTR [rsi+0x140],zmm23
  a68aa2:	62 f3 7d 48 19 e1 02 	vextractf32x4 xmm1,zmm4,0x2
  a68aa9:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a68aad:	c5 f8 11 86 80 01 00 	vmovups XMMWORD PTR [rsi+0x180],xmm0
  a68ab4:	00 
  a68ab5:	62 f3 7d 48 19 f0 02 	vextractf32x4 xmm0,zmm6,0x2
  a68abc:	62 92 45 48 7f f6    	vpermt2ps zmm6,zmm7,zmm30
  a68ac2:	62 f1 7c 48 11 b6 90 	vmovups ZMMWORD PTR [rsi+0x190],zmm6
  a68ac9:	01 00 00 
  a68acc:	62 63 7d 48 19 f1 02 	vextractf32x4 xmm1,zmm30,0x2
  a68ad3:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a68ad7:	c5 f8 11 86 d0 01 00 	vmovups XMMWORD PTR [rsi+0x1d0],xmm0
  a68ade:	00 
  a68adf:	62 e3 7d 48 19 c8 02 	vextractf32x4 xmm0,zmm17,0x2
  a68ae6:	62 a2 45 48 7f ca    	vpermt2ps zmm17,zmm7,zmm18
  a68aec:	62 e1 7c 48 11 8e e0 	vmovups ZMMWORD PTR [rsi+0x1e0],zmm17
  a68af3:	01 00 00 
  a68af6:	62 e3 7d 48 19 d1 02 	vextractf32x4 xmm1,zmm18,0x2
  a68afd:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a68b01:	c5 f8 11 86 20 02 00 	vmovups XMMWORD PTR [rsi+0x220],xmm0
  a68b08:	00 
  a68b09:	62 73 7d 48 19 e8 02 	vextractf32x4 xmm0,zmm13,0x2
  a68b10:	62 12 45 48 7f ec    	vpermt2ps zmm13,zmm7,zmm28
  a68b16:	62 71 7c 48 11 ae 30 	vmovups ZMMWORD PTR [rsi+0x230],zmm13
  a68b1d:	02 00 00 
  a68b20:	62 63 7d 48 19 e1 02 	vextractf32x4 xmm1,zmm28,0x2
  a68b27:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a68b2b:	c5 f8 11 86 70 02 00 	vmovups XMMWORD PTR [rsi+0x270],xmm0
  a68b32:	00 
  a68b33:	62 73 7d 48 19 e0 02 	vextractf32x4 xmm0,zmm12,0x2
  a68b3a:	62 12 45 48 7f e2    	vpermt2ps zmm12,zmm7,zmm26
  a68b40:	62 71 7c 48 11 66 0a 	vmovups ZMMWORD PTR [rsi+0x280],zmm12
  a68b47:	62 63 7d 48 19 d1 02 	vextractf32x4 xmm1,zmm26,0x2
  a68b4e:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a68b52:	c5 f8 11 86 c0 02 00 	vmovups XMMWORD PTR [rsi+0x2c0],xmm0
  a68b59:	00 
  a68b5a:	62 73 7d 48 19 f8 02 	vextractf32x4 xmm0,zmm15,0x2
  a68b61:	62 32 45 48 7f fb    	vpermt2ps zmm15,zmm7,zmm19
  a68b67:	62 71 7c 48 11 be d0 	vmovups ZMMWORD PTR [rsi+0x2d0],zmm15
  a68b6e:	02 00 00 
  a68b71:	62 e3 7d 48 19 d9 02 	vextractf32x4 xmm1,zmm19,0x2
  a68b78:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a68b7c:	c5 f8 11 86 10 03 00 	vmovups XMMWORD PTR [rsi+0x310],xmm0
  a68b83:	00 
  a68b84:	62 73 7d 48 19 d8 02 	vextractf32x4 xmm0,zmm11,0x2
  a68b8b:	62 12 45 48 7f db    	vpermt2ps zmm11,zmm7,zmm27
  a68b91:	62 71 7c 48 11 9e 20 	vmovups ZMMWORD PTR [rsi+0x320],zmm11
  a68b98:	03 00 00 
  a68b9b:	62 63 7d 48 19 d9 02 	vextractf32x4 xmm1,zmm27,0x2
  a68ba2:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a68ba6:	c5 f8 11 86 60 03 00 	vmovups XMMWORD PTR [rsi+0x360],xmm0
  a68bad:	00 
  a68bae:	62 73 7d 48 19 f0 02 	vextractf32x4 xmm0,zmm14,0x2
  a68bb5:	62 52 45 48 7f f2    	vpermt2ps zmm14,zmm7,zmm10
  a68bbb:	62 71 7c 48 11 b6 70 	vmovups ZMMWORD PTR [rsi+0x370],zmm14
  a68bc2:	03 00 00 
  a68bc5:	62 73 7d 48 19 d1 02 	vextractf32x4 xmm1,zmm10,0x2
  a68bcc:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a68bd0:	c5 f8 11 86 b0 03 00 	vmovups XMMWORD PTR [rsi+0x3b0],xmm0
  a68bd7:	00 
  a68bd8:	62 63 7d 48 19 c0 02 	vextractf32x4 xmm0,zmm24,0x2
  a68bdf:	62 62 45 48 7f c3    	vpermt2ps zmm24,zmm7,zmm3
  a68be5:	62 61 7c 48 11 46 0f 	vmovups ZMMWORD PTR [rsi+0x3c0],zmm24
  a68bec:	62 f3 7d 48 19 d9 02 	vextractf32x4 xmm1,zmm3,0x2
  a68bf3:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a68bf7:	c5 f8 11 86 00 04 00 	vmovups XMMWORD PTR [rsi+0x400],xmm0
  a68bfe:	00 
  a68bff:	62 73 7d 48 19 c8 02 	vextractf32x4 xmm0,zmm9,0x2
  a68c06:	62 32 45 48 7f cd    	vpermt2ps zmm9,zmm7,zmm21
  a68c0c:	62 71 7c 48 11 8e 10 	vmovups ZMMWORD PTR [rsi+0x410],zmm9
  a68c13:	04 00 00 
  a68c16:	62 e3 7d 48 19 e9 02 	vextractf32x4 xmm1,zmm21,0x2
  a68c1d:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a68c21:	c5 f8 11 86 50 04 00 	vmovups XMMWORD PTR [rsi+0x450],xmm0
  a68c28:	00 
  a68c29:	62 e3 7d 48 19 c0 02 	vextractf32x4 xmm0,zmm16,0x2
  a68c30:	62 82 45 48 7f c7    	vpermt2ps zmm16,zmm7,zmm31
  a68c36:	62 e1 7c 48 11 86 60 	vmovups ZMMWORD PTR [rsi+0x460],zmm16
  a68c3d:	04 00 00 
  a68c40:	62 63 7d 48 19 f9 02 	vextractf32x4 xmm1,zmm31,0x2
  a68c47:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a68c4b:	c5 f8 11 86 a0 04 00 	vmovups XMMWORD PTR [rsi+0x4a0],xmm0
  a68c52:	00 
  a68c53:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x40]
  a68c5a:	01 
  a68c5b:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x180]
  a68c62:	06 
  a68c63:	62 f2 75 48 77 f8    	vpermi2ps zmm7,zmm1,zmm0
  a68c69:	62 f1 7c 48 11 be b0 	vmovups ZMMWORD PTR [rsi+0x4b0],zmm7
  a68c70:	04 00 00 
  a68c73:	62 f3 7d 48 19 c0 02 	vextractf32x4 xmm0,zmm0,0x2
  a68c7a:	62 f3 7d 48 19 c9 02 	vextractf32x4 xmm1,zmm1,0x2
  a68c81:	c5 f0 14 c0          	vunpcklps xmm0,xmm1,xmm0
  a68c85:	c5 f8 11 86 f0 04 00 	vmovups XMMWORD PTR [rsi+0x4f0],xmm0
  a68c8c:	00 
  a68c8d:	48 89 ec             	mov    rsp,rbp
  a68c90:	5d                   	pop    rbp
  a68c91:	c5 f8 77             	vzeroupper
  a68c94:	c3                   	ret
