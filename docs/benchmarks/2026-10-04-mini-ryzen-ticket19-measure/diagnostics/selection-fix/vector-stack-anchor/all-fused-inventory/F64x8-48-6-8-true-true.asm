
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

000000000092b900 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  92b900:	62 f1 fd 48 10 05 5e 	vmovupd zmm0,ZMMWORD PTR [rip+0xffffffffff79b45e]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  92b907:	b4 79 ff 
  92b90a:	62 f1 fd 48 10 0d 94 	vmovupd zmm1,ZMMWORD PTR [rip+0xffffffffff79b494]        # c6da8 <crc32fast::table::CRC32_TABLE+0x9124>
  92b911:	b4 79 ff 
  92b914:	62 f1 fd 48 10 15 ca 	vmovupd zmm2,ZMMWORD PTR [rip+0xffffffffff79b3ca]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  92b91b:	b3 79 ff 
  92b91e:	62 f1 fd 48 10 1d 00 	vmovupd zmm3,ZMMWORD PTR [rip+0xffffffffff79b400]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  92b925:	b4 79 ff 
  92b928:	48 c1 e2 08          	shl    rdx,0x8
  92b92c:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  92b930:	31 d2                	xor    edx,edx
  92b932:	62 f1 fd 48 28 35 c4 	vmovapd zmm6,ZMMWORD PTR [rip+0xffffffffff755ec4]        # 81800 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xecb0>
  92b939:	5e 75 ff 
  92b93c:	c4 41 39 57 c0       	vxorpd xmm8,xmm8,xmm8
  92b941:	c5 7d 28 15 b7 b3 74 	vmovapd ymm10,YMMWORD PTR [rip+0xffffffffff74b3b7]        # 76d00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x41b0>
  92b948:	ff 
  92b949:	62 71 fd 48 28 1d ed 	vmovapd zmm11,ZMMWORD PTR [rip+0xffffffffff755eed]        # 81840 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xecf0>
  92b950:	5e 75 ff 
  92b953:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  92b95a:	84 00 00 00 00 00 
  92b960:	62 71 fd 48 10 24 17 	vmovupd zmm12,ZMMWORD PTR [rdi+rdx*1]
  92b967:	62 71 fd 48 10 74 17 	vmovupd zmm14,ZMMWORD PTR [rdi+rdx*1+0x40]
  92b96e:	01 
  92b96f:	62 71 fd 48 10 7c 17 	vmovupd zmm15,ZMMWORD PTR [rdi+rdx*1+0x80]
  92b976:	02 
  92b977:	62 e1 fd 48 10 44 17 	vmovupd zmm16,ZMMWORD PTR [rdi+rdx*1+0xc0]
  92b97e:	03 
  92b97f:	62 51 fd 48 28 ec    	vmovapd zmm13,zmm12
  92b985:	62 f1 fd 48 28 25 31 	vmovapd zmm4,ZMMWORD PTR [rip+0xffffffffff755e31]        # 817c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xec70>
  92b98c:	5e 75 ff 
  92b98f:	62 52 dd 48 7f ee    	vpermt2pd zmm13,zmm4,zmm14
  92b995:	62 52 cd 48 7f e6    	vpermt2pd zmm12,zmm6,zmm14
  92b99b:	62 c1 fd 48 28 cf    	vmovapd zmm17,zmm15
  92b9a1:	62 a2 dd 48 7f c8    	vpermt2pd zmm17,zmm4,zmm16
  92b9a7:	62 32 cd 48 7f f8    	vpermt2pd zmm15,zmm6,zmm16
  92b9ad:	62 e1 fd 48 10 44 17 	vmovupd zmm16,ZMMWORD PTR [rdi+rdx*1+0x100]
  92b9b4:	04 
  92b9b5:	62 71 fd 48 10 74 17 	vmovupd zmm14,ZMMWORD PTR [rdi+rdx*1+0x140]
  92b9bc:	05 
  92b9bd:	62 a1 fd 48 28 d0    	vmovapd zmm18,zmm16
  92b9c3:	62 c2 dd 48 7f d6    	vpermt2pd zmm18,zmm4,zmm14
  92b9c9:	62 c2 cd 48 7f c6    	vpermt2pd zmm16,zmm6,zmm14
  92b9cf:	62 e1 fd 48 10 64 17 	vmovupd zmm20,ZMMWORD PTR [rdi+rdx*1+0x180]
  92b9d6:	06 
  92b9d7:	62 71 fd 48 10 74 17 	vmovupd zmm14,ZMMWORD PTR [rdi+rdx*1+0x1c0]
  92b9de:	07 
  92b9df:	62 a1 fd 48 28 ec    	vmovapd zmm21,zmm20
  92b9e5:	62 c2 dd 48 7f ee    	vpermt2pd zmm21,zmm4,zmm14
  92b9eb:	62 c2 cd 48 7f e6    	vpermt2pd zmm20,zmm6,zmm14
  92b9f1:	62 e1 fd 48 10 74 17 	vmovupd zmm22,ZMMWORD PTR [rdi+rdx*1+0x200]
  92b9f8:	08 
  92b9f9:	62 71 fd 48 10 74 17 	vmovupd zmm14,ZMMWORD PTR [rdi+rdx*1+0x240]
  92ba00:	09 
  92ba01:	62 a1 fd 48 28 fe    	vmovapd zmm23,zmm22
  92ba07:	62 c2 dd 48 7f fe    	vpermt2pd zmm23,zmm4,zmm14
  92ba0d:	62 c2 cd 48 7f f6    	vpermt2pd zmm22,zmm6,zmm14
  92ba13:	62 61 fd 48 10 44 17 	vmovupd zmm24,ZMMWORD PTR [rdi+rdx*1+0x280]
  92ba1a:	0a 
  92ba1b:	62 71 fd 48 10 74 17 	vmovupd zmm14,ZMMWORD PTR [rdi+rdx*1+0x2c0]
  92ba22:	0b 
  92ba23:	62 01 fd 48 28 c8    	vmovapd zmm25,zmm24
  92ba29:	62 42 dd 48 7f ce    	vpermt2pd zmm25,zmm4,zmm14
  92ba2f:	62 42 cd 48 7f c6    	vpermt2pd zmm24,zmm6,zmm14
  92ba35:	62 a1 fd 40 58 de    	vaddpd zmm19,zmm16,zmm22
  92ba3b:	62 21 9d 48 58 db    	vaddpd zmm27,zmm12,zmm19
  92ba41:	62 41 bd 40 58 d7    	vaddpd zmm26,zmm24,zmm15
  92ba47:	62 01 dd 40 58 e2    	vaddpd zmm28,zmm20,zmm26
  92ba4d:	62 11 a5 40 58 f4    	vaddpd zmm14,zmm27,zmm28
  92ba53:	62 21 ed 40 58 ef    	vaddpd zmm29,zmm18,zmm23
  92ba59:	62 01 95 48 58 f5    	vaddpd zmm30,zmm13,zmm29
  92ba5f:	62 21 b5 40 58 f9    	vaddpd zmm31,zmm25,zmm17
  92ba65:	62 91 d5 40 58 ef    	vaddpd zmm5,zmm21,zmm31
  92ba6b:	62 f2 fd 48 19 25 23 	vbroadcastsd zmm4,QWORD PTR [rip+0xffffffffff749023]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  92ba72:	90 74 ff 
  92ba75:	62 32 dd 48 bc e3    	vfnmadd231pd zmm12,zmm4,zmm19
  92ba7b:	62 e1 8d 40 58 dd    	vaddpd zmm19,zmm30,zmm5
  92ba81:	62 a1 ed 40 5c d7    	vsubpd zmm18,zmm18,zmm23
  92ba87:	62 e2 fd 48 19 3d 8f 	vbroadcastsd zmm23,QWORD PTR [rip+0xffffffffff74918f]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  92ba8e:	91 74 ff 
  92ba91:	62 a1 ed 40 59 d7    	vmulpd zmm18,zmm18,zmm23
  92ba97:	62 b1 9d 48 58 fa    	vaddpd zmm7,zmm12,zmm18
  92ba9d:	62 82 dd 48 bc e2    	vfnmadd231pd zmm20,zmm4,zmm26
  92baa3:	62 a1 b5 40 5c c9    	vsubpd zmm17,zmm25,zmm17
  92baa9:	62 a1 f5 40 59 cf    	vmulpd zmm17,zmm17,zmm23
  92baaf:	62 21 dd 40 58 c9    	vaddpd zmm25,zmm20,zmm17
  92bab5:	62 11 c5 48 5c c9    	vsubpd zmm9,zmm7,zmm25
  92babb:	62 12 dd 48 bc ed    	vfnmadd231pd zmm13,zmm4,zmm29
  92bac1:	62 a1 fd 40 5c c6    	vsubpd zmm16,zmm16,zmm22
  92bac7:	62 a1 fd 40 59 c7    	vmulpd zmm16,zmm16,zmm23
  92bacd:	62 a1 95 48 5c f0    	vsubpd zmm22,zmm13,zmm16
  92bad3:	62 82 dd 48 bc ef    	vfnmadd231pd zmm21,zmm4,zmm31
  92bad9:	62 51 bd 40 5c ff    	vsubpd zmm15,zmm24,zmm15
  92badf:	62 31 85 48 59 ff    	vmulpd zmm15,zmm15,zmm23
  92bae5:	62 41 d5 40 5c ef    	vsubpd zmm29,zmm21,zmm15
  92baeb:	62 81 cd 40 5c fd    	vsubpd zmm23,zmm22,zmm29
  92baf1:	62 31 9d 48 5c e2    	vsubpd zmm12,zmm12,zmm18
  92baf7:	62 a1 dd 40 5c c9    	vsubpd zmm17,zmm20,zmm17
  92bafd:	62 a1 9d 48 58 d1    	vaddpd zmm18,zmm12,zmm17
  92bb03:	62 51 fd 40 58 ed    	vaddpd zmm13,zmm16,zmm13
  92bb09:	62 31 85 48 58 fd    	vaddpd zmm15,zmm15,zmm21
  92bb0f:	62 41 95 48 58 d7    	vaddpd zmm26,zmm13,zmm15
  92bb15:	62 81 a5 40 5c c4    	vsubpd zmm16,zmm27,zmm28
  92bb1b:	62 61 8d 40 5c c5    	vsubpd zmm24,zmm30,zmm5
  92bb21:	62 91 c5 48 58 e9    	vaddpd zmm5,zmm7,zmm25
  92bb27:	62 91 cd 40 58 fd    	vaddpd zmm7,zmm22,zmm29
  92bb2d:	62 31 9d 48 5c e1    	vsubpd zmm12,zmm12,zmm17
  92bb33:	62 c1 95 48 5c e7    	vsubpd zmm20,zmm13,zmm15
  92bb39:	62 51 fd 48 28 fe    	vmovapd zmm15,zmm14
  92bb3f:	62 72 fd 48 7f fd    	vpermt2pd zmm15,zmm0,zmm5
  92bb45:	62 72 f5 48 7f f5    	vpermt2pd zmm14,zmm1,zmm5
  92bb4b:	62 d1 fd 48 28 e9    	vmovapd zmm5,zmm9
  92bb51:	62 d2 fd 48 7f ec    	vpermt2pd zmm5,zmm0,zmm12
  92bb57:	62 52 f5 48 7f cc    	vpermt2pd zmm9,zmm1,zmm12
  92bb5d:	62 31 fd 48 28 ea    	vmovapd zmm13,zmm18
  92bb63:	62 52 fd 48 7f e8    	vpermt2pd zmm13,zmm0,zmm8
  92bb69:	62 c2 f5 48 7f d0    	vpermt2pd zmm18,zmm1,zmm8
  92bb6f:	62 a1 fd 48 28 c8    	vmovapd zmm17,zmm16
  92bb75:	62 c2 fd 48 7f c8    	vpermt2pd zmm17,zmm0,zmm8
  92bb7b:	62 c2 f5 48 7f c0    	vpermt2pd zmm16,zmm1,zmm8
  92bb81:	62 51 fd 48 28 e7    	vmovapd zmm12,zmm15
  92bb87:	62 52 ed 48 7f e5    	vpermt2pd zmm12,zmm2,zmm13
  92bb8d:	62 52 e5 48 7f fd    	vpermt2pd zmm15,zmm3,zmm13
  92bb93:	62 71 fd 48 28 ed    	vmovapd zmm13,zmm5
  92bb99:	62 32 ed 48 7f e9    	vpermt2pd zmm13,zmm2,zmm17
  92bb9f:	62 b2 e5 48 7f e9    	vpermt2pd zmm5,zmm3,zmm17
  92bba5:	62 c1 fd 48 28 ee    	vmovapd zmm21,zmm14
  92bbab:	62 a2 ed 48 7f ea    	vpermt2pd zmm21,zmm2,zmm18
  92bbb1:	62 32 e5 48 7f f2    	vpermt2pd zmm14,zmm3,zmm18
  92bbb7:	62 c1 fd 48 28 d1    	vmovapd zmm18,zmm9
  92bbbd:	62 a2 ed 48 7f d0    	vpermt2pd zmm18,zmm2,zmm16
  92bbc3:	62 32 e5 48 7f c8    	vpermt2pd zmm9,zmm3,zmm16
  92bbc9:	62 c1 9d 48 15 cd    	vunpckhpd zmm17,zmm12,zmm13
  92bbcf:	62 e1 85 48 14 f5    	vunpcklpd zmm22,zmm15,zmm5
  92bbd5:	62 71 85 48 15 fd    	vunpckhpd zmm15,zmm15,zmm5
  92bbdb:	62 21 d5 40 14 ca    	vunpcklpd zmm25,zmm21,zmm18
  92bbe1:	62 a1 d5 40 15 c2    	vunpckhpd zmm16,zmm21,zmm18
  92bbe7:	62 c1 8d 48 14 e9    	vunpcklpd zmm21,zmm14,zmm9
  92bbed:	62 51 8d 48 15 f1    	vunpckhpd zmm14,zmm14,zmm9
  92bbf3:	62 b1 fd 48 28 eb    	vmovapd zmm5,zmm19
  92bbf9:	62 f2 fd 48 7f ef    	vpermt2pd zmm5,zmm0,zmm7
  92bbff:	62 e2 f5 48 7f df    	vpermt2pd zmm19,zmm1,zmm7
  92bc05:	62 b1 fd 48 28 ff    	vmovapd zmm7,zmm23
  92bc0b:	62 b2 fd 48 7f fc    	vpermt2pd zmm7,zmm0,zmm20
  92bc11:	62 a2 f5 48 7f fc    	vpermt2pd zmm23,zmm1,zmm20
  92bc17:	62 11 fd 48 28 ca    	vmovapd zmm9,zmm26
  92bc1d:	62 52 fd 48 7f c8    	vpermt2pd zmm9,zmm0,zmm8
  92bc23:	62 42 f5 48 7f d0    	vpermt2pd zmm26,zmm1,zmm8
  92bc29:	62 01 fd 48 28 d8    	vmovapd zmm27,zmm24
  92bc2f:	62 42 fd 48 7f d8    	vpermt2pd zmm27,zmm0,zmm8
  92bc35:	62 42 f5 48 7f c0    	vpermt2pd zmm24,zmm1,zmm8
  92bc3b:	62 e1 fd 48 28 d5    	vmovapd zmm18,zmm5
  92bc41:	62 c2 ed 48 7f d1    	vpermt2pd zmm18,zmm2,zmm9
  92bc47:	62 d2 e5 48 7f e9    	vpermt2pd zmm5,zmm3,zmm9
  92bc4d:	62 e1 fd 48 28 e7    	vmovapd zmm20,zmm7
  92bc53:	62 82 ed 48 7f e3    	vpermt2pd zmm20,zmm2,zmm27
  92bc59:	62 92 e5 48 7f fb    	vpermt2pd zmm7,zmm3,zmm27
  92bc5f:	62 31 fd 48 28 cb    	vmovapd zmm9,zmm19
  92bc65:	62 12 ed 48 7f ca    	vpermt2pd zmm9,zmm2,zmm26
  92bc6b:	62 82 e5 48 7f da    	vpermt2pd zmm19,zmm3,zmm26
  92bc71:	62 21 fd 48 28 df    	vmovapd zmm27,zmm23
  92bc77:	62 02 ed 48 7f d8    	vpermt2pd zmm27,zmm2,zmm24
  92bc7d:	62 82 e5 48 7f f8    	vpermt2pd zmm23,zmm3,zmm24
  92bc83:	62 21 ed 40 15 e4    	vunpckhpd zmm28,zmm18,zmm20
  92bc89:	62 61 d5 48 14 ef    	vunpcklpd zmm29,zmm5,zmm7
  92bc8f:	62 61 d5 48 15 d7    	vunpckhpd zmm26,zmm5,zmm7
  92bc95:	62 91 b5 48 14 eb    	vunpcklpd zmm5,zmm9,zmm27
  92bc9b:	62 01 b5 48 15 db    	vunpckhpd zmm27,zmm9,zmm27
  92bca1:	62 21 e5 40 15 c7    	vunpckhpd zmm24,zmm19,zmm23
  92bca7:	62 b1 e5 40 14 ff    	vunpcklpd zmm7,zmm19,zmm23
  92bcad:	62 71 fd 48 10 49 08 	vmovupd zmm9,ZMMWORD PTR [rcx+0x200]
  92bcb4:	62 61 fd 48 10 71 09 	vmovupd zmm30,ZMMWORD PTR [rcx+0x240]
  92bcbb:	62 c1 b5 40 59 d9    	vmulpd zmm19,zmm25,zmm9
  92bcc1:	62 82 d5 48 bc de    	vfnmadd231pd zmm19,zmm5,zmm30
  92bcc7:	62 c1 d5 48 59 f9    	vmulpd zmm23,zmm5,zmm9
  92bccd:	62 f1 fd 48 10 69 04 	vmovupd zmm5,ZMMWORD PTR [rcx+0x100]
  92bcd4:	62 82 b5 40 b8 fe    	vfmadd231pd zmm23,zmm25,zmm30
  92bcda:	62 71 fd 48 10 49 05 	vmovupd zmm9,ZMMWORD PTR [rcx+0x140]
  92bce1:	62 61 cd 40 59 cd    	vmulpd zmm25,zmm22,zmm5
  92bce7:	62 42 95 40 bc c9    	vfnmadd231pd zmm25,zmm29,zmm9
  92bced:	62 f1 95 40 59 ed    	vmulpd zmm5,zmm29,zmm5
  92bcf3:	62 61 fd 48 10 69 0c 	vmovupd zmm29,ZMMWORD PTR [rcx+0x300]
  92bcfa:	62 d2 cd 40 b8 e9    	vfmadd231pd zmm5,zmm22,zmm9
  92bd00:	62 71 fd 48 10 49 0d 	vmovupd zmm9,ZMMWORD PTR [rcx+0x340]
  92bd07:	62 81 d5 40 59 f5    	vmulpd zmm22,zmm21,zmm29
  92bd0d:	62 c2 c5 48 bc f1    	vfnmadd231pd zmm22,zmm7,zmm9
  92bd13:	62 91 c5 48 59 fd    	vmulpd zmm7,zmm7,zmm29
  92bd19:	62 61 fd 48 10 69 02 	vmovupd zmm29,ZMMWORD PTR [rcx+0x80]
  92bd20:	62 d2 d5 40 b8 f9    	vfmadd231pd zmm7,zmm21,zmm9
  92bd26:	62 71 fd 48 10 49 03 	vmovupd zmm9,ZMMWORD PTR [rcx+0xc0]
  92bd2d:	62 81 f5 40 59 ed    	vmulpd zmm21,zmm17,zmm29
  92bd33:	62 c2 9d 40 bc e9    	vfnmadd231pd zmm21,zmm28,zmm9
  92bd39:	62 01 9d 40 59 e5    	vmulpd zmm28,zmm28,zmm29
  92bd3f:	62 61 fd 48 10 69 0a 	vmovupd zmm29,ZMMWORD PTR [rcx+0x280]
  92bd46:	62 42 f5 40 b8 e1    	vfmadd231pd zmm28,zmm17,zmm9
  92bd4c:	62 71 fd 48 10 49 0b 	vmovupd zmm9,ZMMWORD PTR [rcx+0x2c0]
  92bd53:	62 81 fd 40 59 cd    	vmulpd zmm17,zmm16,zmm29
  92bd59:	62 c2 a5 40 bc c9    	vfnmadd231pd zmm17,zmm27,zmm9
  92bd5f:	62 01 a5 40 59 dd    	vmulpd zmm27,zmm27,zmm29
  92bd65:	62 61 fd 48 10 69 06 	vmovupd zmm29,ZMMWORD PTR [rcx+0x180]
  92bd6c:	62 42 fd 40 b8 d9    	vfmadd231pd zmm27,zmm16,zmm9
  92bd72:	62 71 fd 48 10 49 07 	vmovupd zmm9,ZMMWORD PTR [rcx+0x1c0]
  92bd79:	62 81 85 48 59 c5    	vmulpd zmm16,zmm15,zmm29
  92bd7f:	62 c2 ad 40 bc c1    	vfnmadd231pd zmm16,zmm26,zmm9
  92bd85:	62 01 ad 40 59 d5    	vmulpd zmm26,zmm26,zmm29
  92bd8b:	62 61 fd 48 10 69 0e 	vmovupd zmm29,ZMMWORD PTR [rcx+0x380]
  92bd92:	62 42 85 48 b8 d1    	vfmadd231pd zmm26,zmm15,zmm9
  92bd98:	62 71 fd 48 10 49 0f 	vmovupd zmm9,ZMMWORD PTR [rcx+0x3c0]
  92bd9f:	62 11 8d 48 59 fd    	vmulpd zmm15,zmm14,zmm29
  92bda5:	62 52 bd 40 bc f9    	vfnmadd231pd zmm15,zmm24,zmm9
  92bdab:	62 01 bd 40 59 c5    	vmulpd zmm24,zmm24,zmm29
  92bdb1:	62 42 8d 48 b8 c1    	vfmadd231pd zmm24,zmm14,zmm9
  92bdb7:	62 51 9d 48 14 cd    	vunpcklpd zmm9,zmm12,zmm13
  92bdbd:	62 31 ed 40 14 e4    	vunpcklpd zmm12,zmm18,zmm20
  92bdc3:	62 31 b5 48 58 eb    	vaddpd zmm13,zmm9,zmm19
  92bdc9:	62 31 b5 48 5c cb    	vsubpd zmm9,zmm9,zmm19
  92bdcf:	62 71 d5 48 58 f7    	vaddpd zmm14,zmm5,zmm7
  92bdd5:	62 f1 d5 48 5c ef    	vsubpd zmm5,zmm5,zmm7
  92bddb:	62 b1 d5 40 58 f9    	vaddpd zmm7,zmm21,zmm17
  92bde1:	62 a1 d5 40 5c c9    	vsubpd zmm17,zmm21,zmm17
  92bde7:	62 81 9d 40 58 d3    	vaddpd zmm18,zmm28,zmm27
  92bded:	62 81 9d 40 5c db    	vsubpd zmm19,zmm28,zmm27
  92bdf3:	62 81 ad 40 58 e0    	vaddpd zmm20,zmm26,zmm24
  92bdf9:	62 81 ad 40 5c e8    	vsubpd zmm21,zmm26,zmm24
  92bdff:	62 41 fd 40 58 c7    	vaddpd zmm24,zmm16,zmm15
  92be05:	62 51 fd 40 5c ff    	vsubpd zmm15,zmm16,zmm15
  92be0b:	62 c1 c5 40 58 c4    	vaddpd zmm16,zmm23,zmm12
  92be11:	62 31 9d 48 5c e7    	vsubpd zmm12,zmm12,zmm23
  92be17:	62 a1 b5 40 58 fe    	vaddpd zmm23,zmm25,zmm22
  92be1d:	62 81 cd 40 5c f1    	vsubpd zmm22,zmm22,zmm25
  92be23:	62 21 f5 40 58 cb    	vaddpd zmm25,zmm17,zmm19
  92be29:	62 a1 e5 40 5c c9    	vsubpd zmm17,zmm19,zmm17
  92be2f:	62 c1 d5 40 5c df    	vsubpd zmm19,zmm21,zmm15
  92be35:	62 31 85 48 58 fd    	vaddpd zmm15,zmm15,zmm21
  92be3b:	62 a1 95 48 58 ef    	vaddpd zmm21,zmm13,zmm23
  92be41:	62 31 95 48 5c ef    	vsubpd zmm13,zmm13,zmm23
  92be47:	62 a1 ed 40 58 fc    	vaddpd zmm23,zmm18,zmm20
  92be4d:	62 a1 ed 40 5c d4    	vsubpd zmm18,zmm18,zmm20
  92be53:	62 a1 8d 48 58 e0    	vaddpd zmm20,zmm14,zmm16
  92be59:	62 51 fd 40 5c f6    	vsubpd zmm14,zmm16,zmm14
  92be5f:	62 81 c5 48 58 c0    	vaddpd zmm16,zmm7,zmm24
  92be65:	62 f1 bd 40 5c ff    	vsubpd zmm7,zmm24,zmm7
  92be6b:	62 61 b5 48 58 c5    	vaddpd zmm24,zmm9,zmm5
  92be71:	62 f2 fd 48 19 25 25 	vbroadcastsd zmm4,QWORD PTR [rip+0xffffffffff749025]        # 74ea0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2350>
  92be78:	90 74 ff 
  92be7b:	62 61 b5 40 59 cc    	vmulpd zmm25,zmm25,zmm4
  92be81:	62 e1 e5 40 59 dc    	vmulpd zmm19,zmm19,zmm4
  92be87:	62 e1 f5 40 59 cc    	vmulpd zmm17,zmm17,zmm4
  92be8d:	62 71 85 48 59 fc    	vmulpd zmm15,zmm15,zmm4
  92be93:	62 f1 b5 48 5c ed    	vsubpd zmm5,zmm9,zmm5
  92be99:	62 51 f5 40 5c cf    	vsubpd zmm9,zmm17,zmm15
  92be9f:	62 51 f5 40 58 ff    	vaddpd zmm15,zmm17,zmm15
  92bea5:	62 c1 cd 40 58 cc    	vaddpd zmm17,zmm22,zmm12
  92beab:	62 31 9d 48 5c e6    	vsubpd zmm12,zmm12,zmm22
  92beb1:	62 a1 b5 40 58 f3    	vaddpd zmm22,zmm25,zmm19
  92beb7:	62 81 e5 40 5c d9    	vsubpd zmm19,zmm19,zmm25
  92bebd:	62 21 bd 40 58 ce    	vaddpd zmm25,zmm24,zmm22
  92bec3:	62 a1 bd 40 5c f6    	vsubpd zmm22,zmm24,zmm22
  92bec9:	62 41 f5 40 58 c1    	vaddpd zmm24,zmm17,zmm9
  92becf:	62 51 f5 40 5c c9    	vsubpd zmm9,zmm17,zmm9
  92bed5:	62 a1 95 48 58 ca    	vaddpd zmm17,zmm13,zmm18
  92bedb:	62 31 95 48 5c ea    	vsubpd zmm13,zmm13,zmm18
  92bee1:	62 e1 8d 48 58 d7    	vaddpd zmm18,zmm14,zmm7
  92bee7:	62 f1 8d 48 5c ff    	vsubpd zmm7,zmm14,zmm7
  92beed:	62 51 d5 48 58 f7    	vaddpd zmm14,zmm5,zmm15
  92bef3:	62 d1 d5 48 5c ef    	vsubpd zmm5,zmm5,zmm15
  92bef9:	62 31 9d 48 58 fb    	vaddpd zmm15,zmm12,zmm19
  92beff:	62 31 9d 48 5c e3    	vsubpd zmm12,zmm12,zmm19
  92bf05:	62 a1 dd 40 5c df    	vsubpd zmm19,zmm20,zmm23
  92bf0b:	62 a1 dd 40 58 e7    	vaddpd zmm20,zmm20,zmm23
  92bf11:	62 a1 d5 40 5c f8    	vsubpd zmm23,zmm21,zmm16
  92bf17:	62 a1 d5 40 58 c0    	vaddpd zmm16,zmm21,zmm16
  92bf1d:	62 a1 fd 48 28 ec    	vmovapd zmm21,zmm20
  92bf23:	62 a2 ad 48 7f e8    	vpermt2pd zmm21,zmm10,zmm16
  92bf29:	62 a2 a5 48 7f e0    	vpermt2pd zmm20,zmm11,zmm16
  92bf2f:	62 e1 fd 48 11 24 16 	vmovupd ZMMWORD PTR [rsi+rdx*1],zmm20
  92bf36:	62 e1 fd 28 11 6c 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x40],ymm21
  92bf3d:	02 
  92bf3e:	62 81 fd 48 28 c0    	vmovapd zmm16,zmm24
  92bf44:	62 82 ad 48 7f c1    	vpermt2pd zmm16,zmm10,zmm25
  92bf4a:	62 02 a5 48 7f c1    	vpermt2pd zmm24,zmm11,zmm25
  92bf50:	62 61 fd 48 11 84 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x60],zmm24
  92bf57:	60 00 00 00 
  92bf5b:	62 e1 fd 28 11 44 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0xa0],ymm16
  92bf62:	05 
  92bf63:	62 a1 fd 48 28 c2    	vmovapd zmm16,zmm18
  92bf69:	62 a2 ad 48 7f c1    	vpermt2pd zmm16,zmm10,zmm17
  92bf6f:	62 a2 a5 48 7f d1    	vpermt2pd zmm18,zmm11,zmm17
  92bf75:	62 e1 fd 48 11 54 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0xc0],zmm18
  92bf7c:	03 
  92bf7d:	62 e1 fd 28 11 44 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x100],ymm16
  92bf84:	08 
  92bf85:	62 c1 fd 48 28 c7    	vmovapd zmm16,zmm15
  92bf8b:	62 c2 ad 48 7f c6    	vpermt2pd zmm16,zmm10,zmm14
  92bf91:	62 52 a5 48 7f fe    	vpermt2pd zmm15,zmm11,zmm14
  92bf97:	62 71 fd 48 11 bc 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x120],zmm15
  92bf9e:	20 01 00 00 
  92bfa2:	62 e1 fd 28 11 44 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x160],ymm16
  92bfa9:	0b 
  92bfaa:	62 31 fd 48 28 f3    	vmovapd zmm14,zmm19
  92bfb0:	62 32 ad 48 7f f7    	vpermt2pd zmm14,zmm10,zmm23
  92bfb6:	62 a2 a5 48 7f df    	vpermt2pd zmm19,zmm11,zmm23
  92bfbc:	62 e1 fd 48 11 5c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x180],zmm19
  92bfc3:	06 
  92bfc4:	c5 7d 11 b4 16 c0 01 	vmovupd YMMWORD PTR [rsi+rdx*1+0x1c0],ymm14
  92bfcb:	00 00 
  92bfcd:	62 51 fd 48 28 f1    	vmovapd zmm14,zmm9
  92bfd3:	62 32 ad 48 7f f6    	vpermt2pd zmm14,zmm10,zmm22
  92bfd9:	62 32 a5 48 7f ce    	vpermt2pd zmm9,zmm11,zmm22
  92bfdf:	62 71 fd 48 11 8c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x1e0],zmm9
  92bfe6:	e0 01 00 00 
  92bfea:	c5 7d 11 b4 16 20 02 	vmovupd YMMWORD PTR [rsi+rdx*1+0x220],ymm14
  92bff1:	00 00 
  92bff3:	62 71 fd 48 28 cf    	vmovapd zmm9,zmm7
  92bff9:	62 52 ad 48 7f cd    	vpermt2pd zmm9,zmm10,zmm13
  92bfff:	62 d2 a5 48 7f fd    	vpermt2pd zmm7,zmm11,zmm13
  92c005:	62 f1 fd 48 11 7c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x240],zmm7
  92c00c:	09 
  92c00d:	c5 7d 11 8c 16 80 02 	vmovupd YMMWORD PTR [rsi+rdx*1+0x280],ymm9
  92c014:	00 00 
  92c016:	62 d1 fd 48 28 fc    	vmovapd zmm7,zmm12
  92c01c:	62 f2 ad 48 7f fd    	vpermt2pd zmm7,zmm10,zmm5
  92c022:	62 72 a5 48 7f e5    	vpermt2pd zmm12,zmm11,zmm5
  92c028:	62 71 fd 48 11 a4 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x2a0],zmm12
  92c02f:	a0 02 00 00 
  92c033:	c5 fd 11 bc 16 e0 02 	vmovupd YMMWORD PTR [rsi+rdx*1+0x2e0],ymm7
  92c03a:	00 00 
  92c03c:	48 81 c2 00 03 00 00 	add    rdx,0x300
  92c043:	48 39 d0             	cmp    rax,rdx
  92c046:	0f 85 14 f9 ff ff    	jne    92b960 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle+0x60>
  92c04c:	c5 f8 77             	vzeroupper
  92c04f:	c3                   	ret
