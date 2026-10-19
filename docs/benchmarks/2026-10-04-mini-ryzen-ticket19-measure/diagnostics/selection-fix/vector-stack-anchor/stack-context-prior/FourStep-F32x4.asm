
target/ticket19/selection-fix/fourstep-indexed-completion/fastfft-arena:     file format elf64-x86-64


Disassembly of section .text:

0000000000da2ec0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute>:
  da2ec0:	55                   	push   rbp
  da2ec1:	41 57                	push   r15
  da2ec3:	41 56                	push   r14
  da2ec5:	41 55                	push   r13
  da2ec7:	41 54                	push   r12
  da2ec9:	53                   	push   rbx
  da2eca:	48 81 ec 48 02 00 00 	sub    rsp,0x248
  da2ed1:	48 89 8c 24 88 00 00 	mov    QWORD PTR [rsp+0x88],rcx
  da2ed8:	00 
  da2ed9:	48 89 94 24 c0 00 00 	mov    QWORD PTR [rsp+0xc0],rdx
  da2ee0:	00 
  da2ee1:	48 89 b4 24 d0 00 00 	mov    QWORD PTR [rsp+0xd0],rsi
  da2ee8:	00 
  da2ee9:	45 85 c0             	test   r8d,r8d
  da2eec:	0f 84 de 00 00 00    	je     da2fd0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x110>
  da2ef2:	4c 8b 87 88 00 00 00 	mov    r8,QWORD PTR [rdi+0x88]
  da2ef9:	49 83 f8 01          	cmp    r8,0x1
  da2efd:	0f 86 ab 01 00 00    	jbe    da30ae <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1ee>
  da2f03:	48 8b 47 58          	mov    rax,QWORD PTR [rdi+0x58]
  da2f07:	48 8b 4f 10          	mov    rcx,QWORD PTR [rdi+0x10]
  da2f0b:	4c 8b 6f 20          	mov    r13,QWORD PTR [rdi+0x20]
  da2f0f:	48 8b 5f 60          	mov    rbx,QWORD PTR [rdi+0x60]
  da2f13:	4c 8b 77 28          	mov    r14,QWORD PTR [rdi+0x28]
  da2f17:	48 8b 57 30          	mov    rdx,QWORD PTR [rdi+0x30]
  da2f1b:	48 01 ca             	add    rdx,rcx
  da2f1e:	48 89 94 24 a0 01 00 	mov    QWORD PTR [rsp+0x1a0],rdx
  da2f25:	00 
  da2f26:	48 8b 57 40          	mov    rdx,QWORD PTR [rdi+0x40]
  da2f2a:	48 89 4c 24 30       	mov    QWORD PTR [rsp+0x30],rcx
  da2f2f:	48 01 ca             	add    rdx,rcx
  da2f32:	48 89 94 24 a8 00 00 	mov    QWORD PTR [rsp+0xa8],rdx
  da2f39:	00 
  da2f3a:	48 8b 57 78          	mov    rdx,QWORD PTR [rdi+0x78]
  da2f3e:	48 8b 8f 80 00 00 00 	mov    rcx,QWORD PTR [rdi+0x80]
  da2f45:	f2 0f 10 05 83 19 2d 	movsd  xmm0,QWORD PTR [rip+0xffffffffff2d1983]        # 748d0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d80>
  da2f4c:	ff 
  da2f4d:	4e 8d 3c 85 00 00 00 	lea    r15,[r8*4+0x0]
  da2f54:	00 
  da2f55:	f6 84 24 c0 00 00 00 	test   BYTE PTR [rsp+0xc0],0x3f
  da2f5c:	3f 
  da2f5d:	0f 94 84 24 e0 00 00 	sete   BYTE PTR [rsp+0xe0]
  da2f64:	00 
  da2f65:	4d 85 ff             	test   r15,r15
  da2f68:	0f 84 c6 60 00 00    	je     da9034 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6174>
  da2f6e:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
  da2f73:	48 8b 84 24 88 00 00 	mov    rax,QWORD PTR [rsp+0x88]
  da2f7a:	00 
  da2f7b:	48 89 94 24 88 01 00 	mov    QWORD PTR [rsp+0x188],rdx
  da2f82:	00 
  da2f83:	48 8d 04 d0          	lea    rax,[rax+rdx*8]
  da2f87:	48 89 84 24 10 02 00 	mov    QWORD PTR [rsp+0x210],rax
  da2f8e:	00 
  da2f8f:	48 89 8c 24 d8 00 00 	mov    QWORD PTR [rsp+0xd8],rcx
  da2f96:	00 
  da2f97:	48 8d 0c c8          	lea    rcx,[rax+rcx*8]
  da2f9b:	f2 0f 5a c0          	cvtsd2ss xmm0,xmm0
  da2f9f:	0f 29 44 24 60       	movaps XMMWORD PTR [rsp+0x60],xmm0
  da2fa4:	48 89 bc 24 90 01 00 	mov    QWORD PTR [rsp+0x190],rdi
  da2fab:	00 
  da2fac:	0f b6 af 99 00 00 00 	movzx  ebp,BYTE PTR [rdi+0x99]
  da2fb3:	48 89 d8             	mov    rax,rbx
  da2fb6:	4c 09 f8             	or     rax,r15
  da2fb9:	48 c1 e8 20          	shr    rax,0x20
  da2fbd:	0f 84 a6 44 00 00    	je     da7469 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x45a9>
  da2fc3:	48 89 d8             	mov    rax,rbx
  da2fc6:	31 d2                	xor    edx,edx
  da2fc8:	49 f7 f7             	div    r15
  da2fcb:	e9 a0 44 00 00       	jmp    da7470 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x45b0>
  da2fd0:	4c 8b 87 88 00 00 00 	mov    r8,QWORD PTR [rdi+0x88]
  da2fd7:	49 83 f8 01          	cmp    r8,0x1
  da2fdb:	0f 86 68 13 00 00    	jbe    da4349 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1489>
  da2fe1:	48 8b 47 58          	mov    rax,QWORD PTR [rdi+0x58]
  da2fe5:	48 8b 4f 10          	mov    rcx,QWORD PTR [rdi+0x10]
  da2fe9:	4c 8b 6f 20          	mov    r13,QWORD PTR [rdi+0x20]
  da2fed:	48 8b 5f 60          	mov    rbx,QWORD PTR [rdi+0x60]
  da2ff1:	4c 8b 77 28          	mov    r14,QWORD PTR [rdi+0x28]
  da2ff5:	48 8b 57 30          	mov    rdx,QWORD PTR [rdi+0x30]
  da2ff9:	48 01 ca             	add    rdx,rcx
  da2ffc:	48 89 94 24 a0 01 00 	mov    QWORD PTR [rsp+0x1a0],rdx
  da3003:	00 
  da3004:	48 8b 57 40          	mov    rdx,QWORD PTR [rdi+0x40]
  da3008:	48 89 4c 24 30       	mov    QWORD PTR [rsp+0x30],rcx
  da300d:	48 01 ca             	add    rdx,rcx
  da3010:	48 89 94 24 a8 00 00 	mov    QWORD PTR [rsp+0xa8],rdx
  da3017:	00 
  da3018:	48 8b 57 78          	mov    rdx,QWORD PTR [rdi+0x78]
  da301c:	48 8b 8f 80 00 00 00 	mov    rcx,QWORD PTR [rdi+0x80]
  da3023:	f2 0f 10 05 a5 18 2d 	movsd  xmm0,QWORD PTR [rip+0xffffffffff2d18a5]        # 748d0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d80>
  da302a:	ff 
  da302b:	4e 8d 3c 85 00 00 00 	lea    r15,[r8*4+0x0]
  da3032:	00 
  da3033:	f6 84 24 c0 00 00 00 	test   BYTE PTR [rsp+0xc0],0x3f
  da303a:	3f 
  da303b:	0f 94 84 24 e0 00 00 	sete   BYTE PTR [rsp+0xe0]
  da3042:	00 
  da3043:	4d 85 ff             	test   r15,r15
  da3046:	0f 84 e8 5f 00 00    	je     da9034 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6174>
  da304c:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
  da3051:	48 8b 84 24 88 00 00 	mov    rax,QWORD PTR [rsp+0x88]
  da3058:	00 
  da3059:	48 89 94 24 88 01 00 	mov    QWORD PTR [rsp+0x188],rdx
  da3060:	00 
  da3061:	48 8d 04 d0          	lea    rax,[rax+rdx*8]
  da3065:	48 89 84 24 10 02 00 	mov    QWORD PTR [rsp+0x210],rax
  da306c:	00 
  da306d:	48 89 8c 24 d8 00 00 	mov    QWORD PTR [rsp+0xd8],rcx
  da3074:	00 
  da3075:	48 8d 0c c8          	lea    rcx,[rax+rcx*8]
  da3079:	f2 0f 5a c0          	cvtsd2ss xmm0,xmm0
  da307d:	0f 29 44 24 60       	movaps XMMWORD PTR [rsp+0x60],xmm0
  da3082:	48 89 bc 24 90 01 00 	mov    QWORD PTR [rsp+0x190],rdi
  da3089:	00 
  da308a:	0f b6 af 99 00 00 00 	movzx  ebp,BYTE PTR [rdi+0x99]
  da3091:	48 89 d8             	mov    rax,rbx
  da3094:	4c 09 f8             	or     rax,r15
  da3097:	48 c1 e8 20          	shr    rax,0x20
  da309b:	0f 84 4c 4b 00 00    	je     da7bed <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4d2d>
  da30a1:	48 89 d8             	mov    rax,rbx
  da30a4:	31 d2                	xor    edx,edx
  da30a6:	49 f7 f7             	div    r15
  da30a9:	e9 46 4b 00 00       	jmp    da7bf4 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4d34>
  da30ae:	4c 8b 67 58          	mov    r12,QWORD PTR [rdi+0x58]
  da30b2:	48 8b 4f 10          	mov    rcx,QWORD PTR [rdi+0x10]
  da30b6:	48 8b 5f 20          	mov    rbx,QWORD PTR [rdi+0x20]
  da30ba:	48 8b 77 60          	mov    rsi,QWORD PTR [rdi+0x60]
  da30be:	48 8b 47 28          	mov    rax,QWORD PTR [rdi+0x28]
  da30c2:	48 89 44 24 50       	mov    QWORD PTR [rsp+0x50],rax
  da30c7:	48 8b 47 30          	mov    rax,QWORD PTR [rdi+0x30]
  da30cb:	48 8b 57 40          	mov    rdx,QWORD PTR [rdi+0x40]
  da30cf:	48 89 4c 24 30       	mov    QWORD PTR [rsp+0x30],rcx
  da30d4:	48 01 ca             	add    rdx,rcx
  da30d7:	48 89 94 24 38 02 00 	mov    QWORD PTR [rsp+0x238],rdx
  da30de:	00 
  da30df:	48 8b 4f 78          	mov    rcx,QWORD PTR [rdi+0x78]
  da30e3:	48 8b 94 24 88 00 00 	mov    rdx,QWORD PTR [rsp+0x88]
  da30ea:	00 
  da30eb:	48 8d 2c ca          	lea    rbp,[rdx+rcx*8]
  da30ef:	48 8b 8f 80 00 00 00 	mov    rcx,QWORD PTR [rdi+0x80]
  da30f6:	48 8d 4c cd 00       	lea    rcx,[rbp+rcx*8+0x0]
  da30fb:	48 89 8c 24 a0 00 00 	mov    QWORD PTR [rsp+0xa0],rcx
  da3102:	00 
  da3103:	f2 0f 10 05 c5 17 2d 	movsd  xmm0,QWORD PTR [rip+0xffffffffff2d17c5]        # 748d0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d80>
  da310a:	ff 
  da310b:	f2 0f 5a c0          	cvtsd2ss xmm0,xmm0
  da310f:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  da3113:	0f 29 44 24 10       	movaps XMMWORD PTR [rsp+0x10],xmm0
  da3118:	0f b6 8f 98 00 00 00 	movzx  ecx,BYTE PTR [rdi+0x98]
  da311f:	0f b6 97 99 00 00 00 	movzx  edx,BYTE PTR [rdi+0x99]
  da3126:	88 8c 24 80 00 00 00 	mov    BYTE PTR [rsp+0x80],cl
  da312d:	20 ca                	and    dl,cl
  da312f:	88 54 24 20          	mov    BYTE PTR [rsp+0x20],dl
  da3133:	48 89 34 24          	mov    QWORD PTR [rsp],rsi
  da3137:	48 85 f6             	test   rsi,rsi
  da313a:	4c 89 64 24 08       	mov    QWORD PTR [rsp+0x8],r12
  da313f:	48 89 6c 24 78       	mov    QWORD PTR [rsp+0x78],rbp
  da3144:	0f 84 c2 24 00 00    	je     da560c <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x274c>
  da314a:	48 8b 34 24          	mov    rsi,QWORD PTR [rsp]
  da314e:	49 89 f1             	mov    r9,rsi
  da3151:	49 c1 e9 02          	shr    r9,0x2
  da3155:	89 f1                	mov    ecx,esi
  da3157:	83 e1 03             	and    ecx,0x3
  da315a:	48 83 f9 01          	cmp    rcx,0x1
  da315e:	49 83 d9 ff          	sbb    r9,0xffffffffffffffff
  da3162:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  da3167:	48 8d 0c 02          	lea    rcx,[rdx+rax*1]
  da316b:	48 89 8c 24 30 02 00 	mov    QWORD PTR [rsp+0x230],rcx
  da3172:	00 
  da3173:	4d 89 e0             	mov    r8,r12
  da3176:	49 c1 e8 02          	shr    r8,0x2
  da317a:	44 89 e1             	mov    ecx,r12d
  da317d:	83 e1 03             	and    ecx,0x3
  da3180:	48 83 f9 01          	cmp    rcx,0x1
  da3184:	49 83 d8 ff          	sbb    r8,0xffffffffffffffff
  da3188:	4c 89 84 24 88 01 00 	mov    QWORD PTR [rsp+0x188],r8
  da318f:	00 
  da3190:	48 8b 4f 70          	mov    rcx,QWORD PTR [rdi+0x70]
  da3194:	f3 48 0f bc f9       	tzcnt  rdi,rcx
  da3199:	48 89 7c 24 28       	mov    QWORD PTR [rsp+0x28],rdi
  da319e:	48 bf ff ff ff ff ff 	movabs rdi,0x7ffffffffffffff
  da31a5:	ff ff 07 
  da31a8:	48 89 8c 24 d8 00 00 	mov    QWORD PTR [rsp+0xd8],rcx
  da31af:	00 
  da31b0:	48 01 cf             	add    rdi,rcx
  da31b3:	48 89 7c 24 60       	mov    QWORD PTR [rsp+0x60],rdi
  da31b8:	4c 89 e7             	mov    rdi,r12
  da31bb:	48 c1 e7 04          	shl    rdi,0x4
  da31bf:	4f 8d 04 64          	lea    r8,[r12+r12*2]
  da31c3:	48 8d 4a 20          	lea    rcx,[rdx+0x20]
  da31c7:	48 89 8c 24 08 02 00 	mov    QWORD PTR [rsp+0x208],rcx
  da31ce:	00 
  da31cf:	48 8d 4b ff          	lea    rcx,[rbx-0x1]
  da31d3:	48 89 8c 24 00 02 00 	mov    QWORD PTR [rsp+0x200],rcx
  da31da:	00 
  da31db:	4c 89 e1             	mov    rcx,r12
  da31de:	48 f7 d9             	neg    rcx
  da31e1:	48 89 8c 24 b8 00 00 	mov    QWORD PTR [rsp+0xb8],rcx
  da31e8:	00 
  da31e9:	4c 89 e1             	mov    rcx,r12
  da31ec:	48 c1 e1 05          	shl    rcx,0x5
  da31f0:	48 89 8c 24 90 01 00 	mov    QWORD PTR [rsp+0x190],rcx
  da31f7:	00 
  da31f8:	48 8b 8c 24 88 00 00 	mov    rcx,QWORD PTR [rsp+0x88]
  da31ff:	00 
  da3200:	48 01 cf             	add    rdi,rcx
  da3203:	48 89 bc 24 90 00 00 	mov    QWORD PTR [rsp+0x90],rdi
  da320a:	00 
  da320b:	48 01 c2             	add    rdx,rax
  da320e:	48 83 c2 70          	add    rdx,0x70
  da3212:	48 89 f0             	mov    rax,rsi
  da3215:	48 c1 e0 05          	shl    rax,0x5
  da3219:	48 89 84 24 98 00 00 	mov    QWORD PTR [rsp+0x98],rax
  da3220:	00 
  da3221:	4c 89 84 24 28 02 00 	mov    QWORD PTR [rsp+0x228],r8
  da3228:	00 
  da3229:	4a 8d 04 c1          	lea    rax,[rcx+r8*8]
  da322d:	48 89 84 24 e8 00 00 	mov    QWORD PTR [rsp+0xe8],rax
  da3234:	00 
  da3235:	4a 8d 04 e1          	lea    rax,[rcx+r12*8]
  da3239:	48 89 84 24 a8 00 00 	mov    QWORD PTR [rsp+0xa8],rax
  da3240:	00 
  da3241:	45 31 d2             	xor    r10d,r10d
  da3244:	48 89 8c 24 c8 00 00 	mov    QWORD PTR [rsp+0xc8],rcx
  da324b:	00 
  da324c:	48 89 4c 24 58       	mov    QWORD PTR [rsp+0x58],rcx
  da3251:	48 89 74 24 38       	mov    QWORD PTR [rsp+0x38],rsi
  da3256:	48 89 9c 24 e0 00 00 	mov    QWORD PTR [rsp+0xe0],rbx
  da325d:	00 
  da325e:	eb 6e                	jmp    da32ce <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x40e>
  da3260:	4c 8b 54 24 40       	mov    r10,QWORD PTR [rsp+0x40]
  da3265:	49 83 c2 04          	add    r10,0x4
  da3269:	4c 8b 8c 24 98 01 00 	mov    r9,QWORD PTR [rsp+0x198]
  da3270:	00 
  da3271:	49 ff c9             	dec    r9
  da3274:	48 83 44 24 38 fc    	add    QWORD PTR [rsp+0x38],0xfffffffffffffffc
  da327a:	48 8b 84 24 90 01 00 	mov    rax,QWORD PTR [rsp+0x190]
  da3281:	00 
  da3282:	48 01 84 24 e8 00 00 	add    QWORD PTR [rsp+0xe8],rax
  da3289:	00 
  da328a:	48 01 84 24 90 00 00 	add    QWORD PTR [rsp+0x90],rax
  da3291:	00 
  da3292:	48 01 84 24 a8 00 00 	add    QWORD PTR [rsp+0xa8],rax
  da3299:	00 
  da329a:	48 8b 94 24 b0 00 00 	mov    rdx,QWORD PTR [rsp+0xb0]
  da32a1:	00 
  da32a2:	48 01 c2             	add    rdx,rax
  da32a5:	48 01 44 24 58       	add    QWORD PTR [rsp+0x58],rax
  da32aa:	48 83 ac 24 c8 00 00 	sub    QWORD PTR [rsp+0xc8],0xffffffffffffff80
  da32b1:	00 80 
  da32b3:	4d 85 c9             	test   r9,r9
  da32b6:	4c 8b 64 24 08       	mov    r12,QWORD PTR [rsp+0x8]
  da32bb:	48 8b 6c 24 78       	mov    rbp,QWORD PTR [rsp+0x78]
  da32c0:	48 8b 9c 24 e0 00 00 	mov    rbx,QWORD PTR [rsp+0xe0]
  da32c7:	00 
  da32c8:	0f 84 3e 23 00 00    	je     da560c <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x274c>
  da32ce:	4c 8b 04 24          	mov    r8,QWORD PTR [rsp]
  da32d2:	4d 29 d0             	sub    r8,r10
  da32d5:	48 8b 84 24 d0 00 00 	mov    rax,QWORD PTR [rsp+0xd0]
  da32dc:	00 
  da32dd:	4a 8d 3c d0          	lea    rdi,[rax+r10*8]
  da32e1:	49 83 f8 04          	cmp    r8,0x4
  da32e5:	b8 04 00 00 00       	mov    eax,0x4
  da32ea:	4c 0f 43 c0          	cmovae r8,rax
  da32ee:	4c 89 8c 24 98 01 00 	mov    QWORD PTR [rsp+0x198],r9
  da32f5:	00 
  da32f6:	48 89 94 24 b0 00 00 	mov    QWORD PTR [rsp+0xb0],rdx
  da32fd:	00 
  da32fe:	4c 89 54 24 40       	mov    QWORD PTR [rsp+0x40],r10
  da3303:	72 5b                	jb     da3360 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4a0>
  da3305:	48 85 db             	test   rbx,rbx
  da3308:	0f 84 4a 5d 00 00    	je     da9058 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6198>
  da330e:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
  da3313:	48 8b 00             	mov    rax,QWORD PTR [rax]
  da3316:	48 83 c0 fe          	add    rax,0xfffffffffffffffe
  da331a:	48 83 f8 0d          	cmp    rax,0xd
  da331e:	0f 87 f8 5c 00 00    	ja     da901c <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x615c>
  da3324:	48 8d 0d 29 ff 2f ff 	lea    rcx,[rip+0xffffffffff2fff29]        # a3254 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x30704>
  da332b:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  da332f:	48 01 c8             	add    rax,rcx
  da3332:	ff e0                	jmp    rax
  da3334:	48 89 ee             	mov    rsi,rbp
  da3337:	4c 89 e2             	mov    rdx,r12
  da333a:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da333e:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da3343:	e8 b8 98 ff ff       	call   d9cc00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da3348:	48 83 fb 02          	cmp    rbx,0x2
  da334c:	0f 83 9e 03 00 00    	jae    da36f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x830>
  da3352:	e9 d9 07 00 00       	jmp    da3b30 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xc70>
  da3357:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  da335e:	00 00 
  da3360:	48 85 db             	test   rbx,rbx
  da3363:	0f 84 ef 5c 00 00    	je     da9058 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6198>
  da3369:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
  da336e:	48 8b 00             	mov    rax,QWORD PTR [rax]
  da3371:	48 83 c0 fe          	add    rax,0xfffffffffffffffe
  da3375:	48 83 f8 0d          	cmp    rax,0xd
  da3379:	0f 87 9d 5c 00 00    	ja     da901c <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x615c>
  da337f:	48 8d 0d 5a fe 2f ff 	lea    rcx,[rip+0xffffffffff2ffe5a]        # a31e0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x30690>
  da3386:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  da338a:	48 01 c8             	add    rax,rcx
  da338d:	ff e0                	jmp    rax
  da338f:	48 89 ee             	mov    rsi,rbp
  da3392:	4c 89 e2             	mov    rdx,r12
  da3395:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da3399:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da339e:	e8 9d cc fd ff       	call   d80040 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da33a3:	48 83 fb 02          	cmp    rbx,0x2
  da33a7:	0f 83 73 05 00 00    	jae    da3920 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xa60>
  da33ad:	e9 7e 07 00 00       	jmp    da3b30 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xc70>
  da33b2:	48 89 ee             	mov    rsi,rbp
  da33b5:	4c 89 e2             	mov    rdx,r12
  da33b8:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da33bc:	e8 bf 51 ff ff       	call   d98580 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da33c1:	48 83 fb 02          	cmp    rbx,0x2
  da33c5:	0f 83 25 03 00 00    	jae    da36f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x830>
  da33cb:	e9 60 07 00 00       	jmp    da3b30 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xc70>
  da33d0:	48 89 ee             	mov    rsi,rbp
  da33d3:	4c 89 e2             	mov    rdx,r12
  da33d6:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da33da:	e8 61 bc fe ff       	call   d8f040 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da33df:	48 83 fb 02          	cmp    rbx,0x2
  da33e3:	0f 83 37 05 00 00    	jae    da3920 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xa60>
  da33e9:	e9 42 07 00 00       	jmp    da3b30 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xc70>
  da33ee:	48 89 ee             	mov    rsi,rbp
  da33f1:	4c 89 e2             	mov    rdx,r12
  da33f4:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da33f8:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da33fd:	e8 3e ce ff ff       	call   da0240 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da3402:	48 83 fb 02          	cmp    rbx,0x2
  da3406:	0f 83 e4 02 00 00    	jae    da36f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x830>
  da340c:	e9 1f 07 00 00       	jmp    da3b30 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xc70>
  da3411:	48 89 ee             	mov    rsi,rbp
  da3414:	4c 89 e2             	mov    rdx,r12
  da3417:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da341b:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da3420:	e8 5b 92 ff ff       	call   d9c680 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da3425:	48 83 fb 02          	cmp    rbx,0x2
  da3429:	0f 83 f1 04 00 00    	jae    da3920 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xa60>
  da342f:	e9 fc 06 00 00       	jmp    da3b30 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xc70>
  da3434:	48 89 ee             	mov    rsi,rbp
  da3437:	4c 89 e2             	mov    rdx,r12
  da343a:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da343e:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da3443:	e8 b8 f9 fe ff       	call   d92e00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da3448:	48 83 fb 02          	cmp    rbx,0x2
  da344c:	0f 83 9e 02 00 00    	jae    da36f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x830>
  da3452:	e9 d9 06 00 00       	jmp    da3b30 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xc70>
  da3457:	48 89 ee             	mov    rsi,rbp
  da345a:	4c 89 e2             	mov    rdx,r12
  da345d:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da3461:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da3466:	e8 55 f7 fd ff       	call   d82bc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da346b:	48 83 fb 02          	cmp    rbx,0x2
  da346f:	0f 83 ab 04 00 00    	jae    da3920 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xa60>
  da3475:	e9 b6 06 00 00       	jmp    da3b30 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xc70>
  da347a:	48 89 ee             	mov    rsi,rbp
  da347d:	4c 89 e2             	mov    rdx,r12
  da3480:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da3484:	e8 b7 1f ff ff       	call   d95440 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da3489:	48 83 fb 02          	cmp    rbx,0x2
  da348d:	0f 83 5d 02 00 00    	jae    da36f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x830>
  da3493:	e9 98 06 00 00       	jmp    da3b30 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xc70>
  da3498:	48 89 ee             	mov    rsi,rbp
  da349b:	4c 89 e2             	mov    rdx,r12
  da349e:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da34a2:	e8 d9 80 ff ff       	call   d9b580 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da34a7:	48 83 fb 02          	cmp    rbx,0x2
  da34ab:	0f 83 6f 04 00 00    	jae    da3920 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xa60>
  da34b1:	e9 7a 06 00 00       	jmp    da3b30 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xc70>
  da34b6:	48 89 ee             	mov    rsi,rbp
  da34b9:	4c 89 e2             	mov    rdx,r12
  da34bc:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da34c0:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da34c5:	e8 36 1f fe ff       	call   d85400 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da34ca:	48 83 fb 02          	cmp    rbx,0x2
  da34ce:	0f 83 1c 02 00 00    	jae    da36f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x830>
  da34d4:	e9 57 06 00 00       	jmp    da3b30 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xc70>
  da34d9:	48 89 ee             	mov    rsi,rbp
  da34dc:	4c 89 e2             	mov    rdx,r12
  da34df:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da34e3:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da34e8:	e8 d3 b7 fe ff       	call   d8ecc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da34ed:	48 83 fb 02          	cmp    rbx,0x2
  da34f1:	0f 83 29 04 00 00    	jae    da3920 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xa60>
  da34f7:	e9 34 06 00 00       	jmp    da3b30 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xc70>
  da34fc:	48 89 ee             	mov    rsi,rbp
  da34ff:	4c 89 e2             	mov    rdx,r12
  da3502:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da3506:	e8 f5 7d ff ff       	call   d9b300 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da350b:	48 83 fb 02          	cmp    rbx,0x2
  da350f:	0f 83 db 01 00 00    	jae    da36f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x830>
  da3515:	e9 16 06 00 00       	jmp    da3b30 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xc70>
  da351a:	48 89 ee             	mov    rsi,rbp
  da351d:	4c 89 e2             	mov    rdx,r12
  da3520:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da3524:	e8 d7 b1 ff ff       	call   d9e700 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da3529:	48 83 fb 02          	cmp    rbx,0x2
  da352d:	0f 83 ed 03 00 00    	jae    da3920 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xa60>
  da3533:	e9 f8 05 00 00       	jmp    da3b30 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xc70>
  da3538:	48 89 ee             	mov    rsi,rbp
  da353b:	4c 89 e2             	mov    rdx,r12
  da353e:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da3542:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da3547:	e8 34 d3 fd ff       	call   d80880 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da354c:	48 83 fb 02          	cmp    rbx,0x2
  da3550:	0f 83 9a 01 00 00    	jae    da36f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x830>
  da3556:	e9 d5 05 00 00       	jmp    da3b30 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xc70>
  da355b:	48 89 ee             	mov    rsi,rbp
  da355e:	4c 89 e2             	mov    rdx,r12
  da3561:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da3565:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da356a:	e8 51 c0 fd ff       	call   d7f5c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da356f:	48 83 fb 02          	cmp    rbx,0x2
  da3573:	0f 83 a7 03 00 00    	jae    da3920 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xa60>
  da3579:	e9 b2 05 00 00       	jmp    da3b30 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xc70>
  da357e:	48 89 ee             	mov    rsi,rbp
  da3581:	4c 89 e2             	mov    rdx,r12
  da3584:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da3588:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da358d:	e8 6e 1d ff ff       	call   d95300 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da3592:	48 83 fb 02          	cmp    rbx,0x2
  da3596:	0f 83 54 01 00 00    	jae    da36f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x830>
  da359c:	e9 8f 05 00 00       	jmp    da3b30 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xc70>
  da35a1:	48 89 ee             	mov    rsi,rbp
  da35a4:	4c 89 e2             	mov    rdx,r12
  da35a7:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da35ab:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da35b0:	e8 0b 1a fe ff       	call   d84fc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da35b5:	48 83 fb 02          	cmp    rbx,0x2
  da35b9:	0f 83 61 03 00 00    	jae    da3920 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xa60>
  da35bf:	e9 6c 05 00 00       	jmp    da3b30 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xc70>
  da35c4:	48 89 ee             	mov    rsi,rbp
  da35c7:	4c 89 e2             	mov    rdx,r12
  da35ca:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da35ce:	e8 2d cf ff ff       	call   da0500 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da35d3:	48 83 fb 02          	cmp    rbx,0x2
  da35d7:	0f 83 13 01 00 00    	jae    da36f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x830>
  da35dd:	e9 4e 05 00 00       	jmp    da3b30 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xc70>
  da35e2:	48 89 ee             	mov    rsi,rbp
  da35e5:	4c 89 e2             	mov    rdx,r12
  da35e8:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da35ec:	e8 cf a0 ff ff       	call   d9d6c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da35f1:	48 83 fb 02          	cmp    rbx,0x2
  da35f5:	0f 83 25 03 00 00    	jae    da3920 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xa60>
  da35fb:	e9 30 05 00 00       	jmp    da3b30 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xc70>
  da3600:	48 89 ee             	mov    rsi,rbp
  da3603:	4c 89 e2             	mov    rdx,r12
  da3606:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da360a:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da360f:	e8 2c 89 fe ff       	call   d8bf40 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da3614:	48 83 fb 02          	cmp    rbx,0x2
  da3618:	0f 83 d2 00 00 00    	jae    da36f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x830>
  da361e:	e9 0d 05 00 00       	jmp    da3b30 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xc70>
  da3623:	48 89 ee             	mov    rsi,rbp
  da3626:	4c 89 e2             	mov    rdx,r12
  da3629:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da362d:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da3632:	e8 c9 4a fe ff       	call   d88100 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da3637:	48 83 fb 02          	cmp    rbx,0x2
  da363b:	0f 83 df 02 00 00    	jae    da3920 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xa60>
  da3641:	e9 ea 04 00 00       	jmp    da3b30 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xc70>
  da3646:	48 89 ee             	mov    rsi,rbp
  da3649:	4c 89 e2             	mov    rdx,r12
  da364c:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da3650:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da3655:	e8 66 08 fe ff       	call   d83ec0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da365a:	48 83 fb 02          	cmp    rbx,0x2
  da365e:	0f 83 8c 00 00 00    	jae    da36f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x830>
  da3664:	e9 c7 04 00 00       	jmp    da3b30 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xc70>
  da3669:	48 89 ee             	mov    rsi,rbp
  da366c:	4c 89 e2             	mov    rdx,r12
  da366f:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da3673:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da3678:	e8 43 04 ff ff       	call   d93ac0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da367d:	48 83 fb 02          	cmp    rbx,0x2
  da3681:	0f 83 99 02 00 00    	jae    da3920 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xa60>
  da3687:	e9 a4 04 00 00       	jmp    da3b30 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xc70>
  da368c:	48 89 ee             	mov    rsi,rbp
  da368f:	4c 89 e2             	mov    rdx,r12
  da3692:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da3696:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da369b:	e8 a0 80 fe ff       	call   d8b740 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da36a0:	48 83 fb 02          	cmp    rbx,0x2
  da36a4:	73 4a                	jae    da36f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x830>
  da36a6:	e9 85 04 00 00       	jmp    da3b30 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xc70>
  da36ab:	48 89 ee             	mov    rsi,rbp
  da36ae:	4c 89 e2             	mov    rdx,r12
  da36b1:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da36b5:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da36ba:	e8 01 0c fe ff       	call   d842c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da36bf:	48 83 fb 02          	cmp    rbx,0x2
  da36c3:	0f 83 57 02 00 00    	jae    da3920 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xa60>
  da36c9:	e9 62 04 00 00       	jmp    da3b30 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xc70>
  da36ce:	48 89 ee             	mov    rsi,rbp
  da36d1:	4c 89 e2             	mov    rdx,r12
  da36d4:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da36d8:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da36dd:	e8 1e 15 ff ff       	call   d94c00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da36e2:	48 83 fb 02          	cmp    rbx,0x2
  da36e6:	0f 82 44 04 00 00    	jb     da3b30 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xc70>
  da36ec:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  da36f0:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
  da36f5:	48 8b 18             	mov    rbx,QWORD PTR [rax]
  da36f8:	4c 8b bc 24 00 02 00 	mov    r15,QWORD PTR [rsp+0x200]
  da36ff:	00 
  da3700:	4c 8b a4 24 08 02 00 	mov    r12,QWORD PTR [rsp+0x208]
  da3707:	00 
  da3708:	48 8b 44 24 78       	mov    rax,QWORD PTR [rsp+0x78]
  da370d:	4c 8b b4 24 a0 00 00 	mov    r14,QWORD PTR [rsp+0xa0]
  da3714:	00 
  da3715:	eb 3d                	jmp    da3754 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x894>
  da3717:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da371c:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da3723:	00 
  da3724:	4c 89 f7             	mov    rdi,r14
  da3727:	48 89 ee             	mov    rsi,rbp
  da372a:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da372f:	48 89 d9             	mov    rcx,rbx
  da3732:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da3739:	00 
  da373a:	e8 81 da f1 ff       	call   cc11c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da373f:	90                   	nop
  da3740:	49 0f af dd          	imul   rbx,r13
  da3744:	49 83 c4 18          	add    r12,0x18
  da3748:	48 89 e8             	mov    rax,rbp
  da374b:	49 ff cf             	dec    r15
  da374e:	0f 84 dc 03 00 00    	je     da3b30 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xc70>
  da3754:	4c 89 f5             	mov    rbp,r14
  da3757:	49 89 c6             	mov    r14,rax
  da375a:	4d 8b 6c 24 f8       	mov    r13,QWORD PTR [r12-0x8]
  da375f:	4d 8b 04 24          	mov    r8,QWORD PTR [r12]
  da3763:	4c 03 44 24 30       	add    r8,QWORD PTR [rsp+0x30]
  da3768:	4c 89 6c 24 48       	mov    QWORD PTR [rsp+0x48],r13
  da376d:	49 8d 45 fe          	lea    rax,[r13-0x2]
  da3771:	48 83 f8 0e          	cmp    rax,0xe
  da3775:	0f 87 3a 58 00 00    	ja     da8fb5 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x60f5>
  da377b:	48 8d 0d 0a fb 2f ff 	lea    rcx,[rip+0xffffffffff2ffb0a]        # a328c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x3073c>
  da3782:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  da3786:	48 01 c8             	add    rax,rcx
  da3789:	ff e0                	jmp    rax
  da378b:	4c 89 f7             	mov    rdi,r14
  da378e:	48 89 ee             	mov    rsi,rbp
  da3791:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da3796:	48 89 d9             	mov    rcx,rbx
  da3799:	e8 e2 55 f1 ff       	call   cb8d80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da379e:	eb a0                	jmp    da3740 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x880>
  da37a0:	4c 89 f7             	mov    rdi,r14
  da37a3:	48 89 ee             	mov    rsi,rbp
  da37a6:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da37ab:	48 89 d9             	mov    rcx,rbx
  da37ae:	e8 4d a0 f1 ff       	call   cbd800 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da37b3:	eb 8b                	jmp    da3740 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x880>
  da37b5:	4c 89 f7             	mov    rdi,r14
  da37b8:	48 89 ee             	mov    rsi,rbp
  da37bb:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da37c0:	48 89 d9             	mov    rcx,rbx
  da37c3:	e8 38 5f f1 ff       	call   cb9700 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da37c8:	e9 73 ff ff ff       	jmp    da3740 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x880>
  da37cd:	4c 89 f7             	mov    rdi,r14
  da37d0:	48 89 ee             	mov    rsi,rbp
  da37d3:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da37d8:	48 89 d9             	mov    rcx,rbx
  da37db:	e8 60 b5 f1 ff       	call   cbed40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da37e0:	e9 5b ff ff ff       	jmp    da3740 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x880>
  da37e5:	4c 89 f7             	mov    rdi,r14
  da37e8:	48 89 ee             	mov    rsi,rbp
  da37eb:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da37f0:	48 89 d9             	mov    rcx,rbx
  da37f3:	e8 88 83 f1 ff       	call   cbbb80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da37f8:	e9 43 ff ff ff       	jmp    da3740 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x880>
  da37fd:	4c 89 f7             	mov    rdi,r14
  da3800:	48 89 ee             	mov    rsi,rbp
  da3803:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da3808:	48 89 d9             	mov    rcx,rbx
  da380b:	e8 f0 58 f1 ff       	call   cb9100 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da3810:	e9 2b ff ff ff       	jmp    da3740 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x880>
  da3815:	4c 89 f7             	mov    rdi,r14
  da3818:	48 89 ee             	mov    rsi,rbp
  da381b:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da3820:	48 89 d9             	mov    rcx,rbx
  da3823:	e8 58 5b f1 ff       	call   cb9380 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da3828:	e9 13 ff ff ff       	jmp    da3740 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x880>
  da382d:	4c 89 f7             	mov    rdi,r14
  da3830:	48 89 ee             	mov    rsi,rbp
  da3833:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da3838:	48 89 d9             	mov    rcx,rbx
  da383b:	e8 c0 6f f1 ff       	call   cba800 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da3840:	e9 fb fe ff ff       	jmp    da3740 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x880>
  da3845:	4c 89 f7             	mov    rdi,r14
  da3848:	48 89 ee             	mov    rsi,rbp
  da384b:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da3850:	48 89 d9             	mov    rcx,rbx
  da3853:	e8 68 56 f1 ff       	call   cb8ec0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da3858:	e9 e3 fe ff ff       	jmp    da3740 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x880>
  da385d:	4c 89 f7             	mov    rdi,r14
  da3860:	48 89 ee             	mov    rsi,rbp
  da3863:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da3868:	48 89 d9             	mov    rcx,rbx
  da386b:	e8 d0 62 f1 ff       	call   cb9b40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da3870:	e9 cb fe ff ff       	jmp    da3740 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x880>
  da3875:	4c 89 f7             	mov    rdi,r14
  da3878:	48 89 ee             	mov    rsi,rbp
  da387b:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da3880:	48 89 d9             	mov    rcx,rbx
  da3883:	e8 b8 c6 f1 ff       	call   cbff40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da3888:	e9 b3 fe ff ff       	jmp    da3740 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x880>
  da388d:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da3892:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da3899:	00 
  da389a:	4c 89 f7             	mov    rdi,r14
  da389d:	48 89 ee             	mov    rsi,rbp
  da38a0:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da38a5:	48 89 d9             	mov    rcx,rbx
  da38a8:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da38af:	00 
  da38b0:	e8 4b 69 f1 ff       	call   cba200 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da38b5:	e9 86 fe ff ff       	jmp    da3740 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x880>
  da38ba:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da38bf:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da38c6:	00 
  da38c7:	4c 89 f7             	mov    rdi,r14
  da38ca:	48 89 ee             	mov    rsi,rbp
  da38cd:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da38d2:	48 89 d9             	mov    rcx,rbx
  da38d5:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da38dc:	00 
  da38dd:	e8 de 92 f1 ff       	call   cbcbc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da38e2:	e9 59 fe ff ff       	jmp    da3740 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x880>
  da38e7:	4c 89 f7             	mov    rdi,r14
  da38ea:	48 89 ee             	mov    rsi,rbp
  da38ed:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da38f2:	48 89 d9             	mov    rcx,rbx
  da38f5:	e8 46 78 f1 ff       	call   cbb140 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da38fa:	e9 41 fe ff ff       	jmp    da3740 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x880>
  da38ff:	48 89 ee             	mov    rsi,rbp
  da3902:	4c 89 e2             	mov    rdx,r12
  da3905:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da3909:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da390e:	e8 6d d9 fd ff       	call   d81280 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da3913:	48 83 fb 02          	cmp    rbx,0x2
  da3917:	0f 82 13 02 00 00    	jb     da3b30 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xc70>
  da391d:	0f 1f 00             	nop    DWORD PTR [rax]
  da3920:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
  da3925:	48 8b 18             	mov    rbx,QWORD PTR [rax]
  da3928:	4c 8b bc 24 00 02 00 	mov    r15,QWORD PTR [rsp+0x200]
  da392f:	00 
  da3930:	4c 8b a4 24 08 02 00 	mov    r12,QWORD PTR [rsp+0x208]
  da3937:	00 
  da3938:	48 8b 44 24 78       	mov    rax,QWORD PTR [rsp+0x78]
  da393d:	4c 8b b4 24 a0 00 00 	mov    r14,QWORD PTR [rsp+0xa0]
  da3944:	00 
  da3945:	eb 3d                	jmp    da3984 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xac4>
  da3947:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da394c:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da3953:	00 
  da3954:	4c 89 f7             	mov    rdi,r14
  da3957:	48 89 ee             	mov    rsi,rbp
  da395a:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da395f:	48 89 d9             	mov    rcx,rbx
  da3962:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da3969:	00 
  da396a:	e8 51 d8 f1 ff       	call   cc11c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da396f:	90                   	nop
  da3970:	49 0f af dd          	imul   rbx,r13
  da3974:	49 83 c4 18          	add    r12,0x18
  da3978:	48 89 e8             	mov    rax,rbp
  da397b:	49 ff cf             	dec    r15
  da397e:	0f 84 ac 01 00 00    	je     da3b30 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xc70>
  da3984:	4c 89 f5             	mov    rbp,r14
  da3987:	49 89 c6             	mov    r14,rax
  da398a:	4d 8b 6c 24 f8       	mov    r13,QWORD PTR [r12-0x8]
  da398f:	4d 8b 04 24          	mov    r8,QWORD PTR [r12]
  da3993:	4c 03 44 24 30       	add    r8,QWORD PTR [rsp+0x30]
  da3998:	4c 89 6c 24 48       	mov    QWORD PTR [rsp+0x48],r13
  da399d:	49 8d 45 fe          	lea    rax,[r13-0x2]
  da39a1:	48 83 f8 0e          	cmp    rax,0xe
  da39a5:	0f 87 0a 56 00 00    	ja     da8fb5 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x60f5>
  da39ab:	48 8d 0d 66 f8 2f ff 	lea    rcx,[rip+0xffffffffff2ff866]        # a3218 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x306c8>
  da39b2:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  da39b6:	48 01 c8             	add    rax,rcx
  da39b9:	ff e0                	jmp    rax
  da39bb:	4c 89 f7             	mov    rdi,r14
  da39be:	48 89 ee             	mov    rsi,rbp
  da39c1:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da39c6:	48 89 d9             	mov    rcx,rbx
  da39c9:	e8 b2 53 f1 ff       	call   cb8d80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da39ce:	eb a0                	jmp    da3970 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xab0>
  da39d0:	4c 89 f7             	mov    rdi,r14
  da39d3:	48 89 ee             	mov    rsi,rbp
  da39d6:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da39db:	48 89 d9             	mov    rcx,rbx
  da39de:	e8 1d 9e f1 ff       	call   cbd800 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da39e3:	eb 8b                	jmp    da3970 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xab0>
  da39e5:	4c 89 f7             	mov    rdi,r14
  da39e8:	48 89 ee             	mov    rsi,rbp
  da39eb:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da39f0:	48 89 d9             	mov    rcx,rbx
  da39f3:	e8 08 5d f1 ff       	call   cb9700 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da39f8:	e9 73 ff ff ff       	jmp    da3970 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xab0>
  da39fd:	4c 89 f7             	mov    rdi,r14
  da3a00:	48 89 ee             	mov    rsi,rbp
  da3a03:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da3a08:	48 89 d9             	mov    rcx,rbx
  da3a0b:	e8 30 b3 f1 ff       	call   cbed40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da3a10:	e9 5b ff ff ff       	jmp    da3970 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xab0>
  da3a15:	4c 89 f7             	mov    rdi,r14
  da3a18:	48 89 ee             	mov    rsi,rbp
  da3a1b:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da3a20:	48 89 d9             	mov    rcx,rbx
  da3a23:	e8 58 81 f1 ff       	call   cbbb80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da3a28:	e9 43 ff ff ff       	jmp    da3970 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xab0>
  da3a2d:	4c 89 f7             	mov    rdi,r14
  da3a30:	48 89 ee             	mov    rsi,rbp
  da3a33:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da3a38:	48 89 d9             	mov    rcx,rbx
  da3a3b:	e8 c0 56 f1 ff       	call   cb9100 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da3a40:	e9 2b ff ff ff       	jmp    da3970 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xab0>
  da3a45:	4c 89 f7             	mov    rdi,r14
  da3a48:	48 89 ee             	mov    rsi,rbp
  da3a4b:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da3a50:	48 89 d9             	mov    rcx,rbx
  da3a53:	e8 28 59 f1 ff       	call   cb9380 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da3a58:	e9 13 ff ff ff       	jmp    da3970 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xab0>
  da3a5d:	4c 89 f7             	mov    rdi,r14
  da3a60:	48 89 ee             	mov    rsi,rbp
  da3a63:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da3a68:	48 89 d9             	mov    rcx,rbx
  da3a6b:	e8 90 6d f1 ff       	call   cba800 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da3a70:	e9 fb fe ff ff       	jmp    da3970 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xab0>
  da3a75:	4c 89 f7             	mov    rdi,r14
  da3a78:	48 89 ee             	mov    rsi,rbp
  da3a7b:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da3a80:	48 89 d9             	mov    rcx,rbx
  da3a83:	e8 38 54 f1 ff       	call   cb8ec0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da3a88:	e9 e3 fe ff ff       	jmp    da3970 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xab0>
  da3a8d:	4c 89 f7             	mov    rdi,r14
  da3a90:	48 89 ee             	mov    rsi,rbp
  da3a93:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da3a98:	48 89 d9             	mov    rcx,rbx
  da3a9b:	e8 a0 60 f1 ff       	call   cb9b40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da3aa0:	e9 cb fe ff ff       	jmp    da3970 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xab0>
  da3aa5:	4c 89 f7             	mov    rdi,r14
  da3aa8:	48 89 ee             	mov    rsi,rbp
  da3aab:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da3ab0:	48 89 d9             	mov    rcx,rbx
  da3ab3:	e8 88 c4 f1 ff       	call   cbff40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da3ab8:	e9 b3 fe ff ff       	jmp    da3970 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xab0>
  da3abd:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da3ac2:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da3ac9:	00 
  da3aca:	4c 89 f7             	mov    rdi,r14
  da3acd:	48 89 ee             	mov    rsi,rbp
  da3ad0:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da3ad5:	48 89 d9             	mov    rcx,rbx
  da3ad8:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da3adf:	00 
  da3ae0:	e8 1b 67 f1 ff       	call   cba200 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da3ae5:	e9 86 fe ff ff       	jmp    da3970 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xab0>
  da3aea:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da3aef:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da3af6:	00 
  da3af7:	4c 89 f7             	mov    rdi,r14
  da3afa:	48 89 ee             	mov    rsi,rbp
  da3afd:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da3b02:	48 89 d9             	mov    rcx,rbx
  da3b05:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da3b0c:	00 
  da3b0d:	e8 ae 90 f1 ff       	call   cbcbc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da3b12:	e9 59 fe ff ff       	jmp    da3970 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xab0>
  da3b17:	4c 89 f7             	mov    rdi,r14
  da3b1a:	48 89 ee             	mov    rsi,rbp
  da3b1d:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da3b22:	48 89 d9             	mov    rcx,rbx
  da3b25:	e8 16 76 f1 ff       	call   cbb140 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da3b2a:	e9 41 fe ff ff       	jmp    da3970 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xab0>
  da3b2f:	90                   	nop
  da3b30:	80 bc 24 80 00 00 00 	cmp    BYTE PTR [rsp+0x80],0x0
  da3b37:	00 
  da3b38:	74 36                	je     da3b70 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xcb0>
  da3b3a:	48 8b b4 24 d8 00 00 	mov    rsi,QWORD PTR [rsp+0xd8]
  da3b41:	00 
  da3b42:	48 85 f6             	test   rsi,rsi
  da3b45:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
  da3b4a:	0f 84 18 55 00 00    	je     da9068 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x61a8>
  da3b50:	48 89 c8             	mov    rax,rcx
  da3b53:	48 09 f0             	or     rax,rsi
  da3b56:	48 c1 e8 20          	shr    rax,0x20
  da3b5a:	74 55                	je     da3bb1 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xcf1>
  da3b5c:	48 89 c8             	mov    rax,rcx
  da3b5f:	31 d2                	xor    edx,edx
  da3b61:	48 f7 f6             	div    rsi
  da3b64:	48 85 c9             	test   rcx,rcx
  da3b67:	75 57                	jne    da3bc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xd00>
  da3b69:	e9 f2 f6 ff ff       	jmp    da3260 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3a0>
  da3b6e:	66 90                	xchg   ax,ax
  da3b70:	48 83 7c 24 08 00    	cmp    QWORD PTR [rsp+0x8],0x0
  da3b76:	0f 84 e4 f6 ff ff    	je     da3260 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3a0>
  da3b7c:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
  da3b81:	4c 8b 64 24 08       	mov    r12,QWORD PTR [rsp+0x8]
  da3b86:	49 0f af c4          	imul   rax,r12
  da3b8a:	48 8b 8c 24 88 00 00 	mov    rcx,QWORD PTR [rsp+0x88]
  da3b91:	00 
  da3b92:	48 8d 04 c1          	lea    rax,[rcx+rax*8]
  da3b96:	48 89 84 24 40 02 00 	mov    QWORD PTR [rsp+0x240],rax
  da3b9d:	00 
  da3b9e:	45 31 f6             	xor    r14d,r14d
  da3ba1:	4c 8b ac 24 88 01 00 	mov    r13,QWORD PTR [rsp+0x188]
  da3ba8:	00 
  da3ba9:	45 31 ff             	xor    r15d,r15d
  da3bac:	e9 17 03 00 00       	jmp    da3ec8 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1008>
  da3bb1:	89 c8                	mov    eax,ecx
  da3bb3:	31 d2                	xor    edx,edx
  da3bb5:	f7 f6                	div    esi
  da3bb7:	48 85 c9             	test   rcx,rcx
  da3bba:	0f 84 a0 f6 ff ff    	je     da3260 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3a0>
  da3bc0:	48 8b 4c 24 40       	mov    rcx,QWORD PTR [rsp+0x40]
  da3bc5:	48 01 c9             	add    rcx,rcx
  da3bc8:	48 0f af c1          	imul   rax,rcx
  da3bcc:	48 0f af 8c 24 d8 00 	imul   rcx,QWORD PTR [rsp+0xd8]
  da3bd3:	00 00 
  da3bd5:	48 8b 94 24 30 02 00 	mov    rdx,QWORD PTR [rsp+0x230]
  da3bdc:	00 
  da3bdd:	48 8d 04 82          	lea    rax,[rdx+rax*4]
  da3be1:	48 8b 94 24 38 02 00 	mov    rdx,QWORD PTR [rsp+0x238]
  da3be8:	00 
  da3be9:	48 8d 14 8a          	lea    rdx,[rdx+rcx*4]
  da3bed:	48 83 c5 70          	add    rbp,0x70
  da3bf1:	48 8b b4 24 c8 00 00 	mov    rsi,QWORD PTR [rsp+0xc8]
  da3bf8:	00 
  da3bf9:	48 8b bc 24 88 01 00 	mov    rdi,QWORD PTR [rsp+0x188]
  da3c00:	00 
  da3c01:	45 31 c0             	xor    r8d,r8d
  da3c04:	eb 47                	jmp    da3c4d <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xd8d>
  da3c06:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  da3c0d:	00 00 00 
  da3c10:	44 0f 11 06          	movups XMMWORD PTR [rsi],xmm8
  da3c14:	44 0f 11 4e 10       	movups XMMWORD PTR [rsi+0x10],xmm9
  da3c19:	0f 11 76 20          	movups XMMWORD PTR [rsi+0x20],xmm6
  da3c1d:	0f 11 66 30          	movups XMMWORD PTR [rsi+0x30],xmm4
  da3c21:	0f 11 7e 40          	movups XMMWORD PTR [rsi+0x40],xmm7
  da3c25:	0f 11 46 50          	movups XMMWORD PTR [rsi+0x50],xmm0
  da3c29:	0f 11 6e 60          	movups XMMWORD PTR [rsi+0x60],xmm5
  da3c2d:	0f 11 5e 70          	movups XMMWORD PTR [rsi+0x70],xmm3
  da3c31:	48 ff cf             	dec    rdi
  da3c34:	48 03 b4 24 98 00 00 	add    rsi,QWORD PTR [rsp+0x98]
  da3c3b:	00 
  da3c3c:	48 83 ed 80          	sub    rbp,0xffffffffffffff80
  da3c40:	49 83 c0 04          	add    r8,0x4
  da3c44:	48 85 ff             	test   rdi,rdi
  da3c47:	0f 84 13 f6 ff ff    	je     da3260 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3a0>
  da3c4d:	4d 89 c1             	mov    r9,r8
  da3c50:	48 8b 4c 24 28       	mov    rcx,QWORD PTR [rsp+0x28]
  da3c55:	49 d3 e9             	shr    r9,cl
  da3c58:	49 c1 e1 05          	shl    r9,0x5
  da3c5c:	42 0f 10 04 08       	movups xmm0,XMMWORD PTR [rax+r9*1]
  da3c61:	42 0f 10 74 08 10    	movups xmm6,XMMWORD PTR [rax+r9*1+0x10]
  da3c67:	4c 89 c1             	mov    rcx,r8
  da3c6a:	48 23 4c 24 60       	and    rcx,QWORD PTR [rsp+0x60]
  da3c6f:	48 c1 e1 05          	shl    rcx,0x5
  da3c73:	0f 10 24 0a          	movups xmm4,XMMWORD PTR [rdx+rcx*1]
  da3c77:	0f 10 4c 0a 10       	movups xmm1,XMMWORD PTR [rdx+rcx*1+0x10]
  da3c7c:	0f 10 5c 0a 20       	movups xmm3,XMMWORD PTR [rdx+rcx*1+0x20]
  da3c81:	0f 10 54 0a 30       	movups xmm2,XMMWORD PTR [rdx+rcx*1+0x30]
  da3c86:	0f 28 ee             	movaps xmm5,xmm6
  da3c89:	0f 59 e9             	mulps  xmm5,xmm1
  da3c8c:	0f 28 f8             	movaps xmm7,xmm0
  da3c8f:	0f 59 fc             	mulps  xmm7,xmm4
  da3c92:	0f 5c fd             	subps  xmm7,xmm5
  da3c95:	0f 59 e6             	mulps  xmm4,xmm6
  da3c98:	0f 59 c8             	mulps  xmm1,xmm0
  da3c9b:	0f 58 cc             	addps  xmm1,xmm4
  da3c9e:	44 0f 10 4d 90       	movups xmm9,XMMWORD PTR [rbp-0x70]
  da3ca3:	44 0f 10 55 a0       	movups xmm10,XMMWORD PTR [rbp-0x60]
  da3ca8:	0f 10 6d b0          	movups xmm5,XMMWORD PTR [rbp-0x50]
  da3cac:	44 0f 10 45 c0       	movups xmm8,XMMWORD PTR [rbp-0x40]
  da3cb1:	41 0f 28 e1          	movaps xmm4,xmm9
  da3cb5:	0f 59 e7             	mulps  xmm4,xmm7
  da3cb8:	41 0f 59 fa          	mulps  xmm7,xmm10
  da3cbc:	44 0f 59 d1          	mulps  xmm10,xmm1
  da3cc0:	41 0f 5c e2          	subps  xmm4,xmm10
  da3cc4:	41 0f 59 c9          	mulps  xmm1,xmm9
  da3cc8:	0f 58 cf             	addps  xmm1,xmm7
  da3ccb:	0f 28 fe             	movaps xmm7,xmm6
  da3cce:	0f 59 fa             	mulps  xmm7,xmm2
  da3cd1:	44 0f 28 c8          	movaps xmm9,xmm0
  da3cd5:	44 0f 59 cb          	mulps  xmm9,xmm3
  da3cd9:	44 0f 5c cf          	subps  xmm9,xmm7
  da3cdd:	0f 59 de             	mulps  xmm3,xmm6
  da3ce0:	0f 59 d0             	mulps  xmm2,xmm0
  da3ce3:	0f 58 d3             	addps  xmm2,xmm3
  da3ce6:	0f 28 fd             	movaps xmm7,xmm5
  da3ce9:	41 0f 59 f9          	mulps  xmm7,xmm9
  da3ced:	45 0f 59 c8          	mulps  xmm9,xmm8
  da3cf1:	44 0f 59 c2          	mulps  xmm8,xmm2
  da3cf5:	41 0f 5c f8          	subps  xmm7,xmm8
  da3cf9:	0f 59 d5             	mulps  xmm2,xmm5
  da3cfc:	41 0f 58 d1          	addps  xmm2,xmm9
  da3d00:	44 0f 10 45 d0       	movups xmm8,XMMWORD PTR [rbp-0x30]
  da3d05:	44 0f 10 4d e0       	movups xmm9,XMMWORD PTR [rbp-0x20]
  da3d0a:	0f 10 6c 0a 40       	movups xmm5,XMMWORD PTR [rdx+rcx*1+0x40]
  da3d0f:	0f 10 5c 0a 50       	movups xmm3,XMMWORD PTR [rdx+rcx*1+0x50]
  da3d14:	44 0f 28 d6          	movaps xmm10,xmm6
  da3d18:	44 0f 59 d3          	mulps  xmm10,xmm3
  da3d1c:	44 0f 28 d8          	movaps xmm11,xmm0
  da3d20:	44 0f 59 dd          	mulps  xmm11,xmm5
  da3d24:	45 0f 5c da          	subps  xmm11,xmm10
  da3d28:	0f 59 ee             	mulps  xmm5,xmm6
  da3d2b:	0f 59 d8             	mulps  xmm3,xmm0
  da3d2e:	0f 58 dd             	addps  xmm3,xmm5
  da3d31:	41 0f 28 e8          	movaps xmm5,xmm8
  da3d35:	41 0f 59 eb          	mulps  xmm5,xmm11
  da3d39:	45 0f 59 d9          	mulps  xmm11,xmm9
  da3d3d:	44 0f 59 cb          	mulps  xmm9,xmm3
  da3d41:	41 0f 5c e9          	subps  xmm5,xmm9
  da3d45:	41 0f 59 d8          	mulps  xmm3,xmm8
  da3d49:	41 0f 58 db          	addps  xmm3,xmm11
  da3d4d:	44 0f 10 45 f0       	movups xmm8,XMMWORD PTR [rbp-0x10]
  da3d52:	44 0f 10 4d 00       	movups xmm9,XMMWORD PTR [rbp+0x0]
  da3d57:	44 0f 10 54 0a 60    	movups xmm10,XMMWORD PTR [rdx+rcx*1+0x60]
  da3d5d:	44 0f 10 5c 0a 70    	movups xmm11,XMMWORD PTR [rdx+rcx*1+0x70]
  da3d63:	44 0f 28 e6          	movaps xmm12,xmm6
  da3d67:	45 0f 59 e3          	mulps  xmm12,xmm11
  da3d6b:	44 0f 28 e8          	movaps xmm13,xmm0
  da3d6f:	45 0f 59 ea          	mulps  xmm13,xmm10
  da3d73:	45 0f 5c ec          	subps  xmm13,xmm12
  da3d77:	41 0f 59 f2          	mulps  xmm6,xmm10
  da3d7b:	41 0f 59 c3          	mulps  xmm0,xmm11
  da3d7f:	0f 58 c6             	addps  xmm0,xmm6
  da3d82:	45 0f 28 d0          	movaps xmm10,xmm8
  da3d86:	45 0f 59 d5          	mulps  xmm10,xmm13
  da3d8a:	45 0f 59 e9          	mulps  xmm13,xmm9
  da3d8e:	44 0f 59 c8          	mulps  xmm9,xmm0
  da3d92:	45 0f 5c d1          	subps  xmm10,xmm9
  da3d96:	41 0f 59 c0          	mulps  xmm0,xmm8
  da3d9a:	41 0f 58 c5          	addps  xmm0,xmm13
  da3d9e:	44 0f 28 cc          	movaps xmm9,xmm4
  da3da2:	44 0f 14 cf          	unpcklps xmm9,xmm7
  da3da6:	0f 28 f5             	movaps xmm6,xmm5
  da3da9:	41 0f 14 f2          	unpcklps xmm6,xmm10
  da3dad:	45 0f 28 c1          	movaps xmm8,xmm9
  da3db1:	44 0f 16 c6          	movlhps xmm8,xmm6
  da3db5:	41 0f 12 f1          	movhlps xmm6,xmm9
  da3db9:	0f 15 e7             	unpckhps xmm4,xmm7
  da3dbc:	41 0f 15 ea          	unpckhps xmm5,xmm10
  da3dc0:	0f 28 fc             	movaps xmm7,xmm4
  da3dc3:	0f 16 fd             	movlhps xmm7,xmm5
  da3dc6:	0f 12 ec             	movhlps xmm5,xmm4
  da3dc9:	44 0f 28 d1          	movaps xmm10,xmm1
  da3dcd:	44 0f 14 d2          	unpcklps xmm10,xmm2
  da3dd1:	0f 28 e3             	movaps xmm4,xmm3
  da3dd4:	0f 14 e0             	unpcklps xmm4,xmm0
  da3dd7:	45 0f 28 ca          	movaps xmm9,xmm10
  da3ddb:	44 0f 16 cc          	movlhps xmm9,xmm4
  da3ddf:	41 0f 12 e2          	movhlps xmm4,xmm10
  da3de3:	0f 15 ca             	unpckhps xmm1,xmm2
  da3de6:	0f 15 d8             	unpckhps xmm3,xmm0
  da3de9:	0f 28 c1             	movaps xmm0,xmm1
  da3dec:	0f 16 c3             	movlhps xmm0,xmm3
  da3def:	0f 12 d9             	movhlps xmm3,xmm1
  da3df2:	80 7c 24 20 00       	cmp    BYTE PTR [rsp+0x20],0x0
  da3df7:	0f 84 13 fe ff ff    	je     da3c10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xd50>
  da3dfd:	48 8d 4e 10          	lea    rcx,[rsi+0x10]
  da3e01:	4c 8d 4e 20          	lea    r9,[rsi+0x20]
  da3e05:	4c 8d 56 30          	lea    r10,[rsi+0x30]
  da3e09:	4c 8d 5e 40          	lea    r11,[rsi+0x40]
  da3e0d:	48 8d 5e 50          	lea    rbx,[rsi+0x50]
  da3e11:	4c 8d 76 60          	lea    r14,[rsi+0x60]
  da3e15:	4c 8d 7e 70          	lea    r15,[rsi+0x70]
  da3e19:	44 0f 2b 06          	movntps XMMWORD PTR [rsi],xmm8
  da3e1d:	44 0f 2b 09          	movntps XMMWORD PTR [rcx],xmm9
  da3e21:	41 0f 2b 31          	movntps XMMWORD PTR [r9],xmm6
  da3e25:	41 0f 2b 22          	movntps XMMWORD PTR [r10],xmm4
  da3e29:	41 0f 2b 3b          	movntps XMMWORD PTR [r11],xmm7
  da3e2d:	0f 2b 03             	movntps XMMWORD PTR [rbx],xmm0
  da3e30:	41 0f 2b 2e          	movntps XMMWORD PTR [r14],xmm5
  da3e34:	41 0f 2b 1f          	movntps XMMWORD PTR [r15],xmm3
  da3e38:	e9 f4 fd ff ff       	jmp    da3c31 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xd71>
  da3e3d:	48 8b 84 24 28 02 00 	mov    rax,QWORD PTR [rsp+0x228]
  da3e44:	00 
  da3e45:	4c 01 f8             	add    rax,r15
  da3e48:	48 8b 8c 24 40 02 00 	mov    rcx,QWORD PTR [rsp+0x240]
  da3e4f:	00 
  da3e50:	48 8d 3c c1          	lea    rdi,[rcx+rax*8]
  da3e54:	48 8d 84 24 10 01 00 	lea    rax,[rsp+0x110]
  da3e5b:	00 
  da3e5c:	0f 57 c0             	xorps  xmm0,xmm0
  da3e5f:	0f 29 40 50          	movaps XMMWORD PTR [rax+0x50],xmm0
  da3e63:	0f 29 40 40          	movaps XMMWORD PTR [rax+0x40],xmm0
  da3e67:	0f 29 40 30          	movaps XMMWORD PTR [rax+0x30],xmm0
  da3e6b:	0f 29 40 20          	movaps XMMWORD PTR [rax+0x20],xmm0
  da3e6f:	0f 29 40 10          	movaps XMMWORD PTR [rax+0x10],xmm0
  da3e73:	0f 29 00             	movaps XMMWORD PTR [rax],xmm0
  da3e76:	45 0f 15 c8          	unpckhps xmm9,xmm8
  da3e7a:	45 0f 15 da          	unpckhps xmm11,xmm10
  da3e7e:	44 0f 29 8c 24 f0 00 	movaps XMMWORD PTR [rsp+0xf0],xmm9
  da3e85:	00 00 
  da3e87:	44 0f 29 9c 24 00 01 	movaps XMMWORD PTR [rsp+0x100],xmm11
  da3e8e:	00 00 
  da3e90:	48 8d b4 24 f0 00 00 	lea    rsi,[rsp+0xf0]
  da3e97:	00 
  da3e98:	48 89 da             	mov    rdx,rbx
  da3e9b:	ff 15 3f 68 4a 00    	call   QWORD PTR [rip+0x4a683f]        # 124a6e0 <memcpy@GLIBC_2.14>
  da3ea1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  da3ea8:	0f 1f 84 00 00 00 00 
  da3eaf:	00 
  da3eb0:	49 ff cd             	dec    r13
  da3eb3:	49 83 c4 fc          	add    r12,0xfffffffffffffffc
  da3eb7:	49 83 c6 20          	add    r14,0x20
  da3ebb:	49 83 c7 04          	add    r15,0x4
  da3ebf:	4d 85 ed             	test   r13,r13
  da3ec2:	0f 84 98 f3 ff ff    	je     da3260 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3a0>
  da3ec8:	48 8b 8c 24 b8 00 00 	mov    rcx,QWORD PTR [rsp+0xb8]
  da3ecf:	00 
  da3ed0:	4a 8d 04 39          	lea    rax,[rcx+r15*1]
  da3ed4:	49 83 fc 04          	cmp    r12,0x4
  da3ed8:	bb 04 00 00 00       	mov    ebx,0x4
  da3edd:	49 0f 42 dc          	cmovb  rbx,r12
  da3ee1:	0f 57 c0             	xorps  xmm0,xmm0
  da3ee4:	48 85 c0             	test   rax,rax
  da3ee7:	74 77                	je     da3f60 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x10a0>
  da3ee9:	46 0f 10 44 b5 00    	movups xmm8,XMMWORD PTR [rbp+r14*4+0x0]
  da3eef:	42 0f 10 4c b5 10    	movups xmm1,XMMWORD PTR [rbp+r14*4+0x10]
  da3ef5:	48 8b 94 24 b0 00 00 	mov    rdx,QWORD PTR [rsp+0xb0]
  da3efc:	00 
  da3efd:	42 0f 10 54 b2 90    	movups xmm2,XMMWORD PTR [rdx+r14*4-0x70]
  da3f03:	42 0f 10 5c b2 a0    	movups xmm3,XMMWORD PTR [rdx+r14*4-0x60]
  da3f09:	0f 28 e1             	movaps xmm4,xmm1
  da3f0c:	0f 59 e3             	mulps  xmm4,xmm3
  da3f0f:	45 0f 28 c8          	movaps xmm9,xmm8
  da3f13:	44 0f 59 ca          	mulps  xmm9,xmm2
  da3f17:	44 0f 5c cc          	subps  xmm9,xmm4
  da3f1b:	0f 59 ca             	mulps  xmm1,xmm2
  da3f1e:	44 0f 59 c3          	mulps  xmm8,xmm3
  da3f22:	44 0f 58 c1          	addps  xmm8,xmm1
  da3f26:	49 83 fc 02          	cmp    r12,0x2
  da3f2a:	73 64                	jae    da3f90 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x10d0>
  da3f2c:	0f 57 c9             	xorps  xmm1,xmm1
  da3f2f:	45 0f 57 d2          	xorps  xmm10,xmm10
  da3f33:	0f 57 db             	xorps  xmm3,xmm3
  da3f36:	0f 57 d2             	xorps  xmm2,xmm2
  da3f39:	45 0f 57 db          	xorps  xmm11,xmm11
  da3f3d:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
  da3f42:	48 39 04 24          	cmp    QWORD PTR [rsp],rax
  da3f46:	0f 84 64 ff ff ff    	je     da3eb0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xff0>
  da3f4c:	e9 3f 01 00 00       	jmp    da4090 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x11d0>
  da3f51:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  da3f58:	0f 1f 84 00 00 00 00 
  da3f5f:	00 
  da3f60:	0f 57 c9             	xorps  xmm1,xmm1
  da3f63:	45 0f 57 d2          	xorps  xmm10,xmm10
  da3f67:	45 0f 57 c0          	xorps  xmm8,xmm8
  da3f6b:	0f 57 db             	xorps  xmm3,xmm3
  da3f6e:	0f 57 d2             	xorps  xmm2,xmm2
  da3f71:	45 0f 57 db          	xorps  xmm11,xmm11
  da3f75:	45 0f 57 c9          	xorps  xmm9,xmm9
  da3f79:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
  da3f7e:	48 39 04 24          	cmp    QWORD PTR [rsp],rax
  da3f82:	0f 84 28 ff ff ff    	je     da3eb0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xff0>
  da3f88:	e9 03 01 00 00       	jmp    da4090 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x11d0>
  da3f8d:	0f 1f 00             	nop    DWORD PTR [rax]
  da3f90:	4a 8d 04 39          	lea    rax,[rcx+r15*1]
  da3f94:	48 83 c0 02          	add    rax,0x2
  da3f98:	42 0f 10 4c b5 20    	movups xmm1,XMMWORD PTR [rbp+r14*4+0x20]
  da3f9e:	42 0f 10 5c b5 30    	movups xmm3,XMMWORD PTR [rbp+r14*4+0x30]
  da3fa4:	42 0f 10 64 b2 b0    	movups xmm4,XMMWORD PTR [rdx+r14*4-0x50]
  da3faa:	42 0f 10 6c b2 c0    	movups xmm5,XMMWORD PTR [rdx+r14*4-0x40]
  da3fb0:	0f 28 f3             	movaps xmm6,xmm3
  da3fb3:	0f 59 f5             	mulps  xmm6,xmm5
  da3fb6:	0f 28 d1             	movaps xmm2,xmm1
  da3fb9:	0f 59 d4             	mulps  xmm2,xmm4
  da3fbc:	0f 5c d6             	subps  xmm2,xmm6
  da3fbf:	0f 59 dc             	mulps  xmm3,xmm4
  da3fc2:	0f 59 cd             	mulps  xmm1,xmm5
  da3fc5:	0f 58 cb             	addps  xmm1,xmm3
  da3fc8:	48 85 c0             	test   rax,rax
  da3fcb:	0f 84 82 00 00 00    	je     da4053 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1193>
  da3fd1:	4a 8d 04 39          	lea    rax,[rcx+r15*1]
  da3fd5:	48 83 c0 03          	add    rax,0x3
  da3fd9:	46 0f 10 54 b5 40    	movups xmm10,XMMWORD PTR [rbp+r14*4+0x40]
  da3fdf:	42 0f 10 5c b5 50    	movups xmm3,XMMWORD PTR [rbp+r14*4+0x50]
  da3fe5:	42 0f 10 64 b2 d0    	movups xmm4,XMMWORD PTR [rdx+r14*4-0x30]
  da3feb:	42 0f 10 6c b2 e0    	movups xmm5,XMMWORD PTR [rdx+r14*4-0x20]
  da3ff1:	0f 28 f3             	movaps xmm6,xmm3
  da3ff4:	0f 59 f5             	mulps  xmm6,xmm5
  da3ff7:	45 0f 28 da          	movaps xmm11,xmm10
  da3ffb:	44 0f 59 dc          	mulps  xmm11,xmm4
  da3fff:	44 0f 5c de          	subps  xmm11,xmm6
  da4003:	0f 59 dc             	mulps  xmm3,xmm4
  da4006:	44 0f 59 d5          	mulps  xmm10,xmm5
  da400a:	44 0f 58 d3          	addps  xmm10,xmm3
  da400e:	48 85 c0             	test   rax,rax
  da4011:	74 5c                	je     da406f <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x11af>
  da4013:	42 0f 10 44 b5 60    	movups xmm0,XMMWORD PTR [rbp+r14*4+0x60]
  da4019:	42 0f 10 64 b5 70    	movups xmm4,XMMWORD PTR [rbp+r14*4+0x70]
  da401f:	42 0f 10 6c b2 f0    	movups xmm5,XMMWORD PTR [rdx+r14*4-0x10]
  da4025:	42 0f 10 34 b2       	movups xmm6,XMMWORD PTR [rdx+r14*4]
  da402a:	0f 28 fc             	movaps xmm7,xmm4
  da402d:	0f 59 fe             	mulps  xmm7,xmm6
  da4030:	0f 28 d8             	movaps xmm3,xmm0
  da4033:	0f 59 dd             	mulps  xmm3,xmm5
  da4036:	0f 5c df             	subps  xmm3,xmm7
  da4039:	0f 59 e5             	mulps  xmm4,xmm5
  da403c:	0f 59 c6             	mulps  xmm0,xmm6
  da403f:	0f 58 c4             	addps  xmm0,xmm4
  da4042:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
  da4047:	48 39 04 24          	cmp    QWORD PTR [rsp],rax
  da404b:	0f 84 5f fe ff ff    	je     da3eb0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xff0>
  da4051:	eb 3d                	jmp    da4090 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x11d0>
  da4053:	45 0f 57 d2          	xorps  xmm10,xmm10
  da4057:	0f 57 db             	xorps  xmm3,xmm3
  da405a:	45 0f 57 db          	xorps  xmm11,xmm11
  da405e:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
  da4063:	48 39 04 24          	cmp    QWORD PTR [rsp],rax
  da4067:	0f 84 43 fe ff ff    	je     da3eb0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xff0>
  da406d:	eb 21                	jmp    da4090 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x11d0>
  da406f:	0f 57 db             	xorps  xmm3,xmm3
  da4072:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
  da4077:	48 39 04 24          	cmp    QWORD PTR [rsp],rax
  da407b:	0f 84 2f fe ff ff    	je     da3eb0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xff0>
  da4081:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  da4088:	0f 1f 84 00 00 00 00 
  da408f:	00 
  da4090:	41 0f 28 e1          	movaps xmm4,xmm9
  da4094:	0f 14 e2             	unpcklps xmm4,xmm2
  da4097:	41 0f 28 eb          	movaps xmm5,xmm11
  da409b:	0f 14 eb             	unpcklps xmm5,xmm3
  da409e:	44 0f 15 ca          	unpckhps xmm9,xmm2
  da40a2:	44 0f 15 db          	unpckhps xmm11,xmm3
  da40a6:	41 0f 28 f0          	movaps xmm6,xmm8
  da40aa:	0f 14 f1             	unpcklps xmm6,xmm1
  da40ad:	41 0f 28 da          	movaps xmm3,xmm10
  da40b1:	0f 14 d8             	unpcklps xmm3,xmm0
  da40b4:	44 0f 15 c1          	unpckhps xmm8,xmm1
  da40b8:	44 0f 15 d0          	unpckhps xmm10,xmm0
  da40bc:	48 c1 e3 03          	shl    rbx,0x3
  da40c0:	0f 28 c4             	movaps xmm0,xmm4
  da40c3:	0f 14 c6             	unpcklps xmm0,xmm6
  da40c6:	0f 28 cd             	movaps xmm1,xmm5
  da40c9:	0f 14 cb             	unpcklps xmm1,xmm3
  da40cc:	49 83 fc 03          	cmp    r12,0x3
  da40d0:	0f 86 9a 00 00 00    	jbe    da4170 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x12b0>
  da40d6:	48 8b 44 24 58       	mov    rax,QWORD PTR [rsp+0x58]
  da40db:	42 0f 11 04 f8       	movups XMMWORD PTR [rax+r15*8],xmm0
  da40e0:	42 0f 11 4c f8 10    	movups XMMWORD PTR [rax+r15*8+0x10],xmm1
  da40e6:	48 83 7c 24 38 02    	cmp    QWORD PTR [rsp+0x38],0x2
  da40ec:	0f 82 be fd ff ff    	jb     da3eb0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xff0>
  da40f2:	0f 15 e6             	unpckhps xmm4,xmm6
  da40f5:	0f 15 eb             	unpckhps xmm5,xmm3
  da40f8:	48 8b 84 24 a8 00 00 	mov    rax,QWORD PTR [rsp+0xa8]
  da40ff:	00 
  da4100:	42 0f 11 24 f8       	movups XMMWORD PTR [rax+r15*8],xmm4
  da4105:	42 0f 11 6c f8 10    	movups XMMWORD PTR [rax+r15*8+0x10],xmm5
  da410b:	0f 84 9f fd ff ff    	je     da3eb0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xff0>
  da4111:	41 0f 28 c1          	movaps xmm0,xmm9
  da4115:	41 0f 14 c0          	unpcklps xmm0,xmm8
  da4119:	41 0f 28 cb          	movaps xmm1,xmm11
  da411d:	41 0f 14 ca          	unpcklps xmm1,xmm10
  da4121:	48 8b 84 24 90 00 00 	mov    rax,QWORD PTR [rsp+0x90]
  da4128:	00 
  da4129:	42 0f 11 04 f8       	movups XMMWORD PTR [rax+r15*8],xmm0
  da412e:	42 0f 11 4c f8 10    	movups XMMWORD PTR [rax+r15*8+0x10],xmm1
  da4134:	48 83 7c 24 38 03    	cmp    QWORD PTR [rsp+0x38],0x3
  da413a:	0f 84 70 fd ff ff    	je     da3eb0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xff0>
  da4140:	49 83 fc 03          	cmp    r12,0x3
  da4144:	0f 86 f3 fc ff ff    	jbe    da3e3d <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xf7d>
  da414a:	45 0f 15 c8          	unpckhps xmm9,xmm8
  da414e:	45 0f 15 da          	unpckhps xmm11,xmm10
  da4152:	48 8b 84 24 e8 00 00 	mov    rax,QWORD PTR [rsp+0xe8]
  da4159:	00 
  da415a:	46 0f 11 0c f8       	movups XMMWORD PTR [rax+r15*8],xmm9
  da415f:	46 0f 11 5c f8 10    	movups XMMWORD PTR [rax+r15*8+0x10],xmm11
  da4165:	e9 46 fd ff ff       	jmp    da3eb0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xff0>
  da416a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  da4170:	48 8b 44 24 58       	mov    rax,QWORD PTR [rsp+0x58]
  da4175:	4a 8d 3c f8          	lea    rdi,[rax+r15*8]
  da4179:	48 8d 84 24 10 01 00 	lea    rax,[rsp+0x110]
  da4180:	00 
  da4181:	0f 57 d2             	xorps  xmm2,xmm2
  da4184:	0f 29 50 50          	movaps XMMWORD PTR [rax+0x50],xmm2
  da4188:	0f 29 50 40          	movaps XMMWORD PTR [rax+0x40],xmm2
  da418c:	0f 29 50 30          	movaps XMMWORD PTR [rax+0x30],xmm2
  da4190:	0f 29 50 20          	movaps XMMWORD PTR [rax+0x20],xmm2
  da4194:	0f 29 50 10          	movaps XMMWORD PTR [rax+0x10],xmm2
  da4198:	0f 29 10             	movaps XMMWORD PTR [rax],xmm2
  da419b:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da41a2:	00 
  da41a3:	0f 29 8c 24 00 01 00 	movaps XMMWORD PTR [rsp+0x100],xmm1
  da41aa:	00 
  da41ab:	48 8d b4 24 f0 00 00 	lea    rsi,[rsp+0xf0]
  da41b2:	00 
  da41b3:	48 89 da             	mov    rdx,rbx
  da41b6:	44 0f 29 84 24 e0 01 	movaps XMMWORD PTR [rsp+0x1e0],xmm8
  da41bd:	00 00 
  da41bf:	44 0f 29 8c 24 d0 01 	movaps XMMWORD PTR [rsp+0x1d0],xmm9
  da41c6:	00 00 
  da41c8:	44 0f 29 94 24 b0 01 	movaps XMMWORD PTR [rsp+0x1b0],xmm10
  da41cf:	00 00 
  da41d1:	44 0f 29 9c 24 a0 01 	movaps XMMWORD PTR [rsp+0x1a0],xmm11
  da41d8:	00 00 
  da41da:	0f 29 a4 24 70 01 00 	movaps XMMWORD PTR [rsp+0x170],xmm4
  da41e1:	00 
  da41e2:	0f 29 ac 24 c0 01 00 	movaps XMMWORD PTR [rsp+0x1c0],xmm5
  da41e9:	00 
  da41ea:	0f 29 9c 24 f0 01 00 	movaps XMMWORD PTR [rsp+0x1f0],xmm3
  da41f1:	00 
  da41f2:	0f 29 b4 24 10 02 00 	movaps XMMWORD PTR [rsp+0x210],xmm6
  da41f9:	00 
  da41fa:	ff 15 e0 64 4a 00    	call   QWORD PTR [rip+0x4a64e0]        # 124a6e0 <memcpy@GLIBC_2.14>
  da4200:	0f 28 a4 24 10 02 00 	movaps xmm4,XMMWORD PTR [rsp+0x210]
  da4207:	00 
  da4208:	0f 28 9c 24 f0 01 00 	movaps xmm3,XMMWORD PTR [rsp+0x1f0]
  da420f:	00 
  da4210:	0f 28 94 24 c0 01 00 	movaps xmm2,XMMWORD PTR [rsp+0x1c0]
  da4217:	00 
  da4218:	0f 28 8c 24 70 01 00 	movaps xmm1,XMMWORD PTR [rsp+0x170]
  da421f:	00 
  da4220:	48 83 7c 24 38 02    	cmp    QWORD PTR [rsp+0x38],0x2
  da4226:	0f 82 84 fc ff ff    	jb     da3eb0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xff0>
  da422c:	48 8b 84 24 a8 00 00 	mov    rax,QWORD PTR [rsp+0xa8]
  da4233:	00 
  da4234:	4a 8d 3c f8          	lea    rdi,[rax+r15*8]
  da4238:	48 8d 84 24 10 01 00 	lea    rax,[rsp+0x110]
  da423f:	00 
  da4240:	0f 57 c0             	xorps  xmm0,xmm0
  da4243:	0f 29 40 50          	movaps XMMWORD PTR [rax+0x50],xmm0
  da4247:	0f 29 40 40          	movaps XMMWORD PTR [rax+0x40],xmm0
  da424b:	0f 29 40 30          	movaps XMMWORD PTR [rax+0x30],xmm0
  da424f:	0f 29 40 20          	movaps XMMWORD PTR [rax+0x20],xmm0
  da4253:	0f 29 40 10          	movaps XMMWORD PTR [rax+0x10],xmm0
  da4257:	0f 29 00             	movaps XMMWORD PTR [rax],xmm0
  da425a:	0f 15 cc             	unpckhps xmm1,xmm4
  da425d:	0f 15 d3             	unpckhps xmm2,xmm3
  da4260:	0f 29 8c 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm1
  da4267:	00 
  da4268:	0f 29 94 24 00 01 00 	movaps XMMWORD PTR [rsp+0x100],xmm2
  da426f:	00 
  da4270:	48 8d b4 24 f0 00 00 	lea    rsi,[rsp+0xf0]
  da4277:	00 
  da4278:	48 89 da             	mov    rdx,rbx
  da427b:	ff 15 5f 64 4a 00    	call   QWORD PTR [rip+0x4a645f]        # 124a6e0 <memcpy@GLIBC_2.14>
  da4281:	0f 28 a4 24 a0 01 00 	movaps xmm4,XMMWORD PTR [rsp+0x1a0]
  da4288:	00 
  da4289:	0f 28 9c 24 b0 01 00 	movaps xmm3,XMMWORD PTR [rsp+0x1b0]
  da4290:	00 
  da4291:	0f 28 94 24 d0 01 00 	movaps xmm2,XMMWORD PTR [rsp+0x1d0]
  da4298:	00 
  da4299:	0f 28 8c 24 e0 01 00 	movaps xmm1,XMMWORD PTR [rsp+0x1e0]
  da42a0:	00 
  da42a1:	48 83 7c 24 38 02    	cmp    QWORD PTR [rsp+0x38],0x2
  da42a7:	0f 84 03 fc ff ff    	je     da3eb0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xff0>
  da42ad:	48 8b 84 24 90 00 00 	mov    rax,QWORD PTR [rsp+0x90]
  da42b4:	00 
  da42b5:	4a 8d 3c f8          	lea    rdi,[rax+r15*8]
  da42b9:	48 8d 84 24 10 01 00 	lea    rax,[rsp+0x110]
  da42c0:	00 
  da42c1:	0f 57 c0             	xorps  xmm0,xmm0
  da42c4:	0f 29 40 50          	movaps XMMWORD PTR [rax+0x50],xmm0
  da42c8:	0f 29 40 40          	movaps XMMWORD PTR [rax+0x40],xmm0
  da42cc:	0f 29 40 30          	movaps XMMWORD PTR [rax+0x30],xmm0
  da42d0:	0f 29 40 20          	movaps XMMWORD PTR [rax+0x20],xmm0
  da42d4:	0f 29 40 10          	movaps XMMWORD PTR [rax+0x10],xmm0
  da42d8:	0f 29 00             	movaps XMMWORD PTR [rax],xmm0
  da42db:	0f 28 c2             	movaps xmm0,xmm2
  da42de:	0f 14 c1             	unpcklps xmm0,xmm1
  da42e1:	0f 28 cc             	movaps xmm1,xmm4
  da42e4:	0f 14 cb             	unpcklps xmm1,xmm3
  da42e7:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da42ee:	00 
  da42ef:	0f 29 8c 24 00 01 00 	movaps XMMWORD PTR [rsp+0x100],xmm1
  da42f6:	00 
  da42f7:	48 8d b4 24 f0 00 00 	lea    rsi,[rsp+0xf0]
  da42fe:	00 
  da42ff:	48 89 da             	mov    rdx,rbx
  da4302:	ff 15 d8 63 4a 00    	call   QWORD PTR [rip+0x4a63d8]        # 124a6e0 <memcpy@GLIBC_2.14>
  da4308:	44 0f 28 9c 24 a0 01 	movaps xmm11,XMMWORD PTR [rsp+0x1a0]
  da430f:	00 00 
  da4311:	44 0f 28 94 24 b0 01 	movaps xmm10,XMMWORD PTR [rsp+0x1b0]
  da4318:	00 00 
  da431a:	44 0f 28 8c 24 d0 01 	movaps xmm9,XMMWORD PTR [rsp+0x1d0]
  da4321:	00 00 
  da4323:	44 0f 28 84 24 e0 01 	movaps xmm8,XMMWORD PTR [rsp+0x1e0]
  da432a:	00 00 
  da432c:	48 83 7c 24 38 03    	cmp    QWORD PTR [rsp+0x38],0x3
  da4332:	0f 84 78 fb ff ff    	je     da3eb0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xff0>
  da4338:	48 8b 84 24 e8 00 00 	mov    rax,QWORD PTR [rsp+0xe8]
  da433f:	00 
  da4340:	4a 8d 3c 30          	lea    rdi,[rax+r14*1]
  da4344:	e9 0b fb ff ff       	jmp    da3e54 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0xf94>
  da4349:	4c 8b 67 58          	mov    r12,QWORD PTR [rdi+0x58]
  da434d:	48 8b 4f 10          	mov    rcx,QWORD PTR [rdi+0x10]
  da4351:	48 8b 5f 20          	mov    rbx,QWORD PTR [rdi+0x20]
  da4355:	48 8b 77 60          	mov    rsi,QWORD PTR [rdi+0x60]
  da4359:	48 8b 47 28          	mov    rax,QWORD PTR [rdi+0x28]
  da435d:	48 89 44 24 50       	mov    QWORD PTR [rsp+0x50],rax
  da4362:	48 8b 47 30          	mov    rax,QWORD PTR [rdi+0x30]
  da4366:	48 8b 57 40          	mov    rdx,QWORD PTR [rdi+0x40]
  da436a:	48 89 4c 24 30       	mov    QWORD PTR [rsp+0x30],rcx
  da436f:	48 01 ca             	add    rdx,rcx
  da4372:	48 89 94 24 38 02 00 	mov    QWORD PTR [rsp+0x238],rdx
  da4379:	00 
  da437a:	48 8b 4f 78          	mov    rcx,QWORD PTR [rdi+0x78]
  da437e:	48 8b 94 24 88 00 00 	mov    rdx,QWORD PTR [rsp+0x88]
  da4385:	00 
  da4386:	48 8d 2c ca          	lea    rbp,[rdx+rcx*8]
  da438a:	48 8b 8f 80 00 00 00 	mov    rcx,QWORD PTR [rdi+0x80]
  da4391:	48 8d 4c cd 00       	lea    rcx,[rbp+rcx*8+0x0]
  da4396:	48 89 8c 24 a0 00 00 	mov    QWORD PTR [rsp+0xa0],rcx
  da439d:	00 
  da439e:	f2 0f 10 05 2a 05 2d 	movsd  xmm0,QWORD PTR [rip+0xffffffffff2d052a]        # 748d0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x1d80>
  da43a5:	ff 
  da43a6:	f2 0f 5a c0          	cvtsd2ss xmm0,xmm0
  da43aa:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  da43ae:	0f 29 44 24 10       	movaps XMMWORD PTR [rsp+0x10],xmm0
  da43b3:	0f b6 8f 98 00 00 00 	movzx  ecx,BYTE PTR [rdi+0x98]
  da43ba:	0f b6 97 99 00 00 00 	movzx  edx,BYTE PTR [rdi+0x99]
  da43c1:	88 8c 24 80 00 00 00 	mov    BYTE PTR [rsp+0x80],cl
  da43c8:	20 ca                	and    dl,cl
  da43ca:	88 54 24 20          	mov    BYTE PTR [rsp+0x20],dl
  da43ce:	48 89 34 24          	mov    QWORD PTR [rsp],rsi
  da43d2:	48 85 f6             	test   rsi,rsi
  da43d5:	4c 89 64 24 08       	mov    QWORD PTR [rsp+0x8],r12
  da43da:	48 89 6c 24 78       	mov    QWORD PTR [rsp+0x78],rbp
  da43df:	0f 84 04 12 00 00    	je     da55e9 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2729>
  da43e5:	48 8b 34 24          	mov    rsi,QWORD PTR [rsp]
  da43e9:	49 89 f1             	mov    r9,rsi
  da43ec:	49 c1 e9 02          	shr    r9,0x2
  da43f0:	89 f1                	mov    ecx,esi
  da43f2:	83 e1 03             	and    ecx,0x3
  da43f5:	48 83 f9 01          	cmp    rcx,0x1
  da43f9:	49 83 d9 ff          	sbb    r9,0xffffffffffffffff
  da43fd:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  da4402:	48 8d 0c 02          	lea    rcx,[rdx+rax*1]
  da4406:	48 89 8c 24 30 02 00 	mov    QWORD PTR [rsp+0x230],rcx
  da440d:	00 
  da440e:	4d 89 e0             	mov    r8,r12
  da4411:	49 c1 e8 02          	shr    r8,0x2
  da4415:	44 89 e1             	mov    ecx,r12d
  da4418:	83 e1 03             	and    ecx,0x3
  da441b:	48 83 f9 01          	cmp    rcx,0x1
  da441f:	49 83 d8 ff          	sbb    r8,0xffffffffffffffff
  da4423:	4c 89 84 24 88 01 00 	mov    QWORD PTR [rsp+0x188],r8
  da442a:	00 
  da442b:	48 8b 4f 70          	mov    rcx,QWORD PTR [rdi+0x70]
  da442f:	f3 48 0f bc f9       	tzcnt  rdi,rcx
  da4434:	48 89 7c 24 28       	mov    QWORD PTR [rsp+0x28],rdi
  da4439:	48 bf ff ff ff ff ff 	movabs rdi,0x7ffffffffffffff
  da4440:	ff ff 07 
  da4443:	48 89 8c 24 d8 00 00 	mov    QWORD PTR [rsp+0xd8],rcx
  da444a:	00 
  da444b:	48 01 cf             	add    rdi,rcx
  da444e:	48 89 7c 24 60       	mov    QWORD PTR [rsp+0x60],rdi
  da4453:	4c 89 e7             	mov    rdi,r12
  da4456:	48 c1 e7 04          	shl    rdi,0x4
  da445a:	4f 8d 04 64          	lea    r8,[r12+r12*2]
  da445e:	48 8d 4a 20          	lea    rcx,[rdx+0x20]
  da4462:	48 89 8c 24 08 02 00 	mov    QWORD PTR [rsp+0x208],rcx
  da4469:	00 
  da446a:	48 8d 4b ff          	lea    rcx,[rbx-0x1]
  da446e:	48 89 8c 24 00 02 00 	mov    QWORD PTR [rsp+0x200],rcx
  da4475:	00 
  da4476:	4c 89 e1             	mov    rcx,r12
  da4479:	48 f7 d9             	neg    rcx
  da447c:	48 89 8c 24 b8 00 00 	mov    QWORD PTR [rsp+0xb8],rcx
  da4483:	00 
  da4484:	4c 89 e1             	mov    rcx,r12
  da4487:	48 c1 e1 05          	shl    rcx,0x5
  da448b:	48 89 8c 24 90 01 00 	mov    QWORD PTR [rsp+0x190],rcx
  da4492:	00 
  da4493:	48 8b 8c 24 88 00 00 	mov    rcx,QWORD PTR [rsp+0x88]
  da449a:	00 
  da449b:	48 01 cf             	add    rdi,rcx
  da449e:	48 89 bc 24 90 00 00 	mov    QWORD PTR [rsp+0x90],rdi
  da44a5:	00 
  da44a6:	48 01 c2             	add    rdx,rax
  da44a9:	48 83 c2 70          	add    rdx,0x70
  da44ad:	48 89 f0             	mov    rax,rsi
  da44b0:	48 c1 e0 05          	shl    rax,0x5
  da44b4:	48 89 84 24 98 00 00 	mov    QWORD PTR [rsp+0x98],rax
  da44bb:	00 
  da44bc:	4c 89 84 24 28 02 00 	mov    QWORD PTR [rsp+0x228],r8
  da44c3:	00 
  da44c4:	4a 8d 04 c1          	lea    rax,[rcx+r8*8]
  da44c8:	48 89 84 24 e8 00 00 	mov    QWORD PTR [rsp+0xe8],rax
  da44cf:	00 
  da44d0:	4a 8d 04 e1          	lea    rax,[rcx+r12*8]
  da44d4:	48 89 84 24 a8 00 00 	mov    QWORD PTR [rsp+0xa8],rax
  da44db:	00 
  da44dc:	45 31 d2             	xor    r10d,r10d
  da44df:	48 89 8c 24 c8 00 00 	mov    QWORD PTR [rsp+0xc8],rcx
  da44e6:	00 
  da44e7:	48 89 4c 24 58       	mov    QWORD PTR [rsp+0x58],rcx
  da44ec:	48 89 74 24 38       	mov    QWORD PTR [rsp+0x38],rsi
  da44f1:	48 89 9c 24 e0 00 00 	mov    QWORD PTR [rsp+0xe0],rbx
  da44f8:	00 
  da44f9:	eb 73                	jmp    da456e <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x16ae>
  da44fb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  da4500:	4c 8b 54 24 40       	mov    r10,QWORD PTR [rsp+0x40]
  da4505:	49 83 c2 04          	add    r10,0x4
  da4509:	4c 8b 8c 24 98 01 00 	mov    r9,QWORD PTR [rsp+0x198]
  da4510:	00 
  da4511:	49 ff c9             	dec    r9
  da4514:	48 83 44 24 38 fc    	add    QWORD PTR [rsp+0x38],0xfffffffffffffffc
  da451a:	48 8b 84 24 90 01 00 	mov    rax,QWORD PTR [rsp+0x190]
  da4521:	00 
  da4522:	48 01 84 24 e8 00 00 	add    QWORD PTR [rsp+0xe8],rax
  da4529:	00 
  da452a:	48 01 84 24 90 00 00 	add    QWORD PTR [rsp+0x90],rax
  da4531:	00 
  da4532:	48 01 84 24 a8 00 00 	add    QWORD PTR [rsp+0xa8],rax
  da4539:	00 
  da453a:	48 8b 94 24 b0 00 00 	mov    rdx,QWORD PTR [rsp+0xb0]
  da4541:	00 
  da4542:	48 01 c2             	add    rdx,rax
  da4545:	48 01 44 24 58       	add    QWORD PTR [rsp+0x58],rax
  da454a:	48 83 ac 24 c8 00 00 	sub    QWORD PTR [rsp+0xc8],0xffffffffffffff80
  da4551:	00 80 
  da4553:	4d 85 c9             	test   r9,r9
  da4556:	4c 8b 64 24 08       	mov    r12,QWORD PTR [rsp+0x8]
  da455b:	48 8b 6c 24 78       	mov    rbp,QWORD PTR [rsp+0x78]
  da4560:	48 8b 9c 24 e0 00 00 	mov    rbx,QWORD PTR [rsp+0xe0]
  da4567:	00 
  da4568:	0f 84 7b 10 00 00    	je     da55e9 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2729>
  da456e:	4c 8b 04 24          	mov    r8,QWORD PTR [rsp]
  da4572:	4d 29 d0             	sub    r8,r10
  da4575:	48 8b 84 24 d0 00 00 	mov    rax,QWORD PTR [rsp+0xd0]
  da457c:	00 
  da457d:	4a 8d 3c d0          	lea    rdi,[rax+r10*8]
  da4581:	49 83 f8 04          	cmp    r8,0x4
  da4585:	b8 04 00 00 00       	mov    eax,0x4
  da458a:	4c 0f 43 c0          	cmovae r8,rax
  da458e:	4c 89 8c 24 98 01 00 	mov    QWORD PTR [rsp+0x198],r9
  da4595:	00 
  da4596:	48 89 94 24 b0 00 00 	mov    QWORD PTR [rsp+0xb0],rdx
  da459d:	00 
  da459e:	4c 89 54 24 40       	mov    QWORD PTR [rsp+0x40],r10
  da45a3:	72 5b                	jb     da4600 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1740>
  da45a5:	48 85 db             	test   rbx,rbx
  da45a8:	0f 84 aa 4a 00 00    	je     da9058 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6198>
  da45ae:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
  da45b3:	48 8b 00             	mov    rax,QWORD PTR [rax]
  da45b6:	48 83 c0 fe          	add    rax,0xfffffffffffffffe
  da45ba:	48 83 f8 0d          	cmp    rax,0xd
  da45be:	0f 87 58 4a 00 00    	ja     da901c <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x615c>
  da45c4:	48 8d 0d cd e9 2f ff 	lea    rcx,[rip+0xffffffffff2fe9cd]        # a2f98 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x30448>
  da45cb:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  da45cf:	48 01 c8             	add    rax,rcx
  da45d2:	ff e0                	jmp    rax
  da45d4:	48 89 ee             	mov    rsi,rbp
  da45d7:	4c 89 e2             	mov    rdx,r12
  da45da:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da45de:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da45e3:	e8 18 a6 fe ff       	call   d8ec00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da45e8:	48 83 fb 02          	cmp    rbx,0x2
  da45ec:	0f 83 9e 03 00 00    	jae    da4990 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1ad0>
  da45f2:	e9 d9 07 00 00       	jmp    da4dd0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1f10>
  da45f7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  da45fe:	00 00 
  da4600:	48 85 db             	test   rbx,rbx
  da4603:	0f 84 4f 4a 00 00    	je     da9058 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6198>
  da4609:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
  da460e:	48 8b 00             	mov    rax,QWORD PTR [rax]
  da4611:	48 83 c0 fe          	add    rax,0xfffffffffffffffe
  da4615:	48 83 f8 0d          	cmp    rax,0xd
  da4619:	0f 87 fd 49 00 00    	ja     da901c <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x615c>
  da461f:	48 8d 0d fe e8 2f ff 	lea    rcx,[rip+0xffffffffff2fe8fe]        # a2f24 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x303d4>
  da4626:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  da462a:	48 01 c8             	add    rax,rcx
  da462d:	ff e0                	jmp    rax
  da462f:	48 89 ee             	mov    rsi,rbp
  da4632:	4c 89 e2             	mov    rdx,r12
  da4635:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da4639:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da463e:	e8 3d 0f fe ff       	call   d85580 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da4643:	48 83 fb 02          	cmp    rbx,0x2
  da4647:	0f 83 73 05 00 00    	jae    da4bc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1d00>
  da464d:	e9 7e 07 00 00       	jmp    da4dd0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1f10>
  da4652:	48 89 ee             	mov    rsi,rbp
  da4655:	4c 89 e2             	mov    rdx,r12
  da4658:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da465c:	e8 5f d7 ff ff       	call   da1dc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da4661:	48 83 fb 02          	cmp    rbx,0x2
  da4665:	0f 83 25 03 00 00    	jae    da4990 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1ad0>
  da466b:	e9 60 07 00 00       	jmp    da4dd0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1f10>
  da4670:	48 89 ee             	mov    rsi,rbp
  da4673:	4c 89 e2             	mov    rdx,r12
  da4676:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da467a:	e8 81 a5 ff ff       	call   d9ec00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da467f:	48 83 fb 02          	cmp    rbx,0x2
  da4683:	0f 83 37 05 00 00    	jae    da4bc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1d00>
  da4689:	e9 42 07 00 00       	jmp    da4dd0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1f10>
  da468e:	48 89 ee             	mov    rsi,rbp
  da4691:	4c 89 e2             	mov    rdx,r12
  da4694:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da4698:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da469d:	e8 9e 9d ff ff       	call   d9e440 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da46a2:	48 83 fb 02          	cmp    rbx,0x2
  da46a6:	0f 83 e4 02 00 00    	jae    da4990 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1ad0>
  da46ac:	e9 1f 07 00 00       	jmp    da4dd0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1f10>
  da46b1:	48 89 ee             	mov    rsi,rbp
  da46b4:	4c 89 e2             	mov    rdx,r12
  da46b7:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da46bb:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da46c0:	e8 7b 87 ff ff       	call   d9ce40 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da46c5:	48 83 fb 02          	cmp    rbx,0x2
  da46c9:	0f 83 f1 04 00 00    	jae    da4bc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1d00>
  da46cf:	e9 fc 06 00 00       	jmp    da4dd0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1f10>
  da46d4:	48 89 ee             	mov    rsi,rbp
  da46d7:	4c 89 e2             	mov    rdx,r12
  da46da:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da46de:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da46e3:	e8 18 2c ff ff       	call   d97300 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da46e8:	48 83 fb 02          	cmp    rbx,0x2
  da46ec:	0f 83 9e 02 00 00    	jae    da4990 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1ad0>
  da46f2:	e9 d9 06 00 00       	jmp    da4dd0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1f10>
  da46f7:	48 89 ee             	mov    rsi,rbp
  da46fa:	4c 89 e2             	mov    rdx,r12
  da46fd:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da4701:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da4706:	e8 35 19 ff ff       	call   d96040 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da470b:	48 83 fb 02          	cmp    rbx,0x2
  da470f:	0f 83 ab 04 00 00    	jae    da4bc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1d00>
  da4715:	e9 b6 06 00 00       	jmp    da4dd0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1f10>
  da471a:	48 89 ee             	mov    rsi,rbp
  da471d:	4c 89 e2             	mov    rdx,r12
  da4720:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da4724:	e8 57 2c fe ff       	call   d87380 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da4729:	48 83 fb 02          	cmp    rbx,0x2
  da472d:	0f 83 5d 02 00 00    	jae    da4990 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1ad0>
  da4733:	e9 98 06 00 00       	jmp    da4dd0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1f10>
  da4738:	48 89 ee             	mov    rsi,rbp
  da473b:	4c 89 e2             	mov    rdx,r12
  da473e:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da4742:	e8 b9 d5 fe ff       	call   d91d00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da4747:	48 83 fb 02          	cmp    rbx,0x2
  da474b:	0f 83 6f 04 00 00    	jae    da4bc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1d00>
  da4751:	e9 7a 06 00 00       	jmp    da4dd0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1f10>
  da4756:	48 89 ee             	mov    rsi,rbp
  da4759:	4c 89 e2             	mov    rdx,r12
  da475c:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da4760:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da4765:	e8 56 85 ff ff       	call   d9ccc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da476a:	48 83 fb 02          	cmp    rbx,0x2
  da476e:	0f 83 1c 02 00 00    	jae    da4990 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1ad0>
  da4774:	e9 57 06 00 00       	jmp    da4dd0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1f10>
  da4779:	48 89 ee             	mov    rsi,rbp
  da477c:	4c 89 e2             	mov    rdx,r12
  da477f:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da4783:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da4788:	e8 b3 aa fd ff       	call   d7f240 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da478d:	48 83 fb 02          	cmp    rbx,0x2
  da4791:	0f 83 29 04 00 00    	jae    da4bc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1d00>
  da4797:	e9 34 06 00 00       	jmp    da4dd0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1f10>
  da479c:	48 89 ee             	mov    rsi,rbp
  da479f:	4c 89 e2             	mov    rdx,r12
  da47a2:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da47a6:	e8 d5 63 ff ff       	call   d9ab80 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da47ab:	48 83 fb 02          	cmp    rbx,0x2
  da47af:	0f 83 db 01 00 00    	jae    da4990 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1ad0>
  da47b5:	e9 16 06 00 00       	jmp    da4dd0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1f10>
  da47ba:	48 89 ee             	mov    rsi,rbp
  da47bd:	4c 89 e2             	mov    rdx,r12
  da47c0:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da47c4:	e8 77 fa fe ff       	call   d94240 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da47c9:	48 83 fb 02          	cmp    rbx,0x2
  da47cd:	0f 83 ed 03 00 00    	jae    da4bc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1d00>
  da47d3:	e9 f8 05 00 00       	jmp    da4dd0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1f10>
  da47d8:	48 89 ee             	mov    rsi,rbp
  da47db:	4c 89 e2             	mov    rdx,r12
  da47de:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da47e2:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da47e7:	e8 14 ba fd ff       	call   d80200 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da47ec:	48 83 fb 02          	cmp    rbx,0x2
  da47f0:	0f 83 9a 01 00 00    	jae    da4990 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1ad0>
  da47f6:	e9 d5 05 00 00       	jmp    da4dd0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1f10>
  da47fb:	48 89 ee             	mov    rsi,rbp
  da47fe:	4c 89 e2             	mov    rdx,r12
  da4801:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da4805:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da480a:	e8 71 99 fe ff       	call   d8e180 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da480f:	48 83 fb 02          	cmp    rbx,0x2
  da4813:	0f 83 a7 03 00 00    	jae    da4bc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1d00>
  da4819:	e9 b2 05 00 00       	jmp    da4dd0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1f10>
  da481e:	48 89 ee             	mov    rsi,rbp
  da4821:	4c 89 e2             	mov    rdx,r12
  da4824:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da4828:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da482d:	e8 ce 9a ff ff       	call   d9e300 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da4832:	48 83 fb 02          	cmp    rbx,0x2
  da4836:	0f 83 54 01 00 00    	jae    da4990 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1ad0>
  da483c:	e9 8f 05 00 00       	jmp    da4dd0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1f10>
  da4841:	48 89 ee             	mov    rsi,rbp
  da4844:	4c 89 e2             	mov    rdx,r12
  da4847:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da484b:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da4850:	e8 6b 8b ff ff       	call   d9d3c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da4855:	48 83 fb 02          	cmp    rbx,0x2
  da4859:	0f 83 61 03 00 00    	jae    da4bc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1d00>
  da485f:	e9 6c 05 00 00       	jmp    da4dd0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1f10>
  da4864:	48 89 ee             	mov    rsi,rbp
  da4867:	4c 89 e2             	mov    rdx,r12
  da486a:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da486e:	e8 8d 65 ff ff       	call   d9ae00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da4873:	48 83 fb 02          	cmp    rbx,0x2
  da4877:	0f 83 13 01 00 00    	jae    da4990 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1ad0>
  da487d:	e9 4e 05 00 00       	jmp    da4dd0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1f10>
  da4882:	48 89 ee             	mov    rsi,rbp
  da4885:	4c 89 e2             	mov    rdx,r12
  da4888:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da488c:	e8 6f 59 fe ff       	call   d8a200 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da4891:	48 83 fb 02          	cmp    rbx,0x2
  da4895:	0f 83 25 03 00 00    	jae    da4bc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1d00>
  da489b:	e9 30 05 00 00       	jmp    da4dd0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1f10>
  da48a0:	48 89 ee             	mov    rsi,rbp
  da48a3:	4c 89 e2             	mov    rdx,r12
  da48a6:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da48aa:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da48af:	e8 8c d5 fd ff       	call   d81e40 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da48b4:	48 83 fb 02          	cmp    rbx,0x2
  da48b8:	0f 83 d2 00 00 00    	jae    da4990 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1ad0>
  da48be:	e9 0d 05 00 00       	jmp    da4dd0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1f10>
  da48c3:	48 89 ee             	mov    rsi,rbp
  da48c6:	4c 89 e2             	mov    rdx,r12
  da48c9:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da48cd:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da48d2:	e8 69 0e fe ff       	call   d85740 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da48d7:	48 83 fb 02          	cmp    rbx,0x2
  da48db:	0f 83 df 02 00 00    	jae    da4bc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1d00>
  da48e1:	e9 ea 04 00 00       	jmp    da4dd0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1f10>
  da48e6:	48 89 ee             	mov    rsi,rbp
  da48e9:	4c 89 e2             	mov    rdx,r12
  da48ec:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da48f0:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da48f5:	e8 06 96 ff ff       	call   d9df00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da48fa:	48 83 fb 02          	cmp    rbx,0x2
  da48fe:	0f 83 8c 00 00 00    	jae    da4990 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1ad0>
  da4904:	e9 c7 04 00 00       	jmp    da4dd0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1f10>
  da4909:	48 89 ee             	mov    rsi,rbp
  da490c:	4c 89 e2             	mov    rdx,r12
  da490f:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da4913:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da4918:	e8 a3 c0 ff ff       	call   da09c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da491d:	48 83 fb 02          	cmp    rbx,0x2
  da4921:	0f 83 99 02 00 00    	jae    da4bc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1d00>
  da4927:	e9 a4 04 00 00       	jmp    da4dd0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1f10>
  da492c:	48 89 ee             	mov    rsi,rbp
  da492f:	4c 89 e2             	mov    rdx,r12
  da4932:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da4936:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da493b:	e8 40 22 fe ff       	call   d86b80 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da4940:	48 83 fb 02          	cmp    rbx,0x2
  da4944:	73 4a                	jae    da4990 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1ad0>
  da4946:	e9 85 04 00 00       	jmp    da4dd0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1f10>
  da494b:	48 89 ee             	mov    rsi,rbp
  da494e:	4c 89 e2             	mov    rdx,r12
  da4951:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da4955:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da495a:	e8 e1 60 fe ff       	call   d8aa40 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da495f:	48 83 fb 02          	cmp    rbx,0x2
  da4963:	0f 83 57 02 00 00    	jae    da4bc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1d00>
  da4969:	e9 62 04 00 00       	jmp    da4dd0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1f10>
  da496e:	48 89 ee             	mov    rsi,rbp
  da4971:	4c 89 e2             	mov    rdx,r12
  da4974:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da4978:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da497d:	e8 3e 91 fe ff       	call   d8dac0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da4982:	48 83 fb 02          	cmp    rbx,0x2
  da4986:	0f 82 44 04 00 00    	jb     da4dd0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1f10>
  da498c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  da4990:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
  da4995:	48 8b 18             	mov    rbx,QWORD PTR [rax]
  da4998:	4c 8b bc 24 00 02 00 	mov    r15,QWORD PTR [rsp+0x200]
  da499f:	00 
  da49a0:	4c 8b a4 24 08 02 00 	mov    r12,QWORD PTR [rsp+0x208]
  da49a7:	00 
  da49a8:	48 8b 44 24 78       	mov    rax,QWORD PTR [rsp+0x78]
  da49ad:	4c 8b b4 24 a0 00 00 	mov    r14,QWORD PTR [rsp+0xa0]
  da49b4:	00 
  da49b5:	eb 3d                	jmp    da49f4 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1b34>
  da49b7:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da49bc:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da49c3:	00 
  da49c4:	4c 89 f7             	mov    rdi,r14
  da49c7:	48 89 ee             	mov    rsi,rbp
  da49ca:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da49cf:	48 89 d9             	mov    rcx,rbx
  da49d2:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da49d9:	00 
  da49da:	e8 e1 c7 f1 ff       	call   cc11c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da49df:	90                   	nop
  da49e0:	49 0f af dd          	imul   rbx,r13
  da49e4:	49 83 c4 18          	add    r12,0x18
  da49e8:	48 89 e8             	mov    rax,rbp
  da49eb:	49 ff cf             	dec    r15
  da49ee:	0f 84 dc 03 00 00    	je     da4dd0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1f10>
  da49f4:	4c 89 f5             	mov    rbp,r14
  da49f7:	49 89 c6             	mov    r14,rax
  da49fa:	4d 8b 6c 24 f8       	mov    r13,QWORD PTR [r12-0x8]
  da49ff:	4d 8b 04 24          	mov    r8,QWORD PTR [r12]
  da4a03:	4c 03 44 24 30       	add    r8,QWORD PTR [rsp+0x30]
  da4a08:	4c 89 6c 24 48       	mov    QWORD PTR [rsp+0x48],r13
  da4a0d:	49 8d 45 fe          	lea    rax,[r13-0x2]
  da4a11:	48 83 f8 0e          	cmp    rax,0xe
  da4a15:	0f 87 9a 45 00 00    	ja     da8fb5 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x60f5>
  da4a1b:	48 8d 0d ae e5 2f ff 	lea    rcx,[rip+0xffffffffff2fe5ae]        # a2fd0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x30480>
  da4a22:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  da4a26:	48 01 c8             	add    rax,rcx
  da4a29:	ff e0                	jmp    rax
  da4a2b:	4c 89 f7             	mov    rdi,r14
  da4a2e:	48 89 ee             	mov    rsi,rbp
  da4a31:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da4a36:	48 89 d9             	mov    rcx,rbx
  da4a39:	e8 42 43 f1 ff       	call   cb8d80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da4a3e:	eb a0                	jmp    da49e0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1b20>
  da4a40:	4c 89 f7             	mov    rdi,r14
  da4a43:	48 89 ee             	mov    rsi,rbp
  da4a46:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da4a4b:	48 89 d9             	mov    rcx,rbx
  da4a4e:	e8 ad 8d f1 ff       	call   cbd800 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da4a53:	eb 8b                	jmp    da49e0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1b20>
  da4a55:	4c 89 f7             	mov    rdi,r14
  da4a58:	48 89 ee             	mov    rsi,rbp
  da4a5b:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da4a60:	48 89 d9             	mov    rcx,rbx
  da4a63:	e8 98 4c f1 ff       	call   cb9700 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da4a68:	e9 73 ff ff ff       	jmp    da49e0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1b20>
  da4a6d:	4c 89 f7             	mov    rdi,r14
  da4a70:	48 89 ee             	mov    rsi,rbp
  da4a73:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da4a78:	48 89 d9             	mov    rcx,rbx
  da4a7b:	e8 c0 a2 f1 ff       	call   cbed40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da4a80:	e9 5b ff ff ff       	jmp    da49e0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1b20>
  da4a85:	4c 89 f7             	mov    rdi,r14
  da4a88:	48 89 ee             	mov    rsi,rbp
  da4a8b:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da4a90:	48 89 d9             	mov    rcx,rbx
  da4a93:	e8 e8 70 f1 ff       	call   cbbb80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da4a98:	e9 43 ff ff ff       	jmp    da49e0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1b20>
  da4a9d:	4c 89 f7             	mov    rdi,r14
  da4aa0:	48 89 ee             	mov    rsi,rbp
  da4aa3:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da4aa8:	48 89 d9             	mov    rcx,rbx
  da4aab:	e8 50 46 f1 ff       	call   cb9100 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da4ab0:	e9 2b ff ff ff       	jmp    da49e0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1b20>
  da4ab5:	4c 89 f7             	mov    rdi,r14
  da4ab8:	48 89 ee             	mov    rsi,rbp
  da4abb:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da4ac0:	48 89 d9             	mov    rcx,rbx
  da4ac3:	e8 b8 48 f1 ff       	call   cb9380 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da4ac8:	e9 13 ff ff ff       	jmp    da49e0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1b20>
  da4acd:	4c 89 f7             	mov    rdi,r14
  da4ad0:	48 89 ee             	mov    rsi,rbp
  da4ad3:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da4ad8:	48 89 d9             	mov    rcx,rbx
  da4adb:	e8 20 5d f1 ff       	call   cba800 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da4ae0:	e9 fb fe ff ff       	jmp    da49e0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1b20>
  da4ae5:	4c 89 f7             	mov    rdi,r14
  da4ae8:	48 89 ee             	mov    rsi,rbp
  da4aeb:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da4af0:	48 89 d9             	mov    rcx,rbx
  da4af3:	e8 c8 43 f1 ff       	call   cb8ec0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da4af8:	e9 e3 fe ff ff       	jmp    da49e0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1b20>
  da4afd:	4c 89 f7             	mov    rdi,r14
  da4b00:	48 89 ee             	mov    rsi,rbp
  da4b03:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da4b08:	48 89 d9             	mov    rcx,rbx
  da4b0b:	e8 30 50 f1 ff       	call   cb9b40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da4b10:	e9 cb fe ff ff       	jmp    da49e0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1b20>
  da4b15:	4c 89 f7             	mov    rdi,r14
  da4b18:	48 89 ee             	mov    rsi,rbp
  da4b1b:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da4b20:	48 89 d9             	mov    rcx,rbx
  da4b23:	e8 18 b4 f1 ff       	call   cbff40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da4b28:	e9 b3 fe ff ff       	jmp    da49e0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1b20>
  da4b2d:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da4b32:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da4b39:	00 
  da4b3a:	4c 89 f7             	mov    rdi,r14
  da4b3d:	48 89 ee             	mov    rsi,rbp
  da4b40:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da4b45:	48 89 d9             	mov    rcx,rbx
  da4b48:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da4b4f:	00 
  da4b50:	e8 ab 56 f1 ff       	call   cba200 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da4b55:	e9 86 fe ff ff       	jmp    da49e0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1b20>
  da4b5a:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da4b5f:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da4b66:	00 
  da4b67:	4c 89 f7             	mov    rdi,r14
  da4b6a:	48 89 ee             	mov    rsi,rbp
  da4b6d:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da4b72:	48 89 d9             	mov    rcx,rbx
  da4b75:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da4b7c:	00 
  da4b7d:	e8 3e 80 f1 ff       	call   cbcbc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da4b82:	e9 59 fe ff ff       	jmp    da49e0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1b20>
  da4b87:	4c 89 f7             	mov    rdi,r14
  da4b8a:	48 89 ee             	mov    rsi,rbp
  da4b8d:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da4b92:	48 89 d9             	mov    rcx,rbx
  da4b95:	e8 a6 65 f1 ff       	call   cbb140 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da4b9a:	e9 41 fe ff ff       	jmp    da49e0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1b20>
  da4b9f:	48 89 ee             	mov    rsi,rbp
  da4ba2:	4c 89 e2             	mov    rdx,r12
  da4ba5:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da4ba9:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da4bae:	e8 0d 54 ff ff       	call   d99fc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da4bb3:	48 83 fb 02          	cmp    rbx,0x2
  da4bb7:	0f 82 13 02 00 00    	jb     da4dd0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1f10>
  da4bbd:	0f 1f 00             	nop    DWORD PTR [rax]
  da4bc0:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
  da4bc5:	48 8b 18             	mov    rbx,QWORD PTR [rax]
  da4bc8:	4c 8b bc 24 00 02 00 	mov    r15,QWORD PTR [rsp+0x200]
  da4bcf:	00 
  da4bd0:	4c 8b a4 24 08 02 00 	mov    r12,QWORD PTR [rsp+0x208]
  da4bd7:	00 
  da4bd8:	48 8b 44 24 78       	mov    rax,QWORD PTR [rsp+0x78]
  da4bdd:	4c 8b b4 24 a0 00 00 	mov    r14,QWORD PTR [rsp+0xa0]
  da4be4:	00 
  da4be5:	eb 3d                	jmp    da4c24 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1d64>
  da4be7:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da4bec:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da4bf3:	00 
  da4bf4:	4c 89 f7             	mov    rdi,r14
  da4bf7:	48 89 ee             	mov    rsi,rbp
  da4bfa:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da4bff:	48 89 d9             	mov    rcx,rbx
  da4c02:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da4c09:	00 
  da4c0a:	e8 b1 c5 f1 ff       	call   cc11c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da4c0f:	90                   	nop
  da4c10:	49 0f af dd          	imul   rbx,r13
  da4c14:	49 83 c4 18          	add    r12,0x18
  da4c18:	48 89 e8             	mov    rax,rbp
  da4c1b:	49 ff cf             	dec    r15
  da4c1e:	0f 84 ac 01 00 00    	je     da4dd0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1f10>
  da4c24:	4c 89 f5             	mov    rbp,r14
  da4c27:	49 89 c6             	mov    r14,rax
  da4c2a:	4d 8b 6c 24 f8       	mov    r13,QWORD PTR [r12-0x8]
  da4c2f:	4d 8b 04 24          	mov    r8,QWORD PTR [r12]
  da4c33:	4c 03 44 24 30       	add    r8,QWORD PTR [rsp+0x30]
  da4c38:	4c 89 6c 24 48       	mov    QWORD PTR [rsp+0x48],r13
  da4c3d:	49 8d 45 fe          	lea    rax,[r13-0x2]
  da4c41:	48 83 f8 0e          	cmp    rax,0xe
  da4c45:	0f 87 6a 43 00 00    	ja     da8fb5 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x60f5>
  da4c4b:	48 8d 0d 0a e3 2f ff 	lea    rcx,[rip+0xffffffffff2fe30a]        # a2f5c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x3040c>
  da4c52:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  da4c56:	48 01 c8             	add    rax,rcx
  da4c59:	ff e0                	jmp    rax
  da4c5b:	4c 89 f7             	mov    rdi,r14
  da4c5e:	48 89 ee             	mov    rsi,rbp
  da4c61:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da4c66:	48 89 d9             	mov    rcx,rbx
  da4c69:	e8 12 41 f1 ff       	call   cb8d80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da4c6e:	eb a0                	jmp    da4c10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1d50>
  da4c70:	4c 89 f7             	mov    rdi,r14
  da4c73:	48 89 ee             	mov    rsi,rbp
  da4c76:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da4c7b:	48 89 d9             	mov    rcx,rbx
  da4c7e:	e8 7d 8b f1 ff       	call   cbd800 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da4c83:	eb 8b                	jmp    da4c10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1d50>
  da4c85:	4c 89 f7             	mov    rdi,r14
  da4c88:	48 89 ee             	mov    rsi,rbp
  da4c8b:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da4c90:	48 89 d9             	mov    rcx,rbx
  da4c93:	e8 68 4a f1 ff       	call   cb9700 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da4c98:	e9 73 ff ff ff       	jmp    da4c10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1d50>
  da4c9d:	4c 89 f7             	mov    rdi,r14
  da4ca0:	48 89 ee             	mov    rsi,rbp
  da4ca3:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da4ca8:	48 89 d9             	mov    rcx,rbx
  da4cab:	e8 90 a0 f1 ff       	call   cbed40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da4cb0:	e9 5b ff ff ff       	jmp    da4c10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1d50>
  da4cb5:	4c 89 f7             	mov    rdi,r14
  da4cb8:	48 89 ee             	mov    rsi,rbp
  da4cbb:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da4cc0:	48 89 d9             	mov    rcx,rbx
  da4cc3:	e8 b8 6e f1 ff       	call   cbbb80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da4cc8:	e9 43 ff ff ff       	jmp    da4c10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1d50>
  da4ccd:	4c 89 f7             	mov    rdi,r14
  da4cd0:	48 89 ee             	mov    rsi,rbp
  da4cd3:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da4cd8:	48 89 d9             	mov    rcx,rbx
  da4cdb:	e8 20 44 f1 ff       	call   cb9100 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da4ce0:	e9 2b ff ff ff       	jmp    da4c10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1d50>
  da4ce5:	4c 89 f7             	mov    rdi,r14
  da4ce8:	48 89 ee             	mov    rsi,rbp
  da4ceb:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da4cf0:	48 89 d9             	mov    rcx,rbx
  da4cf3:	e8 88 46 f1 ff       	call   cb9380 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da4cf8:	e9 13 ff ff ff       	jmp    da4c10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1d50>
  da4cfd:	4c 89 f7             	mov    rdi,r14
  da4d00:	48 89 ee             	mov    rsi,rbp
  da4d03:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da4d08:	48 89 d9             	mov    rcx,rbx
  da4d0b:	e8 f0 5a f1 ff       	call   cba800 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da4d10:	e9 fb fe ff ff       	jmp    da4c10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1d50>
  da4d15:	4c 89 f7             	mov    rdi,r14
  da4d18:	48 89 ee             	mov    rsi,rbp
  da4d1b:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da4d20:	48 89 d9             	mov    rcx,rbx
  da4d23:	e8 98 41 f1 ff       	call   cb8ec0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da4d28:	e9 e3 fe ff ff       	jmp    da4c10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1d50>
  da4d2d:	4c 89 f7             	mov    rdi,r14
  da4d30:	48 89 ee             	mov    rsi,rbp
  da4d33:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da4d38:	48 89 d9             	mov    rcx,rbx
  da4d3b:	e8 00 4e f1 ff       	call   cb9b40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da4d40:	e9 cb fe ff ff       	jmp    da4c10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1d50>
  da4d45:	4c 89 f7             	mov    rdi,r14
  da4d48:	48 89 ee             	mov    rsi,rbp
  da4d4b:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da4d50:	48 89 d9             	mov    rcx,rbx
  da4d53:	e8 e8 b1 f1 ff       	call   cbff40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da4d58:	e9 b3 fe ff ff       	jmp    da4c10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1d50>
  da4d5d:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da4d62:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da4d69:	00 
  da4d6a:	4c 89 f7             	mov    rdi,r14
  da4d6d:	48 89 ee             	mov    rsi,rbp
  da4d70:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da4d75:	48 89 d9             	mov    rcx,rbx
  da4d78:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da4d7f:	00 
  da4d80:	e8 7b 54 f1 ff       	call   cba200 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da4d85:	e9 86 fe ff ff       	jmp    da4c10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1d50>
  da4d8a:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da4d8f:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da4d96:	00 
  da4d97:	4c 89 f7             	mov    rdi,r14
  da4d9a:	48 89 ee             	mov    rsi,rbp
  da4d9d:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da4da2:	48 89 d9             	mov    rcx,rbx
  da4da5:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da4dac:	00 
  da4dad:	e8 0e 7e f1 ff       	call   cbcbc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da4db2:	e9 59 fe ff ff       	jmp    da4c10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1d50>
  da4db7:	4c 89 f7             	mov    rdi,r14
  da4dba:	48 89 ee             	mov    rsi,rbp
  da4dbd:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da4dc2:	48 89 d9             	mov    rcx,rbx
  da4dc5:	e8 76 63 f1 ff       	call   cbb140 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da4dca:	e9 41 fe ff ff       	jmp    da4c10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1d50>
  da4dcf:	90                   	nop
  da4dd0:	80 bc 24 80 00 00 00 	cmp    BYTE PTR [rsp+0x80],0x0
  da4dd7:	00 
  da4dd8:	74 36                	je     da4e10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1f50>
  da4dda:	48 8b b4 24 d8 00 00 	mov    rsi,QWORD PTR [rsp+0xd8]
  da4de1:	00 
  da4de2:	48 85 f6             	test   rsi,rsi
  da4de5:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
  da4dea:	0f 84 78 42 00 00    	je     da9068 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x61a8>
  da4df0:	48 89 c8             	mov    rax,rcx
  da4df3:	48 09 f0             	or     rax,rsi
  da4df6:	48 c1 e8 20          	shr    rax,0x20
  da4dfa:	74 55                	je     da4e51 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1f91>
  da4dfc:	48 89 c8             	mov    rax,rcx
  da4dff:	31 d2                	xor    edx,edx
  da4e01:	48 f7 f6             	div    rsi
  da4e04:	48 85 c9             	test   rcx,rcx
  da4e07:	75 57                	jne    da4e60 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1fa0>
  da4e09:	e9 f2 f6 ff ff       	jmp    da4500 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1640>
  da4e0e:	66 90                	xchg   ax,ax
  da4e10:	48 83 7c 24 08 00    	cmp    QWORD PTR [rsp+0x8],0x0
  da4e16:	0f 84 e4 f6 ff ff    	je     da4500 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1640>
  da4e1c:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
  da4e21:	4c 8b 64 24 08       	mov    r12,QWORD PTR [rsp+0x8]
  da4e26:	49 0f af c4          	imul   rax,r12
  da4e2a:	48 8b 8c 24 88 00 00 	mov    rcx,QWORD PTR [rsp+0x88]
  da4e31:	00 
  da4e32:	48 8d 04 c1          	lea    rax,[rcx+rax*8]
  da4e36:	48 89 84 24 40 02 00 	mov    QWORD PTR [rsp+0x240],rax
  da4e3d:	00 
  da4e3e:	45 31 f6             	xor    r14d,r14d
  da4e41:	4c 8b ac 24 88 01 00 	mov    r13,QWORD PTR [rsp+0x188]
  da4e48:	00 
  da4e49:	45 31 ff             	xor    r15d,r15d
  da4e4c:	e9 17 03 00 00       	jmp    da5168 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x22a8>
  da4e51:	89 c8                	mov    eax,ecx
  da4e53:	31 d2                	xor    edx,edx
  da4e55:	f7 f6                	div    esi
  da4e57:	48 85 c9             	test   rcx,rcx
  da4e5a:	0f 84 a0 f6 ff ff    	je     da4500 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1640>
  da4e60:	48 8b 4c 24 40       	mov    rcx,QWORD PTR [rsp+0x40]
  da4e65:	48 01 c9             	add    rcx,rcx
  da4e68:	48 0f af c1          	imul   rax,rcx
  da4e6c:	48 0f af 8c 24 d8 00 	imul   rcx,QWORD PTR [rsp+0xd8]
  da4e73:	00 00 
  da4e75:	48 8b 94 24 30 02 00 	mov    rdx,QWORD PTR [rsp+0x230]
  da4e7c:	00 
  da4e7d:	48 8d 04 82          	lea    rax,[rdx+rax*4]
  da4e81:	48 8b 94 24 38 02 00 	mov    rdx,QWORD PTR [rsp+0x238]
  da4e88:	00 
  da4e89:	48 8d 14 8a          	lea    rdx,[rdx+rcx*4]
  da4e8d:	48 83 c5 70          	add    rbp,0x70
  da4e91:	48 8b b4 24 c8 00 00 	mov    rsi,QWORD PTR [rsp+0xc8]
  da4e98:	00 
  da4e99:	48 8b bc 24 88 01 00 	mov    rdi,QWORD PTR [rsp+0x188]
  da4ea0:	00 
  da4ea1:	45 31 c0             	xor    r8d,r8d
  da4ea4:	eb 47                	jmp    da4eed <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x202d>
  da4ea6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
  da4ead:	00 00 00 
  da4eb0:	44 0f 11 06          	movups XMMWORD PTR [rsi],xmm8
  da4eb4:	44 0f 11 4e 10       	movups XMMWORD PTR [rsi+0x10],xmm9
  da4eb9:	0f 11 76 20          	movups XMMWORD PTR [rsi+0x20],xmm6
  da4ebd:	0f 11 66 30          	movups XMMWORD PTR [rsi+0x30],xmm4
  da4ec1:	0f 11 7e 40          	movups XMMWORD PTR [rsi+0x40],xmm7
  da4ec5:	0f 11 46 50          	movups XMMWORD PTR [rsi+0x50],xmm0
  da4ec9:	0f 11 6e 60          	movups XMMWORD PTR [rsi+0x60],xmm5
  da4ecd:	0f 11 5e 70          	movups XMMWORD PTR [rsi+0x70],xmm3
  da4ed1:	48 ff cf             	dec    rdi
  da4ed4:	48 03 b4 24 98 00 00 	add    rsi,QWORD PTR [rsp+0x98]
  da4edb:	00 
  da4edc:	48 83 ed 80          	sub    rbp,0xffffffffffffff80
  da4ee0:	49 83 c0 04          	add    r8,0x4
  da4ee4:	48 85 ff             	test   rdi,rdi
  da4ee7:	0f 84 13 f6 ff ff    	je     da4500 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1640>
  da4eed:	4d 89 c1             	mov    r9,r8
  da4ef0:	48 8b 4c 24 28       	mov    rcx,QWORD PTR [rsp+0x28]
  da4ef5:	49 d3 e9             	shr    r9,cl
  da4ef8:	49 c1 e1 05          	shl    r9,0x5
  da4efc:	42 0f 10 04 08       	movups xmm0,XMMWORD PTR [rax+r9*1]
  da4f01:	42 0f 10 74 08 10    	movups xmm6,XMMWORD PTR [rax+r9*1+0x10]
  da4f07:	4c 89 c1             	mov    rcx,r8
  da4f0a:	48 23 4c 24 60       	and    rcx,QWORD PTR [rsp+0x60]
  da4f0f:	48 c1 e1 05          	shl    rcx,0x5
  da4f13:	0f 10 24 0a          	movups xmm4,XMMWORD PTR [rdx+rcx*1]
  da4f17:	0f 10 4c 0a 10       	movups xmm1,XMMWORD PTR [rdx+rcx*1+0x10]
  da4f1c:	0f 10 5c 0a 20       	movups xmm3,XMMWORD PTR [rdx+rcx*1+0x20]
  da4f21:	0f 10 54 0a 30       	movups xmm2,XMMWORD PTR [rdx+rcx*1+0x30]
  da4f26:	0f 28 ee             	movaps xmm5,xmm6
  da4f29:	0f 59 e9             	mulps  xmm5,xmm1
  da4f2c:	0f 28 f8             	movaps xmm7,xmm0
  da4f2f:	0f 59 fc             	mulps  xmm7,xmm4
  da4f32:	0f 5c fd             	subps  xmm7,xmm5
  da4f35:	0f 59 e6             	mulps  xmm4,xmm6
  da4f38:	0f 59 c8             	mulps  xmm1,xmm0
  da4f3b:	0f 58 cc             	addps  xmm1,xmm4
  da4f3e:	44 0f 10 4d 90       	movups xmm9,XMMWORD PTR [rbp-0x70]
  da4f43:	44 0f 10 55 a0       	movups xmm10,XMMWORD PTR [rbp-0x60]
  da4f48:	0f 10 6d b0          	movups xmm5,XMMWORD PTR [rbp-0x50]
  da4f4c:	44 0f 10 45 c0       	movups xmm8,XMMWORD PTR [rbp-0x40]
  da4f51:	41 0f 28 e1          	movaps xmm4,xmm9
  da4f55:	0f 59 e7             	mulps  xmm4,xmm7
  da4f58:	41 0f 59 fa          	mulps  xmm7,xmm10
  da4f5c:	44 0f 59 d1          	mulps  xmm10,xmm1
  da4f60:	41 0f 5c e2          	subps  xmm4,xmm10
  da4f64:	41 0f 59 c9          	mulps  xmm1,xmm9
  da4f68:	0f 58 cf             	addps  xmm1,xmm7
  da4f6b:	0f 28 fe             	movaps xmm7,xmm6
  da4f6e:	0f 59 fa             	mulps  xmm7,xmm2
  da4f71:	44 0f 28 c8          	movaps xmm9,xmm0
  da4f75:	44 0f 59 cb          	mulps  xmm9,xmm3
  da4f79:	44 0f 5c cf          	subps  xmm9,xmm7
  da4f7d:	0f 59 de             	mulps  xmm3,xmm6
  da4f80:	0f 59 d0             	mulps  xmm2,xmm0
  da4f83:	0f 58 d3             	addps  xmm2,xmm3
  da4f86:	0f 28 fd             	movaps xmm7,xmm5
  da4f89:	41 0f 59 f9          	mulps  xmm7,xmm9
  da4f8d:	45 0f 59 c8          	mulps  xmm9,xmm8
  da4f91:	44 0f 59 c2          	mulps  xmm8,xmm2
  da4f95:	41 0f 5c f8          	subps  xmm7,xmm8
  da4f99:	0f 59 d5             	mulps  xmm2,xmm5
  da4f9c:	41 0f 58 d1          	addps  xmm2,xmm9
  da4fa0:	44 0f 10 45 d0       	movups xmm8,XMMWORD PTR [rbp-0x30]
  da4fa5:	44 0f 10 4d e0       	movups xmm9,XMMWORD PTR [rbp-0x20]
  da4faa:	0f 10 6c 0a 40       	movups xmm5,XMMWORD PTR [rdx+rcx*1+0x40]
  da4faf:	0f 10 5c 0a 50       	movups xmm3,XMMWORD PTR [rdx+rcx*1+0x50]
  da4fb4:	44 0f 28 d6          	movaps xmm10,xmm6
  da4fb8:	44 0f 59 d3          	mulps  xmm10,xmm3
  da4fbc:	44 0f 28 d8          	movaps xmm11,xmm0
  da4fc0:	44 0f 59 dd          	mulps  xmm11,xmm5
  da4fc4:	45 0f 5c da          	subps  xmm11,xmm10
  da4fc8:	0f 59 ee             	mulps  xmm5,xmm6
  da4fcb:	0f 59 d8             	mulps  xmm3,xmm0
  da4fce:	0f 58 dd             	addps  xmm3,xmm5
  da4fd1:	41 0f 28 e8          	movaps xmm5,xmm8
  da4fd5:	41 0f 59 eb          	mulps  xmm5,xmm11
  da4fd9:	45 0f 59 d9          	mulps  xmm11,xmm9
  da4fdd:	44 0f 59 cb          	mulps  xmm9,xmm3
  da4fe1:	41 0f 5c e9          	subps  xmm5,xmm9
  da4fe5:	41 0f 59 d8          	mulps  xmm3,xmm8
  da4fe9:	41 0f 58 db          	addps  xmm3,xmm11
  da4fed:	44 0f 10 45 f0       	movups xmm8,XMMWORD PTR [rbp-0x10]
  da4ff2:	44 0f 10 4d 00       	movups xmm9,XMMWORD PTR [rbp+0x0]
  da4ff7:	44 0f 10 54 0a 60    	movups xmm10,XMMWORD PTR [rdx+rcx*1+0x60]
  da4ffd:	44 0f 10 5c 0a 70    	movups xmm11,XMMWORD PTR [rdx+rcx*1+0x70]
  da5003:	44 0f 28 e6          	movaps xmm12,xmm6
  da5007:	45 0f 59 e3          	mulps  xmm12,xmm11
  da500b:	44 0f 28 e8          	movaps xmm13,xmm0
  da500f:	45 0f 59 ea          	mulps  xmm13,xmm10
  da5013:	45 0f 5c ec          	subps  xmm13,xmm12
  da5017:	41 0f 59 f2          	mulps  xmm6,xmm10
  da501b:	41 0f 59 c3          	mulps  xmm0,xmm11
  da501f:	0f 58 c6             	addps  xmm0,xmm6
  da5022:	45 0f 28 d0          	movaps xmm10,xmm8
  da5026:	45 0f 59 d5          	mulps  xmm10,xmm13
  da502a:	45 0f 59 e9          	mulps  xmm13,xmm9
  da502e:	44 0f 59 c8          	mulps  xmm9,xmm0
  da5032:	45 0f 5c d1          	subps  xmm10,xmm9
  da5036:	41 0f 59 c0          	mulps  xmm0,xmm8
  da503a:	41 0f 58 c5          	addps  xmm0,xmm13
  da503e:	44 0f 28 cc          	movaps xmm9,xmm4
  da5042:	44 0f 14 cf          	unpcklps xmm9,xmm7
  da5046:	0f 28 f5             	movaps xmm6,xmm5
  da5049:	41 0f 14 f2          	unpcklps xmm6,xmm10
  da504d:	45 0f 28 c1          	movaps xmm8,xmm9
  da5051:	44 0f 16 c6          	movlhps xmm8,xmm6
  da5055:	41 0f 12 f1          	movhlps xmm6,xmm9
  da5059:	0f 15 e7             	unpckhps xmm4,xmm7
  da505c:	41 0f 15 ea          	unpckhps xmm5,xmm10
  da5060:	0f 28 fc             	movaps xmm7,xmm4
  da5063:	0f 16 fd             	movlhps xmm7,xmm5
  da5066:	0f 12 ec             	movhlps xmm5,xmm4
  da5069:	44 0f 28 d1          	movaps xmm10,xmm1
  da506d:	44 0f 14 d2          	unpcklps xmm10,xmm2
  da5071:	0f 28 e3             	movaps xmm4,xmm3
  da5074:	0f 14 e0             	unpcklps xmm4,xmm0
  da5077:	45 0f 28 ca          	movaps xmm9,xmm10
  da507b:	44 0f 16 cc          	movlhps xmm9,xmm4
  da507f:	41 0f 12 e2          	movhlps xmm4,xmm10
  da5083:	0f 15 ca             	unpckhps xmm1,xmm2
  da5086:	0f 15 d8             	unpckhps xmm3,xmm0
  da5089:	0f 28 c1             	movaps xmm0,xmm1
  da508c:	0f 16 c3             	movlhps xmm0,xmm3
  da508f:	0f 12 d9             	movhlps xmm3,xmm1
  da5092:	80 7c 24 20 00       	cmp    BYTE PTR [rsp+0x20],0x0
  da5097:	0f 84 13 fe ff ff    	je     da4eb0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1ff0>
  da509d:	48 8d 4e 10          	lea    rcx,[rsi+0x10]
  da50a1:	4c 8d 4e 20          	lea    r9,[rsi+0x20]
  da50a5:	4c 8d 56 30          	lea    r10,[rsi+0x30]
  da50a9:	4c 8d 5e 40          	lea    r11,[rsi+0x40]
  da50ad:	48 8d 5e 50          	lea    rbx,[rsi+0x50]
  da50b1:	4c 8d 76 60          	lea    r14,[rsi+0x60]
  da50b5:	4c 8d 7e 70          	lea    r15,[rsi+0x70]
  da50b9:	44 0f 2b 06          	movntps XMMWORD PTR [rsi],xmm8
  da50bd:	44 0f 2b 09          	movntps XMMWORD PTR [rcx],xmm9
  da50c1:	41 0f 2b 31          	movntps XMMWORD PTR [r9],xmm6
  da50c5:	41 0f 2b 22          	movntps XMMWORD PTR [r10],xmm4
  da50c9:	41 0f 2b 3b          	movntps XMMWORD PTR [r11],xmm7
  da50cd:	0f 2b 03             	movntps XMMWORD PTR [rbx],xmm0
  da50d0:	41 0f 2b 2e          	movntps XMMWORD PTR [r14],xmm5
  da50d4:	41 0f 2b 1f          	movntps XMMWORD PTR [r15],xmm3
  da50d8:	e9 f4 fd ff ff       	jmp    da4ed1 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2011>
  da50dd:	48 8b 84 24 28 02 00 	mov    rax,QWORD PTR [rsp+0x228]
  da50e4:	00 
  da50e5:	4c 01 f8             	add    rax,r15
  da50e8:	48 8b 8c 24 40 02 00 	mov    rcx,QWORD PTR [rsp+0x240]
  da50ef:	00 
  da50f0:	48 8d 3c c1          	lea    rdi,[rcx+rax*8]
  da50f4:	48 8d 84 24 10 01 00 	lea    rax,[rsp+0x110]
  da50fb:	00 
  da50fc:	0f 57 c0             	xorps  xmm0,xmm0
  da50ff:	0f 29 40 50          	movaps XMMWORD PTR [rax+0x50],xmm0
  da5103:	0f 29 40 40          	movaps XMMWORD PTR [rax+0x40],xmm0
  da5107:	0f 29 40 30          	movaps XMMWORD PTR [rax+0x30],xmm0
  da510b:	0f 29 40 20          	movaps XMMWORD PTR [rax+0x20],xmm0
  da510f:	0f 29 40 10          	movaps XMMWORD PTR [rax+0x10],xmm0
  da5113:	0f 29 00             	movaps XMMWORD PTR [rax],xmm0
  da5116:	45 0f 15 c8          	unpckhps xmm9,xmm8
  da511a:	45 0f 15 da          	unpckhps xmm11,xmm10
  da511e:	44 0f 29 8c 24 f0 00 	movaps XMMWORD PTR [rsp+0xf0],xmm9
  da5125:	00 00 
  da5127:	44 0f 29 9c 24 00 01 	movaps XMMWORD PTR [rsp+0x100],xmm11
  da512e:	00 00 
  da5130:	48 8d b4 24 f0 00 00 	lea    rsi,[rsp+0xf0]
  da5137:	00 
  da5138:	48 89 da             	mov    rdx,rbx
  da513b:	ff 15 9f 55 4a 00    	call   QWORD PTR [rip+0x4a559f]        # 124a6e0 <memcpy@GLIBC_2.14>
  da5141:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  da5148:	0f 1f 84 00 00 00 00 
  da514f:	00 
  da5150:	49 ff cd             	dec    r13
  da5153:	49 83 c4 fc          	add    r12,0xfffffffffffffffc
  da5157:	49 83 c6 20          	add    r14,0x20
  da515b:	49 83 c7 04          	add    r15,0x4
  da515f:	4d 85 ed             	test   r13,r13
  da5162:	0f 84 98 f3 ff ff    	je     da4500 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x1640>
  da5168:	48 8b 8c 24 b8 00 00 	mov    rcx,QWORD PTR [rsp+0xb8]
  da516f:	00 
  da5170:	4a 8d 04 39          	lea    rax,[rcx+r15*1]
  da5174:	49 83 fc 04          	cmp    r12,0x4
  da5178:	bb 04 00 00 00       	mov    ebx,0x4
  da517d:	49 0f 42 dc          	cmovb  rbx,r12
  da5181:	0f 57 c0             	xorps  xmm0,xmm0
  da5184:	48 85 c0             	test   rax,rax
  da5187:	74 77                	je     da5200 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2340>
  da5189:	46 0f 10 44 b5 00    	movups xmm8,XMMWORD PTR [rbp+r14*4+0x0]
  da518f:	42 0f 10 4c b5 10    	movups xmm1,XMMWORD PTR [rbp+r14*4+0x10]
  da5195:	48 8b 94 24 b0 00 00 	mov    rdx,QWORD PTR [rsp+0xb0]
  da519c:	00 
  da519d:	42 0f 10 54 b2 90    	movups xmm2,XMMWORD PTR [rdx+r14*4-0x70]
  da51a3:	42 0f 10 5c b2 a0    	movups xmm3,XMMWORD PTR [rdx+r14*4-0x60]
  da51a9:	0f 28 e1             	movaps xmm4,xmm1
  da51ac:	0f 59 e3             	mulps  xmm4,xmm3
  da51af:	45 0f 28 c8          	movaps xmm9,xmm8
  da51b3:	44 0f 59 ca          	mulps  xmm9,xmm2
  da51b7:	44 0f 5c cc          	subps  xmm9,xmm4
  da51bb:	0f 59 ca             	mulps  xmm1,xmm2
  da51be:	44 0f 59 c3          	mulps  xmm8,xmm3
  da51c2:	44 0f 58 c1          	addps  xmm8,xmm1
  da51c6:	49 83 fc 02          	cmp    r12,0x2
  da51ca:	73 64                	jae    da5230 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2370>
  da51cc:	0f 57 c9             	xorps  xmm1,xmm1
  da51cf:	45 0f 57 d2          	xorps  xmm10,xmm10
  da51d3:	0f 57 db             	xorps  xmm3,xmm3
  da51d6:	0f 57 d2             	xorps  xmm2,xmm2
  da51d9:	45 0f 57 db          	xorps  xmm11,xmm11
  da51dd:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
  da51e2:	48 39 04 24          	cmp    QWORD PTR [rsp],rax
  da51e6:	0f 84 64 ff ff ff    	je     da5150 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2290>
  da51ec:	e9 3f 01 00 00       	jmp    da5330 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2470>
  da51f1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  da51f8:	0f 1f 84 00 00 00 00 
  da51ff:	00 
  da5200:	0f 57 c9             	xorps  xmm1,xmm1
  da5203:	45 0f 57 d2          	xorps  xmm10,xmm10
  da5207:	45 0f 57 c0          	xorps  xmm8,xmm8
  da520b:	0f 57 db             	xorps  xmm3,xmm3
  da520e:	0f 57 d2             	xorps  xmm2,xmm2
  da5211:	45 0f 57 db          	xorps  xmm11,xmm11
  da5215:	45 0f 57 c9          	xorps  xmm9,xmm9
  da5219:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
  da521e:	48 39 04 24          	cmp    QWORD PTR [rsp],rax
  da5222:	0f 84 28 ff ff ff    	je     da5150 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2290>
  da5228:	e9 03 01 00 00       	jmp    da5330 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2470>
  da522d:	0f 1f 00             	nop    DWORD PTR [rax]
  da5230:	4a 8d 04 39          	lea    rax,[rcx+r15*1]
  da5234:	48 83 c0 02          	add    rax,0x2
  da5238:	42 0f 10 4c b5 20    	movups xmm1,XMMWORD PTR [rbp+r14*4+0x20]
  da523e:	42 0f 10 5c b5 30    	movups xmm3,XMMWORD PTR [rbp+r14*4+0x30]
  da5244:	42 0f 10 64 b2 b0    	movups xmm4,XMMWORD PTR [rdx+r14*4-0x50]
  da524a:	42 0f 10 6c b2 c0    	movups xmm5,XMMWORD PTR [rdx+r14*4-0x40]
  da5250:	0f 28 f3             	movaps xmm6,xmm3
  da5253:	0f 59 f5             	mulps  xmm6,xmm5
  da5256:	0f 28 d1             	movaps xmm2,xmm1
  da5259:	0f 59 d4             	mulps  xmm2,xmm4
  da525c:	0f 5c d6             	subps  xmm2,xmm6
  da525f:	0f 59 dc             	mulps  xmm3,xmm4
  da5262:	0f 59 cd             	mulps  xmm1,xmm5
  da5265:	0f 58 cb             	addps  xmm1,xmm3
  da5268:	48 85 c0             	test   rax,rax
  da526b:	0f 84 82 00 00 00    	je     da52f3 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2433>
  da5271:	4a 8d 04 39          	lea    rax,[rcx+r15*1]
  da5275:	48 83 c0 03          	add    rax,0x3
  da5279:	46 0f 10 54 b5 40    	movups xmm10,XMMWORD PTR [rbp+r14*4+0x40]
  da527f:	42 0f 10 5c b5 50    	movups xmm3,XMMWORD PTR [rbp+r14*4+0x50]
  da5285:	42 0f 10 64 b2 d0    	movups xmm4,XMMWORD PTR [rdx+r14*4-0x30]
  da528b:	42 0f 10 6c b2 e0    	movups xmm5,XMMWORD PTR [rdx+r14*4-0x20]
  da5291:	0f 28 f3             	movaps xmm6,xmm3
  da5294:	0f 59 f5             	mulps  xmm6,xmm5
  da5297:	45 0f 28 da          	movaps xmm11,xmm10
  da529b:	44 0f 59 dc          	mulps  xmm11,xmm4
  da529f:	44 0f 5c de          	subps  xmm11,xmm6
  da52a3:	0f 59 dc             	mulps  xmm3,xmm4
  da52a6:	44 0f 59 d5          	mulps  xmm10,xmm5
  da52aa:	44 0f 58 d3          	addps  xmm10,xmm3
  da52ae:	48 85 c0             	test   rax,rax
  da52b1:	74 5c                	je     da530f <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x244f>
  da52b3:	42 0f 10 44 b5 60    	movups xmm0,XMMWORD PTR [rbp+r14*4+0x60]
  da52b9:	42 0f 10 64 b5 70    	movups xmm4,XMMWORD PTR [rbp+r14*4+0x70]
  da52bf:	42 0f 10 6c b2 f0    	movups xmm5,XMMWORD PTR [rdx+r14*4-0x10]
  da52c5:	42 0f 10 34 b2       	movups xmm6,XMMWORD PTR [rdx+r14*4]
  da52ca:	0f 28 fc             	movaps xmm7,xmm4
  da52cd:	0f 59 fe             	mulps  xmm7,xmm6
  da52d0:	0f 28 d8             	movaps xmm3,xmm0
  da52d3:	0f 59 dd             	mulps  xmm3,xmm5
  da52d6:	0f 5c df             	subps  xmm3,xmm7
  da52d9:	0f 59 e5             	mulps  xmm4,xmm5
  da52dc:	0f 59 c6             	mulps  xmm0,xmm6
  da52df:	0f 58 c4             	addps  xmm0,xmm4
  da52e2:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
  da52e7:	48 39 04 24          	cmp    QWORD PTR [rsp],rax
  da52eb:	0f 84 5f fe ff ff    	je     da5150 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2290>
  da52f1:	eb 3d                	jmp    da5330 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2470>
  da52f3:	45 0f 57 d2          	xorps  xmm10,xmm10
  da52f7:	0f 57 db             	xorps  xmm3,xmm3
  da52fa:	45 0f 57 db          	xorps  xmm11,xmm11
  da52fe:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
  da5303:	48 39 04 24          	cmp    QWORD PTR [rsp],rax
  da5307:	0f 84 43 fe ff ff    	je     da5150 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2290>
  da530d:	eb 21                	jmp    da5330 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2470>
  da530f:	0f 57 db             	xorps  xmm3,xmm3
  da5312:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
  da5317:	48 39 04 24          	cmp    QWORD PTR [rsp],rax
  da531b:	0f 84 2f fe ff ff    	je     da5150 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2290>
  da5321:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  da5328:	0f 1f 84 00 00 00 00 
  da532f:	00 
  da5330:	41 0f 28 e1          	movaps xmm4,xmm9
  da5334:	0f 14 e2             	unpcklps xmm4,xmm2
  da5337:	41 0f 28 eb          	movaps xmm5,xmm11
  da533b:	0f 14 eb             	unpcklps xmm5,xmm3
  da533e:	44 0f 15 ca          	unpckhps xmm9,xmm2
  da5342:	44 0f 15 db          	unpckhps xmm11,xmm3
  da5346:	41 0f 28 f0          	movaps xmm6,xmm8
  da534a:	0f 14 f1             	unpcklps xmm6,xmm1
  da534d:	41 0f 28 da          	movaps xmm3,xmm10
  da5351:	0f 14 d8             	unpcklps xmm3,xmm0
  da5354:	44 0f 15 c1          	unpckhps xmm8,xmm1
  da5358:	44 0f 15 d0          	unpckhps xmm10,xmm0
  da535c:	48 c1 e3 03          	shl    rbx,0x3
  da5360:	0f 28 c4             	movaps xmm0,xmm4
  da5363:	0f 14 c6             	unpcklps xmm0,xmm6
  da5366:	0f 28 cd             	movaps xmm1,xmm5
  da5369:	0f 14 cb             	unpcklps xmm1,xmm3
  da536c:	49 83 fc 03          	cmp    r12,0x3
  da5370:	0f 86 9a 00 00 00    	jbe    da5410 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2550>
  da5376:	48 8b 44 24 58       	mov    rax,QWORD PTR [rsp+0x58]
  da537b:	42 0f 11 04 f8       	movups XMMWORD PTR [rax+r15*8],xmm0
  da5380:	42 0f 11 4c f8 10    	movups XMMWORD PTR [rax+r15*8+0x10],xmm1
  da5386:	48 83 7c 24 38 02    	cmp    QWORD PTR [rsp+0x38],0x2
  da538c:	0f 82 be fd ff ff    	jb     da5150 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2290>
  da5392:	0f 15 e6             	unpckhps xmm4,xmm6
  da5395:	0f 15 eb             	unpckhps xmm5,xmm3
  da5398:	48 8b 84 24 a8 00 00 	mov    rax,QWORD PTR [rsp+0xa8]
  da539f:	00 
  da53a0:	42 0f 11 24 f8       	movups XMMWORD PTR [rax+r15*8],xmm4
  da53a5:	42 0f 11 6c f8 10    	movups XMMWORD PTR [rax+r15*8+0x10],xmm5
  da53ab:	0f 84 9f fd ff ff    	je     da5150 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2290>
  da53b1:	41 0f 28 c1          	movaps xmm0,xmm9
  da53b5:	41 0f 14 c0          	unpcklps xmm0,xmm8
  da53b9:	41 0f 28 cb          	movaps xmm1,xmm11
  da53bd:	41 0f 14 ca          	unpcklps xmm1,xmm10
  da53c1:	48 8b 84 24 90 00 00 	mov    rax,QWORD PTR [rsp+0x90]
  da53c8:	00 
  da53c9:	42 0f 11 04 f8       	movups XMMWORD PTR [rax+r15*8],xmm0
  da53ce:	42 0f 11 4c f8 10    	movups XMMWORD PTR [rax+r15*8+0x10],xmm1
  da53d4:	48 83 7c 24 38 03    	cmp    QWORD PTR [rsp+0x38],0x3
  da53da:	0f 84 70 fd ff ff    	je     da5150 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2290>
  da53e0:	49 83 fc 03          	cmp    r12,0x3
  da53e4:	0f 86 f3 fc ff ff    	jbe    da50dd <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x221d>
  da53ea:	45 0f 15 c8          	unpckhps xmm9,xmm8
  da53ee:	45 0f 15 da          	unpckhps xmm11,xmm10
  da53f2:	48 8b 84 24 e8 00 00 	mov    rax,QWORD PTR [rsp+0xe8]
  da53f9:	00 
  da53fa:	46 0f 11 0c f8       	movups XMMWORD PTR [rax+r15*8],xmm9
  da53ff:	46 0f 11 5c f8 10    	movups XMMWORD PTR [rax+r15*8+0x10],xmm11
  da5405:	e9 46 fd ff ff       	jmp    da5150 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2290>
  da540a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  da5410:	48 8b 44 24 58       	mov    rax,QWORD PTR [rsp+0x58]
  da5415:	4a 8d 3c f8          	lea    rdi,[rax+r15*8]
  da5419:	48 8d 84 24 10 01 00 	lea    rax,[rsp+0x110]
  da5420:	00 
  da5421:	0f 57 d2             	xorps  xmm2,xmm2
  da5424:	0f 29 50 50          	movaps XMMWORD PTR [rax+0x50],xmm2
  da5428:	0f 29 50 40          	movaps XMMWORD PTR [rax+0x40],xmm2
  da542c:	0f 29 50 30          	movaps XMMWORD PTR [rax+0x30],xmm2
  da5430:	0f 29 50 20          	movaps XMMWORD PTR [rax+0x20],xmm2
  da5434:	0f 29 50 10          	movaps XMMWORD PTR [rax+0x10],xmm2
  da5438:	0f 29 10             	movaps XMMWORD PTR [rax],xmm2
  da543b:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da5442:	00 
  da5443:	0f 29 8c 24 00 01 00 	movaps XMMWORD PTR [rsp+0x100],xmm1
  da544a:	00 
  da544b:	48 8d b4 24 f0 00 00 	lea    rsi,[rsp+0xf0]
  da5452:	00 
  da5453:	48 89 da             	mov    rdx,rbx
  da5456:	44 0f 29 84 24 e0 01 	movaps XMMWORD PTR [rsp+0x1e0],xmm8
  da545d:	00 00 
  da545f:	44 0f 29 8c 24 d0 01 	movaps XMMWORD PTR [rsp+0x1d0],xmm9
  da5466:	00 00 
  da5468:	44 0f 29 94 24 b0 01 	movaps XMMWORD PTR [rsp+0x1b0],xmm10
  da546f:	00 00 
  da5471:	44 0f 29 9c 24 a0 01 	movaps XMMWORD PTR [rsp+0x1a0],xmm11
  da5478:	00 00 
  da547a:	0f 29 a4 24 70 01 00 	movaps XMMWORD PTR [rsp+0x170],xmm4
  da5481:	00 
  da5482:	0f 29 ac 24 c0 01 00 	movaps XMMWORD PTR [rsp+0x1c0],xmm5
  da5489:	00 
  da548a:	0f 29 9c 24 f0 01 00 	movaps XMMWORD PTR [rsp+0x1f0],xmm3
  da5491:	00 
  da5492:	0f 29 b4 24 10 02 00 	movaps XMMWORD PTR [rsp+0x210],xmm6
  da5499:	00 
  da549a:	ff 15 40 52 4a 00    	call   QWORD PTR [rip+0x4a5240]        # 124a6e0 <memcpy@GLIBC_2.14>
  da54a0:	0f 28 a4 24 10 02 00 	movaps xmm4,XMMWORD PTR [rsp+0x210]
  da54a7:	00 
  da54a8:	0f 28 9c 24 f0 01 00 	movaps xmm3,XMMWORD PTR [rsp+0x1f0]
  da54af:	00 
  da54b0:	0f 28 94 24 c0 01 00 	movaps xmm2,XMMWORD PTR [rsp+0x1c0]
  da54b7:	00 
  da54b8:	0f 28 8c 24 70 01 00 	movaps xmm1,XMMWORD PTR [rsp+0x170]
  da54bf:	00 
  da54c0:	48 83 7c 24 38 02    	cmp    QWORD PTR [rsp+0x38],0x2
  da54c6:	0f 82 84 fc ff ff    	jb     da5150 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2290>
  da54cc:	48 8b 84 24 a8 00 00 	mov    rax,QWORD PTR [rsp+0xa8]
  da54d3:	00 
  da54d4:	4a 8d 3c f8          	lea    rdi,[rax+r15*8]
  da54d8:	48 8d 84 24 10 01 00 	lea    rax,[rsp+0x110]
  da54df:	00 
  da54e0:	0f 57 c0             	xorps  xmm0,xmm0
  da54e3:	0f 29 40 50          	movaps XMMWORD PTR [rax+0x50],xmm0
  da54e7:	0f 29 40 40          	movaps XMMWORD PTR [rax+0x40],xmm0
  da54eb:	0f 29 40 30          	movaps XMMWORD PTR [rax+0x30],xmm0
  da54ef:	0f 29 40 20          	movaps XMMWORD PTR [rax+0x20],xmm0
  da54f3:	0f 29 40 10          	movaps XMMWORD PTR [rax+0x10],xmm0
  da54f7:	0f 29 00             	movaps XMMWORD PTR [rax],xmm0
  da54fa:	0f 15 cc             	unpckhps xmm1,xmm4
  da54fd:	0f 15 d3             	unpckhps xmm2,xmm3
  da5500:	0f 29 8c 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm1
  da5507:	00 
  da5508:	0f 29 94 24 00 01 00 	movaps XMMWORD PTR [rsp+0x100],xmm2
  da550f:	00 
  da5510:	48 8d b4 24 f0 00 00 	lea    rsi,[rsp+0xf0]
  da5517:	00 
  da5518:	48 89 da             	mov    rdx,rbx
  da551b:	ff 15 bf 51 4a 00    	call   QWORD PTR [rip+0x4a51bf]        # 124a6e0 <memcpy@GLIBC_2.14>
  da5521:	0f 28 a4 24 a0 01 00 	movaps xmm4,XMMWORD PTR [rsp+0x1a0]
  da5528:	00 
  da5529:	0f 28 9c 24 b0 01 00 	movaps xmm3,XMMWORD PTR [rsp+0x1b0]
  da5530:	00 
  da5531:	0f 28 94 24 d0 01 00 	movaps xmm2,XMMWORD PTR [rsp+0x1d0]
  da5538:	00 
  da5539:	0f 28 8c 24 e0 01 00 	movaps xmm1,XMMWORD PTR [rsp+0x1e0]
  da5540:	00 
  da5541:	48 83 7c 24 38 02    	cmp    QWORD PTR [rsp+0x38],0x2
  da5547:	0f 84 03 fc ff ff    	je     da5150 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2290>
  da554d:	48 8b 84 24 90 00 00 	mov    rax,QWORD PTR [rsp+0x90]
  da5554:	00 
  da5555:	4a 8d 3c f8          	lea    rdi,[rax+r15*8]
  da5559:	48 8d 84 24 10 01 00 	lea    rax,[rsp+0x110]
  da5560:	00 
  da5561:	0f 57 c0             	xorps  xmm0,xmm0
  da5564:	0f 29 40 50          	movaps XMMWORD PTR [rax+0x50],xmm0
  da5568:	0f 29 40 40          	movaps XMMWORD PTR [rax+0x40],xmm0
  da556c:	0f 29 40 30          	movaps XMMWORD PTR [rax+0x30],xmm0
  da5570:	0f 29 40 20          	movaps XMMWORD PTR [rax+0x20],xmm0
  da5574:	0f 29 40 10          	movaps XMMWORD PTR [rax+0x10],xmm0
  da5578:	0f 29 00             	movaps XMMWORD PTR [rax],xmm0
  da557b:	0f 28 c2             	movaps xmm0,xmm2
  da557e:	0f 14 c1             	unpcklps xmm0,xmm1
  da5581:	0f 28 cc             	movaps xmm1,xmm4
  da5584:	0f 14 cb             	unpcklps xmm1,xmm3
  da5587:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da558e:	00 
  da558f:	0f 29 8c 24 00 01 00 	movaps XMMWORD PTR [rsp+0x100],xmm1
  da5596:	00 
  da5597:	48 8d b4 24 f0 00 00 	lea    rsi,[rsp+0xf0]
  da559e:	00 
  da559f:	48 89 da             	mov    rdx,rbx
  da55a2:	ff 15 38 51 4a 00    	call   QWORD PTR [rip+0x4a5138]        # 124a6e0 <memcpy@GLIBC_2.14>
  da55a8:	44 0f 28 9c 24 a0 01 	movaps xmm11,XMMWORD PTR [rsp+0x1a0]
  da55af:	00 00 
  da55b1:	44 0f 28 94 24 b0 01 	movaps xmm10,XMMWORD PTR [rsp+0x1b0]
  da55b8:	00 00 
  da55ba:	44 0f 28 8c 24 d0 01 	movaps xmm9,XMMWORD PTR [rsp+0x1d0]
  da55c1:	00 00 
  da55c3:	44 0f 28 84 24 e0 01 	movaps xmm8,XMMWORD PTR [rsp+0x1e0]
  da55ca:	00 00 
  da55cc:	48 83 7c 24 38 03    	cmp    QWORD PTR [rsp+0x38],0x3
  da55d2:	0f 84 78 fb ff ff    	je     da5150 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2290>
  da55d8:	48 8b 84 24 e8 00 00 	mov    rax,QWORD PTR [rsp+0xe8]
  da55df:	00 
  da55e0:	4a 8d 3c 30          	lea    rdi,[rax+r14*1]
  da55e4:	e9 0b fb ff ff       	jmp    da50f4 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2234>
  da55e9:	80 7c 24 20 00       	cmp    BYTE PTR [rsp+0x20],0x0
  da55ee:	74 47                	je     da5637 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2777>
  da55f0:	0f ae f8             	sfence
  da55f3:	f6 84 24 c0 00 00 00 	test   BYTE PTR [rsp+0xc0],0x3f
  da55fa:	3f 
  da55fb:	0f 94 c0             	sete   al
  da55fe:	89 44 24 38          	mov    DWORD PTR [rsp+0x38],eax
  da5602:	4d 85 e4             	test   r12,r12
  da5605:	75 41                	jne    da5648 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2788>
  da5607:	e9 41 1e 00 00       	jmp    da744d <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x458d>
  da560c:	80 7c 24 20 00       	cmp    BYTE PTR [rsp+0x20],0x0
  da5611:	0f 84 26 0f 00 00    	je     da653d <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x367d>
  da5617:	0f ae f8             	sfence
  da561a:	f6 84 24 c0 00 00 00 	test   BYTE PTR [rsp+0xc0],0x3f
  da5621:	3f 
  da5622:	0f 94 c0             	sete   al
  da5625:	89 44 24 38          	mov    DWORD PTR [rsp+0x38],eax
  da5629:	4d 85 e4             	test   r12,r12
  da562c:	0f 85 1c 0f 00 00    	jne    da654e <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x368e>
  da5632:	e9 16 1e 00 00       	jmp    da744d <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x458d>
  da5637:	c7 44 24 38 00 00 00 	mov    DWORD PTR [rsp+0x38],0x0
  da563e:	00 
  da563f:	4d 85 e4             	test   r12,r12
  da5642:	0f 84 05 1e 00 00    	je     da744d <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x458d>
  da5648:	48 8d 04 5b          	lea    rax,[rbx+rbx*2]
  da564c:	4c 89 e6             	mov    rsi,r12
  da564f:	48 c1 ee 02          	shr    rsi,0x2
  da5653:	44 89 e1             	mov    ecx,r12d
  da5656:	83 e1 03             	and    ecx,0x3
  da5659:	48 83 f9 01          	cmp    rcx,0x1
  da565d:	48 83 de ff          	sbb    rsi,0xffffffffffffffff
  da5661:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  da5666:	48 8d 14 c1          	lea    rdx,[rcx+rax*8]
  da566a:	48 89 54 24 60       	mov    QWORD PTR [rsp+0x60],rdx
  da566f:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da5673:	48 01 d2             	add    rdx,rdx
  da5676:	48 89 94 24 b0 00 00 	mov    QWORD PTR [rsp+0xb0],rdx
  da567d:	00 
  da567e:	48 8d 44 c1 20       	lea    rax,[rcx+rax*8+0x20]
  da5683:	48 89 44 24 58       	mov    QWORD PTR [rsp+0x58],rax
  da5688:	48 8b 44 24 50       	mov    rax,QWORD PTR [rsp+0x50]
  da568d:	48 ff c8             	dec    rax
  da5690:	48 89 84 24 70 01 00 	mov    QWORD PTR [rsp+0x170],rax
  da5697:	00 
  da5698:	4a 8d 04 e5 00 00 00 	lea    rax,[r12*8+0x0]
  da569f:	00 
  da56a0:	48 89 84 24 98 00 00 	mov    QWORD PTR [rsp+0x98],rax
  da56a7:	00 
  da56a8:	45 31 c0             	xor    r8d,r8d
  da56ab:	eb 2e                	jmp    da56db <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x281b>
  da56ad:	0f 1f 00             	nop    DWORD PTR [rax]
  da56b0:	4c 8b 44 24 28       	mov    r8,QWORD PTR [rsp+0x28]
  da56b5:	49 83 c0 04          	add    r8,0x4
  da56b9:	48 8b b4 24 b8 00 00 	mov    rsi,QWORD PTR [rsp+0xb8]
  da56c0:	00 
  da56c1:	48 ff ce             	dec    rsi
  da56c4:	48 83 84 24 c0 00 00 	add    QWORD PTR [rsp+0xc0],0x20
  da56cb:	00 20 
  da56cd:	48 85 f6             	test   rsi,rsi
  da56d0:	48 8b 6c 24 78       	mov    rbp,QWORD PTR [rsp+0x78]
  da56d5:	0f 84 72 1d 00 00    	je     da744d <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x458d>
  da56db:	4c 89 e0             	mov    rax,r12
  da56de:	4c 29 c0             	sub    rax,r8
  da56e1:	48 89 44 24 40       	mov    QWORD PTR [rsp+0x40],rax
  da56e6:	48 83 f8 04          	cmp    rax,0x4
  da56ea:	b9 04 00 00 00       	mov    ecx,0x4
  da56ef:	48 0f 42 c8          	cmovb  rcx,rax
  da56f3:	48 89 4c 24 20       	mov    QWORD PTR [rsp+0x20],rcx
  da56f8:	80 bc 24 80 00 00 00 	cmp    BYTE PTR [rsp+0x80],0x0
  da56ff:	00 
  da5700:	48 89 b4 24 b8 00 00 	mov    QWORD PTR [rsp+0xb8],rsi
  da5707:	00 
  da5708:	4c 89 44 24 28       	mov    QWORD PTR [rsp+0x28],r8
  da570d:	74 71                	je     da5780 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x28c0>
  da570f:	48 83 7c 24 50 00    	cmp    QWORD PTR [rsp+0x50],0x0
  da5715:	0f 84 3d 39 00 00    	je     da9058 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6198>
  da571b:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
  da5720:	48 8b 00             	mov    rax,QWORD PTR [rax]
  da5723:	48 83 c0 fe          	add    rax,0xfffffffffffffffe
  da5727:	48 83 f8 0d          	cmp    rax,0xd
  da572b:	0f 87 eb 38 00 00    	ja     da901c <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x615c>
  da5731:	48 8b 8c 24 b0 00 00 	mov    rcx,QWORD PTR [rsp+0xb0]
  da5738:	00 
  da5739:	49 0f af c8          	imul   rcx,r8
  da573d:	48 8b 94 24 88 00 00 	mov    rdx,QWORD PTR [rsp+0x88]
  da5744:	00 
  da5745:	48 8d 3c 8a          	lea    rdi,[rdx+rcx*4]
  da5749:	48 8d 0d a4 d9 2f ff 	lea    rcx,[rip+0xffffffffff2fd9a4]        # a30f4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x305a4>
  da5750:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  da5754:	48 01 c8             	add    rax,rcx
  da5757:	ff e0                	jmp    rax
  da5759:	48 89 ee             	mov    rsi,rbp
  da575c:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da5760:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da5765:	e8 d6 c5 ff ff       	call   da1d40 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da576a:	49 89 ee             	mov    r14,rbp
  da576d:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da5773:	0f 83 97 02 00 00    	jae    da5a10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2b50>
  da5779:	e9 b2 0c 00 00       	jmp    da6430 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da577e:	66 90                	xchg   ax,ax
  da5780:	48 8b 84 24 88 00 00 	mov    rax,QWORD PTR [rsp+0x88]
  da5787:	00 
  da5788:	4a 8d 3c c0          	lea    rdi,[rax+r8*8]
  da578c:	48 83 7c 24 40 03    	cmp    QWORD PTR [rsp+0x40],0x3
  da5792:	76 5c                	jbe    da57f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2930>
  da5794:	48 83 7c 24 50 00    	cmp    QWORD PTR [rsp+0x50],0x0
  da579a:	0f 84 b8 38 00 00    	je     da9058 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6198>
  da57a0:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
  da57a5:	48 8b 00             	mov    rax,QWORD PTR [rax]
  da57a8:	48 83 c0 fe          	add    rax,0xfffffffffffffffe
  da57ac:	48 83 f8 0d          	cmp    rax,0xd
  da57b0:	0f 87 66 38 00 00    	ja     da901c <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x615c>
  da57b6:	48 8d 0d c3 d8 2f ff 	lea    rcx,[rip+0xffffffffff2fd8c3]        # a3080 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x30530>
  da57bd:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  da57c1:	48 01 c8             	add    rax,rcx
  da57c4:	ff e0                	jmp    rax
  da57c6:	48 89 ee             	mov    rsi,rbp
  da57c9:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da57cd:	4c 89 e1             	mov    rcx,r12
  da57d0:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da57d5:	e8 26 94 fe ff       	call   d8ec00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da57da:	49 89 ee             	mov    r14,rbp
  da57dd:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da57e3:	0f 83 1a 08 00 00    	jae    da6003 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3143>
  da57e9:	e9 42 0c 00 00       	jmp    da6430 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da57ee:	66 90                	xchg   ax,ax
  da57f0:	48 83 7c 24 50 00    	cmp    QWORD PTR [rsp+0x50],0x0
  da57f6:	0f 84 5c 38 00 00    	je     da9058 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6198>
  da57fc:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
  da5801:	48 8b 00             	mov    rax,QWORD PTR [rax]
  da5804:	48 83 c0 fe          	add    rax,0xfffffffffffffffe
  da5808:	48 83 f8 0d          	cmp    rax,0xd
  da580c:	0f 87 0a 38 00 00    	ja     da901c <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x615c>
  da5812:	48 8d 0d f3 d7 2f ff 	lea    rcx,[rip+0xffffffffff2fd7f3]        # a300c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x304bc>
  da5819:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  da581d:	48 01 c8             	add    rax,rcx
  da5820:	ff e0                	jmp    rax
  da5822:	48 89 ee             	mov    rsi,rbp
  da5825:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da5829:	4c 89 e1             	mov    rcx,r12
  da582c:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  da5831:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da5836:	e8 45 fd fd ff       	call   d85580 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da583b:	49 89 ee             	mov    r14,rbp
  da583e:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da5844:	0f 83 de 09 00 00    	jae    da6228 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3368>
  da584a:	e9 e1 0b 00 00       	jmp    da6430 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da584f:	48 89 ee             	mov    rsi,rbp
  da5852:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da5856:	e8 25 ae fe ff       	call   d90680 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da585b:	49 89 ee             	mov    r14,rbp
  da585e:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da5864:	0f 83 a6 01 00 00    	jae    da5a10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2b50>
  da586a:	e9 c1 0b 00 00       	jmp    da6430 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da586f:	48 89 ee             	mov    rsi,rbp
  da5872:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da5876:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da587b:	e8 80 74 fe ff       	call   d8cd00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da5880:	49 89 ee             	mov    r14,rbp
  da5883:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da5889:	0f 83 81 01 00 00    	jae    da5a10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2b50>
  da588f:	e9 9c 0b 00 00       	jmp    da6430 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da5894:	48 89 ee             	mov    rsi,rbp
  da5897:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da589b:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da58a0:	e8 9b b8 ff ff       	call   da1140 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da58a5:	49 89 ee             	mov    r14,rbp
  da58a8:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da58ae:	0f 83 5c 01 00 00    	jae    da5a10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2b50>
  da58b4:	e9 77 0b 00 00       	jmp    da6430 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da58b9:	48 89 ee             	mov    rsi,rbp
  da58bc:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da58c0:	e8 bb 76 fe ff       	call   d8cf80 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da58c5:	49 89 ee             	mov    r14,rbp
  da58c8:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da58ce:	0f 83 3c 01 00 00    	jae    da5a10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2b50>
  da58d4:	e9 57 0b 00 00       	jmp    da6430 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da58d9:	48 89 ee             	mov    rsi,rbp
  da58dc:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da58e0:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da58e5:	e8 d6 f9 fd ff       	call   d852c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da58ea:	49 89 ee             	mov    r14,rbp
  da58ed:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da58f3:	0f 83 17 01 00 00    	jae    da5a10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2b50>
  da58f9:	e9 32 0b 00 00       	jmp    da6430 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da58fe:	48 89 ee             	mov    rsi,rbp
  da5901:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da5905:	e8 76 44 ff ff       	call   d99d80 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da590a:	49 89 ee             	mov    r14,rbp
  da590d:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da5913:	0f 83 f7 00 00 00    	jae    da5a10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2b50>
  da5919:	e9 12 0b 00 00       	jmp    da6430 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da591e:	48 89 ee             	mov    rsi,rbp
  da5921:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da5925:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da592a:	e8 91 26 ff ff       	call   d97fc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da592f:	49 89 ee             	mov    r14,rbp
  da5932:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da5938:	0f 83 d2 00 00 00    	jae    da5a10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2b50>
  da593e:	e9 ed 0a 00 00       	jmp    da6430 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da5943:	48 89 ee             	mov    rsi,rbp
  da5946:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da594a:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da594f:	e8 6c 26 fe ff       	call   d87fc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da5954:	49 89 ee             	mov    r14,rbp
  da5957:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da595d:	0f 83 ad 00 00 00    	jae    da5a10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2b50>
  da5963:	e9 c8 0a 00 00       	jmp    da6430 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da5968:	48 89 ee             	mov    rsi,rbp
  da596b:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da596f:	e8 cc ed fe ff       	call   d94740 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da5974:	49 89 ee             	mov    r14,rbp
  da5977:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da597d:	0f 83 8d 00 00 00    	jae    da5a10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2b50>
  da5983:	e9 a8 0a 00 00       	jmp    da6430 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da5988:	48 89 ee             	mov    rsi,rbp
  da598b:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da598f:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da5994:	e8 a7 3b fe ff       	call   d89540 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da5999:	49 89 ee             	mov    r14,rbp
  da599c:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da59a2:	73 6c                	jae    da5a10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2b50>
  da59a4:	e9 87 0a 00 00       	jmp    da6430 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da59a9:	48 89 ee             	mov    rsi,rbp
  da59ac:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da59b0:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da59b5:	e8 46 b5 fd ff       	call   d80f00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da59ba:	49 89 ee             	mov    r14,rbp
  da59bd:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da59c3:	73 4b                	jae    da5a10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2b50>
  da59c5:	e9 66 0a 00 00       	jmp    da6430 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da59ca:	48 89 ee             	mov    rsi,rbp
  da59cd:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da59d1:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da59d6:	e8 65 3c ff ff       	call   d99640 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da59db:	49 89 ee             	mov    r14,rbp
  da59de:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da59e4:	73 2a                	jae    da5a10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2b50>
  da59e6:	e9 45 0a 00 00       	jmp    da6430 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da59eb:	48 89 ee             	mov    rsi,rbp
  da59ee:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da59f2:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da59f7:	e8 c4 bc fe ff       	call   d916c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da59fc:	49 89 ee             	mov    r14,rbp
  da59ff:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da5a05:	0f 82 25 0a 00 00    	jb     da6430 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da5a0b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  da5a10:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
  da5a15:	48 8b 18             	mov    rbx,QWORD PTR [rax]
  da5a18:	4c 8b a4 24 70 01 00 	mov    r12,QWORD PTR [rsp+0x170]
  da5a1f:	00 
  da5a20:	4c 8b 6c 24 58       	mov    r13,QWORD PTR [rsp+0x58]
  da5a25:	48 8b 44 24 78       	mov    rax,QWORD PTR [rsp+0x78]
  da5a2a:	4c 8b bc 24 a0 00 00 	mov    r15,QWORD PTR [rsp+0xa0]
  da5a31:	00 
  da5a32:	eb 40                	jmp    da5a74 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2bb4>
  da5a34:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da5a39:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da5a40:	00 
  da5a41:	4c 89 ff             	mov    rdi,r15
  da5a44:	4c 89 f6             	mov    rsi,r14
  da5a47:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da5a4b:	48 89 d9             	mov    rcx,rbx
  da5a4e:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da5a55:	00 
  da5a56:	e8 65 b7 f1 ff       	call   cc11c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da5a5b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  da5a60:	48 0f af dd          	imul   rbx,rbp
  da5a64:	49 83 c5 18          	add    r13,0x18
  da5a68:	4c 89 f0             	mov    rax,r14
  da5a6b:	49 ff cc             	dec    r12
  da5a6e:	0f 84 bc 09 00 00    	je     da6430 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da5a74:	4d 89 fe             	mov    r14,r15
  da5a77:	49 89 c7             	mov    r15,rax
  da5a7a:	49 8b 6d f8          	mov    rbp,QWORD PTR [r13-0x8]
  da5a7e:	4d 8b 45 00          	mov    r8,QWORD PTR [r13+0x0]
  da5a82:	4c 03 44 24 30       	add    r8,QWORD PTR [rsp+0x30]
  da5a87:	48 89 6c 24 48       	mov    QWORD PTR [rsp+0x48],rbp
  da5a8c:	48 8d 45 fe          	lea    rax,[rbp-0x2]
  da5a90:	48 83 f8 0e          	cmp    rax,0xe
  da5a94:	0f 87 1b 35 00 00    	ja     da8fb5 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x60f5>
  da5a9a:	48 8d 0d 8b d6 2f ff 	lea    rcx,[rip+0xffffffffff2fd68b]        # a312c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x305dc>
  da5aa1:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  da5aa5:	48 01 c8             	add    rax,rcx
  da5aa8:	ff e0                	jmp    rax
  da5aaa:	4c 89 ff             	mov    rdi,r15
  da5aad:	4c 89 f6             	mov    rsi,r14
  da5ab0:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da5ab4:	48 89 d9             	mov    rcx,rbx
  da5ab7:	e8 c4 32 f1 ff       	call   cb8d80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da5abc:	eb a2                	jmp    da5a60 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2ba0>
  da5abe:	4c 89 ff             	mov    rdi,r15
  da5ac1:	4c 89 f6             	mov    rsi,r14
  da5ac4:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da5ac8:	48 89 d9             	mov    rcx,rbx
  da5acb:	e8 30 7d f1 ff       	call   cbd800 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da5ad0:	eb 8e                	jmp    da5a60 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2ba0>
  da5ad2:	4c 89 ff             	mov    rdi,r15
  da5ad5:	4c 89 f6             	mov    rsi,r14
  da5ad8:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da5adc:	48 89 d9             	mov    rcx,rbx
  da5adf:	e8 1c 3c f1 ff       	call   cb9700 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da5ae4:	e9 77 ff ff ff       	jmp    da5a60 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2ba0>
  da5ae9:	4c 89 ff             	mov    rdi,r15
  da5aec:	4c 89 f6             	mov    rsi,r14
  da5aef:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da5af3:	48 89 d9             	mov    rcx,rbx
  da5af6:	e8 45 92 f1 ff       	call   cbed40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da5afb:	e9 60 ff ff ff       	jmp    da5a60 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2ba0>
  da5b00:	4c 89 ff             	mov    rdi,r15
  da5b03:	4c 89 f6             	mov    rsi,r14
  da5b06:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da5b0a:	48 89 d9             	mov    rcx,rbx
  da5b0d:	e8 6e 60 f1 ff       	call   cbbb80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da5b12:	e9 49 ff ff ff       	jmp    da5a60 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2ba0>
  da5b17:	4c 89 ff             	mov    rdi,r15
  da5b1a:	4c 89 f6             	mov    rsi,r14
  da5b1d:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da5b21:	48 89 d9             	mov    rcx,rbx
  da5b24:	e8 d7 35 f1 ff       	call   cb9100 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da5b29:	e9 32 ff ff ff       	jmp    da5a60 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2ba0>
  da5b2e:	4c 89 ff             	mov    rdi,r15
  da5b31:	4c 89 f6             	mov    rsi,r14
  da5b34:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da5b38:	48 89 d9             	mov    rcx,rbx
  da5b3b:	e8 40 38 f1 ff       	call   cb9380 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da5b40:	e9 1b ff ff ff       	jmp    da5a60 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2ba0>
  da5b45:	4c 89 ff             	mov    rdi,r15
  da5b48:	4c 89 f6             	mov    rsi,r14
  da5b4b:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da5b4f:	48 89 d9             	mov    rcx,rbx
  da5b52:	e8 a9 4c f1 ff       	call   cba800 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da5b57:	e9 04 ff ff ff       	jmp    da5a60 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2ba0>
  da5b5c:	4c 89 ff             	mov    rdi,r15
  da5b5f:	4c 89 f6             	mov    rsi,r14
  da5b62:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da5b66:	48 89 d9             	mov    rcx,rbx
  da5b69:	e8 52 33 f1 ff       	call   cb8ec0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da5b6e:	e9 ed fe ff ff       	jmp    da5a60 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2ba0>
  da5b73:	4c 89 ff             	mov    rdi,r15
  da5b76:	4c 89 f6             	mov    rsi,r14
  da5b79:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da5b7d:	48 89 d9             	mov    rcx,rbx
  da5b80:	e8 bb 3f f1 ff       	call   cb9b40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da5b85:	e9 d6 fe ff ff       	jmp    da5a60 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2ba0>
  da5b8a:	4c 89 ff             	mov    rdi,r15
  da5b8d:	4c 89 f6             	mov    rsi,r14
  da5b90:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da5b94:	48 89 d9             	mov    rcx,rbx
  da5b97:	e8 a4 a3 f1 ff       	call   cbff40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da5b9c:	e9 bf fe ff ff       	jmp    da5a60 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2ba0>
  da5ba1:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da5ba6:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da5bad:	00 
  da5bae:	4c 89 ff             	mov    rdi,r15
  da5bb1:	4c 89 f6             	mov    rsi,r14
  da5bb4:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da5bb8:	48 89 d9             	mov    rcx,rbx
  da5bbb:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da5bc2:	00 
  da5bc3:	e8 38 46 f1 ff       	call   cba200 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da5bc8:	e9 93 fe ff ff       	jmp    da5a60 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2ba0>
  da5bcd:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da5bd2:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da5bd9:	00 
  da5bda:	4c 89 ff             	mov    rdi,r15
  da5bdd:	4c 89 f6             	mov    rsi,r14
  da5be0:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da5be4:	48 89 d9             	mov    rcx,rbx
  da5be7:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da5bee:	00 
  da5bef:	e8 cc 6f f1 ff       	call   cbcbc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da5bf4:	e9 67 fe ff ff       	jmp    da5a60 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2ba0>
  da5bf9:	4c 89 ff             	mov    rdi,r15
  da5bfc:	4c 89 f6             	mov    rsi,r14
  da5bff:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da5c03:	48 89 d9             	mov    rcx,rbx
  da5c06:	e8 35 55 f1 ff       	call   cbb140 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da5c0b:	e9 50 fe ff ff       	jmp    da5a60 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x2ba0>
  da5c10:	48 89 ee             	mov    rsi,rbp
  da5c13:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da5c17:	4c 89 e1             	mov    rcx,r12
  da5c1a:	e8 a1 c1 ff ff       	call   da1dc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da5c1f:	49 89 ee             	mov    r14,rbp
  da5c22:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da5c28:	0f 83 d5 03 00 00    	jae    da6003 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3143>
  da5c2e:	e9 fd 07 00 00       	jmp    da6430 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da5c33:	48 89 ee             	mov    rsi,rbp
  da5c36:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da5c3a:	4c 89 e1             	mov    rcx,r12
  da5c3d:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  da5c42:	e8 b9 8f ff ff       	call   d9ec00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da5c47:	49 89 ee             	mov    r14,rbp
  da5c4a:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da5c50:	0f 83 d2 05 00 00    	jae    da6228 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3368>
  da5c56:	e9 d5 07 00 00       	jmp    da6430 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da5c5b:	48 89 ee             	mov    rsi,rbp
  da5c5e:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da5c62:	4c 89 e1             	mov    rcx,r12
  da5c65:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da5c6a:	e8 d1 87 ff ff       	call   d9e440 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da5c6f:	49 89 ee             	mov    r14,rbp
  da5c72:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da5c78:	0f 83 85 03 00 00    	jae    da6003 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3143>
  da5c7e:	e9 ad 07 00 00       	jmp    da6430 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da5c83:	48 89 ee             	mov    rsi,rbp
  da5c86:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da5c8a:	4c 89 e1             	mov    rcx,r12
  da5c8d:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  da5c92:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da5c97:	e8 a4 71 ff ff       	call   d9ce40 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da5c9c:	49 89 ee             	mov    r14,rbp
  da5c9f:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da5ca5:	0f 83 7d 05 00 00    	jae    da6228 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3368>
  da5cab:	e9 80 07 00 00       	jmp    da6430 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da5cb0:	48 89 ee             	mov    rsi,rbp
  da5cb3:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da5cb7:	4c 89 e1             	mov    rcx,r12
  da5cba:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da5cbf:	e8 3c 16 ff ff       	call   d97300 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da5cc4:	49 89 ee             	mov    r14,rbp
  da5cc7:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da5ccd:	0f 83 30 03 00 00    	jae    da6003 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3143>
  da5cd3:	e9 58 07 00 00       	jmp    da6430 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da5cd8:	48 89 ee             	mov    rsi,rbp
  da5cdb:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da5cdf:	4c 89 e1             	mov    rcx,r12
  da5ce2:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  da5ce7:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da5cec:	e8 4f 03 ff ff       	call   d96040 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da5cf1:	49 89 ee             	mov    r14,rbp
  da5cf4:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da5cfa:	0f 83 28 05 00 00    	jae    da6228 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3368>
  da5d00:	e9 2b 07 00 00       	jmp    da6430 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da5d05:	48 89 ee             	mov    rsi,rbp
  da5d08:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da5d0c:	4c 89 e1             	mov    rcx,r12
  da5d0f:	e8 6c 16 fe ff       	call   d87380 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da5d14:	49 89 ee             	mov    r14,rbp
  da5d17:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da5d1d:	0f 83 e0 02 00 00    	jae    da6003 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3143>
  da5d23:	e9 08 07 00 00       	jmp    da6430 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da5d28:	48 89 ee             	mov    rsi,rbp
  da5d2b:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da5d2f:	4c 89 e1             	mov    rcx,r12
  da5d32:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  da5d37:	e8 c4 bf fe ff       	call   d91d00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da5d3c:	49 89 ee             	mov    r14,rbp
  da5d3f:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da5d45:	0f 83 dd 04 00 00    	jae    da6228 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3368>
  da5d4b:	e9 e0 06 00 00       	jmp    da6430 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da5d50:	48 89 ee             	mov    rsi,rbp
  da5d53:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da5d57:	4c 89 e1             	mov    rcx,r12
  da5d5a:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da5d5f:	e8 5c 6f ff ff       	call   d9ccc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da5d64:	49 89 ee             	mov    r14,rbp
  da5d67:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da5d6d:	0f 83 90 02 00 00    	jae    da6003 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3143>
  da5d73:	e9 b8 06 00 00       	jmp    da6430 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da5d78:	48 89 ee             	mov    rsi,rbp
  da5d7b:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da5d7f:	4c 89 e1             	mov    rcx,r12
  da5d82:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  da5d87:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da5d8c:	e8 af 94 fd ff       	call   d7f240 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da5d91:	49 89 ee             	mov    r14,rbp
  da5d94:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da5d9a:	0f 83 88 04 00 00    	jae    da6228 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3368>
  da5da0:	e9 8b 06 00 00       	jmp    da6430 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da5da5:	48 89 ee             	mov    rsi,rbp
  da5da8:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da5dac:	4c 89 e1             	mov    rcx,r12
  da5daf:	e8 cc 4d ff ff       	call   d9ab80 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da5db4:	49 89 ee             	mov    r14,rbp
  da5db7:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da5dbd:	0f 83 40 02 00 00    	jae    da6003 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3143>
  da5dc3:	e9 68 06 00 00       	jmp    da6430 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da5dc8:	48 89 ee             	mov    rsi,rbp
  da5dcb:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da5dcf:	4c 89 e1             	mov    rcx,r12
  da5dd2:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  da5dd7:	e8 64 e4 fe ff       	call   d94240 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da5ddc:	49 89 ee             	mov    r14,rbp
  da5ddf:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da5de5:	0f 83 3d 04 00 00    	jae    da6228 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3368>
  da5deb:	e9 40 06 00 00       	jmp    da6430 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da5df0:	48 89 ee             	mov    rsi,rbp
  da5df3:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da5df7:	4c 89 e1             	mov    rcx,r12
  da5dfa:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da5dff:	e8 fc a3 fd ff       	call   d80200 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da5e04:	49 89 ee             	mov    r14,rbp
  da5e07:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da5e0d:	0f 83 f0 01 00 00    	jae    da6003 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3143>
  da5e13:	e9 18 06 00 00       	jmp    da6430 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da5e18:	48 89 ee             	mov    rsi,rbp
  da5e1b:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da5e1f:	4c 89 e1             	mov    rcx,r12
  da5e22:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  da5e27:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da5e2c:	e8 4f 83 fe ff       	call   d8e180 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da5e31:	49 89 ee             	mov    r14,rbp
  da5e34:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da5e3a:	0f 83 e8 03 00 00    	jae    da6228 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3368>
  da5e40:	e9 eb 05 00 00       	jmp    da6430 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da5e45:	48 89 ee             	mov    rsi,rbp
  da5e48:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da5e4c:	4c 89 e1             	mov    rcx,r12
  da5e4f:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da5e54:	e8 a7 84 ff ff       	call   d9e300 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da5e59:	49 89 ee             	mov    r14,rbp
  da5e5c:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da5e62:	0f 83 9b 01 00 00    	jae    da6003 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3143>
  da5e68:	e9 c3 05 00 00       	jmp    da6430 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da5e6d:	48 89 ee             	mov    rsi,rbp
  da5e70:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da5e74:	4c 89 e1             	mov    rcx,r12
  da5e77:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  da5e7c:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da5e81:	e8 3a 75 ff ff       	call   d9d3c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da5e86:	49 89 ee             	mov    r14,rbp
  da5e89:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da5e8f:	0f 83 93 03 00 00    	jae    da6228 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3368>
  da5e95:	e9 96 05 00 00       	jmp    da6430 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da5e9a:	48 89 ee             	mov    rsi,rbp
  da5e9d:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da5ea1:	4c 89 e1             	mov    rcx,r12
  da5ea4:	e8 57 4f ff ff       	call   d9ae00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da5ea9:	49 89 ee             	mov    r14,rbp
  da5eac:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da5eb2:	0f 83 4b 01 00 00    	jae    da6003 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3143>
  da5eb8:	e9 73 05 00 00       	jmp    da6430 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da5ebd:	48 89 ee             	mov    rsi,rbp
  da5ec0:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da5ec4:	4c 89 e1             	mov    rcx,r12
  da5ec7:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  da5ecc:	e8 2f 43 fe ff       	call   d8a200 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da5ed1:	49 89 ee             	mov    r14,rbp
  da5ed4:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da5eda:	0f 83 48 03 00 00    	jae    da6228 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3368>
  da5ee0:	e9 4b 05 00 00       	jmp    da6430 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da5ee5:	48 89 ee             	mov    rsi,rbp
  da5ee8:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da5eec:	4c 89 e1             	mov    rcx,r12
  da5eef:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da5ef4:	e8 47 bf fd ff       	call   d81e40 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da5ef9:	49 89 ee             	mov    r14,rbp
  da5efc:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da5f02:	0f 83 fb 00 00 00    	jae    da6003 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3143>
  da5f08:	e9 23 05 00 00       	jmp    da6430 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da5f0d:	48 89 ee             	mov    rsi,rbp
  da5f10:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da5f14:	4c 89 e1             	mov    rcx,r12
  da5f17:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  da5f1c:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da5f21:	e8 1a f8 fd ff       	call   d85740 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da5f26:	49 89 ee             	mov    r14,rbp
  da5f29:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da5f2f:	0f 83 f3 02 00 00    	jae    da6228 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3368>
  da5f35:	e9 f6 04 00 00       	jmp    da6430 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da5f3a:	48 89 ee             	mov    rsi,rbp
  da5f3d:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da5f41:	4c 89 e1             	mov    rcx,r12
  da5f44:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da5f49:	e8 b2 7f ff ff       	call   d9df00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da5f4e:	49 89 ee             	mov    r14,rbp
  da5f51:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da5f57:	0f 83 a6 00 00 00    	jae    da6003 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3143>
  da5f5d:	e9 ce 04 00 00       	jmp    da6430 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da5f62:	48 89 ee             	mov    rsi,rbp
  da5f65:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da5f69:	4c 89 e1             	mov    rcx,r12
  da5f6c:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  da5f71:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da5f76:	e8 45 aa ff ff       	call   da09c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da5f7b:	49 89 ee             	mov    r14,rbp
  da5f7e:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da5f84:	0f 83 9e 02 00 00    	jae    da6228 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3368>
  da5f8a:	e9 a1 04 00 00       	jmp    da6430 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da5f8f:	48 89 ee             	mov    rsi,rbp
  da5f92:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da5f96:	4c 89 e1             	mov    rcx,r12
  da5f99:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da5f9e:	e8 dd 0b fe ff       	call   d86b80 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da5fa3:	49 89 ee             	mov    r14,rbp
  da5fa6:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da5fac:	73 55                	jae    da6003 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3143>
  da5fae:	e9 7d 04 00 00       	jmp    da6430 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da5fb3:	48 89 ee             	mov    rsi,rbp
  da5fb6:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da5fba:	4c 89 e1             	mov    rcx,r12
  da5fbd:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  da5fc2:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da5fc7:	e8 74 4a fe ff       	call   d8aa40 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da5fcc:	49 89 ee             	mov    r14,rbp
  da5fcf:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da5fd5:	0f 83 4d 02 00 00    	jae    da6228 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3368>
  da5fdb:	e9 50 04 00 00       	jmp    da6430 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da5fe0:	48 89 ee             	mov    rsi,rbp
  da5fe3:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da5fe7:	4c 89 e1             	mov    rcx,r12
  da5fea:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da5fef:	e8 cc 7a fe ff       	call   d8dac0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da5ff4:	49 89 ee             	mov    r14,rbp
  da5ff7:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da5ffd:	0f 82 2d 04 00 00    	jb     da6430 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da6003:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
  da6008:	48 8b 18             	mov    rbx,QWORD PTR [rax]
  da600b:	4c 8b a4 24 70 01 00 	mov    r12,QWORD PTR [rsp+0x170]
  da6012:	00 
  da6013:	4c 8b 6c 24 58       	mov    r13,QWORD PTR [rsp+0x58]
  da6018:	48 8b 44 24 78       	mov    rax,QWORD PTR [rsp+0x78]
  da601d:	4c 8b bc 24 a0 00 00 	mov    r15,QWORD PTR [rsp+0xa0]
  da6024:	00 
  da6025:	eb 3d                	jmp    da6064 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x31a4>
  da6027:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da602c:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da6033:	00 
  da6034:	4c 89 ff             	mov    rdi,r15
  da6037:	4c 89 f6             	mov    rsi,r14
  da603a:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da603e:	48 89 d9             	mov    rcx,rbx
  da6041:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da6048:	00 
  da6049:	e8 72 b1 f1 ff       	call   cc11c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da604e:	66 90                	xchg   ax,ax
  da6050:	48 0f af dd          	imul   rbx,rbp
  da6054:	49 83 c5 18          	add    r13,0x18
  da6058:	4c 89 f0             	mov    rax,r14
  da605b:	49 ff cc             	dec    r12
  da605e:	0f 84 cc 03 00 00    	je     da6430 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da6064:	4d 89 fe             	mov    r14,r15
  da6067:	49 89 c7             	mov    r15,rax
  da606a:	49 8b 6d f8          	mov    rbp,QWORD PTR [r13-0x8]
  da606e:	4d 8b 45 00          	mov    r8,QWORD PTR [r13+0x0]
  da6072:	4c 03 44 24 30       	add    r8,QWORD PTR [rsp+0x30]
  da6077:	48 89 6c 24 48       	mov    QWORD PTR [rsp+0x48],rbp
  da607c:	48 8d 45 fe          	lea    rax,[rbp-0x2]
  da6080:	48 83 f8 0e          	cmp    rax,0xe
  da6084:	0f 87 2b 2f 00 00    	ja     da8fb5 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x60f5>
  da608a:	48 8d 0d 27 d0 2f ff 	lea    rcx,[rip+0xffffffffff2fd027]        # a30b8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x30568>
  da6091:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  da6095:	48 01 c8             	add    rax,rcx
  da6098:	ff e0                	jmp    rax
  da609a:	4c 89 ff             	mov    rdi,r15
  da609d:	4c 89 f6             	mov    rsi,r14
  da60a0:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da60a4:	48 89 d9             	mov    rcx,rbx
  da60a7:	e8 d4 2c f1 ff       	call   cb8d80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da60ac:	eb a2                	jmp    da6050 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3190>
  da60ae:	4c 89 ff             	mov    rdi,r15
  da60b1:	4c 89 f6             	mov    rsi,r14
  da60b4:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da60b8:	48 89 d9             	mov    rcx,rbx
  da60bb:	e8 40 77 f1 ff       	call   cbd800 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da60c0:	eb 8e                	jmp    da6050 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3190>
  da60c2:	4c 89 ff             	mov    rdi,r15
  da60c5:	4c 89 f6             	mov    rsi,r14
  da60c8:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da60cc:	48 89 d9             	mov    rcx,rbx
  da60cf:	e8 2c 36 f1 ff       	call   cb9700 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da60d4:	e9 77 ff ff ff       	jmp    da6050 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3190>
  da60d9:	4c 89 ff             	mov    rdi,r15
  da60dc:	4c 89 f6             	mov    rsi,r14
  da60df:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da60e3:	48 89 d9             	mov    rcx,rbx
  da60e6:	e8 55 8c f1 ff       	call   cbed40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da60eb:	e9 60 ff ff ff       	jmp    da6050 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3190>
  da60f0:	4c 89 ff             	mov    rdi,r15
  da60f3:	4c 89 f6             	mov    rsi,r14
  da60f6:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da60fa:	48 89 d9             	mov    rcx,rbx
  da60fd:	e8 7e 5a f1 ff       	call   cbbb80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da6102:	e9 49 ff ff ff       	jmp    da6050 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3190>
  da6107:	4c 89 ff             	mov    rdi,r15
  da610a:	4c 89 f6             	mov    rsi,r14
  da610d:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da6111:	48 89 d9             	mov    rcx,rbx
  da6114:	e8 e7 2f f1 ff       	call   cb9100 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da6119:	e9 32 ff ff ff       	jmp    da6050 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3190>
  da611e:	4c 89 ff             	mov    rdi,r15
  da6121:	4c 89 f6             	mov    rsi,r14
  da6124:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da6128:	48 89 d9             	mov    rcx,rbx
  da612b:	e8 50 32 f1 ff       	call   cb9380 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da6130:	e9 1b ff ff ff       	jmp    da6050 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3190>
  da6135:	4c 89 ff             	mov    rdi,r15
  da6138:	4c 89 f6             	mov    rsi,r14
  da613b:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da613f:	48 89 d9             	mov    rcx,rbx
  da6142:	e8 b9 46 f1 ff       	call   cba800 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da6147:	e9 04 ff ff ff       	jmp    da6050 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3190>
  da614c:	4c 89 ff             	mov    rdi,r15
  da614f:	4c 89 f6             	mov    rsi,r14
  da6152:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da6156:	48 89 d9             	mov    rcx,rbx
  da6159:	e8 62 2d f1 ff       	call   cb8ec0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da615e:	e9 ed fe ff ff       	jmp    da6050 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3190>
  da6163:	4c 89 ff             	mov    rdi,r15
  da6166:	4c 89 f6             	mov    rsi,r14
  da6169:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da616d:	48 89 d9             	mov    rcx,rbx
  da6170:	e8 cb 39 f1 ff       	call   cb9b40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da6175:	e9 d6 fe ff ff       	jmp    da6050 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3190>
  da617a:	4c 89 ff             	mov    rdi,r15
  da617d:	4c 89 f6             	mov    rsi,r14
  da6180:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da6184:	48 89 d9             	mov    rcx,rbx
  da6187:	e8 b4 9d f1 ff       	call   cbff40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da618c:	e9 bf fe ff ff       	jmp    da6050 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3190>
  da6191:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da6196:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da619d:	00 
  da619e:	4c 89 ff             	mov    rdi,r15
  da61a1:	4c 89 f6             	mov    rsi,r14
  da61a4:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da61a8:	48 89 d9             	mov    rcx,rbx
  da61ab:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da61b2:	00 
  da61b3:	e8 48 40 f1 ff       	call   cba200 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da61b8:	e9 93 fe ff ff       	jmp    da6050 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3190>
  da61bd:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da61c2:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da61c9:	00 
  da61ca:	4c 89 ff             	mov    rdi,r15
  da61cd:	4c 89 f6             	mov    rsi,r14
  da61d0:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da61d4:	48 89 d9             	mov    rcx,rbx
  da61d7:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da61de:	00 
  da61df:	e8 dc 69 f1 ff       	call   cbcbc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da61e4:	e9 67 fe ff ff       	jmp    da6050 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3190>
  da61e9:	4c 89 ff             	mov    rdi,r15
  da61ec:	4c 89 f6             	mov    rsi,r14
  da61ef:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da61f3:	48 89 d9             	mov    rcx,rbx
  da61f6:	e8 45 4f f1 ff       	call   cbb140 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da61fb:	e9 50 fe ff ff       	jmp    da6050 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3190>
  da6200:	48 89 ee             	mov    rsi,rbp
  da6203:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da6207:	4c 89 e1             	mov    rcx,r12
  da620a:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  da620f:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da6214:	e8 a7 3d ff ff       	call   d99fc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da6219:	49 89 ee             	mov    r14,rbp
  da621c:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da6222:	0f 82 08 02 00 00    	jb     da6430 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da6228:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
  da622d:	48 8b 18             	mov    rbx,QWORD PTR [rax]
  da6230:	4c 8b a4 24 70 01 00 	mov    r12,QWORD PTR [rsp+0x170]
  da6237:	00 
  da6238:	4c 8b 6c 24 58       	mov    r13,QWORD PTR [rsp+0x58]
  da623d:	48 8b 44 24 78       	mov    rax,QWORD PTR [rsp+0x78]
  da6242:	4c 8b bc 24 a0 00 00 	mov    r15,QWORD PTR [rsp+0xa0]
  da6249:	00 
  da624a:	eb 48                	jmp    da6294 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x33d4>
  da624c:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da6251:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da6258:	00 
  da6259:	4c 89 ff             	mov    rdi,r15
  da625c:	4c 89 f6             	mov    rsi,r14
  da625f:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da6263:	48 89 d9             	mov    rcx,rbx
  da6266:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da626d:	00 
  da626e:	e8 4d af f1 ff       	call   cc11c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da6273:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  da627a:	84 00 00 00 00 00 
  da6280:	48 0f af dd          	imul   rbx,rbp
  da6284:	49 83 c5 18          	add    r13,0x18
  da6288:	4c 89 f0             	mov    rax,r14
  da628b:	49 ff cc             	dec    r12
  da628e:	0f 84 9c 01 00 00    	je     da6430 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3570>
  da6294:	4d 89 fe             	mov    r14,r15
  da6297:	49 89 c7             	mov    r15,rax
  da629a:	49 8b 6d f8          	mov    rbp,QWORD PTR [r13-0x8]
  da629e:	4d 8b 45 00          	mov    r8,QWORD PTR [r13+0x0]
  da62a2:	4c 03 44 24 30       	add    r8,QWORD PTR [rsp+0x30]
  da62a7:	48 89 6c 24 48       	mov    QWORD PTR [rsp+0x48],rbp
  da62ac:	48 8d 45 fe          	lea    rax,[rbp-0x2]
  da62b0:	48 83 f8 0e          	cmp    rax,0xe
  da62b4:	0f 87 fb 2c 00 00    	ja     da8fb5 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x60f5>
  da62ba:	48 8d 0d 83 cd 2f ff 	lea    rcx,[rip+0xffffffffff2fcd83]        # a3044 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x304f4>
  da62c1:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  da62c5:	48 01 c8             	add    rax,rcx
  da62c8:	ff e0                	jmp    rax
  da62ca:	4c 89 ff             	mov    rdi,r15
  da62cd:	4c 89 f6             	mov    rsi,r14
  da62d0:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da62d4:	48 89 d9             	mov    rcx,rbx
  da62d7:	e8 a4 2a f1 ff       	call   cb8d80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da62dc:	eb a2                	jmp    da6280 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x33c0>
  da62de:	4c 89 ff             	mov    rdi,r15
  da62e1:	4c 89 f6             	mov    rsi,r14
  da62e4:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da62e8:	48 89 d9             	mov    rcx,rbx
  da62eb:	e8 10 75 f1 ff       	call   cbd800 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da62f0:	eb 8e                	jmp    da6280 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x33c0>
  da62f2:	4c 89 ff             	mov    rdi,r15
  da62f5:	4c 89 f6             	mov    rsi,r14
  da62f8:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da62fc:	48 89 d9             	mov    rcx,rbx
  da62ff:	e8 fc 33 f1 ff       	call   cb9700 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da6304:	e9 77 ff ff ff       	jmp    da6280 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x33c0>
  da6309:	4c 89 ff             	mov    rdi,r15
  da630c:	4c 89 f6             	mov    rsi,r14
  da630f:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da6313:	48 89 d9             	mov    rcx,rbx
  da6316:	e8 25 8a f1 ff       	call   cbed40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da631b:	e9 60 ff ff ff       	jmp    da6280 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x33c0>
  da6320:	4c 89 ff             	mov    rdi,r15
  da6323:	4c 89 f6             	mov    rsi,r14
  da6326:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da632a:	48 89 d9             	mov    rcx,rbx
  da632d:	e8 4e 58 f1 ff       	call   cbbb80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da6332:	e9 49 ff ff ff       	jmp    da6280 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x33c0>
  da6337:	4c 89 ff             	mov    rdi,r15
  da633a:	4c 89 f6             	mov    rsi,r14
  da633d:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da6341:	48 89 d9             	mov    rcx,rbx
  da6344:	e8 b7 2d f1 ff       	call   cb9100 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da6349:	e9 32 ff ff ff       	jmp    da6280 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x33c0>
  da634e:	4c 89 ff             	mov    rdi,r15
  da6351:	4c 89 f6             	mov    rsi,r14
  da6354:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da6358:	48 89 d9             	mov    rcx,rbx
  da635b:	e8 20 30 f1 ff       	call   cb9380 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da6360:	e9 1b ff ff ff       	jmp    da6280 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x33c0>
  da6365:	4c 89 ff             	mov    rdi,r15
  da6368:	4c 89 f6             	mov    rsi,r14
  da636b:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da636f:	48 89 d9             	mov    rcx,rbx
  da6372:	e8 89 44 f1 ff       	call   cba800 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da6377:	e9 04 ff ff ff       	jmp    da6280 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x33c0>
  da637c:	4c 89 ff             	mov    rdi,r15
  da637f:	4c 89 f6             	mov    rsi,r14
  da6382:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da6386:	48 89 d9             	mov    rcx,rbx
  da6389:	e8 32 2b f1 ff       	call   cb8ec0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da638e:	e9 ed fe ff ff       	jmp    da6280 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x33c0>
  da6393:	4c 89 ff             	mov    rdi,r15
  da6396:	4c 89 f6             	mov    rsi,r14
  da6399:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da639d:	48 89 d9             	mov    rcx,rbx
  da63a0:	e8 9b 37 f1 ff       	call   cb9b40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da63a5:	e9 d6 fe ff ff       	jmp    da6280 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x33c0>
  da63aa:	4c 89 ff             	mov    rdi,r15
  da63ad:	4c 89 f6             	mov    rsi,r14
  da63b0:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da63b4:	48 89 d9             	mov    rcx,rbx
  da63b7:	e8 84 9b f1 ff       	call   cbff40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da63bc:	e9 bf fe ff ff       	jmp    da6280 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x33c0>
  da63c1:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da63c6:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da63cd:	00 
  da63ce:	4c 89 ff             	mov    rdi,r15
  da63d1:	4c 89 f6             	mov    rsi,r14
  da63d4:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da63d8:	48 89 d9             	mov    rcx,rbx
  da63db:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da63e2:	00 
  da63e3:	e8 18 3e f1 ff       	call   cba200 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da63e8:	e9 93 fe ff ff       	jmp    da6280 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x33c0>
  da63ed:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da63f2:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da63f9:	00 
  da63fa:	4c 89 ff             	mov    rdi,r15
  da63fd:	4c 89 f6             	mov    rsi,r14
  da6400:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da6404:	48 89 d9             	mov    rcx,rbx
  da6407:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da640e:	00 
  da640f:	e8 ac 67 f1 ff       	call   cbcbc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da6414:	e9 67 fe ff ff       	jmp    da6280 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x33c0>
  da6419:	4c 89 ff             	mov    rdi,r15
  da641c:	4c 89 f6             	mov    rsi,r14
  da641f:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da6423:	48 89 d9             	mov    rcx,rbx
  da6426:	e8 15 4d f1 ff       	call   cbb140 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da642b:	e9 50 fe ff ff       	jmp    da6280 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x33c0>
  da6430:	48 83 3c 24 00       	cmp    QWORD PTR [rsp],0x0
  da6435:	4c 8b 64 24 08       	mov    r12,QWORD PTR [rsp+0x8]
  da643a:	4c 8d ac 24 10 01 00 	lea    r13,[rsp+0x110]
  da6441:	00 
  da6442:	48 8b ac 24 98 00 00 	mov    rbp,QWORD PTR [rsp+0x98]
  da6449:	00 
  da644a:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
  da644f:	0f 84 5b f2 ff ff    	je     da56b0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x27f0>
  da6455:	80 7c 24 38 00       	cmp    BYTE PTR [rsp+0x38],0x0
  da645a:	74 44                	je     da64a0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x35e0>
  da645c:	49 83 c6 10          	add    r14,0x10
  da6460:	48 8b 04 24          	mov    rax,QWORD PTR [rsp]
  da6464:	48 8b 8c 24 c0 00 00 	mov    rcx,QWORD PTR [rsp+0xc0]
  da646b:	00 
  da646c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  da6470:	41 0f 10 46 f0       	movups xmm0,XMMWORD PTR [r14-0x10]
  da6475:	41 0f 10 0e          	movups xmm1,XMMWORD PTR [r14]
  da6479:	0f 28 d0             	movaps xmm2,xmm0
  da647c:	0f 14 d1             	unpcklps xmm2,xmm1
  da647f:	0f 15 c1             	unpckhps xmm0,xmm1
  da6482:	0f 2b 11             	movntps XMMWORD PTR [rcx],xmm2
  da6485:	48 8d 51 10          	lea    rdx,[rcx+0x10]
  da6489:	0f 2b 02             	movntps XMMWORD PTR [rdx],xmm0
  da648c:	48 01 e9             	add    rcx,rbp
  da648f:	49 83 c6 20          	add    r14,0x20
  da6493:	48 ff c8             	dec    rax
  da6496:	75 d8                	jne    da6470 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x35b0>
  da6498:	e9 13 f2 ff ff       	jmp    da56b0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x27f0>
  da649d:	0f 1f 00             	nop    DWORD PTR [rax]
  da64a0:	48 c1 64 24 20 03    	shl    QWORD PTR [rsp+0x20],0x3
  da64a6:	49 83 c6 10          	add    r14,0x10
  da64aa:	4c 8b 3c 24          	mov    r15,QWORD PTR [rsp]
  da64ae:	48 8b 9c 24 c0 00 00 	mov    rbx,QWORD PTR [rsp+0xc0]
  da64b5:	00 
  da64b6:	eb 1f                	jmp    da64d7 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3617>
  da64b8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  da64bf:	00 
  da64c0:	0f 11 0b             	movups XMMWORD PTR [rbx],xmm1
  da64c3:	0f 11 43 10          	movups XMMWORD PTR [rbx+0x10],xmm0
  da64c7:	48 01 eb             	add    rbx,rbp
  da64ca:	49 83 c6 20          	add    r14,0x20
  da64ce:	49 ff cf             	dec    r15
  da64d1:	0f 84 d9 f1 ff ff    	je     da56b0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x27f0>
  da64d7:	41 0f 10 46 f0       	movups xmm0,XMMWORD PTR [r14-0x10]
  da64dc:	41 0f 10 16          	movups xmm2,XMMWORD PTR [r14]
  da64e0:	0f 28 c8             	movaps xmm1,xmm0
  da64e3:	0f 14 ca             	unpcklps xmm1,xmm2
  da64e6:	0f 15 c2             	unpckhps xmm0,xmm2
  da64e9:	48 83 f8 03          	cmp    rax,0x3
  da64ed:	77 d1                	ja     da64c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3600>
  da64ef:	0f 57 d2             	xorps  xmm2,xmm2
  da64f2:	41 0f 29 55 50       	movaps XMMWORD PTR [r13+0x50],xmm2
  da64f7:	41 0f 29 55 40       	movaps XMMWORD PTR [r13+0x40],xmm2
  da64fc:	41 0f 29 55 30       	movaps XMMWORD PTR [r13+0x30],xmm2
  da6501:	41 0f 29 55 20       	movaps XMMWORD PTR [r13+0x20],xmm2
  da6506:	41 0f 29 55 10       	movaps XMMWORD PTR [r13+0x10],xmm2
  da650b:	41 0f 29 55 00       	movaps XMMWORD PTR [r13+0x0],xmm2
  da6510:	0f 29 8c 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm1
  da6517:	00 
  da6518:	0f 29 84 24 00 01 00 	movaps XMMWORD PTR [rsp+0x100],xmm0
  da651f:	00 
  da6520:	48 89 df             	mov    rdi,rbx
  da6523:	48 8d b4 24 f0 00 00 	lea    rsi,[rsp+0xf0]
  da652a:	00 
  da652b:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  da6530:	ff 15 aa 41 4a 00    	call   QWORD PTR [rip+0x4a41aa]        # 124a6e0 <memcpy@GLIBC_2.14>
  da6536:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
  da653b:	eb 8a                	jmp    da64c7 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3607>
  da653d:	c7 44 24 38 00 00 00 	mov    DWORD PTR [rsp+0x38],0x0
  da6544:	00 
  da6545:	4d 85 e4             	test   r12,r12
  da6548:	0f 84 ff 0e 00 00    	je     da744d <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x458d>
  da654e:	48 8d 04 5b          	lea    rax,[rbx+rbx*2]
  da6552:	4c 89 e6             	mov    rsi,r12
  da6555:	48 c1 ee 02          	shr    rsi,0x2
  da6559:	44 89 e1             	mov    ecx,r12d
  da655c:	83 e1 03             	and    ecx,0x3
  da655f:	48 83 f9 01          	cmp    rcx,0x1
  da6563:	48 83 de ff          	sbb    rsi,0xffffffffffffffff
  da6567:	48 8b 4c 24 30       	mov    rcx,QWORD PTR [rsp+0x30]
  da656c:	48 8d 14 c1          	lea    rdx,[rcx+rax*8]
  da6570:	48 89 54 24 60       	mov    QWORD PTR [rsp+0x60],rdx
  da6575:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da6579:	48 01 d2             	add    rdx,rdx
  da657c:	48 89 94 24 b0 00 00 	mov    QWORD PTR [rsp+0xb0],rdx
  da6583:	00 
  da6584:	48 8d 44 c1 20       	lea    rax,[rcx+rax*8+0x20]
  da6589:	48 89 44 24 58       	mov    QWORD PTR [rsp+0x58],rax
  da658e:	48 8b 44 24 50       	mov    rax,QWORD PTR [rsp+0x50]
  da6593:	48 ff c8             	dec    rax
  da6596:	48 89 84 24 70 01 00 	mov    QWORD PTR [rsp+0x170],rax
  da659d:	00 
  da659e:	4a 8d 04 e5 00 00 00 	lea    rax,[r12*8+0x0]
  da65a5:	00 
  da65a6:	48 89 84 24 98 00 00 	mov    QWORD PTR [rsp+0x98],rax
  da65ad:	00 
  da65ae:	45 31 c0             	xor    r8d,r8d
  da65b1:	eb 38                	jmp    da65eb <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x372b>
  da65b3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  da65ba:	84 00 00 00 00 00 
  da65c0:	4c 8b 44 24 28       	mov    r8,QWORD PTR [rsp+0x28]
  da65c5:	49 83 c0 04          	add    r8,0x4
  da65c9:	48 8b b4 24 b8 00 00 	mov    rsi,QWORD PTR [rsp+0xb8]
  da65d0:	00 
  da65d1:	48 ff ce             	dec    rsi
  da65d4:	48 83 84 24 c0 00 00 	add    QWORD PTR [rsp+0xc0],0x20
  da65db:	00 20 
  da65dd:	48 85 f6             	test   rsi,rsi
  da65e0:	48 8b 6c 24 78       	mov    rbp,QWORD PTR [rsp+0x78]
  da65e5:	0f 84 62 0e 00 00    	je     da744d <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x458d>
  da65eb:	4c 89 e0             	mov    rax,r12
  da65ee:	4c 29 c0             	sub    rax,r8
  da65f1:	48 89 44 24 40       	mov    QWORD PTR [rsp+0x40],rax
  da65f6:	48 83 f8 04          	cmp    rax,0x4
  da65fa:	b9 04 00 00 00       	mov    ecx,0x4
  da65ff:	48 0f 42 c8          	cmovb  rcx,rax
  da6603:	48 89 4c 24 20       	mov    QWORD PTR [rsp+0x20],rcx
  da6608:	80 bc 24 80 00 00 00 	cmp    BYTE PTR [rsp+0x80],0x0
  da660f:	00 
  da6610:	48 89 b4 24 b8 00 00 	mov    QWORD PTR [rsp+0xb8],rsi
  da6617:	00 
  da6618:	4c 89 44 24 28       	mov    QWORD PTR [rsp+0x28],r8
  da661d:	74 71                	je     da6690 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x37d0>
  da661f:	48 83 7c 24 50 00    	cmp    QWORD PTR [rsp+0x50],0x0
  da6625:	0f 84 2d 2a 00 00    	je     da9058 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6198>
  da662b:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
  da6630:	48 8b 00             	mov    rax,QWORD PTR [rax]
  da6633:	48 83 c0 fe          	add    rax,0xfffffffffffffffe
  da6637:	48 83 f8 0d          	cmp    rax,0xd
  da663b:	0f 87 db 29 00 00    	ja     da901c <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x615c>
  da6641:	48 8b 8c 24 b0 00 00 	mov    rcx,QWORD PTR [rsp+0xb0]
  da6648:	00 
  da6649:	49 0f af c8          	imul   rcx,r8
  da664d:	48 8b 94 24 88 00 00 	mov    rdx,QWORD PTR [rsp+0x88]
  da6654:	00 
  da6655:	48 8d 3c 8a          	lea    rdi,[rdx+rcx*4]
  da6659:	48 8d 0d 50 cd 2f ff 	lea    rcx,[rip+0xffffffffff2fcd50]        # a33b0 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x30860>
  da6660:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  da6664:	48 01 c8             	add    rax,rcx
  da6667:	ff e0                	jmp    rax
  da6669:	48 89 ee             	mov    rsi,rbp
  da666c:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da6670:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da6675:	e8 c6 b6 ff ff       	call   da1d40 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da667a:	49 89 ee             	mov    r14,rbp
  da667d:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da6683:	0f 83 97 02 00 00    	jae    da6920 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3a60>
  da6689:	e9 b2 0c 00 00       	jmp    da7340 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da668e:	66 90                	xchg   ax,ax
  da6690:	48 8b 84 24 88 00 00 	mov    rax,QWORD PTR [rsp+0x88]
  da6697:	00 
  da6698:	4a 8d 3c c0          	lea    rdi,[rax+r8*8]
  da669c:	48 83 7c 24 40 03    	cmp    QWORD PTR [rsp+0x40],0x3
  da66a2:	76 5c                	jbe    da6700 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3840>
  da66a4:	48 83 7c 24 50 00    	cmp    QWORD PTR [rsp+0x50],0x0
  da66aa:	0f 84 a8 29 00 00    	je     da9058 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6198>
  da66b0:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
  da66b5:	48 8b 00             	mov    rax,QWORD PTR [rax]
  da66b8:	48 83 c0 fe          	add    rax,0xfffffffffffffffe
  da66bc:	48 83 f8 0d          	cmp    rax,0xd
  da66c0:	0f 87 56 29 00 00    	ja     da901c <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x615c>
  da66c6:	48 8d 0d 6f cc 2f ff 	lea    rcx,[rip+0xffffffffff2fcc6f]        # a333c <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x307ec>
  da66cd:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  da66d1:	48 01 c8             	add    rax,rcx
  da66d4:	ff e0                	jmp    rax
  da66d6:	48 89 ee             	mov    rsi,rbp
  da66d9:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da66dd:	4c 89 e1             	mov    rcx,r12
  da66e0:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da66e5:	e8 16 85 fe ff       	call   d8ec00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da66ea:	49 89 ee             	mov    r14,rbp
  da66ed:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da66f3:	0f 83 1a 08 00 00    	jae    da6f13 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4053>
  da66f9:	e9 42 0c 00 00       	jmp    da7340 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da66fe:	66 90                	xchg   ax,ax
  da6700:	48 83 7c 24 50 00    	cmp    QWORD PTR [rsp+0x50],0x0
  da6706:	0f 84 4c 29 00 00    	je     da9058 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6198>
  da670c:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
  da6711:	48 8b 00             	mov    rax,QWORD PTR [rax]
  da6714:	48 83 c0 fe          	add    rax,0xfffffffffffffffe
  da6718:	48 83 f8 0d          	cmp    rax,0xd
  da671c:	0f 87 fa 28 00 00    	ja     da901c <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x615c>
  da6722:	48 8d 0d 9f cb 2f ff 	lea    rcx,[rip+0xffffffffff2fcb9f]        # a32c8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x30778>
  da6729:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  da672d:	48 01 c8             	add    rax,rcx
  da6730:	ff e0                	jmp    rax
  da6732:	48 89 ee             	mov    rsi,rbp
  da6735:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da6739:	4c 89 e1             	mov    rcx,r12
  da673c:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  da6741:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da6746:	e8 35 ee fd ff       	call   d85580 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da674b:	49 89 ee             	mov    r14,rbp
  da674e:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da6754:	0f 83 de 09 00 00    	jae    da7138 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4278>
  da675a:	e9 e1 0b 00 00       	jmp    da7340 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da675f:	48 89 ee             	mov    rsi,rbp
  da6762:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da6766:	e8 15 9f fe ff       	call   d90680 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da676b:	49 89 ee             	mov    r14,rbp
  da676e:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da6774:	0f 83 a6 01 00 00    	jae    da6920 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3a60>
  da677a:	e9 c1 0b 00 00       	jmp    da7340 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da677f:	48 89 ee             	mov    rsi,rbp
  da6782:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da6786:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da678b:	e8 70 65 fe ff       	call   d8cd00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da6790:	49 89 ee             	mov    r14,rbp
  da6793:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da6799:	0f 83 81 01 00 00    	jae    da6920 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3a60>
  da679f:	e9 9c 0b 00 00       	jmp    da7340 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da67a4:	48 89 ee             	mov    rsi,rbp
  da67a7:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da67ab:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da67b0:	e8 8b a9 ff ff       	call   da1140 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da67b5:	49 89 ee             	mov    r14,rbp
  da67b8:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da67be:	0f 83 5c 01 00 00    	jae    da6920 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3a60>
  da67c4:	e9 77 0b 00 00       	jmp    da7340 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da67c9:	48 89 ee             	mov    rsi,rbp
  da67cc:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da67d0:	e8 ab 67 fe ff       	call   d8cf80 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da67d5:	49 89 ee             	mov    r14,rbp
  da67d8:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da67de:	0f 83 3c 01 00 00    	jae    da6920 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3a60>
  da67e4:	e9 57 0b 00 00       	jmp    da7340 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da67e9:	48 89 ee             	mov    rsi,rbp
  da67ec:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da67f0:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da67f5:	e8 c6 ea fd ff       	call   d852c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da67fa:	49 89 ee             	mov    r14,rbp
  da67fd:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da6803:	0f 83 17 01 00 00    	jae    da6920 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3a60>
  da6809:	e9 32 0b 00 00       	jmp    da7340 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da680e:	48 89 ee             	mov    rsi,rbp
  da6811:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da6815:	e8 66 35 ff ff       	call   d99d80 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da681a:	49 89 ee             	mov    r14,rbp
  da681d:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da6823:	0f 83 f7 00 00 00    	jae    da6920 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3a60>
  da6829:	e9 12 0b 00 00       	jmp    da7340 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da682e:	48 89 ee             	mov    rsi,rbp
  da6831:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da6835:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da683a:	e8 81 17 ff ff       	call   d97fc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da683f:	49 89 ee             	mov    r14,rbp
  da6842:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da6848:	0f 83 d2 00 00 00    	jae    da6920 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3a60>
  da684e:	e9 ed 0a 00 00       	jmp    da7340 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da6853:	48 89 ee             	mov    rsi,rbp
  da6856:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da685a:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da685f:	e8 5c 17 fe ff       	call   d87fc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da6864:	49 89 ee             	mov    r14,rbp
  da6867:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da686d:	0f 83 ad 00 00 00    	jae    da6920 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3a60>
  da6873:	e9 c8 0a 00 00       	jmp    da7340 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da6878:	48 89 ee             	mov    rsi,rbp
  da687b:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da687f:	e8 bc de fe ff       	call   d94740 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da6884:	49 89 ee             	mov    r14,rbp
  da6887:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da688d:	0f 83 8d 00 00 00    	jae    da6920 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3a60>
  da6893:	e9 a8 0a 00 00       	jmp    da7340 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da6898:	48 89 ee             	mov    rsi,rbp
  da689b:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da689f:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da68a4:	e8 97 2c fe ff       	call   d89540 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da68a9:	49 89 ee             	mov    r14,rbp
  da68ac:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da68b2:	73 6c                	jae    da6920 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3a60>
  da68b4:	e9 87 0a 00 00       	jmp    da7340 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da68b9:	48 89 ee             	mov    rsi,rbp
  da68bc:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da68c0:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da68c5:	e8 36 a6 fd ff       	call   d80f00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da68ca:	49 89 ee             	mov    r14,rbp
  da68cd:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da68d3:	73 4b                	jae    da6920 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3a60>
  da68d5:	e9 66 0a 00 00       	jmp    da7340 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da68da:	48 89 ee             	mov    rsi,rbp
  da68dd:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da68e1:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da68e6:	e8 55 2d ff ff       	call   d99640 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da68eb:	49 89 ee             	mov    r14,rbp
  da68ee:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da68f4:	73 2a                	jae    da6920 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3a60>
  da68f6:	e9 45 0a 00 00       	jmp    da7340 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da68fb:	48 89 ee             	mov    rsi,rbp
  da68fe:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da6902:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da6907:	e8 b4 ad fe ff       	call   d916c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da690c:	49 89 ee             	mov    r14,rbp
  da690f:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da6915:	0f 82 25 0a 00 00    	jb     da7340 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da691b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  da6920:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
  da6925:	48 8b 18             	mov    rbx,QWORD PTR [rax]
  da6928:	4c 8b a4 24 70 01 00 	mov    r12,QWORD PTR [rsp+0x170]
  da692f:	00 
  da6930:	4c 8b 6c 24 58       	mov    r13,QWORD PTR [rsp+0x58]
  da6935:	48 8b 44 24 78       	mov    rax,QWORD PTR [rsp+0x78]
  da693a:	4c 8b bc 24 a0 00 00 	mov    r15,QWORD PTR [rsp+0xa0]
  da6941:	00 
  da6942:	eb 40                	jmp    da6984 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3ac4>
  da6944:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da6949:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da6950:	00 
  da6951:	4c 89 ff             	mov    rdi,r15
  da6954:	4c 89 f6             	mov    rsi,r14
  da6957:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da695b:	48 89 d9             	mov    rcx,rbx
  da695e:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da6965:	00 
  da6966:	e8 55 a8 f1 ff       	call   cc11c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da696b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  da6970:	48 0f af dd          	imul   rbx,rbp
  da6974:	49 83 c5 18          	add    r13,0x18
  da6978:	4c 89 f0             	mov    rax,r14
  da697b:	49 ff cc             	dec    r12
  da697e:	0f 84 bc 09 00 00    	je     da7340 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da6984:	4d 89 fe             	mov    r14,r15
  da6987:	49 89 c7             	mov    r15,rax
  da698a:	49 8b 6d f8          	mov    rbp,QWORD PTR [r13-0x8]
  da698e:	4d 8b 45 00          	mov    r8,QWORD PTR [r13+0x0]
  da6992:	4c 03 44 24 30       	add    r8,QWORD PTR [rsp+0x30]
  da6997:	48 89 6c 24 48       	mov    QWORD PTR [rsp+0x48],rbp
  da699c:	48 8d 45 fe          	lea    rax,[rbp-0x2]
  da69a0:	48 83 f8 0e          	cmp    rax,0xe
  da69a4:	0f 87 0b 26 00 00    	ja     da8fb5 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x60f5>
  da69aa:	48 8d 0d 37 ca 2f ff 	lea    rcx,[rip+0xffffffffff2fca37]        # a33e8 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x30898>
  da69b1:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  da69b5:	48 01 c8             	add    rax,rcx
  da69b8:	ff e0                	jmp    rax
  da69ba:	4c 89 ff             	mov    rdi,r15
  da69bd:	4c 89 f6             	mov    rsi,r14
  da69c0:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da69c4:	48 89 d9             	mov    rcx,rbx
  da69c7:	e8 b4 23 f1 ff       	call   cb8d80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da69cc:	eb a2                	jmp    da6970 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3ab0>
  da69ce:	4c 89 ff             	mov    rdi,r15
  da69d1:	4c 89 f6             	mov    rsi,r14
  da69d4:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da69d8:	48 89 d9             	mov    rcx,rbx
  da69db:	e8 20 6e f1 ff       	call   cbd800 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da69e0:	eb 8e                	jmp    da6970 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3ab0>
  da69e2:	4c 89 ff             	mov    rdi,r15
  da69e5:	4c 89 f6             	mov    rsi,r14
  da69e8:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da69ec:	48 89 d9             	mov    rcx,rbx
  da69ef:	e8 0c 2d f1 ff       	call   cb9700 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da69f4:	e9 77 ff ff ff       	jmp    da6970 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3ab0>
  da69f9:	4c 89 ff             	mov    rdi,r15
  da69fc:	4c 89 f6             	mov    rsi,r14
  da69ff:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da6a03:	48 89 d9             	mov    rcx,rbx
  da6a06:	e8 35 83 f1 ff       	call   cbed40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da6a0b:	e9 60 ff ff ff       	jmp    da6970 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3ab0>
  da6a10:	4c 89 ff             	mov    rdi,r15
  da6a13:	4c 89 f6             	mov    rsi,r14
  da6a16:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da6a1a:	48 89 d9             	mov    rcx,rbx
  da6a1d:	e8 5e 51 f1 ff       	call   cbbb80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da6a22:	e9 49 ff ff ff       	jmp    da6970 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3ab0>
  da6a27:	4c 89 ff             	mov    rdi,r15
  da6a2a:	4c 89 f6             	mov    rsi,r14
  da6a2d:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da6a31:	48 89 d9             	mov    rcx,rbx
  da6a34:	e8 c7 26 f1 ff       	call   cb9100 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da6a39:	e9 32 ff ff ff       	jmp    da6970 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3ab0>
  da6a3e:	4c 89 ff             	mov    rdi,r15
  da6a41:	4c 89 f6             	mov    rsi,r14
  da6a44:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da6a48:	48 89 d9             	mov    rcx,rbx
  da6a4b:	e8 30 29 f1 ff       	call   cb9380 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da6a50:	e9 1b ff ff ff       	jmp    da6970 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3ab0>
  da6a55:	4c 89 ff             	mov    rdi,r15
  da6a58:	4c 89 f6             	mov    rsi,r14
  da6a5b:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da6a5f:	48 89 d9             	mov    rcx,rbx
  da6a62:	e8 99 3d f1 ff       	call   cba800 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da6a67:	e9 04 ff ff ff       	jmp    da6970 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3ab0>
  da6a6c:	4c 89 ff             	mov    rdi,r15
  da6a6f:	4c 89 f6             	mov    rsi,r14
  da6a72:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da6a76:	48 89 d9             	mov    rcx,rbx
  da6a79:	e8 42 24 f1 ff       	call   cb8ec0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da6a7e:	e9 ed fe ff ff       	jmp    da6970 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3ab0>
  da6a83:	4c 89 ff             	mov    rdi,r15
  da6a86:	4c 89 f6             	mov    rsi,r14
  da6a89:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da6a8d:	48 89 d9             	mov    rcx,rbx
  da6a90:	e8 ab 30 f1 ff       	call   cb9b40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da6a95:	e9 d6 fe ff ff       	jmp    da6970 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3ab0>
  da6a9a:	4c 89 ff             	mov    rdi,r15
  da6a9d:	4c 89 f6             	mov    rsi,r14
  da6aa0:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da6aa4:	48 89 d9             	mov    rcx,rbx
  da6aa7:	e8 94 94 f1 ff       	call   cbff40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da6aac:	e9 bf fe ff ff       	jmp    da6970 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3ab0>
  da6ab1:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da6ab6:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da6abd:	00 
  da6abe:	4c 89 ff             	mov    rdi,r15
  da6ac1:	4c 89 f6             	mov    rsi,r14
  da6ac4:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da6ac8:	48 89 d9             	mov    rcx,rbx
  da6acb:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da6ad2:	00 
  da6ad3:	e8 28 37 f1 ff       	call   cba200 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da6ad8:	e9 93 fe ff ff       	jmp    da6970 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3ab0>
  da6add:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da6ae2:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da6ae9:	00 
  da6aea:	4c 89 ff             	mov    rdi,r15
  da6aed:	4c 89 f6             	mov    rsi,r14
  da6af0:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da6af4:	48 89 d9             	mov    rcx,rbx
  da6af7:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da6afe:	00 
  da6aff:	e8 bc 60 f1 ff       	call   cbcbc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da6b04:	e9 67 fe ff ff       	jmp    da6970 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3ab0>
  da6b09:	4c 89 ff             	mov    rdi,r15
  da6b0c:	4c 89 f6             	mov    rsi,r14
  da6b0f:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da6b13:	48 89 d9             	mov    rcx,rbx
  da6b16:	e8 25 46 f1 ff       	call   cbb140 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da6b1b:	e9 50 fe ff ff       	jmp    da6970 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3ab0>
  da6b20:	48 89 ee             	mov    rsi,rbp
  da6b23:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da6b27:	4c 89 e1             	mov    rcx,r12
  da6b2a:	e8 91 b2 ff ff       	call   da1dc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da6b2f:	49 89 ee             	mov    r14,rbp
  da6b32:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da6b38:	0f 83 d5 03 00 00    	jae    da6f13 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4053>
  da6b3e:	e9 fd 07 00 00       	jmp    da7340 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da6b43:	48 89 ee             	mov    rsi,rbp
  da6b46:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da6b4a:	4c 89 e1             	mov    rcx,r12
  da6b4d:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  da6b52:	e8 a9 80 ff ff       	call   d9ec00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da6b57:	49 89 ee             	mov    r14,rbp
  da6b5a:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da6b60:	0f 83 d2 05 00 00    	jae    da7138 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4278>
  da6b66:	e9 d5 07 00 00       	jmp    da7340 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da6b6b:	48 89 ee             	mov    rsi,rbp
  da6b6e:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da6b72:	4c 89 e1             	mov    rcx,r12
  da6b75:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da6b7a:	e8 c1 78 ff ff       	call   d9e440 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da6b7f:	49 89 ee             	mov    r14,rbp
  da6b82:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da6b88:	0f 83 85 03 00 00    	jae    da6f13 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4053>
  da6b8e:	e9 ad 07 00 00       	jmp    da7340 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da6b93:	48 89 ee             	mov    rsi,rbp
  da6b96:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da6b9a:	4c 89 e1             	mov    rcx,r12
  da6b9d:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  da6ba2:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da6ba7:	e8 94 62 ff ff       	call   d9ce40 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da6bac:	49 89 ee             	mov    r14,rbp
  da6baf:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da6bb5:	0f 83 7d 05 00 00    	jae    da7138 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4278>
  da6bbb:	e9 80 07 00 00       	jmp    da7340 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da6bc0:	48 89 ee             	mov    rsi,rbp
  da6bc3:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da6bc7:	4c 89 e1             	mov    rcx,r12
  da6bca:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da6bcf:	e8 2c 07 ff ff       	call   d97300 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da6bd4:	49 89 ee             	mov    r14,rbp
  da6bd7:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da6bdd:	0f 83 30 03 00 00    	jae    da6f13 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4053>
  da6be3:	e9 58 07 00 00       	jmp    da7340 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da6be8:	48 89 ee             	mov    rsi,rbp
  da6beb:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da6bef:	4c 89 e1             	mov    rcx,r12
  da6bf2:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  da6bf7:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da6bfc:	e8 3f f4 fe ff       	call   d96040 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da6c01:	49 89 ee             	mov    r14,rbp
  da6c04:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da6c0a:	0f 83 28 05 00 00    	jae    da7138 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4278>
  da6c10:	e9 2b 07 00 00       	jmp    da7340 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da6c15:	48 89 ee             	mov    rsi,rbp
  da6c18:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da6c1c:	4c 89 e1             	mov    rcx,r12
  da6c1f:	e8 5c 07 fe ff       	call   d87380 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da6c24:	49 89 ee             	mov    r14,rbp
  da6c27:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da6c2d:	0f 83 e0 02 00 00    	jae    da6f13 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4053>
  da6c33:	e9 08 07 00 00       	jmp    da7340 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da6c38:	48 89 ee             	mov    rsi,rbp
  da6c3b:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da6c3f:	4c 89 e1             	mov    rcx,r12
  da6c42:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  da6c47:	e8 b4 b0 fe ff       	call   d91d00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da6c4c:	49 89 ee             	mov    r14,rbp
  da6c4f:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da6c55:	0f 83 dd 04 00 00    	jae    da7138 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4278>
  da6c5b:	e9 e0 06 00 00       	jmp    da7340 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da6c60:	48 89 ee             	mov    rsi,rbp
  da6c63:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da6c67:	4c 89 e1             	mov    rcx,r12
  da6c6a:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da6c6f:	e8 4c 60 ff ff       	call   d9ccc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da6c74:	49 89 ee             	mov    r14,rbp
  da6c77:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da6c7d:	0f 83 90 02 00 00    	jae    da6f13 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4053>
  da6c83:	e9 b8 06 00 00       	jmp    da7340 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da6c88:	48 89 ee             	mov    rsi,rbp
  da6c8b:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da6c8f:	4c 89 e1             	mov    rcx,r12
  da6c92:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  da6c97:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da6c9c:	e8 9f 85 fd ff       	call   d7f240 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da6ca1:	49 89 ee             	mov    r14,rbp
  da6ca4:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da6caa:	0f 83 88 04 00 00    	jae    da7138 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4278>
  da6cb0:	e9 8b 06 00 00       	jmp    da7340 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da6cb5:	48 89 ee             	mov    rsi,rbp
  da6cb8:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da6cbc:	4c 89 e1             	mov    rcx,r12
  da6cbf:	e8 bc 3e ff ff       	call   d9ab80 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da6cc4:	49 89 ee             	mov    r14,rbp
  da6cc7:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da6ccd:	0f 83 40 02 00 00    	jae    da6f13 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4053>
  da6cd3:	e9 68 06 00 00       	jmp    da7340 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da6cd8:	48 89 ee             	mov    rsi,rbp
  da6cdb:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da6cdf:	4c 89 e1             	mov    rcx,r12
  da6ce2:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  da6ce7:	e8 54 d5 fe ff       	call   d94240 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da6cec:	49 89 ee             	mov    r14,rbp
  da6cef:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da6cf5:	0f 83 3d 04 00 00    	jae    da7138 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4278>
  da6cfb:	e9 40 06 00 00       	jmp    da7340 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da6d00:	48 89 ee             	mov    rsi,rbp
  da6d03:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da6d07:	4c 89 e1             	mov    rcx,r12
  da6d0a:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da6d0f:	e8 ec 94 fd ff       	call   d80200 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da6d14:	49 89 ee             	mov    r14,rbp
  da6d17:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da6d1d:	0f 83 f0 01 00 00    	jae    da6f13 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4053>
  da6d23:	e9 18 06 00 00       	jmp    da7340 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da6d28:	48 89 ee             	mov    rsi,rbp
  da6d2b:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da6d2f:	4c 89 e1             	mov    rcx,r12
  da6d32:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  da6d37:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da6d3c:	e8 3f 74 fe ff       	call   d8e180 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da6d41:	49 89 ee             	mov    r14,rbp
  da6d44:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da6d4a:	0f 83 e8 03 00 00    	jae    da7138 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4278>
  da6d50:	e9 eb 05 00 00       	jmp    da7340 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da6d55:	48 89 ee             	mov    rsi,rbp
  da6d58:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da6d5c:	4c 89 e1             	mov    rcx,r12
  da6d5f:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da6d64:	e8 97 75 ff ff       	call   d9e300 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da6d69:	49 89 ee             	mov    r14,rbp
  da6d6c:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da6d72:	0f 83 9b 01 00 00    	jae    da6f13 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4053>
  da6d78:	e9 c3 05 00 00       	jmp    da7340 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da6d7d:	48 89 ee             	mov    rsi,rbp
  da6d80:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da6d84:	4c 89 e1             	mov    rcx,r12
  da6d87:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  da6d8c:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da6d91:	e8 2a 66 ff ff       	call   d9d3c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da6d96:	49 89 ee             	mov    r14,rbp
  da6d99:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da6d9f:	0f 83 93 03 00 00    	jae    da7138 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4278>
  da6da5:	e9 96 05 00 00       	jmp    da7340 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da6daa:	48 89 ee             	mov    rsi,rbp
  da6dad:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da6db1:	4c 89 e1             	mov    rcx,r12
  da6db4:	e8 47 40 ff ff       	call   d9ae00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da6db9:	49 89 ee             	mov    r14,rbp
  da6dbc:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da6dc2:	0f 83 4b 01 00 00    	jae    da6f13 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4053>
  da6dc8:	e9 73 05 00 00       	jmp    da7340 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da6dcd:	48 89 ee             	mov    rsi,rbp
  da6dd0:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da6dd4:	4c 89 e1             	mov    rcx,r12
  da6dd7:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  da6ddc:	e8 1f 34 fe ff       	call   d8a200 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da6de1:	49 89 ee             	mov    r14,rbp
  da6de4:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da6dea:	0f 83 48 03 00 00    	jae    da7138 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4278>
  da6df0:	e9 4b 05 00 00       	jmp    da7340 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da6df5:	48 89 ee             	mov    rsi,rbp
  da6df8:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da6dfc:	4c 89 e1             	mov    rcx,r12
  da6dff:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da6e04:	e8 37 b0 fd ff       	call   d81e40 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da6e09:	49 89 ee             	mov    r14,rbp
  da6e0c:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da6e12:	0f 83 fb 00 00 00    	jae    da6f13 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4053>
  da6e18:	e9 23 05 00 00       	jmp    da7340 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da6e1d:	48 89 ee             	mov    rsi,rbp
  da6e20:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da6e24:	4c 89 e1             	mov    rcx,r12
  da6e27:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  da6e2c:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da6e31:	e8 0a e9 fd ff       	call   d85740 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da6e36:	49 89 ee             	mov    r14,rbp
  da6e39:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da6e3f:	0f 83 f3 02 00 00    	jae    da7138 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4278>
  da6e45:	e9 f6 04 00 00       	jmp    da7340 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da6e4a:	48 89 ee             	mov    rsi,rbp
  da6e4d:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da6e51:	4c 89 e1             	mov    rcx,r12
  da6e54:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da6e59:	e8 a2 70 ff ff       	call   d9df00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da6e5e:	49 89 ee             	mov    r14,rbp
  da6e61:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da6e67:	0f 83 a6 00 00 00    	jae    da6f13 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4053>
  da6e6d:	e9 ce 04 00 00       	jmp    da7340 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da6e72:	48 89 ee             	mov    rsi,rbp
  da6e75:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da6e79:	4c 89 e1             	mov    rcx,r12
  da6e7c:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  da6e81:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da6e86:	e8 35 9b ff ff       	call   da09c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da6e8b:	49 89 ee             	mov    r14,rbp
  da6e8e:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da6e94:	0f 83 9e 02 00 00    	jae    da7138 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4278>
  da6e9a:	e9 a1 04 00 00       	jmp    da7340 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da6e9f:	48 89 ee             	mov    rsi,rbp
  da6ea2:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da6ea6:	4c 89 e1             	mov    rcx,r12
  da6ea9:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da6eae:	e8 cd fc fd ff       	call   d86b80 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da6eb3:	49 89 ee             	mov    r14,rbp
  da6eb6:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da6ebc:	73 55                	jae    da6f13 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4053>
  da6ebe:	e9 7d 04 00 00       	jmp    da7340 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da6ec3:	48 89 ee             	mov    rsi,rbp
  da6ec6:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da6eca:	4c 89 e1             	mov    rcx,r12
  da6ecd:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  da6ed2:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da6ed7:	e8 64 3b fe ff       	call   d8aa40 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da6edc:	49 89 ee             	mov    r14,rbp
  da6edf:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da6ee5:	0f 83 4d 02 00 00    	jae    da7138 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4278>
  da6eeb:	e9 50 04 00 00       	jmp    da7340 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da6ef0:	48 89 ee             	mov    rsi,rbp
  da6ef3:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da6ef7:	4c 89 e1             	mov    rcx,r12
  da6efa:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da6eff:	e8 bc 6b fe ff       	call   d8dac0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da6f04:	49 89 ee             	mov    r14,rbp
  da6f07:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da6f0d:	0f 82 2d 04 00 00    	jb     da7340 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da6f13:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
  da6f18:	48 8b 18             	mov    rbx,QWORD PTR [rax]
  da6f1b:	4c 8b a4 24 70 01 00 	mov    r12,QWORD PTR [rsp+0x170]
  da6f22:	00 
  da6f23:	4c 8b 6c 24 58       	mov    r13,QWORD PTR [rsp+0x58]
  da6f28:	48 8b 44 24 78       	mov    rax,QWORD PTR [rsp+0x78]
  da6f2d:	4c 8b bc 24 a0 00 00 	mov    r15,QWORD PTR [rsp+0xa0]
  da6f34:	00 
  da6f35:	eb 3d                	jmp    da6f74 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x40b4>
  da6f37:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da6f3c:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da6f43:	00 
  da6f44:	4c 89 ff             	mov    rdi,r15
  da6f47:	4c 89 f6             	mov    rsi,r14
  da6f4a:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da6f4e:	48 89 d9             	mov    rcx,rbx
  da6f51:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da6f58:	00 
  da6f59:	e8 62 a2 f1 ff       	call   cc11c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da6f5e:	66 90                	xchg   ax,ax
  da6f60:	48 0f af dd          	imul   rbx,rbp
  da6f64:	49 83 c5 18          	add    r13,0x18
  da6f68:	4c 89 f0             	mov    rax,r14
  da6f6b:	49 ff cc             	dec    r12
  da6f6e:	0f 84 cc 03 00 00    	je     da7340 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da6f74:	4d 89 fe             	mov    r14,r15
  da6f77:	49 89 c7             	mov    r15,rax
  da6f7a:	49 8b 6d f8          	mov    rbp,QWORD PTR [r13-0x8]
  da6f7e:	4d 8b 45 00          	mov    r8,QWORD PTR [r13+0x0]
  da6f82:	4c 03 44 24 30       	add    r8,QWORD PTR [rsp+0x30]
  da6f87:	48 89 6c 24 48       	mov    QWORD PTR [rsp+0x48],rbp
  da6f8c:	48 8d 45 fe          	lea    rax,[rbp-0x2]
  da6f90:	48 83 f8 0e          	cmp    rax,0xe
  da6f94:	0f 87 1b 20 00 00    	ja     da8fb5 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x60f5>
  da6f9a:	48 8d 0d d3 c3 2f ff 	lea    rcx,[rip+0xffffffffff2fc3d3]        # a3374 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x30824>
  da6fa1:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  da6fa5:	48 01 c8             	add    rax,rcx
  da6fa8:	ff e0                	jmp    rax
  da6faa:	4c 89 ff             	mov    rdi,r15
  da6fad:	4c 89 f6             	mov    rsi,r14
  da6fb0:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da6fb4:	48 89 d9             	mov    rcx,rbx
  da6fb7:	e8 c4 1d f1 ff       	call   cb8d80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da6fbc:	eb a2                	jmp    da6f60 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x40a0>
  da6fbe:	4c 89 ff             	mov    rdi,r15
  da6fc1:	4c 89 f6             	mov    rsi,r14
  da6fc4:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da6fc8:	48 89 d9             	mov    rcx,rbx
  da6fcb:	e8 30 68 f1 ff       	call   cbd800 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da6fd0:	eb 8e                	jmp    da6f60 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x40a0>
  da6fd2:	4c 89 ff             	mov    rdi,r15
  da6fd5:	4c 89 f6             	mov    rsi,r14
  da6fd8:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da6fdc:	48 89 d9             	mov    rcx,rbx
  da6fdf:	e8 1c 27 f1 ff       	call   cb9700 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da6fe4:	e9 77 ff ff ff       	jmp    da6f60 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x40a0>
  da6fe9:	4c 89 ff             	mov    rdi,r15
  da6fec:	4c 89 f6             	mov    rsi,r14
  da6fef:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da6ff3:	48 89 d9             	mov    rcx,rbx
  da6ff6:	e8 45 7d f1 ff       	call   cbed40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da6ffb:	e9 60 ff ff ff       	jmp    da6f60 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x40a0>
  da7000:	4c 89 ff             	mov    rdi,r15
  da7003:	4c 89 f6             	mov    rsi,r14
  da7006:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da700a:	48 89 d9             	mov    rcx,rbx
  da700d:	e8 6e 4b f1 ff       	call   cbbb80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7012:	e9 49 ff ff ff       	jmp    da6f60 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x40a0>
  da7017:	4c 89 ff             	mov    rdi,r15
  da701a:	4c 89 f6             	mov    rsi,r14
  da701d:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da7021:	48 89 d9             	mov    rcx,rbx
  da7024:	e8 d7 20 f1 ff       	call   cb9100 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7029:	e9 32 ff ff ff       	jmp    da6f60 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x40a0>
  da702e:	4c 89 ff             	mov    rdi,r15
  da7031:	4c 89 f6             	mov    rsi,r14
  da7034:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da7038:	48 89 d9             	mov    rcx,rbx
  da703b:	e8 40 23 f1 ff       	call   cb9380 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7040:	e9 1b ff ff ff       	jmp    da6f60 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x40a0>
  da7045:	4c 89 ff             	mov    rdi,r15
  da7048:	4c 89 f6             	mov    rsi,r14
  da704b:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da704f:	48 89 d9             	mov    rcx,rbx
  da7052:	e8 a9 37 f1 ff       	call   cba800 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7057:	e9 04 ff ff ff       	jmp    da6f60 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x40a0>
  da705c:	4c 89 ff             	mov    rdi,r15
  da705f:	4c 89 f6             	mov    rsi,r14
  da7062:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da7066:	48 89 d9             	mov    rcx,rbx
  da7069:	e8 52 1e f1 ff       	call   cb8ec0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da706e:	e9 ed fe ff ff       	jmp    da6f60 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x40a0>
  da7073:	4c 89 ff             	mov    rdi,r15
  da7076:	4c 89 f6             	mov    rsi,r14
  da7079:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da707d:	48 89 d9             	mov    rcx,rbx
  da7080:	e8 bb 2a f1 ff       	call   cb9b40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7085:	e9 d6 fe ff ff       	jmp    da6f60 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x40a0>
  da708a:	4c 89 ff             	mov    rdi,r15
  da708d:	4c 89 f6             	mov    rsi,r14
  da7090:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da7094:	48 89 d9             	mov    rcx,rbx
  da7097:	e8 a4 8e f1 ff       	call   cbff40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da709c:	e9 bf fe ff ff       	jmp    da6f60 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x40a0>
  da70a1:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da70a6:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da70ad:	00 
  da70ae:	4c 89 ff             	mov    rdi,r15
  da70b1:	4c 89 f6             	mov    rsi,r14
  da70b4:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da70b8:	48 89 d9             	mov    rcx,rbx
  da70bb:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da70c2:	00 
  da70c3:	e8 38 31 f1 ff       	call   cba200 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da70c8:	e9 93 fe ff ff       	jmp    da6f60 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x40a0>
  da70cd:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da70d2:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da70d9:	00 
  da70da:	4c 89 ff             	mov    rdi,r15
  da70dd:	4c 89 f6             	mov    rsi,r14
  da70e0:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da70e4:	48 89 d9             	mov    rcx,rbx
  da70e7:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da70ee:	00 
  da70ef:	e8 cc 5a f1 ff       	call   cbcbc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da70f4:	e9 67 fe ff ff       	jmp    da6f60 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x40a0>
  da70f9:	4c 89 ff             	mov    rdi,r15
  da70fc:	4c 89 f6             	mov    rsi,r14
  da70ff:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da7103:	48 89 d9             	mov    rcx,rbx
  da7106:	e8 35 40 f1 ff       	call   cbb140 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da710b:	e9 50 fe ff ff       	jmp    da6f60 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x40a0>
  da7110:	48 89 ee             	mov    rsi,rbp
  da7113:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da7117:	4c 89 e1             	mov    rcx,r12
  da711a:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
  da711f:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da7124:	e8 97 2e ff ff       	call   d99fc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da7129:	49 89 ee             	mov    r14,rbp
  da712c:	48 83 7c 24 50 02    	cmp    QWORD PTR [rsp+0x50],0x2
  da7132:	0f 82 08 02 00 00    	jb     da7340 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da7138:	48 8b 44 24 60       	mov    rax,QWORD PTR [rsp+0x60]
  da713d:	48 8b 18             	mov    rbx,QWORD PTR [rax]
  da7140:	4c 8b a4 24 70 01 00 	mov    r12,QWORD PTR [rsp+0x170]
  da7147:	00 
  da7148:	4c 8b 6c 24 58       	mov    r13,QWORD PTR [rsp+0x58]
  da714d:	48 8b 44 24 78       	mov    rax,QWORD PTR [rsp+0x78]
  da7152:	4c 8b bc 24 a0 00 00 	mov    r15,QWORD PTR [rsp+0xa0]
  da7159:	00 
  da715a:	eb 48                	jmp    da71a4 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x42e4>
  da715c:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da7161:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da7168:	00 
  da7169:	4c 89 ff             	mov    rdi,r15
  da716c:	4c 89 f6             	mov    rsi,r14
  da716f:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da7173:	48 89 d9             	mov    rcx,rbx
  da7176:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da717d:	00 
  da717e:	e8 3d a0 f1 ff       	call   cc11c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7183:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  da718a:	84 00 00 00 00 00 
  da7190:	48 0f af dd          	imul   rbx,rbp
  da7194:	49 83 c5 18          	add    r13,0x18
  da7198:	4c 89 f0             	mov    rax,r14
  da719b:	49 ff cc             	dec    r12
  da719e:	0f 84 9c 01 00 00    	je     da7340 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4480>
  da71a4:	4d 89 fe             	mov    r14,r15
  da71a7:	49 89 c7             	mov    r15,rax
  da71aa:	49 8b 6d f8          	mov    rbp,QWORD PTR [r13-0x8]
  da71ae:	4d 8b 45 00          	mov    r8,QWORD PTR [r13+0x0]
  da71b2:	4c 03 44 24 30       	add    r8,QWORD PTR [rsp+0x30]
  da71b7:	48 89 6c 24 48       	mov    QWORD PTR [rsp+0x48],rbp
  da71bc:	48 8d 45 fe          	lea    rax,[rbp-0x2]
  da71c0:	48 83 f8 0e          	cmp    rax,0xe
  da71c4:	0f 87 eb 1d 00 00    	ja     da8fb5 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x60f5>
  da71ca:	48 8d 0d 2f c1 2f ff 	lea    rcx,[rip+0xffffffffff2fc12f]        # a3300 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x307b0>
  da71d1:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  da71d5:	48 01 c8             	add    rax,rcx
  da71d8:	ff e0                	jmp    rax
  da71da:	4c 89 ff             	mov    rdi,r15
  da71dd:	4c 89 f6             	mov    rsi,r14
  da71e0:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da71e4:	48 89 d9             	mov    rcx,rbx
  da71e7:	e8 94 1b f1 ff       	call   cb8d80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da71ec:	eb a2                	jmp    da7190 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x42d0>
  da71ee:	4c 89 ff             	mov    rdi,r15
  da71f1:	4c 89 f6             	mov    rsi,r14
  da71f4:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da71f8:	48 89 d9             	mov    rcx,rbx
  da71fb:	e8 00 66 f1 ff       	call   cbd800 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7200:	eb 8e                	jmp    da7190 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x42d0>
  da7202:	4c 89 ff             	mov    rdi,r15
  da7205:	4c 89 f6             	mov    rsi,r14
  da7208:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da720c:	48 89 d9             	mov    rcx,rbx
  da720f:	e8 ec 24 f1 ff       	call   cb9700 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7214:	e9 77 ff ff ff       	jmp    da7190 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x42d0>
  da7219:	4c 89 ff             	mov    rdi,r15
  da721c:	4c 89 f6             	mov    rsi,r14
  da721f:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da7223:	48 89 d9             	mov    rcx,rbx
  da7226:	e8 15 7b f1 ff       	call   cbed40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da722b:	e9 60 ff ff ff       	jmp    da7190 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x42d0>
  da7230:	4c 89 ff             	mov    rdi,r15
  da7233:	4c 89 f6             	mov    rsi,r14
  da7236:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da723a:	48 89 d9             	mov    rcx,rbx
  da723d:	e8 3e 49 f1 ff       	call   cbbb80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7242:	e9 49 ff ff ff       	jmp    da7190 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x42d0>
  da7247:	4c 89 ff             	mov    rdi,r15
  da724a:	4c 89 f6             	mov    rsi,r14
  da724d:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da7251:	48 89 d9             	mov    rcx,rbx
  da7254:	e8 a7 1e f1 ff       	call   cb9100 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7259:	e9 32 ff ff ff       	jmp    da7190 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x42d0>
  da725e:	4c 89 ff             	mov    rdi,r15
  da7261:	4c 89 f6             	mov    rsi,r14
  da7264:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da7268:	48 89 d9             	mov    rcx,rbx
  da726b:	e8 10 21 f1 ff       	call   cb9380 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7270:	e9 1b ff ff ff       	jmp    da7190 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x42d0>
  da7275:	4c 89 ff             	mov    rdi,r15
  da7278:	4c 89 f6             	mov    rsi,r14
  da727b:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da727f:	48 89 d9             	mov    rcx,rbx
  da7282:	e8 79 35 f1 ff       	call   cba800 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7287:	e9 04 ff ff ff       	jmp    da7190 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x42d0>
  da728c:	4c 89 ff             	mov    rdi,r15
  da728f:	4c 89 f6             	mov    rsi,r14
  da7292:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da7296:	48 89 d9             	mov    rcx,rbx
  da7299:	e8 22 1c f1 ff       	call   cb8ec0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da729e:	e9 ed fe ff ff       	jmp    da7190 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x42d0>
  da72a3:	4c 89 ff             	mov    rdi,r15
  da72a6:	4c 89 f6             	mov    rsi,r14
  da72a9:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da72ad:	48 89 d9             	mov    rcx,rbx
  da72b0:	e8 8b 28 f1 ff       	call   cb9b40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da72b5:	e9 d6 fe ff ff       	jmp    da7190 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x42d0>
  da72ba:	4c 89 ff             	mov    rdi,r15
  da72bd:	4c 89 f6             	mov    rsi,r14
  da72c0:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da72c4:	48 89 d9             	mov    rcx,rbx
  da72c7:	e8 74 8c f1 ff       	call   cbff40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da72cc:	e9 bf fe ff ff       	jmp    da7190 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x42d0>
  da72d1:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da72d6:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da72dd:	00 
  da72de:	4c 89 ff             	mov    rdi,r15
  da72e1:	4c 89 f6             	mov    rsi,r14
  da72e4:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da72e8:	48 89 d9             	mov    rcx,rbx
  da72eb:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da72f2:	00 
  da72f3:	e8 08 2f f1 ff       	call   cba200 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da72f8:	e9 93 fe ff ff       	jmp    da7190 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x42d0>
  da72fd:	0f 28 44 24 10       	movaps xmm0,XMMWORD PTR [rsp+0x10]
  da7302:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da7309:	00 
  da730a:	4c 89 ff             	mov    rdi,r15
  da730d:	4c 89 f6             	mov    rsi,r14
  da7310:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da7314:	48 89 d9             	mov    rcx,rbx
  da7317:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da731e:	00 
  da731f:	e8 9c 58 f1 ff       	call   cbcbc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7324:	e9 67 fe ff ff       	jmp    da7190 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x42d0>
  da7329:	4c 89 ff             	mov    rdi,r15
  da732c:	4c 89 f6             	mov    rsi,r14
  da732f:	48 8b 14 24          	mov    rdx,QWORD PTR [rsp]
  da7333:	48 89 d9             	mov    rcx,rbx
  da7336:	e8 05 3e f1 ff       	call   cbb140 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da733b:	e9 50 fe ff ff       	jmp    da7190 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x42d0>
  da7340:	48 83 3c 24 00       	cmp    QWORD PTR [rsp],0x0
  da7345:	4c 8b 64 24 08       	mov    r12,QWORD PTR [rsp+0x8]
  da734a:	4c 8d ac 24 10 01 00 	lea    r13,[rsp+0x110]
  da7351:	00 
  da7352:	48 8b ac 24 98 00 00 	mov    rbp,QWORD PTR [rsp+0x98]
  da7359:	00 
  da735a:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
  da735f:	0f 84 5b f2 ff ff    	je     da65c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3700>
  da7365:	80 7c 24 38 00       	cmp    BYTE PTR [rsp+0x38],0x0
  da736a:	74 44                	je     da73b0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x44f0>
  da736c:	49 83 c6 10          	add    r14,0x10
  da7370:	48 8b 04 24          	mov    rax,QWORD PTR [rsp]
  da7374:	48 8b 8c 24 c0 00 00 	mov    rcx,QWORD PTR [rsp+0xc0]
  da737b:	00 
  da737c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  da7380:	41 0f 10 46 f0       	movups xmm0,XMMWORD PTR [r14-0x10]
  da7385:	41 0f 10 0e          	movups xmm1,XMMWORD PTR [r14]
  da7389:	0f 28 d1             	movaps xmm2,xmm1
  da738c:	0f 14 d0             	unpcklps xmm2,xmm0
  da738f:	0f 15 c8             	unpckhps xmm1,xmm0
  da7392:	0f 2b 11             	movntps XMMWORD PTR [rcx],xmm2
  da7395:	48 8d 51 10          	lea    rdx,[rcx+0x10]
  da7399:	0f 2b 0a             	movntps XMMWORD PTR [rdx],xmm1
  da739c:	48 01 e9             	add    rcx,rbp
  da739f:	49 83 c6 20          	add    r14,0x20
  da73a3:	48 ff c8             	dec    rax
  da73a6:	75 d8                	jne    da7380 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x44c0>
  da73a8:	e9 13 f2 ff ff       	jmp    da65c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3700>
  da73ad:	0f 1f 00             	nop    DWORD PTR [rax]
  da73b0:	48 c1 64 24 20 03    	shl    QWORD PTR [rsp+0x20],0x3
  da73b6:	49 83 c6 10          	add    r14,0x10
  da73ba:	4c 8b 3c 24          	mov    r15,QWORD PTR [rsp]
  da73be:	48 8b 9c 24 c0 00 00 	mov    rbx,QWORD PTR [rsp+0xc0]
  da73c5:	00 
  da73c6:	eb 1f                	jmp    da73e7 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4527>
  da73c8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  da73cf:	00 
  da73d0:	0f 11 0b             	movups XMMWORD PTR [rbx],xmm1
  da73d3:	0f 11 43 10          	movups XMMWORD PTR [rbx+0x10],xmm0
  da73d7:	48 01 eb             	add    rbx,rbp
  da73da:	49 83 c6 20          	add    r14,0x20
  da73de:	49 ff cf             	dec    r15
  da73e1:	0f 84 d9 f1 ff ff    	je     da65c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x3700>
  da73e7:	41 0f 10 56 f0       	movups xmm2,XMMWORD PTR [r14-0x10]
  da73ec:	41 0f 10 06          	movups xmm0,XMMWORD PTR [r14]
  da73f0:	0f 28 c8             	movaps xmm1,xmm0
  da73f3:	0f 14 ca             	unpcklps xmm1,xmm2
  da73f6:	0f 15 c2             	unpckhps xmm0,xmm2
  da73f9:	48 83 f8 03          	cmp    rax,0x3
  da73fd:	77 d1                	ja     da73d0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4510>
  da73ff:	0f 57 d2             	xorps  xmm2,xmm2
  da7402:	41 0f 29 55 50       	movaps XMMWORD PTR [r13+0x50],xmm2
  da7407:	41 0f 29 55 40       	movaps XMMWORD PTR [r13+0x40],xmm2
  da740c:	41 0f 29 55 30       	movaps XMMWORD PTR [r13+0x30],xmm2
  da7411:	41 0f 29 55 20       	movaps XMMWORD PTR [r13+0x20],xmm2
  da7416:	41 0f 29 55 10       	movaps XMMWORD PTR [r13+0x10],xmm2
  da741b:	41 0f 29 55 00       	movaps XMMWORD PTR [r13+0x0],xmm2
  da7420:	0f 29 8c 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm1
  da7427:	00 
  da7428:	0f 29 84 24 00 01 00 	movaps XMMWORD PTR [rsp+0x100],xmm0
  da742f:	00 
  da7430:	48 89 df             	mov    rdi,rbx
  da7433:	48 8d b4 24 f0 00 00 	lea    rsi,[rsp+0xf0]
  da743a:	00 
  da743b:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  da7440:	ff 15 9a 32 4a 00    	call   QWORD PTR [rip+0x4a329a]        # 124a6e0 <memcpy@GLIBC_2.14>
  da7446:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
  da744b:	eb 8a                	jmp    da73d7 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4517>
  da744d:	80 7c 24 38 00       	cmp    BYTE PTR [rsp+0x38],0x0
  da7452:	74 03                	je     da7457 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4597>
  da7454:	0f ae f8             	sfence
  da7457:	48 81 c4 48 02 00 00 	add    rsp,0x248
  da745e:	5b                   	pop    rbx
  da745f:	41 5c                	pop    r12
  da7461:	41 5d                	pop    r13
  da7463:	41 5e                	pop    r14
  da7465:	41 5f                	pop    r15
  da7467:	5d                   	pop    rbp
  da7468:	c3                   	ret
  da7469:	89 d8                	mov    eax,ebx
  da746b:	31 d2                	xor    edx,edx
  da746d:	41 f7 f7             	div    r15d
  da7470:	48 8b b4 24 d8 00 00 	mov    rsi,QWORD PTR [rsp+0xd8]
  da7477:	00 
  da7478:	48 8d 0c f1          	lea    rcx,[rcx+rsi*8]
  da747c:	48 89 4c 24 38       	mov    QWORD PTR [rsp+0x38],rcx
  da7481:	0f 28 44 24 60       	movaps xmm0,XMMWORD PTR [rsp+0x60]
  da7486:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  da748a:	0f 29 44 24 60       	movaps XMMWORD PTR [rsp+0x60],xmm0
  da748f:	31 c9                	xor    ecx,ecx
  da7491:	48 85 d2             	test   rdx,rdx
  da7494:	0f 95 c1             	setne  cl
  da7497:	48 01 c1             	add    rcx,rax
  da749a:	48 89 8c 24 98 01 00 	mov    QWORD PTR [rsp+0x198],rcx
  da74a1:	00 
  da74a2:	4c 89 84 24 b0 00 00 	mov    QWORD PTR [rsp+0xb0],r8
  da74a9:	00 
  da74aa:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  da74af:	48 89 5c 24 28       	mov    QWORD PTR [rsp+0x28],rbx
  da74b4:	4c 89 b4 24 e0 01 00 	mov    QWORD PTR [rsp+0x1e0],r14
  da74bb:	00 
  da74bc:	4c 89 bc 24 d0 01 00 	mov    QWORD PTR [rsp+0x1d0],r15
  da74c3:	00 
  da74c4:	0f 84 fe 06 00 00    	je     da7bc8 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4d08>
  da74ca:	48 89 d1             	mov    rcx,rdx
  da74cd:	48 c1 e9 02          	shr    rcx,0x2
  da74d1:	89 d0                	mov    eax,edx
  da74d3:	83 e0 03             	and    eax,0x3
  da74d6:	48 83 f8 01          	cmp    rax,0x1
  da74da:	48 83 d9 ff          	sbb    rcx,0xffffffffffffffff
  da74de:	48 89 4c 24 78       	mov    QWORD PTR [rsp+0x78],rcx
  da74e3:	4d 85 ed             	test   r13,r13
  da74e6:	0f 84 88 1b 00 00    	je     da9074 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x61b4>
  da74ec:	48 8b 84 24 90 01 00 	mov    rax,QWORD PTR [rsp+0x190]
  da74f3:	00 
  da74f4:	48 8b 48 70          	mov    rcx,QWORD PTR [rax+0x70]
  da74f8:	48 8b 80 90 00 00 00 	mov    rax,QWORD PTR [rax+0x90]
  da74ff:	48 89 84 24 c8 00 00 	mov    QWORD PTR [rsp+0xc8],rax
  da7506:	00 
  da7507:	48 01 c0             	add    rax,rax
  da750a:	48 89 84 24 70 01 00 	mov    QWORD PTR [rsp+0x170],rax
  da7511:	00 
  da7512:	f3 48 0f bc c1       	tzcnt  rax,rcx
  da7517:	48 89 04 24          	mov    QWORD PTR [rsp],rax
  da751b:	48 b8 ff ff ff ff ff 	movabs rax,0x7ffffffffffffff
  da7522:	ff ff 07 
  da7525:	48 89 4c 24 58       	mov    QWORD PTR [rsp+0x58],rcx
  da752a:	48 01 c8             	add    rax,rcx
  da752d:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
  da7532:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
  da7537:	48 83 c0 20          	add    rax,0x20
  da753b:	48 89 84 24 90 00 00 	mov    QWORD PTR [rsp+0x90],rax
  da7542:	00 
  da7543:	49 8d 45 ff          	lea    rax,[r13-0x1]
  da7547:	48 89 44 24 50       	mov    QWORD PTR [rsp+0x50],rax
  da754c:	4c 89 c0             	mov    rax,r8
  da754f:	48 c1 e0 07          	shl    rax,0x7
  da7553:	48 89 84 24 a0 00 00 	mov    QWORD PTR [rsp+0xa0],rax
  da755a:	00 
  da755b:	48 89 d8             	mov    rax,rbx
  da755e:	48 c1 e0 05          	shl    rax,0x5
  da7562:	48 89 44 24 40       	mov    QWORD PTR [rsp+0x40],rax
  da7567:	31 c9                	xor    ecx,ecx
  da7569:	48 8b 84 24 88 00 00 	mov    rax,QWORD PTR [rsp+0x88]
  da7570:	00 
  da7571:	48 89 84 24 80 00 00 	mov    QWORD PTR [rsp+0x80],rax
  da7578:	00 
  da7579:	4c 89 ac 24 c0 01 00 	mov    QWORD PTR [rsp+0x1c0],r13
  da7580:	00 
  da7581:	40 88 ac 24 f0 01 00 	mov    BYTE PTR [rsp+0x1f0],bpl
  da7588:	00 
  da7589:	eb 4e                	jmp    da75d9 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4719>
  da758b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  da7590:	48 8b 84 24 80 00 00 	mov    rax,QWORD PTR [rsp+0x80]
  da7597:	00 
  da7598:	48 03 84 24 a0 00 00 	add    rax,QWORD PTR [rsp+0xa0]
  da759f:	00 
  da75a0:	48 89 84 24 80 00 00 	mov    QWORD PTR [rsp+0x80],rax
  da75a7:	00 
  da75a8:	48 8b 8c 24 e8 00 00 	mov    rcx,QWORD PTR [rsp+0xe8]
  da75af:	00 
  da75b0:	48 83 bc 24 98 01 00 	cmp    QWORD PTR [rsp+0x198],0x0
  da75b7:	00 00 
  da75b9:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  da75be:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  da75c3:	4c 8b b4 24 e0 01 00 	mov    r14,QWORD PTR [rsp+0x1e0]
  da75ca:	00 
  da75cb:	4c 8b bc 24 d0 01 00 	mov    r15,QWORD PTR [rsp+0x1d0]
  da75d2:	00 
  da75d3:	0f 84 ef 05 00 00    	je     da7bc8 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4d08>
  da75d9:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
  da75de:	48 8b 00             	mov    rax,QWORD PTR [rax]
  da75e1:	48 83 f8 02          	cmp    rax,0x2
  da75e5:	74 79                	je     da7660 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x47a0>
  da75e7:	48 83 f8 04          	cmp    rax,0x4
  da75eb:	74 43                	je     da7630 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4770>
  da75ed:	48 83 f8 08          	cmp    rax,0x8
  da75f1:	0f 85 0d 1a 00 00    	jne    da9004 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6144>
  da75f7:	48 8b 84 24 d0 00 00 	mov    rax,QWORD PTR [rsp+0xd0]
  da75fe:	00 
  da75ff:	48 8d 3c c8          	lea    rdi,[rax+rcx*8]
  da7603:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  da7608:	49 89 ce             	mov    r14,rcx
  da760b:	48 89 d9             	mov    rcx,rbx
  da760e:	4c 8b 8c 24 c8 00 00 	mov    r9,QWORD PTR [rsp+0xc8]
  da7615:	00 
  da7616:	0f 28 44 24 60       	movaps xmm0,XMMWORD PTR [rsp+0x60]
  da761b:	e8 20 6f fd ff       	call   d7e540 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first_group>
  da7620:	eb 67                	jmp    da7689 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x47c9>
  da7622:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  da7629:	1f 84 00 00 00 00 00 
  da7630:	48 8b 84 24 d0 00 00 	mov    rax,QWORD PTR [rsp+0xd0]
  da7637:	00 
  da7638:	48 8d 3c c8          	lea    rdi,[rax+rcx*8]
  da763c:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  da7641:	49 89 ce             	mov    r14,rcx
  da7644:	48 89 d9             	mov    rcx,rbx
  da7647:	4c 8b 8c 24 c8 00 00 	mov    r9,QWORD PTR [rsp+0xc8]
  da764e:	00 
  da764f:	0f 28 44 24 60       	movaps xmm0,XMMWORD PTR [rsp+0x60]
  da7654:	e8 27 73 fd ff       	call   d7e980 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first_group>
  da7659:	eb 2e                	jmp    da7689 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x47c9>
  da765b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  da7660:	48 8b 84 24 d0 00 00 	mov    rax,QWORD PTR [rsp+0xd0]
  da7667:	00 
  da7668:	48 8d 3c c8          	lea    rdi,[rax+rcx*8]
  da766c:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  da7671:	49 89 ce             	mov    r14,rcx
  da7674:	48 89 d9             	mov    rcx,rbx
  da7677:	4c 8b 8c 24 c8 00 00 	mov    r9,QWORD PTR [rsp+0xc8]
  da767e:	00 
  da767f:	0f 28 44 24 60       	movaps xmm0,XMMWORD PTR [rsp+0x60]
  da7684:	e8 b7 74 fd ff       	call   d7eb40 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first_group>
  da7689:	4b 8d 04 3e          	lea    rax,[r14+r15*1]
  da768d:	48 89 84 24 e8 00 00 	mov    QWORD PTR [rsp+0xe8],rax
  da7694:	00 
  da7695:	48 ff 8c 24 98 01 00 	dec    QWORD PTR [rsp+0x198]
  da769c:	00 
  da769d:	4d 01 f6             	add    r14,r14
  da76a0:	4c 89 b4 24 b0 01 00 	mov    QWORD PTR [rsp+0x1b0],r14
  da76a7:	00 
  da76a8:	48 8b 84 24 80 00 00 	mov    rax,QWORD PTR [rsp+0x80]
  da76af:	00 
  da76b0:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
  da76b5:	31 c0                	xor    eax,eax
  da76b7:	eb 29                	jmp    da76e2 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4822>
  da76b9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  da76c0:	48 8b 84 24 98 00 00 	mov    rax,QWORD PTR [rsp+0x98]
  da76c7:	00 
  da76c8:	48 ff c0             	inc    rax
  da76cb:	48 83 6c 24 10 80    	sub    QWORD PTR [rsp+0x10],0xffffffffffffff80
  da76d1:	4c 8b 84 24 b0 00 00 	mov    r8,QWORD PTR [rsp+0xb0]
  da76d8:	00 
  da76d9:	4c 39 c0             	cmp    rax,r8
  da76dc:	0f 84 ae fe ff ff    	je     da7590 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x46d0>
  da76e2:	48 89 84 24 98 00 00 	mov    QWORD PTR [rsp+0x98],rax
  da76e9:	00 
  da76ea:	48 0f af 84 24 70 01 	imul   rax,QWORD PTR [rsp+0x170]
  da76f1:	00 00 
  da76f3:	48 8b 4c 24 38       	mov    rcx,QWORD PTR [rsp+0x38]
  da76f8:	48 8d 0c 81          	lea    rcx,[rcx+rax*4]
  da76fc:	49 83 fd 02          	cmp    r13,0x2
  da7700:	0f 82 ea 01 00 00    	jb     da78f0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4a30>
  da7706:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
  da770b:	4c 8b 20             	mov    r12,QWORD PTR [rax]
  da770e:	4c 8b 74 24 50       	mov    r14,QWORD PTR [rsp+0x50]
  da7713:	4c 8b ac 24 90 00 00 	mov    r13,QWORD PTR [rsp+0x90]
  da771a:	00 
  da771b:	49 89 cf             	mov    r15,rcx
  da771e:	48 8b 9c 24 10 02 00 	mov    rbx,QWORD PTR [rsp+0x210]
  da7725:	00 
  da7726:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  da772b:	48 89 8c 24 b8 00 00 	mov    QWORD PTR [rsp+0xb8],rcx
  da7732:	00 
  da7733:	eb 49                	jmp    da777e <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48be>
  da7735:	0f 28 44 24 60       	movaps xmm0,XMMWORD PTR [rsp+0x60]
  da773a:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da7741:	00 
  da7742:	48 89 df             	mov    rdi,rbx
  da7745:	4c 89 fe             	mov    rsi,r15
  da7748:	4c 89 e1             	mov    rcx,r12
  da774b:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da7752:	00 
  da7753:	e8 68 9a f1 ff       	call   cc11c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7758:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  da775f:	00 
  da7760:	4c 0f af e5          	imul   r12,rbp
  da7764:	49 83 c5 18          	add    r13,0x18
  da7768:	49 ff ce             	dec    r14
  da776b:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  da7770:	48 8b 8c 24 b8 00 00 	mov    rcx,QWORD PTR [rsp+0xb8]
  da7777:	00 
  da7778:	0f 84 7a 01 00 00    	je     da78f8 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4a38>
  da777e:	48 89 d8             	mov    rax,rbx
  da7781:	4c 89 fb             	mov    rbx,r15
  da7784:	49 8b 6d f8          	mov    rbp,QWORD PTR [r13-0x8]
  da7788:	49 83 fe 01          	cmp    r14,0x1
  da778c:	49 89 c7             	mov    r15,rax
  da778f:	4c 0f 44 f9          	cmove  r15,rcx
  da7793:	4d 8b 45 00          	mov    r8,QWORD PTR [r13+0x0]
  da7797:	4c 03 44 24 30       	add    r8,QWORD PTR [rsp+0x30]
  da779c:	48 89 6c 24 48       	mov    QWORD PTR [rsp+0x48],rbp
  da77a1:	48 8d 45 fe          	lea    rax,[rbp-0x2]
  da77a5:	48 83 f8 0e          	cmp    rax,0xe
  da77a9:	0f 87 06 18 00 00    	ja     da8fb5 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x60f5>
  da77af:	48 8d 0d 6e bc 2f ff 	lea    rcx,[rip+0xffffffffff2fbc6e]        # a3424 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x308d4>
  da77b6:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  da77ba:	48 01 c8             	add    rax,rcx
  da77bd:	ff e0                	jmp    rax
  da77bf:	48 89 df             	mov    rdi,rbx
  da77c2:	4c 89 fe             	mov    rsi,r15
  da77c5:	4c 89 e1             	mov    rcx,r12
  da77c8:	e8 b3 15 f1 ff       	call   cb8d80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da77cd:	eb 91                	jmp    da7760 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48a0>
  da77cf:	48 89 df             	mov    rdi,rbx
  da77d2:	4c 89 fe             	mov    rsi,r15
  da77d5:	4c 89 e1             	mov    rcx,r12
  da77d8:	e8 23 60 f1 ff       	call   cbd800 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da77dd:	eb 81                	jmp    da7760 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48a0>
  da77df:	48 89 df             	mov    rdi,rbx
  da77e2:	4c 89 fe             	mov    rsi,r15
  da77e5:	4c 89 e1             	mov    rcx,r12
  da77e8:	e8 13 1f f1 ff       	call   cb9700 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da77ed:	e9 6e ff ff ff       	jmp    da7760 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48a0>
  da77f2:	48 89 df             	mov    rdi,rbx
  da77f5:	4c 89 fe             	mov    rsi,r15
  da77f8:	4c 89 e1             	mov    rcx,r12
  da77fb:	e8 40 75 f1 ff       	call   cbed40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7800:	e9 5b ff ff ff       	jmp    da7760 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48a0>
  da7805:	48 89 df             	mov    rdi,rbx
  da7808:	4c 89 fe             	mov    rsi,r15
  da780b:	4c 89 e1             	mov    rcx,r12
  da780e:	e8 6d 43 f1 ff       	call   cbbb80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7813:	e9 48 ff ff ff       	jmp    da7760 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48a0>
  da7818:	48 89 df             	mov    rdi,rbx
  da781b:	4c 89 fe             	mov    rsi,r15
  da781e:	4c 89 e1             	mov    rcx,r12
  da7821:	e8 da 18 f1 ff       	call   cb9100 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7826:	e9 35 ff ff ff       	jmp    da7760 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48a0>
  da782b:	48 89 df             	mov    rdi,rbx
  da782e:	4c 89 fe             	mov    rsi,r15
  da7831:	4c 89 e1             	mov    rcx,r12
  da7834:	e8 47 1b f1 ff       	call   cb9380 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7839:	e9 22 ff ff ff       	jmp    da7760 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48a0>
  da783e:	48 89 df             	mov    rdi,rbx
  da7841:	4c 89 fe             	mov    rsi,r15
  da7844:	4c 89 e1             	mov    rcx,r12
  da7847:	e8 b4 2f f1 ff       	call   cba800 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da784c:	e9 0f ff ff ff       	jmp    da7760 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48a0>
  da7851:	48 89 df             	mov    rdi,rbx
  da7854:	4c 89 fe             	mov    rsi,r15
  da7857:	4c 89 e1             	mov    rcx,r12
  da785a:	e8 61 16 f1 ff       	call   cb8ec0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da785f:	e9 fc fe ff ff       	jmp    da7760 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48a0>
  da7864:	48 89 df             	mov    rdi,rbx
  da7867:	4c 89 fe             	mov    rsi,r15
  da786a:	4c 89 e1             	mov    rcx,r12
  da786d:	e8 ce 22 f1 ff       	call   cb9b40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7872:	e9 e9 fe ff ff       	jmp    da7760 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48a0>
  da7877:	48 89 df             	mov    rdi,rbx
  da787a:	4c 89 fe             	mov    rsi,r15
  da787d:	4c 89 e1             	mov    rcx,r12
  da7880:	e8 bb 86 f1 ff       	call   cbff40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7885:	e9 d6 fe ff ff       	jmp    da7760 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48a0>
  da788a:	0f 28 44 24 60       	movaps xmm0,XMMWORD PTR [rsp+0x60]
  da788f:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da7896:	00 
  da7897:	48 89 df             	mov    rdi,rbx
  da789a:	4c 89 fe             	mov    rsi,r15
  da789d:	4c 89 e1             	mov    rcx,r12
  da78a0:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da78a7:	00 
  da78a8:	e8 53 29 f1 ff       	call   cba200 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da78ad:	e9 ae fe ff ff       	jmp    da7760 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48a0>
  da78b2:	0f 28 44 24 60       	movaps xmm0,XMMWORD PTR [rsp+0x60]
  da78b7:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da78be:	00 
  da78bf:	48 89 df             	mov    rdi,rbx
  da78c2:	4c 89 fe             	mov    rsi,r15
  da78c5:	4c 89 e1             	mov    rcx,r12
  da78c8:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da78cf:	00 
  da78d0:	e8 eb 52 f1 ff       	call   cbcbc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da78d5:	e9 86 fe ff ff       	jmp    da7760 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48a0>
  da78da:	48 89 df             	mov    rdi,rbx
  da78dd:	4c 89 fe             	mov    rsi,r15
  da78e0:	4c 89 e1             	mov    rcx,r12
  da78e3:	e8 58 38 f1 ff       	call   cbb140 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da78e8:	e9 73 fe ff ff       	jmp    da7760 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x48a0>
  da78ed:	0f 1f 00             	nop    DWORD PTR [rax]
  da78f0:	49 89 cf             	mov    r15,rcx
  da78f3:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  da78f8:	48 8b 74 24 58       	mov    rsi,QWORD PTR [rsp+0x58]
  da78fd:	48 85 f6             	test   rsi,rsi
  da7900:	0f 84 46 17 00 00    	je     da904c <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x618c>
  da7906:	48 89 d0             	mov    rax,rdx
  da7909:	48 09 f0             	or     rax,rsi
  da790c:	48 c1 e8 20          	shr    rax,0x20
  da7910:	4c 8b ac 24 c0 01 00 	mov    r13,QWORD PTR [rsp+0x1c0]
  da7917:	00 
  da7918:	0f b6 ac 24 f0 01 00 	movzx  ebp,BYTE PTR [rsp+0x1f0]
  da791f:	00 
  da7920:	48 89 d1             	mov    rcx,rdx
  da7923:	74 1b                	je     da7940 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4a80>
  da7925:	48 89 d0             	mov    rax,rdx
  da7928:	31 d2                	xor    edx,edx
  da792a:	48 f7 f6             	div    rsi
  da792d:	48 85 c9             	test   rcx,rcx
  da7930:	75 1d                	jne    da794f <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4a8f>
  da7932:	e9 89 fd ff ff       	jmp    da76c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4800>
  da7937:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  da793e:	00 00 
  da7940:	89 d0                	mov    eax,edx
  da7942:	31 d2                	xor    edx,edx
  da7944:	f7 f6                	div    esi
  da7946:	48 85 c9             	test   rcx,rcx
  da7949:	0f 84 71 fd ff ff    	je     da76c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4800>
  da794f:	48 8b 8c 24 b0 01 00 	mov    rcx,QWORD PTR [rsp+0x1b0]
  da7956:	00 
  da7957:	48 8b 94 24 98 00 00 	mov    rdx,QWORD PTR [rsp+0x98]
  da795e:	00 
  da795f:	48 8d 0c d1          	lea    rcx,[rcx+rdx*8]
  da7963:	48 0f af c1          	imul   rax,rcx
  da7967:	48 0f af 4c 24 58    	imul   rcx,QWORD PTR [rsp+0x58]
  da796d:	48 8b 94 24 a0 01 00 	mov    rdx,QWORD PTR [rsp+0x1a0]
  da7974:	00 
  da7975:	48 8d 04 82          	lea    rax,[rdx+rax*4]
  da7979:	48 8b 94 24 a8 00 00 	mov    rdx,QWORD PTR [rsp+0xa8]
  da7980:	00 
  da7981:	48 8d 14 8a          	lea    rdx,[rdx+rcx*4]
  da7985:	49 83 c7 70          	add    r15,0x70
  da7989:	48 8b 74 24 10       	mov    rsi,QWORD PTR [rsp+0x10]
  da798e:	48 8b 7c 24 78       	mov    rdi,QWORD PTR [rsp+0x78]
  da7993:	45 31 c0             	xor    r8d,r8d
  da7996:	eb 42                	jmp    da79da <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4b1a>
  da7998:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  da799f:	00 
  da79a0:	44 0f 11 06          	movups XMMWORD PTR [rsi],xmm8
  da79a4:	44 0f 11 4e 10       	movups XMMWORD PTR [rsi+0x10],xmm9
  da79a9:	0f 11 76 20          	movups XMMWORD PTR [rsi+0x20],xmm6
  da79ad:	0f 11 66 30          	movups XMMWORD PTR [rsi+0x30],xmm4
  da79b1:	0f 11 7e 40          	movups XMMWORD PTR [rsi+0x40],xmm7
  da79b5:	0f 11 46 50          	movups XMMWORD PTR [rsi+0x50],xmm0
  da79b9:	0f 11 6e 60          	movups XMMWORD PTR [rsi+0x60],xmm5
  da79bd:	0f 11 5e 70          	movups XMMWORD PTR [rsi+0x70],xmm3
  da79c1:	48 ff cf             	dec    rdi
  da79c4:	48 03 74 24 40       	add    rsi,QWORD PTR [rsp+0x40]
  da79c9:	49 83 ef 80          	sub    r15,0xffffffffffffff80
  da79cd:	49 83 c0 04          	add    r8,0x4
  da79d1:	48 85 ff             	test   rdi,rdi
  da79d4:	0f 84 e6 fc ff ff    	je     da76c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4800>
  da79da:	4d 89 c1             	mov    r9,r8
  da79dd:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da79e1:	49 d3 e9             	shr    r9,cl
  da79e4:	49 c1 e1 05          	shl    r9,0x5
  da79e8:	42 0f 10 04 08       	movups xmm0,XMMWORD PTR [rax+r9*1]
  da79ed:	42 0f 10 74 08 10    	movups xmm6,XMMWORD PTR [rax+r9*1+0x10]
  da79f3:	4c 89 c1             	mov    rcx,r8
  da79f6:	48 23 4c 24 08       	and    rcx,QWORD PTR [rsp+0x8]
  da79fb:	48 c1 e1 05          	shl    rcx,0x5
  da79ff:	0f 10 24 0a          	movups xmm4,XMMWORD PTR [rdx+rcx*1]
  da7a03:	0f 10 4c 0a 10       	movups xmm1,XMMWORD PTR [rdx+rcx*1+0x10]
  da7a08:	0f 10 5c 0a 20       	movups xmm3,XMMWORD PTR [rdx+rcx*1+0x20]
  da7a0d:	0f 10 54 0a 30       	movups xmm2,XMMWORD PTR [rdx+rcx*1+0x30]
  da7a12:	0f 28 ee             	movaps xmm5,xmm6
  da7a15:	0f 59 e9             	mulps  xmm5,xmm1
  da7a18:	0f 28 f8             	movaps xmm7,xmm0
  da7a1b:	0f 59 fc             	mulps  xmm7,xmm4
  da7a1e:	0f 5c fd             	subps  xmm7,xmm5
  da7a21:	0f 59 e6             	mulps  xmm4,xmm6
  da7a24:	0f 59 c8             	mulps  xmm1,xmm0
  da7a27:	0f 58 cc             	addps  xmm1,xmm4
  da7a2a:	45 0f 10 4f 90       	movups xmm9,XMMWORD PTR [r15-0x70]
  da7a2f:	45 0f 10 57 a0       	movups xmm10,XMMWORD PTR [r15-0x60]
  da7a34:	41 0f 10 6f b0       	movups xmm5,XMMWORD PTR [r15-0x50]
  da7a39:	45 0f 10 47 c0       	movups xmm8,XMMWORD PTR [r15-0x40]
  da7a3e:	41 0f 28 e1          	movaps xmm4,xmm9
  da7a42:	0f 59 e7             	mulps  xmm4,xmm7
  da7a45:	41 0f 59 fa          	mulps  xmm7,xmm10
  da7a49:	44 0f 59 d1          	mulps  xmm10,xmm1
  da7a4d:	41 0f 5c e2          	subps  xmm4,xmm10
  da7a51:	41 0f 59 c9          	mulps  xmm1,xmm9
  da7a55:	0f 58 cf             	addps  xmm1,xmm7
  da7a58:	0f 28 fe             	movaps xmm7,xmm6
  da7a5b:	0f 59 fa             	mulps  xmm7,xmm2
  da7a5e:	44 0f 28 c8          	movaps xmm9,xmm0
  da7a62:	44 0f 59 cb          	mulps  xmm9,xmm3
  da7a66:	44 0f 5c cf          	subps  xmm9,xmm7
  da7a6a:	0f 59 de             	mulps  xmm3,xmm6
  da7a6d:	0f 59 d0             	mulps  xmm2,xmm0
  da7a70:	0f 58 d3             	addps  xmm2,xmm3
  da7a73:	0f 28 fd             	movaps xmm7,xmm5
  da7a76:	41 0f 59 f9          	mulps  xmm7,xmm9
  da7a7a:	45 0f 59 c8          	mulps  xmm9,xmm8
  da7a7e:	44 0f 59 c2          	mulps  xmm8,xmm2
  da7a82:	41 0f 5c f8          	subps  xmm7,xmm8
  da7a86:	0f 59 d5             	mulps  xmm2,xmm5
  da7a89:	41 0f 58 d1          	addps  xmm2,xmm9
  da7a8d:	45 0f 10 47 d0       	movups xmm8,XMMWORD PTR [r15-0x30]
  da7a92:	45 0f 10 4f e0       	movups xmm9,XMMWORD PTR [r15-0x20]
  da7a97:	0f 10 6c 0a 40       	movups xmm5,XMMWORD PTR [rdx+rcx*1+0x40]
  da7a9c:	0f 10 5c 0a 50       	movups xmm3,XMMWORD PTR [rdx+rcx*1+0x50]
  da7aa1:	44 0f 28 d6          	movaps xmm10,xmm6
  da7aa5:	44 0f 59 d3          	mulps  xmm10,xmm3
  da7aa9:	44 0f 28 d8          	movaps xmm11,xmm0
  da7aad:	44 0f 59 dd          	mulps  xmm11,xmm5
  da7ab1:	45 0f 5c da          	subps  xmm11,xmm10
  da7ab5:	0f 59 ee             	mulps  xmm5,xmm6
  da7ab8:	0f 59 d8             	mulps  xmm3,xmm0
  da7abb:	0f 58 dd             	addps  xmm3,xmm5
  da7abe:	41 0f 28 e8          	movaps xmm5,xmm8
  da7ac2:	41 0f 59 eb          	mulps  xmm5,xmm11
  da7ac6:	45 0f 59 d9          	mulps  xmm11,xmm9
  da7aca:	44 0f 59 cb          	mulps  xmm9,xmm3
  da7ace:	41 0f 5c e9          	subps  xmm5,xmm9
  da7ad2:	41 0f 59 d8          	mulps  xmm3,xmm8
  da7ad6:	41 0f 58 db          	addps  xmm3,xmm11
  da7ada:	45 0f 10 47 f0       	movups xmm8,XMMWORD PTR [r15-0x10]
  da7adf:	45 0f 10 0f          	movups xmm9,XMMWORD PTR [r15]
  da7ae3:	44 0f 10 54 0a 60    	movups xmm10,XMMWORD PTR [rdx+rcx*1+0x60]
  da7ae9:	44 0f 10 5c 0a 70    	movups xmm11,XMMWORD PTR [rdx+rcx*1+0x70]
  da7aef:	44 0f 28 e6          	movaps xmm12,xmm6
  da7af3:	45 0f 59 e3          	mulps  xmm12,xmm11
  da7af7:	44 0f 28 e8          	movaps xmm13,xmm0
  da7afb:	45 0f 59 ea          	mulps  xmm13,xmm10
  da7aff:	45 0f 5c ec          	subps  xmm13,xmm12
  da7b03:	41 0f 59 f2          	mulps  xmm6,xmm10
  da7b07:	41 0f 59 c3          	mulps  xmm0,xmm11
  da7b0b:	0f 58 c6             	addps  xmm0,xmm6
  da7b0e:	45 0f 28 d0          	movaps xmm10,xmm8
  da7b12:	45 0f 59 d5          	mulps  xmm10,xmm13
  da7b16:	45 0f 59 e9          	mulps  xmm13,xmm9
  da7b1a:	44 0f 59 c8          	mulps  xmm9,xmm0
  da7b1e:	45 0f 5c d1          	subps  xmm10,xmm9
  da7b22:	41 0f 59 c0          	mulps  xmm0,xmm8
  da7b26:	41 0f 58 c5          	addps  xmm0,xmm13
  da7b2a:	44 0f 28 cc          	movaps xmm9,xmm4
  da7b2e:	44 0f 14 cf          	unpcklps xmm9,xmm7
  da7b32:	0f 28 f5             	movaps xmm6,xmm5
  da7b35:	41 0f 14 f2          	unpcklps xmm6,xmm10
  da7b39:	45 0f 28 c1          	movaps xmm8,xmm9
  da7b3d:	44 0f 16 c6          	movlhps xmm8,xmm6
  da7b41:	41 0f 12 f1          	movhlps xmm6,xmm9
  da7b45:	0f 15 e7             	unpckhps xmm4,xmm7
  da7b48:	41 0f 15 ea          	unpckhps xmm5,xmm10
  da7b4c:	0f 28 fc             	movaps xmm7,xmm4
  da7b4f:	0f 16 fd             	movlhps xmm7,xmm5
  da7b52:	0f 12 ec             	movhlps xmm5,xmm4
  da7b55:	44 0f 28 d1          	movaps xmm10,xmm1
  da7b59:	44 0f 14 d2          	unpcklps xmm10,xmm2
  da7b5d:	0f 28 e3             	movaps xmm4,xmm3
  da7b60:	0f 14 e0             	unpcklps xmm4,xmm0
  da7b63:	45 0f 28 ca          	movaps xmm9,xmm10
  da7b67:	44 0f 16 cc          	movlhps xmm9,xmm4
  da7b6b:	41 0f 12 e2          	movhlps xmm4,xmm10
  da7b6f:	0f 15 ca             	unpckhps xmm1,xmm2
  da7b72:	0f 15 d8             	unpckhps xmm3,xmm0
  da7b75:	0f 28 c1             	movaps xmm0,xmm1
  da7b78:	0f 16 c3             	movlhps xmm0,xmm3
  da7b7b:	0f 12 d9             	movhlps xmm3,xmm1
  da7b7e:	40 84 ed             	test   bpl,bpl
  da7b81:	0f 84 19 fe ff ff    	je     da79a0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4ae0>
  da7b87:	48 8d 4e 10          	lea    rcx,[rsi+0x10]
  da7b8b:	4c 8d 4e 20          	lea    r9,[rsi+0x20]
  da7b8f:	4c 8d 56 30          	lea    r10,[rsi+0x30]
  da7b93:	4c 8d 5e 40          	lea    r11,[rsi+0x40]
  da7b97:	48 8d 5e 50          	lea    rbx,[rsi+0x50]
  da7b9b:	4c 8d 76 60          	lea    r14,[rsi+0x60]
  da7b9f:	4c 8d 66 70          	lea    r12,[rsi+0x70]
  da7ba3:	44 0f 2b 06          	movntps XMMWORD PTR [rsi],xmm8
  da7ba7:	44 0f 2b 09          	movntps XMMWORD PTR [rcx],xmm9
  da7bab:	41 0f 2b 31          	movntps XMMWORD PTR [r9],xmm6
  da7baf:	41 0f 2b 22          	movntps XMMWORD PTR [r10],xmm4
  da7bb3:	41 0f 2b 3b          	movntps XMMWORD PTR [r11],xmm7
  da7bb7:	0f 2b 03             	movntps XMMWORD PTR [rbx],xmm0
  da7bba:	41 0f 2b 2e          	movntps XMMWORD PTR [r14],xmm5
  da7bbe:	41 0f 2b 1c 24       	movntps XMMWORD PTR [r12],xmm3
  da7bc3:	e9 f9 fd ff ff       	jmp    da79c1 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4b01>
  da7bc8:	40 84 ed             	test   bpl,bpl
  da7bcb:	74 03                	je     da7bd0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4d10>
  da7bcd:	0f ae f8             	sfence
  da7bd0:	48 89 d0             	mov    rax,rdx
  da7bd3:	4c 09 f8             	or     rax,r15
  da7bd6:	48 c1 e8 20          	shr    rax,0x20
  da7bda:	0f 84 a2 0d 00 00    	je     da8982 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5ac2>
  da7be0:	48 89 d0             	mov    rax,rdx
  da7be3:	31 d2                	xor    edx,edx
  da7be5:	49 f7 f7             	div    r15
  da7be8:	e9 9c 0d 00 00       	jmp    da8989 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5ac9>
  da7bed:	89 d8                	mov    eax,ebx
  da7bef:	31 d2                	xor    edx,edx
  da7bf1:	41 f7 f7             	div    r15d
  da7bf4:	48 8b b4 24 d8 00 00 	mov    rsi,QWORD PTR [rsp+0xd8]
  da7bfb:	00 
  da7bfc:	48 8d 0c f1          	lea    rcx,[rcx+rsi*8]
  da7c00:	48 89 4c 24 38       	mov    QWORD PTR [rsp+0x38],rcx
  da7c05:	0f 28 44 24 60       	movaps xmm0,XMMWORD PTR [rsp+0x60]
  da7c0a:	0f c6 c0 00          	shufps xmm0,xmm0,0x0
  da7c0e:	0f 29 44 24 60       	movaps XMMWORD PTR [rsp+0x60],xmm0
  da7c13:	31 c9                	xor    ecx,ecx
  da7c15:	48 85 d2             	test   rdx,rdx
  da7c18:	0f 95 c1             	setne  cl
  da7c1b:	48 01 c1             	add    rcx,rax
  da7c1e:	48 89 8c 24 98 01 00 	mov    QWORD PTR [rsp+0x198],rcx
  da7c25:	00 
  da7c26:	4c 89 84 24 b0 00 00 	mov    QWORD PTR [rsp+0xb0],r8
  da7c2d:	00 
  da7c2e:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  da7c33:	48 89 5c 24 28       	mov    QWORD PTR [rsp+0x28],rbx
  da7c38:	4c 89 b4 24 e0 01 00 	mov    QWORD PTR [rsp+0x1e0],r14
  da7c3f:	00 
  da7c40:	4c 89 bc 24 d0 01 00 	mov    QWORD PTR [rsp+0x1d0],r15
  da7c47:	00 
  da7c48:	0f 84 fa 06 00 00    	je     da8348 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5488>
  da7c4e:	48 89 d1             	mov    rcx,rdx
  da7c51:	48 c1 e9 02          	shr    rcx,0x2
  da7c55:	89 d0                	mov    eax,edx
  da7c57:	83 e0 03             	and    eax,0x3
  da7c5a:	48 83 f8 01          	cmp    rax,0x1
  da7c5e:	48 83 d9 ff          	sbb    rcx,0xffffffffffffffff
  da7c62:	48 89 4c 24 78       	mov    QWORD PTR [rsp+0x78],rcx
  da7c67:	4d 85 ed             	test   r13,r13
  da7c6a:	0f 84 04 14 00 00    	je     da9074 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x61b4>
  da7c70:	48 8b 84 24 90 01 00 	mov    rax,QWORD PTR [rsp+0x190]
  da7c77:	00 
  da7c78:	48 8b 48 70          	mov    rcx,QWORD PTR [rax+0x70]
  da7c7c:	48 8b 80 90 00 00 00 	mov    rax,QWORD PTR [rax+0x90]
  da7c83:	48 89 84 24 c8 00 00 	mov    QWORD PTR [rsp+0xc8],rax
  da7c8a:	00 
  da7c8b:	48 01 c0             	add    rax,rax
  da7c8e:	48 89 84 24 70 01 00 	mov    QWORD PTR [rsp+0x170],rax
  da7c95:	00 
  da7c96:	f3 48 0f bc c1       	tzcnt  rax,rcx
  da7c9b:	48 89 04 24          	mov    QWORD PTR [rsp],rax
  da7c9f:	48 b8 ff ff ff ff ff 	movabs rax,0x7ffffffffffffff
  da7ca6:	ff ff 07 
  da7ca9:	48 89 4c 24 58       	mov    QWORD PTR [rsp+0x58],rcx
  da7cae:	48 01 c8             	add    rax,rcx
  da7cb1:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
  da7cb6:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
  da7cbb:	48 83 c0 20          	add    rax,0x20
  da7cbf:	48 89 84 24 90 00 00 	mov    QWORD PTR [rsp+0x90],rax
  da7cc6:	00 
  da7cc7:	49 8d 45 ff          	lea    rax,[r13-0x1]
  da7ccb:	48 89 44 24 50       	mov    QWORD PTR [rsp+0x50],rax
  da7cd0:	4c 89 c0             	mov    rax,r8
  da7cd3:	48 c1 e0 07          	shl    rax,0x7
  da7cd7:	48 89 84 24 a0 00 00 	mov    QWORD PTR [rsp+0xa0],rax
  da7cde:	00 
  da7cdf:	48 89 d8             	mov    rax,rbx
  da7ce2:	48 c1 e0 05          	shl    rax,0x5
  da7ce6:	48 89 44 24 40       	mov    QWORD PTR [rsp+0x40],rax
  da7ceb:	31 c9                	xor    ecx,ecx
  da7ced:	48 8b 84 24 88 00 00 	mov    rax,QWORD PTR [rsp+0x88]
  da7cf4:	00 
  da7cf5:	48 89 84 24 80 00 00 	mov    QWORD PTR [rsp+0x80],rax
  da7cfc:	00 
  da7cfd:	4c 89 ac 24 c0 01 00 	mov    QWORD PTR [rsp+0x1c0],r13
  da7d04:	00 
  da7d05:	40 88 ac 24 f0 01 00 	mov    BYTE PTR [rsp+0x1f0],bpl
  da7d0c:	00 
  da7d0d:	eb 4a                	jmp    da7d59 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4e99>
  da7d0f:	90                   	nop
  da7d10:	48 8b 84 24 80 00 00 	mov    rax,QWORD PTR [rsp+0x80]
  da7d17:	00 
  da7d18:	48 03 84 24 a0 00 00 	add    rax,QWORD PTR [rsp+0xa0]
  da7d1f:	00 
  da7d20:	48 89 84 24 80 00 00 	mov    QWORD PTR [rsp+0x80],rax
  da7d27:	00 
  da7d28:	48 8b 8c 24 e8 00 00 	mov    rcx,QWORD PTR [rsp+0xe8]
  da7d2f:	00 
  da7d30:	48 83 bc 24 98 01 00 	cmp    QWORD PTR [rsp+0x198],0x0
  da7d37:	00 00 
  da7d39:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  da7d3e:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  da7d43:	4c 8b b4 24 e0 01 00 	mov    r14,QWORD PTR [rsp+0x1e0]
  da7d4a:	00 
  da7d4b:	4c 8b bc 24 d0 01 00 	mov    r15,QWORD PTR [rsp+0x1d0]
  da7d52:	00 
  da7d53:	0f 84 ef 05 00 00    	je     da8348 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5488>
  da7d59:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
  da7d5e:	48 8b 00             	mov    rax,QWORD PTR [rax]
  da7d61:	48 83 f8 02          	cmp    rax,0x2
  da7d65:	74 79                	je     da7de0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4f20>
  da7d67:	48 83 f8 04          	cmp    rax,0x4
  da7d6b:	74 43                	je     da7db0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4ef0>
  da7d6d:	48 83 f8 08          	cmp    rax,0x8
  da7d71:	0f 85 8d 12 00 00    	jne    da9004 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6144>
  da7d77:	48 8b 84 24 d0 00 00 	mov    rax,QWORD PTR [rsp+0xd0]
  da7d7e:	00 
  da7d7f:	48 8d 3c c8          	lea    rdi,[rax+rcx*8]
  da7d83:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  da7d88:	49 89 ce             	mov    r14,rcx
  da7d8b:	48 89 d9             	mov    rcx,rbx
  da7d8e:	4c 8b 8c 24 c8 00 00 	mov    r9,QWORD PTR [rsp+0xc8]
  da7d95:	00 
  da7d96:	0f 28 44 24 60       	movaps xmm0,XMMWORD PTR [rsp+0x60]
  da7d9b:	e8 a0 6e fd ff       	call   d7ec40 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first_group>
  da7da0:	eb 67                	jmp    da7e09 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4f49>
  da7da2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  da7da9:	1f 84 00 00 00 00 00 
  da7db0:	48 8b 84 24 d0 00 00 	mov    rax,QWORD PTR [rsp+0xd0]
  da7db7:	00 
  da7db8:	48 8d 3c c8          	lea    rdi,[rax+rcx*8]
  da7dbc:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  da7dc1:	49 89 ce             	mov    r14,rcx
  da7dc4:	48 89 d9             	mov    rcx,rbx
  da7dc7:	4c 8b 8c 24 c8 00 00 	mov    r9,QWORD PTR [rsp+0xc8]
  da7dce:	00 
  da7dcf:	0f 28 44 24 60       	movaps xmm0,XMMWORD PTR [rsp+0x60]
  da7dd4:	e8 a7 72 fd ff       	call   d7f080 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first_group>
  da7dd9:	eb 2e                	jmp    da7e09 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4f49>
  da7ddb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  da7de0:	48 8b 84 24 d0 00 00 	mov    rax,QWORD PTR [rsp+0xd0]
  da7de7:	00 
  da7de8:	48 8d 3c c8          	lea    rdi,[rax+rcx*8]
  da7dec:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
  da7df1:	49 89 ce             	mov    r14,rcx
  da7df4:	48 89 d9             	mov    rcx,rbx
  da7df7:	4c 8b 8c 24 c8 00 00 	mov    r9,QWORD PTR [rsp+0xc8]
  da7dfe:	00 
  da7dff:	0f 28 44 24 60       	movaps xmm0,XMMWORD PTR [rsp+0x60]
  da7e04:	e8 37 66 fd ff       	call   d7e440 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first_group>
  da7e09:	4b 8d 04 3e          	lea    rax,[r14+r15*1]
  da7e0d:	48 89 84 24 e8 00 00 	mov    QWORD PTR [rsp+0xe8],rax
  da7e14:	00 
  da7e15:	48 ff 8c 24 98 01 00 	dec    QWORD PTR [rsp+0x198]
  da7e1c:	00 
  da7e1d:	4d 01 f6             	add    r14,r14
  da7e20:	4c 89 b4 24 b0 01 00 	mov    QWORD PTR [rsp+0x1b0],r14
  da7e27:	00 
  da7e28:	48 8b 84 24 80 00 00 	mov    rax,QWORD PTR [rsp+0x80]
  da7e2f:	00 
  da7e30:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
  da7e35:	31 c0                	xor    eax,eax
  da7e37:	eb 29                	jmp    da7e62 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4fa2>
  da7e39:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  da7e40:	48 8b 84 24 98 00 00 	mov    rax,QWORD PTR [rsp+0x98]
  da7e47:	00 
  da7e48:	48 ff c0             	inc    rax
  da7e4b:	48 83 6c 24 10 80    	sub    QWORD PTR [rsp+0x10],0xffffffffffffff80
  da7e51:	4c 8b 84 24 b0 00 00 	mov    r8,QWORD PTR [rsp+0xb0]
  da7e58:	00 
  da7e59:	4c 39 c0             	cmp    rax,r8
  da7e5c:	0f 84 ae fe ff ff    	je     da7d10 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4e50>
  da7e62:	48 89 84 24 98 00 00 	mov    QWORD PTR [rsp+0x98],rax
  da7e69:	00 
  da7e6a:	48 0f af 84 24 70 01 	imul   rax,QWORD PTR [rsp+0x170]
  da7e71:	00 00 
  da7e73:	48 8b 4c 24 38       	mov    rcx,QWORD PTR [rsp+0x38]
  da7e78:	48 8d 0c 81          	lea    rcx,[rcx+rax*4]
  da7e7c:	49 83 fd 02          	cmp    r13,0x2
  da7e80:	0f 82 ea 01 00 00    	jb     da8070 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x51b0>
  da7e86:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
  da7e8b:	4c 8b 20             	mov    r12,QWORD PTR [rax]
  da7e8e:	4c 8b 74 24 50       	mov    r14,QWORD PTR [rsp+0x50]
  da7e93:	4c 8b ac 24 90 00 00 	mov    r13,QWORD PTR [rsp+0x90]
  da7e9a:	00 
  da7e9b:	49 89 cf             	mov    r15,rcx
  da7e9e:	48 8b 9c 24 10 02 00 	mov    rbx,QWORD PTR [rsp+0x210]
  da7ea5:	00 
  da7ea6:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  da7eab:	48 89 8c 24 b8 00 00 	mov    QWORD PTR [rsp+0xb8],rcx
  da7eb2:	00 
  da7eb3:	eb 49                	jmp    da7efe <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x503e>
  da7eb5:	0f 28 44 24 60       	movaps xmm0,XMMWORD PTR [rsp+0x60]
  da7eba:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da7ec1:	00 
  da7ec2:	48 89 df             	mov    rdi,rbx
  da7ec5:	4c 89 fe             	mov    rsi,r15
  da7ec8:	4c 89 e1             	mov    rcx,r12
  da7ecb:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da7ed2:	00 
  da7ed3:	e8 e8 92 f1 ff       	call   cc11c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7ed8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  da7edf:	00 
  da7ee0:	4c 0f af e5          	imul   r12,rbp
  da7ee4:	49 83 c5 18          	add    r13,0x18
  da7ee8:	49 ff ce             	dec    r14
  da7eeb:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  da7ef0:	48 8b 8c 24 b8 00 00 	mov    rcx,QWORD PTR [rsp+0xb8]
  da7ef7:	00 
  da7ef8:	0f 84 7a 01 00 00    	je     da8078 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x51b8>
  da7efe:	48 89 d8             	mov    rax,rbx
  da7f01:	4c 89 fb             	mov    rbx,r15
  da7f04:	49 8b 6d f8          	mov    rbp,QWORD PTR [r13-0x8]
  da7f08:	49 83 fe 01          	cmp    r14,0x1
  da7f0c:	49 89 c7             	mov    r15,rax
  da7f0f:	4c 0f 44 f9          	cmove  r15,rcx
  da7f13:	4d 8b 45 00          	mov    r8,QWORD PTR [r13+0x0]
  da7f17:	4c 03 44 24 30       	add    r8,QWORD PTR [rsp+0x30]
  da7f1c:	48 89 6c 24 48       	mov    QWORD PTR [rsp+0x48],rbp
  da7f21:	48 8d 45 fe          	lea    rax,[rbp-0x2]
  da7f25:	48 83 f8 0e          	cmp    rax,0xe
  da7f29:	0f 87 86 10 00 00    	ja     da8fb5 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x60f5>
  da7f2f:	48 8d 0d 32 b2 2f ff 	lea    rcx,[rip+0xffffffffff2fb232]        # a3168 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x30618>
  da7f36:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  da7f3a:	48 01 c8             	add    rax,rcx
  da7f3d:	ff e0                	jmp    rax
  da7f3f:	48 89 df             	mov    rdi,rbx
  da7f42:	4c 89 fe             	mov    rsi,r15
  da7f45:	4c 89 e1             	mov    rcx,r12
  da7f48:	e8 33 0e f1 ff       	call   cb8d80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7f4d:	eb 91                	jmp    da7ee0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5020>
  da7f4f:	48 89 df             	mov    rdi,rbx
  da7f52:	4c 89 fe             	mov    rsi,r15
  da7f55:	4c 89 e1             	mov    rcx,r12
  da7f58:	e8 a3 58 f1 ff       	call   cbd800 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7f5d:	eb 81                	jmp    da7ee0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5020>
  da7f5f:	48 89 df             	mov    rdi,rbx
  da7f62:	4c 89 fe             	mov    rsi,r15
  da7f65:	4c 89 e1             	mov    rcx,r12
  da7f68:	e8 93 17 f1 ff       	call   cb9700 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7f6d:	e9 6e ff ff ff       	jmp    da7ee0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5020>
  da7f72:	48 89 df             	mov    rdi,rbx
  da7f75:	4c 89 fe             	mov    rsi,r15
  da7f78:	4c 89 e1             	mov    rcx,r12
  da7f7b:	e8 c0 6d f1 ff       	call   cbed40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7f80:	e9 5b ff ff ff       	jmp    da7ee0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5020>
  da7f85:	48 89 df             	mov    rdi,rbx
  da7f88:	4c 89 fe             	mov    rsi,r15
  da7f8b:	4c 89 e1             	mov    rcx,r12
  da7f8e:	e8 ed 3b f1 ff       	call   cbbb80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7f93:	e9 48 ff ff ff       	jmp    da7ee0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5020>
  da7f98:	48 89 df             	mov    rdi,rbx
  da7f9b:	4c 89 fe             	mov    rsi,r15
  da7f9e:	4c 89 e1             	mov    rcx,r12
  da7fa1:	e8 5a 11 f1 ff       	call   cb9100 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7fa6:	e9 35 ff ff ff       	jmp    da7ee0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5020>
  da7fab:	48 89 df             	mov    rdi,rbx
  da7fae:	4c 89 fe             	mov    rsi,r15
  da7fb1:	4c 89 e1             	mov    rcx,r12
  da7fb4:	e8 c7 13 f1 ff       	call   cb9380 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7fb9:	e9 22 ff ff ff       	jmp    da7ee0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5020>
  da7fbe:	48 89 df             	mov    rdi,rbx
  da7fc1:	4c 89 fe             	mov    rsi,r15
  da7fc4:	4c 89 e1             	mov    rcx,r12
  da7fc7:	e8 34 28 f1 ff       	call   cba800 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7fcc:	e9 0f ff ff ff       	jmp    da7ee0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5020>
  da7fd1:	48 89 df             	mov    rdi,rbx
  da7fd4:	4c 89 fe             	mov    rsi,r15
  da7fd7:	4c 89 e1             	mov    rcx,r12
  da7fda:	e8 e1 0e f1 ff       	call   cb8ec0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7fdf:	e9 fc fe ff ff       	jmp    da7ee0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5020>
  da7fe4:	48 89 df             	mov    rdi,rbx
  da7fe7:	4c 89 fe             	mov    rsi,r15
  da7fea:	4c 89 e1             	mov    rcx,r12
  da7fed:	e8 4e 1b f1 ff       	call   cb9b40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da7ff2:	e9 e9 fe ff ff       	jmp    da7ee0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5020>
  da7ff7:	48 89 df             	mov    rdi,rbx
  da7ffa:	4c 89 fe             	mov    rsi,r15
  da7ffd:	4c 89 e1             	mov    rcx,r12
  da8000:	e8 3b 7f f1 ff       	call   cbff40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8005:	e9 d6 fe ff ff       	jmp    da7ee0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5020>
  da800a:	0f 28 44 24 60       	movaps xmm0,XMMWORD PTR [rsp+0x60]
  da800f:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da8016:	00 
  da8017:	48 89 df             	mov    rdi,rbx
  da801a:	4c 89 fe             	mov    rsi,r15
  da801d:	4c 89 e1             	mov    rcx,r12
  da8020:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da8027:	00 
  da8028:	e8 d3 21 f1 ff       	call   cba200 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da802d:	e9 ae fe ff ff       	jmp    da7ee0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5020>
  da8032:	0f 28 44 24 60       	movaps xmm0,XMMWORD PTR [rsp+0x60]
  da8037:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da803e:	00 
  da803f:	48 89 df             	mov    rdi,rbx
  da8042:	4c 89 fe             	mov    rsi,r15
  da8045:	4c 89 e1             	mov    rcx,r12
  da8048:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da804f:	00 
  da8050:	e8 6b 4b f1 ff       	call   cbcbc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8055:	e9 86 fe ff ff       	jmp    da7ee0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5020>
  da805a:	48 89 df             	mov    rdi,rbx
  da805d:	4c 89 fe             	mov    rsi,r15
  da8060:	4c 89 e1             	mov    rcx,r12
  da8063:	e8 d8 30 f1 ff       	call   cbb140 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8068:	e9 73 fe ff ff       	jmp    da7ee0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5020>
  da806d:	0f 1f 00             	nop    DWORD PTR [rax]
  da8070:	49 89 cf             	mov    r15,rcx
  da8073:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
  da8078:	48 8b 74 24 58       	mov    rsi,QWORD PTR [rsp+0x58]
  da807d:	48 85 f6             	test   rsi,rsi
  da8080:	0f 84 c6 0f 00 00    	je     da904c <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x618c>
  da8086:	48 89 d0             	mov    rax,rdx
  da8089:	48 09 f0             	or     rax,rsi
  da808c:	48 c1 e8 20          	shr    rax,0x20
  da8090:	4c 8b ac 24 c0 01 00 	mov    r13,QWORD PTR [rsp+0x1c0]
  da8097:	00 
  da8098:	0f b6 ac 24 f0 01 00 	movzx  ebp,BYTE PTR [rsp+0x1f0]
  da809f:	00 
  da80a0:	48 89 d1             	mov    rcx,rdx
  da80a3:	74 1b                	je     da80c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5200>
  da80a5:	48 89 d0             	mov    rax,rdx
  da80a8:	31 d2                	xor    edx,edx
  da80aa:	48 f7 f6             	div    rsi
  da80ad:	48 85 c9             	test   rcx,rcx
  da80b0:	75 1d                	jne    da80cf <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x520f>
  da80b2:	e9 89 fd ff ff       	jmp    da7e40 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4f80>
  da80b7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  da80be:	00 00 
  da80c0:	89 d0                	mov    eax,edx
  da80c2:	31 d2                	xor    edx,edx
  da80c4:	f7 f6                	div    esi
  da80c6:	48 85 c9             	test   rcx,rcx
  da80c9:	0f 84 71 fd ff ff    	je     da7e40 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4f80>
  da80cf:	48 8b 8c 24 b0 01 00 	mov    rcx,QWORD PTR [rsp+0x1b0]
  da80d6:	00 
  da80d7:	48 8b 94 24 98 00 00 	mov    rdx,QWORD PTR [rsp+0x98]
  da80de:	00 
  da80df:	48 8d 0c d1          	lea    rcx,[rcx+rdx*8]
  da80e3:	48 0f af c1          	imul   rax,rcx
  da80e7:	48 0f af 4c 24 58    	imul   rcx,QWORD PTR [rsp+0x58]
  da80ed:	48 8b 94 24 a0 01 00 	mov    rdx,QWORD PTR [rsp+0x1a0]
  da80f4:	00 
  da80f5:	48 8d 04 82          	lea    rax,[rdx+rax*4]
  da80f9:	48 8b 94 24 a8 00 00 	mov    rdx,QWORD PTR [rsp+0xa8]
  da8100:	00 
  da8101:	48 8d 14 8a          	lea    rdx,[rdx+rcx*4]
  da8105:	49 83 c7 70          	add    r15,0x70
  da8109:	48 8b 74 24 10       	mov    rsi,QWORD PTR [rsp+0x10]
  da810e:	48 8b 7c 24 78       	mov    rdi,QWORD PTR [rsp+0x78]
  da8113:	45 31 c0             	xor    r8d,r8d
  da8116:	eb 42                	jmp    da815a <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x529a>
  da8118:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  da811f:	00 
  da8120:	44 0f 11 06          	movups XMMWORD PTR [rsi],xmm8
  da8124:	44 0f 11 4e 10       	movups XMMWORD PTR [rsi+0x10],xmm9
  da8129:	0f 11 76 20          	movups XMMWORD PTR [rsi+0x20],xmm6
  da812d:	0f 11 66 30          	movups XMMWORD PTR [rsi+0x30],xmm4
  da8131:	0f 11 7e 40          	movups XMMWORD PTR [rsi+0x40],xmm7
  da8135:	0f 11 46 50          	movups XMMWORD PTR [rsi+0x50],xmm0
  da8139:	0f 11 6e 60          	movups XMMWORD PTR [rsi+0x60],xmm5
  da813d:	0f 11 5e 70          	movups XMMWORD PTR [rsi+0x70],xmm3
  da8141:	48 ff cf             	dec    rdi
  da8144:	48 03 74 24 40       	add    rsi,QWORD PTR [rsp+0x40]
  da8149:	49 83 ef 80          	sub    r15,0xffffffffffffff80
  da814d:	49 83 c0 04          	add    r8,0x4
  da8151:	48 85 ff             	test   rdi,rdi
  da8154:	0f 84 e6 fc ff ff    	je     da7e40 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4f80>
  da815a:	4d 89 c1             	mov    r9,r8
  da815d:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
  da8161:	49 d3 e9             	shr    r9,cl
  da8164:	49 c1 e1 05          	shl    r9,0x5
  da8168:	42 0f 10 04 08       	movups xmm0,XMMWORD PTR [rax+r9*1]
  da816d:	42 0f 10 74 08 10    	movups xmm6,XMMWORD PTR [rax+r9*1+0x10]
  da8173:	4c 89 c1             	mov    rcx,r8
  da8176:	48 23 4c 24 08       	and    rcx,QWORD PTR [rsp+0x8]
  da817b:	48 c1 e1 05          	shl    rcx,0x5
  da817f:	0f 10 24 0a          	movups xmm4,XMMWORD PTR [rdx+rcx*1]
  da8183:	0f 10 4c 0a 10       	movups xmm1,XMMWORD PTR [rdx+rcx*1+0x10]
  da8188:	0f 10 5c 0a 20       	movups xmm3,XMMWORD PTR [rdx+rcx*1+0x20]
  da818d:	0f 10 54 0a 30       	movups xmm2,XMMWORD PTR [rdx+rcx*1+0x30]
  da8192:	0f 28 ee             	movaps xmm5,xmm6
  da8195:	0f 59 e9             	mulps  xmm5,xmm1
  da8198:	0f 28 f8             	movaps xmm7,xmm0
  da819b:	0f 59 fc             	mulps  xmm7,xmm4
  da819e:	0f 5c fd             	subps  xmm7,xmm5
  da81a1:	0f 59 e6             	mulps  xmm4,xmm6
  da81a4:	0f 59 c8             	mulps  xmm1,xmm0
  da81a7:	0f 58 cc             	addps  xmm1,xmm4
  da81aa:	45 0f 10 4f 90       	movups xmm9,XMMWORD PTR [r15-0x70]
  da81af:	45 0f 10 57 a0       	movups xmm10,XMMWORD PTR [r15-0x60]
  da81b4:	41 0f 10 6f b0       	movups xmm5,XMMWORD PTR [r15-0x50]
  da81b9:	45 0f 10 47 c0       	movups xmm8,XMMWORD PTR [r15-0x40]
  da81be:	41 0f 28 e1          	movaps xmm4,xmm9
  da81c2:	0f 59 e7             	mulps  xmm4,xmm7
  da81c5:	41 0f 59 fa          	mulps  xmm7,xmm10
  da81c9:	44 0f 59 d1          	mulps  xmm10,xmm1
  da81cd:	41 0f 5c e2          	subps  xmm4,xmm10
  da81d1:	41 0f 59 c9          	mulps  xmm1,xmm9
  da81d5:	0f 58 cf             	addps  xmm1,xmm7
  da81d8:	0f 28 fe             	movaps xmm7,xmm6
  da81db:	0f 59 fa             	mulps  xmm7,xmm2
  da81de:	44 0f 28 c8          	movaps xmm9,xmm0
  da81e2:	44 0f 59 cb          	mulps  xmm9,xmm3
  da81e6:	44 0f 5c cf          	subps  xmm9,xmm7
  da81ea:	0f 59 de             	mulps  xmm3,xmm6
  da81ed:	0f 59 d0             	mulps  xmm2,xmm0
  da81f0:	0f 58 d3             	addps  xmm2,xmm3
  da81f3:	0f 28 fd             	movaps xmm7,xmm5
  da81f6:	41 0f 59 f9          	mulps  xmm7,xmm9
  da81fa:	45 0f 59 c8          	mulps  xmm9,xmm8
  da81fe:	44 0f 59 c2          	mulps  xmm8,xmm2
  da8202:	41 0f 5c f8          	subps  xmm7,xmm8
  da8206:	0f 59 d5             	mulps  xmm2,xmm5
  da8209:	41 0f 58 d1          	addps  xmm2,xmm9
  da820d:	45 0f 10 47 d0       	movups xmm8,XMMWORD PTR [r15-0x30]
  da8212:	45 0f 10 4f e0       	movups xmm9,XMMWORD PTR [r15-0x20]
  da8217:	0f 10 6c 0a 40       	movups xmm5,XMMWORD PTR [rdx+rcx*1+0x40]
  da821c:	0f 10 5c 0a 50       	movups xmm3,XMMWORD PTR [rdx+rcx*1+0x50]
  da8221:	44 0f 28 d6          	movaps xmm10,xmm6
  da8225:	44 0f 59 d3          	mulps  xmm10,xmm3
  da8229:	44 0f 28 d8          	movaps xmm11,xmm0
  da822d:	44 0f 59 dd          	mulps  xmm11,xmm5
  da8231:	45 0f 5c da          	subps  xmm11,xmm10
  da8235:	0f 59 ee             	mulps  xmm5,xmm6
  da8238:	0f 59 d8             	mulps  xmm3,xmm0
  da823b:	0f 58 dd             	addps  xmm3,xmm5
  da823e:	41 0f 28 e8          	movaps xmm5,xmm8
  da8242:	41 0f 59 eb          	mulps  xmm5,xmm11
  da8246:	45 0f 59 d9          	mulps  xmm11,xmm9
  da824a:	44 0f 59 cb          	mulps  xmm9,xmm3
  da824e:	41 0f 5c e9          	subps  xmm5,xmm9
  da8252:	41 0f 59 d8          	mulps  xmm3,xmm8
  da8256:	41 0f 58 db          	addps  xmm3,xmm11
  da825a:	45 0f 10 47 f0       	movups xmm8,XMMWORD PTR [r15-0x10]
  da825f:	45 0f 10 0f          	movups xmm9,XMMWORD PTR [r15]
  da8263:	44 0f 10 54 0a 60    	movups xmm10,XMMWORD PTR [rdx+rcx*1+0x60]
  da8269:	44 0f 10 5c 0a 70    	movups xmm11,XMMWORD PTR [rdx+rcx*1+0x70]
  da826f:	44 0f 28 e6          	movaps xmm12,xmm6
  da8273:	45 0f 59 e3          	mulps  xmm12,xmm11
  da8277:	44 0f 28 e8          	movaps xmm13,xmm0
  da827b:	45 0f 59 ea          	mulps  xmm13,xmm10
  da827f:	45 0f 5c ec          	subps  xmm13,xmm12
  da8283:	41 0f 59 f2          	mulps  xmm6,xmm10
  da8287:	41 0f 59 c3          	mulps  xmm0,xmm11
  da828b:	0f 58 c6             	addps  xmm0,xmm6
  da828e:	45 0f 28 d0          	movaps xmm10,xmm8
  da8292:	45 0f 59 d5          	mulps  xmm10,xmm13
  da8296:	45 0f 59 e9          	mulps  xmm13,xmm9
  da829a:	44 0f 59 c8          	mulps  xmm9,xmm0
  da829e:	45 0f 5c d1          	subps  xmm10,xmm9
  da82a2:	41 0f 59 c0          	mulps  xmm0,xmm8
  da82a6:	41 0f 58 c5          	addps  xmm0,xmm13
  da82aa:	44 0f 28 cc          	movaps xmm9,xmm4
  da82ae:	44 0f 14 cf          	unpcklps xmm9,xmm7
  da82b2:	0f 28 f5             	movaps xmm6,xmm5
  da82b5:	41 0f 14 f2          	unpcklps xmm6,xmm10
  da82b9:	45 0f 28 c1          	movaps xmm8,xmm9
  da82bd:	44 0f 16 c6          	movlhps xmm8,xmm6
  da82c1:	41 0f 12 f1          	movhlps xmm6,xmm9
  da82c5:	0f 15 e7             	unpckhps xmm4,xmm7
  da82c8:	41 0f 15 ea          	unpckhps xmm5,xmm10
  da82cc:	0f 28 fc             	movaps xmm7,xmm4
  da82cf:	0f 16 fd             	movlhps xmm7,xmm5
  da82d2:	0f 12 ec             	movhlps xmm5,xmm4
  da82d5:	44 0f 28 d1          	movaps xmm10,xmm1
  da82d9:	44 0f 14 d2          	unpcklps xmm10,xmm2
  da82dd:	0f 28 e3             	movaps xmm4,xmm3
  da82e0:	0f 14 e0             	unpcklps xmm4,xmm0
  da82e3:	45 0f 28 ca          	movaps xmm9,xmm10
  da82e7:	44 0f 16 cc          	movlhps xmm9,xmm4
  da82eb:	41 0f 12 e2          	movhlps xmm4,xmm10
  da82ef:	0f 15 ca             	unpckhps xmm1,xmm2
  da82f2:	0f 15 d8             	unpckhps xmm3,xmm0
  da82f5:	0f 28 c1             	movaps xmm0,xmm1
  da82f8:	0f 16 c3             	movlhps xmm0,xmm3
  da82fb:	0f 12 d9             	movhlps xmm3,xmm1
  da82fe:	40 84 ed             	test   bpl,bpl
  da8301:	0f 84 19 fe ff ff    	je     da8120 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5260>
  da8307:	48 8d 4e 10          	lea    rcx,[rsi+0x10]
  da830b:	4c 8d 4e 20          	lea    r9,[rsi+0x20]
  da830f:	4c 8d 56 30          	lea    r10,[rsi+0x30]
  da8313:	4c 8d 5e 40          	lea    r11,[rsi+0x40]
  da8317:	48 8d 5e 50          	lea    rbx,[rsi+0x50]
  da831b:	4c 8d 76 60          	lea    r14,[rsi+0x60]
  da831f:	4c 8d 66 70          	lea    r12,[rsi+0x70]
  da8323:	44 0f 2b 06          	movntps XMMWORD PTR [rsi],xmm8
  da8327:	44 0f 2b 09          	movntps XMMWORD PTR [rcx],xmm9
  da832b:	41 0f 2b 31          	movntps XMMWORD PTR [r9],xmm6
  da832f:	41 0f 2b 22          	movntps XMMWORD PTR [r10],xmm4
  da8333:	41 0f 2b 3b          	movntps XMMWORD PTR [r11],xmm7
  da8337:	0f 2b 03             	movntps XMMWORD PTR [rbx],xmm0
  da833a:	41 0f 2b 2e          	movntps XMMWORD PTR [r14],xmm5
  da833e:	41 0f 2b 1c 24       	movntps XMMWORD PTR [r12],xmm3
  da8343:	e9 f9 fd ff ff       	jmp    da8141 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5281>
  da8348:	40 84 ed             	test   bpl,bpl
  da834b:	74 03                	je     da8350 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5490>
  da834d:	0f ae f8             	sfence
  da8350:	48 89 d0             	mov    rax,rdx
  da8353:	4c 09 f8             	or     rax,r15
  da8356:	48 c1 e8 20          	shr    rax,0x20
  da835a:	74 0a                	je     da8366 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x54a6>
  da835c:	48 89 d0             	mov    rax,rdx
  da835f:	31 d2                	xor    edx,edx
  da8361:	49 f7 f7             	div    r15
  da8364:	eb 07                	jmp    da836d <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x54ad>
  da8366:	89 d0                	mov    eax,edx
  da8368:	31 d2                	xor    edx,edx
  da836a:	41 f7 f7             	div    r15d
  da836d:	40 20 ac 24 e0 00 00 	and    BYTE PTR [rsp+0xe0],bpl
  da8374:	00 
  da8375:	31 ff                	xor    edi,edi
  da8377:	48 85 d2             	test   rdx,rdx
  da837a:	40 0f 95 c7          	setne  dil
  da837e:	48 01 c7             	add    rdi,rax
  da8381:	0f 84 1b 0c 00 00    	je     da8fa2 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x60e2>
  da8387:	4d 85 f6             	test   r14,r14
  da838a:	0f 84 f4 0c 00 00    	je     da9084 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x61c4>
  da8390:	4a 8d 04 6d 00 00 00 	lea    rax,[r13*2+0x0]
  da8397:	00 
  da8398:	4c 01 e8             	add    rax,r13
  da839b:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  da83a0:	48 8d 0c c2          	lea    rcx,[rdx+rax*8]
  da83a4:	48 89 4c 24 40       	mov    QWORD PTR [rsp+0x40],rcx
  da83a9:	48 8b b4 24 88 01 00 	mov    rsi,QWORD PTR [rsp+0x188]
  da83b0:	00 
  da83b1:	48 c1 e6 03          	shl    rsi,0x3
  da83b5:	48 8b 8c 24 90 01 00 	mov    rcx,QWORD PTR [rsp+0x190]
  da83bc:	00 
  da83bd:	4c 8b 89 90 00 00 00 	mov    r9,QWORD PTR [rcx+0x90]
  da83c4:	4b 8d 0c 09          	lea    rcx,[r9+r9*1]
  da83c8:	48 89 8c 24 98 00 00 	mov    QWORD PTR [rsp+0x98],rcx
  da83cf:	00 
  da83d0:	4a 8d 0c cd 00 00 00 	lea    rcx,[r9*8+0x0]
  da83d7:	00 
  da83d8:	48 89 4c 24 58       	mov    QWORD PTR [rsp+0x58],rcx
  da83dd:	4c 89 c1             	mov    rcx,r8
  da83e0:	48 83 e1 fe          	and    rcx,0xfffffffffffffffe
  da83e4:	48 89 8c 24 70 01 00 	mov    QWORD PTR [rsp+0x170],rcx
  da83eb:	00 
  da83ec:	48 8d 04 c2          	lea    rax,[rdx+rax*8]
  da83f0:	48 83 c0 20          	add    rax,0x20
  da83f4:	48 89 84 24 f0 01 00 	mov    QWORD PTR [rsp+0x1f0],rax
  da83fb:	00 
  da83fc:	49 8d 46 ff          	lea    rax,[r14-0x1]
  da8400:	48 89 84 24 b0 01 00 	mov    QWORD PTR [rsp+0x1b0],rax
  da8407:	00 
  da8408:	48 8b 8c 24 d8 00 00 	mov    rcx,QWORD PTR [rsp+0xd8]
  da840f:	00 
  da8410:	48 c1 e1 04          	shl    rcx,0x4
  da8414:	48 01 f1             	add    rcx,rsi
  da8417:	48 8b 84 24 88 00 00 	mov    rax,QWORD PTR [rsp+0x88]
  da841e:	00 
  da841f:	48 01 c8             	add    rax,rcx
  da8422:	48 83 c0 10          	add    rax,0x10
  da8426:	48 89 84 24 80 00 00 	mov    QWORD PTR [rsp+0x80],rax
  da842d:	00 
  da842e:	49 c1 e1 04          	shl    r9,0x4
  da8432:	4c 89 4c 24 10       	mov    QWORD PTR [rsp+0x10],r9
  da8437:	48 8b 84 24 c0 00 00 	mov    rax,QWORD PTR [rsp+0xc0]
  da843e:	00 
  da843f:	48 8d 48 30          	lea    rcx,[rax+0x30]
  da8443:	48 89 8c 24 90 00 00 	mov    QWORD PTR [rsp+0x90],rcx
  da844a:	00 
  da844b:	49 c1 e0 05          	shl    r8,0x5
  da844f:	4c 89 84 24 d0 00 00 	mov    QWORD PTR [rsp+0xd0],r8
  da8456:	00 
  da8457:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
  da845c:	48 8d 0c cd 00 00 00 	lea    rcx,[rcx*8+0x0]
  da8463:	00 
  da8464:	48 89 8c 24 c0 01 00 	mov    QWORD PTR [rsp+0x1c0],rcx
  da846b:	00 
  da846c:	31 c9                	xor    ecx,ecx
  da846e:	48 89 44 24 50       	mov    QWORD PTR [rsp+0x50],rax
  da8473:	eb 36                	jmp    da84ab <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x55eb>
  da8475:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  da847c:	00 00 00 00 
  da8480:	48 8b 84 24 d0 00 00 	mov    rax,QWORD PTR [rsp+0xd0]
  da8487:	00 
  da8488:	48 01 84 24 90 00 00 	add    QWORD PTR [rsp+0x90],rax
  da848f:	00 
  da8490:	48 01 44 24 50       	add    QWORD PTR [rsp+0x50],rax
  da8495:	48 8b bc 24 a8 00 00 	mov    rdi,QWORD PTR [rsp+0xa8]
  da849c:	00 
  da849d:	48 85 ff             	test   rdi,rdi
  da84a0:	48 8b 4c 24 78       	mov    rcx,QWORD PTR [rsp+0x78]
  da84a5:	0f 84 f7 0a 00 00    	je     da8fa2 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x60e2>
  da84ab:	4a 8d 04 39          	lea    rax,[rcx+r15*1]
  da84af:	48 89 44 24 78       	mov    QWORD PTR [rsp+0x78],rax
  da84b4:	48 ff cf             	dec    rdi
  da84b7:	48 89 bc 24 a8 00 00 	mov    QWORD PTR [rsp+0xa8],rdi
  da84be:	00 
  da84bf:	48 89 8c 24 a0 01 00 	mov    QWORD PTR [rsp+0x1a0],rcx
  da84c6:	00 
  da84c7:	48 8d 04 09          	lea    rax,[rcx+rcx*1]
  da84cb:	48 89 84 24 b8 00 00 	mov    QWORD PTR [rsp+0xb8],rax
  da84d2:	00 
  da84d3:	31 d2                	xor    edx,edx
  da84d5:	eb 49                	jmp    da8520 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5660>
  da84d7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  da84de:	00 00 
  da84e0:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da84e5:	48 ff c2             	inc    rdx
  da84e8:	4c 8b 9c 24 b0 00 00 	mov    r11,QWORD PTR [rsp+0xb0]
  da84ef:	00 
  da84f0:	4c 39 da             	cmp    rdx,r11
  da84f3:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  da84f8:	4c 8b b4 24 e0 01 00 	mov    r14,QWORD PTR [rsp+0x1e0]
  da84ff:	00 
  da8500:	4c 8b bc 24 d0 01 00 	mov    r15,QWORD PTR [rsp+0x1d0]
  da8507:	00 
  da8508:	4c 8b 64 24 10       	mov    r12,QWORD PTR [rsp+0x10]
  da850d:	4c 8b 6c 24 58       	mov    r13,QWORD PTR [rsp+0x58]
  da8512:	48 8b ac 24 70 01 00 	mov    rbp,QWORD PTR [rsp+0x170]
  da8519:	00 
  da851a:	0f 84 e0 02 00 00    	je     da8800 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5940>
  da8520:	48 89 d0             	mov    rax,rdx
  da8523:	48 0f af 84 24 98 00 	imul   rax,QWORD PTR [rsp+0x98]
  da852a:	00 00 
  da852c:	48 8b 4c 24 38       	mov    rcx,QWORD PTR [rsp+0x38]
  da8531:	48 8d 04 81          	lea    rax,[rcx+rax*4]
  da8535:	48 89 04 24          	mov    QWORD PTR [rsp],rax
  da8539:	48 8b 84 24 b8 00 00 	mov    rax,QWORD PTR [rsp+0xb8]
  da8540:	00 
  da8541:	48 8d 04 d0          	lea    rax,[rax+rdx*8]
  da8545:	48 0f af c3          	imul   rax,rbx
  da8549:	48 8b 8c 24 88 00 00 	mov    rcx,QWORD PTR [rsp+0x88]
  da8550:	00 
  da8551:	48 8d 3c 81          	lea    rdi,[rcx+rax*4]
  da8555:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
  da855a:	48 8b 00             	mov    rax,QWORD PTR [rax]
  da855d:	48 83 f8 02          	cmp    rax,0x2
  da8561:	48 89 54 24 08       	mov    QWORD PTR [rsp+0x8],rdx
  da8566:	74 58                	je     da85c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5700>
  da8568:	48 83 f8 04          	cmp    rax,0x4
  da856c:	74 32                	je     da85a0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x56e0>
  da856e:	48 83 f8 08          	cmp    rax,0x8
  da8572:	0f 85 74 0a 00 00    	jne    da8fec <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x612c>
  da8578:	48 8b 34 24          	mov    rsi,QWORD PTR [rsp]
  da857c:	48 89 da             	mov    rdx,rbx
  da857f:	0f 28 44 24 60       	movaps xmm0,XMMWORD PTR [rsp+0x60]
  da8584:	e8 77 89 fd ff       	call   d80f00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da8589:	49 83 fe 02          	cmp    r14,0x2
  da858d:	0f 82 4d ff ff ff    	jb     da84e0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5620>
  da8593:	eb 46                	jmp    da85db <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x571b>
  da8595:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  da859c:	00 00 00 00 
  da85a0:	48 8b 34 24          	mov    rsi,QWORD PTR [rsp]
  da85a4:	48 89 da             	mov    rdx,rbx
  da85a7:	0f 28 44 24 60       	movaps xmm0,XMMWORD PTR [rsp+0x60]
  da85ac:	e8 0f cd fd ff       	call   d852c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da85b1:	49 83 fe 02          	cmp    r14,0x2
  da85b5:	0f 82 25 ff ff ff    	jb     da84e0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5620>
  da85bb:	eb 1e                	jmp    da85db <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x571b>
  da85bd:	0f 1f 00             	nop    DWORD PTR [rax]
  da85c0:	48 8b 34 24          	mov    rsi,QWORD PTR [rsp]
  da85c4:	48 89 da             	mov    rdx,rbx
  da85c7:	0f 28 44 24 60       	movaps xmm0,XMMWORD PTR [rsp+0x60]
  da85cc:	e8 6f 97 ff ff       	call   da1d40 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da85d1:	49 83 fe 02          	cmp    r14,0x2
  da85d5:	0f 82 05 ff ff ff    	jb     da84e0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5620>
  da85db:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
  da85e0:	4c 8b 38             	mov    r15,QWORD PTR [rax]
  da85e3:	4c 8b ac 24 b0 01 00 	mov    r13,QWORD PTR [rsp+0x1b0]
  da85ea:	00 
  da85eb:	48 8b ac 24 f0 01 00 	mov    rbp,QWORD PTR [rsp+0x1f0]
  da85f2:	00 
  da85f3:	4c 8b 24 24          	mov    r12,QWORD PTR [rsp]
  da85f7:	48 8b 9c 24 10 02 00 	mov    rbx,QWORD PTR [rsp+0x210]
  da85fe:	00 
  da85ff:	eb 40                	jmp    da8641 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5781>
  da8601:	0f 28 44 24 60       	movaps xmm0,XMMWORD PTR [rsp+0x60]
  da8606:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da860d:	00 
  da860e:	48 89 df             	mov    rdi,rbx
  da8611:	4c 89 e6             	mov    rsi,r12
  da8614:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  da8619:	4c 89 f9             	mov    rcx,r15
  da861c:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da8623:	00 
  da8624:	e8 97 8b f1 ff       	call   cc11c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8629:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  da8630:	4d 0f af fe          	imul   r15,r14
  da8634:	48 83 c5 18          	add    rbp,0x18
  da8638:	49 ff cd             	dec    r13
  da863b:	0f 84 9f fe ff ff    	je     da84e0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5620>
  da8641:	48 89 d8             	mov    rax,rbx
  da8644:	4c 89 e3             	mov    rbx,r12
  da8647:	4c 8b 75 f8          	mov    r14,QWORD PTR [rbp-0x8]
  da864b:	49 83 fd 01          	cmp    r13,0x1
  da864f:	49 89 c4             	mov    r12,rax
  da8652:	4c 0f 44 24 24       	cmove  r12,QWORD PTR [rsp]
  da8657:	4c 8b 45 00          	mov    r8,QWORD PTR [rbp+0x0]
  da865b:	4c 03 44 24 30       	add    r8,QWORD PTR [rsp+0x30]
  da8660:	4c 89 74 24 48       	mov    QWORD PTR [rsp+0x48],r14
  da8665:	49 8d 46 fe          	lea    rax,[r14-0x2]
  da8669:	48 83 f8 0e          	cmp    rax,0xe
  da866d:	0f 87 42 09 00 00    	ja     da8fb5 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x60f5>
  da8673:	48 8d 0d 2a ab 2f ff 	lea    rcx,[rip+0xffffffffff2fab2a]        # a31a4 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x30654>
  da867a:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  da867e:	48 01 c8             	add    rax,rcx
  da8681:	ff e0                	jmp    rax
  da8683:	48 89 df             	mov    rdi,rbx
  da8686:	4c 89 e6             	mov    rsi,r12
  da8689:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  da868e:	4c 89 f9             	mov    rcx,r15
  da8691:	e8 ea 06 f1 ff       	call   cb8d80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8696:	eb 98                	jmp    da8630 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5770>
  da8698:	48 89 df             	mov    rdi,rbx
  da869b:	4c 89 e6             	mov    rsi,r12
  da869e:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  da86a3:	4c 89 f9             	mov    rcx,r15
  da86a6:	e8 55 51 f1 ff       	call   cbd800 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da86ab:	eb 83                	jmp    da8630 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5770>
  da86ad:	48 89 df             	mov    rdi,rbx
  da86b0:	4c 89 e6             	mov    rsi,r12
  da86b3:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  da86b8:	4c 89 f9             	mov    rcx,r15
  da86bb:	e8 40 10 f1 ff       	call   cb9700 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da86c0:	e9 6b ff ff ff       	jmp    da8630 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5770>
  da86c5:	48 89 df             	mov    rdi,rbx
  da86c8:	4c 89 e6             	mov    rsi,r12
  da86cb:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  da86d0:	4c 89 f9             	mov    rcx,r15
  da86d3:	e8 68 66 f1 ff       	call   cbed40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da86d8:	e9 53 ff ff ff       	jmp    da8630 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5770>
  da86dd:	48 89 df             	mov    rdi,rbx
  da86e0:	4c 89 e6             	mov    rsi,r12
  da86e3:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  da86e8:	4c 89 f9             	mov    rcx,r15
  da86eb:	e8 90 34 f1 ff       	call   cbbb80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da86f0:	e9 3b ff ff ff       	jmp    da8630 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5770>
  da86f5:	48 89 df             	mov    rdi,rbx
  da86f8:	4c 89 e6             	mov    rsi,r12
  da86fb:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  da8700:	4c 89 f9             	mov    rcx,r15
  da8703:	e8 f8 09 f1 ff       	call   cb9100 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8708:	e9 23 ff ff ff       	jmp    da8630 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5770>
  da870d:	48 89 df             	mov    rdi,rbx
  da8710:	4c 89 e6             	mov    rsi,r12
  da8713:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  da8718:	4c 89 f9             	mov    rcx,r15
  da871b:	e8 60 0c f1 ff       	call   cb9380 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8720:	e9 0b ff ff ff       	jmp    da8630 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5770>
  da8725:	48 89 df             	mov    rdi,rbx
  da8728:	4c 89 e6             	mov    rsi,r12
  da872b:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  da8730:	4c 89 f9             	mov    rcx,r15
  da8733:	e8 c8 20 f1 ff       	call   cba800 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8738:	e9 f3 fe ff ff       	jmp    da8630 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5770>
  da873d:	48 89 df             	mov    rdi,rbx
  da8740:	4c 89 e6             	mov    rsi,r12
  da8743:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  da8748:	4c 89 f9             	mov    rcx,r15
  da874b:	e8 70 07 f1 ff       	call   cb8ec0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8750:	e9 db fe ff ff       	jmp    da8630 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5770>
  da8755:	48 89 df             	mov    rdi,rbx
  da8758:	4c 89 e6             	mov    rsi,r12
  da875b:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  da8760:	4c 89 f9             	mov    rcx,r15
  da8763:	e8 d8 13 f1 ff       	call   cb9b40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8768:	e9 c3 fe ff ff       	jmp    da8630 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5770>
  da876d:	48 89 df             	mov    rdi,rbx
  da8770:	4c 89 e6             	mov    rsi,r12
  da8773:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  da8778:	4c 89 f9             	mov    rcx,r15
  da877b:	e8 c0 77 f1 ff       	call   cbff40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8780:	e9 ab fe ff ff       	jmp    da8630 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5770>
  da8785:	0f 28 44 24 60       	movaps xmm0,XMMWORD PTR [rsp+0x60]
  da878a:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da8791:	00 
  da8792:	48 89 df             	mov    rdi,rbx
  da8795:	4c 89 e6             	mov    rsi,r12
  da8798:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  da879d:	4c 89 f9             	mov    rcx,r15
  da87a0:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da87a7:	00 
  da87a8:	e8 53 1a f1 ff       	call   cba200 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da87ad:	e9 7e fe ff ff       	jmp    da8630 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5770>
  da87b2:	0f 28 44 24 60       	movaps xmm0,XMMWORD PTR [rsp+0x60]
  da87b7:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da87be:	00 
  da87bf:	48 89 df             	mov    rdi,rbx
  da87c2:	4c 89 e6             	mov    rsi,r12
  da87c5:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  da87ca:	4c 89 f9             	mov    rcx,r15
  da87cd:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da87d4:	00 
  da87d5:	e8 e6 43 f1 ff       	call   cbcbc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da87da:	e9 51 fe ff ff       	jmp    da8630 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5770>
  da87df:	48 89 df             	mov    rdi,rbx
  da87e2:	4c 89 e6             	mov    rsi,r12
  da87e5:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  da87ea:	4c 89 f9             	mov    rcx,r15
  da87ed:	e8 4e 29 f1 ff       	call   cbb140 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da87f2:	e9 39 fe ff ff       	jmp    da8630 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5770>
  da87f7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  da87fe:	00 00 
  da8800:	48 85 db             	test   rbx,rbx
  da8803:	0f 84 77 fc ff ff    	je     da8480 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x55c0>
  da8809:	80 bc 24 e0 00 00 00 	cmp    BYTE PTR [rsp+0xe0],0x0
  da8810:	00 
  da8811:	74 7d                	je     da8890 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x59d0>
  da8813:	48 8b 84 24 80 00 00 	mov    rax,QWORD PTR [rsp+0x80]
  da881a:	00 
  da881b:	48 8b 4c 24 50       	mov    rcx,QWORD PTR [rsp+0x50]
  da8820:	31 d2                	xor    edx,edx
  da8822:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  da8829:	1f 84 00 00 00 00 00 
  da8830:	4c 89 de             	mov    rsi,r11
  da8833:	48 89 c7             	mov    rdi,rax
  da8836:	49 89 c8             	mov    r8,rcx
  da8839:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  da8840:	0f 10 47 f0          	movups xmm0,XMMWORD PTR [rdi-0x10]
  da8844:	0f 10 0f             	movups xmm1,XMMWORD PTR [rdi]
  da8847:	0f 28 d0             	movaps xmm2,xmm0
  da884a:	0f 14 d1             	unpcklps xmm2,xmm1
  da884d:	0f 15 c1             	unpckhps xmm0,xmm1
  da8850:	41 0f 2b 10          	movntps XMMWORD PTR [r8],xmm2
  da8854:	4d 8d 48 10          	lea    r9,[r8+0x10]
  da8858:	41 0f 2b 01          	movntps XMMWORD PTR [r9],xmm0
  da885c:	49 83 c0 20          	add    r8,0x20
  da8860:	4c 01 ef             	add    rdi,r13
  da8863:	48 ff ce             	dec    rsi
  da8866:	75 d8                	jne    da8840 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5980>
  da8868:	48 ff c2             	inc    rdx
  da886b:	48 03 8c 24 c0 01 00 	add    rcx,QWORD PTR [rsp+0x1c0]
  da8872:	00 
  da8873:	48 83 c0 20          	add    rax,0x20
  da8877:	48 39 da             	cmp    rdx,rbx
  da887a:	75 b4                	jne    da8830 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5970>
  da887c:	e9 ff fb ff ff       	jmp    da8480 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x55c0>
  da8881:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  da8888:	0f 1f 84 00 00 00 00 
  da888f:	00 
  da8890:	48 8b 84 24 90 00 00 	mov    rax,QWORD PTR [rsp+0x90]
  da8897:	00 
  da8898:	48 8b 8c 24 80 00 00 	mov    rcx,QWORD PTR [rsp+0x80]
  da889f:	00 
  da88a0:	31 d2                	xor    edx,edx
  da88a2:	eb 24                	jmp    da88c8 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5a08>
  da88a4:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  da88ab:	00 00 00 00 00 
  da88b0:	48 ff c2             	inc    rdx
  da88b3:	48 83 c1 20          	add    rcx,0x20
  da88b7:	48 03 84 24 c0 01 00 	add    rax,QWORD PTR [rsp+0x1c0]
  da88be:	00 
  da88bf:	48 39 da             	cmp    rdx,rbx
  da88c2:	0f 84 b8 fb ff ff    	je     da8480 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x55c0>
  da88c8:	48 89 d6             	mov    rsi,rdx
  da88cb:	48 c1 e6 05          	shl    rsi,0x5
  da88cf:	48 03 74 24 38       	add    rsi,QWORD PTR [rsp+0x38]
  da88d4:	48 89 d7             	mov    rdi,rdx
  da88d7:	48 0f af 7c 24 20    	imul   rdi,QWORD PTR [rsp+0x20]
  da88dd:	48 03 bc 24 a0 01 00 	add    rdi,QWORD PTR [rsp+0x1a0]
  da88e4:	00 
  da88e5:	4c 8b 84 24 c0 00 00 	mov    r8,QWORD PTR [rsp+0xc0]
  da88ec:	00 
  da88ed:	49 8d 3c f8          	lea    rdi,[r8+rdi*8]
  da88f1:	49 89 c1             	mov    r9,rax
  da88f4:	49 89 ca             	mov    r10,rcx
  da88f7:	45 31 c0             	xor    r8d,r8d
  da88fa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  da8900:	41 0f 10 42 f0       	movups xmm0,XMMWORD PTR [r10-0x10]
  da8905:	41 0f 10 0a          	movups xmm1,XMMWORD PTR [r10]
  da8909:	0f 28 d0             	movaps xmm2,xmm0
  da890c:	0f 14 d1             	unpcklps xmm2,xmm1
  da890f:	0f 15 c1             	unpckhps xmm0,xmm1
  da8912:	41 0f 11 51 d0       	movups XMMWORD PTR [r9-0x30],xmm2
  da8917:	41 0f 11 41 e0       	movups XMMWORD PTR [r9-0x20],xmm0
  da891c:	49 83 c0 02          	add    r8,0x2
  da8920:	43 0f 10 44 2a f0    	movups xmm0,XMMWORD PTR [r10+r13*1-0x10]
  da8926:	43 0f 10 0c 2a       	movups xmm1,XMMWORD PTR [r10+r13*1]
  da892b:	0f 28 d0             	movaps xmm2,xmm0
  da892e:	0f 14 d1             	unpcklps xmm2,xmm1
  da8931:	0f 15 c1             	unpckhps xmm0,xmm1
  da8934:	41 0f 11 51 f0       	movups XMMWORD PTR [r9-0x10],xmm2
  da8939:	41 0f 11 01          	movups XMMWORD PTR [r9],xmm0
  da893d:	4d 01 e2             	add    r10,r12
  da8940:	49 83 c1 40          	add    r9,0x40
  da8944:	4c 39 c5             	cmp    rbp,r8
  da8947:	75 b7                	jne    da8900 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5a40>
  da8949:	41 f6 c3 01          	test   r11b,0x1
  da894d:	0f 84 5d ff ff ff    	je     da88b0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x59f0>
  da8953:	4d 89 c1             	mov    r9,r8
  da8956:	4d 0f af cd          	imul   r9,r13
  da895a:	42 0f 10 04 0e       	movups xmm0,XMMWORD PTR [rsi+r9*1]
  da895f:	42 0f 10 4c 0e 10    	movups xmm1,XMMWORD PTR [rsi+r9*1+0x10]
  da8965:	0f 28 d0             	movaps xmm2,xmm0
  da8968:	0f 14 d1             	unpcklps xmm2,xmm1
  da896b:	0f 15 c1             	unpckhps xmm0,xmm1
  da896e:	49 c1 e0 05          	shl    r8,0x5
  da8972:	42 0f 11 14 07       	movups XMMWORD PTR [rdi+r8*1],xmm2
  da8977:	42 0f 11 44 07 10    	movups XMMWORD PTR [rdi+r8*1+0x10],xmm0
  da897d:	e9 2e ff ff ff       	jmp    da88b0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x59f0>
  da8982:	89 d0                	mov    eax,edx
  da8984:	31 d2                	xor    edx,edx
  da8986:	41 f7 f7             	div    r15d
  da8989:	40 20 ac 24 e0 00 00 	and    BYTE PTR [rsp+0xe0],bpl
  da8990:	00 
  da8991:	31 ff                	xor    edi,edi
  da8993:	48 85 d2             	test   rdx,rdx
  da8996:	40 0f 95 c7          	setne  dil
  da899a:	48 01 c7             	add    rdi,rax
  da899d:	0f 84 ff 05 00 00    	je     da8fa2 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x60e2>
  da89a3:	4d 85 f6             	test   r14,r14
  da89a6:	0f 84 d8 06 00 00    	je     da9084 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x61c4>
  da89ac:	4a 8d 04 6d 00 00 00 	lea    rax,[r13*2+0x0]
  da89b3:	00 
  da89b4:	4c 01 e8             	add    rax,r13
  da89b7:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
  da89bc:	48 8d 0c c2          	lea    rcx,[rdx+rax*8]
  da89c0:	48 89 4c 24 40       	mov    QWORD PTR [rsp+0x40],rcx
  da89c5:	48 8b b4 24 88 01 00 	mov    rsi,QWORD PTR [rsp+0x188]
  da89cc:	00 
  da89cd:	48 c1 e6 03          	shl    rsi,0x3
  da89d1:	48 8b 8c 24 90 01 00 	mov    rcx,QWORD PTR [rsp+0x190]
  da89d8:	00 
  da89d9:	4c 8b 89 90 00 00 00 	mov    r9,QWORD PTR [rcx+0x90]
  da89e0:	4b 8d 0c 09          	lea    rcx,[r9+r9*1]
  da89e4:	48 89 8c 24 98 00 00 	mov    QWORD PTR [rsp+0x98],rcx
  da89eb:	00 
  da89ec:	4a 8d 0c cd 00 00 00 	lea    rcx,[r9*8+0x0]
  da89f3:	00 
  da89f4:	48 89 4c 24 58       	mov    QWORD PTR [rsp+0x58],rcx
  da89f9:	4c 89 c1             	mov    rcx,r8
  da89fc:	48 83 e1 fe          	and    rcx,0xfffffffffffffffe
  da8a00:	48 89 8c 24 70 01 00 	mov    QWORD PTR [rsp+0x170],rcx
  da8a07:	00 
  da8a08:	48 8d 04 c2          	lea    rax,[rdx+rax*8]
  da8a0c:	48 83 c0 20          	add    rax,0x20
  da8a10:	48 89 84 24 f0 01 00 	mov    QWORD PTR [rsp+0x1f0],rax
  da8a17:	00 
  da8a18:	49 8d 46 ff          	lea    rax,[r14-0x1]
  da8a1c:	48 89 84 24 b0 01 00 	mov    QWORD PTR [rsp+0x1b0],rax
  da8a23:	00 
  da8a24:	48 8b 8c 24 d8 00 00 	mov    rcx,QWORD PTR [rsp+0xd8]
  da8a2b:	00 
  da8a2c:	48 c1 e1 04          	shl    rcx,0x4
  da8a30:	48 01 f1             	add    rcx,rsi
  da8a33:	48 8b 84 24 88 00 00 	mov    rax,QWORD PTR [rsp+0x88]
  da8a3a:	00 
  da8a3b:	48 01 c8             	add    rax,rcx
  da8a3e:	48 83 c0 10          	add    rax,0x10
  da8a42:	48 89 84 24 80 00 00 	mov    QWORD PTR [rsp+0x80],rax
  da8a49:	00 
  da8a4a:	49 c1 e1 04          	shl    r9,0x4
  da8a4e:	4c 89 4c 24 10       	mov    QWORD PTR [rsp+0x10],r9
  da8a53:	48 8b 84 24 c0 00 00 	mov    rax,QWORD PTR [rsp+0xc0]
  da8a5a:	00 
  da8a5b:	48 8d 48 30          	lea    rcx,[rax+0x30]
  da8a5f:	48 89 8c 24 90 00 00 	mov    QWORD PTR [rsp+0x90],rcx
  da8a66:	00 
  da8a67:	49 c1 e0 05          	shl    r8,0x5
  da8a6b:	4c 89 84 24 d0 00 00 	mov    QWORD PTR [rsp+0xd0],r8
  da8a72:	00 
  da8a73:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
  da8a78:	48 8d 0c cd 00 00 00 	lea    rcx,[rcx*8+0x0]
  da8a7f:	00 
  da8a80:	48 89 8c 24 c0 01 00 	mov    QWORD PTR [rsp+0x1c0],rcx
  da8a87:	00 
  da8a88:	31 c9                	xor    ecx,ecx
  da8a8a:	48 89 44 24 50       	mov    QWORD PTR [rsp+0x50],rax
  da8a8f:	eb 3a                	jmp    da8acb <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5c0b>
  da8a91:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  da8a98:	0f 1f 84 00 00 00 00 
  da8a9f:	00 
  da8aa0:	48 8b 84 24 d0 00 00 	mov    rax,QWORD PTR [rsp+0xd0]
  da8aa7:	00 
  da8aa8:	48 01 84 24 90 00 00 	add    QWORD PTR [rsp+0x90],rax
  da8aaf:	00 
  da8ab0:	48 01 44 24 50       	add    QWORD PTR [rsp+0x50],rax
  da8ab5:	48 8b bc 24 a8 00 00 	mov    rdi,QWORD PTR [rsp+0xa8]
  da8abc:	00 
  da8abd:	48 85 ff             	test   rdi,rdi
  da8ac0:	48 8b 4c 24 78       	mov    rcx,QWORD PTR [rsp+0x78]
  da8ac5:	0f 84 d7 04 00 00    	je     da8fa2 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x60e2>
  da8acb:	4a 8d 04 39          	lea    rax,[rcx+r15*1]
  da8acf:	48 89 44 24 78       	mov    QWORD PTR [rsp+0x78],rax
  da8ad4:	48 ff cf             	dec    rdi
  da8ad7:	48 89 bc 24 a8 00 00 	mov    QWORD PTR [rsp+0xa8],rdi
  da8ade:	00 
  da8adf:	48 89 8c 24 a0 01 00 	mov    QWORD PTR [rsp+0x1a0],rcx
  da8ae6:	00 
  da8ae7:	48 8d 04 09          	lea    rax,[rcx+rcx*1]
  da8aeb:	48 89 84 24 b8 00 00 	mov    QWORD PTR [rsp+0xb8],rax
  da8af2:	00 
  da8af3:	31 d2                	xor    edx,edx
  da8af5:	eb 49                	jmp    da8b40 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5c80>
  da8af7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  da8afe:	00 00 
  da8b00:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
  da8b05:	48 ff c2             	inc    rdx
  da8b08:	4c 8b 9c 24 b0 00 00 	mov    r11,QWORD PTR [rsp+0xb0]
  da8b0f:	00 
  da8b10:	4c 39 da             	cmp    rdx,r11
  da8b13:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
  da8b18:	4c 8b b4 24 e0 01 00 	mov    r14,QWORD PTR [rsp+0x1e0]
  da8b1f:	00 
  da8b20:	4c 8b bc 24 d0 01 00 	mov    r15,QWORD PTR [rsp+0x1d0]
  da8b27:	00 
  da8b28:	4c 8b 64 24 10       	mov    r12,QWORD PTR [rsp+0x10]
  da8b2d:	4c 8b 6c 24 58       	mov    r13,QWORD PTR [rsp+0x58]
  da8b32:	48 8b ac 24 70 01 00 	mov    rbp,QWORD PTR [rsp+0x170]
  da8b39:	00 
  da8b3a:	0f 84 e0 02 00 00    	je     da8e20 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5f60>
  da8b40:	48 89 d0             	mov    rax,rdx
  da8b43:	48 0f af 84 24 98 00 	imul   rax,QWORD PTR [rsp+0x98]
  da8b4a:	00 00 
  da8b4c:	48 8b 4c 24 38       	mov    rcx,QWORD PTR [rsp+0x38]
  da8b51:	48 8d 04 81          	lea    rax,[rcx+rax*4]
  da8b55:	48 89 04 24          	mov    QWORD PTR [rsp],rax
  da8b59:	48 8b 84 24 b8 00 00 	mov    rax,QWORD PTR [rsp+0xb8]
  da8b60:	00 
  da8b61:	48 8d 04 d0          	lea    rax,[rax+rdx*8]
  da8b65:	48 0f af c3          	imul   rax,rbx
  da8b69:	48 8b 8c 24 88 00 00 	mov    rcx,QWORD PTR [rsp+0x88]
  da8b70:	00 
  da8b71:	48 8d 3c 81          	lea    rdi,[rcx+rax*4]
  da8b75:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
  da8b7a:	48 8b 00             	mov    rax,QWORD PTR [rax]
  da8b7d:	48 83 f8 02          	cmp    rax,0x2
  da8b81:	48 89 54 24 08       	mov    QWORD PTR [rsp+0x8],rdx
  da8b86:	74 58                	je     da8be0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5d20>
  da8b88:	48 83 f8 04          	cmp    rax,0x4
  da8b8c:	74 32                	je     da8bc0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5d00>
  da8b8e:	48 83 f8 08          	cmp    rax,0x8
  da8b92:	0f 85 54 04 00 00    	jne    da8fec <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x612c>
  da8b98:	48 8b 34 24          	mov    rsi,QWORD PTR [rsp]
  da8b9c:	48 89 da             	mov    rdx,rbx
  da8b9f:	0f 28 44 24 60       	movaps xmm0,XMMWORD PTR [rsp+0x60]
  da8ba4:	e8 57 83 fd ff       	call   d80f00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da8ba9:	49 83 fe 02          	cmp    r14,0x2
  da8bad:	0f 82 4d ff ff ff    	jb     da8b00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5c40>
  da8bb3:	eb 46                	jmp    da8bfb <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5d3b>
  da8bb5:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  da8bbc:	00 00 00 00 
  da8bc0:	48 8b 34 24          	mov    rsi,QWORD PTR [rsp]
  da8bc4:	48 89 da             	mov    rdx,rbx
  da8bc7:	0f 28 44 24 60       	movaps xmm0,XMMWORD PTR [rsp+0x60]
  da8bcc:	e8 ef c6 fd ff       	call   d852c0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da8bd1:	49 83 fe 02          	cmp    r14,0x2
  da8bd5:	0f 82 25 ff ff ff    	jb     da8b00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5c40>
  da8bdb:	eb 1e                	jmp    da8bfb <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5d3b>
  da8bdd:	0f 1f 00             	nop    DWORD PTR [rax]
  da8be0:	48 8b 34 24          	mov    rsi,QWORD PTR [rsp]
  da8be4:	48 89 da             	mov    rdx,rbx
  da8be7:	0f 28 44 24 60       	movaps xmm0,XMMWORD PTR [rsp+0x60]
  da8bec:	e8 4f 91 ff ff       	call   da1d40 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::first>
  da8bf1:	49 83 fe 02          	cmp    r14,0x2
  da8bf5:	0f 82 05 ff ff ff    	jb     da8b00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5c40>
  da8bfb:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
  da8c00:	4c 8b 38             	mov    r15,QWORD PTR [rax]
  da8c03:	4c 8b ac 24 b0 01 00 	mov    r13,QWORD PTR [rsp+0x1b0]
  da8c0a:	00 
  da8c0b:	48 8b ac 24 f0 01 00 	mov    rbp,QWORD PTR [rsp+0x1f0]
  da8c12:	00 
  da8c13:	4c 8b 24 24          	mov    r12,QWORD PTR [rsp]
  da8c17:	48 8b 9c 24 10 02 00 	mov    rbx,QWORD PTR [rsp+0x210]
  da8c1e:	00 
  da8c1f:	eb 40                	jmp    da8c61 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5da1>
  da8c21:	0f 28 44 24 60       	movaps xmm0,XMMWORD PTR [rsp+0x60]
  da8c26:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da8c2d:	00 
  da8c2e:	48 89 df             	mov    rdi,rbx
  da8c31:	4c 89 e6             	mov    rsi,r12
  da8c34:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  da8c39:	4c 89 f9             	mov    rcx,r15
  da8c3c:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da8c43:	00 
  da8c44:	e8 77 85 f1 ff       	call   cc11c0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8c49:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  da8c50:	4d 0f af fe          	imul   r15,r14
  da8c54:	48 83 c5 18          	add    rbp,0x18
  da8c58:	49 ff cd             	dec    r13
  da8c5b:	0f 84 9f fe ff ff    	je     da8b00 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5c40>
  da8c61:	48 89 d8             	mov    rax,rbx
  da8c64:	4c 89 e3             	mov    rbx,r12
  da8c67:	4c 8b 75 f8          	mov    r14,QWORD PTR [rbp-0x8]
  da8c6b:	49 83 fd 01          	cmp    r13,0x1
  da8c6f:	49 89 c4             	mov    r12,rax
  da8c72:	4c 0f 44 24 24       	cmove  r12,QWORD PTR [rsp]
  da8c77:	4c 8b 45 00          	mov    r8,QWORD PTR [rbp+0x0]
  da8c7b:	4c 03 44 24 30       	add    r8,QWORD PTR [rsp+0x30]
  da8c80:	4c 89 74 24 48       	mov    QWORD PTR [rsp+0x48],r14
  da8c85:	49 8d 46 fe          	lea    rax,[r14-0x2]
  da8c89:	48 83 f8 0e          	cmp    rax,0xe
  da8c8d:	0f 87 22 03 00 00    	ja     da8fb5 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x60f5>
  da8c93:	48 8d 0d c6 a7 2f ff 	lea    rcx,[rip+0xffffffffff2fa7c6]        # a3460 <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x30910>
  da8c9a:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
  da8c9e:	48 01 c8             	add    rax,rcx
  da8ca1:	ff e0                	jmp    rax
  da8ca3:	48 89 df             	mov    rdi,rbx
  da8ca6:	4c 89 e6             	mov    rsi,r12
  da8ca9:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  da8cae:	4c 89 f9             	mov    rcx,r15
  da8cb1:	e8 ca 00 f1 ff       	call   cb8d80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8cb6:	eb 98                	jmp    da8c50 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5d90>
  da8cb8:	48 89 df             	mov    rdi,rbx
  da8cbb:	4c 89 e6             	mov    rsi,r12
  da8cbe:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  da8cc3:	4c 89 f9             	mov    rcx,r15
  da8cc6:	e8 35 4b f1 ff       	call   cbd800 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8ccb:	eb 83                	jmp    da8c50 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5d90>
  da8ccd:	48 89 df             	mov    rdi,rbx
  da8cd0:	4c 89 e6             	mov    rsi,r12
  da8cd3:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  da8cd8:	4c 89 f9             	mov    rcx,r15
  da8cdb:	e8 20 0a f1 ff       	call   cb9700 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8ce0:	e9 6b ff ff ff       	jmp    da8c50 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5d90>
  da8ce5:	48 89 df             	mov    rdi,rbx
  da8ce8:	4c 89 e6             	mov    rsi,r12
  da8ceb:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  da8cf0:	4c 89 f9             	mov    rcx,r15
  da8cf3:	e8 48 60 f1 ff       	call   cbed40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8cf8:	e9 53 ff ff ff       	jmp    da8c50 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5d90>
  da8cfd:	48 89 df             	mov    rdi,rbx
  da8d00:	4c 89 e6             	mov    rsi,r12
  da8d03:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  da8d08:	4c 89 f9             	mov    rcx,r15
  da8d0b:	e8 70 2e f1 ff       	call   cbbb80 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8d10:	e9 3b ff ff ff       	jmp    da8c50 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5d90>
  da8d15:	48 89 df             	mov    rdi,rbx
  da8d18:	4c 89 e6             	mov    rsi,r12
  da8d1b:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  da8d20:	4c 89 f9             	mov    rcx,r15
  da8d23:	e8 d8 03 f1 ff       	call   cb9100 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8d28:	e9 23 ff ff ff       	jmp    da8c50 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5d90>
  da8d2d:	48 89 df             	mov    rdi,rbx
  da8d30:	4c 89 e6             	mov    rsi,r12
  da8d33:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  da8d38:	4c 89 f9             	mov    rcx,r15
  da8d3b:	e8 40 06 f1 ff       	call   cb9380 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8d40:	e9 0b ff ff ff       	jmp    da8c50 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5d90>
  da8d45:	48 89 df             	mov    rdi,rbx
  da8d48:	4c 89 e6             	mov    rsi,r12
  da8d4b:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  da8d50:	4c 89 f9             	mov    rcx,r15
  da8d53:	e8 a8 1a f1 ff       	call   cba800 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8d58:	e9 f3 fe ff ff       	jmp    da8c50 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5d90>
  da8d5d:	48 89 df             	mov    rdi,rbx
  da8d60:	4c 89 e6             	mov    rsi,r12
  da8d63:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  da8d68:	4c 89 f9             	mov    rcx,r15
  da8d6b:	e8 50 01 f1 ff       	call   cb8ec0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8d70:	e9 db fe ff ff       	jmp    da8c50 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5d90>
  da8d75:	48 89 df             	mov    rdi,rbx
  da8d78:	4c 89 e6             	mov    rsi,r12
  da8d7b:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  da8d80:	4c 89 f9             	mov    rcx,r15
  da8d83:	e8 b8 0d f1 ff       	call   cb9b40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8d88:	e9 c3 fe ff ff       	jmp    da8c50 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5d90>
  da8d8d:	48 89 df             	mov    rdi,rbx
  da8d90:	4c 89 e6             	mov    rsi,r12
  da8d93:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  da8d98:	4c 89 f9             	mov    rcx,r15
  da8d9b:	e8 a0 71 f1 ff       	call   cbff40 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8da0:	e9 ab fe ff ff       	jmp    da8c50 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5d90>
  da8da5:	0f 28 44 24 60       	movaps xmm0,XMMWORD PTR [rsp+0x60]
  da8daa:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da8db1:	00 
  da8db2:	48 89 df             	mov    rdi,rbx
  da8db5:	4c 89 e6             	mov    rsi,r12
  da8db8:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  da8dbd:	4c 89 f9             	mov    rcx,r15
  da8dc0:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da8dc7:	00 
  da8dc8:	e8 33 14 f1 ff       	call   cba200 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8dcd:	e9 7e fe ff ff       	jmp    da8c50 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5d90>
  da8dd2:	0f 28 44 24 60       	movaps xmm0,XMMWORD PTR [rsp+0x60]
  da8dd7:	0f 29 84 24 f0 00 00 	movaps XMMWORD PTR [rsp+0xf0],xmm0
  da8dde:	00 
  da8ddf:	48 89 df             	mov    rdi,rbx
  da8de2:	4c 89 e6             	mov    rsi,r12
  da8de5:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  da8dea:	4c 89 f9             	mov    rcx,r15
  da8ded:	4c 8d 8c 24 f0 00 00 	lea    r9,[rsp+0xf0]
  da8df4:	00 
  da8df5:	e8 c6 3d f1 ff       	call   cbcbc0 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8dfa:	e9 51 fe ff ff       	jmp    da8c50 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5d90>
  da8dff:	48 89 df             	mov    rdi,rbx
  da8e02:	4c 89 e6             	mov    rsi,r12
  da8e05:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
  da8e0a:	4c 89 f9             	mov    rcx,r15
  da8e0d:	e8 2e 23 f1 ff       	call   cbb140 <fastfft::engine::x86_sse2::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x4>::pass>
  da8e12:	e9 39 fe ff ff       	jmp    da8c50 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5d90>
  da8e17:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  da8e1e:	00 00 
  da8e20:	48 85 db             	test   rbx,rbx
  da8e23:	0f 84 77 fc ff ff    	je     da8aa0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5be0>
  da8e29:	80 bc 24 e0 00 00 00 	cmp    BYTE PTR [rsp+0xe0],0x0
  da8e30:	00 
  da8e31:	74 7d                	je     da8eb0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5ff0>
  da8e33:	48 8b 84 24 80 00 00 	mov    rax,QWORD PTR [rsp+0x80]
  da8e3a:	00 
  da8e3b:	48 8b 4c 24 50       	mov    rcx,QWORD PTR [rsp+0x50]
  da8e40:	31 d2                	xor    edx,edx
  da8e42:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  da8e49:	1f 84 00 00 00 00 00 
  da8e50:	4c 89 de             	mov    rsi,r11
  da8e53:	48 89 c7             	mov    rdi,rax
  da8e56:	49 89 c8             	mov    r8,rcx
  da8e59:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  da8e60:	0f 10 47 f0          	movups xmm0,XMMWORD PTR [rdi-0x10]
  da8e64:	0f 10 0f             	movups xmm1,XMMWORD PTR [rdi]
  da8e67:	0f 28 d1             	movaps xmm2,xmm1
  da8e6a:	0f 14 d0             	unpcklps xmm2,xmm0
  da8e6d:	0f 15 c8             	unpckhps xmm1,xmm0
  da8e70:	41 0f 2b 10          	movntps XMMWORD PTR [r8],xmm2
  da8e74:	4d 8d 48 10          	lea    r9,[r8+0x10]
  da8e78:	41 0f 2b 09          	movntps XMMWORD PTR [r9],xmm1
  da8e7c:	49 83 c0 20          	add    r8,0x20
  da8e80:	4c 01 ef             	add    rdi,r13
  da8e83:	48 ff ce             	dec    rsi
  da8e86:	75 d8                	jne    da8e60 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5fa0>
  da8e88:	48 ff c2             	inc    rdx
  da8e8b:	48 03 8c 24 c0 01 00 	add    rcx,QWORD PTR [rsp+0x1c0]
  da8e92:	00 
  da8e93:	48 83 c0 20          	add    rax,0x20
  da8e97:	48 39 da             	cmp    rdx,rbx
  da8e9a:	75 b4                	jne    da8e50 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5f90>
  da8e9c:	e9 ff fb ff ff       	jmp    da8aa0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5be0>
  da8ea1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  da8ea8:	0f 1f 84 00 00 00 00 
  da8eaf:	00 
  da8eb0:	48 8b 84 24 90 00 00 	mov    rax,QWORD PTR [rsp+0x90]
  da8eb7:	00 
  da8eb8:	48 8b 8c 24 80 00 00 	mov    rcx,QWORD PTR [rsp+0x80]
  da8ebf:	00 
  da8ec0:	31 d2                	xor    edx,edx
  da8ec2:	eb 24                	jmp    da8ee8 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6028>
  da8ec4:	66 66 66 2e 0f 1f 84 	data16 data16 cs nop WORD PTR [rax+rax*1+0x0]
  da8ecb:	00 00 00 00 00 
  da8ed0:	48 ff c2             	inc    rdx
  da8ed3:	48 83 c1 20          	add    rcx,0x20
  da8ed7:	48 03 84 24 c0 01 00 	add    rax,QWORD PTR [rsp+0x1c0]
  da8ede:	00 
  da8edf:	48 39 da             	cmp    rdx,rbx
  da8ee2:	0f 84 b8 fb ff ff    	je     da8aa0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x5be0>
  da8ee8:	48 89 d6             	mov    rsi,rdx
  da8eeb:	48 c1 e6 05          	shl    rsi,0x5
  da8eef:	48 03 74 24 38       	add    rsi,QWORD PTR [rsp+0x38]
  da8ef4:	48 89 d7             	mov    rdi,rdx
  da8ef7:	48 0f af 7c 24 20    	imul   rdi,QWORD PTR [rsp+0x20]
  da8efd:	48 03 bc 24 a0 01 00 	add    rdi,QWORD PTR [rsp+0x1a0]
  da8f04:	00 
  da8f05:	4c 8b 84 24 c0 00 00 	mov    r8,QWORD PTR [rsp+0xc0]
  da8f0c:	00 
  da8f0d:	49 8d 3c f8          	lea    rdi,[r8+rdi*8]
  da8f11:	49 89 c1             	mov    r9,rax
  da8f14:	49 89 ca             	mov    r10,rcx
  da8f17:	45 31 c0             	xor    r8d,r8d
  da8f1a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  da8f20:	41 0f 10 42 f0       	movups xmm0,XMMWORD PTR [r10-0x10]
  da8f25:	41 0f 10 0a          	movups xmm1,XMMWORD PTR [r10]
  da8f29:	0f 28 d1             	movaps xmm2,xmm1
  da8f2c:	0f 14 d0             	unpcklps xmm2,xmm0
  da8f2f:	0f 15 c8             	unpckhps xmm1,xmm0
  da8f32:	41 0f 11 51 d0       	movups XMMWORD PTR [r9-0x30],xmm2
  da8f37:	41 0f 11 49 e0       	movups XMMWORD PTR [r9-0x20],xmm1
  da8f3c:	49 83 c0 02          	add    r8,0x2
  da8f40:	43 0f 10 44 2a f0    	movups xmm0,XMMWORD PTR [r10+r13*1-0x10]
  da8f46:	43 0f 10 0c 2a       	movups xmm1,XMMWORD PTR [r10+r13*1]
  da8f4b:	0f 28 d1             	movaps xmm2,xmm1
  da8f4e:	0f 14 d0             	unpcklps xmm2,xmm0
  da8f51:	0f 15 c8             	unpckhps xmm1,xmm0
  da8f54:	41 0f 11 51 f0       	movups XMMWORD PTR [r9-0x10],xmm2
  da8f59:	41 0f 11 09          	movups XMMWORD PTR [r9],xmm1
  da8f5d:	4d 01 e2             	add    r10,r12
  da8f60:	49 83 c1 40          	add    r9,0x40
  da8f64:	4c 39 c5             	cmp    rbp,r8
  da8f67:	75 b7                	jne    da8f20 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6060>
  da8f69:	41 f6 c3 01          	test   r11b,0x1
  da8f6d:	0f 84 5d ff ff ff    	je     da8ed0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6010>
  da8f73:	4d 89 c1             	mov    r9,r8
  da8f76:	4d 0f af cd          	imul   r9,r13
  da8f7a:	42 0f 10 04 0e       	movups xmm0,XMMWORD PTR [rsi+r9*1]
  da8f7f:	42 0f 10 4c 0e 10    	movups xmm1,XMMWORD PTR [rsi+r9*1+0x10]
  da8f85:	0f 28 d1             	movaps xmm2,xmm1
  da8f88:	0f 14 d0             	unpcklps xmm2,xmm0
  da8f8b:	0f 15 c8             	unpckhps xmm1,xmm0
  da8f8e:	49 c1 e0 05          	shl    r8,0x5
  da8f92:	42 0f 11 14 07       	movups XMMWORD PTR [rdi+r8*1],xmm2
  da8f97:	42 0f 11 4c 07 10    	movups XMMWORD PTR [rdi+r8*1+0x10],xmm1
  da8f9d:	e9 2e ff ff ff       	jmp    da8ed0 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x6010>
  da8fa2:	80 bc 24 e0 00 00 00 	cmp    BYTE PTR [rsp+0xe0],0x0
  da8fa9:	00 
  da8faa:	0f 85 a4 e4 ff ff    	jne    da7454 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4594>
  da8fb0:	e9 a2 e4 ff ff       	jmp    da7457 <<fastfft::isa::x86::F32x4 as fastfft::engine::fourstep::PanelVector>::execute+0x4597>
  da8fb5:	48 8d 44 24 48       	lea    rax,[rsp+0x48]
  da8fba:	48 89 84 24 f0 00 00 	mov    QWORD PTR [rsp+0xf0],rax
  da8fc1:	00 
  da8fc2:	48 8d 05 f7 33 e7 ff 	lea    rax,[rip+0xffffffffffe733f7]        # c1c3c0 <<u64 as core::fmt::Display>::fmt>
  da8fc9:	48 89 84 24 f8 00 00 	mov    QWORD PTR [rsp+0xf8],rax
  da8fd0:	00 
  da8fd1:	48 8d 3d e3 50 30 ff 	lea    rdi,[rip+0xffffffffff3050e3]        # ae0bb <serde_json::ser::Formatter::write_char_escape::HEX_DIGITS+0x3b56b>
  da8fd8:	48 8d 15 91 d2 49 00 	lea    rdx,[rip+0x49d291]        # 1246270 <__frame_dummy_init_array_entry+0x31018>
  da8fdf:	48 8d b4 24 f0 00 00 	lea    rsi,[rsp+0xf0]
  da8fe6:	00 
  da8fe7:	e8 54 8b e6 ff       	call   c11b40 <core::panicking::panic_fmt>
  da8fec:	48 8d 3d b5 d5 31 ff 	lea    rdi,[rip+0xffffffffff31d5b5]        # c65a8 <crc32fast::table::CRC32_TABLE+0x8924>
  da8ff3:	48 8d 15 26 d1 49 00 	lea    rdx,[rip+0x49d126]        # 1246120 <__frame_dummy_init_array_entry+0x30ec8>
  da8ffa:	be 81 00 00 00       	mov    esi,0x81
  da8fff:	e8 3c 8b e6 ff       	call   c11b40 <core::panicking::panic_fmt>
  da9004:	48 8d 3d dd d5 31 ff 	lea    rdi,[rip+0xffffffffff31d5dd]        # c65e8 <crc32fast::table::CRC32_TABLE+0x8964>
  da900b:	48 8d 15 56 d1 49 00 	lea    rdx,[rip+0x49d156]        # 1246168 <__frame_dummy_init_array_entry+0x30f10>
  da9012:	be 87 00 00 00       	mov    esi,0x87
  da9017:	e8 24 8b e6 ff       	call   c11b40 <core::panicking::panic_fmt>
  da901c:	48 8d 3d 57 d6 31 ff 	lea    rdi,[rip+0xffffffffff31d657]        # c667a <crc32fast::table::CRC32_TABLE+0x89f6>
  da9023:	48 8d 15 b6 d1 49 00 	lea    rdx,[rip+0x49d1b6]        # 12461e0 <__frame_dummy_init_array_entry+0x30f88>
  da902a:	be 83 00 00 00       	mov    esi,0x83
  da902f:	e8 0c 8b e6 ff       	call   c11b40 <core::panicking::panic_fmt>
  da9034:	48 8d 3d be f3 31 ff 	lea    rdi,[rip+0xffffffffff31f3be]        # c83f9 <oxifft::dft::codelets::simd::large_sizes::bit_reverse_permute_4096::BIT_REV_TABLE+0x100>
  da903b:	48 8d 15 d6 e2 49 00 	lea    rdx,[rip+0x49e2d6]        # 1247318 <__frame_dummy_init_array_entry+0x320c0>
  da9042:	be 1b 00 00 00       	mov    esi,0x1b
  da9047:	e8 b4 a9 e6 ff       	call   c13a00 <core::panicking::panic>
  da904c:	48 8d 3d fd d0 49 00 	lea    rdi,[rip+0x49d0fd]        # 1246150 <__frame_dummy_init_array_entry+0x30ef8>
  da9053:	e8 28 ce e6 ff       	call   c15e80 <core::panicking::panic_const::panic_const_div_by_zero>
  da9058:	48 8d 15 69 d1 49 00 	lea    rdx,[rip+0x49d169]        # 12461c8 <__frame_dummy_init_array_entry+0x30f70>
  da905f:	31 ff                	xor    edi,edi
  da9061:	31 f6                	xor    esi,esi
  da9063:	e8 d8 ab e6 ff       	call   c13c40 <core::panicking::panic_bounds_check>
  da9068:	48 8d 3d 81 d0 49 00 	lea    rdi,[rip+0x49d081]        # 12460f0 <__frame_dummy_init_array_entry+0x30e98>
  da906f:	e8 0c ce e6 ff       	call   c15e80 <core::panicking::panic_const::panic_const_div_by_zero>
  da9074:	48 8d 15 bd d0 49 00 	lea    rdx,[rip+0x49d0bd]        # 1246138 <__frame_dummy_init_array_entry+0x30ee0>
  da907b:	31 ff                	xor    edi,edi
  da907d:	31 f6                	xor    esi,esi
  da907f:	e8 bc ab e6 ff       	call   c13c40 <core::panicking::panic_bounds_check>
  da9084:	48 8d 15 7d d0 49 00 	lea    rdx,[rip+0x49d07d]        # 1246108 <__frame_dummy_init_array_entry+0x30eb0>
  da908b:	31 ff                	xor    edi,edi
  da908d:	31 f6                	xor    esi,esi
  da908f:	e8 ac ab e6 ff       	call   c13c40 <core::panicking::panic_bounds_check>
