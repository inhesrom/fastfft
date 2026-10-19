
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a73f80 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a73f80:	55                   	push   rbp
  a73f81:	48 89 e5             	mov    rbp,rsp
  a73f84:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a73f88:	48 81 ec 80 02 00 00 	sub    rsp,0x280
  a73f8f:	c6 84 24 00 02 00 00 	mov    BYTE PTR [rsp+0x200],0x0
  a73f96:	00 
  a73f97:	48 8d 84 24 00 02 00 	lea    rax,[rsp+0x200]
  a73f9e:	00 
  a73f9f:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  a73fa4:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  a73fa9:	62 f1 7c 48 28 15 4d 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff620c4d]        # 94c00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x220b0>
  a73fb0:	0c 62 ff 
  a73fb3:	62 f1 7c 48 10 2f    	vmovups zmm5,ZMMWORD PTR [rdi]
  a73fb9:	62 71 7c 48 10 57 01 	vmovups zmm10,ZMMWORD PTR [rdi+0x40]
  a73fc0:	62 f1 7c 48 10 47 02 	vmovups zmm0,ZMMWORD PTR [rdi+0x80]
  a73fc7:	62 71 7c 48 10 47 03 	vmovups zmm8,ZMMWORD PTR [rdi+0xc0]
  a73fce:	c5 d8 57 e4          	vxorps xmm4,xmm4,xmm4
  a73fd2:	62 71 7c 48 28 cd    	vmovaps zmm9,zmm5
  a73fd8:	62 72 6d 48 7f cc    	vpermt2ps zmm9,zmm2,zmm4
  a73fde:	62 f1 7c 48 28 1d 58 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff620c58]        # 94c40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x220f0>
  a73fe5:	0c 62 ff 
  a73fe8:	62 f2 65 48 7f ec    	vpermt2ps zmm5,zmm3,zmm4
  a73fee:	62 d1 7c 48 28 fa    	vmovaps zmm7,zmm10
  a73ff4:	62 f2 6d 48 7f fc    	vpermt2ps zmm7,zmm2,zmm4
  a73ffa:	62 72 65 48 7f d4    	vpermt2ps zmm10,zmm3,zmm4
  a74000:	62 71 7c 48 28 f0    	vmovaps zmm14,zmm0
  a74006:	62 72 6d 48 7f f4    	vpermt2ps zmm14,zmm2,zmm4
  a7400c:	62 f2 65 48 7f c4    	vpermt2ps zmm0,zmm3,zmm4
  a74012:	62 d1 7c 48 28 f0    	vmovaps zmm6,zmm8
  a74018:	62 f2 6d 48 7f f4    	vpermt2ps zmm6,zmm2,zmm4
  a7401e:	62 72 65 48 7f c4    	vpermt2ps zmm8,zmm3,zmm4
  a74024:	62 71 7c 48 10 67 04 	vmovups zmm12,ZMMWORD PTR [rdi+0x100]
  a7402b:	62 c1 7c 48 28 cc    	vmovaps zmm17,zmm12
  a74031:	62 e2 6d 48 7f cc    	vpermt2ps zmm17,zmm2,zmm4
  a74037:	62 72 65 48 7f e4    	vpermt2ps zmm12,zmm3,zmm4
  a7403d:	62 e1 7c 48 10 77 05 	vmovups zmm22,ZMMWORD PTR [rdi+0x140]
  a74044:	62 31 7c 48 28 ee    	vmovaps zmm13,zmm22
  a7404a:	62 72 6d 48 7f ec    	vpermt2ps zmm13,zmm2,zmm4
  a74050:	62 e2 65 48 7f f4    	vpermt2ps zmm22,zmm3,zmm4
  a74056:	62 71 7c 48 10 5f 06 	vmovups zmm11,ZMMWORD PTR [rdi+0x180]
  a7405d:	62 41 7c 48 28 c3    	vmovaps zmm24,zmm11
  a74063:	62 62 6d 48 7f c4    	vpermt2ps zmm24,zmm2,zmm4
  a74069:	62 72 65 48 7f dc    	vpermt2ps zmm11,zmm3,zmm4
  a7406f:	62 e1 7c 48 10 67 07 	vmovups zmm20,ZMMWORD PTR [rdi+0x1c0]
  a74076:	62 a1 7c 48 28 dc    	vmovaps zmm19,zmm20
  a7407c:	62 e2 6d 48 7f dc    	vpermt2ps zmm19,zmm2,zmm4
  a74082:	62 e2 65 48 7f e4    	vpermt2ps zmm20,zmm3,zmm4
  a74088:	62 e1 7c 48 10 6f 08 	vmovups zmm21,ZMMWORD PTR [rdi+0x200]
  a7408f:	62 a1 7c 48 28 fd    	vmovaps zmm23,zmm21
  a74095:	62 e2 6d 48 7f fc    	vpermt2ps zmm23,zmm2,zmm4
  a7409b:	62 e2 65 48 7f ec    	vpermt2ps zmm21,zmm3,zmm4
  a740a1:	62 61 7c 48 10 4f 09 	vmovups zmm25,ZMMWORD PTR [rdi+0x240]
  a740a8:	62 11 7c 48 28 f9    	vmovaps zmm15,zmm25
  a740ae:	62 72 6d 48 7f fc    	vpermt2ps zmm15,zmm2,zmm4
  a740b4:	62 62 65 48 7f cc    	vpermt2ps zmm25,zmm3,zmm4
  a740ba:	62 61 7c 48 10 57 0a 	vmovups zmm26,ZMMWORD PTR [rdi+0x280]
  a740c1:	62 01 7c 48 28 da    	vmovaps zmm27,zmm26
  a740c7:	62 62 6d 48 7f dc    	vpermt2ps zmm27,zmm2,zmm4
  a740cd:	62 62 65 48 7f d4    	vpermt2ps zmm26,zmm3,zmm4
  a740d3:	62 61 7c 48 10 67 0b 	vmovups zmm28,ZMMWORD PTR [rdi+0x2c0]
  a740da:	62 f2 1d 40 77 d4    	vpermi2ps zmm2,zmm28,zmm4
  a740e0:	62 62 65 48 7f e4    	vpermt2ps zmm28,zmm3,zmm4
  a740e6:	62 91 34 48 58 c8    	vaddps zmm1,zmm9,zmm24
  a740ec:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm1
  a740f3:	01 
  a740f4:	62 c1 4c 48 58 d7    	vaddps zmm18,zmm6,zmm15
  a740fa:	62 b1 74 48 58 ca    	vaddps zmm1,zmm1,zmm18
  a74100:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm1
  a74107:	04 
  a74108:	62 01 74 40 58 eb    	vaddps zmm29,zmm17,zmm27
  a7410e:	62 61 64 40 58 f7    	vaddps zmm30,zmm19,zmm7
  a74114:	62 91 14 40 58 ce    	vaddps zmm1,zmm29,zmm30
  a7411a:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm1
  a74121:	02 
  a74122:	62 41 44 40 58 fe    	vaddps zmm31,zmm23,zmm14
  a74128:	62 81 74 40 5c cb    	vsubps zmm17,zmm17,zmm27
  a7412e:	62 41 5c 40 58 da    	vaddps zmm27,zmm20,zmm10
  a74134:	62 c1 5c 40 5c e2    	vsubps zmm20,zmm20,zmm10
  a7413a:	62 d1 6c 48 58 cd    	vaddps zmm1,zmm2,zmm13
  a74140:	62 51 44 40 5c f6    	vsubps zmm14,zmm23,zmm14
  a74146:	62 b1 1c 40 58 de    	vaddps zmm3,zmm28,zmm22
  a7414c:	62 a1 1c 40 5c fe    	vsubps zmm23,zmm28,zmm22
  a74152:	62 41 54 48 58 e3    	vaddps zmm28,zmm5,zmm11
  a74158:	62 11 34 48 5c c8    	vsubps zmm9,zmm9,zmm24
  a7415e:	62 01 3c 48 58 c1    	vaddps zmm24,zmm8,zmm25
  a74164:	62 11 3c 48 5c c1    	vsubps zmm8,zmm8,zmm25
  a7416a:	62 81 1c 48 58 f2    	vaddps zmm22,zmm12,zmm26
  a74170:	62 01 1c 48 5c ca    	vsubps zmm25,zmm12,zmm26
  a74176:	62 71 54 40 58 e0    	vaddps zmm12,zmm21,zmm0
  a7417c:	62 b1 44 48 5c fb    	vsubps zmm7,zmm7,zmm19
  a74182:	62 11 44 48 58 d1    	vaddps zmm10,zmm7,zmm25
  a74188:	62 e1 54 40 5c c0    	vsubps zmm16,zmm21,zmm0
  a7418e:	62 71 14 48 5c ea    	vsubps zmm13,zmm13,zmm2
  a74194:	62 b1 14 48 58 d0    	vaddps zmm2,zmm13,zmm16
  a7419a:	62 f1 2c 48 5c c2    	vsubps zmm0,zmm10,zmm2
  a741a0:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm0
  a741a7:	07 
  a741a8:	62 f1 2c 48 58 c2    	vaddps zmm0,zmm10,zmm2
  a741ae:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm0
  a741b5:	06 
  a741b6:	62 b1 74 40 58 d4    	vaddps zmm2,zmm17,zmm20
  a741bc:	62 c1 54 48 5c eb    	vsubps zmm21,zmm5,zmm11
  a741c2:	62 b1 0c 48 58 ef    	vaddps zmm5,zmm14,zmm23
  a741c8:	62 71 04 48 5c fe    	vsubps zmm15,zmm15,zmm6
  a741ce:	62 61 6c 48 58 d5    	vaddps zmm26,zmm2,zmm5
  a741d4:	62 f1 6c 48 5c c5    	vsubps zmm0,zmm2,zmm5
  a741da:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm0
  a741e1:	05 
  a741e2:	62 f1 04 40 58 d1    	vaddps zmm2,zmm31,zmm1
  a741e8:	62 81 14 40 5c de    	vsubps zmm19,zmm29,zmm30
  a741ee:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x80]
  a741f5:	02 
  a741f6:	62 71 54 48 58 d2    	vaddps zmm10,zmm5,zmm2
  a741fc:	62 f1 04 40 5c c9    	vsubps zmm1,zmm31,zmm1
  a74202:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x100]
  a74209:	04 
  a7420a:	62 d1 7c 48 58 f2    	vaddps zmm6,zmm0,zmm10
  a74210:	62 71 7c 48 28 5c 24 	vmovaps zmm11,ZMMWORD PTR [rsp+0x40]
  a74217:	01 
  a74218:	62 21 24 48 5c ea    	vsubps zmm29,zmm11,zmm18
  a7421e:	62 01 4c 40 58 f3    	vaddps zmm30,zmm22,zmm27
  a74224:	62 81 4c 40 5c d3    	vsubps zmm18,zmm22,zmm27
  a7422a:	62 61 1c 48 58 fb    	vaddps zmm31,zmm12,zmm3
  a74230:	62 f1 1c 48 5c db    	vsubps zmm3,zmm12,zmm3
  a74236:	62 71 6c 40 5c db    	vsubps zmm11,zmm18,zmm3
  a7423c:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm11
  a74243:	01 
  a74244:	62 e1 6c 40 58 f3    	vaddps zmm22,zmm18,zmm3
  a7424a:	62 11 1c 40 58 e0    	vaddps zmm12,zmm28,zmm24
  a74250:	62 01 1c 40 5c c0    	vsubps zmm24,zmm28,zmm24
  a74256:	62 61 64 40 58 e1    	vaddps zmm28,zmm19,zmm1
  a7425c:	62 f1 64 40 5c c9    	vsubps zmm1,zmm19,zmm1
  a74262:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm1
  a74269:	03 
  a7426a:	62 41 34 48 58 d8    	vaddps zmm27,zmm9,zmm8
  a74270:	62 51 34 48 5c c8    	vsubps zmm9,zmm9,zmm8
  a74276:	62 81 0c 40 58 df    	vaddps zmm19,zmm30,zmm31
  a7427c:	62 a1 74 40 5c cc    	vsubps zmm17,zmm17,zmm20
  a74282:	62 a1 1c 48 58 e3    	vaddps zmm20,zmm12,zmm19
  a74288:	62 31 0c 48 5c df    	vsubps zmm11,zmm14,zmm23
  a7428e:	62 a1 04 48 58 fd    	vaddps zmm23,zmm15,zmm21
  a74294:	62 51 54 40 5c f7    	vsubps zmm14,zmm21,zmm15
  a7429a:	62 e2 7d 48 18 15 bc 	vbroadcastss zmm18,DWORD PTR [rip+0xffffffffff6011bc]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a742a1:	11 60 ff 
  a742a4:	62 71 34 40 5c ff    	vsubps zmm15,zmm25,zmm7
  a742aa:	62 a1 7c 48 28 ea    	vmovaps zmm21,zmm18
  a742b0:	62 d1 7c 40 5c dd    	vsubps zmm3,zmm16,zmm13
  a742b6:	62 31 7c 48 28 ea    	vmovaps zmm13,zmm18
  a742bc:	62 72 6d 40 ac d0    	vfnmadd213ps zmm10,zmm18,zmm0
  a742c2:	62 41 74 40 58 cb    	vaddps zmm25,zmm17,zmm11
  a742c8:	62 c2 6d 40 ac dc    	vfnmadd213ps zmm19,zmm18,zmm12
  a742ce:	62 11 34 48 58 c1    	vaddps zmm8,zmm9,zmm25
  a742d4:	62 42 6d 40 ac c9    	vfnmadd213ps zmm25,zmm18,zmm9
  a742da:	62 31 7c 48 28 e2    	vmovaps zmm12,zmm18
  a742e0:	62 b1 7c 48 28 ca    	vmovaps zmm1,zmm18
  a742e6:	62 f1 04 48 58 fb    	vaddps zmm7,zmm15,zmm3
  a742ec:	62 c2 45 48 ac d6    	vfnmadd213ps zmm18,zmm7,zmm14
  a742f2:	62 f1 0c 48 58 ff    	vaddps zmm7,zmm14,zmm7
  a742f8:	62 01 0c 40 5c ff    	vsubps zmm31,zmm30,zmm31
  a742fe:	62 82 2d 40 ac eb    	vfnmadd213ps zmm21,zmm26,zmm27
  a74304:	62 f1 54 48 5c ea    	vsubps zmm5,zmm5,zmm2
  a7430a:	62 f2 7d 48 18 05 c0 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff600fc0]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a74311:	0f 60 ff 
  a74314:	62 71 7c 48 59 4c 24 	vmulps zmm9,zmm0,ZMMWORD PTR [rsp+0x1c0]
  a7431b:	07 
  a7431c:	62 31 34 48 58 f5    	vaddps zmm14,zmm9,zmm21
  a74322:	62 c1 54 40 5c e9    	vsubps zmm21,zmm21,zmm9
  a74328:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x180]
  a7432f:	06 
  a74330:	62 32 6d 48 ac ef    	vfnmadd213ps zmm13,zmm2,zmm23
  a74336:	62 61 7c 48 59 74 24 	vmulps zmm30,zmm0,ZMMWORD PTR [rsp+0x140]
  a7433d:	05 
  a7433e:	62 11 14 48 5c ce    	vsubps zmm9,zmm13,zmm30
  a74344:	62 01 14 48 58 f6    	vaddps zmm30,zmm13,zmm30
  a7434a:	62 12 1d 40 ac e5    	vfnmadd213ps zmm12,zmm28,zmm29
  a74350:	62 01 14 40 58 e4    	vaddps zmm28,zmm29,zmm28
  a74356:	62 92 4d 40 ac c8    	vfnmadd213ps zmm1,zmm22,zmm24
  a7435c:	62 31 3c 40 58 ee    	vaddps zmm13,zmm24,zmm22
  a74362:	62 f1 04 48 5c db    	vsubps zmm3,zmm15,zmm3
  a74368:	62 51 74 40 5c fb    	vsubps zmm15,zmm17,zmm11
  a7436e:	62 e1 7c 48 59 74 24 	vmulps zmm22,zmm0,ZMMWORD PTR [rsp+0x40]
  a74375:	01 
  a74376:	62 e1 7c 48 59 44 24 	vmulps zmm16,zmm0,ZMMWORD PTR [rsp+0xc0]
  a7437d:	03 
  a7437e:	62 e1 04 40 59 c8    	vmulps zmm17,zmm31,zmm0
  a74384:	62 f1 54 48 59 e8    	vmulps zmm5,zmm5,zmm0
  a7438a:	62 f1 64 48 59 d8    	vmulps zmm3,zmm3,zmm0
  a74390:	62 61 04 48 59 c0    	vmulps zmm24,zmm15,zmm0
  a74396:	62 21 2c 48 58 e9    	vaddps zmm29,zmm10,zmm17
  a7439c:	62 31 2c 48 5c d1    	vsubps zmm10,zmm10,zmm17
  a743a2:	62 e1 64 40 5c cd    	vsubps zmm17,zmm19,zmm5
  a743a8:	62 21 54 48 58 fb    	vaddps zmm31,zmm5,zmm19
  a743ae:	62 91 24 40 58 ea    	vaddps zmm5,zmm27,zmm26
  a743b4:	62 31 1c 48 5c de    	vsubps zmm11,zmm12,zmm22
  a743ba:	62 f1 44 40 58 c2    	vaddps zmm0,zmm23,zmm2
  a743c0:	62 71 7c 40 58 f9    	vaddps zmm15,zmm16,zmm1
  a743c6:	62 31 1c 48 58 e6    	vaddps zmm12,zmm12,zmm22
  a743cc:	62 01 64 48 58 d1    	vaddps zmm26,zmm3,zmm25
  a743d2:	62 a1 74 48 5c f8    	vsubps zmm23,zmm1,zmm16
  a743d8:	62 81 6c 40 5c c0    	vsubps zmm16,zmm18,zmm24
  a743de:	62 f1 34 40 5c cb    	vsubps zmm1,zmm25,zmm3
  a743e4:	62 01 6c 40 58 c8    	vaddps zmm25,zmm18,zmm24
  a743ea:	62 e1 7c 48 28 1d 8c 	vmovaps zmm19,ZMMWORD PTR [rip+0xffffffffff652b8c]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a743f1:	2b 65 ff 
  a743f4:	62 d2 65 40 7f f2    	vpermt2ps zmm6,zmm19,zmm10
  a743fa:	62 72 65 40 7f f5    	vpermt2ps zmm14,zmm19,zmm5
  a74400:	62 52 65 40 7f dc    	vpermt2ps zmm11,zmm19,zmm12
  a74406:	62 72 65 40 7f c1    	vpermt2ps zmm8,zmm19,zmm1
  a7440c:	62 62 65 40 7f ec    	vpermt2ps zmm29,zmm19,zmm4
  a74412:	62 e2 65 40 7f ec    	vpermt2ps zmm21,zmm19,zmm4
  a74418:	62 62 65 40 7f e4    	vpermt2ps zmm28,zmm19,zmm4
  a7441e:	62 62 65 40 7f d4    	vpermt2ps zmm26,zmm19,zmm4
  a74424:	62 e1 7c 48 28 15 d2 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff652ad2]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a7442b:	2a 65 ff 
  a7442e:	62 f1 7c 48 28 ce    	vmovaps zmm1,zmm6
  a74434:	62 92 6d 40 7f cd    	vpermt2ps zmm1,zmm18,zmm29
  a7443a:	62 e1 7c 48 28 35 fc 	vmovaps zmm22,ZMMWORD PTR [rip+0xffffffffff652afc]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a74441:	2a 65 ff 
  a74444:	62 92 4d 40 7f f5    	vpermt2ps zmm6,zmm22,zmm29
  a7444a:	62 d1 7c 48 28 ee    	vmovaps zmm5,zmm14
  a74450:	62 b2 6d 40 7f ed    	vpermt2ps zmm5,zmm18,zmm21
  a74456:	62 32 4d 40 7f f5    	vpermt2ps zmm14,zmm22,zmm21
  a7445c:	62 51 7c 48 28 d3    	vmovaps zmm10,zmm11
  a74462:	62 12 6d 40 7f d4    	vpermt2ps zmm10,zmm18,zmm28
  a74468:	62 12 4d 40 7f dc    	vpermt2ps zmm11,zmm22,zmm28
  a7446e:	62 51 7c 48 28 e0    	vmovaps zmm12,zmm8
  a74474:	62 12 6d 40 7f e2    	vpermt2ps zmm12,zmm18,zmm26
  a7447a:	62 12 4d 40 7f c2    	vpermt2ps zmm8,zmm22,zmm26
  a74480:	62 d1 f5 48 14 da    	vunpcklpd zmm3,zmm1,zmm10
  a74486:	62 41 f5 48 15 d2    	vunpckhpd zmm26,zmm1,zmm10
  a7448c:	62 d1 d5 48 14 cc    	vunpcklpd zmm1,zmm5,zmm12
  a74492:	62 51 d5 48 15 e4    	vunpckhpd zmm12,zmm5,zmm12
  a74498:	62 d1 cd 48 14 eb    	vunpcklpd zmm5,zmm6,zmm11
  a7449e:	62 41 cd 48 15 db    	vunpckhpd zmm27,zmm6,zmm11
  a744a4:	62 51 8d 48 14 d8    	vunpcklpd zmm11,zmm14,zmm8
  a744aa:	62 c1 8d 48 15 e8    	vunpckhpd zmm21,zmm14,zmm8
  a744b0:	62 71 7c 48 28 05 46 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff652946]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a744b7:	29 65 ff 
  a744ba:	62 f1 7c 48 28 d3    	vmovaps zmm2,zmm3
  a744c0:	62 f2 3d 48 7f d1    	vpermt2ps zmm2,zmm8,zmm1
  a744c6:	62 61 7c 48 28 05 70 	vmovaps zmm24,ZMMWORD PTR [rip+0xffffffffff652970]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a744cd:	29 65 ff 
  a744d0:	62 f2 3d 40 7f d9    	vpermt2ps zmm3,zmm24,zmm1
  a744d6:	62 11 7c 48 28 d2    	vmovaps zmm10,zmm26
  a744dc:	62 52 3d 48 7f d4    	vpermt2ps zmm10,zmm8,zmm12
  a744e2:	62 42 3d 40 7f d4    	vpermt2ps zmm26,zmm24,zmm12
  a744e8:	62 71 7c 48 28 f5    	vmovaps zmm14,zmm5
  a744ee:	62 52 3d 48 7f f3    	vpermt2ps zmm14,zmm8,zmm11
  a744f4:	62 d2 3d 40 7f eb    	vpermt2ps zmm5,zmm24,zmm11
  a744fa:	62 11 7c 48 28 db    	vmovaps zmm11,zmm27
  a74500:	62 32 3d 48 7f dd    	vpermt2ps zmm11,zmm8,zmm21
  a74506:	62 22 3d 40 7f dd    	vpermt2ps zmm27,zmm24,zmm21
  a7450c:	62 82 65 40 7f e7    	vpermt2ps zmm20,zmm19,zmm31
  a74512:	62 72 65 40 7f c8    	vpermt2ps zmm9,zmm19,zmm0
  a74518:	62 32 65 40 7f ff    	vpermt2ps zmm15,zmm19,zmm23
  a7451e:	62 92 65 40 7f f9    	vpermt2ps zmm7,zmm19,zmm25
  a74524:	62 e2 65 40 7f cc    	vpermt2ps zmm17,zmm19,zmm4
  a7452a:	62 62 65 40 7f f4    	vpermt2ps zmm30,zmm19,zmm4
  a74530:	62 72 65 40 7f ec    	vpermt2ps zmm13,zmm19,zmm4
  a74536:	62 e2 65 40 7f c4    	vpermt2ps zmm16,zmm19,zmm4
  a7453c:	62 b1 7c 48 28 c4    	vmovaps zmm0,zmm20
  a74542:	62 b2 6d 40 7f c1    	vpermt2ps zmm0,zmm18,zmm17
  a74548:	62 a2 4d 40 7f e1    	vpermt2ps zmm20,zmm22,zmm17
  a7454e:	62 d1 7c 48 28 c9    	vmovaps zmm1,zmm9
  a74554:	62 92 6d 40 7f ce    	vpermt2ps zmm1,zmm18,zmm30
  a7455a:	62 12 4d 40 7f ce    	vpermt2ps zmm9,zmm22,zmm30
  a74560:	62 d1 7c 48 28 e7    	vmovaps zmm4,zmm15
  a74566:	62 d2 6d 40 7f e5    	vpermt2ps zmm4,zmm18,zmm13
  a7456c:	62 52 4d 40 7f fd    	vpermt2ps zmm15,zmm22,zmm13
  a74572:	62 a2 45 48 77 d0    	vpermi2ps zmm18,zmm7,zmm16
  a74578:	62 b2 4d 40 7f f8    	vpermt2ps zmm7,zmm22,zmm16
  a7457e:	62 e1 fd 48 14 cc    	vunpcklpd zmm17,zmm0,zmm4
  a74584:	62 71 fd 48 15 ec    	vunpckhpd zmm13,zmm0,zmm4
  a7458a:	62 b1 f5 48 14 e2    	vunpcklpd zmm4,zmm1,zmm18
  a74590:	62 b1 f5 48 15 ca    	vunpckhpd zmm1,zmm1,zmm18
  a74596:	62 c1 dd 40 14 c7    	vunpcklpd zmm16,zmm20,zmm15
  a7459c:	62 51 dd 40 15 e7    	vunpckhpd zmm12,zmm20,zmm15
  a745a2:	62 f1 b5 48 14 f7    	vunpcklpd zmm6,zmm9,zmm7
  a745a8:	62 f1 b5 48 15 ff    	vunpckhpd zmm7,zmm9,zmm7
  a745ae:	62 b1 7c 48 28 c1    	vmovaps zmm0,zmm17
  a745b4:	62 f2 3d 48 7f c4    	vpermt2ps zmm0,zmm8,zmm4
  a745ba:	62 e2 3d 40 7f cc    	vpermt2ps zmm17,zmm24,zmm4
  a745c0:	62 d1 7c 48 28 e5    	vmovaps zmm4,zmm13
  a745c6:	62 f2 3d 48 7f e1    	vpermt2ps zmm4,zmm8,zmm1
  a745cc:	62 72 3d 40 7f e9    	vpermt2ps zmm13,zmm24,zmm1
  a745d2:	62 a1 7c 48 28 d0    	vmovaps zmm18,zmm16
  a745d8:	62 e2 3d 48 7f d6    	vpermt2ps zmm18,zmm8,zmm6
  a745de:	62 e2 3d 40 7f c6    	vpermt2ps zmm16,zmm24,zmm6
  a745e4:	62 72 1d 48 77 c7    	vpermi2ps zmm8,zmm12,zmm7
  a745ea:	62 72 3d 40 7f e7    	vpermt2ps zmm12,zmm24,zmm7
  a745f0:	62 e1 7c 48 10 5a 02 	vmovups zmm19,ZMMWORD PTR [rdx+0x80]
  a745f7:	62 f1 7c 48 10 4a 03 	vmovups zmm1,ZMMWORD PTR [rdx+0xc0]
  a745fe:	62 f1 7c 48 10 72 04 	vmovups zmm6,ZMMWORD PTR [rdx+0x100]
  a74605:	62 e1 7c 48 10 62 05 	vmovups zmm20,ZMMWORD PTR [rdx+0x140]
  a7460c:	62 71 7c 48 10 7a 06 	vmovups zmm15,ZMMWORD PTR [rdx+0x180]
  a74613:	62 71 7c 48 10 4a 07 	vmovups zmm9,ZMMWORD PTR [rdx+0x1c0]
  a7461a:	62 e1 7c 48 10 6a 08 	vmovups zmm21,ZMMWORD PTR [rdx+0x200]
  a74621:	62 e1 7c 48 10 72 09 	vmovups zmm22,ZMMWORD PTR [rdx+0x240]
  a74628:	62 b1 0c 48 59 fd    	vmulps zmm7,zmm14,zmm21
  a7462e:	62 b2 6d 40 bc fe    	vfnmadd231ps zmm7,zmm18,zmm22
  a74634:	62 a1 6c 40 59 d5    	vmulps zmm18,zmm18,zmm21
  a7463a:	62 e1 7c 48 10 6a 0a 	vmovups zmm21,ZMMWORD PTR [rdx+0x280]
  a74641:	62 c2 4d 40 b8 d6    	vfmadd231ps zmm18,zmm22,zmm14
  a74647:	62 e1 7c 48 10 72 0b 	vmovups zmm22,ZMMWORD PTR [rdx+0x2c0]
  a7464e:	62 71 2c 48 59 f6    	vmulps zmm14,zmm10,zmm6
  a74654:	62 32 5d 48 bc f4    	vfnmadd231ps zmm14,zmm4,zmm20
  a7465a:	62 e1 5c 48 59 fe    	vmulps zmm23,zmm4,zmm6
  a74660:	62 f1 7c 48 10 62 0c 	vmovups zmm4,ZMMWORD PTR [rdx+0x300]
  a74667:	62 c2 5d 40 b8 fa    	vfmadd231ps zmm23,zmm20,zmm10
  a7466d:	62 f1 7c 48 10 72 0d 	vmovups zmm6,ZMMWORD PTR [rdx+0x340]
  a74674:	62 e1 24 48 59 e4    	vmulps zmm20,zmm11,zmm4
  a7467a:	62 e2 3d 48 bc e6    	vfnmadd231ps zmm20,zmm8,zmm6
  a74680:	62 61 3c 48 59 c4    	vmulps zmm24,zmm8,zmm4
  a74686:	62 61 7c 48 10 4a 0e 	vmovups zmm25,ZMMWORD PTR [rdx+0x380]
  a7468d:	62 42 4d 48 b8 c3    	vfmadd231ps zmm24,zmm6,zmm11
  a74693:	62 71 7c 48 10 5a 0f 	vmovups zmm11,ZMMWORD PTR [rdx+0x3c0]
  a7469a:	62 21 64 48 59 e3    	vmulps zmm28,zmm3,zmm19
  a746a0:	62 62 75 40 bc e1    	vfnmadd231ps zmm28,zmm17,zmm1
  a746a6:	62 a1 74 40 59 cb    	vmulps zmm17,zmm17,zmm19
  a746ac:	62 71 6c 48 58 c7    	vaddps zmm8,zmm2,zmm7
  a746b2:	62 e2 75 48 b8 cb    	vfmadd231ps zmm17,zmm1,zmm3
  a746b8:	62 31 0c 48 58 d4    	vaddps zmm10,zmm14,zmm20
  a746be:	62 a1 54 48 59 dd    	vmulps zmm19,zmm5,zmm21
  a746c4:	62 a2 7d 40 bc de    	vfnmadd231ps zmm19,zmm16,zmm22
  a746ca:	62 a1 7c 40 59 c5    	vmulps zmm16,zmm16,zmm21
  a746d0:	62 d1 3c 48 58 ca    	vaddps zmm1,zmm8,zmm10
  a746d6:	62 e2 4d 40 b8 c5    	vfmadd231ps zmm16,zmm22,zmm5
  a746dc:	62 b1 1c 40 58 f3    	vaddps zmm6,zmm28,zmm19
  a746e2:	62 d1 2c 40 59 ef    	vmulps zmm5,zmm26,zmm15
  a746e8:	62 d2 15 48 bc e9    	vfnmadd231ps zmm5,zmm13,zmm9
  a746ee:	62 51 14 48 59 ef    	vmulps zmm13,zmm13,zmm15
  a746f4:	62 11 24 40 59 f9    	vmulps zmm15,zmm27,zmm25
  a746fa:	62 52 1d 48 bc fb    	vfnmadd231ps zmm15,zmm12,zmm11
  a74700:	62 12 35 48 b8 ea    	vfmadd231ps zmm13,zmm9,zmm26
  a74706:	62 51 54 48 58 cf    	vaddps zmm9,zmm5,zmm15
  a7470c:	62 d1 4c 48 58 e1    	vaddps zmm4,zmm6,zmm9
  a74712:	62 11 1c 48 59 e1    	vmulps zmm12,zmm12,zmm25
  a74718:	62 e1 6c 40 58 e8    	vaddps zmm21,zmm18,zmm0
  a7471e:	62 12 25 48 b8 e3    	vfmadd231ps zmm12,zmm11,zmm27
  a74724:	62 11 44 40 58 d8    	vaddps zmm11,zmm23,zmm24
  a7472a:	62 b1 24 48 58 dd    	vaddps zmm3,zmm11,zmm21
  a74730:	62 e1 6c 48 5c f7    	vsubps zmm22,zmm2,zmm7
  a74736:	62 b1 74 40 58 d0    	vaddps zmm2,zmm17,zmm16
  a7473c:	62 81 44 40 5c f8    	vsubps zmm23,zmm23,zmm24
  a74742:	62 41 14 48 58 c4    	vaddps zmm24,zmm13,zmm12
  a74748:	62 a1 1c 40 5c db    	vsubps zmm19,zmm28,zmm19
  a7474e:	62 91 6c 48 58 f8    	vaddps zmm7,zmm2,zmm24
  a74754:	62 a1 74 40 5c c0    	vsubps zmm16,zmm17,zmm16
  a7475a:	62 a1 4c 40 58 cf    	vaddps zmm17,zmm22,zmm23
  a74760:	62 51 14 48 5c e4    	vsubps zmm12,zmm13,zmm12
  a74766:	62 31 64 40 58 e8    	vaddps zmm13,zmm19,zmm16
  a7476c:	62 d1 54 48 5c ef    	vsubps zmm5,zmm5,zmm15
  a74772:	62 72 7d 48 18 3d 20 	vbroadcastss zmm15,DWORD PTR [rip+0xffffffffff600c20]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a74779:	0c 60 ff 
  a7477c:	62 51 14 48 59 ef    	vmulps zmm13,zmm13,zmm15
  a74782:	62 a1 7c 48 5c d2    	vsubps zmm18,zmm0,zmm18
  a74788:	62 f1 1c 48 5c c5    	vsubps zmm0,zmm12,zmm5
  a7478e:	62 41 7c 48 59 cf    	vmulps zmm25,zmm0,zmm15
  a74794:	62 51 5c 40 5c f6    	vsubps zmm14,zmm20,zmm14
  a7479a:	62 81 14 48 58 e1    	vaddps zmm20,zmm13,zmm25
  a747a0:	62 a1 7c 40 5c c3    	vsubps zmm16,zmm16,zmm19
  a747a6:	62 b1 74 40 58 c4    	vaddps zmm0,zmm17,zmm20
  a747ac:	62 d1 54 48 58 ec    	vaddps zmm5,zmm5,zmm12
  a747b2:	62 31 0c 48 58 e2    	vaddps zmm12,zmm14,zmm18
  a747b8:	62 c1 7c 40 59 c7    	vmulps zmm16,zmm16,zmm15
  a747be:	62 51 54 48 59 ff    	vmulps zmm15,zmm5,zmm15
  a747c4:	62 c1 7c 40 5c df    	vsubps zmm19,zmm16,zmm15
  a747ca:	62 41 3c 48 5c d2    	vsubps zmm26,zmm8,zmm10
  a747d0:	62 21 1c 48 58 db    	vaddps zmm27,zmm12,zmm19
  a747d6:	62 01 6c 48 5c c0    	vsubps zmm24,zmm2,zmm24
  a747dc:	c5 fc 28 15 5c 24 60 	vmovaps ymm2,YMMWORD PTR [rip+0xffffffffff60245c]        # 76c40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x40f0>
  a747e3:	ff 
  a747e4:	62 c1 54 40 5c eb    	vsubps zmm21,zmm21,zmm11
  a747ea:	62 f1 7c 48 28 e8    	vmovaps zmm5,zmm0
  a747f0:	62 92 6d 48 7f eb    	vpermt2ps zmm5,zmm2,zmm27
  a747f6:	62 61 34 48 5c e6    	vsubps zmm28,zmm9,zmm6
  a747fc:	62 91 2c 40 58 f0    	vaddps zmm6,zmm26,zmm24
  a74802:	62 a1 4c 40 5c f7    	vsubps zmm22,zmm22,zmm23
  a74808:	62 81 54 40 58 fc    	vaddps zmm23,zmm21,zmm28
  a7480e:	62 c1 7c 40 58 c7    	vaddps zmm16,zmm16,zmm15
  a74814:	62 71 7c 48 28 c6    	vmovaps zmm8,zmm6
  a7481a:	62 32 6d 48 7f c7    	vpermt2ps zmm8,zmm2,zmm23
  a74820:	62 c1 6c 40 5c d6    	vsubps zmm18,zmm18,zmm14
  a74826:	62 31 4c 40 58 c8    	vaddps zmm9,zmm22,zmm16
  a7482c:	62 41 34 40 5c cd    	vsubps zmm25,zmm25,zmm13
  a74832:	62 01 6c 40 58 e9    	vaddps zmm29,zmm18,zmm25
  a74838:	62 31 74 40 5c d4    	vsubps zmm10,zmm17,zmm20
  a7483e:	62 51 7c 48 28 d9    	vmovaps zmm11,zmm9
  a74844:	62 12 6d 48 7f dd    	vpermt2ps zmm11,zmm2,zmm29
  a7484a:	62 a1 1c 48 5c cb    	vsubps zmm17,zmm12,zmm19
  a74850:	62 71 74 48 5c ec    	vsubps zmm13,zmm1,zmm4
  a74856:	62 11 2c 40 5c e0    	vsubps zmm12,zmm26,zmm24
  a7485c:	62 e1 64 48 5c df    	vsubps zmm19,zmm3,zmm7
  a74862:	62 81 54 40 5c e4    	vsubps zmm20,zmm21,zmm28
  a74868:	62 51 7c 48 28 fd    	vmovaps zmm15,zmm13
  a7486e:	62 32 6d 48 7f fb    	vpermt2ps zmm15,zmm2,zmm19
  a74874:	62 31 4c 40 5c f0    	vsubps zmm14,zmm22,zmm16
  a7487a:	62 c1 7c 48 28 c2    	vmovaps zmm16,zmm10
  a74880:	62 a2 6d 48 7f c1    	vpermt2ps zmm16,zmm2,zmm17
  a74886:	62 81 6c 40 5c d1    	vsubps zmm18,zmm18,zmm25
  a7488c:	62 c1 7c 48 28 ec    	vmovaps zmm21,zmm12
  a74892:	62 a2 6d 48 7f ec    	vpermt2ps zmm21,zmm2,zmm20
  a74898:	62 f1 74 48 58 cc    	vaddps zmm1,zmm1,zmm4
  a7489e:	62 d1 7c 48 28 e6    	vmovaps zmm4,zmm14
  a748a4:	62 b2 6d 48 7f e2    	vpermt2ps zmm4,zmm2,zmm18
  a748aa:	62 f1 64 48 58 df    	vaddps zmm3,zmm3,zmm7
  a748b0:	62 f2 75 48 77 d3    	vpermi2ps zmm2,zmm1,zmm3
  a748b6:	62 f1 7c 48 28 3d c0 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff6203c0]        # 94c80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x22130>
  a748bd:	03 62 ff 
  a748c0:	62 f2 45 48 7f cb    	vpermt2ps zmm1,zmm7,zmm3
  a748c6:	62 92 45 48 7f c3    	vpermt2ps zmm0,zmm7,zmm27
  a748cc:	62 b2 45 48 7f f7    	vpermt2ps zmm6,zmm7,zmm23
  a748d2:	62 12 45 48 7f cd    	vpermt2ps zmm9,zmm7,zmm29
  a748d8:	62 32 45 48 7f eb    	vpermt2ps zmm13,zmm7,zmm19
  a748de:	62 32 45 48 7f d1    	vpermt2ps zmm10,zmm7,zmm17
  a748e4:	62 32 45 48 7f e4    	vpermt2ps zmm12,zmm7,zmm20
  a748ea:	62 32 45 48 7f f2    	vpermt2ps zmm14,zmm7,zmm18
  a748f0:	62 f1 7c 48 11 0e    	vmovups ZMMWORD PTR [rsi],zmm1
  a748f6:	c5 fc 11 56 40       	vmovups YMMWORD PTR [rsi+0x40],ymm2
  a748fb:	62 f1 7c 48 11 86 60 	vmovups ZMMWORD PTR [rsi+0x60],zmm0
  a74902:	00 00 00 
  a74905:	c5 fc 11 ae a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm5
  a7490c:	00 
  a7490d:	62 f1 7c 48 11 76 03 	vmovups ZMMWORD PTR [rsi+0xc0],zmm6
  a74914:	c5 7c 11 86 00 01 00 	vmovups YMMWORD PTR [rsi+0x100],ymm8
  a7491b:	00 
  a7491c:	62 71 7c 48 11 8e 20 	vmovups ZMMWORD PTR [rsi+0x120],zmm9
  a74923:	01 00 00 
  a74926:	c5 7c 11 9e 60 01 00 	vmovups YMMWORD PTR [rsi+0x160],ymm11
  a7492d:	00 
  a7492e:	62 71 7c 48 11 6e 06 	vmovups ZMMWORD PTR [rsi+0x180],zmm13
  a74935:	c5 7c 11 be c0 01 00 	vmovups YMMWORD PTR [rsi+0x1c0],ymm15
  a7493c:	00 
  a7493d:	62 71 7c 48 11 96 e0 	vmovups ZMMWORD PTR [rsi+0x1e0],zmm10
  a74944:	01 00 00 
  a74947:	62 e1 7c 28 11 46 11 	vmovups YMMWORD PTR [rsi+0x220],ymm16
  a7494e:	62 71 7c 48 11 66 09 	vmovups ZMMWORD PTR [rsi+0x240],zmm12
  a74955:	62 e1 7c 28 11 6e 14 	vmovups YMMWORD PTR [rsi+0x280],ymm21
  a7495c:	62 71 7c 48 11 b6 a0 	vmovups ZMMWORD PTR [rsi+0x2a0],zmm14
  a74963:	02 00 00 
  a74966:	c5 fc 11 a6 e0 02 00 	vmovups YMMWORD PTR [rsi+0x2e0],ymm4
  a7496d:	00 
  a7496e:	48 89 ec             	mov    rsp,rbp
  a74971:	5d                   	pop    rbp
  a74972:	c5 f8 77             	vzeroupper
  a74975:	c3                   	ret
