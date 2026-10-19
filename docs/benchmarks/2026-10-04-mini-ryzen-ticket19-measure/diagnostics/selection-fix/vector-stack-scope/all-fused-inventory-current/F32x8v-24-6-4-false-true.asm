
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000adf8c0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  adf8c0:	48 c1 e2 06          	shl    rdx,0x6
  adf8c4:	48 8d 04 52          	lea    rax,[rdx+rdx*2]
  adf8c8:	c4 e2 7d 18 05 03 5a 	vbroadcastss ymm0,DWORD PTR [rip+0xffffffffff595a03]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  adf8cf:	59 ff 
  adf8d1:	31 d2                	xor    edx,edx
  adf8d3:	c4 e2 7d 18 0d 84 5b 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff595b84]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  adf8da:	59 ff 
  adf8dc:	c5 fc 28 15 fc 78 59 	vmovaps ymm2,YMMWORD PTR [rip+0xffffffffff5978fc]        # 771e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4690>
  adf8e3:	ff 
  adf8e4:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  adf8eb:	00 00 00 00 00 
  adf8f0:	c5 f8 10 5c 17 50    	vmovups xmm3,XMMWORD PTR [rdi+rdx*1+0x50]
  adf8f6:	c5 f8 10 64 17 40    	vmovups xmm4,XMMWORD PTR [rdi+rdx*1+0x40]
  adf8fc:	c5 d8 c6 eb 88       	vshufps xmm5,xmm4,xmm3,0x88
  adf901:	c5 f8 10 b4 17 90 00 	vmovups xmm6,XMMWORD PTR [rdi+rdx*1+0x90]
  adf908:	00 00 
  adf90a:	c5 f8 10 bc 17 80 00 	vmovups xmm7,XMMWORD PTR [rdi+rdx*1+0x80]
  adf911:	00 00 
  adf913:	c5 40 c6 c6 88       	vshufps xmm8,xmm7,xmm6,0x88
  adf918:	c4 41 54 5c c8       	vsubps ymm9,ymm5,ymm8
  adf91d:	c5 34 59 c8          	vmulps ymm9,ymm9,ymm0
  adf921:	c5 d8 c6 e3 dd       	vshufps xmm4,xmm4,xmm3,0xdd
  adf926:	c5 c0 c6 f6 dd       	vshufps xmm6,xmm7,xmm6,0xdd
  adf92b:	c5 dc 58 fe          	vaddps ymm7,ymm4,ymm6
  adf92f:	c5 78 10 14 17       	vmovups xmm10,XMMWORD PTR [rdi+rdx*1]
  adf934:	c5 78 10 5c 17 10    	vmovups xmm11,XMMWORD PTR [rdi+rdx*1+0x10]
  adf93a:	c5 78 10 64 17 20    	vmovups xmm12,XMMWORD PTR [rdi+rdx*1+0x20]
  adf940:	c5 78 10 6c 17 30    	vmovups xmm13,XMMWORD PTR [rdi+rdx*1+0x30]
  adf946:	c4 41 28 c6 f3 dd    	vshufps xmm14,xmm10,xmm11,0xdd
  adf94c:	c5 7c 28 f9          	vmovaps ymm15,ymm1
  adf950:	c4 42 45 ac fe       	vfnmadd213ps ymm15,ymm7,ymm14
  adf955:	c4 c1 34 58 df       	vaddps ymm3,ymm9,ymm15
  adf95a:	62 e1 7c 08 10 44 17 	vmovups xmm16,XMMWORD PTR [rdi+rdx*1+0xb0]
  adf961:	0b 
  adf962:	62 e1 7c 08 10 4c 17 	vmovups xmm17,XMMWORD PTR [rdi+rdx*1+0xa0]
  adf969:	0a 
  adf96a:	62 a1 74 00 c6 d0 88 	vshufps xmm18,xmm17,xmm16,0x88
  adf971:	62 c1 1c 08 c6 dd 88 	vshufps xmm19,xmm12,xmm13,0x88
  adf978:	62 a1 6c 20 5c e3    	vsubps ymm20,ymm18,ymm19
  adf97e:	62 e1 5c 20 59 e0    	vmulps ymm20,ymm20,ymm0
  adf984:	62 a1 74 00 c6 c0 dd 	vshufps xmm16,xmm17,xmm16,0xdd
  adf98b:	c4 41 18 c6 e5 dd    	vshufps xmm12,xmm12,xmm13,0xdd
  adf991:	62 51 7c 20 58 ec    	vaddps ymm13,ymm16,ymm12
  adf997:	62 e1 7c 08 10 4c 17 	vmovups xmm17,XMMWORD PTR [rdi+rdx*1+0x70]
  adf99e:	07 
  adf99f:	62 e1 7c 08 10 6c 17 	vmovups xmm21,XMMWORD PTR [rdi+rdx*1+0x60]
  adf9a6:	06 
  adf9a7:	62 a1 54 00 c6 f1 dd 	vshufps xmm22,xmm21,xmm17,0xdd
  adf9ae:	62 e1 7c 28 28 f9    	vmovaps ymm23,ymm1
  adf9b4:	62 a2 15 28 ac fe    	vfnmadd213ps ymm23,ymm13,ymm22
  adf9ba:	62 21 5c 20 58 c7    	vaddps ymm24,ymm20,ymm23
  adf9c0:	c5 bc 58 ed          	vaddps ymm5,ymm8,ymm5
  adf9c4:	c4 41 28 c6 c3 88    	vshufps xmm8,xmm10,xmm11,0x88
  adf9ca:	c5 7c 28 d1          	vmovaps ymm10,ymm1
  adf9ce:	c4 42 55 ac d0       	vfnmadd213ps ymm10,ymm5,ymm8
  adf9d3:	c5 dc 5c e6          	vsubps ymm4,ymm4,ymm6
  adf9d7:	c5 dc 59 e0          	vmulps ymm4,ymm4,ymm0
  adf9db:	c5 ac 5c f4          	vsubps ymm6,ymm10,ymm4
  adf9df:	62 31 6c 20 58 db    	vaddps ymm11,ymm18,ymm19
  adf9e5:	62 a1 54 00 c6 c9 88 	vshufps xmm17,xmm21,xmm17,0x88
  adf9ec:	62 e1 7c 28 28 d1    	vmovaps ymm18,ymm1
  adf9f2:	62 a2 25 28 ac d1    	vfnmadd213ps ymm18,ymm11,ymm17
  adf9f8:	62 51 7c 20 5c e4    	vsubps ymm12,ymm16,ymm12
  adf9fe:	c5 1c 59 e0          	vmulps ymm12,ymm12,ymm0
  adfa02:	62 c1 6c 20 5c c4    	vsubps ymm16,ymm18,ymm12
  adfa08:	c4 41 04 5c c9       	vsubps ymm9,ymm15,ymm9
  adfa0d:	62 31 44 20 5c fc    	vsubps ymm15,ymm23,ymm20
  adfa13:	c5 ac 58 e4          	vaddps ymm4,ymm10,ymm4
  adfa17:	62 51 6c 20 58 d4    	vaddps ymm10,ymm18,ymm12
  adfa1d:	c5 8c 58 ff          	vaddps ymm7,ymm14,ymm7
  adfa21:	62 51 4c 20 58 e5    	vaddps ymm12,ymm22,ymm13
  adfa27:	c5 bc 58 ed          	vaddps ymm5,ymm8,ymm5
  adfa2b:	62 51 74 20 58 c3    	vaddps ymm8,ymm17,ymm11
  adfa31:	c4 41 34 5c df       	vsubps ymm11,ymm9,ymm15
  adfa36:	c4 41 5c 5c ea       	vsubps ymm13,ymm4,ymm10
  adfa3b:	c5 1c 58 f7          	vaddps ymm14,ymm12,ymm7
  adfa3f:	62 c1 54 28 58 c8    	vaddps ymm17,ymm5,ymm8
  adfa45:	c5 a8 58 e4          	vaddps xmm4,xmm10,xmm4
  adfa49:	62 f3 75 20 18 e4 01 	vinsertf32x4 ymm4,ymm17,xmm4,0x1
  adfa50:	62 31 4c 08 5c d0    	vsubps xmm10,xmm6,xmm16
  adfa56:	c4 43 15 18 d2 01    	vinsertf128 ymm10,ymm13,xmm10,0x1
  adfa5c:	62 b1 4c 08 58 f0    	vaddps xmm6,xmm6,xmm16
  adfa62:	c5 5d 14 ee          	vunpcklpd ymm13,ymm4,ymm6
  adfa66:	c4 c1 50 5c e8       	vsubps xmm5,xmm5,xmm8
  adfa6b:	c5 2d 14 c5          	vunpcklpd ymm8,ymm10,ymm5
  adfa6f:	62 c1 14 28 c6 c0 88 	vshufps ymm16,ymm13,ymm8,0x88
  adfa76:	62 a1 7c 20 c6 c0 d8 	vshufps ymm16,ymm16,ymm16,0xd8
  adfa7d:	c4 41 14 c6 c0 dd    	vshufps ymm8,ymm13,ymm8,0xdd
  adfa83:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  adfa89:	c5 dd 15 e6          	vunpckhpd ymm4,ymm4,ymm6
  adfa8d:	c5 ad 15 ed          	vunpckhpd ymm5,ymm10,ymm5
  adfa91:	c5 dc c6 f5 88       	vshufps ymm6,ymm4,ymm5,0x88
  adfa96:	c5 cc c6 f6 d8       	vshufps ymm6,ymm6,ymm6,0xd8
  adfa9b:	c5 dc c6 e5 dd       	vshufps ymm4,ymm4,ymm5,0xdd
  adfaa0:	c5 dc c6 e4 d8       	vshufps ymm4,ymm4,ymm4,0xd8
  adfaa5:	c4 c1 30 58 ef       	vaddps xmm5,xmm9,xmm15
  adfaaa:	c4 e3 0d 18 ed 01    	vinsertf128 ymm5,ymm14,xmm5,0x1
  adfab0:	62 11 64 08 5c c8    	vsubps xmm9,xmm3,xmm24
  adfab6:	c4 43 25 18 c9 01    	vinsertf128 ymm9,ymm11,xmm9,0x1
  adfabc:	62 91 64 08 58 d8    	vaddps xmm3,xmm3,xmm24
  adfac2:	c5 55 14 d3          	vunpcklpd ymm10,ymm5,ymm3
  adfac6:	c4 c1 40 5c fc       	vsubps xmm7,xmm7,xmm12
  adfacb:	c5 35 14 df          	vunpcklpd ymm11,ymm9,ymm7
  adfacf:	c4 41 2c c6 e3 88    	vshufps ymm12,ymm10,ymm11,0x88
  adfad5:	c4 41 1c c6 e4 d8    	vshufps ymm12,ymm12,ymm12,0xd8
  adfadb:	c4 41 2c c6 d3 dd    	vshufps ymm10,ymm10,ymm11,0xdd
  adfae1:	c4 41 2c c6 d2 d8    	vshufps ymm10,ymm10,ymm10,0xd8
  adfae7:	c5 d5 15 db          	vunpckhpd ymm3,ymm5,ymm3
  adfaeb:	c5 b5 15 ef          	vunpckhpd ymm5,ymm9,ymm7
  adfaef:	c5 e4 c6 fd 88       	vshufps ymm7,ymm3,ymm5,0x88
  adfaf4:	c5 c4 c6 ff d8       	vshufps ymm7,ymm7,ymm7,0xd8
  adfaf9:	c5 e4 c6 dd dd       	vshufps ymm3,ymm3,ymm5,0xdd
  adfafe:	c5 e4 c6 db d8       	vshufps ymm3,ymm3,ymm3,0xd8
  adfb03:	c5 fc 10 69 40       	vmovups ymm5,YMMWORD PTR [rcx+0x40]
  adfb08:	c5 7c 10 49 60       	vmovups ymm9,YMMWORD PTR [rcx+0x60]
  adfb0d:	c5 7c 10 99 80 00 00 	vmovups ymm11,YMMWORD PTR [rcx+0x80]
  adfb14:	00 
  adfb15:	c5 7c 10 a9 a0 00 00 	vmovups ymm13,YMMWORD PTR [rcx+0xa0]
  adfb1c:	00 
  adfb1d:	c5 7c 10 b1 c0 00 00 	vmovups ymm14,YMMWORD PTR [rcx+0xc0]
  adfb24:	00 
  adfb25:	c5 7c 10 b9 e0 00 00 	vmovups ymm15,YMMWORD PTR [rcx+0xe0]
  adfb2c:	00 
  adfb2d:	62 c1 4c 28 59 cb    	vmulps ymm17,ymm6,ymm11
  adfb33:	62 c2 45 28 bc cd    	vfnmadd231ps ymm17,ymm7,ymm13
  adfb39:	62 a1 7c 20 58 d1    	vaddps ymm18,ymm16,ymm17
  adfb3f:	62 e1 3c 28 59 dd    	vmulps ymm19,ymm8,ymm5
  adfb45:	62 c2 2d 28 bc d9    	vfnmadd231ps ymm19,ymm10,ymm9
  adfb4b:	62 c1 5c 28 59 e6    	vmulps ymm20,ymm4,ymm14
  adfb51:	62 c2 65 28 bc e7    	vfnmadd231ps ymm20,ymm3,ymm15
  adfb57:	62 a1 64 20 58 ec    	vaddps ymm21,ymm19,ymm20
  adfb5d:	c5 a4 59 ff          	vmulps ymm7,ymm11,ymm7
  adfb61:	c4 c2 4d b8 fd       	vfmadd231ps ymm7,ymm6,ymm13
  adfb66:	c5 9c 58 f7          	vaddps ymm6,ymm12,ymm7
  adfb6a:	c5 ac 59 ed          	vmulps ymm5,ymm10,ymm5
  adfb6e:	c4 c2 3d b8 e9       	vfmadd231ps ymm5,ymm8,ymm9
  adfb73:	c5 8c 59 db          	vmulps ymm3,ymm14,ymm3
  adfb77:	c4 c2 5d b8 df       	vfmadd231ps ymm3,ymm4,ymm15
  adfb7c:	c5 d4 58 e3          	vaddps ymm4,ymm5,ymm3
  adfb80:	62 31 7c 20 5c c1    	vsubps ymm8,ymm16,ymm17
  adfb86:	c5 d4 5c db          	vsubps ymm3,ymm5,ymm3
  adfb8a:	c5 bc 58 eb          	vaddps ymm5,ymm8,ymm3
  adfb8e:	c5 9c 5c ff          	vsubps ymm7,ymm12,ymm7
  adfb92:	62 31 5c 20 5c cb    	vsubps ymm9,ymm20,ymm19
  adfb98:	c5 34 58 d7          	vaddps ymm10,ymm9,ymm7
  adfb9c:	62 31 6c 20 5c dd    	vsubps ymm11,ymm18,ymm21
  adfba2:	c5 4c 5c e4          	vsubps ymm12,ymm6,ymm4
  adfba6:	c5 bc 5c db          	vsubps ymm3,ymm8,ymm3
  adfbaa:	c4 c1 44 5c f9       	vsubps ymm7,ymm7,ymm9
  adfbaf:	62 31 6c 20 58 c5    	vaddps ymm8,ymm18,ymm21
  adfbb5:	c5 cc 58 e4          	vaddps ymm4,ymm6,ymm4
  adfbb9:	c4 63 7d 19 c6 01    	vextractf128 xmm6,ymm8,0x1
  adfbbf:	62 72 6d 28 7f c4    	vpermt2ps ymm8,ymm2,ymm4
  adfbc5:	c5 7c 11 04 16       	vmovups YMMWORD PTR [rsi+rdx*1],ymm8
  adfbca:	c4 e3 7d 19 e4 01    	vextractf128 xmm4,ymm4,0x1
  adfbd0:	c5 c8 14 e4          	vunpcklps xmm4,xmm6,xmm4
  adfbd4:	c5 f8 11 64 16 20    	vmovups XMMWORD PTR [rsi+rdx*1+0x20],xmm4
  adfbda:	c4 e3 7d 19 ec 01    	vextractf128 xmm4,ymm5,0x1
  adfbe0:	62 d2 6d 28 7f ea    	vpermt2ps ymm5,ymm2,ymm10
  adfbe6:	c5 fc 11 6c 16 30    	vmovups YMMWORD PTR [rsi+rdx*1+0x30],ymm5
  adfbec:	c4 63 7d 19 d5 01    	vextractf128 xmm5,ymm10,0x1
  adfbf2:	c5 d8 14 e5          	vunpcklps xmm4,xmm4,xmm5
  adfbf6:	c5 f8 11 64 16 50    	vmovups XMMWORD PTR [rsi+rdx*1+0x50],xmm4
  adfbfc:	c4 63 7d 19 dc 01    	vextractf128 xmm4,ymm11,0x1
  adfc02:	62 52 6d 28 7f dc    	vpermt2ps ymm11,ymm2,ymm12
  adfc08:	c5 7c 11 5c 16 60    	vmovups YMMWORD PTR [rsi+rdx*1+0x60],ymm11
  adfc0e:	c4 63 7d 19 e5 01    	vextractf128 xmm5,ymm12,0x1
  adfc14:	c5 d8 14 e5          	vunpcklps xmm4,xmm4,xmm5
  adfc18:	c5 f8 11 a4 16 80 00 	vmovups XMMWORD PTR [rsi+rdx*1+0x80],xmm4
  adfc1f:	00 00 
  adfc21:	c4 e3 7d 19 dc 01    	vextractf128 xmm4,ymm3,0x1
  adfc27:	62 f2 6d 28 7f df    	vpermt2ps ymm3,ymm2,ymm7
  adfc2d:	c5 fc 11 9c 16 90 00 	vmovups YMMWORD PTR [rsi+rdx*1+0x90],ymm3
  adfc34:	00 00 
  adfc36:	c4 e3 7d 19 fb 01    	vextractf128 xmm3,ymm7,0x1
  adfc3c:	c5 d8 14 db          	vunpcklps xmm3,xmm4,xmm3
  adfc40:	c5 f8 11 9c 16 b0 00 	vmovups XMMWORD PTR [rsi+rdx*1+0xb0],xmm3
  adfc47:	00 00 
  adfc49:	48 81 c2 c0 00 00 00 	add    rdx,0xc0
  adfc50:	48 39 d0             	cmp    rax,rdx
  adfc53:	0f 85 97 fc ff ff    	jne    adf8f0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x30>
  adfc59:	c5 f8 77             	vzeroupper
  adfc5c:	c3                   	ret
