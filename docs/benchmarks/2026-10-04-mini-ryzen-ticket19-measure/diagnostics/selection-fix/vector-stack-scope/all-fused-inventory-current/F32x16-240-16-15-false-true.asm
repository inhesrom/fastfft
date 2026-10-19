
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a05ac0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a05ac0:	55                   	push   rbp
  a05ac1:	48 89 e5             	mov    rbp,rsp
  a05ac4:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a05ac8:	48 81 ec c0 0c 00 00 	sub    rsp,0xcc0
  a05acf:	48 69 c2 80 07 00 00 	imul   rax,rdx,0x780
  a05ad6:	31 d2                	xor    edx,edx
  a05ad8:	4c 8d 84 24 40 0c 00 	lea    r8,[rsp+0xc40]
  a05adf:	00 
  a05ae0:	4c 8d 8c 24 f8 00 00 	lea    r9,[rsp+0xf8]
  a05ae7:	00 
  a05ae8:	41 b2 7f             	mov    r10b,0x7f
  a05aeb:	c4 c1 7b 92 ca       	kmovd  k1,r10d
  a05af0:	c6 84 24 40 0c 00 00 	mov    BYTE PTR [rsp+0xc40],0x0
  a05af7:	00 
  a05af8:	4c 89 84 24 f8 00 00 	mov    QWORD PTR [rsp+0xf8],r8
  a05aff:	00 
  a05b00:	62 f1 7c 48 10 1c 17 	vmovups zmm3,ZMMWORD PTR [rdi+rdx*1]
  a05b07:	62 e1 7c 28 10 7c 17 	vmovups ymm23,YMMWORD PTR [rdi+rdx*1+0x40]
  a05b0e:	02 
  a05b0f:	c5 f8 10 44 17 60    	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x60]
  a05b15:	c4 e3 79 21 44 17 64 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x64],0x10
  a05b1c:	10 
  a05b1d:	c4 e2 79 18 74 17 68 	vbroadcastss xmm6,DWORD PTR [rdi+rdx*1+0x68]
  a05b24:	62 e1 ff 08 10 44 17 	vmovsd xmm16,QWORD PTR [rdi+rdx*1+0x70]
  a05b2b:	0e 
  a05b2c:	62 61 7c 48 10 bc 17 	vmovups zmm31,ZMMWORD PTR [rdi+rdx*1+0x78]
  a05b33:	78 00 00 00 
  a05b37:	c5 fc 10 a4 17 b8 00 	vmovups ymm4,YMMWORD PTR [rdi+rdx*1+0xb8]
  a05b3e:	00 00 
  a05b40:	c5 f8 10 94 17 d8 00 	vmovups xmm2,XMMWORD PTR [rdi+rdx*1+0xd8]
  a05b47:	00 00 
  a05b49:	c4 e3 69 21 bc 17 dc 	vinsertps xmm7,xmm2,DWORD PTR [rdi+rdx*1+0xdc],0x10
  a05b50:	00 00 00 10 
  a05b54:	c4 62 79 18 94 17 e0 	vbroadcastss xmm10,DWORD PTR [rdi+rdx*1+0xe0]
  a05b5b:	00 00 00 
  a05b5e:	c5 fb 10 94 17 e8 00 	vmovsd xmm2,QWORD PTR [rdi+rdx*1+0xe8]
  a05b65:	00 00 
  a05b67:	62 f1 7c 48 10 8c 17 	vmovups zmm1,ZMMWORD PTR [rdi+rdx*1+0xf0]
  a05b6e:	f0 00 00 00 
  a05b72:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm1
  a05b79:	01 
  a05b7a:	62 61 7c 28 10 84 17 	vmovups ymm24,YMMWORD PTR [rdi+rdx*1+0x130]
  a05b81:	30 01 00 00 
  a05b85:	62 71 7c 48 28 c3    	vmovaps zmm8,zmm3
  a05b8b:	62 61 7c 48 28 d3    	vmovaps zmm26,zmm3
  a05b91:	c5 78 10 9c 17 50 01 	vmovups xmm11,XMMWORD PTR [rdi+rdx*1+0x150]
  a05b98:	00 00 
  a05b9a:	c4 63 21 21 9c 17 54 	vinsertps xmm11,xmm11,DWORD PTR [rdi+rdx*1+0x154],0x10
  a05ba1:	01 00 00 10 
  a05ba5:	62 61 7c 48 29 3c 24 	vmovaps ZMMWORD PTR [rsp],zmm31
  a05bac:	c4 62 79 18 a4 17 58 	vbroadcastss xmm12,DWORD PTR [rdi+rdx*1+0x158]
  a05bb3:	01 00 00 
  a05bb6:	c5 7b 10 ac 17 60 01 	vmovsd xmm13,QWORD PTR [rdi+rdx*1+0x160]
  a05bbd:	00 00 
  a05bbf:	c4 e3 49 0c c0 03    	vblendps xmm0,xmm6,xmm0,0x3
  a05bc5:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm1
  a05bcc:	05 
  a05bcd:	62 f1 7c 48 10 9c 17 	vmovups zmm3,ZMMWORD PTR [rdi+rdx*1+0x168]
  a05bd4:	68 01 00 00 
  a05bd8:	c4 63 79 21 74 17 6c 	vinsertps xmm14,xmm0,DWORD PTR [rdi+rdx*1+0x6c],0x30
  a05bdf:	30 
  a05be0:	c5 f8 10 84 17 c8 01 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x1c8]
  a05be7:	00 00 
  a05be9:	c4 63 79 21 bc 17 cc 	vinsertps xmm15,xmm0,DWORD PTR [rdi+rdx*1+0x1cc],0x10
  a05bf0:	01 00 00 10 
  a05bf4:	c4 e3 29 0c c7 03    	vblendps xmm0,xmm10,xmm7,0x3
  a05bfa:	c4 e2 79 18 bc 17 d0 	vbroadcastss xmm7,DWORD PTR [rdi+rdx*1+0x1d0]
  a05c01:	01 00 00 
  a05c04:	c4 63 79 21 94 17 e4 	vinsertps xmm10,xmm0,DWORD PTR [rdi+rdx*1+0xe4],0x30
  a05c0b:	00 00 00 30 
  a05c0f:	c5 fc 10 b4 17 a8 01 	vmovups ymm6,YMMWORD PTR [rdi+rdx*1+0x1a8]
  a05c16:	00 00 
  a05c18:	62 e1 ff 08 10 4c 17 	vmovsd xmm17,QWORD PTR [rdi+rdx*1+0x1d8]
  a05c1f:	3b 
  a05c20:	62 f1 7c 48 28 cb    	vmovaps zmm1,zmm3
  a05c26:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a05c2c:	c4 43 19 0c db 03    	vblendps xmm11,xmm12,xmm11,0x3
  a05c32:	62 61 7c 48 10 ac 17 	vmovups zmm29,ZMMWORD PTR [rdi+rdx*1+0x1e0]
  a05c39:	e0 01 00 00 
  a05c3d:	c5 7c 10 a4 17 20 02 	vmovups ymm12,YMMWORD PTR [rdi+rdx*1+0x220]
  a05c44:	00 00 
  a05c46:	c4 63 21 21 9c 17 5c 	vinsertps xmm11,xmm11,DWORD PTR [rdi+rdx*1+0x15c],0x30
  a05c4d:	01 00 00 30 
  a05c51:	62 e1 7c 08 10 54 17 	vmovups xmm18,XMMWORD PTR [rdi+rdx*1+0x240]
  a05c58:	24 
  a05c59:	62 73 6d 00 21 8c 17 	vinsertps xmm9,xmm18,DWORD PTR [rdi+rdx*1+0x244],0x10
  a05c60:	44 02 00 00 10 
  a05c65:	c4 c3 41 0c ff 03    	vblendps xmm7,xmm7,xmm15,0x3
  a05c6b:	c4 62 79 18 bc 17 48 	vbroadcastss xmm15,DWORD PTR [rdi+rdx*1+0x248]
  a05c72:	02 00 00 
  a05c75:	c4 e3 41 21 bc 17 d4 	vinsertps xmm7,xmm7,DWORD PTR [rdi+rdx*1+0x1d4],0x30
  a05c7c:	01 00 00 30 
  a05c80:	c4 43 01 0c c9 03    	vblendps xmm9,xmm15,xmm9,0x3
  a05c86:	c4 63 31 21 8c 17 4c 	vinsertps xmm9,xmm9,DWORD PTR [rdi+rdx*1+0x24c],0x30
  a05c8d:	02 00 00 30 
  a05c91:	62 33 0d 28 18 f0 01 	vinsertf32x4 ymm14,ymm14,xmm16,0x1
  a05c98:	c5 7b 10 bc 17 50 02 	vmovsd xmm15,QWORD PTR [rdi+rdx*1+0x250]
  a05c9f:	00 00 
  a05ca1:	62 81 7c 48 28 dd    	vmovaps zmm19,zmm29
  a05ca7:	62 e1 7c 48 10 84 17 	vmovups zmm16,ZMMWORD PTR [rdi+rdx*1+0x258]
  a05cae:	58 02 00 00 
  a05cb2:	62 e1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm16
  a05cb9:	07 
  a05cba:	c4 e3 2d 18 d2 01    	vinsertf128 ymm2,ymm10,xmm2,0x1
  a05cc0:	c5 78 10 94 17 b8 02 	vmovups xmm10,XMMWORD PTR [rdi+rdx*1+0x2b8]
  a05cc7:	00 00 
  a05cc9:	c4 63 29 21 94 17 bc 	vinsertps xmm10,xmm10,DWORD PTR [rdi+rdx*1+0x2bc],0x10
  a05cd0:	02 00 00 10 
  a05cd4:	c4 43 25 18 dd 01    	vinsertf128 ymm11,ymm11,xmm13,0x1
  a05cda:	c5 7c 10 ac 17 98 02 	vmovups ymm13,YMMWORD PTR [rdi+rdx*1+0x298]
  a05ce1:	00 00 
  a05ce3:	c4 e2 79 18 9c 17 c0 	vbroadcastss xmm3,DWORD PTR [rdi+rdx*1+0x2c0]
  a05cea:	02 00 00 
  a05ced:	62 b3 45 28 18 f9 01 	vinsertf32x4 ymm7,ymm7,xmm17,0x1
  a05cf4:	c4 c3 61 0c da 03    	vblendps xmm3,xmm3,xmm10,0x3
  a05cfa:	c4 e3 61 21 9c 17 c4 	vinsertps xmm3,xmm3,DWORD PTR [rdi+rdx*1+0x2c4],0x30
  a05d01:	02 00 00 30 
  a05d05:	c4 43 35 18 cf 01    	vinsertf128 ymm9,ymm9,xmm15,0x1
  a05d0b:	c5 7b 10 94 17 c8 02 	vmovsd xmm10,QWORD PTR [rdi+rdx*1+0x2c8]
  a05d12:	00 00 
  a05d14:	c4 c3 65 18 da 01    	vinsertf128 ymm3,ymm3,xmm10,0x1
  a05d1a:	62 53 c5 40 1a f6 01 	vinsertf64x4 zmm14,zmm23,ymm14,0x1
  a05d21:	c5 78 10 bc 17 30 03 	vmovups xmm15,XMMWORD PTR [rdi+rdx*1+0x330]
  a05d28:	00 00 
  a05d2a:	c4 63 01 21 bc 17 34 	vinsertps xmm15,xmm15,DWORD PTR [rdi+rdx*1+0x334],0x10
  a05d31:	03 00 00 10 
  a05d35:	62 f3 dd 48 1a d2 01 	vinsertf64x4 zmm2,zmm4,ymm2,0x1
  a05d3c:	62 e1 7c 48 10 ac 17 	vmovups zmm21,ZMMWORD PTR [rdi+rdx*1+0x2d0]
  a05d43:	d0 02 00 00 
  a05d47:	c4 e2 79 18 ac 17 38 	vbroadcastss xmm5,DWORD PTR [rdi+rdx*1+0x338]
  a05d4e:	03 00 00 
  a05d51:	62 53 bd 40 1a db 01 	vinsertf64x4 zmm11,zmm24,ymm11,0x1
  a05d58:	c4 c3 51 0c ef 03    	vblendps xmm5,xmm5,xmm15,0x3
  a05d5e:	c4 e3 51 21 ac 17 3c 	vinsertps xmm5,xmm5,DWORD PTR [rdi+rdx*1+0x33c],0x30
  a05d65:	03 00 00 30 
  a05d69:	62 f3 cd 48 1a f7 01 	vinsertf64x4 zmm6,zmm6,ymm7,0x1
  a05d70:	c5 7c 10 bc 17 10 03 	vmovups ymm15,YMMWORD PTR [rdi+rdx*1+0x310]
  a05d77:	00 00 
  a05d79:	c5 fb 10 bc 17 40 03 	vmovsd xmm7,QWORD PTR [rdi+rdx*1+0x340]
  a05d80:	00 00 
  a05d82:	62 e3 55 28 18 cf 01 	vinsertf32x4 ymm17,ymm5,xmm7,0x1
  a05d89:	62 53 9d 48 1a c9 01 	vinsertf64x4 zmm9,zmm12,ymm9,0x1
  a05d90:	62 b1 7c 48 28 fd    	vmovaps zmm7,zmm21
  a05d96:	62 f1 7c 48 10 a4 17 	vmovups zmm4,ZMMWORD PTR [rdi+rdx*1+0x348]
  a05d9d:	48 03 00 00 
  a05da1:	c5 7c 10 a4 17 88 03 	vmovups ymm12,YMMWORD PTR [rdi+rdx*1+0x388]
  a05da8:	00 00 
  a05daa:	62 f3 95 48 1a db 01 	vinsertf64x4 zmm3,zmm13,ymm3,0x1
  a05db1:	c5 78 10 ac 17 a8 03 	vmovups xmm13,XMMWORD PTR [rdi+rdx*1+0x3a8]
  a05db8:	00 00 
  a05dba:	c4 63 11 21 ac 17 ac 	vinsertps xmm13,xmm13,DWORD PTR [rdi+rdx*1+0x3ac],0x10
  a05dc1:	03 00 00 10 
  a05dc5:	62 a3 85 48 1a c9 01 	vinsertf64x4 zmm17,zmm15,ymm17,0x1
  a05dcc:	c4 62 79 18 bc 17 b0 	vbroadcastss xmm15,DWORD PTR [rdi+rdx*1+0x3b0]
  a05dd3:	03 00 00 
  a05dd6:	c4 43 01 0c ed 03    	vblendps xmm13,xmm15,xmm13,0x3
  a05ddc:	62 52 fd c9 88 f6    	vexpandpd zmm14{k1}{z},zmm14
  a05de2:	c4 63 11 21 ac 17 b4 	vinsertps xmm13,xmm13,DWORD PTR [rdi+rdx*1+0x3b4],0x30
  a05de9:	03 00 00 30 
  a05ded:	c5 7b 10 bc 17 b8 03 	vmovsd xmm15,QWORD PTR [rdi+rdx*1+0x3b8]
  a05df4:	00 00 
  a05df6:	62 e2 fd c9 88 d2    	vexpandpd zmm18{k1}{z},zmm2
  a05dfc:	c4 c3 15 18 d7 01    	vinsertf128 ymm2,ymm13,xmm15,0x1
  a05e02:	62 73 9d 48 1a ea 01 	vinsertf64x4 zmm13,zmm12,ymm2,0x1
  a05e09:	62 e1 7c 48 28 f4    	vmovaps zmm22,zmm4
  a05e0f:	62 42 fd c9 88 db    	vexpandpd zmm27{k1}{z},zmm11
  a05e15:	c5 f8 10 94 17 20 04 	vmovups xmm2,XMMWORD PTR [rdi+rdx*1+0x420]
  a05e1c:	00 00 
  a05e1e:	c4 63 69 21 9c 17 24 	vinsertps xmm11,xmm2,DWORD PTR [rdi+rdx*1+0x424],0x10
  a05e25:	04 00 00 10 
  a05e29:	62 62 fd c9 88 f6    	vexpandpd zmm30{k1}{z},zmm6
  a05e2f:	62 e1 7c 48 10 64 17 	vmovups zmm20,ZMMWORD PTR [rdi+rdx*1+0x3c0]
  a05e36:	0f 
  a05e37:	c4 62 79 18 a4 17 28 	vbroadcastss xmm12,DWORD PTR [rdi+rdx*1+0x428]
  a05e3e:	04 00 00 
  a05e41:	62 d2 fd c9 88 d1    	vexpandpd zmm2{k1}{z},zmm9
  a05e47:	c4 43 19 0c cb 03    	vblendps xmm9,xmm12,xmm11,0x3
  a05e4d:	c4 63 31 21 8c 17 2c 	vinsertps xmm9,xmm9,DWORD PTR [rdi+rdx*1+0x42c],0x30
  a05e54:	04 00 00 30 
  a05e58:	62 62 fd c9 88 cb    	vexpandpd zmm25{k1}{z},zmm3
  a05e5e:	c5 fc 10 9c 17 00 04 	vmovups ymm3,YMMWORD PTR [rdi+rdx*1+0x400]
  a05e65:	00 00 
  a05e67:	c5 7b 10 9c 17 30 04 	vmovsd xmm11,QWORD PTR [rdi+rdx*1+0x430]
  a05e6e:	00 00 
  a05e70:	c4 43 35 18 cb 01    	vinsertf128 ymm9,ymm9,xmm11,0x1
  a05e76:	62 a2 fd c9 88 f9    	vexpandpd zmm23{k1}{z},zmm17
  a05e7c:	62 d3 e5 48 1a d9 01 	vinsertf64x4 zmm3,zmm3,ymm9,0x1
  a05e83:	62 31 7c 48 28 e4    	vmovaps zmm12,zmm20
  a05e89:	62 71 7c 48 10 bc 17 	vmovups zmm15,ZMMWORD PTR [rdi+rdx*1+0x438]
  a05e90:	38 04 00 00 
  a05e94:	62 42 fd c9 88 e5    	vexpandpd zmm28{k1}{z},zmm13
  a05e9a:	c5 78 10 8c 17 98 04 	vmovups xmm9,XMMWORD PTR [rdi+rdx*1+0x498]
  a05ea1:	00 00 
  a05ea3:	c4 63 31 21 8c 17 9c 	vinsertps xmm9,xmm9,DWORD PTR [rdi+rdx*1+0x49c],0x10
  a05eaa:	04 00 00 10 
  a05eae:	62 62 fd c9 88 c3    	vexpandpd zmm24{k1}{z},zmm3
  a05eb4:	c5 fc 10 9c 17 78 04 	vmovups ymm3,YMMWORD PTR [rdi+rdx*1+0x478]
  a05ebb:	00 00 
  a05ebd:	c4 62 79 18 ac 17 a0 	vbroadcastss xmm13,DWORD PTR [rdi+rdx*1+0x4a0]
  a05ec4:	04 00 00 
  a05ec7:	62 f1 7c 48 28 35 af 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff6885af]        # 8e480 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b930>
  a05ece:	85 68 ff 
  a05ed1:	62 52 4d 48 7f c6    	vpermt2ps zmm8,zmm6,zmm14
  a05ed7:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm8
  a05ede:	08 
  a05edf:	c4 43 11 0c c9 03    	vblendps xmm9,xmm13,xmm9,0x3
  a05ee5:	c4 63 31 21 8c 17 a4 	vinsertps xmm9,xmm9,DWORD PTR [rdi+rdx*1+0x4a4],0x30
  a05eec:	04 00 00 30 
  a05ef0:	62 71 7c 48 28 05 c6 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff6885c6]        # 8e4c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b970>
  a05ef7:	85 68 ff 
  a05efa:	62 42 3d 48 7f d6    	vpermt2ps zmm26,zmm8,zmm14
  a05f00:	62 61 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm26
  a05f07:	06 
  a05f08:	c5 7b 10 ac 17 a8 04 	vmovsd xmm13,QWORD PTR [rdi+rdx*1+0x4a8]
  a05f0f:	00 00 
  a05f11:	c4 43 35 18 cd 01    	vinsertf128 ymm9,ymm9,xmm13,0x1
  a05f17:	62 d3 e5 48 1a d9 01 	vinsertf64x4 zmm3,zmm3,ymm9,0x1
  a05f1e:	62 f1 7c 48 28 2c 24 	vmovaps zmm5,ZMMWORD PTR [rsp]
  a05f25:	62 b2 4d 48 7f ea    	vpermt2ps zmm5,zmm6,zmm18
  a05f2b:	62 62 fd c9 88 d3    	vexpandpd zmm26{k1}{z},zmm3
  a05f31:	62 51 7c 48 28 ef    	vmovaps zmm13,zmm15
  a05f37:	62 e1 7c 48 10 8c 17 	vmovups zmm17,ZMMWORD PTR [rdi+rdx*1+0x4b0]
  a05f3e:	b0 04 00 00 
  a05f42:	62 22 3d 48 7f fa    	vpermt2ps zmm31,zmm8,zmm18
  a05f48:	62 61 7c 48 29 3c 24 	vmovaps ZMMWORD PTR [rsp],zmm31
  a05f4f:	c5 f8 10 9c 17 10 05 	vmovups xmm3,XMMWORD PTR [rdi+rdx*1+0x510]
  a05f56:	00 00 
  a05f58:	c4 e3 61 21 9c 17 14 	vinsertps xmm3,xmm3,DWORD PTR [rdi+rdx*1+0x514],0x10
  a05f5f:	05 00 00 10 
  a05f63:	62 71 7c 48 28 5c 24 	vmovaps zmm11,ZMMWORD PTR [rsp+0x140]
  a05f6a:	05 
  a05f6b:	62 12 4d 48 7f db    	vpermt2ps zmm11,zmm6,zmm27
  a05f71:	c5 7c 10 8c 17 f0 04 	vmovups ymm9,YMMWORD PTR [rdi+rdx*1+0x4f0]
  a05f78:	00 00 
  a05f7a:	c4 62 79 18 b4 17 18 	vbroadcastss xmm14,DWORD PTR [rdi+rdx*1+0x518]
  a05f81:	05 00 00 
  a05f84:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x40]
  a05f8b:	01 
  a05f8c:	62 12 3d 48 7f d3    	vpermt2ps zmm10,zmm8,zmm27
  a05f92:	c4 e3 09 0c db 03    	vblendps xmm3,xmm14,xmm3,0x3
  a05f98:	c4 e3 61 21 9c 17 1c 	vinsertps xmm3,xmm3,DWORD PTR [rdi+rdx*1+0x51c],0x30
  a05f9f:	05 00 00 30 
  a05fa3:	62 92 4d 48 7f ce    	vpermt2ps zmm1,zmm6,zmm30
  a05fa9:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm1
  a05fb0:	04 
  a05fb1:	c5 7b 10 b4 17 20 05 	vmovsd xmm14,QWORD PTR [rdi+rdx*1+0x520]
  a05fb8:	00 00 
  a05fba:	c4 c3 65 18 de 01    	vinsertf128 ymm3,ymm3,xmm14,0x1
  a05fc0:	62 f3 b5 48 1a db 01 	vinsertf64x4 zmm3,zmm9,ymm3,0x1
  a05fc7:	62 92 3d 48 7f c6    	vpermt2ps zmm0,zmm8,zmm30
  a05fcd:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm0
  a05fd4:	05 
  a05fd5:	62 62 fd c9 88 db    	vexpandpd zmm27{k1}{z},zmm3
  a05fdb:	62 a1 7c 48 28 d1    	vmovaps zmm18,zmm17
  a05fe1:	62 71 7c 48 10 b4 17 	vmovups zmm14,ZMMWORD PTR [rdi+rdx*1+0x528]
  a05fe8:	28 05 00 00 
  a05fec:	62 e2 4d 48 7f da    	vpermt2ps zmm19,zmm6,zmm2
  a05ff2:	62 e1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm19
  a05ff9:	01 
  a05ffa:	c5 f8 10 9c 17 88 05 	vmovups xmm3,XMMWORD PTR [rdi+rdx*1+0x588]
  a06001:	00 00 
  a06003:	c4 e3 61 21 9c 17 8c 	vinsertps xmm3,xmm3,DWORD PTR [rdi+rdx*1+0x58c],0x10
  a0600a:	05 00 00 10 
  a0600e:	62 62 3d 48 7f ea    	vpermt2ps zmm29,zmm8,zmm2
  a06014:	c5 fc 10 94 17 68 05 	vmovups ymm2,YMMWORD PTR [rdi+rdx*1+0x568]
  a0601b:	00 00 
  a0601d:	c4 62 79 18 8c 17 90 	vbroadcastss xmm9,DWORD PTR [rdi+rdx*1+0x590]
  a06024:	05 00 00 
  a06027:	62 82 4d 48 7f c1    	vpermt2ps zmm16,zmm6,zmm25
  a0602d:	62 e1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm16
  a06034:	0c 
  a06035:	c4 e3 31 0c db 03    	vblendps xmm3,xmm9,xmm3,0x3
  a0603b:	c4 e3 61 21 9c 17 94 	vinsertps xmm3,xmm3,DWORD PTR [rdi+rdx*1+0x594],0x30
  a06042:	05 00 00 30 
  a06046:	62 e1 7c 48 28 44 24 	vmovaps zmm16,ZMMWORD PTR [rsp+0x1c0]
  a0604d:	07 
  a0604e:	62 82 3d 48 7f c1    	vpermt2ps zmm16,zmm8,zmm25
  a06054:	c5 7b 10 8c 17 98 05 	vmovsd xmm9,QWORD PTR [rdi+rdx*1+0x598]
  a0605b:	00 00 
  a0605d:	c4 c3 65 18 d9 01    	vinsertf128 ymm3,ymm3,xmm9,0x1
  a06063:	62 f3 ed 48 1a d3 01 	vinsertf64x4 zmm2,zmm2,ymm3,0x1
  a0606a:	62 b2 4d 48 7f ff    	vpermt2ps zmm7,zmm6,zmm23
  a06070:	c5 f8 10 9c 17 00 06 	vmovups xmm3,XMMWORD PTR [rdi+rdx*1+0x600]
  a06077:	00 00 
  a06079:	c4 e3 61 21 9c 17 04 	vinsertps xmm3,xmm3,DWORD PTR [rdi+rdx*1+0x604],0x10
  a06080:	06 00 00 10 
  a06084:	62 a2 3d 48 7f ef    	vpermt2ps zmm21,zmm8,zmm23
  a0608a:	62 c1 7c 48 28 fe    	vmovaps zmm23,zmm14
  a06090:	c4 62 79 18 8c 17 08 	vbroadcastss xmm9,DWORD PTR [rdi+rdx*1+0x608]
  a06097:	06 00 00 
  a0609a:	62 82 4d 48 7f f4    	vpermt2ps zmm22,zmm6,zmm28
  a060a0:	62 e1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm22
  a060a7:	02 
  a060a8:	62 61 7c 48 10 8c 17 	vmovups zmm25,ZMMWORD PTR [rdi+rdx*1+0x5a0]
  a060af:	a0 05 00 00 
  a060b3:	c4 e3 31 0c db 03    	vblendps xmm3,xmm9,xmm3,0x3
  a060b9:	c5 7c 10 8c 17 e0 05 	vmovups ymm9,YMMWORD PTR [rdi+rdx*1+0x5e0]
  a060c0:	00 00 
  a060c2:	62 92 3d 48 7f e4    	vpermt2ps zmm4,zmm8,zmm28
  a060c8:	62 e1 7c 48 28 f4    	vmovaps zmm22,zmm4
  a060ce:	c4 e3 61 21 9c 17 0c 	vinsertps xmm3,xmm3,DWORD PTR [rdi+rdx*1+0x60c],0x30
  a060d5:	06 00 00 30 
  a060d9:	62 61 ff 08 10 a4 17 	vmovsd xmm28,QWORD PTR [rdi+rdx*1+0x610]
  a060e0:	10 06 00 00 
  a060e4:	62 f2 fd c9 88 d2    	vexpandpd zmm2{k1}{z},zmm2
  a060ea:	62 93 65 28 18 dc 01 	vinsertf32x4 ymm3,ymm3,xmm28,0x1
  a060f1:	62 f3 b5 48 1a db 01 	vinsertf64x4 zmm3,zmm9,ymm3,0x1
  a060f8:	62 62 fd c9 88 f3    	vexpandpd zmm30{k1}{z},zmm3
  a060fe:	62 12 4d 48 7f e0    	vpermt2ps zmm12,zmm6,zmm24
  a06104:	c5 78 10 8c 17 78 06 	vmovups xmm9,XMMWORD PTR [rdi+rdx*1+0x678]
  a0610b:	00 00 
  a0610d:	c4 63 31 21 8c 17 7c 	vinsertps xmm9,xmm9,DWORD PTR [rdi+rdx*1+0x67c],0x10
  a06114:	06 00 00 10 
  a06118:	62 82 3d 48 7f e0    	vpermt2ps zmm20,zmm8,zmm24
  a0611e:	62 01 7c 48 28 c1    	vmovaps zmm24,zmm25
  a06124:	c4 e2 79 18 84 17 80 	vbroadcastss xmm0,DWORD PTR [rdi+rdx*1+0x680]
  a0612b:	06 00 00 
  a0612e:	62 12 4d 48 7f ea    	vpermt2ps zmm13,zmm6,zmm26
  a06134:	c4 c3 79 0c c1 03    	vblendps xmm0,xmm0,xmm9,0x3
  a0613a:	c4 e3 79 21 84 17 84 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x684],0x30
  a06141:	06 00 00 30 
  a06145:	62 12 3d 48 7f fa    	vpermt2ps zmm15,zmm8,zmm26
  a0614b:	c5 7c 10 8c 17 58 06 	vmovups ymm9,YMMWORD PTR [rdi+rdx*1+0x658]
  a06152:	00 00 
  a06154:	62 61 ff 08 10 94 17 	vmovsd xmm26,QWORD PTR [rdi+rdx*1+0x688]
  a0615b:	88 06 00 00 
  a0615f:	62 93 7d 28 18 c2 01 	vinsertf32x4 ymm0,ymm0,xmm26,0x1
  a06166:	62 82 4d 48 7f d3    	vpermt2ps zmm18,zmm6,zmm27
  a0616c:	62 61 7c 08 10 54 17 	vmovups xmm26,XMMWORD PTR [rdi+rdx*1+0x6f0]
  a06173:	6f 
  a06174:	62 f3 2d 00 21 9c 17 	vinsertps xmm3,xmm26,DWORD PTR [rdi+rdx*1+0x6f4],0x10
  a0617b:	f4 06 00 00 10 
  a06180:	62 82 3d 48 7f cb    	vpermt2ps zmm17,zmm8,zmm27
  a06186:	62 f3 b5 48 1a c0 01 	vinsertf64x4 zmm0,zmm9,ymm0,0x1
  a0618d:	c4 62 79 18 8c 17 f8 	vbroadcastss xmm9,DWORD PTR [rdi+rdx*1+0x6f8]
  a06194:	06 00 00 
  a06197:	62 e2 4d 48 7f fa    	vpermt2ps zmm23,zmm6,zmm2
  a0619d:	62 61 7c 48 10 a4 17 	vmovups zmm28,ZMMWORD PTR [rdi+rdx*1+0x618]
  a061a4:	18 06 00 00 
  a061a8:	c4 e3 31 0c db 03    	vblendps xmm3,xmm9,xmm3,0x3
  a061ae:	62 01 7c 48 28 dc    	vmovaps zmm27,zmm28
  a061b4:	62 72 3d 48 7f f2    	vpermt2ps zmm14,zmm8,zmm2
  a061ba:	c4 e3 61 21 94 17 fc 	vinsertps xmm2,xmm3,DWORD PTR [rdi+rdx*1+0x6fc],0x30
  a061c1:	06 00 00 30 
  a061c5:	c5 fb 10 9c 17 00 07 	vmovsd xmm3,QWORD PTR [rdi+rdx*1+0x700]
  a061cc:	00 00 
  a061ce:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a061d4:	c4 e3 6d 18 d3 01    	vinsertf128 ymm2,ymm2,xmm3,0x1
  a061da:	c5 fc 10 9c 17 d0 06 	vmovups ymm3,YMMWORD PTR [rdi+rdx*1+0x6d0]
  a061e1:	00 00 
  a061e3:	62 63 e5 48 1a d2 01 	vinsertf64x4 zmm26,zmm3,ymm2,0x1
  a061ea:	62 02 4d 48 7f c6    	vpermt2ps zmm24,zmm6,zmm30
  a061f0:	c5 f8 10 9c 17 68 07 	vmovups xmm3,XMMWORD PTR [rdi+rdx*1+0x768]
  a061f7:	00 00 
  a061f9:	c4 e3 61 21 9c 17 6c 	vinsertps xmm3,xmm3,DWORD PTR [rdi+rdx*1+0x76c],0x10
  a06200:	07 00 00 10 
  a06204:	62 02 3d 48 7f ce    	vpermt2ps zmm25,zmm8,zmm30
  a0620a:	c4 62 79 18 8c 17 70 	vbroadcastss xmm9,DWORD PTR [rdi+rdx*1+0x770]
  a06211:	07 00 00 
  a06214:	c4 e3 31 0c db 03    	vblendps xmm3,xmm9,xmm3,0x3
  a0621a:	62 62 4d 48 7f d8    	vpermt2ps zmm27,zmm6,zmm0
  a06220:	62 f1 7c 48 10 94 17 	vmovups zmm2,ZMMWORD PTR [rdi+rdx*1+0x690]
  a06227:	90 06 00 00 
  a0622b:	c4 e3 61 21 9c 17 74 	vinsertps xmm3,xmm3,DWORD PTR [rdi+rdx*1+0x774],0x30
  a06232:	07 00 00 30 
  a06236:	62 62 3d 48 7f e0    	vpermt2ps zmm28,zmm8,zmm0
  a0623c:	c5 fb 10 84 17 78 07 	vmovsd xmm0,QWORD PTR [rdi+rdx*1+0x778]
  a06243:	00 00 
  a06245:	c4 e3 65 18 c0 01    	vinsertf128 ymm0,ymm3,xmm0,0x1
  a0624b:	c5 fc 10 9c 17 48 07 	vmovups ymm3,YMMWORD PTR [rdi+rdx*1+0x748]
  a06252:	00 00 
  a06254:	62 12 fd c9 88 ca    	vexpandpd zmm9{k1}{z},zmm26
  a0625a:	62 f3 e5 48 1a c0 01 	vinsertf64x4 zmm0,zmm3,ymm0,0x1
  a06261:	62 f1 7c 48 28 ca    	vmovaps zmm1,zmm2
  a06267:	62 d2 4d 48 7f c9    	vpermt2ps zmm1,zmm6,zmm9
  a0626d:	62 d2 3d 48 7f d1    	vpermt2ps zmm2,zmm8,zmm9
  a06273:	62 61 7c 48 10 bc 17 	vmovups zmm31,ZMMWORD PTR [rdi+rdx*1+0x708]
  a0627a:	08 07 00 00 
  a0627e:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a06284:	62 01 7c 48 28 f7    	vmovaps zmm30,zmm31
  a0628a:	62 62 4d 48 7f f0    	vpermt2ps zmm30,zmm6,zmm0
  a06290:	62 62 3d 48 7f f8    	vpermt2ps zmm31,zmm8,zmm0
  a06296:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x200]
  a0629d:	08 
  a0629e:	62 41 7c 48 58 d4    	vaddps zmm26,zmm0,zmm12
  a062a4:	62 d1 7c 48 5c c4    	vsubps zmm0,zmm0,zmm12
  a062aa:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm0
  a062b1:	08 
  a062b2:	62 91 7c 48 28 c5    	vmovaps zmm0,zmm29
  a062b8:	62 01 14 40 58 e9    	vaddps zmm29,zmm29,zmm25
  a062be:	62 91 7c 48 5c c1    	vsubps zmm0,zmm0,zmm25
  a062c4:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm0
  a062cb:	07 
  a062cc:	62 b1 24 48 58 da    	vaddps zmm3,zmm11,zmm18
  a062d2:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm3
  a062d9:	0b 
  a062da:	62 b1 24 48 5c e2    	vsubps zmm4,zmm11,zmm18
  a062e0:	62 31 2c 48 58 d9    	vaddps zmm11,zmm10,zmm17
  a062e6:	62 a1 2c 48 5c d1    	vsubps zmm18,zmm10,zmm17
  a062ec:	62 e1 54 40 58 da    	vaddps zmm19,zmm21,zmm2
  a062f2:	62 f1 54 40 5c da    	vsubps zmm3,zmm21,zmm2
  a062f8:	62 71 44 48 58 e1    	vaddps zmm12,zmm7,zmm1
  a062fe:	62 f1 44 48 5c c9    	vsubps zmm1,zmm7,zmm1
  a06304:	62 51 54 48 58 d5    	vaddps zmm10,zmm5,zmm13
  a0630a:	62 51 54 48 5c ed    	vsubps zmm13,zmm5,zmm13
  a06310:	62 11 7c 40 58 cc    	vaddps zmm9,zmm16,zmm28
  a06316:	62 81 7c 40 5c c4    	vsubps zmm16,zmm16,zmm28
  a0631c:	62 f1 7c 48 28 14 24 	vmovaps zmm2,ZMMWORD PTR [rsp]
  a06323:	62 51 6c 48 58 c7    	vaddps zmm8,zmm2,zmm15
  a06329:	62 c1 6c 48 5c cf    	vsubps zmm17,zmm2,zmm15
  a0632f:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x300]
  a06336:	0c 
  a06337:	62 91 6c 48 58 eb    	vaddps zmm5,zmm2,zmm27
  a0633d:	62 f1 24 40 5c c2    	vsubps zmm0,zmm27,zmm2
  a06343:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm0
  a0634a:	09 
  a0634b:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x100]
  a06352:	04 
  a06353:	62 21 6c 48 58 df    	vaddps zmm27,zmm2,zmm23
  a06359:	62 21 6c 48 5c e7    	vsubps zmm28,zmm2,zmm23
  a0635f:	62 91 4c 40 58 ff    	vaddps zmm7,zmm22,zmm31
  a06365:	62 81 4c 40 5c ef    	vsubps zmm21,zmm22,zmm31
  a0636b:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x140]
  a06372:	05 
  a06373:	62 41 6c 48 58 fe    	vaddps zmm31,zmm2,zmm14
  a06379:	62 51 6c 48 5c fe    	vsubps zmm15,zmm2,zmm14
  a0637f:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x80]
  a06386:	02 
  a06387:	62 91 4c 48 58 d6    	vaddps zmm2,zmm6,zmm30
  a0638d:	62 71 0c 40 5c f6    	vsubps zmm14,zmm30,zmm6
  a06393:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x180]
  a0639a:	06 
  a0639b:	62 21 4c 48 58 f4    	vaddps zmm30,zmm6,zmm20
  a063a1:	62 21 4c 48 5c cc    	vsubps zmm25,zmm6,zmm20
  a063a7:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x40]
  a063ae:	01 
  a063af:	62 81 4c 48 58 e0    	vaddps zmm20,zmm6,zmm24
  a063b5:	62 e1 3c 40 5c f6    	vsubps zmm22,zmm24,zmm6
  a063bb:	62 b1 5c 48 58 f2    	vaddps zmm6,zmm4,zmm18
  a063c1:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm6
  a063c8:	04 
  a063c9:	62 f1 6c 40 5c e4    	vsubps zmm4,zmm18,zmm4
  a063cf:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm4
  a063d6:	0a 
  a063d7:	62 f1 64 48 5c e1    	vsubps zmm4,zmm3,zmm1
  a063dd:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm4
  a063e4:	02 
  a063e5:	62 f1 74 48 58 cb    	vaddps zmm1,zmm1,zmm3
  a063eb:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm1
  a063f2:	0e 
  a063f3:	62 b1 14 48 58 d8    	vaddps zmm3,zmm13,zmm16
  a063f9:	62 b1 7c 48 58 c9    	vaddps zmm1,zmm0,zmm17
  a063ff:	62 21 7c 48 28 c1    	vmovaps zmm24,zmm17
  a06405:	62 e2 7d 48 18 15 55 	vbroadcastss zmm18,DWORD PTR [rip+0xffffffffff66f255]        # 75664 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b14>
  a0640c:	f2 66 ff 
  a0640f:	62 a1 74 48 59 ca    	vmulps zmm17,zmm1,zmm18
  a06415:	62 f2 7d 48 18 05 e1 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff66f2e1]        # 75700 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2bb0>
  a0641c:	f2 66 ff 
  a0641f:	62 e2 65 48 b8 c8    	vfmadd231ps zmm17,zmm3,zmm0
  a06425:	62 f1 74 48 59 f0    	vmulps zmm6,zmm1,zmm0
  a0642b:	62 f2 6d 40 bc f3    	vfnmadd231ps zmm6,zmm18,zmm3
  a06431:	62 a1 2c 40 58 fc    	vaddps zmm23,zmm26,zmm20
  a06437:	62 b1 2c 40 5c cc    	vsubps zmm1,zmm26,zmm20
  a0643d:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm1
  a06444:	06 
  a06445:	62 a1 24 48 58 e3    	vaddps zmm20,zmm11,zmm19
  a0644b:	62 b1 24 48 5c cb    	vsubps zmm1,zmm11,zmm19
  a06451:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm1
  a06458:	01 
  a06459:	62 e1 2c 48 58 dd    	vaddps zmm19,zmm10,zmm5
  a0645f:	62 f1 2c 48 5c ed    	vsubps zmm5,zmm10,zmm5
  a06465:	62 41 3c 48 58 d1    	vaddps zmm26,zmm8,zmm9
  a0646b:	62 51 3c 48 5c c1    	vsubps zmm8,zmm8,zmm9
  a06471:	62 f1 04 40 58 df    	vaddps zmm3,zmm31,zmm7
  a06477:	62 f1 04 40 5c e7    	vsubps zmm4,zmm31,zmm7
  a0647d:	62 f1 24 40 58 fa    	vaddps zmm7,zmm27,zmm2
  a06483:	62 71 24 40 5c ca    	vsubps zmm9,zmm27,zmm2
  a06489:	62 01 0c 40 58 fd    	vaddps zmm31,zmm30,zmm29
  a0648f:	62 91 0c 40 5c cd    	vsubps zmm1,zmm30,zmm29
  a06495:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm1
  a0649c:	05 
  a0649d:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x2c0]
  a064a4:	0b 
  a064a5:	62 41 74 48 58 dc    	vaddps zmm27,zmm1,zmm12
  a064ab:	62 61 1c 48 5c e9    	vsubps zmm29,zmm12,zmm1
  a064b1:	62 d1 54 48 58 c8    	vaddps zmm1,zmm5,zmm8
  a064b7:	62 f1 7c 48 29 0c 24 	vmovaps ZMMWORD PTR [rsp],zmm1
  a064be:	62 f1 3c 48 5c cd    	vsubps zmm1,zmm8,zmm5
  a064c4:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm1
  a064cb:	0b 
  a064cc:	62 d1 5c 48 5c c9    	vsubps zmm1,zmm4,zmm9
  a064d2:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm1
  a064d9:	0c 
  a064da:	62 f1 34 48 58 ec    	vaddps zmm5,zmm9,zmm4
  a064e0:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x200]
  a064e7:	08 
  a064e8:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x1c0]
  a064ef:	07 
  a064f0:	62 71 74 48 58 c2    	vaddps zmm8,zmm1,zmm2
  a064f6:	62 71 74 48 5c ca    	vsubps zmm9,zmm1,zmm2
  a064fc:	62 31 14 48 5c d0    	vsubps zmm10,zmm13,zmm16
  a06502:	62 31 1c 40 58 e5    	vaddps zmm12,zmm28,zmm21
  a06508:	62 51 0c 48 58 ef    	vaddps zmm13,zmm14,zmm15
  a0650e:	62 e1 14 48 59 c0    	vmulps zmm16,zmm13,zmm0
  a06514:	62 a2 1d 48 b8 c2    	vfmadd231ps zmm16,zmm12,zmm18
  a0651a:	62 31 14 48 59 ea    	vmulps zmm13,zmm13,zmm18
  a06520:	62 52 7d 48 bc ec    	vfnmadd231ps zmm13,zmm0,zmm12
  a06526:	62 f2 7d 48 18 15 6c 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff66ee6c]        # 7539c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x284c>
  a0652d:	ee 66 ff 
  a06530:	62 71 6c 48 59 64 24 	vmulps zmm12,zmm2,ZMMWORD PTR [rsp+0x280]
  a06537:	0a 
  a06538:	62 61 6c 48 59 74 24 	vmulps zmm30,zmm2,ZMMWORD PTR [rsp+0x380]
  a0653f:	0e 
  a06540:	62 91 1c 48 5c ce    	vsubps zmm1,zmm12,zmm30
  a06546:	62 91 1c 48 58 e6    	vaddps zmm4,zmm12,zmm30
  a0654c:	62 71 3c 40 5c 5c 24 	vsubps zmm11,zmm24,ZMMWORD PTR [rsp+0x240]
  a06553:	09 
  a06554:	62 a1 1c 40 5c ed    	vsubps zmm21,zmm28,zmm21
  a0655a:	62 51 04 48 5c f6    	vsubps zmm14,zmm15,zmm14
  a06560:	62 11 4c 40 58 f9    	vaddps zmm15,zmm22,zmm25
  a06566:	62 31 34 40 5c e6    	vsubps zmm12,zmm25,zmm22
  a0656c:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm12
  a06573:	0a 
  a06574:	62 e1 6c 48 59 74 24 	vmulps zmm22,zmm2,ZMMWORD PTR [rsp+0x100]
  a0657b:	04 
  a0657c:	62 61 6c 48 59 64 24 	vmulps zmm28,zmm2,ZMMWORD PTR [rsp+0x80]
  a06583:	02 
  a06584:	62 01 4c 40 58 f4    	vaddps zmm30,zmm22,zmm28
  a0658a:	62 21 1c 40 5c c6    	vsubps zmm24,zmm28,zmm22
  a06590:	62 61 24 48 59 e0    	vmulps zmm28,zmm11,zmm0
  a06596:	62 31 24 48 59 da    	vmulps zmm11,zmm11,zmm18
  a0659c:	62 22 2d 48 b8 e2    	vfmadd231ps zmm28,zmm10,zmm18
  a065a2:	62 52 7d 48 bc da    	vfnmadd231ps zmm11,zmm0,zmm10
  a065a8:	62 31 0c 48 59 d2    	vmulps zmm10,zmm14,zmm18
  a065ae:	62 72 55 40 b8 d0    	vfmadd231ps zmm10,zmm21,zmm0
  a065b4:	62 a1 54 40 59 ea    	vmulps zmm21,zmm21,zmm18
  a065ba:	62 c2 7d 48 bc ee    	vfnmadd231ps zmm21,zmm0,zmm14
  a065c0:	62 81 44 40 58 d3    	vaddps zmm18,zmm23,zmm27
  a065c6:	62 91 44 40 5c c3    	vsubps zmm0,zmm23,zmm27
  a065cc:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  a065d3:	04 
  a065d4:	62 61 2c 40 58 db    	vaddps zmm27,zmm26,zmm3
  a065da:	62 f1 2c 40 5c c3    	vsubps zmm0,zmm26,zmm3
  a065e0:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm0
  a065e7:	08 
  a065e8:	62 21 04 40 58 d4    	vaddps zmm26,zmm31,zmm20
  a065ee:	62 b1 04 40 5c c4    	vsubps zmm0,zmm31,zmm20
  a065f4:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm0
  a065fb:	07 
  a065fc:	62 61 64 40 58 ff    	vaddps zmm31,zmm19,zmm7
  a06602:	62 b1 44 48 5c c3    	vsubps zmm0,zmm7,zmm19
  a06608:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm0
  a0660f:	02 
  a06610:	62 81 3c 48 58 de    	vaddps zmm19,zmm8,zmm30
  a06616:	62 91 3c 48 5c c6    	vsubps zmm0,zmm8,zmm30
  a0661c:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm0
  a06623:	0e 
  a06624:	62 41 4c 48 58 f5    	vaddps zmm30,zmm6,zmm13
  a0662a:	62 41 4c 48 5c cd    	vsubps zmm25,zmm6,zmm13
  a06630:	62 71 04 48 58 c1    	vaddps zmm8,zmm15,zmm1
  a06636:	62 e1 04 48 5c f9    	vsubps zmm23,zmm15,zmm1
  a0663c:	62 31 74 40 58 f8    	vaddps zmm15,zmm17,zmm16
  a06642:	62 a1 7c 40 5c f1    	vsubps zmm22,zmm16,zmm17
  a06648:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x180]
  a0664f:	06 
  a06650:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x40]
  a06657:	01 
  a06658:	62 e1 7c 48 58 c1    	vaddps zmm16,zmm0,zmm1
  a0665e:	62 e1 7c 48 5c e1    	vsubps zmm20,zmm0,zmm1
  a06664:	62 71 6c 48 59 6c 24 	vmulps zmm13,zmm2,ZMMWORD PTR [rsp+0x2c0]
  a0666b:	0b 
  a0666c:	62 f1 54 48 59 ea    	vmulps zmm5,zmm5,zmm2
  a06672:	62 f1 14 48 5c f5    	vsubps zmm6,zmm13,zmm5
  a06678:	62 e1 14 48 58 cd    	vaddps zmm17,zmm13,zmm5
  a0667e:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x140]
  a06685:	05 
  a06686:	62 f1 14 40 58 e8    	vaddps zmm5,zmm29,zmm0
  a0668c:	62 11 7c 48 5c f5    	vsubps zmm14,zmm0,zmm29
  a06692:	62 71 6c 48 59 2c 24 	vmulps zmm13,zmm2,ZMMWORD PTR [rsp]
  a06699:	62 61 6c 48 59 6c 24 	vmulps zmm29,zmm2,ZMMWORD PTR [rsp+0x300]
  a066a0:	0c 
  a066a1:	62 91 14 48 58 d5    	vaddps zmm2,zmm13,zmm29
  a066a7:	62 51 14 40 5c e5    	vsubps zmm12,zmm29,zmm13
  a066ad:	62 f1 7c 48 28 c4    	vmovaps zmm0,zmm4
  a066b3:	62 f1 34 48 58 e4    	vaddps zmm4,zmm9,zmm4
  a066b9:	62 71 34 48 5c e8    	vsubps zmm13,zmm9,zmm0
  a066bf:	62 b1 24 48 58 dd    	vaddps zmm3,zmm11,zmm21
  a066c5:	62 31 24 48 5c cd    	vsubps zmm9,zmm11,zmm21
  a066cb:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x280]
  a066d2:	0a 
  a066d3:	62 91 7c 48 58 c8    	vaddps zmm1,zmm0,zmm24
  a066d9:	62 01 7c 48 5c c0    	vsubps zmm24,zmm0,zmm24
  a066df:	62 d1 1c 40 5c c2    	vsubps zmm0,zmm28,zmm10
  a066e5:	62 51 1c 40 58 d2    	vaddps zmm10,zmm28,zmm10
  a066eb:	62 11 6c 40 58 df    	vaddps zmm11,zmm18,zmm31
  a066f1:	62 01 6c 40 5c ff    	vsubps zmm31,zmm18,zmm31
  a066f7:	62 61 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm31
  a066fe:	10 
  a066ff:	62 81 2c 40 58 eb    	vaddps zmm21,zmm26,zmm27
  a06705:	62 01 2c 40 5c d3    	vsubps zmm26,zmm26,zmm27
  a0670b:	62 61 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm26
  a06712:	17 
  a06713:	62 c1 64 40 58 d7    	vaddps zmm18,zmm19,zmm15
  a06719:	62 d1 64 40 5c ff    	vsubps zmm7,zmm19,zmm15
  a0671f:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm7
  a06726:	0f 
  a06727:	62 11 3c 48 58 fe    	vaddps zmm15,zmm8,zmm30
  a0672d:	62 71 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm15
  a06734:	09 
  a06735:	62 11 3c 48 5c c6    	vsubps zmm8,zmm8,zmm30
  a0673b:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm8
  a06742:	15 
  a06743:	62 e1 7c 40 58 da    	vaddps zmm19,zmm16,zmm2
  a06749:	62 71 7c 40 5c c2    	vsubps zmm8,zmm16,zmm2
  a0674f:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x740],zmm8
  a06756:	1d 
  a06757:	62 61 54 48 58 ee    	vaddps zmm29,zmm5,zmm6
  a0675d:	62 e1 54 48 5c c6    	vsubps zmm16,zmm5,zmm6
  a06763:	62 e1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm16
  a0676a:	16 
  a0676b:	62 61 5c 48 58 d8    	vaddps zmm27,zmm4,zmm0
  a06771:	62 f1 5c 48 5c e0    	vsubps zmm4,zmm4,zmm0
  a06777:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x700],zmm4
  a0677e:	1c 
  a0677f:	62 61 74 48 58 e3    	vaddps zmm28,zmm1,zmm3
  a06785:	62 f1 74 48 5c c3    	vsubps zmm0,zmm1,zmm3
  a0678b:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xa80],zmm0
  a06792:	2a 
  a06793:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x100]
  a0679a:	04 
  a0679b:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x200]
  a067a2:	08 
  a067a3:	62 f1 7c 48 58 e9    	vaddps zmm5,zmm0,zmm1
  a067a9:	62 f1 7c 48 5c d1    	vsubps zmm2,zmm0,zmm1
  a067af:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x6c0],zmm2
  a067b6:	1b 
  a067b7:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x1c0]
  a067be:	07 
  a067bf:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x80]
  a067c6:	02 
  a067c7:	62 61 74 48 58 f0    	vaddps zmm30,zmm1,zmm0
  a067cd:	62 f1 7c 48 5c c1    	vsubps zmm0,zmm0,zmm1
  a067d3:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xa40],zmm0
  a067da:	29 
  a067db:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x380]
  a067e2:	0e 
  a067e3:	62 91 7c 48 58 f1    	vaddps zmm6,zmm0,zmm25
  a067e9:	62 91 7c 48 5c d9    	vsubps zmm3,zmm0,zmm25
  a067ef:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm3
  a067f6:	1a 
  a067f7:	62 21 44 40 58 ce    	vaddps zmm25,zmm23,zmm22
  a067fd:	62 31 44 40 5c fe    	vsubps zmm15,zmm23,zmm22
  a06803:	62 71 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x980],zmm15
  a0680a:	26 
  a0680b:	62 a1 5c 40 58 f1    	vaddps zmm22,zmm20,zmm17
  a06811:	62 a1 5c 40 5c c9    	vsubps zmm17,zmm20,zmm17
  a06817:	62 e1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm17
  a0681e:	19 
  a0681f:	62 d1 0c 48 58 c4    	vaddps zmm0,zmm14,zmm12
  a06825:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm0
  a0682c:	02 
  a0682d:	62 d1 0c 48 5c c4    	vsubps zmm0,zmm14,zmm12
  a06833:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xa00],zmm0
  a0683a:	28 
  a0683b:	62 51 14 48 58 e1    	vaddps zmm12,zmm13,zmm9
  a06841:	62 51 14 48 5c e9    	vsubps zmm13,zmm13,zmm9
  a06847:	62 71 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm13
  a0684e:	18 
  a0684f:	62 51 3c 40 5c f2    	vsubps zmm14,zmm24,zmm10
  a06855:	62 d1 3c 40 58 c2    	vaddps zmm0,zmm24,zmm10
  a0685b:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x9c0],zmm0
  a06862:	27 
  a06863:	62 d1 7c 48 28 c3    	vmovaps zmm0,zmm11
  a06869:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm11
  a06870:	06 
  a06871:	62 f1 7c 48 28 0d 45 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff6c0745]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a06878:	07 6c ff 
  a0687b:	62 92 75 48 7f c7    	vpermt2ps zmm0,zmm1,zmm31
  a06881:	62 71 7c 48 28 c8    	vmovaps zmm9,zmm0
  a06887:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm0
  a0688e:	14 
  a0688f:	62 e1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm18
  a06896:	01 
  a06897:	62 e2 75 48 7f d7    	vpermt2ps zmm18,zmm1,zmm7
  a0689d:	62 e1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x780],zmm18
  a068a4:	1e 
  a068a5:	62 e1 7c 48 29 1c 24 	vmovaps ZMMWORD PTR [rsp],zmm19
  a068ac:	62 c2 75 48 7f d8    	vpermt2ps zmm19,zmm1,zmm8
  a068b2:	62 61 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm27
  a068b9:	05 
  a068ba:	62 62 75 48 7f dc    	vpermt2ps zmm27,zmm1,zmm4
  a068c0:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm5
  a068c7:	04 
  a068c8:	62 f2 75 48 7f ea    	vpermt2ps zmm5,zmm1,zmm2
  a068ce:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm5
  a068d5:	13 
  a068d6:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm6
  a068dd:	0c 
  a068de:	62 f2 75 48 7f f3    	vpermt2ps zmm6,zmm1,zmm3
  a068e4:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm6
  a068eb:	0d 
  a068ec:	62 b1 7c 48 28 c6    	vmovaps zmm0,zmm22
  a068f2:	62 e1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm22
  a068f9:	08 
  a068fa:	62 b2 75 48 7f c1    	vpermt2ps zmm0,zmm1,zmm17
  a06900:	62 f1 7c 48 28 e0    	vmovaps zmm4,zmm0
  a06906:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm0
  a0690d:	12 
  a0690e:	62 d1 7c 48 28 c4    	vmovaps zmm0,zmm12
  a06914:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm12
  a0691b:	07 
  a0691c:	62 d2 75 48 7f c5    	vpermt2ps zmm0,zmm1,zmm13
  a06922:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm0
  a06929:	11 
  a0692a:	62 e1 7c 48 28 3d cc 	vmovaps zmm23,ZMMWORD PTR [rip+0xffffffffff6c05cc]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a06931:	05 6c ff 
  a06934:	62 72 45 40 7f cd    	vpermt2ps zmm9,zmm23,zmm5
  a0693a:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc00],zmm9
  a06941:	30 
  a06942:	62 e2 45 40 7f d6    	vpermt2ps zmm18,zmm23,zmm6
  a06948:	62 e1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0xb80],zmm18
  a0694f:	2e 
  a06950:	62 b1 7c 48 28 d3    	vmovaps zmm2,zmm19
  a06956:	62 f2 45 40 7f d4    	vpermt2ps zmm2,zmm23,zmm4
  a0695c:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0xbc0],zmm2
  a06963:	2f 
  a06964:	62 01 7c 48 28 c3    	vmovaps zmm24,zmm27
  a0696a:	62 62 45 40 7f c0    	vpermt2ps zmm24,zmm23,zmm0
  a06970:	62 f1 b5 48 14 c2    	vunpcklpd zmm0,zmm9,zmm2
  a06976:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm0
  a0697d:	0e 
  a0697e:	62 91 ed 40 14 e0    	vunpcklpd zmm4,zmm18,zmm24
  a06984:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x8c0],zmm4
  a0698b:	23 
  a0698c:	62 f1 7c 48 28 1d 6a 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff6c046a]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a06993:	04 6c ff 
  a06996:	62 f2 65 48 7f c4    	vpermt2ps zmm0,zmm3,zmm4
  a0699c:	62 a1 7c 48 28 d5    	vmovaps zmm18,zmm21
  a069a2:	62 e1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm21
  a069a9:	0b 
  a069aa:	62 82 75 48 7f d2    	vpermt2ps zmm18,zmm1,zmm26
  a069b0:	62 71 7c 48 28 6c 24 	vmovaps zmm13,ZMMWORD PTR [rsp+0x240]
  a069b7:	09 
  a069b8:	62 71 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm13
  a069bf:	0a 
  a069c0:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x540]
  a069c7:	15 
  a069c8:	62 52 75 48 7f e8    	vpermt2ps zmm13,zmm1,zmm8
  a069ce:	62 11 7c 48 28 dd    	vmovaps zmm11,zmm29
  a069d4:	62 22 75 48 7f e8    	vpermt2ps zmm29,zmm1,zmm16
  a069da:	62 11 7c 48 28 d4    	vmovaps zmm10,zmm28
  a069e0:	62 e1 7c 48 28 6c 24 	vmovaps zmm21,ZMMWORD PTR [rsp+0xa80]
  a069e7:	2a 
  a069e8:	62 22 75 48 7f e5    	vpermt2ps zmm28,zmm1,zmm21
  a069ee:	62 81 7c 48 28 f6    	vmovaps zmm22,zmm30
  a069f4:	62 e1 7c 48 28 64 24 	vmovaps zmm20,ZMMWORD PTR [rsp+0xa40]
  a069fb:	29 
  a069fc:	62 22 75 48 7f f4    	vpermt2ps zmm30,zmm1,zmm20
  a06a02:	62 61 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0xb40],zmm30
  a06a09:	2d 
  a06a0a:	62 61 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm25
  a06a11:	09 
  a06a12:	62 42 75 48 7f cf    	vpermt2ps zmm25,zmm1,zmm15
  a06a18:	62 61 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xb00],zmm25
  a06a1f:	2c 
  a06a20:	62 e1 7c 48 28 44 24 	vmovaps zmm16,ZMMWORD PTR [rsp+0x80]
  a06a27:	02 
  a06a28:	62 e1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x940],zmm16
  a06a2f:	25 
  a06a30:	62 e1 7c 48 28 4c 24 	vmovaps zmm17,ZMMWORD PTR [rsp+0xa00]
  a06a37:	28 
  a06a38:	62 a2 75 48 7f c1    	vpermt2ps zmm16,zmm1,zmm17
  a06a3e:	62 b1 7c 48 28 d0    	vmovaps zmm2,zmm16
  a06a44:	62 e1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm16
  a06a4b:	02 
  a06a4c:	62 71 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x900],zmm14
  a06a53:	24 
  a06a54:	62 61 7c 48 28 7c 24 	vmovaps zmm31,ZMMWORD PTR [rsp+0x9c0]
  a06a5b:	27 
  a06a5c:	62 12 75 48 7f f7    	vpermt2ps zmm14,zmm1,zmm31
  a06a62:	62 71 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0xac0],zmm14
  a06a69:	2b 
  a06a6a:	62 a1 7c 48 28 c2    	vmovaps zmm16,zmm18
  a06a70:	62 82 45 40 7f c6    	vpermt2ps zmm16,zmm23,zmm30
  a06a76:	62 d1 7c 48 28 fd    	vmovaps zmm7,zmm13
  a06a7c:	62 92 45 40 7f f9    	vpermt2ps zmm7,zmm23,zmm25
  a06a82:	62 91 7c 48 28 e5    	vmovaps zmm4,zmm29
  a06a88:	62 f2 45 40 7f e2    	vpermt2ps zmm4,zmm23,zmm2
  a06a8e:	62 91 7c 48 28 f4    	vmovaps zmm6,zmm28
  a06a94:	62 d2 45 40 7f f6    	vpermt2ps zmm6,zmm23,zmm14
  a06a9a:	62 f1 fd 40 14 ec    	vunpcklpd zmm5,zmm16,zmm4
  a06aa0:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x800],zmm5
  a06aa7:	20 
  a06aa8:	62 f1 c5 48 14 ce    	vunpcklpd zmm1,zmm7,zmm6
  a06aae:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x7c0],zmm1
  a06ab5:	1f 
  a06ab6:	62 f2 65 48 7f e9    	vpermt2ps zmm5,zmm3,zmm1
  a06abc:	62 71 7c 48 10 49 11 	vmovups zmm9,ZMMWORD PTR [rcx+0x440]
  a06ac3:	62 71 7c 48 10 61 10 	vmovups zmm12,ZMMWORD PTR [rcx+0x400]
  a06aca:	62 d1 54 48 59 cc    	vmulps zmm1,zmm5,zmm12
  a06ad0:	62 d2 7d 48 b8 c9    	vfmadd231ps zmm1,zmm0,zmm9
  a06ad6:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x880],zmm1
  a06add:	22 
  a06ade:	62 d1 7c 48 59 c4    	vmulps zmm0,zmm0,zmm12
  a06ae4:	62 f2 35 48 bc c5    	vfnmadd231ps zmm0,zmm9,zmm5
  a06aea:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x840],zmm0
  a06af1:	21 
  a06af2:	62 f1 7c 48 28 05 84 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6c0484]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a06af9:	04 6c ff 
  a06afc:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x180]
  a06b03:	06 
  a06b04:	62 f2 7d 48 7f 4c 24 	vpermt2ps zmm1,zmm0,ZMMWORD PTR [rsp+0x400]
  a06b0b:	10 
  a06b0c:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm1
  a06b13:	06 
  a06b14:	62 71 7c 48 28 74 24 	vmovaps zmm14,ZMMWORD PTR [rsp+0x40]
  a06b1b:	01 
  a06b1c:	62 72 7d 48 7f 74 24 	vpermt2ps zmm14,zmm0,ZMMWORD PTR [rsp+0x3c0]
  a06b23:	0f 
  a06b24:	62 71 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm14
  a06b2b:	01 
  a06b2c:	62 71 7c 48 28 3c 24 	vmovaps zmm15,ZMMWORD PTR [rsp]
  a06b33:	62 72 7d 48 7f 7c 24 	vpermt2ps zmm15,zmm0,ZMMWORD PTR [rsp+0x740]
  a06b3a:	1d 
  a06b3b:	62 71 7c 48 29 3c 24 	vmovaps ZMMWORD PTR [rsp],zmm15
  a06b42:	62 61 7c 48 28 4c 24 	vmovaps zmm25,ZMMWORD PTR [rsp+0x100]
  a06b49:	04 
  a06b4a:	62 62 7d 48 7f 4c 24 	vpermt2ps zmm25,zmm0,ZMMWORD PTR [rsp+0x6c0]
  a06b51:	1b 
  a06b52:	62 61 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm25
  a06b59:	04 
  a06b5a:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x140]
  a06b61:	05 
  a06b62:	62 f2 7d 48 7f 6c 24 	vpermt2ps zmm5,zmm0,ZMMWORD PTR [rsp+0x700]
  a06b69:	1c 
  a06b6a:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm5
  a06b71:	05 
  a06b72:	62 61 7c 48 28 54 24 	vmovaps zmm26,ZMMWORD PTR [rsp+0x300]
  a06b79:	0c 
  a06b7a:	62 62 7d 48 7f 54 24 	vpermt2ps zmm26,zmm0,ZMMWORD PTR [rsp+0x680]
  a06b81:	1a 
  a06b82:	62 61 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm26
  a06b89:	0c 
  a06b8a:	62 61 7c 48 28 74 24 	vmovaps zmm30,ZMMWORD PTR [rsp+0x200]
  a06b91:	08 
  a06b92:	62 62 7d 48 7f 74 24 	vpermt2ps zmm30,zmm0,ZMMWORD PTR [rsp+0x640]
  a06b99:	19 
  a06b9a:	62 61 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm30
  a06ba1:	08 
  a06ba2:	62 71 7c 48 28 64 24 	vmovaps zmm12,ZMMWORD PTR [rsp+0x2c0]
  a06ba9:	0b 
  a06baa:	62 72 7d 48 7f 64 24 	vpermt2ps zmm12,zmm0,ZMMWORD PTR [rsp+0x5c0]
  a06bb1:	17 
  a06bb2:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm12
  a06bb9:	0b 
  a06bba:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x1c0]
  a06bc1:	07 
  a06bc2:	62 72 7d 48 7f 4c 24 	vpermt2ps zmm9,zmm0,ZMMWORD PTR [rsp+0x600]
  a06bc9:	18 
  a06bca:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm9
  a06bd1:	07 
  a06bd2:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x280]
  a06bd9:	0a 
  a06bda:	62 d2 7d 48 7f d8    	vpermt2ps zmm3,zmm0,zmm8
  a06be0:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm3
  a06be7:	0a 
  a06be8:	62 72 7d 48 7f 5c 24 	vpermt2ps zmm11,zmm0,ZMMWORD PTR [rsp+0x580]
  a06bef:	16 
  a06bf0:	62 a2 7d 48 7f f4    	vpermt2ps zmm22,zmm0,zmm20
  a06bf6:	62 e1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm22
  a06bfd:	15 
  a06bfe:	62 32 7d 48 7f d5    	vpermt2ps zmm10,zmm0,zmm21
  a06c04:	62 e1 7c 48 28 6c 24 	vmovaps zmm21,ZMMWORD PTR [rsp+0x240]
  a06c0b:	09 
  a06c0c:	62 e2 7d 48 7f 6c 24 	vpermt2ps zmm21,zmm0,ZMMWORD PTR [rsp+0x980]
  a06c13:	26 
  a06c14:	62 e1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm21
  a06c1b:	09 
  a06c1c:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x940]
  a06c23:	25 
  a06c24:	62 32 7d 48 7f c1    	vpermt2ps zmm8,zmm0,zmm17
  a06c2a:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x900]
  a06c31:	24 
  a06c32:	62 92 7d 48 7f d7    	vpermt2ps zmm2,zmm0,zmm31
  a06c38:	62 61 7c 48 28 f9    	vmovaps zmm31,zmm1
  a06c3e:	62 02 45 40 7f f9    	vpermt2ps zmm31,zmm23,zmm25
  a06c44:	62 c1 7c 48 28 e6    	vmovaps zmm20,zmm14
  a06c4a:	62 82 45 40 7f e2    	vpermt2ps zmm20,zmm23,zmm26
  a06c50:	62 51 7c 48 28 f7    	vmovaps zmm14,zmm15
  a06c56:	62 12 45 40 7f f6    	vpermt2ps zmm14,zmm23,zmm30
  a06c5c:	62 e1 7c 48 28 cd    	vmovaps zmm17,zmm5
  a06c62:	62 c2 45 40 7f c9    	vpermt2ps zmm17,zmm23,zmm9
  a06c68:	62 41 85 40 15 ce    	vunpckhpd zmm25,zmm31,zmm14
  a06c6e:	62 b1 dd 40 15 e9    	vunpckhpd zmm5,zmm20,zmm17
  a06c74:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm5
  a06c7b:	17 
  a06c7c:	62 91 7c 48 28 c1    	vmovaps zmm0,zmm25
  a06c82:	62 f1 7c 48 28 0d 74 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff6c0174]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a06c89:	01 6c ff 
  a06c8c:	62 f2 75 48 7f c5    	vpermt2ps zmm0,zmm1,zmm5
  a06c92:	62 41 7c 48 28 d4    	vmovaps zmm26,zmm12
  a06c98:	62 22 45 40 7f d6    	vpermt2ps zmm26,zmm23,zmm22
  a06c9e:	62 61 7c 48 28 f3    	vmovaps zmm30,zmm3
  a06ca4:	62 22 45 40 7f f5    	vpermt2ps zmm30,zmm23,zmm21
  a06caa:	62 51 7c 48 28 cb    	vmovaps zmm9,zmm11
  a06cb0:	62 52 45 40 7f c8    	vpermt2ps zmm9,zmm23,zmm8
  a06cb6:	62 51 7c 48 28 fa    	vmovaps zmm15,zmm10
  a06cbc:	62 72 45 40 7f fa    	vpermt2ps zmm15,zmm23,zmm2
  a06cc2:	62 71 7c 48 28 e2    	vmovaps zmm12,zmm2
  a06cc8:	62 c1 ad 40 15 f1    	vunpckhpd zmm22,zmm26,zmm9
  a06cce:	62 d1 8d 40 15 d7    	vunpckhpd zmm2,zmm30,zmm15
  a06cd4:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm2
  a06cdb:	16 
  a06cdc:	62 a1 7c 48 28 fe    	vmovaps zmm23,zmm22
  a06ce2:	62 e2 75 48 7f fa    	vpermt2ps zmm23,zmm1,zmm2
  a06ce8:	62 e1 7c 48 28 e9    	vmovaps zmm21,zmm1
  a06cee:	62 f1 7c 48 10 49 04 	vmovups zmm1,ZMMWORD PTR [rcx+0x100]
  a06cf5:	62 f1 44 40 59 d1    	vmulps zmm2,zmm23,zmm1
  a06cfb:	62 f1 7c 48 59 d9    	vmulps zmm3,zmm0,zmm1
  a06d01:	62 f1 7c 48 10 49 05 	vmovups zmm1,ZMMWORD PTR [rcx+0x140]
  a06d08:	62 f2 7d 48 b8 d1    	vfmadd231ps zmm2,zmm0,zmm1
  a06d0e:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm2
  a06d15:	10 
  a06d16:	62 b2 75 48 bc df    	vfnmadd231ps zmm3,zmm1,zmm23
  a06d1c:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm3
  a06d23:	0f 
  a06d24:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0xc00]
  a06d2b:	30 
  a06d2c:	62 f1 fd 48 15 44 24 	vunpckhpd zmm0,zmm0,ZMMWORD PTR [rsp+0xbc0]
  a06d33:	2f 
  a06d34:	62 f1 fd 40 15 cc    	vunpckhpd zmm1,zmm16,zmm4
  a06d3a:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0xb80]
  a06d41:	2e 
  a06d42:	62 91 ed 48 15 d0    	vunpckhpd zmm2,zmm2,zmm24
  a06d48:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm2
  a06d4f:	19 
  a06d50:	62 f1 c5 48 15 de    	vunpckhpd zmm3,zmm7,zmm6
  a06d56:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm3
  a06d5d:	18 
  a06d5e:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x6c0],zmm0
  a06d65:	1b 
  a06d66:	62 e1 7c 48 28 05 d0 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff6c00d0]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a06d6d:	00 6c ff 
  a06d70:	62 f2 7d 40 7f c2    	vpermt2ps zmm0,zmm16,zmm2
  a06d76:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm1
  a06d7d:	1a 
  a06d7e:	62 f2 7d 40 7f cb    	vpermt2ps zmm1,zmm16,zmm3
  a06d84:	62 f1 7c 48 10 59 17 	vmovups zmm3,ZMMWORD PTR [rcx+0x5c0]
  a06d8b:	62 f1 7c 48 10 61 16 	vmovups zmm4,ZMMWORD PTR [rcx+0x580]
  a06d92:	62 f1 74 48 59 d4    	vmulps zmm2,zmm1,zmm4
  a06d98:	62 f2 7d 48 b8 d3    	vfmadd231ps zmm2,zmm0,zmm3
  a06d9e:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x740],zmm2
  a06da5:	1d 
  a06da6:	62 f1 7c 48 59 c4    	vmulps zmm0,zmm0,zmm4
  a06dac:	62 f2 65 48 bc c1    	vfnmadd231ps zmm0,zmm3,zmm1
  a06db2:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x700],zmm0
  a06db9:	1c 
  a06dba:	62 f1 7c 48 28 2d 7c 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff6c017c]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a06dc1:	01 6c ff 
  a06dc4:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x500]
  a06dcb:	14 
  a06dcc:	62 f2 55 48 7f 4c 24 	vpermt2ps zmm1,zmm5,ZMMWORD PTR [rsp+0x4c0]
  a06dd3:	13 
  a06dd4:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x780]
  a06ddb:	1e 
  a06ddc:	62 f2 55 48 7f 54 24 	vpermt2ps zmm2,zmm5,ZMMWORD PTR [rsp+0x340]
  a06de3:	0d 
  a06de4:	62 e2 55 48 7f 5c 24 	vpermt2ps zmm19,zmm5,ZMMWORD PTR [rsp+0x480]
  a06deb:	12 
  a06dec:	62 e2 55 48 7f 54 24 	vpermt2ps zmm18,zmm5,ZMMWORD PTR [rsp+0xb40]
  a06df3:	2d 
  a06df4:	62 62 55 48 7f 5c 24 	vpermt2ps zmm27,zmm5,ZMMWORD PTR [rsp+0x440]
  a06dfb:	11 
  a06dfc:	62 72 55 48 7f 6c 24 	vpermt2ps zmm13,zmm5,ZMMWORD PTR [rsp+0xb00]
  a06e03:	2c 
  a06e04:	62 b1 f5 48 15 c3    	vunpckhpd zmm0,zmm1,zmm19
  a06e0a:	62 f1 7c 48 28 f1    	vmovaps zmm6,zmm1
  a06e10:	62 91 ed 48 15 cb    	vunpckhpd zmm1,zmm2,zmm27
  a06e16:	62 f2 55 40 7f c1    	vpermt2ps zmm0,zmm21,zmm1
  a06e1c:	62 62 55 48 7f 6c 24 	vpermt2ps zmm29,zmm5,ZMMWORD PTR [rsp+0x80]
  a06e23:	02 
  a06e24:	62 62 55 48 7f 64 24 	vpermt2ps zmm28,zmm5,ZMMWORD PTR [rsp+0xac0]
  a06e2b:	2b 
  a06e2c:	62 91 ed 40 15 cd    	vunpckhpd zmm1,zmm18,zmm29
  a06e32:	62 91 95 48 15 dc    	vunpckhpd zmm3,zmm13,zmm28
  a06e38:	62 f2 55 40 7f cb    	vpermt2ps zmm1,zmm21,zmm3
  a06e3e:	62 f1 7c 48 10 59 1d 	vmovups zmm3,ZMMWORD PTR [rcx+0x740]
  a06e45:	62 f1 7c 48 10 61 1c 	vmovups zmm4,ZMMWORD PTR [rcx+0x700]
  a06e4c:	62 f1 74 48 59 fc    	vmulps zmm7,zmm1,zmm4
  a06e52:	62 f2 7d 48 b8 fb    	vfmadd231ps zmm7,zmm0,zmm3
  a06e58:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm7
  a06e5f:	02 
  a06e60:	62 f1 7c 48 59 c4    	vmulps zmm0,zmm0,zmm4
  a06e66:	62 f2 65 48 bc c1    	vfnmadd231ps zmm0,zmm3,zmm1
  a06e6c:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm0
  a06e73:	14 
  a06e74:	62 b1 cd 48 14 c3    	vunpcklpd zmm0,zmm6,zmm19
  a06e7a:	62 91 ed 48 14 d3    	vunpcklpd zmm2,zmm2,zmm27
  a06e80:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm2
  a06e87:	12 
  a06e88:	62 91 ed 40 14 cd    	vunpcklpd zmm1,zmm18,zmm29
  a06e8e:	62 91 95 48 14 dc    	vunpcklpd zmm3,zmm13,zmm28
  a06e94:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm3
  a06e9b:	11 
  a06e9c:	62 e1 7c 48 28 e8    	vmovaps zmm21,zmm0
  a06ea2:	62 f2 7d 40 7f c2    	vpermt2ps zmm0,zmm16,zmm2
  a06ea8:	62 e1 7c 48 28 d1    	vmovaps zmm18,zmm1
  a06eae:	62 f2 7d 40 7f cb    	vpermt2ps zmm1,zmm16,zmm3
  a06eb4:	62 f1 7c 48 10 51 1a 	vmovups zmm2,ZMMWORD PTR [rcx+0x680]
  a06ebb:	62 f1 74 48 59 da    	vmulps zmm3,zmm1,zmm2
  a06ec1:	62 f1 7c 48 59 e2    	vmulps zmm4,zmm0,zmm2
  a06ec7:	62 f1 7c 48 10 51 1b 	vmovups zmm2,ZMMWORD PTR [rcx+0x6c0]
  a06ece:	62 f2 7d 48 b8 da    	vfmadd231ps zmm3,zmm0,zmm2
  a06ed4:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm3
  a06edb:	13 
  a06edc:	62 f2 6d 48 bc e1    	vfnmadd231ps zmm4,zmm2,zmm1
  a06ee2:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm4
  a06ee9:	0d 
  a06eea:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x180]
  a06ef1:	06 
  a06ef2:	62 f2 55 48 7f 44 24 	vpermt2ps zmm0,zmm5,ZMMWORD PTR [rsp+0x100]
  a06ef9:	04 
  a06efa:	62 f1 7c 48 28 1c 24 	vmovaps zmm3,ZMMWORD PTR [rsp]
  a06f01:	62 f2 55 48 7f 5c 24 	vpermt2ps zmm3,zmm5,ZMMWORD PTR [rsp+0x200]
  a06f08:	08 
  a06f09:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x40]
  a06f10:	01 
  a06f11:	62 f2 55 48 7f 74 24 	vpermt2ps zmm6,zmm5,ZMMWORD PTR [rsp+0x300]
  a06f18:	0c 
  a06f19:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x140]
  a06f20:	05 
  a06f21:	62 f2 55 48 7f 7c 24 	vpermt2ps zmm7,zmm5,ZMMWORD PTR [rsp+0x1c0]
  a06f28:	07 
  a06f29:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x2c0]
  a06f30:	0b 
  a06f31:	62 f2 55 48 7f 64 24 	vpermt2ps zmm4,zmm5,ZMMWORD PTR [rsp+0x540]
  a06f38:	15 
  a06f39:	62 52 55 48 7f d8    	vpermt2ps zmm11,zmm5,zmm8
  a06f3f:	62 e1 7c 48 28 7c 24 	vmovaps zmm23,ZMMWORD PTR [rsp+0x280]
  a06f46:	0a 
  a06f47:	62 e2 55 48 7f 7c 24 	vpermt2ps zmm23,zmm5,ZMMWORD PTR [rsp+0x240]
  a06f4e:	09 
  a06f4f:	62 52 55 48 7f d4    	vpermt2ps zmm10,zmm5,zmm12
  a06f55:	62 f1 fd 48 15 cb    	vunpckhpd zmm1,zmm0,zmm3
  a06f5b:	62 71 7c 48 28 c3    	vmovaps zmm8,zmm3
  a06f61:	62 f1 7c 48 28 e8    	vmovaps zmm5,zmm0
  a06f67:	62 f1 7c 48 28 c1    	vmovaps zmm0,zmm1
  a06f6d:	62 61 cd 48 15 df    	vunpckhpd zmm27,zmm6,zmm7
  a06f73:	62 92 7d 40 7f cb    	vpermt2ps zmm1,zmm16,zmm27
  a06f79:	62 51 dd 48 15 eb    	vunpckhpd zmm13,zmm4,zmm11
  a06f7f:	62 d1 7c 48 28 d5    	vmovaps zmm2,zmm13
  a06f85:	62 d1 c5 40 15 da    	vunpckhpd zmm3,zmm23,zmm10
  a06f8b:	62 72 7d 40 7f eb    	vpermt2ps zmm13,zmm16,zmm3
  a06f91:	62 e1 7c 48 10 59 0f 	vmovups zmm19,ZMMWORD PTR [rcx+0x3c0]
  a06f98:	62 61 7c 48 10 61 0e 	vmovups zmm28,ZMMWORD PTR [rcx+0x380]
  a06f9f:	62 01 14 48 59 c4    	vmulps zmm24,zmm13,zmm28
  a06fa5:	62 22 75 48 b8 c3    	vfmadd231ps zmm24,zmm1,zmm19
  a06fab:	62 01 74 48 59 e4    	vmulps zmm28,zmm1,zmm28
  a06fb1:	62 42 65 40 bc e5    	vfnmadd231ps zmm28,zmm19,zmm13
  a06fb7:	62 d1 85 40 14 ce    	vunpcklpd zmm1,zmm31,zmm14
  a06fbd:	62 31 dd 40 14 e9    	vunpcklpd zmm13,zmm20,zmm17
  a06fc3:	62 71 7c 48 29 2c 24 	vmovaps ZMMWORD PTR [rsp],zmm13
  a06fca:	62 51 ad 40 14 c9    	vunpcklpd zmm9,zmm26,zmm9
  a06fd0:	62 41 8d 40 14 d7    	vunpcklpd zmm26,zmm30,zmm15
  a06fd6:	62 71 7c 48 28 e1    	vmovaps zmm12,zmm1
  a06fdc:	62 d2 7d 40 7f cd    	vpermt2ps zmm1,zmm16,zmm13
  a06fe2:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm9
  a06fe9:	01 
  a06fea:	62 12 7d 40 7f ca    	vpermt2ps zmm9,zmm16,zmm26
  a06ff0:	62 71 7c 48 10 69 02 	vmovups zmm13,ZMMWORD PTR [rcx+0x80]
  a06ff7:	62 c1 34 48 59 dd    	vmulps zmm19,zmm9,zmm13
  a06ffd:	62 41 74 48 59 ed    	vmulps zmm29,zmm1,zmm13
  a07003:	62 71 7c 48 10 69 03 	vmovups zmm13,ZMMWORD PTR [rcx+0xc0]
  a0700a:	62 c2 75 48 b8 dd    	vfmadd231ps zmm19,zmm1,zmm13
  a07010:	62 42 15 48 bc e9    	vfnmadd231ps zmm29,zmm13,zmm9
  a07016:	62 51 d5 48 14 e8    	vunpcklpd zmm13,zmm5,zmm8
  a0701c:	62 51 dd 48 14 c3    	vunpcklpd zmm8,zmm4,zmm11
  a07022:	62 e1 cd 48 14 e7    	vunpcklpd zmm20,zmm6,zmm7
  a07028:	62 d1 c5 40 14 fa    	vunpcklpd zmm7,zmm23,zmm10
  a0702e:	62 d1 7c 48 28 cd    	vmovaps zmm1,zmm13
  a07034:	62 71 7c 48 28 35 c2 	vmovaps zmm14,ZMMWORD PTR [rip+0xffffffffff6bfdc2]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a0703b:	fd 6b ff 
  a0703e:	62 b2 0d 48 7f cc    	vpermt2ps zmm1,zmm14,zmm20
  a07044:	62 51 7c 48 28 c8    	vmovaps zmm9,zmm8
  a0704a:	62 72 0d 48 7f cf    	vpermt2ps zmm9,zmm14,zmm7
  a07050:	62 71 7c 48 10 59 09 	vmovups zmm11,ZMMWORD PTR [rcx+0x240]
  a07057:	62 71 7c 48 10 51 08 	vmovups zmm10,ZMMWORD PTR [rcx+0x200]
  a0705e:	62 51 34 48 59 fa    	vmulps zmm15,zmm9,zmm10
  a07064:	62 52 75 48 b8 fb    	vfmadd231ps zmm15,zmm1,zmm11
  a0706a:	62 51 74 48 59 d2    	vmulps zmm10,zmm1,zmm10
  a07070:	62 52 25 48 bc d1    	vfnmadd231ps zmm10,zmm11,zmm9
  a07076:	62 92 0d 48 7f c3    	vpermt2ps zmm0,zmm14,zmm27
  a0707c:	62 f2 0d 48 7f d3    	vpermt2ps zmm2,zmm14,zmm3
  a07082:	62 f1 7c 48 10 49 0d 	vmovups zmm1,ZMMWORD PTR [rcx+0x340]
  a07089:	62 f1 7c 48 10 59 0c 	vmovups zmm3,ZMMWORD PTR [rcx+0x300]
  a07090:	62 71 7c 48 59 db    	vmulps zmm11,zmm0,zmm3
  a07096:	62 72 6d 48 bc d9    	vfnmadd231ps zmm11,zmm2,zmm1
  a0709c:	62 61 6c 48 59 f3    	vmulps zmm30,zmm2,zmm3
  a070a2:	62 62 75 48 b8 f0    	vfmadd231ps zmm30,zmm1,zmm0
  a070a8:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x380]
  a070af:	0e 
  a070b0:	62 f2 7d 40 7f 54 24 	vpermt2ps zmm2,zmm16,ZMMWORD PTR [rsp+0x8c0]
  a070b7:	23 
  a070b8:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x800]
  a070bf:	20 
  a070c0:	62 f2 7d 40 7f 5c 24 	vpermt2ps zmm3,zmm16,ZMMWORD PTR [rsp+0x7c0]
  a070c7:	1f 
  a070c8:	62 f1 7c 48 10 41 13 	vmovups zmm0,ZMMWORD PTR [rcx+0x4c0]
  a070cf:	62 f1 7c 48 10 49 12 	vmovups zmm1,ZMMWORD PTR [rcx+0x480]
  a070d6:	62 e1 6c 48 59 c9    	vmulps zmm17,zmm2,zmm1
  a070dc:	62 e2 65 48 bc c8    	vfnmadd231ps zmm17,zmm3,zmm0
  a070e2:	62 61 64 48 59 f9    	vmulps zmm31,zmm3,zmm1
  a070e8:	62 62 7d 48 b8 fa    	vfmadd231ps zmm31,zmm0,zmm2
  a070ee:	62 62 7d 40 7f 4c 24 	vpermt2ps zmm25,zmm16,ZMMWORD PTR [rsp+0x5c0]
  a070f5:	17 
  a070f6:	62 e2 7d 40 7f 74 24 	vpermt2ps zmm22,zmm16,ZMMWORD PTR [rsp+0x580]
  a070fd:	16 
  a070fe:	62 f1 7c 48 10 41 07 	vmovups zmm0,ZMMWORD PTR [rcx+0x1c0]
  a07105:	62 f1 7c 48 10 51 06 	vmovups zmm2,ZMMWORD PTR [rcx+0x180]
  a0710c:	62 f1 34 40 59 ca    	vmulps zmm1,zmm25,zmm2
  a07112:	62 f2 4d 40 bc c8    	vfnmadd231ps zmm1,zmm22,zmm0
  a07118:	62 f1 4c 40 59 ea    	vmulps zmm5,zmm22,zmm2
  a0711e:	62 92 7d 48 b8 e9    	vfmadd231ps zmm5,zmm0,zmm25
  a07124:	62 e2 0d 48 7f 6c 24 	vpermt2ps zmm21,zmm14,ZMMWORD PTR [rsp+0x480]
  a0712b:	12 
  a0712c:	62 e2 0d 48 7f 54 24 	vpermt2ps zmm18,zmm14,ZMMWORD PTR [rsp+0x440]
  a07133:	11 
  a07134:	62 f1 7c 48 10 59 19 	vmovups zmm3,ZMMWORD PTR [rcx+0x640]
  a0713b:	62 71 7c 48 10 49 18 	vmovups zmm9,ZMMWORD PTR [rcx+0x600]
  a07142:	62 d1 54 40 59 c1    	vmulps zmm0,zmm21,zmm9
  a07148:	62 f2 6d 40 bc c3    	vfnmadd231ps zmm0,zmm18,zmm3
  a0714e:	62 41 6c 40 59 c9    	vmulps zmm25,zmm18,zmm9
  a07154:	62 22 65 48 b8 cd    	vfmadd231ps zmm25,zmm3,zmm21
  a0715a:	62 32 7d 40 7f ec    	vpermt2ps zmm13,zmm16,zmm20
  a07160:	62 72 7d 40 7f c7    	vpermt2ps zmm8,zmm16,zmm7
  a07166:	62 f1 7c 48 10 59 0b 	vmovups zmm3,ZMMWORD PTR [rcx+0x2c0]
  a0716d:	62 f1 7c 48 10 61 0a 	vmovups zmm4,ZMMWORD PTR [rcx+0x280]
  a07174:	62 f1 3c 48 59 d4    	vmulps zmm2,zmm8,zmm4
  a0717a:	62 f2 15 48 b8 d3    	vfmadd231ps zmm2,zmm13,zmm3
  a07180:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm2
  a07187:	06 
  a07188:	62 f1 14 48 59 d4    	vmulps zmm2,zmm13,zmm4
  a0718e:	62 d2 65 48 bc d0    	vfnmadd231ps zmm2,zmm3,zmm8
  a07194:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm2
  a0719b:	05 
  a0719c:	62 72 0d 48 7f 24 24 	vpermt2ps zmm12,zmm14,ZMMWORD PTR [rsp]
  a071a3:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm12
  a071aa:	04 
  a071ab:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x6c0]
  a071b2:	1b 
  a071b3:	62 f2 0d 48 7f 74 24 	vpermt2ps zmm6,zmm14,ZMMWORD PTR [rsp+0x640]
  a071ba:	19 
  a071bb:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x680]
  a071c2:	1a 
  a071c3:	62 f2 0d 48 7f 64 24 	vpermt2ps zmm4,zmm14,ZMMWORD PTR [rsp+0x600]
  a071ca:	18 
  a071cb:	62 f1 7c 48 10 59 14 	vmovups zmm3,ZMMWORD PTR [rcx+0x500]
  a071d2:	62 71 7c 48 28 6c 24 	vmovaps zmm13,ZMMWORD PTR [rsp+0x40]
  a071d9:	01 
  a071da:	62 12 0d 48 7f ea    	vpermt2ps zmm13,zmm14,zmm26
  a071e0:	62 e1 5c 48 59 f3    	vmulps zmm22,zmm4,zmm3
  a071e6:	62 f1 7c 48 28 d6    	vmovaps zmm2,zmm6
  a071ec:	62 f1 4c 48 59 f3    	vmulps zmm6,zmm6,zmm3
  a071f2:	62 f1 7c 48 10 59 15 	vmovups zmm3,ZMMWORD PTR [rcx+0x540]
  a071f9:	62 e2 6d 48 b8 f3    	vfmadd231ps zmm22,zmm2,zmm3
  a071ff:	62 f2 65 48 bc f4    	vfnmadd231ps zmm6,zmm3,zmm4
  a07205:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm6
  a0720c:	0c 
  a0720d:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x740]
  a07214:	1d 
  a07215:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x80]
  a0721c:	02 
  a0721d:	62 f1 64 48 58 d7    	vaddps zmm2,zmm3,zmm7
  a07223:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm2
  a0722a:	01 
  a0722b:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x700]
  a07232:	1c 
  a07233:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x500]
  a0723a:	14 
  a0723b:	62 f1 6c 48 5c e6    	vsubps zmm4,zmm2,zmm6
  a07241:	62 f1 6c 48 58 d6    	vaddps zmm2,zmm2,zmm6
  a07247:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm2
  a0724e:	08 
  a0724f:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x880]
  a07256:	22 
  a07257:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x400]
  a0725e:	10 
  a0725f:	62 71 6c 48 58 c6    	vaddps zmm8,zmm2,zmm6
  a07265:	62 71 7c 48 29 04 24 	vmovaps ZMMWORD PTR [rsp],zmm8
  a0726c:	62 f1 64 48 5c ff    	vsubps zmm7,zmm3,zmm7
  a07272:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x840]
  a07279:	21 
  a0727a:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x3c0]
  a07281:	0f 
  a07282:	62 41 64 48 5c d8    	vsubps zmm27,zmm3,zmm8
  a07288:	62 d1 64 48 58 d8    	vaddps zmm3,zmm3,zmm8
  a0728e:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm3
  a07295:	02 
  a07296:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x340]
  a0729d:	0d 
  a0729e:	62 91 3c 48 5c dc    	vsubps zmm3,zmm8,zmm28
  a072a4:	62 11 3c 48 58 c4    	vaddps zmm8,zmm8,zmm28
  a072aa:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm8
  a072b1:	07 
  a072b2:	62 c1 64 40 58 d7    	vaddps zmm18,zmm19,zmm15
  a072b8:	62 e1 6c 48 5c fe    	vsubps zmm23,zmm2,zmm6
  a072be:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x4c0]
  a072c5:	13 
  a072c6:	62 81 6c 48 58 c0    	vaddps zmm16,zmm2,zmm24
  a072cc:	62 81 6c 48 5c e8    	vsubps zmm21,zmm2,zmm24
  a072d2:	62 41 14 40 5c e2    	vsubps zmm28,zmm29,zmm10
  a072d8:	62 d1 14 40 58 d2    	vaddps zmm2,zmm29,zmm10
  a072de:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm2
  a072e5:	09 
  a072e6:	62 21 24 48 5c e9    	vsubps zmm29,zmm11,zmm17
  a072ec:	62 31 24 48 58 f1    	vaddps zmm14,zmm11,zmm17
  a072f2:	62 f1 74 48 5c d0    	vsubps zmm2,zmm1,zmm0
  a072f8:	62 c1 64 40 5c df    	vsubps zmm19,zmm19,zmm15
  a072fe:	62 11 54 48 58 d9    	vaddps zmm11,zmm5,zmm25
  a07304:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x780],zmm11
  a0730b:	1e 
  a0730c:	62 71 74 48 58 e0    	vaddps zmm12,zmm1,zmm0
  a07312:	62 91 54 48 5c f1    	vsubps zmm6,zmm5,zmm25
  a07318:	62 72 7d 48 18 0d 36 	vbroadcastss zmm9,DWORD PTR [rip+0xffffffffff66e436]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a0731f:	e4 66 ff 
  a07322:	62 41 5c 48 59 d1    	vmulps zmm26,zmm4,zmm9
  a07328:	62 81 0c 40 58 e7    	vaddps zmm20,zmm30,zmm31
  a0732e:	62 01 0c 40 5c f7    	vsubps zmm30,zmm30,zmm31
  a07334:	62 41 1c 40 59 f9    	vmulps zmm31,zmm28,zmm9
  a0733a:	62 72 7d 48 18 15 5c 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff66e05c]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a07341:	e0 66 ff 
  a07344:	62 42 25 40 b8 d2    	vfmadd231ps zmm26,zmm27,zmm10
  a0734a:	62 d1 24 40 59 c9    	vmulps zmm1,zmm27,zmm9
  a07350:	62 f2 2d 48 bc cc    	vfnmadd231ps zmm1,zmm10,zmm4
  a07356:	62 41 14 40 59 c1    	vmulps zmm24,zmm29,zmm9
  a0735c:	62 42 65 48 b8 fa    	vfmadd231ps zmm31,zmm3,zmm10
  a07362:	62 41 64 48 59 c9    	vmulps zmm25,zmm3,zmm9
  a07368:	62 02 2d 48 bc cc    	vfnmadd231ps zmm25,zmm10,zmm28
  a0736e:	62 41 44 48 59 d9    	vmulps zmm27,zmm7,zmm9
  a07374:	62 42 6d 48 b8 c2    	vfmadd231ps zmm24,zmm2,zmm10
  a0737a:	62 d1 6c 48 59 d1    	vmulps zmm2,zmm2,zmm9
  a07380:	62 92 2d 48 bc d5    	vfnmadd231ps zmm2,zmm10,zmm29
  a07386:	62 41 64 40 59 e1    	vmulps zmm28,zmm19,zmm9
  a0738c:	62 42 45 40 b8 da    	vfmadd231ps zmm27,zmm23,zmm10
  a07392:	62 51 44 40 59 c1    	vmulps zmm8,zmm23,zmm9
  a07398:	62 72 2d 48 bc c7    	vfnmadd231ps zmm8,zmm10,zmm7
  a0739e:	62 41 0c 40 59 e9    	vmulps zmm29,zmm30,zmm9
  a073a4:	62 42 55 40 b8 e2    	vfmadd231ps zmm28,zmm21,zmm10
  a073aa:	62 d1 54 40 59 c1    	vmulps zmm0,zmm21,zmm9
  a073b0:	62 b2 2d 48 bc c3    	vfnmadd231ps zmm0,zmm10,zmm19
  a073b6:	62 f2 7d 48 18 2d 84 	vbroadcastss zmm5,DWORD PTR [rip+0xffffffffff66e284]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a073bd:	e2 66 ff 
  a073c0:	62 f1 7c 48 28 dd    	vmovaps zmm3,zmm5
  a073c6:	62 42 4d 48 b8 ea    	vfmadd231ps zmm29,zmm6,zmm10
  a073cc:	62 c1 7c 48 28 dd    	vmovaps zmm19,zmm13
  a073d2:	62 d2 25 48 ac dd    	vfnmadd213ps zmm3,zmm11,zmm13
  a073d8:	62 f2 7d 48 18 25 06 	vbroadcastss zmm4,DWORD PTR [rip+0xffffffffff66e306]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a073df:	e3 66 ff 
  a073e2:	62 f2 5d 40 b8 dc    	vfmadd231ps zmm3,zmm20,zmm4
  a073e8:	62 e1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm20
  a073ef:	10 
  a073f0:	62 d1 4c 48 59 f9    	vmulps zmm7,zmm6,zmm9
  a073f6:	62 92 2d 48 bc fe    	vfnmadd231ps zmm7,zmm10,zmm30
  a073fc:	62 f1 6c 48 58 f3    	vaddps zmm6,zmm2,zmm3
  a07402:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm6
  a07409:	0b 
  a0740a:	62 f1 64 48 5c d2    	vsubps zmm2,zmm3,zmm2
  a07410:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm2
  a07417:	0e 
  a07418:	62 f1 7c 48 28 d5    	vmovaps zmm2,zmm5
  a0741e:	62 a1 7c 48 28 ce    	vmovaps zmm17,zmm22
  a07424:	62 a1 7c 48 28 f8    	vmovaps zmm23,zmm16
  a0742a:	62 e1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm16
  a07431:	0d 
  a07432:	62 b2 7d 40 ac d6    	vfnmadd213ps zmm2,zmm16,zmm22
  a07438:	62 a1 7c 48 28 ea    	vmovaps zmm21,zmm18
  a0743e:	62 e1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm18
  a07445:	0f 
  a07446:	62 f2 6d 40 b8 d4    	vfmadd231ps zmm2,zmm18,zmm4
  a0744c:	62 91 6c 48 58 d9    	vaddps zmm3,zmm2,zmm25
  a07452:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm3
  a07459:	12 
  a0745a:	62 91 6c 48 5c d1    	vsubps zmm2,zmm2,zmm25
  a07460:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x8c0],zmm2
  a07467:	23 
  a07468:	62 f1 7c 48 28 d5    	vmovaps zmm2,zmm5
  a0746e:	62 71 7c 48 28 5c 24 	vmovaps zmm11,ZMMWORD PTR [rsp+0x180]
  a07475:	06 
  a07476:	62 71 7c 48 28 3c 24 	vmovaps zmm15,ZMMWORD PTR [rsp]
  a0747d:	62 d2 05 48 ac d3    	vfnmadd213ps zmm2,zmm15,zmm11
  a07483:	62 e1 7c 48 28 54 24 	vmovaps zmm18,ZMMWORD PTR [rsp+0x40]
  a0748a:	01 
  a0748b:	62 f2 6d 40 b8 d4    	vfmadd231ps zmm2,zmm18,zmm4
  a07491:	62 f1 6c 48 58 d9    	vaddps zmm3,zmm2,zmm1
  a07497:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm3
  a0749e:	11 
  a0749f:	62 f1 6c 48 5c c9    	vsubps zmm1,zmm2,zmm1
  a074a5:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x840],zmm1
  a074ac:	21 
  a074ad:	62 f1 7c 48 28 cd    	vmovaps zmm1,zmm5
  a074b3:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x100]
  a074ba:	04 
  a074bb:	62 d2 1d 48 ac c9    	vfnmadd213ps zmm1,zmm12,zmm9
  a074c1:	62 c1 7c 48 28 f6    	vmovaps zmm22,zmm14
  a074c7:	62 f2 0d 48 b8 cc    	vfmadd231ps zmm1,zmm14,zmm4
  a074cd:	62 f1 74 48 5c d7    	vsubps zmm2,zmm1,zmm7
  a074d3:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm2
  a074da:	0a 
  a074db:	62 f1 74 48 58 cf    	vaddps zmm1,zmm1,zmm7
  a074e1:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x880],zmm1
  a074e8:	22 
  a074e9:	62 f1 7c 48 28 cd    	vmovaps zmm1,zmm5
  a074ef:	62 71 7c 48 28 74 24 	vmovaps zmm14,ZMMWORD PTR [rsp+0x80]
  a074f6:	02 
  a074f7:	62 61 7c 48 28 4c 24 	vmovaps zmm25,ZMMWORD PTR [rsp+0x140]
  a074fe:	05 
  a074ff:	62 92 0d 48 ac c9    	vfnmadd213ps zmm1,zmm14,zmm25
  a07505:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x200]
  a0750c:	08 
  a0750d:	62 f2 4d 48 b8 cc    	vfmadd231ps zmm1,zmm6,zmm4
  a07513:	62 41 74 48 5c f0    	vsubps zmm30,zmm1,zmm8
  a07519:	62 d1 74 48 58 c8    	vaddps zmm1,zmm1,zmm8
  a0751f:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm1
  a07526:	14 
  a07527:	62 f1 7c 48 28 cd    	vmovaps zmm1,zmm5
  a0752d:	62 71 7c 48 28 6c 24 	vmovaps zmm13,ZMMWORD PTR [rsp+0x1c0]
  a07534:	07 
  a07535:	62 e1 7c 48 28 44 24 	vmovaps zmm16,ZMMWORD PTR [rsp+0x300]
  a0753c:	0c 
  a0753d:	62 b2 15 48 ac c8    	vfnmadd213ps zmm1,zmm13,zmm16
  a07543:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x240]
  a0754a:	09 
  a0754b:	62 f2 65 48 b8 cc    	vfmadd231ps zmm1,zmm3,zmm4
  a07551:	62 71 74 48 5c d0    	vsubps zmm10,zmm1,zmm0
  a07557:	62 f1 74 48 58 c0    	vaddps zmm0,zmm1,zmm0
  a0755d:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm0
  a07564:	13 
  a07565:	62 f1 7c 48 28 c4    	vmovaps zmm0,zmm4
  a0756b:	62 d2 05 48 a8 c3    	vfmadd213ps zmm0,zmm15,zmm11
  a07571:	62 f2 6d 40 bc c5    	vfnmadd231ps zmm0,zmm18,zmm5
  a07577:	62 11 7c 48 58 c2    	vaddps zmm8,zmm0,zmm26
  a0757d:	62 81 7c 48 5c d2    	vsubps zmm18,zmm0,zmm26
  a07583:	62 f1 7c 48 28 fc    	vmovaps zmm7,zmm4
  a07589:	62 b2 45 40 a8 f9    	vfmadd213ps zmm7,zmm23,zmm17
  a0758f:	62 21 7c 48 28 d1    	vmovaps zmm26,zmm17
  a07595:	62 f2 55 40 bc fd    	vfnmadd231ps zmm7,zmm21,zmm5
  a0759b:	62 91 44 48 58 c7    	vaddps zmm0,zmm7,zmm31
  a075a1:	62 11 44 48 5c df    	vsubps zmm11,zmm7,zmm31
  a075a7:	62 f1 7c 48 28 fc    	vmovaps zmm7,zmm4
  a075ad:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x780]
  a075b4:	1e 
  a075b5:	62 b2 75 48 a8 fb    	vfmadd213ps zmm7,zmm1,zmm19
  a075bb:	62 a1 7c 48 28 fb    	vmovaps zmm23,zmm19
  a075c1:	62 f2 5d 40 bc fd    	vfnmadd231ps zmm7,zmm20,zmm5
  a075c7:	62 61 3c 40 58 ff    	vaddps zmm31,zmm24,zmm7
  a075cd:	62 91 44 48 5c f8    	vsubps zmm7,zmm7,zmm24
  a075d3:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x800],zmm7
  a075da:	20 
  a075db:	62 f1 7c 48 28 fc    	vmovaps zmm7,zmm4
  a075e1:	62 92 0d 48 a8 f9    	vfmadd213ps zmm7,zmm14,zmm25
  a075e7:	62 c1 7c 48 28 ee    	vmovaps zmm21,zmm14
  a075ed:	62 f2 4d 48 bc fd    	vfnmadd231ps zmm7,zmm6,zmm5
  a075f3:	62 e1 7c 48 28 e6    	vmovaps zmm20,zmm6
  a075f9:	62 81 44 48 5c db    	vsubps zmm19,zmm7,zmm27
  a075ff:	62 91 44 48 58 f3    	vaddps zmm6,zmm7,zmm27
  a07605:	62 f1 7c 48 28 fc    	vmovaps zmm7,zmm4
  a0760b:	62 b2 15 48 a8 f8    	vfmadd213ps zmm7,zmm13,zmm16
  a07611:	62 31 7c 48 28 f0    	vmovaps zmm14,zmm16
  a07617:	62 f2 65 48 bc fd    	vfnmadd231ps zmm7,zmm3,zmm5
  a0761d:	62 01 44 48 5c c4    	vsubps zmm24,zmm7,zmm28
  a07623:	62 91 44 48 58 fc    	vaddps zmm7,zmm7,zmm28
  a07629:	62 61 7c 48 28 dc    	vmovaps zmm27,zmm4
  a0762f:	62 42 1d 48 a8 d9    	vfmadd213ps zmm27,zmm12,zmm9
  a07635:	62 51 7c 48 28 fc    	vmovaps zmm15,zmm12
  a0763b:	62 c1 7c 48 28 c9    	vmovaps zmm17,zmm9
  a07641:	62 62 4d 40 bc dd    	vfnmadd231ps zmm27,zmm22,zmm5
  a07647:	62 91 24 40 5c e5    	vsubps zmm4,zmm27,zmm29
  a0764d:	62 01 24 40 58 dd    	vaddps zmm27,zmm27,zmm29
  a07653:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x180]
  a0765a:	06 
  a0765b:	62 61 6c 48 58 24 24 	vaddps zmm28,zmm2,ZMMWORD PTR [rsp]
  a07662:	62 91 64 40 5c d0    	vsubps zmm2,zmm19,zmm24
  a07668:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x7c0],zmm2
  a0766f:	1f 
  a07670:	62 91 64 40 58 d0    	vaddps zmm2,zmm19,zmm24
  a07676:	62 e1 1c 40 58 5c 24 	vaddps zmm19,zmm28,ZMMWORD PTR [rsp+0x40]
  a0767d:	01 
  a0767e:	62 71 2c 40 58 64 24 	vaddps zmm12,zmm26,ZMMWORD PTR [rsp+0x340]
  a07685:	0d 
  a07686:	62 e1 3c 48 58 c0    	vaddps zmm16,zmm8,zmm0
  a0768c:	62 f1 3c 48 5c c0    	vsubps zmm0,zmm8,zmm0
  a07692:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm0
  a07699:	0d 
  a0769a:	62 f1 1c 48 58 44 24 	vaddps zmm0,zmm12,ZMMWORD PTR [rsp+0x3c0]
  a076a1:	0f 
  a076a2:	62 31 74 48 58 e7    	vaddps zmm12,zmm1,zmm23
  a076a8:	62 c1 0c 40 5c fa    	vsubps zmm23,zmm30,zmm10
  a076ae:	62 41 0c 40 58 c2    	vaddps zmm24,zmm30,zmm10
  a076b4:	62 71 1c 48 58 64 24 	vaddps zmm12,zmm12,ZMMWORD PTR [rsp+0x400]
  a076bb:	10 
  a076bc:	62 b1 34 40 58 ed    	vaddps zmm5,zmm25,zmm21
  a076c2:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x480]
  a076c9:	12 
  a076ca:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x440]
  a076d1:	11 
  a076d2:	62 61 3c 48 58 e1    	vaddps zmm28,zmm8,zmm1
  a076d8:	62 f1 3c 48 5c c9    	vsubps zmm1,zmm8,zmm1
  a076de:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm1
  a076e5:	02 
  a076e6:	62 b1 54 48 58 ec    	vaddps zmm5,zmm5,zmm20
  a076ec:	62 51 0c 48 58 cd    	vaddps zmm9,zmm14,zmm13
  a076f2:	62 71 34 48 58 cb    	vaddps zmm9,zmm9,zmm3
  a076f8:	62 c1 54 48 5c e9    	vsubps zmm21,zmm5,zmm9
  a076fe:	62 51 54 48 58 e9    	vaddps zmm13,zmm5,zmm9
  a07704:	62 d1 74 40 58 ef    	vaddps zmm5,zmm17,zmm15
  a0770a:	62 f1 4c 48 5c cf    	vsubps zmm1,zmm6,zmm7
  a07710:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm1
  a07717:	05 
  a07718:	62 f1 4c 48 58 ff    	vaddps zmm7,zmm6,zmm7
  a0771e:	62 62 7d 48 18 35 38 	vbroadcastss zmm30,DWORD PTR [rip+0xffffffffff66dd38]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a07725:	dd 66 ff 
  a07728:	62 91 7c 48 28 de    	vmovaps zmm3,zmm30
  a0772e:	62 21 54 48 58 d6    	vaddps zmm26,zmm5,zmm22
  a07734:	62 d1 6c 40 58 eb    	vaddps zmm5,zmm18,zmm11
  a0773a:	62 d1 6c 40 5c cb    	vsubps zmm1,zmm18,zmm11
  a07740:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm1
  a07747:	04 
  a07748:	62 61 64 40 58 e8    	vaddps zmm29,zmm19,zmm0
  a0774e:	62 f1 64 40 5c f0    	vsubps zmm6,zmm19,zmm0
  a07754:	62 81 7c 48 28 de    	vmovaps zmm19,zmm30
  a0775a:	62 92 7d 40 ac df    	vfnmadd213ps zmm3,zmm16,zmm31
  a07760:	62 e2 6d 48 ac dc    	vfnmadd213ps zmm19,zmm2,zmm4
  a07766:	62 b1 04 40 58 c0    	vaddps zmm0,zmm31,zmm16
  a0776c:	62 f1 7c 48 29 04 24 	vmovaps ZMMWORD PTR [rsp],zmm0
  a07773:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x8c0]
  a0777a:	23 
  a0777b:	62 71 7c 48 28 5c 24 	vmovaps zmm11,ZMMWORD PTR [rsp+0x840]
  a07782:	21 
  a07783:	62 c1 24 48 58 c2    	vaddps zmm16,zmm11,zmm10
  a07789:	62 71 5c 48 58 f2    	vaddps zmm14,zmm4,zmm2
  a0778f:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x500]
  a07796:	14 
  a07797:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x4c0]
  a0779e:	13 
  a0779f:	62 f1 7c 48 58 e1    	vaddps zmm4,zmm0,zmm1
  a077a5:	62 e1 7c 48 5c e1    	vsubps zmm20,zmm0,zmm1
  a077ab:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x380]
  a077b2:	0e 
  a077b3:	62 b1 74 48 58 c0    	vaddps zmm0,zmm1,zmm16
  a077b9:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm0
  a077c0:	06 
  a077c1:	62 e2 0d 40 ac c1    	vfnmadd213ps zmm16,zmm30,zmm1
  a077c7:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x880]
  a077ce:	22 
  a077cf:	62 71 7c 48 58 fc    	vaddps zmm15,zmm0,zmm4
  a077d5:	62 f2 0d 40 ac e0    	vfnmadd213ps zmm4,zmm30,zmm0
  a077db:	62 11 7c 48 28 c6    	vmovaps zmm8,zmm30
  a077e1:	62 e1 7c 48 28 54 24 	vmovaps zmm18,ZMMWORD PTR [rsp+0x2c0]
  a077e8:	0b 
  a077e9:	62 32 1d 40 ac c2    	vfnmadd213ps zmm8,zmm28,zmm18
  a077ef:	62 f2 7d 48 18 15 db 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff66dadb]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a077f6:	da 66 ff 
  a077f9:	62 71 44 40 59 ca    	vmulps zmm9,zmm23,zmm2
  a077ff:	62 41 24 48 5c ca    	vsubps zmm25,zmm11,zmm10
  a07805:	62 d1 3c 48 5c c1    	vsubps zmm0,zmm8,zmm9
  a0780b:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a07812:	01 
  a07813:	62 41 3c 48 58 f9    	vaddps zmm31,zmm8,zmm9
  a07819:	62 11 7c 48 28 c6    	vmovaps zmm8,zmm30
  a0781f:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x800]
  a07826:	20 
  a07827:	62 72 55 48 ac c0    	vfnmadd213ps zmm8,zmm5,zmm0
  a0782d:	62 71 7c 48 58 cd    	vaddps zmm9,zmm0,zmm5
  a07833:	62 81 7c 48 28 f6    	vmovaps zmm22,zmm30
  a07839:	62 82 45 48 ac f3    	vfnmadd213ps zmm22,zmm7,zmm27
  a0783f:	62 e1 24 40 58 cf    	vaddps zmm17,zmm27,zmm7
  a07845:	62 91 7c 48 28 ee    	vmovaps zmm5,zmm30
  a0784b:	62 d2 15 40 ac ec    	vfnmadd213ps zmm5,zmm29,zmm12
  a07851:	62 f1 54 40 59 fa    	vmulps zmm7,zmm21,zmm2
  a07857:	62 e1 54 48 5c ff    	vsubps zmm23,zmm5,zmm7
  a0785d:	62 e1 54 48 58 ef    	vaddps zmm21,zmm5,zmm7
  a07863:	62 91 7c 48 28 fe    	vmovaps zmm7,zmm30
  a07869:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x280]
  a07870:	0a 
  a07871:	62 f2 3d 40 ac f9    	vfnmadd213ps zmm7,zmm24,zmm1
  a07877:	62 71 6c 48 59 54 24 	vmulps zmm10,zmm2,ZMMWORD PTR [rsp+0x80]
  a0787e:	02 
  a0787f:	62 d1 44 48 58 ea    	vaddps zmm5,zmm7,zmm10
  a07885:	62 51 44 48 5c da    	vsubps zmm11,zmm7,zmm10
  a0788b:	62 02 15 48 ac f2    	vfnmadd213ps zmm30,zmm13,zmm26
  a07891:	62 f1 4c 48 59 f2    	vmulps zmm6,zmm6,zmm2
  a07897:	62 71 0c 40 58 d6    	vaddps zmm10,zmm30,zmm6
  a0789d:	62 61 0c 40 5c de    	vsubps zmm27,zmm30,zmm6
  a078a3:	62 f1 6c 48 59 7c 24 	vmulps zmm7,zmm2,ZMMWORD PTR [rsp+0x7c0]
  a078aa:	1f 
  a078ab:	62 f1 64 48 58 f7    	vaddps zmm6,zmm3,zmm7
  a078b1:	62 61 64 48 5c f7    	vsubps zmm30,zmm3,zmm7
  a078b7:	62 01 6c 40 58 e4    	vaddps zmm28,zmm18,zmm28
  a078bd:	62 f1 6c 48 59 44 24 	vmulps zmm0,zmm2,ZMMWORD PTR [rsp+0x340]
  a078c4:	0d 
  a078c5:	62 f1 64 40 5c f8    	vsubps zmm7,zmm19,zmm0
  a078cb:	62 f1 64 40 58 c0    	vaddps zmm0,zmm19,zmm0
  a078d1:	62 81 74 48 58 d0    	vaddps zmm18,zmm1,zmm24
  a078d7:	62 f1 5c 40 59 da    	vmulps zmm3,zmm20,zmm2
  a078dd:	62 e1 7c 40 5c db    	vsubps zmm19,zmm16,zmm3
  a078e3:	62 f1 7c 40 58 db    	vaddps zmm3,zmm16,zmm3
  a078e9:	62 11 1c 48 58 e5    	vaddps zmm12,zmm12,zmm29
  a078ef:	62 c1 2c 40 58 c5    	vaddps zmm16,zmm26,zmm13
  a078f5:	62 a1 7c 48 28 e0    	vmovaps zmm20,zmm16
  a078fb:	62 61 34 40 59 c2    	vmulps zmm24,zmm25,zmm2
  a07901:	62 61 7c 48 28 15 f5 	vmovaps zmm26,ZMMWORD PTR [rip+0xffffffffff686bf5]        # 8e500 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b9b0>
  a07908:	6b 68 ff 
  a0790b:	62 c2 2d 40 7f e4    	vpermt2ps zmm20,zmm26,zmm12
  a07911:	62 61 7c 48 28 2d 25 	vmovaps zmm29,ZMMWORD PTR [rip+0xffffffffff686c25]        # 8e540 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1b9f0>
  a07918:	6c 68 ff 
  a0791b:	62 c2 15 40 7f c4    	vpermt2ps zmm16,zmm29,zmm12
  a07921:	62 01 5c 48 58 c8    	vaddps zmm25,zmm4,zmm24
  a07927:	62 91 5c 48 5c c8    	vsubps zmm1,zmm4,zmm24
  a0792d:	62 61 6c 48 59 44 24 	vmulps zmm24,zmm2,ZMMWORD PTR [rsp+0x140]
  a07934:	05 
  a07935:	62 e1 7c 48 11 04 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm16
  a0793c:	62 11 3c 48 58 e0    	vaddps zmm12,zmm8,zmm24
  a07942:	62 11 3c 48 5c c0    	vsubps zmm8,zmm8,zmm24
  a07948:	62 e1 6c 48 59 44 24 	vmulps zmm16,zmm2,ZMMWORD PTR [rsp+0x100]
  a0794f:	04 
  a07950:	62 e1 7c 48 11 64 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x40],zmm20
  a07957:	01 
  a07958:	62 31 4c 40 5c e8    	vsubps zmm13,zmm22,zmm16
  a0795e:	62 a1 4c 40 58 c0    	vaddps zmm16,zmm22,zmm16
  a07964:	62 a1 7c 48 28 e0    	vmovaps zmm20,zmm16
  a0796a:	62 c2 2d 40 7f e0    	vpermt2ps zmm20,zmm26,zmm8
  a07970:	62 c2 15 40 7f c0    	vpermt2ps zmm16,zmm29,zmm8
  a07976:	62 e1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x80],zmm16
  a0797d:	02 
  a0797e:	62 71 7c 48 28 c1    	vmovaps zmm8,zmm1
  a07984:	62 72 2d 40 7f c3    	vpermt2ps zmm8,zmm26,zmm3
  a0798a:	62 f2 15 40 7f cb    	vpermt2ps zmm1,zmm29,zmm3
  a07990:	62 e1 7c 48 11 64 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xc0],zmm20
  a07997:	03 
  a07998:	62 f1 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x100],zmm1
  a0799f:	04 
  a079a0:	62 71 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x140],zmm8
  a079a7:	05 
  a079a8:	62 b1 7c 48 28 ca    	vmovaps zmm1,zmm18
  a079ae:	62 92 2d 40 7f cc    	vpermt2ps zmm1,zmm26,zmm28
  a079b4:	62 82 15 40 7f d4    	vpermt2ps zmm18,zmm29,zmm28
  a079ba:	62 e1 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x180],zmm18
  a079c1:	06 
  a079c2:	62 f1 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1c0],zmm1
  a079c9:	07 
  a079ca:	62 f1 7c 48 28 c8    	vmovaps zmm1,zmm0
  a079d0:	62 92 2d 40 7f ce    	vpermt2ps zmm1,zmm26,zmm30
  a079d6:	62 92 15 40 7f c6    	vpermt2ps zmm0,zmm29,zmm30
  a079dc:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x200],zmm0
  a079e3:	08 
  a079e4:	62 f1 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x240],zmm1
  a079eb:	09 
  a079ec:	62 91 7c 48 28 c3    	vmovaps zmm0,zmm27
  a079f2:	62 b2 2d 40 7f c5    	vpermt2ps zmm0,zmm26,zmm21
  a079f8:	62 22 15 40 7f dd    	vpermt2ps zmm27,zmm29,zmm21
  a079fe:	62 61 7c 48 11 5c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x280],zmm27
  a07a05:	0a 
  a07a06:	62 b1 7c 48 28 c9    	vmovaps zmm1,zmm17
  a07a0c:	62 d2 2d 40 7f c9    	vpermt2ps zmm1,zmm26,zmm9
  a07a12:	62 c2 15 40 7f c9    	vpermt2ps zmm17,zmm29,zmm9
  a07a18:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x2c0],zmm0
  a07a1f:	0b 
  a07a20:	62 e1 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x300],zmm17
  a07a27:	0c 
  a07a28:	62 f1 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x340],zmm1
  a07a2f:	0d 
  a07a30:	62 91 7c 48 28 c1    	vmovaps zmm0,zmm25
  a07a36:	62 b2 2d 40 7f c3    	vpermt2ps zmm0,zmm26,zmm19
  a07a3c:	62 22 15 40 7f cb    	vpermt2ps zmm25,zmm29,zmm19
  a07a42:	62 61 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x380],zmm25
  a07a49:	0e 
  a07a4a:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x3c0],zmm0
  a07a51:	0f 
  a07a52:	62 d1 7c 48 28 c3    	vmovaps zmm0,zmm11
  a07a58:	62 92 2d 40 7f c7    	vpermt2ps zmm0,zmm26,zmm31
  a07a5e:	62 12 15 40 7f df    	vpermt2ps zmm11,zmm29,zmm31
  a07a64:	62 71 7c 48 11 5c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x400],zmm11
  a07a6b:	10 
  a07a6c:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x440],zmm0
  a07a73:	11 
  a07a74:	62 d1 7c 48 28 c6    	vmovaps zmm0,zmm14
  a07a7a:	62 f1 7c 48 28 0c 24 	vmovaps zmm1,ZMMWORD PTR [rsp]
  a07a81:	62 f2 2d 40 7f c1    	vpermt2ps zmm0,zmm26,zmm1
  a07a87:	62 72 15 40 7f f1    	vpermt2ps zmm14,zmm29,zmm1
  a07a8d:	62 71 7c 48 11 74 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x480],zmm14
  a07a94:	12 
  a07a95:	62 d1 7c 48 28 ca    	vmovaps zmm1,zmm10
  a07a9b:	62 b2 2d 40 7f cf    	vpermt2ps zmm1,zmm26,zmm23
  a07aa1:	62 32 15 40 7f d7    	vpermt2ps zmm10,zmm29,zmm23
  a07aa7:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x4c0],zmm0
  a07aae:	13 
  a07aaf:	62 71 7c 48 11 54 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x500],zmm10
  a07ab6:	14 
  a07ab7:	62 f1 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x540],zmm1
  a07abe:	15 
  a07abf:	62 d1 7c 48 28 c5    	vmovaps zmm0,zmm13
  a07ac5:	62 d2 2d 40 7f c4    	vpermt2ps zmm0,zmm26,zmm12
  a07acb:	62 52 15 40 7f ec    	vpermt2ps zmm13,zmm29,zmm12
  a07ad1:	62 71 7c 48 11 6c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x580],zmm13
  a07ad8:	16 
  a07ad9:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x5c0],zmm0
  a07ae0:	17 
  a07ae1:	62 d1 7c 48 28 c7    	vmovaps zmm0,zmm15
  a07ae7:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x180]
  a07aee:	06 
  a07aef:	62 f2 2d 40 7f c1    	vpermt2ps zmm0,zmm26,zmm1
  a07af5:	62 72 15 40 7f f9    	vpermt2ps zmm15,zmm29,zmm1
  a07afb:	62 71 7c 48 11 7c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x600],zmm15
  a07b02:	18 
  a07b03:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x640],zmm0
  a07b0a:	19 
  a07b0b:	62 f1 7c 48 28 c5    	vmovaps zmm0,zmm5
  a07b11:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x40]
  a07b18:	01 
  a07b19:	62 f2 2d 40 7f c1    	vpermt2ps zmm0,zmm26,zmm1
  a07b1f:	62 f2 15 40 7f e9    	vpermt2ps zmm5,zmm29,zmm1
  a07b25:	62 f1 7c 48 11 6c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x680],zmm5
  a07b2c:	1a 
  a07b2d:	62 f1 7c 48 28 cf    	vmovaps zmm1,zmm7
  a07b33:	62 f2 2d 40 7f ce    	vpermt2ps zmm1,zmm26,zmm6
  a07b39:	62 f2 15 40 7f fe    	vpermt2ps zmm7,zmm29,zmm6
  a07b3f:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x6c0],zmm0
  a07b46:	1b 
  a07b47:	62 f1 7c 48 11 7c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x700],zmm7
  a07b4e:	1c 
  a07b4f:	62 f1 7c 48 11 4c 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x740],zmm1
  a07b56:	1d 
  a07b57:	48 81 c2 80 07 00 00 	add    rdx,0x780
  a07b5e:	48 39 d0             	cmp    rax,rdx
  a07b61:	0f 85 89 df ff ff    	jne    a05af0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x30>
  a07b67:	48 89 ec             	mov    rsp,rbp
  a07b6a:	5d                   	pop    rbp
  a07b6b:	c5 f8 77             	vzeroupper
  a07b6e:	c3                   	ret
