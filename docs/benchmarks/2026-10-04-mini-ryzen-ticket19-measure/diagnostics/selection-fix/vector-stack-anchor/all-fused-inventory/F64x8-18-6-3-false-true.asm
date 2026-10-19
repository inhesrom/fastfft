
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000921e00 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  921e00:	62 f1 fd 48 10 05 5e 	vmovupd zmm0,ZMMWORD PTR [rip+0xffffffffff7a4f5e]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  921e07:	4f 7a ff 
  921e0a:	62 f1 fd 48 10 0d d4 	vmovupd zmm1,ZMMWORD PTR [rip+0xffffffffff7a4ed4]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  921e11:	4e 7a ff 
  921e14:	62 f1 fd 48 10 15 0a 	vmovupd zmm2,ZMMWORD PTR [rip+0xffffffffff7a4f0a]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  921e1b:	4f 7a ff 
  921e1e:	48 c1 e2 05          	shl    rdx,0x5
  921e22:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  921e26:	31 d2                	xor    edx,edx
  921e28:	62 f1 fd 48 28 1d ce 	vmovapd zmm3,ZMMWORD PTR [rip+0xffffffffff75ecce]        # 80b00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xdfb0>
  921e2f:	ec 75 ff 
  921e32:	c5 d9 57 e4          	vxorpd xmm4,xmm4,xmm4
  921e36:	62 f1 fd 48 28 2d 00 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff75ed00]        # 80b40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xdff0>
  921e3d:	ed 75 ff 
  921e40:	62 f2 fd 48 19 35 4e 	vbroadcastsd zmm6,QWORD PTR [rip+0xffffffffff752c4e]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  921e47:	2c 75 ff 
  921e4a:	62 f2 fd 48 19 3d cc 	vbroadcastsd zmm7,QWORD PTR [rip+0xffffffffff752dcc]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  921e51:	2d 75 ff 
  921e54:	62 e1 fd 28 28 1d a2 	vmovapd ymm19,YMMWORD PTR [rip+0xffffffffff754ea2]        # 76d00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x41b0>
  921e5b:	4e 75 ff 
  921e5e:	62 71 fd 48 28 0d 18 	vmovapd zmm9,ZMMWORD PTR [rip+0xffffffffff75ed18]        # 80b80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xe030>
  921e65:	ed 75 ff 
  921e68:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  921e6f:	00 
  921e70:	c5 7b 12 54 17 28    	vmovddup xmm10,QWORD PTR [rdi+rdx*1+0x28]
  921e76:	c4 63 29 0d 54 17 20 	vblendpd xmm10,xmm10,XMMWORD PTR [rdi+rdx*1+0x20],0x1
  921e7d:	01 
  921e7e:	c5 7d 10 1c 17       	vmovupd ymm11,YMMWORD PTR [rdi+rdx*1]
  921e83:	c5 7d 10 64 17 30    	vmovupd ymm12,YMMWORD PTR [rdi+rdx*1+0x30]
  921e89:	c5 7d 10 74 17 60    	vmovupd ymm14,YMMWORD PTR [rdi+rdx*1+0x60]
  921e8f:	c5 7d 10 bc 17 90 00 	vmovupd ymm15,YMMWORD PTR [rdi+rdx*1+0x90]
  921e96:	00 00 
  921e98:	62 53 25 48 18 d2 02 	vinsertf32x4 zmm10,zmm11,xmm10,0x2
  921e9f:	62 51 fd 48 28 da    	vmovapd zmm11,zmm10
  921ea5:	62 72 e5 48 7f dc    	vpermt2pd zmm11,zmm3,zmm4
  921eab:	c5 7b 12 6c 17 58    	vmovddup xmm13,QWORD PTR [rdi+rdx*1+0x58]
  921eb1:	62 72 d5 48 7f d4    	vpermt2pd zmm10,zmm5,zmm4
  921eb7:	c4 63 11 0d 6c 17 50 	vblendpd xmm13,xmm13,XMMWORD PTR [rdi+rdx*1+0x50],0x1
  921ebe:	01 
  921ebf:	62 c3 1d 48 18 c5 02 	vinsertf32x4 zmm16,zmm12,xmm13,0x2
  921ec6:	62 31 fd 48 28 e8    	vmovapd zmm13,zmm16
  921ecc:	62 72 e5 48 7f ec    	vpermt2pd zmm13,zmm3,zmm4
  921ed2:	c5 7b 12 a4 17 88 00 	vmovddup xmm12,QWORD PTR [rdi+rdx*1+0x88]
  921ed9:	00 00 
  921edb:	62 e2 d5 48 7f c4    	vpermt2pd zmm16,zmm5,zmm4
  921ee1:	c4 63 19 0d a4 17 80 	vblendpd xmm12,xmm12,XMMWORD PTR [rdi+rdx*1+0x80],0x1
  921ee8:	00 00 00 01 
  921eec:	62 53 0d 48 18 f4 02 	vinsertf32x4 zmm14,zmm14,xmm12,0x2
  921ef3:	62 c1 fd 48 28 ce    	vmovapd zmm17,zmm14
  921ef9:	62 e2 e5 48 7f cc    	vpermt2pd zmm17,zmm3,zmm4
  921eff:	c5 7b 12 a4 17 b8 00 	vmovddup xmm12,QWORD PTR [rdi+rdx*1+0xb8]
  921f06:	00 00 
  921f08:	62 72 d5 48 7f f4    	vpermt2pd zmm14,zmm5,zmm4
  921f0e:	c4 63 19 0d a4 17 b0 	vblendpd xmm12,xmm12,XMMWORD PTR [rdi+rdx*1+0xb0],0x1
  921f15:	00 00 00 01 
  921f19:	62 53 05 48 18 fc 02 	vinsertf32x4 zmm15,zmm15,xmm12,0x2
  921f20:	62 c1 fd 48 28 d7    	vmovapd zmm18,zmm15
  921f26:	62 e2 e5 48 7f d4    	vpermt2pd zmm18,zmm3,zmm4
  921f2c:	62 72 d5 48 7f fc    	vpermt2pd zmm15,zmm5,zmm4
  921f32:	c5 7d 10 a4 17 c0 00 	vmovupd ymm12,YMMWORD PTR [rdi+rdx*1+0xc0]
  921f39:	00 00 
  921f3b:	c5 7b 12 84 17 e8 00 	vmovddup xmm8,QWORD PTR [rdi+rdx*1+0xe8]
  921f42:	00 00 
  921f44:	c4 63 39 0d 84 17 e0 	vblendpd xmm8,xmm8,XMMWORD PTR [rdi+rdx*1+0xe0],0x1
  921f4b:	00 00 00 01 
  921f4f:	62 53 1d 48 18 c0 02 	vinsertf32x4 zmm8,zmm12,xmm8,0x2
  921f56:	62 c1 fd 48 28 e0    	vmovapd zmm20,zmm8
  921f5c:	62 e2 e5 48 7f e4    	vpermt2pd zmm20,zmm3,zmm4
  921f62:	62 72 d5 48 7f c4    	vpermt2pd zmm8,zmm5,zmm4
  921f68:	c5 7b 12 a4 17 18 01 	vmovddup xmm12,QWORD PTR [rdi+rdx*1+0x118]
  921f6f:	00 00 
  921f71:	c4 63 19 0d a4 17 10 	vblendpd xmm12,xmm12,XMMWORD PTR [rdi+rdx*1+0x110],0x1
  921f78:	01 00 00 01 
  921f7c:	62 e1 fd 28 10 ac 17 	vmovupd ymm21,YMMWORD PTR [rdi+rdx*1+0xf0]
  921f83:	f0 00 00 00 
  921f87:	62 c3 55 40 18 ec 02 	vinsertf32x4 zmm21,zmm21,xmm12,0x2
  921f8e:	62 a1 fd 48 28 f5    	vmovapd zmm22,zmm21
  921f94:	62 e2 e5 48 7f f4    	vpermt2pd zmm22,zmm3,zmm4
  921f9a:	62 e2 d5 48 7f ec    	vpermt2pd zmm21,zmm5,zmm4
  921fa0:	62 a1 f5 40 58 fc    	vaddpd zmm23,zmm17,zmm20
  921fa6:	62 21 a5 48 58 c7    	vaddpd zmm24,zmm11,zmm23
  921fac:	62 41 cd 40 58 cd    	vaddpd zmm25,zmm22,zmm13
  921fb2:	62 01 ed 40 58 d1    	vaddpd zmm26,zmm18,zmm25
  921fb8:	62 01 bd 40 58 da    	vaddpd zmm27,zmm24,zmm26
  921fbe:	62 41 8d 48 58 e0    	vaddpd zmm28,zmm14,zmm8
  921fc4:	62 01 ad 48 58 ec    	vaddpd zmm29,zmm10,zmm28
  921fca:	62 21 d5 40 58 f0    	vaddpd zmm30,zmm21,zmm16
  921fd0:	62 01 85 48 58 fe    	vaddpd zmm31,zmm15,zmm30
  921fd6:	62 11 95 40 58 e7    	vaddpd zmm12,zmm29,zmm31
  921fdc:	62 32 cd 48 bc df    	vfnmadd231pd zmm11,zmm6,zmm23
  921fe2:	62 51 8d 48 5c c0    	vsubpd zmm8,zmm14,zmm8
  921fe8:	62 71 bd 48 59 c7    	vmulpd zmm8,zmm8,zmm7
  921fee:	62 51 a5 48 58 f0    	vaddpd zmm14,zmm11,zmm8
  921ff4:	62 82 cd 48 bc d1    	vfnmadd231pd zmm18,zmm6,zmm25
  921ffa:	62 a1 d5 40 5c c0    	vsubpd zmm16,zmm21,zmm16
  922000:	62 e1 fd 40 59 c7    	vmulpd zmm16,zmm16,zmm7
  922006:	62 a1 ed 40 58 e8    	vaddpd zmm21,zmm18,zmm16
  92200c:	62 a1 8d 48 5c fd    	vsubpd zmm23,zmm14,zmm21
  922012:	62 12 cd 48 bc d4    	vfnmadd231pd zmm10,zmm6,zmm28
  922018:	62 a1 f5 40 5c cc    	vsubpd zmm17,zmm17,zmm20
  92201e:	62 e1 f5 40 59 cf    	vmulpd zmm17,zmm17,zmm7
  922024:	62 a1 ad 48 5c e1    	vsubpd zmm20,zmm10,zmm17
  92202a:	62 12 cd 48 bc fe    	vfnmadd231pd zmm15,zmm6,zmm30
  922030:	62 51 cd 40 5c ed    	vsubpd zmm13,zmm22,zmm13
  922036:	62 71 95 48 59 ef    	vmulpd zmm13,zmm13,zmm7
  92203c:	62 c1 85 48 5c f5    	vsubpd zmm22,zmm15,zmm13
  922042:	62 21 dd 40 5c ce    	vsubpd zmm25,zmm20,zmm22
  922048:	62 51 a5 48 5c c0    	vsubpd zmm8,zmm11,zmm8
  92204e:	62 31 ed 40 5c d8    	vsubpd zmm11,zmm18,zmm16
  922054:	62 c1 bd 48 58 c3    	vaddpd zmm16,zmm8,zmm11
  92205a:	62 51 f5 40 58 d2    	vaddpd zmm10,zmm17,zmm10
  922060:	62 51 95 48 58 ef    	vaddpd zmm13,zmm13,zmm15
  922066:	62 51 ad 48 58 fd    	vaddpd zmm15,zmm10,zmm13
  92206c:	62 81 bd 40 5c ca    	vsubpd zmm17,zmm24,zmm26
  922072:	62 81 95 40 5c d7    	vsubpd zmm18,zmm29,zmm31
  922078:	62 31 8d 48 58 f5    	vaddpd zmm14,zmm14,zmm21
  92207e:	62 a1 dd 40 58 e6    	vaddpd zmm20,zmm20,zmm22
  922084:	62 51 bd 48 5c c3    	vsubpd zmm8,zmm8,zmm11
  92208a:	62 51 ad 48 5c d5    	vsubpd zmm10,zmm10,zmm13
  922090:	62 42 fd 48 7f de    	vpermt2pd zmm27,zmm0,zmm14
  922096:	62 c2 fd 48 7f f8    	vpermt2pd zmm23,zmm0,zmm8
  92209c:	62 e2 fd 48 7f c4    	vpermt2pd zmm16,zmm0,zmm4
  9220a2:	62 e2 fd 48 7f cc    	vpermt2pd zmm17,zmm0,zmm4
  9220a8:	62 11 fd 48 28 c3    	vmovapd zmm8,zmm27
  9220ae:	62 32 f5 48 7f c0    	vpermt2pd zmm8,zmm1,zmm16
  9220b4:	62 22 ed 48 7f d8    	vpermt2pd zmm27,zmm2,zmm16
  9220ba:	62 31 fd 48 28 df    	vmovapd zmm11,zmm23
  9220c0:	62 32 f5 48 7f d9    	vpermt2pd zmm11,zmm1,zmm17
  9220c6:	62 a2 ed 48 7f f9    	vpermt2pd zmm23,zmm2,zmm17
  9220cc:	62 31 a5 40 14 ef    	vunpcklpd zmm13,zmm27,zmm23
  9220d2:	62 51 bd 48 14 f3    	vunpcklpd zmm14,zmm8,zmm11
  9220d8:	62 51 bd 48 15 c3    	vunpckhpd zmm8,zmm8,zmm11
  9220de:	62 32 fd 48 7f e4    	vpermt2pd zmm12,zmm0,zmm20
  9220e4:	62 42 fd 48 7f ca    	vpermt2pd zmm25,zmm0,zmm10
  9220ea:	62 72 fd 48 7f fc    	vpermt2pd zmm15,zmm0,zmm4
  9220f0:	62 e2 fd 48 7f d4    	vpermt2pd zmm18,zmm0,zmm4
  9220f6:	62 51 fd 48 28 d4    	vmovapd zmm10,zmm12
  9220fc:	62 52 f5 48 7f d7    	vpermt2pd zmm10,zmm1,zmm15
  922102:	62 52 ed 48 7f e7    	vpermt2pd zmm12,zmm2,zmm15
  922108:	62 11 fd 48 28 d9    	vmovapd zmm11,zmm25
  92210e:	62 32 f5 48 7f da    	vpermt2pd zmm11,zmm1,zmm18
  922114:	62 22 ed 48 7f ca    	vpermt2pd zmm25,zmm2,zmm18
  92211a:	62 11 9d 48 14 e1    	vunpcklpd zmm12,zmm12,zmm25
  922120:	62 51 ad 48 14 fb    	vunpcklpd zmm15,zmm10,zmm11
  922126:	62 51 ad 48 15 d3    	vunpckhpd zmm10,zmm10,zmm11
  92212c:	62 71 fd 48 10 59 02 	vmovupd zmm11,ZMMWORD PTR [rcx+0x80]
  922133:	62 e1 fd 48 10 41 03 	vmovupd zmm16,ZMMWORD PTR [rcx+0xc0]
  92213a:	62 e1 fd 48 10 49 04 	vmovupd zmm17,ZMMWORD PTR [rcx+0x100]
  922141:	62 e1 fd 48 10 51 05 	vmovupd zmm18,ZMMWORD PTR [rcx+0x140]
  922148:	62 c1 bd 48 59 e3    	vmulpd zmm20,zmm8,zmm11
  92214e:	62 a2 ad 48 bc e0    	vfnmadd231pd zmm20,zmm10,zmm16
  922154:	62 a1 95 48 59 e9    	vmulpd zmm21,zmm13,zmm17
  92215a:	62 a2 9d 48 bc ea    	vfnmadd231pd zmm21,zmm12,zmm18
  922160:	62 a1 dd 40 58 f5    	vaddpd zmm22,zmm20,zmm21
  922166:	62 51 ad 48 59 d3    	vmulpd zmm10,zmm10,zmm11
  92216c:	62 32 bd 48 b8 d0    	vfmadd231pd zmm10,zmm8,zmm16
  922172:	62 31 9d 48 59 c1    	vmulpd zmm8,zmm12,zmm17
  922178:	62 32 95 48 b8 c2    	vfmadd231pd zmm8,zmm13,zmm18
  92217e:	62 51 ad 48 58 d8    	vaddpd zmm11,zmm10,zmm8
  922184:	62 71 fd 48 28 e6    	vmovapd zmm12,zmm6
  92218a:	62 52 cd 40 ac e6    	vfnmadd213pd zmm12,zmm22,zmm14
  922190:	62 51 ad 48 5c c0    	vsubpd zmm8,zmm10,zmm8
  922196:	62 71 bd 48 59 c7    	vmulpd zmm8,zmm8,zmm7
  92219c:	62 51 9d 48 58 d0    	vaddpd zmm10,zmm12,zmm8
  9221a2:	62 71 fd 48 28 ee    	vmovapd zmm13,zmm6
  9221a8:	62 52 a5 48 ac ef    	vfnmadd213pd zmm13,zmm11,zmm15
  9221ae:	62 a1 dd 40 5c c5    	vsubpd zmm16,zmm20,zmm21
  9221b4:	62 e1 fd 40 59 c7    	vmulpd zmm16,zmm16,zmm7
  9221ba:	62 a1 95 48 5c c8    	vsubpd zmm17,zmm13,zmm16
  9221c0:	62 c1 fd 48 28 d2    	vmovapd zmm18,zmm10
  9221c6:	62 a2 e5 40 7f d1    	vpermt2pd zmm18,zmm19,zmm17
  9221cc:	62 51 9d 48 5c c0    	vsubpd zmm8,zmm12,zmm8
  9221d2:	62 31 95 48 58 e0    	vaddpd zmm12,zmm13,zmm16
  9221d8:	62 51 fd 48 28 e8    	vmovapd zmm13,zmm8
  9221de:	62 52 e5 40 7f ec    	vpermt2pd zmm13,zmm19,zmm12
  9221e4:	62 31 8d 48 58 f6    	vaddpd zmm14,zmm14,zmm22
  9221ea:	62 51 85 48 58 db    	vaddpd zmm11,zmm15,zmm11
  9221f0:	62 51 fd 48 28 fe    	vmovapd zmm15,zmm14
  9221f6:	62 52 e5 40 7f fb    	vpermt2pd zmm15,zmm19,zmm11
  9221fc:	62 52 b5 48 7f f3    	vpermt2pd zmm14,zmm9,zmm11
  922202:	62 71 fd 48 11 34 16 	vmovupd ZMMWORD PTR [rsi+rdx*1],zmm14
  922209:	c5 7d 11 7c 16 40    	vmovupd YMMWORD PTR [rsi+rdx*1+0x40],ymm15
  92220f:	62 32 b5 48 7f d1    	vpermt2pd zmm10,zmm9,zmm17
  922215:	62 71 fd 48 11 94 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x60],zmm10
  92221c:	60 00 00 00 
  922220:	62 e1 fd 28 11 54 16 	vmovupd YMMWORD PTR [rsi+rdx*1+0xa0],ymm18
  922227:	05 
  922228:	62 52 b5 48 7f c4    	vpermt2pd zmm8,zmm9,zmm12
  92222e:	62 71 fd 48 11 44 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0xc0],zmm8
  922235:	03 
  922236:	c5 7d 11 ac 16 00 01 	vmovupd YMMWORD PTR [rsi+rdx*1+0x100],ymm13
  92223d:	00 00 
  92223f:	48 81 c2 20 01 00 00 	add    rdx,0x120
  922246:	48 39 d0             	cmp    rax,rdx
  922249:	0f 85 21 fc ff ff    	jne    921e70 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle+0x70>
  92224f:	c5 f8 77             	vzeroupper
  922252:	c3                   	ret
