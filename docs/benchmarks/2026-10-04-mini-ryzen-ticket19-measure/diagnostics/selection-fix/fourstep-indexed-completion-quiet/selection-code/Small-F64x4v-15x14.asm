
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000b78cc0 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle>:
  b78cc0:	push   rbp
  b78cc1:	mov    rbp,rsp
  b78cc4:	push   r14
  b78cc6:	push   rbx
  b78cc7:	and    rsp,0xffffffffffffffc0
  b78ccb:	sub    rsp,0xfc0
  b78cd2:	mov    QWORD PTR [rsp],0x0
  b78cda:	sub    rsp,0xbc0
  b78ce1:	lea    rax,[rsp+0x480]
  b78ce9:	lea    rcx,[rsp+0x2c0]
  b78cf1:	mov    BYTE PTR [rsp+0xb00],0x0
  b78cf9:	lea    r8,[rsp+0xb00]
  b78d01:	mov    QWORD PTR [rsp+0xb40],r8
  b78d09:	lea    r8,[rsp+0xb40]
  b78d11:	lea    r8,[rsp+0xef0]
  b78d19:	xor    r9d,r9d
  b78d1c:	jmp    b78d39 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x79>
  b78d1e:	xchg   ax,ax
  b78d20:	add    r9,0x4
  b78d24:	add    r8,0x3c0
  b78d2b:	add    rdi,0x40
  b78d2f:	cmp    r9,0x10
  b78d33:	je     b79c28 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0xf68>
  b78d39:	cmp    r9,0xb
  b78d3d:	jae    b78fb0 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x2f0>
  b78d43:	vmovupd ymm0,YMMWORD PTR [rdi]
  b78d47:	vmovupd ymm1,YMMWORD PTR [rdi+0x20]
  b78d4c:	vmovupd ymm2,YMMWORD PTR [rdi+0xe0]
  b78d54:	vmovupd ymm3,YMMWORD PTR [rdi+0x100]
  b78d5c:	vperm2f128 ymm4,ymm0,ymm1,0x31
  b78d62:	vperm2f128 ymm0,ymm0,ymm1,0x20
  b78d68:	vunpcklpd ymm1,ymm0,ymm4
  b78d6c:	vmovapd YMMWORD PTR [rsp+0xc0],ymm1
  b78d75:	vunpckhpd ymm0,ymm0,ymm4
  b78d79:	vmovapd YMMWORD PTR [rsp+0xa0],ymm0
  b78d82:	vperm2f128 ymm0,ymm2,ymm3,0x31
  b78d88:	vperm2f128 ymm1,ymm2,ymm3,0x20
  b78d8e:	vunpcklpd ymm19,ymm1,ymm0
  b78d94:	vunpckhpd ymm18,ymm1,ymm0
  b78d9a:	vmovupd ymm0,YMMWORD PTR [rdi+0x1c0]
  b78da2:	vmovupd ymm1,YMMWORD PTR [rdi+0x1e0]
  b78daa:	vperm2f128 ymm2,ymm0,ymm1,0x31
  b78db0:	vperm2f128 ymm0,ymm0,ymm1,0x20
  b78db6:	vunpcklpd ymm22,ymm0,ymm2
  b78dbc:	vunpckhpd ymm24,ymm0,ymm2
  b78dc2:	vmovupd ymm0,YMMWORD PTR [rdi+0x2a0]
  b78dca:	vmovupd ymm1,YMMWORD PTR [rdi+0x2c0]
  b78dd2:	vperm2f128 ymm2,ymm0,ymm1,0x31
  b78dd8:	vperm2f128 ymm0,ymm0,ymm1,0x20
  b78dde:	vunpcklpd ymm21,ymm0,ymm2
  b78de4:	vunpckhpd ymm0,ymm0,ymm2
  b78de8:	vmovapd YMMWORD PTR [rsp+0x40],ymm0
  b78dee:	vmovupd ymm0,YMMWORD PTR [rdi+0x380]
  b78df6:	vmovupd ymm1,YMMWORD PTR [rdi+0x3a0]
  b78dfe:	vperm2f128 ymm2,ymm0,ymm1,0x31
  b78e04:	vperm2f128 ymm0,ymm0,ymm1,0x20
  b78e0a:	vunpcklpd ymm25,ymm0,ymm2
  b78e10:	vunpckhpd ymm17,ymm0,ymm2
  b78e16:	vmovupd ymm0,YMMWORD PTR [rdi+0x460]
  b78e1e:	vmovupd ymm1,YMMWORD PTR [rdi+0x480]
  b78e26:	vperm2f128 ymm2,ymm0,ymm1,0x31
  b78e2c:	vperm2f128 ymm0,ymm0,ymm1,0x20
  b78e32:	vunpcklpd ymm20,ymm0,ymm2
  b78e38:	vunpckhpd ymm0,ymm0,ymm2
  b78e3c:	vmovapd YMMWORD PTR [rsp+0x20],ymm0
  b78e42:	vmovupd ymm0,YMMWORD PTR [rdi+0x540]
  b78e4a:	vmovupd ymm1,YMMWORD PTR [rdi+0x560]
  b78e52:	vperm2f128 ymm2,ymm0,ymm1,0x31
  b78e58:	vperm2f128 ymm0,ymm0,ymm1,0x20
  b78e5e:	vunpcklpd ymm26,ymm0,ymm2
  b78e64:	vunpckhpd ymm0,ymm0,ymm2
  b78e68:	vmovapd YMMWORD PTR [rsp],ymm0
  b78e6d:	vmovupd ymm0,YMMWORD PTR [rdi+0x620]
  b78e75:	vmovupd ymm1,YMMWORD PTR [rdi+0x640]
  b78e7d:	vperm2f128 ymm2,ymm0,ymm1,0x31
  b78e83:	vperm2f128 ymm0,ymm0,ymm1,0x20
  b78e89:	vunpcklpd ymm29,ymm0,ymm2
  b78e8f:	vunpckhpd ymm16,ymm0,ymm2
  b78e95:	vmovupd ymm0,YMMWORD PTR [rdi+0x700]
  b78e9d:	vmovupd ymm1,YMMWORD PTR [rdi+0x720]
  b78ea5:	vperm2f128 ymm2,ymm0,ymm1,0x31
  b78eab:	vperm2f128 ymm0,ymm0,ymm1,0x20
  b78eb1:	vunpcklpd ymm6,ymm0,ymm2
  b78eb5:	vunpckhpd ymm12,ymm0,ymm2
  b78eb9:	vmovupd ymm0,YMMWORD PTR [rdi+0x7e0]
  b78ec1:	vmovupd ymm1,YMMWORD PTR [rdi+0x800]
  b78ec9:	vperm2f128 ymm2,ymm0,ymm1,0x31
  b78ecf:	vperm2f128 ymm0,ymm0,ymm1,0x20
  b78ed5:	vunpcklpd ymm14,ymm0,ymm2
  b78ed9:	vunpckhpd ymm23,ymm0,ymm2
  b78edf:	vmovupd ymm0,YMMWORD PTR [rdi+0x8c0]
  b78ee7:	vmovupd ymm1,YMMWORD PTR [rdi+0x8e0]
  b78eef:	vperm2f128 ymm2,ymm0,ymm1,0x31
  b78ef5:	vperm2f128 ymm0,ymm0,ymm1,0x20
  b78efb:	vunpcklpd ymm1,ymm0,ymm2
  b78eff:	vmovapd YMMWORD PTR [rsp+0x80],ymm1
  b78f08:	vunpckhpd ymm0,ymm0,ymm2
  b78f0c:	vmovapd YMMWORD PTR [rsp+0x60],ymm0
  b78f12:	vmovupd ymm0,YMMWORD PTR [rdi+0x9a0]
  b78f1a:	vmovupd ymm1,YMMWORD PTR [rdi+0x9c0]
  b78f22:	vperm2f128 ymm2,ymm0,ymm1,0x31
  b78f28:	vperm2f128 ymm1,ymm0,ymm1,0x20
  b78f2e:	vunpcklpd ymm0,ymm1,ymm2
  b78f32:	vunpckhpd ymm7,ymm1,ymm2
  b78f36:	vmovupd ymm1,YMMWORD PTR [rdi+0xa80]
  b78f3e:	vmovupd ymm2,YMMWORD PTR [rdi+0xaa0]
  b78f46:	vperm2f128 ymm3,ymm1,ymm2,0x31
  b78f4c:	vperm2f128 ymm1,ymm1,ymm2,0x20
  b78f52:	vunpcklpd ymm4,ymm1,ymm3
  b78f56:	vunpckhpd ymm28,ymm1,ymm3
  b78f5c:	vmovupd ymm1,YMMWORD PTR [rdi+0xb60]
  b78f64:	vmovupd ymm2,YMMWORD PTR [rdi+0xb80]
  b78f6c:	vperm2f128 ymm3,ymm1,ymm2,0x31
  b78f72:	vperm2f128 ymm1,ymm1,ymm2,0x20
  b78f78:	vunpcklpd ymm2,ymm1,ymm3
  b78f7c:	vunpckhpd ymm3,ymm1,ymm3
  b78f80:	vmovupd ymm1,YMMWORD PTR [rdi+0xc40]
  b78f88:	vmovupd ymm5,YMMWORD PTR [rdi+0xc60]
  b78f90:	vperm2f128 ymm8,ymm1,ymm5,0x31
  b78f96:	vperm2f128 ymm1,ymm1,ymm5,0x20
  b78f9c:	vunpcklpd ymm11,ymm1,ymm8
  b78fa1:	vunpckhpd ymm5,ymm1,ymm8
  b78fa6:	jmp    b791c1 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x501>
  b78fab:	nop    DWORD PTR [rax+rax*1+0x0]
  b78fb0:	vmovupd ymm0,YMMWORD PTR [rdi]
  b78fb4:	vmovupd ymm1,YMMWORD PTR [rdi+0xe0]
  b78fbc:	vmovupd ymm2,YMMWORD PTR [rdi+0x1c0]
  b78fc4:	vxorpd xmm8,xmm8,xmm8
  b78fc9:	vblendpd ymm3,ymm0,ymm8,0xa
  b78fcf:	vpermpd ymm3,ymm3,0xf8
  b78fd5:	vmovapd YMMWORD PTR [rsp+0xc0],ymm3
  b78fde:	vunpckhpd ymm0,ymm0,ymm8
  b78fe3:	vpermpd ymm0,ymm0,0xd8
  b78fe9:	vmovapd YMMWORD PTR [rsp+0xa0],ymm0
  b78ff2:	vblendpd ymm0,ymm1,ymm8,0xa
  b78ff8:	vpermpd ymm19,ymm0,0xf8
  b78fff:	vunpckhpd ymm0,ymm1,ymm8
  b79004:	vpermpd ymm18,ymm0,0xd8
  b7900b:	vblendpd ymm0,ymm2,ymm8,0xa
  b79011:	vpermpd ymm22,ymm0,0xf8
  b79018:	vunpckhpd ymm0,ymm2,ymm8
  b7901d:	vpermpd ymm24,ymm0,0xd8
  b79024:	vmovupd ymm0,YMMWORD PTR [rdi+0x2a0]
  b7902c:	vblendpd ymm1,ymm0,ymm8,0xa
  b79032:	vpermpd ymm21,ymm1,0xf8
  b79039:	vunpckhpd ymm0,ymm0,ymm8
  b7903e:	vpermpd ymm0,ymm0,0xd8
  b79044:	vmovapd YMMWORD PTR [rsp+0x40],ymm0
  b7904a:	vmovupd ymm0,YMMWORD PTR [rdi+0x380]
  b79052:	vblendpd ymm1,ymm0,ymm8,0xa
  b79058:	vpermpd ymm25,ymm1,0xf8
  b7905f:	vunpckhpd ymm0,ymm0,ymm8
  b79064:	vpermpd ymm17,ymm0,0xd8
  b7906b:	vmovupd ymm0,YMMWORD PTR [rdi+0x460]
  b79073:	vblendpd ymm1,ymm0,ymm8,0xa
  b79079:	vpermpd ymm20,ymm1,0xf8
  b79080:	vunpckhpd ymm0,ymm0,ymm8
  b79085:	vpermpd ymm0,ymm0,0xd8
  b7908b:	vmovapd YMMWORD PTR [rsp+0x20],ymm0
  b79091:	vmovupd ymm0,YMMWORD PTR [rdi+0x540]
  b79099:	vblendpd ymm1,ymm0,ymm8,0xa
  b7909f:	vpermpd ymm26,ymm1,0xf8
  b790a6:	vunpckhpd ymm0,ymm0,ymm8
  b790ab:	vpermpd ymm0,ymm0,0xd8
  b790b1:	vmovapd YMMWORD PTR [rsp],ymm0
  b790b6:	vmovupd ymm0,YMMWORD PTR [rdi+0x620]
  b790be:	vblendpd ymm1,ymm0,ymm8,0xa
  b790c4:	vpermpd ymm29,ymm1,0xf8
  b790cb:	vunpckhpd ymm0,ymm0,ymm8
  b790d0:	vpermpd ymm16,ymm0,0xd8
  b790d7:	vmovupd ymm0,YMMWORD PTR [rdi+0x700]
  b790df:	vblendpd ymm1,ymm0,ymm8,0xa
  b790e5:	vpermpd ymm6,ymm1,0xf8
  b790eb:	vunpckhpd ymm0,ymm0,ymm8
  b790f0:	vpermpd ymm12,ymm0,0xd8
  b790f6:	vmovupd ymm0,YMMWORD PTR [rdi+0x7e0]
  b790fe:	vblendpd ymm1,ymm0,ymm8,0xa
  b79104:	vpermpd ymm14,ymm1,0xf8
  b7910a:	vunpckhpd ymm0,ymm0,ymm8
  b7910f:	vpermpd ymm23,ymm0,0xd8
  b79116:	vmovupd ymm0,YMMWORD PTR [rdi+0x8c0]
  b7911e:	vblendpd ymm1,ymm0,ymm8,0xa
  b79124:	vpermpd ymm1,ymm1,0xf8
  b7912a:	vmovapd YMMWORD PTR [rsp+0x80],ymm1
  b79133:	vunpckhpd ymm0,ymm0,ymm8
  b79138:	vpermpd ymm0,ymm0,0xd8
  b7913e:	vmovapd YMMWORD PTR [rsp+0x60],ymm0
  b79144:	vmovupd ymm1,YMMWORD PTR [rdi+0x9a0]
  b7914c:	vblendpd ymm0,ymm1,ymm8,0xa
  b79152:	vpermpd ymm0,ymm0,0xf8
  b79158:	vunpckhpd ymm1,ymm1,ymm8
  b7915d:	vpermpd ymm7,ymm1,0xd8
  b79163:	vmovupd ymm1,YMMWORD PTR [rdi+0xa80]
  b7916b:	vblendpd ymm2,ymm1,ymm8,0xa
  b79171:	vpermpd ymm4,ymm2,0xf8
  b79177:	vunpckhpd ymm1,ymm1,ymm8
  b7917c:	vpermpd ymm28,ymm1,0xd8
  b79183:	vmovupd ymm1,YMMWORD PTR [rdi+0xb60]
  b7918b:	vblendpd ymm2,ymm1,ymm8,0xa
  b79191:	vpermpd ymm2,ymm2,0xf8
  b79197:	vunpckhpd ymm1,ymm1,ymm8
  b7919c:	vpermpd ymm3,ymm1,0xd8
  b791a2:	vmovupd ymm1,YMMWORD PTR [rdi+0xc40]
  b791aa:	vblendpd ymm5,ymm1,ymm8,0xa
  b791b0:	vpermpd ymm11,ymm5,0xf8
  b791b6:	vunpckhpd ymm1,ymm1,ymm8
  b791bb:	vpermpd ymm5,ymm1,0xd8
  b791c1:	vaddpd ymm30,ymm12,ymm24
  b791c7:	vaddpd ymm1,ymm6,ymm22
  b791cd:	vsubpd ymm13,ymm6,ymm22
  b791d3:	vaddpd ymm9,ymm11,ymm0
  b791d7:	vsubpd ymm10,ymm0,ymm11
  b791dc:	vaddpd ymm0,ymm2,ymm29
  b791e2:	vsubpd ymm8,ymm2,ymm29
  b791e8:	vaddpd ymm11,ymm19,ymm25
  b791ee:	vsubpd ymm2,ymm19,ymm25
  b791f4:	vaddpd ymm25,ymm21,ymm4
  b791fa:	vsubpd ymm4,ymm21,ymm4
  b79200:	vmovapd YMMWORD PTR [rsp+0x120],ymm4
  b79209:	vaddpd ymm15,ymm26,ymm14
  b7920f:	vsubpd ymm4,ymm26,ymm14
  b79215:	vmovapd YMMWORD PTR [rsp+0x240],ymm4
  b7921e:	vaddpd ymm27,ymm7,ymm5
  b79224:	vsubpd ymm19,ymm12,ymm24
  b7922a:	vmovapd YMMWORD PTR [rsp+0x220],ymm19
  b79232:	vaddpd ymm29,ymm3,ymm16
  b79238:	vsubpd ymm7,ymm7,ymm5
  b7923c:	vaddpd ymm31,ymm18,ymm17
  b79242:	vmovapd ymm5,ymm18
  b79248:	vsubpd ymm21,ymm3,ymm16
  b7924e:	vmovapd YMMWORD PTR [rsp+0x140],ymm21
  b79256:	vbroadcastsd ymm18,QWORD PTR [rip+0xffffffffff4fb7f8]        # 74a58 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f08>
  b79260:	vmovapd ymm6,ymm18
  b79266:	vfmadd213pd ymm6,ymm1,ymm20
  b7926c:	vbroadcastsd ymm14,QWORD PTR [rip+0xffffffffff4fbda3]        # 75018 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x24c8>
  b79275:	vfnmadd231pd ymm6,ymm9,ymm14
  b7927a:	vsubpd ymm12,ymm5,ymm17
  b79280:	vbroadcastsd ymm16,QWORD PTR [rip+0xffffffffff4fb53e]        # 747c8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1c78>
  b7928a:	vmulpd ymm5,ymm7,ymm16
  b79290:	vmovapd ymm4,ymm20
  b79296:	vbroadcastsd ymm20,QWORD PTR [rip+0xffffffffff4fb930]        # 74bd0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2080>
  b792a0:	vfmadd231pd ymm5,ymm19,ymm20
  b792a6:	vmovapd ymm17,ymm18
  b792ac:	vmovapd ymm3,YMMWORD PTR [rsp+0x80]
  b792b5:	vfmadd213pd ymm17,ymm0,ymm3
  b792bb:	vfnmadd231pd ymm17,ymm11,ymm14
  b792c1:	vmulpd ymm19,ymm12,ymm16
  b792c7:	vfmadd231pd ymm19,ymm21,ymm20
  b792cd:	vmovapd YMMWORD PTR [rsp+0x200],ymm6
  b792d6:	vmovapd YMMWORD PTR [rsp+0x1e0],ymm5
  b792df:	vsubpd ymm5,ymm6,ymm5
  b792e3:	vmovapd YMMWORD PTR [rsp+0x1c0],ymm17
  b792eb:	vmovapd YMMWORD PTR [rsp+0x1a0],ymm19
  b792f3:	vsubpd ymm6,ymm17,ymm19
  b792f9:	vsubpd ymm17,ymm5,ymm6
  b792ff:	vmovapd YMMWORD PTR [rsp+0x100],ymm17
  b79307:	vaddpd ymm5,ymm5,ymm6
  b7930b:	vmovapd YMMWORD PTR [rsp+0xe0],ymm5
  b79314:	vmovapd ymm6,YMMWORD PTR [rsp+0x40]
  b7931a:	vaddpd ymm5,ymm6,ymm28
  b79320:	vsubpd ymm6,ymm6,ymm28
  b79326:	vmovapd ymm19,YMMWORD PTR [rsp]
  b7932d:	vaddpd ymm17,ymm19,ymm23
  b79333:	vsubpd ymm26,ymm19,ymm23
  b79339:	vmovapd ymm28,ymm18
  b7933f:	vmovapd ymm19,YMMWORD PTR [rsp+0x20]
  b79347:	vfmadd213pd ymm28,ymm30,ymm19
  b7934d:	vfnmadd231pd ymm28,ymm27,ymm14
  b79353:	vmulpd ymm21,ymm10,ymm16
  b79359:	vfmadd231pd ymm21,ymm13,ymm20
  b7935f:	vmovapd ymm22,ymm18
  b79365:	vmovapd ymm23,YMMWORD PTR [rsp+0x60]
  b7936d:	vfmadd213pd ymm22,ymm29,ymm23
  b79373:	vfnmadd231pd ymm22,ymm31,ymm14
  b79379:	vmulpd ymm24,ymm2,ymm16
  b7937f:	vfmadd231pd ymm24,ymm8,ymm20
  b79385:	vmovapd YMMWORD PTR [rsp+0x180],ymm21
  b7938d:	vmovapd YMMWORD PTR [rsp+0x260],ymm28
  b79395:	vaddpd ymm28,ymm28,ymm21
  b7939b:	vmovapd YMMWORD PTR [rsp+0x160],ymm24
  b793a3:	vaddpd ymm21,ymm22,ymm24
  b793a9:	vaddpd ymm24,ymm28,ymm21
  b793af:	vmovapd YMMWORD PTR [rsp+0x40],ymm24
  b793b7:	vsubpd ymm28,ymm28,ymm21
  b793bd:	vaddpd ymm21,ymm19,ymm30
  b793c3:	vfnmadd213pd ymm30,ymm14,ymm19
  b793c9:	vaddpd ymm19,ymm21,ymm27
  b793cf:	vmovapd YMMWORD PTR [rsp+0x20],ymm19
  b793d7:	vfmadd231pd ymm30,ymm18,ymm27
  b793dd:	vmulpd ymm27,ymm13,ymm16
  b793e3:	vfnmadd231pd ymm27,ymm20,ymm10
  b793e9:	vaddpd ymm10,ymm23,ymm29
  b793ef:	vfnmadd213pd ymm29,ymm14,ymm23
  b793f5:	vaddpd ymm10,ymm10,ymm31
  b793fb:	vmovapd YMMWORD PTR [rsp],ymm10
  b79400:	vfmadd231pd ymm29,ymm18,ymm31
  b79406:	vmulpd ymm8,ymm8,ymm16
  b7940c:	vfnmadd231pd ymm8,ymm20,ymm2
  b79412:	vmovapd ymm31,ymm18
  b79418:	vmovapd ymm10,YMMWORD PTR [rsp+0xa0]
  b79421:	vfmadd213pd ymm31,ymm5,ymm10
  b79427:	vaddpd ymm2,ymm10,ymm5
  b7942b:	vfnmadd213pd ymm5,ymm14,ymm10
  b79430:	vaddpd ymm2,ymm2,ymm17
  b79436:	vmovapd YMMWORD PTR [rsp+0x660],ymm2
  b7943f:	vfnmadd231pd ymm31,ymm17,ymm14
  b79445:	vfmadd231pd ymm5,ymm18,ymm17
  b7944b:	vmovapd ymm10,YMMWORD PTR [rsp+0x240]
  b79454:	vmulpd ymm24,ymm10,ymm16
  b7945a:	vmovapd ymm2,YMMWORD PTR [rsp+0x120]
  b79463:	vfmadd231pd ymm24,ymm2,ymm20
  b79469:	vmulpd ymm2,ymm2,ymm16
  b7946f:	vfnmadd231pd ymm2,ymm20,ymm10
  b79475:	vaddpd ymm13,ymm4,ymm1
  b79479:	vfnmadd213pd ymm1,ymm14,ymm4
  b7947e:	vaddpd ymm10,ymm13,ymm9
  b79483:	vfmadd231pd ymm1,ymm18,ymm9
  b79489:	vmulpd ymm9,ymm16,YMMWORD PTR [rsp+0x220]
  b79491:	vfnmadd231pd ymm9,ymm20,ymm7
  b79497:	vaddpd ymm7,ymm3,ymm0
  b7949b:	vfnmadd213pd ymm0,ymm14,ymm3
  b794a0:	vaddpd ymm23,ymm7,ymm11
  b794a6:	vfmadd231pd ymm0,ymm18,ymm11
  b794ac:	vmulpd ymm3,ymm16,YMMWORD PTR [rsp+0x140]
  b794b4:	vfnmadd231pd ymm3,ymm20,ymm12
  b794ba:	vsubpd ymm7,ymm1,ymm9
  b794bf:	vsubpd ymm12,ymm0,ymm3
  b794c3:	vsubpd ymm4,ymm7,ymm12
  b794c8:	vmovapd YMMWORD PTR [rsp+0x140],ymm4
  b794d1:	vaddpd ymm17,ymm7,ymm12
  b794d7:	vmovapd ymm12,ymm18
  b794dd:	vmovapd ymm13,YMMWORD PTR [rsp+0xc0]
  b794e6:	vfmadd213pd ymm12,ymm25,ymm13
  b794ec:	vaddpd ymm7,ymm13,ymm25
  b794f2:	vfnmadd213pd ymm25,ymm14,ymm13
  b794f8:	vaddpd ymm11,ymm15,ymm7
  b794fc:	vfnmadd231pd ymm12,ymm15,ymm14
  b79501:	vfmadd231pd ymm25,ymm18,ymm15
  b79507:	vmulpd ymm15,ymm26,ymm16
  b7950d:	vfmadd231pd ymm15,ymm6,ymm20
  b79513:	vmulpd ymm4,ymm6,ymm16
  b79519:	vfnmadd231pd ymm4,ymm20,ymm26
  b7951f:	vaddpd ymm7,ymm30,ymm27
  b79525:	vaddpd ymm13,ymm29,ymm8
  b7952b:	vaddpd ymm6,ymm13,ymm7
  b7952f:	vsubpd ymm13,ymm7,ymm13
  b79534:	vaddpd ymm7,ymm5,ymm2
  b79538:	vsubpd ymm19,ymm5,ymm2
  b7953e:	vsubpd ymm14,ymm30,ymm27
  b79544:	vsubpd ymm16,ymm29,ymm8
  b7954a:	vsubpd ymm2,ymm25,ymm4
  b79550:	vaddpd ymm18,ymm4,ymm25
  b79556:	vaddpd ymm9,ymm9,ymm1
  b7955a:	vaddpd ymm21,ymm3,ymm0
  b79560:	vsubpd ymm0,ymm12,ymm15
  b79565:	vbroadcastsd ymm27,QWORD PTR [rip+0xffffffffff4fb529]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  b7956f:	vmovapd ymm1,ymm27
  b79575:	vmovapd YMMWORD PTR [rsp+0x6a0],ymm0
  b7957e:	vfnmadd132pd ymm1,ymm0,YMMWORD PTR [rsp+0xe0]
  b79588:	vbroadcastsd ymm0,QWORD PTR [rip+0xffffffffff4fb68f]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  b79591:	vmulpd ymm4,ymm28,ymm0
  b79597:	vmovapd ymm3,ymm27
  b7959d:	vmovapd YMMWORD PTR [rsp+0xc0],ymm17
  b795a5:	vmovapd YMMWORD PTR [rsp+0x60],ymm2
  b795ab:	vfnmadd213pd ymm3,ymm17,ymm2
  b795b1:	vmulpd ymm2,ymm13,ymm0
  b795b5:	vmovapd YMMWORD PTR [rsp+0x700],ymm10
  b795be:	vmovapd YMMWORD PTR [rsp+0x6c0],ymm23
  b795c6:	vaddpd ymm28,ymm10,ymm23
  b795cc:	vmovapd ymm23,ymm11
  b795d2:	vaddpd ymm8,ymm11,ymm28
  b795d8:	vmovapd YMMWORD PTR [rsp+0x240],ymm1
  b795e1:	vmovapd YMMWORD PTR [rsp+0x2a0],ymm4
  b795ea:	vsubpd ymm25,ymm1,ymm4
  b795f0:	vmovapd YMMWORD PTR [rsp+0x680],ymm2
  b795f9:	vaddpd ymm5,ymm3,ymm2
  b795fd:	vmovapd YMMWORD PTR [rsp+0x740],ymm9
  b79606:	vmovapd YMMWORD PTR [rsp+0x720],ymm21
  b7960e:	vaddpd ymm1,ymm9,ymm21
  b79614:	vmovapd YMMWORD PTR [rsp+0x120],ymm1
  b7961d:	vmovapd YMMWORD PTR [rsp+0x760],ymm18
  b79625:	vaddpd ymm29,ymm18,ymm1
  b7962b:	vinsertf128 ymm1,ymm8,xmm5,0x1
  b79631:	vinsertf32x4 ymm2,ymm25,xmm29,0x1
  b79638:	vunpckhpd ymm17,ymm1,ymm2
  b7963e:	vunpcklpd ymm21,ymm1,ymm2
  b79644:	vaddpd ymm18,ymm31,ymm24
  b7964a:	vmovapd ymm30,ymm27
  b79650:	vfnmadd132pd ymm30,ymm18,YMMWORD PTR [rsp+0x40]
  b79658:	vmulpd ymm2,ymm0,YMMWORD PTR [rsp+0x100]
  b79661:	vmovapd YMMWORD PTR [rsp+0xa0],ymm6
  b7966a:	vmovapd YMMWORD PTR [rsp+0x80],ymm7
  b79673:	vfnmadd213pd ymm27,ymm6,ymm7
  b79679:	vmulpd ymm1,ymm0,YMMWORD PTR [rsp+0x140]
  b79682:	vmovapd ymm0,YMMWORD PTR [rsp+0x20]
  b79688:	vaddpd ymm11,ymm0,YMMWORD PTR [rsp]
  b7968d:	vmovapd ymm0,YMMWORD PTR [rsp+0x660]
  b79696:	vmovapd ymm20,ymm0
  b7969c:	vaddpd ymm26,ymm0,ymm11
  b796a2:	vmovapd YMMWORD PTR [rsp+0x6e0],ymm2
  b796ab:	vaddpd ymm2,ymm2,ymm30
  b796b1:	vsubpd ymm9,ymm27,ymm1
  b796b7:	vmovapd YMMWORD PTR [rsp+0x140],ymm14
  b796c0:	vmovapd YMMWORD PTR [rsp+0x220],ymm16
  b796c8:	vaddpd ymm0,ymm14,ymm16
  b796ce:	vmovapd YMMWORD PTR [rsp+0x100],ymm0
  b796d7:	vmovapd YMMWORD PTR [rsp+0x280],ymm19
  b796df:	vaddpd ymm13,ymm19,ymm0
  b796e5:	vinsertf32x4 ymm7,ymm26,xmm9,0x1
  b796ec:	vinsertf128 ymm6,ymm2,xmm13,0x1
  b796f2:	vunpckhpd ymm4,ymm7,ymm6
  b796f6:	vunpcklpd ymm6,ymm7,ymm6
  b796fa:	vmovapd ymm7,ymm6
  b796fe:	vmovapd ymm14,YMMWORD PTR [rip+0xffffffffff4fd45a]        # 76b60 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4010>
  b79706:	vpermt2pd ymm7,ymm14,ymm21
  b7970c:	vmovapd YMMWORD PTR [r8-0x3b0],ymm7
  b79715:	vmovapd ymm0,YMMWORD PTR [rip+0xffffffffff4fdf23]        # 77640 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4af0>
  b7971d:	vpermt2pd ymm6,ymm0,ymm21
  b79723:	vmovapd YMMWORD PTR [r8-0x390],ymm6
  b7972c:	vmovapd ymm6,ymm4
  b79730:	vpermt2pd ymm6,ymm14,ymm17
  b79736:	vmovupd YMMWORD PTR [r8-0x2c0],ymm6
  b7973f:	vpermt2pd ymm4,ymm0,ymm17
  b79745:	vmovupd YMMWORD PTR [r8-0x2a0],ymm4
  b7974e:	cmp    r9,0xc
  b79752:	je     b797c2 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0xb02>
  b79754:	vperm2f128 ymm4,ymm8,ymm5,0x31
  b7975a:	vshuff64x2 ymm5,ymm25,ymm29,0x3
  b79761:	vunpckhpd ymm6,ymm4,ymm5
  b79765:	vunpcklpd ymm4,ymm4,ymm5
  b79769:	vshuff64x2 ymm5,ymm26,ymm9,0x3
  b79770:	vperm2f128 ymm2,ymm2,ymm13,0x31
  b79776:	vunpckhpd ymm7,ymm5,ymm2
  b7977a:	vunpcklpd ymm2,ymm5,ymm2
  b7977e:	vmovapd ymm5,ymm2
  b79782:	vpermt2pd ymm5,ymm14,ymm4
  b79788:	vmovapd YMMWORD PTR [r8-0x1d0],ymm5
  b79791:	vpermt2pd ymm2,ymm0,ymm4
  b79797:	vmovapd YMMWORD PTR [r8-0x1b0],ymm2
  b797a0:	vmovapd ymm2,ymm7
  b797a4:	vpermt2pd ymm2,ymm14,ymm6
  b797aa:	vmovupd YMMWORD PTR [r8-0xe0],ymm2
  b797b3:	vpermt2pd ymm7,ymm0,ymm6
  b797b9:	vmovupd YMMWORD PTR [r8-0xc0],ymm7
  b797c2:	vmovapd ymm2,YMMWORD PTR [rsp+0x260]
  b797cb:	vsubpd ymm2,ymm2,YMMWORD PTR [rsp+0x180]
  b797d4:	vsubpd ymm4,ymm22,YMMWORD PTR [rsp+0x160]
  b797dc:	vaddpd ymm29,ymm2,ymm4
  b797e2:	vsubpd ymm22,ymm31,ymm24
  b797e8:	vbroadcastsd ymm9,QWORD PTR [rip+0xffffffffff4fb2a7]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  b797f1:	vmovapd ymm6,ymm9
  b797f5:	vfnmadd213pd ymm6,ymm29,ymm22
  b797fb:	vmovapd ymm5,YMMWORD PTR [rsp+0x1e0]
  b79804:	vaddpd ymm5,ymm5,YMMWORD PTR [rsp+0x200]
  b7980d:	vmovapd ymm7,YMMWORD PTR [rsp+0x1a0]
  b79816:	vaddpd ymm7,ymm7,YMMWORD PTR [rsp+0x1c0]
  b7981f:	vsubpd ymm8,ymm5,ymm7
  b79823:	vbroadcastsd ymm13,QWORD PTR [rip+0xffffffffff4fb3f4]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  b7982c:	vmulpd ymm10,ymm8,ymm13
  b79831:	vaddpd ymm21,ymm10,ymm6
  b79837:	vaddpd ymm19,ymm5,ymm7
  b7983d:	vaddpd ymm12,ymm15,ymm12
  b79842:	vmovapd ymm16,ymm9
  b79848:	vfnmadd213pd ymm16,ymm19,ymm12
  b7984e:	vsubpd ymm2,ymm2,ymm4
  b79852:	vmulpd ymm17,ymm2,ymm13
  b79858:	vsubpd ymm5,ymm16,ymm17
  b7985e:	vfnmadd213pd ymm11,ymm9,ymm20
  b79864:	vmovapd ymm2,YMMWORD PTR [rsp+0x700]
  b7986d:	vsubpd ymm2,ymm2,YMMWORD PTR [rsp+0x6c0]
  b79876:	vmulpd ymm8,ymm13,ymm2
  b7987a:	vsubpd ymm15,ymm11,ymm8
  b7987f:	vfnmadd213pd ymm28,ymm9,ymm23
  b79885:	vmovapd ymm2,YMMWORD PTR [rsp+0x20]
  b7988b:	vsubpd ymm2,ymm2,YMMWORD PTR [rsp]
  b79890:	vmulpd ymm9,ymm13,ymm2
  b79894:	vaddpd ymm23,ymm9,ymm28
  b7989a:	vaddpd ymm13,ymm18,YMMWORD PTR [rsp+0x40]
  b798a2:	vmovapd ymm2,YMMWORD PTR [rsp+0x6a0]
  b798ab:	vaddpd ymm20,ymm2,YMMWORD PTR [rsp+0xe0]
  b798b3:	vaddpd ymm7,ymm27,ymm1
  b798b9:	vsubpd ymm3,ymm3,YMMWORD PTR [rsp+0x680]
  b798c2:	vinsertf32x4 ymm2,ymm21,xmm13,0x1
  b798c9:	vinsertf128 ymm4,ymm15,xmm7,0x1
  b798cf:	vunpckhpd ymm24,ymm2,ymm4
  b798d5:	vinsertf32x4 ymm25,ymm5,xmm20,0x1
  b798dc:	vinsertf32x4 ymm26,ymm23,xmm3,0x1
  b798e3:	vunpckhpd ymm27,ymm25,ymm26
  b798e9:	vunpcklpd ymm25,ymm25,ymm26
  b798ef:	vunpcklpd ymm2,ymm2,ymm4
  b798f3:	vmovapd ymm4,ymm2
  b798f7:	vpermt2pd ymm4,ymm14,ymm25
  b798fd:	vmovapd YMMWORD PTR [r8-0x370],ymm4
  b79906:	vpermt2pd ymm2,ymm0,ymm25
  b7990c:	vmovapd YMMWORD PTR [r8-0x350],ymm2
  b79915:	vmovapd ymm2,ymm24
  b7991b:	vpermt2pd ymm2,ymm14,ymm27
  b79921:	vmovupd YMMWORD PTR [r8-0x280],ymm2
  b7992a:	vpermt2pd ymm24,ymm0,ymm27
  b79930:	vmovupd YMMWORD PTR [r8-0x260],ymm24
  b79937:	cmp    r9,0xc
  b7993b:	vmovapd ymm24,ymm0
  b79941:	je     b799af <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0xcef>
  b79943:	vshuff64x2 ymm2,ymm5,ymm20,0x3
  b7994a:	vshuff64x2 ymm3,ymm23,ymm3,0x3
  b79951:	vunpckhpd ymm4,ymm2,ymm3
  b79955:	vunpcklpd ymm2,ymm2,ymm3
  b79959:	vshuff64x2 ymm3,ymm21,ymm13,0x3
  b79960:	vperm2f128 ymm5,ymm15,ymm7,0x31
  b79966:	vunpckhpd ymm7,ymm3,ymm5
  b7996a:	vunpcklpd ymm3,ymm3,ymm5
  b7996e:	vmovapd ymm5,ymm3
  b79972:	vpermt2pd ymm5,ymm14,ymm2
  b79978:	vmovapd YMMWORD PTR [r8-0x190],ymm5
  b79981:	vpermt2pd ymm3,ymm24,ymm2
  b79987:	vmovapd YMMWORD PTR [r8-0x170],ymm3
  b79990:	vmovapd ymm2,ymm7
  b79994:	vpermt2pd ymm2,ymm14,ymm4
  b7999a:	vmovupd YMMWORD PTR [r8-0xa0],ymm2
  b799a3:	vpermt2pd ymm7,ymm24,ymm4
  b799a9:	vmovupd YMMWORD PTR [r8-0x80],ymm7
  b799af:	vbroadcastsd ymm0,QWORD PTR [rip+0xffffffffff4fb0e0]        # 74a98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1f48>
  b799b8:	vmovapd ymm23,YMMWORD PTR [rsp+0x100]
  b799c0:	vfnmadd213pd ymm23,ymm0,YMMWORD PTR [rsp+0x280]
  b799c8:	vmovapd ymm1,YMMWORD PTR [rsp+0x740]
  b799d1:	vsubpd ymm2,ymm1,YMMWORD PTR [rsp+0x720]
  b799da:	vbroadcastsd ymm4,QWORD PTR [rip+0xffffffffff4fb23d]        # 74c20 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x20d0>
  b799e3:	vmulpd ymm3,ymm2,ymm4
  b799e7:	vmovapd ymm1,YMMWORD PTR [rsp+0x120]
  b799f0:	vfnmadd213pd ymm1,ymm0,YMMWORD PTR [rsp+0x760]
  b799fa:	vmovapd ymm0,YMMWORD PTR [rsp+0x140]
  b79a03:	vsubpd ymm2,ymm0,YMMWORD PTR [rsp+0x220]
  b79a0c:	vmulpd ymm4,ymm2,ymm4
  b79a10:	vsubpd ymm5,ymm23,ymm3
  b79a16:	vaddpd ymm13,ymm1,ymm4
  b79a1a:	vaddpd ymm7,ymm22,ymm29
  b79a20:	vaddpd ymm12,ymm12,ymm19
  b79a26:	vaddpd ymm8,ymm11,ymm8
  b79a2b:	vsubpd ymm9,ymm28,ymm9
  b79a31:	vsubpd ymm2,ymm30,YMMWORD PTR [rsp+0x6e0]
  b79a39:	vmovapd ymm0,YMMWORD PTR [rsp+0x2a0]
  b79a42:	vaddpd ymm0,ymm0,YMMWORD PTR [rsp+0x240]
  b79a4b:	vinsertf128 ymm11,ymm5,xmm8,0x1
  b79a51:	vinsertf128 ymm15,ymm7,xmm2,0x1
  b79a57:	vunpckhpd ymm18,ymm11,ymm15
  b79a5d:	vinsertf32x4 ymm19,ymm13,xmm9,0x1
  b79a64:	vinsertf32x4 ymm20,ymm12,xmm0,0x1
  b79a6b:	vunpckhpd ymm21,ymm19,ymm20
  b79a71:	vunpcklpd ymm19,ymm19,ymm20
  b79a77:	vunpcklpd ymm11,ymm11,ymm15
  b79a7c:	vmovapd ymm15,ymm11
  b79a81:	vpermt2pd ymm15,ymm14,ymm19
  b79a87:	vmovapd YMMWORD PTR [r8-0x330],ymm15
  b79a90:	vpermt2pd ymm11,ymm24,ymm19
  b79a96:	vmovapd YMMWORD PTR [r8-0x310],ymm11
  b79a9f:	vmovapd ymm11,ymm18
  b79aa5:	vpermt2pd ymm11,ymm14,ymm21
  b79aab:	vmovupd YMMWORD PTR [r8-0x240],ymm11
  b79ab4:	vpermt2pd ymm18,ymm24,ymm21
  b79aba:	vmovupd YMMWORD PTR [r8-0x220],ymm18
  b79ac1:	cmp    r9,0xc
  b79ac5:	je     b79b2d <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0xe6d>
  b79ac7:	vperm2f128 ymm9,ymm13,ymm9,0x31
  b79acd:	vperm2f128 ymm0,ymm12,ymm0,0x31
  b79ad3:	vunpckhpd ymm11,ymm9,ymm0
  b79ad7:	vunpcklpd ymm0,ymm9,ymm0
  b79adb:	vperm2f128 ymm5,ymm5,ymm8,0x31
  b79ae1:	vperm2f128 ymm2,ymm7,ymm2,0x31
  b79ae7:	vunpckhpd ymm7,ymm5,ymm2
  b79aeb:	vunpcklpd ymm2,ymm5,ymm2
  b79aef:	vmovapd ymm5,ymm2
  b79af3:	vpermt2pd ymm5,ymm14,ymm0
  b79af9:	vmovapd YMMWORD PTR [r8-0x150],ymm5
  b79b02:	vpermt2pd ymm2,ymm24,ymm0
  b79b08:	vmovapd YMMWORD PTR [r8-0x130],ymm2
  b79b11:	vmovapd ymm0,ymm7
  b79b15:	vpermt2pd ymm0,ymm14,ymm11
  b79b1b:	vmovupd YMMWORD PTR [r8-0x60],ymm0
  b79b21:	vpermt2pd ymm7,ymm24,ymm11
  b79b27:	vmovupd YMMWORD PTR [r8-0x40],ymm7
  b79b2d:	vmovapd ymm0,YMMWORD PTR [rsp+0x80]
  b79b36:	vaddpd ymm2,ymm0,YMMWORD PTR [rsp+0xa0]
  b79b3f:	vmovapd ymm0,YMMWORD PTR [rsp+0x60]
  b79b45:	vaddpd ymm5,ymm0,YMMWORD PTR [rsp+0xc0]
  b79b4e:	vaddpd ymm3,ymm23,ymm3
  b79b54:	vsubpd ymm4,ymm1,ymm4
  b79b58:	vsubpd ymm0,ymm6,ymm10
  b79b5d:	vaddpd ymm1,ymm16,ymm17
  b79b63:	vunpcklpd xmm6,xmm2,xmm5
  b79b67:	vunpcklpd xmm7,xmm3,xmm4
  b79b6b:	vmovapd XMMWORD PTR [r8-0x2e0],xmm7
  b79b74:	vmovapd XMMWORD PTR [r8-0x2f0],xmm6
  b79b7d:	vunpcklpd xmm6,xmm0,xmm1
  b79b81:	vmovapd XMMWORD PTR [r8-0x2d0],xmm6
  b79b8a:	vunpckhpd xmm6,xmm2,xmm5
  b79b8e:	vunpckhpd xmm7,xmm3,xmm4
  b79b92:	vmovapd XMMWORD PTR [r8-0x1f0],xmm7
  b79b9b:	vmovapd XMMWORD PTR [r8-0x200],xmm6
  b79ba4:	vunpckhpd xmm6,xmm0,xmm1
  b79ba8:	vmovapd XMMWORD PTR [r8-0x1e0],xmm6
  b79bb1:	cmp    r9,0xc
  b79bb5:	je     b78d20 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x60>
  b79bbb:	vextractf128 xmm4,ymm4,0x1
  b79bc1:	vextractf128 xmm5,ymm5,0x1
  b79bc7:	vextractf128 xmm3,ymm3,0x1
  b79bcd:	vextractf128 xmm2,ymm2,0x1
  b79bd3:	vunpcklpd xmm6,xmm2,xmm5
  b79bd7:	vunpcklpd xmm7,xmm3,xmm4
  b79bdb:	vmovapd XMMWORD PTR [r8-0x100],xmm7
  b79be4:	vmovapd XMMWORD PTR [r8-0x110],xmm6
  b79bed:	vextractf128 xmm1,ymm1,0x1
  b79bf3:	vextractf128 xmm0,ymm0,0x1
  b79bf9:	vunpcklpd xmm6,xmm0,xmm1
  b79bfd:	vmovapd XMMWORD PTR [r8-0xf0],xmm6
  b79c06:	vunpckhpd xmm2,xmm2,xmm5
  b79c0a:	vunpckhpd xmm3,xmm3,xmm4
  b79c0e:	vmovapd XMMWORD PTR [r8-0x10],xmm3
  b79c14:	vmovapd XMMWORD PTR [r8-0x20],xmm2
  b79c1a:	vunpckhpd xmm0,xmm0,xmm1
  b79c1e:	vmovapd XMMWORD PTR [r8],xmm0
  b79c23:	jmp    b78d20 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x60>
  b79c28:	lea    rdi,[rsp+0xc50]
  b79c30:	add    rdx,0x60
  b79c34:	mov    r8d,0x4
  b79c3a:	xor    r11d,r11d
  b79c3d:	jmp    b79e26 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x1166>
  b79c42:	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  b79c50:	vmovupd YMMWORD PTR [rsi+r9*1],ymm23
  b79c57:	vmovupd YMMWORD PTR [rsi+r9*1+0x20],ymm1
  b79c5e:	vpermt2pd ymm5,ymm16,ymm4
  b79c64:	vmovupd YMMWORD PTR [rsi+r9*1+0xf0],ymm30
  b79c6f:	vmovupd YMMWORD PTR [rsi+r9*1+0x110],ymm5
  b79c79:	vmovapd ymm0,YMMWORD PTR [rsp+0x260]
  b79c82:	vpermt2pd ymm0,ymm16,ymm6
  b79c88:	vmovupd YMMWORD PTR [rsi+r9*1+0x1e0],ymm28
  b79c90:	vmovupd YMMWORD PTR [rsi+r9*1+0x200],ymm0
  b79c9a:	vmovapd ymm0,YMMWORD PTR [rsp+0x160]
  b79ca3:	vpermt2pd ymm0,ymm16,YMMWORD PTR [rsp+0x100]
  b79cab:	vmovupd YMMWORD PTR [rsi+r9*1+0x2d0],ymm21
  b79cb6:	vmovupd YMMWORD PTR [rsi+r9*1+0x2f0],ymm0
  b79cc0:	vmovapd ymm0,YMMWORD PTR [rsp+0x180]
  b79cc9:	vpermt2pd ymm0,ymm16,YMMWORD PTR [rsp+0x120]
  b79cd1:	vmovupd YMMWORD PTR [rsi+r9*1+0x3c0],ymm24
  b79cd9:	vmovupd YMMWORD PTR [rsi+r9*1+0x3e0],ymm0
  b79ce3:	vpermt2pd ymm17,ymm16,YMMWORD PTR [rsp+0x1a0]
  b79ceb:	vmovupd YMMWORD PTR [rsi+r9*1+0x4b0],ymm8
  b79cf5:	vmovupd YMMWORD PTR [rsi+r9*1+0x4d0],ymm17
  b79d00:	vpermt2pd ymm13,ymm16,YMMWORD PTR [rsp+0x1c0]
  b79d08:	vmovupd YMMWORD PTR [rsi+r9*1+0x5a0],ymm15
  b79d12:	vmovupd YMMWORD PTR [rsi+r9*1+0x5c0],ymm13
  b79d1c:	vmovapd ymm0,YMMWORD PTR [rsp+0x1e0]
  b79d25:	vpermt2pd ymm0,ymm16,ymm31
  b79d2b:	vmovupd YMMWORD PTR [rsi+r9*1+0x690],ymm20
  b79d36:	vmovupd YMMWORD PTR [rsi+r9*1+0x6b0],ymm0
  b79d40:	vmovapd ymm0,YMMWORD PTR [rsp+0x200]
  b79d49:	vpermt2pd ymm0,ymm16,ymm26
  b79d4f:	vmovupd YMMWORD PTR [rsi+r9*1+0x780],ymm18
  b79d57:	vmovupd YMMWORD PTR [rsi+r9*1+0x7a0],ymm0
  b79d61:	vmovapd ymm0,YMMWORD PTR [rsp+0x80]
  b79d6a:	vpermt2pd ymm0,ymm16,YMMWORD PTR [rsp+0x60]
  b79d72:	vmovupd YMMWORD PTR [rsi+r9*1+0x870],ymm9
  b79d7c:	vmovupd YMMWORD PTR [rsi+r9*1+0x890],ymm0
  b79d86:	vmovapd ymm0,YMMWORD PTR [rsp+0xc0]
  b79d8f:	vpermt2pd ymm0,ymm16,YMMWORD PTR [rsp+0xa0]
  b79d97:	vmovupd YMMWORD PTR [rsi+r9*1+0x960],ymm10
  b79da1:	vmovupd YMMWORD PTR [rsi+r9*1+0x980],ymm0
  b79dab:	vmovapd ymm0,YMMWORD PTR [rsp]
  b79db0:	vpermt2pd ymm0,ymm16,ymm27
  b79db6:	vmovupd YMMWORD PTR [rsi+r9*1+0xa50],ymm11
  b79dc0:	vmovupd YMMWORD PTR [rsi+r9*1+0xa70],ymm0
  b79dca:	vmovapd ymm0,YMMWORD PTR [rsp+0xe0]
  b79dd3:	vpermt2pd ymm0,ymm16,YMMWORD PTR [rsp+0x20]
  b79ddb:	vmovupd YMMWORD PTR [rsi+r9*1+0xb40],ymm14
  b79de5:	vmovupd YMMWORD PTR [rsi+r9*1+0xb60],ymm0
  b79def:	vmovapd ymm0,YMMWORD PTR [rsp+0x40]
  b79df5:	vpermt2pd ymm0,ymm16,ymm25
  b79dfb:	vmovupd YMMWORD PTR [rsi+r9*1+0xc30],ymm7
  b79e05:	vmovupd YMMWORD PTR [rsi+r9*1+0xc50],ymm0
  b79e0f:	add    rdi,0x40
  b79e13:	add    rdx,0x380
  b79e1a:	mov    r11,r10
  b79e1d:	dec    r8
  b79e20:	je     b7ad1a <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x205a>
  b79e26:	vxorpd xmm0,xmm0,xmm0
  b79e2a:	vmovapd ZMMWORD PTR [rsp+0x440],zmm0
  b79e32:	vmovapd ZMMWORD PTR [rsp+0x400],zmm0
  b79e3a:	vmovapd ZMMWORD PTR [rsp+0x3c0],zmm0
  b79e42:	vmovapd ZMMWORD PTR [rsp+0x380],zmm0
  b79e4a:	vmovapd ZMMWORD PTR [rsp+0x340],zmm0
  b79e52:	vmovapd ZMMWORD PTR [rsp+0x300],zmm0
  b79e5a:	vmovapd ZMMWORD PTR [rsp+0x2c0],zmm0
  b79e62:	vmovapd ZMMWORD PTR [rsp+0x600],zmm0
  b79e6a:	vmovapd ZMMWORD PTR [rsp+0x5c0],zmm0
  b79e72:	vmovapd ZMMWORD PTR [rsp+0x580],zmm0
  b79e7a:	vmovapd ZMMWORD PTR [rsp+0x540],zmm0
  b79e82:	vmovapd ZMMWORD PTR [rsp+0x500],zmm0
  b79e8a:	vmovapd ZMMWORD PTR [rsp+0x4c0],zmm0
  b79e92:	vmovapd ZMMWORD PTR [rsp+0x480],zmm0
  b79e9a:	vmovapd ZMMWORD PTR [rsp+0x900],zmm0
  b79ea2:	vmovapd ZMMWORD PTR [rsp+0x8c0],zmm0
  b79eaa:	vmovapd ZMMWORD PTR [rsp+0x880],zmm0
  b79eb2:	vmovapd ZMMWORD PTR [rsp+0x840],zmm0
  b79eba:	vmovapd ZMMWORD PTR [rsp+0x800],zmm0
  b79ec2:	vmovapd ZMMWORD PTR [rsp+0x7c0],zmm0
  b79eca:	vmovapd ZMMWORD PTR [rsp+0x780],zmm0
  b79ed2:	vmovapd ZMMWORD PTR [rsp+0xac0],zmm0
  b79eda:	vmovapd ZMMWORD PTR [rsp+0xa80],zmm0
  b79ee2:	vmovapd ZMMWORD PTR [rsp+0xa40],zmm0
  b79eea:	vmovapd ZMMWORD PTR [rsp+0xa00],zmm0
  b79ef2:	vmovapd ZMMWORD PTR [rsp+0x9c0],zmm0
  b79efa:	vmovapd ZMMWORD PTR [rsp+0x980],zmm0
  b79f02:	vmovapd ZMMWORD PTR [rsp+0x940],zmm0
  b79f0a:	mov    r9,r11
  b79f0d:	shl    r9,0x4
  b79f11:	cmp    r11,0xc
  b79f15:	jae    b79f30 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x1270>
  b79f17:	vmovapd ymm0,YMMWORD PTR [rsp+r9*1+0xb60]
  b79f21:	jmp    b79f3a <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x127a>
  b79f23:	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  b79f30:	vmovapd xmm0,XMMWORD PTR [rsp+r9*1+0xb60]
  b79f3a:	lea    r10,[r11+0x4]
  b79f3e:	vmovapd ymm1,YMMWORD PTR [rsp+r9*1+0xb40]
  b79f48:	mov    rbx,rdi
  b79f4b:	xor    r14d,r14d
  b79f4e:	jmp    b79fb6 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x12f6>
  b79f50:	vmovupd ymm2,YMMWORD PTR [rbx]
  b79f54:	vmovupd ymm3,YMMWORD PTR [rbx-0x20]
  b79f59:	vperm2f128 ymm4,ymm3,ymm2,0x31
  b79f5f:	vinsertf128 ymm2,ymm3,xmm2,0x1
  b79f65:	vunpcklpd ymm3,ymm2,ymm4
  b79f69:	vunpckhpd ymm2,ymm2,ymm4
  b79f6d:	vmovapd YMMWORD PTR [rsp+r14*1+0x2e0],ymm3
  b79f77:	vmovapd YMMWORD PTR [rsp+r14*1+0x4a0],ymm2
  b79f81:	vmovups ymm2,YMMWORD PTR [rdx+r14*2-0x20]
  b79f88:	vmovaps YMMWORD PTR [rsp+r14*1+0x7a0],ymm2
  b79f92:	vmovupd ymm2,YMMWORD PTR [rdx+r14*2]
  b79f98:	vmovapd YMMWORD PTR [rsp+r14*1+0x960],ymm2
  b79fa2:	add    r14,0x20
  b79fa6:	add    rbx,0xf0
  b79fad:	cmp    r14,0x1a0
  b79fb4:	je     b79fd0 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x1310>
  b79fb6:	cmp    r11,0xc
  b79fba:	jb     b79f50 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x1290>
  b79fbc:	vmovapd xmm2,XMMWORD PTR [rbx]
  b79fc0:	jmp    b79f54 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x1294>
  b79fc2:	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  b79fd0:	vperm2f128 ymm2,ymm1,ymm0,0x31
  b79fd6:	vinsertf128 ymm0,ymm1,xmm0,0x1
  b79fdc:	vunpcklpd ymm1,ymm0,ymm2
  b79fe0:	vmovapd YMMWORD PTR [rsp+0xe0],ymm1
  b79fe9:	vunpckhpd ymm0,ymm0,ymm2
  b79fed:	vmovapd YMMWORD PTR [rsp+0x40],ymm0
  b79ff3:	vmovapd ymm12,YMMWORD PTR [rsp+0x920]
  b79ffc:	vmovaps ymm0,YMMWORD PTR [rsp+0x460]
  b7a005:	vmovaps YMMWORD PTR [rsp+0x20],ymm0
  b7a00b:	vmovapd ymm13,YMMWORD PTR [rsp+0xae0]
  b7a014:	vmovapd ymm15,YMMWORD PTR [rsp+0x620]
  b7a01d:	vmovapd ymm18,YMMWORD PTR [rsp+0x8e0]
  b7a025:	vmovapd ymm16,YMMWORD PTR [rsp+0x420]
  b7a02d:	vmovapd ymm0,YMMWORD PTR [rsp+0xaa0]
  b7a036:	vmovapd ymm19,YMMWORD PTR [rsp+0x5e0]
  b7a03e:	vmovapd ymm22,YMMWORD PTR [rsp+0x820]
  b7a046:	vmovapd ymm20,YMMWORD PTR [rsp+0x360]
  b7a04e:	vmovapd ymm21,YMMWORD PTR [rsp+0x9e0]
  b7a056:	vmovapd ymm24,YMMWORD PTR [rsp+0x8a0]
  b7a05e:	vmovapd ymm23,YMMWORD PTR [rsp+0x3e0]
  b7a066:	vmovapd ymm17,YMMWORD PTR [rsp+0x860]
  b7a06e:	vmovapd ymm5,YMMWORD PTR [rsp+0x3a0]
  b7a077:	vmovapd ymm7,YMMWORD PTR [rsp+0x880]
  b7a080:	vmovapd ymm6,YMMWORD PTR [rsp+0x3c0]
  b7a089:	vmovapd ymm11,YMMWORD PTR [rsp+0x840]
  b7a092:	vmovapd ymm3,YMMWORD PTR [rsp+0x380]
  b7a09b:	vmovapd ymm9,YMMWORD PTR [rsp+0x8c0]
  b7a0a4:	vmovapd ymm4,YMMWORD PTR [rsp+0x400]
  b7a0ad:	vmovapd ymm2,YMMWORD PTR [rsp+0x7c0]
  b7a0b6:	vmovapd ymm1,YMMWORD PTR [rsp+0x800]
  b7a0bf:	vmovapd ymm25,YMMWORD PTR [rsp+0x300]
  b7a0c7:	vmovapd ymm10,YMMWORD PTR [rsp+0x340]
  b7a0d0:	vmovapd ymm26,YMMWORD PTR [rsp+0x980]
  b7a0d8:	vmovapd ymm28,YMMWORD PTR [rsp+0x4c0]
  b7a0e0:	vmovapd ymm29,YMMWORD PTR [rsp+0x900]
  b7a0e8:	vmovapd ymm27,YMMWORD PTR [rsp+0x440]
  b7a0f0:	vmulpd ymm8,ymm25,ymm2
  b7a0f6:	vfnmadd231pd ymm8,ymm28,ymm26
  b7a0fc:	vmovapd YMMWORD PTR [rsp],ymm8
  b7a101:	vmulpd ymm8,ymm28,ymm2
  b7a107:	vmovapd ymm30,YMMWORD PTR [rsp+0xac0]
  b7a10f:	vfmadd231pd ymm8,ymm25,ymm26
  b7a115:	vmovapd ymm2,YMMWORD PTR [rsp+0x600]
  b7a11e:	vmulpd ymm14,ymm27,ymm29
  b7a124:	vfnmadd231pd ymm14,ymm2,ymm30
  b7a12a:	vmulpd ymm2,ymm2,ymm29
  b7a130:	vmovapd ymm26,YMMWORD PTR [rsp+0x9c0]
  b7a138:	vfmadd231pd ymm2,ymm27,ymm30
  b7a13e:	vmovapd ymm29,YMMWORD PTR [rsp+0x500]
  b7a146:	vmulpd ymm27,ymm10,ymm1
  b7a14c:	vfnmadd231pd ymm27,ymm29,ymm26
  b7a152:	vmulpd ymm29,ymm29,ymm1
  b7a158:	vmovapd ymm1,YMMWORD PTR [rsp+0xa80]
  b7a161:	vfmadd231pd ymm29,ymm10,ymm26
  b7a167:	vmovapd ymm26,YMMWORD PTR [rsp+0x5c0]
  b7a16f:	vmulpd ymm25,ymm4,ymm9
  b7a175:	vfnmadd231pd ymm25,ymm26,ymm1
  b7a17b:	vmulpd ymm9,ymm26,ymm9
  b7a181:	vmovapd ymm30,YMMWORD PTR [rsp+0xa00]
  b7a189:	vfmadd231pd ymm9,ymm4,ymm1
  b7a18e:	vmovapd ymm1,YMMWORD PTR [rsp+0x540]
  b7a197:	vmulpd ymm10,ymm11,ymm3
  b7a19b:	vfnmadd231pd ymm10,ymm1,ymm30
  b7a1a1:	vmulpd ymm31,ymm1,ymm11
  b7a1a7:	vmovapd ymm1,YMMWORD PTR [rsp+0xa40]
  b7a1b0:	vfmadd231pd ymm31,ymm3,ymm30
  b7a1b6:	vmovapd ymm3,YMMWORD PTR [rsp+0x580]
  b7a1bf:	vmulpd ymm4,ymm6,ymm7
  b7a1c3:	vfnmadd231pd ymm4,ymm3,ymm1
  b7a1c8:	vmulpd ymm7,ymm3,ymm7
  b7a1cc:	vmovapd ymm3,YMMWORD PTR [rsp+0xa20]
  b7a1d5:	vfmadd231pd ymm7,ymm6,ymm1
  b7a1da:	vmovapd ymm1,YMMWORD PTR [rsp+0x560]
  b7a1e3:	vmulpd ymm6,ymm5,ymm17
  b7a1e9:	vfnmadd231pd ymm6,ymm1,ymm3
  b7a1ee:	vmovapd ymm11,ymm6
  b7a1f2:	vmulpd ymm1,ymm1,ymm17
  b7a1f8:	vmovapd ymm6,YMMWORD PTR [rsp+0xa60]
  b7a201:	vfmadd231pd ymm1,ymm5,ymm3
  b7a206:	vmovapd YMMWORD PTR [rsp+0x1a0],ymm1
  b7a20f:	vmovapd ymm3,YMMWORD PTR [rsp+0x5a0]
  b7a218:	vmulpd ymm26,ymm23,ymm24
  b7a21e:	vfnmadd231pd ymm26,ymm3,ymm6
  b7a224:	vmulpd ymm30,ymm3,ymm24
  b7a22a:	vmovapd ymm3,YMMWORD PTR [rsp+0x520]
  b7a233:	vfmadd231pd ymm30,ymm23,ymm6
  b7a239:	vmovapd ymm5,YMMWORD PTR [rsp+0x7a0]
  b7a242:	vmulpd ymm24,ymm20,ymm22
  b7a248:	vfnmadd231pd ymm24,ymm3,ymm21
  b7a24e:	vmulpd ymm23,ymm3,ymm22
  b7a254:	vmovapd ymm6,YMMWORD PTR [rsp+0x7e0]
  b7a25d:	vfmadd231pd ymm23,ymm20,ymm21
  b7a263:	vmovapd ymm20,YMMWORD PTR [rsp+0x320]
  b7a26b:	vmulpd ymm22,ymm16,ymm18
  b7a271:	vfnmadd231pd ymm22,ymm19,ymm0
  b7a277:	vmulpd ymm19,ymm19,ymm18
  b7a27d:	vmovapd ymm18,YMMWORD PTR [rsp+0x9a0]
  b7a285:	vfmadd231pd ymm19,ymm16,ymm0
  b7a28b:	vmovapd ymm16,YMMWORD PTR [rsp+0x4e0]
  b7a293:	vmulpd ymm3,ymm20,ymm6
  b7a299:	vfnmadd231pd ymm3,ymm16,ymm18
  b7a29f:	vmulpd ymm1,ymm16,ymm6
  b7a2a5:	vmovapd ymm6,YMMWORD PTR [rsp+0x2e0]
  b7a2ae:	vfmadd231pd ymm1,ymm20,ymm18
  b7a2b4:	vmovapd ymm16,YMMWORD PTR [rsp+0x960]
  b7a2bc:	vmovapd ymm0,YMMWORD PTR [rsp+0x20]
  b7a2c2:	vmulpd ymm21,ymm0,ymm12
  b7a2c8:	vfnmadd231pd ymm21,ymm15,ymm13
  b7a2ce:	vmulpd ymm18,ymm15,ymm12
  b7a2d4:	vmovapd ymm15,YMMWORD PTR [rsp+0x4a0]
  b7a2dd:	vfmadd231pd ymm18,ymm0,ymm13
  b7a2e3:	vmovapd ymm12,YMMWORD PTR [rsp]
  b7a2e8:	vaddpd ymm28,ymm12,ymm14
  b7a2ee:	vmovapd ymm20,ymm14
  b7a2f4:	vmulpd ymm14,ymm6,ymm5
  b7a2f8:	vfnmadd231pd ymm14,ymm15,ymm16
  b7a2fe:	vmulpd ymm0,ymm15,ymm5
  b7a302:	vmovapd ymm17,YMMWORD PTR [rsp+0xe0]
  b7a30a:	vaddpd ymm15,ymm17,ymm28
  b7a310:	vfmadd231pd ymm0,ymm6,ymm16
  b7a316:	vaddpd ymm6,ymm27,ymm25
  b7a31c:	vaddpd ymm5,ymm15,ymm6
  b7a320:	vaddpd ymm15,ymm31,ymm7
  b7a326:	vmovapd YMMWORD PTR [rsp+0xc0],ymm15
  b7a32f:	vsubpd ymm31,ymm31,ymm7
  b7a335:	vaddpd ymm15,ymm8,ymm2
  b7a339:	vsubpd ymm16,ymm8,ymm2
  b7a33f:	vaddpd ymm2,ymm29,ymm9
  b7a345:	vmovapd YMMWORD PTR [rsp+0x200],ymm2
  b7a34e:	vsubpd ymm7,ymm29,ymm9
  b7a354:	vaddpd ymm2,ymm18,ymm0
  b7a35a:	vmovapd YMMWORD PTR [rsp+0x20],ymm2
  b7a360:	vsubpd ymm8,ymm18,ymm0
  b7a366:	vaddpd ymm0,ymm30,ymm23
  b7a36c:	vmovapd YMMWORD PTR [rsp+0x120],ymm0
  b7a375:	vsubpd ymm29,ymm30,ymm23
  b7a37b:	vaddpd ymm0,ymm19,ymm1
  b7a381:	vmovapd YMMWORD PTR [rsp+0xa0],ymm0
  b7a38a:	vsubpd ymm30,ymm19,ymm1
  b7a390:	vaddpd ymm0,ymm10,ymm4
  b7a394:	vaddpd ymm2,ymm5,ymm0
  b7a398:	vmovapd YMMWORD PTR [rsp+0x1c0],ymm2
  b7a3a1:	vsubpd ymm1,ymm10,ymm4
  b7a3a5:	vmovapd YMMWORD PTR [rsp+0x80],ymm1
  b7a3ae:	vaddpd ymm4,ymm26,ymm24
  b7a3b4:	vsubpd ymm23,ymm12,ymm20
  b7a3ba:	vmovapd ymm18,ymm11
  b7a3c0:	vaddpd ymm1,ymm11,ymm4
  b7a3c4:	vsubpd ymm19,ymm27,ymm25
  b7a3ca:	vaddpd ymm10,ymm21,ymm14
  b7a3d0:	vsubpd ymm5,ymm21,ymm14
  b7a3d6:	vmovapd YMMWORD PTR [rsp],ymm5
  b7a3db:	vaddpd ymm25,ymm22,ymm3
  b7a3e1:	vaddpd ymm1,ymm1,ymm25
  b7a3e7:	vaddpd ymm5,ymm10,ymm1
  b7a3eb:	vmovapd YMMWORD PTR [rsp+0x1e0],ymm5
  b7a3f4:	vsubpd ymm24,ymm26,ymm24
  b7a3fa:	vbroadcastsd ymm14,QWORD PTR [rip+0xffffffffff4fad9d]        # 751a0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2650>
  b7a403:	vmovapd ymm9,ymm14
  b7a408:	vfmadd213pd ymm9,ymm28,ymm17
  b7a40e:	vsubpd ymm3,ymm22,ymm3
  b7a414:	vmovapd YMMWORD PTR [rsp+0x60],ymm3
  b7a41a:	vbroadcastsd ymm26,QWORD PTR [rip+0xffffffffff4faa54]        # 74e78 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2328>
  b7a424:	vmovapd ymm22,ymm26
  b7a42a:	vfnmadd213pd ymm22,ymm28,ymm17
  b7a430:	vbroadcastsd ymm27,QWORD PTR [rip+0xffffffffff4fa9a6]        # 74de0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2290>
  b7a43a:	vfnmadd213pd ymm28,ymm27,ymm17
  b7a440:	vaddpd ymm1,ymm2,ymm5
  b7a444:	vmovapd YMMWORD PTR [rsp+0xe0],ymm1
  b7a44d:	vfnmadd231pd ymm9,ymm6,ymm26
  b7a453:	vfnmadd231pd ymm9,ymm0,ymm27
  b7a459:	vmovapd YMMWORD PTR [rsp+0x180],ymm9
  b7a462:	vfnmadd231pd ymm22,ymm6,ymm27
  b7a468:	vfmadd231pd ymm28,ymm14,ymm6
  b7a46e:	vbroadcastsd ymm13,QWORD PTR [rip+0xffffffffff4fa761]        # 74bd8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2088>
  b7a477:	vmulpd ymm21,ymm7,ymm13
  b7a47d:	vbroadcastsd ymm11,QWORD PTR [rip+0xffffffffff4faa4a]        # 74ed0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x2380>
  b7a486:	vfmadd231pd ymm21,ymm16,ymm11
  b7a48c:	vbroadcastsd ymm9,QWORD PTR [rip+0xffffffffff4fa2b3]        # 74748 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1bf8>
  b7a495:	vfmadd231pd ymm21,ymm31,ymm9
  b7a49b:	vfmadd231pd ymm22,ymm0,ymm14
  b7a4a1:	vfnmadd231pd ymm28,ymm26,ymm0
  b7a4a7:	vmulpd ymm12,ymm16,ymm13
  b7a4ad:	vfnmadd231pd ymm12,ymm7,ymm9
  b7a4b2:	vmulpd ymm6,ymm16,ymm9
  b7a4b8:	vfnmadd231pd ymm6,ymm11,ymm7
  b7a4bd:	vmovapd ymm3,ymm14
  b7a4c1:	vmovapd ymm0,ymm18
  b7a4c7:	vfmadd213pd ymm3,ymm4,ymm18
  b7a4cd:	vfnmadd231pd ymm12,ymm31,ymm11
  b7a4d3:	vfmadd231pd ymm6,ymm13,ymm31
  b7a4d9:	vmovapd ymm7,ymm26
  b7a4df:	vfnmadd213pd ymm7,ymm4,ymm18
  b7a4e5:	vfnmadd231pd ymm0,ymm27,ymm4
  b7a4eb:	vmovapd ymm16,YMMWORD PTR [rsp+0x40]
  b7a4f3:	vaddpd ymm4,ymm15,ymm16
  b7a4f9:	vmovapd ymm20,YMMWORD PTR [rsp+0x200]
  b7a501:	vaddpd ymm4,ymm20,ymm4
  b7a507:	vmovapd ymm17,YMMWORD PTR [rsp+0xc0]
  b7a50f:	vaddpd ymm18,ymm17,ymm4
  b7a515:	vfnmadd231pd ymm3,ymm25,ymm26
  b7a51b:	vfnmadd231pd ymm3,ymm10,ymm27
  b7a521:	vfnmadd231pd ymm7,ymm25,ymm27
  b7a527:	vfmadd231pd ymm0,ymm14,ymm25
  b7a52d:	vmulpd ymm5,ymm30,ymm13
  b7a533:	vfmadd231pd ymm5,ymm29,ymm11
  b7a539:	vmovapd ymm31,ymm8
  b7a53f:	vfmadd231pd ymm5,ymm8,ymm9
  b7a544:	vfmadd231pd ymm7,ymm10,ymm14
  b7a549:	vfnmadd231pd ymm0,ymm26,ymm10
  b7a54f:	vmovapd YMMWORD PTR [rsp+0x100],ymm0
  b7a558:	vmulpd ymm25,ymm29,ymm13
  b7a55e:	vfnmadd231pd ymm25,ymm30,ymm9
  b7a564:	vmulpd ymm2,ymm29,ymm9
  b7a56a:	vfnmadd231pd ymm2,ymm11,ymm30
  b7a570:	vmovapd ymm8,ymm14
  b7a575:	vfmadd213pd ymm8,ymm15,ymm16
  b7a57b:	vfnmadd231pd ymm25,ymm31,ymm11
  b7a581:	vfmadd231pd ymm2,ymm13,ymm31
  b7a587:	vmovapd ymm29,ymm26
  b7a58d:	vfnmadd213pd ymm29,ymm15,ymm16
  b7a593:	vfnmadd213pd ymm15,ymm27,ymm16
  b7a599:	vmovapd ymm1,YMMWORD PTR [rsp+0x120]
  b7a5a2:	vmovapd ymm0,YMMWORD PTR [rsp+0x1a0]
  b7a5ab:	vaddpd ymm16,ymm0,ymm1
  b7a5b1:	vmovapd ymm30,YMMWORD PTR [rsp+0xa0]
  b7a5b9:	vaddpd ymm16,ymm16,ymm30
  b7a5bf:	vmovapd ymm10,YMMWORD PTR [rsp+0x20]
  b7a5c5:	vaddpd ymm4,ymm16,ymm10
  b7a5cb:	vmovapd YMMWORD PTR [rsp+0x160],ymm4
  b7a5d4:	vfnmadd231pd ymm8,ymm20,ymm26
  b7a5da:	vfnmadd231pd ymm8,ymm17,ymm27
  b7a5e0:	vfnmadd231pd ymm29,ymm20,ymm27
  b7a5e6:	vfmadd231pd ymm15,ymm14,ymm20
  b7a5ec:	vmulpd ymm20,ymm19,ymm13
  b7a5f2:	vfmadd231pd ymm20,ymm23,ymm11
  b7a5f8:	vmovapd ymm31,YMMWORD PTR [rsp+0x80]
  b7a600:	vfmadd231pd ymm20,ymm31,ymm9
  b7a606:	vfmadd231pd ymm29,ymm17,ymm14
  b7a60c:	vfnmadd231pd ymm15,ymm26,ymm17
  b7a612:	vmulpd ymm16,ymm23,ymm13
  b7a618:	vfnmadd231pd ymm16,ymm19,ymm9
  b7a61e:	vmulpd ymm17,ymm23,ymm9
  b7a624:	vfnmadd231pd ymm17,ymm11,ymm19
  b7a62a:	vmovapd ymm19,ymm14
  b7a630:	vfmadd213pd ymm19,ymm1,ymm0
  b7a636:	vfnmadd231pd ymm16,ymm31,ymm11
  b7a63c:	vfmadd231pd ymm17,ymm13,ymm31
  b7a642:	vmovapd ymm23,ymm26
  b7a648:	vfnmadd213pd ymm23,ymm1,ymm0
  b7a64e:	vfnmadd231pd ymm0,ymm27,ymm1
  b7a654:	vmovapd ymm31,ymm18
  b7a65a:	vaddpd ymm1,ymm18,ymm4
  b7a660:	vmovapd YMMWORD PTR [rsp+0x40],ymm1
  b7a666:	vfnmadd231pd ymm19,ymm30,ymm26
  b7a66c:	vfnmadd231pd ymm19,ymm10,ymm27
  b7a672:	vfnmadd231pd ymm23,ymm30,ymm27
  b7a678:	vfmadd231pd ymm0,ymm14,ymm30
  b7a67e:	vmovapd ymm27,YMMWORD PTR [rsp+0x60]
  b7a686:	vmulpd ymm18,ymm27,ymm13
  b7a68c:	vfmadd231pd ymm18,ymm24,ymm11
  b7a692:	vfmadd231pd ymm23,ymm10,ymm14
  b7a698:	vfnmadd231pd ymm0,ymm26,ymm10
  b7a69e:	vmulpd ymm26,ymm24,ymm13
  b7a6a4:	vfnmadd231pd ymm26,ymm27,ymm9
  b7a6aa:	vmulpd ymm24,ymm24,ymm9
  b7a6b0:	vfnmadd231pd ymm24,ymm11,ymm27
  b7a6b6:	vmovapd ymm4,YMMWORD PTR [rsp+0x180]
  b7a6bf:	vaddpd ymm10,ymm4,ymm21
  b7a6c5:	vmovapd ymm14,YMMWORD PTR [rsp]
  b7a6ca:	vfmadd231pd ymm18,ymm14,ymm9
  b7a6d0:	vfnmadd231pd ymm26,ymm14,ymm11
  b7a6d6:	vfmadd231pd ymm24,ymm13,ymm14
  b7a6dc:	vaddpd ymm1,ymm28,ymm6
  b7a6e2:	vmovapd YMMWORD PTR [rsp],ymm1
  b7a6e7:	vsubpd ymm1,ymm28,ymm6
  b7a6ed:	vmovapd YMMWORD PTR [rsp+0x20],ymm1
  b7a6f3:	vmovapd ymm1,YMMWORD PTR [rsp+0x100]
  b7a6fc:	vaddpd ymm13,ymm1,ymm2
  b7a700:	vsubpd ymm1,ymm1,ymm2
  b7a704:	vsubpd ymm27,ymm15,ymm17
  b7a70a:	vaddpd ymm30,ymm17,ymm15
  b7a710:	vsubpd ymm15,ymm0,ymm24
  b7a716:	vaddpd ymm6,ymm0,ymm24
  b7a71c:	vaddpd ymm17,ymm22,ymm12
  b7a722:	vsubpd ymm12,ymm22,ymm12
  b7a728:	vaddpd ymm22,ymm7,ymm25
  b7a72e:	vsubpd ymm7,ymm7,ymm25
  b7a734:	vsubpd ymm11,ymm29,ymm16
  b7a73a:	vaddpd ymm25,ymm16,ymm29
  b7a740:	vsubpd ymm16,ymm23,ymm26
  b7a746:	vaddpd ymm23,ymm23,ymm26
  b7a74c:	vaddpd ymm26,ymm3,ymm5
  b7a752:	vsubpd ymm2,ymm4,ymm21
  b7a758:	vsubpd ymm0,ymm10,ymm26
  b7a75e:	vmovapd YMMWORD PTR [rsp+0x140],ymm0
  b7a767:	vsubpd ymm4,ymm3,ymm5
  b7a76b:	vsubpd ymm3,ymm8,ymm20
  b7a771:	vaddpd ymm8,ymm20,ymm8
  b7a777:	vsubpd ymm20,ymm19,ymm18
  b7a77d:	vaddpd ymm18,ymm19,ymm18
  b7a783:	vsubpd ymm14,ymm3,ymm20
  b7a789:	vmovapd ymm9,YMMWORD PTR [rsp+0x1c0]
  b7a792:	vsubpd ymm0,ymm9,YMMWORD PTR [rsp+0x1e0]
  b7a79b:	vmovapd YMMWORD PTR [rsp+0x240],ymm0
  b7a7a4:	vaddpd ymm0,ymm17,ymm22
  b7a7aa:	vmovapd YMMWORD PTR [rsp+0x280],ymm0
  b7a7b3:	vsubpd ymm31,ymm31,YMMWORD PTR [rsp+0x160]
  b7a7bb:	vaddpd ymm28,ymm11,ymm16
  b7a7c1:	vaddpd ymm0,ymm10,ymm26
  b7a7c7:	vmovapd YMMWORD PTR [rsp+0x220],ymm0
  b7a7d0:	vmovapd ymm5,YMMWORD PTR [rsp]
  b7a7d5:	vsubpd ymm19,ymm5,ymm13
  b7a7db:	vaddpd ymm26,ymm3,ymm20
  b7a7e1:	vsubpd ymm21,ymm27,ymm15
  b7a7e7:	vsubpd ymm22,ymm17,ymm22
  b7a7ed:	vmovapd ymm3,YMMWORD PTR [rsp+0x20]
  b7a7f3:	vaddpd ymm29,ymm3,ymm1
  b7a7f9:	vsubpd ymm9,ymm11,ymm16
  b7a7ff:	vaddpd ymm24,ymm30,ymm6
  b7a805:	vaddpd ymm11,ymm13,ymm5
  b7a809:	vsubpd ymm13,ymm12,ymm7
  b7a80d:	vaddpd ymm10,ymm27,ymm15
  b7a813:	vsubpd ymm17,ymm25,ymm23
  b7a819:	vsubpd ymm3,ymm3,ymm1
  b7a81d:	vmovapd YMMWORD PTR [rsp+0x2a0],ymm3
  b7a826:	vmovapd ymm1,YMMWORD PTR [rsp+0x40]
  b7a82c:	vaddpd ymm20,ymm2,ymm4
  b7a832:	vsubpd ymm27,ymm30,ymm6
  b7a838:	vmovapd ymm5,ymm14
  b7a83c:	vaddpd ymm15,ymm8,ymm18
  b7a842:	vaddpd ymm12,ymm12,ymm7
  b7a846:	vaddpd ymm14,ymm25,ymm23
  b7a84c:	vsubpd ymm25,ymm2,ymm4
  b7a852:	vsubpd ymm7,ymm8,ymm18
  b7a858:	vmovapd ymm4,YMMWORD PTR [rsp+0xe0]
  b7a861:	vmovapd YMMWORD PTR [rcx],ymm4
  b7a865:	vmovapd YMMWORD PTR [rax],ymm1
  b7a869:	vmovapd ymm6,YMMWORD PTR [rsp+0x140]
  b7a872:	vmovapd YMMWORD PTR [rsp+0x2e0],ymm6
  b7a87b:	vmovapd YMMWORD PTR [rsp+0x4a0],ymm5
  b7a884:	vmovapd ymm8,YMMWORD PTR [rsp+0x280]
  b7a88d:	vmovapd YMMWORD PTR [rsp+0x300],ymm8
  b7a896:	vmovapd YMMWORD PTR [rsp+0x4c0],ymm28
  b7a89e:	vmovapd YMMWORD PTR [rsp+0x320],ymm19
  b7a8a6:	vmovapd YMMWORD PTR [rsp+0x4e0],ymm21
  b7a8ae:	vmovapd YMMWORD PTR [rsp+0x340],ymm29
  b7a8b6:	vmovapd YMMWORD PTR [rsp+0x500],ymm24
  b7a8be:	vmovapd YMMWORD PTR [rsp+0x360],ymm13
  b7a8c7:	vmovapd YMMWORD PTR [rsp+0x520],ymm17
  b7a8cf:	vmovapd YMMWORD PTR [rsp+0x380],ymm20
  b7a8d7:	vmovapd YMMWORD PTR [rsp+0x540],ymm15
  b7a8e0:	vmovapd ymm18,YMMWORD PTR [rsp+0x240]
  b7a8e8:	vmovapd YMMWORD PTR [rsp+0x3a0],ymm18
  b7a8f0:	vmovapd YMMWORD PTR [rsp+0x560],ymm31
  b7a8f8:	vmovapd YMMWORD PTR [rsp+0x3c0],ymm0
  b7a901:	vmovapd YMMWORD PTR [rsp+0x580],ymm26
  b7a909:	vmovapd YMMWORD PTR [rsp+0x3e0],ymm22
  b7a911:	vmovapd YMMWORD PTR [rsp+0x5a0],ymm9
  b7a91a:	vmovapd YMMWORD PTR [rsp+0x400],ymm11
  b7a923:	vmovapd YMMWORD PTR [rsp+0x5c0],ymm10
  b7a92c:	vmovapd YMMWORD PTR [rsp+0x420],ymm3
  b7a935:	vmovapd YMMWORD PTR [rsp+0x5e0],ymm27
  b7a93d:	vmovapd YMMWORD PTR [rsp+0x440],ymm12
  b7a946:	vmovapd YMMWORD PTR [rsp+0x600],ymm14
  b7a94f:	vmovapd YMMWORD PTR [rsp+0x460],ymm25
  b7a957:	vmovapd YMMWORD PTR [rsp+0x620],ymm7
  b7a960:	vmovapd ymm23,ymm1
  b7a966:	vmovapd ymm3,YMMWORD PTR [rip+0xffffffffff4fc1f2]        # 76b60 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4010>
  b7a96e:	vpermt2pd ymm23,ymm3,ymm4
  b7a974:	vmovapd ymm16,YMMWORD PTR [rip+0xffffffffff4fccc2]        # 77640 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x4af0>
  b7a97e:	vpermt2pd ymm1,ymm16,ymm4
  b7a984:	vmovapd ymm30,ymm5
  b7a98a:	vmovapd ymm4,ymm6
  b7a98e:	vpermt2pd ymm30,ymm3,ymm6
  b7a994:	vmovapd ymm6,ymm8
  b7a998:	vmovapd YMMWORD PTR [rsp+0x260],ymm28
  b7a9a0:	vpermt2pd ymm28,ymm3,ymm8
  b7a9a6:	vmovapd YMMWORD PTR [rsp+0x160],ymm21
  b7a9ae:	vmovapd YMMWORD PTR [rsp+0x100],ymm19
  b7a9b6:	vpermt2pd ymm21,ymm3,ymm19
  b7a9bc:	vmovapd YMMWORD PTR [rsp+0x180],ymm24
  b7a9c4:	vmovapd YMMWORD PTR [rsp+0x120],ymm29
  b7a9cc:	vpermt2pd ymm24,ymm3,ymm29
  b7a9d2:	vmovapd ymm8,ymm17
  b7a9d8:	vmovapd YMMWORD PTR [rsp+0x1a0],ymm13
  b7a9e1:	vpermt2pd ymm8,ymm3,ymm13
  b7a9e7:	vmovapd ymm13,ymm15
  b7a9ec:	vmovapd YMMWORD PTR [rsp+0x1c0],ymm20
  b7a9f4:	vpermt2pd ymm15,ymm3,ymm20
  b7a9fa:	vmovapd YMMWORD PTR [rsp+0x1e0],ymm31
  b7aa02:	vmovapd ymm20,ymm31
  b7aa08:	vmovapd ymm31,ymm18
  b7aa0e:	vpermt2pd ymm20,ymm3,ymm18
  b7aa14:	vmovapd YMMWORD PTR [rsp+0x200],ymm26
  b7aa1c:	vmovapd ymm18,ymm26
  b7aa22:	vmovapd ymm26,YMMWORD PTR [rsp+0x220]
  b7aa2a:	vpermt2pd ymm18,ymm3,ymm26
  b7aa30:	vmovapd YMMWORD PTR [rsp+0x80],ymm9
  b7aa39:	vmovapd YMMWORD PTR [rsp+0x60],ymm22
  b7aa41:	vpermt2pd ymm9,ymm3,ymm22
  b7aa47:	vmovapd YMMWORD PTR [rsp+0xc0],ymm10
  b7aa50:	vmovapd YMMWORD PTR [rsp+0xa0],ymm11
  b7aa59:	vpermt2pd ymm10,ymm3,ymm11
  b7aa5f:	vmovapd YMMWORD PTR [rsp],ymm27
  b7aa66:	vmovapd ymm11,ymm27
  b7aa6c:	vmovapd ymm27,YMMWORD PTR [rsp+0x2a0]
  b7aa74:	vpermt2pd ymm11,ymm3,ymm27
  b7aa7a:	vmovapd YMMWORD PTR [rsp+0xe0],ymm14
  b7aa83:	vmovapd YMMWORD PTR [rsp+0x20],ymm12
  b7aa89:	vpermt2pd ymm14,ymm3,ymm12
  b7aa8f:	vmovapd YMMWORD PTR [rsp+0x40],ymm7
  b7aa95:	vpermt2pd ymm7,ymm3,ymm25
  b7aa9b:	cmp    r11,0xc
  b7aa9f:	jb     b79c50 <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0xf90>
  b7aaa5:	vmovupd YMMWORD PTR [rsi+r9*1],ymm23
  b7aaac:	vmovupd XMMWORD PTR [rsi+r9*1+0x20],xmm1
  b7aab3:	vmovupd YMMWORD PTR [rsi+r9*1+0xf0],ymm30
  b7aabe:	vextractf128 xmm1,ymm4,0x1
  b7aac4:	vextractf128 xmm0,ymm5,0x1
  b7aaca:	vunpcklpd xmm0,xmm0,xmm1
  b7aace:	vmovupd XMMWORD PTR [rsi+r9*1+0x110],xmm0
  b7aad8:	vmovupd YMMWORD PTR [rsi+r9*1+0x1e0],ymm28
  b7aae0:	vextractf128 xmm0,ymm6,0x1
  b7aae6:	vmovapd ymm1,YMMWORD PTR [rsp+0x260]
  b7aaef:	vextractf128 xmm1,ymm1,0x1
  b7aaf5:	vunpcklpd xmm0,xmm1,xmm0
  b7aaf9:	vmovupd XMMWORD PTR [rsi+r9*1+0x200],xmm0
  b7ab03:	vmovupd YMMWORD PTR [rsi+r9*1+0x2d0],ymm21
  b7ab0e:	vmovaps ymm0,YMMWORD PTR [rsp+0x100]
  b7ab17:	vextractf128 xmm0,ymm0,0x1
  b7ab1d:	vmovaps ymm1,YMMWORD PTR [rsp+0x160]
  b7ab26:	vextractf128 xmm1,ymm1,0x1
  b7ab2c:	vmovlhps xmm0,xmm1,xmm0
  b7ab30:	vmovups XMMWORD PTR [rsi+r9*1+0x2f0],xmm0
  b7ab3a:	vmovupd YMMWORD PTR [rsi+r9*1+0x3c0],ymm24
  b7ab42:	vmovaps ymm0,YMMWORD PTR [rsp+0x120]
  b7ab4b:	vextractf128 xmm0,ymm0,0x1
  b7ab51:	vmovaps ymm1,YMMWORD PTR [rsp+0x180]
  b7ab5a:	vextractf128 xmm1,ymm1,0x1
  b7ab60:	vmovlhps xmm0,xmm1,xmm0
  b7ab64:	vmovups XMMWORD PTR [rsi+r9*1+0x3e0],xmm0
  b7ab6e:	vmovupd YMMWORD PTR [rsi+r9*1+0x4b0],ymm8
  b7ab78:	vmovapd ymm0,YMMWORD PTR [rsp+0x1a0]
  b7ab81:	vextractf128 xmm0,ymm0,0x1
  b7ab87:	vextractf32x4 xmm1,ymm17,0x1
  b7ab8e:	vunpcklpd xmm0,xmm1,xmm0
  b7ab92:	vmovupd XMMWORD PTR [rsi+r9*1+0x4d0],xmm0
  b7ab9c:	vmovupd YMMWORD PTR [rsi+r9*1+0x5a0],ymm15
  b7aba6:	vmovapd ymm0,YMMWORD PTR [rsp+0x1c0]
  b7abaf:	vextractf128 xmm0,ymm0,0x1
  b7abb5:	vextractf128 xmm1,ymm13,0x1
  b7abbb:	vunpcklpd xmm0,xmm1,xmm0
  b7abbf:	vmovupd XMMWORD PTR [rsi+r9*1+0x5c0],xmm0
  b7abc9:	vmovupd YMMWORD PTR [rsi+r9*1+0x690],ymm20
  b7abd4:	vextractf32x4 xmm0,ymm31,0x1
  b7abdb:	vmovapd ymm1,YMMWORD PTR [rsp+0x1e0]
  b7abe4:	vextractf128 xmm1,ymm1,0x1
  b7abea:	vunpcklpd xmm0,xmm1,xmm0
  b7abee:	vmovupd XMMWORD PTR [rsi+r9*1+0x6b0],xmm0
  b7abf8:	vmovupd YMMWORD PTR [rsi+r9*1+0x780],ymm18
  b7ac00:	vextractf32x4 xmm0,ymm26,0x1
  b7ac07:	vmovapd ymm1,YMMWORD PTR [rsp+0x200]
  b7ac10:	vextractf128 xmm1,ymm1,0x1
  b7ac16:	vunpcklpd xmm0,xmm1,xmm0
  b7ac1a:	vmovupd XMMWORD PTR [rsi+r9*1+0x7a0],xmm0
  b7ac24:	vmovupd YMMWORD PTR [rsi+r9*1+0x870],ymm9
  b7ac2e:	vmovaps ymm0,YMMWORD PTR [rsp+0x60]
  b7ac34:	vextractf128 xmm0,ymm0,0x1
  b7ac3a:	vmovaps ymm1,YMMWORD PTR [rsp+0x80]
  b7ac43:	vextractf128 xmm1,ymm1,0x1
  b7ac49:	vmovlhps xmm0,xmm1,xmm0
  b7ac4d:	vmovups XMMWORD PTR [rsi+r9*1+0x890],xmm0
  b7ac57:	vmovupd YMMWORD PTR [rsi+r9*1+0x960],ymm10
  b7ac61:	vmovaps ymm0,YMMWORD PTR [rsp+0xa0]
  b7ac6a:	vextractf128 xmm0,ymm0,0x1
  b7ac70:	vmovaps ymm1,YMMWORD PTR [rsp+0xc0]
  b7ac79:	vextractf128 xmm1,ymm1,0x1
  b7ac7f:	vmovlhps xmm0,xmm1,xmm0
  b7ac83:	vmovups XMMWORD PTR [rsi+r9*1+0x980],xmm0
  b7ac8d:	vmovupd YMMWORD PTR [rsi+r9*1+0xa50],ymm11
  b7ac97:	vextractf32x4 xmm0,ymm27,0x1
  b7ac9e:	vmovapd ymm1,YMMWORD PTR [rsp]
  b7aca3:	vextractf128 xmm1,ymm1,0x1
  b7aca9:	vunpcklpd xmm0,xmm1,xmm0
  b7acad:	vmovupd XMMWORD PTR [rsi+r9*1+0xa70],xmm0
  b7acb7:	vmovupd YMMWORD PTR [rsi+r9*1+0xb40],ymm14
  b7acc1:	vmovaps ymm0,YMMWORD PTR [rsp+0x20]
  b7acc7:	vextractf128 xmm0,ymm0,0x1
  b7accd:	vmovaps ymm1,YMMWORD PTR [rsp+0xe0]
  b7acd6:	vextractf128 xmm1,ymm1,0x1
  b7acdc:	vmovlhps xmm0,xmm1,xmm0
  b7ace0:	vmovups XMMWORD PTR [rsi+r9*1+0xb60],xmm0
  b7acea:	vmovupd YMMWORD PTR [rsi+r9*1+0xc30],ymm7
  b7acf4:	vextractf32x4 xmm0,ymm25,0x1
  b7acfb:	vmovapd ymm1,YMMWORD PTR [rsp+0x40]
  b7ad01:	vextractf128 xmm1,ymm1,0x1
  b7ad07:	vunpcklpd xmm0,xmm1,xmm0
  b7ad0b:	vmovupd XMMWORD PTR [rsi+r9*1+0xc50],xmm0
  b7ad15:	jmp    b79e0f <<fastfft::isa::x86::F64x4v as fastfft::engine::small::SmallVector>::rectangle+0x114f>
  b7ad1a:	lea    rsp,[rbp-0x10]
  b7ad1e:	pop    rbx
  b7ad1f:	pop    r14
  b7ad21:	pop    rbp
  b7ad22:	vzeroupper
  b7ad25:	ret
