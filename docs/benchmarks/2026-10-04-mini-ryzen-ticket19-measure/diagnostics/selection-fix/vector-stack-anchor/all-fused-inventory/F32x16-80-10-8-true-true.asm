
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a2d880 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a2d880:	62 f1 7c 48 28 05 f6 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6996f6]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a2d887:	96 69 ff 
  a2d88a:	48 c1 e2 07          	shl    rdx,0x7
  a2d88e:	48 8d 04 92          	lea    rax,[rdx+rdx*4]
  a2d892:	31 d2                	xor    edx,edx
  a2d894:	62 f1 7c 48 28 2d 62 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff663162]        # 90a00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1deb0>
  a2d89b:	31 66 ff 
  a2d89e:	c5 c8 57 f6          	vxorps xmm6,xmm6,xmm6
  a2d8a2:	62 f2 7d 48 18 3d 3c 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff647e3c]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a2d8a9:	7e 64 ff 
  a2d8ac:	62 71 7c 48 28 1d 8a 	vmovaps zmm11,ZMMWORD PTR [rip+0xffffffffff66318a]        # 90a40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1def0>
  a2d8b3:	31 66 ff 
  a2d8b6:	62 71 7c 48 28 2d c0 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff6631c0]        # 90a80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1df30>
  a2d8bd:	31 66 ff 
  a2d8c0:	62 71 7c 48 10 3c 17 	vmovups zmm15,ZMMWORD PTR [rdi+rdx*1]
  a2d8c7:	62 e1 7c 48 10 54 17 	vmovups zmm18,ZMMWORD PTR [rdi+rdx*1+0x40]
  a2d8ce:	01 
  a2d8cf:	62 e1 7c 48 10 64 17 	vmovups zmm20,ZMMWORD PTR [rdi+rdx*1+0x80]
  a2d8d6:	02 
  a2d8d7:	62 e1 7c 48 10 5c 17 	vmovups zmm19,ZMMWORD PTR [rdi+rdx*1+0xc0]
  a2d8de:	03 
  a2d8df:	62 51 7c 48 28 f7    	vmovaps zmm14,zmm15
  a2d8e5:	62 72 55 48 7f f6    	vpermt2ps zmm14,zmm5,zmm6
  a2d8eb:	62 72 25 48 7f fe    	vpermt2ps zmm15,zmm11,zmm6
  a2d8f1:	62 21 7c 48 28 d2    	vmovaps zmm26,zmm18
  a2d8f7:	62 62 55 48 7f d6    	vpermt2ps zmm26,zmm5,zmm6
  a2d8fd:	62 e2 25 48 7f d6    	vpermt2ps zmm18,zmm11,zmm6
  a2d903:	62 a1 7c 48 28 f4    	vmovaps zmm22,zmm20
  a2d909:	62 e2 55 48 7f f6    	vpermt2ps zmm22,zmm5,zmm6
  a2d90f:	62 e2 25 48 7f e6    	vpermt2ps zmm20,zmm11,zmm6
  a2d915:	62 a1 7c 48 28 fb    	vmovaps zmm23,zmm19
  a2d91b:	62 e2 55 48 7f fe    	vpermt2ps zmm23,zmm5,zmm6
  a2d921:	62 e2 25 48 7f de    	vpermt2ps zmm19,zmm11,zmm6
  a2d927:	62 61 7c 48 10 4c 17 	vmovups zmm25,ZMMWORD PTR [rdi+rdx*1+0x100]
  a2d92e:	04 
  a2d92f:	62 01 7c 48 28 f9    	vmovaps zmm31,zmm25
  a2d935:	62 62 55 48 7f fe    	vpermt2ps zmm31,zmm5,zmm6
  a2d93b:	62 62 25 48 7f ce    	vpermt2ps zmm25,zmm11,zmm6
  a2d941:	62 e1 7c 48 10 4c 17 	vmovups zmm17,ZMMWORD PTR [rdi+rdx*1+0x140]
  a2d948:	05 
  a2d949:	62 a1 7c 48 28 c1    	vmovaps zmm16,zmm17
  a2d94f:	62 e2 55 48 7f c6    	vpermt2ps zmm16,zmm5,zmm6
  a2d955:	62 e2 25 48 7f ce    	vpermt2ps zmm17,zmm11,zmm6
  a2d95b:	62 71 7c 48 10 64 17 	vmovups zmm12,ZMMWORD PTR [rdi+rdx*1+0x180]
  a2d962:	06 
  a2d963:	62 41 7c 48 28 ec    	vmovaps zmm29,zmm12
  a2d969:	62 62 55 48 7f ee    	vpermt2ps zmm29,zmm5,zmm6
  a2d96f:	62 72 25 48 7f e6    	vpermt2ps zmm12,zmm11,zmm6
  a2d975:	62 f1 7c 48 10 4c 17 	vmovups zmm1,ZMMWORD PTR [rdi+rdx*1+0x1c0]
  a2d97c:	07 
  a2d97d:	62 61 7c 48 28 d9    	vmovaps zmm27,zmm1
  a2d983:	62 62 55 48 7f de    	vpermt2ps zmm27,zmm5,zmm6
  a2d989:	62 f2 25 48 7f ce    	vpermt2ps zmm1,zmm11,zmm6
  a2d98f:	62 f1 7c 48 10 54 17 	vmovups zmm2,ZMMWORD PTR [rdi+rdx*1+0x200]
  a2d996:	08 
  a2d997:	62 61 7c 48 28 c2    	vmovaps zmm24,zmm2
  a2d99d:	62 62 55 48 7f c6    	vpermt2ps zmm24,zmm5,zmm6
  a2d9a3:	62 f2 25 48 7f d6    	vpermt2ps zmm2,zmm11,zmm6
  a2d9a9:	62 f1 7c 48 10 5c 17 	vmovups zmm3,ZMMWORD PTR [rdi+rdx*1+0x240]
  a2d9b0:	09 
  a2d9b1:	62 61 7c 48 28 f3    	vmovaps zmm30,zmm3
  a2d9b7:	62 62 55 48 7f f6    	vpermt2ps zmm30,zmm5,zmm6
  a2d9bd:	62 f2 25 48 7f de    	vpermt2ps zmm3,zmm11,zmm6
  a2d9c3:	62 61 5c 40 58 e2    	vaddps zmm28,zmm20,zmm2
  a2d9c9:	62 81 4c 40 58 e8    	vaddps zmm21,zmm22,zmm24
  a2d9cf:	62 91 4c 40 5c e0    	vsubps zmm4,zmm22,zmm24
  a2d9d5:	62 01 04 40 58 c5    	vaddps zmm24,zmm31,zmm29
  a2d9db:	62 01 04 40 5c ed    	vsubps zmm29,zmm31,zmm29
  a2d9e1:	62 a1 24 40 58 f7    	vaddps zmm22,zmm27,zmm23
  a2d9e7:	62 21 24 40 5c df    	vsubps zmm27,zmm27,zmm23
  a2d9ed:	62 81 0c 40 58 fa    	vaddps zmm23,zmm30,zmm26
  a2d9f3:	62 01 0c 40 5c d2    	vsubps zmm26,zmm30,zmm26
  a2d9f9:	62 01 04 48 58 f4    	vaddps zmm30,zmm15,zmm28
  a2d9ff:	62 f1 5c 40 5c d2    	vsubps zmm2,zmm20,zmm2
  a2da05:	62 41 34 40 58 fc    	vaddps zmm31,zmm25,zmm12
  a2da0b:	62 81 0c 40 58 e7    	vaddps zmm20,zmm30,zmm31
  a2da11:	62 51 34 40 5c e4    	vsubps zmm12,zmm25,zmm12
  a2da17:	62 21 74 48 58 cb    	vaddps zmm25,zmm1,zmm19
  a2da1d:	62 b1 74 48 5c cb    	vsubps zmm1,zmm1,zmm19
  a2da23:	62 21 64 48 58 f2    	vaddps zmm30,zmm3,zmm18
  a2da29:	62 b1 64 48 5c da    	vsubps zmm3,zmm3,zmm18
  a2da2f:	62 e1 7c 48 28 df    	vmovaps zmm19,zmm7
  a2da35:	62 c2 1d 40 a8 df    	vfmadd213ps zmm19,zmm28,zmm15
  a2da3b:	62 72 7d 48 18 05 ff 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff647bff]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a2da42:	7b 64 ff 
  a2da45:	62 12 3d 48 bc fc    	vfnmadd231ps zmm15,zmm8,zmm28
  a2da4b:	62 81 74 40 58 d1    	vaddps zmm18,zmm17,zmm25
  a2da51:	62 81 6c 40 58 d6    	vaddps zmm18,zmm18,zmm30
  a2da57:	62 c2 05 40 bc d8    	vfnmadd231ps zmm19,zmm31,zmm8
  a2da5d:	62 12 45 48 b8 ff    	vfmadd231ps zmm15,zmm7,zmm31
  a2da63:	62 72 7d 48 18 0d eb 	vbroadcastss zmm9,DWORD PTR [rip+0xffffffffff647ceb]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a2da6a:	7c 64 ff 
  a2da6d:	62 41 14 40 59 e1    	vmulps zmm28,zmm29,zmm9
  a2da73:	62 72 7d 48 18 15 23 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff647923]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a2da7a:	79 64 ff 
  a2da7d:	62 42 5d 48 b8 e2    	vfmadd231ps zmm28,zmm4,zmm10
  a2da83:	62 d1 5c 48 59 e1    	vmulps zmm4,zmm4,zmm9
  a2da89:	62 92 2d 48 bc e5    	vfnmadd231ps zmm4,zmm10,zmm29
  a2da8f:	62 61 7c 48 28 ef    	vmovaps zmm29,zmm7
  a2da95:	62 22 35 40 a8 e9    	vfmadd213ps zmm29,zmm25,zmm17
  a2da9b:	62 82 3d 48 bc c9    	vfnmadd231ps zmm17,zmm8,zmm25
  a2daa1:	62 21 0c 48 58 cd    	vaddps zmm25,zmm14,zmm21
  a2daa7:	62 01 34 40 58 c8    	vaddps zmm25,zmm25,zmm24
  a2daad:	62 42 0d 40 bc e8    	vfnmadd231ps zmm29,zmm30,zmm8
  a2dab3:	62 82 45 48 b8 ce    	vfmadd231ps zmm17,zmm7,zmm30
  a2dab9:	62 41 2c 40 59 f1    	vmulps zmm30,zmm26,zmm9
  a2dabf:	62 42 25 40 b8 f2    	vfmadd231ps zmm30,zmm27,zmm10
  a2dac5:	62 41 24 40 59 d9    	vmulps zmm27,zmm27,zmm9
  a2dacb:	62 02 2d 48 bc da    	vfnmadd231ps zmm27,zmm10,zmm26
  a2dad1:	62 61 7c 48 28 d7    	vmovaps zmm26,zmm7
  a2dad7:	62 42 55 40 a8 d6    	vfmadd213ps zmm26,zmm21,zmm14
  a2dadd:	62 32 3d 48 bc f5    	vfnmadd231ps zmm14,zmm8,zmm21
  a2dae3:	62 a1 7c 40 58 ee    	vaddps zmm21,zmm16,zmm22
  a2dae9:	62 42 3d 40 bc d0    	vfnmadd231ps zmm26,zmm24,zmm8
  a2daef:	62 12 45 48 b8 f0    	vfmadd231ps zmm14,zmm7,zmm24
  a2daf5:	62 41 1c 48 59 c1    	vmulps zmm24,zmm12,zmm9
  a2dafb:	62 42 6d 48 b8 c2    	vfmadd231ps zmm24,zmm2,zmm10
  a2db01:	62 d1 6c 48 59 d1    	vmulps zmm2,zmm2,zmm9
  a2db07:	62 d2 2d 48 bc d4    	vfnmadd231ps zmm2,zmm10,zmm12
  a2db0d:	62 71 7c 48 28 e7    	vmovaps zmm12,zmm7
  a2db13:	62 32 4d 40 a8 e0    	vfmadd213ps zmm12,zmm22,zmm16
  a2db19:	62 a2 3d 48 bc c6    	vfnmadd231ps zmm16,zmm8,zmm22
  a2db1f:	62 a1 54 40 58 ef    	vaddps zmm21,zmm21,zmm23
  a2db25:	62 52 45 40 bc e0    	vfnmadd231ps zmm12,zmm23,zmm8
  a2db2b:	62 a2 45 48 b8 c7    	vfmadd231ps zmm16,zmm7,zmm23
  a2db31:	62 c1 64 48 59 f1    	vmulps zmm22,zmm3,zmm9
  a2db37:	62 c2 75 48 b8 f2    	vfmadd231ps zmm22,zmm1,zmm10
  a2db3d:	62 d1 74 48 59 c9    	vmulps zmm1,zmm1,zmm9
  a2db43:	62 f2 2d 48 bc cb    	vfnmadd231ps zmm1,zmm10,zmm3
  a2db49:	62 f1 04 48 58 dc    	vaddps zmm3,zmm15,zmm4
  a2db4f:	62 f1 04 48 5c e4    	vsubps zmm4,zmm15,zmm4
  a2db55:	62 11 74 40 58 fb    	vaddps zmm15,zmm17,zmm27
  a2db5b:	62 81 74 40 5c cb    	vsubps zmm17,zmm17,zmm27
  a2db61:	62 61 0c 48 5c fa    	vsubps zmm31,zmm14,zmm2
  a2db67:	62 d1 6c 48 58 d6    	vaddps zmm2,zmm2,zmm14
  a2db6d:	62 71 7c 40 5c f1    	vsubps zmm14,zmm16,zmm1
  a2db73:	62 b1 74 48 58 c8    	vaddps zmm1,zmm1,zmm16
  a2db79:	62 81 64 40 58 c4    	vaddps zmm16,zmm19,zmm28
  a2db7f:	62 81 64 40 5c dc    	vsubps zmm19,zmm19,zmm28
  a2db85:	62 01 14 40 58 de    	vaddps zmm27,zmm29,zmm30
  a2db8b:	62 01 14 40 5c f6    	vsubps zmm30,zmm29,zmm30
  a2db91:	62 01 2c 40 5c e0    	vsubps zmm28,zmm26,zmm24
  a2db97:	62 11 3c 40 58 c2    	vaddps zmm8,zmm24,zmm26
  a2db9d:	62 21 1c 48 5c d6    	vsubps zmm26,zmm12,zmm22
  a2dba3:	62 51 4c 40 58 e4    	vaddps zmm12,zmm22,zmm12
  a2dba9:	62 a1 5c 40 58 f2    	vaddps zmm22,zmm20,zmm18
  a2dbaf:	62 a1 5c 40 5c d2    	vsubps zmm18,zmm20,zmm18
  a2dbb5:	62 a1 34 40 58 e5    	vaddps zmm20,zmm25,zmm21
  a2dbbb:	62 a1 34 40 5c fd    	vsubps zmm23,zmm25,zmm21
  a2dbc1:	62 81 7c 40 5c eb    	vsubps zmm21,zmm16,zmm27
  a2dbc7:	62 81 7c 40 58 c3    	vaddps zmm16,zmm16,zmm27
  a2dbcd:	62 01 1c 40 5c c2    	vsubps zmm24,zmm28,zmm26
  a2dbd3:	62 01 1c 40 58 da    	vaddps zmm27,zmm28,zmm26
  a2dbd9:	62 41 64 48 58 cf    	vaddps zmm25,zmm3,zmm15
  a2dbdf:	62 d1 64 48 5c df    	vsubps zmm3,zmm3,zmm15
  a2dbe5:	62 41 04 40 58 d6    	vaddps zmm26,zmm31,zmm14
  a2dbeb:	62 41 04 40 5c ee    	vsubps zmm29,zmm31,zmm14
  a2dbf1:	62 31 5c 48 5c f9    	vsubps zmm15,zmm4,zmm17
  a2dbf7:	62 b1 5c 48 58 e1    	vaddps zmm4,zmm4,zmm17
  a2dbfd:	62 61 6c 48 5c e1    	vsubps zmm28,zmm2,zmm1
  a2dc03:	62 f1 6c 48 58 c9    	vaddps zmm1,zmm2,zmm1
  a2dc09:	62 91 64 40 58 d6    	vaddps zmm2,zmm19,zmm30
  a2dc0f:	62 11 64 40 5c f6    	vsubps zmm14,zmm19,zmm30
  a2dc15:	62 41 3c 48 58 f4    	vaddps zmm30,zmm8,zmm12
  a2dc1b:	62 51 3c 48 5c c4    	vsubps zmm8,zmm8,zmm12
  a2dc21:	62 e2 7d 48 7f f4    	vpermt2ps zmm22,zmm0,zmm4
  a2dc27:	62 c2 7d 48 7f ee    	vpermt2ps zmm21,zmm0,zmm14
  a2dc2d:	62 62 7d 48 7f ce    	vpermt2ps zmm25,zmm0,zmm6
  a2dc33:	62 72 7d 48 7f fe    	vpermt2ps zmm15,zmm0,zmm6
  a2dc39:	62 f2 7d 48 7f d6    	vpermt2ps zmm2,zmm0,zmm6
  a2dc3f:	62 e2 7d 48 7f d6    	vpermt2ps zmm18,zmm0,zmm6
  a2dc45:	62 e2 7d 48 7f c6    	vpermt2ps zmm16,zmm0,zmm6
  a2dc4b:	62 f2 7d 48 7f de    	vpermt2ps zmm3,zmm0,zmm6
  a2dc51:	62 b1 7c 48 28 e6    	vmovaps zmm4,zmm22
  a2dc57:	62 61 7c 48 28 3d 9f 	vmovaps zmm31,ZMMWORD PTR [rip+0xffffffffff69929f]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a2dc5e:	92 69 ff 
  a2dc61:	62 f2 05 40 7f e2    	vpermt2ps zmm4,zmm31,zmm2
  a2dc67:	62 71 7c 48 28 0d cf 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff6992cf]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a2dc6e:	92 69 ff 
  a2dc71:	62 e2 35 48 7f f2    	vpermt2ps zmm22,zmm9,zmm2
  a2dc77:	62 b1 7c 48 28 d5    	vmovaps zmm2,zmm21
  a2dc7d:	62 b2 05 40 7f d2    	vpermt2ps zmm2,zmm31,zmm18
  a2dc83:	62 a2 35 48 7f ea    	vpermt2ps zmm21,zmm9,zmm18
  a2dc89:	62 11 7c 48 28 e1    	vmovaps zmm12,zmm25
  a2dc8f:	62 32 05 40 7f e0    	vpermt2ps zmm12,zmm31,zmm16
  a2dc95:	62 22 35 48 7f c8    	vpermt2ps zmm25,zmm9,zmm16
  a2dc9b:	62 c1 7c 48 28 c7    	vmovaps zmm16,zmm15
  a2dca1:	62 e2 05 40 7f c3    	vpermt2ps zmm16,zmm31,zmm3
  a2dca7:	62 72 35 48 7f fb    	vpermt2ps zmm15,zmm9,zmm3
  a2dcad:	62 c1 dd 48 14 dc    	vunpcklpd zmm19,zmm4,zmm12
  a2dcb3:	62 c1 dd 48 15 cc    	vunpckhpd zmm17,zmm4,zmm12
  a2dcb9:	62 31 ed 48 14 f0    	vunpcklpd zmm14,zmm2,zmm16
  a2dcbf:	62 b1 ed 48 15 d0    	vunpckhpd zmm2,zmm2,zmm16
  a2dcc5:	62 81 cd 40 14 d1    	vunpcklpd zmm18,zmm22,zmm25
  a2dccb:	62 81 cd 40 15 c1    	vunpckhpd zmm16,zmm22,zmm25
  a2dcd1:	62 d1 d5 40 14 df    	vunpcklpd zmm3,zmm21,zmm15
  a2dcd7:	62 d1 d5 40 15 e7    	vunpckhpd zmm4,zmm21,zmm15
  a2dcdd:	62 31 7c 48 28 fb    	vmovaps zmm15,zmm19
  a2dce3:	62 71 7c 48 28 25 53 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff699153]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a2dcea:	91 69 ff 
  a2dced:	62 c2 1d 48 7f de    	vpermt2ps zmm19,zmm12,zmm14
  a2dcf3:	62 a1 7c 48 28 e9    	vmovaps zmm21,zmm17
  a2dcf9:	62 71 7c 48 28 15 fd 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff6990fd]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a2dd00:	90 69 ff 
  a2dd03:	62 e2 2d 48 7f ea    	vpermt2ps zmm21,zmm10,zmm2
  a2dd09:	62 e2 1d 48 7f ca    	vpermt2ps zmm17,zmm12,zmm2
  a2dd0f:	62 21 7c 48 28 ca    	vmovaps zmm25,zmm18
  a2dd15:	62 62 2d 48 7f cb    	vpermt2ps zmm25,zmm10,zmm3
  a2dd1b:	62 e2 1d 48 7f d3    	vpermt2ps zmm18,zmm12,zmm3
  a2dd21:	62 a1 7c 48 28 f0    	vmovaps zmm22,zmm16
  a2dd27:	62 e2 2d 48 7f f4    	vpermt2ps zmm22,zmm10,zmm4
  a2dd2d:	62 e2 1d 48 7f c4    	vpermt2ps zmm16,zmm12,zmm4
  a2dd33:	62 e2 7d 48 7f e1    	vpermt2ps zmm20,zmm0,zmm1
  a2dd39:	62 42 7d 48 7f c0    	vpermt2ps zmm24,zmm0,zmm8
  a2dd3f:	62 62 7d 48 7f d6    	vpermt2ps zmm26,zmm0,zmm6
  a2dd45:	62 62 7d 48 7f e6    	vpermt2ps zmm28,zmm0,zmm6
  a2dd4b:	62 62 7d 48 7f f6    	vpermt2ps zmm30,zmm0,zmm6
  a2dd51:	62 e2 7d 48 7f fe    	vpermt2ps zmm23,zmm0,zmm6
  a2dd57:	62 62 7d 48 7f de    	vpermt2ps zmm27,zmm0,zmm6
  a2dd5d:	62 62 7d 48 7f ee    	vpermt2ps zmm29,zmm0,zmm6
  a2dd63:	62 b1 7c 48 28 cc    	vmovaps zmm1,zmm20
  a2dd69:	62 92 05 40 7f ce    	vpermt2ps zmm1,zmm31,zmm30
  a2dd6f:	62 82 35 48 7f e6    	vpermt2ps zmm20,zmm9,zmm30
  a2dd75:	62 91 7c 48 28 d0    	vmovaps zmm2,zmm24
  a2dd7b:	62 b2 05 40 7f d7    	vpermt2ps zmm2,zmm31,zmm23
  a2dd81:	62 22 35 48 7f c7    	vpermt2ps zmm24,zmm9,zmm23
  a2dd87:	62 91 7c 48 28 da    	vmovaps zmm3,zmm26
  a2dd8d:	62 92 05 40 7f db    	vpermt2ps zmm3,zmm31,zmm27
  a2dd93:	62 02 35 48 7f d3    	vpermt2ps zmm26,zmm9,zmm27
  a2dd99:	62 91 7c 48 28 e4    	vmovaps zmm4,zmm28
  a2dd9f:	62 92 05 40 7f e5    	vpermt2ps zmm4,zmm31,zmm29
  a2dda5:	62 02 35 48 7f e5    	vpermt2ps zmm28,zmm9,zmm29
  a2ddab:	62 61 f5 48 14 f3    	vunpcklpd zmm30,zmm1,zmm3
  a2ddb1:	62 61 f5 48 15 db    	vunpckhpd zmm27,zmm1,zmm3
  a2ddb7:	62 e1 ed 48 14 fc    	vunpcklpd zmm23,zmm2,zmm4
  a2ddbd:	62 f1 ed 48 15 cc    	vunpckhpd zmm1,zmm2,zmm4
  a2ddc3:	62 01 dd 40 14 ea    	vunpcklpd zmm29,zmm20,zmm26
  a2ddc9:	62 01 dd 40 15 d2    	vunpckhpd zmm26,zmm20,zmm26
  a2ddcf:	62 91 bd 40 14 d4    	vunpcklpd zmm2,zmm24,zmm28
  a2ddd5:	62 91 bd 40 15 dc    	vunpckhpd zmm3,zmm24,zmm28
  a2dddb:	62 81 7c 48 28 e6    	vmovaps zmm20,zmm30
  a2dde1:	62 22 1d 48 7f f7    	vpermt2ps zmm30,zmm12,zmm23
  a2dde7:	62 91 7c 48 28 e3    	vmovaps zmm4,zmm27
  a2dded:	62 f2 2d 48 7f e1    	vpermt2ps zmm4,zmm10,zmm1
  a2ddf3:	62 62 1d 48 7f d9    	vpermt2ps zmm27,zmm12,zmm1
  a2ddf9:	62 91 7c 48 28 cd    	vmovaps zmm1,zmm29
  a2ddff:	62 f2 2d 48 7f ca    	vpermt2ps zmm1,zmm10,zmm2
  a2de05:	62 62 1d 48 7f ea    	vpermt2ps zmm29,zmm12,zmm2
  a2de0b:	62 91 7c 48 28 d2    	vmovaps zmm2,zmm26
  a2de11:	62 f2 2d 48 7f d3    	vpermt2ps zmm2,zmm10,zmm3
  a2de17:	62 62 1d 48 7f d3    	vpermt2ps zmm26,zmm12,zmm3
  a2de1d:	62 f1 7c 48 10 59 08 	vmovups zmm3,ZMMWORD PTR [rcx+0x200]
  a2de24:	62 71 7c 48 10 41 09 	vmovups zmm8,ZMMWORD PTR [rcx+0x240]
  a2de2b:	62 61 34 40 59 c3    	vmulps zmm24,zmm25,zmm3
  a2de31:	62 42 75 48 bc c0    	vfnmadd231ps zmm24,zmm1,zmm8
  a2de37:	62 61 74 48 59 e3    	vmulps zmm28,zmm1,zmm3
  a2de3d:	62 f1 7c 48 10 49 04 	vmovups zmm1,ZMMWORD PTR [rcx+0x100]
  a2de44:	62 02 3d 48 b8 e1    	vfmadd231ps zmm28,zmm8,zmm25
  a2de4a:	62 f1 7c 48 10 59 05 	vmovups zmm3,ZMMWORD PTR [rcx+0x140]
  a2de51:	62 61 54 40 59 c9    	vmulps zmm25,zmm21,zmm1
  a2de57:	62 62 5d 48 bc cb    	vfnmadd231ps zmm25,zmm4,zmm3
  a2de5d:	62 f1 5c 48 59 c9    	vmulps zmm1,zmm4,zmm1
  a2de63:	62 f1 7c 48 10 61 0c 	vmovups zmm4,ZMMWORD PTR [rcx+0x300]
  a2de6a:	62 b2 65 48 b8 cd    	vfmadd231ps zmm1,zmm3,zmm21
  a2de70:	62 f1 7c 48 10 59 0d 	vmovups zmm3,ZMMWORD PTR [rcx+0x340]
  a2de77:	62 71 4c 40 59 c4    	vmulps zmm8,zmm22,zmm4
  a2de7d:	62 72 6d 48 bc c3    	vfnmadd231ps zmm8,zmm2,zmm3
  a2de83:	62 f1 6c 48 59 d4    	vmulps zmm2,zmm2,zmm4
  a2de89:	62 f1 7c 48 10 61 02 	vmovups zmm4,ZMMWORD PTR [rcx+0x80]
  a2de90:	62 b2 65 48 b8 d6    	vfmadd231ps zmm2,zmm3,zmm22
  a2de96:	62 f1 7c 48 10 59 03 	vmovups zmm3,ZMMWORD PTR [rcx+0xc0]
  a2de9d:	62 71 64 40 59 e4    	vmulps zmm12,zmm19,zmm4
  a2dea3:	62 72 0d 40 bc e3    	vfnmadd231ps zmm12,zmm30,zmm3
  a2dea9:	62 f1 0c 40 59 e4    	vmulps zmm4,zmm30,zmm4
  a2deaf:	62 e1 7c 48 10 69 0a 	vmovups zmm21,ZMMWORD PTR [rcx+0x280]
  a2deb6:	62 b2 65 48 b8 e3    	vfmadd231ps zmm4,zmm3,zmm19
  a2debc:	62 f1 7c 48 10 59 0b 	vmovups zmm3,ZMMWORD PTR [rcx+0x2c0]
  a2dec3:	62 a1 6c 40 59 dd    	vmulps zmm19,zmm18,zmm21
  a2dec9:	62 e2 15 40 bc db    	vfnmadd231ps zmm19,zmm29,zmm3
  a2decf:	62 a1 14 40 59 ed    	vmulps zmm21,zmm29,zmm21
  a2ded5:	62 e1 7c 48 10 71 06 	vmovups zmm22,ZMMWORD PTR [rcx+0x180]
  a2dedc:	62 a2 65 48 b8 ea    	vfmadd231ps zmm21,zmm3,zmm18
  a2dee2:	62 f1 7c 48 10 59 07 	vmovups zmm3,ZMMWORD PTR [rcx+0x1c0]
  a2dee9:	62 a1 74 40 59 d6    	vmulps zmm18,zmm17,zmm22
  a2deef:	62 e2 25 40 bc d3    	vfnmadd231ps zmm18,zmm27,zmm3
  a2def5:	62 a1 24 40 59 f6    	vmulps zmm22,zmm27,zmm22
  a2defb:	62 61 7c 48 10 59 0e 	vmovups zmm27,ZMMWORD PTR [rcx+0x380]
  a2df02:	62 a2 65 48 b8 f1    	vfmadd231ps zmm22,zmm3,zmm17
  a2df08:	62 f1 7c 48 10 59 0f 	vmovups zmm3,ZMMWORD PTR [rcx+0x3c0]
  a2df0f:	62 81 7c 40 59 cb    	vmulps zmm17,zmm16,zmm27
  a2df15:	62 e2 2d 40 bc cb    	vfnmadd231ps zmm17,zmm26,zmm3
  a2df1b:	62 01 2c 40 59 d3    	vmulps zmm26,zmm26,zmm27
  a2df21:	62 22 65 48 b8 d0    	vfmadd231ps zmm26,zmm3,zmm16
  a2df27:	62 52 2d 48 7f fe    	vpermt2ps zmm15,zmm10,zmm14
  a2df2d:	62 a2 2d 48 7f e7    	vpermt2ps zmm20,zmm10,zmm23
  a2df33:	62 91 04 48 58 d8    	vaddps zmm3,zmm15,zmm24
  a2df39:	62 11 04 48 5c f0    	vsubps zmm14,zmm15,zmm24
  a2df3f:	62 71 74 48 58 fa    	vaddps zmm15,zmm1,zmm2
  a2df45:	62 f1 74 48 5c ca    	vsubps zmm1,zmm1,zmm2
  a2df4b:	62 b1 1c 48 58 d3    	vaddps zmm2,zmm12,zmm19
  a2df51:	62 31 1c 48 5c e3    	vsubps zmm12,zmm12,zmm19
  a2df57:	62 a1 5c 48 58 c5    	vaddps zmm16,zmm4,zmm21
  a2df5d:	62 b1 5c 48 5c e5    	vsubps zmm4,zmm4,zmm21
  a2df63:	62 81 4c 40 58 da    	vaddps zmm19,zmm22,zmm26
  a2df69:	62 81 4c 40 5c ea    	vsubps zmm21,zmm22,zmm26
  a2df6f:	62 a1 6c 40 58 f1    	vaddps zmm22,zmm18,zmm17
  a2df75:	62 a1 6c 40 5c c9    	vsubps zmm17,zmm18,zmm17
  a2df7b:	62 a1 1c 40 58 d4    	vaddps zmm18,zmm28,zmm20
  a2df81:	62 81 5c 40 5c e4    	vsubps zmm20,zmm20,zmm28
  a2df87:	62 c1 34 40 58 f8    	vaddps zmm23,zmm25,zmm8
  a2df8d:	62 11 3c 48 5c c1    	vsubps zmm8,zmm8,zmm25
  a2df93:	62 61 1c 48 58 c4    	vaddps zmm24,zmm12,zmm4
  a2df99:	62 d1 5c 48 5c e4    	vsubps zmm4,zmm4,zmm12
  a2df9f:	62 31 54 40 5c e1    	vsubps zmm12,zmm21,zmm17
  a2dfa5:	62 a1 74 40 58 cd    	vaddps zmm17,zmm17,zmm21
  a2dfab:	62 a1 64 48 58 ef    	vaddps zmm21,zmm3,zmm23
  a2dfb1:	62 b1 64 48 5c df    	vsubps zmm3,zmm3,zmm23
  a2dfb7:	62 a1 7c 40 58 fb    	vaddps zmm23,zmm16,zmm19
  a2dfbd:	62 a1 7c 40 5c c3    	vsubps zmm16,zmm16,zmm19
  a2dfc3:	62 a1 04 48 58 da    	vaddps zmm19,zmm15,zmm18
  a2dfc9:	62 51 6c 40 5c ff    	vsubps zmm15,zmm18,zmm15
  a2dfcf:	62 a1 6c 48 58 d6    	vaddps zmm18,zmm2,zmm22
  a2dfd5:	62 f1 4c 40 5c d2    	vsubps zmm2,zmm22,zmm2
  a2dfdb:	62 e1 0c 48 58 f1    	vaddps zmm22,zmm14,zmm1
  a2dfe1:	62 72 7d 48 18 0d b1 	vbroadcastss zmm9,DWORD PTR [rip+0xffffffffff6473b1]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a2dfe8:	73 64 ff 
  a2dfeb:	62 41 3c 40 59 c1    	vmulps zmm24,zmm24,zmm9
  a2dff1:	62 51 1c 48 59 e1    	vmulps zmm12,zmm12,zmm9
  a2dff7:	62 d1 5c 48 59 e1    	vmulps zmm4,zmm4,zmm9
  a2dffd:	62 c1 74 40 59 c9    	vmulps zmm17,zmm17,zmm9
  a2e003:	62 f1 0c 48 5c c9    	vsubps zmm1,zmm14,zmm1
  a2e009:	62 31 5c 48 5c f1    	vsubps zmm14,zmm4,zmm17
  a2e00f:	62 b1 5c 48 58 e1    	vaddps zmm4,zmm4,zmm17
  a2e015:	62 a1 3c 48 58 cc    	vaddps zmm17,zmm8,zmm20
  a2e01b:	62 51 5c 40 5c c0    	vsubps zmm8,zmm20,zmm8
  a2e021:	62 c1 3c 40 58 e4    	vaddps zmm20,zmm24,zmm12
  a2e027:	62 11 1c 48 5c e0    	vsubps zmm12,zmm12,zmm24
  a2e02d:	62 21 4c 40 58 c4    	vaddps zmm24,zmm22,zmm20
  a2e033:	62 a1 4c 40 5c e4    	vsubps zmm20,zmm22,zmm20
  a2e039:	62 c1 74 40 58 f6    	vaddps zmm22,zmm17,zmm14
  a2e03f:	62 51 74 40 5c f6    	vsubps zmm14,zmm17,zmm14
  a2e045:	62 a1 64 48 58 c8    	vaddps zmm17,zmm3,zmm16
  a2e04b:	62 b1 64 48 5c d8    	vsubps zmm3,zmm3,zmm16
  a2e051:	62 e1 04 48 58 c2    	vaddps zmm16,zmm15,zmm2
  a2e057:	62 f1 04 48 5c d2    	vsubps zmm2,zmm15,zmm2
  a2e05d:	62 71 74 48 58 fc    	vaddps zmm15,zmm1,zmm4
  a2e063:	62 f1 74 48 5c cc    	vsubps zmm1,zmm1,zmm4
  a2e069:	62 d1 3c 48 58 e4    	vaddps zmm4,zmm8,zmm12
  a2e06f:	62 51 3c 48 5c c4    	vsubps zmm8,zmm8,zmm12
  a2e075:	62 31 64 40 5c e7    	vsubps zmm12,zmm19,zmm23
  a2e07b:	62 a1 64 40 58 df    	vaddps zmm19,zmm19,zmm23
  a2e081:	62 a1 54 40 5c fa    	vsubps zmm23,zmm21,zmm18
  a2e087:	62 a1 54 40 58 d2    	vaddps zmm18,zmm21,zmm18
  a2e08d:	62 a3 7d 48 19 dd 02 	vextractf32x4 xmm21,zmm19,0x2
  a2e094:	62 a2 15 48 7f da    	vpermt2ps zmm19,zmm13,zmm18
  a2e09a:	62 e1 7c 48 11 1c 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm19
  a2e0a1:	62 a3 7d 48 19 d2 02 	vextractf32x4 xmm18,zmm18,0x2
  a2e0a8:	62 a1 54 00 14 d2    	vunpcklps xmm18,xmm21,xmm18
  a2e0ae:	62 e1 7c 08 11 54 16 	vmovups XMMWORD PTR [rsi+rdx*1+0x40],xmm18
  a2e0b5:	04 
  a2e0b6:	62 a3 7d 48 19 f2 02 	vextractf32x4 xmm18,zmm22,0x2
  a2e0bd:	62 82 15 48 7f f0    	vpermt2ps zmm22,zmm13,zmm24
  a2e0c3:	62 e1 7c 48 11 b4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x50],zmm22
  a2e0ca:	50 00 00 00 
  a2e0ce:	62 23 7d 48 19 c3 02 	vextractf32x4 xmm19,zmm24,0x2
  a2e0d5:	62 a1 6c 00 14 d3    	vunpcklps xmm18,xmm18,xmm19
  a2e0db:	62 e1 7c 08 11 54 16 	vmovups XMMWORD PTR [rsi+rdx*1+0x90],xmm18
  a2e0e2:	09 
  a2e0e3:	62 a3 7d 48 19 c2 02 	vextractf32x4 xmm18,zmm16,0x2
  a2e0ea:	62 a2 15 48 7f c1    	vpermt2ps zmm16,zmm13,zmm17
  a2e0f0:	62 e1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xa0],zmm16
  a2e0f7:	a0 00 00 00 
  a2e0fb:	62 a3 7d 48 19 c8 02 	vextractf32x4 xmm16,zmm17,0x2
  a2e102:	62 a1 6c 00 14 c0    	vunpcklps xmm16,xmm18,xmm16
  a2e108:	62 e1 7c 08 11 44 16 	vmovups XMMWORD PTR [rsi+rdx*1+0xe0],xmm16
  a2e10f:	0e 
  a2e110:	62 b3 7d 48 19 e0 02 	vextractf32x4 xmm16,zmm4,0x2
  a2e117:	62 d2 15 48 7f e7    	vpermt2ps zmm4,zmm13,zmm15
  a2e11d:	62 f1 7c 48 11 a4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xf0],zmm4
  a2e124:	f0 00 00 00 
  a2e128:	62 73 7d 48 19 fc 02 	vextractf32x4 xmm4,zmm15,0x2
  a2e12f:	62 f1 7c 00 14 e4    	vunpcklps xmm4,xmm16,xmm4
  a2e135:	c5 f8 11 a4 16 30 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x130],xmm4
  a2e13c:	00 00 
  a2e13e:	62 73 7d 48 19 e4 02 	vextractf32x4 xmm4,zmm12,0x2
  a2e145:	62 32 15 48 7f e7    	vpermt2ps zmm12,zmm13,zmm23
  a2e14b:	62 71 7c 48 11 64 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x140],zmm12
  a2e152:	05 
  a2e153:	62 c3 7d 48 19 fc 02 	vextractf32x4 xmm12,zmm23,0x2
  a2e15a:	c4 c1 58 14 e4       	vunpcklps xmm4,xmm4,xmm12
  a2e15f:	c5 f8 11 a4 16 80 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x180],xmm4
  a2e166:	00 00 
  a2e168:	62 73 7d 48 19 f4 02 	vextractf32x4 xmm4,zmm14,0x2
  a2e16f:	62 32 15 48 7f f4    	vpermt2ps zmm14,zmm13,zmm20
  a2e175:	62 71 7c 48 11 b4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x190],zmm14
  a2e17c:	90 01 00 00 
  a2e180:	62 c3 7d 48 19 e4 02 	vextractf32x4 xmm12,zmm20,0x2
  a2e187:	c4 c1 58 14 e4       	vunpcklps xmm4,xmm4,xmm12
  a2e18c:	c5 f8 11 a4 16 d0 01 	vmovups XMMWORD PTR [rsi+rdx*1+0x1d0],xmm4
  a2e193:	00 00 
  a2e195:	62 f3 7d 48 19 d4 02 	vextractf32x4 xmm4,zmm2,0x2
  a2e19c:	62 f2 15 48 7f d3    	vpermt2ps zmm2,zmm13,zmm3
  a2e1a2:	62 f1 7c 48 11 94 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1e0],zmm2
  a2e1a9:	e0 01 00 00 
  a2e1ad:	62 f3 7d 48 19 da 02 	vextractf32x4 xmm2,zmm3,0x2
  a2e1b4:	c5 d8 14 d2          	vunpcklps xmm2,xmm4,xmm2
  a2e1b8:	c5 f8 11 94 16 20 02 	vmovups XMMWORD PTR [rsi+rdx*1+0x220],xmm2
  a2e1bf:	00 00 
  a2e1c1:	62 73 7d 48 19 c2 02 	vextractf32x4 xmm2,zmm8,0x2
  a2e1c8:	62 72 15 48 7f c1    	vpermt2ps zmm8,zmm13,zmm1
  a2e1ce:	62 71 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x230],zmm8
  a2e1d5:	30 02 00 00 
  a2e1d9:	62 f3 7d 48 19 c9 02 	vextractf32x4 xmm1,zmm1,0x2
  a2e1e0:	c5 e8 14 c9          	vunpcklps xmm1,xmm2,xmm1
  a2e1e4:	c5 f8 11 8c 16 70 02 	vmovups XMMWORD PTR [rsi+rdx*1+0x270],xmm1
  a2e1eb:	00 00 
  a2e1ed:	48 81 c2 80 02 00 00 	add    rdx,0x280
  a2e1f4:	48 39 d0             	cmp    rax,rdx
  a2e1f7:	0f 85 c3 f6 ff ff    	jne    a2d8c0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x40>
  a2e1fd:	c5 f8 77             	vzeroupper
  a2e200:	c3                   	ret
