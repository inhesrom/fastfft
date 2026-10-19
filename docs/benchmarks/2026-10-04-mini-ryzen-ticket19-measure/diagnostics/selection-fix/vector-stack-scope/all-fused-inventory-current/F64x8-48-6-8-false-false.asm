
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000944500 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  944500:	62 f1 fd 48 28 15 36 	vmovapd zmm2,ZMMWORD PTR [rip+0xffffffffff73f236]        # 83740 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x10bf0>
  944507:	f2 73 ff 
  94450a:	62 f1 fd 48 10 07    	vmovupd zmm0,ZMMWORD PTR [rdi]
  944510:	62 f1 fd 48 10 4f 01 	vmovupd zmm1,ZMMWORD PTR [rdi+0x40]
  944517:	62 f1 fd 48 10 6f 02 	vmovupd zmm5,ZMMWORD PTR [rdi+0x80]
  94451e:	62 f1 fd 48 10 67 03 	vmovupd zmm4,ZMMWORD PTR [rdi+0xc0]
  944525:	62 f1 fd 48 28 d8    	vmovapd zmm3,zmm0
  94452b:	62 f2 ed 48 7f d9    	vpermt2pd zmm3,zmm2,zmm1
  944531:	62 f1 fd 48 28 35 45 	vmovapd zmm6,ZMMWORD PTR [rip+0xffffffffff73f245]        # 83780 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x10c30>
  944538:	f2 73 ff 
  94453b:	62 f2 cd 48 7f c1    	vpermt2pd zmm0,zmm6,zmm1
  944541:	62 f1 fd 48 28 fd    	vmovapd zmm7,zmm5
  944547:	62 f2 ed 48 7f fc    	vpermt2pd zmm7,zmm2,zmm4
  94454d:	62 f2 cd 48 7f ec    	vpermt2pd zmm5,zmm6,zmm4
  944553:	62 71 fd 48 10 47 04 	vmovupd zmm8,ZMMWORD PTR [rdi+0x100]
  94455a:	62 f1 fd 48 10 4f 05 	vmovupd zmm1,ZMMWORD PTR [rdi+0x140]
  944561:	62 51 fd 48 28 c8    	vmovapd zmm9,zmm8
  944567:	62 72 ed 48 7f c9    	vpermt2pd zmm9,zmm2,zmm1
  94456d:	62 72 cd 48 7f c1    	vpermt2pd zmm8,zmm6,zmm1
  944573:	62 71 fd 48 10 57 06 	vmovupd zmm10,ZMMWORD PTR [rdi+0x180]
  94457a:	62 f1 fd 48 10 4f 07 	vmovupd zmm1,ZMMWORD PTR [rdi+0x1c0]
  944581:	62 51 fd 48 28 da    	vmovapd zmm11,zmm10
  944587:	62 72 ed 48 7f d9    	vpermt2pd zmm11,zmm2,zmm1
  94458d:	62 72 cd 48 7f d1    	vpermt2pd zmm10,zmm6,zmm1
  944593:	62 71 fd 48 10 67 08 	vmovupd zmm12,ZMMWORD PTR [rdi+0x200]
  94459a:	62 f1 fd 48 10 4f 09 	vmovupd zmm1,ZMMWORD PTR [rdi+0x240]
  9445a1:	62 51 fd 48 28 ec    	vmovapd zmm13,zmm12
  9445a7:	62 72 ed 48 7f e9    	vpermt2pd zmm13,zmm2,zmm1
  9445ad:	62 72 cd 48 7f e1    	vpermt2pd zmm12,zmm6,zmm1
  9445b3:	62 71 fd 48 10 77 0a 	vmovupd zmm14,ZMMWORD PTR [rdi+0x280]
  9445ba:	62 f1 fd 48 10 4f 0b 	vmovupd zmm1,ZMMWORD PTR [rdi+0x2c0]
  9445c1:	62 f2 8d 48 77 d1    	vpermi2pd zmm2,zmm14,zmm1
  9445c7:	62 72 cd 48 7f f1    	vpermt2pd zmm14,zmm6,zmm1
  9445cd:	62 d1 b5 48 58 f5    	vaddpd zmm6,zmm9,zmm13
  9445d3:	62 71 e5 48 58 fe    	vaddpd zmm15,zmm3,zmm6
  9445d9:	62 e1 ed 48 58 c7    	vaddpd zmm16,zmm2,zmm7
  9445df:	62 a1 a5 48 58 c8    	vaddpd zmm17,zmm11,zmm16
  9445e5:	62 b1 85 48 58 c9    	vaddpd zmm1,zmm15,zmm17
  9445eb:	62 c1 bd 48 58 d4    	vaddpd zmm18,zmm8,zmm12
  9445f1:	62 a1 fd 48 58 da    	vaddpd zmm19,zmm0,zmm18
  9445f7:	62 e1 8d 48 58 e5    	vaddpd zmm20,zmm14,zmm5
  9445fd:	62 a1 ad 48 58 ec    	vaddpd zmm21,zmm10,zmm20
  944603:	62 b1 e5 40 58 e5    	vaddpd zmm4,zmm19,zmm21
  944609:	62 e2 fd 48 19 35 85 	vbroadcastsd zmm22,QWORD PTR [rip+0xffffffffff730485]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  944610:	04 73 ff 
  944613:	62 f2 cd 40 bc de    	vfnmadd231pd zmm3,zmm22,zmm6
  944619:	62 d1 bd 48 5c f4    	vsubpd zmm6,zmm8,zmm12
  94461f:	62 72 fd 48 19 05 f7 	vbroadcastsd zmm8,QWORD PTR [rip+0xffffffffff7305f7]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  944626:	05 73 ff 
  944629:	62 d1 cd 48 59 f0    	vmulpd zmm6,zmm6,zmm8
  94462f:	62 e1 e5 48 58 fe    	vaddpd zmm23,zmm3,zmm6
  944635:	62 32 cd 40 bc d8    	vfnmadd231pd zmm11,zmm22,zmm16
  94463b:	62 f1 8d 48 5c ed    	vsubpd zmm5,zmm14,zmm5
  944641:	62 d1 d5 48 59 e8    	vmulpd zmm5,zmm5,zmm8
  944647:	62 71 a5 48 58 f5    	vaddpd zmm14,zmm11,zmm5
  94464d:	62 51 c5 40 5c e6    	vsubpd zmm12,zmm23,zmm14
  944653:	62 b2 cd 40 bc c2    	vfnmadd231pd zmm0,zmm22,zmm18
  944659:	62 51 b5 48 5c cd    	vsubpd zmm9,zmm9,zmm13
  94465f:	62 51 b5 48 59 e8    	vmulpd zmm13,zmm9,zmm8
  944665:	62 c1 fd 48 5c c5    	vsubpd zmm16,zmm0,zmm13
  94466b:	62 32 dd 40 bc d6    	vfnmadd231pd zmm10,zmm20,zmm22
  944671:	62 f1 ed 48 5c d7    	vsubpd zmm2,zmm2,zmm7
  944677:	62 d1 ed 48 59 d0    	vmulpd zmm2,zmm2,zmm8
  94467d:	62 f1 ad 48 5c fa    	vsubpd zmm7,zmm10,zmm2
  944683:	62 71 fd 40 5c cf    	vsubpd zmm9,zmm16,zmm7
  944689:	62 f1 e5 48 5c f6    	vsubpd zmm6,zmm3,zmm6
  94468f:	62 f1 a5 48 5c ed    	vsubpd zmm5,zmm11,zmm5
  944695:	62 71 cd 48 58 c5    	vaddpd zmm8,zmm6,zmm5
  94469b:	62 f1 95 48 58 c0    	vaddpd zmm0,zmm13,zmm0
  9446a1:	62 d1 ed 48 58 d2    	vaddpd zmm2,zmm2,zmm10
  9446a7:	62 71 fd 48 58 d2    	vaddpd zmm10,zmm0,zmm2
  9446ad:	62 31 85 48 5c d9    	vsubpd zmm11,zmm15,zmm17
  9446b3:	62 b1 e5 40 5c dd    	vsubpd zmm3,zmm19,zmm21
  9446b9:	62 51 c5 40 58 f6    	vaddpd zmm14,zmm23,zmm14
  9446bf:	62 71 fd 40 58 ff    	vaddpd zmm15,zmm16,zmm7
  9446c5:	62 f1 cd 48 5c ed    	vsubpd zmm5,zmm6,zmm5
  9446cb:	62 e1 fd 48 5c c2    	vsubpd zmm16,zmm0,zmm2
  9446d1:	62 71 fd 48 10 2d 8d 	vmovupd zmm13,ZMMWORD PTR [rip+0xffffffffff78268d]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  9446d8:	26 78 ff 
  9446db:	62 f1 fd 48 28 d1    	vmovapd zmm2,zmm1
  9446e1:	62 d2 95 48 7f d6    	vpermt2pd zmm2,zmm13,zmm14
  9446e7:	62 e1 fd 48 10 0d b7 	vmovupd zmm17,ZMMWORD PTR [rip+0xffffffffff7826b7]        # c6da8 <crc32fast::table::CRC32_TABLE+0x9124>
  9446ee:	26 78 ff 
  9446f1:	62 d2 f5 40 7f ce    	vpermt2pd zmm1,zmm17,zmm14
  9446f7:	62 d1 fd 48 28 fc    	vmovapd zmm7,zmm12
  9446fd:	62 f2 95 48 7f fd    	vpermt2pd zmm7,zmm13,zmm5
  944703:	62 72 f5 40 7f e5    	vpermt2pd zmm12,zmm17,zmm5
  944709:	c4 41 09 57 f6       	vxorpd xmm14,xmm14,xmm14
  94470e:	62 d1 fd 48 28 c0    	vmovapd zmm0,zmm8
  944714:	62 d2 95 48 7f c6    	vpermt2pd zmm0,zmm13,zmm14
  94471a:	62 52 f5 40 7f c6    	vpermt2pd zmm8,zmm17,zmm14
  944720:	62 d1 fd 48 28 eb    	vmovapd zmm5,zmm11
  944726:	62 d2 95 48 7f ee    	vpermt2pd zmm5,zmm13,zmm14
  94472c:	62 52 f5 40 7f de    	vpermt2pd zmm11,zmm17,zmm14
  944732:	62 e1 fd 48 10 15 ac 	vmovupd zmm18,ZMMWORD PTR [rip+0xffffffffff7825ac]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  944739:	25 78 ff 
  94473c:	62 f1 fd 48 28 f2    	vmovapd zmm6,zmm2
  944742:	62 f2 ed 40 7f f0    	vpermt2pd zmm6,zmm18,zmm0
  944748:	62 e1 fd 48 10 1d d6 	vmovupd zmm19,ZMMWORD PTR [rip+0xffffffffff7825d6]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  94474f:	25 78 ff 
  944752:	62 f2 e5 40 7f d0    	vpermt2pd zmm2,zmm19,zmm0
  944758:	62 e1 fd 48 28 e7    	vmovapd zmm20,zmm7
  94475e:	62 e2 ed 40 7f e5    	vpermt2pd zmm20,zmm18,zmm5
  944764:	62 f2 e5 40 7f fd    	vpermt2pd zmm7,zmm19,zmm5
  94476a:	62 f1 fd 48 28 e9    	vmovapd zmm5,zmm1
  944770:	62 d2 ed 40 7f e8    	vpermt2pd zmm5,zmm18,zmm8
  944776:	62 d2 e5 40 7f c8    	vpermt2pd zmm1,zmm19,zmm8
  94477c:	62 c1 fd 48 28 ec    	vmovapd zmm21,zmm12
  944782:	62 c2 ed 40 7f eb    	vpermt2pd zmm21,zmm18,zmm11
  944788:	62 52 e5 40 7f e3    	vpermt2pd zmm12,zmm19,zmm11
  94478e:	62 b1 cd 48 14 c4    	vunpcklpd zmm0,zmm6,zmm20
  944794:	62 b1 cd 48 15 f4    	vunpckhpd zmm6,zmm6,zmm20
  94479a:	62 71 ed 48 14 c7    	vunpcklpd zmm8,zmm2,zmm7
  9447a0:	62 f1 ed 48 15 d7    	vunpckhpd zmm2,zmm2,zmm7
  9447a6:	62 31 d5 48 14 dd    	vunpcklpd zmm11,zmm5,zmm21
  9447ac:	62 b1 d5 48 15 ed    	vunpckhpd zmm5,zmm5,zmm21
  9447b2:	62 d1 f5 48 14 fc    	vunpcklpd zmm7,zmm1,zmm12
  9447b8:	62 d1 f5 48 15 cc    	vunpckhpd zmm1,zmm1,zmm12
  9447be:	62 71 fd 48 28 e4    	vmovapd zmm12,zmm4
  9447c4:	62 52 95 48 7f e7    	vpermt2pd zmm12,zmm13,zmm15
  9447ca:	62 d2 f5 40 7f e7    	vpermt2pd zmm4,zmm17,zmm15
  9447d0:	62 51 fd 48 28 f9    	vmovapd zmm15,zmm9
  9447d6:	62 32 95 48 7f f8    	vpermt2pd zmm15,zmm13,zmm16
  9447dc:	62 32 f5 40 7f c8    	vpermt2pd zmm9,zmm17,zmm16
  9447e2:	62 c1 fd 48 28 c2    	vmovapd zmm16,zmm10
  9447e8:	62 c2 95 48 7f c6    	vpermt2pd zmm16,zmm13,zmm14
  9447ee:	62 52 f5 40 7f d6    	vpermt2pd zmm10,zmm17,zmm14
  9447f4:	62 52 e5 48 77 ee    	vpermi2pd zmm13,zmm3,zmm14
  9447fa:	62 d2 f5 40 7f de    	vpermt2pd zmm3,zmm17,zmm14
  944800:	62 51 fd 48 28 f4    	vmovapd zmm14,zmm12
  944806:	62 32 ed 40 7f f0    	vpermt2pd zmm14,zmm18,zmm16
  94480c:	62 32 e5 40 7f e0    	vpermt2pd zmm12,zmm19,zmm16
  944812:	62 c1 fd 48 28 c7    	vmovapd zmm16,zmm15
  944818:	62 c2 ed 40 7f c5    	vpermt2pd zmm16,zmm18,zmm13
  94481e:	62 52 e5 40 7f fd    	vpermt2pd zmm15,zmm19,zmm13
  944824:	62 71 fd 48 28 ec    	vmovapd zmm13,zmm4
  94482a:	62 52 ed 40 7f ea    	vpermt2pd zmm13,zmm18,zmm10
  944830:	62 d2 e5 40 7f e2    	vpermt2pd zmm4,zmm19,zmm10
  944836:	62 e2 b5 48 77 d3    	vpermi2pd zmm18,zmm9,zmm3
  94483c:	62 72 e5 40 7f cb    	vpermt2pd zmm9,zmm19,zmm3
  944842:	62 b1 8d 48 14 d8    	vunpcklpd zmm3,zmm14,zmm16
  944848:	62 a1 8d 48 15 c8    	vunpckhpd zmm17,zmm14,zmm16
  94484e:	62 c1 9d 48 14 df    	vunpcklpd zmm19,zmm12,zmm15
  944854:	62 51 9d 48 15 e7    	vunpckhpd zmm12,zmm12,zmm15
  94485a:	62 a1 95 48 14 c2    	vunpcklpd zmm16,zmm13,zmm18
  944860:	62 31 95 48 15 fa    	vunpckhpd zmm15,zmm13,zmm18
  944866:	62 51 dd 48 15 d1    	vunpckhpd zmm10,zmm4,zmm9
  94486c:	62 c1 dd 48 14 e1    	vunpcklpd zmm20,zmm4,zmm9
  944872:	62 e1 fd 48 10 52 02 	vmovupd zmm18,ZMMWORD PTR [rdx+0x80]
  944879:	62 f1 fd 48 10 62 03 	vmovupd zmm4,ZMMWORD PTR [rdx+0xc0]
  944880:	62 e1 fd 48 10 6a 04 	vmovupd zmm21,ZMMWORD PTR [rdx+0x100]
  944887:	62 e1 fd 48 10 72 05 	vmovupd zmm22,ZMMWORD PTR [rdx+0x140]
  94488e:	62 71 fd 48 10 72 06 	vmovupd zmm14,ZMMWORD PTR [rdx+0x180]
  944895:	62 71 fd 48 10 6a 07 	vmovupd zmm13,ZMMWORD PTR [rdx+0x1c0]
  94489c:	62 e1 fd 48 10 7a 08 	vmovupd zmm23,ZMMWORD PTR [rdx+0x200]
  9448a3:	62 61 fd 48 10 42 09 	vmovupd zmm24,ZMMWORD PTR [rdx+0x240]
  9448aa:	62 31 a5 48 59 cf    	vmulpd zmm9,zmm11,zmm23
  9448b0:	62 12 fd 40 bc c8    	vfnmadd231pd zmm9,zmm16,zmm24
  9448b6:	62 a1 fd 40 59 c7    	vmulpd zmm16,zmm16,zmm23
  9448bc:	62 e1 fd 48 10 7a 0a 	vmovupd zmm23,ZMMWORD PTR [rdx+0x280]
  9448c3:	62 82 a5 48 b8 c0    	vfmadd231pd zmm16,zmm11,zmm24
  9448c9:	62 61 fd 48 10 42 0b 	vmovupd zmm24,ZMMWORD PTR [rdx+0x2c0]
  9448d0:	62 31 bd 48 59 dd    	vmulpd zmm11,zmm8,zmm21
  9448d6:	62 32 e5 40 bc de    	vfnmadd231pd zmm11,zmm19,zmm22
  9448dc:	62 a1 e5 40 59 ed    	vmulpd zmm21,zmm19,zmm21
  9448e2:	62 61 fd 48 10 4a 0c 	vmovupd zmm25,ZMMWORD PTR [rdx+0x300]
  9448e9:	62 a2 bd 48 b8 ee    	vfmadd231pd zmm21,zmm8,zmm22
  9448ef:	62 71 fd 48 10 42 0d 	vmovupd zmm8,ZMMWORD PTR [rdx+0x340]
  9448f6:	62 81 c5 48 59 d9    	vmulpd zmm19,zmm7,zmm25
  9448fc:	62 c2 dd 40 bc d8    	vfnmadd231pd zmm19,zmm20,zmm8
  944902:	62 81 dd 40 59 e1    	vmulpd zmm20,zmm20,zmm25
  944908:	62 e1 fd 48 10 72 0e 	vmovupd zmm22,ZMMWORD PTR [rdx+0x380]
  94490f:	62 c2 c5 48 b8 e0    	vfmadd231pd zmm20,zmm7,zmm8
  944915:	62 f1 fd 48 10 7a 0f 	vmovupd zmm7,ZMMWORD PTR [rdx+0x3c0]
  94491c:	62 21 cd 48 59 ca    	vmulpd zmm25,zmm6,zmm18
  944922:	62 62 f5 40 bc cc    	vfnmadd231pd zmm25,zmm17,zmm4
  944928:	62 a1 f5 40 59 d2    	vmulpd zmm18,zmm17,zmm18
  94492e:	62 51 fd 48 58 c1    	vaddpd zmm8,zmm0,zmm9
  944934:	62 e2 cd 48 b8 d4    	vfmadd231pd zmm18,zmm6,zmm4
  94493a:	62 a1 a5 48 58 cb    	vaddpd zmm17,zmm11,zmm19
  944940:	62 21 d5 48 59 d7    	vmulpd zmm26,zmm5,zmm23
  944946:	62 02 85 48 bc d0    	vfnmadd231pd zmm26,zmm15,zmm24
  94494c:	62 31 85 48 59 ff    	vmulpd zmm15,zmm15,zmm23
  944952:	62 b1 bd 48 58 e1    	vaddpd zmm4,zmm8,zmm17
  944958:	62 12 d5 48 b8 f8    	vfmadd231pd zmm15,zmm5,zmm24
  94495e:	62 91 b5 40 58 f2    	vaddpd zmm6,zmm25,zmm26
  944964:	62 d1 ed 48 59 ee    	vmulpd zmm5,zmm2,zmm14
  94496a:	62 d2 9d 48 bc ed    	vfnmadd231pd zmm5,zmm12,zmm13
  944970:	62 51 9d 48 59 e6    	vmulpd zmm12,zmm12,zmm14
  944976:	62 31 f5 48 59 f6    	vmulpd zmm14,zmm1,zmm22
  94497c:	62 72 ad 48 bc f7    	vfnmadd231pd zmm14,zmm10,zmm7
  944982:	62 52 ed 48 b8 e5    	vfmadd231pd zmm12,zmm2,zmm13
  944988:	62 51 d5 48 58 ee    	vaddpd zmm13,zmm5,zmm14
  94498e:	62 d1 cd 48 58 d5    	vaddpd zmm2,zmm6,zmm13
  944994:	62 31 ad 48 59 d6    	vmulpd zmm10,zmm10,zmm22
  94499a:	62 e1 fd 40 58 f3    	vaddpd zmm22,zmm16,zmm3
  9449a0:	62 72 f5 48 b8 d7    	vfmadd231pd zmm10,zmm1,zmm7
  9449a6:	62 a1 d5 40 58 fc    	vaddpd zmm23,zmm21,zmm20
  9449ac:	62 b1 c5 40 58 ce    	vaddpd zmm1,zmm23,zmm22
  9449b2:	62 51 fd 48 5c c9    	vsubpd zmm9,zmm0,zmm9
  9449b8:	62 41 ed 40 58 c7    	vaddpd zmm24,zmm18,zmm15
  9449be:	62 a1 d5 40 5c e4    	vsubpd zmm20,zmm21,zmm20
  9449c4:	62 c1 9d 48 58 ea    	vaddpd zmm21,zmm12,zmm10
  9449ca:	62 91 b5 40 5c c2    	vsubpd zmm0,zmm25,zmm26
  9449d0:	62 b1 bd 40 58 fd    	vaddpd zmm7,zmm24,zmm21
  9449d6:	62 51 ed 40 5c ff    	vsubpd zmm15,zmm18,zmm15
  9449dc:	62 a1 b5 48 58 d4    	vaddpd zmm18,zmm9,zmm20
  9449e2:	62 51 9d 48 5c d2    	vsubpd zmm10,zmm12,zmm10
  9449e8:	62 51 fd 48 58 e7    	vaddpd zmm12,zmm0,zmm15
  9449ee:	62 d1 d5 48 5c ee    	vsubpd zmm5,zmm5,zmm14
  9449f4:	62 72 fd 48 19 35 a2 	vbroadcastsd zmm14,QWORD PTR [rip+0xffffffffff7304a2]        # 74ea0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2350>
  9449fb:	04 73 ff 
  9449fe:	62 51 9d 48 59 e6    	vmulpd zmm12,zmm12,zmm14
  944a04:	62 a1 e5 48 5c c0    	vsubpd zmm16,zmm3,zmm16
  944a0a:	62 f1 ad 48 5c dd    	vsubpd zmm3,zmm10,zmm5
  944a10:	62 41 e5 48 59 ce    	vmulpd zmm25,zmm3,zmm14
  944a16:	62 51 e5 40 5c db    	vsubpd zmm11,zmm19,zmm11
  944a1c:	62 81 9d 48 58 d9    	vaddpd zmm19,zmm12,zmm25
  944a22:	62 f1 85 48 5c d8    	vsubpd zmm3,zmm15,zmm0
  944a28:	62 b1 ed 40 58 c3    	vaddpd zmm0,zmm18,zmm19
  944a2e:	62 d1 d5 48 58 ea    	vaddpd zmm5,zmm5,zmm10
  944a34:	62 31 a5 48 58 f8    	vaddpd zmm15,zmm11,zmm16
  944a3a:	62 51 e5 48 59 d6    	vmulpd zmm10,zmm3,zmm14
  944a40:	62 51 d5 48 59 f6    	vmulpd zmm14,zmm5,zmm14
  944a46:	62 41 ad 48 5c d6    	vsubpd zmm26,zmm10,zmm14
  944a4c:	62 a1 bd 48 5c c9    	vsubpd zmm17,zmm8,zmm17
  944a52:	62 01 85 48 58 da    	vaddpd zmm27,zmm15,zmm26
  944a58:	62 a1 bd 40 5c ed    	vsubpd zmm21,zmm24,zmm21
  944a5e:	c5 fd 28 1d 9a 22 73 	vmovapd ymm3,YMMWORD PTR [rip+0xffffffffff73229a]        # 76d00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x41b0>
  944a65:	ff 
  944a66:	62 a1 cd 40 5c f7    	vsubpd zmm22,zmm22,zmm23
  944a6c:	62 f1 fd 48 28 e8    	vmovapd zmm5,zmm0
  944a72:	62 92 e5 48 7f eb    	vpermt2pd zmm5,zmm3,zmm27
  944a78:	62 e1 95 48 5c fe    	vsubpd zmm23,zmm13,zmm6
  944a7e:	62 b1 f5 40 58 f5    	vaddpd zmm6,zmm17,zmm21
  944a84:	62 a1 b5 48 5c e4    	vsubpd zmm20,zmm9,zmm20
  944a8a:	62 21 cd 40 58 c7    	vaddpd zmm24,zmm22,zmm23
  944a90:	62 51 ad 48 58 f6    	vaddpd zmm14,zmm10,zmm14
  944a96:	62 71 fd 48 28 c6    	vmovapd zmm8,zmm6
  944a9c:	62 12 e5 48 7f c0    	vpermt2pd zmm8,zmm3,zmm24
  944aa2:	62 c1 fd 40 5c c3    	vsubpd zmm16,zmm16,zmm11
  944aa8:	62 51 dd 40 58 ce    	vaddpd zmm9,zmm20,zmm14
  944aae:	62 41 b5 40 5c cc    	vsubpd zmm25,zmm25,zmm12
  944ab4:	62 01 fd 40 58 e1    	vaddpd zmm28,zmm16,zmm25
  944aba:	62 31 ed 40 5c d3    	vsubpd zmm10,zmm18,zmm19
  944ac0:	62 51 fd 48 28 d9    	vmovapd zmm11,zmm9
  944ac6:	62 12 e5 48 7f dc    	vpermt2pd zmm11,zmm3,zmm28
  944acc:	62 81 85 48 5c d2    	vsubpd zmm18,zmm15,zmm26
  944ad2:	62 71 dd 48 5c ea    	vsubpd zmm13,zmm4,zmm2
  944ad8:	62 31 f5 40 5c e5    	vsubpd zmm12,zmm17,zmm21
  944ade:	62 e1 f5 48 5c cf    	vsubpd zmm17,zmm1,zmm7
  944ae4:	62 a1 cd 40 5c df    	vsubpd zmm19,zmm22,zmm23
  944aea:	62 51 fd 48 28 fd    	vmovapd zmm15,zmm13
  944af0:	62 32 e5 48 7f f9    	vpermt2pd zmm15,zmm3,zmm17
  944af6:	62 51 dd 40 5c f6    	vsubpd zmm14,zmm20,zmm14
  944afc:	62 c1 fd 48 28 e2    	vmovapd zmm20,zmm10
  944b02:	62 a2 e5 48 7f e2    	vpermt2pd zmm20,zmm3,zmm18
  944b08:	62 81 fd 40 5c c1    	vsubpd zmm16,zmm16,zmm25
  944b0e:	62 c1 fd 48 28 ec    	vmovapd zmm21,zmm12
  944b14:	62 a2 e5 48 7f eb    	vpermt2pd zmm21,zmm3,zmm19
  944b1a:	62 f1 dd 48 58 d2    	vaddpd zmm2,zmm4,zmm2
  944b20:	62 d1 fd 48 28 e6    	vmovapd zmm4,zmm14
  944b26:	62 b2 e5 48 7f e0    	vpermt2pd zmm4,zmm3,zmm16
  944b2c:	62 f1 f5 48 58 cf    	vaddpd zmm1,zmm1,zmm7
  944b32:	62 f2 ed 48 77 d9    	vpermi2pd zmm3,zmm2,zmm1
  944b38:	62 f1 fd 48 28 3d 7e 	vmovapd zmm7,ZMMWORD PTR [rip+0xffffffffff73ec7e]        # 837c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x10c70>
  944b3f:	ec 73 ff 
  944b42:	62 f2 c5 48 7f d1    	vpermt2pd zmm2,zmm7,zmm1
  944b48:	62 92 c5 48 7f c3    	vpermt2pd zmm0,zmm7,zmm27
  944b4e:	62 92 c5 48 7f f0    	vpermt2pd zmm6,zmm7,zmm24
  944b54:	62 12 c5 48 7f cc    	vpermt2pd zmm9,zmm7,zmm28
  944b5a:	62 32 c5 48 7f e9    	vpermt2pd zmm13,zmm7,zmm17
  944b60:	62 32 c5 48 7f d2    	vpermt2pd zmm10,zmm7,zmm18
  944b66:	62 32 c5 48 7f e3    	vpermt2pd zmm12,zmm7,zmm19
  944b6c:	62 32 c5 48 7f f0    	vpermt2pd zmm14,zmm7,zmm16
  944b72:	62 f1 fd 48 11 16    	vmovupd ZMMWORD PTR [rsi],zmm2
  944b78:	c5 fd 11 5e 40       	vmovupd YMMWORD PTR [rsi+0x40],ymm3
  944b7d:	62 f1 fd 48 11 86 60 	vmovupd ZMMWORD PTR [rsi+0x60],zmm0
  944b84:	00 00 00 
  944b87:	c5 fd 11 ae a0 00 00 	vmovupd YMMWORD PTR [rsi+0xa0],ymm5
  944b8e:	00 
  944b8f:	62 f1 fd 48 11 76 03 	vmovupd ZMMWORD PTR [rsi+0xc0],zmm6
  944b96:	c5 7d 11 86 00 01 00 	vmovupd YMMWORD PTR [rsi+0x100],ymm8
  944b9d:	00 
  944b9e:	62 71 fd 48 11 8e 20 	vmovupd ZMMWORD PTR [rsi+0x120],zmm9
  944ba5:	01 00 00 
  944ba8:	c5 7d 11 9e 60 01 00 	vmovupd YMMWORD PTR [rsi+0x160],ymm11
  944baf:	00 
  944bb0:	62 71 fd 48 11 6e 06 	vmovupd ZMMWORD PTR [rsi+0x180],zmm13
  944bb7:	c5 7d 11 be c0 01 00 	vmovupd YMMWORD PTR [rsi+0x1c0],ymm15
  944bbe:	00 
  944bbf:	62 71 fd 48 11 96 e0 	vmovupd ZMMWORD PTR [rsi+0x1e0],zmm10
  944bc6:	01 00 00 
  944bc9:	62 e1 fd 28 11 66 11 	vmovupd YMMWORD PTR [rsi+0x220],ymm20
  944bd0:	62 71 fd 48 11 66 09 	vmovupd ZMMWORD PTR [rsi+0x240],zmm12
  944bd7:	62 e1 fd 28 11 6e 14 	vmovupd YMMWORD PTR [rsi+0x280],ymm21
  944bde:	62 71 fd 48 11 b6 a0 	vmovupd ZMMWORD PTR [rsi+0x2a0],zmm14
  944be5:	02 00 00 
  944be8:	c5 fd 11 a6 e0 02 00 	vmovupd YMMWORD PTR [rsi+0x2e0],ymm4
  944bef:	00 
  944bf0:	c5 f8 77             	vzeroupper
  944bf3:	c3                   	ret
