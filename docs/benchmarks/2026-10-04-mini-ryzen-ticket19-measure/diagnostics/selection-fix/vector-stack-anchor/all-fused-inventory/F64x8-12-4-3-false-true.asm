
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000968980 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  968980:	62 f1 fd 48 10 05 de 	vmovupd zmm0,ZMMWORD PTR [rip+0xffffffffff75e3de]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  968987:	e3 75 ff 
  96898a:	62 f1 fd 48 10 0d 54 	vmovupd zmm1,ZMMWORD PTR [rip+0xffffffffff75e354]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  968991:	e3 75 ff 
  968994:	62 f1 fd 48 10 15 8a 	vmovupd zmm2,ZMMWORD PTR [rip+0xffffffffff75e38a]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  96899b:	e3 75 ff 
  96899e:	48 c1 e2 06          	shl    rdx,0x6
  9689a2:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  9689a6:	31 d2                	xor    edx,edx
  9689a8:	62 f1 fd 48 28 1d 4e 	vmovapd zmm3,ZMMWORD PTR [rip+0xffffffffff71d84e]        # 86200 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x136b0>
  9689af:	d8 71 ff 
  9689b2:	c5 d9 57 e4          	vxorpd xmm4,xmm4,xmm4
  9689b6:	62 e2 fd 48 19 05 d8 	vbroadcastsd zmm16,QWORD PTR [rip+0xffffffffff70c0d8]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  9689bd:	c0 70 ff 
  9689c0:	62 f1 fd 48 28 35 76 	vmovapd zmm6,ZMMWORD PTR [rip+0xffffffffff71d876]        # 86240 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x136f0>
  9689c7:	d8 71 ff 
  9689ca:	62 f2 fd 48 19 3d 4c 	vbroadcastsd zmm7,QWORD PTR [rip+0xffffffffff70c24c]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  9689d1:	c2 70 ff 
  9689d4:	62 71 fd 48 28 05 a2 	vmovapd zmm8,ZMMWORD PTR [rip+0xffffffffff71d8a2]        # 86280 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x13730>
  9689db:	d8 71 ff 
  9689de:	66 90                	xchg   ax,ax
  9689e0:	c5 7b 12 4c 17 28    	vmovddup xmm9,QWORD PTR [rdi+rdx*1+0x28]
  9689e6:	c4 63 31 0d 4c 17 20 	vblendpd xmm9,xmm9,XMMWORD PTR [rdi+rdx*1+0x20],0x1
  9689ed:	01 
  9689ee:	c5 7d 10 14 17       	vmovupd ymm10,YMMWORD PTR [rdi+rdx*1]
  9689f3:	c5 7d 10 5c 17 30    	vmovupd ymm11,YMMWORD PTR [rdi+rdx*1+0x30]
  9689f9:	c5 7d 10 64 17 60    	vmovupd ymm12,YMMWORD PTR [rdi+rdx*1+0x60]
  9689ff:	c5 7d 10 ac 17 90 00 	vmovupd ymm13,YMMWORD PTR [rdi+rdx*1+0x90]
  968a06:	00 00 
  968a08:	62 53 2d 48 18 c9 02 	vinsertf32x4 zmm9,zmm10,xmm9,0x2
  968a0f:	62 51 fd 48 28 d1    	vmovapd zmm10,zmm9
  968a15:	62 72 e5 48 7f d4    	vpermt2pd zmm10,zmm3,zmm4
  968a1b:	62 72 cd 48 7f cc    	vpermt2pd zmm9,zmm6,zmm4
  968a21:	c5 7b 12 74 17 58    	vmovddup xmm14,QWORD PTR [rdi+rdx*1+0x58]
  968a27:	c4 63 09 0d 74 17 50 	vblendpd xmm14,xmm14,XMMWORD PTR [rdi+rdx*1+0x50],0x1
  968a2e:	01 
  968a2f:	62 53 25 48 18 de 02 	vinsertf32x4 zmm11,zmm11,xmm14,0x2
  968a36:	62 51 fd 48 28 f3    	vmovapd zmm14,zmm11
  968a3c:	62 72 e5 48 7f f4    	vpermt2pd zmm14,zmm3,zmm4
  968a42:	62 72 cd 48 7f dc    	vpermt2pd zmm11,zmm6,zmm4
  968a48:	c5 7b 12 bc 17 88 00 	vmovddup xmm15,QWORD PTR [rdi+rdx*1+0x88]
  968a4f:	00 00 
  968a51:	c4 63 01 0d bc 17 80 	vblendpd xmm15,xmm15,XMMWORD PTR [rdi+rdx*1+0x80],0x1
  968a58:	00 00 00 01 
  968a5c:	62 53 1d 48 18 e7 02 	vinsertf32x4 zmm12,zmm12,xmm15,0x2
  968a63:	62 51 fd 48 28 fc    	vmovapd zmm15,zmm12
  968a69:	62 72 e5 48 7f fc    	vpermt2pd zmm15,zmm3,zmm4
  968a6f:	62 72 cd 48 7f e4    	vpermt2pd zmm12,zmm6,zmm4
  968a75:	c5 fb 12 ac 17 b8 00 	vmovddup xmm5,QWORD PTR [rdi+rdx*1+0xb8]
  968a7c:	00 00 
  968a7e:	c4 e3 51 0d ac 17 b0 	vblendpd xmm5,xmm5,XMMWORD PTR [rdi+rdx*1+0xb0],0x1
  968a85:	00 00 00 01 
  968a89:	62 f3 15 48 18 ed 02 	vinsertf32x4 zmm5,zmm13,xmm5,0x2
  968a90:	62 71 fd 48 28 ed    	vmovapd zmm13,zmm5
  968a96:	62 72 e5 48 7f ec    	vpermt2pd zmm13,zmm3,zmm4
  968a9c:	62 f2 cd 48 7f ec    	vpermt2pd zmm5,zmm6,zmm4
  968aa2:	62 c1 ad 48 58 cf    	vaddpd zmm17,zmm10,zmm15
  968aa8:	62 c1 8d 48 58 d5    	vaddpd zmm18,zmm14,zmm13
  968aae:	62 a1 f5 40 58 da    	vaddpd zmm19,zmm17,zmm18
  968ab4:	62 c1 b5 48 58 e4    	vaddpd zmm20,zmm9,zmm12
  968aba:	62 e1 a5 48 58 ed    	vaddpd zmm21,zmm11,zmm5
  968ac0:	62 a1 dd 40 58 f5    	vaddpd zmm22,zmm20,zmm21
  968ac6:	62 51 ad 48 5c d7    	vsubpd zmm10,zmm10,zmm15
  968acc:	62 f1 a5 48 5c ed    	vsubpd zmm5,zmm11,zmm5
  968ad2:	62 71 ad 48 58 dd    	vaddpd zmm11,zmm10,zmm5
  968ad8:	62 51 b5 48 5c cc    	vsubpd zmm9,zmm9,zmm12
  968ade:	62 51 95 48 5c e6    	vsubpd zmm12,zmm13,zmm14
  968ae4:	62 51 9d 48 58 e9    	vaddpd zmm13,zmm12,zmm9
  968aea:	62 31 f5 40 5c f2    	vsubpd zmm14,zmm17,zmm18
  968af0:	62 31 dd 40 5c fd    	vsubpd zmm15,zmm20,zmm21
  968af6:	62 f1 ad 48 5c ed    	vsubpd zmm5,zmm10,zmm5
  968afc:	62 51 b5 48 5c cc    	vsubpd zmm9,zmm9,zmm12
  968b02:	62 e2 fd 48 7f dc    	vpermt2pd zmm19,zmm0,zmm4
  968b08:	62 72 fd 48 7f dc    	vpermt2pd zmm11,zmm0,zmm4
  968b0e:	62 72 fd 48 7f f4    	vpermt2pd zmm14,zmm0,zmm4
  968b14:	62 f2 fd 48 7f ec    	vpermt2pd zmm5,zmm0,zmm4
  968b1a:	62 31 fd 48 28 d3    	vmovapd zmm10,zmm19
  968b20:	62 52 f5 48 7f d6    	vpermt2pd zmm10,zmm1,zmm14
  968b26:	62 c2 ed 48 7f de    	vpermt2pd zmm19,zmm2,zmm14
  968b2c:	62 51 fd 48 28 e3    	vmovapd zmm12,zmm11
  968b32:	62 72 f5 48 7f e5    	vpermt2pd zmm12,zmm1,zmm5
  968b38:	62 72 ed 48 7f dd    	vpermt2pd zmm11,zmm2,zmm5
  968b3e:	62 d1 e5 40 14 eb    	vunpcklpd zmm5,zmm19,zmm11
  968b44:	62 51 ad 48 14 dc    	vunpcklpd zmm11,zmm10,zmm12
  968b4a:	62 51 ad 48 15 d4    	vunpckhpd zmm10,zmm10,zmm12
  968b50:	62 e2 fd 48 7f f4    	vpermt2pd zmm22,zmm0,zmm4
  968b56:	62 72 fd 48 7f ec    	vpermt2pd zmm13,zmm0,zmm4
  968b5c:	62 72 fd 48 7f fc    	vpermt2pd zmm15,zmm0,zmm4
  968b62:	62 72 fd 48 7f cc    	vpermt2pd zmm9,zmm0,zmm4
  968b68:	62 31 fd 48 28 e6    	vmovapd zmm12,zmm22
  968b6e:	62 52 f5 48 7f e7    	vpermt2pd zmm12,zmm1,zmm15
  968b74:	62 c2 ed 48 7f f7    	vpermt2pd zmm22,zmm2,zmm15
  968b7a:	62 51 fd 48 28 f5    	vmovapd zmm14,zmm13
  968b80:	62 52 f5 48 7f f1    	vpermt2pd zmm14,zmm1,zmm9
  968b86:	62 52 ed 48 7f e9    	vpermt2pd zmm13,zmm2,zmm9
  968b8c:	62 51 cd 40 14 cd    	vunpcklpd zmm9,zmm22,zmm13
  968b92:	62 51 9d 48 14 ee    	vunpcklpd zmm13,zmm12,zmm14
  968b98:	62 51 9d 48 15 e6    	vunpckhpd zmm12,zmm12,zmm14
  968b9e:	62 71 fd 48 10 71 02 	vmovupd zmm14,ZMMWORD PTR [rcx+0x80]
  968ba5:	62 71 fd 48 10 79 03 	vmovupd zmm15,ZMMWORD PTR [rcx+0xc0]
  968bac:	62 e1 fd 48 10 49 04 	vmovupd zmm17,ZMMWORD PTR [rcx+0x100]
  968bb3:	62 e1 fd 48 10 51 05 	vmovupd zmm18,ZMMWORD PTR [rcx+0x140]
  968bba:	62 c1 ad 48 59 de    	vmulpd zmm19,zmm10,zmm14
  968bc0:	62 c2 9d 48 bc df    	vfnmadd231pd zmm19,zmm12,zmm15
  968bc6:	62 a1 d5 48 59 e1    	vmulpd zmm20,zmm5,zmm17
  968bcc:	62 a2 b5 48 bc e2    	vfnmadd231pd zmm20,zmm9,zmm18
  968bd2:	62 a1 e5 40 58 ec    	vaddpd zmm21,zmm19,zmm20
  968bd8:	62 51 9d 48 59 e6    	vmulpd zmm12,zmm12,zmm14
  968bde:	62 52 ad 48 b8 e7    	vfmadd231pd zmm12,zmm10,zmm15
  968be4:	62 31 b5 48 59 c9    	vmulpd zmm9,zmm9,zmm17
  968bea:	62 32 d5 48 b8 ca    	vfmadd231pd zmm9,zmm5,zmm18
  968bf0:	62 d1 9d 48 58 e9    	vaddpd zmm5,zmm12,zmm9
  968bf6:	62 31 fd 48 28 d0    	vmovapd zmm10,zmm16
  968bfc:	62 52 d5 40 ac d3    	vfnmadd213pd zmm10,zmm21,zmm11
  968c02:	62 51 9d 48 5c c9    	vsubpd zmm9,zmm12,zmm9
  968c08:	62 71 b5 48 59 cf    	vmulpd zmm9,zmm9,zmm7
  968c0e:	62 51 ad 48 58 e1    	vaddpd zmm12,zmm10,zmm9
  968c14:	62 31 fd 48 28 f0    	vmovapd zmm14,zmm16
  968c1a:	62 52 d5 48 ac f5    	vfnmadd213pd zmm14,zmm5,zmm13
  968c20:	62 31 e5 40 5c fc    	vsubpd zmm15,zmm19,zmm20
  968c26:	62 71 85 48 59 ff    	vmulpd zmm15,zmm15,zmm7
  968c2c:	62 c1 8d 48 5c cf    	vsubpd zmm17,zmm14,zmm15
  968c32:	62 51 ad 48 5c c9    	vsubpd zmm9,zmm10,zmm9
  968c38:	62 51 8d 48 58 d7    	vaddpd zmm10,zmm14,zmm15
  968c3e:	62 31 a5 48 58 dd    	vaddpd zmm11,zmm11,zmm21
  968c44:	62 f1 95 48 58 ed    	vaddpd zmm5,zmm13,zmm5
  968c4a:	62 72 bd 48 7f dd    	vpermt2pd zmm11,zmm8,zmm5
  968c50:	62 71 fd 48 11 1c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1],zmm11
  968c57:	62 32 bd 48 7f e1    	vpermt2pd zmm12,zmm8,zmm17
  968c5d:	62 71 fd 48 11 64 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x40],zmm12
  968c64:	01 
  968c65:	62 52 bd 48 7f ca    	vpermt2pd zmm9,zmm8,zmm10
  968c6b:	62 71 fd 48 11 4c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x80],zmm9
  968c72:	02 
  968c73:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  968c7a:	48 39 d0             	cmp    rax,rdx
  968c7d:	0f 85 5d fd ff ff    	jne    9689e0 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle+0x60>
  968c83:	c5 f8 77             	vzeroupper
  968c86:	c3                   	ret
