
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000944f40 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  944f40:	62 f1 fd 48 10 05 1e 	vmovupd zmm0,ZMMWORD PTR [rip+0xffffffffff781e1e]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  944f47:	1e 78 ff 
  944f4a:	62 f1 fd 48 10 0d 94 	vmovupd zmm1,ZMMWORD PTR [rip+0xffffffffff781d94]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  944f51:	1d 78 ff 
  944f54:	62 f1 fd 48 10 15 ca 	vmovupd zmm2,ZMMWORD PTR [rip+0xffffffffff781dca]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  944f5b:	1d 78 ff 
  944f5e:	48 c1 e2 05          	shl    rdx,0x5
  944f62:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  944f66:	31 d2                	xor    edx,edx
  944f68:	62 f1 fd 48 28 1d 4e 	vmovapd zmm3,ZMMWORD PTR [rip+0xffffffffff73eb4e]        # 83ac0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x10f70>
  944f6f:	eb 73 ff 
  944f72:	c5 d9 57 e4          	vxorpd xmm4,xmm4,xmm4
  944f76:	62 f1 fd 48 28 2d 80 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff73eb80]        # 83b00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x10fb0>
  944f7d:	eb 73 ff 
  944f80:	62 f2 fd 48 19 35 0e 	vbroadcastsd zmm6,QWORD PTR [rip+0xffffffffff72fb0e]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  944f87:	fb 72 ff 
  944f8a:	62 f2 fd 48 19 3d 8c 	vbroadcastsd zmm7,QWORD PTR [rip+0xffffffffff72fc8c]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  944f91:	fc 72 ff 
  944f94:	62 e1 fd 28 28 05 62 	vmovapd ymm16,YMMWORD PTR [rip+0xffffffffff731d62]        # 76d00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x41b0>
  944f9b:	1d 73 ff 
  944f9e:	62 e1 fd 48 28 1d 98 	vmovapd zmm19,ZMMWORD PTR [rip+0xffffffffff73eb98]        # 83b40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x10ff0>
  944fa5:	eb 73 ff 
  944fa8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  944faf:	00 
  944fb0:	c5 7b 12 54 17 28    	vmovddup xmm10,QWORD PTR [rdi+rdx*1+0x28]
  944fb6:	c4 63 29 0d 54 17 20 	vblendpd xmm10,xmm10,XMMWORD PTR [rdi+rdx*1+0x20],0x1
  944fbd:	01 
  944fbe:	c5 7d 10 1c 17       	vmovupd ymm11,YMMWORD PTR [rdi+rdx*1]
  944fc3:	c5 7d 10 64 17 30    	vmovupd ymm12,YMMWORD PTR [rdi+rdx*1+0x30]
  944fc9:	c5 7d 10 6c 17 60    	vmovupd ymm13,YMMWORD PTR [rdi+rdx*1+0x60]
  944fcf:	c5 7d 10 b4 17 90 00 	vmovupd ymm14,YMMWORD PTR [rdi+rdx*1+0x90]
  944fd6:	00 00 
  944fd8:	62 53 25 48 18 da 02 	vinsertf32x4 zmm11,zmm11,xmm10,0x2
  944fdf:	62 51 fd 48 28 d3    	vmovapd zmm10,zmm11
  944fe5:	62 72 e5 48 7f d4    	vpermt2pd zmm10,zmm3,zmm4
  944feb:	c5 7b 12 7c 17 58    	vmovddup xmm15,QWORD PTR [rdi+rdx*1+0x58]
  944ff1:	62 72 d5 48 7f dc    	vpermt2pd zmm11,zmm5,zmm4
  944ff7:	c4 63 01 0d 7c 17 50 	vblendpd xmm15,xmm15,XMMWORD PTR [rdi+rdx*1+0x50],0x1
  944ffe:	01 
  944fff:	62 53 1d 48 18 e7 02 	vinsertf32x4 zmm12,zmm12,xmm15,0x2
  945006:	62 51 fd 48 28 fc    	vmovapd zmm15,zmm12
  94500c:	62 72 e5 48 7f fc    	vpermt2pd zmm15,zmm3,zmm4
  945012:	c5 7b 12 84 17 88 00 	vmovddup xmm8,QWORD PTR [rdi+rdx*1+0x88]
  945019:	00 00 
  94501b:	62 72 d5 48 7f e4    	vpermt2pd zmm12,zmm5,zmm4
  945021:	c4 63 39 0d 84 17 80 	vblendpd xmm8,xmm8,XMMWORD PTR [rdi+rdx*1+0x80],0x1
  945028:	00 00 00 01 
  94502c:	62 53 15 48 18 c0 02 	vinsertf32x4 zmm8,zmm13,xmm8,0x2
  945033:	62 c1 fd 48 28 c8    	vmovapd zmm17,zmm8
  945039:	62 e2 e5 48 7f cc    	vpermt2pd zmm17,zmm3,zmm4
  94503f:	c5 7b 12 ac 17 b8 00 	vmovddup xmm13,QWORD PTR [rdi+rdx*1+0xb8]
  945046:	00 00 
  945048:	62 72 d5 48 7f c4    	vpermt2pd zmm8,zmm5,zmm4
  94504e:	c4 63 11 0d ac 17 b0 	vblendpd xmm13,xmm13,XMMWORD PTR [rdi+rdx*1+0xb0],0x1
  945055:	00 00 00 01 
  945059:	62 53 0d 48 18 f5 02 	vinsertf32x4 zmm14,zmm14,xmm13,0x2
  945060:	62 c1 fd 48 28 d6    	vmovapd zmm18,zmm14
  945066:	62 e2 e5 48 7f d4    	vpermt2pd zmm18,zmm3,zmm4
  94506c:	62 72 d5 48 7f f4    	vpermt2pd zmm14,zmm5,zmm4
  945072:	c5 7d 10 ac 17 c0 00 	vmovupd ymm13,YMMWORD PTR [rdi+rdx*1+0xc0]
  945079:	00 00 
  94507b:	c5 7b 12 8c 17 e8 00 	vmovddup xmm9,QWORD PTR [rdi+rdx*1+0xe8]
  945082:	00 00 
  945084:	c4 63 31 0d 8c 17 e0 	vblendpd xmm9,xmm9,XMMWORD PTR [rdi+rdx*1+0xe0],0x1
  94508b:	00 00 00 01 
  94508f:	62 53 15 48 18 c9 02 	vinsertf32x4 zmm9,zmm13,xmm9,0x2
  945096:	62 c1 fd 48 28 e1    	vmovapd zmm20,zmm9
  94509c:	62 e2 e5 48 7f e4    	vpermt2pd zmm20,zmm3,zmm4
  9450a2:	62 72 d5 48 7f cc    	vpermt2pd zmm9,zmm5,zmm4
  9450a8:	c5 7b 12 ac 17 18 01 	vmovddup xmm13,QWORD PTR [rdi+rdx*1+0x118]
  9450af:	00 00 
  9450b1:	c4 63 11 0d ac 17 10 	vblendpd xmm13,xmm13,XMMWORD PTR [rdi+rdx*1+0x110],0x1
  9450b8:	01 00 00 01 
  9450bc:	62 e1 fd 28 10 ac 17 	vmovupd ymm21,YMMWORD PTR [rdi+rdx*1+0xf0]
  9450c3:	f0 00 00 00 
  9450c7:	62 c3 55 40 18 ed 02 	vinsertf32x4 zmm21,zmm21,xmm13,0x2
  9450ce:	62 a1 fd 48 28 f5    	vmovapd zmm22,zmm21
  9450d4:	62 e2 e5 48 7f f4    	vpermt2pd zmm22,zmm3,zmm4
  9450da:	62 e2 d5 48 7f ec    	vpermt2pd zmm21,zmm5,zmm4
  9450e0:	62 c1 bd 48 58 f9    	vaddpd zmm23,zmm8,zmm9
  9450e6:	62 21 a5 48 58 c7    	vaddpd zmm24,zmm11,zmm23
  9450ec:	62 41 d5 40 58 cc    	vaddpd zmm25,zmm21,zmm12
  9450f2:	62 01 8d 48 58 d1    	vaddpd zmm26,zmm14,zmm25
  9450f8:	62 01 bd 40 58 da    	vaddpd zmm27,zmm24,zmm26
  9450fe:	62 21 f5 40 58 e4    	vaddpd zmm28,zmm17,zmm20
  945104:	62 01 ad 48 58 ec    	vaddpd zmm29,zmm10,zmm28
  94510a:	62 41 cd 40 58 f7    	vaddpd zmm30,zmm22,zmm15
  945110:	62 01 ed 40 58 fe    	vaddpd zmm31,zmm18,zmm30
  945116:	62 11 95 40 58 ef    	vaddpd zmm13,zmm29,zmm31
  94511c:	62 32 cd 48 bc df    	vfnmadd231pd zmm11,zmm6,zmm23
  945122:	62 a1 f5 40 5c cc    	vsubpd zmm17,zmm17,zmm20
  945128:	62 e1 f5 40 59 cf    	vmulpd zmm17,zmm17,zmm7
  94512e:	62 a1 a5 48 58 e1    	vaddpd zmm20,zmm11,zmm17
  945134:	62 12 cd 48 bc f1    	vfnmadd231pd zmm14,zmm6,zmm25
  94513a:	62 51 cd 40 5c ff    	vsubpd zmm15,zmm22,zmm15
  945140:	62 71 85 48 59 ff    	vmulpd zmm15,zmm15,zmm7
  945146:	62 c1 8d 48 58 f7    	vaddpd zmm22,zmm14,zmm15
  94514c:	62 a1 dd 40 5c fe    	vsubpd zmm23,zmm20,zmm22
  945152:	62 12 cd 48 bc d4    	vfnmadd231pd zmm10,zmm6,zmm28
  945158:	62 51 bd 48 5c c1    	vsubpd zmm8,zmm8,zmm9
  94515e:	62 71 bd 48 59 c7    	vmulpd zmm8,zmm8,zmm7
  945164:	62 51 ad 48 5c c8    	vsubpd zmm9,zmm10,zmm8
  94516a:	62 82 cd 48 bc d6    	vfnmadd231pd zmm18,zmm6,zmm30
  945170:	62 51 d5 40 5c e4    	vsubpd zmm12,zmm21,zmm12
  945176:	62 71 9d 48 59 e7    	vmulpd zmm12,zmm12,zmm7
  94517c:	62 c1 ed 40 5c ec    	vsubpd zmm21,zmm18,zmm12
  945182:	62 21 b5 48 5c cd    	vsubpd zmm25,zmm9,zmm21
  945188:	62 31 a5 48 5c d9    	vsubpd zmm11,zmm11,zmm17
  94518e:	62 51 8d 48 5c f7    	vsubpd zmm14,zmm14,zmm15
  945194:	62 51 a5 48 58 fe    	vaddpd zmm15,zmm11,zmm14
  94519a:	62 51 bd 48 58 c2    	vaddpd zmm8,zmm8,zmm10
  9451a0:	62 31 9d 48 58 d2    	vaddpd zmm10,zmm12,zmm18
  9451a6:	62 51 bd 48 58 e2    	vaddpd zmm12,zmm8,zmm10
  9451ac:	62 81 bd 40 5c ca    	vsubpd zmm17,zmm24,zmm26
  9451b2:	62 81 95 40 5c d7    	vsubpd zmm18,zmm29,zmm31
  9451b8:	62 a1 dd 40 58 e6    	vaddpd zmm20,zmm20,zmm22
  9451be:	62 31 b5 48 58 cd    	vaddpd zmm9,zmm9,zmm21
  9451c4:	62 51 a5 48 5c de    	vsubpd zmm11,zmm11,zmm14
  9451ca:	62 51 bd 48 5c c2    	vsubpd zmm8,zmm8,zmm10
  9451d0:	62 22 fd 48 7f dc    	vpermt2pd zmm27,zmm0,zmm20
  9451d6:	62 c2 fd 48 7f fb    	vpermt2pd zmm23,zmm0,zmm11
  9451dc:	62 72 fd 48 7f fc    	vpermt2pd zmm15,zmm0,zmm4
  9451e2:	62 e2 fd 48 7f cc    	vpermt2pd zmm17,zmm0,zmm4
  9451e8:	62 11 fd 48 28 d3    	vmovapd zmm10,zmm27
  9451ee:	62 52 f5 48 7f d7    	vpermt2pd zmm10,zmm1,zmm15
  9451f4:	62 42 ed 48 7f df    	vpermt2pd zmm27,zmm2,zmm15
  9451fa:	62 31 fd 48 28 df    	vmovapd zmm11,zmm23
  945200:	62 32 f5 48 7f d9    	vpermt2pd zmm11,zmm1,zmm17
  945206:	62 a2 ed 48 7f f9    	vpermt2pd zmm23,zmm2,zmm17
  94520c:	62 31 a5 40 14 f7    	vunpcklpd zmm14,zmm27,zmm23
  945212:	62 51 ad 48 14 fb    	vunpcklpd zmm15,zmm10,zmm11
  945218:	62 51 ad 48 15 d3    	vunpckhpd zmm10,zmm10,zmm11
  94521e:	62 52 fd 48 7f e9    	vpermt2pd zmm13,zmm0,zmm9
  945224:	62 42 fd 48 7f c8    	vpermt2pd zmm25,zmm0,zmm8
  94522a:	62 72 fd 48 7f e4    	vpermt2pd zmm12,zmm0,zmm4
  945230:	62 e2 fd 48 7f d4    	vpermt2pd zmm18,zmm0,zmm4
  945236:	62 51 fd 48 28 c5    	vmovapd zmm8,zmm13
  94523c:	62 52 f5 48 7f c4    	vpermt2pd zmm8,zmm1,zmm12
  945242:	62 52 ed 48 7f ec    	vpermt2pd zmm13,zmm2,zmm12
  945248:	62 11 fd 48 28 c9    	vmovapd zmm9,zmm25
  94524e:	62 32 f5 48 7f ca    	vpermt2pd zmm9,zmm1,zmm18
  945254:	62 22 ed 48 7f ca    	vpermt2pd zmm25,zmm2,zmm18
  94525a:	62 11 95 48 14 d9    	vunpcklpd zmm11,zmm13,zmm25
  945260:	62 51 bd 48 14 e1    	vunpcklpd zmm12,zmm8,zmm9
  945266:	62 51 bd 48 15 c1    	vunpckhpd zmm8,zmm8,zmm9
  94526c:	62 71 fd 48 10 49 02 	vmovupd zmm9,ZMMWORD PTR [rcx+0x80]
  945273:	62 71 fd 48 10 69 03 	vmovupd zmm13,ZMMWORD PTR [rcx+0xc0]
  94527a:	62 e1 fd 48 10 49 04 	vmovupd zmm17,ZMMWORD PTR [rcx+0x100]
  945281:	62 e1 fd 48 10 51 05 	vmovupd zmm18,ZMMWORD PTR [rcx+0x140]
  945288:	62 c1 ad 48 59 e1    	vmulpd zmm20,zmm10,zmm9
  94528e:	62 c2 bd 48 bc e5    	vfnmadd231pd zmm20,zmm8,zmm13
  945294:	62 a1 8d 48 59 e9    	vmulpd zmm21,zmm14,zmm17
  94529a:	62 a2 a5 48 bc ea    	vfnmadd231pd zmm21,zmm11,zmm18
  9452a0:	62 a1 dd 40 58 f5    	vaddpd zmm22,zmm20,zmm21
  9452a6:	62 51 bd 48 59 c1    	vmulpd zmm8,zmm8,zmm9
  9452ac:	62 52 ad 48 b8 c5    	vfmadd231pd zmm8,zmm10,zmm13
  9452b2:	62 31 a5 48 59 c9    	vmulpd zmm9,zmm11,zmm17
  9452b8:	62 32 8d 48 b8 ca    	vfmadd231pd zmm9,zmm14,zmm18
  9452be:	62 51 bd 48 58 d1    	vaddpd zmm10,zmm8,zmm9
  9452c4:	62 71 fd 48 28 de    	vmovapd zmm11,zmm6
  9452ca:	62 52 cd 40 ac df    	vfnmadd213pd zmm11,zmm22,zmm15
  9452d0:	62 51 bd 48 5c c1    	vsubpd zmm8,zmm8,zmm9
  9452d6:	62 71 bd 48 59 c7    	vmulpd zmm8,zmm8,zmm7
  9452dc:	62 51 a5 48 58 c8    	vaddpd zmm9,zmm11,zmm8
  9452e2:	62 71 fd 48 28 ee    	vmovapd zmm13,zmm6
  9452e8:	62 52 ad 48 ac ec    	vfnmadd213pd zmm13,zmm10,zmm12
  9452ee:	62 31 dd 40 5c f5    	vsubpd zmm14,zmm20,zmm21
  9452f4:	62 71 8d 48 59 f7    	vmulpd zmm14,zmm14,zmm7
  9452fa:	62 c1 95 48 5c ce    	vsubpd zmm17,zmm13,zmm14
  945300:	62 a1 fd 48 28 d1    	vmovapd zmm18,zmm17
  945306:	62 c2 fd 40 7f d1    	vpermt2pd zmm18,zmm16,zmm9
  94530c:	62 51 a5 48 5c c0    	vsubpd zmm8,zmm11,zmm8
  945312:	62 51 95 48 58 de    	vaddpd zmm11,zmm13,zmm14
  945318:	62 51 fd 48 28 eb    	vmovapd zmm13,zmm11
  94531e:	62 52 fd 40 7f e8    	vpermt2pd zmm13,zmm16,zmm8
  945324:	62 51 9d 48 58 d2    	vaddpd zmm10,zmm12,zmm10
  94532a:	62 31 85 48 58 e6    	vaddpd zmm12,zmm15,zmm22
  945330:	62 51 fd 48 28 f2    	vmovapd zmm14,zmm10
  945336:	62 52 fd 40 7f f4    	vpermt2pd zmm14,zmm16,zmm12
  94533c:	62 52 e5 40 7f d4    	vpermt2pd zmm10,zmm19,zmm12
  945342:	62 71 fd 48 11 14 16 	vmovupd ZMMWORD PTR [rsi+rdx*1],zmm10
  945349:	c5 7d 11 74 16 40    	vmovupd YMMWORD PTR [rsi+rdx*1+0x40],ymm14
  94534f:	62 c2 e5 40 7f c9    	vpermt2pd zmm17,zmm19,zmm9
  945355:	62 e1 fd 48 11 8c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x60],zmm17
  94535c:	60 00 00 00 
  945360:	62 e1 fd 28 11 54 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0xa0],ymm18
  945367:	05 
  945368:	62 52 e5 40 7f d8    	vpermt2pd zmm11,zmm19,zmm8
  94536e:	62 71 fd 48 11 5c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0xc0],zmm11
  945375:	03 
  945376:	c5 7d 11 ac 16 00 01 	vmovupd YMMWORD PTR [rsi+rdx*1+0x100],ymm13
  94537d:	00 00 
  94537f:	48 81 c2 20 01 00 00 	add    rdx,0x120
  945386:	48 39 d0             	cmp    rax,rdx
  945389:	0f 85 21 fc ff ff    	jne    944fb0 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle+0x70>
  94538f:	c5 f8 77             	vzeroupper
  945392:	c3                   	ret
