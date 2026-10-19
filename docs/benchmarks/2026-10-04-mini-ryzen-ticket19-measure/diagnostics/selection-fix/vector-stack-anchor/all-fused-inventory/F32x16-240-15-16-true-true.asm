
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a32f40 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a32f40:	48 81 ec 48 0b 00 00 	sub    rsp,0xb48
  a32f47:	48 69 c2 80 07 00 00 	imul   rax,rdx,0x780
  a32f4e:	31 d2                	xor    edx,edx
  a32f50:	62 f1 7c 48 10 04 17 	vmovups zmm0,ZMMWORD PTR [rdi+rdx*1]
  a32f57:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm0
  a32f5e:	02 
  a32f5f:	62 f1 7c 48 10 54 17 	vmovups zmm2,ZMMWORD PTR [rdi+rdx*1+0x80]
  a32f66:	02 
  a32f67:	62 f1 7c 48 10 4c 17 	vmovups zmm1,ZMMWORD PTR [rdi+rdx*1+0xc0]
  a32f6e:	03 
  a32f6f:	62 f1 7c 48 10 64 17 	vmovups zmm4,ZMMWORD PTR [rdi+rdx*1+0x180]
  a32f76:	06 
  a32f77:	62 f1 7c 48 10 5c 17 	vmovups zmm3,ZMMWORD PTR [rdi+rdx*1+0x1c0]
  a32f7e:	07 
  a32f7f:	62 f1 7c 48 28 c4    	vmovaps zmm0,zmm4
  a32f85:	62 71 7c 48 28 dc    	vmovaps zmm11,zmm4
  a32f8b:	62 f1 7c 48 28 2d ab 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff65dfab]        # 90f40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e3f0>
  a32f92:	df 65 ff 
  a32f95:	62 f2 55 48 7f c3    	vpermt2ps zmm0,zmm5,zmm3
  a32f9b:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a32fa2:	fe 
  a32fa3:	62 e1 7c 48 10 74 17 	vmovups zmm22,ZMMWORD PTR [rdi+rdx*1+0x600]
  a32faa:	18 
  a32fab:	62 71 7c 48 10 44 17 	vmovups zmm8,ZMMWORD PTR [rdi+rdx*1+0x640]
  a32fb2:	19 
  a32fb3:	62 b1 7c 48 28 c6    	vmovaps zmm0,zmm22
  a32fb9:	62 d2 55 48 7f c0    	vpermt2ps zmm0,zmm5,zmm8
  a32fbf:	62 f1 7c 48 11 04 24 	vmovups ZMMWORD PTR [rsp],zmm0
  a32fc6:	62 e1 7c 48 10 6c 17 	vmovups zmm21,ZMMWORD PTR [rdi+rdx*1+0x300]
  a32fcd:	0c 
  a32fce:	62 e1 7c 48 10 5c 17 	vmovups zmm19,ZMMWORD PTR [rdi+rdx*1+0x340]
  a32fd5:	0d 
  a32fd6:	62 b1 7c 48 28 c5    	vmovaps zmm0,zmm21
  a32fdc:	62 b2 55 48 7f c3    	vpermt2ps zmm0,zmm5,zmm19
  a32fe2:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm0
  a32fe9:	06 
  a32fea:	62 f1 7c 48 10 64 17 	vmovups zmm4,ZMMWORD PTR [rdi+rdx*1+0x480]
  a32ff1:	12 
  a32ff2:	62 e1 7c 48 10 64 17 	vmovups zmm20,ZMMWORD PTR [rdi+rdx*1+0x4c0]
  a32ff9:	13 
  a32ffa:	62 f1 7c 48 28 c4    	vmovaps zmm0,zmm4
  a33000:	62 61 7c 48 28 f4    	vmovaps zmm30,zmm4
  a33006:	62 b2 55 48 7f c4    	vpermt2ps zmm0,zmm5,zmm20
  a3300c:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm0
  a33013:	04 
  a33014:	62 71 7c 48 10 6c 17 	vmovups zmm13,ZMMWORD PTR [rdi+rdx*1+0x280]
  a3301b:	0a 
  a3301c:	62 f1 7c 48 10 7c 17 	vmovups zmm7,ZMMWORD PTR [rdi+rdx*1+0x2c0]
  a33023:	0b 
  a33024:	62 71 7c 48 10 64 17 	vmovups zmm12,ZMMWORD PTR [rdi+rdx*1+0x400]
  a3302b:	10 
  a3302c:	62 f1 7c 48 10 44 17 	vmovups zmm0,ZMMWORD PTR [rdi+rdx*1+0x440]
  a33033:	11 
  a33034:	62 c1 7c 48 28 fc    	vmovaps zmm23,zmm12
  a3303a:	62 e2 55 48 7f f8    	vpermt2ps zmm23,zmm5,zmm0
  a33040:	62 71 7c 48 10 74 17 	vmovups zmm14,ZMMWORD PTR [rdi+rdx*1+0x100]
  a33047:	04 
  a33048:	62 61 7c 48 10 44 17 	vmovups zmm24,ZMMWORD PTR [rdi+rdx*1+0x140]
  a3304f:	05 
  a33050:	62 51 7c 48 28 ce    	vmovaps zmm9,zmm14
  a33056:	62 12 55 48 7f c8    	vpermt2ps zmm9,zmm5,zmm24
  a3305c:	62 71 7c 48 10 54 17 	vmovups zmm10,ZMMWORD PTR [rdi+rdx*1+0x580]
  a33063:	16 
  a33064:	62 61 7c 48 10 54 17 	vmovups zmm26,ZMMWORD PTR [rdi+rdx*1+0x5c0]
  a3306b:	17 
  a3306c:	62 c1 7c 48 28 c2    	vmovaps zmm16,zmm10
  a33072:	62 82 55 48 7f c2    	vpermt2ps zmm16,zmm5,zmm26
  a33078:	62 61 7c 48 10 4c 17 	vmovups zmm25,ZMMWORD PTR [rdi+rdx*1+0x700]
  a3307f:	1c 
  a33080:	62 61 7c 48 10 64 17 	vmovups zmm28,ZMMWORD PTR [rdi+rdx*1+0x740]
  a33087:	1d 
  a33088:	62 81 7c 48 28 c9    	vmovaps zmm17,zmm25
  a3308e:	62 82 55 48 7f cc    	vpermt2ps zmm17,zmm5,zmm28
  a33094:	62 e1 7c 48 10 54 17 	vmovups zmm18,ZMMWORD PTR [rdi+rdx*1+0x680]
  a3309b:	1a 
  a3309c:	62 61 7c 48 10 6c 17 	vmovups zmm29,ZMMWORD PTR [rdi+rdx*1+0x6c0]
  a330a3:	1b 
  a330a4:	62 31 7c 48 28 fa    	vmovaps zmm15,zmm18
  a330aa:	62 12 55 48 7f fd    	vpermt2ps zmm15,zmm5,zmm29
  a330b0:	62 61 7c 48 28 3d c6 	vmovaps zmm31,ZMMWORD PTR [rip+0xffffffffff65dec6]        # 90f80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e430>
  a330b7:	de 65 ff 
  a330ba:	62 12 05 40 7f d2    	vpermt2ps zmm10,zmm31,zmm26
  a330c0:	62 61 7c 48 10 5c 17 	vmovups zmm27,ZMMWORD PTR [rdi+rdx*1+0x380]
  a330c7:	0e 
  a330c8:	62 02 05 40 7f cc    	vpermt2ps zmm25,zmm31,zmm28
  a330ce:	62 61 7c 48 28 d2    	vmovaps zmm26,zmm2
  a330d4:	62 62 55 48 7f d1    	vpermt2ps zmm26,zmm5,zmm1
  a330da:	62 72 05 40 7f e0    	vpermt2ps zmm12,zmm31,zmm0
  a330e0:	62 f1 7c 48 10 44 17 	vmovups zmm0,ZMMWORD PTR [rdi+rdx*1+0x200]
  a330e7:	08 
  a330e8:	62 12 05 40 7f f0    	vpermt2ps zmm14,zmm31,zmm24
  a330ee:	62 61 7c 48 10 64 17 	vmovups zmm28,ZMMWORD PTR [rdi+rdx*1+0x240]
  a330f5:	09 
  a330f6:	62 f2 05 40 7f d1    	vpermt2ps zmm2,zmm31,zmm1
  a330fc:	62 61 7c 48 28 c0    	vmovaps zmm24,zmm0
  a33102:	62 02 55 48 7f c4    	vpermt2ps zmm24,zmm5,zmm28
  a33108:	62 92 05 40 7f c4    	vpermt2ps zmm0,zmm31,zmm28
  a3310e:	62 f1 7c 48 10 4c 17 	vmovups zmm1,ZMMWORD PTR [rdi+rdx*1+0x3c0]
  a33115:	0f 
  a33116:	62 82 05 40 7f d5    	vpermt2ps zmm18,zmm31,zmm29
  a3311c:	62 01 7c 48 28 eb    	vmovaps zmm29,zmm27
  a33122:	62 62 55 48 7f e9    	vpermt2ps zmm29,zmm5,zmm1
  a33128:	62 62 05 40 7f d9    	vpermt2ps zmm27,zmm31,zmm1
  a3312e:	62 d1 7c 48 28 f5    	vmovaps zmm6,zmm13
  a33134:	62 f2 55 48 7f f7    	vpermt2ps zmm6,zmm5,zmm7
  a3313a:	62 a2 05 40 7f eb    	vpermt2ps zmm21,zmm31,zmm19
  a33140:	62 e1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x680],zmm21
  a33147:	1a 
  a33148:	62 41 44 40 58 e1    	vaddps zmm28,zmm23,zmm9
  a3314e:	62 22 05 40 7f f4    	vpermt2ps zmm30,zmm31,zmm20
  a33154:	62 61 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm30
  a3315b:	0b 
  a3315c:	62 81 4c 48 58 dc    	vaddps zmm19,zmm6,zmm28
  a33162:	62 d1 7c 48 28 cb    	vmovaps zmm1,zmm11
  a33168:	62 f2 05 40 7f cb    	vpermt2ps zmm1,zmm31,zmm3
  a3316e:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm1
  a33175:	17 
  a33176:	62 b1 7c 40 58 e1    	vaddps zmm4,zmm16,zmm17
  a3317c:	62 f1 64 40 58 dc    	vaddps zmm3,zmm19,zmm4
  a33182:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm3
  a33189:	0f 
  a3318a:	62 c2 05 40 7f f0    	vpermt2ps zmm22,zmm31,zmm8
  a33190:	62 91 7c 48 28 df    	vmovaps zmm3,zmm31
  a33196:	62 e1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x640],zmm22
  a3319d:	19 
  a3319e:	62 81 2c 48 5c e1    	vsubps zmm20,zmm10,zmm25
  a331a4:	62 11 2c 48 58 c1    	vaddps zmm8,zmm10,zmm25
  a331aa:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm8
  a331b1:	ff 
  a331b2:	62 41 1c 48 5c fe    	vsubps zmm31,zmm12,zmm14
  a331b8:	62 51 1c 48 58 f6    	vaddps zmm14,zmm12,zmm14
  a331be:	62 71 7c 48 10 64 17 	vmovups zmm12,ZMMWORD PTR [rdi+rdx*1+0x500]
  a331c5:	14 
  a331c6:	62 72 65 48 7f ef    	vpermt2ps zmm13,zmm3,zmm7
  a331cc:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm13
  a331d3:	01 
  a331d4:	62 f1 7c 48 28 fb    	vmovaps zmm7,zmm3
  a331da:	62 e1 7c 48 10 5c 17 	vmovups zmm19,ZMMWORD PTR [rdi+rdx*1+0x540]
  a331e1:	15 
  a331e2:	62 31 7c 40 5c d1    	vsubps zmm10,zmm16,zmm17
  a331e8:	62 51 7c 48 28 c4    	vmovaps zmm8,zmm12
  a331ee:	62 32 55 48 7f c3    	vpermt2ps zmm8,zmm5,zmm19
  a331f4:	62 51 44 40 5c e9    	vsubps zmm13,zmm23,zmm9
  a331fa:	62 71 6c 48 5c c8    	vsubps zmm9,zmm2,zmm0
  a33200:	62 e1 6c 48 58 c8    	vaddps zmm17,zmm2,zmm0
  a33206:	62 91 6c 40 5c db    	vsubps zmm3,zmm18,zmm27
  a3320c:	62 81 6c 40 58 d3    	vaddps zmm18,zmm18,zmm27
  a33212:	62 91 04 48 58 d5    	vaddps zmm2,zmm15,zmm29
  a33218:	62 32 45 48 7f e3    	vpermt2ps zmm12,zmm7,zmm19
  a3321e:	62 91 2c 40 58 c0    	vaddps zmm0,zmm26,zmm24
  a33224:	62 81 2c 40 5c c0    	vsubps zmm16,zmm26,zmm24
  a3322a:	62 e1 3c 48 58 da    	vaddps zmm19,zmm8,zmm2
  a33230:	62 f1 64 40 58 f8    	vaddps zmm7,zmm19,zmm0
  a33236:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm7
  a3323d:	0c 
  a3323e:	62 81 04 48 5c dd    	vsubps zmm19,zmm15,zmm29
  a33244:	62 62 7d 48 18 05 0a 	vbroadcastss zmm24,DWORD PTR [rip+0xffffffffff64250a]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a3324b:	25 64 ff 
  a3324e:	62 11 04 40 59 f8    	vmulps zmm15,zmm31,zmm24
  a33254:	62 72 7d 48 18 1d 42 	vbroadcastss zmm11,DWORD PTR [rip+0xffffffffff642142]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a3325b:	21 64 ff 
  a3325e:	62 52 5d 40 bc fb    	vfnmadd231ps zmm15,zmm20,zmm11
  a33264:	62 01 5c 40 59 c8    	vmulps zmm25,zmm20,zmm24
  a3326a:	62 02 25 48 b8 cf    	vfmadd231ps zmm25,zmm11,zmm31
  a33270:	62 62 7d 48 18 35 ca 	vbroadcastss zmm30,DWORD PTR [rip+0xffffffffff6423ca]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a33277:	23 64 ff 
  a3327a:	62 81 7c 48 28 e6    	vmovaps zmm20,zmm30
  a33280:	62 e2 1d 40 ac e6    	vfnmadd213ps zmm20,zmm28,zmm6
  a33286:	62 e2 7d 48 18 3d 58 	vbroadcastss zmm23,DWORD PTR [rip+0xffffffffff642458]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a3328d:	24 64 ff 
  a33290:	62 a2 5d 48 b8 e7    	vfmadd231ps zmm20,zmm4,zmm23
  a33296:	62 92 45 40 b8 f4    	vfmadd231ps zmm6,zmm23,zmm28
  a3329c:	62 01 64 48 59 d8    	vmulps zmm27,zmm3,zmm24
  a332a2:	62 42 35 48 bc db    	vfnmadd231ps zmm27,zmm9,zmm11
  a332a8:	62 f2 0d 40 bc f4    	vfnmadd231ps zmm6,zmm30,zmm4
  a332ae:	62 01 7c 48 28 ee    	vmovaps zmm29,zmm30
  a332b4:	62 42 6d 48 ac e8    	vfnmadd213ps zmm29,zmm2,zmm8
  a332ba:	62 22 7d 48 b8 ef    	vfmadd231ps zmm29,zmm0,zmm23
  a332c0:	62 01 34 48 59 d0    	vmulps zmm26,zmm9,zmm24
  a332c6:	62 62 25 48 b8 d3    	vfmadd231ps zmm26,zmm11,zmm3
  a332cc:	62 f1 54 40 5c 5c 24 	vsubps zmm3,zmm21,ZMMWORD PTR [rsp+0x2c0]
  a332d3:	0b 
  a332d4:	62 72 45 40 b8 c2    	vfmadd231ps zmm8,zmm23,zmm2
  a332da:	62 b1 74 48 5c d6    	vsubps zmm2,zmm1,zmm22
  a332e0:	62 72 0d 40 bc c0    	vfnmadd231ps zmm8,zmm30,zmm0
  a332e6:	62 91 6c 48 59 e0    	vmulps zmm4,zmm2,zmm24
  a332ec:	62 d2 65 48 bc e3    	vfnmadd231ps zmm4,zmm3,zmm11
  a332f2:	62 91 64 48 59 d8    	vmulps zmm3,zmm3,zmm24
  a332f8:	62 91 7c 48 28 c8    	vmovaps zmm1,zmm24
  a332fe:	62 f2 25 48 b8 da    	vfmadd231ps zmm3,zmm11,zmm2
  a33304:	62 f1 7c 48 10 44 17 	vmovups zmm0,ZMMWORD PTR [rdi+rdx*1+0x40]
  a3330b:	01 
  a3330c:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm0
  a33313:	14 
  a33314:	62 61 7c 48 10 44 24 	vmovups zmm24,ZMMWORD PTR [rsp+0x80]
  a3331b:	02 
  a3331c:	62 62 55 48 7f c0    	vpermt2ps zmm24,zmm5,zmm0
  a33322:	62 f1 7c 48 10 04 24 	vmovups zmm0,ZMMWORD PTR [rsp]
  a33329:	62 f1 7c 48 58 44 24 	vaddps zmm0,zmm0,ZMMWORD PTR [rsp-0x80]
  a33330:	fe 
  a33331:	62 01 7c 48 28 fe    	vmovaps zmm31,zmm30
  a33337:	62 02 7d 48 ac f8    	vfnmadd213ps zmm31,zmm0,zmm24
  a3333d:	62 f1 3c 40 58 d0    	vaddps zmm2,zmm24,zmm0
  a33343:	62 62 45 40 b8 c0    	vfmadd231ps zmm24,zmm23,zmm0
  a33349:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x100]
  a33350:	04 
  a33351:	62 f1 7c 48 58 44 24 	vaddps zmm0,zmm0,ZMMWORD PTR [rsp+0x180]
  a33358:	06 
  a33359:	62 f1 6c 48 58 e8    	vaddps zmm5,zmm2,zmm0
  a3335f:	62 22 7d 48 b8 ff    	vfmadd231ps zmm31,zmm0,zmm23
  a33365:	62 62 0d 40 bc c0    	vfnmadd231ps zmm24,zmm30,zmm0
  a3336b:	62 f1 7c 48 28 d1    	vmovaps zmm2,zmm1
  a33371:	62 f1 14 48 59 c9    	vmulps zmm1,zmm13,zmm1
  a33377:	62 d1 7c 48 28 c3    	vmovaps zmm0,zmm11
  a3337d:	62 d2 2d 48 bc cb    	vfnmadd231ps zmm1,zmm10,zmm11
  a33383:	62 71 2c 48 59 da    	vmulps zmm11,zmm10,zmm2
  a33389:	62 52 7d 48 b8 dd    	vfmadd231ps zmm11,zmm0,zmm13
  a3338f:	62 71 7c 48 28 c8    	vmovaps zmm9,zmm0
  a33395:	62 f1 64 40 59 c2    	vmulps zmm0,zmm19,zmm2
  a3339b:	62 d2 7d 40 bc c1    	vfnmadd231ps zmm0,zmm16,zmm9
  a333a1:	62 f1 7c 40 59 fa    	vmulps zmm7,zmm16,zmm2
  a333a7:	62 b2 35 48 b8 fb    	vfmadd231ps zmm7,zmm9,zmm19
  a333ad:	62 01 5c 48 58 e7    	vaddps zmm28,zmm4,zmm31
  a333b3:	62 e1 04 40 5c c4    	vsubps zmm16,zmm31,zmm4
  a333b9:	62 b1 04 48 58 d4    	vaddps zmm2,zmm15,zmm20
  a333bf:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm2
  a333c6:	10 
  a333c7:	62 d1 5c 40 5c e7    	vsubps zmm4,zmm20,zmm15
  a333cd:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm4
  a333d4:	15 
  a333d5:	62 81 24 40 58 e5    	vaddps zmm20,zmm27,zmm29
  a333db:	62 11 14 40 5c cb    	vsubps zmm9,zmm29,zmm27
  a333e1:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm9
  a333e8:	16 
  a333e9:	62 41 5c 48 58 f9    	vaddps zmm31,zmm4,zmm9
  a333ef:	62 91 7c 40 58 e7    	vaddps zmm4,zmm16,zmm31
  a333f5:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm4
  a333fc:	0d 
  a333fd:	62 72 7d 48 18 0d 59 	vbroadcastss zmm9,DWORD PTR [rip+0xffffffffff642059]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a33404:	20 64 ff 
  a33407:	62 22 35 48 ac f8    	vfnmadd213ps zmm31,zmm9,zmm16
  a3340d:	62 11 7c 48 28 fe    	vmovaps zmm15,zmm30
  a33413:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x40]
  a3341a:	01 
  a3341b:	62 72 0d 48 ac fc    	vfnmadd213ps zmm15,zmm14,zmm4
  a33421:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp-0x40]
  a33428:	ff 
  a33429:	62 32 2d 48 b8 ff    	vfmadd231ps zmm15,zmm10,zmm23
  a3342f:	62 61 04 48 5c d9    	vsubps zmm27,zmm15,zmm1
  a33435:	62 71 04 48 58 f9    	vaddps zmm15,zmm15,zmm1
  a3343b:	62 91 7c 48 28 ce    	vmovaps zmm1,zmm30
  a33441:	62 d2 6d 40 ac cc    	vfnmadd213ps zmm1,zmm18,zmm12
  a33447:	62 b2 75 40 b8 cf    	vfmadd231ps zmm1,zmm17,zmm23
  a3344d:	62 61 74 48 5c e8    	vsubps zmm29,zmm1,zmm0
  a33453:	62 e1 74 48 58 d8    	vaddps zmm19,zmm1,zmm0
  a33459:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x300]
  a33460:	0c 
  a33461:	62 f1 7c 48 58 54 24 	vaddps zmm2,zmm0,ZMMWORD PTR [rsp+0x3c0]
  a33468:	0f 
  a33469:	62 f1 54 48 58 ca    	vaddps zmm1,zmm5,zmm2
  a3346f:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm1
  a33476:	03 
  a33477:	62 f2 35 48 ac d5    	vfnmadd213ps zmm2,zmm9,zmm5
  a3347d:	62 b1 7c 48 28 cf    	vmovaps zmm1,zmm23
  a33483:	62 f2 0d 48 a8 cc    	vfmadd213ps zmm1,zmm14,zmm4
  a33489:	62 d1 5c 48 58 ee    	vaddps zmm5,zmm4,zmm14
  a3348f:	62 92 2d 48 bc ce    	vfnmadd231ps zmm1,zmm10,zmm30
  a33495:	62 51 54 48 58 d2    	vaddps zmm10,zmm5,zmm10
  a3349b:	62 a1 7c 48 28 ef    	vmovaps zmm21,zmm23
  a334a1:	62 c2 6d 40 a8 ec    	vfmadd213ps zmm21,zmm18,zmm12
  a334a7:	62 b1 1c 48 58 ea    	vaddps zmm5,zmm12,zmm18
  a334ad:	62 82 75 40 bc ee    	vfnmadd231ps zmm21,zmm17,zmm30
  a334b3:	62 a1 54 48 58 c9    	vaddps zmm17,zmm5,zmm17
  a334b9:	62 11 64 48 58 f0    	vaddps zmm14,zmm3,zmm24
  a334bf:	62 f1 3c 40 5c db    	vsubps zmm3,zmm24,zmm3
  a334c5:	62 71 34 40 58 e6    	vaddps zmm12,zmm25,zmm6
  a334cb:	62 81 4c 48 5c c1    	vsubps zmm16,zmm6,zmm25
  a334d1:	62 e1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm16
  a334d8:	11 
  a334d9:	62 41 2c 40 58 c8    	vaddps zmm25,zmm26,zmm8
  a334df:	62 91 3c 48 5c c2    	vsubps zmm0,zmm8,zmm26
  a334e5:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm0
  a334ec:	12 
  a334ed:	62 01 1c 48 58 d1    	vaddps zmm26,zmm12,zmm25
  a334f3:	62 51 7c 48 28 c1    	vmovaps zmm8,zmm9
  a334f9:	62 52 2d 40 ac c6    	vfnmadd213ps zmm8,zmm26,zmm14
  a334ff:	62 d1 74 48 5c eb    	vsubps zmm5,zmm1,zmm11
  a33505:	62 e1 54 40 5c d7    	vsubps zmm18,zmm21,zmm7
  a3350b:	62 a1 54 48 5c f2    	vsubps zmm22,zmm5,zmm18
  a33511:	62 f2 7d 48 18 25 b9 	vbroadcastss zmm4,DWORD PTR [rip+0xffffffffff641db9]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a33518:	1d 64 ff 
  a3351b:	62 e1 4c 40 59 f4    	vmulps zmm22,zmm22,zmm4
  a33521:	62 31 3c 48 5c ee    	vsubps zmm13,zmm8,zmm22
  a33527:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm13
  a3352e:	ff 
  a3352f:	62 b1 3c 48 58 f6    	vaddps zmm6,zmm8,zmm22
  a33535:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm6
  a3353c:	13 
  a3353d:	62 e1 7c 40 58 f0    	vaddps zmm22,zmm16,zmm0
  a33543:	62 b1 64 48 58 f6    	vaddps zmm6,zmm3,zmm22
  a33549:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm6
  a33550:	01 
  a33551:	62 e2 35 48 ac f3    	vfnmadd213ps zmm22,zmm9,zmm3
  a33557:	62 51 74 48 58 eb    	vaddps zmm13,zmm1,zmm11
  a3355d:	62 71 54 40 58 c7    	vaddps zmm8,zmm21,zmm7
  a33563:	62 91 0c 48 58 ca    	vaddps zmm1,zmm14,zmm26
  a33569:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm1
  a33570:	0e 
  a33571:	62 b1 2c 48 5c c9    	vsubps zmm1,zmm10,zmm17
  a33577:	62 f1 74 48 59 cc    	vmulps zmm1,zmm1,zmm4
  a3357d:	62 f1 6c 48 5c d9    	vsubps zmm3,zmm2,zmm1
  a33583:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm3
  a3358a:	0a 
  a3358b:	62 f1 74 48 58 c2    	vaddps zmm0,zmm1,zmm2
  a33591:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm0
  a33598:	07 
  a33599:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x400]
  a335a0:	10 
  a335a1:	62 b1 6c 48 58 c4    	vaddps zmm0,zmm2,zmm20
  a335a7:	62 d1 7c 48 28 c9    	vmovaps zmm1,zmm9
  a335ad:	62 92 7d 48 ac cc    	vfnmadd213ps zmm1,zmm0,zmm28
  a335b3:	62 91 24 40 5c dd    	vsubps zmm3,zmm27,zmm29
  a335b9:	62 f1 64 48 59 dc    	vmulps zmm3,zmm3,zmm4
  a335bf:	62 e1 74 48 58 c3    	vaddps zmm16,zmm1,zmm3
  a335c5:	62 e1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x600],zmm16
  a335cc:	18 
  a335cd:	62 f1 74 48 5c cb    	vsubps zmm1,zmm1,zmm3
  a335d3:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x880],zmm1
  a335da:	22 
  a335db:	62 61 1c 40 58 e0    	vaddps zmm28,zmm28,zmm0
  a335e1:	62 61 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm28
  a335e8:	08 
  a335e9:	62 d1 14 48 5c c0    	vsubps zmm0,zmm13,zmm8
  a335ef:	62 f1 7c 48 59 c4    	vmulps zmm0,zmm0,zmm4
  a335f5:	62 61 4c 40 5c c0    	vsubps zmm24,zmm22,zmm0
  a335fb:	62 61 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x6c0],zmm24
  a33602:	1b 
  a33603:	62 f1 4c 40 58 c0    	vaddps zmm0,zmm22,zmm0
  a33609:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x7c0],zmm0
  a33610:	1f 
  a33611:	62 31 7c 48 28 db    	vmovaps zmm11,zmm19
  a33617:	62 b1 04 48 5c c3    	vsubps zmm0,zmm15,zmm19
  a3361d:	62 f1 7c 48 59 c4    	vmulps zmm0,zmm0,zmm4
  a33623:	62 61 04 40 58 d0    	vaddps zmm26,zmm31,zmm0
  a33629:	62 61 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm26
  a33630:	09 
  a33631:	62 61 04 40 5c f8    	vsubps zmm31,zmm31,zmm0
  a33637:	62 61 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm31
  a3363e:	05 
  a3363f:	62 e1 7c 48 10 6c 24 	vmovups zmm21,ZMMWORD PTR [rsp+0x80]
  a33646:	02 
  a33647:	62 f1 7c 48 28 05 2f 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff65d92f]        # 90f80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e430>
  a3364e:	d9 65 ff 
  a33651:	62 e2 7d 48 7f 6c 24 	vpermt2ps zmm21,zmm0,ZMMWORD PTR [rsp+0x500]
  a33658:	14 
  a33659:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x5c0]
  a33660:	17 
  a33661:	62 f1 7c 48 58 4c 24 	vaddps zmm1,zmm0,ZMMWORD PTR [rsp+0x640]
  a33668:	19 
  a33669:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x680]
  a33670:	1a 
  a33671:	62 f1 7c 48 58 74 24 	vaddps zmm6,zmm0,ZMMWORD PTR [rsp+0x2c0]
  a33678:	0b 
  a33679:	62 b1 2c 48 58 d9    	vaddps zmm3,zmm10,zmm17
  a3367f:	62 91 24 40 58 c5    	vaddps zmm0,zmm27,zmm29
  a33685:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x180]
  a3368c:	06 
  a3368d:	62 71 2c 48 5c 54 24 	vsubps zmm10,zmm10,ZMMWORD PTR [rsp+0x100]
  a33694:	04 
  a33695:	62 71 7c 48 10 74 24 	vmovups zmm14,ZMMWORD PTR [rsp-0x80]
  a3369c:	fe 
  a3369d:	62 71 0c 48 5c 34 24 	vsubps zmm14,zmm14,ZMMWORD PTR [rsp]
  a336a4:	62 a1 6c 48 5c dc    	vsubps zmm19,zmm2,zmm20
  a336aa:	62 11 1c 48 5c e1    	vsubps zmm12,zmm12,zmm25
  a336b0:	62 b1 54 48 58 ea    	vaddps zmm5,zmm5,zmm18
  a336b6:	62 81 7c 48 28 ce    	vmovaps zmm17,zmm30
  a336bc:	62 a2 75 48 ac cd    	vfnmadd213ps zmm17,zmm1,zmm21
  a336c2:	62 e1 54 40 58 d1    	vaddps zmm18,zmm21,zmm1
  a336c8:	62 e2 45 40 b8 e9    	vfmadd231ps zmm21,zmm23,zmm1
  a336ce:	62 f1 6c 40 58 ce    	vaddps zmm1,zmm18,zmm6
  a336d4:	62 a2 4d 48 b8 cf    	vfmadd231ps zmm17,zmm6,zmm23
  a336da:	62 e2 0d 40 bc ee    	vfnmadd231ps zmm21,zmm30,zmm6
  a336e0:	62 f2 7d 48 18 3d 6e 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff64206e]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a336e7:	20 64 ff 
  a336ea:	62 f1 0c 48 59 f7    	vmulps zmm6,zmm14,zmm7
  a336f0:	62 f2 7d 48 18 15 a6 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff641ca6]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a336f7:	1c 64 ff 
  a336fa:	62 f2 2d 48 bc f2    	vfnmadd231ps zmm6,zmm10,zmm2
  a33700:	62 71 2c 48 59 d7    	vmulps zmm10,zmm10,zmm7
  a33706:	62 52 6d 48 b8 d6    	vfmadd231ps zmm10,zmm2,zmm14
  a3370c:	62 71 74 40 5c f6    	vsubps zmm14,zmm17,zmm6
  a33712:	62 f1 74 40 58 f6    	vaddps zmm6,zmm17,zmm6
  a33718:	62 c1 04 48 58 cb    	vaddps zmm17,zmm15,zmm11
  a3371e:	62 b1 4c 48 58 d1    	vaddps zmm2,zmm6,zmm17
  a33724:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm2
  a3372b:	04 
  a3372c:	62 e2 35 48 ac ce    	vfnmadd213ps zmm17,zmm9,zmm6
  a33732:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x540]
  a33739:	15 
  a3373a:	62 71 4c 48 5c 5c 24 	vsubps zmm11,zmm6,ZMMWORD PTR [rsp+0x580]
  a33741:	16 
  a33742:	62 e1 74 48 58 d3    	vaddps zmm18,zmm1,zmm3
  a33748:	62 f2 35 48 ac d9    	vfnmadd213ps zmm3,zmm9,zmm1
  a3374e:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x3c0]
  a33755:	0f 
  a33756:	62 f1 74 48 5c 4c 24 	vsubps zmm1,zmm1,ZMMWORD PTR [rsp+0x300]
  a3375d:	0c 
  a3375e:	62 d1 54 40 5c f2    	vsubps zmm6,zmm21,zmm10
  a33764:	62 d1 54 40 58 fa    	vaddps zmm7,zmm21,zmm10
  a3376a:	62 71 1c 48 59 d4    	vmulps zmm10,zmm12,zmm4
  a33770:	62 d1 14 48 58 d0    	vaddps zmm2,zmm13,zmm8
  a33776:	62 51 7c 48 28 c1    	vmovaps zmm8,zmm9
  a3377c:	62 72 55 48 ac c6    	vfnmadd213ps zmm8,zmm5,zmm6
  a33782:	62 c1 2c 48 58 f0    	vaddps zmm22,zmm10,zmm8
  a33788:	62 c1 3c 48 5c fa    	vsubps zmm23,zmm8,zmm10
  a3378e:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp+0x440]
  a33795:	11 
  a33796:	62 71 3c 48 5c 44 24 	vsubps zmm8,zmm8,ZMMWORD PTR [rsp+0x480]
  a3379d:	12 
  a3379e:	62 e1 44 48 58 e2    	vaddps zmm20,zmm7,zmm2
  a337a4:	62 f2 35 48 ac d7    	vfnmadd213ps zmm2,zmm9,zmm7
  a337aa:	62 d1 7c 48 28 f9    	vmovaps zmm7,zmm9
  a337b0:	62 d2 7d 48 ac fe    	vfnmadd213ps zmm7,zmm0,zmm14
  a337b6:	62 71 64 40 59 cc    	vmulps zmm9,zmm19,zmm4
  a337bc:	62 f1 74 48 59 cc    	vmulps zmm1,zmm1,zmm4
  a337c2:	62 f1 4c 48 58 ed    	vaddps zmm5,zmm6,zmm5
  a337c8:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x800],zmm5
  a337cf:	20 
  a337d0:	62 71 64 48 58 e1    	vaddps zmm12,zmm3,zmm1
  a337d6:	62 f1 64 48 5c c9    	vsubps zmm1,zmm3,zmm1
  a337dc:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm1
  a337e3:	02 
  a337e4:	62 51 44 48 5c f9    	vsubps zmm15,zmm7,zmm9
  a337ea:	62 d1 44 48 58 c9    	vaddps zmm1,zmm7,zmm9
  a337f0:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x780],zmm1
  a337f7:	1e 
  a337f8:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0xc0]
  a337ff:	03 
  a33800:	62 f1 7c 48 28 2d 76 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff693776]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a33807:	37 69 ff 
  a3380a:	62 b2 55 48 7f c8    	vpermt2ps zmm1,zmm5,zmm16
  a33810:	62 f1 7c 48 28 f9    	vmovaps zmm7,zmm1
  a33816:	62 f1 24 48 59 cc    	vmulps zmm1,zmm11,zmm4
  a3381c:	62 f1 3c 48 59 dc    	vmulps zmm3,zmm8,zmm4
  a33822:	62 f1 0c 48 58 c0    	vaddps zmm0,zmm14,zmm0
  a33828:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a3382f:	fe 
  a33830:	62 71 64 48 58 ca    	vaddps zmm9,zmm3,zmm2
  a33836:	62 f1 6c 48 5c c3    	vsubps zmm0,zmm2,zmm3
  a3383c:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xac0],zmm0
  a33843:	2b 
  a33844:	62 61 74 40 5c d9    	vsubps zmm27,zmm17,zmm1
  a3384a:	62 61 74 40 58 c9    	vaddps zmm25,zmm17,zmm1
  a33850:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x40]
  a33857:	ff 
  a33858:	62 f2 55 48 7f 44 24 	vpermt2ps zmm0,zmm5,ZMMWORD PTR [rsp+0x340]
  a3385f:	0d 
  a33860:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x740],zmm0
  a33867:	1d 
  a33868:	62 91 7c 48 28 ca    	vmovaps zmm1,zmm26
  a3386e:	62 f2 55 48 7f 4c 24 	vpermt2ps zmm1,zmm5,ZMMWORD PTR [rsp+0x280]
  a33875:	0a 
  a33876:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x40]
  a3387d:	01 
  a3387e:	62 61 7c 48 10 74 24 	vmovups zmm30,ZMMWORD PTR [rsp+0x4c0]
  a33885:	13 
  a33886:	62 92 55 48 7f d6    	vpermt2ps zmm2,zmm5,zmm30
  a3388c:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0xb00],zmm2
  a33893:	2c 
  a33894:	62 62 55 48 7f 44 24 	vpermt2ps zmm24,zmm5,ZMMWORD PTR [rsp+0x380]
  a3389b:	0e 
  a3389c:	62 61 7c 48 10 6c 24 	vmovups zmm29,ZMMWORD PTR [rsp+0x1c0]
  a338a3:	07 
  a338a4:	62 91 7c 48 28 e5    	vmovaps zmm4,zmm29
  a338aa:	62 e1 7c 48 10 5c 24 	vmovups zmm19,ZMMWORD PTR [rsp+0x880]
  a338b1:	22 
  a338b2:	62 b2 55 48 7f e3    	vpermt2ps zmm4,zmm5,zmm19
  a338b8:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0xa40],zmm4
  a338bf:	29 
  a338c0:	62 e1 7c 48 10 4c 24 	vmovups zmm17,ZMMWORD PTR [rsp+0x7c0]
  a338c7:	1f 
  a338c8:	62 22 55 48 7f e1    	vpermt2ps zmm28,zmm5,zmm17
  a338ce:	62 11 7c 48 28 c7    	vmovaps zmm8,zmm31
  a338d4:	c4 41 28 57 d2       	vxorps xmm10,xmm10,xmm10
  a338d9:	62 52 55 48 7f c2    	vpermt2ps zmm8,zmm5,zmm10
  a338df:	62 51 7c 48 28 d8    	vmovaps zmm11,zmm8
  a338e5:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x980],zmm8
  a338ec:	26 
  a338ed:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x840],zmm7
  a338f4:	21 
  a338f5:	62 71 7c 48 28 d7    	vmovaps zmm10,zmm7
  a338fb:	62 71 7c 48 28 2d 3b 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff69363b]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a33902:	36 69 ff 
  a33905:	62 72 15 48 7f d0    	vpermt2ps zmm10,zmm13,zmm0
  a3390b:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm10
  a33912:	12 
  a33913:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x700],zmm1
  a3391a:	1c 
  a3391b:	62 f2 15 48 7f ca    	vpermt2ps zmm1,zmm13,zmm2
  a33921:	62 71 7c 48 28 c1    	vmovaps zmm8,zmm1
  a33927:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm1
  a3392e:	11 
  a3392f:	62 91 7c 48 28 f8    	vmovaps zmm7,zmm24
  a33935:	62 61 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xa80],zmm24
  a3393c:	2a 
  a3393d:	62 f2 15 48 7f fc    	vpermt2ps zmm7,zmm13,zmm4
  a33943:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm7
  a3394a:	10 
  a3394b:	62 91 7c 48 28 f4    	vmovaps zmm6,zmm28
  a33951:	62 61 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x9c0],zmm28
  a33958:	27 
  a33959:	62 d2 15 48 7f f3    	vpermt2ps zmm6,zmm13,zmm11
  a3395f:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x8c0],zmm6
  a33966:	23 
  a33967:	62 b1 7c 48 28 d2    	vmovaps zmm2,zmm18
  a3396d:	62 a1 7c 48 28 ea    	vmovaps zmm21,zmm18
  a33973:	62 d2 55 48 7f d7    	vpermt2ps zmm2,zmm5,zmm15
  a33979:	62 f1 7c 48 11 14 24 	vmovups ZMMWORD PTR [rsp],zmm2
  a33980:	62 51 7c 48 28 df    	vmovaps zmm11,zmm15
  a33986:	62 21 7c 48 28 c6    	vmovaps zmm24,zmm22
  a3398c:	62 e1 7c 48 10 54 24 	vmovups zmm18,ZMMWORD PTR [rsp+0x100]
  a33993:	04 
  a33994:	62 a2 55 48 7f f2    	vpermt2ps zmm22,zmm5,zmm18
  a3399a:	62 e1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0xa00],zmm22
  a339a1:	28 
  a339a2:	62 b2 15 48 7f d6    	vpermt2ps zmm2,zmm13,zmm22
  a339a8:	62 e1 7c 48 28 f2    	vmovaps zmm22,zmm2
  a339ae:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm2
  a339b5:	17 
  a339b6:	62 11 7c 48 28 fb    	vmovaps zmm15,zmm27
  a339bc:	62 42 55 48 7f dc    	vpermt2ps zmm27,zmm5,zmm12
  a339c2:	62 b1 7c 48 28 c4    	vmovaps zmm0,zmm20
  a339c8:	62 b2 55 48 7f c7    	vpermt2ps zmm0,zmm5,zmm23
  a339ce:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x940],zmm0
  a339d5:	25 
  a339d6:	62 91 7c 48 28 db    	vmovaps zmm3,zmm27
  a339dc:	62 f2 15 48 7f d8    	vpermt2ps zmm3,zmm13,zmm0
  a339e2:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm3
  a339e9:	16 
  a339ea:	62 d1 7c 48 28 c9    	vmovaps zmm1,zmm9
  a339f0:	62 41 7c 48 28 f9    	vmovaps zmm31,zmm9
  a339f6:	62 61 7c 48 10 64 24 	vmovups zmm28,ZMMWORD PTR [rsp+0x800]
  a339fd:	20 
  a339fe:	62 92 55 48 7f cc    	vpermt2ps zmm1,zmm5,zmm28
  a33a04:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x900],zmm1
  a33a0b:	24 
  a33a0c:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x80]
  a33a13:	02 
  a33a14:	62 e1 7c 48 28 c0    	vmovaps zmm16,zmm0
  a33a1a:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp+0x780]
  a33a21:	1e 
  a33a22:	62 d2 55 48 7f c1    	vpermt2ps zmm0,zmm5,zmm9
  a33a28:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm0
  a33a2f:	02 
  a33a30:	62 f2 15 48 7f c8    	vpermt2ps zmm1,zmm13,zmm0
  a33a36:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm1
  a33a3d:	15 
  a33a3e:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x80]
  a33a45:	fe 
  a33a46:	62 61 7c 48 28 d0    	vmovaps zmm26,zmm0
  a33a4c:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0xac0]
  a33a53:	2b 
  a33a54:	62 f2 55 48 7f c4    	vpermt2ps zmm0,zmm5,zmm4
  a33a5a:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a33a61:	fe 
  a33a62:	62 11 7c 48 28 f1    	vmovaps zmm14,zmm25
  a33a68:	c5 e8 57 d2          	vxorps xmm2,xmm2,xmm2
  a33a6c:	62 62 55 48 7f ca    	vpermt2ps zmm25,zmm5,zmm2
  a33a72:	62 92 15 48 7f c1    	vpermt2ps zmm0,zmm13,zmm25
  a33a78:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm0
  a33a7f:	14 
  a33a80:	62 f1 cd 40 15 d3    	vunpckhpd zmm2,zmm22,zmm3
  a33a86:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm2
  a33a8d:	0c 
  a33a8e:	62 f1 f5 48 15 e8    	vunpckhpd zmm5,zmm1,zmm0
  a33a94:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm5
  a33a9b:	0b 
  a33a9c:	62 e1 7c 48 28 35 5a 	vmovaps zmm22,ZMMWORD PTR [rip+0xffffffffff69335a]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a33aa3:	33 69 ff 
  a33aa6:	62 f2 4d 40 7f d5    	vpermt2ps zmm2,zmm22,zmm5
  a33aac:	62 d1 ad 48 15 e8    	vunpckhpd zmm5,zmm10,zmm8
  a33ab2:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x680],zmm5
  a33ab9:	1a 
  a33aba:	62 f1 c5 48 15 ce    	vunpckhpd zmm1,zmm7,zmm6
  a33ac0:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x640],zmm1
  a33ac7:	19 
  a33ac8:	62 f2 4d 40 7f e9    	vpermt2ps zmm5,zmm22,zmm1
  a33ace:	62 f1 7c 48 10 79 0d 	vmovups zmm7,ZMMWORD PTR [rcx+0x340]
  a33ad5:	62 71 7c 48 10 41 0c 	vmovups zmm8,ZMMWORD PTR [rcx+0x300]
  a33adc:	62 d1 54 48 59 c8    	vmulps zmm1,zmm5,zmm8
  a33ae2:	62 f2 6d 48 b8 cf    	vfmadd231ps zmm1,zmm2,zmm7
  a33ae8:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm1
  a33aef:	06 
  a33af0:	62 d1 6c 48 59 c8    	vmulps zmm1,zmm2,zmm8
  a33af6:	62 f2 45 48 bc cd    	vfnmadd231ps zmm1,zmm7,zmm5
  a33afc:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm1
  a33b03:	0f 
  a33b04:	62 f1 7c 48 28 0d b2 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff6934b2]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a33b0b:	34 69 ff 
  a33b0e:	62 c2 75 48 7f eb    	vpermt2ps zmm21,zmm1,zmm11
  a33b14:	62 22 75 48 7f c2    	vpermt2ps zmm24,zmm1,zmm18
  a33b1a:	62 52 75 48 7f fc    	vpermt2ps zmm15,zmm1,zmm12
  a33b20:	62 a2 75 48 7f e7    	vpermt2ps zmm20,zmm1,zmm23
  a33b26:	62 02 75 48 7f fc    	vpermt2ps zmm31,zmm1,zmm28
  a33b2c:	62 c2 75 48 7f c1    	vpermt2ps zmm16,zmm1,zmm9
  a33b32:	62 62 75 48 7f d4    	vpermt2ps zmm26,zmm1,zmm4
  a33b38:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0xc0]
  a33b3f:	03 
  a33b40:	62 f2 75 48 7f 44 24 	vpermt2ps zmm0,zmm1,ZMMWORD PTR [rsp+0x600]
  a33b47:	18 
  a33b48:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp-0x40]
  a33b4f:	ff 
  a33b50:	62 f2 75 48 7f 54 24 	vpermt2ps zmm2,zmm1,ZMMWORD PTR [rsp+0x340]
  a33b57:	0d 
  a33b58:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm2
  a33b5f:	ff 
  a33b60:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x240]
  a33b67:	09 
  a33b68:	62 f2 75 48 7f 5c 24 	vpermt2ps zmm3,zmm1,ZMMWORD PTR [rsp+0x280]
  a33b6f:	0a 
  a33b70:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x40]
  a33b77:	01 
  a33b78:	62 92 75 48 7f ee    	vpermt2ps zmm5,zmm1,zmm30
  a33b7e:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm5
  a33b85:	01 
  a33b86:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp+0x6c0]
  a33b8d:	1b 
  a33b8e:	62 72 75 48 7f 44 24 	vpermt2ps zmm8,zmm1,ZMMWORD PTR [rsp+0x380]
  a33b95:	0e 
  a33b96:	62 91 7c 48 28 fd    	vmovaps zmm7,zmm29
  a33b9c:	62 b2 75 48 7f fb    	vpermt2ps zmm7,zmm1,zmm19
  a33ba2:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm7
  a33ba9:	07 
  a33baa:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x200]
  a33bb1:	08 
  a33bb2:	62 b2 75 48 7f f1    	vpermt2ps zmm6,zmm1,zmm17
  a33bb8:	c5 d8 57 e4          	vxorps xmm4,xmm4,xmm4
  a33bbc:	62 72 75 48 7f f4    	vpermt2ps zmm14,zmm1,zmm4
  a33bc2:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp+0x140]
  a33bc9:	05 
  a33bca:	62 72 75 48 7f cc    	vpermt2ps zmm9,zmm1,zmm4
  a33bd0:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm9
  a33bd7:	05 
  a33bd8:	62 71 7c 48 28 d0    	vmovaps zmm10,zmm0
  a33bde:	62 f2 15 48 7f c2    	vpermt2ps zmm0,zmm13,zmm2
  a33be4:	62 f1 7c 48 28 c8    	vmovaps zmm1,zmm0
  a33bea:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm0
  a33bf1:	03 
  a33bf2:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a33bf8:	62 61 7c 48 28 eb    	vmovaps zmm29,zmm3
  a33bfe:	62 f2 15 48 7f c5    	vpermt2ps zmm0,zmm13,zmm5
  a33c04:	62 f1 7c 48 28 d0    	vmovaps zmm2,zmm0
  a33c0a:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm0
  a33c11:	09 
  a33c12:	62 d1 7c 48 28 c0    	vmovaps zmm0,zmm8
  a33c18:	62 f2 15 48 7f c7    	vpermt2ps zmm0,zmm13,zmm7
  a33c1e:	62 f1 7c 48 28 d8    	vmovaps zmm3,zmm0
  a33c24:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x6c0],zmm0
  a33c2b:	1b 
  a33c2c:	62 f1 7c 48 28 c6    	vmovaps zmm0,zmm6
  a33c32:	62 f1 7c 48 28 fe    	vmovaps zmm7,zmm6
  a33c38:	62 d2 15 48 7f c1    	vpermt2ps zmm0,zmm13,zmm9
  a33c3e:	62 f1 7c 48 28 e0    	vmovaps zmm4,zmm0
  a33c44:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm0
  a33c4b:	08 
  a33c4c:	62 31 7c 48 28 dd    	vmovaps zmm11,zmm21
  a33c52:	62 82 15 48 7f e8    	vpermt2ps zmm21,zmm13,zmm24
  a33c58:	62 41 7c 48 28 f7    	vmovaps zmm30,zmm15
  a33c5e:	62 32 15 48 7f fc    	vpermt2ps zmm15,zmm13,zmm20
  a33c64:	62 91 7c 48 28 f7    	vmovaps zmm6,zmm31
  a33c6a:	62 22 15 48 7f f8    	vpermt2ps zmm31,zmm13,zmm16
  a33c70:	62 91 7c 48 28 ea    	vmovaps zmm5,zmm26
  a33c76:	62 42 15 48 7f d6    	vpermt2ps zmm26,zmm13,zmm14
  a33c7c:	62 c1 d5 40 15 cf    	vunpckhpd zmm17,zmm21,zmm15
  a33c82:	62 e1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x880],zmm17
  a33c89:	22 
  a33c8a:	62 91 85 40 15 c2    	vunpckhpd zmm0,zmm31,zmm26
  a33c90:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm0
  a33c97:	0a 
  a33c98:	62 e2 4d 40 7f c8    	vpermt2ps zmm17,zmm22,zmm0
  a33c9e:	62 e1 f5 48 15 da    	vunpckhpd zmm19,zmm1,zmm2
  a33ca4:	62 e1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm19
  a33cab:	13 
  a33cac:	62 f1 e5 48 15 c4    	vunpckhpd zmm0,zmm3,zmm4
  a33cb2:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x600],zmm0
  a33cb9:	18 
  a33cba:	62 e2 4d 40 7f d8    	vpermt2ps zmm19,zmm22,zmm0
  a33cc0:	62 f1 7c 48 10 49 1d 	vmovups zmm1,ZMMWORD PTR [rcx+0x740]
  a33cc7:	62 f1 7c 48 10 41 1c 	vmovups zmm0,ZMMWORD PTR [rcx+0x700]
  a33cce:	62 f1 64 40 59 d0    	vmulps zmm2,zmm19,zmm0
  a33cd4:	62 f2 75 40 b8 d1    	vfmadd231ps zmm2,zmm17,zmm1
  a33cda:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm2
  a33ce1:	04 
  a33ce2:	62 f1 74 40 59 c0    	vmulps zmm0,zmm17,zmm0
  a33ce8:	62 b2 75 48 bc c3    	vfnmadd231ps zmm0,zmm1,zmm19
  a33cee:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm0
  a33cf5:	0e 
  a33cf6:	62 f1 7c 48 28 15 00 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff693200]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a33cfd:	32 69 ff 
  a33d00:	62 e1 7c 48 10 4c 24 	vmovups zmm17,ZMMWORD PTR [rsp+0x840]
  a33d07:	21 
  a33d08:	62 e2 6d 48 7f 4c 24 	vpermt2ps zmm17,zmm2,ZMMWORD PTR [rsp+0x740]
  a33d0f:	1d 
  a33d10:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x700]
  a33d17:	1c 
  a33d18:	62 f2 6d 48 7f 4c 24 	vpermt2ps zmm1,zmm2,ZMMWORD PTR [rsp+0xb00]
  a33d1f:	2c 
  a33d20:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0xa80]
  a33d27:	2a 
  a33d28:	62 f2 6d 48 7f 5c 24 	vpermt2ps zmm3,zmm2,ZMMWORD PTR [rsp+0xa40]
  a33d2f:	29 
  a33d30:	62 61 7c 48 10 64 24 	vmovups zmm28,ZMMWORD PTR [rsp+0x9c0]
  a33d37:	27 
  a33d38:	62 62 6d 48 7f 64 24 	vpermt2ps zmm28,zmm2,ZMMWORD PTR [rsp+0x980]
  a33d3f:	26 
  a33d40:	62 71 7c 48 10 2c 24 	vmovups zmm13,ZMMWORD PTR [rsp]
  a33d47:	62 72 6d 48 7f 6c 24 	vpermt2ps zmm13,zmm2,ZMMWORD PTR [rsp+0xa00]
  a33d4e:	28 
  a33d4f:	62 71 7c 48 11 2c 24 	vmovups ZMMWORD PTR [rsp],zmm13
  a33d56:	62 62 6d 48 7f 5c 24 	vpermt2ps zmm27,zmm2,ZMMWORD PTR [rsp+0x940]
  a33d5d:	25 
  a33d5e:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp+0x900]
  a33d65:	24 
  a33d66:	62 72 6d 48 7f 4c 24 	vpermt2ps zmm9,zmm2,ZMMWORD PTR [rsp+0x80]
  a33d6d:	02 
  a33d6e:	62 71 7c 48 10 64 24 	vmovups zmm12,ZMMWORD PTR [rsp-0x80]
  a33d75:	fe 
  a33d76:	62 12 6d 48 7f e1    	vpermt2ps zmm12,zmm2,zmm25
  a33d7c:	62 71 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm12
  a33d83:	fe 
  a33d84:	62 61 f5 40 15 c9    	vunpckhpd zmm25,zmm17,zmm1
  a33d8a:	62 e1 7c 48 28 f9    	vmovaps zmm23,zmm1
  a33d90:	62 91 e5 48 15 cc    	vunpckhpd zmm1,zmm3,zmm28
  a33d96:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x740],zmm1
  a33d9d:	1d 
  a33d9e:	62 f1 7c 48 28 e3    	vmovaps zmm4,zmm3
  a33da4:	62 91 7c 48 28 c1    	vmovaps zmm0,zmm25
  a33daa:	62 f2 4d 40 7f c1    	vpermt2ps zmm0,zmm22,zmm1
  a33db0:	62 11 95 48 15 eb    	vunpckhpd zmm13,zmm13,zmm27
  a33db6:	62 c1 b5 48 15 d4    	vunpckhpd zmm18,zmm9,zmm12
  a33dbc:	62 e1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x700],zmm18
  a33dc3:	1c 
  a33dc4:	62 51 7c 48 28 e1    	vmovaps zmm12,zmm9
  a33dca:	62 d1 7c 48 28 cd    	vmovaps zmm1,zmm13
  a33dd0:	62 b2 4d 40 7f ca    	vpermt2ps zmm1,zmm22,zmm18
  a33dd6:	62 a1 7c 48 28 d6    	vmovaps zmm18,zmm22
  a33ddc:	62 e1 7c 48 10 59 04 	vmovups zmm19,ZMMWORD PTR [rcx+0x100]
  a33de3:	62 f1 7c 48 10 59 05 	vmovups zmm3,ZMMWORD PTR [rcx+0x140]
  a33dea:	62 a1 74 48 59 f3    	vmulps zmm22,zmm1,zmm19
  a33df0:	62 e2 7d 48 bc f3    	vfnmadd231ps zmm22,zmm0,zmm3
  a33df6:	62 e1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm22
  a33dfd:	0d 
  a33dfe:	62 b1 7c 48 59 c3    	vmulps zmm0,zmm0,zmm19
  a33e04:	62 f2 65 48 b8 c1    	vfmadd231ps zmm0,zmm3,zmm1
  a33e0a:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm0
  a33e11:	02 
  a33e12:	62 12 6d 48 7f d8    	vpermt2ps zmm11,zmm2,zmm24
  a33e18:	62 22 6d 48 7f f4    	vpermt2ps zmm30,zmm2,zmm20
  a33e1e:	62 b2 6d 48 7f f0    	vpermt2ps zmm6,zmm2,zmm16
  a33e24:	62 d2 6d 48 7f ee    	vpermt2ps zmm5,zmm2,zmm14
  a33e2a:	62 72 6d 48 7f 54 24 	vpermt2ps zmm10,zmm2,ZMMWORD PTR [rsp-0x40]
  a33e31:	ff 
  a33e32:	62 62 6d 48 7f 6c 24 	vpermt2ps zmm29,zmm2,ZMMWORD PTR [rsp+0x40]
  a33e39:	01 
  a33e3a:	62 72 6d 48 7f 44 24 	vpermt2ps zmm8,zmm2,ZMMWORD PTR [rsp+0x1c0]
  a33e41:	07 
  a33e42:	62 f2 6d 48 7f 7c 24 	vpermt2ps zmm7,zmm2,ZMMWORD PTR [rsp+0x140]
  a33e49:	05 
  a33e4a:	62 01 ad 48 15 c5    	vunpckhpd zmm24,zmm10,zmm29
  a33e50:	62 f1 bd 48 15 cf    	vunpckhpd zmm1,zmm8,zmm7
  a33e56:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x780],zmm1
  a33e5d:	1e 
  a33e5e:	62 91 7c 48 28 c0    	vmovaps zmm0,zmm24
  a33e64:	62 f2 6d 40 7f c1    	vpermt2ps zmm0,zmm18,zmm1
  a33e6a:	62 91 a5 48 15 ce    	vunpckhpd zmm1,zmm11,zmm30
  a33e70:	62 71 cd 48 15 cd    	vunpckhpd zmm9,zmm6,zmm5
  a33e76:	62 f1 7c 48 28 d1    	vmovaps zmm2,zmm1
  a33e7c:	62 d2 6d 40 7f d1    	vpermt2ps zmm2,zmm18,zmm9
  a33e82:	62 e1 7c 48 10 59 15 	vmovups zmm19,ZMMWORD PTR [rcx+0x540]
  a33e89:	62 e1 7c 48 10 61 14 	vmovups zmm20,ZMMWORD PTR [rcx+0x500]
  a33e90:	62 b1 6c 48 59 dc    	vmulps zmm3,zmm2,zmm20
  a33e96:	62 b2 7d 48 bc db    	vfnmadd231ps zmm3,zmm0,zmm19
  a33e9c:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm3
  a33ea3:	01 
  a33ea4:	62 b1 7c 48 59 c4    	vmulps zmm0,zmm0,zmm20
  a33eaa:	62 f2 65 40 b8 c2    	vfmadd231ps zmm0,zmm19,zmm2
  a33eb0:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm0
  a33eb7:	ff 
  a33eb8:	62 b1 f5 40 14 c7    	vunpcklpd zmm0,zmm17,zmm23
  a33ebe:	62 91 dd 48 14 d4    	vunpcklpd zmm2,zmm4,zmm28
  a33ec4:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm2
  a33ecb:	07 
  a33ecc:	62 f1 7c 48 10 1c 24 	vmovups zmm3,ZMMWORD PTR [rsp]
  a33ed3:	62 11 e5 48 14 f3    	vunpcklpd zmm14,zmm3,zmm27
  a33ed9:	62 f1 9d 48 14 64 24 	vunpcklpd zmm4,zmm12,ZMMWORD PTR [rsp-0x80]
  a33ee0:	fe 
  a33ee1:	62 f1 7c 48 11 24 24 	vmovups ZMMWORD PTR [rsp],zmm4
  a33ee8:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm0
  a33eef:	05 
  a33ef0:	62 e1 7c 48 28 35 46 	vmovaps zmm22,ZMMWORD PTR [rip+0xffffffffff692f46]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a33ef7:	2f 69 ff 
  a33efa:	62 f2 4d 40 7f c2    	vpermt2ps zmm0,zmm22,zmm2
  a33f00:	62 d1 7c 48 28 d6    	vmovaps zmm2,zmm14
  a33f06:	62 f2 4d 40 7f d4    	vpermt2ps zmm2,zmm22,zmm4
  a33f0c:	62 71 7c 48 10 61 02 	vmovups zmm12,ZMMWORD PTR [rcx+0x80]
  a33f13:	62 e1 7c 48 10 41 03 	vmovups zmm16,ZMMWORD PTR [rcx+0xc0]
  a33f1a:	62 d1 6c 48 59 dc    	vmulps zmm3,zmm2,zmm12
  a33f20:	62 b2 7d 48 bc d8    	vfnmadd231ps zmm3,zmm0,zmm16
  a33f26:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm3
  a33f2d:	fe 
  a33f2e:	62 d1 7c 48 59 c4    	vmulps zmm0,zmm0,zmm12
  a33f34:	62 f2 7d 40 b8 c2    	vfmadd231ps zmm0,zmm16,zmm2
  a33f3a:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x840],zmm0
  a33f41:	21 
  a33f42:	62 91 a5 48 14 c6    	vunpcklpd zmm0,zmm11,zmm30
  a33f48:	62 f1 cd 48 14 ed    	vunpcklpd zmm5,zmm6,zmm5
  a33f4e:	62 91 ad 48 14 d5    	vunpcklpd zmm2,zmm10,zmm29
  a33f54:	62 61 bd 48 14 df    	vunpcklpd zmm27,zmm8,zmm7
  a33f5a:	62 f1 7c 48 28 fa    	vmovaps zmm7,zmm2
  a33f60:	62 92 4d 40 7f d3    	vpermt2ps zmm2,zmm22,zmm27
  a33f66:	62 61 7c 48 28 e8    	vmovaps zmm29,zmm0
  a33f6c:	62 f2 4d 40 7f c5    	vpermt2ps zmm0,zmm22,zmm5
  a33f72:	62 f1 7c 48 10 71 13 	vmovups zmm6,ZMMWORD PTR [rcx+0x4c0]
  a33f79:	62 71 7c 48 10 41 12 	vmovups zmm8,ZMMWORD PTR [rcx+0x480]
  a33f80:	62 d1 7c 48 59 d8    	vmulps zmm3,zmm0,zmm8
  a33f86:	62 f2 6d 48 bc de    	vfnmadd231ps zmm3,zmm2,zmm6
  a33f8c:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x7c0],zmm3
  a33f93:	1f 
  a33f94:	62 d1 6c 48 59 d0    	vmulps zmm2,zmm2,zmm8
  a33f9a:	62 f2 4d 48 b8 d0    	vfmadd231ps zmm2,zmm6,zmm0
  a33fa0:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x800],zmm2
  a33fa7:	20 
  a33fa8:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0xc0]
  a33faf:	03 
  a33fb0:	62 f1 fd 48 14 44 24 	vunpcklpd zmm0,zmm0,ZMMWORD PTR [rsp+0x240]
  a33fb7:	09 
  a33fb8:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x6c0]
  a33fbf:	1b 
  a33fc0:	62 f1 ed 48 14 74 24 	vunpcklpd zmm6,zmm2,ZMMWORD PTR [rsp+0x200]
  a33fc7:	08 
  a33fc8:	62 d1 d5 40 14 d7    	vunpcklpd zmm2,zmm21,zmm15
  a33fce:	62 91 85 40 14 da    	vunpcklpd zmm3,zmm31,zmm26
  a33fd4:	62 71 7c 48 28 d2    	vmovaps zmm10,zmm2
  a33fda:	62 f2 4d 40 7f d3    	vpermt2ps zmm2,zmm22,zmm3
  a33fe0:	62 71 7c 48 28 f8    	vmovaps zmm15,zmm0
  a33fe6:	62 f2 4d 40 7f c6    	vpermt2ps zmm0,zmm22,zmm6
  a33fec:	62 71 7c 48 10 59 1b 	vmovups zmm11,ZMMWORD PTR [rcx+0x6c0]
  a33ff3:	62 71 7c 48 10 61 1a 	vmovups zmm12,ZMMWORD PTR [rcx+0x680]
  a33ffa:	62 d1 7c 48 59 e4    	vmulps zmm4,zmm0,zmm12
  a34000:	62 d2 6d 48 b8 e3    	vfmadd231ps zmm4,zmm2,zmm11
  a34006:	62 e1 7c 48 28 e4    	vmovaps zmm20,zmm4
  a3400c:	62 d1 6c 48 59 d4    	vmulps zmm2,zmm2,zmm12
  a34012:	62 f2 25 48 bc d0    	vfnmadd231ps zmm2,zmm11,zmm0
  a34018:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm2
  a3401f:	03 
  a34020:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x480]
  a34027:	12 
  a34028:	62 71 fd 48 14 5c 24 	vunpcklpd zmm11,zmm0,ZMMWORD PTR [rsp+0x440]
  a3402f:	11 
  a34030:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x400]
  a34037:	10 
  a34038:	62 71 fd 48 14 64 24 	vunpcklpd zmm12,zmm0,ZMMWORD PTR [rsp+0x8c0]
  a3403f:	23 
  a34040:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x5c0]
  a34047:	17 
  a34048:	62 e1 fd 48 14 44 24 	vunpcklpd zmm16,zmm0,ZMMWORD PTR [rsp+0x580]
  a3404f:	16 
  a34050:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x540]
  a34057:	15 
  a34058:	62 e1 fd 48 14 6c 24 	vunpcklpd zmm21,zmm0,ZMMWORD PTR [rsp+0x500]
  a3405f:	14 
  a34060:	62 b1 7c 48 28 d0    	vmovaps zmm2,zmm16
  a34066:	62 a2 4d 40 7f c5    	vpermt2ps zmm16,zmm22,zmm21
  a3406c:	62 d1 7c 48 28 c3    	vmovaps zmm0,zmm11
  a34072:	62 52 4d 40 7f dc    	vpermt2ps zmm11,zmm22,zmm12
  a34078:	62 e1 7c 48 10 51 0b 	vmovups zmm18,ZMMWORD PTR [rcx+0x2c0]
  a3407f:	62 e1 7c 48 10 59 0a 	vmovups zmm19,ZMMWORD PTR [rcx+0x280]
  a34086:	62 b1 24 48 59 e3    	vmulps zmm4,zmm11,zmm19
  a3408c:	62 b2 7d 40 b8 e2    	vfmadd231ps zmm4,zmm16,zmm18
  a34092:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm4
  a34099:	09 
  a3409a:	62 b1 7c 40 59 e3    	vmulps zmm4,zmm16,zmm19
  a340a0:	62 d2 6d 40 bc e3    	vfnmadd231ps zmm4,zmm18,zmm11
  a340a6:	62 e1 7c 48 28 c4    	vmovaps zmm16,zmm4
  a340ac:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x8c0],zmm4
  a340b3:	23 
  a340b4:	62 62 4d 40 7f 4c 24 	vpermt2ps zmm25,zmm22,ZMMWORD PTR [rsp+0x740]
  a340bb:	1d 
  a340bc:	62 72 4d 40 7f 6c 24 	vpermt2ps zmm13,zmm22,ZMMWORD PTR [rsp+0x700]
  a340c3:	1c 
  a340c4:	62 71 7c 48 10 59 07 	vmovups zmm11,ZMMWORD PTR [rcx+0x1c0]
  a340cb:	62 e1 7c 48 10 49 06 	vmovups zmm17,ZMMWORD PTR [rcx+0x180]
  a340d2:	62 b1 14 48 59 e1    	vmulps zmm4,zmm13,zmm17
  a340d8:	62 d2 35 40 bc e3    	vfnmadd231ps zmm4,zmm25,zmm11
  a340de:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm4
  a340e5:	08 
  a340e6:	62 b1 34 40 59 e1    	vmulps zmm4,zmm25,zmm17
  a340ec:	62 d2 25 48 b8 e5    	vfmadd231ps zmm4,zmm11,zmm13
  a340f2:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm4
  a340f9:	15 
  a340fa:	62 62 4d 40 7f 44 24 	vpermt2ps zmm24,zmm22,ZMMWORD PTR [rsp+0x780]
  a34101:	1e 
  a34102:	62 d2 4d 40 7f c9    	vpermt2ps zmm1,zmm22,zmm9
  a34108:	62 71 7c 48 10 59 17 	vmovups zmm11,ZMMWORD PTR [rcx+0x5c0]
  a3410f:	62 71 7c 48 10 49 16 	vmovups zmm9,ZMMWORD PTR [rcx+0x580]
  a34116:	62 41 74 48 59 f1    	vmulps zmm30,zmm1,zmm9
  a3411c:	62 42 3d 40 bc f3    	vfnmadd231ps zmm30,zmm24,zmm11
  a34122:	62 41 3c 40 59 d1    	vmulps zmm26,zmm24,zmm9
  a34128:	62 62 25 48 b8 d1    	vfmadd231ps zmm26,zmm11,zmm1
  a3412e:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x880]
  a34135:	22 
  a34136:	62 f2 4d 40 7f 64 24 	vpermt2ps zmm4,zmm22,ZMMWORD PTR [rsp+0x280]
  a3413d:	0a 
  a3413e:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp+0x4c0]
  a34145:	13 
  a34146:	62 72 4d 40 7f 4c 24 	vpermt2ps zmm9,zmm22,ZMMWORD PTR [rsp+0x600]
  a3414d:	18 
  a3414e:	62 f1 7c 48 10 49 1f 	vmovups zmm1,ZMMWORD PTR [rcx+0x7c0]
  a34155:	62 71 7c 48 10 59 1e 	vmovups zmm11,ZMMWORD PTR [rcx+0x780]
  a3415c:	62 41 34 48 59 c3    	vmulps zmm24,zmm9,zmm11
  a34162:	62 62 5d 48 b8 c1    	vfmadd231ps zmm24,zmm4,zmm1
  a34168:	62 c1 5c 48 59 fb    	vmulps zmm23,zmm4,zmm11
  a3416e:	62 c2 75 48 bc f9    	vfnmadd231ps zmm23,zmm1,zmm9
  a34174:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x300]
  a3417b:	0c 
  a3417c:	62 f2 4d 40 7f 64 24 	vpermt2ps zmm4,zmm22,ZMMWORD PTR [rsp+0x2c0]
  a34183:	0b 
  a34184:	62 71 7c 48 10 6c 24 	vmovups zmm13,ZMMWORD PTR [rsp+0x680]
  a3418b:	1a 
  a3418c:	62 72 4d 40 7f 6c 24 	vpermt2ps zmm13,zmm22,ZMMWORD PTR [rsp+0x640]
  a34193:	19 
  a34194:	62 f1 7c 48 10 49 0f 	vmovups zmm1,ZMMWORD PTR [rcx+0x3c0]
  a3419b:	62 71 7c 48 10 59 0e 	vmovups zmm11,ZMMWORD PTR [rcx+0x380]
  a341a2:	62 41 14 48 59 e3    	vmulps zmm28,zmm13,zmm11
  a341a8:	62 62 5d 48 b8 e1    	vfmadd231ps zmm28,zmm4,zmm1
  a341ae:	62 c1 5c 48 59 db    	vmulps zmm19,zmm4,zmm11
  a341b4:	62 c2 75 48 bc dd    	vfnmadd231ps zmm19,zmm1,zmm13
  a341ba:	62 71 7c 48 28 1d 3c 	vmovaps zmm11,ZMMWORD PTR [rip+0xffffffffff692c3c]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a341c1:	2c 69 ff 
  a341c4:	62 62 25 48 7f ed    	vpermt2ps zmm29,zmm11,zmm5
  a341ca:	62 92 25 48 7f fb    	vpermt2ps zmm7,zmm11,zmm27
  a341d0:	62 f1 7c 48 10 49 11 	vmovups zmm1,ZMMWORD PTR [rcx+0x440]
  a341d7:	62 f1 7c 48 10 61 10 	vmovups zmm4,ZMMWORD PTR [rcx+0x400]
  a341de:	62 e1 44 48 59 d4    	vmulps zmm18,zmm7,zmm4
  a341e4:	62 e2 15 40 b8 d1    	vfmadd231ps zmm18,zmm29,zmm1
  a341ea:	62 61 14 40 59 ec    	vmulps zmm29,zmm29,zmm4
  a341f0:	62 62 75 48 bc ef    	vfnmadd231ps zmm29,zmm1,zmm7
  a341f6:	62 d2 25 48 7f c4    	vpermt2ps zmm0,zmm11,zmm12
  a341fc:	62 b2 25 48 7f d5    	vpermt2ps zmm2,zmm11,zmm21
  a34202:	62 f1 7c 48 10 49 09 	vmovups zmm1,ZMMWORD PTR [rcx+0x240]
  a34209:	62 f1 7c 48 10 61 08 	vmovups zmm4,ZMMWORD PTR [rcx+0x200]
  a34210:	62 61 6c 48 59 fc    	vmulps zmm31,zmm2,zmm4
  a34216:	62 62 7d 48 bc f9    	vfnmadd231ps zmm31,zmm0,zmm1
  a3421c:	62 61 7c 48 59 dc    	vmulps zmm27,zmm0,zmm4
  a34222:	62 62 75 48 b8 da    	vfmadd231ps zmm27,zmm1,zmm2
  a34228:	62 72 25 48 7f fe    	vpermt2ps zmm15,zmm11,zmm6
  a3422e:	62 72 25 48 7f d3    	vpermt2ps zmm10,zmm11,zmm3
  a34234:	62 f1 7c 48 10 49 19 	vmovups zmm1,ZMMWORD PTR [rcx+0x640]
  a3423b:	62 f1 7c 48 10 51 18 	vmovups zmm2,ZMMWORD PTR [rcx+0x600]
  a34242:	62 71 2c 48 59 c2    	vmulps zmm8,zmm10,zmm2
  a34248:	62 72 05 48 bc c1    	vfnmadd231ps zmm8,zmm15,zmm1
  a3424e:	62 f1 04 48 59 da    	vmulps zmm3,zmm15,zmm2
  a34254:	62 d2 75 48 b8 da    	vfmadd231ps zmm3,zmm1,zmm10
  a3425a:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x140]
  a34261:	05 
  a34262:	62 f2 25 48 7f 64 24 	vpermt2ps zmm4,zmm11,ZMMWORD PTR [rsp+0x1c0]
  a34269:	07 
  a3426a:	62 72 25 48 7f 34 24 	vpermt2ps zmm14,zmm11,ZMMWORD PTR [rsp]
  a34271:	62 71 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm14
  a34278:	10 
  a34279:	62 e1 7c 48 10 4c 24 	vmovups zmm17,ZMMWORD PTR [rsp+0x340]
  a34280:	0d 
  a34281:	62 71 7c 48 10 5c 24 	vmovups zmm11,ZMMWORD PTR [rsp+0x40]
  a34288:	01 
  a34289:	62 d1 74 40 5c cb    	vsubps zmm1,zmm17,zmm11
  a3428f:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x80]
  a34296:	02 
  a34297:	62 f1 6c 48 5c 54 24 	vsubps zmm2,zmm2,ZMMWORD PTR [rsp-0x40]
  a3429e:	ff 
  a3429f:	62 f1 74 48 58 ea    	vaddps zmm5,zmm1,zmm2
  a342a5:	62 f1 7c 48 11 2c 24 	vmovups ZMMWORD PTR [rsp],zmm5
  a342ac:	62 f1 6c 48 5c c9    	vsubps zmm1,zmm2,zmm1
  a342b2:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x680],zmm1
  a342b9:	1a 
  a342ba:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x180]
  a342c1:	06 
  a342c2:	62 f1 74 48 5c 4c 24 	vsubps zmm1,zmm1,ZMMWORD PTR [rsp+0x100]
  a342c9:	04 
  a342ca:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp+0x3c0]
  a342d1:	0f 
  a342d2:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0x380]
  a342d9:	0e 
  a342da:	62 f1 34 48 5c d7    	vsubps zmm2,zmm9,zmm7
  a342e0:	62 f1 74 48 5c ea    	vsubps zmm5,zmm1,zmm2
  a342e6:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm5
  a342ed:	0c 
  a342ee:	62 f1 6c 48 58 c9    	vaddps zmm1,zmm2,zmm1
  a342f4:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm1
  a342fb:	16 
  a342fc:	62 71 7c 48 10 7c 24 	vmovups zmm15,ZMMWORD PTR [rsp-0x80]
  a34303:	fe 
  a34304:	62 71 7c 48 10 6c 24 	vmovups zmm13,ZMMWORD PTR [rsp+0x7c0]
  a3430b:	1f 
  a3430c:	62 d1 04 48 5c cd    	vsubps zmm1,zmm15,zmm13
  a34312:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm1
  a34319:	0b 
  a3431a:	62 a1 7c 48 28 f4    	vmovaps zmm22,zmm20
  a34320:	62 e1 7c 48 10 64 24 	vmovups zmm20,ZMMWORD PTR [rsp+0x240]
  a34327:	09 
  a34328:	62 b1 5c 40 5c d6    	vsubps zmm2,zmm20,zmm22
  a3432e:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm2
  a34335:	0a 
  a34336:	62 f1 74 48 5c ca    	vsubps zmm1,zmm1,zmm2
  a3433c:	62 71 7c 48 10 74 24 	vmovups zmm14,ZMMWORD PTR [rsp+0x840]
  a34343:	21 
  a34344:	62 71 7c 48 10 64 24 	vmovups zmm12,ZMMWORD PTR [rsp+0x800]
  a3434b:	20 
  a3434c:	62 d1 0c 48 5c d4    	vsubps zmm2,zmm14,zmm12
  a34352:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x600],zmm2
  a34359:	18 
  a3435a:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0xc0]
  a34361:	03 
  a34362:	62 b1 2c 48 5c e8    	vsubps zmm5,zmm10,zmm16
  a34368:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm5
  a3436f:	17 
  a34370:	62 f1 6c 48 5c d5    	vsubps zmm2,zmm2,zmm5
  a34376:	62 e2 7d 48 18 05 80 	vbroadcastss zmm16,DWORD PTR [rip+0xffffffffff641380]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a3437d:	13 64 ff 
  a34380:	62 b1 6c 48 59 e8    	vmulps zmm5,zmm2,zmm16
  a34386:	62 e2 7d 48 18 2d d4 	vbroadcastss zmm21,DWORD PTR [rip+0xffffffffff6412d4]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a3438d:	12 64 ff 
  a34390:	62 b2 75 48 b8 ed    	vfmadd231ps zmm5,zmm1,zmm21
  a34396:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x6c0],zmm5
  a3439d:	1b 
  a3439e:	62 b1 6c 48 59 d5    	vmulps zmm2,zmm2,zmm21
  a343a4:	62 f2 7d 40 bc d1    	vfnmadd231ps zmm2,zmm16,zmm1
  a343aa:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm2
  a343b1:	05 
  a343b2:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x200]
  a343b9:	08 
  a343ba:	62 91 4c 48 5c c6    	vsubps zmm0,zmm6,zmm30
  a343c0:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm0
  a343c7:	14 
  a343c8:	62 91 1c 40 5c c8    	vsubps zmm1,zmm28,zmm24
  a343ce:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm1
  a343d5:	13 
  a343d6:	62 f1 7c 48 5c d1    	vsubps zmm2,zmm0,zmm1
  a343dc:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x540]
  a343e3:	15 
  a343e4:	62 91 74 48 5c ea    	vsubps zmm5,zmm1,zmm26
  a343ea:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm5
  a343f1:	12 
  a343f2:	62 b1 44 40 5c c3    	vsubps zmm0,zmm23,zmm19
  a343f8:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm0
  a343ff:	11 
  a34400:	62 f1 54 48 5c e8    	vsubps zmm5,zmm5,zmm0
  a34406:	62 21 54 48 59 cd    	vmulps zmm25,zmm5,zmm21
  a3440c:	62 22 6d 48 b8 c8    	vfmadd231ps zmm25,zmm2,zmm16
  a34412:	62 61 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm25
  a34419:	07 
  a3441a:	62 21 6c 48 59 cd    	vmulps zmm25,zmm2,zmm21
  a34420:	62 62 7d 40 bc cd    	vfnmadd231ps zmm25,zmm16,zmm5
  a34426:	62 f1 7c 48 28 d4    	vmovaps zmm2,zmm4
  a3442c:	62 b1 5c 48 5c e2    	vsubps zmm4,zmm4,zmm18
  a34432:	62 f1 6c 40 58 d2    	vaddps zmm2,zmm18,zmm2
  a34438:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x640],zmm2
  a3443f:	19 
  a34440:	62 f1 24 40 5c eb    	vsubps zmm5,zmm27,zmm3
  a34446:	62 61 24 40 58 db    	vaddps zmm27,zmm27,zmm3
  a3444c:	62 f1 34 48 58 c7    	vaddps zmm0,zmm9,zmm7
  a34452:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm0
  a34459:	0f 
  a3445a:	62 d1 74 40 58 c3    	vaddps zmm0,zmm17,zmm11
  a34460:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm0
  a34467:	01 
  a34468:	62 91 74 48 58 fa    	vaddps zmm7,zmm1,zmm26
  a3446e:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm7
  a34475:	0d 
  a34476:	62 11 1c 40 58 c8    	vaddps zmm9,zmm28,zmm24
  a3447c:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm9
  a34483:	0e 
  a34484:	62 01 4c 48 58 c6    	vaddps zmm24,zmm6,zmm30
  a3448a:	62 a1 64 40 58 ff    	vaddps zmm23,zmm19,zmm23
  a34490:	62 c1 04 48 58 d5    	vaddps zmm18,zmm15,zmm13
  a34496:	62 e1 2c 48 58 5c 24 	vaddps zmm19,zmm10,ZMMWORD PTR [rsp+0x8c0]
  a3449d:	23 
  a3449e:	62 d1 0c 48 58 f4    	vaddps zmm6,zmm14,zmm12
  a344a4:	62 31 5c 40 58 d6    	vaddps zmm10,zmm20,zmm22
  a344aa:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x400]
  a344b1:	10 
  a344b2:	62 91 6c 48 5c c5    	vsubps zmm0,zmm2,zmm29
  a344b8:	62 91 6c 48 58 dd    	vaddps zmm3,zmm2,zmm29
  a344be:	62 01 3c 48 5c e7    	vsubps zmm28,zmm8,zmm31
  a344c4:	62 41 04 40 58 f8    	vaddps zmm31,zmm31,zmm8
  a344ca:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp-0x40]
  a344d1:	ff 
  a344d2:	62 e1 6c 48 58 4c 24 	vaddps zmm17,zmm2,ZMMWORD PTR [rsp+0x80]
  a344d9:	02 
  a344da:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x100]
  a344e1:	04 
  a344e2:	62 f1 74 48 58 54 24 	vaddps zmm2,zmm1,ZMMWORD PTR [rsp+0x180]
  a344e9:	06 
  a344ea:	62 21 6c 40 5c d3    	vsubps zmm26,zmm18,zmm19
  a344f0:	62 41 4c 48 5c ea    	vsubps zmm29,zmm6,zmm10
  a344f6:	62 71 7c 48 28 c6    	vmovaps zmm8,zmm6
  a344fc:	62 91 2c 40 58 cd    	vaddps zmm1,zmm26,zmm29
  a34502:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a34509:	fe 
  a3450a:	62 91 14 40 5c ca    	vsubps zmm1,zmm29,zmm26
  a34510:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a34517:	ff 
  a34518:	62 41 44 48 5c d1    	vsubps zmm26,zmm7,zmm9
  a3451e:	62 21 3c 40 5c ef    	vsubps zmm29,zmm24,zmm23
  a34524:	62 91 2c 40 5c cd    	vsubps zmm1,zmm26,zmm29
  a3452a:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm1
  a34531:	03 
  a34532:	62 01 14 40 58 d2    	vaddps zmm26,zmm29,zmm26
  a34538:	62 91 5c 48 5c f4    	vsubps zmm6,zmm4,zmm28
  a3453e:	62 f1 1c 40 58 e4    	vaddps zmm4,zmm28,zmm4
  a34544:	62 72 7d 48 18 0d 4e 	vbroadcastss zmm9,DWORD PTR [rip+0xffffffffff640e4e]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a3454b:	0e 64 ff 
  a3454e:	62 f1 34 48 59 4c 24 	vmulps zmm1,zmm9,ZMMWORD PTR [rsp+0x680]
  a34555:	1a 
  a34556:	62 61 34 48 59 6c 24 	vmulps zmm29,zmm9,ZMMWORD PTR [rsp+0x580]
  a3455d:	16 
  a3455e:	62 91 74 48 58 fd    	vaddps zmm7,zmm1,zmm29
  a34564:	62 91 74 48 5c cd    	vsubps zmm1,zmm1,zmm29
  a3456a:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm1
  a34571:	09 
  a34572:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x4c0]
  a34579:	13 
  a3457a:	62 71 74 48 58 74 24 	vaddps zmm14,zmm1,ZMMWORD PTR [rsp+0x500]
  a34581:	14 
  a34582:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x440]
  a34589:	11 
  a3458a:	62 71 74 48 58 5c 24 	vaddps zmm11,zmm1,ZMMWORD PTR [rsp+0x480]
  a34591:	12 
  a34592:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x280]
  a34599:	0a 
  a3459a:	62 71 74 48 58 6c 24 	vaddps zmm13,zmm1,ZMMWORD PTR [rsp+0x2c0]
  a345a1:	0b 
  a345a2:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x5c0]
  a345a9:	17 
  a345aa:	62 71 74 48 58 7c 24 	vaddps zmm15,zmm1,ZMMWORD PTR [rsp+0x600]
  a345b1:	18 
  a345b2:	62 e1 7c 48 5c e5    	vsubps zmm20,zmm0,zmm5
  a345b8:	62 f1 7c 48 58 c5    	vaddps zmm0,zmm0,zmm5
  a345be:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm0
  a345c5:	08 
  a345c6:	62 f1 34 48 59 44 24 	vmulps zmm0,zmm9,ZMMWORD PTR [rsp+0x300]
  a345cd:	0c 
  a345ce:	62 71 34 48 59 24 24 	vmulps zmm12,zmm9,ZMMWORD PTR [rsp]
  a345d5:	62 c1 7c 48 5c f4    	vsubps zmm22,zmm0,zmm12
  a345db:	62 f1 1c 48 58 c0    	vaddps zmm0,zmm12,zmm0
  a345e1:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm0
  a345e8:	02 
  a345e9:	62 31 04 48 59 e5    	vmulps zmm12,zmm15,zmm21
  a345ef:	62 32 15 48 b8 e0    	vfmadd231ps zmm12,zmm13,zmm16
  a345f5:	62 31 04 48 59 f8    	vmulps zmm15,zmm15,zmm16
  a345fb:	62 52 55 40 bc fd    	vfnmadd231ps zmm15,zmm21,zmm13
  a34601:	62 31 24 48 59 e8    	vmulps zmm13,zmm11,zmm16
  a34607:	62 32 0d 48 b8 ed    	vfmadd231ps zmm13,zmm14,zmm21
  a3460d:	62 31 24 48 59 dd    	vmulps zmm11,zmm11,zmm21
  a34613:	62 52 7d 40 bc de    	vfnmadd231ps zmm11,zmm16,zmm14
  a34619:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x640]
  a34620:	19 
  a34621:	62 11 7c 48 5c f3    	vsubps zmm14,zmm0,zmm27
  a34627:	62 61 24 40 58 d8    	vaddps zmm27,zmm27,zmm0
  a3462d:	62 61 74 40 5c f2    	vsubps zmm30,zmm17,zmm2
  a34633:	62 e1 74 40 58 ea    	vaddps zmm21,zmm17,zmm2
  a34639:	62 b1 3c 40 58 c7    	vaddps zmm0,zmm24,zmm23
  a3463f:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm0
  a34646:	04 
  a34647:	62 21 6c 40 58 e3    	vaddps zmm28,zmm18,zmm19
  a3464d:	62 81 64 48 5c cf    	vsubps zmm17,zmm3,zmm31
  a34653:	62 91 64 48 58 c7    	vaddps zmm0,zmm3,zmm31
  a34659:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x3c0]
  a34660:	0f 
  a34661:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x40]
  a34668:	01 
  a34669:	62 e1 74 48 5c fa    	vsubps zmm23,zmm1,zmm2
  a3466f:	62 f1 6c 48 58 e9    	vaddps zmm5,zmm2,zmm1
  a34675:	62 51 3c 48 58 d2    	vaddps zmm10,zmm8,zmm10
  a3467b:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x340]
  a34682:	0d 
  a34683:	62 e1 74 48 58 54 24 	vaddps zmm18,zmm1,ZMMWORD PTR [rsp+0x380]
  a3468a:	0e 
  a3468b:	62 21 4c 48 5c c6    	vsubps zmm24,zmm6,zmm22
  a34691:	62 f1 4c 40 58 ce    	vaddps zmm1,zmm22,zmm6
  a34697:	62 f1 7c 48 11 0c 24 	vmovups ZMMWORD PTR [rsp],zmm1
  a3469e:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x140]
  a346a5:	05 
  a346a6:	62 81 74 48 5c c1    	vsubps zmm16,zmm1,zmm25
  a346ac:	62 91 74 48 58 c9    	vaddps zmm1,zmm1,zmm25
  a346b2:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm1
  a346b9:	05 
  a346ba:	62 61 5c 40 5c cf    	vsubps zmm25,zmm20,zmm7
  a346c0:	62 f1 5c 40 58 cf    	vaddps zmm1,zmm20,zmm7
  a346c6:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm1
  a346cd:	06 
  a346ce:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x6c0]
  a346d5:	1b 
  a346d6:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x1c0]
  a346dd:	07 
  a346de:	62 71 74 48 58 c2    	vaddps zmm8,zmm1,zmm2
  a346e4:	62 61 74 48 5c fa    	vsubps zmm31,zmm1,zmm2
  a346ea:	62 b1 0c 48 5c ff    	vsubps zmm7,zmm14,zmm23
  a346f0:	62 41 44 40 58 ee    	vaddps zmm29,zmm23,zmm14
  a346f6:	62 e1 34 48 59 64 24 	vmulps zmm20,zmm9,ZMMWORD PTR [rsp-0x40]
  a346fd:	ff 
  a346fe:	62 c1 2c 40 59 f1    	vmulps zmm22,zmm26,zmm9
  a34704:	62 a1 5c 40 58 fe    	vaddps zmm23,zmm20,zmm22
  a3470a:	62 21 5c 40 5c d6    	vsubps zmm26,zmm20,zmm22
  a34710:	62 81 74 40 5c e6    	vsubps zmm20,zmm17,zmm30
  a34716:	62 01 74 40 58 f6    	vaddps zmm30,zmm17,zmm30
  a3471c:	62 e1 34 48 59 4c 24 	vmulps zmm17,zmm9,ZMMWORD PTR [rsp+0xc0]
  a34723:	03 
  a34724:	62 e1 34 48 59 74 24 	vmulps zmm22,zmm9,ZMMWORD PTR [rsp-0x80]
  a3472b:	fe 
  a3472c:	62 a1 74 40 5c de    	vsubps zmm19,zmm17,zmm22
  a34732:	62 31 4c 40 58 f1    	vaddps zmm14,zmm22,zmm17
  a34738:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x240]
  a3473f:	09 
  a34740:	62 e1 5c 48 5c f1    	vsubps zmm22,zmm4,zmm1
  a34746:	62 71 74 48 58 cc    	vaddps zmm9,zmm1,zmm4
  a3474c:	62 d1 04 48 5c db    	vsubps zmm3,zmm15,zmm11
  a34752:	62 51 04 48 58 db    	vaddps zmm11,zmm15,zmm11
  a34758:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x200]
  a3475f:	08 
  a34760:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x80]
  a34767:	02 
  a34768:	62 f1 74 48 5c d4    	vsubps zmm2,zmm1,zmm4
  a3476e:	62 f1 74 48 58 f4    	vaddps zmm6,zmm1,zmm4
  a34774:	62 51 14 48 5c fc    	vsubps zmm15,zmm13,zmm12
  a3477a:	62 51 1c 48 58 e5    	vaddps zmm12,zmm12,zmm13
  a34780:	62 b1 24 40 5c cd    	vsubps zmm1,zmm27,zmm21
  a34786:	62 01 54 40 58 db    	vaddps zmm27,zmm21,zmm27
  a3478c:	62 a1 2c 48 5c ea    	vsubps zmm21,zmm10,zmm18
  a34792:	62 a1 2c 48 58 d2    	vaddps zmm18,zmm10,zmm18
  a34798:	62 71 7c 48 5c d5    	vsubps zmm10,zmm0,zmm5
  a3479e:	62 f1 7c 48 58 ed    	vaddps zmm5,zmm0,zmm5
  a347a4:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x100]
  a347ab:	04 
  a347ac:	62 91 5c 48 5c c4    	vsubps zmm0,zmm4,zmm28
  a347b2:	62 f1 1c 40 58 e4    	vaddps zmm4,zmm28,zmm4
  a347b8:	62 51 3c 40 58 e8    	vaddps zmm13,zmm24,zmm8
  a347be:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm13
  a347c5:	fe 
  a347c6:	62 51 3c 40 5c e8    	vsubps zmm13,zmm24,zmm8
  a347cc:	62 31 34 40 5c c0    	vsubps zmm8,zmm25,zmm16
  a347d2:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm8
  a347d9:	03 
  a347da:	62 21 34 40 58 c8    	vaddps zmm25,zmm25,zmm16
  a347e0:	62 21 44 48 5c e3    	vsubps zmm28,zmm7,zmm19
  a347e6:	62 a1 44 48 58 cb    	vaddps zmm17,zmm7,zmm19
  a347ec:	62 b1 5c 40 5c ff    	vsubps zmm7,zmm20,zmm23
  a347f2:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm7
  a347f9:	ff 
  a347fa:	62 a1 5c 40 58 df    	vaddps zmm19,zmm20,zmm23
  a34800:	62 d1 4c 40 5c ff    	vsubps zmm7,zmm22,zmm15
  a34806:	62 c1 4c 40 58 e7    	vaddps zmm20,zmm22,zmm15
  a3480c:	62 71 6c 48 5c c3    	vsubps zmm8,zmm2,zmm3
  a34812:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm8
  a34819:	01 
  a3481a:	62 71 6c 48 58 fb    	vaddps zmm15,zmm2,zmm3
  a34820:	62 f1 74 48 5c d8    	vsubps zmm3,zmm1,zmm0
  a34826:	62 e1 74 48 58 f0    	vaddps zmm22,zmm1,zmm0
  a3482c:	62 b1 2c 48 5c d5    	vsubps zmm2,zmm10,zmm21
  a34832:	62 a1 2c 48 58 fd    	vaddps zmm23,zmm10,zmm21
  a34838:	62 f1 7c 48 10 04 24 	vmovups zmm0,ZMMWORD PTR [rsp]
  a3483f:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x140]
  a34846:	05 
  a34847:	62 71 7c 48 5c c1    	vsubps zmm8,zmm0,zmm1
  a3484d:	62 61 7c 48 58 c1    	vaddps zmm24,zmm0,zmm1
  a34853:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x180]
  a3485a:	06 
  a3485b:	62 91 7c 48 5c cf    	vsubps zmm1,zmm0,zmm31
  a34861:	62 81 7c 48 58 ef    	vaddps zmm21,zmm0,zmm31
  a34867:	62 11 14 40 5c d2    	vsubps zmm10,zmm29,zmm26
  a3486d:	62 01 14 40 58 ea    	vaddps zmm29,zmm29,zmm26
  a34873:	62 41 0c 40 5c d6    	vsubps zmm26,zmm30,zmm14
  a34879:	62 41 0c 40 58 f6    	vaddps zmm30,zmm30,zmm14
  a3487f:	62 d1 34 48 5c c3    	vsubps zmm0,zmm9,zmm11
  a34885:	62 51 34 48 58 cb    	vaddps zmm9,zmm9,zmm11
  a3488b:	62 51 4c 48 5c f4    	vsubps zmm14,zmm6,zmm12
  a34891:	62 d1 4c 48 58 f4    	vaddps zmm6,zmm6,zmm12
  a34897:	62 a1 24 40 5c c2    	vsubps zmm16,zmm27,zmm18
  a3489d:	62 31 24 40 58 da    	vaddps zmm11,zmm27,zmm18
  a348a3:	62 e1 54 48 5c d4    	vsubps zmm18,zmm5,zmm4
  a348a9:	62 f1 54 48 58 e4    	vaddps zmm4,zmm5,zmm4
  a348af:	62 d1 7c 48 28 eb    	vmovaps zmm5,zmm11
  a348b5:	62 71 7c 48 28 25 01 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff65c701]        # 90fc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e470>
  a348bc:	c7 65 ff 
  a348bf:	62 f2 1d 48 7f ec    	vpermt2ps zmm5,zmm12,zmm4
  a348c5:	62 f1 7c 48 11 2c 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm5
  a348cc:	62 f1 24 48 14 ec    	vunpcklps zmm5,zmm11,zmm4
  a348d2:	62 f3 7d 48 19 6c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x60],zmm5,0x3
  a348d9:	06 03 
  a348db:	62 f1 24 48 15 ec    	vunpckhps zmm5,zmm11,zmm4
  a348e1:	62 f3 7d 48 19 ed 03 	vextractf32x4 xmm5,zmm5,0x3
  a348e8:	c5 f8 13 6c 16 70    	vmovlps QWORD PTR [rsi+rdx*1+0x70],xmm5
  a348ee:	c5 fc 28 2d 0a c7 65 	vmovaps ymm5,YMMWORD PTR [rip+0xffffffffff65c70a]        # 91000 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e4b0>
  a348f5:	ff 
  a348f6:	62 72 55 48 7f dc    	vpermt2ps zmm11,zmm5,zmm4
  a348fc:	c5 7c 11 5c 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm11
  a34902:	62 d1 7c 48 28 e1    	vmovaps zmm4,zmm9
  a34908:	62 f2 1d 48 7f e6    	vpermt2ps zmm4,zmm12,zmm6
  a3490e:	62 f1 7c 48 11 a4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x78],zmm4
  a34915:	78 00 00 00 
  a34919:	62 f1 34 48 14 e6    	vunpcklps zmm4,zmm9,zmm6
  a3491f:	62 f3 7d 48 19 a4 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xd8],zmm4,0x3
  a34926:	d8 00 00 00 03 
  a3492b:	62 f1 34 48 15 e6    	vunpckhps zmm4,zmm9,zmm6
  a34931:	62 f3 7d 48 19 e4 03 	vextractf32x4 xmm4,zmm4,0x3
  a34938:	c5 f8 13 a4 16 e8 00 	vmovlps QWORD PTR [rsi+rdx*1+0xe8],xmm4
  a3493f:	00 00 
  a34941:	62 72 55 48 7f ce    	vpermt2ps zmm9,zmm5,zmm6
  a34947:	c5 7c 11 8c 16 b8 00 	vmovups YMMWORD PTR [rsi+rdx*1+0xb8],ymm9
  a3494e:	00 00 
  a34950:	62 91 7c 48 28 e5    	vmovaps zmm4,zmm29
  a34956:	62 92 1d 48 7f e6    	vpermt2ps zmm4,zmm12,zmm30
  a3495c:	62 f1 7c 48 11 a4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xf0],zmm4
  a34963:	f0 00 00 00 
  a34967:	62 91 14 40 14 e6    	vunpcklps zmm4,zmm29,zmm30
  a3496d:	62 f3 7d 48 19 64 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x150],zmm4,0x3
  a34974:	15 03 
  a34976:	62 91 14 40 15 e6    	vunpckhps zmm4,zmm29,zmm30
  a3497c:	62 f3 7d 48 19 e4 03 	vextractf32x4 xmm4,zmm4,0x3
  a34983:	c5 f8 13 a4 16 60 01 	vmovlps QWORD PTR [rsi+rdx*1+0x160],xmm4
  a3498a:	00 00 
  a3498c:	62 02 55 48 7f ee    	vpermt2ps zmm29,zmm5,zmm30
  a34992:	62 61 7c 28 11 ac 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x130],ymm29
  a34999:	30 01 00 00 
  a3499d:	62 91 7c 48 28 e0    	vmovaps zmm4,zmm24
  a349a3:	62 b2 1d 48 7f e5    	vpermt2ps zmm4,zmm12,zmm21
  a349a9:	62 f1 7c 48 11 a4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x168],zmm4
  a349b0:	68 01 00 00 
  a349b4:	62 b1 3c 40 14 e5    	vunpcklps zmm4,zmm24,zmm21
  a349ba:	62 f3 7d 48 19 a4 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x1c8],zmm4,0x3
  a349c1:	c8 01 00 00 03 
  a349c6:	62 b1 3c 40 15 e5    	vunpckhps zmm4,zmm24,zmm21
  a349cc:	62 f3 7d 48 19 e4 03 	vextractf32x4 xmm4,zmm4,0x3
  a349d3:	c5 f8 13 a4 16 d8 01 	vmovlps QWORD PTR [rsi+rdx*1+0x1d8],xmm4
  a349da:	00 00 
  a349dc:	62 22 55 48 7f c5    	vpermt2ps zmm24,zmm5,zmm21
  a349e2:	62 61 7c 28 11 84 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x1a8],ymm24
  a349e9:	a8 01 00 00 
  a349ed:	62 b1 7c 48 28 e6    	vmovaps zmm4,zmm22
  a349f3:	62 b2 1d 48 7f e7    	vpermt2ps zmm4,zmm12,zmm23
  a349f9:	62 f1 7c 48 11 a4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1e0],zmm4
  a34a00:	e0 01 00 00 
  a34a04:	62 b1 4c 40 14 e7    	vunpcklps zmm4,zmm22,zmm23
  a34a0a:	62 f3 7d 48 19 64 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x240],zmm4,0x3
  a34a11:	24 03 
  a34a13:	62 b1 4c 40 15 e7    	vunpckhps zmm4,zmm22,zmm23
  a34a19:	62 f3 7d 48 19 e4 03 	vextractf32x4 xmm4,zmm4,0x3
  a34a20:	c5 f8 13 a4 16 50 02 	vmovlps QWORD PTR [rsi+rdx*1+0x250],xmm4
  a34a27:	00 00 
  a34a29:	62 a2 55 48 7f f7    	vpermt2ps zmm22,zmm5,zmm23
  a34a2f:	62 e1 7c 28 11 74 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x220],ymm22
  a34a36:	11 
  a34a37:	62 b1 7c 48 28 e4    	vmovaps zmm4,zmm20
  a34a3d:	62 d2 1d 48 7f e7    	vpermt2ps zmm4,zmm12,zmm15
  a34a43:	62 f1 7c 48 11 a4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x258],zmm4
  a34a4a:	58 02 00 00 
  a34a4e:	62 d1 5c 40 14 e7    	vunpcklps zmm4,zmm20,zmm15
  a34a54:	62 f3 7d 48 19 a4 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x2b8],zmm4,0x3
  a34a5b:	b8 02 00 00 03 
  a34a60:	62 d1 5c 40 15 e7    	vunpckhps zmm4,zmm20,zmm15
  a34a66:	62 f3 7d 48 19 e4 03 	vextractf32x4 xmm4,zmm4,0x3
  a34a6d:	c5 f8 13 a4 16 c8 02 	vmovlps QWORD PTR [rsi+rdx*1+0x2c8],xmm4
  a34a74:	00 00 
  a34a76:	62 c2 55 48 7f e7    	vpermt2ps zmm20,zmm5,zmm15
  a34a7c:	62 e1 7c 28 11 a4 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x298],ymm20
  a34a83:	98 02 00 00 
  a34a87:	62 b1 7c 48 28 e1    	vmovaps zmm4,zmm17
  a34a8d:	62 b2 1d 48 7f e3    	vpermt2ps zmm4,zmm12,zmm19
  a34a93:	62 f1 7c 48 11 a4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x2d0],zmm4
  a34a9a:	d0 02 00 00 
  a34a9e:	62 b1 74 40 14 e3    	vunpcklps zmm4,zmm17,zmm19
  a34aa4:	62 f3 7d 48 19 64 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x330],zmm4,0x3
  a34aab:	33 03 
  a34aad:	62 b1 74 40 15 e3    	vunpckhps zmm4,zmm17,zmm19
  a34ab3:	62 f3 7d 48 19 e4 03 	vextractf32x4 xmm4,zmm4,0x3
  a34aba:	c5 f8 13 a4 16 40 03 	vmovlps QWORD PTR [rsi+rdx*1+0x340],xmm4
  a34ac1:	00 00 
  a34ac3:	62 a2 55 48 7f cb    	vpermt2ps zmm17,zmm5,zmm19
  a34ac9:	62 e1 7c 28 11 8c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x310],ymm17
  a34ad0:	10 03 00 00 
  a34ad4:	62 d1 7c 48 28 e5    	vmovaps zmm4,zmm13
  a34ada:	62 92 1d 48 7f e1    	vpermt2ps zmm4,zmm12,zmm25
  a34ae0:	62 f1 7c 48 11 a4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x348],zmm4
  a34ae7:	48 03 00 00 
  a34aeb:	62 91 14 48 14 e1    	vunpcklps zmm4,zmm13,zmm25
  a34af1:	62 f3 7d 48 19 a4 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x3a8],zmm4,0x3
  a34af8:	a8 03 00 00 03 
  a34afd:	62 91 14 48 15 e1    	vunpckhps zmm4,zmm13,zmm25
  a34b03:	62 f3 7d 48 19 e4 03 	vextractf32x4 xmm4,zmm4,0x3
  a34b0a:	c5 f8 13 a4 16 b8 03 	vmovlps QWORD PTR [rsi+rdx*1+0x3b8],xmm4
  a34b11:	00 00 
  a34b13:	62 12 55 48 7f e9    	vpermt2ps zmm13,zmm5,zmm25
  a34b19:	c5 7c 11 ac 16 88 03 	vmovups YMMWORD PTR [rsi+rdx*1+0x388],ymm13
  a34b20:	00 00 
  a34b22:	62 b1 7c 48 28 e0    	vmovaps zmm4,zmm16
  a34b28:	62 b2 1d 48 7f e2    	vpermt2ps zmm4,zmm12,zmm18
  a34b2e:	62 f1 7c 48 11 64 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x3c0],zmm4
  a34b35:	0f 
  a34b36:	62 b1 7c 40 14 e2    	vunpcklps zmm4,zmm16,zmm18
  a34b3c:	62 f3 7d 48 19 64 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x420],zmm4,0x3
  a34b43:	42 03 
  a34b45:	62 b1 7c 40 15 e2    	vunpckhps zmm4,zmm16,zmm18
  a34b4b:	62 f3 7d 48 19 e4 03 	vextractf32x4 xmm4,zmm4,0x3
  a34b52:	c5 f8 13 a4 16 30 04 	vmovlps QWORD PTR [rsi+rdx*1+0x430],xmm4
  a34b59:	00 00 
  a34b5b:	62 a2 55 48 7f c2    	vpermt2ps zmm16,zmm5,zmm18
  a34b61:	62 e1 7c 28 11 44 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x400],ymm16
  a34b68:	20 
  a34b69:	62 f1 7c 48 28 e0    	vmovaps zmm4,zmm0
  a34b6f:	62 d2 1d 48 7f e6    	vpermt2ps zmm4,zmm12,zmm14
  a34b75:	62 f1 7c 48 11 a4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x438],zmm4
  a34b7c:	38 04 00 00 
  a34b80:	62 d1 7c 48 14 e6    	vunpcklps zmm4,zmm0,zmm14
  a34b86:	62 f3 7d 48 19 a4 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x498],zmm4,0x3
  a34b8d:	98 04 00 00 03 
  a34b92:	62 d1 7c 48 15 e6    	vunpckhps zmm4,zmm0,zmm14
  a34b98:	62 f3 7d 48 19 e4 03 	vextractf32x4 xmm4,zmm4,0x3
  a34b9f:	c5 f8 13 a4 16 a8 04 	vmovlps QWORD PTR [rsi+rdx*1+0x4a8],xmm4
  a34ba6:	00 00 
  a34ba8:	62 d2 55 48 7f c6    	vpermt2ps zmm0,zmm5,zmm14
  a34bae:	c5 fc 11 84 16 78 04 	vmovups YMMWORD PTR [rsi+rdx*1+0x478],ymm0
  a34bb5:	00 00 
  a34bb7:	62 d1 7c 48 28 c2    	vmovaps zmm0,zmm10
  a34bbd:	62 92 1d 48 7f c2    	vpermt2ps zmm0,zmm12,zmm26
  a34bc3:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x4b0],zmm0
  a34bca:	b0 04 00 00 
  a34bce:	62 91 2c 48 14 c2    	vunpcklps zmm0,zmm10,zmm26
  a34bd4:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x510],zmm0,0x3
  a34bdb:	51 03 
  a34bdd:	62 91 2c 48 15 c2    	vunpckhps zmm0,zmm10,zmm26
  a34be3:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a34bea:	c5 f8 13 84 16 20 05 	vmovlps QWORD PTR [rsi+rdx*1+0x520],xmm0
  a34bf1:	00 00 
  a34bf3:	62 12 55 48 7f d2    	vpermt2ps zmm10,zmm5,zmm26
  a34bf9:	c5 7c 11 94 16 f0 04 	vmovups YMMWORD PTR [rsi+rdx*1+0x4f0],ymm10
  a34c00:	00 00 
  a34c02:	62 d1 7c 48 28 c0    	vmovaps zmm0,zmm8
  a34c08:	62 f2 1d 48 7f c1    	vpermt2ps zmm0,zmm12,zmm1
  a34c0e:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x528],zmm0
  a34c15:	28 05 00 00 
  a34c19:	62 f1 3c 48 14 c1    	vunpcklps zmm0,zmm8,zmm1
  a34c1f:	62 f3 7d 48 19 84 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x588],zmm0,0x3
  a34c26:	88 05 00 00 03 
  a34c2b:	62 f1 3c 48 15 c1    	vunpckhps zmm0,zmm8,zmm1
  a34c31:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a34c38:	c5 f8 13 84 16 98 05 	vmovlps QWORD PTR [rsi+rdx*1+0x598],xmm0
  a34c3f:	00 00 
  a34c41:	62 72 55 48 7f c1    	vpermt2ps zmm8,zmm5,zmm1
  a34c47:	c5 7c 11 84 16 68 05 	vmovups YMMWORD PTR [rsi+rdx*1+0x568],ymm8
  a34c4e:	00 00 
  a34c50:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a34c56:	62 f2 1d 48 7f c2    	vpermt2ps zmm0,zmm12,zmm2
  a34c5c:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x5a0],zmm0
  a34c63:	a0 05 00 00 
  a34c67:	62 f1 64 48 14 c2    	vunpcklps zmm0,zmm3,zmm2
  a34c6d:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x600],zmm0,0x3
  a34c74:	60 03 
  a34c76:	62 f1 64 48 15 c2    	vunpckhps zmm0,zmm3,zmm2
  a34c7c:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a34c83:	c5 f8 13 84 16 10 06 	vmovlps QWORD PTR [rsi+rdx*1+0x610],xmm0
  a34c8a:	00 00 
  a34c8c:	62 f2 55 48 7f da    	vpermt2ps zmm3,zmm5,zmm2
  a34c92:	c5 fc 11 9c 16 e0 05 	vmovups YMMWORD PTR [rsi+rdx*1+0x5e0],ymm3
  a34c99:	00 00 
  a34c9b:	62 f1 7c 48 28 c7    	vmovaps zmm0,zmm7
  a34ca1:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x40]
  a34ca8:	01 
  a34ca9:	62 f2 1d 48 7f c1    	vpermt2ps zmm0,zmm12,zmm1
  a34caf:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x618],zmm0
  a34cb6:	18 06 00 00 
  a34cba:	62 f1 44 48 14 c1    	vunpcklps zmm0,zmm7,zmm1
  a34cc0:	62 f3 7d 48 19 84 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x678],zmm0,0x3
  a34cc7:	78 06 00 00 03 
  a34ccc:	62 f1 44 48 15 c1    	vunpckhps zmm0,zmm7,zmm1
  a34cd2:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a34cd9:	c5 f8 13 84 16 88 06 	vmovlps QWORD PTR [rsi+rdx*1+0x688],xmm0
  a34ce0:	00 00 
  a34ce2:	62 f2 55 48 7f f9    	vpermt2ps zmm7,zmm5,zmm1
  a34ce8:	c5 fc 11 bc 16 58 06 	vmovups YMMWORD PTR [rsi+rdx*1+0x658],ymm7
  a34cef:	00 00 
  a34cf1:	62 91 7c 48 28 c4    	vmovaps zmm0,zmm28
  a34cf7:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x40]
  a34cfe:	ff 
  a34cff:	62 f2 1d 48 7f c1    	vpermt2ps zmm0,zmm12,zmm1
  a34d05:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x690],zmm0
  a34d0c:	90 06 00 00 
  a34d10:	62 f1 1c 40 14 c1    	vunpcklps zmm0,zmm28,zmm1
  a34d16:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x6f0],zmm0,0x3
  a34d1d:	6f 03 
  a34d1f:	62 f1 1c 40 15 c1    	vunpckhps zmm0,zmm28,zmm1
  a34d25:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a34d2c:	c5 f8 13 84 16 00 07 	vmovlps QWORD PTR [rsi+rdx*1+0x700],xmm0
  a34d33:	00 00 
  a34d35:	62 62 55 48 7f e1    	vpermt2ps zmm28,zmm5,zmm1
  a34d3b:	62 61 7c 28 11 a4 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x6d0],ymm28
  a34d42:	d0 06 00 00 
  a34d46:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x80]
  a34d4d:	fe 
  a34d4e:	62 f1 7c 48 28 c1    	vmovaps zmm0,zmm1
  a34d54:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0xc0]
  a34d5b:	03 
  a34d5c:	62 f2 1d 48 7f c2    	vpermt2ps zmm0,zmm12,zmm2
  a34d62:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x708],zmm0
  a34d69:	08 07 00 00 
  a34d6d:	62 f1 74 48 14 c2    	vunpcklps zmm0,zmm1,zmm2
  a34d73:	62 f3 7d 48 19 84 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x768],zmm0,0x3
  a34d7a:	68 07 00 00 03 
  a34d7f:	62 f1 74 48 15 c2    	vunpckhps zmm0,zmm1,zmm2
  a34d85:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a34d8c:	c5 f8 13 84 16 78 07 	vmovlps QWORD PTR [rsi+rdx*1+0x778],xmm0
  a34d93:	00 00 
  a34d95:	62 f2 55 48 7f ca    	vpermt2ps zmm1,zmm5,zmm2
  a34d9b:	c5 fc 11 8c 16 48 07 	vmovups YMMWORD PTR [rsi+rdx*1+0x748],ymm1
  a34da2:	00 00 
  a34da4:	48 81 c2 80 07 00 00 	add    rdx,0x780
  a34dab:	48 39 d0             	cmp    rax,rdx
  a34dae:	0f 85 9c e1 ff ff    	jne    a32f50 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x10>
  a34db4:	48 81 c4 48 0b 00 00 	add    rsp,0xb48
  a34dbb:	c5 f8 77             	vzeroupper
  a34dbe:	c3                   	ret
