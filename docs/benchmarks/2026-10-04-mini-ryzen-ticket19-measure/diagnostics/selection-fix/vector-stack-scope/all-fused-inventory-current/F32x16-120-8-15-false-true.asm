
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

00000000009ff8c0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  9ff8c0:	55                   	push   rbp
  9ff8c1:	48 89 e5             	mov    rbp,rsp
  9ff8c4:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  9ff8c8:	48 81 ec 40 09 00 00 	sub    rsp,0x940
  9ff8cf:	48 69 c2 c0 03 00 00 	imul   rax,rdx,0x3c0
  9ff8d6:	31 d2                	xor    edx,edx
  9ff8d8:	4c 8d 84 24 c0 08 00 	lea    r8,[rsp+0x8c0]
  9ff8df:	00 
  9ff8e0:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  9ff8e5:	41 b2 7f             	mov    r10b,0x7f
  9ff8e8:	c4 c1 7b 92 ca       	kmovd  k1,r10d
  9ff8ed:	0f 1f 00             	nop    DWORD PTR [rax]
  9ff8f0:	c6 84 24 c0 08 00 00 	mov    BYTE PTR [rsp+0x8c0],0x0
  9ff8f7:	00 
  9ff8f8:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  9ff8fd:	62 e1 7c 48 10 3c 17 	vmovups zmm23,ZMMWORD PTR [rdi+rdx*1]
  9ff904:	c5 f8 10 4c 17 60    	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x60]
  9ff90a:	c4 e3 71 21 4c 17 64 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x64],0x10
  9ff911:	10 
  9ff912:	c4 e2 79 18 5c 17 68 	vbroadcastss xmm3,DWORD PTR [rdi+rdx*1+0x68]
  9ff919:	c5 7c 10 44 17 40    	vmovups ymm8,YMMWORD PTR [rdi+rdx*1+0x40]
  9ff91f:	c5 fb 10 64 17 70    	vmovsd xmm4,QWORD PTR [rdi+rdx*1+0x70]
  9ff925:	62 f1 7c 48 10 94 17 	vmovups zmm2,ZMMWORD PTR [rdi+rdx*1+0x1e0]
  9ff92c:	e0 01 00 00 
  9ff930:	c5 7c 10 8c 17 20 02 	vmovups ymm9,YMMWORD PTR [rdi+rdx*1+0x220]
  9ff937:	00 00 
  9ff939:	c5 f8 10 ac 17 40 02 	vmovups xmm5,XMMWORD PTR [rdi+rdx*1+0x240]
  9ff940:	00 00 
  9ff942:	c4 e3 51 21 ac 17 44 	vinsertps xmm5,xmm5,DWORD PTR [rdi+rdx*1+0x244],0x10
  9ff949:	02 00 00 10 
  9ff94d:	62 b1 7c 48 28 f7    	vmovaps zmm6,zmm23
  9ff953:	c4 62 79 18 94 17 48 	vbroadcastss xmm10,DWORD PTR [rdi+rdx*1+0x248]
  9ff95a:	02 00 00 
  9ff95d:	c5 7b 10 9c 17 50 02 	vmovsd xmm11,QWORD PTR [rdi+rdx*1+0x250]
  9ff964:	00 00 
  9ff966:	c4 e3 61 0c d9 03    	vblendps xmm3,xmm3,xmm1,0x3
  9ff96c:	62 f1 7c 48 28 fa    	vmovaps zmm7,zmm2
  9ff972:	62 f1 7c 48 10 8c 17 	vmovups zmm1,ZMMWORD PTR [rdi+rdx*1+0xf0]
  9ff979:	f0 00 00 00 
  9ff97d:	c4 63 61 21 64 17 6c 	vinsertps xmm12,xmm3,DWORD PTR [rdi+rdx*1+0x6c],0x30
  9ff984:	30 
  9ff985:	c5 f8 10 9c 17 50 01 	vmovups xmm3,XMMWORD PTR [rdi+rdx*1+0x150]
  9ff98c:	00 00 
  9ff98e:	c4 63 61 21 ac 17 54 	vinsertps xmm13,xmm3,DWORD PTR [rdi+rdx*1+0x154],0x10
  9ff995:	01 00 00 10 
  9ff999:	c4 e3 29 0c dd 03    	vblendps xmm3,xmm10,xmm5,0x3
  9ff99f:	c4 e2 79 18 ac 17 58 	vbroadcastss xmm5,DWORD PTR [rdi+rdx*1+0x158]
  9ff9a6:	01 00 00 
  9ff9a9:	c4 63 61 21 94 17 4c 	vinsertps xmm10,xmm3,DWORD PTR [rdi+rdx*1+0x24c],0x30
  9ff9b0:	02 00 00 30 
  9ff9b4:	c5 7c 10 b4 17 30 01 	vmovups ymm14,YMMWORD PTR [rdi+rdx*1+0x130]
  9ff9bb:	00 00 
  9ff9bd:	c5 7b 10 bc 17 60 01 	vmovsd xmm15,QWORD PTR [rdi+rdx*1+0x160]
  9ff9c4:	00 00 
  9ff9c6:	62 f1 7c 48 28 d9    	vmovaps zmm3,zmm1
  9ff9cc:	c4 43 51 0c ed 03    	vblendps xmm13,xmm5,xmm13,0x3
  9ff9d2:	62 f1 7c 48 10 ac 17 	vmovups zmm5,ZMMWORD PTR [rdi+rdx*1+0x2d0]
  9ff9d9:	d0 02 00 00 
  9ff9dd:	62 e1 7c 28 10 84 17 	vmovups ymm16,YMMWORD PTR [rdi+rdx*1+0x310]
  9ff9e4:	10 03 00 00 
  9ff9e8:	c4 63 11 21 ac 17 5c 	vinsertps xmm13,xmm13,DWORD PTR [rdi+rdx*1+0x15c],0x30
  9ff9ef:	01 00 00 30 
  9ff9f3:	62 e1 7c 08 10 4c 17 	vmovups xmm17,XMMWORD PTR [rdi+rdx*1+0x330]
  9ff9fa:	33 
  9ff9fb:	62 f3 75 00 21 84 17 	vinsertps xmm0,xmm17,DWORD PTR [rdi+rdx*1+0x334],0x10
  9ffa02:	34 03 00 00 10 
  9ffa07:	c4 63 1d 18 e4 01    	vinsertf128 ymm12,ymm12,xmm4,0x1
  9ffa0d:	c4 e2 79 18 a4 17 38 	vbroadcastss xmm4,DWORD PTR [rdi+rdx*1+0x338]
  9ffa14:	03 00 00 
  9ffa17:	c4 e3 59 0c c0 03    	vblendps xmm0,xmm4,xmm0,0x3
  9ffa1d:	c4 43 2d 18 db 01    	vinsertf128 ymm11,ymm10,xmm11,0x1
  9ffa23:	c4 e3 79 21 84 17 3c 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x33c],0x30
  9ffa2a:	03 00 00 30 
  9ffa2e:	c5 fb 10 a4 17 40 03 	vmovsd xmm4,QWORD PTR [rdi+rdx*1+0x340]
  9ffa35:	00 00 
  9ffa37:	c4 43 15 18 ef 01    	vinsertf128 ymm13,ymm13,xmm15,0x1
  9ffa3d:	c4 e3 7d 18 c4 01    	vinsertf128 ymm0,ymm0,xmm4,0x1
  9ffa43:	62 f1 7c 48 28 e5    	vmovaps zmm4,zmm5
  9ffa49:	62 71 7c 48 10 94 17 	vmovups zmm10,ZMMWORD PTR [rdi+rdx*1+0x78]
  9ffa50:	78 00 00 00 
  9ffa54:	62 53 bd 48 1a c4 01 	vinsertf64x4 zmm8,zmm8,ymm12,0x1
  9ffa5b:	c5 78 10 a4 17 d8 00 	vmovups xmm12,XMMWORD PTR [rdi+rdx*1+0xd8]
  9ffa62:	00 00 
  9ffa64:	c4 63 19 21 a4 17 dc 	vinsertps xmm12,xmm12,DWORD PTR [rdi+rdx*1+0xdc],0x10
  9ffa6b:	00 00 00 10 
  9ffa6f:	62 53 b5 48 1a cb 01 	vinsertf64x4 zmm9,zmm9,ymm11,0x1
  9ffa76:	c5 7c 10 9c 17 b8 00 	vmovups ymm11,YMMWORD PTR [rdi+rdx*1+0xb8]
  9ffa7d:	00 00 
  9ffa7f:	c4 62 79 18 bc 17 e0 	vbroadcastss xmm15,DWORD PTR [rdi+rdx*1+0xe0]
  9ffa86:	00 00 00 
  9ffa89:	62 53 8d 48 1a f5 01 	vinsertf64x4 zmm14,zmm14,ymm13,0x1
  9ffa90:	c4 43 01 0c e4 03    	vblendps xmm12,xmm15,xmm12,0x3
  9ffa96:	c4 63 19 21 a4 17 e4 	vinsertps xmm12,xmm12,DWORD PTR [rdi+rdx*1+0xe4],0x30
  9ffa9d:	00 00 00 30 
  9ffaa1:	62 f3 fd 40 1a c0 01 	vinsertf64x4 zmm0,zmm16,ymm0,0x1
  9ffaa8:	c5 7b 10 ac 17 e8 00 	vmovsd xmm13,QWORD PTR [rdi+rdx*1+0xe8]
  9ffaaf:	00 00 
  9ffab1:	c4 43 1d 18 e5 01    	vinsertf128 ymm12,ymm12,xmm13,0x1
  9ffab7:	62 53 a5 48 1a e4 01 	vinsertf64x4 zmm12,zmm11,ymm12,0x1
  9ffabe:	62 42 fd c9 88 c0    	vexpandpd zmm24{k1}{z},zmm8
  9ffac4:	62 51 7c 48 28 da    	vmovaps zmm11,zmm10
  9ffaca:	62 71 7c 48 10 ac 17 	vmovups zmm13,ZMMWORD PTR [rdi+rdx*1+0x258]
  9ffad1:	58 02 00 00 
  9ffad5:	62 e1 7c 28 10 8c 17 	vmovups ymm17,YMMWORD PTR [rdi+rdx*1+0x298]
  9ffadc:	98 02 00 00 
  9ffae0:	62 42 fd c9 88 d1    	vexpandpd zmm26{k1}{z},zmm9
  9ffae6:	c5 78 10 bc 17 b8 02 	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x2b8]
  9ffaed:	00 00 
  9ffaef:	c4 63 01 21 84 17 bc 	vinsertps xmm8,xmm15,DWORD PTR [rdi+rdx*1+0x2bc],0x10
  9ffaf6:	02 00 00 10 
  9ffafa:	62 52 fd c9 88 fe    	vexpandpd zmm15{k1}{z},zmm14
  9ffb00:	c4 62 79 18 b4 17 c0 	vbroadcastss xmm14,DWORD PTR [rdi+rdx*1+0x2c0]
  9ffb07:	02 00 00 
  9ffb0a:	c4 43 09 0c c0 03    	vblendps xmm8,xmm14,xmm8,0x3
  9ffb10:	62 e2 fd c9 88 c0    	vexpandpd zmm16{k1}{z},zmm0
  9ffb16:	c4 e3 39 21 84 17 c4 	vinsertps xmm0,xmm8,DWORD PTR [rdi+rdx*1+0x2c4],0x30
  9ffb1d:	02 00 00 30 
  9ffb21:	c5 7b 10 84 17 c8 02 	vmovsd xmm8,QWORD PTR [rdi+rdx*1+0x2c8]
  9ffb28:	00 00 
  9ffb2a:	62 c2 fd c9 88 e4    	vexpandpd zmm20{k1}{z},zmm12
  9ffb30:	c4 c3 7d 18 c0 01    	vinsertf128 ymm0,ymm0,xmm8,0x1
  9ffb36:	62 f3 f5 40 1a c0 01 	vinsertf64x4 zmm0,zmm17,ymm0,0x1
  9ffb3d:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  9ffb43:	62 61 7c 48 28 2d b3 	vmovaps zmm29,ZMMWORD PTR [rip+0xffffffffff68e1b3]        # 8dd00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b1b0>
  9ffb4a:	e1 68 ff 
  9ffb4d:	62 92 15 40 7f f0    	vpermt2ps zmm6,zmm29,zmm24
  9ffb53:	62 c1 7c 48 28 d5    	vmovaps zmm18,zmm13
  9ffb59:	62 e1 7c 48 10 8c 17 	vmovups zmm17,ZMMWORD PTR [rdi+rdx*1+0x168]
  9ffb60:	68 01 00 00 
  9ffb64:	c5 7c 10 84 17 a8 01 	vmovups ymm8,YMMWORD PTR [rdi+rdx*1+0x1a8]
  9ffb6b:	00 00 
  9ffb6d:	62 92 15 40 7f fa    	vpermt2ps zmm7,zmm29,zmm26
  9ffb73:	c5 78 10 a4 17 c8 01 	vmovups xmm12,XMMWORD PTR [rdi+rdx*1+0x1c8]
  9ffb7a:	00 00 
  9ffb7c:	c4 63 19 21 a4 17 cc 	vinsertps xmm12,xmm12,DWORD PTR [rdi+rdx*1+0x1cc],0x10
  9ffb83:	01 00 00 10 
  9ffb87:	62 d2 15 40 7f df    	vpermt2ps zmm3,zmm29,zmm15
  9ffb8d:	c4 62 79 18 b4 17 d0 	vbroadcastss xmm14,DWORD PTR [rdi+rdx*1+0x1d0]
  9ffb94:	01 00 00 
  9ffb97:	c4 43 09 0c e4 03    	vblendps xmm12,xmm14,xmm12,0x3
  9ffb9d:	62 b2 15 40 7f e0    	vpermt2ps zmm4,zmm29,zmm16
  9ffba3:	c4 63 19 21 a4 17 d4 	vinsertps xmm12,xmm12,DWORD PTR [rdi+rdx*1+0x1d4],0x30
  9ffbaa:	01 00 00 30 
  9ffbae:	c5 7b 10 b4 17 d8 01 	vmovsd xmm14,QWORD PTR [rdi+rdx*1+0x1d8]
  9ffbb5:	00 00 
  9ffbb7:	62 32 15 40 7f dc    	vpermt2ps zmm11,zmm29,zmm20
  9ffbbd:	c4 43 1d 18 e6 01    	vinsertf128 ymm12,ymm12,xmm14,0x1
  9ffbc3:	62 53 bd 48 1a c4 01 	vinsertf64x4 zmm8,zmm8,ymm12,0x1
  9ffbca:	62 52 fd c9 88 c0    	vexpandpd zmm8{k1}{z},zmm8
  9ffbd0:	62 e2 15 40 7f d0    	vpermt2ps zmm18,zmm29,zmm0
  9ffbd6:	62 a1 7c 48 28 d9    	vmovaps zmm19,zmm17
  9ffbdc:	62 e1 7c 48 10 b4 17 	vmovups zmm22,ZMMWORD PTR [rdi+rdx*1+0x348]
  9ffbe3:	48 03 00 00 
  9ffbe7:	c5 7c 10 b4 17 88 03 	vmovups ymm14,YMMWORD PTR [rdi+rdx*1+0x388]
  9ffbee:	00 00 
  9ffbf0:	62 c2 15 40 7f d8    	vpermt2ps zmm19,zmm29,zmm8
  9ffbf6:	c5 78 10 a4 17 a8 03 	vmovups xmm12,XMMWORD PTR [rdi+rdx*1+0x3a8]
  9ffbfd:	00 00 
  9ffbff:	c4 63 19 21 a4 17 ac 	vinsertps xmm12,xmm12,DWORD PTR [rdi+rdx*1+0x3ac],0x10
  9ffc06:	03 00 00 10 
  9ffc0a:	62 e1 4c 48 58 ef    	vaddps zmm21,zmm6,zmm7
  9ffc10:	c4 62 79 18 8c 17 b0 	vbroadcastss xmm9,DWORD PTR [rdi+rdx*1+0x3b0]
  9ffc17:	03 00 00 
  9ffc1a:	c4 43 31 0c cc 03    	vblendps xmm9,xmm9,xmm12,0x3
  9ffc20:	62 61 64 48 58 cc    	vaddps zmm25,zmm3,zmm4
  9ffc26:	c4 63 31 21 8c 17 b4 	vinsertps xmm9,xmm9,DWORD PTR [rdi+rdx*1+0x3b4],0x30
  9ffc2d:	03 00 00 30 
  9ffc31:	62 61 ff 08 10 5c 17 	vmovsd xmm27,QWORD PTR [rdi+rdx*1+0x3b8]
  9ffc38:	77 
  9ffc39:	62 31 24 48 58 e2    	vaddps zmm12,zmm11,zmm18
  9ffc3f:	62 13 35 28 18 cb 01 	vinsertf32x4 ymm9,ymm9,xmm27,0x1
  9ffc46:	62 53 8d 48 1a c9 01 	vinsertf64x4 zmm9,zmm14,ymm9,0x1
  9ffc4d:	62 52 fd c9 88 c9    	vexpandpd zmm9{k1}{z},zmm9
  9ffc53:	62 01 54 40 58 d9    	vaddps zmm27,zmm21,zmm25
  9ffc59:	62 21 7c 48 28 e6    	vmovaps zmm28,zmm22
  9ffc5f:	62 42 15 40 7f e1    	vpermt2ps zmm28,zmm29,zmm9
  9ffc65:	62 11 64 40 58 f4    	vaddps zmm14,zmm19,zmm28
  9ffc6b:	62 41 1c 48 58 ee    	vaddps zmm29,zmm12,zmm14
  9ffc71:	62 61 7c 48 28 35 c5 	vmovaps zmm30,ZMMWORD PTR [rip+0xffffffffff68e0c5]        # 8dd40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b1f0>
  9ffc78:	e0 68 ff 
  9ffc7b:	62 32 0d 40 7f d4    	vpermt2ps zmm10,zmm30,zmm20
  9ffc81:	62 72 0d 40 7f e8    	vpermt2ps zmm13,zmm30,zmm0
  9ffc87:	62 c1 2c 48 58 e5    	vaddps zmm20,zmm10,zmm13
  9ffc8d:	62 91 54 40 5c c1    	vsubps zmm0,zmm21,zmm25
  9ffc93:	62 c2 0d 40 7f c8    	vpermt2ps zmm17,zmm30,zmm8
  9ffc99:	62 c2 0d 40 7f f1    	vpermt2ps zmm22,zmm30,zmm9
  9ffc9f:	62 a1 74 40 58 ee    	vaddps zmm21,zmm17,zmm22
  9ffca5:	62 01 24 40 58 fd    	vaddps zmm31,zmm27,zmm29
  9ffcab:	62 31 5c 40 5c c5    	vsubps zmm8,zmm20,zmm21
  9ffcb1:	62 71 4c 48 5c cf    	vsubps zmm9,zmm6,zmm7
  9ffcb7:	62 d2 0d 40 7f cf    	vpermt2ps zmm1,zmm30,zmm15
  9ffcbd:	62 01 24 40 5c cd    	vsubps zmm25,zmm27,zmm29
  9ffcc3:	62 b2 0d 40 7f e8    	vpermt2ps zmm5,zmm30,zmm16
  9ffcc9:	62 e1 74 48 5c c5    	vsubps zmm16,zmm1,zmm5
  9ffccf:	62 31 34 48 58 f8    	vaddps zmm15,zmm9,zmm16
  9ffcd5:	62 41 7c 48 58 d8    	vaddps zmm27,zmm0,zmm8
  9ffcdb:	62 61 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm27
  9ffce2:	02 
  9ffce3:	62 31 24 48 5c da    	vsubps zmm11,zmm11,zmm18
  9ffce9:	62 51 2c 48 5c d5    	vsubps zmm10,zmm10,zmm13
  9ffcef:	62 d1 24 48 58 f2    	vaddps zmm6,zmm11,zmm10
  9ffcf5:	62 41 7c 48 5c e8    	vsubps zmm29,zmm0,zmm8
  9ffcfb:	62 e2 7d 48 18 15 97 	vbroadcastss zmm18,DWORD PTR [rip+0xffffffffff675697]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  9ffd02:	56 67 ff 
  9ffd05:	62 b1 4c 48 59 f2    	vmulps zmm6,zmm6,zmm18
  9ffd0b:	62 b1 74 40 5c c6    	vsubps zmm0,zmm17,zmm22
  9ffd11:	62 11 64 40 5c c4    	vsubps zmm8,zmm19,zmm28
  9ffd17:	62 61 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm31
  9ffd1e:	04 
  9ffd1f:	62 d1 7c 48 5c f8    	vsubps zmm7,zmm0,zmm8
  9ffd25:	62 b1 44 48 59 fa    	vmulps zmm7,zmm7,zmm18
  9ffd2b:	62 31 34 48 5c e8    	vsubps zmm13,zmm9,zmm16
  9ffd31:	62 61 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm25
  9ffd38:	07 
  9ffd39:	62 51 2c 48 5c cb    	vsubps zmm9,zmm10,zmm11
  9ffd3f:	62 31 34 48 59 d2    	vmulps zmm10,zmm9,zmm18
  9ffd45:	62 f1 3c 48 58 c0    	vaddps zmm0,zmm8,zmm0
  9ffd4b:	62 61 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm27
  9ffd52:	01 
  9ffd53:	62 b1 7c 48 59 c2    	vmulps zmm0,zmm0,zmm18
  9ffd59:	62 82 0d 40 7f f8    	vpermt2ps zmm23,zmm30,zmm24
  9ffd5f:	62 92 0d 40 7f d2    	vpermt2ps zmm2,zmm30,zmm26
  9ffd65:	62 61 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm29
  9ffd6c:	05 
  9ffd6d:	62 81 7c 48 28 d5    	vmovaps zmm18,zmm29
  9ffd73:	62 71 44 40 58 c2    	vaddps zmm8,zmm23,zmm2
  9ffd79:	62 f1 74 48 58 cd    	vaddps zmm1,zmm1,zmm5
  9ffd7f:	62 f1 3c 48 58 e9    	vaddps zmm5,zmm8,zmm1
  9ffd85:	62 71 4c 48 58 cf    	vaddps zmm9,zmm6,zmm7
  9ffd8b:	62 a1 5c 40 58 c5    	vaddps zmm16,zmm20,zmm21
  9ffd91:	62 31 54 48 58 d8    	vaddps zmm11,zmm5,zmm16
  9ffd97:	62 c1 7c 48 28 eb    	vmovaps zmm21,zmm11
  9ffd9d:	62 e1 2c 48 58 c8    	vaddps zmm17,zmm10,zmm0
  9ffda3:	62 21 54 48 5c f0    	vsubps zmm30,zmm5,zmm16
  9ffda9:	62 61 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm30
  9ffdb0:	06 
  9ffdb1:	62 d1 0c 48 5c ec    	vsubps zmm5,zmm14,zmm12
  9ffdb7:	62 c1 04 48 58 f1    	vaddps zmm22,zmm15,zmm9
  9ffdbd:	62 f1 3c 48 5c c9    	vsubps zmm1,zmm8,zmm1
  9ffdc3:	62 e1 54 48 58 d9    	vaddps zmm19,zmm5,zmm1
  9ffdc9:	62 21 7c 48 28 c3    	vmovaps zmm24,zmm19
  9ffdcf:	62 41 04 48 5c d1    	vsubps zmm26,zmm15,zmm9
  9ffdd5:	62 61 74 48 5c e5    	vsubps zmm28,zmm1,zmm5
  9ffddb:	62 61 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm28
  9ffde2:	13 
  9ffde3:	62 f1 5c 48 5c cb    	vsubps zmm1,zmm4,zmm3
  9ffde9:	62 31 14 48 58 f1    	vaddps zmm14,zmm13,zmm17
  9ffdef:	62 f1 44 40 5c d2    	vsubps zmm2,zmm23,zmm2
  9ffdf5:	62 f1 74 48 58 da    	vaddps zmm3,zmm1,zmm2
  9ffdfb:	62 f1 2c 48 5c c0    	vsubps zmm0,zmm10,zmm0
  9ffe01:	62 31 14 48 5c c9    	vsubps zmm9,zmm13,zmm17
  9ffe07:	62 61 64 48 58 e8    	vaddps zmm29,zmm3,zmm0
  9ffe0d:	62 71 64 48 5c c0    	vsubps zmm8,zmm3,zmm0
  9ffe13:	62 f1 6c 48 5c c1    	vsubps zmm0,zmm2,zmm1
  9ffe19:	62 a1 7c 48 28 fe    	vmovaps zmm23,zmm22
  9ffe1f:	62 f1 44 48 5c d6    	vsubps zmm2,zmm7,zmm6
  9ffe25:	62 71 7c 48 58 e2    	vaddps zmm12,zmm0,zmm2
  9ffe2b:	62 e1 7c 48 5c ca    	vsubps zmm17,zmm0,zmm2
  9ffe31:	62 61 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm26
  9ffe38:	12 
  9ffe39:	62 f1 7c 48 28 05 3d 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6c713d]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  9ffe40:	71 6c ff 
  9ffe43:	c4 41 00 57 ff       	vxorps xmm15,xmm15,xmm15
  9ffe48:	62 42 7d 48 7f ff    	vpermt2ps zmm31,zmm0,zmm15
  9ffe4e:	62 61 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm31
  9ffe55:	11 
  9ffe56:	62 42 7d 48 7f cf    	vpermt2ps zmm25,zmm0,zmm15
  9ffe5c:	62 61 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm25
  9ffe63:	18 
  9ffe64:	62 91 7c 48 28 cf    	vmovaps zmm1,zmm31
  9ffe6a:	62 41 7c 48 28 de    	vmovaps zmm27,zmm14
  9ffe70:	62 71 7c 48 28 15 86 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff6c7086]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  9ffe77:	70 6c ff 
  9ffe7a:	62 92 2d 48 7f c9    	vpermt2ps zmm1,zmm10,zmm25
  9ffe80:	62 f1 7c 48 28 d9    	vmovaps zmm3,zmm1
  9ffe86:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm1
  9ffe8d:	17 
  9ffe8e:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x80]
  9ffe95:	02 
  9ffe96:	62 d2 7d 48 7f cf    	vpermt2ps zmm1,zmm0,zmm15
  9ffe9c:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm1
  9ffea3:	02 
  9ffea4:	62 b1 7c 48 28 d2    	vmovaps zmm2,zmm18
  9ffeaa:	62 d2 7d 48 7f d7    	vpermt2ps zmm2,zmm0,zmm15
  9ffeb0:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm2
  9ffeb7:	15 
  9ffeb8:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm9
  9ffebf:	0e 
  9ffec0:	62 f1 7c 48 28 e9    	vmovaps zmm5,zmm1
  9ffec6:	62 f2 2d 48 7f ea    	vpermt2ps zmm5,zmm10,zmm2
  9ffecc:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm5
  9ffed3:	16 
  9ffed4:	62 c2 7d 48 7f f7    	vpermt2ps zmm22,zmm0,zmm15
  9ffeda:	62 42 7d 48 7f d7    	vpermt2ps zmm26,zmm0,zmm15
  9ffee0:	62 d1 7c 48 28 cb    	vmovaps zmm1,zmm11
  9ffee6:	62 d2 7d 48 7f cf    	vpermt2ps zmm1,zmm0,zmm15
  9ffeec:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm1
  9ffef3:	14 
  9ffef4:	62 42 7d 48 7f f7    	vpermt2ps zmm30,zmm0,zmm15
  9ffefa:	62 52 7d 48 7f f7    	vpermt2ps zmm14,zmm0,zmm15
  9fff00:	62 92 2d 48 7f ce    	vpermt2ps zmm1,zmm10,zmm30
  9fff06:	62 f1 7c 48 28 d1    	vmovaps zmm2,zmm1
  9fff0c:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x840],zmm1
  9fff13:	21 
  9fff14:	62 c2 7d 48 7f df    	vpermt2ps zmm19,zmm0,zmm15
  9fff1a:	62 42 7d 48 7f e7    	vpermt2ps zmm28,zmm0,zmm15
  9fff20:	62 52 7d 48 7f cf    	vpermt2ps zmm9,zmm0,zmm15
  9fff26:	62 b1 7c 48 28 cb    	vmovaps zmm1,zmm19
  9fff2c:	62 92 2d 48 7f cc    	vpermt2ps zmm1,zmm10,zmm28
  9fff32:	62 f1 7c 48 28 e1    	vmovaps zmm4,zmm1
  9fff38:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x800],zmm1
  9fff3f:	20 
  9fff40:	62 81 7c 48 28 e5    	vmovaps zmm20,zmm29
  9fff46:	62 42 7d 48 7f ef    	vpermt2ps zmm29,zmm0,zmm15
  9fff4c:	62 d1 7c 48 28 f8    	vmovaps zmm7,zmm8
  9fff52:	62 52 7d 48 7f c7    	vpermt2ps zmm8,zmm0,zmm15
  9fff58:	62 31 7c 48 28 ee    	vmovaps zmm13,zmm22
  9fff5e:	62 12 2d 48 7f ea    	vpermt2ps zmm13,zmm10,zmm26
  9fff64:	62 41 7c 48 28 fc    	vmovaps zmm31,zmm12
  9fff6a:	62 52 7d 48 7f e7    	vpermt2ps zmm12,zmm0,zmm15
  9fff70:	62 51 7c 48 28 de    	vmovaps zmm11,zmm14
  9fff76:	62 52 2d 48 7f d9    	vpermt2ps zmm11,zmm10,zmm9
  9fff7c:	62 e1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm17
  9fff83:	09 
  9fff84:	62 c2 7d 48 7f cf    	vpermt2ps zmm17,zmm0,zmm15
  9fff8a:	62 91 7c 48 28 f5    	vmovaps zmm6,zmm29
  9fff90:	62 d2 2d 48 7f f0    	vpermt2ps zmm6,zmm10,zmm8
  9fff96:	62 e1 e5 48 15 c5    	vunpckhpd zmm16,zmm3,zmm5
  9fff9c:	62 e1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x740],zmm16
  9fffa3:	1d 
  9fffa4:	62 d1 95 48 15 cb    	vunpckhpd zmm1,zmm13,zmm11
  9fffaa:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x700],zmm1
  9fffb1:	1c 
  9fffb2:	62 f1 7c 48 28 1d 44 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff6c6e44]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  9fffb9:	6e 6c ff 
  9fffbc:	62 e2 65 48 7f c1    	vpermt2ps zmm16,zmm3,zmm1
  9fffc2:	62 d1 7c 48 28 ec    	vmovaps zmm5,zmm12
  9fffc8:	62 b2 2d 48 7f e9    	vpermt2ps zmm5,zmm10,zmm17
  9fffce:	62 e1 ed 48 15 d4    	vunpckhpd zmm18,zmm2,zmm4
  9fffd4:	62 e1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm18
  9fffdb:	1a 
  9fffdc:	62 f1 cd 48 15 c5    	vunpckhpd zmm0,zmm6,zmm5
  9fffe2:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm0
  9fffe9:	19 
  9fffea:	62 e2 65 48 7f d0    	vpermt2ps zmm18,zmm3,zmm0
  9ffff0:	62 f1 7c 48 10 41 04 	vmovups zmm0,ZMMWORD PTR [rcx+0x100]
  9ffff7:	62 f1 7c 48 10 49 05 	vmovups zmm1,ZMMWORD PTR [rcx+0x140]
  9ffffe:	62 f1 6c 40 59 d0    	vmulps zmm2,zmm18,zmm0
  a00004:	62 f2 7d 40 b8 d1    	vfmadd231ps zmm2,zmm16,zmm1
  a0000a:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm2
  a00011:	08 
  a00012:	62 f1 7c 40 59 c0    	vmulps zmm0,zmm16,zmm0
  a00018:	62 b2 75 48 bc c2    	vfnmadd231ps zmm0,zmm1,zmm18
  a0001e:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x780],zmm0
  a00025:	1e 
  a00026:	62 e1 7c 48 28 05 90 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff6c6f90]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a0002d:	6f 6c ff 
  a00030:	62 61 7c 48 28 4c 24 	vmovaps zmm25,ZMMWORD PTR [rsp+0x100]
  a00037:	04 
  a00038:	62 42 7d 40 7f cf    	vpermt2ps zmm25,zmm16,zmm15
  a0003e:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x1c0]
  a00045:	07 
  a00046:	62 d2 7d 40 7f cf    	vpermt2ps zmm1,zmm16,zmm15
  a0004c:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm1
  a00053:	07 
  a00054:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x40]
  a0005b:	01 
  a0005c:	62 d2 7d 40 7f e7    	vpermt2ps zmm4,zmm16,zmm15
  a00062:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x140]
  a00069:	05 
  a0006a:	62 d2 7d 40 7f d7    	vpermt2ps zmm2,zmm16,zmm15
  a00070:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm2
  a00077:	05 
  a00078:	62 c2 7d 40 7f ff    	vpermt2ps zmm23,zmm16,zmm15
  a0007e:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x480]
  a00085:	12 
  a00086:	62 d2 7d 40 7f df    	vpermt2ps zmm3,zmm16,zmm15
  a0008c:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm3
  a00093:	12 
  a00094:	62 42 7d 40 7f df    	vpermt2ps zmm27,zmm16,zmm15
  a0009a:	62 61 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm25
  a000a1:	04 
  a000a2:	62 f1 7c 48 28 05 94 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6c6e94]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a000a9:	6e 6c ff 
  a000ac:	62 62 7d 48 7f c9    	vpermt2ps zmm25,zmm0,zmm1
  a000b2:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm4
  a000b9:	10 
  a000ba:	62 f2 7d 48 7f e2    	vpermt2ps zmm4,zmm0,zmm2
  a000c0:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm4
  a000c7:	01 
  a000c8:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x380]
  a000cf:	0e 
  a000d0:	62 d2 7d 40 7f cf    	vpermt2ps zmm1,zmm16,zmm15
  a000d6:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm1
  a000dd:	0e 
  a000de:	62 e1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm23
  a000e5:	0f 
  a000e6:	62 e2 7d 48 7f fb    	vpermt2ps zmm23,zmm0,zmm3
  a000ec:	62 61 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm27
  a000f3:	03 
  a000f4:	62 62 7d 48 7f d9    	vpermt2ps zmm27,zmm0,zmm1
  a000fa:	62 f1 b5 40 15 d4    	vunpckhpd zmm2,zmm25,zmm4
  a00100:	62 91 c5 40 15 cb    	vunpckhpd zmm1,zmm23,zmm27
  a00106:	62 f1 7c 48 28 25 f0 	vmovaps zmm4,ZMMWORD PTR [rip+0xffffffffff6c6cf0]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a0010d:	6c 6c ff 
  a00110:	62 f2 5d 48 7f d1    	vpermt2ps zmm2,zmm4,zmm1
  a00116:	62 c2 7d 40 7f ef    	vpermt2ps zmm21,zmm16,zmm15
  a0011c:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x180]
  a00123:	06 
  a00124:	62 d2 7d 40 7f cf    	vpermt2ps zmm1,zmm16,zmm15
  a0012a:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm1
  a00131:	06 
  a00132:	62 42 7d 40 7f c7    	vpermt2ps zmm24,zmm16,zmm15
  a00138:	62 e1 7c 48 28 54 24 	vmovaps zmm18,ZMMWORD PTR [rsp+0x4c0]
  a0013f:	13 
  a00140:	62 c2 7d 40 7f d7    	vpermt2ps zmm18,zmm16,zmm15
  a00146:	62 e1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm18
  a0014d:	13 
  a0014e:	62 c2 7d 40 7f e7    	vpermt2ps zmm20,zmm16,zmm15
  a00154:	62 d2 7d 40 7f ff    	vpermt2ps zmm7,zmm16,zmm15
  a0015a:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x7c0],zmm7
  a00161:	1f 
  a00162:	62 42 7d 40 7f ff    	vpermt2ps zmm31,zmm16,zmm15
  a00168:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x240]
  a0016f:	09 
  a00170:	62 d2 7d 40 7f df    	vpermt2ps zmm3,zmm16,zmm15
  a00176:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm3
  a0017d:	09 
  a0017e:	62 e1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm21
  a00185:	0d 
  a00186:	62 e2 7d 48 7f e9    	vpermt2ps zmm21,zmm0,zmm1
  a0018c:	62 61 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm24
  a00193:	0c 
  a00194:	62 22 7d 48 7f c2    	vpermt2ps zmm24,zmm0,zmm18
  a0019a:	62 e1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm20
  a001a1:	0b 
  a001a2:	62 e2 7d 48 7f e7    	vpermt2ps zmm20,zmm0,zmm7
  a001a8:	62 61 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm31
  a001af:	0a 
  a001b0:	62 62 7d 48 7f fb    	vpermt2ps zmm31,zmm0,zmm3
  a001b6:	62 91 d5 40 15 c8    	vunpckhpd zmm1,zmm21,zmm24
  a001bc:	62 81 dd 40 15 c7    	vunpckhpd zmm16,zmm20,zmm31
  a001c2:	62 b2 5d 48 7f c8    	vpermt2ps zmm1,zmm4,zmm16
  a001c8:	62 e1 7c 48 10 41 1d 	vmovups zmm16,ZMMWORD PTR [rcx+0x740]
  a001cf:	62 e1 7c 48 10 51 1c 	vmovups zmm18,ZMMWORD PTR [rcx+0x700]
  a001d6:	62 b1 74 48 59 da    	vmulps zmm3,zmm1,zmm18
  a001dc:	62 b2 6d 48 b8 d8    	vfmadd231ps zmm3,zmm2,zmm16
  a001e2:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x6c0],zmm3
  a001e9:	1b 
  a001ea:	62 b1 6c 48 59 d2    	vmulps zmm2,zmm2,zmm18
  a001f0:	62 f2 7d 40 bc d1    	vfnmadd231ps zmm2,zmm16,zmm1
  a001f6:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x880],zmm2
  a001fd:	22 
  a001fe:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x440]
  a00205:	11 
  a00206:	62 f2 7d 48 7f 4c 24 	vpermt2ps zmm1,zmm0,ZMMWORD PTR [rsp+0x600]
  a0020d:	18 
  a0020e:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm1
  a00215:	11 
  a00216:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x80]
  a0021d:	02 
  a0021e:	62 f2 7d 48 7f 54 24 	vpermt2ps zmm2,zmm0,ZMMWORD PTR [rsp+0x540]
  a00225:	15 
  a00226:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm2
  a0022d:	02 
  a0022e:	62 82 7d 48 7f f2    	vpermt2ps zmm22,zmm0,zmm26
  a00234:	62 52 7d 48 7f f1    	vpermt2ps zmm14,zmm0,zmm9
  a0023a:	62 61 7c 48 28 54 24 	vmovaps zmm26,ZMMWORD PTR [rsp+0x500]
  a00241:	14 
  a00242:	62 02 7d 48 7f d6    	vpermt2ps zmm26,zmm0,zmm30
  a00248:	62 82 7d 48 7f dc    	vpermt2ps zmm19,zmm0,zmm28
  a0024e:	62 42 7d 48 7f e8    	vpermt2ps zmm29,zmm0,zmm8
  a00254:	62 32 7d 48 7f e1    	vpermt2ps zmm12,zmm0,zmm17
  a0025a:	62 f1 f5 48 15 fa    	vunpckhpd zmm7,zmm1,zmm2
  a00260:	62 c1 cd 40 15 d6    	vunpckhpd zmm18,zmm22,zmm14
  a00266:	62 f1 7c 48 28 cf    	vmovaps zmm1,zmm7
  a0026c:	62 71 7c 48 28 3d ca 	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff6c6bca]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a00273:	6b 6c ff 
  a00276:	62 b2 05 48 7f ca    	vpermt2ps zmm1,zmm15,zmm18
  a0027c:	62 b1 ad 40 15 db    	vunpckhpd zmm3,zmm26,zmm19
  a00282:	62 c1 95 40 15 c4    	vunpckhpd zmm16,zmm29,zmm12
  a00288:	62 f1 7c 48 28 e3    	vmovaps zmm4,zmm3
  a0028e:	62 b2 05 48 7f e0    	vpermt2ps zmm4,zmm15,zmm16
  a00294:	62 71 7c 48 10 41 0f 	vmovups zmm8,ZMMWORD PTR [rcx+0x3c0]
  a0029b:	62 71 7c 48 10 49 0e 	vmovups zmm9,ZMMWORD PTR [rcx+0x380]
  a002a2:	62 d1 5c 48 59 c1    	vmulps zmm0,zmm4,zmm9
  a002a8:	62 d2 75 48 b8 c0    	vfmadd231ps zmm0,zmm1,zmm8
  a002ae:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm0
  a002b5:	18 
  a002b6:	62 d1 74 48 59 c1    	vmulps zmm0,zmm1,zmm9
  a002bc:	62 f2 3d 48 bc c4    	vfnmadd231ps zmm0,zmm8,zmm4
  a002c2:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm0
  a002c9:	15 
  a002ca:	62 f1 b5 40 14 64 24 	vunpcklpd zmm4,zmm25,ZMMWORD PTR [rsp+0x40]
  a002d1:	01 
  a002d2:	62 91 c5 40 14 c3    	vunpcklpd zmm0,zmm23,zmm27
  a002d8:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm0
  a002df:	14 
  a002e0:	62 81 d5 40 14 f8    	vunpcklpd zmm23,zmm21,zmm24
  a002e6:	62 01 dd 40 14 c7    	vunpcklpd zmm24,zmm20,zmm31
  a002ec:	62 f1 7c 48 28 cc    	vmovaps zmm1,zmm4
  a002f2:	62 f2 05 48 7f c8    	vpermt2ps zmm1,zmm15,zmm0
  a002f8:	62 31 7c 48 28 c7    	vmovaps zmm8,zmm23
  a002fe:	62 12 05 48 7f c0    	vpermt2ps zmm8,zmm15,zmm24
  a00304:	62 71 7c 48 10 49 1b 	vmovups zmm9,ZMMWORD PTR [rcx+0x6c0]
  a0030b:	62 e1 7c 48 10 49 1a 	vmovups zmm17,ZMMWORD PTR [rcx+0x680]
  a00312:	62 21 3c 48 59 c9    	vmulps zmm25,zmm8,zmm17
  a00318:	62 42 75 48 b8 c9    	vfmadd231ps zmm25,zmm1,zmm9
  a0031e:	62 a1 74 48 59 e9    	vmulps zmm21,zmm1,zmm17
  a00324:	62 c2 35 48 bc e8    	vfnmadd231ps zmm21,zmm9,zmm8
  a0032a:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x5c0]
  a00331:	17 
  a00332:	62 f1 fd 48 14 4c 24 	vunpcklpd zmm1,zmm0,ZMMWORD PTR [rsp+0x580]
  a00339:	16 
  a0033a:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm1
  a00341:	17 
  a00342:	62 d1 95 48 14 c3    	vunpcklpd zmm0,zmm13,zmm11
  a00348:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm0
  a0034f:	16 
  a00350:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x840]
  a00357:	21 
  a00358:	62 f1 ed 48 14 54 24 	vunpcklpd zmm2,zmm2,ZMMWORD PTR [rsp+0x800]
  a0035f:	20 
  a00360:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm2
  a00367:	01 
  a00368:	62 61 cd 48 14 e5    	vunpcklpd zmm28,zmm6,zmm5
  a0036e:	62 f2 05 48 7f c8    	vpermt2ps zmm1,zmm15,zmm0
  a00374:	62 92 05 48 7f d4    	vpermt2ps zmm2,zmm15,zmm28
  a0037a:	62 f1 7c 48 10 69 02 	vmovups zmm5,ZMMWORD PTR [rcx+0x80]
  a00381:	62 f1 7c 48 10 71 03 	vmovups zmm6,ZMMWORD PTR [rcx+0xc0]
  a00388:	62 e1 6c 48 59 e5    	vmulps zmm20,zmm2,zmm5
  a0038e:	62 e2 75 48 b8 e6    	vfmadd231ps zmm20,zmm1,zmm6
  a00394:	62 71 74 48 59 c5    	vmulps zmm8,zmm1,zmm5
  a0039a:	62 72 4d 48 bc c2    	vfnmadd231ps zmm8,zmm6,zmm2
  a003a0:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x100]
  a003a7:	04 
  a003a8:	62 f2 2d 48 7f 54 24 	vpermt2ps zmm2,zmm10,ZMMWORD PTR [rsp+0x1c0]
  a003af:	07 
  a003b0:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm2
  a003b7:	04 
  a003b8:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x400]
  a003bf:	10 
  a003c0:	62 f2 2d 48 7f 4c 24 	vpermt2ps zmm1,zmm10,ZMMWORD PTR [rsp+0x140]
  a003c7:	05 
  a003c8:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm1
  a003cf:	10 
  a003d0:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x3c0]
  a003d7:	0f 
  a003d8:	62 f2 2d 48 7f 6c 24 	vpermt2ps zmm5,zmm10,ZMMWORD PTR [rsp+0x480]
  a003df:	12 
  a003e0:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm5
  a003e7:	0f 
  a003e8:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x340]
  a003ef:	0d 
  a003f0:	62 72 2d 48 7f 4c 24 	vpermt2ps zmm9,zmm10,ZMMWORD PTR [rsp+0x180]
  a003f7:	06 
  a003f8:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm9
  a003ff:	0d 
  a00400:	62 71 7c 48 28 5c 24 	vmovaps zmm11,ZMMWORD PTR [rsp+0x300]
  a00407:	0c 
  a00408:	62 72 2d 48 7f 5c 24 	vpermt2ps zmm11,zmm10,ZMMWORD PTR [rsp+0x4c0]
  a0040f:	13 
  a00410:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm11
  a00417:	0c 
  a00418:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0xc0]
  a0041f:	03 
  a00420:	62 f2 2d 48 7f 74 24 	vpermt2ps zmm6,zmm10,ZMMWORD PTR [rsp+0x380]
  a00427:	0e 
  a00428:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm6
  a0042f:	03 
  a00430:	62 e1 7c 48 28 4c 24 	vmovaps zmm17,ZMMWORD PTR [rsp+0x2c0]
  a00437:	0b 
  a00438:	62 e2 2d 48 7f 4c 24 	vpermt2ps zmm17,zmm10,ZMMWORD PTR [rsp+0x7c0]
  a0043f:	1f 
  a00440:	62 e1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm17
  a00447:	0b 
  a00448:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x280]
  a0044f:	0a 
  a00450:	62 f2 2d 48 7f 44 24 	vpermt2ps zmm0,zmm10,ZMMWORD PTR [rsp+0x240]
  a00457:	09 
  a00458:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm0
  a0045f:	0a 
  a00460:	62 f1 ed 48 14 d1    	vunpcklpd zmm2,zmm2,zmm1
  a00466:	62 61 d5 48 14 fe    	vunpcklpd zmm31,zmm5,zmm6
  a0046c:	62 f1 7c 48 28 ca    	vmovaps zmm1,zmm2
  a00472:	62 f1 7c 48 28 2d 84 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff6c6984]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a00479:	69 6c ff 
  a0047c:	62 92 55 48 7f cf    	vpermt2ps zmm1,zmm5,zmm31
  a00482:	62 51 b5 48 14 eb    	vunpcklpd zmm13,zmm9,zmm11
  a00488:	62 61 f5 40 14 f0    	vunpcklpd zmm30,zmm17,zmm0
  a0048e:	62 d1 7c 48 28 f5    	vmovaps zmm6,zmm13
  a00494:	62 92 55 48 7f f6    	vpermt2ps zmm6,zmm5,zmm30
  a0049a:	62 f1 7c 48 28 c5    	vmovaps zmm0,zmm5
  a004a0:	62 71 7c 48 10 59 11 	vmovups zmm11,ZMMWORD PTR [rcx+0x440]
  a004a7:	62 f1 7c 48 10 69 10 	vmovups zmm5,ZMMWORD PTR [rcx+0x400]
  a004ae:	62 71 4c 48 59 cd    	vmulps zmm9,zmm6,zmm5
  a004b4:	62 52 75 48 b8 cb    	vfmadd231ps zmm9,zmm1,zmm11
  a004ba:	62 f1 74 48 59 ed    	vmulps zmm5,zmm1,zmm5
  a004c0:	62 f2 25 48 bc ee    	vfnmadd231ps zmm5,zmm11,zmm6
  a004c6:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x440]
  a004cd:	11 
  a004ce:	62 71 f5 48 14 5c 24 	vunpcklpd zmm11,zmm1,ZMMWORD PTR [rsp+0x80]
  a004d5:	02 
  a004d6:	62 d1 cd 40 14 f6    	vunpcklpd zmm6,zmm22,zmm14
  a004dc:	62 a1 ad 40 14 cb    	vunpcklpd zmm17,zmm26,zmm19
  a004e2:	62 41 95 40 14 dc    	vunpcklpd zmm27,zmm29,zmm12
  a004e8:	62 51 7c 48 28 e3    	vmovaps zmm12,zmm11
  a004ee:	62 e1 7c 48 28 f0    	vmovaps zmm22,zmm0
  a004f4:	62 72 7d 48 7f de    	vpermt2ps zmm11,zmm0,zmm6
  a004fa:	62 31 7c 48 28 f1    	vmovaps zmm14,zmm17
  a00500:	62 82 7d 48 7f cb    	vpermt2ps zmm17,zmm0,zmm27
  a00506:	62 71 7c 48 10 51 09 	vmovups zmm10,ZMMWORD PTR [rcx+0x240]
  a0050d:	62 e1 7c 48 10 59 08 	vmovups zmm19,ZMMWORD PTR [rcx+0x200]
  a00514:	62 b1 74 40 59 cb    	vmulps zmm1,zmm17,zmm19
  a0051a:	62 d2 25 48 b8 ca    	vfmadd231ps zmm1,zmm11,zmm10
  a00520:	62 31 24 48 59 db    	vmulps zmm11,zmm11,zmm19
  a00526:	62 32 2d 48 bc d9    	vfnmadd231ps zmm11,zmm10,zmm17
  a0052c:	62 b2 7d 48 7f d8    	vpermt2ps zmm3,zmm0,zmm16
  a00532:	62 b2 7d 48 7f fa    	vpermt2ps zmm7,zmm0,zmm18
  a00538:	62 71 7c 48 10 51 0d 	vmovups zmm10,ZMMWORD PTR [rcx+0x340]
  a0053f:	62 e1 7c 48 10 41 0c 	vmovups zmm16,ZMMWORD PTR [rcx+0x300]
  a00546:	62 a1 44 48 59 c8    	vmulps zmm17,zmm7,zmm16
  a0054c:	62 c2 65 48 bc ca    	vfnmadd231ps zmm17,zmm3,zmm10
  a00552:	62 a1 64 48 59 d0    	vmulps zmm18,zmm3,zmm16
  a00558:	62 e2 2d 48 b8 d7    	vfmadd231ps zmm18,zmm10,zmm7
  a0055e:	62 e1 7c 48 28 44 24 	vmovaps zmm16,ZMMWORD PTR [rsp+0x680]
  a00565:	1a 
  a00566:	62 e2 05 48 7f 44 24 	vpermt2ps zmm16,zmm15,ZMMWORD PTR [rsp+0x640]
  a0056d:	19 
  a0056e:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x740]
  a00575:	1d 
  a00576:	62 72 05 48 7f 54 24 	vpermt2ps zmm10,zmm15,ZMMWORD PTR [rsp+0x700]
  a0057d:	1c 
  a0057e:	62 f1 7c 48 10 41 07 	vmovups zmm0,ZMMWORD PTR [rcx+0x1c0]
  a00585:	62 f1 7c 48 10 59 06 	vmovups zmm3,ZMMWORD PTR [rcx+0x180]
  a0058c:	62 61 2c 48 59 d3    	vmulps zmm26,zmm10,zmm3
  a00592:	62 62 7d 40 bc d0    	vfnmadd231ps zmm26,zmm16,zmm0
  a00598:	62 e1 7c 40 59 c3    	vmulps zmm16,zmm16,zmm3
  a0059e:	62 c2 7d 48 b8 c2    	vfmadd231ps zmm16,zmm0,zmm10
  a005a4:	62 31 7c 48 28 d6    	vmovaps zmm10,zmm22
  a005aa:	62 82 4d 40 7f f8    	vpermt2ps zmm23,zmm22,zmm24
  a005b0:	62 f2 4d 40 7f 64 24 	vpermt2ps zmm4,zmm22,ZMMWORD PTR [rsp+0x500]
  a005b7:	14 
  a005b8:	62 f1 7c 48 10 41 19 	vmovups zmm0,ZMMWORD PTR [rcx+0x640]
  a005bf:	62 f1 7c 48 10 59 18 	vmovups zmm3,ZMMWORD PTR [rcx+0x600]
  a005c6:	62 61 5c 48 59 eb    	vmulps zmm29,zmm4,zmm3
  a005cc:	62 62 45 40 bc e8    	vfnmadd231ps zmm29,zmm23,zmm0
  a005d2:	62 f1 44 40 59 fb    	vmulps zmm7,zmm23,zmm3
  a005d8:	62 f2 7d 48 b8 fc    	vfmadd231ps zmm7,zmm0,zmm4
  a005de:	62 72 05 48 7f e6    	vpermt2ps zmm12,zmm15,zmm6
  a005e4:	62 12 05 48 7f f3    	vpermt2ps zmm14,zmm15,zmm27
  a005ea:	62 f1 7c 48 10 41 0b 	vmovups zmm0,ZMMWORD PTR [rcx+0x2c0]
  a005f1:	62 f1 7c 48 10 59 0a 	vmovups zmm3,ZMMWORD PTR [rcx+0x280]
  a005f8:	62 f1 0c 48 59 f3    	vmulps zmm6,zmm14,zmm3
  a005fe:	62 f2 1d 48 b8 f0    	vfmadd231ps zmm6,zmm12,zmm0
  a00604:	62 f1 1c 48 59 db    	vmulps zmm3,zmm12,zmm3
  a0060a:	62 d2 7d 48 bc de    	vfnmadd231ps zmm3,zmm0,zmm14
  a00610:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm3
  a00617:	02 
  a00618:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x100]
  a0061f:	04 
  a00620:	62 f1 fd 48 15 44 24 	vunpckhpd zmm0,zmm0,ZMMWORD PTR [rsp+0x400]
  a00627:	10 
  a00628:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x3c0]
  a0062f:	0f 
  a00630:	62 f1 e5 48 15 5c 24 	vunpckhpd zmm3,zmm3,ZMMWORD PTR [rsp+0xc0]
  a00637:	03 
  a00638:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x340]
  a0063f:	0d 
  a00640:	62 71 dd 48 15 64 24 	vunpckhpd zmm12,zmm4,ZMMWORD PTR [rsp+0x300]
  a00647:	0c 
  a00648:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x2c0]
  a0064f:	0b 
  a00650:	62 f1 dd 48 15 64 24 	vunpckhpd zmm4,zmm4,ZMMWORD PTR [rsp+0x280]
  a00657:	0a 
  a00658:	62 71 7c 48 28 f0    	vmovaps zmm14,zmm0
  a0065e:	62 72 05 48 7f f3    	vpermt2ps zmm14,zmm15,zmm3
  a00664:	62 c1 7c 48 28 dc    	vmovaps zmm19,zmm12
  a0066a:	62 e2 05 48 7f dc    	vpermt2ps zmm19,zmm15,zmm4
  a00670:	62 e1 7c 48 10 71 17 	vmovups zmm22,ZMMWORD PTR [rcx+0x5c0]
  a00677:	62 e1 7c 48 10 79 16 	vmovups zmm23,ZMMWORD PTR [rcx+0x580]
  a0067e:	62 21 64 40 59 df    	vmulps zmm27,zmm19,zmm23
  a00684:	62 22 0d 48 b8 de    	vfmadd231ps zmm27,zmm14,zmm22
  a0068a:	62 31 0c 48 59 f7    	vmulps zmm14,zmm14,zmm23
  a00690:	62 32 4d 40 bc f3    	vfnmadd231ps zmm14,zmm22,zmm19
  a00696:	62 12 05 48 7f ee    	vpermt2ps zmm13,zmm15,zmm30
  a0069c:	62 92 05 48 7f d7    	vpermt2ps zmm2,zmm15,zmm31
  a006a2:	62 e1 7c 48 10 59 13 	vmovups zmm19,ZMMWORD PTR [rcx+0x4c0]
  a006a9:	62 e1 7c 48 10 71 12 	vmovups zmm22,ZMMWORD PTR [rcx+0x480]
  a006b0:	62 21 6c 48 59 fe    	vmulps zmm31,zmm2,zmm22
  a006b6:	62 22 15 48 bc fb    	vfnmadd231ps zmm31,zmm13,zmm19
  a006bc:	62 a1 14 48 59 fe    	vmulps zmm23,zmm13,zmm22
  a006c2:	62 e2 65 40 b8 fa    	vfmadd231ps zmm23,zmm19,zmm2
  a006c8:	62 f2 2d 48 7f c3    	vpermt2ps zmm0,zmm10,zmm3
  a006ce:	62 72 2d 48 7f e4    	vpermt2ps zmm12,zmm10,zmm4
  a006d4:	62 d1 7c 48 28 da    	vmovaps zmm3,zmm10
  a006da:	62 f1 7c 48 10 51 15 	vmovups zmm2,ZMMWORD PTR [rcx+0x540]
  a006e1:	62 f1 7c 48 10 61 14 	vmovups zmm4,ZMMWORD PTR [rcx+0x500]
  a006e8:	62 71 1c 48 59 d4    	vmulps zmm10,zmm12,zmm4
  a006ee:	62 72 7d 48 b8 d2    	vfmadd231ps zmm10,zmm0,zmm2
  a006f4:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm10
  a006fb:	06 
  a006fc:	62 f1 7c 48 59 c4    	vmulps zmm0,zmm0,zmm4
  a00702:	62 d2 6d 48 bc c4    	vfnmadd231ps zmm0,zmm2,zmm12
  a00708:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm0
  a0070f:	13 
  a00710:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x40]
  a00717:	01 
  a00718:	62 92 65 48 7f e4    	vpermt2ps zmm4,zmm3,zmm28
  a0071e:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm4
  a00725:	01 
  a00726:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x880]
  a0072d:	22 
  a0072e:	62 e1 0c 48 5c d8    	vsubps zmm19,zmm14,zmm0
  a00734:	62 f1 0c 48 58 c0    	vaddps zmm0,zmm14,zmm0
  a0073a:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm0
  a00741:	07 
  a00742:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x780]
  a00749:	1e 
  a0074a:	62 61 54 48 5c c0    	vsubps zmm24,zmm5,zmm0
  a00750:	62 f1 54 48 58 c0    	vaddps zmm0,zmm5,zmm0
  a00756:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm0
  a0075d:	05 
  a0075e:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x200]
  a00765:	08 
  a00766:	62 71 34 48 58 f8    	vaddps zmm15,zmm9,zmm0
  a0076c:	62 61 34 48 5c f0    	vsubps zmm30,zmm9,zmm0
  a00772:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x6c0]
  a00779:	1b 
  a0077a:	62 71 24 40 58 e0    	vaddps zmm12,zmm27,zmm0
  a00780:	62 61 24 40 5c d8    	vsubps zmm27,zmm27,zmm0
  a00786:	62 d1 3c 48 5c d3    	vsubps zmm2,zmm8,zmm11
  a0078c:	62 d1 3c 48 58 c3    	vaddps zmm0,zmm8,zmm11
  a00792:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm0
  a00799:	12 
  a0079a:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x540]
  a007a1:	15 
  a007a2:	62 71 54 40 5c c0    	vsubps zmm8,zmm21,zmm0
  a007a8:	62 f1 54 40 58 c0    	vaddps zmm0,zmm21,zmm0
  a007ae:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm0
  a007b5:	11 
  a007b6:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x600]
  a007bd:	18 
  a007be:	62 71 34 40 58 d8    	vaddps zmm11,zmm25,zmm0
  a007c4:	62 f1 34 40 5c c0    	vsubps zmm0,zmm25,zmm0
  a007ca:	62 71 5c 40 58 e9    	vaddps zmm13,zmm20,zmm1
  a007d0:	62 61 5c 40 5c c9    	vsubps zmm25,zmm20,zmm1
  a007d6:	62 81 74 40 5c ef    	vsubps zmm21,zmm17,zmm31
  a007dc:	62 11 74 40 58 f7    	vaddps zmm14,zmm17,zmm31
  a007e2:	62 91 2c 40 5c cd    	vsubps zmm1,zmm26,zmm29
  a007e8:	62 11 2c 40 58 d5    	vaddps zmm10,zmm26,zmm29
  a007ee:	62 e1 7c 40 58 f7    	vaddps zmm22,zmm16,zmm7
  a007f4:	62 e1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x700],zmm22
  a007fb:	1c 
  a007fc:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x5c0]
  a00803:	17 
  a00804:	62 72 65 48 7f 4c 24 	vpermt2ps zmm9,zmm3,ZMMWORD PTR [rsp+0x580]
  a0080b:	16 
  a0080c:	62 f2 7d 48 18 1d 42 	vbroadcastss zmm3,DWORD PTR [rip+0xffffffffff674f42]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a00813:	4f 67 ff 
  a00816:	62 e1 6c 48 59 e3    	vmulps zmm20,zmm2,zmm3
  a0081c:	62 e1 7c 40 5c cf    	vsubps zmm17,zmm16,zmm7
  a00822:	62 21 6c 40 58 ff    	vaddps zmm31,zmm18,zmm23
  a00828:	62 a1 6c 40 5c c7    	vsubps zmm16,zmm18,zmm23
  a0082e:	62 f2 7d 48 18 2d 68 	vbroadcastss zmm5,DWORD PTR [rip+0xffffffffff674b68]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a00835:	4b 67 ff 
  a00838:	62 e2 3d 48 b8 e5    	vfmadd231ps zmm20,zmm8,zmm5
  a0083e:	62 f1 34 40 59 fb    	vmulps zmm7,zmm25,zmm3
  a00844:	62 e1 3c 48 59 fb    	vmulps zmm23,zmm8,zmm3
  a0084a:	62 e2 55 48 bc fa    	vfnmadd231ps zmm23,zmm5,zmm2
  a00850:	62 61 64 40 59 d3    	vmulps zmm26,zmm19,zmm3
  a00856:	62 f2 7d 48 b8 fd    	vfmadd231ps zmm7,zmm0,zmm5
  a0085c:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm7
  a00863:	03 
  a00864:	62 71 7c 48 59 c3    	vmulps zmm8,zmm0,zmm3
  a0086a:	62 12 55 48 bc c1    	vfnmadd231ps zmm8,zmm5,zmm25
  a00870:	62 62 3d 40 b8 d5    	vfmadd231ps zmm26,zmm24,zmm5
  a00876:	62 f1 74 48 59 d3    	vmulps zmm2,zmm1,zmm3
  a0087c:	62 b2 55 48 bc d5    	vfnmadd231ps zmm2,zmm5,zmm21
  a00882:	62 e1 54 40 59 d3    	vmulps zmm18,zmm21,zmm3
  a00888:	62 e2 75 48 b8 d5    	vfmadd231ps zmm18,zmm1,zmm5
  a0088e:	62 61 24 40 59 eb    	vmulps zmm29,zmm27,zmm3
  a00894:	62 62 0d 40 b8 ed    	vfmadd231ps zmm29,zmm30,zmm5
  a0089a:	62 f1 3c 40 59 cb    	vmulps zmm1,zmm24,zmm3
  a008a0:	62 b2 55 48 bc cb    	vfnmadd231ps zmm1,zmm5,zmm19
  a008a6:	62 61 7c 40 59 e3    	vmulps zmm28,zmm16,zmm3
  a008ac:	62 62 75 40 b8 e5    	vfmadd231ps zmm28,zmm17,zmm5
  a008b2:	62 61 0c 40 59 cb    	vmulps zmm25,zmm30,zmm3
  a008b8:	62 02 55 48 bc cb    	vfnmadd231ps zmm25,zmm5,zmm27
  a008be:	62 f2 7d 48 18 3d 7c 	vbroadcastss zmm7,DWORD PTR [rip+0xffffffffff674d7c]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a008c5:	4d 67 ff 
  a008c8:	62 e1 7c 48 28 df    	vmovaps zmm19,zmm7
  a008ce:	62 e2 4d 40 ac dc    	vfnmadd213ps zmm19,zmm22,zmm4
  a008d4:	62 61 74 40 59 c3    	vmulps zmm24,zmm17,zmm3
  a008da:	62 f2 7d 48 18 25 04 	vbroadcastss zmm4,DWORD PTR [rip+0xffffffffff674e04]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a008e1:	4e 67 ff 
  a008e4:	62 e2 05 40 b8 dc    	vfmadd231ps zmm19,zmm31,zmm4
  a008ea:	62 01 7c 48 28 f7    	vmovaps zmm30,zmm31
  a008f0:	62 22 55 48 bc c0    	vfnmadd231ps zmm24,zmm5,zmm16
  a008f6:	62 b1 6c 48 58 c3    	vaddps zmm0,zmm2,zmm19
  a008fc:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  a00903:	04 
  a00904:	62 f1 64 40 5c c2    	vsubps zmm0,zmm19,zmm2
  a0090a:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm0
  a00911:	0f 
  a00912:	62 f1 7c 48 28 d7    	vmovaps zmm2,zmm7
  a00918:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm6
  a0091f:	19 
  a00920:	62 c1 7c 48 28 c7    	vmovaps zmm16,zmm15
  a00926:	62 71 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm15
  a0092d:	1a 
  a0092e:	62 f2 05 48 ac d6    	vfnmadd213ps zmm2,zmm15,zmm6
  a00934:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm12
  a0093b:	08 
  a0093c:	62 f2 1d 48 b8 d4    	vfmadd231ps zmm2,zmm12,zmm4
  a00942:	62 f1 6c 48 58 c1    	vaddps zmm0,zmm2,zmm1
  a00948:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x780],zmm0
  a0094f:	1e 
  a00950:	62 f1 6c 48 5c c1    	vsubps zmm0,zmm2,zmm1
  a00956:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm0
  a0095d:	0e 
  a0095e:	62 f1 7c 48 28 cf    	vmovaps zmm1,zmm7
  a00964:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x180]
  a0096b:	06 
  a0096c:	62 f2 25 48 ac cb    	vfnmadd213ps zmm1,zmm11,zmm3
  a00972:	62 c1 7c 48 28 f5    	vmovaps zmm22,zmm13
  a00978:	62 f2 15 48 b8 cc    	vfmadd231ps zmm1,zmm13,zmm4
  a0097e:	62 b1 74 48 58 d7    	vaddps zmm2,zmm1,zmm23
  a00984:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x740],zmm2
  a0098b:	1d 
  a0098c:	62 b1 74 48 5c cf    	vsubps zmm1,zmm1,zmm23
  a00992:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm1
  a00999:	0c 
  a0099a:	62 f1 7c 48 28 cf    	vmovaps zmm1,zmm7
  a009a0:	62 c1 7c 48 28 ea    	vmovaps zmm21,zmm10
  a009a6:	62 d2 2d 48 ac c9    	vfnmadd213ps zmm1,zmm10,zmm9
  a009ac:	62 51 7c 48 28 d6    	vmovaps zmm10,zmm14
  a009b2:	62 f2 0d 48 b8 cc    	vfmadd231ps zmm1,zmm14,zmm4
  a009b8:	62 91 74 48 5c d0    	vsubps zmm2,zmm1,zmm24
  a009be:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm2
  a009c5:	10 
  a009c6:	62 91 74 48 58 c8    	vaddps zmm1,zmm1,zmm24
  a009cc:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm1
  a009d3:	0d 
  a009d4:	62 f1 7c 48 28 cf    	vmovaps zmm1,zmm7
  a009da:	62 71 7c 48 28 74 24 	vmovaps zmm14,ZMMWORD PTR [rsp+0x4c0]
  a009e1:	13 
  a009e2:	62 e1 7c 48 28 4c 24 	vmovaps zmm17,ZMMWORD PTR [rsp+0x440]
  a009e9:	11 
  a009ea:	62 d2 75 40 ac ce    	vfnmadd213ps zmm1,zmm17,zmm14
  a009f0:	62 71 7c 48 28 7c 24 	vmovaps zmm15,ZMMWORD PTR [rsp+0x480]
  a009f7:	12 
  a009f8:	62 f2 05 48 b8 cc    	vfmadd231ps zmm1,zmm15,zmm4
  a009fe:	62 41 74 48 5c d8    	vsubps zmm27,zmm1,zmm8
  a00a04:	62 d1 74 48 58 c8    	vaddps zmm1,zmm1,zmm8
  a00a0a:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm1
  a00a11:	0b 
  a00a12:	62 f1 7c 48 28 cf    	vmovaps zmm1,zmm7
  a00a18:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x80]
  a00a1f:	02 
  a00a20:	62 61 7c 48 28 7c 24 	vmovaps zmm31,ZMMWORD PTR [rsp+0x140]
  a00a27:	05 
  a00a28:	62 f2 05 40 ac ca    	vfnmadd213ps zmm1,zmm31,zmm2
  a00a2e:	62 71 7c 48 28 6c 24 	vmovaps zmm13,ZMMWORD PTR [rsp+0x1c0]
  a00a35:	07 
  a00a36:	62 f2 15 48 b8 cc    	vfmadd231ps zmm1,zmm13,zmm4
  a00a3c:	62 81 74 48 5c d9    	vsubps zmm19,zmm1,zmm25
  a00a42:	62 91 74 48 58 c9    	vaddps zmm1,zmm1,zmm25
  a00a48:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm1
  a00a4f:	0a 
  a00a50:	62 f1 7c 48 28 cc    	vmovaps zmm1,zmm4
  a00a56:	62 f2 7d 40 a8 ce    	vfmadd213ps zmm1,zmm16,zmm6
  a00a5c:	62 f2 1d 48 bc cf    	vfnmadd231ps zmm1,zmm12,zmm7
  a00a62:	62 91 74 48 58 f2    	vaddps zmm6,zmm1,zmm26
  a00a68:	62 01 74 48 5c d2    	vsubps zmm26,zmm1,zmm26
  a00a6e:	62 f1 7c 48 28 cc    	vmovaps zmm1,zmm4
  a00a74:	62 f2 25 48 a8 cb    	vfmadd213ps zmm1,zmm11,zmm3
  a00a7a:	62 41 7c 48 28 cb    	vmovaps zmm25,zmm11
  a00a80:	62 e1 7c 48 28 fb    	vmovaps zmm23,zmm3
  a00a86:	62 f2 4d 40 bc cf    	vfnmadd231ps zmm1,zmm22,zmm7
  a00a8c:	62 b1 74 48 58 dc    	vaddps zmm3,zmm1,zmm20
  a00a92:	62 31 74 48 5c e4    	vsubps zmm12,zmm1,zmm20
  a00a98:	62 e1 7c 48 28 e4    	vmovaps zmm20,zmm4
  a00a9e:	62 71 7c 48 28 5c 24 	vmovaps zmm11,ZMMWORD PTR [rsp+0x40]
  a00aa5:	01 
  a00aa6:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x700]
  a00aad:	1c 
  a00aae:	62 c2 3d 48 a8 e3    	vfmadd213ps zmm20,zmm8,zmm11
  a00ab4:	62 e2 0d 40 bc e7    	vfnmadd231ps zmm20,zmm30,zmm7
  a00aba:	62 a1 6c 40 58 c4    	vaddps zmm16,zmm18,zmm20
  a00ac0:	62 b1 5c 40 5c c2    	vsubps zmm0,zmm20,zmm18
  a00ac6:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm0
  a00acd:	09 
  a00ace:	62 f1 7c 48 28 c4    	vmovaps zmm0,zmm4
  a00ad4:	62 f2 05 40 a8 c2    	vfmadd213ps zmm0,zmm31,zmm2
  a00ada:	62 e1 7c 48 28 e2    	vmovaps zmm20,zmm2
  a00ae0:	62 f2 15 48 bc c7    	vfnmadd231ps zmm0,zmm13,zmm7
  a00ae6:	62 91 7c 48 5c cd    	vsubps zmm1,zmm0,zmm29
  a00aec:	62 91 7c 48 58 ed    	vaddps zmm5,zmm0,zmm29
  a00af2:	62 61 7c 48 28 ec    	vmovaps zmm29,zmm4
  a00af8:	62 42 75 40 a8 ee    	vfmadd213ps zmm29,zmm17,zmm14
  a00afe:	62 62 05 48 bc ef    	vfnmadd231ps zmm29,zmm15,zmm7
  a00b04:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0xc0]
  a00b0b:	03 
  a00b0c:	62 f1 14 40 5c c2    	vsubps zmm0,zmm29,zmm2
  a00b12:	62 f1 14 40 58 d2    	vaddps zmm2,zmm29,zmm2
  a00b18:	62 e1 7c 48 28 d4    	vmovaps zmm18,zmm4
  a00b1e:	62 c2 55 40 a8 d1    	vfmadd213ps zmm18,zmm21,zmm9
  a00b24:	62 41 7c 48 28 c1    	vmovaps zmm24,zmm9
  a00b2a:	62 e2 2d 48 bc d7    	vfnmadd231ps zmm18,zmm10,zmm7
  a00b30:	62 11 6c 40 5c cc    	vsubps zmm9,zmm18,zmm28
  a00b36:	62 01 6c 40 58 ec    	vaddps zmm29,zmm18,zmm28
  a00b3c:	62 f1 74 48 5c e0    	vsubps zmm4,zmm1,zmm0
  a00b42:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm4
  a00b49:	03 
  a00b4a:	62 f1 74 48 58 f8    	vaddps zmm7,zmm1,zmm0
  a00b50:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x640]
  a00b57:	19 
  a00b58:	62 f1 7c 48 58 4c 24 	vaddps zmm1,zmm0,ZMMWORD PTR [rsp+0x680]
  a00b5f:	1a 
  a00b60:	62 f1 74 48 58 4c 24 	vaddps zmm1,zmm1,ZMMWORD PTR [rsp+0x200]
  a00b67:	08 
  a00b68:	62 f1 4c 48 58 e3    	vaddps zmm4,zmm6,zmm3
  a00b6e:	62 f1 4c 48 5c c3    	vsubps zmm0,zmm6,zmm3
  a00b74:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm0
  a00b7b:	08 
  a00b7c:	62 91 44 40 58 d9    	vaddps zmm3,zmm23,zmm25
  a00b82:	62 b1 64 48 58 f6    	vaddps zmm6,zmm3,zmm22
  a00b88:	62 81 64 40 5c d3    	vsubps zmm18,zmm19,zmm27
  a00b8e:	62 91 64 40 58 c3    	vaddps zmm0,zmm19,zmm27
  a00b94:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x6c0],zmm0
  a00b9b:	1b 
  a00b9c:	62 51 3c 48 58 c3    	vaddps zmm8,zmm8,zmm11
  a00ba2:	62 41 0c 40 58 f0    	vaddps zmm30,zmm30,zmm8
  a00ba8:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x780]
  a00baf:	1e 
  a00bb0:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x740]
  a00bb7:	1d 
  a00bb8:	62 61 7c 48 58 db    	vaddps zmm27,zmm0,zmm3
  a00bbe:	62 61 7c 48 5c e3    	vsubps zmm28,zmm0,zmm3
  a00bc4:	62 11 5c 40 58 df    	vaddps zmm11,zmm20,zmm31
  a00bca:	62 51 24 48 58 dd    	vaddps zmm11,zmm11,zmm13
  a00bd0:	62 f1 54 48 5c c2    	vsubps zmm0,zmm5,zmm2
  a00bd6:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm0
  a00bdd:	06 
  a00bde:	62 61 54 48 58 fa    	vaddps zmm31,zmm5,zmm2
  a00be4:	62 b1 0c 48 58 d1    	vaddps zmm2,zmm14,zmm17
  a00bea:	62 d1 6c 48 58 d7    	vaddps zmm2,zmm2,zmm15
  a00bf0:	62 d1 2c 40 58 ec    	vaddps zmm5,zmm26,zmm12
  a00bf6:	62 c1 2c 40 5c e4    	vsubps zmm20,zmm26,zmm12
  a00bfc:	62 71 24 48 5c ea    	vsubps zmm13,zmm11,zmm2
  a00c02:	62 61 24 48 58 d2    	vaddps zmm26,zmm11,zmm2
  a00c08:	62 b1 3c 40 58 d5    	vaddps zmm2,zmm24,zmm21
  a00c0e:	62 f2 7d 48 18 1d 48 	vbroadcastss zmm3,DWORD PTR [rip+0xffffffffff674848]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a00c15:	48 67 ff 
  a00c18:	62 71 7c 48 28 c3    	vmovaps zmm8,zmm3
  a00c1e:	62 51 6c 48 58 da    	vaddps zmm11,zmm2,zmm10
  a00c24:	62 71 74 48 58 f6    	vaddps zmm14,zmm1,zmm6
  a00c2a:	62 f1 74 48 5c f6    	vsubps zmm6,zmm1,zmm6
  a00c30:	62 32 5d 48 ac c0    	vfnmadd213ps zmm8,zmm4,zmm16
  a00c36:	62 f1 7c 48 28 cb    	vmovaps zmm1,zmm3
  a00c3c:	62 f1 7c 40 58 c4    	vaddps zmm0,zmm16,zmm4
  a00c42:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm0
  a00c49:	02 
  a00c4a:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x380]
  a00c51:	0e 
  a00c52:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x300]
  a00c59:	0c 
  a00c5a:	62 d1 7c 48 58 e2    	vaddps zmm4,zmm0,zmm10
  a00c60:	62 d2 45 48 ac c9    	vfnmadd213ps zmm1,zmm7,zmm9
  a00c66:	62 71 34 48 58 cf    	vaddps zmm9,zmm9,zmm7
  a00c6c:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x3c0]
  a00c73:	0f 
  a00c74:	62 f1 6c 48 58 fc    	vaddps zmm7,zmm2,zmm4
  a00c7a:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm7
  a00c81:	07 
  a00c82:	62 f2 65 48 ac e2    	vfnmadd213ps zmm4,zmm3,zmm2
  a00c88:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x2c0]
  a00c8f:	0b 
  a00c90:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x280]
  a00c97:	0a 
  a00c98:	62 e1 44 48 58 ea    	vaddps zmm21,zmm7,zmm2
  a00c9e:	62 61 44 48 5c ca    	vsubps zmm25,zmm7,zmm2
  a00ca4:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x340]
  a00cab:	0d 
  a00cac:	62 31 6c 48 58 e5    	vaddps zmm12,zmm2,zmm21
  a00cb2:	62 e2 65 48 ac ea    	vfnmadd213ps zmm21,zmm3,zmm2
  a00cb8:	62 f1 7c 48 28 fb    	vmovaps zmm7,zmm3
  a00cbe:	62 71 7c 48 28 7c 24 	vmovaps zmm15,ZMMWORD PTR [rsp+0x100]
  a00cc5:	04 
  a00cc6:	62 d2 25 40 ac ff    	vfnmadd213ps zmm7,zmm27,zmm15
  a00ccc:	62 c1 7c 48 5c da    	vsubps zmm19,zmm0,zmm10
  a00cd2:	62 e1 7c 48 28 fb    	vmovaps zmm23,zmm3
  a00cd8:	62 f2 7d 48 18 05 f2 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff6745f2]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a00cdf:	45 67 ff 
  a00ce2:	62 e1 6c 40 59 c8    	vmulps zmm17,zmm18,zmm0
  a00ce8:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x240]
  a00cef:	09 
  a00cf0:	62 e2 55 48 ac fa    	vfnmadd213ps zmm23,zmm5,zmm2
  a00cf6:	62 e1 6c 48 58 c5    	vaddps zmm16,zmm2,zmm5
  a00cfc:	62 b1 44 48 5c d1    	vsubps zmm2,zmm7,zmm17
  a00d02:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm2
  a00d09:	01 
  a00d0a:	62 b1 44 48 58 d1    	vaddps zmm2,zmm7,zmm17
  a00d10:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm2
  a00d17:	05 
  a00d18:	62 e1 7c 48 28 cb    	vmovaps zmm17,zmm3
  a00d1e:	62 82 05 40 ac cd    	vfnmadd213ps zmm17,zmm31,zmm29
  a00d24:	62 01 14 40 58 c7    	vaddps zmm24,zmm29,zmm31
  a00d2a:	62 f1 7c 48 28 eb    	vmovaps zmm5,zmm3
  a00d30:	62 e1 7c 48 28 74 24 	vmovaps zmm22,ZMMWORD PTR [rsp+0x400]
  a00d37:	10 
  a00d38:	62 61 7c 48 28 7c 24 	vmovaps zmm31,ZMMWORD PTR [rsp+0x6c0]
  a00d3f:	1b 
  a00d40:	62 b2 05 40 ac ee    	vfnmadd213ps zmm5,zmm31,zmm22
  a00d46:	62 61 1c 40 59 e8    	vmulps zmm29,zmm28,zmm0
  a00d4c:	62 91 54 48 58 fd    	vaddps zmm7,zmm5,zmm29
  a00d52:	62 01 54 48 5c ed    	vsubps zmm29,zmm5,zmm29
  a00d58:	62 f1 7c 48 28 eb    	vmovaps zmm5,zmm3
  a00d5e:	62 01 7c 48 28 e6    	vmovaps zmm28,zmm30
  a00d64:	62 92 0d 48 ac ee    	vfnmadd213ps zmm5,zmm14,zmm30
  a00d6a:	62 71 14 48 59 d0    	vmulps zmm10,zmm13,zmm0
  a00d70:	62 41 54 48 5c f2    	vsubps zmm30,zmm5,zmm10
  a00d76:	62 51 54 48 58 d2    	vaddps zmm10,zmm5,zmm10
  a00d7c:	62 d2 2d 40 ac db    	vfnmadd213ps zmm3,zmm26,zmm11
  a00d82:	62 f1 4c 48 59 f0    	vmulps zmm6,zmm6,zmm0
  a00d88:	62 f1 64 48 58 d6    	vaddps zmm2,zmm3,zmm6
  a00d8e:	62 f1 64 48 5c f6    	vsubps zmm6,zmm3,zmm6
  a00d94:	62 e1 7c 48 59 54 24 	vmulps zmm18,zmm0,ZMMWORD PTR [rsp+0xc0]
  a00d9b:	03 
  a00d9c:	62 b1 3c 48 58 ea    	vaddps zmm5,zmm8,zmm18
  a00da2:	62 b1 3c 48 5c da    	vsubps zmm3,zmm8,zmm18
  a00da8:	62 e1 7c 48 59 54 24 	vmulps zmm18,zmm0,ZMMWORD PTR [rsp+0x200]
  a00daf:	08 
  a00db0:	62 31 74 48 5c c2    	vsubps zmm8,zmm1,zmm18
  a00db6:	62 b1 74 48 58 ca    	vaddps zmm1,zmm1,zmm18
  a00dbc:	62 11 04 48 58 eb    	vaddps zmm13,zmm15,zmm27
  a00dc2:	62 11 4c 40 58 ff    	vaddps zmm15,zmm22,zmm31
  a00dc8:	62 e1 34 40 59 d0    	vmulps zmm18,zmm25,zmm0
  a00dce:	62 21 5c 48 5c ca    	vsubps zmm25,zmm4,zmm18
  a00dd4:	62 b1 5c 48 58 e2    	vaddps zmm4,zmm4,zmm18
  a00dda:	62 e1 64 40 59 d0    	vmulps zmm18,zmm19,zmm0
  a00de0:	62 a1 54 40 58 da    	vaddps zmm19,zmm21,zmm18
  a00de6:	62 a1 54 40 5c d2    	vsubps zmm18,zmm21,zmm18
  a00dec:	62 e1 7c 48 59 6c 24 	vmulps zmm21,zmm0,ZMMWORD PTR [rsp+0x180]
  a00df3:	06 
  a00df4:	62 51 1c 40 58 f6    	vaddps zmm14,zmm28,zmm14
  a00dfa:	62 21 44 40 58 dd    	vaddps zmm27,zmm23,zmm21
  a00e00:	62 a1 44 40 5c ed    	vsubps zmm21,zmm23,zmm21
  a00e06:	62 e1 5c 40 59 f0    	vmulps zmm22,zmm20,zmm0
  a00e0c:	62 11 24 48 58 da    	vaddps zmm11,zmm11,zmm26
  a00e12:	62 a1 74 40 5c fe    	vsubps zmm23,zmm17,zmm22
  a00e18:	62 a1 74 40 58 ce    	vaddps zmm17,zmm17,zmm22
  a00e1e:	62 f1 7c 48 28 05 58 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff68cf58]        # 8dd80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b230>
  a00e25:	cf 68 ff 
  a00e28:	62 52 7d 48 7f de    	vpermt2ps zmm11,zmm0,zmm14
  a00e2e:	62 71 7c 48 11 1c 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm11
  a00e35:	62 a2 7d 48 7f cd    	vpermt2ps zmm17,zmm0,zmm21
  a00e3b:	62 e1 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x40],zmm17
  a00e42:	01 
  a00e43:	62 e2 7d 48 7f d4    	vpermt2ps zmm18,zmm0,zmm4
  a00e49:	62 e1 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x80],zmm18
  a00e50:	02 
  a00e51:	62 52 7d 48 7f fd    	vpermt2ps zmm15,zmm0,zmm13
  a00e57:	62 71 7c 48 11 7c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xc0],zmm15
  a00e5e:	03 
  a00e5f:	62 f2 7d 48 7f cb    	vpermt2ps zmm1,zmm0,zmm3
  a00e65:	62 f1 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x100],zmm1
  a00e6c:	04 
  a00e6d:	62 d2 7d 48 7f f2    	vpermt2ps zmm6,zmm0,zmm10
  a00e73:	62 f1 7c 48 11 74 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x140],zmm6
  a00e7a:	05 
  a00e7b:	62 22 7d 48 7f c0    	vpermt2ps zmm24,zmm0,zmm16
  a00e81:	62 61 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x180],zmm24
  a00e88:	06 
  a00e89:	62 82 7d 48 7f d9    	vpermt2ps zmm19,zmm0,zmm25
  a00e8f:	62 e1 7c 48 11 5c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1c0],zmm19
  a00e96:	07 
  a00e97:	62 62 7d 48 7f 6c 24 	vpermt2ps zmm29,zmm0,ZMMWORD PTR [rsp+0x140]
  a00e9e:	05 
  a00e9f:	62 61 7c 48 11 6c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x200],zmm29
  a00ea6:	08 
  a00ea7:	62 72 7d 48 7f 4c 24 	vpermt2ps zmm9,zmm0,ZMMWORD PTR [rsp+0x80]
  a00eae:	02 
  a00eaf:	62 71 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x240],zmm9
  a00eb6:	09 
  a00eb7:	62 92 7d 48 7f d6    	vpermt2ps zmm2,zmm0,zmm30
  a00ebd:	62 f1 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x280],zmm2
  a00ec4:	0a 
  a00ec5:	62 82 7d 48 7f fb    	vpermt2ps zmm23,zmm0,zmm27
  a00ecb:	62 e1 7c 48 11 7c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x2c0],zmm23
  a00ed2:	0b 
  a00ed3:	62 72 7d 48 7f 64 24 	vpermt2ps zmm12,zmm0,ZMMWORD PTR [rsp+0x1c0]
  a00eda:	07 
  a00edb:	62 71 7c 48 11 64 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x300],zmm12
  a00ee2:	0c 
  a00ee3:	62 f2 7d 48 7f 7c 24 	vpermt2ps zmm7,zmm0,ZMMWORD PTR [rsp+0x40]
  a00eea:	01 
  a00eeb:	62 f1 7c 48 11 7c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x340],zmm7
  a00ef2:	0d 
  a00ef3:	62 72 7d 48 7f c5    	vpermt2ps zmm8,zmm0,zmm5
  a00ef9:	62 71 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x380],zmm8
  a00f00:	0e 
  a00f01:	48 81 c2 c0 03 00 00 	add    rdx,0x3c0
  a00f08:	48 39 d0             	cmp    rax,rdx
  a00f0b:	0f 85 df e9 ff ff    	jne    9ff8f0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x30>
  a00f11:	48 89 ec             	mov    rsp,rbp
  a00f14:	5d                   	pop    rbp
  a00f15:	c5 f8 77             	vzeroupper
  a00f18:	c3                   	ret
