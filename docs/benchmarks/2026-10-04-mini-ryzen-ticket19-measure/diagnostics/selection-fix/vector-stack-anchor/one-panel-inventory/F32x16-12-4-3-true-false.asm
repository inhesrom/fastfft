
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a1d940 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a1d940:	c5 fb 10 47 10       	vmovsd xmm0,QWORD PTR [rdi+0x10]
  a1d945:	c5 f8 10 0f          	vmovups xmm1,XMMWORD PTR [rdi]
  a1d949:	c5 f8 10 57 18       	vmovups xmm2,XMMWORD PTR [rdi+0x18]
  a1d94e:	c5 f8 10 5f 30       	vmovups xmm3,XMMWORD PTR [rdi+0x30]
  a1d953:	c5 f8 10 67 48       	vmovups xmm4,XMMWORD PTR [rdi+0x48]
  a1d958:	62 f3 75 48 18 c8 01 	vinsertf32x4 zmm1,zmm1,xmm0,0x1
  a1d95f:	62 f1 7c 48 28 2d 97 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff672397]        # 8fd00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d1b0>
  a1d966:	23 67 ff 
  a1d969:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a1d96d:	62 f1 7c 48 28 f1    	vmovaps zmm6,zmm1
  a1d973:	62 f2 55 48 7f f0    	vpermt2ps zmm6,zmm5,zmm0
  a1d979:	62 f1 7c 48 28 3d bd 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff6723bd]        # 8fd40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d1f0>
  a1d980:	23 67 ff 
  a1d983:	62 f2 45 48 7f c8    	vpermt2ps zmm1,zmm7,zmm0
  a1d989:	c5 7b 10 47 28       	vmovsd xmm8,QWORD PTR [rdi+0x28]
  a1d98e:	62 d3 6d 48 18 d0 01 	vinsertf32x4 zmm2,zmm2,xmm8,0x1
  a1d995:	62 71 7c 48 28 c2    	vmovaps zmm8,zmm2
  a1d99b:	62 72 55 48 7f c0    	vpermt2ps zmm8,zmm5,zmm0
  a1d9a1:	62 f2 45 48 7f d0    	vpermt2ps zmm2,zmm7,zmm0
  a1d9a7:	c5 7b 10 4f 40       	vmovsd xmm9,QWORD PTR [rdi+0x40]
  a1d9ac:	62 d3 65 48 18 d9 01 	vinsertf32x4 zmm3,zmm3,xmm9,0x1
  a1d9b3:	62 71 7c 48 28 cb    	vmovaps zmm9,zmm3
  a1d9b9:	62 72 55 48 7f c8    	vpermt2ps zmm9,zmm5,zmm0
  a1d9bf:	62 f2 45 48 7f d8    	vpermt2ps zmm3,zmm7,zmm0
  a1d9c5:	c5 7b 10 57 58       	vmovsd xmm10,QWORD PTR [rdi+0x58]
  a1d9ca:	62 d3 5d 48 18 e2 01 	vinsertf32x4 zmm4,zmm4,xmm10,0x1
  a1d9d1:	62 f2 5d 48 77 e8    	vpermi2ps zmm5,zmm4,zmm0
  a1d9d7:	62 f2 45 48 7f e0    	vpermt2ps zmm4,zmm7,zmm0
  a1d9dd:	62 f1 74 48 58 fb    	vaddps zmm7,zmm1,zmm3
  a1d9e3:	62 71 6c 48 58 d4    	vaddps zmm10,zmm2,zmm4
  a1d9e9:	62 51 44 48 58 da    	vaddps zmm11,zmm7,zmm10
  a1d9ef:	62 51 4c 48 58 e1    	vaddps zmm12,zmm6,zmm9
  a1d9f5:	62 71 3c 48 58 ed    	vaddps zmm13,zmm8,zmm5
  a1d9fb:	62 51 1c 48 58 f5    	vaddps zmm14,zmm12,zmm13
  a1da01:	62 f1 74 48 5c cb    	vsubps zmm1,zmm1,zmm3
  a1da07:	62 f1 3c 48 5c dd    	vsubps zmm3,zmm8,zmm5
  a1da0d:	62 f1 74 48 58 eb    	vaddps zmm5,zmm1,zmm3
  a1da13:	62 d1 4c 48 5c f1    	vsubps zmm6,zmm6,zmm9
  a1da19:	62 f1 5c 48 5c d2    	vsubps zmm2,zmm4,zmm2
  a1da1f:	62 f1 6c 48 58 e6    	vaddps zmm4,zmm2,zmm6
  a1da25:	62 d1 44 48 5c fa    	vsubps zmm7,zmm7,zmm10
  a1da2b:	62 51 1c 48 5c c5    	vsubps zmm8,zmm12,zmm13
  a1da31:	62 f1 74 48 5c cb    	vsubps zmm1,zmm1,zmm3
  a1da37:	62 f1 4c 48 5c d2    	vsubps zmm2,zmm6,zmm2
  a1da3d:	62 f1 7c 48 28 1d 39 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff6a9539]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a1da44:	95 6a ff 
  a1da47:	62 72 65 48 7f d8    	vpermt2ps zmm11,zmm3,zmm0
  a1da4d:	62 f2 65 48 7f e8    	vpermt2ps zmm5,zmm3,zmm0
  a1da53:	62 f2 65 48 7f f8    	vpermt2ps zmm7,zmm3,zmm0
  a1da59:	62 f2 65 48 7f c8    	vpermt2ps zmm1,zmm3,zmm0
  a1da5f:	c5 c8 57 f6          	vxorps xmm6,xmm6,xmm6
  a1da63:	62 f2 65 48 7f f6    	vpermt2ps zmm6,zmm3,zmm6
  a1da69:	62 71 7c 48 28 0d 8d 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff6a948d]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a1da70:	94 6a ff 
  a1da73:	62 72 35 48 7f de    	vpermt2ps zmm11,zmm9,zmm6
  a1da79:	62 f2 35 48 7f ee    	vpermt2ps zmm5,zmm9,zmm6
  a1da7f:	62 f2 35 48 7f fe    	vpermt2ps zmm7,zmm9,zmm6
  a1da85:	62 f2 35 48 7f ce    	vpermt2ps zmm1,zmm9,zmm6
  a1da8b:	62 71 a5 48 14 d7    	vunpcklpd zmm10,zmm11,zmm7
  a1da91:	62 f1 a5 48 15 ff    	vunpckhpd zmm7,zmm11,zmm7
  a1da97:	62 71 d5 48 14 d9    	vunpcklpd zmm11,zmm5,zmm1
  a1da9d:	62 f1 d5 48 15 c9    	vunpckhpd zmm1,zmm5,zmm1
  a1daa3:	62 f1 7c 48 28 2d 53 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff6a9353]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a1daaa:	93 6a ff 
  a1daad:	62 51 7c 48 28 e2    	vmovaps zmm12,zmm10
  a1dab3:	62 52 55 48 7f e3    	vpermt2ps zmm12,zmm5,zmm11
  a1dab9:	62 71 7c 48 28 2d 7d 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff6a937d]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a1dac0:	93 6a ff 
  a1dac3:	62 52 15 48 7f d3    	vpermt2ps zmm10,zmm13,zmm11
  a1dac9:	62 f2 55 48 7f f9    	vpermt2ps zmm7,zmm5,zmm1
  a1dacf:	62 72 65 48 7f f0    	vpermt2ps zmm14,zmm3,zmm0
  a1dad5:	62 f2 65 48 7f e0    	vpermt2ps zmm4,zmm3,zmm0
  a1dadb:	62 72 65 48 7f c0    	vpermt2ps zmm8,zmm3,zmm0
  a1dae1:	62 f2 65 48 7f d0    	vpermt2ps zmm2,zmm3,zmm0
  a1dae7:	62 72 35 48 7f f6    	vpermt2ps zmm14,zmm9,zmm6
  a1daed:	62 f2 35 48 7f e6    	vpermt2ps zmm4,zmm9,zmm6
  a1daf3:	62 72 35 48 7f c6    	vpermt2ps zmm8,zmm9,zmm6
  a1daf9:	62 f2 35 48 7f d6    	vpermt2ps zmm2,zmm9,zmm6
  a1daff:	62 d1 8d 48 14 c0    	vunpcklpd zmm0,zmm14,zmm8
  a1db05:	62 d1 8d 48 15 c8    	vunpckhpd zmm1,zmm14,zmm8
  a1db0b:	62 f1 dd 48 14 da    	vunpcklpd zmm3,zmm4,zmm2
  a1db11:	62 f1 dd 48 15 d2    	vunpckhpd zmm2,zmm4,zmm2
  a1db17:	62 f1 7c 48 28 e0    	vmovaps zmm4,zmm0
  a1db1d:	62 f2 55 48 7f e3    	vpermt2ps zmm4,zmm5,zmm3
  a1db23:	62 f2 15 48 7f c3    	vpermt2ps zmm0,zmm13,zmm3
  a1db29:	62 f2 55 48 7f ca    	vpermt2ps zmm1,zmm5,zmm2
  a1db2f:	62 f1 7c 48 10 52 02 	vmovups zmm2,ZMMWORD PTR [rdx+0x80]
  a1db36:	62 f1 7c 48 10 5a 03 	vmovups zmm3,ZMMWORD PTR [rdx+0xc0]
  a1db3d:	62 f1 7c 48 10 6a 04 	vmovups zmm5,ZMMWORD PTR [rdx+0x100]
  a1db44:	62 f1 7c 48 10 72 05 	vmovups zmm6,ZMMWORD PTR [rdx+0x140]
  a1db4b:	62 71 2c 48 59 c2    	vmulps zmm8,zmm10,zmm2
  a1db51:	62 72 7d 48 bc c3    	vfnmadd231ps zmm8,zmm0,zmm3
  a1db57:	62 71 44 48 59 cd    	vmulps zmm9,zmm7,zmm5
  a1db5d:	62 72 75 48 bc ce    	vfnmadd231ps zmm9,zmm1,zmm6
  a1db63:	62 51 3c 48 58 d9    	vaddps zmm11,zmm8,zmm9
  a1db69:	62 f1 7c 48 59 c2    	vmulps zmm0,zmm0,zmm2
  a1db6f:	62 d2 65 48 b8 c2    	vfmadd231ps zmm0,zmm3,zmm10
  a1db75:	62 f1 74 48 59 cd    	vmulps zmm1,zmm1,zmm5
  a1db7b:	62 f2 4d 48 b8 cf    	vfmadd231ps zmm1,zmm6,zmm7
  a1db81:	62 f1 7c 48 58 d1    	vaddps zmm2,zmm0,zmm1
  a1db87:	62 f2 7d 48 18 1d cf 	vbroadcastss zmm3,DWORD PTR [rip+0xffffffffff6578cf]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a1db8e:	78 65 ff 
  a1db91:	62 f1 7c 48 28 eb    	vmovaps zmm5,zmm3
  a1db97:	62 d2 25 48 ac ec    	vfnmadd213ps zmm5,zmm11,zmm12
  a1db9d:	62 f2 6d 48 ac dc    	vfnmadd213ps zmm3,zmm2,zmm4
  a1dba3:	c4 c1 1c 58 f3       	vaddps ymm6,ymm12,ymm11
  a1dba8:	c5 d8 58 d2          	vaddps xmm2,xmm4,xmm2
  a1dbac:	c5 fc 28 25 2c 96 65 	vmovaps ymm4,YMMWORD PTR [rip+0xffffffffff65962c]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  a1dbb3:	ff 
  a1dbb4:	62 f2 5d 28 7f d6    	vpermt2ps ymm2,ymm4,ymm6
  a1dbba:	c5 fc 11 16          	vmovups YMMWORD PTR [rsi],ymm2
  a1dbbe:	c4 e2 7d 18 15 0d 77 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff65770d]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a1dbc5:	65 ff 
  a1dbc7:	c5 fc 5c c1          	vsubps ymm0,ymm0,ymm1
  a1dbcb:	c5 fc 59 c2          	vmulps ymm0,ymm0,ymm2
  a1dbcf:	c5 d4 58 c8          	vaddps ymm1,ymm5,ymm0
  a1dbd3:	c4 c1 3c 5c f1       	vsubps ymm6,ymm8,ymm9
  a1dbd8:	c5 cc 59 d2          	vmulps ymm2,ymm6,ymm2
  a1dbdc:	c5 e0 5c f2          	vsubps xmm6,xmm3,xmm2
  a1dbe0:	62 f2 5d 28 7f f1    	vpermt2ps ymm6,ymm4,ymm1
  a1dbe6:	c5 fc 11 76 20       	vmovups YMMWORD PTR [rsi+0x20],ymm6
  a1dbeb:	c5 d4 5c c0          	vsubps ymm0,ymm5,ymm0
  a1dbef:	c5 e0 58 ca          	vaddps xmm1,xmm3,xmm2
  a1dbf3:	62 f2 5d 28 7f c8    	vpermt2ps ymm1,ymm4,ymm0
  a1dbf9:	c5 fc 11 4e 40       	vmovups YMMWORD PTR [rsi+0x40],ymm1
  a1dbfe:	c5 f8 77             	vzeroupper
  a1dc01:	c3                   	ret
