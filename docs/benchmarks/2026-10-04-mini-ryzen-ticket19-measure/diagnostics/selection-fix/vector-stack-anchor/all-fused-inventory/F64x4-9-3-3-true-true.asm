
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

000000000086fb00 <<fastfft::isa::x86::F64x4 as fastfft::engine::small::SmallVector>::rectangle>:
  86fb00:	48 c1 e2 04          	shl    rdx,0x4
  86fb04:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  86fb08:	31 d2                	xor    edx,edx
  86fb0a:	c4 e2 7d 19 05 85 4f 	vbroadcastsd ymm0,QWORD PTR [rip+0xffffffffff804f85]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  86fb11:	80 ff 
  86fb13:	c4 e2 7d 19 0d 04 51 	vbroadcastsd ymm1,QWORD PTR [rip+0xffffffffff805104]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  86fb1a:	80 ff 
  86fb1c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  86fb20:	c5 fd 10 14 17       	vmovupd ymm2,YMMWORD PTR [rdi+rdx*1]
  86fb25:	c4 e3 6d 18 54 17 20 	vinsertf128 ymm2,ymm2,XMMWORD PTR [rdi+rdx*1+0x20],0x1
  86fb2c:	01 
  86fb2d:	c5 f9 10 5c 17 10    	vmovupd xmm3,XMMWORD PTR [rdi+rdx*1+0x10]
  86fb33:	c5 ed 14 e3          	vunpcklpd ymm4,ymm2,ymm3
  86fb37:	c5 fd 10 6c 17 30    	vmovupd ymm5,YMMWORD PTR [rdi+rdx*1+0x30]
  86fb3d:	c4 e3 55 18 6c 17 50 	vinsertf128 ymm5,ymm5,XMMWORD PTR [rdi+rdx*1+0x50],0x1
  86fb44:	01 
  86fb45:	c5 ed 15 d3          	vunpckhpd ymm2,ymm2,ymm3
  86fb49:	c5 f9 10 5c 17 40    	vmovupd xmm3,XMMWORD PTR [rdi+rdx*1+0x40]
  86fb4f:	c5 d5 14 f3          	vunpcklpd ymm6,ymm5,ymm3
  86fb53:	c5 d5 15 db          	vunpckhpd ymm3,ymm5,ymm3
  86fb57:	c5 fd 10 6c 17 60    	vmovupd ymm5,YMMWORD PTR [rdi+rdx*1+0x60]
  86fb5d:	c4 e3 55 18 ac 17 80 	vinsertf128 ymm5,ymm5,XMMWORD PTR [rdi+rdx*1+0x80],0x1
  86fb64:	00 00 00 01 
  86fb68:	c5 f9 10 7c 17 70    	vmovupd xmm7,XMMWORD PTR [rdi+rdx*1+0x70]
  86fb6e:	c5 55 14 c7          	vunpcklpd ymm8,ymm5,ymm7
  86fb72:	c5 d5 15 ef          	vunpckhpd ymm5,ymm5,ymm7
  86fb76:	c5 e5 58 fd          	vaddpd ymm7,ymm3,ymm5
  86fb7a:	c5 45 58 ca          	vaddpd ymm9,ymm7,ymm2
  86fb7e:	c5 3d 58 d6          	vaddpd ymm10,ymm8,ymm6
  86fb82:	c5 2d 58 dc          	vaddpd ymm11,ymm10,ymm4
  86fb86:	c4 e2 fd ac fa       	vfnmadd213pd ymm7,ymm0,ymm2
  86fb8b:	c4 c1 4d 5c d0       	vsubpd ymm2,ymm6,ymm8
  86fb90:	c5 ed 59 d1          	vmulpd ymm2,ymm2,ymm1
  86fb94:	c5 c5 58 f2          	vaddpd ymm6,ymm7,ymm2
  86fb98:	c4 62 fd ac d4       	vfnmadd213pd ymm10,ymm0,ymm4
  86fb9d:	c5 e5 5c dd          	vsubpd ymm3,ymm3,ymm5
  86fba1:	c5 e5 59 d9          	vmulpd ymm3,ymm3,ymm1
  86fba5:	c5 ad 5c e3          	vsubpd ymm4,ymm10,ymm3
  86fba9:	c5 c5 5c d2          	vsubpd ymm2,ymm7,ymm2
  86fbad:	c5 ad 58 db          	vaddpd ymm3,ymm10,ymm3
  86fbb1:	c4 e3 35 18 ea 01    	vinsertf128 ymm5,ymm9,xmm2,0x1
  86fbb7:	c4 e3 35 06 d2 31    	vperm2f128 ymm2,ymm9,ymm2,0x31
  86fbbd:	c5 f9 28 fe          	vmovapd xmm7,xmm6
  86fbc1:	c4 e3 7d 19 f6 01    	vextractf128 xmm6,ymm6,0x1
  86fbc7:	c5 ed 14 f6          	vunpcklpd ymm6,ymm2,ymm6
  86fbcb:	c5 d5 14 d7          	vunpcklpd ymm2,ymm5,ymm7
  86fbcf:	c5 d5 15 ef          	vunpckhpd ymm5,ymm5,ymm7
  86fbd3:	c4 e3 25 18 fb 01    	vinsertf128 ymm7,ymm11,xmm3,0x1
  86fbd9:	c4 e3 25 06 db 31    	vperm2f128 ymm3,ymm11,ymm3,0x31
  86fbdf:	c5 79 28 c4          	vmovapd xmm8,xmm4
  86fbe3:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  86fbe9:	c5 e5 14 dc          	vunpcklpd ymm3,ymm3,ymm4
  86fbed:	c4 c1 45 14 e0       	vunpcklpd ymm4,ymm7,ymm8
  86fbf2:	c4 c1 45 15 f8       	vunpckhpd ymm7,ymm7,ymm8
  86fbf7:	c5 7d 10 41 40       	vmovupd ymm8,YMMWORD PTR [rcx+0x40]
  86fbfc:	c5 7d 10 49 60       	vmovupd ymm9,YMMWORD PTR [rcx+0x60]
  86fc01:	c5 7d 10 91 80 00 00 	vmovupd ymm10,YMMWORD PTR [rcx+0x80]
  86fc08:	00 
  86fc09:	c5 7d 10 99 a0 00 00 	vmovupd ymm11,YMMWORD PTR [rcx+0xa0]
  86fc10:	00 
  86fc11:	c5 3d 59 e5          	vmulpd ymm12,ymm8,ymm5
  86fc15:	c4 42 c5 bc e1       	vfnmadd231pd ymm12,ymm7,ymm9
  86fc1a:	c5 2d 59 ee          	vmulpd ymm13,ymm10,ymm6
  86fc1e:	c4 42 e5 bc eb       	vfnmadd231pd ymm13,ymm3,ymm11
  86fc23:	c4 41 1d 58 f5       	vaddpd ymm14,ymm12,ymm13
  86fc28:	c5 bd 59 ff          	vmulpd ymm7,ymm8,ymm7
  86fc2c:	c4 c2 d5 b8 f9       	vfmadd231pd ymm7,ymm5,ymm9
  86fc31:	c5 ad 59 db          	vmulpd ymm3,ymm10,ymm3
  86fc35:	c4 c2 cd b8 db       	vfmadd231pd ymm3,ymm6,ymm11
  86fc3a:	c5 c5 58 eb          	vaddpd ymm5,ymm7,ymm3
  86fc3e:	c5 fd 28 f0          	vmovapd ymm6,ymm0
  86fc42:	c4 e2 8d ac f2       	vfnmadd213pd ymm6,ymm14,ymm2
  86fc47:	c5 c5 5c db          	vsubpd ymm3,ymm7,ymm3
  86fc4b:	c5 e5 59 d9          	vmulpd ymm3,ymm3,ymm1
  86fc4f:	c5 cd 58 fb          	vaddpd ymm7,ymm6,ymm3
  86fc53:	c5 7d 28 c0          	vmovapd ymm8,ymm0
  86fc57:	c4 62 d5 ac c4       	vfnmadd213pd ymm8,ymm5,ymm4
  86fc5c:	c4 41 1d 5c cd       	vsubpd ymm9,ymm12,ymm13
  86fc61:	c5 35 59 c9          	vmulpd ymm9,ymm9,ymm1
  86fc65:	c4 41 3d 5c d1       	vsubpd ymm10,ymm8,ymm9
  86fc6a:	c5 cd 5c db          	vsubpd ymm3,ymm6,ymm3
  86fc6e:	c4 c1 3d 58 f1       	vaddpd ymm6,ymm8,ymm9
  86fc73:	c5 dd 58 e5          	vaddpd ymm4,ymm4,ymm5
  86fc77:	c5 8d 58 d2          	vaddpd ymm2,ymm14,ymm2
  86fc7b:	c4 e3 fd 01 ea 60    	vpermpd ymm5,ymm2,0x60
  86fc81:	c4 63 fd 01 c4 d4    	vpermpd ymm8,ymm4,0xd4
  86fc87:	c4 e3 3d 0d ed 0a    	vblendpd ymm5,ymm8,ymm5,0xa
  86fc8d:	c5 fd 11 2c 16       	vmovupd YMMWORD PTR [rsi+rdx*1],ymm5
  86fc92:	c4 e3 7d 19 d2 01    	vextractf128 xmm2,ymm2,0x1
  86fc98:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  86fc9e:	c5 d9 14 d2          	vunpcklpd xmm2,xmm4,xmm2
  86fca2:	c5 f9 11 54 16 20    	vmovupd XMMWORD PTR [rsi+rdx*1+0x20],xmm2
  86fca8:	c4 e3 fd 01 d7 60    	vpermpd ymm2,ymm7,0x60
  86fcae:	c4 c3 fd 01 e2 d4    	vpermpd ymm4,ymm10,0xd4
  86fcb4:	c4 e3 5d 0d d2 0a    	vblendpd ymm2,ymm4,ymm2,0xa
  86fcba:	c5 fd 11 54 16 30    	vmovupd YMMWORD PTR [rsi+rdx*1+0x30],ymm2
  86fcc0:	c4 e3 7d 19 fa 01    	vextractf128 xmm2,ymm7,0x1
  86fcc6:	c4 63 7d 19 d4 01    	vextractf128 xmm4,ymm10,0x1
  86fccc:	c5 d9 14 d2          	vunpcklpd xmm2,xmm4,xmm2
  86fcd0:	c5 f9 11 54 16 50    	vmovupd XMMWORD PTR [rsi+rdx*1+0x50],xmm2
  86fcd6:	c4 e3 fd 01 d3 60    	vpermpd ymm2,ymm3,0x60
  86fcdc:	c4 e3 fd 01 e6 d4    	vpermpd ymm4,ymm6,0xd4
  86fce2:	c4 e3 5d 0d d2 0a    	vblendpd ymm2,ymm4,ymm2,0xa
  86fce8:	c5 fd 11 54 16 60    	vmovupd YMMWORD PTR [rsi+rdx*1+0x60],ymm2
  86fcee:	c4 e3 7d 19 da 01    	vextractf128 xmm2,ymm3,0x1
  86fcf4:	c4 e3 7d 19 f3 01    	vextractf128 xmm3,ymm6,0x1
  86fcfa:	c5 e1 14 d2          	vunpcklpd xmm2,xmm3,xmm2
  86fcfe:	c5 f9 11 94 16 80 00 	vmovupd XMMWORD PTR [rsi+rdx*1+0x80],xmm2
  86fd05:	00 00 
  86fd07:	48 81 c2 90 00 00 00 	add    rdx,0x90
  86fd0e:	48 39 d0             	cmp    rax,rdx
  86fd11:	0f 85 09 fe ff ff    	jne    86fb20 <<fastfft::isa::x86::F64x4 as fastfft::engine::small::SmallVector>::rectangle+0x20>
  86fd17:	c5 f8 77             	vzeroupper
  86fd1a:	c3                   	ret
