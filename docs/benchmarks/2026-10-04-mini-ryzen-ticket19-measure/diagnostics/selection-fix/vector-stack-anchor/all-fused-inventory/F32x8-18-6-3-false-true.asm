
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000006ef900 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle>:
  6ef900:	48 c1 e2 04          	shl    rdx,0x4
  6ef904:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
  6ef908:	31 d2                	xor    edx,edx
  6ef90a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  6ef910:	c5 fb 10 5c 17 10    	vmovsd xmm3,QWORD PTR [rdi+rdx*1+0x10]
  6ef916:	c4 e3 7d 18 db 01    	vinsertf128 ymm3,ymm0,xmm3,0x1
  6ef91c:	c5 f8 57 c0          	vxorps xmm0,xmm0,xmm0
  6ef920:	c4 e3 65 0c e0 c0    	vblendps ymm4,ymm3,ymm0,0xc0
  6ef926:	c5 fb 10 5c 17 28    	vmovsd xmm3,QWORD PTR [rdi+rdx*1+0x28]
  6ef92c:	c4 e3 7d 18 db 01    	vinsertf128 ymm3,ymm0,xmm3,0x1
  6ef932:	c4 e3 65 0c f8 c0    	vblendps ymm7,ymm3,ymm0,0xc0
  6ef938:	c5 fb 10 5c 17 40    	vmovsd xmm3,QWORD PTR [rdi+rdx*1+0x40]
  6ef93e:	c4 e3 7d 18 db 01    	vinsertf128 ymm3,ymm0,xmm3,0x1
  6ef944:	c4 e3 65 0c e8 c0    	vblendps ymm5,ymm3,ymm0,0xc0
  6ef94a:	c5 78 10 0c 17       	vmovups xmm9,XMMWORD PTR [rdi+rdx*1]
  6ef94f:	c5 f8 10 5c 17 18    	vmovups xmm3,XMMWORD PTR [rdi+rdx*1+0x18]
  6ef955:	c5 78 10 44 17 30    	vmovups xmm8,XMMWORD PTR [rdi+rdx*1+0x30]
  6ef95b:	c5 78 10 5c 17 48    	vmovups xmm11,XMMWORD PTR [rdi+rdx*1+0x48]
  6ef961:	c5 fb 10 74 17 58    	vmovsd xmm6,QWORD PTR [rdi+rdx*1+0x58]
  6ef967:	c4 e3 7d 18 f6 01    	vinsertf128 ymm6,ymm0,xmm6,0x1
  6ef96d:	c4 63 4d 0c e8 c0    	vblendps ymm13,ymm6,ymm0,0xc0
  6ef973:	c5 78 10 54 17 60    	vmovups xmm10,XMMWORD PTR [rdi+rdx*1+0x60]
  6ef979:	c5 fb 10 74 17 70    	vmovsd xmm6,QWORD PTR [rdi+rdx*1+0x70]
  6ef97f:	c4 e3 7d 18 f6 01    	vinsertf128 ymm6,ymm0,xmm6,0x1
  6ef985:	c4 e3 4d 0c f0 c0    	vblendps ymm6,ymm6,ymm0,0xc0
  6ef98b:	c5 78 10 64 17 78    	vmovups xmm12,XMMWORD PTR [rdi+rdx*1+0x78]
  6ef991:	c5 7b 10 b4 17 88 00 	vmovsd xmm14,QWORD PTR [rdi+rdx*1+0x88]
  6ef998:	00 00 
  6ef99a:	c4 43 7d 18 f6 01    	vinsertf128 ymm14,ymm0,xmm14,0x1
  6ef9a0:	c4 63 0d 0c f8 c0    	vblendps ymm15,ymm14,ymm0,0xc0
  6ef9a6:	c4 c3 7d 19 e6 01    	vextractf128 xmm14,ymm4,0x1
  6ef9ac:	c4 c1 30 c6 e6 88    	vshufps xmm4,xmm9,xmm14,0x88
  6ef9b2:	c4 e3 7d 19 e8 01    	vextractf128 xmm0,ymm5,0x1
  6ef9b8:	c5 b8 c6 e8 88       	vshufps xmm5,xmm8,xmm0,0x88
  6ef9bd:	c4 e3 7d 19 f2 01    	vextractf128 xmm2,ymm6,0x1
  6ef9c3:	c5 a8 c6 f2 88       	vshufps xmm6,xmm10,xmm2,0x88
  6ef9c8:	c4 43 7d 19 ed 01    	vextractf128 xmm13,ymm13,0x1
  6ef9ce:	c4 41 30 c6 ce dd    	vshufps xmm9,xmm9,xmm14,0xdd
  6ef9d4:	c4 41 20 c6 f5 88    	vshufps xmm14,xmm11,xmm13,0x88
  6ef9da:	c4 43 7d 19 ff 01    	vextractf128 xmm15,ymm15,0x1
  6ef9e0:	c5 b8 c6 c0 dd       	vshufps xmm0,xmm8,xmm0,0xdd
  6ef9e5:	c4 41 18 c6 c7 88    	vshufps xmm8,xmm12,xmm15,0x88
  6ef9eb:	c4 e3 7d 19 ff 01    	vextractf128 xmm7,ymm7,0x1
  6ef9f1:	c5 a8 c6 d2 dd       	vshufps xmm2,xmm10,xmm2,0xdd
  6ef9f6:	c5 60 c6 d7 88       	vshufps xmm10,xmm3,xmm7,0x88
  6ef9fb:	c4 41 20 c6 ed dd    	vshufps xmm13,xmm11,xmm13,0xdd
  6efa01:	c4 c1 18 c6 cf dd    	vshufps xmm1,xmm12,xmm15,0xdd
  6efa07:	c5 e0 c6 ff dd       	vshufps xmm7,xmm3,xmm7,0xdd
  6efa0c:	c5 54 58 e6          	vaddps ymm12,ymm5,ymm6
  6efa10:	c5 9c 58 dc          	vaddps ymm3,ymm12,ymm4
  6efa14:	c4 41 3c 58 da       	vaddps ymm11,ymm8,ymm10
  6efa19:	c4 62 7d 18 3d 3e 5a 	vbroadcastss ymm15,DWORD PTR [rip+0xffffffffff985a3e]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6efa20:	98 ff 
  6efa22:	c4 62 05 ac e4       	vfnmadd213ps ymm12,ymm15,ymm4
  6efa27:	c5 7c 29 fc          	vmovaps ymm4,ymm15
  6efa2b:	c5 7c 58 fa          	vaddps ymm15,ymm0,ymm2
  6efa2f:	c5 fc 5c d2          	vsubps ymm2,ymm0,ymm2
  6efa33:	c4 c1 24 58 c6       	vaddps ymm0,ymm11,ymm14
  6efa38:	c4 42 5d ac de       	vfnmadd213ps ymm11,ymm4,ymm14
  6efa3d:	c5 74 58 f7          	vaddps ymm14,ymm1,ymm7
  6efa41:	c5 f4 5c cf          	vsubps ymm1,ymm1,ymm7
  6efa45:	c4 c1 04 58 f9       	vaddps ymm7,ymm15,ymm9
  6efa4a:	c5 fc 11 7c 24 d8    	vmovups YMMWORD PTR [rsp-0x28],ymm7
  6efa50:	c4 42 5d ac f9       	vfnmadd213ps ymm15,ymm4,ymm9
  6efa55:	c5 d4 5c f6          	vsubps ymm6,ymm5,ymm6
  6efa59:	c4 c1 0c 58 ed       	vaddps ymm5,ymm14,ymm13
  6efa5e:	c4 42 5d ac f5       	vfnmadd213ps ymm14,ymm4,ymm13
  6efa63:	c4 e2 7d 18 25 68 58 	vbroadcastss ymm4,DWORD PTR [rip+0xffffffffff985868]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6efa6a:	98 ff 
  6efa6c:	c5 ec 59 d4          	vmulps ymm2,ymm2,ymm4
  6efa70:	c4 c1 3c 5c fa       	vsubps ymm7,ymm8,ymm10
  6efa75:	c5 1c 58 d2          	vaddps ymm10,ymm12,ymm2
  6efa79:	c5 f4 59 cc          	vmulps ymm1,ymm1,ymm4
  6efa7d:	c5 9c 5c d2          	vsubps ymm2,ymm12,ymm2
  6efa81:	c5 24 58 e1          	vaddps ymm12,ymm11,ymm1
  6efa85:	c5 cc 59 f4          	vmulps ymm6,ymm6,ymm4
  6efa89:	c5 a4 5c c9          	vsubps ymm1,ymm11,ymm1
  6efa8d:	c5 04 5c de          	vsubps ymm11,ymm15,ymm6
  6efa91:	c5 c4 59 fc          	vmulps ymm7,ymm7,ymm4
  6efa95:	c5 04 58 c6          	vaddps ymm8,ymm15,ymm6
  6efa99:	c5 0c 5c ef          	vsubps ymm13,ymm14,ymm7
  6efa9d:	c5 0c 58 cf          	vaddps ymm9,ymm14,ymm7
  6efaa1:	c4 c1 2c 5c f4       	vsubps ymm6,ymm10,ymm12
  6efaa6:	c4 c1 28 58 fc       	vaddps xmm7,xmm10,xmm12
  6efaab:	c5 64 58 d0          	vaddps ymm10,ymm3,ymm0
  6efaaf:	c4 63 2d 18 d7 01    	vinsertf128 ymm10,ymm10,xmm7,0x1
  6efab5:	c5 e8 5c f9          	vsubps xmm7,xmm2,xmm1
  6efab9:	c4 e3 4d 18 f7 01    	vinsertf128 ymm6,ymm6,xmm7,0x1
  6efabf:	c5 e8 58 c9          	vaddps xmm1,xmm2,xmm1
  6efac3:	c5 e0 5c c0          	vsubps xmm0,xmm3,xmm0
  6efac7:	c5 ac 14 d6          	vunpcklps ymm2,ymm10,ymm6
  6efacb:	c5 f4 14 f8          	vunpcklps ymm7,ymm1,ymm0
  6efacf:	c5 ed 14 df          	vunpcklpd ymm3,ymm2,ymm7
  6efad3:	c5 ed 15 ff          	vunpckhpd ymm7,ymm2,ymm7
  6efad7:	c5 ac 15 d6          	vunpckhps ymm2,ymm10,ymm6
  6efadb:	c5 f4 15 c0          	vunpckhps ymm0,ymm1,ymm0
  6efadf:	c5 ed 14 f0          	vunpcklpd ymm6,ymm2,ymm0
  6efae3:	c4 c1 24 5c c5       	vsubps ymm0,ymm11,ymm13
  6efae8:	c4 c1 20 58 cd       	vaddps xmm1,xmm11,xmm13
  6efaed:	c5 fc 10 64 24 d8    	vmovups ymm4,YMMWORD PTR [rsp-0x28]
  6efaf3:	c5 dc 58 d5          	vaddps ymm2,ymm4,ymm5
  6efaf7:	c4 e3 6d 18 c9 01    	vinsertf128 ymm1,ymm2,xmm1,0x1
  6efafd:	c4 c1 38 5c d1       	vsubps xmm2,xmm8,xmm9
  6efb02:	c4 e3 7d 18 c2 01    	vinsertf128 ymm0,ymm0,xmm2,0x1
  6efb08:	c4 c1 38 58 d1       	vaddps xmm2,xmm8,xmm9
  6efb0d:	c5 d8 5c ed          	vsubps xmm5,xmm4,xmm5
  6efb11:	c5 74 14 c0          	vunpcklps ymm8,ymm1,ymm0
  6efb15:	c5 6c 14 cd          	vunpcklps ymm9,ymm2,ymm5
  6efb19:	c4 c1 3d 14 e1       	vunpcklpd ymm4,ymm8,ymm9
  6efb1e:	c4 41 3d 15 c1       	vunpckhpd ymm8,ymm8,ymm9
  6efb23:	c5 f4 15 c0          	vunpckhps ymm0,ymm1,ymm0
  6efb27:	c5 ec 15 cd          	vunpckhps ymm1,ymm2,ymm5
  6efb2b:	c5 fd 14 c1          	vunpcklpd ymm0,ymm0,ymm1
  6efb2f:	c5 fc 10 49 40       	vmovups ymm1,YMMWORD PTR [rcx+0x40]
  6efb34:	c5 fc 10 51 60       	vmovups ymm2,YMMWORD PTR [rcx+0x60]
  6efb39:	c5 f4 59 ef          	vmulps ymm5,ymm1,ymm7
  6efb3d:	c4 e2 3d bc ea       	vfnmadd231ps ymm5,ymm8,ymm2
  6efb42:	c5 bc 59 c9          	vmulps ymm1,ymm8,ymm1
  6efb46:	c5 7c 10 81 80 00 00 	vmovups ymm8,YMMWORD PTR [rcx+0x80]
  6efb4d:	00 
  6efb4e:	c4 e2 45 b8 ca       	vfmadd231ps ymm1,ymm7,ymm2
  6efb53:	c5 fc 10 91 a0 00 00 	vmovups ymm2,YMMWORD PTR [rcx+0xa0]
  6efb5a:	00 
  6efb5b:	c5 bc 59 fe          	vmulps ymm7,ymm8,ymm6
  6efb5f:	c4 e2 7d bc fa       	vfnmadd231ps ymm7,ymm0,ymm2
  6efb64:	c5 bc 59 c0          	vmulps ymm0,ymm8,ymm0
  6efb68:	c5 54 58 c7          	vaddps ymm8,ymm5,ymm7
  6efb6c:	c4 e2 4d b8 c2       	vfmadd231ps ymm0,ymm6,ymm2
  6efb71:	c5 f4 58 d0          	vaddps ymm2,ymm1,ymm0
  6efb75:	c4 62 7d 18 0d e2 58 	vbroadcastss ymm9,DWORD PTR [rip+0xffffffffff9858e2]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  6efb7c:	98 ff 
  6efb7e:	c5 7c 29 ce          	vmovaps ymm6,ymm9
  6efb82:	c4 e2 3d ac f3       	vfnmadd213ps ymm6,ymm8,ymm3
  6efb87:	c5 f4 5c c0          	vsubps ymm0,ymm1,ymm0
  6efb8b:	c4 62 7d 18 15 40 57 	vbroadcastss ymm10,DWORD PTR [rip+0xffffffffff985740]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  6efb92:	98 ff 
  6efb94:	c5 ac 59 c0          	vmulps ymm0,ymm10,ymm0
  6efb98:	c5 cc 58 c8          	vaddps ymm1,ymm6,ymm0
  6efb9c:	c5 d4 5c ef          	vsubps ymm5,ymm5,ymm7
  6efba0:	c5 7c 29 cf          	vmovaps ymm7,ymm9
  6efba4:	c4 e2 6d ac fc       	vfnmadd213ps ymm7,ymm2,ymm4
  6efba9:	c5 ac 59 ed          	vmulps ymm5,ymm10,ymm5
  6efbad:	c5 cc 5c c0          	vsubps ymm0,ymm6,ymm0
  6efbb1:	c5 c4 5c f5          	vsubps ymm6,ymm7,ymm5
  6efbb5:	c5 c4 58 ed          	vaddps ymm5,ymm7,ymm5
  6efbb9:	c5 bc 58 db          	vaddps ymm3,ymm8,ymm3
  6efbbd:	c5 ec 58 d4          	vaddps ymm2,ymm2,ymm4
  6efbc1:	c5 e4 14 e2          	vunpcklps ymm4,ymm3,ymm2
  6efbc5:	c5 e0 14 fa          	vunpcklps xmm7,xmm3,xmm2
  6efbc9:	c5 e0 15 d2          	vunpckhps xmm2,xmm3,xmm2
  6efbcd:	c5 f8 11 54 16 10    	vmovups XMMWORD PTR [rsi+rdx*1+0x10],xmm2
  6efbd3:	c5 f8 11 3c 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm7
  6efbd8:	c4 e3 7d 19 64 16 20 	vextractf128 XMMWORD PTR [rsi+rdx*1+0x20],ymm4,0x1
  6efbdf:	01 
  6efbe0:	c5 f4 14 d6          	vunpcklps ymm2,ymm1,ymm6
  6efbe4:	c5 f0 14 de          	vunpcklps xmm3,xmm1,xmm6
  6efbe8:	c5 f0 15 ce          	vunpckhps xmm1,xmm1,xmm6
  6efbec:	c5 f8 11 4c 16 40    	vmovups XMMWORD PTR [rsi+rdx*1+0x40],xmm1
  6efbf2:	c5 f8 11 5c 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm3
  6efbf8:	c4 e3 7d 19 54 16 50 	vextractf128 XMMWORD PTR [rsi+rdx*1+0x50],ymm2,0x1
  6efbff:	01 
  6efc00:	c5 fc 14 cd          	vunpcklps ymm1,ymm0,ymm5
  6efc04:	c5 f8 14 d5          	vunpcklps xmm2,xmm0,xmm5
  6efc08:	c5 f8 15 c5          	vunpckhps xmm0,xmm0,xmm5
  6efc0c:	c5 f8 11 44 16 70    	vmovups XMMWORD PTR [rsi+rdx*1+0x70],xmm0
  6efc12:	c5 f8 11 54 16 60    	vmovups XMMWORD PTR [rsi+rdx*1+0x60],xmm2
  6efc18:	c4 e3 7d 19 8c 16 80 	vextractf128 XMMWORD PTR [rsi+rdx*1+0x80],ymm1,0x1
  6efc1f:	00 00 00 01 
  6efc23:	48 81 c2 90 00 00 00 	add    rdx,0x90
  6efc2a:	48 39 d0             	cmp    rax,rdx
  6efc2d:	0f 85 dd fc ff ff    	jne    6ef910 <<fastfft::isa::x86::F32x8 as fastfft::engine::small::SmallVector>::rectangle+0x10>
  6efc33:	c5 f8 77             	vzeroupper
  6efc36:	c3                   	ret
