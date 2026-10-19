
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a71b40 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a71b40:	62 f1 7c 48 28 05 36 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff655436]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a71b47:	54 65 ff 
  a71b4a:	48 c1 e2 05          	shl    rdx,0x5
  a71b4e:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  a71b52:	31 d2                	xor    edx,edx
  a71b54:	62 f1 7c 48 28 25 e2 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff622fe2]        # 94b40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x21ff0>
  a71b5b:	2f 62 ff 
  a71b5e:	c5 d0 57 ed          	vxorps xmm5,xmm5,xmm5
  a71b62:	62 f2 7d 48 18 35 f4 	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff6038f4]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a71b69:	38 60 ff 
  a71b6c:	62 f2 7d 48 18 3d 5e 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff60375e]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a71b73:	37 60 ff 
  a71b76:	62 71 7c 48 28 2d 00 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff623000]        # 94b80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x22030>
  a71b7d:	30 62 ff 
  a71b80:	62 e1 7c 28 10 04 17 	vmovups ymm16,YMMWORD PTR [rdi+rdx*1]
  a71b87:	62 e1 7c 28 10 54 17 	vmovups ymm18,YMMWORD PTR [rdi+rdx*1+0x20]
  a71b8e:	01 
  a71b8f:	62 e1 7c 28 10 4c 17 	vmovups ymm17,YMMWORD PTR [rdi+rdx*1+0x40]
  a71b96:	02 
  a71b97:	62 61 7c 28 10 44 17 	vmovups ymm24,YMMWORD PTR [rdi+rdx*1+0x60]
  a71b9e:	03 
  a71b9f:	62 a1 7c 48 28 d8    	vmovaps zmm19,zmm16
  a71ba5:	62 e2 5d 48 7f dd    	vpermt2ps zmm19,zmm4,zmm5
  a71bab:	62 e2 15 48 7f c5    	vpermt2ps zmm16,zmm13,zmm5
  a71bb1:	62 a1 7c 48 28 e2    	vmovaps zmm20,zmm18
  a71bb7:	62 e2 5d 48 7f e5    	vpermt2ps zmm20,zmm4,zmm5
  a71bbd:	62 e2 15 48 7f d5    	vpermt2ps zmm18,zmm13,zmm5
  a71bc3:	62 a1 7c 48 28 e9    	vmovaps zmm21,zmm17
  a71bc9:	62 e2 5d 48 7f ed    	vpermt2ps zmm21,zmm4,zmm5
  a71bcf:	62 e2 15 48 7f cd    	vpermt2ps zmm17,zmm13,zmm5
  a71bd5:	62 01 7c 48 28 c8    	vmovaps zmm25,zmm24
  a71bdb:	62 62 5d 48 7f cd    	vpermt2ps zmm25,zmm4,zmm5
  a71be1:	62 62 15 48 7f c5    	vpermt2ps zmm24,zmm13,zmm5
  a71be7:	62 61 7c 28 10 54 17 	vmovups ymm26,YMMWORD PTR [rdi+rdx*1+0x80]
  a71bee:	04 
  a71bef:	62 01 7c 48 28 f2    	vmovaps zmm30,zmm26
  a71bf5:	62 62 5d 48 7f f5    	vpermt2ps zmm30,zmm4,zmm5
  a71bfb:	62 62 15 48 7f d5    	vpermt2ps zmm26,zmm13,zmm5
  a71c01:	62 61 7c 28 10 7c 17 	vmovups ymm31,YMMWORD PTR [rdi+rdx*1+0xa0]
  a71c08:	05 
  a71c09:	62 01 7c 48 28 ef    	vmovaps zmm29,zmm31
  a71c0f:	62 62 5d 48 7f ed    	vpermt2ps zmm29,zmm4,zmm5
  a71c15:	62 62 15 48 7f fd    	vpermt2ps zmm31,zmm13,zmm5
  a71c1b:	62 61 7c 28 10 5c 17 	vmovups ymm27,YMMWORD PTR [rdi+rdx*1+0xc0]
  a71c22:	06 
  a71c23:	62 01 7c 48 28 e3    	vmovaps zmm28,zmm27
  a71c29:	62 62 5d 48 7f e5    	vpermt2ps zmm28,zmm4,zmm5
  a71c2f:	62 62 15 48 7f dd    	vpermt2ps zmm27,zmm13,zmm5
  a71c35:	c5 7c 10 84 17 e0 00 	vmovups ymm8,YMMWORD PTR [rdi+rdx*1+0xe0]
  a71c3c:	00 00 
  a71c3e:	62 51 7c 48 28 c8    	vmovaps zmm9,zmm8
  a71c44:	62 72 5d 48 7f cd    	vpermt2ps zmm9,zmm4,zmm5
  a71c4a:	62 72 15 48 7f c5    	vpermt2ps zmm8,zmm13,zmm5
  a71c50:	c5 7c 10 a4 17 00 01 	vmovups ymm12,YMMWORD PTR [rdi+rdx*1+0x100]
  a71c57:	00 00 
  a71c59:	62 51 7c 48 28 f4    	vmovaps zmm14,zmm12
  a71c5f:	62 72 5d 48 7f f5    	vpermt2ps zmm14,zmm4,zmm5
  a71c65:	62 72 15 48 7f e5    	vpermt2ps zmm12,zmm13,zmm5
  a71c6b:	62 91 34 40 58 d4    	vaddps zmm2,zmm25,zmm28
  a71c71:	62 e1 64 40 58 fa    	vaddps zmm23,zmm19,zmm2
  a71c77:	62 d1 0c 40 58 d9    	vaddps zmm3,zmm30,zmm9
  a71c7d:	62 e1 5c 40 58 f3    	vaddps zmm22,zmm20,zmm3
  a71c83:	62 51 14 40 58 d6    	vaddps zmm10,zmm29,zmm14
  a71c89:	62 e2 4d 48 bc da    	vfnmadd231ps zmm19,zmm6,zmm2
  a71c8f:	62 91 3c 40 58 d3    	vaddps zmm2,zmm24,zmm27
  a71c95:	62 11 3c 40 5c db    	vsubps zmm11,zmm24,zmm27
  a71c9b:	62 41 54 40 58 c2    	vaddps zmm24,zmm21,zmm10
  a71ca1:	62 e2 4d 48 bc e3    	vfnmadd231ps zmm20,zmm6,zmm3
  a71ca7:	62 d1 2c 40 58 d8    	vaddps zmm3,zmm26,zmm8
  a71cad:	62 51 2c 40 5c c0    	vsubps zmm8,zmm26,zmm8
  a71cb3:	62 61 6c 40 58 db    	vaddps zmm27,zmm18,zmm3
  a71cb9:	62 e2 4d 48 bc d3    	vfnmadd231ps zmm18,zmm6,zmm3
  a71cbf:	62 61 7c 40 58 d2    	vaddps zmm26,zmm16,zmm2
  a71cc5:	62 d1 0c 40 5c d9    	vsubps zmm3,zmm30,zmm9
  a71ccb:	62 51 04 40 58 cc    	vaddps zmm9,zmm31,zmm12
  a71cd1:	62 c2 4d 48 bc ea    	vfnmadd231ps zmm21,zmm6,zmm10
  a71cd7:	62 41 74 40 58 f1    	vaddps zmm30,zmm17,zmm9
  a71cdd:	62 71 24 48 59 d7    	vmulps zmm10,zmm11,zmm7
  a71ce3:	62 71 3c 48 59 c7    	vmulps zmm8,zmm8,zmm7
  a71ce9:	62 51 04 40 5c dc    	vsubps zmm11,zmm31,zmm12
  a71cef:	62 51 5c 40 58 e0    	vaddps zmm12,zmm20,zmm8
  a71cf5:	62 f1 64 48 59 df    	vmulps zmm3,zmm3,zmm7
  a71cfb:	62 c2 4d 48 bc c9    	vfnmadd231ps zmm17,zmm6,zmm9
  a71d01:	62 71 6c 40 5c cb    	vsubps zmm9,zmm18,zmm3
  a71d07:	62 51 14 40 5c f6    	vsubps zmm14,zmm29,zmm14
  a71d0d:	62 62 7d 48 18 3d 51 	vbroadcastss zmm31,DWORD PTR [rip+0xffffffffff603951]        # 75668 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b18>
  a71d14:	39 60 ff 
  a71d17:	62 01 34 48 59 ef    	vmulps zmm29,zmm9,zmm31
  a71d1d:	62 72 7d 48 18 3d b1 	vbroadcastss zmm15,DWORD PTR [rip+0xffffffffff6037b1]        # 754d8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2988>
  a71d24:	37 60 ff 
  a71d27:	62 42 1d 48 b8 ef    	vfmadd231ps zmm29,zmm12,zmm15
  a71d2d:	62 71 24 48 59 df    	vmulps zmm11,zmm11,zmm7
  a71d33:	62 e2 4d 48 bc c2    	vfnmadd231ps zmm16,zmm6,zmm2
  a71d39:	62 d1 54 40 58 d3    	vaddps zmm2,zmm21,zmm11
  a71d3f:	62 71 0c 48 59 f7    	vmulps zmm14,zmm14,zmm7
  a71d45:	62 01 34 40 5c cc    	vsubps zmm25,zmm25,zmm28
  a71d4b:	62 41 74 40 5c e6    	vsubps zmm28,zmm17,zmm14
  a71d51:	62 51 34 48 59 cf    	vmulps zmm9,zmm9,zmm15
  a71d57:	62 52 05 40 bc cc    	vfnmadd231ps zmm9,zmm31,zmm12
  a71d5d:	62 72 7d 48 18 3d b1 	vbroadcastss zmm15,DWORD PTR [rip+0xffffffffff6035b1]        # 75318 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x27c8>
  a71d64:	35 60 ff 
  a71d67:	62 51 1c 40 59 e7    	vmulps zmm12,zmm28,zmm15
  a71d6d:	62 f2 7d 48 18 0d 65 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff603765]        # 754dc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x298c>
  a71d74:	37 60 ff 
  a71d77:	62 72 6d 48 b8 e1    	vfmadd231ps zmm12,zmm2,zmm1
  a71d7d:	62 61 1c 40 59 e1    	vmulps zmm28,zmm28,zmm1
  a71d83:	62 62 05 48 bc e2    	vfnmadd231ps zmm28,zmm15,zmm2
  a71d89:	62 d1 64 40 58 d2    	vaddps zmm2,zmm19,zmm10
  a71d8f:	62 51 64 40 5c d2    	vsubps zmm10,zmm19,zmm10
  a71d95:	62 51 5c 40 5c c0    	vsubps zmm8,zmm20,zmm8
  a71d9b:	62 b1 64 48 58 da    	vaddps zmm3,zmm3,zmm18
  a71da1:	62 51 54 40 5c db    	vsubps zmm11,zmm21,zmm11
  a71da7:	62 81 4c 40 58 e0    	vaddps zmm20,zmm22,zmm24
  a71dad:	62 e1 34 40 59 d7    	vmulps zmm18,zmm25,zmm7
  a71db3:	62 31 0c 48 58 f1    	vaddps zmm14,zmm14,zmm17
  a71db9:	62 a1 7c 40 5c ea    	vsubps zmm21,zmm16,zmm18
  a71dbf:	62 21 6c 40 58 c8    	vaddps zmm25,zmm18,zmm16
  a71dc5:	62 41 64 48 59 ff    	vmulps zmm31,zmm3,zmm15
  a71dcb:	62 62 3d 48 b8 f9    	vfmadd231ps zmm31,zmm8,zmm1
  a71dd1:	62 f1 64 48 59 d9    	vmulps zmm3,zmm3,zmm1
  a71dd7:	62 d2 05 48 bc d8    	vfnmadd231ps zmm3,zmm15,zmm8
  a71ddd:	62 f2 7d 48 18 0d 09 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff603709]        # 754f0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x29a0>
  a71de4:	37 60 ff 
  a71de7:	62 71 0c 48 59 c1    	vmulps zmm8,zmm14,zmm1
  a71ded:	62 72 7d 48 18 3d 01 	vbroadcastss zmm15,DWORD PTR [rip+0xffffffffff603801]        # 755f8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2aa8>
  a71df4:	38 60 ff 
  a71df7:	62 52 25 48 bc c7    	vfnmadd231ps zmm8,zmm11,zmm15
  a71dfd:	62 51 0c 48 59 f7    	vmulps zmm14,zmm14,zmm15
  a71e03:	62 52 75 48 b8 f3    	vfmadd231ps zmm14,zmm1,zmm11
  a71e09:	62 a1 44 40 58 dc    	vaddps zmm19,zmm23,zmm20
  a71e0f:	62 a2 4d 48 ac e7    	vfnmadd213ps zmm20,zmm6,zmm23
  a71e15:	62 11 24 40 58 de    	vaddps zmm11,zmm27,zmm30
  a71e1b:	62 81 24 40 5c fe    	vsubps zmm23,zmm27,zmm30
  a71e21:	62 c1 2c 40 58 c3    	vaddps zmm16,zmm26,zmm11
  a71e27:	62 12 4d 48 ac da    	vfnmadd213ps zmm11,zmm6,zmm26
  a71e2d:	62 41 14 40 58 d4    	vaddps zmm26,zmm29,zmm12
  a71e33:	62 01 4c 40 5c c0    	vsubps zmm24,zmm22,zmm24
  a71e39:	62 81 6c 48 58 f2    	vaddps zmm22,zmm2,zmm26
  a71e3f:	62 62 4d 48 ac d2    	vfnmadd213ps zmm26,zmm6,zmm2
  a71e45:	62 91 34 48 58 d4    	vaddps zmm2,zmm9,zmm28
  a71e4b:	62 11 34 48 5c cc    	vsubps zmm9,zmm9,zmm28
  a71e51:	62 e1 54 40 58 ca    	vaddps zmm17,zmm21,zmm2
  a71e57:	62 b2 4d 48 ac d5    	vfnmadd213ps zmm2,zmm6,zmm21
  a71e5d:	62 c1 04 40 58 e8    	vaddps zmm21,zmm31,zmm8
  a71e63:	62 51 14 40 5c e4    	vsubps zmm12,zmm29,zmm12
  a71e69:	62 21 2c 48 58 e5    	vaddps zmm28,zmm10,zmm21
  a71e6f:	62 c2 4d 48 ac ea    	vfnmadd213ps zmm21,zmm6,zmm10
  a71e75:	62 51 64 48 5c d6    	vsubps zmm10,zmm3,zmm14
  a71e7b:	62 d1 64 48 58 de    	vaddps zmm3,zmm3,zmm14
  a71e81:	62 c1 34 40 58 d2    	vaddps zmm18,zmm25,zmm10
  a71e87:	62 12 4d 48 ac d1    	vfnmadd213ps zmm10,zmm6,zmm25
  a71e8d:	62 71 44 40 59 f7    	vmulps zmm14,zmm23,zmm7
  a71e93:	62 51 04 40 5c c0    	vsubps zmm8,zmm31,zmm8
  a71e99:	62 41 5c 40 58 ee    	vaddps zmm29,zmm20,zmm14
  a71e9f:	62 e1 3c 40 59 ff    	vmulps zmm23,zmm24,zmm7
  a71ea5:	62 51 5c 40 5c f6    	vsubps zmm14,zmm20,zmm14
  a71eab:	62 a1 24 48 5c e7    	vsubps zmm20,zmm11,zmm23
  a71eb1:	62 71 34 48 59 cf    	vmulps zmm9,zmm9,zmm7
  a71eb7:	62 41 44 40 58 c3    	vaddps zmm24,zmm23,zmm11
  a71ebd:	62 51 2c 40 58 d9    	vaddps zmm11,zmm26,zmm9
  a71ec3:	62 71 1c 48 59 e7    	vmulps zmm12,zmm12,zmm7
  a71ec9:	62 51 2c 40 5c c9    	vsubps zmm9,zmm26,zmm9
  a71ecf:	62 41 6c 48 5c d4    	vsubps zmm26,zmm2,zmm12
  a71ed5:	62 f1 64 48 59 df    	vmulps zmm3,zmm3,zmm7
  a71edb:	62 41 6c 48 58 cc    	vaddps zmm25,zmm2,zmm12
  a71ee1:	62 f1 54 40 58 d3    	vaddps zmm2,zmm21,zmm3
  a71ee7:	62 71 3c 48 59 c7    	vmulps zmm8,zmm8,zmm7
  a71eed:	62 f1 54 40 5c db    	vsubps zmm3,zmm21,zmm3
  a71ef3:	62 41 2c 48 5c d8    	vsubps zmm27,zmm10,zmm8
  a71ef9:	62 51 2c 48 58 c0    	vaddps zmm8,zmm10,zmm8
  a71eff:	62 e2 7d 48 7f db    	vpermt2ps zmm19,zmm0,zmm3
  a71f05:	62 72 7d 48 7f dd    	vpermt2ps zmm11,zmm0,zmm5
  a71f0b:	62 f1 7c 48 28 0d eb 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff654feb]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a71f12:	4f 65 ff 
  a71f15:	62 c2 75 48 7f db    	vpermt2ps zmm19,zmm1,zmm11
  a71f1b:	62 e2 7d 48 7f f5    	vpermt2ps zmm22,zmm0,zmm5
  a71f21:	62 f2 7d 48 7f d5    	vpermt2ps zmm2,zmm0,zmm5
  a71f27:	62 e2 75 48 7f f2    	vpermt2ps zmm22,zmm1,zmm2
  a71f2d:	62 62 7d 48 7f e5    	vpermt2ps zmm28,zmm0,zmm5
  a71f33:	62 72 7d 48 7f f5    	vpermt2ps zmm14,zmm0,zmm5
  a71f39:	62 42 75 48 7f e6    	vpermt2ps zmm28,zmm1,zmm14
  a71f3f:	62 62 7d 48 7f ed    	vpermt2ps zmm29,zmm0,zmm5
  a71f45:	62 72 7d 48 7f cd    	vpermt2ps zmm9,zmm0,zmm5
  a71f4b:	62 42 75 48 7f e9    	vpermt2ps zmm29,zmm1,zmm9
  a71f51:	62 81 e5 40 14 fc    	vunpcklpd zmm23,zmm19,zmm28
  a71f57:	62 81 e5 40 15 ec    	vunpckhpd zmm21,zmm19,zmm28
  a71f5d:	62 81 cd 40 14 dd    	vunpcklpd zmm19,zmm22,zmm29
  a71f63:	62 91 cd 40 15 d5    	vunpckhpd zmm2,zmm22,zmm29
  a71f69:	62 b1 7c 48 28 dd    	vmovaps zmm3,zmm21
  a71f6f:	62 61 7c 48 28 25 87 	vmovaps zmm28,ZMMWORD PTR [rip+0xffffffffff654e87]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a71f76:	4e 65 ff 
  a71f79:	62 f2 1d 40 7f da    	vpermt2ps zmm3,zmm28,zmm2
  a71f7f:	62 71 7c 48 28 35 b7 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff654eb7]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a71f86:	4e 65 ff 
  a71f89:	62 e2 0d 48 7f ea    	vpermt2ps zmm21,zmm14,zmm2
  a71f8f:	62 c2 7d 48 7f c0    	vpermt2ps zmm16,zmm0,zmm8
  a71f95:	62 a1 7c 48 28 f7    	vmovaps zmm22,zmm23
  a71f9b:	62 a2 0d 48 7f fb    	vpermt2ps zmm23,zmm14,zmm19
  a71fa1:	62 e2 7d 48 7f cd    	vpermt2ps zmm17,zmm0,zmm5
  a71fa7:	62 e2 7d 48 7f d5    	vpermt2ps zmm18,zmm0,zmm5
  a71fad:	62 e2 7d 48 7f e5    	vpermt2ps zmm20,zmm0,zmm5
  a71fb3:	62 62 7d 48 7f d5    	vpermt2ps zmm26,zmm0,zmm5
  a71fb9:	62 62 7d 48 7f dd    	vpermt2ps zmm27,zmm0,zmm5
  a71fbf:	62 62 7d 48 7f c5    	vpermt2ps zmm24,zmm0,zmm5
  a71fc5:	62 62 7d 48 7f cd    	vpermt2ps zmm25,zmm0,zmm5
  a71fcb:	62 82 75 48 7f c2    	vpermt2ps zmm16,zmm1,zmm26
  a71fd1:	62 82 75 48 7f cb    	vpermt2ps zmm17,zmm1,zmm27
  a71fd7:	62 82 75 48 7f d0    	vpermt2ps zmm18,zmm1,zmm24
  a71fdd:	62 82 75 48 7f e1    	vpermt2ps zmm20,zmm1,zmm25
  a71fe3:	62 b1 fd 40 14 d2    	vunpcklpd zmm2,zmm16,zmm18
  a71fe9:	62 31 fd 40 15 c2    	vunpckhpd zmm8,zmm16,zmm18
  a71fef:	62 31 f5 40 14 cc    	vunpcklpd zmm9,zmm17,zmm20
  a71ff5:	62 31 f5 40 15 d4    	vunpckhpd zmm10,zmm17,zmm20
  a71ffb:	62 71 7c 48 28 da    	vmovaps zmm11,zmm2
  a72001:	62 d2 0d 48 7f d1    	vpermt2ps zmm2,zmm14,zmm9
  a72007:	62 51 7c 48 28 e0    	vmovaps zmm12,zmm8
  a7200d:	62 52 1d 40 7f e2    	vpermt2ps zmm12,zmm28,zmm10
  a72013:	62 52 0d 48 7f c2    	vpermt2ps zmm8,zmm14,zmm10
  a72019:	62 71 7c 48 10 51 04 	vmovups zmm10,ZMMWORD PTR [rcx+0x100]
  a72020:	62 71 7c 48 10 71 05 	vmovups zmm14,ZMMWORD PTR [rcx+0x140]
  a72027:	62 c1 64 48 59 c2    	vmulps zmm16,zmm3,zmm10
  a7202d:	62 c2 1d 48 bc c6    	vfnmadd231ps zmm16,zmm12,zmm14
  a72033:	62 51 1c 48 59 d2    	vmulps zmm10,zmm12,zmm10
  a72039:	62 71 7c 48 10 61 02 	vmovups zmm12,ZMMWORD PTR [rcx+0x80]
  a72040:	62 72 0d 48 b8 d3    	vfmadd231ps zmm10,zmm14,zmm3
  a72046:	62 f1 7c 48 10 59 03 	vmovups zmm3,ZMMWORD PTR [rcx+0xc0]
  a7204d:	62 51 44 40 59 f4    	vmulps zmm14,zmm23,zmm12
  a72053:	62 72 6d 48 bc f3    	vfnmadd231ps zmm14,zmm2,zmm3
  a72059:	62 d1 6c 48 59 d4    	vmulps zmm2,zmm2,zmm12
  a7205f:	62 71 7c 48 10 61 06 	vmovups zmm12,ZMMWORD PTR [rcx+0x180]
  a72066:	62 b2 65 48 b8 d7    	vfmadd231ps zmm2,zmm3,zmm23
  a7206c:	62 f1 7c 48 10 59 07 	vmovups zmm3,ZMMWORD PTR [rcx+0x1c0]
  a72073:	62 c1 54 40 59 cc    	vmulps zmm17,zmm21,zmm12
  a72079:	62 e2 3d 48 bc cb    	vfnmadd231ps zmm17,zmm8,zmm3
  a7207f:	62 51 3c 48 59 c4    	vmulps zmm8,zmm8,zmm12
  a72085:	62 32 65 48 b8 c5    	vfmadd231ps zmm8,zmm3,zmm21
  a7208b:	62 a2 1d 40 7f f3    	vpermt2ps zmm22,zmm28,zmm19
  a72091:	62 52 1d 40 7f d9    	vpermt2ps zmm11,zmm28,zmm9
  a72097:	62 b1 4c 40 58 d8    	vaddps zmm3,zmm22,zmm16
  a7209d:	62 31 4c 40 5c c8    	vsubps zmm9,zmm22,zmm16
  a720a3:	62 51 6c 48 58 e0    	vaddps zmm12,zmm2,zmm8
  a720a9:	62 d1 6c 48 5c d0    	vsubps zmm2,zmm2,zmm8
  a720af:	62 51 2c 48 58 c3    	vaddps zmm8,zmm10,zmm11
  a720b5:	62 51 24 48 5c d2    	vsubps zmm10,zmm11,zmm10
  a720bb:	62 31 0c 48 58 d9    	vaddps zmm11,zmm14,zmm17
  a720c1:	62 51 74 40 5c f6    	vsubps zmm14,zmm17,zmm14
  a720c7:	62 e1 34 48 58 c2    	vaddps zmm16,zmm9,zmm2
  a720cd:	62 f1 34 48 5c d2    	vsubps zmm2,zmm9,zmm2
  a720d3:	62 51 2c 48 58 ce    	vaddps zmm9,zmm10,zmm14
  a720d9:	62 51 2c 48 5c d6    	vsubps zmm10,zmm10,zmm14
  a720df:	62 51 64 48 5c f3    	vsubps zmm14,zmm3,zmm11
  a720e5:	62 d1 64 48 58 db    	vaddps zmm3,zmm3,zmm11
  a720eb:	62 51 3c 48 5c dc    	vsubps zmm11,zmm8,zmm12
  a720f1:	62 51 3c 48 58 c4    	vaddps zmm8,zmm8,zmm12
  a720f7:	62 d3 7d 48 19 dc 02 	vextractf32x4 xmm12,zmm3,0x2
  a720fe:	62 f1 7c 48 28 0d b8 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff622ab8]        # 94bc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x22070>
  a72105:	2a 62 ff 
  a72108:	62 d2 75 48 7f d8    	vpermt2ps zmm3,zmm1,zmm8
  a7210e:	62 f1 7c 48 11 1c 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm3
  a72115:	62 73 7d 48 19 c3 02 	vextractf32x4 xmm3,zmm8,0x2
  a7211c:	c5 98 14 db          	vunpcklps xmm3,xmm12,xmm3
  a72120:	c5 f8 13 5c 16 40    	vmovlps QWORD PTR [rsi+rdx*1+0x40],xmm3
  a72126:	62 e3 7d 48 19 c3 02 	vextractf32x4 xmm3,zmm16,0x2
  a7212d:	62 c2 75 48 7f c1    	vpermt2ps zmm16,zmm1,zmm9
  a72133:	62 e1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x48],zmm16
  a7213a:	48 00 00 00 
  a7213e:	62 53 7d 48 19 c8 02 	vextractf32x4 xmm8,zmm9,0x2
  a72145:	c4 c1 60 14 d8       	vunpcklps xmm3,xmm3,xmm8
  a7214a:	c5 f8 13 9c 16 88 00 	vmovlps QWORD PTR [rsi+rdx*1+0x88],xmm3
  a72151:	00 00 
  a72153:	62 73 7d 48 19 f3 02 	vextractf32x4 xmm3,zmm14,0x2
  a7215a:	62 52 75 48 7f f3    	vpermt2ps zmm14,zmm1,zmm11
  a72160:	62 71 7c 48 11 b4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x90],zmm14
  a72167:	90 00 00 00 
  a7216b:	62 53 7d 48 19 d8 02 	vextractf32x4 xmm8,zmm11,0x2
  a72172:	c4 c1 60 14 d8       	vunpcklps xmm3,xmm3,xmm8
  a72177:	c5 f8 13 9c 16 d0 00 	vmovlps QWORD PTR [rsi+rdx*1+0xd0],xmm3
  a7217e:	00 00 
  a72180:	62 f3 7d 48 19 d3 02 	vextractf32x4 xmm3,zmm2,0x2
  a72187:	62 d2 75 48 7f d2    	vpermt2ps zmm2,zmm1,zmm10
  a7218d:	62 f1 7c 48 11 94 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xd8],zmm2
  a72194:	d8 00 00 00 
  a72198:	62 73 7d 48 19 d2 02 	vextractf32x4 xmm2,zmm10,0x2
  a7219f:	c5 e0 14 d2          	vunpcklps xmm2,xmm3,xmm2
  a721a3:	c5 f8 13 94 16 18 01 	vmovlps QWORD PTR [rsi+rdx*1+0x118],xmm2
  a721aa:	00 00 
  a721ac:	48 81 c2 20 01 00 00 	add    rdx,0x120
  a721b3:	48 39 d0             	cmp    rax,rdx
  a721b6:	0f 85 c4 f9 ff ff    	jne    a71b80 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x40>
  a721bc:	c5 f8 77             	vzeroupper
  a721bf:	c3                   	ret
