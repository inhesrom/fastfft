
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

000000000093aac0 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  93aac0:	62 f1 fd 48 10 05 9e 	vmovupd zmm0,ZMMWORD PTR [rip+0xffffffffff78c29e]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  93aac7:	c2 78 ff 
  93aaca:	62 f1 fd 48 10 0d d4 	vmovupd zmm1,ZMMWORD PTR [rip+0xffffffffff78c2d4]        # c6da8 <crc32fast::table::CRC32_TABLE+0x9124>
  93aad1:	c2 78 ff 
  93aad4:	c5 e9 57 d2          	vxorpd xmm2,xmm2,xmm2
  93aad8:	c5 e1 57 db          	vxorpd xmm3,xmm3,xmm3
  93aadc:	62 f2 fd 48 7f db    	vpermt2pd zmm3,zmm0,zmm3
  93aae2:	c5 d9 57 e4          	vxorpd xmm4,xmm4,xmm4
  93aae6:	62 f2 f5 48 7f e4    	vpermt2pd zmm4,zmm1,zmm4
  93aaec:	62 f1 fd 48 10 2d f2 	vmovupd zmm5,ZMMWORD PTR [rip+0xffffffffff78c1f2]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  93aaf3:	c1 78 ff 
  93aaf6:	62 f1 fd 48 10 35 28 	vmovupd zmm6,ZMMWORD PTR [rip+0xffffffffff78c228]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  93aafd:	c2 78 ff 
  93ab00:	48 c1 e2 05          	shl    rdx,0x5
  93ab04:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  93ab08:	31 d2                	xor    edx,edx
  93ab0a:	62 f1 fd 48 28 3d ac 	vmovapd zmm7,ZMMWORD PTR [rip+0xffffffffff747eac]        # 829c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xfe70>
  93ab11:	7e 74 ff 
  93ab14:	62 72 fd 48 19 05 7a 	vbroadcastsd zmm8,QWORD PTR [rip+0xffffffffff739f7a]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  93ab1b:	9f 73 ff 
  93ab1e:	62 71 fd 48 28 0d d8 	vmovapd zmm9,ZMMWORD PTR [rip+0xffffffffff747ed8]        # 82a00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xfeb0>
  93ab25:	7e 74 ff 
  93ab28:	62 72 fd 48 19 15 ee 	vbroadcastsd zmm10,QWORD PTR [rip+0xffffffffff73a0ee]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  93ab2f:	a0 73 ff 
  93ab32:	62 71 fd 48 28 1d 04 	vmovapd zmm11,ZMMWORD PTR [rip+0xffffffffff747f04]        # 82a40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xfef0>
  93ab39:	7f 74 ff 
  93ab3c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  93ab40:	62 71 fd 48 10 24 17 	vmovupd zmm12,ZMMWORD PTR [rdi+rdx*1]
  93ab47:	c5 7d 10 6c 17 40    	vmovupd ymm13,YMMWORD PTR [rdi+rdx*1+0x40]
  93ab4d:	62 51 fd 48 28 f4    	vmovapd zmm14,zmm12
  93ab53:	62 52 c5 48 7f f5    	vpermt2pd zmm14,zmm7,zmm13
  93ab59:	62 52 b5 48 7f e5    	vpermt2pd zmm12,zmm9,zmm13
  93ab5f:	62 71 fd 48 10 ac 17 	vmovupd zmm13,ZMMWORD PTR [rdi+rdx*1+0x60]
  93ab66:	60 00 00 00 
  93ab6a:	c5 7d 10 bc 17 a0 00 	vmovupd ymm15,YMMWORD PTR [rdi+rdx*1+0xa0]
  93ab71:	00 00 
  93ab73:	62 c1 fd 48 28 c5    	vmovapd zmm16,zmm13
  93ab79:	62 c2 c5 48 7f c7    	vpermt2pd zmm16,zmm7,zmm15
  93ab7f:	62 52 b5 48 7f ef    	vpermt2pd zmm13,zmm9,zmm15
  93ab85:	62 71 fd 48 10 7c 17 	vmovupd zmm15,ZMMWORD PTR [rdi+rdx*1+0xc0]
  93ab8c:	03 
  93ab8d:	62 e1 fd 28 10 4c 17 	vmovupd ymm17,YMMWORD PTR [rdi+rdx*1+0x100]
  93ab94:	08 
  93ab95:	62 c1 fd 48 28 d7    	vmovapd zmm18,zmm15
  93ab9b:	62 a2 c5 48 7f d1    	vpermt2pd zmm18,zmm7,zmm17
  93aba1:	62 32 b5 48 7f f9    	vpermt2pd zmm15,zmm9,zmm17
  93aba7:	62 a1 fd 40 58 da    	vaddpd zmm19,zmm16,zmm18
  93abad:	62 a1 8d 48 58 e3    	vaddpd zmm20,zmm14,zmm19
  93abb3:	62 c1 95 48 58 ef    	vaddpd zmm21,zmm13,zmm15
  93abb9:	62 a1 9d 48 58 cd    	vaddpd zmm17,zmm12,zmm21
  93abbf:	62 32 bd 48 bc f3    	vfnmadd231pd zmm14,zmm8,zmm19
  93abc5:	62 51 95 48 5c ef    	vsubpd zmm13,zmm13,zmm15
  93abcb:	62 51 95 48 59 ea    	vmulpd zmm13,zmm13,zmm10
  93abd1:	62 51 8d 48 58 fd    	vaddpd zmm15,zmm14,zmm13
  93abd7:	62 32 bd 48 bc e5    	vfnmadd231pd zmm12,zmm8,zmm21
  93abdd:	62 a1 fd 40 5c c2    	vsubpd zmm16,zmm16,zmm18
  93abe3:	62 c1 fd 40 59 c2    	vmulpd zmm16,zmm16,zmm10
  93abe9:	62 a1 9d 48 5c e8    	vsubpd zmm21,zmm12,zmm16
  93abef:	62 51 8d 48 5c ed    	vsubpd zmm13,zmm14,zmm13
  93abf5:	62 51 fd 40 58 f4    	vaddpd zmm14,zmm16,zmm12
  93abfb:	62 a1 fd 48 28 c4    	vmovapd zmm16,zmm20
  93ac01:	62 e2 fd 48 7f c2    	vpermt2pd zmm16,zmm0,zmm2
  93ac07:	62 e2 f5 48 7f e2    	vpermt2pd zmm20,zmm1,zmm2
  93ac0d:	62 c1 fd 48 28 d7    	vmovapd zmm18,zmm15
  93ac13:	62 e2 fd 48 7f d2    	vpermt2pd zmm18,zmm0,zmm2
  93ac19:	62 72 f5 48 7f fa    	vpermt2pd zmm15,zmm1,zmm2
  93ac1f:	62 51 fd 48 28 e5    	vmovapd zmm12,zmm13
  93ac25:	62 72 fd 48 7f e2    	vpermt2pd zmm12,zmm0,zmm2
  93ac2b:	62 72 f5 48 7f ea    	vpermt2pd zmm13,zmm1,zmm2
  93ac31:	62 a1 fd 48 28 d8    	vmovapd zmm19,zmm16
  93ac37:	62 c2 d5 48 7f dc    	vpermt2pd zmm19,zmm5,zmm12
  93ac3d:	62 c2 cd 48 7f c4    	vpermt2pd zmm16,zmm6,zmm12
  93ac43:	62 a1 fd 48 28 f2    	vmovapd zmm22,zmm18
  93ac49:	62 e2 d5 48 7f f3    	vpermt2pd zmm22,zmm5,zmm3
  93ac4f:	62 e2 cd 48 7f d3    	vpermt2pd zmm18,zmm6,zmm3
  93ac55:	62 c2 d5 48 7f e5    	vpermt2pd zmm20,zmm5,zmm13
  93ac5b:	62 72 d5 48 7f fc    	vpermt2pd zmm15,zmm5,zmm4
  93ac61:	62 31 e5 40 14 e6    	vunpcklpd zmm12,zmm19,zmm22
  93ac67:	62 31 e5 40 15 ee    	vunpckhpd zmm13,zmm19,zmm22
  93ac6d:	62 a1 fd 40 14 da    	vunpcklpd zmm19,zmm16,zmm18
  93ac73:	62 a1 fd 40 15 c2    	vunpckhpd zmm16,zmm16,zmm18
  93ac79:	62 c1 dd 40 14 d7    	vunpcklpd zmm18,zmm20,zmm15
  93ac7f:	62 51 dd 40 15 ff    	vunpckhpd zmm15,zmm20,zmm15
  93ac85:	62 a1 fd 48 28 e1    	vmovapd zmm20,zmm17
  93ac8b:	62 e2 fd 48 7f e2    	vpermt2pd zmm20,zmm0,zmm2
  93ac91:	62 e2 f5 48 7f ca    	vpermt2pd zmm17,zmm1,zmm2
  93ac97:	62 a1 fd 48 28 f5    	vmovapd zmm22,zmm21
  93ac9d:	62 e2 fd 48 7f f2    	vpermt2pd zmm22,zmm0,zmm2
  93aca3:	62 e2 f5 48 7f ea    	vpermt2pd zmm21,zmm1,zmm2
  93aca9:	62 c1 fd 48 28 fe    	vmovapd zmm23,zmm14
  93acaf:	62 e2 fd 48 7f fa    	vpermt2pd zmm23,zmm0,zmm2
  93acb5:	62 72 f5 48 7f f2    	vpermt2pd zmm14,zmm1,zmm2
  93acbb:	62 21 fd 48 28 c4    	vmovapd zmm24,zmm20
  93acc1:	62 22 d5 48 7f c7    	vpermt2pd zmm24,zmm5,zmm23
  93acc7:	62 a2 cd 48 7f e7    	vpermt2pd zmm20,zmm6,zmm23
  93accd:	62 a1 fd 48 28 fe    	vmovapd zmm23,zmm22
  93acd3:	62 e2 d5 48 7f fb    	vpermt2pd zmm23,zmm5,zmm3
  93acd9:	62 e2 cd 48 7f f3    	vpermt2pd zmm22,zmm6,zmm3
  93acdf:	62 c2 d5 48 7f ce    	vpermt2pd zmm17,zmm5,zmm14
  93ace5:	62 e2 d5 48 7f ec    	vpermt2pd zmm21,zmm5,zmm4
  93aceb:	62 31 bd 40 14 f7    	vunpcklpd zmm14,zmm24,zmm23
  93acf1:	62 a1 bd 40 15 ff    	vunpckhpd zmm23,zmm24,zmm23
  93acf7:	62 21 dd 40 14 c6    	vunpcklpd zmm24,zmm20,zmm22
  93acfd:	62 a1 dd 40 15 e6    	vunpckhpd zmm20,zmm20,zmm22
  93ad03:	62 a1 f5 40 14 f5    	vunpcklpd zmm22,zmm17,zmm21
  93ad09:	62 a1 f5 40 15 ed    	vunpckhpd zmm21,zmm17,zmm21
  93ad0f:	62 61 fd 48 10 49 04 	vmovupd zmm25,ZMMWORD PTR [rcx+0x100]
  93ad16:	62 61 fd 48 10 51 05 	vmovupd zmm26,ZMMWORD PTR [rcx+0x140]
  93ad1d:	62 81 e5 40 59 c9    	vmulpd zmm17,zmm19,zmm25
  93ad23:	62 82 bd 40 bc ca    	vfnmadd231pd zmm17,zmm24,zmm26
  93ad29:	62 01 bd 40 59 c1    	vmulpd zmm24,zmm24,zmm25
  93ad2f:	62 61 fd 48 10 49 08 	vmovupd zmm25,ZMMWORD PTR [rcx+0x200]
  93ad36:	62 02 e5 40 b8 c2    	vfmadd231pd zmm24,zmm19,zmm26
  93ad3c:	62 e1 fd 48 10 59 09 	vmovupd zmm19,ZMMWORD PTR [rcx+0x240]
  93ad43:	62 01 ed 40 59 d1    	vmulpd zmm26,zmm18,zmm25
  93ad49:	62 22 cd 40 bc d3    	vfnmadd231pd zmm26,zmm22,zmm19
  93ad4f:	62 81 cd 40 59 f1    	vmulpd zmm22,zmm22,zmm25
  93ad55:	62 61 fd 48 10 49 06 	vmovupd zmm25,ZMMWORD PTR [rcx+0x180]
  93ad5c:	62 a2 ed 40 b8 f3    	vfmadd231pd zmm22,zmm18,zmm19
  93ad62:	62 e1 fd 48 10 51 07 	vmovupd zmm18,ZMMWORD PTR [rcx+0x1c0]
  93ad69:	62 81 fd 40 59 d9    	vmulpd zmm19,zmm16,zmm25
  93ad6f:	62 a2 dd 40 bc da    	vfnmadd231pd zmm19,zmm20,zmm18
  93ad75:	62 81 dd 40 59 e1    	vmulpd zmm20,zmm20,zmm25
  93ad7b:	62 61 fd 48 10 49 0a 	vmovupd zmm25,ZMMWORD PTR [rcx+0x280]
  93ad82:	62 a2 fd 40 b8 e2    	vfmadd231pd zmm20,zmm16,zmm18
  93ad88:	62 e1 fd 48 10 41 0b 	vmovupd zmm16,ZMMWORD PTR [rcx+0x2c0]
  93ad8f:	62 81 85 48 59 d1    	vmulpd zmm18,zmm15,zmm25
  93ad95:	62 a2 d5 40 bc d0    	vfnmadd231pd zmm18,zmm21,zmm16
  93ad9b:	62 81 d5 40 59 e9    	vmulpd zmm21,zmm21,zmm25
  93ada1:	62 61 fd 48 10 49 02 	vmovupd zmm25,ZMMWORD PTR [rcx+0x80]
  93ada8:	62 a2 85 48 b8 e8    	vfmadd231pd zmm21,zmm15,zmm16
  93adae:	62 71 fd 48 10 79 03 	vmovupd zmm15,ZMMWORD PTR [rcx+0xc0]
  93adb5:	62 81 95 48 59 c1    	vmulpd zmm16,zmm13,zmm25
  93adbb:	62 c2 c5 40 bc c7    	vfnmadd231pd zmm16,zmm23,zmm15
  93adc1:	62 81 c5 40 59 f9    	vmulpd zmm23,zmm23,zmm25
  93adc7:	62 01 f5 40 58 ca    	vaddpd zmm25,zmm17,zmm26
  93adcd:	62 c2 95 48 b8 ff    	vfmadd231pd zmm23,zmm13,zmm15
  93add3:	62 11 9d 48 58 e9    	vaddpd zmm13,zmm12,zmm25
  93add9:	62 31 ed 40 58 f8    	vaddpd zmm15,zmm18,zmm16
  93addf:	62 42 bd 48 ac cc    	vfnmadd213pd zmm25,zmm8,zmm12
  93ade5:	62 31 bd 40 58 e6    	vaddpd zmm12,zmm24,zmm22
  93adeb:	62 a1 bd 40 5c f6    	vsubpd zmm22,zmm24,zmm22
  93adf1:	62 41 e5 40 58 c7    	vaddpd zmm24,zmm19,zmm15
  93adf7:	62 c2 bd 48 bc df    	vfnmadd231pd zmm19,zmm8,zmm15
  93adfd:	62 31 d5 40 58 ff    	vaddpd zmm15,zmm21,zmm23
  93ae03:	62 a1 d5 40 5c ef    	vsubpd zmm21,zmm21,zmm23
  93ae09:	62 c1 9d 48 58 fe    	vaddpd zmm23,zmm12,zmm14
  93ae0f:	62 52 bd 48 ac e6    	vfnmadd213pd zmm12,zmm8,zmm14
  93ae15:	62 11 f5 40 5c f2    	vsubpd zmm14,zmm17,zmm26
  93ae1b:	62 c1 dd 40 58 cf    	vaddpd zmm17,zmm20,zmm15
  93ae21:	62 c2 bd 48 bc e7    	vfnmadd231pd zmm20,zmm8,zmm15
  93ae27:	62 51 cd 40 59 fa    	vmulpd zmm15,zmm22,zmm10
  93ae2d:	62 a1 ed 40 5c c0    	vsubpd zmm16,zmm18,zmm16
  93ae33:	62 c1 b5 40 58 d7    	vaddpd zmm18,zmm25,zmm15
  93ae39:	62 c1 d5 40 59 ea    	vmulpd zmm21,zmm21,zmm10
  93ae3f:	62 51 b5 40 5c ff    	vsubpd zmm15,zmm25,zmm15
  93ae45:	62 a1 e5 40 58 f5    	vaddpd zmm22,zmm19,zmm21
  93ae4b:	62 51 8d 48 59 f2    	vmulpd zmm14,zmm14,zmm10
  93ae51:	62 a1 e5 40 5c dd    	vsubpd zmm19,zmm19,zmm21
  93ae57:	62 c1 9d 48 5c ee    	vsubpd zmm21,zmm12,zmm14
  93ae5d:	62 c1 fd 40 59 c2    	vmulpd zmm16,zmm16,zmm10
  93ae63:	62 51 8d 48 58 e4    	vaddpd zmm12,zmm14,zmm12
  93ae69:	62 31 dd 40 5c f0    	vsubpd zmm14,zmm20,zmm16
  93ae6f:	62 a1 dd 40 58 c0    	vaddpd zmm16,zmm20,zmm16
  93ae75:	62 a1 ed 40 5c e6    	vsubpd zmm20,zmm18,zmm22
  93ae7b:	62 a1 ed 40 58 d6    	vaddpd zmm18,zmm18,zmm22
  93ae81:	62 c1 d5 40 5c f6    	vsubpd zmm22,zmm21,zmm14
  93ae87:	62 51 d5 40 58 f6    	vaddpd zmm14,zmm21,zmm14
  93ae8d:	62 a1 85 48 58 eb    	vaddpd zmm21,zmm15,zmm19
  93ae93:	62 31 85 48 5c fb    	vsubpd zmm15,zmm15,zmm19
  93ae99:	62 a1 9d 48 58 d8    	vaddpd zmm19,zmm12,zmm16
  93ae9f:	62 31 9d 48 5c e0    	vsubpd zmm12,zmm12,zmm16
  93aea5:	62 81 95 48 5c c0    	vsubpd zmm16,zmm13,zmm24
  93aeab:	62 11 95 48 58 e8    	vaddpd zmm13,zmm13,zmm24
  93aeb1:	62 21 c5 40 5c c1    	vsubpd zmm24,zmm23,zmm17
  93aeb7:	62 a1 c5 40 58 c9    	vaddpd zmm17,zmm23,zmm17
  93aebd:	62 32 a5 48 7f e9    	vpermt2pd zmm13,zmm11,zmm17
  93aec3:	62 73 7d 48 19 6c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x20],zmm13,0x2
  93aeca:	02 02 
  93aecc:	c5 7d 11 2c 16       	vmovupd YMMWORD PTR [rsi+rdx*1],ymm13
  93aed1:	62 a2 a5 48 7f e6    	vpermt2pd zmm20,zmm11,zmm22
  93aed7:	62 e3 7d 48 19 64 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x50],zmm20,0x2
  93aede:	05 02 
  93aee0:	62 e1 fd 28 11 a4 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x30],ymm20
  93aee7:	30 00 00 00 
  93aeeb:	62 a2 a5 48 7f eb    	vpermt2pd zmm21,zmm11,zmm19
  93aef1:	62 e3 7d 48 19 6c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x80],zmm21,0x2
  93aef8:	08 02 
  93aefa:	62 e1 fd 28 11 6c 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x60],ymm21
  93af01:	03 
  93af02:	62 82 a5 48 7f c0    	vpermt2pd zmm16,zmm11,zmm24
  93af08:	62 e3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xb0],zmm16,0x2
  93af0f:	0b 02 
  93af11:	62 e1 fd 28 11 84 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0x90],ymm16
  93af18:	90 00 00 00 
  93af1c:	62 c2 a5 48 7f d6    	vpermt2pd zmm18,zmm11,zmm14
  93af22:	62 e3 7d 48 19 54 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xe0],zmm18,0x2
  93af29:	0e 02 
  93af2b:	62 e1 fd 28 11 54 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0xc0],ymm18
  93af32:	06 
  93af33:	62 52 a5 48 7f fc    	vpermt2pd zmm15,zmm11,zmm12
  93af39:	62 73 7d 48 19 7c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x110],zmm15,0x2
  93af40:	11 02 
  93af42:	c5 7d 11 bc 16 f0 00 	vmovupd YMMWORD PTR [rsi+rdx*1+0xf0],ymm15
  93af49:	00 00 
  93af4b:	48 81 c2 20 01 00 00 	add    rdx,0x120
  93af52:	48 39 d0             	cmp    rax,rdx
  93af55:	0f 85 e5 fb ff ff    	jne    93ab40 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle+0x80>
  93af5b:	c5 f8 77             	vzeroupper
  93af5e:	c3                   	ret
