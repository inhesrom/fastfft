
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000916740 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  916740:	62 f1 fd 48 28 2d b6 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff7694b6]        # 7fc00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xd0b0>
  916747:	94 76 ff 
  91674a:	62 f1 fd 48 10 07    	vmovupd zmm0,ZMMWORD PTR [rdi]
  916750:	62 f1 fd 48 10 4f 01 	vmovupd zmm1,ZMMWORD PTR [rdi+0x40]
  916757:	62 f1 fd 48 10 5f 02 	vmovupd zmm3,ZMMWORD PTR [rdi+0x80]
  91675e:	62 f1 fd 48 10 67 03 	vmovupd zmm4,ZMMWORD PTR [rdi+0xc0]
  916765:	62 f1 fd 48 28 d0    	vmovapd zmm2,zmm0
  91676b:	62 f2 d5 48 7f d1    	vpermt2pd zmm2,zmm5,zmm1
  916771:	62 f1 fd 48 28 35 c5 	vmovapd zmm6,ZMMWORD PTR [rip+0xffffffffff7694c5]        # 7fc40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xd0f0>
  916778:	94 76 ff 
  91677b:	62 f2 cd 48 7f c1    	vpermt2pd zmm0,zmm6,zmm1
  916781:	62 f1 fd 48 28 fb    	vmovapd zmm7,zmm3
  916787:	62 f2 d5 48 7f fc    	vpermt2pd zmm7,zmm5,zmm4
  91678d:	62 f2 cd 48 7f dc    	vpermt2pd zmm3,zmm6,zmm4
  916793:	62 71 fd 48 10 47 04 	vmovupd zmm8,ZMMWORD PTR [rdi+0x100]
  91679a:	62 f1 fd 48 10 4f 05 	vmovupd zmm1,ZMMWORD PTR [rdi+0x140]
  9167a1:	62 51 fd 48 28 c8    	vmovapd zmm9,zmm8
  9167a7:	62 72 d5 48 7f c9    	vpermt2pd zmm9,zmm5,zmm1
  9167ad:	62 72 cd 48 7f c1    	vpermt2pd zmm8,zmm6,zmm1
  9167b3:	62 71 fd 48 10 57 06 	vmovupd zmm10,ZMMWORD PTR [rdi+0x180]
  9167ba:	62 f1 fd 48 10 4f 07 	vmovupd zmm1,ZMMWORD PTR [rdi+0x1c0]
  9167c1:	62 51 fd 48 28 da    	vmovapd zmm11,zmm10
  9167c7:	62 72 d5 48 7f d9    	vpermt2pd zmm11,zmm5,zmm1
  9167cd:	62 72 cd 48 7f d1    	vpermt2pd zmm10,zmm6,zmm1
  9167d3:	62 71 fd 48 10 6f 08 	vmovupd zmm13,ZMMWORD PTR [rdi+0x200]
  9167da:	62 f1 fd 48 10 4f 09 	vmovupd zmm1,ZMMWORD PTR [rdi+0x240]
  9167e1:	62 51 fd 48 28 e5    	vmovapd zmm12,zmm13
  9167e7:	62 72 d5 48 7f e1    	vpermt2pd zmm12,zmm5,zmm1
  9167ed:	62 72 cd 48 7f e9    	vpermt2pd zmm13,zmm6,zmm1
  9167f3:	62 71 fd 48 10 77 0a 	vmovupd zmm14,ZMMWORD PTR [rdi+0x280]
  9167fa:	62 f1 fd 48 10 4f 0b 	vmovupd zmm1,ZMMWORD PTR [rdi+0x2c0]
  916801:	62 f2 8d 48 77 e9    	vpermi2pd zmm5,zmm14,zmm1
  916807:	62 72 cd 48 7f f1    	vpermt2pd zmm14,zmm6,zmm1
  91680d:	62 d1 bd 48 58 f5    	vaddpd zmm6,zmm8,zmm13
  916813:	62 71 fd 48 58 fe    	vaddpd zmm15,zmm0,zmm6
  916819:	62 e1 8d 48 58 c3    	vaddpd zmm16,zmm14,zmm3
  91681f:	62 a1 ad 48 58 c8    	vaddpd zmm17,zmm10,zmm16
  916825:	62 b1 85 48 58 c9    	vaddpd zmm1,zmm15,zmm17
  91682b:	62 c1 b5 48 58 d4    	vaddpd zmm18,zmm9,zmm12
  916831:	62 a1 ed 48 58 da    	vaddpd zmm19,zmm2,zmm18
  916837:	62 e1 d5 48 58 e7    	vaddpd zmm20,zmm5,zmm7
  91683d:	62 a1 a5 48 58 ec    	vaddpd zmm21,zmm11,zmm20
  916843:	62 b1 e5 40 58 e5    	vaddpd zmm4,zmm19,zmm21
  916849:	62 e2 fd 48 19 35 45 	vbroadcastsd zmm22,QWORD PTR [rip+0xffffffffff75e245]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  916850:	e2 75 ff 
  916853:	62 f2 cd 40 bc c6    	vfnmadd231pd zmm0,zmm22,zmm6
  916859:	62 d1 b5 48 5c f4    	vsubpd zmm6,zmm9,zmm12
  91685f:	62 72 fd 48 19 0d b7 	vbroadcastsd zmm9,QWORD PTR [rip+0xffffffffff75e3b7]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  916866:	e3 75 ff 
  916869:	62 d1 cd 48 59 f1    	vmulpd zmm6,zmm6,zmm9
  91686f:	62 e1 fd 48 58 fe    	vaddpd zmm23,zmm0,zmm6
  916875:	62 32 cd 40 bc d0    	vfnmadd231pd zmm10,zmm22,zmm16
  91687b:	62 f1 d5 48 5c ef    	vsubpd zmm5,zmm5,zmm7
  916881:	62 d1 d5 48 59 e9    	vmulpd zmm5,zmm5,zmm9
  916887:	62 f1 ad 48 58 fd    	vaddpd zmm7,zmm10,zmm5
  91688d:	62 71 c5 40 5c e7    	vsubpd zmm12,zmm23,zmm7
  916893:	62 b2 cd 40 bc d2    	vfnmadd231pd zmm2,zmm22,zmm18
  916899:	62 51 bd 48 5c c5    	vsubpd zmm8,zmm8,zmm13
  91689f:	62 51 bd 48 59 c1    	vmulpd zmm8,zmm8,zmm9
  9168a5:	62 51 ed 48 5c e8    	vsubpd zmm13,zmm2,zmm8
  9168ab:	62 32 dd 40 bc de    	vfnmadd231pd zmm11,zmm20,zmm22
  9168b1:	62 f1 8d 48 5c db    	vsubpd zmm3,zmm14,zmm3
  9168b7:	62 d1 e5 48 59 d9    	vmulpd zmm3,zmm3,zmm9
  9168bd:	62 71 a5 48 5c f3    	vsubpd zmm14,zmm11,zmm3
  9168c3:	62 51 95 48 5c ce    	vsubpd zmm9,zmm13,zmm14
  9168c9:	62 f1 fd 48 5c c6    	vsubpd zmm0,zmm0,zmm6
  9168cf:	62 f1 ad 48 5c ed    	vsubpd zmm5,zmm10,zmm5
  9168d5:	62 f1 fd 48 58 f5    	vaddpd zmm6,zmm0,zmm5
  9168db:	62 f1 bd 48 58 d2    	vaddpd zmm2,zmm8,zmm2
  9168e1:	62 51 e5 48 58 c3    	vaddpd zmm8,zmm3,zmm11
  9168e7:	62 51 ed 48 58 d0    	vaddpd zmm10,zmm2,zmm8
  9168ed:	62 31 85 48 5c d9    	vsubpd zmm11,zmm15,zmm17
  9168f3:	62 b1 e5 40 5c dd    	vsubpd zmm3,zmm19,zmm21
  9168f9:	62 f1 c5 40 58 ff    	vaddpd zmm7,zmm23,zmm7
  9168ff:	62 51 95 48 58 f6    	vaddpd zmm14,zmm13,zmm14
  916905:	62 f1 fd 48 5c c5    	vsubpd zmm0,zmm0,zmm5
  91690b:	62 51 ed 48 5c f8    	vsubpd zmm15,zmm2,zmm8
  916911:	62 71 fd 48 10 2d 4d 	vmovupd zmm13,ZMMWORD PTR [rip+0xffffffffff7b044d]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  916918:	04 7b ff 
  91691b:	62 f1 fd 48 28 d1    	vmovapd zmm2,zmm1
  916921:	62 f2 95 48 7f d7    	vpermt2pd zmm2,zmm13,zmm7
  916927:	62 e1 fd 48 10 05 77 	vmovupd zmm16,ZMMWORD PTR [rip+0xffffffffff7b0477]        # c6da8 <crc32fast::table::CRC32_TABLE+0x9124>
  91692e:	04 7b ff 
  916931:	62 f2 fd 40 7f cf    	vpermt2pd zmm1,zmm16,zmm7
  916937:	62 d1 fd 48 28 ec    	vmovapd zmm5,zmm12
  91693d:	62 f2 95 48 7f e8    	vpermt2pd zmm5,zmm13,zmm0
  916943:	62 72 fd 40 7f e0    	vpermt2pd zmm12,zmm16,zmm0
  916949:	62 a1 f5 00 57 c9    	vxorpd xmm17,xmm17,xmm17
  91694f:	62 f1 fd 48 28 c6    	vmovapd zmm0,zmm6
  916955:	62 b2 95 48 7f c1    	vpermt2pd zmm0,zmm13,zmm17
  91695b:	62 b2 fd 40 7f f1    	vpermt2pd zmm6,zmm16,zmm17
  916961:	62 d1 fd 48 28 fb    	vmovapd zmm7,zmm11
  916967:	62 b2 95 48 7f f9    	vpermt2pd zmm7,zmm13,zmm17
  91696d:	62 32 fd 40 7f d9    	vpermt2pd zmm11,zmm16,zmm17
  916973:	62 e1 fd 48 10 15 6b 	vmovupd zmm18,ZMMWORD PTR [rip+0xffffffffff7b036b]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  91697a:	03 7b ff 
  91697d:	62 71 fd 48 28 c2    	vmovapd zmm8,zmm2
  916983:	62 72 ed 40 7f c0    	vpermt2pd zmm8,zmm18,zmm0
  916989:	62 e1 fd 48 10 1d 95 	vmovupd zmm19,ZMMWORD PTR [rip+0xffffffffff7b0395]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  916990:	03 7b ff 
  916993:	62 f2 e5 40 7f d0    	vpermt2pd zmm2,zmm19,zmm0
  916999:	62 e1 fd 48 28 e5    	vmovapd zmm20,zmm5
  91699f:	62 e2 ed 40 7f e7    	vpermt2pd zmm20,zmm18,zmm7
  9169a5:	62 f2 e5 40 7f ef    	vpermt2pd zmm5,zmm19,zmm7
  9169ab:	62 f1 fd 48 28 f9    	vmovapd zmm7,zmm1
  9169b1:	62 f2 ed 40 7f fe    	vpermt2pd zmm7,zmm18,zmm6
  9169b7:	62 f2 e5 40 7f ce    	vpermt2pd zmm1,zmm19,zmm6
  9169bd:	62 c1 fd 48 28 ec    	vmovapd zmm21,zmm12
  9169c3:	62 c2 ed 40 7f eb    	vpermt2pd zmm21,zmm18,zmm11
  9169c9:	62 52 e5 40 7f e3    	vpermt2pd zmm12,zmm19,zmm11
  9169cf:	62 b1 bd 48 14 c4    	vunpcklpd zmm0,zmm8,zmm20
  9169d5:	62 b1 bd 48 15 f4    	vunpckhpd zmm6,zmm8,zmm20
  9169db:	62 71 ed 48 14 c5    	vunpcklpd zmm8,zmm2,zmm5
  9169e1:	62 f1 ed 48 15 d5    	vunpckhpd zmm2,zmm2,zmm5
  9169e7:	62 31 c5 48 14 dd    	vunpcklpd zmm11,zmm7,zmm21
  9169ed:	62 b1 c5 48 15 ed    	vunpckhpd zmm5,zmm7,zmm21
  9169f3:	62 d1 f5 48 14 fc    	vunpcklpd zmm7,zmm1,zmm12
  9169f9:	62 d1 f5 48 15 cc    	vunpckhpd zmm1,zmm1,zmm12
  9169ff:	62 71 fd 48 28 e4    	vmovapd zmm12,zmm4
  916a05:	62 52 95 48 7f e6    	vpermt2pd zmm12,zmm13,zmm14
  916a0b:	62 d2 fd 40 7f e6    	vpermt2pd zmm4,zmm16,zmm14
  916a11:	62 51 fd 48 28 f1    	vmovapd zmm14,zmm9
  916a17:	62 52 95 48 7f f7    	vpermt2pd zmm14,zmm13,zmm15
  916a1d:	62 52 fd 40 7f cf    	vpermt2pd zmm9,zmm16,zmm15
  916a23:	62 51 fd 48 28 fa    	vmovapd zmm15,zmm10
  916a29:	62 32 95 48 7f f9    	vpermt2pd zmm15,zmm13,zmm17
  916a2f:	62 32 fd 40 7f d1    	vpermt2pd zmm10,zmm16,zmm17
  916a35:	62 32 e5 48 77 e9    	vpermi2pd zmm13,zmm3,zmm17
  916a3b:	62 b2 fd 40 7f d9    	vpermt2pd zmm3,zmm16,zmm17
  916a41:	62 c1 fd 48 28 c4    	vmovapd zmm16,zmm12
  916a47:	62 c2 ed 40 7f c7    	vpermt2pd zmm16,zmm18,zmm15
  916a4d:	62 52 e5 40 7f e7    	vpermt2pd zmm12,zmm19,zmm15
  916a53:	62 51 fd 48 28 fe    	vmovapd zmm15,zmm14
  916a59:	62 52 ed 40 7f fd    	vpermt2pd zmm15,zmm18,zmm13
  916a5f:	62 52 e5 40 7f f5    	vpermt2pd zmm14,zmm19,zmm13
  916a65:	62 71 fd 48 28 ec    	vmovapd zmm13,zmm4
  916a6b:	62 52 ed 40 7f ea    	vpermt2pd zmm13,zmm18,zmm10
  916a71:	62 d2 e5 40 7f e2    	vpermt2pd zmm4,zmm19,zmm10
  916a77:	62 e2 b5 48 77 d3    	vpermi2pd zmm18,zmm9,zmm3
  916a7d:	62 72 e5 40 7f cb    	vpermt2pd zmm9,zmm19,zmm3
  916a83:	62 d1 fd 40 14 df    	vunpcklpd zmm3,zmm16,zmm15
  916a89:	62 c1 fd 40 15 cf    	vunpckhpd zmm17,zmm16,zmm15
  916a8f:	62 c1 9d 48 14 e6    	vunpcklpd zmm20,zmm12,zmm14
  916a95:	62 51 9d 48 15 e6    	vunpckhpd zmm12,zmm12,zmm14
  916a9b:	62 31 95 48 14 f2    	vunpcklpd zmm14,zmm13,zmm18
  916aa1:	62 a1 95 48 15 c2    	vunpckhpd zmm16,zmm13,zmm18
  916aa7:	62 51 dd 48 15 d1    	vunpckhpd zmm10,zmm4,zmm9
  916aad:	62 c1 dd 48 14 e9    	vunpcklpd zmm21,zmm4,zmm9
  916ab3:	62 e1 fd 48 10 5a 02 	vmovupd zmm19,ZMMWORD PTR [rdx+0x80]
  916aba:	62 f1 fd 48 10 62 03 	vmovupd zmm4,ZMMWORD PTR [rdx+0xc0]
  916ac1:	62 e1 fd 48 10 52 04 	vmovupd zmm18,ZMMWORD PTR [rdx+0x100]
  916ac8:	62 e1 fd 48 10 72 05 	vmovupd zmm22,ZMMWORD PTR [rdx+0x140]
  916acf:	62 71 fd 48 10 7a 06 	vmovupd zmm15,ZMMWORD PTR [rdx+0x180]
  916ad6:	62 71 fd 48 10 6a 07 	vmovupd zmm13,ZMMWORD PTR [rdx+0x1c0]
  916add:	62 e1 fd 48 10 7a 08 	vmovupd zmm23,ZMMWORD PTR [rdx+0x200]
  916ae4:	62 61 fd 48 10 42 09 	vmovupd zmm24,ZMMWORD PTR [rdx+0x240]
  916aeb:	62 31 a5 48 59 cf    	vmulpd zmm9,zmm11,zmm23
  916af1:	62 12 8d 48 bc c8    	vfnmadd231pd zmm9,zmm14,zmm24
  916af7:	62 31 8d 48 59 f7    	vmulpd zmm14,zmm14,zmm23
  916afd:	62 e1 fd 48 10 7a 0a 	vmovupd zmm23,ZMMWORD PTR [rdx+0x280]
  916b04:	62 12 a5 48 b8 f0    	vfmadd231pd zmm14,zmm11,zmm24
  916b0a:	62 61 fd 48 10 42 0b 	vmovupd zmm24,ZMMWORD PTR [rdx+0x2c0]
  916b11:	62 31 bd 48 59 da    	vmulpd zmm11,zmm8,zmm18
  916b17:	62 32 dd 40 bc de    	vfnmadd231pd zmm11,zmm20,zmm22
  916b1d:	62 a1 dd 40 59 e2    	vmulpd zmm20,zmm20,zmm18
  916b23:	62 61 fd 48 10 4a 0c 	vmovupd zmm25,ZMMWORD PTR [rdx+0x300]
  916b2a:	62 a2 bd 48 b8 e6    	vfmadd231pd zmm20,zmm8,zmm22
  916b30:	62 71 fd 48 10 42 0d 	vmovupd zmm8,ZMMWORD PTR [rdx+0x340]
  916b37:	62 81 c5 48 59 d1    	vmulpd zmm18,zmm7,zmm25
  916b3d:	62 c2 d5 40 bc d0    	vfnmadd231pd zmm18,zmm21,zmm8
  916b43:	62 81 d5 40 59 e9    	vmulpd zmm21,zmm21,zmm25
  916b49:	62 e1 fd 48 10 72 0e 	vmovupd zmm22,ZMMWORD PTR [rdx+0x380]
  916b50:	62 c2 c5 48 b8 e8    	vfmadd231pd zmm21,zmm7,zmm8
  916b56:	62 61 fd 48 10 4a 0f 	vmovupd zmm25,ZMMWORD PTR [rdx+0x3c0]
  916b5d:	62 21 cd 48 59 d3    	vmulpd zmm26,zmm6,zmm19
  916b63:	62 62 f5 40 bc d4    	vfnmadd231pd zmm26,zmm17,zmm4
  916b69:	62 a1 f5 40 59 db    	vmulpd zmm19,zmm17,zmm19
  916b6f:	62 d1 fd 48 58 f9    	vaddpd zmm7,zmm0,zmm9
  916b75:	62 e2 cd 48 b8 dc    	vfmadd231pd zmm19,zmm6,zmm4
  916b7b:	62 a1 a5 48 58 ca    	vaddpd zmm17,zmm11,zmm18
  916b81:	62 b1 d5 48 59 f7    	vmulpd zmm6,zmm5,zmm23
  916b87:	62 92 fd 40 bc f0    	vfnmadd231pd zmm6,zmm16,zmm24
  916b8d:	62 a1 fd 40 59 c7    	vmulpd zmm16,zmm16,zmm23
  916b93:	62 b1 c5 48 58 e1    	vaddpd zmm4,zmm7,zmm17
  916b99:	62 82 d5 48 b8 c0    	vfmadd231pd zmm16,zmm5,zmm24
  916b9f:	62 71 ad 40 58 c6    	vaddpd zmm8,zmm26,zmm6
  916ba5:	62 d1 ed 48 59 ef    	vmulpd zmm5,zmm2,zmm15
  916bab:	62 d2 9d 48 bc ed    	vfnmadd231pd zmm5,zmm12,zmm13
  916bb1:	62 51 9d 48 59 e7    	vmulpd zmm12,zmm12,zmm15
  916bb7:	62 31 f5 48 59 fe    	vmulpd zmm15,zmm1,zmm22
  916bbd:	62 12 ad 48 bc f9    	vfnmadd231pd zmm15,zmm10,zmm25
  916bc3:	62 52 ed 48 b8 e5    	vfmadd231pd zmm12,zmm2,zmm13
  916bc9:	62 51 d5 48 58 ef    	vaddpd zmm13,zmm5,zmm15
  916bcf:	62 d1 bd 48 58 d5    	vaddpd zmm2,zmm8,zmm13
  916bd5:	62 31 ad 48 59 d6    	vmulpd zmm10,zmm10,zmm22
  916bdb:	62 e1 8d 48 58 f3    	vaddpd zmm22,zmm14,zmm3
  916be1:	62 12 f5 48 b8 d1    	vfmadd231pd zmm10,zmm1,zmm25
  916be7:	62 a1 dd 40 58 fd    	vaddpd zmm23,zmm20,zmm21
  916bed:	62 b1 c5 40 58 ce    	vaddpd zmm1,zmm23,zmm22
  916bf3:	62 51 fd 48 5c c9    	vsubpd zmm9,zmm0,zmm9
  916bf9:	62 21 e5 40 58 c0    	vaddpd zmm24,zmm19,zmm16
  916bff:	62 a1 dd 40 5c e5    	vsubpd zmm20,zmm20,zmm21
  916c05:	62 c1 9d 48 58 ea    	vaddpd zmm21,zmm12,zmm10
  916c0b:	62 f1 ad 40 5c c6    	vsubpd zmm0,zmm26,zmm6
  916c11:	62 b1 bd 40 58 f5    	vaddpd zmm6,zmm24,zmm21
  916c17:	62 a1 e5 40 5c c0    	vsubpd zmm16,zmm19,zmm16
  916c1d:	62 a1 b5 48 58 dc    	vaddpd zmm19,zmm9,zmm20
  916c23:	62 51 9d 48 5c e2    	vsubpd zmm12,zmm12,zmm10
  916c29:	62 31 fd 48 58 d0    	vaddpd zmm10,zmm0,zmm16
  916c2f:	62 d1 d5 48 5c ef    	vsubpd zmm5,zmm5,zmm15
  916c35:	62 72 fd 48 19 3d 61 	vbroadcastsd zmm15,QWORD PTR [rip+0xffffffffff75e261]        # 74ea0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2350>
  916c3c:	e2 75 ff 
  916c3f:	62 41 ad 48 59 cf    	vmulpd zmm25,zmm10,zmm15
  916c45:	62 51 e5 48 5c f6    	vsubpd zmm14,zmm3,zmm14
  916c4b:	62 f1 9d 48 5c dd    	vsubpd zmm3,zmm12,zmm5
  916c51:	62 41 e5 48 59 d7    	vmulpd zmm26,zmm3,zmm15
  916c57:	62 51 ed 40 5c db    	vsubpd zmm11,zmm18,zmm11
  916c5d:	62 81 b5 40 58 d2    	vaddpd zmm18,zmm25,zmm26
  916c63:	62 f1 fd 40 5c d8    	vsubpd zmm3,zmm16,zmm0
  916c69:	62 31 e5 40 58 d2    	vaddpd zmm10,zmm19,zmm18
  916c6f:	62 d1 d5 48 58 ec    	vaddpd zmm5,zmm5,zmm12
  916c75:	c5 fd 28 05 83 00 76 	vmovapd ymm0,YMMWORD PTR [rip+0xffffffffff760083]        # 76d00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x41b0>
  916c7c:	ff 
  916c7d:	62 51 e5 48 59 e7    	vmulpd zmm12,zmm3,zmm15
  916c83:	62 51 d5 48 59 ff    	vmulpd zmm15,zmm5,zmm15
  916c89:	62 c1 a5 48 58 c6    	vaddpd zmm16,zmm11,zmm14
  916c8f:	62 a1 c5 48 5c c9    	vsubpd zmm17,zmm7,zmm17
  916c95:	62 41 9d 48 5c df    	vsubpd zmm27,zmm12,zmm15
  916c9b:	62 a1 bd 40 5c ed    	vsubpd zmm21,zmm24,zmm21
  916ca1:	62 91 fd 40 58 db    	vaddpd zmm3,zmm16,zmm27
  916ca7:	62 a1 cd 40 5c f7    	vsubpd zmm22,zmm22,zmm23
  916cad:	62 f1 fd 48 28 eb    	vmovapd zmm5,zmm3
  916cb3:	62 d2 fd 48 7f ea    	vpermt2pd zmm5,zmm0,zmm10
  916cb9:	62 51 95 48 5c e8    	vsubpd zmm13,zmm13,zmm8
  916cbf:	62 a1 f5 40 58 fd    	vaddpd zmm23,zmm17,zmm21
  916cc5:	62 a1 b5 48 5c e4    	vsubpd zmm20,zmm9,zmm20
  916ccb:	62 d1 cd 40 58 fd    	vaddpd zmm7,zmm22,zmm13
  916cd1:	62 41 9d 48 58 c7    	vaddpd zmm24,zmm12,zmm15
  916cd7:	62 71 fd 48 28 c7    	vmovapd zmm8,zmm7
  916cdd:	62 32 fd 48 7f c7    	vpermt2pd zmm8,zmm0,zmm23
  916ce3:	62 41 8d 48 5c e3    	vsubpd zmm28,zmm14,zmm11
  916ce9:	62 01 dd 40 58 e8    	vaddpd zmm29,zmm20,zmm24
  916cef:	62 01 ad 40 5c c9    	vsubpd zmm25,zmm26,zmm25
  916cf5:	62 11 9d 40 58 c9    	vaddpd zmm9,zmm28,zmm25
  916cfb:	62 a1 e5 40 5c d2    	vsubpd zmm18,zmm19,zmm18
  916d01:	62 51 fd 48 28 e1    	vmovapd zmm12,zmm9
  916d07:	62 12 fd 48 7f e5    	vpermt2pd zmm12,zmm0,zmm29
  916d0d:	62 11 fd 40 5c db    	vsubpd zmm11,zmm16,zmm27
  916d13:	62 e1 dd 48 5c c2    	vsubpd zmm16,zmm4,zmm2
  916d19:	62 a1 f5 40 5c cd    	vsubpd zmm17,zmm17,zmm21
  916d1f:	62 71 f5 48 5c f6    	vsubpd zmm14,zmm1,zmm6
  916d25:	62 51 cd 40 5c ed    	vsubpd zmm13,zmm22,zmm13
  916d2b:	62 51 fd 48 28 fe    	vmovapd zmm15,zmm14
  916d31:	62 32 fd 48 7f f8    	vpermt2pd zmm15,zmm0,zmm16
  916d37:	62 81 dd 40 5c d8    	vsubpd zmm19,zmm20,zmm24
  916d3d:	62 c1 fd 48 28 e3    	vmovapd zmm20,zmm11
  916d43:	62 a2 fd 48 7f e2    	vpermt2pd zmm20,zmm0,zmm18
  916d49:	62 81 9d 40 5c e9    	vsubpd zmm21,zmm28,zmm25
  916d4f:	62 c1 fd 48 28 f5    	vmovapd zmm22,zmm13
  916d55:	62 a2 fd 48 7f f1    	vpermt2pd zmm22,zmm0,zmm17
  916d5b:	62 f1 f5 48 58 ce    	vaddpd zmm1,zmm1,zmm6
  916d61:	62 b1 fd 48 28 f5    	vmovapd zmm6,zmm21
  916d67:	62 b2 fd 48 7f f3    	vpermt2pd zmm6,zmm0,zmm19
  916d6d:	62 f1 dd 48 58 d2    	vaddpd zmm2,zmm4,zmm2
  916d73:	62 f2 f5 48 77 c2    	vpermi2pd zmm0,zmm1,zmm2
  916d79:	62 f1 fd 48 28 25 fd 	vmovapd zmm4,ZMMWORD PTR [rip+0xffffffffff768efd]        # 7fc80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xd130>
  916d80:	8e 76 ff 
  916d83:	62 f2 dd 48 7f ca    	vpermt2pd zmm1,zmm4,zmm2
  916d89:	62 d2 dd 48 7f da    	vpermt2pd zmm3,zmm4,zmm10
  916d8f:	62 b2 dd 48 7f ff    	vpermt2pd zmm7,zmm4,zmm23
  916d95:	62 12 dd 48 7f cd    	vpermt2pd zmm9,zmm4,zmm29
  916d9b:	62 32 dd 48 7f f0    	vpermt2pd zmm14,zmm4,zmm16
  916da1:	62 32 dd 48 7f da    	vpermt2pd zmm11,zmm4,zmm18
  916da7:	62 32 dd 48 7f e9    	vpermt2pd zmm13,zmm4,zmm17
  916dad:	62 a2 dd 48 7f eb    	vpermt2pd zmm21,zmm4,zmm19
  916db3:	62 f1 fd 48 11 0e    	vmovupd ZMMWORD PTR [rsi],zmm1
  916db9:	c5 fd 11 46 40       	vmovupd YMMWORD PTR [rsi+0x40],ymm0
  916dbe:	62 f1 fd 48 11 9e 60 	vmovupd ZMMWORD PTR [rsi+0x60],zmm3
  916dc5:	00 00 00 
  916dc8:	c5 fd 11 ae a0 00 00 	vmovupd YMMWORD PTR [rsi+0xa0],ymm5
  916dcf:	00 
  916dd0:	62 f1 fd 48 11 7e 03 	vmovupd ZMMWORD PTR [rsi+0xc0],zmm7
  916dd7:	c5 7d 11 86 00 01 00 	vmovupd YMMWORD PTR [rsi+0x100],ymm8
  916dde:	00 
  916ddf:	62 71 fd 48 11 8e 20 	vmovupd ZMMWORD PTR [rsi+0x120],zmm9
  916de6:	01 00 00 
  916de9:	c5 7d 11 a6 60 01 00 	vmovupd YMMWORD PTR [rsi+0x160],ymm12
  916df0:	00 
  916df1:	62 71 fd 48 11 76 06 	vmovupd ZMMWORD PTR [rsi+0x180],zmm14
  916df8:	c5 7d 11 be c0 01 00 	vmovupd YMMWORD PTR [rsi+0x1c0],ymm15
  916dff:	00 
  916e00:	62 71 fd 48 11 9e e0 	vmovupd ZMMWORD PTR [rsi+0x1e0],zmm11
  916e07:	01 00 00 
  916e0a:	62 e1 fd 28 11 66 11 	vmovupd YMMWORD PTR [rsi+0x220],ymm20
  916e11:	62 71 fd 48 11 6e 09 	vmovupd ZMMWORD PTR [rsi+0x240],zmm13
  916e18:	62 e1 fd 28 11 76 14 	vmovupd YMMWORD PTR [rsi+0x280],ymm22
  916e1f:	62 e1 fd 48 11 ae a0 	vmovupd ZMMWORD PTR [rsi+0x2a0],zmm21
  916e26:	02 00 00 
  916e29:	c5 fd 11 b6 e0 02 00 	vmovupd YMMWORD PTR [rsi+0x2e0],ymm6
  916e30:	00 
  916e31:	c5 f8 77             	vzeroupper
  916e34:	c3                   	ret
