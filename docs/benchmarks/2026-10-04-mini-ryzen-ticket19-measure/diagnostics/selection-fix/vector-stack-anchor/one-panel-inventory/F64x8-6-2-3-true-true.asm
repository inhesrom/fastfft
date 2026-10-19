
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

000000000090ba80 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  90ba80:	62 f1 fd 48 10 05 de 	vmovupd zmm0,ZMMWORD PTR [rip+0xffffffffff7bb2de]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  90ba87:	b2 7b ff 
  90ba8a:	c5 f1 57 c9          	vxorpd xmm1,xmm1,xmm1
  90ba8e:	c5 e9 57 d2          	vxorpd xmm2,xmm2,xmm2
  90ba92:	62 f2 fd 48 7f d2    	vpermt2pd zmm2,zmm0,zmm2
  90ba98:	62 f1 fd 48 10 1d 46 	vmovupd zmm3,ZMMWORD PTR [rip+0xffffffffff7bb246]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  90ba9f:	b2 7b ff 
  90baa2:	62 f1 fd 48 10 25 7c 	vmovupd zmm4,ZMMWORD PTR [rip+0xffffffffff7bb27c]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  90baa9:	b2 7b ff 
  90baac:	48 c1 e2 05          	shl    rdx,0x5
  90bab0:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  90bab4:	31 d2                	xor    edx,edx
  90bab6:	62 f1 fd 48 28 2d c0 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff7733c0]        # 7ee80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xc330>
  90babd:	33 77 ff 
  90bac0:	62 f2 fd 48 19 35 ce 	vbroadcastsd zmm6,QWORD PTR [rip+0xffffffffff768fce]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  90bac7:	8f 76 ff 
  90baca:	62 f1 fd 48 28 3d ec 	vmovapd zmm7,ZMMWORD PTR [rip+0xffffffffff7733ec]        # 7eec0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xc370>
  90bad1:	33 77 ff 
  90bad4:	c5 7d 28 05 84 b0 76 	vmovapd ymm8,YMMWORD PTR [rip+0xffffffffff76b084]        # 76b60 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4010>
  90badb:	ff 
  90badc:	c4 62 7d 19 0d 3b 91 	vbroadcastsd ymm9,QWORD PTR [rip+0xffffffffff76913b]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  90bae3:	76 ff 
  90bae5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  90baec:	00 00 00 00 
  90baf0:	c5 7b 12 54 17 28    	vmovddup xmm10,QWORD PTR [rdi+rdx*1+0x28]
  90baf6:	c4 63 29 0d 54 17 20 	vblendpd xmm10,xmm10,XMMWORD PTR [rdi+rdx*1+0x20],0x1
  90bafd:	01 
  90bafe:	c5 7d 10 1c 17       	vmovupd ymm11,YMMWORD PTR [rdi+rdx*1]
  90bb03:	c5 7d 10 64 17 30    	vmovupd ymm12,YMMWORD PTR [rdi+rdx*1+0x30]
  90bb09:	62 53 25 48 18 d2 02 	vinsertf32x4 zmm10,zmm11,xmm10,0x2
  90bb10:	62 51 fd 48 28 da    	vmovapd zmm11,zmm10
  90bb16:	62 72 d5 48 7f d9    	vpermt2pd zmm11,zmm5,zmm1
  90bb1c:	62 72 c5 48 7f d1    	vpermt2pd zmm10,zmm7,zmm1
  90bb22:	c5 7b 12 6c 17 58    	vmovddup xmm13,QWORD PTR [rdi+rdx*1+0x58]
  90bb28:	c4 63 11 0d 6c 17 50 	vblendpd xmm13,xmm13,XMMWORD PTR [rdi+rdx*1+0x50],0x1
  90bb2f:	01 
  90bb30:	62 53 1d 48 18 e5 02 	vinsertf32x4 zmm12,zmm12,xmm13,0x2
  90bb37:	62 51 fd 48 28 ec    	vmovapd zmm13,zmm12
  90bb3d:	62 72 d5 48 7f e9    	vpermt2pd zmm13,zmm5,zmm1
  90bb43:	62 72 c5 48 7f e1    	vpermt2pd zmm12,zmm7,zmm1
  90bb49:	62 51 ad 48 58 f4    	vaddpd zmm14,zmm10,zmm12
  90bb4f:	62 51 a5 48 58 fd    	vaddpd zmm15,zmm11,zmm13
  90bb55:	62 51 ad 48 5c d4    	vsubpd zmm10,zmm10,zmm12
  90bb5b:	62 51 a5 48 5c dd    	vsubpd zmm11,zmm11,zmm13
  90bb61:	62 72 fd 48 7f f1    	vpermt2pd zmm14,zmm0,zmm1
  90bb67:	62 72 fd 48 7f d1    	vpermt2pd zmm10,zmm0,zmm1
  90bb6d:	62 51 fd 48 28 e6    	vmovapd zmm12,zmm14
  90bb73:	62 72 e5 48 7f e2    	vpermt2pd zmm12,zmm3,zmm2
  90bb79:	62 72 dd 48 7f f2    	vpermt2pd zmm14,zmm4,zmm2
  90bb7f:	62 51 fd 48 28 ea    	vmovapd zmm13,zmm10
  90bb85:	62 72 e5 48 7f ea    	vpermt2pd zmm13,zmm3,zmm2
  90bb8b:	62 72 dd 48 7f d2    	vpermt2pd zmm10,zmm4,zmm2
  90bb91:	62 51 8d 48 14 d2    	vunpcklpd zmm10,zmm14,zmm10
  90bb97:	62 51 9d 48 14 f5    	vunpcklpd zmm14,zmm12,zmm13
  90bb9d:	62 51 9d 48 15 e5    	vunpckhpd zmm12,zmm12,zmm13
  90bba3:	62 72 fd 48 7f f9    	vpermt2pd zmm15,zmm0,zmm1
  90bba9:	62 72 fd 48 7f d9    	vpermt2pd zmm11,zmm0,zmm1
  90bbaf:	62 51 fd 48 28 ef    	vmovapd zmm13,zmm15
  90bbb5:	62 72 e5 48 7f ea    	vpermt2pd zmm13,zmm3,zmm2
  90bbbb:	62 72 dd 48 7f fa    	vpermt2pd zmm15,zmm4,zmm2
  90bbc1:	62 c1 fd 48 28 c3    	vmovapd zmm16,zmm11
  90bbc7:	62 e2 e5 48 7f c2    	vpermt2pd zmm16,zmm3,zmm2
  90bbcd:	62 72 dd 48 7f da    	vpermt2pd zmm11,zmm4,zmm2
  90bbd3:	62 51 85 48 14 db    	vunpcklpd zmm11,zmm15,zmm11
  90bbd9:	62 31 95 48 14 f8    	vunpcklpd zmm15,zmm13,zmm16
  90bbdf:	62 31 95 48 15 e8    	vunpckhpd zmm13,zmm13,zmm16
  90bbe5:	62 e1 fd 48 10 41 02 	vmovupd zmm16,ZMMWORD PTR [rcx+0x80]
  90bbec:	62 e1 fd 48 10 49 03 	vmovupd zmm17,ZMMWORD PTR [rcx+0xc0]
  90bbf3:	62 e1 fd 48 10 51 04 	vmovupd zmm18,ZMMWORD PTR [rcx+0x100]
  90bbfa:	62 e1 fd 48 10 59 05 	vmovupd zmm19,ZMMWORD PTR [rcx+0x140]
  90bc01:	62 a1 9d 48 59 e0    	vmulpd zmm20,zmm12,zmm16
  90bc07:	62 a2 95 48 bc e1    	vfnmadd231pd zmm20,zmm13,zmm17
  90bc0d:	62 a1 ad 48 59 ea    	vmulpd zmm21,zmm10,zmm18
  90bc13:	62 a2 a5 48 bc eb    	vfnmadd231pd zmm21,zmm11,zmm19
  90bc19:	62 a1 dd 40 58 f5    	vaddpd zmm22,zmm20,zmm21
  90bc1f:	62 31 95 48 59 e8    	vmulpd zmm13,zmm13,zmm16
  90bc25:	62 32 9d 48 b8 e9    	vfmadd231pd zmm13,zmm12,zmm17
  90bc2b:	62 31 a5 48 59 da    	vmulpd zmm11,zmm11,zmm18
  90bc31:	62 32 ad 48 b8 db    	vfmadd231pd zmm11,zmm10,zmm19
  90bc37:	62 51 95 48 58 d3    	vaddpd zmm10,zmm13,zmm11
  90bc3d:	62 71 fd 48 28 e6    	vmovapd zmm12,zmm6
  90bc43:	62 52 cd 40 ac e6    	vfnmadd213pd zmm12,zmm22,zmm14
  90bc49:	62 e1 fd 48 28 c6    	vmovapd zmm16,zmm6
  90bc4f:	62 c2 ad 48 ac c7    	vfnmadd213pd zmm16,zmm10,zmm15
  90bc55:	62 31 8d 28 58 f6    	vaddpd ymm14,ymm14,ymm22
  90bc5b:	c4 41 05 58 d2       	vaddpd ymm10,ymm15,ymm10
  90bc60:	62 52 bd 28 7f d6    	vpermt2pd ymm10,ymm8,ymm14
  90bc66:	c5 7d 11 14 16       	vmovupd YMMWORD PTR [rsi+rdx*1],ymm10
  90bc6b:	c4 41 15 5c d3       	vsubpd ymm10,ymm13,ymm11
  90bc70:	c4 41 2d 59 d1       	vmulpd ymm10,ymm10,ymm9
  90bc75:	c4 41 1d 58 da       	vaddpd ymm11,ymm12,ymm10
  90bc7a:	62 31 dd 20 5c ed    	vsubpd ymm13,ymm20,ymm21
  90bc80:	c4 41 15 59 e9       	vmulpd ymm13,ymm13,ymm9
  90bc85:	62 51 fd 20 5c f5    	vsubpd ymm14,ymm16,ymm13
  90bc8b:	62 52 bd 28 7f f3    	vpermt2pd ymm14,ymm8,ymm11
  90bc91:	c5 7d 11 74 16 20    	vmovupd YMMWORD PTR [rsi+rdx*1+0x20],ymm14
  90bc97:	c4 41 1d 5c d2       	vsubpd ymm10,ymm12,ymm10
  90bc9c:	62 51 fd 20 58 dd    	vaddpd ymm11,ymm16,ymm13
  90bca2:	62 52 bd 28 7f da    	vpermt2pd ymm11,ymm8,ymm10
  90bca8:	c5 7d 11 5c 16 40    	vmovupd YMMWORD PTR [rsi+rdx*1+0x40],ymm11
  90bcae:	48 83 c2 60          	add    rdx,0x60
  90bcb2:	48 39 d0             	cmp    rax,rdx
  90bcb5:	0f 85 35 fe ff ff    	jne    90baf0 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle+0x70>
  90bcbb:	c5 f8 77             	vzeroupper
  90bcbe:	c3                   	ret
