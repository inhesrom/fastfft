
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

000000000096ac80 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  96ac80:	c5 fb 12 47 28       	vmovddup xmm0,QWORD PTR [rdi+0x28]
  96ac85:	c4 e3 79 0d 47 20 01 	vblendpd xmm0,xmm0,XMMWORD PTR [rdi+0x20],0x1
  96ac8c:	c5 fd 10 0f          	vmovupd ymm1,YMMWORD PTR [rdi]
  96ac90:	c5 fd 10 57 30       	vmovupd ymm2,YMMWORD PTR [rdi+0x30]
  96ac95:	c5 fd 10 6f 60       	vmovupd ymm5,YMMWORD PTR [rdi+0x60]
  96ac9a:	c5 7d 10 87 90 00 00 	vmovupd ymm8,YMMWORD PTR [rdi+0x90]
  96aca1:	00 
  96aca2:	62 f3 75 48 18 d8 02 	vinsertf32x4 zmm3,zmm1,xmm0,0x2
  96aca9:	62 f1 fd 48 28 3d 4d 	vmovapd zmm7,ZMMWORD PTR [rip+0xffffffffff71b94d]        # 86600 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x13ab0>
  96acb0:	b9 71 ff 
  96acb3:	c5 f9 57 c0          	vxorpd xmm0,xmm0,xmm0
  96acb7:	62 f1 fd 48 28 e3    	vmovapd zmm4,zmm3
  96acbd:	62 f2 c5 48 7f e0    	vpermt2pd zmm4,zmm7,zmm0
  96acc3:	62 f1 fd 48 28 0d 73 	vmovapd zmm1,ZMMWORD PTR [rip+0xffffffffff71b973]        # 86640 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x13af0>
  96acca:	b9 71 ff 
  96accd:	62 f2 f5 48 7f d8    	vpermt2pd zmm3,zmm1,zmm0
  96acd3:	c5 fb 12 77 58       	vmovddup xmm6,QWORD PTR [rdi+0x58]
  96acd8:	c4 e3 49 0d 77 50 01 	vblendpd xmm6,xmm6,XMMWORD PTR [rdi+0x50],0x1
  96acdf:	62 f3 6d 48 18 f6 02 	vinsertf32x4 zmm6,zmm2,xmm6,0x2
  96ace6:	62 71 fd 48 28 ce    	vmovapd zmm9,zmm6
  96acec:	62 72 c5 48 7f c8    	vpermt2pd zmm9,zmm7,zmm0
  96acf2:	62 f2 f5 48 7f f0    	vpermt2pd zmm6,zmm1,zmm0
  96acf8:	c5 fb 12 97 88 00 00 	vmovddup xmm2,QWORD PTR [rdi+0x88]
  96acff:	00 
  96ad00:	c4 e3 69 0d 97 80 00 	vblendpd xmm2,xmm2,XMMWORD PTR [rdi+0x80],0x1
  96ad07:	00 00 01 
  96ad0a:	62 73 55 48 18 d2 02 	vinsertf32x4 zmm10,zmm5,xmm2,0x2
  96ad11:	62 51 fd 48 28 da    	vmovapd zmm11,zmm10
  96ad17:	62 72 c5 48 7f d8    	vpermt2pd zmm11,zmm7,zmm0
  96ad1d:	62 72 f5 48 7f d0    	vpermt2pd zmm10,zmm1,zmm0
  96ad23:	c5 fb 12 97 b8 00 00 	vmovddup xmm2,QWORD PTR [rdi+0xb8]
  96ad2a:	00 
  96ad2b:	c4 e3 69 0d 97 b0 00 	vblendpd xmm2,xmm2,XMMWORD PTR [rdi+0xb0],0x1
  96ad32:	00 00 01 
  96ad35:	62 73 3d 48 18 c2 02 	vinsertf32x4 zmm8,zmm8,xmm2,0x2
  96ad3c:	62 51 fd 48 28 e0    	vmovapd zmm12,zmm8
  96ad42:	62 72 c5 48 7f e0    	vpermt2pd zmm12,zmm7,zmm0
  96ad48:	62 72 f5 48 7f c0    	vpermt2pd zmm8,zmm1,zmm0
  96ad4e:	c5 fb 12 97 e8 00 00 	vmovddup xmm2,QWORD PTR [rdi+0xe8]
  96ad55:	00 
  96ad56:	c4 e3 69 0d 97 e0 00 	vblendpd xmm2,xmm2,XMMWORD PTR [rdi+0xe0],0x1
  96ad5d:	00 00 01 
  96ad60:	c5 fd 10 af c0 00 00 	vmovupd ymm5,YMMWORD PTR [rdi+0xc0]
  96ad67:	00 
  96ad68:	62 73 55 48 18 ea 02 	vinsertf32x4 zmm13,zmm5,xmm2,0x2
  96ad6f:	62 51 fd 48 28 f5    	vmovapd zmm14,zmm13
  96ad75:	62 72 c5 48 7f f0    	vpermt2pd zmm14,zmm7,zmm0
  96ad7b:	62 72 f5 48 7f e8    	vpermt2pd zmm13,zmm1,zmm0
  96ad81:	c5 fd 10 97 f0 00 00 	vmovupd ymm2,YMMWORD PTR [rdi+0xf0]
  96ad88:	00 
  96ad89:	c5 fb 12 af 18 01 00 	vmovddup xmm5,QWORD PTR [rdi+0x118]
  96ad90:	00 
  96ad91:	c4 e3 51 0d af 10 01 	vblendpd xmm5,xmm5,XMMWORD PTR [rdi+0x110],0x1
  96ad98:	00 00 01 
  96ad9b:	62 73 6d 48 18 fd 02 	vinsertf32x4 zmm15,zmm2,xmm5,0x2
  96ada2:	62 f2 85 48 77 f8    	vpermi2pd zmm7,zmm15,zmm0
  96ada8:	62 72 f5 48 7f f8    	vpermt2pd zmm15,zmm1,zmm0
  96adae:	62 d1 ad 48 58 d5    	vaddpd zmm2,zmm10,zmm13
  96adb4:	62 e1 e5 48 58 c2    	vaddpd zmm16,zmm3,zmm2
  96adba:	62 e1 85 48 58 ce    	vaddpd zmm17,zmm15,zmm6
  96adc0:	62 a1 bd 48 58 d1    	vaddpd zmm18,zmm8,zmm17
  96adc6:	62 a1 fd 40 58 da    	vaddpd zmm19,zmm16,zmm18
  96adcc:	62 c1 a5 48 58 e6    	vaddpd zmm20,zmm11,zmm14
  96add2:	62 a1 dd 48 58 ec    	vaddpd zmm21,zmm4,zmm20
  96add8:	62 c1 c5 48 58 f1    	vaddpd zmm22,zmm7,zmm9
  96adde:	62 a1 9d 48 58 fe    	vaddpd zmm23,zmm12,zmm22
  96ade4:	62 f2 fd 48 19 0d aa 	vbroadcastsd zmm1,QWORD PTR [rip+0xffffffffff709caa]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  96adeb:	9c 70 ff 
  96adee:	62 b1 d5 40 58 ef    	vaddpd zmm5,zmm21,zmm23
  96adf4:	62 f2 f5 48 bc da    	vfnmadd231pd zmm3,zmm1,zmm2
  96adfa:	62 f2 fd 48 19 15 1c 	vbroadcastsd zmm2,QWORD PTR [rip+0xffffffffff709e1c]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  96ae01:	9e 70 ff 
  96ae04:	62 51 a5 48 5c de    	vsubpd zmm11,zmm11,zmm14
  96ae0a:	62 71 a5 48 59 da    	vmulpd zmm11,zmm11,zmm2
  96ae10:	62 51 e5 48 58 f3    	vaddpd zmm14,zmm3,zmm11
  96ae16:	62 32 f5 48 bc c1    	vfnmadd231pd zmm8,zmm1,zmm17
  96ae1c:	62 d1 c5 48 5c f9    	vsubpd zmm7,zmm7,zmm9
  96ae22:	62 f1 c5 48 59 fa    	vmulpd zmm7,zmm7,zmm2
  96ae28:	62 71 bd 48 58 cf    	vaddpd zmm9,zmm8,zmm7
  96ae2e:	62 c1 8d 48 5c c9    	vsubpd zmm17,zmm14,zmm9
  96ae34:	62 b2 f5 48 bc e4    	vfnmadd231pd zmm4,zmm1,zmm20
  96ae3a:	62 51 ad 48 5c d5    	vsubpd zmm10,zmm10,zmm13
  96ae40:	62 71 ad 48 59 d2    	vmulpd zmm10,zmm10,zmm2
  96ae46:	62 51 dd 48 5c ea    	vsubpd zmm13,zmm4,zmm10
  96ae4c:	62 32 f5 48 bc e6    	vfnmadd231pd zmm12,zmm1,zmm22
  96ae52:	62 f1 85 48 5c f6    	vsubpd zmm6,zmm15,zmm6
  96ae58:	62 f1 cd 48 59 f2    	vmulpd zmm6,zmm6,zmm2
  96ae5e:	62 71 9d 48 5c fe    	vsubpd zmm15,zmm12,zmm6
  96ae64:	62 c1 95 48 5c e7    	vsubpd zmm20,zmm13,zmm15
  96ae6a:	62 d1 e5 48 5c db    	vsubpd zmm3,zmm3,zmm11
  96ae70:	62 f1 bd 48 5c ff    	vsubpd zmm7,zmm8,zmm7
  96ae76:	62 71 e5 48 58 c7    	vaddpd zmm8,zmm3,zmm7
  96ae7c:	62 f1 ad 48 58 e4    	vaddpd zmm4,zmm10,zmm4
  96ae82:	62 d1 cd 48 58 f4    	vaddpd zmm6,zmm6,zmm12
  96ae88:	62 71 dd 48 58 d6    	vaddpd zmm10,zmm4,zmm6
  96ae8e:	62 31 fd 40 5c da    	vsubpd zmm11,zmm16,zmm18
  96ae94:	62 31 d5 40 5c e7    	vsubpd zmm12,zmm21,zmm23
  96ae9a:	62 51 8d 48 58 c9    	vaddpd zmm9,zmm14,zmm9
  96aea0:	62 51 95 48 58 ef    	vaddpd zmm13,zmm13,zmm15
  96aea6:	62 f1 e5 48 5c df    	vsubpd zmm3,zmm3,zmm7
  96aeac:	62 f1 dd 48 5c e6    	vsubpd zmm4,zmm4,zmm6
  96aeb2:	62 f1 fd 48 10 35 ac 	vmovupd zmm6,ZMMWORD PTR [rip+0xffffffffff75beac]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  96aeb9:	be 75 ff 
  96aebc:	62 c2 cd 48 7f d9    	vpermt2pd zmm19,zmm6,zmm9
  96aec2:	62 e2 cd 48 7f cb    	vpermt2pd zmm17,zmm6,zmm3
  96aec8:	62 72 cd 48 7f c0    	vpermt2pd zmm8,zmm6,zmm0
  96aece:	62 72 cd 48 7f d8    	vpermt2pd zmm11,zmm6,zmm0
  96aed4:	62 f1 fd 48 10 1d 0a 	vmovupd zmm3,ZMMWORD PTR [rip+0xffffffffff75be0a]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  96aedb:	be 75 ff 
  96aede:	62 b1 fd 48 28 fb    	vmovapd zmm7,zmm19
  96aee4:	62 d2 e5 48 7f f8    	vpermt2pd zmm7,zmm3,zmm8
  96aeea:	62 71 fd 48 10 0d 34 	vmovupd zmm9,ZMMWORD PTR [rip+0xffffffffff75be34]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  96aef1:	be 75 ff 
  96aef4:	62 c2 b5 48 7f d8    	vpermt2pd zmm19,zmm9,zmm8
  96aefa:	62 31 fd 48 28 c1    	vmovapd zmm8,zmm17
  96af00:	62 52 e5 48 7f c3    	vpermt2pd zmm8,zmm3,zmm11
  96af06:	62 c2 b5 48 7f cb    	vpermt2pd zmm17,zmm9,zmm11
  96af0c:	62 31 e5 40 14 d9    	vunpcklpd zmm11,zmm19,zmm17
  96af12:	62 51 c5 48 14 f0    	vunpcklpd zmm14,zmm7,zmm8
  96af18:	62 d1 c5 48 15 f8    	vunpckhpd zmm7,zmm7,zmm8
  96af1e:	62 d2 cd 48 7f ed    	vpermt2pd zmm5,zmm6,zmm13
  96af24:	62 e2 cd 48 7f e4    	vpermt2pd zmm20,zmm6,zmm4
  96af2a:	62 72 cd 48 7f d0    	vpermt2pd zmm10,zmm6,zmm0
  96af30:	62 72 cd 48 7f e0    	vpermt2pd zmm12,zmm6,zmm0
  96af36:	62 f1 fd 48 28 c5    	vmovapd zmm0,zmm5
  96af3c:	62 d2 e5 48 7f c2    	vpermt2pd zmm0,zmm3,zmm10
  96af42:	62 d2 b5 48 7f ea    	vpermt2pd zmm5,zmm9,zmm10
  96af48:	62 d2 dd 40 77 dc    	vpermi2pd zmm3,zmm20,zmm12
  96af4e:	62 c2 b5 48 7f e4    	vpermt2pd zmm20,zmm9,zmm12
  96af54:	62 b1 d5 48 14 e4    	vunpcklpd zmm4,zmm5,zmm20
  96af5a:	62 f1 fd 48 14 eb    	vunpcklpd zmm5,zmm0,zmm3
  96af60:	62 f1 fd 48 15 c3    	vunpckhpd zmm0,zmm0,zmm3
  96af66:	62 f1 fd 48 10 5a 02 	vmovupd zmm3,ZMMWORD PTR [rdx+0x80]
  96af6d:	62 f1 fd 48 10 72 03 	vmovupd zmm6,ZMMWORD PTR [rdx+0xc0]
  96af74:	62 71 fd 48 10 42 04 	vmovupd zmm8,ZMMWORD PTR [rdx+0x100]
  96af7b:	62 71 fd 48 10 4a 05 	vmovupd zmm9,ZMMWORD PTR [rdx+0x140]
  96af82:	62 71 c5 48 59 d3    	vmulpd zmm10,zmm7,zmm3
  96af88:	62 72 fd 48 bc d6    	vfnmadd231pd zmm10,zmm0,zmm6
  96af8e:	62 51 a5 48 59 e0    	vmulpd zmm12,zmm11,zmm8
  96af94:	62 52 dd 48 bc e1    	vfnmadd231pd zmm12,zmm4,zmm9
  96af9a:	62 51 ad 48 58 ec    	vaddpd zmm13,zmm10,zmm12
  96afa0:	62 f1 fd 48 59 c3    	vmulpd zmm0,zmm0,zmm3
  96afa6:	62 f2 c5 48 b8 c6    	vfmadd231pd zmm0,zmm7,zmm6
  96afac:	62 d1 dd 48 59 d8    	vmulpd zmm3,zmm4,zmm8
  96afb2:	62 d2 a5 48 b8 d9    	vfmadd231pd zmm3,zmm11,zmm9
  96afb8:	62 f1 fd 48 58 e3    	vaddpd zmm4,zmm0,zmm3
  96afbe:	62 f1 fd 48 28 f1    	vmovapd zmm6,zmm1
  96afc4:	62 d2 95 48 ac f6    	vfnmadd213pd zmm6,zmm13,zmm14
  96afca:	62 f1 fd 48 5c c3    	vsubpd zmm0,zmm0,zmm3
  96afd0:	62 f1 fd 48 59 c2    	vmulpd zmm0,zmm0,zmm2
  96afd6:	62 f1 cd 48 58 d8    	vaddpd zmm3,zmm6,zmm0
  96afdc:	62 f2 dd 48 ac cd    	vfnmadd213pd zmm1,zmm4,zmm5
  96afe2:	62 d1 ad 48 5c fc    	vsubpd zmm7,zmm10,zmm12
  96afe8:	62 f1 c5 48 59 d2    	vmulpd zmm2,zmm7,zmm2
  96afee:	62 f1 f5 48 5c fa    	vsubpd zmm7,zmm1,zmm2
  96aff4:	c5 7d 28 05 04 bd 70 	vmovapd ymm8,YMMWORD PTR [rip+0xffffffffff70bd04]        # 76d00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x41b0>
  96affb:	ff 
  96affc:	62 71 fd 48 28 cf    	vmovapd zmm9,zmm7
  96b002:	62 72 bd 48 7f cb    	vpermt2pd zmm9,zmm8,zmm3
  96b008:	62 f1 cd 48 5c c0    	vsubpd zmm0,zmm6,zmm0
  96b00e:	62 f1 f5 48 58 ca    	vaddpd zmm1,zmm1,zmm2
  96b014:	62 f1 fd 48 28 d1    	vmovapd zmm2,zmm1
  96b01a:	62 f2 bd 48 7f d0    	vpermt2pd zmm2,zmm8,zmm0
  96b020:	62 f1 d5 48 58 e4    	vaddpd zmm4,zmm5,zmm4
  96b026:	62 d1 8d 48 58 ed    	vaddpd zmm5,zmm14,zmm13
  96b02c:	62 72 dd 48 77 c5    	vpermi2pd zmm8,zmm4,zmm5
  96b032:	62 f1 fd 48 28 35 44 	vmovapd zmm6,ZMMWORD PTR [rip+0xffffffffff71b644]        # 86680 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x13b30>
  96b039:	b6 71 ff 
  96b03c:	62 f2 cd 48 7f e5    	vpermt2pd zmm4,zmm6,zmm5
  96b042:	62 f1 fd 48 11 26    	vmovupd ZMMWORD PTR [rsi],zmm4
  96b048:	c5 7d 11 46 40       	vmovupd YMMWORD PTR [rsi+0x40],ymm8
  96b04d:	62 f2 cd 48 7f fb    	vpermt2pd zmm7,zmm6,zmm3
  96b053:	62 f1 fd 48 11 be 60 	vmovupd ZMMWORD PTR [rsi+0x60],zmm7
  96b05a:	00 00 00 
  96b05d:	c5 7d 11 8e a0 00 00 	vmovupd YMMWORD PTR [rsi+0xa0],ymm9
  96b064:	00 
  96b065:	62 f2 cd 48 7f c8    	vpermt2pd zmm1,zmm6,zmm0
  96b06b:	62 f1 fd 48 11 4e 03 	vmovupd ZMMWORD PTR [rsi+0xc0],zmm1
  96b072:	c5 fd 11 96 00 01 00 	vmovupd YMMWORD PTR [rsi+0x100],ymm2
  96b079:	00 
  96b07a:	c5 f8 77             	vzeroupper
  96b07d:	c3                   	ret
