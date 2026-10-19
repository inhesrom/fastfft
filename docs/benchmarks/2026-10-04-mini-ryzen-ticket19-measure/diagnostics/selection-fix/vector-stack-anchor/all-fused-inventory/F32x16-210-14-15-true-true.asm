
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a47980 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a47980:	48 81 ec 08 0a 00 00 	sub    rsp,0xa08
  a47987:	48 69 c2 90 06 00 00 	imul   rax,rdx,0x690
  a4798e:	31 d2                	xor    edx,edx
  a47990:	41 b0 7f             	mov    r8b,0x7f
  a47993:	c4 c1 7b 92 c8       	kmovd  k1,r8d
  a47998:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  a4799f:	00 
  a479a0:	62 e1 7c 48 10 3c 17 	vmovups zmm23,ZMMWORD PTR [rdi+rdx*1]
  a479a7:	c5 fc 10 44 17 40    	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x40]
  a479ad:	c5 f8 10 4c 17 60    	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x60]
  a479b3:	c4 e3 71 21 4c 17 64 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x64],0x10
  a479ba:	10 
  a479bb:	c4 e2 79 18 54 17 68 	vbroadcastss xmm2,DWORD PTR [rdi+rdx*1+0x68]
  a479c2:	c4 e3 69 0c c9 03    	vblendps xmm1,xmm2,xmm1,0x3
  a479c8:	c4 e3 71 21 4c 17 6c 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x6c],0x30
  a479cf:	30 
  a479d0:	c5 fb 10 54 17 70    	vmovsd xmm2,QWORD PTR [rdi+rdx*1+0x70]
  a479d6:	c4 e3 75 18 ca 01    	vinsertf128 ymm1,ymm1,xmm2,0x1
  a479dc:	62 f3 fd 48 1a c1 01 	vinsertf64x4 zmm0,zmm0,ymm1,0x1
  a479e3:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a479e9:	62 f1 fe 48 7f 44 24 	vmovdqu64 ZMMWORD PTR [rsp+0x780],zmm0
  a479f0:	1e 
  a479f1:	62 a1 7c 48 28 d7    	vmovaps zmm18,zmm23
  a479f7:	62 f1 7c 48 28 2d 7f 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff64ab7f]        # 92580 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1fa30>
  a479fe:	ab 64 ff 
  a47a01:	62 e2 55 48 7f d0    	vpermt2ps zmm18,zmm5,zmm0
  a47a07:	62 f1 7c 48 10 9c 17 	vmovups zmm3,ZMMWORD PTR [rdi+rdx*1+0xf0]
  a47a0e:	f0 00 00 00 
  a47a12:	c5 fc 10 84 17 30 01 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x130]
  a47a19:	00 00 
  a47a1b:	c5 f8 10 8c 17 50 01 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x150]
  a47a22:	00 00 
  a47a24:	c4 e3 71 21 8c 17 54 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x154],0x10
  a47a2b:	01 00 00 10 
  a47a2f:	c4 e2 79 18 94 17 58 	vbroadcastss xmm2,DWORD PTR [rdi+rdx*1+0x158]
  a47a36:	01 00 00 
  a47a39:	c4 e3 69 0c c9 03    	vblendps xmm1,xmm2,xmm1,0x3
  a47a3f:	c4 e3 71 21 8c 17 5c 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x15c],0x30
  a47a46:	01 00 00 30 
  a47a4a:	c5 fb 10 94 17 60 01 	vmovsd xmm2,QWORD PTR [rdi+rdx*1+0x160]
  a47a51:	00 00 
  a47a53:	c4 e3 75 18 ca 01    	vinsertf128 ymm1,ymm1,xmm2,0x1
  a47a59:	62 f3 fd 48 1a c1 01 	vinsertf64x4 zmm0,zmm0,ymm1,0x1
  a47a60:	62 62 fd c9 88 e8    	vexpandpd zmm29{k1}{z},zmm0
  a47a66:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a47a6c:	62 f1 7c 48 28 fb    	vmovaps zmm7,zmm3
  a47a72:	62 92 55 48 7f c5    	vpermt2ps zmm0,zmm5,zmm29
  a47a78:	62 f1 7c 48 28 d8    	vmovaps zmm3,zmm0
  a47a7e:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm0
  a47a85:	10 
  a47a86:	62 f1 7c 48 10 a4 17 	vmovups zmm4,ZMMWORD PTR [rdi+rdx*1+0x5a0]
  a47a8d:	a0 05 00 00 
  a47a91:	c5 fc 10 84 17 e0 05 	vmovups ymm0,YMMWORD PTR [rdi+rdx*1+0x5e0]
  a47a98:	00 00 
  a47a9a:	c5 f8 10 8c 17 00 06 	vmovups xmm1,XMMWORD PTR [rdi+rdx*1+0x600]
  a47aa1:	00 00 
  a47aa3:	c4 e3 71 21 8c 17 04 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x604],0x10
  a47aaa:	06 00 00 10 
  a47aae:	c4 e2 79 18 94 17 08 	vbroadcastss xmm2,DWORD PTR [rdi+rdx*1+0x608]
  a47ab5:	06 00 00 
  a47ab8:	c4 e3 69 0c c9 03    	vblendps xmm1,xmm2,xmm1,0x3
  a47abe:	c4 e3 71 21 8c 17 0c 	vinsertps xmm1,xmm1,DWORD PTR [rdi+rdx*1+0x60c],0x30
  a47ac5:	06 00 00 30 
  a47ac9:	c5 fb 10 94 17 10 06 	vmovsd xmm2,QWORD PTR [rdi+rdx*1+0x610]
  a47ad0:	00 00 
  a47ad2:	c4 e3 75 18 ca 01    	vinsertf128 ymm1,ymm1,xmm2,0x1
  a47ad8:	62 f3 fd 48 1a c1 01 	vinsertf64x4 zmm0,zmm0,ymm1,0x1
  a47adf:	62 62 fd c9 88 f8    	vexpandpd zmm31{k1}{z},zmm0
  a47ae5:	62 f1 7c 48 28 c4    	vmovaps zmm0,zmm4
  a47aeb:	62 71 7c 48 28 d4    	vmovaps zmm10,zmm4
  a47af1:	62 92 55 48 7f c7    	vpermt2ps zmm0,zmm5,zmm31
  a47af7:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm0
  a47afe:	11 
  a47aff:	62 71 64 48 58 c0    	vaddps zmm8,zmm3,zmm0
  a47b05:	62 d1 6c 40 58 c0    	vaddps zmm0,zmm18,zmm8
  a47b0b:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm0
  a47b12:	ff 
  a47b13:	c5 f8 10 84 17 40 02 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x240]
  a47b1a:	00 00 
  a47b1c:	c4 e3 79 21 84 17 44 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x244],0x10
  a47b23:	02 00 00 10 
  a47b27:	c4 e2 79 18 8c 17 48 	vbroadcastss xmm1,DWORD PTR [rdi+rdx*1+0x248]
  a47b2e:	02 00 00 
  a47b31:	62 f1 7c 48 10 94 17 	vmovups zmm2,ZMMWORD PTR [rdi+rdx*1+0x1e0]
  a47b38:	e0 01 00 00 
  a47b3c:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a47b42:	c4 e3 79 21 84 17 4c 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x24c],0x30
  a47b49:	02 00 00 30 
  a47b4d:	c5 fc 10 8c 17 20 02 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x220]
  a47b54:	00 00 
  a47b56:	c5 fb 10 9c 17 50 02 	vmovsd xmm3,QWORD PTR [rdi+rdx*1+0x250]
  a47b5d:	00 00 
  a47b5f:	c4 e3 7d 18 c3 01    	vinsertf128 ymm0,ymm0,xmm3,0x1
  a47b65:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a47b6c:	62 62 fd c9 88 c8    	vexpandpd zmm25{k1}{z},zmm0
  a47b72:	62 f1 7c 48 28 c2    	vmovaps zmm0,zmm2
  a47b78:	62 61 7c 48 28 da    	vmovaps zmm27,zmm2
  a47b7e:	62 92 55 48 7f c1    	vpermt2ps zmm0,zmm5,zmm25
  a47b84:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm0
  a47b8b:	07 
  a47b8c:	c5 f8 10 84 17 10 05 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x510]
  a47b93:	00 00 
  a47b95:	c4 e3 79 21 84 17 14 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x514],0x10
  a47b9c:	05 00 00 10 
  a47ba0:	c4 e2 79 18 8c 17 18 	vbroadcastss xmm1,DWORD PTR [rdi+rdx*1+0x518]
  a47ba7:	05 00 00 
  a47baa:	62 f1 7c 48 10 94 17 	vmovups zmm2,ZMMWORD PTR [rdi+rdx*1+0x4b0]
  a47bb1:	b0 04 00 00 
  a47bb5:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a47bbb:	c4 e3 79 21 84 17 1c 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x51c],0x30
  a47bc2:	05 00 00 30 
  a47bc6:	c5 fc 10 8c 17 f0 04 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x4f0]
  a47bcd:	00 00 
  a47bcf:	c5 fb 10 9c 17 20 05 	vmovsd xmm3,QWORD PTR [rdi+rdx*1+0x520]
  a47bd6:	00 00 
  a47bd8:	c4 e3 7d 18 c3 01    	vinsertf128 ymm0,ymm0,xmm3,0x1
  a47bde:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a47be5:	62 e2 fd c9 88 e8    	vexpandpd zmm21{k1}{z},zmm0
  a47beb:	62 f1 7c 48 28 c2    	vmovaps zmm0,zmm2
  a47bf1:	62 e1 7c 48 28 ca    	vmovaps zmm17,zmm2
  a47bf7:	62 b2 55 48 7f c5    	vpermt2ps zmm0,zmm5,zmm21
  a47bfd:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm0
  a47c04:	02 
  a47c05:	c5 f8 10 84 17 30 03 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x330]
  a47c0c:	00 00 
  a47c0e:	c4 e3 79 21 84 17 34 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x334],0x10
  a47c15:	03 00 00 10 
  a47c19:	c4 e2 79 18 8c 17 38 	vbroadcastss xmm1,DWORD PTR [rdi+rdx*1+0x338]
  a47c20:	03 00 00 
  a47c23:	62 f1 7c 48 10 a4 17 	vmovups zmm4,ZMMWORD PTR [rdi+rdx*1+0x2d0]
  a47c2a:	d0 02 00 00 
  a47c2e:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a47c34:	c4 e3 79 21 84 17 3c 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x33c],0x30
  a47c3b:	03 00 00 30 
  a47c3f:	c5 fc 10 8c 17 10 03 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x310]
  a47c46:	00 00 
  a47c48:	c5 fb 10 9c 17 40 03 	vmovsd xmm3,QWORD PTR [rdi+rdx*1+0x340]
  a47c4f:	00 00 
  a47c51:	c4 e3 7d 18 c3 01    	vinsertf128 ymm0,ymm0,xmm3,0x1
  a47c57:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a47c5e:	62 72 fd c9 88 e8    	vexpandpd zmm13{k1}{z},zmm0
  a47c64:	62 f1 7c 48 28 c4    	vmovaps zmm0,zmm4
  a47c6a:	62 d2 55 48 7f c5    	vpermt2ps zmm0,zmm5,zmm13
  a47c70:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm0
  a47c77:	05 
  a47c78:	c5 f8 10 84 17 20 04 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x420]
  a47c7f:	00 00 
  a47c81:	c4 e3 79 21 84 17 24 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x424],0x10
  a47c88:	04 00 00 10 
  a47c8c:	c4 e2 79 18 8c 17 28 	vbroadcastss xmm1,DWORD PTR [rdi+rdx*1+0x428]
  a47c93:	04 00 00 
  a47c96:	62 f1 7c 48 10 54 17 	vmovups zmm2,ZMMWORD PTR [rdi+rdx*1+0x3c0]
  a47c9d:	0f 
  a47c9e:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a47ca4:	c4 e3 79 21 84 17 2c 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x42c],0x30
  a47cab:	04 00 00 30 
  a47caf:	c5 fc 10 8c 17 00 04 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x400]
  a47cb6:	00 00 
  a47cb8:	c5 fb 10 9c 17 30 04 	vmovsd xmm3,QWORD PTR [rdi+rdx*1+0x430]
  a47cbf:	00 00 
  a47cc1:	c4 e3 7d 18 c3 01    	vinsertf128 ymm0,ymm0,xmm3,0x1
  a47cc7:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a47cce:	62 e2 fd c9 88 c0    	vexpandpd zmm16{k1}{z},zmm0
  a47cd4:	62 71 7c 48 28 da    	vmovaps zmm11,zmm2
  a47cda:	62 e1 7c 48 28 f2    	vmovaps zmm22,zmm2
  a47ce0:	62 32 55 48 7f d8    	vpermt2ps zmm11,zmm5,zmm16
  a47ce6:	62 71 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x740],zmm11
  a47ced:	1d 
  a47cee:	c5 f8 10 84 17 a8 03 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x3a8]
  a47cf5:	00 00 
  a47cf7:	c4 e3 79 21 84 17 ac 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x3ac],0x10
  a47cfe:	03 00 00 10 
  a47d02:	c4 e2 79 18 8c 17 b0 	vbroadcastss xmm1,DWORD PTR [rdi+rdx*1+0x3b0]
  a47d09:	03 00 00 
  a47d0c:	c5 fc 10 9c 17 88 03 	vmovups ymm3,YMMWORD PTR [rdi+rdx*1+0x388]
  a47d13:	00 00 
  a47d15:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a47d1b:	c4 e3 79 21 84 17 b4 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x3b4],0x30
  a47d22:	03 00 00 30 
  a47d26:	c5 fb 10 8c 17 b8 03 	vmovsd xmm1,QWORD PTR [rdi+rdx*1+0x3b8]
  a47d2d:	00 00 
  a47d2f:	c4 e3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm1,0x1
  a47d35:	62 f3 e5 48 1a c0 01 	vinsertf64x4 zmm0,zmm3,ymm0,0x1
  a47d3c:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a47d43:	fe 
  a47d44:	c5 f8 10 84 17 98 04 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x498]
  a47d4b:	00 00 
  a47d4d:	c4 e3 79 21 84 17 9c 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x49c],0x10
  a47d54:	04 00 00 10 
  a47d58:	c4 e2 79 18 8c 17 a0 	vbroadcastss xmm1,DWORD PTR [rdi+rdx*1+0x4a0]
  a47d5f:	04 00 00 
  a47d62:	62 61 7c 48 10 84 17 	vmovups zmm24,ZMMWORD PTR [rdi+rdx*1+0x438]
  a47d69:	38 04 00 00 
  a47d6d:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a47d73:	c4 e3 79 21 84 17 a4 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x4a4],0x30
  a47d7a:	04 00 00 30 
  a47d7e:	c5 fc 10 8c 17 78 04 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x478]
  a47d85:	00 00 
  a47d87:	62 e1 ff 08 10 a4 17 	vmovsd xmm20,QWORD PTR [rdi+rdx*1+0x4a8]
  a47d8e:	a8 04 00 00 
  a47d92:	62 b3 7d 28 18 c4 01 	vinsertf32x4 ymm0,ymm0,xmm20,0x1
  a47d99:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a47da0:	62 62 fd c9 88 e0    	vexpandpd zmm28{k1}{z},zmm0
  a47da6:	c5 f8 10 84 17 b8 02 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x2b8]
  a47dad:	00 00 
  a47daf:	c4 e3 79 21 84 17 bc 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x2bc],0x10
  a47db6:	02 00 00 10 
  a47dba:	c5 fc 10 8c 17 98 02 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x298]
  a47dc1:	00 00 
  a47dc3:	c4 e2 79 18 94 17 c0 	vbroadcastss xmm2,DWORD PTR [rdi+rdx*1+0x2c0]
  a47dca:	02 00 00 
  a47dcd:	c4 e3 69 0c c0 03    	vblendps xmm0,xmm2,xmm0,0x3
  a47dd3:	c4 e3 79 21 84 17 c4 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x2c4],0x30
  a47dda:	02 00 00 30 
  a47dde:	c5 fb 10 94 17 c8 02 	vmovsd xmm2,QWORD PTR [rdi+rdx*1+0x2c8]
  a47de5:	00 00 
  a47de7:	c4 e3 7d 18 c2 01    	vinsertf128 ymm0,ymm0,xmm2,0x1
  a47ded:	62 63 f5 48 1a d0 01 	vinsertf64x4 zmm26,zmm1,ymm0,0x1
  a47df4:	c5 f8 10 84 17 88 05 	vmovups xmm0,XMMWORD PTR [rdi+rdx*1+0x588]
  a47dfb:	00 00 
  a47dfd:	c4 e3 79 21 84 17 8c 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x58c],0x10
  a47e04:	05 00 00 10 
  a47e08:	c5 fc 10 8c 17 68 05 	vmovups ymm1,YMMWORD PTR [rdi+rdx*1+0x568]
  a47e0f:	00 00 
  a47e11:	c4 e2 79 18 94 17 90 	vbroadcastss xmm2,DWORD PTR [rdi+rdx*1+0x590]
  a47e18:	05 00 00 
  a47e1b:	c4 e3 69 0c c0 03    	vblendps xmm0,xmm2,xmm0,0x3
  a47e21:	c4 e3 79 21 84 17 94 	vinsertps xmm0,xmm0,DWORD PTR [rdi+rdx*1+0x594],0x30
  a47e28:	05 00 00 30 
  a47e2c:	c5 fb 10 94 17 98 05 	vmovsd xmm2,QWORD PTR [rdi+rdx*1+0x598]
  a47e33:	00 00 
  a47e35:	62 e1 7c 08 10 a4 17 	vmovups xmm20,XMMWORD PTR [rdi+rdx*1+0x1c8]
  a47e3c:	c8 01 00 00 
  a47e40:	62 73 5d 00 21 4c 17 	vinsertps xmm9,xmm20,DWORD PTR [rdi+rdx*1+0x1cc],0x10
  a47e47:	73 10 
  a47e49:	c4 62 79 18 bc 17 d0 	vbroadcastss xmm15,DWORD PTR [rdi+rdx*1+0x1d0]
  a47e50:	01 00 00 
  a47e53:	c4 e3 7d 18 c2 01    	vinsertf128 ymm0,ymm0,xmm2,0x1
  a47e59:	c4 c3 01 0c d1 03    	vblendps xmm2,xmm15,xmm9,0x3
  a47e5f:	c4 e3 69 21 94 17 d4 	vinsertps xmm2,xmm2,DWORD PTR [rdi+rdx*1+0x1d4],0x30
  a47e66:	01 00 00 30 
  a47e6a:	62 f3 f5 48 1a d8 01 	vinsertf64x4 zmm3,zmm1,ymm0,0x1
  a47e71:	c5 fb 10 8c 17 d8 01 	vmovsd xmm1,QWORD PTR [rdi+rdx*1+0x1d8]
  a47e78:	00 00 
  a47e7a:	c4 e3 6d 18 c9 01    	vinsertf128 ymm1,ymm2,xmm1,0x1
  a47e80:	c5 f8 10 94 17 78 06 	vmovups xmm2,XMMWORD PTR [rdi+rdx*1+0x678]
  a47e87:	00 00 
  a47e89:	c4 e3 69 21 94 17 7c 	vinsertps xmm2,xmm2,DWORD PTR [rdi+rdx*1+0x67c],0x10
  a47e90:	06 00 00 10 
  a47e94:	c4 62 79 18 8c 17 80 	vbroadcastss xmm9,DWORD PTR [rdi+rdx*1+0x680]
  a47e9b:	06 00 00 
  a47e9e:	c5 7c 10 bc 17 a8 01 	vmovups ymm15,YMMWORD PTR [rdi+rdx*1+0x1a8]
  a47ea5:	00 00 
  a47ea7:	c4 e3 31 0c d2 03    	vblendps xmm2,xmm9,xmm2,0x3
  a47ead:	c4 e3 69 21 94 17 84 	vinsertps xmm2,xmm2,DWORD PTR [rdi+rdx*1+0x684],0x30
  a47eb4:	06 00 00 30 
  a47eb8:	62 63 85 48 1a f1 01 	vinsertf64x4 zmm30,zmm15,ymm1,0x1
  a47ebf:	c5 fb 10 8c 17 88 06 	vmovsd xmm1,QWORD PTR [rdi+rdx*1+0x688]
  a47ec6:	00 00 
  a47ec8:	c4 e3 6d 18 c9 01    	vinsertf128 ymm1,ymm2,xmm1,0x1
  a47ece:	c5 f8 10 94 17 d8 00 	vmovups xmm2,XMMWORD PTR [rdi+rdx*1+0xd8]
  a47ed5:	00 00 
  a47ed7:	c4 e3 69 21 94 17 dc 	vinsertps xmm2,xmm2,DWORD PTR [rdi+rdx*1+0xdc],0x10
  a47ede:	00 00 00 10 
  a47ee2:	c4 62 79 18 8c 17 e0 	vbroadcastss xmm9,DWORD PTR [rdi+rdx*1+0xe0]
  a47ee9:	00 00 00 
  a47eec:	c4 e3 31 0c d2 03    	vblendps xmm2,xmm9,xmm2,0x3
  a47ef2:	c5 7c 10 8c 17 58 06 	vmovups ymm9,YMMWORD PTR [rdi+rdx*1+0x658]
  a47ef9:	00 00 
  a47efb:	c4 e3 69 21 94 17 e4 	vinsertps xmm2,xmm2,DWORD PTR [rdi+rdx*1+0xe4],0x30
  a47f02:	00 00 00 30 
  a47f06:	62 f3 b5 48 1a c9 01 	vinsertf64x4 zmm1,zmm9,ymm1,0x1
  a47f0d:	c5 7b 10 8c 17 e8 00 	vmovsd xmm9,QWORD PTR [rdi+rdx*1+0xe8]
  a47f14:	00 00 
  a47f16:	c4 c3 6d 18 d1 01    	vinsertf128 ymm2,ymm2,xmm9,0x1
  a47f1c:	c5 7c 10 8c 17 b8 00 	vmovups ymm9,YMMWORD PTR [rdi+rdx*1+0xb8]
  a47f23:	00 00 
  a47f25:	62 f3 b5 48 1a d2 01 	vinsertf64x4 zmm2,zmm9,ymm2,0x1
  a47f2c:	62 91 7c 48 28 c0    	vmovaps zmm0,zmm24
  a47f32:	62 92 55 48 7f c4    	vpermt2ps zmm0,zmm5,zmm28
  a47f38:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm0
  a47f3f:	06 
  a47f40:	62 71 7c 48 28 25 76 	vmovaps zmm12,ZMMWORD PTR [rip+0xffffffffff64a676]        # 925c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1fa70>
  a47f47:	a6 64 ff 
  a47f4a:	62 d2 1d 48 7f e5    	vpermt2ps zmm4,zmm12,zmm13
  a47f50:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm4
  a47f57:	17 
  a47f58:	62 e1 7c 48 10 a4 17 	vmovups zmm20,ZMMWORD PTR [rdi+rdx*1+0x258]
  a47f5f:	58 02 00 00 
  a47f63:	62 92 fd c9 88 c2    	vexpandpd zmm0{k1}{z},zmm26
  a47f69:	62 31 7c 48 28 ee    	vmovaps zmm13,zmm22
  a47f6f:	62 32 1d 48 7f e8    	vpermt2ps zmm13,zmm12,zmm16
  a47f75:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm13
  a47f7c:	0b 
  a47f7d:	62 b1 7c 48 28 f4    	vmovaps zmm6,zmm20
  a47f83:	62 f2 55 48 7f f0    	vpermt2ps zmm6,zmm5,zmm0
  a47f89:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x700],zmm6
  a47f90:	1c 
  a47f91:	62 92 1d 48 7f fd    	vpermt2ps zmm7,zmm12,zmm29
  a47f97:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm7
  a47f9e:	0c 
  a47f9f:	62 e1 7c 48 10 84 17 	vmovups zmm16,ZMMWORD PTR [rdi+rdx*1+0x528]
  a47fa6:	28 05 00 00 
  a47faa:	62 f2 fd c9 88 db    	vexpandpd zmm3{k1}{z},zmm3
  a47fb0:	62 12 1d 48 7f d7    	vpermt2ps zmm10,zmm12,zmm31
  a47fb6:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm10
  a47fbd:	0d 
  a47fbe:	62 61 7c 48 10 94 17 	vmovups zmm26,ZMMWORD PTR [rdi+rdx*1+0x618]
  a47fc5:	18 06 00 00 
  a47fc9:	62 f2 fd c9 88 c9    	vexpandpd zmm1{k1}{z},zmm1
  a47fcf:	62 11 7c 48 28 cb    	vmovaps zmm9,zmm27
  a47fd5:	62 12 1d 48 7f c9    	vpermt2ps zmm9,zmm12,zmm25
  a47fdb:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm9
  a47fe2:	0f 
  a47fe3:	62 11 7c 48 28 f2    	vmovaps zmm14,zmm26
  a47fe9:	62 72 55 48 7f f1    	vpermt2ps zmm14,zmm5,zmm1
  a47fef:	62 71 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm14
  a47ff6:	01 
  a47ff7:	62 a2 1d 48 7f cd    	vpermt2ps zmm17,zmm12,zmm21
  a47ffd:	62 61 7c 48 10 8c 17 	vmovups zmm25,ZMMWORD PTR [rdi+rdx*1+0x78]
  a48004:	78 00 00 00 
  a48008:	62 f2 fd c9 88 d2    	vexpandpd zmm2{k1}{z},zmm2
  a4800e:	62 62 1d 48 7f d1    	vpermt2ps zmm26,zmm12,zmm1
  a48014:	62 11 7c 48 28 f9    	vmovaps zmm15,zmm25
  a4801a:	62 72 55 48 7f fa    	vpermt2ps zmm15,zmm5,zmm2
  a48020:	62 62 1d 48 7f ca    	vpermt2ps zmm25,zmm12,zmm2
  a48026:	62 31 7c 48 28 f0    	vmovaps zmm14,zmm16
  a4802c:	62 72 55 48 7f f3    	vpermt2ps zmm14,zmm5,zmm3
  a48032:	62 71 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm14
  a48039:	04 
  a4803a:	62 02 1d 48 7f c4    	vpermt2ps zmm24,zmm12,zmm28
  a48040:	62 61 7c 48 10 ac 17 	vmovups zmm29,ZMMWORD PTR [rdi+rdx*1+0x168]
  a48047:	68 01 00 00 
  a4804b:	62 92 fd c9 88 ce    	vexpandpd zmm1{k1}{z},zmm30
  a48051:	62 e2 1d 48 7f e0    	vpermt2ps zmm20,zmm12,zmm0
  a48057:	62 91 7c 48 28 c5    	vmovaps zmm0,zmm29
  a4805d:	62 f2 55 48 7f c1    	vpermt2ps zmm0,zmm5,zmm1
  a48063:	62 f1 7c 48 28 e8    	vmovaps zmm5,zmm0
  a48069:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x680],zmm0
  a48070:	1a 
  a48071:	62 e2 1d 48 7f c3    	vpermt2ps zmm16,zmm12,zmm3
  a48077:	62 f2 7d 48 18 15 73 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff62d573]        # 755f4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2aa4>
  a4807e:	d5 62 ff 
  a48081:	62 61 7c 48 28 f2    	vmovaps zmm30,zmm2
  a48087:	62 22 3d 48 a8 f2    	vfmadd213ps zmm30,zmm8,zmm18
  a4808d:	62 62 1d 48 7f e9    	vpermt2ps zmm29,zmm12,zmm1
  a48093:	62 62 7d 48 18 1d 3b 	vbroadcastss zmm27,DWORD PTR [rip+0xffffffffff62d53b]        # 755d8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a88>
  a4809a:	d5 62 ff 
  a4809d:	62 01 7c 48 28 fb    	vmovaps zmm31,zmm27
  a480a3:	62 22 3d 48 ac fa    	vfnmadd213ps zmm31,zmm8,zmm18
  a480a9:	62 e2 7d 48 18 35 19 	vbroadcastss zmm22,DWORD PTR [rip+0xffffffffff62d219]        # 752cc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x277c>
  a480b0:	d2 62 ff 
  a480b3:	62 c2 4d 40 bc d0    	vfnmadd231ps zmm18,zmm22,zmm8
  a480b9:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x80]
  a480c0:	02 
  a480c1:	62 f1 7c 48 58 44 24 	vaddps zmm0,zmm0,ZMMWORD PTR [rsp+0x1c0]
  a480c8:	07 
  a480c9:	62 f1 7c 48 58 4c 24 	vaddps zmm1,zmm0,ZMMWORD PTR [rsp-0x40]
  a480d0:	ff 
  a480d1:	62 22 7d 48 bc f6    	vfnmadd231ps zmm30,zmm0,zmm22
  a480d7:	62 62 7d 48 b8 fa    	vfmadd231ps zmm31,zmm0,zmm2
  a480dd:	62 e2 25 40 bc d0    	vfnmadd231ps zmm18,zmm27,zmm0
  a480e3:	62 f1 24 48 58 44 24 	vaddps zmm0,zmm11,ZMMWORD PTR [rsp+0x140]
  a480ea:	05 
  a480eb:	62 61 74 48 58 e0    	vaddps zmm28,zmm1,zmm0
  a480f1:	62 02 7d 48 bc f3    	vfnmadd231ps zmm30,zmm0,zmm27
  a480f7:	62 22 7d 48 bc fe    	vfnmadd231ps zmm31,zmm0,zmm22
  a480fd:	62 e2 6d 48 b8 d0    	vfmadd231ps zmm18,zmm2,zmm0
  a48103:	62 d1 44 48 5c ca    	vsubps zmm1,zmm7,zmm10
  a48109:	62 b1 34 48 5c d9    	vsubps zmm3,zmm9,zmm17
  a4810f:	62 31 7c 48 28 d1    	vmovaps zmm10,zmm17
  a48115:	62 e2 7d 48 18 2d 71 	vbroadcastss zmm21,DWORD PTR [rip+0xffffffffff62d371]        # 75490 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2940>
  a4811c:	d3 62 ff 
  a4811f:	62 31 64 48 59 cd    	vmulps zmm9,zmm3,zmm21
  a48125:	62 e2 7d 48 18 1d 31 	vbroadcastss zmm19,DWORD PTR [rip+0xffffffffff62d531]        # 75660 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b10>
  a4812c:	d5 62 ff 
  a4812f:	62 32 75 48 b8 cb    	vfmadd231ps zmm9,zmm1,zmm19
  a48135:	62 e2 7d 48 18 0d a9 	vbroadcastss zmm17,DWORD PTR [rip+0xffffffffff62d4a9]        # 755e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a98>
  a4813c:	d4 62 ff 
  a4813f:	62 31 74 48 59 c1    	vmulps zmm8,zmm1,zmm17
  a48145:	62 32 65 48 bc c3    	vfnmadd231ps zmm8,zmm3,zmm19
  a4814b:	62 b1 74 48 59 fd    	vmulps zmm7,zmm1,zmm21
  a48151:	62 f2 75 40 bc fb    	vfnmadd231ps zmm7,zmm17,zmm3
  a48157:	62 d1 5c 48 5c cd    	vsubps zmm1,zmm4,zmm13
  a4815d:	62 32 75 48 b8 c9    	vfmadd231ps zmm9,zmm1,zmm17
  a48163:	62 32 75 48 b8 c5    	vfmadd231ps zmm8,zmm1,zmm21
  a48169:	62 f2 65 40 bc f9    	vfnmadd231ps zmm7,zmm19,zmm1
  a4816f:	62 72 fd c9 88 6c 24 	vexpandpd zmm13{k1}{z},ZMMWORD PTR [rsp-0x80]
  a48176:	f0 
  a48177:	62 71 7c 48 10 9c 17 	vmovups zmm11,ZMMWORD PTR [rdi+rdx*1+0x348]
  a4817e:	48 03 00 00 
  a48182:	62 d1 7c 48 28 e3    	vmovaps zmm4,zmm11
  a48188:	62 f1 7c 48 28 05 ee 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff64a3ee]        # 92580 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1fa30>
  a4818f:	a3 64 ff 
  a48192:	62 d2 7d 48 7f e5    	vpermt2ps zmm4,zmm0,zmm13
  a48198:	62 f1 4c 48 58 5c 24 	vaddps zmm3,zmm6,ZMMWORD PTR [rsp+0x180]
  a4819f:	06 
  a481a0:	62 f1 7c 48 28 f2    	vmovaps zmm6,zmm2
  a481a6:	62 f2 65 48 a8 f4    	vfmadd213ps zmm6,zmm3,zmm4
  a481ac:	62 91 7c 48 28 cb    	vmovaps zmm1,zmm27
  a481b2:	62 f2 65 48 ac cc    	vfnmadd213ps zmm1,zmm3,zmm4
  a481b8:	62 f1 5c 48 58 c3    	vaddps zmm0,zmm4,zmm3
  a481be:	62 f2 4d 40 bc e3    	vfnmadd231ps zmm4,zmm22,zmm3
  a481c4:	62 f1 0c 48 58 dd    	vaddps zmm3,zmm14,zmm5
  a481ca:	62 f1 7c 48 58 c3    	vaddps zmm0,zmm0,zmm3
  a481d0:	62 b2 65 48 bc f6    	vfnmadd231ps zmm6,zmm3,zmm22
  a481d6:	62 f2 65 48 b8 ca    	vfmadd231ps zmm1,zmm3,zmm2
  a481dc:	62 f2 25 40 bc e3    	vfnmadd231ps zmm4,zmm27,zmm3
  a481e2:	62 f1 04 48 58 5c 24 	vaddps zmm3,zmm15,ZMMWORD PTR [rsp+0x40]
  a481e9:	01 
  a481ea:	62 71 7c 48 58 f3    	vaddps zmm14,zmm0,zmm3
  a481f0:	62 92 65 48 bc f3    	vfnmadd231ps zmm6,zmm3,zmm27
  a481f6:	62 b2 65 48 bc ce    	vfnmadd231ps zmm1,zmm3,zmm22
  a481fc:	62 f2 6d 48 b8 e3    	vfmadd231ps zmm4,zmm2,zmm3
  a48202:	62 b1 3c 40 5c dc    	vsubps zmm3,zmm24,zmm20
  a48208:	62 91 7c 40 5c d5    	vsubps zmm2,zmm16,zmm29
  a4820e:	62 b1 6c 48 59 ed    	vmulps zmm5,zmm2,zmm21
  a48214:	62 b2 65 48 b8 eb    	vfmadd231ps zmm5,zmm3,zmm19
  a4821a:	62 b1 64 48 59 c1    	vmulps zmm0,zmm3,zmm17
  a48220:	62 b2 6d 48 bc c3    	vfnmadd231ps zmm0,zmm2,zmm19
  a48226:	62 b1 64 48 59 dd    	vmulps zmm3,zmm3,zmm21
  a4822c:	62 f2 75 40 bc da    	vfnmadd231ps zmm3,zmm17,zmm2
  a48232:	62 91 2c 40 5c d1    	vsubps zmm2,zmm26,zmm25
  a48238:	62 b2 6d 48 b8 e9    	vfmadd231ps zmm5,zmm2,zmm17
  a4823e:	62 b2 6d 48 b8 c5    	vfmadd231ps zmm0,zmm2,zmm21
  a48244:	62 f2 65 40 bc da    	vfnmadd231ps zmm3,zmm19,zmm2
  a4824a:	62 f1 6c 40 5c d7    	vsubps zmm2,zmm18,zmm7
  a48250:	62 f1 6c 40 58 ff    	vaddps zmm7,zmm18,zmm7
  a48256:	62 e1 5c 48 5c d3    	vsubps zmm18,zmm4,zmm3
  a4825c:	62 f1 5c 48 58 db    	vaddps zmm3,zmm4,zmm3
  a48262:	62 d1 04 40 5c e0    	vsubps zmm4,zmm31,zmm8
  a48268:	62 51 04 40 58 c0    	vaddps zmm8,zmm31,zmm8
  a4826e:	62 61 74 48 5c f8    	vsubps zmm31,zmm1,zmm0
  a48274:	62 f1 74 48 58 c0    	vaddps zmm0,zmm1,zmm0
  a4827a:	62 d1 0c 40 58 c9    	vaddps zmm1,zmm30,zmm9
  a48280:	62 51 0c 40 5c c9    	vsubps zmm9,zmm30,zmm9
  a48286:	62 61 4c 48 58 f5    	vaddps zmm30,zmm6,zmm5
  a4828c:	62 f1 4c 48 5c ed    	vsubps zmm5,zmm6,zmm5
  a48292:	62 01 74 48 58 de    	vaddps zmm27,zmm1,zmm30
  a48298:	62 61 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x6c0],zmm27
  a4829f:	1b 
  a482a0:	62 91 74 48 5c ce    	vsubps zmm1,zmm1,zmm30
  a482a6:	62 f1 7c 48 11 0c 24 	vmovups ZMMWORD PTR [rsp],zmm1
  a482ad:	62 f1 44 48 58 cb    	vaddps zmm1,zmm7,zmm3
  a482b3:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a482ba:	fe 
  a482bb:	62 f1 44 48 5c cb    	vsubps zmm1,zmm7,zmm3
  a482c1:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm1
  a482c8:	0e 
  a482c9:	62 21 6c 48 58 f2    	vaddps zmm30,zmm2,zmm18
  a482cf:	62 61 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x640],zmm30
  a482d6:	19 
  a482d7:	62 b1 6c 48 5c ca    	vsubps zmm1,zmm2,zmm18
  a482dd:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm1
  a482e4:	09 
  a482e5:	62 f1 34 48 58 cd    	vaddps zmm1,zmm9,zmm5
  a482eb:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a482f2:	ff 
  a482f3:	62 f1 34 48 5c cd    	vsubps zmm1,zmm9,zmm5
  a482f9:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x600],zmm1
  a48300:	18 
  a48301:	62 f1 3c 48 58 c8    	vaddps zmm1,zmm8,zmm0
  a48307:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm1
  a4830e:	13 
  a4830f:	62 f1 3c 48 5c c0    	vsubps zmm0,zmm8,zmm0
  a48315:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm0
  a4831c:	14 
  a4831d:	62 91 5c 48 58 df    	vaddps zmm3,zmm4,zmm31
  a48323:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm3
  a4832a:	03 
  a4832b:	62 91 5c 48 5c c7    	vsubps zmm0,zmm4,zmm31
  a48331:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm0
  a48338:	12 
  a48339:	62 d1 1c 40 58 fe    	vaddps zmm7,zmm28,zmm14
  a4833f:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm7
  a48346:	0a 
  a48347:	62 c1 1c 40 5c d6    	vsubps zmm18,zmm28,zmm14
  a4834d:	62 e1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm18
  a48354:	08 
  a48355:	62 e2 1d 48 7f 7c 24 	vpermt2ps zmm23,zmm12,ZMMWORD PTR [rsp+0x780]
  a4835c:	1e 
  a4835d:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x300]
  a48364:	0c 
  a48365:	62 71 7c 48 58 74 24 	vaddps zmm14,zmm0,ZMMWORD PTR [rsp+0x340]
  a4836c:	0d 
  a4836d:	62 f1 2c 48 58 4c 24 	vaddps zmm1,zmm10,ZMMWORD PTR [rsp+0x3c0]
  a48374:	0f 
  a48375:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x2c0]
  a4837c:	0b 
  a4837d:	62 f1 7c 48 58 74 24 	vaddps zmm6,zmm0,ZMMWORD PTR [rsp+0x5c0]
  a48384:	17 
  a48385:	62 52 1d 48 7f dd    	vpermt2ps zmm11,zmm12,zmm13
  a4838b:	62 b1 3c 40 58 ec    	vaddps zmm5,zmm24,zmm20
  a48391:	62 91 7c 40 58 d5    	vaddps zmm2,zmm16,zmm29
  a48397:	62 91 2c 40 58 e1    	vaddps zmm4,zmm26,zmm25
  a4839d:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x140]
  a483a4:	05 
  a483a5:	62 71 7c 48 5c 4c 24 	vsubps zmm9,zmm0,ZMMWORD PTR [rsp+0x740]
  a483ac:	1d 
  a483ad:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x400]
  a483b4:	10 
  a483b5:	62 71 7c 48 5c 54 24 	vsubps zmm10,zmm0,ZMMWORD PTR [rsp+0x440]
  a483bc:	11 
  a483bd:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x1c0]
  a483c4:	07 
  a483c5:	62 71 7c 48 5c 6c 24 	vsubps zmm13,zmm0,ZMMWORD PTR [rsp+0x80]
  a483cc:	02 
  a483cd:	62 f1 7c 48 28 c7    	vmovaps zmm0,zmm7
  a483d3:	62 e1 7c 48 28 25 e3 	vmovaps zmm20,ZMMWORD PTR [rip+0xffffffffff67ebe3]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a483da:	eb 67 ff 
  a483dd:	62 92 5d 40 7f c3    	vpermt2ps zmm0,zmm20,zmm27
  a483e3:	62 61 7c 48 28 c8    	vmovaps zmm25,zmm0
  a483e9:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm0
  a483f0:	0f 
  a483f1:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x40]
  a483f8:	01 
  a483f9:	62 51 7c 48 5c c7    	vsubps zmm8,zmm0,zmm15
  a483ff:	62 d1 44 40 58 c6    	vaddps zmm0,zmm23,zmm14
  a48405:	62 f1 7c 48 58 c1    	vaddps zmm0,zmm0,zmm1
  a4840b:	62 61 7c 48 58 d6    	vaddps zmm26,zmm0,zmm6
  a48411:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x180]
  a48418:	06 
  a48419:	62 71 7c 48 5c 64 24 	vsubps zmm12,zmm0,ZMMWORD PTR [rsp+0x700]
  a48420:	1c 
  a48421:	62 b1 14 48 59 c5    	vmulps zmm0,zmm13,zmm21
  a48427:	62 b2 2d 48 b8 c3    	vfmadd231ps zmm0,zmm10,zmm19
  a4842d:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0x100]
  a48434:	04 
  a48435:	62 71 44 48 5c 7c 24 	vsubps zmm15,zmm7,ZMMWORD PTR [rsp+0x680]
  a4843c:	1a 
  a4843d:	62 b1 2c 48 59 f9    	vmulps zmm7,zmm10,zmm17
  a48443:	62 b2 15 48 bc fb    	vfnmadd231ps zmm7,zmm13,zmm19
  a48449:	62 a1 2c 48 59 c5    	vmulps zmm16,zmm10,zmm21
  a4844f:	62 c2 75 40 bc c5    	vfnmadd231ps zmm16,zmm17,zmm13
  a48455:	62 62 7d 48 18 1d 95 	vbroadcastss zmm27,DWORD PTR [rip+0xffffffffff62d195]        # 755f4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2aa4>
  a4845c:	d1 62 ff 
  a4845f:	62 11 7c 48 28 d3    	vmovaps zmm10,zmm27
  a48465:	62 32 0d 48 a8 d7    	vfmadd213ps zmm10,zmm14,zmm23
  a4846b:	62 b2 35 48 b8 c1    	vfmadd231ps zmm0,zmm9,zmm17
  a48471:	62 b2 35 48 b8 fd    	vfmadd231ps zmm7,zmm9,zmm21
  a48477:	62 c2 65 40 bc c1    	vfnmadd231ps zmm16,zmm19,zmm9
  a4847d:	62 62 7d 48 18 05 51 	vbroadcastss zmm24,DWORD PTR [rip+0xffffffffff62d151]        # 755d8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a88>
  a48484:	d1 62 ff 
  a48487:	62 11 7c 48 28 c8    	vmovaps zmm9,zmm24
  a4848d:	62 32 0d 48 ac cf    	vfnmadd213ps zmm9,zmm14,zmm23
  a48493:	62 c2 4d 40 bc fe    	vfnmadd231ps zmm23,zmm22,zmm14
  a48499:	62 71 24 48 58 ed    	vaddps zmm13,zmm11,zmm5
  a4849f:	62 32 75 48 bc d6    	vfnmadd231ps zmm10,zmm1,zmm22
  a484a5:	62 12 4d 48 bc d0    	vfnmadd231ps zmm10,zmm6,zmm24
  a484ab:	62 12 75 48 b8 cb    	vfmadd231ps zmm9,zmm1,zmm27
  a484b1:	62 e2 3d 40 bc f9    	vfnmadd231ps zmm23,zmm24,zmm1
  a484b7:	62 b1 04 48 59 cd    	vmulps zmm1,zmm15,zmm21
  a484bd:	62 b2 1d 48 b8 cb    	vfmadd231ps zmm1,zmm12,zmm19
  a484c3:	62 32 4d 48 bc ce    	vfnmadd231ps zmm9,zmm6,zmm22
  a484c9:	62 e2 25 40 b8 fe    	vfmadd231ps zmm23,zmm27,zmm6
  a484cf:	62 b1 1c 48 59 f1    	vmulps zmm6,zmm12,zmm17
  a484d5:	62 b2 05 48 bc f3    	vfnmadd231ps zmm6,zmm15,zmm19
  a484db:	62 31 1c 48 59 e5    	vmulps zmm12,zmm12,zmm21
  a484e1:	62 52 75 40 bc e7    	vfnmadd231ps zmm12,zmm17,zmm15
  a484e7:	62 11 7c 48 28 f3    	vmovaps zmm14,zmm27
  a484ed:	62 52 55 48 a8 f3    	vfmadd213ps zmm14,zmm5,zmm11
  a484f3:	62 b2 3d 48 b8 c9    	vfmadd231ps zmm1,zmm8,zmm17
  a484f9:	62 b2 3d 48 b8 f5    	vfmadd231ps zmm6,zmm8,zmm21
  a484ff:	62 52 65 40 bc e0    	vfnmadd231ps zmm12,zmm19,zmm8
  a48505:	62 11 7c 48 28 c0    	vmovaps zmm8,zmm24
  a4850b:	62 52 55 48 ac c3    	vfnmadd213ps zmm8,zmm5,zmm11
  a48511:	62 72 4d 40 bc dd    	vfnmadd231ps zmm11,zmm22,zmm5
  a48517:	62 92 5d 40 7f de    	vpermt2ps zmm3,zmm20,zmm30
  a4851d:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm3
  a48524:	04 
  a48525:	62 f1 14 48 58 ea    	vaddps zmm5,zmm13,zmm2
  a4852b:	62 32 6d 48 bc f6    	vfnmadd231ps zmm14,zmm2,zmm22
  a48531:	62 12 6d 48 b8 c3    	vfmadd231ps zmm8,zmm2,zmm27
  a48537:	62 72 3d 40 bc da    	vfnmadd231ps zmm11,zmm24,zmm2
  a4853d:	62 81 7c 48 28 e9    	vmovaps zmm21,zmm25
  a48543:	62 e1 7c 48 28 0d b3 	vmovaps zmm17,ZMMWORD PTR [rip+0xffffffffff67e9b3]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a4854a:	e9 67 ff 
  a4854d:	62 e2 75 40 7f eb    	vpermt2ps zmm21,zmm17,zmm3
  a48553:	62 e1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x900],zmm21
  a4855a:	24 
  a4855b:	62 f1 54 48 58 ec    	vaddps zmm5,zmm5,zmm4
  a48561:	62 12 5d 48 bc f0    	vfnmadd231ps zmm14,zmm4,zmm24
  a48567:	62 32 5d 48 bc c6    	vfnmadd231ps zmm8,zmm4,zmm22
  a4856d:	62 72 25 40 b8 dc    	vfmadd231ps zmm11,zmm27,zmm4
  a48573:	62 b1 7c 40 58 d7    	vaddps zmm2,zmm16,zmm23
  a48579:	62 b1 44 40 5c e0    	vsubps zmm4,zmm23,zmm16
  a4857f:	62 51 1c 48 58 eb    	vaddps zmm13,zmm12,zmm11
  a48585:	62 51 24 48 5c dc    	vsubps zmm11,zmm11,zmm12
  a4858b:	62 51 44 48 58 e1    	vaddps zmm12,zmm7,zmm9
  a48591:	62 f1 34 48 5c ff    	vsubps zmm7,zmm9,zmm7
  a48597:	62 51 4c 48 58 c8    	vaddps zmm9,zmm6,zmm8
  a4859d:	62 f1 3c 48 5c f6    	vsubps zmm6,zmm8,zmm6
  a485a3:	62 71 2c 48 5c c0    	vsubps zmm8,zmm10,zmm0
  a485a9:	62 d1 7c 48 58 c2    	vaddps zmm0,zmm0,zmm10
  a485af:	62 71 0c 48 5c d1    	vsubps zmm10,zmm14,zmm1
  a485b5:	62 51 74 48 58 f6    	vaddps zmm14,zmm1,zmm14
  a485bb:	62 51 3c 48 58 fa    	vaddps zmm15,zmm8,zmm10
  a485c1:	62 71 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm15
  a485c8:	0d 
  a485c9:	62 c1 3c 48 5c f2    	vsubps zmm22,zmm8,zmm10
  a485cf:	62 e1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm22
  a485d6:	05 
  a485d7:	62 41 5c 48 58 e3    	vaddps zmm28,zmm4,zmm11
  a485dd:	62 51 5c 48 5c c3    	vsubps zmm8,zmm4,zmm11
  a485e3:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x7c0],zmm8
  a485ea:	1f 
  a485eb:	62 51 6c 48 58 d5    	vaddps zmm10,zmm2,zmm13
  a485f1:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm10
  a485f8:	0c 
  a485f9:	62 51 6c 48 5c ed    	vsubps zmm13,zmm2,zmm13
  a485ff:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm13
  a48606:	01 
  a48607:	62 41 7c 48 58 fe    	vaddps zmm31,zmm0,zmm14
  a4860d:	62 61 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm31
  a48614:	07 
  a48615:	62 41 7c 48 5c f6    	vsubps zmm30,zmm0,zmm14
  a4861b:	62 f1 44 48 58 ce    	vaddps zmm1,zmm7,zmm6
  a48621:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm1
  a48628:	16 
  a48629:	62 61 44 48 5c ee    	vsubps zmm29,zmm7,zmm6
  a4862f:	62 51 1c 48 58 d9    	vaddps zmm11,zmm12,zmm9
  a48635:	62 71 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm11
  a4863c:	06 
  a4863d:	62 d1 1c 48 5c d9    	vsubps zmm3,zmm12,zmm9
  a48643:	62 71 2c 40 58 e5    	vaddps zmm12,zmm26,zmm5
  a48649:	62 f1 2c 40 5c e5    	vsubps zmm4,zmm26,zmm5
  a4864f:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm4
  a48656:	02 
  a48657:	62 61 7c 48 10 4c 24 	vmovups zmm25,ZMMWORD PTR [rsp-0x80]
  a4865e:	fe 
  a4865f:	62 62 5d 40 7f 4c 24 	vpermt2ps zmm25,zmm20,ZMMWORD PTR [rsp+0x4c0]
  a48666:	13 
  a48667:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x40]
  a4866e:	ff 
  a4866f:	c5 d0 57 ed          	vxorps xmm5,xmm5,xmm5
  a48673:	62 f2 5d 40 7f c5    	vpermt2ps zmm0,zmm20,zmm5
  a48679:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm0
  a48680:	17 
  a48681:	62 91 7c 48 28 f1    	vmovaps zmm6,zmm25
  a48687:	62 f2 75 40 7f f0    	vpermt2ps zmm6,zmm17,zmm0
  a4868d:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x8c0],zmm6
  a48694:	23 
  a48695:	62 61 7c 48 10 04 24 	vmovups zmm24,ZMMWORD PTR [rsp]
  a4869c:	62 61 7c 48 10 5c 24 	vmovups zmm27,ZMMWORD PTR [rsp+0x380]
  a486a3:	0e 
  a486a4:	62 02 5d 40 7f c3    	vpermt2ps zmm24,zmm20,zmm27
  a486aa:	62 71 7c 48 10 74 24 	vmovups zmm14,ZMMWORD PTR [rsp+0x240]
  a486b1:	09 
  a486b2:	62 d1 7c 48 28 c6    	vmovaps zmm0,zmm14
  a486b8:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0x600]
  a486bf:	18 
  a486c0:	62 f2 5d 40 7f c7    	vpermt2ps zmm0,zmm20,zmm7
  a486c6:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm0
  a486cd:	0b 
  a486ce:	62 91 7c 48 28 d0    	vmovaps zmm2,zmm24
  a486d4:	62 f2 75 40 7f d0    	vpermt2ps zmm2,zmm17,zmm0
  a486da:	62 71 7c 48 28 ca    	vmovaps zmm9,zmm2
  a486e0:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x880],zmm2
  a486e7:	22 
  a486e8:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x500]
  a486ef:	14 
  a486f0:	62 61 7c 48 28 d2    	vmovaps zmm26,zmm2
  a486f6:	62 62 5d 40 7f 54 24 	vpermt2ps zmm26,zmm20,ZMMWORD PTR [rsp+0x480]
  a486fd:	12 
  a486fe:	62 e2 5d 40 7f d5    	vpermt2ps zmm18,zmm20,zmm5
  a48704:	62 e1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm18
  a4870b:	15 
  a4870c:	62 81 7c 48 28 c2    	vmovaps zmm16,zmm26
  a48712:	62 a2 75 40 7f c2    	vpermt2ps zmm16,zmm17,zmm18
  a48718:	62 c1 7c 48 28 dc    	vmovaps zmm19,zmm12
  a4871e:	62 c2 5d 40 7f df    	vpermt2ps zmm19,zmm20,zmm15
  a48724:	62 d1 7c 48 28 c3    	vmovaps zmm0,zmm11
  a4872a:	62 d2 5d 40 7f c2    	vpermt2ps zmm0,zmm20,zmm10
  a48730:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x9c0],zmm0
  a48737:	27 
  a48738:	62 a1 7c 48 28 fb    	vmovaps zmm23,zmm19
  a4873e:	62 e2 75 40 7f f8    	vpermt2ps zmm23,zmm17,zmm0
  a48744:	62 11 7c 48 28 dc    	vmovaps zmm11,zmm28
  a4874a:	62 72 5d 40 7f d9    	vpermt2ps zmm11,zmm20,zmm1
  a48750:	62 91 7c 48 28 c7    	vmovaps zmm0,zmm31
  a48756:	62 f2 5d 40 7f c5    	vpermt2ps zmm0,zmm20,zmm5
  a4875c:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x980],zmm0
  a48763:	26 
  a48764:	62 c1 7c 48 28 d3    	vmovaps zmm18,zmm11
  a4876a:	62 e2 75 40 7f d0    	vpermt2ps zmm18,zmm17,zmm0
  a48770:	62 31 7c 48 28 d6    	vmovaps zmm10,zmm22
  a48776:	62 52 5d 40 7f d0    	vpermt2ps zmm10,zmm20,zmm8
  a4877c:	62 d1 7c 48 28 c5    	vmovaps zmm0,zmm13
  a48782:	62 92 5d 40 7f c6    	vpermt2ps zmm0,zmm20,zmm30
  a48788:	62 01 7c 48 28 fe    	vmovaps zmm31,zmm30
  a4878e:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x940],zmm0
  a48795:	25 
  a48796:	62 51 7c 48 28 fa    	vmovaps zmm15,zmm10
  a4879c:	62 72 75 40 7f f8    	vpermt2ps zmm15,zmm17,zmm0
  a487a2:	62 81 7c 48 28 f5    	vmovaps zmm22,zmm29
  a487a8:	62 e2 5d 40 7f f3    	vpermt2ps zmm22,zmm20,zmm3
  a487ae:	62 f1 7c 48 28 cb    	vmovaps zmm1,zmm3
  a487b4:	62 61 7c 48 28 f4    	vmovaps zmm30,zmm4
  a487ba:	62 62 5d 40 7f f5    	vpermt2ps zmm30,zmm20,zmm5
  a487c0:	62 31 7c 48 28 c6    	vmovaps zmm8,zmm22
  a487c6:	62 12 75 40 7f c6    	vpermt2ps zmm8,zmm17,zmm30
  a487cc:	62 f1 d5 40 14 e6    	vunpcklpd zmm4,zmm21,zmm6
  a487d2:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm4
  a487d9:	11 
  a487da:	62 b1 b5 48 14 e8    	vunpcklpd zmm5,zmm9,zmm16
  a487e0:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm5
  a487e7:	10 
  a487e8:	62 f1 7c 48 28 1d 0e 	vmovaps zmm3,ZMMWORD PTR [rip+0xffffffffff67e60e]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a487ef:	e6 67 ff 
  a487f2:	62 f2 65 48 7f e5    	vpermt2ps zmm4,zmm3,zmm5
  a487f8:	62 b1 c5 40 14 ea    	vunpcklpd zmm5,zmm23,zmm18
  a487fe:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x740],zmm5
  a48805:	1d 
  a48806:	62 d1 85 48 14 c0    	vunpcklpd zmm0,zmm15,zmm8
  a4880c:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x700],zmm0
  a48813:	1c 
  a48814:	62 f2 65 48 7f e8    	vpermt2ps zmm5,zmm3,zmm0
  a4881a:	62 71 7c 48 10 49 11 	vmovups zmm9,ZMMWORD PTR [rcx+0x440]
  a48821:	62 71 7c 48 10 69 10 	vmovups zmm13,ZMMWORD PTR [rcx+0x400]
  a48828:	62 d1 54 48 59 c5    	vmulps zmm0,zmm5,zmm13
  a4882e:	62 d2 5d 48 b8 c1    	vfmadd231ps zmm0,zmm4,zmm9
  a48834:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x780],zmm0
  a4883b:	1e 
  a4883c:	62 d1 5c 48 59 c5    	vmulps zmm0,zmm4,zmm13
  a48842:	62 f2 35 48 bc c5    	vfnmadd231ps zmm0,zmm9,zmm5
  a48848:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x680],zmm0
  a4884f:	1a 
  a48850:	62 f1 7c 48 28 05 26 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff67e726]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a48857:	e7 67 ff 
  a4885a:	62 e1 7c 48 10 64 24 	vmovups zmm20,ZMMWORD PTR [rsp+0x280]
  a48861:	0a 
  a48862:	62 e2 7d 48 7f 64 24 	vpermt2ps zmm20,zmm0,ZMMWORD PTR [rsp+0x6c0]
  a48869:	1b 
  a4886a:	62 e1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm20
  a48871:	0a 
  a48872:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0xc0]
  a48879:	03 
  a4887a:	62 f2 7d 48 7f 6c 24 	vpermt2ps zmm5,zmm0,ZMMWORD PTR [rsp+0x640]
  a48881:	19 
  a48882:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm5
  a48889:	03 
  a4888a:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp-0x80]
  a48891:	fe 
  a48892:	62 f2 7d 48 7f 5c 24 	vpermt2ps zmm3,zmm0,ZMMWORD PTR [rsp+0x4c0]
  a48899:	13 
  a4889a:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm3
  a488a1:	fe 
  a488a2:	62 f1 7c 48 10 24 24 	vmovups zmm4,ZMMWORD PTR [rsp]
  a488a9:	62 92 7d 48 7f e3    	vpermt2ps zmm4,zmm0,zmm27
  a488af:	62 f1 7c 48 11 24 24 	vmovups ZMMWORD PTR [rsp],zmm4
  a488b6:	62 51 7c 48 28 ce    	vmovaps zmm9,zmm14
  a488bc:	62 72 7d 48 7f cf    	vpermt2ps zmm9,zmm0,zmm7
  a488c2:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm9
  a488c9:	09 
  a488ca:	62 71 7c 48 28 ea    	vmovaps zmm13,zmm2
  a488d0:	62 72 7d 48 7f 6c 24 	vpermt2ps zmm13,zmm0,ZMMWORD PTR [rsp+0x480]
  a488d7:	12 
  a488d8:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm13
  a488df:	14 
  a488e0:	62 72 7d 48 7f 64 24 	vpermt2ps zmm12,zmm0,ZMMWORD PTR [rsp+0x340]
  a488e7:	0d 
  a488e8:	62 61 7c 48 10 5c 24 	vmovups zmm27,ZMMWORD PTR [rsp+0x180]
  a488ef:	06 
  a488f0:	62 62 7d 48 7f 5c 24 	vpermt2ps zmm27,zmm0,ZMMWORD PTR [rsp+0x300]
  a488f7:	0c 
  a488f8:	62 61 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm27
  a488ff:	06 
  a48900:	62 62 7d 48 7f 64 24 	vpermt2ps zmm28,zmm0,ZMMWORD PTR [rsp+0x580]
  a48907:	16 
  a48908:	62 61 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x800],zmm28
  a4890f:	20 
  a48910:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x140]
  a48917:	05 
  a48918:	62 f2 7d 48 7f 74 24 	vpermt2ps zmm6,zmm0,ZMMWORD PTR [rsp+0x7c0]
  a4891f:	1f 
  a48920:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm6
  a48927:	05 
  a48928:	62 71 7c 48 10 74 24 	vmovups zmm14,ZMMWORD PTR [rsp+0x40]
  a4892f:	01 
  a48930:	62 12 7d 48 7f f7    	vpermt2ps zmm14,zmm0,zmm31
  a48936:	62 71 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm14
  a4893d:	01 
  a4893e:	62 62 7d 48 7f e9    	vpermt2ps zmm29,zmm0,zmm1
  a48944:	62 b1 7c 48 28 fc    	vmovaps zmm7,zmm20
  a4894a:	62 f2 75 40 7f fd    	vpermt2ps zmm7,zmm17,zmm5
  a48950:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp-0x40]
  a48957:	ff 
  a48958:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  a4895c:	62 f2 7d 48 7f d1    	vpermt2ps zmm2,zmm0,zmm1
  a48962:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm2
  a48969:	ff 
  a4896a:	62 f1 7c 48 28 eb    	vmovaps zmm5,zmm3
  a48970:	62 f2 75 40 7f ea    	vpermt2ps zmm5,zmm17,zmm2
  a48976:	62 f1 7c 48 28 dc    	vmovaps zmm3,zmm4
  a4897c:	62 d2 75 40 7f d9    	vpermt2ps zmm3,zmm17,zmm9
  a48982:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x200]
  a48989:	08 
  a4898a:	62 f2 7d 48 7f e1    	vpermt2ps zmm4,zmm0,zmm1
  a48990:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm4
  a48997:	08 
  a48998:	62 d1 7c 48 28 d5    	vmovaps zmm2,zmm13
  a4899e:	62 f2 75 40 7f d4    	vpermt2ps zmm2,zmm17,zmm4
  a489a4:	62 f1 c5 48 15 e5    	vunpckhpd zmm4,zmm7,zmm5
  a489aa:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x840],zmm4
  a489b1:	21 
  a489b2:	62 71 e5 48 15 ca    	vunpckhpd zmm9,zmm3,zmm2
  a489b8:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm9
  a489bf:	16 
  a489c0:	62 61 7c 48 28 3d 36 	vmovaps zmm31,ZMMWORD PTR [rip+0xffffffffff67e436]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a489c7:	e4 67 ff 
  a489ca:	62 d2 05 40 7f e1    	vpermt2ps zmm4,zmm31,zmm9
  a489d0:	62 51 7c 48 28 cc    	vmovaps zmm9,zmm12
  a489d6:	62 12 75 40 7f cb    	vpermt2ps zmm9,zmm17,zmm27
  a489dc:	62 71 7c 48 10 6c 24 	vmovups zmm13,ZMMWORD PTR [rsp+0x1c0]
  a489e3:	07 
  a489e4:	62 72 7d 48 7f e9    	vpermt2ps zmm13,zmm0,zmm1
  a489ea:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm13
  a489f1:	07 
  a489f2:	62 01 7c 48 28 dc    	vmovaps zmm27,zmm28
  a489f8:	62 42 75 40 7f dd    	vpermt2ps zmm27,zmm17,zmm13
  a489fe:	62 e1 7c 48 28 e6    	vmovaps zmm20,zmm6
  a48a04:	62 c2 75 40 7f e6    	vpermt2ps zmm20,zmm17,zmm14
  a48a0a:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x80]
  a48a11:	02 
  a48a12:	62 f2 7d 48 7f f1    	vpermt2ps zmm6,zmm0,zmm1
  a48a18:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm6
  a48a1f:	02 
  a48a20:	62 01 7c 48 28 e5    	vmovaps zmm28,zmm29
  a48a26:	62 62 75 40 7f e6    	vpermt2ps zmm28,zmm17,zmm6
  a48a2c:	62 81 b5 48 15 cb    	vunpckhpd zmm17,zmm9,zmm27
  a48a32:	62 91 dd 40 15 c4    	vunpckhpd zmm0,zmm20,zmm28
  a48a38:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x7c0],zmm0
  a48a3f:	1f 
  a48a40:	62 31 7c 48 28 e9    	vmovaps zmm13,zmm17
  a48a46:	62 72 05 40 7f e8    	vpermt2ps zmm13,zmm31,zmm0
  a48a4c:	62 91 7c 48 28 f7    	vmovaps zmm6,zmm31
  a48a52:	62 f1 7c 48 10 41 04 	vmovups zmm0,ZMMWORD PTR [rcx+0x100]
  a48a59:	62 f1 7c 48 10 49 05 	vmovups zmm1,ZMMWORD PTR [rcx+0x140]
  a48a60:	62 61 14 48 59 f8    	vmulps zmm31,zmm13,zmm0
  a48a66:	62 62 5d 48 b8 f9    	vfmadd231ps zmm31,zmm4,zmm1
  a48a6c:	62 61 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm31
  a48a73:	13 
  a48a74:	62 f1 5c 48 59 c0    	vmulps zmm0,zmm4,zmm0
  a48a7a:	62 d2 75 48 bc c5    	vfnmadd231ps zmm0,zmm1,zmm13
  a48a80:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm0
  a48a87:	12 
  a48a88:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x900]
  a48a8f:	24 
  a48a90:	62 f1 fd 48 15 44 24 	vunpckhpd zmm0,zmm0,ZMMWORD PTR [rsp+0x8c0]
  a48a97:	23 
  a48a98:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm0
  a48a9f:	0e 
  a48aa0:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x880]
  a48aa7:	22 
  a48aa8:	62 b1 f5 48 15 c8    	vunpckhpd zmm1,zmm1,zmm16
  a48aae:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x600],zmm1
  a48ab5:	18 
  a48ab6:	62 b1 c5 40 15 e2    	vunpckhpd zmm4,zmm23,zmm18
  a48abc:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm4
  a48ac3:	0d 
  a48ac4:	62 51 85 48 15 c0    	vunpckhpd zmm8,zmm15,zmm8
  a48aca:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm8
  a48ad1:	0c 
  a48ad2:	62 e1 7c 48 28 05 64 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff67e364]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a48ad9:	e3 67 ff 
  a48adc:	62 f2 7d 40 7f c1    	vpermt2ps zmm0,zmm16,zmm1
  a48ae2:	62 f1 7c 48 28 cc    	vmovaps zmm1,zmm4
  a48ae8:	62 d2 7d 40 7f c8    	vpermt2ps zmm1,zmm16,zmm8
  a48aee:	62 f1 7c 48 10 61 17 	vmovups zmm4,ZMMWORD PTR [rcx+0x5c0]
  a48af5:	62 71 7c 48 10 41 16 	vmovups zmm8,ZMMWORD PTR [rcx+0x580]
  a48afc:	62 51 74 48 59 e8    	vmulps zmm13,zmm1,zmm8
  a48b02:	62 72 7d 48 b8 ec    	vfmadd231ps zmm13,zmm0,zmm4
  a48b08:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x6c0],zmm13
  a48b0f:	1b 
  a48b10:	62 d1 7c 48 59 c0    	vmulps zmm0,zmm0,zmm8
  a48b16:	62 f2 5d 48 bc c1    	vfnmadd231ps zmm0,zmm4,zmm1
  a48b1c:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x640],zmm0
  a48b23:	19 
  a48b24:	62 71 7c 48 28 3d 12 	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff67e412]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a48b2b:	e4 67 ff 
  a48b2e:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x3c0]
  a48b35:	0f 
  a48b36:	62 f2 05 48 7f 4c 24 	vpermt2ps zmm1,zmm15,ZMMWORD PTR [rsp+0x100]
  a48b3d:	04 
  a48b3e:	62 62 05 48 7f 4c 24 	vpermt2ps zmm25,zmm15,ZMMWORD PTR [rsp+0x5c0]
  a48b45:	17 
  a48b46:	62 62 05 48 7f 44 24 	vpermt2ps zmm24,zmm15,ZMMWORD PTR [rsp+0x2c0]
  a48b4d:	0b 
  a48b4e:	62 62 05 48 7f 54 24 	vpermt2ps zmm26,zmm15,ZMMWORD PTR [rsp+0x540]
  a48b55:	15 
  a48b56:	62 91 f5 48 15 c1    	vunpckhpd zmm0,zmm1,zmm25
  a48b5c:	62 71 7c 48 28 e9    	vmovaps zmm13,zmm1
  a48b62:	62 91 bd 40 15 ca    	vunpckhpd zmm1,zmm24,zmm26
  a48b68:	62 f2 4d 48 7f c1    	vpermt2ps zmm0,zmm6,zmm1
  a48b6e:	62 e2 05 48 7f 5c 24 	vpermt2ps zmm19,zmm15,ZMMWORD PTR [rsp+0x9c0]
  a48b75:	27 
  a48b76:	62 72 05 48 7f 5c 24 	vpermt2ps zmm11,zmm15,ZMMWORD PTR [rsp+0x980]
  a48b7d:	26 
  a48b7e:	62 72 05 48 7f 54 24 	vpermt2ps zmm10,zmm15,ZMMWORD PTR [rsp+0x940]
  a48b85:	25 
  a48b86:	62 82 05 48 7f f6    	vpermt2ps zmm22,zmm15,zmm30
  a48b8c:	62 d1 e5 40 15 cb    	vunpckhpd zmm1,zmm19,zmm11
  a48b92:	62 b1 ad 48 15 e6    	vunpckhpd zmm4,zmm10,zmm22
  a48b98:	62 f2 4d 48 7f cc    	vpermt2ps zmm1,zmm6,zmm4
  a48b9e:	62 f1 7c 48 10 61 1d 	vmovups zmm4,ZMMWORD PTR [rcx+0x740]
  a48ba5:	62 71 7c 48 10 41 1c 	vmovups zmm8,ZMMWORD PTR [rcx+0x700]
  a48bac:	62 c1 74 48 59 d0    	vmulps zmm18,zmm1,zmm8
  a48bb2:	62 e2 7d 48 b8 d4    	vfmadd231ps zmm18,zmm0,zmm4
  a48bb8:	62 e1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm18
  a48bbf:	0f 
  a48bc0:	62 d1 7c 48 59 c0    	vmulps zmm0,zmm0,zmm8
  a48bc6:	62 f2 5d 48 bc c1    	vfnmadd231ps zmm0,zmm4,zmm1
  a48bcc:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm0
  a48bd3:	04 
  a48bd4:	62 11 95 48 14 f1    	vunpcklpd zmm14,zmm13,zmm25
  a48bda:	62 91 bd 40 14 ca    	vunpcklpd zmm1,zmm24,zmm26
  a48be0:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm1
  a48be7:	0b 
  a48be8:	62 51 e5 40 14 c3    	vunpcklpd zmm8,zmm19,zmm11
  a48bee:	62 b1 ad 48 14 e6    	vunpcklpd zmm4,zmm10,zmm22
  a48bf4:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm4
  a48bfb:	15 
  a48bfc:	62 d1 7c 48 28 c6    	vmovaps zmm0,zmm14
  a48c02:	62 f2 7d 40 7f c1    	vpermt2ps zmm0,zmm16,zmm1
  a48c08:	62 d1 7c 48 28 c8    	vmovaps zmm1,zmm8
  a48c0e:	62 f2 7d 40 7f cc    	vpermt2ps zmm1,zmm16,zmm4
  a48c14:	62 71 7c 48 10 51 1b 	vmovups zmm10,ZMMWORD PTR [rcx+0x6c0]
  a48c1b:	62 71 7c 48 10 59 1a 	vmovups zmm11,ZMMWORD PTR [rcx+0x680]
  a48c22:	62 d1 74 48 59 e3    	vmulps zmm4,zmm1,zmm11
  a48c28:	62 d2 7d 48 b8 e2    	vfmadd231ps zmm4,zmm0,zmm10
  a48c2e:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm4
  a48c35:	17 
  a48c36:	62 c1 7c 48 59 eb    	vmulps zmm21,zmm0,zmm11
  a48c3c:	62 e2 2d 48 bc e9    	vfnmadd231ps zmm21,zmm10,zmm1
  a48c42:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x280]
  a48c49:	0a 
  a48c4a:	62 f2 05 48 7f 74 24 	vpermt2ps zmm6,zmm15,ZMMWORD PTR [rsp+0xc0]
  a48c51:	03 
  a48c52:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp-0x80]
  a48c59:	fe 
  a48c5a:	62 72 05 48 7f 54 24 	vpermt2ps zmm10,zmm15,ZMMWORD PTR [rsp-0x40]
  a48c61:	ff 
  a48c62:	62 f1 7c 48 10 0c 24 	vmovups zmm1,ZMMWORD PTR [rsp]
  a48c69:	62 f2 05 48 7f 4c 24 	vpermt2ps zmm1,zmm15,ZMMWORD PTR [rsp+0x240]
  a48c70:	09 
  a48c71:	62 71 7c 48 10 5c 24 	vmovups zmm11,ZMMWORD PTR [rsp+0x500]
  a48c78:	14 
  a48c79:	62 72 05 48 7f 5c 24 	vpermt2ps zmm11,zmm15,ZMMWORD PTR [rsp+0x200]
  a48c80:	08 
  a48c81:	62 72 05 48 7f 64 24 	vpermt2ps zmm12,zmm15,ZMMWORD PTR [rsp+0x180]
  a48c88:	06 
  a48c89:	62 71 7c 48 10 6c 24 	vmovups zmm13,ZMMWORD PTR [rsp+0x800]
  a48c90:	20 
  a48c91:	62 72 05 48 7f 6c 24 	vpermt2ps zmm13,zmm15,ZMMWORD PTR [rsp+0x1c0]
  a48c98:	07 
  a48c99:	62 e1 7c 48 10 5c 24 	vmovups zmm19,ZMMWORD PTR [rsp+0x140]
  a48ca0:	05 
  a48ca1:	62 e2 05 48 7f 5c 24 	vpermt2ps zmm19,zmm15,ZMMWORD PTR [rsp+0x40]
  a48ca8:	01 
  a48ca9:	62 62 05 48 7f 6c 24 	vpermt2ps zmm29,zmm15,ZMMWORD PTR [rsp+0x80]
  a48cb0:	02 
  a48cb1:	62 d1 cd 48 15 c2    	vunpckhpd zmm0,zmm6,zmm10
  a48cb7:	62 41 7c 48 28 f2    	vmovaps zmm30,zmm10
  a48cbd:	62 51 f5 48 15 d3    	vunpckhpd zmm10,zmm1,zmm11
  a48cc3:	62 d1 7c 48 28 e3    	vmovaps zmm4,zmm11
  a48cc9:	62 61 7c 48 28 c1    	vmovaps zmm24,zmm1
  a48ccf:	62 f1 7c 48 28 c8    	vmovaps zmm1,zmm0
  a48cd5:	62 d2 7d 40 7f ca    	vpermt2ps zmm1,zmm16,zmm10
  a48cdb:	62 41 9d 48 15 fd    	vunpckhpd zmm31,zmm12,zmm13
  a48ce1:	62 01 e5 40 15 d5    	vunpckhpd zmm26,zmm19,zmm29
  a48ce7:	62 a1 7c 48 28 f3    	vmovaps zmm22,zmm19
  a48ced:	62 11 7c 48 28 df    	vmovaps zmm11,zmm31
  a48cf3:	62 12 7d 40 7f da    	vpermt2ps zmm11,zmm16,zmm26
  a48cf9:	62 71 7c 48 10 79 0f 	vmovups zmm15,ZMMWORD PTR [rcx+0x3c0]
  a48d00:	62 e1 7c 48 10 79 0e 	vmovups zmm23,ZMMWORD PTR [rcx+0x380]
  a48d07:	62 a1 24 48 59 df    	vmulps zmm19,zmm11,zmm23
  a48d0d:	62 c2 75 48 b8 df    	vfmadd231ps zmm19,zmm1,zmm15
  a48d13:	62 a1 74 48 59 ff    	vmulps zmm23,zmm1,zmm23
  a48d19:	62 c2 05 48 bc fb    	vfnmadd231ps zmm23,zmm15,zmm11
  a48d1f:	62 f1 c5 48 14 cd    	vunpcklpd zmm1,zmm7,zmm5
  a48d25:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a48d2c:	ff 
  a48d2d:	62 f1 e5 48 14 da    	vunpcklpd zmm3,zmm3,zmm2
  a48d33:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm3
  a48d3a:	02 
  a48d3b:	62 91 b5 48 14 d3    	vunpcklpd zmm2,zmm9,zmm27
  a48d41:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm2
  a48d48:	fe 
  a48d49:	62 91 dd 40 14 ec    	vunpcklpd zmm5,zmm20,zmm28
  a48d4f:	62 f1 7c 48 11 2c 24 	vmovups ZMMWORD PTR [rsp],zmm5
  a48d56:	62 f2 7d 40 7f cb    	vpermt2ps zmm1,zmm16,zmm3
  a48d5c:	62 f2 7d 40 7f d5    	vpermt2ps zmm2,zmm16,zmm5
  a48d62:	62 f1 7c 48 10 59 02 	vmovups zmm3,ZMMWORD PTR [rcx+0x80]
  a48d69:	62 f1 7c 48 10 69 03 	vmovups zmm5,ZMMWORD PTR [rcx+0xc0]
  a48d70:	62 61 6c 48 59 cb    	vmulps zmm25,zmm2,zmm3
  a48d76:	62 62 75 48 b8 cd    	vfmadd231ps zmm25,zmm1,zmm5
  a48d7c:	62 e1 74 48 59 d3    	vmulps zmm18,zmm1,zmm3
  a48d82:	62 e2 55 48 bc d2    	vfnmadd231ps zmm18,zmm5,zmm2
  a48d88:	62 91 cd 48 14 ce    	vunpcklpd zmm1,zmm6,zmm30
  a48d8e:	62 f1 bd 40 14 ec    	vunpcklpd zmm5,zmm24,zmm4
  a48d94:	62 d1 9d 48 14 dd    	vunpcklpd zmm3,zmm12,zmm13
  a48d9a:	62 91 cd 40 14 e5    	vunpcklpd zmm4,zmm22,zmm29
  a48da0:	62 f1 7c 48 28 d1    	vmovaps zmm2,zmm1
  a48da6:	62 f1 7c 48 28 35 50 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff67e050]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a48dad:	e0 67 ff 
  a48db0:	62 f2 4d 48 7f cd    	vpermt2ps zmm1,zmm6,zmm5
  a48db6:	62 71 7c 48 28 fb    	vmovaps zmm15,zmm3
  a48dbc:	62 f2 4d 48 7f dc    	vpermt2ps zmm3,zmm6,zmm4
  a48dc2:	62 71 7c 48 10 49 09 	vmovups zmm9,ZMMWORD PTR [rcx+0x240]
  a48dc9:	62 71 7c 48 10 61 08 	vmovups zmm12,ZMMWORD PTR [rcx+0x200]
  a48dd0:	62 41 64 48 59 c4    	vmulps zmm24,zmm3,zmm12
  a48dd6:	62 42 75 48 b8 c1    	vfmadd231ps zmm24,zmm1,zmm9
  a48ddc:	62 51 74 48 59 e4    	vmulps zmm12,zmm1,zmm12
  a48de2:	62 72 35 48 bc e3    	vfnmadd231ps zmm12,zmm9,zmm3
  a48de8:	62 02 4d 48 7f fa    	vpermt2ps zmm31,zmm6,zmm26
  a48dee:	62 d2 4d 48 7f c2    	vpermt2ps zmm0,zmm6,zmm10
  a48df4:	62 f1 7c 48 10 49 0d 	vmovups zmm1,ZMMWORD PTR [rcx+0x340]
  a48dfb:	62 f1 7c 48 10 59 0c 	vmovups zmm3,ZMMWORD PTR [rcx+0x300]
  a48e02:	62 61 7c 48 59 f3    	vmulps zmm30,zmm0,zmm3
  a48e08:	62 62 05 40 bc f1    	vfnmadd231ps zmm30,zmm31,zmm1
  a48e0e:	62 61 04 40 59 fb    	vmulps zmm31,zmm31,zmm3
  a48e14:	62 62 75 48 b8 f8    	vfmadd231ps zmm31,zmm1,zmm0
  a48e1a:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x740]
  a48e21:	1d 
  a48e22:	62 72 7d 40 7f 54 24 	vpermt2ps zmm10,zmm16,ZMMWORD PTR [rsp+0x700]
  a48e29:	1c 
  a48e2a:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0x440]
  a48e31:	11 
  a48e32:	62 f2 7d 40 7f 7c 24 	vpermt2ps zmm7,zmm16,ZMMWORD PTR [rsp+0x400]
  a48e39:	10 
  a48e3a:	62 f1 7c 48 10 41 13 	vmovups zmm0,ZMMWORD PTR [rcx+0x4c0]
  a48e41:	62 f1 7c 48 10 49 12 	vmovups zmm1,ZMMWORD PTR [rcx+0x480]
  a48e48:	62 71 44 48 59 d9    	vmulps zmm11,zmm7,zmm1
  a48e4e:	62 72 2d 48 bc d8    	vfnmadd231ps zmm11,zmm10,zmm0
  a48e54:	62 71 2c 48 59 e9    	vmulps zmm13,zmm10,zmm1
  a48e5a:	62 72 7d 48 b8 ef    	vfmadd231ps zmm13,zmm0,zmm7
  a48e60:	62 e2 7d 40 7f 4c 24 	vpermt2ps zmm17,zmm16,ZMMWORD PTR [rsp+0x7c0]
  a48e67:	1f 
  a48e68:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x840]
  a48e6f:	21 
  a48e70:	62 f2 7d 40 7f 5c 24 	vpermt2ps zmm3,zmm16,ZMMWORD PTR [rsp+0x580]
  a48e77:	16 
  a48e78:	62 f1 7c 48 10 41 07 	vmovups zmm0,ZMMWORD PTR [rcx+0x1c0]
  a48e7f:	62 f1 7c 48 10 49 06 	vmovups zmm1,ZMMWORD PTR [rcx+0x180]
  a48e86:	62 e1 64 48 59 f1    	vmulps zmm22,zmm3,zmm1
  a48e8c:	62 e2 75 40 bc f0    	vfnmadd231ps zmm22,zmm17,zmm0
  a48e92:	62 f1 74 40 59 f9    	vmulps zmm7,zmm17,zmm1
  a48e98:	62 f2 7d 48 b8 fb    	vfmadd231ps zmm7,zmm0,zmm3
  a48e9e:	62 71 7c 48 28 ce    	vmovaps zmm9,zmm6
  a48ea4:	62 72 4d 48 7f 44 24 	vpermt2ps zmm8,zmm6,ZMMWORD PTR [rsp+0x540]
  a48eab:	15 
  a48eac:	62 72 4d 48 7f 74 24 	vpermt2ps zmm14,zmm6,ZMMWORD PTR [rsp+0x2c0]
  a48eb3:	0b 
  a48eb4:	62 f1 7c 48 10 71 19 	vmovups zmm6,ZMMWORD PTR [rcx+0x640]
  a48ebb:	62 f1 7c 48 10 41 18 	vmovups zmm0,ZMMWORD PTR [rcx+0x600]
  a48ec2:	62 61 0c 48 59 d8    	vmulps zmm27,zmm14,zmm0
  a48ec8:	62 62 3d 48 bc de    	vfnmadd231ps zmm27,zmm8,zmm6
  a48ece:	62 f1 3c 48 59 d8    	vmulps zmm3,zmm8,zmm0
  a48ed4:	62 d2 4d 48 b8 de    	vfmadd231ps zmm3,zmm6,zmm14
  a48eda:	62 f2 7d 40 7f d5    	vpermt2ps zmm2,zmm16,zmm5
  a48ee0:	62 72 7d 40 7f fc    	vpermt2ps zmm15,zmm16,zmm4
  a48ee6:	62 f1 7c 48 10 61 0b 	vmovups zmm4,ZMMWORD PTR [rcx+0x2c0]
  a48eed:	62 f1 7c 48 10 69 0a 	vmovups zmm5,ZMMWORD PTR [rcx+0x280]
  a48ef4:	62 f1 04 48 59 c5    	vmulps zmm0,zmm15,zmm5
  a48efa:	62 f2 6d 48 b8 c4    	vfmadd231ps zmm0,zmm2,zmm4
  a48f00:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm0
  a48f07:	0b 
  a48f08:	62 f1 6c 48 59 d5    	vmulps zmm2,zmm2,zmm5
  a48f0e:	62 d2 5d 48 bc d7    	vfnmadd231ps zmm2,zmm4,zmm15
  a48f14:	62 71 7c 48 28 d2    	vmovaps zmm10,zmm2
  a48f1a:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x700],zmm2
  a48f21:	1c 
  a48f22:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x380]
  a48f29:	0e 
  a48f2a:	62 f2 35 48 7f 6c 24 	vpermt2ps zmm5,zmm9,ZMMWORD PTR [rsp+0x600]
  a48f31:	18 
  a48f32:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x340]
  a48f39:	0d 
  a48f3a:	62 f2 35 48 7f 74 24 	vpermt2ps zmm6,zmm9,ZMMWORD PTR [rsp+0x300]
  a48f41:	0c 
  a48f42:	62 41 7c 48 28 e9    	vmovaps zmm29,zmm9
  a48f48:	62 f1 7c 48 10 51 15 	vmovups zmm2,ZMMWORD PTR [rcx+0x540]
  a48f4f:	62 f1 7c 48 10 61 14 	vmovups zmm4,ZMMWORD PTR [rcx+0x500]
  a48f56:	62 71 4c 48 59 c4    	vmulps zmm8,zmm6,zmm4
  a48f5c:	62 72 55 48 b8 c2    	vfmadd231ps zmm8,zmm5,zmm2
  a48f62:	62 c1 7c 48 28 c8    	vmovaps zmm17,zmm8
  a48f68:	62 f1 54 48 59 e4    	vmulps zmm4,zmm5,zmm4
  a48f6e:	62 f2 6d 48 bc e6    	vfnmadd231ps zmm4,zmm2,zmm6
  a48f74:	62 61 7c 48 28 e4    	vmovaps zmm28,zmm4
  a48f7a:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm4
  a48f81:	0a 
  a48f82:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp-0x80]
  a48f89:	fe 
  a48f8a:	62 f2 35 48 7f 14 24 	vpermt2ps zmm2,zmm9,ZMMWORD PTR [rsp]
  a48f91:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm2
  a48f98:	fe 
  a48f99:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x640]
  a48fa0:	19 
  a48fa1:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x100]
  a48fa8:	04 
  a48fa9:	62 f1 6c 48 5c c4    	vsubps zmm0,zmm2,zmm4
  a48faf:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm0
  a48fb6:	0e 
  a48fb7:	62 71 6c 48 58 cc    	vaddps zmm9,zmm2,zmm4
  a48fbd:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm9
  a48fc4:	14 
  a48fc5:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x680]
  a48fcc:	1a 
  a48fcd:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x480]
  a48fd4:	12 
  a48fd5:	62 f1 6c 48 5c f4    	vsubps zmm6,zmm2,zmm4
  a48fdb:	62 71 6c 48 58 fc    	vaddps zmm15,zmm2,zmm4
  a48fe1:	62 71 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm15
  a48fe8:	09 
  a48fe9:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x780]
  a48ff0:	1e 
  a48ff1:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x4c0]
  a48ff8:	13 
  a48ff9:	62 f1 6c 48 58 c4    	vaddps zmm0,zmm2,zmm4
  a48fff:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm0
  a49006:	08 
  a49007:	62 e1 6c 48 5c e4    	vsubps zmm20,zmm2,zmm4
  a4900d:	62 e1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm20
  a49014:	04 
  a49015:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x6c0]
  a4901c:	1b 
  a4901d:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x3c0]
  a49024:	0f 
  a49025:	62 61 6c 48 58 d4    	vaddps zmm26,zmm2,zmm4
  a4902b:	62 61 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x680],zmm26
  a49032:	1a 
  a49033:	62 f1 6c 48 5c d4    	vsubps zmm2,zmm2,zmm4
  a49039:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm2
  a49040:	11 
  a49041:	62 c1 6c 40 5c c4    	vsubps zmm16,zmm18,zmm12
  a49047:	62 51 6c 40 58 e4    	vaddps zmm12,zmm18,zmm12
  a4904d:	62 71 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm12
  a49054:	03 
  a49055:	62 31 54 40 5c c7    	vsubps zmm8,zmm21,zmm23
  a4905b:	62 a1 54 40 58 d7    	vaddps zmm18,zmm21,zmm23
  a49061:	62 e1 7c 48 11 14 24 	vmovups ZMMWORD PTR [rsp],zmm18
  a49068:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x5c0]
  a4906f:	17 
  a49070:	62 b1 5c 48 58 eb    	vaddps zmm5,zmm4,zmm19
  a49076:	62 b1 5c 48 5c cb    	vsubps zmm1,zmm4,zmm19
  a4907c:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm1
  a49083:	10 
  a49084:	62 81 34 40 58 d8    	vaddps zmm19,zmm25,zmm24
  a4908a:	62 91 34 40 5c c0    	vsubps zmm0,zmm25,zmm24
  a49090:	62 62 7d 48 18 05 4e 	vbroadcastss zmm24,DWORD PTR [rip+0xffffffffff62c64e]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a49097:	c6 62 ff 
  a4909a:	62 81 7c 48 28 e8    	vmovaps zmm21,zmm24
  a490a0:	62 c2 05 48 a8 ea    	vfmadd213ps zmm21,zmm15,zmm10
  a490a6:	62 62 7d 48 18 0d 94 	vbroadcastss zmm25,DWORD PTR [rip+0xffffffffff62c594]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a490ad:	c5 62 ff 
  a490b0:	62 82 35 48 bc e9    	vfnmadd231ps zmm21,zmm9,zmm25
  a490b6:	62 f2 7d 48 18 25 98 	vbroadcastss zmm4,DWORD PTR [rip+0xffffffffff62c698]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a490bd:	c6 62 ff 
  a490c0:	62 71 6c 48 59 d4    	vmulps zmm10,zmm2,zmm4
  a490c6:	62 72 7d 48 18 0d d0 	vbroadcastss zmm9,DWORD PTR [rip+0xffffffffff62c2d0]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a490cd:	c2 62 ff 
  a490d0:	62 52 5d 40 b8 d1    	vfmadd231ps zmm10,zmm20,zmm9
  a490d6:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm10
  a490dd:	01 
  a490de:	62 81 7c 48 28 f8    	vmovaps zmm23,zmm24
  a490e4:	62 82 6d 40 a8 fc    	vfmadd213ps zmm23,zmm18,zmm28
  a490ea:	62 82 1d 48 bc f9    	vfnmadd231ps zmm23,zmm12,zmm25
  a490f0:	62 61 7c 48 59 e4    	vmulps zmm28,zmm0,zmm4
  a490f6:	62 f1 7c 48 28 d0    	vmovaps zmm2,zmm0
  a490fc:	62 42 75 48 b8 e1    	vfmadd231ps zmm28,zmm1,zmm9
  a49102:	62 c1 54 40 5c d2    	vsubps zmm18,zmm21,zmm10
  a49108:	62 81 44 40 5c e4    	vsubps zmm20,zmm23,zmm28
  a4910e:	62 31 6c 40 5c e4    	vsubps zmm12,zmm18,zmm20
  a49114:	62 71 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm12
  a4911b:	07 
  a4911c:	62 31 6c 40 58 e4    	vaddps zmm12,zmm18,zmm20
  a49122:	62 71 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm12
  a49129:	06 
  a4912a:	62 51 0c 40 5c f3    	vsubps zmm14,zmm30,zmm11
  a49130:	62 51 0c 40 58 d3    	vaddps zmm10,zmm30,zmm11
  a49136:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm10
  a4913d:	13 
  a4913e:	62 11 4c 40 5c db    	vsubps zmm11,zmm22,zmm27
  a49144:	62 11 4c 40 58 d3    	vaddps zmm10,zmm22,zmm27
  a4914a:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm10
  a49151:	12 
  a49152:	62 71 7c 48 10 64 24 	vmovups zmm12,ZMMWORD PTR [rsp-0x40]
  a49159:	ff 
  a4915a:	62 72 15 40 7f 64 24 	vpermt2ps zmm12,zmm29,ZMMWORD PTR [rsp+0x80]
  a49161:	02 
  a49162:	62 71 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm12
  a49169:	ff 
  a4916a:	62 71 44 48 58 d3    	vaddps zmm10,zmm7,zmm3
  a49170:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x780],zmm10
  a49177:	1e 
  a49178:	62 f1 44 48 5c cb    	vsubps zmm1,zmm7,zmm3
  a4917e:	62 d1 04 40 58 dd    	vaddps zmm3,zmm31,zmm13
  a49184:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x740],zmm3
  a4918b:	1d 
  a4918c:	62 41 04 40 5c dd    	vsubps zmm27,zmm31,zmm13
  a49192:	62 01 7c 48 28 e8    	vmovaps zmm29,zmm24
  a49198:	62 71 7c 48 10 7c 24 	vmovups zmm15,ZMMWORD PTR [rsp+0x200]
  a4919f:	08 
  a491a0:	62 e1 7c 48 10 54 24 	vmovups zmm18,ZMMWORD PTR [rsp+0x2c0]
  a491a7:	0b 
  a491a8:	62 22 05 48 a8 ea    	vfmadd213ps zmm29,zmm15,zmm18
  a491ae:	62 02 2d 40 bc e9    	vfnmadd231ps zmm29,zmm26,zmm25
  a491b4:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x380]
  a491bb:	0e 
  a491bc:	62 61 2c 48 59 f4    	vmulps zmm30,zmm10,zmm4
  a491c2:	62 42 4d 48 b8 f1    	vfmadd231ps zmm30,zmm6,zmm9
  a491c8:	62 01 7c 48 28 f8    	vmovaps zmm31,zmm24
  a491ce:	62 61 7c 48 28 d5    	vmovaps zmm26,zmm5
  a491d4:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm5
  a491db:	15 
  a491dc:	62 22 55 48 a8 f9    	vfmadd213ps zmm31,zmm5,zmm17
  a491e2:	62 e1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm17
  a491e9:	16 
  a491ea:	62 02 65 40 bc f9    	vfnmadd231ps zmm31,zmm19,zmm25
  a491f0:	62 e1 7c 40 59 f4    	vmulps zmm22,zmm16,zmm4
  a491f6:	62 c2 3d 48 b8 f1    	vfmadd231ps zmm22,zmm8,zmm9
  a491fc:	62 91 14 40 58 c6    	vaddps zmm0,zmm29,zmm30
  a49202:	62 b1 04 40 58 fe    	vaddps zmm7,zmm31,zmm22
  a49208:	62 f1 7c 48 58 df    	vaddps zmm3,zmm0,zmm7
  a4920e:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm3
  a49215:	05 
  a49216:	62 f1 7c 48 5c c7    	vsubps zmm0,zmm0,zmm7
  a4921c:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm0
  a49223:	02 
  a49224:	62 f1 4c 48 59 ec    	vmulps zmm5,zmm6,zmm4
  a4922a:	62 d2 35 48 bc ea    	vfnmadd231ps zmm5,zmm9,zmm10
  a49230:	62 f1 3c 48 59 f4    	vmulps zmm6,zmm8,zmm4
  a49236:	62 b2 35 48 bc f0    	vfnmadd231ps zmm6,zmm9,zmm16
  a4923c:	62 71 0c 48 59 d4    	vmulps zmm10,zmm14,zmm4
  a49242:	62 52 25 48 b8 d1    	vfmadd231ps zmm10,zmm11,zmm9
  a49248:	62 71 24 48 59 e4    	vmulps zmm12,zmm11,zmm4
  a4924e:	62 52 35 48 bc e6    	vfnmadd231ps zmm12,zmm9,zmm14
  a49254:	62 71 5c 48 59 44 24 	vmulps zmm8,zmm4,ZMMWORD PTR [rsp+0x100]
  a4925b:	04 
  a4925c:	62 72 35 48 bc 44 24 	vfnmadd231ps zmm8,zmm9,ZMMWORD PTR [rsp+0x440]
  a49263:	11 
  a49264:	62 71 5c 48 59 6c 24 	vmulps zmm13,zmm4,ZMMWORD PTR [rsp+0x400]
  a4926b:	10 
  a4926c:	62 72 35 48 bc ea    	vfnmadd231ps zmm13,zmm9,zmm2
  a49272:	62 11 7c 48 28 d9    	vmovaps zmm11,zmm25
  a49278:	62 e1 7c 48 10 64 24 	vmovups zmm20,ZMMWORD PTR [rsp+0x700]
  a4927f:	1c 
  a49280:	62 72 5d 40 9c 5c 24 	vfnmadd132ps zmm11,zmm20,ZMMWORD PTR [rsp+0x240]
  a49287:	09 
  a49288:	62 72 3d 40 b8 5c 24 	vfmadd231ps zmm11,zmm24,ZMMWORD PTR [rsp+0x500]
  a4928f:	14 
  a49290:	62 91 7c 48 28 c1    	vmovaps zmm0,zmm25
  a49296:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x280]
  a4929d:	0a 
  a4929e:	62 f2 6d 48 9c 04 24 	vfnmadd132ps zmm0,zmm2,ZMMWORD PTR [rsp]
  a492a5:	62 f2 3d 40 b8 44 24 	vfmadd231ps zmm0,zmm24,ZMMWORD PTR [rsp+0xc0]
  a492ac:	03 
  a492ad:	62 d1 24 48 5c d8    	vsubps zmm3,zmm11,zmm8
  a492b3:	62 c1 7c 48 5c c5    	vsubps zmm16,zmm0,zmm13
  a492b9:	62 b1 64 48 5c d0    	vsubps zmm2,zmm3,zmm16
  a492bf:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm2
  a492c6:	10 
  a492c7:	62 b1 64 48 58 d0    	vaddps zmm2,zmm3,zmm16
  a492cd:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm2
  a492d4:	11 
  a492d5:	62 f1 24 40 59 fc    	vmulps zmm7,zmm27,zmm4
  a492db:	62 d2 75 48 b8 f9    	vfmadd231ps zmm7,zmm1,zmm9
  a492e1:	62 f1 74 48 59 cc    	vmulps zmm1,zmm1,zmm4
  a492e7:	62 92 35 48 bc cb    	vfnmadd231ps zmm1,zmm9,zmm27
  a492ed:	62 81 7c 48 28 c1    	vmovaps zmm16,zmm25
  a492f3:	62 a2 05 48 ac c2    	vfnmadd213ps zmm16,zmm15,zmm18
  a492f9:	62 71 7c 48 10 7c 24 	vmovups zmm15,ZMMWORD PTR [rsp+0x680]
  a49300:	1a 
  a49301:	62 82 05 48 b8 c0    	vfmadd231ps zmm16,zmm15,zmm24
  a49307:	62 91 7c 48 28 e1    	vmovaps zmm4,zmm25
  a4930d:	62 b2 2d 40 ac e1    	vfnmadd213ps zmm4,zmm26,zmm17
  a49313:	62 31 7c 48 28 f3    	vmovaps zmm14,zmm19
  a49319:	62 92 65 40 b8 e0    	vfmadd231ps zmm4,zmm19,zmm24
  a4931f:	62 f1 7c 40 58 dd    	vaddps zmm3,zmm16,zmm5
  a49325:	62 e1 5c 48 58 de    	vaddps zmm19,zmm4,zmm6
  a4932b:	62 b1 64 48 58 d3    	vaddps zmm2,zmm3,zmm19
  a49331:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm2
  a49338:	04 
  a49339:	62 b1 64 48 5c d3    	vsubps zmm2,zmm3,zmm19
  a4933f:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm2
  a49346:	0f 
  a49347:	62 81 7c 48 28 d9    	vmovaps zmm19,zmm25
  a4934d:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp-0x80]
  a49354:	fe 
  a49355:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x780]
  a4935c:	1e 
  a4935d:	62 c2 6d 48 ac d9    	vfnmadd213ps zmm19,zmm2,zmm9
  a49363:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x740]
  a4936a:	1d 
  a4936b:	62 82 65 48 b8 d8    	vfmadd231ps zmm19,zmm3,zmm24
  a49371:	62 a1 1c 48 58 cb    	vaddps zmm17,zmm12,zmm19
  a49377:	62 e1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm17
  a4937e:	0d 
  a4937f:	62 51 64 40 5c e4    	vsubps zmm12,zmm19,zmm12
  a49385:	62 f1 7c 40 5c ed    	vsubps zmm5,zmm16,zmm5
  a4938b:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x640],zmm5
  a49392:	19 
  a49393:	62 f1 5c 48 5c e6    	vsubps zmm4,zmm4,zmm6
  a49399:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm4
  a493a0:	0e 
  a493a1:	62 91 7c 48 28 e1    	vmovaps zmm4,zmm25
  a493a7:	62 e1 7c 48 10 44 24 	vmovups zmm16,ZMMWORD PTR [rsp-0x40]
  a493ae:	ff 
  a493af:	62 e1 7c 48 10 4c 24 	vmovups zmm17,ZMMWORD PTR [rsp+0x480]
  a493b6:	12 
  a493b7:	62 b2 75 40 ac e0    	vfnmadd213ps zmm4,zmm17,zmm16
  a493bd:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x4c0]
  a493c4:	13 
  a493c5:	62 92 55 48 b8 e0    	vfmadd231ps zmm4,zmm5,zmm24
  a493cb:	62 f1 5c 48 5c f1    	vsubps zmm6,zmm4,zmm1
  a493d1:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm6
  a493d8:	0c 
  a493d9:	62 f1 5c 48 58 c9    	vaddps zmm1,zmm4,zmm1
  a493df:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x600],zmm1
  a493e6:	18 
  a493e7:	62 41 24 48 58 d8    	vaddps zmm27,zmm11,zmm8
  a493ed:	62 41 7c 48 58 d5    	vaddps zmm26,zmm0,zmm13
  a493f3:	62 91 14 40 5c c6    	vsubps zmm0,zmm29,zmm30
  a493f9:	62 21 04 40 5c ee    	vsubps zmm29,zmm31,zmm22
  a493ff:	62 91 7c 48 28 f0    	vmovaps zmm6,zmm24
  a49405:	62 d2 6d 48 a8 f1    	vfmadd213ps zmm6,zmm2,zmm9
  a4940b:	62 e1 7c 48 28 f2    	vmovaps zmm22,zmm2
  a49411:	62 d1 7c 48 28 c9    	vmovaps zmm1,zmm9
  a49417:	62 92 65 48 bc f1    	vfnmadd231ps zmm6,zmm3,zmm25
  a4941d:	62 71 2c 48 58 ce    	vaddps zmm9,zmm10,zmm6
  a49423:	62 d1 4c 48 5c f2    	vsubps zmm6,zmm6,zmm10
  a49429:	62 71 54 40 58 44 24 	vaddps zmm8,zmm21,ZMMWORD PTR [rsp+0x40]
  a49430:	01 
  a49431:	62 11 44 40 58 d4    	vaddps zmm10,zmm23,zmm28
  a49437:	62 d1 3c 48 5c d2    	vsubps zmm2,zmm8,zmm10
  a4943d:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm2
  a49444:	01 
  a49445:	62 51 3c 48 58 ea    	vaddps zmm13,zmm8,zmm10
  a4944b:	62 22 75 40 a8 c0    	vfmadd213ps zmm24,zmm17,zmm16
  a49451:	62 02 55 48 bc c1    	vfnmadd231ps zmm24,zmm5,zmm25
  a49457:	62 f1 7c 48 28 d5    	vmovaps zmm2,zmm5
  a4945d:	62 71 3c 40 5c d7    	vsubps zmm10,zmm24,zmm7
  a49463:	62 61 3c 40 58 f7    	vaddps zmm30,zmm24,zmm7
  a49469:	62 91 7c 48 58 e5    	vaddps zmm4,zmm0,zmm29
  a4946f:	62 91 7c 48 5c c5    	vsubps zmm0,zmm0,zmm29
  a49475:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x6c0],zmm0
  a4947c:	1b 
  a4947d:	62 f1 6c 40 58 44 24 	vaddps zmm0,zmm18,ZMMWORD PTR [rsp+0x200]
  a49484:	08 
  a49485:	62 d1 7c 48 58 c7    	vaddps zmm0,zmm0,zmm15
  a4948b:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x540]
  a49492:	15 
  a49493:	62 f1 54 48 58 6c 24 	vaddps zmm5,zmm5,ZMMWORD PTR [rsp+0x580]
  a4949a:	16 
  a4949b:	62 d1 54 48 58 ee    	vaddps zmm5,zmm5,zmm14
  a494a1:	62 71 4c 40 58 c1    	vaddps zmm8,zmm22,zmm1
  a494a7:	62 d1 64 48 58 c8    	vaddps zmm1,zmm3,zmm8
  a494ad:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm1
  a494b4:	08 
  a494b5:	62 71 5c 40 58 44 24 	vaddps zmm8,zmm20,ZMMWORD PTR [rsp+0x240]
  a494bc:	09 
  a494bd:	62 71 3c 48 58 44 24 	vaddps zmm8,zmm8,ZMMWORD PTR [rsp+0x500]
  a494c4:	14 
  a494c5:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x280]
  a494cc:	0a 
  a494cd:	62 71 74 48 58 34 24 	vaddps zmm14,zmm1,ZMMWORD PTR [rsp]
  a494d4:	62 71 0c 48 58 74 24 	vaddps zmm14,zmm14,ZMMWORD PTR [rsp+0xc0]
  a494db:	03 
  a494dc:	62 d1 3c 48 5c ce    	vsubps zmm1,zmm8,zmm14
  a494e2:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm1
  a494e9:	03 
  a494ea:	62 41 3c 48 58 fe    	vaddps zmm31,zmm8,zmm14
  a494f0:	62 31 7c 40 58 c1    	vaddps zmm8,zmm16,zmm17
  a494f6:	62 62 7d 48 18 25 60 	vbroadcastss zmm28,DWORD PTR [rip+0xffffffffff62bf60]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a494fd:	bf 62 ff 
  a49500:	62 11 7c 48 28 fc    	vmovaps zmm15,zmm28
  a49506:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0x140]
  a4950d:	05 
  a4950e:	62 52 45 48 ac f9    	vfnmadd213ps zmm15,zmm7,zmm9
  a49514:	62 61 3c 48 58 c2    	vaddps zmm24,zmm8,zmm2
  a4951a:	62 61 7c 48 58 ed    	vaddps zmm29,zmm0,zmm5
  a49520:	62 e1 7c 48 5c d5    	vsubps zmm18,zmm0,zmm5
  a49526:	62 91 7c 48 28 cc    	vmovaps zmm1,zmm28
  a4952c:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x180]
  a49533:	06 
  a49534:	62 d2 55 48 ac ca    	vfnmadd213ps zmm1,zmm5,zmm10
  a4953a:	62 e1 34 48 58 f7    	vaddps zmm22,zmm9,zmm7
  a49540:	62 11 7c 48 28 c4    	vmovaps zmm8,zmm28
  a49546:	62 e1 7c 48 10 6c 24 	vmovups zmm21,ZMMWORD PTR [rsp+0x100]
  a4954d:	04 
  a4954e:	62 e1 7c 48 10 44 24 	vmovups zmm16,ZMMWORD PTR [rsp+0x340]
  a49555:	0d 
  a49556:	62 32 55 40 ac c0    	vfnmadd213ps zmm8,zmm21,zmm16
  a4955c:	62 f2 7d 48 18 05 6e 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff62bd6e]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a49563:	bd 62 ff 
  a49566:	62 71 7c 48 59 4c 24 	vmulps zmm9,zmm0,ZMMWORD PTR [rsp+0x400]
  a4956d:	10 
  a4956e:	62 f1 2c 48 58 d5    	vaddps zmm2,zmm10,zmm5
  a49574:	62 f1 7c 48 11 14 24 	vmovups ZMMWORD PTR [rsp],zmm2
  a4957b:	62 d1 3c 48 5c d1    	vsubps zmm2,zmm8,zmm9
  a49581:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm2
  a49588:	09 
  a49589:	62 c1 3c 48 58 d9    	vaddps zmm19,zmm8,zmm9
  a4958f:	62 11 7c 48 28 cc    	vmovaps zmm9,zmm28
  a49595:	62 71 7c 48 10 5c 24 	vmovups zmm11,ZMMWORD PTR [rsp+0x440]
  a4959c:	11 
  a4959d:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp+0x300]
  a495a4:	0c 
  a495a5:	62 52 25 48 ac c8    	vfnmadd213ps zmm9,zmm11,zmm8
  a495ab:	62 f1 7c 48 59 5c 24 	vmulps zmm3,zmm0,ZMMWORD PTR [rsp+0x3c0]
  a495b2:	0f 
  a495b3:	62 f1 34 48 58 d3    	vaddps zmm2,zmm9,zmm3
  a495b9:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm2
  a495c0:	ff 
  a495c1:	62 f1 34 48 5c d3    	vsubps zmm2,zmm9,zmm3
  a495c7:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm2
  a495ce:	0a 
  a495cf:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0x640]
  a495d6:	19 
  a495d7:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x380]
  a495de:	0e 
  a495df:	62 51 44 48 58 ca    	vaddps zmm9,zmm7,zmm10
  a495e5:	62 41 1c 48 58 c9    	vaddps zmm25,zmm12,zmm9
  a495eb:	62 52 1d 40 ac cc    	vfnmadd213ps zmm9,zmm28,zmm12
  a495f1:	62 11 24 40 58 e2    	vaddps zmm12,zmm27,zmm26
  a495f7:	62 91 24 40 5c d2    	vsubps zmm2,zmm27,zmm26
  a495fd:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x600]
  a49604:	18 
  a49605:	62 d1 54 48 58 dc    	vaddps zmm3,zmm5,zmm12
  a4960b:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm3
  a49612:	fe 
  a49613:	62 72 1d 40 ac e5    	vfnmadd213ps zmm12,zmm28,zmm5
  a49619:	62 c1 44 48 5c e2    	vsubps zmm20,zmm7,zmm10
  a4961f:	62 81 7c 48 28 cc    	vmovaps zmm17,zmm28
  a49625:	62 e2 5d 48 ac ce    	vfnmadd213ps zmm17,zmm4,zmm6
  a4962b:	62 71 4c 48 58 f4    	vaddps zmm14,zmm6,zmm4
  a49631:	62 91 7c 48 28 f4    	vmovaps zmm6,zmm28
  a49637:	62 92 15 48 ac f6    	vfnmadd213ps zmm6,zmm13,zmm30
  a4963d:	62 c1 0c 40 58 fd    	vaddps zmm23,zmm30,zmm13
  a49643:	62 91 7c 48 28 e4    	vmovaps zmm4,zmm28
  a49649:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x200]
  a49650:	08 
  a49651:	62 f2 15 40 ac e5    	vfnmadd213ps zmm4,zmm29,zmm5
  a49657:	62 f1 7c 48 59 7c 24 	vmulps zmm7,zmm0,ZMMWORD PTR [rsp+0xc0]
  a4965e:	03 
  a4965f:	62 71 5c 48 5c d7    	vsubps zmm10,zmm4,zmm7
  a49665:	62 f1 5c 48 58 ff    	vaddps zmm7,zmm4,zmm7
  a4966b:	62 91 7c 48 28 e4    	vmovaps zmm4,zmm28
  a49671:	62 92 05 40 ac e0    	vfnmadd213ps zmm4,zmm31,zmm24
  a49677:	62 71 6c 40 59 e8    	vmulps zmm13,zmm18,zmm0
  a4967d:	62 d1 5c 48 58 dd    	vaddps zmm3,zmm4,zmm13
  a49683:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm3
  a4968a:	03 
  a4968b:	62 d1 5c 48 5c e5    	vsubps zmm4,zmm4,zmm13
  a49691:	62 71 7c 48 59 6c 24 	vmulps zmm13,zmm0,ZMMWORD PTR [rsp+0x1c0]
  a49698:	07 
  a49699:	62 41 04 48 58 f5    	vaddps zmm30,zmm15,zmm13
  a4969f:	62 51 04 48 5c ed    	vsubps zmm13,zmm15,zmm13
  a496a5:	62 e1 7c 48 59 54 24 	vmulps zmm18,zmm0,ZMMWORD PTR [rsp+0x80]
  a496ac:	02 
  a496ad:	62 31 74 48 5c fa    	vsubps zmm15,zmm1,zmm18
  a496b3:	62 b1 74 48 58 da    	vaddps zmm3,zmm1,zmm18
  a496b9:	62 21 7c 40 58 dd    	vaddps zmm27,zmm16,zmm21
  a496bf:	62 41 3c 48 58 d3    	vaddps zmm26,zmm8,zmm11
  a496c5:	62 e1 6c 48 59 d0    	vmulps zmm18,zmm2,zmm0
  a496cb:	62 b1 34 48 5c d2    	vsubps zmm2,zmm9,zmm18
  a496d1:	62 21 34 48 58 e2    	vaddps zmm28,zmm9,zmm18
  a496d7:	62 f1 5c 40 59 c8    	vmulps zmm1,zmm20,zmm0
  a496dd:	62 e1 1c 48 58 d1    	vaddps zmm18,zmm12,zmm1
  a496e3:	62 71 1c 48 5c e1    	vsubps zmm12,zmm12,zmm1
  a496e9:	62 f1 7c 48 59 4c 24 	vmulps zmm1,zmm0,ZMMWORD PTR [rsp+0x40]
  a496f0:	01 
  a496f1:	62 71 74 40 58 c9    	vaddps zmm9,zmm17,zmm1
  a496f7:	62 e1 74 40 5c c9    	vsubps zmm17,zmm17,zmm1
  a496fd:	62 f1 7c 48 59 44 24 	vmulps zmm0,zmm0,ZMMWORD PTR [rsp+0x6c0]
  a49704:	1b 
  a49705:	62 f1 4c 48 5c c8    	vsubps zmm1,zmm6,zmm0
  a4970b:	62 f1 4c 48 58 c0    	vaddps zmm0,zmm6,zmm0
  a49711:	62 91 54 48 58 f5    	vaddps zmm6,zmm5,zmm29
  a49717:	62 81 3c 40 58 ef    	vaddps zmm21,zmm24,zmm31
  a4971d:	62 61 7c 48 28 c6    	vmovaps zmm24,zmm6
  a49723:	62 f1 7c 48 28 2d d3 	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff648ed3]        # 92600 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1fab0>
  a4972a:	8e 64 ff 
  a4972d:	62 22 55 48 7f c5    	vpermt2ps zmm24,zmm5,zmm21
  a49733:	62 61 7c 48 11 04 16 	vmovups ZMMWORD PTR [rsi+rdx*1],zmm24
  a4973a:	62 21 4c 48 14 c5    	vunpcklps zmm24,zmm6,zmm21
  a49740:	62 63 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x60],zmm24,0x3
  a49747:	06 03 
  a49749:	62 61 7c 28 28 05 ed 	vmovaps ymm24,YMMWORD PTR [rip+0xffffffffff62d4ed]        # 76c40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x40f0>
  a49750:	d4 62 ff 
  a49753:	62 b2 3d 40 7f f5    	vpermt2ps zmm6,zmm24,zmm21
  a49759:	c5 fc 11 74 16 40    	vmovups YMMWORD PTR [rsi+rdx*1+0x40],ymm6
  a4975f:	62 b1 7c 48 28 f1    	vmovaps zmm6,zmm17
  a49765:	62 f2 55 48 7f f0    	vpermt2ps zmm6,zmm5,zmm0
  a4976b:	62 f1 7c 48 11 b4 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x70],zmm6
  a49772:	70 00 00 00 
  a49776:	62 f1 74 40 14 f0    	vunpcklps zmm6,zmm17,zmm0
  a4977c:	62 f3 7d 48 19 74 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0xd0],zmm6,0x3
  a49783:	0d 03 
  a49785:	62 e2 3d 40 7f c8    	vpermt2ps zmm17,zmm24,zmm0
  a4978b:	62 e1 7c 28 11 8c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0xb0],ymm17
  a49792:	b0 00 00 00 
  a49796:	62 91 7c 48 28 c4    	vmovaps zmm0,zmm28
  a4979c:	62 d2 55 48 7f c4    	vpermt2ps zmm0,zmm5,zmm12
  a497a2:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0xe0],zmm0
  a497a9:	e0 00 00 00 
  a497ad:	62 d1 1c 40 14 c4    	vunpcklps zmm0,zmm28,zmm12
  a497b3:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x140],zmm0,0x3
  a497ba:	14 03 
  a497bc:	62 42 3d 40 7f e4    	vpermt2ps zmm28,zmm24,zmm12
  a497c2:	62 61 7c 28 11 64 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x120],ymm28
  a497c9:	09 
  a497ca:	62 91 7c 48 28 c3    	vmovaps zmm0,zmm27
  a497d0:	62 92 55 48 7f c2    	vpermt2ps zmm0,zmm5,zmm26
  a497d6:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x150],zmm0
  a497dd:	50 01 00 00 
  a497e1:	62 91 24 40 14 c2    	vunpcklps zmm0,zmm27,zmm26
  a497e7:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x1b0],zmm0,0x3
  a497ee:	1b 03 
  a497f0:	62 02 3d 40 7f da    	vpermt2ps zmm27,zmm24,zmm26
  a497f6:	62 61 7c 28 11 9c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x190],ymm27
  a497fd:	90 01 00 00 
  a49801:	62 d1 7c 48 28 c5    	vmovaps zmm0,zmm13
  a49807:	62 f2 55 48 7f c3    	vpermt2ps zmm0,zmm5,zmm3
  a4980d:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x1c0],zmm0
  a49814:	07 
  a49815:	62 f1 14 48 14 c3    	vunpcklps zmm0,zmm13,zmm3
  a4981b:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x220],zmm0,0x3
  a49822:	22 03 
  a49824:	62 72 3d 40 7f eb    	vpermt2ps zmm13,zmm24,zmm3
  a4982a:	c5 7c 11 ac 16 00 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x200],ymm13
  a49831:	00 00 
  a49833:	62 f1 7c 48 28 c7    	vmovaps zmm0,zmm7
  a49839:	62 f2 55 48 7f c4    	vpermt2ps zmm0,zmm5,zmm4
  a4983f:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x230],zmm0
  a49846:	30 02 00 00 
  a4984a:	62 f1 44 48 14 c4    	vunpcklps zmm0,zmm7,zmm4
  a49850:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x290],zmm0,0x3
  a49857:	29 03 
  a49859:	62 f2 3d 40 7f fc    	vpermt2ps zmm7,zmm24,zmm4
  a4985f:	c5 fc 11 bc 16 70 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x270],ymm7
  a49866:	00 00 
  a49868:	62 d1 7c 48 28 c6    	vmovaps zmm0,zmm14
  a4986e:	62 b2 55 48 7f c7    	vpermt2ps zmm0,zmm5,zmm23
  a49874:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x2a0],zmm0
  a4987b:	a0 02 00 00 
  a4987f:	62 b1 0c 48 14 c7    	vunpcklps zmm0,zmm14,zmm23
  a49885:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x300],zmm0,0x3
  a4988c:	30 03 
  a4988e:	62 32 3d 40 7f f7    	vpermt2ps zmm14,zmm24,zmm23
  a49894:	c5 7c 11 b4 16 e0 02 	vmovups YMMWORD PTR [rsi+rdx*1+0x2e0],ymm14
  a4989b:	00 00 
  a4989d:	62 f1 7c 48 28 c2    	vmovaps zmm0,zmm2
  a498a3:	62 b2 55 48 7f c2    	vpermt2ps zmm0,zmm5,zmm18
  a498a9:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x310],zmm0
  a498b0:	10 03 00 00 
  a498b4:	62 b1 6c 48 14 c2    	vunpcklps zmm0,zmm2,zmm18
  a498ba:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x370],zmm0,0x3
  a498c1:	37 03 
  a498c3:	62 b2 3d 40 7f d2    	vpermt2ps zmm2,zmm24,zmm18
  a498c9:	c5 fc 11 94 16 50 03 	vmovups YMMWORD PTR [rsi+rdx*1+0x350],ymm2
  a498d0:	00 00 
  a498d2:	62 b1 7c 48 28 c3    	vmovaps zmm0,zmm19
  a498d8:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x280]
  a498df:	0a 
  a498e0:	62 f2 55 48 7f c2    	vpermt2ps zmm0,zmm5,zmm2
  a498e6:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x380],zmm0
  a498ed:	0e 
  a498ee:	62 f1 64 40 14 c2    	vunpcklps zmm0,zmm19,zmm2
  a498f4:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x3e0],zmm0,0x3
  a498fb:	3e 03 
  a498fd:	62 e2 3d 40 7f da    	vpermt2ps zmm19,zmm24,zmm2
  a49903:	62 e1 7c 28 11 5c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x3c0],ymm19
  a4990a:	1e 
  a4990b:	62 b1 7c 48 28 c6    	vmovaps zmm0,zmm22
  a49911:	62 f1 7c 48 10 14 24 	vmovups zmm2,ZMMWORD PTR [rsp]
  a49918:	62 f2 55 48 7f c2    	vpermt2ps zmm0,zmm5,zmm2
  a4991e:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x3f0],zmm0
  a49925:	f0 03 00 00 
  a49929:	62 f1 4c 40 14 c2    	vunpcklps zmm0,zmm22,zmm2
  a4992f:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x450],zmm0,0x3
  a49936:	45 03 
  a49938:	62 e2 3d 40 7f f2    	vpermt2ps zmm22,zmm24,zmm2
  a4993e:	62 e1 7c 28 11 b4 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x430],ymm22
  a49945:	30 04 00 00 
  a49949:	62 d1 7c 48 28 c2    	vmovaps zmm0,zmm10
  a4994f:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0xc0]
  a49956:	03 
  a49957:	62 f2 55 48 7f c2    	vpermt2ps zmm0,zmm5,zmm2
  a4995d:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x460],zmm0
  a49964:	60 04 00 00 
  a49968:	62 f1 2c 48 14 c2    	vunpcklps zmm0,zmm10,zmm2
  a4996e:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x4c0],zmm0,0x3
  a49975:	4c 03 
  a49977:	62 72 3d 40 7f d2    	vpermt2ps zmm10,zmm24,zmm2
  a4997d:	c5 7c 11 94 16 a0 04 	vmovups YMMWORD PTR [rsi+rdx*1+0x4a0],ymm10
  a49984:	00 00 
  a49986:	62 d1 7c 48 28 c1    	vmovaps zmm0,zmm9
  a4998c:	62 f2 55 48 7f c1    	vpermt2ps zmm0,zmm5,zmm1
  a49992:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x4d0],zmm0
  a49999:	d0 04 00 00 
  a4999d:	62 f1 34 48 14 c1    	vunpcklps zmm0,zmm9,zmm1
  a499a3:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x530],zmm0,0x3
  a499aa:	53 03 
  a499ac:	62 72 3d 40 7f c9    	vpermt2ps zmm9,zmm24,zmm1
  a499b2:	c5 7c 11 8c 16 10 05 	vmovups YMMWORD PTR [rsi+rdx*1+0x510],ymm9
  a499b9:	00 00 
  a499bb:	62 91 7c 48 28 c1    	vmovaps zmm0,zmm25
  a499c1:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x80]
  a499c8:	fe 
  a499c9:	62 f2 55 48 7f c1    	vpermt2ps zmm0,zmm5,zmm1
  a499cf:	62 f1 7c 48 11 44 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x540],zmm0
  a499d6:	15 
  a499d7:	62 f1 34 40 14 c1    	vunpcklps zmm0,zmm25,zmm1
  a499dd:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x5a0],zmm0,0x3
  a499e4:	5a 03 
  a499e6:	62 62 3d 40 7f c9    	vpermt2ps zmm25,zmm24,zmm1
  a499ec:	62 61 7c 28 11 4c 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x580],ymm25
  a499f3:	2c 
  a499f4:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x240]
  a499fb:	09 
  a499fc:	62 f1 7c 48 28 c2    	vmovaps zmm0,zmm2
  a49a02:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp-0x40]
  a49a09:	ff 
  a49a0a:	62 f2 55 48 7f c1    	vpermt2ps zmm0,zmm5,zmm1
  a49a10:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x5b0],zmm0
  a49a17:	b0 05 00 00 
  a49a1b:	62 f1 6c 48 14 c1    	vunpcklps zmm0,zmm2,zmm1
  a49a21:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x610],zmm0,0x3
  a49a28:	61 03 
  a49a2a:	62 f2 3d 40 7f d1    	vpermt2ps zmm2,zmm24,zmm1
  a49a30:	c5 fc 11 94 16 f0 05 	vmovups YMMWORD PTR [rsi+rdx*1+0x5f0],ymm2
  a49a37:	00 00 
  a49a39:	62 91 7c 48 28 c6    	vmovaps zmm0,zmm30
  a49a3f:	62 d2 55 48 7f c7    	vpermt2ps zmm0,zmm5,zmm15
  a49a45:	62 f1 7c 48 11 84 16 	vmovups ZMMWORD PTR [rsi+rdx*1+0x620],zmm0
  a49a4c:	20 06 00 00 
  a49a50:	62 d1 0c 40 14 c7    	vunpcklps zmm0,zmm30,zmm15
  a49a56:	62 f3 7d 48 19 44 16 	vextractf32x4 XMMWORD PTR [rsi+rdx*1+0x680],zmm0,0x3
  a49a5d:	68 03 
  a49a5f:	62 42 3d 40 7f f7    	vpermt2ps zmm30,zmm24,zmm15
  a49a65:	62 61 7c 28 11 74 16 	vmovups YMMWORD PTR [rsi+rdx*1+0x660],ymm30
  a49a6c:	33 
  a49a6d:	48 81 c2 90 06 00 00 	add    rdx,0x690
  a49a74:	48 39 d0             	cmp    rax,rdx
  a49a77:	0f 85 23 df ff ff    	jne    a479a0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle+0x20>
  a49a7d:	48 81 c4 08 0a 00 00 	add    rsp,0xa08
  a49a84:	c5 f8 77             	vzeroupper
  a49a87:	c3                   	ret
