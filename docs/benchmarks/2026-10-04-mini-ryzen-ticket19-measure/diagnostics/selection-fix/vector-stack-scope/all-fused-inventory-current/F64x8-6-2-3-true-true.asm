
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

000000000090cd00 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  90cd00:	62 f1 fd 48 10 05 5e 	vmovupd zmm0,ZMMWORD PTR [rip+0xffffffffff7ba05e]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  90cd07:	a0 7b ff 
  90cd0a:	c5 f1 57 c9          	vxorpd xmm1,xmm1,xmm1
  90cd0e:	c5 e9 57 d2          	vxorpd xmm2,xmm2,xmm2
  90cd12:	62 f2 fd 48 7f d2    	vpermt2pd zmm2,zmm0,zmm2
  90cd18:	62 f1 fd 48 10 1d c6 	vmovupd zmm3,ZMMWORD PTR [rip+0xffffffffff7b9fc6]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  90cd1f:	9f 7b ff 
  90cd22:	62 f1 fd 48 10 25 fc 	vmovupd zmm4,ZMMWORD PTR [rip+0xffffffffff7b9ffc]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  90cd29:	9f 7b ff 
  90cd2c:	48 c1 e2 05          	shl    rdx,0x5
  90cd30:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  90cd34:	31 d2                	xor    edx,edx
  90cd36:	62 f1 fd 48 28 2d 40 	vmovapd zmm5,ZMMWORD PTR [rip+0xffffffffff772140]        # 7ee80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xc330>
  90cd3d:	21 77 ff 
  90cd40:	62 f2 fd 48 19 35 4e 	vbroadcastsd zmm6,QWORD PTR [rip+0xffffffffff767d4e]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  90cd47:	7d 76 ff 
  90cd4a:	62 f1 fd 48 28 3d 6c 	vmovapd zmm7,ZMMWORD PTR [rip+0xffffffffff77216c]        # 7eec0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0xc370>
  90cd51:	21 77 ff 
  90cd54:	c5 7d 28 05 04 9e 76 	vmovapd ymm8,YMMWORD PTR [rip+0xffffffffff769e04]        # 76b60 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4010>
  90cd5b:	ff 
  90cd5c:	c4 62 7d 19 0d bb 7e 	vbroadcastsd ymm9,QWORD PTR [rip+0xffffffffff767ebb]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  90cd63:	76 ff 
  90cd65:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  90cd6c:	00 00 00 00 
  90cd70:	c5 7b 12 54 17 28    	vmovddup xmm10,QWORD PTR [rdi+rdx*1+0x28]
  90cd76:	c4 63 29 0d 54 17 20 	vblendpd xmm10,xmm10,XMMWORD PTR [rdi+rdx*1+0x20],0x1
  90cd7d:	01 
  90cd7e:	c5 7d 10 1c 17       	vmovupd ymm11,YMMWORD PTR [rdi+rdx*1]
  90cd83:	c5 7d 10 64 17 30    	vmovupd ymm12,YMMWORD PTR [rdi+rdx*1+0x30]
  90cd89:	62 53 25 48 18 d2 02 	vinsertf32x4 zmm10,zmm11,xmm10,0x2
  90cd90:	62 51 fd 48 28 da    	vmovapd zmm11,zmm10
  90cd96:	62 72 d5 48 7f d9    	vpermt2pd zmm11,zmm5,zmm1
  90cd9c:	62 72 c5 48 7f d1    	vpermt2pd zmm10,zmm7,zmm1
  90cda2:	c5 7b 12 6c 17 58    	vmovddup xmm13,QWORD PTR [rdi+rdx*1+0x58]
  90cda8:	c4 63 11 0d 6c 17 50 	vblendpd xmm13,xmm13,XMMWORD PTR [rdi+rdx*1+0x50],0x1
  90cdaf:	01 
  90cdb0:	62 53 1d 48 18 e5 02 	vinsertf32x4 zmm12,zmm12,xmm13,0x2
  90cdb7:	62 51 fd 48 28 ec    	vmovapd zmm13,zmm12
  90cdbd:	62 72 d5 48 7f e9    	vpermt2pd zmm13,zmm5,zmm1
  90cdc3:	62 72 c5 48 7f e1    	vpermt2pd zmm12,zmm7,zmm1
  90cdc9:	62 51 ad 48 58 f4    	vaddpd zmm14,zmm10,zmm12
  90cdcf:	62 51 a5 48 58 fd    	vaddpd zmm15,zmm11,zmm13
  90cdd5:	62 51 ad 48 5c d4    	vsubpd zmm10,zmm10,zmm12
  90cddb:	62 51 a5 48 5c dd    	vsubpd zmm11,zmm11,zmm13
  90cde1:	62 72 fd 48 7f f1    	vpermt2pd zmm14,zmm0,zmm1
  90cde7:	62 72 fd 48 7f d1    	vpermt2pd zmm10,zmm0,zmm1
  90cded:	62 51 fd 48 28 e6    	vmovapd zmm12,zmm14
  90cdf3:	62 72 e5 48 7f e2    	vpermt2pd zmm12,zmm3,zmm2
  90cdf9:	62 72 dd 48 7f f2    	vpermt2pd zmm14,zmm4,zmm2
  90cdff:	62 51 fd 48 28 ea    	vmovapd zmm13,zmm10
  90ce05:	62 72 e5 48 7f ea    	vpermt2pd zmm13,zmm3,zmm2
  90ce0b:	62 72 dd 48 7f d2    	vpermt2pd zmm10,zmm4,zmm2
  90ce11:	62 51 8d 48 14 d2    	vunpcklpd zmm10,zmm14,zmm10
  90ce17:	62 51 9d 48 14 f5    	vunpcklpd zmm14,zmm12,zmm13
  90ce1d:	62 51 9d 48 15 e5    	vunpckhpd zmm12,zmm12,zmm13
  90ce23:	62 72 fd 48 7f f9    	vpermt2pd zmm15,zmm0,zmm1
  90ce29:	62 72 fd 48 7f d9    	vpermt2pd zmm11,zmm0,zmm1
  90ce2f:	62 51 fd 48 28 ef    	vmovapd zmm13,zmm15
  90ce35:	62 72 e5 48 7f ea    	vpermt2pd zmm13,zmm3,zmm2
  90ce3b:	62 72 dd 48 7f fa    	vpermt2pd zmm15,zmm4,zmm2
  90ce41:	62 c1 fd 48 28 c3    	vmovapd zmm16,zmm11
  90ce47:	62 e2 e5 48 7f c2    	vpermt2pd zmm16,zmm3,zmm2
  90ce4d:	62 72 dd 48 7f da    	vpermt2pd zmm11,zmm4,zmm2
  90ce53:	62 51 85 48 14 db    	vunpcklpd zmm11,zmm15,zmm11
  90ce59:	62 31 95 48 14 f8    	vunpcklpd zmm15,zmm13,zmm16
  90ce5f:	62 31 95 48 15 e8    	vunpckhpd zmm13,zmm13,zmm16
  90ce65:	62 e1 fd 48 10 41 02 	vmovupd zmm16,ZMMWORD PTR [rcx+0x80]
  90ce6c:	62 e1 fd 48 10 49 03 	vmovupd zmm17,ZMMWORD PTR [rcx+0xc0]
  90ce73:	62 e1 fd 48 10 51 04 	vmovupd zmm18,ZMMWORD PTR [rcx+0x100]
  90ce7a:	62 e1 fd 48 10 59 05 	vmovupd zmm19,ZMMWORD PTR [rcx+0x140]
  90ce81:	62 a1 9d 48 59 e0    	vmulpd zmm20,zmm12,zmm16
  90ce87:	62 a2 95 48 bc e1    	vfnmadd231pd zmm20,zmm13,zmm17
  90ce8d:	62 a1 ad 48 59 ea    	vmulpd zmm21,zmm10,zmm18
  90ce93:	62 a2 a5 48 bc eb    	vfnmadd231pd zmm21,zmm11,zmm19
  90ce99:	62 a1 dd 40 58 f5    	vaddpd zmm22,zmm20,zmm21
  90ce9f:	62 31 95 48 59 e8    	vmulpd zmm13,zmm13,zmm16
  90cea5:	62 32 9d 48 b8 e9    	vfmadd231pd zmm13,zmm12,zmm17
  90ceab:	62 31 a5 48 59 da    	vmulpd zmm11,zmm11,zmm18
  90ceb1:	62 32 ad 48 b8 db    	vfmadd231pd zmm11,zmm10,zmm19
  90ceb7:	62 51 95 48 58 d3    	vaddpd zmm10,zmm13,zmm11
  90cebd:	62 71 fd 48 28 e6    	vmovapd zmm12,zmm6
  90cec3:	62 52 cd 40 ac e6    	vfnmadd213pd zmm12,zmm22,zmm14
  90cec9:	62 e1 fd 48 28 c6    	vmovapd zmm16,zmm6
  90cecf:	62 c2 ad 48 ac c7    	vfnmadd213pd zmm16,zmm10,zmm15
  90ced5:	62 31 8d 28 58 f6    	vaddpd ymm14,ymm14,ymm22
  90cedb:	c4 41 05 58 d2       	vaddpd ymm10,ymm15,ymm10
  90cee0:	62 52 bd 28 7f d6    	vpermt2pd ymm10,ymm8,ymm14
  90cee6:	c5 7d 11 14 16       	vmovupd YMMWORD PTR [rsi+rdx*1],ymm10
  90ceeb:	c4 41 15 5c d3       	vsubpd ymm10,ymm13,ymm11
  90cef0:	c4 41 2d 59 d1       	vmulpd ymm10,ymm10,ymm9
  90cef5:	c4 41 1d 58 da       	vaddpd ymm11,ymm12,ymm10
  90cefa:	62 31 dd 20 5c ed    	vsubpd ymm13,ymm20,ymm21
  90cf00:	c4 41 15 59 e9       	vmulpd ymm13,ymm13,ymm9
  90cf05:	62 51 fd 20 5c f5    	vsubpd ymm14,ymm16,ymm13
  90cf0b:	62 52 bd 28 7f f3    	vpermt2pd ymm14,ymm8,ymm11
  90cf11:	c5 7d 11 74 16 20    	vmovupd YMMWORD PTR [rsi+rdx*1+0x20],ymm14
  90cf17:	c4 41 1d 5c d2       	vsubpd ymm10,ymm12,ymm10
  90cf1c:	62 51 fd 20 58 dd    	vaddpd ymm11,ymm16,ymm13
  90cf22:	62 52 bd 28 7f da    	vpermt2pd ymm11,ymm8,ymm10
  90cf28:	c5 7d 11 5c 16 40    	vmovupd YMMWORD PTR [rsi+rdx*1+0x40],ymm11
  90cf2e:	48 83 c2 60          	add    rdx,0x60
  90cf32:	48 39 d0             	cmp    rax,rdx
  90cf35:	0f 85 35 fe ff ff    	jne    90cd70 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle+0x70>
  90cf3b:	c5 f8 77             	vzeroupper
  90cf3e:	c3                   	ret
