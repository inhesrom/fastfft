
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a4b800 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a4b800:	55                   	push   rbp
  a4b801:	48 89 e5             	mov    rbp,rsp
  a4b804:	48 83 e4 c0          	and    rsp,0xffffffffffffffc0
  a4b808:	48 81 ec 80 09 00 00 	sub    rsp,0x980
  a4b80f:	c6 84 24 00 09 00 00 	mov    BYTE PTR [rsp+0x900],0x0
  a4b816:	00 
  a4b817:	48 8d 84 24 00 09 00 	lea    rax,[rsp+0x900]
  a4b81e:	00 
  a4b81f:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  a4b824:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
  a4b829:	c5 f8 10 47 60       	vmovups xmm0,XMMWORD PTR [rdi+0x60]
  a4b82e:	c4 e3 79 21 47 64 10 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x64],0x10
  a4b835:	c4 e2 79 18 4f 68    	vbroadcastss xmm1,DWORD PTR [rdi+0x68]
  a4b83b:	62 f1 7c 48 10 1f    	vmovups zmm3,ZMMWORD PTR [rdi]
  a4b841:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a4b847:	c4 e3 79 21 47 6c 30 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x6c],0x30
  a4b84e:	c5 fc 10 4f 40       	vmovups ymm1,YMMWORD PTR [rdi+0x40]
  a4b853:	c5 fb 10 57 70       	vmovsd xmm2,QWORD PTR [rdi+0x70]
  a4b858:	c4 e3 7d 18 c2 01    	vinsertf128 ymm0,ymm0,xmm2,0x1
  a4b85e:	62 f3 f5 48 1a c0 01 	vinsertf64x4 zmm0,zmm1,ymm0,0x1
  a4b865:	b0 7f                	mov    al,0x7f
  a4b867:	c5 fb 92 c8          	kmovd  k1,eax
  a4b86b:	62 e2 fd c9 88 c8    	vexpandpd zmm17{k1}{z},zmm0
  a4b871:	62 71 7c 48 28 15 05 	vmovaps zmm10,ZMMWORD PTR [rip+0xffffffffff646f05]        # 92780 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1fc30>
  a4b878:	6f 64 ff 
  a4b87b:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a4b881:	62 e1 7c 48 28 e3    	vmovaps zmm20,zmm3
  a4b887:	62 b2 2d 48 7f c1    	vpermt2ps zmm0,zmm10,zmm17
  a4b88d:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm0
  a4b894:	02 
  a4b895:	62 f1 7c 48 10 9f f0 	vmovups zmm3,ZMMWORD PTR [rdi+0xf0]
  a4b89c:	00 00 00 
  a4b89f:	c5 f8 10 87 50 01 00 	vmovups xmm0,XMMWORD PTR [rdi+0x150]
  a4b8a6:	00 
  a4b8a7:	c4 e3 79 21 87 54 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x154],0x10
  a4b8ae:	00 00 10 
  a4b8b1:	c4 e2 79 18 8f 58 01 	vbroadcastss xmm1,DWORD PTR [rdi+0x158]
  a4b8b8:	00 00 
  a4b8ba:	c5 fc 10 97 30 01 00 	vmovups ymm2,YMMWORD PTR [rdi+0x130]
  a4b8c1:	00 
  a4b8c2:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a4b8c8:	c4 e3 79 21 87 5c 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x15c],0x30
  a4b8cf:	00 00 30 
  a4b8d2:	c5 fb 10 8f 60 01 00 	vmovsd xmm1,QWORD PTR [rdi+0x160]
  a4b8d9:	00 
  a4b8da:	c4 e3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm1,0x1
  a4b8e0:	62 f3 ed 48 1a c0 01 	vinsertf64x4 zmm0,zmm2,ymm0,0x1
  a4b8e7:	62 e2 fd c9 88 d8    	vexpandpd zmm19{k1}{z},zmm0
  a4b8ed:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a4b8f3:	62 71 7c 48 28 e3    	vmovaps zmm12,zmm3
  a4b8f9:	62 b2 2d 48 7f c3    	vpermt2ps zmm0,zmm10,zmm19
  a4b8ff:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm0
  a4b906:	03 
  a4b907:	62 f1 7c 48 10 9f a0 	vmovups zmm3,ZMMWORD PTR [rdi+0x5a0]
  a4b90e:	05 00 00 
  a4b911:	c5 f8 10 87 00 06 00 	vmovups xmm0,XMMWORD PTR [rdi+0x600]
  a4b918:	00 
  a4b919:	c4 e3 79 21 87 04 06 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x604],0x10
  a4b920:	00 00 10 
  a4b923:	c4 e2 79 18 8f 08 06 	vbroadcastss xmm1,DWORD PTR [rdi+0x608]
  a4b92a:	00 00 
  a4b92c:	c5 fc 10 97 e0 05 00 	vmovups ymm2,YMMWORD PTR [rdi+0x5e0]
  a4b933:	00 
  a4b934:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a4b93a:	c4 e3 79 21 87 0c 06 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x60c],0x30
  a4b941:	00 00 30 
  a4b944:	c5 fb 10 8f 10 06 00 	vmovsd xmm1,QWORD PTR [rdi+0x610]
  a4b94b:	00 
  a4b94c:	c4 e3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm1,0x1
  a4b952:	62 f3 ed 48 1a c0 01 	vinsertf64x4 zmm0,zmm2,ymm0,0x1
  a4b959:	62 72 fd c9 88 d8    	vexpandpd zmm11{k1}{z},zmm0
  a4b95f:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a4b965:	62 71 7c 48 28 eb    	vmovaps zmm13,zmm3
  a4b96b:	62 d2 2d 48 7f c3    	vpermt2ps zmm0,zmm10,zmm11
  a4b971:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm0
  a4b978:	09 
  a4b979:	62 f1 7c 48 10 9f e0 	vmovups zmm3,ZMMWORD PTR [rdi+0x1e0]
  a4b980:	01 00 00 
  a4b983:	c5 f8 10 87 40 02 00 	vmovups xmm0,XMMWORD PTR [rdi+0x240]
  a4b98a:	00 
  a4b98b:	c4 e3 79 21 87 44 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x244],0x10
  a4b992:	00 00 10 
  a4b995:	c4 e2 79 18 8f 48 02 	vbroadcastss xmm1,DWORD PTR [rdi+0x248]
  a4b99c:	00 00 
  a4b99e:	c5 fc 10 97 20 02 00 	vmovups ymm2,YMMWORD PTR [rdi+0x220]
  a4b9a5:	00 
  a4b9a6:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a4b9ac:	c4 e3 79 21 87 4c 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x24c],0x30
  a4b9b3:	00 00 30 
  a4b9b6:	c5 fb 10 8f 50 02 00 	vmovsd xmm1,QWORD PTR [rdi+0x250]
  a4b9bd:	00 
  a4b9be:	c4 e3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm1,0x1
  a4b9c4:	62 f3 ed 48 1a c0 01 	vinsertf64x4 zmm0,zmm2,ymm0,0x1
  a4b9cb:	62 72 fd c9 88 c8    	vexpandpd zmm9{k1}{z},zmm0
  a4b9d1:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a4b9d7:	62 71 7c 48 28 f3    	vmovaps zmm14,zmm3
  a4b9dd:	62 d2 2d 48 7f c1    	vpermt2ps zmm0,zmm10,zmm9
  a4b9e3:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm0
  a4b9ea:	05 
  a4b9eb:	62 f1 7c 48 10 9f b0 	vmovups zmm3,ZMMWORD PTR [rdi+0x4b0]
  a4b9f2:	04 00 00 
  a4b9f5:	c5 f8 10 87 10 05 00 	vmovups xmm0,XMMWORD PTR [rdi+0x510]
  a4b9fc:	00 
  a4b9fd:	c4 e3 79 21 87 14 05 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x514],0x10
  a4ba04:	00 00 10 
  a4ba07:	c4 e2 79 18 8f 18 05 	vbroadcastss xmm1,DWORD PTR [rdi+0x518]
  a4ba0e:	00 00 
  a4ba10:	c5 fc 10 97 f0 04 00 	vmovups ymm2,YMMWORD PTR [rdi+0x4f0]
  a4ba17:	00 
  a4ba18:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a4ba1e:	c4 e3 79 21 87 1c 05 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x51c],0x30
  a4ba25:	00 00 30 
  a4ba28:	c5 fb 10 8f 20 05 00 	vmovsd xmm1,QWORD PTR [rdi+0x520]
  a4ba2f:	00 
  a4ba30:	c4 e3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm1,0x1
  a4ba36:	62 f3 ed 48 1a c0 01 	vinsertf64x4 zmm0,zmm2,ymm0,0x1
  a4ba3d:	62 e2 fd c9 88 e8    	vexpandpd zmm21{k1}{z},zmm0
  a4ba43:	62 f1 7c 48 28 c3    	vmovaps zmm0,zmm3
  a4ba49:	62 e1 7c 48 28 c3    	vmovaps zmm16,zmm3
  a4ba4f:	62 b2 2d 48 7f c5    	vpermt2ps zmm0,zmm10,zmm21
  a4ba55:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a4ba5c:	01 
  a4ba5d:	62 f1 7c 48 10 9f d0 	vmovups zmm3,ZMMWORD PTR [rdi+0x2d0]
  a4ba64:	02 00 00 
  a4ba67:	c5 f8 10 87 30 03 00 	vmovups xmm0,XMMWORD PTR [rdi+0x330]
  a4ba6e:	00 
  a4ba6f:	c4 e3 79 21 87 34 03 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x334],0x10
  a4ba76:	00 00 10 
  a4ba79:	c4 e2 79 18 8f 38 03 	vbroadcastss xmm1,DWORD PTR [rdi+0x338]
  a4ba80:	00 00 
  a4ba82:	c5 fc 10 97 10 03 00 	vmovups ymm2,YMMWORD PTR [rdi+0x310]
  a4ba89:	00 
  a4ba8a:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a4ba90:	c4 e3 79 21 87 3c 03 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x33c],0x30
  a4ba97:	00 00 30 
  a4ba9a:	c5 fb 10 8f 40 03 00 	vmovsd xmm1,QWORD PTR [rdi+0x340]
  a4baa1:	00 
  a4baa2:	c4 e3 7d 18 c1 01    	vinsertf128 ymm0,ymm0,xmm1,0x1
  a4baa8:	62 f3 ed 48 1a c0 01 	vinsertf64x4 zmm0,zmm2,ymm0,0x1
  a4baaf:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a4bab5:	62 f1 7c 48 28 cb    	vmovaps zmm1,zmm3
  a4babb:	62 e1 7c 48 28 f3    	vmovaps zmm22,zmm3
  a4bac1:	62 f2 2d 48 7f c8    	vpermt2ps zmm1,zmm10,zmm0
  a4bac7:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm1
  a4bace:	06 
  a4bacf:	62 f1 7c 48 10 67 0f 	vmovups zmm4,ZMMWORD PTR [rdi+0x3c0]
  a4bad6:	c5 f8 10 8f 20 04 00 	vmovups xmm1,XMMWORD PTR [rdi+0x420]
  a4badd:	00 
  a4bade:	c4 e3 71 21 8f 24 04 	vinsertps xmm1,xmm1,DWORD PTR [rdi+0x424],0x10
  a4bae5:	00 00 10 
  a4bae8:	c4 e2 79 18 97 28 04 	vbroadcastss xmm2,DWORD PTR [rdi+0x428]
  a4baef:	00 00 
  a4baf1:	c5 fc 10 9f 00 04 00 	vmovups ymm3,YMMWORD PTR [rdi+0x400]
  a4baf8:	00 
  a4baf9:	c4 e3 69 0c c9 03    	vblendps xmm1,xmm2,xmm1,0x3
  a4baff:	c4 e3 71 21 8f 2c 04 	vinsertps xmm1,xmm1,DWORD PTR [rdi+0x42c],0x30
  a4bb06:	00 00 30 
  a4bb09:	c5 fb 10 97 30 04 00 	vmovsd xmm2,QWORD PTR [rdi+0x430]
  a4bb10:	00 
  a4bb11:	c4 e3 75 18 ca 01    	vinsertf128 ymm1,ymm1,xmm2,0x1
  a4bb17:	62 f3 e5 48 1a c9 01 	vinsertf64x4 zmm1,zmm3,ymm1,0x1
  a4bb1e:	62 f2 fd c9 88 c9    	vexpandpd zmm1{k1}{z},zmm1
  a4bb24:	62 f1 7c 48 28 d4    	vmovaps zmm2,zmm4
  a4bb2a:	62 e1 7c 48 28 d4    	vmovaps zmm18,zmm4
  a4bb30:	62 f2 2d 48 7f d1    	vpermt2ps zmm2,zmm10,zmm1
  a4bb36:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm2
  a4bb3d:	08 
  a4bb3e:	62 f1 7c 48 10 af 48 	vmovups zmm5,ZMMWORD PTR [rdi+0x348]
  a4bb45:	03 00 00 
  a4bb48:	c5 f8 10 97 a8 03 00 	vmovups xmm2,XMMWORD PTR [rdi+0x3a8]
  a4bb4f:	00 
  a4bb50:	c4 e3 69 21 97 ac 03 	vinsertps xmm2,xmm2,DWORD PTR [rdi+0x3ac],0x10
  a4bb57:	00 00 10 
  a4bb5a:	c4 e2 79 18 9f b0 03 	vbroadcastss xmm3,DWORD PTR [rdi+0x3b0]
  a4bb61:	00 00 
  a4bb63:	c5 fc 10 a7 88 03 00 	vmovups ymm4,YMMWORD PTR [rdi+0x388]
  a4bb6a:	00 
  a4bb6b:	c4 e3 61 0c d2 03    	vblendps xmm2,xmm3,xmm2,0x3
  a4bb71:	c4 e3 69 21 97 b4 03 	vinsertps xmm2,xmm2,DWORD PTR [rdi+0x3b4],0x30
  a4bb78:	00 00 30 
  a4bb7b:	c5 fb 10 9f b8 03 00 	vmovsd xmm3,QWORD PTR [rdi+0x3b8]
  a4bb82:	00 
  a4bb83:	c4 e3 6d 18 d3 01    	vinsertf128 ymm2,ymm2,xmm3,0x1
  a4bb89:	62 f3 dd 48 1a d2 01 	vinsertf64x4 zmm2,zmm4,ymm2,0x1
  a4bb90:	62 62 fd c9 88 ca    	vexpandpd zmm25{k1}{z},zmm2
  a4bb96:	62 71 7c 48 28 fd    	vmovaps zmm15,zmm5
  a4bb9c:	62 61 7c 48 28 c5    	vmovaps zmm24,zmm5
  a4bba2:	62 12 2d 48 7f f9    	vpermt2ps zmm15,zmm10,zmm25
  a4bba8:	c5 f8 10 97 98 04 00 	vmovups xmm2,XMMWORD PTR [rdi+0x498]
  a4bbaf:	00 
  a4bbb0:	c5 fc 10 9f 78 04 00 	vmovups ymm3,YMMWORD PTR [rdi+0x478]
  a4bbb7:	00 
  a4bbb8:	c4 e3 69 21 97 9c 04 	vinsertps xmm2,xmm2,DWORD PTR [rdi+0x49c],0x10
  a4bbbf:	00 00 10 
  a4bbc2:	c4 e2 79 18 a7 a0 04 	vbroadcastss xmm4,DWORD PTR [rdi+0x4a0]
  a4bbc9:	00 00 
  a4bbcb:	c4 e3 59 0c d2 03    	vblendps xmm2,xmm4,xmm2,0x3
  a4bbd1:	c4 e3 69 21 97 a4 04 	vinsertps xmm2,xmm2,DWORD PTR [rdi+0x4a4],0x30
  a4bbd8:	00 00 30 
  a4bbdb:	c5 fb 10 a7 a8 04 00 	vmovsd xmm4,QWORD PTR [rdi+0x4a8]
  a4bbe2:	00 
  a4bbe3:	c4 e3 6d 18 d4 01    	vinsertf128 ymm2,ymm2,xmm4,0x1
  a4bbe9:	62 f3 e5 48 1a da 01 	vinsertf64x4 zmm3,zmm3,ymm2,0x1
  a4bbf0:	c5 f8 10 97 b8 02 00 	vmovups xmm2,XMMWORD PTR [rdi+0x2b8]
  a4bbf7:	00 
  a4bbf8:	c5 fc 10 a7 98 02 00 	vmovups ymm4,YMMWORD PTR [rdi+0x298]
  a4bbff:	00 
  a4bc00:	c4 e3 69 21 97 bc 02 	vinsertps xmm2,xmm2,DWORD PTR [rdi+0x2bc],0x10
  a4bc07:	00 00 10 
  a4bc0a:	c4 e2 79 18 af c0 02 	vbroadcastss xmm5,DWORD PTR [rdi+0x2c0]
  a4bc11:	00 00 
  a4bc13:	c4 e3 51 0c d2 03    	vblendps xmm2,xmm5,xmm2,0x3
  a4bc19:	c4 e3 69 21 97 c4 02 	vinsertps xmm2,xmm2,DWORD PTR [rdi+0x2c4],0x30
  a4bc20:	00 00 30 
  a4bc23:	c5 fb 10 af c8 02 00 	vmovsd xmm5,QWORD PTR [rdi+0x2c8]
  a4bc2a:	00 
  a4bc2b:	c4 e3 6d 18 d5 01    	vinsertf128 ymm2,ymm2,xmm5,0x1
  a4bc31:	62 f3 dd 48 1a ea 01 	vinsertf64x4 zmm5,zmm4,ymm2,0x1
  a4bc38:	c5 f8 10 97 88 05 00 	vmovups xmm2,XMMWORD PTR [rdi+0x588]
  a4bc3f:	00 
  a4bc40:	c5 fc 10 a7 68 05 00 	vmovups ymm4,YMMWORD PTR [rdi+0x568]
  a4bc47:	00 
  a4bc48:	c4 e3 69 21 97 8c 05 	vinsertps xmm2,xmm2,DWORD PTR [rdi+0x58c],0x10
  a4bc4f:	00 00 10 
  a4bc52:	c4 e2 79 18 b7 90 05 	vbroadcastss xmm6,DWORD PTR [rdi+0x590]
  a4bc59:	00 00 
  a4bc5b:	c4 e3 49 0c d2 03    	vblendps xmm2,xmm6,xmm2,0x3
  a4bc61:	c4 e3 69 21 97 94 05 	vinsertps xmm2,xmm2,DWORD PTR [rdi+0x594],0x30
  a4bc68:	00 00 30 
  a4bc6b:	c5 fb 10 b7 98 05 00 	vmovsd xmm6,QWORD PTR [rdi+0x598]
  a4bc72:	00 
  a4bc73:	c4 e3 6d 18 d6 01    	vinsertf128 ymm2,ymm2,xmm6,0x1
  a4bc79:	62 f3 dd 48 1a d2 01 	vinsertf64x4 zmm2,zmm4,ymm2,0x1
  a4bc80:	c5 f8 10 a7 c8 01 00 	vmovups xmm4,XMMWORD PTR [rdi+0x1c8]
  a4bc87:	00 
  a4bc88:	c5 fc 10 b7 a8 01 00 	vmovups ymm6,YMMWORD PTR [rdi+0x1a8]
  a4bc8f:	00 
  a4bc90:	c4 e3 59 21 a7 cc 01 	vinsertps xmm4,xmm4,DWORD PTR [rdi+0x1cc],0x10
  a4bc97:	00 00 10 
  a4bc9a:	c4 e2 79 18 bf d0 01 	vbroadcastss xmm7,DWORD PTR [rdi+0x1d0]
  a4bca1:	00 00 
  a4bca3:	c4 e3 41 0c e4 03    	vblendps xmm4,xmm7,xmm4,0x3
  a4bca9:	c4 e3 59 21 a7 d4 01 	vinsertps xmm4,xmm4,DWORD PTR [rdi+0x1d4],0x30
  a4bcb0:	00 00 30 
  a4bcb3:	c5 fb 10 bf d8 01 00 	vmovsd xmm7,QWORD PTR [rdi+0x1d8]
  a4bcba:	00 
  a4bcbb:	c4 e3 5d 18 e7 01    	vinsertf128 ymm4,ymm4,xmm7,0x1
  a4bcc1:	62 f3 cd 48 1a e4 01 	vinsertf64x4 zmm4,zmm6,ymm4,0x1
  a4bcc8:	c5 f8 10 b7 78 06 00 	vmovups xmm6,XMMWORD PTR [rdi+0x678]
  a4bccf:	00 
  a4bcd0:	c5 fc 10 bf 58 06 00 	vmovups ymm7,YMMWORD PTR [rdi+0x658]
  a4bcd7:	00 
  a4bcd8:	c4 e3 49 21 b7 7c 06 	vinsertps xmm6,xmm6,DWORD PTR [rdi+0x67c],0x10
  a4bcdf:	00 00 10 
  a4bce2:	c4 62 79 18 87 80 06 	vbroadcastss xmm8,DWORD PTR [rdi+0x680]
  a4bce9:	00 00 
  a4bceb:	c4 e3 39 0c f6 03    	vblendps xmm6,xmm8,xmm6,0x3
  a4bcf1:	c4 e3 49 21 b7 84 06 	vinsertps xmm6,xmm6,DWORD PTR [rdi+0x684],0x30
  a4bcf8:	00 00 30 
  a4bcfb:	c5 7b 10 87 88 06 00 	vmovsd xmm8,QWORD PTR [rdi+0x688]
  a4bd02:	00 
  a4bd03:	c4 c3 4d 18 f0 01    	vinsertf128 ymm6,ymm6,xmm8,0x1
  a4bd09:	c5 78 10 87 d8 00 00 	vmovups xmm8,XMMWORD PTR [rdi+0xd8]
  a4bd10:	00 
  a4bd11:	c4 63 39 21 87 dc 00 	vinsertps xmm8,xmm8,DWORD PTR [rdi+0xdc],0x10
  a4bd18:	00 00 10 
  a4bd1b:	62 f3 c5 48 1a fe 01 	vinsertf64x4 zmm7,zmm7,ymm6,0x1
  a4bd22:	c4 e2 79 18 b7 e0 00 	vbroadcastss xmm6,DWORD PTR [rdi+0xe0]
  a4bd29:	00 00 
  a4bd2b:	c4 c3 49 0c f0 03    	vblendps xmm6,xmm6,xmm8,0x3
  a4bd31:	c4 e3 49 21 b7 e4 00 	vinsertps xmm6,xmm6,DWORD PTR [rdi+0xe4],0x30
  a4bd38:	00 00 30 
  a4bd3b:	c5 7b 10 87 e8 00 00 	vmovsd xmm8,QWORD PTR [rdi+0xe8]
  a4bd42:	00 
  a4bd43:	c4 c3 4d 18 f0 01    	vinsertf128 ymm6,ymm6,xmm8,0x1
  a4bd49:	c5 7c 10 87 b8 00 00 	vmovups ymm8,YMMWORD PTR [rdi+0xb8]
  a4bd50:	00 
  a4bd51:	62 f3 bd 48 1a f6 01 	vinsertf64x4 zmm6,zmm8,ymm6,0x1
  a4bd58:	62 61 7c 48 28 35 5e 	vmovaps zmm30,ZMMWORD PTR [rip+0xffffffffff646a5e]        # 927c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1fc70>
  a4bd5f:	6a 64 ff 
  a4bd62:	62 a1 7c 48 28 fe    	vmovaps zmm23,zmm22
  a4bd68:	62 e2 0d 40 7f f8    	vpermt2ps zmm23,zmm30,zmm0
  a4bd6e:	62 e1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm23
  a4bd75:	0e 
  a4bd76:	62 e1 7c 48 10 b7 38 	vmovups zmm22,ZMMWORD PTR [rdi+0x438]
  a4bd7d:	04 00 00 
  a4bd80:	62 f2 fd c9 88 c3    	vexpandpd zmm0{k1}{z},zmm3
  a4bd86:	62 e2 0d 40 7f d1    	vpermt2ps zmm18,zmm30,zmm1
  a4bd8c:	62 e1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm18
  a4bd93:	0f 
  a4bd94:	62 b1 7c 48 28 ce    	vmovaps zmm1,zmm22
  a4bd9a:	62 f2 2d 48 7f c8    	vpermt2ps zmm1,zmm10,zmm0
  a4bda0:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm1
  a4bda7:	07 
  a4bda8:	62 32 0d 40 7f e3    	vpermt2ps zmm12,zmm30,zmm19
  a4bdae:	62 71 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm12
  a4bdb5:	0b 
  a4bdb6:	62 f1 7c 48 10 9f 58 	vmovups zmm3,ZMMWORD PTR [rdi+0x258]
  a4bdbd:	02 00 00 
  a4bdc0:	62 f2 fd c9 88 cd    	vexpandpd zmm1{k1}{z},zmm5
  a4bdc6:	62 52 0d 40 7f eb    	vpermt2ps zmm13,zmm30,zmm11
  a4bdcc:	62 71 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm13
  a4bdd3:	04 
  a4bdd4:	62 61 7c 48 28 d3    	vmovaps zmm26,zmm3
  a4bdda:	62 f1 7c 48 28 eb    	vmovaps zmm5,zmm3
  a4bde0:	62 62 2d 48 7f d1    	vpermt2ps zmm26,zmm10,zmm1
  a4bde6:	62 52 0d 40 7f f1    	vpermt2ps zmm14,zmm30,zmm9
  a4bdec:	62 71 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm14
  a4bdf3:	11 
  a4bdf4:	62 71 7c 48 10 8f 18 	vmovups zmm9,ZMMWORD PTR [rdi+0x618]
  a4bdfb:	06 00 00 
  a4bdfe:	62 f2 fd c9 88 df    	vexpandpd zmm3{k1}{z},zmm7
  a4be04:	62 a2 0d 40 7f c5    	vpermt2ps zmm16,zmm30,zmm21
  a4be0a:	62 e1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm16
  a4be11:	12 
  a4be12:	62 41 7c 48 28 d9    	vmovaps zmm27,zmm9
  a4be18:	62 62 2d 48 7f db    	vpermt2ps zmm27,zmm10,zmm3
  a4be1e:	62 72 0d 40 7f cb    	vpermt2ps zmm9,zmm30,zmm3
  a4be24:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm9
  a4be2b:	0c 
  a4be2c:	62 f1 7c 48 10 9f 28 	vmovups zmm3,ZMMWORD PTR [rdi+0x528]
  a4be33:	05 00 00 
  a4be36:	62 f2 fd c9 88 d2    	vexpandpd zmm2{k1}{z},zmm2
  a4be3c:	62 61 7c 48 28 e3    	vmovaps zmm28,zmm3
  a4be42:	62 f1 7c 48 28 fb    	vmovaps zmm7,zmm3
  a4be48:	62 62 2d 48 7f e2    	vpermt2ps zmm28,zmm10,zmm2
  a4be4e:	62 f2 fd c9 88 dc    	vexpandpd zmm3{k1}{z},zmm4
  a4be54:	62 f1 7c 48 10 a7 68 	vmovups zmm4,ZMMWORD PTR [rdi+0x168]
  a4be5b:	01 00 00 
  a4be5e:	62 61 7c 48 28 ec    	vmovaps zmm29,zmm4
  a4be64:	62 71 7c 48 28 dc    	vmovaps zmm11,zmm4
  a4be6a:	62 62 2d 48 7f eb    	vpermt2ps zmm29,zmm10,zmm3
  a4be70:	62 f2 fd c9 88 e6    	vexpandpd zmm4{k1}{z},zmm6
  a4be76:	62 f1 7c 48 10 b7 78 	vmovups zmm6,ZMMWORD PTR [rdi+0x78]
  a4be7d:	00 00 00 
  a4be80:	62 72 4d 48 77 d4    	vpermi2ps zmm10,zmm6,zmm4
  a4be86:	62 f2 0d 40 7f f4    	vpermt2ps zmm6,zmm30,zmm4
  a4be8c:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x6c0],zmm6
  a4be93:	1b 
  a4be94:	62 e2 0d 40 7f f0    	vpermt2ps zmm22,zmm30,zmm0
  a4be9a:	62 e1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x780],zmm22
  a4bea1:	1e 
  a4bea2:	62 f2 0d 40 7f e9    	vpermt2ps zmm5,zmm30,zmm1
  a4bea8:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm5
  a4beaf:	0d 
  a4beb0:	62 f2 0d 40 7f fa    	vpermt2ps zmm7,zmm30,zmm2
  a4beb6:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x740],zmm7
  a4bebd:	1d 
  a4bebe:	62 72 0d 40 7f db    	vpermt2ps zmm11,zmm30,zmm3
  a4bec4:	62 71 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm11
  a4becb:	0a 
  a4becc:	62 d1 1c 48 5c d5    	vsubps zmm2,zmm12,zmm13
  a4bed2:	62 a2 0d 40 7f e1    	vpermt2ps zmm20,zmm30,zmm17
  a4bed8:	62 e1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm20
  a4bedf:	13 
  a4bee0:	62 b1 0c 48 5c d8    	vsubps zmm3,zmm14,zmm16
  a4bee6:	62 02 0d 40 7f c1    	vpermt2ps zmm24,zmm30,zmm25
  a4beec:	62 61 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm24
  a4bef3:	14 
  a4bef4:	62 72 7d 48 18 05 92 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff629592]        # 75490 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2940>
  a4befb:	95 62 ff 
  a4befe:	62 41 64 48 59 c8    	vmulps zmm25,zmm3,zmm8
  a4bf04:	62 e2 7d 48 18 1d 52 	vbroadcastss zmm19,DWORD PTR [rip+0xffffffffff629752]        # 75660 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b10>
  a4bf0b:	97 62 ff 
  a4bf0e:	62 22 6d 48 b8 cb    	vfmadd231ps zmm25,zmm2,zmm19
  a4bf14:	62 f2 7d 48 18 25 ca 	vbroadcastss zmm4,DWORD PTR [rip+0xffffffffff6296ca]        # 755e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a98>
  a4bf1b:	96 62 ff 
  a4bf1e:	62 61 6c 48 59 fc    	vmulps zmm31,zmm2,zmm4
  a4bf24:	62 22 65 48 bc fb    	vfnmadd231ps zmm31,zmm3,zmm19
  a4bf2a:	62 51 6c 48 59 e8    	vmulps zmm13,zmm2,zmm8
  a4bf30:	62 72 5d 48 bc eb    	vfnmadd231ps zmm13,zmm4,zmm3
  a4bf36:	62 b1 44 40 5c d2    	vsubps zmm2,zmm23,zmm18
  a4bf3c:	62 62 6d 48 b8 cc    	vfmadd231ps zmm25,zmm2,zmm4
  a4bf42:	62 42 6d 48 b8 f8    	vfmadd231ps zmm31,zmm2,zmm8
  a4bf48:	62 72 65 40 bc ea    	vfnmadd231ps zmm13,zmm19,zmm2
  a4bf4e:	62 f1 4c 40 5c d5    	vsubps zmm2,zmm22,zmm5
  a4bf54:	62 d1 44 48 5c db    	vsubps zmm3,zmm7,zmm11
  a4bf5a:	62 c1 64 48 59 c0    	vmulps zmm16,zmm3,zmm8
  a4bf60:	62 a2 6d 48 b8 c3    	vfmadd231ps zmm16,zmm2,zmm19
  a4bf66:	62 71 6c 48 59 e4    	vmulps zmm12,zmm2,zmm4
  a4bf6c:	62 32 65 48 bc e3    	vfnmadd231ps zmm12,zmm3,zmm19
  a4bf72:	62 51 6c 48 59 d8    	vmulps zmm11,zmm2,zmm8
  a4bf78:	62 72 5d 48 bc db    	vfnmadd231ps zmm11,zmm4,zmm3
  a4bf7e:	62 f1 34 48 5c d6    	vsubps zmm2,zmm9,zmm6
  a4bf84:	62 e2 6d 48 b8 c4    	vfmadd231ps zmm16,zmm2,zmm4
  a4bf8a:	62 52 6d 48 b8 e0    	vfmadd231ps zmm12,zmm2,zmm8
  a4bf90:	62 72 65 40 bc da    	vfnmadd231ps zmm11,zmm19,zmm2
  a4bf96:	62 e1 7c 48 28 7c 24 	vmovaps zmm23,ZMMWORD PTR [rsp+0xc0]
  a4bf9d:	03 
  a4bf9e:	62 e1 7c 48 28 64 24 	vmovaps zmm20,ZMMWORD PTR [rsp+0x240]
  a4bfa5:	09 
  a4bfa6:	62 b1 44 40 5c d4    	vsubps zmm2,zmm23,zmm20
  a4bfac:	62 61 7c 48 28 44 24 	vmovaps zmm24,ZMMWORD PTR [rsp+0x140]
  a4bfb3:	05 
  a4bfb4:	62 e1 7c 48 28 54 24 	vmovaps zmm18,ZMMWORD PTR [rsp+0x40]
  a4bfbb:	01 
  a4bfbc:	62 b1 3c 40 5c da    	vsubps zmm3,zmm24,zmm18
  a4bfc2:	62 c1 64 48 59 f0    	vmulps zmm22,zmm3,zmm8
  a4bfc8:	62 a2 6d 48 b8 f3    	vfmadd231ps zmm22,zmm2,zmm19
  a4bfce:	62 61 6c 48 59 f4    	vmulps zmm30,zmm2,zmm4
  a4bfd4:	62 22 65 48 bc f3    	vfnmadd231ps zmm30,zmm3,zmm19
  a4bfda:	62 c1 6c 48 59 c8    	vmulps zmm17,zmm2,zmm8
  a4bfe0:	62 e2 5d 48 bc cb    	vfnmadd231ps zmm17,zmm4,zmm3
  a4bfe6:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x180]
  a4bfed:	06 
  a4bfee:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x200]
  a4bff5:	08 
  a4bff6:	62 f1 44 48 5c dd    	vsubps zmm3,zmm7,zmm5
  a4bffc:	62 e2 65 48 b8 f4    	vfmadd231ps zmm22,zmm3,zmm4
  a4c002:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x1c0]
  a4c009:	07 
  a4c00a:	62 91 4c 48 5c d2    	vsubps zmm2,zmm6,zmm26
  a4c010:	62 91 1c 40 5c c5    	vsubps zmm0,zmm28,zmm29
  a4c016:	62 c1 7c 48 59 e8    	vmulps zmm21,zmm0,zmm8
  a4c01c:	62 a2 6d 48 b8 eb    	vfmadd231ps zmm21,zmm2,zmm19
  a4c022:	62 d1 24 40 5c ca    	vsubps zmm1,zmm27,zmm10
  a4c028:	62 e2 75 48 b8 ec    	vfmadd231ps zmm21,zmm1,zmm4
  a4c02e:	62 71 6c 48 59 f4    	vmulps zmm14,zmm2,zmm4
  a4c034:	62 51 6c 48 59 c8    	vmulps zmm9,zmm2,zmm8
  a4c03a:	62 72 7d 48 bc cc    	vfnmadd231ps zmm9,zmm0,zmm4
  a4c040:	62 32 7d 48 bc f3    	vfnmadd231ps zmm14,zmm0,zmm19
  a4c046:	62 42 65 48 b8 f0    	vfmadd231ps zmm30,zmm3,zmm8
  a4c04c:	62 52 75 48 b8 f0    	vfmadd231ps zmm14,zmm1,zmm8
  a4c052:	62 e2 65 40 bc cb    	vfnmadd231ps zmm17,zmm19,zmm3
  a4c058:	62 32 75 48 bc cb    	vfnmadd231ps zmm9,zmm1,zmm19
  a4c05e:	62 b1 44 40 58 dc    	vaddps zmm3,zmm23,zmm20
  a4c064:	62 b1 3c 40 58 e2    	vaddps zmm4,zmm24,zmm18
  a4c06a:	62 f1 44 48 58 ed    	vaddps zmm5,zmm7,zmm5
  a4c070:	62 81 4c 48 58 da    	vaddps zmm19,zmm6,zmm26
  a4c076:	62 01 1c 40 58 d5    	vaddps zmm26,zmm28,zmm29
  a4c07c:	62 41 24 40 58 da    	vaddps zmm27,zmm27,zmm10
  a4c082:	62 f2 7d 48 18 15 68 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff629568]        # 755f4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2aa4>
  a4c089:	95 62 ff 
  a4c08c:	62 61 7c 48 28 e2    	vmovaps zmm28,zmm2
  a4c092:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x80]
  a4c099:	02 
  a4c09a:	62 62 65 48 a8 e6    	vfmadd213ps zmm28,zmm3,zmm6
  a4c0a0:	62 72 7d 48 18 15 2e 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff62952e]        # 755d8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a88>
  a4c0a7:	95 62 ff 
  a4c0aa:	62 41 7c 48 28 ea    	vmovaps zmm29,zmm10
  a4c0b0:	62 62 65 48 ac ee    	vfnmadd213ps zmm29,zmm3,zmm6
  a4c0b6:	62 f1 4c 48 58 c3    	vaddps zmm0,zmm6,zmm3
  a4c0bc:	62 f2 7d 48 18 0d 06 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff629206]        # 752cc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x277c>
  a4c0c3:	92 62 ff 
  a4c0c6:	62 f2 75 48 bc f3    	vfnmadd231ps zmm6,zmm1,zmm3
  a4c0cc:	62 f1 7c 48 58 c4    	vaddps zmm0,zmm0,zmm4
  a4c0d2:	62 62 5d 48 bc e1    	vfnmadd231ps zmm28,zmm4,zmm1
  a4c0d8:	62 62 5d 48 b8 ea    	vfmadd231ps zmm29,zmm4,zmm2
  a4c0de:	62 f2 2d 48 bc f4    	vfnmadd231ps zmm6,zmm10,zmm4
  a4c0e4:	62 f1 7c 48 58 fd    	vaddps zmm7,zmm0,zmm5
  a4c0ea:	62 42 55 48 bc e2    	vfnmadd231ps zmm28,zmm5,zmm10
  a4c0f0:	62 62 55 48 bc e9    	vfnmadd231ps zmm29,zmm5,zmm1
  a4c0f6:	62 f2 6d 48 b8 f5    	vfmadd231ps zmm6,zmm2,zmm5
  a4c0fc:	62 f1 7c 48 28 da    	vmovaps zmm3,zmm2
  a4c102:	62 d2 65 40 a8 df    	vfmadd213ps zmm3,zmm19,zmm15
  a4c108:	62 d1 7c 48 28 e2    	vmovaps zmm4,zmm10
  a4c10e:	62 d2 65 40 ac e7    	vfnmadd213ps zmm4,zmm19,zmm15
  a4c114:	62 b1 04 48 58 eb    	vaddps zmm5,zmm15,zmm19
  a4c11a:	62 32 75 48 bc fb    	vfnmadd231ps zmm15,zmm1,zmm19
  a4c120:	62 91 54 48 58 ea    	vaddps zmm5,zmm5,zmm26
  a4c126:	62 f2 2d 40 bc d9    	vfnmadd231ps zmm3,zmm26,zmm1
  a4c12c:	62 f2 2d 40 b8 e2    	vfmadd231ps zmm4,zmm26,zmm2
  a4c132:	62 12 2d 48 bc fa    	vfnmadd231ps zmm15,zmm10,zmm26
  a4c138:	62 91 54 48 58 eb    	vaddps zmm5,zmm5,zmm27
  a4c13e:	62 d2 25 40 bc da    	vfnmadd231ps zmm3,zmm27,zmm10
  a4c144:	62 f2 25 40 bc e1    	vfnmadd231ps zmm4,zmm27,zmm1
  a4c14a:	62 12 6d 48 b8 fb    	vfmadd231ps zmm15,zmm2,zmm27
  a4c150:	62 41 4c 48 5c dd    	vsubps zmm27,zmm6,zmm13
  a4c156:	62 51 4c 48 58 ed    	vaddps zmm13,zmm6,zmm13
  a4c15c:	62 c1 04 48 5c d3    	vsubps zmm18,zmm15,zmm11
  a4c162:	62 51 04 48 58 c3    	vaddps zmm8,zmm15,zmm11
  a4c168:	62 11 14 40 5c ff    	vsubps zmm15,zmm29,zmm31
  a4c16e:	62 01 14 40 58 ef    	vaddps zmm29,zmm29,zmm31
  a4c174:	62 d1 5c 48 5c c4    	vsubps zmm0,zmm4,zmm12
  a4c17a:	62 51 5c 48 58 e4    	vaddps zmm12,zmm4,zmm12
  a4c180:	62 91 1c 40 58 e1    	vaddps zmm4,zmm28,zmm25
  a4c186:	62 01 1c 40 5c c9    	vsubps zmm25,zmm28,zmm25
  a4c18c:	62 21 64 48 58 d0    	vaddps zmm26,zmm3,zmm16
  a4c192:	62 b1 64 48 5c d8    	vsubps zmm3,zmm3,zmm16
  a4c198:	62 81 5c 48 58 da    	vaddps zmm19,zmm4,zmm26
  a4c19e:	62 91 5c 48 5c e2    	vsubps zmm4,zmm4,zmm26
  a4c1a4:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm4
  a4c1ab:	06 
  a4c1ac:	62 d1 14 48 58 e0    	vaddps zmm4,zmm13,zmm8
  a4c1b2:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm4
  a4c1b9:	03 
  a4c1ba:	62 d1 14 48 5c e0    	vsubps zmm4,zmm13,zmm8
  a4c1c0:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x700],zmm4
  a4c1c7:	1c 
  a4c1c8:	62 21 24 40 58 fa    	vaddps zmm31,zmm27,zmm18
  a4c1ce:	62 b1 24 40 5c e2    	vsubps zmm4,zmm27,zmm18
  a4c1d4:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm4
  a4c1db:	05 
  a4c1dc:	62 f1 34 40 58 e3    	vaddps zmm4,zmm25,zmm3
  a4c1e2:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm4
  a4c1e9:	07 
  a4c1ea:	62 f1 34 40 5c db    	vsubps zmm3,zmm25,zmm3
  a4c1f0:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm3
  a4c1f7:	10 
  a4c1f8:	62 41 14 40 58 cc    	vaddps zmm25,zmm29,zmm12
  a4c1fe:	62 d1 14 40 5c dc    	vsubps zmm3,zmm29,zmm12
  a4c204:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm3
  a4c20b:	02 
  a4c20c:	62 71 04 48 58 d8    	vaddps zmm11,zmm15,zmm0
  a4c212:	62 f1 04 48 5c c0    	vsubps zmm0,zmm15,zmm0
  a4c218:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a4c21f:	01 
  a4c220:	62 61 44 48 58 c5    	vaddps zmm24,zmm7,zmm5
  a4c226:	62 f1 44 48 5c c5    	vsubps zmm0,zmm7,zmm5
  a4c22c:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm0
  a4c233:	15 
  a4c234:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x2c0]
  a4c23b:	0b 
  a4c23c:	62 f1 7c 48 58 44 24 	vaddps zmm0,zmm0,ZMMWORD PTR [rsp+0x100]
  a4c243:	04 
  a4c244:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x440]
  a4c24b:	11 
  a4c24c:	62 f1 64 48 58 5c 24 	vaddps zmm3,zmm3,ZMMWORD PTR [rsp+0x480]
  a4c253:	12 
  a4c254:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x380]
  a4c25b:	0e 
  a4c25c:	62 f1 5c 48 58 6c 24 	vaddps zmm5,zmm4,ZMMWORD PTR [rsp+0x3c0]
  a4c263:	0f 
  a4c264:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x780]
  a4c26b:	1e 
  a4c26c:	62 f1 5c 48 58 7c 24 	vaddps zmm7,zmm4,ZMMWORD PTR [rsp+0x340]
  a4c273:	0d 
  a4c274:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x740]
  a4c27b:	1d 
  a4c27c:	62 71 5c 48 58 44 24 	vaddps zmm8,zmm4,ZMMWORD PTR [rsp+0x280]
  a4c283:	0a 
  a4c284:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x300]
  a4c28b:	0c 
  a4c28c:	62 71 5c 48 58 64 24 	vaddps zmm12,zmm4,ZMMWORD PTR [rsp+0x6c0]
  a4c293:	1b 
  a4c294:	62 71 7c 48 28 ea    	vmovaps zmm13,zmm2
  a4c29a:	62 e1 7c 48 28 54 24 	vmovaps zmm18,ZMMWORD PTR [rsp+0x4c0]
  a4c2a1:	13 
  a4c2a2:	62 32 7d 48 a8 ea    	vfmadd213ps zmm13,zmm0,zmm18
  a4c2a8:	62 51 7c 48 28 fa    	vmovaps zmm15,zmm10
  a4c2ae:	62 32 7d 48 ac fa    	vfnmadd213ps zmm15,zmm0,zmm18
  a4c2b4:	62 e1 6c 40 58 c0    	vaddps zmm16,zmm18,zmm0
  a4c2ba:	62 e2 75 48 bc d0    	vfnmadd231ps zmm18,zmm1,zmm0
  a4c2c0:	62 f1 7c 40 58 c3    	vaddps zmm0,zmm16,zmm3
  a4c2c6:	62 72 65 48 bc e9    	vfnmadd231ps zmm13,zmm3,zmm1
  a4c2cc:	62 72 65 48 b8 fa    	vfmadd231ps zmm15,zmm3,zmm2
  a4c2d2:	62 e2 2d 48 bc d3    	vfnmadd231ps zmm18,zmm10,zmm3
  a4c2d8:	62 a1 7c 48 28 e2    	vmovaps zmm20,zmm18
  a4c2de:	62 f1 7c 48 28 da    	vmovaps zmm3,zmm2
  a4c2e4:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x500]
  a4c2eb:	14 
  a4c2ec:	62 f2 45 48 a8 dc    	vfmadd213ps zmm3,zmm7,zmm4
  a4c2f2:	62 c1 7c 48 28 c2    	vmovaps zmm16,zmm10
  a4c2f8:	62 e2 45 48 ac c4    	vfnmadd213ps zmm16,zmm7,zmm4
  a4c2fe:	62 e1 5c 48 58 d7    	vaddps zmm18,zmm4,zmm7
  a4c304:	62 f2 45 48 bc e1    	vfnmadd231ps zmm4,zmm7,zmm1
  a4c30a:	62 52 55 48 bc ea    	vfnmadd231ps zmm13,zmm5,zmm10
  a4c310:	62 f2 3d 48 bc d9    	vfnmadd231ps zmm3,zmm8,zmm1
  a4c316:	62 d2 1d 48 bc da    	vfnmadd231ps zmm3,zmm12,zmm10
  a4c31c:	62 d2 3d 48 bc e2    	vfnmadd231ps zmm4,zmm8,zmm10
  a4c322:	62 f1 7c 48 28 f4    	vmovaps zmm6,zmm4
  a4c328:	62 d1 6c 40 58 f8    	vaddps zmm7,zmm18,zmm8
  a4c32e:	62 e2 3d 48 b8 c2    	vfmadd231ps zmm16,zmm8,zmm2
  a4c334:	62 72 55 48 bc f9    	vfnmadd231ps zmm15,zmm5,zmm1
  a4c33a:	62 e2 1d 48 bc c1    	vfnmadd231ps zmm16,zmm12,zmm1
  a4c340:	62 f1 7c 48 28 0d 76 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff67ac76]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a4c347:	ac 67 ff 
  a4c34a:	62 e1 7c 48 58 fd    	vaddps zmm23,zmm0,zmm5
  a4c350:	62 e2 6d 48 b8 e5    	vfmadd231ps zmm20,zmm2,zmm5
  a4c356:	62 91 7c 48 28 c0    	vmovaps zmm0,zmm24
  a4c35c:	62 b2 75 48 7f c3    	vpermt2ps zmm0,zmm1,zmm19
  a4c362:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm0
  a4c369:	09 
  a4c36a:	62 f2 1d 48 b8 f2    	vfmadd231ps zmm6,zmm12,zmm2
  a4c370:	62 41 7c 48 28 d3    	vmovaps zmm26,zmm11
  a4c376:	62 d1 7c 48 28 e3    	vmovaps zmm4,zmm11
  a4c37c:	62 02 75 48 7f d7    	vpermt2ps zmm26,zmm1,zmm31
  a4c382:	62 d1 44 48 58 ec    	vaddps zmm5,zmm7,zmm12
  a4c388:	62 b1 74 40 58 c4    	vaddps zmm0,zmm17,zmm20
  a4c38e:	62 b1 5c 40 5c d1    	vsubps zmm2,zmm20,zmm17
  a4c394:	62 f1 34 48 58 fe    	vaddps zmm7,zmm9,zmm6
  a4c39a:	62 d1 4c 48 5c f1    	vsubps zmm6,zmm6,zmm9
  a4c3a0:	62 51 0c 40 58 df    	vaddps zmm11,zmm30,zmm15
  a4c3a6:	62 11 04 48 5c e6    	vsubps zmm12,zmm15,zmm30
  a4c3ac:	62 31 0c 48 58 f8    	vaddps zmm15,zmm14,zmm16
  a4c3b2:	62 51 7c 40 5c ce    	vsubps zmm9,zmm16,zmm14
  a4c3b8:	62 31 14 48 5c d6    	vsubps zmm10,zmm13,zmm22
  a4c3be:	62 51 4c 40 58 ed    	vaddps zmm13,zmm22,zmm13
  a4c3c4:	62 a1 64 48 5c c5    	vsubps zmm16,zmm3,zmm21
  a4c3ca:	62 71 54 40 58 f3    	vaddps zmm14,zmm21,zmm3
  a4c3d0:	62 31 2c 48 58 c0    	vaddps zmm8,zmm10,zmm16
  a4c3d6:	62 b1 2c 48 5c d8    	vsubps zmm3,zmm10,zmm16
  a4c3dc:	62 e1 6c 48 58 f6    	vaddps zmm22,zmm2,zmm6
  a4c3e2:	62 e1 6c 48 5c e6    	vsubps zmm20,zmm2,zmm6
  a4c3e8:	62 f1 7c 48 58 d7    	vaddps zmm2,zmm0,zmm7
  a4c3ee:	62 61 7c 48 5c ef    	vsubps zmm29,zmm0,zmm7
  a4c3f4:	62 41 14 48 58 de    	vaddps zmm27,zmm13,zmm14
  a4c3fa:	62 d1 14 48 5c c6    	vsubps zmm0,zmm13,zmm14
  a4c400:	62 51 1c 48 58 d1    	vaddps zmm10,zmm12,zmm9
  a4c406:	62 51 1c 48 5c c9    	vsubps zmm9,zmm12,zmm9
  a4c40c:	62 c1 24 48 58 c7    	vaddps zmm16,zmm11,zmm15
  a4c412:	62 51 24 48 5c df    	vsubps zmm11,zmm11,zmm15
  a4c418:	62 61 44 40 58 e5    	vaddps zmm28,zmm23,zmm5
  a4c41e:	62 e1 44 40 5c cd    	vsubps zmm17,zmm23,zmm5
  a4c424:	62 71 7c 48 28 2d 52 	vmovaps zmm13,ZMMWORD PTR [rip+0xffffffffff67ab52]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a4c42b:	ab 67 ff 
  a4c42e:	62 22 15 48 7f c3    	vpermt2ps zmm24,zmm13,zmm19
  a4c434:	62 61 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm24
  a4c43b:	08 
  a4c43c:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0xc0]
  a4c443:	03 
  a4c444:	62 61 7c 48 28 c5    	vmovaps zmm24,zmm5
  a4c44a:	62 02 75 48 7f c1    	vpermt2ps zmm24,zmm1,zmm25
  a4c450:	62 92 15 48 7f e7    	vpermt2ps zmm4,zmm13,zmm31
  a4c456:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm4
  a4c45d:	0b 
  a4c45e:	62 a1 64 00 57 db    	vxorps xmm19,xmm19,xmm19
  a4c464:	62 92 15 48 7f e9    	vpermt2ps zmm5,zmm13,zmm25
  a4c46a:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm5
  a4c471:	03 
  a4c472:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x180]
  a4c479:	06 
  a4c47a:	62 61 7c 48 28 fd    	vmovaps zmm31,zmm5
  a4c480:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x700]
  a4c487:	1c 
  a4c488:	62 62 75 48 7f fc    	vpermt2ps zmm31,zmm1,zmm4
  a4c48e:	62 f2 15 48 7f ec    	vpermt2ps zmm5,zmm13,zmm4
  a4c494:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm5
  a4c49b:	06 
  a4c49c:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x140]
  a4c4a3:	05 
  a4c4a4:	62 e1 7c 48 28 ed    	vmovaps zmm21,zmm5
  a4c4aa:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x400]
  a4c4b1:	10 
  a4c4b2:	62 e2 75 48 7f ec    	vpermt2ps zmm21,zmm1,zmm4
  a4c4b8:	62 f2 15 48 7f ec    	vpermt2ps zmm5,zmm13,zmm4
  a4c4be:	62 61 7c 48 28 f5    	vmovaps zmm30,zmm5
  a4c4c4:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x80]
  a4c4cb:	02 
  a4c4cc:	62 e1 7c 48 28 d5    	vmovaps zmm18,zmm5
  a4c4d2:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x40]
  a4c4d9:	01 
  a4c4da:	62 e2 75 48 7f d4    	vpermt2ps zmm18,zmm1,zmm4
  a4c4e0:	62 f2 15 48 7f ec    	vpermt2ps zmm5,zmm13,zmm4
  a4c4e6:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm5
  a4c4ed:	02 
  a4c4ee:	62 11 7c 48 28 f4    	vmovaps zmm14,zmm28
  a4c4f4:	62 52 75 48 7f f0    	vpermt2ps zmm14,zmm1,zmm8
  a4c4fa:	62 42 15 48 7f e0    	vpermt2ps zmm28,zmm13,zmm8
  a4c500:	62 b1 7c 48 28 f0    	vmovaps zmm6,zmm16
  a4c506:	62 f2 75 48 7f f2    	vpermt2ps zmm6,zmm1,zmm2
  a4c50c:	62 e2 15 48 7f c2    	vpermt2ps zmm16,zmm13,zmm2
  a4c512:	62 31 7c 48 28 fe    	vmovaps zmm15,zmm22
  a4c518:	62 52 75 48 7f fa    	vpermt2ps zmm15,zmm1,zmm10
  a4c51e:	62 c2 15 48 7f f2    	vpermt2ps zmm22,zmm13,zmm10
  a4c524:	62 e1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm22
  a4c52b:	05 
  a4c52c:	62 f1 7c 48 28 fb    	vmovaps zmm7,zmm3
  a4c532:	62 b2 75 48 7f fc    	vpermt2ps zmm7,zmm1,zmm20
  a4c538:	62 b2 15 48 7f dc    	vpermt2ps zmm3,zmm13,zmm20
  a4c53e:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm3
  a4c545:	01 
  a4c546:	62 11 7c 48 28 c5    	vmovaps zmm8,zmm29
  a4c54c:	62 72 75 48 7f c0    	vpermt2ps zmm8,zmm1,zmm0
  a4c552:	62 62 15 48 7f e8    	vpermt2ps zmm29,zmm13,zmm0
  a4c558:	62 c1 7c 48 28 f9    	vmovaps zmm23,zmm9
  a4c55e:	62 c2 75 48 7f fb    	vpermt2ps zmm23,zmm1,zmm11
  a4c564:	62 52 15 48 7f cb    	vpermt2ps zmm9,zmm13,zmm11
  a4c56a:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm9
  a4c571:	04 
  a4c572:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x1c0]
  a4c579:	07 
  a4c57a:	62 71 7c 48 28 ca    	vmovaps zmm9,zmm2
  a4c580:	62 32 75 48 7f cb    	vpermt2ps zmm9,zmm1,zmm19
  a4c586:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x540]
  a4c58d:	15 
  a4c58e:	62 71 7c 48 28 d3    	vmovaps zmm10,zmm3
  a4c594:	62 32 75 48 7f d3    	vpermt2ps zmm10,zmm1,zmm19
  a4c59a:	62 11 7c 48 28 db    	vmovaps zmm11,zmm27
  a4c5a0:	62 32 75 48 7f db    	vpermt2ps zmm11,zmm1,zmm19
  a4c5a6:	62 b2 75 40 77 cb    	vpermi2ps zmm1,zmm17,zmm19
  a4c5ac:	62 b2 15 48 7f d3    	vpermt2ps zmm2,zmm13,zmm19
  a4c5b2:	62 b2 15 48 7f db    	vpermt2ps zmm3,zmm13,zmm19
  a4c5b8:	62 22 15 48 7f db    	vpermt2ps zmm27,zmm13,zmm19
  a4c5be:	62 a2 15 48 7f cb    	vpermt2ps zmm17,zmm13,zmm19
  a4c5c4:	62 61 7c 48 28 0d 32 	vmovaps zmm25,ZMMWORD PTR [rip+0xffffffffff67a932]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a4c5cb:	a9 67 ff 
  a4c5ce:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x240]
  a4c5d5:	09 
  a4c5d6:	62 f1 7c 48 28 ec    	vmovaps zmm5,zmm4
  a4c5dc:	62 92 35 40 7f ea    	vpermt2ps zmm5,zmm25,zmm26
  a4c5e2:	62 f1 7c 48 28 05 54 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff67a954]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a4c5e9:	a9 67 ff 
  a4c5ec:	62 92 7d 48 7f e2    	vpermt2ps zmm4,zmm0,zmm26
  a4c5f2:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm4
  a4c5f9:	09 
  a4c5fa:	62 11 7c 48 28 e0    	vmovaps zmm12,zmm24
  a4c600:	62 52 35 40 7f e1    	vpermt2ps zmm12,zmm25,zmm9
  a4c606:	62 42 7d 48 7f c1    	vpermt2ps zmm24,zmm0,zmm9
  a4c60c:	62 81 7c 48 28 df    	vmovaps zmm19,zmm31
  a4c612:	62 a2 35 40 7f dd    	vpermt2ps zmm19,zmm25,zmm21
  a4c618:	62 22 7d 48 7f fd    	vpermt2ps zmm31,zmm0,zmm21
  a4c61e:	62 a1 7c 48 28 e2    	vmovaps zmm20,zmm18
  a4c624:	62 c2 35 40 7f e2    	vpermt2ps zmm20,zmm25,zmm10
  a4c62a:	62 c2 7d 48 7f d2    	vpermt2ps zmm18,zmm0,zmm10
  a4c630:	62 c1 7c 48 28 ee    	vmovaps zmm21,zmm14
  a4c636:	62 e2 35 40 7f ee    	vpermt2ps zmm21,zmm25,zmm6
  a4c63c:	62 72 7d 48 7f f6    	vpermt2ps zmm14,zmm0,zmm6
  a4c642:	62 c1 7c 48 28 f7    	vmovaps zmm22,zmm15
  a4c648:	62 c2 35 40 7f f3    	vpermt2ps zmm22,zmm25,zmm11
  a4c64e:	62 52 7d 48 7f fb    	vpermt2ps zmm15,zmm0,zmm11
  a4c654:	62 61 7c 48 28 d7    	vmovaps zmm26,zmm7
  a4c65a:	62 42 35 40 7f d0    	vpermt2ps zmm26,zmm25,zmm8
  a4c660:	62 d2 7d 48 7f f8    	vpermt2ps zmm7,zmm0,zmm8
  a4c666:	62 31 7c 48 28 c7    	vmovaps zmm8,zmm23
  a4c66c:	62 72 35 40 7f c1    	vpermt2ps zmm8,zmm25,zmm1
  a4c672:	62 e2 7d 48 7f f9    	vpermt2ps zmm23,zmm0,zmm1
  a4c678:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x200]
  a4c67f:	08 
  a4c680:	62 71 7c 48 28 c9    	vmovaps zmm9,zmm1
  a4c686:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x2c0]
  a4c68d:	0b 
  a4c68e:	62 72 35 40 7f ce    	vpermt2ps zmm9,zmm25,zmm6
  a4c694:	62 f2 7d 48 7f ce    	vpermt2ps zmm1,zmm0,zmm6
  a4c69a:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm1
  a4c6a1:	08 
  a4c6a2:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0xc0]
  a4c6a9:	03 
  a4c6aa:	62 f1 7c 48 28 f1    	vmovaps zmm6,zmm1
  a4c6b0:	62 f2 35 40 7f f2    	vpermt2ps zmm6,zmm25,zmm2
  a4c6b6:	62 71 7c 48 28 de    	vmovaps zmm11,zmm6
  a4c6bc:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm6
  a4c6c3:	0a 
  a4c6c4:	62 f2 7d 48 7f ca    	vpermt2ps zmm1,zmm0,zmm2
  a4c6ca:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm1
  a4c6d1:	03 
  a4c6d2:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x180]
  a4c6d9:	06 
  a4c6da:	62 f1 7c 48 28 e1    	vmovaps zmm4,zmm1
  a4c6e0:	62 92 35 40 7f e6    	vpermt2ps zmm4,zmm25,zmm30
  a4c6e6:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm4
  a4c6ed:	16 
  a4c6ee:	62 92 7d 48 7f ce    	vpermt2ps zmm1,zmm0,zmm30
  a4c6f4:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm1
  a4c6fb:	06 
  a4c6fc:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x80]
  a4c703:	02 
  a4c704:	62 61 7c 48 28 f1    	vmovaps zmm30,zmm1
  a4c70a:	62 62 35 40 7f f3    	vpermt2ps zmm30,zmm25,zmm3
  a4c710:	62 f2 7d 48 7f cb    	vpermt2ps zmm1,zmm0,zmm3
  a4c716:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm1
  a4c71d:	02 
  a4c71e:	62 91 7c 48 28 cc    	vmovaps zmm1,zmm28
  a4c724:	62 22 35 40 7f e0    	vpermt2ps zmm28,zmm25,zmm16
  a4c72a:	62 b2 7d 48 7f c8    	vpermt2ps zmm1,zmm0,zmm16
  a4c730:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm1
  a4c737:	0c 
  a4c738:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x140]
  a4c73f:	05 
  a4c740:	62 71 7c 48 28 d1    	vmovaps zmm10,zmm1
  a4c746:	62 12 35 40 7f d3    	vpermt2ps zmm10,zmm25,zmm27
  a4c74c:	62 92 7d 48 7f cb    	vpermt2ps zmm1,zmm0,zmm27
  a4c752:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm1
  a4c759:	05 
  a4c75a:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x40]
  a4c761:	01 
  a4c762:	62 71 7c 48 28 e9    	vmovaps zmm13,zmm1
  a4c768:	62 12 35 40 7f ed    	vpermt2ps zmm13,zmm25,zmm29
  a4c76e:	62 92 7d 48 7f cd    	vpermt2ps zmm1,zmm0,zmm29
  a4c774:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm1
  a4c77b:	01 
  a4c77c:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x100]
  a4c783:	04 
  a4c784:	62 22 75 48 77 c9    	vpermi2ps zmm25,zmm1,zmm17
  a4c78a:	62 b2 7d 48 7f c9    	vpermt2ps zmm1,zmm0,zmm17
  a4c790:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm1
  a4c797:	04 
  a4c798:	62 f1 7c 48 28 35 5e 	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff67a65e]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a4c79f:	a6 67 ff 
  a4c7a2:	62 d1 d5 48 14 c4    	vunpcklpd zmm0,zmm5,zmm12
  a4c7a8:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x780],zmm0
  a4c7af:	1e 
  a4c7b0:	62 b1 e5 40 14 cc    	vunpcklpd zmm1,zmm19,zmm20
  a4c7b6:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x740],zmm1
  a4c7bd:	1d 
  a4c7be:	62 f2 4d 48 7f c1    	vpermt2ps zmm0,zmm6,zmm1
  a4c7c4:	62 21 d5 40 14 ee    	vunpcklpd zmm29,zmm21,zmm22
  a4c7ca:	62 d1 ad 40 14 d0    	vunpcklpd zmm2,zmm26,zmm8
  a4c7d0:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x700],zmm2
  a4c7d7:	1c 
  a4c7d8:	62 91 7c 48 28 cd    	vmovaps zmm1,zmm29
  a4c7de:	62 f2 4d 48 7f ca    	vpermt2ps zmm1,zmm6,zmm2
  a4c7e4:	62 e1 7c 48 10 42 11 	vmovups zmm16,ZMMWORD PTR [rdx+0x440]
  a4c7eb:	62 e1 7c 48 10 4a 10 	vmovups zmm17,ZMMWORD PTR [rdx+0x400]
  a4c7f2:	62 b1 74 48 59 d1    	vmulps zmm2,zmm1,zmm17
  a4c7f8:	62 b2 7d 48 b8 d0    	vfmadd231ps zmm2,zmm0,zmm16
  a4c7fe:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm2
  a4c805:	15 
  a4c806:	62 b1 7c 48 59 c1    	vmulps zmm0,zmm0,zmm17
  a4c80c:	62 f2 7d 40 bc c1    	vfnmadd231ps zmm0,zmm16,zmm1
  a4c812:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm0
  a4c819:	0b 
  a4c81a:	62 d1 b5 48 15 c3    	vunpckhpd zmm0,zmm9,zmm11
  a4c820:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm0
  a4c827:	1a 
  a4c828:	62 91 dd 48 15 ce    	vunpckhpd zmm1,zmm4,zmm30
  a4c82e:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm1
  a4c835:	19 
  a4c836:	62 f2 4d 48 7f c1    	vpermt2ps zmm0,zmm6,zmm1
  a4c83c:	62 d1 9d 40 15 ca    	vunpckhpd zmm1,zmm28,zmm10
  a4c842:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm1
  a4c849:	18 
  a4c84a:	62 91 95 48 15 d1    	vunpckhpd zmm2,zmm13,zmm25
  a4c850:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm2
  a4c857:	17 
  a4c858:	62 f2 4d 48 7f ca    	vpermt2ps zmm1,zmm6,zmm2
  a4c85e:	62 f1 7c 48 10 52 04 	vmovups zmm2,ZMMWORD PTR [rdx+0x100]
  a4c865:	62 f1 7c 48 10 5a 05 	vmovups zmm3,ZMMWORD PTR [rdx+0x140]
  a4c86c:	62 61 74 48 59 da    	vmulps zmm27,zmm1,zmm2
  a4c872:	62 62 7d 48 b8 db    	vfmadd231ps zmm27,zmm0,zmm3
  a4c878:	62 61 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm27
  a4c87f:	14 
  a4c880:	62 f1 7c 48 59 c2    	vmulps zmm0,zmm0,zmm2
  a4c886:	62 f2 65 48 bc c1    	vfnmadd231ps zmm0,zmm3,zmm1
  a4c88c:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm0
  a4c893:	07 
  a4c894:	62 d1 d5 48 15 cc    	vunpckhpd zmm1,zmm5,zmm12
  a4c89a:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x7c0],zmm1
  a4c8a1:	1f 
  a4c8a2:	62 b1 e5 40 15 d4    	vunpckhpd zmm2,zmm19,zmm20
  a4c8a8:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm2
  a4c8af:	0e 
  a4c8b0:	62 a1 d5 40 15 f6    	vunpckhpd zmm22,zmm21,zmm22
  a4c8b6:	62 d1 ad 40 15 c0    	vunpckhpd zmm0,zmm26,zmm8
  a4c8bc:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x800],zmm0
  a4c8c3:	20 
  a4c8c4:	62 71 7c 48 28 1d 72 	vmovaps zmm11,ZMMWORD PTR [rip+0xffffffffff67a572]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a4c8cb:	a5 67 ff 
  a4c8ce:	62 f2 25 48 7f ca    	vpermt2ps zmm1,zmm11,zmm2
  a4c8d4:	62 b1 7c 48 28 d6    	vmovaps zmm2,zmm22
  a4c8da:	62 f2 25 48 7f d0    	vpermt2ps zmm2,zmm11,zmm0
  a4c8e0:	62 f1 7c 48 10 5a 17 	vmovups zmm3,ZMMWORD PTR [rdx+0x5c0]
  a4c8e7:	62 f1 7c 48 10 62 16 	vmovups zmm4,ZMMWORD PTR [rdx+0x580]
  a4c8ee:	62 71 6c 48 59 c4    	vmulps zmm8,zmm2,zmm4
  a4c8f4:	62 72 75 48 b8 c3    	vfmadd231ps zmm8,zmm1,zmm3
  a4c8fa:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm8
  a4c901:	13 
  a4c902:	62 f1 74 48 59 cc    	vmulps zmm1,zmm1,zmm4
  a4c908:	62 f2 65 48 bc ca    	vfnmadd231ps zmm1,zmm3,zmm2
  a4c90e:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm1
  a4c915:	10 
  a4c916:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x240]
  a4c91d:	09 
  a4c91e:	62 91 fd 48 15 c8    	vunpckhpd zmm1,zmm0,zmm24
  a4c924:	62 b1 85 40 15 d2    	vunpckhpd zmm2,zmm31,zmm18
  a4c92a:	62 f2 4d 48 7f ca    	vpermt2ps zmm1,zmm6,zmm2
  a4c930:	62 d1 8d 48 15 d7    	vunpckhpd zmm2,zmm14,zmm15
  a4c936:	62 b1 c5 48 15 df    	vunpckhpd zmm3,zmm7,zmm23
  a4c93c:	62 f2 4d 48 7f d3    	vpermt2ps zmm2,zmm6,zmm3
  a4c942:	62 f1 7c 48 10 5a 1d 	vmovups zmm3,ZMMWORD PTR [rdx+0x740]
  a4c949:	62 f1 7c 48 10 62 1c 	vmovups zmm4,ZMMWORD PTR [rdx+0x700]
  a4c950:	62 71 6c 48 59 c4    	vmulps zmm8,zmm2,zmm4
  a4c956:	62 72 75 48 b8 c3    	vfmadd231ps zmm8,zmm1,zmm3
  a4c95c:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm8
  a4c963:	12 
  a4c964:	62 f1 74 48 59 cc    	vmulps zmm1,zmm1,zmm4
  a4c96a:	62 f2 65 48 bc ca    	vfnmadd231ps zmm1,zmm3,zmm2
  a4c970:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm1
  a4c977:	0f 
  a4c978:	62 81 fd 48 14 c0    	vunpcklpd zmm16,zmm0,zmm24
  a4c97e:	62 21 85 40 14 da    	vunpcklpd zmm27,zmm31,zmm18
  a4c984:	62 51 8d 48 14 e7    	vunpcklpd zmm12,zmm14,zmm15
  a4c98a:	62 21 c5 48 14 d7    	vunpcklpd zmm26,zmm7,zmm23
  a4c990:	62 b1 7c 48 28 d8    	vmovaps zmm3,zmm16
  a4c996:	62 92 25 48 7f db    	vpermt2ps zmm3,zmm11,zmm27
  a4c99c:	62 d1 7c 48 28 e4    	vmovaps zmm4,zmm12
  a4c9a2:	62 92 25 48 7f e2    	vpermt2ps zmm4,zmm11,zmm26
  a4c9a8:	62 f1 7c 48 10 6a 1b 	vmovups zmm5,ZMMWORD PTR [rdx+0x6c0]
  a4c9af:	62 f1 7c 48 10 7a 1a 	vmovups zmm7,ZMMWORD PTR [rdx+0x680]
  a4c9b6:	62 71 5c 48 59 c7    	vmulps zmm8,zmm4,zmm7
  a4c9bc:	62 72 65 48 b8 c5    	vfmadd231ps zmm8,zmm3,zmm5
  a4c9c2:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm8
  a4c9c9:	11 
  a4c9ca:	62 f1 64 48 59 df    	vmulps zmm3,zmm3,zmm7
  a4c9d0:	62 f2 55 48 bc dc    	vfnmadd231ps zmm3,zmm5,zmm4
  a4c9d6:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x6c0],zmm3
  a4c9dd:	1b 
  a4c9de:	62 e1 7c 48 28 54 24 	vmovaps zmm18,ZMMWORD PTR [rsp+0x200]
  a4c9e5:	08 
  a4c9e6:	62 e1 7c 48 28 5c 24 	vmovaps zmm19,ZMMWORD PTR [rsp+0xc0]
  a4c9ed:	03 
  a4c9ee:	62 21 ed 40 15 fb    	vunpckhpd zmm31,zmm18,zmm19
  a4c9f4:	62 e1 7c 48 28 64 24 	vmovaps zmm20,ZMMWORD PTR [rsp+0x180]
  a4c9fb:	06 
  a4c9fc:	62 e1 7c 48 28 6c 24 	vmovaps zmm21,ZMMWORD PTR [rsp+0x80]
  a4ca03:	02 
  a4ca04:	62 a1 dd 40 15 fd    	vunpckhpd zmm23,zmm20,zmm21
  a4ca0a:	62 91 7c 48 28 e7    	vmovaps zmm4,zmm31
  a4ca10:	62 b2 25 48 7f e7    	vpermt2ps zmm4,zmm11,zmm23
  a4ca16:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x300]
  a4ca1d:	0c 
  a4ca1e:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x140]
  a4ca25:	05 
  a4ca26:	62 71 e5 48 15 c0    	vunpckhpd zmm8,zmm3,zmm0
  a4ca2c:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x40]
  a4ca33:	01 
  a4ca34:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x100]
  a4ca3b:	04 
  a4ca3c:	62 e1 ed 48 15 c9    	vunpckhpd zmm17,zmm2,zmm1
  a4ca42:	62 d1 7c 48 28 e8    	vmovaps zmm5,zmm8
  a4ca48:	62 b2 25 48 7f e9    	vpermt2ps zmm5,zmm11,zmm17
  a4ca4e:	62 f1 7c 48 10 7a 0f 	vmovups zmm7,ZMMWORD PTR [rdx+0x3c0]
  a4ca55:	62 71 7c 48 10 72 0e 	vmovups zmm14,ZMMWORD PTR [rdx+0x380]
  a4ca5c:	62 51 54 48 59 fe    	vmulps zmm15,zmm5,zmm14
  a4ca62:	62 72 5d 48 b8 ff    	vfmadd231ps zmm15,zmm4,zmm7
  a4ca68:	62 71 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm15
  a4ca6f:	0d 
  a4ca70:	62 d1 5c 48 59 e6    	vmulps zmm4,zmm4,zmm14
  a4ca76:	62 f2 45 48 bc e5    	vfnmadd231ps zmm4,zmm7,zmm5
  a4ca7c:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm4
  a4ca83:	09 
  a4ca84:	62 f1 b5 48 14 7c 24 	vunpcklpd zmm7,zmm9,ZMMWORD PTR [rsp+0x280]
  a4ca8b:	0a 
  a4ca8c:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x580]
  a4ca93:	16 
  a4ca94:	62 11 dd 48 14 f6    	vunpcklpd zmm14,zmm4,zmm30
  a4ca9a:	62 51 9d 40 14 d2    	vunpcklpd zmm10,zmm28,zmm10
  a4caa0:	62 91 95 48 14 e9    	vunpcklpd zmm5,zmm13,zmm25
  a4caa6:	62 f1 7c 48 28 e7    	vmovaps zmm4,zmm7
  a4caac:	62 61 7c 48 28 c7    	vmovaps zmm24,zmm7
  a4cab2:	62 d2 25 48 7f e6    	vpermt2ps zmm4,zmm11,zmm14
  a4cab8:	62 d1 7c 48 28 f2    	vmovaps zmm6,zmm10
  a4cabe:	62 41 7c 48 28 e2    	vmovaps zmm28,zmm10
  a4cac4:	62 f2 25 48 7f f5    	vpermt2ps zmm6,zmm11,zmm5
  a4caca:	62 f1 7c 48 10 7a 02 	vmovups zmm7,ZMMWORD PTR [rdx+0x80]
  a4cad1:	62 71 7c 48 10 4a 03 	vmovups zmm9,ZMMWORD PTR [rdx+0xc0]
  a4cad8:	62 71 4c 48 59 d7    	vmulps zmm10,zmm6,zmm7
  a4cade:	62 52 5d 48 b8 d1    	vfmadd231ps zmm10,zmm4,zmm9
  a4cae4:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm10
  a4caeb:	0a 
  a4caec:	62 71 5c 48 59 d7    	vmulps zmm10,zmm4,zmm7
  a4caf2:	62 72 35 48 bc d6    	vfnmadd231ps zmm10,zmm9,zmm6
  a4caf8:	62 b1 ed 40 14 e3    	vunpcklpd zmm4,zmm18,zmm19
  a4cafe:	62 b1 dd 40 14 f5    	vunpcklpd zmm6,zmm20,zmm21
  a4cb04:	62 71 e5 48 14 e8    	vunpcklpd zmm13,zmm3,zmm0
  a4cb0a:	62 71 ed 48 14 f9    	vunpcklpd zmm15,zmm2,zmm1
  a4cb10:	62 f1 7c 48 28 fc    	vmovaps zmm7,zmm4
  a4cb16:	62 f1 7c 48 28 05 e0 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff67a2e0]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a4cb1d:	a2 67 ff 
  a4cb20:	62 f2 7d 48 7f e6    	vpermt2ps zmm4,zmm0,zmm6
  a4cb26:	62 51 7c 48 28 cd    	vmovaps zmm9,zmm13
  a4cb2c:	62 52 7d 48 7f ef    	vpermt2ps zmm13,zmm0,zmm15
  a4cb32:	62 e1 7c 48 10 52 09 	vmovups zmm18,ZMMWORD PTR [rdx+0x240]
  a4cb39:	62 e1 7c 48 10 62 08 	vmovups zmm20,ZMMWORD PTR [rdx+0x200]
  a4cb40:	62 a1 14 48 59 dc    	vmulps zmm19,zmm13,zmm20
  a4cb46:	62 a2 5d 48 b8 da    	vfmadd231ps zmm19,zmm4,zmm18
  a4cb4c:	62 e1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm19
  a4cb53:	0c 
  a4cb54:	62 b1 5c 48 59 e4    	vmulps zmm4,zmm4,zmm20
  a4cb5a:	62 d2 6d 40 bc e5    	vfnmadd231ps zmm4,zmm18,zmm13
  a4cb60:	62 e1 7c 48 28 e4    	vmovaps zmm20,zmm4
  a4cb66:	62 f2 25 48 7f fe    	vpermt2ps zmm7,zmm11,zmm6
  a4cb6c:	62 52 25 48 7f cf    	vpermt2ps zmm9,zmm11,zmm15
  a4cb72:	62 71 7c 48 28 6c 24 	vmovaps zmm13,ZMMWORD PTR [rsp+0x600]
  a4cb79:	18 
  a4cb7a:	62 72 25 48 7f 6c 24 	vpermt2ps zmm13,zmm11,ZMMWORD PTR [rsp+0x5c0]
  a4cb81:	17 
  a4cb82:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x680]
  a4cb89:	1a 
  a4cb8a:	62 f2 25 48 7f 54 24 	vpermt2ps zmm2,zmm11,ZMMWORD PTR [rsp+0x640]
  a4cb91:	19 
  a4cb92:	62 62 25 48 7f 6c 24 	vpermt2ps zmm29,zmm11,ZMMWORD PTR [rsp+0x700]
  a4cb99:	1c 
  a4cb9a:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x780]
  a4cba1:	1e 
  a4cba2:	62 f2 25 48 7f 64 24 	vpermt2ps zmm4,zmm11,ZMMWORD PTR [rsp+0x740]
  a4cba9:	1d 
  a4cbaa:	62 71 7c 48 28 d8    	vmovaps zmm11,zmm0
  a4cbb0:	62 32 7d 48 7f c1    	vpermt2ps zmm8,zmm0,zmm17
  a4cbb6:	62 22 7d 48 7f ff    	vpermt2ps zmm31,zmm0,zmm23
  a4cbbc:	62 f1 7c 48 10 42 0d 	vmovups zmm0,ZMMWORD PTR [rdx+0x340]
  a4cbc3:	62 f1 7c 48 10 5a 0c 	vmovups zmm3,ZMMWORD PTR [rdx+0x300]
  a4cbca:	62 f1 04 40 59 f3    	vmulps zmm6,zmm31,zmm3
  a4cbd0:	62 f2 3d 48 bc f0    	vfnmadd231ps zmm6,zmm8,zmm0
  a4cbd6:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm6
  a4cbdd:	16 
  a4cbde:	62 f1 3c 48 59 cb    	vmulps zmm1,zmm8,zmm3
  a4cbe4:	62 92 7d 48 b8 cf    	vfmadd231ps zmm1,zmm0,zmm31
  a4cbea:	62 e1 7c 48 28 d9    	vmovaps zmm19,zmm1
  a4cbf0:	62 f1 7c 48 10 42 13 	vmovups zmm0,ZMMWORD PTR [rdx+0x4c0]
  a4cbf7:	62 f1 7c 48 10 5a 12 	vmovups zmm3,ZMMWORD PTR [rdx+0x480]
  a4cbfe:	62 71 5c 48 59 c3    	vmulps zmm8,zmm4,zmm3
  a4cc04:	62 72 15 40 bc c0    	vfnmadd231ps zmm8,zmm29,zmm0
  a4cc0a:	62 71 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm8
  a4cc11:	19 
  a4cc12:	62 e1 14 40 59 fb    	vmulps zmm23,zmm29,zmm3
  a4cc18:	62 e2 7d 48 b8 fc    	vfmadd231ps zmm23,zmm0,zmm4
  a4cc1e:	62 f1 7c 48 10 42 07 	vmovups zmm0,ZMMWORD PTR [rdx+0x1c0]
  a4cc25:	62 f1 7c 48 10 5a 06 	vmovups zmm3,ZMMWORD PTR [rdx+0x180]
  a4cc2c:	62 f1 6c 48 59 e3    	vmulps zmm4,zmm2,zmm3
  a4cc32:	62 f2 15 48 bc e0    	vfnmadd231ps zmm4,zmm13,zmm0
  a4cc38:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm4
  a4cc3f:	17 
  a4cc40:	62 61 14 48 59 cb    	vmulps zmm25,zmm13,zmm3
  a4cc46:	62 62 7d 48 b8 ca    	vfmadd231ps zmm25,zmm0,zmm2
  a4cc4c:	62 12 25 48 7f e2    	vpermt2ps zmm12,zmm11,zmm26
  a4cc52:	62 82 25 48 7f c3    	vpermt2ps zmm16,zmm11,zmm27
  a4cc58:	62 f1 7c 48 10 42 19 	vmovups zmm0,ZMMWORD PTR [rdx+0x640]
  a4cc5f:	62 f1 7c 48 10 5a 18 	vmovups zmm3,ZMMWORD PTR [rdx+0x600]
  a4cc66:	62 f1 7c 40 59 cb    	vmulps zmm1,zmm16,zmm3
  a4cc6c:	62 f2 1d 48 bc c8    	vfnmadd231ps zmm1,zmm12,zmm0
  a4cc72:	62 71 7c 48 28 e9    	vmovaps zmm13,zmm1
  a4cc78:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm1
  a4cc7f:	18 
  a4cc80:	62 e1 1c 48 59 eb    	vmulps zmm21,zmm12,zmm3
  a4cc86:	62 a2 7d 48 b8 e8    	vfmadd231ps zmm21,zmm0,zmm16
  a4cc8c:	62 f1 7c 48 10 42 0b 	vmovups zmm0,ZMMWORD PTR [rdx+0x2c0]
  a4cc93:	62 f1 7c 48 10 52 0a 	vmovups zmm2,ZMMWORD PTR [rdx+0x280]
  a4cc9a:	62 f1 34 48 59 ca    	vmulps zmm1,zmm9,zmm2
  a4cca0:	62 f2 45 48 b8 c8    	vfmadd231ps zmm1,zmm7,zmm0
  a4cca6:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm1
  a4ccad:	03 
  a4ccae:	62 f1 44 48 59 ca    	vmulps zmm1,zmm7,zmm2
  a4ccb4:	62 d2 7d 48 bc c9    	vfnmadd231ps zmm1,zmm0,zmm9
  a4ccba:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm1
  a4ccc1:	05 
  a4ccc2:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x7c0]
  a4ccc9:	1f 
  a4ccca:	62 f2 25 48 7f 5c 24 	vpermt2ps zmm3,zmm11,ZMMWORD PTR [rsp+0x380]
  a4ccd1:	0e 
  a4ccd2:	62 e2 25 48 7f 74 24 	vpermt2ps zmm22,zmm11,ZMMWORD PTR [rsp+0x800]
  a4ccd9:	20 
  a4ccda:	62 f1 7c 48 10 42 15 	vmovups zmm0,ZMMWORD PTR [rdx+0x540]
  a4cce1:	62 f1 7c 48 10 52 14 	vmovups zmm2,ZMMWORD PTR [rdx+0x500]
  a4cce8:	62 f1 4c 40 59 ca    	vmulps zmm1,zmm22,zmm2
  a4ccee:	62 f2 65 48 b8 c8    	vfmadd231ps zmm1,zmm3,zmm0
  a4ccf4:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm1
  a4ccfb:	06 
  a4ccfc:	62 f1 64 48 59 ca    	vmulps zmm1,zmm3,zmm2
  a4cd02:	62 b2 7d 48 bc ce    	vfnmadd231ps zmm1,zmm0,zmm22
  a4cd08:	62 61 7c 48 28 d1    	vmovaps zmm26,zmm1
  a4cd0e:	62 62 25 48 7f e5    	vpermt2ps zmm28,zmm11,zmm5
  a4cd14:	62 61 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm28
  a4cd1b:	02 
  a4cd1c:	62 42 25 48 7f c6    	vpermt2ps zmm24,zmm11,zmm14
  a4cd22:	62 61 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm24
  a4cd29:	01 
  a4cd2a:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x2c0]
  a4cd31:	0b 
  a4cd32:	62 f1 7c 48 5c 44 24 	vsubps zmm0,zmm0,ZMMWORD PTR [rsp+0x1c0]
  a4cd39:	07 
  a4cd3a:	62 f2 7d 48 18 15 14 	vbroadcastss zmm2,DWORD PTR [rip+0xffffffffff628a14]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a4cd41:	8a 62 ff 
  a4cd44:	62 61 7c 48 28 7c 24 	vmovaps zmm31,ZMMWORD PTR [rsp+0x400]
  a4cd4b:	10 
  a4cd4c:	62 e1 7c 48 28 4c 24 	vmovaps zmm17,ZMMWORD PTR [rsp+0x3c0]
  a4cd53:	0f 
  a4cd54:	62 b1 04 40 5c d9    	vsubps zmm3,zmm31,zmm17
  a4cd5a:	62 f1 64 48 59 ca    	vmulps zmm1,zmm3,zmm2
  a4cd60:	62 f2 7d 48 18 2d 36 	vbroadcastss zmm5,DWORD PTR [rip+0xffffffffff628636]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a4cd67:	86 62 ff 
  a4cd6a:	62 f2 7d 48 b8 cd    	vfmadd231ps zmm1,zmm0,zmm5
  a4cd70:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm1
  a4cd77:	08 
  a4cd78:	62 f1 7c 48 59 c2    	vmulps zmm0,zmm0,zmm2
  a4cd7e:	62 f2 55 48 bc c3    	vfnmadd231ps zmm0,zmm5,zmm3
  a4cd84:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm0
  a4cd8b:	1a 
  a4cd8c:	62 71 7c 48 28 74 24 	vmovaps zmm14,ZMMWORD PTR [rsp+0x6c0]
  a4cd93:	1b 
  a4cd94:	62 f1 0c 48 5c 44 24 	vsubps zmm0,zmm14,ZMMWORD PTR [rsp+0x240]
  a4cd9b:	09 
  a4cd9c:	62 51 7c 48 28 e2    	vmovaps zmm12,zmm10
  a4cda2:	62 b1 2c 48 5c dc    	vsubps zmm3,zmm10,zmm20
  a4cda8:	62 f1 64 48 59 ca    	vmulps zmm1,zmm3,zmm2
  a4cdae:	62 f2 7d 48 b8 cd    	vfmadd231ps zmm1,zmm0,zmm5
  a4cdb4:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm1
  a4cdbb:	04 
  a4cdbc:	62 61 7c 48 59 ea    	vmulps zmm29,zmm0,zmm2
  a4cdc2:	62 62 55 48 bc eb    	vfnmadd231ps zmm29,zmm5,zmm3
  a4cdc8:	62 d1 5c 48 5c c5    	vsubps zmm0,zmm4,zmm13
  a4cdce:	62 d1 4c 48 5c d8    	vsubps zmm3,zmm6,zmm8
  a4cdd4:	62 f1 64 48 59 ca    	vmulps zmm1,zmm3,zmm2
  a4cdda:	62 f2 7d 48 b8 cd    	vfmadd231ps zmm1,zmm0,zmm5
  a4cde0:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm1
  a4cde7:	0e 
  a4cde8:	62 61 7c 48 59 e2    	vmulps zmm28,zmm0,zmm2
  a4cdee:	62 62 55 48 bc e3    	vfnmadd231ps zmm28,zmm5,zmm3
  a4cdf4:	62 71 7c 48 28 5c 24 	vmovaps zmm11,ZMMWORD PTR [rsp+0x540]
  a4cdfb:	15 
  a4cdfc:	62 e1 7c 48 28 74 24 	vmovaps zmm22,ZMMWORD PTR [rsp+0x500]
  a4ce03:	14 
  a4ce04:	62 b1 24 48 5c c6    	vsubps zmm0,zmm11,zmm22
  a4ce0a:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x4c0]
  a4ce11:	13 
  a4ce12:	62 71 7c 48 28 4c 24 	vmovaps zmm9,ZMMWORD PTR [rsp+0x480]
  a4ce19:	12 
  a4ce1a:	62 d1 5c 48 5c d9    	vsubps zmm3,zmm4,zmm9
  a4ce20:	62 61 64 48 59 f2    	vmulps zmm30,zmm3,zmm2
  a4ce26:	62 62 7d 48 b8 f5    	vfmadd231ps zmm30,zmm0,zmm5
  a4ce2c:	62 61 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x740],zmm30
  a4ce33:	1d 
  a4ce34:	62 61 7c 48 59 da    	vmulps zmm27,zmm0,zmm2
  a4ce3a:	62 62 55 48 bc db    	vfnmadd231ps zmm27,zmm5,zmm3
  a4ce40:	62 71 7c 48 28 44 24 	vmovaps zmm8,ZMMWORD PTR [rsp+0x440]
  a4ce47:	11 
  a4ce48:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x340]
  a4ce4f:	0d 
  a4ce50:	62 f1 3c 48 5c c6    	vsubps zmm0,zmm8,zmm6
  a4ce56:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x280]
  a4ce5d:	0a 
  a4ce5e:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x300]
  a4ce65:	0c 
  a4ce66:	62 f1 2c 48 5c d9    	vsubps zmm3,zmm10,zmm1
  a4ce6c:	62 f1 64 48 59 fa    	vmulps zmm7,zmm3,zmm2
  a4ce72:	62 f2 7d 48 b8 fd    	vfmadd231ps zmm7,zmm0,zmm5
  a4ce78:	62 e1 7c 48 28 c7    	vmovaps zmm16,zmm7
  a4ce7e:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x700],zmm7
  a4ce85:	1c 
  a4ce86:	62 e1 7c 48 59 d2    	vmulps zmm18,zmm0,zmm2
  a4ce8c:	62 e2 55 48 bc d3    	vfnmadd231ps zmm18,zmm5,zmm3
  a4ce92:	62 b1 34 40 5c dd    	vsubps zmm3,zmm25,zmm21
  a4ce98:	62 b1 64 40 5c ff    	vsubps zmm7,zmm19,zmm23
  a4ce9e:	62 71 44 48 59 ea    	vmulps zmm13,zmm7,zmm2
  a4cea4:	62 72 65 48 b8 ed    	vfmadd231ps zmm13,zmm3,zmm5
  a4ceaa:	62 71 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x780],zmm13
  a4ceb1:	1e 
  a4ceb2:	62 71 64 48 59 fa    	vmulps zmm15,zmm3,zmm2
  a4ceb8:	62 72 45 48 bc fd    	vfnmadd231ps zmm15,zmm7,zmm5
  a4cebe:	62 51 5c 48 58 e9    	vaddps zmm13,zmm4,zmm9
  a4cec4:	62 31 24 48 58 ce    	vaddps zmm9,zmm11,zmm22
  a4ceca:	62 71 2c 48 58 d9    	vaddps zmm11,zmm10,zmm1
  a4ced0:	62 e1 3c 48 58 f6    	vaddps zmm22,zmm8,zmm6
  a4ced6:	62 b1 64 40 58 c7    	vaddps zmm0,zmm19,zmm23
  a4cedc:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x840],zmm0
  a4cee3:	21 
  a4cee4:	62 21 34 40 58 c5    	vaddps zmm24,zmm25,zmm21
  a4ceea:	62 b1 04 40 58 f9    	vaddps zmm7,zmm31,zmm17
  a4cef0:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x1c0]
  a4cef7:	07 
  a4cef8:	62 61 74 48 58 4c 24 	vaddps zmm25,zmm1,ZMMWORD PTR [rsp+0x2c0]
  a4ceff:	0b 
  a4cf00:	62 21 1c 48 58 fc    	vaddps zmm31,zmm12,zmm20
  a4cf06:	62 72 7d 48 18 05 d8 	vbroadcastss zmm8,DWORD PTR [rip+0xffffffffff6287d8]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a4cf0d:	87 62 ff 
  a4cf10:	62 71 0c 48 58 54 24 	vaddps zmm10,zmm14,ZMMWORD PTR [rsp+0x240]
  a4cf17:	09 
  a4cf18:	62 f2 7d 48 18 0d 22 	vbroadcastss zmm1,DWORD PTR [rip+0xffffffffff628722]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a4cf1f:	87 62 ff 
  a4cf22:	62 c1 7c 48 28 f8    	vmovaps zmm23,zmm8
  a4cf28:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0x140]
  a4cf2f:	05 
  a4cf30:	62 e2 35 40 a8 fa    	vfmadd213ps zmm23,zmm25,zmm2
  a4cf36:	62 61 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm25
  a4cf3d:	10 
  a4cf3e:	62 e2 45 48 bc f9    	vfnmadd231ps zmm23,zmm7,zmm1
  a4cf44:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm7
  a4cf4b:	0f 
  a4cf4c:	62 c1 7c 48 28 e0    	vmovaps zmm20,zmm8
  a4cf52:	62 91 7c 48 28 f2    	vmovaps zmm6,zmm26
  a4cf58:	62 61 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x800],zmm26
  a4cf5f:	20 
  a4cf60:	62 82 2d 48 a8 e2    	vfmadd213ps zmm20,zmm10,zmm26
  a4cf66:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm10
  a4cf6d:	0d 
  a4cf6e:	62 e2 05 40 bc e1    	vfnmadd231ps zmm20,zmm31,zmm1
  a4cf74:	62 61 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm31
  a4cf7b:	0a 
  a4cf7c:	62 91 44 40 5c de    	vsubps zmm3,zmm23,zmm30
  a4cf82:	62 b1 5c 40 5c e8    	vsubps zmm5,zmm20,zmm16
  a4cf88:	62 f1 64 48 5c c5    	vsubps zmm0,zmm3,zmm5
  a4cf8e:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm0
  a4cf95:	07 
  a4cf96:	62 f1 64 48 58 c5    	vaddps zmm0,zmm3,zmm5
  a4cf9c:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm0
  a4cfa3:	14 
  a4cfa4:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x580]
  a4cfab:	16 
  a4cfac:	62 61 7c 48 58 54 24 	vaddps zmm26,zmm0,ZMMWORD PTR [rsp+0x640]
  a4cfb3:	19 
  a4cfb4:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x5c0]
  a4cfbb:	17 
  a4cfbc:	62 61 7c 48 58 74 24 	vaddps zmm30,zmm0,ZMMWORD PTR [rsp+0x600]
  a4cfc3:	18 
  a4cfc4:	62 c1 7c 48 28 d8    	vmovaps zmm19,zmm8
  a4cfca:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0xc0]
  a4cfd1:	03 
  a4cfd2:	62 e2 35 48 a8 d8    	vfmadd213ps zmm19,zmm9,zmm0
  a4cfd8:	62 51 7c 48 28 e1    	vmovaps zmm12,zmm9
  a4cfde:	62 71 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x7c0],zmm9
  a4cfe5:	1f 
  a4cfe6:	62 e2 15 48 bc d9    	vfnmadd231ps zmm19,zmm13,zmm1
  a4cfec:	62 71 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x8c0],zmm13
  a4cff3:	23 
  a4cff4:	62 c1 7c 48 28 c8    	vmovaps zmm17,zmm8
  a4cffa:	62 e1 7c 48 28 6c 24 	vmovaps zmm21,ZMMWORD PTR [rsp+0x180]
  a4d001:	06 
  a4d002:	62 a2 4d 40 a8 cd    	vfmadd213ps zmm17,zmm22,zmm21
  a4d008:	62 e2 25 48 bc c9    	vfnmadd231ps zmm17,zmm11,zmm1
  a4d00e:	62 51 7c 48 28 f3    	vmovaps zmm14,zmm11
  a4d014:	62 f1 64 40 58 5c 24 	vaddps zmm3,zmm19,ZMMWORD PTR [rsp+0x200]
  a4d01b:	08 
  a4d01c:	62 f1 74 40 58 64 24 	vaddps zmm4,zmm17,ZMMWORD PTR [rsp+0x100]
  a4d023:	04 
  a4d024:	62 f1 64 48 58 ec    	vaddps zmm5,zmm3,zmm4
  a4d02a:	62 f1 7c 48 29 6c 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm5
  a4d031:	13 
  a4d032:	62 f1 64 48 5c dc    	vsubps zmm3,zmm3,zmm4
  a4d038:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm3
  a4d03f:	15 
  a4d040:	62 f1 7c 48 28 e9    	vmovaps zmm5,zmm1
  a4d046:	62 f2 35 40 ac ea    	vfnmadd213ps zmm5,zmm25,zmm2
  a4d04c:	62 d2 45 48 b8 e8    	vfmadd231ps zmm5,zmm7,zmm8
  a4d052:	62 71 7c 48 28 c9    	vmovaps zmm9,zmm1
  a4d058:	62 72 2d 48 ac ce    	vfnmadd213ps zmm9,zmm10,zmm6
  a4d05e:	62 52 05 40 b8 c8    	vfmadd231ps zmm9,zmm31,zmm8
  a4d064:	62 91 54 48 5c db    	vsubps zmm3,zmm5,zmm27
  a4d06a:	62 b1 34 48 5c e2    	vsubps zmm4,zmm9,zmm18
  a4d070:	62 f1 64 48 5c d4    	vsubps zmm2,zmm3,zmm4
  a4d076:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm2
  a4d07d:	11 
  a4d07e:	62 f1 64 48 58 d4    	vaddps zmm2,zmm3,zmm4
  a4d084:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm2
  a4d08b:	12 
  a4d08c:	62 c1 7c 48 28 c0    	vmovaps zmm16,zmm8
  a4d092:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x80]
  a4d099:	02 
  a4d09a:	62 01 7c 48 28 c8    	vmovaps zmm25,zmm24
  a4d0a0:	62 e2 3d 40 a8 c4    	vfmadd213ps zmm16,zmm24,zmm4
  a4d0a6:	62 71 7c 48 28 5c 24 	vmovaps zmm11,ZMMWORD PTR [rsp+0x840]
  a4d0ad:	21 
  a4d0ae:	62 e2 25 48 bc c1    	vfnmadd231ps zmm16,zmm11,zmm1
  a4d0b4:	62 41 7c 48 28 c0    	vmovaps zmm24,zmm8
  a4d0ba:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x40]
  a4d0c1:	01 
  a4d0c2:	62 61 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x5c0],zmm30
  a4d0c9:	17 
  a4d0ca:	62 62 0d 40 a8 c3    	vfmadd213ps zmm24,zmm30,zmm3
  a4d0d0:	62 91 7c 48 28 f2    	vmovaps zmm6,zmm26
  a4d0d6:	62 61 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x640],zmm26
  a4d0dd:	19 
  a4d0de:	62 62 2d 40 bc c1    	vfnmadd231ps zmm24,zmm26,zmm1
  a4d0e4:	62 61 7c 48 28 f9    	vmovaps zmm31,zmm1
  a4d0ea:	62 62 1d 48 ac f8    	vfnmadd213ps zmm31,zmm12,zmm0
  a4d0f0:	62 42 15 48 b8 f8    	vfmadd231ps zmm31,zmm13,zmm8
  a4d0f6:	62 f1 7c 48 28 d1    	vmovaps zmm2,zmm1
  a4d0fc:	62 b2 4d 40 ac d5    	vfnmadd213ps zmm2,zmm22,zmm21
  a4d102:	62 21 7c 48 28 d6    	vmovaps zmm26,zmm22
  a4d108:	62 d2 0d 48 b8 d0    	vfmadd231ps zmm2,zmm14,zmm8
  a4d10e:	62 51 7c 48 28 e6    	vmovaps zmm12,zmm14
  a4d114:	62 f1 7c 48 28 c1    	vmovaps zmm0,zmm1
  a4d11a:	62 f2 35 40 ac c4    	vfnmadd213ps zmm0,zmm25,zmm4
  a4d120:	62 d2 25 48 b8 c0    	vfmadd231ps zmm0,zmm11,zmm8
  a4d126:	62 d1 7c 48 28 e3    	vmovaps zmm4,zmm11
  a4d12c:	62 f2 0d 40 ac cb    	vfnmadd213ps zmm1,zmm30,zmm3
  a4d132:	62 d2 4d 48 b8 c8    	vfmadd231ps zmm1,zmm6,zmm8
  a4d138:	62 f1 7c 48 28 74 24 	vmovaps zmm6,ZMMWORD PTR [rsp+0x680]
  a4d13f:	1a 
  a4d140:	62 71 04 40 58 c6    	vaddps zmm8,zmm31,zmm6
  a4d146:	62 91 6c 48 58 dd    	vaddps zmm3,zmm2,zmm29
  a4d14c:	62 f1 3c 48 58 fb    	vaddps zmm7,zmm8,zmm3
  a4d152:	62 f1 7c 48 29 7c 24 	vmovaps ZMMWORD PTR [rsp+0x300],zmm7
  a4d159:	0c 
  a4d15a:	62 f1 3c 48 5c db    	vsubps zmm3,zmm8,zmm3
  a4d160:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x6c0],zmm3
  a4d167:	1b 
  a4d168:	62 f1 1c 40 58 d8    	vaddps zmm3,zmm28,zmm0
  a4d16e:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x600],zmm3
  a4d175:	18 
  a4d176:	62 91 7c 48 5c dc    	vsubps zmm3,zmm0,zmm28
  a4d17c:	62 f1 04 40 5c f6    	vsubps zmm6,zmm31,zmm6
  a4d182:	62 f1 7c 48 29 74 24 	vmovaps ZMMWORD PTR [rsp+0x880],zmm6
  a4d189:	22 
  a4d18a:	62 91 6c 48 5c d5    	vsubps zmm2,zmm2,zmm29
  a4d190:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x580],zmm2
  a4d197:	16 
  a4d198:	62 d1 74 48 5c c7    	vsubps zmm0,zmm1,zmm15
  a4d19e:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x680],zmm0
  a4d1a5:	1a 
  a4d1a6:	62 d1 74 48 58 ff    	vaddps zmm7,zmm1,zmm15
  a4d1ac:	62 01 54 48 58 eb    	vaddps zmm29,zmm5,zmm27
  a4d1b2:	62 21 34 48 58 f2    	vaddps zmm30,zmm9,zmm18
  a4d1b8:	62 f2 7d 48 18 05 9e 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff62829e]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a4d1bf:	82 62 ff 
  a4d1c2:	62 61 4c 48 58 da    	vaddps zmm27,zmm6,zmm2
  a4d1c8:	62 91 64 48 58 cb    	vaddps zmm1,zmm3,zmm27
  a4d1ce:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x240],zmm1
  a4d1d5:	09 
  a4d1d6:	62 62 7d 48 ac db    	vfnmadd213ps zmm27,zmm0,zmm3
  a4d1dc:	62 71 7c 48 28 c0    	vmovaps zmm8,zmm0
  a4d1e2:	62 71 7c 48 28 c8    	vmovaps zmm9,zmm0
  a4d1e8:	62 f1 7c 48 28 d8    	vmovaps zmm3,zmm0
  a4d1ee:	62 71 7c 48 28 f8    	vmovaps zmm15,zmm0
  a4d1f4:	62 81 14 40 58 d6    	vaddps zmm18,zmm29,zmm30
  a4d1fa:	62 71 7c 48 28 d8    	vmovaps zmm11,zmm0
  a4d200:	62 61 7c 48 28 f8    	vmovaps zmm31,zmm0
  a4d206:	62 f1 7c 48 28 d0    	vmovaps zmm2,zmm0
  a4d20c:	62 f1 7c 48 28 f0    	vmovaps zmm6,zmm0
  a4d212:	62 f2 6d 40 ac c7    	vfnmadd213ps zmm0,zmm18,zmm7
  a4d218:	62 b1 44 48 58 ca    	vaddps zmm1,zmm7,zmm18
  a4d21e:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x2c0],zmm1
  a4d225:	0b 
  a4d226:	62 71 64 40 5c 54 24 	vsubps zmm10,zmm19,ZMMWORD PTR [rsp+0x200]
  a4d22d:	08 
  a4d22e:	62 f1 74 40 5c 7c 24 	vsubps zmm7,zmm17,ZMMWORD PTR [rsp+0x100]
  a4d235:	04 
  a4d236:	62 f1 7c 48 28 4c 24 	vmovaps zmm1,ZMMWORD PTR [rsp+0x380]
  a4d23d:	0e 
  a4d23e:	62 a1 74 48 58 d0    	vaddps zmm18,zmm1,zmm16
  a4d244:	62 e1 7c 40 5c f1    	vsubps zmm22,zmm16,zmm1
  a4d24a:	62 71 44 40 58 74 24 	vaddps zmm14,zmm23,ZMMWORD PTR [rsp+0x740]
  a4d251:	1d 
  a4d252:	62 71 5c 40 58 6c 24 	vaddps zmm13,zmm20,ZMMWORD PTR [rsp+0x700]
  a4d259:	1c 
  a4d25a:	62 d1 0c 48 5c cd    	vsubps zmm1,zmm14,zmm13
  a4d260:	62 c1 0c 48 58 ed    	vaddps zmm21,zmm14,zmm13
  a4d266:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x780]
  a4d26d:	1e 
  a4d26e:	62 71 3c 40 5c f5    	vsubps zmm14,zmm24,zmm5
  a4d274:	62 71 3c 40 58 ed    	vaddps zmm13,zmm24,zmm5
  a4d27a:	62 e1 2c 48 58 df    	vaddps zmm19,zmm10,zmm7
  a4d280:	62 e1 2c 48 5c cf    	vsubps zmm17,zmm10,zmm7
  a4d286:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0xc0]
  a4d28d:	03 
  a4d28e:	62 71 54 48 58 54 24 	vaddps zmm10,zmm5,ZMMWORD PTR [rsp+0x7c0]
  a4d295:	1f 
  a4d296:	62 71 2c 48 58 54 24 	vaddps zmm10,zmm10,ZMMWORD PTR [rsp+0x8c0]
  a4d29d:	23 
  a4d29e:	62 e1 2c 40 58 7c 24 	vaddps zmm23,zmm26,ZMMWORD PTR [rsp+0x180]
  a4d2a5:	06 
  a4d2a6:	62 c1 44 40 58 fc    	vaddps zmm23,zmm23,zmm12
  a4d2ac:	62 61 34 40 58 44 24 	vaddps zmm24,zmm25,ZMMWORD PTR [rsp+0x80]
  a4d2b3:	02 
  a4d2b4:	62 91 5c 48 58 e0    	vaddps zmm4,zmm4,zmm24
  a4d2ba:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm4
  a4d2c1:	04 
  a4d2c2:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x140]
  a4d2c9:	05 
  a4d2ca:	62 61 5c 48 58 44 24 	vaddps zmm24,zmm4,ZMMWORD PTR [rsp+0x400]
  a4d2d1:	10 
  a4d2d2:	62 61 3c 40 58 44 24 	vaddps zmm24,zmm24,ZMMWORD PTR [rsp+0x3c0]
  a4d2d9:	0f 
  a4d2da:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x800]
  a4d2e1:	20 
  a4d2e2:	62 61 5c 48 58 4c 24 	vaddps zmm25,zmm4,ZMMWORD PTR [rsp+0x340]
  a4d2e9:	0d 
  a4d2ea:	62 61 34 40 58 4c 24 	vaddps zmm25,zmm25,ZMMWORD PTR [rsp+0x280]
  a4d2f1:	0a 
  a4d2f2:	62 01 3c 40 5c d1    	vsubps zmm26,zmm24,zmm25
  a4d2f8:	62 81 3c 40 58 c1    	vaddps zmm16,zmm24,zmm25
  a4d2fe:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x5c0]
  a4d305:	17 
  a4d306:	62 e1 5c 48 58 64 24 	vaddps zmm20,zmm4,ZMMWORD PTR [rsp+0x40]
  a4d30d:	01 
  a4d30e:	62 61 5c 40 58 64 24 	vaddps zmm28,zmm20,ZMMWORD PTR [rsp+0x640]
  a4d315:	19 
  a4d316:	62 21 2c 48 58 cf    	vaddps zmm25,zmm10,zmm23
  a4d31c:	62 a1 2c 48 5c e7    	vsubps zmm20,zmm10,zmm23
  a4d322:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x4c0]
  a4d329:	13 
  a4d32a:	62 32 5d 48 ac c2    	vfnmadd213ps zmm8,zmm4,zmm18
  a4d330:	62 f1 6c 40 58 e4    	vaddps zmm4,zmm18,zmm4
  a4d336:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm4
  a4d33d:	01 
  a4d33e:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x500]
  a4d345:	14 
  a4d346:	62 52 5d 48 ac ce    	vfnmadd213ps zmm9,zmm4,zmm14
  a4d34c:	62 f1 0c 48 58 e4    	vaddps zmm4,zmm14,zmm4
  a4d352:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm4
  a4d359:	03 
  a4d35a:	62 71 7c 48 28 64 24 	vmovaps zmm12,ZMMWORD PTR [rsp+0x300]
  a4d361:	0c 
  a4d362:	62 f1 7c 48 28 7c 24 	vmovaps zmm7,ZMMWORD PTR [rsp+0x600]
  a4d369:	18 
  a4d36a:	62 f2 1d 48 ac df    	vfnmadd213ps zmm3,zmm12,zmm7
  a4d370:	62 72 7d 48 18 35 5a 	vbroadcastss zmm14,DWORD PTR [rip+0xffffffffff627f5a]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a4d377:	7f 62 ff 
  a4d37a:	62 e1 0c 48 59 54 24 	vmulps zmm18,zmm14,ZMMWORD PTR [rsp+0x440]
  a4d381:	11 
  a4d382:	62 b1 64 48 5c e2    	vsubps zmm4,zmm3,zmm18
  a4d388:	62 f1 7c 48 29 64 24 	vmovaps ZMMWORD PTR [rsp+0x180],zmm4
  a4d38f:	06 
  a4d390:	62 a1 64 48 58 fa    	vaddps zmm23,zmm3,zmm18
  a4d396:	62 f1 7c 48 28 6c 24 	vmovaps zmm5,ZMMWORD PTR [rsp+0x480]
  a4d39d:	12 
  a4d39e:	62 f1 7c 48 28 64 24 	vmovaps zmm4,ZMMWORD PTR [rsp+0x680]
  a4d3a5:	1a 
  a4d3a6:	62 72 55 48 ac fc    	vfnmadd213ps zmm15,zmm5,zmm4
  a4d3ac:	62 f1 0c 48 59 5c 24 	vmulps zmm3,zmm14,ZMMWORD PTR [rsp+0x6c0]
  a4d3b3:	1b 
  a4d3b4:	62 71 04 48 58 d3    	vaddps zmm10,zmm15,zmm3
  a4d3ba:	62 71 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0x200],zmm10
  a4d3c1:	08 
  a4d3c2:	62 f1 04 48 5c db    	vsubps zmm3,zmm15,zmm3
  a4d3c8:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm3
  a4d3cf:	02 
  a4d3d0:	62 91 14 40 5c de    	vsubps zmm3,zmm29,zmm30
  a4d3d6:	62 71 7c 48 28 54 24 	vmovaps zmm10,ZMMWORD PTR [rsp+0x880]
  a4d3dd:	22 
  a4d3de:	62 e1 2c 48 5c 54 24 	vsubps zmm18,zmm10,ZMMWORD PTR [rsp+0x580]
  a4d3e5:	16 
  a4d3e6:	62 61 0c 48 59 44 24 	vmulps zmm24,zmm14,ZMMWORD PTR [rsp+0x1c0]
  a4d3ed:	07 
  a4d3ee:	62 61 0c 48 59 6c 24 	vmulps zmm29,zmm14,ZMMWORD PTR [rsp+0x540]
  a4d3f5:	15 
  a4d3f6:	62 51 74 48 59 d6    	vmulps zmm10,zmm1,zmm14
  a4d3fc:	62 c1 74 40 59 ce    	vmulps zmm17,zmm17,zmm14
  a4d402:	62 41 2c 40 59 f6    	vmulps zmm30,zmm26,zmm14
  a4d408:	62 d1 5c 40 59 ce    	vmulps zmm1,zmm20,zmm14
  a4d40e:	62 c1 64 48 59 e6    	vmulps zmm20,zmm3,zmm14
  a4d414:	62 c1 6c 40 59 d6    	vmulps zmm18,zmm18,zmm14
  a4d41a:	62 32 65 40 ac de    	vfnmadd213ps zmm11,zmm19,zmm22
  a4d420:	62 31 4c 40 58 f3    	vaddps zmm14,zmm22,zmm19
  a4d426:	62 42 55 40 ac fd    	vfnmadd213ps zmm31,zmm21,zmm13
  a4d42c:	62 a1 14 48 58 f5    	vaddps zmm22,zmm13,zmm21
  a4d432:	62 e1 7c 48 28 6c 24 	vmovaps zmm21,ZMMWORD PTR [rsp+0x100]
  a4d439:	04 
  a4d43a:	62 b2 35 40 ac d5    	vfnmadd213ps zmm2,zmm25,zmm21
  a4d440:	62 01 6c 48 5c d6    	vsubps zmm26,zmm2,zmm30
  a4d446:	62 91 6c 48 58 d6    	vaddps zmm2,zmm2,zmm30
  a4d44c:	62 92 7d 40 ac f4    	vfnmadd213ps zmm6,zmm16,zmm28
  a4d452:	62 61 4c 48 58 f1    	vaddps zmm30,zmm6,zmm1
  a4d458:	62 e1 4c 48 5c d9    	vsubps zmm19,zmm6,zmm1
  a4d45e:	62 91 3c 48 58 c8    	vaddps zmm1,zmm8,zmm24
  a4d464:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x140],zmm1
  a4d46b:	05 
  a4d46c:	62 91 3c 48 5c c8    	vsubps zmm1,zmm8,zmm24
  a4d472:	62 01 34 48 5c c5    	vsubps zmm24,zmm9,zmm29
  a4d478:	62 11 34 48 58 ed    	vaddps zmm13,zmm9,zmm29
  a4d47e:	62 51 44 48 58 e4    	vaddps zmm12,zmm7,zmm12
  a4d484:	62 f1 5c 48 58 f5    	vaddps zmm6,zmm4,zmm5
  a4d48a:	62 b1 24 40 5c dc    	vsubps zmm3,zmm27,zmm20
  a4d490:	62 a1 24 40 58 e4    	vaddps zmm20,zmm27,zmm20
  a4d496:	62 31 7c 48 58 ca    	vaddps zmm9,zmm0,zmm18
  a4d49c:	62 b1 7c 48 5c ea    	vsubps zmm5,zmm0,zmm18
  a4d4a2:	62 41 24 48 58 ea    	vaddps zmm29,zmm11,zmm10
  a4d4a8:	62 51 24 48 5c d2    	vsubps zmm10,zmm11,zmm10
  a4d4ae:	62 31 04 40 5c f9    	vsubps zmm15,zmm31,zmm17
  a4d4b4:	62 a1 04 40 58 c9    	vaddps zmm17,zmm31,zmm17
  a4d4ba:	62 91 54 40 58 f9    	vaddps zmm7,zmm21,zmm25
  a4d4c0:	62 b1 1c 40 58 e0    	vaddps zmm4,zmm28,zmm16
  a4d4c6:	62 71 7c 48 28 05 30 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff645330]        # 92800 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1fcb0>
  a4d4cd:	53 64 ff 
  a4d4d0:	62 f1 7c 48 28 c4    	vmovaps zmm0,zmm4
  a4d4d6:	62 f2 3d 48 7f c7    	vpermt2ps zmm0,zmm8,zmm7
  a4d4dc:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x100],zmm0
  a4d4e3:	04 
  a4d4e4:	62 f1 5c 48 14 c7    	vunpcklps zmm0,zmm4,zmm7
  a4d4ea:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x1c0],zmm0
  a4d4f1:	07 
  a4d4f2:	62 e1 7c 28 28 2d 44 	vmovaps ymm21,YMMWORD PTR [rip+0xffffffffff629744]        # 76c40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x40f0>
  a4d4f9:	97 62 ff 
  a4d4fc:	62 f2 55 40 7f e7    	vpermt2ps zmm4,zmm21,zmm7
  a4d502:	62 21 7c 48 28 f9    	vmovaps zmm31,zmm17
  a4d508:	62 42 3d 48 7f fa    	vpermt2ps zmm31,zmm8,zmm10
  a4d50e:	62 d1 74 40 14 c2    	vunpcklps zmm0,zmm17,zmm10
  a4d514:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x540],zmm0
  a4d51b:	15 
  a4d51c:	62 c2 55 40 7f ca    	vpermt2ps zmm17,zmm21,zmm10
  a4d522:	62 e1 7c 48 28 c5    	vmovaps zmm16,zmm5
  a4d528:	62 a2 3d 48 7f c4    	vpermt2ps zmm16,zmm8,zmm20
  a4d52e:	62 b1 54 48 14 c4    	vunpcklps zmm0,zmm5,zmm20
  a4d534:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x500],zmm0
  a4d53b:	14 
  a4d53c:	62 b2 55 40 7f ec    	vpermt2ps zmm5,zmm21,zmm20
  a4d542:	62 61 7c 48 28 e6    	vmovaps zmm28,zmm6
  a4d548:	62 42 3d 48 7f e4    	vpermt2ps zmm28,zmm8,zmm12
  a4d54e:	62 d1 4c 48 14 c4    	vunpcklps zmm0,zmm6,zmm12
  a4d554:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x4c0],zmm0
  a4d55b:	13 
  a4d55c:	62 d2 55 40 7f f4    	vpermt2ps zmm6,zmm21,zmm12
  a4d562:	62 d1 7c 48 28 fd    	vmovaps zmm7,zmm13
  a4d568:	62 f2 3d 48 7f f9    	vpermt2ps zmm7,zmm8,zmm1
  a4d56e:	62 f1 14 48 14 c1    	vunpcklps zmm0,zmm13,zmm1
  a4d574:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x480],zmm0
  a4d57b:	12 
  a4d57c:	62 72 55 40 7f e9    	vpermt2ps zmm13,zmm21,zmm1
  a4d582:	62 31 7c 48 28 d3    	vmovaps zmm10,zmm19
  a4d588:	62 72 3d 48 7f d2    	vpermt2ps zmm10,zmm8,zmm2
  a4d58e:	62 f1 64 40 14 c2    	vunpcklps zmm0,zmm19,zmm2
  a4d594:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x440],zmm0
  a4d59b:	11 
  a4d59c:	62 e2 55 40 7f da    	vpermt2ps zmm19,zmm21,zmm2
  a4d5a2:	62 a1 7c 48 28 e6    	vmovaps zmm20,zmm22
  a4d5a8:	62 c2 3d 48 7f e6    	vpermt2ps zmm20,zmm8,zmm14
  a4d5ae:	62 d1 4c 40 14 c6    	vunpcklps zmm0,zmm22,zmm14
  a4d5b4:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x400],zmm0
  a4d5bb:	10 
  a4d5bc:	62 c2 55 40 7f f6    	vpermt2ps zmm22,zmm21,zmm14
  a4d5c2:	62 51 7c 48 28 e1    	vmovaps zmm12,zmm9
  a4d5c8:	62 72 3d 48 7f e3    	vpermt2ps zmm12,zmm8,zmm3
  a4d5ce:	62 f1 34 48 14 c3    	vunpcklps zmm0,zmm9,zmm3
  a4d5d4:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x3c0],zmm0
  a4d5db:	0f 
  a4d5dc:	62 72 55 40 7f cb    	vpermt2ps zmm9,zmm21,zmm3
  a4d5e2:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x80]
  a4d5e9:	02 
  a4d5ea:	62 71 7c 48 28 d8    	vmovaps zmm11,zmm0
  a4d5f0:	62 32 3d 48 7f df    	vpermt2ps zmm11,zmm8,zmm23
  a4d5f6:	62 b1 7c 48 14 cf    	vunpcklps zmm1,zmm0,zmm23
  a4d5fc:	62 f1 7c 48 29 4c 24 	vmovaps ZMMWORD PTR [rsp+0x380],zmm1
  a4d603:	0e 
  a4d604:	62 b2 55 40 7f c7    	vpermt2ps zmm0,zmm21,zmm23
  a4d60a:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x80],zmm0
  a4d611:	02 
  a4d612:	62 f1 7c 48 28 54 24 	vmovaps zmm2,ZMMWORD PTR [rsp+0xc0]
  a4d619:	03 
  a4d61a:	62 f1 7c 48 28 ca    	vmovaps zmm1,zmm2
  a4d620:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x40]
  a4d627:	01 
  a4d628:	62 f2 3d 48 7f c8    	vpermt2ps zmm1,zmm8,zmm0
  a4d62e:	62 f1 6c 48 14 d8    	vunpcklps zmm3,zmm2,zmm0
  a4d634:	62 f1 7c 48 29 5c 24 	vmovaps ZMMWORD PTR [rsp+0x340],zmm3
  a4d63b:	0d 
  a4d63c:	62 f2 55 40 7f d0    	vpermt2ps zmm2,zmm21,zmm0
  a4d642:	62 f1 7c 48 29 54 24 	vmovaps ZMMWORD PTR [rsp+0xc0],zmm2
  a4d649:	03 
  a4d64a:	62 01 7c 48 28 de    	vmovaps zmm27,zmm30
  a4d650:	62 02 3d 48 7f da    	vpermt2ps zmm27,zmm8,zmm26
  a4d656:	62 91 0c 40 14 c2    	vunpcklps zmm0,zmm30,zmm26
  a4d65c:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x40],zmm0
  a4d663:	01 
  a4d664:	62 02 55 40 7f f2    	vpermt2ps zmm30,zmm21,zmm26
  a4d66a:	62 d1 7c 48 28 d7    	vmovaps zmm2,zmm15
  a4d670:	62 92 3d 48 7f d5    	vpermt2ps zmm2,zmm8,zmm29
  a4d676:	62 91 04 48 14 c5    	vunpcklps zmm0,zmm15,zmm29
  a4d67c:	62 f1 7c 48 29 44 24 	vmovaps ZMMWORD PTR [rsp+0x280],zmm0
  a4d683:	0a 
  a4d684:	62 12 55 40 7f fd    	vpermt2ps zmm15,zmm21,zmm29
  a4d68a:	62 61 7c 48 28 4c 24 	vmovaps zmm25,ZMMWORD PTR [rsp+0x2c0]
  a4d691:	0b 
  a4d692:	62 11 7c 48 28 f1    	vmovaps zmm14,zmm25
  a4d698:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x240]
  a4d69f:	09 
  a4d6a0:	62 72 3d 48 7f f3    	vpermt2ps zmm14,zmm8,zmm3
  a4d6a6:	62 61 34 40 14 d3    	vunpcklps zmm26,zmm25,zmm3
  a4d6ac:	62 62 55 40 7f cb    	vpermt2ps zmm25,zmm21,zmm3
  a4d6b2:	62 f1 7c 48 28 5c 24 	vmovaps zmm3,ZMMWORD PTR [rsp+0x200]
  a4d6b9:	08 
  a4d6ba:	62 61 7c 48 28 eb    	vmovaps zmm29,zmm3
  a4d6c0:	62 e1 7c 48 28 54 24 	vmovaps zmm18,ZMMWORD PTR [rsp+0x180]
  a4d6c7:	06 
  a4d6c8:	62 22 3d 48 7f ea    	vpermt2ps zmm29,zmm8,zmm18
  a4d6ce:	62 a1 64 48 14 fa    	vunpcklps zmm23,zmm3,zmm18
  a4d6d4:	62 b2 55 40 7f da    	vpermt2ps zmm3,zmm21,zmm18
  a4d6da:	62 e1 7c 48 28 d3    	vmovaps zmm18,zmm3
  a4d6e0:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x140]
  a4d6e7:	05 
  a4d6e8:	62 72 3d 40 77 c0    	vpermi2ps zmm8,zmm24,zmm0
  a4d6ee:	62 f1 3c 40 14 d8    	vunpcklps zmm3,zmm24,zmm0
  a4d6f4:	62 62 55 40 7f c0    	vpermt2ps zmm24,zmm21,zmm0
  a4d6fa:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x100]
  a4d701:	04 
  a4d702:	62 f1 7c 48 11 06    	vmovups ZMMWORD PTR [rsi],zmm0
  a4d708:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x1c0]
  a4d70f:	07 
  a4d710:	62 f3 7d 48 19 46 06 	vextractf32x4 XMMWORD PTR [rsi+0x60],zmm0,0x3
  a4d717:	03 
  a4d718:	c5 fc 11 66 40       	vmovups YMMWORD PTR [rsi+0x40],ymm4
  a4d71d:	62 61 7c 48 11 be 70 	vmovups ZMMWORD PTR [rsi+0x70],zmm31
  a4d724:	00 00 00 
  a4d727:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x540]
  a4d72e:	15 
  a4d72f:	62 f3 7d 48 19 46 0d 	vextractf32x4 XMMWORD PTR [rsi+0xd0],zmm0,0x3
  a4d736:	03 
  a4d737:	62 e1 7c 28 11 8e b0 	vmovups YMMWORD PTR [rsi+0xb0],ymm17
  a4d73e:	00 00 00 
  a4d741:	62 e1 7c 48 11 86 e0 	vmovups ZMMWORD PTR [rsi+0xe0],zmm16
  a4d748:	00 00 00 
  a4d74b:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x500]
  a4d752:	14 
  a4d753:	62 f3 7d 48 19 46 14 	vextractf32x4 XMMWORD PTR [rsi+0x140],zmm0,0x3
  a4d75a:	03 
  a4d75b:	c5 fc 11 ae 20 01 00 	vmovups YMMWORD PTR [rsi+0x120],ymm5
  a4d762:	00 
  a4d763:	62 61 7c 48 11 a6 50 	vmovups ZMMWORD PTR [rsi+0x150],zmm28
  a4d76a:	01 00 00 
  a4d76d:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x4c0]
  a4d774:	13 
  a4d775:	62 f3 7d 48 19 46 1b 	vextractf32x4 XMMWORD PTR [rsi+0x1b0],zmm0,0x3
  a4d77c:	03 
  a4d77d:	c5 fc 11 b6 90 01 00 	vmovups YMMWORD PTR [rsi+0x190],ymm6
  a4d784:	00 
  a4d785:	62 f1 7c 48 11 7e 07 	vmovups ZMMWORD PTR [rsi+0x1c0],zmm7
  a4d78c:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x480]
  a4d793:	12 
  a4d794:	62 f3 7d 48 19 46 22 	vextractf32x4 XMMWORD PTR [rsi+0x220],zmm0,0x3
  a4d79b:	03 
  a4d79c:	c5 7c 11 ae 00 02 00 	vmovups YMMWORD PTR [rsi+0x200],ymm13
  a4d7a3:	00 
  a4d7a4:	62 71 7c 48 11 96 30 	vmovups ZMMWORD PTR [rsi+0x230],zmm10
  a4d7ab:	02 00 00 
  a4d7ae:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x440]
  a4d7b5:	11 
  a4d7b6:	62 f3 7d 48 19 46 29 	vextractf32x4 XMMWORD PTR [rsi+0x290],zmm0,0x3
  a4d7bd:	03 
  a4d7be:	62 e1 7c 28 11 9e 70 	vmovups YMMWORD PTR [rsi+0x270],ymm19
  a4d7c5:	02 00 00 
  a4d7c8:	62 e1 7c 48 11 a6 a0 	vmovups ZMMWORD PTR [rsi+0x2a0],zmm20
  a4d7cf:	02 00 00 
  a4d7d2:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x400]
  a4d7d9:	10 
  a4d7da:	62 f3 7d 48 19 46 30 	vextractf32x4 XMMWORD PTR [rsi+0x300],zmm0,0x3
  a4d7e1:	03 
  a4d7e2:	62 e1 7c 28 11 76 17 	vmovups YMMWORD PTR [rsi+0x2e0],ymm22
  a4d7e9:	62 71 7c 48 11 a6 10 	vmovups ZMMWORD PTR [rsi+0x310],zmm12
  a4d7f0:	03 00 00 
  a4d7f3:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x3c0]
  a4d7fa:	0f 
  a4d7fb:	62 f3 7d 48 19 46 37 	vextractf32x4 XMMWORD PTR [rsi+0x370],zmm0,0x3
  a4d802:	03 
  a4d803:	c5 7c 11 8e 50 03 00 	vmovups YMMWORD PTR [rsi+0x350],ymm9
  a4d80a:	00 
  a4d80b:	62 71 7c 48 11 5e 0e 	vmovups ZMMWORD PTR [rsi+0x380],zmm11
  a4d812:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x380]
  a4d819:	0e 
  a4d81a:	62 f3 7d 48 19 46 3e 	vextractf32x4 XMMWORD PTR [rsi+0x3e0],zmm0,0x3
  a4d821:	03 
  a4d822:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x80]
  a4d829:	02 
  a4d82a:	c5 fc 11 86 c0 03 00 	vmovups YMMWORD PTR [rsi+0x3c0],ymm0
  a4d831:	00 
  a4d832:	62 f1 7c 48 11 8e f0 	vmovups ZMMWORD PTR [rsi+0x3f0],zmm1
  a4d839:	03 00 00 
  a4d83c:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x340]
  a4d843:	0d 
  a4d844:	62 f3 7d 48 19 46 45 	vextractf32x4 XMMWORD PTR [rsi+0x450],zmm0,0x3
  a4d84b:	03 
  a4d84c:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0xc0]
  a4d853:	03 
  a4d854:	c5 fc 11 86 30 04 00 	vmovups YMMWORD PTR [rsi+0x430],ymm0
  a4d85b:	00 
  a4d85c:	62 61 7c 48 11 9e 60 	vmovups ZMMWORD PTR [rsi+0x460],zmm27
  a4d863:	04 00 00 
  a4d866:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x40]
  a4d86d:	01 
  a4d86e:	62 f3 7d 48 19 46 4c 	vextractf32x4 XMMWORD PTR [rsi+0x4c0],zmm0,0x3
  a4d875:	03 
  a4d876:	62 61 7c 28 11 76 25 	vmovups YMMWORD PTR [rsi+0x4a0],ymm30
  a4d87d:	62 f1 7c 48 11 96 d0 	vmovups ZMMWORD PTR [rsi+0x4d0],zmm2
  a4d884:	04 00 00 
  a4d887:	62 f1 7c 48 28 44 24 	vmovaps zmm0,ZMMWORD PTR [rsp+0x280]
  a4d88e:	0a 
  a4d88f:	62 f3 7d 48 19 46 53 	vextractf32x4 XMMWORD PTR [rsi+0x530],zmm0,0x3
  a4d896:	03 
  a4d897:	c5 7c 11 be 10 05 00 	vmovups YMMWORD PTR [rsi+0x510],ymm15
  a4d89e:	00 
  a4d89f:	62 71 7c 48 11 76 15 	vmovups ZMMWORD PTR [rsi+0x540],zmm14
  a4d8a6:	62 63 7d 48 19 56 5a 	vextractf32x4 XMMWORD PTR [rsi+0x5a0],zmm26,0x3
  a4d8ad:	03 
  a4d8ae:	62 61 7c 28 11 4e 2c 	vmovups YMMWORD PTR [rsi+0x580],ymm25
  a4d8b5:	62 61 7c 48 11 ae b0 	vmovups ZMMWORD PTR [rsi+0x5b0],zmm29
  a4d8bc:	05 00 00 
  a4d8bf:	62 e3 7d 48 19 7e 61 	vextractf32x4 XMMWORD PTR [rsi+0x610],zmm23,0x3
  a4d8c6:	03 
  a4d8c7:	62 e1 7c 28 11 96 f0 	vmovups YMMWORD PTR [rsi+0x5f0],ymm18
  a4d8ce:	05 00 00 
  a4d8d1:	62 71 7c 48 11 86 20 	vmovups ZMMWORD PTR [rsi+0x620],zmm8
  a4d8d8:	06 00 00 
  a4d8db:	62 f3 7d 48 19 5e 68 	vextractf32x4 XMMWORD PTR [rsi+0x680],zmm3,0x3
  a4d8e2:	03 
  a4d8e3:	62 61 7c 28 11 46 33 	vmovups YMMWORD PTR [rsi+0x660],ymm24
  a4d8ea:	48 89 ec             	mov    rsp,rbp
  a4d8ed:	5d                   	pop    rbp
  a4d8ee:	c5 f8 77             	vzeroupper
  a4d8f1:	c3                   	ret
