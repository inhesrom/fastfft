
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a48c80 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a48c80:	55                   	push   rbp
  a48c81:	48 89 e5             	mov    rbp,rsp
  a48c84:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a48c88:	48 81 ec 00 0b 00 00 	sub    rsp,0xb00
  a48c8f:	48 69 c2 90 06 00 00 	imul   rax,rdx,0x690
  a48c96:	31 d2                	xor    edx,edx
  a48c98:	4c 8d 84 24 80 0a 00 	lea    r8,[rsp+0xa80]
  a48c9f:	00 
  a48ca0:	4c 8d 4c 24 38       	lea    r9,[rsp+0x38]
  a48ca5:	41 b2 7f             	mov    r10b,0x7f
  a48ca8:	c4 c1 7b 92 ca       	kmovd  k1,r10d
  a48cad:	0f 1f 00             	nop    DWORD PTR [rax]
  a48cb0:	c6 84 24 80 0a 00 00 	mov    BYTE PTR [rsp+0xa80],0x0
  a48cb7:	00 
  a48cb8:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
  a48cbd:	62 61 7c 48 10 34 17 	vmovups zmm30,ZMMWORD PTR [rdi+rdx*1]
  a48cc4:	62 61 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm30
  a48ccb:	07 
  a48ccc:	62 e1 7c 28 10 54 17 	vmovups ymm18,YMMWORD PTR [rdi+rdx*1+0x40]
  a48cd3:	02 
  a48cd4:	c5 f8 10 4c 17 60    	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x60]
  a48cda:	c4 e3 71 21 74 17 64 	vinsertps xmm6,xmm1,DWORD PTR [rdi+rdx*1+0x64],0x10
  a48ce1:	10 
  a48ce2:	c4 e2 79 18 7c 17 68 	vbroadcastss xmm7,DWORD PTR [rdi+rdx*1+0x68]
  a48ce9:	c5 fb 10 64 17 70    	vmovsd xmm4,QWORD PTR [rdi+rdx*1+0x70]
  a48cef:	62 e1 7c 48 10 b4 17 	vmovups zmm22,ZMMWORD PTR [rdi+rdx*1+0xf0]
  a48cf6:	f0 00 00 00 
  a48cfa:	62 e1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm22
  a48d01:	03 
  a48d02:	62 e1 7c 28 10 9c 17 	vmovups ymm19,YMMWORD PTR [rdi+rdx*1+0x130]
  a48d09:	30 01 00 00 
  a48d0d:	c5 f8 10 8c 17 50 01 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x150]
  a48d14:	00 00 
  a48d16:	c4 63 71 21 8c 17 54 	vinsertps xmm9,xmm1,DWORD PTR [rdi+rdx*1+0x154],0x10
  a48d1d:	01 00 00 10 
  a48d21:	c4 62 79 18 94 17 58 	vbroadcastss xmm10,DWORD PTR [rdi+rdx*1+0x158]
  a48d28:	01 00 00 
  a48d2b:	c5 fb 10 ac 17 60 01 	vmovsd xmm5,QWORD PTR [rdi+rdx*1+0x160]
  a48d32:	00 00 
  a48d34:	62 61 7c 48 10 ac 17 	vmovups zmm29,ZMMWORD PTR [rdi+rdx*1+0x5a0]
  a48d3b:	a0 05 00 00 
  a48d3f:	c5 fc 10 9c 17 e0 05 	vmovups ymm3,YMMWORD PTR [rdi+rdx*1+0x5e0]
  a48d46:	00 00 
  a48d48:	c5 f8 10 8c 17 00 06 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x600]
  a48d4f:	00 00 
  a48d51:	c4 63 71 21 9c 17 04 	vinsertps xmm11,xmm1,DWORD PTR [rdi+rdx*1+0x604],0x10
  a48d58:	06 00 00 10 
  a48d5c:	c4 62 79 18 a4 17 08 	vbroadcastss xmm12,DWORD PTR [rdi+rdx*1+0x608]
  a48d63:	06 00 00 
  a48d66:	c5 7b 10 84 17 10 06 	vmovsd xmm8,QWORD PTR [rdi+rdx*1+0x610]
  a48d6d:	00 00 
  a48d6f:	62 61 7c 48 10 bc 17 	vmovups zmm31,ZMMWORD PTR [rdi+rdx*1+0x1e0]
  a48d76:	e0 01 00 00 
  a48d7a:	62 61 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm31
  a48d81:	01 
  a48d82:	c5 fc 10 8c 17 20 02 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x220]
  a48d89:	00 00 
  a48d8b:	c5 78 10 ac 17 40 02 	vmovups xmm13,XMMWORD PTR [rdi+rdx*1+0x240]
  a48d92:	00 00 
  a48d94:	c4 e3 41 0c f6 03    	vblendps xmm6,xmm7,xmm6,0x3
  a48d9a:	c4 e3 11 21 bc 17 44 	vinsertps xmm7,xmm13,DWORD PTR [rdi+rdx*1+0x244],0x10
  a48da1:	02 00 00 10 
  a48da5:	c4 63 49 21 6c 17 6c 	vinsertps xmm13,xmm6,DWORD PTR [rdi+rdx*1+0x6c],0x30
  a48dac:	30 
  a48dad:	c4 62 79 18 b4 17 48 	vbroadcastss xmm14,DWORD PTR [rdi+rdx*1+0x248]
  a48db4:	02 00 00 
  a48db7:	c5 7b 10 bc 17 50 02 	vmovsd xmm15,QWORD PTR [rdi+rdx*1+0x250]
  a48dbe:	00 00 
  a48dc0:	c4 c3 29 0c f1 03    	vblendps xmm6,xmm10,xmm9,0x3
  a48dc6:	62 61 7c 48 10 8c 17 	vmovups zmm25,ZMMWORD PTR [rdi+rdx*1+0x4b0]
  a48dcd:	b0 04 00 00 
  a48dd1:	c4 63 49 21 94 17 5c 	vinsertps xmm10,xmm6,DWORD PTR [rdi+rdx*1+0x15c],0x30
  a48dd8:	01 00 00 30 
  a48ddc:	c5 f8 10 b4 17 10 05 	vmovups xmm6,XMMWORD PTR [rdi+rdx*1+0x510]
  a48de3:	00 00 
  a48de5:	c4 63 49 21 8c 17 14 	vinsertps xmm9,xmm6,DWORD PTR [rdi+rdx*1+0x514],0x10
  a48dec:	05 00 00 10 
  a48df0:	c4 c3 19 0c f3 03    	vblendps xmm6,xmm12,xmm11,0x3
  a48df6:	c4 62 79 18 9c 17 18 	vbroadcastss xmm11,DWORD PTR [rdi+rdx*1+0x518]
  a48dfd:	05 00 00 
  a48e00:	c4 63 49 21 a4 17 0c 	vinsertps xmm12,xmm6,DWORD PTR [rdi+rdx*1+0x60c],0x30
  a48e07:	06 00 00 30 
  a48e0b:	c5 fc 10 b4 17 f0 04 	vmovups ymm6,YMMWORD PTR [rdi+rdx*1+0x4f0]
  a48e12:	00 00 
  a48e14:	62 e1 ff 08 10 84 17 	vmovsd xmm16,QWORD PTR [rdi+rdx*1+0x520]
  a48e1b:	20 05 00 00 
  a48e1f:	c4 63 09 0c f7 03    	vblendps xmm14,xmm14,xmm7,0x3
  a48e25:	62 f1 7c 48 10 94 17 	vmovups zmm2,ZMMWORD PTR [rdi+rdx*1+0x2d0]
  a48e2c:	d0 02 00 00 
  a48e30:	c5 fc 10 bc 17 10 03 	vmovups ymm7,YMMWORD PTR [rdi+rdx*1+0x310]
  a48e37:	00 00 
  a48e39:	c4 63 09 21 b4 17 4c 	vinsertps xmm14,xmm14,DWORD PTR [rdi+rdx*1+0x24c],0x30
  a48e40:	02 00 00 30 
  a48e44:	62 e1 7c 08 10 4c 17 	vmovups xmm17,XMMWORD PTR [rdi+rdx*1+0x330]
  a48e4b:	33 
  a48e4c:	62 f3 75 00 21 84 17 	vinsertps xmm0,xmm17,DWORD PTR [rdi+rdx*1+0x334],0x10
  a48e53:	34 03 00 00 10 
  a48e58:	c4 43 21 0c c9 03    	vblendps xmm9,xmm11,xmm9,0x3
  a48e5e:	c4 62 79 18 9c 17 38 	vbroadcastss xmm11,DWORD PTR [rdi+rdx*1+0x338]
  a48e65:	03 00 00 
  a48e68:	62 e3 35 08 21 8c 17 	vinsertps xmm17,xmm9,DWORD PTR [rdi+rdx*1+0x51c],0x30
  a48e6f:	1c 05 00 00 30 
  a48e74:	c4 e3 21 0c c0 03    	vblendps xmm0,xmm11,xmm0,0x3
  a48e7a:	c5 7b 10 9c 17 40 03 	vmovsd xmm11,QWORD PTR [rdi+rdx*1+0x340]
  a48e81:	00 00 
  a48e83:	c4 e3 79 21 84 17 3c 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x33c],0x30
  a48e8a:	03 00 00 30 
  a48e8e:	62 e1 7c 48 28 e2    	vmovaps zmm20,zmm2
  a48e94:	62 61 7c 48 28 d2    	vmovaps zmm26,zmm2
  a48e9a:	62 e1 7c 48 10 6c 17 	vmovups zmm21,ZMMWORD PTR [rdi+rdx*1+0x3c0]
  a48ea1:	0f 
  a48ea2:	c5 7c 10 8c 17 00 04 	vmovups ymm9,YMMWORD PTR [rdi+rdx*1+0x400]
  a48ea9:	00 00 
  a48eab:	c4 e3 15 18 e4 01    	vinsertf128 ymm4,ymm13,xmm4,0x1
  a48eb1:	c5 78 10 ac 17 20 04 	vmovups xmm13,XMMWORD PTR [rdi+rdx*1+0x420]
  a48eb8:	00 00 
  a48eba:	c4 63 11 21 ac 17 24 	vinsertps xmm13,xmm13,DWORD PTR [rdi+rdx*1+0x424],0x10
  a48ec1:	04 00 00 10 
  a48ec5:	c4 e3 2d 18 ed 01    	vinsertf128 ymm5,ymm10,xmm5,0x1
  a48ecb:	c4 62 79 18 94 17 28 	vbroadcastss xmm10,DWORD PTR [rdi+rdx*1+0x428]
  a48ed2:	04 00 00 
  a48ed5:	c4 43 29 0c d5 03    	vblendps xmm10,xmm10,xmm13,0x3
  a48edb:	c4 43 1d 18 c0 01    	vinsertf128 ymm8,ymm12,xmm8,0x1
  a48ee1:	c4 63 29 21 94 17 2c 	vinsertps xmm10,xmm10,DWORD PTR [rdi+rdx*1+0x42c],0x30
  a48ee8:	04 00 00 30 
  a48eec:	c5 7b 10 a4 17 30 04 	vmovsd xmm12,QWORD PTR [rdi+rdx*1+0x430]
  a48ef3:	00 00 
  a48ef5:	c4 43 0d 18 ef 01    	vinsertf128 ymm13,ymm14,xmm15,0x1
  a48efb:	c5 78 10 b4 17 a8 03 	vmovups xmm14,XMMWORD PTR [rdi+rdx*1+0x3a8]
  a48f02:	00 00 
  a48f04:	c4 63 09 21 b4 17 ac 	vinsertps xmm14,xmm14,DWORD PTR [rdi+rdx*1+0x3ac],0x10
  a48f0b:	03 00 00 10 
  a48f0f:	62 33 75 20 18 f8 01 	vinsertf32x4 ymm15,ymm17,xmm16,0x1
  a48f16:	62 a1 7c 48 28 c5    	vmovaps zmm16,zmm21
  a48f1c:	c4 e2 79 18 94 17 b0 	vbroadcastss xmm2,DWORD PTR [rdi+rdx*1+0x3b0]
  a48f23:	03 00 00 
  a48f26:	c4 c3 7d 18 c3 01    	vinsertf128 ymm0,ymm0,xmm11,0x1
  a48f2c:	c4 c3 69 0c d6 03    	vblendps xmm2,xmm2,xmm14,0x3
  a48f32:	c4 e3 69 21 94 17 b4 	vinsertps xmm2,xmm2,DWORD PTR [rdi+rdx*1+0x3b4],0x30
  a48f39:	03 00 00 30 
  a48f3d:	c4 43 2d 18 d4 01    	vinsertf128 ymm10,ymm10,xmm12,0x1
  a48f43:	c5 7c 10 a4 17 88 03 	vmovups ymm12,YMMWORD PTR [rdi+rdx*1+0x388]
  a48f4a:	00 00 
  a48f4c:	c5 7b 10 9c 17 b8 03 	vmovsd xmm11,QWORD PTR [rdi+rdx*1+0x3b8]
  a48f53:	00 00 
  a48f55:	c4 c3 6d 18 d3 01    	vinsertf128 ymm2,ymm2,xmm11,0x1
  a48f5b:	62 f3 ed 40 1a e4 01 	vinsertf64x4 zmm4,zmm18,ymm4,0x1
  a48f62:	c5 78 10 9c 17 98 04 	vmovups xmm11,XMMWORD PTR [rdi+rdx*1+0x498]
  a48f69:	00 00 
  a48f6b:	c4 63 21 21 9c 17 9c 	vinsertps xmm11,xmm11,DWORD PTR [rdi+rdx*1+0x49c],0x10
  a48f72:	04 00 00 10 
  a48f76:	62 f3 e5 40 1a ed 01 	vinsertf64x4 zmm5,zmm19,ymm5,0x1
  a48f7d:	62 61 7c 48 10 84 17 	vmovups zmm24,ZMMWORD PTR [rdi+rdx*1+0x438]
  a48f84:	38 04 00 00 
  a48f88:	c4 62 79 18 b4 17 a0 	vbroadcastss xmm14,DWORD PTR [rdi+rdx*1+0x4a0]
  a48f8f:	04 00 00 
  a48f92:	62 53 e5 48 1a c0 01 	vinsertf64x4 zmm8,zmm3,ymm8,0x1
  a48f99:	c4 c3 09 0c db 03    	vblendps xmm3,xmm14,xmm11,0x3
  a48f9f:	c4 e3 61 21 9c 17 a4 	vinsertps xmm3,xmm3,DWORD PTR [rdi+rdx*1+0x4a4],0x30
  a48fa6:	04 00 00 30 
  a48faa:	62 d3 f5 48 1a cd 01 	vinsertf64x4 zmm1,zmm1,ymm13,0x1
  a48fb1:	c5 7c 10 ac 17 78 04 	vmovups ymm13,YMMWORD PTR [rdi+rdx*1+0x478]
  a48fb8:	00 00 
  a48fba:	c5 7b 10 9c 17 a8 04 	vmovsd xmm11,QWORD PTR [rdi+rdx*1+0x4a8]
  a48fc1:	00 00 
  a48fc3:	c4 43 65 18 f3 01    	vinsertf128 ymm14,ymm3,xmm11,0x1
  a48fc9:	62 d3 cd 48 1a f7 01 	vinsertf64x4 zmm6,zmm6,ymm15,0x1
  a48fd0:	62 11 7c 48 28 d8    	vmovaps zmm11,zmm24
  a48fd6:	62 e1 7c 48 10 94 17 	vmovups zmm18,ZMMWORD PTR [rdi+rdx*1+0x258]
  a48fdd:	58 02 00 00 
  a48fe1:	c5 7c 10 bc 17 98 02 	vmovups ymm15,YMMWORD PTR [rdi+rdx*1+0x298]
  a48fe8:	00 00 
  a48fea:	62 f3 c5 48 1a c0 01 	vinsertf64x4 zmm0,zmm7,ymm0,0x1
  a48ff1:	c5 f8 10 9c 17 b8 02 	vmovups xmm3,XMMWORD PTR [rdi+rdx*1+0x2b8]
  a48ff8:	00 00 
  a48ffa:	c4 e3 61 21 9c 17 bc 	vinsertps xmm3,xmm3,DWORD PTR [rdi+rdx*1+0x2bc],0x10
  a49001:	02 00 00 10 
  a49005:	62 53 b5 48 1a ca 01 	vinsertf64x4 zmm9,zmm9,ymm10,0x1
  a4900c:	c4 e2 79 18 bc 17 c0 	vbroadcastss xmm7,DWORD PTR [rdi+rdx*1+0x2c0]
  a49013:	02 00 00 
  a49016:	c4 e3 41 0c fb 03    	vblendps xmm7,xmm7,xmm3,0x3
  a4901c:	62 f3 9d 48 1a d2 01 	vinsertf64x4 zmm2,zmm12,ymm2,0x1
  a49023:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm2
  a4902a:	02 
  a4902b:	c4 e3 41 21 94 17 c4 	vinsertps xmm2,xmm7,DWORD PTR [rdi+rdx*1+0x2c4],0x30
  a49032:	02 00 00 30 
  a49036:	c5 fb 10 bc 17 c8 02 	vmovsd xmm7,QWORD PTR [rdi+rdx*1+0x2c8]
  a4903d:	00 00 
  a4903f:	62 53 95 48 1a ee 01 	vinsertf64x4 zmm13,zmm13,ymm14,0x1
  a49046:	c4 e3 6d 18 d7 01    	vinsertf128 ymm2,ymm2,xmm7,0x1
  a4904c:	62 f3 85 48 1a d2 01 	vinsertf64x4 zmm2,zmm15,ymm2,0x1
  a49053:	c5 fc 10 bc 17 68 05 	vmovups ymm7,YMMWORD PTR [rdi+rdx*1+0x568]
  a4905a:	00 00 
  a4905c:	62 f2 fd c9 88 dc    	vexpandpd zmm3{k1}{z},zmm4
  a49062:	62 f1 fd 48 7f 5c 24 	vmovdqa64 ZMMWORD PTR [rsp+0x180],zmm3
  a49069:	06 
  a4906a:	c5 f8 10 a4 17 88 05 	vmovups xmm4,XMMWORD PTR [rdi+rdx*1+0x588]
  a49071:	00 00 
  a49073:	c4 e3 59 21 a4 17 8c 	vinsertps xmm4,xmm4,DWORD PTR [rdi+rdx*1+0x58c],0x10
  a4907a:	05 00 00 10 
  a4907e:	62 72 fd c9 88 e5    	vexpandpd zmm12{k1}{z},zmm5
  a49084:	c4 e2 79 18 ac 17 90 	vbroadcastss xmm5,DWORD PTR [rdi+rdx*1+0x590]
  a4908b:	05 00 00 
  a4908e:	c4 e3 51 0c ec 03    	vblendps xmm5,xmm5,xmm4,0x3
  a49094:	62 d2 fd c9 88 e0    	vexpandpd zmm4{k1}{z},zmm8
  a4909a:	c4 e3 51 21 ac 17 94 	vinsertps xmm5,xmm5,DWORD PTR [rdi+rdx*1+0x594],0x30
  a490a1:	05 00 00 30 
  a490a5:	c5 7b 10 84 17 98 05 	vmovsd xmm8,QWORD PTR [rdi+rdx*1+0x598]
  a490ac:	00 00 
  a490ae:	62 f2 fd c9 88 c9    	vexpandpd zmm1{k1}{z},zmm1
  a490b4:	c4 c3 55 18 e8 01    	vinsertf128 ymm5,ymm5,xmm8,0x1
  a490ba:	62 f3 c5 48 1a ed 01 	vinsertf64x4 zmm5,zmm7,ymm5,0x1
  a490c1:	c5 7c 10 84 17 a8 01 	vmovups ymm8,YMMWORD PTR [rdi+rdx*1+0x1a8]
  a490c8:	00 00 
  a490ca:	62 72 fd c9 88 d6    	vexpandpd zmm10{k1}{z},zmm6
  a490d0:	c5 f8 10 b4 17 c8 01 	vmovups xmm6,XMMWORD PTR [rdi+rdx*1+0x1c8]
  a490d7:	00 00 
  a490d9:	c4 e3 49 21 b4 17 cc 	vinsertps xmm6,xmm6,DWORD PTR [rdi+rdx*1+0x1cc],0x10
  a490e0:	01 00 00 10 
  a490e4:	62 f2 fd c9 88 f8    	vexpandpd zmm7{k1}{z},zmm0
  a490ea:	c4 e2 79 18 84 17 d0 	vbroadcastss xmm0,DWORD PTR [rdi+rdx*1+0x1d0]
  a490f1:	01 00 00 
  a490f4:	c4 e3 79 0c c6 03    	vblendps xmm0,xmm0,xmm6,0x3
  a490fa:	62 d2 fd c9 88 f1    	vexpandpd zmm6{k1}{z},zmm9
  a49100:	c4 63 79 21 8c 17 d4 	vinsertps xmm9,xmm0,DWORD PTR [rdi+rdx*1+0x1d4],0x30
  a49107:	01 00 00 30 
  a4910b:	c5 7b 10 b4 17 d8 01 	vmovsd xmm14,QWORD PTR [rdi+rdx*1+0x1d8]
  a49112:	00 00 
  a49114:	62 c2 fd c9 88 fd    	vexpandpd zmm23{k1}{z},zmm13
  a4911a:	c5 78 10 ac 17 78 06 	vmovups xmm13,XMMWORD PTR [rdi+rdx*1+0x678]
  a49121:	00 00 
  a49123:	c4 63 11 21 ac 17 7c 	vinsertps xmm13,xmm13,DWORD PTR [rdi+rdx*1+0x67c],0x10
  a4912a:	06 00 00 10 
  a4912e:	62 e2 fd c9 88 da    	vexpandpd zmm19{k1}{z},zmm2
  a49134:	c4 43 35 18 ce 01    	vinsertf128 ymm9,ymm9,xmm14,0x1
  a4913a:	c4 62 79 18 b4 17 80 	vbroadcastss xmm14,DWORD PTR [rdi+rdx*1+0x680]
  a49141:	06 00 00 
  a49144:	62 f1 7c 48 28 15 32 	vmovaps zmm2,ZMMWORD PTR [rip+0xffffffffff649432]        # 92580 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1fa30>
  a4914b:	94 64 ff 
  a4914e:	62 62 6d 48 7f f3    	vpermt2ps zmm30,zmm2,zmm3
  a49154:	c4 43 09 0c ed 03    	vblendps xmm13,xmm14,xmm13,0x3
  a4915a:	c4 63 11 21 ac 17 84 	vinsertps xmm13,xmm13,DWORD PTR [rdi+rdx*1+0x684],0x30
  a49161:	06 00 00 30 
  a49165:	62 a1 7c 48 28 ce    	vmovaps zmm17,zmm22
  a4916b:	62 c2 6d 48 7f cc    	vpermt2ps zmm17,zmm2,zmm12
  a49171:	62 e1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm17
  a49178:	14 
  a49179:	62 53 bd 48 1a c1 01 	vinsertf64x4 zmm8,zmm8,ymm9,0x1
  a49180:	c5 7b 10 8c 17 88 06 	vmovsd xmm9,QWORD PTR [rdi+rdx*1+0x688]
  a49187:	00 00 
  a49189:	c4 43 15 18 c9 01    	vinsertf128 ymm9,ymm13,xmm9,0x1
  a4918f:	62 81 7c 48 28 f5    	vmovaps zmm22,zmm29
  a49195:	62 e2 6d 48 7f f4    	vpermt2ps zmm22,zmm2,zmm4
  a4919b:	62 e1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm22
  a491a2:	15 
  a491a3:	c5 78 10 ac 17 d8 00 	vmovups xmm13,XMMWORD PTR [rdi+rdx*1+0xd8]
  a491aa:	00 00 
  a491ac:	c4 63 11 21 ac 17 dc 	vinsertps xmm13,xmm13,DWORD PTR [rdi+rdx*1+0xdc],0x10
  a491b3:	00 00 00 10 
  a491b7:	62 62 6d 48 7f f9    	vpermt2ps zmm31,zmm2,zmm1
  a491bd:	62 61 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm31
  a491c4:	13 
  a491c5:	c4 62 79 18 b4 17 e0 	vbroadcastss xmm14,DWORD PTR [rdi+rdx*1+0xe0]
  a491cc:	00 00 00 
  a491cf:	c4 43 09 0c ed 03    	vblendps xmm13,xmm14,xmm13,0x3
  a491d5:	62 91 7c 48 28 c1    	vmovaps zmm0,zmm25
  a491db:	62 d2 6d 48 7f c2    	vpermt2ps zmm0,zmm2,zmm10
  a491e1:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm0
  a491e8:	08 
  a491e9:	c5 7c 10 b4 17 58 06 	vmovups ymm14,YMMWORD PTR [rdi+rdx*1+0x658]
  a491f0:	00 00 
  a491f2:	c4 63 11 21 ac 17 e4 	vinsertps xmm13,xmm13,DWORD PTR [rdi+rdx*1+0xe4],0x30
  a491f9:	00 00 00 30 
  a491fd:	62 e2 6d 48 7f e7    	vpermt2ps zmm20,zmm2,zmm7
  a49203:	62 e1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm20
  a4920a:	0e 
  a4920b:	62 53 8d 48 1a f9 01 	vinsertf64x4 zmm15,zmm14,ymm9,0x1
  a49212:	c5 7b 10 8c 17 e8 00 	vmovsd xmm9,QWORD PTR [rdi+rdx*1+0xe8]
  a49219:	00 00 
  a4921b:	c4 43 15 18 c9 01    	vinsertf128 ymm9,ymm13,xmm9,0x1
  a49221:	62 e2 6d 48 7f c6    	vpermt2ps zmm16,zmm2,zmm6
  a49227:	62 b1 7c 48 28 d8    	vmovaps zmm3,zmm16
  a4922d:	62 e1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm16
  a49234:	10 
  a49235:	c5 7c 10 ac 17 b8 00 	vmovups ymm13,YMMWORD PTR [rdi+rdx*1+0xb8]
  a4923c:	00 00 
  a4923e:	62 53 95 48 1a e9 01 	vinsertf64x4 zmm13,zmm13,ymm9,0x1
  a49245:	62 31 7c 48 28 ca    	vmovaps zmm9,zmm18
  a4924b:	62 32 6d 48 7f df    	vpermt2ps zmm11,zmm2,zmm23
  a49251:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm11
  a49258:	05 
  a49259:	62 71 7c 48 28 1d 5d 	vmovaps zmm11,ZMMWORD PTR [rip+0xffffffffff64935d]        # 925c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1fa70>
  a49260:	93 64 ff 
  a49263:	62 11 7c 48 28 f2    	vmovaps zmm14,zmm26
  a49269:	62 72 25 48 7f f7    	vpermt2ps zmm14,zmm11,zmm7
  a4926f:	62 f1 7c 48 10 bc 17 	vmovups zmm7,ZMMWORD PTR [rdi+rdx*1+0x528]
  a49276:	28 05 00 00 
  a4927a:	62 f2 fd c9 88 ed    	vexpandpd zmm5{k1}{z},zmm5
  a49280:	62 e2 25 48 7f ee    	vpermt2ps zmm21,zmm11,zmm6
  a49286:	62 61 7c 48 28 df    	vmovaps zmm27,zmm7
  a4928c:	62 61 7c 48 28 64 24 	vmovaps zmm28,ZMMWORD PTR [rsp+0xc0]
  a49293:	03 
  a49294:	62 42 25 48 7f e4    	vpermt2ps zmm28,zmm11,zmm12
  a4929a:	62 61 7c 48 10 94 17 	vmovups zmm26,ZMMWORD PTR [rdi+rdx*1+0x168]
  a492a1:	68 01 00 00 
  a492a5:	62 32 6d 48 7f cb    	vpermt2ps zmm9,zmm2,zmm19
  a492ab:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm9
  a492b2:	04 
  a492b3:	62 d2 fd c9 88 f0    	vexpandpd zmm6{k1}{z},zmm8
  a492b9:	62 62 25 48 7f ec    	vpermt2ps zmm29,zmm11,zmm4
  a492bf:	62 61 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm29
  a492c6:	11 
  a492c7:	62 e1 7c 48 10 84 17 	vmovups zmm16,ZMMWORD PTR [rdi+rdx*1+0x618]
  a492ce:	18 06 00 00 
  a492d2:	62 62 6d 48 7f dd    	vpermt2ps zmm27,zmm2,zmm5
  a492d8:	62 61 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm27
  a492df:	0a 
  a492e0:	62 d2 fd c9 88 e7    	vexpandpd zmm4{k1}{z},zmm15
  a492e6:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x40]
  a492ed:	01 
  a492ee:	62 72 25 48 7f c1    	vpermt2ps zmm8,zmm11,zmm1
  a492f4:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm8
  a492fb:	01 
  a492fc:	62 b1 7c 48 28 c8    	vmovaps zmm1,zmm16
  a49302:	62 f2 6d 48 7f cc    	vpermt2ps zmm1,zmm2,zmm4
  a49308:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm1
  a4930f:	09 
  a49310:	62 11 7c 48 28 c9    	vmovaps zmm9,zmm25
  a49316:	62 52 25 48 7f ca    	vpermt2ps zmm9,zmm11,zmm10
  a4931c:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm9
  a49323:	12 
  a49324:	62 71 7c 48 10 bc 17 	vmovups zmm15,ZMMWORD PTR [rdi+rdx*1+0x78]
  a4932b:	78 00 00 00 
  a4932f:	62 d2 fd c9 88 cd    	vexpandpd zmm1{k1}{z},zmm13
  a49335:	62 e2 25 48 7f c4    	vpermt2ps zmm16,zmm11,zmm4
  a4933b:	62 41 7c 48 28 df    	vmovaps zmm27,zmm15
  a49341:	62 62 6d 48 7f d9    	vpermt2ps zmm27,zmm2,zmm1
  a49347:	62 72 25 48 7f f9    	vpermt2ps zmm15,zmm11,zmm1
  a4934d:	62 b1 74 40 58 ce    	vaddps zmm1,zmm17,zmm22
  a49353:	62 22 25 48 7f c7    	vpermt2ps zmm24,zmm11,zmm23
  a49359:	62 61 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm24
  a49360:	0d 
  a49361:	62 11 7c 48 28 ea    	vmovaps zmm13,zmm26
  a49367:	62 a2 25 48 7f d3    	vpermt2ps zmm18,zmm11,zmm19
  a4936d:	62 e1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm18
  a49374:	0c 
  a49375:	62 71 0c 40 58 d1    	vaddps zmm10,zmm30,zmm1
  a4937b:	62 72 6d 48 7f ee    	vpermt2ps zmm13,zmm2,zmm6
  a49381:	62 71 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm13
  a49388:	1a 
  a49389:	62 f2 25 48 7f fd    	vpermt2ps zmm7,zmm11,zmm5
  a4938f:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm7
  a49396:	0b 
  a49397:	62 62 7d 48 18 0d 53 	vbroadcastss zmm25,DWORD PTR [rip+0xffffffffff62c253]        # 755f4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2aa4>
  a4939e:	c2 62 ff 
  a493a1:	62 81 7c 48 28 f1    	vmovaps zmm22,zmm25
  a493a7:	62 91 7c 48 28 e1    	vmovaps zmm4,zmm25
  a493ad:	62 82 75 48 a8 f6    	vfmadd213ps zmm22,zmm1,zmm30
  a493b3:	62 62 25 48 7f d6    	vpermt2ps zmm26,zmm11,zmm6
  a493b9:	62 f2 7d 48 18 2d 15 	vbroadcastss zmm5,DWORD PTR [rip+0xffffffffff62c215]        # 755d8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a88>
  a493c0:	c2 62 ff 
  a493c3:	62 61 7c 48 28 c5    	vmovaps zmm24,zmm5
  a493c9:	62 02 75 48 ac c6    	vfnmadd213ps zmm24,zmm1,zmm30
  a493cf:	62 e2 7d 48 18 3d f3 	vbroadcastss zmm23,DWORD PTR [rip+0xffffffffff62bef3]        # 752cc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x277c>
  a493d6:	be 62 ff 
  a493d9:	62 62 45 40 bc f1    	vfnmadd231ps zmm30,zmm23,zmm1
  a493df:	62 f1 04 40 58 c8    	vaddps zmm1,zmm31,zmm0
  a493e5:	62 f1 2c 48 58 c1    	vaddps zmm0,zmm10,zmm1
  a493eb:	62 a2 75 48 bc f7    	vfnmadd231ps zmm22,zmm1,zmm23
  a493f1:	62 02 75 48 b8 c1    	vfmadd231ps zmm24,zmm1,zmm25
  a493f7:	62 62 55 48 bc f1    	vfnmadd231ps zmm30,zmm5,zmm1
  a493fd:	62 f1 5c 40 58 cb    	vaddps zmm1,zmm20,zmm3
  a49403:	62 e1 7c 48 58 e1    	vaddps zmm20,zmm0,zmm1
  a49409:	62 e2 75 48 bc f5    	vfnmadd231ps zmm22,zmm1,zmm5
  a4940f:	62 22 75 48 bc c7    	vfnmadd231ps zmm24,zmm1,zmm23
  a49415:	62 62 35 40 b8 f1    	vfmadd231ps zmm30,zmm25,zmm1
  a4941b:	62 91 1c 40 5c c5    	vsubps zmm0,zmm28,zmm29
  a49421:	62 d1 3c 48 5c c9    	vsubps zmm1,zmm8,zmm9
  a49427:	62 e2 7d 48 18 0d 5f 	vbroadcastss zmm17,DWORD PTR [rip+0xffffffffff62c05f]        # 75490 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2940>
  a4942e:	c0 62 ff 
  a49431:	62 21 74 48 59 f9    	vmulps zmm31,zmm1,zmm17
  a49437:	62 62 7d 48 18 0d 1f 	vbroadcastss zmm25,DWORD PTR [rip+0xffffffffff62c21f]        # 75660 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b10>
  a4943e:	c2 62 ff 
  a49441:	62 02 7d 48 b8 f9    	vfmadd231ps zmm31,zmm0,zmm25
  a49447:	62 e2 7d 48 18 15 97 	vbroadcastss zmm18,DWORD PTR [rip+0xffffffffff62c197]        # 755e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a98>
  a4944e:	c1 62 ff 
  a49451:	62 b1 7c 48 59 fa    	vmulps zmm7,zmm0,zmm18
  a49457:	62 92 75 48 bc f9    	vfnmadd231ps zmm7,zmm1,zmm25
  a4945d:	62 a1 7c 48 59 d9    	vmulps zmm19,zmm0,zmm17
  a49463:	62 e2 6d 40 bc d9    	vfnmadd231ps zmm19,zmm18,zmm1
  a49469:	62 b1 0c 48 5c c5    	vsubps zmm0,zmm14,zmm21
  a4946f:	62 21 7c 48 28 ed    	vmovaps zmm29,zmm21
  a49475:	62 c1 7c 48 28 ee    	vmovaps zmm21,zmm14
  a4947b:	62 22 7d 48 b8 fa    	vfmadd231ps zmm31,zmm0,zmm18
  a49481:	62 b2 7d 48 b8 f9    	vfmadd231ps zmm7,zmm0,zmm17
  a49487:	62 e2 35 40 bc d8    	vfnmadd231ps zmm19,zmm25,zmm0
  a4948d:	62 72 fd c9 88 74 24 	vexpandpd zmm14{k1}{z},ZMMWORD PTR [rsp+0x80]
  a49494:	10 
  a49495:	62 f1 7c 48 10 b4 17 	vmovups zmm6,ZMMWORD PTR [rdi+rdx*1+0x348]
  a4949c:	48 03 00 00 
  a494a0:	62 f1 7c 48 28 de    	vmovaps zmm3,zmm6
  a494a6:	62 d2 6d 48 7f de    	vpermt2ps zmm3,zmm2,zmm14
  a494ac:	62 f1 7c 48 28 cc    	vmovaps zmm1,zmm4
  a494b2:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x100]
  a494b9:	04 
  a494ba:	62 f1 7c 48 58 44 24 	vaddps zmm0,zmm0,ZMMWORD PTR [rsp+0x140]
  a494c1:	05 
  a494c2:	62 f2 7d 48 a8 e3    	vfmadd213ps zmm4,zmm0,zmm3
  a494c8:	62 71 7c 48 28 d5    	vmovaps zmm10,zmm5
  a494ce:	62 72 7d 48 ac d3    	vfnmadd213ps zmm10,zmm0,zmm3
  a494d4:	62 f1 64 48 58 d0    	vaddps zmm2,zmm3,zmm0
  a494da:	62 f2 45 40 bc d8    	vfnmadd231ps zmm3,zmm23,zmm0
  a494e0:	62 f1 14 48 58 44 24 	vaddps zmm0,zmm13,ZMMWORD PTR [rsp+0x280]
  a494e7:	0a 
  a494e8:	62 f1 6c 48 58 d0    	vaddps zmm2,zmm2,zmm0
  a494ee:	62 b2 7d 48 bc e7    	vfnmadd231ps zmm4,zmm0,zmm23
  a494f4:	62 72 7d 48 b8 d1    	vfmadd231ps zmm10,zmm0,zmm1
  a494fa:	62 f2 55 48 bc d8    	vfnmadd231ps zmm3,zmm5,zmm0
  a49500:	62 f1 24 40 58 44 24 	vaddps zmm0,zmm27,ZMMWORD PTR [rsp+0x240]
  a49507:	09 
  a49508:	62 71 6c 48 58 c0    	vaddps zmm8,zmm2,zmm0
  a4950e:	62 f2 7d 48 bc e5    	vfnmadd231ps zmm4,zmm0,zmm5
  a49514:	62 32 7d 48 bc d7    	vfnmadd231ps zmm10,zmm0,zmm23
  a4951a:	62 f2 75 48 b8 d8    	vfmadd231ps zmm3,zmm1,zmm0
  a49520:	62 e1 7c 48 28 f9    	vmovaps zmm23,zmm1
  a49526:	62 71 7c 48 28 64 24 	vmovaps zmm12,ZMMWORD PTR [rsp+0x340]
  a4952d:	0d 
  a4952e:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x300]
  a49535:	0c 
  a49536:	62 d1 1c 48 5c c1    	vsubps zmm0,zmm12,zmm9
  a4953c:	62 71 7c 48 28 6c 24 	vmovaps zmm13,ZMMWORD PTR [rsp+0x2c0]
  a49543:	0b 
  a49544:	62 91 14 48 5c ca    	vsubps zmm1,zmm13,zmm26
  a4954a:	62 b1 74 48 59 e9    	vmulps zmm5,zmm1,zmm17
  a49550:	62 92 7d 48 b8 e9    	vfmadd231ps zmm5,zmm0,zmm25
  a49556:	62 b1 7c 48 59 d2    	vmulps zmm2,zmm0,zmm18
  a4955c:	62 92 75 48 bc d1    	vfnmadd231ps zmm2,zmm1,zmm25
  a49562:	62 b1 7c 48 59 c1    	vmulps zmm0,zmm0,zmm17
  a49568:	62 f2 6d 40 bc c1    	vfnmadd231ps zmm0,zmm18,zmm1
  a4956e:	62 d1 7c 40 5c cf    	vsubps zmm1,zmm16,zmm15
  a49574:	62 b2 75 48 b8 ea    	vfmadd231ps zmm5,zmm1,zmm18
  a4957a:	62 b2 75 48 b8 d1    	vfmadd231ps zmm2,zmm1,zmm17
  a49580:	62 f2 35 40 bc c1    	vfnmadd231ps zmm0,zmm25,zmm1
  a49586:	62 d1 5c 40 58 c8    	vaddps zmm1,zmm20,zmm8
  a4958c:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm1
  a49593:	03 
  a49594:	62 d1 5c 40 5c c8    	vsubps zmm1,zmm20,zmm8
  a4959a:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm1
  a495a1:	02 
  a495a2:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x1c0]
  a495a9:	07 
  a495aa:	62 72 25 48 7f 44 24 	vpermt2ps zmm8,zmm11,ZMMWORD PTR [rsp+0x180]
  a495b1:	06 
  a495b2:	62 b1 0c 40 5c cb    	vsubps zmm1,zmm30,zmm19
  a495b8:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x6c0],zmm1
  a495bf:	1b 
  a495c0:	62 b1 0c 40 58 cb    	vaddps zmm1,zmm30,zmm19
  a495c6:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm1
  a495cd:	07 
  a495ce:	62 61 1c 40 58 64 24 	vaddps zmm28,zmm28,ZMMWORD PTR [rsp+0x440]
  a495d5:	11 
  a495d6:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x40]
  a495dd:	01 
  a495de:	62 61 74 48 58 74 24 	vaddps zmm30,zmm1,ZMMWORD PTR [rsp+0x480]
  a495e5:	12 
  a495e6:	62 f1 64 48 5c c8    	vsubps zmm1,zmm3,zmm0
  a495ec:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm1
  a495f3:	0f 
  a495f4:	62 f1 64 48 58 c0    	vaddps zmm0,zmm3,zmm0
  a495fa:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm0
  a49601:	12 
  a49602:	62 01 54 40 58 ed    	vaddps zmm29,zmm21,zmm29
  a49608:	62 d2 25 48 7f f6    	vpermt2ps zmm6,zmm11,zmm14
  a4960e:	62 f1 3c 40 5c c7    	vsubps zmm0,zmm24,zmm7
  a49614:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm0
  a4961b:	19 
  a4961c:	62 f1 3c 40 58 c7    	vaddps zmm0,zmm24,zmm7
  a49622:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm0
  a49629:	06 
  a4962a:	62 41 1c 48 58 c1    	vaddps zmm24,zmm12,zmm9
  a49630:	62 11 14 48 58 da    	vaddps zmm11,zmm13,zmm26
  a49636:	62 f1 2c 48 5c c2    	vsubps zmm0,zmm10,zmm2
  a4963c:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm0
  a49643:	0c 
  a49644:	62 f1 2c 48 58 c2    	vaddps zmm0,zmm10,zmm2
  a4964a:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm0
  a49651:	11 
  a49652:	62 c1 7c 40 58 c7    	vaddps zmm16,zmm16,zmm15
  a49658:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x380]
  a4965f:	0e 
  a49660:	62 f1 7c 48 5c 5c 24 	vsubps zmm3,zmm0,ZMMWORD PTR [rsp+0x400]
  a49667:	10 
  a49668:	62 11 4c 40 58 cf    	vaddps zmm9,zmm22,zmm31
  a4966e:	62 81 4c 40 5c df    	vsubps zmm19,zmm22,zmm31
  a49674:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x500]
  a4967b:	14 
  a4967c:	62 f1 7c 48 5c 4c 24 	vsubps zmm1,zmm0,ZMMWORD PTR [rsp+0x540]
  a49683:	15 
  a49684:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x4c0]
  a4968b:	13 
  a4968c:	62 f1 7c 48 5c 7c 24 	vsubps zmm7,zmm0,ZMMWORD PTR [rsp+0x200]
  a49693:	08 
  a49694:	62 e1 5c 48 58 ed    	vaddps zmm21,zmm4,zmm5
  a4969a:	62 71 5c 48 5c d5    	vsubps zmm10,zmm4,zmm5
  a496a0:	62 91 3c 48 58 c4    	vaddps zmm0,zmm8,zmm28
  a496a6:	62 51 7c 48 28 f8    	vmovaps zmm15,zmm8
  a496ac:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x240]
  a496b3:	09 
  a496b4:	62 11 6c 48 5c eb    	vsubps zmm13,zmm2,zmm27
  a496ba:	62 91 4c 48 58 d0    	vaddps zmm2,zmm6,zmm24
  a496c0:	62 91 7c 48 58 e6    	vaddps zmm4,zmm0,zmm30
  a496c6:	62 c1 6c 48 58 f3    	vaddps zmm22,zmm2,zmm11
  a496cc:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x140]
  a496d3:	05 
  a496d4:	62 71 7c 48 5c 44 24 	vsubps zmm8,zmm0,ZMMWORD PTR [rsp+0x100]
  a496db:	04 
  a496dc:	62 b1 44 48 59 c1    	vmulps zmm0,zmm7,zmm17
  a496e2:	62 92 75 48 b8 c1    	vfmadd231ps zmm0,zmm1,zmm25
  a496e8:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x280]
  a496ef:	0a 
  a496f0:	62 71 6c 48 5c 74 24 	vsubps zmm14,zmm2,ZMMWORD PTR [rsp+0x680]
  a496f7:	1a 
  a496f8:	62 b1 74 48 59 ea    	vmulps zmm5,zmm1,zmm18
  a496fe:	62 92 45 48 bc e9    	vfnmadd231ps zmm5,zmm7,zmm25
  a49704:	62 91 5c 48 58 d5    	vaddps zmm2,zmm4,zmm29
  a4970a:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm2
  a49711:	13 
  a49712:	62 b1 74 48 59 e1    	vmulps zmm4,zmm1,zmm17
  a49718:	62 f2 6d 40 bc e7    	vfnmadd231ps zmm4,zmm18,zmm7
  a4971e:	62 b1 7c 48 28 d7    	vmovaps zmm2,zmm23
  a49724:	62 b1 7c 48 28 ff    	vmovaps zmm7,zmm23
  a4972a:	62 b1 4c 40 58 c8    	vaddps zmm1,zmm22,zmm16
  a49730:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm1
  a49737:	10 
  a49738:	62 c1 7c 48 28 f7    	vmovaps zmm22,zmm15
  a4973e:	62 d2 1d 40 a8 ff    	vfmadd213ps zmm7,zmm28,zmm15
  a49744:	62 e2 7d 48 18 3d 7e 	vbroadcastss zmm23,DWORD PTR [rip+0xffffffffff62bb7e]        # 752cc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x277c>
  a4974b:	bb 62 ff 
  a4974e:	62 b2 0d 40 bc ff    	vfnmadd231ps zmm7,zmm30,zmm23
  a49754:	62 b2 65 48 b8 c2    	vfmadd231ps zmm0,zmm3,zmm18
  a4975a:	62 b2 65 48 b8 e9    	vfmadd231ps zmm5,zmm3,zmm17
  a49760:	62 f2 35 40 bc e3    	vfnmadd231ps zmm4,zmm25,zmm3
  a49766:	62 f2 7d 48 18 0d 68 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff62be68]        # 755d8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a88>
  a4976d:	be 62 ff 
  a49770:	62 71 7c 48 28 f9    	vmovaps zmm15,zmm1
  a49776:	62 32 1d 40 ac fe    	vfnmadd213ps zmm15,zmm28,zmm22
  a4977c:	62 f2 15 40 bc f9    	vfnmadd231ps zmm7,zmm29,zmm1
  a49782:	62 61 7c 48 28 d1    	vmovaps zmm26,zmm1
  a49788:	62 82 45 40 bc f4    	vfnmadd231ps zmm22,zmm23,zmm28
  a4978e:	62 b1 0c 48 59 d9    	vmulps zmm3,zmm14,zmm17
  a49794:	62 92 3d 48 b8 d9    	vfmadd231ps zmm3,zmm8,zmm25
  a4979a:	62 b2 15 48 b8 da    	vfmadd231ps zmm3,zmm13,zmm18
  a497a0:	62 72 0d 40 b8 fa    	vfmadd231ps zmm15,zmm30,zmm2
  a497a6:	62 82 75 48 bc f6    	vfnmadd231ps zmm22,zmm1,zmm30
  a497ac:	62 a1 3c 48 59 e2    	vmulps zmm20,zmm8,zmm18
  a497b2:	62 32 15 40 bc ff    	vfnmadd231ps zmm15,zmm29,zmm23
  a497b8:	62 b1 7c 48 28 cf    	vmovaps zmm1,zmm23
  a497be:	62 82 0d 48 bc e1    	vfnmadd231ps zmm20,zmm14,zmm25
  a497c4:	62 a2 15 48 b8 e1    	vfmadd231ps zmm20,zmm13,zmm17
  a497ca:	62 82 6d 48 b8 f5    	vfmadd231ps zmm22,zmm2,zmm29
  a497d0:	62 e1 7c 48 28 7c 24 	vmovaps zmm23,ZMMWORD PTR [rsp+0xc0]
  a497d7:	03 
  a497d8:	62 31 3c 48 59 c1    	vmulps zmm8,zmm8,zmm17
  a497de:	62 52 6d 40 bc c6    	vfnmadd231ps zmm8,zmm18,zmm14
  a497e4:	62 52 35 40 bc c5    	vfnmadd231ps zmm8,zmm25,zmm13
  a497ea:	62 21 34 48 58 e5    	vaddps zmm28,zmm9,zmm21
  a497f0:	62 61 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm28
  a497f7:	0e 
  a497f8:	62 71 7c 48 28 ea    	vmovaps zmm13,zmm2
  a497fe:	62 72 3d 40 a8 ee    	vfmadd213ps zmm13,zmm24,zmm6
  a49804:	62 71 7c 48 28 e1    	vmovaps zmm12,zmm1
  a4980a:	62 72 25 48 bc e9    	vfnmadd231ps zmm13,zmm11,zmm1
  a49810:	62 b1 34 48 5c cd    	vsubps zmm1,zmm9,zmm21
  a49816:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm1
  a4981d:	01 
  a4981e:	62 11 7c 48 28 f2    	vmovaps zmm14,zmm26
  a49824:	62 72 3d 40 ac f6    	vfnmadd213ps zmm14,zmm24,zmm6
  a4982a:	62 92 1d 48 bc f0    	vfnmadd231ps zmm6,zmm12,zmm24
  a49830:	62 e1 7c 48 28 4c 24 	vmovaps zmm17,ZMMWORD PTR [rsp+0x640]
  a49837:	19 
  a49838:	62 e1 7c 48 28 54 24 	vmovaps zmm18,ZMMWORD PTR [rsp+0x300]
  a4983f:	0c 
  a49840:	62 b1 74 40 58 ca    	vaddps zmm1,zmm17,zmm18
  a49846:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm1
  a4984d:	05 
  a4984e:	62 12 7d 40 bc ea    	vfnmadd231ps zmm13,zmm16,zmm26
  a49854:	62 72 25 48 b8 f2    	vfmadd231ps zmm14,zmm11,zmm2
  a4985a:	62 d2 2d 40 bc f3    	vfnmadd231ps zmm6,zmm26,zmm11
  a49860:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x6c0]
  a49867:	1b 
  a49868:	62 e1 7c 48 28 6c 24 	vmovaps zmm21,ZMMWORD PTR [rsp+0x3c0]
  a4986f:	0f 
  a49870:	62 21 34 48 58 cd    	vaddps zmm25,zmm9,zmm21
  a49876:	62 61 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm25
  a4987d:	1a 
  a4987e:	62 52 7d 40 bc f4    	vfnmadd231ps zmm14,zmm16,zmm12
  a49884:	62 b2 6d 48 b8 f0    	vfmadd231ps zmm6,zmm2,zmm16
  a4988a:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x1c0]
  a49891:	07 
  a49892:	62 71 7c 48 28 5c 24 	vmovaps zmm11,ZMMWORD PTR [rsp+0x480]
  a49899:	12 
  a4989a:	62 41 6c 48 58 eb    	vaddps zmm29,zmm2,zmm11
  a498a0:	62 61 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm29
  a498a7:	0a 
  a498a8:	62 d1 6c 48 5c d3    	vsubps zmm2,zmm2,zmm11
  a498ae:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm2
  a498b5:	08 
  a498b6:	62 31 5c 48 58 de    	vaddps zmm11,zmm4,zmm22
  a498bc:	62 f1 4c 40 5c e4    	vsubps zmm4,zmm22,zmm4
  a498c2:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x180]
  a498c9:	06 
  a498ca:	62 e1 7c 48 28 44 24 	vmovaps zmm16,ZMMWORD PTR [rsp+0x440]
  a498d1:	11 
  a498d2:	62 21 6c 48 58 c0    	vaddps zmm24,zmm2,zmm16
  a498d8:	62 61 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm24
  a498df:	0d 
  a498e0:	62 a1 34 48 5c f5    	vsubps zmm22,zmm9,zmm21
  a498e6:	62 e1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm22
  a498ed:	07 
  a498ee:	62 71 3c 48 58 e6    	vaddps zmm12,zmm8,zmm6
  a498f4:	62 d1 4c 48 5c f0    	vsubps zmm6,zmm6,zmm8
  a498fa:	62 c1 64 40 58 ea    	vaddps zmm21,zmm19,zmm10
  a49900:	62 e1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm21
  a49907:	04 
  a49908:	62 41 64 40 5c f2    	vsubps zmm30,zmm19,zmm10
  a4990e:	62 61 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm30
  a49915:	0b 
  a49916:	62 51 54 48 58 c7    	vaddps zmm8,zmm5,zmm15
  a4991c:	62 f1 04 48 5c ed    	vsubps zmm5,zmm15,zmm5
  a49922:	62 71 44 48 5c c8    	vsubps zmm9,zmm7,zmm0
  a49928:	62 a1 6c 48 5c d8    	vsubps zmm19,zmm2,zmm16
  a4992e:	62 e1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm19
  a49935:	06 
  a49936:	62 51 5c 40 58 d6    	vaddps zmm10,zmm20,zmm14
  a4993c:	62 31 0c 48 5c f4    	vsubps zmm14,zmm14,zmm20
  a49942:	62 71 14 48 5c fb    	vsubps zmm15,zmm13,zmm3
  a49948:	62 a1 74 40 5c e2    	vsubps zmm20,zmm17,zmm18
  a4994e:	62 c1 34 48 58 cf    	vaddps zmm17,zmm9,zmm15
  a49954:	62 e1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm17
  a4995b:	17 
  a4995c:	62 f1 7c 48 58 c7    	vaddps zmm0,zmm0,zmm7
  a49962:	62 c1 24 48 58 c4    	vaddps zmm16,zmm11,zmm12
  a49968:	62 e1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm16
  a4996f:	16 
  a49970:	62 f1 7c 48 28 3d 46 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff67d646]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a49977:	d6 67 ff 
  a4997a:	62 a1 7c 48 28 d7    	vmovaps zmm18,zmm23
  a49980:	62 82 45 48 7f d4    	vpermt2ps zmm18,zmm7,zmm28
  a49986:	62 e1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm18
  a4998d:	19 
  a4998e:	62 d1 64 48 58 dd    	vaddps zmm3,zmm3,zmm13
  a49994:	62 71 5c 48 58 ee    	vaddps zmm13,zmm4,zmm6
  a4999a:	62 71 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm13
  a499a1:	15 
  a499a2:	62 51 34 48 5c ff    	vsubps zmm15,zmm9,zmm15
  a499a8:	62 71 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm15
  a499af:	14 
  a499b0:	62 f1 5c 48 5c f6    	vsubps zmm6,zmm4,zmm6
  a499b6:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x740],zmm6
  a499bd:	1d 
  a499be:	62 41 54 48 58 d6    	vaddps zmm26,zmm5,zmm14
  a499c4:	62 61 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x780],zmm26
  a499cb:	1e 
  a499cc:	62 d1 24 48 5c d4    	vsubps zmm2,zmm11,zmm12
  a499d2:	62 92 45 48 7f c9    	vpermt2ps zmm1,zmm7,zmm25
  a499d8:	62 71 7c 48 28 c9    	vmovaps zmm9,zmm1
  a499de:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm1
  a499e5:	0c 
  a499e6:	62 f1 7c 48 58 cb    	vaddps zmm1,zmm0,zmm3
  a499ec:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm1
  a499f3:	09 
  a499f4:	62 61 7c 48 5c fb    	vsubps zmm31,zmm0,zmm3
  a499fa:	62 41 54 48 5c e6    	vsubps zmm28,zmm5,zmm14
  a49a00:	62 b1 7c 48 28 c2    	vmovaps zmm0,zmm18
  a49a06:	62 51 3c 48 58 e2    	vaddps zmm12,zmm8,zmm10
  a49a0c:	62 c1 3c 48 5c fa    	vsubps zmm23,zmm8,zmm10
  a49a12:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x4c0]
  a49a19:	13 
  a49a1a:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x400]
  a49a21:	10 
  a49a22:	62 61 64 48 58 dc    	vaddps zmm27,zmm3,zmm4
  a49a28:	62 e1 7c 48 28 15 ce 	vmovaps zmm18,ZMMWORD PTR [rip+0xffffffffff67d4ce]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a49a2f:	d4 67 ff 
  a49a32:	62 d2 6d 40 7f c1    	vpermt2ps zmm0,zmm18,zmm9
  a49a38:	62 f1 7c 48 28 e8    	vmovaps zmm5,zmm0
  a49a3e:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x940],zmm0
  a49a45:	25 
  a49a46:	62 f1 64 48 5c e4    	vsubps zmm4,zmm3,zmm4
  a49a4c:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm4
  a49a53:	18 
  a49a54:	62 11 7c 48 28 f5    	vmovaps zmm14,zmm29
  a49a5a:	62 12 45 48 7f f0    	vpermt2ps zmm14,zmm7,zmm24
  a49a60:	62 b1 7c 48 28 c5    	vmovaps zmm0,zmm21
  a49a66:	c5 e0 57 db          	vxorps xmm3,xmm3,xmm3
  a49a6a:	62 f2 45 48 7f c3    	vpermt2ps zmm0,zmm7,zmm3
  a49a70:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x840],zmm0
  a49a77:	21 
  a49a78:	62 d1 7c 48 28 de    	vmovaps zmm3,zmm14
  a49a7e:	62 f2 6d 40 7f d8    	vpermt2ps zmm3,zmm18,zmm0
  a49a84:	62 61 7c 48 28 eb    	vmovaps zmm29,zmm3
  a49a8a:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x900],zmm3
  a49a91:	24 
  a49a92:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x40]
  a49a99:	01 
  a49a9a:	62 72 45 48 7f 4c 24 	vpermt2ps zmm9,zmm7,ZMMWORD PTR [rsp+0x200]
  a49aa1:	08 
  a49aa2:	62 82 45 48 7f f6    	vpermt2ps zmm22,zmm7,zmm30
  a49aa8:	62 e1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x800],zmm22
  a49aaf:	20 
  a49ab0:	62 d1 7c 48 28 d9    	vmovaps zmm3,zmm9
  a49ab6:	62 b2 6d 40 7f de    	vpermt2ps zmm3,zmm18,zmm22
  a49abc:	62 e1 7c 48 28 f3    	vmovaps zmm22,zmm3
  a49ac2:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x8c0],zmm3
  a49ac9:	23 
  a49aca:	62 21 7c 48 28 f3    	vmovaps zmm30,zmm19
  a49ad0:	62 22 45 48 7f f4    	vpermt2ps zmm30,zmm7,zmm20
  a49ad6:	62 21 7c 48 28 cc    	vmovaps zmm25,zmm20
  a49adc:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x80]
  a49ae3:	02 
  a49ae4:	c5 e0 57 db          	vxorps xmm3,xmm3,xmm3
  a49ae8:	62 f2 45 48 7f c3    	vpermt2ps zmm0,zmm7,zmm3
  a49aee:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x7c0],zmm0
  a49af5:	1f 
  a49af6:	62 81 7c 48 28 de    	vmovaps zmm19,zmm30
  a49afc:	62 e2 6d 40 7f d8    	vpermt2ps zmm19,zmm18,zmm0
  a49b02:	62 11 7c 48 28 db    	vmovaps zmm11,zmm27
  a49b08:	62 32 45 48 7f d9    	vpermt2ps zmm11,zmm7,zmm17
  a49b0e:	62 d1 7c 48 28 c4    	vmovaps zmm0,zmm12
  a49b14:	62 b2 45 48 7f c0    	vpermt2ps zmm0,zmm7,zmm16
  a49b1a:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x700],zmm0
  a49b21:	1c 
  a49b22:	62 c1 7c 48 28 eb    	vmovaps zmm21,zmm11
  a49b28:	62 e2 6d 40 7f e8    	vpermt2ps zmm21,zmm18,zmm0
  a49b2e:	62 51 7c 48 28 c5    	vmovaps zmm8,zmm13
  a49b34:	62 12 45 48 7f c2    	vpermt2ps zmm8,zmm7,zmm26
  a49b3a:	62 f1 7c 48 28 c1    	vmovaps zmm0,zmm1
  a49b40:	62 f2 45 48 7f c3    	vpermt2ps zmm0,zmm7,zmm3
  a49b46:	c4 41 10 57 ed       	vxorps xmm13,xmm13,xmm13
  a49b4b:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xa40],zmm0
  a49b52:	29 
  a49b53:	62 c1 7c 48 28 e0    	vmovaps zmm20,zmm8
  a49b59:	62 e2 6d 40 7f e0    	vpermt2ps zmm20,zmm18,zmm0
  a49b5f:	62 51 7c 48 28 d7    	vmovaps zmm10,zmm15
  a49b65:	62 72 45 48 7f d6    	vpermt2ps zmm10,zmm7,zmm6
  a49b6b:	62 f1 7c 48 28 c2    	vmovaps zmm0,zmm2
  a49b71:	62 61 7c 48 28 d2    	vmovaps zmm26,zmm2
  a49b77:	62 92 45 48 7f c7    	vpermt2ps zmm0,zmm7,zmm31
  a49b7d:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x980],zmm0
  a49b84:	26 
  a49b85:	62 51 7c 48 28 fa    	vmovaps zmm15,zmm10
  a49b8b:	62 72 6d 40 7f f8    	vpermt2ps zmm15,zmm18,zmm0
  a49b91:	62 01 7c 48 28 c4    	vmovaps zmm24,zmm28
  a49b97:	62 91 7c 48 28 f4    	vmovaps zmm6,zmm28
  a49b9d:	62 22 45 48 7f c7    	vpermt2ps zmm24,zmm7,zmm23
  a49ba3:	62 61 7c 48 28 e4    	vmovaps zmm28,zmm4
  a49ba9:	62 42 45 48 7f e5    	vpermt2ps zmm28,zmm7,zmm13
  a49baf:	62 91 7c 48 28 e0    	vmovaps zmm4,zmm24
  a49bb5:	62 92 6d 40 7f e4    	vpermt2ps zmm4,zmm18,zmm28
  a49bbb:	62 91 d5 48 14 dd    	vunpcklpd zmm3,zmm5,zmm29
  a49bc1:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm3
  a49bc8:	13 
  a49bc9:	62 b1 cd 40 14 d3    	vunpcklpd zmm2,zmm22,zmm19
  a49bcf:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x6c0],zmm2
  a49bd6:	1b 
  a49bd7:	62 f1 7c 48 28 0d 1f 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff67d21f]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a49bde:	d2 67 ff 
  a49be1:	62 f2 75 48 7f da    	vpermt2ps zmm3,zmm1,zmm2
  a49be7:	62 b1 d5 40 14 ec    	vunpcklpd zmm5,zmm21,zmm20
  a49bed:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm5
  a49bf4:	12 
  a49bf5:	62 f1 85 48 14 c4    	vunpcklpd zmm0,zmm15,zmm4
  a49bfb:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm0
  a49c02:	11 
  a49c03:	62 f2 75 48 7f e8    	vpermt2ps zmm5,zmm1,zmm0
  a49c09:	62 f1 7c 48 10 79 10 	vmovups zmm7,ZMMWORD PTR [rcx+0x400]
  a49c10:	62 f1 54 48 59 c7    	vmulps zmm0,zmm5,zmm7
  a49c16:	62 f1 64 48 59 cf    	vmulps zmm1,zmm3,zmm7
  a49c1c:	62 f1 7c 48 10 79 11 	vmovups zmm7,ZMMWORD PTR [rcx+0x440]
  a49c23:	62 f2 65 48 b8 c7    	vfmadd231ps zmm0,zmm3,zmm7
  a49c29:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm0
  a49c30:	10 
  a49c31:	62 f2 45 48 bc cd    	vfnmadd231ps zmm1,zmm7,zmm5
  a49c37:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm1
  a49c3e:	0f 
  a49c3f:	62 f1 7c 48 28 0d 37 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff67d337]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a49c46:	d3 67 ff 
  a49c49:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0xc0]
  a49c50:	03 
  a49c51:	62 f2 75 48 7f 5c 24 	vpermt2ps zmm3,zmm1,ZMMWORD PTR [rsp+0x380]
  a49c58:	0e 
  a49c59:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm3
  a49c60:	03 
  a49c61:	62 e1 7c 48 28 74 24 	vmovaps zmm22,ZMMWORD PTR [rsp+0x140]
  a49c68:	05 
  a49c69:	62 e2 75 48 7f 74 24 	vpermt2ps zmm22,zmm1,ZMMWORD PTR [rsp+0x680]
  a49c70:	1a 
  a49c71:	62 e1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm22
  a49c78:	05 
  a49c79:	62 e1 7c 48 28 44 24 	vmovaps zmm16,ZMMWORD PTR [rsp+0x280]
  a49c80:	0a 
  a49c81:	62 e2 75 48 7f 44 24 	vpermt2ps zmm16,zmm1,ZMMWORD PTR [rsp+0x340]
  a49c88:	0d 
  a49c89:	62 e1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm16
  a49c90:	0a 
  a49c91:	62 61 7c 48 28 6c 24 	vmovaps zmm29,ZMMWORD PTR [rsp+0x40]
  a49c98:	01 
  a49c99:	62 62 75 48 7f 6c 24 	vpermt2ps zmm29,zmm1,ZMMWORD PTR [rsp+0x200]
  a49ca0:	08 
  a49ca1:	62 61 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm29
  a49ca8:	01 
  a49ca9:	62 e1 7c 48 28 4c 24 	vmovaps zmm17,ZMMWORD PTR [rsp+0x1c0]
  a49cb0:	07 
  a49cb1:	62 e2 75 48 7f 4c 24 	vpermt2ps zmm17,zmm1,ZMMWORD PTR [rsp+0x2c0]
  a49cb8:	0b 
  a49cb9:	62 e1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm17
  a49cc0:	07 
  a49cc1:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x180]
  a49cc8:	06 
  a49cc9:	62 92 75 48 7f f9    	vpermt2ps zmm7,zmm1,zmm25
  a49ccf:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm7
  a49cd6:	06 
  a49cd7:	62 01 7c 48 28 cb    	vmovaps zmm25,zmm27
  a49cdd:	62 62 75 48 7f 4c 24 	vpermt2ps zmm25,zmm1,ZMMWORD PTR [rsp+0x5c0]
  a49ce4:	17 
  a49ce5:	62 61 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x880],zmm25
  a49cec:	22 
  a49ced:	62 d1 7c 48 28 ec    	vmovaps zmm5,zmm12
  a49cf3:	62 f2 75 48 7f 6c 24 	vpermt2ps zmm5,zmm1,ZMMWORD PTR [rsp+0x580]
  a49cfa:	16 
  a49cfb:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x540]
  a49d02:	15 
  a49d03:	62 f2 75 48 7f 54 24 	vpermt2ps zmm2,zmm1,ZMMWORD PTR [rsp+0x780]
  a49d0a:	1e 
  a49d0b:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm2
  a49d12:	15 
  a49d13:	62 71 7c 48 28 64 24 	vmovaps zmm12,ZMMWORD PTR [rsp+0x500]
  a49d1a:	14 
  a49d1b:	62 72 75 48 7f 64 24 	vpermt2ps zmm12,zmm1,ZMMWORD PTR [rsp+0x740]
  a49d22:	1d 
  a49d23:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm12
  a49d2a:	14 
  a49d2b:	62 91 7c 48 28 c2    	vmovaps zmm0,zmm26
  a49d31:	62 92 75 48 7f c7    	vpermt2ps zmm0,zmm1,zmm31
  a49d37:	62 b2 75 48 7f f7    	vpermt2ps zmm6,zmm1,zmm23
  a49d3d:	62 e1 7c 48 28 7c 24 	vmovaps zmm23,ZMMWORD PTR [rsp+0x100]
  a49d44:	04 
  a49d45:	62 c2 75 48 7f fd    	vpermt2ps zmm23,zmm1,zmm13
  a49d4b:	62 e1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm23
  a49d52:	04 
  a49d53:	62 61 7c 48 28 db    	vmovaps zmm27,zmm3
  a49d59:	62 22 6d 40 7f de    	vpermt2ps zmm27,zmm18,zmm22
  a49d5f:	62 21 7c 48 28 d0    	vmovaps zmm26,zmm16
  a49d65:	62 22 6d 40 7f d7    	vpermt2ps zmm26,zmm18,zmm23
  a49d6b:	62 01 7c 48 28 fd    	vmovaps zmm31,zmm29
  a49d71:	62 22 6d 40 7f f9    	vpermt2ps zmm31,zmm18,zmm17
  a49d77:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x80]
  a49d7e:	02 
  a49d7f:	62 d2 75 48 7f dd    	vpermt2ps zmm3,zmm1,zmm13
  a49d85:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm3
  a49d8c:	02 
  a49d8d:	62 e1 7c 48 28 ff    	vmovaps zmm23,zmm7
  a49d93:	62 e2 6d 40 7f fb    	vpermt2ps zmm23,zmm18,zmm3
  a49d99:	62 81 7c 48 28 f1    	vmovaps zmm22,zmm25
  a49d9f:	62 e2 6d 40 7f f5    	vpermt2ps zmm22,zmm18,zmm5
  a49da5:	62 61 7c 48 28 ed    	vmovaps zmm29,zmm5
  a49dab:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x240]
  a49db2:	09 
  a49db3:	62 d2 75 48 7f dd    	vpermt2ps zmm3,zmm1,zmm13
  a49db9:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm3
  a49dc0:	09 
  a49dc1:	c5 c0 57 ff          	vxorps xmm7,xmm7,xmm7
  a49dc5:	62 e1 7c 48 28 c2    	vmovaps zmm16,zmm2
  a49dcb:	62 e2 6d 40 7f c3    	vpermt2ps zmm16,zmm18,zmm3
  a49dd1:	62 11 a5 40 15 ea    	vunpckhpd zmm13,zmm27,zmm26
  a49dd7:	62 71 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x780],zmm13
  a49dde:	1e 
  a49ddf:	62 b1 85 40 15 d7    	vunpckhpd zmm2,zmm31,zmm23
  a49de5:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x740],zmm2
  a49dec:	1d 
  a49ded:	62 61 7c 48 28 0d 09 	vmovaps zmm25,ZMMWORD PTR [rip+0xffffffffff67d009]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a49df4:	d0 67 ff 
  a49df7:	62 72 35 40 7f ea    	vpermt2ps zmm13,zmm25,zmm2
  a49dfd:	62 d1 7c 48 28 ec    	vmovaps zmm5,zmm12
  a49e03:	62 f2 6d 40 7f e8    	vpermt2ps zmm5,zmm18,zmm0
  a49e09:	62 71 7c 48 28 e0    	vmovaps zmm12,zmm0
  a49e0f:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x600]
  a49e16:	18 
  a49e17:	62 f2 75 48 7f c7    	vpermt2ps zmm0,zmm1,zmm7
  a49e1d:	62 e1 7c 48 28 ce    	vmovaps zmm17,zmm6
  a49e23:	62 f1 7c 48 28 fe    	vmovaps zmm7,zmm6
  a49e29:	62 e2 6d 40 7f c8    	vpermt2ps zmm17,zmm18,zmm0
  a49e2f:	62 f1 7c 48 28 f0    	vmovaps zmm6,zmm0
  a49e35:	62 b1 cd 40 15 d8    	vunpckhpd zmm3,zmm22,zmm16
  a49e3b:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0xa00],zmm3
  a49e42:	28 
  a49e43:	62 b1 d5 48 15 c1    	vunpckhpd zmm0,zmm5,zmm17
  a49e49:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x9c0],zmm0
  a49e50:	27 
  a49e51:	62 f2 35 40 7f d8    	vpermt2ps zmm3,zmm25,zmm0
  a49e57:	62 f1 7c 48 10 41 04 	vmovups zmm0,ZMMWORD PTR [rcx+0x100]
  a49e5e:	62 f1 7c 48 10 49 05 	vmovups zmm1,ZMMWORD PTR [rcx+0x140]
  a49e65:	62 f1 64 48 59 d0    	vmulps zmm2,zmm3,zmm0
  a49e6b:	62 f2 15 48 b8 d1    	vfmadd231ps zmm2,zmm13,zmm1
  a49e71:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm2
  a49e78:	08 
  a49e79:	62 f1 14 48 59 c0    	vmulps zmm0,zmm13,zmm0
  a49e7f:	62 f2 75 48 bc c3    	vfnmadd231ps zmm0,zmm1,zmm3
  a49e85:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm0
  a49e8c:	0e 
  a49e8d:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x940]
  a49e94:	25 
  a49e95:	62 f1 fd 48 15 44 24 	vunpckhpd zmm0,zmm0,ZMMWORD PTR [rsp+0x900]
  a49e9c:	24 
  a49e9d:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm0
  a49ea4:	0b 
  a49ea5:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x8c0]
  a49eac:	23 
  a49ead:	62 b1 f5 48 15 cb    	vunpckhpd zmm1,zmm1,zmm19
  a49eb3:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm1
  a49eba:	18 
  a49ebb:	62 b1 d5 40 15 d4    	vunpckhpd zmm2,zmm21,zmm20
  a49ec1:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm2
  a49ec8:	17 
  a49ec9:	62 f1 85 48 15 e4    	vunpckhpd zmm4,zmm15,zmm4
  a49ecf:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm4
  a49ed6:	16 
  a49ed7:	62 e1 7c 48 28 2d 5f 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff67cf5f]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a49ede:	cf 67 ff 
  a49ee1:	62 f2 55 40 7f c1    	vpermt2ps zmm0,zmm21,zmm1
  a49ee7:	62 f1 7c 48 28 ca    	vmovaps zmm1,zmm2
  a49eed:	62 f2 55 40 7f cc    	vpermt2ps zmm1,zmm21,zmm4
  a49ef3:	62 f1 7c 48 10 61 16 	vmovups zmm4,ZMMWORD PTR [rcx+0x580]
  a49efa:	62 f1 74 48 59 d4    	vmulps zmm2,zmm1,zmm4
  a49f00:	62 f1 7c 48 59 dc    	vmulps zmm3,zmm0,zmm4
  a49f06:	62 f1 7c 48 10 61 17 	vmovups zmm4,ZMMWORD PTR [rcx+0x5c0]
  a49f0d:	62 f2 7d 48 b8 d4    	vfmadd231ps zmm2,zmm0,zmm4
  a49f13:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm2
  a49f1a:	1a 
  a49f1b:	62 f2 5d 48 bc d9    	vfnmadd231ps zmm3,zmm4,zmm1
  a49f21:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm3
  a49f28:	0d 
  a49f29:	62 71 7c 48 28 2d 0d 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff67d00d]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a49f30:	d0 67 ff 
  a49f33:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x640]
  a49f3a:	19 
  a49f3b:	62 f2 15 48 7f 4c 24 	vpermt2ps zmm1,zmm13,ZMMWORD PTR [rsp+0x300]
  a49f42:	0c 
  a49f43:	62 72 15 48 7f 74 24 	vpermt2ps zmm14,zmm13,ZMMWORD PTR [rsp+0x840]
  a49f4a:	21 
  a49f4b:	62 72 15 48 7f 4c 24 	vpermt2ps zmm9,zmm13,ZMMWORD PTR [rsp+0x800]
  a49f52:	20 
  a49f53:	62 62 15 48 7f 74 24 	vpermt2ps zmm30,zmm13,ZMMWORD PTR [rsp+0x7c0]
  a49f5a:	1f 
  a49f5b:	62 72 15 48 7f 5c 24 	vpermt2ps zmm11,zmm13,ZMMWORD PTR [rsp+0x700]
  a49f62:	1c 
  a49f63:	62 72 15 48 7f 44 24 	vpermt2ps zmm8,zmm13,ZMMWORD PTR [rsp+0xa40]
  a49f6a:	29 
  a49f6b:	62 72 15 48 7f 54 24 	vpermt2ps zmm10,zmm13,ZMMWORD PTR [rsp+0x980]
  a49f72:	26 
  a49f73:	62 02 15 48 7f c4    	vpermt2ps zmm24,zmm13,zmm28
  a49f79:	62 d1 f5 48 15 c6    	vunpckhpd zmm0,zmm1,zmm14
  a49f7f:	62 f1 7c 48 28 d9    	vmovaps zmm3,zmm1
  a49f85:	62 91 b5 48 15 ce    	vunpckhpd zmm1,zmm9,zmm30
  a49f8b:	62 f2 35 40 7f c1    	vpermt2ps zmm0,zmm25,zmm1
  a49f91:	62 d1 a5 48 15 c8    	vunpckhpd zmm1,zmm11,zmm8
  a49f97:	62 91 ad 48 15 e0    	vunpckhpd zmm4,zmm10,zmm24
  a49f9d:	62 f2 35 40 7f cc    	vpermt2ps zmm1,zmm25,zmm4
  a49fa3:	62 f1 7c 48 10 61 1c 	vmovups zmm4,ZMMWORD PTR [rcx+0x700]
  a49faa:	62 f1 74 48 59 d4    	vmulps zmm2,zmm1,zmm4
  a49fb0:	62 71 7c 48 59 fc    	vmulps zmm15,zmm0,zmm4
  a49fb6:	62 f1 7c 48 10 61 1d 	vmovups zmm4,ZMMWORD PTR [rcx+0x740]
  a49fbd:	62 f2 7d 48 b8 d4    	vfmadd231ps zmm2,zmm0,zmm4
  a49fc3:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm2
  a49fca:	19 
  a49fcb:	62 72 5d 48 bc f9    	vfnmadd231ps zmm15,zmm4,zmm1
  a49fd1:	62 71 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm15
  a49fd8:	0c 
  a49fd9:	62 c1 e5 48 14 d6    	vunpcklpd zmm18,zmm3,zmm14
  a49fdf:	62 91 b5 48 14 ce    	vunpcklpd zmm1,zmm9,zmm30
  a49fe5:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x7c0],zmm1
  a49fec:	1f 
  a49fed:	62 51 a5 48 14 f0    	vunpcklpd zmm14,zmm11,zmm8
  a49ff3:	62 91 ad 48 14 d0    	vunpcklpd zmm2,zmm10,zmm24
  a49ff9:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x700],zmm2
  a4a000:	1c 
  a4a001:	62 b1 7c 48 28 c2    	vmovaps zmm0,zmm18
  a4a007:	62 f2 55 40 7f c1    	vpermt2ps zmm0,zmm21,zmm1
  a4a00d:	62 51 7c 48 28 c6    	vmovaps zmm8,zmm14
  a4a013:	62 72 55 40 7f c2    	vpermt2ps zmm8,zmm21,zmm2
  a4a019:	62 71 7c 48 10 49 1b 	vmovups zmm9,ZMMWORD PTR [rcx+0x6c0]
  a4a020:	62 71 7c 48 10 51 1a 	vmovups zmm10,ZMMWORD PTR [rcx+0x680]
  a4a027:	62 d1 3c 48 59 ca    	vmulps zmm1,zmm8,zmm10
  a4a02d:	62 d2 7d 48 b8 c9    	vfmadd231ps zmm1,zmm0,zmm9
  a4a033:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x840],zmm1
  a4a03a:	21 
  a4a03b:	62 d1 7c 48 59 c2    	vmulps zmm0,zmm0,zmm10
  a4a041:	62 d2 35 48 bc c0    	vfnmadd231ps zmm0,zmm9,zmm8
  a4a047:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x800],zmm0
  a4a04e:	20 
  a4a04f:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0xc0]
  a4a056:	03 
  a4a057:	62 f2 15 48 7f 44 24 	vpermt2ps zmm0,zmm13,ZMMWORD PTR [rsp+0x140]
  a4a05e:	05 
  a4a05f:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x280]
  a4a066:	0a 
  a4a067:	62 72 15 48 7f 44 24 	vpermt2ps zmm8,zmm13,ZMMWORD PTR [rsp+0x100]
  a4a06e:	04 
  a4a06f:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x40]
  a4a076:	01 
  a4a077:	62 72 15 48 7f 4c 24 	vpermt2ps zmm9,zmm13,ZMMWORD PTR [rsp+0x1c0]
  a4a07e:	07 
  a4a07f:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x180]
  a4a086:	06 
  a4a087:	62 72 15 48 7f 54 24 	vpermt2ps zmm10,zmm13,ZMMWORD PTR [rsp+0x80]
  a4a08e:	02 
  a4a08f:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x880]
  a4a096:	22 
  a4a097:	62 92 15 48 7f d5    	vpermt2ps zmm2,zmm13,zmm29
  a4a09d:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x540]
  a4a0a4:	15 
  a4a0a5:	62 f2 15 48 7f 4c 24 	vpermt2ps zmm1,zmm13,ZMMWORD PTR [rsp+0x240]
  a4a0ac:	09 
  a4a0ad:	62 e1 7c 48 28 5c 24 	vmovaps zmm19,ZMMWORD PTR [rsp+0x500]
  a4a0b4:	14 
  a4a0b5:	62 c2 15 48 7f dc    	vpermt2ps zmm19,zmm13,zmm12
  a4a0bb:	62 f1 7c 48 28 e7    	vmovaps zmm4,zmm7
  a4a0c1:	62 f2 15 48 7f e6    	vpermt2ps zmm4,zmm13,zmm6
  a4a0c7:	62 41 fd 48 15 e0    	vunpckhpd zmm28,zmm0,zmm8
  a4a0cd:	62 71 7c 48 28 e8    	vmovaps zmm13,zmm0
  a4a0d3:	62 51 b5 48 15 fa    	vunpckhpd zmm15,zmm9,zmm10
  a4a0d9:	62 c1 7c 48 28 e1    	vmovaps zmm20,zmm9
  a4a0df:	62 91 7c 48 28 c4    	vmovaps zmm0,zmm28
  a4a0e5:	62 d2 55 40 7f c7    	vpermt2ps zmm0,zmm21,zmm15
  a4a0eb:	62 61 ed 48 15 f1    	vunpckhpd zmm30,zmm2,zmm1
  a4a0f1:	62 f1 7c 48 28 fa    	vmovaps zmm7,zmm2
  a4a0f7:	62 71 e5 40 15 dc    	vunpckhpd zmm11,zmm19,zmm4
  a4a0fd:	62 b1 7c 48 28 db    	vmovaps zmm3,zmm19
  a4a103:	62 11 7c 48 28 ce    	vmovaps zmm9,zmm30
  a4a109:	62 52 55 40 7f cb    	vpermt2ps zmm9,zmm21,zmm11
  a4a10f:	62 e1 7c 48 10 59 0e 	vmovups zmm19,ZMMWORD PTR [rcx+0x380]
  a4a116:	62 21 34 48 59 eb    	vmulps zmm29,zmm9,zmm19
  a4a11c:	62 21 7c 48 59 c3    	vmulps zmm24,zmm0,zmm19
  a4a122:	62 e1 7c 48 10 59 0f 	vmovups zmm19,ZMMWORD PTR [rcx+0x3c0]
  a4a129:	62 22 7d 48 b8 eb    	vfmadd231ps zmm29,zmm0,zmm19
  a4a12f:	62 42 65 40 bc c1    	vfnmadd231ps zmm24,zmm19,zmm9
  a4a135:	62 91 a5 40 14 c2    	vunpcklpd zmm0,zmm27,zmm26
  a4a13b:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm0
  a4a142:	03 
  a4a143:	62 b1 85 40 14 d7    	vunpcklpd zmm2,zmm31,zmm23
  a4a149:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm2
  a4a150:	02 
  a4a151:	62 31 cd 40 14 c8    	vunpcklpd zmm9,zmm22,zmm16
  a4a157:	62 a1 d5 48 14 f1    	vunpcklpd zmm22,zmm5,zmm17
  a4a15d:	62 f2 55 40 7f c2    	vpermt2ps zmm0,zmm21,zmm2
  a4a163:	62 d1 7c 48 28 d1    	vmovaps zmm2,zmm9
  a4a169:	62 41 7c 48 28 d9    	vmovaps zmm27,zmm9
  a4a16f:	62 b2 55 40 7f d6    	vpermt2ps zmm2,zmm21,zmm22
  a4a175:	62 f1 7c 48 10 69 02 	vmovups zmm5,ZMMWORD PTR [rcx+0x80]
  a4a17c:	62 71 7c 48 10 49 03 	vmovups zmm9,ZMMWORD PTR [rcx+0xc0]
  a4a183:	62 e1 6c 48 59 dd    	vmulps zmm19,zmm2,zmm5
  a4a189:	62 c2 7d 48 b8 d9    	vfmadd231ps zmm19,zmm0,zmm9
  a4a18f:	62 f1 7c 48 59 ed    	vmulps zmm5,zmm0,zmm5
  a4a195:	62 f2 35 48 bc ea    	vfnmadd231ps zmm5,zmm9,zmm2
  a4a19b:	62 d1 95 48 14 c0    	vunpcklpd zmm0,zmm13,zmm8
  a4a1a1:	62 d1 dd 40 14 d2    	vunpcklpd zmm2,zmm20,zmm10
  a4a1a7:	62 71 c5 48 14 e1    	vunpcklpd zmm12,zmm7,zmm1
  a4a1ad:	62 f1 e5 48 14 cc    	vunpcklpd zmm1,zmm3,zmm4
  a4a1b3:	62 e1 7c 48 28 c0    	vmovaps zmm16,zmm0
  a4a1b9:	62 91 7c 48 28 d9    	vmovaps zmm3,zmm25
  a4a1bf:	62 f2 35 40 7f c2    	vpermt2ps zmm0,zmm25,zmm2
  a4a1c5:	62 c1 7c 48 28 cc    	vmovaps zmm17,zmm12
  a4a1cb:	62 72 35 40 7f e1    	vpermt2ps zmm12,zmm25,zmm1
  a4a1d1:	62 f1 7c 48 10 71 08 	vmovups zmm6,ZMMWORD PTR [rcx+0x200]
  a4a1d8:	62 71 1c 48 59 ce    	vmulps zmm9,zmm12,zmm6
  a4a1de:	62 f1 7c 48 59 f6    	vmulps zmm6,zmm0,zmm6
  a4a1e4:	62 e1 7c 48 10 61 09 	vmovups zmm20,ZMMWORD PTR [rcx+0x240]
  a4a1eb:	62 32 7d 48 b8 cc    	vfmadd231ps zmm9,zmm0,zmm20
  a4a1f1:	62 d2 5d 40 bc f4    	vfnmadd231ps zmm6,zmm20,zmm12
  a4a1f7:	62 42 35 40 7f f3    	vpermt2ps zmm30,zmm25,zmm11
  a4a1fd:	62 42 35 40 7f e7    	vpermt2ps zmm28,zmm25,zmm15
  a4a203:	62 f1 7c 48 10 41 0c 	vmovups zmm0,ZMMWORD PTR [rcx+0x300]
  a4a20a:	62 71 1c 40 59 e0    	vmulps zmm12,zmm28,zmm0
  a4a210:	62 e1 0c 40 59 e0    	vmulps zmm20,zmm30,zmm0
  a4a216:	62 f1 7c 48 10 41 0d 	vmovups zmm0,ZMMWORD PTR [rcx+0x340]
  a4a21d:	62 72 0d 40 bc e0    	vfnmadd231ps zmm12,zmm30,zmm0
  a4a223:	62 82 7d 48 b8 e4    	vfmadd231ps zmm20,zmm0,zmm28
  a4a229:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x480]
  a4a230:	12 
  a4a231:	62 f2 55 40 7f 7c 24 	vpermt2ps zmm7,zmm21,ZMMWORD PTR [rsp+0x440]
  a4a238:	11 
  a4a239:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x4c0]
  a4a240:	13 
  a4a241:	62 f2 55 40 7f 64 24 	vpermt2ps zmm4,zmm21,ZMMWORD PTR [rsp+0x6c0]
  a4a248:	1b 
  a4a249:	62 f1 7c 48 10 41 12 	vmovups zmm0,ZMMWORD PTR [rcx+0x480]
  a4a250:	62 61 5c 48 59 f0    	vmulps zmm30,zmm4,zmm0
  a4a256:	62 61 44 48 59 c8    	vmulps zmm25,zmm7,zmm0
  a4a25c:	62 f1 7c 48 10 41 13 	vmovups zmm0,ZMMWORD PTR [rcx+0x4c0]
  a4a263:	62 62 45 48 bc f0    	vfnmadd231ps zmm30,zmm7,zmm0
  a4a269:	62 62 7d 48 b8 cc    	vfmadd231ps zmm25,zmm0,zmm4
  a4a26f:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0xa00]
  a4a276:	28 
  a4a277:	62 f2 55 40 7f 7c 24 	vpermt2ps zmm7,zmm21,ZMMWORD PTR [rsp+0x9c0]
  a4a27e:	27 
  a4a27f:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x780]
  a4a286:	1e 
  a4a287:	62 f2 55 40 7f 64 24 	vpermt2ps zmm4,zmm21,ZMMWORD PTR [rsp+0x740]
  a4a28e:	1d 
  a4a28f:	62 71 7c 48 10 41 06 	vmovups zmm8,ZMMWORD PTR [rcx+0x180]
  a4a296:	62 d1 5c 48 59 c0    	vmulps zmm0,zmm4,zmm8
  a4a29c:	62 41 44 48 59 e0    	vmulps zmm28,zmm7,zmm8
  a4a2a2:	62 71 7c 48 10 41 07 	vmovups zmm8,ZMMWORD PTR [rcx+0x1c0]
  a4a2a9:	62 d2 45 48 bc c0    	vfnmadd231ps zmm0,zmm7,zmm8
  a4a2af:	62 62 3d 48 b8 e4    	vfmadd231ps zmm28,zmm8,zmm4
  a4a2b5:	62 72 65 48 7f 74 24 	vpermt2ps zmm14,zmm3,ZMMWORD PTR [rsp+0x700]
  a4a2bc:	1c 
  a4a2bd:	62 e2 65 48 7f 54 24 	vpermt2ps zmm18,zmm3,ZMMWORD PTR [rsp+0x7c0]
  a4a2c4:	1f 
  a4a2c5:	62 71 7c 48 10 41 18 	vmovups zmm8,ZMMWORD PTR [rcx+0x600]
  a4a2cc:	62 41 6c 40 59 f8    	vmulps zmm31,zmm18,zmm8
  a4a2d2:	62 41 0c 48 59 d0    	vmulps zmm26,zmm14,zmm8
  a4a2d8:	62 71 7c 48 10 41 19 	vmovups zmm8,ZMMWORD PTR [rcx+0x640]
  a4a2df:	62 42 0d 48 bc f8    	vfnmadd231ps zmm31,zmm14,zmm8
  a4a2e5:	62 22 3d 48 b8 d2    	vfmadd231ps zmm26,zmm8,zmm18
  a4a2eb:	62 e2 55 40 7f c2    	vpermt2ps zmm16,zmm21,zmm2
  a4a2f1:	62 e2 55 40 7f c9    	vpermt2ps zmm17,zmm21,zmm1
  a4a2f7:	62 f1 7c 48 10 49 0a 	vmovups zmm1,ZMMWORD PTR [rcx+0x280]
  a4a2fe:	62 f1 74 40 59 e1    	vmulps zmm4,zmm17,zmm1
  a4a304:	62 f1 7c 40 59 d1    	vmulps zmm2,zmm16,zmm1
  a4a30a:	62 f1 7c 48 10 49 0b 	vmovups zmm1,ZMMWORD PTR [rcx+0x2c0]
  a4a311:	62 f2 7d 40 b8 e1    	vfmadd231ps zmm4,zmm16,zmm1
  a4a317:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm4
  a4a31e:	05 
  a4a31f:	62 b2 75 48 bc d1    	vfnmadd231ps zmm2,zmm1,zmm17
  a4a325:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm2
  a4a32c:	01 
  a4a32d:	62 f1 7c 48 28 cb    	vmovaps zmm1,zmm3
  a4a333:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x2c0]
  a4a33a:	0b 
  a4a33b:	62 f2 75 48 7f 5c 24 	vpermt2ps zmm3,zmm1,ZMMWORD PTR [rsp+0x600]
  a4a342:	18 
  a4a343:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x5c0]
  a4a34a:	17 
  a4a34b:	62 f2 75 48 7f 54 24 	vpermt2ps zmm2,zmm1,ZMMWORD PTR [rsp+0x580]
  a4a352:	16 
  a4a353:	62 f1 7c 48 28 e1    	vmovaps zmm4,zmm1
  a4a359:	62 f1 7c 48 10 49 14 	vmovups zmm1,ZMMWORD PTR [rcx+0x500]
  a4a360:	62 71 6c 48 59 e9    	vmulps zmm13,zmm2,zmm1
  a4a366:	62 f1 64 48 59 f9    	vmulps zmm7,zmm3,zmm1
  a4a36c:	62 f1 7c 48 10 49 15 	vmovups zmm1,ZMMWORD PTR [rcx+0x540]
  a4a373:	62 72 65 48 b8 e9    	vfmadd231ps zmm13,zmm3,zmm1
  a4a379:	62 f2 75 48 bc fa    	vfnmadd231ps zmm7,zmm1,zmm2
  a4a37f:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm7
  a4a386:	04 
  a4a387:	62 91 7c 48 28 fb    	vmovaps zmm7,zmm27
  a4a38d:	62 b2 5d 48 7f fe    	vpermt2ps zmm7,zmm4,zmm22
  a4a393:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm7
  a4a39a:	0b 
  a4a39b:	62 f1 54 48 5c d6    	vsubps zmm2,zmm5,zmm6
  a4a3a1:	62 f1 54 48 58 ce    	vaddps zmm1,zmm5,zmm6
  a4a3a7:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm1
  a4a3ae:	0a 
  a4a3af:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x800]
  a4a3b6:	20 
  a4a3b7:	62 81 74 48 5c f8    	vsubps zmm23,zmm1,zmm24
  a4a3bd:	62 91 74 48 58 c8    	vaddps zmm1,zmm1,zmm24
  a4a3c3:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm1
  a4a3ca:	09 
  a4a3cb:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x840]
  a4a3d2:	21 
  a4a3d3:	62 11 74 48 58 dd    	vaddps zmm11,zmm1,zmm29
  a4a3d9:	62 91 74 48 5c f5    	vsubps zmm6,zmm1,zmm29
  a4a3df:	62 c1 64 40 58 c9    	vaddps zmm17,zmm19,zmm9
  a4a3e5:	62 c1 64 40 5c d1    	vsubps zmm18,zmm19,zmm9
  a4a3eb:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x340]
  a4a3f2:	0d 
  a4a3f3:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x300]
  a4a3fa:	0c 
  a4a3fb:	62 f1 74 48 5c dd    	vsubps zmm3,zmm1,zmm5
  a4a401:	62 f1 74 48 58 cd    	vaddps zmm1,zmm1,zmm5
  a4a407:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm1
  a4a40e:	15 
  a4a40f:	62 01 1c 48 5c de    	vsubps zmm27,zmm12,zmm30
  a4a415:	62 81 1c 48 58 de    	vaddps zmm19,zmm12,zmm30
  a4a41b:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x3c0]
  a4a422:	0f 
  a4a423:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x380]
  a4a42a:	0e 
  a4a42b:	62 61 74 48 5c ed    	vsubps zmm29,zmm1,zmm5
  a4a431:	62 71 74 48 58 d5    	vaddps zmm10,zmm1,zmm5
  a4a437:	62 01 7c 48 5c f7    	vsubps zmm30,zmm0,zmm31
  a4a43d:	62 11 7c 48 58 e7    	vaddps zmm12,zmm0,zmm31
  a4a443:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x400]
  a4a44a:	10 
  a4a44b:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x200]
  a4a452:	08 
  a4a453:	62 e1 7c 48 58 c1    	vaddps zmm16,zmm0,zmm1
  a4a459:	62 61 7c 48 5c c1    	vsubps zmm24,zmm0,zmm1
  a4a45f:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x680]
  a4a466:	1a 
  a4a467:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x640]
  a4a46e:	19 
  a4a46f:	62 71 7c 48 58 c9    	vaddps zmm9,zmm0,zmm1
  a4a475:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0xc0]
  a4a47c:	03 
  a4a47d:	62 72 5d 48 7f 44 24 	vpermt2ps zmm8,zmm4,ZMMWORD PTR [rsp+0x80]
  a4a484:	02 
  a4a485:	62 11 5c 40 58 f1    	vaddps zmm14,zmm20,zmm25
  a4a48b:	62 f1 7c 48 5c c9    	vsubps zmm1,zmm0,zmm1
  a4a491:	62 11 1c 40 58 fa    	vaddps zmm15,zmm28,zmm26
  a4a497:	62 71 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm15
  a4a49e:	0e 
  a4a49f:	62 81 1c 40 5c ea    	vsubps zmm21,zmm28,zmm26
  a4a4a5:	62 91 5c 40 5c e1    	vsubps zmm4,zmm20,zmm25
  a4a4ab:	62 f2 7d 48 18 05 a3 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff62b2a3]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a4a4b2:	b2 62 ff 
  a4a4b5:	62 e1 64 48 59 e0    	vmulps zmm20,zmm3,zmm0
  a4a4bb:	62 e1 6c 48 59 f0    	vmulps zmm22,zmm2,zmm0
  a4a4c1:	62 f2 7d 48 18 2d d5 	vbroadcastss zmm5,DWORD PTR [rip+0xffffffffff62aed5]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a4a4c8:	ae 62 ff 
  a4a4cb:	62 e2 45 40 b8 f5    	vfmadd231ps zmm22,zmm23,zmm5
  a4a4d1:	62 61 44 40 59 c8    	vmulps zmm25,zmm23,zmm0
  a4a4d7:	62 62 55 48 bc ca    	vfnmadd231ps zmm25,zmm5,zmm2
  a4a4dd:	62 61 24 40 59 e0    	vmulps zmm28,zmm27,zmm0
  a4a4e3:	62 62 0d 40 b8 e5    	vfmadd231ps zmm28,zmm30,zmm5
  a4a4e9:	62 e1 0c 40 59 f8    	vmulps zmm23,zmm30,zmm0
  a4a4ef:	62 e2 15 40 b8 e5    	vfmadd231ps zmm20,zmm29,zmm5
  a4a4f5:	62 82 55 48 bc fb    	vfnmadd231ps zmm23,zmm5,zmm27
  a4a4fb:	62 61 74 48 59 d8    	vmulps zmm27,zmm1,zmm0
  a4a501:	62 61 14 40 59 e8    	vmulps zmm29,zmm29,zmm0
  a4a507:	62 62 55 48 bc eb    	vfnmadd231ps zmm29,zmm5,zmm3
  a4a50d:	62 61 6c 40 59 d0    	vmulps zmm26,zmm18,zmm0
  a4a513:	62 62 4d 48 b8 d5    	vfmadd231ps zmm26,zmm6,zmm5
  a4a519:	62 61 4c 48 59 f0    	vmulps zmm30,zmm6,zmm0
  a4a51f:	62 62 3d 40 b8 dd    	vfmadd231ps zmm27,zmm24,zmm5
  a4a525:	62 22 55 48 bc f2    	vfnmadd231ps zmm30,zmm5,zmm18
  a4a52b:	62 61 5c 48 59 f8    	vmulps zmm31,zmm4,zmm0
  a4a531:	62 f1 3c 40 59 d0    	vmulps zmm2,zmm24,zmm0
  a4a537:	62 f2 55 48 bc d1    	vfnmadd231ps zmm2,zmm5,zmm1
  a4a53d:	62 e2 7d 48 18 15 fd 	vbroadcastss zmm18,DWORD PTR [rip+0xffffffffff62b0fd]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a4a544:	b0 62 ff 
  a4a547:	62 b1 7c 48 28 ca    	vmovaps zmm1,zmm18
  a4a54d:	62 f2 05 48 ac cf    	vfnmadd213ps zmm1,zmm15,zmm7
  a4a553:	62 72 7d 48 18 3d 8b 	vbroadcastss zmm15,DWORD PTR [rip+0xffffffffff62b18b]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a4a55a:	b1 62 ff 
  a4a55d:	62 41 7c 48 28 c6    	vmovaps zmm24,zmm14
  a4a563:	62 71 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm14
  a4a56a:	0d 
  a4a56b:	62 d2 0d 48 b8 cf    	vfmadd231ps zmm1,zmm14,zmm15
  a4a571:	62 62 55 40 b8 fd    	vfmadd231ps zmm31,zmm21,zmm5
  a4a577:	62 f1 54 40 59 c0    	vmulps zmm0,zmm21,zmm0
  a4a57d:	62 f2 55 48 bc c4    	vfnmadd231ps zmm0,zmm5,zmm4
  a4a583:	62 f1 44 40 58 d9    	vaddps zmm3,zmm23,zmm1
  a4a589:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm3
  a4a590:	06 
  a4a591:	62 b1 74 48 5c cf    	vsubps zmm1,zmm1,zmm23
  a4a597:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm1
  a4a59e:	03 
  a4a59f:	62 b1 7c 48 28 ca    	vmovaps zmm1,zmm18
  a4a5a5:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x140]
  a4a5ac:	05 
  a4a5ad:	62 f2 7d 40 ac cf    	vfnmadd213ps zmm1,zmm16,zmm7
  a4a5b3:	62 d1 7c 48 28 d9    	vmovaps zmm3,zmm9
  a4a5b9:	62 d2 35 48 b8 cf    	vfmadd231ps zmm1,zmm9,zmm15
  a4a5bf:	62 91 74 48 58 e5    	vaddps zmm4,zmm1,zmm29
  a4a5c5:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm4
  a4a5cc:	02 
  a4a5cd:	62 91 74 48 5c cd    	vsubps zmm1,zmm1,zmm29
  a4a5d3:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm1
  a4a5da:	14 
  a4a5db:	62 b1 7c 48 28 ca    	vmovaps zmm1,zmm18
  a4a5e1:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm11
  a4a5e8:	16 
  a4a5e9:	62 71 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm13
  a4a5f0:	17 
  a4a5f1:	62 d2 25 48 ac cd    	vfnmadd213ps zmm1,zmm11,zmm13
  a4a5f7:	62 e1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm17
  a4a5fe:	18 
  a4a5ff:	62 d2 75 40 b8 cf    	vfmadd231ps zmm1,zmm17,zmm15
  a4a605:	62 91 74 48 58 e1    	vaddps zmm4,zmm1,zmm25
  a4a60b:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm4
  a4a612:	0f 
  a4a613:	62 91 74 48 5c c9    	vsubps zmm1,zmm1,zmm25
  a4a619:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm1
  a4a620:	13 
  a4a621:	62 b1 7c 48 28 ca    	vmovaps zmm1,zmm18
  a4a627:	62 d1 7c 48 28 e0    	vmovaps zmm4,zmm8
  a4a62d:	62 d1 7c 48 28 f4    	vmovaps zmm6,zmm12
  a4a633:	62 d2 1d 48 ac c8    	vfnmadd213ps zmm1,zmm12,zmm8
  a4a639:	62 31 7c 48 28 c3    	vmovaps zmm8,zmm19
  a4a63f:	62 d2 65 40 b8 cf    	vfmadd231ps zmm1,zmm19,zmm15
  a4a645:	62 71 74 48 5c c8    	vsubps zmm9,zmm1,zmm0
  a4a64b:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm9
  a4a652:	07 
  a4a653:	62 f1 74 48 58 c0    	vaddps zmm0,zmm1,zmm0
  a4a659:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm0
  a4a660:	08 
  a4a661:	62 b1 7c 48 28 c2    	vmovaps zmm0,zmm18
  a4a667:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x40]
  a4a66e:	01 
  a4a66f:	62 f2 2d 48 ac c1    	vfnmadd213ps zmm0,zmm10,zmm1
  a4a675:	62 61 7c 48 28 6c 24 	vmovaps zmm29,ZMMWORD PTR [rsp+0x540]
  a4a67c:	15 
  a4a67d:	62 d2 15 40 b8 c7    	vfmadd231ps zmm0,zmm29,zmm15
  a4a683:	62 e1 7c 48 5c fa    	vsubps zmm23,zmm0,zmm2
  a4a689:	62 f1 7c 48 58 c2    	vaddps zmm0,zmm0,zmm2
  a4a68f:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm0
  a4a696:	12 
  a4a697:	62 b1 7c 48 28 c2    	vmovaps zmm0,zmm18
  a4a69d:	62 e1 7c 48 28 6c 24 	vmovaps zmm21,ZMMWORD PTR [rsp+0x240]
  a4a6a4:	09 
  a4a6a5:	62 71 7c 48 28 64 24 	vmovaps zmm12,ZMMWORD PTR [rsp+0x100]
  a4a6ac:	04 
  a4a6ad:	62 d2 55 40 ac c4    	vfnmadd213ps zmm0,zmm21,zmm12
  a4a6b3:	62 e1 7c 48 28 5c 24 	vmovaps zmm19,ZMMWORD PTR [rsp+0x280]
  a4a6ba:	0a 
  a4a6bb:	62 d2 65 40 b8 c7    	vfmadd231ps zmm0,zmm19,zmm15
  a4a6c1:	62 11 7c 48 5c f6    	vsubps zmm14,zmm0,zmm30
  a4a6c7:	62 91 7c 48 58 c6    	vaddps zmm0,zmm0,zmm30
  a4a6cd:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm0
  a4a6d4:	11 
  a4a6d5:	62 d1 7c 48 28 c7    	vmovaps zmm0,zmm15
  a4a6db:	62 d2 25 48 a8 c5    	vfmadd213ps zmm0,zmm11,zmm13
  a4a6e1:	62 b2 75 40 bc c2    	vfnmadd231ps zmm0,zmm17,zmm18
  a4a6e7:	62 b1 7c 48 58 ee    	vaddps zmm5,zmm0,zmm22
  a4a6ed:	62 21 7c 48 5c ce    	vsubps zmm25,zmm0,zmm22
  a4a6f3:	62 c1 7c 48 28 f7    	vmovaps zmm22,zmm15
  a4a6f9:	62 71 7c 48 28 6c 24 	vmovaps zmm13,ZMMWORD PTR [rsp+0x380]
  a4a700:	0e 
  a4a701:	62 71 7c 48 28 5c 24 	vmovaps zmm11,ZMMWORD PTR [rsp+0x2c0]
  a4a708:	0b 
  a4a709:	62 c2 15 48 a8 f3    	vfmadd213ps zmm22,zmm13,zmm11
  a4a70f:	62 a2 3d 40 bc f2    	vfnmadd231ps zmm22,zmm24,zmm18
  a4a715:	62 21 1c 40 58 f6    	vaddps zmm30,zmm28,zmm22
  a4a71b:	62 91 4c 40 5c c4    	vsubps zmm0,zmm22,zmm28
  a4a721:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm0
  a4a728:	10 
  a4a729:	62 41 7c 48 28 e7    	vmovaps zmm28,zmm15
  a4a72f:	62 62 7d 40 a8 e7    	vfmadd213ps zmm28,zmm16,zmm7
  a4a735:	62 a1 7c 48 28 c8    	vmovaps zmm17,zmm16
  a4a73b:	62 e1 7c 48 28 c7    	vmovaps zmm16,zmm7
  a4a741:	62 22 65 48 bc e2    	vfnmadd231ps zmm28,zmm3,zmm18
  a4a747:	62 b1 1c 40 58 c4    	vaddps zmm0,zmm28,zmm20
  a4a74d:	62 b1 1c 40 5c fc    	vsubps zmm7,zmm28,zmm20
  a4a753:	62 c1 7c 48 28 e7    	vmovaps zmm20,zmm15
  a4a759:	62 e2 2d 48 a8 e1    	vfmadd213ps zmm20,zmm10,zmm1
  a4a75f:	62 41 7c 48 28 c2    	vmovaps zmm24,zmm10
  a4a765:	62 e1 7c 48 28 f1    	vmovaps zmm22,zmm1
  a4a76b:	62 a2 15 40 bc e2    	vfnmadd231ps zmm20,zmm29,zmm18
  a4a771:	62 01 5c 40 5c e3    	vsubps zmm28,zmm20,zmm27
  a4a777:	62 91 5c 40 58 d3    	vaddps zmm2,zmm20,zmm27
  a4a77d:	62 c1 7c 48 28 e7    	vmovaps zmm20,zmm15
  a4a783:	62 c2 55 40 a8 e4    	vfmadd213ps zmm20,zmm21,zmm12
  a4a789:	62 a2 65 40 bc e2    	vfnmadd231ps zmm20,zmm19,zmm18
  a4a78f:	62 01 5c 40 5c da    	vsubps zmm27,zmm20,zmm26
  a4a795:	62 91 5c 40 58 ca    	vaddps zmm1,zmm20,zmm26
  a4a79b:	62 11 1c 40 5c cb    	vsubps zmm9,zmm28,zmm27
  a4a7a1:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x6c0],zmm9
  a4a7a8:	1b 
  a4a7a9:	62 01 1c 40 58 e3    	vaddps zmm28,zmm28,zmm27
  a4a7af:	62 c1 7c 48 28 e7    	vmovaps zmm20,zmm15
  a4a7b5:	62 e2 4d 48 a8 e4    	vfmadd213ps zmm20,zmm6,zmm4
  a4a7bb:	62 71 7c 48 28 d6    	vmovaps zmm10,zmm6
  a4a7c1:	62 71 7c 48 28 fc    	vmovaps zmm15,zmm4
  a4a7c7:	62 a2 3d 48 bc e2    	vfnmadd231ps zmm20,zmm8,zmm18
  a4a7cd:	62 91 5c 40 5c e7    	vsubps zmm4,zmm20,zmm31
  a4a7d3:	62 01 5c 40 58 d7    	vaddps zmm26,zmm20,zmm31
  a4a7d9:	62 31 7c 40 58 c9    	vaddps zmm9,zmm16,zmm17
  a4a7df:	62 61 7c 48 58 fd    	vaddps zmm31,zmm0,zmm5
  a4a7e5:	62 f1 7c 48 5c c5    	vsubps zmm0,zmm0,zmm5
  a4a7eb:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm0
  a4a7f2:	05 
  a4a7f3:	62 f1 34 48 58 c3    	vaddps zmm0,zmm9,zmm3
  a4a7f9:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x580]
  a4a800:	16 
  a4a801:	62 f1 64 48 58 5c 24 	vaddps zmm3,zmm3,ZMMWORD PTR [rsp+0x5c0]
  a4a808:	17 
  a4a809:	62 c1 44 40 5c c6    	vsubps zmm16,zmm23,zmm14
  a4a80f:	62 c1 44 40 58 d6    	vaddps zmm18,zmm23,zmm14
  a4a815:	62 f1 64 48 58 5c 24 	vaddps zmm3,zmm3,ZMMWORD PTR [rsp+0x600]
  a4a81c:	18 
  a4a81d:	62 d1 14 48 58 eb    	vaddps zmm5,zmm13,zmm11
  a4a823:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x80]
  a4a82a:	02 
  a4a82b:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x3c0]
  a4a832:	0f 
  a4a833:	62 c1 4c 48 58 e1    	vaddps zmm20,zmm6,zmm9
  a4a839:	62 d1 4c 48 5c f1    	vsubps zmm6,zmm6,zmm9
  a4a83f:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm6
  a4a846:	0f 
  a4a847:	62 61 54 48 58 5c 24 	vaddps zmm27,zmm5,ZMMWORD PTR [rsp+0x340]
  a4a84e:	0d 
  a4a84f:	62 91 4c 40 58 e8    	vaddps zmm5,zmm22,zmm24
  a4a855:	62 f1 6c 48 5c f1    	vsubps zmm6,zmm2,zmm1
  a4a85b:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm6
  a4a862:	01 
  a4a863:	62 f1 6c 48 58 f1    	vaddps zmm6,zmm2,zmm1
  a4a869:	62 91 54 48 58 cd    	vaddps zmm1,zmm5,zmm29
  a4a86f:	62 b1 1c 48 58 ed    	vaddps zmm5,zmm12,zmm21
  a4a875:	62 b1 54 48 58 eb    	vaddps zmm5,zmm5,zmm19
  a4a87b:	62 e1 74 48 5c dd    	vsubps zmm19,zmm1,zmm5
  a4a881:	62 71 74 48 58 ed    	vaddps zmm13,zmm1,zmm5
  a4a887:	62 d1 04 48 58 ca    	vaddps zmm1,zmm15,zmm10
  a4a88d:	62 91 44 48 58 e9    	vaddps zmm5,zmm7,zmm25
  a4a893:	62 91 44 48 5c d1    	vsubps zmm2,zmm7,zmm25
  a4a899:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm2
  a4a8a0:	04 
  a4a8a1:	62 62 7d 48 18 2d b5 	vbroadcastss zmm29,DWORD PTR [rip+0xffffffffff62abb5]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a4a8a8:	ab 62 ff 
  a4a8ab:	62 91 7c 48 28 d5    	vmovaps zmm2,zmm29
  a4a8b1:	62 51 74 48 58 e0    	vaddps zmm12,zmm1,zmm8
  a4a8b7:	62 f1 7c 48 58 fb    	vaddps zmm7,zmm0,zmm3
  a4a8bd:	62 92 05 40 ac d6    	vfnmadd213ps zmm2,zmm31,zmm30
  a4a8c3:	62 71 7c 48 5c fb    	vsubps zmm15,zmm0,zmm3
  a4a8c9:	62 91 7c 48 28 dd    	vmovaps zmm3,zmm29
  a4a8cf:	62 f2 1d 40 ac dc    	vfnmadd213ps zmm3,zmm28,zmm4
  a4a8d5:	62 11 0c 40 58 cf    	vaddps zmm9,zmm30,zmm31
  a4a8db:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x500]
  a4a8e2:	14 
  a4a8e3:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x4c0]
  a4a8ea:	13 
  a4a8eb:	62 d1 3c 48 58 c2    	vaddps zmm0,zmm8,zmm10
  a4a8f1:	62 91 5c 48 58 cc    	vaddps zmm1,zmm4,zmm28
  a4a8f7:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm1
  a4a8fe:	02 
  a4a8ff:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0xc0]
  a4a906:	03 
  a4a907:	62 61 74 48 58 f8    	vaddps zmm31,zmm1,zmm0
  a4a90d:	62 f2 15 40 ac c1    	vfnmadd213ps zmm0,zmm29,zmm1
  a4a913:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x480]
  a4a91a:	12 
  a4a91b:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x440]
  a4a922:	11 
  a4a923:	62 e1 74 48 58 fc    	vaddps zmm23,zmm1,zmm4
  a4a929:	62 e1 74 48 5c cc    	vsubps zmm17,zmm1,zmm4
  a4a92f:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x200]
  a4a936:	08 
  a4a937:	62 b1 5c 48 58 cf    	vaddps zmm1,zmm4,zmm23
  a4a93d:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm1
  a4a944:	03 
  a4a945:	62 e2 15 40 ac fc    	vfnmadd213ps zmm23,zmm29,zmm4
  a4a94b:	62 91 7c 48 28 e5    	vmovaps zmm4,zmm29
  a4a951:	62 41 3c 48 5c c2    	vsubps zmm24,zmm8,zmm10
  a4a957:	62 01 7c 48 28 cd    	vmovaps zmm25,zmm29
  a4a95d:	62 e1 7c 48 28 74 24 	vmovaps zmm22,ZMMWORD PTR [rsp+0x180]
  a4a964:	06 
  a4a965:	62 b2 5d 40 ac e6    	vfnmadd213ps zmm4,zmm20,zmm22
  a4a96b:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x400]
  a4a972:	10 
  a4a973:	62 62 55 48 ac c9    	vfnmadd213ps zmm25,zmm5,zmm1
  a4a979:	62 71 74 48 58 dd    	vaddps zmm11,zmm1,zmm5
  a4a97f:	62 91 7c 48 28 ed    	vmovaps zmm5,zmm29
  a4a985:	62 f2 7d 48 18 0d 45 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff62a945]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a4a98c:	a9 62 ff 
  a4a98f:	62 71 7c 40 59 c1    	vmulps zmm8,zmm16,zmm1
  a4a995:	62 92 4d 48 ac ea    	vfnmadd213ps zmm5,zmm6,zmm26
  a4a99b:	62 61 2c 40 58 e6    	vaddps zmm28,zmm26,zmm6
  a4a9a1:	62 d1 5c 48 5c f0    	vsubps zmm6,zmm4,zmm8
  a4a9a7:	62 51 5c 48 58 d0    	vaddps zmm10,zmm4,zmm8
  a4a9ad:	62 91 7c 48 28 e5    	vmovaps zmm4,zmm29
  a4a9b3:	62 92 45 48 ac e3    	vfnmadd213ps zmm4,zmm7,zmm27
  a4a9b9:	62 71 64 40 59 f1    	vmulps zmm14,zmm19,zmm1
  a4a9bf:	62 51 5c 48 5c c6    	vsubps zmm8,zmm4,zmm14
  a4a9c5:	62 c1 5c 48 58 c6    	vaddps zmm16,zmm4,zmm14
  a4a9cb:	62 91 7c 48 28 e5    	vmovaps zmm4,zmm29
  a4a9d1:	62 d2 15 48 ac e4    	vfnmadd213ps zmm4,zmm13,zmm12
  a4a9d7:	62 71 04 48 59 f1    	vmulps zmm14,zmm15,zmm1
  a4a9dd:	62 41 5c 48 58 f6    	vaddps zmm30,zmm4,zmm14
  a4a9e3:	62 c1 5c 48 5c ee    	vsubps zmm21,zmm4,zmm14
  a4a9e9:	62 a1 4c 40 58 f4    	vaddps zmm22,zmm22,zmm20
  a4a9ef:	62 91 7c 48 28 e5    	vmovaps zmm4,zmm29
  a4a9f5:	62 71 7c 48 28 7c 24 	vmovaps zmm15,ZMMWORD PTR [rsp+0x1c0]
  a4a9fc:	07 
  a4a9fd:	62 d2 6d 40 ac e7    	vfnmadd213ps zmm4,zmm18,zmm15
  a4aa03:	62 71 74 48 59 74 24 	vmulps zmm14,zmm1,ZMMWORD PTR [rsp+0x3c0]
  a4aa0a:	0f 
  a4aa0b:	62 41 5c 48 58 ee    	vaddps zmm29,zmm4,zmm14
  a4aa11:	62 51 5c 48 5c f6    	vsubps zmm14,zmm4,zmm14
  a4aa17:	62 21 04 48 58 d2    	vaddps zmm26,zmm15,zmm18
  a4aa1d:	62 71 74 48 59 7c 24 	vmulps zmm15,zmm1,ZMMWORD PTR [rsp+0x6c0]
  a4aa24:	1b 
  a4aa25:	62 d1 6c 48 58 e7    	vaddps zmm4,zmm2,zmm15
  a4aa2b:	62 c1 6c 48 5c df    	vsubps zmm19,zmm2,zmm15
  a4aa31:	62 71 74 48 59 7c 24 	vmulps zmm15,zmm1,ZMMWORD PTR [rsp+0x140]
  a4aa38:	05 
  a4aa39:	62 61 24 40 58 df    	vaddps zmm27,zmm27,zmm7
  a4aa3f:	62 d1 64 48 5c ff    	vsubps zmm7,zmm3,zmm15
  a4aa45:	62 d1 64 48 58 d7    	vaddps zmm2,zmm3,zmm15
  a4aa4b:	62 51 1c 48 58 e5    	vaddps zmm12,zmm12,zmm13
  a4aa51:	62 11 7c 48 28 fb    	vmovaps zmm15,zmm27
  a4aa57:	62 f1 7c 48 28 1d 9f 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff647b9f]        # 92600 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1fab0>
  a4aa5e:	7b 64 ff 
  a4aa61:	62 52 65 48 7f fc    	vpermt2ps zmm15,zmm3,zmm12
  a4aa67:	62 e1 74 40 59 d1    	vmulps zmm18,zmm17,zmm1
  a4aa6d:	62 71 7c 48 11 3c 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm15
  a4aa74:	62 a1 7c 48 5c ca    	vsubps zmm17,zmm0,zmm18
  a4aa7a:	62 71 3c 40 59 f9    	vmulps zmm15,zmm24,zmm1
  a4aa80:	62 b1 7c 48 58 c2    	vaddps zmm0,zmm0,zmm18
  a4aa86:	62 c1 24 40 14 d4    	vunpcklps zmm18,zmm27,zmm12
  a4aa8c:	62 e3 7d 48 19 54 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x60],zmm18,0x3
  a4aa93:	06 03 
  a4aa95:	62 c1 44 40 58 d7    	vaddps zmm18,zmm23,zmm15
  a4aa9b:	62 c1 44 40 5c ff    	vsubps zmm23,zmm23,zmm15
  a4aaa1:	62 71 74 48 59 7c 24 	vmulps zmm15,zmm1,ZMMWORD PTR [rsp+0x40]
  a4aaa8:	01 
  a4aaa9:	c5 7c 28 2d 8f c1 62 	vmovaps ymm13,YMMWORD PTR [rip+0xffffffffff62c18f]        # 76c40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x40f0>
  a4aab0:	ff 
  a4aab1:	62 42 15 48 7f dc    	vpermt2ps zmm27,zmm13,zmm12
  a4aab7:	62 51 34 40 58 e7    	vaddps zmm12,zmm25,zmm15
  a4aabd:	62 41 34 40 5c c7    	vsubps zmm24,zmm25,zmm15
  a4aac3:	62 e1 74 48 59 64 24 	vmulps zmm20,zmm1,ZMMWORD PTR [rsp+0x100]
  a4aaca:	04 
  a4aacb:	62 61 7c 28 11 5c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm27
  a4aad2:	02 
  a4aad3:	62 31 54 48 5c fc    	vsubps zmm15,zmm5,zmm20
  a4aad9:	62 b1 54 48 58 ec    	vaddps zmm5,zmm5,zmm20
  a4aadf:	62 81 7c 48 28 e0    	vmovaps zmm20,zmm24
  a4aae5:	62 e2 65 48 7f e5    	vpermt2ps zmm20,zmm3,zmm5
  a4aaeb:	62 e1 7c 48 11 a4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x70],zmm20
  a4aaf2:	70 00 00 00 
  a4aaf6:	62 e1 3c 40 14 e5    	vunpcklps zmm20,zmm24,zmm5
  a4aafc:	62 e3 7d 48 19 64 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xd0],zmm20,0x3
  a4ab03:	0d 03 
  a4ab05:	62 62 15 48 7f c5    	vpermt2ps zmm24,zmm13,zmm5
  a4ab0b:	62 61 7c 28 11 84 16 	vmovups YMMWORD PTR [rsi+rdx*1+0xb0],ymm24
  a4ab12:	b0 00 00 00 
  a4ab16:	62 f1 7c 48 28 e8    	vmovaps zmm5,zmm0
  a4ab1c:	62 b2 65 48 7f ef    	vpermt2ps zmm5,zmm3,zmm23
  a4ab22:	62 f1 7c 48 11 ac 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xe0],zmm5
  a4ab29:	e0 00 00 00 
  a4ab2d:	62 b1 7c 48 14 ef    	vunpcklps zmm5,zmm0,zmm23
  a4ab33:	62 f3 7d 48 19 6c 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x140],zmm5,0x3
  a4ab3a:	14 03 
  a4ab3c:	62 b2 15 48 7f c7    	vpermt2ps zmm0,zmm13,zmm23
  a4ab42:	c5 fc 11 84 16 20 01 	vmovups YMMWORD PTR [rsi+rdx*1+0x120],ymm0
  a4ab49:	00 00 
  a4ab4b:	62 b1 7c 48 28 c6    	vmovaps zmm0,zmm22
  a4ab51:	62 92 65 48 7f c2    	vpermt2ps zmm0,zmm3,zmm26
  a4ab57:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x150],zmm0
  a4ab5e:	50 01 00 00 
  a4ab62:	62 91 4c 40 14 c2    	vunpcklps zmm0,zmm22,zmm26
  a4ab68:	62 82 15 48 7f f2    	vpermt2ps zmm22,zmm13,zmm26
  a4ab6e:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x1b0],zmm0,0x3
  a4ab75:	1b 03 
  a4ab77:	62 e1 7c 28 11 b4 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x190],ymm22
  a4ab7e:	90 01 00 00 
  a4ab82:	62 b1 7c 48 28 c3    	vmovaps zmm0,zmm19
  a4ab88:	62 f2 65 48 7f c2    	vpermt2ps zmm0,zmm3,zmm2
  a4ab8e:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1c0],zmm0
  a4ab95:	07 
  a4ab96:	62 f1 64 40 14 c2    	vunpcklps zmm0,zmm19,zmm2
  a4ab9c:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x220],zmm0,0x3
  a4aba3:	22 03 
  a4aba5:	62 e2 15 48 7f da    	vpermt2ps zmm19,zmm13,zmm2
  a4abab:	62 e1 7c 28 11 5c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x200],ymm19
  a4abb2:	10 
  a4abb3:	62 b1 7c 48 28 c0    	vmovaps zmm0,zmm16
  a4abb9:	62 b2 65 48 7f c5    	vpermt2ps zmm0,zmm3,zmm21
  a4abbf:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x230],zmm0
  a4abc6:	30 02 00 00 
  a4abca:	62 b1 7c 40 14 c5    	vunpcklps zmm0,zmm16,zmm21
  a4abd0:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x290],zmm0,0x3
  a4abd7:	29 03 
  a4abd9:	62 a2 15 48 7f c5    	vpermt2ps zmm16,zmm13,zmm21
  a4abdf:	62 e1 7c 28 11 84 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x270],ymm16
  a4abe6:	70 02 00 00 
  a4abea:	62 d1 7c 48 28 c3    	vmovaps zmm0,zmm11
  a4abf0:	62 92 65 48 7f c4    	vpermt2ps zmm0,zmm3,zmm28
  a4abf6:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x2a0],zmm0
  a4abfd:	a0 02 00 00 
  a4ac01:	62 91 24 48 14 c4    	vunpcklps zmm0,zmm11,zmm28
  a4ac07:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x300],zmm0,0x3
  a4ac0e:	30 03 
  a4ac10:	62 12 15 48 7f dc    	vpermt2ps zmm11,zmm13,zmm28
  a4ac16:	c5 7c 11 9c 16 e0 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x2e0],ymm11
  a4ac1d:	00 00 
  a4ac1f:	62 b1 7c 48 28 c1    	vmovaps zmm0,zmm17
  a4ac25:	62 b2 65 48 7f c2    	vpermt2ps zmm0,zmm3,zmm18
  a4ac2b:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x310],zmm0
  a4ac32:	10 03 00 00 
  a4ac36:	62 b1 74 40 14 c2    	vunpcklps zmm0,zmm17,zmm18
  a4ac3c:	62 a2 15 48 7f ca    	vpermt2ps zmm17,zmm13,zmm18
  a4ac42:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x370],zmm0,0x3
  a4ac49:	37 03 
  a4ac4b:	62 e1 7c 28 11 8c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x350],ymm17
  a4ac52:	50 03 00 00 
  a4ac56:	62 d1 7c 48 28 c2    	vmovaps zmm0,zmm10
  a4ac5c:	62 d2 65 48 7f c6    	vpermt2ps zmm0,zmm3,zmm14
  a4ac62:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x380],zmm0
  a4ac69:	0e 
  a4ac6a:	62 d1 2c 48 14 c6    	vunpcklps zmm0,zmm10,zmm14
  a4ac70:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x3e0],zmm0,0x3
  a4ac77:	3e 03 
  a4ac79:	62 52 15 48 7f d6    	vpermt2ps zmm10,zmm13,zmm14
  a4ac7f:	c5 7c 11 94 16 c0 03 	vmovups YMMWORD PTR [rsi+rdx*1+0x3c0],ymm10
  a4ac86:	00 00 
  a4ac88:	62 d1 7c 48 28 c1    	vmovaps zmm0,zmm9
  a4ac8e:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x80]
  a4ac95:	02 
  a4ac96:	62 f2 65 48 7f c1    	vpermt2ps zmm0,zmm3,zmm1
  a4ac9c:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x3f0],zmm0
  a4aca3:	f0 03 00 00 
  a4aca7:	62 f1 34 48 14 c1    	vunpcklps zmm0,zmm9,zmm1
  a4acad:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x450],zmm0,0x3
  a4acb4:	45 03 
  a4acb6:	62 72 15 48 7f c9    	vpermt2ps zmm9,zmm13,zmm1
  a4acbc:	c5 7c 11 8c 16 30 04 	vmovups YMMWORD PTR [rsi+rdx*1+0x430],ymm9
  a4acc3:	00 00 
  a4acc5:	62 d1 7c 48 28 c0    	vmovaps zmm0,zmm8
  a4accb:	62 92 65 48 7f c6    	vpermt2ps zmm0,zmm3,zmm30
  a4acd1:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x460],zmm0
  a4acd8:	60 04 00 00 
  a4acdc:	62 91 3c 48 14 c6    	vunpcklps zmm0,zmm8,zmm30
  a4ace2:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x4c0],zmm0,0x3
  a4ace9:	4c 03 
  a4aceb:	62 12 15 48 7f c6    	vpermt2ps zmm8,zmm13,zmm30
  a4acf1:	c5 7c 11 84 16 a0 04 	vmovups YMMWORD PTR [rsi+rdx*1+0x4a0],ymm8
  a4acf8:	00 00 
  a4acfa:	62 d1 7c 48 28 c4    	vmovaps zmm0,zmm12
  a4ad00:	62 d2 65 48 7f c7    	vpermt2ps zmm0,zmm3,zmm15
  a4ad06:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x4d0],zmm0
  a4ad0d:	d0 04 00 00 
  a4ad11:	62 d1 1c 48 14 c7    	vunpcklps zmm0,zmm12,zmm15
  a4ad17:	62 52 15 48 7f e7    	vpermt2ps zmm12,zmm13,zmm15
  a4ad1d:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x530],zmm0,0x3
  a4ad24:	53 03 
  a4ad26:	c5 7c 11 a4 16 10 05 	vmovups YMMWORD PTR [rsi+rdx*1+0x510],ymm12
  a4ad2d:	00 00 
  a4ad2f:	62 91 7c 48 28 c7    	vmovaps zmm0,zmm31
  a4ad35:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0xc0]
  a4ad3c:	03 
  a4ad3d:	62 f2 65 48 7f c1    	vpermt2ps zmm0,zmm3,zmm1
  a4ad43:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x540],zmm0
  a4ad4a:	15 
  a4ad4b:	62 f1 04 40 14 c1    	vunpcklps zmm0,zmm31,zmm1
  a4ad51:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x5a0],zmm0,0x3
  a4ad58:	5a 03 
  a4ad5a:	62 62 15 48 7f f9    	vpermt2ps zmm31,zmm13,zmm1
  a4ad60:	62 61 7c 28 11 7c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x580],ymm31
  a4ad67:	2c 
  a4ad68:	62 f1 7c 48 28 c6    	vmovaps zmm0,zmm6
  a4ad6e:	62 92 65 48 7f c5    	vpermt2ps zmm0,zmm3,zmm29
  a4ad74:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x5b0],zmm0
  a4ad7b:	b0 05 00 00 
  a4ad7f:	62 91 4c 48 14 c5    	vunpcklps zmm0,zmm6,zmm29
  a4ad85:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x610],zmm0,0x3
  a4ad8c:	61 03 
  a4ad8e:	62 92 15 48 7f f5    	vpermt2ps zmm6,zmm13,zmm29
  a4ad94:	c5 fc 11 b4 16 f0 05 	vmovups YMMWORD PTR [rsi+rdx*1+0x5f0],ymm6
  a4ad9b:	00 00 
  a4ad9d:	62 f1 7c 48 28 c4    	vmovaps zmm0,zmm4
  a4ada3:	62 f2 65 48 7f c7    	vpermt2ps zmm0,zmm3,zmm7
  a4ada9:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x620],zmm0
  a4adb0:	20 06 00 00 
  a4adb4:	62 f1 5c 48 14 c7    	vunpcklps zmm0,zmm4,zmm7
  a4adba:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x680],zmm0,0x3
  a4adc1:	68 03 
  a4adc3:	62 f2 15 48 7f e7    	vpermt2ps zmm4,zmm13,zmm7
  a4adc9:	c5 fc 11 a4 16 60 06 	vmovups YMMWORD PTR [rsi+rdx*1+0x660],ymm4
  a4add0:	00 00 
  a4add2:	48 81 c2 90 06 00 00 	add    rdx,0x690
  a4add9:	48 39 d0             	cmp    rax,rdx
  a4addc:	0f 85 ce de ff ff    	jne    a48cb0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x30>
  a4ade2:	48 89 ec             	mov    rsp,rbp
  a4ade5:	5d                   	pop    rbp
  a4ade6:	c5 f8 77             	vzeroupper
  a4ade9:	c3                   	ret
