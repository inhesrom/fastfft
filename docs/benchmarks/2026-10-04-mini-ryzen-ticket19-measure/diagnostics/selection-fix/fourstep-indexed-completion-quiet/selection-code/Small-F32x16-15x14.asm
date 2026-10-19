
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000a0c4c0 <<fastfft::isa::x86::F32x16 as fastfft::engine::small::SmallVector>::rectangle>:
  a0c4c0:	sub    rsp,0x6c8
  a0c4c7:	vmovups zmm25,ZMMWORD PTR [rdi]
  a0c4cd:	vmovups xmm0,XMMWORD PTR [rdi+0x60]
  a0c4d2:	vmovups ymm1,YMMWORD PTR [rdi+0x40]
  a0c4d7:	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x64],0x10
  a0c4de:	vbroadcastss xmm2,DWORD PTR [rdi+0x68]
  a0c4e4:	vblendps xmm0,xmm2,xmm0,0x3
  a0c4ea:	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x6c],0x30
  a0c4f1:	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a0c4f8:	mov    al,0x3f
  a0c4fa:	kmovd  k1,eax
  a0c4fe:	vexpandpd zmm0{k1}{z},zmm0
  a0c504:	vmovaps zmm19,ZMMWORD PTR [rip+0xffffffffff6827b2]        # 8ecc0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c170>
  a0c50e:	vmovaps zmm3,zmm25
  a0c514:	vpermt2ps zmm3,zmm19,zmm0
  a0c51a:	vmovaps zmm21,ZMMWORD PTR [rip+0xffffffffff6827dc]        # 8ed00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c1b0>
  a0c524:	vpermt2ps zmm25,zmm21,zmm0
  a0c52a:	vmovups zmm4,ZMMWORD PTR [rdi+0x70]
  a0c534:	vmovups xmm0,XMMWORD PTR [rdi+0xd0]
  a0c53c:	vinsertps xmm0,xmm0,DWORD PTR [rdi+0xd4],0x10
  a0c546:	vmovups ymm1,YMMWORD PTR [rdi+0xb0]
  a0c54e:	vbroadcastss xmm2,DWORD PTR [rdi+0xd8]
  a0c557:	vblendps xmm0,xmm2,xmm0,0x3
  a0c55d:	vinsertps xmm0,xmm0,DWORD PTR [rdi+0xdc],0x30
  a0c567:	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a0c56e:	vexpandpd zmm0{k1}{z},zmm0
  a0c574:	vmovaps zmm1,zmm4
  a0c57a:	vpermt2ps zmm1,zmm19,zmm0
  a0c580:	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a0c588:	vpermt2ps zmm4,zmm21,zmm0
  a0c58e:	vmovups ZMMWORD PTR [rsp+0xc0],zmm4
  a0c596:	vmovups xmm0,XMMWORD PTR [rdi+0x140]
  a0c59e:	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x144],0x10
  a0c5a8:	vbroadcastss xmm1,DWORD PTR [rdi+0x148]
  a0c5b1:	vmovups zmm2,ZMMWORD PTR [rdi+0xe0]
  a0c5bb:	vblendps xmm0,xmm1,xmm0,0x3
  a0c5c1:	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x14c],0x30
  a0c5cb:	vmovups ymm1,YMMWORD PTR [rdi+0x120]
  a0c5d3:	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a0c5da:	vexpandpd zmm0{k1}{z},zmm0
  a0c5e0:	vmovaps zmm31,zmm2
  a0c5e6:	vpermt2ps zmm31,zmm19,zmm0
  a0c5ec:	vpermt2ps zmm2,zmm21,zmm0
  a0c5f2:	vmovaps zmm7,zmm2
  a0c5f8:	vmovups ZMMWORD PTR [rsp+0x480],zmm2
  a0c600:	vmovups zmm4,ZMMWORD PTR [rdi+0x150]
  a0c60a:	vmovups xmm0,XMMWORD PTR [rdi+0x1b0]
  a0c612:	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x1b4],0x10
  a0c61c:	vbroadcastss xmm1,DWORD PTR [rdi+0x1b8]
  a0c625:	vmovups ymm2,YMMWORD PTR [rdi+0x190]
  a0c62d:	vblendps xmm0,xmm1,xmm0,0x3
  a0c633:	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x1bc],0x30
  a0c63d:	vinsertf32x4 zmm0,zmm2,xmm0,0x2
  a0c644:	vexpandpd zmm0{k1}{z},zmm0
  a0c64a:	vmovaps zmm1,zmm4
  a0c650:	vpermt2ps zmm1,zmm19,zmm0
  a0c656:	vmovaps zmm27,zmm1
  a0c65c:	vpermt2ps zmm4,zmm21,zmm0
  a0c662:	vmovaps zmm10,zmm4
  a0c668:	vmovups ZMMWORD PTR [rsp+0x400],zmm4
  a0c670:	vmovups zmm4,ZMMWORD PTR [rdi+0x1c0]
  a0c677:	vmovups xmm0,XMMWORD PTR [rdi+0x220]
  a0c67f:	vmovups ymm1,YMMWORD PTR [rdi+0x200]
  a0c687:	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x224],0x10
  a0c691:	vbroadcastss xmm2,DWORD PTR [rdi+0x228]
  a0c69a:	vblendps xmm0,xmm2,xmm0,0x3
  a0c6a0:	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x22c],0x30
  a0c6aa:	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a0c6b1:	vexpandpd zmm0{k1}{z},zmm0
  a0c6b7:	vmovaps zmm1,zmm4
  a0c6bd:	vpermt2ps zmm1,zmm19,zmm0
  a0c6c3:	vmovups ZMMWORD PTR [rsp],zmm1
  a0c6ca:	vpermt2ps zmm4,zmm21,zmm0
  a0c6d0:	vmovups ZMMWORD PTR [rsp+0x40],zmm4
  a0c6d8:	vmovups zmm8,ZMMWORD PTR [rdi+0x230]
  a0c6e2:	vmovups xmm0,XMMWORD PTR [rdi+0x290]
  a0c6ea:	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x294],0x10
  a0c6f4:	vmovups ymm1,YMMWORD PTR [rdi+0x270]
  a0c6fc:	vbroadcastss xmm4,DWORD PTR [rdi+0x298]
  a0c705:	vblendps xmm0,xmm4,xmm0,0x3
  a0c70b:	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x29c],0x30
  a0c715:	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a0c71c:	vexpandpd zmm0{k1}{z},zmm0
  a0c722:	vmovaps zmm13,zmm8
  a0c728:	vpermt2ps zmm13,zmm19,zmm0
  a0c72e:	vpermt2ps zmm8,zmm21,zmm0
  a0c734:	vmovups xmm0,XMMWORD PTR [rdi+0x300]
  a0c73c:	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x304],0x10
  a0c746:	vbroadcastss xmm1,DWORD PTR [rdi+0x308]
  a0c74f:	vmovups zmm4,ZMMWORD PTR [rdi+0x2a0]
  a0c759:	vblendps xmm0,xmm1,xmm0,0x3
  a0c75f:	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x30c],0x30
  a0c769:	vmovups ymm1,YMMWORD PTR [rdi+0x2e0]
  a0c771:	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a0c778:	vexpandpd zmm0{k1}{z},zmm0
  a0c77e:	vmovaps zmm1,zmm4
  a0c784:	vpermt2ps zmm1,zmm19,zmm0
  a0c78a:	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a0c792:	vpermt2ps zmm4,zmm21,zmm0
  a0c798:	vmovups ZMMWORD PTR [rsp+0x300],zmm4
  a0c7a0:	vmovups zmm14,ZMMWORD PTR [rdi+0x310]
  a0c7aa:	vmovups xmm0,XMMWORD PTR [rdi+0x370]
  a0c7b2:	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x374],0x10
  a0c7bc:	vbroadcastss xmm1,DWORD PTR [rdi+0x378]
  a0c7c5:	vmovups ymm4,YMMWORD PTR [rdi+0x350]
  a0c7cd:	vblendps xmm0,xmm1,xmm0,0x3
  a0c7d3:	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x37c],0x30
  a0c7dd:	vinsertf32x4 zmm0,zmm4,xmm0,0x2
  a0c7e4:	vexpandpd zmm0{k1}{z},zmm0
  a0c7ea:	vmovaps zmm29,zmm14
  a0c7f0:	vpermt2ps zmm29,zmm19,zmm0
  a0c7f6:	vpermt2ps zmm14,zmm21,zmm0
  a0c7fc:	vmovups ZMMWORD PTR [rsp+0x180],zmm14
  a0c804:	vmovups zmm15,ZMMWORD PTR [rdi+0x380]
  a0c80b:	vmovups xmm0,XMMWORD PTR [rdi+0x3e0]
  a0c813:	vmovups ymm1,YMMWORD PTR [rdi+0x3c0]
  a0c81b:	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x3e4],0x10
  a0c825:	vbroadcastss xmm4,DWORD PTR [rdi+0x3e8]
  a0c82e:	vblendps xmm0,xmm4,xmm0,0x3
  a0c834:	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x3ec],0x30
  a0c83e:	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a0c845:	vexpandpd zmm0{k1}{z},zmm0
  a0c84b:	vmovaps zmm1,zmm15
  a0c851:	vpermt2ps zmm1,zmm19,zmm0
  a0c857:	vmovaps zmm11,zmm1
  a0c85d:	vmovups ZMMWORD PTR [rsp+0x380],zmm1
  a0c865:	vpermt2ps zmm15,zmm21,zmm0
  a0c86b:	vmovaps zmm17,zmm15
  a0c871:	vmovups ZMMWORD PTR [rsp+0x2c0],zmm15
  a0c879:	vmovups zmm15,ZMMWORD PTR [rdi+0x3f0]
  a0c883:	vmovups xmm0,XMMWORD PTR [rdi+0x450]
  a0c88b:	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x454],0x10
  a0c895:	vmovups ymm1,YMMWORD PTR [rdi+0x430]
  a0c89d:	vbroadcastss xmm4,DWORD PTR [rdi+0x458]
  a0c8a6:	vblendps xmm0,xmm4,xmm0,0x3
  a0c8ac:	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x45c],0x30
  a0c8b6:	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a0c8bd:	vexpandpd zmm0{k1}{z},zmm0
  a0c8c3:	vmovaps zmm1,zmm15
  a0c8c9:	vpermt2ps zmm1,zmm19,zmm0
  a0c8cf:	vmovups ZMMWORD PTR [rsp+0x80],zmm1
  a0c8d7:	vpermt2ps zmm15,zmm21,zmm0
  a0c8dd:	vmovups ZMMWORD PTR [rsp+0x280],zmm15
  a0c8e5:	vmovups xmm0,XMMWORD PTR [rdi+0x4c0]
  a0c8ed:	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x4c4],0x10
  a0c8f7:	vbroadcastss xmm1,DWORD PTR [rdi+0x4c8]
  a0c900:	vmovups zmm26,ZMMWORD PTR [rdi+0x460]
  a0c90a:	vblendps xmm0,xmm1,xmm0,0x3
  a0c910:	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x4cc],0x30
  a0c91a:	vmovups ymm1,YMMWORD PTR [rdi+0x4a0]
  a0c922:	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a0c929:	vexpandpd zmm0{k1}{z},zmm0
  a0c92f:	vmovaps zmm16,zmm26
  a0c935:	vpermt2ps zmm16,zmm19,zmm0
  a0c93b:	vpermt2ps zmm26,zmm21,zmm0
  a0c941:	vmovups zmm9,ZMMWORD PTR [rdi+0x4d0]
  a0c94b:	vmovups xmm0,XMMWORD PTR [rdi+0x530]
  a0c953:	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x534],0x10
  a0c95d:	vbroadcastss xmm1,DWORD PTR [rdi+0x538]
  a0c966:	vmovups ymm4,YMMWORD PTR [rdi+0x510]
  a0c96e:	vblendps xmm0,xmm1,xmm0,0x3
  a0c974:	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x53c],0x30
  a0c97e:	vinsertf32x4 zmm0,zmm4,xmm0,0x2
  a0c985:	vexpandpd zmm0{k1}{z},zmm0
  a0c98b:	vmovaps zmm5,zmm9
  a0c991:	vpermt2ps zmm5,zmm19,zmm0
  a0c997:	vpermt2ps zmm9,zmm21,zmm0
  a0c99d:	vmovups zmm15,ZMMWORD PTR [rdi+0x540]
  a0c9a4:	vmovups xmm0,XMMWORD PTR [rdi+0x5a0]
  a0c9ac:	vmovups ymm1,YMMWORD PTR [rdi+0x580]
  a0c9b4:	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x5a4],0x10
  a0c9be:	vbroadcastss xmm4,DWORD PTR [rdi+0x5a8]
  a0c9c7:	vblendps xmm0,xmm4,xmm0,0x3
  a0c9cd:	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x5ac],0x30
  a0c9d7:	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a0c9de:	vexpandpd zmm0{k1}{z},zmm0
  a0c9e4:	vmovaps zmm24,zmm15
  a0c9ea:	vpermt2ps zmm24,zmm19,zmm0
  a0c9f0:	vpermt2ps zmm15,zmm21,zmm0
  a0c9f6:	vmovups ZMMWORD PTR [rsp+0x440],zmm15
  a0c9fe:	vmovups zmm23,ZMMWORD PTR [rdi+0x5b0]
  a0ca08:	vmovups xmm0,XMMWORD PTR [rdi+0x610]
  a0ca10:	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x614],0x10
  a0ca1a:	vmovups ymm1,YMMWORD PTR [rdi+0x5f0]
  a0ca22:	vbroadcastss xmm4,DWORD PTR [rdi+0x618]
  a0ca2b:	vblendps xmm0,xmm4,xmm0,0x3
  a0ca31:	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x61c],0x30
  a0ca3b:	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a0ca42:	vexpandpd zmm0{k1}{z},zmm0
  a0ca48:	vmovaps zmm1,zmm23
  a0ca4e:	vpermt2ps zmm1,zmm19,zmm0
  a0ca54:	vmovaps zmm6,zmm1
  a0ca5a:	vmovups ZMMWORD PTR [rsp+0x500],zmm1
  a0ca62:	vpermt2ps zmm23,zmm21,zmm0
  a0ca68:	vmovaps zmm4,zmm23
  a0ca6e:	vmovups ZMMWORD PTR [rsp+0x100],zmm23
  a0ca76:	vmovups xmm0,XMMWORD PTR [rdi+0x680]
  a0ca7e:	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x684],0x10
  a0ca88:	vbroadcastss xmm1,DWORD PTR [rdi+0x688]
  a0ca91:	vblendps xmm0,xmm1,xmm0,0x3
  a0ca97:	vmovups ymm1,YMMWORD PTR [rdi+0x660]
  a0ca9f:	vinsertps xmm0,xmm0,DWORD PTR [rdi+0x68c],0x30
  a0caa9:	vinsertf32x4 zmm0,zmm1,xmm0,0x2
  a0cab0:	vmovups zmm2,ZMMWORD PTR [rdi+0x620]
  a0caba:	vexpandpd zmm0{k1}{z},zmm0
  a0cac0:	vpermi2ps zmm19,zmm2,zmm0
  a0cac6:	vpermt2ps zmm2,zmm21,zmm0
  a0cacc:	vaddps zmm1,zmm17,zmm7
  a0cad2:	vbroadcastss zmm28,DWORD PTR [rip+0xffffffffff668c0c]        # 756e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b98>
  a0cadc:	vmovaps zmm0,zmm28
  a0cae2:	vfmadd213ps zmm0,zmm1,zmm8
  a0cae8:	vmovaps zmm17,zmm0
  a0caee:	vbroadcastss zmm23,DWORD PTR [rip+0xffffffffff668b4c]        # 75644 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2af4>
  a0caf8:	vaddps zmm0,zmm8,zmm1
  a0cafe:	vmovups ZMMWORD PTR [rsp+0x240],zmm0
  a0cb06:	vfnmadd231ps zmm8,zmm23,zmm1
  a0cb0c:	vmovups ZMMWORD PTR [rsp+0x1c0],zmm8
  a0cb14:	vaddps zmm1,zmm4,zmm14
  a0cb1a:	vmovaps zmm0,zmm28
  a0cb20:	vfmadd213ps zmm0,zmm1,zmm26
  a0cb26:	vaddps zmm4,zmm26,zmm1
  a0cb2c:	vmovups ZMMWORD PTR [rsp+0x140],zmm4
  a0cb34:	vfnmadd231ps zmm26,zmm23,zmm1
  a0cb3a:	vaddps zmm1,zmm10,zmm15
  a0cb40:	vmovaps zmm4,zmm28
  a0cb46:	vfmadd213ps zmm4,zmm1,zmm25
  a0cb4c:	vmovaps zmm8,zmm4
  a0cb52:	vaddps zmm4,zmm25,zmm1
  a0cb58:	vmovups ZMMWORD PTR [rsp+0x3c0],zmm4
  a0cb60:	vfnmadd231ps zmm25,zmm23,zmm1
  a0cb66:	vaddps zmm1,zmm11,zmm31
  a0cb6c:	vmovaps zmm30,zmm28
  a0cb72:	vmovaps zmm22,zmm13
  a0cb78:	vfmadd213ps zmm30,zmm1,zmm13
  a0cb7e:	vaddps zmm4,zmm13,zmm1
  a0cb84:	vmovups ZMMWORD PTR [rsp+0x340],zmm4
  a0cb8c:	vfnmadd231ps zmm22,zmm23,zmm1
  a0cb92:	vaddps zmm1,zmm6,zmm29
  a0cb98:	vmovaps zmm11,zmm28
  a0cb9e:	vmovaps zmm21,zmm16
  a0cba4:	vfmadd213ps zmm11,zmm1,zmm16
  a0cbaa:	vaddps zmm4,zmm16,zmm1
  a0cbb0:	vmovups ZMMWORD PTR [rsp+0x680],zmm4
  a0cbb8:	vfnmadd231ps zmm21,zmm23,zmm1
  a0cbbe:	vmovaps zmm16,zmm27
  a0cbc4:	vaddps zmm1,zmm27,zmm24
  a0cbca:	vmovaps zmm6,zmm28
  a0cbd0:	vmovaps zmm12,zmm3
  a0cbd6:	vfmadd213ps zmm6,zmm1,zmm3
  a0cbdc:	vaddps zmm27,zmm3,zmm1
  a0cbe2:	vfnmadd231ps zmm12,zmm1,zmm23
  a0cbe8:	vmovaps zmm15,zmm9
  a0cbee:	vmovaps zmm14,zmm2
  a0cbf4:	vaddps zmm1,zmm9,zmm2
  a0cbfa:	vfnmadd231ps zmm17,zmm1,zmm23
  a0cc00:	vmovups ZMMWORD PTR [rsp+0x580],zmm17
  a0cc08:	vmovups zmm17,ZMMWORD PTR [rsp+0xc0]
  a0cc10:	vmovups zmm13,ZMMWORD PTR [rsp+0x40]
  a0cc18:	vaddps zmm4,zmm17,zmm13
  a0cc1e:	vfnmadd231ps zmm0,zmm4,zmm23
  a0cc24:	vmovups ZMMWORD PTR [rsp+0x540],zmm0
  a0cc2c:	vmovups zmm20,ZMMWORD PTR [rsp+0x300]
  a0cc34:	vmovups zmm18,ZMMWORD PTR [rsp+0x280]
  a0cc3c:	vaddps zmm2,zmm20,zmm18
  a0cc42:	vfnmadd231ps zmm8,zmm2,zmm23
  a0cc48:	vmovups ZMMWORD PTR [rsp+0x200],zmm8
  a0cc50:	vmovaps zmm10,zmm5
  a0cc56:	vaddps zmm3,zmm5,zmm19
  a0cc5c:	vfnmadd231ps zmm30,zmm3,zmm23
  a0cc62:	vmovups zmm9,ZMMWORD PTR [rsp-0x40]
  a0cc6a:	vmovups zmm8,ZMMWORD PTR [rsp]
  a0cc71:	vaddps zmm5,zmm9,zmm8
  a0cc77:	vfnmadd231ps zmm11,zmm5,zmm23
  a0cc7d:	vmovups ZMMWORD PTR [rsp+0x4c0],zmm11
  a0cc85:	vmovups zmm11,ZMMWORD PTR [rsp-0x80]
  a0cc8d:	vmovups zmm7,ZMMWORD PTR [rsp+0x80]
  a0cc95:	vaddps zmm0,zmm11,zmm7
  a0cc9b:	vfnmadd231ps zmm6,zmm0,zmm23
  a0cca1:	vmovups ZMMWORD PTR [rsp+0x640],zmm6
  a0cca9:	vaddps zmm6,zmm1,ZMMWORD PTR [rsp+0x240]
  a0ccb1:	vmovups ZMMWORD PTR [rsp+0x600],zmm6
  a0ccb9:	vmovups zmm23,ZMMWORD PTR [rsp+0x1c0]
  a0ccc1:	vfmadd231ps zmm23,zmm28,zmm1
  a0ccc7:	vaddps zmm1,zmm4,ZMMWORD PTR [rsp+0x140]
  a0cccf:	vmovups ZMMWORD PTR [rsp+0x5c0],zmm1
  a0ccd7:	vfmadd231ps zmm26,zmm28,zmm4
  a0ccdd:	vaddps zmm1,zmm2,ZMMWORD PTR [rsp+0x3c0]
  a0cce5:	vmovups ZMMWORD PTR [rsp+0x3c0],zmm1
  a0cced:	vfmadd231ps zmm25,zmm28,zmm2
  a0ccf3:	vaddps zmm1,zmm3,ZMMWORD PTR [rsp+0x340]
  a0ccfb:	vmovups ZMMWORD PTR [rsp+0x240],zmm1
  a0cd03:	vfmadd231ps zmm22,zmm28,zmm3
  a0cd09:	vaddps zmm1,zmm27,zmm0
  a0cd0f:	vmovups ZMMWORD PTR [rsp+0x1c0],zmm1
  a0cd17:	vfmadd231ps zmm12,zmm0,zmm28
  a0cd1d:	vfmadd231ps zmm21,zmm28,zmm5
  a0cd23:	vaddps zmm0,zmm5,ZMMWORD PTR [rsp+0x680]
  a0cd2b:	vmovups ZMMWORD PTR [rsp+0x140],zmm0
  a0cd33:	vmovups zmm0,ZMMWORD PTR [rsp+0x380]
  a0cd3b:	vsubps zmm0,zmm0,zmm31
  a0cd41:	vsubps zmm2,zmm10,zmm19
  a0cd47:	vmovups zmm1,ZMMWORD PTR [rsp+0x500]
  a0cd4f:	vsubps zmm4,zmm1,zmm29
  a0cd55:	vsubps zmm5,zmm9,zmm8
  a0cd5b:	vsubps zmm27,zmm16,zmm24
  a0cd61:	vsubps zmm7,zmm11,zmm7
  a0cd67:	vmovups zmm1,ZMMWORD PTR [rsp+0x2c0]
  a0cd6f:	vsubps zmm8,zmm1,ZMMWORD PTR [rsp+0x480]
  a0cd77:	vsubps zmm11,zmm15,zmm14
  a0cd7d:	vmovups zmm1,ZMMWORD PTR [rsp+0x100]
  a0cd85:	vsubps zmm16,zmm1,ZMMWORD PTR [rsp+0x180]
  a0cd8d:	vsubps zmm19,zmm17,zmm13
  a0cd93:	vmovups zmm1,ZMMWORD PTR [rsp+0x400]
  a0cd9b:	vsubps zmm24,zmm1,ZMMWORD PTR [rsp+0x440]
  a0cda3:	vbroadcastss zmm28,DWORD PTR [rip+0xffffffffff6689ab]        # 75758 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2c08>
  a0cdad:	vsubps zmm29,zmm20,zmm18
  a0cdb3:	vmulps zmm9,zmm2,zmm28
  a0cdb9:	vbroadcastss zmm6,DWORD PTR [rip+0xffffffffff6685dd]        # 753a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2850>
  a0cdc3:	vfmadd231ps zmm9,zmm0,zmm6
  a0cdc9:	vmulps zmm3,zmm0,zmm28
  a0cdcf:	vfnmadd231ps zmm3,zmm6,zmm2
  a0cdd5:	vmulps zmm15,zmm5,zmm28
  a0cddb:	vfmadd231ps zmm15,zmm4,zmm6
  a0cde1:	vmulps zmm2,zmm4,zmm28
  a0cde7:	vfnmadd231ps zmm2,zmm6,zmm5
  a0cded:	vmulps zmm17,zmm7,zmm28
  a0cdf3:	vfmadd231ps zmm17,zmm27,zmm6
  a0cdf9:	vmulps zmm5,zmm27,zmm28
  a0cdff:	vfnmadd231ps zmm5,zmm6,zmm7
  a0ce05:	vmulps zmm27,zmm11,zmm28
  a0ce0b:	vfmadd231ps zmm27,zmm8,zmm6
  a0ce11:	vmulps zmm1,zmm8,zmm28
  a0ce17:	vfnmadd231ps zmm1,zmm6,zmm11
  a0ce1d:	vmulps zmm31,zmm19,zmm28
  a0ce23:	vfmadd231ps zmm31,zmm16,zmm6
  a0ce29:	vmulps zmm0,zmm16,zmm28
  a0ce2f:	vfnmadd231ps zmm0,zmm6,zmm19
  a0ce35:	vmulps zmm14,zmm29,zmm28
  a0ce3b:	vfmadd231ps zmm14,zmm24,zmm6
  a0ce41:	vmulps zmm7,zmm24,zmm28
  a0ce47:	vfnmadd231ps zmm7,zmm29,zmm6
  a0ce4d:	vsubps zmm4,zmm30,zmm27
  a0ce53:	vmovups zmm24,ZMMWORD PTR [rsp+0x4c0]
  a0ce5b:	vsubps zmm6,zmm24,zmm31
  a0ce61:	vsubps zmm8,zmm4,zmm6
  a0ce67:	vmovups ZMMWORD PTR [rsp],zmm8
  a0ce6e:	vaddps zmm4,zmm4,zmm6
  a0ce74:	vmovups ZMMWORD PTR [rsp-0x80],zmm4
  a0ce7c:	vmovups zmm10,ZMMWORD PTR [rsp+0x580]
  a0ce84:	vaddps zmm6,zmm10,zmm9
  a0ce8a:	vmovups zmm20,ZMMWORD PTR [rsp+0x540]
  a0ce92:	vaddps zmm16,zmm20,zmm15
  a0ce98:	vaddps zmm4,zmm6,zmm16
  a0ce9e:	vmovups ZMMWORD PTR [rsp+0x2c0],zmm4
  a0cea6:	vsubps zmm4,zmm6,zmm16
  a0ceac:	vmovups ZMMWORD PTR [rsp+0x40],zmm4
  a0ceb4:	vsubps zmm6,zmm22,zmm1
  a0ceba:	vsubps zmm16,zmm21,zmm0
  a0cec0:	vsubps zmm4,zmm6,zmm16
  a0cec6:	vmovups ZMMWORD PTR [rsp+0x80],zmm4
  a0cece:	vaddps zmm4,zmm6,zmm16
  a0ced4:	vmovups ZMMWORD PTR [rsp+0x300],zmm4
  a0cedc:	vaddps zmm6,zmm23,zmm3
  a0cee2:	vaddps zmm16,zmm26,zmm2
  a0cee8:	vaddps zmm4,zmm6,zmm16
  a0ceee:	vmovups ZMMWORD PTR [rsp+0x180],zmm4
  a0cef6:	vsubps zmm4,zmm6,zmm16
  a0cefc:	vmovups ZMMWORD PTR [rsp+0x100],zmm4
  a0cf04:	vaddps zmm4,zmm25,zmm5
  a0cf0a:	vmovups ZMMWORD PTR [rsp+0x440],zmm4
  a0cf12:	vsubps zmm4,zmm25,zmm5
  a0cf18:	vsubps zmm6,zmm23,zmm3
  a0cf1e:	vmovups ZMMWORD PTR [rsp+0x340],zmm6
  a0cf26:	vsubps zmm8,zmm26,zmm2
  a0cf2c:	vmovups ZMMWORD PTR [rsp+0x380],zmm8
  a0cf34:	vsubps zmm2,zmm12,zmm7
  a0cf3a:	vmovups ZMMWORD PTR [rsp+0x400],zmm2
  a0cf42:	vaddps zmm7,zmm7,zmm12
  a0cf48:	vaddps zmm29,zmm1,zmm22
  a0cf4e:	vaddps zmm19,zmm0,zmm21
  a0cf54:	vmovups zmm22,ZMMWORD PTR [rsp+0x600]
  a0cf5c:	vmovups zmm16,ZMMWORD PTR [rsp+0x5c0]
  a0cf64:	vaddps zmm11,zmm22,zmm16
  a0cf6a:	vmovups zmm1,ZMMWORD PTR [rsp+0x3c0]
  a0cf72:	vaddps zmm0,zmm1,zmm11
  a0cf78:	vmovups ZMMWORD PTR [rsp+0x280],zmm0
  a0cf80:	vbroadcastss zmm28,DWORD PTR [rip+0xffffffffff6684d6]        # 75460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2910>
  a0cf8a:	vfnmadd213ps zmm11,zmm28,zmm1
  a0cf90:	vmovups zmm5,ZMMWORD PTR [rsp+0x240]
  a0cf98:	vmovups zmm3,ZMMWORD PTR [rsp+0x140]
  a0cfa0:	vaddps zmm2,zmm5,zmm3
  a0cfa6:	vmovups zmm1,ZMMWORD PTR [rsp+0x1c0]
  a0cfae:	vaddps zmm0,zmm1,zmm2
  a0cfb4:	vmovups ZMMWORD PTR [rsp-0x40],zmm0
  a0cfbc:	vfnmadd213ps zmm2,zmm28,zmm1
  a0cfc2:	vaddps zmm13,zmm6,zmm8
  a0cfc8:	vaddps zmm0,zmm4,zmm13
  a0cfce:	vmovups ZMMWORD PTR [rsp+0x1c0],zmm0
  a0cfd6:	vfnmadd213ps zmm13,zmm28,zmm4
  a0cfdc:	vmovaps zmm4,zmm28
  a0cfe2:	vmovaps zmm23,zmm28
  a0cfe8:	vmovaps zmm0,zmm28
  a0cfee:	vmovaps zmm1,zmm28
  a0cff4:	vaddps zmm26,zmm29,zmm19
  a0cffa:	vmovaps zmm6,zmm28
  a0d000:	vmovaps zmm8,zmm28
  a0d006:	vfnmadd213ps zmm28,zmm26,zmm7
  a0d00c:	vaddps zmm7,zmm7,zmm26
  a0d012:	vmovups ZMMWORD PTR [rsp+0xc0],zmm7
  a0d01a:	vsubps zmm7,zmm10,zmm9
  a0d020:	vsubps zmm9,zmm20,zmm15
  a0d026:	vmovups zmm10,ZMMWORD PTR [rsp+0x200]
  a0d02e:	vaddps zmm20,zmm10,zmm17
  a0d034:	vsubps zmm25,zmm10,zmm17
  a0d03a:	vaddps zmm10,zmm27,zmm30
  a0d040:	vaddps zmm12,zmm31,zmm24
  a0d046:	vsubps zmm18,zmm10,zmm12
  a0d04c:	vaddps zmm30,zmm10,zmm12
  a0d052:	vmovups zmm12,ZMMWORD PTR [rsp+0x640]
  a0d05a:	vsubps zmm10,zmm12,zmm14
  a0d060:	vaddps zmm21,zmm14,zmm12
  a0d066:	vaddps zmm31,zmm7,zmm9
  a0d06c:	vsubps zmm7,zmm7,zmm9
  a0d072:	vsubps zmm9,zmm5,zmm3
  a0d078:	vsubps zmm17,zmm22,zmm16
  a0d07e:	vmovups zmm3,ZMMWORD PTR [rsp+0x2c0]
  a0d086:	vfnmadd213ps zmm4,zmm3,zmm20
  a0d08c:	vaddps zmm27,zmm20,zmm3
  a0d092:	vmovups zmm3,ZMMWORD PTR [rsp-0x80]
  a0d09a:	vfnmadd213ps zmm23,zmm3,zmm10
  a0d0a0:	vaddps zmm10,zmm10,zmm3
  a0d0a6:	vmovups ZMMWORD PTR [rsp-0x80],zmm10
  a0d0ae:	vmovups zmm15,ZMMWORD PTR [rsp+0x180]
  a0d0b6:	vmovups zmm14,ZMMWORD PTR [rsp+0x440]
  a0d0be:	vfnmadd213ps zmm0,zmm15,zmm14
  a0d0c4:	vbroadcastss zmm24,DWORD PTR [rip+0xffffffffff668206]        # 752d4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2784>
  a0d0ce:	vmulps zmm10,zmm24,ZMMWORD PTR [rsp+0x80]
  a0d0d6:	vsubps zmm20,zmm0,zmm10
  a0d0dc:	vaddps zmm0,zmm0,zmm10
  a0d0e2:	vmovups ZMMWORD PTR [rsp+0x480],zmm0
  a0d0ea:	vmovups zmm12,ZMMWORD PTR [rsp+0x300]
  a0d0f2:	vmovups zmm5,ZMMWORD PTR [rsp+0x400]
  a0d0fa:	vfnmadd213ps zmm1,zmm12,zmm5
  a0d100:	vmulps zmm0,zmm24,ZMMWORD PTR [rsp+0x100]
  a0d108:	vaddps zmm26,zmm1,zmm0
  a0d10e:	vsubps zmm0,zmm1,zmm0
  a0d114:	vmovups ZMMWORD PTR [rsp+0x80],zmm0
  a0d11c:	vsubps zmm0,zmm29,zmm19
  a0d122:	vmovups zmm1,ZMMWORD PTR [rsp+0x340]
  a0d12a:	vsubps zmm1,zmm1,ZMMWORD PTR [rsp+0x380]
  a0d132:	vmulps zmm16,zmm24,ZMMWORD PTR [rsp]
  a0d139:	vmulps zmm19,zmm24,ZMMWORD PTR [rsp+0x40]
  a0d141:	vmulps zmm22,zmm18,zmm24
  a0d147:	vmulps zmm3,zmm7,zmm24
  a0d14d:	vmulps zmm7,zmm9,zmm24
  a0d153:	vmulps zmm9,zmm17,zmm24
  a0d159:	vmulps zmm0,zmm0,zmm24
  a0d15f:	vmulps zmm1,zmm1,zmm24
  a0d165:	vfnmadd213ps zmm6,zmm31,zmm25
  a0d16b:	vaddps zmm31,zmm25,zmm31
  a0d171:	vfnmadd213ps zmm8,zmm30,zmm21
  a0d177:	vaddps zmm24,zmm21,zmm30
  a0d17d:	vsubps zmm25,zmm11,zmm7
  a0d183:	vaddps zmm30,zmm11,zmm7
  a0d189:	vaddps zmm7,zmm9,zmm2
  a0d18f:	vmovups ZMMWORD PTR [rsp],zmm7
  a0d196:	vsubps zmm17,zmm2,zmm9
  a0d19c:	vaddps zmm10,zmm16,zmm4
  a0d1a2:	vsubps zmm9,zmm4,zmm16
  a0d1a8:	vsubps zmm11,zmm23,zmm19
  a0d1ae:	vaddps zmm2,zmm23,zmm19
  a0d1b4:	vmovups ZMMWORD PTR [rsp+0x2c0],zmm2
  a0d1bc:	vaddps zmm2,zmm14,zmm15
  a0d1c2:	vaddps zmm15,zmm22,zmm6
  a0d1c8:	vaddps zmm4,zmm5,zmm12
  a0d1ce:	vmovups ZMMWORD PTR [rsp+0x40],zmm4
  a0d1d6:	vsubps zmm19,zmm13,zmm0
  a0d1dc:	vaddps zmm4,zmm13,zmm0
  a0d1e2:	vaddps zmm29,zmm28,zmm1
  a0d1e8:	vsubps zmm0,zmm28,zmm1
  a0d1ee:	vmovups ZMMWORD PTR [rsp+0x300],zmm0
  a0d1f6:	vsubps zmm12,zmm8,zmm3
  a0d1fc:	vsubps zmm1,zmm6,zmm22
  a0d202:	vaddps zmm3,zmm8,zmm3
  a0d208:	vmovaps zmm0,ZMMWORD PTR [rip+0xffffffffff6b9d6e]        # c6f80 <crc32fast::table::CRC32_TABLE+0x92fc>
  a0d212:	vmovups zmm28,ZMMWORD PTR [rsp+0x280]
  a0d21a:	vmovaps zmm14,zmm28
  a0d220:	vpermt2ps zmm14,zmm0,zmm19
  a0d226:	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff6b9d90]        # c6fc0 <crc32fast::table::CRC32_TABLE+0x933c>
  a0d230:	vpermt2ps zmm28,zmm16,zmm19
  a0d236:	vmovaps zmm19,zmm10
  a0d23c:	vpermt2ps zmm19,zmm0,zmm31
  a0d242:	vpermt2ps zmm10,zmm16,zmm31
  a0d248:	vmovaps zmm21,zmm20
  a0d24e:	vpermt2ps zmm21,zmm0,zmm30
  a0d254:	vpermt2ps zmm20,zmm16,zmm30
  a0d25a:	vmovups zmm18,ZMMWORD PTR [rsp+0x1c0]
  a0d262:	vmovaps zmm23,zmm18
  a0d268:	vpermt2ps zmm23,zmm0,zmm9
  a0d26e:	vpermt2ps zmm18,zmm16,zmm9
  a0d274:	vmovaps zmm30,zmm15
  a0d27a:	vpermt2ps zmm30,zmm0,zmm2
  a0d280:	vpermt2ps zmm15,zmm16,zmm2
  a0d286:	vmovaps zmm31,zmm25
  a0d28c:	vpermt2ps zmm31,zmm0,zmm4
  a0d292:	vpermt2ps zmm25,zmm16,zmm4
  a0d298:	vmovaps zmm9,zmm27
  a0d29e:	vpermt2ps zmm9,zmm0,zmm1
  a0d2a4:	vpermt2ps zmm27,zmm16,zmm1
  a0d2aa:	vmovups zmm13,ZMMWORD PTR [rsp-0x40]
  a0d2b2:	vmovaps zmm7,zmm13
  a0d2b8:	vpermt2ps zmm7,zmm0,zmm29
  a0d2be:	vpermt2ps zmm13,zmm16,zmm29
  a0d2c4:	vmovaps zmm29,zmm11
  a0d2ca:	vpermt2ps zmm29,zmm0,zmm24
  a0d2d0:	vpermt2ps zmm11,zmm16,zmm24
  a0d2d6:	vmovups ZMMWORD PTR [rsp+0x240],zmm11
  a0d2de:	vmovaps zmm1,zmm26
  a0d2e4:	vpermt2ps zmm26,zmm0,zmm17
  a0d2ea:	vpermt2ps zmm1,zmm16,zmm17
  a0d2f0:	vmovups ZMMWORD PTR [rsp+0x280],zmm1
  a0d2f8:	vmovups zmm1,ZMMWORD PTR [rsp+0xc0]
  a0d300:	vmovaps zmm17,zmm1
  a0d306:	vmovups zmm2,ZMMWORD PTR [rsp+0x2c0]
  a0d30e:	vpermt2ps zmm17,zmm0,zmm2
  a0d314:	vpermt2ps zmm1,zmm16,zmm2
  a0d31a:	vmovups ZMMWORD PTR [rsp+0xc0],zmm1
  a0d322:	vmovaps zmm2,zmm12
  a0d328:	vmovups zmm1,ZMMWORD PTR [rsp+0x40]
  a0d330:	vpermt2ps zmm2,zmm0,zmm1
  a0d336:	vpermt2ps zmm12,zmm16,zmm1
  a0d33c:	vmovups zmm1,ZMMWORD PTR [rsp]
  a0d343:	vmovaps zmm4,zmm1
  a0d349:	vmovups zmm5,ZMMWORD PTR [rsp+0x300]
  a0d351:	vpermt2ps zmm4,zmm0,zmm5
  a0d357:	vpermt2ps zmm1,zmm16,zmm5
  a0d35d:	vmovups ZMMWORD PTR [rsp],zmm1
  a0d364:	vmovups zmm1,ZMMWORD PTR [rsp-0x80]
  a0d36c:	vmovaps zmm6,zmm1
  a0d372:	vpermt2ps zmm6,zmm0,zmm3
  a0d378:	vpermt2ps zmm1,zmm16,zmm3
  a0d37e:	vmovups ZMMWORD PTR [rsp-0x80],zmm1
  a0d386:	vxorps xmm1,xmm1,xmm1
  a0d38a:	vmovups zmm3,ZMMWORD PTR [rsp+0x480]
  a0d392:	vmovaps zmm22,zmm3
  a0d398:	vpermt2ps zmm22,zmm0,zmm1
  a0d39e:	vpermt2ps zmm3,zmm16,zmm1
  a0d3a4:	vmovaps zmm11,zmm3
  a0d3aa:	vmovups zmm24,ZMMWORD PTR [rsp+0x80]
  a0d3b2:	vpermi2ps zmm0,zmm24,zmm1
  a0d3b8:	vpermt2ps zmm24,zmm16,zmm1
  a0d3be:	vmovaps zmm16,ZMMWORD PTR [rip+0xffffffffff6b9b38]        # c6f00 <crc32fast::table::CRC32_TABLE+0x927c>
  a0d3c8:	vmovaps zmm3,zmm14
  a0d3ce:	vpermt2ps zmm3,zmm16,zmm30
  a0d3d4:	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff6b9b62]        # c6f40 <crc32fast::table::CRC32_TABLE+0x92bc>
  a0d3de:	vpermt2ps zmm14,zmm5,zmm30
  a0d3e4:	vmovaps zmm30,zmm19
  a0d3ea:	vpermt2ps zmm30,zmm16,zmm31
  a0d3f0:	vpermt2ps zmm19,zmm5,zmm31
  a0d3f6:	vmovaps zmm31,zmm21
  a0d3fc:	vpermt2ps zmm31,zmm16,zmm9
  a0d402:	vpermt2ps zmm21,zmm5,zmm9
  a0d408:	vmovaps zmm9,zmm23
  a0d40e:	vpermt2ps zmm9,zmm16,zmm22
  a0d414:	vpermt2ps zmm23,zmm5,zmm22
  a0d41a:	vmovaps zmm22,zmm28
  a0d420:	vmovaps zmm1,zmm28
  a0d426:	vpermt2ps zmm1,zmm16,zmm15
  a0d42c:	vpermt2ps zmm22,zmm5,zmm15
  a0d432:	vmovaps zmm8,zmm10
  a0d438:	vpermt2ps zmm8,zmm16,zmm25
  a0d43e:	vpermt2ps zmm10,zmm5,zmm25
  a0d444:	vmovaps zmm15,zmm20
  a0d44a:	vpermt2ps zmm15,zmm16,zmm27
  a0d450:	vpermt2ps zmm20,zmm5,zmm27
  a0d456:	vunpcklpd zmm20,zmm22,zmm20
  a0d45c:	vmovups ZMMWORD PTR [rsp-0x40],zmm20
  a0d464:	vmovaps zmm27,zmm18
  a0d46a:	vpermt2ps zmm27,zmm16,zmm11
  a0d470:	vpermt2ps zmm18,zmm5,zmm11
  a0d476:	vunpcklpd zmm11,zmm10,zmm18
  a0d47c:	vunpcklpd zmm18,zmm3,zmm31
  a0d482:	vunpckhpd zmm22,zmm3,zmm31
  a0d488:	vunpcklpd zmm3,zmm30,zmm9
  a0d48e:	vunpckhpd zmm9,zmm30,zmm9
  a0d494:	vunpcklpd zmm31,zmm14,zmm21
  a0d49a:	vunpckhpd zmm21,zmm14,zmm21
  a0d4a0:	vunpcklpd zmm14,zmm19,zmm23
  a0d4a6:	vunpckhpd zmm20,zmm19,zmm23
  a0d4ac:	vunpcklpd zmm23,zmm1,zmm15
  a0d4b2:	vunpckhpd zmm1,zmm1,zmm15
  a0d4b8:	vmovups ZMMWORD PTR [rsp+0x80],zmm1
  a0d4c0:	vunpcklpd zmm19,zmm8,zmm27
  a0d4c6:	vunpckhpd zmm10,zmm8,zmm27
  a0d4cc:	vmovaps zmm28,zmm7
  a0d4d2:	vpermt2ps zmm28,zmm16,zmm2
  a0d4d8:	vpermt2ps zmm7,zmm5,zmm2
  a0d4de:	vmovaps zmm2,zmm29
  a0d4e4:	vpermt2ps zmm2,zmm16,zmm4
  a0d4ea:	vpermt2ps zmm29,zmm5,zmm4
  a0d4f0:	vmovaps zmm25,zmm26
  a0d4f6:	vpermt2ps zmm25,zmm16,zmm6
  a0d4fc:	vpermt2ps zmm26,zmm5,zmm6
  a0d502:	vmovaps zmm6,zmm17
  a0d508:	vpermt2ps zmm6,zmm16,zmm0
  a0d50e:	vpermt2ps zmm17,zmm5,zmm0
  a0d514:	vmovaps zmm4,zmm13
  a0d51a:	vpermt2ps zmm4,zmm16,zmm12
  a0d520:	vpermt2ps zmm13,zmm5,zmm12
  a0d526:	vmovups zmm30,ZMMWORD PTR [rsp+0x240]
  a0d52e:	vmovaps zmm12,zmm30
  a0d534:	vmovups zmm1,ZMMWORD PTR [rsp]
  a0d53b:	vpermt2ps zmm12,zmm16,zmm1
  a0d541:	vpermt2ps zmm30,zmm5,zmm1
  a0d547:	vmovups zmm1,ZMMWORD PTR [rsp+0x280]
  a0d54f:	vmovaps zmm0,zmm1
  a0d555:	vmovups zmm8,ZMMWORD PTR [rsp-0x80]
  a0d55d:	vpermt2ps zmm0,zmm16,zmm8
  a0d563:	vpermt2ps zmm1,zmm5,zmm8
  a0d569:	vmovaps zmm27,zmm1
  a0d56f:	vmovups zmm1,ZMMWORD PTR [rsp+0xc0]
  a0d577:	vpermi2ps zmm16,zmm1,zmm24
  a0d57d:	vpermt2ps zmm1,zmm5,zmm24
  a0d583:	vmovaps zmm5,ZMMWORD PTR [rip+0xffffffffff6b9873]        # c6e00 <crc32fast::table::CRC32_TABLE+0x917c>
  a0d58d:	vmovaps zmm8,zmm18
  a0d593:	vpermt2ps zmm8,zmm5,zmm3
  a0d599:	vmovups ZMMWORD PTR [rsp+0x200],zmm8
  a0d5a1:	vmovaps zmm15,ZMMWORD PTR [rip+0xffffffffff6b9895]        # c6e40 <crc32fast::table::CRC32_TABLE+0x91bc>
  a0d5ab:	vpermt2ps zmm18,zmm15,zmm3
  a0d5b1:	vmovups ZMMWORD PTR [rsp+0x100],zmm18
  a0d5b9:	vmovaps zmm8,zmm22
  a0d5bf:	vpermt2ps zmm8,zmm5,zmm9
  a0d5c5:	vpermt2ps zmm22,zmm15,zmm9
  a0d5cb:	vmovups ZMMWORD PTR [rsp+0x180],zmm22
  a0d5d3:	vmovaps zmm9,zmm31
  a0d5d9:	vpermt2ps zmm9,zmm5,zmm14
  a0d5df:	vpermt2ps zmm31,zmm15,zmm14
  a0d5e5:	vmovups ZMMWORD PTR [rsp-0x80],zmm31
  a0d5ed:	vmovaps zmm24,zmm21
  a0d5f3:	vpermt2ps zmm21,zmm5,zmm20
  a0d5f9:	vpermt2ps zmm24,zmm15,zmm20
  a0d5ff:	vmovaps zmm22,zmm23
  a0d605:	vpermt2ps zmm22,zmm5,zmm19
  a0d60b:	vpermt2ps zmm23,zmm15,zmm19
  a0d611:	vmovaps zmm31,zmm23
  a0d617:	vmovups zmm3,ZMMWORD PTR [rsp+0x80]
  a0d61f:	vmovaps zmm19,zmm3
  a0d625:	vpermt2ps zmm19,zmm5,zmm10
  a0d62b:	vpermt2ps zmm3,zmm15,zmm10
  a0d631:	vmovaps zmm23,zmm3
  a0d637:	vmovups zmm3,ZMMWORD PTR [rsp-0x40]
  a0d63f:	vmovaps zmm10,zmm3
  a0d645:	vpermt2ps zmm10,zmm5,zmm11
  a0d64b:	vpermt2ps zmm3,zmm15,zmm11
  a0d651:	vmovups ZMMWORD PTR [rsp-0x40],zmm3
  a0d659:	vunpcklpd zmm27,zmm13,zmm27
  a0d65f:	vunpcklpd zmm20,zmm30,zmm1
  a0d665:	vunpcklpd zmm13,zmm28,zmm25
  a0d66b:	vunpckhpd zmm18,zmm28,zmm25
  a0d671:	vunpcklpd zmm11,zmm2,zmm6
  a0d677:	vunpckhpd zmm6,zmm2,zmm6
  a0d67d:	vunpcklpd zmm1,zmm7,zmm26
  a0d683:	vunpckhpd zmm3,zmm7,zmm26
  a0d689:	vunpcklpd zmm7,zmm29,zmm17
  a0d68f:	vunpckhpd zmm17,zmm29,zmm17
  a0d695:	vunpcklpd zmm2,zmm4,zmm0
  a0d69b:	vunpckhpd zmm25,zmm4,zmm0
  a0d6a1:	vunpcklpd zmm0,zmm12,zmm16
  a0d6a7:	vunpckhpd zmm4,zmm12,zmm16
  a0d6ad:	vmovaps zmm12,zmm13
  a0d6b3:	vpermt2ps zmm12,zmm5,zmm11
  a0d6b9:	vmovups ZMMWORD PTR [rsp+0x40],zmm12
  a0d6c1:	vpermt2ps zmm13,zmm15,zmm11
  a0d6c7:	vmovaps zmm16,zmm18
  a0d6cd:	vpermt2ps zmm16,zmm5,zmm6
  a0d6d3:	vpermt2ps zmm18,zmm15,zmm6
  a0d6d9:	vmovaps zmm11,zmm1
  a0d6df:	vpermt2ps zmm11,zmm5,zmm7
  a0d6e5:	vpermt2ps zmm1,zmm15,zmm7
  a0d6eb:	vmovaps zmm14,zmm3
  a0d6f1:	vpermt2ps zmm14,zmm5,zmm17
  a0d6f7:	vpermt2ps zmm3,zmm15,zmm17
  a0d6fd:	vmovaps zmm6,zmm2
  a0d703:	vpermt2ps zmm6,zmm5,zmm0
  a0d709:	vpermt2ps zmm2,zmm15,zmm0
  a0d70f:	vmovaps zmm0,zmm25
  a0d715:	vpermt2ps zmm0,zmm5,zmm4
  a0d71b:	vpermt2ps zmm25,zmm15,zmm4
  a0d721:	vpermi2ps zmm5,zmm27,zmm20
  a0d727:	vpermt2ps zmm27,zmm15,zmm20
  a0d72d:	vmovups zmm15,ZMMWORD PTR [rdx+0x80]
  a0d734:	vmovups zmm20,ZMMWORD PTR [rdx+0x100]
  a0d73b:	vmovups zmm17,ZMMWORD PTR [rdx+0x140]
  a0d742:	vmulps zmm4,zmm8,zmm20
  a0d748:	vfnmadd231ps zmm4,zmm16,zmm17
  a0d74e:	vmovaps zmm12,zmm4
  a0d754:	vmovups ZMMWORD PTR [rsp+0x1c0],zmm4
  a0d75c:	vmulps zmm7,zmm16,zmm20
  a0d762:	vmovups zmm4,ZMMWORD PTR [rdx+0x600]
  a0d769:	vfmadd231ps zmm7,zmm17,zmm8
  a0d76f:	vmovups ZMMWORD PTR [rsp+0xc0],zmm7
  a0d777:	vmovups zmm7,ZMMWORD PTR [rdx+0x640]
  a0d77e:	vmulps zmm8,zmm10,zmm4
  a0d784:	vfnmadd231ps zmm8,zmm5,zmm7
  a0d78a:	vmovups ZMMWORD PTR [rsp+0x640],zmm8
  a0d792:	vmulps zmm5,zmm5,zmm4
  a0d798:	vmovups zmm4,ZMMWORD PTR [rdx+0x200]
  a0d79f:	vfmadd231ps zmm5,zmm7,zmm10
  a0d7a5:	vmovaps zmm10,zmm5
  a0d7ab:	vmovups ZMMWORD PTR [rsp+0x380],zmm5
  a0d7b3:	vmovups zmm5,ZMMWORD PTR [rdx+0x240]
  a0d7ba:	vmulps zmm7,zmm9,zmm4
  a0d7c0:	vfnmadd231ps zmm7,zmm11,zmm5
  a0d7c6:	vmovups ZMMWORD PTR [rsp],zmm7
  a0d7cd:	vmulps zmm7,zmm11,zmm4
  a0d7d3:	vmovups zmm4,ZMMWORD PTR [rdx+0x500]
  a0d7da:	vfmadd231ps zmm7,zmm5,zmm9
  a0d7e0:	vmovups ZMMWORD PTR [rsp+0x300],zmm7
  a0d7e8:	vmovups zmm5,ZMMWORD PTR [rdx+0x540]
  a0d7ef:	vmulps zmm7,zmm19,zmm4
  a0d7f5:	vfnmadd231ps zmm7,zmm0,zmm5
  a0d7fb:	vmovups ZMMWORD PTR [rsp+0x80],zmm7
  a0d803:	vmulps zmm4,zmm0,zmm4
  a0d809:	vmovups zmm0,ZMMWORD PTR [rdx+0x300]
  a0d810:	vfmadd231ps zmm4,zmm5,zmm19
  a0d816:	vmovups ZMMWORD PTR [rsp+0x2c0],zmm4
  a0d81e:	vmovups zmm4,ZMMWORD PTR [rdx+0x340]
  a0d825:	vmulps zmm5,zmm21,zmm0
  a0d82b:	vfnmadd231ps zmm5,zmm14,zmm4
  a0d831:	vmovups ZMMWORD PTR [rsp+0x280],zmm5
  a0d839:	vmulps zmm5,zmm14,zmm0
  a0d83f:	vmovups zmm0,ZMMWORD PTR [rdx+0x400]
  a0d846:	vfmadd231ps zmm5,zmm4,zmm21
  a0d84c:	vmovups ZMMWORD PTR [rsp+0x480],zmm5
  a0d854:	vmovups zmm4,ZMMWORD PTR [rdx+0x440]
  a0d85b:	vmulps zmm26,zmm22,zmm0
  a0d861:	vfnmadd231ps zmm26,zmm6,zmm4
  a0d867:	vmulps zmm5,zmm6,zmm0
  a0d86d:	vmovups zmm0,ZMMWORD PTR [rdx+0x380]
  a0d874:	vfmadd231ps zmm5,zmm4,zmm22
  a0d87a:	vmovups ZMMWORD PTR [rsp+0x240],zmm5
  a0d882:	vmovups zmm6,ZMMWORD PTR [rdx+0x3c0]
  a0d889:	vmulps zmm28,zmm24,zmm0
  a0d88f:	vfnmadd231ps zmm28,zmm3,zmm6
  a0d895:	vmulps zmm21,zmm3,zmm0
  a0d89b:	vmovups zmm0,ZMMWORD PTR [rdx+0x480]
  a0d8a2:	vfmadd231ps zmm21,zmm6,zmm24
  a0d8a8:	vmovups zmm3,ZMMWORD PTR [rdx+0x4c0]
  a0d8af:	vmulps zmm4,zmm31,zmm0
  a0d8b5:	vfnmadd231ps zmm4,zmm2,zmm3
  a0d8bb:	vmovups ZMMWORD PTR [rsp+0x5c0],zmm4
  a0d8c3:	vmulps zmm2,zmm2,zmm0
  a0d8c9:	vmovups zmm0,ZMMWORD PTR [rdx+0x280]
  a0d8d0:	vfmadd231ps zmm2,zmm3,zmm31
  a0d8d6:	vmovaps zmm5,zmm2
  a0d8dc:	vmovups ZMMWORD PTR [rsp+0x540],zmm2
  a0d8e4:	vmovups zmm2,ZMMWORD PTR [rdx+0x2c0]
  a0d8eb:	vmovups zmm6,ZMMWORD PTR [rsp-0x80]
  a0d8f3:	vmulps zmm3,zmm6,zmm0
  a0d8f9:	vfnmadd231ps zmm3,zmm1,zmm2
  a0d8ff:	vmovups ZMMWORD PTR [rsp+0x600],zmm3
  a0d907:	vmulps zmm1,zmm1,zmm0
  a0d90d:	vmovups zmm0,ZMMWORD PTR [rdx+0x580]
  a0d914:	vfmadd231ps zmm1,zmm2,zmm6
  a0d91a:	vmovaps zmm7,zmm1
  a0d920:	vmovups ZMMWORD PTR [rsp+0x580],zmm1
  a0d928:	vmovups zmm1,ZMMWORD PTR [rdx+0x5c0]
  a0d92f:	vmulps zmm2,zmm23,zmm0
  a0d935:	vfnmadd231ps zmm2,zmm25,zmm1
  a0d93b:	vmovaps zmm6,zmm2
  a0d941:	vmovups ZMMWORD PTR [rsp+0x340],zmm2
  a0d949:	vmulps zmm17,zmm25,zmm0
  a0d94f:	vmovups zmm0,ZMMWORD PTR [rdx+0x180]
  a0d956:	vfmadd231ps zmm17,zmm1,zmm23
  a0d95c:	vmovups zmm1,ZMMWORD PTR [rdx+0x1c0]
  a0d963:	vmovups zmm9,ZMMWORD PTR [rsp+0x180]
  a0d96b:	vmulps zmm2,zmm9,zmm0
  a0d971:	vfnmadd231ps zmm2,zmm18,zmm1
  a0d977:	vmovups ZMMWORD PTR [rsp-0x80],zmm2
  a0d97f:	vmulps zmm2,zmm18,zmm0
  a0d985:	vmovups zmm0,ZMMWORD PTR [rdx+0x680]
  a0d98c:	vfmadd231ps zmm2,zmm1,zmm9
  a0d992:	vmovups ZMMWORD PTR [rsp+0x440],zmm2
  a0d99a:	vmovups zmm1,ZMMWORD PTR [rdx+0x6c0]
  a0d9a1:	vmovups zmm9,ZMMWORD PTR [rsp-0x40]
  a0d9a9:	vmulps zmm16,zmm9,zmm0
  a0d9af:	vfnmadd231ps zmm16,zmm27,zmm1
  a0d9b5:	vmovups ZMMWORD PTR [rsp+0x4c0],zmm16
  a0d9bd:	vmulps zmm0,zmm27,zmm0
  a0d9c3:	vmovups zmm2,ZMMWORD PTR [rdx+0xc0]
  a0d9ca:	vfmadd231ps zmm0,zmm1,zmm9
  a0d9d0:	vmovups ZMMWORD PTR [rsp+0x180],zmm0
  a0d9d8:	vaddps zmm0,zmm12,zmm8
  a0d9de:	vmovups zmm9,ZMMWORD PTR [rsp+0x100]
  a0d9e6:	vmulps zmm1,zmm9,zmm15
  a0d9ec:	vfnmadd231ps zmm1,zmm13,zmm2
  a0d9f2:	vmovaps zmm8,zmm1
  a0d9f8:	vmovups ZMMWORD PTR [rsp+0x500],zmm1
  a0da00:	vmulps zmm1,zmm13,zmm15
  a0da06:	vfmadd231ps zmm1,zmm2,zmm9
  a0da0c:	vmovups ZMMWORD PTR [rsp+0x100],zmm1
  a0da14:	vbroadcastss zmm14,DWORD PTR [rip+0xffffffffff667bd6]        # 755f4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2aa4>
  a0da1e:	vmovaps zmm2,zmm14
  a0da24:	vmovups zmm23,ZMMWORD PTR [rsp+0x200]
  a0da2c:	vfmadd213ps zmm2,zmm0,zmm23
  a0da32:	vbroadcastss zmm13,DWORD PTR [rip+0xffffffffff667890]        # 752cc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x277c>
  a0da3c:	vmovaps zmm1,zmm13
  a0da42:	vfnmadd213ps zmm1,zmm0,zmm23
  a0da48:	vmovups ZMMWORD PTR [rsp-0x40],zmm1
  a0da50:	vaddps zmm1,zmm23,zmm0
  a0da56:	vmovups ZMMWORD PTR [rsp+0x140],zmm1
  a0da5e:	vbroadcastss zmm15,DWORD PTR [rip+0xffffffffff667b70]        # 755d8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a88>
  a0da68:	vfnmadd231ps zmm23,zmm15,zmm0
  a0da6e:	vaddps zmm0,zmm4,zmm3
  a0da74:	vmovaps zmm31,zmm14
  a0da7a:	vfmadd213ps zmm31,zmm0,zmm28
  a0da80:	vmovaps zmm30,zmm13
  a0da86:	vfnmadd213ps zmm30,zmm0,zmm28
  a0da8c:	vaddps zmm1,zmm28,zmm0
  a0da92:	vmovups ZMMWORD PTR [rsp+0x200],zmm1
  a0da9a:	vfnmadd231ps zmm28,zmm15,zmm0
  a0daa0:	vaddps zmm1,zmm10,ZMMWORD PTR [rsp+0xc0]
  a0daa8:	vmovaps zmm29,zmm14
  a0daae:	vmovups zmm9,ZMMWORD PTR [rsp+0x40]
  a0dab6:	vfmadd213ps zmm29,zmm1,zmm9
  a0dabc:	vmovaps zmm20,zmm13
  a0dac2:	vfnmadd213ps zmm20,zmm1,zmm9
  a0dac8:	vaddps zmm18,zmm1,zmm9
  a0dace:	vfnmadd231ps zmm9,zmm15,zmm1
  a0dad4:	vaddps zmm19,zmm5,zmm7
  a0dada:	vmovaps zmm7,zmm21
  a0dae0:	vfmadd213ps zmm14,zmm19,zmm21
  a0dae6:	vmovaps zmm10,zmm13
  a0daec:	vfnmadd213ps zmm10,zmm19,zmm21
  a0daf2:	vaddps zmm0,zmm21,zmm19
  a0daf8:	vmovups ZMMWORD PTR [rsp+0x40],zmm0
  a0db00:	vfnmadd231ps zmm7,zmm19,zmm15
  a0db06:	vmovups zmm0,ZMMWORD PTR [rsp+0x80]
  a0db0e:	vaddps zmm19,zmm0,ZMMWORD PTR [rsp]
  a0db15:	vmovaps zmm0,zmm13
  a0db1b:	vfnmadd231ps zmm2,zmm19,zmm13
  a0db21:	vmovups zmm24,ZMMWORD PTR [rsp+0x280]
  a0db29:	vaddps zmm27,zmm24,zmm26
  a0db2f:	vfnmadd231ps zmm2,zmm27,zmm15
  a0db35:	vmovups ZMMWORD PTR [rsp+0x3c0],zmm2
  a0db3d:	vaddps zmm25,zmm6,ZMMWORD PTR [rsp-0x80]
  a0db45:	vfnmadd231ps zmm31,zmm25,zmm13
  a0db4b:	vaddps zmm5,zmm16,zmm8
  a0db51:	vfnmadd231ps zmm31,zmm5,zmm15
  a0db57:	vmovups zmm22,ZMMWORD PTR [rsp+0x300]
  a0db5f:	vmovups zmm21,ZMMWORD PTR [rsp+0x2c0]
  a0db67:	vaddps zmm2,zmm22,zmm21
  a0db6d:	vfnmadd231ps zmm29,zmm2,zmm13
  a0db73:	vmovups zmm13,ZMMWORD PTR [rsp+0x480]
  a0db7b:	vmovups zmm11,ZMMWORD PTR [rsp+0x240]
  a0db83:	vaddps zmm4,zmm13,zmm11
  a0db89:	vfnmadd231ps zmm29,zmm4,zmm15
  a0db8f:	vmovups zmm16,ZMMWORD PTR [rsp+0x440]
  a0db97:	vaddps zmm1,zmm17,zmm16
  a0db9d:	vfnmadd231ps zmm14,zmm1,zmm0
  a0dba3:	vmovups zmm8,ZMMWORD PTR [rsp+0x180]
  a0dbab:	vmovups zmm6,ZMMWORD PTR [rsp+0x100]
  a0dbb3:	vaddps zmm3,zmm8,zmm6
  a0dbb9:	vfnmadd231ps zmm14,zmm3,zmm15
  a0dbbf:	vmovups zmm0,ZMMWORD PTR [rsp-0x40]
  a0dbc7:	vfnmadd231ps zmm0,zmm19,zmm15
  a0dbcd:	vfnmadd231ps zmm30,zmm25,zmm15
  a0dbd3:	vfnmadd231ps zmm20,zmm2,zmm15
  a0dbd9:	vfnmadd231ps zmm10,zmm1,zmm15
  a0dbdf:	vaddps zmm12,zmm19,ZMMWORD PTR [rsp+0x140]
  a0dbe7:	vbroadcastss zmm15,DWORD PTR [rip+0xffffffffff667a03]        # 755f4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2aa4>
  a0dbf1:	vfmadd231ps zmm23,zmm15,zmm19
  a0dbf7:	vaddps zmm19,zmm25,ZMMWORD PTR [rsp+0x200]
  a0dbff:	vfmadd231ps zmm28,zmm15,zmm25
  a0dc05:	vaddps zmm18,zmm2,zmm18
  a0dc0b:	vfmadd231ps zmm9,zmm15,zmm2
  a0dc11:	vaddps zmm2,zmm1,ZMMWORD PTR [rsp+0x40]
  a0dc19:	vfmadd231ps zmm7,zmm1,zmm15
  a0dc1f:	vfmadd231ps zmm0,zmm27,zmm15
  a0dc25:	vmovups ZMMWORD PTR [rsp-0x40],zmm0
  a0dc2d:	vfmadd231ps zmm30,zmm5,zmm15
  a0dc33:	vfmadd231ps zmm20,zmm4,zmm15
  a0dc39:	vfmadd231ps zmm10,zmm3,zmm15
  a0dc3f:	vaddps zmm0,zmm12,zmm27
  a0dc45:	vmovups ZMMWORD PTR [rsp+0x40],zmm0
  a0dc4d:	vbroadcastss zmm0,DWORD PTR [rip+0xffffffffff667675]        # 752cc <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x277c>
  a0dc57:	vfnmadd231ps zmm23,zmm0,zmm27
  a0dc5d:	vmovaps zmm25,zmm23
  a0dc63:	vaddps zmm1,zmm19,zmm5
  a0dc69:	vmovups ZMMWORD PTR [rsp+0x200],zmm1
  a0dc71:	vfnmadd231ps zmm28,zmm0,zmm5
  a0dc77:	vaddps zmm1,zmm4,zmm18
  a0dc7d:	vmovups ZMMWORD PTR [rsp+0x140],zmm1
  a0dc85:	vfnmadd231ps zmm9,zmm0,zmm4
  a0dc8b:	vfnmadd231ps zmm7,zmm3,zmm0
  a0dc91:	vaddps zmm0,zmm2,zmm3
  a0dc97:	vmovups ZMMWORD PTR [rsp+0x400],zmm0
  a0dc9f:	vsubps zmm23,zmm13,zmm11
  a0dca5:	vmovups zmm0,ZMMWORD PTR [rsp+0xc0]
  a0dcad:	vsubps zmm1,zmm0,ZMMWORD PTR [rsp+0x380]
  a0dcb5:	vsubps zmm2,zmm22,zmm21
  a0dcbb:	vsubps zmm8,zmm8,zmm6
  a0dcc1:	vmovups zmm0,ZMMWORD PTR [rsp+0x540]
  a0dcc9:	vsubps zmm5,zmm0,ZMMWORD PTR [rsp+0x580]
  a0dcd1:	vsubps zmm13,zmm17,zmm16
  a0dcd7:	vsubps zmm15,zmm24,zmm26
  a0dcdd:	vmovups zmm0,ZMMWORD PTR [rsp+0x1c0]
  a0dce5:	vsubps zmm16,zmm0,ZMMWORD PTR [rsp+0x640]
  a0dced:	vmovups zmm0,ZMMWORD PTR [rsp]
  a0dcf4:	vsubps zmm18,zmm0,ZMMWORD PTR [rsp+0x80]
  a0dcfc:	vbroadcastss zmm19,DWORD PTR [rip+0xffffffffff66778a]        # 75490 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2940>
  a0dd06:	vmovups zmm0,ZMMWORD PTR [rsp+0x4c0]
  a0dd0e:	vsubps zmm17,zmm0,ZMMWORD PTR [rsp+0x500]
  a0dd16:	vbroadcastss zmm21,DWORD PTR [rip+0xffffffffff667940]        # 75660 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2b10>
  a0dd20:	vmovups zmm0,ZMMWORD PTR [rsp+0x5c0]
  a0dd28:	vsubps zmm22,zmm0,ZMMWORD PTR [rsp+0x600]
  a0dd30:	vmulps zmm6,zmm2,zmm19
  a0dd36:	vmovups zmm0,ZMMWORD PTR [rsp+0x340]
  a0dd3e:	vsubps zmm24,zmm0,ZMMWORD PTR [rsp-0x80]
  a0dd46:	vbroadcastss zmm26,DWORD PTR [rip+0xffffffffff667898]        # 755e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2a98>
  a0dd50:	vfmadd231ps zmm6,zmm1,zmm21
  a0dd56:	vmulps zmm3,zmm1,zmm19
  a0dd5c:	vfnmadd231ps zmm3,zmm2,zmm26
  a0dd62:	vmulps zmm1,zmm1,zmm26
  a0dd68:	vfnmadd231ps zmm1,zmm21,zmm2
  a0dd6e:	vmulps zmm4,zmm13,zmm19
  a0dd74:	vfmadd231ps zmm4,zmm5,zmm21
  a0dd7a:	vmulps zmm27,zmm5,zmm19
  a0dd80:	vfnmadd231ps zmm27,zmm13,zmm26
  a0dd86:	vmulps zmm5,zmm5,zmm26
  a0dd8c:	vfnmadd231ps zmm5,zmm21,zmm13
  a0dd92:	vmulps zmm13,zmm18,zmm19
  a0dd98:	vfmadd231ps zmm13,zmm16,zmm21
  a0dd9e:	vmulps zmm2,zmm16,zmm19
  a0dda4:	vfnmadd231ps zmm2,zmm18,zmm26
  a0ddaa:	vmulps zmm16,zmm16,zmm26
  a0ddb0:	vfnmadd231ps zmm16,zmm21,zmm18
  a0ddb6:	vfmadd231ps zmm6,zmm23,zmm26
  a0ddbc:	vfmadd231ps zmm4,zmm8,zmm26
  a0ddc2:	vfmadd231ps zmm13,zmm15,zmm26
  a0ddc8:	vmulps zmm18,zmm24,zmm19
  a0ddce:	vfmadd231ps zmm18,zmm22,zmm21
  a0ddd4:	vfmadd231ps zmm18,zmm17,zmm26
  a0ddda:	vmulps zmm0,zmm22,zmm19
  a0dde0:	vfnmadd231ps zmm0,zmm24,zmm26
  a0dde6:	vmulps zmm22,zmm22,zmm26
  a0ddec:	vfnmadd231ps zmm22,zmm24,zmm21
  a0ddf2:	vfnmadd231ps zmm3,zmm23,zmm21
  a0ddf8:	vfnmadd231ps zmm27,zmm8,zmm21
  a0ddfe:	vfnmadd231ps zmm2,zmm15,zmm21
  a0de04:	vfnmadd231ps zmm0,zmm17,zmm21
  a0de0a:	vfmadd231ps zmm1,zmm19,zmm23
  a0de10:	vfmadd231ps zmm5,zmm19,zmm8
  a0de16:	vmovups zmm12,ZMMWORD PTR [rsp+0x3c0]
  a0de1e:	vaddps zmm23,zmm12,zmm6
  a0de24:	vfmadd231ps zmm16,zmm19,zmm15
  a0de2a:	vaddps zmm15,zmm31,zmm4
  a0de30:	vfmadd231ps zmm22,zmm17,zmm19
  a0de36:	vsubps zmm26,zmm23,zmm15
  a0de3c:	vaddps zmm11,zmm25,zmm1
  a0de42:	vmovups ZMMWORD PTR [rsp-0x80],zmm11
  a0de4a:	vsubps zmm1,zmm25,zmm1
  a0de50:	vmovups ZMMWORD PTR [rsp+0xc0],zmm1
  a0de58:	vaddps zmm21,zmm28,zmm5
  a0de5e:	vsubps zmm1,zmm28,zmm5
  a0de64:	vmovups ZMMWORD PTR [rsp],zmm1
  a0de6b:	vsubps zmm19,zmm9,zmm16
  a0de71:	vaddps zmm24,zmm16,zmm9
  a0de77:	vsubps zmm25,zmm7,zmm22
  a0de7d:	vaddps zmm17,zmm7,zmm22
  a0de83:	vmovups zmm1,ZMMWORD PTR [rsp-0x40]
  a0de8b:	vaddps zmm16,zmm1,zmm3
  a0de91:	vsubps zmm22,zmm1,zmm3
  a0de97:	vaddps zmm28,zmm30,zmm27
  a0de9d:	vsubps zmm30,zmm30,zmm27
  a0dea3:	vsubps zmm9,zmm20,zmm2
  a0dea9:	vaddps zmm8,zmm2,zmm20
  a0deaf:	vsubps zmm11,zmm10,zmm0
  a0deb5:	vaddps zmm7,zmm10,zmm0
  a0debb:	vsubps zmm3,zmm29,zmm13
  a0dec1:	vsubps zmm6,zmm12,zmm6
  a0dec7:	vsubps zmm0,zmm14,zmm18
  a0decd:	vsubps zmm4,zmm31,zmm4
  a0ded3:	vsubps zmm27,zmm3,zmm0
  a0ded9:	vaddps zmm2,zmm13,zmm29
  a0dedf:	vaddps zmm29,zmm16,zmm28
  a0dee5:	vaddps zmm1,zmm14,zmm18
  a0deeb:	vaddps zmm18,zmm9,zmm11
  a0def1:	vaddps zmm12,zmm23,zmm15
  a0def7:	vmovups zmm14,ZMMWORD PTR [rsp-0x80]
  a0deff:	vsubps zmm5,zmm14,zmm21
  a0df05:	vaddps zmm0,zmm3,zmm0
  a0df0b:	vmovups ZMMWORD PTR [rsp-0x40],zmm0
  a0df13:	vsubps zmm13,zmm19,zmm25
  a0df19:	vsubps zmm23,zmm16,zmm28
  a0df1f:	vmovups zmm10,ZMMWORD PTR [rsp+0xc0]
  a0df27:	vmovups zmm16,ZMMWORD PTR [rsp]
  a0df2e:	vaddps zmm31,zmm10,zmm16
  a0df34:	vsubps zmm0,zmm9,zmm11
  a0df3a:	vmovups ZMMWORD PTR [rsp+0x100],zmm0
  a0df42:	vaddps zmm11,zmm24,zmm17
  a0df48:	vaddps zmm28,zmm14,zmm21
  a0df4e:	vsubps zmm3,zmm22,zmm30
  a0df54:	vaddps zmm21,zmm19,zmm25
  a0df5a:	vsubps zmm15,zmm8,zmm7
  a0df60:	vsubps zmm19,zmm10,zmm16
  a0df66:	vaddps zmm9,zmm6,zmm4
  a0df6c:	vsubps zmm17,zmm24,zmm17
  a0df72:	vaddps zmm16,zmm2,zmm1
  a0df78:	vaddps zmm22,zmm22,zmm30
  a0df7e:	vmovups zmm20,ZMMWORD PTR [rsp+0x40]
  a0df86:	vmovups zmm0,ZMMWORD PTR [rsp+0x200]
  a0df8e:	vsubps zmm10,zmm20,zmm0
  a0df94:	vaddps zmm7,zmm8,zmm7
  a0df9a:	vmovups zmm8,ZMMWORD PTR [rsp+0x140]
  a0dfa2:	vmovups zmm14,ZMMWORD PTR [rsp+0x400]
  a0dfaa:	vsubps zmm30,zmm8,zmm14
  a0dfb0:	vsubps zmm25,zmm6,zmm4
  a0dfb6:	vsubps zmm24,zmm2,zmm1
  a0dfbc:	vaddps zmm14,zmm8,zmm14
  a0dfc2:	vaddps zmm1,zmm20,zmm0
  a0dfc8:	vmovaps zmm6,ZMMWORD PTR [rip+0xffffffffff680d6e]        # 8ed40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c1f0>
  a0dfd2:	vmovaps zmm2,zmm14
  a0dfd8:	vpermt2ps zmm2,zmm6,zmm1
  a0dfde:	vmovups ZMMWORD PTR [rsp-0x80],zmm2
  a0dfe6:	vunpckhps zmm2,zmm14,zmm1
  a0dfec:	vmovups ZMMWORD PTR [rsp+0xc0],zmm2
  a0dff4:	vunpcklps zmm2,zmm14,zmm1
  a0dffa:	vmovups ZMMWORD PTR [rsp],zmm2
  a0e001:	vmovaps ymm20,YMMWORD PTR [rip+0xffffffffff680d75]        # 8ed80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c230>
  a0e00b:	vpermt2ps zmm14,zmm20,zmm1
  a0e011:	vmovaps zmm1,zmm27
  a0e017:	vpermt2ps zmm1,zmm6,zmm26
  a0e01d:	vmovups ZMMWORD PTR [rsp+0x40],zmm1
  a0e025:	vunpckhps zmm1,zmm27,zmm26
  a0e02b:	vmovups ZMMWORD PTR [rsp+0x80],zmm1
  a0e033:	vunpcklps zmm1,zmm27,zmm26
  a0e039:	vmovups ZMMWORD PTR [rsp+0x300],zmm1
  a0e041:	vpermt2ps zmm27,zmm20,zmm26
  a0e047:	vmovaps zmm2,zmm18
  a0e04d:	vpermt2ps zmm2,zmm6,zmm29
  a0e053:	vunpckhps zmm1,zmm18,zmm29
  a0e059:	vmovups ZMMWORD PTR [rsp+0x2c0],zmm1
  a0e061:	vunpcklps zmm1,zmm18,zmm29
  a0e067:	vmovups ZMMWORD PTR [rsp+0x480],zmm1
  a0e06f:	vpermt2ps zmm18,zmm20,zmm29
  a0e075:	vmovaps zmm29,zmm13
  a0e07b:	vpermt2ps zmm29,zmm6,zmm5
  a0e081:	vunpckhps zmm1,zmm13,zmm5
  a0e087:	vmovups ZMMWORD PTR [rsp+0x280],zmm1
  a0e08f:	vunpcklps zmm1,zmm13,zmm5
  a0e095:	vmovups ZMMWORD PTR [rsp+0x240],zmm1
  a0e09d:	vpermt2ps zmm13,zmm20,zmm5
  a0e0a3:	vmovaps zmm26,zmm11
  a0e0a9:	vpermt2ps zmm26,zmm6,zmm31
  a0e0af:	vunpckhps zmm1,zmm11,zmm31
  a0e0b5:	vmovups ZMMWORD PTR [rsp+0x200],zmm1
  a0e0bd:	vunpcklps zmm1,zmm11,zmm31
  a0e0c3:	vmovups ZMMWORD PTR [rsp+0x640],zmm1
  a0e0cb:	vpermt2ps zmm11,zmm20,zmm31
  a0e0d1:	vmovaps zmm31,zmm15
  a0e0d7:	vpermt2ps zmm31,zmm6,zmm3
  a0e0dd:	vunpckhps zmm1,zmm15,zmm3
  a0e0e3:	vmovups ZMMWORD PTR [rsp+0x1c0],zmm1
  a0e0eb:	vunpcklps zmm1,zmm15,zmm3
  a0e0f1:	vmovups ZMMWORD PTR [rsp+0x180],zmm1
  a0e0f9:	vpermt2ps zmm15,zmm20,zmm3
  a0e0ff:	vmovaps zmm4,zmm16
  a0e105:	vpermt2ps zmm4,zmm6,zmm9
  a0e10b:	vunpckhps zmm0,zmm16,zmm9
  a0e111:	vmovups ZMMWORD PTR [rsp+0x140],zmm0
  a0e119:	vunpcklps zmm0,zmm16,zmm9
  a0e11f:	vmovups ZMMWORD PTR [rsp+0x440],zmm0
  a0e127:	vpermt2ps zmm16,zmm20,zmm9
  a0e12d:	vmovaps zmm3,zmm30
  a0e133:	vpermt2ps zmm3,zmm6,zmm10
  a0e139:	vunpckhps zmm0,zmm30,zmm10
  a0e13f:	vmovups ZMMWORD PTR [rsp+0x400],zmm0
  a0e147:	vunpcklps zmm0,zmm30,zmm10
  a0e14d:	vmovups ZMMWORD PTR [rsp+0x600],zmm0
  a0e155:	vpermt2ps zmm30,zmm20,zmm10
  a0e15b:	vmovups zmm0,ZMMWORD PTR [rsp-0x40]
  a0e163:	vmovaps zmm5,zmm0
  a0e169:	vpermt2ps zmm5,zmm6,zmm12
  a0e16f:	vunpckhps zmm1,zmm0,zmm12
  a0e175:	vmovups ZMMWORD PTR [rsp+0x5c0],zmm1
  a0e17d:	vunpcklps zmm1,zmm0,zmm12
  a0e183:	vmovups ZMMWORD PTR [rsp+0x3c0],zmm1
  a0e18b:	vpermt2ps zmm0,zmm20,zmm12
  a0e191:	vmovups ZMMWORD PTR [rsp-0x40],zmm0
  a0e199:	vmovups zmm1,ZMMWORD PTR [rsp+0x100]
  a0e1a1:	vmovaps zmm0,zmm1
  a0e1a7:	vpermt2ps zmm0,zmm6,zmm23
  a0e1ad:	vunpckhps zmm8,zmm1,zmm23
  a0e1b3:	vmovups ZMMWORD PTR [rsp+0x380],zmm8
  a0e1bb:	vunpcklps zmm8,zmm1,zmm23
  a0e1c1:	vmovups ZMMWORD PTR [rsp+0x580],zmm8
  a0e1c9:	vpermt2ps zmm1,zmm20,zmm23
  a0e1cf:	vmovaps zmm10,zmm1
  a0e1d5:	vmovaps zmm1,zmm21
  a0e1db:	vpermt2ps zmm1,zmm6,zmm28
  a0e1e1:	vunpckhps zmm8,zmm21,zmm28
  a0e1e7:	vmovups ZMMWORD PTR [rsp+0x100],zmm8
  a0e1ef:	vunpcklps zmm8,zmm21,zmm28
  a0e1f5:	vmovups ZMMWORD PTR [rsp+0x540],zmm8
  a0e1fd:	vpermt2ps zmm21,zmm20,zmm28
  a0e203:	vmovaps zmm28,zmm17
  a0e209:	vpermt2ps zmm28,zmm6,zmm19
  a0e20f:	vunpckhps zmm8,zmm17,zmm19
  a0e215:	vmovups ZMMWORD PTR [rsp+0x340],zmm8
  a0e21d:	vunpcklps zmm8,zmm17,zmm19
  a0e223:	vmovups ZMMWORD PTR [rsp+0x500],zmm8
  a0e22b:	vpermt2ps zmm17,zmm20,zmm19
  a0e231:	vmovaps zmm23,zmm7
  a0e237:	vpermt2ps zmm23,zmm6,zmm22
  a0e23d:	vunpckhps zmm19,zmm7,zmm22
  a0e243:	vunpcklps zmm8,zmm7,zmm22
  a0e249:	vmovups ZMMWORD PTR [rsp+0x4c0],zmm8
  a0e251:	vpermt2ps zmm7,zmm20,zmm22
  a0e257:	vpermi2ps zmm6,zmm24,zmm25
  a0e25d:	vunpckhps zmm12,zmm24,zmm25
  a0e263:	vunpcklps zmm8,zmm24,zmm25
  a0e269:	vpermt2ps zmm24,zmm20,zmm25
  a0e26f:	vmovups zmm9,ZMMWORD PTR [rsp-0x80]
  a0e277:	vmovups ZMMWORD PTR [rsi],zmm9
  a0e27d:	vmovups zmm9,ZMMWORD PTR [rsp]
  a0e284:	vextractf32x4 XMMWORD PTR [rsi+0x60],zmm9,0x3
  a0e28c:	vmovups zmm9,ZMMWORD PTR [rsp+0xc0]
  a0e294:	vextractf32x4 xmm9,zmm9,0x3
  a0e29b:	vmovlps QWORD PTR [rsi+0x70],xmm9
  a0e2a0:	vmovups YMMWORD PTR [rsi+0x40],ymm14
  a0e2a5:	vmovups zmm9,ZMMWORD PTR [rsp+0x40]
  a0e2ad:	vmovups ZMMWORD PTR [rsi+0x78],zmm9
  a0e2b7:	vmovups zmm9,ZMMWORD PTR [rsp+0x300]
  a0e2bf:	vextractf32x4 XMMWORD PTR [rsi+0xd8],zmm9,0x3
  a0e2ca:	vmovups zmm9,ZMMWORD PTR [rsp+0x80]
  a0e2d2:	vextractf32x4 xmm9,zmm9,0x3
  a0e2d9:	vmovlps QWORD PTR [rsi+0xe8],xmm9
  a0e2e1:	vmovups YMMWORD PTR [rsi+0xb8],ymm27
  a0e2eb:	vmovups ZMMWORD PTR [rsi+0xf0],zmm2
  a0e2f5:	vmovups zmm2,ZMMWORD PTR [rsp+0x480]
  a0e2fd:	vextractf32x4 XMMWORD PTR [rsi+0x150],zmm2,0x3
  a0e305:	vmovups zmm2,ZMMWORD PTR [rsp+0x2c0]
  a0e30d:	vextractf32x4 xmm2,zmm2,0x3
  a0e314:	vmovlps QWORD PTR [rsi+0x160],xmm2
  a0e31c:	vmovups YMMWORD PTR [rsi+0x130],ymm18
  a0e326:	vmovups ZMMWORD PTR [rsi+0x168],zmm29
  a0e330:	vmovups zmm2,ZMMWORD PTR [rsp+0x240]
  a0e338:	vextractf32x4 XMMWORD PTR [rsi+0x1c8],zmm2,0x3
  a0e343:	vmovups zmm2,ZMMWORD PTR [rsp+0x280]
  a0e34b:	vextractf32x4 xmm2,zmm2,0x3
  a0e352:	vmovlps QWORD PTR [rsi+0x1d8],xmm2
  a0e35a:	vmovups YMMWORD PTR [rsi+0x1a8],ymm13
  a0e362:	vmovups ZMMWORD PTR [rsi+0x1e0],zmm26
  a0e36c:	vmovups zmm2,ZMMWORD PTR [rsp+0x640]
  a0e374:	vextractf32x4 XMMWORD PTR [rsi+0x240],zmm2,0x3
  a0e37c:	vmovups zmm2,ZMMWORD PTR [rsp+0x200]
  a0e384:	vextractf32x4 xmm2,zmm2,0x3
  a0e38b:	vmovlps QWORD PTR [rsi+0x250],xmm2
  a0e393:	vmovups YMMWORD PTR [rsi+0x220],ymm11
  a0e39b:	vmovups ZMMWORD PTR [rsi+0x258],zmm31
  a0e3a5:	vmovups zmm2,ZMMWORD PTR [rsp+0x180]
  a0e3ad:	vextractf32x4 XMMWORD PTR [rsi+0x2b8],zmm2,0x3
  a0e3b8:	vmovups zmm2,ZMMWORD PTR [rsp+0x1c0]
  a0e3c0:	vextractf32x4 xmm2,zmm2,0x3
  a0e3c7:	vmovlps QWORD PTR [rsi+0x2c8],xmm2
  a0e3cf:	vmovups YMMWORD PTR [rsi+0x298],ymm15
  a0e3d7:	vmovups ZMMWORD PTR [rsi+0x2d0],zmm4
  a0e3e1:	vmovups zmm2,ZMMWORD PTR [rsp+0x440]
  a0e3e9:	vextractf32x4 XMMWORD PTR [rsi+0x330],zmm2,0x3
  a0e3f1:	vmovups zmm2,ZMMWORD PTR [rsp+0x140]
  a0e3f9:	vextractf32x4 xmm2,zmm2,0x3
  a0e400:	vmovlps QWORD PTR [rsi+0x340],xmm2
  a0e408:	vmovups YMMWORD PTR [rsi+0x310],ymm16
  a0e412:	vmovups ZMMWORD PTR [rsi+0x348],zmm3
  a0e41c:	vmovups zmm2,ZMMWORD PTR [rsp+0x600]
  a0e424:	vextractf32x4 XMMWORD PTR [rsi+0x3a8],zmm2,0x3
  a0e42f:	vmovups zmm2,ZMMWORD PTR [rsp+0x400]
  a0e437:	vextractf32x4 xmm2,zmm2,0x3
  a0e43e:	vmovlps QWORD PTR [rsi+0x3b8],xmm2
  a0e446:	vmovups YMMWORD PTR [rsi+0x388],ymm30
  a0e450:	vmovups ZMMWORD PTR [rsi+0x3c0],zmm5
  a0e457:	vmovups zmm2,ZMMWORD PTR [rsp+0x3c0]
  a0e45f:	vextractf32x4 XMMWORD PTR [rsi+0x420],zmm2,0x3
  a0e467:	vmovups zmm2,ZMMWORD PTR [rsp+0x5c0]
  a0e46f:	vextractf32x4 xmm2,zmm2,0x3
  a0e476:	vmovlps QWORD PTR [rsi+0x430],xmm2
  a0e47e:	vmovups zmm2,ZMMWORD PTR [rsp-0x40]
  a0e486:	vmovups YMMWORD PTR [rsi+0x400],ymm2
  a0e48e:	vmovups ZMMWORD PTR [rsi+0x438],zmm0
  a0e498:	vmovups zmm0,ZMMWORD PTR [rsp+0x580]
  a0e4a0:	vextractf32x4 XMMWORD PTR [rsi+0x498],zmm0,0x3
  a0e4ab:	vmovups zmm0,ZMMWORD PTR [rsp+0x380]
  a0e4b3:	vextractf32x4 xmm0,zmm0,0x3
  a0e4ba:	vmovlps QWORD PTR [rsi+0x4a8],xmm0
  a0e4c2:	vmovups YMMWORD PTR [rsi+0x478],ymm10
  a0e4ca:	vmovups ZMMWORD PTR [rsi+0x4b0],zmm1
  a0e4d4:	vmovups zmm0,ZMMWORD PTR [rsp+0x540]
  a0e4dc:	vextractf32x4 XMMWORD PTR [rsi+0x510],zmm0,0x3
  a0e4e4:	vmovups zmm0,ZMMWORD PTR [rsp+0x100]
  a0e4ec:	vextractf32x4 xmm0,zmm0,0x3
  a0e4f3:	vmovlps QWORD PTR [rsi+0x520],xmm0
  a0e4fb:	vmovups YMMWORD PTR [rsi+0x4f0],ymm21
  a0e505:	vmovups ZMMWORD PTR [rsi+0x528],zmm28
  a0e50f:	vmovups zmm0,ZMMWORD PTR [rsp+0x500]
  a0e517:	vextractf32x4 XMMWORD PTR [rsi+0x588],zmm0,0x3
  a0e522:	vmovups zmm0,ZMMWORD PTR [rsp+0x340]
  a0e52a:	vextractf32x4 xmm0,zmm0,0x3
  a0e531:	vmovlps QWORD PTR [rsi+0x598],xmm0
  a0e539:	vmovups YMMWORD PTR [rsi+0x568],ymm17
  a0e543:	vmovups ZMMWORD PTR [rsi+0x5a0],zmm23
  a0e54d:	vmovups zmm0,ZMMWORD PTR [rsp+0x4c0]
  a0e555:	vextractf32x4 XMMWORD PTR [rsi+0x600],zmm0,0x3
  a0e55d:	vextractf32x4 xmm0,zmm19,0x3
  a0e564:	vmovlps QWORD PTR [rsi+0x610],xmm0
  a0e56c:	vmovups YMMWORD PTR [rsi+0x5e0],ymm7
  a0e574:	vmovups ZMMWORD PTR [rsi+0x618],zmm6
  a0e57e:	vextractf32x4 XMMWORD PTR [rsi+0x678],zmm8,0x3
  a0e589:	vextractf32x4 xmm0,zmm12,0x3
  a0e590:	vmovlps QWORD PTR [rsi+0x688],xmm0
  a0e598:	vmovups YMMWORD PTR [rsi+0x658],ymm24
  a0e5a2:	add    rsp,0x6c8
  a0e5a9:	vzeroupper
  a0e5ac:	ret
