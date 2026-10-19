
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a35780 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a35780:	48 81 ec 08 07 00 00 	sub    rsp,0x708
  a35787:	62 f1 7c 48 10 1f    	vmovups zmm3,ZMMWORD PTR [rdi]
  a3578d:	c5 f8 10 47 60       	vmovups xmm0,XMMWORD PTR [rdi+0x60]
  a35792:	c5 fc 10 4f 40       	vmovups ymm1,YMMWORD PTR [rdi+0x40]
  a35797:	c4 e3 79 21 47 64 10 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x64],0x10
  a3579e:	c4 e2 79 18 57 68    	vbroadcastss xmm2,DWORD PTR [rdi+0x68]
  a357a4:	c4 e3 69 0c c0 03    	vblendps xmm0,xmm2,xmm0,0x3
  a357aa:	c4 e3 79 21 47 6c 30 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x6c],0x30
  a357b1:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a357b8:	b0 3f                	mov    al,0x3f
  a357ba:	c5 fb 92 c8          	kmovd  k1,eax
  a357be:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a357c4:	62 61 7c 48 28 05 32 	vmovaps zmm24,ZMMWORD PTR [rip+0xffffffffff65b932]        # 91100 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e5b0>
  a357cb:	b9 65 ff 
  a357ce:	62 e1 7c 48 28 f3    	vmovaps zmm22,zmm3
  a357d4:	62 e2 3d 40 7f f0    	vpermt2ps zmm22,zmm24,zmm0
  a357da:	62 e1 7c 48 28 2d 5c 	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff65b95c]        # 91140 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e5f0>
  a357e1:	b9 65 ff 
  a357e4:	62 f2 55 40 7f d8    	vpermt2ps zmm3,zmm21,zmm0
  a357ea:	62 f1 7c 48 10 af 70 	vmovups zmm5,ZMMWORD PTR [rdi+0x70]
  a357f1:	00 00 00 
  a357f4:	c5 f8 10 87 d0 00 00 	vmovups xmm0,XMMWORD PTR [rdi+0xd0]
  a357fb:	00 
  a357fc:	c4 e3 79 21 87 d4 00 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0xd4],0x10
  a35803:	00 00 10 
  a35806:	c5 fc 10 8f b0 00 00 	vmovups ymm1,YMMWORD PTR [rdi+0xb0]
  a3580d:	00 
  a3580e:	c4 e2 79 18 a7 d8 00 	vbroadcastss xmm4,DWORD PTR [rdi+0xd8]
  a35815:	00 00 
  a35817:	c4 e3 59 0c c0 03    	vblendps xmm0,xmm4,xmm0,0x3
  a3581d:	c4 e3 79 21 87 dc 00 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0xdc],0x30
  a35824:	00 00 30 
  a35827:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a3582e:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a35834:	62 f1 7c 48 28 cd    	vmovaps zmm1,zmm5
  a3583a:	62 f2 3d 40 7f c8    	vpermt2ps zmm1,zmm24,zmm0
  a35840:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a35847:	fe 
  a35848:	62 f2 55 40 7f e8    	vpermt2ps zmm5,zmm21,zmm0
  a3584e:	62 f1 7c 48 11 2c 24 	vmovups ZMMWORD PTR [rsp],zmm5
  a35855:	c5 f8 10 87 40 01 00 	vmovups xmm0,XMMWORD PTR [rdi+0x140]
  a3585c:	00 
  a3585d:	c4 e3 79 21 87 44 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x144],0x10
  a35864:	00 00 10 
  a35867:	c4 e2 79 18 8f 48 01 	vbroadcastss xmm1,DWORD PTR [rdi+0x148]
  a3586e:	00 00 
  a35870:	62 61 7c 48 10 bf e0 	vmovups zmm31,ZMMWORD PTR [rdi+0xe0]
  a35877:	00 00 00 
  a3587a:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a35880:	c4 e3 79 21 87 4c 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x14c],0x30
  a35887:	00 00 30 
  a3588a:	c5 fc 10 8f 20 01 00 	vmovups ymm1,YMMWORD PTR [rdi+0x120]
  a35891:	00 
  a35892:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a35899:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a3589f:	62 91 7c 48 28 cf    	vmovaps zmm1,zmm31
  a358a5:	62 f2 3d 40 7f c8    	vpermt2ps zmm1,zmm24,zmm0
  a358ab:	62 f1 7c 48 28 f1    	vmovaps zmm6,zmm1
  a358b1:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm1
  a358b8:	0b 
  a358b9:	62 62 55 40 7f f8    	vpermt2ps zmm31,zmm21,zmm0
  a358bf:	62 e1 7c 48 10 bf 50 	vmovups zmm23,ZMMWORD PTR [rdi+0x150]
  a358c6:	01 00 00 
  a358c9:	c5 f8 10 87 b0 01 00 	vmovups xmm0,XMMWORD PTR [rdi+0x1b0]
  a358d0:	00 
  a358d1:	c4 e3 79 21 87 b4 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x1b4],0x10
  a358d8:	00 00 10 
  a358db:	c4 e2 79 18 8f b8 01 	vbroadcastss xmm1,DWORD PTR [rdi+0x1b8]
  a358e2:	00 00 
  a358e4:	c5 fc 10 a7 90 01 00 	vmovups ymm4,YMMWORD PTR [rdi+0x190]
  a358eb:	00 
  a358ec:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a358f2:	c4 e3 79 21 87 bc 01 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x1bc],0x30
  a358f9:	00 00 30 
  a358fc:	62 f3 5d 48 18 c0 02 	vinsertf32x4 zmm0,zmm4,xmm0,0x2
  a35903:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a35909:	62 b1 7c 48 28 cf    	vmovaps zmm1,zmm23
  a3590f:	62 f2 3d 40 7f c8    	vpermt2ps zmm1,zmm24,zmm0
  a35915:	62 71 7c 48 28 d1    	vmovaps zmm10,zmm1
  a3591b:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x600],zmm1
  a35922:	18 
  a35923:	62 e2 55 40 7f f8    	vpermt2ps zmm23,zmm21,zmm0
  a35929:	62 f1 7c 48 10 7f 07 	vmovups zmm7,ZMMWORD PTR [rdi+0x1c0]
  a35930:	c5 f8 10 87 20 02 00 	vmovups xmm0,XMMWORD PTR [rdi+0x220]
  a35937:	00 
  a35938:	c5 fc 10 8f 00 02 00 	vmovups ymm1,YMMWORD PTR [rdi+0x200]
  a3593f:	00 
  a35940:	c4 e3 79 21 87 24 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x224],0x10
  a35947:	00 00 10 
  a3594a:	c4 e2 79 18 a7 28 02 	vbroadcastss xmm4,DWORD PTR [rdi+0x228]
  a35951:	00 00 
  a35953:	c4 e3 59 0c c0 03    	vblendps xmm0,xmm4,xmm0,0x3
  a35959:	c4 e3 79 21 87 2c 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x22c],0x30
  a35960:	00 00 30 
  a35963:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a3596a:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a35970:	62 f1 7c 48 28 cf    	vmovaps zmm1,zmm7
  a35976:	62 f2 3d 40 7f c8    	vpermt2ps zmm1,zmm24,zmm0
  a3597c:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm1
  a35983:	03 
  a35984:	62 f2 55 40 7f f8    	vpermt2ps zmm7,zmm21,zmm0
  a3598a:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm7
  a35991:	05 
  a35992:	62 e1 7c 48 10 a7 30 	vmovups zmm20,ZMMWORD PTR [rdi+0x230]
  a35999:	02 00 00 
  a3599c:	c5 f8 10 87 90 02 00 	vmovups xmm0,XMMWORD PTR [rdi+0x290]
  a359a3:	00 
  a359a4:	c4 e3 79 21 87 94 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x294],0x10
  a359ab:	00 00 10 
  a359ae:	c5 fc 10 8f 70 02 00 	vmovups ymm1,YMMWORD PTR [rdi+0x270]
  a359b5:	00 
  a359b6:	c4 e2 79 18 a7 98 02 	vbroadcastss xmm4,DWORD PTR [rdi+0x298]
  a359bd:	00 00 
  a359bf:	c4 e3 59 0c c0 03    	vblendps xmm0,xmm4,xmm0,0x3
  a359c5:	c4 e3 79 21 87 9c 02 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x29c],0x30
  a359cc:	00 00 30 
  a359cf:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a359d6:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a359dc:	62 b1 7c 48 28 fc    	vmovaps zmm7,zmm20
  a359e2:	62 f2 3d 40 7f f8    	vpermt2ps zmm7,zmm24,zmm0
  a359e8:	62 e2 55 40 7f e0    	vpermt2ps zmm20,zmm21,zmm0
  a359ee:	c5 f8 10 87 00 03 00 	vmovups xmm0,XMMWORD PTR [rdi+0x300]
  a359f5:	00 
  a359f6:	c4 e3 79 21 87 04 03 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x304],0x10
  a359fd:	00 00 10 
  a35a00:	c4 e2 79 18 8f 08 03 	vbroadcastss xmm1,DWORD PTR [rdi+0x308]
  a35a07:	00 00 
  a35a09:	62 f1 7c 48 10 a7 a0 	vmovups zmm4,ZMMWORD PTR [rdi+0x2a0]
  a35a10:	02 00 00 
  a35a13:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a35a19:	c4 e3 79 21 87 0c 03 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x30c],0x30
  a35a20:	00 00 30 
  a35a23:	c5 fc 10 8f e0 02 00 	vmovups ymm1,YMMWORD PTR [rdi+0x2e0]
  a35a2a:	00 
  a35a2b:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a35a32:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a35a38:	62 f1 7c 48 28 cc    	vmovaps zmm1,zmm4
  a35a3e:	62 f2 3d 40 7f c8    	vpermt2ps zmm1,zmm24,zmm0
  a35a44:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm1
  a35a4b:	01 
  a35a4c:	62 f2 55 40 7f e0    	vpermt2ps zmm4,zmm21,zmm0
  a35a52:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm4
  a35a59:	ff 
  a35a5a:	62 61 7c 48 10 9f 10 	vmovups zmm27,ZMMWORD PTR [rdi+0x310]
  a35a61:	03 00 00 
  a35a64:	c5 f8 10 87 70 03 00 	vmovups xmm0,XMMWORD PTR [rdi+0x370]
  a35a6b:	00 
  a35a6c:	c4 e3 79 21 87 74 03 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x374],0x10
  a35a73:	00 00 10 
  a35a76:	c4 e2 79 18 8f 78 03 	vbroadcastss xmm1,DWORD PTR [rdi+0x378]
  a35a7d:	00 00 
  a35a7f:	c5 fc 10 a7 50 03 00 	vmovups ymm4,YMMWORD PTR [rdi+0x350]
  a35a86:	00 
  a35a87:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a35a8d:	c4 e3 79 21 87 7c 03 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x37c],0x30
  a35a94:	00 00 30 
  a35a97:	62 f3 5d 48 18 c0 02 	vinsertf32x4 zmm0,zmm4,xmm0,0x2
  a35a9e:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a35aa4:	62 91 7c 48 28 cb    	vmovaps zmm1,zmm27
  a35aaa:	62 f2 3d 40 7f c8    	vpermt2ps zmm1,zmm24,zmm0
  a35ab0:	62 71 7c 48 28 e1    	vmovaps zmm12,zmm1
  a35ab6:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm1
  a35abd:	06 
  a35abe:	62 62 55 40 7f d8    	vpermt2ps zmm27,zmm21,zmm0
  a35ac4:	62 71 7c 48 10 4f 0e 	vmovups zmm9,ZMMWORD PTR [rdi+0x380]
  a35acb:	c5 f8 10 87 e0 03 00 	vmovups xmm0,XMMWORD PTR [rdi+0x3e0]
  a35ad2:	00 
  a35ad3:	c5 fc 10 8f c0 03 00 	vmovups ymm1,YMMWORD PTR [rdi+0x3c0]
  a35ada:	00 
  a35adb:	c4 e3 79 21 87 e4 03 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x3e4],0x10
  a35ae2:	00 00 10 
  a35ae5:	c4 e2 79 18 a7 e8 03 	vbroadcastss xmm4,DWORD PTR [rdi+0x3e8]
  a35aec:	00 00 
  a35aee:	c4 e3 59 0c c0 03    	vblendps xmm0,xmm4,xmm0,0x3
  a35af4:	c4 e3 79 21 87 ec 03 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x3ec],0x30
  a35afb:	00 00 30 
  a35afe:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a35b05:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a35b0b:	62 d1 7c 48 28 c9    	vmovaps zmm1,zmm9
  a35b11:	62 f2 3d 40 7f c8    	vpermt2ps zmm1,zmm24,zmm0
  a35b17:	62 71 7c 48 28 f9    	vmovaps zmm15,zmm1
  a35b1d:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm1
  a35b24:	0c 
  a35b25:	62 72 55 40 7f c8    	vpermt2ps zmm9,zmm21,zmm0
  a35b2b:	62 51 7c 48 28 f1    	vmovaps zmm14,zmm9
  a35b31:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm9
  a35b38:	15 
  a35b39:	62 71 7c 48 10 8f f0 	vmovups zmm9,ZMMWORD PTR [rdi+0x3f0]
  a35b40:	03 00 00 
  a35b43:	c5 f8 10 87 50 04 00 	vmovups xmm0,XMMWORD PTR [rdi+0x450]
  a35b4a:	00 
  a35b4b:	c4 e3 79 21 87 54 04 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x454],0x10
  a35b52:	00 00 10 
  a35b55:	c5 fc 10 8f 30 04 00 	vmovups ymm1,YMMWORD PTR [rdi+0x430]
  a35b5c:	00 
  a35b5d:	c4 e2 79 18 a7 58 04 	vbroadcastss xmm4,DWORD PTR [rdi+0x458]
  a35b64:	00 00 
  a35b66:	c4 e3 59 0c c0 03    	vblendps xmm0,xmm4,xmm0,0x3
  a35b6c:	c4 e3 79 21 87 5c 04 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x45c],0x30
  a35b73:	00 00 30 
  a35b76:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a35b7d:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a35b83:	62 d1 7c 48 28 c9    	vmovaps zmm1,zmm9
  a35b89:	62 f2 3d 40 7f c8    	vpermt2ps zmm1,zmm24,zmm0
  a35b8f:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm1
  a35b96:	0a 
  a35b97:	62 72 55 40 7f c8    	vpermt2ps zmm9,zmm21,zmm0
  a35b9d:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm9
  a35ba4:	02 
  a35ba5:	c5 f8 10 87 c0 04 00 	vmovups xmm0,XMMWORD PTR [rdi+0x4c0]
  a35bac:	00 
  a35bad:	c4 e3 79 21 87 c4 04 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x4c4],0x10
  a35bb4:	00 00 10 
  a35bb7:	c4 e2 79 18 8f c8 04 	vbroadcastss xmm1,DWORD PTR [rdi+0x4c8]
  a35bbe:	00 00 
  a35bc0:	62 71 7c 48 10 af 60 	vmovups zmm13,ZMMWORD PTR [rdi+0x460]
  a35bc7:	04 00 00 
  a35bca:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a35bd0:	c4 e3 79 21 87 cc 04 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x4cc],0x30
  a35bd7:	00 00 30 
  a35bda:	c5 fc 10 8f a0 04 00 	vmovups ymm1,YMMWORD PTR [rdi+0x4a0]
  a35be1:	00 
  a35be2:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a35be9:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a35bef:	62 41 7c 48 28 cd    	vmovaps zmm25,zmm13
  a35bf5:	62 62 3d 40 7f c8    	vpermt2ps zmm25,zmm24,zmm0
  a35bfb:	62 72 55 40 7f e8    	vpermt2ps zmm13,zmm21,zmm0
  a35c01:	62 f1 7c 48 10 af d0 	vmovups zmm5,ZMMWORD PTR [rdi+0x4d0]
  a35c08:	04 00 00 
  a35c0b:	c5 f8 10 87 30 05 00 	vmovups xmm0,XMMWORD PTR [rdi+0x530]
  a35c12:	00 
  a35c13:	c4 e3 79 21 87 34 05 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x534],0x10
  a35c1a:	00 00 10 
  a35c1d:	c4 e2 79 18 8f 38 05 	vbroadcastss xmm1,DWORD PTR [rdi+0x538]
  a35c24:	00 00 
  a35c26:	c5 fc 10 a7 10 05 00 	vmovups ymm4,YMMWORD PTR [rdi+0x510]
  a35c2d:	00 
  a35c2e:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a35c34:	c4 e3 79 21 87 3c 05 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x53c],0x30
  a35c3b:	00 00 30 
  a35c3e:	62 f3 5d 48 18 c0 02 	vinsertf32x4 zmm0,zmm4,xmm0,0x2
  a35c45:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a35c4b:	62 f1 7c 48 28 cd    	vmovaps zmm1,zmm5
  a35c51:	62 f2 3d 40 7f c8    	vpermt2ps zmm1,zmm24,zmm0
  a35c57:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm1
  a35c5e:	10 
  a35c5f:	62 f2 55 40 7f e8    	vpermt2ps zmm5,zmm21,zmm0
  a35c65:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm5
  a35c6c:	09 
  a35c6d:	62 e1 7c 48 10 57 15 	vmovups zmm18,ZMMWORD PTR [rdi+0x540]
  a35c74:	c5 f8 10 87 a0 05 00 	vmovups xmm0,XMMWORD PTR [rdi+0x5a0]
  a35c7b:	00 
  a35c7c:	c5 fc 10 8f 80 05 00 	vmovups ymm1,YMMWORD PTR [rdi+0x580]
  a35c83:	00 
  a35c84:	c4 e3 79 21 87 a4 05 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x5a4],0x10
  a35c8b:	00 00 10 
  a35c8e:	c4 e2 79 18 a7 a8 05 	vbroadcastss xmm4,DWORD PTR [rdi+0x5a8]
  a35c95:	00 00 
  a35c97:	c4 e3 59 0c c0 03    	vblendps xmm0,xmm4,xmm0,0x3
  a35c9d:	c4 e3 79 21 87 ac 05 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x5ac],0x30
  a35ca4:	00 00 30 
  a35ca7:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a35cae:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a35cb4:	62 b1 7c 48 28 ca    	vmovaps zmm1,zmm18
  a35cba:	62 f2 3d 40 7f c8    	vpermt2ps zmm1,zmm24,zmm0
  a35cc0:	62 f1 7c 48 28 e9    	vmovaps zmm5,zmm1
  a35cc6:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x640],zmm1
  a35ccd:	19 
  a35cce:	62 e2 55 40 7f d0    	vpermt2ps zmm18,zmm21,zmm0
  a35cd4:	62 e1 7c 48 10 9f b0 	vmovups zmm19,ZMMWORD PTR [rdi+0x5b0]
  a35cdb:	05 00 00 
  a35cde:	c5 f8 10 87 10 06 00 	vmovups xmm0,XMMWORD PTR [rdi+0x610]
  a35ce5:	00 
  a35ce6:	c4 e3 79 21 87 14 06 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x614],0x10
  a35ced:	00 00 10 
  a35cf0:	c5 fc 10 8f f0 05 00 	vmovups ymm1,YMMWORD PTR [rdi+0x5f0]
  a35cf7:	00 
  a35cf8:	c4 e2 79 18 a7 18 06 	vbroadcastss xmm4,DWORD PTR [rdi+0x618]
  a35cff:	00 00 
  a35d01:	c4 e3 59 0c c0 03    	vblendps xmm0,xmm4,xmm0,0x3
  a35d07:	c4 e3 79 21 87 1c 06 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x61c],0x30
  a35d0e:	00 00 30 
  a35d11:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a35d18:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a35d1e:	62 b1 7c 48 28 cb    	vmovaps zmm1,zmm19
  a35d24:	62 f2 3d 40 7f c8    	vpermt2ps zmm1,zmm24,zmm0
  a35d2a:	62 f1 7c 48 28 e1    	vmovaps zmm4,zmm1
  a35d30:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm1
  a35d37:	07 
  a35d38:	62 e2 55 40 7f d8    	vpermt2ps zmm19,zmm21,zmm0
  a35d3e:	62 e1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x6c0],zmm19
  a35d45:	1b 
  a35d46:	c5 f8 10 87 80 06 00 	vmovups xmm0,XMMWORD PTR [rdi+0x680]
  a35d4d:	00 
  a35d4e:	c4 e3 79 21 87 84 06 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x684],0x10
  a35d55:	00 00 10 
  a35d58:	c4 e2 79 18 8f 88 06 	vbroadcastss xmm1,DWORD PTR [rdi+0x688]
  a35d5f:	00 00 
  a35d61:	c4 e3 71 0c c0 03    	vblendps xmm0,xmm1,xmm0,0x3
  a35d67:	c5 fc 10 8f 60 06 00 	vmovups ymm1,YMMWORD PTR [rdi+0x660]
  a35d6e:	00 
  a35d6f:	c4 e3 79 21 87 8c 06 	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x68c],0x30
  a35d76:	00 00 30 
  a35d79:	62 f3 75 48 18 c0 02 	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a35d80:	62 71 7c 48 10 87 20 	vmovups zmm8,ZMMWORD PTR [rdi+0x620]
  a35d87:	06 00 00 
  a35d8a:	62 f2 fd c9 88 c0    	vexpandpd zmm0{k1}{z},zmm0
  a35d90:	62 62 3d 48 77 c0    	vpermi2ps zmm24,zmm8,zmm0
  a35d96:	62 72 55 40 7f c0    	vpermt2ps zmm8,zmm21,zmm0
  a35d9c:	62 f1 04 48 58 ce    	vaddps zmm1,zmm15,zmm6
  a35da2:	62 62 7d 48 18 2d 3c 	vbroadcastss zmm29,DWORD PTR [rip+0xffffffffff63f93c]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a35da9:	f9 63 ff 
  a35dac:	62 91 7c 48 28 c5    	vmovaps zmm0,zmm29
  a35db2:	62 f2 75 48 a8 c7    	vfmadd213ps zmm0,zmm1,zmm7
  a35db8:	62 71 7c 48 28 f8    	vmovaps zmm15,zmm0
  a35dbe:	62 62 7d 48 18 15 7c 	vbroadcastss zmm26,DWORD PTR [rip+0xffffffffff63f87c]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a35dc5:	f8 63 ff 
  a35dc8:	62 f1 44 48 58 c1    	vaddps zmm0,zmm7,zmm1
  a35dce:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm0
  a35dd5:	0f 
  a35dd6:	62 f2 2d 40 bc f9    	vfnmadd231ps zmm7,zmm26,zmm1
  a35ddc:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm7
  a35de3:	04 
  a35de4:	62 d1 5c 48 58 cc    	vaddps zmm1,zmm4,zmm12
  a35dea:	62 91 7c 48 28 c5    	vmovaps zmm0,zmm29
  a35df0:	62 92 75 48 a8 c1    	vfmadd213ps zmm0,zmm1,zmm25
  a35df6:	62 f1 7c 48 28 f0    	vmovaps zmm6,zmm0
  a35dfc:	62 f1 34 40 58 c1    	vaddps zmm0,zmm25,zmm1
  a35e02:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm0
  a35e09:	0e 
  a35e0a:	62 62 2d 40 bc c9    	vfnmadd231ps zmm25,zmm26,zmm1
  a35e10:	62 71 2c 48 58 cd    	vaddps zmm9,zmm10,zmm5
  a35e16:	62 91 7c 48 28 c5    	vmovaps zmm0,zmm29
  a35e1c:	62 b2 35 48 a8 c6    	vfmadd213ps zmm0,zmm9,zmm22
  a35e22:	62 f1 7c 48 28 f8    	vmovaps zmm7,zmm0
  a35e28:	62 d1 4c 40 58 c1    	vaddps zmm0,zmm22,zmm9
  a35e2e:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm0
  a35e35:	0d 
  a35e36:	62 c2 2d 40 bc f1    	vfnmadd231ps zmm22,zmm26,zmm9
  a35e3c:	62 11 0c 48 58 cf    	vaddps zmm9,zmm14,zmm31
  a35e42:	62 91 7c 48 28 ed    	vmovaps zmm5,zmm29
  a35e48:	62 b2 35 48 a8 ec    	vfmadd213ps zmm5,zmm9,zmm20
  a35e4e:	62 d1 5c 40 58 c1    	vaddps zmm0,zmm20,zmm9
  a35e54:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm0
  a35e5b:	12 
  a35e5c:	62 c2 2d 40 bc e1    	vfnmadd231ps zmm20,zmm26,zmm9
  a35e62:	62 81 64 40 58 eb    	vaddps zmm21,zmm19,zmm27
  a35e68:	62 01 7c 48 28 f5    	vmovaps zmm30,zmm29
  a35e6e:	62 c1 7c 48 28 dd    	vmovaps zmm19,zmm13
  a35e74:	62 42 55 40 a8 f5    	vfmadd213ps zmm30,zmm21,zmm13
  a35e7a:	62 b1 14 48 58 c5    	vaddps zmm0,zmm13,zmm21
  a35e80:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x680],zmm0
  a35e87:	1a 
  a35e88:	62 a2 2d 40 bc dd    	vfnmadd231ps zmm19,zmm26,zmm21
  a35e8e:	62 b1 44 40 58 c2    	vaddps zmm0,zmm23,zmm18
  a35e94:	62 81 7c 48 28 ed    	vmovaps zmm21,zmm29
  a35e9a:	62 71 7c 48 28 eb    	vmovaps zmm13,zmm3
  a35ea0:	62 e2 7d 48 a8 eb    	vfmadd213ps zmm21,zmm0,zmm3
  a35ea6:	62 61 64 48 58 e0    	vaddps zmm28,zmm3,zmm0
  a35eac:	62 12 7d 48 bc ea    	vfnmadd231ps zmm13,zmm0,zmm26
  a35eb2:	62 71 7c 48 10 64 24 	vmovups zmm12,ZMMWORD PTR [rsp+0x400]
  a35eb9:	10 
  a35eba:	62 91 1c 48 58 e0    	vaddps zmm4,zmm12,zmm24
  a35ec0:	62 12 5d 48 bc fa    	vfnmadd231ps zmm15,zmm4,zmm26
  a35ec6:	62 71 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm15
  a35ecd:	14 
  a35ece:	62 71 7c 48 10 7c 24 	vmovups zmm15,ZMMWORD PTR [rsp-0x80]
  a35ed5:	fe 
  a35ed6:	62 71 7c 48 10 74 24 	vmovups zmm14,ZMMWORD PTR [rsp+0xc0]
  a35edd:	03 
  a35ede:	62 d1 04 48 58 ce    	vaddps zmm1,zmm15,zmm14
  a35ee4:	62 92 75 48 bc f2    	vfnmadd231ps zmm6,zmm1,zmm26
  a35eea:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm6
  a35ef1:	13 
  a35ef2:	62 e1 7c 48 10 4c 24 	vmovups zmm17,ZMMWORD PTR [rsp+0x40]
  a35ef9:	01 
  a35efa:	62 e1 7c 48 10 44 24 	vmovups zmm16,ZMMWORD PTR [rsp+0x280]
  a35f01:	0a 
  a35f02:	62 b1 74 40 58 d0    	vaddps zmm2,zmm17,zmm16
  a35f08:	62 92 6d 48 bc fa    	vfnmadd231ps zmm7,zmm2,zmm26
  a35f0e:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm7
  a35f15:	08 
  a35f16:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x240]
  a35f1d:	09 
  a35f1e:	62 d1 2c 48 58 d8    	vaddps zmm3,zmm10,zmm8
  a35f24:	62 92 65 48 bc ea    	vfnmadd231ps zmm5,zmm3,zmm26
  a35f2a:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm5
  a35f31:	11 
  a35f32:	62 71 7c 48 10 0c 24 	vmovups zmm9,ZMMWORD PTR [rsp]
  a35f39:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x140]
  a35f40:	05 
  a35f41:	62 f1 34 48 58 ee    	vaddps zmm5,zmm9,zmm6
  a35f47:	62 02 55 48 bc f2    	vfnmadd231ps zmm30,zmm5,zmm26
  a35f4d:	62 71 7c 48 10 5c 24 	vmovups zmm11,ZMMWORD PTR [rsp-0x40]
  a35f54:	ff 
  a35f55:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0x80]
  a35f5c:	02 
  a35f5d:	62 f1 24 48 58 c7    	vaddps zmm0,zmm11,zmm7
  a35f63:	62 82 7d 48 bc ea    	vfnmadd231ps zmm21,zmm0,zmm26
  a35f69:	62 61 5c 48 58 54 24 	vaddps zmm26,zmm4,ZMMWORD PTR [rsp+0x3c0]
  a35f70:	0f 
  a35f71:	62 61 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm26
  a35f78:	17 
  a35f79:	62 61 7c 48 10 54 24 	vmovups zmm26,ZMMWORD PTR [rsp+0x100]
  a35f80:	04 
  a35f81:	62 62 15 40 b8 d4    	vfmadd231ps zmm26,zmm29,zmm4
  a35f87:	62 f1 74 48 58 64 24 	vaddps zmm4,zmm1,ZMMWORD PTR [rsp+0x380]
  a35f8e:	0e 
  a35f8f:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm4
  a35f96:	16 
  a35f97:	62 62 15 40 b8 c9    	vfmadd231ps zmm25,zmm29,zmm1
  a35f9d:	62 f1 6c 48 58 4c 24 	vaddps zmm1,zmm2,ZMMWORD PTR [rsp+0x340]
  a35fa4:	0d 
  a35fa5:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm1
  a35fac:	0d 
  a35fad:	62 e2 15 40 b8 f2    	vfmadd231ps zmm22,zmm29,zmm2
  a35fb3:	62 f1 64 48 58 4c 24 	vaddps zmm1,zmm3,ZMMWORD PTR [rsp+0x480]
  a35fba:	12 
  a35fbb:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm1
  a35fc2:	0f 
  a35fc3:	62 e2 15 40 b8 e3    	vfmadd231ps zmm20,zmm29,zmm3
  a35fc9:	62 f1 1c 40 58 c8    	vaddps zmm1,zmm28,zmm0
  a35fcf:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm1
  a35fd6:	04 
  a35fd7:	62 12 7d 48 b8 ed    	vfmadd231ps zmm13,zmm0,zmm29
  a35fdd:	62 e2 15 40 b8 dd    	vfmadd231ps zmm19,zmm29,zmm5
  a35fe3:	62 f1 54 48 58 44 24 	vaddps zmm0,zmm5,ZMMWORD PTR [rsp+0x680]
  a35fea:	1a 
  a35feb:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm0
  a35ff2:	0e 
  a35ff3:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x540]
  a35ffa:	15 
  a35ffb:	62 91 7c 48 5c c7    	vsubps zmm0,zmm0,zmm31
  a36001:	62 d1 2c 48 5c d0    	vsubps zmm2,zmm10,zmm8
  a36007:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x6c0]
  a3600e:	1b 
  a3600f:	62 91 74 48 5c db    	vsubps zmm3,zmm1,zmm27
  a36015:	62 f1 34 48 5c e6    	vsubps zmm4,zmm9,zmm6
  a3601b:	62 b1 44 40 5c ea    	vsubps zmm5,zmm23,zmm18
  a36021:	62 f1 24 48 5c ff    	vsubps zmm7,zmm11,zmm7
  a36027:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x300]
  a3602e:	0c 
  a3602f:	62 71 74 48 5c 44 24 	vsubps zmm8,zmm1,ZMMWORD PTR [rsp+0x2c0]
  a36036:	0b 
  a36037:	62 91 1c 48 5c f0    	vsubps zmm6,zmm12,zmm24
  a3603d:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x1c0]
  a36044:	07 
  a36045:	62 71 74 48 5c 64 24 	vsubps zmm12,zmm1,ZMMWORD PTR [rsp+0x180]
  a3604c:	06 
  a3604d:	62 51 04 48 5c f6    	vsubps zmm14,zmm15,zmm14
  a36053:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x600]
  a3605a:	18 
  a3605b:	62 e1 74 48 5c 54 24 	vsubps zmm18,zmm1,ZMMWORD PTR [rsp+0x640]
  a36062:	19 
  a36063:	62 e2 7d 48 18 3d eb 	vbroadcastss zmm23,DWORD PTR [rip+0xffffffffff63f6eb]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a3606a:	f6 63 ff 
  a3606d:	62 21 74 40 5c d8    	vsubps zmm27,zmm17,zmm16
  a36073:	62 31 6c 48 59 ff    	vmulps zmm15,zmm2,zmm23
  a36079:	62 62 7d 48 18 3d 1d 	vbroadcastss zmm31,DWORD PTR [rip+0xffffffffff63f31d]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a36080:	f3 63 ff 
  a36083:	62 12 7d 48 b8 ff    	vfmadd231ps zmm15,zmm0,zmm31
  a36089:	62 b1 7c 48 59 c7    	vmulps zmm0,zmm0,zmm23
  a3608f:	62 f2 05 40 bc c2    	vfnmadd231ps zmm0,zmm31,zmm2
  a36095:	62 31 5c 48 59 df    	vmulps zmm11,zmm4,zmm23
  a3609b:	62 12 65 48 b8 df    	vfmadd231ps zmm11,zmm3,zmm31
  a360a1:	62 b1 64 48 59 d7    	vmulps zmm2,zmm3,zmm23
  a360a7:	62 f2 05 40 bc d4    	vfnmadd231ps zmm2,zmm31,zmm4
  a360ad:	62 21 44 48 59 c7    	vmulps zmm24,zmm7,zmm23
  a360b3:	62 02 55 48 b8 c7    	vfmadd231ps zmm24,zmm5,zmm31
  a360b9:	62 b1 54 48 59 df    	vmulps zmm3,zmm5,zmm23
  a360bf:	62 f2 05 40 bc df    	vfnmadd231ps zmm3,zmm31,zmm7
  a360c5:	62 21 4c 48 59 e7    	vmulps zmm28,zmm6,zmm23
  a360cb:	62 02 3d 48 b8 e7    	vfmadd231ps zmm28,zmm8,zmm31
  a360d1:	62 b1 3c 48 59 e7    	vmulps zmm4,zmm8,zmm23
  a360d7:	62 f2 05 40 bc e6    	vfnmadd231ps zmm4,zmm31,zmm6
  a360dd:	62 21 0c 48 59 ef    	vmulps zmm29,zmm14,zmm23
  a360e3:	62 02 1d 48 b8 ef    	vfmadd231ps zmm29,zmm12,zmm31
  a360e9:	62 b1 1c 48 59 f7    	vmulps zmm6,zmm12,zmm23
  a360ef:	62 d2 05 40 bc f6    	vfnmadd231ps zmm6,zmm31,zmm14
  a360f5:	62 31 24 40 59 f7    	vmulps zmm14,zmm27,zmm23
  a360fb:	62 12 6d 40 b8 f7    	vfmadd231ps zmm14,zmm18,zmm31
  a36101:	62 b1 6c 40 59 ff    	vmulps zmm7,zmm18,zmm23
  a36107:	62 92 25 40 bc ff    	vfnmadd231ps zmm7,zmm27,zmm31
  a3610d:	62 e1 7c 48 10 7c 24 	vmovups zmm23,ZMMWORD PTR [rsp+0x440]
  a36114:	11 
  a36115:	62 91 44 40 5c ec    	vsubps zmm5,zmm23,zmm28
  a3611b:	62 11 0c 40 5c c5    	vsubps zmm8,zmm30,zmm29
  a36121:	62 d1 54 48 5c c8    	vsubps zmm1,zmm5,zmm8
  a36127:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a3612e:	ff 
  a3612f:	62 d1 54 48 58 c8    	vaddps zmm1,zmm5,zmm8
  a36135:	62 f1 7c 48 11 0c 24 	vmovups ZMMWORD PTR [rsp],zmm1
  a3613c:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x500]
  a36143:	14 
  a36144:	62 d1 2c 48 58 ef    	vaddps zmm5,zmm10,zmm15
  a3614a:	62 e1 7c 48 10 4c 24 	vmovups zmm17,ZMMWORD PTR [rsp+0x4c0]
  a36151:	13 
  a36152:	62 51 74 40 58 c3    	vaddps zmm8,zmm17,zmm11
  a36158:	62 d1 54 48 58 c8    	vaddps zmm1,zmm5,zmm8
  a3615e:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm1
  a36165:	03 
  a36166:	62 d1 54 48 5c c8    	vsubps zmm1,zmm5,zmm8
  a3616c:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm1
  a36173:	0c 
  a36174:	62 f1 5c 40 5c ec    	vsubps zmm5,zmm20,zmm4
  a3617a:	62 71 64 40 5c c6    	vsubps zmm8,zmm19,zmm6
  a36180:	62 d1 54 48 5c c8    	vsubps zmm1,zmm5,zmm8
  a36186:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm1
  a3618d:	02 
  a3618e:	62 d1 54 48 58 c8    	vaddps zmm1,zmm5,zmm8
  a36194:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm1
  a3619b:	09 
  a3619c:	62 f1 2c 40 58 e8    	vaddps zmm5,zmm26,zmm0
  a361a2:	62 71 34 40 58 c2    	vaddps zmm8,zmm25,zmm2
  a361a8:	62 d1 54 48 58 c8    	vaddps zmm1,zmm5,zmm8
  a361ae:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm1
  a361b5:	10 
  a361b6:	62 d1 54 48 5c c8    	vsubps zmm1,zmm5,zmm8
  a361bc:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm1
  a361c3:	0b 
  a361c4:	62 f1 4c 40 58 cb    	vaddps zmm1,zmm22,zmm3
  a361ca:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm1
  a361d1:	07 
  a361d2:	62 f1 4c 40 5c cb    	vsubps zmm1,zmm22,zmm3
  a361d8:	62 61 2c 40 5c f8    	vsubps zmm31,zmm26,zmm0
  a361de:	62 f1 34 40 5c ea    	vsubps zmm5,zmm25,zmm2
  a361e4:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm5
  a361eb:	0a 
  a361ec:	62 f1 14 48 5c c7    	vsubps zmm0,zmm13,zmm7
  a361f2:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm0
  a361f9:	06 
  a361fa:	62 51 44 48 58 cd    	vaddps zmm9,zmm7,zmm13
  a36200:	62 21 5c 48 58 dc    	vaddps zmm27,zmm4,zmm20
  a36206:	62 a1 4c 48 58 d3    	vaddps zmm18,zmm6,zmm19
  a3620c:	62 e1 7c 48 10 44 24 	vmovups zmm16,ZMMWORD PTR [rsp+0x5c0]
  a36213:	17 
  a36214:	62 e1 7c 48 10 74 24 	vmovups zmm22,ZMMWORD PTR [rsp+0x580]
  a3621b:	16 
  a3621c:	62 31 7c 40 58 e6    	vaddps zmm12,zmm16,zmm22
  a36222:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x340]
  a36229:	0d 
  a3622a:	62 d1 6c 48 58 c4    	vaddps zmm0,zmm2,zmm12
  a36230:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm0
  a36237:	01 
  a36238:	62 72 7d 48 18 2d 1e 	vbroadcastss zmm13,DWORD PTR [rip+0xffffffffff63f21e]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a3623f:	f2 63 ff 
  a36242:	62 72 15 48 ac e2    	vfnmadd213ps zmm12,zmm13,zmm2
  a36248:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x3c0]
  a3624f:	0f 
  a36250:	62 61 7c 48 10 4c 24 	vmovups zmm25,ZMMWORD PTR [rsp+0x380]
  a36257:	0e 
  a36258:	62 91 4c 48 58 d9    	vaddps zmm3,zmm6,zmm25
  a3625e:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x100]
  a36265:	04 
  a36266:	62 f1 6c 48 58 c3    	vaddps zmm0,zmm2,zmm3
  a3626c:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm0
  a36273:	05 
  a36274:	62 f2 15 48 ac da    	vfnmadd213ps zmm3,zmm13,zmm2
  a3627a:	62 f1 04 40 58 ed    	vaddps zmm5,zmm31,zmm5
  a36280:	62 61 74 48 58 d5    	vaddps zmm26,zmm1,zmm5
  a36286:	62 f2 15 48 ac e9    	vfnmadd213ps zmm5,zmm13,zmm1
  a3628c:	62 c1 7c 48 28 dd    	vmovaps zmm19,zmm13
  a36292:	62 d1 7c 48 28 e5    	vmovaps zmm4,zmm13
  a36298:	62 d1 7c 48 28 cd    	vmovaps zmm1,zmm13
  a3629e:	62 d1 7c 48 28 d5    	vmovaps zmm2,zmm13
  a362a4:	62 b1 24 40 58 c2    	vaddps zmm0,zmm27,zmm18
  a362aa:	62 51 7c 48 28 c5    	vmovaps zmm8,zmm13
  a362b0:	62 d1 7c 48 28 fd    	vmovaps zmm7,zmm13
  a362b6:	62 52 7d 48 ac e9    	vfnmadd213ps zmm13,zmm0,zmm9
  a362bc:	62 f1 34 48 58 c0    	vaddps zmm0,zmm9,zmm0
  a362c2:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a362c9:	fe 
  a362ca:	62 d1 2c 48 5c c7    	vsubps zmm0,zmm10,zmm15
  a362d0:	62 51 74 40 5c cb    	vsubps zmm9,zmm17,zmm11
  a362d6:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x200]
  a362dd:	08 
  a362de:	62 81 2c 48 58 e0    	vaddps zmm20,zmm10,zmm24
  a362e4:	62 11 2c 48 5c f8    	vsubps zmm15,zmm10,zmm24
  a362ea:	62 31 1c 40 58 df    	vaddps zmm11,zmm28,zmm23
  a362f0:	62 11 14 40 58 d6    	vaddps zmm10,zmm29,zmm30
  a362f6:	62 41 24 48 5c f2    	vsubps zmm30,zmm11,zmm10
  a362fc:	62 51 24 48 58 d2    	vaddps zmm10,zmm11,zmm10
  a36302:	62 51 54 40 5c de    	vsubps zmm11,zmm21,zmm14
  a36308:	62 a1 0c 48 58 ed    	vaddps zmm21,zmm14,zmm21
  a3630e:	62 41 7c 48 58 e1    	vaddps zmm28,zmm0,zmm9
  a36314:	62 d1 7c 48 5c c1    	vsubps zmm0,zmm0,zmm9
  a3631a:	62 11 4c 48 5c c9    	vsubps zmm9,zmm6,zmm25
  a36320:	62 a1 7c 40 5c f6    	vsubps zmm22,zmm16,zmm22
  a36326:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0xc0]
  a3632d:	03 
  a3632e:	62 a2 4d 48 ac dc    	vfnmadd213ps zmm19,zmm6,zmm20
  a36334:	62 61 5c 40 58 ce    	vaddps zmm25,zmm20,zmm6
  a3633a:	62 f1 7c 48 10 34 24 	vmovups zmm6,ZMMWORD PTR [rsp]
  a36341:	62 d2 4d 48 ac e3    	vfnmadd213ps zmm4,zmm6,zmm11
  a36347:	62 71 24 48 58 de    	vaddps zmm11,zmm11,zmm6
  a3634d:	62 71 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm11
  a36354:	03 
  a36355:	62 61 7c 48 10 44 24 	vmovups zmm24,ZMMWORD PTR [rsp+0x400]
  a3635c:	10 
  a3635d:	62 61 7c 48 10 6c 24 	vmovups zmm29,ZMMWORD PTR [rsp+0x1c0]
  a36364:	07 
  a36365:	62 92 3d 40 ac cd    	vfnmadd213ps zmm1,zmm24,zmm29
  a3636b:	62 e2 7d 48 18 3d 5f 	vbroadcastss zmm23,DWORD PTR [rip+0xffffffffff63ef5f]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a36372:	ef 63 ff 
  a36375:	62 71 44 40 59 74 24 	vmulps zmm14,zmm23,ZMMWORD PTR [rsp+0x80]
  a3637c:	02 
  a3637d:	62 51 74 48 5c de    	vsubps zmm11,zmm1,zmm14
  a36383:	62 51 74 48 58 f6    	vaddps zmm14,zmm1,zmm14
  a36389:	62 e1 7c 48 10 44 24 	vmovups zmm16,ZMMWORD PTR [rsp+0x240]
  a36390:	09 
  a36391:	62 f1 7c 48 10 74 24 	vmovups zmm6,ZMMWORD PTR [rsp+0x180]
  a36398:	06 
  a36399:	62 f2 7d 40 ac d6    	vfnmadd213ps zmm2,zmm16,zmm6
  a3639f:	62 f1 44 40 59 4c 24 	vmulps zmm1,zmm23,ZMMWORD PTR [rsp+0x2c0]
  a363a6:	0b 
  a363a7:	62 e1 6c 48 58 e1    	vaddps zmm20,zmm2,zmm1
  a363ad:	62 e1 7c 48 11 24 24 	vmovups ZMMWORD PTR [rsp],zmm20
  a363b4:	62 f1 6c 48 5c c9    	vsubps zmm1,zmm2,zmm1
  a363ba:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm1
  a363c1:	02 
  a363c2:	62 b1 24 40 5c ca    	vsubps zmm1,zmm27,zmm18
  a363c8:	62 f1 04 40 5c 54 24 	vsubps zmm2,zmm31,ZMMWORD PTR [rsp+0x280]
  a363cf:	0a 
  a363d0:	62 e1 44 40 59 4c 24 	vmulps zmm17,zmm23,ZMMWORD PTR [rsp-0x40]
  a363d7:	ff 
  a363d8:	62 e1 44 40 59 54 24 	vmulps zmm18,zmm23,ZMMWORD PTR [rsp+0x300]
  a363df:	0c 
  a363e0:	62 21 0c 40 59 f7    	vmulps zmm30,zmm30,zmm23
  a363e6:	62 b1 7c 48 59 c7    	vmulps zmm0,zmm0,zmm23
  a363ec:	62 31 34 48 59 cf    	vmulps zmm9,zmm9,zmm23
  a363f2:	62 a1 4c 40 59 f7    	vmulps zmm22,zmm22,zmm23
  a363f8:	62 b1 74 48 59 cf    	vmulps zmm1,zmm1,zmm23
  a363fe:	62 a1 6c 48 59 ff    	vmulps zmm23,zmm2,zmm23
  a36404:	62 52 1d 40 ac c7    	vfnmadd213ps zmm8,zmm28,zmm15
  a3640a:	62 01 04 48 58 e4    	vaddps zmm28,zmm15,zmm28
  a36410:	62 b2 2d 48 ac fd    	vfnmadd213ps zmm7,zmm10,zmm21
  a36416:	62 d1 54 40 58 d2    	vaddps zmm2,zmm21,zmm10
  a3641c:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm2
  a36423:	0a 
  a36424:	62 51 1c 48 5c f9    	vsubps zmm15,zmm12,zmm9
  a3642a:	62 51 1c 48 58 e1    	vaddps zmm12,zmm12,zmm9
  a36430:	62 f1 4c 40 58 d3    	vaddps zmm2,zmm22,zmm3
  a36436:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm2
  a3643d:	ff 
  a3643e:	62 b1 64 48 5c d6    	vsubps zmm2,zmm3,zmm22
  a36444:	62 31 74 40 58 d3    	vaddps zmm10,zmm17,zmm19
  a3644a:	62 b1 64 40 5c d9    	vsubps zmm3,zmm19,zmm17
  a36450:	62 a1 5c 48 5c e2    	vsubps zmm20,zmm4,zmm18
  a36456:	62 b1 5c 48 58 e2    	vaddps zmm4,zmm4,zmm18
  a3645c:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm4
  a36463:	0b 
  a36464:	62 91 14 40 58 e0    	vaddps zmm4,zmm29,zmm24
  a3646a:	62 c1 0c 40 58 f0    	vaddps zmm22,zmm30,zmm8
  a36470:	62 31 4c 48 58 c8    	vaddps zmm9,zmm6,zmm16
  a36476:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm9
  a3647d:	0c 
  a3647e:	62 71 54 48 5c c9    	vsubps zmm9,zmm5,zmm1
  a36484:	62 f1 54 48 58 e9    	vaddps zmm5,zmm5,zmm1
  a3648a:	62 21 14 48 58 ef    	vaddps zmm29,zmm13,zmm23
  a36490:	62 b1 14 48 5c cf    	vsubps zmm1,zmm13,zmm23
  a36496:	62 61 44 48 5c c0    	vsubps zmm24,zmm7,zmm0
  a3649c:	62 91 3c 48 5c f6    	vsubps zmm6,zmm8,zmm30
  a364a2:	62 f1 44 48 58 f8    	vaddps zmm7,zmm7,zmm0
  a364a8:	62 f1 7c 48 28 05 ce 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff690ace]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a364af:	0a 69 ff 
  a364b2:	62 e1 7c 48 10 7c 24 	vmovups zmm23,ZMMWORD PTR [rsp+0x40]
  a364b9:	01 
  a364ba:	62 a1 7c 48 28 cf    	vmovaps zmm17,zmm23
  a364c0:	62 c2 7d 48 7f c9    	vpermt2ps zmm17,zmm0,zmm9
  a364c6:	62 e1 7c 48 28 05 f0 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff690af0]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a364cd:	0a 69 ff 
  a364d0:	62 c2 7d 40 7f f9    	vpermt2ps zmm23,zmm16,zmm9
  a364d6:	62 c1 7c 48 28 da    	vmovaps zmm19,zmm10
  a364dc:	62 82 7d 48 7f dc    	vpermt2ps zmm19,zmm0,zmm28
  a364e2:	62 12 7d 40 7f d4    	vpermt2ps zmm10,zmm16,zmm28
  a364e8:	62 c1 7c 48 28 d3    	vmovaps zmm18,zmm11
  a364ee:	62 c2 7d 48 7f d4    	vpermt2ps zmm18,zmm0,zmm12
  a364f4:	62 52 7d 40 7f dc    	vpermt2ps zmm11,zmm16,zmm12
  a364fa:	62 81 7c 48 28 ea    	vmovaps zmm21,zmm26
  a36500:	62 e2 7d 48 7f eb    	vpermt2ps zmm21,zmm0,zmm3
  a36506:	62 62 7d 40 7f d3    	vpermt2ps zmm26,zmm16,zmm3
  a3650c:	62 21 7c 48 28 f6    	vmovaps zmm30,zmm22
  a36512:	62 62 7d 48 7f f4    	vpermt2ps zmm30,zmm0,zmm4
  a36518:	62 e2 7d 40 7f f4    	vpermt2ps zmm22,zmm16,zmm4
  a3651e:	62 41 7c 48 28 ff    	vmovaps zmm31,zmm15
  a36524:	62 62 7d 48 7f fd    	vpermt2ps zmm31,zmm0,zmm5
  a3652a:	62 72 7d 40 7f fd    	vpermt2ps zmm15,zmm16,zmm5
  a36530:	62 11 7c 48 28 c9    	vmovaps zmm9,zmm25
  a36536:	62 72 7d 48 7f ce    	vpermt2ps zmm9,zmm0,zmm6
  a3653c:	62 62 7d 40 7f ce    	vpermt2ps zmm25,zmm16,zmm6
  a36542:	62 61 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm25
  a36549:	01 
  a3654a:	62 61 7c 48 10 5c 24 	vmovups zmm27,ZMMWORD PTR [rsp+0x140]
  a36551:	05 
  a36552:	62 01 7c 48 28 e3    	vmovaps zmm28,zmm27
  a36558:	62 02 7d 48 7f e5    	vpermt2ps zmm28,zmm0,zmm29
  a3655e:	62 02 7d 40 7f dd    	vpermt2ps zmm27,zmm16,zmm29
  a36564:	62 21 7c 48 28 ec    	vmovaps zmm29,zmm20
  a3656a:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x280]
  a36571:	0a 
  a36572:	62 62 7d 48 7f eb    	vpermt2ps zmm29,zmm0,zmm3
  a36578:	62 e2 7d 40 7f e3    	vpermt2ps zmm20,zmm16,zmm3
  a3657e:	62 71 7c 48 10 2c 24 	vmovups zmm13,ZMMWORD PTR [rsp]
  a36585:	62 41 7c 48 28 cd    	vmovaps zmm25,zmm13
  a3658b:	62 62 7d 48 7f ca    	vpermt2ps zmm25,zmm0,zmm2
  a36591:	62 72 7d 40 7f ea    	vpermt2ps zmm13,zmm16,zmm2
  a36597:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp-0x80]
  a3659e:	fe 
  a3659f:	62 f1 7c 48 28 d3    	vmovaps zmm2,zmm3
  a365a5:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x2c0]
  a365ac:	0b 
  a365ad:	62 f2 7d 48 7f d4    	vpermt2ps zmm2,zmm0,zmm4
  a365b3:	62 f2 7d 40 7f dc    	vpermt2ps zmm3,zmm16,zmm4
  a365b9:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm3
  a365c0:	fe 
  a365c1:	62 11 7c 48 28 e0    	vmovaps zmm12,zmm24
  a365c7:	62 91 7c 48 28 d8    	vmovaps zmm3,zmm24
  a365cd:	62 f1 7c 48 10 6c 24 	vmovups zmm5,ZMMWORD PTR [rsp+0x300]
  a365d4:	0c 
  a365d5:	62 f2 7d 48 7f dd    	vpermt2ps zmm3,zmm0,zmm5
  a365db:	62 72 7d 40 7f e5    	vpermt2ps zmm12,zmm16,zmm5
  a365e1:	62 61 7c 48 10 44 24 	vmovups zmm24,ZMMWORD PTR [rsp-0x40]
  a365e8:	ff 
  a365e9:	62 91 7c 48 28 e0    	vmovaps zmm4,zmm24
  a365ef:	62 f2 7d 48 7f e1    	vpermt2ps zmm4,zmm0,zmm1
  a365f5:	62 62 7d 40 7f c1    	vpermt2ps zmm24,zmm16,zmm1
  a365fb:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0xc0]
  a36602:	03 
  a36603:	62 f1 7c 48 28 e9    	vmovaps zmm5,zmm1
  a36609:	62 f2 7d 48 7f ef    	vpermt2ps zmm5,zmm0,zmm7
  a3660f:	62 f2 7d 40 7f cf    	vpermt2ps zmm1,zmm16,zmm7
  a36615:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm1
  a3661c:	03 
  a3661d:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
  a36621:	62 d1 7c 48 28 f6    	vmovaps zmm6,zmm14
  a36627:	62 f2 7d 48 7f f1    	vpermt2ps zmm6,zmm0,zmm1
  a3662d:	62 72 7d 40 7f f1    	vpermt2ps zmm14,zmm16,zmm1
  a36633:	62 f1 7c 48 10 7c 24 	vmovups zmm7,ZMMWORD PTR [rsp+0x80]
  a3663a:	02 
  a3663b:	62 f2 45 48 77 c1    	vpermi2ps zmm0,zmm7,zmm1
  a36641:	62 f2 7d 40 7f f9    	vpermt2ps zmm7,zmm16,zmm1
  a36647:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm7
  a3664e:	02 
  a3664f:	62 e1 7c 48 28 05 a7 	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff6908a7]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a36656:	08 69 ff 
  a36659:	62 b1 7c 48 28 f9    	vmovaps zmm7,zmm17
  a3665f:	62 92 7d 40 7f fe    	vpermt2ps zmm7,zmm16,zmm30
  a36665:	62 f1 7c 48 28 0d d1 	vmovaps zmm1,ZMMWORD PTR [rip+0xffffffffff6908d1]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a3666c:	08 69 ff 
  a3666f:	62 82 75 48 7f ce    	vpermt2ps zmm17,zmm1,zmm30
  a36675:	62 31 7c 48 28 c3    	vmovaps zmm8,zmm19
  a3667b:	62 12 7d 40 7f c7    	vpermt2ps zmm8,zmm16,zmm31
  a36681:	62 82 75 48 7f df    	vpermt2ps zmm19,zmm1,zmm31
  a36687:	62 21 7c 48 28 f2    	vmovaps zmm30,zmm18
  a3668d:	62 42 7d 40 7f f1    	vpermt2ps zmm30,zmm16,zmm9
  a36693:	62 c2 75 48 7f d1    	vpermt2ps zmm18,zmm1,zmm9
  a36699:	62 31 7c 48 28 cd    	vmovaps zmm9,zmm21
  a3669f:	62 72 7d 40 7f ce    	vpermt2ps zmm9,zmm16,zmm6
  a366a5:	62 e2 75 48 7f ee    	vpermt2ps zmm21,zmm1,zmm6
  a366ab:	62 b1 7c 48 28 f7    	vmovaps zmm6,zmm23
  a366b1:	62 b2 7d 40 7f f6    	vpermt2ps zmm6,zmm16,zmm22
  a366b7:	62 a2 75 48 7f fe    	vpermt2ps zmm23,zmm1,zmm22
  a366bd:	62 c1 7c 48 28 f2    	vmovaps zmm22,zmm10
  a366c3:	62 c2 7d 40 7f f7    	vpermt2ps zmm22,zmm16,zmm15
  a366c9:	62 52 75 48 7f d7    	vpermt2ps zmm10,zmm1,zmm15
  a366cf:	62 51 7c 48 28 fb    	vmovaps zmm15,zmm11
  a366d5:	62 61 7c 48 10 7c 24 	vmovups zmm31,ZMMWORD PTR [rsp+0x40]
  a366dc:	01 
  a366dd:	62 12 7d 40 7f ff    	vpermt2ps zmm15,zmm16,zmm31
  a366e3:	62 12 75 48 7f df    	vpermt2ps zmm11,zmm1,zmm31
  a366e9:	62 51 c5 40 14 db    	vunpcklpd zmm11,zmm23,zmm11
  a366ef:	62 71 7c 48 11 1c 24 	vmovups ZMMWORD PTR [rsp],zmm11
  a366f6:	62 11 7c 48 28 da    	vmovaps zmm11,zmm26
  a366fc:	62 52 7d 40 7f de    	vpermt2ps zmm11,zmm16,zmm14
  a36702:	62 42 75 48 7f d6    	vpermt2ps zmm26,zmm1,zmm14
  a36708:	62 11 ad 48 14 d2    	vunpcklpd zmm10,zmm10,zmm26
  a3670e:	62 01 c5 48 14 fe    	vunpcklpd zmm31,zmm7,zmm30
  a36714:	62 01 c5 48 15 f6    	vunpckhpd zmm30,zmm7,zmm30
  a3671a:	62 d1 bd 48 14 f9    	vunpcklpd zmm7,zmm8,zmm9
  a36720:	62 51 bd 48 15 f1    	vunpckhpd zmm14,zmm8,zmm9
  a36726:	62 31 f5 40 14 c2    	vunpcklpd zmm8,zmm17,zmm18
  a3672c:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm8
  a36733:	05 
  a36734:	62 a1 f5 40 15 d2    	vunpckhpd zmm18,zmm17,zmm18
  a3673a:	62 a1 e5 40 14 cd    	vunpcklpd zmm17,zmm19,zmm21
  a36740:	62 a1 e5 40 15 ed    	vunpckhpd zmm21,zmm19,zmm21
  a36746:	62 c1 cd 48 14 df    	vunpcklpd zmm19,zmm6,zmm15
  a3674c:	62 d1 cd 48 15 f7    	vunpckhpd zmm6,zmm6,zmm15
  a36752:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm6
  a36759:	ff 
  a3675a:	62 d1 cd 40 14 f3    	vunpcklpd zmm6,zmm22,zmm11
  a36760:	62 51 cd 40 15 db    	vunpckhpd zmm11,zmm22,zmm11
  a36766:	62 11 7c 48 28 fc    	vmovaps zmm15,zmm28
  a3676c:	62 72 7d 40 7f fb    	vpermt2ps zmm15,zmm16,zmm3
  a36772:	62 62 75 48 7f e3    	vpermt2ps zmm28,zmm1,zmm3
  a36778:	62 91 7c 48 28 dd    	vmovaps zmm3,zmm29
  a3677e:	62 f2 7d 40 7f dc    	vpermt2ps zmm3,zmm16,zmm4
  a36784:	62 62 75 48 7f ec    	vpermt2ps zmm29,zmm1,zmm4
  a3678a:	62 81 7c 48 28 f1    	vmovaps zmm22,zmm25
  a36790:	62 e2 7d 40 7f f5    	vpermt2ps zmm22,zmm16,zmm5
  a36796:	62 62 75 48 7f cd    	vpermt2ps zmm25,zmm1,zmm5
  a3679c:	62 e1 7c 48 28 fa    	vmovaps zmm23,zmm2
  a367a2:	62 e2 7d 40 7f f8    	vpermt2ps zmm23,zmm16,zmm0
  a367a8:	62 f2 75 48 7f d0    	vpermt2ps zmm2,zmm1,zmm0
  a367ae:	62 01 7c 48 28 d3    	vmovaps zmm26,zmm27
  a367b4:	62 42 7d 40 7f d4    	vpermt2ps zmm26,zmm16,zmm12
  a367ba:	62 42 75 48 7f dc    	vpermt2ps zmm27,zmm1,zmm12
  a367c0:	62 31 7c 48 28 e4    	vmovaps zmm12,zmm20
  a367c6:	62 12 7d 40 7f e0    	vpermt2ps zmm12,zmm16,zmm24
  a367cc:	62 82 75 48 7f e0    	vpermt2ps zmm20,zmm1,zmm24
  a367d2:	62 41 7c 48 28 c5    	vmovaps zmm24,zmm13
  a367d8:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0xc0]
  a367df:	03 
  a367e0:	62 62 7d 40 7f c0    	vpermt2ps zmm24,zmm16,zmm0
  a367e6:	62 72 75 48 7f e8    	vpermt2ps zmm13,zmm1,zmm0
  a367ec:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp-0x80]
  a367f3:	fe 
  a367f4:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x80]
  a367fb:	02 
  a367fc:	62 e2 7d 48 77 c4    	vpermi2ps zmm16,zmm0,zmm4
  a36802:	62 f2 75 48 7f c4    	vpermt2ps zmm0,zmm1,zmm4
  a36808:	62 f1 7c 48 28 c8    	vmovaps zmm1,zmm0
  a3680e:	62 71 7c 48 28 05 e8 	vmovaps zmm8,ZMMWORD PTR [rip+0xffffffffff6905e8]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a36815:	05 69 ff 
  a36818:	62 91 7c 48 28 c7    	vmovaps zmm0,zmm31
  a3681e:	62 f2 3d 48 7f c7    	vpermt2ps zmm0,zmm8,zmm7
  a36824:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm0
  a3682b:	fe 
  a3682c:	62 f1 7c 48 28 05 0a 	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff69060a]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a36833:	06 69 ff 
  a36836:	62 62 7d 48 7f ff    	vpermt2ps zmm31,zmm0,zmm7
  a3683c:	62 61 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm31
  a36843:	08 
  a36844:	62 11 7c 48 28 ce    	vmovaps zmm9,zmm30
  a3684a:	62 52 3d 48 7f ce    	vpermt2ps zmm9,zmm8,zmm14
  a36850:	62 42 7d 48 7f f6    	vpermt2ps zmm30,zmm0,zmm14
  a36856:	62 61 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm30
  a3685d:	04 
  a3685e:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x140]
  a36865:	05 
  a36866:	62 f1 7c 48 28 ec    	vmovaps zmm5,zmm4
  a3686c:	62 b2 3d 48 7f e9    	vpermt2ps zmm5,zmm8,zmm17
  a36872:	62 b2 7d 48 7f e1    	vpermt2ps zmm4,zmm0,zmm17
  a36878:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm4
  a3687f:	05 
  a36880:	62 a1 7c 48 28 ca    	vmovaps zmm17,zmm18
  a36886:	62 a2 3d 48 7f cd    	vpermt2ps zmm17,zmm8,zmm21
  a3688c:	62 a2 7d 48 7f d5    	vpermt2ps zmm18,zmm0,zmm21
  a36892:	62 21 7c 48 28 fa    	vmovaps zmm31,zmm18
  a36898:	62 21 7c 48 28 f3    	vmovaps zmm30,zmm19
  a3689e:	62 62 3d 48 7f f6    	vpermt2ps zmm30,zmm8,zmm6
  a368a4:	62 e2 7d 48 7f de    	vpermt2ps zmm19,zmm0,zmm6
  a368aa:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp-0x40]
  a368b1:	ff 
  a368b2:	62 e1 7c 48 28 d4    	vmovaps zmm18,zmm4
  a368b8:	62 c2 3d 48 7f d3    	vpermt2ps zmm18,zmm8,zmm11
  a368be:	62 d2 7d 48 7f e3    	vpermt2ps zmm4,zmm0,zmm11
  a368c4:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm4
  a368cb:	ff 
  a368cc:	62 f1 7c 48 10 24 24 	vmovups zmm4,ZMMWORD PTR [rsp]
  a368d3:	62 f1 7c 48 28 fc    	vmovaps zmm7,zmm4
  a368d9:	62 d2 3d 48 7f fa    	vpermt2ps zmm7,zmm8,zmm10
  a368df:	62 d2 7d 48 7f e2    	vpermt2ps zmm4,zmm0,zmm10
  a368e5:	62 f1 7c 48 11 24 24 	vmovups ZMMWORD PTR [rsp],zmm4
  a368ec:	62 d1 a5 40 14 e5    	vunpcklpd zmm4,zmm27,zmm13
  a368f2:	62 e1 dd 40 14 e1    	vunpcklpd zmm20,zmm20,zmm1
  a368f8:	62 31 85 48 14 d6    	vunpcklpd zmm10,zmm15,zmm22
  a368fe:	62 b1 85 48 15 ce    	vunpckhpd zmm1,zmm15,zmm22
  a36904:	62 b1 e5 48 14 f7    	vunpcklpd zmm6,zmm3,zmm23
  a3690a:	62 31 e5 48 15 df    	vunpckhpd zmm11,zmm3,zmm23
  a36910:	62 81 9d 40 14 f1    	vunpcklpd zmm22,zmm28,zmm25
  a36916:	62 91 9d 40 15 d9    	vunpckhpd zmm3,zmm28,zmm25
  a3691c:	62 71 95 40 14 f2    	vunpcklpd zmm14,zmm29,zmm2
  a36922:	62 71 95 40 15 fa    	vunpckhpd zmm15,zmm29,zmm2
  a36928:	62 91 ad 40 14 d0    	vunpcklpd zmm2,zmm26,zmm24
  a3692e:	62 01 ad 40 15 c8    	vunpckhpd zmm25,zmm26,zmm24
  a36934:	62 a1 9d 48 14 e8    	vunpcklpd zmm21,zmm12,zmm16
  a3693a:	62 31 9d 48 15 e0    	vunpckhpd zmm12,zmm12,zmm16
  a36940:	62 41 7c 48 28 c2    	vmovaps zmm24,zmm10
  a36946:	62 62 3d 48 7f c6    	vpermt2ps zmm24,zmm8,zmm6
  a3694c:	62 72 7d 48 7f d6    	vpermt2ps zmm10,zmm0,zmm6
  a36952:	62 e1 7c 48 28 c1    	vmovaps zmm16,zmm1
  a36958:	62 c2 3d 48 7f c3    	vpermt2ps zmm16,zmm8,zmm11
  a3695e:	62 d2 7d 48 7f cb    	vpermt2ps zmm1,zmm0,zmm11
  a36964:	62 31 7c 48 28 de    	vmovaps zmm11,zmm22
  a3696a:	62 52 3d 48 7f de    	vpermt2ps zmm11,zmm8,zmm14
  a36970:	62 c2 7d 48 7f f6    	vpermt2ps zmm22,zmm0,zmm14
  a36976:	62 71 7c 48 28 f3    	vmovaps zmm14,zmm3
  a3697c:	62 52 3d 48 7f f7    	vpermt2ps zmm14,zmm8,zmm15
  a36982:	62 d2 7d 48 7f df    	vpermt2ps zmm3,zmm0,zmm15
  a36988:	62 f1 7c 48 28 f2    	vmovaps zmm6,zmm2
  a3698e:	62 b2 3d 48 7f f5    	vpermt2ps zmm6,zmm8,zmm21
  a36994:	62 b2 7d 48 7f d5    	vpermt2ps zmm2,zmm0,zmm21
  a3699a:	62 11 7c 48 28 f9    	vmovaps zmm15,zmm25
  a369a0:	62 52 3d 48 7f fc    	vpermt2ps zmm15,zmm8,zmm12
  a369a6:	62 42 7d 48 7f cc    	vpermt2ps zmm25,zmm0,zmm12
  a369ac:	62 32 5d 48 77 c4    	vpermi2ps zmm8,zmm4,zmm20
  a369b2:	62 b2 7d 48 7f e4    	vpermt2ps zmm4,zmm0,zmm20
  a369b8:	62 e1 7c 48 10 7a 02 	vmovups zmm23,ZMMWORD PTR [rdx+0x80]
  a369bf:	62 e1 7c 48 10 6a 04 	vmovups zmm21,ZMMWORD PTR [rdx+0x100]
  a369c6:	62 e1 7c 48 10 62 05 	vmovups zmm20,ZMMWORD PTR [rdx+0x140]
  a369cd:	62 b1 34 48 59 c5    	vmulps zmm0,zmm9,zmm21
  a369d3:	62 b2 7d 40 bc c4    	vfnmadd231ps zmm0,zmm16,zmm20
  a369d9:	62 71 7c 48 28 e0    	vmovaps zmm12,zmm0
  a369df:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm0
  a369e6:	0f 
  a369e7:	62 31 7c 40 59 ed    	vmulps zmm13,zmm16,zmm21
  a369ed:	62 f1 7c 48 10 42 18 	vmovups zmm0,ZMMWORD PTR [rdx+0x600]
  a369f4:	62 52 5d 40 b8 e9    	vfmadd231ps zmm13,zmm20,zmm9
  a369fa:	62 c1 7c 48 28 e5    	vmovaps zmm20,zmm13
  a36a00:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm13
  a36a07:	16 
  a36a08:	62 71 7c 48 10 4a 19 	vmovups zmm9,ZMMWORD PTR [rdx+0x640]
  a36a0f:	62 71 44 48 59 e8    	vmulps zmm13,zmm7,zmm0
  a36a15:	62 52 3d 48 bc e9    	vfnmadd231ps zmm13,zmm8,zmm9
  a36a1b:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm13
  a36a22:	10 
  a36a23:	62 71 3c 48 59 c0    	vmulps zmm8,zmm8,zmm0
  a36a29:	62 f1 7c 48 10 42 08 	vmovups zmm0,ZMMWORD PTR [rdx+0x200]
  a36a30:	62 72 35 48 b8 c7    	vfmadd231ps zmm8,zmm9,zmm7
  a36a36:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm8
  a36a3d:	02 
  a36a3e:	62 f1 7c 48 10 7a 09 	vmovups zmm7,ZMMWORD PTR [rdx+0x240]
  a36a45:	62 71 54 48 59 c0    	vmulps zmm8,zmm5,zmm0
  a36a4b:	62 72 25 48 bc c7    	vfnmadd231ps zmm8,zmm11,zmm7
  a36a51:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm8
  a36a58:	01 
  a36a59:	62 71 24 48 59 c0    	vmulps zmm8,zmm11,zmm0
  a36a5f:	62 f1 7c 48 10 42 14 	vmovups zmm0,ZMMWORD PTR [rdx+0x500]
  a36a66:	62 72 45 48 b8 c5    	vfmadd231ps zmm8,zmm7,zmm5
  a36a6c:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm8
  a36a73:	0c 
  a36a74:	62 f1 7c 48 10 6a 15 	vmovups zmm5,ZMMWORD PTR [rdx+0x540]
  a36a7b:	62 f1 6c 40 59 f8    	vmulps zmm7,zmm18,zmm0
  a36a81:	62 f2 05 48 bc fd    	vfnmadd231ps zmm7,zmm15,zmm5
  a36a87:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm7
  a36a8e:	03 
  a36a8f:	62 f1 04 48 59 f8    	vmulps zmm7,zmm15,zmm0
  a36a95:	62 f1 7c 48 10 42 0c 	vmovups zmm0,ZMMWORD PTR [rdx+0x300]
  a36a9c:	62 b2 55 48 b8 fa    	vfmadd231ps zmm7,zmm5,zmm18
  a36aa2:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm7
  a36aa9:	0b 
  a36aaa:	62 f1 7c 48 10 6a 0d 	vmovups zmm5,ZMMWORD PTR [rdx+0x340]
  a36ab1:	62 f1 74 40 59 f8    	vmulps zmm7,zmm17,zmm0
  a36ab7:	62 f2 0d 48 bc fd    	vfnmadd231ps zmm7,zmm14,zmm5
  a36abd:	62 61 7c 48 28 d7    	vmovaps zmm26,zmm7
  a36ac3:	62 f1 0c 48 59 f8    	vmulps zmm7,zmm14,zmm0
  a36ac9:	62 f1 7c 48 10 42 10 	vmovups zmm0,ZMMWORD PTR [rdx+0x400]
  a36ad0:	62 b2 55 48 b8 f9    	vfmadd231ps zmm7,zmm5,zmm17
  a36ad6:	62 f1 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm7
  a36add:	0a 
  a36ade:	62 f1 7c 48 10 6a 11 	vmovups zmm5,ZMMWORD PTR [rdx+0x440]
  a36ae5:	62 f1 0c 40 59 f8    	vmulps zmm7,zmm30,zmm0
  a36aeb:	62 f2 4d 48 bc fd    	vfnmadd231ps zmm7,zmm6,zmm5
  a36af1:	62 e1 7c 48 28 cf    	vmovaps zmm17,zmm7
  a36af7:	62 f1 4c 48 59 f0    	vmulps zmm6,zmm6,zmm0
  a36afd:	62 f1 7c 48 10 42 0e 	vmovups zmm0,ZMMWORD PTR [rdx+0x380]
  a36b04:	62 92 55 48 b8 f6    	vfmadd231ps zmm6,zmm5,zmm30
  a36b0a:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm6
  a36b11:	09 
  a36b12:	62 f1 7c 48 10 72 0f 	vmovups zmm6,ZMMWORD PTR [rdx+0x3c0]
  a36b19:	62 61 04 40 59 e8    	vmulps zmm29,zmm31,zmm0
  a36b1f:	62 62 65 48 bc ee    	vfnmadd231ps zmm29,zmm3,zmm6
  a36b25:	62 e1 64 48 59 d0    	vmulps zmm18,zmm3,zmm0
  a36b2b:	62 f1 7c 48 10 42 12 	vmovups zmm0,ZMMWORD PTR [rdx+0x480]
  a36b32:	62 82 4d 48 b8 d7    	vfmadd231ps zmm18,zmm6,zmm31
  a36b38:	62 f1 7c 48 10 5a 13 	vmovups zmm3,ZMMWORD PTR [rdx+0x4c0]
  a36b3f:	62 f1 64 40 59 e8    	vmulps zmm5,zmm19,zmm0
  a36b45:	62 f2 6d 48 bc eb    	vfnmadd231ps zmm5,zmm2,zmm3
  a36b4b:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x640],zmm5
  a36b52:	19 
  a36b53:	62 f1 6c 48 59 d0    	vmulps zmm2,zmm2,zmm0
  a36b59:	62 f1 7c 48 10 42 0a 	vmovups zmm0,ZMMWORD PTR [rdx+0x280]
  a36b60:	62 b2 65 48 b8 d3    	vfmadd231ps zmm2,zmm3,zmm19
  a36b66:	62 f1 7c 48 28 fa    	vmovaps zmm7,zmm2
  a36b6c:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm2
  a36b73:	14 
  a36b74:	62 f1 7c 48 10 52 0b 	vmovups zmm2,ZMMWORD PTR [rdx+0x2c0]
  a36b7b:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp+0x140]
  a36b82:	05 
  a36b83:	62 f1 3c 48 59 d8    	vmulps zmm3,zmm8,zmm0
  a36b89:	62 f2 4d 40 bc da    	vfnmadd231ps zmm3,zmm22,zmm2
  a36b8f:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm3
  a36b96:	06 
  a36b97:	62 f1 4c 40 59 f0    	vmulps zmm6,zmm22,zmm0
  a36b9d:	62 f1 7c 48 10 42 16 	vmovups zmm0,ZMMWORD PTR [rdx+0x580]
  a36ba4:	62 d2 6d 48 b8 f0    	vfmadd231ps zmm6,zmm2,zmm8
  a36baa:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm6
  a36bb1:	15 
  a36bb2:	62 f1 7c 48 10 52 17 	vmovups zmm2,ZMMWORD PTR [rdx+0x5c0]
  a36bb9:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp-0x40]
  a36bc0:	ff 
  a36bc1:	62 71 34 48 59 f8    	vmulps zmm15,zmm9,zmm0
  a36bc7:	62 72 35 40 bc fa    	vfnmadd231ps zmm15,zmm25,zmm2
  a36bcd:	62 71 7c 48 11 7c 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm15
  a36bd4:	12 
  a36bd5:	62 71 34 40 59 c0    	vmulps zmm8,zmm25,zmm0
  a36bdb:	62 f1 7c 48 10 42 06 	vmovups zmm0,ZMMWORD PTR [rdx+0x180]
  a36be2:	62 52 6d 48 b8 c1    	vfmadd231ps zmm8,zmm2,zmm9
  a36be8:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm8
  a36bef:	05 
  a36bf0:	62 f1 7c 48 10 52 07 	vmovups zmm2,ZMMWORD PTR [rdx+0x1c0]
  a36bf7:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp+0x100]
  a36bfe:	04 
  a36bff:	62 71 3c 48 59 c8    	vmulps zmm9,zmm8,zmm0
  a36c05:	62 72 75 48 bc ca    	vfnmadd231ps zmm9,zmm1,zmm2
  a36c0b:	62 51 7c 48 28 f1    	vmovaps zmm14,zmm9
  a36c11:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm9
  a36c18:	13 
  a36c19:	62 f1 74 48 59 c8    	vmulps zmm1,zmm1,zmm0
  a36c1f:	62 f1 7c 48 10 42 1a 	vmovups zmm0,ZMMWORD PTR [rdx+0x680]
  a36c26:	62 d2 6d 48 b8 c8    	vfmadd231ps zmm1,zmm2,zmm8
  a36c2c:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a36c33:	ff 
  a36c34:	62 f1 7c 48 10 4a 1b 	vmovups zmm1,ZMMWORD PTR [rdx+0x6c0]
  a36c3b:	62 71 7c 48 10 0c 24 	vmovups zmm9,ZMMWORD PTR [rsp]
  a36c42:	62 61 34 48 59 c8    	vmulps zmm25,zmm9,zmm0
  a36c48:	62 62 5d 48 bc c9    	vfnmadd231ps zmm25,zmm4,zmm1
  a36c4e:	62 f1 5c 48 59 c0    	vmulps zmm0,zmm4,zmm0
  a36c54:	62 f1 7c 48 10 52 03 	vmovups zmm2,ZMMWORD PTR [rdx+0xc0]
  a36c5b:	62 d2 75 48 b8 c1    	vfmadd231ps zmm0,zmm1,zmm9
  a36c61:	62 f1 7c 48 11 04 24 	vmovups ZMMWORD PTR [rsp],zmm0
  a36c68:	62 d1 1c 48 58 c5    	vaddps zmm0,zmm12,zmm13
  a36c6e:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x200]
  a36c75:	08 
  a36c76:	62 b1 5c 48 59 cf    	vmulps zmm1,zmm4,zmm23
  a36c7c:	62 f2 2d 48 bc ca    	vfnmadd231ps zmm1,zmm10,zmm2
  a36c82:	62 71 7c 48 28 c9    	vmovaps zmm9,zmm1
  a36c88:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm1
  a36c8f:	11 
  a36c90:	62 21 2c 48 59 df    	vmulps zmm27,zmm10,zmm23
  a36c96:	62 62 6d 48 b8 dc    	vfmadd231ps zmm27,zmm2,zmm4
  a36c9c:	62 62 7d 48 18 25 4e 	vbroadcastss zmm28,DWORD PTR [rip+0xffffffffff63e94e]        # 755f4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2aa4>
  a36ca3:	e9 63 ff 
  a36ca6:	62 91 7c 48 28 d4    	vmovaps zmm2,zmm28
  a36cac:	62 e1 7c 48 10 44 24 	vmovups zmm16,ZMMWORD PTR [rsp-0x80]
  a36cb3:	fe 
  a36cb4:	62 b2 7d 48 a8 d0    	vfmadd213ps zmm2,zmm0,zmm16
  a36cba:	62 f2 7d 48 18 25 08 	vbroadcastss zmm4,DWORD PTR [rip+0xffffffffff63e608]        # 752cc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x277c>
  a36cc1:	e6 63 ff 
  a36cc4:	62 71 7c 48 28 ec    	vmovaps zmm13,zmm4
  a36cca:	62 32 7d 48 ac e8    	vfnmadd213ps zmm13,zmm0,zmm16
  a36cd0:	62 f1 7c 40 58 c8    	vaddps zmm1,zmm16,zmm0
  a36cd6:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm1
  a36cdd:	08 
  a36cde:	62 72 7d 48 18 15 f0 	vbroadcastss zmm10,DWORD PTR [rip+0xffffffffff63e8f0]        # 755d8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a88>
  a36ce5:	e8 63 ff 
  a36ce8:	62 e2 2d 48 bc c0    	vfnmadd231ps zmm16,zmm10,zmm0
  a36cee:	62 f1 54 48 58 c3    	vaddps zmm0,zmm5,zmm3
  a36cf4:	62 91 7c 48 28 dc    	vmovaps zmm3,zmm28
  a36cfa:	62 92 7d 48 a8 dd    	vfmadd213ps zmm3,zmm0,zmm29
  a36d00:	62 61 7c 48 28 f4    	vmovaps zmm30,zmm4
  a36d06:	62 02 7d 48 ac f5    	vfnmadd213ps zmm30,zmm0,zmm29
  a36d0c:	62 f1 14 40 58 c8    	vaddps zmm1,zmm29,zmm0
  a36d12:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a36d19:	fe 
  a36d1a:	62 62 2d 48 bc e8    	vfnmadd231ps zmm29,zmm10,zmm0
  a36d20:	62 f1 5c 40 58 4c 24 	vaddps zmm1,zmm20,ZMMWORD PTR [rsp+0x80]
  a36d27:	02 
  a36d28:	62 01 7c 48 28 fc    	vmovaps zmm31,zmm28
  a36d2e:	62 11 7c 48 28 d8    	vmovaps zmm11,zmm24
  a36d34:	62 02 75 48 a8 f8    	vfmadd213ps zmm31,zmm1,zmm24
  a36d3a:	62 e1 7c 48 28 ec    	vmovaps zmm21,zmm4
  a36d40:	62 82 75 48 ac e8    	vfnmadd213ps zmm21,zmm1,zmm24
  a36d46:	62 91 74 48 58 e8    	vaddps zmm5,zmm1,zmm24
  a36d4c:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm5
  a36d53:	04 
  a36d54:	62 72 2d 48 bc d9    	vfnmadd231ps zmm11,zmm10,zmm1
  a36d5a:	62 e1 44 48 58 e6    	vaddps zmm20,zmm7,zmm6
  a36d60:	62 31 7c 48 28 e2    	vmovaps zmm12,zmm18
  a36d66:	62 22 5d 40 a8 e2    	vfmadd213ps zmm28,zmm20,zmm18
  a36d6c:	62 f1 7c 48 28 fc    	vmovaps zmm7,zmm4
  a36d72:	62 b2 5d 40 ac fa    	vfnmadd213ps zmm7,zmm20,zmm18
  a36d78:	62 b1 6c 40 58 c4    	vaddps zmm0,zmm18,zmm20
  a36d7e:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm0
  a36d85:	07 
  a36d86:	62 52 5d 40 bc e2    	vfnmadd231ps zmm12,zmm20,zmm10
  a36d8c:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0xc0]
  a36d93:	03 
  a36d94:	62 e1 7c 48 58 64 24 	vaddps zmm20,zmm0,ZMMWORD PTR [rsp+0x40]
  a36d9b:	01 
  a36d9c:	62 f1 7c 48 28 c4    	vmovaps zmm0,zmm4
  a36da2:	62 f2 5d 40 bc d4    	vfnmadd231ps zmm2,zmm20,zmm4
  a36da8:	62 01 7c 48 28 c2    	vmovaps zmm24,zmm26
  a36dae:	62 a1 7c 48 28 f9    	vmovaps zmm23,zmm17
  a36db4:	62 b1 2c 40 58 f1    	vaddps zmm6,zmm26,zmm17
  a36dba:	62 d2 4d 48 bc d2    	vfnmadd231ps zmm2,zmm6,zmm10
  a36dc0:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x600],zmm2
  a36dc7:	18 
  a36dc8:	62 41 04 48 58 d6    	vaddps zmm26,zmm15,zmm14
  a36dce:	62 f2 2d 40 bc dc    	vfnmadd231ps zmm3,zmm26,zmm4
  a36dd4:	62 d1 34 40 58 e9    	vaddps zmm5,zmm25,zmm9
  a36dda:	62 d2 55 48 bc da    	vfnmadd231ps zmm3,zmm5,zmm10
  a36de0:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm3
  a36de7:	17 
  a36de8:	62 e1 7c 48 10 74 24 	vmovups zmm22,ZMMWORD PTR [rsp+0x300]
  a36def:	0c 
  a36df0:	62 e1 7c 48 10 5c 24 	vmovups zmm19,ZMMWORD PTR [rsp+0x2c0]
  a36df7:	0b 
  a36df8:	62 b1 4c 40 58 d3    	vaddps zmm2,zmm22,zmm19
  a36dfe:	62 62 6d 48 bc fc    	vfnmadd231ps zmm31,zmm2,zmm4
  a36e04:	62 71 7c 48 10 74 24 	vmovups zmm14,ZMMWORD PTR [rsp+0x280]
  a36e0b:	0a 
  a36e0c:	62 71 7c 48 10 4c 24 	vmovups zmm9,ZMMWORD PTR [rsp+0x240]
  a36e13:	09 
  a36e14:	62 d1 0c 48 58 e1    	vaddps zmm4,zmm14,zmm9
  a36e1a:	62 42 5d 48 bc fa    	vfnmadd231ps zmm31,zmm4,zmm10
  a36e20:	62 e1 7c 48 10 54 24 	vmovups zmm18,ZMMWORD PTR [rsp+0x140]
  a36e27:	05 
  a36e28:	62 e1 7c 48 10 4c 24 	vmovups zmm17,ZMMWORD PTR [rsp-0x40]
  a36e2f:	ff 
  a36e30:	62 b1 6c 40 58 c9    	vaddps zmm1,zmm18,zmm17
  a36e36:	62 62 75 48 bc e0    	vfnmadd231ps zmm28,zmm1,zmm0
  a36e3c:	62 71 7c 48 10 04 24 	vmovups zmm8,ZMMWORD PTR [rsp]
  a36e43:	62 91 3c 48 58 db    	vaddps zmm3,zmm8,zmm27
  a36e49:	62 42 65 48 bc e2    	vfnmadd231ps zmm28,zmm3,zmm10
  a36e4f:	62 52 5d 40 bc ea    	vfnmadd231ps zmm13,zmm20,zmm10
  a36e55:	62 42 2d 40 bc f2    	vfnmadd231ps zmm30,zmm26,zmm10
  a36e5b:	62 c2 6d 48 bc ea    	vfnmadd231ps zmm21,zmm2,zmm10
  a36e61:	62 d2 75 48 bc fa    	vfnmadd231ps zmm7,zmm1,zmm10
  a36e67:	62 71 5c 40 58 7c 24 	vaddps zmm15,zmm20,ZMMWORD PTR [rsp+0x200]
  a36e6e:	08 
  a36e6f:	62 31 7c 48 28 d0    	vmovaps zmm10,zmm16
  a36e75:	62 f2 7d 48 18 05 75 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff63e775]        # 755f4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2aa4>
  a36e7c:	e7 63 ff 
  a36e7f:	62 32 7d 48 b8 d4    	vfmadd231ps zmm10,zmm0,zmm20
  a36e85:	62 e1 2c 40 58 44 24 	vaddps zmm16,zmm26,ZMMWORD PTR [rsp-0x80]
  a36e8c:	fe 
  a36e8d:	62 02 7d 48 b8 ea    	vfmadd231ps zmm29,zmm0,zmm26
  a36e93:	62 e1 6c 48 58 64 24 	vaddps zmm20,zmm2,ZMMWORD PTR [rsp+0x100]
  a36e9a:	04 
  a36e9b:	62 72 7d 48 b8 da    	vfmadd231ps zmm11,zmm0,zmm2
  a36ea1:	62 f1 74 48 58 54 24 	vaddps zmm2,zmm1,ZMMWORD PTR [rsp+0x1c0]
  a36ea8:	07 
  a36ea9:	62 72 75 48 b8 e0    	vfmadd231ps zmm12,zmm1,zmm0
  a36eaf:	62 72 4d 48 b8 e8    	vfmadd231ps zmm13,zmm6,zmm0
  a36eb5:	62 71 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm13
  a36ebc:	0d 
  a36ebd:	62 62 55 48 b8 f0    	vfmadd231ps zmm30,zmm5,zmm0
  a36ec3:	62 e2 5d 48 b8 e8    	vfmadd231ps zmm21,zmm4,zmm0
  a36ec9:	62 f2 65 48 b8 f8    	vfmadd231ps zmm7,zmm3,zmm0
  a36ecf:	62 f1 04 48 58 c6    	vaddps zmm0,zmm15,zmm6
  a36ed5:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm0
  a36edc:	08 
  a36edd:	62 f2 7d 48 18 05 e5 	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff63e3e5]        # 752cc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x277c>
  a36ee4:	e3 63 ff 
  a36ee7:	62 72 7d 48 bc d6    	vfnmadd231ps zmm10,zmm0,zmm6
  a36eed:	62 71 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm10
  a36ef4:	fe 
  a36ef5:	62 f1 7c 40 58 cd    	vaddps zmm1,zmm16,zmm5
  a36efb:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm1
  a36f02:	04 
  a36f03:	62 62 7d 48 bc ed    	vfnmadd231ps zmm29,zmm0,zmm5
  a36f09:	62 b1 5c 48 58 cc    	vaddps zmm1,zmm4,zmm20
  a36f0f:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm1
  a36f16:	07 
  a36f17:	62 72 7d 48 bc dc    	vfnmadd231ps zmm11,zmm0,zmm4
  a36f1d:	62 72 65 48 bc e0    	vfnmadd231ps zmm12,zmm3,zmm0
  a36f23:	62 f1 6c 48 58 c3    	vaddps zmm0,zmm2,zmm3
  a36f29:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm0
  a36f30:	0e 
  a36f31:	62 51 0c 48 5c d1    	vsubps zmm10,zmm14,zmm9
  a36f37:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x580]
  a36f3e:	16 
  a36f3f:	62 f1 7c 48 5c 4c 24 	vsubps zmm1,zmm0,ZMMWORD PTR [rsp+0x80]
  a36f46:	02 
  a36f47:	62 b1 4c 40 5c d3    	vsubps zmm2,zmm22,zmm19
  a36f4d:	62 11 3c 48 5c c3    	vsubps zmm8,zmm8,zmm27
  a36f53:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x500]
  a36f5a:	14 
  a36f5b:	62 f1 7c 48 5c 6c 24 	vsubps zmm5,zmm0,ZMMWORD PTR [rsp+0x540]
  a36f62:	15 
  a36f63:	62 31 6c 40 5c c9    	vsubps zmm9,zmm18,zmm17
  a36f69:	62 31 3c 40 5c f7    	vsubps zmm14,zmm24,zmm23
  a36f6f:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x3c0]
  a36f76:	0f 
  a36f77:	62 71 7c 48 5c 7c 24 	vsubps zmm15,zmm0,ZMMWORD PTR [rsp+0x400]
  a36f7e:	10 
  a36f7f:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x40]
  a36f86:	01 
  a36f87:	62 e1 7c 48 5c 44 24 	vsubps zmm16,zmm0,ZMMWORD PTR [rsp+0xc0]
  a36f8e:	03 
  a36f8f:	62 e2 7d 48 18 0d f7 	vbroadcastss zmm17,DWORD PTR [rip+0xffffffffff63e4f7]        # 75490 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2940>
  a36f96:	e4 63 ff 
  a36f99:	62 e1 34 40 5c 5c 24 	vsubps zmm19,zmm25,ZMMWORD PTR [rsp+0x440]
  a36fa0:	11 
  a36fa1:	62 e2 7d 48 18 35 b5 	vbroadcastss zmm22,DWORD PTR [rip+0xffffffffff63e6b5]        # 75660 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b10>
  a36fa8:	e6 63 ff 
  a36fab:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x640]
  a36fb2:	19 
  a36fb3:	62 e1 7c 48 5c 7c 24 	vsubps zmm23,zmm0,ZMMWORD PTR [rsp+0x180]
  a36fba:	06 
  a36fbb:	62 b1 6c 48 59 f1    	vmulps zmm6,zmm2,zmm17
  a36fc1:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x480]
  a36fc8:	12 
  a36fc9:	62 61 7c 48 5c 44 24 	vsubps zmm24,zmm0,ZMMWORD PTR [rsp+0x4c0]
  a36fd0:	13 
  a36fd1:	62 62 7d 48 18 0d 0d 	vbroadcastss zmm25,DWORD PTR [rip+0xffffffffff63e60d]        # 755e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a98>
  a36fd8:	e6 63 ff 
  a36fdb:	62 b2 75 48 b8 f6    	vfmadd231ps zmm6,zmm1,zmm22
  a36fe1:	62 b1 74 48 59 d9    	vmulps zmm3,zmm1,zmm17
  a36fe7:	62 92 6d 48 bc d9    	vfnmadd231ps zmm3,zmm2,zmm25
  a36fed:	62 91 74 48 59 c9    	vmulps zmm1,zmm1,zmm25
  a36ff3:	62 f2 4d 40 bc ca    	vfnmadd231ps zmm1,zmm22,zmm2
  a36ff9:	62 b1 34 48 59 e1    	vmulps zmm4,zmm9,zmm17
  a36fff:	62 b2 55 48 b8 e6    	vfmadd231ps zmm4,zmm5,zmm22
  a37005:	62 b1 54 48 59 d1    	vmulps zmm2,zmm5,zmm17
  a3700b:	62 92 35 48 bc d1    	vfnmadd231ps zmm2,zmm9,zmm25
  a37011:	62 91 54 48 59 e9    	vmulps zmm5,zmm5,zmm25
  a37017:	62 d2 4d 40 bc e9    	vfnmadd231ps zmm5,zmm22,zmm9
  a3701d:	62 31 7c 40 59 c9    	vmulps zmm9,zmm16,zmm17
  a37023:	62 32 05 48 b8 ce    	vfmadd231ps zmm9,zmm15,zmm22
  a37029:	62 21 04 48 59 d1    	vmulps zmm26,zmm15,zmm17
  a3702f:	62 02 7d 40 bc d1    	vfnmadd231ps zmm26,zmm16,zmm25
  a37035:	62 11 04 48 59 f9    	vmulps zmm15,zmm15,zmm25
  a3703b:	62 32 4d 40 bc f8    	vfnmadd231ps zmm15,zmm22,zmm16
  a37041:	62 92 2d 48 b8 f1    	vfmadd231ps zmm6,zmm10,zmm25
  a37047:	62 92 3d 48 b8 e1    	vfmadd231ps zmm4,zmm8,zmm25
  a3704d:	62 12 0d 48 b8 c9    	vfmadd231ps zmm9,zmm14,zmm25
  a37053:	62 a1 3c 40 59 c1    	vmulps zmm16,zmm24,zmm17
  a37059:	62 a2 45 40 b8 c6    	vfmadd231ps zmm16,zmm23,zmm22
  a3705f:	62 82 65 40 b8 c1    	vfmadd231ps zmm16,zmm19,zmm25
  a37065:	62 b1 44 40 59 c1    	vmulps zmm0,zmm23,zmm17
  a3706b:	62 92 3d 40 bc c1    	vfnmadd231ps zmm0,zmm24,zmm25
  a37071:	62 81 44 40 59 f9    	vmulps zmm23,zmm23,zmm25
  a37077:	62 a2 3d 40 bc fe    	vfnmadd231ps zmm23,zmm24,zmm22
  a3707d:	62 b2 2d 48 bc de    	vfnmadd231ps zmm3,zmm10,zmm22
  a37083:	62 b2 3d 48 bc d6    	vfnmadd231ps zmm2,zmm8,zmm22
  a37089:	62 22 0d 48 bc d6    	vfnmadd231ps zmm26,zmm14,zmm22
  a3708f:	62 b2 65 40 bc c6    	vfnmadd231ps zmm0,zmm19,zmm22
  a37095:	62 d2 75 40 b8 ca    	vfmadd231ps zmm1,zmm17,zmm10
  a3709b:	62 d2 75 40 b8 e8    	vfmadd231ps zmm5,zmm17,zmm8
  a370a1:	62 71 7c 48 10 6c 24 	vmovups zmm13,ZMMWORD PTR [rsp+0x600]
  a370a8:	18 
  a370a9:	62 61 14 48 58 ce    	vaddps zmm25,zmm13,zmm6
  a370af:	62 52 75 40 b8 fe    	vfmadd231ps zmm15,zmm17,zmm14
  a370b5:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x5c0]
  a370bc:	17 
  a370bd:	62 71 2c 48 58 f4    	vaddps zmm14,zmm10,zmm4
  a370c3:	62 a2 65 40 b8 f9    	vfmadd231ps zmm23,zmm19,zmm17
  a370c9:	62 51 34 40 5c c6    	vsubps zmm8,zmm25,zmm14
  a370cf:	62 71 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm8
  a370d6:	01 
  a370d7:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp-0x80]
  a370de:	fe 
  a370df:	62 61 3c 48 58 d9    	vaddps zmm27,zmm8,zmm1
  a370e5:	62 f1 3c 48 5c c9    	vsubps zmm1,zmm8,zmm1
  a370eb:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a370f2:	fe 
  a370f3:	62 e1 14 40 58 dd    	vaddps zmm19,zmm29,zmm5
  a370f9:	62 e1 14 40 5c f5    	vsubps zmm22,zmm29,zmm5
  a370ff:	62 41 24 48 5c c7    	vsubps zmm24,zmm11,zmm15
  a37105:	62 c1 04 48 58 e3    	vaddps zmm20,zmm15,zmm11
  a3710b:	62 31 1c 48 5c df    	vsubps zmm11,zmm12,zmm23
  a37111:	62 a1 1c 48 58 d7    	vaddps zmm18,zmm12,zmm23
  a37117:	62 f1 7c 48 10 4c 24 	vmovups zmm1,ZMMWORD PTR [rsp+0x340]
  a3711e:	0d 
  a3711f:	62 71 74 48 58 fb    	vaddps zmm15,zmm1,zmm3
  a37125:	62 e1 74 48 5c fb    	vsubps zmm23,zmm1,zmm3
  a3712b:	62 61 0c 40 58 ea    	vaddps zmm29,zmm30,zmm2
  a37131:	62 61 0c 40 5c f2    	vsubps zmm30,zmm30,zmm2
  a37137:	62 91 54 40 5c d2    	vsubps zmm2,zmm21,zmm26
  a3713d:	62 a1 2c 40 58 cd    	vaddps zmm17,zmm26,zmm21
  a37143:	62 71 44 48 5c c0    	vsubps zmm8,zmm7,zmm0
  a37149:	62 71 44 48 58 e0    	vaddps zmm12,zmm7,zmm0
  a3714f:	62 d1 04 40 5c c1    	vsubps zmm0,zmm31,zmm9
  a37155:	62 f1 14 48 5c fe    	vsubps zmm7,zmm13,zmm6
  a3715b:	62 b1 1c 40 5c d8    	vsubps zmm3,zmm28,zmm16
  a37161:	62 f1 2c 48 5c f4    	vsubps zmm6,zmm10,zmm4
  a37167:	62 f1 7c 48 5c cb    	vsubps zmm1,zmm0,zmm3
  a3716d:	62 91 34 48 58 e7    	vaddps zmm4,zmm9,zmm31
  a37173:	62 01 04 48 58 d5    	vaddps zmm26,zmm15,zmm29
  a37179:	62 a1 1c 40 58 c0    	vaddps zmm16,zmm28,zmm16
  a3717f:	62 d1 6c 48 58 e8    	vaddps zmm5,zmm2,zmm8
  a37185:	62 51 34 40 58 ce    	vaddps zmm9,zmm25,zmm14
  a3718b:	62 71 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm9
  a37192:	06 
  a37193:	62 a1 24 40 5c eb    	vsubps zmm21,zmm27,zmm19
  a37199:	62 71 7c 48 58 cb    	vaddps zmm9,zmm0,zmm3
  a3719f:	62 41 3c 40 5c cb    	vsubps zmm25,zmm24,zmm11
  a371a5:	62 01 04 48 5c ed    	vsubps zmm29,zmm15,zmm29
  a371ab:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp-0x80]
  a371b2:	fe 
  a371b3:	62 31 64 48 58 fe    	vaddps zmm15,zmm3,zmm22
  a371b9:	62 51 6c 48 5c c0    	vsubps zmm8,zmm2,zmm8
  a371bf:	62 b1 5c 40 58 c2    	vaddps zmm0,zmm20,zmm18
  a371c5:	62 b1 24 40 58 d3    	vaddps zmm2,zmm27,zmm19
  a371cb:	62 f1 7c 48 11 54 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm2
  a371d2:	09 
  a371d3:	62 81 44 40 5c de    	vsubps zmm19,zmm23,zmm30
  a371d9:	62 41 3c 40 58 e3    	vaddps zmm28,zmm24,zmm11
  a371df:	62 41 74 40 5c fc    	vsubps zmm31,zmm17,zmm12
  a371e5:	62 a1 64 48 5c f6    	vsubps zmm22,zmm3,zmm22
  a371eb:	62 71 44 48 58 ee    	vaddps zmm13,zmm7,zmm6
  a371f1:	62 21 5c 40 5c c2    	vsubps zmm24,zmm20,zmm18
  a371f7:	62 b1 5c 48 58 d0    	vaddps zmm2,zmm4,zmm16
  a371fd:	62 01 44 40 58 de    	vaddps zmm27,zmm23,zmm30
  a37203:	62 71 7c 48 10 5c 24 	vmovups zmm11,ZMMWORD PTR [rsp+0x200]
  a3720a:	08 
  a3720b:	62 71 7c 48 10 74 24 	vmovups zmm14,ZMMWORD PTR [rsp+0x100]
  a37212:	04 
  a37213:	62 c1 24 48 5c fe    	vsubps zmm23,zmm11,zmm14
  a37219:	62 51 74 40 58 e4    	vaddps zmm12,zmm17,zmm12
  a3721f:	62 71 7c 48 10 54 24 	vmovups zmm10,ZMMWORD PTR [rsp+0x1c0]
  a37226:	07 
  a37227:	62 e1 7c 48 10 4c 24 	vmovups zmm17,ZMMWORD PTR [rsp+0x380]
  a3722e:	0e 
  a3722f:	62 b1 2c 48 5c d9    	vsubps zmm3,zmm10,zmm17
  a37235:	62 61 44 48 5c f6    	vsubps zmm30,zmm7,zmm6
  a3723b:	62 a1 5c 48 5c c0    	vsubps zmm16,zmm4,zmm16
  a37241:	62 51 24 48 58 f6    	vaddps zmm14,zmm11,zmm14
  a37247:	62 b1 2c 48 58 e1    	vaddps zmm4,zmm10,zmm17
  a3724d:	62 f1 7c 48 28 3d 29 	vmovaps zmm7,ZMMWORD PTR [rip+0xffffffffff659f29]        # 91180 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e630>
  a37254:	9f 65 ff 
  a37257:	62 d1 7c 48 28 f6    	vmovaps zmm6,zmm14
  a3725d:	62 f2 45 48 7f f4    	vpermt2ps zmm6,zmm7,zmm4
  a37263:	62 f1 7c 48 11 34 24 	vmovups ZMMWORD PTR [rsp],zmm6
  a3726a:	62 f1 0c 48 15 f4    	vunpckhps zmm6,zmm14,zmm4
  a37270:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp-0x80],zmm6
  a37277:	fe 
  a37278:	62 f1 0c 48 14 f4    	vunpcklps zmm6,zmm14,zmm4
  a3727e:	62 f1 7c 48 11 74 24 	vmovups ZMMWORD PTR [rsp+0x140],zmm6
  a37285:	05 
  a37286:	62 e1 7c 28 28 25 30 	vmovaps ymm20,YMMWORD PTR [rip+0xffffffffff659f30]        # 911c0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1e670>
  a3728d:	9f 65 ff 
  a37290:	62 72 5d 40 7f f4    	vpermt2ps zmm14,zmm20,zmm4
  a37296:	62 71 7c 48 10 5c 24 	vmovups zmm11,ZMMWORD PTR [rsp+0x40]
  a3729d:	01 
  a3729e:	62 d1 7c 48 28 e3    	vmovaps zmm4,zmm11
  a372a4:	62 f2 45 48 7f e1    	vpermt2ps zmm4,zmm7,zmm1
  a372aa:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0xc0],zmm4
  a372b1:	03 
  a372b2:	62 f1 24 48 15 e1    	vunpckhps zmm4,zmm11,zmm1
  a372b8:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp-0x40],zmm4
  a372bf:	ff 
  a372c0:	62 f1 24 48 14 e1    	vunpcklps zmm4,zmm11,zmm1
  a372c6:	62 f1 7c 48 11 64 24 	vmovups ZMMWORD PTR [rsp+0x80],zmm4
  a372cd:	02 
  a372ce:	62 72 5d 40 7f d9    	vpermt2ps zmm11,zmm20,zmm1
  a372d4:	62 91 7c 48 28 e2    	vmovaps zmm4,zmm26
  a372da:	62 f2 45 48 7f e5    	vpermt2ps zmm4,zmm7,zmm5
  a372e0:	62 f1 2c 40 15 cd    	vunpckhps zmm1,zmm26,zmm5
  a372e6:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x40],zmm1
  a372ed:	01 
  a372ee:	62 f1 2c 40 14 cd    	vunpcklps zmm1,zmm26,zmm5
  a372f4:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x300],zmm1
  a372fb:	0c 
  a372fc:	62 62 5d 40 7f d5    	vpermt2ps zmm26,zmm20,zmm5
  a37302:	62 31 7c 48 28 d5    	vmovaps zmm10,zmm21
  a37308:	62 12 45 48 7f d1    	vpermt2ps zmm10,zmm7,zmm25
  a3730e:	62 91 54 40 15 c9    	vunpckhps zmm1,zmm21,zmm25
  a37314:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x2c0],zmm1
  a3731b:	0b 
  a3731c:	62 91 54 40 14 c9    	vunpcklps zmm1,zmm21,zmm25
  a37322:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x280],zmm1
  a37329:	0a 
  a3732a:	62 82 5d 40 7f e9    	vpermt2ps zmm21,zmm20,zmm25
  a37330:	62 41 7c 48 28 cf    	vmovaps zmm25,zmm15
  a37336:	62 62 45 48 7f c8    	vpermt2ps zmm25,zmm7,zmm0
  a3733c:	62 f1 04 48 15 c8    	vunpckhps zmm1,zmm15,zmm0
  a37342:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x400],zmm1
  a37349:	10 
  a3734a:	62 f1 04 48 14 c8    	vunpcklps zmm1,zmm15,zmm0
  a37350:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x3c0],zmm1
  a37357:	0f 
  a37358:	62 72 5d 40 7f f8    	vpermt2ps zmm15,zmm20,zmm0
  a3735e:	62 a1 7c 48 28 d3    	vmovaps zmm18,zmm19
  a37364:	62 82 45 48 7f d7    	vpermt2ps zmm18,zmm7,zmm31
  a3736a:	62 91 64 40 15 c7    	vunpckhps zmm0,zmm19,zmm31
  a37370:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x200],zmm0
  a37377:	08 
  a37378:	62 91 64 40 14 c7    	vunpcklps zmm0,zmm19,zmm31
  a3737e:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x100],zmm0
  a37385:	04 
  a37386:	62 82 5d 40 7f df    	vpermt2ps zmm19,zmm20,zmm31
  a3738c:	62 41 7c 48 28 fd    	vmovaps zmm31,zmm13
  a37392:	62 62 45 48 7f fa    	vpermt2ps zmm31,zmm7,zmm2
  a37398:	62 f1 14 48 15 c2    	vunpckhps zmm0,zmm13,zmm2
  a3739e:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x1c0],zmm0
  a373a5:	07 
  a373a6:	62 f1 14 48 14 c2    	vunpcklps zmm0,zmm13,zmm2
  a373ac:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x380],zmm0
  a373b3:	0e 
  a373b4:	62 72 5d 40 7f ea    	vpermt2ps zmm13,zmm20,zmm2
  a373ba:	62 b1 7c 48 28 d7    	vmovaps zmm2,zmm23
  a373c0:	62 f2 45 48 7f d3    	vpermt2ps zmm2,zmm7,zmm3
  a373c6:	62 f1 44 40 15 c3    	vunpckhps zmm0,zmm23,zmm3
  a373cc:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x640],zmm0
  a373d3:	19 
  a373d4:	62 f1 44 40 14 c3    	vunpcklps zmm0,zmm23,zmm3
  a373da:	62 f1 7c 48 11 44 24 	vmovups ZMMWORD PTR [rsp+0x600],zmm0
  a373e1:	18 
  a373e2:	62 e2 5d 40 7f fb    	vpermt2ps zmm23,zmm20,zmm3
  a373e8:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x180]
  a373ef:	06 
  a373f0:	62 f1 7c 48 28 f0    	vmovaps zmm6,zmm0
  a373f6:	62 d2 45 48 7f f1    	vpermt2ps zmm6,zmm7,zmm9
  a373fc:	62 d1 7c 48 15 c9    	vunpckhps zmm1,zmm0,zmm9
  a37402:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x5c0],zmm1
  a37409:	17 
  a3740a:	62 d1 7c 48 14 c9    	vunpcklps zmm1,zmm0,zmm9
  a37410:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x580],zmm1
  a37417:	16 
  a37418:	62 d2 5d 40 7f c1    	vpermt2ps zmm0,zmm20,zmm9
  a3741e:	62 e1 7c 48 28 c8    	vmovaps zmm17,zmm0
  a37424:	62 91 7c 48 28 c5    	vmovaps zmm0,zmm29
  a3742a:	62 d2 45 48 7f c0    	vpermt2ps zmm0,zmm7,zmm8
  a37430:	62 d1 14 40 15 c8    	vunpckhps zmm1,zmm29,zmm8
  a37436:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x180],zmm1
  a3743d:	06 
  a3743e:	62 d1 14 40 14 c8    	vunpcklps zmm1,zmm29,zmm8
  a37444:	62 f1 7c 48 11 4c 24 	vmovups ZMMWORD PTR [rsp+0x340],zmm1
  a3744b:	0d 
  a3744c:	62 42 5d 40 7f e8    	vpermt2ps zmm29,zmm20,zmm8
  a37452:	62 f1 7c 48 10 5c 24 	vmovups zmm3,ZMMWORD PTR [rsp+0x240]
  a37459:	09 
  a3745a:	62 f1 7c 48 28 cb    	vmovaps zmm1,zmm3
  a37460:	62 92 45 48 7f cc    	vpermt2ps zmm1,zmm7,zmm28
  a37466:	62 91 64 48 15 ec    	vunpckhps zmm5,zmm3,zmm28
  a3746c:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x540],zmm5
  a37473:	15 
  a37474:	62 91 64 48 14 ec    	vunpcklps zmm5,zmm3,zmm28
  a3747a:	62 f1 7c 48 11 6c 24 	vmovups ZMMWORD PTR [rsp+0x500],zmm5
  a37481:	14 
  a37482:	62 92 5d 40 7f dc    	vpermt2ps zmm3,zmm20,zmm28
  a37488:	62 71 7c 48 28 cb    	vmovaps zmm9,zmm3
  a3748e:	62 21 7c 48 28 e6    	vmovaps zmm28,zmm22
  a37494:	62 02 45 48 7f e0    	vpermt2ps zmm28,zmm7,zmm24
  a3749a:	62 91 4c 40 15 d8    	vunpckhps zmm3,zmm22,zmm24
  a374a0:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x240],zmm3
  a374a7:	09 
  a374a8:	62 91 4c 40 14 d8    	vunpcklps zmm3,zmm22,zmm24
  a374ae:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x4c0],zmm3
  a374b5:	13 
  a374b6:	62 82 5d 40 7f f0    	vpermt2ps zmm22,zmm20,zmm24
  a374bc:	62 01 7c 48 28 c3    	vmovaps zmm24,zmm27
  a374c2:	62 42 45 48 7f c4    	vpermt2ps zmm24,zmm7,zmm12
  a374c8:	62 d1 24 40 15 dc    	vunpckhps zmm3,zmm27,zmm12
  a374ce:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x480],zmm3
  a374d5:	12 
  a374d6:	62 d1 24 40 14 dc    	vunpcklps zmm3,zmm27,zmm12
  a374dc:	62 f1 7c 48 11 5c 24 	vmovups ZMMWORD PTR [rsp+0x440],zmm3
  a374e3:	11 
  a374e4:	62 42 5d 40 7f dc    	vpermt2ps zmm27,zmm20,zmm12
  a374ea:	62 b2 0d 40 77 f8    	vpermi2ps zmm7,zmm30,zmm16
  a374f0:	62 b1 0c 40 15 e8    	vunpckhps zmm5,zmm30,zmm16
  a374f6:	62 b1 0c 40 14 d8    	vunpcklps zmm3,zmm30,zmm16
  a374fc:	62 22 5d 40 7f f0    	vpermt2ps zmm30,zmm20,zmm16
  a37502:	62 71 7c 48 10 04 24 	vmovups zmm8,ZMMWORD PTR [rsp]
  a37509:	62 71 7c 48 11 06    	vmovups ZMMWORD PTR [rsi],zmm8
  a3750f:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp+0x140]
  a37516:	05 
  a37517:	62 73 7d 48 19 46 06 	vextractf32x4 XMMWORD PTR [rsi+0x60],zmm8,0x3
  a3751e:	03 
  a3751f:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp-0x80]
  a37526:	fe 
  a37527:	62 53 7d 48 19 c0 03 	vextractf32x4 xmm8,zmm8,0x3
  a3752e:	c5 78 13 46 70       	vmovlps QWORD PTR [rsi+0x70],xmm8
  a37533:	c5 7c 11 76 40       	vmovups YMMWORD PTR [rsi+0x40],ymm14
  a37538:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp+0xc0]
  a3753f:	03 
  a37540:	62 71 7c 48 11 86 78 	vmovups ZMMWORD PTR [rsi+0x78],zmm8
  a37547:	00 00 00 
  a3754a:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp+0x80]
  a37551:	02 
  a37552:	62 73 7d 48 19 86 d8 	vextractf32x4 XMMWORD PTR [rsi+0xd8],zmm8,0x3
  a37559:	00 00 00 03 
  a3755d:	62 71 7c 48 10 44 24 	vmovups zmm8,ZMMWORD PTR [rsp-0x40]
  a37564:	ff 
  a37565:	62 53 7d 48 19 c0 03 	vextractf32x4 xmm8,zmm8,0x3
  a3756c:	c5 78 13 86 e8 00 00 	vmovlps QWORD PTR [rsi+0xe8],xmm8
  a37573:	00 
  a37574:	c5 7c 11 9e b8 00 00 	vmovups YMMWORD PTR [rsi+0xb8],ymm11
  a3757b:	00 
  a3757c:	62 f1 7c 48 11 a6 f0 	vmovups ZMMWORD PTR [rsi+0xf0],zmm4
  a37583:	00 00 00 
  a37586:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x300]
  a3758d:	0c 
  a3758e:	62 f3 7d 48 19 66 15 	vextractf32x4 XMMWORD PTR [rsi+0x150],zmm4,0x3
  a37595:	03 
  a37596:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x40]
  a3759d:	01 
  a3759e:	62 f3 7d 48 19 e4 03 	vextractf32x4 xmm4,zmm4,0x3
  a375a5:	c5 f8 13 a6 60 01 00 	vmovlps QWORD PTR [rsi+0x160],xmm4
  a375ac:	00 
  a375ad:	62 61 7c 28 11 96 30 	vmovups YMMWORD PTR [rsi+0x130],ymm26
  a375b4:	01 00 00 
  a375b7:	62 71 7c 48 11 96 68 	vmovups ZMMWORD PTR [rsi+0x168],zmm10
  a375be:	01 00 00 
  a375c1:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x280]
  a375c8:	0a 
  a375c9:	62 f3 7d 48 19 a6 c8 	vextractf32x4 XMMWORD PTR [rsi+0x1c8],zmm4,0x3
  a375d0:	01 00 00 03 
  a375d4:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x2c0]
  a375db:	0b 
  a375dc:	62 f3 7d 48 19 e4 03 	vextractf32x4 xmm4,zmm4,0x3
  a375e3:	c5 f8 13 a6 d8 01 00 	vmovlps QWORD PTR [rsi+0x1d8],xmm4
  a375ea:	00 
  a375eb:	62 e1 7c 28 11 ae a8 	vmovups YMMWORD PTR [rsi+0x1a8],ymm21
  a375f2:	01 00 00 
  a375f5:	62 61 7c 48 11 8e e0 	vmovups ZMMWORD PTR [rsi+0x1e0],zmm25
  a375fc:	01 00 00 
  a375ff:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x3c0]
  a37606:	0f 
  a37607:	62 f3 7d 48 19 66 24 	vextractf32x4 XMMWORD PTR [rsi+0x240],zmm4,0x3
  a3760e:	03 
  a3760f:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x400]
  a37616:	10 
  a37617:	62 f3 7d 48 19 e4 03 	vextractf32x4 xmm4,zmm4,0x3
  a3761e:	c5 f8 13 a6 50 02 00 	vmovlps QWORD PTR [rsi+0x250],xmm4
  a37625:	00 
  a37626:	c5 7c 11 be 20 02 00 	vmovups YMMWORD PTR [rsi+0x220],ymm15
  a3762d:	00 
  a3762e:	62 e1 7c 48 11 96 58 	vmovups ZMMWORD PTR [rsi+0x258],zmm18
  a37635:	02 00 00 
  a37638:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x100]
  a3763f:	04 
  a37640:	62 f3 7d 48 19 a6 b8 	vextractf32x4 XMMWORD PTR [rsi+0x2b8],zmm4,0x3
  a37647:	02 00 00 03 
  a3764b:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x200]
  a37652:	08 
  a37653:	62 f3 7d 48 19 e4 03 	vextractf32x4 xmm4,zmm4,0x3
  a3765a:	c5 f8 13 a6 c8 02 00 	vmovlps QWORD PTR [rsi+0x2c8],xmm4
  a37661:	00 
  a37662:	62 e1 7c 28 11 9e 98 	vmovups YMMWORD PTR [rsi+0x298],ymm19
  a37669:	02 00 00 
  a3766c:	62 61 7c 48 11 be d0 	vmovups ZMMWORD PTR [rsi+0x2d0],zmm31
  a37673:	02 00 00 
  a37676:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x380]
  a3767d:	0e 
  a3767e:	62 f3 7d 48 19 66 33 	vextractf32x4 XMMWORD PTR [rsi+0x330],zmm4,0x3
  a37685:	03 
  a37686:	62 f1 7c 48 10 64 24 	vmovups zmm4,ZMMWORD PTR [rsp+0x1c0]
  a3768d:	07 
  a3768e:	62 f3 7d 48 19 e4 03 	vextractf32x4 xmm4,zmm4,0x3
  a37695:	c5 f8 13 a6 40 03 00 	vmovlps QWORD PTR [rsi+0x340],xmm4
  a3769c:	00 
  a3769d:	c5 7c 11 ae 10 03 00 	vmovups YMMWORD PTR [rsi+0x310],ymm13
  a376a4:	00 
  a376a5:	62 f1 7c 48 11 96 48 	vmovups ZMMWORD PTR [rsi+0x348],zmm2
  a376ac:	03 00 00 
  a376af:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x600]
  a376b6:	18 
  a376b7:	62 f3 7d 48 19 96 a8 	vextractf32x4 XMMWORD PTR [rsi+0x3a8],zmm2,0x3
  a376be:	03 00 00 03 
  a376c2:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x640]
  a376c9:	19 
  a376ca:	62 f3 7d 48 19 d2 03 	vextractf32x4 xmm2,zmm2,0x3
  a376d1:	c5 f8 13 96 b8 03 00 	vmovlps QWORD PTR [rsi+0x3b8],xmm2
  a376d8:	00 
  a376d9:	62 e1 7c 28 11 be 88 	vmovups YMMWORD PTR [rsi+0x388],ymm23
  a376e0:	03 00 00 
  a376e3:	62 f1 7c 48 11 76 0f 	vmovups ZMMWORD PTR [rsi+0x3c0],zmm6
  a376ea:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x580]
  a376f1:	16 
  a376f2:	62 f3 7d 48 19 56 42 	vextractf32x4 XMMWORD PTR [rsi+0x420],zmm2,0x3
  a376f9:	03 
  a376fa:	62 f1 7c 48 10 54 24 	vmovups zmm2,ZMMWORD PTR [rsp+0x5c0]
  a37701:	17 
  a37702:	62 f3 7d 48 19 d2 03 	vextractf32x4 xmm2,zmm2,0x3
  a37709:	c5 f8 13 96 30 04 00 	vmovlps QWORD PTR [rsi+0x430],xmm2
  a37710:	00 
  a37711:	62 e1 7c 28 11 4e 20 	vmovups YMMWORD PTR [rsi+0x400],ymm17
  a37718:	62 f1 7c 48 11 86 38 	vmovups ZMMWORD PTR [rsi+0x438],zmm0
  a3771f:	04 00 00 
  a37722:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x340]
  a37729:	0d 
  a3772a:	62 f3 7d 48 19 86 98 	vextractf32x4 XMMWORD PTR [rsi+0x498],zmm0,0x3
  a37731:	04 00 00 03 
  a37735:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x180]
  a3773c:	06 
  a3773d:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a37744:	c5 f8 13 86 a8 04 00 	vmovlps QWORD PTR [rsi+0x4a8],xmm0
  a3774b:	00 
  a3774c:	62 61 7c 28 11 ae 78 	vmovups YMMWORD PTR [rsi+0x478],ymm29
  a37753:	04 00 00 
  a37756:	62 f1 7c 48 11 8e b0 	vmovups ZMMWORD PTR [rsi+0x4b0],zmm1
  a3775d:	04 00 00 
  a37760:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x500]
  a37767:	14 
  a37768:	62 f3 7d 48 19 46 51 	vextractf32x4 XMMWORD PTR [rsi+0x510],zmm0,0x3
  a3776f:	03 
  a37770:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x540]
  a37777:	15 
  a37778:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a3777f:	c5 f8 13 86 20 05 00 	vmovlps QWORD PTR [rsi+0x520],xmm0
  a37786:	00 
  a37787:	c5 7c 11 8e f0 04 00 	vmovups YMMWORD PTR [rsi+0x4f0],ymm9
  a3778e:	00 
  a3778f:	62 61 7c 48 11 a6 28 	vmovups ZMMWORD PTR [rsi+0x528],zmm28
  a37796:	05 00 00 
  a37799:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x4c0]
  a377a0:	13 
  a377a1:	62 f3 7d 48 19 86 88 	vextractf32x4 XMMWORD PTR [rsi+0x588],zmm0,0x3
  a377a8:	05 00 00 03 
  a377ac:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x240]
  a377b3:	09 
  a377b4:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a377bb:	c5 f8 13 86 98 05 00 	vmovlps QWORD PTR [rsi+0x598],xmm0
  a377c2:	00 
  a377c3:	62 e1 7c 28 11 b6 68 	vmovups YMMWORD PTR [rsi+0x568],ymm22
  a377ca:	05 00 00 
  a377cd:	62 61 7c 48 11 86 a0 	vmovups ZMMWORD PTR [rsi+0x5a0],zmm24
  a377d4:	05 00 00 
  a377d7:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x440]
  a377de:	11 
  a377df:	62 f3 7d 48 19 46 60 	vextractf32x4 XMMWORD PTR [rsi+0x600],zmm0,0x3
  a377e6:	03 
  a377e7:	62 f1 7c 48 10 44 24 	vmovups zmm0,ZMMWORD PTR [rsp+0x480]
  a377ee:	12 
  a377ef:	62 f3 7d 48 19 c0 03 	vextractf32x4 xmm0,zmm0,0x3
  a377f6:	c5 f8 13 86 10 06 00 	vmovlps QWORD PTR [rsi+0x610],xmm0
  a377fd:	00 
  a377fe:	62 61 7c 28 11 5e 2f 	vmovups YMMWORD PTR [rsi+0x5e0],ymm27
  a37805:	62 f1 7c 48 11 be 18 	vmovups ZMMWORD PTR [rsi+0x618],zmm7
  a3780c:	06 00 00 
  a3780f:	62 f3 7d 48 19 9e 78 	vextractf32x4 XMMWORD PTR [rsi+0x678],zmm3,0x3
  a37816:	06 00 00 03 
  a3781a:	62 f3 7d 48 19 e8 03 	vextractf32x4 xmm0,zmm5,0x3
  a37821:	c5 f8 13 86 88 06 00 	vmovlps QWORD PTR [rsi+0x688],xmm0
  a37828:	00 
  a37829:	62 61 7c 28 11 b6 58 	vmovups YMMWORD PTR [rsi+0x658],ymm30
  a37830:	06 00 00 
  a37833:	48 81 c4 08 07 00 00 	add    rsp,0x708
  a3783a:	c5 f8 77             	vzeroupper
  a3783d:	c3                   	ret
