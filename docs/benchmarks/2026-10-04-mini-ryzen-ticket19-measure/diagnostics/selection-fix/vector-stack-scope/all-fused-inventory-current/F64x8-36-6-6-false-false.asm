
target/ticket19/selection-fix/vector-stack-scope/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000957d40 <<fastfft::isa::x86::F64x8 as fastfft::engine::small::SmallVector>::rectangle>:
  957d40:	62 f1 fd 48 10 37    	vmovupd zmm6,ZMMWORD PTR [rdi]
  957d46:	c5 fd 10 47 40       	vmovupd ymm0,YMMWORD PTR [rdi+0x40]
  957d4b:	62 f1 fd 48 28 3d eb 	vmovapd zmm7,ZMMWORD PTR [rip+0xffffffffff72d0eb]        # 84e40 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x122f0>
  957d52:	d0 72 ff 
  957d55:	62 f1 fd 48 28 e6    	vmovapd zmm4,zmm6
  957d5b:	62 f2 c5 48 7f e0    	vpermt2pd zmm4,zmm7,zmm0
  957d61:	62 f1 fd 48 28 0d 15 	vmovapd zmm1,ZMMWORD PTR [rip+0xffffffffff72d115]        # 84e80 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x12330>
  957d68:	d1 72 ff 
  957d6b:	62 f2 f5 48 7f f0    	vpermt2pd zmm6,zmm1,zmm0
  957d71:	62 f1 fd 48 10 af 60 	vmovupd zmm5,ZMMWORD PTR [rdi+0x60]
  957d78:	00 00 00 
  957d7b:	c5 fd 10 87 a0 00 00 	vmovupd ymm0,YMMWORD PTR [rdi+0xa0]
  957d82:	00 
  957d83:	62 71 fd 48 28 c5    	vmovapd zmm8,zmm5
  957d89:	62 72 c5 48 7f c0    	vpermt2pd zmm8,zmm7,zmm0
  957d8f:	62 f2 f5 48 7f e8    	vpermt2pd zmm5,zmm1,zmm0
  957d95:	62 f1 fd 48 10 57 03 	vmovupd zmm2,ZMMWORD PTR [rdi+0xc0]
  957d9c:	c5 fd 10 87 00 01 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x100]
  957da3:	00 
  957da4:	62 71 fd 48 28 ca    	vmovapd zmm9,zmm2
  957daa:	62 72 c5 48 7f c8    	vpermt2pd zmm9,zmm7,zmm0
  957db0:	62 f2 f5 48 7f d0    	vpermt2pd zmm2,zmm1,zmm0
  957db6:	62 71 fd 48 10 97 20 	vmovupd zmm10,ZMMWORD PTR [rdi+0x120]
  957dbd:	01 00 00 
  957dc0:	c5 fd 10 87 60 01 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x160]
  957dc7:	00 
  957dc8:	62 51 fd 48 28 da    	vmovapd zmm11,zmm10
  957dce:	62 72 c5 48 7f d8    	vpermt2pd zmm11,zmm7,zmm0
  957dd4:	62 72 f5 48 7f d0    	vpermt2pd zmm10,zmm1,zmm0
  957dda:	62 71 fd 48 10 67 06 	vmovupd zmm12,ZMMWORD PTR [rdi+0x180]
  957de1:	c5 fd 10 87 c0 01 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x1c0]
  957de8:	00 
  957de9:	62 51 fd 48 28 ec    	vmovapd zmm13,zmm12
  957def:	62 72 c5 48 7f e8    	vpermt2pd zmm13,zmm7,zmm0
  957df5:	62 72 f5 48 7f e0    	vpermt2pd zmm12,zmm1,zmm0
  957dfb:	62 71 fd 48 10 b7 e0 	vmovupd zmm14,ZMMWORD PTR [rdi+0x1e0]
  957e02:	01 00 00 
  957e05:	c5 fd 10 87 20 02 00 	vmovupd ymm0,YMMWORD PTR [rdi+0x220]
  957e0c:	00 
  957e0d:	62 f2 8d 48 77 f8    	vpermi2pd zmm7,zmm14,zmm0
  957e13:	62 72 f5 48 7f f0    	vpermt2pd zmm14,zmm1,zmm0
  957e19:	62 d1 b5 48 58 cd    	vaddpd zmm1,zmm9,zmm13
  957e1f:	62 71 dd 48 58 f9    	vaddpd zmm15,zmm4,zmm1
  957e25:	62 c1 c5 48 58 c0    	vaddpd zmm16,zmm7,zmm8
  957e2b:	62 a1 a5 48 58 c8    	vaddpd zmm17,zmm11,zmm16
  957e31:	62 b1 85 48 58 d9    	vaddpd zmm3,zmm15,zmm17
  957e37:	62 c1 ed 48 58 d4    	vaddpd zmm18,zmm2,zmm12
  957e3d:	62 a1 cd 48 58 da    	vaddpd zmm19,zmm6,zmm18
  957e43:	62 f2 fd 48 19 05 4b 	vbroadcastsd zmm0,QWORD PTR [rip+0xffffffffff71cc4b]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  957e4a:	cc 71 ff 
  957e4d:	62 e1 8d 48 58 e5    	vaddpd zmm20,zmm14,zmm5
  957e53:	62 f2 fd 48 bc e1    	vfnmadd231pd zmm4,zmm0,zmm1
  957e59:	62 a1 ad 48 58 ec    	vaddpd zmm21,zmm10,zmm20
  957e5f:	62 51 ed 48 5c e4    	vsubpd zmm12,zmm2,zmm12
  957e65:	62 b1 e5 40 58 d5    	vaddpd zmm2,zmm19,zmm21
  957e6b:	62 32 fd 48 bc d8    	vfnmadd231pd zmm11,zmm0,zmm16
  957e71:	62 f2 fd 48 19 0d a5 	vbroadcastsd zmm1,QWORD PTR [rip+0xffffffffff71cda5]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  957e78:	cd 71 ff 
  957e7b:	62 71 9d 48 59 e1    	vmulpd zmm12,zmm12,zmm1
  957e81:	62 f1 8d 48 5c ed    	vsubpd zmm5,zmm14,zmm5
  957e87:	62 51 dd 48 58 f4    	vaddpd zmm14,zmm4,zmm12
  957e8d:	62 e1 d5 48 59 c1    	vmulpd zmm16,zmm5,zmm1
  957e93:	62 b2 fd 48 bc f2    	vfnmadd231pd zmm6,zmm0,zmm18
  957e99:	62 a1 a5 48 58 d0    	vaddpd zmm18,zmm11,zmm16
  957e9f:	62 51 b5 48 5c cd    	vsubpd zmm9,zmm9,zmm13
  957ea5:	62 b1 8d 48 5c ea    	vsubpd zmm5,zmm14,zmm18
  957eab:	62 71 b5 48 59 e9    	vmulpd zmm13,zmm9,zmm1
  957eb1:	62 32 fd 48 bc d4    	vfnmadd231pd zmm10,zmm0,zmm20
  957eb7:	62 c1 cd 48 5c e5    	vsubpd zmm20,zmm6,zmm13
  957ebd:	62 d1 c5 48 5c f8    	vsubpd zmm7,zmm7,zmm8
  957ec3:	62 f1 c5 48 59 f9    	vmulpd zmm7,zmm7,zmm1
  957ec9:	62 e1 ad 48 5c f7    	vsubpd zmm22,zmm10,zmm7
  957ecf:	62 51 dd 48 5c e4    	vsubpd zmm12,zmm4,zmm12
  957ed5:	62 b1 dd 40 5c e6    	vsubpd zmm4,zmm20,zmm22
  957edb:	62 31 a5 48 5c d8    	vsubpd zmm11,zmm11,zmm16
  957ee1:	62 51 9d 48 58 cb    	vaddpd zmm9,zmm12,zmm11
  957ee7:	62 71 95 48 58 ee    	vaddpd zmm13,zmm13,zmm6
  957eed:	62 51 c5 48 58 d2    	vaddpd zmm10,zmm7,zmm10
  957ef3:	62 d1 95 48 58 fa    	vaddpd zmm7,zmm13,zmm10
  957ef9:	62 b1 85 48 5c f1    	vsubpd zmm6,zmm15,zmm17
  957eff:	62 31 e5 40 5c c5    	vsubpd zmm8,zmm19,zmm21
  957f05:	62 31 8d 48 58 f2    	vaddpd zmm14,zmm14,zmm18
  957f0b:	62 31 dd 40 58 fe    	vaddpd zmm15,zmm20,zmm22
  957f11:	62 51 9d 48 5c e3    	vsubpd zmm12,zmm12,zmm11
  957f17:	62 51 95 48 5c ea    	vsubpd zmm13,zmm13,zmm10
  957f1d:	62 71 fd 48 10 15 41 	vmovupd zmm10,ZMMWORD PTR [rip+0xffffffffff76ee41]        # c6d68 <crc32fast::table::CRC32_TABLE+0x90e4>
  957f24:	ee 76 ff 
  957f27:	62 71 fd 48 28 db    	vmovapd zmm11,zmm3
  957f2d:	62 52 ad 48 7f de    	vpermt2pd zmm11,zmm10,zmm14
  957f33:	62 e1 fd 48 10 05 6b 	vmovupd zmm16,ZMMWORD PTR [rip+0xffffffffff76ee6b]        # c6da8 <crc32fast::table::CRC32_TABLE+0x9124>
  957f3a:	ee 76 ff 
  957f3d:	62 d2 fd 40 7f de    	vpermt2pd zmm3,zmm16,zmm14
  957f43:	62 71 fd 48 28 f5    	vmovapd zmm14,zmm5
  957f49:	62 52 ad 48 7f f4    	vpermt2pd zmm14,zmm10,zmm12
  957f4f:	62 d2 fd 40 7f ec    	vpermt2pd zmm5,zmm16,zmm12
  957f55:	c4 41 19 57 e4       	vxorpd xmm12,xmm12,xmm12
  957f5a:	62 c1 fd 48 28 c9    	vmovapd zmm17,zmm9
  957f60:	62 c2 ad 48 7f cc    	vpermt2pd zmm17,zmm10,zmm12
  957f66:	62 52 fd 40 7f cc    	vpermt2pd zmm9,zmm16,zmm12
  957f6c:	62 e1 fd 48 28 d6    	vmovapd zmm18,zmm6
  957f72:	62 c2 ad 48 7f d4    	vpermt2pd zmm18,zmm10,zmm12
  957f78:	62 d2 fd 40 7f f4    	vpermt2pd zmm6,zmm16,zmm12
  957f7e:	62 e1 fd 48 10 1d 60 	vmovupd zmm19,ZMMWORD PTR [rip+0xffffffffff76ed60]        # c6ce8 <crc32fast::table::CRC32_TABLE+0x9064>
  957f85:	ed 76 ff 
  957f88:	62 e1 fd 48 28 e2    	vmovapd zmm20,zmm2
  957f8e:	62 c2 ad 48 7f e7    	vpermt2pd zmm20,zmm10,zmm15
  957f94:	62 d2 fd 40 7f d7    	vpermt2pd zmm2,zmm16,zmm15
  957f9a:	62 71 fd 48 28 fc    	vmovapd zmm15,zmm4
  957fa0:	62 52 ad 48 7f fd    	vpermt2pd zmm15,zmm10,zmm13
  957fa6:	62 d2 fd 40 7f e5    	vpermt2pd zmm4,zmm16,zmm13
  957fac:	62 71 fd 48 28 ef    	vmovapd zmm13,zmm7
  957fb2:	62 52 ad 48 7f ec    	vpermt2pd zmm13,zmm10,zmm12
  957fb8:	62 d2 fd 40 7f fc    	vpermt2pd zmm7,zmm16,zmm12
  957fbe:	62 52 bd 48 77 d4    	vpermi2pd zmm10,zmm8,zmm12
  957fc4:	62 52 fd 40 7f c4    	vpermt2pd zmm8,zmm16,zmm12
  957fca:	62 51 fd 48 28 e3    	vmovapd zmm12,zmm11
  957fd0:	62 32 e5 40 7f e1    	vpermt2pd zmm12,zmm19,zmm17
  957fd6:	62 e1 fd 48 10 05 48 	vmovupd zmm16,ZMMWORD PTR [rip+0xffffffffff76ed48]        # c6d28 <crc32fast::table::CRC32_TABLE+0x90a4>
  957fdd:	ed 76 ff 
  957fe0:	62 32 fd 40 7f d9    	vpermt2pd zmm11,zmm16,zmm17
  957fe6:	62 c1 fd 48 28 ce    	vmovapd zmm17,zmm14
  957fec:	62 a2 e5 40 7f ca    	vpermt2pd zmm17,zmm19,zmm18
  957ff2:	62 32 fd 40 7f f2    	vpermt2pd zmm14,zmm16,zmm18
  957ff8:	62 d2 e5 40 7f d9    	vpermt2pd zmm3,zmm19,zmm9
  957ffe:	62 f2 e5 40 7f ee    	vpermt2pd zmm5,zmm19,zmm6
  958004:	62 b1 9d 48 14 f1    	vunpcklpd zmm6,zmm12,zmm17
  95800a:	62 31 9d 48 15 c9    	vunpckhpd zmm9,zmm12,zmm17
  958010:	62 51 a5 48 14 e6    	vunpcklpd zmm12,zmm11,zmm14
  958016:	62 51 a5 48 15 de    	vunpckhpd zmm11,zmm11,zmm14
  95801c:	62 71 e5 48 14 f5    	vunpcklpd zmm14,zmm3,zmm5
  958022:	62 f1 e5 48 15 ed    	vunpckhpd zmm5,zmm3,zmm5
  958028:	62 a1 fd 48 28 cc    	vmovapd zmm17,zmm20
  95802e:	62 c2 e5 40 7f cd    	vpermt2pd zmm17,zmm19,zmm13
  958034:	62 c2 fd 40 7f e5    	vpermt2pd zmm20,zmm16,zmm13
  95803a:	62 51 fd 48 28 ef    	vmovapd zmm13,zmm15
  958040:	62 52 e5 40 7f ea    	vpermt2pd zmm13,zmm19,zmm10
  958046:	62 52 fd 40 7f fa    	vpermt2pd zmm15,zmm16,zmm10
  95804c:	62 f2 e5 40 7f d7    	vpermt2pd zmm2,zmm19,zmm7
  958052:	62 d2 e5 40 7f e0    	vpermt2pd zmm4,zmm19,zmm8
  958058:	62 d1 f5 40 14 dd    	vunpcklpd zmm3,zmm17,zmm13
  95805e:	62 d1 f5 40 15 fd    	vunpckhpd zmm7,zmm17,zmm13
  958064:	62 51 dd 40 14 c7    	vunpcklpd zmm8,zmm20,zmm15
  95806a:	62 51 dd 40 15 d7    	vunpckhpd zmm10,zmm20,zmm15
  958070:	62 71 ed 48 14 ec    	vunpcklpd zmm13,zmm2,zmm4
  958076:	62 f1 ed 48 15 e4    	vunpckhpd zmm4,zmm2,zmm4
  95807c:	62 71 fd 48 10 7a 02 	vmovupd zmm15,ZMMWORD PTR [rdx+0x80]
  958083:	62 e1 fd 48 10 42 03 	vmovupd zmm16,ZMMWORD PTR [rdx+0xc0]
  95808a:	62 e1 fd 48 10 4a 04 	vmovupd zmm17,ZMMWORD PTR [rdx+0x100]
  958091:	62 e1 fd 48 10 52 05 	vmovupd zmm18,ZMMWORD PTR [rdx+0x140]
  958098:	62 b1 9d 48 59 d1    	vmulpd zmm2,zmm12,zmm17
  95809e:	62 b2 bd 48 bc d2    	vfnmadd231pd zmm2,zmm8,zmm18
  9580a4:	62 31 bd 48 59 c1    	vmulpd zmm8,zmm8,zmm17
  9580aa:	62 e1 fd 48 10 4a 08 	vmovupd zmm17,ZMMWORD PTR [rdx+0x200]
  9580b1:	62 32 9d 48 b8 c2    	vfmadd231pd zmm8,zmm12,zmm18
  9580b7:	62 71 fd 48 10 62 09 	vmovupd zmm12,ZMMWORD PTR [rdx+0x240]
  9580be:	62 a1 8d 48 59 d1    	vmulpd zmm18,zmm14,zmm17
  9580c4:	62 c2 95 48 bc d4    	vfnmadd231pd zmm18,zmm13,zmm12
  9580ca:	62 31 95 48 59 e9    	vmulpd zmm13,zmm13,zmm17
  9580d0:	62 e1 fd 48 10 4a 06 	vmovupd zmm17,ZMMWORD PTR [rdx+0x180]
  9580d7:	62 52 8d 48 b8 ec    	vfmadd231pd zmm13,zmm14,zmm12
  9580dd:	62 71 fd 48 10 62 07 	vmovupd zmm12,ZMMWORD PTR [rdx+0x1c0]
  9580e4:	62 31 a5 48 59 f1    	vmulpd zmm14,zmm11,zmm17
  9580ea:	62 52 ad 48 bc f4    	vfnmadd231pd zmm14,zmm10,zmm12
  9580f0:	62 31 ad 48 59 d1    	vmulpd zmm10,zmm10,zmm17
  9580f6:	62 e1 fd 48 10 4a 0a 	vmovupd zmm17,ZMMWORD PTR [rdx+0x280]
  9580fd:	62 52 a5 48 b8 d4    	vfmadd231pd zmm10,zmm11,zmm12
  958103:	62 71 fd 48 10 5a 0b 	vmovupd zmm11,ZMMWORD PTR [rdx+0x2c0]
  95810a:	62 31 d5 48 59 e1    	vmulpd zmm12,zmm5,zmm17
  958110:	62 52 dd 48 bc e3    	vfnmadd231pd zmm12,zmm4,zmm11
  958116:	62 a1 dd 48 59 c9    	vmulpd zmm17,zmm4,zmm17
  95811c:	62 a1 ed 48 58 da    	vaddpd zmm19,zmm2,zmm18
  958122:	62 c2 d5 48 b8 cb    	vfmadd231pd zmm17,zmm5,zmm11
  958128:	62 b1 cd 48 58 e3    	vaddpd zmm4,zmm6,zmm19
  95812e:	62 51 b5 48 59 df    	vmulpd zmm11,zmm9,zmm15
  958134:	62 32 c5 48 bc d8    	vfnmadd231pd zmm11,zmm7,zmm16
  95813a:	62 d1 c5 48 59 ff    	vmulpd zmm7,zmm7,zmm15
  958140:	62 51 9d 48 58 fb    	vaddpd zmm15,zmm12,zmm11
  958146:	62 b2 b5 48 b8 f8    	vfmadd231pd zmm7,zmm9,zmm16
  95814c:	62 d1 8d 48 58 ef    	vaddpd zmm5,zmm14,zmm15
  958152:	62 51 bd 48 58 cd    	vaddpd zmm9,zmm8,zmm13
  958158:	62 e2 fd 48 ac de    	vfnmadd213pd zmm19,zmm0,zmm6
  95815e:	62 f1 b5 48 58 f3    	vaddpd zmm6,zmm9,zmm3
  958164:	62 51 bd 48 5c c5    	vsubpd zmm8,zmm8,zmm13
  95816a:	62 71 f5 40 58 ef    	vaddpd zmm13,zmm17,zmm7
  958170:	62 52 fd 48 bc f7    	vfnmadd231pd zmm14,zmm0,zmm15
  958176:	62 51 ad 48 58 fd    	vaddpd zmm15,zmm10,zmm13
  95817c:	62 71 bd 48 59 c1    	vmulpd zmm8,zmm8,zmm1
  958182:	62 f1 f5 40 5c ff    	vsubpd zmm7,zmm17,zmm7
  958188:	62 c1 e5 40 58 c0    	vaddpd zmm16,zmm19,zmm8
  95818e:	62 f1 c5 48 59 f9    	vmulpd zmm7,zmm7,zmm1
  958194:	62 72 fd 48 ac cb    	vfnmadd213pd zmm9,zmm0,zmm3
  95819a:	62 f1 8d 48 58 df    	vaddpd zmm3,zmm14,zmm7
  9581a0:	62 a1 ed 48 5c ca    	vsubpd zmm17,zmm2,zmm18
  9581a6:	62 f1 fd 40 5c d3    	vsubpd zmm2,zmm16,zmm3
  9581ac:	62 e1 f5 40 59 c9    	vmulpd zmm17,zmm17,zmm1
  9581b2:	62 72 95 48 bc d0    	vfnmadd231pd zmm10,zmm13,zmm0
  9581b8:	62 31 b5 48 5c e9    	vsubpd zmm13,zmm9,zmm17
  9581be:	62 d1 9d 48 5c c3    	vsubpd zmm0,zmm12,zmm11
  9581c4:	62 f1 fd 48 59 c9    	vmulpd zmm1,zmm0,zmm1
  9581ca:	62 71 ad 48 5c d9    	vsubpd zmm11,zmm10,zmm1
  9581d0:	62 51 95 48 5c e3    	vsubpd zmm12,zmm13,zmm11
  9581d6:	c5 fd 28 05 22 eb 71 	vmovapd ymm0,YMMWORD PTR [rip+0xffffffffff71eb22]        # 76d00 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x41b0>
  9581dd:	ff 
  9581de:	62 51 e5 40 5c c0    	vsubpd zmm8,zmm19,zmm8
  9581e4:	62 e1 fd 48 28 d2    	vmovapd zmm18,zmm2
  9581ea:	62 c2 fd 48 7f d4    	vpermt2pd zmm18,zmm0,zmm12
  9581f0:	62 f1 8d 48 5c ff    	vsubpd zmm7,zmm14,zmm7
  9581f6:	62 71 bd 48 58 f7    	vaddpd zmm14,zmm8,zmm7
  9581fc:	62 51 f5 40 58 c9    	vaddpd zmm9,zmm17,zmm9
  958202:	62 f1 ad 48 58 c9    	vaddpd zmm1,zmm10,zmm1
  958208:	62 71 b5 48 58 d1    	vaddpd zmm10,zmm9,zmm1
  95820e:	62 c1 fd 48 28 ce    	vmovapd zmm17,zmm14
  958214:	62 c2 fd 48 7f ca    	vpermt2pd zmm17,zmm0,zmm10
  95821a:	62 f1 fd 40 58 db    	vaddpd zmm3,zmm16,zmm3
  958220:	62 e1 dd 48 5c c5    	vsubpd zmm16,zmm4,zmm5
  958226:	62 51 95 48 58 db    	vaddpd zmm11,zmm13,zmm11
  95822c:	62 51 cd 48 5c ef    	vsubpd zmm13,zmm6,zmm15
  958232:	62 f1 bd 48 5c ff    	vsubpd zmm7,zmm8,zmm7
  958238:	62 31 fd 48 28 c0    	vmovapd zmm8,zmm16
  95823e:	62 52 fd 48 7f c5    	vpermt2pd zmm8,zmm0,zmm13
  958244:	62 f1 b5 48 5c c9    	vsubpd zmm1,zmm9,zmm1
  95824a:	62 71 fd 48 28 cb    	vmovapd zmm9,zmm3
  958250:	62 52 fd 48 7f cb    	vpermt2pd zmm9,zmm0,zmm11
  958256:	62 f1 dd 48 58 e5    	vaddpd zmm4,zmm4,zmm5
  95825c:	62 f1 fd 48 28 ef    	vmovapd zmm5,zmm7
  958262:	62 f2 fd 48 7f e9    	vpermt2pd zmm5,zmm0,zmm1
  958268:	62 d1 cd 48 58 f7    	vaddpd zmm6,zmm6,zmm15
  95826e:	62 f2 dd 48 77 c6    	vpermi2pd zmm0,zmm4,zmm6
  958274:	62 71 fd 48 28 3d 42 	vmovapd zmm15,ZMMWORD PTR [rip+0xffffffffff72cc42]        # 84ec0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x12370>
  95827b:	cc 72 ff 
  95827e:	62 f2 85 48 7f e6    	vpermt2pd zmm4,zmm15,zmm6
  958284:	62 d2 85 48 7f d4    	vpermt2pd zmm2,zmm15,zmm12
  95828a:	62 52 85 48 7f f2    	vpermt2pd zmm14,zmm15,zmm10
  958290:	62 c2 85 48 7f c5    	vpermt2pd zmm16,zmm15,zmm13
  958296:	62 d2 85 48 7f db    	vpermt2pd zmm3,zmm15,zmm11
  95829c:	62 f2 85 48 7f f9    	vpermt2pd zmm7,zmm15,zmm1
  9582a2:	62 f1 fd 48 11 26    	vmovupd ZMMWORD PTR [rsi],zmm4
  9582a8:	c5 fd 11 46 40       	vmovupd YMMWORD PTR [rsi+0x40],ymm0
  9582ad:	62 f1 fd 48 11 96 60 	vmovupd ZMMWORD PTR [rsi+0x60],zmm2
  9582b4:	00 00 00 
  9582b7:	62 e1 fd 28 11 56 05 	vmovupd YMMWORD PTR [rsi+0xa0],ymm18
  9582be:	62 71 fd 48 11 76 03 	vmovupd ZMMWORD PTR [rsi+0xc0],zmm14
  9582c5:	62 e1 fd 28 11 4e 08 	vmovupd YMMWORD PTR [rsi+0x100],ymm17
  9582cc:	62 e1 fd 48 11 86 20 	vmovupd ZMMWORD PTR [rsi+0x120],zmm16
  9582d3:	01 00 00 
  9582d6:	c5 7d 11 86 60 01 00 	vmovupd YMMWORD PTR [rsi+0x160],ymm8
  9582dd:	00 
  9582de:	62 f1 fd 48 11 5e 06 	vmovupd ZMMWORD PTR [rsi+0x180],zmm3
  9582e5:	c5 7d 11 8e c0 01 00 	vmovupd YMMWORD PTR [rsi+0x1c0],ymm9
  9582ec:	00 
  9582ed:	62 f1 fd 48 11 be e0 	vmovupd ZMMWORD PTR [rsi+0x1e0],zmm7
  9582f4:	01 00 00 
  9582f7:	c5 fd 11 ae 20 02 00 	vmovupd YMMWORD PTR [rsi+0x220],ymm5
  9582fe:	00 
  9582ff:	c5 f8 77             	vzeroupper
  958302:	c3                   	ret
