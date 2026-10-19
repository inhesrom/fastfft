
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a6ae40 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a6ae40:	48 81 ec 88 08 00 00 	sub    rsp,0x888
  a6ae47:	62 f1 7c 48 10 27    	vmovups zmm4,ZMMWORD PTR [rdi]
  a6ae4d:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm4
  a6ae54:	fe 
  a6ae55:	c5 f8 10 47 60       	vmovups xmm0,XMMWORD PTR [rdi+0x60]
  a6ae5a:	c4 e3 79 21 47 64 10 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x64],0x10
  a6ae61:	c4 e2 79 18 4f 68    	vbroadcastss xmm1,DWORD PTR [rdi+0x68]
  a6ae67:	c5 fc 10 57 40       	vmovups ymm2,YMMWORD PTR [rdi+0x40]
  a6ae6c:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a6ae72:	c4 e3 79 21 47 6c 30 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x6c],0x30
  a6ae79:	c5 fb 10 4f 70       	vmovsd xmm1,QWORD PTR [rdi+0x70]
  a6ae7e:	c4 e3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm1,0x1
  a6ae84:	62 f3 ed 48 1a c0 01 	vinsertf64x4 zmm0,zmm2,ymm0,0x1
  a6ae8b:	b0 7f                	mov    al,0x7f
  a6ae8d:	c5 fb 92 c8          	kmovd  k1,eax
  a6ae91:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a6ae97:	62 f1 fe 48 7f 44 24 	vmovdqu64 ZMMWORD PTR [rsp+0x100],zmm0
  a6ae9e:	04 
  a6ae9f:	62 f1 7c 48 28 1d 97 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff629697]        # 94540 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x219f0>
  a6aea6:	96 62 ff 
  a6aea9:	62 f2 65 48 7f e0    	vpermt2ps zmm4,zmm3,zmm0
  a6aeaf:	62 71 7c 48 10 a7 e0 	vmovups zmm12,ZMMWORD PTR [rdi+0x1e0]
  a6aeb6:	01 00 00 
  a6aeb9:	c5 f8 10 8f 40 02 00 	vmovups xmm1,XMMWORD PTR [rdi+0x240]
  a6aec0:	00 
  a6aec1:	c5 fc 10 97 20 02 00 	vmovups ymm2,YMMWORD PTR [rdi+0x220]
  a6aec8:	00 
  a6aec9:	c4 e3 71 21 8f 44 02 	vinsertps xmm1,xmm1,DWORD PTR [rdi+0x244],0x10
  a6aed0:	00 00 10 
  a6aed3:	c4 e2 79 18 af 48 02 	vbroadcastss xmm5,DWORD PTR [rdi+0x248]
  a6aeda:	00 00 
  a6aedc:	c4 e3 51 0c c9 03    	vblendps xmm1,xmm5,xmm1,0x3
  a6aee2:	c4 e3 71 21 8f 4c 02 	vinsertps xmm1,xmm1,DWORD PTR [rdi+0x24c],0x30
  a6aee9:	00 00 30 
  a6aeec:	c5 fb 10 af 50 02 00 	vmovsd xmm5,QWORD PTR [rdi+0x250]
  a6aef3:	00 
  a6aef4:	c4 e3 75 18 cd 01    	vinsertf128 ymm1,ymm1,xmm5,0x1
  a6aefa:	62 f3 ed 48 1a c9 01 	vinsertf64x4 zmm1,zmm2,ymm1,0x1
  a6af01:	62 f2 fd c9 88 c1    	vexpandpd zmm0{k1}{z},zmm1
  a6af07:	62 f1 fe 48 7f 44 24 	vmovdqu64 ZMMWORD PTR [rsp+0x80],zmm0
  a6af0e:	02 
  a6af0f:	62 51 7c 48 28 d4    	vmovaps zmm10,zmm12
  a6af15:	62 72 65 48 7f d0    	vpermt2ps zmm10,zmm3,zmm0
  a6af1b:	62 d1 5c 48 58 f2    	vaddps zmm6,zmm4,zmm10
  a6af21:	62 71 7c 48 10 bf f0 	vmovups zmm15,ZMMWORD PTR [rdi+0xf0]
  a6af28:	00 00 00 
  a6af2b:	c5 f8 10 97 50 01 00 	vmovups xmm2,XMMWORD PTR [rdi+0x150]
  a6af32:	00 
  a6af33:	c4 e3 69 21 97 54 01 	vinsertps xmm2,xmm2,DWORD PTR [rdi+0x154],0x10
  a6af3a:	00 00 10 
  a6af3d:	c4 e2 79 18 bf 58 01 	vbroadcastss xmm7,DWORD PTR [rdi+0x158]
  a6af44:	00 00 
  a6af46:	c5 7c 10 87 30 01 00 	vmovups ymm8,YMMWORD PTR [rdi+0x130]
  a6af4d:	00 
  a6af4e:	c4 e3 41 0c d2 03    	vblendps xmm2,xmm7,xmm2,0x3
  a6af54:	c4 e3 69 21 97 5c 01 	vinsertps xmm2,xmm2,DWORD PTR [rdi+0x15c],0x30
  a6af5b:	00 00 30 
  a6af5e:	c5 fb 10 bf 60 01 00 	vmovsd xmm7,QWORD PTR [rdi+0x160]
  a6af65:	00 
  a6af66:	c4 e3 6d 18 d7 01    	vinsertf128 ymm2,ymm2,xmm7,0x1
  a6af6c:	62 f3 bd 48 1a d2 01 	vinsertf64x4 zmm2,zmm8,ymm2,0x1
  a6af73:	62 72 fd c9 88 f2    	vexpandpd zmm14{k1}{z},zmm2
  a6af79:	62 41 7c 48 28 ff    	vmovaps zmm31,zmm15
  a6af7f:	62 42 65 48 7f fe    	vpermt2ps zmm31,zmm3,zmm14
  a6af85:	62 e1 7c 48 10 b7 d0 	vmovups zmm22,ZMMWORD PTR [rdi+0x2d0]
  a6af8c:	02 00 00 
  a6af8f:	c5 f8 10 bf 30 03 00 	vmovups xmm7,XMMWORD PTR [rdi+0x330]
  a6af96:	00 
  a6af97:	c4 e3 41 21 bf 34 03 	vinsertps xmm7,xmm7,DWORD PTR [rdi+0x334],0x10
  a6af9e:	00 00 10 
  a6afa1:	c4 62 79 18 87 38 03 	vbroadcastss xmm8,DWORD PTR [rdi+0x338]
  a6afa8:	00 00 
  a6afaa:	c5 7c 10 8f 10 03 00 	vmovups ymm9,YMMWORD PTR [rdi+0x310]
  a6afb1:	00 
  a6afb2:	c4 e3 39 0c ff 03    	vblendps xmm7,xmm8,xmm7,0x3
  a6afb8:	c4 e3 41 21 bf 3c 03 	vinsertps xmm7,xmm7,DWORD PTR [rdi+0x33c],0x30
  a6afbf:	00 00 30 
  a6afc2:	c5 7b 10 87 40 03 00 	vmovsd xmm8,QWORD PTR [rdi+0x340]
  a6afc9:	00 
  a6afca:	c4 c3 45 18 f8 01    	vinsertf128 ymm7,ymm7,xmm8,0x1
  a6afd0:	62 f3 b5 48 1a ff 01 	vinsertf64x4 zmm7,zmm9,ymm7,0x1
  a6afd7:	62 e2 fd c9 88 c7    	vexpandpd zmm16{k1}{z},zmm7
  a6afdd:	62 31 7c 48 28 de    	vmovaps zmm11,zmm22
  a6afe3:	62 32 65 48 7f d8    	vpermt2ps zmm11,zmm3,zmm16
  a6afe9:	62 c1 04 40 58 eb    	vaddps zmm21,zmm31,zmm11
  a6afef:	62 31 4c 48 58 ed    	vaddps zmm13,zmm6,zmm21
  a6aff5:	62 f1 7c 48 10 bf 78 	vmovups zmm7,ZMMWORD PTR [rdi+0x78]
  a6affc:	00 00 00 
  a6afff:	c5 78 10 87 d8 00 00 	vmovups xmm8,XMMWORD PTR [rdi+0xd8]
  a6b006:	00 
  a6b007:	c4 63 39 21 87 dc 00 	vinsertps xmm8,xmm8,DWORD PTR [rdi+0xdc],0x10
  a6b00e:	00 00 10 
  a6b011:	c5 7c 10 8f b8 00 00 	vmovups ymm9,YMMWORD PTR [rdi+0xb8]
  a6b018:	00 
  a6b019:	c4 e2 79 18 87 e0 00 	vbroadcastss xmm0,DWORD PTR [rdi+0xe0]
  a6b020:	00 00 
  a6b022:	c4 c3 79 0c c0 03    	vblendps xmm0,xmm0,xmm8,0x3
  a6b028:	c4 e3 79 21 87 e4 00 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0xe4],0x30
  a6b02f:	00 00 30 
  a6b032:	c5 7b 10 87 e8 00 00 	vmovsd xmm8,QWORD PTR [rdi+0xe8]
  a6b039:	00 
  a6b03a:	c4 c3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm8,0x1
  a6b040:	62 f3 b5 48 1a c0 01 	vinsertf64x4 zmm0,zmm9,ymm0,0x1
  a6b047:	62 62 fd c9 88 c8    	vexpandpd zmm25{k1}{z},zmm0
  a6b04d:	62 e1 7c 48 28 d7    	vmovaps zmm18,zmm7
  a6b053:	62 82 65 48 7f d1    	vpermt2ps zmm18,zmm3,zmm25
  a6b059:	62 e1 7c 48 10 9f 58 	vmovups zmm19,ZMMWORD PTR [rdi+0x258]
  a6b060:	02 00 00 
  a6b063:	c5 f8 10 87 b8 02 00 	vmovups xmm0,XMMWORD PTR [rdi+0x2b8]
  a6b06a:	00 
  a6b06b:	c4 e3 79 21 87 bc 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x2bc],0x10
  a6b072:	00 00 10 
  a6b075:	c5 7c 10 87 98 02 00 	vmovups ymm8,YMMWORD PTR [rdi+0x298]
  a6b07c:	00 
  a6b07d:	c4 62 79 18 8f c0 02 	vbroadcastss xmm9,DWORD PTR [rdi+0x2c0]
  a6b084:	00 00 
  a6b086:	c4 e3 31 0c c0 03    	vblendps xmm0,xmm9,xmm0,0x3
  a6b08c:	c4 e3 79 21 87 c4 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x2c4],0x30
  a6b093:	00 00 30 
  a6b096:	c5 7b 10 8f c8 02 00 	vmovsd xmm9,QWORD PTR [rdi+0x2c8]
  a6b09d:	00 
  a6b09e:	c4 c3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm9,0x1
  a6b0a4:	62 f3 bd 48 1a c0 01 	vinsertf64x4 zmm0,zmm8,ymm0,0x1
  a6b0ab:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a6b0b1:	62 a1 7c 48 28 fb    	vmovaps zmm23,zmm19
  a6b0b7:	62 e2 65 48 7f f8    	vpermt2ps zmm23,zmm3,zmm0
  a6b0bd:	62 b1 6c 40 58 cf    	vaddps zmm1,zmm18,zmm23
  a6b0c3:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm1
  a6b0ca:	03 
  a6b0cb:	62 e1 7c 48 10 a7 68 	vmovups zmm20,ZMMWORD PTR [rdi+0x168]
  a6b0d2:	01 00 00 
  a6b0d5:	c5 78 10 87 c8 01 00 	vmovups xmm8,XMMWORD PTR [rdi+0x1c8]
  a6b0dc:	00 
  a6b0dd:	62 e1 7c 28 10 8f a8 	vmovups ymm17,YMMWORD PTR [rdi+0x1a8]
  a6b0e4:	01 00 00 
  a6b0e7:	c4 63 39 21 87 cc 01 	vinsertps xmm8,xmm8,DWORD PTR [rdi+0x1cc],0x10
  a6b0ee:	00 00 10 
  a6b0f1:	c4 e2 79 18 af d0 01 	vbroadcastss xmm5,DWORD PTR [rdi+0x1d0]
  a6b0f8:	00 00 
  a6b0fa:	c4 c3 51 0c e8 03    	vblendps xmm5,xmm5,xmm8,0x3
  a6b100:	c4 e3 51 21 af d4 01 	vinsertps xmm5,xmm5,DWORD PTR [rdi+0x1d4],0x30
  a6b107:	00 00 30 
  a6b10a:	c5 7b 10 87 d8 01 00 	vmovsd xmm8,QWORD PTR [rdi+0x1d8]
  a6b111:	00 
  a6b112:	c4 c3 55 18 e8 01    	vinsertf128 ymm5,ymm5,xmm8,0x1
  a6b118:	62 f3 f5 40 1a ed 01 	vinsertf64x4 zmm5,zmm17,ymm5,0x1
  a6b11f:	62 f2 fd c9 88 ed    	vexpandpd zmm5{k1}{z},zmm5
  a6b125:	62 21 7c 48 28 c4    	vmovaps zmm24,zmm20
  a6b12b:	62 62 65 48 7f c5    	vpermt2ps zmm24,zmm3,zmm5
  a6b131:	62 61 7c 48 10 97 48 	vmovups zmm26,ZMMWORD PTR [rdi+0x348]
  a6b138:	03 00 00 
  a6b13b:	c5 78 10 87 a8 03 00 	vmovups xmm8,XMMWORD PTR [rdi+0x3a8]
  a6b142:	00 
  a6b143:	62 e1 7c 28 10 8f 88 	vmovups ymm17,YMMWORD PTR [rdi+0x388]
  a6b14a:	03 00 00 
  a6b14d:	c4 63 39 21 87 ac 03 	vinsertps xmm8,xmm8,DWORD PTR [rdi+0x3ac],0x10
  a6b154:	00 00 10 
  a6b157:	c4 62 79 18 8f b0 03 	vbroadcastss xmm9,DWORD PTR [rdi+0x3b0]
  a6b15e:	00 00 
  a6b160:	c4 43 31 0c c0 03    	vblendps xmm8,xmm9,xmm8,0x3
  a6b166:	c4 63 39 21 87 b4 03 	vinsertps xmm8,xmm8,DWORD PTR [rdi+0x3b4],0x30
  a6b16d:	00 00 30 
  a6b170:	c5 7b 10 8f b8 03 00 	vmovsd xmm9,QWORD PTR [rdi+0x3b8]
  a6b177:	00 
  a6b178:	c4 43 3d 18 c1 01    	vinsertf128 ymm8,ymm8,xmm9,0x1
  a6b17e:	62 53 f5 40 1a c0 01 	vinsertf64x4 zmm8,zmm17,ymm8,0x1
  a6b185:	62 52 fd c9 88 c8    	vexpandpd zmm9{k1}{z},zmm8
  a6b18b:	62 d2 2d 40 77 d9    	vpermi2ps zmm3,zmm26,zmm9
  a6b191:	62 e1 3c 40 58 cb    	vaddps zmm17,zmm24,zmm3
  a6b197:	62 21 74 48 58 d9    	vaddps zmm27,zmm1,zmm17
  a6b19d:	62 01 14 48 58 eb    	vaddps zmm29,zmm13,zmm27
  a6b1a3:	62 61 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm29
  a6b1aa:	07 
  a6b1ab:	62 71 7c 48 28 05 0b 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff65be0b]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a6b1b2:	be 65 ff 
  a6b1b5:	62 01 14 48 5c f3    	vsubps zmm30,zmm13,zmm27
  a6b1bb:	62 61 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm30
  a6b1c2:	01 
  a6b1c3:	c4 41 10 57 ed       	vxorps xmm13,xmm13,xmm13
  a6b1c8:	62 b1 4c 48 5c f5    	vsubps zmm6,zmm6,zmm21
  a6b1ce:	62 61 7c 48 28 1d a8 	vmovaps zmm27,ZMMWORD PTR [rip+0xffffffffff6293a8]        # 94580 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21a30>
  a6b1d5:	93 62 ff 
  a6b1d8:	62 92 25 40 7f f9    	vpermt2ps zmm7,zmm27,zmm25
  a6b1de:	62 e2 25 40 7f d8    	vpermt2ps zmm19,zmm27,zmm0
  a6b1e4:	62 21 44 48 58 cb    	vaddps zmm25,zmm7,zmm19
  a6b1ea:	62 e2 25 40 7f e5    	vpermt2ps zmm20,zmm27,zmm5
  a6b1f0:	62 42 25 40 7f d1    	vpermt2ps zmm26,zmm27,zmm9
  a6b1f6:	62 01 5c 40 58 e2    	vaddps zmm28,zmm20,zmm26
  a6b1fc:	62 91 34 40 5c c4    	vsubps zmm0,zmm25,zmm28
  a6b202:	62 f1 4c 48 58 c8    	vaddps zmm1,zmm6,zmm0
  a6b208:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm1
  a6b20f:	06 
  a6b210:	62 f1 4c 48 5c d0    	vsubps zmm2,zmm6,zmm0
  a6b216:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm2
  a6b21d:	09 
  a6b21e:	62 91 7c 48 28 c5    	vmovaps zmm0,zmm29
  a6b224:	62 d2 3d 48 7f c5    	vpermt2ps zmm0,zmm8,zmm13
  a6b22a:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm0
  a6b231:	08 
  a6b232:	62 d1 5c 48 5c c2    	vsubps zmm0,zmm4,zmm10
  a6b238:	62 52 25 40 7f fe    	vpermt2ps zmm15,zmm27,zmm14
  a6b23e:	62 a2 25 40 7f f0    	vpermt2ps zmm22,zmm27,zmm16
  a6b244:	62 b1 04 48 5c e6    	vsubps zmm4,zmm15,zmm22
  a6b24a:	62 f1 7c 48 58 ec    	vaddps zmm5,zmm0,zmm4
  a6b250:	62 31 6c 40 5c cf    	vsubps zmm9,zmm18,zmm23
  a6b256:	62 b1 44 48 5c fb    	vsubps zmm7,zmm7,zmm19
  a6b25c:	62 72 7d 48 18 15 36 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff60a136]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a6b263:	a1 60 ff 
  a6b266:	62 f1 34 48 58 f7    	vaddps zmm6,zmm9,zmm7
  a6b26c:	62 d1 4c 48 59 f2    	vmulps zmm6,zmm6,zmm10
  a6b272:	62 11 5c 40 5c f2    	vsubps zmm14,zmm20,zmm26
  a6b278:	62 f1 3c 40 5c db    	vsubps zmm3,zmm24,zmm3
  a6b27e:	62 e1 0c 48 5c c3    	vsubps zmm16,zmm14,zmm3
  a6b284:	62 c1 7c 40 59 fa    	vmulps zmm23,zmm16,zmm10
  a6b28a:	62 a1 4c 48 58 c7    	vaddps zmm16,zmm6,zmm23
  a6b290:	62 a1 54 48 58 d0    	vaddps zmm18,zmm5,zmm16
  a6b296:	62 e1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm18
  a6b29d:	05 
  a6b29e:	62 a1 54 48 5c c0    	vsubps zmm16,zmm5,zmm16
  a6b2a4:	62 81 7c 48 28 ee    	vmovaps zmm21,zmm30
  a6b2aa:	62 c2 3d 48 7f ed    	vpermt2ps zmm21,zmm8,zmm13
  a6b2b0:	62 f1 7c 48 5c c4    	vsubps zmm0,zmm0,zmm4
  a6b2b6:	62 d2 3d 48 7f cd    	vpermt2ps zmm1,zmm8,zmm13
  a6b2bc:	62 f1 7c 48 11 0c 24 	vmovups ZMMWORD PTR [rsp],zmm1
  a6b2c3:	62 d1 44 48 5c e1    	vsubps zmm4,zmm7,zmm9
  a6b2c9:	62 61 7c 48 28 c2    	vmovaps zmm24,zmm2
  a6b2cf:	62 42 3d 48 7f c5    	vpermt2ps zmm24,zmm8,zmm13
  a6b2d5:	62 d1 64 48 58 de    	vaddps zmm3,zmm3,zmm14
  a6b2db:	62 b1 7c 48 28 ca    	vmovaps zmm1,zmm18
  a6b2e1:	62 d2 3d 48 7f cd    	vpermt2ps zmm1,zmm8,zmm13
  a6b2e7:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a6b2ee:	ff 
  a6b2ef:	62 d1 5c 48 59 e2    	vmulps zmm4,zmm4,zmm10
  a6b2f5:	62 d1 64 48 59 ea    	vmulps zmm5,zmm3,zmm10
  a6b2fb:	62 21 7c 48 28 d0    	vmovaps zmm26,zmm16
  a6b301:	62 21 7c 48 28 e8    	vmovaps zmm29,zmm16
  a6b307:	62 42 3d 48 7f d5    	vpermt2ps zmm26,zmm8,zmm13
  a6b30d:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x80]
  a6b314:	fe 
  a6b315:	62 f2 25 40 7f 4c 24 	vpermt2ps zmm1,zmm27,ZMMWORD PTR [rsp+0x100]
  a6b31c:	04 
  a6b31d:	62 f1 5c 48 58 dd    	vaddps zmm3,zmm4,zmm5
  a6b323:	62 72 25 40 7f 64 24 	vpermt2ps zmm12,zmm27,ZMMWORD PTR [rsp+0x80]
  a6b32a:	02 
  a6b32b:	62 f1 7c 48 58 fb    	vaddps zmm7,zmm0,zmm3
  a6b331:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm7
  a6b338:	04 
  a6b339:	62 d2 3d 48 7f fd    	vpermt2ps zmm7,zmm8,zmm13
  a6b33f:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm7
  a6b346:	fe 
  a6b347:	62 e1 7c 48 5c d3    	vsubps zmm18,zmm0,zmm3
  a6b34d:	62 d1 74 48 58 c4    	vaddps zmm0,zmm1,zmm12
  a6b353:	62 71 7c 48 28 f1    	vmovaps zmm14,zmm1
  a6b359:	62 b1 04 48 58 de    	vaddps zmm3,zmm15,zmm22
  a6b35f:	62 f1 7c 48 58 cb    	vaddps zmm1,zmm0,zmm3
  a6b365:	62 91 34 40 58 d4    	vaddps zmm2,zmm25,zmm28
  a6b36b:	62 f1 74 48 58 fa    	vaddps zmm7,zmm1,zmm2
  a6b371:	62 e1 74 48 5c da    	vsubps zmm19,zmm1,zmm2
  a6b377:	62 a1 7c 48 28 c2    	vmovaps zmm16,zmm18
  a6b37d:	62 c2 3d 48 7f c5    	vpermt2ps zmm16,zmm8,zmm13
  a6b383:	62 71 74 40 5c 4c 24 	vsubps zmm9,zmm17,ZMMWORD PTR [rsp+0xc0]
  a6b38a:	03 
  a6b38b:	62 f1 7c 48 28 cf    	vmovaps zmm1,zmm7
  a6b391:	62 d2 3d 48 7f cd    	vpermt2ps zmm1,zmm8,zmm13
  a6b397:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm1
  a6b39e:	02 
  a6b39f:	62 f1 7c 48 5c c3    	vsubps zmm0,zmm0,zmm3
  a6b3a5:	62 f1 34 48 58 c8    	vaddps zmm1,zmm9,zmm0
  a6b3ab:	62 41 7c 48 5c c9    	vsubps zmm25,zmm0,zmm9
  a6b3b1:	62 a1 7c 48 28 f3    	vmovaps zmm22,zmm19
  a6b3b7:	62 c2 3d 48 7f f5    	vpermt2ps zmm22,zmm8,zmm13
  a6b3bd:	62 91 24 48 5c c7    	vsubps zmm0,zmm11,zmm31
  a6b3c3:	62 e1 7c 48 28 e1    	vmovaps zmm20,zmm1
  a6b3c9:	62 f1 7c 48 28 d9    	vmovaps zmm3,zmm1
  a6b3cf:	62 c2 3d 48 7f e5    	vpermt2ps zmm20,zmm8,zmm13
  a6b3d5:	62 51 0c 48 5c cc    	vsubps zmm9,zmm14,zmm12
  a6b3db:	62 51 7c 48 58 d9    	vaddps zmm11,zmm0,zmm9
  a6b3e1:	62 f1 5c 48 5c e5    	vsubps zmm4,zmm4,zmm5
  a6b3e7:	62 f1 24 48 58 cc    	vaddps zmm1,zmm11,zmm4
  a6b3ed:	62 71 24 48 5c d4    	vsubps zmm10,zmm11,zmm4
  a6b3f3:	62 11 7c 48 28 e1    	vmovaps zmm12,zmm25
  a6b3f9:	62 52 3d 48 7f e5    	vpermt2ps zmm12,zmm8,zmm13
  a6b3ff:	62 f1 34 48 5c c0    	vsubps zmm0,zmm9,zmm0
  a6b405:	62 71 7c 48 28 c9    	vmovaps zmm9,zmm1
  a6b40b:	62 61 7c 48 28 e1    	vmovaps zmm28,zmm1
  a6b411:	62 52 3d 48 7f cd    	vpermt2ps zmm9,zmm8,zmm13
  a6b417:	62 f1 44 40 5c e6    	vsubps zmm4,zmm23,zmm6
  a6b41d:	62 61 7c 48 58 f4    	vaddps zmm30,zmm0,zmm4
  a6b423:	62 61 7c 48 5c dc    	vsubps zmm27,zmm0,zmm4
  a6b429:	62 51 7c 48 28 da    	vmovaps zmm11,zmm10
  a6b42f:	62 52 3d 48 7f dd    	vpermt2ps zmm11,zmm8,zmm13
  a6b435:	62 11 7c 48 28 fe    	vmovaps zmm15,zmm30
  a6b43b:	62 52 3d 48 7f fd    	vpermt2ps zmm15,zmm8,zmm13
  a6b441:	62 52 25 40 77 c5    	vpermi2ps zmm8,zmm27,zmm13
  a6b447:	62 f1 7c 48 28 05 2f 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff65bb2f]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a6b44e:	bb 65 ff 
  a6b451:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x1c0]
  a6b458:	07 
  a6b459:	62 d2 7d 48 7f cd    	vpermt2ps zmm1,zmm0,zmm13
  a6b45f:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x40]
  a6b466:	01 
  a6b467:	62 d2 7d 48 7f d5    	vpermt2ps zmm2,zmm0,zmm13
  a6b46d:	62 e1 7c 48 10 4c 24 	vmovups zmm17,ZMMWORD PTR [rsp+0x180]
  a6b474:	06 
  a6b475:	62 c2 7d 48 7f cd    	vpermt2ps zmm17,zmm0,zmm13
  a6b47b:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x240]
  a6b482:	09 
  a6b483:	62 d2 7d 48 7f ed    	vpermt2ps zmm5,zmm0,zmm13
  a6b489:	62 71 7c 48 10 74 24 	vmovups zmm14,ZMMWORD PTR [rsp+0x140]
  a6b490:	05 
  a6b491:	62 52 7d 48 7f f5    	vpermt2ps zmm14,zmm0,zmm13
  a6b497:	62 42 7d 48 7f ed    	vpermt2ps zmm29,zmm0,zmm13
  a6b49d:	62 61 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm29
  a6b4a4:	05 
  a6b4a5:	62 61 7c 48 10 6c 24 	vmovups zmm29,ZMMWORD PTR [rsp+0x100]
  a6b4ac:	04 
  a6b4ad:	62 42 7d 48 7f ed    	vpermt2ps zmm29,zmm0,zmm13
  a6b4b3:	62 c2 7d 48 7f d5    	vpermt2ps zmm18,zmm0,zmm13
  a6b4b9:	62 d2 7d 48 7f fd    	vpermt2ps zmm7,zmm0,zmm13
  a6b4bf:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm7
  a6b4c6:	01 
  a6b4c7:	62 c2 7d 48 7f dd    	vpermt2ps zmm19,zmm0,zmm13
  a6b4cd:	62 d2 7d 48 7f dd    	vpermt2ps zmm3,zmm0,zmm13
  a6b4d3:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm3
  a6b4da:	09 
  a6b4db:	62 42 7d 48 7f cd    	vpermt2ps zmm25,zmm0,zmm13
  a6b4e1:	62 42 7d 48 7f e5    	vpermt2ps zmm28,zmm0,zmm13
  a6b4e7:	62 61 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm28
  a6b4ee:	03 
  a6b4ef:	62 52 7d 48 7f d5    	vpermt2ps zmm10,zmm0,zmm13
  a6b4f5:	62 42 7d 48 7f f5    	vpermt2ps zmm30,zmm0,zmm13
  a6b4fb:	62 42 7d 48 7f dd    	vpermt2ps zmm27,zmm0,zmm13
  a6b501:	62 61 7c 48 28 3d f5 	vmovaps zmm31,ZMMWORD PTR [rip+0xffffffffff65b9f5]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a6b508:	b9 65 ff 
  a6b50b:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x200]
  a6b512:	08 
  a6b513:	62 f1 7c 48 28 f0    	vmovaps zmm6,zmm0
  a6b519:	62 b2 05 40 7f f5    	vpermt2ps zmm6,zmm31,zmm21
  a6b51f:	62 f1 7c 48 28 25 17 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff65ba17]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a6b526:	ba 65 ff 
  a6b529:	62 b2 5d 48 7f c5    	vpermt2ps zmm0,zmm4,zmm21
  a6b52f:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm0
  a6b536:	08 
  a6b537:	62 f1 7c 48 10 04 24 	vmovups zmm0,ZMMWORD PTR [rsp]
  a6b53e:	62 f1 7c 48 28 d8    	vmovaps zmm3,zmm0
  a6b544:	62 92 05 40 7f d8    	vpermt2ps zmm3,zmm31,zmm24
  a6b54a:	62 92 5d 48 7f c0    	vpermt2ps zmm0,zmm4,zmm24
  a6b550:	62 f1 7c 48 11 04 24 	vmovups ZMMWORD PTR [rsp],zmm0
  a6b557:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x40]
  a6b55e:	ff 
  a6b55f:	62 61 7c 48 28 e0    	vmovaps zmm28,zmm0
  a6b565:	62 02 05 40 7f e2    	vpermt2ps zmm28,zmm31,zmm26
  a6b56b:	62 92 5d 48 7f c2    	vpermt2ps zmm0,zmm4,zmm26
  a6b571:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm0
  a6b578:	ff 
  a6b579:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x80]
  a6b580:	fe 
  a6b581:	62 61 7c 48 28 d0    	vmovaps zmm26,zmm0
  a6b587:	62 22 05 40 7f d0    	vpermt2ps zmm26,zmm31,zmm16
  a6b58d:	62 b2 5d 48 7f c0    	vpermt2ps zmm0,zmm4,zmm16
  a6b593:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a6b59a:	fe 
  a6b59b:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x80]
  a6b5a2:	02 
  a6b5a3:	62 e1 7c 48 28 e8    	vmovaps zmm21,zmm0
  a6b5a9:	62 a2 05 40 7f ee    	vpermt2ps zmm21,zmm31,zmm22
  a6b5af:	62 b2 5d 48 7f c6    	vpermt2ps zmm0,zmm4,zmm22
  a6b5b5:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm0
  a6b5bc:	02 
  a6b5bd:	62 a1 7c 48 28 f4    	vmovaps zmm22,zmm20
  a6b5c3:	62 c2 05 40 7f f4    	vpermt2ps zmm22,zmm31,zmm12
  a6b5c9:	62 c2 5d 48 7f e4    	vpermt2ps zmm20,zmm4,zmm12
  a6b5cf:	62 a1 7c 48 28 c4    	vmovaps zmm16,zmm20
  a6b5d5:	62 c1 7c 48 28 f9    	vmovaps zmm23,zmm9
  a6b5db:	62 c2 05 40 7f fb    	vpermt2ps zmm23,zmm31,zmm11
  a6b5e1:	62 52 5d 48 7f cb    	vpermt2ps zmm9,zmm4,zmm11
  a6b5e7:	62 41 7c 48 28 c7    	vmovaps zmm24,zmm15
  a6b5ed:	62 42 05 40 7f c0    	vpermt2ps zmm24,zmm31,zmm8
  a6b5f3:	62 52 5d 48 7f f8    	vpermt2ps zmm15,zmm4,zmm8
  a6b5f9:	62 f1 7c 48 28 c1    	vmovaps zmm0,zmm1
  a6b5ff:	62 f1 7c 48 28 f9    	vmovaps zmm7,zmm1
  a6b605:	62 f2 05 40 7f fa    	vpermt2ps zmm7,zmm31,zmm2
  a6b60b:	62 f2 5d 48 7f c2    	vpermt2ps zmm0,zmm4,zmm2
  a6b611:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm0
  a6b618:	07 
  a6b619:	62 b1 7c 48 28 c9    	vmovaps zmm1,zmm17
  a6b61f:	62 f1 7c 48 28 d5    	vmovaps zmm2,zmm5
  a6b625:	62 f2 05 40 7f cd    	vpermt2ps zmm1,zmm31,zmm5
  a6b62b:	62 f1 7c 48 28 e9    	vmovaps zmm5,zmm1
  a6b631:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm1
  a6b638:	0b 
  a6b639:	62 e2 5d 48 7f ca    	vpermt2ps zmm17,zmm4,zmm2
  a6b63f:	62 e1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm17
  a6b646:	06 
  a6b647:	62 d1 7c 48 28 c6    	vmovaps zmm0,zmm14
  a6b64d:	62 d1 7c 48 28 d6    	vmovaps zmm2,zmm14
  a6b653:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x140]
  a6b65a:	05 
  a6b65b:	62 f2 05 40 7f d1    	vpermt2ps zmm2,zmm31,zmm1
  a6b661:	62 e1 7c 48 28 ca    	vmovaps zmm17,zmm2
  a6b667:	62 f2 5d 48 7f c1    	vpermt2ps zmm0,zmm4,zmm1
  a6b66d:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm0
  a6b674:	05 
  a6b675:	62 11 7c 48 28 f5    	vmovaps zmm14,zmm29
  a6b67b:	62 32 05 40 7f f2    	vpermt2ps zmm14,zmm31,zmm18
  a6b681:	62 22 5d 48 7f ea    	vpermt2ps zmm29,zmm4,zmm18
  a6b687:	62 61 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm29
  a6b68e:	04 
  a6b68f:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x40]
  a6b696:	01 
  a6b697:	62 71 7c 48 28 e8    	vmovaps zmm13,zmm0
  a6b69d:	62 32 05 40 7f eb    	vpermt2ps zmm13,zmm31,zmm19
  a6b6a3:	62 b2 5d 48 7f c3    	vpermt2ps zmm0,zmm4,zmm19
  a6b6a9:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm0
  a6b6b0:	01 
  a6b6b1:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x240]
  a6b6b8:	09 
  a6b6b9:	62 71 7c 48 28 c0    	vmovaps zmm8,zmm0
  a6b6bf:	62 12 05 40 7f c1    	vpermt2ps zmm8,zmm31,zmm25
  a6b6c5:	62 92 5d 48 7f c1    	vpermt2ps zmm0,zmm4,zmm25
  a6b6cb:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm0
  a6b6d2:	09 
  a6b6d3:	62 e1 7c 48 10 5c 24 	vmovups zmm19,ZMMWORD PTR [rsp+0xc0]
  a6b6da:	03 
  a6b6db:	62 31 7c 48 28 e3    	vmovaps zmm12,zmm19
  a6b6e1:	62 52 05 40 7f e2    	vpermt2ps zmm12,zmm31,zmm10
  a6b6e7:	62 c2 5d 48 7f da    	vpermt2ps zmm19,zmm4,zmm10
  a6b6ed:	62 81 7c 48 28 d6    	vmovaps zmm18,zmm30
  a6b6f3:	62 02 0d 40 77 fb    	vpermi2ps zmm31,zmm30,zmm27
  a6b6f9:	62 82 5d 48 7f d3    	vpermt2ps zmm18,zmm4,zmm27
  a6b6ff:	62 61 7c 48 28 35 f7 	vmovaps zmm30,ZMMWORD PTR [rip+0xffffffffff65b6f7]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a6b706:	b6 65 ff 
  a6b709:	62 f1 cd 48 14 cb    	vunpcklpd zmm1,zmm6,zmm3
  a6b70f:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm1
  a6b716:	0a 
  a6b717:	62 91 9d 40 14 c2    	vunpcklpd zmm0,zmm28,zmm26
  a6b71d:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm0
  a6b724:	17 
  a6b725:	62 f2 0d 40 7f c8    	vpermt2ps zmm1,zmm30,zmm0
  a6b72b:	62 b1 d5 40 14 d6    	vunpcklpd zmm2,zmm21,zmm22
  a6b731:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm2
  a6b738:	12 
  a6b739:	62 91 c5 40 14 c0    	vunpcklpd zmm0,zmm23,zmm24
  a6b73f:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm0
  a6b746:	16 
  a6b747:	62 f2 0d 40 7f d0    	vpermt2ps zmm2,zmm30,zmm0
  a6b74d:	62 f1 7c 48 10 62 11 	vmovups zmm4,ZMMWORD PTR [rdx+0x440]
  a6b754:	62 71 7c 48 10 5a 10 	vmovups zmm11,ZMMWORD PTR [rdx+0x400]
  a6b75b:	62 d1 6c 48 59 c3    	vmulps zmm0,zmm2,zmm11
  a6b761:	62 f2 75 48 b8 c4    	vfmadd231ps zmm0,zmm1,zmm4
  a6b767:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x7c0],zmm0
  a6b76e:	1f 
  a6b76f:	62 d1 74 48 59 c3    	vmulps zmm0,zmm1,zmm11
  a6b775:	62 f2 5d 48 bc c2    	vfnmadd231ps zmm0,zmm4,zmm2
  a6b77b:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm0
  a6b782:	03 
  a6b783:	62 f1 c5 48 15 cd    	vunpckhpd zmm1,zmm7,zmm5
  a6b789:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm1
  a6b790:	11 
  a6b791:	62 d1 f5 40 15 c6    	vunpckhpd zmm0,zmm17,zmm14
  a6b797:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm0
  a6b79e:	10 
  a6b79f:	62 b1 7c 48 28 e9    	vmovaps zmm5,zmm17
  a6b7a5:	62 f2 0d 40 7f c8    	vpermt2ps zmm1,zmm30,zmm0
  a6b7ab:	62 41 95 48 15 e8    	vunpckhpd zmm29,zmm13,zmm8
  a6b7b1:	62 91 9d 48 15 c7    	vunpckhpd zmm0,zmm12,zmm31
  a6b7b7:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm0
  a6b7be:	0f 
  a6b7bf:	62 11 7c 48 28 dd    	vmovaps zmm11,zmm29
  a6b7c5:	62 72 0d 40 7f d8    	vpermt2ps zmm11,zmm30,zmm0
  a6b7cb:	62 61 7c 48 10 4a 04 	vmovups zmm25,ZMMWORD PTR [rdx+0x100]
  a6b7d2:	62 f1 7c 48 10 42 05 	vmovups zmm0,ZMMWORD PTR [rdx+0x140]
  a6b7d9:	62 01 24 48 59 d9    	vmulps zmm27,zmm11,zmm25
  a6b7df:	62 62 75 48 b8 d8    	vfmadd231ps zmm27,zmm1,zmm0
  a6b7e5:	62 61 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x780],zmm27
  a6b7ec:	1e 
  a6b7ed:	62 91 74 48 59 c9    	vmulps zmm1,zmm1,zmm25
  a6b7f3:	62 d2 7d 48 bc cb    	vfnmadd231ps zmm1,zmm0,zmm11
  a6b7f9:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm1
  a6b800:	0d 
  a6b801:	62 61 cd 48 15 cb    	vunpckhpd zmm25,zmm6,zmm3
  a6b807:	62 91 9d 40 15 ca    	vunpckhpd zmm1,zmm28,zmm26
  a6b80d:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x680],zmm1
  a6b814:	1a 
  a6b815:	62 21 d5 40 15 d6    	vunpckhpd zmm26,zmm21,zmm22
  a6b81b:	62 91 c5 40 15 d8    	vunpckhpd zmm3,zmm23,zmm24
  a6b821:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x640],zmm3
  a6b828:	19 
  a6b829:	62 e1 7c 48 28 0d 0d 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff65b60d]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a6b830:	b6 65 ff 
  a6b833:	62 91 7c 48 28 c1    	vmovaps zmm0,zmm25
  a6b839:	62 f2 75 40 7f c1    	vpermt2ps zmm0,zmm17,zmm1
  a6b83f:	62 91 7c 48 28 ca    	vmovaps zmm1,zmm26
  a6b845:	62 f2 75 40 7f cb    	vpermt2ps zmm1,zmm17,zmm3
  a6b84b:	62 f1 7c 48 10 5a 17 	vmovups zmm3,ZMMWORD PTR [rdx+0x5c0]
  a6b852:	62 71 7c 48 10 5a 16 	vmovups zmm11,ZMMWORD PTR [rdx+0x580]
  a6b859:	62 c1 74 48 59 eb    	vmulps zmm21,zmm1,zmm11
  a6b85f:	62 e2 7d 48 b8 eb    	vfmadd231ps zmm21,zmm0,zmm3
  a6b865:	62 e1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x740],zmm21
  a6b86c:	1d 
  a6b86d:	62 d1 7c 48 59 c3    	vmulps zmm0,zmm0,zmm11
  a6b873:	62 f2 65 48 bc c1    	vfnmadd231ps zmm0,zmm3,zmm1
  a6b879:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm0
  a6b880:	0c 
  a6b881:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x200]
  a6b888:	08 
  a6b889:	62 f1 7c 48 10 24 24 	vmovups zmm4,ZMMWORD PTR [rsp]
  a6b890:	62 f1 ed 48 15 c4    	vunpckhpd zmm0,zmm2,zmm4
  a6b896:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp-0x40]
  a6b89d:	ff 
  a6b89e:	62 e1 7c 48 10 74 24 	vmovups zmm22,ZMMWORD PTR [rsp-0x80]
  a6b8a5:	fe 
  a6b8a6:	62 b1 cd 48 15 ce    	vunpckhpd zmm1,zmm6,zmm22
  a6b8ac:	62 f2 0d 40 7f c1    	vpermt2ps zmm0,zmm30,zmm1
  a6b8b2:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x80]
  a6b8b9:	02 
  a6b8ba:	62 b1 ad 48 15 cc    	vunpckhpd zmm1,zmm10,zmm20
  a6b8c0:	62 d1 b5 48 15 df    	vunpckhpd zmm3,zmm9,zmm15
  a6b8c6:	62 f2 0d 40 7f cb    	vpermt2ps zmm1,zmm30,zmm3
  a6b8cc:	62 f1 7c 48 10 5a 1d 	vmovups zmm3,ZMMWORD PTR [rdx+0x740]
  a6b8d3:	62 71 7c 48 10 5a 1c 	vmovups zmm11,ZMMWORD PTR [rdx+0x700]
  a6b8da:	62 c1 74 48 59 eb    	vmulps zmm21,zmm1,zmm11
  a6b8e0:	62 e2 7d 48 b8 eb    	vfmadd231ps zmm21,zmm0,zmm3
  a6b8e6:	62 e1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x700],zmm21
  a6b8ed:	1c 
  a6b8ee:	62 d1 7c 48 59 c3    	vmulps zmm0,zmm0,zmm11
  a6b8f4:	62 f2 65 48 bc c1    	vfnmadd231ps zmm0,zmm3,zmm1
  a6b8fa:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x6c0],zmm0
  a6b901:	1b 
  a6b902:	62 e1 ed 48 14 e4    	vunpcklpd zmm20,zmm2,zmm4
  a6b908:	62 b1 cd 48 14 c6    	vunpcklpd zmm0,zmm6,zmm22
  a6b90e:	62 f1 7c 48 11 04 24 	vmovups ZMMWORD PTR [rsp],zmm0
  a6b915:	62 31 ad 48 14 d8    	vunpcklpd zmm11,zmm10,zmm16
  a6b91b:	62 d1 b5 48 14 cf    	vunpcklpd zmm1,zmm9,zmm15
  a6b921:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a6b928:	ff 
  a6b929:	62 b1 7c 48 28 dc    	vmovaps zmm3,zmm20
  a6b92f:	62 f2 75 40 7f d8    	vpermt2ps zmm3,zmm17,zmm0
  a6b935:	62 51 7c 48 28 cb    	vmovaps zmm9,zmm11
  a6b93b:	62 72 75 40 7f c9    	vpermt2ps zmm9,zmm17,zmm1
  a6b941:	62 71 7c 48 10 52 1b 	vmovups zmm10,ZMMWORD PTR [rdx+0x6c0]
  a6b948:	62 71 7c 48 10 7a 1a 	vmovups zmm15,ZMMWORD PTR [rdx+0x680]
  a6b94f:	62 c1 34 48 59 c7    	vmulps zmm16,zmm9,zmm15
  a6b955:	62 c2 65 48 b8 c2    	vfmadd231ps zmm16,zmm3,zmm10
  a6b95b:	62 e1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm16
  a6b962:	02 
  a6b963:	62 d1 64 48 59 df    	vmulps zmm3,zmm3,zmm15
  a6b969:	62 d2 2d 48 bc d9    	vfnmadd231ps zmm3,zmm10,zmm9
  a6b96f:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm3
  a6b976:	15 
  a6b977:	62 e1 7c 48 10 74 24 	vmovups zmm22,ZMMWORD PTR [rsp+0x1c0]
  a6b97e:	07 
  a6b97f:	62 61 7c 48 10 44 24 	vmovups zmm24,ZMMWORD PTR [rsp+0x180]
  a6b986:	06 
  a6b987:	62 81 cd 40 15 c0    	vunpckhpd zmm16,zmm22,zmm24
  a6b98d:	62 61 7c 48 10 5c 24 	vmovups zmm27,ZMMWORD PTR [rsp+0x140]
  a6b994:	05 
  a6b995:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x100]
  a6b99c:	04 
  a6b99d:	62 61 a5 40 15 e6    	vunpckhpd zmm28,zmm27,zmm6
  a6b9a3:	62 b1 7c 48 28 d8    	vmovaps zmm3,zmm16
  a6b9a9:	62 92 75 40 7f dc    	vpermt2ps zmm3,zmm17,zmm28
  a6b9af:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x40]
  a6b9b6:	01 
  a6b9b7:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x240]
  a6b9be:	09 
  a6b9bf:	62 71 dd 48 15 c8    	vunpckhpd zmm9,zmm4,zmm0
  a6b9c5:	62 b1 7c 48 28 d3    	vmovaps zmm2,zmm19
  a6b9cb:	62 b1 7c 48 28 ca    	vmovaps zmm1,zmm18
  a6b9d1:	62 a1 e5 40 15 ea    	vunpckhpd zmm21,zmm19,zmm18
  a6b9d7:	62 51 7c 48 28 d1    	vmovaps zmm10,zmm9
  a6b9dd:	62 32 75 40 7f d5    	vpermt2ps zmm10,zmm17,zmm21
  a6b9e3:	62 71 7c 48 10 7a 0f 	vmovups zmm15,ZMMWORD PTR [rdx+0x3c0]
  a6b9ea:	62 e1 7c 48 10 5a 0e 	vmovups zmm19,ZMMWORD PTR [rdx+0x380]
  a6b9f1:	62 a1 2c 48 59 d3    	vmulps zmm18,zmm10,zmm19
  a6b9f7:	62 c2 65 48 b8 d7    	vfmadd231ps zmm18,zmm3,zmm15
  a6b9fd:	62 e1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x600],zmm18
  a6ba04:	18 
  a6ba05:	62 b1 64 48 59 db    	vmulps zmm3,zmm3,zmm19
  a6ba0b:	62 d2 05 48 bc da    	vfnmadd231ps zmm3,zmm15,zmm10
  a6ba11:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm3
  a6ba18:	14 
  a6ba19:	62 71 c5 48 14 54 24 	vunpcklpd zmm10,zmm7,ZMMWORD PTR [rsp+0x2c0]
  a6ba20:	0b 
  a6ba21:	62 d1 d5 48 14 ee    	vunpcklpd zmm5,zmm5,zmm14
  a6ba27:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm5
  a6ba2e:	fe 
  a6ba2f:	62 51 95 48 14 f8    	vunpcklpd zmm15,zmm13,zmm8
  a6ba35:	62 01 9d 48 14 ff    	vunpcklpd zmm31,zmm12,zmm31
  a6ba3b:	62 d1 7c 48 28 da    	vmovaps zmm3,zmm10
  a6ba41:	62 c1 7c 48 28 d2    	vmovaps zmm18,zmm10
  a6ba47:	62 f2 75 40 7f dd    	vpermt2ps zmm3,zmm17,zmm5
  a6ba4d:	62 d1 7c 48 28 ef    	vmovaps zmm5,zmm15
  a6ba53:	62 92 75 40 7f ef    	vpermt2ps zmm5,zmm17,zmm31
  a6ba59:	62 f1 7c 48 10 7a 02 	vmovups zmm7,ZMMWORD PTR [rdx+0x80]
  a6ba60:	62 71 7c 48 10 42 03 	vmovups zmm8,ZMMWORD PTR [rdx+0xc0]
  a6ba67:	62 71 54 48 59 d7    	vmulps zmm10,zmm5,zmm7
  a6ba6d:	62 52 65 48 b8 d0    	vfmadd231ps zmm10,zmm3,zmm8
  a6ba73:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm10
  a6ba7a:	0b 
  a6ba7b:	62 f1 64 48 59 df    	vmulps zmm3,zmm3,zmm7
  a6ba81:	62 f2 3d 48 bc dd    	vfnmadd231ps zmm3,zmm8,zmm5
  a6ba87:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm3
  a6ba8e:	13 
  a6ba8f:	62 91 cd 40 14 d8    	vunpcklpd zmm3,zmm22,zmm24
  a6ba95:	62 f1 a5 40 14 ee    	vunpcklpd zmm5,zmm27,zmm6
  a6ba9b:	62 f1 dd 48 14 f8    	vunpcklpd zmm7,zmm4,zmm0
  a6baa1:	62 71 ed 48 14 c1    	vunpcklpd zmm8,zmm2,zmm1
  a6baa7:	62 71 7c 48 28 d3    	vmovaps zmm10,zmm3
  a6baad:	62 f2 0d 40 7f dd    	vpermt2ps zmm3,zmm30,zmm5
  a6bab3:	62 71 7c 48 28 e7    	vmovaps zmm12,zmm7
  a6bab9:	62 d2 0d 40 7f f8    	vpermt2ps zmm7,zmm30,zmm8
  a6babf:	62 71 7c 48 10 6a 09 	vmovups zmm13,ZMMWORD PTR [rdx+0x240]
  a6bac6:	62 71 7c 48 10 72 08 	vmovups zmm14,ZMMWORD PTR [rdx+0x200]
  a6bacd:	62 c1 44 48 59 de    	vmulps zmm19,zmm7,zmm14
  a6bad3:	62 c2 65 48 b8 dd    	vfmadd231ps zmm19,zmm3,zmm13
  a6bad9:	62 e1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm19
  a6bae0:	01 
  a6bae1:	62 d1 64 48 59 c6    	vmulps zmm0,zmm3,zmm14
  a6bae7:	62 f2 15 48 bc c7    	vfnmadd231ps zmm0,zmm13,zmm7
  a6baed:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm0
  a6baf4:	08 
  a6baf5:	62 72 75 40 7f d5    	vpermt2ps zmm10,zmm17,zmm5
  a6bafb:	62 52 75 40 7f e0    	vpermt2ps zmm12,zmm17,zmm8
  a6bb01:	62 62 75 40 7f 6c 24 	vpermt2ps zmm29,zmm17,ZMMWORD PTR [rsp+0x3c0]
  a6bb08:	0f 
  a6bb09:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x440]
  a6bb10:	11 
  a6bb11:	62 f2 75 40 7f 54 24 	vpermt2ps zmm2,zmm17,ZMMWORD PTR [rsp+0x400]
  a6bb18:	10 
  a6bb19:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x480]
  a6bb20:	12 
  a6bb21:	62 f2 75 40 7f 4c 24 	vpermt2ps zmm1,zmm17,ZMMWORD PTR [rsp+0x580]
  a6bb28:	16 
  a6bb29:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x280]
  a6bb30:	0a 
  a6bb31:	62 f2 75 40 7f 5c 24 	vpermt2ps zmm3,zmm17,ZMMWORD PTR [rsp+0x5c0]
  a6bb38:	17 
  a6bb39:	62 32 0d 40 7f cd    	vpermt2ps zmm9,zmm30,zmm21
  a6bb3f:	62 82 0d 40 7f c4    	vpermt2ps zmm16,zmm30,zmm28
  a6bb45:	62 f1 7c 48 10 72 0d 	vmovups zmm6,ZMMWORD PTR [rdx+0x340]
  a6bb4c:	62 f1 7c 48 10 7a 0c 	vmovups zmm7,ZMMWORD PTR [rdx+0x300]
  a6bb53:	62 f1 7c 40 59 ef    	vmulps zmm5,zmm16,zmm7
  a6bb59:	62 f2 35 48 bc ee    	vfnmadd231ps zmm5,zmm9,zmm6
  a6bb5f:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x800],zmm5
  a6bb66:	20 
  a6bb67:	62 f1 34 48 59 c7    	vmulps zmm0,zmm9,zmm7
  a6bb6d:	62 b2 4d 48 b8 c0    	vfmadd231ps zmm0,zmm6,zmm16
  a6bb73:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm0
  a6bb7a:	0a 
  a6bb7b:	62 f1 7c 48 10 72 13 	vmovups zmm6,ZMMWORD PTR [rdx+0x4c0]
  a6bb82:	62 f1 7c 48 10 7a 12 	vmovups zmm7,ZMMWORD PTR [rdx+0x480]
  a6bb89:	62 f1 64 48 59 c7    	vmulps zmm0,zmm3,zmm7
  a6bb8f:	62 f2 75 48 bc c6    	vfnmadd231ps zmm0,zmm1,zmm6
  a6bb95:	62 71 7c 48 28 c0    	vmovaps zmm8,zmm0
  a6bb9b:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x840],zmm0
  a6bba2:	21 
  a6bba3:	62 e1 74 48 59 ff    	vmulps zmm23,zmm1,zmm7
  a6bba9:	62 e2 4d 48 b8 fb    	vfmadd231ps zmm23,zmm6,zmm3
  a6bbaf:	62 f1 7c 48 10 72 07 	vmovups zmm6,ZMMWORD PTR [rdx+0x1c0]
  a6bbb6:	62 f1 7c 48 10 7a 06 	vmovups zmm7,ZMMWORD PTR [rdx+0x180]
  a6bbbd:	62 f1 6c 48 59 c7    	vmulps zmm0,zmm2,zmm7
  a6bbc3:	62 f2 15 40 bc c6    	vfnmadd231ps zmm0,zmm29,zmm6
  a6bbc9:	62 f1 7c 48 28 d8    	vmovaps zmm3,zmm0
  a6bbcf:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm0
  a6bbd6:	0e 
  a6bbd7:	62 e1 14 40 59 f7    	vmulps zmm22,zmm29,zmm7
  a6bbdd:	62 e2 4d 48 b8 f2    	vfmadd231ps zmm22,zmm6,zmm2
  a6bbe3:	62 72 0d 40 7f 5c 24 	vpermt2ps zmm11,zmm30,ZMMWORD PTR [rsp-0x40]
  a6bbea:	ff 
  a6bbeb:	62 e2 0d 40 7f 24 24 	vpermt2ps zmm20,zmm30,ZMMWORD PTR [rsp]
  a6bbf2:	62 f1 7c 48 10 62 19 	vmovups zmm4,ZMMWORD PTR [rdx+0x640]
  a6bbf9:	62 f1 7c 48 10 72 18 	vmovups zmm6,ZMMWORD PTR [rdx+0x600]
  a6bc00:	62 61 5c 40 59 e6    	vmulps zmm28,zmm20,zmm6
  a6bc06:	62 62 25 48 bc e4    	vfnmadd231ps zmm28,zmm11,zmm4
  a6bc0c:	62 e1 24 48 59 de    	vmulps zmm19,zmm11,zmm6
  a6bc12:	62 a2 5d 48 b8 dc    	vfmadd231ps zmm19,zmm4,zmm20
  a6bc18:	62 f1 7c 48 10 42 0b 	vmovups zmm0,ZMMWORD PTR [rdx+0x2c0]
  a6bc1f:	62 f1 7c 48 10 4a 0a 	vmovups zmm1,ZMMWORD PTR [rdx+0x280]
  a6bc26:	62 f1 1c 48 59 d1    	vmulps zmm2,zmm12,zmm1
  a6bc2c:	62 f2 2d 48 b8 d0    	vfmadd231ps zmm2,zmm10,zmm0
  a6bc32:	62 f1 7c 48 11 14 24 	vmovups ZMMWORD PTR [rsp],zmm2
  a6bc39:	62 f1 2c 48 59 c9    	vmulps zmm1,zmm10,zmm1
  a6bc3f:	62 d2 7d 48 bc cc    	vfnmadd231ps zmm1,zmm0,zmm12
  a6bc45:	62 61 7c 48 28 d9    	vmovaps zmm27,zmm1
  a6bc4b:	62 62 0d 40 7f 4c 24 	vpermt2ps zmm25,zmm30,ZMMWORD PTR [rsp+0x680]
  a6bc52:	1a 
  a6bc53:	62 62 0d 40 7f 54 24 	vpermt2ps zmm26,zmm30,ZMMWORD PTR [rsp+0x640]
  a6bc5a:	19 
  a6bc5b:	62 f1 7c 48 10 42 15 	vmovups zmm0,ZMMWORD PTR [rdx+0x540]
  a6bc62:	62 f1 7c 48 10 4a 14 	vmovups zmm1,ZMMWORD PTR [rdx+0x500]
  a6bc69:	62 f1 2c 40 59 d1    	vmulps zmm2,zmm26,zmm1
  a6bc6f:	62 f2 35 40 b8 d0    	vfmadd231ps zmm2,zmm25,zmm0
  a6bc75:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm2
  a6bc7c:	07 
  a6bc7d:	62 f1 34 40 59 c9    	vmulps zmm1,zmm25,zmm1
  a6bc83:	62 92 7d 48 bc ca    	vfnmadd231ps zmm1,zmm0,zmm26
  a6bc89:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm1
  a6bc90:	04 
  a6bc91:	62 12 0d 40 7f ff    	vpermt2ps zmm15,zmm30,zmm31
  a6bc97:	62 71 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm15
  a6bc9e:	ff 
  a6bc9f:	62 e2 0d 40 7f 54 24 	vpermt2ps zmm18,zmm30,ZMMWORD PTR [rsp-0x80]
  a6bca6:	fe 
  a6bca7:	62 e1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm18
  a6bcae:	06 
  a6bcaf:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0xc0]
  a6bcb6:	03 
  a6bcb7:	62 f1 7c 48 5c 44 24 	vsubps zmm0,zmm0,ZMMWORD PTR [rsp+0x340]
  a6bcbe:	0d 
  a6bcbf:	62 61 7c 48 10 44 24 	vmovups zmm24,ZMMWORD PTR [rsp+0x6c0]
  a6bcc6:	1b 
  a6bcc7:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x300]
  a6bcce:	0c 
  a6bccf:	62 91 74 48 5c f0    	vsubps zmm6,zmm1,zmm24
  a6bcd5:	62 f2 7d 48 18 0d 79 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff609a79]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a6bcdc:	9a 60 ff 
  a6bcdf:	62 f1 4c 48 59 d1    	vmulps zmm2,zmm6,zmm1
  a6bce5:	62 f2 7d 48 18 25 b1 	vbroadcastss zmm4,DWORD PTR [rip+0xffffffffff6096b1]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a6bcec:	96 60 ff 
  a6bcef:	62 f2 7d 48 b8 d4    	vfmadd231ps zmm2,zmm0,zmm4
  a6bcf5:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm2
  a6bcfc:	05 
  a6bcfd:	62 61 7c 48 59 d1    	vmulps zmm26,zmm0,zmm1
  a6bd03:	62 62 5d 48 bc d6    	vfnmadd231ps zmm26,zmm4,zmm6
  a6bd09:	62 e1 7c 48 10 6c 24 	vmovups zmm21,ZMMWORD PTR [rsp+0x540]
  a6bd10:	15 
  a6bd11:	62 e1 7c 48 10 44 24 	vmovups zmm16,ZMMWORD PTR [rsp+0x500]
  a6bd18:	14 
  a6bd19:	62 b1 54 40 5c c0    	vsubps zmm0,zmm21,zmm16
  a6bd1f:	62 71 7c 48 10 64 24 	vmovups zmm12,ZMMWORD PTR [rsp+0x4c0]
  a6bd26:	13 
  a6bd27:	62 f1 1c 48 5c 74 24 	vsubps zmm6,zmm12,ZMMWORD PTR [rsp+0x200]
  a6bd2e:	08 
  a6bd2f:	62 f1 4c 48 59 d1    	vmulps zmm2,zmm6,zmm1
  a6bd35:	62 f2 7d 48 b8 d4    	vfmadd231ps zmm2,zmm0,zmm4
  a6bd3b:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm2
  a6bd42:	fe 
  a6bd43:	62 e1 7c 48 59 d1    	vmulps zmm18,zmm0,zmm1
  a6bd49:	62 e2 5d 48 bc d6    	vfnmadd231ps zmm18,zmm4,zmm6
  a6bd4f:	62 91 64 48 5c c4    	vsubps zmm0,zmm3,zmm28
  a6bd55:	62 d1 54 48 5c f0    	vsubps zmm6,zmm5,zmm8
  a6bd5b:	62 f1 4c 48 59 d1    	vmulps zmm2,zmm6,zmm1
  a6bd61:	62 f2 7d 48 b8 d4    	vfmadd231ps zmm2,zmm0,zmm4
  a6bd67:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm2
  a6bd6e:	09 
  a6bd6f:	62 61 7c 48 59 f9    	vmulps zmm31,zmm0,zmm1
  a6bd75:	62 62 5d 48 bc fe    	vfnmadd231ps zmm31,zmm4,zmm6
  a6bd7b:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x7c0]
  a6bd82:	1f 
  a6bd83:	62 61 7c 48 10 6c 24 	vmovups zmm29,ZMMWORD PTR [rsp+0x780]
  a6bd8a:	1e 
  a6bd8b:	62 91 2c 48 5c c5    	vsubps zmm0,zmm10,zmm29
  a6bd91:	62 71 7c 48 10 5c 24 	vmovups zmm11,ZMMWORD PTR [rsp+0x740]
  a6bd98:	1d 
  a6bd99:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp+0x700]
  a6bda0:	1c 
  a6bda1:	62 d1 24 48 5c f1    	vsubps zmm6,zmm11,zmm9
  a6bda7:	62 71 4c 48 59 f9    	vmulps zmm15,zmm6,zmm1
  a6bdad:	62 72 7d 48 b8 fc    	vfmadd231ps zmm15,zmm0,zmm4
  a6bdb3:	62 71 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x680],zmm15
  a6bdba:	1a 
  a6bdbb:	62 e1 7c 48 59 c9    	vmulps zmm17,zmm0,zmm1
  a6bdc1:	62 e2 5d 48 bc ce    	vfnmadd231ps zmm17,zmm4,zmm6
  a6bdc7:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x80]
  a6bdce:	02 
  a6bdcf:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x600]
  a6bdd6:	18 
  a6bdd7:	62 f1 54 48 5c f3    	vsubps zmm6,zmm5,zmm3
  a6bddd:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x2c0]
  a6bde4:	0b 
  a6bde5:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x40]
  a6bdec:	01 
  a6bded:	62 f1 6c 48 5c f8    	vsubps zmm7,zmm2,zmm0
  a6bdf3:	62 61 44 48 59 f1    	vmulps zmm30,zmm7,zmm1
  a6bdf9:	62 62 4d 48 b8 f4    	vfmadd231ps zmm30,zmm6,zmm4
  a6bdff:	62 61 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm30
  a6be06:	17 
  a6be07:	62 e1 4c 48 59 e1    	vmulps zmm20,zmm6,zmm1
  a6be0d:	62 e2 5d 48 bc e7    	vfnmadd231ps zmm20,zmm4,zmm7
  a6be13:	62 b1 4c 40 5c fb    	vsubps zmm7,zmm22,zmm19
  a6be19:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x280]
  a6be20:	0a 
  a6be21:	62 31 4c 48 5c c7    	vsubps zmm8,zmm6,zmm23
  a6be27:	62 71 3c 48 59 e9    	vmulps zmm13,zmm8,zmm1
  a6be2d:	62 72 45 48 b8 ec    	vfmadd231ps zmm13,zmm7,zmm4
  a6be33:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x640],zmm13
  a6be3a:	19 
  a6be3b:	62 71 44 48 59 f1    	vmulps zmm14,zmm7,zmm1
  a6be41:	62 72 3d 48 bc f4    	vfnmadd231ps zmm14,zmm8,zmm4
  a6be47:	62 51 24 48 58 d9    	vaddps zmm11,zmm11,zmm9
  a6be4d:	62 01 2c 48 58 ed    	vaddps zmm29,zmm10,zmm29
  a6be53:	62 71 6c 48 58 e8    	vaddps zmm13,zmm2,zmm0
  a6be59:	62 71 54 48 58 d3    	vaddps zmm10,zmm5,zmm3
  a6be5f:	62 21 4c 48 58 cf    	vaddps zmm25,zmm6,zmm23
  a6be65:	62 a1 4c 40 58 db    	vaddps zmm19,zmm22,zmm19
  a6be6b:	62 f1 3c 40 58 6c 24 	vaddps zmm5,zmm24,ZMMWORD PTR [rsp+0x300]
  a6be72:	0c 
  a6be73:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x340]
  a6be7a:	0d 
  a6be7b:	62 71 7c 48 58 44 24 	vaddps zmm8,zmm0,ZMMWORD PTR [rsp+0xc0]
  a6be82:	03 
  a6be83:	62 f1 1c 48 58 5c 24 	vaddps zmm3,zmm12,ZMMWORD PTR [rsp+0x200]
  a6be8a:	08 
  a6be8b:	62 b1 54 40 58 f8    	vaddps zmm7,zmm21,zmm16
  a6be91:	62 f2 7d 48 18 0d 4d 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff60984d]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a6be98:	98 60 ff 
  a6be9b:	62 e1 7c 48 28 f9    	vmovaps zmm23,zmm1
  a6bea1:	62 91 7c 48 28 c3    	vmovaps zmm0,zmm27
  a6bea7:	62 61 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm27
  a6beae:	16 
  a6beaf:	62 82 3d 48 a8 fb    	vfmadd213ps zmm23,zmm8,zmm27
  a6beb5:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x780],zmm8
  a6bebc:	1e 
  a6bebd:	62 72 7d 48 18 0d 7d 	vbroadcastss zmm9,DWORD PTR [rip+0xffffffffff60977d]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a6bec4:	97 60 ff 
  a6bec7:	62 c2 55 48 bc f9    	vfnmadd231ps zmm23,zmm5,zmm9
  a6becd:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x740],zmm5
  a6bed4:	1d 
  a6bed5:	62 e1 7c 48 28 f1    	vmovaps zmm22,zmm1
  a6bedb:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x100]
  a6bee2:	04 
  a6bee3:	62 e2 45 48 a8 f6    	vfmadd213ps zmm22,zmm7,zmm6
  a6bee9:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x700],zmm7
  a6bef0:	1c 
  a6bef1:	62 c2 65 48 bc f1    	vfnmadd231ps zmm22,zmm3,zmm9
  a6bef7:	62 e1 7c 48 28 eb    	vmovaps zmm21,zmm3
  a6befd:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x6c0],zmm3
  a6bf04:	1b 
  a6bf05:	62 d1 44 40 5c df    	vsubps zmm3,zmm23,zmm15
  a6bf0b:	62 91 4c 40 5c e6    	vsubps zmm4,zmm22,zmm30
  a6bf11:	62 f1 64 48 5c d4    	vsubps zmm2,zmm3,zmm4
  a6bf17:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm2
  a6bf1e:	02 
  a6bf1f:	62 f1 64 48 58 d4    	vaddps zmm2,zmm3,zmm4
  a6bf25:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm2
  a6bf2c:	03 
  a6bf2d:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x800]
  a6bf34:	20 
  a6bf35:	62 61 6c 48 58 5c 24 	vaddps zmm27,zmm2,ZMMWORD PTR [rsp+0x840]
  a6bf3c:	21 
  a6bf3d:	62 61 1c 40 58 74 24 	vaddps zmm30,zmm28,ZMMWORD PTR [rsp+0x380]
  a6bf44:	0e 
  a6bf45:	62 61 7c 48 28 e1    	vmovaps zmm28,zmm1
  a6bf4b:	62 71 7c 48 10 3c 24 	vmovups zmm15,ZMMWORD PTR [rsp]
  a6bf52:	62 42 15 40 a8 e7    	vfmadd213ps zmm28,zmm29,zmm15
  a6bf58:	62 42 25 48 bc e1    	vfnmadd231ps zmm28,zmm11,zmm9
  a6bf5e:	62 51 7c 48 28 e3    	vmovaps zmm12,zmm11
  a6bf64:	62 71 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm11
  a6bf6b:	12 
  a6bf6c:	62 61 7c 48 28 c1    	vmovaps zmm24,zmm1
  a6bf72:	62 e1 7c 48 10 44 24 	vmovups zmm16,ZMMWORD PTR [rsp+0x1c0]
  a6bf79:	07 
  a6bf7a:	62 22 2d 48 a8 c0    	vfmadd213ps zmm24,zmm10,zmm16
  a6bf80:	62 51 7c 48 28 da    	vmovaps zmm11,zmm10
  a6bf86:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm10
  a6bf8d:	11 
  a6bf8e:	62 42 15 48 bc c1    	vfnmadd231ps zmm24,zmm13,zmm9
  a6bf94:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm13
  a6bf9b:	10 
  a6bf9c:	62 f1 1c 40 58 54 24 	vaddps zmm2,zmm28,ZMMWORD PTR [rsp+0x140]
  a6bfa3:	05 
  a6bfa4:	62 f1 3c 40 58 5c 24 	vaddps zmm3,zmm24,ZMMWORD PTR [rsp-0x80]
  a6bfab:	fe 
  a6bfac:	62 f1 6c 48 58 e3    	vaddps zmm4,zmm2,zmm3
  a6bfb2:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm4
  a6bfb9:	0d 
  a6bfba:	62 f1 6c 48 5c d3    	vsubps zmm2,zmm2,zmm3
  a6bfc0:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm2
  a6bfc7:	01 
  a6bfc8:	62 d1 7c 48 28 d1    	vmovaps zmm2,zmm9
  a6bfce:	62 f2 3d 48 ac d0    	vfnmadd213ps zmm2,zmm8,zmm0
  a6bfd4:	62 f2 55 48 b8 d1    	vfmadd231ps zmm2,zmm5,zmm1
  a6bfda:	62 d1 7c 48 28 e9    	vmovaps zmm5,zmm9
  a6bfe0:	62 f2 45 48 ac ee    	vfnmadd213ps zmm5,zmm7,zmm6
  a6bfe6:	62 f2 55 40 b8 e9    	vfmadd231ps zmm5,zmm21,zmm1
  a6bfec:	62 b1 6c 48 5c d9    	vsubps zmm3,zmm2,zmm17
  a6bff2:	62 b1 54 48 5c e4    	vsubps zmm4,zmm5,zmm20
  a6bff8:	62 f1 64 48 5c c4    	vsubps zmm0,zmm3,zmm4
  a6bffe:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x7c0],zmm0
  a6c005:	1f 
  a6c006:	62 f1 64 48 58 c4    	vaddps zmm0,zmm3,zmm4
  a6c00c:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm0
  a6c013:	0c 
  a6c014:	62 f1 7c 48 28 e1    	vmovaps zmm4,zmm1
  a6c01a:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp-0x40]
  a6c021:	ff 
  a6c022:	62 e1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm19
  a6c029:	0f 
  a6c02a:	62 f2 65 40 a8 e3    	vfmadd213ps zmm4,zmm19,zmm3
  a6c030:	62 d2 35 40 bc e1    	vfnmadd231ps zmm4,zmm25,zmm9
  a6c036:	62 f1 7c 48 28 f1    	vmovaps zmm6,zmm1
  a6c03c:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x180]
  a6c043:	06 
  a6c044:	62 f2 0d 40 a8 f0    	vfmadd213ps zmm6,zmm30,zmm0
  a6c04a:	62 d2 25 40 bc f1    	vfnmadd231ps zmm6,zmm27,zmm9
  a6c050:	62 51 7c 48 28 d1    	vmovaps zmm10,zmm9
  a6c056:	62 52 15 40 ac d7    	vfnmadd213ps zmm10,zmm29,zmm15
  a6c05c:	62 72 1d 48 b8 d1    	vfmadd231ps zmm10,zmm12,zmm1
  a6c062:	62 51 7c 48 28 f9    	vmovaps zmm15,zmm9
  a6c068:	62 32 25 48 ac f8    	vfnmadd213ps zmm15,zmm11,zmm16
  a6c06e:	62 72 15 48 b8 f9    	vfmadd231ps zmm15,zmm13,zmm1
  a6c074:	62 c1 7c 48 28 c1    	vmovaps zmm16,zmm9
  a6c07a:	62 e2 65 40 ac c3    	vfnmadd213ps zmm16,zmm19,zmm3
  a6c080:	62 e2 35 40 b8 c1    	vfmadd231ps zmm16,zmm25,zmm1
  a6c086:	62 91 7c 48 28 d9    	vmovaps zmm3,zmm25
  a6c08c:	62 72 0d 40 ac c8    	vfnmadd213ps zmm9,zmm30,zmm0
  a6c092:	62 72 25 40 b8 c9    	vfmadd231ps zmm9,zmm27,zmm1
  a6c098:	62 91 2c 48 58 ca    	vaddps zmm1,zmm10,zmm26
  a6c09e:	62 b1 04 48 58 c2    	vaddps zmm0,zmm15,zmm18
  a6c0a4:	62 f1 74 48 58 f8    	vaddps zmm7,zmm1,zmm0
  a6c0aa:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm7
  a6c0b1:	0b 
  a6c0b2:	62 f1 74 48 5c c0    	vsubps zmm0,zmm1,zmm0
  a6c0b8:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x600],zmm0
  a6c0bf:	18 
  a6c0c0:	62 b1 04 40 58 c0    	vaddps zmm0,zmm31,zmm16
  a6c0c6:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm0
  a6c0cd:	15 
  a6c0ce:	62 91 7c 40 5c cf    	vsubps zmm1,zmm16,zmm31
  a6c0d4:	62 91 2c 48 5c fa    	vsubps zmm7,zmm10,zmm26
  a6c0da:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm7
  a6c0e1:	13 
  a6c0e2:	62 21 04 48 5c fa    	vsubps zmm31,zmm15,zmm18
  a6c0e8:	62 d1 34 48 5c c6    	vsubps zmm0,zmm9,zmm14
  a6c0ee:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm0
  a6c0f5:	14 
  a6c0f6:	62 c1 34 48 58 d6    	vaddps zmm18,zmm9,zmm14
  a6c0fc:	62 a1 6c 48 58 c1    	vaddps zmm16,zmm2,zmm17
  a6c102:	62 f2 7d 48 18 05 54 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff609354]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a6c109:	93 60 ff 
  a6c10c:	62 31 54 48 58 fc    	vaddps zmm15,zmm5,zmm20
  a6c112:	62 91 44 48 58 ef    	vaddps zmm5,zmm7,zmm31
  a6c118:	62 f1 74 48 58 d5    	vaddps zmm2,zmm1,zmm5
  a6c11e:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm2
  a6c125:	08 
  a6c126:	62 f2 7d 48 ac e9    	vfnmadd213ps zmm5,zmm0,zmm1
  a6c12c:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm5
  a6c133:	0e 
  a6c134:	62 71 7c 48 28 c8    	vmovaps zmm9,zmm0
  a6c13a:	62 71 7c 48 28 d0    	vmovaps zmm10,zmm0
  a6c140:	62 f1 7c 48 28 c8    	vmovaps zmm1,zmm0
  a6c146:	62 e1 7c 48 28 e0    	vmovaps zmm20,zmm0
  a6c14c:	62 c1 7c 40 58 cf    	vaddps zmm17,zmm16,zmm15
  a6c152:	62 e1 7c 48 28 e8    	vmovaps zmm21,zmm0
  a6c158:	62 61 7c 48 28 c8    	vmovaps zmm25,zmm0
  a6c15e:	62 f1 7c 48 28 d0    	vmovaps zmm2,zmm0
  a6c164:	62 f1 7c 48 28 e8    	vmovaps zmm5,zmm0
  a6c16a:	62 b2 75 40 ac c2    	vfnmadd213ps zmm0,zmm17,zmm18
  a6c170:	62 b1 6c 40 58 f9    	vaddps zmm7,zmm18,zmm17
  a6c176:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm7
  a6c17d:	0a 
  a6c17e:	62 71 1c 40 5c 5c 24 	vsubps zmm11,zmm28,ZMMWORD PTR [rsp+0x140]
  a6c185:	05 
  a6c186:	62 71 3c 40 5c 44 24 	vsubps zmm8,zmm24,ZMMWORD PTR [rsp-0x80]
  a6c18d:	fe 
  a6c18e:	62 e1 7c 48 10 5c 24 	vmovups zmm19,ZMMWORD PTR [rsp+0x240]
  a6c195:	09 
  a6c196:	62 e1 64 40 58 d4    	vaddps zmm18,zmm19,zmm4
  a6c19c:	62 a1 5c 48 5c cb    	vsubps zmm17,zmm4,zmm19
  a6c1a2:	62 f1 44 40 58 64 24 	vaddps zmm4,zmm23,ZMMWORD PTR [rsp+0x680]
  a6c1a9:	1a 
  a6c1aa:	62 71 4c 40 58 6c 24 	vaddps zmm13,zmm22,ZMMWORD PTR [rsp+0x5c0]
  a6c1b1:	17 
  a6c1b2:	62 41 5c 48 5c c5    	vsubps zmm24,zmm4,zmm13
  a6c1b8:	62 51 5c 48 58 ed    	vaddps zmm13,zmm4,zmm13
  a6c1be:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0x640]
  a6c1c5:	19 
  a6c1c6:	62 f1 4c 48 5c e7    	vsubps zmm4,zmm6,zmm7
  a6c1cc:	62 71 4c 48 58 e7    	vaddps zmm12,zmm6,zmm7
  a6c1d2:	62 41 24 48 58 d0    	vaddps zmm26,zmm11,zmm8
  a6c1d8:	62 51 24 48 5c c0    	vsubps zmm8,zmm11,zmm8
  a6c1de:	62 f1 14 40 58 34 24 	vaddps zmm6,zmm29,ZMMWORD PTR [rsp]
  a6c1e5:	62 f1 4c 48 58 74 24 	vaddps zmm6,zmm6,ZMMWORD PTR [rsp+0x480]
  a6c1ec:	12 
  a6c1ed:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0x1c0]
  a6c1f4:	07 
  a6c1f5:	62 71 44 48 58 5c 24 	vaddps zmm11,zmm7,ZMMWORD PTR [rsp+0x440]
  a6c1fc:	11 
  a6c1fd:	62 71 24 48 58 5c 24 	vaddps zmm11,zmm11,ZMMWORD PTR [rsp+0x400]
  a6c204:	10 
  a6c205:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp-0x40]
  a6c20c:	ff 
  a6c20d:	62 71 44 48 58 74 24 	vaddps zmm14,zmm7,ZMMWORD PTR [rsp+0x3c0]
  a6c214:	0f 
  a6c215:	62 c1 64 48 58 de    	vaddps zmm19,zmm3,zmm14
  a6c21b:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x580]
  a6c222:	16 
  a6c223:	62 71 64 48 58 74 24 	vaddps zmm14,zmm3,ZMMWORD PTR [rsp+0x780]
  a6c22a:	1e 
  a6c22b:	62 71 0c 48 58 74 24 	vaddps zmm14,zmm14,ZMMWORD PTR [rsp+0x740]
  a6c232:	1d 
  a6c233:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x100]
  a6c23a:	04 
  a6c23b:	62 61 64 48 58 64 24 	vaddps zmm28,zmm3,ZMMWORD PTR [rsp+0x700]
  a6c242:	1c 
  a6c243:	62 61 1c 40 58 64 24 	vaddps zmm28,zmm28,ZMMWORD PTR [rsp+0x6c0]
  a6c24a:	1b 
  a6c24b:	62 01 0c 48 5c ec    	vsubps zmm29,zmm14,zmm28
  a6c251:	62 01 0c 48 58 e4    	vaddps zmm28,zmm14,zmm28
  a6c257:	62 71 0c 40 58 74 24 	vaddps zmm14,zmm30,ZMMWORD PTR [rsp+0x180]
  a6c25e:	06 
  a6c25f:	62 01 0c 48 58 db    	vaddps zmm27,zmm14,zmm27
  a6c265:	62 41 4c 48 58 f3    	vaddps zmm30,zmm6,zmm11
  a6c26b:	62 d1 4c 48 5c f3    	vsubps zmm6,zmm6,zmm11
  a6c271:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x340]
  a6c278:	0d 
  a6c279:	62 32 65 48 ac ca    	vfnmadd213ps zmm9,zmm3,zmm18
  a6c27f:	62 f1 6c 40 58 db    	vaddps zmm3,zmm18,zmm3
  a6c285:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm3
  a6c28c:	ff 
  a6c28d:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0xc0]
  a6c294:	03 
  a6c295:	62 72 65 48 ac d4    	vfnmadd213ps zmm10,zmm3,zmm4
  a6c29b:	62 f1 5c 48 58 db    	vaddps zmm3,zmm4,zmm3
  a6c2a1:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm3
  a6c2a8:	07 
  a6c2a9:	62 e1 7c 48 10 74 24 	vmovups zmm22,ZMMWORD PTR [rsp+0x2c0]
  a6c2b0:	0b 
  a6c2b1:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0x540]
  a6c2b8:	15 
  a6c2b9:	62 f2 4d 40 ac cf    	vfnmadd213ps zmm1,zmm22,zmm7
  a6c2bf:	62 72 7d 48 18 1d 0b 	vbroadcastss zmm11,DWORD PTR [rip+0xffffffffff60900b]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a6c2c6:	90 60 ff 
  a6c2c9:	62 f1 24 48 59 64 24 	vmulps zmm4,zmm11,ZMMWORD PTR [rsp+0x7c0]
  a6c2d0:	1f 
  a6c2d1:	62 f1 74 48 5c dc    	vsubps zmm3,zmm1,zmm4
  a6c2d7:	62 f1 7c 48 11 1c 24 	vmovups ZMMWORD PTR [rsp],zmm3
  a6c2de:	62 f1 74 48 58 cc    	vaddps zmm1,zmm1,zmm4
  a6c2e4:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a6c2eb:	fe 
  a6c2ec:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x300]
  a6c2f3:	0c 
  a6c2f4:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x500]
  a6c2fb:	14 
  a6c2fc:	62 e2 5d 48 ac e3    	vfnmadd213ps zmm20,zmm4,zmm3
  a6c302:	62 f1 24 48 59 4c 24 	vmulps zmm1,zmm11,ZMMWORD PTR [rsp+0x600]
  a6c309:	18 
  a6c30a:	62 71 5c 40 58 f1    	vaddps zmm14,zmm20,zmm1
  a6c310:	62 e1 5c 40 5c e1    	vsubps zmm20,zmm20,zmm1
  a6c316:	62 d1 7c 40 5c cf    	vsubps zmm1,zmm16,zmm15
  a6c31c:	62 71 7c 48 10 7c 24 	vmovups zmm15,ZMMWORD PTR [rsp+0x4c0]
  a6c323:	13 
  a6c324:	62 11 04 48 5c ff    	vsubps zmm15,zmm15,zmm31
  a6c32a:	62 e1 24 48 59 44 24 	vmulps zmm16,zmm11,ZMMWORD PTR [rsp+0x80]
  a6c331:	02 
  a6c332:	62 e1 24 48 59 7c 24 	vmulps zmm23,zmm11,ZMMWORD PTR [rsp+0x40]
  a6c339:	01 
  a6c33a:	62 41 3c 40 59 c3    	vmulps zmm24,zmm24,zmm11
  a6c340:	62 51 3c 48 59 c3    	vmulps zmm8,zmm8,zmm11
  a6c346:	62 41 14 40 59 eb    	vmulps zmm29,zmm29,zmm11
  a6c34c:	62 d1 4c 48 59 f3    	vmulps zmm6,zmm6,zmm11
  a6c352:	62 41 74 48 59 fb    	vmulps zmm31,zmm1,zmm11
  a6c358:	62 51 04 48 59 db    	vmulps zmm11,zmm15,zmm11
  a6c35e:	62 a2 2d 40 ac e9    	vfnmadd213ps zmm21,zmm26,zmm17
  a6c364:	62 81 74 40 58 d2    	vaddps zmm18,zmm17,zmm26
  a6c36a:	62 42 15 48 ac cc    	vfnmadd213ps zmm25,zmm13,zmm12
  a6c370:	62 51 1c 48 58 fd    	vaddps zmm15,zmm12,zmm13
  a6c376:	62 b2 0d 40 ac d3    	vfnmadd213ps zmm2,zmm30,zmm19
  a6c37c:	62 91 6c 48 5c cd    	vsubps zmm1,zmm2,zmm29
  a6c382:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm1
  a6c389:	06 
  a6c38a:	62 81 6c 48 58 cd    	vaddps zmm17,zmm2,zmm29
  a6c390:	62 92 1d 40 ac eb    	vfnmadd213ps zmm5,zmm28,zmm27
  a6c396:	62 71 54 48 58 ee    	vaddps zmm13,zmm5,zmm6
  a6c39c:	62 f1 54 48 5c ce    	vsubps zmm1,zmm5,zmm6
  a6c3a2:	62 b1 34 48 58 f0    	vaddps zmm6,zmm9,zmm16
  a6c3a8:	62 b1 34 48 5c e8    	vsubps zmm5,zmm9,zmm16
  a6c3ae:	62 b1 2c 48 5c d7    	vsubps zmm2,zmm10,zmm23
  a6c3b4:	62 21 2c 48 58 d7    	vaddps zmm26,zmm10,zmm23
  a6c3ba:	62 a1 44 48 58 c6    	vaddps zmm16,zmm7,zmm22
  a6c3c0:	62 e1 64 48 58 fc    	vaddps zmm23,zmm3,zmm4
  a6c3c6:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x380]
  a6c3cd:	0e 
  a6c3ce:	62 91 5c 48 5c df    	vsubps zmm3,zmm4,zmm31
  a6c3d4:	62 11 5c 48 58 e7    	vaddps zmm12,zmm4,zmm31
  a6c3da:	62 41 7c 48 58 eb    	vaddps zmm29,zmm0,zmm11
  a6c3e0:	62 d1 7c 48 5c c3    	vsubps zmm0,zmm0,zmm11
  a6c3e6:	62 11 54 40 58 d8    	vaddps zmm11,zmm21,zmm24
  a6c3ec:	62 11 54 40 5c c8    	vsubps zmm9,zmm21,zmm24
  a6c3f2:	62 41 34 40 5c c0    	vsubps zmm24,zmm25,zmm8
  a6c3f8:	62 51 34 40 58 c0    	vaddps zmm8,zmm25,zmm8
  a6c3fe:	62 11 64 40 58 d6    	vaddps zmm10,zmm19,zmm30
  a6c404:	62 81 24 40 58 f4    	vaddps zmm22,zmm27,zmm28
  a6c40a:	62 61 7c 48 28 1d ac 	vmovaps zmm27,ZMMWORD PTR [rip+0xffffffffff6281ac]        # 945c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21a70>
  a6c411:	81 62 ff 
  a6c414:	62 c2 25 40 7f f2    	vpermt2ps zmm22,zmm27,zmm10
  a6c41a:	62 52 25 40 7f c1    	vpermt2ps zmm8,zmm27,zmm9
  a6c420:	62 d2 25 40 7f c4    	vpermt2ps zmm0,zmm27,zmm12
  a6c426:	62 a2 25 40 7f f8    	vpermt2ps zmm23,zmm27,zmm16
  a6c42c:	62 62 25 40 7f d5    	vpermt2ps zmm26,zmm27,zmm5
  a6c432:	62 b2 25 40 7f c9    	vpermt2ps zmm1,zmm27,zmm17
  a6c438:	62 32 25 40 7f fa    	vpermt2ps zmm15,zmm27,zmm18
  a6c43e:	62 62 25 40 7f eb    	vpermt2ps zmm29,zmm27,zmm3
  a6c444:	62 e2 25 40 7f 64 24 	vpermt2ps zmm20,zmm27,ZMMWORD PTR [rsp-0x80]
  a6c44b:	fe 
  a6c44c:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x1c0]
  a6c453:	07 
  a6c454:	62 f2 25 40 7f 64 24 	vpermt2ps zmm4,zmm27,ZMMWORD PTR [rsp-0x40]
  a6c45b:	ff 
  a6c45c:	62 72 25 40 7f 6c 24 	vpermt2ps zmm13,zmm27,ZMMWORD PTR [rsp+0x180]
  a6c463:	06 
  a6c464:	62 42 25 40 7f c3    	vpermt2ps zmm24,zmm27,zmm11
  a6c46a:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x280]
  a6c471:	0a 
  a6c472:	62 f2 25 40 7f 5c 24 	vpermt2ps zmm3,zmm27,ZMMWORD PTR [rsp+0x200]
  a6c479:	08 
  a6c47a:	62 72 25 40 7f 34 24 	vpermt2ps zmm14,zmm27,ZMMWORD PTR [rsp]
  a6c481:	62 f2 25 40 7f d6    	vpermt2ps zmm2,zmm27,zmm6
  a6c487:	62 e1 7c 48 11 36    	vmovups ZMMWORD PTR [rsi],zmm22
  a6c48d:	62 71 7c 48 11 46 01 	vmovups ZMMWORD PTR [rsi+0x40],zmm8
  a6c494:	62 f1 7c 48 11 46 02 	vmovups ZMMWORD PTR [rsi+0x80],zmm0
  a6c49b:	62 e1 7c 48 11 7e 03 	vmovups ZMMWORD PTR [rsi+0xc0],zmm23
  a6c4a2:	62 61 7c 48 11 56 04 	vmovups ZMMWORD PTR [rsi+0x100],zmm26
  a6c4a9:	62 f1 7c 48 11 4e 05 	vmovups ZMMWORD PTR [rsi+0x140],zmm1
  a6c4b0:	62 71 7c 48 11 7e 06 	vmovups ZMMWORD PTR [rsi+0x180],zmm15
  a6c4b7:	62 61 7c 48 11 6e 07 	vmovups ZMMWORD PTR [rsi+0x1c0],zmm29
  a6c4be:	62 e1 7c 48 11 66 08 	vmovups ZMMWORD PTR [rsi+0x200],zmm20
  a6c4c5:	62 f1 7c 48 11 66 09 	vmovups ZMMWORD PTR [rsi+0x240],zmm4
  a6c4cc:	62 71 7c 48 11 6e 0a 	vmovups ZMMWORD PTR [rsi+0x280],zmm13
  a6c4d3:	62 61 7c 48 11 46 0b 	vmovups ZMMWORD PTR [rsi+0x2c0],zmm24
  a6c4da:	62 f1 7c 48 11 5e 0c 	vmovups ZMMWORD PTR [rsi+0x300],zmm3
  a6c4e1:	62 71 7c 48 11 76 0d 	vmovups ZMMWORD PTR [rsi+0x340],zmm14
  a6c4e8:	62 f1 7c 48 11 56 0e 	vmovups ZMMWORD PTR [rsi+0x380],zmm2
  a6c4ef:	48 81 c4 88 08 00 00 	add    rsp,0x888
  a6c4f6:	c5 f8 77             	vzeroupper
  a6c4f9:	c3                   	ret
