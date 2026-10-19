
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000822b00 <<fastfft::isa::x86::F64x4 as fastfft::engine::small::SmallVector>::rectangle>:
  822b00:	48 c1 e2 05          	shl    rdx,0x5
  822b04:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  822b08:	31 d2                	xor    edx,edx
  822b0a:	c4 e2 7d 19 05 85 1f 	vbroadcastsd ymm0,QWORD PTR [rip+0xffffffffff851f85]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  822b11:	85 ff 
  822b13:	c4 e2 7d 19 0d 04 21 	vbroadcastsd ymm1,QWORD PTR [rip+0xffffffffff852104]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  822b1a:	85 ff 
  822b1c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  822b20:	c5 fd 10 14 17       	vmovupd ymm2,YMMWORD PTR [rdi+rdx*1]
  822b25:	c4 e3 6d 18 54 17 20 	vinsertf128 ymm2,ymm2,XMMWORD PTR [rdi+rdx*1+0x20],0x1
  822b2c:	01 
  822b2d:	c5 f9 10 5c 17 10    	vmovupd xmm3,XMMWORD PTR [rdi+rdx*1+0x10]
  822b33:	c5 ed 14 e3          	vunpcklpd ymm4,ymm2,ymm3
  822b37:	c5 fd 10 6c 17 30    	vmovupd ymm5,YMMWORD PTR [rdi+rdx*1+0x30]
  822b3d:	c4 e3 55 18 6c 17 50 	vinsertf128 ymm5,ymm5,XMMWORD PTR [rdi+rdx*1+0x50],0x1
  822b44:	01 
  822b45:	c5 ed 15 d3          	vunpckhpd ymm2,ymm2,ymm3
  822b49:	c5 f9 10 5c 17 40    	vmovupd xmm3,XMMWORD PTR [rdi+rdx*1+0x40]
  822b4f:	c5 d5 14 f3          	vunpcklpd ymm6,ymm5,ymm3
  822b53:	c5 d5 15 db          	vunpckhpd ymm3,ymm5,ymm3
  822b57:	c5 ed 58 eb          	vaddpd ymm5,ymm2,ymm3
  822b5b:	c5 dd 58 fe          	vaddpd ymm7,ymm4,ymm6
  822b5f:	c5 ed 5c d3          	vsubpd ymm2,ymm2,ymm3
  822b63:	c5 dd 5c de          	vsubpd ymm3,ymm4,ymm6
  822b67:	c5 f9 28 e5          	vmovapd xmm4,xmm5
  822b6b:	c4 e3 7d 19 ed 01    	vextractf128 xmm5,ymm5,0x1
  822b71:	c5 f9 28 f2          	vmovapd xmm6,xmm2
  822b75:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  822b7b:	c5 d5 14 ea          	vunpcklpd ymm5,ymm5,ymm2
  822b7f:	c5 dd 14 d6          	vunpcklpd ymm2,ymm4,ymm6
  822b83:	c5 dd 15 e6          	vunpckhpd ymm4,ymm4,ymm6
  822b87:	c5 f9 28 f7          	vmovapd xmm6,xmm7
  822b8b:	c4 e3 7d 19 ff 01    	vextractf128 xmm7,ymm7,0x1
  822b91:	c5 79 28 c3          	vmovapd xmm8,xmm3
  822b95:	c4 e3 7d 19 db 01    	vextractf128 xmm3,ymm3,0x1
  822b9b:	c5 c5 14 db          	vunpcklpd ymm3,ymm7,ymm3
  822b9f:	c4 c1 4d 14 f8       	vunpcklpd ymm7,ymm6,ymm8
  822ba4:	c4 c1 4d 15 f0       	vunpckhpd ymm6,ymm6,ymm8
  822ba9:	c5 7d 10 41 40       	vmovupd ymm8,YMMWORD PTR [rcx+0x40]
  822bae:	c5 7d 10 49 60       	vmovupd ymm9,YMMWORD PTR [rcx+0x60]
  822bb3:	c5 7d 10 91 80 00 00 	vmovupd ymm10,YMMWORD PTR [rcx+0x80]
  822bba:	00 
  822bbb:	c5 7d 10 99 a0 00 00 	vmovupd ymm11,YMMWORD PTR [rcx+0xa0]
  822bc2:	00 
  822bc3:	c5 3d 59 e4          	vmulpd ymm12,ymm8,ymm4
  822bc7:	c4 42 cd bc e1       	vfnmadd231pd ymm12,ymm6,ymm9
  822bcc:	c5 2d 59 ed          	vmulpd ymm13,ymm10,ymm5
  822bd0:	c4 42 e5 bc eb       	vfnmadd231pd ymm13,ymm3,ymm11
  822bd5:	c4 41 1d 58 f5       	vaddpd ymm14,ymm12,ymm13
  822bda:	c5 bd 59 f6          	vmulpd ymm6,ymm8,ymm6
  822bde:	c4 c2 dd b8 f1       	vfmadd231pd ymm6,ymm4,ymm9
  822be3:	c5 ad 59 db          	vmulpd ymm3,ymm10,ymm3
  822be7:	c4 c2 d5 b8 db       	vfmadd231pd ymm3,ymm5,ymm11
  822bec:	c5 cd 58 e3          	vaddpd ymm4,ymm6,ymm3
  822bf0:	c5 fd 28 e8          	vmovapd ymm5,ymm0
  822bf4:	c4 e2 8d ac ea       	vfnmadd213pd ymm5,ymm14,ymm2
  822bf9:	c5 cd 5c db          	vsubpd ymm3,ymm6,ymm3
  822bfd:	c5 e5 59 d9          	vmulpd ymm3,ymm3,ymm1
  822c01:	c5 d5 58 f3          	vaddpd ymm6,ymm5,ymm3
  822c05:	c5 7d 28 c0          	vmovapd ymm8,ymm0
  822c09:	c4 62 dd ac c7       	vfnmadd213pd ymm8,ymm4,ymm7
  822c0e:	c4 41 1d 5c cd       	vsubpd ymm9,ymm12,ymm13
  822c13:	c5 35 59 c9          	vmulpd ymm9,ymm9,ymm1
  822c17:	c4 41 3d 5c d1       	vsubpd ymm10,ymm8,ymm9
  822c1c:	c5 d5 5c db          	vsubpd ymm3,ymm5,ymm3
  822c20:	c4 c1 3d 58 e9       	vaddpd ymm5,ymm8,ymm9
  822c25:	c5 c5 58 e4          	vaddpd ymm4,ymm7,ymm4
  822c29:	c5 8d 58 d2          	vaddpd ymm2,ymm14,ymm2
  822c2d:	c4 e3 fd 01 d2 60    	vpermpd ymm2,ymm2,0x60
  822c33:	c4 e3 fd 01 e4 d4    	vpermpd ymm4,ymm4,0xd4
  822c39:	c4 e3 5d 0d d2 0a    	vblendpd ymm2,ymm4,ymm2,0xa
  822c3f:	c5 fd 11 14 16       	vmovupd YMMWORD PTR [rsi+rdx*1],ymm2
  822c44:	c4 e3 fd 01 d6 60    	vpermpd ymm2,ymm6,0x60
  822c4a:	c4 c3 fd 01 e2 d4    	vpermpd ymm4,ymm10,0xd4
  822c50:	c4 e3 5d 0d d2 0a    	vblendpd ymm2,ymm4,ymm2,0xa
  822c56:	c5 fd 11 54 16 20    	vmovupd YMMWORD PTR [rsi+rdx*1+0x20],ymm2
  822c5c:	c4 e3 fd 01 d3 60    	vpermpd ymm2,ymm3,0x60
  822c62:	c4 e3 fd 01 dd d4    	vpermpd ymm3,ymm5,0xd4
  822c68:	c4 e3 65 0d d2 0a    	vblendpd ymm2,ymm3,ymm2,0xa
  822c6e:	c5 fd 11 54 16 40    	vmovupd YMMWORD PTR [rsi+rdx*1+0x40],ymm2
  822c74:	48 83 c2 60          	add    rdx,0x60
  822c78:	48 39 d0             	cmp    rax,rdx
  822c7b:	0f 85 9f fe ff ff    	jne    822b20 <<fastfft::isa::x86::F64x4 as fastfft::engine::small::SmallVector>::rectangle+0x20>
  822c81:	c5 f8 77             	vzeroupper
  822c84:	c3                   	ret
