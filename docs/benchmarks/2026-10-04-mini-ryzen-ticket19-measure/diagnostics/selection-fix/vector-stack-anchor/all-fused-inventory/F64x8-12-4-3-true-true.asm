
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

000000000096b080 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  96b080:	62 f1 fd 48 10 05 de 	vmovupd zmm0,ZMMWORD PTR [rip+0xffffffffff75bcde]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  96b087:	bc 75 ff 
  96b08a:	62 f1 fd 48 10 0d 54 	vmovupd zmm1,ZMMWORD PTR [rip+0xffffffffff75bc54]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  96b091:	bc 75 ff 
  96b094:	62 f1 fd 48 10 15 8a 	vmovupd zmm2,ZMMWORD PTR [rip+0xffffffffff75bc8a]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  96b09b:	bc 75 ff 
  96b09e:	48 c1 e2 06          	shl    rdx,0x6
  96b0a2:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  96b0a6:	31 d2                	xor    edx,edx
  96b0a8:	62 f1 fd 48 28 1d 0e 	vmovapd zmm3,ZMMWORD PTR [rip+0xffffffffff71b60e]        # 866c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x13b70>
  96b0af:	b6 71 ff 
  96b0b2:	c5 d9 57 e4          	vxorpd xmm4,xmm4,xmm4
  96b0b6:	62 e2 fd 48 19 05 d8 	vbroadcastsd zmm16,QWORD PTR [rip+0xffffffffff7099d8]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  96b0bd:	99 70 ff 
  96b0c0:	62 f1 fd 48 28 35 36 	vmovapd zmm6,ZMMWORD PTR [rip+0xffffffffff71b636]        # 86700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x13bb0>
  96b0c7:	b6 71 ff 
  96b0ca:	62 f2 fd 48 19 3d 4c 	vbroadcastsd zmm7,QWORD PTR [rip+0xffffffffff709b4c]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  96b0d1:	9b 70 ff 
  96b0d4:	62 71 fd 48 28 05 62 	vmovapd zmm8,ZMMWORD PTR [rip+0xffffffffff71b662]        # 86740 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x13bf0>
  96b0db:	b6 71 ff 
  96b0de:	66 90                	xchg   ax,ax
  96b0e0:	c5 7b 12 4c 17 28    	vmovddup xmm9,QWORD PTR [rdi+rdx*1+0x28]
  96b0e6:	c4 63 31 0d 4c 17 20 	vblendpd xmm9,xmm9,XMMWORD PTR [rdi+rdx*1+0x20],0x1
  96b0ed:	01 
  96b0ee:	c5 7d 10 14 17       	vmovupd ymm10,YMMWORD PTR [rdi+rdx*1]
  96b0f3:	c5 7d 10 5c 17 30    	vmovupd ymm11,YMMWORD PTR [rdi+rdx*1+0x30]
  96b0f9:	c5 7d 10 64 17 60    	vmovupd ymm12,YMMWORD PTR [rdi+rdx*1+0x60]
  96b0ff:	c5 7d 10 ac 17 90 00 	vmovupd ymm13,YMMWORD PTR [rdi+rdx*1+0x90]
  96b106:	00 00 
  96b108:	62 53 2d 48 18 c9 02 	vinsertf32x4 zmm9,zmm10,xmm9,0x2
  96b10f:	62 51 fd 48 28 d1    	vmovapd zmm10,zmm9
  96b115:	62 72 e5 48 7f d4    	vpermt2pd zmm10,zmm3,zmm4
  96b11b:	62 72 cd 48 7f cc    	vpermt2pd zmm9,zmm6,zmm4
  96b121:	c5 7b 12 74 17 58    	vmovddup xmm14,QWORD PTR [rdi+rdx*1+0x58]
  96b127:	c4 63 09 0d 74 17 50 	vblendpd xmm14,xmm14,XMMWORD PTR [rdi+rdx*1+0x50],0x1
  96b12e:	01 
  96b12f:	62 53 25 48 18 de 02 	vinsertf32x4 zmm11,zmm11,xmm14,0x2
  96b136:	62 51 fd 48 28 f3    	vmovapd zmm14,zmm11
  96b13c:	62 72 e5 48 7f f4    	vpermt2pd zmm14,zmm3,zmm4
  96b142:	62 72 cd 48 7f dc    	vpermt2pd zmm11,zmm6,zmm4
  96b148:	c5 7b 12 bc 17 88 00 	vmovddup xmm15,QWORD PTR [rdi+rdx*1+0x88]
  96b14f:	00 00 
  96b151:	c4 63 01 0d bc 17 80 	vblendpd xmm15,xmm15,XMMWORD PTR [rdi+rdx*1+0x80],0x1
  96b158:	00 00 00 01 
  96b15c:	62 53 1d 48 18 e7 02 	vinsertf32x4 zmm12,zmm12,xmm15,0x2
  96b163:	62 51 fd 48 28 fc    	vmovapd zmm15,zmm12
  96b169:	62 72 e5 48 7f fc    	vpermt2pd zmm15,zmm3,zmm4
  96b16f:	62 72 cd 48 7f e4    	vpermt2pd zmm12,zmm6,zmm4
  96b175:	c5 fb 12 ac 17 b8 00 	vmovddup xmm5,QWORD PTR [rdi+rdx*1+0xb8]
  96b17c:	00 00 
  96b17e:	c4 e3 51 0d ac 17 b0 	vblendpd xmm5,xmm5,XMMWORD PTR [rdi+rdx*1+0xb0],0x1
  96b185:	00 00 00 01 
  96b189:	62 f3 15 48 18 ed 02 	vinsertf32x4 zmm5,zmm13,xmm5,0x2
  96b190:	62 71 fd 48 28 ed    	vmovapd zmm13,zmm5
  96b196:	62 72 e5 48 7f ec    	vpermt2pd zmm13,zmm3,zmm4
  96b19c:	62 f2 cd 48 7f ec    	vpermt2pd zmm5,zmm6,zmm4
  96b1a2:	62 c1 b5 48 58 cc    	vaddpd zmm17,zmm9,zmm12
  96b1a8:	62 e1 a5 48 58 d5    	vaddpd zmm18,zmm11,zmm5
  96b1ae:	62 a1 f5 40 58 da    	vaddpd zmm19,zmm17,zmm18
  96b1b4:	62 c1 ad 48 58 e7    	vaddpd zmm20,zmm10,zmm15
  96b1ba:	62 c1 8d 48 58 ed    	vaddpd zmm21,zmm14,zmm13
  96b1c0:	62 a1 dd 40 58 f5    	vaddpd zmm22,zmm20,zmm21
  96b1c6:	62 51 b5 48 5c cc    	vsubpd zmm9,zmm9,zmm12
  96b1cc:	62 51 8d 48 5c e5    	vsubpd zmm12,zmm14,zmm13
  96b1d2:	62 51 b5 48 58 ec    	vaddpd zmm13,zmm9,zmm12
  96b1d8:	62 51 ad 48 5c d7    	vsubpd zmm10,zmm10,zmm15
  96b1de:	62 d1 d5 48 5c eb    	vsubpd zmm5,zmm5,zmm11
  96b1e4:	62 51 d5 48 58 da    	vaddpd zmm11,zmm5,zmm10
  96b1ea:	62 31 f5 40 5c f2    	vsubpd zmm14,zmm17,zmm18
  96b1f0:	62 31 dd 40 5c fd    	vsubpd zmm15,zmm20,zmm21
  96b1f6:	62 51 b5 48 5c cc    	vsubpd zmm9,zmm9,zmm12
  96b1fc:	62 f1 ad 48 5c ed    	vsubpd zmm5,zmm10,zmm5
  96b202:	62 e2 fd 48 7f dc    	vpermt2pd zmm19,zmm0,zmm4
  96b208:	62 72 fd 48 7f ec    	vpermt2pd zmm13,zmm0,zmm4
  96b20e:	62 72 fd 48 7f f4    	vpermt2pd zmm14,zmm0,zmm4
  96b214:	62 72 fd 48 7f cc    	vpermt2pd zmm9,zmm0,zmm4
  96b21a:	62 31 fd 48 28 d3    	vmovapd zmm10,zmm19
  96b220:	62 52 f5 48 7f d6    	vpermt2pd zmm10,zmm1,zmm14
  96b226:	62 c2 ed 48 7f de    	vpermt2pd zmm19,zmm2,zmm14
  96b22c:	62 51 fd 48 28 e5    	vmovapd zmm12,zmm13
  96b232:	62 52 f5 48 7f e1    	vpermt2pd zmm12,zmm1,zmm9
  96b238:	62 52 ed 48 7f e9    	vpermt2pd zmm13,zmm2,zmm9
  96b23e:	62 51 e5 40 14 cd    	vunpcklpd zmm9,zmm19,zmm13
  96b244:	62 51 ad 48 14 ec    	vunpcklpd zmm13,zmm10,zmm12
  96b24a:	62 51 ad 48 15 d4    	vunpckhpd zmm10,zmm10,zmm12
  96b250:	62 e2 fd 48 7f f4    	vpermt2pd zmm22,zmm0,zmm4
  96b256:	62 72 fd 48 7f dc    	vpermt2pd zmm11,zmm0,zmm4
  96b25c:	62 72 fd 48 7f fc    	vpermt2pd zmm15,zmm0,zmm4
  96b262:	62 f2 fd 48 7f ec    	vpermt2pd zmm5,zmm0,zmm4
  96b268:	62 31 fd 48 28 e6    	vmovapd zmm12,zmm22
  96b26e:	62 52 f5 48 7f e7    	vpermt2pd zmm12,zmm1,zmm15
  96b274:	62 c2 ed 48 7f f7    	vpermt2pd zmm22,zmm2,zmm15
  96b27a:	62 51 fd 48 28 f3    	vmovapd zmm14,zmm11
  96b280:	62 72 f5 48 7f f5    	vpermt2pd zmm14,zmm1,zmm5
  96b286:	62 72 ed 48 7f dd    	vpermt2pd zmm11,zmm2,zmm5
  96b28c:	62 d1 cd 40 14 eb    	vunpcklpd zmm5,zmm22,zmm11
  96b292:	62 51 9d 48 14 de    	vunpcklpd zmm11,zmm12,zmm14
  96b298:	62 51 9d 48 15 e6    	vunpckhpd zmm12,zmm12,zmm14
  96b29e:	62 71 fd 48 10 71 02 	vmovupd zmm14,ZMMWORD PTR [rcx+0x80]
  96b2a5:	62 71 fd 48 10 79 03 	vmovupd zmm15,ZMMWORD PTR [rcx+0xc0]
  96b2ac:	62 e1 fd 48 10 49 04 	vmovupd zmm17,ZMMWORD PTR [rcx+0x100]
  96b2b3:	62 e1 fd 48 10 51 05 	vmovupd zmm18,ZMMWORD PTR [rcx+0x140]
  96b2ba:	62 c1 ad 48 59 de    	vmulpd zmm19,zmm10,zmm14
  96b2c0:	62 c2 9d 48 bc df    	vfnmadd231pd zmm19,zmm12,zmm15
  96b2c6:	62 a1 b5 48 59 e1    	vmulpd zmm20,zmm9,zmm17
  96b2cc:	62 a2 d5 48 bc e2    	vfnmadd231pd zmm20,zmm5,zmm18
  96b2d2:	62 a1 e5 40 58 ec    	vaddpd zmm21,zmm19,zmm20
  96b2d8:	62 51 9d 48 59 e6    	vmulpd zmm12,zmm12,zmm14
  96b2de:	62 52 ad 48 b8 e7    	vfmadd231pd zmm12,zmm10,zmm15
  96b2e4:	62 b1 d5 48 59 e9    	vmulpd zmm5,zmm5,zmm17
  96b2ea:	62 b2 b5 48 b8 ea    	vfmadd231pd zmm5,zmm9,zmm18
  96b2f0:	62 71 9d 48 58 cd    	vaddpd zmm9,zmm12,zmm5
  96b2f6:	62 31 fd 48 28 d0    	vmovapd zmm10,zmm16
  96b2fc:	62 52 d5 40 ac d5    	vfnmadd213pd zmm10,zmm21,zmm13
  96b302:	62 f1 9d 48 5c ed    	vsubpd zmm5,zmm12,zmm5
  96b308:	62 f1 d5 48 59 ef    	vmulpd zmm5,zmm5,zmm7
  96b30e:	62 71 ad 48 58 e5    	vaddpd zmm12,zmm10,zmm5
  96b314:	62 31 fd 48 28 f0    	vmovapd zmm14,zmm16
  96b31a:	62 52 b5 48 ac f3    	vfnmadd213pd zmm14,zmm9,zmm11
  96b320:	62 31 e5 40 5c fc    	vsubpd zmm15,zmm19,zmm20
  96b326:	62 71 85 48 59 ff    	vmulpd zmm15,zmm15,zmm7
  96b32c:	62 c1 8d 48 5c cf    	vsubpd zmm17,zmm14,zmm15
  96b332:	62 f1 ad 48 5c ed    	vsubpd zmm5,zmm10,zmm5
  96b338:	62 51 8d 48 58 d7    	vaddpd zmm10,zmm14,zmm15
  96b33e:	62 51 a5 48 58 c9    	vaddpd zmm9,zmm11,zmm9
  96b344:	62 31 95 48 58 dd    	vaddpd zmm11,zmm13,zmm21
  96b34a:	62 52 bd 48 7f cb    	vpermt2pd zmm9,zmm8,zmm11
  96b350:	62 71 fd 48 11 0c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1],zmm9
  96b357:	62 c2 bd 48 7f cc    	vpermt2pd zmm17,zmm8,zmm12
  96b35d:	62 e1 fd 48 11 4c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x40],zmm17
  96b364:	01 
  96b365:	62 72 bd 48 7f d5    	vpermt2pd zmm10,zmm8,zmm5
  96b36b:	62 71 fd 48 11 54 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x80],zmm10
  96b372:	02 
  96b373:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  96b37a:	48 39 d0             	cmp    rax,rdx
  96b37d:	0f 85 5d fd ff ff    	jne    96b0e0 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle+0x60>
  96b383:	c5 f8 77             	vzeroupper
  96b386:	c3                   	ret
