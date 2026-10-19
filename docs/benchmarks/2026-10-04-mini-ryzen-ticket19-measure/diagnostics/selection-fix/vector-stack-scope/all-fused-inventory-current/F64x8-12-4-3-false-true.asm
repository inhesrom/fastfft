
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000969c00 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  969c00:	62 f1 fd 48 10 05 5e 	vmovupd zmm0,ZMMWORD PTR [rip+0xffffffffff75d15e]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  969c07:	d1 75 ff 
  969c0a:	62 f1 fd 48 10 0d d4 	vmovupd zmm1,ZMMWORD PTR [rip+0xffffffffff75d0d4]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  969c11:	d0 75 ff 
  969c14:	62 f1 fd 48 10 15 0a 	vmovupd zmm2,ZMMWORD PTR [rip+0xffffffffff75d10a]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  969c1b:	d1 75 ff 
  969c1e:	48 c1 e2 06          	shl    rdx,0x6
  969c22:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  969c26:	31 d2                	xor    edx,edx
  969c28:	62 f1 fd 48 28 1d ce 	vmovapd zmm3,ZMMWORD PTR [rip+0xffffffffff71c5ce]        # 86200 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x136b0>
  969c2f:	c5 71 ff 
  969c32:	c5 d9 57 e4          	vxorpd xmm4,xmm4,xmm4
  969c36:	62 e2 fd 48 19 05 58 	vbroadcastsd zmm16,QWORD PTR [rip+0xffffffffff70ae58]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  969c3d:	ae 70 ff 
  969c40:	62 f1 fd 48 28 35 f6 	vmovapd zmm6,ZMMWORD PTR [rip+0xffffffffff71c5f6]        # 86240 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x136f0>
  969c47:	c5 71 ff 
  969c4a:	62 f2 fd 48 19 3d cc 	vbroadcastsd zmm7,QWORD PTR [rip+0xffffffffff70afcc]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  969c51:	af 70 ff 
  969c54:	62 71 fd 48 28 05 22 	vmovapd zmm8,ZMMWORD PTR [rip+0xffffffffff71c622]        # 86280 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x13730>
  969c5b:	c6 71 ff 
  969c5e:	66 90                	xchg   ax,ax
  969c60:	c5 7b 12 4c 17 28    	vmovddup xmm9,QWORD PTR [rdi+rdx*1+0x28]
  969c66:	c4 63 31 0d 4c 17 20 	vblendpd xmm9,xmm9,XMMWORD PTR [rdi+rdx*1+0x20],0x1
  969c6d:	01 
  969c6e:	c5 7d 10 14 17       	vmovupd ymm10,YMMWORD PTR [rdi+rdx*1]
  969c73:	c5 7d 10 5c 17 30    	vmovupd ymm11,YMMWORD PTR [rdi+rdx*1+0x30]
  969c79:	c5 7d 10 64 17 60    	vmovupd ymm12,YMMWORD PTR [rdi+rdx*1+0x60]
  969c7f:	c5 7d 10 ac 17 90 00 	vmovupd ymm13,YMMWORD PTR [rdi+rdx*1+0x90]
  969c86:	00 00 
  969c88:	62 53 2d 48 18 c9 02 	vinsertf32x4 zmm9,zmm10,xmm9,0x2
  969c8f:	62 51 fd 48 28 d1    	vmovapd zmm10,zmm9
  969c95:	62 72 e5 48 7f d4    	vpermt2pd zmm10,zmm3,zmm4
  969c9b:	62 72 cd 48 7f cc    	vpermt2pd zmm9,zmm6,zmm4
  969ca1:	c5 7b 12 74 17 58    	vmovddup xmm14,QWORD PTR [rdi+rdx*1+0x58]
  969ca7:	c4 63 09 0d 74 17 50 	vblendpd xmm14,xmm14,XMMWORD PTR [rdi+rdx*1+0x50],0x1
  969cae:	01 
  969caf:	62 53 25 48 18 de 02 	vinsertf32x4 zmm11,zmm11,xmm14,0x2
  969cb6:	62 51 fd 48 28 f3    	vmovapd zmm14,zmm11
  969cbc:	62 72 e5 48 7f f4    	vpermt2pd zmm14,zmm3,zmm4
  969cc2:	62 72 cd 48 7f dc    	vpermt2pd zmm11,zmm6,zmm4
  969cc8:	c5 7b 12 bc 17 88 00 	vmovddup xmm15,QWORD PTR [rdi+rdx*1+0x88]
  969ccf:	00 00 
  969cd1:	c4 63 01 0d bc 17 80 	vblendpd xmm15,xmm15,XMMWORD PTR [rdi+rdx*1+0x80],0x1
  969cd8:	00 00 00 01 
  969cdc:	62 53 1d 48 18 e7 02 	vinsertf32x4 zmm12,zmm12,xmm15,0x2
  969ce3:	62 51 fd 48 28 fc    	vmovapd zmm15,zmm12
  969ce9:	62 72 e5 48 7f fc    	vpermt2pd zmm15,zmm3,zmm4
  969cef:	62 72 cd 48 7f e4    	vpermt2pd zmm12,zmm6,zmm4
  969cf5:	c5 fb 12 ac 17 b8 00 	vmovddup xmm5,QWORD PTR [rdi+rdx*1+0xb8]
  969cfc:	00 00 
  969cfe:	c4 e3 51 0d ac 17 b0 	vblendpd xmm5,xmm5,XMMWORD PTR [rdi+rdx*1+0xb0],0x1
  969d05:	00 00 00 01 
  969d09:	62 f3 15 48 18 ed 02 	vinsertf32x4 zmm5,zmm13,xmm5,0x2
  969d10:	62 71 fd 48 28 ed    	vmovapd zmm13,zmm5
  969d16:	62 72 e5 48 7f ec    	vpermt2pd zmm13,zmm3,zmm4
  969d1c:	62 f2 cd 48 7f ec    	vpermt2pd zmm5,zmm6,zmm4
  969d22:	62 c1 ad 48 58 cf    	vaddpd zmm17,zmm10,zmm15
  969d28:	62 c1 8d 48 58 d5    	vaddpd zmm18,zmm14,zmm13
  969d2e:	62 a1 f5 40 58 da    	vaddpd zmm19,zmm17,zmm18
  969d34:	62 c1 b5 48 58 e4    	vaddpd zmm20,zmm9,zmm12
  969d3a:	62 e1 a5 48 58 ed    	vaddpd zmm21,zmm11,zmm5
  969d40:	62 a1 dd 40 58 f5    	vaddpd zmm22,zmm20,zmm21
  969d46:	62 51 ad 48 5c d7    	vsubpd zmm10,zmm10,zmm15
  969d4c:	62 f1 a5 48 5c ed    	vsubpd zmm5,zmm11,zmm5
  969d52:	62 71 ad 48 58 dd    	vaddpd zmm11,zmm10,zmm5
  969d58:	62 51 b5 48 5c cc    	vsubpd zmm9,zmm9,zmm12
  969d5e:	62 51 95 48 5c e6    	vsubpd zmm12,zmm13,zmm14
  969d64:	62 51 9d 48 58 e9    	vaddpd zmm13,zmm12,zmm9
  969d6a:	62 31 f5 40 5c f2    	vsubpd zmm14,zmm17,zmm18
  969d70:	62 31 dd 40 5c fd    	vsubpd zmm15,zmm20,zmm21
  969d76:	62 f1 ad 48 5c ed    	vsubpd zmm5,zmm10,zmm5
  969d7c:	62 51 b5 48 5c cc    	vsubpd zmm9,zmm9,zmm12
  969d82:	62 e2 fd 48 7f dc    	vpermt2pd zmm19,zmm0,zmm4
  969d88:	62 72 fd 48 7f dc    	vpermt2pd zmm11,zmm0,zmm4
  969d8e:	62 72 fd 48 7f f4    	vpermt2pd zmm14,zmm0,zmm4
  969d94:	62 f2 fd 48 7f ec    	vpermt2pd zmm5,zmm0,zmm4
  969d9a:	62 31 fd 48 28 d3    	vmovapd zmm10,zmm19
  969da0:	62 52 f5 48 7f d6    	vpermt2pd zmm10,zmm1,zmm14
  969da6:	62 c2 ed 48 7f de    	vpermt2pd zmm19,zmm2,zmm14
  969dac:	62 51 fd 48 28 e3    	vmovapd zmm12,zmm11
  969db2:	62 72 f5 48 7f e5    	vpermt2pd zmm12,zmm1,zmm5
  969db8:	62 72 ed 48 7f dd    	vpermt2pd zmm11,zmm2,zmm5
  969dbe:	62 d1 e5 40 14 eb    	vunpcklpd zmm5,zmm19,zmm11
  969dc4:	62 51 ad 48 14 dc    	vunpcklpd zmm11,zmm10,zmm12
  969dca:	62 51 ad 48 15 d4    	vunpckhpd zmm10,zmm10,zmm12
  969dd0:	62 e2 fd 48 7f f4    	vpermt2pd zmm22,zmm0,zmm4
  969dd6:	62 72 fd 48 7f ec    	vpermt2pd zmm13,zmm0,zmm4
  969ddc:	62 72 fd 48 7f fc    	vpermt2pd zmm15,zmm0,zmm4
  969de2:	62 72 fd 48 7f cc    	vpermt2pd zmm9,zmm0,zmm4
  969de8:	62 31 fd 48 28 e6    	vmovapd zmm12,zmm22
  969dee:	62 52 f5 48 7f e7    	vpermt2pd zmm12,zmm1,zmm15
  969df4:	62 c2 ed 48 7f f7    	vpermt2pd zmm22,zmm2,zmm15
  969dfa:	62 51 fd 48 28 f5    	vmovapd zmm14,zmm13
  969e00:	62 52 f5 48 7f f1    	vpermt2pd zmm14,zmm1,zmm9
  969e06:	62 52 ed 48 7f e9    	vpermt2pd zmm13,zmm2,zmm9
  969e0c:	62 51 cd 40 14 cd    	vunpcklpd zmm9,zmm22,zmm13
  969e12:	62 51 9d 48 14 ee    	vunpcklpd zmm13,zmm12,zmm14
  969e18:	62 51 9d 48 15 e6    	vunpckhpd zmm12,zmm12,zmm14
  969e1e:	62 71 fd 48 10 71 02 	vmovupd zmm14,ZMMWORD PTR [rcx+0x80]
  969e25:	62 71 fd 48 10 79 03 	vmovupd zmm15,ZMMWORD PTR [rcx+0xc0]
  969e2c:	62 e1 fd 48 10 49 04 	vmovupd zmm17,ZMMWORD PTR [rcx+0x100]
  969e33:	62 e1 fd 48 10 51 05 	vmovupd zmm18,ZMMWORD PTR [rcx+0x140]
  969e3a:	62 c1 ad 48 59 de    	vmulpd zmm19,zmm10,zmm14
  969e40:	62 c2 9d 48 bc df    	vfnmadd231pd zmm19,zmm12,zmm15
  969e46:	62 a1 d5 48 59 e1    	vmulpd zmm20,zmm5,zmm17
  969e4c:	62 a2 b5 48 bc e2    	vfnmadd231pd zmm20,zmm9,zmm18
  969e52:	62 a1 e5 40 58 ec    	vaddpd zmm21,zmm19,zmm20
  969e58:	62 51 9d 48 59 e6    	vmulpd zmm12,zmm12,zmm14
  969e5e:	62 52 ad 48 b8 e7    	vfmadd231pd zmm12,zmm10,zmm15
  969e64:	62 31 b5 48 59 c9    	vmulpd zmm9,zmm9,zmm17
  969e6a:	62 32 d5 48 b8 ca    	vfmadd231pd zmm9,zmm5,zmm18
  969e70:	62 d1 9d 48 58 e9    	vaddpd zmm5,zmm12,zmm9
  969e76:	62 31 fd 48 28 d0    	vmovapd zmm10,zmm16
  969e7c:	62 52 d5 40 ac d3    	vfnmadd213pd zmm10,zmm21,zmm11
  969e82:	62 51 9d 48 5c c9    	vsubpd zmm9,zmm12,zmm9
  969e88:	62 71 b5 48 59 cf    	vmulpd zmm9,zmm9,zmm7
  969e8e:	62 51 ad 48 58 e1    	vaddpd zmm12,zmm10,zmm9
  969e94:	62 31 fd 48 28 f0    	vmovapd zmm14,zmm16
  969e9a:	62 52 d5 48 ac f5    	vfnmadd213pd zmm14,zmm5,zmm13
  969ea0:	62 31 e5 40 5c fc    	vsubpd zmm15,zmm19,zmm20
  969ea6:	62 71 85 48 59 ff    	vmulpd zmm15,zmm15,zmm7
  969eac:	62 c1 8d 48 5c cf    	vsubpd zmm17,zmm14,zmm15
  969eb2:	62 51 ad 48 5c c9    	vsubpd zmm9,zmm10,zmm9
  969eb8:	62 51 8d 48 58 d7    	vaddpd zmm10,zmm14,zmm15
  969ebe:	62 31 a5 48 58 dd    	vaddpd zmm11,zmm11,zmm21
  969ec4:	62 f1 95 48 58 ed    	vaddpd zmm5,zmm13,zmm5
  969eca:	62 72 bd 48 7f dd    	vpermt2pd zmm11,zmm8,zmm5
  969ed0:	62 71 fd 48 11 1c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1],zmm11
  969ed7:	62 32 bd 48 7f e1    	vpermt2pd zmm12,zmm8,zmm17
  969edd:	62 71 fd 48 11 64 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x40],zmm12
  969ee4:	01 
  969ee5:	62 52 bd 48 7f ca    	vpermt2pd zmm9,zmm8,zmm10
  969eeb:	62 71 fd 48 11 4c 16 	vmovupd ZMMWORD PTR [rsi+rdx*1+0x80],zmm9
  969ef2:	02 
  969ef3:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  969efa:	48 39 d0             	cmp    rax,rdx
  969efd:	0f 85 5d fd ff ff    	jne    969c60 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle+0x60>
  969f03:	c5 f8 77             	vzeroupper
  969f06:	c3                   	ret
