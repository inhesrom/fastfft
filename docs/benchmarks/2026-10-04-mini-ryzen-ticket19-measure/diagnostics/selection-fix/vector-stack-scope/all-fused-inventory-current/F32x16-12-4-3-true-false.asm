
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a1ee00 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a1ee00:	c5 fb 10 47 10       	vmovsd xmm0,QWORD PTR [rdi+0x10]
  a1ee05:	c5 f8 10 0f          	vmovups xmm1,XMMWORD PTR [rdi]
  a1ee09:	c5 f8 10 57 18       	vmovups xmm2,XMMWORD PTR [rdi+0x18]
  a1ee0e:	c5 f8 10 5f 30       	vmovups xmm3,XMMWORD PTR [rdi+0x30]
  a1ee13:	c5 f8 10 67 48       	vmovups xmm4,XMMWORD PTR [rdi+0x48]
  a1ee18:	62 f3 75 48 18 c8 01 	vinsertf32x4 zmm1,zmm1,xmm0,0x1
  a1ee1f:	62 f1 7c 48 28 2d d7 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff670ed7]        # 8fd00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d1b0>
  a1ee26:	0e 67 ff 
  a1ee29:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  a1ee2d:	62 f1 7c 48 28 f1    	vmovaps zmm6,zmm1
  a1ee33:	62 f2 55 48 7f f0    	vpermt2ps zmm6,zmm5,zmm0
  a1ee39:	62 f1 7c 48 28 3d fd 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff670efd]        # 8fd40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d1f0>
  a1ee40:	0e 67 ff 
  a1ee43:	62 f2 45 48 7f c8    	vpermt2ps zmm1,zmm7,zmm0
  a1ee49:	c5 7b 10 47 28       	vmovsd xmm8,QWORD PTR [rdi+0x28]
  a1ee4e:	62 d3 6d 48 18 d0 01 	vinsertf32x4 zmm2,zmm2,xmm8,0x1
  a1ee55:	62 71 7c 48 28 c2    	vmovaps zmm8,zmm2
  a1ee5b:	62 72 55 48 7f c0    	vpermt2ps zmm8,zmm5,zmm0
  a1ee61:	62 f2 45 48 7f d0    	vpermt2ps zmm2,zmm7,zmm0
  a1ee67:	c5 7b 10 4f 40       	vmovsd xmm9,QWORD PTR [rdi+0x40]
  a1ee6c:	62 d3 65 48 18 d9 01 	vinsertf32x4 zmm3,zmm3,xmm9,0x1
  a1ee73:	62 71 7c 48 28 cb    	vmovaps zmm9,zmm3
  a1ee79:	62 72 55 48 7f c8    	vpermt2ps zmm9,zmm5,zmm0
  a1ee7f:	62 f2 45 48 7f d8    	vpermt2ps zmm3,zmm7,zmm0
  a1ee85:	c5 7b 10 57 58       	vmovsd xmm10,QWORD PTR [rdi+0x58]
  a1ee8a:	62 d3 5d 48 18 e2 01 	vinsertf32x4 zmm4,zmm4,xmm10,0x1
  a1ee91:	62 f2 5d 48 77 e8    	vpermi2ps zmm5,zmm4,zmm0
  a1ee97:	62 f2 45 48 7f e0    	vpermt2ps zmm4,zmm7,zmm0
  a1ee9d:	62 f1 74 48 58 fb    	vaddps zmm7,zmm1,zmm3
  a1eea3:	62 71 6c 48 58 d4    	vaddps zmm10,zmm2,zmm4
  a1eea9:	62 51 44 48 58 da    	vaddps zmm11,zmm7,zmm10
  a1eeaf:	62 51 4c 48 58 e1    	vaddps zmm12,zmm6,zmm9
  a1eeb5:	62 71 3c 48 58 ed    	vaddps zmm13,zmm8,zmm5
  a1eebb:	62 51 1c 48 58 f5    	vaddps zmm14,zmm12,zmm13
  a1eec1:	62 f1 74 48 5c cb    	vsubps zmm1,zmm1,zmm3
  a1eec7:	62 f1 3c 48 5c dd    	vsubps zmm3,zmm8,zmm5
  a1eecd:	62 f1 74 48 58 eb    	vaddps zmm5,zmm1,zmm3
  a1eed3:	62 d1 4c 48 5c f1    	vsubps zmm6,zmm6,zmm9
  a1eed9:	62 f1 5c 48 5c d2    	vsubps zmm2,zmm4,zmm2
  a1eedf:	62 f1 6c 48 58 e6    	vaddps zmm4,zmm2,zmm6
  a1eee5:	62 d1 44 48 5c fa    	vsubps zmm7,zmm7,zmm10
  a1eeeb:	62 51 1c 48 5c c5    	vsubps zmm8,zmm12,zmm13
  a1eef1:	62 f1 74 48 5c cb    	vsubps zmm1,zmm1,zmm3
  a1eef7:	62 f1 4c 48 5c d2    	vsubps zmm2,zmm6,zmm2
  a1eefd:	62 f1 7c 48 28 1d 79 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff6a8079]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a1ef04:	80 6a ff 
  a1ef07:	62 72 65 48 7f d8    	vpermt2ps zmm11,zmm3,zmm0
  a1ef0d:	62 f2 65 48 7f e8    	vpermt2ps zmm5,zmm3,zmm0
  a1ef13:	62 f2 65 48 7f f8    	vpermt2ps zmm7,zmm3,zmm0
  a1ef19:	62 f2 65 48 7f c8    	vpermt2ps zmm1,zmm3,zmm0
  a1ef1f:	c5 c8 57 f6          	vxorps xmm6,xmm6,xmm6
  a1ef23:	62 f2 65 48 7f f6    	vpermt2ps zmm6,zmm3,zmm6
  a1ef29:	62 71 7c 48 28 0d cd 	vmovaps zmm9,ZMMWORD PTR [rip+0xffffffffff6a7fcd]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a1ef30:	7f 6a ff 
  a1ef33:	62 72 35 48 7f de    	vpermt2ps zmm11,zmm9,zmm6
  a1ef39:	62 f2 35 48 7f ee    	vpermt2ps zmm5,zmm9,zmm6
  a1ef3f:	62 f2 35 48 7f fe    	vpermt2ps zmm7,zmm9,zmm6
  a1ef45:	62 f2 35 48 7f ce    	vpermt2ps zmm1,zmm9,zmm6
  a1ef4b:	62 71 a5 48 14 d7    	vunpcklpd zmm10,zmm11,zmm7
  a1ef51:	62 f1 a5 48 15 ff    	vunpckhpd zmm7,zmm11,zmm7
  a1ef57:	62 71 d5 48 14 d9    	vunpcklpd zmm11,zmm5,zmm1
  a1ef5d:	62 f1 d5 48 15 c9    	vunpckhpd zmm1,zmm5,zmm1
  a1ef63:	62 f1 7c 48 28 2d 93 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff6a7e93]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a1ef6a:	7e 6a ff 
  a1ef6d:	62 51 7c 48 28 e2    	vmovaps zmm12,zmm10
  a1ef73:	62 52 55 48 7f e3    	vpermt2ps zmm12,zmm5,zmm11
  a1ef79:	62 71 7c 48 28 2d bd 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff6a7ebd]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a1ef80:	7e 6a ff 
  a1ef83:	62 52 15 48 7f d3    	vpermt2ps zmm10,zmm13,zmm11
  a1ef89:	62 f2 55 48 7f f9    	vpermt2ps zmm7,zmm5,zmm1
  a1ef8f:	62 72 65 48 7f f0    	vpermt2ps zmm14,zmm3,zmm0
  a1ef95:	62 f2 65 48 7f e0    	vpermt2ps zmm4,zmm3,zmm0
  a1ef9b:	62 72 65 48 7f c0    	vpermt2ps zmm8,zmm3,zmm0
  a1efa1:	62 f2 65 48 7f d0    	vpermt2ps zmm2,zmm3,zmm0
  a1efa7:	62 72 35 48 7f f6    	vpermt2ps zmm14,zmm9,zmm6
  a1efad:	62 f2 35 48 7f e6    	vpermt2ps zmm4,zmm9,zmm6
  a1efb3:	62 72 35 48 7f c6    	vpermt2ps zmm8,zmm9,zmm6
  a1efb9:	62 f2 35 48 7f d6    	vpermt2ps zmm2,zmm9,zmm6
  a1efbf:	62 d1 8d 48 14 c0    	vunpcklpd zmm0,zmm14,zmm8
  a1efc5:	62 d1 8d 48 15 c8    	vunpckhpd zmm1,zmm14,zmm8
  a1efcb:	62 f1 dd 48 14 da    	vunpcklpd zmm3,zmm4,zmm2
  a1efd1:	62 f1 dd 48 15 d2    	vunpckhpd zmm2,zmm4,zmm2
  a1efd7:	62 f1 7c 48 28 e0    	vmovaps zmm4,zmm0
  a1efdd:	62 f2 55 48 7f e3    	vpermt2ps zmm4,zmm5,zmm3
  a1efe3:	62 f2 15 48 7f c3    	vpermt2ps zmm0,zmm13,zmm3
  a1efe9:	62 f2 55 48 7f ca    	vpermt2ps zmm1,zmm5,zmm2
  a1efef:	62 f1 7c 48 10 52 02 	vmovups zmm2,ZMMWORD PTR [rdx+0x80]
  a1eff6:	62 f1 7c 48 10 5a 03 	vmovups zmm3,ZMMWORD PTR [rdx+0xc0]
  a1effd:	62 f1 7c 48 10 6a 04 	vmovups zmm5,ZMMWORD PTR [rdx+0x100]
  a1f004:	62 f1 7c 48 10 72 05 	vmovups zmm6,ZMMWORD PTR [rdx+0x140]
  a1f00b:	62 71 2c 48 59 c2    	vmulps zmm8,zmm10,zmm2
  a1f011:	62 72 7d 48 bc c3    	vfnmadd231ps zmm8,zmm0,zmm3
  a1f017:	62 71 44 48 59 cd    	vmulps zmm9,zmm7,zmm5
  a1f01d:	62 72 75 48 bc ce    	vfnmadd231ps zmm9,zmm1,zmm6
  a1f023:	62 51 3c 48 58 d9    	vaddps zmm11,zmm8,zmm9
  a1f029:	62 f1 7c 48 59 c2    	vmulps zmm0,zmm0,zmm2
  a1f02f:	62 d2 65 48 b8 c2    	vfmadd231ps zmm0,zmm3,zmm10
  a1f035:	62 f1 74 48 59 cd    	vmulps zmm1,zmm1,zmm5
  a1f03b:	62 f2 4d 48 b8 cf    	vfmadd231ps zmm1,zmm6,zmm7
  a1f041:	62 f1 7c 48 58 d1    	vaddps zmm2,zmm0,zmm1
  a1f047:	62 f2 7d 48 18 1d 0f 	vbroadcastss zmm3,DWORD PTR [rip+0xffffffffff65640f]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a1f04e:	64 65 ff 
  a1f051:	62 f1 7c 48 28 eb    	vmovaps zmm5,zmm3
  a1f057:	62 d2 25 48 ac ec    	vfnmadd213ps zmm5,zmm11,zmm12
  a1f05d:	62 f2 6d 48 ac dc    	vfnmadd213ps zmm3,zmm2,zmm4
  a1f063:	c4 c1 1c 58 f3       	vaddps ymm6,ymm12,ymm11
  a1f068:	c5 d8 58 d2          	vaddps xmm2,xmm4,xmm2
  a1f06c:	c5 fc 28 25 6c 81 65 	vmovaps ymm4,YMMWORD PTR [rip+0xffffffffff65816c]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  a1f073:	ff 
  a1f074:	62 f2 5d 28 7f d6    	vpermt2ps ymm2,ymm4,ymm6
  a1f07a:	c5 fc 11 16          	vmovups YMMWORD PTR [rsi],ymm2
  a1f07e:	c4 e2 7d 18 15 4d 62 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff65624d]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a1f085:	65 ff 
  a1f087:	c5 fc 5c c1          	vsubps ymm0,ymm0,ymm1
  a1f08b:	c5 fc 59 c2          	vmulps ymm0,ymm0,ymm2
  a1f08f:	c5 d4 58 c8          	vaddps ymm1,ymm5,ymm0
  a1f093:	c4 c1 3c 5c f1       	vsubps ymm6,ymm8,ymm9
  a1f098:	c5 cc 59 d2          	vmulps ymm2,ymm6,ymm2
  a1f09c:	c5 e0 5c f2          	vsubps xmm6,xmm3,xmm2
  a1f0a0:	62 f2 5d 28 7f f1    	vpermt2ps ymm6,ymm4,ymm1
  a1f0a6:	c5 fc 11 76 20       	vmovups YMMWORD PTR [rsi+0x20],ymm6
  a1f0ab:	c5 d4 5c c0          	vsubps ymm0,ymm5,ymm0
  a1f0af:	c5 e0 58 ca          	vaddps xmm1,xmm3,xmm2
  a1f0b3:	62 f2 5d 28 7f c8    	vpermt2ps ymm1,ymm4,ymm0
  a1f0b9:	c5 fc 11 4e 40       	vmovups YMMWORD PTR [rsi+0x40],ymm1
  a1f0be:	c5 f8 77             	vzeroupper
  a1f0c1:	c3                   	ret
