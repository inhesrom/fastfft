
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a4ae00 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a4ae00:	55                   	push   rbp
  a4ae01:	48 89 e5             	mov    rbp,rsp
  a4ae04:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a4ae08:	48 81 ec 40 02 00 00 	sub    rsp,0x240
  a4ae0f:	c6 84 24 c0 01 00 00 	mov    BYTE PTR [rsp+0x1c0],0x0
  a4ae16:	00 
  a4ae17:	48 8d 84 24 c0 01 00 	lea    rax,[rsp+0x1c0]
  a4ae1e:	00 
  a4ae1f:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  a4ae24:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  a4ae29:	c5 fc 10 0f          	vmovups ymm1,YMMWORD PTR [rdi]
  a4ae2d:	c5 7c 10 57 20       	vmovups ymm10,YMMWORD PTR [rdi+0x20]
  a4ae32:	c5 fc 10 57 40       	vmovups ymm2,YMMWORD PTR [rdi+0x40]
  a4ae37:	c5 fc 10 6f 60       	vmovups ymm5,YMMWORD PTR [rdi+0x60]
  a4ae3c:	62 f1 7c 48 28 25 fa 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff6477fa]        # 92640 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1faf0>
  a4ae43:	77 64 ff 
  a4ae46:	c4 41 10 57 ed       	vxorps xmm13,xmm13,xmm13
  a4ae4b:	62 71 7c 48 28 c9    	vmovaps zmm9,zmm1
  a4ae51:	62 52 5d 48 7f cd    	vpermt2ps zmm9,zmm4,zmm13
  a4ae57:	62 f1 7c 48 28 1d 1f 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff64781f]        # 92680 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1fb30>
  a4ae5e:	78 64 ff 
  a4ae61:	62 d2 65 48 7f cd    	vpermt2ps zmm1,zmm3,zmm13
  a4ae67:	62 d1 7c 48 28 fa    	vmovaps zmm7,zmm10
  a4ae6d:	62 d2 5d 48 7f fd    	vpermt2ps zmm7,zmm4,zmm13
  a4ae73:	62 52 65 48 7f d5    	vpermt2ps zmm10,zmm3,zmm13
  a4ae79:	62 71 7c 48 28 f2    	vmovaps zmm14,zmm2
  a4ae7f:	62 52 5d 48 7f f5    	vpermt2ps zmm14,zmm4,zmm13
  a4ae85:	62 d2 65 48 7f d5    	vpermt2ps zmm2,zmm3,zmm13
  a4ae8b:	62 f1 7c 48 28 f5    	vmovaps zmm6,zmm5
  a4ae91:	62 d2 5d 48 7f f5    	vpermt2ps zmm6,zmm4,zmm13
  a4ae97:	62 d2 65 48 7f ed    	vpermt2ps zmm5,zmm3,zmm13
  a4ae9d:	c5 7c 10 a7 80 00 00 	vmovups ymm12,YMMWORD PTR [rdi+0x80]
  a4aea4:	00 
  a4aea5:	62 c1 7c 48 28 dc    	vmovaps zmm19,zmm12
  a4aeab:	62 c2 5d 48 7f dd    	vpermt2ps zmm19,zmm4,zmm13
  a4aeb1:	62 52 65 48 7f e5    	vpermt2ps zmm12,zmm3,zmm13
  a4aeb7:	62 e1 7c 28 10 47 05 	vmovups ymm16,YMMWORD PTR [rdi+0xa0]
  a4aebe:	62 b1 7c 48 28 c0    	vmovaps zmm0,zmm16
  a4aec4:	62 d2 5d 48 7f c5    	vpermt2ps zmm0,zmm4,zmm13
  a4aeca:	62 c2 65 48 7f c5    	vpermt2ps zmm16,zmm3,zmm13
  a4aed0:	c5 7c 10 9f c0 00 00 	vmovups ymm11,YMMWORD PTR [rdi+0xc0]
  a4aed7:	00 
  a4aed8:	62 c1 7c 48 28 f3    	vmovaps zmm22,zmm11
  a4aede:	62 c2 5d 48 7f f5    	vpermt2ps zmm22,zmm4,zmm13
  a4aee4:	62 52 65 48 7f dd    	vpermt2ps zmm11,zmm3,zmm13
  a4aeea:	62 e1 7c 28 10 7f 07 	vmovups ymm23,YMMWORD PTR [rdi+0xe0]
  a4aef1:	62 a1 7c 48 28 cf    	vmovaps zmm17,zmm23
  a4aef7:	62 c2 5d 48 7f cd    	vpermt2ps zmm17,zmm4,zmm13
  a4aefd:	62 c2 65 48 7f fd    	vpermt2ps zmm23,zmm3,zmm13
  a4af03:	62 e1 7c 28 10 67 08 	vmovups ymm20,YMMWORD PTR [rdi+0x100]
  a4af0a:	62 21 7c 48 28 c4    	vmovaps zmm24,zmm20
  a4af10:	62 42 5d 48 7f c5    	vpermt2ps zmm24,zmm4,zmm13
  a4af16:	62 c2 65 48 7f e5    	vpermt2ps zmm20,zmm3,zmm13
  a4af1c:	62 61 7c 28 10 4f 09 	vmovups ymm25,YMMWORD PTR [rdi+0x120]
  a4af23:	62 11 7c 48 28 f9    	vmovaps zmm15,zmm25
  a4af29:	62 52 5d 48 7f fd    	vpermt2ps zmm15,zmm4,zmm13
  a4af2f:	62 42 65 48 7f cd    	vpermt2ps zmm25,zmm3,zmm13
  a4af35:	62 61 7c 28 10 57 0a 	vmovups ymm26,YMMWORD PTR [rdi+0x140]
  a4af3c:	62 01 7c 48 28 da    	vmovaps zmm27,zmm26
  a4af42:	62 42 5d 48 7f dd    	vpermt2ps zmm27,zmm4,zmm13
  a4af48:	62 42 65 48 7f d5    	vpermt2ps zmm26,zmm3,zmm13
  a4af4e:	62 61 7c 28 10 67 0b 	vmovups ymm28,YMMWORD PTR [rdi+0x160]
  a4af55:	62 d2 1d 40 77 e5    	vpermi2ps zmm4,zmm28,zmm13
  a4af5b:	62 42 65 48 7f e5    	vpermt2ps zmm28,zmm3,zmm13
  a4af61:	62 b1 34 48 58 de    	vaddps zmm3,zmm9,zmm22
  a4af67:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm3
  a4af6e:	01 
  a4af6f:	62 c1 4c 48 58 ef    	vaddps zmm21,zmm6,zmm15
  a4af75:	62 a1 64 48 58 d5    	vaddps zmm18,zmm3,zmm21
  a4af7b:	62 01 64 40 58 eb    	vaddps zmm29,zmm19,zmm27
  a4af81:	62 61 74 40 58 f7    	vaddps zmm30,zmm17,zmm7
  a4af87:	62 91 14 40 58 de    	vaddps zmm3,zmm29,zmm30
  a4af8d:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm3
  a4af94:	02 
  a4af95:	62 41 3c 40 58 fe    	vaddps zmm31,zmm24,zmm14
  a4af9b:	62 91 64 40 5c db    	vsubps zmm3,zmm19,zmm27
  a4afa1:	62 41 44 40 58 da    	vaddps zmm27,zmm23,zmm10
  a4afa7:	62 c1 44 40 5c da    	vsubps zmm19,zmm23,zmm10
  a4afad:	62 e1 5c 48 58 f8    	vaddps zmm23,zmm4,zmm0
  a4afb3:	62 41 3c 40 5c c6    	vsubps zmm24,zmm24,zmm14
  a4afb9:	62 31 1c 40 58 f0    	vaddps zmm14,zmm28,zmm16
  a4afbf:	62 a1 1c 40 5c c0    	vsubps zmm16,zmm28,zmm16
  a4afc5:	62 41 74 48 58 e3    	vaddps zmm28,zmm1,zmm11
  a4afcb:	62 31 34 48 5c c6    	vsubps zmm8,zmm9,zmm22
  a4afd1:	62 81 54 48 58 f1    	vaddps zmm22,zmm5,zmm25
  a4afd7:	62 01 54 48 5c c9    	vsubps zmm25,zmm5,zmm25
  a4afdd:	62 91 1c 48 58 ea    	vaddps zmm5,zmm12,zmm26
  a4afe3:	62 11 1c 48 5c d2    	vsubps zmm10,zmm12,zmm26
  a4afe9:	62 71 5c 40 58 e2    	vaddps zmm12,zmm20,zmm2
  a4afef:	62 b1 44 48 5c f9    	vsubps zmm7,zmm7,zmm17
  a4aff5:	62 51 44 48 58 ca    	vaddps zmm9,zmm7,zmm10
  a4affb:	62 e1 5c 40 5c e2    	vsubps zmm20,zmm20,zmm2
  a4b001:	62 f1 7c 48 5c e4    	vsubps zmm4,zmm0,zmm4
  a4b007:	62 b1 5c 48 58 d4    	vaddps zmm2,zmm4,zmm20
  a4b00d:	62 f1 34 48 5c c2    	vsubps zmm0,zmm9,zmm2
  a4b013:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm0
  a4b01a:	06 
  a4b01b:	62 f1 34 48 58 c2    	vaddps zmm0,zmm9,zmm2
  a4b021:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm0
  a4b028:	05 
  a4b029:	62 b1 64 48 58 d3    	vaddps zmm2,zmm3,zmm19
  a4b02f:	62 61 7c 48 28 d3    	vmovaps zmm26,zmm3
  a4b035:	62 d1 74 48 5c c3    	vsubps zmm0,zmm1,zmm11
  a4b03b:	62 b1 3c 40 58 c8    	vaddps zmm1,zmm24,zmm16
  a4b041:	62 f1 04 48 5c de    	vsubps zmm3,zmm15,zmm6
  a4b047:	62 f1 6c 48 58 f1    	vaddps zmm6,zmm2,zmm1
  a4b04d:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm6
  a4b054:	03 
  a4b055:	62 f1 6c 48 5c c9    	vsubps zmm1,zmm2,zmm1
  a4b05b:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm1
  a4b062:	04 
  a4b063:	62 b1 04 40 58 d7    	vaddps zmm2,zmm31,zmm23
  a4b069:	62 91 14 40 5c ce    	vsubps zmm1,zmm29,zmm30
  a4b06f:	62 71 7c 48 28 5c 24 	vmovaps zmm11,ZMMWORD PTR [rsp+0x80]
  a4b076:	02 
  a4b077:	62 71 24 48 58 ca    	vaddps zmm9,zmm11,zmm2
  a4b07d:	62 a1 04 40 5c cf    	vsubps zmm17,zmm31,zmm23
  a4b083:	62 21 7c 48 28 fa    	vmovaps zmm31,zmm18
  a4b089:	62 c1 6c 40 58 d1    	vaddps zmm18,zmm18,zmm9
  a4b08f:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x40]
  a4b096:	01 
  a4b097:	62 a1 4c 48 5c fd    	vsubps zmm23,zmm6,zmm21
  a4b09d:	62 01 54 48 58 eb    	vaddps zmm29,zmm5,zmm27
  a4b0a3:	62 91 54 48 5c eb    	vsubps zmm5,zmm5,zmm27
  a4b0a9:	62 41 1c 48 58 de    	vaddps zmm27,zmm12,zmm14
  a4b0af:	62 51 1c 48 5c e6    	vsubps zmm12,zmm12,zmm14
  a4b0b5:	62 d1 54 48 5c f4    	vsubps zmm6,zmm5,zmm12
  a4b0bb:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm6
  a4b0c2:	01 
  a4b0c3:	62 51 54 48 58 f4    	vaddps zmm14,zmm5,zmm12
  a4b0c9:	62 21 1c 40 58 f6    	vaddps zmm30,zmm28,zmm22
  a4b0cf:	62 b1 1c 40 5c f6    	vsubps zmm6,zmm28,zmm22
  a4b0d5:	62 21 74 48 58 e1    	vaddps zmm28,zmm1,zmm17
  a4b0db:	62 a1 74 48 5c f1    	vsubps zmm22,zmm1,zmm17
  a4b0e1:	62 11 3c 48 58 e1    	vaddps zmm12,zmm8,zmm25
  a4b0e7:	62 11 3c 48 5c c1    	vsubps zmm8,zmm8,zmm25
  a4b0ed:	62 81 14 40 58 cb    	vaddps zmm17,zmm29,zmm27
  a4b0f3:	62 a1 2c 40 5c db    	vsubps zmm19,zmm26,zmm19
  a4b0f9:	62 a1 0c 40 58 e9    	vaddps zmm21,zmm30,zmm17
  a4b0ff:	62 21 3c 40 5c c0    	vsubps zmm24,zmm24,zmm16
  a4b105:	62 61 64 48 58 d0    	vaddps zmm26,zmm3,zmm0
  a4b10b:	62 f1 7c 48 5c db    	vsubps zmm3,zmm0,zmm3
  a4b111:	62 e2 7d 48 18 05 45 	vbroadcastss zmm16,DWORD PTR [rip+0xffffffffff62a345]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a4b118:	a3 62 ff 
  a4b11b:	62 f1 2c 48 5c ef    	vsubps zmm5,zmm10,zmm7
  a4b121:	62 b1 7c 48 28 f8    	vmovaps zmm7,zmm16
  a4b127:	62 e1 5c 40 5c e4    	vsubps zmm20,zmm20,zmm4
  a4b12d:	62 21 7c 48 28 c8    	vmovaps zmm25,zmm16
  a4b133:	62 12 7d 40 ac cf    	vfnmadd213ps zmm9,zmm16,zmm31
  a4b139:	62 01 64 40 58 f8    	vaddps zmm31,zmm19,zmm24
  a4b13f:	62 82 7d 40 ac ce    	vfnmadd213ps zmm17,zmm16,zmm30
  a4b145:	62 11 3c 48 58 d7    	vaddps zmm10,zmm8,zmm31
  a4b14b:	62 42 7d 40 ac f8    	vfnmadd213ps zmm31,zmm16,zmm8
  a4b151:	62 21 7c 48 28 f0    	vmovaps zmm30,zmm16
  a4b157:	62 31 7c 48 28 c0    	vmovaps zmm8,zmm16
  a4b15d:	62 b1 54 48 58 e4    	vaddps zmm4,zmm5,zmm20
  a4b163:	62 e2 5d 48 ac c3    	vfnmadd213ps zmm16,zmm4,zmm3
  a4b169:	62 f1 64 48 58 e4    	vaddps zmm4,zmm3,zmm4
  a4b16f:	62 01 14 40 5c db    	vsubps zmm27,zmm29,zmm27
  a4b175:	62 61 24 48 5c ea    	vsubps zmm29,zmm11,zmm2
  a4b17b:	62 f2 7d 48 18 0d 4f 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff62a14f]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a4b182:	a1 62 ff 
  a4b185:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0xc0]
  a4b18c:	03 
  a4b18d:	62 d2 6d 48 ac fc    	vfnmadd213ps zmm7,zmm2,zmm12
  a4b193:	62 f1 74 48 59 5c 24 	vmulps zmm3,zmm1,ZMMWORD PTR [rsp+0x180]
  a4b19a:	06 
  a4b19b:	62 71 64 48 58 ff    	vaddps zmm15,zmm3,zmm7
  a4b1a1:	62 f1 44 48 5c fb    	vsubps zmm7,zmm7,zmm3
  a4b1a7:	62 71 7c 48 28 5c 24 	vmovaps zmm11,ZMMWORD PTR [rsp+0x140]
  a4b1ae:	05 
  a4b1af:	62 02 25 48 ac ca    	vfnmadd213ps zmm25,zmm11,zmm26
  a4b1b5:	62 f1 74 48 59 44 24 	vmulps zmm0,zmm1,ZMMWORD PTR [rsp+0x100]
  a4b1bc:	04 
  a4b1bd:	62 f1 34 40 5c d8    	vsubps zmm3,zmm25,zmm0
  a4b1c3:	62 61 34 40 58 c8    	vaddps zmm25,zmm25,zmm0
  a4b1c9:	62 22 1d 40 ac f7    	vfnmadd213ps zmm30,zmm28,zmm23
  a4b1cf:	62 91 44 40 58 c4    	vaddps zmm0,zmm23,zmm28
  a4b1d5:	62 72 0d 48 ac c6    	vfnmadd213ps zmm8,zmm14,zmm6
  a4b1db:	62 41 4c 48 58 e6    	vaddps zmm28,zmm6,zmm14
  a4b1e1:	62 b1 54 48 5c ec    	vsubps zmm5,zmm5,zmm20
  a4b1e7:	62 91 64 40 5c f0    	vsubps zmm6,zmm19,zmm24
  a4b1ed:	62 71 74 48 59 74 24 	vmulps zmm14,zmm1,ZMMWORD PTR [rsp+0x40]
  a4b1f4:	01 
  a4b1f5:	62 e1 4c 40 59 d9    	vmulps zmm19,zmm22,zmm1
  a4b1fb:	62 e1 24 40 59 e1    	vmulps zmm20,zmm27,zmm1
  a4b201:	62 e1 14 40 59 f1    	vmulps zmm22,zmm29,zmm1
  a4b207:	62 f1 54 48 59 e9    	vmulps zmm5,zmm5,zmm1
  a4b20d:	62 f1 4c 48 59 c9    	vmulps zmm1,zmm6,zmm1
  a4b213:	62 a1 34 48 58 fc    	vaddps zmm23,zmm9,zmm20
  a4b219:	62 a1 34 48 5c e4    	vsubps zmm20,zmm9,zmm20
  a4b21f:	62 31 74 40 5c ce    	vsubps zmm9,zmm17,zmm22
  a4b225:	62 a1 4c 40 58 c9    	vaddps zmm17,zmm22,zmm17
  a4b22b:	62 e1 1c 48 58 f2    	vaddps zmm22,zmm12,zmm2
  a4b231:	62 41 2c 40 58 d3    	vaddps zmm26,zmm26,zmm11
  a4b237:	62 41 0c 40 5c c6    	vsubps zmm24,zmm30,zmm14
  a4b23d:	62 51 0c 40 58 f6    	vaddps zmm14,zmm30,zmm14
  a4b243:	62 d1 64 40 58 f0    	vaddps zmm6,zmm19,zmm8
  a4b249:	62 31 3c 48 5c c3    	vsubps zmm8,zmm8,zmm19
  a4b24f:	62 81 54 48 58 df    	vaddps zmm19,zmm5,zmm31
  a4b255:	62 f1 04 40 5c ed    	vsubps zmm5,zmm31,zmm5
  a4b25b:	62 71 7c 40 5c d9    	vsubps zmm11,zmm16,zmm1
  a4b261:	62 f1 7c 40 58 c9    	vaddps zmm1,zmm16,zmm1
  a4b267:	62 e1 7c 48 28 05 0f 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff67bd0f]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a4b26e:	bd 67 ff 
  a4b271:	62 a2 7d 40 7f d4    	vpermt2ps zmm18,zmm16,zmm20
  a4b277:	62 32 7d 40 7f fe    	vpermt2ps zmm15,zmm16,zmm22
  a4b27d:	62 42 7d 40 7f c6    	vpermt2ps zmm24,zmm16,zmm14
  a4b283:	62 72 7d 40 7f d5    	vpermt2ps zmm10,zmm16,zmm5
  a4b289:	62 c2 7d 40 7f fd    	vpermt2ps zmm23,zmm16,zmm13
  a4b28f:	62 71 7c 48 28 35 67 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff67bc67]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a4b296:	bc 67 ff 
  a4b299:	62 a2 0d 48 7f d7    	vpermt2ps zmm18,zmm14,zmm23
  a4b29f:	62 d2 7d 40 7f fd    	vpermt2ps zmm7,zmm16,zmm13
  a4b2a5:	62 72 0d 48 7f ff    	vpermt2ps zmm15,zmm14,zmm7
  a4b2ab:	62 d2 7d 40 7f c5    	vpermt2ps zmm0,zmm16,zmm13
  a4b2b1:	62 62 0d 48 7f c0    	vpermt2ps zmm24,zmm14,zmm0
  a4b2b7:	62 c2 7d 40 7f dd    	vpermt2ps zmm19,zmm16,zmm13
  a4b2bd:	62 32 0d 48 7f d3    	vpermt2ps zmm10,zmm14,zmm19
  a4b2c3:	62 91 ed 40 14 e8    	vunpcklpd zmm5,zmm18,zmm24
  a4b2c9:	62 91 ed 40 15 d0    	vunpckhpd zmm2,zmm18,zmm24
  a4b2cf:	62 d1 85 48 14 c2    	vunpcklpd zmm0,zmm15,zmm10
  a4b2d5:	62 d1 85 48 15 fa    	vunpckhpd zmm7,zmm15,zmm10
  a4b2db:	62 a2 7d 40 7f e9    	vpermt2ps zmm21,zmm16,zmm17
  a4b2e1:	62 92 7d 40 7f da    	vpermt2ps zmm3,zmm16,zmm26
  a4b2e7:	62 d2 7d 40 7f f0    	vpermt2ps zmm6,zmm16,zmm8
  a4b2ed:	62 f2 7d 40 7f e1    	vpermt2ps zmm4,zmm16,zmm1
  a4b2f3:	62 f1 7c 48 28 0d 03 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff67bb03]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a4b2fa:	bb 67 ff 
  a4b2fd:	62 52 7d 40 7f cd    	vpermt2ps zmm9,zmm16,zmm13
  a4b303:	62 42 7d 40 7f cd    	vpermt2ps zmm25,zmm16,zmm13
  a4b309:	62 42 7d 40 7f e5    	vpermt2ps zmm28,zmm16,zmm13
  a4b30f:	62 52 7d 40 7f dd    	vpermt2ps zmm11,zmm16,zmm13
  a4b315:	62 71 7c 48 28 c5    	vmovaps zmm8,zmm5
  a4b31b:	62 72 75 48 7f c0    	vpermt2ps zmm8,zmm1,zmm0
  a4b321:	62 71 7c 48 28 15 15 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff67bb15]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a4b328:	bb 67 ff 
  a4b32b:	62 f2 2d 48 7f e8    	vpermt2ps zmm5,zmm10,zmm0
  a4b331:	62 f1 7c 48 28 c2    	vmovaps zmm0,zmm2
  a4b337:	62 f2 75 48 7f c7    	vpermt2ps zmm0,zmm1,zmm7
  a4b33d:	62 f2 2d 48 7f d7    	vpermt2ps zmm2,zmm10,zmm7
  a4b343:	62 c2 0d 48 7f e9    	vpermt2ps zmm21,zmm14,zmm9
  a4b349:	62 92 0d 48 7f d9    	vpermt2ps zmm3,zmm14,zmm25
  a4b34f:	62 92 0d 48 7f f4    	vpermt2ps zmm6,zmm14,zmm28
  a4b355:	62 d2 0d 48 7f e3    	vpermt2ps zmm4,zmm14,zmm11
  a4b35b:	62 f1 d5 40 14 fe    	vunpcklpd zmm7,zmm21,zmm6
  a4b361:	62 f1 d5 40 15 f6    	vunpckhpd zmm6,zmm21,zmm6
  a4b367:	62 71 e5 48 14 cc    	vunpcklpd zmm9,zmm3,zmm4
  a4b36d:	62 f1 e5 48 15 dc    	vunpckhpd zmm3,zmm3,zmm4
  a4b373:	62 f1 7c 48 28 e7    	vmovaps zmm4,zmm7
  a4b379:	62 d2 75 48 7f e1    	vpermt2ps zmm4,zmm1,zmm9
  a4b37f:	62 d2 2d 48 7f f9    	vpermt2ps zmm7,zmm10,zmm9
  a4b385:	62 f2 4d 48 77 cb    	vpermi2ps zmm1,zmm6,zmm3
  a4b38b:	62 f2 2d 48 7f f3    	vpermt2ps zmm6,zmm10,zmm3
  a4b391:	62 f1 7c 48 10 5a 02 	vmovups zmm3,ZMMWORD PTR [rdx+0x80]
  a4b398:	62 71 7c 48 10 4a 03 	vmovups zmm9,ZMMWORD PTR [rdx+0xc0]
  a4b39f:	62 71 7c 48 10 52 04 	vmovups zmm10,ZMMWORD PTR [rdx+0x100]
  a4b3a6:	62 71 7c 48 10 5a 05 	vmovups zmm11,ZMMWORD PTR [rdx+0x140]
  a4b3ad:	62 51 7c 48 59 e2    	vmulps zmm12,zmm0,zmm10
  a4b3b3:	62 52 75 48 bc e3    	vfnmadd231ps zmm12,zmm1,zmm11
  a4b3b9:	62 d1 74 48 59 ca    	vmulps zmm1,zmm1,zmm10
  a4b3bf:	62 71 7c 48 10 52 06 	vmovups zmm10,ZMMWORD PTR [rdx+0x180]
  a4b3c6:	62 f2 25 48 b8 c8    	vfmadd231ps zmm1,zmm11,zmm0
  a4b3cc:	62 f1 7c 48 10 42 07 	vmovups zmm0,ZMMWORD PTR [rdx+0x1c0]
  a4b3d3:	62 71 54 48 59 db    	vmulps zmm11,zmm5,zmm3
  a4b3d9:	62 52 45 48 bc d9    	vfnmadd231ps zmm11,zmm7,zmm9
  a4b3df:	62 f1 44 48 59 db    	vmulps zmm3,zmm7,zmm3
  a4b3e5:	62 d1 3c 48 58 fc    	vaddps zmm7,zmm8,zmm12
  a4b3eb:	62 f2 35 48 b8 dd    	vfmadd231ps zmm3,zmm9,zmm5
  a4b3f1:	62 d1 6c 48 59 ea    	vmulps zmm5,zmm2,zmm10
  a4b3f7:	62 f2 4d 48 bc e8    	vfnmadd231ps zmm5,zmm6,zmm0
  a4b3fd:	62 71 24 48 58 cd    	vaddps zmm9,zmm11,zmm5
  a4b403:	62 d1 4c 48 59 f2    	vmulps zmm6,zmm6,zmm10
  a4b409:	62 71 74 48 58 d4    	vaddps zmm10,zmm1,zmm4
  a4b40f:	62 f2 7d 48 b8 f2    	vfmadd231ps zmm6,zmm0,zmm2
  a4b415:	62 f1 64 48 58 c6    	vaddps zmm0,zmm3,zmm6
  a4b41b:	62 d1 3c 48 5c d4    	vsubps zmm2,zmm8,zmm12
  a4b421:	62 f1 64 48 5c de    	vsubps zmm3,zmm3,zmm6
  a4b427:	62 f1 6c 48 58 f3    	vaddps zmm6,zmm2,zmm3
  a4b42d:	62 f1 5c 48 5c c9    	vsubps zmm1,zmm4,zmm1
  a4b433:	62 d1 54 48 5c e3    	vsubps zmm4,zmm5,zmm11
  a4b439:	62 f1 74 48 58 ec    	vaddps zmm5,zmm1,zmm4
  a4b43f:	c5 7c 28 05 f9 b7 62 	vmovaps ymm8,YMMWORD PTR [rip+0xffffffffff62b7f9]        # 76c40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x40f0>
  a4b446:	ff 
  a4b447:	62 71 7c 48 28 de    	vmovaps zmm11,zmm6
  a4b44d:	62 72 3d 48 7f dd    	vpermt2ps zmm11,zmm8,zmm5
  a4b453:	62 51 44 48 5c e1    	vsubps zmm12,zmm7,zmm9
  a4b459:	62 f1 6c 48 5c d3    	vsubps zmm2,zmm2,zmm3
  a4b45f:	62 f1 2c 48 5c d8    	vsubps zmm3,zmm10,zmm0
  a4b465:	62 f1 74 48 5c cc    	vsubps zmm1,zmm1,zmm4
  a4b46b:	62 d1 7c 48 28 e4    	vmovaps zmm4,zmm12
  a4b471:	62 f2 3d 48 7f e3    	vpermt2ps zmm4,zmm8,zmm3
  a4b477:	62 d1 44 48 58 f9    	vaddps zmm7,zmm7,zmm9
  a4b47d:	62 71 7c 48 28 ca    	vmovaps zmm9,zmm2
  a4b483:	62 72 3d 48 7f c9    	vpermt2ps zmm9,zmm8,zmm1
  a4b489:	62 f1 2c 48 58 c0    	vaddps zmm0,zmm10,zmm0
  a4b48f:	62 72 45 48 77 c0    	vpermi2ps zmm8,zmm7,zmm0
  a4b495:	62 71 7c 48 28 15 21 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff647221]        # 926c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1fb70>
  a4b49c:	72 64 ff 
  a4b49f:	62 f2 2d 48 7f f8    	vpermt2ps zmm7,zmm10,zmm0
  a4b4a5:	62 f2 2d 48 7f f5    	vpermt2ps zmm6,zmm10,zmm5
  a4b4ab:	62 72 2d 48 7f e3    	vpermt2ps zmm12,zmm10,zmm3
  a4b4b1:	62 f2 2d 48 7f d1    	vpermt2ps zmm2,zmm10,zmm1
  a4b4b7:	62 f1 7c 48 11 3e    	vmovups ZMMWORD PTR [rsi],zmm7
  a4b4bd:	c5 7c 11 46 40       	vmovups YMMWORD PTR [rsi+0x40],ymm8
  a4b4c2:	62 f1 7c 48 11 b6 60 	vmovups ZMMWORD PTR [rsi+0x60],zmm6
  a4b4c9:	00 00 00 
  a4b4cc:	c5 7c 11 9e a0 00 00 	vmovups YMMWORD PTR [rsi+0xa0],ymm11
  a4b4d3:	00 
  a4b4d4:	62 71 7c 48 11 66 03 	vmovups ZMMWORD PTR [rsi+0xc0],zmm12
  a4b4db:	c5 fc 11 a6 00 01 00 	vmovups YMMWORD PTR [rsi+0x100],ymm4
  a4b4e2:	00 
  a4b4e3:	62 f1 7c 48 11 96 20 	vmovups ZMMWORD PTR [rsi+0x120],zmm2
  a4b4ea:	01 00 00 
  a4b4ed:	c5 7c 11 8e 60 01 00 	vmovups YMMWORD PTR [rsi+0x160],ymm9
  a4b4f4:	00 
  a4b4f5:	48 89 ec             	mov    rsp,rbp
  a4b4f8:	5d                   	pop    rbp
  a4b4f9:	c5 f8 77             	vzeroupper
  a4b4fc:	c3                   	ret
