
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000006efc40 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  6efc40:	c5 f8 10 37          	vmovups xmm6,XMMWORD PTR [rdi]
  6efc44:	c5 f8 10 7f 10       	vmovups xmm7,XMMWORD PTR [rdi+0x10]
  6efc49:	c5 f8 10 67 20       	vmovups xmm4,XMMWORD PTR [rdi+0x20]
  6efc4e:	c5 f8 10 4f 30       	vmovups xmm1,XMMWORD PTR [rdi+0x30]
  6efc53:	c5 c8 c6 c7 dd       	vshufps xmm0,xmm6,xmm7,0xdd
  6efc58:	c5 fc 11 44 24 98    	vmovups YMMWORD PTR [rsp-0x68],ymm0
  6efc5e:	c5 78 10 57 50       	vmovups xmm10,XMMWORD PTR [rdi+0x50]
  6efc63:	c5 78 10 4f 40       	vmovups xmm9,XMMWORD PTR [rdi+0x40]
  6efc68:	c4 c1 30 c6 d2 dd    	vshufps xmm2,xmm9,xmm10,0xdd
  6efc6e:	c5 78 10 9f 90 00 00 	vmovups xmm11,XMMWORD PTR [rdi+0x90]
  6efc75:	00 
  6efc76:	c5 78 10 a7 80 00 00 	vmovups xmm12,XMMWORD PTR [rdi+0x80]
  6efc7d:	00 
  6efc7e:	c4 c1 18 c6 db dd    	vshufps xmm3,xmm12,xmm11,0xdd
  6efc84:	c5 78 10 77 70       	vmovups xmm14,XMMWORD PTR [rdi+0x70]
  6efc89:	c5 78 10 7f 60       	vmovups xmm15,XMMWORD PTR [rdi+0x60]
  6efc8e:	c4 c1 00 c6 ee dd    	vshufps xmm5,xmm15,xmm14,0xdd
  6efc94:	c5 f8 10 87 b0 00 00 	vmovups xmm0,XMMWORD PTR [rdi+0xb0]
  6efc9b:	00 
  6efc9c:	c5 78 10 87 a0 00 00 	vmovups xmm8,XMMWORD PTR [rdi+0xa0]
  6efca3:	00 
  6efca4:	c5 48 c6 ef 88       	vshufps xmm13,xmm6,xmm7,0x88
  6efca9:	c5 b8 c6 f0 dd       	vshufps xmm6,xmm8,xmm0,0xdd
  6efcae:	c4 41 30 c6 d2 88    	vshufps xmm10,xmm9,xmm10,0x88
  6efcb4:	c5 d8 c6 f9 dd       	vshufps xmm7,xmm4,xmm1,0xdd
  6efcb9:	c4 41 18 c6 db 88    	vshufps xmm11,xmm12,xmm11,0x88
  6efcbf:	c4 41 00 c6 f6 88    	vshufps xmm14,xmm15,xmm14,0x88
  6efcc5:	c5 38 c6 f8 88       	vshufps xmm15,xmm8,xmm0,0x88
  6efcca:	c5 d8 c6 c1 88       	vshufps xmm0,xmm4,xmm1,0x88
  6efccf:	c5 6c 58 c3          	vaddps ymm8,ymm2,ymm3
  6efcd3:	c5 fc 10 64 24 98    	vmovups ymm4,YMMWORD PTR [rsp-0x68]
  6efcd9:	c5 bc 58 cc          	vaddps ymm1,ymm8,ymm4
  6efcdd:	c5 fc 11 4c 24 d8    	vmovups YMMWORD PTR [rsp-0x28],ymm1
  6efce3:	c5 4c 58 cf          	vaddps ymm9,ymm6,ymm7
  6efce7:	c4 62 7d 18 25 70 57 	vbroadcastss ymm12,DWORD PTR [rip+0xffffffffff985770]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6efcee:	98 ff 
  6efcf0:	c4 62 1d ac c4       	vfnmadd213ps ymm8,ymm12,ymm4
  6efcf5:	c5 b4 58 cd          	vaddps ymm1,ymm9,ymm5
  6efcf9:	c5 fc 11 4c 24 b8    	vmovups YMMWORD PTR [rsp-0x48],ymm1
  6efcff:	c4 62 1d ac cd       	vfnmadd213ps ymm9,ymm12,ymm5
  6efd04:	c4 c1 2c 58 cb       	vaddps ymm1,ymm10,ymm11
  6efd09:	c5 94 58 e1          	vaddps ymm4,ymm13,ymm1
  6efd0d:	c5 fc 11 64 24 98    	vmovups YMMWORD PTR [rsp-0x68],ymm4
  6efd13:	c4 c2 1d ac cd       	vfnmadd213ps ymm1,ymm12,ymm13
  6efd18:	c5 84 58 e0          	vaddps ymm4,ymm15,ymm0
  6efd1c:	c4 42 5d ac e6       	vfnmadd213ps ymm12,ymm4,ymm14
  6efd21:	c5 8c 58 e4          	vaddps ymm4,ymm14,ymm4
  6efd25:	c4 41 2c 5c d3       	vsubps ymm10,ymm10,ymm11
  6efd2a:	c5 84 5c c0          	vsubps ymm0,ymm15,ymm0
  6efd2e:	c5 ec 5c db          	vsubps ymm3,ymm2,ymm3
  6efd32:	c5 cc 5c f7          	vsubps ymm6,ymm6,ymm7
  6efd36:	c4 e2 7d 18 3d 95 55 	vbroadcastss ymm7,DWORD PTR [rip+0xffffffffff985595]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6efd3d:	98 ff 
  6efd3f:	c5 2c 59 d7          	vmulps ymm10,ymm10,ymm7
  6efd43:	c5 fc 59 c7          	vmulps ymm0,ymm0,ymm7
  6efd47:	c5 e4 59 df          	vmulps ymm3,ymm3,ymm7
  6efd4b:	c5 cc 59 f7          	vmulps ymm6,ymm6,ymm7
  6efd4f:	c4 c1 3c 58 fa       	vaddps ymm7,ymm8,ymm10
  6efd54:	c4 41 3c 5c c2       	vsubps ymm8,ymm8,ymm10
  6efd59:	c5 34 58 d0          	vaddps ymm10,ymm9,ymm0
  6efd5d:	c5 34 5c c8          	vsubps ymm9,ymm9,ymm0
  6efd61:	c5 74 5c db          	vsubps ymm11,ymm1,ymm3
  6efd65:	c5 e4 58 c1          	vaddps ymm0,ymm3,ymm1
  6efd69:	c5 1c 5c ee          	vsubps ymm13,ymm12,ymm6
  6efd6d:	c5 9c 58 f6          	vaddps ymm6,ymm12,ymm6
  6efd71:	c4 c1 44 5c ca       	vsubps ymm1,ymm7,ymm10
  6efd76:	c5 a8 58 df          	vaddps xmm3,xmm10,xmm7
  6efd7a:	c5 fc 10 54 24 d8    	vmovups ymm2,YMMWORD PTR [rsp-0x28]
  6efd80:	c5 fc 10 6c 24 b8    	vmovups ymm5,YMMWORD PTR [rsp-0x48]
  6efd86:	c5 ec 58 fd          	vaddps ymm7,ymm2,ymm5
  6efd8a:	c4 e3 45 18 fb 01    	vinsertf128 ymm7,ymm7,xmm3,0x1
  6efd90:	c4 c1 38 5c d9       	vsubps xmm3,xmm8,xmm9
  6efd95:	c4 63 75 18 d3 01    	vinsertf128 ymm10,ymm1,xmm3,0x1
  6efd9b:	c4 41 38 58 c1       	vaddps xmm8,xmm8,xmm9
  6efda0:	c5 e8 5c d5          	vsubps xmm2,xmm2,xmm5
  6efda4:	c4 c1 44 14 da       	vunpcklps ymm3,ymm7,ymm10
  6efda9:	c5 bc 14 ea          	vunpcklps ymm5,ymm8,ymm2
  6efdad:	c5 e5 14 cd          	vunpcklpd ymm1,ymm3,ymm5
  6efdb1:	c5 e5 15 dd          	vunpckhpd ymm3,ymm3,ymm5
  6efdb5:	c4 c1 44 15 fa       	vunpckhps ymm7,ymm7,ymm10
  6efdba:	c5 bc 15 d2          	vunpckhps ymm2,ymm8,ymm2
  6efdbe:	c5 c5 14 ea          	vunpcklpd ymm5,ymm7,ymm2
  6efdc2:	c5 c5 15 d2          	vunpckhpd ymm2,ymm7,ymm2
  6efdc6:	c4 c1 24 5c fd       	vsubps ymm7,ymm11,ymm13
  6efdcb:	c4 41 20 58 c5       	vaddps xmm8,xmm11,xmm13
  6efdd0:	c5 7c 10 54 24 98    	vmovups ymm10,YMMWORD PTR [rsp-0x68]
  6efdd6:	c5 2c 58 cc          	vaddps ymm9,ymm10,ymm4
  6efdda:	c4 43 35 18 c0 01    	vinsertf128 ymm8,ymm9,xmm8,0x1
  6efde0:	c5 78 5c ce          	vsubps xmm9,xmm0,xmm6
  6efde4:	c4 c3 45 18 f9 01    	vinsertf128 ymm7,ymm7,xmm9,0x1
  6efdea:	c5 f8 58 f6          	vaddps xmm6,xmm0,xmm6
  6efdee:	c5 a8 5c e4          	vsubps xmm4,xmm10,xmm4
  6efdf2:	c5 3c 14 cf          	vunpcklps ymm9,ymm8,ymm7
  6efdf6:	c5 4c 14 d4          	vunpcklps ymm10,ymm6,ymm4
  6efdfa:	c4 c1 35 14 c2       	vunpcklpd ymm0,ymm9,ymm10
  6efdff:	c4 41 35 15 ca       	vunpckhpd ymm9,ymm9,ymm10
  6efe04:	c5 bc 15 ff          	vunpckhps ymm7,ymm8,ymm7
  6efe08:	c5 cc 15 e4          	vunpckhps ymm4,ymm6,ymm4
  6efe0c:	c5 c5 14 f4          	vunpcklpd ymm6,ymm7,ymm4
  6efe10:	c5 c5 15 e4          	vunpckhpd ymm4,ymm7,ymm4
  6efe14:	c5 fc 10 ba 80 00 00 	vmovups ymm7,YMMWORD PTR [rdx+0x80]
  6efe1b:	00 
  6efe1c:	c5 7c 10 82 a0 00 00 	vmovups ymm8,YMMWORD PTR [rdx+0xa0]
  6efe23:	00 
  6efe24:	c5 44 59 d5          	vmulps ymm10,ymm7,ymm5
  6efe28:	c4 42 4d bc d0       	vfnmadd231ps ymm10,ymm6,ymm8
  6efe2d:	c5 c4 59 f6          	vmulps ymm6,ymm7,ymm6
  6efe31:	c5 fc 10 7a 40       	vmovups ymm7,YMMWORD PTR [rdx+0x40]
  6efe36:	c4 c2 55 b8 f0       	vfmadd231ps ymm6,ymm5,ymm8
  6efe3b:	c5 fc 10 6a 60       	vmovups ymm5,YMMWORD PTR [rdx+0x60]
  6efe40:	c5 44 59 c3          	vmulps ymm8,ymm7,ymm3
  6efe44:	c4 62 35 bc c5       	vfnmadd231ps ymm8,ymm9,ymm5
  6efe49:	c5 b4 59 ff          	vmulps ymm7,ymm9,ymm7
  6efe4d:	c5 7c 10 8a c0 00 00 	vmovups ymm9,YMMWORD PTR [rdx+0xc0]
  6efe54:	00 
  6efe55:	c4 e2 65 b8 fd       	vfmadd231ps ymm7,ymm3,ymm5
  6efe5a:	c5 fc 10 9a e0 00 00 	vmovups ymm3,YMMWORD PTR [rdx+0xe0]
  6efe61:	00 
  6efe62:	c5 b4 59 ea          	vmulps ymm5,ymm9,ymm2
  6efe66:	c4 e2 5d bc eb       	vfnmadd231ps ymm5,ymm4,ymm3
  6efe6b:	c5 b4 59 e4          	vmulps ymm4,ymm9,ymm4
  6efe6f:	c4 e2 6d b8 e3       	vfmadd231ps ymm4,ymm2,ymm3
  6efe74:	c5 ac 58 d1          	vaddps ymm2,ymm10,ymm1
  6efe78:	c5 bc 58 dd          	vaddps ymm3,ymm8,ymm5
  6efe7c:	c4 c1 74 5c ca       	vsubps ymm1,ymm1,ymm10
  6efe81:	c5 44 58 cc          	vaddps ymm9,ymm7,ymm4
  6efe85:	c5 c4 5c e4          	vsubps ymm4,ymm7,ymm4
  6efe89:	c5 cc 58 f8          	vaddps ymm7,ymm6,ymm0
  6efe8d:	c5 fc 5c f6          	vsubps ymm6,ymm0,ymm6
  6efe91:	c5 74 58 d4          	vaddps ymm10,ymm1,ymm4
  6efe95:	c4 c1 54 5c e8       	vsubps ymm5,ymm5,ymm8
  6efe9a:	c5 4c 58 c5          	vaddps ymm8,ymm6,ymm5
  6efe9e:	c5 f4 5c c4          	vsubps ymm0,ymm1,ymm4
  6efea2:	c5 ec 5c cb          	vsubps ymm1,ymm2,ymm3
  6efea6:	c5 cc 5c e5          	vsubps ymm4,ymm6,ymm5
  6efeaa:	c4 c1 44 5c e9       	vsubps ymm5,ymm7,ymm9
  6efeaf:	c5 b4 58 f7          	vaddps ymm6,ymm9,ymm7
  6efeb3:	c5 ec 58 d3          	vaddps ymm2,ymm2,ymm3
  6efeb7:	c5 cc 14 da          	vunpcklps ymm3,ymm6,ymm2
  6efebb:	c5 c8 14 fa          	vunpcklps xmm7,xmm6,xmm2
  6efebf:	c5 c8 15 d2          	vunpckhps xmm2,xmm6,xmm2
  6efec3:	c5 f8 11 56 10       	vmovups XMMWORD PTR [rsi+0x10],xmm2
  6efec8:	c5 f8 11 3e          	vmovups XMMWORD PTR [rsi],xmm7
  6efecc:	c4 e3 7d 19 5e 20 01 	vextractf128 XMMWORD PTR [rsi+0x20],ymm3,0x1
  6efed3:	c4 c1 3c 14 d2       	vunpcklps ymm2,ymm8,ymm10
  6efed8:	c4 c1 38 15 da       	vunpckhps xmm3,xmm8,xmm10
  6efedd:	c4 c1 38 14 f2       	vunpcklps xmm6,xmm8,xmm10
  6efee2:	c5 f8 11 76 30       	vmovups XMMWORD PTR [rsi+0x30],xmm6
  6efee7:	c5 f8 11 5e 40       	vmovups XMMWORD PTR [rsi+0x40],xmm3
  6efeec:	c4 e3 7d 19 56 50 01 	vextractf128 XMMWORD PTR [rsi+0x50],ymm2,0x1
  6efef3:	c5 d4 14 d1          	vunpcklps ymm2,ymm5,ymm1
  6efef7:	c5 d0 15 d9          	vunpckhps xmm3,xmm5,xmm1
  6efefb:	c5 d0 14 c9          	vunpcklps xmm1,xmm5,xmm1
  6efeff:	c5 f8 11 4e 60       	vmovups XMMWORD PTR [rsi+0x60],xmm1
  6eff04:	c5 f8 11 5e 70       	vmovups XMMWORD PTR [rsi+0x70],xmm3
  6eff09:	c4 e3 7d 19 96 80 00 	vextractf128 XMMWORD PTR [rsi+0x80],ymm2,0x1
  6eff10:	00 00 01 
  6eff13:	c5 dc 14 c8          	vunpcklps ymm1,ymm4,ymm0
  6eff17:	c5 d8 15 d0          	vunpckhps xmm2,xmm4,xmm0
  6eff1b:	c5 d8 14 c0          	vunpcklps xmm0,xmm4,xmm0
  6eff1f:	c5 f8 11 86 90 00 00 	vmovups XMMWORD PTR [rsi+0x90],xmm0
  6eff26:	00 
  6eff27:	c5 f8 11 96 a0 00 00 	vmovups XMMWORD PTR [rsi+0xa0],xmm2
  6eff2e:	00 
  6eff2f:	c4 e3 7d 19 8e b0 00 	vextractf128 XMMWORD PTR [rsi+0xb0],ymm1,0x1
  6eff36:	00 00 01 
  6eff39:	c5 f8 77             	vzeroupper
  6eff3c:	c3                   	ret
