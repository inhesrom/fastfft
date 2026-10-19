
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

000000000095a840 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  95a840:	62 f1 fd 48 10 1f    	vmovupd zmm3,ZMMWORD PTR [rdi]
  95a846:	c5 fd 10 47 40       	vmovupd ymm0,YMMWORD PTR [rdi+0x40]
  95a84b:	62 f1 fd 48 28 2d 2b 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff72a82b]        # 85080 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x12530>
  95a852:	a8 72 ff 
  95a855:	62 f1 fd 48 28 f3    	vmovapd zmm6,zmm3
  95a85b:	62 f2 d5 48 7f f0    	vpermt2pd zmm6,zmm5,zmm0
  95a861:	62 f1 fd 48 28 0d 55 	vmovapd zmm1,ZMMWORD PTR [rip+0xffffffffff72a855]        # 850c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x12570>
  95a868:	a8 72 ff 
  95a86b:	62 f2 f5 48 7f d8    	vpermt2pd zmm3,zmm1,zmm0
  95a871:	62 f1 fd 48 10 bf 60 	vmovupd zmm7,ZMMWORD PTR [rdi+0x60]
  95a878:	00 00 00 
  95a87b:	c5 fd 10 87 a0 00 00 	vmovupd ymm0,YMMWORD PTR [rdi+0xa0]
  95a882:	00 
  95a883:	62 71 fd 48 28 cf    	vmovapd zmm9,zmm7
  95a889:	62 72 d5 48 7f c8    	vpermt2pd zmm9,zmm5,zmm0
  95a88f:	62 f2 f5 48 7f f8    	vpermt2pd zmm7,zmm1,zmm0
  95a895:	62 71 fd 48 10 47 03 	vmovupd zmm8,ZMMWORD PTR [rdi+0xc0]
  95a89c:	c5 fd 10 87 00 01 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x100]
  95a8a3:	00 
  95a8a4:	62 f2 bd 48 77 e8    	vpermi2pd zmm5,zmm8,zmm0
  95a8aa:	62 72 f5 48 7f c0    	vpermt2pd zmm8,zmm1,zmm0
  95a8b0:	62 f1 b5 48 58 c5    	vaddpd zmm0,zmm9,zmm5
  95a8b6:	62 f1 cd 48 58 e0    	vaddpd zmm4,zmm6,zmm0
  95a8bc:	62 51 c5 48 58 d0    	vaddpd zmm10,zmm7,zmm8
  95a8c2:	62 f2 fd 48 19 0d cc 	vbroadcastsd zmm1,QWORD PTR [rip+0xffffffffff71a1cc]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  95a8c9:	a1 71 ff 
  95a8cc:	62 d1 e5 48 58 d2    	vaddpd zmm2,zmm3,zmm10
  95a8d2:	62 f2 f5 48 bc f0    	vfnmadd231pd zmm6,zmm1,zmm0
  95a8d8:	62 f2 fd 48 19 05 3e 	vbroadcastsd zmm0,QWORD PTR [rip+0xffffffffff71a33e]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  95a8df:	a3 71 ff 
  95a8e2:	62 d1 c5 48 5c f8    	vsubpd zmm7,zmm7,zmm8
  95a8e8:	62 f1 c5 48 59 f8    	vmulpd zmm7,zmm7,zmm0
  95a8ee:	62 71 cd 48 58 c7    	vaddpd zmm8,zmm6,zmm7
  95a8f4:	62 d2 f5 48 bc da    	vfnmadd231pd zmm3,zmm1,zmm10
  95a8fa:	62 f1 b5 48 5c ed    	vsubpd zmm5,zmm9,zmm5
  95a900:	62 71 d5 48 59 c8    	vmulpd zmm9,zmm5,zmm0
  95a906:	62 d1 e5 48 5c e9    	vsubpd zmm5,zmm3,zmm9
  95a90c:	62 f1 cd 48 5c f7    	vsubpd zmm6,zmm6,zmm7
  95a912:	62 f1 b5 48 58 fb    	vaddpd zmm7,zmm9,zmm3
  95a918:	62 71 fd 48 10 15 46 	vmovupd zmm10,ZMMWORD PTR [rip+0xffffffffff76c446]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  95a91f:	c4 76 ff 
  95a922:	c5 e1 57 db          	vxorpd xmm3,xmm3,xmm3
  95a926:	62 71 fd 48 28 cc    	vmovapd zmm9,zmm4
  95a92c:	62 72 ad 48 7f cb    	vpermt2pd zmm9,zmm10,zmm3
  95a932:	62 71 fd 48 10 1d 6c 	vmovupd zmm11,ZMMWORD PTR [rip+0xffffffffff76c46c]        # c6da8 <crc32fast::table::CRC32_TABLE+0x9124>
  95a939:	c4 76 ff 
  95a93c:	62 f2 a5 48 7f e3    	vpermt2pd zmm4,zmm11,zmm3
  95a942:	62 51 fd 48 28 e0    	vmovapd zmm12,zmm8
  95a948:	62 72 ad 48 7f e3    	vpermt2pd zmm12,zmm10,zmm3
  95a94e:	62 72 a5 48 7f c3    	vpermt2pd zmm8,zmm11,zmm3
  95a954:	62 71 fd 48 28 ee    	vmovapd zmm13,zmm6
  95a95a:	62 72 ad 48 7f eb    	vpermt2pd zmm13,zmm10,zmm3
  95a960:	62 f2 a5 48 7f f3    	vpermt2pd zmm6,zmm11,zmm3
  95a966:	c4 41 09 57 f6       	vxorpd xmm14,xmm14,xmm14
  95a96b:	62 52 ad 48 7f f6    	vpermt2pd zmm14,zmm10,zmm14
  95a971:	c4 41 01 57 ff       	vxorpd xmm15,xmm15,xmm15
  95a976:	62 52 a5 48 7f ff    	vpermt2pd zmm15,zmm11,zmm15
  95a97c:	62 e1 fd 48 10 05 62 	vmovupd zmm16,ZMMWORD PTR [rip+0xffffffffff76c362]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  95a983:	c3 76 ff 
  95a986:	62 e1 fd 48 28 ca    	vmovapd zmm17,zmm2
  95a98c:	62 e2 ad 48 7f cb    	vpermt2pd zmm17,zmm10,zmm3
  95a992:	62 f2 a5 48 7f d3    	vpermt2pd zmm2,zmm11,zmm3
  95a998:	62 e1 fd 48 28 d5    	vmovapd zmm18,zmm5
  95a99e:	62 e2 ad 48 7f d3    	vpermt2pd zmm18,zmm10,zmm3
  95a9a4:	62 f2 a5 48 7f eb    	vpermt2pd zmm5,zmm11,zmm3
  95a9aa:	62 72 c5 48 77 d3    	vpermi2pd zmm10,zmm7,zmm3
  95a9b0:	62 f2 a5 48 7f fb    	vpermt2pd zmm7,zmm11,zmm3
  95a9b6:	62 51 fd 48 28 d9    	vmovapd zmm11,zmm9
  95a9bc:	62 52 fd 40 7f dd    	vpermt2pd zmm11,zmm16,zmm13
  95a9c2:	62 e1 fd 48 10 1d 5c 	vmovupd zmm19,ZMMWORD PTR [rip+0xffffffffff76c35c]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  95a9c9:	c3 76 ff 
  95a9cc:	62 52 e5 40 7f cd    	vpermt2pd zmm9,zmm19,zmm13
  95a9d2:	62 51 fd 48 28 ec    	vmovapd zmm13,zmm12
  95a9d8:	62 52 fd 40 7f ee    	vpermt2pd zmm13,zmm16,zmm14
  95a9de:	62 52 e5 40 7f e6    	vpermt2pd zmm12,zmm19,zmm14
  95a9e4:	62 f2 fd 40 7f e6    	vpermt2pd zmm4,zmm16,zmm6
  95a9ea:	62 52 fd 40 7f c7    	vpermt2pd zmm8,zmm16,zmm15
  95a9f0:	62 d1 a5 48 14 dd    	vunpcklpd zmm3,zmm11,zmm13
  95a9f6:	62 d1 a5 48 15 f5    	vunpckhpd zmm6,zmm11,zmm13
  95a9fc:	62 51 b5 48 14 dc    	vunpcklpd zmm11,zmm9,zmm12
  95aa02:	62 51 b5 48 15 cc    	vunpckhpd zmm9,zmm9,zmm12
  95aa08:	62 51 dd 48 14 e0    	vunpcklpd zmm12,zmm4,zmm8
  95aa0e:	62 51 dd 48 15 c0    	vunpckhpd zmm8,zmm4,zmm8
  95aa14:	62 31 fd 48 28 e9    	vmovapd zmm13,zmm17
  95aa1a:	62 52 fd 40 7f ea    	vpermt2pd zmm13,zmm16,zmm10
  95aa20:	62 c2 e5 40 7f ca    	vpermt2pd zmm17,zmm19,zmm10
  95aa26:	62 31 fd 48 28 d2    	vmovapd zmm10,zmm18
  95aa2c:	62 52 fd 40 7f d6    	vpermt2pd zmm10,zmm16,zmm14
  95aa32:	62 c2 e5 40 7f d6    	vpermt2pd zmm18,zmm19,zmm14
  95aa38:	62 f2 fd 40 7f d7    	vpermt2pd zmm2,zmm16,zmm7
  95aa3e:	62 d2 fd 40 7f ef    	vpermt2pd zmm5,zmm16,zmm15
  95aa44:	62 d1 95 48 14 e2    	vunpcklpd zmm4,zmm13,zmm10
  95aa4a:	62 d1 95 48 15 fa    	vunpckhpd zmm7,zmm13,zmm10
  95aa50:	62 31 f5 40 14 d2    	vunpcklpd zmm10,zmm17,zmm18
  95aa56:	62 31 f5 40 15 ea    	vunpckhpd zmm13,zmm17,zmm18
  95aa5c:	62 71 ed 48 14 f5    	vunpcklpd zmm14,zmm2,zmm5
  95aa62:	62 f1 ed 48 15 ed    	vunpckhpd zmm5,zmm2,zmm5
  95aa68:	62 71 fd 48 10 7a 02 	vmovupd zmm15,ZMMWORD PTR [rdx+0x80]
  95aa6f:	62 e1 fd 48 10 42 03 	vmovupd zmm16,ZMMWORD PTR [rdx+0xc0]
  95aa76:	62 e1 fd 48 10 4a 04 	vmovupd zmm17,ZMMWORD PTR [rdx+0x100]
  95aa7d:	62 e1 fd 48 10 52 05 	vmovupd zmm18,ZMMWORD PTR [rdx+0x140]
  95aa84:	62 b1 a5 48 59 d1    	vmulpd zmm2,zmm11,zmm17
  95aa8a:	62 b2 ad 48 bc d2    	vfnmadd231pd zmm2,zmm10,zmm18
  95aa90:	62 31 ad 48 59 d1    	vmulpd zmm10,zmm10,zmm17
  95aa96:	62 e1 fd 48 10 4a 08 	vmovupd zmm17,ZMMWORD PTR [rdx+0x200]
  95aa9d:	62 32 a5 48 b8 d2    	vfmadd231pd zmm10,zmm11,zmm18
  95aaa3:	62 71 fd 48 10 5a 09 	vmovupd zmm11,ZMMWORD PTR [rdx+0x240]
  95aaaa:	62 a1 9d 48 59 d1    	vmulpd zmm18,zmm12,zmm17
  95aab0:	62 c2 8d 48 bc d3    	vfnmadd231pd zmm18,zmm14,zmm11
  95aab6:	62 31 8d 48 59 f1    	vmulpd zmm14,zmm14,zmm17
  95aabc:	62 e1 fd 48 10 4a 06 	vmovupd zmm17,ZMMWORD PTR [rdx+0x180]
  95aac3:	62 52 9d 48 b8 f3    	vfmadd231pd zmm14,zmm12,zmm11
  95aac9:	62 71 fd 48 10 5a 07 	vmovupd zmm11,ZMMWORD PTR [rdx+0x1c0]
  95aad0:	62 31 b5 48 59 e1    	vmulpd zmm12,zmm9,zmm17
  95aad6:	62 52 95 48 bc e3    	vfnmadd231pd zmm12,zmm13,zmm11
  95aadc:	62 31 95 48 59 e9    	vmulpd zmm13,zmm13,zmm17
  95aae2:	62 e1 fd 48 10 4a 0a 	vmovupd zmm17,ZMMWORD PTR [rdx+0x280]
  95aae9:	62 52 b5 48 b8 eb    	vfmadd231pd zmm13,zmm9,zmm11
  95aaef:	62 71 fd 48 10 4a 0b 	vmovupd zmm9,ZMMWORD PTR [rdx+0x2c0]
  95aaf6:	62 31 bd 48 59 d9    	vmulpd zmm11,zmm8,zmm17
  95aafc:	62 52 d5 48 bc d9    	vfnmadd231pd zmm11,zmm5,zmm9
  95ab02:	62 b1 d5 48 59 e9    	vmulpd zmm5,zmm5,zmm17
  95ab08:	62 a1 ed 48 58 ca    	vaddpd zmm17,zmm2,zmm18
  95ab0e:	62 d2 bd 48 b8 e9    	vfmadd231pd zmm5,zmm8,zmm9
  95ab14:	62 31 e5 48 58 c1    	vaddpd zmm8,zmm3,zmm17
  95ab1a:	62 51 cd 48 59 cf    	vmulpd zmm9,zmm6,zmm15
  95ab20:	62 32 c5 48 bc c8    	vfnmadd231pd zmm9,zmm7,zmm16
  95ab26:	62 d1 c5 48 59 ff    	vmulpd zmm7,zmm7,zmm15
  95ab2c:	62 51 a5 48 58 f9    	vaddpd zmm15,zmm11,zmm9
  95ab32:	62 b2 cd 48 b8 f8    	vfmadd231pd zmm7,zmm6,zmm16
  95ab38:	62 d1 9d 48 58 f7    	vaddpd zmm6,zmm12,zmm15
  95ab3e:	62 c1 ad 48 58 c6    	vaddpd zmm16,zmm10,zmm14
  95ab44:	62 e2 f5 48 ac cb    	vfnmadd213pd zmm17,zmm1,zmm3
  95ab4a:	62 f1 fd 40 58 dc    	vaddpd zmm3,zmm16,zmm4
  95ab50:	62 52 f5 48 bc e7    	vfnmadd231pd zmm12,zmm1,zmm15
  95ab56:	62 71 d5 48 58 ff    	vaddpd zmm15,zmm5,zmm7
  95ab5c:	62 e2 f5 48 ac c4    	vfnmadd213pd zmm16,zmm1,zmm4
  95ab62:	62 d1 95 48 58 e7    	vaddpd zmm4,zmm13,zmm15
  95ab68:	62 72 85 48 bc e9    	vfnmadd231pd zmm13,zmm15,zmm1
  95ab6e:	62 d1 ad 48 5c ce    	vsubpd zmm1,zmm10,zmm14
  95ab74:	62 f1 d5 48 5c ef    	vsubpd zmm5,zmm5,zmm7
  95ab7a:	62 b1 ed 48 5c d2    	vsubpd zmm2,zmm2,zmm18
  95ab80:	62 d1 a5 48 5c f9    	vsubpd zmm7,zmm11,zmm9
  95ab86:	62 f1 f5 48 59 c8    	vmulpd zmm1,zmm1,zmm0
  95ab8c:	62 f1 d5 48 59 e8    	vmulpd zmm5,zmm5,zmm0
  95ab92:	62 f1 ed 48 59 d0    	vmulpd zmm2,zmm2,zmm0
  95ab98:	62 f1 c5 48 59 c0    	vmulpd zmm0,zmm7,zmm0
  95ab9e:	62 f1 f5 40 58 f9    	vaddpd zmm7,zmm17,zmm1
  95aba4:	62 f1 f5 40 5c c9    	vsubpd zmm1,zmm17,zmm1
  95abaa:	62 71 9d 48 58 cd    	vaddpd zmm9,zmm12,zmm5
  95abb0:	62 f1 9d 48 5c ed    	vsubpd zmm5,zmm12,zmm5
  95abb6:	62 71 fd 40 5c d2    	vsubpd zmm10,zmm16,zmm2
  95abbc:	62 b1 ed 48 58 d0    	vaddpd zmm2,zmm2,zmm16
  95abc2:	62 71 95 48 5c d8    	vsubpd zmm11,zmm13,zmm0
  95abc8:	62 f1 95 48 58 c0    	vaddpd zmm0,zmm13,zmm0
  95abce:	62 51 c5 48 5c e1    	vsubpd zmm12,zmm7,zmm9
  95abd4:	62 d1 c5 48 58 f9    	vaddpd zmm7,zmm7,zmm9
  95abda:	62 51 ad 48 5c cb    	vsubpd zmm9,zmm10,zmm11
  95abe0:	62 51 ad 48 58 d3    	vaddpd zmm10,zmm10,zmm11
  95abe6:	62 71 f5 48 58 dd    	vaddpd zmm11,zmm1,zmm5
  95abec:	62 f1 f5 48 5c cd    	vsubpd zmm1,zmm1,zmm5
  95abf2:	62 f1 ed 48 58 e8    	vaddpd zmm5,zmm2,zmm0
  95abf8:	62 f1 ed 48 5c c0    	vsubpd zmm0,zmm2,zmm0
  95abfe:	62 f1 bd 48 5c d6    	vsubpd zmm2,zmm8,zmm6
  95ac04:	62 f1 bd 48 58 f6    	vaddpd zmm6,zmm8,zmm6
  95ac0a:	62 71 e5 48 5c c4    	vsubpd zmm8,zmm3,zmm4
  95ac10:	62 f1 e5 48 58 dc    	vaddpd zmm3,zmm3,zmm4
  95ac16:	62 f1 fd 48 28 25 e0 	vmovapd zmm4,ZMMWORD PTR [rip+0xffffffffff72a4e0]        # 85100 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x125b0>
  95ac1d:	a4 72 ff 
  95ac20:	62 f2 dd 48 7f f3    	vpermt2pd zmm6,zmm4,zmm3
  95ac26:	62 52 dd 48 7f e1    	vpermt2pd zmm12,zmm4,zmm9
  95ac2c:	62 72 dd 48 7f dd    	vpermt2pd zmm11,zmm4,zmm5
  95ac32:	62 d2 dd 48 7f d0    	vpermt2pd zmm2,zmm4,zmm8
  95ac38:	62 d2 dd 48 7f fa    	vpermt2pd zmm7,zmm4,zmm10
  95ac3e:	62 f2 dd 48 7f c8    	vpermt2pd zmm1,zmm4,zmm0
  95ac44:	62 f3 7d 48 19 76 02 	vextractf32x4 XMMWORD PTR [rsi+0x20],zmm6,0x2
  95ac4b:	02 
  95ac4c:	c5 fd 11 36          	vmovupd YMMWORD PTR [rsi],ymm6
  95ac50:	62 73 7d 48 19 66 05 	vextractf32x4 XMMWORD PTR [rsi+0x50],zmm12,0x2
  95ac57:	02 
  95ac58:	c5 7d 11 66 30       	vmovupd YMMWORD PTR [rsi+0x30],ymm12
  95ac5d:	62 73 7d 48 19 5e 08 	vextractf32x4 XMMWORD PTR [rsi+0x80],zmm11,0x2
  95ac64:	02 
  95ac65:	c5 7d 11 5e 60       	vmovupd YMMWORD PTR [rsi+0x60],ymm11
  95ac6a:	62 f3 7d 48 19 56 0b 	vextractf32x4 XMMWORD PTR [rsi+0xb0],zmm2,0x2
  95ac71:	02 
  95ac72:	c5 fd 11 96 90 00 00 	vmovupd YMMWORD PTR [rsi+0x90],ymm2
  95ac79:	00 
  95ac7a:	62 f3 7d 48 19 7e 0e 	vextractf32x4 XMMWORD PTR [rsi+0xe0],zmm7,0x2
  95ac81:	02 
  95ac82:	c5 fd 11 be c0 00 00 	vmovupd YMMWORD PTR [rsi+0xc0],ymm7
  95ac89:	00 
  95ac8a:	62 f3 7d 48 19 4e 11 	vextractf32x4 XMMWORD PTR [rsi+0x110],zmm1,0x2
  95ac91:	02 
  95ac92:	c5 fd 11 8e f0 00 00 	vmovupd YMMWORD PTR [rsi+0xf0],ymm1
  95ac99:	00 
  95ac9a:	c5 f8 77             	vzeroupper
  95ac9d:	c3                   	ret
