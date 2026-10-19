
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000943280 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  943280:	62 f1 fd 48 28 15 b6 	vmovapd zmm2,ZMMWORD PTR [rip+0xffffffffff7404b6]        # 83740 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x10bf0>
  943287:	04 74 ff 
  94328a:	62 f1 fd 48 10 07    	vmovupd zmm0,ZMMWORD PTR [rdi]
  943290:	62 f1 fd 48 10 4f 01 	vmovupd zmm1,ZMMWORD PTR [rdi+0x40]
  943297:	62 f1 fd 48 10 6f 02 	vmovupd zmm5,ZMMWORD PTR [rdi+0x80]
  94329e:	62 f1 fd 48 10 67 03 	vmovupd zmm4,ZMMWORD PTR [rdi+0xc0]
  9432a5:	62 f1 fd 48 28 d8    	vmovapd zmm3,zmm0
  9432ab:	62 f2 ed 48 7f d9    	vpermt2pd zmm3,zmm2,zmm1
  9432b1:	62 f1 fd 48 28 35 c5 	vmovapd zmm6,ZMMWORD PTR [rip+0xffffffffff7404c5]        # 83780 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x10c30>
  9432b8:	04 74 ff 
  9432bb:	62 f2 cd 48 7f c1    	vpermt2pd zmm0,zmm6,zmm1
  9432c1:	62 f1 fd 48 28 fd    	vmovapd zmm7,zmm5
  9432c7:	62 f2 ed 48 7f fc    	vpermt2pd zmm7,zmm2,zmm4
  9432cd:	62 f2 cd 48 7f ec    	vpermt2pd zmm5,zmm6,zmm4
  9432d3:	62 71 fd 48 10 47 04 	vmovupd zmm8,ZMMWORD PTR [rdi+0x100]
  9432da:	62 f1 fd 48 10 4f 05 	vmovupd zmm1,ZMMWORD PTR [rdi+0x140]
  9432e1:	62 51 fd 48 28 c8    	vmovapd zmm9,zmm8
  9432e7:	62 72 ed 48 7f c9    	vpermt2pd zmm9,zmm2,zmm1
  9432ed:	62 72 cd 48 7f c1    	vpermt2pd zmm8,zmm6,zmm1
  9432f3:	62 71 fd 48 10 57 06 	vmovupd zmm10,ZMMWORD PTR [rdi+0x180]
  9432fa:	62 f1 fd 48 10 4f 07 	vmovupd zmm1,ZMMWORD PTR [rdi+0x1c0]
  943301:	62 51 fd 48 28 da    	vmovapd zmm11,zmm10
  943307:	62 72 ed 48 7f d9    	vpermt2pd zmm11,zmm2,zmm1
  94330d:	62 72 cd 48 7f d1    	vpermt2pd zmm10,zmm6,zmm1
  943313:	62 71 fd 48 10 67 08 	vmovupd zmm12,ZMMWORD PTR [rdi+0x200]
  94331a:	62 f1 fd 48 10 4f 09 	vmovupd zmm1,ZMMWORD PTR [rdi+0x240]
  943321:	62 51 fd 48 28 ec    	vmovapd zmm13,zmm12
  943327:	62 72 ed 48 7f e9    	vpermt2pd zmm13,zmm2,zmm1
  94332d:	62 72 cd 48 7f e1    	vpermt2pd zmm12,zmm6,zmm1
  943333:	62 71 fd 48 10 77 0a 	vmovupd zmm14,ZMMWORD PTR [rdi+0x280]
  94333a:	62 f1 fd 48 10 4f 0b 	vmovupd zmm1,ZMMWORD PTR [rdi+0x2c0]
  943341:	62 f2 8d 48 77 d1    	vpermi2pd zmm2,zmm14,zmm1
  943347:	62 72 cd 48 7f f1    	vpermt2pd zmm14,zmm6,zmm1
  94334d:	62 d1 b5 48 58 f5    	vaddpd zmm6,zmm9,zmm13
  943353:	62 71 e5 48 58 fe    	vaddpd zmm15,zmm3,zmm6
  943359:	62 e1 ed 48 58 c7    	vaddpd zmm16,zmm2,zmm7
  94335f:	62 a1 a5 48 58 c8    	vaddpd zmm17,zmm11,zmm16
  943365:	62 b1 85 48 58 c9    	vaddpd zmm1,zmm15,zmm17
  94336b:	62 c1 bd 48 58 d4    	vaddpd zmm18,zmm8,zmm12
  943371:	62 a1 fd 48 58 da    	vaddpd zmm19,zmm0,zmm18
  943377:	62 e1 8d 48 58 e5    	vaddpd zmm20,zmm14,zmm5
  94337d:	62 a1 ad 48 58 ec    	vaddpd zmm21,zmm10,zmm20
  943383:	62 b1 e5 40 58 e5    	vaddpd zmm4,zmm19,zmm21
  943389:	62 e2 fd 48 19 35 05 	vbroadcastsd zmm22,QWORD PTR [rip+0xffffffffff731705]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  943390:	17 73 ff 
  943393:	62 f2 cd 40 bc de    	vfnmadd231pd zmm3,zmm22,zmm6
  943399:	62 d1 bd 48 5c f4    	vsubpd zmm6,zmm8,zmm12
  94339f:	62 72 fd 48 19 05 77 	vbroadcastsd zmm8,QWORD PTR [rip+0xffffffffff731877]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  9433a6:	18 73 ff 
  9433a9:	62 d1 cd 48 59 f0    	vmulpd zmm6,zmm6,zmm8
  9433af:	62 e1 e5 48 58 fe    	vaddpd zmm23,zmm3,zmm6
  9433b5:	62 32 cd 40 bc d8    	vfnmadd231pd zmm11,zmm22,zmm16
  9433bb:	62 f1 8d 48 5c ed    	vsubpd zmm5,zmm14,zmm5
  9433c1:	62 d1 d5 48 59 e8    	vmulpd zmm5,zmm5,zmm8
  9433c7:	62 71 a5 48 58 f5    	vaddpd zmm14,zmm11,zmm5
  9433cd:	62 51 c5 40 5c e6    	vsubpd zmm12,zmm23,zmm14
  9433d3:	62 b2 cd 40 bc c2    	vfnmadd231pd zmm0,zmm22,zmm18
  9433d9:	62 51 b5 48 5c cd    	vsubpd zmm9,zmm9,zmm13
  9433df:	62 51 b5 48 59 e8    	vmulpd zmm13,zmm9,zmm8
  9433e5:	62 c1 fd 48 5c c5    	vsubpd zmm16,zmm0,zmm13
  9433eb:	62 32 dd 40 bc d6    	vfnmadd231pd zmm10,zmm20,zmm22
  9433f1:	62 f1 ed 48 5c d7    	vsubpd zmm2,zmm2,zmm7
  9433f7:	62 d1 ed 48 59 d0    	vmulpd zmm2,zmm2,zmm8
  9433fd:	62 f1 ad 48 5c fa    	vsubpd zmm7,zmm10,zmm2
  943403:	62 71 fd 40 5c cf    	vsubpd zmm9,zmm16,zmm7
  943409:	62 f1 e5 48 5c f6    	vsubpd zmm6,zmm3,zmm6
  94340f:	62 f1 a5 48 5c ed    	vsubpd zmm5,zmm11,zmm5
  943415:	62 71 cd 48 58 c5    	vaddpd zmm8,zmm6,zmm5
  94341b:	62 f1 95 48 58 c0    	vaddpd zmm0,zmm13,zmm0
  943421:	62 d1 ed 48 58 d2    	vaddpd zmm2,zmm2,zmm10
  943427:	62 71 fd 48 58 d2    	vaddpd zmm10,zmm0,zmm2
  94342d:	62 31 85 48 5c d9    	vsubpd zmm11,zmm15,zmm17
  943433:	62 b1 e5 40 5c dd    	vsubpd zmm3,zmm19,zmm21
  943439:	62 51 c5 40 58 f6    	vaddpd zmm14,zmm23,zmm14
  94343f:	62 71 fd 40 58 ff    	vaddpd zmm15,zmm16,zmm7
  943445:	62 f1 cd 48 5c ed    	vsubpd zmm5,zmm6,zmm5
  94344b:	62 e1 fd 48 5c c2    	vsubpd zmm16,zmm0,zmm2
  943451:	62 71 fd 48 10 2d 0d 	vmovupd zmm13,ZMMWORD PTR [rip+0xffffffffff78390d]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  943458:	39 78 ff 
  94345b:	62 f1 fd 48 28 d1    	vmovapd zmm2,zmm1
  943461:	62 d2 95 48 7f d6    	vpermt2pd zmm2,zmm13,zmm14
  943467:	62 e1 fd 48 10 0d 37 	vmovupd zmm17,ZMMWORD PTR [rip+0xffffffffff783937]        # c6da8 <crc32fast::table::CRC32_TABLE+0x9124>
  94346e:	39 78 ff 
  943471:	62 d2 f5 40 7f ce    	vpermt2pd zmm1,zmm17,zmm14
  943477:	62 d1 fd 48 28 fc    	vmovapd zmm7,zmm12
  94347d:	62 f2 95 48 7f fd    	vpermt2pd zmm7,zmm13,zmm5
  943483:	62 72 f5 40 7f e5    	vpermt2pd zmm12,zmm17,zmm5
  943489:	c4 41 09 57 f6       	vxorpd xmm14,xmm14,xmm14
  94348e:	62 d1 fd 48 28 c0    	vmovapd zmm0,zmm8
  943494:	62 d2 95 48 7f c6    	vpermt2pd zmm0,zmm13,zmm14
  94349a:	62 52 f5 40 7f c6    	vpermt2pd zmm8,zmm17,zmm14
  9434a0:	62 d1 fd 48 28 eb    	vmovapd zmm5,zmm11
  9434a6:	62 d2 95 48 7f ee    	vpermt2pd zmm5,zmm13,zmm14
  9434ac:	62 52 f5 40 7f de    	vpermt2pd zmm11,zmm17,zmm14
  9434b2:	62 e1 fd 48 10 15 2c 	vmovupd zmm18,ZMMWORD PTR [rip+0xffffffffff78382c]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  9434b9:	38 78 ff 
  9434bc:	62 f1 fd 48 28 f2    	vmovapd zmm6,zmm2
  9434c2:	62 f2 ed 40 7f f0    	vpermt2pd zmm6,zmm18,zmm0
  9434c8:	62 e1 fd 48 10 1d 56 	vmovupd zmm19,ZMMWORD PTR [rip+0xffffffffff783856]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  9434cf:	38 78 ff 
  9434d2:	62 f2 e5 40 7f d0    	vpermt2pd zmm2,zmm19,zmm0
  9434d8:	62 e1 fd 48 28 e7    	vmovapd zmm20,zmm7
  9434de:	62 e2 ed 40 7f e5    	vpermt2pd zmm20,zmm18,zmm5
  9434e4:	62 f2 e5 40 7f fd    	vpermt2pd zmm7,zmm19,zmm5
  9434ea:	62 f1 fd 48 28 e9    	vmovapd zmm5,zmm1
  9434f0:	62 d2 ed 40 7f e8    	vpermt2pd zmm5,zmm18,zmm8
  9434f6:	62 d2 e5 40 7f c8    	vpermt2pd zmm1,zmm19,zmm8
  9434fc:	62 c1 fd 48 28 ec    	vmovapd zmm21,zmm12
  943502:	62 c2 ed 40 7f eb    	vpermt2pd zmm21,zmm18,zmm11
  943508:	62 52 e5 40 7f e3    	vpermt2pd zmm12,zmm19,zmm11
  94350e:	62 b1 cd 48 14 c4    	vunpcklpd zmm0,zmm6,zmm20
  943514:	62 b1 cd 48 15 f4    	vunpckhpd zmm6,zmm6,zmm20
  94351a:	62 71 ed 48 14 c7    	vunpcklpd zmm8,zmm2,zmm7
  943520:	62 f1 ed 48 15 d7    	vunpckhpd zmm2,zmm2,zmm7
  943526:	62 31 d5 48 14 dd    	vunpcklpd zmm11,zmm5,zmm21
  94352c:	62 b1 d5 48 15 ed    	vunpckhpd zmm5,zmm5,zmm21
  943532:	62 d1 f5 48 14 fc    	vunpcklpd zmm7,zmm1,zmm12
  943538:	62 d1 f5 48 15 cc    	vunpckhpd zmm1,zmm1,zmm12
  94353e:	62 71 fd 48 28 e4    	vmovapd zmm12,zmm4
  943544:	62 52 95 48 7f e7    	vpermt2pd zmm12,zmm13,zmm15
  94354a:	62 d2 f5 40 7f e7    	vpermt2pd zmm4,zmm17,zmm15
  943550:	62 51 fd 48 28 f9    	vmovapd zmm15,zmm9
  943556:	62 32 95 48 7f f8    	vpermt2pd zmm15,zmm13,zmm16
  94355c:	62 32 f5 40 7f c8    	vpermt2pd zmm9,zmm17,zmm16
  943562:	62 c1 fd 48 28 c2    	vmovapd zmm16,zmm10
  943568:	62 c2 95 48 7f c6    	vpermt2pd zmm16,zmm13,zmm14
  94356e:	62 52 f5 40 7f d6    	vpermt2pd zmm10,zmm17,zmm14
  943574:	62 52 e5 48 77 ee    	vpermi2pd zmm13,zmm3,zmm14
  94357a:	62 d2 f5 40 7f de    	vpermt2pd zmm3,zmm17,zmm14
  943580:	62 51 fd 48 28 f4    	vmovapd zmm14,zmm12
  943586:	62 32 ed 40 7f f0    	vpermt2pd zmm14,zmm18,zmm16
  94358c:	62 32 e5 40 7f e0    	vpermt2pd zmm12,zmm19,zmm16
  943592:	62 c1 fd 48 28 c7    	vmovapd zmm16,zmm15
  943598:	62 c2 ed 40 7f c5    	vpermt2pd zmm16,zmm18,zmm13
  94359e:	62 52 e5 40 7f fd    	vpermt2pd zmm15,zmm19,zmm13
  9435a4:	62 71 fd 48 28 ec    	vmovapd zmm13,zmm4
  9435aa:	62 52 ed 40 7f ea    	vpermt2pd zmm13,zmm18,zmm10
  9435b0:	62 d2 e5 40 7f e2    	vpermt2pd zmm4,zmm19,zmm10
  9435b6:	62 e2 b5 48 77 d3    	vpermi2pd zmm18,zmm9,zmm3
  9435bc:	62 72 e5 40 7f cb    	vpermt2pd zmm9,zmm19,zmm3
  9435c2:	62 b1 8d 48 14 d8    	vunpcklpd zmm3,zmm14,zmm16
  9435c8:	62 a1 8d 48 15 c8    	vunpckhpd zmm17,zmm14,zmm16
  9435ce:	62 c1 9d 48 14 df    	vunpcklpd zmm19,zmm12,zmm15
  9435d4:	62 51 9d 48 15 e7    	vunpckhpd zmm12,zmm12,zmm15
  9435da:	62 a1 95 48 14 c2    	vunpcklpd zmm16,zmm13,zmm18
  9435e0:	62 31 95 48 15 fa    	vunpckhpd zmm15,zmm13,zmm18
  9435e6:	62 51 dd 48 15 d1    	vunpckhpd zmm10,zmm4,zmm9
  9435ec:	62 c1 dd 48 14 e1    	vunpcklpd zmm20,zmm4,zmm9
  9435f2:	62 e1 fd 48 10 52 02 	vmovupd zmm18,ZMMWORD PTR [rdx+0x80]
  9435f9:	62 f1 fd 48 10 62 03 	vmovupd zmm4,ZMMWORD PTR [rdx+0xc0]
  943600:	62 e1 fd 48 10 6a 04 	vmovupd zmm21,ZMMWORD PTR [rdx+0x100]
  943607:	62 e1 fd 48 10 72 05 	vmovupd zmm22,ZMMWORD PTR [rdx+0x140]
  94360e:	62 71 fd 48 10 72 06 	vmovupd zmm14,ZMMWORD PTR [rdx+0x180]
  943615:	62 71 fd 48 10 6a 07 	vmovupd zmm13,ZMMWORD PTR [rdx+0x1c0]
  94361c:	62 e1 fd 48 10 7a 08 	vmovupd zmm23,ZMMWORD PTR [rdx+0x200]
  943623:	62 61 fd 48 10 42 09 	vmovupd zmm24,ZMMWORD PTR [rdx+0x240]
  94362a:	62 31 a5 48 59 cf    	vmulpd zmm9,zmm11,zmm23
  943630:	62 12 fd 40 bc c8    	vfnmadd231pd zmm9,zmm16,zmm24
  943636:	62 a1 fd 40 59 c7    	vmulpd zmm16,zmm16,zmm23
  94363c:	62 e1 fd 48 10 7a 0a 	vmovupd zmm23,ZMMWORD PTR [rdx+0x280]
  943643:	62 82 a5 48 b8 c0    	vfmadd231pd zmm16,zmm11,zmm24
  943649:	62 61 fd 48 10 42 0b 	vmovupd zmm24,ZMMWORD PTR [rdx+0x2c0]
  943650:	62 31 bd 48 59 dd    	vmulpd zmm11,zmm8,zmm21
  943656:	62 32 e5 40 bc de    	vfnmadd231pd zmm11,zmm19,zmm22
  94365c:	62 a1 e5 40 59 ed    	vmulpd zmm21,zmm19,zmm21
  943662:	62 61 fd 48 10 4a 0c 	vmovupd zmm25,ZMMWORD PTR [rdx+0x300]
  943669:	62 a2 bd 48 b8 ee    	vfmadd231pd zmm21,zmm8,zmm22
  94366f:	62 71 fd 48 10 42 0d 	vmovupd zmm8,ZMMWORD PTR [rdx+0x340]
  943676:	62 81 c5 48 59 d9    	vmulpd zmm19,zmm7,zmm25
  94367c:	62 c2 dd 40 bc d8    	vfnmadd231pd zmm19,zmm20,zmm8
  943682:	62 81 dd 40 59 e1    	vmulpd zmm20,zmm20,zmm25
  943688:	62 e1 fd 48 10 72 0e 	vmovupd zmm22,ZMMWORD PTR [rdx+0x380]
  94368f:	62 c2 c5 48 b8 e0    	vfmadd231pd zmm20,zmm7,zmm8
  943695:	62 f1 fd 48 10 7a 0f 	vmovupd zmm7,ZMMWORD PTR [rdx+0x3c0]
  94369c:	62 21 cd 48 59 ca    	vmulpd zmm25,zmm6,zmm18
  9436a2:	62 62 f5 40 bc cc    	vfnmadd231pd zmm25,zmm17,zmm4
  9436a8:	62 a1 f5 40 59 d2    	vmulpd zmm18,zmm17,zmm18
  9436ae:	62 51 fd 48 58 c1    	vaddpd zmm8,zmm0,zmm9
  9436b4:	62 e2 cd 48 b8 d4    	vfmadd231pd zmm18,zmm6,zmm4
  9436ba:	62 a1 a5 48 58 cb    	vaddpd zmm17,zmm11,zmm19
  9436c0:	62 21 d5 48 59 d7    	vmulpd zmm26,zmm5,zmm23
  9436c6:	62 02 85 48 bc d0    	vfnmadd231pd zmm26,zmm15,zmm24
  9436cc:	62 31 85 48 59 ff    	vmulpd zmm15,zmm15,zmm23
  9436d2:	62 b1 bd 48 58 e1    	vaddpd zmm4,zmm8,zmm17
  9436d8:	62 12 d5 48 b8 f8    	vfmadd231pd zmm15,zmm5,zmm24
  9436de:	62 91 b5 40 58 f2    	vaddpd zmm6,zmm25,zmm26
  9436e4:	62 d1 ed 48 59 ee    	vmulpd zmm5,zmm2,zmm14
  9436ea:	62 d2 9d 48 bc ed    	vfnmadd231pd zmm5,zmm12,zmm13
  9436f0:	62 51 9d 48 59 e6    	vmulpd zmm12,zmm12,zmm14
  9436f6:	62 31 f5 48 59 f6    	vmulpd zmm14,zmm1,zmm22
  9436fc:	62 72 ad 48 bc f7    	vfnmadd231pd zmm14,zmm10,zmm7
  943702:	62 52 ed 48 b8 e5    	vfmadd231pd zmm12,zmm2,zmm13
  943708:	62 51 d5 48 58 ee    	vaddpd zmm13,zmm5,zmm14
  94370e:	62 d1 cd 48 58 d5    	vaddpd zmm2,zmm6,zmm13
  943714:	62 31 ad 48 59 d6    	vmulpd zmm10,zmm10,zmm22
  94371a:	62 e1 fd 40 58 f3    	vaddpd zmm22,zmm16,zmm3
  943720:	62 72 f5 48 b8 d7    	vfmadd231pd zmm10,zmm1,zmm7
  943726:	62 a1 d5 40 58 fc    	vaddpd zmm23,zmm21,zmm20
  94372c:	62 b1 c5 40 58 ce    	vaddpd zmm1,zmm23,zmm22
  943732:	62 51 fd 48 5c c9    	vsubpd zmm9,zmm0,zmm9
  943738:	62 41 ed 40 58 c7    	vaddpd zmm24,zmm18,zmm15
  94373e:	62 a1 d5 40 5c e4    	vsubpd zmm20,zmm21,zmm20
  943744:	62 c1 9d 48 58 ea    	vaddpd zmm21,zmm12,zmm10
  94374a:	62 91 b5 40 5c c2    	vsubpd zmm0,zmm25,zmm26
  943750:	62 b1 bd 40 58 fd    	vaddpd zmm7,zmm24,zmm21
  943756:	62 51 ed 40 5c ff    	vsubpd zmm15,zmm18,zmm15
  94375c:	62 a1 b5 48 58 d4    	vaddpd zmm18,zmm9,zmm20
  943762:	62 51 9d 48 5c d2    	vsubpd zmm10,zmm12,zmm10
  943768:	62 51 fd 48 58 e7    	vaddpd zmm12,zmm0,zmm15
  94376e:	62 d1 d5 48 5c ee    	vsubpd zmm5,zmm5,zmm14
  943774:	62 72 fd 48 19 35 22 	vbroadcastsd zmm14,QWORD PTR [rip+0xffffffffff731722]        # 74ea0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2350>
  94377b:	17 73 ff 
  94377e:	62 51 9d 48 59 e6    	vmulpd zmm12,zmm12,zmm14
  943784:	62 a1 e5 48 5c c0    	vsubpd zmm16,zmm3,zmm16
  94378a:	62 f1 ad 48 5c dd    	vsubpd zmm3,zmm10,zmm5
  943790:	62 41 e5 48 59 ce    	vmulpd zmm25,zmm3,zmm14
  943796:	62 51 e5 40 5c db    	vsubpd zmm11,zmm19,zmm11
  94379c:	62 81 9d 48 58 d9    	vaddpd zmm19,zmm12,zmm25
  9437a2:	62 f1 85 48 5c d8    	vsubpd zmm3,zmm15,zmm0
  9437a8:	62 b1 ed 40 58 c3    	vaddpd zmm0,zmm18,zmm19
  9437ae:	62 d1 d5 48 58 ea    	vaddpd zmm5,zmm5,zmm10
  9437b4:	62 31 a5 48 58 f8    	vaddpd zmm15,zmm11,zmm16
  9437ba:	62 51 e5 48 59 d6    	vmulpd zmm10,zmm3,zmm14
  9437c0:	62 51 d5 48 59 f6    	vmulpd zmm14,zmm5,zmm14
  9437c6:	62 41 ad 48 5c d6    	vsubpd zmm26,zmm10,zmm14
  9437cc:	62 a1 bd 48 5c c9    	vsubpd zmm17,zmm8,zmm17
  9437d2:	62 01 85 48 58 da    	vaddpd zmm27,zmm15,zmm26
  9437d8:	62 a1 bd 40 5c ed    	vsubpd zmm21,zmm24,zmm21
  9437de:	c5 fd 28 1d 1a 35 73 	vmovapd ymm3,YMMWORD PTR [rip+0xffffffffff73351a]        # 76d00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x41b0>
  9437e5:	ff 
  9437e6:	62 a1 cd 40 5c f7    	vsubpd zmm22,zmm22,zmm23
  9437ec:	62 f1 fd 48 28 e8    	vmovapd zmm5,zmm0
  9437f2:	62 92 e5 48 7f eb    	vpermt2pd zmm5,zmm3,zmm27
  9437f8:	62 e1 95 48 5c fe    	vsubpd zmm23,zmm13,zmm6
  9437fe:	62 b1 f5 40 58 f5    	vaddpd zmm6,zmm17,zmm21
  943804:	62 a1 b5 48 5c e4    	vsubpd zmm20,zmm9,zmm20
  94380a:	62 21 cd 40 58 c7    	vaddpd zmm24,zmm22,zmm23
  943810:	62 51 ad 48 58 f6    	vaddpd zmm14,zmm10,zmm14
  943816:	62 71 fd 48 28 c6    	vmovapd zmm8,zmm6
  94381c:	62 12 e5 48 7f c0    	vpermt2pd zmm8,zmm3,zmm24
  943822:	62 c1 fd 40 5c c3    	vsubpd zmm16,zmm16,zmm11
  943828:	62 51 dd 40 58 ce    	vaddpd zmm9,zmm20,zmm14
  94382e:	62 41 b5 40 5c cc    	vsubpd zmm25,zmm25,zmm12
  943834:	62 01 fd 40 58 e1    	vaddpd zmm28,zmm16,zmm25
  94383a:	62 31 ed 40 5c d3    	vsubpd zmm10,zmm18,zmm19
  943840:	62 51 fd 48 28 d9    	vmovapd zmm11,zmm9
  943846:	62 12 e5 48 7f dc    	vpermt2pd zmm11,zmm3,zmm28
  94384c:	62 81 85 48 5c d2    	vsubpd zmm18,zmm15,zmm26
  943852:	62 71 dd 48 5c ea    	vsubpd zmm13,zmm4,zmm2
  943858:	62 31 f5 40 5c e5    	vsubpd zmm12,zmm17,zmm21
  94385e:	62 e1 f5 48 5c cf    	vsubpd zmm17,zmm1,zmm7
  943864:	62 a1 cd 40 5c df    	vsubpd zmm19,zmm22,zmm23
  94386a:	62 51 fd 48 28 fd    	vmovapd zmm15,zmm13
  943870:	62 32 e5 48 7f f9    	vpermt2pd zmm15,zmm3,zmm17
  943876:	62 51 dd 40 5c f6    	vsubpd zmm14,zmm20,zmm14
  94387c:	62 c1 fd 48 28 e2    	vmovapd zmm20,zmm10
  943882:	62 a2 e5 48 7f e2    	vpermt2pd zmm20,zmm3,zmm18
  943888:	62 81 fd 40 5c c1    	vsubpd zmm16,zmm16,zmm25
  94388e:	62 c1 fd 48 28 ec    	vmovapd zmm21,zmm12
  943894:	62 a2 e5 48 7f eb    	vpermt2pd zmm21,zmm3,zmm19
  94389a:	62 f1 dd 48 58 d2    	vaddpd zmm2,zmm4,zmm2
  9438a0:	62 d1 fd 48 28 e6    	vmovapd zmm4,zmm14
  9438a6:	62 b2 e5 48 7f e0    	vpermt2pd zmm4,zmm3,zmm16
  9438ac:	62 f1 f5 48 58 cf    	vaddpd zmm1,zmm1,zmm7
  9438b2:	62 f2 ed 48 77 d9    	vpermi2pd zmm3,zmm2,zmm1
  9438b8:	62 f1 fd 48 28 3d fe 	vmovapd zmm7,ZMMWORD PTR [rip+0xffffffffff73fefe]        # 837c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x10c70>
  9438bf:	fe 73 ff 
  9438c2:	62 f2 c5 48 7f d1    	vpermt2pd zmm2,zmm7,zmm1
  9438c8:	62 92 c5 48 7f c3    	vpermt2pd zmm0,zmm7,zmm27
  9438ce:	62 92 c5 48 7f f0    	vpermt2pd zmm6,zmm7,zmm24
  9438d4:	62 12 c5 48 7f cc    	vpermt2pd zmm9,zmm7,zmm28
  9438da:	62 32 c5 48 7f e9    	vpermt2pd zmm13,zmm7,zmm17
  9438e0:	62 32 c5 48 7f d2    	vpermt2pd zmm10,zmm7,zmm18
  9438e6:	62 32 c5 48 7f e3    	vpermt2pd zmm12,zmm7,zmm19
  9438ec:	62 32 c5 48 7f f0    	vpermt2pd zmm14,zmm7,zmm16
  9438f2:	62 f1 fd 48 11 16    	vmovupd ZMMWORD PTR [rsi],zmm2
  9438f8:	c5 fd 11 5e 40       	vmovupd YMMWORD PTR [rsi+0x40],ymm3
  9438fd:	62 f1 fd 48 11 86 60 	vmovupd ZMMWORD PTR [rsi+0x60],zmm0
  943904:	00 00 00 
  943907:	c5 fd 11 ae a0 00 00 	vmovupd YMMWORD PTR [rsi+0xa0],ymm5
  94390e:	00 
  94390f:	62 f1 fd 48 11 76 03 	vmovupd ZMMWORD PTR [rsi+0xc0],zmm6
  943916:	c5 7d 11 86 00 01 00 	vmovupd YMMWORD PTR [rsi+0x100],ymm8
  94391d:	00 
  94391e:	62 71 fd 48 11 8e 20 	vmovupd ZMMWORD PTR [rsi+0x120],zmm9
  943925:	01 00 00 
  943928:	c5 7d 11 9e 60 01 00 	vmovupd YMMWORD PTR [rsi+0x160],ymm11
  94392f:	00 
  943930:	62 71 fd 48 11 6e 06 	vmovupd ZMMWORD PTR [rsi+0x180],zmm13
  943937:	c5 7d 11 be c0 01 00 	vmovupd YMMWORD PTR [rsi+0x1c0],ymm15
  94393e:	00 
  94393f:	62 71 fd 48 11 96 e0 	vmovupd ZMMWORD PTR [rsi+0x1e0],zmm10
  943946:	01 00 00 
  943949:	62 e1 fd 28 11 66 11 	vmovupd YMMWORD PTR [rsi+0x220],ymm20
  943950:	62 71 fd 48 11 66 09 	vmovupd ZMMWORD PTR [rsi+0x240],zmm12
  943957:	62 e1 fd 28 11 6e 14 	vmovupd YMMWORD PTR [rsi+0x280],ymm21
  94395e:	62 71 fd 48 11 b6 a0 	vmovupd ZMMWORD PTR [rsi+0x2a0],zmm14
  943965:	02 00 00 
  943968:	c5 fd 11 a6 e0 02 00 	vmovupd YMMWORD PTR [rsi+0x2e0],ymm4
  94396f:	00 
  943970:	c5 f8 77             	vzeroupper
  943973:	c3                   	ret
