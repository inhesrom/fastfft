
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

000000000087db80 <<fastfft::isa::x86::F64x4 as fastfft::engine::small::SmallVector>::rectangle>:
  87db80:	48 c1 e2 06          	shl    rdx,0x6
  87db84:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  87db88:	31 d2                	xor    edx,edx
  87db8a:	c4 e2 7d 19 05 05 6f 	vbroadcastsd ymm0,QWORD PTR [rip+0xffffffffff7f6f05]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  87db91:	7f ff 
  87db93:	c4 e2 7d 19 0d 84 70 	vbroadcastsd ymm1,QWORD PTR [rip+0xffffffffff7f7084]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  87db9a:	7f ff 
  87db9c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  87dba0:	c5 fd 10 14 17       	vmovupd ymm2,YMMWORD PTR [rdi+rdx*1]
  87dba5:	c4 e3 6d 18 54 17 20 	vinsertf128 ymm2,ymm2,XMMWORD PTR [rdi+rdx*1+0x20],0x1
  87dbac:	01 
  87dbad:	c5 f9 10 5c 17 10    	vmovupd xmm3,XMMWORD PTR [rdi+rdx*1+0x10]
  87dbb3:	c5 ed 14 e3          	vunpcklpd ymm4,ymm2,ymm3
  87dbb7:	c5 fd 10 6c 17 30    	vmovupd ymm5,YMMWORD PTR [rdi+rdx*1+0x30]
  87dbbd:	c4 e3 55 18 6c 17 50 	vinsertf128 ymm5,ymm5,XMMWORD PTR [rdi+rdx*1+0x50],0x1
  87dbc4:	01 
  87dbc5:	c5 ed 15 d3          	vunpckhpd ymm2,ymm2,ymm3
  87dbc9:	c5 f9 10 5c 17 40    	vmovupd xmm3,XMMWORD PTR [rdi+rdx*1+0x40]
  87dbcf:	c5 d5 14 f3          	vunpcklpd ymm6,ymm5,ymm3
  87dbd3:	c5 d5 15 db          	vunpckhpd ymm3,ymm5,ymm3
  87dbd7:	c5 fd 10 6c 17 60    	vmovupd ymm5,YMMWORD PTR [rdi+rdx*1+0x60]
  87dbdd:	c4 e3 55 18 ac 17 80 	vinsertf128 ymm5,ymm5,XMMWORD PTR [rdi+rdx*1+0x80],0x1
  87dbe4:	00 00 00 01 
  87dbe8:	c5 f9 10 7c 17 70    	vmovupd xmm7,XMMWORD PTR [rdi+rdx*1+0x70]
  87dbee:	c5 55 14 c7          	vunpcklpd ymm8,ymm5,ymm7
  87dbf2:	c5 7d 10 8c 17 90 00 	vmovupd ymm9,YMMWORD PTR [rdi+rdx*1+0x90]
  87dbf9:	00 00 
  87dbfb:	c4 63 35 18 8c 17 b0 	vinsertf128 ymm9,ymm9,XMMWORD PTR [rdi+rdx*1+0xb0],0x1
  87dc02:	00 00 00 01 
  87dc06:	c5 d5 15 ef          	vunpckhpd ymm5,ymm5,ymm7
  87dc0a:	c5 f9 10 bc 17 a0 00 	vmovupd xmm7,XMMWORD PTR [rdi+rdx*1+0xa0]
  87dc11:	00 00 
  87dc13:	c5 35 14 d7          	vunpcklpd ymm10,ymm9,ymm7
  87dc17:	c5 b5 15 ff          	vunpckhpd ymm7,ymm9,ymm7
  87dc1b:	c5 3d 58 cc          	vaddpd ymm9,ymm8,ymm4
  87dc1f:	c5 2d 58 de          	vaddpd ymm11,ymm10,ymm6
  87dc23:	c4 41 35 58 e3       	vaddpd ymm12,ymm9,ymm11
  87dc28:	c5 6d 58 ed          	vaddpd ymm13,ymm2,ymm5
  87dc2c:	c5 65 58 f7          	vaddpd ymm14,ymm3,ymm7
  87dc30:	c4 41 15 58 fe       	vaddpd ymm15,ymm13,ymm14
  87dc35:	c4 c1 5d 5c e0       	vsubpd ymm4,ymm4,ymm8
  87dc3a:	c5 e5 5c df          	vsubpd ymm3,ymm3,ymm7
  87dc3e:	c5 dd 58 fb          	vaddpd ymm7,ymm4,ymm3
  87dc42:	c5 ed 5c d5          	vsubpd ymm2,ymm2,ymm5
  87dc46:	c5 ad 5c ee          	vsubpd ymm5,ymm10,ymm6
  87dc4a:	c5 d5 58 f2          	vaddpd ymm6,ymm5,ymm2
  87dc4e:	c4 41 35 5c c3       	vsubpd ymm8,ymm9,ymm11
  87dc53:	c4 41 15 5c ce       	vsubpd ymm9,ymm13,ymm14
  87dc58:	c5 dd 5c db          	vsubpd ymm3,ymm4,ymm3
  87dc5c:	c5 ed 5c e5          	vsubpd ymm4,ymm2,ymm5
  87dc60:	c4 c3 1d 18 e8 01    	vinsertf128 ymm5,ymm12,xmm8,0x1
  87dc66:	c4 c3 1d 06 d0 31    	vperm2f128 ymm2,ymm12,ymm8,0x31
  87dc6c:	c4 63 45 18 c3 01    	vinsertf128 ymm8,ymm7,xmm3,0x1
  87dc72:	c4 e3 45 06 db 31    	vperm2f128 ymm3,ymm7,ymm3,0x31
  87dc78:	c5 ed 14 db          	vunpcklpd ymm3,ymm2,ymm3
  87dc7c:	c4 c1 55 14 d0       	vunpcklpd ymm2,ymm5,ymm8
  87dc81:	c4 c1 55 15 e8       	vunpckhpd ymm5,ymm5,ymm8
  87dc86:	c4 c3 05 18 f9 01    	vinsertf128 ymm7,ymm15,xmm9,0x1
  87dc8c:	c4 43 05 06 c1 31    	vperm2f128 ymm8,ymm15,ymm9,0x31
  87dc92:	c4 63 4d 18 cc 01    	vinsertf128 ymm9,ymm6,xmm4,0x1
  87dc98:	c4 e3 4d 06 e4 31    	vperm2f128 ymm4,ymm6,ymm4,0x31
  87dc9e:	c5 bd 14 e4          	vunpcklpd ymm4,ymm8,ymm4
  87dca2:	c4 c1 45 14 f1       	vunpcklpd ymm6,ymm7,ymm9
  87dca7:	c4 c1 45 15 f9       	vunpckhpd ymm7,ymm7,ymm9
  87dcac:	c5 7d 10 41 40       	vmovupd ymm8,YMMWORD PTR [rcx+0x40]
  87dcb1:	c5 7d 10 49 60       	vmovupd ymm9,YMMWORD PTR [rcx+0x60]
  87dcb6:	c5 7d 10 91 80 00 00 	vmovupd ymm10,YMMWORD PTR [rcx+0x80]
  87dcbd:	00 
  87dcbe:	c5 7d 10 99 a0 00 00 	vmovupd ymm11,YMMWORD PTR [rcx+0xa0]
  87dcc5:	00 
  87dcc6:	c5 3d 59 e7          	vmulpd ymm12,ymm8,ymm7
  87dcca:	c4 42 d5 b8 e1       	vfmadd231pd ymm12,ymm5,ymm9
  87dccf:	c5 2d 59 ec          	vmulpd ymm13,ymm10,ymm4
  87dcd3:	c4 42 e5 b8 eb       	vfmadd231pd ymm13,ymm3,ymm11
  87dcd8:	c4 41 1d 58 f5       	vaddpd ymm14,ymm12,ymm13
  87dcdd:	c5 7d 28 f8          	vmovapd ymm15,ymm0
  87dce1:	c4 62 8d ac fe       	vfnmadd213pd ymm15,ymm14,ymm6
  87dce6:	c5 bd 59 ed          	vmulpd ymm5,ymm8,ymm5
  87dcea:	c4 c2 c5 bc e9       	vfnmadd231pd ymm5,ymm7,ymm9
  87dcef:	c5 ad 59 db          	vmulpd ymm3,ymm10,ymm3
  87dcf3:	c4 c2 dd bc db       	vfnmadd231pd ymm3,ymm4,ymm11
  87dcf8:	c5 d5 5c e3          	vsubpd ymm4,ymm5,ymm3
  87dcfc:	c5 dd 59 e1          	vmulpd ymm4,ymm4,ymm1
  87dd00:	c5 85 58 fc          	vaddpd ymm7,ymm15,ymm4
  87dd04:	c5 d5 58 db          	vaddpd ymm3,ymm5,ymm3
  87dd08:	c5 fd 28 e8          	vmovapd ymm5,ymm0
  87dd0c:	c4 e2 e5 ac ea       	vfnmadd213pd ymm5,ymm3,ymm2
  87dd11:	c4 41 1d 5c c5       	vsubpd ymm8,ymm12,ymm13
  87dd16:	c5 3d 59 c1          	vmulpd ymm8,ymm8,ymm1
  87dd1a:	c4 41 55 5c c8       	vsubpd ymm9,ymm5,ymm8
  87dd1f:	c5 85 5c e4          	vsubpd ymm4,ymm15,ymm4
  87dd23:	c5 bd 58 ed          	vaddpd ymm5,ymm8,ymm5
  87dd27:	c5 8d 58 f6          	vaddpd ymm6,ymm14,ymm6
  87dd2b:	c5 ed 58 d3          	vaddpd ymm2,ymm2,ymm3
  87dd2f:	c4 e3 fd 01 de e6    	vpermpd ymm3,ymm6,0xe6
  87dd35:	c4 63 fd 01 c2 e6    	vpermpd ymm8,ymm2,0xe6
  87dd3b:	c5 bd c6 db 0c       	vshufpd ymm3,ymm8,ymm3,0xc
  87dd40:	c4 e3 fd 01 f6 60    	vpermpd ymm6,ymm6,0x60
  87dd46:	c4 e3 fd 01 d2 d4    	vpermpd ymm2,ymm2,0xd4
  87dd4c:	c4 e3 6d 0d d6 0a    	vblendpd ymm2,ymm2,ymm6,0xa
  87dd52:	c5 fd 11 14 16       	vmovupd YMMWORD PTR [rsi+rdx*1],ymm2
  87dd57:	c5 fd 11 5c 16 20    	vmovupd YMMWORD PTR [rsi+rdx*1+0x20],ymm3
  87dd5d:	c4 e3 fd 01 d4 e6    	vpermpd ymm2,ymm4,0xe6
  87dd63:	c4 e3 fd 01 dd e6    	vpermpd ymm3,ymm5,0xe6
  87dd69:	c5 e5 c6 d2 0c       	vshufpd ymm2,ymm3,ymm2,0xc
  87dd6e:	c4 e3 fd 01 dc 60    	vpermpd ymm3,ymm4,0x60
  87dd74:	c4 e3 fd 01 e5 d4    	vpermpd ymm4,ymm5,0xd4
  87dd7a:	c4 e3 5d 0d db 0a    	vblendpd ymm3,ymm4,ymm3,0xa
  87dd80:	c5 fd 11 5c 16 40    	vmovupd YMMWORD PTR [rsi+rdx*1+0x40],ymm3
  87dd86:	c5 fd 11 54 16 60    	vmovupd YMMWORD PTR [rsi+rdx*1+0x60],ymm2
  87dd8c:	c4 e3 fd 01 d7 e6    	vpermpd ymm2,ymm7,0xe6
  87dd92:	c4 c3 fd 01 d9 e6    	vpermpd ymm3,ymm9,0xe6
  87dd98:	c5 e5 c6 d2 0c       	vshufpd ymm2,ymm3,ymm2,0xc
  87dd9d:	c4 e3 fd 01 df 60    	vpermpd ymm3,ymm7,0x60
  87dda3:	c4 c3 fd 01 e1 d4    	vpermpd ymm4,ymm9,0xd4
  87dda9:	c4 e3 5d 0d db 0a    	vblendpd ymm3,ymm4,ymm3,0xa
  87ddaf:	c5 fd 11 9c 16 80 00 	vmovupd YMMWORD PTR [rsi+rdx*1+0x80],ymm3
  87ddb6:	00 00 
  87ddb8:	c5 fd 11 94 16 a0 00 	vmovupd YMMWORD PTR [rsi+rdx*1+0xa0],ymm2
  87ddbf:	00 00 
  87ddc1:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  87ddc8:	48 39 d0             	cmp    rax,rdx
  87ddcb:	0f 85 cf fd ff ff    	jne    87dba0 <<fastfft::isa::x86::F64x4 as fastfft::engine::small::SmallVector>::rectangle+0x20>
  87ddd1:	c5 f8 77             	vzeroupper
  87ddd4:	c3                   	ret
