
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a706c0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a706c0:	62 f1 7c 48 28 1d f6 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff6242f6]        # 949c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21e70>
  a706c7:	42 62 ff 
  a706ca:	62 f1 7c 48 10 27    	vmovups zmm4,ZMMWORD PTR [rdi]
  a706d0:	62 f1 7c 48 10 6f 01 	vmovups zmm5,ZMMWORD PTR [rdi+0x40]
  a706d7:	62 f1 7c 48 10 77 02 	vmovups zmm6,ZMMWORD PTR [rdi+0x80]
  a706de:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  a706e2:	62 f1 7c 48 28 fc    	vmovaps zmm7,zmm4
  a706e8:	62 f2 65 48 7f f9    	vpermt2ps zmm7,zmm3,zmm1
  a706ee:	62 f1 7c 48 28 05 08 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff624308]        # 94a00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21eb0>
  a706f5:	43 62 ff 
  a706f8:	62 f2 7d 48 7f e1    	vpermt2ps zmm4,zmm0,zmm1
  a706fe:	62 71 7c 48 28 c5    	vmovaps zmm8,zmm5
  a70704:	62 72 65 48 7f c1    	vpermt2ps zmm8,zmm3,zmm1
  a7070a:	62 f2 7d 48 7f e9    	vpermt2ps zmm5,zmm0,zmm1
  a70710:	62 f2 4d 48 77 d9    	vpermi2ps zmm3,zmm6,zmm1
  a70716:	62 f2 7d 48 7f f1    	vpermt2ps zmm6,zmm0,zmm1
  a7071c:	62 71 54 48 58 ce    	vaddps zmm9,zmm5,zmm6
  a70722:	62 d1 5c 48 58 d1    	vaddps zmm2,zmm4,zmm9
  a70728:	62 71 3c 48 58 d3    	vaddps zmm10,zmm8,zmm3
  a7072e:	62 d1 44 48 58 c2    	vaddps zmm0,zmm7,zmm10
  a70734:	62 72 7d 48 18 1d 22 	vbroadcastss zmm11,DWORD PTR [rip+0xffffffffff604d22]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a7073b:	4d 60 ff 
  a7073e:	62 d2 25 48 bc e1    	vfnmadd231ps zmm4,zmm11,zmm9
  a70744:	62 f1 3c 48 5c db    	vsubps zmm3,zmm8,zmm3
  a7074a:	62 72 7d 48 18 05 80 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff604b80]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a70751:	4b 60 ff 
  a70754:	62 51 64 48 59 c8    	vmulps zmm9,zmm3,zmm8
  a7075a:	62 d1 5c 48 58 d9    	vaddps zmm3,zmm4,zmm9
  a70760:	62 d2 2d 48 bc fb    	vfnmadd231ps zmm7,zmm10,zmm11
  a70766:	62 f1 54 48 5c ee    	vsubps zmm5,zmm5,zmm6
  a7076c:	62 d1 54 48 59 e8    	vmulps zmm5,zmm5,zmm8
  a70772:	62 f1 44 48 5c f5    	vsubps zmm6,zmm7,zmm5
  a70778:	62 51 5c 48 5c c1    	vsubps zmm8,zmm4,zmm9
  a7077e:	62 f1 54 48 58 ff    	vaddps zmm7,zmm5,zmm7
  a70784:	62 f1 7c 48 28 25 f2 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff6567f2]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a7078b:	67 65 ff 
  a7078e:	62 f2 5d 48 7f d1    	vpermt2ps zmm2,zmm4,zmm1
  a70794:	62 f2 5d 48 7f d9    	vpermt2ps zmm3,zmm4,zmm1
  a7079a:	62 72 5d 48 7f c1    	vpermt2ps zmm8,zmm4,zmm1
  a707a0:	c5 d0 57 ed          	vxorps xmm5,xmm5,xmm5
  a707a4:	62 f2 5d 48 7f ed    	vpermt2ps zmm5,zmm4,zmm5
  a707aa:	62 71 7c 48 28 0d 4c 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff65674c]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a707b1:	67 65 ff 
  a707b4:	62 71 7c 48 28 d2    	vmovaps zmm10,zmm2
  a707ba:	62 72 35 48 7f d5    	vpermt2ps zmm10,zmm9,zmm5
  a707c0:	62 71 7c 48 28 25 76 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff656776]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a707c7:	67 65 ff 
  a707ca:	62 f2 1d 48 7f d5    	vpermt2ps zmm2,zmm12,zmm5
  a707d0:	62 71 7c 48 28 eb    	vmovaps zmm13,zmm3
  a707d6:	62 72 35 48 7f ed    	vpermt2ps zmm13,zmm9,zmm5
  a707dc:	62 f2 1d 48 7f dd    	vpermt2ps zmm3,zmm12,zmm5
  a707e2:	62 51 7c 48 28 f0    	vmovaps zmm14,zmm8
  a707e8:	62 72 35 48 7f f5    	vpermt2ps zmm14,zmm9,zmm5
  a707ee:	62 72 1d 48 7f c5    	vpermt2ps zmm8,zmm12,zmm5
  a707f4:	62 71 7c 48 28 dd    	vmovaps zmm11,zmm5
  a707fa:	62 72 35 48 7f dd    	vpermt2ps zmm11,zmm9,zmm5
  a70800:	62 f2 5d 48 7f c1    	vpermt2ps zmm0,zmm4,zmm1
  a70806:	62 f2 5d 48 7f f1    	vpermt2ps zmm6,zmm4,zmm1
  a7080c:	62 f2 5d 48 7f f9    	vpermt2ps zmm7,zmm4,zmm1
  a70812:	62 e1 7c 48 28 c8    	vmovaps zmm17,zmm0
  a70818:	62 e2 35 48 7f cd    	vpermt2ps zmm17,zmm9,zmm5
  a7081e:	62 f2 1d 48 7f c5    	vpermt2ps zmm0,zmm12,zmm5
  a70824:	62 e1 7c 48 28 d6    	vmovaps zmm18,zmm6
  a7082a:	62 e2 35 48 7f d5    	vpermt2ps zmm18,zmm9,zmm5
  a70830:	62 f2 1d 48 7f f5    	vpermt2ps zmm6,zmm12,zmm5
  a70836:	62 72 45 48 77 cd    	vpermi2ps zmm9,zmm7,zmm5
  a7083c:	62 f2 1d 48 7f fd    	vpermt2ps zmm7,zmm12,zmm5
  a70842:	62 e1 7c 48 28 dd    	vmovaps zmm19,zmm5
  a70848:	62 e2 1d 48 7f dd    	vpermt2ps zmm19,zmm12,zmm5
  a7084e:	62 d1 ad 48 14 ee    	vunpcklpd zmm5,zmm10,zmm14
  a70854:	62 d1 ad 48 15 ce    	vunpckhpd zmm1,zmm10,zmm14
  a7085a:	62 51 95 48 14 d3    	vunpcklpd zmm10,zmm13,zmm11
  a70860:	62 51 95 48 15 eb    	vunpckhpd zmm13,zmm13,zmm11
  a70866:	62 d1 ed 48 14 e0    	vunpcklpd zmm4,zmm2,zmm8
  a7086c:	62 d1 ed 48 15 d0    	vunpckhpd zmm2,zmm2,zmm8
  a70872:	62 31 e5 48 14 f3    	vunpcklpd zmm14,zmm3,zmm19
  a70878:	62 a1 e5 48 15 e3    	vunpckhpd zmm20,zmm3,zmm19
  a7087e:	62 71 7c 48 28 05 78 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff656578]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a70885:	65 65 ff 
  a70888:	62 f1 7c 48 28 dd    	vmovaps zmm3,zmm5
  a7088e:	62 d2 3d 48 7f da    	vpermt2ps zmm3,zmm8,zmm10
  a70894:	62 e1 7c 48 28 2d a2 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff6565a2]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a7089b:	65 65 ff 
  a7089e:	62 d2 55 40 7f ea    	vpermt2ps zmm5,zmm21,zmm10
  a708a4:	62 71 7c 48 28 e1    	vmovaps zmm12,zmm1
  a708aa:	62 52 3d 48 7f e5    	vpermt2ps zmm12,zmm8,zmm13
  a708b0:	62 d2 55 40 7f cd    	vpermt2ps zmm1,zmm21,zmm13
  a708b6:	62 e1 7c 48 28 c4    	vmovaps zmm16,zmm4
  a708bc:	62 c2 3d 48 7f c6    	vpermt2ps zmm16,zmm8,zmm14
  a708c2:	62 d2 55 40 7f e6    	vpermt2ps zmm4,zmm21,zmm14
  a708c8:	62 71 7c 48 28 fa    	vmovaps zmm15,zmm2
  a708ce:	62 32 3d 48 7f fc    	vpermt2ps zmm15,zmm8,zmm20
  a708d4:	62 b2 55 40 7f d4    	vpermt2ps zmm2,zmm21,zmm20
  a708da:	62 51 f5 40 14 f1    	vunpcklpd zmm14,zmm17,zmm9
  a708e0:	62 51 f5 40 15 d1    	vunpckhpd zmm10,zmm17,zmm9
  a708e6:	62 51 ed 40 14 cb    	vunpcklpd zmm9,zmm18,zmm11
  a708ec:	62 c1 ed 40 15 cb    	vunpckhpd zmm17,zmm18,zmm11
  a708f2:	62 71 fd 48 14 ef    	vunpcklpd zmm13,zmm0,zmm7
  a708f8:	62 71 fd 48 15 df    	vunpckhpd zmm11,zmm0,zmm7
  a708fe:	62 b1 cd 48 14 fb    	vunpcklpd zmm7,zmm6,zmm19
  a70904:	62 b1 cd 48 15 f3    	vunpckhpd zmm6,zmm6,zmm19
  a7090a:	62 d1 7c 48 28 c6    	vmovaps zmm0,zmm14
  a70910:	62 d2 3d 48 7f c1    	vpermt2ps zmm0,zmm8,zmm9
  a70916:	62 52 55 40 7f f1    	vpermt2ps zmm14,zmm21,zmm9
  a7091c:	62 c1 7c 48 28 da    	vmovaps zmm19,zmm10
  a70922:	62 a2 3d 48 7f d9    	vpermt2ps zmm19,zmm8,zmm17
  a70928:	62 32 55 40 7f d1    	vpermt2ps zmm10,zmm21,zmm17
  a7092e:	62 51 7c 48 28 cd    	vmovaps zmm9,zmm13
  a70934:	62 72 3d 48 7f cf    	vpermt2ps zmm9,zmm8,zmm7
  a7093a:	62 72 55 40 7f ef    	vpermt2ps zmm13,zmm21,zmm7
  a70940:	62 72 25 48 77 c6    	vpermi2ps zmm8,zmm11,zmm6
  a70946:	62 72 55 40 7f de    	vpermt2ps zmm11,zmm21,zmm6
  a7094c:	62 e1 7c 48 10 62 02 	vmovups zmm20,ZMMWORD PTR [rdx+0x80]
  a70953:	62 e1 7c 48 10 6a 03 	vmovups zmm21,ZMMWORD PTR [rdx+0xc0]
  a7095a:	62 f1 7c 48 10 72 04 	vmovups zmm6,ZMMWORD PTR [rdx+0x100]
  a70961:	62 e1 7c 48 10 72 05 	vmovups zmm22,ZMMWORD PTR [rdx+0x140]
  a70968:	62 e1 7c 48 10 52 06 	vmovups zmm18,ZMMWORD PTR [rdx+0x180]
  a7096f:	62 e1 7c 48 10 4a 07 	vmovups zmm17,ZMMWORD PTR [rdx+0x1c0]
  a70976:	62 f1 7c 48 10 7a 08 	vmovups zmm7,ZMMWORD PTR [rdx+0x200]
  a7097d:	62 e1 7c 48 10 7a 09 	vmovups zmm23,ZMMWORD PTR [rdx+0x240]
  a70984:	62 61 7c 48 10 42 0a 	vmovups zmm24,ZMMWORD PTR [rdx+0x280]
  a7098b:	62 61 7c 48 10 4a 0b 	vmovups zmm25,ZMMWORD PTR [rdx+0x2c0]
  a70992:	62 61 7c 48 10 52 0c 	vmovups zmm26,ZMMWORD PTR [rdx+0x300]
  a70999:	62 61 7c 40 59 df    	vmulps zmm27,zmm16,zmm7
  a7099f:	62 22 35 48 bc df    	vfnmadd231ps zmm27,zmm9,zmm23
  a709a5:	62 f1 34 48 59 ff    	vmulps zmm7,zmm9,zmm7
  a709ab:	62 61 7c 48 10 62 0d 	vmovups zmm28,ZMMWORD PTR [rdx+0x340]
  a709b2:	62 b2 45 40 b8 f8    	vfmadd231ps zmm7,zmm23,zmm16
  a709b8:	62 e1 7c 48 10 42 0e 	vmovups zmm16,ZMMWORD PTR [rdx+0x380]
  a709bf:	62 71 1c 48 59 ce    	vmulps zmm9,zmm12,zmm6
  a709c5:	62 32 65 40 bc ce    	vfnmadd231ps zmm9,zmm19,zmm22
  a709cb:	62 e1 64 40 59 fe    	vmulps zmm23,zmm19,zmm6
  a709d1:	62 e1 7c 48 10 5a 0f 	vmovups zmm19,ZMMWORD PTR [rdx+0x3c0]
  a709d8:	62 c2 4d 40 b8 fc    	vfmadd231ps zmm23,zmm22,zmm12
  a709de:	62 91 64 48 58 f3    	vaddps zmm6,zmm3,zmm27
  a709e4:	62 11 04 48 59 e2    	vmulps zmm12,zmm15,zmm26
  a709ea:	62 12 3d 48 bc e4    	vfnmadd231ps zmm12,zmm8,zmm28
  a709f0:	62 81 3c 48 59 f2    	vmulps zmm22,zmm8,zmm26
  a709f6:	62 51 34 48 58 c4    	vaddps zmm8,zmm9,zmm12
  a709fc:	62 c2 1d 40 b8 f7    	vfmadd231ps zmm22,zmm28,zmm15
  a70a02:	62 21 54 48 59 d4    	vmulps zmm26,zmm5,zmm20
  a70a08:	62 22 0d 48 bc d5    	vfnmadd231ps zmm26,zmm14,zmm21
  a70a0e:	62 01 5c 48 59 e0    	vmulps zmm28,zmm4,zmm24
  a70a14:	62 02 15 48 bc e1    	vfnmadd231ps zmm28,zmm13,zmm25
  a70a1a:	62 31 0c 48 59 fc    	vmulps zmm15,zmm14,zmm20
  a70a20:	62 a1 74 48 59 e2    	vmulps zmm20,zmm1,zmm18
  a70a26:	62 a2 2d 48 bc e1    	vfnmadd231ps zmm20,zmm10,zmm17
  a70a2c:	62 72 55 40 b8 fd    	vfmadd231ps zmm15,zmm21,zmm5
  a70a32:	62 b1 6c 48 59 e8    	vmulps zmm5,zmm2,zmm16
  a70a38:	62 b2 25 48 bc eb    	vfnmadd231ps zmm5,zmm11,zmm19
  a70a3e:	62 11 14 48 59 e8    	vmulps zmm13,zmm13,zmm24
  a70a44:	62 72 35 40 b8 ec    	vfmadd231ps zmm13,zmm25,zmm4
  a70a4a:	62 51 04 48 58 f5    	vaddps zmm14,zmm15,zmm13
  a70a50:	62 31 2c 48 59 d2    	vmulps zmm10,zmm10,zmm18
  a70a56:	62 72 75 40 b8 d1    	vfmadd231ps zmm10,zmm17,zmm1
  a70a5c:	62 b1 24 48 59 c8    	vmulps zmm1,zmm11,zmm16
  a70a62:	62 f2 65 40 b8 ca    	vfmadd231ps zmm1,zmm19,zmm2
  a70a68:	62 e1 2c 48 58 c9    	vaddps zmm17,zmm10,zmm1
  a70a6e:	62 91 64 48 5c db    	vsubps zmm3,zmm3,zmm27
  a70a74:	62 b1 44 40 5c e6    	vsubps zmm4,zmm23,zmm22
  a70a7a:	62 81 2c 40 5c d4    	vsubps zmm18,zmm26,zmm28
  a70a80:	62 c1 04 48 5c ed    	vsubps zmm21,zmm15,zmm13
  a70a86:	62 62 7d 48 18 05 0c 	vbroadcastss zmm24,DWORD PTR [rip+0xffffffffff60490c]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a70a8d:	49 60 ff 
  a70a90:	62 61 2c 48 5c c9    	vsubps zmm25,zmm10,zmm1
  a70a96:	62 61 5c 40 5c dd    	vsubps zmm27,zmm20,zmm5
  a70a9c:	62 b1 54 40 5c ca    	vsubps zmm1,zmm21,zmm18
  a70aa2:	62 11 74 48 59 e8    	vmulps zmm13,zmm1,zmm24
  a70aa8:	62 91 24 40 58 c9    	vaddps zmm1,zmm27,zmm25
  a70aae:	62 11 74 48 59 f8    	vmulps zmm15,zmm1,zmm24
  a70ab4:	62 e1 5c 20 58 dd    	vaddps ymm19,ymm20,ymm5
  a70aba:	62 81 2c 20 58 e4    	vaddps ymm20,ymm26,ymm28
  a70ac0:	62 b1 5c 20 58 eb    	vaddps ymm5,ymm20,ymm19
  a70ac6:	c5 3c 58 d6          	vaddps ymm10,ymm8,ymm6
  a70aca:	62 61 2c 28 58 d5    	vaddps ymm26,ymm10,ymm5
  a70ad0:	62 31 0c 08 58 d9    	vaddps xmm11,xmm14,xmm17
  a70ad6:	62 a1 44 00 58 f6    	vaddps xmm22,xmm23,xmm22
  a70adc:	62 e1 44 08 58 f8    	vaddps xmm23,xmm7,xmm0
  a70ae2:	62 a1 4c 00 58 c7    	vaddps xmm16,xmm22,xmm23
  a70ae8:	62 d1 7c 00 58 cb    	vaddps xmm1,xmm16,xmm11
  a70aee:	c5 fc 28 15 ca 77 60 	vmovaps ymm2,YMMWORD PTR [rip+0xffffffffff6077ca]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  a70af5:	ff 
  a70af6:	62 92 6d 28 7f ca    	vpermt2ps ymm1,ymm2,ymm26
  a70afc:	62 01 34 20 5c cb    	vsubps ymm25,ymm25,ymm27
  a70b02:	62 01 34 20 59 c8    	vmulps ymm25,ymm25,ymm24
  a70b08:	62 a1 6c 20 58 d5    	vaddps ymm18,ymm18,ymm21
  a70b0e:	62 81 6c 20 59 e8    	vmulps ymm21,ymm18,ymm24
  a70b14:	62 81 54 20 58 d1    	vaddps ymm18,ymm21,ymm25
  a70b1a:	62 61 64 28 58 c4    	vaddps ymm24,ymm3,ymm4
  a70b20:	62 21 3c 20 58 d2    	vaddps ymm26,ymm24,ymm18
  a70b26:	62 41 14 08 5c df    	vsubps xmm27,xmm13,xmm15
  a70b2c:	c4 41 18 5c c9       	vsubps xmm9,xmm12,xmm9
  a70b31:	c5 f8 5c ff          	vsubps xmm7,xmm0,xmm7
  a70b35:	c5 30 58 e7          	vaddps xmm12,xmm9,xmm7
  a70b39:	62 91 1c 08 58 c3    	vaddps xmm0,xmm12,xmm27
  a70b3f:	62 92 6d 28 7f c2    	vpermt2ps ymm0,ymm2,ymm26
  a70b45:	62 31 0c 28 5c f1    	vsubps ymm14,ymm14,ymm17
  a70b4b:	c4 41 4c 5c c0       	vsubps ymm8,ymm6,ymm8
  a70b50:	62 a1 64 00 5c cc    	vsubps xmm17,xmm19,xmm20
  a70b56:	62 c1 3c 28 58 de    	vaddps ymm19,ymm8,ymm14
  a70b5c:	62 a1 44 00 5c e6    	vsubps xmm20,xmm23,xmm22
  a70b62:	62 b1 5c 00 58 f1    	vaddps xmm6,xmm20,xmm17
  a70b68:	62 b2 6d 28 7f f3    	vpermt2ps ymm6,ymm2,ymm19
  a70b6e:	c4 41 14 58 ef       	vaddps ymm13,ymm13,ymm15
  a70b73:	c5 e4 5c dc          	vsubps ymm3,ymm3,ymm4
  a70b77:	62 b1 34 00 5c e5    	vsubps xmm4,xmm25,xmm21
  a70b7d:	c5 14 58 fb          	vaddps ymm15,ymm13,ymm3
  a70b81:	c4 c1 40 5c f9       	vsubps xmm7,xmm7,xmm9
  a70b86:	c5 40 58 cc          	vaddps xmm9,xmm7,xmm4
  a70b8a:	62 52 6d 28 7f cf    	vpermt2ps ymm9,ymm2,ymm15
  a70b90:	c5 ac 5c ed          	vsubps ymm5,ymm10,ymm5
  a70b94:	62 51 7c 00 5c d3    	vsubps xmm10,xmm16,xmm11
  a70b9a:	62 72 6d 28 7f d5    	vpermt2ps ymm10,ymm2,ymm5
  a70ba0:	62 b1 3c 20 5c ea    	vsubps ymm5,ymm24,ymm18
  a70ba6:	62 11 1c 08 5c db    	vsubps xmm11,xmm12,xmm27
  a70bac:	62 72 6d 28 7f dd    	vpermt2ps ymm11,ymm2,ymm5
  a70bb2:	c4 c1 3c 5c ee       	vsubps ymm5,ymm8,ymm14
  a70bb7:	62 31 5c 00 5c c1    	vsubps xmm8,xmm20,xmm17
  a70bbd:	62 72 6d 28 7f c5    	vpermt2ps ymm8,ymm2,ymm5
  a70bc3:	c4 c1 64 5c dd       	vsubps ymm3,ymm3,ymm13
  a70bc8:	c5 c0 5c e4          	vsubps xmm4,xmm7,xmm4
  a70bcc:	62 f2 6d 28 7f e3    	vpermt2ps ymm4,ymm2,ymm3
  a70bd2:	c4 e3 7d 19 ca 01    	vextractf128 xmm2,ymm1,0x1
  a70bd8:	c5 f8 13 56 10       	vmovlps QWORD PTR [rsi+0x10],xmm2
  a70bdd:	c5 f8 11 0e          	vmovups XMMWORD PTR [rsi],xmm1
  a70be1:	c4 e3 7d 19 c1 01    	vextractf128 xmm1,ymm0,0x1
  a70be7:	c5 f8 13 4e 28       	vmovlps QWORD PTR [rsi+0x28],xmm1
  a70bec:	c5 f8 11 46 18       	vmovups XMMWORD PTR [rsi+0x18],xmm0
  a70bf1:	c4 e3 7d 19 f0 01    	vextractf128 xmm0,ymm6,0x1
  a70bf7:	c5 f8 13 46 40       	vmovlps QWORD PTR [rsi+0x40],xmm0
  a70bfc:	c5 f8 11 76 30       	vmovups XMMWORD PTR [rsi+0x30],xmm6
  a70c01:	c4 63 7d 19 c8 01    	vextractf128 xmm0,ymm9,0x1
  a70c07:	c5 f8 13 46 58       	vmovlps QWORD PTR [rsi+0x58],xmm0
  a70c0c:	c5 78 11 4e 48       	vmovups XMMWORD PTR [rsi+0x48],xmm9
  a70c11:	c4 63 7d 19 d0 01    	vextractf128 xmm0,ymm10,0x1
  a70c17:	c5 f8 13 46 70       	vmovlps QWORD PTR [rsi+0x70],xmm0
  a70c1c:	c5 78 11 56 60       	vmovups XMMWORD PTR [rsi+0x60],xmm10
  a70c21:	c4 63 7d 19 d8 01    	vextractf128 xmm0,ymm11,0x1
  a70c27:	c5 f8 13 86 88 00 00 	vmovlps QWORD PTR [rsi+0x88],xmm0
  a70c2e:	00 
  a70c2f:	c5 78 11 5e 78       	vmovups XMMWORD PTR [rsi+0x78],xmm11
  a70c34:	c4 63 7d 19 c0 01    	vextractf128 xmm0,ymm8,0x1
  a70c3a:	c5 f8 13 86 a0 00 00 	vmovlps QWORD PTR [rsi+0xa0],xmm0
  a70c41:	00 
  a70c42:	c5 78 11 86 90 00 00 	vmovups XMMWORD PTR [rsi+0x90],xmm8
  a70c49:	00 
  a70c4a:	c4 e3 7d 19 e0 01    	vextractf128 xmm0,ymm4,0x1
  a70c50:	c5 f8 13 86 b8 00 00 	vmovlps QWORD PTR [rsi+0xb8],xmm0
  a70c57:	00 
  a70c58:	c5 f8 11 a6 a8 00 00 	vmovups XMMWORD PTR [rsi+0xa8],xmm4
  a70c5f:	00 
  a70c60:	c5 f8 77             	vzeroupper
  a70c63:	c3                   	ret
