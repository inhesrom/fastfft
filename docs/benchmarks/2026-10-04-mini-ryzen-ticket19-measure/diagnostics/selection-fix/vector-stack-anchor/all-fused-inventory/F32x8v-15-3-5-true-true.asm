
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000adfe80 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle>:
  adfe80:	48 6b c2 78          	imul   rax,rdx,0x78
  adfe84:	31 d2                	xor    edx,edx
  adfe86:	62 e2 7d 28 18 1d 44 	vbroadcastss ymm19,DWORD PTR [rip+0xffffffffff595444]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  adfe8d:	54 59 ff 
  adfe90:	c4 e2 7d 18 0d c7 55 	vbroadcastss ymm1,DWORD PTR [rip+0xffffffffff5955c7]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  adfe97:	59 ff 
  adfe99:	c4 e2 7d 18 15 46 58 	vbroadcastss ymm2,DWORD PTR [rip+0xffffffffff595846]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  adfea0:	59 ff 
  adfea2:	c4 e2 7d 18 1d 99 57 	vbroadcastss ymm3,DWORD PTR [rip+0xffffffffff595799]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  adfea9:	59 ff 
  adfeab:	c4 e2 7d 18 25 a4 58 	vbroadcastss ymm4,DWORD PTR [rip+0xffffffffff5958a4]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  adfeb2:	59 ff 
  adfeb4:	c5 d0 57 ed          	vxorps xmm5,xmm5,xmm5
  adfeb8:	c4 e2 7d 18 35 df 54 	vbroadcastss ymm6,DWORD PTR [rip+0xffffffffff5954df]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  adfebf:	59 ff 
  adfec1:	c5 fc 28 3d f7 83 59 	vmovaps ymm7,YMMWORD PTR [rip+0xffffffffff5983f7]        # 782c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x5770>
  adfec8:	ff 
  adfec9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  adfed0:	c5 7c 10 44 17 28    	vmovups ymm8,YMMWORD PTR [rdi+rdx*1+0x28]
  adfed6:	c5 7b 10 4c 17 48    	vmovsd xmm9,QWORD PTR [rdi+rdx*1+0x48]
  adfedc:	c4 41 3c c6 d1 dd    	vshufps ymm10,ymm8,ymm9,0xdd
  adfee2:	c4 43 fd 01 d2 d8    	vpermpd ymm10,ymm10,0xd8
  adfee8:	c5 7c 10 5c 17 50    	vmovups ymm11,YMMWORD PTR [rdi+rdx*1+0x50]
  adfeee:	c5 7b 10 64 17 70    	vmovsd xmm12,QWORD PTR [rdi+rdx*1+0x70]
  adfef4:	c4 41 24 c6 ec dd    	vshufps ymm13,ymm11,ymm12,0xdd
  adfefa:	c4 43 fd 01 ed d8    	vpermpd ymm13,ymm13,0xd8
  adff00:	c4 41 2c 5c f5       	vsubps ymm14,ymm10,ymm13
  adff05:	62 31 0c 28 59 f3    	vmulps ymm14,ymm14,ymm19
  adff0b:	c4 41 3c c6 c1 88    	vshufps ymm8,ymm8,ymm9,0x88
  adff11:	c4 43 fd 01 c0 d8    	vpermpd ymm8,ymm8,0xd8
  adff17:	c4 41 24 c6 cc 88    	vshufps ymm9,ymm11,ymm12,0x88
  adff1d:	c4 43 fd 01 c9 d8    	vpermpd ymm9,ymm9,0xd8
  adff23:	c4 41 3c 58 d9       	vaddps ymm11,ymm8,ymm9
  adff28:	c5 7c 10 24 17       	vmovups ymm12,YMMWORD PTR [rdi+rdx*1]
  adff2d:	c5 7b 10 7c 17 20    	vmovsd xmm15,QWORD PTR [rdi+rdx*1+0x20]
  adff33:	62 c1 1c 28 c6 c7 88 	vshufps ymm16,ymm12,ymm15,0x88
  adff3a:	62 a3 fd 28 01 c0 d8 	vpermpd ymm16,ymm16,0xd8
  adff41:	62 e1 7c 28 28 c9    	vmovaps ymm17,ymm1
  adff47:	62 a2 25 28 ac c8    	vfnmadd213ps ymm17,ymm11,ymm16
  adff4d:	62 a1 0c 28 58 d1    	vaddps ymm18,ymm14,ymm17
  adff53:	c4 41 2c 58 d5       	vaddps ymm10,ymm10,ymm13
  adff58:	c4 41 1c c6 e7 dd    	vshufps ymm12,ymm12,ymm15,0xdd
  adff5e:	c4 43 fd 01 e4 d8    	vpermpd ymm12,ymm12,0xd8
  adff64:	c5 7c 28 e9          	vmovaps ymm13,ymm1
  adff68:	c4 42 2d ac ec       	vfnmadd213ps ymm13,ymm10,ymm12
  adff6d:	c4 41 3c 5c c1       	vsubps ymm8,ymm8,ymm9
  adff72:	62 31 3c 28 59 c3    	vmulps ymm8,ymm8,ymm19
  adff78:	c4 41 14 5c c8       	vsubps ymm9,ymm13,ymm8
  adff7d:	62 51 74 20 5c f6    	vsubps ymm14,ymm17,ymm14
  adff83:	c4 41 14 58 c0       	vaddps ymm8,ymm13,ymm8
  adff88:	62 51 7c 20 58 eb    	vaddps ymm13,ymm16,ymm11
  adff8e:	c4 41 1c 58 d2       	vaddps ymm10,ymm12,ymm10
  adff93:	c4 41 78 28 da       	vmovaps xmm11,xmm10
  adff98:	c4 43 7d 19 d2 01    	vextractf128 xmm10,ymm10,0x1
  adff9e:	c4 41 78 28 e0       	vmovaps xmm12,xmm8
  adffa3:	c4 43 7d 19 c7 01    	vextractf128 xmm15,ymm8,0x1
  adffa9:	62 c1 7c 08 28 c1    	vmovaps xmm16,xmm9
  adffaf:	c4 43 7d 19 c9 01    	vextractf128 xmm9,ymm9,0x1
  adffb5:	c4 41 2d 14 c9       	vunpcklpd ymm9,ymm10,ymm9
  adffba:	62 31 a5 28 15 d0    	vunpckhpd ymm10,ymm11,ymm16
  adffc0:	62 31 a5 28 14 d8    	vunpcklpd ymm11,ymm11,ymm16
  adffc6:	62 c1 fe 08 7e c0    	vmovq  xmm16,xmm8
  adffcc:	c4 c1 1d 73 dc 08    	vpsrldq ymm12,ymm12,0x8
  adffd2:	c4 63 05 0c fd cc    	vblendps ymm15,ymm15,ymm5,0xcc
  adffd8:	62 31 24 28 c6 c0 88 	vshufps ymm8,ymm11,ymm16,0x88
  adffdf:	c4 41 3c c6 c0 d8    	vshufps ymm8,ymm8,ymm8,0xd8
  adffe5:	62 31 24 28 c6 d8 dd 	vshufps ymm11,ymm11,ymm16,0xdd
  adffec:	62 c1 24 28 c6 c3 d8 	vshufps ymm16,ymm11,ymm11,0xd8
  adfff3:	c4 41 2c c6 dc 88    	vshufps ymm11,ymm10,ymm12,0x88
  adfff9:	c4 41 24 c6 db d8    	vshufps ymm11,ymm11,ymm11,0xd8
  adffff:	c4 41 2c c6 d4 dd    	vshufps ymm10,ymm10,ymm12,0xdd
  ae0005:	c4 41 2c c6 d2 d8    	vshufps ymm10,ymm10,ymm10,0xd8
  ae000b:	c4 41 34 c6 cf 88    	vshufps ymm9,ymm9,ymm15,0x88
  ae0011:	c4 41 34 c6 e1 d8    	vshufps ymm12,ymm9,ymm9,0xd8
  ae0017:	c4 41 78 28 cd       	vmovaps xmm9,xmm13
  ae001c:	c4 43 7d 19 ed 01    	vextractf128 xmm13,ymm13,0x1
  ae0022:	c4 41 78 28 fe       	vmovaps xmm15,xmm14
  ae0027:	c4 63 7d 19 f0 01    	vextractf128 xmm0,ymm14,0x1
  ae002d:	62 a1 7c 08 28 ca    	vmovaps xmm17,xmm18
  ae0033:	62 a3 7d 28 19 d2 01 	vextractf32x4 xmm18,ymm18,0x1
  ae003a:	62 31 95 28 14 ea    	vunpcklpd ymm13,ymm13,ymm18
  ae0040:	62 a1 b5 28 15 d1    	vunpckhpd ymm18,ymm9,ymm17
  ae0046:	62 a1 b5 28 14 c9    	vunpcklpd ymm17,ymm9,ymm17
  ae004c:	c4 41 7a 7e f6       	vmovq  xmm14,xmm14
  ae0051:	c4 c1 05 73 df 08    	vpsrldq ymm15,ymm15,0x8
  ae0057:	c4 e3 7d 0c c5 cc    	vblendps ymm0,ymm0,ymm5,0xcc
  ae005d:	62 51 74 20 c6 ce 88 	vshufps ymm9,ymm17,ymm14,0x88
  ae0064:	c4 41 34 c6 c9 d8    	vshufps ymm9,ymm9,ymm9,0xd8
  ae006a:	62 51 74 20 c6 f6 dd 	vshufps ymm14,ymm17,ymm14,0xdd
  ae0071:	c4 41 0c c6 f6 d8    	vshufps ymm14,ymm14,ymm14,0xd8
  ae0077:	62 c1 6c 20 c6 cf 88 	vshufps ymm17,ymm18,ymm15,0x88
  ae007e:	62 a1 74 20 c6 c9 d8 	vshufps ymm17,ymm17,ymm17,0xd8
  ae0085:	62 51 6c 20 c6 ff dd 	vshufps ymm15,ymm18,ymm15,0xdd
  ae008c:	c4 41 04 c6 ff d8    	vshufps ymm15,ymm15,ymm15,0xd8
  ae0092:	c5 94 c6 c0 88       	vshufps ymm0,ymm13,ymm0,0x88
  ae0097:	c5 fc c6 c0 d8       	vshufps ymm0,ymm0,ymm0,0xd8
  ae009c:	c5 7c 10 69 40       	vmovups ymm13,YMMWORD PTR [rcx+0x40]
  ae00a1:	62 e1 7c 28 10 51 03 	vmovups ymm18,YMMWORD PTR [rcx+0x60]
  ae00a8:	62 e1 7c 28 10 61 04 	vmovups ymm20,YMMWORD PTR [rcx+0x80]
  ae00af:	62 e1 7c 28 10 69 05 	vmovups ymm21,YMMWORD PTR [rcx+0xa0]
  ae00b6:	62 e1 7c 28 10 71 06 	vmovups ymm22,YMMWORD PTR [rcx+0xc0]
  ae00bd:	62 e1 7c 28 10 79 07 	vmovups ymm23,YMMWORD PTR [rcx+0xe0]
  ae00c4:	62 61 7c 28 10 41 08 	vmovups ymm24,YMMWORD PTR [rcx+0x100]
  ae00cb:	62 61 7c 28 10 49 09 	vmovups ymm25,YMMWORD PTR [rcx+0x120]
  ae00d2:	62 41 7c 20 59 d5    	vmulps ymm26,ymm16,ymm13
  ae00d8:	62 22 0d 28 bc d2    	vfnmadd231ps ymm26,ymm14,ymm18
  ae00de:	62 01 1c 28 59 d8    	vmulps ymm27,ymm12,ymm24
  ae00e4:	62 02 7d 28 bc d9    	vfnmadd231ps ymm27,ymm0,ymm25
  ae00ea:	62 01 2c 20 58 e3    	vaddps ymm28,ymm26,ymm27
  ae00f0:	62 21 24 28 59 ec    	vmulps ymm29,ymm11,ymm20
  ae00f6:	62 22 75 20 bc ed    	vfnmadd231ps ymm29,ymm17,ymm21
  ae00fc:	62 21 2c 28 59 f6    	vmulps ymm30,ymm10,ymm22
  ae0102:	62 22 05 28 bc f7    	vfnmadd231ps ymm30,ymm15,ymm23
  ae0108:	62 01 14 20 58 fe    	vaddps ymm31,ymm29,ymm30
  ae010e:	c4 41 0c 59 ed       	vmulps ymm13,ymm14,ymm13
  ae0113:	62 32 7d 20 b8 ea    	vfmadd231ps ymm13,ymm16,ymm18
  ae0119:	62 91 7c 28 59 c0    	vmulps ymm0,ymm0,ymm24
  ae011f:	62 92 1d 28 b8 c1    	vfmadd231ps ymm0,ymm12,ymm25
  ae0125:	c5 14 58 e0          	vaddps ymm12,ymm13,ymm0
  ae0129:	62 31 74 20 59 f4    	vmulps ymm14,ymm17,ymm20
  ae012f:	62 32 25 28 b8 f5    	vfmadd231ps ymm14,ymm11,ymm21
  ae0135:	62 31 04 28 59 de    	vmulps ymm11,ymm15,ymm22
  ae013b:	62 32 2d 28 b8 df    	vfmadd231ps ymm11,ymm10,ymm23
  ae0141:	c4 41 0c 58 fb       	vaddps ymm15,ymm14,ymm11
  ae0146:	62 e1 7c 28 28 c2    	vmovaps ymm16,ymm2
  ae014c:	62 c2 1d 20 a8 c0    	vfmadd213ps ymm16,ymm28,ymm8
  ae0152:	62 e2 05 20 bc c3    	vfnmadd231ps ymm16,ymm31,ymm3
  ae0158:	c5 94 5c c0          	vsubps ymm0,ymm13,ymm0
  ae015c:	c4 41 0c 5c db       	vsubps ymm11,ymm14,ymm11
  ae0161:	c5 24 59 ec          	vmulps ymm13,ymm11,ymm4
  ae0165:	c4 62 7d b8 ee       	vfmadd231ps ymm13,ymm0,ymm6
  ae016a:	62 51 7c 20 58 f5    	vaddps ymm14,ymm16,ymm13
  ae0170:	c5 7c 28 d2          	vmovaps ymm10,ymm2
  ae0174:	c4 42 1d a8 d1       	vfmadd213ps ymm10,ymm12,ymm9
  ae0179:	c4 62 05 bc d3       	vfnmadd231ps ymm10,ymm15,ymm3
  ae017e:	62 81 2c 20 5c cb    	vsubps ymm17,ymm26,ymm27
  ae0184:	62 81 14 20 5c d6    	vsubps ymm18,ymm29,ymm30
  ae018a:	62 e1 6c 20 59 e4    	vmulps ymm20,ymm18,ymm4
  ae0190:	62 e2 75 20 b8 e6    	vfmadd231ps ymm20,ymm17,ymm6
  ae0196:	62 e1 7c 28 28 eb    	vmovaps ymm21,ymm3
  ae019c:	62 c2 1d 20 ac e8    	vfnmadd213ps ymm21,ymm28,ymm8
  ae01a2:	62 e2 05 20 b8 ea    	vfmadd231ps ymm21,ymm31,ymm2
  ae01a8:	c5 fc 59 c4          	vmulps ymm0,ymm0,ymm4
  ae01ac:	c4 c2 4d bc c3       	vfnmadd231ps ymm0,ymm6,ymm11
  ae01b1:	62 71 54 20 58 d8    	vaddps ymm11,ymm21,ymm0
  ae01b7:	62 e1 7c 28 28 f3    	vmovaps ymm22,ymm3
  ae01bd:	62 c2 1d 28 ac f1    	vfnmadd213ps ymm22,ymm12,ymm9
  ae01c3:	62 e2 05 28 b8 f2    	vfmadd231ps ymm22,ymm15,ymm2
  ae01c9:	62 e1 74 20 59 cc    	vmulps ymm17,ymm17,ymm4
  ae01cf:	62 a2 4d 28 bc ca    	vfnmadd231ps ymm17,ymm6,ymm18
  ae01d5:	62 f1 54 20 5c c0    	vsubps ymm0,ymm21,ymm0
  ae01db:	62 51 7c 20 5c ed    	vsubps ymm13,ymm16,ymm13
  ae01e1:	62 11 3c 28 58 c4    	vaddps ymm8,ymm8,ymm28
  ae01e7:	62 11 3c 28 58 c7    	vaddps ymm8,ymm8,ymm31
  ae01ed:	c4 41 18 58 c9       	vaddps xmm9,xmm12,xmm9
  ae01f2:	c4 41 30 58 cf       	vaddps xmm9,xmm9,xmm15
  ae01f7:	62 52 45 28 7f c8    	vpermt2ps ymm9,ymm7,ymm8
  ae01fd:	c4 43 7d 19 c8 01    	vextractf128 xmm8,ymm9,0x1
  ae0203:	c5 78 13 44 16 10    	vmovlps QWORD PTR [rsi+rdx*1+0x10],xmm8
  ae0209:	c5 78 11 0c 16       	vmovups XMMWORD PTR [rsi+rdx*1],xmm9
  ae020e:	62 31 2c 08 5c c4    	vsubps xmm8,xmm10,xmm20
  ae0214:	62 52 45 28 7f c6    	vpermt2ps ymm8,ymm7,ymm14
  ae021a:	c5 78 11 44 16 18    	vmovups XMMWORD PTR [rsi+rdx*1+0x18],xmm8
  ae0220:	c4 43 7d 19 c0 01    	vextractf128 xmm8,ymm8,0x1
  ae0226:	c5 78 13 44 16 28    	vmovlps QWORD PTR [rsi+rdx*1+0x28],xmm8
  ae022c:	62 31 4c 00 5c c1    	vsubps xmm8,xmm22,xmm17
  ae0232:	62 52 45 28 7f c3    	vpermt2ps ymm8,ymm7,ymm11
  ae0238:	c5 78 11 44 16 30    	vmovups XMMWORD PTR [rsi+rdx*1+0x30],xmm8
  ae023e:	c4 43 7d 19 c0 01    	vextractf128 xmm8,ymm8,0x1
  ae0244:	c5 78 13 44 16 40    	vmovlps QWORD PTR [rsi+rdx*1+0x40],xmm8
  ae024a:	62 31 4c 00 58 c1    	vaddps xmm8,xmm22,xmm17
  ae0250:	62 72 45 28 7f c0    	vpermt2ps ymm8,ymm7,ymm0
  ae0256:	c5 78 11 44 16 48    	vmovups XMMWORD PTR [rsi+rdx*1+0x48],xmm8
  ae025c:	c4 63 7d 19 c0 01    	vextractf128 xmm0,ymm8,0x1
  ae0262:	c5 f8 13 44 16 58    	vmovlps QWORD PTR [rsi+rdx*1+0x58],xmm0
  ae0268:	62 b1 2c 08 58 c4    	vaddps xmm0,xmm10,xmm20
  ae026e:	62 d2 45 28 7f c5    	vpermt2ps ymm0,ymm7,ymm13
  ae0274:	c5 f8 11 44 16 60    	vmovups XMMWORD PTR [rsi+rdx*1+0x60],xmm0
  ae027a:	c4 e3 7d 19 c0 01    	vextractf128 xmm0,ymm0,0x1
  ae0280:	c5 f8 13 44 16 70    	vmovlps QWORD PTR [rsi+rdx*1+0x70],xmm0
  ae0286:	48 83 c2 78          	add    rdx,0x78
  ae028a:	48 39 d0             	cmp    rax,rdx
  ae028d:	0f 85 3d fc ff ff    	jne    adfed0 <<fastfft::isa::x86::F32x8v as fastfft::engine::small::SmallVector>::rectangle+0x50>
  ae0293:	c5 f8 77             	vzeroupper
  ae0296:	c3                   	ret
