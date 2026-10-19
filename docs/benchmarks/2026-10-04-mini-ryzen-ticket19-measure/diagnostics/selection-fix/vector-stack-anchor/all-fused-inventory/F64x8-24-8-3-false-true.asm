
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000914cc0 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  914cc0:	62 f1 fd 48 10 05 9e 	vmovupd zmm0,ZMMWORD PTR [rip+0xffffffffff7b209e]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  914cc7:	20 7b ff 
  914cca:	62 f1 fd 48 10 0d 14 	vmovupd zmm1,ZMMWORD PTR [rip+0xffffffffff7b2014]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  914cd1:	20 7b ff 
  914cd4:	62 f1 fd 48 10 15 4a 	vmovupd zmm2,ZMMWORD PTR [rip+0xffffffffff7b204a]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  914cdb:	20 7b ff 
  914cde:	48 c1 e2 07          	shl    rdx,0x7
  914ce2:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  914ce6:	31 d2                	xor    edx,edx
  914ce8:	62 f1 fd 48 28 1d ce 	vmovapd zmm3,ZMMWORD PTR [rip+0xffffffffff76abce]        # 7f8c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xcd70>
  914cef:	ab 76 ff 
  914cf2:	c5 d9 57 e4          	vxorpd xmm4,xmm4,xmm4
  914cf6:	62 f1 fd 48 28 2d 00 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff76ac00]        # 7f900 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xcdb0>
  914cfd:	ac 76 ff 
  914d00:	62 f2 fd 48 19 35 96 	vbroadcastsd zmm6,QWORD PTR [rip+0xffffffffff760196]        # 74ea0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2350>
  914d07:	01 76 ff 
  914d0a:	62 e2 fd 48 19 2d 84 	vbroadcastsd zmm21,QWORD PTR [rip+0xffffffffff75fd84]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  914d11:	fd 75 ff 
  914d14:	62 e2 fd 48 19 25 02 	vbroadcastsd zmm20,QWORD PTR [rip+0xffffffffff75ff02]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  914d1b:	ff 75 ff 
  914d1e:	62 61 fd 48 28 05 18 	vmovapd zmm24,ZMMWORD PTR [rip+0xffffffffff76ac18]        # 7f940 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xcdf0>
  914d25:	ac 76 ff 
  914d28:	62 61 fd 48 28 0d 4e 	vmovapd zmm25,ZMMWORD PTR [rip+0xffffffffff76ac4e]        # 7f980 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xce30>
  914d2f:	ac 76 ff 
  914d32:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  914d39:	1f 84 00 00 00 00 00 
  914d40:	c5 7b 12 5c 17 28    	vmovddup xmm11,QWORD PTR [rdi+rdx*1+0x28]
  914d46:	c4 63 21 0d 5c 17 20 	vblendpd xmm11,xmm11,XMMWORD PTR [rdi+rdx*1+0x20],0x1
  914d4d:	01 
  914d4e:	c5 7d 10 24 17       	vmovupd ymm12,YMMWORD PTR [rdi+rdx*1]
  914d53:	c5 7d 10 74 17 30    	vmovupd ymm14,YMMWORD PTR [rdi+rdx*1+0x30]
  914d59:	62 e1 fd 28 10 44 17 	vmovupd ymm16,YMMWORD PTR [rdi+rdx*1+0x60]
  914d60:	03 
  914d61:	62 e1 fd 28 10 94 17 	vmovupd ymm18,YMMWORD PTR [rdi+rdx*1+0x90]
  914d68:	90 00 00 00 
  914d6c:	62 53 1d 48 18 db 02 	vinsertf32x4 zmm11,zmm12,xmm11,0x2
  914d73:	62 51 fd 48 28 eb    	vmovapd zmm13,zmm11
  914d79:	62 72 e5 48 7f ec    	vpermt2pd zmm13,zmm3,zmm4
  914d7f:	c5 7b 12 64 17 58    	vmovddup xmm12,QWORD PTR [rdi+rdx*1+0x58]
  914d85:	c4 63 19 0d 64 17 50 	vblendpd xmm12,xmm12,XMMWORD PTR [rdi+rdx*1+0x50],0x1
  914d8c:	01 
  914d8d:	62 72 d5 48 7f dc    	vpermt2pd zmm11,zmm5,zmm4
  914d93:	62 53 0d 48 18 f4 02 	vinsertf32x4 zmm14,zmm14,xmm12,0x2
  914d9a:	62 51 fd 48 28 fe    	vmovapd zmm15,zmm14
  914da0:	62 72 e5 48 7f fc    	vpermt2pd zmm15,zmm3,zmm4
  914da6:	c5 7b 12 a4 17 88 00 	vmovddup xmm12,QWORD PTR [rdi+rdx*1+0x88]
  914dad:	00 00 
  914daf:	c4 63 19 0d a4 17 80 	vblendpd xmm12,xmm12,XMMWORD PTR [rdi+rdx*1+0x80],0x1
  914db6:	00 00 00 01 
  914dba:	62 72 d5 48 7f f4    	vpermt2pd zmm14,zmm5,zmm4
  914dc0:	62 c3 7d 40 18 cc 02 	vinsertf32x4 zmm17,zmm16,xmm12,0x2
  914dc7:	62 31 fd 48 28 e1    	vmovapd zmm12,zmm17
  914dcd:	62 72 e5 48 7f e4    	vpermt2pd zmm12,zmm3,zmm4
  914dd3:	c5 7b 12 84 17 b8 00 	vmovddup xmm8,QWORD PTR [rdi+rdx*1+0xb8]
  914dda:	00 00 
  914ddc:	c4 63 39 0d 84 17 b0 	vblendpd xmm8,xmm8,XMMWORD PTR [rdi+rdx*1+0xb0],0x1
  914de3:	00 00 00 01 
  914de7:	62 e2 d5 48 7f cc    	vpermt2pd zmm17,zmm5,zmm4
  914ded:	62 c3 6d 40 18 d0 02 	vinsertf32x4 zmm18,zmm18,xmm8,0x2
  914df4:	62 a1 fd 48 28 c2    	vmovapd zmm16,zmm18
  914dfa:	62 e2 e5 48 7f c4    	vpermt2pd zmm16,zmm3,zmm4
  914e00:	62 e2 d5 48 7f d4    	vpermt2pd zmm18,zmm5,zmm4
  914e06:	c5 7d 10 84 17 c0 00 	vmovupd ymm8,YMMWORD PTR [rdi+rdx*1+0xc0]
  914e0d:	00 00 
  914e0f:	c5 fb 12 bc 17 e8 00 	vmovddup xmm7,QWORD PTR [rdi+rdx*1+0xe8]
  914e16:	00 00 
  914e18:	c4 e3 41 0d bc 17 e0 	vblendpd xmm7,xmm7,XMMWORD PTR [rdi+rdx*1+0xe0],0x1
  914e1f:	00 00 00 01 
  914e23:	62 e3 3d 48 18 df 02 	vinsertf32x4 zmm19,zmm8,xmm7,0x2
  914e2a:	62 b1 fd 48 28 fb    	vmovapd zmm7,zmm19
  914e30:	62 f2 e5 48 7f fc    	vpermt2pd zmm7,zmm3,zmm4
  914e36:	62 e2 d5 48 7f dc    	vpermt2pd zmm19,zmm5,zmm4
  914e3c:	c5 7b 12 84 17 18 01 	vmovddup xmm8,QWORD PTR [rdi+rdx*1+0x118]
  914e43:	00 00 
  914e45:	62 e1 fd 28 10 b4 17 	vmovupd ymm22,YMMWORD PTR [rdi+rdx*1+0xf0]
  914e4c:	f0 00 00 00 
  914e50:	c4 63 39 0d 84 17 10 	vblendpd xmm8,xmm8,XMMWORD PTR [rdi+rdx*1+0x110],0x1
  914e57:	01 00 00 01 
  914e5b:	62 53 4d 40 18 c0 02 	vinsertf32x4 zmm8,zmm22,xmm8,0x2
  914e62:	62 c1 fd 48 28 f0    	vmovapd zmm22,zmm8
  914e68:	62 e2 e5 48 7f f4    	vpermt2pd zmm22,zmm3,zmm4
  914e6e:	62 72 d5 48 7f c4    	vpermt2pd zmm8,zmm5,zmm4
  914e74:	62 e1 fd 28 10 7c 17 	vmovupd ymm23,YMMWORD PTR [rdi+rdx*1+0x120]
  914e7b:	09 
  914e7c:	c5 7b 12 8c 17 48 01 	vmovddup xmm9,QWORD PTR [rdi+rdx*1+0x148]
  914e83:	00 00 
  914e85:	c4 63 31 0d 8c 17 40 	vblendpd xmm9,xmm9,XMMWORD PTR [rdi+rdx*1+0x140],0x1
  914e8c:	01 00 00 01 
  914e90:	62 53 45 40 18 c9 02 	vinsertf32x4 zmm9,zmm23,xmm9,0x2
  914e97:	62 c1 fd 48 28 f9    	vmovapd zmm23,zmm9
  914e9d:	62 e2 e5 48 7f fc    	vpermt2pd zmm23,zmm3,zmm4
  914ea3:	62 72 d5 48 7f cc    	vpermt2pd zmm9,zmm5,zmm4
  914ea9:	c5 7b 12 94 17 78 01 	vmovddup xmm10,QWORD PTR [rdi+rdx*1+0x178]
  914eb0:	00 00 
  914eb2:	c4 63 29 0d 94 17 70 	vblendpd xmm10,xmm10,XMMWORD PTR [rdi+rdx*1+0x170],0x1
  914eb9:	01 00 00 01 
  914ebd:	62 61 fd 28 10 94 17 	vmovupd ymm26,YMMWORD PTR [rdi+rdx*1+0x150]
  914ec4:	50 01 00 00 
  914ec8:	62 53 2d 40 18 d2 02 	vinsertf32x4 zmm10,zmm26,xmm10,0x2
  914ecf:	62 41 fd 48 28 d2    	vmovapd zmm26,zmm10
  914ed5:	62 62 e5 48 7f d4    	vpermt2pd zmm26,zmm3,zmm4
  914edb:	62 72 d5 48 7f d4    	vpermt2pd zmm10,zmm5,zmm4
  914ee1:	62 61 95 48 58 df    	vaddpd zmm27,zmm13,zmm7
  914ee7:	62 f1 95 48 5c ff    	vsubpd zmm7,zmm13,zmm7
  914eed:	62 51 f5 40 58 e9    	vaddpd zmm13,zmm17,zmm9
  914ef3:	62 51 f5 40 5c c9    	vsubpd zmm9,zmm17,zmm9
  914ef9:	62 a1 85 48 58 ce    	vaddpd zmm17,zmm15,zmm22
  914eff:	62 31 85 48 5c fe    	vsubpd zmm15,zmm15,zmm22
  914f05:	62 c1 8d 48 58 f0    	vaddpd zmm22,zmm14,zmm8
  914f0b:	62 51 8d 48 5c c0    	vsubpd zmm8,zmm14,zmm8
  914f11:	62 51 ed 40 58 f2    	vaddpd zmm14,zmm18,zmm10
  914f17:	62 51 ed 40 5c d2    	vsubpd zmm10,zmm18,zmm10
  914f1d:	62 81 fd 40 58 d2    	vaddpd zmm18,zmm16,zmm26
  914f23:	62 81 fd 40 5c c2    	vsubpd zmm16,zmm16,zmm26
  914f29:	62 21 a5 48 58 d3    	vaddpd zmm26,zmm11,zmm19
  914f2f:	62 31 a5 48 5c db    	vsubpd zmm11,zmm11,zmm19
  914f35:	62 a1 9d 48 58 df    	vaddpd zmm19,zmm12,zmm23
  914f3b:	62 51 c5 40 5c e4    	vsubpd zmm12,zmm23,zmm12
  914f41:	62 c1 85 48 58 f8    	vaddpd zmm23,zmm15,zmm8
  914f47:	62 51 bd 48 5c c7    	vsubpd zmm8,zmm8,zmm15
  914f4d:	62 31 ad 48 5c f8    	vsubpd zmm15,zmm10,zmm16
  914f53:	62 51 fd 40 58 d2    	vaddpd zmm10,zmm16,zmm10
  914f59:	62 a1 a5 40 58 c3    	vaddpd zmm16,zmm27,zmm19
  914f5f:	62 a1 a5 40 5c db    	vsubpd zmm19,zmm27,zmm19
  914f65:	62 41 cd 40 58 de    	vaddpd zmm27,zmm22,zmm14
  914f6b:	62 51 cd 40 5c f6    	vsubpd zmm14,zmm22,zmm14
  914f71:	62 c1 ad 40 58 f5    	vaddpd zmm22,zmm26,zmm13
  914f77:	62 51 ad 40 5c ed    	vsubpd zmm13,zmm26,zmm13
  914f7d:	62 21 f5 40 58 d2    	vaddpd zmm26,zmm17,zmm18
  914f83:	62 a1 ed 40 5c c9    	vsubpd zmm17,zmm18,zmm17
  914f89:	62 c1 c5 48 58 d1    	vaddpd zmm18,zmm7,zmm9
  914f8f:	62 e1 c5 40 59 fe    	vmulpd zmm23,zmm23,zmm6
  914f95:	62 71 85 48 59 fe    	vmulpd zmm15,zmm15,zmm6
  914f9b:	62 71 bd 48 59 c6    	vmulpd zmm8,zmm8,zmm6
  914fa1:	62 71 ad 48 59 d6    	vmulpd zmm10,zmm10,zmm6
  914fa7:	62 d1 c5 48 5c f9    	vsubpd zmm7,zmm7,zmm9
  914fad:	62 51 bd 48 5c ca    	vsubpd zmm9,zmm8,zmm10
  914fb3:	62 51 bd 48 58 c2    	vaddpd zmm8,zmm8,zmm10
  914fb9:	62 51 9d 48 58 d3    	vaddpd zmm10,zmm12,zmm11
  914fbf:	62 51 a5 48 5c dc    	vsubpd zmm11,zmm11,zmm12
  914fc5:	62 51 c5 40 58 e7    	vaddpd zmm12,zmm23,zmm15
  914fcb:	62 31 85 48 5c ff    	vsubpd zmm15,zmm15,zmm23
  914fd1:	62 81 fd 40 58 fa    	vaddpd zmm23,zmm16,zmm26
  914fd7:	62 81 fd 40 5c c2    	vsubpd zmm16,zmm16,zmm26
  914fdd:	62 01 cd 40 58 d3    	vaddpd zmm26,zmm22,zmm27
  914fe3:	62 81 cd 40 5c f3    	vsubpd zmm22,zmm22,zmm27
  914fe9:	62 41 ed 40 58 dc    	vaddpd zmm27,zmm18,zmm12
  914fef:	62 51 ed 40 5c e4    	vsubpd zmm12,zmm18,zmm12
  914ff5:	62 c1 ad 48 58 d1    	vaddpd zmm18,zmm10,zmm9
  914ffb:	62 51 ad 48 5c c9    	vsubpd zmm9,zmm10,zmm9
  915001:	62 51 e5 40 58 d6    	vaddpd zmm10,zmm19,zmm14
  915007:	62 51 e5 40 5c f6    	vsubpd zmm14,zmm19,zmm14
  91500d:	62 c1 f5 40 58 dd    	vaddpd zmm19,zmm17,zmm13
  915013:	62 31 95 48 5c e9    	vsubpd zmm13,zmm13,zmm17
  915019:	62 c1 c5 48 58 c8    	vaddpd zmm17,zmm7,zmm8
  91501f:	62 d1 c5 48 5c f8    	vsubpd zmm7,zmm7,zmm8
  915025:	62 51 a5 48 58 c7    	vaddpd zmm8,zmm11,zmm15
  91502b:	62 51 a5 48 5c df    	vsubpd zmm11,zmm11,zmm15
  915031:	62 a2 fd 48 7f f8    	vpermt2pd zmm23,zmm0,zmm16
  915037:	62 42 fd 48 7f dc    	vpermt2pd zmm27,zmm0,zmm12
  91503d:	62 52 fd 48 7f d6    	vpermt2pd zmm10,zmm0,zmm14
  915043:	62 e2 fd 48 7f cf    	vpermt2pd zmm17,zmm0,zmm7
  915049:	62 b1 fd 48 28 ff    	vmovapd zmm7,zmm23
  91504f:	62 d2 f5 48 7f fa    	vpermt2pd zmm7,zmm1,zmm10
  915055:	62 c2 ed 48 7f fa    	vpermt2pd zmm23,zmm2,zmm10
  91505b:	62 11 fd 48 28 d3    	vmovapd zmm10,zmm27
  915061:	62 32 f5 48 7f d1    	vpermt2pd zmm10,zmm1,zmm17
  915067:	62 22 ed 48 7f d9    	vpermt2pd zmm27,zmm2,zmm17
  91506d:	62 11 c5 40 14 e3    	vunpcklpd zmm12,zmm23,zmm27
  915073:	62 51 c5 48 14 f2    	vunpcklpd zmm14,zmm7,zmm10
  915079:	62 d1 c5 48 15 fa    	vunpckhpd zmm7,zmm7,zmm10
  91507f:	62 22 fd 48 7f d6    	vpermt2pd zmm26,zmm0,zmm22
  915085:	62 c2 fd 48 7f d1    	vpermt2pd zmm18,zmm0,zmm9
  91508b:	62 c2 fd 48 7f dd    	vpermt2pd zmm19,zmm0,zmm13
  915091:	62 52 fd 48 7f c3    	vpermt2pd zmm8,zmm0,zmm11
  915097:	62 11 fd 48 28 ca    	vmovapd zmm9,zmm26
  91509d:	62 32 f5 48 7f cb    	vpermt2pd zmm9,zmm1,zmm19
  9150a3:	62 22 ed 48 7f d3    	vpermt2pd zmm26,zmm2,zmm19
  9150a9:	62 31 fd 48 28 d2    	vmovapd zmm10,zmm18
  9150af:	62 52 f5 48 7f d0    	vpermt2pd zmm10,zmm1,zmm8
  9150b5:	62 c2 ed 48 7f d0    	vpermt2pd zmm18,zmm2,zmm8
  9150bb:	62 31 ad 40 14 c2    	vunpcklpd zmm8,zmm26,zmm18
  9150c1:	62 51 b5 48 14 da    	vunpcklpd zmm11,zmm9,zmm10
  9150c7:	62 51 b5 48 15 ca    	vunpckhpd zmm9,zmm9,zmm10
  9150cd:	62 71 fd 48 10 51 02 	vmovupd zmm10,ZMMWORD PTR [rcx+0x80]
  9150d4:	62 71 fd 48 10 69 03 	vmovupd zmm13,ZMMWORD PTR [rcx+0xc0]
  9150db:	62 51 b5 48 59 fa    	vmulpd zmm15,zmm9,zmm10
  9150e1:	62 52 c5 48 b8 fd    	vfmadd231pd zmm15,zmm7,zmm13
  9150e7:	62 d1 c5 48 59 fa    	vmulpd zmm7,zmm7,zmm10
  9150ed:	62 71 fd 48 10 51 04 	vmovupd zmm10,ZMMWORD PTR [rcx+0x100]
  9150f4:	62 d2 b5 48 bc fd    	vfnmadd231pd zmm7,zmm9,zmm13
  9150fa:	62 71 fd 48 10 49 05 	vmovupd zmm9,ZMMWORD PTR [rcx+0x140]
  915101:	62 51 bd 48 59 ea    	vmulpd zmm13,zmm8,zmm10
  915107:	62 52 9d 48 b8 e9    	vfmadd231pd zmm13,zmm12,zmm9
  91510d:	62 51 9d 48 59 d2    	vmulpd zmm10,zmm12,zmm10
  915113:	62 51 85 48 58 e5    	vaddpd zmm12,zmm15,zmm13
  915119:	62 52 bd 48 bc d1    	vfnmadd231pd zmm10,zmm8,zmm9
  91511f:	62 31 fd 48 28 c5    	vmovapd zmm8,zmm21
  915125:	62 52 9d 48 ac c3    	vfnmadd213pd zmm8,zmm12,zmm11
  91512b:	62 51 c5 48 5c ca    	vsubpd zmm9,zmm7,zmm10
  915131:	62 31 b5 48 59 cc    	vmulpd zmm9,zmm9,zmm20
  915137:	62 d1 c5 48 58 fa    	vaddpd zmm7,zmm7,zmm10
  91513d:	62 51 bd 48 58 d1    	vaddpd zmm10,zmm8,zmm9
  915143:	62 51 85 48 5c ed    	vsubpd zmm13,zmm15,zmm13
  915149:	62 31 fd 48 28 fd    	vmovapd zmm15,zmm21
  91514f:	62 52 c5 48 ac fe    	vfnmadd213pd zmm15,zmm7,zmm14
  915155:	62 31 95 48 59 ec    	vmulpd zmm13,zmm13,zmm20
  91515b:	62 51 bd 48 5c c1    	vsubpd zmm8,zmm8,zmm9
  915161:	62 51 85 48 5c cd    	vsubpd zmm9,zmm15,zmm13
  915167:	62 51 85 48 58 ed    	vaddpd zmm13,zmm15,zmm13
  91516d:	62 51 a5 48 58 dc    	vaddpd zmm11,zmm11,zmm12
  915173:	62 f1 8d 48 58 ff    	vaddpd zmm7,zmm14,zmm7
  915179:	62 71 fd 48 28 e7    	vmovapd zmm12,zmm7
  91517f:	62 52 bd 40 7f e3    	vpermt2pd zmm12,zmm24,zmm11
  915185:	62 d2 b5 40 7f fb    	vpermt2pd zmm7,zmm25,zmm11
  91518b:	62 f1 fd 48 11 3c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1],zmm7
  915192:	62 71 fd 48 11 64 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x40],zmm12
  915199:	01 
  91519a:	62 d1 fd 48 28 fd    	vmovapd zmm7,zmm13
  9151a0:	62 d2 bd 40 7f f8    	vpermt2pd zmm7,zmm24,zmm8
  9151a6:	62 52 b5 40 7f e8    	vpermt2pd zmm13,zmm25,zmm8
  9151ac:	62 71 fd 48 11 6c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x80],zmm13
  9151b3:	02 
  9151b4:	62 f1 fd 48 11 7c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0xc0],zmm7
  9151bb:	03 
  9151bc:	62 d1 fd 48 28 f9    	vmovapd zmm7,zmm9
  9151c2:	62 d2 bd 40 7f fa    	vpermt2pd zmm7,zmm24,zmm10
  9151c8:	62 52 b5 40 7f ca    	vpermt2pd zmm9,zmm25,zmm10
  9151ce:	62 71 fd 48 11 4c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x100],zmm9
  9151d5:	04 
  9151d6:	62 f1 fd 48 11 7c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x140],zmm7
  9151dd:	05 
  9151de:	48 81 c2 80 01 00 00 	add    rdx,0x180
  9151e5:	48 39 d0             	cmp    rax,rdx
  9151e8:	0f 85 52 fb ff ff    	jne    914d40 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle+0x80>
  9151ee:	c5 f8 77             	vzeroupper
  9151f1:	c3                   	ret
