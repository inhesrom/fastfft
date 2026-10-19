
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a68e00 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a68e00:	48 81 ec c8 00 00 00 	sub    rsp,0xc8
  a68e07:	48 69 c2 60 03 00 00 	imul   rax,rdx,0x360
  a68e0e:	31 d2                	xor    edx,edx
  a68e10:	62 71 7c 48 10 14 17 	vmovups zmm10,ZMMWORD PTR [rdi+rdx*1]
  a68e17:	c5 fc 10 44 17 40    	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x40]
  a68e1d:	62 51 7c 48 28 e2    	vmovaps zmm12,zmm10
  a68e23:	62 f1 7c 48 28 1d 53 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff62b553]        # 94380 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21830>
  a68e2a:	b5 62 ff 
  a68e2d:	62 72 65 48 7f e0    	vpermt2ps zmm12,zmm3,zmm0
  a68e33:	62 f1 7c 48 28 35 83 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff62b583]        # 943c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21870>
  a68e3a:	b5 62 ff 
  a68e3d:	62 72 4d 48 7f d0    	vpermt2ps zmm10,zmm6,zmm0
  a68e43:	62 71 7c 48 10 ac 17 	vmovups zmm13,ZMMWORD PTR [rdi+rdx*1+0x60]
  a68e4a:	60 00 00 00 
  a68e4e:	c5 fc 10 84 17 a0 00 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0xa0]
  a68e55:	00 00 
  a68e57:	62 51 7c 48 28 f5    	vmovaps zmm14,zmm13
  a68e5d:	62 72 65 48 7f f0    	vpermt2ps zmm14,zmm3,zmm0
  a68e63:	62 72 4d 48 7f e8    	vpermt2ps zmm13,zmm6,zmm0
  a68e69:	62 71 7c 48 10 5c 17 	vmovups zmm11,ZMMWORD PTR [rdi+rdx*1+0xc0]
  a68e70:	03 
  a68e71:	c5 fc 10 84 17 00 01 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x100]
  a68e78:	00 00 
  a68e7a:	62 51 7c 48 28 fb    	vmovaps zmm15,zmm11
  a68e80:	62 72 65 48 7f f8    	vpermt2ps zmm15,zmm3,zmm0
  a68e86:	62 72 4d 48 7f d8    	vpermt2ps zmm11,zmm6,zmm0
  a68e8c:	62 f1 7c 48 10 8c 17 	vmovups zmm1,ZMMWORD PTR [rdi+rdx*1+0x120]
  a68e93:	20 01 00 00 
  a68e97:	c5 fc 10 84 17 60 01 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x160]
  a68e9e:	00 00 
  a68ea0:	62 f1 7c 48 28 e1    	vmovaps zmm4,zmm1
  a68ea6:	62 f2 65 48 7f e0    	vpermt2ps zmm4,zmm3,zmm0
  a68eac:	62 f2 4d 48 7f c8    	vpermt2ps zmm1,zmm6,zmm0
  a68eb2:	62 f1 7c 48 10 54 17 	vmovups zmm2,ZMMWORD PTR [rdi+rdx*1+0x180]
  a68eb9:	06 
  a68eba:	c5 fc 10 84 17 c0 01 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x1c0]
  a68ec1:	00 00 
  a68ec3:	62 f1 7c 48 28 ea    	vmovaps zmm5,zmm2
  a68ec9:	62 f2 65 48 7f e8    	vpermt2ps zmm5,zmm3,zmm0
  a68ecf:	62 f2 4d 48 7f d0    	vpermt2ps zmm2,zmm6,zmm0
  a68ed5:	62 61 7c 48 10 84 17 	vmovups zmm24,ZMMWORD PTR [rdi+rdx*1+0x1e0]
  a68edc:	e0 01 00 00 
  a68ee0:	c5 fc 10 84 17 20 02 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x220]
  a68ee7:	00 00 
  a68ee9:	62 81 7c 48 28 f8    	vmovaps zmm23,zmm24
  a68eef:	62 e2 65 48 7f f8    	vpermt2ps zmm23,zmm3,zmm0
  a68ef5:	62 62 4d 48 7f c0    	vpermt2ps zmm24,zmm6,zmm0
  a68efb:	62 e1 7c 48 10 5c 17 	vmovups zmm19,ZMMWORD PTR [rdi+rdx*1+0x240]
  a68f02:	09 
  a68f03:	c5 fc 10 84 17 80 02 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x280]
  a68f0a:	00 00 
  a68f0c:	62 a1 7c 48 28 cb    	vmovaps zmm17,zmm19
  a68f12:	62 e2 65 48 7f c8    	vpermt2ps zmm17,zmm3,zmm0
  a68f18:	62 e2 4d 48 7f d8    	vpermt2ps zmm19,zmm6,zmm0
  a68f1e:	62 e1 7c 48 10 b4 17 	vmovups zmm22,ZMMWORD PTR [rdi+rdx*1+0x2a0]
  a68f25:	a0 02 00 00 
  a68f29:	c5 fc 10 84 17 e0 02 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x2e0]
  a68f30:	00 00 
  a68f32:	62 21 7c 48 28 ce    	vmovaps zmm25,zmm22
  a68f38:	62 62 65 48 7f c8    	vpermt2ps zmm25,zmm3,zmm0
  a68f3e:	62 e2 4d 48 7f f0    	vpermt2ps zmm22,zmm6,zmm0
  a68f44:	62 61 7c 48 10 54 17 	vmovups zmm26,ZMMWORD PTR [rdi+rdx*1+0x300]
  a68f4b:	0c 
  a68f4c:	c5 fc 10 84 17 40 03 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x340]
  a68f53:	00 00 
  a68f55:	62 01 7c 48 28 da    	vmovaps zmm27,zmm26
  a68f5b:	62 62 65 48 7f d8    	vpermt2ps zmm27,zmm3,zmm0
  a68f61:	62 62 4d 48 7f d0    	vpermt2ps zmm26,zmm6,zmm0
  a68f67:	62 b1 5c 48 58 c1    	vaddps zmm0,zmm4,zmm17
  a68f6d:	62 f1 1c 48 58 f8    	vaddps zmm7,zmm12,zmm0
  a68f73:	62 f1 7c 48 11 3c 24 	vmovups ZMMWORD PTR [rsp],zmm7
  a68f7a:	62 01 54 48 58 e1    	vaddps zmm28,zmm5,zmm25
  a68f80:	62 91 0c 48 58 dc    	vaddps zmm3,zmm14,zmm28
  a68f86:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm3
  a68f8d:	01 
  a68f8e:	62 01 44 40 58 eb    	vaddps zmm29,zmm23,zmm27
  a68f94:	62 91 04 48 58 f5    	vaddps zmm6,zmm15,zmm29
  a68f9a:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm6
  a68fa1:	fe 
  a68fa2:	62 e1 64 48 58 e6    	vaddps zmm20,zmm3,zmm6
  a68fa8:	62 b1 44 48 58 dc    	vaddps zmm3,zmm7,zmm20
  a68fae:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm3
  a68fb5:	ff 
  a68fb6:	62 21 74 48 58 f3    	vaddps zmm30,zmm1,zmm19
  a68fbc:	62 81 2c 48 58 ee    	vaddps zmm21,zmm10,zmm30
  a68fc2:	62 21 6c 48 58 fe    	vaddps zmm31,zmm2,zmm22
  a68fc8:	62 f2 7d 48 18 1d 8e 	vbroadcastss zmm3,DWORD PTR [rip+0xffffffffff60c48e]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a68fcf:	c4 60 ff 
  a68fd2:	62 72 65 48 bc e0    	vfnmadd231ps zmm12,zmm3,zmm0
  a68fd8:	62 91 14 48 58 ff    	vaddps zmm7,zmm13,zmm31
  a68fde:	62 31 74 48 5c cb    	vsubps zmm9,zmm1,zmm19
  a68fe4:	62 11 3c 40 58 c2    	vaddps zmm8,zmm24,zmm26
  a68fea:	62 12 65 48 bc f4    	vfnmadd231ps zmm14,zmm3,zmm28
  a68ff0:	62 d1 24 48 58 f0    	vaddps zmm6,zmm11,zmm8
  a68ff6:	62 b1 6c 48 5c d6    	vsubps zmm2,zmm2,zmm22
  a68ffc:	62 e1 44 48 58 f6    	vaddps zmm22,zmm7,zmm6
  a69002:	62 12 65 48 bc ef    	vfnmadd231ps zmm13,zmm3,zmm31
  a69008:	62 b1 54 40 58 c6    	vaddps zmm0,zmm21,zmm22
  a6900e:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm0
  a69015:	02 
  a69016:	62 f2 7d 48 18 0d b4 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff60c2b4]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a6901d:	c2 60 ff 
  a69020:	62 71 34 48 59 c9    	vmulps zmm9,zmm9,zmm1
  a69026:	62 01 54 48 5c c9    	vsubps zmm25,zmm5,zmm25
  a6902c:	62 d1 1c 48 58 e9    	vaddps zmm5,zmm12,zmm9
  a69032:	62 f1 6c 48 59 d1    	vmulps zmm2,zmm2,zmm1
  a69038:	62 12 65 48 bc fd    	vfnmadd231ps zmm15,zmm3,zmm29
  a6903e:	62 61 0c 48 58 e2    	vaddps zmm28,zmm14,zmm2
  a69044:	62 61 34 40 59 e9    	vmulps zmm29,zmm25,zmm1
  a6904a:	62 01 3c 40 5c c2    	vsubps zmm24,zmm24,zmm26
  a69050:	62 01 14 48 5c d5    	vsubps zmm26,zmm13,zmm29
  a69056:	62 52 65 48 bc d8    	vfnmadd231ps zmm11,zmm3,zmm8
  a6905c:	62 e2 7d 48 18 05 02 	vbroadcastss zmm16,DWORD PTR [rip+0xffffffffff60c602]        # 75668 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b18>
  a69063:	c6 60 ff 
  a69066:	62 21 2c 40 59 c8    	vmulps zmm25,zmm26,zmm16
  a6906c:	62 e2 7d 48 18 15 62 	vbroadcastss zmm18,DWORD PTR [rip+0xffffffffff60c462]        # 754d8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2988>
  a69073:	c4 60 ff 
  a69076:	62 22 1d 40 b8 ca    	vfmadd231ps zmm25,zmm28,zmm18
  a6907c:	62 71 3c 40 59 c1    	vmulps zmm8,zmm24,zmm1
  a69082:	62 81 44 40 5c fb    	vsubps zmm23,zmm23,zmm27
  a69088:	62 41 04 48 58 c0    	vaddps zmm24,zmm15,zmm8
  a6908e:	62 61 44 40 59 d9    	vmulps zmm27,zmm23,zmm1
  a69094:	62 12 65 48 bc d6    	vfnmadd231ps zmm10,zmm3,zmm30
  a6909a:	62 81 24 48 5c fb    	vsubps zmm23,zmm11,zmm27
  a690a0:	62 b1 5c 48 5c e1    	vsubps zmm4,zmm4,zmm17
  a690a6:	62 62 7d 48 18 3d 68 	vbroadcastss zmm31,DWORD PTR [rip+0xffffffffff60c268]        # 75318 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x27c8>
  a690ad:	c2 60 ff 
  a690b0:	62 01 44 40 59 f7    	vmulps zmm30,zmm23,zmm31
  a690b6:	62 f2 7d 48 18 05 1c 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff60c41c]        # 754dc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x298c>
  a690bd:	c4 60 ff 
  a690c0:	62 62 3d 40 b8 f0    	vfmadd231ps zmm30,zmm24,zmm0
  a690c6:	62 21 2c 40 59 d2    	vmulps zmm26,zmm26,zmm18
  a690cc:	62 02 7d 40 bc d4    	vfnmadd231ps zmm26,zmm16,zmm28
  a690d2:	62 81 34 40 58 ce    	vaddps zmm17,zmm25,zmm30
  a690d8:	62 61 44 40 59 e0    	vmulps zmm28,zmm23,zmm0
  a690de:	62 02 05 40 bc e0    	vfnmadd231ps zmm28,zmm31,zmm24
  a690e4:	62 a1 54 48 58 f9    	vaddps zmm23,zmm5,zmm17
  a690ea:	62 61 5c 48 59 c1    	vmulps zmm24,zmm4,zmm1
  a690f0:	62 51 1c 48 5c c9    	vsubps zmm9,zmm12,zmm9
  a690f6:	62 11 2c 48 5c e0    	vsubps zmm12,zmm10,zmm24
  a690fc:	62 f1 0c 48 5c d2    	vsubps zmm2,zmm14,zmm2
  a69102:	62 11 2c 40 58 f4    	vaddps zmm14,zmm26,zmm28
  a69108:	62 51 14 40 58 ed    	vaddps zmm13,zmm29,zmm13
  a6910e:	62 c1 1c 48 58 de    	vaddps zmm19,zmm12,zmm14
  a69114:	62 51 04 48 5c c0    	vsubps zmm8,zmm15,zmm8
  a6911a:	62 11 14 48 59 ff    	vmulps zmm15,zmm13,zmm31
  a69120:	62 72 6d 48 b8 f8    	vfmadd231ps zmm15,zmm2,zmm0
  a69126:	62 51 24 40 58 db    	vaddps zmm11,zmm27,zmm11
  a6912c:	62 f2 7d 48 18 25 ba 	vbroadcastss zmm4,DWORD PTR [rip+0xffffffffff60c3ba]        # 754f0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x29a0>
  a69133:	c3 60 ff 
  a69136:	62 61 24 48 59 dc    	vmulps zmm27,zmm11,zmm4
  a6913c:	62 e2 7d 48 18 05 b2 	vbroadcastss zmm16,DWORD PTR [rip+0xffffffffff60c4b2]        # 755f8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2aa8>
  a69143:	c4 60 ff 
  a69146:	62 22 3d 48 bc d8    	vfnmadd231ps zmm27,zmm8,zmm16
  a6914c:	62 51 3c 40 58 d2    	vaddps zmm10,zmm24,zmm10
  a69152:	62 01 04 48 58 eb    	vaddps zmm29,zmm15,zmm27
  a69158:	62 71 14 48 59 e8    	vmulps zmm13,zmm13,zmm0
  a6915e:	62 72 05 40 bc ea    	vfnmadd231ps zmm13,zmm31,zmm2
  a69164:	62 01 34 48 58 c5    	vaddps zmm24,zmm9,zmm29
  a6916a:	62 b1 24 48 59 d0    	vmulps zmm2,zmm11,zmm16
  a69170:	62 d2 5d 48 b8 d0    	vfmadd231ps zmm2,zmm4,zmm8
  a69176:	62 71 14 48 5c c2    	vsubps zmm8,zmm13,zmm2
  a6917c:	62 e1 7c 48 28 c3    	vmovaps zmm16,zmm3
  a69182:	62 e2 65 48 ac 24 24 	vfnmadd213ps zmm20,zmm3,ZMMWORD PTR [rsp]
  a69189:	62 41 2c 48 58 f8    	vaddps zmm31,zmm10,zmm8
  a6918f:	62 f1 44 48 5c c6    	vsubps zmm0,zmm7,zmm6
  a69195:	62 f1 7c 48 28 d9    	vmovaps zmm3,zmm1
  a6919b:	62 f1 7c 48 59 f1    	vmulps zmm6,zmm0,zmm1
  a691a1:	62 f1 5c 40 58 e6    	vaddps zmm4,zmm20,zmm6
  a691a7:	62 a2 7d 40 ac f5    	vfnmadd213ps zmm22,zmm16,zmm21
  a691ad:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x40]
  a691b4:	01 
  a691b5:	62 f1 7c 48 5c 4c 24 	vsubps zmm1,zmm0,ZMMWORD PTR [rsp-0x80]
  a691bc:	fe 
  a691bd:	62 f1 74 48 59 fb    	vmulps zmm7,zmm1,zmm3
  a691c3:	62 e1 4c 40 5c d7    	vsubps zmm18,zmm22,zmm7
  a691c9:	62 e2 7d 40 ac cd    	vfnmadd213ps zmm17,zmm16,zmm5
  a691cf:	62 91 2c 40 5c cc    	vsubps zmm1,zmm26,zmm28
  a691d5:	62 f1 74 48 59 eb    	vmulps zmm5,zmm1,zmm3
  a691db:	62 f1 74 40 58 cd    	vaddps zmm1,zmm17,zmm5
  a691e1:	62 52 7d 40 ac f4    	vfnmadd213ps zmm14,zmm16,zmm12
  a691e7:	62 11 34 40 5c de    	vsubps zmm11,zmm25,zmm30
  a691ed:	62 e1 24 48 59 eb    	vmulps zmm21,zmm11,zmm3
  a691f3:	62 21 0c 48 5c f5    	vsubps zmm30,zmm14,zmm21
  a691f9:	62 42 7d 40 ac e9    	vfnmadd213ps zmm29,zmm16,zmm9
  a691ff:	62 f1 14 48 58 d2    	vaddps zmm2,zmm13,zmm2
  a69205:	62 f1 6c 48 59 d3    	vmulps zmm2,zmm2,zmm3
  a6920b:	62 71 14 40 58 ca    	vaddps zmm9,zmm29,zmm2
  a69211:	62 52 7d 40 ac c2    	vfnmadd213ps zmm8,zmm16,zmm10
  a69217:	62 11 04 48 5c d3    	vsubps zmm10,zmm15,zmm27
  a6921d:	62 71 2c 48 59 d3    	vmulps zmm10,zmm10,zmm3
  a69223:	62 51 3c 48 5c fa    	vsubps zmm15,zmm8,zmm10
  a69229:	62 f1 5c 40 5c f6    	vsubps zmm6,zmm20,zmm6
  a6922f:	62 21 44 48 58 de    	vaddps zmm27,zmm7,zmm22
  a69235:	62 f1 74 40 5c fd    	vsubps zmm7,zmm17,zmm5
  a6923b:	62 21 0c 48 58 e5    	vaddps zmm28,zmm14,zmm21
  a69241:	62 f1 14 40 5c d2    	vsubps zmm2,zmm29,zmm2
  a69247:	62 d1 3c 48 58 ea    	vaddps zmm5,zmm8,zmm10
  a6924d:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x40]
  a69254:	ff 
  a69255:	62 71 7c 48 28 c0    	vmovaps zmm8,zmm0
  a6925b:	62 e1 7c 48 28 05 1b 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff65dd1b]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a69262:	dd 65 ff 
  a69265:	62 72 7d 40 7f c2    	vpermt2ps zmm8,zmm16,zmm2
  a6926b:	62 61 7c 48 28 15 4b 	vmovaps zmm26,ZMMWORD PTR [rip+0xffffffffff65dd4b]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a69272:	dd 65 ff 
  a69275:	62 f2 2d 40 7f c2    	vpermt2ps zmm0,zmm26,zmm2
  a6927b:	62 61 7c 48 28 e8    	vmovaps zmm29,zmm0
  a69281:	62 b1 7c 48 28 d7    	vmovaps zmm2,zmm23
  a69287:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a6928b:	62 f2 7d 40 7f d0    	vpermt2ps zmm2,zmm16,zmm0
  a69291:	62 e2 2d 40 7f f8    	vpermt2ps zmm23,zmm26,zmm0
  a69297:	62 11 7c 48 28 d0    	vmovaps zmm10,zmm24
  a6929d:	62 72 7d 40 7f d0    	vpermt2ps zmm10,zmm16,zmm0
  a692a3:	62 62 2d 40 7f c0    	vpermt2ps zmm24,zmm26,zmm0
  a692a9:	62 e1 7c 48 28 cc    	vmovaps zmm17,zmm4
  a692af:	62 e2 7d 40 7f c8    	vpermt2ps zmm17,zmm16,zmm0
  a692b5:	62 f2 2d 40 7f e0    	vpermt2ps zmm4,zmm26,zmm0
  a692bb:	62 71 7c 48 28 f1    	vmovaps zmm14,zmm1
  a692c1:	62 72 7d 40 7f f0    	vpermt2ps zmm14,zmm16,zmm0
  a692c7:	62 f2 2d 40 7f c8    	vpermt2ps zmm1,zmm26,zmm0
  a692cd:	62 c1 7c 48 28 e1    	vmovaps zmm20,zmm9
  a692d3:	62 e2 7d 40 7f e0    	vpermt2ps zmm20,zmm16,zmm0
  a692d9:	62 72 2d 40 7f c8    	vpermt2ps zmm9,zmm26,zmm0
  a692df:	62 e1 7c 48 28 ee    	vmovaps zmm21,zmm6
  a692e5:	62 e2 7d 40 7f e8    	vpermt2ps zmm21,zmm16,zmm0
  a692eb:	62 f2 2d 40 7f f0    	vpermt2ps zmm6,zmm26,zmm0
  a692f1:	62 e1 7c 48 28 f7    	vmovaps zmm22,zmm7
  a692f7:	62 e2 7d 40 7f f0    	vpermt2ps zmm22,zmm16,zmm0
  a692fd:	62 f2 2d 40 7f f8    	vpermt2ps zmm7,zmm26,zmm0
  a69303:	62 41 7c 48 28 c8    	vmovaps zmm25,zmm8
  a69309:	62 71 7c 48 28 25 ed 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff65dbed]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a69310:	db 65 ff 
  a69313:	62 42 1d 48 7f ce    	vpermt2ps zmm25,zmm12,zmm14
  a69319:	62 71 7c 48 28 2d 1d 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff65dc1d]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a69320:	dc 65 ff 
  a69323:	62 52 15 48 7f c6    	vpermt2ps zmm8,zmm13,zmm14
  a69329:	62 71 7c 48 28 f2    	vmovaps zmm14,zmm2
  a6932f:	62 32 1d 48 7f f4    	vpermt2ps zmm14,zmm12,zmm20
  a69335:	62 b2 15 48 7f d4    	vpermt2ps zmm2,zmm13,zmm20
  a6933b:	62 c1 7c 48 28 e2    	vmovaps zmm20,zmm10
  a69341:	62 a2 1d 48 7f e5    	vpermt2ps zmm20,zmm12,zmm21
  a69347:	62 32 15 48 7f d5    	vpermt2ps zmm10,zmm13,zmm21
  a6934d:	62 a1 7c 48 28 e9    	vmovaps zmm21,zmm17
  a69353:	62 a2 1d 48 7f ee    	vpermt2ps zmm21,zmm12,zmm22
  a69359:	62 a2 15 48 7f ce    	vpermt2ps zmm17,zmm13,zmm22
  a6935f:	62 62 1d 48 7f e9    	vpermt2ps zmm29,zmm12,zmm1
  a69365:	62 c2 1d 48 7f f9    	vpermt2ps zmm23,zmm12,zmm9
  a6936b:	62 62 1d 48 7f c6    	vpermt2ps zmm24,zmm12,zmm6
  a69371:	62 f2 1d 48 7f e7    	vpermt2ps zmm4,zmm12,zmm7
  a69377:	62 a1 b5 40 14 f4    	vunpcklpd zmm22,zmm25,zmm20
  a6937d:	62 a1 b5 40 15 e4    	vunpckhpd zmm20,zmm25,zmm20
  a69383:	62 b1 8d 48 14 cd    	vunpcklpd zmm1,zmm14,zmm21
  a69389:	62 b1 8d 48 15 f5    	vunpckhpd zmm6,zmm14,zmm21
  a6938f:	62 51 bd 48 14 ca    	vunpcklpd zmm9,zmm8,zmm10
  a69395:	62 51 bd 48 15 f2    	vunpckhpd zmm14,zmm8,zmm10
  a6939b:	62 b1 ed 48 14 f9    	vunpcklpd zmm7,zmm2,zmm17
  a693a1:	62 b1 ed 48 15 d1    	vunpckhpd zmm2,zmm2,zmm17
  a693a7:	62 01 95 40 14 c8    	vunpcklpd zmm25,zmm29,zmm24
  a693ad:	62 11 95 40 15 d0    	vunpckhpd zmm10,zmm29,zmm24
  a693b3:	62 71 c5 40 14 c4    	vunpcklpd zmm8,zmm23,zmm4
  a693b9:	62 f1 c5 40 15 dc    	vunpckhpd zmm3,zmm23,zmm4
  a693bf:	62 b1 7c 48 28 e6    	vmovaps zmm4,zmm22
  a693c5:	62 e1 7c 48 28 0d 31 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff65da31]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a693cc:	da 65 ff 
  a693cf:	62 f2 75 40 7f e1    	vpermt2ps zmm4,zmm17,zmm1
  a693d5:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm4
  a693dc:	ff 
  a693dd:	62 71 7c 48 28 1d 59 	vmovaps zmm11,ZMMWORD PTR [rip+0xffffffffff65da59]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a693e4:	da 65 ff 
  a693e7:	62 e2 25 48 7f f1    	vpermt2ps zmm22,zmm11,zmm1
  a693ed:	62 b1 7c 48 28 cc    	vmovaps zmm1,zmm20
  a693f3:	62 f2 75 40 7f ce    	vpermt2ps zmm1,zmm17,zmm6
  a693f9:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm1
  a69400:	01 
  a69401:	62 e2 25 48 7f e6    	vpermt2ps zmm20,zmm11,zmm6
  a69407:	62 41 7c 48 28 e9    	vmovaps zmm29,zmm9
  a6940d:	62 62 75 40 7f ef    	vpermt2ps zmm29,zmm17,zmm7
  a69413:	62 72 25 48 7f cf    	vpermt2ps zmm9,zmm11,zmm7
  a69419:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm9
  a69420:	fe 
  a69421:	62 41 7c 48 28 c6    	vmovaps zmm24,zmm14
  a69427:	62 62 75 40 7f c2    	vpermt2ps zmm24,zmm17,zmm2
  a6942d:	62 72 25 48 7f f2    	vpermt2ps zmm14,zmm11,zmm2
  a69433:	62 81 7c 48 28 f9    	vmovaps zmm23,zmm25
  a69439:	62 c2 75 40 7f f8    	vpermt2ps zmm23,zmm17,zmm8
  a6943f:	62 42 25 48 7f c8    	vpermt2ps zmm25,zmm11,zmm8
  a69445:	62 c1 7c 48 28 ea    	vmovaps zmm21,zmm10
  a6944b:	62 e2 75 40 7f eb    	vpermt2ps zmm21,zmm17,zmm3
  a69451:	62 72 25 48 7f d3    	vpermt2ps zmm10,zmm11,zmm3
  a69457:	62 71 7c 48 11 14 24 	vmovups ZMMWORD PTR [rsp],zmm10
  a6945e:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x80]
  a69465:	02 
  a69466:	62 f1 7c 48 28 dc    	vmovaps zmm3,zmm4
  a6946c:	62 f2 7d 40 7f dd    	vpermt2ps zmm3,zmm16,zmm5
  a69472:	62 f2 2d 40 7f e5    	vpermt2ps zmm4,zmm26,zmm5
  a69478:	62 b1 7c 48 28 cb    	vmovaps zmm1,zmm19
  a6947e:	62 f2 7d 40 7f c8    	vpermt2ps zmm1,zmm16,zmm0
  a69484:	62 e2 2d 40 7f d8    	vpermt2ps zmm19,zmm26,zmm0
  a6948a:	62 91 7c 48 28 d7    	vmovaps zmm2,zmm31
  a69490:	62 f2 7d 40 7f d0    	vpermt2ps zmm2,zmm16,zmm0
  a69496:	62 62 2d 40 7f f8    	vpermt2ps zmm31,zmm26,zmm0
  a6949c:	62 b1 7c 48 28 ea    	vmovaps zmm5,zmm18
  a694a2:	62 f2 7d 40 7f e8    	vpermt2ps zmm5,zmm16,zmm0
  a694a8:	62 e2 2d 40 7f d0    	vpermt2ps zmm18,zmm26,zmm0
  a694ae:	62 91 7c 48 28 f6    	vmovaps zmm6,zmm30
  a694b4:	62 f2 7d 40 7f f0    	vpermt2ps zmm6,zmm16,zmm0
  a694ba:	62 62 2d 40 7f f0    	vpermt2ps zmm30,zmm26,zmm0
  a694c0:	62 d1 7c 48 28 ff    	vmovaps zmm7,zmm15
  a694c6:	62 f2 7d 40 7f f8    	vpermt2ps zmm7,zmm16,zmm0
  a694cc:	62 72 2d 40 7f f8    	vpermt2ps zmm15,zmm26,zmm0
  a694d2:	62 11 7c 48 28 c3    	vmovaps zmm8,zmm27
  a694d8:	62 72 7d 40 7f c0    	vpermt2ps zmm8,zmm16,zmm0
  a694de:	62 62 2d 40 7f d8    	vpermt2ps zmm27,zmm26,zmm0
  a694e4:	62 11 7c 48 28 cc    	vmovaps zmm9,zmm28
  a694ea:	62 72 7d 40 7f c8    	vpermt2ps zmm9,zmm16,zmm0
  a694f0:	62 62 2d 40 7f e0    	vpermt2ps zmm28,zmm26,zmm0
  a694f6:	62 71 7c 48 28 d3    	vmovaps zmm10,zmm3
  a694fc:	62 72 1d 48 7f d6    	vpermt2ps zmm10,zmm12,zmm6
  a69502:	62 f2 15 48 7f de    	vpermt2ps zmm3,zmm13,zmm6
  a69508:	62 f1 7c 48 28 f1    	vmovaps zmm6,zmm1
  a6950e:	62 f2 1d 48 7f f7    	vpermt2ps zmm6,zmm12,zmm7
  a69514:	62 f2 15 48 7f cf    	vpermt2ps zmm1,zmm13,zmm7
  a6951a:	62 f1 7c 48 28 fa    	vmovaps zmm7,zmm2
  a69520:	62 d2 1d 48 7f f8    	vpermt2ps zmm7,zmm12,zmm8
  a69526:	62 d2 15 48 7f d0    	vpermt2ps zmm2,zmm13,zmm8
  a6952c:	62 71 7c 48 28 c5    	vmovaps zmm8,zmm5
  a69532:	62 52 1d 48 7f c1    	vpermt2ps zmm8,zmm12,zmm9
  a69538:	62 d2 15 48 7f e9    	vpermt2ps zmm5,zmm13,zmm9
  a6953e:	62 92 1d 48 7f e6    	vpermt2ps zmm4,zmm12,zmm30
  a69544:	62 c2 1d 48 7f df    	vpermt2ps zmm19,zmm12,zmm15
  a6954a:	62 02 1d 48 7f fb    	vpermt2ps zmm31,zmm12,zmm27
  a69550:	62 82 1d 48 7f d4    	vpermt2ps zmm18,zmm12,zmm28
  a69556:	62 71 ad 48 14 e7    	vunpcklpd zmm12,zmm10,zmm7
  a6955c:	62 71 ad 48 15 d7    	vunpckhpd zmm10,zmm10,zmm7
  a69562:	62 d1 cd 48 14 f8    	vunpcklpd zmm7,zmm6,zmm8
  a69568:	62 d1 cd 48 15 f0    	vunpckhpd zmm6,zmm6,zmm8
  a6956e:	62 e1 e5 48 14 c2    	vunpcklpd zmm16,zmm3,zmm2
  a69574:	62 71 e5 48 15 fa    	vunpckhpd zmm15,zmm3,zmm2
  a6957a:	62 f1 f5 48 14 d5    	vunpcklpd zmm2,zmm1,zmm5
  a69580:	62 f1 f5 48 15 ed    	vunpckhpd zmm5,zmm1,zmm5
  a69586:	62 01 dd 48 14 d7    	vunpcklpd zmm26,zmm4,zmm31
  a6958c:	62 91 dd 48 15 c7    	vunpckhpd zmm0,zmm4,zmm31
  a69592:	62 31 e5 40 14 c2    	vunpcklpd zmm8,zmm19,zmm18
  a69598:	62 b1 e5 40 15 da    	vunpckhpd zmm3,zmm19,zmm18
  a6959e:	62 c1 7c 48 28 dc    	vmovaps zmm19,zmm12
  a695a4:	62 e2 75 40 7f df    	vpermt2ps zmm19,zmm17,zmm7
  a695aa:	62 72 25 48 7f e7    	vpermt2ps zmm12,zmm11,zmm7
  a695b0:	62 c1 7c 48 28 d2    	vmovaps zmm18,zmm10
  a695b6:	62 e2 75 40 7f d6    	vpermt2ps zmm18,zmm17,zmm6
  a695bc:	62 72 25 48 7f d6    	vpermt2ps zmm10,zmm11,zmm6
  a695c2:	62 b1 7c 48 28 e0    	vmovaps zmm4,zmm16
  a695c8:	62 f2 75 40 7f e2    	vpermt2ps zmm4,zmm17,zmm2
  a695ce:	62 e2 25 48 7f c2    	vpermt2ps zmm16,zmm11,zmm2
  a695d4:	62 d1 7c 48 28 cf    	vmovaps zmm1,zmm15
  a695da:	62 f2 75 40 7f cd    	vpermt2ps zmm1,zmm17,zmm5
  a695e0:	62 72 25 48 7f fd    	vpermt2ps zmm15,zmm11,zmm5
  a695e6:	62 91 7c 48 28 ea    	vmovaps zmm5,zmm26
  a695ec:	62 d2 75 40 7f e8    	vpermt2ps zmm5,zmm17,zmm8
  a695f2:	62 42 25 48 7f d0    	vpermt2ps zmm26,zmm11,zmm8
  a695f8:	62 61 7c 48 28 f8    	vmovaps zmm31,zmm0
  a695fe:	62 62 75 40 7f fb    	vpermt2ps zmm31,zmm17,zmm3
  a69604:	62 f2 25 48 7f c3    	vpermt2ps zmm0,zmm11,zmm3
  a6960a:	62 f1 7c 48 10 79 02 	vmovups zmm7,ZMMWORD PTR [rcx+0x80]
  a69611:	62 f1 7c 48 10 71 03 	vmovups zmm6,ZMMWORD PTR [rcx+0xc0]
  a69618:	62 f1 7c 48 10 51 0c 	vmovups zmm2,ZMMWORD PTR [rcx+0x300]
  a6961f:	62 71 7c 48 10 41 0d 	vmovups zmm8,ZMMWORD PTR [rcx+0x340]
  a69626:	62 71 3c 40 59 ea    	vmulps zmm13,zmm24,zmm2
  a6962c:	62 52 75 48 bc e8    	vfnmadd231ps zmm13,zmm1,zmm8
  a69632:	62 f1 74 48 59 da    	vmulps zmm3,zmm1,zmm2
  a69638:	62 f1 7c 48 10 49 06 	vmovups zmm1,ZMMWORD PTR [rcx+0x180]
  a6963f:	62 92 3d 48 b8 d8    	vfmadd231ps zmm3,zmm8,zmm24
  a69645:	62 f1 7c 48 10 51 07 	vmovups zmm2,ZMMWORD PTR [rcx+0x1c0]
  a6964c:	62 61 5c 40 59 c1    	vmulps zmm24,zmm20,zmm1
  a69652:	62 62 2d 48 bc c2    	vfnmadd231ps zmm24,zmm10,zmm2
  a69658:	62 f1 2c 48 59 c9    	vmulps zmm1,zmm10,zmm1
  a6965e:	62 71 7c 48 10 41 12 	vmovups zmm8,ZMMWORD PTR [rcx+0x480]
  a69665:	62 b2 6d 48 b8 cc    	vfmadd231ps zmm1,zmm2,zmm20
  a6966b:	62 f1 7c 48 10 51 13 	vmovups zmm2,ZMMWORD PTR [rcx+0x4c0]
  a69672:	62 51 34 40 59 d0    	vmulps zmm10,zmm25,zmm8
  a69678:	62 72 2d 40 bc d2    	vfnmadd231ps zmm10,zmm26,zmm2
  a6967e:	62 41 2c 40 59 d0    	vmulps zmm26,zmm26,zmm8
  a69684:	62 71 7c 48 10 41 08 	vmovups zmm8,ZMMWORD PTR [rcx+0x200]
  a6968b:	62 02 6d 48 b8 d1    	vfmadd231ps zmm26,zmm2,zmm25
  a69691:	62 71 7c 48 10 49 09 	vmovups zmm9,ZMMWORD PTR [rcx+0x240]
  a69698:	62 d1 14 40 59 d0    	vmulps zmm2,zmm29,zmm8
  a6969e:	62 d2 5d 48 bc d1    	vfnmadd231ps zmm2,zmm4,zmm9
  a696a4:	62 51 5c 48 59 d8    	vmulps zmm11,zmm4,zmm8
  a696aa:	62 71 7c 48 10 41 14 	vmovups zmm8,ZMMWORD PTR [rcx+0x500]
  a696b1:	62 12 35 48 b8 dd    	vfmadd231ps zmm11,zmm9,zmm29
  a696b7:	62 71 7c 48 10 49 15 	vmovups zmm9,ZMMWORD PTR [rcx+0x540]
  a696be:	62 41 54 40 59 e8    	vmulps zmm29,zmm21,zmm8
  a696c4:	62 42 05 40 bc e9    	vfnmadd231ps zmm29,zmm31,zmm9
  a696ca:	62 41 04 40 59 d8    	vmulps zmm27,zmm31,zmm8
  a696d0:	62 71 7c 48 10 41 0e 	vmovups zmm8,ZMMWORD PTR [rcx+0x380]
  a696d7:	62 22 35 48 b8 dd    	vfmadd231ps zmm27,zmm9,zmm21
  a696dd:	62 71 7c 48 10 49 0f 	vmovups zmm9,ZMMWORD PTR [rcx+0x3c0]
  a696e4:	62 41 0c 48 59 e0    	vmulps zmm28,zmm14,zmm8
  a696ea:	62 42 05 48 bc e1    	vfnmadd231ps zmm28,zmm15,zmm9
  a696f0:	62 51 04 48 59 c0    	vmulps zmm8,zmm15,zmm8
  a696f6:	62 71 7c 48 10 79 04 	vmovups zmm15,ZMMWORD PTR [rcx+0x100]
  a696fd:	62 52 35 48 b8 c6    	vfmadd231ps zmm8,zmm9,zmm14
  a69703:	62 71 7c 48 10 49 05 	vmovups zmm9,ZMMWORD PTR [rcx+0x140]
  a6970a:	62 71 4c 40 59 f7    	vmulps zmm14,zmm22,zmm7
  a69710:	62 72 1d 48 bc f6    	vfnmadd231ps zmm14,zmm12,zmm6
  a69716:	62 f1 1c 48 59 ff    	vmulps zmm7,zmm12,zmm7
  a6971c:	62 71 7c 48 10 61 10 	vmovups zmm12,ZMMWORD PTR [rcx+0x400]
  a69723:	62 b2 4d 48 b8 fe    	vfmadd231ps zmm7,zmm6,zmm22
  a69729:	62 f1 7c 48 10 71 11 	vmovups zmm6,ZMMWORD PTR [rcx+0x440]
  a69730:	62 c1 44 40 59 f4    	vmulps zmm22,zmm23,zmm12
  a69736:	62 e2 55 48 bc f6    	vfnmadd231ps zmm22,zmm5,zmm6
  a6973c:	62 51 54 48 59 e4    	vmulps zmm12,zmm5,zmm12
  a69742:	62 f1 7c 48 10 69 0a 	vmovups zmm5,ZMMWORD PTR [rcx+0x280]
  a69749:	62 32 4d 48 b8 e7    	vfmadd231ps zmm12,zmm6,zmm23
  a6974f:	62 f1 7c 48 10 71 0b 	vmovups zmm6,ZMMWORD PTR [rcx+0x2c0]
  a69756:	62 e1 7c 48 10 4c 24 	vmovups zmm17,ZMMWORD PTR [rsp+0x40]
  a6975d:	01 
  a6975e:	62 41 74 40 59 cf    	vmulps zmm25,zmm17,zmm15
  a69764:	62 42 6d 40 bc c9    	vfnmadd231ps zmm25,zmm18,zmm9
  a6976a:	62 d1 6c 40 59 e7    	vmulps zmm4,zmm18,zmm15
  a69770:	62 71 7c 48 10 79 16 	vmovups zmm15,ZMMWORD PTR [rcx+0x580]
  a69777:	62 b2 35 48 b8 e1    	vfmadd231ps zmm4,zmm9,zmm17
  a6977d:	62 71 7c 48 10 49 17 	vmovups zmm9,ZMMWORD PTR [rcx+0x5c0]
  a69784:	62 e1 7c 48 10 0c 24 	vmovups zmm17,ZMMWORD PTR [rsp]
  a6978b:	62 c1 74 40 59 ff    	vmulps zmm23,zmm17,zmm15
  a69791:	62 c2 7d 48 bc f9    	vfnmadd231ps zmm23,zmm0,zmm9
  a69797:	62 d1 7c 48 59 c7    	vmulps zmm0,zmm0,zmm15
  a6979d:	62 e1 7c 48 10 54 24 	vmovups zmm18,ZMMWORD PTR [rsp-0x40]
  a697a4:	ff 
  a697a5:	62 51 6c 40 58 fd    	vaddps zmm15,zmm18,zmm13
  a697ab:	62 b2 35 48 b8 c1    	vfmadd231ps zmm0,zmm9,zmm17
  a697b1:	62 51 3c 40 58 ca    	vaddps zmm9,zmm24,zmm10
  a697b7:	62 e1 7c 48 10 64 24 	vmovups zmm20,ZMMWORD PTR [rsp-0x80]
  a697be:	fe 
  a697bf:	62 e1 5c 40 59 ed    	vmulps zmm21,zmm20,zmm5
  a697c5:	62 e2 7d 40 bc ee    	vfnmadd231ps zmm21,zmm16,zmm6
  a697cb:	62 e1 7c 40 59 cd    	vmulps zmm17,zmm16,zmm5
  a697d1:	62 01 6c 48 58 f5    	vaddps zmm30,zmm2,zmm29
  a697d7:	62 a2 4d 48 b8 cc    	vfmadd231ps zmm17,zmm6,zmm20
  a697dd:	62 c1 1c 40 58 e6    	vaddps zmm20,zmm28,zmm14
  a697e3:	62 01 4c 40 58 f9    	vaddps zmm31,zmm22,zmm25
  a697e9:	62 91 6c 48 5c ed    	vsubps zmm5,zmm2,zmm29
  a697ef:	62 61 3c 48 58 ef    	vaddps zmm29,zmm8,zmm7
  a697f5:	62 f1 3c 48 5c d7    	vsubps zmm2,zmm8,zmm7
  a697fb:	62 b1 44 40 58 fd    	vaddps zmm7,zmm23,zmm21
  a69801:	62 91 4c 40 5c f1    	vsubps zmm6,zmm22,zmm25
  a69807:	62 31 7c 48 58 c1    	vaddps zmm8,zmm0,zmm17
  a6980d:	62 a1 7c 48 5c c9    	vsubps zmm17,zmm0,zmm17
  a69813:	62 a1 64 48 58 f3    	vaddps zmm22,zmm3,zmm19
  a69819:	62 c1 6c 40 5c d5    	vsubps zmm18,zmm18,zmm13
  a6981f:	62 11 74 48 58 ea    	vaddps zmm13,zmm1,zmm26
  a69825:	62 01 74 48 5c ca    	vsubps zmm25,zmm1,zmm26
  a6982b:	62 91 24 48 58 cb    	vaddps zmm1,zmm11,zmm27
  a69831:	62 11 24 48 5c db    	vsubps zmm11,zmm11,zmm27
  a69837:	62 61 1c 48 58 d4    	vaddps zmm26,zmm12,zmm4
  a6983d:	62 11 0c 48 5c f4    	vsubps zmm14,zmm14,zmm28
  a69843:	62 d1 24 48 58 c6    	vaddps zmm0,zmm11,zmm14
  a69849:	62 61 1c 48 5c dc    	vsubps zmm27,zmm12,zmm4
  a6984f:	62 a1 54 40 5c ef    	vsubps zmm21,zmm21,zmm23
  a69855:	62 b1 24 40 58 e5    	vaddps zmm4,zmm27,zmm21
  a6985b:	62 e1 7c 48 5c fc    	vsubps zmm23,zmm0,zmm4
  a69861:	62 f1 7c 48 58 e4    	vaddps zmm4,zmm0,zmm4
  a69867:	62 f1 54 48 58 c2    	vaddps zmm0,zmm5,zmm2
  a6986d:	62 e1 64 40 5c db    	vsubps zmm19,zmm19,zmm3
  a69873:	62 31 4c 48 58 e1    	vaddps zmm12,zmm6,zmm17
  a69879:	62 01 2c 48 5c c0    	vsubps zmm24,zmm10,zmm24
  a6987f:	62 d1 7c 48 58 dc    	vaddps zmm3,zmm0,zmm12
  a69885:	62 41 7c 48 5c e4    	vsubps zmm28,zmm0,zmm12
  a6988b:	62 a1 0c 40 58 c4    	vaddps zmm16,zmm30,zmm20
  a69891:	62 31 0c 40 5c e4    	vsubps zmm12,zmm30,zmm20
  a69897:	62 61 04 40 58 f7    	vaddps zmm30,zmm31,zmm7
  a6989d:	62 f1 04 40 5c ff    	vsubps zmm7,zmm31,zmm7
  a698a3:	62 51 04 48 58 d1    	vaddps zmm10,zmm15,zmm9
  a698a9:	62 51 04 48 5c c9    	vsubps zmm9,zmm15,zmm9
  a698af:	62 11 74 48 58 fd    	vaddps zmm15,zmm1,zmm29
  a698b5:	62 91 74 48 5c cd    	vsubps zmm1,zmm1,zmm29
  a698bb:	62 41 2c 40 58 e8    	vaddps zmm29,zmm26,zmm8
  a698c1:	62 51 2c 40 5c c0    	vsubps zmm8,zmm26,zmm8
  a698c7:	62 d1 74 48 5c c0    	vsubps zmm0,zmm1,zmm8
  a698cd:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm0
  a698d4:	ff 
  a698d5:	62 51 74 48 58 c0    	vaddps zmm8,zmm1,zmm8
  a698db:	62 b1 14 48 58 c6    	vaddps zmm0,zmm13,zmm22
  a698e1:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a698e8:	fe 
  a698e9:	62 c1 4c 40 5c f5    	vsubps zmm22,zmm22,zmm13
  a698ef:	62 61 1c 48 58 d7    	vaddps zmm26,zmm12,zmm7
  a698f5:	62 71 1c 48 5c e7    	vsubps zmm12,zmm12,zmm7
  a698fb:	62 11 6c 40 58 e9    	vaddps zmm13,zmm18,zmm25
  a69901:	62 01 6c 40 5c c9    	vsubps zmm25,zmm18,zmm25
  a69907:	62 81 7c 40 58 d6    	vaddps zmm18,zmm16,zmm30
  a6990d:	62 f1 54 48 5c d2    	vsubps zmm2,zmm5,zmm2
  a69913:	62 81 04 48 58 e5    	vaddps zmm20,zmm15,zmm29
  a69919:	62 b1 4c 48 5c c9    	vsubps zmm1,zmm6,zmm17
  a6991f:	62 21 3c 40 58 fb    	vaddps zmm31,zmm24,zmm19
  a69925:	62 01 64 40 5c c0    	vsubps zmm24,zmm19,zmm24
  a6992b:	62 e2 7d 48 18 0d 2b 	vbroadcastss zmm17,DWORD PTR [rip+0xffffffffff60bb2b]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a69932:	bb 60 ff 
  a69935:	62 b1 7c 48 28 e9    	vmovaps zmm5,zmm17
  a6993b:	62 d2 65 48 ac ed    	vfnmadd213ps zmm5,zmm3,zmm13
  a69941:	62 f2 7d 48 18 05 89 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff60b989]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a69948:	b9 60 ff 
  a6994b:	62 f1 44 40 59 f0    	vmulps zmm6,zmm23,zmm0
  a69951:	62 51 24 48 5c f6    	vsubps zmm14,zmm11,zmm14
  a69957:	62 e1 54 48 58 de    	vaddps zmm19,zmm5,zmm6
  a6995d:	62 a1 24 40 5c fd    	vsubps zmm23,zmm27,zmm21
  a69963:	62 31 7c 48 28 d9    	vmovaps zmm11,zmm17
  a69969:	62 12 5d 48 ac df    	vfnmadd213ps zmm11,zmm4,zmm31
  a6996f:	62 61 1c 40 59 d8    	vmulps zmm27,zmm28,zmm0
  a69975:	62 11 04 48 5c fd    	vsubps zmm15,zmm15,zmm29
  a6997b:	62 81 24 48 5c eb    	vsubps zmm21,zmm11,zmm27
  a69981:	62 81 7c 40 5c c6    	vsubps zmm16,zmm16,zmm30
  a69987:	62 21 7c 48 28 e1    	vmovaps zmm28,zmm17
  a6998d:	62 42 2d 40 ac e1    	vfnmadd213ps zmm28,zmm26,zmm9
  a69993:	62 f1 54 48 5c fe    	vsubps zmm7,zmm5,zmm6
  a69999:	62 21 7c 48 28 e9    	vmovaps zmm29,zmm17
  a6999f:	62 22 3d 48 ac ee    	vfnmadd213ps zmm29,zmm8,zmm22
  a699a5:	62 11 24 48 58 db    	vaddps zmm11,zmm11,zmm27
  a699ab:	62 61 6c 48 58 d9    	vaddps zmm27,zmm2,zmm1
  a699b1:	62 91 34 48 58 ea    	vaddps zmm5,zmm9,zmm26
  a699b7:	62 11 34 40 58 cb    	vaddps zmm9,zmm25,zmm27
  a699bd:	62 d1 4c 40 58 f0    	vaddps zmm6,zmm22,zmm8
  a699c3:	62 31 0c 48 58 c7    	vaddps zmm8,zmm14,zmm23
  a699c9:	62 02 75 40 ac d9    	vfnmadd213ps zmm27,zmm17,zmm25
  a699cf:	62 c1 3c 40 58 f0    	vaddps zmm22,zmm24,zmm8
  a699d5:	62 a1 0c 48 5c ff    	vsubps zmm23,zmm14,zmm23
  a699db:	62 31 7c 48 28 f1    	vmovaps zmm14,zmm17
  a699e1:	62 52 6d 40 ac f2    	vfnmadd213ps zmm14,zmm18,zmm10
  a699e7:	62 71 04 48 59 f8    	vmulps zmm15,zmm15,zmm0
  a699ed:	62 12 75 40 ac c0    	vfnmadd213ps zmm8,zmm17,zmm24
  a699f3:	62 41 0c 48 58 c7    	vaddps zmm24,zmm14,zmm15
  a699f9:	62 f1 6c 48 5c d1    	vsubps zmm2,zmm2,zmm1
  a699ff:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x80]
  a69a06:	fe 
  a69a07:	62 e2 5d 40 ac c9    	vfnmadd213ps zmm17,zmm20,zmm1
  a69a0d:	62 e1 7c 40 59 c0    	vmulps zmm16,zmm16,zmm0
  a69a13:	62 51 0c 48 5c ff    	vsubps zmm15,zmm14,zmm15
  a69a19:	62 21 74 40 5c c8    	vsubps zmm25,zmm17,zmm16
  a69a1f:	62 a1 74 40 58 c8    	vaddps zmm17,zmm17,zmm16
  a69a25:	62 71 14 48 58 eb    	vaddps zmm13,zmm13,zmm3
  a69a2b:	62 f1 7c 48 59 5c 24 	vmulps zmm3,zmm0,ZMMWORD PTR [rsp-0x40]
  a69a32:	ff 
  a69a33:	62 71 04 40 58 f4    	vaddps zmm14,zmm31,zmm4
  a69a39:	62 e1 1c 40 5c c3    	vsubps zmm16,zmm28,zmm3
  a69a3f:	62 f1 1c 48 59 e0    	vmulps zmm4,zmm12,zmm0
  a69a45:	62 61 1c 40 58 e3    	vaddps zmm28,zmm28,zmm3
  a69a4b:	62 61 14 40 58 d4    	vaddps zmm26,zmm29,zmm4
  a69a51:	62 f1 44 40 59 d8    	vmulps zmm3,zmm23,zmm0
  a69a57:	62 71 14 40 5c e4    	vsubps zmm12,zmm29,zmm4
  a69a5d:	62 e1 24 40 58 fb    	vaddps zmm23,zmm27,zmm3
  a69a63:	62 f1 6c 48 59 d0    	vmulps zmm2,zmm2,zmm0
  a69a69:	62 f1 24 40 5c db    	vsubps zmm3,zmm27,zmm3
  a69a6f:	62 61 3c 48 5c da    	vsubps zmm27,zmm8,zmm2
  a69a75:	62 f1 3c 48 58 e2    	vaddps zmm4,zmm8,zmm2
  a69a7b:	62 b1 2c 48 58 c2    	vaddps zmm0,zmm10,zmm18
  a69a81:	62 b1 74 48 58 cc    	vaddps zmm1,zmm1,zmm20
  a69a87:	62 f3 7d 48 19 c2 02 	vextractf32x4 xmm2,zmm0,0x2
  a69a8e:	62 71 7c 48 28 05 68 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff62a968]        # 94400 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x218b0>
  a69a95:	a9 62 ff 
  a69a98:	62 f2 3d 48 7f c1    	vpermt2ps zmm0,zmm8,zmm1
  a69a9e:	62 f1 7c 48 11 04 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm0
  a69aa5:	62 f3 7d 48 19 c8 02 	vextractf32x4 xmm0,zmm1,0x2
  a69aac:	c5 e8 14 c0          	vunpcklps xmm0,xmm2,xmm0
  a69ab0:	c5 f8 13 44 16 40    	vmovlps QWORD PTR [rsi+rdx*1+0x40],xmm0
  a69ab6:	62 e3 7d 48 19 d8 02 	vextractf32x4 xmm0,zmm19,0x2
  a69abd:	62 a2 3d 48 7f dd    	vpermt2ps zmm19,zmm8,zmm21
  a69ac3:	62 e1 7c 48 11 9c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x48],zmm19
  a69aca:	48 00 00 00 
  a69ace:	62 e3 7d 48 19 e9 02 	vextractf32x4 xmm1,zmm21,0x2
  a69ad5:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a69ad9:	c5 f8 13 84 16 88 00 	vmovlps QWORD PTR [rsi+rdx*1+0x88],xmm0
  a69ae0:	00 00 
  a69ae2:	62 e3 7d 48 19 c0 02 	vextractf32x4 xmm0,zmm16,0x2
  a69ae9:	62 82 3d 48 7f c2    	vpermt2ps zmm16,zmm8,zmm26
  a69aef:	62 e1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x90],zmm16
  a69af6:	90 00 00 00 
  a69afa:	62 63 7d 48 19 d1 02 	vextractf32x4 xmm1,zmm26,0x2
  a69b01:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a69b05:	c5 f8 13 84 16 d0 00 	vmovlps QWORD PTR [rsi+rdx*1+0xd0],xmm0
  a69b0c:	00 00 
  a69b0e:	62 73 7d 48 19 c8 02 	vextractf32x4 xmm0,zmm9,0x2
  a69b15:	62 32 3d 48 7f ce    	vpermt2ps zmm9,zmm8,zmm22
  a69b1b:	62 71 7c 48 11 8c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xd8],zmm9
  a69b22:	d8 00 00 00 
  a69b26:	62 e3 7d 48 19 f1 02 	vextractf32x4 xmm1,zmm22,0x2
  a69b2d:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a69b31:	c5 f8 13 84 16 18 01 	vmovlps QWORD PTR [rsi+rdx*1+0x118],xmm0
  a69b38:	00 00 
  a69b3a:	62 63 7d 48 19 c0 02 	vextractf32x4 xmm0,zmm24,0x2
  a69b41:	62 02 3d 48 7f c1    	vpermt2ps zmm24,zmm8,zmm25
  a69b47:	62 61 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x120],zmm24
  a69b4e:	20 01 00 00 
  a69b52:	62 63 7d 48 19 c9 02 	vextractf32x4 xmm1,zmm25,0x2
  a69b59:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a69b5d:	c5 f8 13 84 16 60 01 	vmovlps QWORD PTR [rsi+rdx*1+0x160],xmm0
  a69b64:	00 00 
  a69b66:	62 f3 7d 48 19 f8 02 	vextractf32x4 xmm0,zmm7,0x2
  a69b6d:	62 d2 3d 48 7f fb    	vpermt2ps zmm7,zmm8,zmm11
  a69b73:	62 f1 7c 48 11 bc 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x168],zmm7
  a69b7a:	68 01 00 00 
  a69b7e:	62 73 7d 48 19 d9 02 	vextractf32x4 xmm1,zmm11,0x2
  a69b85:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a69b89:	c5 f8 13 84 16 a8 01 	vmovlps QWORD PTR [rsi+rdx*1+0x1a8],xmm0
  a69b90:	00 00 
  a69b92:	62 f3 7d 48 19 e8 02 	vextractf32x4 xmm0,zmm5,0x2
  a69b99:	62 f2 3d 48 7f ee    	vpermt2ps zmm5,zmm8,zmm6
  a69b9f:	62 f1 7c 48 11 ac 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1b0],zmm5
  a69ba6:	b0 01 00 00 
  a69baa:	62 f3 7d 48 19 f1 02 	vextractf32x4 xmm1,zmm6,0x2
  a69bb1:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a69bb5:	c5 f8 13 84 16 f0 01 	vmovlps QWORD PTR [rsi+rdx*1+0x1f0],xmm0
  a69bbc:	00 00 
  a69bbe:	62 e3 7d 48 19 f8 02 	vextractf32x4 xmm0,zmm23,0x2
  a69bc5:	62 82 3d 48 7f fb    	vpermt2ps zmm23,zmm8,zmm27
  a69bcb:	62 e1 7c 48 11 bc 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1f8],zmm23
  a69bd2:	f8 01 00 00 
  a69bd6:	62 63 7d 48 19 d9 02 	vextractf32x4 xmm1,zmm27,0x2
  a69bdd:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a69be1:	c5 f8 13 84 16 38 02 	vmovlps QWORD PTR [rsi+rdx*1+0x238],xmm0
  a69be8:	00 00 
  a69bea:	62 73 7d 48 19 f8 02 	vextractf32x4 xmm0,zmm15,0x2
  a69bf1:	62 32 3d 48 7f f9    	vpermt2ps zmm15,zmm8,zmm17
  a69bf7:	62 71 7c 48 11 7c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x240],zmm15
  a69bfe:	09 
  a69bff:	62 e3 7d 48 19 c9 02 	vextractf32x4 xmm1,zmm17,0x2
  a69c06:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a69c0a:	c5 f8 13 84 16 80 02 	vmovlps QWORD PTR [rsi+rdx*1+0x280],xmm0
  a69c11:	00 00 
  a69c13:	62 73 7d 48 19 e8 02 	vextractf32x4 xmm0,zmm13,0x2
  a69c1a:	62 52 3d 48 7f ee    	vpermt2ps zmm13,zmm8,zmm14
  a69c20:	62 71 7c 48 11 ac 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x288],zmm13
  a69c27:	88 02 00 00 
  a69c2b:	62 73 7d 48 19 f1 02 	vextractf32x4 xmm1,zmm14,0x2
  a69c32:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a69c36:	c5 f8 13 84 16 c8 02 	vmovlps QWORD PTR [rsi+rdx*1+0x2c8],xmm0
  a69c3d:	00 00 
  a69c3f:	62 63 7d 48 19 e0 02 	vextractf32x4 xmm0,zmm28,0x2
  a69c46:	62 42 3d 48 7f e4    	vpermt2ps zmm28,zmm8,zmm12
  a69c4c:	62 61 7c 48 11 a4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x2d0],zmm28
  a69c53:	d0 02 00 00 
  a69c57:	62 73 7d 48 19 e1 02 	vextractf32x4 xmm1,zmm12,0x2
  a69c5e:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a69c62:	c5 f8 13 84 16 10 03 	vmovlps QWORD PTR [rsi+rdx*1+0x310],xmm0
  a69c69:	00 00 
  a69c6b:	62 f3 7d 48 19 d8 02 	vextractf32x4 xmm0,zmm3,0x2
  a69c72:	62 f2 3d 48 7f dc    	vpermt2ps zmm3,zmm8,zmm4
  a69c78:	62 f1 7c 48 11 9c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x318],zmm3
  a69c7f:	18 03 00 00 
  a69c83:	62 f3 7d 48 19 e1 02 	vextractf32x4 xmm1,zmm4,0x2
  a69c8a:	c5 f8 14 c1          	vunpcklps xmm0,xmm0,xmm1
  a69c8e:	c5 f8 13 84 16 58 03 	vmovlps QWORD PTR [rsi+rdx*1+0x358],xmm0
  a69c95:	00 00 
  a69c97:	48 81 c2 60 03 00 00 	add    rdx,0x360
  a69c9e:	48 39 d0             	cmp    rax,rdx
  a69ca1:	0f 85 69 f1 ff ff    	jne    a68e10 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x10>
  a69ca7:	48 81 c4 c8 00 00 00 	add    rsp,0xc8
  a69cae:	c5 f8 77             	vzeroupper
  a69cb1:	c3                   	ret
